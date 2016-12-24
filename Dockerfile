FROM starefossen/ruby-node:2-4
MAINTAINER Genadi Postrilko <genadipost@gmail.com>

RUN groupadd -r runner -g 433 \
    && useradd -u 431 -r -g runner -m -s /sbin/nologin -c "Docker runner user" runner

USER runner

WORKDIR /home/runner

RUN git clone https://github.com/kubernetes/kubernetes.github.io.git \
    && cd kubernetes.github.io \
    && bundle install 

EXPOSE 8080

CMD cd kubernetes.github.io && bundle exec jekyll serve -H 0.0.0.0 -P 8080
