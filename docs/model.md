products
#id, name, price, created_at, updated_at
1, macbook
2, mouse

purchases
#id, #client_id, #seller_id, created_at, updated_at
1, artur, joao

purchase_products
#id, #purchase_id, #product_id
234324, 1 (linha 8), 1 (linha 3)
234324, 1 (linha 8), 2 (linha 4)

clients
#id, name, created_at, updated_at

sellers
#id, name, created_at, updated_at
