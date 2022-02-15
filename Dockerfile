FROM ruby:2.6.6-alpine

ADD ./etc/apk/repositories /etc/apk/repositories

RUN apk add --no-cache --update build-base linux-headers git

LABEL com.github.actions.name="Playbook Rubocop Code Checks"
LABEL com.github.actions.description="Playbook lint your Ruby code in parallel to your builds"
LABEL com.github.actions.icon="code"
LABEL com.github.actions.color="red"

LABEL maintainer="playbook-labs"

COPY lib /action/lib
ENTRYPOINT ["/action/lib/entrypoint.sh"]
