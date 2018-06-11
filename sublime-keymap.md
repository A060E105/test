```
[
	{ "keys": ["ctrl+alt+["], "command": "exit_insert_mode",
	    "context":
	    [
	        { "key": "setting.command_mode", "operand": false },
	        { "key": "setting.is_widget", "operand": false }
	    ]
	},

	{ "keys": ["ctrl+shift+alt+/"], "command": "toggle_comment", "args": { "block": true } },

	{ "keys": ["ctrl+shift+alt+]"], "command": "indent" },
	{ "keys": ["ctrl+shift+alt+["], "command": "unindent" },
	{ "keys": ["ctrl+alt+j"], "command": "scroll_lines", "args": {"amount": -1.0 } },
	{ "keys": ["ctrl+alt+k"], "command": "scroll_lines", "args": {"amount": 1.0 } },
	{ "keys": ["ctrl+shift+c"], "command": "convert_to_utf8", "args": {"encoding": "BIG5", "stamp": "0" } },
	{ "keys": ["ctrl+shift+u"], "command": "convert_to_utf8", "args": {"encoding": "UTF8", "stamp": "0" } },

]
```
