class GitRepository
	def initialize(hash = {})
		@system_wrapper = hash[:system] || SystemWrapper.new
		remote = hash[:remote] || 'origin'
		@location = get_repository(hash[:ssh_repository]) || remote
		@branch = hash[:branch] || 'master'
	end
	def commit(hash)
		message_with_options = insert_options(:message => 'git commit', :options=>hash[:options])
		commit_message = "#{message_with_options} -m '#{hash[:message]}'"
		@system_wrapper.execute(commit_message)
	end

	def has_changes?
		git_status = @system_wrapper.execute('git status')
		result = git_status.include?('Changes not staged for commit') || git_status.include?('Changes to be committed:')
		return result
	end

	def has_untracked?
		git_status = @system_wrapper.execute("git status")
		return git_status.include?("Untracked files:")
	end

	def push(hash = {})
		push_message_with_options = insert_options(:message => 'git push', :options => hash[:options])
		push_message = "#{push_message_with_options} #{@location} #{@branch}"
		@system_wrapper.execute(push_message)
	end

	def pull(hash = {})
		pull_message_with_options = insert_options(:message => 'git pull',:options => hash[:options])
		pull_message = "#{pull_message_with_options} #{@location} #{@branch}"
		@system_wrapper.execute(pull_message)
	end

	def add(hash = {})
		files = hash[:files] || '.'
		add_message_with_options = insert_options(:message => 'git add', :options => hash[:options])
		@system_wrapper.execute("#{add_message_with_options} #{files}")
	end

	private
	def get_repository(repository)
		return "--repo='#{repository}'" unless repository.nil?
	end

	def insert_options(hash)
		if(hash[:options].nil?)
			return "#{hash[:message]}"
		else
			return "#{hash[:message]} #{hash[:options]}"
		end
	end
end


class SystemWrapper
	def execute(command)
		`#{command}`
	end
end
