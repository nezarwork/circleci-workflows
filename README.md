This is the minimum requirements you are gonna need to have a branch based workflow on [CircleCI.com](http://circleci.com/)

### Linux Commands

```bash
ssh-keygen -t rsa
ssh-copy-id
```

### CircleCI configuration file

``` circleci/config.yml ```

```yml
version: 2
# build job parameters as a template
defaults: &defaults
  docker:
    # the Docker image with Cypress preinstalled
    - image: circleci/php
jobs:
  staging:
    <<: *defaults
    steps:
      - checkout
      - run: echo "Deploying to the Staging Server"
  prod:
    <<: *defaults
    steps:
      - checkout
      - run: echo "Deploying to the Production Server"

workflows:
  version: 2
  stage_prod:
    jobs:
      - staging:            
          filters:
            branches:
              only: test
      - hold:
          type: approval
          filters:
            branches:
              only: master
      - prod:
          requires:
            - hold
```