# ubuntu-dev [![](https://github.com/kancve/ubuntu-dev/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/kancve/ubuntu-dev/actions)

A docker development environment that includes C++ & Java.

In addition, it will include some common development tools:

* vim
* cmake
* g++
* gdb
* git
* subversion
* wget
* openssh-server
* net-tools
* iputils-ping
* apache2-utils
* maven
* openjdk-8-jdk-headless

[Vscode](https://code.visualstudio.com/) can be remotely connected to the container through ``Connect to Host...`` or ``Attach to Running Container...``, provided that you have installed the [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) plugin.

SSH remote connection username and password:

username: root
password: kancve

## net-tools

NET-3 networking toolkit

This package includes the important tools for controlling the network subsystem of the Linux kernel. This includes **arp**, **ifconfig**, **netstat**, **rarp**, **nameif** and **route**. Additionally, this package contains utilities relating to particular network hardware types (plipconfig, slattach, mii-tool) and advanced aspects of IP configuration (iptunnel, ipmaddr).

In the upstream package 'hostname' and friends are included. Those are not installed by this package, since there is a special "hostname*.deb".

## apache2-utils

Apache HTTP Server (utility programs for web servers)
Provides some add-on programs useful for any web server. These include:

- **ab** (Apache benchmark tool)
- **fcgistarter** (Start a FastCGI program)
- **logresolve** (Resolve IP addresses to hostnames in logfiles)
- **htpasswd** (Manipulate basic authentication files)
- **htdigest** (Manipulate digest authentication files)
- **htdbm** (Manipulate basic authentication files in DBM format, using APR)
- **htcacheclean** (Clean up the disk cache)
- **rotatelogs** (Periodically stop writing to a logfile and open a new one)
- **split-logfile** (Split a single log including multiple vhosts)
- **checkgid** (Checks whether the caller can setgid to the specified group)
- **check_forensic** (Extract mod_log_forensic output from Apache log files)
- **httxt2dbm** (Generate dbm files for use with RewriteMap)

# Build

```
docker build -t ubuntu-dev --build-arg VERSION=22.04
```

Of course, you can also directly pull the automatically built image from this library:

```
docker pull ghcr.io/kancve/ubuntu-dev
docker pull kancve/ubuntu-dev
```
