# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Conheça Nubank Croma leva ao destino https://nubank.com.br/croma."],"automationId":"menu_pv_croma","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para você, clicar em Conheça Nubank Croma e validar o destino /croma.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_pv_croma","queueName":"rpa_queue_menu_pv_croma","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para você até Conheça Nubank Croma.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Conheça Nubank Croma pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para você
    Clicar link do grupo    /croma    Conheça Nubank Croma
    Verificar destino    https://nubank.com.br/croma
