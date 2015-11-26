# Welcome to the SlackOnly software repository!

(This is the $ARCH Slackware $RELEASE directory)

## Introduction

SlackOnly is a third party software repository for Slackware Linux that
provides binary packages built from SlackBuilds.org (SBo) build scripts.
The goal is to enable users to install any package from SBo and to do so
with just a quick download.  SlackOnly also provides meta date that
supports automatic dependency resolution with certain package managers.
SlackOnly assumes that users have installed a full installation of
Slackware Linux prior to use.

SlackOnly supports the following Slackware releases and architectures:

 * Slackware 14.1 32 bit [1]
 * Slackware 14.1 64 bit [2]
 * Slackware-current 32 bit [3]
 * Slackware-current 64 bit [4]
 * Custom Packages 64 bit [5]

 [1]: http://packages.slackonly.com/pub/packages/14.1-x86/
 [2]: http://packages.slackonly.com/pub/packages/14.1-x86_64/
 [3]: http://panos.slackonly.com/pub/packages/current-x86/
 [4]: http://packages.slackonly.com/pub/packages/current-x86_64/
 [5]: http://packages.slackonly.com/pub/packages/custom-x86_64/


## Why should you use SlackOnly?

 * To quickly test a program before building it from source
 * Your computer is too slow or old to build a piece of software from
   source in a timely fashion
 * You are not worried about customizing every package and default
   package configurations are adequte
 * Some packages have a massive dependency chain and building it can be
   very complicated and time consuming


## How to use SlackOnly

There are a variety of ways to enable and use SlackOnly on your
Slackware installation.

 * Install slackpkg+
 * Install slpkg
 * Install slapt-get
 * Install gslapt and use it with slapt-get

#### SlackOnly with slackpkg+

__Important:  slackpkg+ does not provide automatic dependency
resolution. Skip down to one of the other package managers for this
feature__

1.  Install slackpkg+, which is an extension to slackpkg.

    * Download it here:

    > http://www.slakfinder.org/slackpkg+.html

    * Then in the directory containing slackpkg+, as the root user run
      the following command to install slackpkg+:

    > root@localhost~# installpkg slackpkg+*.t?z

2.  Add to and edit the appropriate sections of slackpkgplus.conf. This
    file is located in /etc/slackpkg/ and requires root permissions to
    edit it.

    * Change this line:

    > REPOPLUS=( slackpkgplus restricted alienbob slacky )

    * To read like this line:

    > REPOPLUS=( slackpkgplus restricted alienbob slacky slackonly )

    * Add SlackOnly to the list of mirrors.
    * Where RELEASE is either "14.1 or "-current"
    * Where ARCH is either x86 or x86_64 architecture

    > MIRRORPLUS['slackonly']=http://slackonly.com/pub/packages/RELEASE-ARCH/

    * Save your changes to /etc/slackpkg/slackpkgplus.conf

3.  Next run the following commands as root to import the SlackOnly GPG
    key and to update the slackpkg cache with the SlackOnly package
    list.

    > root@localhost~# slackpkg update gpg

    > root@localhost~# slackpkg update

4.  You are now ready to use slackpkg with the slackpkg+ extension to
    access the SlackOnly repository of your choice.

    * Notes:  Be sure to add the same repository and architecture as
      your Slackware installation.  You may run into problems if you add
      the wrong repository.

#### SlackOnly with slpkg

 (EDIT: Add directions)

#### SlackOnly with slapt-get and gslapt

 (EDIT: Add directions for stand alone slapt-get)
 (EDIT: Add optional direction to include gslapt)


## For Developers

 (EDIT: Add information for package maintainers)
 (EDIT: Add information discussing depenendcy resolution)

## Contact

 (EDIT: Add contact of project lead)
 (EDIT: Add additional maintainer names)
