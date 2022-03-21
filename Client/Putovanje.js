export class Putovanje{

    constructor(id,vremePolaska, vremeTrajanjaPuta, brojPeronaPolaska, autobusID, odredisteID)
    {
        this.id=id;
        this.vremePolaska=vremePolaska;
        this.vremeTrajanjaPuta=vremeTrajanjaPuta;
        this.brojPeronaPolaska=brojPeronaPolaska;
        this.autobusID=autobusID;
        this.odredisteID=odredisteID;
        this.rezervacije=[];
        this.karte=[];
    }

    dodajRezervaciju(rezervacija)
    {
        if(this.id===rezervacija.putovanje.id)
            this.rezervacije.push(rezervacija);
    }

    dodajKartu(karta)
    {
        if(this.id===karta.putovanjeID)
            this.karte.push(karta);
    }

}