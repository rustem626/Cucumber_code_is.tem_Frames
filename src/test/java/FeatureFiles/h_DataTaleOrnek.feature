Feature: DataTable Ornek
  Scenario: Users List
    When write username "ismet"
    And Write username and Password "ismet" and "1234"

    And Write username as DataTable
      | ismet  |
      | mehmet |
      | ayşe   |
      | fatma  |
      | Ahmet  |
      | veli   |

    And  Write username and Password as DataTable

      |Nurjahan|12|
      |Meryem|  32|
      |Salih |  65|
      |Zoya  |  48|
      |Ali|     45|
      |Veli|    98|