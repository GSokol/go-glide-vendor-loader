Docker Golang glide dependency uploader
=======================================

## What's this?

This is an image for CI builder machines for dockerized golang apps to upload dependecies by [glide](https://glide.readthedocs.io/en/latest/).

## Supported tags and respective `Dockerfile` links

- [1.8.3-alpine3.6](https://github.com/GSokol/go-glide-vendor-loader/blob/5b94ced266fdfc8c54f6bc0514cdb3caaa8e8a86/Dockerfile)
- [1.8.3-alpine3.5](https://github.com/GSokol/go-glide-vendor-loader/blob/83dd2c1c6d61fcfc2d5f3374054d47d39497c170/Dockerfile)

## How is it works?

```sh
docker run -it --rm -v `pwd`:/app -e APP_PKG_NAME="github.com/my-login/my-app-repo" gsokol/go-glide-vendor-loader:$TAG
```

Or, if you have private repos:

```sh
docker run -it --rm -v `pwd`:/app -v $HOME/.ssh:/ssh:ro -e APP_PKG_NAME="github.com/my-login/my-app-repo" gsokol/go-glide-vendor-loader:$TAG
```
