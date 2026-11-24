# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Perguntas Frequentes leva ao destino https://nubank.com.br/perguntas."],"automationId":"menu_mais_perguntas","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Saiba Mais, clicar em Perguntas Frequentes e validar o destino /perguntas.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_mais_perguntas","queueName":"rpa_queue_menu_mais_perguntas","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Saiba Mais até Perguntas Frequentes.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Perguntas Frequentes pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Saiba Mais
    Clicar link do grupo    /perguntas    Perguntas Frequentes
    Verificar destino    https://nubank.com.br/perguntas
