# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Perguntas Frequentes leva ao destino https://nubank.com.br/croma/perguntas."],"automationId":"menu_pv_croma_perguntas","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para você, clicar em Perguntas Frequentes e validar o destino /croma/perguntas.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_pv_croma_perguntas","queueName":"rpa_queue_menu_pv_croma_perguntas","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para você até Perguntas Frequentes.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Perguntas Frequentes pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para você
    Clicar link do grupo    /croma/perguntas    Perguntas Frequentes
    Verificar destino    https://nubank.com.br/croma/perguntas
