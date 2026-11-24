# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Caixinhas leva ao destino https://nubank.com.br/nu/caixinhas."],"automationId":"menu_pv_nu_caixinhas","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para você, clicar em Caixinhas e validar o destino /nu/caixinhas.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_pv_nu_caixinhas","queueName":"rpa_queue_menu_pv_nu_caixinhas","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para você até Caixinhas.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Caixinhas pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para você
    Clicar link do grupo    /nu/caixinhas    Caixinhas
    Verificar destino    https://nubank.com.br/nu/caixinhas
