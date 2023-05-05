SELECT stock_item_id AS product_id
      , stock_item_name AS product_name
      , COALESCE(brand, 'Undentified') AS brand_name
      , product.supplier_id
      , supplier.supplier_name
FROM `vit-lam-data.wide_world_importers.warehouse__stock_items`  AS product
JOIN {{ref('dim_supplier')}} AS supplier
ON product.supplier_id = supplier.supplier_id