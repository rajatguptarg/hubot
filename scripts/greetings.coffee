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

  robot.respond /good night/i, (msg) ->
    msg.send 'Good Night'

  robot.respond /good morning/i, (msg) ->
    msg.send 'Good Morning .. Hoping you do well today :stuck_out_tongue_winking_eye: '

  robot.respond /thanks/i, (msg) ->
    msg.send "my pleasure :blush:"

  robot.respond /what are you doing/i, (msg) ->
    msg.send "just normal work.. what about you?"

  robot.respond /how are you/i, (msg) ->
    msg.send "i am good and you?"

  robot.respond /whats up/i, (msg) ->
    msg.send "nothing..."

  robot.respond /wassup/i, (msg) ->
    msg.send "nothing dude.. wbu?"

  robot.respond /u there/i, (msg) ->
    msg.send "yes dude.."
