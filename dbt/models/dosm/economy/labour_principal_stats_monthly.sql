{{
    config(
        order_by='date',
    )
}}

SELECT
    *
FROM
    {{ source('ext_dosm', 'labour_principalstats_monthly') }}
