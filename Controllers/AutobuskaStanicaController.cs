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
    public class AutobuskaStanicaController : ControllerBase
    {
       public AutobuskaStanicaContext Context { get; set; }
       public AutobuskaStanicaController(AutobuskaStanicaContext context)
       {
           Context=context;
       }
       [Route("PreuzmiStanice")]
       [HttpGet]
       public async Task<ActionResult> PreuzmiStanice()
       {
           try{
               var stanica=await Context.Stanice
               .Select(p=>
               new{
                   ID=p.ID,
                   Ime=p.Ime
               }).ToListAsync();
               return Ok(stanica);
           }
           catch(Exception e)
           {
               return BadRequest("Greška:" + e.Message);
           }
           
       }
       [Route("PreuzmiSvaOdredišta")]
       [HttpGet]
       public async Task<ActionResult> PreuzmiOdredista()
       {
           try{

               var odredista1=await Context.Odredista
               .Include(p=>p.AutobuskaStanica)
               .ToListAsync();

               var odredista2=odredista1.Select(p=>
               new{
                   ID=p.ID,
                   Naziv=p.Naziv,
                   AutobuskaStanicaID=p.AutobuskaStanica.ID,
            
               }).ToList();
               return Ok(odredista2);
           }
           catch(Exception e)
           {
               return BadRequest("Greška" + e.Message);

           }
           
       }


    }
}
