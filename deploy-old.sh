#!/bin/bash
rsync -aLvzh --delete \
      --exclude .git --exclude \*~ --exclude raw --exclude .DS_Store \
      --exclude legacy \
      --exclude navigation-menu.md \
      --exclude "Implementations (Responses) - Form Responses 1.tsv" \
      --exclude implementations-google-column-names.tsv \
      . ccrma-gate.stanford.edu:/user/m/matt/Library/Web/OSC

# rsync -avzh --delete legacy/2011-site/clean/implementation/implementations-legacy.tsv \
#      ccrma-gate.stanford.edu:/user/m/matt/Library/Web/OSC

open https://ccrma.stanford.edu/~matt/OSC
