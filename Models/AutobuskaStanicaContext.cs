using Microsoft.EntityFrameworkCore;

namespace Models
{
    public class AutobuskaStanicaContext : DbContext
    {
        public DbSet<AutobuskaStanica> Stanice { get; set; }
        public DbSet<Autobus> Autobusi { get; set; }
        public DbSet<Odrediste> Odredista { get; set; }
        public DbSet<Rezervacija> Rezervacije { get; set; }
        public DbSet<Sediste> Sedista { get; set; }
        public DbSet<Put> Putovanja { get; set; }
        

        public DbSet<Karta> Karte { get; set; }

        public AutobuskaStanicaContext(DbContextOptions options):base(options)
        {

        }

    }
}