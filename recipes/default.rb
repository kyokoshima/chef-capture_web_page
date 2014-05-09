#
# Cookbook Name:: capture_web_page
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w[libXrender libXext openssl openssl-devel fontconfig
		xz unzip
		ipa-gothic-fonts ipa-mincho-fonts ipa-pgothic-fonts
		ipa-pmincho-fonts vlgothic-fonts vlgothic-p-fonts].each do |pkg|
		package pkg do
			action :install
		end
end

remote_file "/tmp/#{node['wkhtmltox']['file']}" do
	#wkhtmltox_version = "0.12.0"
	#wkhtmltox_site = "http://sourceforge.net/projects/wkhtmltopdf/files/#{wkhtmltox_version}"
	#wkhtmltox_file = "wkhtmltox-linux-i386_#{wkhtmltox_version}-03c001d.tar.xz"
	#wkhtmltox_file = "wkhtmltox-linux-amd64_#{wkhtmltox_version}-03c001d.tar.xz"
	#wkhtmltox_path = "#{wkhtmltox_site}/#{wkhtmltox_file}/download"

	source node['wkhtmltox']['path']
	action :create
	notifies :run, "bash[extract_wkhtmlimage]"
end

bash "extract_wkhtmlimage" do
	cwd "/tmp"
	code <<-EOH
		tar -Jxvf "/tmp/#{node['wkhtmltox']['file']}"
	EOH
	action :nothing
end

