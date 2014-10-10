amiga-ppp Cookbook
==================
Install and configure the necessary software to enable the Amiga to access the
internet through the Raspberry Pi's serial cable

Requirements
------------
Only tested on Raspbian (Raspberry Pi)
Requires iptables and sysctl

Attributes
----------

#### ppp::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>[:serial_device]</tt></td>
    <td>String</td>
    <td>serial port to use</td>
    <td><tt>/dev/ttyAMA0</tt></td>
  </tr>
  <tr>
    <td><tt>[:serial_speed]</tt></td>
    <td>String</td>
    <td>serial port speed</td>
    <td><tt>57600</tt></td>
  </tr>
  <tr>
    <td><tt>[:net_interface]</tt></td>
    <td>String</td>
    <td>network interface that provides the internet</td>
    <td><tt>eth0</tt></td>
  </tr>
  <tr>
    <td><tt>[:pi_ip]</tt></td>
    <td>String</td>
    <td>the NAT gateway for the Amiga</td>
    <td><tt>10.10.10.1</tt></td>
  </tr>
  <tr>
    <td><tt>[:amiga_ip]</tt></td>
    <td>String</td>
    <td>the Amiga's IP address</td>
    <td><tt>10.10.10.2</tt></td>
  </tr>
  <tr>
    <td><tt>[:ms_dns]</tt></td>
    <td>Array</td>
    <td>a list of IP addresses for your DNS servers</td>
    <td><tt>192.168.0.1</tt></td>
  </tr>
  <tr>
    <td><tt>[:ms_wins]</tt></td>
    <td>Array</td>
    <td>a list of IP addresses for your WINS servers</td>
    <td><tt>192.168.0.1</tt></td>
  </tr>
  <tr>
    <td><tt>[:netmask]</tt></td>
    <td>String</td>
    <td>the netmask for the IPs</td>
    <td><tt>255.255.255.0</tt></td>
  </tr>
</table>


Usage
-----
#### amiga-ppp::default
Just include `amiga-ppp` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[amiga-ppp]"
  ]
}
```
License and Authors
-------------------
Authors: Roger North-Row
