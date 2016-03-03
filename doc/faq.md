---
currentMenu: faq
---

# FAQ

## How to get my code coverage with PHPUnit?
 
On PHP 5.6 run 
```
phpunit --coverage-text --coverage-text | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"
```
or on PHP 7.x
```
phpdbg -qrr phpunit --coverage-text | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"
```
You have to adjust the path to your PHPUnit installation.

When using **GitLab CI** don't forget to set the right Test coverage parsing within your *Continuous Integration configuration*:
`^\s*Lines:\s*(\d+.\d+\%)`.

## How to speed up composer installation?

To speed up your composer installation you should cache `/root/.composer/cache`.
Within GitLab CI you can do this by [setting the cache](http://doc.gitlab.com/ce/ci/yaml/README.html) or by [mounting
the cache directory as volume into the docker container](https://gitlab.com/gitlab-org/gitlab-ci-multi-runner/blob/master/docs/configuration/advanced-configuration.md#the-runnersdocker-section).
