using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Models
{
    public class Sediste
    {
        [Key]
        public int ID { get; set; }
        [Required]
        [Range(1,120)]
        public int BrojSedista { get; set; }
        
        public Rezervacija Rezervacija { get; set; }
    }
}