CREATE table Categoria(
id serial primary key not null,
nombre varchar (50)
);


CREATE table Sucursal(
id serial primary key not null,
nombre varchar (50),
direccion varchar (50)
);

CREATE table Cliente(
id serial primary key not null,
nombre varchar (50),
telefono varchar (50)
);

CREATE table Producto(
id serial primary key not null,
nombre varchar (50),
marca varchar (50),
categoria_id integer,
precio_unitario decimal(20,2),
);

CREATE table Stock(
id serial primary key not null,
sucursal_id integer,
producto_id integer,
cantidad integer,
UNIQUE (sucursal_id, producto_id)
);

CREATE table Orden(
id serial primary key not null,
cliente_id integer,
sucursal_id integer,
fecha timestamp,
total decimal(20,2),

);

CREATE table Item(
id serial primary key not null,
orden_id integer,
producto_id integer,
cantidad integer,
monto_venta decimal(20,2),
);