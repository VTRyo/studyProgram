require 'spec_helper'

describe package('httpd'), :if => os[:family] == 'redhat' do
  it { should be_installed }
end

describe package('apache2'), :if => os[:family] == 'ubuntu' do
  it { should be_installed }
end

describe service('httpd'), :if => os[:family] == 'redhat' do
  it { should be_enabled }
  it { should be_running }
end

describe service('apache2'), :if => os[:family] == 'ubuntu' do
  it { should be_enabled }
  it { should be_running }
end

describe service('org.apache.httpd'), :if => os[:family] == 'darwin' do
  it { should be_enabled }
  it { should be_running }
end

describe port(80) do
  it { should be_listening }
end

#sample

# describe <resourceName>(<target>)  do
#   <test conditions>
#   :
#   :
#   it { should <conditions> }
#   its(target) { should <conditions><parameter> }
# end

#add

# describe file('/etc/httpd/conf.d/httpd.conf') do
#   it { should be_file }
#   its (:content) { should match /ServerName localhost/ }
# end
