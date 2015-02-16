FROM shimaore/debian
MAINTAINER Stéphane Alnet <stephane@shimaore.net>

RUN apt-get update && apt-get install -y --no-install-recommends \
  ca-certificates \
  curl \
  git \
  make
# Install Node.js using `n`.
RUN git clone https://github.com/tj/n.git
WORKDIR n
RUN make install
WORKDIR ..
RUN apt-get purge -y \
  make
RUN apt-get autoremove -y
RUN apt-get clean
RUN n 0.10.36
ENV NODE_ENV production
