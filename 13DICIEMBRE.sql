-- grou by
--having
--obtener por producto las cantidades que se han vendido

select product_id , sum (quantity) as cantidad_vendida
from public.order_details
group by product_id
having sum (quantity) > 850
order by product_id;

--obtener los empleados que han vendido mas de 100 de la tabla de ordenes

select employee_id, count (order_id)
from public.orders
group by employee_id
having count (order_id) >100
order by employee_id;

--obtener el numero de ordenes por pais, unicamente los paises USA, Spain
select ship_country, count (order_id) as ordenes
from orders
where ship_country in ('USA', 'Spain')
group by ship_country;

--cuales son los proveedores que nos surten mas de un producto, mostrar
--el proveedor, la cantidad de productos pero unicamente de la categoria  
--1 de la tabla de productos.

select supplier_id , count (product_id) as cantidad
from public.products
where category_id=1
group by supplier_id
having count (product_id)>1
order by supplier_id;

--CONTAR LAS ORDENES POR EMPLEADO DE LOS PAISES USA, CANADA, SPAIN (ShipCountry)
--MOSTRAR UNICAMENTE LOS EMPLEADOS CUYO CONTADOR DE ORDENES SEA MAYOR A 20

select employee_id, count (order_id) as cantidad
from public.orders
where ship_country in ('USA', 'Canada','Spain')
group by employee_id
having count (order_id) >20


--OBTENER EL PRECIO PROMEDIO DE LOS PRODUCTOS POR PROVEEDOR
--UNICAMENTE DE AQUELLOS CUYO PROMEDIO SEA MAYOR A 20

select 

--OBTENER LA SUMA DE LAS UNIDADES EN EXISTENCIA (UnitsInStock)
--POR CATEGORIA, Y TOMANDO EN CUENTA UNICAMENTE LOS PRODUCTOS CUYO
--PROVEEDOR (SupplierID) SEA IGUAL A 17, 19, 16
--ADICIONALMENTE CUYA SUMA POR CATEGORIA SEA MAYOR A 300--

--CONTAR LAS ORDENES POR EMPLEADO DE LOS PAISES (ShipCountry)
--USA, CANADA, SPAIN
--CUYO CONTADOR SEA MAYOR A 25

--OBTENER LAS VENTAS (Quantity * UnitPrice) AGRUPADAS POR PRODUCTO 
--(Orders details) Y CUYA SUMA DE VENTAS SEA MAYOR A 50.000
