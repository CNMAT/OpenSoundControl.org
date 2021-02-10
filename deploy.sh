rsync -avzh --delete \
      --exclude .git --exclude \*~ --exclude raw --exclude .DS_Store \
      --exclude legacy \
      --exclude navigation-menu.md \
      . ccrma-gate.stanford.edu:/user/m/matt/Library/Web/OSC

open https://ccrma.stanford.edu/~matt/OSC
