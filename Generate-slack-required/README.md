## About

Written to generate more accurate dependency information for the
SlackOnly Slackware software repositories.  Will correct issues with
package meta data generation and allow package managers to install all
dependencies.

Edit the included configuration file to change settings for the current
repository.

#### Author

Brenton Earl - brent@exitstatusone.com

Much of the code was writen by [Bill Rawlinson in
2007](http://code.rawlinson.us/2007/02/ruby-directory-traversal.html).


#### What does it do?

*  Traverses through a SlackBuilds repository
*  Locates each .info file
*  Reads the "REQUIRES" line into memory
*  Stores slack-required output directory in memory
*  Empties the contents of slack-required files if they exist
*  Touches slack-required files in each SlackBuild directory if they do
   not exist

#### To Do

*  Adjust "requires_regex" variable to format all REQUIRES lines in
   .info files from this:
```bash
REQUIRES="dep1 dep2 dep3"
```
To this:
```bash
dep1
dep2
dep3
```
*  Write dependencies to each 'slack-required' file using the created
   regex
*  Create regex to locate this section in all .SlackBuild files and
   store the line number in memory.  Must search files efficiently and
   quickly.
```bash
mkdir -p $PKG/install
cat $CWD/slack-desc > $PKG/install/slack-desc
```
*  Ability to append the following to all .SlackBuild files.  Must write
   to files efficiently.
```bash
mkdir -p $PKG/install
cat $CWD/slack-desc > $PKG/install/slack-desc
+cat $CWD/slack-required > $PKG/install/slack-required
```
