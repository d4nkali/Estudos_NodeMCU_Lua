-- Programa Piscar Led no NodeMCU Lua


-- Definindo os pinos e variaveis

    -- Define o pino GPIO4 para o LED e chama de pinLed
    local pinLED = 4
    
    -- Define o tempo de repetição em milissegundos
    local tempoBlink = 2000 -- 2 s


-- Define o pino do led como saída
gpio.mode(pinLED, gpio.OUTPUT)


local function alternarLED() -- Cria uma função para alternar o estado do LED

    gpio.write(pinLED, gpio.HIGH - gpio.read(pinLED)) -- Liga o Led
    
end

-- Define o Temporizador para chamar a função alternarLED
tmr.create():alarm(2000, tmr.ALARM_AUTO, alternarLED) -- OBS: Tempo em ms. Ex: 1000 (1 s)
