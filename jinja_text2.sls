
#{%- for x in salt.pillar.get('proxy')%}
#{{ x }}
#{%- endfor  %}

x = salt.pillar.get('proxy')
{{ x }}
