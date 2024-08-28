# Shawn's Dot Files

This repo is used in conjuction with GNU stow to create symlinks for all dotfiles.
Tutorial followed: https://www.youtube.com/watch?v=y6XCebnB9gs&list=WL&index=55&t=13s


## Requirements

Ensure you have the followingt installed on your system

### Git

```
sudo apt install git
```

### Stow

```
sudo apt install stow
```


## Installation

First check out the dotfiles repo into your $HOME directory

```
git clone https://github.com/pancakespaceman/dotfiles.git
cd dotfiles
```

Then use GNU stow to create symlinks

```
stow .
```

