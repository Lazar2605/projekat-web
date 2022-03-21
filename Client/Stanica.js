export class Stanica{

    constructor(id, naziv)
    {
        this.id=id;
        this.naziv=naziv;
        this.odredista=[];
    }

    dodajOdrediste(odrediste)
    {
        if(this.id===odrediste.autobuskaStanicaID)
            this.odredista.push(odrediste);
    }
}