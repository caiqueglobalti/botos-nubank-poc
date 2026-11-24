# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Cartão do Nubank leva ao destino https://nubank.com.br/nu/cartao."],"automationId":"menu_pv_nu_cartao","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para você, clicar em Cartão do Nubank e validar o destino /nu/cartao.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_pv_nu_cartao","queueName":"rpa_queue_menu_pv_nu_cartao","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para você até Cartão do Nubank.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Cartão do Nubank pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para você
    Clicar link do grupo    /nu/cartao    Cartão do Nubank
    Verificar destino    https://nubank.com.br/nu/cartao
