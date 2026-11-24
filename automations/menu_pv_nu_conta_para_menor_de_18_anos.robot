# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Conta para menores leva ao destino https://nubank.com.br/nu/conta-menores."],"automationId":"menu_pv_nu_conta_para_menor_de_18_anos","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para você, clicar em Conta para menores e validar o destino /nu/conta/para-menor-de-18-anos.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_pv_nu_conta_para_menor_de_18_anos","queueName":"rpa_queue_menu_pv_nu_conta_para_menor_de_18_anos","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para você até Conta para menores.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Conta para menores pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para você
    Clicar link do grupo    /nu/conta/para-menor-de-18-anos    Conta para menores
    Verificar destino    https://nubank.com.br/nu/conta-menores
