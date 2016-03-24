module.exports = (robot) ->
  robot.hear /--/i, (msg) ->
    msg.send "@all: Attention: @mujir is about to explain something."
