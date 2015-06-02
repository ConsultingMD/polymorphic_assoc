# polymorphic_assoc

The models in ths Rails application illustrate an [interesting MySQL issue](http://eng.grandroundshealth.com/blog/2015/06/02/convention-and-the-polymorph/) with the way polymorphic associations were implemented in Rails 3.2, especially with MySQL.

See the rails_4.2 branch for the appropriate Gemfile which resolves the problem.

The setup for the article's console operations were all just done in the Rails console, e.g.,
```
    $ rake db:create db:migrate
    $ rails c
    > kase = Case.new
    > kase.manufacturer = 'anvil'
    > user = User.new
    > user.name = 'Rocken Roller'
    > user.save
    > kase.user = user
    > kase.save
    > user.name = "Rock'n Roller"
    > user.save
```
