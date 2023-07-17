
#{%- for x in salt.pillar.get('proxy')%}
#{{ x }}
#{%- endfor  %}

{%- for server in salt.pillar.get('proxy', {}).items() %}
  
   file.managed:
    - name: /home/file.txt
    - source: salt://file/file.txt
    - user: nginx
    - group: nginx
{%- endfor  %}
