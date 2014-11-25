# similar approach with http://ixti.net/software/2013/01/28/using-jekyll-plugins-on-github-pages.html
# use rake site:publish to push generated content into another folder
# then manually do git commit and push in that website

require "rubygems"
require "tmpdir"

require "bundler/setup"
require "jekyll"

# Target folder
TARGET_FOLDER = "/Users/ali/Desktop/personal-code/erensekertasarimlar.github.io"



namespace :site do
  desc "Generate blog files"
  task :generate do
    Jekyll::Site.new(Jekyll.configuration({
      "source"      => ".",
      "destination" => "_site"
    })).process
  end


  desc "Generate and publish blog to another folder"
  task :publish => [:generate] do
    cp_r "_site/.", #{TARGET_FOLDER}
  end
end