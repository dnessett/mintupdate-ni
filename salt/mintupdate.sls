update_linux_mint:
  cmd.run:
    - name: |
        sudo apt-get update
        sudo apt-get upgrade -y
        sudo apt-get dist-upgrade -y
    - shell: /bin/bash
    - require:
      - pkg: update_apt_cache

update_apt_cache:
  pkg.uptodate:
    - refresh: True