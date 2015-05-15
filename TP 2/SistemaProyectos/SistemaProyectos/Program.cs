using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemaProyectos
{
    class Program
    {
        static void Main(string[] args)
        {
            int Entrada = 0;

            do
            {

                Console.Clear();
                Console.WriteLine("---SISTEMA GERENTES---");
                Console.WriteLine("Seleccione una opcion para el Gerente");
                Console.WriteLine("1 - CREAR");
                Console.WriteLine("2 - MODIFICAR");
                Console.WriteLine("3 - CONSULTAR");
                Console.WriteLine("4 - SALIR");

                Entrada = Convert.ToInt32(Console.ReadLine());


                var ctx = new Model1Container();

                switch (Entrada)
                {

                    case 1:
                        Usuario usuario = new Usuario();
                        Console.WriteLine("Solo se dará de alta un Gerente");
                        Console.WriteLine("Ingrese el Nombre del Nuevo Gerente");
                        usuario.Nombre = Console.ReadLine();
                        Console.WriteLine("Ingrese el DNI");
                        usuario.Dni = Console.ReadLine();
                        Console.WriteLine("Ingrese el Apellido");
                        usuario.Apellido = Console.ReadLine();
                        Console.WriteLine("Ingrese la contraseña");
                        usuario.Contraseña = Console.ReadLine();
                        usuario.Proyecto = null;

                        Sistema sistema = new Sistema
                        {
                            NombreError = "error",
                            ValorDemora = 0,
                            ValorPosible = 123,
                            CalculoCategoria = 4
                        };

                        Proyecto proyecto = new Proyecto
                        {
                            Nombre = "proyecto",
                            Fecha = new DateTime(),
                            Descripcion = "descripcion"
                        };

                        Factores factor = new Factores
                        {
                            Nombre = "factor1",
                            Valores = 34
                        };

                        //sistema.Usuario = usuario;
                        proyecto.Usuario = usuario;
                        usuario.Sistema = sistema;
                        factor.Proyecto = proyecto;
                        //proyecto.Factores = factor;
                        //usuario.Proyecto = proyecto;
                        proyecto.Usuario = usuario;

                        ctx.UsuarioSet.Add(usuario);
                        ctx.SaveChanges();

                        //Console.WriteLine("Hecho");
                        //Console.ReadKey();

                        break;

                    case 3:

                        Console.WriteLine("Ingrese el DNI del Gerente que desea consultar");
                        long dni_user = Convert.ToInt32(Console.ReadLine());

                        //var user2 = ctx.Usuario.Find(dni_user);

                        break;

                }


                

            }

            while (Entrada != 4);
        }
    }
}
