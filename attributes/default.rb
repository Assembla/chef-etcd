default['etcd']['data_dir'] = '/var/lib/etcd'
default['etcd']['log_dir'] = '/var/log/etcd'

default['etcd']['user'] = 'etcd'
default['etcd']['group'] = 'etcd'

default['etcd']['name'] = node.hostname

default['etcd']['snapshot_count'] = 10000
default['etcd']['heartbeat_interval'] = 100
default['etcd']['election_timeout'] = 1000
default['etcd']['max_snapshots'] = 5
default['etcd']['max_wals'] = 5
default['etcd']['peers_port'] = '2380'
default['etcd']['clients_port'] = '2379'

# Comma-separated white list of origins for CORS (cross-origin resource sharing)
default['etcd']['cors'] = ''

# Listen and advertise URL's
default['etcd']['listen_peer_urls'] = ''
default['etcd']['listen_client_urls'] = ''
default['etcd']['advertise_client_urls'] = ''
default['etcd']['peer_listen_addresses'] = Array.new
default['etcd']['client_listen_addresses'] = Array.new
default['etcd']['peer_listen_protocol'] = 'http'
default['etcd']['client_listen_protocol'] = 'http'
default['etcd']['client_listen_main_ip'] = false
default['etcd']['peer_listen_main_ip'] = false

# initial cluster setup
default['etcd']['initial_advertise_peer_urls'] = ''
default['etcd']['initial_cluster'] = ''
default['etcd']['initial_cluster_state'] = 'new'
default['etcd']['initial_cluster_token'] = 'etcd-insecure-token'
default['etcd']['nodes'] = {}


# Discovery
default['etcd']['discovery'] = ''
default['etcd']['discovery_srv'] = ''
default['etcd']['discovery_fallback'] = 'proxy'
default['etcd']['discovery_proxy'] = ''

# Proxy
default['etcd']['proxy'] = 'off'

# Security
default['etcd']['ca_file'] = ''
default['etcd']['cert_file'] = ''
default['etcd']['key_file'] = ''
default['etcd']['client_cert_auth'] = 'false'
default['etcd']['trusted_ca_file'] = ''
default['etcd']['peer_cert_file'] = ''
default['etcd']['peer_key_file'] = ''
default['etcd']['peer_ca_file'] = ''
default['etcd']['peer_client_cert_auth'] = 'false'
default['etcd']['peer_trusted_ca_file'] = ''

# Logging
default['etcd']['debug'] = 'false'
default['etcd']['log_package_levels'] = ''

# Unsafe force flags
default['etcd']['force_new_cluster'] = 'false'



