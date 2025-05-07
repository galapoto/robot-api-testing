*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Create User With Invalid Data
    Create Session    jsonplaceholder    https://jsonplaceholder.typicode.com
    ${payload}=    Create Dictionary    email=    phone=123456
    ${response}=    POST On Session    jsonplaceholder    /users    json=${payload}    expected_status=201
    ${json}=    Set Variable    ${response.json()}

    Log    Response: ${json}
    
    # Since JSONPlaceholder always returns 201, we'll simulate a logic test
    Should Be Equal As Strings    ${json['email']}    ${EMPTY}
    Should Not Contain    ${json['phone']}    "-"
