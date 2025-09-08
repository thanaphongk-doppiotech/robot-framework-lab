*** Settings ***
Library		SeleniumLibrary
Library		String
Library     DebugLibrary

# Pages
Resource	${CURDIR}/common.robot
Resource	${CURDIR}/pages/search_page.robot
Resource	${CURDIR}/pages/product_info_page.robot
Resource	${CURDIR}/pages/login_page.robot
Resource	${CURDIR}/pages/header_page.robot
Resource    ${CURDIR}/pages/delivery_info_page.robot
Resource    ${CURDIR}./pages/payment_method_page.robot
Resource    ${CURDIR}./pages/payment_info_page.robot
Resource    ${CURDIR}./pages/payment_result_page.robot
Resource    ${CURDIR}/./pages/my_order_page.robot


# Feature
Resource	${CURDIR}/features/search_feature.robot
Resource	${CURDIR}/features/product_info_feature.robot
Resource	${CURDIR}/features/login_feature.robot
Resource	${CURDIR}./features/delivery_feature.robot
Resource	${CURDIR}./features/payment_info_feature.robot
Resource	${CURDIR}/./features/my_order_feature.robot


# Locator
Variables	${CURDIR}/../resources/locators/search_locator.yaml
Variables	${CURDIR}/../resources/locators/product_info_locator.yaml
Variables	${CURDIR}/../resources/locators/login_locator.yaml
Variables   ${CURDIR}/../resources/locators/delivery_info_locator.yaml
Variables   ${CURDIR}/../resources/locators/payment_method_locator.yaml
Variables   ${CURDIR}/../resources/locators/payment_info_locator.yaml
Variables   ${CURDIR}/../resources/locators/my_order_locator.yaml


# Setting
Variables	${CURDIR}/../resources/settings/setting.yaml
Variables	${CURDIR}/../resources/settings/product_info_setting.yaml
Variables	${CURDIR}/../resources/settings/login_setting.yaml
Variables   ${CURDIR}/../resources/settings/payment_info_setting.yaml
Variables   ${CURDIR}/../resources/settings/my_order_setting.yaml

# Test data
Variables	${CURDIR}/../resources/testdata/testdata.yaml

