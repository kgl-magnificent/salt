
#{%- for x in salt.pillar.get('proxy')%}
#{{ x }}
#{%- endfor  %}

{%- set x = salt.pillar.get('proxy', {}) %}
{{ x }}
