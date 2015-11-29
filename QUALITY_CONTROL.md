# Summary

Brief documentation discussing what is required in order to effectively
maintain the SlackOnly software repositories.

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
