# frozen_string_literal: true

# Question 2 (10 minutes time)
#
# Write a function that parses following input and prints date in your local timezone:
# input = "{\"time\":\"2022-06-17T05:52:39.787Z\"}"
# parser(input) => "2022-06-17 07:54:13 +0200"
require 'json'
require 'time'

def parse_time(time)
  date_time = JSON.parse(time)['time']
  Time.parse(date_time).localtime.strftime('%F %T %z')
end

time = '{"time":"2022-06-17T05:52:39.787Z"}'
pp parse_time(time)
pp parse_time(time) == '2022-06-17 07:52:39 +0200'
