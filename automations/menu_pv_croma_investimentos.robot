# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Investimentos leva ao destino https://nubank.com.br/croma/investimentos."],"automationId":"menu_pv_croma_investimentos","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para você, clicar em Investimentos e validar o destino /croma/investimentos.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_pv_croma_investimentos","queueName":"rpa_queue_menu_pv_croma_investimentos","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para você até Investimentos.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Investimentos pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para você
    Clicar link do grupo    /croma/investimentos    Investimentos
    Verificar destino    https://nubank.com.br/croma/investimentos
