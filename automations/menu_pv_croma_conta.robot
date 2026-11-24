# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Conta Nubank Croma leva ao destino https://nubank.com.br/croma/conta."],"automationId":"menu_pv_croma_conta","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para você, clicar em Conta Nubank Croma e validar o destino /croma/conta.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_pv_croma_conta","queueName":"rpa_queue_menu_pv_croma_conta","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para você até Conta Nubank Croma.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Conta Nubank Croma pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para você
    Clicar link do grupo    /croma/conta    Conta Nubank Croma
    Verificar destino    https://nubank.com.br/croma/conta
