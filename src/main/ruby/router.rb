require "cuba"

puts "|||", ENV["GEM_PATH"], "|||"
puts "|||", $LOAD_PATH, "|||"

Router = Class.new(Cuba)

Router.define do
  on get do
    on "hello" do
      res.write "Hello world!"
    end

    on root do
      res.redirect "/hello"
    end
  end
end
