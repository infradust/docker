FROM node:6.10

ENV USER node
ENV HOME /home/${USER}
ENV NPM_CONFIG_PREFIX $HOME/.npm_global
ENV APP_DIR /app

RUN apt-get -yq update \
    && apt-get -yq upgrade

RUN apt-get -yq install ruby-full \
    && gem install sass \
    && gem install compass

RUN usermod -aG sudo ${USER} \
    && echo "${USER} ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers \
    && mkdir NPM_CONFIG_PREFIX \
    && mkdir -p $APP_DIR \
    && chown -R node:node $APP_DIR \
    && chmod -R 777 $HOME

USER ${USER}
RUN npm install -g grunt-cli gulp-cli bower yo generator-karma generator-angular
ENV PATH="$PATH:$NPM_CONFIG_PREFIX/bin"
WORKDIR $APP_DIR
VOLUME $APP_DIR

USER ${USER}
CMD ["/bin/bash"]
