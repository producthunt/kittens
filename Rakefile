$LOAD_PATH << './lib'

require 'kittens'
require 'kittens/daily_report'
require 'kittens/flush_db'

desc 'Sends a daily report to Slack'
task daily_report: [:create_report, :flush_db]

task :create_report do
  Kittens::DailyReport.call
end

task :flush_db do
  Kittens::FlushDb.call
end
