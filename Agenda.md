# Agenda

## cd.play

```bash
# if not already done
source dot-aliases.sh
cd.play
ls
ls --all
# -A, --almost-all all but the '.', '..' dirs
ls -A
ls --all 
ls -A --classify
```

## Create 3 dotdir

```bash
mkdir ...
ls
ls -aF
ls -AF
```
```


## History

changes??? to ls.c

## touch .foo

```bash
touch .foo
ls -AF
```

## touch bar

```bash
touch bar
ls
ls -AF
# show Bash response
echo *
```


### Not a good way to check is directory is empty

```bash
say.dir.empty
mkdir empty
say.dir.empty empty
```




## cd.spoof ~

Looking at my spoofed home directory

```bash
cd.spoof 
dot.ls
# only files:
dot.file.ls
# only dot folders
dot.dir.ls
```


### Examine contents of some dot files

```bash
dot.file.ls | xarg.file
```


## Look in other folders, other than home


```bash
cd.project
ls
# see some standard dotfiles placed by others
l.
```




## Talk about XDG: Cross Desktop Group

```bash
cd.spoof
echo $XDG_<Tab>
xdg.lsd```

Talk about .cache, .local, .local/bin

```bash
ls .cache
ls .local
echo $PATH
```


## Take a look at .config

```bash
ls -d1 .config/*
```


## Wrapup and management

```bash
msg.1
# talk about ~/.dotfiles folder and linking
msg.2
# talk about the 3,2,1 strategy
msg.3
# Talk about the advantages re: git and DVCS in general
# Accomplishes many thins
```

## Conclusion

Point them at README.md file
with many links.
