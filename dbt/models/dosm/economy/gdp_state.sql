{{
    config(
        order_by='date',
    )
}}

SELECT
    *
FROM
    {{ source('ext_dosm', 'gdp_state') }}
