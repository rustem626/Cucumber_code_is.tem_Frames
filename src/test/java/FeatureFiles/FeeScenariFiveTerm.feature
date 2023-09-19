#Senaryo:
#  Daha önceki Fee Functionality Senaryosunu
#  name, code, intCode ve priority için 5 farklı kombinasyon için çalıştırınız.

Feature: Fees multiple values functionality

  Background:
    Given Navigate to Campus
    When Enter username and password and click login button
    Then User should login successfully

  Scenario Outline: Fee Functionality
    And Click on the element in LeftNav
      | setup      |
      | parameters |
      | fees       |

    And Click on the element in Dialog
      | addButton |

    And User sending the keys in Dialog
      | nameInput       | <name>     |
      | codeInput       | <code>     |
      | integrationCode | <intCode>  |
      | priorityCode    | <priority> |

    And Click on the element in Dialog
      | toggleBar  |
      | saveButton |

    Then Success message should be displayed

    And User delete the element from Dialog
      | <name> |

    Then Success message should be displayed

    Examples:
      | name    | code | intCode| priority  |
      | RustFee0| 85 | PayPal   | 12315     |
      | RustFee1| 88 | Cash     | 12362     |
      | RustFee2| 99 | Cheque   | 12237     |
      | RustFee3| 58 | ApplaPay | 12238     |
      | RustFee4| 98 | Crypto   | 12329     |