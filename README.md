## セットアップ

$ rbenv install 2.6.1
$ gem install bundler
$ gem bundle install
$ brew install yarn
$ curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
$ rails db:migrate:reset
$ rails db:seed
$ rails s