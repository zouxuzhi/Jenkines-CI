*** Keywords ***
codeAssert
    [Arguments]    ${code}    ${input_code}
    [Documentation]    根据code来进行断言
    ...
    ...    zxz
    ${assert}    Run Keyword If    '${code}'=='${input_code}'    Set Variable    true
    Run Keyword If    '${code}'!='${input_code}'    Set Variable    false
    Should Be Equal As Strings    ${assert}    true

messageAssert
    [Arguments]    ${message}
    [Documentation]    根据message来进行断言
    ${assert}    Run Keyword If    '${message}'=='success'    Set Variable    true
    Run Keyword If    '${message}'!='success'    Set Variable    false
    Should Be Equal As Strings    ${assert}    true
    [Return]    ${assert}
