# Website Editors' Workflow

The current editors of OpenSoundControl.org are Matt Wright and Jeremy
Wagner.

This document is a place to gather notes, "recipes", best practices,
etc., related to the ongoing task of maintaining the content of
OpenSoundControl.org.

## Information Architecture

The website's information is structured as follows:

- [Our git repository](site-repo.html) containing "the real content"
  (and its history).  For now this is hosted by github.com and the
  expectation is that each editor (as well as git-savvy would-be
  contributors) will make a local clone to use as a working
  directory. This is world-readable.
- Various online forms where anyone on the Internet can submit
  contributions to the site.  For now these are Google Forms, each
  with a corresponding/resulting (editable) Google Sheet containing
  all the submitted "form responses".  These are readable only by
  site editors (because they contain submitters' email addresses).
- The storage of the web server that actually serves these files to
  the public.
  
## Making Small Changes Directly in GitHub

1. Log into GitHub 
1. [Our repo](site-repo.html) is <https://github.com/CNMAT/OpenSoundControl.org>
1. Follow [these general
   instructions][editing-repo-files],
   keeping these opensoundcontrol.org-specific details in mind:
    - add your commit to the current branch / Commit directly to the
      `main` branch
    - The GitHub preview of this page doesn't have the navigation
      elements added by the build script or have the same formatting.
    - Some more obscure markdown features differ between GitHub's and
      pandoc's flavors of markdown.  For the real site, pandoc wins
      (but try to avoid those features at all if possible).
1. Now somebody has to pull, build, and deploy

[editing-repo-files]:https://docs.github.com/en/github/managing-files-in-a-repository/editing-files-in-your-repository


## Accepting Content from Form Submissions

For example, for implementations.

1. Go to the Sheet that contains new submissions.  Look at the ones
   submitted since the last time you did this. 
    
    * Delete spam etc.
    * If any are updates then ensure they capture and/or update all
      previous information
    * Correct any obvious problems 
    * Read the "Notes" for each to see if any other treatment is required
    * You could email people back in case of questions or problems
    * Count the number of new entries
    * Keep track of how far you got this time, e.g., by bolding the
      last Timestamp
    * Download all responses as TSV: `File > Download > Tab-separated
      values (.tsv, current sheet)`
      
2. "Accept" the new submissions:

    * Move the downloaded TSV file (which will have a name like
      `Implementations (Responses) - Form Responses 1.tsv`) into your
      local clone of the git repository.
    * Run the script `accept-new-implementations.sh`, giving as an
      integer argument the number of new entries.  This will copy the
      last line(s) from the Google download into `implementations.tsv`,
      minus the `email` and `Notes` fields.
    * For any updates, delete the bad old obsolete information (after
      making sure anything still-true-and-still-relevant is captured
      in the new entry) by deleting old lines of
      `implementations.tsv`.
    * Now a `git diff` should show what's changed; might be a good check.


3. "Publish" the new submissions:

    * Run the script `build-implementations.sh` to (re)make every
      `implementations/*.md` automatically from `implementations.tsv`.
    * Now is another good moment to `git diff` and confirm the changes
      are desired. (In fact, this is the reason we store these derived
      `implementations/*.md` files in the git repo.)
    * Commit all desired updates to git
    * build and deploy the site as usual
    



## Editing site content

E.g., to add a new page, or to edit an existing page (that is not
auto-generated).

* `git pull` in your local clone
* Edit whichever files (e.g., markdown source)
* Commit all desired updates to git
* build and deploy the site as usual


