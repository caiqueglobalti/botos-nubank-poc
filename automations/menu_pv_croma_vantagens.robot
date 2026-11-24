# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Vantagens Nubank Croma leva ao destino https://nubank.com.br/croma/vantagens."],"automationId":"menu_pv_croma_vantagens","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para você, clicar em Vantagens Nubank Croma e validar o destino /croma/vantagens.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_pv_croma_vantagens","queueName":"rpa_queue_menu_pv_croma_vantagens","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para você até Vantagens Nubank Croma.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Vantagens Nubank Croma pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para você
    Clicar link do grupo    /croma/vantagens    Vantagens Nubank Croma
    Verificar destino    https://nubank.com.br/croma/vantagens
