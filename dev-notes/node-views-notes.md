## Class hierarchy

CommandView > DocView > View > Object
RootView > View > Object
Node > Object

```
core (global)
  docs: DocView[] (? not verified) # List of documents
  root_view : RootView
    root_node : Node

a root_view : RootView
  root_node : Node

a node : Node
  views : View[]
  active_view: View ?
```

## Closing a document

When closing a document, file core.commands.root, command "root:close", it is called:

```lua
local node = core.root_view:get_active_node()
node:close_active_view(core.root_view.root_node)
```

the call `Node:close_active_view`, in core.rootview, calls

`self.active_view:try_close(do_close)`

where `do_close` is a Lua function that remove the node from the node's self.views,
rearrange the tree if needed (not clear) and set the active view to a new value.

The method `try_close` does nothing but running `do_close` for a View but for a DocView it checks if there
is any pending change and ask for confirmation to the user.

