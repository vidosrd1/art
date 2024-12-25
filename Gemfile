source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

#gem 'rake'
#ruby "3.3.1"
#gem "rails", "~> 7.1.3", ">= 7.1.3.2"
#gem "rails", "~> 7.2.0.beta2"
#gem 'rails', '~> 7.2.1.1', '>= 7.2.1'
#gem 'rails', '~> 7.2'
gem "rails", "~> 8.0.0.rc2"
#gem 'rails', '~> 7.2', '>= 7.2.2'
#gem "sprockets-rails"
gem 'sqlite3', '~> 2.5'
gem 'puma', '~> 6.4', '>= 6.4.3'
gem "jsbundling-rails"
gem 'turbo-rails', '~> 2.0', '>= 2.0.11'
gem "stimulus-rails"
gem "cssbundling-rails"
gem 'jbuilder', '~> 2.13'
# gem "redis", ">= 4.0.1"
# gem "kredis"
# gem "bcrypt", "~> 3.1.7"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false
gem 'mini_magick', '~> 5.0', '>= 5.0.1'
#gem "image_processing", "~> 1.12"
gem 'tailwindcss-rails', '~> 3.0'
#gem 'pagy', '~> 9.1.1'
gem 'pagy', '~> 9.2'
#gem 'pagy', '~> 8.6', '>= 8.6.3'
gem 'devise', '~> 4.9', '>= 4.9.3'
gem 'ancestry'
gem 'jquery-rails', '~> 4.6'
#gem 'acts-as-taggable-on', '~> 10.0'
#gem 'awesome_nested_set', '~> 3.6'
gem 'administrate-rich-text'
gem 'madmin', '~> 1.2', '>= 1.2.10'

gem "appraisal"
gem "byebug", group: [:development, :test]
gem "standardrb", group: [:development, :test]
gem 'ffaker', '~> 2.23'
gem "name_of_person", "~> 1.1", ">= 1.1.1"
gem "simplecov", group: :test
gem "web-console", group: :development
#gem "webpacker", "~> 5.2", ">= 5.2.1"
gem 'friendly_id', '~> 5.5', '>= 5.5.1'
#gem "friendly_id", "~> 5.4"
gem "bcrypt"
gem 'rqrcode', '~> 2.2'
gem 'fuzzy_match', '~> 2.1'
gem 'httpclient', '~> 2.8', '>= 2.8.3'
gem 'sandbox', '~> 0.1.1'
gem 'xcodeproj', '~> 1.26'

group :development, :test do
  gem "debug", platforms: %i[ mri windows ]
gem 'brakeman', '~> 6.2', '>= 6.2.2'
  #gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end
group :development do
  #gem "web-console"
  # gem "rack-mini-profiler"
  # gem "spring"
end
group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem 'webdrivers', '~> 5.3', '>= 5.3.1'
  gem 'rails-controller-testing', '~> 1.0', '>= 1.0.5'
  gem 'minitest', '~> 5.23', '>= 5.23.1'
  gem 'minitest-reporters', '~> 1.6', '>= 1.6.1'
gem 'guard', '~> 2.19'
  gem 'guard-minitest', '~> 2.4', '>= 2.4.6'
end
group :production do
#  gem 'pg', '~> 1.5', '>= 1.5.8'
  gem 'pg', '~> 1.5', '>= 1.5.9'
end
