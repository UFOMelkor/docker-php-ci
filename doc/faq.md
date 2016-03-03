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
