
Feature: Student takes a quiz

  Scenario 1: Student successfully starts a quiz
    Given the question bank contains at least 10 published questions
    And some questions are still pending review
    When the student starts a quiz
    Then the system should display 10 questions
    And all displayed questions should be published
    And no question should be repeated

  Scenario 2: Student cannot start a quiz with insufficient questions
    Given the question bank contains only 9 published questions
    When the student starts a quiz
    Then the system should refuse to start the quiz
    And display a message that there are not enough published questions

  Scenario Outline: Quiz always contains 10 unique published questions
    Given the question bank contains <count> published questions
    When the student starts a quiz
    Then the system should display 10 questions
    And all 10 questions should be unique

    Examples:
      | count |
      | 10    |
      | 12    |
      | 20    |
