# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Atendimento Nubank Croma leva ao destino https://nubank.com.br/croma/atendimento."],"automationId":"menu_pv_croma_atendimento","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para você, clicar em Atendimento Nubank Croma e validar o destino /croma/atendimento.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_pv_croma_atendimento","queueName":"rpa_queue_menu_pv_croma_atendimento","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para você até Atendimento Nubank Croma.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Atendimento Nubank Croma pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para você
    Clicar link do grupo    /croma/atendimento    Atendimento Nubank Croma
    Verificar destino    https://nubank.com.br/croma/atendimento
