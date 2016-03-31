greetings = ["Hi", "Hola", "Hello", "Yo"]
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
    msg.send 'Good Night..'

  robot.respond /bye/i, (msg) ->
    msg.send "bye.."

  robot.respond /good morning/i, (msg) ->
    msg.send 'Good Morning .. Hope you do well today :stuck_out_tongue_winking_eye: '

  robot.respond /thank/i, (msg) ->
    msg.send "my pleasure :blush:"

  robot.respond /what (are|r) (you|u) doin(|g)/i, (msg) ->
    msg.send "just killing mah time.. what about you?"

  robot.respond /how (are|r) (you|u)/i, (msg) ->
    msg.send "i am pretty good and you?"

  robot.respond /wassup/i, (msg) ->
    msg.send "nothing .. wbu?"

  robot.respond /whats up/i, (msg) ->
    msg.send "nothing .. wbu?"

  robot.respond /(you|u) there/i, (msg) ->
    msg.send "yes buddy.."

  robot.respond /(.*) busy (.*)/i, (msg) ->
    msg.send "not for you :hugging_face:"

  robot.respond /:(.*):/, (msg) ->
    msg.send ":blush:"

  robot.respond /(.*) like (your|ur) (.*)/i, (msg) ->
    msg.send "thank you.. :blush:"

  robot.respond /(.*) (are|r) awesome/i, (msg) ->
    msg.send "I know... :sunglasses:"
