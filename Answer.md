## Explain the relationship between the "Product" and "Product_Category" entities from the above diagram.
The relationship between "Product" and "Product_Category" is a many-to-one relation, which means that there can be one Product_Category for many products. For eg. products like phones, TVs, and laptops can be categorized into a product category like electronics.

## How could you ensure that each product in the "Product" table has a valid category assigned to it?
To ensure that each product in the "Product" table has a valid category assigned to it,
   1. we can utilize foreign key constraints. which can be something like `foreign key(category_id) references product_category(id)`
   2. To ensure that `category_id` cannot be left null we can add a `not null` constraint to `category_id`.
