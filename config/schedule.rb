# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron
require File.expand_path(File.dirname(__FILE__) + "/environment") 

set :output, "./log"

every 1.minute do
  runner "Calendar.clean_old_records" , :environment => "development"
end