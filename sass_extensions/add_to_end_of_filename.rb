require "sass"

module Sass::Script::Functions
  def add_to_end_of_filename(filename, string_to_add)
    assert_type filename, :String
    assert_type string_to_add, :String

    # Sass exposes the original Ruby object at the value method
    match_data = filename.value.match(/(.*)(\..*\z)/i)

    # Should have exactly 3 match sections (full, name, extension)
    new_filename = if match_data.length == 3
      "#{match_data[1]}#{string_to_add.value}#{match_data[2]}"
    else
      filename
    end

    # Return the type Sass is expecting
    Sass::Script::String.new(new_filename)
  end
  declare "add-to-end-of-filename", :args => [:string, :string]
end