{{
    config(
        order_by='date',
    )
}}

SELECT
    *
FROM
    {{ source('ext_dosm', 'covid_cases') }}
