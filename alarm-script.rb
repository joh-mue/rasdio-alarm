require 'time'

def start_radio
  puts "starting radio"
  exec 'mpc play;'
end

def stop_radio
  puts 'stopping radio'
  exec 'mpc stop;'
end

alarm = { hour: ARGV[0].to_i, minute: ARGV[1].to_i }
puts alarm
while true
  time = Time.new
    if time.hour.to_i == alarm[:hour] && time.min.to_i == alarm[:minute]
      puts 'Alarm set off'
      start_radio
      sleep(1800)
      stop_radio
    end
  sleep(1)
end
