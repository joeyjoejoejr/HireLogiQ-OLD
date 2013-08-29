test "Add a new candidate", ->
  Hirelogiq.reset()
  visit("/").fillIn(".add-candidate", "Ted Dancin")
    .click(".submit")
    .then ->
      equal find("#candidates .candidate").length, 1, "one candidate was not added"
      equal find(".candidate-name", "#candidates .candidate").first().text(), "Ted Dancin"
        ,"the candidate was not added"
    .fillIn(".add-candidate", "Ted Nugent")
    .click(".submit")
    .then ->
      equal find("#candidates .candidate").length, 2, "second candidate was not added"

