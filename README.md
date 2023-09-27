# DockerGitTorchGeo

This repository implements the following workflow to build a release docker container whenever it detects a new release tag from the offical torchgeo repository

See [Publishing images to Docker Hub](https://docs.github.com/en/actions/publishing-packages/publishing-docker-images#publishing-images-to-docker-hub)

![](build-workflow.png)
# Hello world docker action

This action prints "Hello World" or "Hello" + the name of a person to greet to the log.

## Inputs

## `who-to-greet`

**Required** The name of the person to greet. Default `"World"`.

## Outputs

## `time`

Time greeted.

## Example usage

uses: actions/hello-world-docker-action@v1
with:
  who-to-greet: 'DockerGitTorchGeo'
  
## References:

https://github.com/sabman/torchgeo-docker/blob/main/README.md
https://docs.github.com/en/github-ae@latest/actions/creating-actions/creating-a-docker-container-action
