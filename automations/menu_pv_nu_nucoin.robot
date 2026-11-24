# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link NuCoin leva ao destino https://nubank.com.br/nu/nucoin."],"automationId":"menu_pv_nu_nucoin","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para você, clicar em NuCoin e validar o destino /nu/nucoin.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_pv_nu_nucoin","queueName":"rpa_queue_menu_pv_nu_nucoin","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para você até NuCoin.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir NuCoin pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para você
    Clicar link do grupo    /nu/nucoin    NuCoin
    Verificar destino    https://nubank.com.br/nu/nucoin
