
#{%- for x in salt.pillar.get('proxy')%}
#{{ x }}
#{%- endfor  %}

{%- for server in salt.pillar.get('proxy', {}).items() %}
  {{server['name']}}
{%- endfor  %}
