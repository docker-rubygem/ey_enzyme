FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.9.48

RUN gem install ey_enzyme --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ey-enzyme"]
CMD ["--help"]
