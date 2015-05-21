
source("https://rubygems.org")

gem("sinatra-contrib", :require => "sinatra/reloader")
gem("sinatra-activerecord")
gem("rake")
gem("pg")
gem("javan-whenever")
gem('daemons')
gem 'rerun'
gem 'yeah'

group(:production) do
  gem("sinatra")
end

group(:test) do
  gem("rspec")
  gem("pry")
  gem("shoulda-matchers")
  gem("capybara")
  gem('shoulda-callback-matchers')
  gem('launchy')
end
