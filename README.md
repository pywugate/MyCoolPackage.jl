# MyCoolPackage

## Problems

Basically I followed official tuto (Ref1), and failed many times.

The key difference is that Chris use GitKraken, which seems no problem.

I used GitHub desktop and there are many problems:

1. If I created new repo, GitHubDesktop always creates subfolder :

`~\.julia\dev\MyCoolPackage\MyCoolPackage.jl`

or 

2. If I add existing repo, GitHubDesktop always got error and fais pushing (Ref2):

`“The repository does not seem to exist anymore. You may not have access, or it may have been deleted or renamed.”`

## Solutions
### First check git verion in julia

```
run(`where git`)
C:\Program Files\Git\cmd\git.exe
```

### Solution1 works for me:
https://discourse.julialang.org/t/upload-new-package-to-github/56783/8

Test on this repo MyCoolPackage.jl

- - - 

### Proposed Solution2 fails for me:
https://discourse.julialang.org/t/upload-new-package-to-github/56783/10

Fails, Test on MyCoolPackage2.jl

1. create empty repo (no readme nor licence) on Github web

2. follow the instruction: `…or push an existing repository from the command line`

```
julia> git remote add origin < SSH >
ERROR: ParseError:
# Error @ REPL[39]:1:4
git remote add origin < SSH >
#  └──────────────────────────────────────────────────────────────┘ ── extra tokens after end of expression
Stacktrace:
 [1] top-level scope
   @ none:1

julia> git branch -M main
ERROR: ParseError:
# Error @ REPL[49]:1:4
git branch -M main
#  └─────────────┘ ── extra tokens after end of expression
Stacktrace:
 [1] top-level scope
   @ none:1

juli> git push -u origin main
ERROR: ParseError:
# Error @ REPL[50]:1:4
git push -u origin main
#  └──────────────────┘ ── extra tokens after end of expression
Stacktrace:
 [1] top-level scope
   @ none:1

```

```
shell> git remote add origin < SSH >
error: remote origin already exists.

shell> git branch -M main

shell> git push -u origin main
remote: Repository not found.
fatal: repository 'https://github.com/your-GitHub-username/MyCoolPackage2.jl/' not found

```

- - - 

### Proposed Solution3 fails for me:

https://discourse.julialang.org/t/upload-new-package-to-github/56783/14
```
julia> git push --set-upstream origin master
ERROR: ParseError:
# Error @ REPL[37]:1:4
git push --set-upstream main
#  └───────────────────────┘ ── extra tokens after end of expression
Stacktrace:
 [1] top-level scope
   @ none:1
```
```
shell> git push --set-upstream origin master
error: src refspec master does not match any
error: failed to push some refs to 'https://github.com/your-GitHub-username/MyCoolPackage2.jl'

```




## Reference
1. Official : https://julialang.org/contribute/developing_package/
2. Githubdesktop error: https://stackoverflow.com/questions/44212412/github-desktop-error-the-repository-does-not-seem-to-exist-anymore-you-may-not
3. Check Git in julia: https://discourse.julialang.org/t/run-git-version-on-windows-errors/62198
4. Solution1: https://discourse.julialang.org/t/upload-new-package-to-github/56783
4. Solution2: https://discourse.julialang.org/t/trouble-publishing-my-first-package-to-github/93293/3
5.



<!-- [![Build Status](https://github.com/your-GitHub-username/MyCoolPackage.jl/actions/workflows/CI.yml/badge.svg?branch=master)](https://github.com/your-GitHub-username/MyCoolPackage.jl/actions/workflows/CI.yml?query=branch%3Amaster) -->
