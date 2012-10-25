# Sassy

My personal collection of Sass helpers.

It's very simple and only includes helpers I actually use in my workflow.

No it doesn't compare to Compass and it doesn't aim to.

# Using Sass Extensions

## Command Line

Pass the extension script you want to use to the precompiler with the `-r`
options

```bash
$ sass my_file.scss my_file.css -r ./sass_extensions/add_to_end_of_filename.rb
```

## Rails Asset Pipeline

Put the extension script in `lib/assets` and require it in `application.rb`

```ruby
require File.expand_path("lib/assets/add_to_end_of_filename.rb")
```