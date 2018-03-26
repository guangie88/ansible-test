# ansible-test

Just an Ansible testbed.

Requires `ansible-playbook`, and simply run `./run.sh`.

## `test-1`

Tests how string boolean values get treated after being template replaced by
direct `include_vars` (with/without quotes), and also template replaced via
`include_vars` followed by `set_fact`. The latter case is more tricky and
generally requires double quoting the boolean value.
