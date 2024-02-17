-- Programa de deixar o Led Ligado


-- Define o pino GPIO4 para o LED e chama de pinLed
local pinLED = 4

-- Define o pino do led como saída
gpio.mode(pinLED, gpio.OUTPUT)

gpio.write(pinLED, gpio.HIGH - gpio.read(pinLED)) -- Liga o Led
