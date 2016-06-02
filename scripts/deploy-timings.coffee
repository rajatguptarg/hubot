# Description:
#   None
#
# Dependencies
#   None
#
#  Commands
#   window-timings - Display deployment window timings
#  
#  Author
#   Vikas, Rajat
#

module.export = (robot) ->
  robot.respond /window time/i, (msg) ->
    msg.send 'Hi I am Working'
