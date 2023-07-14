
{%- for i in salt.pillar.get('proxy')%}
{{ x['name'] }}
{%- endfor  %}
