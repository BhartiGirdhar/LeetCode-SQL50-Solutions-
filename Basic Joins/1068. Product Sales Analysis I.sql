Select p.product_name, s.year, s.price
from Sales s
Left Join Product p
on s.product_id = p.product_id;