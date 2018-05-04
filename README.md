[![License](https://img.shields.io/github/license/vy/pass-extension-copyq.svg)](http://www.apache.org/licenses/LICENSE-2.0.txt)

# pass copyq

A [pass](https://www.passwordstore.org/) extension that copies a stored
password using [copyq](https://github.com/hluk/CopyQ) with a certain
timeout. After timeout, the clipboard is either restored to its previous
state or cleared.

## Usage

```
pass copyq pass-name
```

## Example

```
pass copyq email/gmail
```

## Installation

1. First you have to enable `pass` extensions by setting
  `PASSWORD_STORE_ENABLE_EXTENSIONS=true` environment variable.
2. Add the `copyq.bash` file to `~/.password-store/.extensions`
   with executable rights.

## Enabling shell auto-completion

`pass copyq` has (almost) identical shell auto-completion semantics with
`pass show`. Hence you just need to find the relevant auto-completion
file of the shell of your preference and add `copyq` option next to
`show` command.

For instance, in Ubuntu GNU/Linux 16.04.4 LTS, open
`/usr/share/bash-completion/completions/pass` with a text
editor and edit the below given part

```bash
show|-*)
    COMPREPLY+=($(compgen -W "-c --clip" -- ${cur}))
    _pass_complete_entries 1
    ;;
```

as follows:

```bash
copyq|show|-*)
    COMPREPLY+=($(compgen -W "-c --clip" -- ${cur}))
    _pass_complete_entries 1
    ;;
```

## License

Copyright &copy; 2018 [Volkan Yazıcı](http://vlkan.com/)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
