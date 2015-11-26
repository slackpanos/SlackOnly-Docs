# Welcome to the SlackOnly software repository!

(This is the $ARCH Slackware $RELEASE directory)

## Introduction

SlackOnly is a third party software repository for Slackware Linux that
provides binary packages built from SlackBuilds.org (SBo) build scripts.
The goal is to enable users to install any package from SBo and to do so
with just a quick download.  SlackOnly also provides meta data that
supports automatic dependency resolution with certain package managers.
SlackOnly assumes that users have installed a full installation of
Slackware Linux prior to use.

SlackOnly supports the following Slackware releases and architectures:

 * Slackware 14.1 32 bit [14.1-x86][1]
 * Slackware 14.1 64 bit [14.1-x86_64][2]
 * Slackware-current 32 bit [current-x86][3]
 * Slackware-current 64 bit [current-x86_64][4]
 * Custom Packages 64 bit [custom-x86_64][5]

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

There is a variety of package managers that will enable you to use
SlackOnly on your Slackware installation.

 * slackpkg+
 * slpkg
 * slapt-get and gslapt

#### Slackpkg+ Usage

    *This package manager does not offer automatic dependency resolution.*

1.  Install slackpkg+, which is an extension to slackpkg.

    * [Download slackpkg+ Here](http://www.slakfinder.org/slackpkg+.html)
    * As the root user install slackpkg+ with the installpkg command:

    > root@localhost:~# installpkg slackpkg+*.t?z

2.  Add to and edit the appropriate sections of slackpkgplus.conf. This
    file is located in /etc/slackpkg/ and requires root permissions to
    edit it.

    * Change this line:

    > REPOPLUS=( slackpkgplus restricted alienbob slacky )

    * To read like this line:

    > REPOPLUS=( slackpkgplus restricted alienbob slacky slackonly )

    * Add SlackOnly to the list of mirrors.
    * Where RELEASE is either "14.1 or "-current"
    * Where ARCH is either "x86" or "x86_64" architecture

    > MIRRORPLUS['slackonly']=http://slackonly.com/pub/packages/RELEASE-ARCH/

    * Save your changes to /etc/slackpkg/slackpkgplus.conf

3.  Next run the following commands as root to import the SlackOnly GPG
    key and to update the slackpkg cache with the SlackOnly package
    list.

    > root@localhost:~# slackpkg update gpg

    > root@localhost:~# slackpkg update

4.  You are now ready to use slackpkg with the slackpkg+ extension to
    access the SlackOnly repository of your choice.

    * Notes:  Be sure to add the same repository and architecture as
      your Slackware installation.  You may run into problems if you add
      the wrong repository.
    * Further directions can be found in the man page or viewed online
      in the [slackpkg+ README][6].

[6]: http://slakfinder.org/slackpkg+/src/README

#### Slpkg Usage

1.  Download the latest release of slpkg, [here][7]

    *  You can choose between the source code and the binary package.
       See the [slpkg README][8] for more information about installing from
       source. We will choose the binary package.  Be sure to download
       the right architecture

2.  Install slpkg as root with the installpkg command:

    root@sbodev:~# installpkg slpkg*_dsw.t?z

3.  Edit /etc/slpkg/slpkg.conf and change RELEASE to your Slackware
    release.  If you are using stable Slackware there is nothing to
    change.  Be sure to save your changes.

    RELEASE=stable
    or
    RELEASE=current

4.  Edit /etc/slpkg/repositories.conf and enable the "slonly" repository
    by uncommenting the line.  Be sure to save your changes.

    # slonly
    to
    slonly

5.  Run the following command to synchronize the package lists:

    slpkg update

6.  You are now ready to start using slpkg to manage your SlackOnly
    binary packages.  Install your first package by telling slpkg to use
    the SlackOnly repository and then by supplying a package name.

    slpkg -s slonly <package>

7.  See the slpkg man page or run the help command for more information
    about slpkg.  You can also view the [slpkg README][8] online.

    man slpkg
    or
    slpkg -h

[7]: https://github.com/dslackw/slpkg/releases
[8]: https://github.com/dslackw/slpkg/blob/master/README.rst

#### Slapt-get and Gslapt Usage

 (EDIT: Add directions for stand alone slapt-get)
 (EDIT: Add optional direction to include gslapt)


## For Developers and Packagers

 (EDIT: Add information for package maintainers)
 (EDIT: Add information discussing depenendcy resolution)

## SlackOnly Contact and Contributors

* Web Site: [www.slackonly.com](http://slackonly.com)
* Project Lead:  Panagiotis Nikolaou <hostmaster -at- slackonly [dot] com>
* Contributor:  Brenton Earl [www.exitstatusone.com](http://exitstatusone.com)

## Credits and Thanks

* Patrick Volkerding for [Slackware Linux][20]
* David Spencer for [slackrepo][21]
* zerouno for the slackpkg extension, [slackpkg+][22]
* Eric Hameleers for the [slackpkg+ directions][23]
* Dimitris Zlatanidis for the [slpkg package manager][24]
* Jason Woodward and Contributors for [slapt-get and gslapt][25]

[20]: http://www.slackware.com/
[21]: https://idlemoor.github.io/slackrepo/index.html
[22]: http://www.slakfinder.org/slackpkg+.html
[23]: http://alien.slackbook.org/blog/introducing-slackpkg-an-extension-to-slackpkg-for-3rd-party-repositories/
[24]: https://github.com/dslackw/slpkg
[25]: http://software.jaos.org/

## Copyright

* Slackware® is a Registered Trademark of Patrick Volkerding.
* Linux is a Registered Trademark of Linus Torvalds.
