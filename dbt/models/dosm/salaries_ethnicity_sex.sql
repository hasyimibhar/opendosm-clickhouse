{{
    config(
        order_by='year',
    )
}}

SELECT
    *
FROM
    {{ source('ext_dosm', 'salaries_ethnicity_sex') }}
