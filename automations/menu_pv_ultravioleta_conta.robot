# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Conta Nubank Ultravioleta leva ao destino https://nubank.com.br/ultravioleta/conta."],"automationId":"menu_pv_ultravioleta_conta","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para você, clicar em Conta Nubank Ultravioleta e validar o destino /ultravioleta/conta.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_pv_ultravioleta_conta","queueName":"rpa_queue_menu_pv_ultravioleta_conta","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para você até Conta Nubank Ultravioleta.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Conta Nubank Ultravioleta pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para você
    Clicar link do grupo    /ultravioleta/conta    Conta Nubank Ultravioleta
    Verificar destino    https://nubank.com.br/ultravioleta/conta
