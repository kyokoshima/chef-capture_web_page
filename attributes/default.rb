default["wkhtmltox"]["version"] = "0.12.0"
default["wkhtmltox"]["site"] = "http://downloads.sourceforge.net/project/wkhtmltopdf/#{default['wkhtmltox']['version']}"
	   #wkhtmltox_file = "wkhtmltox-linux-i386_#{wkhtmltox_version}-03c001d.tar.xz"
# http://downloads.sourceforge.net/project/wkhtmltopdf/0.12.0/wkhtmltox-linux-i386_0.12.0-03c001d.tar.xz
default["wkhtmltox"]["file"] = "wkhtmltox-linux-amd64_#{default['wkhtmltox']['version']}-03c001d.tar.xz"
default["wkhtmltox"]["path"] = "#{default['wkhtmltox']['site']}/#{default['wkhtmltox']['file']}"

