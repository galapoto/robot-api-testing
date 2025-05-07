*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Get JSONPlaceholder User
    Create Session    jsonplaceholder    https://jsonplaceholder.typicode.com
    ${response}=    GET On Session    jsonplaceholder    /users/1    expected_status=200
    ${json}=    Set Variable    ${response.json()}
    Log    User Data: ${json}
    Should Be Equal As Strings    ${json['id']}    1
    Should Be Equal As Strings    ${json['email']}    Sincere@april.biz
