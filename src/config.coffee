config =
  apiKey: YOUR_KEY_HERE
  commands:
    help: {}
    roll:
      arguments: /(\dd\d*$)|(\dd\d*[+|\-|\/|\*]\d*)/gi # 1d10+2

module.exports = config
