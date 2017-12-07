@run_options = {verbose: Rake.application.options.trace}
task :default => [:ruby_dependencies, :test, :git]

task :ruby_dependencies do
	sh 'bundle install --path gems'
end

task :run do
	sh 'rackup -s puma'
end

task :git => :ruby_dependencies do 
	require 'bundler/setup'
	require 'git_repository'
	message = ENV['m']
	raise 'no commit message specified' if message.nil?
	git = GitRepository.new
	git.pull
	git.add({:options => '-A'})
	git.commit(message: message )
	git.push
end

def rake_sh(command)
	sh command, @run_options
end