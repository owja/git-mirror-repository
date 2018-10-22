# Git Mirror Repository

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