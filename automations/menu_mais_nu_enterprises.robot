# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Nu Enterprises leva ao destino https://nubank.com.br/nu-enterprises."],"automationId":"menu_mais_nu_enterprises","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Saiba Mais, clicar em Nu Enterprises e validar o destino /nu-enterprises.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_mais_nu_enterprises","queueName":"rpa_queue_menu_mais_nu_enterprises","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Saiba Mais até Nu Enterprises.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Nu Enterprises pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Saiba Mais
    Clicar link do grupo    /nu-enterprises    Nu Enterprises
    Verificar destino    https://nubank.com.br/nu-enterprises
