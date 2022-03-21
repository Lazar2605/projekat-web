using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System;



namespace Models
{
    public class Rezervacija
    {
        [Key]
        public int ID { get; set; }
        
        [Required]
        public string DatumPolaska { get; set; }  
        [Required]
        public int CenaRezervacije { get; set; }
        [Required]
        public int brojRezervacije { get; set; }
        
        [Required]
        public Put Put { get; set; }
        
        public List<Sediste> RezervisanaSedista { get; set; }

    }
}