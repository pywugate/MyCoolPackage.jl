# MyCoolPackage

## Problems

Basically I followed official tuto [Ref1](https://github.com/pywugate/MyCoolPackage.jl?tab=readme-ov-file#1-official-), and failed many times.

The key difference is that Chris use GitKraken, which seems no problem.

I use GitHub desktop and there are many problems [Ref2](https://github.com/pywugate/MyCoolPackage.jl?tab=readme-ov-file#2-githubdesktop-error):

1. If I created new repo, GitHubDesktop always creates subfolder :

`~\.julia\dev\MyCoolPackage\MyCoolPackage.jl`

or 

2. If I add existing repo, GitHubDesktop always got error and fais pushing (Ref2):

`“The repository does not seem to exist anymore. You may not have access, or it may have been deleted or renamed.”`

## Solutions
### Conclusion
1. most of them required Git installed
2. I like solution 4 most, because 
  - it contains only 3 steps
  - use git apps 
  - without commands

### First check git verion in julia: [Ref3](https://github.com/pywugate/MyCoolPackage.jl?tab=readme-ov-file#reference)

```
run(`where git`)
C:\Program Files\Git\cmd\git.exe
```

### Solution1 works for me: [Ref4](https://github.com/pywugate/MyCoolPackage.jl?tab=readme-ov-file#4-solution1)

Test on this repo [MyCoolPackage.jl](https://github.com/pywugate/MyCoolPackage.jl)

- - - 

### Solution2 works for me: [Ref5](https://github.com/pywugate/MyCoolPackage.jl?tab=readme-ov-file#5-proposed-solution2)

Test on MyCoolPackage2.jl

1. create empty repo (no readme nor licence) on Github web

2. follow the instructions from github page of empty repo: 
(the command from tbeason is modified by himself?)

`…or push an existing repository from the command line`
```
shell> git remote add origin < SSH >
error: remote origin already exists.

shell> git branch -M main

shell> git push -u origin main
```

(optional) 3. add repo in Git Apps (Githubdesktop or GitKraken, etc)

- - - 

### Solution3 works for me: [Ref6](https://github.com/pywugate/MyCoolPackage.jl?tab=readme-ov-file#6-proposed-solution3)

Test on MyCoolPackage3.jl

1. create empty repo on github web, 
2. create package template according to PkgTemplate.jl
3. go to `~/.julia/dev/MyPackage` and run git command

```
julia> cd(joinpath(t.dir, pkgname))
```
```
shell> git push --set-upstream origin main
```

(optional) 4. add repo in Git Apps (Githubdesktop or GitKraken, etc)


### Solution4 works for me: [Ref7](https://github.com/pywugate/MyCoolPackage.jl?tab=readme-ov-file#7-propsed-solution4)
works, Test on Foo.jl


### Proposed Solution5, I didn't try: [Ref8](https://github.com/pywugate/MyCoolPackage.jl?tab=readme-ov-file#8-proposed-solution5)

I didn't try because author copy files from generated template to another folder: 
`Now, just copy the files from the ~/.julia/dev/VegaGraphs to the folder where you will be working from, and then setup your git repository by running the following commands in the terminal:.....`
I don't want to create different folders


- - -

## Reference
##### 1. Official : 
https://julialang.org/contribute/developing_package/

##### 2. Githubdesktop error: 
https://stackoverflow.com/questions/44212412/github-desktop-error-the-repository-does-not-seem-to-exist-anymore-you-may-not

##### 3. Check Git in julia: 
https://discourse.julialang.org/t/run-git-version-on-windows-errors/62198

##### 4. Solution1:
https://discourse.julialang.org/t/upload-new-package-to-github/56783/8

##### 5. Solution2:
https://discourse.julialang.org/t/upload-new-package-to-github/56783/10

##### 6. Solution3:
 https://discourse.julialang.org/t/upload-new-package-to-github/56783/14

##### 7. Solution4:
 https://discourse.julialang.org/t/trouble-publishing-my-first-package-to-github/93293/5

##### 8. Proposed Solution5: 
https://medium.com/coffee-in-a-klein-bottle/developing-your-julia-package-682c1d309507





<!-- [![Build Status](https://github.com/your-GitHub-username/MyCoolPackage.jl/actions/workflows/CI.yml/badge.svg?branch=master)](https://github.com/your-GitHub-username/MyCoolPackage.jl/actions/workflows/CI.yml?query=branch%3Amaster) -->
