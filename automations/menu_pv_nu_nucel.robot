# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link NuCel leva ao destino https://nubank.com.br/nu/nucel."],"automationId":"menu_pv_nu_nucel","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para você, clicar em NuCel e validar o destino /nu/nucel.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_pv_nu_nucel","queueName":"rpa_queue_menu_pv_nu_nucel","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para você até NuCel.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir NuCel pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para você
    Clicar link do grupo    /nu/nucel    NuCel
    Verificar destino    https://nubank.com.br/nu/nucel
