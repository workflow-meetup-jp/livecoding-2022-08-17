# What is this?
This is the result of live coding held on 2022/8/17 in workflow meetup.

[![Actions Status](https://github.com/workflow-meetup-jp/livecoding-2022-08-17/workflows/CI/badge.svg)](https://github.com/workflow-meetup-jp/livecoding-2022-08-17/actions)

## Requirements
- [Visual Studio Code](https://code.visualstudio.com/)
- [Remote - Container extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
- git
- Docker

### Optional 

- VSCode Live Share plugin ( for  collaborate )

##

## How to use
- Push the `Use this template` button in this repository and create a new repository for you,
- Clone it to your local machine, and
- Open the cloned repository with remote container extension of VSCode.
- Have fun!

## What is provided by this template?
- A container setting for VSCode. It provides the followings:
  - basic tools such as `cwltool`, `cwl-runner`, `cwltest` and `nodejs` (for `InlineJavascriptRequirement`)
  - `docker` (you can use it without any configurations)
  - [Rabix Benten](https://github.com/rabix/benten) and [zatsu-cwl-generator](https://github.com/tom-tan/zatsu-cwl-generator) to help writing CWL documents
  - [Live Share extension](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare) for live coding
- A template for `cwltest`
- Templates for CI services (described below)

## How to run tests

- Edit `test.yml`
  - Each entry consists of the input CWL file in `tool` field, the input parameter file in `job` field and the expected output object in `output` field (`doc` field is optional).
  - Here is an example entry:
  ```yaml
  - job: job/cat-job.yml
    tool: cwl/cat.cwl
    output:
      out:
        class: File
        basename: output.txt
        checksum: sha1$2af1a59da667eb4aedb182248c1d91741df7e24d
        size: 31
    doc: Template for cwltest
  ```
  - You can add new entries for your tools and workflows. I assume that the CWL files are put in `cwl` directory, the input parameter files are put in `job` directory, and the example inputs are put in `data` directory.
- Run test with the following command
  ```console
  $ cwltest --test test.yml
  Test [1/1] Template for cwltest
  ...
  All tests passed
  ```
