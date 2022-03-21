using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;

namespace Models
{
    [Table("Autobuska stanica")]
    public class AutobuskaStanica
    {
        [Key]
        public int ID { get; set; }

        [Required]
        [MaxLength(50)]
        public string Ime { get; set; }

        public List<Odrediste> Odredista { get; set; }

        

        


    }
}