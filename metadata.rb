name             'etcd'
maintainer       'Assembla Inc'
maintainer_email 'andrian@assembla.com'
license          'All rights reserved'
description      'Installs/Configures etcd'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

supports "debian", ">= 6.0"

depends 'ark'