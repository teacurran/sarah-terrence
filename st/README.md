# Building the site:
==================

## prerequisites
```
brew install imagemagick openssl
```

## install
```
bundle config build.eventmachine --with-cppflags=-I$(brew --prefix openssl)/include
bundle install
```



