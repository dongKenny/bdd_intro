Feature DnD Classes:
  As a non-player,
  I want to know what a
  class' hit die is and their
  saving throw stats.

  Scenario: Incorrect API Calls
  When The DnD API is queried with Wizard
  Then The Response code is not 200

  Scenario Outline: DnD Class Hit Dies
    When The DnD API is queried with "<dnd_class>"
    Then The response code is 200
    And The hit_die is "<hit_die>"

    Examples: Classes
      | dnd_class  | hit_die  |
      | wizard     | 6        |
      | rogue      | 8        |
      | barbarian  | 12       |
      | bard       | 8        |

  Scenario Outline: DnD Class Saving Throws
    When The DnD API is queried with "<dnd_class>"
    Then The response code is 200
    And The saving throws are "<saving_throws>"

    Examples: Classes
      | dnd_class  | saving_throws  |
      | wizard     | int, wis       |
      | rogue      | dex, int       |
