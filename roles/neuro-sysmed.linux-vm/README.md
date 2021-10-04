Role Name
=========

A brief description of the role goes here.

Requirements
------------

Add the following to your requirements file:
```
- src: https://github.com/neuromics/ansible-role-linux-vm.git
  name: neuromics.linux-vm
```


Role Variables
--------------
No variables


Dependencies
------------
None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

- hosts: all
  become: true    
  roles:
    - neuromics.linux-vm


and to run it:

ansible-playbook localhost.yml -i localhost,

License
-------

MIT

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
