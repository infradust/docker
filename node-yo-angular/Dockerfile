FROM node:7.9

ENV HOME /home/yeoman
ENV NPM_CONFIG_PREFIX $HOME/.npm_global
ENV APP_DIR $HOME/app

RUN apt-get -yq update \
    && apt-get -yq upgrade \
    && apt-get -yq install ruby-full \
    && gem install sass \
    && gem install compass \
    && adduser --disabled-password --gecos "" --shell /bin/bash yeoman \
    && echo "yeoman ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers \
    && mkdir NPM_CONFIG_PREFIX \
    && mkdir -p $APP_DIR \
    && chmod -R 777 $HOME
USER yeoman
RUN npm install -g grunt-cli bower yo generator-karma generator-angular
ENV PATH="$PATH:$NPM_CONFIG_PREFIX/bin"
WORKDIR $APP_DIR
VOLUME $APP_DIR

USER yeoman
CMD ["/bin/bash"]
