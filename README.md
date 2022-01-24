# A Gentle Introduction to DOTFILES

## abstract

This the presentation originally given to the St. Louis Unix User's Group
on 2022-02-XX



## Introduction: What are Dotfiles?

Any filename on a Unix/Linux system with a filename that  begins with a '.'
will not appear in directory listings, making them effectly hidden from view.

1. ls : You must use '-a' or the '--all' flag to see them.
2. bash: hidden in filename globbing.
3. Graphical file managers [like GNome Nautilus] only show if correct menu option is selected.

### MIT Missing Semester class on dotfiles

[https://missing.csail.mit.edu/2019/dotfiles/](https://missing.csail.mit.edu/2019/dotfiles/)

YouTube video. Poor audio quality

[https://www.youtube.com/watch?v=YSZBWWJw3mI](https://www.youtube.com/watch?v=YSZBWWJw3mI)


### History



### Dotfolders

This approach is also used with folders that start with a '.' making them
also hidden folders.

## MIT class session on dotfiles

[](...mit.edu) Missing Semester

## Alternative to using dotfiles for configuration - suckless

The suckless suite of programs do not use configuration files or dotfiles.
Instead any configuration is managed via changing the C source and recompiling.
This results in a single binary that is used to run the application.



[https://en.wikipedia.org/wiki/Suckless.org](https://en.wikipedia.org/wiki/Suckless.org)


## apt rm vs. apt purge

If, instead of using apt rm [package] to uninstall some package, you instead
use apt purge [package], you will also delete all saved configuration and any app 
saved data. So, you might want to backup your dotfiles, .etc

#### .git and friends

The '~/.gitconfig' should be managed with the 'git config' subcommand.
This is a simple key:value store that has sub keys that are delimited with a '.' in
the name.




## A better way: The XDG standard

[The XDG Directory Specification](https://specifications.freedesktop.org/basedir-spec/basedir-spec-0.8.html#introduction)

### The $HOME/.config directory

Also specified with $XDG_CONFIG_HOME

### The $HOME/.local directory


This folder structure tends to mirror the root  /usr/local/[bin,lib,share]




## Managing your own configuration

There are 3 goals here

- A single source of truth.
- Backup/Restore and Synchronization between your machines you have logins on.
- Version control

### Idempotency of your configurations

It is important to note that whatever method you choose to manage your dotfiles
you take care  to not upset the apple cart, as it were. If you have a script or tool
that copies or links your files for you, then this action should be idempotent.
In other words, running it more than once with no changes between runs should 
have 0 effect.

### NO PERSONALLY IDENTIFIABLE INFORMATION in any public repository

Make sure to scrub any information that can be used to track or harm you
in your personal dotfiles before you decide to publish them on any public  forum.
This includes GitHub, DropBox, .etc. Bots are constantly crawling these locations
to discover passwords, credit info, and authorization tokens and private keys.

### Using GitHub to store/backup/publish your dotfiles

[The GitHub answer to why you might want to store your dotfiles on GitHub](http://dotfiles.github.io)

### Tutorials

[](http://dotfiles.github.io/tutorials/)

#### Dotbot A simple symlink management tool for dotfiles

[dotbot project page](https://github.com/anishathalye/dotbot)

From this tutorial:

[Manging your dotfiles](https://www.anishathalye.com/2014/08/03/managing-your-dotfiles/)


### Thotbot Rcm toolset

[](http://thoughtbot.github.io/rcm/rcm.7.html)

The project page:

[](https://github.com/thoughtbot/rcm)


### The Homesync tool

[Your $HOME is your castle. Don't leave your dotfiles behind](https://github.com/technicalpickles/homesick)

This is a Ruby script that manages symlinks between your various "Castles" and your
various $HOME locations.

### Using a bare .git folder for managing your dotfiles

The technique is fairly simple. This method does not rely on symlinks to your
$HOME directory. It has some disadvantages, IMHO, though.

[](https://www.atlassian.com/git/tutorials/dotfiles)

#### YouTube video from DistroTube on Git bare repos and your dotfiles

Git bare repository: A better way to manage your dotfiles[](https://www.youtube.com/watch?v=tBoLDpTWVOM)


One thing to remember when you initialize the empty bare git repository,
is to give it the full path.

```bash
mkdir ~/.dotfiles
git init --bare /home/$USER/.dotfiles
```





### Using GNU Stow
[Udotfiles w/stow](https://dotfiles.github.io)

### Using GNU Stow to manage your dotfiles

https://alexpearce.me/2016/02/managing-dotfiles-with-stow/

https://github.com/alexpearce/dotfiles


## Additional resources

[Using .gitignore in your $HOmE dir and then git add --force to add files](https://drewdevault.com/2019/12/30/dotfiles.html)
[A MacOS solution](https://driesvints.com/blog/getting-started-with-dotfiles/)

[A straightforward guide to using Git, GitHub and symlinks from your $HOME/.dotfiles to your $HOME](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/)
