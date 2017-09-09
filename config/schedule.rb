# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron
# i've tried this with and without line 6
env :PATH, ENV['PATH']

every :day, :at => '10:00am' do
  runner "Input.send_text"
end

every :day, :at => '02:00pm' do
  runner "Input.send_text"
end

every :day, :at => '08:00pm' do
  runner "Input.send_text"
end

every :day, :at => '08:15pm' do
    runner "Input.send_text"
end
# this is to test for UTC time
every :day, :at => '3:05am' do
    runner "Input.send_text"
end
# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
