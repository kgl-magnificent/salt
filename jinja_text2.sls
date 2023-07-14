{%- set proxy_servers = pillar['proxy'] %}

#{%- for name in pillar['proxy'] %}
#{{ name }}
#{%- endfor %}

#{% set x = pillar['proxy']['sa5sft06-bpe'][20601] %}

{%- for i in salt.pillar.get('proxy')%}
{{ x['name'] }}
{%- endfor  %}
