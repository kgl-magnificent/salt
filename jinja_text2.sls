
#{%- for x in salt.pillar.get('proxy')%}
#{{ x }}
#{%- endfor  %}

{%- for server in salt.pillar.get('proxy', {}).items() %}
  /home/file.txt:
    file.managed:
      - source: salt://file/file.txt
      - user: nginx
      - group: nginx
{%- endfor  %}
