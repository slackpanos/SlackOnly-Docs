# Welcome to the SlackOnly software repository!

SlackOnly is a third party software repository for Slackware Linux that
provides binary packages built from [SlackBuilds.org][1] build scripts.
The goal is to enable users to install any package from
[SlackBuilds.org][1] using pre-compiled binary packages. SlackOnly
packages contain Metadata that provides dependency information to
package managers that have the ability to read such information.
SlackOnly assumes that its users are running a full installation of
Slackware Linux prior to use.

SlackOnly supports the following Slackware releases and architectures:

 * Slackware 14.1 32 bit [14.1-x86][2]
 * Slackware 14.1 64 bit [14.1-x86_64][3]
 * Slackware-current 32 bit [current-x86][4]
 * Slackware-current 64 bit [current-x86_64][5]
 * Custom 64 bit Packages [custom-x86_64][6]

 [1]: http://slackbuilds.org/
 [2]: http://packages.slackonly.com/pub/packages/14.1-x86/
 [3]: http://packages.slackonly.com/pub/packages/14.1-x86_64/
 [4]: http://panos.slackonly.com/pub/packages/current-x86/
 [5]: http://packages.slackonly.com/pub/packages/current-x86_64/
 [6]: http://packages.slackonly.com/pub/packages/custom-x86_64/


## Why should you use SlackOnly?

 * To quickly test a program before building it from source
 * Your computer is too slow or old to build a piece of software from
   source in a timely fashion
 * You are not worried about customizing every package and default
   package configurations are adequate
 * Some packages have a massive dependency chain and building it can be
   very complicated and time consuming


## How to use SlackOnly

There is a variety of package managers that will enable you to use
SlackOnly on your Slackware installation.

 * slackpkg+
 * slpkg
 * slapt-get and gslapt

Included below are directions explaining how to install and use each of
these package managers with the SlackOnly repository.

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

1.  Download the latest release of slpkg, [here][7].  You can choose
    between the source code and the binary package. See the
    [slpkg README][8] for more information about installing from source.
    We will choose the binary package.  Be sure to download the right
    architecture.

2.  Install slpkg as root with the installpkg command:

    > root@localhost:~# installpkg slpkg*_dsw.t?z

3.  Edit /etc/slpkg/slpkg.conf and change RELEASE to your Slackware
    release.  If you are using stable Slackware there is nothing to
    change.  Be sure to save your changes.

4.  Edit /etc/slpkg/repositories.conf and enable the SlackOnly repository
    by uncommenting the line with "slonly."  Be sure to save your changes.

5.  Run the following command to synchronize the package lists:

    > root@localhost:~# slpkg update

6.  You are now ready to start using slpkg to manage your SlackOnly
    binary packages.  Install your first package by first defining
    "slonly" as the repository and then by supplying a package name.

    > root@localhost:~# slpkg -s slonly <package>

7.  See the slpkg man page or run the help command for more information
    about slpkg.  You can also view the [slpkg README][8] online.

    > root@localhost:~# man slpkg
    > root@localhost:~# slpkg -h

[7]: https://github.com/dslackw/slpkg/releases
[8]: https://github.com/dslackw/slpkg/blob/master/README.rst

#### Slapt-get and gslapt Usage

 (TO DO: Add directions for stand alone slapt-get)
 (TO DO: Add directionis for gslapt)


## SlackOnly Quality Control

In order for SlackOnly to maintain quality control a few things need to
happen in the upstream SlackBuilds scripts.  Most of these are already
included as guidelines on SlackBuilds.org web site.  This information is
added for completeness.

All of these guidelines should be followed by SlackOnly repository
contributors as well.

*  All required dependencies used to build each SlackBuild should be
   present in all .info files
*  Download links should be accurate within the .info file of every
   SlackBuild script so that source tarballs can be found easily
*  MD5 checksums in .info files should be exactly the same as the MD5
   checksum of the upstream source tarballs so that source tarballs
   can be verified as authentic easily
*  Optional dependencies should be included in SlackBuild README files
*  Whenever possible, upstream source tarballs should be obtained
   directly from the upstream developer's repository for security
   reasons
*  SlackBuild scripts should be tested for both the x86 and x86_64
   architectures in the targeted Slackware release environment
*  SlackBuild scripts should be tested on a default installation of
   Slackware in the targeted Slackware release environment
*  Packages should be kept as "vanilla" as possible; the only changes to
   the resulting binary should be for bug fixes and security fixes.
*  A full installation of Slackware should be used when testing
   SlackBuild scripts

## Developers

Developers interested in implementing automatic dependency resolution in
their package manager have access to a number of pieces of information
that aid in tracking each binary package.  This information is useful
during the download process and during package removal.

* Package Name
* Package Mirror
* Location on the mirror
* Compressed and uncompressed size
* Required, Conflicting, and Optional dependencies
* Package description which contains the contents of the SlackBuild
  slack-desc file

Each binary package is located in a directory that also provides a
SHA256 checksum, a MD5SUM checksum, and a PGP signature. Each of these
files allow for multiple methods to verify authenticity.  There is
also a file that lists the package file structure and contents.

As little or as much of this information can be parsed by package
managers to provide more or less authenticity and dependency information.
To take advantage of all of the features of the SlackOnly repository, it is
suggested that all of this information be used.  This information assures
that the correct package and all of its dependencies are being accurately
enumerated.

## SlackOnly Contact and Contributors

* Web Site: [www.slackonly.com](http://slackonly.com)
* Project Lead:  Panagiotis Nikolaou "hostmaster -at- slackonly [dot] com"
* Contributor:  Brenton Earl [www.exitstatusone.com](http://exitstatusone.com)

## Thanks

* Patrick Volkerding for [Slackware Linux][20]
* The [SlackBuilds.org][1] administrators and maintainers
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
