# InSpec test for recipe python::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end

# This is an example test, replace it with your own test.
describe port(80), :skip do
  it { should_not be_listening }
end

describe package('python') do
  it {should be_installed}
end

describe pip('flask') do
  it { should be_installed }
  its('version') { should eq '0.10.1' }
end

describe pip('Jinja2') do
  it { should be_installed }
  its('version') { should eq '2.7.3' }
end

describe pip('MarkupSafe') do
  it { should be_installed }
  its('version') { should eq '0.23' }
end

describe pip('Werkzeug') do
  it { should be_installed }
  its('version') { should eq '0.9.6' }
end

describe pip('gnureadline') do
  it { should be_installed }
  its('version') { should eq '6.3.3'}
end

describe pip('itsdangerous') do
  it { should be_installed }
  its('version') { should eq '0.24'}
end

describe pip('rauth') do
  it { should be_installed }
  its('version') { should eq '0.7.0'}
end

describe pip('requests') do
  it { should be_installed }
  its('version') { should eq '2.3.0'}
end

describe pip('wsgiref') do
  it { should be_installed }
  its('version') { should eq '0.1.2'}
end

describe pip('gunicorn') do
  it { should be_installed }
  its('version') { should eq '18.0'}
end

describe pip('Flask-SSLify') do
  it { should be_installed }
  its('version') { should eq '0.1.4'}
end

####################Pytest Requiremnets#####################
describe pip(' pytest') do
  it { should be_installed }
  its('version') { should eq '2.5.2'}
end

describe pip('pytest-cov') do
  it { should be_installed }
  its('version') { should eq '1.6'}
end
  end
