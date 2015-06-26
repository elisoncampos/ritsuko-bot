_ = require 'lodash'
Telegram = require 'node-telegram-bot'

tg = new Telegram('116265847:AAFfQunaAJyFl9gxoXk69OTi5zii2E1eDeg')
sessions = {}

map =

  help: (msg) ->
    text: """
      /random - Gera um número random
      /help - Sobre a Ritsuko
    """

  random: (msg) ->
    randomNumber = _.shuffle([0..9]).slice(0, 4).join("")
    msg.reply
      text: "Número gerado é: #{{randomNumber}}"

tg.on 'message', (msg) ->
  console.log "#{msg.date} #{msg.from.username}: #{msg.text}"
  text = String(msg.text).trim()
  msg.reply = (options) ->
    tg.sendMessage _.defaults options,
      reply_to_message_id: @message_id
      chat_id: @chat.id
  cmd = String(text.match(/^\/([a-zA-Z0-9]*)(@gaussbot)?/i)?[1]).toLowerCase()
  return map[cmd](msg) if cmd && map[cmd]
  sessions[msg.chat.id](msg) if sessions[msg.chat.id]

do tg.start
