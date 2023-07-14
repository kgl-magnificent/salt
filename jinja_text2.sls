
{%- for x in salt.pillar.get('proxy')%}
{{ x }}
{%- endfor  %}
