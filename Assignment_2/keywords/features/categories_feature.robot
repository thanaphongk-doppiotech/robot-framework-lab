*** Keywords ***
Browse and click category
    [Arguments]     ${category_name}
    # debug
    left_menu_page.Click browse categories
    category_list_page.Scroll to item  ${category_name}
    category_list_page.Click item on content    ${category_name}