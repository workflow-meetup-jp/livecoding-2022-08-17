# What is this?
This is the result of live coding held on 2022/8/17 in workflow meetup.

[![Actions Status](https://github.com/workflow-meetup-jp/livecoding-2022-08-17/workflows/CI/badge.svg)](https://github.com/workflow-meetup-jp/livecoding-2022-08-17/actions)

### This tools goal

Get Next Meeting date from [Workflow meetup](https://workflow-meetup-jp.github.io/) web page.

## Requirements
- [Visual Studio Code](https://code.visualstudio.com/)
- [Remote - Container extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
- git
- Docker
- VSCode Live Share plugin (optional: for  collaboration)

## Live coding target
- [pup](https://github.com/ericchiang/pup)



## Install pup

```console
$ curl -LO https://github.com/ericchiang/pup/releases/download/v0.4.0/pup_v0.4.0_linux_amd64.zip
$ unzip pup_v0.4.0_linux_amd64.zip
$ ./pup -h
Usage
    pup [flags] [selectors] [optional display function]
Version
    0.4.0
Flags
    -c --color         print result with color
    -f --file          file to read from
    -h --help          display this help
    -i --indent        number of spaces to use for indent or character
    -n --number        print number of elements selected
    -l --limit         restrict number of levels printed
    -p --plain         don't escape html
    --pre              preserve preformatted text
    --charset          specify the charset for pup to use
    --version          display version
$ sudo mv pup /usr/local/bin
```

## Command example for pup
Here is an example to pick up the next meetup information from `https://workflow-meetup-jp.github.io/`.

```console
$ curl -LO https://workflow-meetup-jp.github.io/index.html
$ pup "div.home p:nth-child(3) a text{}" -f index.html
次回ミートアップは2022-08-17(Wed), 18(Thu) 13:00-19:00(JST)
```

## How to run tests
```console
 $ cwltest --test test.yml 
Test [1/1] Example of pup with workflow meetup website
All tests passed
```
