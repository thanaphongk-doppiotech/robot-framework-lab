*** Keywords ***
Open website
    SeleniumLibrary.Open Browser    url=${testing_url}     browser=${test_browser}

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

Wait element and get text
    [Arguments]     ${locator}
    SeleniumLibrary.Wait Until Element Is Visible   ${locator}
    ${payment_result}    SeleniumLibrary.Get text   ${locator}
    RETURN      ${payment_result}

Wait page contain element then scroll
    [Arguments]     ${locator}
    SeleniumLibrary.Wait Until Page Contains Element   ${locator}
    SeleniumLibrary.Scroll Element Into View        ${locator}

Get Text
    [Arguments]     ${locator}

    ${text}     SeleniumLibrary.Get Text    ${locator}
    RETURN      ${text}
    