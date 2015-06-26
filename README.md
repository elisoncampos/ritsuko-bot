# RitsukoBot - Bot Maker Star
O Bot para chats do telegram mais glorioso do Brasil, e porque não dizer, do mundo.

## Comandos
* /help - Mostra essa magnifica lista.
* /random - Gera um número aleatório. Patético, eu sei.

** Mais comandos em breve! Nós prometemos! **

## Contribuindo
Caso você deseja contribuir para com o projeto, seja implementando uma nova funcionalidade, corrigindo e/ou reportando algum erro, ou até mesmo se deseja sugerir (pedir) uma nova funcionalidade, por favor siga estas instruções básicas:

### Reportando erros, sugerindo implementações
Todos erros, ou sugestões, solicitações devem ser feitos através do nosso [tracker de erros](https://github.com/HeadacheMan/ritsuko-bot/issues) do github. Quando o fizer, siga as seguintes recomendações:

* Cheque se o erro já não foi reportado
* Chegue que o erro ainda não foi resolvido
* Seja claro e conciso na descrição do seu problema/sugestão
* Abra uma nova issue com um titulo descritivo e o label apropriado (erro, sugestão, etc)

### Mas eu quero programar!
Antes de começar, certifique-se de ter as depêndencias. São muitas, se liga na lista:

```
NodeJS
```

Bem, eu avisei. Agora instale tudo e continue lendo.

Se você deseja implementar código no nosso glorioso bot, fear not, você pode! Na real você pode até utilizá-lo como base para seu próprio bot, mas se você quer implementar algo para o RitsukoBot, o esquema é esse aqui:

* Crie um fork do projeto
* Use um branch para cada funcionalidade e/ou correção que for realizar
* **CODE AWAY!**
* Crie quantos commits você quiser, ninguém liga.
* Certifique-se de que tudo esteja funcionando (teste com um bot local, cara.)
* Crie um pull request que contenha somente **_UMA_** correção ou implementação. Se tiver mais de uma coisa no mesmo pull request, vai ser sumariamente ignorado.

Se eu gostar do seu código, da sua implementação e ela tiver funcionando. Vai pro RitsukoBot. É isso ai.

### Como usar o RitsukoBot de base pro meu próprio bot?
Assumindo que você já saiba como criar bots do telegram (se não sabe, [https://core.telegram.org/bots](clica aqui)), é bem fácil. Você faz um fork deste projeto, clona ele pra sua máquina ai programa :D

Brincadeira, vou dar a boa sim. Antes de tudo, você precisa espeficiar a chave da API do seu bot, isso no momento é feito de maneira super porca e nada bonita, no arquivo server.js, você vai encontrar essa linha:

```javascript
tg = new Telegram(SUA_CHAVE_AQUI);
```

** Se você prefere coffeescript, tem o server.coffee tb, mas não coloquei nenhum processo de auto compilação até agora. Tem que ver que eu tava com muita preguiça quando fiz isso né **

É só trocar o _SUA_CHAVE_AQUI_ por sua chave e se ligar como eu faço as coisas. Para este projeto eu utilizei o módulo npm [node-telegram-bot](https://github.com/orzFly/node-telegram-bot). Recomendo ver lá que você encontra mais projetos. Aliás, esse bot mesmo é só seguindo um exemplo que o cara deu. Patético, né?

Ai depois que vc tiver feito tudo o que quer, é só iniciar o servidor via terminal

```
node server.js
```
Então é isso ai.
