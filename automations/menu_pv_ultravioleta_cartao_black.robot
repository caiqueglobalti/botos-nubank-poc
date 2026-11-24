# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Cartão Black Ultravioleta leva ao destino https://nubank.com.br/ultravioleta/cartao-black."],"automationId":"menu_pv_ultravioleta_cartao_black","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para você, clicar em Cartão Black Ultravioleta e validar o destino /ultravioleta/cartao-black.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_pv_ultravioleta_cartao_black","queueName":"rpa_queue_menu_pv_ultravioleta_cartao_black","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para você até Cartão Black Ultravioleta.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Cartão Black Ultravioleta pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para você
    Clicar link do grupo    /ultravioleta/cartao-black    Cartão Black Ultravioleta
    Verificar destino    https://nubank.com.br/ultravioleta/cartao-black
