require 'puppetlabs_spec_helper/rake_tasks'
require 'puppet-lint/tasks/puppet-lint'
PuppetLint.configuration.send('disable_80chars')
PuppetLint.configuration.ignore_paths = ["spec/**/*.pp", "pkg/**/*.pp"]

task :default => ["unit"]

desc "Validate manifests, templates, and ruby files"
task :validate do
  Dir['manifests/**/*.pp'].each do |manifest|
    sh "puppet parser validate --noop #{manifest}"
  end
  Dir['spec/**/*.rb','lib/**/*.rb'].each do |ruby_file|
    sh "ruby -c #{ruby_file}" unless ruby_file =~ /spec\/fixtures/
  end
  Dir['templates/**/*.erb'].each do |template|
    sh "erb -P -x -T '-' #{template} | ruby -c"
  end
end

desc "Run Validate, Rspec-Puppet, and Lint Unit Tests"
task :unit do
   Rake::Task["validate"].invoke
   Rake::Task["spec"].invoke
   Rake::Task["lint"].invoke
end

## Issues
#
# Rspec-Puppet currently does not support Rspec 3 so you will see this:
#
# RSpec::Puppet::ManifestMatchers::CreateGeneric implements a legacy RSpec
# matcher protocol. For the current protocol you should expose the failure
# messages via the `failure_message` and `failure_message_when_negated` methods.
#
# Once [Rspec-Puppet Issue](https://github.com/rodjek/rspec-puppet/pull/204)
# has been merged in, upgrade rspec-puppet and get rid of the deprecation warnings.
