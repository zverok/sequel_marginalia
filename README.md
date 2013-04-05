sequel_marginalia
=================

Kind of port of 37signals' [marginalia](https://github.com/37signals/marginalia)
for use with [Sequel](http://sequel.rubyforge.org/index.html).
(It's rather port of an idea than code.)

It just adds comments about caller code to your Sequel SQL queries.

When used, produces SQL like this:

    SELECT COUNT(*) FROM `clients`
    /* lib/myapp/somefile.rb:40:in `some_method' */

## Usage

Install it is a gem.

Than just do

    my_database.extension :marginalia

and it's here.

Being dead simple, should presumably work with and DB adapter, though
tested only with mysql2.
    
