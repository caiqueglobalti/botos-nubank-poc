# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Saiba mais sobre o Nubank leva ao destino https://nubank.com.br/sobre-o-nu."],"automationId":"menu_mais_sobre_o_nu","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Saiba Mais, clicar em Saiba mais sobre o Nubank e validar o destino /sobre-o-nu.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_mais_sobre_o_nu","queueName":"rpa_queue_menu_mais_sobre_o_nu","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Saiba Mais até Saiba mais sobre o Nubank.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Saiba mais sobre o Nubank pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Saiba Mais
    Clicar link do grupo    /sobre-o-nu    Saiba mais sobre o Nubank
    Verificar destino    https://nubank.com.br/sobre-o-nu
