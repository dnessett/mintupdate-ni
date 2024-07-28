test-timeshift:
  cmd.run:
    - name: "timeshift --create --comments 'backup before version update' --rsync --quiet --scripted --snapshot-device {{ grains['timeshift-disk'] }}"
