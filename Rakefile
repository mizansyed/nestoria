require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new do |t|
  t.libs << 'test'
end

Rake::TestTask.new do |t|
  t.libs << 'lib/nestoria'
  t.test_files = FileList['test/lib/nestoria/*_test.rb']
  t.verbose = true
end

desc "Run tests"
task :default => :test