rsync -avzh --delete \
      --exclude .git --exclude \*~ --exclude raw --exclude .DS_Store \
      --exclude legacy \
      --exclude navigation-menu.html \
      . ccrma-gate.stanford.edu:/user/m/matt/Library/Web/OSC-test

open https://ccrma.stanford.edu/~matt/OSC-test


