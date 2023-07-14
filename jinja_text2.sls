
{%- for x in salt.pillar.get('proxy')%}
{{ x['name'] }}
{%- endfor  %}
