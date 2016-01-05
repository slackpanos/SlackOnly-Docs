#!/usr/bin/env ruby

# Copyright 2016 Brenton Earl <brent@exitstatusone.com>
# All rights reserved.
#
# Redistribution and use of this script, with or without modification, is
# permitted provided that the following conditions are met:
#
# 1. Redistributions of this script must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
#
#  THIS SOFTWARE IS PROVIDED BY THE AUTHOR "AS IS" AND ANY EXPRESS OR IMPLIED
#  WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
#  MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO
#  EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
#  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
#  PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
#  OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
#  WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
#  OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
#  ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

# Directory traversal code from Bill Rawlinson
# http://code.rawlinson.us/2007/02/ruby-directory-traversal.html

require 'find'

class SlackRequired
  def initialize()
    # See the included config.cfg file for value references
    @repository =IO.readlines("config.cfg")[1].strip! 
    @includedFileTypes =IO.readlines("config.cfg")[3].split(",")
    @excludedFileNames =IO.readlines("config.cfg")[5].split(",")
    @excludedDirectories = IO.readlines("config.cfg")[7].split(",")
  end

  def repository
    @repository
  end

  def RecurseTree
    Find.find(@repository) do |path|
      if FileTest.directory?(path)
        # Black list exludes
        if @excludedFileNames.include?(File.basename(path.downcase))
          Find.prune
        elsif @excludedDirectories.include?(File.basename(path.downcase))
          Find.prune
        else
          next
        end
      else
        filetype = File.basename(path.downcase).split(".").last
        if @includedFileTypes.include?(filetype)

          # Print file path of each .info
          puts path

          # Read REQUIRES line from each .info
          File.open(path).each do |requires|
            requires_regex = /REQUIRES\=\".*\"/
            @@intext = requires_regex.match(requires)
            puts @@intext
          end
        end
      end
    end
  end
end

SlackRequired.new.RecurseTree