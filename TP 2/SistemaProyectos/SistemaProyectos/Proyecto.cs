//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SistemaProyectos
{
    using System;
    using System.Collections.Generic;
    
    public partial class Proyecto
    {
        public Proyecto()
        {
            this.Factores = new HashSet<Factores>();
        }
    
        public int Id { get; set; }
        public string Nombre { get; set; }
        public System.DateTime Fecha { get; set; }
        public string Descripcion { get; set; }
        public int Gerente { get; set; }
    
        public virtual Usuario Usuario { get; set; }
        public virtual ICollection<Factores> Factores { get; set; }
    }
}
