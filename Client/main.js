import { Stanica } from "./Stanica.js";
import { Odrediste } from "./Odrediste.js";
import { Autobus } from "./Autobus.js";
import { Putovanje } from "./Putovanje.js";
import { Karta } from "./Karta.js";
import { AutobuskaStanice } from "./AutobuskeStanice.js";

var listaStanica=[];
var listaOdredista=[];
//var listaOdredista2=[];
var listaAutobusa=[];
var listaPutovanja=[];
var listaKarata=[];

fetch("https://localhost:5001/AutobuskaStanica/PreuzmiStanice")
.then(s=>
    {
        s.json().then(stanice=>
            {
                stanice.forEach(stanica => 
                    {
                        var s=new Stanica(stanica.id, stanica.ime);
                        listaStanica.push(s);
                    });
                    

                    fetch("https://localhost:5001/AutobuskaStanica/PreuzmiSvaOdredišta")
                    .then(o=>
                        {
                            o.json().then(odredista=>
                                {
                                    odredista.forEach(odrediste=>
                                        {
                                            var o=new Odrediste(odrediste.id, odrediste.naziv, odrediste.autobuskaStanicaID);
                                            listaOdredista.push(o);
                                        });
                                        

                                        
                                                        
                                        

                                        fetch("https://localhost:5001/Put/PreuzmiAutobuse")
                                        .then(a=>
                                            {
                                                a.json().then(autobusi=>
                                                    {
                                                        autobusi.forEach(autobus=>
                                                            {
                                                                var a=new Autobus(autobus.id, autobus.prevoznik, autobus.kapacitet)
                                                                listaAutobusa.push(a);
                                                            });

                                                           fetch("https://localhost:5001/Put/PreuzmiSvaPutovanja")
                                                           .then(p=>
                                                            {
                                                                p.json().then(putovanja=>
                                                                    {
                                                                        putovanja.forEach(putovanje=>
                                                                            {
                                                                                var p=new Putovanje(putovanje.id,putovanje.vremePolaska, putovanje.vremeTrajanjaPuta, putovanje.brojPeronaPolaska, putovanje.autobusID, putovanje.odredisteID)
                                                                                listaPutovanja.push(p);
                                                                            });

                                                                            fetch("https://localhost:5001/Put/PreuzmiSveKarte")
                                                                            .then(k=>
                                                                                {
                                                                                    k.json().then(karte=>
                                                                                        {
                                                                                            karte.forEach(karta=>
                                                                                                {
                                                                                                    var k=new Karta(karta.id, karta.tipKarte, karta.cena, karta.putovanjeID);
                                                                                                    listaKarata.push(k);
                                                                                                });

                                                                                                                        listaOdredista.forEach(o=>
                                                                                                                        {
                                                                                                                            listaStanica.forEach(s=>
                                                                                                                                {
                                                                                                                                    s.dodajOdrediste(o);
                                                                                                                                })
                                                                                                                        })
                                                                                                                       
                                                                                                                    
                                                                                                                    listaPutovanja.forEach(p=>
                                                                                                                        {
                                                                                                                            listaOdredista.forEach(o=>
                                                                                                                                {
                                                                                                                                    o.dodajPutovanje(p);
                                                                                                                                })
                                                                                                                        })
                                                                                                                        
                                                                                                                    
                                                                                                                    listaPutovanja.forEach(p=>
                                                                                                                        {
                                                                                                                            listaAutobusa.forEach(a=>
                                                                                                                                {
                                                                                                                                    a.dodajPutovanje(p);
                                                                                                                                })
                                                                                                                        })
                                                                                                                    
                                                                                                                    listaKarata.forEach(k=>
                                                                                                                        {
                                                                                                                            listaPutovanja.forEach(p=>
                                                                                                                                 {
                                                                                                                                    p.dodajKartu(k);
                                                                                                                                })
                                                                                                                         })
                                                                                                                  

                                                                                                                        const stanice=new AutobuskaStanice(listaStanica, listaOdredista, listaAutobusa, listaPutovanja, listaKarata);
                                                                                                                        stanice.crtajStanicu(document.body);
                                                                                        })})
                                    })
                                })
                             })
                        })
                     })
                 })
            })
         })
   



    /*console.log(listaStanica);
    console.log(listaOdredista1);
    console.log(listaOdredista2);
    console.log(listaAutobusa);
    console.log(listaPutovanja);
    console.log(listaKarata);*/
    