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
