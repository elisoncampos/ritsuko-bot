_ = require 'lodash'
Telegram = require 'telegram-bot'

tg = new Telegram(SUA_CHAVE_AQUI)
sessions = {}

textToUser = (chat_id, message) ->
  tg.sendMessage
    text: message
    chat_id: chat_id

map =

  help: (msg) ->
    text = """
          O grandioso bot maker star possui os seguintes comandos:

          /help - Mostra essa magnifica lista
          /random - Gera um número aleatório. Patético, eu sei.
          """
    textToUser msg.chat.id, text

  random: (msg) ->
    randomNumber = _.shuffle([0..9]).slice(0, 4).join("")
    console.log randomNumber
    msg.reply
      text: "Número gerado é: #{randomNumber}"

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