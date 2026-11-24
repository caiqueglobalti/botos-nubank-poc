# BOTOS_SPEC {"allowedDomains":["nu.com","nubank.com.br"],"assertions":["O link Sala de Imprensa leva ao destino https://nu.com/pt/sala-de-imprensa."],"automationId":"menu_mais_sala_de_imprensa","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Saiba Mais, clicar em Sala de Imprensa e validar o destino https://nu.com/pt/sala-de-imprensa.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_mais_sala_de_imprensa","queueName":"rpa_queue_menu_mais_sala_de_imprensa","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Saiba Mais até Sala de Imprensa.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Sala de Imprensa pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Saiba Mais
    Clicar link do grupo    https://nu.com/pt/sala-de-imprensa    Sala de Imprensa
    Verificar destino    https://nu.com/pt/sala-de-imprensa    ${TRUE}
