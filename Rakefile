require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name        = "booty"
    gem.summary     = 'Bring \'er alongside. Tis be eh Ruby gem that converts english t\' pirate speak. Arrr.'
    gem.description = 'Bring \'er alongside. Tis be eh Ruby gem that converts english t\' pirate speak. Arrr.'
    gem.email       = "mdeering@mdeering.com"
    gem.homepage    = "http://github.com/mdeering/booty"
    gem.authors     = ["Michael Deering"]
  end
rescue LoadError
  puts "Take no prisoners! Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

desc 'Default: spec tests.'
task :default => :spec

begin
  require 'rake/rdoctask'
  require 'spec/rake/spectask'
  Spec::Rake::SpecTask.new('spec') do |t|
    t.spec_files = FileList['spec/**/*_spec.rb']
    t.spec_opts = ["-c"]
  end

  desc "Run all examples with RCov"
  Spec::Rake::SpecTask.new('examples_with_rcov') do |t|
    t.spec_files = FileList['spec/**/*_spec.rb']
    t.rcov = true
    t.rcov_opts = ['--exclude', '/opt,spec,Library']
  end
rescue LoadError
  puts "Take no prisoners! RSpec (or a dependency) not avalible: sudo gem install rspec"
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/*_test.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "Take no prisoners! RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

task :test => :check_dependencies

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  if File.exist?('VERSION')
    version = File.read('VERSION')
  else
    version = ""
  end

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "booty #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
