@run_options = {verbose: Rake.application.options.trace}
task :default => [:ruby_dependencies, :test, :git]

task :ruby_dependencies do
	sh 'bundle install --path gems'
end

task :test => :set_env do
	Dir.glob('./tests/**/*.rb').each do |test|
		clear_db
		rake_sh 'ruby '+ test
	end
end

task :current_test do
	clear_db
	rake_sh "ruby tests/integration/test_add_l2_circuit_as_a_service.rb"
end

task :run do
	ENV['RACK_ENV']='production'
	sh 'rackup -s puma'
end

def clear_db 
	sh "mongo data-store --eval \"db.dropDatabase()\""
	sh "mongo view-store --eval \"db.dropDatabase()\""
	sh "mongo event-store --eval \"db.dropDatabase()\""
end

task :set_env do
	ENV['VIEW_STORE_CONNECTION_STRING'] = 'mongodb://localhost/view-store'
	ENV['DATA_STORE_CONNECTION_STRING'] = 'mongodb://localhost/data-store'
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