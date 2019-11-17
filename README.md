Dotfiles
========

My dotfiles


## Screenshot
![Terminal](https://raw.github.com/cjrieck/Dotfiles/master/images/terminal-window.png)

## Some good ol' plugins

* https://github.com/scmbreeze/scm_breeze
* https://github.com/junegunn/fzf
* https://github.com/zsh-users/zsh-autosuggestions
* https://github.com/ggreer/the_silver_searcher
* https://github.com/bhilburn/powerlevel9k
    - NOTE: For virtualenv color changing, replace `"$1_prompt_segment" "$0" "$2" "blue" "$DEFAULT_COLOR" "$(basename "$virtualenv_path")" 'PYTHON_ICON'`  with `"$1_prompt_segment" "$0" "$2" "070" "015" "$(basename "$virtualenv_path")" 'PYTHON_ICON'` in `~/.oh-my-zsh/custom/themes/powerlevel9k/powerlevel9k.zsh-theme`

## Fonts

Install [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts) via Homebrew and then install desired font and switch iTerm to use the Nerd Font variant.
