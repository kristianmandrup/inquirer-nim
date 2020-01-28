import macros, jsffi, asyncjs

type
  TableQuestion = JsObject
    `type`*: cstring,
    name*: cstring,
    message*: cstring,
    columns*: JsObject,
    rows*: JsObject,

proc tablePrompt*(questions: seq[Question]): PromiseJs {.
    importcpp "inquirer.prompt".}
