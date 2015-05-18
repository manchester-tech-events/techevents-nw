require 'bundler/setup'
require 'json'
require 'sinatra'
require 'sass'
require 'erb'
require 'sinatra/assetpack'
require 'tilt/erb'

class App < Sinatra::Application
	def initialize(app=nil)
		super(app)
	end

	register Sinatra::AssetPack
	assets do
		js :application, [
			'js/*.js'
		]

		css :application, [
			'css/**/*.*',
		]

		js_compression :jsmin
		css_compression :sass
	end

	# 404 Error!
	not_found do
	  status 404
	  erb :not_found, :layout => :error_layout
	end

	error do
	  'Sorry there was a nasty error - ' + env['sinatra.error'].name
	  erb :error, :layout => :error_layout
	end

	get '/' do
		redirect '/calendar'
	end

	get '/calendar' do
		erb :calendar, :layout => :layout
	end

	get '/groups' do
		erb :groups, :layout => :layout
	end

	get '/conferences' do
		erb :conferences, :layout => :layout
	end
end