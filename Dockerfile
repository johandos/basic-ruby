# Dockerfile.rails
FROM ruby AS rails-toolbox

ARG USER_ID
ARG GROUP_ID

RUN addgroup --gid $GROUP_ID user
RUN adduser --disabled-password --gecos '' --uid $USER_ID --gid $GROUP_ID user

ENV INSTALL_PATH /opt/app
RUN mkdir -p $INSTALL_PATH

RUN gem install rails bundler
RUN chown -R user:user $INSTALL_PATH
WORKDIR $INSTALL_PATH

USER $USER_ID
CMD ["/bin/sh"]