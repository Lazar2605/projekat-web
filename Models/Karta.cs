using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System;

namespace Models
{

    public class Karta
    {
        [Key]
        [Required]
        public int ID { get; set; }
        [Required]
        public string TipKarte { get; set; }
        [Required]
        public int Cena { get; set; }
        public Put Putovanje { get; set; }
    }
}