FROM cucloudcollab/xvfb-firefox

MAINTAINER Shawn Bower shawn.bower@gmail.com

RUN apt-get update && apt-get install --no-install-recommends -y \
  zlib1g-dev \
  ruby \
  ruby-dev && \
  rm -rf /var/lib/apt/lists/*

RUN gem install selenium-webdriver \
  aws-sdk \
  highline \
  parseconfig \
  json \
  ruby-saml

COPY bin/ /opt

ENTRYPOINT ["/opt/start-saml-api.sh"]
