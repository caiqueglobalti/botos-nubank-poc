# BOTOS_SPEC {"allowedDomains":["nubank.com.br","app.nubank.com.br"],"assertions":["O item Login Empresas responde conforme o menu observado."],"automationId":"menu_cabecalho_login_empresas","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, testar o item Login Empresas do cabeçalho sem enviar dados pessoais.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_cabecalho_login_empresas","queueName":"rpa_queue_menu_cabecalho_login_empresas","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Teste do item Login Empresas do cabeçalho.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Validar Login Empresas no cabeçalho
    Iniciar navegação desktop
    Click    css=header a:has-text("Login Empresas")
    Verificar destino    https://app.nubank.com.br/    ${TRUE}
