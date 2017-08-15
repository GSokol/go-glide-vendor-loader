#! /bin/sh
#
# install.sh
# Copyright (C) 2017 Grigorii Sokolik <g.sokol99@g-sokol.info>
#
# Distributed under terms of the MIT license.
#

[ -d "/ssh" ] && [ "$(ls -A /ssh)" ] && mkdir /root/.ssh \
  && chmod 700 /root/.ssh \
  && cp /ssh/* /root/.ssh/ \
  && chmod 600 /root/.ssh/*; \
mkdir -p $GOPATH/src/`dirname $APP_PKG_NAME` \
  && ln -s /app $GOPATH/src/$APP_PKG_NAME \
  && cd $GOPATH/src/$APP_PKG_NAME \
  && glide install
