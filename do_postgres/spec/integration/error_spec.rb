require 'pathname'
require Pathname(__FILE__).dirname.expand_path.parent + 'spec_helper'

describe "DataObjects::Postgres constants" do

  it { DataObjects::Postgres::ERRCODE_CONNECTION_EXCEPTION.should_not be_nil }

end
