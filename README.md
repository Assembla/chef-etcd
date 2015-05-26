chef-etcd Cookbook
==================
A simple cookbook to set up etcd (supports version 2.x).

Requirements
------------

#### packages
- `ark` - chef-etcd installs binary tarballs using ark.

Attributes
----------
TODO: List all cookbook attributes.

e.g.
#### chef-etcd::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['etcd']['data_dir']</tt></td>
    <td>String</td>
    <td>Path to the data directory</td>
    <td><tt>/var/lib/etcd</tt></td>
  </tr>
  <tr>
    <td><tt>['etcd']['name']</tt></td>
    <td>String</td>
    <td>Human-readable name for this member</td>
    <td><tt>node.hostname</tt></td>
  </tr>
  <tr>
    <td><tt>['etcd']['snapshot_count']</tt></td>
    <td>Integer</td>
    <td>Number of committed transactions to trigger a snapshot to disk</td>
    <td><tt>10000</tt></td>
  </tr>
  <tr>
    <td><tt>['etcd']['heartbeat_interval']</tt></td>
    <td>Integer</td>
    <td>Time (in milliseconds) of a heartbeat interval</td>
    <td><tt>100</tt></td>
  </tr>
  <tr>
    <td><tt>['etcd']['election_timeout']</tt></td>
    <td>Integer</td>
    <td>Time (in milliseconds) for an election to timeout</td>
    <td><tt>1000</tt></td>
  </tr>
  <tr>
    <td><tt>['etcd']['max_snapshots']</tt></td>
    <td>Integer</td>
    <td>Maximum number of snapshot files to retain (0 is unlimited)</td>
    <td><tt>5</tt></td>
  </tr>
  <tr>
    <td><tt>['etcd']['max_wals']</tt></td>
    <td>Integer</td>
    <td>Maximum number of wal files to retain (0 is unlimited)</td>
    <td><tt>5</tt></td>
  </tr>
  <tr>
    <td><tt>['etcd']['peers_port']</tt></td>
    <td>String</td>
    <td>Default port on which etcd will listen for peers</td>
    <td><tt>2380</tt></td>
  </tr>
  <tr>
    <td><tt>['etcd']['clients_port']</tt></td>
    <td>String</td>
    <td>Default port on which etcd will listen for clients</td>
    <td><tt>2379</tt></td>
  </tr>
  <tr>
    <td><tt>['etcd']['cors']</tt></td>
    <td>String</td>
    <td>Comma-separated white list of origins for CORS (cross-origin resource sharing)</td>
    <td><tt>none</tt></td>
  </tr>
  <tr>
    <td><tt>['etcd']['listen_peer_urls']</tt></td>
    <td>String</td>
    <td>List of URLs to listen on for peer traffic</td>
    <td><tt>"http://localhost:2380"</tt></td>
  </tr>
  <tr>
    <td><tt>['etcd']['listen_client_urls']</tt></td>
    <td>String</td>
    <td>List of URLs to listen on for client traffic</td>
    <td><tt>"http://localhost:2379"</tt></td>
  </tr>
  <tr>
    <td><tt>['etcd']['advertise_client_urls']</tt></td>
    <td>String</td>
    <td>List of this member's client URLs to advertise to the rest of the cluster</td>
    <td><tt>"http://localhost:2379"</tt></td>
  </tr>
  <tr>
    <td><tt>['etcd']['peer_listen_addresses']</tt></td>
    <td>Array</td>
    <td>List of addresses etcd will listen on for peers (auto-generates ['etcd']['listen_peer_urls'] and ['etcd']['initial_advertise_peer_urls'])</td>
    <td><tt>[]</tt></td>
  </tr>
  <tr>
    <td><tt>['etcd']['client_listen_addresses']</tt></td>
    <td>Array</td>
    <td>List of addresses etcd will listen on for peers (auto-generates ['etcd']['listen_client_urls'] and ['etcd']['advertise_client_urls'])</td>
    <td><tt>[]</tt></td>
  </tr>
  <tr>
    <td><tt>['etcd']['peer_listen_protocol']</tt></td>
    <td>String</td>
    <td>Protocol for peer communication</td>
    <td><tt>'http'</tt></td>
  </tr>
  <tr>
    <td><tt>['etcd']['client_listen_protocol']</tt></td>
    <td>String</td>
    <td>Protocol for client communication</td>
    <td><tt>'http'</tt></td>
  </tr>
  <tr>
    <td><tt>['etcd']['client_listen_main_ip']</tt></td>
    <td>Boolean</td>
    <td>If set, auto-configures ['etcd']['listen_client_urls'] and ['etcd']['advertise_client_urls'] to localhost and node.ipaddress</td>
    <td><tt>false</tt></td>
  </tr>
  <tr>
    <td><tt>['etcd']['peer_listen_main_ip']</tt></td>
    <td>Boolean</td>
    <td>If set, auto-configures ['etcd']['listen_peer_urls'] and ['etcd']['initial_advertise_peer_urls'] to node.ipaddress</td>
    <td><tt>false</tt></td>
  </tr>
</table>

Usage
-----
#### etcd::default
TODO: Write usage instructions for each cookbook.


Just include `etcd` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[chef-etcd]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors:

@ajardan - initial version of the cookbook
