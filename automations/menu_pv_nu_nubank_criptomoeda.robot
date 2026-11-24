# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Nubank Cripto leva ao destino https://nubank.com.br/nu/nubank-criptomoeda."],"automationId":"menu_pv_nu_nubank_criptomoeda","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para você, clicar em Nubank Cripto e validar o destino /nu/nubank-criptomoeda.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_pv_nu_nubank_criptomoeda","queueName":"rpa_queue_menu_pv_nu_nubank_criptomoeda","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para você até Nubank Cripto.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Nubank Cripto pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para você
    Clicar link do grupo    /nu/nubank-criptomoeda    Nubank Cripto
    Verificar destino    https://nubank.com.br/nu/nubank-criptomoeda
