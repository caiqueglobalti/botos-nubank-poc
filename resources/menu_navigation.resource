*** Settings ***
Library    Browser
Library    String

*** Keywords ***
Iniciar navegação desktop
    New Browser    chromium    headless=${FALSE}
    New Context    viewport={'width': 1440, 'height': 900}
    New Page    https://nubank.com.br/home
    Wait For Elements State    css=header[aria-label="menu principal"]    visible    timeout=30s

Abrir grupo do menu
    [Arguments]    ${grupo}
    Set Suite Variable    ${MENU_GRUPO_ATUAL}    ${grupo}
    Wait Until Keyword Succeeds    30s    1s    Garantir grupo aberto

Garantir grupo aberto
    ${abertos}=    Get Element Count    css=header button[aria-label="Menu ${MENU_GRUPO_ATUAL}"][aria-expanded="true"]
    IF    ${abertos} == 0
        Click    css=header button[aria-label="Menu ${MENU_GRUPO_ATUAL}"][aria-expanded="false"]
    END
    Wait For Elements State    css=header button[aria-label="Menu ${MENU_GRUPO_ATUAL}"][aria-expanded="true"]    visible    timeout=5s

Clicar link do grupo
    [Arguments]    ${href}    ${texto}
    ${link}=    Set Variable    css=header a[href="${href}"]:has-text("${texto}")
    Wait Until Keyword Succeeds    30s    1s    Clicar link estável    ${link}

Clicar link estável
    [Arguments]    ${link}
    ${visivel}=    Run Keyword And Return Status    Wait For Elements State    ${link}    visible    timeout=3s
    IF    not ${visivel}
        Garantir grupo aberto
        Wait For Elements State    ${link}    visible    timeout=5s
    END
    Click    ${link}

Verificar destino
    [Arguments]    ${url_esperada}    ${nova_aba}=${FALSE}
    IF    ${nova_aba}
        Switch Page    NEW
    END
    Wait Until Keyword Succeeds    25s    1s    URL deve conter    ${url_esperada}
    Wait For Elements State    css=body    visible    timeout=20s

URL deve conter
    [Arguments]    ${url_esperada}
    ${url_atual}=    Get Url
    Should Contain    ${url_atual}    ${url_esperada}

URL deve ser
    [Arguments]    ${url_esperada}
    ${url_atual}=    Get Url
    Should Be Equal As Strings    ${url_atual}    ${url_esperada}
