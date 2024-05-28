# dotfiles
What's in here is my dotfiles, or my Linux configuration files, that I use to get my 
builds to how I like them. I use Stow in order to link the dotfiles to their correct places. 

# Install 
`wget http://ftp.gnu.org/gnu/stow/stow-latest.tar.gz`

## First things first (make it a hidden folder)
`mv ~/dotfiles ~/.dotfiles` 

## Usage 
### Putting in the dotfiles folder
```
mkdir -p ~/.dotfiles/path/to/directory/of/file
mv ~/path/to/directory/of/file/file.name ~/.dotfiles/path/to/directory/of/file/
```

### Linking out of the dotfiles folder
`stow -d ~/.dotfiles -t ~ -S path`
