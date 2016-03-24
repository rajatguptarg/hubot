module.exports = (robot) ->
  robot.hear /--/i, (msg) ->
    msg.send "@channel: Attention: @mujir is about to explain something."
