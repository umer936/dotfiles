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
<!--



When using the stow command, it is important to prefix the command with the `-d` flag to specify the directory containing the files to be linked. The `-t` flag is used to specify the target directory where the links will be created. The `-S` flag is used to specify the package to be linked. The package is the directory containing the files to be linked.

The default behavior of stow without any flags is to create symbolic links in the parent directory of the package directory. This is why we use the `-t` flag to specify the target directory where the links will be created.

### Linking files in the dotfiles folder

`stow -d ~/.dotfiles -t ~ -S {PATH/TO/FILE}`    

> Note: Replace `{PATH/TO/FILE}` with the path of the file you want to link. The command will create symbolic links in the home directory to the files in the dotfiles folder.

> Note: Our dotfiles directory must have the same layout as where the files would be placed under the home directory. This means you will need to have the equivalent subdirectory structure in your dotfiles folder so that all symbolic links get created in the right place. 
>
> For example, if you have a file `~/.vimrc` and you want to move it to the dotfiles folder, you would create a directory structure in the dotfiles folder that mirrors the home directory structure. You would then move the `.vimrc` file to the appropriate directory in the dotfiles folder and use the stow command to link it to the home directory.
> Here is an example of the directory structure in the dotfiles folder:
> ```
> ~/.dotfiles
> ├── vim
> │   └── .vimrc
> ```
> In this example, the `.vimrc` file is moved to the `~/.dotfiles/vim` directory, and the stow command is used to link it to the home directory.
>
> The stow command will create a symbolic link in the home directory to the `.vimrc` file in the `~/.dotfiles/vim` directory.
>
> This allows you to keep all your configuration files in one place and easily manage them using stow.

### Preparing the dotfiles folder before linking the files

You can use the following commands to create the directory structure in the dotfiles folder:

`mkdir -p ~/.dotfiles/{PATH/TO/FILE}`
> Note: Replace `{PATH/TO/FILE}` with the path of the file you want to link. The command will create the directory structure in the dotfiles folder.


## Example
```bash
stow -d ~/.dotfiles -t ~ -S vim
```



### Preparing the dotfiles folder before moving the files

    
The following commands will create the directory structure using the same path as the file you want to move:

`mkdir -p ~/.dotfiles/{PATH/TO/FILE}`


> Note: Replace `{PATH/TO/FILE}` with the path of the file you want to move. The command will create the directory structure in the dotfiles folder.


### Moving the file into the dotfiles folder

`mv ~/path/to/directory/of/file/file.name ~/.dotfiles/path/to/directory/of/file/`

This command will move the file into the dotfiles folder and place it in the appropriate directory structure. This is helpful when you want to move a file into the dotfiles folder and link it to the home directory.




## Example

For example, to link the vim dotfiles, you would use the following command:

```bash
stow -d ~/.dotfiles -t ~ -S vim
```

This command will create symbolic links in the home directory to the files in the `~/.dotfiles/vim` directory.

## Unlinking files in the dotfiles folder

`stow -d ~/.dotfiles -t ~ -D {PATH/TO/FILE}`
> Note: Replace `{PATH/TO/FILE}` with the path of the file you want to unlink. The command will remove the symbolic links in the home directory to the files in the dotfiles folder.

## Example
```bash
stow -d ~/.dotfiles -t ~ -D vim
```



-->