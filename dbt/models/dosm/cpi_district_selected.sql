{{
    config(
        order_by='date',
    )
}}

SELECT
    *
FROM
    {{ source('ext_dosm', 'cpi_district_selected') }}
