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

module.exports = (robot) ->
  robot.respond /window start time/i, (msg) ->
    msg.send process.env.DEPLOY_START_TIME

  robot.respond /window end time/i, (msg) ->
    msg.send process.env.DEPLOY_END_TIME
