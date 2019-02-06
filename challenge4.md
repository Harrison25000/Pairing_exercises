# Challenge 4: Errors are good

```
2.6.0 :001 > docking_station = DockingStation.new
Traceback (most recent call last):
        4: from /Users/student/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'
        3: from /Users/student/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `load'
        2: from /Users/student/.rvm/rubies/ruby-2.6.0/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        1: from (irb):1
NameError (uninitialized constant DockingStation)
```

This describes a `NameError` which occurs we try to reference something that doesn't exist.

The path where the error occur is `/Users/student/.rvm/rubies/ruby-2.6.0/bin/irb`, on line 23

Ruby documentation explains that NameError is: "Raised when a given name is invalid or undefined."
