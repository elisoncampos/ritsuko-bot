core = require '../core.js'

text = """

O TEXTO DA SUA AJUDA VAI AQUI CARA, TA LIGADO? YAY. Segue os comandos:

/help   - Exibe esta magnifica lista
/roll   - Rola um dado, você precisa passar a sintaxe da rolagem, tipo: /roll 1d20

"""

helpCommand =

  proccess: (tg, msg) ->
    tg.sendMessage {
      chat_id: msg.chat.id
      text: text
    }

module.exports = helpCommand