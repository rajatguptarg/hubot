greetings = ["Hi", "Hola", "Hello", "Yo"]
#
# module.exports = (robot) ->
#   robot.respond /hi/hello/yo/i, (msg) ->
#     msg.send msg.random greetings


enterReplies = ['Hi', 'Target Acquired', 'Firing', 'Hello friend.', 'Gotcha', 'I see you']
leaveReplies = ['Are you still there?', 'Target lost', 'Searching']

module.exports = (robot) ->
  robot.enter (res) ->
    res.send res.random enterReplies
  robot.leave (res) ->
    res.send res.random leaveReplies

  robot.respond /hi/i, (msg) ->
    msg.send msg.random greetings

  robot.respond /hello/i, (msg) ->
    msg.send msg.random greetings

  robot.respond /yo/i, (msg) ->
    msg.send msg.random greetings
