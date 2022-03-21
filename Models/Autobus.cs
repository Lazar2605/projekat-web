using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System;

namespace Models
{
    public class Autobus
    {
        [Key]
        public int ID { get; set; }
        [Required]
        [MaxLength(50)]
        public string Prevoznik { get; set; }
        [Required]
        [Range(70,100)]
        public int Kapacitet { get; set; }   
        public List<Put> AutobusPutovanja { get; set; }
    }

    
}