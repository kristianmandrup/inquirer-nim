import macros, jsffi, asyncjs

{.experimental: "callOperator".}

when not defined(js):
  {.error: "InquirerJS table prompt plugin is only available for the JS target".}

type
  TableQuestion = JsObject
    `type`*: cstring,
    name*: cstring,
    message*: cstring,
    columns*: JsObject,
    rows*: JsObject,

{.emit: ["inquirer.registerPrompt('table', require('inquirer-table-prompt'));"]

proc tablePrompt*(questions: seq[Question]): PromiseJs {.
    importjs "inquirer.prompt".}
