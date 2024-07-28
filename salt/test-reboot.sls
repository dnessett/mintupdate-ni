test-reboot:
  hosts-restart:
    salt.function:
      - name: system.reboot
      - arg: [1]
      - tgt: '*'
      - tgt_type: compound

  hosts-wait-for-reboot:
    salt.wait_for_event:
      - name: salt/minion/*/start
      - id_list: {{ hosts.keys()|list|yaml }}
      - timeout: 600
      - require:
        - salt: hosts-restart
