source "https://rubygems.org"

# Specify your gem's dependencies in pomodori.gemspec
gemspec

# The following gems are needed run the test suite.
# Technically, RSpec is the *only* necessary one.
# guard, spork and others are "nice to have"

gem "rspec",        '~> 3.1.0'
gem "simplecov",    require: false
gem "guard-bundler"
gem "guard-rspec"
gem "guard-spork"
gem "pry-byebug"
gem "rubocop", require: false

gem 'terminal-notifier-guard'
gem "rb-fsevent", :require => false if RUBY_PLATFORM =~ /darwin/i
