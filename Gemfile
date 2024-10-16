source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.3.1"
#gem "rails", "~> 7.1.3", ">= 7.1.3.2"
#gem "rails", "~> 7.2.0.beta2"
gem 'rails', '~> 7.2.1.1', '>= 7.2.1'
#gem 'rails', '~> 7.2'
gem "sprockets-rails"
gem "sqlite3", "~> 2.1"
gem "puma", ">= 5.0"
gem "jsbundling-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "cssbundling-rails"
gem "jbuilder"
# gem "redis", ">= 4.0.1"
# gem "kredis"
# gem "bcrypt", "~> 3.1.7"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false
gem 'mini_magick', '~> 5.0', '>= 5.0.1'
#gem "image_processing", "~> 1.12"
gem 'tailwindcss-rails', '~> 3.0'
gem 'pagy', '~> 8.4'
gem 'administrate', '~> 0.20.1'
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

group :development, :test do
  gem "debug", platforms: %i[ mri windows ]
  gem "brakeman", require: false
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
  gem 'guard', '~> 2.18', '>= 2.18.1'
  gem 'guard-minitest', '~> 2.4', '>= 2.4.6'
end
group :production do
  gem 'pg', '~> 1.5', '>= 1.5.6'
end
