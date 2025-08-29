*** Keywords ***

Click item on content
    [Arguments]     ${category_name}

    ${category_item}    String.Replace string       string=${product_list.loc_item_category_replacable}       search_for=${replace_text}     replace_with=${category_name}    
    common.Wait visible and click  ${category_item}

Scroll to item
    [Arguments]     ${category_name}

    ${category_item}    String.Replace string       string=${product_list.loc_item_category_replacable}       search_for=${replace_text}     replace_with=${category_name}
    common.Wait page contain element then scroll  ${category_item}