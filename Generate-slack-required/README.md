## About

Written to generate more accurate dependency information for the
SlackOnly Slackware software repositories.  Will correct issues with
package meta data generation and allow package managers to install all
dependencies.

#### Author

Brenton Earl - brent@exitstatusone.com

Much of the code was writen by [Bill Rawlinson in
2007](http://code.rawlinson.us/2007/02/ruby-directory-traversal.html).


#### What does it do?

*  Traverses through a SlackBuilds repository
*  Locates each .info file
*  Reads the "REQUIRES" line into memory

#### To Do

*  Touch 'slack-required' files in each SlackBuild directory
*  Write dependency names one line at a time to each 'slack-required'
   file

