{%- pillar1 = pillar['proxy'] %}

cmd.run:
  - names:
    - echo "{{ pillar1 }}"
