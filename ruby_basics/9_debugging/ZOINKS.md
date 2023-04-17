# Notes

## pry-byebug error

### Problem Statement

Cannot successfuly run test due to pry-byebug not loading.  Am able to execute ruby code in file test.rb (which contains the same `require 'pry-byebug'` line that is throwing an error when included at the top of file debugging_exercises.rb)

### Solution

1. add the following code to your Gemfile `gem 'pry-byebug', '~> 3.10', '>= 3.10.1'`
2. run command `bundle install`
3. you should now be able to run your tests using either of the following two commands: `rspec spec/debugging_exercises_spec.rb` or `rspec`

### Notes

* debugging_exercises.rb found at https://github.com/christophervigliotti/odin_ruby_exercises/blob/main/ruby_basics/9_debugging/exercises/debugging_exercises.rb
* debugging_exercises_spec.rb found at https://github.com/christophervigliotti/odin_ruby_exercises/blob/main/ruby_basics/9_debugging/spec/debugging_exercises_spec.rb
* test.rb found at https://github.com/christophervigliotti/odin_ruby_exercises/blob/main/ruby_basics/9_debugging/test.rb 
* `ruby test.rb` works without error (pry byebug loads)
*  `rspec spec/debugging_exercises_spec.rb` throws the following error...
```
Failure/Error: require_relative '../exercises/debugging_exercises'

LoadError:
  cannot load such file -- pry-byebug
# ./exercises/debugging_exercises.rb:1:in `require'
# ./exercises/debugging_exercises.rb:1:in `<top (required)>'
# ./spec/debugging_exercises_spec.rb:2:in `require_relative'
# ./spec/debugging_exercises_spec.rb:2:in `<top (required)>'
No examples found.

Finished in 0.00003 seconds (files took 0.06801 seconds to load)
0 examples, 0 failures, 1 error occurred outside of examples
```
* when moving code `require 'pry-byebug'` from the top of file debugging_exercises.rb and then adding it to the fop of file debugging_exercises_spec.rb I get basically the same error...

```
An error occurred while loading ./spec/debugging_exercises_spec.rb.
Failure/Error: require 'pry-byebug'

LoadError:
  cannot load such file -- pry-byebug
# ./spec/debugging_exercises_spec.rb:1:in `require'
# ./spec/debugging_exercises_spec.rb:1:in `<top (required)>'
No examples found.

Finished in 0.00002 seconds (files took 0.0573 seconds to load)
0 examples, 0 failures, 1 error occurred outside of examples
```