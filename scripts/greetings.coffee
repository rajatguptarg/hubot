greetings = ["Hi", "Hola", "Hello", "Yo"]
enterReplies = ['Hi', 'Target Acquired', 'Firing', 'Hello friend.', 'Gotcha', 'I see you']
leaveReplies = ['Are you still there?', 'Target lost', 'Searching']
loveResponses = ['Me too', 'Love you too', 'Ditto']
morningGreetings = ['Morning', 'Good Morning', 'Same to you']

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
    msg.send 'Good Night.. sweet dreams :kissing:'

  robot.respond /bye/i, (msg) ->
    msg.send "bye.. miss you :kissing:"

  robot.respond /good morning/i, (msg) ->
    msg.send msg.random morningGreetings

  robot.respond /thank/i, (msg) ->
    msg.send "my pleasure :blush:"

  robot.respond /(.*) remind me (.*)/i, (msg) ->
    msg.respond "Please contact to slackbot for this. He is handling all this work."
