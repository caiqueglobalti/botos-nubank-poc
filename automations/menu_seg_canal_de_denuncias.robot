# BOTOS_SPEC {"allowedDomains":["denunciargolpes.nubank.com.br","nubank.com.br"],"assertions":["O link Canal de Denúncias leva ao destino https://denunciargolpes.nubank.com.br/pt/nubankdenuncias."],"automationId":"menu_seg_canal_de_denuncias","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Segurança, clicar em Canal de Denúncias e validar o destino https://denunciargolpes.nubank.com.br/pt/nubankdenuncias.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_seg_canal_de_denuncias","queueName":"rpa_queue_menu_seg_canal_de_denuncias","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Segurança até Canal de Denúncias.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Canal de Denúncias pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Segurança
    Clicar link do grupo    https://denunciargolpes.nubank.com.br/pt/nubankdenuncias    Canal de Denúncias
    Verificar destino    https://denunciargolpes.nubank.com.br/pt/nubankdenuncias    ${TRUE}
