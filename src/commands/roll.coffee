PEG = require 'pegjs'
path = require 'path'
fs = require 'fs'
core = require '../core.js'

parser = PEG.buildParser(
  fs.readFileSync(path.resolve(__dirname, '../roll.pegjs')).toString()
)

rollCommand =

  roll: (text) ->
    "#{parser.parse(text)}"

  proccess: (tg, msg) ->
    args = core.getCommandArguments 'roll', msg
    if args
      message = ""
      for i in args
        result = @roll i
        message += "#{i} = #{result}"
    else
      message = "Argumenttos inválidos"
    tg.sendMessage {
      reply_to_message_id: msg.message_id
      chat_id: msg.chat.id
      text: message
    }

module.exports = rollCommand
