*** Keywords ***
Fill all data and click pay
    [Arguments]     ${name}     ${surname}      ${address}      ${phone}    ${email}
    delivery_info_page.Input name  ${name}
    delivery_info_page.Input surname  ${surname}
    delivery_info_page.Input address  ${address}
    delivery_info_page.Input phone number  ${phone}
    delivery_info_page.Input email  ${email}

    delivery_info_page.Click pay button