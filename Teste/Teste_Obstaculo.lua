-- Teste do Sensor Digital de Obstáculo 

-- Definindo os pinos
local ledPin = 4 -- Pino GPIO 4 para o led
local sensorPin = 5 -- Pino GPIO 5 para o sensor de obstaculo

-- Configurando os pinos
gpio.mode(sensorPin, gpio.INPUT) -- Configura o pino do sensor de obstaculo como entrada
gpio.mode(ledPin, gpio.OUTPUT)  -- Configura o pino do LED como saída

while true do -- Cria um loop infinito

    local sensor_valor = gpio.read(sensorPin) -- Ler o sensor e armazena em uma variavel

    if sensor_valor == 0 then -- Se o sensor detectar (LOW), então:
    
        gpio.write(ledPin, gpio.HIGH) -- Liga o led
        
    else -- Senão:
    
        gpio.write(ledPin, gpio.LOW) -- Desliga o led
        
    end

    -- Imprime o valor do sensor no terminal
    print("Valor do obstáculo", sensor_valor)

    tmr.delay(100000) -- Aguarda 1 s para a proxima leitura
    
end -- Fim do loop