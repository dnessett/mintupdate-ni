test-timeshift:
  cmd.run:
    - name: "timeshift --create --comments 'backup before version update' --tags 0 --rsync --quiet --scripted --snapshot-device {{ grains['timeshift-disk'] }}"
