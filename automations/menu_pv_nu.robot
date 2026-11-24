# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Conheça Nubank leva ao destino https://nubank.com.br/nu."],"automationId":"menu_pv_nu","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para você, clicar em Conheça Nubank e validar o destino /nu.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_pv_nu","queueName":"rpa_queue_menu_pv_nu","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para você até Conheça Nubank.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Conheça Nubank pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para você
    Clicar link do grupo    /nu    Conheça Nubank
    Verificar destino    https://nubank.com.br/nu
