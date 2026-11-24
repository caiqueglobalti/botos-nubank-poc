# BOTOS_SPEC {"allowedDomains":["nubank.com.br"],"assertions":["O link Conheça as soluções de segurança leva ao destino https://nubank.com.br/ajuda-e-seguranca."],"automationId":"menu_seg_ajuda_e_seguranca","evidencePolicy":{"redact":true},"inputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"mode":"programmatic","objective":"Da home Nubank, abrir Segurança, clicar em Conheça as soluções de segurança e validar o destino /ajuda-e-seguranca.","outputSchema":{"additionalProperties":false,"properties":{},"type":"object"},"qaFixtureSet":"menu_seg_ajuda_e_seguranca","queueName":"rpa_queue_menu_seg_ajuda_e_seguranca","retry":{"maxAttempts":1},"runtimeProfile":"robot-browser-playwright","secretRefs":[],"sideEffects":[],"specVersion":"2.0","status":"draft"}
*** Settings ***
Documentation    Navegação da home pelo menu Segurança até Conheça as soluções de segurança.
Resource    ../resources/menu_navigation.resource
Task Teardown    Close Browser

*** Tasks ***
Abrir Conheça as soluções de segurança pelo menu
    Iniciar navegação desktop
    Abrir grupo do menu    Segurança
    Clicar link do grupo    /ajuda-e-seguranca    Conheça as soluções de segurança
    Verificar destino    https://nubank.com.br/ajuda-e-seguranca
