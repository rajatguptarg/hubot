module.exports = (robot) ->
  robot.hear /--/i, (msg) ->
    msg.send "@channel Attention: @#{msg.message.user.name} is about to explain something."

  robot.hear /listen/i, (msg) ->
    msg.send "Everyone, Please listen. @#{msg.message.user.name} is trying to explain something."

  robot.hear /please/i, (msg) ->
    msg.send "Everyone, Please listen. @#{msg.message.user.name} is trying to explain something."
