*** Keywords ***
Verify login successfully
    [Arguments]     ${username}     ${password}
    login_page.Input username       ${username}
    login_page.Input password       ${password}
    login_page.Submit login
    login_page.Verify login successfully
    login_page.Close result dialog