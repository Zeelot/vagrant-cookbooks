# For some reason, a fresh copy of my VM has issues booting up until this runs
execute "initial-sudo-apt-get-update" do
  command "apt-get update"
end

package "curl"
package "vim"
package "nodejs"
package "npm"
package "git-core"
package "memcached"
package "sqlite"
package "graphviz"

gem_package "compass" do
  action :install
  version "0.11.5"
  provider Chef::Provider::Package::Rubygems
end

gem_package "foreman" do
  action :install
  version "0.26.1"
  provider Chef::Provider::Package::Rubygems
end
