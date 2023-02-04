{% macro create_external_schema(source_node) %}

    {% set ddl %}
        create database if not exists {{ source_node.schema }}
    {% endset %}

    {% do return(ddl) %}

{% endmacro %}

{% macro clickhouse__create_external_table(source_node) %}

    {%- set columns = source_node.columns.values() -%}
    {%- set external = source_node.external -%}
    {%- set location = external.get('location') -%}
    {%- set format = external.options.get('format') -%}

    {% set ddl %}
        CREATE OR REPLACE TABLE {{ source_node.source_name }}.{{ source_node.name }}
        {% if columns %}(
            {%- for column in columns %}
                {%- set column_quoted = adapter.quote(column.name) if column.quote else column.name %}
                {{column_quoted}} {{column.data_type}} {{- ',' if not loop.last -}}
            {%- endfor %}
        ){% endif %}
        ENGINE = S3('{{location}}', '{{format}}')
        SETTINGS
            schema_inference_make_columns_nullable = 0
    {% endset %}

    {% do return(ddl) %}

{% endmacro %}
