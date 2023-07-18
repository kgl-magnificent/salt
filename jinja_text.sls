#{%- set port = pillar['port'] %}
#{%- set name = pillar['name'] %}

{%- if ('pud-balancer-nn' in grains.get('roles', []) or 'pud-balancer-mr' in grains.get('roles', [])) %}
  {%- for server_name, args in salt.pillar.get('proxy', {}).items() %}
    {%- for port in args %}
      /home/{{server_name}}_{{port}}.txt:
        file.managed:
          - source: salt://file/jinja_text.txt
          - template: jinja
          - user: nginx
          - group: nginx
          - context:
            port_var: port
            name_var: server_name
    {%- endfor %}
  {%- endfor %}
{%- endif %}

