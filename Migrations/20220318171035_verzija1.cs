using Microsoft.EntityFrameworkCore.Migrations;

namespace projekat.Migrations
{
    public partial class verzija1 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Autobusi",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Prevoznik = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Kapacitet = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Autobusi", x => x.ID);
                });

            migrationBuilder.CreateTable(
                name: "Autobuska stanica",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Ime = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Autobuska stanica", x => x.ID);
                });

            migrationBuilder.CreateTable(
                name: "Odredista",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Naziv = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    AutobuskaStanicaID = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Odredista", x => x.ID);
                    table.ForeignKey(
                        name: "FK_Odredista_Autobuska stanica_AutobuskaStanicaID",
                        column: x => x.AutobuskaStanicaID,
                        principalTable: "Autobuska stanica",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Putovanja",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    VremePolaska = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    VremeTrajanjaPuta = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    brojPeronaPolaska = table.Column<int>(type: "int", nullable: false),
                    AutobusID = table.Column<int>(type: "int", nullable: true),
                    OdredisteID = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Putovanja", x => x.ID);
                    table.ForeignKey(
                        name: "FK_Putovanja_Autobusi_AutobusID",
                        column: x => x.AutobusID,
                        principalTable: "Autobusi",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Putovanja_Odredista_OdredisteID",
                        column: x => x.OdredisteID,
                        principalTable: "Odredista",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Karte",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    TipKarte = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Cena = table.Column<int>(type: "int", nullable: false),
                    PutovanjeID = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Karte", x => x.ID);
                    table.ForeignKey(
                        name: "FK_Karte_Putovanja_PutovanjeID",
                        column: x => x.PutovanjeID,
                        principalTable: "Putovanja",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Rezervacije",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    DatumPolaska = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CenaRezervacije = table.Column<int>(type: "int", nullable: false),
                    brojRezervacije = table.Column<int>(type: "int", nullable: false),
                    PutID = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Rezervacije", x => x.ID);
                    table.ForeignKey(
                        name: "FK_Rezervacije_Putovanja_PutID",
                        column: x => x.PutID,
                        principalTable: "Putovanja",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Sedista",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    BrojSedista = table.Column<int>(type: "int", nullable: false),
                    RezervacijaID = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Sedista", x => x.ID);
                    table.ForeignKey(
                        name: "FK_Sedista_Rezervacije_RezervacijaID",
                        column: x => x.RezervacijaID,
                        principalTable: "Rezervacije",
                        principalColumn: "ID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Karte_PutovanjeID",
                table: "Karte",
                column: "PutovanjeID");

            migrationBuilder.CreateIndex(
                name: "IX_Odredista_AutobuskaStanicaID",
                table: "Odredista",
                column: "AutobuskaStanicaID");

            migrationBuilder.CreateIndex(
                name: "IX_Putovanja_AutobusID",
                table: "Putovanja",
                column: "AutobusID");

            migrationBuilder.CreateIndex(
                name: "IX_Putovanja_OdredisteID",
                table: "Putovanja",
                column: "OdredisteID");

            migrationBuilder.CreateIndex(
                name: "IX_Rezervacije_PutID",
                table: "Rezervacije",
                column: "PutID");

            migrationBuilder.CreateIndex(
                name: "IX_Sedista_RezervacijaID",
                table: "Sedista",
                column: "RezervacijaID");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Karte");

            migrationBuilder.DropTable(
                name: "Sedista");

            migrationBuilder.DropTable(
                name: "Rezervacije");

            migrationBuilder.DropTable(
                name: "Putovanja");

            migrationBuilder.DropTable(
                name: "Autobusi");

            migrationBuilder.DropTable(
                name: "Odredista");

            migrationBuilder.DropTable(
                name: "Autobuska stanica");
        }
    }
}
