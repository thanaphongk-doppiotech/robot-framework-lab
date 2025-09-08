*** Keywords ***
Open website
    SeleniumLibrary.Open browser    ${doppee_training_url}      ${test_browser}

Test Teardown
    SeleniumLibrary.Close browser

Wait visible and input
    [Arguments]     ${locator}  ${text}
    # wait element
    SeleniumLibrary.Wait Until Element Is Visible   ${locator}
    # input
    SeleniumLibrary.Input text      ${locator}  ${text}

Wait visible and click
    [Arguments]     ${locator}
    # wait element
    SeleniumLibrary.Wait Until Element Is Visible   ${locator}
    # click
    SeleniumLibrary.Click element      ${locator}

Wait page contain element then scroll
    [Arguments]     ${locator}
    SeleniumLibrary.Wait Until Page Contains Element   ${locator}
    SeleniumLibrary.Scroll Element Into View        ${locator}

Wait element and get text
    [Arguments]     ${locator}
    SeleniumLibrary.Wait Until Element Is Visible   ${locator}
    ${payment_result}    SeleniumLibrary.Get text   ${locator}
    RETURN      ${payment_result}


Safe input text
    [Arguments]     ${locator}  ${text}
    SeleniumLibrary.Wait Until Element Is Visible       ${locator}
    ${current_text}     SeleniumLibrary.Get text    ${locator}
    BuiltIn.log to console  ${current_text}
    
    IF  "${current_text}"=="${EMPTY}"
        common.Wait visible and input  ${locator}  ${text}
    ELSE
        BuiltIn.log to console  common >> text not empty
    END
