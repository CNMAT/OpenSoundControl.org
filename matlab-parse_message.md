# Matlab code to parse an OSC message into a vector of floats

Probably by Matt Wright, circa 2012.  Courtesy of [Karl Yerkes](https://github.com/kybr).

```matlab
function [message args] = parse_message(bytes)
  % Parse a single OSC message whose arguments are all floats,
  % returning a matlab string for the address and a vector of floats
  % for the arguments

  message = ''; args = [];

  firstnull = find(bytes==0,1);

  if isempty(firstnull) 
    disp(['Invalid OSC message (no null character = no string = no address)']);
    return
  end

  % zero vs one origin indicing meets OSC's possible extra null characters
  % to bring all strings up to a multiple of 4-byte length
  lastnullafteraddress = firstnull + 3 - mod(firstnull-1, 4);

  for i=firstnull:lastnullafteraddress
    if bytes(i) ~= 0
      disp(['Invalid OSC message (improper string termination)'])
      return
    end
  end

  message = char(bytes(1:firstnull-1)');

  % Got the message, now throw away those bytes
  bytes = bytes(lastnullafteraddress+1:end);


  firstnull = find(bytes==0,1);

  if isempty(firstnull)
    disp(['Invalid OSC message (missing type tag string?)']);
    return
  end
  % zero vs one origin indicing meets OSC's possible extra null characters
  % to bring all strings up to a multiple of 4-byte length

  lastnullaftertypetags = firstnull + 3 - mod(firstnull-1, 4);

  for i=firstnull:lastnullaftertypetags
    if bytes(i) ~= 0
      disp(['Invalid OSC message (typetag has improper string termination)'])
      return
    end
  end



  typetags = char(bytes(1:firstnull-1));
  argbytes = bytes(lastnullaftertypetags+1:end);


  if typetags(1) ~= ','
    disp(['Invalid OSC message (type tag string needs leading comma)']);
    return
  end

  if ~all(typetags(2:end) == 'f')
    disp(['Sorry; I only handle floating point arguments, not ' typetags]);
    return
  end  


  % Chop into groups of 4 bytes
  for i = 1:4:length(argbytes)
    % big->little endian and interpret bytes as 32-bit float
    f = typecast(uint8(argbytes(i+3:-1:i)),'single');
    args = [args f];
  end

end
```

And here is the UDP listener it goes with, (probably) written by [Karl Yerkes](https://github.com/kybr) around 2012.

```
function udp_listen(handler, port, timeout, address)
% function udp_listen(handler, port, timeout, address)
%
% udp_listen accepts 4 arguments:
%
%   handler - a function that accepts a column vector of bytes and returns nothing
%   port - the port on which to listen
%   timeout - the number of seconds to wait before giving up on a single read
%   address - the ipv4 address on which to listen
%
% try these examples:
%
%   udp_listen(@(bytes) disp(bytes'), 12345, 0.01, '127.0.0.1')
%   udp_listen(@(bytes) disp(char(bytes')), 12345, 0.01, '127.0.0.1')
%

  % open a udp socket and listen
  %
  udp_object = udp(address, ...
    'LocalPort', port, ...
    'Timeout', timeout, ...
    'Terminator', '', ...
    'InputBufferSize', 65536);
  fopen(udp_object);

  % ensure that the udp socket gets destroyed when this function is done
  %
  localObject = onCleanup(@() delete(udp_object));

  % loop forever (until ctrl-c, matlab shutdown, crash, or earthquake)
  %
  while true
    try
      [data, count, error_message, from_address, from_port] = fread(udp_object);

      % uncomment for debugging
      disp(['got ', int2str(count), ' bytes from ', from_address, ':', int2str(from_port)])

      if isempty(data)
        disp(['still listening...']);
      else
        handler(data);
      end

    catch me
      % hide errors/exceptions when we break this infinite loop with ctrl-c
      % we should actually check if this is exception is ctrl-c related (TBD)
      %
      disp(['Exception caught ', me])
      return
    end
  end
end
```
