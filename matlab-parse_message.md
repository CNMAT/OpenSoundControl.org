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
