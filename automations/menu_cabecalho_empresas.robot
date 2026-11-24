# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O item Para seu negócio responde conforme o menu observado."],"automationId":"menu_cabecalho_empresas","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, testar o item Para seu negócio do cabeçalho sem enviar dados pessoais.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_cabecalho_empresas","queueName":"rpa_queue_menu_cabecalho_empresas","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Teste do item Para seu negócio do cabeçalho.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Validar Para seu negócio no cabeçalho
    Iniciar navegação desktop
    Click    css=header a[aria-label="Menu Para seu negócio"]
    Verificar destino    https://nubank.com.br/empresas
