
#{%- for x in salt.pillar.get('proxy')%}
#{{ x }}
#{%- endfor  %}

{%- for server, args in salt.pillar.get('proxy', {}).items() %}
  {{args['name']}}  
{%- endfor  %}
