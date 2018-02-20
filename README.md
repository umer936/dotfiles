## dotfiles
Keep forgetting to actually put this on GitHub. What's in here is my dotfiles, or my Linux configuration files, that I use to get my builds to how I like them. I use Stow in order to link the dotfiles to their correct places. 

## Usage example (for .bashrc)
# Putting in the git folder
`stow ~/.bashrc`

# Linking out of the dotfiles folder
`stow -d ~/dotfiles -t ~ -S bash`