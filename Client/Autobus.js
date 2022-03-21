export class Autobus
{

    constructor(id, prevoznik, kapacitet)
    {
        this.id=id;
        this.prevoznik=prevoznik;
        this.kapacitet=kapacitet;
        this.putovanja=[];
    }

    dodajPutovanje(putovanje)
    {
        if(this.id===putovanje.autobusID)
            this.putovanja.push(putovanje);
    }
}