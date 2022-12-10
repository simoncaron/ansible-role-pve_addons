Ansible Role: Proxmox VE Addons
=========

![Ansible Lint](https://github.com/simoncaron/ansible-role-pve_addons/actions/workflows/lint.yml/badge.svg)
[![Ansible Role](https://img.shields.io/ansible/role/60994.svg)](https://galaxy.ansible.com/simoncaron/pve_addons)
[![Ansible Role Downloads](https://img.shields.io/ansible/role/d/60994.svg)](https://galaxy.ansible.com/simoncaron/pve_addons)

An Ansible role that configures enterprise/no-subscription repos, subscription nag removal and enables dark theme on Proxmox VE 7.

Nag removal and dark theme install actions are hooked to package management which ensures the changes are kept when underlying Proxmox packages are updated.

Requirements
------------

This role requires `git` to be installed on the target host(s). It will be installed if needed.

Role Variables
--------------

Available variables are listed below, along with default values (see `defaults/main.yml`):

    pve_addons_enable_dark_theme: true

    pve_addons_remove_subscription_nag: true

    pve_addons_remove_enterprise_repo: true

    pve_addons_add_no_subscription_repo: true

The `pve_addons_enable_dark_theme` key enables the installation of PVEDiscordDark theme. The `pve_addons_add_no_subscription_repo` and `pve_addons_remove_enterprise_repo` keys when enabled, add the no-subscription Proxmox repo and remove the enterprise repo respectively. The `pve_addons_remove_subscription_nag` removes the no subscription warnings in the Proxmox UI. 


Dependencies
------------

None.

Example Playbook
----------------

    - hosts: localhost

      vars:
        pve_addons_enable_dark_theme: true
        pve_addons_remove_subscription_nag: true
        pve_addons_remove_enterprise_repo: true
        pve_addons_add_no_subscription_repo: true

      roles:
        - simoncaron.pve_addons

License
-------

MIT

Parts of this role are based on the following repos:
- https://github.com/ironicbadger/ansible-role-proxmox-nag-removal
- https://github.com/marrobHD/proxmox-tools

Author Information
------------------

This role was created in 2022 by [Simon Caron](https://simoncaron.com/).
