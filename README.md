# yaml-parser
Validates all files .yaml files in a directory three by parsing them.

#### Installation

    gem install yaml-parser

#### Usage
    yaml-parser /path/to/directory


#### Example output
    yaml-parser example/
    Scanned 595 yaml files. 2 error(s) found
    (common.yaml): found character that cannot start any token while scanning for the next token at line 32 column 35
    (fqdn/foo.bar.buzz.yaml): could not find expected ':' while scanning a simple key at line 2 column 1

### Usecase
Personally used in a git pre-commit hook validating hiera data before commit

    #!/bin/sh
    yaml-parser `git rev-parse --show-toplevel` 2>&1 >/dev/null

