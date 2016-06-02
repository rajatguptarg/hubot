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
    robot.respond /window-timings/i, (msg) ->
        msg.send process.env.DEPLOY_START_TIME
