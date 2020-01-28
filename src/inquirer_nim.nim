import macros, jsffi, asyncjs

{.experimental: "callOperator".}

when not defined(js):
  {.error: "Jest.nim is only available for the JS target".}

type
  Question = JsObject
    `type`*: cstring,
    name*: cstring,
    message*: cstring,
    default*: cstring,
    choices*: seq[auto],
    validate*: auto,
    filter*: auto,
    transformer*: auto,
    `when`*: auto,
    pageSize*: cint,
    prefix*: cstring,
    suffix*: cstring
  
  BottomBar = JsObject

proc prompt*(questions: seq[Question]): PromiseJs {.importcpp "inquirer.prompt" .}
proc registerPrompt(name, prompt): {.importcpp "inquirer.registerPrompt" .}
proc createPromptModule*(): auto {.importcpp "inquirer.createPromptModule" .}

proc createBottomBar(): BottomBar {.emit: ["new inquirer.ui.BottomBar();"] .}