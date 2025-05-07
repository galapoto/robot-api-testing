*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Create New User
    Create Session    jsonplaceholder    https://jsonplaceholder.typicode.com
    ${payload}=    Create Dictionary    name=John Doe    email=johndoe@example.com    phone=123-456-7890
    ${response}=    POST On Session    jsonplaceholder    /users    json=${payload}    expected_status=201
    ${json}=    Set Variable    ${response.json()}

    Log    Response: ${json}
    Should Be Equal As Strings    ${json['name']}     John Doe
    Should Be Equal As Strings    ${json['email']}    johndoe@example.com
    Should Be Equal As Strings    ${json['phone']}    123-456-7890
