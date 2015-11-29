# Summary

Brief documentation covering the requirements necessary to develop a
package manager or other software that accesses the metadata within the
SlackOnly software repositories.

## Package Manager Developers

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
