# polymorphic_assoc

is the source code I use to illustrate the issue with the way polymorphic associates were implemented in Rails 3.2.

See the rails_4.2 branch for the appropriate Gemfile which resolves the problem.

The setup for the console operations that demonstrate the issue were all just done in the Rails console, e.g.,
```
rails c
kase = Case.new
kase.manufacturer = 'anvil'
user = User.new
user.name = 'Rocken Roller'
user.save
kase.user = user
kase.save
user.name = "Rock'n Roller"
user.save
```
