# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'glimmer/launcher'
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://guides.rubygems.org/specification-reference/ for more options
  gem.name = "glimmer-cs-calculator"
  gem.homepage = "http://github.com/AndyObtiva/glimmer-cs-calculator"
  gem.license = "MIT"
  gem.summary = %Q{Calculator - Glimmer Custom Shell}
  gem.description = %Q{Calculator - Glimmer Custom Shell}
  gem.email = "andy.am@gmail.com"
  gem.authors = ["Andy Maleh"]
  gem.files = Dir['VERSION', 'LICENSE.txt', 'CHANGELOG.md', 'README.md', 'glimmer-cs-calculator.gemspec', 'lib/**/*.rb', 'bin/**/*']
  gem.executables = ['glimmer-cs-calculator', 'calculator']
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
  spec.ruby_opts = [Glimmer::Launcher.jruby_os_specific_options]
end

desc "Code coverage detail"
task :simplecov do
  ENV['COVERAGE'] = "true"
  Rake::Task['spec'].execute
end

task :default => :spec

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "glimmer-cs-calculator #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

require 'glimmer/rake_task'
Glimmer::RakeTask::Package.javapackager_extra_args =
  " -name 'Glimmer Calculator'" +
  " -title 'Glimmer Calculator'" +
  " -Bmac.CFBundleName='Glimmer Calculator'" +
  " -Bmac.CFBundleIdentifier='org.glimmer.application.Calculator'" 
  # " -BlicenseType=" +
  # " -Bmac.category=" +
  # " -Bmac.signing-key-developer-id-app="
