# standalone_kubernetes_cluster

## Description

This simple shell script helps build a "standalone" Kubernetes cluster on an extra (eg, old) PC.

*Please contact me anytime if you have a problem or request! My information is posted at the bottom of this document.*

## Dependencies

Currently only the **Ubuntu** distribution is supported.
Use the `apt-get` command.

## Installation

All you have to do is run the following command:

```bash
$ curl -o - "https://raw.githubusercontent.com/genzouw/standalone_kubernetes_cluster/master/install_a_standalone_kubernetes_cluster.sh" | sh -
```

## Usage

***Use the `sudo swapoff -a` command to disable the swap function. If you want to keep the swap function enabled, you cannot use this script.**


Usage is very simple!
Just run this shell script.

```bash
./install_a_standalone_kubernetes_cluster.sh
```

## Configuration

The user running the script must have permission to execute the `sudo` command.
If possible, try to run without a password.

## Relase Note

| date       | version | note           |
| ---        | ---     | ---            |
| 2020-01-26 | 0.1     | first release. |


## License

This software is released under the MIT License, see LICENSE.


## Author Information

[genzouw](https://genzouw.com)

* Twitter   : @genzouw ( https://twitter.com/genzouw )
* Facebook  : genzouw ( https://www.facebook.com/genzouw )
* LinkedIn  : genzouw ( https://www.linkedin.com/in/genzouw/ )
* Gmail     : genzouw@gmail.com
