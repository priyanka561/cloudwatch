# cookbook Name:: cloudwatch
# Recipe:: default
# Copyright 2017, REANCLOUD
execute 'update' do
  command 'apt-get update -y'
end
execute 'curlinstall' do
  command 'apt-get install curl -y'
end
execute 'install' do
  command 'curl https://s3.amazonaws.com/aws-cloudwatch/downloads/latest/awslogs-agent-setup.py -O'
end
execute 'on' do
  command 'update-rc.d awslogs start 20 2 3 4 5 . stop 20 0 1 6 .'
end
