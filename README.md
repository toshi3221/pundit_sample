オリジナル(Rails4)は[こちら](https://github.com/onigra/pundit_sample)

# 環境

* Ruby 2.4.1
* Rails 5.1.4

## Requirements

* MySQL
* docker-compose

# Setup

```sh
$ docker-compose up -d
$ bundle install
$ bundle exec rake db:create
$ bundle exec rake db:migrate
$ bundle exec rake db:seed_fu
$ bundle exec rails s
```

# テストアカウント

詳細は[こちら](https://github.com/onigra/pundit_sample/blob/master/db/fixtures/sample_data.rb)

|email|password|権限|
|:---:|:------:|:--|
|admin@example.com|adminadmin|全ての操作が可能|
|user@example.com|useruser|Userのindex, show, create, update, destroyが可能。 <br> Role(権限)に対しての操作は一切行えない|
|role@example.com|rolerole|Role(権限)のindex, show, create, update, destroyが可能。 <br> Userに対しての操作は一切行えない|
|view@example.com|viewview|User、Roleの閲覧(index, show)のみ可能。 <br> 新規作成、更新、削除は行えない|
