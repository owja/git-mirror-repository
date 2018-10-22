# Git Mirror Repository

[![Docker Build Status](https://img.shields.io/docker/build/owja/git-mirror-repository.svg)](https://hub.docker.com/r/owja/git-mirror-repository/)
[![Docker Image Size](https://images.microbadger.com/badges/image/owja/git-mirror-repository.svg)](https://hub.docker.com/r/owja/git-mirror-repository/)
[![Docker Pulls](https://img.shields.io/docker/pulls/owja/git-mirror-repository.svg)](https://hub.docker.com/r/owja/git-mirror-repository/)

A simple docker image for mirroring a git repository to another server. This is created with a Gitlab CI Runner in mind.

### Usage

Simply configure the Gitlab CI runner like this:

*.gitlab-ci.yml*
```yaml
stages:
  - mirror

mirror:
  image: owja/git-mirror-repository
  stage: mirror
  retry: 2
  variables:
    GIT_STRATEGY: none
    GIT_CHECKOUT: "false"
  script:
    - git-mirror-repository ${CI_REPOSITORY_URL} htts://username:password@git.example.com/my/repository.git
```

The command is this:

```bash
$ git-mirror-repository [source] [target]
```
