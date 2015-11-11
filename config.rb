require 'compass/import-once/activate'
# Require any additional compass plugins here.

# Set this to the root of your project when deployed:
http_path = "/"
css_dir = "css"
sass_dir = "sass"
images_dir = "assets/img"
javascripts_dir = "js"

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed
output_style = :nested

# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
# line_comments = false

preferred_syntax = :sass

sourcemap = (environment == :production) ? false : true



# Additional Methods
# *********************************************************************************************************************


# Method "file_exits" is used to check if a file exists inside the project directory. Returns true/false.
# *********************************************************************************************************************
module Sass::Script::Functions
    def file_exists(file)
      path = file.value
      Sass::Script::Bool.new(File.exists?(path))
    end
end
# *********************************************************************************************************************