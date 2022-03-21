export class AutobuskaStanice
{

    constructor(listaStanica, listaOdredista, listaAutobusa, listaPutovanja, listaKarata)
    {
        this.listaStanica=listaStanica;
        this.listaOdredista=listaOdredista;
        this.listaAutobusa=listaAutobusa;
        this.listaPutovanja=listaPutovanja;
        this.listaKarata=listaKarata;
        this.kontejner=null;
        this.manjiKontejner1=null;
        this.manjiKontejner2=null;
        this.manjiKontejner0=null;
    }

    crtajStanicu(host)
    {
        this.kontejner=document.createElement("div");
        this.kontejner.className="GlavniKontejner";
        host.appendChild(this.kontejner);
        let manjiKontejner0=document.createElement("div");
        manjiKontejner0.className="ManjiKont0";
        this.kontejner.appendChild(manjiKontejner0);
        let manjiKontejner1=document.createElement("div");
        manjiKontejner1.className="ManjiKont1";
        this.kontejner.appendChild(manjiKontejner1);
        let manjiKontejner2=document.createElement("div");
        manjiKontejner2.className="ManjiKont2";
        this.kontejner.appendChild(manjiKontejner2);
        let manjiKontejner3=document.createElement("div");
        manjiKontejner3.className="ManjiKont3";
        this.kontejner.appendChild(manjiKontejner3);
        
        this.manjiKontejner0=manjiKontejner0;
        this.manjiKontejner1=manjiKontejner1;
        this.manjiKontejner2=manjiKontejner2;
        this.manjiKontejner3=manjiKontejner3;

        this.crtajManjiKontejner0();
        
    }
    crtajManjiKontejner0()
    {

        let red=this.crtajRed(this.manjiKontejner0,"redPocetni");
        let labela=this.crtajLabelu(red,"Dobrodošli na sajt za rezervaciju autobuskih karata!","labelaPocetna");
        let labela1=this.crtajLabelu(red,"Izaberite jednu od opcija:","labelaPocetna2");
        let redDugmici=this.crtajRed(this.manjiKontejner0,"redDugmici");
        let dugmeRezervisiKartu=this.crtajDugme(redDugmici,"Rezerviši kartu","dugmeRezervisiKartu");
        let dugmeIzmeniRezervaciju=this.crtajDugme(redDugmici,"Izmeni Rezervaciju","dugmeIzmeniRezervaciju");
        let dugmeObrisiRezervaciju=this.crtajDugme(redDugmici,"Obriši Rezervaciju","dugmeObrisiRezervaciju");

        dugmeRezervisiKartu.onclick=(ev)=>
        {
           
            this.crtajManjiKontejner1();
            
        }
        dugmeObrisiRezervaciju.onclick=(ev)=>
        {
            this.crtajManjiKontejner3ZaBrisanje();
        }

        dugmeIzmeniRezervaciju.onclick=(ev)=>
        {
            this.crtajManjiKontejner3ZaIzmenu();
        }
    }
    crtajManjiKontejner1()
    {
        this.obrisiRedIzmena();
        this.obrisiRedIzmeni();
        this.obrisiRedObrisi();
        this.obrisiRedStanica();
        this.obrisiRedStanica2();
        this.obrisiRedOdrediste();
        this.obrisiRedLabelaDatum();
        this.obrisiRedIzaberiDatum();
        this.obrisiRedDugmeIzaberi();
        this.obrisiTabelu();
        this.obrisiRedIzaberiBrojKarata();
        this.obrisiRedSedista();
        this.obrisiRedKarte();

        let redStanica=this.crtajRed(this.manjiKontejner1,"redStanica");
        this.crtajLabelu(redStanica, "Autobuska stanica: ", "labelaStanica");
        let selektStanica=this.crtajSelekt(redStanica, "selektStanica");
        this.listaStanica.forEach(s => 
        {
            this.crtajOpciju(selektStanica, s);
            
        });
        let redStanica2=this.crtajRed(redStanica,"redStanica2");
        let dugmeIzaberiStanicu=this.crtajDugme(redStanica2,"Izaberi stanicu","dugmeIzaberiStanicu");
        //let redOdrediste=this.crtajRed(this.manjiKontejner1,"redOdrediste");
        
       

        dugmeIzaberiStanicu.onclick=(ev)=>this.izaberiStanicu();

    }

    crtajManjiKontejner3ZaBrisanje()
    {
        this.obrisiRedIzmena();
        this.obrisiRedIzmeni();
        this.obrisiRedObrisi();
        this.obrisiRedStanica();
        this.obrisiRedStanica2();
        this.obrisiRedOdrediste();
        this.obrisiRedLabelaDatum();
        this.obrisiRedIzaberiDatum();
        this.obrisiRedDugmeIzaberi();
        this.obrisiTabelu();
        this.obrisiRedIzaberiBrojKarata();
        this.obrisiRedSedista();
        this.obrisiRedKarte();

        let redObrisi=this.crtajRed(this.manjiKontejner3,"redObrisi");
        

        let labelaObrisi=this.crtajLabelu(redObrisi,"Upiši broj rezervacije: ","labelaObrisi");
        let inputObrisi=document.createElement("input");
        inputObrisi.type="number";
        inputObrisi.className="inputObrisi";
        redObrisi.appendChild(inputObrisi);

        let redDugmeObrisiRezervaciju=this.crtajRed(redObrisi,"redDugmeObrisiRezervaciju");
        let dugmeObrisiRezervaciju=this.crtajDugme(redDugmeObrisiRezervaciju,"Obriši","dugmeObrisiRezervaciju1");

        dugmeObrisiRezervaciju.onclick=(ev)=>this.obrisiRezervaciju(inputObrisi);
    }

    crtajManjiKontejner3ZaIzmenu()
    {
        this.obrisiRedIzmena();
        this.obrisiRedIzmeni();
        this.obrisiRedObrisi();
        this.obrisiRedStanica();
        this.obrisiRedStanica2();
        this.obrisiRedOdrediste();
        this.obrisiRedLabelaDatum();
        this.obrisiRedIzaberiDatum();
        this.obrisiRedDugmeIzaberi();
        this.obrisiTabelu();
        this.obrisiRedIzaberiBrojKarata();
        this.obrisiRedSedista();
        this.obrisiRedKarte();

        
        let redIzmeni=this.crtajRed(this.manjiKontejner3,"redIzmeni");

        let labelaIzmeni=this.crtajLabelu(redIzmeni,"Upiši broj rezervacije: ","labelaIzmeni");
        let inputIzmeni=document.createElement("input");
        inputIzmeni.type="number";
        inputIzmeni.className="inputIzmeni";
        redIzmeni.appendChild(inputIzmeni);

        let redDugmeIzmeniRezervaciju=this.crtajRed(redIzmeni,"redDugmeIzmeniRezervaciju");
        let dugmeIzmeniRezervaciju=this.crtajDugme(redDugmeIzmeniRezervaciju,"Izmeni","dugmeIzmeniRezervaciju1");

        dugmeIzmeniRezervaciju.onclick=(ev)=>this.izmeniRezervaciju(inputIzmeni);

    }
    obrisiRezervaciju(brojRezervacije)
    {   

        if(brojRezervacije.value===null || brojRezervacije.value===undefined || brojRezervacije.value==="")
        {
            alert("Unesite broj rezervacije");
            return;

        }
        else
        {
           let value=brojRezervacije.value;
           
            

            fetch("https://localhost:5001/Rezervacija/ObrisiRezervaciju/"+value,
            {
                method:"DELETE"
            }).then(r=>
                {
                    if(r.status==200)
                    {
                        alert("Uspešno brisanje rezervacije.");
                        this.obrisiRedObrisi();
                    }

                    else 
                        alert("Nema rezervacije sa tim brojem rezervacije")
                })
            
        }
        
    }

    izmeniRezervaciju(brojRezervacije)
    {   

        this.obrisiRedIzmena();
        
        if(brojRezervacije.value===null || brojRezervacije.value===undefined || brojRezervacije.value==="")
        {
            alert("Unesite broj rezervacije");
            return;

        }
        else
        {
           let value=brojRezervacije.value;
           let flag=0;
           let putovanjeID=0;
           let datumPolaska="";
           let rezervacijaID=0;
           let listaSedistaZaPutovanje=[];
           let listaSedistaZaRezervaciju=[];
           let kapacitet;
           let autobusID;
           let broj;

           
        fetch("https://localhost:5001/Rezervacija/PreuzmiSveRezervacije",
        {
            method:"GET"
        }).then(r=>
            {
                r.json().then(rez=>
                    {
                        rez.forEach(rezervacija=>
                        {       
                            if(rezervacija.brojRezervacije==value)
                            {
                                flag=1;
                                putovanjeID=rezervacija.putovanjeID;
                                datumPolaska=rezervacija.datumPolaska;
                                rezervacijaID=rezervacija.id;
                               
                            }
 
                        })
                    

                        if(flag==0)
                        {
                            alert("Nema rezervacije sa tim brojem");
                            return;
                        }

                        
        
                        fetch("https://localhost:5001/Rezervacija/PreuzmiRezervacijeSedišta/"+putovanjeID+"/"+datumPolaska,
            
                        {
                            method:"GET"

                        }).then(p=>
                                {
                                    p.json().then(d1=>
                                        {
                            
                                        d1.forEach(d2=>
                                            {
                                    
                                                d2.forEach(d3=>
                                                    {
                                                        if(rezervacijaID==d3.rezervacijaID)
                                                        {
                                                            listaSedistaZaRezervaciju.push(d3.brojSedista);
                                                            broj=listaSedistaZaRezervaciju.length;
                                                        }
                                                        else
                                                        listaSedistaZaPutovanje.push(d3.brojSedista);
                                                        
                                            
                                                    })
                                            })
                                            
                                           

                                            let brojac=0;
                                            let dugmeSediste;
                                            let redIzmena=this.crtajRed(this.manjiKontejner3,"redIzmena");
                                            let redRezervacija2=this.crtajRed(redIzmena,"redRezervacija2");

                                            let labela=this.crtajLabelu(redRezervacija2,"Broj sedišta: "+broj);

                                            let putovanje=this.listaPutovanja.filter(p=>p.id==putovanjeID);


                                            putovanje.forEach(p=>
                                                {
                                                    autobusID=p.autobusID;
                                                })

                                            
                                            let autobus=this.listaAutobusa.filter(a=>a.id==autobusID); 

                                            autobus.forEach(a=>
                                                {
                                                    kapacitet=a.kapacitet;
                                                })
                                            

                                            for(let i=0; i<kapacitet/4-1; i++)
                                            {
                                                let redUAutobusu=this.crtajRed(redRezervacija2,"redUAutobusu");
                                                for(let j=0; j<5;j++)
                                                {
                                                    if(i<(kapacitet/4-2))
                                                    {
                                                        if(j!=2)
                                                        {
                                                            if(j==1)
                                                            {
                                                                dugmeSediste=this.crtajDugme(redUAutobusu,++brojac,"sedisteBusDrugo");
                                                                
                                                                
                                                            }
                                                            else
                                                            {
                                                                dugmeSediste=this.crtajDugme(redUAutobusu,++brojac,"sedisteBus");
                                                            }
                                        
                                                        }
                                                    }
                                                    else
                                                    {
                                                        dugmeSediste=this.crtajDugme(redUAutobusu,++brojac,"sedisteBus");
                                                    }
                                                
                                                }
                                            }

                                            let i=0;
                                            let dugmici
                                            let redKarte=this.crtajRed(redIzmena,"redKarte1");
                                            dugmici=redRezervacija2.querySelectorAll("button");

                                        listaSedistaZaPutovanje.forEach((rs,i)=>
                                        {
                                            dugmici[listaSedistaZaPutovanje[i]-1].style.background='#000000';
                                            dugmici[listaSedistaZaPutovanje[i]-1].disabled=true;
                                            
                                            
                                            
                                        })
                                        
                                            let nizBrojevaSedista=[];

                                            dugmici.forEach((b,indeks)=>
                                                {
                                                    
                                                    b.onclick=(ev)=>
                                                    {
                                                        
                                                        if(++i>broj)
                                                        {
                                                            alert("Nije moguće rezervisati više od "+broj+ " karata.");
                                                            return;
                                                        }
                                                    dugmici[indeks].style.background='#ff0000';
                                                    dugmici[indeks].disabled=true;
                                                    nizBrojevaSedista.push(indeks+1);
                                                    this.crtajDugmePotvrdiIzmenu(dugmici,indeks,redKarte,i,broj,nizBrojevaSedista,rezervacijaID);
                                                }
                                                });



                                        })

                                        
                                    })


                                })
                            
            })


    
        }
    }

    crtajDugmePotvrdiIzmenu(dugmici, indeks, redKarte, i, broj, nizBrojevaSedista, rezervacijaID)
    {
        if(i==broj)
        {
        let dugmePotvrdiIzmenu=this.crtajDugme(redKarte,"Potvrdi izmenu","dugmePotvrdiIzmenu");

        dugmePotvrdiIzmenu.onclick=(el)=>
            {
                fetch("https://localhost:5001/Rezervacija/IzmeniRezervaciju/"+rezervacijaID,
                {
                    method:"PUT",
                    headers:
                    {
                        "Content-Type":"application/json"
                    },
                    body:JSON.stringify(nizBrojevaSedista)
                }).then(r=>
                    {
                        if(r.status==200)
                        {
                            alert("Uspešna izmena rezervacije.");
                            this.obrisiRedIzmena();
                            this.obrisiRedIzmeni();
                        }
                        else 
                            alert("Greška pri izmeni rezervaije.");
                    })
                
            }
        }
        else return;
    }


    crtajRed(host, className)
    {
        let red=document.createElement("div");
        red.className=className;
        host.appendChild(red);
        return red;
    }

    crtajLabelu(host, innerHTML, className)
    {
        let labela=document.createElement("label");
        labela.innerHTML=innerHTML;
        labela.className=className;
        host.appendChild(labela);
        return labela;
    }

    crtajSelekt(host, className)
    {
        let selekt=document.createElement("select");
        selekt.className=className;
        host.appendChild(selekt);
        return selekt;
    }

    crtajOpciju(host, objekat)
    {
        let opcija=document.createElement("option");
        opcija.innerHTML=objekat.naziv;
        opcija.value=objekat.id;
        host.appendChild(opcija);
    }

    crtajDugme(host,innerHTML,className)
    {
        let dugme=document.createElement("button");
        dugme.innerHTML=innerHTML;
        dugme.className=className;
        host.appendChild(dugme);
        return dugme;
    }

    izaberiStanicu()
    {
        this.obrisiRedOdrediste();
        this.obrisiRedLabelaDatum();
        this.obrisiRedIzaberiDatum();
        this.obrisiRedDugmeIzaberi();
        this.obrisiTabelu();
        this.obrisiRedIzaberiBrojKarata();
        this.obrisiRedSedista();
        this.obrisiRedKarte();


        let redOdrediste=this.crtajRed(this.manjiKontejner1,"redOdrediste");
        this.crtajLabelu(redOdrediste,"Odredište: ","labelaOdrediste");
        let selektOdrediste=this.crtajSelekt(redOdrediste,"selektOdrediste");
        
        let redStanica=this.manjiKontejner1.querySelector(".redStanica");
        let opcijaStanica=redStanica.querySelector("select");
        var stanicaID=opcijaStanica.options[opcijaStanica.selectedIndex].value;

        let odredista=this.listaOdredista.filter(o=> o.autobuskaStanicaID==stanicaID)
        
        
        odredista.forEach(odrediste=>
            {
                this.crtajOpciju(selektOdrediste,odrediste);
                
            })
            
        let redDatum=this.crtajRed(redOdrediste,"redDatum");
        this.crtajLabelu(redDatum,"Datum: ","labelaDatum");
        let redIzaberiDatum=this.crtajRed(redDatum,"redIzaberiDatum");

        let dat=document.createElement("input");
        dat.className="inputDatum";
        dat.type="date";
        dat.value="sr-SR";
        dat.id="sr-SR";
        redIzaberiDatum.appendChild(dat);

        
        let redDugmeIzaberi=this.crtajRed(redIzaberiDatum,"redDugmeIzaberi");
        let dugmeIzaberiOdrediste=this.crtajDugme(redDugmeIzaberi,"Izaberi odredište i datum","dugmeIzaberiOdrediste");
  
        dugmeIzaberiOdrediste.onclick=(ev)=>this.izaberiOdredisteIDatum(dat.value,odredista);
    }

    izaberiOdredisteIDatum(datum,odredista)
    {

        this.obrisiTabelu();
        this.obrisiRedIzaberiBrojKarata();
        this.obrisiRedSedista();
        this.obrisiRedKarte();

        const a=Date.now();
        const today=new Date(a);

        const izabraniDatum=new Date(datum);
        var izabraniDatumShort=izabraniDatum+"";
        var todayShort=today+"";
        var niz=izabraniDatumShort.split(" ");
        var niz2=todayShort.split(" ");

        izabraniDatumShort=niz[0]+" "+niz[1]+" "+niz[2]+" "+niz[3];
        todayShort=niz2[0]+" "+niz2[1]+" "+niz2[2]+" "+niz2[3];

        if(izabraniDatumShort==todayShort)
        {
            alert("Karte je moguće rezervisati online bar dan unapred");
            return;
        }

        if(niz[0]!=undefined && niz[1]!=undefined && niz[2]!=undefined && niz[3]!=undefined)
        {
        if(niz[0]=="Mon")
        niz[0]="ponedeljak"
        else if(niz[0]=="Tue")
        niz[0]="utorak";
        else if(niz[0]=="Wed")
        niz[0]="sreda";
        else if(niz[0]=="Thu")
        niz[0]="četvrtak";
        else if(niz[0]=="Fri")
        niz[0]="petak";
        else if(niz[0]=="Sat")
        niz[0]="subota";
        else niz[0]="nedelja";

        if(niz[1]=="Jan")
        niz[1]="januar"
        else if(niz[1]=="Feb")
        niz[1]="februar";
        else if(niz[1]=="Mar")
        niz[1]="mart";
        else if(niz[1]=="Apr")
        niz[1]="april";
        else if(niz[1]=="May")
        niz[1]="maj";
        else if(niz[1]=="Jun")
        niz[1]="jun";
        else if(niz[1]=="Jul")
        niz[1]="jul"
        else if(niz[1]=="Aug")
        niz[1]="avgust";
        else if(niz[1]=="Sep")
        niz[1]="septembar";
        else if(niz[1]=="Oct")
        niz[1]="oktobar";
        else if(niz[1]=="Nov")
        niz[1]="novembar";
        else niz[1]="decembar";
        
        niz[3]=niz[3]+".";
        niz[2]=niz[2]+".";
        }

        izabraniDatumShort=niz[0]+" "+niz[1]+" "+niz[2]+" "+niz[3];
        
        const datumGranica=new Date();
        datumGranica.setDate(today.getDate()+21);
       
        if(niz[0]==undefined || niz[1]==undefined || niz[2]==undefined || niz[3]==undefined)
        {
            alert("Niste izabrali datum!");
            return;
        }

        if(izabraniDatum<today || izabraniDatum>datumGranica)
        {
            alert("Nema putovanja za izabrani datum");
            return;
        }

        else
        {
            let redPutovanje=this.manjiKontejner1.querySelector(".redPutovanje");

            let redStanica=this.manjiKontejner1.querySelector(".redStanica");
            let opcijaStanica=redStanica.querySelector("select");
            var stanicaID=opcijaStanica.options[opcijaStanica.selectedIndex].value;
            let redOdrediste=this.manjiKontejner1.querySelector(".redOdrediste");
            let opcijaOdrediste=redOdrediste.querySelector("select");
            var odredisteText=opcijaOdrediste.options[opcijaOdrediste.selectedIndex].text;

            let prevoznik=[];
            let kapacitet=[];

                   
            this.crtajHeder(odredista,izabraniDatumShort,prevoznik,odredisteText,kapacitet);
                   
        }
   }

    crtajHeder(listaOdredista,datum,prevoznik,odrediste,kapacitet)
    {
        let odredista=listaOdredista.filter(o=>o.naziv==odrediste);
            odredista.forEach(od=>
                {
                    od.putovanja.forEach((p,indeks)=>
                        {
                            
                            if(p.odredisteID==od.id)
                            {
                            
                               let autobusi= this.listaAutobusa.filter(a=>a.id==p.autobusID);
                               autobusi.forEach(a=>
                                {
                                    prevoznik[indeks]=a.prevoznik;
                                    kapacitet[indeks]=a.kapacitet;                                  
                                    
                                })
                            }
                        })
                                var redTabela=this.crtajRed(this.manjiKontejner1,"redTabela");
                                var tabela=document.createElement("table");
                                tabela.className="tabela";
                                redTabela.appendChild(tabela);

                                var tabelaHed=document.createElement("thead");
                                tabela.appendChild(tabelaHed);

                                var tr=document.createElement("tr");
                                tabelaHed.appendChild(tr);

                                var tabelaBadi=document.createElement("tbody");
                                tabelaBadi.className="tabelaPodaci";
                                tabela.appendChild(tabelaBadi);

                                let th;
                                var zaglavlje=["Datum polaska", "Vreme polaska", "Vreme trajanja puta", "Broj perona polaska", "Prevoznik", "Odredište"];
                                zaglavlje.forEach(element=>
                                    {
                                        th=document.createElement("th");
                                        th.innerHTML=element;
                                        tr.appendChild(th);
                                    })

                                    fetch("https://localhost:5001/Put/PreuzmiPutovanjaZaOdrediste/"+od.id,
                                    {
                                        method:"GET"
                                    }).then(p=>
                                        {
                                            p.json().then(el1=>
                                                {
                                                    el1.forEach((el,i)=>
                                                        {
                                                            
                                                            this.crtajTabelu(tabelaBadi,datum,el.vremePolaska,el.vremeTrajanjaPuta, el.brojPeronaPolaska, prevoznik[i], odrediste,el,kapacitet[i]);
                                                        })
                                                })
                                        })                                
                            
                        })
    }

    crtajTabelu(host,datum,vremePolaska,vremeTrajanjaPuta,brojPeronaPolaska,prevoznik,odrediste, putovanje, kapacitet)
    {
        var tr=document.createElement("tr");
        host.appendChild(tr);

        var podatak=document.createElement("td");
        podatak.innerHTML=datum;
        tr.appendChild(podatak);

        var podatak=document.createElement("td");
        podatak.innerHTML=vremePolaska;
        tr.appendChild(podatak);

        var podatak=document.createElement("td");
        podatak.innerHTML=vremeTrajanjaPuta;
        tr.appendChild(podatak);

        var podatak=document.createElement("td");
        podatak.innerHTML=brojPeronaPolaska;
        tr.appendChild(podatak);

        var podatak=document.createElement("td");
        podatak.innerHTML=prevoznik;
        tr.appendChild(podatak);

        var podatak=document.createElement("td");
        podatak.innerHTML=odrediste;
        tr.appendChild(podatak);

        let dugmeRezervisi=this.crtajDugme(tr,"Rezerviši","dugmeRezervisi");
        dugmeRezervisi.onclick=(el)=>
        {
            this.izaberiBrojKarta(datum,putovanje,kapacitet,odrediste,prevoznik);
        }
        

    }
        izaberiBrojKarta(datum,putovanje,kapacitet,odrediste,prevoznik)
        {
            
            this.obrisiRedIzaberiBrojKarata();
            this.obrisiRedSedista();
            this.obrisiRedKarte();

            let redRezervacija=this.crtajRed(this.manjiKontejner1,"redRezervacija1")
            let redIzaberiBrojKarata=this.crtajRed(redRezervacija,"redIzaberiBrojKarata");
            let labelaBrojKarata=this.crtajLabelu(redIzaberiBrojKarata,"Izaberi broj karata koje želiš da rezervišeš: ","labelaBrojKarata");
            let selektBrojKarata=this.crtajSelekt(redIzaberiBrojKarata, "selektBrojKarata");
            let brojKarata=[1,2,3,4,5,6];
            let opcija;
            brojKarata.forEach(bk => 
            {
                opcija=document.createElement("option");
                opcija.innerHTML=bk;
                opcija.value=bk;
                selektBrojKarata.appendChild(opcija);
                
            });
            let redDrugi=this.crtajRed(redRezervacija,"redDrugi");
            let dugmeIzaberiBrojKarata=this.crtajDugme(redDrugi,"Izaberi sedišta","dugmeIzaberiBrojKarata");

            dugmeIzaberiBrojKarata.onclick=(el)=>
            {
                this.izaberiSedista(datum,putovanje,kapacitet,odrediste,prevoznik);
            }
        }

        izaberiSedista(datum,putovanje,kapacitet,odrediste,prevoznik)
    {

        this.obrisiRedSedista();
        this.obrisiRedKarte();

        let redBrojKarata=this.manjiKontejner1.querySelector(".redRezervacija1");
        let opcija=redBrojKarata.querySelector("select");
        var broj=opcija.options[opcija.selectedIndex].value;
        
        let rezervisanaSedista=[];
        
            fetch("https://localhost:5001/Rezervacija/PreuzmiRezervacijeSedišta/"+putovanje.id+"/"+datum,
            
            {
                method:"GET"

            }).then(p=>
                {
                    p.json().then(d1=>
                        {
                            
                            d1.forEach(d2=>
                                {
                                    
                                    d2.forEach(d3=>
                                        {
                                            rezervisanaSedista.push(d3.brojSedista);
                                            
                                          
                                        })
                                })
        let brojac=0;
        let dugmeSediste;
        let redRezervacija2=this.crtajRed(this.manjiKontejner2,"redRezervacija2");
        

        for(let i=0; i<kapacitet/4-1; i++)
        {
            let redUAutobusu=this.crtajRed(redRezervacija2,"redUAutobusu");
            for(let j=0; j<5;j++)
            {
                if(i<(kapacitet/4-2))
                {
                    if(j!=2)
                    {
                        if(j==1)
                        {
                             dugmeSediste=this.crtajDugme(redUAutobusu,++brojac,"sedisteBusDrugo");
                            
                             
                        }
                         else
                        {
                             dugmeSediste=this.crtajDugme(redUAutobusu,++brojac,"sedisteBus");
                        }
    
                    }
                }
                else
                {
                     dugmeSediste=this.crtajDugme(redUAutobusu,++brojac,"sedisteBus");
                }
               
            }
        }
        
        let i=0;
        let dugmici
        let redKarte=this.crtajRed(this.manjiKontejner2,"redKarte");
        dugmici=redRezervacija2.querySelectorAll("button");

       rezervisanaSedista.forEach((rs,i)=>
       {
           dugmici[rezervisanaSedista[i]-1].style.background='#000000';
           dugmici[rezervisanaSedista[i]-1].disabled=true;
           
           
           
       })
    
        let nizBrojevaSedista=[];

        dugmici.forEach((b,indeks)=>
            {
                
                b.onclick=(ev)=>
                {
                    if(i+1>broj)
                    {
                        alert("Nije moguće rezervisati više od "+broj+ " karata.");
                        return;
                    }
                dugmici[indeks].disabled=true;
                nizBrojevaSedista.push(indeks+1);
                this.obojiDugme(datum,dugmici,putovanje,indeks,redKarte,++i,broj,nizBrojevaSedista,odrediste,prevoznik);
            }
            });

        
       
        })
                         
    })
        

    }
    

    obojiDugme(datum,dugmici,putovanje,indeks,redKarte,i,broj,nizBrojevaSedista,odrediste,prevoznik)
    {
        
        
        dugmici[indeks].style.background='#ff0000';
        if(i==broj)
        {
        let dugmeIzaberiSedista=this.crtajDugme(redKarte,"Izaberi tip karte","dugmeIzaberiSedista");

        dugmeIzaberiSedista.onclick=(el)=>
            {
                dugmeIzaberiSedista.disabled=true;
                this.crtajKarte(datum,putovanje,redKarte,i,nizBrojevaSedista,odrediste,prevoznik);
            }
        }
        else return;
    }
            

    crtajKarte(datum,putovanje,redKarte,i,nizBrojevaSedista,odrediste,prevoznik)
    {
        for(let k=0;k<i;k++)
        {
        this.obrisiRedKarta();
        this.obrisiRedRadio();
        }
              
        let karte=this.listaKarata.filter(k=> k.putovanjeID==putovanje.id)
       
        
        for(let j=1;j<i+1;j++)
        {
        let redKarta=this.crtajRed(redKarte,"redKarta");
        let labela=this.crtajLabelu(redKarta,"Karta "+j+":","labelaKarta");
        
        let redRadio=this.crtajRed(redKarte,"redRadio");
        

        
        karte.forEach((k,indeks)=>
            {
                let redJedanRadio=this.crtajRed(redRadio,"redJedanRadio");
                let labelaRadio=this.crtajLabelu(redRadio,k.tipKarte+" ("+k.cena+"RSD)","labelaRadio");
                let radioBaton=document.createElement("input");
                radioBaton.type="radio";
                radioBaton.value=indeks;
                radioBaton.name="nejm"+j;
                radioBaton.className="radio";
                redRadio.appendChild(radioBaton);   
                if(indeks===0)
                {
                    radioBaton.checked=true;
                }  
          })
        }
        let dugmeIzaberiKarte=this.crtajDugme(redKarte,"Potvrdi rezervaciju","dugmePotvrdiRezervaciju");
        dugmeIzaberiKarte.onclick=(el)=>
            {
               
                this.dodajRezervaciju(datum,putovanje,nizBrojevaSedista,karte,odrediste,prevoznik);
            }
                   
    }
    dodajRezervaciju(datum,putovanje,nizBrojevaSedista,karte,odrediste,prevoznik)
    {
        
        
        let brojeviSedistaiKarteID=[];
        let vrednost;

        nizBrojevaSedista.forEach(nbs=>
            {
                brojeviSedistaiKarteID.push(nbs);
            })
        
        let rbt=this.manjiKontejner2.querySelectorAll(".redRadio");
        
        rbt.forEach((r,indeks)=>
            {
                
                vrednost=rbt[indeks].querySelector("input[type='radio']:checked").value;
                

                brojeviSedistaiKarteID.push(karte[vrednost].id);
                
                
            })
              
        var brojRezervacije=Math.floor(1000000+Math.random()*9000000);
        
        var rezervacijaID;
        var cena;
        var datumPolaska;
        let i=0;
    
        fetch("https://localhost:5001/Rezervacija/PreuzmiSveRezervacije",
        {
            method:"GET"
        }).then(r=>
            {
                r.json().then(rez=>
                    {
                        while(i!=1)
                        {
                            i=1;
                            rez.forEach(rezervacija=>
                            {
                        
                                
                            if(rezervacija.brojRezervacije==brojRezervacije)
                                {
                                    brojRezervacije=Math.floor(1000000+Math.random()*9000000);
                                    i=0;
                                }
                            
                                 
                    
                            })
                        }
                        
            fetch("https://localhost:5001/Rezervacija/DodajRezervaciju/"+putovanje.id+"/"+datum+"/"+brojRezervacije,
            {
                method:"POST",
                headers:{
                    "Content-Type":"application/json"
                },
                body:JSON.stringify(brojeviSedistaiKarteID)
                
            }).then(r=>
                {
                   if(r.status===200)
                   {
                    r.json().then(rez=>
                        {
                            rezervacijaID=rez.id,
                            datumPolaska=rez.datum,
                            cena=rez.cenaRezervacije;

                            alert("Uspešno ste izvršili rezervaciju.\nBroj rezervacije: "+brojRezervacije+".\nCena rezervacije: "+cena+" RSD.\nDatum polaska: "+datumPolaska+"\nVreme polaska: "+putovanje.vremePolaska+".\nOdredište: "+odrediste+".\nPrevoznik: "+prevoznik+".\nBrojevi sedišta: "+nizBrojevaSedista+".");
                            this.obrisiRedStanica();
                            this.obrisiRedStanica2();
                            this.obrisiRedOdrediste();
                            this.obrisiRedLabelaDatum();
                            this.obrisiRedIzaberiDatum();
                            this.obrisiRedDugmeIzaberi();
                            this.obrisiTabelu();
                            this.obrisiRedIzaberiBrojKarata();
                            this.obrisiRedSedista();
                            this.obrisiRedKarte();
                    
                        })
                    }
                })
                .catch(p=>
                    {
                        alert("Greška prilikom rezervisanja");
                    })
                    })
            })               
           
    }
    obrisiRedStanica()
    {
        let redStanica=this.manjiKontejner1.querySelector(".redStanica");
        if(redStanica!=null && redStanica.querySelector("label")!=null && redStanica.querySelector("select")!=null)
        {
            let labela=redStanica.querySelector("label");
            let selekt=redStanica.querySelector("select");
            let roditelj=labela.parentNode;
            roditelj.removeChild(labela);
            roditelj.removeChild(selekt);
            this.manjiKontejner1.removeChild(redStanica);
        }

    }
    obrisiRedStanica2()
    {
        let redStanica2=this.manjiKontejner1.querySelector(".redStanica2");
        if(redStanica2!=null && redStanica2.querySelector("button")!=null)
        {
            let baton=redStanica2.querySelector("button");
            let roditelj=baton.parentNode;
            roditelj.removeChild(baton);
            this.manjiKontejner1.removeChild(redStanica2);
        }

    }

    obrisiRedOdrediste()
    {
        let redOdrediste=this.manjiKontejner1.querySelector(".redOdrediste");
        if(redOdrediste!=null && redOdrediste.querySelector("label")!=null && redOdrediste.querySelector("select")!=null)
        {
            let labela=redOdrediste.querySelector("label");
            let selekt=redOdrediste.querySelector("select");
            let roditelj=labela.parentNode;
            roditelj.removeChild(labela);
            roditelj.removeChild(selekt);
            
        }
    }

    obrisiRedLabelaDatum()
    {
        let redDatum=this.manjiKontejner1.querySelector(".redDatum");
        if(redDatum!=null && redDatum.querySelector("label")!=null)
        {
            let labela=redDatum.querySelector("label");
            let roditelj=labela.parentNode;
            roditelj.removeChild(labela);           
        }
    }

    obrisiRedIzaberiDatum()
    {
        let redIzaberiDatum=this.manjiKontejner1.querySelector(".redIzaberiDatum");
        if(redIzaberiDatum!=null && redIzaberiDatum.querySelector("input")!=null)
        {
            let input=redIzaberiDatum.querySelector("input");
            let roditelj=input.parentNode;
            roditelj.removeChild(input);           
        }
    }

    obrisiRedDugmeIzaberi()
    {
        let redOdrediste=this.manjiKontejner1.querySelector(".redOdrediste");
        let redDatum=this.manjiKontejner1.querySelector(".redDatum");
        let redIzaberiDatum=this.manjiKontejner1.querySelector(".redIzaberiDatum");
        let redDugmeIzaberi=this.manjiKontejner1.querySelector(".redDugmeIzaberi");
        if(redDugmeIzaberi!=null && redDugmeIzaberi.querySelector("button")!=null)
        {
            let dugme=redDugmeIzaberi.querySelector("button");
            let roditelj=dugme.parentNode;
            roditelj.removeChild(dugme); 
            redIzaberiDatum.removeChild(redDugmeIzaberi);
            redDatum.removeChild(redIzaberiDatum);
            redOdrediste.removeChild(redDatum);
            this.manjiKontejner1.removeChild(redOdrediste);
           
      }
    }

    obrisiTabelu()
    {
       if(this.manjiKontejner1.querySelector(".redTabela")!=null)
       {
           let tabela=this.manjiKontejner1.querySelector(".redTabela");
           let roditelj=tabela.parentNode;
           roditelj.removeChild(tabela);
       }
    }

    obrisiRedIzaberiBrojKarata()
    {
        let redIzaberiBrojKarata=this.manjiKontejner1.querySelector(".redIzaberiBrojKarata");
        let redRezervacija1=this.manjiKontejner1.querySelector(".redRezervacija1");
        if(redIzaberiBrojKarata!=null && redIzaberiBrojKarata.querySelector("label")!=null && redIzaberiBrojKarata.querySelector("select")!=null)
        {
            let labela=redIzaberiBrojKarata.querySelector("label");
            let selekt=redIzaberiBrojKarata.querySelector("select");
            let roditelj=labela.parentNode;
            roditelj.removeChild(labela);
            roditelj.removeChild(selekt);
            redRezervacija1.removeChild(redIzaberiBrojKarata);
            this.manjiKontejner1.removeChild(redRezervacija1);
        }
    }

    obrisiRedSedista()
    {
        if(this.manjiKontejner2.querySelector(".redRezervacija2")!=null)
        {
            let redSedista=this.manjiKontejner2.querySelector(".redRezervacija2");
            let roditelj=redSedista.parentNode;
            roditelj.removeChild(redSedista);
        }
    }

    obrisiRedKarte()
    {
        if(this.manjiKontejner2.querySelector(".redKarte")!=null)
        {
            let redKarte=this.manjiKontejner2.querySelector(".redKarte");
            let roditelj=redKarte.parentNode;
            roditelj.removeChild(redKarte);
        }
    
    }

    obrisiRedKarta()
    {
        if(this.manjiKontejner2.querySelector(".redKarta")!=null)
        {
            let redKarta=this.manjiKontejner2.querySelector(".redKarta");
            let roditelj=redKarta.parentNode;
            roditelj.removeChild(redKarta);
        }
    }

    obrisiRedRadio()
    {
        if(this.manjiKontejner2.querySelector(".redRadio")!=null)
        {
            let redRadio=this.manjiKontejner2.querySelector(".redRadio");
            let roditelj=redRadio.parentNode;
            roditelj.removeChild(redRadio);
        }
    }

    obrisiRedObrisi()
    {
        if(this.manjiKontejner3.querySelector(".redObrisi")!=null)
        {
            let redObrisi=this.manjiKontejner3.querySelector(".redObrisi");
            let roditelj=redObrisi.parentNode;
            roditelj.removeChild(redObrisi);
        }
    }

    obrisiRedIzmeni()
    {
        if(this.manjiKontejner3.querySelector(".redIzmeni")!=null)
        {
            let redIzmeni=this.manjiKontejner3.querySelector(".redIzmeni");
            let roditelj=redIzmeni.parentNode;
            roditelj.removeChild(redIzmeni);
        }
    }

    obrisiRedIzmena()
    {
        if(this.manjiKontejner3.querySelector(".redIzmena")!=null)
        {
            let redIzmena=this.manjiKontejner3.querySelector(".redIzmena");
            let roditelj=redIzmena.parentNode;
            roditelj.removeChild(redIzmena);
        }
    }



}