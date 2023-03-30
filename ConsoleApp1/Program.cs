namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            var server = new Server();

            server.open();

            server.command("SELECT * FROM persona WHERE tipo_persona = 'Cliente'", true);
            server.command("SELECT * FROM sucursal ORDER BY estado ASC, ciudad ASC" , true);

            server.command(
                "SELECT p.idPersona, p.nombre, p.direccion, p.telefono, p.edad, p.email, s.ciudad " +
                "FROM persona p " +
                "JOIN sucursal s " +
                "ON p.idSucursal = s.idSucursal " +
                "WHERE s.ciudad = 'Maracay' " +
                "AND p.tipo_persona = 'Empleado';", true);

            server.command("SELECT * FROM fabricante WHERE direccion LIKE 'M%'", true);
            server.command("SELECT nombre, descripcion, stock FROM articulo WHERE nombre LIKE 'F%';", true);
            server.command("DELETE FROM categoria WHERE idCategoria = 8");
            server.command("SELECT AVG(precio_compra) as 'Promedio de Precios' FROM detalle_compra WHERE idDetalle_compra = 3;" , true);
            server.command("UPDATE articulo SET stock = 12 WHERE idArticulo = 5");

            server.close();
        }
    }
}

