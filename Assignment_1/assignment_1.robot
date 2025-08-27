*** Settings ***
Library		SeleniumLibrary
Library     DebugLibrary
Library     Collections

*** Variables ***
${test_url}         http://testphp.vulnweb.com/login.php
${test_username}    test
${test_password}    test
@{expect_category}  Posters     Paintings   Stickers    Graffity

#locator
${loc_ip_uname}     name=uname
${loc_ip_pass}      name=pass
${loc_btn_login}    //input[@value='login']
${loc_menu_category}    //div[@id="sectionLinks"]/descendant::a[@href="categories.php"]
${loc_cate_headers}      //div[@id="content"]/descendant::a/child::h3

*** Keywords ***
Open web
    SeleniumLibrary.Open Browser    url=${test_url}     browser=chrome

Login
    SeleniumLibrary.Wait Until Element Is Visible   ${loc_ip_uname}
    SeleniumLibrary.Input Text      ${loc_ip_uname}     ${test_username}
    SeleniumLibrary.Input Text      ${loc_ip_pass}      ${test_password}
    SeleniumLibrary.Click Element   ${loc_btn_login}

Click Browser Category
    SeleniumLibrary.Wait Until Element Is Visible   ${loc_menu_category}
    SeleniumLibrary.Click Element   ${loc_menu_category}

Get text to list
    SeleniumLibrary.Wait Until Element Is Visible   ${loc_cate_headers}
    @{headers}  SeleniumLibrary.Get WebElements   ${loc_cate_headers}
    # debug
    
    ${list_header} =    BuiltIn.Create List

    FOR     ${header}   IN      @{headers}
    # debug
        ${text}     Get Text    ${header}
        BuiltIn.Log to console      ${text}
        Collections.Append To List    ${list_header}    ${text}
    END

    # debug

    BuiltIn.Log to console  ${list_header}
    
    RETURN  ${list_header}

Verify categories list
    [Arguments]     ${list1}
    Collections.List Should Contain Sub List    list1=${list1}      list2=${expect_category}    ignore_case=true

*** Test Cases ***
TC001

# TC001
# 1. ไปที http://testphp.vulnweb.com/login.php
# 2. Login ด้วย username test , password test
# 3. กด Browse categories ซ้ายมือ
# 4. เช็คว่า ในหน้า categories มี cateories ครบตามคาดหวัง คือ
# Posters,Painings,Stickers,Grafity

    Open web

    Login

    Click Browser Category

    ${list_header}    Get text to list

    Verify categories list      ${list_header}

    Sleep   3s