# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Investimentos leva ao destino https://nubank.com.br/nu/investimentos."],"automationId":"menu_pv_nu_investimentos","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para você, clicar em Investimentos e validar o destino /nu/investimentos.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_pv_nu_investimentos","queueName":"rpa_queue_menu_pv_nu_investimentos","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para você até Investimentos.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Investimentos pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para você
    Clicar link do grupo    /nu/investimentos    Investimentos
    Verificar destino    https://nubank.com.br/nu/investimentos
