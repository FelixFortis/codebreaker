Feature: code-breaker submits guess

  The code-breaker submits a guess of four numbers. The game marks the guess with + and - signs.

  For each number in the guess that matches the number and position of a number in the secret code, the mark includes one + sign. For each number in the guess that matches the number but not the position of a number on the secret code, the mark includes one - sign.

  Scenario Outline: submit guess
    Given the secret cose is "<code>"
    When I guess "<guess>"
    Then the mark should be "<mark>"

  Scenarios: no numbers correct
    | code | guess | mark |
    | 1234 | 5555  |      |

  Scenarios: 1 number correct
    | code | guess | mark |
    | 1234 | 1234  | +    |
    | 1234 | 4555  | -    |

  Scenarios: 2 numbers correct
    | code | guess | mark |
    | 1234 | 1255  | ++   |
    | 1234 | 1553  | +-   |
    | 1234 | 5543  | -    |

  Scenarios: 3 numbers correct
    | code | guess | mark |
    | 1234 | 1235  | +++  |
    | 1234 | 1245  | ++-  |
    | 1234 | 1425  | +--  |
    | 1234 | 4325  | ---  |

  Scenarios: all numbers correct
    | code | guess | mark |
    | 1234 | 1234  | ++++ |
    | 1234 | 1243  | ++-- |
    | 1234 | 1423  | +--- |
    | 1234 | 4321  | ---- |