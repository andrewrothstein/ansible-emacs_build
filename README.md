andrewrothstein.emacs-build
=========
![Build Status](https://github.com/andrewrothstein/ansible-emacs-build/actions/workflows/build.yml/badge.svg)

A role to build [Emacs](https://www.gnu.org/software/emacs/)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.emacs-build
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
