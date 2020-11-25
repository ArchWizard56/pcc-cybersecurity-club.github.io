require "jekyll"

Jekyll::Hooks.register :site, :post_write do |page|
  puts "Starting hugo build"
  system("cd _wiki && hugo -d ../_site/wiki")
end



