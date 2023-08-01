WITH cc_sales_products AS (
    SELECT * FROM {{ ref('cc_sales_products') }}
  )
,
 stg_cc_stock AS (
      SELECT * FROM {{ ref('stg_cc_stock') }}
)

SELECT
  ### Key ###
  product_id
  ###########
 
  ,product_name
 
FROM stg_cc_stock t
LEFT JOIN cc_sales_products d USING (product_id)
WHERE TRUE
ORDER BY product_id