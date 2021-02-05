# Handling content from the legacy opensoundcontrol.org site

We couldn't find a "source" backup so we had to scrape the old site
from <archive.org>, specifically from [the last archive.org version of
the defunct 2011 drupal opensoundcontrol.org
site.](https://web.archive.org/web/20201128050430/http://opensoundcontrol.org/)

The main problem:

1. Each archive.org snapshot's name is its timestamp, built into the
    URL like this:
    <https://web.archive.org/web/20201128050430/http://opensoundcontrol.org>
2. No timestamp has the complete content of the site; all are partial.
3. Archive.org super-helpfully rewrote all the links within the site
    (e.g., navigation) to point its own saved version of the
    file from some previous snapshot.
4. To a web crawler (like `wget`), these seem like a huge network of sites 
   linking back to older sites, not a convenient "just recursively grab these 
   subdirectories of files and you're done"

Solution: The bash scripts in this folder and described below. This
was all done on an OSX 10.14.6 machine using tools from
[homebrew](brew.sh) including `wget`, `pup`

## get-old-site.sh

Uses `wget` with some regular expressions to exclude some of the more problematic
self-linking parts of the site.

Once that's done I "got the feel" a  little bit by playing around with:

analyze-download.sh
: Inspect a download directory to figure out what's what and try to
get a handle on redudancy.

check-subset.sh
: Are all the files recursively in the first directory also in the
  same place in the second?

## keep-latest.sh

Keep only the latest version of each file.

(One could imagine doing diffs of the cleaned up time snapshots to see
how files changed over time, but it's bad enough having legacy content
without also thinking about the legacy legacy content.)

Sample invocation during testing:

        rm -rf latest; ./keep-latest.sh depth6/web.archive.org/web ; du -sh latest

## cleanup-all.sh

Iterate recursively through a "latest" folder, creating a "clean" folder.

Sample invocation during testing (wanting `du` to go down but not too
much while trying different arguments to `pup`):

        rm -rf clean ; ./cleanup-all.sh latest ; du -sh clean

Afterwards manually delete some spam pages under `topic`.

### cleanup.sh

Use `pup` to extract specifically the html `<div>` tags containing the
specific `class="something"` that empirical inspection showed held
"the actual content" for each kind of page (i.e., discarding site 
navigation and other unhelpful stuff).  Something along these lines:

        cat $f | pup '[class="node"] :not(class="book-navigation")' > clean/$f

Also clean up the file name (since archive.org didn't maintain .html
suffixes), but not for .pdf and other files that thankfully still kept
their suffixes.

