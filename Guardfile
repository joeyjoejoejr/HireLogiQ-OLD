guard :minitest, spring: true do
  watch(%r{^test/test_helper\.rb}) { 'test' }
  watch(%r{^test/.+_test\.rb})
  watch(%r{^app/(.+)\.rb})                               { |m| "test/#{m[1]}_test.rb" }
  watch(%r{^app/controllers/application_controller\.rb}) { 'test/controllers' }
  watch(%r{^app/controllers/(.+)_controller\.rb})        { |m| "test/integration/#{m[1]}_test.rb" }
  watch(%r{^app/views/(.+)_mailer/.+})                   { |m| "test/mailers/#{m[1]}_mailer_test.rb" }
  watch(%r{^lib/(.+)\.rb})                               { |m| "test/lib/#{m[1]}_test.rb" }
end

# Add files and commands to this file, like the example:
#   watch(%r{file/path}) { `command(s)` }
#
guard 'shell' do
  watch(%r{^test/javascript/.+\.coffee}) do |m| 
    if system('karma start')
      n "Tests Passed", "Qunit Tests", :success
    else
      n "Tests Failed", "Qunit Tests", :failed
    end
  end
  watch(%r{^app/assets/javascripts/(.+)(\.coffee|\.handlebars)}) do |m|
    if system('karma start')
      n "Tests Passed", "Qunit Tests", :success
    else
      n "Tests Failed", "Qunit Tests", :failed
    end
  end
end
