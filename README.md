Docker Golagn glide dependency uploader
=======================================

## What's this?

This is an image for CI builder machines for dockerized golang apps to upload dependecies by [glide](https://glide.readthedocs.io/en/latest/).

## How is it works?

```sh
docker run -it --rm -v `pwd`:/app -e APP_PKG_NAME="github.com/my-login/my-app-repo" gsokol/go-glide-vendor-loader:$TAG
```

Or, if you have private repos:

```sh
docker run -it --rm -v `pwd`:/app -v $HOME/.ssh:/ssh:ro -e APP_PKG_NAME="github.com/my-login/my-app-repo" gsokol/go-glide-vendor-loader:$TAG
```
