$:.unshift( File.join(File::dirname( __FILE__ ), 'lib' ).untaint )
require 'tdiary/application'

use ::Rack::Reloader unless ENV['RACK_ENV'] == 'production'
base_dir = '/'
require 'tdiary/application/extensions/omniauth'
run TDiary::Application.new( base_dir )
