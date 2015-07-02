config = require './config.js'
core =
  getCommand: (msg) ->
    text = String(msg.text).trim()
    String(text.match(/^\/([a-zA-Z0-9]*)/i)?[1]).toLowerCase()

  getCommandArguments: (command, msg) ->
    return unless config.commands[command].arguments
    text = msg.text.replace("/#{command}", '').trim()
    text.match config.commands[command].arguments

  processMessage: (msg) ->
    console.log "#{msg.date} #{msg.from.username}: #{msg.text}"
    cmd = getCommand msg
    args = getCommandArguments cmd, msg
    [cmd, args]

module.exports = core
