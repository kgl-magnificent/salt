{%- set proxy_servers = pillar['proxy'] %}

{{%- for name in pillar['proxy'] %}}
{{ name }}
{{%- endfor %}}
