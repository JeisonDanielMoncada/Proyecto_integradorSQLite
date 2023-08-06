CREATE table Categoria(
id integer primary key not null,
nombre text
);


CREATE table Sucursal(
id integer primary key not null,
nombre text,
direccion text
);

CREATE table Cliente(
id integer primary key not null,
nombre text,
telefono text
);

CREATE table Producto(
id integer primary key not null,
nombre text,
marca text,
categoria_id integer,
precio_unitario real,
foreign key (categoria_id)
	references Categoria (id)
);

CREATE table Stock(
id integer primary key not null,
sucursal_id integer,
producto_id integer,
cantidad integer,
UNIQUE (sucursal_id, producto_id)
unique (sucursal_id, producto_id),
foreign key (sucursal_id)
	references Sucursal (id)
foreign key (producto_id)
	references Producto (id)
);

CREATE table Orden(
id integer primary key not null,
cliente_id integer,
sucursal_id integer,
fecha text,
total real,
foreign key (cliente_id)
	references Cliente (id)
foreign key (sucursal_id)
	references Sucursal (id)
);
CREATE table Item(
id integer primary key not null,
orden_id integer,
producto_id integer,
cantidad integer,
monto_venta real,
foreign key (orden_id)
	references Orden (id)
foreign key (producto_id)
	references Producto (id)
);