# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link NuPay leva ao destino https://nubank.com.br/nu/nupay."],"automationId":"menu_pv_nu_nupay","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para você, clicar em NuPay e validar o destino /nu/nupay.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_pv_nu_nupay","queueName":"rpa_queue_menu_pv_nu_nupay","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para você até NuPay.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir NuPay pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para você
    Clicar link do grupo    /nu/nupay    NuPay
    Verificar destino    https://nubank.com.br/nu/nupay
