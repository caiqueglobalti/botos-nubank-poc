# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Nubank cancelando contas? leva ao destino https://nubank.com.br/nubank-cancelando-contas-entenda-quando-acontece."],"automationId":"menu_mais_nubank_cancelando_contas_entenda_quando_acontece","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Saiba Mais, clicar em Nubank cancelando contas? e validar o destino /nubank-cancelando-contas-entenda-quando-acontece.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_mais_nubank_cancelando_contas_entenda_quando_acontece","queueName":"rpa_queue_menu_mais_nubank_cancelando_contas_entenda_quando_acontece","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Saiba Mais até Nubank cancelando contas?.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Nubank cancelando contas? pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Saiba Mais
    Clicar link do grupo    /nubank-cancelando-contas-entenda-quando-acontece    Nubank cancelando contas?
    Verificar destino    https://nubank.com.br/nubank-cancelando-contas-entenda-quando-acontece
