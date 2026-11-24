# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Prevenção a Fraude leva ao destino https://nubank.com.br/ajuda-e-seguranca/selo-de-prevencao-a-fraude."],"automationId":"menu_seg_ajuda_e_seguranca_selo_de_prevencao_a_fraude","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Segurança, clicar em Prevenção a Fraude e validar o destino /ajuda-e-seguranca/selo-de-prevencao-a-fraude.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_seg_ajuda_e_seguranca_selo_de_prevencao_a_fraude","queueName":"rpa_queue_menu_seg_ajuda_e_seguranca_selo_de_prevencao_a_fraude","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Segurança até Prevenção a Fraude.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Prevenção a Fraude pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Segurança
    Clicar link do grupo    /ajuda-e-seguranca/selo-de-prevencao-a-fraude    Prevenção a Fraude
    Verificar destino    https://nubank.com.br/ajuda-e-seguranca/selo-de-prevencao-a-fraude
