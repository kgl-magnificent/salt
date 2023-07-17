
#{%- for x in salt.pillar.get('proxy')%}
#{{ x }}
#{%- endfor  %}

{%- for server, args in salt.pillar.get('proxy', {}).items() %}
  /home/{{args['name']}}.txt
    file.managed:
      - source: salt://file/file.txt
      - user: nginx
      - group: nginx  
{%- endfor  %}
