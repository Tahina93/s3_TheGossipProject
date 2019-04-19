require 'bundler'
Bundler.require

$LOAD_PATH << './lib'

require 'controller'
require 'gossip'
require 'router'
require 'view'

$LOAD_PATH << './db'

require 'gossip'

Router.new.perform

