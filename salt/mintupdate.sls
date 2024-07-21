update_linux_mint:
  cmd.run:
    - name: |
        sudo apt-get update
        sudo apt-get upgrade -y
        sudo apt-get dist-upgrade -y
    - require:
      - pkg: update_apt_cache
  cmd.script:
    - name: mintupdate-ni
    - source: /srv/salt/scripts/mintupdate-ni.py

update_apt_cache:
  pkg.uptodate:
    - refresh: True
    
reboot:
  cmd.run:
    - name: sudo reboot
