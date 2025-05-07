*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Delete Existing User
    Create Session    jsonplaceholder    https://jsonplaceholder.typicode.com
    ${response}=    DELETE On Session    jsonplaceholder    /users/1    expected_status=200
    Log    Status Code: ${response.status_code}
    Should Be Equal As Numbers    ${response.status_code}    200
