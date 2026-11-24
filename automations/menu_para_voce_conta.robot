# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O clique em Conta do Nubank abre /nu/conta e a página apresenta body visível."],"automationId":"menu_para_voce_conta","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Para você, navegar por Conta do Nubank e validar a página de destino.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_para_voce_conta","queueName":"rpa_queue_menu_para_voce_conta","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Para você até Conta do Nubank.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Conta do Nubank pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Para você
    Clicar link do grupo    /nu/conta    Conta do Nubank
    Verificar destino    https://nubank.com.br/nu/conta
