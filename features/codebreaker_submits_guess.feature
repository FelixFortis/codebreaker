Feature: code-breaker submits guess

  The code-breaker submits a guess of four numbers. The game marks the guess with + and - signs.

  For each number in the guess that matches the number and position of a number in the secret code, the mark includes one + sign. For each number in the guess that matches the number but not the position of a number on the secret code, the mark includes one - sign.

  Scenario Outline: submit guess
    Given the secret cose is "<code>"
    When I guess "<guess>"
    Then the mark should be "<mark>"

  Scenarios: numbers correct
    | code | guess | mark |
    | 1234 | 1234  | ++++ |
    | 1234 | 1243  | ++-- |
    | 1234 | 1423  | +--- |
    | 1234 | 4321  | ---- |