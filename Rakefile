# frozen_string_literal: true

require 'dotenv/tasks'
require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.deps << :dotenv
  t.libs << 'test'
  t.libs << 'lib'
  t.test_files = FileList['test/**/*_test.rb']
end

require 'rubocop/rake_task'
RuboCop::RakeTask.new(:cop)

task default: %i[cop test]
