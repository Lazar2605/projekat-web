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
    public class PutController : ControllerBase
    {
       public AutobuskaStanicaContext Context { get; set; }
       public PutController(AutobuskaStanicaContext context)
       {
           Context=context;
       }

       [Route("PreuzmiAutobuse")]
       [HttpGet]
       public async Task<ActionResult> PreuzmiAutobuse()
       {
           try
           {
               var autobusi=await Context.Autobusi
               .Select(p=>
               new{
                   ID=p.ID,
                   Prevoznik=p.Prevoznik,
                   Kapacitet=p.Kapacitet

               }).ToListAsync();
               return Ok(autobusi);
           }
           catch(Exception e)
           {
               return BadRequest("Greška" + e.Message);
           }
       } 	

       [Route("PreuzmiSvaPutovanja")]
       [HttpGet]
       public async Task<ActionResult> PreuzmiSvaPutovanja()
       {
           try
           {
               var putovanja=await Context.Putovanja
               .Include(p=>p.Odrediste)
               .Include(p=>p.Autobus)
               .ToListAsync();

               var putovanja2=putovanja
               .Select(p=>
               new{
                   ID=p.ID,
                   vremePolaska=p.VremePolaska,
                   VremeTrajanjaPuta=p.VremeTrajanjaPuta,
                   BrojPeronaPolaska=p.brojPeronaPolaska,
                   OdredisteID=p.Odrediste.ID,
                   AutobusID=p.Autobus.ID 
               }).ToList();
               return Ok(putovanja2);

           }
           catch(Exception e)
           {
               return BadRequest("Greška" + e.Message);
           }
       }

       [Route("PreuzmiPutovanjaZaOdrediste/{odredisteID}")]
       [HttpGet]
       public async Task<ActionResult> PreuzmiPutovanjaZaOdrediste(int odredisteID)
       {
           if(odredisteID<=0)
           return BadRequest("ID odredišta nije validan!");
           try
           {
               var putovanja1=await Context.Putovanja
               .Where(p=>p.Odrediste.ID==odredisteID)
               .Include(p=>p.Odrediste)
               .Include(p=>p.Autobus)
               .ToListAsync();

               var putovanja2=putovanja1.
               Select(p=>
               new
               {
                   ID=p.ID,
                   vremePolaska=p.VremePolaska,
                   VremeTrajanjaPuta=p.VremeTrajanjaPuta,
                   BrojPeronaPolaska=p.brojPeronaPolaska,
                   OdredisteID=p.Odrediste.ID,
                   AutobusID=p.Autobus.ID 
               }).ToList();
               return Ok(putovanja2);
           }
           catch(Exception e)
           {
               return BadRequest("Greška" + e.Message);
           }
       }

       [Route("PreuzmiSveKarte")]
       [HttpGet]
       public async Task<ActionResult> PreuzmiSveKarte()
       {
           try
           {
              var karte1=await Context.Karte
              .Include(p=>p.Putovanje)
              .ToListAsync();

              var karte2=karte1.Select(p=>
                new
                {
                    ID=p.ID,
                    tipKarte=p.TipKarte,
                    cena=p.Cena,
                    PutovanjeID=p.Putovanje.ID,


                }
              ).ToList();
              return Ok(karte2);
           }
           catch(Exception e)
           {
               return BadRequest("Greška: "+e.Message);
           }
       }

       [Route("PreuzmiKarteZaPutovanje/{putovanjeID}")]
       [HttpGet]
       public async Task<ActionResult> PreuzmiKarteZaPutovanje(int putovanjeID)
       {
           try
           {
              var karte1=await Context.Karte
              .Where(p=>p.Putovanje.ID==putovanjeID)
              .Include(p=>p.Putovanje)
              .ToListAsync();

              var karte2=karte1.Select(p=>
                new
                {
                    ID=p.ID,
                    tipKarte=p.TipKarte,
                    cena=p.Cena,
                    PutovanjeID=p.Putovanje.ID,


                }
              ).ToList();
              return Ok(karte2);
           }
           catch(Exception e)
           {
               return BadRequest("Greška: "+e.Message);
           }
       }

    

     
       

    }
}