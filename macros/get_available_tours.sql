{% macro get_available_tours() %}
    {% set sql %}
        select
            id as tour_id,
            name as tour_name,
            price
        from {{ ref('raw_tours') }}
        where availability = 'available'
    {% endset %}

    {{ log(sql, info=True) }}

    {{ return(sql) }}
{% endmacro %}
