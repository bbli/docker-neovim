# Installation Methods

[![Docker Hub](https://img.shields.io/badge/docker-erroneousboat%2Fneovim-blue.svg)](https://registry.hub.docker.com/u/erroneousboat/neovim/)

If you want to build the neovim docker container with your own vim plugins/colorschemes, and dotfiles, then replace the `.vim` and `dotfiles` directory with your own, and run 
```
docker build -t YOUR_NAME_FOR_THIS_CONTAINER .
```

Because I did not want to build fzf during the docker build, I just copied the `~/.fzf/` folder from my own computer, as it already contains the fzf executable.

