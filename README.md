# Installation Methods

## Requirements
Docker

## Running the Neovim Container
If you want to use neovim with my customizations(see my dotfiles on github), then:
1. Pull my neovim image from dockerhub by entering this into your shell: `docker pull bbli/artful-neovim`
2. Then, add this directory to your path or add an alias to your bashrc or add a symlink in your `/usr/local/bin` folder
3. Run `nvim-server`. This will start up the neovim container with the current directory mounted inside and log you into the container
4. Run `nv desired_file`

Note that neovim will have whatever plugins I was using at buildtime of the image.

## Customized Neovim
If you want to use your own dotfiles, then run `nvim-server /path_to_dotfiles`, and update plugins inside neovim accordingly.

The purpose of the `.vim` folder is so you don't need to download your plugins when you enter the container. The `.vim` folder also holds your colorschemes

fzf is a fuzzy command line finder. You can find more info about it [here](https://github.com/junegunn/fzf). 
Because I did not want to build fzf during the docker build(as that would require extra packages installed inside), I just copied the `~/.fzf/` folder from my own computer, as it already contains the fzf executable. 

Finally, the `dotfiles` folder is for your `.vimrc` and `.bashrc`, `.gitconfig` and any other configuration files for vim or command line utilities, such as git.

## Building Customized Neovim
If you want your own customized neovim, but don't want to mount your dotfiles everytime, you can build a new docker image by replacing the `.vim` and `dotfiles` folder in this repository with your own and then run 
```
docker build -t YOUR_NAME_FOR_THIS_CONTAINER .
```
## Note
As I still do not understand the inner workings of Docker, use this at your own risk. You should be fine as you stay in your home directory.
