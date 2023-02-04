{{
    config(
        order_by='year',
    )
}}

SELECT
    *
FROM
    {{ source('ext_dosm', 'salaries_education_sex') }}
