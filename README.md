# dotfiles
This section contains the dotfiles, which are Linux configuration files used to customize builds. Stow is utilized to create symbolic links and place the dotfiles in their appropriate locations.

# Stow

Stow is a symlink farm manager which takes distinct packages of software and/or data located in separate directories on the filesystem, and makes them appear to be installed in the same place.

## Installation via Package Manager

### Ubuntu
```bash
sudo apt-get update
sudo apt-get install stow
```

### MacOS

```bash
brew install stow
```

### Fedora

```bash
sudo dnf install stow
```

## Installation via Source Code

The latest available stow version is the 2.4.0 since 2021-07-25. The tarball is available for download here: https://ftp.gnu.org/gnu/stow/


You can download the latest tarball using the following command via wget. The tarball will be downloaded to the Downloads directory. You can change the directory to your preferred location if needed.:

``` bash
cd ~/Downloads
wget http://ftp.gnu.org/gnu/stow/stow-latest.tar.gz
```

Extract the tarball and navigate to the directory.    
``` bash
tar -xvf stow-latest.tar.gz
cd stow-X.X.X # Replace X.X.X with the version number

```

Configure, make, and install stow.
```bash
./configure
make
sudo make install
```

## Moving dotfiles to the hidden dotfiles folder (Optional)
`mv ~/dotfiles ~/.dotfiles` 

For the purpose of this guide, we will assume that the dotfiles folder is located in the home directory. If the dotfiles folder is located elsewhere, replace `~/.dotfiles` with the appropriate path.


## Usage 

When using the stow command, it is important to 

prefix the command with the `-d` flag if you want to specify the directory containing the files to be linked rather than the current directory.
The `-t` flag is used to specify the target directory where the links will be created (default is the parent directory of the current directory
 The `-S` flag is used to specify the package to be linked. The package is the directory containing the files to be linked (default is the current directory).
The `-D` flag is used to remove the links created by stow. The package to be unlinked is specified using the `-D` flag.

### Linking files in the dotfiles folder

`stow -d ~/.dotfiles -t ~ -S {PATH/TO/FILE}`    

> Note: Replace `{PATH/TO/FILE}` with the path of the file you want to link. The command will create symbolic links in the home directory to the files in the dotfiles folder. If you omit the `-S` flag, stow will link all files in the package directory (default is the current directory).

> Note: Our dotfiles directory must have the same layout as where the files would be placed under the home directory. This means you will need to have the equivalent subdirectory structure in your dotfiles folder so that all symbolic links get created in the right place. 
>
stow.

### Preparing the dotfiles folder before linking the files

You can use the following commands to create the directory structure in the dotfiles folder:

`mkdir -p ~/.dotfiles/{PATH/TO/FILE}`
> Note: Replace `{PATH/TO/FILE}` with the path of the file you want to link. The command will create the directory structure in the dotfiles folder.


This command will create symbolic links in the home directory to the files in the `~/.dotfiles/vim` directory.

## Unlinking files in the dotfiles folder

`stow -d ~/.dotfiles -t ~ -D {PATH/TO/FILE}`
> Note: Replace `{PATH/TO/FILE}` with the path of the file you want to unlink. The command will remove the symbolic links in the home directory to the files in the dotfiles folder.



## Example
For example, let's say you want to manage your `.vimrc` file using stow. You would create a directory structure in the dotfiles folder that mirrors the home directory structure. You would then move the `.vimrc` file to the appropriate directory in the dotfiles folder and use the stow command to link it to the home directory.

Here is an example of the directory structure in the dotfiles folder:

```
└── ~/.dotfiles
    ├── vim
    │   └── .vimrc
    └── bash
        ├── .bashrc
        ├── .bash_profile
        └── .bash_logout
```


In this example, the `.vimrc` file is moved to the `~/.dotfiles/vim` directory, and the stow command is used to link it to the home directory.

The stow command will create a symbolic link in the home directory to the `.vimrc` file in the `~/.dotfiles/vim` directory.

This allows you to keep all your configuration files in one place and easily manage them using stow.

```bash
stow -d ~/.dotfiles -t ~ -S vim
```

## Managing dotfiles with Git across multiple machines

If you want to manage your dotfiles across multiple machines using Git, you can create a Git repository for your dotfiles and use stow to manage the symbolic links.

Here is an example of how you can set up a Git repository for your dotfiles:

1. Create a Git repository for your dotfiles:

```bash
cd ~/.dotfiles
git init
```

2. Add your dotfiles to the repository:

```bash
git add .
git commit -m "Initial commit"
```

3. Push the repository to a remote Git server:

```bash
git remote add origin <remote-repository-url>
git push -u origin master
```

Now you can clone the repository on other machines and use stow to manage the symbolic links to your dotfiles.

## Syncing dotfiles across multiple machines


If you want to sync your dotfiles across multiple machines, you can create a script that pulls the latest changes from the repository and uses stow to manage the symbolic links.

Here is an example script of how you can clone the repository and use stow to manage the symbolic links:




In the `~/.dotfiles/.bin` directory, create a script called `sync-dotfiles.sh` with the following content:

You might need to make the script executable by running `chmod +x sync-dotfiles.sh` before you can run it as a shell script. You also might need to add the `~/.dotfiles/.bin` directory to your PATH environment variable to run the script from anywhere.


# References
- https://www.gnu.org/software/stow/
- https://www.gnu.org/software/stow/manual/stow.html
- https://systemcrafters.net/managing-your-dotfiles/using-gnu-stow/