#
# Cookbook Name:: os-packages
# Recipe:: default
#
# Copyright 2013, Tom Molin
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

node['os-packages']['rhel'].each do |pkg, what|
  package "#{pkg}" do
    case what
      when 'install' then action :install
      when 'remove' then action :remove
      when 'upgrade' then action :upgrade
    end
  end
end unless node['os-packages']['rhel'].nil?
