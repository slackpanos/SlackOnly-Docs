Below is a list of questions and answers discussing various topics of or
related to the SlackOnly repositories.  If your question is missing,
please email the site administrator.  Contact details can be found on
the site "About" page.

### Why should you use SlackOnly?

 * To quickly test a program before building it from source
 * Your computer is too slow or old to build a piece of software from
   source in a timely fashion
 * You are not worried about customizing every package and default
   package configurations are adequate
 * Some packages have a massive dependency chain and building it can be
   very complicated and time consuming

### What package managers support SlackOnly?

There are many package managers for Slackware that can be used to access
third party software repositories like SlackOnly.  So far, only a few
have been tested with our repositories.  These package managers are:
slackpkg with slackpkg+, slpkg, slapt-get, and usm.

  * slackpkg+ is an extension of Slackpkg.  This package manager does
    not provide automatic dependency resolution.
  * slpkg is known for its user friendliness and automatic dependency
    resolution.
  * slapt-get is an APT-like package management system for Slackware.
    It aims to emulate Debian's package manager (apt-get) as closely as
    possible.
  * Usm unifies various package repositories.  It also has support for
    building from source using SlackBuilds.org.

### How can you set up these package managers to use SlackOnly repositories?

Directions can be found in the README.TXT in each repository.

### Why should you trust that SlackOnly provides quality software?

All packages are built and rebuilt using Slackrepo.  Slackrepo is a
software utility that tests to see that packages are built cleanly with
all required dependencies.   Any time a change is made in the source
repository, slackrepo will rebuild those changes.  Each rebuild,
slackonly will also install each piece of software that was compiled
form source.  This assures that our repository provides packages that
will install cleanly.

The second part of quality control is done by hand.  Packages need to be
tested for correct functionality by being installed and used.  It is
very important that end-users report any problems they encounters when
they install software from our repositories.

The utmost care is taken while generating depenency information for
packages in our repository.  Please report all issues to the site
administrator as soon as encountered.

### How can you develop a package manager for use with SlackOnly?

Information for developers can be found in DEVELOPERS.TXT in each
repository.

### How can you contact the SlackOnly maintainer?

Email is the best way to contact us.  See the "About" page for
more information.
