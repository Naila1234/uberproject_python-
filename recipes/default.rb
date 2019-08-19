#
# Cookbook:: python
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
apt_update 'update_sources' do
  action :update
end

package "python" do
  action :install
end

package 'python-pip' do
  action :install
end

#python_pip -r 'requirements.txt'
#install flask 0.10.0
#
execute 'python-pip plugin flask==0.10.1' do
  command 'pip install flask==0.10.1'
end
#
execute 'python-pip plugin Jinja2==2.7.3'do
  command 'pip install Jinja2==2.7.3'
end

execute 'python-pip plugin MarkupSafe==0.23' do
  command 'pip install MarkupSafe==0.23'
end

execute 'python-pip plugin Werkzeug==0.9.6' do
  command 'pip install Werkzeug==0.9.6'
end

package 'libncurses5-dev' do
  action :install
end

execute 'python-pip plugin gnureadline==6.3.3' do
  command 'pip install gnureadline==6.3.3'
end

execute 'python-pip plugin itsdangerous==0.24' do
  command 'pip install itsdangerous==0.24'
end

execute 'python-pip plugin install rauth==0.7.0' do
  command 'pip install rauth==0.7.0'
end

execute 'python-pip plugin install requests==2.3.0' do
  command 'pip install requests==2.3.0'
end

execute 'python-pip plugin install wsgiref==0.1.2' do
  command 'pip install wsgiref==0.1.2'
end

execute 'python-pip plugin install gunicorn==18.0' do
  command 'pip install gunicorn==18.0'
end

execute 'python-pip plugin install Flask-SSLify==0.1.4' do
  command 'pip install Flask-SSLify==0.1.4'
end

########Requiremnets to run the test ###################
execute 'python pytest requirement' do
  command 'pip install pytest==2.5.2'
end

execute 'python pytest-conv' do
  command 'pip install pytest-cov==1.6'
end

execute 'Http fixture betamax' do
  command 'pip install betamax==0.4.0'
end
execute 'lint or die flak8'do
  command 'pip install flake8==2.1.0'
end

execute 'pep8' do
  command 'pip install pep8==1.5.6'
end

execute 'pyflakes' do
  command 'pip install pyflakes==0.8.1'
end

execute 'coverall' do
  command 'pip install coveralls==0.4.2'
end
