# Deice 

Without explicit setting stow assumes that the parent directory is the target.
This works fine if ice is in $HOME/ directory. In other cases an explicit target must be set:

```sh
stow --target=${HOME} /*
```

Deice all:
```sh
stow /*
````

Deice a specific directory:
```sh
stow zsh
```

# Deps
`^` is soft dependency.

stow

zsh: zoxide^, lazygit^

wezterm: wezterm (already includes Jet Brains and Nerd fonts)

nvim: gcc, fzf, ripgrep, go