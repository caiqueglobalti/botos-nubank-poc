# BOTOS_SPEC {"allowedDomains":["app.nubank.com.br","nubank.com.br"],"assertions":["O link Me Roubaram leva ao destino https://app.nubank.com.br/roubo."],"automationId":"menu_seg_me_roubaram","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Segurança, clicar em Me Roubaram e validar o destino https://app.nubank.com.br/roubo.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_seg_me_roubaram","queueName":"rpa_queue_menu_seg_me_roubaram","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Segurança até Me Roubaram.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Me Roubaram pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Segurança
    Clicar link do grupo    https://app.nubank.com.br/roubo    Me Roubaram
    Verificar destino    https://app.nubank.com.br/roubo    ${TRUE}
