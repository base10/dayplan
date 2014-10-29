guard 'spork' do
  watch('Gemfile.lock')
  watch('spec/spec_helper.rb') { :rspec }
end

params = {
  wait:           60,
  all_after_pass: false,
  all_on_start:   true
}

guard :rspec, cmd: 'bundle exec rspec' do
  watch(%r{^spec/lib/.+_spec\.rb$})
  watch(%r{^lib/dayplan.rb$})  { |m| "spec/lib/dayplan_spec.rb" }
  watch(%r{^lib/dayplan/(.+)\.rb$})  { |m| "spec/lib/dayplan/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')        { "spec" }
end
