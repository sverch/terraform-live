require 'spec_helper.rb'

#env_name = ENV.fetch("AWSPEC_ENVIRONMENT_NAME")
env_name = "test"

describe vpc(env_name) do
  it { should exist }
  it { should be_available }
  its(:cidr_block) { should eq '10.1.0.0/16' }
end

describe security_group(env_name) do
  it { should exist }
  its(:group_name) { should eq 'base' }
  its(:inbound) { should be_opened.protocol('all').for('0.0.0.0/0') }
  its(:outbound) { should be_opened.protocol('all').for('0.0.0.0/0') }
  its(:inbound_rule_count) { should eq 1 }
  its(:outbound_rule_count) { should eq 1 }
  its(:inbound_permissions_count) { should eq 1 }
  its(:outbound_permissions_count) { should eq 1 }
  it { should belong_to_vpc(env_name) }
end

describe subnet("#{env_name}-0") do
  it { should exist }
  it { should be_available }
  it { should belong_to_vpc(env_name) }
  its(:cidr_block) { should eq '10.1.0.0/18' }
end

describe subnet("#{env_name}-1") do
  it { should exist }
  it { should be_available }
  it { should belong_to_vpc(env_name) }
  its(:cidr_block) { should eq '10.1.64.0/18' }
end

describe subnet("#{env_name}-2") do
  it { should exist }
  it { should be_available }
  it { should belong_to_vpc(env_name) }
  its(:cidr_block) { should eq '10.1.128.0/18' }
end

describe subnet("#{env_name}-3") do
  it { should_not exist }
end
