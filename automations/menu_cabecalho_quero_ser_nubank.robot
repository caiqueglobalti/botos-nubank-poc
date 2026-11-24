# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O item Quero ser Nubank responde conforme o menu observado."],"automationId":"menu_cabecalho_quero_ser_nubank","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, testar o item Quero ser Nubank do cabeçalho sem enviar dados pessoais.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_cabecalho_quero_ser_nubank","queueName":"rpa_queue_menu_cabecalho_quero_ser_nubank","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Teste do item Quero ser Nubank do cabeçalho.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Validar Quero ser Nubank no cabeçalho
    Iniciar navegação desktop
    Click    css=header button[aria-label="Quero ser Nubank"]
    Wait For Elements State    css=[role="alertdialog"]    visible    timeout=10s
    Get Text    css=[role="alertdialog"]    contains    Complete os campos
