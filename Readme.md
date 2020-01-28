# Nim bindings for InquirerJS

To facilitate creating CLI utilities leveraging NodeJs

## API

```nim
proc prompt*(questions: seq[Question]): PromiseJs
proc registerPrompt(name, prompt)
proc createPromptModule*(): auto
proc createBottomBar(): BottomBar
```

## Plugins supported

[table-prompt](https://github.com/eduardoboucas/inquirer-table-prompt)

```nim
proc tablePrompt*(questions: seq[Question]): PromiseJs
```

More to follow...
