using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;

namespace Models
{
    public class Odrediste
    {
        [Key]
        public int ID { get; set; }
        [Required]
        [MaxLength(50)]
        public string Naziv { get; set; }
       
        public List<Put> OdredistePutovanja { get; set; }
        public AutobuskaStanica AutobuskaStanica { get; set; }
    }
}