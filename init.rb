# Copyright or © or Copr. Jean-René Rouet CCIN2P3/CNRS (15/01/2014)
# 
#
# This software is a computer program whose purpose is to [describe
# functionalities and technical features of your software].
# 
# This software is governed by the CeCILL-B license under French law and
# abiding by the rules of distribution of free software.  You can  use, 
# modify and/ or redistribute the software under the terms of the CeCILL-B
# license as circulated by CEA, CNRS and INRIA at the following URL
# "http://www.cecill.info". 
# 
# As a counterpart to the access to the source code and  rights to copy,
# modify and redistribute granted by the license, users are provided only
# with a limited warranty  and the software's author,  the holder of the
# economic rights,  and the successive licensors  have only  limited
# liability. 
# 
# In this respect, the user's attention is drawn to the risks associated
# with loading,  using,  modifying and/or developing or reproducing the
# software by the user in light of its specific status of free software,
# that may mean  that it is complicated to manipulate,  and  that  also
# therefore means  that it is reserved for developers  and  experienced
# professionals having in-depth computer knowledge. Users are therefore
# encouraged to load and test the software's suitability as regards their
# requirements in conditions enabling the security of their systems and/or 
# data to be ensured and,  more generally, to use and operate it in the 
# same conditions as regards security. 
# 
# The fact that you are presently reading this means that you have had
# knowledge of the CeCILL-B license and that you accept its terms.

require 'redmine'
begin
  require 'config/initializers/session_store.rb'
  rescue LoadError
end

Dir::foreach(File.join(File.dirname(__FILE__), 'lib')) do |file|
  next unless /\.rb$/ =~ file
  require file
end

require 'redcloth3'
Redmine::Plugin.register :redmine_wiki_solution do
  name 'Redmine Wiki Solution plugin'
  author 'Jean-René Rouet CCIN2P3'
  description 'Allows usage of show/hide solutions for an exercice'
  url "http://www.github.com/ccin2p3/redmine_wiki_solution" if respond_to?(:url)
  version '0.0.1'
  requires_redmine :version_or_higher => '0.9.0'

  RedCloth3::ALLOWED_TAGS << "div"
  RedCloth3::ALLOWED_TAGS << "script"
end
