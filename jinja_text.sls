#{%- set port = pillar['port'] %}
#{%- set name = pillar['name'] %}

{%- if ('pud-balancer-nn' in grains.get('roles', []) or 'pud-balancer-mr' in grains.get('roles', [])) %}
  {%- for server, args in salt.pillar.get('proxy', {}).items() %}
    /home/{{server}}_{{args['name']}}_{{args['port']}}.txt:
      file.managed:
        - source: salt://file/jinja_text.txt
        - template: jinja
        - user: nginx
        - group: nginx
        - context:
          port_var: {{args['port']}}
          name_var: {{args['name']}}
  {%- endfor %}
{%- endif %}

