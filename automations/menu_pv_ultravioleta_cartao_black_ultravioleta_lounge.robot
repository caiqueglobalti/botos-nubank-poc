# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Ultravioleta Lounge leva ao destino https://nubank.com.br/ultravioleta/cartao-black/ultravioleta-lounge."],"automationId":"menu_pv_ultravioleta_cartao_black_ultravioleta_lounge","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para você, clicar em Ultravioleta Lounge e validar o destino /ultravioleta/cartao-black/ultravioleta-lounge.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_pv_ultravioleta_cartao_black_ultravioleta_lounge","queueName":"rpa_queue_menu_pv_ultravioleta_cartao_black_ultravioleta_lounge","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para você até Ultravioleta Lounge.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Ultravioleta Lounge pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para você
    Clicar link do grupo    /ultravioleta/cartao-black/ultravioleta-lounge    Ultravioleta Lounge
    Verificar destino    https://nubank.com.br/ultravioleta/cartao-black/ultravioleta-lounge
