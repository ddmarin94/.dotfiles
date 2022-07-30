Requirements:

- macos programs:
  - homebrew
  - docker
  - kubectl
  - kubens
  - lens / k9s
  - 1password cli
  - editors:
    - vscode
      - settings.json
      - snippets
      - extensions.json
    - vim
    - jetbrains ?
  - languajes:
    - node / nvm
    - python
    - go
  - config
    - git
      - gitingore global
      - gitconfig

Installation:

```shell
bash <(curl -s https://raw.githubusercontent.com/ddmarin94/.dotfiles/master/installer.sh)
```

Generate brewfile:

`brew bundle dump`