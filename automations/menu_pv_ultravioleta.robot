# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Conheça Nubank Ultravioleta leva ao destino https://nubank.com.br/ultravioleta."],"automationId":"menu_pv_ultravioleta","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para você, clicar em Conheça Nubank Ultravioleta e validar o destino /ultravioleta.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_pv_ultravioleta","queueName":"rpa_queue_menu_pv_ultravioleta","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para você até Conheça Nubank Ultravioleta.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Conheça Nubank Ultravioleta pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para você
    Clicar link do grupo    /ultravioleta    Conheça Nubank Ultravioleta
    Verificar destino    https://nubank.com.br/ultravioleta
