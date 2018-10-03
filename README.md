# kms-emulator
A Dockerized container of [vlmcsd](https://github.com/Wind4/vlmcsd)

# TL;DR

* Clone repo

  `git clone https://github.com/likol/kms-emulator.git`

* Basic usage

  `make`
  Show help
  
  `make test`
  Run both server and client container to testing emulator (compose setting: test-compose.yml)

  `make compose`
  Run server container with auto restart, manage by docker-compose

  `make clear`
  Remove all container(s).

  `make logs`
  If has any container(s), show all container(s) logs.

* Knowledge

    [HOW TO ACTIVE VIA KMS](https://github.com/Wind4/vlmcsd/blob/master/man/vlmcsd.7.pdf)

    [HOW TO CONFIGURE vlmcsd](https://github.com/Wind4/vlmcsd/blob/master/man/vlmcsd.8.pdf)

    [HOW TO CONFIGURE vlmcs](https://github.com/Wind4/vlmcsd/blob/master/man/vlmcs.1.pdf)

* KEYS

    [WINDOWS GLVK KEYS](https://technet.microsoft.com/en-us/library/jj612867.aspx)

    [OFFICE 2013](https://technet.microsoft.com/en-us/library/dn385360.aspx)

    
***


* WINDOWS CLIENT SETUP

    `run CommandLine(cmd) as administrator`

    `slmgr /ipk GLVK`
    replace product key

    `slmgr /skms HOST[:PORT]`
    configure kms server

    `slmgr /ato`
    activate by manual command

* OFFICE CLIENT SETUP
    
    make sure Office is volume license version, if not the product key cannot change to GVLK. MSDN are non-VL

    `run CommandLine(cmd) as administrator`

    find Office installed path. should see the file name "opps.vbs" in directory . the example is Office 2016 x64 version default install path

    `cd "C:\Program Files\Microsoft Office\Office16"`

    `cscript ospp.vbs /sethst:HOST`
    configure kms hostname or ip

    `cscript ospp.vbs /setprt:PORT`
    configure kms port, default and usually is 1688 .

    `csscript ospp.vbs /act`
    activate by manual command

