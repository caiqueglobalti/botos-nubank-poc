# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Conta Global leva ao destino https://nubank.com.br/ultravioleta/nu-viagens/conta-global."],"automationId":"menu_pv_ultravioleta_nu_viagens_conta_global","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para você, clicar em Conta Global e validar o destino /ultravioleta/nu-viagens/conta-global.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_pv_ultravioleta_nu_viagens_conta_global","queueName":"rpa_queue_menu_pv_ultravioleta_nu_viagens_conta_global","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para você até Conta Global.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Conta Global pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para você
    Clicar link do grupo    /ultravioleta/nu-viagens/conta-global    Conta Global
    Verificar destino    https://nubank.com.br/ultravioleta/nu-viagens/conta-global
