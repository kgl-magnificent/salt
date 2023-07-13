#{%- set port = pillar['port'] %}
{%- set name = pillar['name'] %}

{%- if ('pud-balancer-nn' in grains.get('roles', []) or 'pud-balancer-mr' in grains.get('roles', [])) %}
  {%- for port in salt.pillar.get('ports') %}
    /home/{{name}}_{{port}}.txt:
      file.managed:
        - source: salt://file/jinja_text.txt
        - template: jinja
        - user: nginx
        - group: nginx
  {%- endfor %}
{%- endif %}

