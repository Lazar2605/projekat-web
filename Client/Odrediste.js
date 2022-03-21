export class Odrediste{

    constructor(id, naziv, autobuskaStanicaID)
    {
        this.id=id;
        this.naziv=naziv;
        this.autobuskaStanicaID=autobuskaStanicaID;
        this.putovanja=[];
        this.kontejner=null;
    }

    dodajPutovanje(putovanje)
    {
        if(this.id===putovanje.odredisteID)
            this.putovanja.push(putovanje);
    }
}