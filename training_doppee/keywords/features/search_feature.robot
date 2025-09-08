*** Keywords ***
Search and click product
    [Arguments]     ${product_text}
    #
    search_page.Search product  ${product_text}
    #
    search_page.Click search button
    #
    search_page.Scroll to product  ${product_text}
    #
    search_page.Click product  ${div_doppee_phone}