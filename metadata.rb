name             'amiga-ppp'
maintainer       'Roger North-Row'
maintainer_email 'amiga-ppp@north-row.com'
license          'All rights reserved'
description      'Installs/Configures ppp for an Amiga internet connection'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.1'

%w{ raspbian }.each do |os|
  supports os
end

depends 'iptables' # for masquerading and Amiga Explorer port forwarding
depends 'sysctl'   # for ip forwarding
