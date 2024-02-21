-- Teste do sensor LDR

-- Definindo os pinos

local sensorPin = 0 -- Define o Pino ADC A0 para o sensor analogico
local ledPin = 4 -- Define o Pino GPIO 4 para o led

-- Configurando os pinos

gpio.mode(ledPin, gpio.OUTPUT) -- Define o led como saida

while true do -- Cria um loop infinito

    local valor_analogico = adc.read(ldrPin) -- Ler o sensor e armazena em uma variavel

    if valor_analogico >= 500 then -- Se o sensor for maior ou igual a 500, então:
    
        gpio.write(ledPin, gpio.HIGH) -- Liga o led
        
    else -- Senão:
    
        gpio.write(ledPin, gpio.LOW) -- Desliga o led
        
    
    print("Valor Analógico do LDR:", valor_analogico) -- Imprime o valor do sensor no terminal 

    tmr.delay(500000) -- Aguarda 0.5 segundos
    
end -- Fim do loop