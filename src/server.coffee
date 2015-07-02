_ = require 'lodash'
config = require './lib/config.js'
Telegram = require 'telegram-bot'
core = require './lib/core.js'

tg = new Telegram(config.apiKey)

tg.on 'message', (msg) ->
  cmd = core.getCommand msg
  # Executa um require do comando e manda
  # ele processar passando o tg e a mensagem
  command = require "./lib/commands/#{cmd}.js"
  command.proccess tg, msg

do tg.start
