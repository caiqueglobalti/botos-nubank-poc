# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Seguros leva ao destino https://nubank.com.br/nu/seguros."],"automationId":"menu_pv_nu_seguros","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para você, clicar em Seguros e validar o destino /nu/seguros.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_pv_nu_seguros","queueName":"rpa_queue_menu_pv_nu_seguros","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para você até Seguros.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Seguros pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para você
    Clicar link do grupo    /nu/seguros    Seguros
    Verificar destino    https://nubank.com.br/nu/seguros
