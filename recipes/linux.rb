# cookbook:: cloudwatch
# Recipe:: default
# Copyright 2017, REANCLOUD
execute 'update' do
  command 'sudo yum update -y'
end
execute 'install' do
  command 'yum install -y awslogs'
end
execute 'start' do
  command 'service awslogs start'
end
execute 'on' do
  command 'sudo chkconfig awslogs on'
end
