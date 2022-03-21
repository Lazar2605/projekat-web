using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Models;
using Microsoft.EntityFrameworkCore;


namespace projekat.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class RezervacijaController : ControllerBase
    {
       public AutobuskaStanicaContext Context { get; set; }
       public RezervacijaController(AutobuskaStanicaContext context)
       {
           Context=context;
       }

       [Route("PreuzmiRezervacijeSedišta/{putovanjeID}/{datum}")]
       [HttpGet]
       public async Task<ActionResult> PreuzmiRezervacije(int putovanjeID, string datum)
       {
           if(putovanjeID<=0)
           return BadRequest("ID putovanja nije validan!");
           try
           {
               var rez=await Context.Rezervacije
               .Where(r=>r.Put.ID==putovanjeID && r.DatumPolaska==datum)
               .Include(p=>p.RezervisanaSedista)
               .ToListAsync();


               var rezervacije2=rez
               .Select(q=>q.RezervisanaSedista
               .Select(r=>
               new
               {
                   BrojSedista=r.BrojSedista,
                   rezervacijaID=r.Rezervacija.ID
               })).ToList();
               return Ok(rezervacije2);
            

           }
           catch(Exception e)
           {
               return BadRequest("Greška " + e.Message);
           }
       }

    


       [Route("PreuzmiSveRezervacije")]
       [HttpGet]
       public async Task<ActionResult> PreuzmiRezervacije()
       {
              try{
               var rezervacija=await Context.Rezervacije
               .Select(r=>
               new{
                   ID=r.ID,
                   brojRezervacije=r.brojRezervacije,
                   datumPolaska=r.DatumPolaska,
                   putovanjeID=r.Put.ID
               }).ToListAsync();
               return Ok(rezervacija);
           }
           catch(Exception e)
           {
               return BadRequest("Greška:" + e.Message);
           }
       }

       [Route("DodajRezervaciju/{putovanjeID}/{datumPolaska}/{brojRezervacije}")]
       [HttpPost]
       public async Task<ActionResult> DodajRezervaciju(int putovanjeID,string datumPolaska, int brojRezervacije, [FromBody] int[] brojeviSedistaIKarteID)
       {

           if(putovanjeID<=0)
           {
               return BadRequest("ID putovanja nije validan!");
           }
        
           
           for(int i=0;i<brojeviSedistaIKarteID.Length;i++)
           {
               if(brojeviSedistaIKarteID[i]<=0)
               return BadRequest("Broj sedišta ili id karte nije validan!");
           }
          
           
            for(int i=0;i<brojeviSedistaIKarteID.Length/2;i++)
            {
                for(int j=0;j<brojeviSedistaIKarteID.Length/2;j++)
                {
                    if(i!=j)
                    {
                        if(brojeviSedistaIKarteID[i]==brojeviSedistaIKarteID[j])
                        {
                            return BadRequest("Ne možete rezervisati jedno sedište 2 puta");
                        }
                    }
                }
            }
            
           
            
           try
           {
               var putovanje=await Context.Putovanja.FindAsync(putovanjeID);
               if(putovanje==null)
               {
                   return BadRequest("Putovanje sa ID-em: "+putovanjeID+" ne postoji");
               }
               var cenaRez=0;
               for(int i=brojeviSedistaIKarteID.Length/2;i<brojeviSedistaIKarteID.Length;i++)
               {
                   var a= Context.Karte.Where( a=> a.Putovanje.ID==putovanjeID && a.ID==brojeviSedistaIKarteID[i]).FirstOrDefault();
                   if(a==null)
                   return BadRequest("ID karte se ne poklapa sa ID puta");
                   cenaRez=cenaRez+a.Cena;
               }
          
                

                var autobus=await Context.Putovanja
               .Where(p=>p.ID==putovanjeID)
               .Include(p=>p.Autobus)
               .ToListAsync();



               for(int i=0;i<brojeviSedistaIKarteID.Length/2;i++)
               if(brojeviSedistaIKarteID[i]>autobus[0].Autobus.Kapacitet)
               return BadRequest("Broj sedišta: "+brojeviSedistaIKarteID[i]+" ne postoji u ovom autobusu!");
               
               Rezervacija rez=new Rezervacija
               {

                   Put=putovanje, 
                   brojRezervacije=brojRezervacije,  	
                   DatumPolaska=datumPolaska,
                   CenaRezervacije=cenaRez

               };

               Context.Rezervacije.Add(rez);
               
                   
                for(int i=0;i<brojeviSedistaIKarteID.Length/2;i++)
                {
                    
                    
                    Sediste sed=new Sediste
                    {
                        Rezervacija=rez,
                        BrojSedista=brojeviSedistaIKarteID[i]
                        
                    };
                    Context.Sedista.Add(sed);
               
                }
                await Context.SaveChangesAsync();
                var rez1=new
                {
                    ID=rez.ID,
                    CenaRezervacije=rez.CenaRezervacije,
                    Datum=rez.DatumPolaska,
                    brojRezervacije=rez.brojRezervacije
                };
                return Ok(rez1);
           }
                catch(Exception e)
                {
                    return BadRequest("Greška! " + e.Message);
                }


               
           }
           [Route("IzmeniRezervaciju/{rezervacijaID}")]
           [HttpPut]
           public async Task<ActionResult> IzmeniRezervaciju(int rezervacijaID, [FromBody] int[] brojeviSedista)
           {
               if(rezervacijaID<=0)
               {
                   return BadRequest("ID rezervacije nije validan!");
               }
                for(int i=0;i<brojeviSedista.Length;i++)
                {
               if(brojeviSedista[i]<=0)
               return BadRequest("Broj sedišta: "+brojeviSedista[i]+" ne postoji!");
                }
              
            
           
               var rez=Context.Rezervacije.Where(rez=>rez.ID==rezervacijaID).FirstOrDefault();

               if(rez==null)
               {
                   return BadRequest("Rezervacija ne postoji");
               }
               try
               {
                   var rez1=await Context.Rezervacije.FindAsync(rezervacijaID);
                   int i=0;
                   foreach(var sed in Context.Sedista.Where(p=>p.Rezervacija.ID==rezervacijaID))
                   {
                       sed.BrojSedista=brojeviSedista[i]; 
                       Context.Sedista.Update(sed);
                       i++;
                   }
                   await Context.SaveChangesAsync();
                   return Ok("Uspešna izmena");
               }
               catch(Exception e)
               {
                   return BadRequest("Greška: " + e.Message);
               }
           }
       [Route("ObrisiRezervaciju/{brojRezervacije}")]
       [HttpDelete]
       public async Task<ActionResult> ObrisiRezervaciju(int brojRezervacije)
       {
           if(brojRezervacije<=0)
           return BadRequest("Broj rezervacije nije validan!");

           var rez=Context.Rezervacije.Where(rez=>rez.brojRezervacije==brojRezervacije).FirstOrDefault();

           var rezId=rez.ID;
          
           if(rez==null)
           {
               return BadRequest("Rezervacija nepostojeća!");
           }

           try
           {
               var rez1=await Context.Rezervacije.FindAsync(rezId);
               foreach (var sed in Context.Sedista.Where(p=>p.Rezervacija.ID==rezId))
               {
                   Context.Sedista.Remove(sed);
               }
               Context.Rezervacije.Remove(rez1);
               await Context.SaveChangesAsync();
               return Ok("Usepšno brisanje rezervacije");
           }
           catch(Exception e)
           {
               return BadRequest("Greška " + e.Message);
           }
       }


    }
}