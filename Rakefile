# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Hirelogiq::Application.load_tasks

namespace :test do
  task :javascript do
    abort "JUnit tests failed" unless system("karma start")
  end
end

task default: [:test, 'test:javascript']
