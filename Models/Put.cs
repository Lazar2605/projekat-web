using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System;

namespace Models
{
    public class Put
    {
        [Key]
        [Required]
        public int ID { get; set; }
        [Required]
        public string VremePolaska { get; set; }
        public string VremeTrajanjaPuta { get; set; } 
        [Required]
        public int brojPeronaPolaska { get; set; }
        public List<Karta> Karta { get; set; }
        
        
        public List<Rezervacija> Rezervacije { get; set; }
       
        public Autobus Autobus { get; set; }
        
        public Odrediste Odrediste { get; set; }

        
    }

    
}