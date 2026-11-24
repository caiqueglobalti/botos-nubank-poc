# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Central de Proteção leva ao destino https://nubank.com.br/ajuda-e-seguranca/central-de-protecao."],"automationId":"menu_seg_ajuda_e_seguranca_central_de_protecao","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Segurança, clicar em Central de Proteção e validar o destino /ajuda-e-seguranca/central-de-protecao.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_seg_ajuda_e_seguranca_central_de_protecao","queueName":"rpa_queue_menu_seg_ajuda_e_seguranca_central_de_protecao","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Segurança até Central de Proteção.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Central de Proteção pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Segurança
    Clicar link do grupo    /ajuda-e-seguranca/central-de-protecao    Central de Proteção
    Verificar destino    https://nubank.com.br/ajuda-e-seguranca/central-de-protecao
