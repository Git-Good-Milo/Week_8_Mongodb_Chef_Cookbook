#
# Cookbook:: mongodb_1
# Spec:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'mongodb_1::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '16.04'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it "should install mongodb using a recipe" do
      expect(chef_run).to install_package 'mongodb-org'
    end

    it "should enable service mongodb" do
      expect(chef_run).to enable_service 'mongod'
    end

    it "should start service mongodb" do
      expect(chef_run).to start_service 'mongod'
    end

  end
end
