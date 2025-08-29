# ทํา Script Robot framework แบบงา่ ยๆ เพอื่ Automate test case ตอ่ ไปนี้
# โดยสงิ่ สํา คญั ทอี่ ยากให้Focus คอื
# 1. Script ทรี่ ันใชง้านไดจ้รงิ
# 2. วธิวีา่ โครงสรา้งของโปรเจค เชน่ โครงสรา้ง folder , ตวัแปร , คยีเ์วริด์ ตา่ งๆ
# 3. Locator ตา่ งๆ เชน่ xpath , id ,name
# 4. การ sleep และwait ตา่ งๆ

# TC001
# 1. ไปที่ http://testphp.vulnweb.com/login.php
# 2. Login ดว้ย username test , password test
# 3. กด Browse categories ซา้ยมอื
# 4. กดไปตอ่ ที่ Poster
# 5. เชค็ วา่ บนหนา้นี้มีรปู ทชี่ อื่ วา่ Trees อยู่ และรปู นัน้ ถกู วาดโดย Blad3

# 6. กดเขา้ไปทคี่ ํา วา่ Treesเหนอื รปู ภาพ

# 7. กดป่มุ add this picture to cart
# 8. ระบบจะพาไปหนา้ตะกรา้สนิคา้ เชค็ วา่ ยอดรวมของในตะกรา้ เทา่ กบั ราคาของรปู Trees ทเี่ ราเพงิ่
# เพมิ่ ลงไป

*** Settings ***
Resource        ../keywords/import.robot
Test Setup      common.Open website
Test Teardown   common.Test Teardown

*** Test Cases ***
TC_001
    login_feature.Login as test user  ${test_user}  ${test_pwd}

    categories_feature.Browse and click category   ${lbl_posters}

    product_list_page.Scroll to artist of picture  ${lbl_trees}
    product_list_feature.Verify artist of picture  ${lbl_blad3}      ${lbl_trees}
    category_list_page.Click item on content  ${lbl_trees}


    product_detail_page.Scroll to add to cart button
    ${item_price}    product_detail_page.Get product price  ${loc_item_price}
    product_detail_page.Click add to cart button


    cart_page.Scroll to total price
    ${total_price}  cart_page.Get total price  ${loc_total_price}


    BuiltIn.Should Be Equal As Strings      ${item_price}    ${total_price}

    debug
    BuiltIn.Sleep   3s