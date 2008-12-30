require 'rubygems'

gem 'extlib', '~>0.9.8'
require 'extlib'

require File.expand_path(File.join(File.dirname(__FILE__), 'data_objects', 'logger'))
require File.expand_path(File.join(File.dirname(__FILE__), 'data_objects', 'connection'))
require File.expand_path(File.join(File.dirname(__FILE__), 'data_objects', 'uri'))
require File.expand_path(File.join(File.dirname(__FILE__), 'data_objects', 'transaction'))
require File.expand_path(File.join(File.dirname(__FILE__), 'data_objects', 'command'))
require File.expand_path(File.join(File.dirname(__FILE__), 'data_objects', 'result'))
require File.expand_path(File.join(File.dirname(__FILE__), 'data_objects', 'reader'))
require File.expand_path(File.join(File.dirname(__FILE__), 'data_objects', 'field'))
require File.expand_path(File.join(File.dirname(__FILE__), 'data_objects', 'quoting'))
require File.expand_path(File.join(File.dirname(__FILE__), 'data_objects', 'error'))
require File.expand_path(File.join(File.dirname(__FILE__), 'data_objects', 'error', 'sql_error'))
require File.expand_path(File.join(File.dirname(__FILE__), 'data_objects', 'error', 'connection_error'))
require File.expand_path(File.join(File.dirname(__FILE__), 'data_objects', 'error', 'data_error'))
require File.expand_path(File.join(File.dirname(__FILE__), 'data_objects', 'error', 'integrity_error'))
require File.expand_path(File.join(File.dirname(__FILE__), 'data_objects', 'error', 'syntax_error'))
require File.expand_path(File.join(File.dirname(__FILE__), 'data_objects', 'error', 'transaction_error'))


module DataObjects
  class LengthMismatchError < StandardError; end

  def self.root
    @root ||= Pathname(__FILE__).dirname.parent.expand_path
  end

  def self.find_const(name)
    klass = Object
    name.to_s.split('::').each do |part|
      klass = klass.const_get(part)
    end
    klass
  end
end

# class ConnectionFailed < StandardError; end
#
# class ReaderClosed < StandardError; end
#
# class ReaderError < StandardError; end
#
# class QueryError < StandardError; end
#
# class NoInsertError < StandardError; end
#
# class LostConnectionError < StandardError; end
#
# class UnknownError < StandardError; end
