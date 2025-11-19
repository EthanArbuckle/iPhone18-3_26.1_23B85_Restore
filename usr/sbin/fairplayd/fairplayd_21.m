uint64_t sub_10062EEE0()
{
  STACK[0x9DF8] = ((2 * v1) & 0xDDD7DDCALL) + (v1 ^ 0x53FBFDBC6EEBEEE5) - 0x409168A420202C60;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 + 1705)))();
}

uint64_t sub_10062F0A4()
{
  v0 = STACK[0xF10] + 11600;
  v1 = STACK[0xF10] - 34111;
  LODWORD(STACK[0xA088]) = STACK[0x98D4];
  return (*(STACK[0xF18] + 8 * (v0 ^ v1 ^ 0xA541)))();
}

uint64_t sub_10062F1E4()
{
  v1 = 20249 * (STACK[0xF10] ^ 0x8B39);
  v2 = STACK[0xF10] - 20994;
  LODWORD(STACK[0x3724]) = v0;
  return (*(STACK[0xF18] + 8 * ((47201 * (v0 == (v1 ^ 0xE9D55923))) ^ v2)))();
}

uint64_t sub_10062F2B8()
{
  v3 = STACK[0xF10] - 32213;
  *(STACK[0x3378] + 48) = (((v2 ^ 0x4EC64DBF216FE70BLL) + 0x491D9D5063FF7AF7) ^ ((v2 ^ 0xA43436A2DD2CB62DLL) - 0x5C1019B26043D42FLL) ^ ((v2 ^ 0x1B576D016EC1A162) + 0x1C8CBDEE2C513CA0)) + (*(v0 + (v1 & 0x43420908)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x7B49658091533B91) + 0x981390C2FED9246;
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_10062F42C@<X0>(unint64_t a1@<X8>)
{
  STACK[0x10EE0] = a1;
  LODWORD(STACK[0x10ED8]) = (v1 - 3652) ^ (297845113 * ((((&STACK[0x10000] + 3800) | 0x935C07AF) - ((&STACK[0x10000] + 3800) & 0x935C07A8)) ^ 0xE46F1B31));
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x5435)))(&STACK[0x10ED8]);
  STACK[0x1180] = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10062F5A0()
{
  v1 = ((v0 ^ 0xAC06) + 40399353) * LODWORD(STACK[0x6804]) - 1378563772;
  v2 = 155453101 * ((&STACK[0x10000] + 3800) ^ 0xE6261BCF);
  STACK[0x10F10] = STACK[0x93F0];
  LODWORD(STACK[0x10EF4]) = v2 ^ 0x7CD6B3C8;
  LOWORD(STACK[0x10F00]) = 16376 - 1709 * ((&STACK[0x10000] + 3800) ^ 0x1BCF);
  STACK[0x10EE8] = &STACK[0xF28] ^ 0xB2C981EB4C31130FLL;
  STACK[0x10EE0] = &STACK[0x4948];
  LODWORD(STACK[0x10F08]) = v0 - v2 + 1777255325;
  LODWORD(STACK[0x10ED8]) = v1 ^ v2;
  STACK[0x10EF8] = 0;
  LODWORD(STACK[0x10EF0]) = v2 ^ 0xE4FC015C;
  LODWORD(STACK[0x10F04]) = v2 + 2069619737;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4118)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * v0))(v4);
}

uint64_t sub_10062F6AC()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))(v1);
  return (*(v2 + 8 * (v0 - 19894)))(v3);
}

uint64_t sub_10062F730()
{
  v1 = STACK[0x4294];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393257;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10062F87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  STACK[0x2B38] = 0;
  LOBYTE(STACK[0xB657]) = a7;
  return (*(STACK[0xF18] + 8 * v7))();
}

uint64_t sub_10062F8E0@<X0>(uint64_t a1@<X8>)
{
  v3 = (((v1 ^ 0x6D630A5A) - 1835207258) ^ ((v1 ^ 0x82E1B1DC) + 2099138084) ^ ((v1 ^ 0x6577C97) + v2 - 1323 + ((v2 - 1998364023) & 0x771C4F9B) - 106449501)) + 465063245;
  v4 = ((v3 ^ 0xDC5AB071) + 306694623) ^ v3 ^ ((v3 ^ 0x77FF26F9) - 1176346793) ^ ((v3 ^ 0x41B8E72F) - 1884971391) ^ ((v3 ^ 0xDBFFF7F7) + 367169113);
  *(a1 + 192) = v4 ^ 0xD8374141;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v2 + 14898)))(v4 ^ 0x31E28650);
  *(STACK[0x1E30] + 184) = v6;
  return (*(v5 + 8 * ((248 * (v6 == 0)) ^ v2)))();
}

uint64_t sub_10062FA34@<X0>(int a1@<W8>)
{
  v1 = a1 - 1815264355;
  v2 = *STACK[0x44E8];
  LODWORD(STACK[0x10EE0]) = a1 + 155453101 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x274484B8) + 658801850) ^ 0xC1629F75) + 296753103;
  STACK[0x10ED8] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (a1 + 16271)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (v1 ^ 0x93CDEE9B)))(v4);
}

uint64_t sub_10062FADC@<X0>(unint64_t a1@<X8>)
{
  v3 = v1 - 1476601068;
  LODWORD(STACK[0x10ED8]) = (v3 + 1476571611) ^ (155453101 * ((((&STACK[0x10000] + 3800) | 0x13521193) - ((&STACK[0x10000] + 3800) & 0x13521190)) ^ 0xF5740A5C));
  STACK[0x10EE0] = a1;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v3 + 1476617357)))(&STACK[0x10ED8]);
  *(v2 + 368) = 0;
  return (*(v4 + 8 * ((((v3 - 1062942419) & 0x975DDFF7 ^ 0x58032D09) + v3) ^ (104785 * (v3 > 0xDA216364)))))(v5);
}

uint64_t sub_10062FDA0()
{
  v2 = *(v1 + 8);
  STACK[0x24A8] = v1 + 8;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762661831) ^ (906386353 * ((&STACK[0x10000] + 3800) ^ 0x3101CD24));
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0x47EF)))(&STACK[0x10ED8]);
  STACK[0x7880] = v1 + 264;
  return (*(v3 + 8 * (((*(v1 + 264) == 0) * (v0 - 18188 + (v0 ^ 0xD8B9) - 39934)) ^ v0)))(v4);
}

uint64_t sub_10062FE50()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 35643;
  v3 = 634647737 * ((~&STACK[0x10ED8] & 0x35D72BD1DBB0CCCCLL | &STACK[0x10ED8] & 0xCA28D42E244F3330) ^ 0xEF0C843EB626E330);
  STACK[0x10EE8] = v0 ^ v3;
  STACK[0x10EF0] = 3923101457u - v3;
  LODWORD(STACK[0x10EFC]) = v2 - v3 + 1383217395;
  LODWORD(STACK[0x10EE4]) = (v2 ^ 0x527238BE) + v3;
  LODWORD(STACK[0x10EDC]) = v2 - v3 + 1383213965;
  LODWORD(STACK[0x10ED8]) = -634647737 * ((~&STACK[0x10ED8] & 0xDBB0CCCC | &STACK[0x10ED8] & 0xCA28D42E244F3330) ^ 0xB626E330);
  LODWORD(STACK[0x10EF8]) = v1 - v3 - 1230214699;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 ^ 0x41D7)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * SLODWORD(STACK[0x10EE0])))(v5);
}

uint64_t sub_100630120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 3979 * (STACK[0xF10] ^ 0x8B3F);
  v4 = STACK[0xF10] - 32993;
  *(STACK[0x3080] + 1424) = 3923101457;
  v5 = STACK[0xF18];
  STACK[0x98B8] = *(STACK[0xF18] + 8 * v4);
  return (*(v5 + 8 * (v4 ^ 0x3B06 ^ (21477 * ((v4 ^ 0x9F175049 ^ v3) < 0x246D3984)))))(a1, a2, a3, 0x1D54AEB378980557);
}

uint64_t sub_1006301B0()
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393311;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x754)))();
}

uint64_t sub_100630290()
{
  v2 = v0 - 15216;
  STACK[0x10ED8] = &STACK[0x8538];
  LODWORD(STACK[0x10EE0]) = (v0 - 18711) ^ (906386353 * (((((&STACK[0x10000] + 3800) | 0xB8757302) ^ 0xFFFFFFFE) - (~(&STACK[0x10000] + 3800) | 0x478A8CFD)) ^ 0x768B41D9));
  STACK[0x10EE8] = 0;
  STACK[0x10EF0] = v1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 20574)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_10063044C@<X0>(unint64_t a1@<X8>)
{
  STACK[0x10EE0] = a1;
  LODWORD(STACK[0x10ED8]) = (v1 - 29457) ^ (155453101 * ((~(&STACK[0x10000] + 3800) & 0x6F40294B | (&STACK[0x10000] + 3800) & 0x90BFD6B0) ^ 0x89663284));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x41E7)))(&STACK[0x10ED8]);
  *(v2 + 304) = 0;
  return (*(v3 + 8 * (v1 + 3991)))(v4);
}

uint64_t sub_100630604@<X0>(int a1@<W8>)
{
  *(v1 - 0x217E172EFA1E81CLL) = STACK[0x1180];
  *(v1 - 0x217E172EFA1E7E4) = 1467396097;
  *(v1 - 0x217E172EFA1E7ECLL) = 0;
  *STACK[0x5FA8] = v1;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1006306C0()
{
  LODWORD(STACK[0x96AC]) = v0;
  *STACK[0x8E28] = 0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100630748()
{
  v3 = (((*(v0 - 0x217E172EFA1E804) ^ 0xBD118ACE) + (((v2 + 12544) | 0x808) ^ 0x42EEFE09)) ^ ((*(v0 - 0x217E172EFA1E804) ^ 0xA5AB9E60) + 1515479456) ^ ((*(v0 - 0x217E172EFA1E804) ^ 0xF16FD3BF) + (v2 ^ 0xE907E72))) - 54746966;
  v4 = 634647737 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0xE1FDD78) - 1910514305) ^ 0xE389F283);
  STACK[0x10EF0] = *(v0 + v1);
  LODWORD(STACK[0x10ED8]) = v3 ^ v4;
  STACK[0x10F00] = v0 - 0x217E172EFA1E800;
  LODWORD(STACK[0x10EF8]) = v2 - v4 + 18734;
  STACK[0x10EE8] = &STACK[0x138C];
  STACK[0x10EE0] = &STACK[0x26F4];
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v2 + 30865)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((3802 * (LODWORD(STACK[0x10F08]) == -371865839)) ^ v2)))(v6);
}

uint64_t sub_100630998()
{
  v1 = STACK[0xF18];
  STACK[0x2308] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x918D)))();
}

uint64_t sub_1006309FC()
{
  v1 = v0 - 15085;
  STACK[0x7690] = STACK[0x7690] - 29644 + 14798 * (v0 ^ 0x8B39u);
  v2 = v0 ^ 0x4192;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * v2))(STACK[0x5870]);
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_100630A94()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 37620)))(STACK[0x6A98]);
  STACK[0x6A98] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100630BA4()
{
  v1 = STACK[0xF18];
  STACK[0x6A00] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 5614) ^ v0)))();
}

uint64_t sub_100630C44@<X0>(int a1@<W0>, uint64_t a2@<X3>, int a3@<W6>, int a4@<W7>, unsigned int a5@<W8>)
{
  v5 = a1 << LODWORD(STACK[0xD40]);
  v6 = *(STACK[0xED0] + 4 * ((2899 * (((a1 ^ 0x441816CF) + 1894586849) ^ ((a1 ^ 0x39112CB) + 929308133) ^ ((a1 ^ 0x7E5B4677u) + 1252936025)) + 227968145) % 0x26C4));
  v7 = (((v5 ^ 0x5E7F502E) - 804658107) ^ ((v5 ^ 0x842680EE) + 173028485) ^ ((v5 ^ 0x14CBC346) - 1698859219)) * a4 + 366915757;
  v8 = (((v5 ^ 0xD3E03428) - 1707937510) ^ ((v5 ^ 0x38262F34) + 1911876102) ^ ((v5 ^ 0x25540898) + 1820773802)) * a4 - 1636935444;
  v9 = *(STACK[0xEC0] + 4 * ((707 * (((v6 ^ 0x4E1B8393) + 761691377) ^ ((v6 ^ 0x73F53828) + 277399372) ^ ((v6 ^ 0x6BCC3E79u) + 145867035)) - 1722562982) % 0x300));
  v10 = v8 - ((((v8 >> 5) * a5) >> 32) >> 1) * a3;
  v11 = (((a1 ^ 0xC4743D40) + 999015104) ^ ((a1 ^ 0xD42D1481) + 735243135) ^ ((a1 ^ 0x298B6BB6) - 697002934)) - 1310085086;
  v12 = STACK[0xEB0] + (*(STACK[0xED0] + 4 * ((2899 * (((v9 ^ 0x466610F1) - 810083036) ^ ((v9 ^ 0xF4DDEA38) + 2097997803) ^ ((v9 ^ 0xA3E67324) + 708280055)) - 2134745280) % 0x26C4)) ^ 0xC6A71E2);
  v13 = ((v11 ^ 0x2A3144FB) - 1378232657) ^ v11 ^ ((v11 ^ 0xB8246EAF) + 1070398715) ^ ((v11 ^ 0x15FFB001) - 1843977643) ^ ((v11 ^ 0xFFFDF7FF) + 2014668203);
  v14 = (((v5 ^ 0x47A2DD5B) + 1275520826) ^ ((v5 ^ 0x736E08B) + 210950890) ^ ((v5 ^ 0x8E062E52) - 2052975567)) * a4 + 137297241;
  v15 = (((v5 ^ 0x75DC8532) - 1189682509) ^ ((v5 ^ 0x1D9F2F8A) - 782940149) ^ ((v5 ^ 0xA6D1B93D) + 1780211390)) * a4 - 1072053732;
  v16 = v14 - ((((v14 >> 5) * a5) >> 32) >> 1) * a3;
  v17 = ((v5 ^ 0x356779E8) + 14527494) ^ ((v5 ^ 0xA98C4B64) - 1674142070) ^ ((v5 ^ 0x5279210C) + 1740895458);
  v18 = (((v5 ^ 0x1C939358) - 1250210006) ^ ((v5 ^ 0xC6DFFE23) + 1865884243) ^ ((v5 ^ 0x14DE7EFC) - 1120492914)) * a4 - 1884842893;
  v19 = (((v5 ^ 0x38D1E3C2) - 1393383280) ^ ((v5 ^ 0x22FBDEA5) - 1227319831) ^ ((v5 ^ 0xD4B82EE6) + 1083925932)) * a4 + 1473703629;
  v20 = (1864610357 * ((1864610357 * ((v12 ^ LODWORD(STACK[0xD50])) & 0x7FFFFFFF)) ^ ((1864610357 * ((v12 ^ LODWORD(STACK[0xD50])) & 0x7FFFFFFF)) >> 16))) >> 24;
  v21 = (((v5 ^ 0xBAC4F42B) + 1052859301) ^ ((v5 ^ 0xABD4B926) + 802231978) ^ ((v5 ^ 0xDF825E8E) + 1535635714)) * a4 + 1838847373;
  v22 = v21 - ((((v21 >> 5) * a5) >> 32) >> 1) * a3;
  v24 = v17 * a4 + 1209753844 - (((((v17 * a4 + 1209753844) >> 5) * a5) >> 32) >> 1) * a3;
  v26 = *(a2 + 8 * v16) ^ 0xA090922682EBED9FLL;
  if ((((53 * ((53 * (v12 ^ LOBYTE(STACK[0xD50]))) ^ ((1864610357 * ((v12 ^ LODWORD(STACK[0xD50])) & 0x7FFFFFFF)) >> 16))) ^ *v12 ^ *(STACK[0xE60] + v20) ^ *(STACK[0xE40] + v20)) ^ ((-15 * v20) ^ *(STACK[0xE30] + v20))))
  {
    v27 = *(a2 + 8 * (v7 - ((((v7 >> 5) * a5) >> 32) >> 1) * a3)) ^ 0x51ED62AEB335F432;
  }

  else
  {
    v27 = 0x9FF6CB18BCFE6C3FLL;
  }

  if (((((53 * ((53 * (v12 ^ LOBYTE(STACK[0xD50]))) ^ ((1864610357 * ((v12 ^ LODWORD(STACK[0xD50])) & 0x7FFFFFFF)) >> 16))) ^ *v12 ^ *(STACK[0xE60] + v20) ^ *(STACK[0xE40] + v20)) ^ ((-15 * v20) ^ *(STACK[0xE30] + v20))) & 0x10) != 0)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0x6E8B3B908D207592;
  }

  v29 = *(a2 + 8 * (v15 - ((((v15 >> 5) * a5) >> 32) >> 1) * a3)) ^ 0xCCFE5C513A5E6F8ALL;
  if (((((53 * ((53 * (v12 ^ LOBYTE(STACK[0xD50]))) ^ ((1864610357 * ((v12 ^ LODWORD(STACK[0xD50])) & 0x7FFFFFFF)) >> 16))) ^ *v12 ^ *(STACK[0xE60] + v20) ^ *(STACK[0xE40] + v20)) ^ ((-15 * v20) ^ *(STACK[0xE30] + v20))) & 8) == 0)
  {
    v29 = 0x2E5F5E73595F787;
  }

  v30 = *(a2 + 8 * v22) ^ 0xF5E5AEF3CF85D038;
  if (((((53 * ((53 * (v12 ^ LOBYTE(STACK[0xD50]))) ^ ((1864610357 * ((v12 ^ LODWORD(STACK[0xD50])) & 0x7FFFFFFF)) >> 16))) ^ *v12 ^ *(STACK[0xE60] + v20) ^ *(STACK[0xE40] + v20)) ^ ((-15 * v20) ^ *(STACK[0xE30] + v20))) & 0x20) == 0)
  {
    v30 = 0x3BFE0745C04E4835;
  }

  v31 = *(a2 + 8 * v10) ^ 0xBACDA2C167A251E2;
  if (((((53 * ((53 * (v12 ^ LOBYTE(STACK[0xD50]))) ^ ((1864610357 * ((v12 ^ LODWORD(STACK[0xD50])) & 0x7FFFFFFF)) >> 16))) ^ *v12 ^ *(STACK[0xE60] + v20) ^ *(STACK[0xE40] + v20)) ^ ((-15 * v20) ^ *(STACK[0xE30] + v20))) & 4) == 0)
  {
    v31 = 0x74D60B776869C9EFLL;
  }

  v32 = *(a2 + 8 * (v18 - ((((v18 >> 5) * a5) >> 32) >> 1) * a3)) ^ 0xD28C2951A2E91BF7;
  if (((((53 * ((53 * (v12 ^ LOBYTE(STACK[0xD50]))) ^ ((1864610357 * ((v12 ^ LODWORD(STACK[0xD50])) & 0x7FFFFFFF)) >> 16))) ^ *v12 ^ *(STACK[0xE60] + v20) ^ *(STACK[0xE40] + v20)) ^ ((-15 * v20) ^ *(STACK[0xE30] + v20))) & 2) == 0)
  {
    v32 = 0x1C9780E7AD2283FALL;
  }

  v33 = *(a2 + 8 * (v19 - ((((v19 >> 5) * a5) >> 32) >> 1) * a3)) ^ 0xA43A056ADB218424;
  v25 = (53 * ((53 * (v12 ^ LOBYTE(STACK[0xD50]))) ^ ((1864610357 * ((v12 ^ LODWORD(STACK[0xD50])) & 0x7FFFFFFF)) >> 16))) ^ *v12 ^ *(STACK[0xE60] + v20) ^ *(STACK[0xE40] + v20) ^ (-15 * v20) ^ *(STACK[0xE30] + v20);
  if (((((v25 ^ 0xE8) - 79) ^ ((v25 ^ 1) + 90) ^ ((v25 ^ 0xE9) - 78)) - 89) >= 0)
  {
    v33 = 0x6A21ACDCD4EA1C29;
  }

  v23 = ((v13 ^ 0x1578F570) - 1421728429) ^ ((v13 ^ 0x70145B9D) - 835810368) ^ ((v13 ^ 0x1D7BC347) - 1556016282);
  v34 = -((~(v23 + 970080887) + LODWORD(STACK[0xE70])) ^ (~(v23 + 970080887) + LODWORD(STACK[0xE70]))) | (~(v23 + 970080887) + LODWORD(STACK[0xE70]));
  v35 = v32 ^ v28;
  v36 = *(a2 + 8 * v24) ^ 0x31F7BCF2F7D85C8FLL;
  if (((((53 * ((53 * (v12 ^ LOBYTE(STACK[0xD50]))) ^ ((1864610357 * ((v12 ^ LODWORD(STACK[0xD50])) & 0x7FFFFFFF)) >> 16))) ^ *v12 ^ *(STACK[0xE60] + v20) ^ *(STACK[0xE40] + v20)) ^ ((-15 * v20) ^ *(STACK[0xE30] + v20))) & 0x40) == 0)
  {
    v36 = 0xFFEC1544F813C482;
  }

  STACK[0xE80] = v35 ^ v36 ^ __ROR8__(__ROR8__(v27 ^ STACK[0xE80] ^ v29 ^ v30 ^ v31 ^ v33, 47) ^ 0x2D9F933159385251, 17) ^ 0x1CC2A6EDE42F983DLL;
  return (*(STACK[0xF18] + 8 * ((2031 * (v34 >> 63)) ^ LODWORD(STACK[0xD30]))))(v13 ^ 0x41C52FDD);
}

uint64_t sub_100631AF4@<X0>(int a1@<W8>)
{
  *STACK[0x6F98] = *(v1 + 48);
  *STACK[0x4198] = 2;
  return (*(STACK[0xF18] + 8 * (38 * (a1 ^ 0x93E5) - 20731 + ((38 * (a1 ^ 0x93E5) + 474770754) & 0xE3B3F87F))))();
}

uint64_t sub_100631D0C@<X0>(int a1@<W8>)
{
  STACK[0x5C50] = 0x3AE1413A0D5CCBD2;
  LODWORD(STACK[0x1374]) = 1623927605;
  return (*(STACK[0xF18] + 8 * (a1 - 9642)))();
}

uint64_t sub_100631D50()
{
  STACK[0x8FE8] = *(STACK[0x7AA0] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v1;
  LODWORD(STACK[0x7FD8]) = 1986359923;
  LODWORD(STACK[0x704C]) = -2116087605;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100631DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unint64_t a7)
{
  STACK[0xEC0] = a7;
  LODWORD(STACK[0xED0]) = a6;
  return (*(STACK[0xF18] + 8 * ((501 * (((v8 + v7 + v10) | v9) == 0)) ^ (v11 + 8122))))();
}

uint64_t sub_100631E88()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 26098;
  v2 = STACK[0x68B8];
  v3 = 1112314453 * ((((&STACK[0x10000] + 3800) | 0x785A831) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xF87A57C8)) ^ 0xE8D382E8);
  STACK[0x10EE0] = &STACK[0x5590];
  STACK[0x10EF0] = v2;
  LODWORD(STACK[0x10ED8]) = v0 - v3 - 7788;
  LODWORD(STACK[0x10EE8]) = 17835794 - v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 16661)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v1))(v5);
}

uint64_t sub_100631F50(uint64_t a1, uint64_t a2, unsigned int a3, char a4, char a5, char a6, int a7, int a8)
{
  v19 = *(v12 + (v9 + 865490525 + (((a8 ^ 0xCA501665) - 1168790021) ^ ((a8 ^ 0x1DA25FC9) + 1839719511) ^ ((a8 ^ 0xD7F249B8) + v13 - 1476940216))) % v8);
  LOBYTE(v19) = *(v15 + (v19 - ((v19 * a7) >> 13) * v11)) ^ 0xE5;
  v20 = *(v15 + (v19 - ((v19 * a7) >> 13) * v11));
  v21 = v17 ^ v14 ^ *(v12 + (a8 ^ a3) % v8) ^ 0xE5 ^ *(v12 + ((((v20 ^ 0x900D1D88) + 1878188664) ^ ((v20 ^ 0x79CA7FB2) - 2043314098) ^ ((v20 ^ 0xE9C762DF) + 372808993)) + 229) % v8);
  *(v16 + a2) = a5 ^ a4 ^ a6 ^ v21;
  v22 = v10 - (((v10 * v18) >> 32) >> 5) * v11;
  *(v15 + v22) ^= (v21 >> 4) | (16 * v21);
  return (*(STACK[0xF18] + 8 * v13))();
}

uint64_t sub_1006324F8(uint64_t a1)
{
  v2 = ((v1 - 17801461 + (*(a1 + 16) ^ 0x10F4251)) ^ ((*(a1 + 16) ^ 0x3A98E233) - 983097907) ^ (((v1 - 767424305) ^ *(a1 + 16)) + 767400077)) + 500341552;
  v3 = (2 * (v2 & 0xCC032BE9)) & (v2 ^ 0x6E617FE3) ^ v2 & 0xCC032BE9 ^ ((2 * (v2 & 0xCC032BE9)) & 0x80025402 | 0x400000);
  v4 = (2 * (v2 ^ 0x6E617FE3)) & 0xA262540A ^ 0xA222540A ^ ((2 * (v2 ^ 0x6E617FE3)) ^ 0x44C4A814) & (v2 ^ 0x6E617FE3);
  v5 = (4 * v3) & 0x20005408 ^ v3 ^ ((4 * v3) ^ 0x1000000) & v4;
  v6 = (4 * v4) & 0xA2625408 ^ 0x22620402 ^ ((4 * v4) ^ 0x89895028) & v4;
  v7 = v5 ^ (16 * v5) & 0xA2625400 ^ ((16 * v5) ^ 0x4000000) & v6 ^ 0xA222540A;
  v8 = (16 * v6) & 0xA2625400 ^ 0x8042140A ^ ((16 * v6) ^ 0x262540A0) & v6;
  v9 = (v7 << 8) & 0xA2625400 ^ v7 ^ ((v7 << 8) ^ 0x62540A00) & v8;
  v10 = v2 ^ (2 * ((v9 << 16) & 0x22620000 ^ v9 ^ ((v9 << 16) ^ 0x540A0000) & ((v8 << 8) & 0x22620000 ^ 0x220000 ^ ((v8 << 8) ^ 0x62540000) & v8)));
  v11 = (((v10 ^ 0x559A3EDE) - 1879865906) ^ ((v10 ^ 0xEB10ECE8) + 830035964) ^ ((v10 ^ 0x72C951CB) - 1465849127)) - 1735609639;
  v12 = (((*(a1 + 12) ^ 0x6D5B3C75) - 1834695797) ^ ((*(a1 + 12) ^ 0x926053E0) + 1839180832) ^ ((*(a1 + 12) ^ 0x16EEA884) - 384739460)) - 1735609639;
  v13 = v11 > v12;
  LODWORD(STACK[0x6F4]) = v10 ^ 0x259644EC;
  v14 = (v12 < 0xAEB6EBC8) ^ (v11 < 0xAEB6EBC8);
  v15 = v13;
  if (v14)
  {
    v16 = v11 < 0xAEB6EBC8;
  }

  else
  {
    v16 = v15;
  }

  return (*(STACK[0x430] + 8 * ((388 * !v16) ^ v1)))();
}

uint64_t sub_100632838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0xEB0] = STACK[0x3378];
  LODWORD(STACK[0xEA0]) = STACK[0x1EA4];
  STACK[0xE90] = *(v4 + 656);
  STACK[0xED0] = STACK[0x8318];
  STACK[0xEC0] = STACK[0x8890];
  return (*(STACK[0xF18] + 8 * (v5 + 2735)))(STACK[0x9B8], 0xAE1357F85E57DE8ELL, 0xAE1357F85E57DE8FLL, a4, 0xAE1357F85E57DE90, 0xAE1357F85E57DE91, 0x56FF00CDA4C6FC5ALL, 0xAB7F8066D2637E2DLL);
}

uint64_t sub_100632C1C()
{
  STACK[0x8FE8] = STACK[0x93F0];
  LODWORD(STACK[0x44A8]) = STACK[0x8D3C];
  LODWORD(STACK[0x7FD8]) = 1970496882;
  LODWORD(STACK[0x704C]) = -2116087602;
  LODWORD(STACK[0x4A8C]) = STACK[0x6BE8];
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100632CC8@<X0>(int a1@<W8>)
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = -1028212410;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100632CFC()
{
  v4 = v1 < v2;
  if (v4 == v0 + 1 > ((v3 ^ 0x59E9u) + 15416) - 685297042)
  {
    v4 = v0 + 685268703 < v1;
  }

  return (*(STACK[0xF18] + 8 * ((6712 * v4) ^ v3)))();
}

uint64_t sub_100632FA8()
{
  v0 = (STACK[0xF10] - 29369) | 0xA009;
  v1 = STACK[0xF10] - 34098;
  LODWORD(STACK[0xA53C]) = STACK[0x98D4] & 0xFFFFFFFE ^ 0xE32A9889;
  return (*(STACK[0xF18] + 8 * ((v0 ^ 0xAAA6) + v1)))();
}

uint64_t sub_100633080(uint64_t a1)
{
  v2 = *(STACK[0xF18] + 8 * ((v1 + 1153861642) ^ 0x44C7577D ^ (((v1 + 1153861642) > 0xC93450BD) * (v1 + 14704))));
  v3 = LODWORD(STACK[0xB10]) ^ 0x52D7C174u;
  v4 = (v1 + 1025663566) & 0xC2DD3FFB;
  LODWORD(STACK[0xE80]) = v4;
  return v2(a1, 56880, v3, 121, v4 ^ 0x1631F7, 495, 3182588695, 9924);
}

uint64_t sub_1006331F8()
{
  LODWORD(STACK[0x10ED8]) = (v0 + 32309) ^ (1603510583 * ((((2 * (&STACK[0x10000] + 3800)) | 0xB14EDA52) - (&STACK[0x10000] + 3800) + 660116183) ^ 0x4F7C5F82));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 51323)))(&STACK[0x10ED8]);
  STACK[0x8E20] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x2E34 ^ (30008 * ((v0 | 0x6ACC0AF6) == -230527047)))))(v2);
}

uint64_t sub_100633368@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0xF18];
  STACK[0x91E0] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (((1663 * (a1 ^ 0xFA7)) ^ 0x3EE9) + a1)))();
}

uint64_t sub_1006333A8@<X0>(unint64_t *a1@<X7>, unint64_t a2@<X8>)
{
  v3 = 0;
  v4 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x20FAB224)) ^ 0x20FAB225;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  v12 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v11;
  STACK[0xBC20] = 0;
  STACK[0xBC28] = a2;
  v13 = 16777619 * ((553300517 * v12 + 7) ^ (553300517 * v12)) % 7;
  v14 = 16777619 * ((553300517 * v12 + 6) ^ (553300517 * v12)) % 6;
  v15 = 16777619 * ((553300517 * v12 + 5) ^ (553300517 * v12)) % 5;
  v16 = *(&STACK[0xBC20] | v13);
  *(&STACK[0xBC20] | v13) = STACK[0xBC27];
  v17 = *(&STACK[0xBC20] | v14);
  *(&STACK[0xBC20] | v14) = STACK[0xBC26];
  v18 = *(&STACK[0xBC20] | v15);
  *(&STACK[0xBC20] | v15) = STACK[0xBC25];
  v19 = v2 ^ 0x1F1A0;
  v20 = 16777619 * ((553300517 * v12 + 3) ^ (553300517 * v12)) % 3;
  v21 = vdup_n_s32(553300517 * v12);
  v22.i32[0] = v21.i32[0];
  v22.i32[1] = 553300517 * v12 + 1;
  LOBYTE(STACK[0xBC27]) = v16;
  v23 = veor_s8(vmul_s32(v22, v21), v21);
  LOBYTE(STACK[0xBC26]) = v17;
  LOBYTE(STACK[0xBC25]) = v18;
  v24 = STACK[0xBC20];
  LOBYTE(STACK[0xBC20]) = STACK[0xBC24];
  LOBYTE(STACK[0xBC24]) = v24;
  v25 = *(&STACK[0xBC20] | v20);
  *(&STACK[0xBC20] | v20) = STACK[0xBC23];
  LOBYTE(STACK[0xBC23]) = v25;
  v26 = STACK[0xBC21];
  LOBYTE(STACK[0xBC22]) = STACK[0xBC20];
  LOWORD(STACK[0xBC20]) = v26;
  STACK[0xBC20] = vmla_s32(v23, STACK[0xBC20], vdup_n_s32(0x1000193u));
  v27 = STACK[0xBC28];
  v28 = (553300517 * STACK[0xBC28]) ^ v12;
  v29 = vdupq_n_s32(v28);
  v30 = xmmword_100BC7620;
  v31 = xmmword_100BC7630;
  v32 = xmmword_100BC7640;
  v33 = xmmword_100BC7650;
  v34.i64[1] = 0xFFFFFF0FFFFFFF0ELL;
  v35.i64[0] = 0x9393939393939393;
  v35.i64[1] = 0x9393939393939393;
  v36.i64[0] = 0x1000000010;
  v36.i64[1] = 0x1000000010;
  do
  {
    v37 = *(v27 + v3);
    v57.val[1] = veorq_s8(vqtbl1q_s8(v37, xmmword_100BC7690), veorq_s8(v29, vmulq_s32(vaddq_s32(v32, v29), vsubq_s32(v32, v29))));
    v57.val[0] = veorq_s8(vqtbl1q_s8(v37, xmmword_100BC76A0), veorq_s8(v29, vmulq_s32(vaddq_s32(v33, v29), vsubq_s32(v33, v29))));
    v57.val[2] = veorq_s8(vqtbl1q_s8(v37, xmmword_100BC7680), veorq_s8(v29, vmulq_s32(vaddq_s32(v31, v29), vsubq_s32(v31, v29))));
    v57.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v37, xmmword_100BC7670), v29), vmulq_s32(vaddq_s32(v30, v29), vsubq_s32(v30, v29)));
    *(v27 + v3) = vmulq_s8(vqtbl4q_s8(v57, xmmword_100BC7660), v35);
    v3 += 16;
    v33 = vaddq_s32(v33, v36);
    v32 = vaddq_s32(v32, v36);
    v31 = vaddq_s32(v31, v36);
    v30 = vaddq_s32(v30, v36);
  }

  while (v3 != 576);
  v38 = 0;
  v39 = xmmword_100F52AE0;
  v40 = vdupq_n_s32(v28);
  v41 = xmmword_100F52AF0;
  v42 = v27 + 576;
  v43.i64[0] = 0x800000008;
  v43.i64[1] = 0x800000008;
  do
  {
    v34.i64[0] = *(v42 + v38);
    v56.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v34, xmmword_100BC7690), v40), vmulq_s32(vaddq_s32(v39, v40), vsubq_s32(v39, v40)));
    v56.val[0] = veorq_s8(vqtbl1q_s8(v34, xmmword_100BC76A0), veorq_s8(v40, vmulq_s32(vaddq_s32(v41, v40), vsubq_s32(v41, v40))));
    v34 = vqtbl2q_s8(v56, xmmword_100F52AD0);
    *(v42 + v38) = vmul_s8(*v34.i8, 0x9393939393939393);
    v41 = vaddq_s32(v41, v43);
    v39 = vaddq_s32(v39, v43);
    v38 += 8;
  }

  while (v38 != 8);
  v44 = 72;
  do
  {
    v45 = 16777619 * ((v28 + v44) ^ v28) % v44;
    v46 = *(v27 + 8 * v45) ^ *(v27 + 8 * v44);
    *(v27 + 8 * v44) = v46;
    v47 = *(v27 + 8 * v45) ^ v46;
    *(v27 + 8 * v45) = v47;
    *(v27 + 8 * v44) ^= v47;
    v48 = v44-- + 1;
  }

  while (v48 > 2);
  v49 = *(&STACK[0xBC28] + v13);
  *(&STACK[0xBC28] + v13) = STACK[0xBC2F];
  LOBYTE(STACK[0xBC2F]) = v49;
  v50 = *(&STACK[0xBC28] + v14);
  *(&STACK[0xBC28] + v14) = STACK[0xBC2E];
  LOBYTE(STACK[0xBC2E]) = v50;
  v51 = *(&STACK[0xBC28] + v15);
  *(&STACK[0xBC28] + v15) = STACK[0xBC2D];
  LOBYTE(STACK[0xBC2D]) = v51;
  v52 = STACK[0xBC28];
  LOBYTE(STACK[0xBC28]) = STACK[0xBC2C];
  LOBYTE(STACK[0xBC2C]) = v52;
  v53 = *(&STACK[0xBC28] + v20);
  *(&STACK[0xBC28] + v20) = STACK[0xBC2B];
  LOBYTE(STACK[0xBC2B]) = v53;
  v54 = STACK[0xBC29];
  LOBYTE(STACK[0xBC2A]) = STACK[0xBC28];
  LOWORD(STACK[0xBC28]) = v54;
  STACK[0xBC28] = vmla_s32(v23, STACK[0xBC28], vdup_n_s32(0x1000193u));
  *a1 = STACK[0xBC28] ^ STACK[0xBC20];
  return (*(STACK[0xF18] + 8 * v19))();
}

uint64_t sub_1006338F8@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, char a4@<W8>)
{
  v11 = v7 - a4 + ((v7 + 68) ^ 0xC1) + 93;
  *(STACK[0xED0] + (v10 + 24179 + v7 - 1153404109)) ^= (v11 - ((2 * v11) & 0x8A) - 59) ^ 0xC5;
  v12 = (((*v4 ^ v5) + v6) ^ ((*v4 ^ v8) + v9) ^ ((*v4 ^ a1) + a2)) + 1323032623;
  v13 = v12 < 0x65061916;
  v14 = v7 + 541529989 < v12;
  if ((v7 + 541529989) < 0x65061916 != v13)
  {
    v14 = v13;
  }

  v15 = *(STACK[0xF18] + 8 * ((v14 * a3) ^ v10));
  LODWORD(STACK[0xEC0]) = 1724701218;
  return v15();
}

uint64_t sub_100633B28()
{
  v1 = (((v0 ^ 0xFB7C6A66) + 75732378) ^ ((v0 ^ 0x7CE2368A) - 2095199882) ^ ((v0 ^ 0x71CAF489) - 1909126281)) + 1053587087;
  v2 = ((v1 ^ 0xFA98543E) + 1292920297) ^ v1 ^ ((v1 ^ 0xDF24F3AC) + 1756152443) ^ ((v1 ^ 0x92359444) + 633185683) ^ ((v1 ^ 0xFFFEFDFF) + 1215745066);
  return (*(STACK[0xF18] + 8 * ((101 * ((((v2 ^ 0xA595EF27) - 464947563) ^ ((v2 ^ 0x662491AC) + 670566432) ^ ((v2 ^ 0x8BC6B0A2) - 904255214)) - 162224027 > 0x2F)) ^ LODWORD(STACK[0xD40]))))();
}

uint64_t sub_100634B60@<X0>(int a1@<W8>)
{
  v1 = a1 - 2544;
  v2 = (a1 + 1714522782) & 0x99CEDB3B;
  v3 = STACK[0x63D0];
  LODWORD(STACK[0x10EE0]) = (v1 + 329048321) ^ (1112314453 * ((2 * ((&STACK[0x10000] + 3800) & 0x79CAA968) - (&STACK[0x10000] + 3800) - 2043324778) ^ 0x69637C4F));
  STACK[0x10EE8] = (v2 + 0x215F96C1AC63BFF1) ^ &STACK[0xF28];
  STACK[0x10ED8] = v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 44977)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v1))(v5);
}

uint64_t sub_100634C64@<X0>(uint64_t a1@<X8>)
{
  v3 = a1 + 16 * v2;
  v4 = 0x981390C2FED9246;
  if (*(STACK[0x6258] + 380) != -2109658874)
  {
    v4 = 0x981390C2FED9247;
  }

  *(v3 + 8) = v4;
  return (*(STACK[0xF18] + 8 * ((15113 * (v1 == 46235243)) ^ (v1 + 2140364950))))();
}

uint64_t sub_100635134@<X0>(unsigned int a1@<W8>)
{
  v5 = (v2 - 1457332541) % a1;
  v6 = *(v4 + v5);
  v7 = v6 & 0x3D ^ (((v1 + 70) | 0x44) + 119);
  v8 = v6 ^ 0x1E;
  v9 = *(v2 + v3 - 1457332541) ^ v6 ^ (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (((2 * (v6 & 0x1F)) ^ 0x22) & v8 ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7));
  *(v4 + v5) = (((v9 ^ 0x5A) + 27) ^ ((v9 ^ 0xFA) - 69) ^ ((v9 ^ 0x9D) - 34)) - 29;
  return (*(STACK[0xF18] + 8 * ((26344 * (v2 == 1457332727)) ^ v1)))();
}

uint64_t sub_100635368()
{
  STACK[0x5658] = STACK[0x4790];
  LODWORD(STACK[0x2564]) = -1573874321;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1006353EC@<X0>(uint64_t a1@<X8>)
{
  v3 = (((v2 - 7807) - 0x627FD13309D5EADFLL) ^ v2 ^ 0xB93Au) + a1;
  v4 = (v1 > 0xFFFFFFFF75B2D535) ^ (v3 < 0x8A4D2ACA);
  v5 = v3 < v1 + 2320313034u;
  if (v4)
  {
    v5 = v1 > 0xFFFFFFFF75B2D535;
  }

  return (*(STACK[0xF18] + 8 * (v2 | (4 * v5))))();
}

uint64_t sub_100635638()
{
  v2 = v0 - 43844;
  v3 = (v0 - 44856) | 0x6100;
  v4 = (((*(v1 + 240) ^ 0x76FC2FF0) - 1996238832) ^ ((*(v1 + 240) ^ 0xE724C03A) + 417021894) ^ ((*(v1 + 240) ^ 0x780D28DB) - 2014128347)) + 1433029368;
  v5 = (v4 ^ 0x47637D50) & (2 * (v4 & 0x946B7C19)) ^ v4 & 0x946B7C19;
  v6 = ((2 * (v4 ^ (109 * (v3 ^ 0x704D) + 1735873077))) ^ 0xE63942D2) & (v4 ^ (109 * (v3 ^ 0x704D) + 1735873077)) ^ (2 * (v4 ^ (109 * (v3 ^ 0x704D) + 1735873077))) & 0xF31CA168;
  v7 = v6 ^ 0x1104A129;
  v8 = (v6 ^ 0xE2180040) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0xCC7285A4) & v7 ^ (4 * v7) & 0xF31CA168;
  v10 = (v9 ^ 0xC0108120) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x330C2049)) ^ 0x31CA1690) & (v9 ^ 0x330C2049) ^ (16 * (v9 ^ 0x330C2049)) & 0xF31CA140;
  return (*(STACK[0xF18] + 8 * ((2047 * ((v4 ^ (2 * ((((v11 ^ 0xC214A169) << 8) & 0x731C0000 ^ (((v11 ^ 0xC214A169) << 8) ^ 0x1CA10000) & (v11 ^ 0xC214A169) ^ 0x10000000) & (((v11 ^ 0x31080000) & (v10 << 8) ^ v10) << 16) ^ (v11 ^ 0x31080000) & (v10 << 8) ^ v10))) == -1804895207)) ^ v2)))();
}

uint64_t sub_10063585C()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 16238)))(v1);
  return (*(v2 + 8 * (v0 + 13306)))(v3);
}

uint64_t sub_10063588C@<X0>(int8x16_t *a1@<X8>)
{
  v3.i64[0] = 0xBEBEBEBEBEBEBEBELL;
  v3.i64[1] = 0xBEBEBEBEBEBEBEBELL;
  v4.i64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v4.i64[1] = 0x5F5F5F5F5F5F5F5FLL;
  *a1 = veorq_s8(vaddq_s8(vsubq_s8(*a1, vandq_s8(vaddq_s8(*a1, *a1), v3)), v4), *v1);
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1006358D4@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  LODWORD(STACK[0x5F74]) = -371865839;
  return (*(v1 + 8 * (a1 - 37218 + ((a1 + 123101636) & 0xF8A93FA2))))();
}

uint64_t sub_10063592C()
{
  v0 = 97 * (STACK[0xF10] ^ 0x8B24);
  v1 = STACK[0xF10] + 14968;
  v2 = STACK[0x5CA0];
  STACK[0x1398] = STACK[0x5CA0] ^ 0x20DE4F5147E73171;
  return (*(STACK[0xF18] + 8 * (((v2 == 0) * (v0 - 2910)) ^ v1)))();
}

uint64_t sub_1006359E0()
{
  v1 = STACK[0xF18];
  STACK[0x40E0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 11354)))();
}

uint64_t sub_100635B0C()
{
  v1 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x196A ^ (6872 * ((v0 - 1623923410) > 0x140DE171)))))();
}

uint64_t sub_100635CFC()
{
  *(STACK[0x2338] + 4 * STACK[0x8198]) = 1488708789;
  v1 = STACK[0xF18];
  STACK[0x31A0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 740194210) & 0xD3E18FD1 ^ 0x43B) + v0)))();
}

uint64_t sub_100635DEC()
{
  LODWORD(STACK[0x5564]) = v1;
  LODWORD(STACK[0x6ECC]) = v0;
  return (STACK[0x32A0])();
}

uint64_t sub_100636014()
{
  *(v3 + (v2 - 106)) = (v0 >> (((v1 ^ 0x4B) + 52) ^ (13 * (v1 ^ 0x4B)))) ^ 0x58;
  *(v3 + (v2 - 105)) = BYTE2(v0) ^ 0x72;
  *(v3 + (v2 - 104)) = ~(v0 >> 8);
  *(v3 + (v2 - 103)) = v0 ^ 0xBF;
  return (*(STACK[0xF18] + 8 * ((16744 * ((v2 - 102) < 0x10u)) ^ v1)))();
}

uint64_t sub_1006360B8@<X0>(int a1@<W8>)
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = -1506847140;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100636108()
{
  v4 = 8 * v0;
  v5 = (((v0 ^ 0x24A47EB7) - 614760119) ^ ((v0 ^ 0x3A6C5B5A) - 980179802) ^ ((v0 ^ 0xD3FAD0FC) + 738537220)) + 968308300;
  v6 = (v5 ^ 0x9373BCC4) & (2 * (v5 & 0x937BBEC6)) ^ v5 & 0x937BBEC6;
  v7 = ((2 * (v5 ^ 0xB321A1C0)) ^ 0x40B43E0C) & (v5 ^ 0xB321A1C0) ^ (2 * (v5 ^ 0xB321A1C0)) & 0x205A1F06;
  v8 = v7 ^ 0x204A0102;
  v9 = (v7 ^ 0x101E00) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x81687C18) & v8 ^ (4 * v8) & 0x205A1F00;
  v11 = ((16 * (v10 ^ 0x20120306)) ^ 0x5A1F060) & (v10 ^ 0x20120306) ^ (16 * (v10 ^ 0x20120306)) & 0x205A1F00;
  v12 = (((v4 ^ 0xDD3BADA1) + 426211113) ^ ((v4 ^ 0xF206F81A) + 911876756) ^ ((v4 ^ 0x46AAFD76) - 2097797120)) * v1 + 1417678940;
  LODWORD(STACK[0xE60]) = v12 - ((((v12 >> 5) * v2) >> 32) >> 1) * v3;
  v13 = (v10 ^ 0x481C00) & (16 * v9) ^ v9 ^ 0x205A1F06 ^ (v11 ^ 0x1000) & (((v10 ^ 0x481C00) & (16 * v9) ^ v9) << 8);
  v14 = v5 ^ (2 * ((v13 << 16) & 0x205A0000 ^ v13 ^ ((v13 << 16) ^ 0x1F060000) & (((v11 ^ 0x205A0F06) << 8) & 0x205A0000 ^ 0x20400000 ^ (((v11 ^ 0x205A0F06) << 8) ^ 0x5A1F0000) & (v11 ^ 0x205A0F06))));
  return (*(STACK[0xF18] + 8 * ((44 * ((((v14 ^ 0x90FF13AE) + 1912183179) ^ ((v14 ^ 0xC603375) - 312034990) ^ ((v14 ^ 0x4F54A011) - 1370346954)) - 852298479 < 0x18)) ^ LODWORD(STACK[0xDC0]))))();
}

uint64_t sub_100636FD8()
{
  v0 = STACK[0xE80];
  LODWORD(STACK[0x17DC]) = LODWORD(STACK[0x8CBC]) + LODWORD(STACK[0x7B24]) - 1136345720;
  STACK[0x4DF8] = STACK[0x3910];
  STACK[0x8930] = STACK[0x3FF8];
  LODWORD(STACK[0x7FF8]) = STACK[0x779C];
  STACK[0x80C8] = STACK[0x4980];
  v1 = STACK[0x7690];
  v2 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x3E40] = v2;
  STACK[0x6388] = (v2 + 24);
  STACK[0x6408] = (v2 + 56);
  STACK[0x3918] = (v2 + 72);
  STACK[0x7690] = v1 + 112;
  STACK[0x1188] = 0;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0x7FEA)))(v2, 0, 24);
  STACK[0x5D98] = 0;
  STACK[0x8118] = 0;
  *(v2 + 5) = 0;
  *(v2 + 12) = 0;
  *(v2 + 7) = 0;
  *(v2 + 8) = 0;
  return (*(v3 + 8 * v0))(v4);
}

uint64_t sub_10063711C()
{
  v2 = *(STACK[0xF18] + 8 * (v0 ^ (4451 * ((((v1 ^ 0x8EFBB526) + 1896106714) ^ ((v1 ^ 0x6723DE14) - 1730403860) ^ ((v1 ^ 0xDAC23) - 896035)) != 371865831))));
  LODWORD(STACK[0xEC0]) = 1724701218;
  return v2();
}

uint64_t sub_100637258()
{
  STACK[0x10EE0] = *(v1 + 4528);
  LODWORD(STACK[0x10EE8]) = (v0 + 27988) ^ (139493411 * ((((&STACK[0x10000] + 3800) | 0xF0FFCBED) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xF003410)) ^ 0xFCD22AA8));
  LOBYTE(STACK[0x10ED8]) = 1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 35226)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_100637494@<X0>(char a1@<W0>, int a2@<W1>, int a3@<W5>, int a4@<W6>, int a5@<W7>, int a6@<W8>)
{
  v22 = (((a2 ^ 0xC9E7E2C0) + 907550016) ^ ((a2 ^ 0x28A17D71) - 681672049) ^ ((a2 ^ 0x89358A0) + v11)) + 1562839781;
  v23 = (v22 ^ 0x88CBAA2) & (2 * (v22 & 0x8CAEBC2B)) ^ v22 & 0x8CAEBC2B;
  v24 = ((2 * (v22 ^ 0x1880BAA6)) ^ a3) & (v22 ^ 0x1880BAA6) ^ (2 * (v22 ^ 0x1880BAA6)) & a4;
  v25 = v24 ^ a5;
  v26 = (v24 ^ v13) & (4 * v23) ^ v23;
  v27 = ((4 * v25) ^ v14) & v25 ^ (4 * v25) & a4;
  v28 = (v27 ^ v16) & (16 * v26) ^ v26;
  v29 = ((16 * (v27 ^ v15)) ^ v17) & (v27 ^ v15) ^ (16 * (v27 ^ v15)) & v18;
  v30 = v28 ^ v20 ^ (v29 ^ 0x200000) & (v28 << 8);
  v31 = v22 ^ (2 * ((v30 << 16) & a6 ^ v30 ^ ((v30 << 16) ^ v10) & (((v29 ^ v19) << 8) & a6 ^ v9 ^ (((v29 ^ v19) << 8) ^ v21) & (v29 ^ v19))));
  LOBYTE(v30) = *(*(v7 + 24) + (v31 ^ v12));
  *(*(v8 + 184) + (v31 ^ v12)) = v30 - (a1 & (2 * v30)) - 70;
  return (*(STACK[0xF18] + 8 * ((30 * (v31 != v12)) ^ v6)))();
}

uint64_t sub_1006376E4()
{
  v3 = STACK[0xED0];
  v4 = STACK[0x4DD4];
  v5 = 1012831759 * ((2 * ((&STACK[0x10000] + 3800) & 0x1A119DC8) - (&STACK[0x10000] + 3800) + 1710121523) ^ 0x757D74B9);
  STACK[0x10F08] = STACK[0xED0] + 256;
  LODWORD(STACK[0x10EF4]) = (v0 ^ 0x93245CF5) + v5;
  STACK[0x10EF8] = v3;
  LODWORD(STACK[0x10EF0]) = (((v4 ^ 0xF679BBC8) + 159794232) ^ ((v4 ^ 0x5D2D239C) - 1563239324) ^ ((v4 ^ 0x401CD554) - 1075631444)) - v5 + 50214215;
  STACK[0x10EE0] = &STACK[0xF28] ^ 0xF0A95104AEE9DBDDLL;
  STACK[0x10EE8] = v1;
  LODWORD(STACK[0x10F04]) = v2 - v5 + 29720249;
  LODWORD(STACK[0x10F00]) = v2 + 34235 - v5 + 523349650 + (((v4 ^ 0xB7185C48) + 1223140280) ^ ((v4 ^ 0x2A2B75E7) - 707491303) ^ ((v4 ^ 0x767B64AF) + (v2 ^ 0x89849ED1)));
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v2 ^ 0xCED9)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * ((29967 * (LODWORD(STACK[0x10ED8]) == -371865839)) ^ v2)))(v7);
}

uint64_t sub_1006378E0()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4FC7)))(504);
  STACK[0x8DE0] = v2;
  return (*(v1 + 8 * (((((v2 == 0) ^ (5 * (v0 ^ 0xF6))) & 1) * (((v0 - 943830592) & 0x38413FFC) - 3647)) ^ v0)))();
}

uint64_t sub_10063795C@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0x3ED8];
  *v2 = STACK[0x7948];
  *(v2 + 8) = STACK[0x6028];
  *(v2 + 16) = *(STACK[0x9150] + 312) - ((*(STACK[0x9150] + 312) << (v1 - 76)) & 0x130272185FDB248CLL) + 0x981390C2FED9246;
  *(v2 + 24) = *(STACK[0x7AC0] - 0xEC3AD30EA020C0CLL);
  *(v2 + 32) = -371866114;
  *(v2 + 36) = *(a1 + 12);
  STACK[0x5C50] = (((*(a1 + 16) ^ 0xE982637DA7C110E1) + 0x167D9C82583EEF1FLL) ^ ((*(a1 + 16) ^ 0x3C4A80CF15608F3ELL) - 0x3C4A80CF15608F3ELL) ^ ((*(a1 + 16) ^ 0xD5C8E3B25B7458CELL) + 0x2A371C4DA48BA732)) + 0x3AE1413AF7325DD3;
  LODWORD(STACK[0x1374]) = -686723699;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100637AB0()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 + 10948)))(v2);
}

uint64_t sub_100637BC0(uint64_t a1)
{
  v4 = *(v1 + 8);
  LOBYTE(STACK[0x26C]) += (v2 + 28) ^ v4;
  LOBYTE(STACK[0x26D]) = (LOBYTE(STACK[0x26D]) - ((2 * LOBYTE(STACK[0x26D])) & 0xB8) + 92) ^ BYTE1(v4) ^ 0xCE;
  LOBYTE(STACK[0x26E]) += BYTE2(v4) ^ 0xED;
  LOBYTE(STACK[0x26F]) -= HIBYTE(v4) ^ 0x2F;
  v5 = *(v1 + 16);
  LOBYTE(STACK[0x270]) -= v5 ^ 0x46;
  LOBYTE(STACK[0x271]) += BYTE1(v5) ^ 0x92;
  LOBYTE(STACK[0x272]) = (LOBYTE(STACK[0x272]) - ((2 * LOBYTE(STACK[0x272])) & 0x68) - 76) ^ BYTE2(v5) ^ 0x59;
  LOBYTE(STACK[0x273]) += BYTE3(v5) ^ 0x2F;
  LOBYTE(STACK[0x274]) -= BYTE4(v5) ^ 0xC;
  LOBYTE(STACK[0x275]) += BYTE5(v5) ^ 0x39;
  LOBYTE(STACK[0x276]) = BYTE6(v5) ^ 0x6F ^ (LOBYTE(STACK[0x276]) - ((2 * LOBYTE(STACK[0x276])) & 0xDD) - 18);
  LOBYTE(STACK[0x277]) += HIBYTE(v5) ^ 9;
  LODWORD(v5) = *(v1 + 24);
  LOBYTE(STACK[0x278]) -= v5 ^ 0x11;
  LOBYTE(STACK[0x279]) -= BYTE1(v5) ^ 0xC7;
  LOBYTE(STACK[0x27A]) += BYTE2(v5) ^ 0xD5;
  LOBYTE(STACK[0x27B]) = (LOBYTE(STACK[0x27B]) - ((2 * LOBYTE(STACK[0x27B])) & 0x4C) + 38) ^ BYTE3(v5) ^ 0xCF;
  v6 = *(v1 + 28);
  LOBYTE(STACK[0x27C]) = v6 ^ (LOBYTE(STACK[0x27C]) - (v3 & (2 * LOBYTE(STACK[0x27C]))) + 23) ^ 6;
  LOBYTE(STACK[0x27D]) = (LOBYTE(STACK[0x27D]) - ((2 * LOBYTE(STACK[0x27D])) & 0x9A) + 77) ^ BYTE1(v6) ^ 0x8A;
  LOBYTE(STACK[0x27E]) += BYTE2(v6) ^ 0xD5;
  LOBYTE(STACK[0x27F]) -= HIBYTE(v6) ^ 0xE9;
  return (*(a1 + 8 * (v2 ^ 0xE98B5E1F ^ (9466 * (v2 > 0x6EF1F166)))))();
}

uint64_t sub_100637EA4@<X0>(char a1@<W0>, char a2@<W2>, unsigned __int16 a3@<W4>, char a4@<W6>, int a5@<W8>)
{
  v16 = v13 ^ LODWORD(STACK[0xDF0]) ^ LODWORD(STACK[0xD60]);
  v17 = (a4 ^ 0xDD) & v6 | v8;
  v18 = LODWORD(STACK[0xCC0]) + a5;
  v19 = STACK[0xED0];
  *STACK[0xED0] -= 44;
  v20 = STACK[0xE40];
  if (v15 == -716811138)
  {
    v21 = v19;
  }

  else
  {
    v21 = (v19 + 1);
  }

  *v21 = *v21 + ((32 * v20) ^ 0x43) * LODWORD(STACK[0xCA0]) - 94;
  *(v19 + 2 % (v15 ^ 0xD546547F)) += 57;
  *(v19 + 3 % (v15 ^ 0xD546547F)) += (((STACK[0xE90] ^ 0x1A) + 81) ^ ((STACK[0xE90] ^ 0xF8) - 77) ^ ((STACK[0xE90] ^ 0x2D) + 104)) + 122;
  *(v19 + 4 % (v15 ^ 0xD546547F)) += 72;
  v22 = LODWORD(STACK[0xE30]) - 25;
  *(v19 + 5 % (v15 ^ 0xD546547F)) += v7 * (LOBYTE(STACK[0xE30]) - 25) - LOBYTE(STACK[0xC90]) + 113;
  *(v19 + 6 % (v15 ^ 0xD546547F)) = (LODWORD(STACK[0xDB0]) ^ ((LODWORD(STACK[0xDB0]) ^ 0x87) + 3) ^ ((LODWORD(STACK[0xDB0]) ^ 0xB1) + 53) ^ 0x7A) + *(v19 + 6 % (v15 ^ 0xD546547F)) - 74;
  *(v19 + 7 % (v15 ^ 0xD546547F)) += (((v17 ^ 0x18) + 109) ^ ((v17 ^ 0x99) - 18) ^ ((v17 ^ 0x4F) + 60)) + 69;
  v23 = LODWORD(STACK[0x7F44]) ^ 0xD546547F;
  *(v19 + 8 % v23) += 22;
  *(v19 + 9 % v23) -= 114;
  *(v19 + 0xA % v23) = ((LODWORD(STACK[0xCE0]) + 100) ^ v11 ^ v12) - LODWORD(STACK[0xCB0]) + *(v19 + 0xA % v23) - 76;
  *(v19 + 0xB % v23) += 29;
  *(v19 + 0xC % v23) = (((v10 & 0x54 ^ 0xF1) - 21) ^ ((v10 & 0x54) + 92) ^ ((v10 & 0x54 ^ 0xF5) - 17)) + *(v19 + 0xC % v23) - 61;
  *(v19 + 0xD % v23) += v22;
  *(v19 + 0xE % v23) -= 105;
  *(v19 + 0xF % v23) += 39;
  *(v19 + 0x10 % v23) += (((LODWORD(STACK[0xDA0]) ^ 0xCD) + 65) ^ ((LODWORD(STACK[0xDA0]) ^ 0x95) + 25) ^ ((LODWORD(STACK[0xDA0]) ^ 0x29) - 91)) + 3;
  *(v19 + 0x11 % v23) += (v5 ^ v9 ^ (v14 - 10) ^ 0x5F) - LODWORD(STACK[0xC80]) + 54;
  *(v19 + 0x12 % v23) = (STACK[0xE00] ^ ((STACK[0xE00] ^ 0x2C) - 112) ^ ((STACK[0xE00] ^ 0x62) - 62) ^ 0x5C) + *(v19 + 0x12 % v23) - 50;
  *(v19 + 0x13 % v23) = (((LODWORD(STACK[0xD70]) ^ 0x49) + 73) ^ ((LODWORD(STACK[0xD70]) ^ 0x1F) + 31) ^ ((LODWORD(STACK[0xD70]) ^ 0x3C) + 62)) + *(v19 + 0x13 % v23) - 108;
  v24 = LODWORD(STACK[0x7F44]) ^ 0xD546547F;
  *(v19 + 0x14 % v24) += LODWORD(STACK[0xDE0]);
  *(v19 + 0x15 % v24) += LODWORD(STACK[0xD20]);
  if (a3 <= 0xD8u)
  {
    v25 = -39;
  }

  else
  {
    v25 = 25;
  }

  *(v19 + 0x16 % v24) += v25 + ((STACK[0xC40] & 0xFC00) >> 10);
  *(v19 + 0x17 % v24) += ((LODWORD(STACK[0xD00]) - 88) ^ LODWORD(STACK[0xC70]) ^ LODWORD(STACK[0xC50])) + v18 + 104;
  *(v19 + 0x18 % v24) += 84;
  *(v19 + 0x19 % v24) += 30;
  *(v19 + 0x1A % v24) -= 78;
  *(v19 + 0x1B % v24) += STACK[0xCF0];
  v26 = v16 ^ (LODWORD(STACK[0xD90]) >> (LODWORD(STACK[0xD80]) ^ 4));
  *(v19 + 0x1C % v24) += (((v26 ^ 0xDA) - 125) ^ ((v26 ^ 0xB1) - 22) ^ ((v26 ^ 0xC7) - 96)) + 11;
  *(v19 + 0x1D % v24) += 36;
  *(v19 + 0x1E % v24) = *(v19 + 0x1E % v24) - a1 + 59;
  *(v19 + 0x1F % v24) -= 103;
  *(v19 + 0x20 % v24) += 126;
  *(v19 + 0x21 % v24) = *(v19 + 0x21 % v24) - LODWORD(STACK[0xE20]) + 85;
  v27 = LODWORD(STACK[0x7F44]) ^ 0xD546547F;
  *(v19 + 0x22 % v27) += 65;
  *(v19 + 0x23 % v27) += STACK[0xC60];
  *(v19 + 0x24 % v27) += 78;
  *(v19 + 0x25 % v27) += 30;
  *(v19 + 0x26 % v27) += LODWORD(STACK[0xD30]);
  *(v19 + 0x27 % v27) += (((LODWORD(STACK[0xCD0]) ^ 0x5B) - 38) ^ ((LODWORD(STACK[0xCD0]) ^ 0x93) + 18) ^ ((LODWORD(STACK[0xCD0]) ^ 0xF1) + 116)) + 68;
  *(v19 + 0x28 % v27) += 96;
  v28 = LODWORD(STACK[0xE60]) ^ 0xDF;
  *(v19 + 0x29 % v27) += STACK[0xD40];
  *(v19 + 0x2A % v27) = v28 + (a2 & 0xBE) + *(v19 + 0x2A % v27) - 121;
  *(v19 + 0x2B % v27) -= 67;
  *(v19 + 0x2C % v27) = (((STACK[0xE10] ^ 0x21) + 24) ^ ((STACK[0xE10] ^ 0x87) - 78) ^ ((STACK[0xE10] ^ 0xE6) - 47)) + *(v19 + 0x2C % v27) - 119;
  v29 = STACK[0xDD0] & 0xFE00;
  *(v19 + 0x2D % v27) -= 25;
  *(v19 + 0x2E % v27) = LODWORD(STACK[0xD50]) - (v29 >> 9) + *(v19 + 0x2E % v27) - 37;
  *(v19 + 0x2F % (LODWORD(STACK[0x7F44]) ^ 0xD546547F)) += 112;
  return (*(STACK[0xF18] + 8 * v20))(1153138148);
}

uint64_t sub_100638718()
{
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((((2 * (&STACK[0x10000] + 3800)) | 0xF8D5107C) - (&STACK[0x10000] + 3800) + 60127170) ^ 0x1A4C93F1) + 296783349;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 46517)))(&STACK[0x10ED8]);
  v3 = STACK[0x42E8];
  v4 = STACK[0x27C0];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v3;
  LODWORD(STACK[0x655C]) = v4;
  LODWORD(STACK[0x884C]) = -1637692811;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1006387CC()
{
  v2 = STACK[0xF10] - 4374;
  v3 = v0 << (((STACK[0xF10] - 76) & 0xF7) + 28);
  LODWORD(STACK[0xA508]) = LODWORD(STACK[0xA504]) + 1358935374 + (((v3 ^ 0xACA09F20) + 1950526643) ^ ((v3 ^ 0x46726BB4) - 1634707417) ^ ((v3 ^ 0xA47CCC1C) + 2090794895));
  return (*(STACK[0xF18] + 8 * (v2 ^ (25 * (v1 != 950283553)))))();
}

uint64_t sub_1006389F8()
{
  v1 = *STACK[0x1A28];
  STACK[0x58C0] = v1;
  v2 = *(STACK[0x6408] + 4);
  STACK[0x4DB8] = STACK[0x6408] + 4;
  v3 = (((v0 ^ 0x32DCu) + 0x1EDEF5CCBLL) & (2 * v2)) + (v2 ^ 0x3DF3EFE3F6F7EFD8);
  STACK[0x72B8] = v3 - 0x9A0024144020888;
  v4 = v1 + 48 * (v3 - 0x3DF3EFE3F6F7EFD8);
  STACK[0x29B0] = v4;
  return (*(STACK[0xF18] + 8 * ((113 * (((v0 ^ 0x7769 ^ (v4 == 0)) & 1) == 0)) ^ v0)))();
}

uint64_t sub_100638B50(int a1, int a2, int a3, unsigned int a4, int a5, unsigned int a6, int a7)
{
  v14 = (((LODWORD(STACK[0x2260]) ^ a2) + a3) ^ ((LODWORD(STACK[0x2260]) ^ v11) + a1) ^ (((((v13 - 35627) | 0xA02A) + v7) ^ v10) + (LODWORD(STACK[0x2260]) ^ v9))) + a5;
  v15 = v14 < a4;
  v16 = v12 + a4 < v14;
  if (v12 > a6 != v15)
  {
    v16 = v15;
  }

  return (*(STACK[0xF18] + 8 * ((v16 * a7) ^ (v13 + v8))))();
}

uint64_t sub_100638C20()
{
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((&STACK[0x10000] + 3800) ^ 0xE6261BCF) + 296753103;
  v1 = (*(STACK[0xF18] + 8 * (v0 + 16271)))(&STACK[0x10ED8]);
  return (STACK[0x8CC0])(v1);
}

uint64_t sub_100638CD0()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x9CECD487)))();
  return (*(v1 + 8 * (((((v0 + 1662253568) | 0x2501) + 3763) * (v0 > 0x704099DE)) | (v0 + 1662255843))))(v2);
}

uint64_t sub_100638EA4(uint64_t a1)
{
  *a1 = 0x1CBBAAA40BC7C05ALL;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 38361)))();
  return (*(v2 + 8 * v1))(v3);
}

void *sub_100638F84@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0xF18];
  STACK[0x8E20] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 + 10818)))(&STACK[0x5600]);
}

uint64_t sub_10063920C@<X0>(int a1@<W8>)
{
  v4 = *v1;
  v3 = v1 + 1;
  v5 = v4 == (a1 ^ 0x31);
  if (v4 == (a1 ^ 0x31))
  {
    v6 = -371865839;
  }

  else
  {
    v6 = 371891407;
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v2;
  }

  STACK[0xB9B8] = v7;
  LODWORD(STACK[0xB9B4]) = v6;
  return (*(STACK[0xF18] + 8 * ((v5 * ((2051 * (a1 ^ 0x136C)) ^ 0x86B2)) ^ a1)))();
}

uint64_t sub_100639280()
{
  v3 = v0 - 487121454;
  v4 = (((((v1 - 19897) | 0xD09) ^ 0x9466AAD8) + (v2 ^ 0x6B99680B)) ^ ((v2 ^ 0x6F3FEA11) - 1866459665) ^ ((v2 ^ 0xED73450B) + ((v1 - 1892515318) & 0x70CDBD9D) + 311164272)) - 865442767;
  v5 = (v3 < 0xE2949D20) ^ (v4 < 0xE2949D20);
  v6 = v3 < v4;
  if (v5)
  {
    v6 = v4 < 0xE2949D20;
  }

  return (*(STACK[0xF18] + 8 * ((57884 * v6) ^ v1)))();
}

uint64_t sub_100639364@<X0>(int a1@<W8>)
{
  v3 = a1 ^ 0xBB;
  v4 = a1 - 4049;
  v5 = STACK[0xF18];
  STACK[0x57C0] = *(STACK[0xF18] + 8 * v1);
  v6 = STACK[0x7690];
  v7 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0xED0] = v7;
  v8 = (v7 + 1049);
  STACK[0x7690] = v6 + 1072;
  LODWORD(STACK[0x4DD4]) = -347583232;
  v9 = *(v5 + 8 * (a1 + 16262));
  LODWORD(STACK[0x3224]) = -347583232;
  v10 = *(&off_1010A0B50 + a1 - 35335) - 812408970;
  STACK[0xEC0] = v8;
  v11 = v9(v10);
  return (*(v5 + 8 * ((22 * (((v2 == 0) ^ (v3 + 1)) & 1)) ^ v4)))(v11);
}

uint64_t sub_100639478(uint64_t a1, int a2, int a3)
{
  v4 = *(v3 + (a3 - 592344140) % 0x13Fu);
  v5 = (a3 - 29759 - 319 * ((((39651 * (a3 - 29759)) >> 16) + (((a3 - 29759 - ((39651 * (a3 - 29759)) >> 16)) & 0xFFFE) >> 1)) >> 8));
  v6 = *(v3 + (a3 - 592344184) % 0x13Fu);
  v7 = ((v4 >> 5) | (8 * v4)) ^ *(v3 + v5);
  v8 = *(v3 + (a3 - 592344282) % 0x13Fu);
  v9 = (((v7 ^ 0x40) + 95) ^ ((v7 ^ 0x68) + 119) ^ ((v7 ^ 0xFFFFFF8D) - 108)) + (((((v6 >> 3) | (32 * v6)) ^ ((a2 ^ 0x3534) + 69)) - 107) ^ ((((v6 >> 3) | (32 * v6)) ^ 0xC) + 37) ^ ((((v6 >> 3) | (32 * v6)) ^ 0x5B) + 116)) - (((((v8 >> 1) | (v8 << 7)) ^ 0x64) - 122) ^ ((((v8 >> 1) | (v8 << 7)) ^ 0xFFFFFFBD) + 93) ^ ((((v8 >> 1) | (v8 << 7)) ^ 0x76) - 104)) + 54;
  v10 = v9 & 0xEF ^ 0xAB;
  v11 = v9 ^ 0x18;
  *(v3 + v5) = v9 ^ (2 * (v11 & (2 * (v11 & (2 * (v11 & (2 * (v11 & (2 * (v11 & (2 * (((2 * v9) & 0x32 ^ 0x76) & v9 ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ 0xB0;
  return (*(STACK[0xF18] + 8 * ((27 * (a3 == 592345402)) ^ a2)))();
}

uint64_t sub_1006398A8@<X0>(int a1@<W8>)
{
  v3 = *(STACK[0x75F8] - 0x217E172EFA1E81CLL);
  v4 = LODWORD(STACK[0x23B4]) * (((v2 + 1422282138) & 0xAB39FAEE) + 40371985) - 1378563772;
  v5 = 155453101 * ((2 * ((&STACK[0x10000] + 3800) & 0x75636C70) - (&STACK[0x10000] + 3800) + 178033547) ^ 0xECBA8844);
  LODWORD(STACK[0x10F08]) = v2 - v5 + 1777272128;
  STACK[0x10F10] = v3;
  STACK[0x10EE8] = &STACK[0xF28] ^ 0xB2C981EB4C31130FLL;
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10F04]) = v5 + 1697753898 + (((a1 ^ 0x27D2E427) - 668132391) ^ ((a1 ^ 0xFE4AED74) + 28643980) ^ ((a1 ^ 0x304DCE42) - 810405442));
  LODWORD(STACK[0x10ED8]) = v4 ^ v5;
  LODWORD(STACK[0x10EF0]) = v5 ^ 0xD3020A50;
  LODWORD(STACK[0x10EF4]) = v5 ^ 0x7CD6B3C8;
  LOWORD(STACK[0x10F00]) = 16376 - 1709 * ((2 * ((&STACK[0x10000] + 3800) & 0x6C70) - (&STACK[0x10000] + 3800) - 27765) ^ 0x8844);
  STACK[0x10EF8] = v1 + 484;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v2 ^ 0x80BD)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * v2))(v7);
}

uint64_t sub_100639A88()
{
  LODWORD(STACK[0x249C]) = v1;
  v2 = LODWORD(STACK[0x4AD8]) + ((((v0 - 3972) | 0x1820) - 12595) ^ 0xA8EC933F);
  v3 = v2 < 0xB8498A5F;
  v4 = v1 - 1203140001 < v2;
  if (v1 > 0x47B675A0 != v3)
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((109 * v4) ^ v0)))();
}

uint64_t sub_100639BB4@<X0>(unsigned int a1@<W8>)
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = 886326510;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100639BE0()
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = -868667500;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100639C5C()
{
  LODWORD(STACK[0x1624]) = v0;
  LODWORD(STACK[0x56D4]) = -371865839;
  return (*(STACK[0xF18] + 8 * ((((((v1 ^ 0x8F98) - 11014) ^ (STACK[0x73B8] == 0)) & 1) == 0) ^ v1)))();
}

uint64_t sub_100639CB4@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x55C8]) = v1;
  LODWORD(STACK[0x7DE4]) = a1;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_100639D30()
{
  v1 = STACK[0xF18];
  v2 = *(STACK[0xF18] + 8 * v0);
  STACK[0xED0] = v2;
  STACK[0x8F00] = v2;
  return (*(v1 + 8 * (((v0 + 2643) ^ 0x395C) + v0)))();
}

uint64_t sub_100639E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8)
{
  v14 = a3 + ((a7 - 1398972880) & 0x5362CEEF ^ 0xFFFFFFFFB62110B2);
  v15 = -771517617 * (*(v10 + 4 * v14) ^ v12);
  *(v10 + 4 * v14) = v15;
  *(v10 + 4 * v14) = ((*(STACK[0x218] + 4 * (*(v11 + 4 * a8) % 0x101u)) - 932433617) * (v8 + 2052753648 * a3 + 2083434705)) ^ v15;
  return (*(v13 + 8 * (a7 ^ (21 * (v9 == 22)))))();
}

uint64_t sub_100639F0C()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 46665)))();
  *(v0 + 160) = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10063A0C4@<X0>(uint64_t a1@<X8>)
{
  v6 = ((v1 + 1186017891) & 0xB94EEFFB ^ 0x2384) & a1;
  v7 = STACK[0xEC0];
  v8 = STACK[0xEA0];
  v9 = *(v6 + STACK[0xEC0] + 4) ^ *(v3 + v6) ^ (-3 * (a1 & 0xF)) ^ *(v6 + STACK[0xEA0] + 2);
  v10 = v9 ^ *(v4 + v6);
  *(v5 + a1) = *(v4 + (v10 & 0xF)) ^ *(v3 + (v10 & 0xF)) ^ *((v10 & 0xF) + STACK[0xEC0] + 4) ^ *((v10 & 0xF) + STACK[0xEA0] + 2) ^ (-3 * (v10 & 0xF)) ^ 0xBA ^ *(v2 + v10 % 0x30u);
  v11 = *(v4 + v6);
  v12 = a1 % 0x30u;
  v13 = *(v2 + v12);
  v14 = v13 & 0xF ^ 5;
  v15 = *(v4 + v14);
  v16 = *(v3 + v14);
  v17 = *(v14 + v7 + 4);
  v18 = *(v14 + v8 + 2);
  *(v2 + v12) = v15 ^ v13 ^ v16 ^ v17 ^ (-3 * v14) ^ v18 ^ ((~((v9 ^ v11) >> 3) | 0xF7) + (((v9 ^ v11) & 0xF0) >> 4) + 21) ^ 0x14;
  v19 = ((v15 ^ v13 ^ v16 ^ v17) ^ ((-3 * v14) ^ v18 ^ ((~((v9 ^ v11) >> 3) | 0xF7) + (((v9 ^ v11) & 0xF0) >> 4) + 21))) & 0xF ^ 1;
  *(v4 + v6) = v11 ^ 0xE5 ^ *(v2 + (*(v3 + v19) ^ *(v4 + v19) ^ *(v19 + v7 + 4) ^ *(v19 + v8 + 2) ^ (-3 * v19)) % 0x30u);
  LOBYTE(v11) = *(v5 + v6);
  v20 = *(v2 + (v11 ^ 0x5Fu) % 0x30) & 0xF ^ 5;
  *(STACK[0xEB0] + v6) = *(v4 + v20) ^ v11 ^ *(v3 + v20) ^ *(v20 + v7 + 4) ^ (-3 * v20) ^ *(v20 + v8 + 2);
  return (*(STACK[0xF18] + 8 * ((15 * (((a1 + 1 - v1) | (v1 - (a1 + 1))) >= 0)) ^ (v1 + 7685))))();
}

uint64_t sub_10063A47C@<X0>(int a1@<W8>)
{
  v6 = *v2;
  v7 = *v3;
  v8 = STACK[0xF18];
  STACK[0x8500] = *(STACK[0xF18] + 8 * a1);
  STACK[0xB888] = v6;
  LODWORD(STACK[0xB894]) = v7;
  STACK[0xB898] = v4;
  STACK[0x1CC0] = v5;
  v9 = STACK[0x7690];
  STACK[0xB8A0] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v9 + 16;
  STACK[0x98B0] = *(v8 + 8 * v1);
  return (*(v8 + 8 * (v1 - 45597 + 110 * (v1 ^ 0x4C7))))();
}

uint64_t sub_10063A548()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 328783278;
  v2 = 634647737 * (((&STACK[0x10ED8] | 0xF0D01512A9135914) - (&STACK[0x10ED8] | 0xF2FEAED56ECA6EBLL) + 0xF2FEAED56ECA6EBLL) ^ 0x2A0BBAFDC48576E8);
  v3 = STACK[0x5690] - v2;
  LODWORD(STACK[0x10EE4]) = v1 + v2;
  STACK[0x10EF0] = v3;
  STACK[0x10EE8] = v2;
  v4 = v1 - v2;
  LODWORD(STACK[0x10EFC]) = v4 - 9;
  LODWORD(STACK[0x10EF8]) = v0 - v2 - 1230214699;
  LODWORD(STACK[0x10ED8]) = -634647737 * (((&STACK[0x10ED8] | 0xF0D01512A9135914) - (&STACK[0x10ED8] | 0xF2FEAED56ECA6EBLL) + 1458349803) ^ 0xC48576E8);
  LODWORD(STACK[0x10EDC]) = v4 - 3746;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 + 16305)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * SLODWORD(STACK[0x10EE0])))(v6);
}

uint64_t sub_10063A68C()
{
  v1 = (v0 - 413862876) & 0x18AACFB5;
  v2 = v0 - 15398;
  LODWORD(STACK[0x10ED8]) = v0 + 1012831759 * ((2 * (((&STACK[0x10000] + 3800) ^ 0xDA9A6F6B) & 0x1F479342) - ((&STACK[0x10000] + 3800) ^ 0xDA9A6F6B) + 1622699193) ^ 0xAAB11558) + 6486;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 16407)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (((LODWORD(STACK[0x10EDC]) == -371865839) * (v1 ^ 0x4F1E)) ^ v2)))(v4);
}

uint64_t sub_10063A9B4@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v5 = *(a1 + 4 * v2 - 842075488);
  v6 = (((v5 >> 8) ^ 0xC57C80) + (v5 ^ 0xC57C8082)) ^ HIWORD(v5);
  v7 = (((HIBYTE(v5) ^ 0x90246BD) - 1451038642) ^ ((HIBYTE(v5) ^ 0x9F8D6AA5) + 1057866838) ^ ((HIBYTE(v5) ^ 0x968F2CDD) + 906986030)) - 10647498 + (((v6 ^ 0xA40E4221) + 81241160) ^ ((v6 ^ 0x59733536) - 106245295) ^ ((v6 ^ 0xFD7DB26B) + 1571050510));
  v8 = (v7 ^ 0x7D) & (2 * (v7 & 0x79)) ^ v7 & 0x79;
  LOBYTE(v6) = ((2 * (v7 ^ 0x8D)) ^ 0xE8) & (v7 ^ 0x8D) ^ (2 * (v7 ^ 0x8D)) & 0xF4;
  v9 = v6 ^ 0x14;
  LOBYTE(v6) = v8 ^ 0xF4 ^ (v6 ^ 0xE0) & (4 * v8);
  *(v3 + (v2 - 210518872) % v4) ^= v7 ^ (2 * ((16 * v6) ^ v6 ^ ((16 * v6) ^ 0x40) & ((4 * v9) & 0xF0 ^ 0x20 ^ ((4 * v9) ^ 0xD0) & v9))) ^ 0x11;
  return (*(STACK[0xF18] + 8 * ((233 * (v2 != 210518965)) ^ a2)))();
}

uint64_t sub_10063ABB0()
{
  v3 = (((v2 ^ 0x3137D374) + 1450017505) ^ ((v2 ^ 0x424786CB) + 622712672) ^ ((v2 ^ 0x2003CC5) + 1700425042)) - 181403959;
  v4 = (((LODWORD(STACK[0x7FF8]) ^ 0xAE5B84D3) + 1369733933) ^ ((LODWORD(STACK[0x7FF8]) ^ 0x4808E39) - 75533881) ^ ((LODWORD(STACK[0x7FF8]) ^ 0x430E46C0 ^ (v0 - 522556609) & 0x1F25BB7B) - 1125043707)) - (LODWORD(STACK[0x17DC]) + v1) + 381702118;
  v5 = (v3 < 0xB5A37B8) ^ (v4 < 0xB5A37B8);
  v6 = v3 > v4;
  if (v5)
  {
    v6 = v3 < 0xB5A37B8;
  }

  return (*(STACK[0xF18] + 8 * ((13 * v6) ^ v0)))();
}

uint64_t sub_10063AD7C@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x10EE0]) = (v1 + 329048321) ^ (1112314453 * ((((&STACK[0x10000] + 3800) | 0x3BF25853) - ((&STACK[0x10000] + 3800) & 0x3BF25850)) ^ 0xD4A4728A));
  STACK[0x10ED8] = a1;
  STACK[0x10EE8] = &STACK[0xF28] ^ 0x215F96C1AC64C017 ^ (v1 + 28618);
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0xD053)))(&STACK[0x10ED8]);
  *(STACK[0x78B0] + 120) = v2;
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_10063AED8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0xDF0]) = v9 + 7;
  v11 = ((a3 << 8) | BYTE2(v8)) + 908299718;
  if ((v11 + v10 - 1420193014) >= 0xFFFFFFE0)
  {
    v12 = v11;
  }

  else
  {
    v12 = ((a8 + 26833) ^ 0x54A6E7CE) - v10;
  }

  LODWORD(STACK[0xED0]) = v12;
  return (*(STACK[0xF18] + 8 * (a8 ^ (175 * (v10 != 511893223)))))();
}

uint64_t sub_10063B030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 30181;
  v8 = *(STACK[0x9760] + 8);
  STACK[0x30A0] = STACK[0x9760] + 8;
  STACK[0x2688] = v8;
  STACK[0x1488] = &STACK[0x3448];
  STACK[0x5D28] = &STACK[0x94E0];
  LODWORD(STACK[0x4704]) = -838689278;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10063B180()
{
  v1 = v0 + ((STACK[0xF10] - 23335) | 0x2C0) - 1713915191;
  v2 = (((LODWORD(STACK[0x7C40]) ^ 0xF8DC4B16) + 119780586) ^ (((STACK[0xF10] + 11800) ^ 0xFFCD6EA0 ^ LODWORD(STACK[0x7C40])) + 3287053) ^ ((LODWORD(STACK[0x7C40]) ^ 0xEEC45BF4) + 289121292)) - 2085768082;
  if (v1 < 0x99D7ED5D != v2 < 0x99D7ED5D)
  {
    v3 = v1 < 0x99D7ED5D;
  }

  else
  {
    v3 = v1 > v2;
  }

  return (*(STACK[0xF18] + 8 * ((v3 | (2 * v3)) ^ (STACK[0xF10] - 2982))))();
}

uint64_t sub_10063B32C@<X0>(int a1@<W8>)
{
  v1 = a1 ^ 0x8F6A;
  v2 = ((a1 ^ 0x8F6A) - 33121) | 0x5010;
  v3 = 19 * (a1 ^ 0x35B);
  LODWORD(STACK[0x10ED8]) = ((a1 ^ 0x8F6A) - 1762661851) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x48D118EF) + (~(&STACK[0x10000] + 3800) | 0xB72EE710)) ^ 0x79D0D5CA));
  STACK[0x10EE0] = 0;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * ((a1 ^ 0x8F6A) + 15695)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((15887 * (*STACK[0x970] > ((v3 + 16984) ^ v2))) ^ v1)))(v5);
}

uint64_t sub_10063B564@<X0>(int a1@<W8>)
{
  v6 = STACK[0xF18];
  STACK[0x33A0] = *(STACK[0xF18] + 8 * v4);
  STACK[0x8100] = v3;
  LODWORD(STACK[0x7534]) = a1;
  STACK[0x31E0] = v1;
  STACK[0x4DF0] = 0x427A3CD3E8C5DA2FLL;
  return (*(v6 + 8 * (((v5 == 0) * ((v2 ^ 0x8274) - 54032 + ((v2 - 18348) | 0x90A))) ^ v2)))();
}

uint64_t sub_10063B5E8()
{
  v1 = STACK[0xF18];
  STACK[0x6A00] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((2 * v0) ^ 0xD058) - 42047) ^ v0)))();
}

uint64_t sub_10063B688()
{
  v1 = STACK[0xF10];
  *(STACK[0xEB0] + 64) = v0;
  return (*(STACK[0xF18] + 8 * (v1 - 24323)))();
}

uint64_t sub_10063B750()
{
  v0 = STACK[0xF10] - 10220;
  STACK[0x8A48] = STACK[0xEA0];
  LODWORD(STACK[0x6B14]) = STACK[0xE90];
  STACK[0x6FE8] = STACK[0xEB0];
  LODWORD(STACK[0x15B4]) = STACK[0xEC0];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10063B97C()
{
  v0 = STACK[0xF10] - 34251;
  v1 = STACK[0xB120];
  v2 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x1C00)))(v1);
}

uint64_t sub_10063BCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(STACK[0x2C38] + 32) + 289621810;
  v6 = ((v5 & 0xEEBCB8C9) << (v4 - 69)) & (v5 ^ 0xCE3E3CCD) ^ v5 & 0xEEBCB8C9;
  v7 = ((2 * (v5 ^ 0xCB462CCD)) ^ 0x4BF52808) & (v5 ^ 0xCB462CCD) ^ (2 * (v5 ^ 0xCB462CCD)) & 0x25FA9404;
  v8 = v7 ^ 0x240A9404;
  v9 = (v7 ^ 0x1F81000) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x97EA5010) & v8 ^ (4 * v8) & 0x25FA9400;
  v11 = (v10 ^ 0x5EA1000) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x20108404)) ^ 0x5FA94040) & (v10 ^ 0x20108404) ^ (16 * (v10 ^ 0x20108404)) & 0x25FA9400;
  v13 = v11 ^ 0x25FA9404 ^ (v12 ^ 0x5A80000) & (v11 << 8);
  v14 = v5 ^ (2 * ((v13 << 16) & 0x25FA0000 ^ v13 ^ ((v13 << 16) ^ 0x14040000) & (((v12 ^ 0x20529404) << 8) & 0x25FA0000 ^ 0x56A0000 ^ (((v12 ^ 0x20529404) << 8) ^ 0x7A940000) & (v12 ^ 0x20529404))));
  LODWORD(STACK[0xA614]) = v14 ^ 0x4A4881A1;
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x1AE9)))(a1, a2, a3, a4, ((0x11E3 % (v14 ^ 0xAD4990C1)) ^ 0x73FAEB9F) - 867981652 + ((2 * (0x11E3 % (v14 ^ 0xAD4990C1))) & 0x173E));
}

uint64_t sub_10063BF68()
{
  v4 = STACK[0x6DD8];
  *v1 = v3;
  *(v1 + 8) = v4;
  *(v1 + 16) = v2;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10063BF8C()
{
  *(v4 + 4316) = v1;
  *(v4 + 4312) = v3;
  v5 = *(v2 + 4);
  v6 = ((v0 + 2090869420) & 0x835F2B9F ^ 0xE42AFD10) + v1;
  v7 = v5 + 721891003;
  v8 = v5 > 0xD4F8D144;
  v9 = (v6 < 0x2B072EBB) ^ v8;
  v10 = v6 < v7;
  if (!v9)
  {
    v8 = v10;
  }

  return (*(STACK[0xF18] + 8 * ((60 * v8) ^ v0)))();
}

void sub_10063C014(uint64_t a1)
{
  v1 = *(a1 + 4) - 193924789 * ((-2 - ((a1 | 0xDE2BB516) + (~a1 | 0x21D44AE9))) ^ 0x976F788F);
  __asm { BRAA            X12, X17 }
}

void sub_10063C3A0(uint64_t a1)
{
  v1 = *(a1 + 32) + 139493411 * (((a1 | 0x5307E8BA) - (a1 & 0x5307E8BA)) ^ 0x5F2A09FF);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10063C4D8@<X0>(uint64_t a1@<X8>)
{
  v3 = (((*(a1 + 16) ^ 0x4F048E60) - 1325698656) ^ ((*(a1 + 16) ^ 0xD40CD91F) + 737355489) ^ ((((((v1 ^ 0xE9D5FC1C) - 669662734) & 0x27EA6FCF) + 1927095199) ^ *(a1 + 16)) - 1927123054)) - 930925031;
  v4 = (((*(a1 + 12) ^ 0xAC486D88) + 1404539512) ^ ((*(a1 + 12) ^ 0xB4BDBB) - 11845051) ^ ((*(a1 + 12) ^ (((v1 ^ 0xE9D5FC1C) + 5555) | 0x2200) ^ 0x452965E2) - 1160320802)) - 930925031;
  v5 = (v3 < 0xDEAD6F08) ^ (v4 < 0xDEAD6F08);
  v6 = v3 < v4;
  if (v5)
  {
    v6 = v4 < 0xDEAD6F08;
  }

  return (*(v2 + 8 * ((47 * v6) ^ v1 ^ 0xE9D5FC1C)))();
}

uint64_t sub_10063C608(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, unint64_t a38, uint64_t a39, unint64_t a40, unint64_t a41, unint64_t a42, unint64_t a43, uint64_t a44, uint64_t a45, unint64_t a46, unint64_t a47)
{
  STACK[0x4F8] = STACK[0x3D0];
  STACK[0x598] = STACK[0x310];
  STACK[0x528] = STACK[0x300];
  STACK[0x4B8] = a41;
  STACK[0x508] = a46;
  STACK[0x630] = a47;
  STACK[0x5C8] = a40;
  STACK[0x4E0] = a43;
  STACK[0x490] = a42;
  STACK[0x470] = a38;
  STACK[0x4D8] = 0;
  STACK[0x5B8] = v48;
  STACK[0x4F0] = a1;
  STACK[0x590] = a1;
  STACK[0x530] = a1;
  v49 = STACK[0x430];
  v50 = (*(STACK[0x430] + 8 * (v47 ^ 0xA22E)))();
  return (*(v49 + 8 * v47))(v50);
}

uint64_t sub_10063C69C@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (v5 == 19)
  {
    v8 = 0;
  }

  else
  {
    v7 = (*(a3 + v5 + 1128) ^ v6) - *(v4 + v5);
    v8 = v7 == (a1 & (2 * v7));
  }

  v9 = !v8;
  return (*(STACK[0xF18] + 8 * ((v9 * a2) ^ v3)))();
}

uint64_t sub_10063C8E4()
{
  v2 = v0 | 0x4A00;
  LODWORD(STACK[0x43DC]) = v1;
  v3 = LODWORD(STACK[0x93C8]);
  STACK[0x89A0] = v3 ^ 0x981390CC6385557;
  v4 = STACK[0x138C];
  v5 = STACK[0x15C8];
  v6 = 1603510583 * ((~&STACK[0x10ED8] & 0xB823033B9F702DADLL | &STACK[0x10ED8] & 0x47DCFCC4608FD250) ^ 0x87D214D708AB1F06);
  LODWORD(STACK[0x10EF4]) = (v2 - 6114) ^ v6;
  LODWORD(STACK[0x10EF0]) = v4 - v6;
  STACK[0x10EE8] = (v3 ^ 0xB79969A3102BF9DELL) - v6;
  STACK[0x10EE0] = v5;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v2 + 27803)))(&STACK[0x10ED8]);
  v10 = LODWORD(STACK[0x10ED8]) == -371865839 || LODWORD(STACK[0x138C]) == v2 + 1497644202;
  return (*(v7 + 8 * ((14 * v10) | v2)))(v8);
}

uint64_t sub_10063CA18@<X0>(int a1@<W8>)
{
  v3 = a1 ^ 0x8E1D;
  v4 = a1 + 14420;
  LODWORD(STACK[0x1A4C]) = v2;
  v5 = *v1;
  STACK[0x3618] = *v1;
  v7 = v2 == v3 - 371867157 && v5 != 0;
  return (*(STACK[0xF18] + 8 * ((26 * v7) ^ v4)))();
}

uint64_t sub_10063CAA0@<X0>(_BYTE *a1@<X8>)
{
  a1[63] = v2[15];
  a1[62] = v2[14];
  a1[61] = v2[13];
  a1[60] = v2[12];
  a1[59] = v2[11];
  a1[58] = v2[10];
  a1[57] = v2[9];
  a1[56] = v2[8];
  a1[55] = v2[7];
  a1[54] = v2[6];
  a1[53] = v2[5];
  a1[52] = v2[4];
  a1[51] = v2[3];
  a1[50] = v2[2];
  a1[49] = v2[1];
  a1[48] = *v2;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_10063CC98@<X0>(unint64_t a1@<X8>)
{
  v8 = *v7;
  v9 = STACK[0xF18];
  STACK[0x6C10] = *(STACK[0xF18] + 8 * v5);
  STACK[0x6710] = v4;
  LODWORD(STACK[0x1824]) = v1;
  LODWORD(STACK[0x4F2C]) = v8;
  STACK[0x4CF8] = a1;
  STACK[0x5150] = v3;
  STACK[0x8358] = v2;
  v10 = STACK[0x7690];
  v11 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x3D90] = v11;
  STACK[0x7D48] = (v11 + 100);
  STACK[0x2580] = (v11 + 116);
  STACK[0x1CB8] = (v11 + 132);
  STACK[0x2918] = (v11 + 660);
  STACK[0x7690] = v10 + ((v6 - 7975) ^ 0x898BLL);
  LODWORD(STACK[0x5EC8]) = 137779115;
  LODWORD(STACK[0x3C94]) = 1245487044;
  LOBYTE(STACK[0x4457]) = 57;
  if (v4)
  {
    v12 = a1 == 0;
  }

  else
  {
    v12 = 1;
  }

  v15 = v12 || v3 == 0 || v2 == 0;
  return (*(v9 + 8 * ((239 * ((((v6 - 27700) ^ v15) & 1) == 0)) ^ v6)))();
}

uint64_t sub_10063CE24()
{
  v3 = STACK[0x9348];
  *v3 = 1802923124;
  *(v3 + 8) = STACK[0x5FD8];
  *(v3 + 16) = v0 - 0x7E666516A39B349ELL;
  *(v3 + 24) = STACK[0x7140];
  *(v3 + 32) = *(v0 + v1);
  v4 = 353670337 * ((((&STACK[0x10000] + 3800) | 0x6E576B7D) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x91A89480)) ^ 0xDA769340);
  LODWORD(STACK[0x10EE0]) = ((((*(STACK[0x8E90] + 32) ^ 0x4F863FD7) - 1334198231) ^ ((*(STACK[0x8E90] + 32) ^ 0x7667FD09) - 1986526473) ^ ((*(STACK[0x8E90] + 32) ^ 0xD03405CF) + 801897009)) + 1389366298) ^ v4;
  LODWORD(STACK[0x10EDC]) = (v2 - 101460067) ^ v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v2 ^ 0x5B8C)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((174 * (LOBYTE(STACK[0x10ED8]) == (109 * (v2 ^ 0x7A) + 33))) ^ v2)))(v6);
}

uint64_t sub_10063CF94()
{
  *v1 = v0;
  STACK[0x4B0] = v4;
  *STACK[0x2B0] = (*(v3 + 8 * (v2 ^ 0x828E)))();
  return (*(v3 + 8 * v2))();
}

uint64_t sub_10063D2E8@<X0>(int a1@<W8>)
{
  v8 = *v1;
  v9 = STACK[0xF18];
  STACK[0x8D10] = *(STACK[0xF18] + 8 * a1);
  *(v5 + 928) = v7;
  *(v5 + 936) = v8;
  *(v5 + 948) = v3;
  *(v5 + 952) = v2;
  *(v5 + 960) = v4;
  return (*(v9 + 8 * ((3 * (v6 ^ 0x2D75) - 30164) ^ v6)))();
}

uint64_t sub_10063D33C(uint64_t a1, __int16 a2)
{
  v10 = v4 < v3;
  *(a1 + (a2 - 2552)) = v7;
  v11 = (a2 + v8);
  v12 = v10 ^ (v11 < ((v5 | v6) ^ v9));
  v13 = v11 < v4;
  if (!v12)
  {
    v10 = v13;
  }

  return (*(STACK[0xF18] + 8 * ((2044 * v10) ^ v2)))();
}

uint64_t sub_10063D39C()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 30557;
  v2 = STACK[0xB1A8];
  v3 = 1603510583 * ((-2 - ((~&STACK[0x10ED8] | 0x6247088F6E8DD477) + (&STACK[0x10ED8] | 0x9DB8F77091722B88))) ^ 0x5DB61F63F956E6DCLL);
  STACK[0x10F08] = STACK[0xB1B0];
  STACK[0x10EE0] = 0;
  STACK[0x10EE8] = v2;
  LODWORD(STACK[0x10ED8]) = v0 - v3 - 29881;
  STACK[0x10EF8] = v3 + 0x1D5BAA6B483C089DLL;
  STACK[0x10EF0] = v3 + 0x787CF1E15A2A6CC2;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 16347)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v1))(v5);
}

uint64_t sub_10063D4F0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v75 = v69 ^ (v70 + 1420015558) & 0xAB5BFFB3 ^ 0x26DF3EED;
  v76 = (((v70 - 11005) ^ 0xC1E33921 ^ v69) + 1042045907) ^ ((v69 ^ 0xC42EE74D) + 1003559091);
  v77 = a5 + 850723606;
  v78 = v73 - 977280614 * a1 - (v76 ^ (v75 - 652165486)) + 2092140517;
  v79 = v78 ^ (-162197221 * *(a69 + 4 * (a58 ^ v77 ^ ((v77 ^ 0xE563880B) + 673805539) ^ ((v77 ^ 0xC6247D64) + 191791502) ^ ((v77 ^ 0xFA0D0987) + 927462767) ^ ((v77 ^ 0xEBFFFFFE) + 649397016) ^ 0x9064BC75)) + 101936050) ^ ((v78 ^ 0x8DA624BD) + 1040699255) ^ ((v78 ^ 0x9893A977) + 724714173) ^ ((v78 ^ 0xA6956E01) + 355763659) ^ ((v78 ^ 0xFFFEF7FF) + 1281301557);
  v80 = ((v79 ^ 0x33447C4A) + 357371055) ^ ((v79 ^ 0x9895C9C8) - 1097025235) ^ ((v79 ^ 0xE78FA1B6) - 1048129197);
  v81 = ((2 * v72) & 0x1EE) + (v72 ^ 0xFAEF7FDB32FFFEF7);
  v82 = v81 + 0x5108024CD0000CELL;
  v83 = (STACK[0x220] + 4 * v81 + 0x1442009334000424);
  if (v82 < 0xFFFFFFFFFFFFFFC5)
  {
    v83 = (STACK[0x218] + 4 * v82);
  }

  v84 = STACK[0x210];
  *(STACK[0x210] + 4 * (v74 & 0x1F)) -= (-102575295 * (v80 - (((*v83 ^ 0x631663C5) - 1662411717) ^ ((*v83 ^ 0xF6132812) + 166516718) ^ ((*v83 ^ 0xB61749D9) + 1239987751))) - 2137713567) ^ 0x914CEBF;
  return (*(STACK[0x228] + 8 * ((19 * (*(v84 + 4 * (a8 & 0x1F)) % 0x1Bu == 0)) ^ v70)))((v71 - 19 * a7));
}

uint64_t sub_10063D92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(STACK[0xF18] + 8 * STACK[0xE70]);
  v8 = STACK[0xE80];
  v9 = STACK[0xE60];
  v10 = STACK[0xEA0];
  LODWORD(STACK[0xE20]) = v6;
  return v7(v10, a2, 4294952770, a4, a5, a6, v8, v9);
}

uint64_t sub_10063D964()
{
  LODWORD(STACK[0x603C]) = v0;
  v2 = STACK[0xF18];
  STACK[0x3780] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 - 10122 + ((v1 + 1543680160) & 0xA3FD7D5A))))();
}

uint64_t sub_10063D9B4@<X0>(uint64_t a1@<X8>)
{
  v5 = 4 * v1;
  v6 = *(a1 + 4 * v1);
  v7 = veorq_s8(vmlaq_s32(vdupq_n_s32(0x73E7CCFCu), veorq_s8(veorq_s8(vaddq_s32(veorq_s8(v6, vdupq_n_s32(0xE9658C30)), vdupq_n_s32(0x169A73D0u)), vaddq_s32(veorq_s8(v6, vdupq_n_s32(0x45F5D0Eu)), vdupq_n_s32(0xFBA0A2F2))), vaddq_s32(veorq_s8(v6, vdupq_n_s32(0xD6ACCF0A)), vdupq_n_s32(0x295330F6u))), vdupq_n_s32(0xE40D3CFB)), *(v3 + 4 * v1));
  v8 = veorq_s8(vmulq_s32(v7, vdupq_n_s32(0x1D17C115u)), v6);
  *(a1 + v5) = v8;
  *(v3 + v5) = veorq_s8(vmlaq_s32(vdupq_n_s32(0x6212ED3Cu), veorq_s8(veorq_s8(vaddq_s32(veorq_s8(v8, vdupq_n_s32(0x2ACD44A7u)), vdupq_n_s32(0xD532BB59)), vaddq_s32(veorq_s8(v8, vdupq_n_s32(0xDDF6AEDu)), vdupq_n_s32(0xF2209513))), vaddq_s32(veorq_s8(v8, vdupq_n_s32(0x1C84307Eu)), vdupq_n_s32(0xE37BCF82))), vdupq_n_s32(0xC73E594B)), v7);
  return (*(v4 + 8 * ((467 * (v1 + 4 != (v2 ^ 0x5646u) - 29334)) ^ v2)))();
}

uint64_t sub_10063DB20()
{
  v8 = *(*v4 + (*STACK[0x800] & 0x20FAB224)) ^ 0x20FAB225;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  v12 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v11;
  v13 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v12 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v12;
  v14 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v13 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v13;
  v15 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v14 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v14;
  LODWORD(v15) = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v15 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v15;
  STACK[0x26B8] = v0;
  STACK[0x26B0] = 0;
  v16 = ((553300517 * v15 + 7) ^ (553300517 * v15)) * v2 % 7;
  v17 = *(&STACK[0x26B0] | v16);
  *(&STACK[0x26B0] | v16) = STACK[0x26B7];
  LOBYTE(STACK[0x26B7]) = v17;
  v18 = ((553300517 * v15 + 6) ^ (553300517 * v15)) * v2 % 6;
  v19 = *(&STACK[0x26B0] | v18);
  *(&STACK[0x26B0] | v18) = STACK[0x26B6];
  LOBYTE(STACK[0x26B6]) = v19;
  v20 = ((553300517 * v15 + 5) ^ (553300517 * v15)) * v2 % 5;
  v21 = *(&STACK[0x26B0] | v20);
  *(&STACK[0x26B0] | v20) = STACK[0x26B5];
  LOBYTE(STACK[0x26B5]) = v21;
  v22 = STACK[0x26B0];
  LOBYTE(STACK[0x26B0]) = STACK[0x26B4];
  LOBYTE(STACK[0x26B4]) = v22;
  v23 = ((553300517 * v15 + 3) ^ (553300517 * v15)) * v2 % 3;
  v24 = *(&STACK[0x26B0] | v23);
  *(&STACK[0x26B0] | v23) = STACK[0x26B3];
  LOBYTE(STACK[0x26B3]) = v24;
  v25 = STACK[0x26B1];
  LOBYTE(STACK[0x26B2]) = STACK[0x26B0];
  LOWORD(STACK[0x26B0]) = v25;
  v26 = vdup_n_s32(553300517 * v15);
  v27.i32[0] = v26.i32[0];
  v27.i32[1] = 553300517 * v15 + 1;
  v28 = veor_s8(vmul_s32(v27, v26), v26);
  STACK[0x26B0] = vmla_s32(v28, STACK[0x26B0], v6);
  STACK[0x26B8] ^= STACK[0x26B0];
  STACK[0x26B8] = vmul_s32(vsub_s32(STACK[0x26B8], v28), v7);
  v29 = STACK[0x26BA];
  LOWORD(STACK[0x26B9]) = STACK[0x26B8];
  LOBYTE(STACK[0x26B8]) = v29;
  v30 = (&STACK[0x26B8] | v23);
  v31 = *v30;
  *v30 = STACK[0x26BB];
  LOBYTE(STACK[0x26BB]) = v31;
  LOBYTE(v30) = STACK[0x26B8];
  LOBYTE(STACK[0x26B8]) = STACK[0x26BC];
  LOBYTE(STACK[0x26BC]) = v30;
  v32 = (&STACK[0x26B8] | v20);
  LOBYTE(v30) = *v32;
  *v32 = STACK[0x26BD];
  LOBYTE(STACK[0x26BD]) = v30;
  v33 = (&STACK[0x26B8] | v18);
  LOBYTE(v32) = *v33;
  *v33 = STACK[0x26BE];
  LOBYTE(STACK[0x26BE]) = v32;
  v34 = (&STACK[0x26B8] | v16);
  v35 = *v34;
  *v34 = STACK[0x26BF];
  LOBYTE(STACK[0x26BF]) = v35;
  v36 = STACK[0x26B8];
  v37 = (553300517 * STACK[0x26B8]) ^ v15;
  for (i = 1; i != 73; ++i)
  {
    v39 = ((v37 + i) ^ v37) * v2 % i;
    v40 = *(v36 + 8 * v39) ^ *(v36 + 8 * i);
    *(v36 + 8 * i) = v40;
    v41 = *(v36 + 8 * v39) ^ v40;
    *(v36 + 8 * v39) = v41;
    *(v36 + 8 * i) ^= v41;
  }

  v42 = 0;
  v43 = xmmword_100BC7620;
  v44 = xmmword_100BC7630;
  v45 = xmmword_100BC7640;
  v46 = xmmword_100BC7650;
  v47 = vdupq_n_s32(v37);
  v48 = *&STACK[0x610];
  v49.i64[0] = 0x9B009B009B009BLL;
  v49.i64[1] = 0x9B009B009B009BLL;
  v50.i64[0] = 0x1000000010;
  v50.i64[1] = 0x1000000010;
  do
  {
    v51 = *(v36 + v42);
    v52 = vmovl_high_u8(v51);
    v53 = vmovl_u8(*v51.i8);
    v64.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v45, v47), vsubq_s32(v45, v47)), v47), vmull_high_u16(v53, v49));
    v64.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v44, v47), vsubq_s32(v44, v47)), v47), vmull_u16(*v52.i8, v5));
    v64.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v46, v47), vsubq_s32(v46, v47)), v47), vmull_u16(*v53.i8, v5));
    v64.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v43, v47), vsubq_s32(v43, v47)), v47), vmull_high_u16(v52, v49));
    *(v36 + v42) = vqtbl4q_s8(v64, v48);
    v42 += 16;
    v46 = vaddq_s32(v46, v50);
    v45 = vaddq_s32(v45, v50);
    v44 = vaddq_s32(v44, v50);
    v43 = vaddq_s32(v43, v50);
  }

  while (v42 != 576);
  v54 = 0;
  v55 = xmmword_100F52AE0;
  v56 = xmmword_100F52AF0;
  v57 = v36 + 576;
  v58 = vdupq_n_s32(v37);
  v59 = *&STACK[0x5F0];
  v60.i64[0] = 0x800000008;
  v60.i64[1] = 0x800000008;
  do
  {
    v61 = vmovl_u8(*(v57 + v54));
    v63.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v55, v58), vsubq_s32(v55, v58)), v58), vmull_high_u16(v61, v49));
    v63.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v56, v58), vsubq_s32(v56, v58)), v58), vmull_u16(*v61.i8, v5));
    *(v57 + v54) = vqtbl2q_s8(v63, v59).u64[0];
    v56 = vaddq_s32(v56, v60);
    v55 = vaddq_s32(v55, v60);
    v54 += 8;
  }

  while (v54 != 8);
  *STACK[0x6E8] = STACK[0x26B8];
  return (*(v3 + 8 * (v1 - 1650486899)))(v55, v56);
}

uint64_t sub_10063E14C()
{
  v0 = STACK[0xF10] + 3130;
  STACK[0x8DE0] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10063E16C@<X0>(int a1@<W2>, int a2@<W8>)
{
  LODWORD(STACK[0x6F74]) = v4;
  LODWORD(STACK[0x7B24]) = v3;
  return (*(STACK[0xF18] + 8 * (((((((v2 ^ a2) - 23296) | 0x1201) + 2969) ^ 0x230A) * (v4 == a1)) ^ v2 ^ a2)))();
}

uint64_t sub_10063E508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned int a8@<W8>)
{
  v8 = *(STACK[0x2FB8] + 8);
  STACK[0x2BE8] = STACK[0x2FB8] + 8;
  STACK[0x7548] = v8;
  STACK[0x77B0] = &STACK[0x2F40];
  LODWORD(STACK[0x648C]) = -1153760013;
  return (*(STACK[0xF18] + 8 * ((4006 * (a8 > 0x5B1AEE1E)) ^ (a8 - 1781013121 + (a8 ^ 0x6A272E9D)))))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10063E5C0@<X0>(uint64_t a1@<X8>)
{
  v3 = v2 & 0xDF86B6BF;
  *v1 = (((*(a1 + 16) ^ 0x55DA82A7C9BC9656) + (((v2 & 0xDF86B6BF) + 1803273466) & 0x9484AFBF ^ 0xAA257D583643E291)) ^ ((*(a1 + 16) ^ 0x942ECC56BD91161FLL) + 0x6BD133A9426EE9E1) ^ ((*(a1 + 16) ^ 0xC1F44EF19DF84758) + 0x3E0BB10E6207B8A8)) + *a1 + 3923101465;
  v4 = *(a1 + 24) != ((((v2 & 0xDF86B6BF) - 3665) | 0x830B) ^ 0xE9D54C2A);
  return (*(STACK[0xF18] + 8 * (((8 * v4) | (16 * v4)) ^ v3)))();
}

uint64_t sub_10063E8BC()
{
  v5 = *(v3 + 4 * (v2 - 1703456242));
  v6 = 1664525 * (((v5 ^ (v5 >> 30) ^ 0xEB8BDFE8) + 487428437) ^ ((v5 ^ (v5 >> 30) ^ 0x9A411CD1) + 1825002094) ^ ((v5 ^ (v5 >> 30) ^ 0x71CAC339) - 2025026170)) + 1308561116;
  v7 = (v6 ^ 0xFD522B2B) & (2 * (v6 & 0xF95AA38B)) ^ v6 & 0xF95AA38B;
  v8 = ((2 * (v6 ^ 0x6D57682B)) ^ 0x281B9740) & (v6 ^ 0x6D57682B) ^ (2 * (v6 ^ 0x6D57682B)) & 0x940DCBA0;
  v9 = v8 ^ 0x940448A0;
  v10 = (v8 ^ 0x98200) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0x50372E80) & v9 ^ (4 * v9) & 0x940DCBA0;
  v12 = (v11 ^ 0x10050A80) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x8408C120)) ^ 0x40DCBA00) & (v11 ^ 0x8408C120) ^ (16 * (v11 ^ 0x8408C120)) & 0x940DCB80;
  v14 = v12 ^ 0x940DCBA0 ^ (v13 ^ 0xC8A00) & (v12 << 8);
  v15 = v6 ^ *(v3 + 4 * (v2 - 1703456241)) ^ (2 * ((v14 << 16) & 0x140D0000 ^ v14 ^ ((v14 << 16) ^ 0x4BA00000) & (((v13 ^ 0x940141A0) << 8) & 0x140D0000 ^ 0x10040000 ^ (((v13 ^ 0x940141A0) << 8) ^ 0xDCB0000) & (v13 ^ 0x940141A0))));
  v16 = *(STACK[0xED0] + 4 * (v0 - 1239884348));
  *(v3 + 4 * (v2 - 1703456241)) = v0 + (((v16 ^ 0xB2D208D7) + 1294858025) ^ ((v16 ^ 0x9F81FA6B) + 1618871701) ^ ((v16 ^ 0xC573A9A0) + 982275680)) - 1225205874 + (((v15 ^ 0x7050605D) + 1179727304) ^ ((v15 ^ 0x73BE0650) + 1170166731) ^ ((v15 ^ 0xD2AF52C6) - 458356899));
  v17 = STACK[0xEB0];
  LODWORD(STACK[0x10ED8]) = (v4 + 1499587075) ^ STACK[0xEB0];
  STACK[0x10EF0] = (v2 + 38539958) ^ v17;
  LODWORD(STACK[0x10F04]) = (v4 + 1499587060) ^ v17;
  LODWORD(STACK[0x10EFC]) = ((v4 + 1499587075) ^ 0x12E4) + v17;
  LODWORD(STACK[0x10F00]) = v17 + v4 + v1;
  LODWORD(STACK[0x10EE8]) = v17 + 1;
  STACK[0x10EE0] = STACK[0xE60];
  v18 = v4 ^ 0x403D;
  v19 = STACK[0xF18];
  v20 = (*(STACK[0xF18] + 8 * v18))(&STACK[0x10ED8]);
  return (*(v19 + 8 * SLODWORD(STACK[0x10EF8])))(v20);
}

uint64_t sub_10063EBF0()
{
  *(STACK[0x5C30] + 44) = STACK[0x3FE6];
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 4019)))();
}

uint64_t sub_10063ED94@<X0>(unint64_t a1@<X0>, int a2@<W8>)
{
  v3 = a2 - 17027;
  STACK[0x9C90] = ((2 * v2) & 0x1FFBDFECALL) + (v2 ^ 0x5ABDF3BFFFDEFF65) - 0x5235009987C44800;
  STACK[0x9C98] = a1;
  v4 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v3);
  return (*(v4 + 8 * (v3 ^ 0x192E ^ (14880 * (((((v3 - 2906) | 0x6009) + 176539669) ^ v3) > 0x9E755AA7)))))();
}

uint64_t sub_10063F0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10] - 34192;
  LODWORD(STACK[0x9FD8]) = STACK[0x98D4] & 0xFFFFFFFE ^ 0xE9D5C711;
  return (*(STACK[0xF18] + 8 * (v3 ^ 0x1D9D)))(a1, a2, a3);
}

uint64_t sub_10063F158()
{
  *v1 = 0;
  v3 = v1[2];
  LODWORD(STACK[0x4F24]) = v3;
  LODWORD(STACK[0x56C4]) = v0;
  v4 = v3 + v0 + 1444706687 > (LODWORD(STACK[0x484C]) + 1444706687);
  if ((v3 + v0) > 0xA9E38680 != LODWORD(STACK[0x484C]) > ((v2 + 1928115424) & 0x8D13CAFF) - 1444758079)
  {
    v4 = (v3 + v0) > 0xA9E38680;
  }

  return (*(STACK[0xF18] + 8 * ((41 * (((v2 - 96) ^ v4) & 1)) ^ v2)))();
}

uint64_t sub_10063F284()
{
  LODWORD(STACK[0x507C]) = v0;
  v2 = STACK[0x4068];
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0xEDF0)))(STACK[0x4068] + 16, 0);
  v5 = STACK[0xED0];
  v5[2] = *(v2 + 16) - ((*(v2 + 16) << (v1 - 11)) & 0xD040B638) - 400532708;
  v5[1] = *(v2 + 24) - ((2 * *(v2 + 24)) & 0xD040B638) - 400532708;
  v6 = (*(v3 + 8 * (v1 + 41911)))(v4);
  v5[3] = v6 - ((2 * v6) & 0xD040B638) - 400532708;
  v7 = (*(v3 + 8 * (v1 ^ 0xEDCF)))();
  *v5 = v7 - ((2 * v7) & 0xD040B638) - 400532708;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_10063F394@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + v2) ^ *(a1 + v1);
  *(a1 + v2) = v4 ^ (v3 - 65);
  v5 = *(a1 + v1) ^ v4;
  *(a1 + v1) = v5;
  *(a1 + v2) ^= v5 ^ 0x5F;
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_10063F4C8@<X0>(uint64_t a1@<X8>)
{
  STACK[0x5C50] = (((a1 ^ 0xD96B153AFBEB8295) + 0x2694EAC504147D6BLL) ^ ((a1 ^ 0x672FD68C0307E57ELL) - 0x672FD68C0307E57ELL) ^ ((((v1 ^ 0x9C76u) - 0x41BB3C49EEC6EA41) ^ a1) + 0x41BB3C49EEC65F06)) + 0x3AE1413AF7325DD3;
  LODWORD(STACK[0x1374]) = 1006568870;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10063F5F0@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  STACK[0x5F58] = a1;
  --*(v2 + 4);
  if (v3)
  {
    a2 = (v3 + 136);
  }

  *a2 = *(a1 + 136);
  *(a1 + 136) = 0;
  v5 = STACK[0xF18];
  STACK[0x1AC8] = *(STACK[0xF18] + 8 * v4);
  return (*(v5 + 138272))();
}

uint64_t sub_10063F6B0@<X0>(int a1@<W8>)
{
  STACK[0x60B8] = &STACK[0x6138];
  STACK[0x4D88] = 0;
  LODWORD(STACK[0x43E4]) = -2115384676;
  return (*(STACK[0xF18] + 8 * (a1 - 18679)))();
}

uint64_t sub_10063F6EC(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = *(a2 + 8);
  *(a1 + 80) = *(a2 + 4);
  return (*(v2 + 77688))();
}

uint64_t sub_10063F8A4@<X0>(unsigned int a1@<W8>)
{
  v1 = STACK[0x500];
  LOBYTE(STACK[0x80B]) = *(STACK[0x500] + 15);
  LOBYTE(STACK[0x80A]) = v1[14];
  LOBYTE(STACK[0x809]) = v1[13];
  LOBYTE(STACK[0x808]) = v1[12];
  LOBYTE(STACK[0x807]) = v1[11];
  LOBYTE(STACK[0x806]) = v1[10];
  LOBYTE(STACK[0x805]) = v1[9];
  LOBYTE(STACK[0x804]) = v1[8];
  LOBYTE(STACK[0x803]) = v1[7];
  LOBYTE(STACK[0x802]) = v1[6];
  LOBYTE(STACK[0x801]) = v1[5];
  LOBYTE(STACK[0x800]) = v1[4];
  LOBYTE(STACK[0x7FF]) = v1[3];
  LOBYTE(STACK[0x7FE]) = v1[2];
  LOBYTE(STACK[0x7FD]) = v1[1];
  LOBYTE(STACK[0x7FC]) = *v1;
  return (*(STACK[0x430] + 8 * a1))();
}

uint64_t sub_10063F940()
{
  v2 = *(STACK[0xF18] + 8 * ((STACK[0xF10] - 31343) ^ 0x5970 ^ v1 & 0xA318FDE9));
  LODWORD(STACK[0xA474]) = v0;
  return v2();
}

uint64_t sub_10063F9B0()
{
  STACK[0x2088] = 0;
  STACK[0x5C50] = (((v0 ^ 0x4146DF6EE69E3A97) - 0x4146DF6EE69E3A97) ^ ((v0 ^ 0x41649249B53E17B3) - 0x41649249B53E17B3) ^ ((v0 ^ 0x224D27BA75610ELL ^ (3 * (v1 ^ 0x3924u))) - 0x224D27BA75EA35)) + 0x3AE1413AF7325DD3;
  LODWORD(STACK[0x1374]) = 962488941;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10063FA80()
{
  v2 = v0 - 25327;
  v3 = v0 + 16238;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * v3))(v1);
  return (*(v4 + 8 * v2))(v5);
}

uint64_t sub_10063FAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = STACK[0x430];
  v70 = (*(STACK[0x430] + 8 * (v67 + 35636)))(*(a67 - 1306953403), *v68, (v67 + 5962) ^ *(v68 + 8) ^ 0xE9D591E9);
  return (*(v69 + 8 * v67))(v70);
}

uint64_t sub_10063FB44()
{
  v3 = STACK[0x38B8];
  v4 = STACK[0x3278];
  v5 = 634647737 * ((2 * ((&STACK[0x10000] + 3800) & 0x75397488) - (&STACK[0x10000] + 3800) - 1966699664) ^ 0xE750A48C);
  STACK[0x10EF0] = STACK[0x4988];
  LODWORD(STACK[0x10EE8]) = (v1 - 15210) ^ v5;
  STACK[0x10F00] = v2;
  STACK[0x10ED8] = v3;
  STACK[0x10EE0] = v0;
  LODWORD(STACK[0x10EF8]) = v5 ^ v4 ^ 0xD49E9CC7;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v1 ^ 0x5961)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * (((LODWORD(STACK[0x10EEC]) == (v1 ^ 0x2619D9C2)) * ((v1 - 1297996450) ^ 0xB2A2B1B6)) ^ v1)))(v7);
}

uint64_t sub_10063FC88@<X0>(int a1@<W8>)
{
  v2 = *(STACK[0x1C58] - 0x217E172EFA1E81CLL);
  v3 = 1603510583 * ((((&STACK[0x10000] + 3800) | 0xD7151FC5) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x28EAE038)) ^ 0x40CE2D6E);
  LODWORD(STACK[0x10EE8]) = v1 - v3 - 976;
  LODWORD(STACK[0x10EEC]) = a1 - v3 + ((v1 - 1639487183) & 0x61B8FFB5 ^ 0xD7E665D3);
  LODWORD(STACK[0x10EDC]) = -2045908798 - v3;
  STACK[0x10EE0] = v2;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 ^ 0xD474)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x947C]) = STACK[0x10ED8];
  return (*(v4 + 8 * v1))(v5);
}

uint64_t sub_10063FD7C(int a1, int a2, int a3, int a4)
{
  v8 = v5 < v7;
  v9 = (((v4 + a1) | a2) ^ a3) + v6;
  v10 = v8 ^ (v9 < v7);
  v11 = v9 < v5;
  if (!v10)
  {
    v8 = v11;
  }

  return (*(STACK[0xF18] + 8 * ((v8 * a4) ^ v4)))();
}

uint64_t sub_10063FE44()
{
  v3 = STACK[0xED0];
  v4 = *(v0 + v1);
  v5 = 155453101 * ((~(&STACK[0x10000] + 3800) & 0x8CB638B3 | (&STACK[0x10000] + 3800) & 0x7349C748) ^ 0x6A90237C);
  LODWORD(STACK[0x10ED8]) = (40409587 * LODWORD(STACK[0x8A24]) - 1378563772) ^ v5;
  STACK[0x10EF8] = 0;
  LODWORD(STACK[0x10F04]) = v5 + 2069619737;
  LODWORD(STACK[0x10F08]) = v3 - v5 + 1777284546;
  LOWORD(STACK[0x10F00]) = 16376 - 1709 * ((~(&STACK[0x10000] + 3800) & 0x38B3 | (&STACK[0x10000] + 3800) & 0xC748) ^ 0x237C);
  STACK[0x10F10] = v4;
  LODWORD(STACK[0x10EF0]) = v5 ^ 0xD6FFF64B;
  LODWORD(STACK[0x10EF4]) = v5 ^ 0x7CD6B3C8;
  STACK[0x10EE0] = &STACK[0x505C];
  STACK[0x10EE8] = v2;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v3 + 45325)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * ((27662 * (LODWORD(STACK[0x10F0C]) == ((v3 + 2021818788) & 0x877DEFBF) - 371901482)) ^ v3)))(v7);
}

uint64_t sub_10063FF88@<X0>(int a1@<W0>, int a2@<W3>, int a3@<W4>, int a4@<W6>, int a5@<W7>, int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  LODWORD(STACK[0x648]) += LODWORD(STACK[0x45C]);
  LODWORD(STACK[0x490]) += 64;
  LODWORD(STACK[0x688]) = LODWORD(STACK[0x460]) + v13;
  v25 = (a1 ^ 0xFB73B763) & (2 * (a1 & 0xE37BB473)) ^ a1 & 0xE37BB473;
  v26 = ((2 * (a1 ^ 0x7BE7DFC7)) ^ 0x3138D768) & (a1 ^ 0x7BE7DFC7) ^ (2 * (a1 ^ 0x7BE7DFC7)) & 0x989C6BB4;
  v27 = (v26 ^ 0x10184300) & (4 * v25) ^ v25;
  v28 = ((4 * (v26 ^ 0x88842894)) ^ 0x6271AED0) & (v26 ^ 0x88842894) ^ (4 * (v26 ^ 0x88842894)) & 0x989C6BB0;
  v29 = (v28 ^ 0x102A90) & (16 * v27) ^ v27;
  v30 = ((16 * (v28 ^ 0x988C4124)) ^ 0x89C6BB40) & (v28 ^ 0x988C4124) ^ (16 * (v28 ^ 0x988C4124)) & 0x989C6B80;
  v31 = v29 ^ 0x989C6BB4 ^ (v30 ^ 0x88842B00) & (v29 << 8);
  v32 = a1 ^ v12 ^ (2 * ((v31 << 16) & 0x189C0000 ^ v31 ^ ((v31 << 16) ^ 0x6BB40000) & (((v30 ^ 0x101840B4) << 8) & 0x189C0000 ^ 0x940000 ^ (((v30 ^ 0x101840B4) << 8) ^ 0x1C6B0000) & (v30 ^ 0x101840B4))));
  v33 = a2 ^ v11 ^ ((a2 ^ 0xFDA14785) - 61280947) ^ ((a2 ^ 0x52EC1B9C) + 1393930582) ^ ((a2 ^ 0x6E30F6D0) + 1875467290) ^ ((a2 ^ 0x3F7BFFFF) + 1048728887);
  v34 = (a5 ^ 0x2127B00B) - v20;
  v35 = v34 + v15 + (v32 ^ 0xB06DFDB5);
  v36 = (v18 ^ 0x2127B00B) - v19;
  v37 = v36 + v14 + (v33 ^ 0xD952C235);
  v34 ^= 0xDA7A9AF1;
  v38 = v34 + 760338688 + (v35 ^ 0xCD4F58E4);
  v36 ^= 0xDA7A9AF1;
  LODWORD(STACK[0x580]) = v37;
  v39 = v36 + 760338688 + (v37 ^ 0xCD4F58E4);
  LODWORD(STACK[0x5A0]) = v33 ^ 0xA3BB5C4C;
  LODWORD(STACK[0x590]) = v37 + v19;
  v40 = v37 - v36 + v37 + v19;
  LODWORD(STACK[0x5C8]) = v40;
  v41 = v37 + (v33 ^ 0xA3BB5C4C);
  LODWORD(STACK[0x608]) = v41;
  v42 = v36 - 547008738;
  v43 = v36 + v41;
  v44 = v43 + 1627106563;
  v45 = v43 - 361901800;
  LODWORD(STACK[0x5B8]) = v40 - 709812802;
  v46 = v40 - 709812802 - v39 + v43 - 361901800;
  LODWORD(STACK[0x5E8]) = 2 * v46;
  v47 = v46;
  LODWORD(STACK[0x4F4]) = v46;
  LODWORD(STACK[0x4D8]) = v39;
  v48 = v42 ^ v39 ^ v44 ^ 0x393E3691 ^ (v46 - ((2 * v46) & 0x727C6D22) + 960378513);
  LODWORD(STACK[0x4F8]) = v35;
  v49 = v20 + 50525886 + v35;
  LODWORD(STACK[0x4E8]) = v49;
  LODWORD(STACK[0x640]) = v32 ^ 0xCA8463CC;
  v50 = v49 - v34 + v35 - 318794425;
  LODWORD(STACK[0x540]) = v50;
  v51 = v35 - 318794425 + (v32 ^ 0xCA8463CC);
  LODWORD(STACK[0x5F8]) = v51;
  v52 = v34 - 547008738;
  v53 = v34 + v51;
  v54 = v53 + 1945900988;
  LODWORD(STACK[0x630]) = v53 + 1945900988;
  v53 -= 43107375;
  LODWORD(STACK[0x538]) = v50 - 441544263;
  LODWORD(STACK[0x508]) = v38;
  v55 = v50 - 441544263 - v38 + v53;
  LODWORD(STACK[0x578]) = v55;
  LODWORD(STACK[0x588]) = 2 * v55;
  v56 = v52 ^ v38 ^ v54 ^ 0x96C53B72 ^ (v55 - ((2 * v55) & 0x2D8A76E4) - 1765459086);
  v57 = v38 - v54 - 1987512385;
  LODWORD(STACK[0x570]) = v57;
  v58 = v55 ^ v53;
  v59 = v53 - v56;
  v60 = v59 ^ (v56 + v57);
  v61 = v58 - v60;
  LODWORD(STACK[0x598]) = v61;
  LODWORD(STACK[0x628]) = a2;
  v62 = v59 ^ 0xD2E4521C;
  LODWORD(STACK[0x604]) = v59 ^ 0xD2E4521C;
  v63 = v61 + 1810645075;
  v64 = v62 - v60;
  v65 = v60;
  LODWORD(STACK[0x4B8]) = v60;
  v66 = ((v62 - v60 + 328581853) ^ v63) + 2 * (v63 & (v62 - v60 + 328581853));
  LODWORD(STACK[0x5D8]) = v66;
  v67 = v62 + v56;
  v68 = v66 - 1810645075;
  v69 = 2 * (v66 - 1810645075);
  LODWORD(STACK[0x5D0]) = v69;
  v70 = v67 ^ v64 ^ 0x72C0EDD1 ^ (v66 - (v69 & 0xE581DBA2) + 114601342);
  v71 = v39 - v44 - 1987512385;
  LODWORD(STACK[0x4F0]) = v71;
  v72 = v45;
  LODWORD(STACK[0x550]) = v45;
  v73 = v45 - v48;
  v74 = (v45 - v48) ^ (v48 + v71);
  v75 = (v47 ^ v72) - v74;
  LODWORD(STACK[0x568]) = v75;
  LODWORD(STACK[0x5A8]) = v73 ^ 0xD2E4521C;
  v76 = (v73 ^ 0xD2E4521C) + v48;
  v77 = (v73 ^ 0xD2E4521C) - v74;
  v78 = v75 + v77 + 328581853;
  LODWORD(STACK[0x5B0]) = 2 * v78;
  LODWORD(STACK[0x548]) = v78;
  v79 = v76 ^ v77 ^ 0xE82E098D ^ (v78 - ((2 * v78) & 0xD05C131A) - 399636083);
  v80 = (v76 + v74) ^ v77;
  LODWORD(STACK[0x5C0]) = v80;
  LODWORD(STACK[0x530]) = v76 + v74;
  v81 = v79 + (v78 ^ v80);
  v82 = v76 + v74 - 814749909;
  LODWORD(STACK[0x528]) = v82;
  v83 = (v79 + v80) ^ v82;
  LODWORD(STACK[0x5E4]) = v79 + v80 - v83;
  v84 = v83 ^ v78 ^ v80;
  v85 = v83;
  LODWORD(STACK[0x4CC]) = v83;
  v86 = (v79 + v80 - v83) ^ v84;
  LODWORD(STACK[0x558]) = v86;
  v87 = v81 - (((v86 ^ 0x7DCD8279) + 1155340039) ^ ((v86 ^ 0x4B7D3A8) + 1034372824) ^ ((v86 ^ 0x4E55EACD) + 2001043379));
  v88 = v67 + v65;
  v89 = v88 ^ v64;
  LODWORD(STACK[0x4D0]) = v88 - 814749909;
  v90 = v70 + (v88 ^ v64);
  LODWORD(STACK[0x4EC]) = v88 ^ v64;
  v91 = v90 ^ (v88 - 814749909);
  LOBYTE(STACK[0xBAC]) = (v91 - ((2 * v91 + 8) & 0x33) + 125) ^ 0x9E;
  LODWORD(STACK[0x5EC]) = v84 - 372490212;
  LOBYTE(STACK[0x7FB]) = v84 + 28 - ((2 * (v84 + 28)) & 0x5E) + 47;
  v92 = v68 ^ v89;
  v93 = v92 + v70;
  v94 = v91 ^ v92;
  v95 = 2 * (v91 ^ v92);
  LODWORD(STACK[0x4D4]) = v95;
  LODWORD(STACK[0x4C4]) = v91 ^ v92;
  LOBYTE(v92) = ((((v91 ^ v92) - (v95 & 0x26) + 19) ^ 0x89) + 119) ^ ((((v91 ^ v92) - (v95 & 0x26) + 19) ^ 0xEA) + 22) ^ ((((v91 ^ v92) - (v95 & 0x26) + 19) ^ 0x70) - 112);
  LOBYTE(v64) = (v92 + 96) & 0x8B ^ 0xE6;
  LOBYTE(v35) = (v92 + 96) ^ 0x4E;
  LODWORD(STACK[0x4C8]) = 2 * (v85 - 196963740);
  LOBYTE(STACK[0xA30]) = v85 + 100 - ((2 * (v85 + 100)) & 0x5E) + 47;
  LOBYTE(STACK[0x977]) = (v92 + 96) ^ (2 * (v35 & (2 * (v35 & (2 * (v35 & (2 * (v35 & (2 * (v35 & (2 * (v35 & (2 * v92) & 0x1E ^ v64)) ^ v64)) ^ v64)) ^ v64)) ^ v64)) ^ v64)) ^ 0xC;
  LODWORD(STACK[0x518]) = v90 - v91;
  v96 = v94 ^ (v90 - v91);
  LOBYTE(STACK[0xB0E]) = v96 ^ 0x9B;
  LODWORD(STACK[0x560]) = v87;
  LOBYTE(STACK[0xB29]) = v87 - ((2 * v87 + 90) & 0x5E) - 100;
  LOBYTE(STACK[0x992]) = v86 ^ 0x33;
  v97 = v93 - (v96 ^ 0x372FBB1C);
  LOBYTE(STACK[0x8D9]) = (v97 + 9) ^ 0x87;
  LODWORD(STACK[0x5F0]) = v96 ^ 0x57FB3F31;
  v98 = (v96 ^ 0x57FB3F31) - 367927665;
  LODWORD(STACK[0x520]) = v98;
  v91 -= 196963740;
  v99 = v96 ^ 0x372FBB1C ^ v91;
  LODWORD(STACK[0x500]) = v99;
  LODWORD(STACK[0x510]) = v97 + 1516014745;
  v100 = (v97 + 1516014745) ^ v99;
  *(STACK[0x6B0] + ((((368 - (v96 ^ 0x57FB3F31)) & 0x1BC6) + (v98 & 0x1BC6u)) & 0x2680)) = (((v97 - 103) ^ v99) - ((2 * ((v97 - 103) ^ v99)) & 0x70) - 72) ^ 0x3F;
  v101 = LODWORD(STACK[0x4B4]) - 1504064041;
  v102 = LODWORD(STACK[0x4B0]) + 1069775839;
  LODWORD(STACK[0x4E4]) = v101 < 0x15AF559E;
  LODWORD(STACK[0x4E0]) = v102 < 0x15AF559E;
  v103 = v101 >= v102;
  v104 = (a11 + 538017631) | 0x11814080;
  LODWORD(STACK[0x698]) = v104;
  v105 = STACK[0x654];
  v106 = ((v19 - ((2 * v19) & 0xB461B032) + v104 + 681414808) ^ LODWORD(STACK[0x654])) - v19;
  v107 = LODWORD(STACK[0x668]) ^ v15 ^ (v20 - ((2 * v20) & 0x63406D14) + 832583306);
  LODWORD(STACK[0x668]) = ((v16 ^ 0xBD15ACF7) - 2070194909) ^ ((v16 ^ 0x822B049D) - 1146749623) ^ ((v16 ^ 0x3F3EA86A) + 112218560);
  LODWORD(STACK[0x654]) = ((v105 ^ ((v107 ^ 0xF7D130A0) - 2 * ((v107 ^ 0xF7D130A0) & 0x5A30D81D ^ v107 & 4) + 1513150489)) - (v107 ^ 0xF7D130A0)) ^ ((((~(2 * v14) | 0x4B9E4FCD) + v14 + ((a11 - 16021) ^ 0x5A309117)) ^ v105) - v14) ^ 0x5BEA18E4 ^ (v106 - ((2 * v106) & 0xB7D431C8) + 1542068452);
  v108 = LODWORD(STACK[0x680]) ^ LODWORD(STACK[0x4F8]) ^ 0x2EA7BAE0 ^ (LODWORD(STACK[0x4E8]) - ((2 * LODWORD(STACK[0x4E8])) & 0xD1AD7994) - 388580150);
  LODWORD(STACK[0x4F8]) = ((LODWORD(STACK[0x680]) ^ 0xDBF799B2) + 604530254) ^ ((LODWORD(STACK[0x680]) ^ 0xF0BE3035) + 255971275) ^ ((LODWORD(STACK[0x680]) ^ 0xED38AFAD) + 315052115);
  v109 = ((LODWORD(STACK[0x590]) - ((2 * (LODWORD(STACK[0x590]) + 50525886)) & 0xB461B032) + 1563676375) ^ LODWORD(STACK[0x678])) - (LODWORD(STACK[0x590]) + 50525886);
  v110 = ((((LODWORD(STACK[0x580]) - ((2 * LODWORD(STACK[0x580])) & 0xB461B032) + 1513150489) ^ LODWORD(STACK[0x678])) - LODWORD(STACK[0x580])) ^ (v109 - ((2 * v109) & 0x4680AAA) + 36963669) ^ 0x2340555 ^ (((v108 - ((2 * v108) & 0xB461B032) + 1513150489) ^ LODWORD(STACK[0x678])) - v108)) - LODWORD(STACK[0x5A0]);
  v111 = v17 ^ LODWORD(STACK[0x508]) ^ 0xBDFFC614 ^ (LODWORD(STACK[0x540]) - ((2 * LODWORD(STACK[0x538])) & 0xCF9E3C1A) - 847401018);
  v112 = ((v17 ^ 0x6C3BCF54) - 1815859028) ^ ((v17 ^ 0xCB00E0B9) + 889134919) ^ ((v17 ^ 0xFD0BF7F4) + 49547276);
  v113 = ((LODWORD(STACK[0x5C8]) - ((2 * LODWORD(STACK[0x5B8])) & 0x8CE20C54) - 1675484184) ^ LODWORD(STACK[0x670])) - LODWORD(STACK[0x5B8]);
  v114 = (((LODWORD(STACK[0x4D8]) - ((2 * LODWORD(STACK[0x4D8])) & 0x8CE20C54) - 965671382) ^ LODWORD(STACK[0x670])) - LODWORD(STACK[0x4D8])) ^ (v113 - ((2 * v113) & 0x719148F0) - 1194810248) ^ 0xB8C8A478 ^ (((v111 - ((2 * v111) & 0x8CE20C54) - 965671382) ^ LODWORD(STACK[0x670])) - v111);
  v115 = a3 ^ LODWORD(STACK[0x570]) ^ 0xD405DBA1 ^ (LODWORD(STACK[0x578]) - (STACK[0x588] & 0x1C6A0770) - 1909128264);
  v116 = ((LODWORD(STACK[0x4F4]) - (STACK[0x5E8] & 0x8CE20C54) - 965671382) ^ a6) - LODWORD(STACK[0x4F4]);
  v117 = ((a3 ^ 0x79C8EB70) - 2043210608) ^ ((a3 ^ 0x88984303) + 2003287293) ^ ((a3 ^ 0xAB60706A) + 1419743126);
  v118 = ((((LODWORD(STACK[0x4F0]) - ((2 * LODWORD(STACK[0x4F0])) & 0x8CE20C54) - 965671382) ^ a6) - LODWORD(STACK[0x4F0])) ^ (v116 - ((2 * v116) & 0x24BDCBFA) - 1839274499) ^ 0x925EE5FD ^ (((v115 - ((2 * v115) & 0x8CE20C54) - 965671382) ^ a6) - v115)) - LODWORD(STACK[0x550]);
  v119 = LODWORD(STACK[0x4B8]) ^ v21 ^ (LODWORD(STACK[0x598]) - ((2 * LODWORD(STACK[0x598])) & 0x9884F5BE) + 1279425247);
  v120 = ((LODWORD(STACK[0x690]) ^ 0xDA14D64F) - 1585653492) ^ ((LODWORD(STACK[0x690]) ^ 0xBBAF81DE) - 1060663653) ^ ((LODWORD(STACK[0x690]) ^ 0x61BB5791) + 450058454);
  v121 = (v22 ^ (LODWORD(STACK[0x568]) - ((2 * LODWORD(STACK[0x568])) & 0x96A1578C) + 1263578054)) - LODWORD(STACK[0x568]);
  v122 = (((v22 ^ (v74 - ((2 * v74) & 0x96A1578C) + 1263578054)) - v74) ^ ((v22 ^ ((v119 ^ 0xC8D58A64) - 2 * ((v119 ^ 0xC8D58A64) & 0x4B50ABC7 ^ v119 & 1) + 1263578054)) - (v119 ^ 0xC8D58A64)) ^ 0xB5880AC0 ^ (v121 - ((2 * v121) & 0x6B101580) - 1249375552)) - LODWORD(STACK[0x5A8]);
  v123 = LODWORD(STACK[0x4D0]) ^ a4 ^ (LODWORD(STACK[0x5D8]) - (STACK[0x5D0] & 0x30CBCC48) + 746169809);
  v124 = ((a4 ^ 0xBCB7A4A) - 197884490) ^ ((a4 ^ 0xC6AC8E3D) + 961769923) ^ ((a4 ^ 0x86375FB1) + 2043191375);
  v125 = (((v123 ^ 0xD3354DE2) - 2 * ((v123 ^ 0xD3354DE2) & 0x497F0BF ^ v123 & 4) - 2070417221) ^ LODWORD(STACK[0x660])) - (v123 ^ 0xD3354DE2);
  v126 = ((((LODWORD(STACK[0x530]) - ((2 * LODWORD(STACK[0x528])) & 0x92FE176) + 1409800166) ^ LODWORD(STACK[0x660])) - LODWORD(STACK[0x528])) ^ (((LODWORD(STACK[0x548]) - (STACK[0x5B0] & 0x92FE176) - 2070417221) ^ LODWORD(STACK[0x660])) - LODWORD(STACK[0x548])) ^ 0x8582C343 ^ (v125 - ((2 * v125) & 0xB058686) - 2055027901)) - LODWORD(STACK[0x5C0]);
  v127 = STACK[0x4C4];
  v128 = STACK[0x658];
  v129 = LODWORD(STACK[0x658]) ^ v91 ^ 0x6D93A755 ^ (LODWORD(STACK[0x4C4]) - (STACK[0x4D4] & 0x4D861926) + 650316947);
  v130 = v84;
  v131 = v84 - ((2 * v84) & 0x92FE176) - 2070417221;
  v132 = STACK[0x638];
  v133 = STACK[0x4C8];
  v134 = STACK[0x4CC];
  LODWORD(STACK[0x458]) = LODWORD(STACK[0x458]) + v112 - 288907081 + LODWORD(STACK[0x5F8]);
  v135 = ((((v134 - (v133 & 0x92FE176) + 2027586335) ^ v132) - (v85 - 196963740)) ^ ((v131 ^ v132) - v130 - ((2 * ((v131 ^ v132) - v130)) & 0x772EEBC8) - 1147701788) ^ 0xBB9775E4 ^ (((v129 - ((2 * v129) & 0x92FE176) - 2070417221) ^ v132) - v129)) - LODWORD(STACK[0x5E4]);
  LODWORD(STACK[0x690]) = LODWORD(STACK[0x46C]) + (v110 ^ 0x95CD85BF) + ((2 * v110) & 0x2B9B0B7E);
  LODWORD(STACK[0x680]) = LODWORD(STACK[0x450]) + (v122 ^ 0x7BB74DFC) + ((2 * v122) & 0xF76E9BF8);
  LODWORD(STACK[0x484]) += v124 + 1263578054 + LODWORD(STACK[0x4EC]);
  v136 = (((LODWORD(STACK[0x474]) ^ 0x505D58BA) - 1348294842) ^ ((LODWORD(STACK[0x474]) ^ 0x1C18DA06) - 471390726) ^ ((LODWORD(STACK[0x474]) ^ 0xAE8A583) - 183018883)) - LODWORD(STACK[0x608]) + 718294558 + v114;
  v137 = (v136 ^ 0xD10472B9) & (2 * (v136 & 0x9A467B3C)) ^ v136 & 0x9A467B3C;
  v138 = ((2 * (v136 ^ 0xC1840089)) ^ 0xB784F76A) & (v136 ^ 0xC1840089) ^ (2 * (v136 ^ 0xC1840089)) & 0x5BC27BB4;
  v139 = (v138 ^ 0x13007120) & (4 * v137) ^ v137;
  v140 = ((4 * (v138 ^ 0x48420895)) ^ 0x6F09EED4) & (v138 ^ 0x48420895) ^ (4 * (v138 ^ 0x48420895)) & 0x5BC27BB4;
  v141 = (v140 ^ 0x4B006A80) & (16 * v139) ^ v139;
  v142 = ((16 * (v140 ^ 0x10C21121)) ^ 0xBC27BB50) & (v140 ^ 0x10C21121) ^ (16 * (v140 ^ 0x10C21121)) & 0x5BC27B90;
  v143 = v141 ^ 0x5BC27BB5 ^ (v142 ^ 0x18023B00) & (v141 << 8);
  LODWORD(STACK[0x660]) = v136 ^ (2 * ((v143 << 16) & 0x5BC20000 ^ v143 ^ ((v143 << 16) ^ 0x7BB50000) & (((v142 ^ 0x43C040A5) << 8) & 0x5BC20000 ^ 0x19800000 ^ (((v142 ^ 0x43C040A5) << 8) ^ 0x427B0000) & (v142 ^ 0x43C040A5))));
  LODWORD(STACK[0x658]) = LODWORD(STACK[0x454]) + (v126 ^ 0xBDD96FDD) + ((2 * v126) & 0x7BB2DFBA);
  LODWORD(STACK[0x480]) = LODWORD(STACK[0x480]) - LODWORD(STACK[0x628]) - 33139402 + LODWORD(STACK[0x654]);
  LODWORD(STACK[0x48C]) += (((v128 ^ 0x438A5E72) - 1133141618) ^ ((v128 ^ 0xDF05451) - 233854033) ^ ((v128 ^ 0x52AA1E5) - 86680037)) + 1263578054 + LODWORD(STACK[0x518]);
  LODWORD(STACK[0x488]) = LODWORD(STACK[0x488]) + v117 - 475857874 + LODWORD(STACK[0x630]);
  LODWORD(STACK[0x478]) = LODWORD(STACK[0x478]) + LODWORD(STACK[0x4F8]) - 965671382 + LODWORD(STACK[0x640]);
  LODWORD(STACK[0x47C]) = LODWORD(STACK[0x47C]) + v120 - 2070417221 + LODWORD(STACK[0x604]);
  LODWORD(STACK[0x654]) = LODWORD(STACK[0x468]) + (v118 ^ 0xBDF5EF1F) + ((2 * v118) & 0x7BEBDE3E);
  LODWORD(STACK[0x640]) = LODWORD(STACK[0x470]) + (v135 ^ 0x657FDBFF) + ((2 * v135) & 0xCAFFB7FE);
  v144 = STACK[0x4E0];
  v145 = !v103;
  if (LODWORD(STACK[0x4E0]) == LODWORD(STACK[0x4E4]))
  {
    v144 = v145;
  }

  LODWORD(STACK[0x678]) = v144;
  LODWORD(STACK[0x670]) = LODWORD(STACK[0x464]) + a1;
  v146 = v127 - 372490212 + LODWORD(STACK[0x500]);
  v147 = LODWORD(STACK[0x560]) + 1755036413;
  v148 = (v134 - (v133 & 0xE381A338) - 435985408) ^ LODWORD(STACK[0x558]);
  v149 = (v148 ^ 0xC6EF6A80) + LODWORD(STACK[0x5EC]);
  v150 = v147 ^ v148;
  v151 = v147 - v149;
  v152 = LODWORD(STACK[0x558]) ^ 0x57FB3F31;
  v153 = v149 - (v152 - 367927665);
  v154 = LODWORD(STACK[0x510]) - v146;
  v155 = STACK[0x520];
  v156 = v146 - LODWORD(STACK[0x520]);
  LOBYTE(STACK[0x856]) = v152 - 113 - ((2 * (v152 - 113)) & 0x5E) + 47;
  LOBYTE(STACK[0x8F4]) = v150 ^ 0xAF;
  LOBYTE(STACK[0x83B]) = (v156 + (~(2 * v156) | 0xFD) - 126) ^ 6;
  LOBYTE(STACK[0xA8B]) = v153 - ((2 * v153) & 0x5E) + 47;
  LOBYTE(STACK[0x9D2]) = v155 ^ 0x87;
  LOBYTE(STACK[0x9ED]) = v151 - ((2 * v151) & 0x5E) + 47;
  v157 = (v100 + 94) ^ v156;
  v158 = v150 ^ 0x85E941D4 ^ (v151 - ((2 * v151) & 0x860C56A8) + 1124477780);
  LOBYTE(v151) = v154 - ((2 * v154) & 0x20);
  v159 = v154 ^ v100;
  v160 = ((v150 ^ 0xE367201) + 1948306475) ^ ((v150 ^ 0x7F0A6274) + 85777504) ^ ((v150 ^ 0xB7D37AF5) - 842677025);
  LOBYTE(STACK[0xB69]) = (v151 - 112) ^ 0x17;
  LOBYTE(v150) = v100 + v159 - 101;
  LOBYTE(v151) = v150 & 0xE3 | 0x10;
  v161 = LODWORD(STACK[0x5F0]) + 267772379 + v159;
  v162 = v157 - v159;
  v160 -= 1286347086;
  LOBYTE(STACK[0x934]) = v150 ^ (2 * ((v150 ^ 0x42) & (2 * ((v150 ^ 0x42) & (2 * ((v150 ^ 0x42) & (2 * ((v150 ^ 0x42) & (2 * ((v150 ^ 0x42) & (2 * ((v150 ^ 0x42) & (2 * v151) ^ v151)) ^ v151)) ^ v151)) ^ v151)) ^ v151)) ^ v151)) ^ 0x64;
  v163 = v160 ^ v153;
  v164 = v152 + 267772379 + v158;
  v165 = v160 + v158;
  LOBYTE(STACK[0xAE6]) = v164 - ((2 * v164) & 0x5E) + 47;
  LOBYTE(STACK[0xB84]) = v165 - ((2 * v165) & 0x5E) + 47;
  LOBYTE(v150) = v100 + v159 + 94;
  v166 = v163 - v158;
  LOBYTE(STACK[0xACB]) = (v162 - ((2 * v162) & 0x72) - 71) ^ 0x3E;
  LOBYTE(v159) = v159 + 45;
  v167 = v161 + v159;
  v158 -= 1200390355;
  LOBYTE(STACK[0x94F]) = v166 - ((2 * v166) & 0x5E) + 47;
  v168 = (v161 + v159) ^ v162;
  v169 = v166 ^ v165;
  v170 = v164 + v158;
  LOBYTE(v150) = v162 ^ v150;
  LOBYTE(STACK[0x896]) = v161 ^ 0x87;
  LOBYTE(STACK[0x8B1]) = v158 - ((2 * v158) & 0x5E) + 47;
  v171 = v159 - v162;
  LOBYTE(STACK[0xA2D]) = v159 ^ 0x87;
  LOBYTE(v159) = v150 - (v168 - 106);
  v172 = v158 - v166 + (v166 ^ v165);
  LOBYTE(v150) = v150 + v171;
  v173 = v166 ^ v170;
  LOBYTE(STACK[0x7F8]) = (v159 - ((2 * v159) & 0x6A) - 75) ^ 0x32;
  v174 = v170 - (v166 ^ v170);
  v175 = v173 - 240885866;
  LOBYTE(STACK[0x813]) = v173 - 106 - ((2 * (v173 - 106)) & 0x5E) + 47;
  LOBYTE(STACK[0xB41]) = v172 + (~(2 * v172) | 0xA1) + 48;
  LOBYTE(STACK[0xB26]) = (v167 - v168 + (~(2 * (v167 - v168)) | 0x6F) - 55) ^ 0x4F;
  LOBYTE(v161) = (v168 - 87) & 0xD5 ^ 0xB4;
  LOBYTE(STACK[0x98F]) = (v168 - 87) ^ (2 * (((v168 - 87) ^ 0x6C) & (2 * (((v168 - 87) ^ 0x6C) & (2 * (((v168 - 87) ^ 0x6C) & (2 * (((v168 - 87) ^ 0x6C) & (2 * (((v168 - 87) ^ 0x6C) & (2 * ((v168 - 87) & (2 * (v168 - 87)) & 0x5A ^ v161)) ^ v161)) ^ v161)) ^ v161)) ^ v161)) ^ v161)) ^ 0x52;
  LOBYTE(v158) = (v167 - v168) ^ v150;
  LOBYTE(v173) = v158 ^ v159;
  v176 = v169 - v175;
  LOBYTE(STACK[0xA48]) = v169 - v175 - ((2 * (v169 - v175)) & 0x5E) + 47;
  LOBYTE(v169) = v158 + v168 - 106;
  LOBYTE(STACK[0x9AA]) = v174 - ((2 * v174) & 0x5E) + 47;
  LOBYTE(v163) = v150 - (v168 - 106);
  LOBYTE(v161) = (v150 - ((2 * v150) & 0x7A) + 61) ^ 0xBA;
  v177 = v172 ^ v174;
  v178 = v172 - v175;
  LOBYTE(STACK[0x8F1]) = v161;
  v179 = v176 ^ v177;
  v180 = v179 ^ 0xA335328C ^ (v172 - v175 - ((2 * (v172 - v175)) & 0x466A6518) - 1556794740);
  LOBYTE(STACK[0xA88]) = v173 ^ v169 ^ 0x87;
  v181 = (v169 - 124) & 0x8E ^ 0x66;
  v182 = v177 + v175;
  LOBYTE(STACK[0x853]) = (v169 - 124) ^ (2 * (((v169 - 124) ^ 0x40) & (2 * (((v169 - 124) ^ 0x40) & (2 * (((v169 - 124) ^ 0x40) & (2 * (((v169 - 124) ^ 0x40) & (2 * (((v169 - 124) ^ 0x40) & (2 * v181) ^ v181)) ^ v181)) ^ v181)) ^ v181)) ^ v181)) ^ 9;
  LOBYTE(STACK[0xAA3]) = v182 + 70 - ((2 * (v182 + 70)) & 0x5E) + 47;
  v183 = v180 + v177;
  LOBYTE(STACK[0x86E]) = v183 - ((2 * v183) & 0x5E) + 47;
  LOBYTE(STACK[0x90C]) = v179 ^ v182 ^ 0x2F;
  LOBYTE(v179) = v173 ^ (v163 - ((2 * v163) & 0x9C) - 50) ^ 0xCE;
  LOBYTE(v158) = v179 + v158;
  LOBYTE(STACK[0x9EA]) = v158 ^ 0x87;
  v184 = v182 ^ v178;
  LOBYTE(STACK[0xA05]) = v180 - ((2 * v180) & 0x5E) + 47;
  LOBYTE(STACK[0xB81]) = v173 ^ (v163 - ((2 * v163) & 0x9C) - 50) ^ 0x49;
  v185 = v180 + v184;
  v186 = 2 * (v180 + v184 + 786371763);
  LOBYTE(STACK[0x8C9]) = v180 + v184 - 77 - ((2 * (v180 + v184 - 77)) & 0x5E) + 47;
  v187 = v169 ^ v163;
  v188 = v183 + v182 - 1603504058;
  LOBYTE(v158) = v169 + v158;
  v189 = v182 - 1603504058 - v180;
  LOBYTE(v163) = v169 - v179 - (v158 + 70);
  LOBYTE(v180) = (v158 + 70) ^ v187;
  v190 = v189 - v188;
  LOBYTE(v179) = v179 + v187;
  LOBYTE(STACK[0x967]) = v190 + (~(2 * v190) | 0xA1) + 48;
  v191 = v188 ^ v184;
  LOBYTE(STACK[0x94C]) = v180 ^ 0x87;
  LOBYTE(STACK[0xB9C]) = v188 ^ v184 ^ 0x2F;
  LOBYTE(v184) = v163 + (v180 & 0xA1 ^ (v180 & 0xAD ^ 0x59) & (v180 & 0xAD ^ 0x55) ^ 0xFC) - 103;
  v192 = v184 - ((2 * v184) & 0x7C);
  LOBYTE(v158) = v158 + 32;
  v193 = v188 - 278756902;
  LOBYTE(STACK[0xAE3]) = (v192 + 62) ^ 0xB9;
  LOBYTE(STACK[0xAFE]) = v188 - 38 - ((2 * (v188 - 38)) & 0x5E) + 47;
  LOBYTE(STACK[0x8AE]) = (v158 - ((2 * v158) & 0x72) - 71) ^ 0x3E;
  v194 = v191 ^ 0xB6CFD227 ^ (v185 - (v186 & 0x6D9FA44E) - 441522470);
  LOBYTE(STACK[0xA45]) = (v179 - 77 - ((2 * (v179 - 77)) & 0x26) + 19) ^ 0x94;
  LOBYTE(v188) = v180 ^ 0xAB;
  LOBYTE(v186) = (24 - (v180 ^ 0xAB)) & 0x94 | 3;
  v195 = v186 ^ ((v180 ^ 0xAB) - 25) & 0x26;
  v196 = ((v180 ^ 0xAB) - 25) ^ 0x14;
  LOBYTE(v186) = v196 & (2 * (v196 & (2 * (v196 & (2 * (v196 & (2 * (v196 & (2 * (((v180 ^ 0xAB) - 25) & (2 * v186) ^ v195)) ^ v195)) ^ v195)) ^ v195)) ^ v195)) ^ v195;
  LOBYTE(v163) = (v163 + 70) ^ 0x11;
  v197 = (v180 ^ 0xAB) + 123;
  v198 = v190 ^ 0x7B50E811;
  v199 = (v180 ^ 0xBA ^ (v179 - ((2 * (v179 - 77)) & 0x74) + 109)) - v163;
  LOBYTE(v180) = v163 + v197;
  v200 = v194 - (v190 ^ 0x7B50E811);
  LOBYTE(STACK[0x810]) = (v188 - 25) ^ (2 * v186) ^ 0x35;
  v201 = v200 + (v193 ^ 0xD992BD42);
  LOBYTE(v163) = v199 + (v158 ^ 0x42);
  v202 = v191 ^ 0x4346EEAB;
  v203 = (v191 ^ 0x4346EEAB) + 1814117755;
  LOBYTE(STACK[0x9C2]) = v201 - ((2 * v201) & 0x5E) + 47;
  LOBYTE(STACK[0xA60]) = v203 - ((2 * v203) & 0x5E) + 47;
  LOBYTE(STACK[0x9A7]) = (v180 - ((2 * v180) & 0xF3) + 121) ^ 0xFE;
  v204 = v201 + v203;
  LOBYTE(STACK[0xB3E]) = v163 ^ 0x87;
  v205 = v203 + v198;
  LOBYTE(v203) = v199 ^ v180;
  LOBYTE(STACK[0xB59]) = v200 - ((2 * v200) & 0x5E) + 47;
  LOBYTE(STACK[0x82B]) = v205 + (~(2 * v205) | 0xA1) + 48;
  LOBYTE(v158) = v163 + v197;
  LOBYTE(v163) = v197 - (v199 ^ v180);
  LOBYTE(STACK[0x909]) = (v199 - ((2 * v199) & 0x36) + 27) ^ 0x9C;
  LOBYTE(v179) = ((v163 + 50) & 0x8A | 4) ^ (v163 - 78) & 0x18;
  v206 = ((v163 - 78) ^ 8) & (2 * (((v163 - 78) ^ 8) & (2 * (((v163 - 78) ^ 8) & (2 * (((v163 - 78) ^ 0xA) & (2 * ((v163 - 78) & (2 * v179) ^ v179)) ^ v179)) ^ v179)) ^ v179)) ^ v179;
  v207 = v200 ^ v205;
  LOBYTE(v179) = v180 + 99 + v158;
  v208 = v202 - v207 - 2077285449;
  LOBYTE(STACK[0xAA0]) = (v163 - 78) ^ (2 * v206) ^ 0x15;
  LOBYTE(STACK[0x86B]) = v179 ^ 0x87;
  LOBYTE(STACK[0x886]) = v204 ^ 0xA5;
  LOBYTE(STACK[0x924]) = v208 - ((2 * v208) & 0x5E) + 47;
  LOBYTE(v202) = v207 + (~(2 * v207) | 0x23) + 111;
  LOBYTE(v202) = ((v202 ^ 0xE8) + 24) ^ ((v202 ^ 0x8E) + 114) ^ ((v202 ^ 8) - 8);
  LOBYTE(v186) = v202 + 119;
  LOBYTE(v202) = (v202 - 9) & 0xC9 | 4;
  v209 = v202 ^ v186 & 0x18;
  LOBYTE(STACK[0xA1D]) = v186 ^ (2 * ((v186 ^ 0x48) & (2 * ((v186 ^ 0x48) & (2 * ((v186 ^ 0x48) & (2 * ((v186 ^ 0x48) & (2 * (v186 & (2 * (v186 & (2 * v202) ^ v209)) ^ v209)) ^ v209)) ^ v209)) ^ v209)) ^ v209)) ^ 0xFE;
  LOBYTE(STACK[0xA02]) = (v158 - ((2 * v158) & 0xA8) + 84) ^ 0x59;
  v210 = v205 - 1478647965 + v204;
  LOBYTE(STACK[0xABB]) = v205 + 99 + v204 - ((2 * (v205 + 99 + v204)) & 0x5E) + 47;
  LOBYTE(v186) = (v203 + 22) & 0xAE ^ 0x99;
  LOBYTE(v198) = (v203 + 22) ^ 0x3C;
  v211 = v158 ^ 0x8A;
  LOBYTE(STACK[0xB99]) = (v203 + 22) ^ (2 * (v198 & (2 * (v198 & (2 * (v198 & (2 * (v198 & (2 * (v198 & (2 * (v186 ^ (v203 + 22) & 0x12)) ^ v186)) ^ v186)) ^ v186)) ^ v186)) ^ v186)) ^ 0x29;
  v212 = (v204 ^ 0xF478248A) - v208 - 604734715;
  LOBYTE(v186) = v211 - v163 - 55;
  v213 = v203 - 43 + v179;
  LOBYTE(v203) = v179 - 36 + v213;
  LOBYTE(v163) = v163 - v203 - 61;
  v214 = v207 + 1989669077 + v210;
  LOBYTE(STACK[0x964]) = (v163 - ((2 * v163) & 0x22) + 17) ^ 0x96;
  LOBYTE(v207) = (v203 + (~(2 * v203) | 0x41) - 32) ^ 0x58;
  LOBYTE(v204) = v186 ^ v203;
  v215 = v210 + 1877996764 + v214;
  v216 = v208 - v215 - 581905017;
  LOBYTE(STACK[0xBB4]) = v216 - ((2 * v216) & 0x5E) + 47;
  LOBYTE(STACK[0xAFB]) = v207;
  LOBYTE(STACK[0x97F]) = v210 - 36 + v214 - ((2 * (v210 - 36 + v214)) & 0x5E) + 47;
  LOBYTE(STACK[0x8C6]) = (v186 - ((2 * v186) & 0x38) + 28) ^ 0x9B;
  v217 = v215 ^ v212;
  LOBYTE(v198) = v163 ^ v213 ^ v204;
  LOBYTE(STACK[0xB16]) = v212 - ((2 * v212) & 0x5E) + 47;
  LOBYTE(v215) = (v204 + v213) ^ (v186 + v213);
  LOBYTE(STACK[0xA5D]) = v213 ^ 0x87;
  v218 = v217 ^ v214 ^ v216;
  LOBYTE(v207) = v204 + v213 + 57;
  LOBYTE(STACK[0x8E1]) = v214 - ((2 * v214) & 0x5E) + 47;
  LOBYTE(STACK[0xA78]) = v218 ^ 0x2F;
  LOBYTE(v163) = v207 ^ v198;
  LOBYTE(STACK[0x828]) = v198 ^ 0x87;
  v219 = (v204 + 68) & 0x27 ^ 0xD9;
  v220 = (v204 + 68) ^ 0x34;
  v221 = v212 + v214;
  v222 = v217 + v214;
  v223 = v222 ^ v221;
  LOBYTE(STACK[0x9BF]) = (v204 + 68) ^ (2 * (v220 & (2 * (v220 & (2 * (v220 & (2 * (v220 & (2 * (v220 & (2 * (((2 * (v204 + 68)) & 0x6A ^ 0x12) & (v204 + 68) ^ v219)) ^ v219)) ^ v219)) ^ v219)) ^ v219)) ^ v219)) ^ 0xA0;
  LOBYTE(STACK[0x9DA]) = v223 ^ 0x2F;
  LOBYTE(STACK[0xB56]) = (v215 - ((2 * v215) & 0x4A) - 91) ^ 0x22;
  v224 = 2 * (v222 + 1995674937);
  v225 = v218 ^ 0xD435DA34 ^ (v222 - (v224 & 0xA86BB468) + 1261006701);
  v226 = v217 - 1158888199;
  LOBYTE(STACK[0xB71]) = v222 + 57 - (v224 & 0x5E) + 47;
  LOBYTE(v224) = v207 ^ 0xBD;
  LOBYTE(v204) = v204 + 2 * (v207 ^ 0xBD);
  LOBYTE(STACK[0x843]) = v217 - 7 - ((2 * (v217 - 7)) & 0x5E) + 47;
  LOBYTE(STACK[0x921]) = (v207 - ((2 * v207) & 0x62) - 79) ^ 0x36;
  LOBYTE(v217) = v204 - 7 + v163 + 44;
  LOBYTE(v207) = v217 & 0x32 ^ 0x37;
  LOBYTE(v207) = v217 ^ (2 * ((v217 ^ 0x54) & (2 * ((v217 ^ 0x54) & (2 * ((v217 ^ 0x54) & (2 * ((v217 ^ 0x54) & (2 * ((v217 ^ 0x54) & (2 * (v207 ^ v217 & 0x26)) ^ v207)) ^ v207)) ^ v207)) ^ v207)) ^ v207));
  v227 = v223 - v225 + 1715781411;
  LOBYTE(STACK[0x89E]) = v227 - ((2 * v227) & 0x5E) + 47;
  v228 = (v222 + 1995674937) ^ 0x6BD771BD;
  LOBYTE(v216) = v224 - 124;
  v229 = v226 + 2 * v228;
  LOBYTE(v215) = v215 - v163 + 35;
  v230 = v225 + v229;
  LOBYTE(STACK[0xAB8]) = v207 ^ 0xB5;
  LOBYTE(STACK[0x883]) = (v204 - 7) ^ 0x87;
  LOBYTE(STACK[0x93C]) = v230 - ((2 * v230) & 0x5E) + 47;
  v228 -= 1384429948;
  LOBYTE(STACK[0xA35]) = v228 + (~(2 * v228) | 0xA1) + 48;
  LOBYTE(v224) = v215 + v204 - 7;
  v231 = v228 - v229;
  LOBYTE(v207) = v163 + 2 * (v204 - 7);
  v232 = v230 + v229;
  LOBYTE(STACK[0xA1A]) = v215 ^ 0x87;
  LOBYTE(STACK[0xAD3]) = v229 - ((2 * v229) & 0x5E) + 47;
  LOBYTE(v222) = v216 - (v204 - 7);
  LOBYTE(v204) = v224 ^ (v204 + 82);
  v233 = (v230 + v229) ^ v231;
  LOBYTE(STACK[0x8F9]) = v233 ^ 0x2F;
  LOBYTE(STACK[0xBB1]) = v216 ^ 0x87;
  LOBYTE(v215) = v224 + 94;
  LOBYTE(STACK[0x97C]) = (v207 - 2 * (v207 & 0xF) + 15) ^ 0x88;
  LOBYTE(STACK[0x800]) = v230 + v229 - ((2 * (v230 + v229)) & 0x5E) + 47;
  LOBYTE(STACK[0xB13]) = v204 ^ 0x87;
  LOBYTE(v216) = 2 * (v224 + 94);
  LOBYTE(STACK[0x8DE]) = (v224 + 94 - (v216 & 0x7E) - 65) ^ 0x38;
  v234 = v227 + v229;
  v235 = v234 ^ (v229 - 117028775);
  LOBYTE(STACK[0x997]) = v234 ^ (v229 + 89) ^ 0x2F;
  LOBYTE(v216) = v204 ^ 0x86 ^ (v224 - (v216 & 0xC) - 28);
  v236 = v234 + 155662686;
  LOBYTE(v222) = v207 ^ v222;
  v237 = v235 ^ 0x93ACDE2A ^ (v234 - 2 * ((v234 + 155662686) & 0x13ACDE2B ^ v234 & 1) - 1661724792);
  LOBYTE(v235) = v222 ^ 0xB1;
  LOBYTE(v207) = v207 - (v222 ^ 0xB1);
  LOBYTE(STACK[0xA75]) = v222 ^ 0x87;
  LOBYTE(STACK[0xB2E]) = v236 - ((2 * v236) & 0x5E) + 47;
  v238 = v232 - (v233 ^ 0xCBA268B1);
  v239 = v236 + (v233 ^ 0xCBA268B1);
  LOBYTE(v222) = (40 - v207) & 0x93 | 4;
  LOBYTE(v231) = v222 ^ (v207 - 41) & 0x2A;
  v240 = (v207 - 41) ^ 0x12;
  LOBYTE(v236) = (v207 - 41) ^ (2 * (v240 & (2 * (v240 & (2 * (v240 & (2 * (v240 & (2 * (v240 & (2 * (((v207 - 41) ^ 2) & (2 * v222) ^ v231)) ^ v231)) ^ v231)) ^ v231)) ^ v231)) ^ v231));
  LOBYTE(v231) = v215 - v207 + v235;
  LOBYTE(v215) = v207 ^ v235;
  LOBYTE(v222) = v216 - (v207 ^ v235);
  LOBYTE(STACK[0x840]) = v236 ^ 0x3E;
  LOBYTE(v235) = ((2 * (v222 + 83)) & 0x5A) + ((v222 + 83) ^ 0xAD);
  v241 = v239 - v238;
  v242 = v238 ^ v233;
  LOBYTE(STACK[0xA90]) = v238 + 106 - ((2 * (v238 + 106)) & 0x5E) + 47;
  LOBYTE(v207) = v222 ^ (v207 + 106);
  LOBYTE(STACK[0x9D7]) = (v235 + (~(2 * v235) | 0x7F) + 65) ^ 0xC7;
  v243 = v237 - (v238 ^ v233 ^ 0xCBA268B1);
  LOBYTE(STACK[0xB89]) = v238 ^ v233 ^ 0x9E;
  LOBYTE(STACK[0x85B]) = v243 + (~(2 * v243) | 0xA1) + 48;
  LOBYTE(STACK[0xB6E]) = ((v204 | 0x87) - (v204 & 0x78) + 25) & 0xD0 ^ v231 ^ 7;
  LOBYTE(STACK[0x9F2]) = v241 - ((2 * v241) & 0x5E) + 47;
  LOBYTE(STACK[0x939]) = (v215 - ((2 * v215) & 8) - 124) ^ 3;
  LOBYTE(v235) = v231 - v207;
  LOBYTE(STACK[0xA4D]) = v238 ^ v233 ^ 0x80;
  LOBYTE(v207) = v207 - (v215 ^ 0x1E);
  LOBYTE(STACK[0xAD0]) = v207 ^ 0x87;
  v244 = v243 ^ (v238 + 296300906);
  v245 = v241 - v244 - 1598007928;
  LOBYTE(STACK[0x8B6]) = v245 - ((2 * v245) & 0x5E) + 47;
  v243 ^= 0x937E0C1E;
  LOBYTE(STACK[0xAEB]) = v243 - 8 - ((2 * (v243 - 8)) & 0x5E) + 47;
  LOBYTE(v233) = v222 ^ 0x1E;
  LOBYTE(v222) = (v222 ^ 0x1E) + 111;
  v246 = v222 & 0xCF ^ 0xA3;
  LOBYTE(STACK[0x89B]) = v222 ^ (2 * ((v222 ^ 8) & (2 * ((v222 ^ 8) & (2 * ((v222 ^ 8) & (2 * ((v222 ^ 8) & (2 * ((v222 ^ 8) & (2 * ((v222 ^ 8) & (2 * v246) ^ v246)) ^ v246)) ^ v246)) ^ v246)) ^ v246)) ^ v246)) ^ 0x48;
  LOBYTE(v222) = v235 - 120;
  LOBYTE(STACK[0xA32]) = (v235 - 120) ^ 0x87;
  v242 ^= 0x58DC64AFu;
  v247 = v244 - v242;
  LOBYTE(STACK[0x954]) = v244 - v242 + (~(2 * (v244 - v242)) | 0xA1) + 48;
  LOBYTE(v244) = v207 - v222;
  LOBYTE(v207) = v233 - 8 + (v215 ^ 0x1E);
  v248 = v247 - v245;
  LOBYTE(v222) = (v222 - (v233 - 8)) ^ v244;
  LOBYTE(STACK[0x7FD]) = (v215 - ((2 * v215) & 0xA0) - 48) ^ 0x49;
  v249 = v243 - 279825672 + v242;
  v250 = v248 ^ (v245 - (v243 - 279825672));
  v251 = v248 - v249;
  LOBYTE(STACK[0x994]) = (v244 - v207 - ((2 * (v244 - v207)) & 0x55) + 42) ^ 0xAD;
  LOBYTE(STACK[0xB46]) = v250 ^ 0x2F;
  LOBYTE(STACK[0x818]) = v251 - ((2 * v251) & 0x5E) + 47;
  v252 = v250 ^ (v243 + 1690532938);
  LODWORD(STACK[0x46C]) = LODWORD(STACK[0x690]) + 1781692993;
  LODWORD(STACK[0x450]) = LODWORD(STACK[0x680]) - 2075610620;
  LODWORD(STACK[0x45C]) = LODWORD(STACK[0x648]) - 1478995264;
  LODWORD(STACK[0x474]) = LODWORD(STACK[0x660]) ^ 0xDC6FAB69;
  LODWORD(STACK[0x454]) = LODWORD(STACK[0x658]) + 1109823523;
  LODWORD(STACK[0x468]) = LODWORD(STACK[0x654]) + 1107955937;
  LODWORD(STACK[0x470]) = LODWORD(STACK[0x640]) - 1702878207;
  LODWORD(STACK[0x460]) = LODWORD(STACK[0x688]) + 1409686408;
  v253 = v222 ^ (v233 + 74);
  LOBYTE(STACK[0xB2B]) = (v253 - 2 * (v253 & 0x1F) - 97) ^ 0x18;
  LOBYTE(STACK[0x911]) = v249 - v250 - ((2 * (v249 - v250)) & 0x5E) + 47;
  LOBYTE(STACK[0x9AF]) = v252 ^ 0x2F;
  v254 = v222 - v253;
  LOBYTE(STACK[0x8F6]) = (v222 - ((2 * v222) & 0xC0) + 96) ^ 0xE7;
  LOBYTE(STACK[0xA8D]) = (v207 - v222 - ((2 * (v207 - v222)) & 0xD8) + 108) ^ 0xEB;
  v255 = (((v250 ^ 0x49) - 102) ^ ((v250 ^ 0x88) + 89) ^ ((v250 ^ 0xC1) + 18)) - (((v252 ^ 0x44) - 45) ^ ((v252 ^ 0x7E) - 23) ^ ((v252 ^ 0x3A) - 83)) - 58;
  v256 = v253 ^ (v207 - v222);
  v257 = v207 - ((v244 - v207) ^ 0x8E) - v253;
  LOBYTE(STACK[0x858]) = (v244 - v207 - ((2 * (v244 - v207)) & 0x88) + 68) ^ 0xDB;
  LOBYTE(STACK[0x873]) = v252 ^ (v249 - v250) ^ v251 ^ 0x8E ^ 0x2F;
  LOBYTE(STACK[0x9EF]) = ((v256 ^ (v244 - v207) ^ 0x8E) - ((2 * (v256 ^ (v244 - v207) ^ 0x8E)) & 0x26) + 19) ^ 0x94;
  LOBYTE(STACK[0xB86]) = (v257 + v254) ^ 0x87;
  LOBYTE(STACK[0xA0A]) = v255 + v249 - v250 - (v251 ^ 0x8E) + v255 - ((2 * (v255 + v249 - v250 - (v251 ^ 0x8E) + v255)) & 0x5E) + 47;
  LOBYTE(STACK[0xAA8]) = v251 ^ 0x37;
  LOBYTE(STACK[0xBA1]) = v255 + v249 - v250 - (v251 ^ 0x8E) - ((2 * (v255 + v249 - v250 - (v251 ^ 0x8E))) & 0x5E) + 47;
  LOBYTE(STACK[0x951]) = v257 ^ 0x87;
  LODWORD(STACK[0x464]) = LODWORD(STACK[0x670]) + LODWORD(STACK[0x668]) - 1444103523;
  return (*(STACK[0x6A0] + 8 * (a11 ^ (10452 * LODWORD(STACK[0x678])))))(v252 ^ (v249 - v250) ^ v251 ^ 0x8FD68B8E);
}

uint64_t sub_100642784()
{
  v2 = *(v1 + 8 * (((((*(*(STACK[0x798] + 24) + 32) == STACK[0x798]) ^ (v0 - 93)) & 1) * ((v0 + 1650502512) ^ 0x6260D05D)) ^ v0));
  STACK[0x7A0] = STACK[0x798];
  return v2();
}

uint64_t sub_1006427E4()
{
  v3 = (((*(v0 + 16) ^ 0xE504BC53) + 452674477) ^ ((*(v0 + 16) ^ 0x7F4DFDEC) - 2135817708) ^ (((v1 - 16313) | 0x10) - 1939646466 + (*(v0 + 16) ^ 0x739C86AE))) + 559569133;
  v4 = (((v1 ^ 0x6260B0AF) - 1182463018 + (*(v0 + 12) ^ 0xE41A23D8)) ^ ((*(v0 + 12) ^ 0xA38DEED9) + 1550979367) ^ ((*(v0 + 12) ^ 0xAE420A10) + 1371403760)) + 559569133;
  v5 = (v3 < 0x378491DC) ^ (v4 < 0x378491DC);
  v6 = v3 < v4;
  if (v5)
  {
    v6 = v4 < 0x378491DC;
  }

  return (*(v2 + 8 * ((!v6 | (2 * !v6)) ^ v1)))();
}

uint64_t sub_1006428FC@<X0>(int a1@<W8>)
{
  *v1 += a1 ^ 0xFE0;
  *STACK[0x65A8] = *(v2 + 296);
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100642930@<X0>(int a1@<W8>)
{
  v1 = STACK[0x596C];
  LODWORD(STACK[0xB318]) = STACK[0x3604];
  LODWORD(STACK[0xB314]) = v1;
  return (*(STACK[0xF18] + 8 * (a1 + 29226)))();
}

uint64_t sub_1006429B4(uint64_t a1, int a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, unsigned int a54)
{
  LODWORD(STACK[0x230]) = v59;
  LODWORD(STACK[0x218]) = v58;
  LODWORD(STACK[0x228]) = v57;
  LODWORD(STACK[0x220]) = v56;
  v61 = STACK[0x200];
  v62 = *(STACK[0x208] + 8);
  v63 = *(v62 + (v60 ^ 0x33243A3));
  LODWORD(STACK[0x248]) = (2 * v63) & 0xFFFFFF7F;
  LODWORD(STACK[0x224]) = v63 + 1446339519;
  v64 = STACK[0x240];
  v65 = *(v62 + (v60 & 0xFFFFFFFD ^ 0x33243A3));
  v66 = *(STACK[0x240] + 4 * ((v65 ^ v55) * a2 - 1505760000 - (((((v65 ^ v55) * a2 - 1505760000) * a4) >> 32) >> 12) * a5));
  LODWORD(STACK[0x21C]) = -1040093363 * (((v66 ^ 0x9D4E7D0D) + 1655800563) ^ ((v66 ^ 0xB4AB4E48) + 1263841720) ^ ((v66 ^ 0x296386BB) - 694388411));
  v67 = *(v62 + (v60 & 0xFFFFFFFB ^ 0x33243A7));
  LODWORD(STACK[0x214]) = *(v64 + 4 * ((v67 ^ 0x65) * a2 - 1892076800 - (((((v67 ^ 0x65u) * a2 - 1892076800) * a4) >> 32) >> 12) * a5));
  return (*(v54 + 8 * v61))(a54);
}

uint64_t sub_1006430F4()
{
  v2 = (v1 - 106750021) & 0x65C4EEE;
  STACK[0x9850] = ((2 * v0) & 0x1FCFF6FE2) + (v0 ^ 0xEEE9EFF7FE7FB7F1) + 0x7BFF3CFBB5FD7B5FLL;
  v3 = STACK[0xF18];
  STACK[0x5F38] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * (v2 + 17501)))();
}

uint64_t sub_1006431B4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a2 = v5 - 1;
  v7 = *(STACK[0xE80] + 24 * (((v6 + 1353736897) & 0x1C7BFD1B ^ 0xA5B9ABF3) + v5));
  v8 = v5 - 1514555414;
  v9 = *(STACK[0xE80] + 24 * v8 + 16);
  LODWORD(STACK[0xED0]) = v9;
  LODWORD(STACK[0x376C]) = v9;
  v10 = *(a5 + 48 * (v7 - 315866173) + 36);
  return (*(STACK[0xF18] + 8 * (v6 ^ 0x12D3E40D ^ (122 * (((((v10 - v6) | (v6 - v10)) >> (v6 ^ 0x23)) & 1) == 0)))))(*&a2[6 * v8 + 4]);
}

uint64_t sub_100643350@<X0>(int a1@<W8>)
{
  if (*(v2 + v1))
  {
    v3 = -131670339;
  }

  else
  {
    v3 = -731040519;
  }

  v4 = LODWORD(STACK[0x8710]) == 1497668682;
  LODWORD(STACK[0x46E0]) = v3;
  return (*(STACK[0xF18] + 8 * ((124 * ((v4 ^ (a1 - 66)) & 1)) ^ a1)))();
}

uint64_t sub_1006433C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, __int16 a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = (a66 - 2703);
  v72 = (a58 & 0x1F2) + ((v70 - 728896608) ^ 0xFFFC0E7F59DD6FF9);
  STACK[0x210] = v71;
  if (v72 >= 0xFFFC0E7F59DD6FF9)
  {
    v73 = (a24 + 4 * ((v71 ^ 0x3F180A6220003) + v72));
  }

  else
  {
    v73 = (a23 + 4 * v72 + 0xFC602988A3E94);
  }

  v74 = ((((*v73 ^ (a66 + 1717818206)) - 1717857777) ^ ((*v73 ^ 0x472B7972) - 1194031474) ^ ((*v73 ^ 0x5F8C7A12) - 1603041810)) + 2126737041) * v68;
  v75 = ((2 * (a1 + v69)) & 0x19E) + ((a1 + v69) ^ 0x7FDB6DB3EF7731CFLL);
  v76 = v75 - 0x7FDB6DB3EF773231;
  v77 = (a24 + 4 * v75 + 0x924930422338C4);
  if (v76 < 0xFFFFFFFFFFFFFF9ELL)
  {
    v77 = (a23 + 4 * v76);
  }

  v78 = *v77;
  *(a51 + 4 * (a4 & 0x1F)) = *(a51 + 4 * (a4 & 0x1F)) + (((v78 ^ 0x66E442B) - 107889707) ^ ((v78 ^ 0x712C76B2) - 1898739378) ^ ((v78 ^ 0x9815C08) - 159472648)) * v66 - 133 * v74 - 466169187;
  v79 = (*(STACK[0x220] + 4 * ((a28 + a1) & 0x1F)) ^ 0x2B6BBF2F) * *(STACK[0x218] + 4 * (a65 & 0x1F)) * (v74 + 73696428) + (((v78 ^ 0x181A7D13) - 941260051) ^ ((v78 ^ 0x15B621AC) - 901128620) ^ ((v78 ^ 0x136F322E) - 1936667182)) * v67 + 1082140728;
  v80 = (((v79 - ((2 * v79) & 0x42B51632) - 1587901671) ^ 0xB2700B8C) + 1301279860) ^ (((v79 - ((2 * v79) & 0x42B51632) - 1587901671) ^ 0x8885605) - 143152645) ^ (((v79 - ((2 * v79) & 0x42B51632) - 1587901671) ^ 0x1BA2D690) - 463656592);
  v81 = ((2 * a2) & 0x1CE) + (a2 ^ 0xB7D96F5FDFBEFDE7);
  v82 = v81 + 0x482690A0204101B7;
  v83 = (a24 + 4 * v81 + 0x209A428081040864);
  if (v82 < 0xFFFFFFFFFFFFFF9ELL)
  {
    v83 = (a23 + 4 * v82);
  }

  v84 = ((*v83 ^ 0x560561F1) - 1443193329) ^ ((*v83 ^ 0x4362BA03) - 1130543619) ^ ((*v83 ^ 0x6BA4B563) - 1805956451);
  v85 = (v80 + 1549993661) * (v84 + 2126737041) - 353848975 * v84 + 312095230;
  v86 = (v85 ^ 0x3E2399FB) & (2 * (v85 & 0xBE83DD03)) ^ v85 & 0xBE83DD03;
  v87 = ((2 * (v85 ^ 0x2A2213F9)) ^ 0x29439DF4) & (v85 ^ 0x2A2213F9) ^ (2 * (v85 ^ 0x2A2213F9)) & 0x94A1CEFA;
  v88 = v87 ^ 0x94A0420A;
  v89 = (v87 ^ 0x18C10) & (4 * v86) ^ v86;
  v90 = ((4 * v88) ^ 0x52873BE8) & v88 ^ (4 * v88) & 0x94A1CEF8;
  v91 = (v90 ^ 0x10810AE0) & (16 * v89) ^ v89;
  v92 = ((16 * (v90 ^ 0x8420C412)) ^ 0x4A1CEFA0) & (v90 ^ 0x8420C412) ^ (16 * (v90 ^ 0x8420C412)) & 0x94A1CEE0;
  v93 = v91 ^ 0x94A1CEFA ^ (v92 ^ 0xCE00) & (v91 << 8);
  v94 = *(a3 + 4 * (a56 & 0x1F));
  v95 = (v94 ^ 0xC50D79C0) & (2 * (v94 & 0xE5217D81)) ^ v94 & 0xE5217D81;
  v96 = ((2 * (v94 ^ 0x74F93C2)) ^ 0xC4DDDC86) & (v94 ^ 0x74F93C2) ^ (2 * (v94 ^ 0x74F93C2)) & 0xE26EEE42;
  v97 = (v96 ^ 0x800CCC00) & (4 * v95) ^ v95;
  v98 = ((4 * (v96 ^ 0x22222241)) ^ 0x89BBB90C) & (v96 ^ 0x22222241) ^ (4 * (v96 ^ 0x22222241)) & 0xE26EEE40;
  v99 = (v98 ^ 0x802AA800) & (16 * v97) ^ v97;
  v100 = ((16 * (v98 ^ 0x62444643)) ^ 0x26EEE430) & (v98 ^ 0x62444643) ^ (16 * (v98 ^ 0x62444643)) & 0xE26EEE40;
  v101 = v99 ^ 0xE26EEE43 ^ (v100 ^ 0x226EE400) & (v99 << 8);
  v102 = v85 ^ v94 ^ (2 * ((v101 << 16) & 0x626E0000 ^ v101 ^ ((v101 << 16) ^ 0x6E430000) & ((((v100 ^ 0xC0000A43) << 8) ^ 0x6EEE0000) & (v100 ^ 0xC0000A43) ^ ((v100 ^ 0xC0000A43) << 8) & 0x626E0000) ^ v93 ^ (v93 << 16) & 0x14A10000 ^ ((v93 << 16) ^ 0x4EFA0000) & (((v92 ^ 0x94A1005A) << 8) & 0x14A10000 ^ 0x14210000 ^ (((v92 ^ 0x94A1005A) << 8) ^ 0x21CE0000) & (v92 ^ 0x94A1005A))));
  *(a49 + 4 * (a56 & 0x1F)) = (((v102 ^ 0x7B672F81) - 1354830537) ^ ((v102 ^ 0xDEE5528D) + 180129851) ^ ((v102 ^ 0xDE7A9CFC) + 170090060)) + 1799184183;
  return (*(STACK[0x228] + 8 * (a66 ^ (24147 * (v70 == 728896640)))))(a1 + 1, v80 - 1433486280);
}

uint64_t sub_100643BA4@<X0>(int a1@<W8>)
{
  LOBYTE(STACK[0x116F]) = v1;
  LODWORD(STACK[0x6818]) = v2;
  STACK[0x1DB8] = v5;
  STACK[0x7658] = v3;
  STACK[0x96A0] = v4;
  return (*(STACK[0xF18] + 8 * (((v4 != 0) * (((a1 - 33108) ^ 0xFFFF4F90) + 11881 * (a1 ^ 0xBCA0))) ^ a1)))();
}

uint64_t sub_100643C10@<X0>(int a1@<W0>, unsigned int a2@<W2>, uint64_t a3@<X7>, char a4@<W8>)
{
  v13 = a4 + a1 + ((a1 + 65) ^ (((a1 + 65) ^ 0xBE) - 72) ^ ((v5 ^ (a1 + 65) ^ 0xB1) - 61) ^ (((a1 + 65) ^ 0x7C) + 118) ^ (-75 - a1) ^ 0x64) - 105;
  *(a3 + (a1 - 1103059835)) ^= (v13 - ((2 * v13) & 0xF7) - 5) ^ 0xFB;
  v14 = a1 + 2127616748;
  v15 = (((*v12 ^ v4) + v7) ^ ((*v12 ^ v8) + v9) ^ ((*v12 ^ v10) + v6)) - 1436156545;
  v16 = v15 < 0xC0903666;
  v17 = a1 + 2127616748 < v15;
  v18 = (a1 + 1);
  if (v14 < 0xC0903666 != v16)
  {
    v17 = v16;
  }

  return (*(STACK[0xF18] + 8 * ((v17 * v11) ^ a2)))(v18);
}

uint64_t sub_100643D3C@<X0>(uint64_t a1@<X8>)
{
  v5 = (((v1 ^ 0xB263F21D) + 1302072803) ^ ((v1 ^ 0x3AA0A66) - 61475430) ^ ((v1 ^ 0x3A7CEF38 ^ (v2 + 1650483334)) - 1478246250)) + 835202561 + (((v3 ^ 0x26C5B212) + 139175902) ^ ((v3 ^ 0x690A7766) + 1199858346) ^ ((v3 ^ ((v2 - 28475) | 0x3D06) ^ 0x776BD5C2) + 1508244891));
  v6 = (v5 ^ 0xA5FB6494) & (2 * (v5 & 0xA1E36021)) ^ v5 & 0xA1E36021;
  v7 = ((2 * (v5 ^ 0xE57FA494)) ^ 0x8939896A) & (v5 ^ 0xE57FA494) ^ (2 * (v5 ^ 0xE57FA494)) & 0x449CC4B4;
  v8 = v7 ^ 0x44844495;
  v9 = (v7 ^ 0x188000) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x127312D4) & v8 ^ (4 * v8) & 0x449CC4B4;
  v11 = (v10 ^ 0x100090) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x448CC421)) ^ 0x49CC4B50) & (v10 ^ 0x448CC421) ^ (16 * (v10 ^ 0x448CC421)) & 0x449CC490;
  v13 = v11 ^ 0x449CC4B5 ^ (v12 ^ 0x408C4000) & (v11 << 8);
  v14 = v5 ^ (2 * ((v13 << 16) & 0x449C0000 ^ v13 ^ ((v13 << 16) ^ 0x44B50000) & (((v12 ^ 0x41084A5) << 8) & 0x449C0000 ^ 0x40180000 ^ (((v12 ^ 0x41084A5) << 8) ^ 0x1CC40000) & (v12 ^ 0x41084A5))));
  v15 = (((v14 ^ 0x83F4DBF5) + 875301457) ^ ((v14 ^ 0x5EA84EAE) - 378495220) ^ ((v14 ^ 0x7CAE7C10) - 881414730)) - 1965374383;
  v16 = (((*(a1 + 12) ^ 0xEBEFD300) + 336604416) ^ ((*(a1 + 12) ^ 0xEBD8518F) + 338144881) ^ ((*(a1 + 12) ^ 0xE9E2459E) + 371047010)) - 1965374383;
  v17 = v15 < 0xA104FD40;
  v18 = v15 > v16;
  if (v16 < 0xA104FD40 != v17)
  {
    v18 = v17;
  }

  return (*(v4 + 8 * ((31 * !v18) ^ v2)))();
}

uint64_t sub_100644058(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 + 8 * a4);
  LODWORD(STACK[0x200]) = v6 - 2058777885;
  return v7(2754982072, 0, a3, 27 * (a4 ^ 0x5BA6u));
}

uint64_t sub_100644584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0xEC0] = v5;
  STACK[0xED0] = v6;
  return (*(STACK[0xF18] + 8 * (((*(v6 + 8) == (v4 ^ 0xC6FB) + 1325949047) * ((v4 ^ 0x385) - 40128)) ^ v4 ^ 0x385)))(a1, a2, a3, a4, 0);
}

uint64_t sub_1006445D8()
{
  STACK[0xC3C5] = 0x22905E05A817618ALL;
  LOWORD(STACK[0x10EE0]) = 23473 * ((((&STACK[0x10000] + 3800) | 0xE63C) - ((&STACK[0x10000] + 3800) & 0xE638)) ^ 0x2B18) + 18068;
  LODWORD(STACK[0x10ED8]) = (v0 + 11623) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0xB230E63C) - ((&STACK[0x10000] + 3800) & 0xB230E638)) ^ 0x83312B18));
  STACK[0x10EE8] = &STACK[0xC3C5];
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 50419)))(&STACK[0x10ED8]);
  STACK[0x9E88] = &STACK[0xC3C5];
  v4 = *(v1 + 32) + 1809448781;
  LODWORD(STACK[0x9E9C]) = (((109 * (v0 ^ 0x4F9)) ^ v4 ^ 0xB82C3327) + 738900146) ^ v4 ^ ((v4 ^ 0x2BB7AB20) - 1080972402) ^ ((v4 ^ 0xA7AD13B3) + 864752415) ^ ((v4 ^ 0x5FEFFFDD) - 875954319) ^ 0xB1B2BBC2;
  return (*(v2 + 8 * (v0 + 5873)))(v3);
}

uint64_t sub_100644870()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x989D)))(504);
  STACK[0x38C0] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((v0 - 15032) ^ 0x177B)) ^ v0)))();
}

uint64_t sub_10064509C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v9 = ~v7 + v2;
  v10 = *(a2 + v9 - 15);
  v11 = *(a2 + v9 - 31);
  v12 = v8 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(STACK[0xF18] + 8 * (((v7 + v4 + v5 == v3) * a1) ^ v6)))();
}

uint64_t sub_1006450E4()
{
  *(STACK[0x6A78] + 48) = v1;
  v2 = STACK[0x2BA4];
  if (!v1)
  {
    v2 = 371891397;
  }

  LODWORD(STACK[0xB404]) = v2;
  return (*(STACK[0xF18] + 8 * ((16600 * (v2 == ((((v0 - 668607776) & 0x27DA0FBE) + 33677) ^ 0xE9D54C2A))) ^ v0)))();
}

uint64_t sub_100645234()
{
  *STACK[0x6F98] = v0;
  *STACK[0x4198] = v2;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x70B0 ^ (v1 - 1552684611) & 0x5C8C7BEF)))();
}

uint64_t sub_100645284@<X0>(char a1@<W2>, char a2@<W3>, uint64_t a3@<X4>, char a4@<W5>, int a5@<W6>, char a6@<W7>, char a7@<W8>)
{
  v24 = ((v10 & a3) << (v11 - 3 + a4)) & (v10 ^ a5) ^ v10 & a3;
  v25 = ((2 * (v10 ^ a2)) ^ a6) & (v10 ^ a2) ^ (2 * (v10 ^ a2)) & v13;
  v26 = v10 ^ (2 * ((a1 ^ (4 * v25)) & (v25 ^ 0x80) & (16 * (v25 & (4 * v24) ^ v24)) ^ v25 & (4 * v24) ^ v24));
  v27 = (((v26 ^ v8) + v9) ^ ((v26 ^ v22) + a7) ^ ((v26 ^ v7) + v14)) + v20;
  v28 = v12 - 1;
  *(v16 + v28) = v27 * (v10 + v23) + (v27 * v15 + (v10 + v23) * v19) * v17 + v21;
  return (*(STACK[0x2A0] + 8 * (((v28 != 0) * v18) ^ v11)))();
}

uint64_t sub_1006453E8(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = a3 + a1 + v17;
  v20 = v18 + v16 + v13;
  v21 = v14 - (v18 + v16) - 484521273;
  LODWORD(STACK[0x5A0]) = ((((2 * (v18 + v16 + 1810645075)) & 0x28277F5A) + ((v18 + v16 + 1810645075) ^ a8)) ^ v20) + 1810645075;
  LODWORD(STACK[0x5B0]) = v21;
  LODWORD(STACK[0x590]) = v20 - v21 - 678115167;
  v22 = v15 - (a3 + a1) + 193593894;
  LODWORD(STACK[0x5C0]) = v19 ^ (a3 + a1);
  LODWORD(STACK[0x5A8]) = v22;
  LODWORD(STACK[0x598]) = v19 - v22;
  v23 = STACK[0x680];
  v24 = LODWORD(STACK[0x680]) ^ 0x4C9C;
  LODWORD(STACK[0x620]) = a2 - 1598932178;
  LODWORD(STACK[0x61C]) = a2 - 1598932177;
  LODWORD(STACK[0x610]) = a2 + 899502973;
  LODWORD(STACK[0x60C]) = a2 + 899502974;
  LODWORD(STACK[0x608]) = a2 + 899502975;
  LODWORD(STACK[0x604]) = a2 + 899502976;
  LODWORD(STACK[0x5F8]) = a2 + 899502977;
  LODWORD(STACK[0x5F0]) = a2 - 1377686881;
  LODWORD(STACK[0x5EC]) = a2 + 899502979;
  LODWORD(STACK[0x5E8]) = a2 + 899502980;
  LODWORD(STACK[0x5E4]) = a2 + 899502981;
  LODWORD(STACK[0x5D8]) = a2 + 899502982;
  LODWORD(STACK[0x5D0]) = a2 + 899502983;
  LODWORD(STACK[0x5C8]) = a2 + 899502984;
  STACK[0x690] = a13 - 0x4A6171CA9EAE5D20;
  v25 = *(STACK[0x6A0] + 8 * v23);
  LODWORD(STACK[0x698]) = v24;
  LODWORD(STACK[0x628]) = v24 - 38142;
  return v25(0x72219E3FC2734, 0x7200000000000000);
}

uint64_t sub_1006456A4(int a1, uint64_t a2, int a3)
{
  LOBYTE(STACK[0xED4]) = 0;
  LOBYTE(STACK[0xF4B]) = 1;
  LOBYTE(STACK[0xFC2]) = 2;
  LOBYTE(STACK[0x1039]) = 3;
  LOBYTE(STACK[0xCEE]) = 4;
  LOBYTE(STACK[0xD65]) = 5;
  LOBYTE(STACK[0xDDC]) = 6;
  LOBYTE(STACK[0xE53]) = 7;
  LOBYTE(STACK[0xECA]) = 8;
  LOBYTE(STACK[0xF41]) = 9;
  LOBYTE(STACK[0xFB8]) = 10;
  LOBYTE(STACK[0x102F]) = 11;
  LOBYTE(STACK[0xCE4]) = 12;
  LOBYTE(STACK[0xD5B]) = 13;
  LOBYTE(STACK[0xDD2]) = 14;
  LOBYTE(STACK[0xE49]) = 15;
  v8 = v6 ^ 0x7C282DFC;
  v9 = (119 * (a1 & 0xF) - 24600) % 0x3C2u;
  LOBYTE(STACK[0xED4]) = *(v7 + v9);
  *(v7 + v9) = 0;
  v10 = STACK[0xF4B];
  v11 = (119 * (v5 % 0xF) - 24481) % 0x3C2u;
  LOBYTE(STACK[0xF4B]) = *(v7 + v11);
  *(v7 + v11) = v10;
  LOBYTE(v11) = STACK[0xFC2];
  v12 = (119 * (v8 % 0xE) - 24362) % 0x3C2u;
  LOBYTE(STACK[0xFC2]) = *(v7 + v12);
  *(v7 + v12) = v11;
  v13 = a1 + v8;
  v14 = a1 + 1686260226;
  v15 = (v4 ^ v5) + v13;
  v16 = (119 * (v4 % 0xD) - 24243) % 0x3C2u;
  v17 = STACK[0x1039];
  LOBYTE(STACK[0x1039]) = *(v7 + v16);
  LODWORD(v11) = v14 ^ a3;
  *(v7 + v16) = v17;
  v18 = STACK[0xCEE];
  v19 = (119 * ((v15 ^ v14) % 0xC) - 24124) % 0x3C2u;
  v20 = v13 - (v15 ^ v14);
  LOBYTE(STACK[0xCEE]) = *(v7 + v19);
  *(v7 + v19) = v18;
  v21 = (119 * (v11 % 0xB) - 24005) % 0x3C2u;
  LOBYTE(v12) = STACK[0xD65];
  LOBYTE(STACK[0xD65]) = *(v7 + v21);
  *(v7 + v21) = v12;
  v22 = (119 * (v11 % 0xB) - 24005 - 962 * ((119 * (v11 % 0xB) - 24005) / 0x3C2u)) & 0x158;
  v23 = 119 * (v22 + v20 % 0xA + (v22 ^ 0x158)) + 714;
  LOBYTE(v12) = STACK[0xDDC];
  LOBYTE(STACK[0xDDC]) = *(v7 + (v23 - 962 * ((4464623 * v23) >> 32)));
  *(v7 + (119 * (v20 % 0xA) - 23886) % 0x3C2u) = v12;
  v24 = STACK[0xE53];
  v25 = (119 * (v15 % 9) - 23767) % 0x3C2u;
  LODWORD(v12) = v15 ^ 0x8732D852;
  LOBYTE(v15) = (v15 ^ a3) - (v15 ^ 0x52);
  LOBYTE(STACK[0xE53]) = *(v7 + v25);
  *(v7 + v25) = v24;
  v26 = STACK[0xECA];
  v27 = (119 * (v15 & 7) - 23648) % 0x3C2u;
  LOBYTE(STACK[0xECA]) = *(v7 + v27);
  *(v7 + v27) = v26;
  v28 = v20 ^ 0x77406F12 ^ (v11 - v20);
  v29 = STACK[0xF41];
  v30 = (119 * (v28 % 7) - 23529) % 0x3C2u;
  LOBYTE(STACK[0xF41]) = *(v7 + v30);
  *(v7 + v30) = v29;
  v31 = STACK[0xFB8];
  v32 = (119 * (((v20 ^ 0x77406F12) + v12) % 6) - 23410) % 0x3C2u;
  LOBYTE(STACK[0xFB8]) = *(v7 + v32);
  *(v7 + v32) = v31;
  v33 = (119 * ((v12 + 1003373657) % 5u) - 23291) % 0x3C2u;
  v34 = STACK[0x102F];
  LOBYTE(STACK[0x102F]) = *(v7 + v33);
  *(v7 + v33) = v34;
  LOBYTE(v32) = (v20 ^ 0x12) + v12 - (v28 - (v12 + 89));
  LOBYTE(v20) = STACK[0xCE4];
  v35 = (119 * (((v28 - (v12 + 89)) ^ v15) & 3) - 23172) % 0x3C2u;
  LOBYTE(STACK[0xCE4]) = *(v7 + v35);
  *(v7 + v35) = v20;
  v36 = (119 * (((v28 - (v12 + 1003373657)) ^ 0x448290FC) % 3) - 23053) % 0x3C2u;
  LOBYTE(v15) = STACK[0xD5B];
  LOBYTE(STACK[0xD5B]) = *(v7 + v36);
  *(v7 + v36) = v15;
  v37 = 274;
  if (v32)
  {
    v37 = 393;
  }

  v38 = STACK[0xDD2];
  LOBYTE(STACK[0xDD2]) = *(v7 + v37);
  *(v7 + v37) = v38;
  return (*(STACK[0x6A0] + 8 * v3))();
}

uint64_t sub_100645E48(uint64_t a1, unsigned int a2)
{
  v4 = *(v2 + 24) - 0x22EE7697BF697661;
  v5 = (v3 - 0x22EE7697BF697661 < (a2 ^ 0xCA339585uLL)) ^ (v4 < ((a2 + 820547741) & 0xCF17BEBD ^ 0xCA33655AuLL));
  v6 = v4 < v3 - 0x22EE7697BF697661;
  if (v5)
  {
    v6 = v3 - 0x22EE7697BF697661 < (a2 ^ 0xCA339585uLL);
  }

  return (*(STACK[0xF18] + 8 * ((431 * !v6) ^ a2)))();
}

uint64_t sub_100645FA0()
{
  v1 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x3BB)))();
}

uint64_t sub_100646204@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x54B0] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * ((2054 * ((a1 + 1941379723 + a1 + 16580) < 0x88BE6C36)) ^ (a1 + 4105))))();
}

uint64_t sub_10064635C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x250] = v72;
  STACK[0x230] = a69;
  STACK[0x240] = v73;
  *v70 ^= LODWORD(STACK[0x220]);
  return (*(v71 + 8 * v69))(-29334, 7778, 4294957902);
}

uint64_t sub_1006463B4@<X0>(unint64_t a1@<X8>)
{
  STACK[0x10EE0] = &STACK[0xF28] ^ 0xBC5CBBF506E2FFE7 ^ (3 * (v1 ^ 0xD47u));
  STACK[0x10EE8] = a1;
  LODWORD(STACK[0x10ED8]) = v1 - 193924789 * ((~(&STACK[0x10000] + 3800) & 0x17D82D5 | (&STACK[0x10000] + 3800) & 0xFE827D28) ^ 0xB7C6B0B3) + 1731352303;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 42985)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100646564(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = 8 * v6;
  v8 = *(STACK[0xED0] + 4 * (((((v6 ^ 0xFED13694) - 1069922765) ^ ((v6 ^ 0x222F38D) + 1019839276) ^ ((v6 ^ 0x2556C0C5) + 465416292)) * LODWORD(STACK[0xD90]) - 1558059475) % 0x26C4));
  v9 = (((8 * v6) ^ 0x8F8C8405) + 217090811) ^ (((8 * v6) ^ 0xA3CEE086) + 548597370) ^ (((8 * v6) ^ 0xE16A4A5E) + 1645626530);
  v10 = ((((8 * v6) ^ 0x3F780D4) + 1527644616) ^ (((8 * v6) ^ 0x489BE37E) + 274883182) ^ (((8 * v6) ^ 0x86444D76) - 557986714)) * v5 - 1946659422;
  v11 = ((((8 * v6) ^ 0x330DBD2B) + 462690398) ^ (((8 * v6) ^ 0x707DB65) + 798916116) ^ (((8 * v6) ^ 0xF9224891) - 776213016)) * v5 + 1674911768;
  v12 = ((((8 * v6) ^ 0x488DA2E5) - 1518365944) ^ (((8 * v6) ^ 0xCFAE086D) + 576469392) ^ (((8 * v6) ^ 0x4A0B8451) - 1476807244)) * v5 + 1827302038;
  v13 = (707 * (((v8 ^ 0xFA70AE45) + 1199754427) ^ ((v8 ^ 0x88B1CE4F) + 893627569) ^ ((v8 ^ 0x5F5339DD) - 492741853)) + 1178468165) % 0x300;
  v14 = ((((8 * v6) ^ 0xE4312763) + 2140999944) ^ (((8 * v6) ^ 0xCC88BFD3) + 1462012344) ^ (((8 * v6) ^ 0xE591B66E) + 2117959691)) * v5 + 674390607;
  v15 = (((8 * v6) ^ 0xC73C448D) - 1015662510) ^ (((8 * v6) ^ 0xA7F1F5CD) - 1547990766) ^ (((8 * v6) ^ 0xADE59F9A) - 1448090809);
  v16 = *(STACK[0xEC0] + 4 * v13);
  v17 = ((v16 ^ 0xD6621925) - 1465317195) ^ ((v16 ^ 0x9869A1EA) - 425545604) ^ ((v16 ^ 0x5F563122) + 563945652);
  v18 = ((((8 * v6) ^ 0x30799F50) - 1775773690) ^ (((8 * v6) ^ 0x806A470D) + 640942169) ^ (((8 * v6) ^ 0x7D3BF697) - 614092349)) * v5 - 1028538101;
  v19 = (((((8 * v6) ^ 0xE98022F5) - 1254608562) ^ (((8 * v6) ^ 0xF8CA4084) - 1536011459) ^ (((8 * v6) ^ 0xDC624828) - 2133173359)) + ((((16 * v6) & 0x900 ^ 0x7C92FCC8) - 1243853568) ^ (((16 * v6) & 0x900) + 357478840) ^ (((16 * v6) & 0x900 ^ 0x5B964538) - 1831275248))) * v5 + 1771860506;
  v20 = ((((8 * v6) ^ 0xD4ECA7A4) - 698823535) ^ (((8 * v6) ^ 0x3E337C39) + 1015486222) ^ (((8 * v6) ^ 0x27F7F554) + 625188449)) * v5 - 1191847395;
  v21 = ((((8 * v6) ^ 0xC877449D) - 1412679553) ^ (((8 * v6) ^ 0xF6D5F172) - 1787916910) ^ (((8 * v6) ^ 0xF38A9B21) - 1875777597)) * v5 + 1085748077;
  v22 = v10 - ((((v10 >> 5) * v4) >> 32) >> 1) * a2;
  v23 = *(STACK[0xED0] + 4 * ((2899 * v17 + 1503604857) % 0x26C4));
  v24 = (((8 * v6) ^ 0xC6EC55A4) + 1934115354) ^ (((8 * v6) ^ 0x9C423CB1) + 702950157) ^ (((8 * v6) ^ 0x978647DD) + 572674145);
  v25 = v11 - ((((v11 >> 5) * v4) >> 32) >> 1) * a2;
  v26 = ((((8 * v6) ^ 0xCE43EB3B) + 1151571978) ^ (((8 * v6) ^ 0x50B63AEE) - 631879203) ^ (((8 * v6) ^ 0x53DDFF1E) - 650277843)) * v5 + 447518465;
  v27 = v12 - ((((v12 >> 5) * v4) >> 32) >> 1) * a2;
  v28 = v14 - ((((v14 >> 5) * v4) >> 32) >> 1) * a2;
  v29 = (((v6 ^ 0x97831F80) + 1753014400) ^ ((v6 ^ 0xE51FE968) + 450893464) ^ ((v6 ^ 0xAB39F33A) + 1422265542)) + 1321236629;
  v30 = v18 - ((((v18 >> 5) * v4) >> 32) >> 1) * a2;
  v31 = ((v29 ^ 0xF640241F) + 2091165987) ^ v29 ^ ((v29 ^ 0xFD86FBDF) + 2002941667) ^ ((v29 ^ 0x93252DD) - 2083069983) ^ ((v29 ^ 0x77EFFFDF) - 49581341);
  v32 = v20 - ((((v20 >> 5) * v4) >> 32) >> 1) * a2;
  v33 = v21 - ((((v21 >> 5) * v4) >> 32) >> 1) * a2;
  v34 = ((((8 * v6) ^ 0x1C5B9EEE) - 1226778580) ^ (((8 * v6) ^ 0xCE6003E1) + 1692091685) ^ (((8 * v6) ^ 0x1F13B3C0) - 1247218426)) * v5 + 256181304;
  v35 = v26 - ((((v26 >> 5) * v4) >> 32) >> 1) * a2;
  v36 = v34 - ((((v34 >> 5) * v4) >> 32) >> 1) * a2;
  v37 = v9 * v5 - 356797401 - (((((v9 * v5 - 356797401) >> 5) * v4) >> 32) >> 1) * a2;
  v38 = v19 - ((((v19 >> 5) * v4) >> 32) >> 1) * a2;
  v39 = (STACK[0xEB0] + (v23 ^ 0xC6A71E2));
  v40 = *v39;
  v41 = v15 * v5 + 1033446499 - (((((v15 * v5 + 1033446499) >> 5) * v4) >> 32) >> 1) * a2;
  v42 = 1864610357 * ((1864610357 * ((v39 ^ LODWORD(STACK[0xDA0])) & 0x7FFFFFFF)) ^ ((1864610357 * ((v39 ^ LODWORD(STACK[0xDA0])) & 0x7FFFFFFF)) >> 16));
  v43 = (((v7 ^ 0xCE35E306) - 508918800) ^ ((v7 ^ 0x125362A2) + 1036780108) ^ ((v7 ^ 0x114EAF68) + 1053937538)) * v5 - 255311563;
  v44 = v43 - ((((v43 >> 5) * v4) >> 32) >> 1) * a2;
  v45 = v42 >> 24;
  LOBYTE(v20) = v42 ^ v40;
  v46 = (((v7 ^ 0xCBD37BA1) + 655921490) ^ ((v7 ^ 0x11D0A6D3) - 48542684) ^ ((v7 ^ 0x172BF3AA) - 69199525)) * v5 + 25956561;
  v47 = *(STACK[0xE90] + (v42 >> 24));
  v48 = v46 - ((((v46 >> 5) * v4) >> 32) >> 1) * a2;
  LOBYTE(v46) = *(STACK[0xE80] + (v42 >> 24));
  v49 = (v42 >> 24) + 1;
  v50 = (((v7 ^ 0xA3CB7BAB) - 1767032526) ^ ((v7 ^ 0x802D1E6C) - 1253352201) ^ ((v7 ^ 0xEECE4B0A) - 609744495)) * v5 + 780897811;
  v51 = v50 - ((((v50 >> 5) * v4) >> 32) >> 1) * a2;
  v52 = v24 * v5 + 1808223333 - (((((v24 * v5 + 1808223333) >> 5) * v4) >> 32) >> 1) * a2;
  v53 = v20 ^ v47 ^ v46 ^ *(STACK[0xE70] + v49) ^ (-107 * v45);
  LOBYTE(v46) = v20 ^ (-57 * v45) ^ *(STACK[0xE60] + v45) ^ *(v45 + STACK[0xE40] + 3) ^ *(STACK[0xE30] + v49);
  v54 = *(a4 + 8 * v28);
  v55 = ((v46 ^ 0x7E) + 64) ^ ((v46 ^ 0xD8) - 102) ^ ((v46 ^ 0xA6) - 24);
  v56 = *(a4 + 8 * v30) ^ 0x5E30AD64D34F0EE8;
  v57 = *(a4 + 8 * v32) ^ 0x62F45290C818F3B9;
  if ((v53 & 2) != 0)
  {
    v58 = *(a4 + 8 * v52) ^ 0xE710F00E8D706ECLL;
  }

  else
  {
    v58 = 0x3FA8D7DABC25B058;
  }

  if ((v53 & 2) != 0)
  {
    v59 = *(a4 + 8 * v25) ^ 0x4DDDDB0884054E6DLL;
  }

  else
  {
    v59 = 0x4726038F081F18ABLL;
  }

  if (v53)
  {
    v60 = v57;
  }

  else
  {
    v60 = 0x532D8A4A9CEA450DLL;
  }

  v61 = v54 ^ 0x24B7CED1D6719CBALL;
  if ((v53 & 1) == 0)
  {
    v61 = 0x2E4C16565A6BCA7CLL;
  }

  v62 = *(a4 + 8 * v38);
  if ((v53 & 8) != 0)
  {
    v63 = v56;
  }

  else
  {
    v63 = 0x6FE975BE87BDB85CLL;
  }

  v64 = v62 ^ 0x557829E02A821504;
  v65 = 0xFEFBDBB94E224338;
  if ((v53 & 8) != 0)
  {
    v65 = *(a4 + 8 * v37) ^ 0xF400033EC23815FELL;
  }

  if ((v53 & 0x20) == 0)
  {
    v64 = 0x5F83F167A69843C2;
  }

  v66 = *(a4 + 8 * v44) ^ 0x9E58B5F303475F58;
  if ((v53 & 0x20) == 0)
  {
    v66 = 0xAF816D2957B5E9ECLL;
  }

  v67 = (v55 - 66) < 0;
  v68 = v63 ^ STACK[0xDF0];
  v69 = *(a4 + 8 * v27);
  v70 = *(a4 + 8 * v41);
  v71 = *(a4 + 8 * v36) ^ 0x3A170248212C5138;
  v72 = *(a4 + 8 * v33);
  v73 = v69 ^ 0x7D3B4B6F453212BCLL;
  if (!v67)
  {
    v73 = 0x77C093E8C928447ALL;
  }

  v74 = v72 ^ 0xEC3D30CA2E6D8C11;
  if (!v67)
  {
    v74 = 0xDDE4E8107A9F3AA5;
  }

  if ((v53 & 0x40) == 0)
  {
    v71 = 0xBCEDA9275DEE78CLL;
  }

  v75 = 0xD803B8DFA82032C6;
  if ((v53 & 0x40) != 0)
  {
    v75 = *(a4 + 8 * v48) ^ 0xD2F86058243A6400;
  }

  v77 = 0x39F1A3DA926FF51FLL;
  if ((v53 & 0x10) != 0)
  {
    v77 = v70 ^ 0x330A7B5D1E75A3D9;
  }

  v78 = *(a4 + 8 * v51) ^ 0xC83CA39D14186B6BLL;
  if ((v53 & 0x10) == 0)
  {
    v78 = 0xF9E57B4740EADDDFLL;
  }

  v79 = (v53 & 4) == 0;
  v80 = *(a4 + 8 * v35) ^ 0x4573C9A7E0063686;
  if (v79)
  {
    v80 = 0x74AA117DB4F48032;
  }

  v81 = v68 ^ v58 ^ v80;
  v82 = v71 ^ v60 ^ v66;
  v83 = v59 ^ STACK[0xDE0];
  v84 = v81 ^ v82 ^ v74;
  v85 = ((v84 & 8) + 0x17DFF2077D8D1F4FLL) ^ (v84 & 8 | 0x28200E079A6F2931) ^ ((v84 & 8 ^ 0x8C60BE1653F98B39) + 0x5BBF57E032915B98);
  v86 = v85 - 0x7DAF2BB9B2D22FB4;
  v87 = (((v85 - 0x7DAF2BB9B2D22FB4) ^ 0x93A23C512FEFC402) + 0x366D7D927E869B0FLL) ^ (v85 - 0x7DAF2BB9B2D22FB4) ^ (((v85 - 0x7DAF2BB9B2D22FB4) ^ 0x54F6A2C665D81704) - 0xEC61CFACB4EB7F7) ^ (((v85 - 0x7DAF2BB9B2D22FB4) ^ 0x6BE07E5D020EBC0ALL) - 0x31D0C061AC981CF9) ^ (((v85 - 0x7DAF2BB9B2D22FB4) ^ 0xF6845EF6E6AFCFFFLL) + 0x534B1F35B7C690F4);
  v88 = (v87 ^ 0x5A30BE3CAE96A0F3) & (v78 ^ 0x44607154E00E1028) ^ v87 & 0xBD850A13A0E4CDF7;
  v89 = 0x5E20B7EA49A9518ELL;
  if (!v79)
  {
    v89 = *(a4 + 8 * v22) ^ 0x54DB6F6DC5B30748;
  }

  v90 = 0x3210A8330FFF719ALL - v85;
  if (v88 == 0x18000A10A08480F3)
  {
    v90 = v86;
  }

  v91 = (((v78 ^ 0x7BAAA154B9E6750ELL) - 0x7BAAA154B9E6750ELL) ^ ((v78 ^ 0xD16A73F804E5C15DLL) + 0x2E958C07FB1A3EA3) ^ ((v78 ^ 0x5325A9EBFDE9698CLL) - 0x5325A9EBFDE9698CLL)) - 0x3B3D840418C79A24 + v90;
  STACK[0xDE0] = v83 ^ v77 ^ v61 ^ v75 ^ v65 ^ v89 ^ v64 ^ v73;
  STACK[0xDF0] = v84 & 0xFFFFFFFFFFFFFFF7 ^ v91 ^ ((v91 ^ 0x11B9AB94FFA17FFBLL) - 0x34B41565AB45570BLL) ^ ((v91 ^ 0xEB36106C635E4C11) + 0x31C45162C8459B1FLL) ^ ((v91 ^ 0xA8FDFEB6D7B6C0DCLL) + 0x720FBFB87CAD17D4) ^ ((v91 ^ 0x777FFBBF1FADDBC6) - 0x5272454E4B49F336) ^ 0x2B60D8091F96D106;
  v76 = (((v31 ^ 0x29769DD3) + 2050430269) ^ ((v31 ^ 0x3F511DCC) + 1813026084) ^ ((v31 ^ 0x633CF2DD) + 813529651)) - 643496494 < 0x30;
  return (*(STACK[0xF18] + 8 * ((4 * v76) | (8 * v76) | LODWORD(STACK[0xDC0]))))();
}

uint64_t sub_100647730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0xF18];
  STACK[0x1700] = *(STACK[0xF18] + 8 * (v6 - 32976));
  return (*(v7 + 8 * ((v6 - 23654) ^ (v6 - 32976))))(a1, a2, a3, a4, a5, a6, STACK[0x950]);
}

uint64_t sub_100647788()
{
  *(v2 + 1876) = v4;
  *(v2 + 1872) = v0;
  LODWORD(STACK[0x57E4]) = v1;
  LODWORD(STACK[0x81BC]) = v0;
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_1006477B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  LODWORD(STACK[0x690]) = v13 ^ 0x1C02B905;
  STACK[0x680] = a13 - 0x4A6171CA9EAE5D20;
  return (*(STACK[0x6A0] + 8 * (v13 ^ 0x1C02A3B2 ^ (6827 * (v13 < (v13 ^ 0x5FFA0C68))))))();
}

uint64_t sub_100647878@<X0>(int a1@<W8>)
{
  v8 = *(v7 + ((495 * ((a1 - ((2 * a1) & 0xF2) + 121) ^ LODWORD(STACK[0xE90]))) & (((v2 - 15712) | 0x103u) - 12060) ^ 0x100));
  v9 = v8 & 0x8C ^ 0xAF;
  v10 = v8 ^ (2 * ((v8 ^ v3) & (2 * ((v8 ^ v3) & (2 * ((v8 ^ v3) & (2 * ((v8 ^ v3) & (2 * ((v8 ^ v3) & (2 * ((v8 ^ v3) & 0x3A ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ 0x76;
  *(v4 + (*(v6 + 4 * ((2899 * ((a1 + 2816) ^ 0x3C2u) + 11268413) % 0x26C4)) ^ 0x8B6B2AE6) + 8464) = *(v1 + v10 * v5 + 3484040 - 3712 * (((2314099 * (v10 * v5 + 3484040)) >> 32) >> 1)) ^ 0x27;
  return (*(STACK[0xF18] + 8 * ((64909 * (a1 == 255)) ^ v2)))();
}

uint64_t sub_100647A04()
{
  v2 = (((v1 ^ 0xDB2C2A3A) + 617862598) ^ ((v1 ^ 0xD07F0FC1) + 796979263) ^ (((v0 + 2529) ^ 0x1D79962D) + (v1 ^ 0xE286E2EA))) + ((v0 - 718651739) & 0x2AD5CB3B ^ 0x6C33A72A);
  v3 = (v2 ^ 0x7908DB1E) & (2 * (v2 & 0x7DA29B00)) ^ v2 & 0x7DA29B00;
  v4 = ((2 * (v2 ^ 0xD348F91E)) ^ 0x5DD4C43C) & (v2 ^ 0xD348F91E) ^ (2 * (v2 ^ 0xD348F91E)) & 0xAEEA621E;
  v5 = v4 ^ 0xA22A2202;
  v6 = (v4 ^ 0xC804000) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0xBBA98878) & v5 ^ (4 * v5) & 0xAEEA6218;
  v8 = (v7 ^ 0xAAA80000) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x4426206)) ^ 0xEEA621E0) & (v7 ^ 0x4426206) ^ (16 * (v7 ^ 0x4426206)) & 0xAEEA6200;
  return (*(STACK[0xF18] + 8 * ((236 * ((v2 ^ (2 * ((((v9 ^ 0x48421E) << 8) & 0x2EEA0000 ^ 0x2A620000 ^ (((v9 ^ 0x48421E) << 8) ^ 0xEA620000) & (v9 ^ 0x48421E)) & (((v9 ^ 0xAEA22000) & (v8 << 8) ^ v8) << 16) ^ (v9 ^ 0xAEA22000) & (v8 << 8) ^ v8))) == 2107808512)) ^ v0)))();
}

uint64_t sub_100647C30()
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = 327919325;
  return (*(STACK[0xF18] + 8 * (((((v0 + 26319) | 0x832) ^ 0x97248B46) + v0 + 1759246169) ^ (15440 * ((v0 + 1759246169) > 0xB7B422F6)))))();
}

uint64_t sub_100647E1C@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x1748]) = v1;
  STACK[0x21B8] = a1;
  return (*(STACK[0xF18] + 8 * (((v3 == -371865839) * ((v2 + 20841) ^ 0x6EE2)) ^ v2)))();
}

uint64_t sub_100647F2C()
{
  v1 = 1112314453 * ((((2 * (&STACK[0x10000] + 3800)) | 0xC8F7E07C) - (&STACK[0x10000] + 3800) - 1685844030) ^ 0x8B2DDAE7);
  LODWORD(STACK[0x10EE0]) = v1 + (((LODWORD(STACK[0x5588]) ^ 0xE8A2E97F) + 391976577) ^ (v0 + 647052146 + (LODWORD(STACK[0x5588]) ^ 0xD96E2001)) ^ (((v0 - 571602190) & 0x2211DBBB) + (LODWORD(STACK[0x5588]) ^ 0xD8190E6F) + 669410902)) + 1236375778;
  LODWORD(STACK[0x10EDC]) = v1 + v0 - 253;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 9965)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * ((56 * (LOBYTE(STACK[0x10ED8]) == 126)) ^ v0)))(v3);
}

uint64_t sub_10064818C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v25 = *(v24 + 8 * (v23 + 4082));
  LODWORD(a18) = -371865827;
  return v25(a1, v25, a3, a4, a7, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_1006481DC@<X0>(int a1@<W8>)
{
  v7 = (v2 ^ 0x34BA7335) & (2 * (v2 & 0xA6BB63B6)) ^ v2 & 0xA6BB63B6;
  v8 = ((2 * (v2 ^ 0x3CBC0F4C ^ (v3 + 10461))) ^ 0x340EA116) & (v2 ^ 0x3CBC0F4C ^ (v3 + 10461)) ^ (2 * (v2 ^ 0x3CBC0F4C ^ (v3 + 10461))) & 0x9A07508A;
  v9 = v8 ^ 0x8A015089;
  v10 = (v8 ^ 0x10060000) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0x681D422C) & v9 ^ (4 * v9) & 0x9A075088;
  v12 = v10 ^ 0x9A07508B ^ (v11 ^ 0x8054000) & (16 * v10);
  v13 = (16 * (v11 ^ 0x92021083)) & 0x9A075080 ^ 0x1A02500B ^ ((16 * (v11 ^ 0x92021083)) ^ 0xA07508B0) & (v11 ^ 0x92021083);
  v14 = (v12 << 8) & 0x9A075000 ^ v12 ^ ((v12 << 8) ^ 0x7508B00) & v13;
  v15 = (v14 << 16) & 0x1A070000 ^ v14 ^ ((v14 << 16) ^ 0x508B0000) & ((v13 << 8) & 0x1A070000 ^ 0x18070000 ^ ((v13 << 8) ^ 0x7500000) & v13);
  v16 = 1012831759 * ((((&STACK[0x10000] + 3800) | 0x68E6DE5B) - ((&STACK[0x10000] + 3800) | 0x971921A4) - 1759960668) ^ 0x7875C8D1);
  STACK[0x10EF0] = *(v4 + v5);
  LODWORD(STACK[0x10ED8]) = (((a1 ^ 0xB77509CE) + 1217066546) ^ ((a1 ^ 0x2F6FFA1D) - 795867677) ^ ((a1 ^ 0x71CF34C2) - 1909404866)) - v16 + 99480725;
  LODWORD(STACK[0x10F08]) = v16 ^ v2 ^ (2 * v15) ^ 0xB16ECD52;
  STACK[0x10EE0] = v1;
  STACK[0x10F00] = v6 + 484;
  LODWORD(STACK[0x10EE8]) = v3 - v16 + 8029;
  LOBYTE(STACK[0x10EF8]) = 68 - 15 * ((((&STACK[0x10000] - 40) | 0x5B) - ((&STACK[0x10000] - 40) | 0xA4) - 92) ^ 0xD1);
  v17 = STACK[0xF18];
  v18 = (*(STACK[0xF18] + 8 * (v3 ^ 0xD929)))(&STACK[0x10ED8]);
  return (*(v17 + 8 * v3))(v18);
}

uint64_t sub_100648594()
{
  v0 = STACK[0xF10] - 31155;
  v1 = STACK[0xF18];
  STACK[0x4AD0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 ^ 0x77B2) + v0)))();
}

uint64_t sub_1006486F0()
{
  STACK[0x348] = 0;
  v1 = STACK[0x2D8];
  v2 = *(*(STACK[0x2D8] + 24) + 32) == STACK[0x2D8];
  STACK[0x380] = &STACK[0x5EC];
  v3 = *(STACK[0x3D0] + 8 * ((((4 * (v0 ^ 0x168) - 518893541) & 0x1EEDF3E2 ^ 0x642) * v2) ^ v0));
  STACK[0x2E8] = v1;
  return v3();
}

uint64_t sub_100648758()
{
  LODWORD(STACK[0x51C]) = v1;
  LODWORD(STACK[0x2E4]) = v0;
  v5 = (((v2 ^ 0x79A7D28B) - 2041041547) ^ ((v2 ^ 0x995E5A5A) + 1721869734) ^ (((v3 - 45002) | 0x44A) + (v2 ^ 0x92C4FC0) - 153902123)) + ((3 * (v3 ^ 0xB2EA)) ^ 0x1D5A1654);
  v6 = v5 < 0x33845246;
  v7 = v1 + 43590626 < v5;
  if ((v1 + 43590626) < 0x33845246 != v6)
  {
    v7 = v6;
  }

  return (*(v4 + 8 * ((4064 * !v7) ^ v3)))();
}

uint64_t sub_100648834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v40 = v38 - 3041;
  v41 = v38 - 40795;
  v43 = *(a38 - 1401400883) == 1 && *(*(&off_1010A0B50 + (v40 ^ 0x96E1)) - 228216043) != 0;
  return (*(v39 + 8 * ((v43 * ((v41 ^ 0xFA) + v41)) ^ v40)))(3157904669, 1137082276, 2810302390, 128198540, 2617652785, 1008972205, 2658294843, 1045935111);
}

uint64_t sub_100648A10@<X0>(int a1@<W0>, int a2@<W8>)
{
  v13 = v11 > v4;
  v14 = 16 * (a1 + v5);
  *(*v10 + v14) = v6;
  *(*v10 + v14 + 8) = v6;
  v15 = a1 + v7;
  v16 = a1 + v8;
  v17 = (v15 + v12);
  LODWORD(v14) = v13 ^ (v16 < v2);
  v18 = v16 < v3;
  if (!v14)
  {
    v13 = v18;
  }

  return (*(STACK[0xF18] + 8 * ((v13 * v9) ^ a2)))(v17);
}

uint64_t sub_100648AB0@<X0>(int a1@<W1>, uint64_t a2@<X4>, int a3@<W8>, __n128 a4@<Q1>, int8x16_t a5@<Q4>, uint64_t a6@<D5>, int8x16_t a7@<Q6>)
{
  v17 = (a2 - 1) & 0xF;
  v19.i64[0] = vqtbl4q_s8(*(&a4 - 1), a5).u64[0];
  v19.i64[1] = a6;
  v20 = vrev64q_s8(vmulq_s8(v19, a7));
  *(v15 + a2) = veorq_s8(veorq_s8(veorq_s8(*(v12 + v17 - 15), *(v10 + a2)), veorq_s8(*(v17 + v13 - 9), *(v11 + v17 - 15))), vextq_s8(v20, v20, 8uLL));
  return (*(v16 + 8 * (((v14 != a2) * a3) ^ a1)))();
}

uint64_t sub_100648B24()
{
  v1 = STACK[0x7C08];
  v2 = STACK[0x16E8];
  LODWORD(STACK[0x10EF0]) = v0 - 139493411 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x3B989D80) + 999857539) ^ 0x37B57CC6) + 842;
  STACK[0x10EF8] = v2;
  STACK[0x10EE0] = v1;
  STACK[0x10EE8] = &STACK[0x11B4];
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 23630)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (((LODWORD(STACK[0x11B4]) != -371865839) * (v0 - 28327)) | v0)))(v4);
}

uint64_t sub_100648C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x5758]) = v3;
  v5 = (((LODWORD(STACK[0x1D1C]) ^ 0x3F4D0811) - 1062012945) ^ ((LODWORD(STACK[0x1D1C]) ^ 0x456DB9F1) - 1164818929) ^ ((LODWORD(STACK[0x1D1C]) ^ (346 * (v4 ^ 0xAA5u) - 1812645691)) + 1812629775)) - v3 + 377984764;
  v6 = STACK[0xF18];
  STACK[0x98B8] = *(STACK[0xF18] + 8 * v4);
  return (*(v6 + 8 * (v4 ^ 0x3BD7)))(a1, a2, a3, (v5 | ((v5 < 0x1FC4B800) << 32)) + 0x1D54AEB358D34D43);
}

uint64_t sub_1006493A8(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, uint64_t a54, int a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, char a60, int a61, char a62, int a63)
{
  v80 = v76 + 1051195069;
  v81 = v73 - 977280614 * a4 + ((v72 + 28922) ^ 0x20F525C2) - (((v79 ^ 0xDBB81689) + 608692599) ^ ((v79 ^ 0x892847C8) + 1993848888) ^ (((((v72 + 8964049) | 0xC06B949) + 1693619718) ^ v79) - 1904366415));
  v82 = (v81 ^ 0xB7391FCD) & (2 * (v81 & 0xB73D9FED)) ^ v81 & 0xB73D9FED;
  v83 = ((2 * (v81 ^ 0xD31110DF)) ^ 0xC8591E64) & (v81 ^ 0xD31110DF) ^ (2 * (v81 ^ 0xD31110DF)) & 0x642C8F32;
  v84 = v83 ^ 0x24248112;
  v85 = (v83 ^ 0x40080E20) & (4 * v82) ^ v82;
  v86 = ((4 * v84) ^ 0x90B23CC8) & v84 ^ (4 * v84) & 0x642C8F30;
  v87 = (v86 ^ 0x200C00) & (16 * v85) ^ v85;
  v88 = ((16 * (v86 ^ 0x640C8332)) ^ 0x42C8F320) & (v86 ^ 0x640C8332) ^ (16 * (v86 ^ 0x640C8332)) & 0x642C8F20;
  v89 = v87 ^ 0x642C8F32 ^ (v88 ^ 0x40088300) & (v87 << 8);
  v90 = (v89 << 16) & 0x642C0000 ^ v89 ^ ((v89 << 16) ^ 0xF320000) & (((v88 ^ 0x24240C12) << 8) & 0x642C0000 ^ 0x40200000 ^ (((v88 ^ 0x24240C12) << 8) ^ 0x2C8F0000) & (v88 ^ 0x24240C12));
  v91 = (v76 + 1051195069) & 0x43;
  v92 = ((4 * ((v91 >> 1) & 1)) | 0x4A12410) ^ (v91 | 0x7A649E1C) ^ (((2 * v91) | 0x4812000) & ((v76 + 1051195069) ^ 0x97FF2557) | 0x28629618);
  v93 = (2 * (v80 ^ 0x97FF2557)) & 0x52000014 ^ 0x52000014 ^ ((2 * (v80 ^ 0x97FF2557)) ^ 0xA9EF7C28) & (v80 ^ 0x97FF2557);
  v94 = (4 * v92) & 0x56A52414 ^ v92 ^ ((4 * v92) ^ 0x5E3D9450) & v93;
  v95 = (4 * v93) & 0x56A72C10 ^ 0x4230C04 ^ ((4 * v93) ^ 0x5E3D9450) & v93;
  v96 = (16 * v94) & 0x56A72C10 ^ v94 ^ ((16 * v94) ^ 0x4230C040) & v95;
  v97 = (16 * v95) & 0x56A72C00 ^ 0x14852C14 ^ ((16 * v95) ^ 0x6A72C140) & v95;
  v98 = v96 ^ (v96 << 8) & 0x56A72C00 ^ ((v96 << 8) ^ 0x30C0400) & v97 ^ 0x12A02410;
  v99 = v81 ^ (-162197221 * *(a71 + 4 * (a55 ^ (v76 + 1051195069) ^ (2 * ((v98 << 16) & 0x56A70000 ^ v98 ^ ((v98 << 16) ^ 0x2C140000) & ((v97 << 8) & 0x56A70000 ^ 0x50830000 ^ ((v97 << 8) ^ 0x272C0000) & v97))) ^ 0x6891EC29u)) + 101936050) ^ (2 * v90);
  v100 = ((v99 ^ 0x82CB6FE4) - 109076643) ^ ((v99 ^ 0xE4173785) - 1616656578) ^ ((v99 ^ 0x11F8D9E8) + 1783376209);
  v101 = (a7 ^ 0x7F73FFBA6F74FFFFLL) + 2 * a7;
  v102 = v101 - 0x7F73FFBA6F75003ALL;
  v103 = STACK[0x220];
  v104 = (STACK[0x220] + 4 * v101 + 0x2300116422C0004);
  v105 = STACK[0x218];
  if (v102 < 0xFFFFFFFFFFFFFFC5)
  {
    v104 = (STACK[0x218] + 4 * v102);
  }

  *(a70 + 4 * (a8 & 0x1F)) -= (-102575295 * (v100 - (((*v104 ^ 0x8D11F2D6) + 1928203562) ^ ((*v104 ^ 0xCCD0C3DF) + 858733601) ^ ((*v104 ^ 0x62D33307) - 1658008327))) + 71498944) ^ 0x914CEBF;
  v106 = *(STACK[0x200] + 4 * ((a64 + v76) & 0x1F));
  v107 = ((v106 ^ 0x86824121) + 2038283999) ^ ((v106 ^ 0x8BF805D4) + 1946679852) ^ ((v106 ^ 0x77A3F464) - 2007233636);
  v108 = STACK[0x210];
  v109 = -1575070668 * (*(a71 + 4 * (v77 & 0x1F)) - 95260618) * *(STACK[0x210] + 4 * ((a62 + v76) & 0x1F)) + 999001243 * ((v100 + 1478679154) * (v107 + 2061086865) - 1689471908 * v107) + 121933753;
  v110 = (*(a70 + 4 * (v78 & 0x1F)) - 2024337095) % 0x1Bu;
  if (v110)
  {
    v109 = (v109 >> v110) ^ (v109 << -v110);
  }

  *(v108 + 4 * (v74 & 0x1F)) = v109;
  v111 = (v75 ^ 0x7FFF77B5FFEDBDFFLL) + 2 * v75;
  v112 = v111 - 0x7FFF77B5FFEDBE07;
  v113 = (a69 + 4 * v111 + 0x2212800490804);
  if (v112 < 0xFFFFFFFFFFFFFFF8)
  {
    v113 = (a68 + 4 * v112);
  }

  v114 = (-102575295 * (*(a71 + 4 * ((a60 + v76) & 0x1F)) - (((*v113 ^ 0x384540EE) - 944062702) ^ ((*v113 ^ 0x1EF87BD3) - 519601107) ^ ((*v113 ^ 0xB444313) - 189022995)) + v109) - 166358520) ^ v109;
  v115 = ((v114 ^ 0x628EC2F7) - 1056390942) ^ ((v114 ^ 0x58AEB506) - 81217775) ^ ((v114 ^ 0x3334B94E) - 1867334823);
  *(v108 + 4 * (v71 & 0x1F)) = *(v108 + 4 * (v71 & 0x1F)) - 113 * (v115 - 1604281169) + 359759945;
  v116 = ((2 * (v91 | 0x8116A620)) ^ 0x22D6840) & (v80 ^ 0x404EAF63) ^ (v91 | 0x8116A620);
  v117 = (2 * (v80 ^ 0x404EAF63)) & 0x1128220 ^ 0x1128220 ^ ((2 * (v80 ^ 0x404EAF63)) ^ 0x22D6840) & (v80 ^ 0x404EAF63);
  v118 = (4 * v116) & 0x81128620 ^ v116 ^ ((4 * v116) ^ 0x45ABC80) & v117;
  v119 = (4 * v117) & 0x8116A620 ^ 0x81042620 ^ ((4 * v117) ^ 0x45ABC80) & v117;
  v120 = (16 * v118) & 0x8116A620 ^ v118 ^ ((16 * v118) ^ 0x10426200) & v119;
  v121 = (16 * v119) & 0x8116A600 ^ 0x80148420 ^ ((16 * v119) ^ 0x116A6200) & v119;
  v122 = v120 ^ (v120 << 8) & 0x8116A600 ^ ((v120 << 8) ^ 0x6042000) & v121 ^ 0x148200;
  v123 = (a53 ^ v80 ^ (2 * (((v122 << 16) ^ 0x26200000) & ((v121 << 8) & 0x81160000 ^ 0x1100000 ^ ((v121 << 8) ^ 0x16A60000) & v121) ^ v122 ^ ((v122 << 16) & 0x1160000 | 0x2420))) ^ 0xCFFAB001) + 131;
  v124 = ((2 * (v123 % 0x83)) & 0x1BE) + ((v123 % 0x83) ^ 0xFBF8EE94FDFCBBDFLL);
  v125 = v124 + 0x407116B020343E6;
  v126 = (v103 + 4 * v124 + 0x101C45AC080D1084);
  if (v125 < 0xFFFFFFFFFFFFFFC5)
  {
    v126 = (v105 + 4 * v125);
  }

  *(a70 + 4 * (v78 & 0x1F)) = v115 - 1604281169 - 977280614 * (a66 + v76 + *(v108 + 4 * ((a58 + v76) & 0x1F))) - 1295579277 - (((*v126 ^ 0xFA344967) + 97236633) ^ ((*v126 ^ 0xEC566A24) + 329881052) ^ ((*v126 ^ 0x3570214D) - 896541005)) - 667472759;
  return (*(STACK[0x228] + 8 * (v72 ^ (64868 * (v76 == 31)))))((a1 - 1));
}

uint64_t sub_100649FC4()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v1 + 8 * (v0 - 860)))(v2);
}

uint64_t sub_100649FEC@<X0>(int a1@<W8>)
{
  v2 = a1 & 0x225FBFD5;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * ((a1 & 0x225FBFD5u) + 41256)))();
  *(v1 + 16) = 0;
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_10064A028()
{
  v1 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * (v0 + 371869983));
  return (*(v1 + 8 * (v0 + 371870856)))();
}

uint64_t sub_10064A320()
{
  *(v0 + v1) = *(STACK[0x76C8] + v1);
  *(STACK[0x76C8] + v1) = 0;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10064A3F4()
{
  v4 = STACK[0xE80] + 4;
  v5 = (((*STACK[0xE80] ^ 0xCCCDB18A) + 858934902) ^ ((*STACK[0xE80] ^ 0xA291EB31) + 1567495375) ^ ((((v3 + 32130) | 0x839) ^ 0x7876E96D) + (*STACK[0xE80] ^ 0x87899DAA))) + 784333272;
  v6 = 297845113 * ((((&STACK[0x10000] + 3800) | 0xEF8B4227) - ((&STACK[0x10000] + 3800) | 0x1074BDD8) + 276086232) ^ 0x98B85EB9);
  STACK[0x10EF0] = STACK[0xED0];
  LODWORD(STACK[0x10EFC]) = v6 + 640131140 + v3;
  LODWORD(STACK[0x10EF8]) = v0 - v6 - ((2 * v0) & 0x9B66503A) - 843896803;
  STACK[0x10F18] = STACK[0xEC0];
  STACK[0x10ED8] = STACK[0x530];
  STACK[0x10F08] = &STACK[0xF28] ^ 0x25D7E8DF293FB891;
  STACK[0x10F10] = v4;
  LODWORD(STACK[0x10F00]) = v5 ^ v6;
  LODWORD(STACK[0x10EE0]) = 1619974529 - v6;
  LODWORD(STACK[0x10EE4]) = v2 - v6 - ((2 * v2) & 0xA1E1A6C) + 84872502;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v3 ^ 0xCEF8)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * ((22809 * (LODWORD(STACK[0x10EE8]) == v1)) ^ v3)))(v8);
}

uint64_t sub_10064A628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, unsigned int a16, int a17)
{
  a16 = v20 + 1012831759 * ((((2 * &a13) | 0x50A216B2) - &a13 - 676399961) ^ 0x38C21DD3) + 24760;
  a13 = v18 + 12;
  a14 = &a11;
  a15 = v19;
  (*(v17 + 8 * (v20 + 47220)))(&a13);
  return (*(v17 + 8 * (((a17 == (((v20 + 11221) | 0x82A8) ^ 0xE9D505FB)) * ((2 * v20) ^ 0x9C35)) ^ v20)))(v21);
}

uint64_t sub_10064A770()
{
  v2 = v0 | 0x9600;
  v3 = v1 >= ((v2 - 27294) | 0x110) - 371877179;
  return (*(STACK[0xF18] + 8 * ((v3 | (4 * v3)) ^ v2)))();
}

uint64_t sub_10064A7B4()
{
  v1 = *(*(STACK[0x10F8] - 0x10A99C80114D147FLL) - 0x217E172EFA1E81CLL);
  v2 = STACK[0x24C4];
  v3 = STACK[0x33F0];
  v4 = 155453101 * ((2 * ((&STACK[0x10000] + 3800) & 0x7B417C40) - (&STACK[0x10000] + 3800) - 2067889219) ^ 0x62989872);
  LODWORD(STACK[0x10F04]) = v4 + 2069619737;
  LODWORD(STACK[0x10EF4]) = ((v3 ^ 0x503265B1) - 50938928 + ((v3 << ((v0 - 97) ^ 0xBA)) & 0xFFBFEFEE ^ 0x5F9B248C)) ^ v4;
  LODWORD(STACK[0x10ED8]) = (v2 * (v0 + 40405719) - 1378563772) ^ v4;
  LOWORD(STACK[0x10F00]) = 16376 - 1709 * ((2 * ((&STACK[0x10000] + 3800) & 0x7C40) - (&STACK[0x10000] + 3800) - 31811) ^ 0x9872);
  LODWORD(STACK[0x10EF0]) = v4 ^ 0xE40DFA59;
  LODWORD(STACK[0x10F08]) = v0 - v4 + 1777287293;
  STACK[0x10EE8] = &STACK[0xF28] ^ 0xB2C981EB4C31130FLL;
  STACK[0x10EE0] = &STACK[0x14E4];
  STACK[0x10F10] = v1;
  STACK[0x10EF8] = 0;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 ^ 0xC5F8)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((23285 * (LODWORD(STACK[0x10F0C]) == -371865839)) ^ v0)))(v6);
}

uint64_t sub_10064A980(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = v4 < v5;
  v7 = (((a3 + 1193) | 0x1802) ^ 0xDD11896840961374) + v3;
  v8 = v6 ^ (v7 < (a3 ^ 0xCA33B527uLL));
  v9 = v7 < v4;
  if (!v8)
  {
    v6 = v9;
  }

  return (*(STACK[0xF18] + 8 * ((50793 * v6) ^ a3)))();
}

uint64_t sub_10064A9FC()
{
  v3 = ((~(&STACK[0x10000] + 3800) & 0x5B25C06 | (&STACK[0x10000] + 3800) & 0xFA4DA3F8) ^ 0x34B39122) * v2;
  LODWORD(STACK[0x10EE4]) = v3 ^ 0xF1D0BA36;
  LODWORD(STACK[0x10EE0]) = v3 - 28561 + v0;
  STACK[0x10EE8] = v1;
  STACK[0x10EF0] = &STACK[0x23B8];
  STACK[0x10ED8] = &STACK[0x6868];
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 16346)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (v0 - 27259)))(v5);
}

uint64_t sub_10064AB98()
{
  v0 = STACK[0xF10];
  v1 = 16655 * (STACK[0xF10] ^ 0x8B39);
  v2 = STACK[0xF10] - 32546;
  v3 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * ((4793 * ((v2 ^ 0xA1F3D55B) != v1 - 1052006034)) ^ (v0 - 34003))))();
}

uint64_t sub_10064ADBC()
{
  LODWORD(STACK[0x4F54]) = STACK[0x34CC];
  STACK[0x7690] -= 48;
  return (STACK[0x4208])();
}

uint64_t sub_10064AEA4()
{
  v1 = STACK[0x29F8];
  LODWORD(STACK[0x10ED8]) = v0 + 1603510583 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x5458AA08) + 1415096846) ^ 0xC38398A5) + 12962;
  STACK[0x10EE0] = v1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x8F59)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_10064AFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v51 = ((v40 ^ a7) + a8) ^ v40 ^ ((v40 ^ v44) + v48) ^ (v41 + v49 + (v40 ^ v39)) ^ ((v40 ^ v47) + a2);
  *(v42 + v43 - 1) = ((((v51 ^ v50) - 70) ^ ((v51 ^ 0x77) + 102) ^ ((v51 ^ 0x12) + 1)) + a3) * (v40 + a4) + v40 * v46 + a5;
  return (*(v45 + 8 * (((v43 == 1) * a6) ^ v41)))(1138509414, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_10064B0DC()
{
  *v0 = v1;
  *(v0 + 8) = v3;
  *(v0 + 12) = v3;
  return (*(v4 + 8 * v2))();
}

uint64_t sub_10064B234()
{
  v2 = 1022166737 * ((((2 * (&STACK[0x10000] + 3800)) | 0x89DEA4F8) - (&STACK[0x10000] + 3800) + 990948740) ^ 0x7EFFB3EE);
  LODWORD(STACK[0x10EE0]) = v2 ^ (((v1 + 77156565) & 0xFB6667DE) - 14398) ^ *v0 ^ 0x49A525B7;
  LODWORD(STACK[0x10ED8]) = v1 - v2 - 672158427;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 15474)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((449 * (LOBYTE(STACK[0x10EDC]) != 79)) ^ v1)))(v4);
}

uint64_t sub_10064B34C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x4A5C]) = v2;
  LODWORD(STACK[0x79BC]) = a1;
  return (*(STACK[0xF18] + 8 * ((122 * (a1 == ((109 * (v1 ^ 0x3661)) ^ (v1 - 115425099) & 0x6E19FAF ^ 0x1CB0))) ^ v1)))();
}

uint64_t sub_10064B3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v60 = *(v57 + 40);
  *(v58 - 112) = veorq_s8(**(v57 + 24), xmmword_100F52D60);
  if (a9)
  {
    v61 = v60 == 0;
  }

  else
  {
    v61 = 1;
  }

  v62 = v61;
  v63 = *(v59 + 8 * ((82 * v62) ^ a1));
  LODWORD(STACK[0x2B8]) = -42900;
  return v63(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
}

uint64_t sub_10064B4B4()
{
  *(v0 + 4) = *(*(v1 + 8) + 120 * v3);
  *(v0 + 8) = *(*(v1 + 8) + 120 * v3 + 4);
  *(v0 + 16) = *(*(v1 + 8) + 120 * v3 + 8);
  *v0 = ((v2 + 1447708252) & 0xA9B57BF6 ^ 0x6AA3) + v3;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10064B528()
{
  *(STACK[0x3B58] + 12) = STACK[0x6954];
  v1 = STACK[0xF18];
  STACK[0x1528] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 29925 + v0 + 37956)))();
}

uint64_t sub_10064B584()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4192)))(v0);
  return (*(v2 + 8 * (v1 - 11638)))(v3);
}

uint64_t sub_10064B610()
{
  v2 = *(STACK[0xF18] + 8 * ((124866 * ((v0 + 677390988) < 0x25A17B07)) ^ (v0 - 4477)));
  STACK[0xEB0] = v1;
  return v2();
}

uint64_t sub_10064B6DC()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1F03)))();
}

uint64_t sub_10064B848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, int a61, unint64_t a62)
{
  STACK[0x550] = a62;
  STACK[0x4F0] = 0;
  return (*(STACK[0x430] + 8 * a61))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_10064B898@<X0>(unsigned int a1@<W0>, __int16 a2@<W3>, int a3@<W5>, int a4@<W6>, int a5@<W8>)
{
  v13 = *(v12 + a5 + ((((v6 + 363563816) & 0xEA545D3F) - 22832) & a1) * a3 - ((((a5 + ((((v6 + 363563816) & 0xEA545D3F) - 22832) & a1) * a3) * v8) >> 32) >> 9) * v10) ^ (16 * (*(v12 + a5 + (a1 >> 4) * a3 - ((((a5 + (a1 >> 4) * a3) * v8) >> 32) >> 9) * v10) & 0xF)) ^ v9;
  v14 = a4 + ((*(v5 + (v13 * a2 - (((24295 * v13) >> 16) >> 3) * v7)) >> 4) ^ 2) * a3;
  *(v12 + a1 * a3 + 290191 - ((((a1 * a3 + 290191) * v8) >> 32) >> 9) * v10) = (16 * *(v12 + (v14 - ((v14 * v11) >> 32) * v10))) ^ 0xDF;
  return (*(STACK[0x6A0] + 8 * (((4 * (a1 != 255)) | (8 * (a1 != 255))) ^ v6)))();
}

uint64_t sub_10064B97C()
{
  v3 = v0 | 0x81500010;
  v4 = STACK[0x1890] + 1640 * (v3 + 371901482 + v3 + STACK[0x9850] - ((((v1 - v3) | (v3 - v1)) & 0x80000000) == 0)) + 0x1A3800E9B8F01708;
  LODWORD(STACK[0x10ED8]) = ((v0 | 0x81500010) + 371865840) ^ (906386353 * ((&STACK[0x10000] + 3800) ^ 0x3101CD24));
  STACK[0x10EE8] = v2;
  STACK[0x10EE0] = v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * ((v0 | 0x81500010) + 371918119)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * (v3 ^ 0xE9D5EC25)))(v6);
}

uint64_t sub_10064BB18@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X5>, void *a3@<X6>, uint64_t a4@<X7>, int a5@<W8>)
{
  v14 = ((*(*a3 + (*a2 & v7)) ^ v6) & 0x7FFFFFFF) * v8;
  v15 = (v14 ^ HIWORD(v14)) * v8;
  *(a1 + v5) = *(a4 + (v15 >> 24)) ^ *(v12 + v5) ^ *((v15 >> 24) + v13 + 2) ^ *((v15 >> 24) + v11 + 4) ^ v15 ^ (BYTE3(v15) * v9);
  return (*(STACK[0xF18] + 8 * (((v5 == 0) * v10) ^ a5)))();
}

uint64_t sub_10064BC6C()
{
  v1 = *STACK[0xE50];
  v2 = *STACK[0xE58] >> 2;
  v3 = *(v1 + 4 * ((0x63C2B7F5 % v2) & 0x3FFFFFFC));
  v4 = STACK[0x8B0];
  v5 = *(STACK[0x8B0] - 527405895);
  v6 = *(STACK[0x8B8] + 4 * v5);
  LODWORD(v1) = ((v0 + 28105) ^ 0x4840 ^ *(v1 + 4 * ((v2 - 1) & v3))) & ~HIWORD(v3);
  v7 = v1 == 0;
  v8 = v1 + v1 * v6;
  v9 = v7;
  if (v7)
  {
    v10 = *(STACK[0x8B8] + 4 * v5);
  }

  else
  {
    v10 = 0;
  }

  *(STACK[0x8B8] + 4 * v5) = (v10 + v8) * v6;
  *(v4 - 527405895) = (v5 + 1) % 6u;
  return (*(STACK[0xF18] + 8 * ((14110 * v9) ^ v0)))();
}

uint64_t sub_10064C9D4()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x80BC)))(640) == 0;
  return (*(v1 + 8 * ((v2 * (((v0 - 18959) | 0x540A) ^ 0x5440)) ^ v0)))();
}

uint64_t sub_10064CA30()
{
  v2 = STACK[0x37E0];
  LODWORD(STACK[0x10EEC]) = (v0 + 8551) ^ (17902189 * ((((2 * (&STACK[0x10000] + 3800)) | 0x9B7740BC) - (&STACK[0x10000] + 3800) + 843341730) ^ 0x43F4B64E));
  STACK[0x10ED8] = v2;
  STACK[0x10EE0] = v1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0x5613)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * v0))(v4);
}

uint64_t sub_10064CAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = ((v13 + ((v15 - v12) ^ 0x2D570707) - 760711572) ^ (((v15 - v12) ^ 0xE3D0A504) + 472865532) ^ (((v15 - v12) ^ 0x78104449) - 2014331977)) + (v11 ^ 0xF3A1A647);
  v18 = ((v17 ^ 0x98A6694) - 881009183) ^ v17 ^ ((v17 ^ 0x13166D2) - 1010311769) ^ ((v17 ^ 0x4A4DBB31) - 2001010618) ^ ((v17 ^ 0x7FFFFFFC) - 1123466103);
  v20 = v18 == 1024017547 || (((1759 * (v14 ^ 0x72CA)) ^ 0x8282) & v18) != (v14 ^ 0x72D2);
  return (*(v16 + 8 * ((v20 | (2 * v20)) ^ v14)))(2293956678, 472865532, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_10064CD98()
{
  v1 = STACK[0xF18];
  STACK[0x54B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 ^ 0x199A) + v0)))();
}

uint64_t sub_10064CDE0@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W8>)
{
  v14 = __CFADD__(a4, a1);
  v15 = (((*v13 ^ v6) + v7) ^ ((*v13 ^ v8) + v9) ^ ((*v13 ^ v10) + (((v12 ^ v4) + v5) ^ v11))) + a2;
  v16 = v15 < a1;
  v17 = a4 + a1 < v15;
  if (v14 != v16)
  {
    v17 = v16;
  }

  return (*(STACK[0xF18] + 8 * ((v17 * a3) ^ v12)))();
}

uint64_t sub_10064D1FC()
{
  v6 = STACK[0xED0] + 4;
  v7 = *(v3 + (v1 - 1550052886) % 0x30u);
  v8 = *(v6 + (((((v2 - 47905) | 0x42E0) - 1531980669 + (v7 ^ 0x5B4FE79D)) ^ ((v7 ^ (6 * (v2 ^ 0xB771) + 222361465)) - 222378841) ^ ((v7 ^ 0x560EDC21u) - 1443814433)) + 229) % v0);
  v9 = *(v6 + (v1 + (v8 ^ 0xB3A5DFFA) + ((2 * v8) & 0x1F4) - 269078033) % v0);
  v10 = (((7 - v1) ^ v1 ^ ((v1 ^ 0xD) + 6)) ^ (((v1 ^ 8) + 1) ^ ((v1 ^ 0xD) + 6))) & 0xF ^ 7;
  v11 = (-3 * v10) ^ *(v4 + v10) ^ *(v6 + (v1 - 1550052887) % v0) ^ *(v5 + v10) ^ *(v10 + STACK[0xEC0] + 4) ^ *(v10 + STACK[0xEA0] + 2) ^ v9;
  v12 = (((v11 ^ 0x78) - 108) ^ ((v11 ^ 0xAA) + 66) ^ ((v11 ^ 0xD2) + 58));
  v13 = ((((*(v3 + v11 % 0x30u) ^ 0xCE) + 50) ^ ((*(v3 + v11 % 0x30u) ^ 0xE8) + 24) ^ ((*(v3 + v11 % 0x30u) ^ 0xC3) + 61)) - 47);
  v14 = v12 < 0xEC;
  v15 = v12 > v13;
  if (v13 < 0xEC != v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  return (*(STACK[0xF18] + 8 * ((121 * v16) ^ v2)))();
}

uint64_t sub_10064D4A8@<X0>(uint64_t a1@<X6>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  v16 = v6 + (v7 + 1105134664) * v5 - 129 * ((((v6 + (v7 + 1105134664) * v5) * v11) >> 32) >> 3);
  v17 = ((2 * v16) & 0x1E6) + (v16 ^ (a3 + v15));
  v18 = (v8 + 4 * (v17 - 0x7160FDAFBDDD8870));
  v19 = __CFADD__(v17 - 0x7160FDAFBDDD8870, 125);
  v20 = (a2 + 4 * v17 + 0x3A7C09410889E034);
  if (!v19)
  {
    v20 = v18;
  }

  v21 = v7 ^ ((v7 ^ 0x1A62264F) - 313645952) ^ ((v7 ^ 0xBCE077E7) + 1271690712) ^ ((v7 ^ 0x51EE7B99) - 1497204310) ^ ((v7 ^ 0xFFBFD7FE) + 143906255) ^ 0xD1F0E905;
  v22 = (((v21 ^ 0x3B4FEB58226BF799) - 0x3B4FEB58226BF799) ^ ((v21 ^ 0x726E3214EFE39A44) - 0x726E3214EFE39A44) ^ ((v21 ^ 0x4921D94C14AB7917) - 0x4921D94C14AB7917)) * a1 + 0x23B7C74D50D4CB3DLL;
  v23 = (v22 ^ 0x8F920CC13144C4C1) & (2 * (v22 & 0xAFC2A801396686E9)) ^ v22 & 0xAFC2A801396686E9;
  v24 = ((2 * (v22 ^ 0x9D960CC11349C8C1)) ^ 0x64A94980545E9C50) & (v22 ^ 0x9D960CC11349C8C1) ^ (2 * (v22 ^ 0x9D960CC11349C8C1)) & 0x3254A4C02A2F4E28;
  v25 = v24 ^ 0x1254A4402A214228;
  v26 = (v24 ^ 0x20000000000E0C00) & (4 * v23) ^ v23;
  v27 = ((4 * v25) ^ 0xC9529300A8BD38A0) & v25 ^ (4 * v25) & 0x3254A4C02A2F4E28;
  v28 = (v27 ^ 0x508000282D0820) & (16 * v26) ^ v26;
  v29 = ((16 * (v27 ^ 0x320424C002024608)) ^ 0x254A4C02A2F4E280) & (v27 ^ 0x320424C002024608) ^ (16 * (v27 ^ 0x320424C002024608)) & 0x3254A4C02A2F4E00;
  v30 = (v29 ^ 0x2040040022244200) & (v28 << 8) ^ v28;
  v31 = (((v29 ^ 0x1214A0C0080B0C28) << 8) ^ 0x54A4C02A2F4E2800) & (v29 ^ 0x1214A0C0080B0C28) ^ ((v29 ^ 0x1214A0C0080B0C28) << 8) & 0x3254A4C02A2F4800;
  v32 = v22 ^ (2 * (((v30 ^ 0x3254A4C02A2F4E28 ^ (v31 ^ 0x100480002A0E0000) & (v30 << 16)) << 32) & 0x3254A4C000000000 ^ v30 ^ 0x3254A4C02A2F4E28 ^ (v31 ^ 0x100480002A0E0000) & (v30 << 16) ^ (((v30 ^ 0x3254A4C02A2F4E28 ^ (v31 ^ 0x100480002A0E0000) & (v30 << 16)) << 32) ^ 0x2A2F4E2800000000) & (((v31 ^ 0x225024C000214628) << 16) & 0x3254A4C000000000 ^ 0x121484C000000000 ^ (((v31 ^ 0x225024C000214628) << 16) ^ 0x24C02A2F00000000) & (v31 ^ 0x225024C000214628))));
  LODWORD(v31) = __CFADD__(v32 ^ 0x3F8FC41D90BFEDF4, 0x4A8DEA8869E38C5DLL) - 1;
  v33 = ((v32 ^ 0xC5CDAC619689CB37) - 0x4F307D0B902A5560) ^ ((v32 ^ 0x3F8FC41D90BFEDF4) + 0x4A8DEA8869E38C5DLL);
  v34 = __CFADD__(v32 ^ 0xC5CDAC619689CB37, 0xB0CF82F46FD5AAA0) - 1;
  v32 ^= 0x752181FD6B0E3C7AuLL;
  v19 = __CFADD__(v32, 0x23AF6892525DD3);
  v35 = v33 ^ (v32 + 0x23AF6892525DD3);
  LODWORD(v33) = ((v35 * 0x17uLL) >> 64) + 23 * (v34 ^ v31 ^ (v19 - 1));
  v36 = (((*v20 ^ 0xFF88C72C) + 7813332) ^ ((*v20 ^ 0x90B15C84) + 1867424636) ^ ((*v20 ^ 0x5AA9E7F9) - 1521084409)) + 826794824;
  v37 = __CFADD__(23 * v35, 0x81371D26AAF8F162) + v33 + 2067572897;
  LODWORD(v35) = 26 - (__CFADD__(23 * v35, 0x81371D26AAF8F162) + v33);
  v38 = ((2 * (v35 % 0x17)) & 0x36) + ((v35 % 0x17) ^ 0x5D39C7FEBFF72E7BLL);
  v39 = v38 - 0x5D39C7FEBFF72E7ELL;
  v40 = (v9 + 4 * v38 - 0x74E71FFAFFDCB9ECLL);
  if (v39 < 0xFFFFFFFFFFFFFFFDLL)
  {
    v40 = (v10 + 4 * v39);
  }

  v41 = *v40;
  v42 = 2 * (((v37 - 2067572874) % 0x17u) & 0xFLL) + (((v37 - 2067572874) % 0x17u) ^ 0x7DF7F5BFFBFBA7CFLL);
  v43 = v42 - 0x7DF7F5BFFBFBA7D2;
  v44 = v9 + 4 * v42 + 0x8202900101160C4;
  v19 = __CFADD__(v43, 3);
  v45 = (v10 + 4 * v43);
  if (v19)
  {
    v45 = v44;
  }

  v46 = ((v41 ^ 0x82156B9B) + 2112525413) ^ ((v41 ^ 0x35656036) - 895836214) ^ ((v41 ^ 0xCF5CB042) + 816009150);
  v47 = *v45 & 0x1F ^ 0xFLL;
  v48 = *(v13 + 4 * v47) + 227378239 * v46 + (v36 * (v7 - 148110799) + 71866633 * v7 + 1831919864) * (-2016197615 - v46);
  v49 = ((2 * (11 * v7 - 1629218789 - 129 * ((((11 * v7 - 1629218789) * v11) >> 32) >> 3))) & 0x1FC) + ((11 * v7 - 1629218789 - 129 * ((((11 * v7 - 1629218789) * v11) >> 32) >> 3)) ^ 0x35FDEBD563B7D5FELL);
  v50 = v49 - 0x35FDEBD563B7D67BLL;
  v51 = a2 + 4 * v49 + 0x280850AA7120A808;
  v19 = __CFADD__(v50, 125);
  v52 = (v8 + 4 * v50);
  *(v13 + 4 * v47) = v48 + 1233943505;
  if (v19)
  {
    v53 = v51;
  }

  else
  {
    v53 = v52;
  }

  v54 = 17 * v7 + 114;
  v55 = v54 ^ (31 - 17 * v7) ^ ((v54 ^ 0x1A) + 21);
  v56 = ((v54 ^ 0xFB) + 22) ^ ((v54 ^ 0xF) + 2);
  *(v14 + 4 * ((v55 ^ v56) & 0x1F ^ 0x11u)) = *(v14 + 4 * ((v55 ^ v56) & 0x1F ^ 0x11u)) + 2014252218 * (-v3 - 399369144 * v7 + ((((*v53 ^ 0xEAD9D136) + 354823882) ^ ((*v53 ^ 0x3B29E12A) - 992600362) ^ ((*v53 ^ 0xE4604C4D) + 463451059)) + 1298030601) * (v7 - 148110799)) - 748989140;
  return (*(v12 + 8 * ((50 * (v7 == 148110830)) ^ v4)))();
}

uint64_t sub_10064DCF8@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 256) = v1 - 193924789 * (v2 ^ 0xB6BB3266) + 80849355;
  *(v4 - 248) = STACK[0x5E8];
  *(v4 - 240) = a1;
  v5 = (*(v3 + 8 * (v1 ^ 0x62601B45)))(v4 - 256);
  return (*(v3 + 8 * (v1 - 1650474693)))(v5);
}

uint64_t sub_10064DD6C()
{
  *v0 = v3;
  *(v0 + 8) = v1;
  *(v0 + 12) = v1;
  return (*(STACK[0x430] + 8 * v2))();
}

uint64_t sub_10064DE84@<X0>(int a1@<W8>)
{
  v2 = *(STACK[0x7248] - 0x217E172EFA1E81CLL);
  v3 = 1022166737 * ((((&STACK[0x10000] + 3800) | 0x27E257CD) + (~(&STACK[0x10000] + 3800) | 0xD81DA832)) ^ 0x9DF2B65E);
  LODWORD(STACK[0x10EDC]) = v3 + 14770 + v1;
  STACK[0x10EE0] = &STACK[0x14B8];
  STACK[0x10EE8] = v2;
  LODWORD(STACK[0x10EF0]) = v3 ^ a1 ^ ((a1 ^ 0xB4BD469A) + 302392624) ^ ((a1 ^ 0x6DED13A3) - 883527657) ^ ((a1 ^ 0x7FFFF777) - 649816893) ^ 0xF2A05DA2 ^ (((((v1 - 1084278859) & 0xDABFD875) + ((v1 - 15241) | 0xC148) + 1707812838) ^ a1) + 1498439090);
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 ^ 0x8B7D)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((47 * (LODWORD(STACK[0x10ED8]) == -371865839)) ^ v1)))(v5);
}

uint64_t sub_10064E058()
{
  v1 = v0 - 13905;
  v2 = v0 - 32392;
  LODWORD(STACK[0x10ED8]) = (v0 - 2608) ^ (1603510583 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x59434BB8) + 1497582524) ^ 0xCE987917));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 16406)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (v1 + v2 + 3402)))(v4);
}

uint64_t sub_10064E228@<X0>(uint64_t a1@<X8>)
{
  v3 = a1 + 16 * v2;
  v4 = 0x981390C2FED9246;
  if (*(STACK[0x6258] + 408) != v1 - 2109659513)
  {
    v4 = 0x981390C2FED9247;
  }

  *(v3 + 8) = v4;
  return (*(STACK[0xF18] + 8 * (v1 + 5234)))();
}

uint64_t sub_10064E3F4()
{
  LODWORD(STACK[0x251C]) = v1;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * (v0 - 32490));
  return (*(v2 + 8 * ((v0 - 29371) ^ (v0 - 32490))))();
}

uint64_t sub_10064E440()
{
  v1 = STACK[0xF18];
  STACK[0x76F8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 35988) ^ 0x8084) + v0)))();
}

uint64_t sub_10064E568()
{
  v1 = STACK[0x1F48];
  STACK[0x7AB0] = STACK[0x1F48];
  if (STACK[0x2080])
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  v5 = !v2 && STACK[0x8590] != 0 && STACK[0x9108] != 0;
  return (*(STACK[0xF18] + 8 * ((v5 * (((v0 ^ 0x2138) + 4226) ^ v0 ^ 0x31B6)) | v0)))();
}

uint64_t sub_10064E5D8()
{
  v1 = 1112314453 * ((&STACK[0x10000] + 3800) ^ 0xEF562AD9);
  v2 = (LODWORD(STACK[0x4F3C]) ^ 0x4776F56A) - v1;
  LODWORD(STACK[0x10EE0]) = v1 + v0 - 2086930609;
  LODWORD(STACK[0x10EDC]) = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 50072)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (((LOBYTE(STACK[0x10ED8]) == 116) * (v0 + 33319)) ^ v0)))(v4);
}

uint64_t sub_10064E90C@<X0>(int a1@<W8>)
{
  v6 = v3 + v1 - 374166027;
  LODWORD(STACK[0x3E80]) = v6;
  v7 = ((a1 + 305878814 + v6) | (((a1 + 305878814 + v6) < 0x33CBA83B) << 32)) + 1198314031;
  v8 = STACK[0x6018] - 0x5D1E61E2EC02EADLL;
  v9 = v7 < ((v2 + 1074273581) | 0x20030002u) + 455911648;
  v10 = v7 > v8;
  if (v9 != v8 < ((v2 - 2057385054) & 0x7AA085BF) + 2067297453)
  {
    v10 = v9;
  }

  if (v10)
  {
    v4 = v5;
  }

  LODWORD(STACK[0x250C]) = v4;
  v11 = !v10;
  LOBYTE(STACK[0x605F]) = v11;
  return (*(STACK[0xF18] + 8 * ((206 * v11) ^ v2)))();
}

uint64_t sub_10064EB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0xF18];
  STACK[0x61A0] = *(STACK[0xF18] + 8 * v6);
  return (*(v7 + 8 * (v6 - 23086 + ((v6 + 34797) | 0x49))))(a1, a2, a3, a4, a5, a6, &STACK[0xA237]);
}

uint64_t sub_10064EBE0()
{
  v4 = ((v2 + v0) ^ 0xF7C219D6) & (2 * ((v2 + v0) & 0xE7D35DC7)) ^ (v2 + v0) & 0xE7D35DC7;
  v5 = ((2 * ((v2 + v0) ^ 0xF1E20A56)) ^ 0x2C62AF22) & ((v2 + v0) ^ 0xF1E20A56) ^ (2 * ((v2 + v0) ^ 0xF1E20A56)) & 0x16315790;
  v6 = v5 ^ 0x12115091;
  v7 = (v5 ^ 0x4000700) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0x58C55E44) & v6 ^ (4 * v6) & 0x16315790;
  v9 = (v8 ^ 0x10015600) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x6300191)) ^ 0x63157910) & (v8 ^ 0x6300191) ^ (16 * (v8 ^ 0x6300191)) & 0x16315790;
  v11 = v9 ^ 0x16315791 ^ (v10 ^ 0x2115100) & (v9 << 8);
  v12 = (v2 + v0) ^ (2 * ((v11 << 16) & 0x16310000 ^ v11 ^ ((v11 << 16) ^ 0x57910000) & (((v10 ^ 0x14200681) << 8) & 0x16310000 ^ 0x6200000 ^ (((v10 ^ 0x14200681) << 8) ^ 0x31570000) & (v10 ^ 0x14200681))));
  v13 = (((v1 ^ 0x5FE3150F) - 1608717583) ^ ((v1 ^ 0x89F62852) + 1980356526) ^ ((v1 ^ 0x3FC0FA4C) - 1069611596)) + (((v12 ^ 0x4901D982) + 1337521812) ^ ((v12 ^ 0x339282B3) + 892054947) ^ ((v12 ^ 0x62FF562B) + 1682340155)) - 889150206 > 0xFFFFFFFC;
  return (*(STACK[0xF18] + 8 * (v3 ^ ((2 * v13) | (v13 << 6)))))();
}

uint64_t sub_10064EE74()
{
  v1 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x3BC)))();
}

uint64_t sub_10064F07C()
{
  v2 = STACK[0xF10] + 951739428;
  v3 = STACK[0xF10] - 14827;
  LOBYTE(STACK[0x3F5B]) = v0;
  return (*(STACK[0xF18] + 8 * (((v1 == -371865839) * (v2 ^ 0x38BA935B ^ v2 & 0xC7451AB0 ^ 0xA941)) ^ v3)))();
}

uint64_t sub_10064F168()
{
  v2 = *v1;
  STACK[0x2080] = *v1;
  LODWORD(STACK[0xB92C]) = *(v1 + 8);
  return (*(STACK[0xF18] + 8 * ((((v0 ^ 0xDC1) - 70775 + ((v0 + 1574659333) & 0xA2249F3B)) * (v2 == 0)) ^ v0)))();
}

uint64_t sub_10064F3C8()
{
  v1 = STACK[0xF10] - 22422;
  v2 = (STACK[0xF10] - 1937477708) & 0x737B75D9;
  *(v0 + 8) = -2022256;
  *(v0 + 64) = 0x981390C2FED9246;
  *(v0 + 72) = 0x981390C2FED9246;
  v3 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x43420908));
  *(v0 + 48) = (v3 & 0x7FFFFFFFFFFFFFFFLL ^ 0x7B49658091533B91 ^ v3 & 0x6B673847263EF7E8 ^ 0x261847262CC468) - (v3 & 0x6B673847263EF7E8 ^ 0x261847262CC468);
  return (*(STACK[0xF18] + 8 * (((*(v0 + 16) == 0) * (v2 - 28846)) ^ v1)))();
}

uint64_t sub_10064F4AC()
{
  v2 = STACK[0xF10] + 1365;
  LODWORD(STACK[0x5564]) = v1;
  LODWORD(STACK[0x6ECC]) = v0;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10064F508()
{
  STACK[0x7D80] = v2;
  STACK[0x4878] = v3;
  v4 = STACK[0x7690];
  STACK[0x52B0] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v4 + 32;
  v5 = (327 * (v1 ^ 0x2194u)) ^ ((v1 ^ 0xA80u) + 0x10A99C80114D7443) ^ v0;
  STACK[0x7560] = v5;
  return (*(STACK[0xF18] + 8 * ((987 * (v5 == 0x10A99C80114D1487)) ^ v1)))();
}

uint64_t sub_10064F5E8@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 + 0x5E7C7699BA18DDF8 + ((((v1 + 12002) ^ 0x7569BC9CDDA1A3A1) + (*(v3 + 8) ^ 0x8A964363225EC4FALL)) ^ ((*(v3 + 8) ^ 0xEC833D77F48B4C59) + 0x137CC2880B74B3A7) ^ ((*(v3 + 8) ^ 0xA7E7CA92D44ECB2ALL) + 0x5818356D2BB0EA24 + ((v1 - 1324084683) & 0x4EEBCEB7)));
  v5 = ((a1 - 0x6B183CBCB1F5F3F1) < 0x64B3E216) ^ (v4 < 0x64B3E216);
  v6 = v4 < a1 - 0x6B183CBCB1F5F3F1;
  if (v5)
  {
    v6 = (a1 - 0x6B183CBCB1F5F3F1) < 0x64B3E216;
  }

  return (*(STACK[0xF18] + 8 * ((13 * v6) ^ v1)))();
}

uint64_t sub_10064F7B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 ^ 0x520BD664;
  v3 = ((*(a1 + 8) - v2) | (v2 - *(a1 + 8))) >> (v2 - 67);
  return (*(STACK[0xF18] + 8 * (((8 * (v3 & 1)) & 0xDF | (32 * (v3 & 1))) ^ (v2 - 1376507708 + ((v2 - 1376514882) | 0xC0)))))();
}

uint64_t sub_10064F9F4()
{
  LODWORD(STACK[0x1484]) = v1;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * (v0 - 32512));
  return (*(v2 + 8 * ((15741 * (((v0 - 32512) ^ 0x2E8EFF73u) > 0xC73F7D59)) ^ (v0 - 30314))))();
}

uint64_t sub_10064FB54()
{
  v1 = STACK[0xF18];
  STACK[0x7308] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 - 1310459174) & 0x4E1C7BFB ^ 0x1F76) + v0)))();
}

uint64_t sub_10064FBD4()
{
  v1 = STACK[0xF18];
  STACK[0x9958] = *(STACK[0xF18] + 8 * (v0 - 7265));
  return (*(v1 + 8 * ((((v0 - 7265) ^ 0x726E) - 23276) ^ (v0 - 7265))))();
}

uint64_t sub_10064FC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = STACK[0x4170];
  *(v9 + 392) = v6;
  *(v9 + 396) = STACK[0x5CBC];
  *(v9 + 400) = STACK[0x39A8];
  v10 = STACK[0xED0];
  v11 = (((LODWORD(STACK[0x376C]) ^ 0xDC617EEC) + 597590292) ^ ((LODWORD(STACK[0x376C]) ^ 0x4ED6B704) - 1322694404) ^ ((LODWORD(STACK[0x376C]) ^ 0x7B620EF9) - 2070023929)) - (((v10 ^ 0x7CD0150D) - 2094011661) ^ ((v10 ^ 0x7C9BD0AC) - 2090586284) ^ ((v10 ^ 0xE99E02B0) + 375510743 + (v7 ^ 0x607C))) + 555061812;
  *(v9 + 408) = v11 ^ ((v11 ^ 0x42C05C4A) - 1674956414) ^ ((v11 ^ 0x4BF80316) - 1793954082) ^ ((v11 ^ 0x55F21296) - 1961328802) ^ ((v11 ^ 0x7DDFDFFE) - 1556762058) ^ 0xC8C05525;
  *(v9 + 416) = a1 + (v10 ^ 0xE9D5C711);
  (*(a5 + 48 * v5 + 8))(*(v8 + 53), v9 + 392);
  return (*(STACK[0xF18] + 8 * v7))();
}

uint64_t sub_10064FE34()
{
  v1 = STACK[0xF18];
  v2 = *(STACK[0xF18] + 8 * v0);
  STACK[0xED0] = v2;
  STACK[0x8F00] = v2;
  return (*(v1 + 8 * (v0 + 10397 + (v0 ^ 0xA4C))))();
}

uint64_t sub_10064FF24(uint64_t a1, double a2, __n128 a3, __n128 a4, __n128 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v76 = (v75 + 908);
  v77 = vld1q_dup_f32(v76);
  return (*(STACK[0x430] + 8 * v74))(a1, 13, v77, a3, a4, a5, *&STACK[0x200], a74, a73);
}

uint64_t sub_10064FF7C()
{
  STACK[0x5C50] = 0x3AE1413A0D5C9A46;
  LODWORD(STACK[0x1374]) = -1392242292;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1006500B4()
{
  v1 = STACK[0xF18];
  STACK[0x4CA8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((14924 * ((v0 ^ 0xEDFB3D89) > 0xD7FD9D94)) ^ (v0 - 44749 + v0 + 45018))))();
}

uint64_t sub_1006502D0(double a1, double a2, double a3, double a4, int8x16_t a5, int32x4_t a6, int32x4_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v89 = vaddq_s32(vsubq_s32(veorq_s8(veorq_s8(vaddq_s32(veorq_s8(*(v80 + 4 * v77), *&STACK[0x200]), a77), vaddq_s32(veorq_s8(*(v80 + 4 * v77), a76), a75)), vaddq_s32(veorq_s8(*(v80 + 4 * v77), a5), a6)), *(STACK[0x220] + 4 * v77)), a7);
  *(v80 + 4 * v77) = veorq_s8(veorq_s8(veorq_s8(v89, vaddq_s32(veorq_s8(v89, a8), v81)), veorq_s8(vaddq_s32(veorq_s8(v89, v82), v83), vaddq_s32(veorq_s8(v89, v84), v85))), veorq_s8(vaddq_s32(veorq_s8(v89, v86), v87), v88));
  return (*(v79 + 8 * (((v77 == 28) * (((v78 + 1302475656) & 0xB25DDBC7) + 27055)) ^ v78)))();
}

uint64_t sub_1006504BC()
{
  v2 = STACK[0x6E80];
  v3 = STACK[0x7B38];
  STACK[0x10EE8] = STACK[0x20B8];
  STACK[0x10EF8] = v2;
  STACK[0x10ED8] = v3;
  LODWORD(STACK[0x10EE0]) = v1 - ((&STACK[0x10000] + 3800) ^ 0x77331C9E) * v0 - 619590201;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 ^ 0x24EE8B60)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (v1 ^ (v1 - 619560041) ^ 0x24EECE6C ^ (1795 * (v1 > 0xC69D0546)))))(v5);
}

uint64_t sub_1006505F0()
{
  v1 = STACK[0x1200];
  STACK[0x81A8] = *STACK[0x3BD0];
  STACK[0x97E8] = v1 - ((2 * v1) & 0x130272185FDB248CLL) + 0x981390C2FED9246;
  LODWORD(STACK[0x6974]) = 103711542;
  return (*(STACK[0xF18] + 8 * (v0 - 17796)))();
}

uint64_t sub_100650664()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 16401)))(v2);
}

uint64_t sub_1006506CC@<X0>(int a1@<W8>)
{
  v2 = 0;
  v3 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x20FAB224)) ^ 0x20FAB225;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  STACK[0xBCC0] = 0;
  STACK[0xBCC8] = v1;
  v12 = 16777619 * ((553300517 * v11 + 7) ^ (553300517 * v11)) % 7;
  v13 = 16777619 * ((553300517 * v11 + 6) ^ (553300517 * v11)) % 6;
  v14 = 16777619 * ((553300517 * v11 + 5) ^ (553300517 * v11)) % 5;
  v15 = *(&STACK[0xBCC0] | v12);
  *(&STACK[0xBCC0] | v12) = STACK[0xBCC7];
  v16 = *(&STACK[0xBCC0] | v13);
  *(&STACK[0xBCC0] | v13) = STACK[0xBCC6];
  v17 = *(&STACK[0xBCC0] | v14);
  *(&STACK[0xBCC0] | v14) = STACK[0xBCC5];
  v18 = vdup_n_s32(553300517 * v11);
  v19 = 16777619 * ((553300517 * v11 + 3) ^ (553300517 * v11)) % 3;
  v20.i32[0] = v18.i32[0];
  v20.i32[1] = 553300517 * v11 + 1;
  LOBYTE(STACK[0xBCC7]) = v15;
  v21 = veor_s8(vmul_s32(v20, v18), v18);
  LOBYTE(STACK[0xBCC6]) = v16;
  LOBYTE(STACK[0xBCC5]) = v17;
  v22 = STACK[0xBCC0];
  LOBYTE(STACK[0xBCC0]) = STACK[0xBCC4];
  LOBYTE(STACK[0xBCC4]) = v22;
  v23 = *(&STACK[0xBCC0] | v19);
  *(&STACK[0xBCC0] | v19) = STACK[0xBCC3];
  LOBYTE(STACK[0xBCC3]) = v23;
  v24 = STACK[0xBCC1];
  LOBYTE(STACK[0xBCC2]) = STACK[0xBCC0];
  LOWORD(STACK[0xBCC0]) = v24;
  STACK[0xBCC0] = vmla_s32(v21, STACK[0xBCC0], vdup_n_s32(0x1000193u));
  v25 = STACK[0xBCC8];
  v26 = (553300517 * STACK[0xBCC8]) ^ v11;
  v27 = vdupq_n_s32(v26);
  v28 = xmmword_100BC7620;
  v29 = xmmword_100BC7630;
  v30 = xmmword_100BC7640;
  v31 = xmmword_100BC7650;
  v32.i64[1] = 0xFFFFFF0FFFFFFF0ELL;
  v33.i64[0] = 0x9393939393939393;
  v33.i64[1] = 0x9393939393939393;
  v34.i64[0] = 0x1000000010;
  v34.i64[1] = 0x1000000010;
  do
  {
    v35 = *(v25 + v2);
    v56.val[1] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7690), veorq_s8(v27, vmulq_s32(vaddq_s32(v30, v27), vsubq_s32(v30, v27))));
    v56.val[0] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC76A0), veorq_s8(v27, vmulq_s32(vaddq_s32(v31, v27), vsubq_s32(v31, v27))));
    v56.val[2] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7680), veorq_s8(v27, vmulq_s32(vaddq_s32(v29, v27), vsubq_s32(v29, v27))));
    v56.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7670), v27), vmulq_s32(vaddq_s32(v28, v27), vsubq_s32(v28, v27)));
    *(v25 + v2) = vmulq_s8(vqtbl4q_s8(v56, xmmword_100BC7660), v33);
    v2 += 16;
    v31 = vaddq_s32(v31, v34);
    v30 = vaddq_s32(v30, v34);
    v29 = vaddq_s32(v29, v34);
    v28 = vaddq_s32(v28, v34);
  }

  while (v2 != 576);
  v36 = 0;
  v37 = xmmword_100F52AE0;
  v38 = vdupq_n_s32(v26);
  v39 = xmmword_100F52AF0;
  v40 = v25 + 576;
  v41.i64[0] = 0x800000008;
  v41.i64[1] = 0x800000008;
  v42 = STACK[0x940];
  do
  {
    v32.i64[0] = *(v40 + v36);
    v55.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v32, xmmword_100BC7690), v38), vmulq_s32(vaddq_s32(v37, v38), vsubq_s32(v37, v38)));
    v55.val[0] = veorq_s8(vqtbl1q_s8(v32, xmmword_100BC76A0), veorq_s8(v38, vmulq_s32(vaddq_s32(v39, v38), vsubq_s32(v39, v38))));
    v32 = vqtbl2q_s8(v55, xmmword_100F52AD0);
    *(v40 + v36) = vmul_s8(*v32.i8, 0x9393939393939393);
    v39 = vaddq_s32(v39, v41);
    v37 = vaddq_s32(v37, v41);
    v36 += 8;
  }

  while (v36 != 8);
  v43 = 72;
  do
  {
    v44 = 16777619 * ((v26 + v43) ^ v26) % v43;
    v45 = *(v25 + 8 * v44) ^ *(v25 + 8 * v43);
    *(v25 + 8 * v43) = v45;
    v46 = *(v25 + 8 * v44) ^ v45;
    *(v25 + 8 * v44) = v46;
    *(v25 + 8 * v43) ^= v46;
    v47 = v43-- + 1;
  }

  while (v47 > 2);
  v48 = *(&STACK[0xBCC8] + v12);
  *(&STACK[0xBCC8] + v12) = STACK[0xBCCF];
  LOBYTE(STACK[0xBCCF]) = v48;
  v49 = *(&STACK[0xBCC8] + v13);
  *(&STACK[0xBCC8] + v13) = STACK[0xBCCE];
  LOBYTE(STACK[0xBCCE]) = v49;
  v50 = *(&STACK[0xBCC8] + v14);
  *(&STACK[0xBCC8] + v14) = STACK[0xBCCD];
  LOBYTE(STACK[0xBCCD]) = v50;
  v51 = STACK[0xBCC8];
  LOBYTE(STACK[0xBCC8]) = STACK[0xBCCC];
  LOBYTE(STACK[0xBCCC]) = v51;
  v52 = *(&STACK[0xBCC8] + v19);
  *(&STACK[0xBCC8] + v19) = STACK[0xBCCB];
  LOBYTE(STACK[0xBCCB]) = v52;
  v53 = STACK[0xBCC9];
  LOBYTE(STACK[0xBCCA]) = STACK[0xBCC8];
  LOWORD(STACK[0xBCC8]) = v53;
  STACK[0xBCC8] = vmla_s32(v21, STACK[0xBCC8], vdup_n_s32(0x1000193u));
  *v42 = STACK[0xBCC8] ^ STACK[0xBCC0];
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100650B78()
{
  STACK[0x5C50] = 0x3AE1413A0D5CA2C2;
  LODWORD(STACK[0x1374]) = -607331881;
  return (*(STACK[0xF18] + 8 * ((14830 * (v0 == -34422578)) ^ (v0 + 1621426975))))();
}

uint64_t sub_100650BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0xEA0]) = 0;
  LODWORD(STACK[0xE70]) = 0;
  *(STACK[0x2748] + 8) = -2022256;
  v8 = STACK[0xF18];
  STACK[0x4648] = *(STACK[0xF18] + 8 * v7);
  v9 = *(v8 + 8 * (v7 ^ 0xBD79 ^ (v7 - 191368050) & 0xB68A9FF));
  LODWORD(STACK[0xE60]) = 1;
  return v9(a1, a2, a3, a4, a5, a6, a7, &STACK[0x6954]);
}

uint64_t sub_100650C50()
{
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 16238)))(v1);
  return (*(v3 + 8 * ((((v0 + 8660) ^ 0xADDE) * (v2 == 0)) ^ (v0 - 12511))))(v4);
}

uint64_t sub_100650DBC()
{
  v1 = STACK[0x7EF0];
  v2 = STACK[0x5AA8];
  STACK[0x10ED8] = STACK[0x5F80];
  LODWORD(STACK[0x10EE4]) = v0 - 906386353 * ((2 * ((&STACK[0x10000] + 3800) & 0x6A3F3770) - (&STACK[0x10000] + 3800) + 364955789) ^ 0x24C105A9) - 3443;
  STACK[0x10EE8] = v2;
  STACK[0x10EF0] = v1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0x80A8)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (((LODWORD(STACK[0x10EE0]) == -371865839) * (((12799 * (v0 ^ 0x4BC1)) ^ 0xFFFFCF1D) + ((v0 + 15720) | 0x210))) ^ v0)))(v4);
}

uint64_t sub_100650E94()
{
  v1 = STACK[0x5AC0] + 64;
  v2 = (((LODWORD(STACK[0x5798]) ^ (v0 - 328670153)) + 328650511) ^ ((LODWORD(STACK[0x5798]) ^ 0x3AEDE924) - 988670244) ^ ((LODWORD(STACK[0x5798]) ^ 0x3F511EC4) - 1062280900)) - 302676656;
  v3 = ((v2 ^ 0xE432FCAF) + 533904644) ^ v2 ^ ((v2 ^ 0x658E1BBA) - 1636935145) ^ ((v2 ^ 0x6A1CA4B9) - 1845697258) ^ ((v2 ^ 0xEFBFFDFF) + 341818452);
  LODWORD(STACK[0x5798]) = v3 ^ 0xEDCA7942;
  v4 = STACK[0x1A10];
  v5 = STACK[0xFD8];
  v6 = 1112314453 * ((((&STACK[0x10000] + 3800) | 0x76383FAA) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x89C7C050)) ^ 0x996E1573);
  LODWORD(STACK[0x10EF0]) = v6 + 1599993265 * (((v3 ^ 0xCE5181A3) - 597424353) ^ ((v3 ^ 0x83A9E033) - 1852021105) ^ ((v3 ^ 0x49E7DFC3) + 1540512127)) + 782852994;
  STACK[0x10EF8] = v1;
  STACK[0x10EE8] = v5;
  STACK[0x10EE0] = v4;
  LOWORD(STACK[0x10ED8]) = -28075 * ((((&STACK[0x10000] + 3800) | 0x3FAA) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xC050)) ^ 0x1573) + 3771;
  LODWORD(STACK[0x10EDC]) = (v0 + 679174053) ^ v6;
  v7 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 32310)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * v0))(4219469524, 38630, 295054139, 3999919982, 4294948206, 7379, 57096);
}

uint64_t sub_1006511F4()
{
  v0 = STACK[0xF10] - 19520;
  v1 = STACK[0xF10];
  v2 = STACK[0x43D0];
  *(v2 + 48) = 0x7C855669B36A63E4;
  v3 = *(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFF90A15330));
  *(v2 + 72) = (v3 & 0x7FFFFFFFFFFFFFFFLL ^ 0x26EE718C68DCDF5BLL ^ v3 & 0x8F399D708FE9BECLL ^ (v1 + 0x811885300217569)) - (v3 & 0x8F399D708FE9BECLL ^ (v1 + 0x811885300217569));
  *v2 = -371865839;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100651354@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v18 = ((*(*v12 + (*v11 & v7)) ^ (a3 + v5)) & 0x7FFFFFFF) * v8;
  v19 = ((v18 ^ HIWORD(v18)) * v9) >> 24;
  *(a3 + v5) ^= *(v3 + v5) ^ *(v14 + v19) ^ *(v19 + v17 + 2) ^ *(v19 + v15 + 4) ^ *(v16 + v19) ^ *(v4 + v19) ^ *(v13 + v19) ^ (v19 * v10) ^ (v19 * a1) ^ a2;
  return (*(STACK[0xF18] + 8 * ((120 * (v5 != 15)) ^ v6)))();
}

uint64_t sub_100651450@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v4 = a2 & 0xB1E07FED;
  *(a1 + 16 * v3 + 8) = *(v2 + 8) - ((*(v2 + 8) << (((v4 + 79) | 0xB) ^ 0x3Au)) & 0x130272185FDB248CLL) + 0x981390C2FED9246;
  return (*(STACK[0xF18] + 8 * v4))();
}

uint64_t sub_100651508(uint64_t a1, int a2, int a3, int a4, int a5, unsigned int a6, int a7, uint64_t a8)
{
  v25 = v18 < v9;
  v26 = HIDWORD(v19) + (*(v13 + 4 * ((v12 + a4) ^ v21 ^ 0x9DB47AF3)) ^ v20) * a6 + (*(v8 + 4 * ((v12 + a4) ^ v21 ^ 0x9DB47AF3)) ^ v20) + HIDWORD(a8) + (*(v15 + 4 * ((v12 + a4) ^ v21 ^ 0x9DB47AF3)) ^ v20) * v11;
  *(v8 + 4 * ((((v21 ^ 0x8B91ECA0) + 1953370976) ^ ((v21 ^ 0x73C6A54B) - 1942398283) ^ ((v21 ^ 0x65E314DD) - 1709380829)) - 1649124043)) = v26 - ((2 * v26) & 0x6DBFDC0A) + v20;
  v27 = (((v21 ^ 0x4342210E) - 1128407310) ^ ((v21 ^ 0x8C40E49F) + 1941904225) ^ ((v21 ^ 0x52B698A7) - 1387698343)) - 191203919;
  v28 = ((v27 ^ 0xC28DA9C7) + 1804881475) ^ v27 ^ ((v27 ^ 0xFFAFBE1) - 1495065499) ^ ((v27 ^ 0x647EBEA3) - 848864985) ^ ((v27 ^ v22) + a3);
  v29 = (((v28 ^ a7) + v14) ^ ((v28 ^ a5) + v16) ^ ((v28 ^ a2) + v10)) + v24;
  v30 = v25 ^ (v29 < v9);
  v31 = v29 < v18;
  if (!v30)
  {
    v25 = v31;
  }

  return (*(v17 + 8 * ((v25 * v23) ^ v12)))();
}

uint64_t sub_1006516DC()
{
  *(v2 + 96) = v1;
  *(STACK[0x7B28] + 33) = 1;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10065170C()
{
  v1 = LODWORD(STACK[0x7804]) + LODWORD(STACK[0x4574]) + ((((v0 - 43420) | 0xA410) - 11727) ^ 0x9AB41B02);
  v2 = STACK[0x2A28];
  STACK[0x3378] = STACK[0x2A28];
  LODWORD(STACK[0x1194]) = STACK[0x871C];
  LODWORD(STACK[0x76C0]) = 1699451797;
  STACK[0x83A0] = 0;
  LODWORD(STACK[0x1EA4]) = v1;
  return (*(STACK[0xF18] + 8 * ((60 * (v2 != 0)) ^ v0)))();
}

uint64_t sub_10065182C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  LODWORD(STACK[0x2320]) = a8;
  v9 = LODWORD(STACK[0x28F4]);
  LODWORD(STACK[0x453C]) = v9;
  return (*(STACK[0xF18] + 8 * ((11553 * (v9 == ((v8 + 1705334336) ^ 0x65A56644) + ((v8 + 1705334336) & 0x9A5A97DF) - 371935625)) ^ v8)))(a1, a2, a3, a4, a5, a6, a7, v9);
}

uint64_t sub_1006518EC()
{
  v1 = STACK[0x7F78];
  STACK[0x3098] = STACK[0x7F78] + 336;
  STACK[0x48B8] = v1 + 320;
  v2 = STACK[0x1910];
  LODWORD(STACK[0x10ED8]) = (v0 + 12129) ^ (906386353 * ((2 * ((&STACK[0x10000] + 3800) & 0x238CB410) - (&STACK[0x10000] + 3800) + 1551059946) ^ 0x6D7286CE));
  LOWORD(STACK[0x10EE0]) = 23473 * ((2 * ((&STACK[0x10000] + 3800) & 0xB410) - (&STACK[0x10000] + 3800) + 19434) ^ 0x86CE) + 18316;
  STACK[0x10EE8] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 50925)))(&STACK[0x10ED8]);
  STACK[0x9880] = *(v3 + 8 * v0);
  return (*(v3 + 8 * (v0 ^ 0x4263 ^ (v0 + 20570))))(v4);
}

uint64_t sub_100651D00(uint64_t a1)
{
  STACK[0x87E0] = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0xE9D5C711E9D5C711;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 17564)))(20) == 0;
  return (*(v2 + 8 * ((998 * (((v1 - 1) ^ v3) & 1)) ^ v1)))();
}

uint64_t sub_100651D7C@<X0>(unint64_t a1@<X8>)
{
  v5 = 297845113 * ((&STACK[0x10000] + 3800) ^ 0x77331C9E);
  LODWORD(STACK[0x10EE4]) = (v3 ^ 0x76D4BD3F) + ((2 * v3) & 0xEDA97A7E) + v5 + (((v4 - 6087) | 0x8B09) ^ 0x9FEF743B);
  STACK[0x10ED8] = a1;
  STACK[0x10EE8] = v1;
  LODWORD(STACK[0x10EF0]) = v5 + 35427 + v4;
  STACK[0x10EF8] = v2;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v4 ^ 0xDC5A)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * v4))(v7);
}

uint64_t sub_100651E70()
{
  *(v1 + 12) = 0;
  *(v1 + 16) = 0;
  return (*(STACK[0xF18] + 8 * (((*(v1 + 96) != 0) * ((v0 ^ 0xA09B) - 35626)) | v0)))();
}

uint64_t sub_100651EAC()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x8131)))(48);
  STACK[0x4DF0] = v3 + v0;
  return (*(v2 + 8 * (((v3 != 0) * ((v1 + 16274) ^ 0x8E11 ^ (v1 - 429937786) & 0x19A00DFE)) | v1)))();
}

uint64_t sub_100651F20@<X0>(__int16 a1@<W8>)
{
  LOWORD(STACK[0x1CA2]) = a1 + ((v1 - 1234) | 0x21C) - 3611;
  v2 = STACK[0xF18];
  STACK[0x3F30] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 + 20081)))();
}

uint64_t sub_100651FA0()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 35488)))(24) == 0;
  return (*(v1 + 8 * (((((v0 + 67) ^ v2) & 1) * (((v0 + 287521671) & 0xEEDCBDFD) + 18048)) ^ v0)))();
}

uint64_t sub_100652008()
{
  LODWORD(STACK[0x10EE4]) = v1 - 193924789 * ((((&STACK[0x10000] + 3800) | 0xAF6E3D2E) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x5091C2D0)) ^ 0x19D50F48) - 27540;
  STACK[0x10ED8] = v0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16409)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * (v1 + 8165)))(v3);
}

uint64_t sub_100652094()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 + 3328)))(v2);
}

uint64_t sub_10065211C()
{
  v0 = LODWORD(STACK[0xE70]) + 108274158;
  v1 = *(STACK[0xF18] + 8 * SLODWORD(STACK[0xE70]));
  LODWORD(STACK[0xE80]) = LODWORD(STACK[0xE70]) + 317;
  return v1(6644508, 4294967186, 9924, LODWORD(STACK[0xD00]) ^ 0x6258C4ACu, (v0 + 1822555708), v0 ^ 0x6742212u, 217, 13472);
}

uint64_t sub_1006521CC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x5790]) = v3;
  LODWORD(STACK[0x40F4]) = v2;
  LODWORD(STACK[0x62C4]) = a1;
  v4 = ((((v1 + 4235) | 0x40B) + (LODWORD(STACK[0x4D64]) ^ 0x6A8511AC) - 1787144427) ^ ((LODWORD(STACK[0x4D64]) ^ 0xA7E59E61) + 1478123935) ^ ((LODWORD(STACK[0x4D64]) ^ 0x24B548DC) + (v1 ^ 0xDB4A358D))) + 696313388;
  v5 = v4 < 0x3FAB1F1B;
  v6 = v2 - 815667304 < v4;
  if ((v2 - 815667304) < 0x3FAB1F1B != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((69 * v6) ^ v1)))();
}

uint64_t sub_1006522BC()
{
  v1 = STACK[0xF18];
  STACK[0x9318] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 ^ 0xAEBE) - 27162) ^ v0)))();
}

uint64_t sub_1006522FC()
{
  v2 = v0 - 39;
  v3 = ((v0 + 11125) | 0x2CB1) - 4517;
  v4 = (v1 ^ 0xBD8CE8AD) + 1114838867;
  v5 = (v4 ^ ((v1 ^ 0xF0AC2DD6) + 257151530) ^ ((v3 ^ 0x5B0A51C2) + (v1 ^ 0xA4F5026A))) == 0x1629946F || (v4 ^ ((v1 ^ 0xF0AC2DD6) + 257151530) ^ ((v3 ^ 0x5B0A51C2) + (v1 ^ 0xA4F5026A))) == 371823724;
  v6 = v5;
  v7 = v6 ^ 0x7F;
  if (v5)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  return (*(STACK[0xF18] + 8 * ((60214 * (v7 + v8 == 127)) ^ v2)))();
}

uint64_t sub_100652414(uint64_t a1)
{
  v2 = v1 & 0xEF577F7F;
  *(a1 + 12) = 45;
  *(a1 + 8) = STACK[0x8034];
  v3 = STACK[0x46D0];
  v4 = STACK[0x6F78];
  STACK[0x10EF0] = STACK[0x8B90];
  STACK[0x10EF8] = &STACK[0x8034];
  LODWORD(STACK[0x10EDC]) = v2 - 193924789 * ((((&STACK[0x10000] + 3800) ^ 0x84782858 | 0xA1A0704A) - ((&STACK[0x10000] + 3800) ^ 0x84782858) + (((&STACK[0x10000] + 3800) ^ 0x84782858) & 0x5E5F8FB0)) ^ 0x93636A74) - 11886;
  STACK[0x10F00] = &STACK[0x8D08];
  STACK[0x10EE8] = v4;
  STACK[0x10EE0] = v3;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v2 ^ 0xA50C)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * v2))(v6);
}

uint64_t sub_100652500()
{
  v3 = (((*v1 ^ 0x9A625825) + 1704830939) ^ ((v2 ^ 0xB5B2) + (*v1 ^ 0x7F53925E) - 2136219033) ^ ((*v1 ^ 0xCE40D6A) + (v2 ^ 0xF31BCC1F))) + 208772502;
  v4 = v3 < 0x229BD685;
  v5 = v3 > v0 + 580638341;
  if (v0 > 0xDD64297A != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((30325 * v5) ^ v2)))();
}

uint64_t sub_100652754@<X0>(uint64_t a1@<X8>)
{
  STACK[0x5C60] = STACK[0x6CC8] + 8;
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 - 21533 + ((a1 + 1002828525) & 0xC43A6FFA))))();
}

uint64_t sub_10065284C@<X0>(uint64_t a1@<X8>)
{
  STACK[0x5C50] = (*(a1 + 168) ^ 0x7FE577FF3F5E9EF6) - 0x450436C532020834 + ((((v1 & 0xC4CDDF5D) + 29678) ^ 0x1B6D7) & (2 * *(a1 + 168)));
  LODWORD(STACK[0x1374]) = 918409012;
  return (*(STACK[0xF18] + 8 * (v1 & 0xC4CDDF5D)))();
}

uint64_t sub_1006528C4()
{
  v6 = STACK[0xF18];
  STACK[0x5A20] = *(STACK[0xF18] + 8 * v0);
  STACK[0xB050] = v5;
  STACK[0xB058] = v4;
  v7 = STACK[0xED0];
  LODWORD(STACK[0xB064]) = STACK[0xED0];
  STACK[0x5570] = v3;
  STACK[0x28A8] = v2;
  STACK[0xB068] = (((v7 ^ 0xFFE0F600C892B52ELL) + 0x1F09FF376D4AD2) ^ ((v7 ^ 0xFFD8795562FDA16ELL) + 0x2786AA9D025E92) ^ ((v7 ^ (((v1 + 1657942724) & 0x9D2DFE9B) + 0x388F5543BA16B6)) - 0x388F5543BAD351)) + 0x4005CB4688E92D49;
  LODWORD(STACK[0x21D4]) = (((v7 ^ 0x7C37B909) - 2084026633) ^ ((v7 ^ 0x5783C8B4) - 1468254388) ^ ((v7 ^ 0xC261B6AC) + 1033783636)) - 371865819;
  return (*(v6 + 8 * ((26 * (v4 != 0)) ^ (v1 + 8016))))();
}

uint64_t sub_100652ABC()
{
  v1 = 5 * (STACK[0xF10] ^ 0xAC82);
  v2 = STACK[0xF10] + 3543;
  STACK[0x5F58] = v0;
  return (*(STACK[0xF18] + 8 * (((v1 - 50833) * (v0 == 0)) ^ v2)))();
}

uint64_t sub_100652BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0xF10] - 33893;
  v5 = STACK[0xF10] - 2573;
  v6 = LODWORD(STACK[0x2E74]);
  v7 = STACK[0xF18];
  STACK[0x5FF8] = *(STACK[0xF18] + 8 * v4);
  return (*(v7 + 8 * (v4 ^ 0x9E97 ^ v5)))(a1, a2, a3, a4, v6);
}

uint64_t sub_100652CC0()
{
  STACK[0xEC0] = *(STACK[0xF18] + 8 * SLODWORD(STACK[0xED0]));
  LODWORD(STACK[0xB358]) = STACK[0x44B4];
  return (STACK[0xEC0])(2955830507, 100184775, 1618952173, 3047713222, 1367962904, 3789139483, 1151344349, 4109420000);
}

uint64_t sub_100652F1C()
{
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 + 549998032)))((v1 + v0));
  return (*(v3 + 8 * ((((v2 + 549949145) ^ 0x20C7B9B8) + v2) ^ (7484 * (v2 > 0x61E7217F)))))(v4);
}

uint64_t sub_100652FDC(unint64_t a1)
{
  v7 = STACK[0xF18];
  STACK[0x3228] = *(STACK[0xF18] + 8 * v2);
  STACK[0xF38] = v3;
  STACK[0x30B0] = v6;
  LODWORD(STACK[0x326C]) = v5;
  STACK[0x1BD8] = a1;
  STACK[0x7908] = v1;
  v8 = STACK[0x7690];
  v9 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x1548] = v9;
  STACK[0x9520] = (v9 + 100);
  STACK[0x9650] = (v9 + 116);
  STACK[0x19A0] = (v9 + 132);
  STACK[0x2488] = (v9 + 148);
  STACK[0x7690] = (v4 ^ 0x119u) - 29591 + v8 - 5876;
  if (v3)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  STACK[0x8C40] = 0;
  STACK[0x7330] = 0;
  return (*(v7 + 8 * (((2 * v11) | (4 * v11)) ^ v4)))();
}

uint64_t sub_1006531A8(uint64_t a1, uint64_t a2)
{
  v2 = (((LODWORD(STACK[0xA5A4]) ^ 0x22B03ABD) - 581974717) ^ ((LODWORD(STACK[0xA5A4]) ^ 0x663FB5A9) - 1715451305) ^ ((LODWORD(STACK[0xA5A4]) ^ 0x704D9DD7) - 1884134871)) - 1919401976;
  v3 = (((LODWORD(STACK[0xA5A0]) ^ 0x36378CEA) - 909610218) ^ ((LODWORD(STACK[0xA5A0]) ^ 0x9EDF73F2) + 1629522958) ^ ((LODWORD(STACK[0xA5A0]) ^ 0x413D3809) - 1094531081)) + 1030795191;
  v4 = (((LODWORD(STACK[0xA5A8]) ^ 0x33A89E41) - 866688577) ^ ((LODWORD(STACK[0xA5A8]) ^ 0x29115398) - 689001368) ^ ((LODWORD(STACK[0xA5A8]) ^ 0xF36C0AC8) + 211023160)) + v3 * v2 - 2137165217 * (-930507483 * v3 - 1400149274 * v2) + 1594898750;
  v5 = (v4 ^ 0xD88E6255) & (2 * (v4 & 0xD92F7091)) ^ v4 & 0xD92F7091;
  v6 = ((2 * (v4 ^ 0x7AD2A377)) ^ 0x47FBA7CC) & (v4 ^ 0x7AD2A377) ^ (2 * (v4 ^ 0x7AD2A377)) & 0xA3FDD3E6;
  v7 = v6 ^ 0xA0045022;
  v8 = (v6 ^ 0x1F982C4) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0x8FF74F98) & v7 ^ (4 * v7) & 0xA3FDD3E0;
  v10 = (v9 ^ 0x83F54380) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x20089066)) ^ 0x3FDD3E60) & (v9 ^ 0x20089066) ^ (16 * (v9 ^ 0x20089066)) & 0xA3FDD3E0;
  v12 = v10 ^ 0xA3FDD3E6 ^ (v11 ^ 0x23DD1200) & (v10 << 8);
  return (*(STACK[0xF18] + 8 * ((STACK[0xF10] - 31889) ^ 0x11D5)))(a1, a2, LODWORD(STACK[0x98D4]) ^ v4 ^ (2 * ((v12 << 16) & 0x23FD0000 ^ v12 ^ ((v12 << 16) ^ 0x53E60000) & (((v11 ^ 0x8020C186) << 8) & 0x23FD0000 ^ 0x22C0000 ^ (((v11 ^ 0x8020C186) << 8) ^ 0x7DD30000) & (v11 ^ 0x8020C186)))) ^ 0x3A796E56);
}

uint64_t sub_100653564()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 23341)))(v2);
}

uint64_t sub_1006535C4()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v1 + 8 * (v0 - 23612)))(v2);
}

uint64_t sub_1006536C4()
{
  LODWORD(STACK[0x3A90]) = v1;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 + 2314)))();
}

uint64_t sub_10065373C()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] ^ 0xF816;
  v3 = STACK[0xF10] - 6158;
  v4 = STACK[0xF10] + 165;
  v5 = 17902189 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x4F7F3D00) + 1333738759) ^ 0xC1302B17);
  v6 = (v0 ^ STACK[0xF10] ^ 0xEE0C0F72) + v5;
  STACK[0x10EE8] = &STACK[0x7768];
  LODWORD(STACK[0x10ED8]) = v6;
  LODWORD(STACK[0x10EDC]) = v4 ^ v5;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v1 + 16605)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * (((LODWORD(STACK[0x10EE0]) == -371865839) * (v2 + 34280)) ^ v3)))(v8);
}

uint64_t sub_1006538C0()
{
  v4 = STACK[0xF10] + 1365;
  v5 = STACK[0xF10] + 6768;
  LODWORD(STACK[0x5564]) = v3;
  LODWORD(STACK[0x6ECC]) = v1;
  v6 = *(v0 + 4 * ((0x9ED10ECD % (v2 >> 2)) & 0x3FFFFFFC));
  v7 = *(v0 + 4 * (((v2 >> 2) + v4 + 28527) & v6));
  LODWORD(STACK[0x4C04]) = v3;
  v8 = STACK[0x8B0];
  v9 = *(STACK[0x8B0] - 527405895);
  v10 = *(STACK[0x8B8] + 4 * v9);
  v12 = ~v7 & (~v6 >> 16);
  v11 = v12 == 0;
  v13 = v12 + v12 * v10;
  v14 = v11;
  if (v11)
  {
    v15 = *(STACK[0x8B8] + 4 * v9);
  }

  else
  {
    v15 = 0;
  }

  *(STACK[0x8B8] + 4 * v9) = (v15 + v13) * v10;
  *(v8 - 527405895) = (v9 + 1) % 6u;
  return (*(STACK[0xF18] + 8 * ((28142 * v14) ^ v5)))();
}

uint64_t sub_1006539A0()
{
  v3 = 297845113 * ((((&STACK[0x10000] + 3800) | 0xBB7F5F7F) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x4480A080)) ^ 0xCC4C43E1);
  LODWORD(STACK[0x10F00]) = v0 - v3 + 1563146206;
  STACK[0x10EE0] = &STACK[0x51A4];
  STACK[0x10ED8] = v1;
  STACK[0x10EF8] = 0;
  STACK[0x10EE8] = &STACK[0xF28] ^ 0x387C02B81FFF65DDLL;
  LODWORD(STACK[0x10F04]) = (v2 ^ ((v2 ^ 0x923A866B) + 880928223) ^ ((v2 ^ 0xFB17DA41) + 1571600885) ^ ((v2 ^ 0xFFFFCEFF) + 1497673035) ^ 0xB396186 ^ ((v2 ^ 0xCF9622F8 ^ ((v0 - 11290) | 0x2061)) + 1764584747)) + v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0xF2FA)))(&STACK[0x10ED8]);
  v6 = STACK[0x10EF0];
  LODWORD(STACK[0x3540]) = STACK[0x10EF0];
  return (*(v4 + 8 * ((24316 * (v6 == -371865839)) ^ v0)))(v5);
}

uint64_t sub_100653B1C@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = v3;
  *(*(v4 + 4672) + 12) = v3;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_100653B3C()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100653D48()
{
  v1 = STACK[0xF10] - 32213;
  if (v0 == 950283553)
  {
    v2 = -2022256;
  }

  else
  {
    v2 = -2022255;
  }

  *(STACK[0x3378] + 8) = v2;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100653D8C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xA2F4]) = a1;
  v2 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ (v1 + 16244466) & 0xFF08B389 ^ 0xA11D ^ (13475 * ((v1 - 2128317991) > 0xFE015350)))))();
}

uint64_t sub_100653E18()
{
  v1 = STACK[0xF10] - 25365;
  v2 = *(v0 + 204);
  STACK[0x36F0] = STACK[0x45C8];
  STACK[0x73E8] = v2;
  LODWORD(STACK[0x56B8]) = 744170659;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100653E58()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] ^ 0xC695;
  LODWORD(STACK[0x5E08]) = STACK[0x98D4];
  LODWORD(STACK[0x44D0]) = (((LODWORD(STACK[0x9FF0]) ^ 0xD8C37029) + 658280407) ^ ((LODWORD(STACK[0x9FF0]) ^ (v1 - 142825561)) + 142805675) ^ ((LODWORD(STACK[0x9FF0]) ^ 0xC66A426D) + 966114707)) - (((LODWORD(STACK[0x9FF8]) ^ 0x40FE678B) - 1090414475) ^ ((LODWORD(STACK[0x9FF8]) ^ 0x66970770) - 1721173872) ^ ((LODWORD(STACK[0x9FF8]) ^ 0xCFBCA7EA) + 809719830));
  return (*(STACK[0xF18] + 8 * (v0 - 24874)))();
}

uint64_t sub_100654084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  LODWORD(STACK[0xA5C8]) = STACK[0x98D4];
  return (*(STACK[0xF18] + 8 * (v3 - 29445)))(a1, a2, a3);
}

uint64_t sub_1006541B4()
{
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  *v2 = 0;
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_10065421C()
{
  v0 = (STACK[0xF10] - 2601) | 0x1C40;
  v1 = STACK[0xF10] + 7377;
  STACK[0x9E08] = &STACK[0x64B4];
  if (STACK[0xACB8])
  {
    v2 = LODWORD(STACK[0xACC0]) == -371865839;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  return (*(STACK[0xF18] + 8 * ((v3 * (v0 ^ 0x9D6D)) ^ v1)))();
}

uint64_t sub_1006542D8()
{
  v2 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x20FAB224)) ^ 0x20FAB225;
  v3 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v2 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v2;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  LODWORD(v9) = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  STACK[0xC1A0] = 0;
  STACK[0xC1A8] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC1A0] | v10);
  *(&STACK[0xC1A0] | v10) = 0;
  LOBYTE(STACK[0xC1A7]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC1A0] | v12);
  *(&STACK[0xC1A0] | v12) = STACK[0xC1A6];
  LOBYTE(STACK[0xC1A6]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC1A0] | v14);
  *(&STACK[0xC1A0] | v14) = STACK[0xC1A5];
  LOBYTE(STACK[0xC1A5]) = v15;
  v16 = STACK[0xC1A0];
  LOBYTE(STACK[0xC1A0]) = STACK[0xC1A4];
  LOBYTE(STACK[0xC1A4]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC1A0] | v17);
  *(&STACK[0xC1A0] | v17) = STACK[0xC1A3];
  LOBYTE(STACK[0xC1A3]) = v18;
  v19 = STACK[0xC1A1];
  LOBYTE(STACK[0xC1A2]) = STACK[0xC1A0];
  LOWORD(STACK[0xC1A0]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC1A0] = vmla_s32(v22, STACK[0xC1A0], vdup_n_s32(0x1000193u));
  STACK[0xC1A8] ^= STACK[0xC1A0];
  STACK[0xC1A8] = vmul_s32(vsub_s32(STACK[0xC1A8], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC1AA];
  LOWORD(STACK[0xC1A9]) = STACK[0xC1A8];
  LOBYTE(STACK[0xC1A8]) = v23;
  v24 = (&STACK[0xC1A8] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC1AB];
  LOBYTE(STACK[0xC1AB]) = v19;
  LOBYTE(v24) = STACK[0xC1A8];
  LOBYTE(STACK[0xC1A8]) = STACK[0xC1AC];
  LOBYTE(STACK[0xC1AC]) = v24;
  v25 = (&STACK[0xC1A8] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC1AD];
  LOBYTE(STACK[0xC1AD]) = v24;
  v26 = (&STACK[0xC1A8] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC1AE];
  LOBYTE(STACK[0xC1AE]) = v25;
  v27 = (&STACK[0xC1A8] | v10);
  v28 = *v27;
  *v27 = STACK[0xC1AF];
  LOBYTE(STACK[0xC1AF]) = v28;
  v29 = STACK[0xC1A8];
  v30 = (553300517 * STACK[0xC1A8]) ^ v9;
  for (i = 1; i != 73; ++i)
  {
    v32 = 16777619 * ((v30 + i) ^ v30) % i;
    v33 = *(v29 + 8 * v32) ^ *(v29 + 8 * i);
    *(v29 + 8 * i) = v33;
    v34 = *(v29 + 8 * v32) ^ v33;
    *(v29 + 8 * v32) = v34;
    *(v29 + 8 * i) ^= v34;
  }

  v35 = 0;
  v36 = xmmword_100BC7620;
  v37 = xmmword_100BC7630;
  v38 = xmmword_100BC7640;
  v39 = xmmword_100BC7650;
  v40.i64[0] = 0x9B009B009B009BLL;
  v40.i64[1] = 0x9B009B009B009BLL;
  v41.i64[0] = 0x1000000010;
  v41.i64[1] = 0x1000000010;
  v42 = vdupq_n_s32(v30);
  do
  {
    v43 = *(v29 + v35);
    v44 = vmovl_high_u8(v43);
    v45 = vmovl_u8(*v43.i8);
    v56.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v38, v42), vsubq_s32(v38, v42)), v42), vmull_high_u16(v45, v40));
    v56.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v37, v42), vsubq_s32(v37, v42)), v42), vmull_u16(*v44.i8, 0x9B009B009B009BLL));
    v56.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v39, v42), vsubq_s32(v39, v42)), v42), vmull_u16(*v45.i8, 0x9B009B009B009BLL));
    v56.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v36, v42), vsubq_s32(v36, v42)), v42), vmull_high_u16(v44, v40));
    *(v29 + v35) = vqtbl4q_s8(v56, xmmword_100BC7660);
    v35 += 16;
    v39 = vaddq_s32(v39, v41);
    v38 = vaddq_s32(v38, v41);
    v37 = vaddq_s32(v37, v41);
    v36 = vaddq_s32(v36, v41);
  }

  while (v35 != 576);
  v46 = 0;
  v47 = xmmword_100F52AE0;
  v48 = xmmword_100F52AF0;
  v49 = vdupq_n_s32(v30);
  v50 = v29 + 576;
  v51.i64[0] = 0x9B009B009B009BLL;
  v51.i64[1] = 0x9B009B009B009BLL;
  v52.i64[0] = 0x800000008;
  v52.i64[1] = 0x800000008;
  do
  {
    v53 = vmovl_u8(*(v50 + v46));
    v55.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v47, v49), vsubq_s32(v47, v49)), v49), vmull_high_u16(v53, v51));
    v55.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v48, v49), vsubq_s32(v48, v49)), v49), vmull_u16(*v53.i8, 0x9B009B009B009BLL));
    *(v50 + v46) = vqtbl2q_s8(v55, xmmword_100F52AD0).u64[0];
    v48 = vaddq_s32(v48, v52);
    v47 = vaddq_s32(v47, v52);
    v46 += 8;
  }

  while (v46 != 8);
  *STACK[0x940] = STACK[0xC1A8];
  return (*(STACK[0xF18] + 8 * (v1 - 23332)))(v47, v48);
}

uint64_t sub_10065476C()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16238)))();
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_100654790@<X0>(uint64_t a1@<X8>)
{
  v3 = 0;
  v4 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x64E5AD20)) ^ 0x64E5AD20;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  v12 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v11;
  STACK[0xBDD0] = 0;
  v13 = 16777619 * (((1692773664 * v12) | 7) ^ (1692773664 * v12)) % 7;
  v14 = 16777619 * (((1692773664 * v12) | 6) ^ (1692773664 * v12)) % 6;
  v15 = 16777619 * (((1692773664 * v12) | 5) ^ (1692773664 * v12)) % 5;
  v16 = *(&STACK[0xBDD0] | v13);
  *(&STACK[0xBDD0] | v13) = STACK[0xBDD7];
  v17 = *(&STACK[0xBDD0] | v14);
  *(&STACK[0xBDD0] | v14) = STACK[0xBDD6];
  v18 = *(&STACK[0xBDD0] | v15);
  *(&STACK[0xBDD0] | v15) = STACK[0xBDD5];
  v19 = (v1 - 23240) | 0x3954;
  STACK[0xBDD8] = v2 - 0x43D8CBFA0CEB42D4;
  v20 = 16777619 * (((1692773664 * v12) | 3) ^ (1692773664 * v12)) % 3;
  v21 = vdup_n_s32(1692773664 * v12);
  v22.i32[0] = v21.i32[0];
  v22.i32[1] = (1692773664 * v12) | 1;
  LOBYTE(STACK[0xBDD7]) = v16;
  v23 = veor_s8(vmul_s32(v22, v21), v21);
  LOBYTE(STACK[0xBDD6]) = v17;
  LOBYTE(STACK[0xBDD5]) = v18;
  v24 = STACK[0xBDD0];
  LOBYTE(STACK[0xBDD0]) = STACK[0xBDD4];
  LOBYTE(STACK[0xBDD4]) = v24;
  v25 = *(&STACK[0xBDD0] | v20);
  *(&STACK[0xBDD0] | v20) = STACK[0xBDD3];
  LOBYTE(STACK[0xBDD3]) = v25;
  v26 = STACK[0xBDD1];
  LOBYTE(STACK[0xBDD2]) = STACK[0xBDD0];
  LOWORD(STACK[0xBDD0]) = v26;
  STACK[0xBDD0] = vmla_s32(v23, STACK[0xBDD0], vdup_n_s32(0x1000193u));
  v27 = STACK[0xBDD8];
  v28 = (1692773664 * STACK[0xBDD8]) ^ v12;
  v29 = vdupq_n_s32(v28);
  v30 = xmmword_100BC7620;
  v31 = xmmword_100BC7630;
  v32 = xmmword_100BC7640;
  v33 = xmmword_100BC7650;
  v34.i64[0] = 0x9393939393939393;
  v34.i64[1] = 0x9393939393939393;
  v35.i64[0] = 0x1000000010;
  v35.i64[1] = 0x1000000010;
  do
  {
    v36 = *(v27 + v3);
    v49.val[1] = veorq_s8(vqtbl1q_s8(v36, xmmword_100BC7690), veorq_s8(v29, vmulq_s32(vaddq_s32(v32, v29), vsubq_s32(v32, v29))));
    v49.val[0] = veorq_s8(vqtbl1q_s8(v36, xmmword_100BC76A0), veorq_s8(v29, vmulq_s32(vaddq_s32(v33, v29), vsubq_s32(v33, v29))));
    v49.val[2] = veorq_s8(vqtbl1q_s8(v36, xmmword_100BC7680), veorq_s8(v29, vmulq_s32(vaddq_s32(v31, v29), vsubq_s32(v31, v29))));
    v49.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v36, xmmword_100BC7670), v29), vmulq_s32(vaddq_s32(v30, v29), vsubq_s32(v30, v29)));
    *(v27 + v3) = vmulq_s8(vqtbl4q_s8(v49, xmmword_100BC7660), v34);
    v3 += 16;
    v33 = vaddq_s32(v33, v35);
    v32 = vaddq_s32(v32, v35);
    v31 = vaddq_s32(v31, v35);
    v30 = vaddq_s32(v30, v35);
  }

  while (v3 != 96);
  v37 = 11;
  do
  {
    v38 = 16777619 * ((v28 + v37) ^ v28) % v37;
    v39 = *(v27 + 8 * v38) ^ *(v27 + 8 * v37);
    *(v27 + 8 * v37) = v39;
    v40 = *(v27 + 8 * v38) ^ v39;
    *(v27 + 8 * v38) = v40;
    *(v27 + 8 * v37) ^= v40;
    v41 = v37-- + 1;
  }

  while (v41 > 2);
  v42 = *(&STACK[0xBDD8] + v13);
  *(&STACK[0xBDD8] + v13) = STACK[0xBDDF];
  LOBYTE(STACK[0xBDDF]) = v42;
  v43 = *(&STACK[0xBDD8] + v14);
  *(&STACK[0xBDD8] + v14) = STACK[0xBDDE];
  LOBYTE(STACK[0xBDDE]) = v43;
  v44 = *(&STACK[0xBDD8] + v15);
  *(&STACK[0xBDD8] + v15) = STACK[0xBDDD];
  LOBYTE(STACK[0xBDDD]) = v44;
  v45 = STACK[0xBDD8];
  LOBYTE(STACK[0xBDD8]) = STACK[0xBDDC];
  LOBYTE(STACK[0xBDDC]) = v45;
  v46 = *(&STACK[0xBDD8] + v20);
  *(&STACK[0xBDD8] + v20) = STACK[0xBDDB];
  LOBYTE(STACK[0xBDDB]) = v46;
  v47 = STACK[0xBDD9];
  LOBYTE(STACK[0xBDDA]) = STACK[0xBDD8];
  LOWORD(STACK[0xBDD8]) = v47;
  STACK[0xBDD8] = vmla_s32(v23, STACK[0xBDD8], vdup_n_s32(0x1000193u));
  STACK[0x8238] = (STACK[0xBDD8] ^ STACK[0xBDD0]) + a1;
  return (*(STACK[0xF18] + 8 * v19))();
}

uint64_t sub_100654C60()
{
  v2 = STACK[0xF10] ^ 0x29A8;
  v3 = STACK[0xF10] + 6791;
  *(STACK[0x1A98] + 696) = v0;
  v4 = LODWORD(STACK[0xA920]) + 4;
  LODWORD(STACK[0x9AB0]) = v4;
  v5 = v4 + 8448452 + (((v1 ^ 0xF7C665C3) - 649564147) ^ ((v1 ^ 0x9FCDEB8) + 661834616) ^ ((v1 ^ 0xC69E965A) + v2 - 401612541));
  v6 = (((LODWORD(STACK[0x3834]) ^ 0x27389D9E) - 658021790) ^ ((LODWORD(STACK[0x3834]) ^ 0xC73CD977) + 952313481) ^ ((LODWORD(STACK[0x3834]) ^ 0x9D183F8) - 164725752)) + 8448452;
  v7 = v5 < 0x16AB22B3;
  v8 = v5 > v6;
  if (v7 != v6 < 0x16AB22B3)
  {
    v8 = v7;
  }

  return (*(STACK[0xF18] + 8 * ((41 * !v8) ^ v3)))();
}

uint64_t sub_100654DA4()
{
  v1 = STACK[0xF10] + 8976;
  v2 = STACK[0xF10] + 9008;
  STACK[0x8A48] = STACK[0xEA0];
  LODWORD(STACK[0x6B14]) = STACK[0xE90];
  STACK[0x6FE8] = STACK[0xEB0];
  LODWORD(STACK[0x15B4]) = STACK[0xEC0];
  v3 = LODWORD(STACK[0x44D0]) * (v0 - 1548484898) - 1143377435;
  v4 = v3 ^ LODWORD(STACK[0x5E08]) ^ ((v3 ^ 0x2B6A65AA) + 1867312049) ^ ((v3 ^ 0xB9399BEA) + (v1 ^ 0xFD1FBBBA)) ^ ((v3 ^ 0xF675705B) - 1303118270) ^ ((v3 ^ 0xDFFFFFFE) - 1680248347) ^ 0x520CB6F4;
  LODWORD(STACK[0x3E80]) += 4;
  v5 = LOBYTE(STACK[0x605F]);
  LODWORD(STACK[0x484C]) = v4;
  return (*(STACK[0xF18] + 8 * ((5714 * v5) ^ v2)))();
}

uint64_t sub_100654ECC()
{
  v1 = STACK[0x88B8];
  STACK[0x6BD0] = STACK[0x2DC0] + 48;
  STACK[0x8D98] = v1;
  STACK[0x6118] = 0;
  return (*(STACK[0xF18] + 8 * (((v1 != 0) * ((v0 - 1041499619) & 0x3E13CF3B ^ 0x8B29)) ^ v0)))();
}

uint64_t sub_100654F74@<X0>(uint64_t a1@<X8>)
{
  v5 = *(a1 + v4) - ((2 * *(a1 + v4)) & 0x22);
  v6 = *(v1 + v4) - ((2 * *(v1 + v4)) & 0x98);
  v7 = v2 == (((v3 + 25237) | 0x4801) ^ 0x77763A);
  v8 = ((((v6 + 60256) << 48) - 0x14000000000000) ^ 0x1430E18B82E2F240) & ((((v5 + 58) << 56) - 0x2900000000000000) ^ 0x4230E18B82E2F240) ^ (((v6 + 60256) << 48) - 0x14000000000000) & 0xACCF000000000000;
  v9 = 0xC82B9AF80967B0DCLL;
  if (v2 == (((v3 + 25237) | 0x4801) ^ 0x77763A))
  {
    v9 = 0xC82B9AF90967B0DCLL;
  }

  v10 = ((v8 ^ 0x31A700905009CLL) & v9 | v8 & 0x37D4610082804200) ^ 0x5B997307CA9322DDLL;
  v11 = *(STACK[0x720] - 830459327);
  *(STACK[0x720] - 830459327) = v11 + 1;
  v12 = v11 & 0xD0 ^ 0xB2;
  v13 = ((2 * (v11 ^ 0x62)) ^ 0x64) & (v11 ^ 0x62) ^ (2 * (v11 ^ 0x62)) & 0xB2;
  v14 = (v11 ^ (2 * ((v13 ^ 0x20) & (4 * (v13 ^ 0x92)) & (16 * ((4 * v12) & 0x80 ^ v12 ^ (v13 ^ 0x92) & ((4 * v12) ^ 0xC8))) ^ (4 * v12) & 0x80 ^ v12 ^ (v13 ^ 0x92) & ((4 * v12) ^ 0xC8)))) & 0x3F ^ 0x34;
  v15 = 8 * v14;
  v16 = (STACK[0x718] + v15);
  v17 = v15 + STACK[0x728] - 296;
  if (v14 <= 0x24)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  *v18 = v10;
  return (*(STACK[0xF18] + 8 * ((v7 | (32 * v7)) ^ v3)))();
}

uint64_t sub_1006551F4()
{
  v1 = v0 - 32308;
  v2 = STACK[0xF18];
  STACK[0x22B8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 163520))();
}

uint64_t sub_1006554F4()
{
  LODWORD(STACK[0x229C]) = -371865711;
  v1 = STACK[0x2818];
  v2 = STACK[0x6500];
  v3 = STACK[0x3670];
  v4 = 155453101 * ((2 * ((&STACK[0x10000] + 3800) & 0x110F0C60) - (&STACK[0x10000] + 3800) - 286198882) ^ 0x8D6E851);
  LODWORD(STACK[0x10EE0]) = LODWORD(STACK[0x2208]) - v4;
  STACK[0x10EF0] = 0;
  STACK[0x10EE8] = v3;
  STACK[0x10EF8] = &STACK[0x229C];
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10F18]) = v4 + v0 + 16424;
  STACK[0x10F08] = v2;
  STACK[0x10F10] = v1;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 ^ 0xAD9A)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * (((LODWORD(STACK[0x10F00]) == -371865839) * (v0 + 32134 + ((v0 - 22815) | 0x40A))) ^ v0)))(v6);
}

uint64_t sub_100655650()
{
  v0 = (STACK[0xF10] - 34106) | 0x2118;
  v1 = STACK[0xF10] - 31906;
  v2 = STACK[0xF18];
  STACK[0x80E8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x3D7B ^ v0)))();
}

uint64_t sub_1006556B4()
{
  v3 = *(v1 + 64);
  v4 = ((v2 + 4227) | 0x232) + 409688169 + (((v0 ^ 0xC55C6808) + 983799800) ^ ((v0 ^ 0x4488FF3D) - 1149828925) ^ ((v0 ^ 0x68014E37 ^ (v2 + 4227) ^ 0x971A) - 1744916516));
  v5 = (v3 > 0xD169E36C) ^ (v4 < 0x2E961C93);
  v6 = v3 + 781589651 > v4;
  if (v5)
  {
    v6 = v3 > 0xD169E36C;
  }

  return (*(STACK[0xF18] + 8 * ((62201 * v6) ^ v2)))();
}

uint64_t sub_100655844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2 - 1;
  v15 = *(*v13 + (*v12 & v5));
  v16 = ((((v15 ^ (v3 + v14)) & 0x7FFFFFFF) * v6) ^ ((((v15 ^ (v3 + v14)) & 0x7FFFFFFFu) * v6) >> 16)) * v6;
  v17 = v16 >> ((v2 + v4) ^ v7);
  v18 = ((((v15 ^ (a1 + v14)) & 0x7FFFFFFF) * v6) ^ ((((v15 ^ (a1 + v14)) & 0x7FFFFFFFu) * v6) >> 16)) * v6;
  *(a1 + v14) = *(v10 + v17) ^ *(v3 + v14) ^ *(v11 + v17) ^ *(v9 + v17) ^ *(v10 + (v18 >> 24)) ^ *(v11 + (v18 >> 24)) ^ *(v9 + (v18 >> 24)) ^ v16 ^ v18 ^ (5 * v17) ^ (5 * BYTE3(v18));
  return (*(STACK[0xF18] + 8 * (((v14 != 0) * v8) ^ v2)))();
}

uint64_t sub_1006559BC()
{
  v1 = *(STACK[0x2DC0] + 24);
  STACK[0x4F90] = STACK[0x88B8];
  LODWORD(STACK[0x22E8]) = v0 + 28297 + v1 - ((2 * v1) & 0xD3AB8E22) - 371900729;
  LODWORD(STACK[0x35EC]) = 1693393274;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100655A18@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v8 = ((*(*STACK[0xE50] + (*STACK[0xE58] & v4)) ^ (v2 + a2)) & 0x7FFFFFFF) * v5;
  v9 = (v8 ^ HIWORD(v8)) * v5;
  *(v2 + a2) = *((v9 >> 24) + STACK[0x9A8] + 2) ^ *(STACK[0x9B8] + (v9 >> 24)) ^ *((v9 >> 24) + a1 + 4) ^ v9 ^ (BYTE3(v9) * v6);
  return (*(STACK[0xF18] + 8 * (((a2 == 15) * v7) ^ v3)))();
}

uint64_t sub_100655AA4@<X0>(int a1@<W8>)
{
  v6 = STACK[0xF18];
  STACK[0x7348] = *(STACK[0xF18] + 8 * a1);
  STACK[0x4DA8] = v1;
  STACK[0x61E0] = v4;
  STACK[0x7FD0] = v3;
  STACK[0x7A50] = v5;
  LODWORD(STACK[0x3E00]) = -371865839;
  if (v1)
  {
    v7 = v3 == 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = v7 || v5 == 0;
  return (*(v6 + 8 * ((v9 * ((v2 ^ 0x5BDC) - 36040 + ((v2 + 12624) | 0x109))) ^ v2)))();
}

uint64_t sub_100655B24(uint64_t a1, uint64_t a2)
{
  v3 = 562 * (v2 ^ 0x256A);
  v4 = a2 - 0x175B149339C859CCLL <= (v3 + 5) - 38782;
  return (*(STACK[0xF18] + 8 * (((((v3 - 1888854316) ^ v4) & 1) == 0) | (4 * ((((v3 - 1888854316) ^ v4) & 1) == 0)) | v3)))((v3 - 1888854316) & 0x7095BDBF);
}

uint64_t sub_100655BF4@<X0>(int a1@<W8>)
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = 806554055;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100655C60()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 33734;
  LODWORD(STACK[0xA328]) = LODWORD(STACK[0xB108]) + 1678866135;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 - 29776)))();
}

uint64_t sub_100655D08@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0xF18];
  STACK[0x54B0] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 - 10939 + a1 + 16609)))();
}

uint64_t sub_100655D4C@<X0>(uint64_t a1@<X8>)
{
  v3 = (((v1 ^ 0xCA14E23) - 211945130 + ((v2 + 2080234196) & 0x8402BDDF)) ^ ((v1 ^ 0x8C86878A) + 1937340534) ^ (((11881 * (v2 ^ 0x1FD0) + 1777435517) ^ v1) - 1777471160)) + 552856057;
  *(a1 + 192) = v3 ^ ((v3 ^ 0x65358B1E) - 1378593250) ^ ((v3 ^ 0x908B89F0) + 1483363572) ^ ((v3 ^ 0x3D5BDFAD) - 172358993) ^ ((v3 ^ 0xFFFBFFBF) + 924459709) ^ 0xDECBE5ED;
  v4 = STACK[0x1E30];
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v2 ^ 0xD54B)))(*(STACK[0x1E30] + 192) ^ 0xE9D5C711);
  *(v4 + 184) = v6;
  return (*(v5 + 8 * ((16341 * (v6 == 0)) ^ v2)))();
}

uint64_t sub_100655F04()
{
  v2 = ((((5 * ((v1 - 5197) ^ 0x56B7)) ^ 0xC01C3BB0) + (*(v0 + 292) ^ 0x3FE3EE96)) ^ ((*(v0 + 292) ^ 0x23E2E56D) - 602072429) ^ (((v1 - 628990775) & 0x257DBBFF ^ 0xA2BB82D) + (*(v0 + 292) ^ 0xF5D4CCEA))) + 601719070;
  v3 = (((LODWORD(STACK[0x14B8]) ^ 0xB5047D33) + 1257997005) ^ ((LODWORD(STACK[0x14B8]) ^ 0xD38BC4BA) + 745814854) ^ ((LODWORD(STACK[0x14B8]) ^ 0x8F5A7E98) + 1889894760)) + 601719070;
  v4 = (v2 < 0x3A07BA0D) ^ (v3 < 0x3A07BA0D);
  v5 = v2 < v3;
  if (v4)
  {
    v5 = v3 < 0x3A07BA0D;
  }

  return (*(STACK[0xF18] + 8 * ((v5 | (16 * v5)) ^ (v1 - 5197))))();
}

uint64_t sub_100656038@<X0>(int a1@<W8>)
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = 474718961;
  return (*(STACK[0xF18] + 8 * ((7273 * (a1 != ((a1 - 918458909) | 0x8A20) - 1931473851)) ^ (a1 - 918457023))))();
}

uint64_t sub_1006560D0()
{
  v1 = STACK[0xF18];
  STACK[0x3F60] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x5D0C)))();
}

uint64_t sub_1006560FC()
{
  v4 = STACK[0x10F4];
  LODWORD(STACK[0xB330]) = v1;
  LODWORD(STACK[0xB32C]) = v2;
  LODWORD(STACK[0xB328]) = v4;
  return (*(STACK[0xF18] + 8 * (((v3 == -371865839) * (v0 - 1948744375 + v0 - 4756 + 1948762248)) ^ v0)))();
}

uint64_t sub_1006561B4@<X0>(_DWORD *a1@<X4>, void *a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v13 = ((*(*a2 + (*a1 & v8)) ^ v6) & 0x7FFFFFFF) * v9;
  v14 = (v13 ^ HIWORD(v13)) * v9;
  *(v12 + v7) = *(v11 + (v14 >> 24)) ^ *(a5 + v7) ^ *((v14 >> 24) + a3 + 2) ^ *(a4 + (v14 >> 24)) ^ v14 ^ (-9 * BYTE3(v14));
  return (*(STACK[0xF18] + 8 * (((v7 == 0) * v10) ^ v5)))();
}

uint64_t sub_100656290()
{
  v1 = STACK[0xF18];
  v2 = *(STACK[0xF18] + 8 * v0);
  STACK[0xED0] = v2;
  STACK[0x8F00] = v2;
  return (*(v1 + 8 * ((19758 * (v0 == -1028978679)) ^ (v0 + 14078))))();
}

uint64_t sub_100656484()
{
  v1.n128_u64[0] = 0xA0A0A0A0A0A0A0A0;
  v1.n128_u64[1] = 0xA0A0A0A0A0A0A0A0;
  return (*(STACK[0xF18] + 8 * v0))(2649738786, 18708, v1);
}

uint64_t sub_100656564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = (STACK[0xF10] + 9543) | 0x809;
  LODWORD(STACK[0xA050]) = STACK[0x98D4];
  v5 = *(STACK[0x80C8] + 32) + 744555941;
  v6 = ((v5 & 0xD39EFA56) << (v4 ^ 0x8A)) & (v5 ^ 0x8BDEFB14) ^ v5 & 0xD39EFA56;
  v7 = ((2 * (v5 ^ 0xDF73B94)) ^ 0xBCD38384) & (v5 ^ 0xDF73B94) ^ (2 * (v5 ^ 0xDF73B94)) & 0xDE69C1C2;
  v8 = v7 ^ 0x42284042;
  v9 = (v7 ^ 0x9C418180) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x79A70708) & v8 ^ (4 * v8) & 0xDE69C1C0;
  v11 = (v10 ^ 0x58210100) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x8648C0C2)) ^ 0xE69C1C20) & (v10 ^ 0x8648C0C2) ^ (16 * (v10 ^ 0x8648C0C2)) & 0xDE69C1C0;
  v13 = v11 ^ 0xDE69C1C2 ^ (v12 ^ 0xC6080000) & (v11 << 8);
  LODWORD(STACK[0xA05C]) = v5 ^ (2 * ((v13 << 16) & 0x5E690000 ^ v13 ^ ((v13 << 16) ^ 0x41C20000) & (((v12 ^ 0x1861C1C2) << 8) & 0x5E690000 ^ 0x16280000 ^ (((v12 ^ 0x1861C1C2) << 8) ^ 0x69C10000) & (v12 ^ 0x1861C1C2)))) ^ 0xA9796CEA;
  return (*(STACK[0xF18] + 8 * (v3 - 29445)))(a1, a2, a3);
}

uint64_t sub_10065674C()
{
  LODWORD(STACK[0x8B4C]) = 0;
  v1 = STACK[0x5D84];
  v2 = STACK[0x8304];
  STACK[0x8FE8] = *(STACK[0x5C58] - 0x7E666516A39B34A6);
  LODWORD(STACK[0x44A8]) = v2;
  LODWORD(STACK[0x704C]) = -2116087592;
  LODWORD(STACK[0x7FD8]) = 1751724850;
  LODWORD(STACK[0x4A8C]) = v1;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100656954()
{
  v1 = (v0 - 34423) | 0x32;
  v2 = STACK[0xF18];
  STACK[0x9AD0] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 + 13401)))();
}

uint64_t sub_100656AF0()
{
  v0 = STACK[0xF10] - 33649;
  v1 = STACK[0xF18];
  STACK[0x2630] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x3FE6)))();
}

uint64_t sub_100656B98@<X0>(int a1@<W2>, int a2@<W4>, unsigned int a3@<W5>, int a4@<W6>, int a5@<W7>, uint64_t a6@<X8>)
{
  v21 = ((a6 & 0x857) << v9) & 0x1006 ^ a6 & 0x857 ^ (((a6 & 0x857) << v9) | v10) & (a6 ^ 0xD27D4540);
  v22 = (2 * (a6 ^ 0xD27D4540)) & 0xA001D16 ^ 0xA000511 ^ ((2 * (a6 ^ 0xD27D4540)) ^ 0xE5F65A2E) & (a6 ^ 0xD27D4540);
  v23 = (4 * v21) & a2 ^ v21 ^ ((4 * v21) ^ v10) & v22;
  v24 = ((4 * v22) ^ 0x3A5AD45C) & v22 ^ (4 * v22) & a2;
  v25 = ((16 * (v24 ^ 0x10320903)) ^ 0xAB23D170) & (v24 ^ 0x10320903) ^ (16 * (v24 ^ 0x10320903)) & 0x5AB23D10;
  v26 = (v24 ^ 0x4A803413) & (16 * v23) ^ v23 ^ 0x5AB23D17 ^ (v25 ^ 0xA221107) & (((v24 ^ 0x4A803413) & (16 * v23) ^ v23) << 8);
  v27 = (8 * ((v26 << 16) & v20 ^ v26 ^ ((v26 << 16) ^ 0x1D170000) & (((v25 ^ 0x50902C07) << 8) & v20 ^ 0x8820000 ^ (((v25 ^ 0x50902C07) << 8) ^ 0x123D0000) & (v25 ^ 0x50902C07)))) ^ (4 * a6);
  v28 = *(v13 + (v27 ^ 0x363C09E4u) % v7);
  v29 = v28 & 0xFFFFFFE3 ^ 0xFFFFFFB6;
  v30 = *(v13 + (v27 ^ 0x363C09E5u) % v7);
  v31 = v30 & 0xC5 ^ 0xA3;
  v32 = (((v28 ^ 6) & (2 * ((v28 ^ 6) & (2 * ((v28 ^ 6) & (2 * ((v28 ^ 6) & (2 * ((v28 ^ 6) & (2 * ((v28 ^ 6) & (2 * v28) & 0xE ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29) << 25) ^ (v28 << 24);
  v33 = (v30 ^ (2 * ((v30 ^ 6) & (2 * ((v30 ^ 6) & (2 * ((v30 ^ 6) & (2 * ((v30 ^ 6) & (2 * ((v30 ^ 6) & (2 * (((2 * (v30 & 7)) ^ 0x42) & (v30 ^ 6) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31))) << 16;
  v34 = *(v13 + (v27 ^ a3) % v7);
  v35 = (v34 & 0x87 | 0x30) ^ v34 & 0x60;
  v36 = (v33 ^ 0xFF125799) & (v32 ^ 0x6B565799) | v33 & 0xA90000;
  v37 = (v34 ^ (2 * ((v34 ^ 6) & (2 * ((v34 ^ 6) & (2 * ((v34 ^ 6) & (2 * ((v34 ^ 6) & (2 * ((v34 ^ 6) & (2 * ((v34 ^ 6) & (2 * v35) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35))) << 8;
  v38 = *(v13 + (v27 ^ v15) % v7);
  v39 = v38 & v16 ^ 0xFFFFFF9F;
  v40 = v38 ^ 6;
  v41 = v40 & (2 * (v40 & (2 * (v40 & (2 * (v40 & (2 * (v40 & (2 * (((2 * (v38 & 7)) ^ v17) & v40 ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39;
  *(STACK[0xEC0] + 4 * a6 + v6) = (v38 ^ (2 * v41)) & a1 ^ v11 ^ ((v37 & v14 | (v37 ^ a5) & (v36 ^ a4)) ^ v18) & ((v38 ^ (2 * v41)) ^ v19);
  return (*(STACK[0xF18] + 8 * (((a6 + 1 == v12) * v8) ^ LODWORD(STACK[0xEA0]))))();
}

uint64_t sub_100656F04()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ v0)))();
  return (*(v2 + 8 * (v1 - 1614)))(v3);
}

uint64_t sub_100656F8C()
{
  v0 = STACK[0xF10] - 25512;
  STACK[0x3508] = STACK[0x60D8];
  LODWORD(STACK[0x503C]) = -1959362132;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10065706C@<X0>(int a1@<W8>)
{
  STACK[0x5E60] = v1;
  STACK[0x60B8] = &STACK[0x2DB0];
  STACK[0x4D88] = 0;
  LODWORD(STACK[0x43E4]) = 593130106;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1006570B8()
{
  LODWORD(STACK[0x5564]) = v1;
  LODWORD(STACK[0x6ECC]) = v0;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1006570E0()
{
  v2 = ((v0 - 33014) ^ 0xBC917EB5) + LODWORD(STACK[0x4A48]);
  v3 = v2 < 0xC94DD626;
  v4 = v1 - 917645786 < v2;
  if (v1 > 0x36B229D9 != v3)
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((122 * !v4) ^ (v0 - 27147))))();
}

uint64_t sub_100657348@<X0>(int a1@<W8>)
{
  *(v3 + 81) = v6;
  *(v3 + 77) = v5;
  LODWORD(STACK[0x4780]) = v4;
  LODWORD(STACK[0x2510]) = v1;
  v7 = a1 + 1523165689;
  v8 = v7 < 0xB0D2209D;
  v9 = v6 - 1328406371 < v7;
  if (v8 != v6 > (v2 ^ 0x8583u) + 1328390018)
  {
    v9 = v8;
  }

  return (*(STACK[0xF18] + 8 * ((v9 * (v2 ^ 0xBA7C)) ^ v2)))();
}

uint64_t sub_1006573CC()
{
  v1 = STACK[0xF18];
  STACK[0x4CA8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 43119 + v0 + 45060)))();
}

uint64_t sub_100657500@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v9 = ((((v4 - 4275) | 0x290) - 15980) ^ 0xD2F1B5F3) + v7;
  v10 = STACK[0xE90];
  *(STACK[0xEC0] + *(a1 + 4 * v9)) = *(v5 + v3) ^ 0xD2 ^ *(STACK[0xE90] + v9);
  v11 = STACK[0xED0];
  *(v10 + *(v8 + 4 * v9)) = *(v5 + *(v6 + 4 * v2)) ^ 0x48 ^ *(STACK[0xED0] + v9);
  *(STACK[0xEA0] + v9) = *(v5 + *(v6 + 4 * v2)) ^ 0xF4;
  *(v11 + v9) = *(v5 + *(v6 + 4 * v2)) ^ 0x66;
  return (*(STACK[0xF18] + 8 * (v4 ^ (37008 * (a2 == 11998242)))))();
}

uint64_t sub_100657784@<X0>(int a1@<W8>)
{
  v3 = *STACK[0xE58];
  v4 = *STACK[0xE50];
  v5 = *(*v1 + 40) - (*(v4 + (v3 & 0xFFFFFFFFF1F71F20)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x329F1AD0046BFA29uLL) > 0xFFFFFFFF08CEE2B9;
  v6 = *(v2 + 48) - (*(v4 + (v3 & 0x43420908)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x7B49658091533B91uLL) > 0xFFFFFFFF08CEE2B9;
  v7 = 1022166737 * ((((2 * &STACK[0x10ED8]) | 0x5D39B7F84E008122) - &STACK[0x10ED8] - 0x2E9CDBFC27004091) ^ 0x5016A9819D10A103);
  STACK[0x10ED8] = v5 ^ v6 | v7;
  LODWORD(STACK[0x10EEC]) = a1 + 580462922 - v7;
  LODWORD(STACK[0x10EE8]) = ((a1 + 580462922) ^ 3) + v7;
  LODWORD(STACK[0x10EFC]) = ((a1 + 580462922) ^ 0x1332) + v7;
  LODWORD(STACK[0x10EE4]) = v7 + a1 + 782565441;
  LODWORD(STACK[0x10EE0]) = -1022166737 * ((((2 * &STACK[0x10ED8]) | 0x5D39B7F84E008122) - &STACK[0x10ED8] - 654327953) ^ 0x9D10A103);
  STACK[0x10EF0] = v7;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * (a1 ^ 0x4029)))(&STACK[0x10ED8]);
  return (*(v8 + 8 * SLODWORD(STACK[0x10EF8])))(v9);
}

uint64_t sub_1006579B0()
{
  STACK[0xED0] = 0;
  STACK[0xEA0] = 0;
  LODWORD(STACK[0xEB0]) = (v0 + 42485) ^ 0x7319FFF0 ^ *(STACK[0x9560] + 16 * (v1 - 17351060) + 8);
  STACK[0xE90] = STACK[0x3038];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100657BA8()
{
  v1 = STACK[0x1070];
  *v1 += STACK[0x2EF0];
  return (*(STACK[0xF18] + 8 * ((((v0 + 546) | 0x891A) - 62505) ^ v0 ^ (398 * (((v0 + 34) ^ 0xAF ^ (((v1[7] - v0) | (v0 - v1[7])) < 0)) & 1)))))();
}

uint64_t sub_100657C7C()
{
  v1 = STACK[0x7690];
  STACK[0x7690] -= 256;
  LODWORD(STACK[0x9AB4]) = *STACK[0xB9F8];
  STACK[0x9AB8] = STACK[0xBA20];
  v2 = &STACK[0xC4D0] + v1 - 256;
  STACK[0x9AC0] = v2;
  STACK[0x7690] = v1 - 224;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 50086)))(*(&off_1010A0B50 + v0 - 155) - 1997848798, v2, 20);
  STACK[0x98A8] = *(v3 + 8 * v0);
  return (*(v3 + 8 * (v0 + 4048)))(v4);
}

uint64_t sub_100657E7C()
{
  v1 = STACK[0xF18];
  STACK[0x4920] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 20911 + v0 + 19376)))();
}

uint64_t sub_100657EAC()
{
  v3 = 1022166737 * ((((&STACK[0x10000] + 3800) | 0x6D64021E) - ((&STACK[0x10000] + 3800) | 0x929BFDE1) - 1835270687) ^ 0xD774E38C);
  STACK[0x10ED8] = v2;
  LODWORD(STACK[0x10EE0]) = v1 - v3;
  LODWORD(STACK[0x10EE4]) = v3 - 12727 + v0;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0x65EFu)))(&STACK[0x10ED8]);
  v6 = STACK[0x10EE8];
  LODWORD(STACK[0x3B60]) = STACK[0x10EE8];
  return (*(v4 + 8 * (((v6 == (v0 ^ 0xAF7D) + 1497668573) * (327 * (v0 ^ 0xAF7D) - 35640)) ^ v0)))(v5);
}

uint64_t sub_10065831C()
{
  v1 = STACK[0x6CD8];
  v2 = STACK[0xF18];
  STACK[0x6550] = *(STACK[0xF18] + 8 * (v0 - 33205));
  return (*(v2 + 8 * (((21817 * (v0 ^ 0x8B39)) ^ 0x854A) + v0 - 33205)))(v1);
}

uint64_t sub_1006583F4()
{
  v1 = STACK[0x6858];
  v2 = STACK[0x8658];
  LODWORD(STACK[0x10EE8]) = v0 - 906386353 * ((((&STACK[0x10000] + 3800) ^ 0xF9CD1FAC | 0x66BBAB2A) - (((&STACK[0x10000] + 3800) ^ 0xF9CD1FAC) & 0x66BBAB2C)) ^ 0xAE7779A6) + 21391;
  STACK[0x10ED8] = v2;
  STACK[0x10EE0] = v1 + 152;
  STACK[0x10EF0] = v1 + 48;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 48969)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((29171 * (LODWORD(STACK[0x10EEC]) == ((v0 + 1118085048) & 0xBD5BDF7B ^ 0xE9D54C2A))) ^ v0)))(v4);
}

uint64_t sub_1006584E4()
{
  LODWORD(STACK[0xB03C]) = v0;
  v2 = *(STACK[0x4A90] + 32) | ((*(STACK[0x4A90] + 32) < 0x23u) << 8);
  v3 = (v2 + 982934267) < 0x3A96631E;
  v4 = v0 + 1009838492 < (v2 - 1426441844);
  if (v0 + 1009838492 < ((v1 + 1984086046) & 0x89BCB6E1) - 1426451762 != v3)
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((8156 * !v4) ^ v1)))();
}

uint64_t sub_1006585F8()
{
  v1 = v0 - 8036;
  v2 = STACK[0xF18];
  STACK[0x3978] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 + 7980)))();
}

uint64_t sub_10065867C@<X0>(int a1@<W8>)
{
  v4 = STACK[0x1B40];
  v5 = *(*STACK[0x938] + 640 * (v2 - 1210925842) + 136);
  v6 = STACK[0x4D44];
  v7 = STACK[0xF18];
  STACK[0x2740] = *(STACK[0xF18] + 8 * a1);
  STACK[0x49A8] = ((v3 - 27707) | 0x6009u) + v4 - ((2 * v4) & 0x130272185FDB248CLL) + 0x981390C2FED133DLL;
  LODWORD(STACK[0x3BC4]) = v6;
  STACK[0x6E40] = v1;
  LODWORD(STACK[0x94FC]) = v5;
  v8 = STACK[0x7690];
  STACK[0x82E0] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = 809 * (v3 ^ 0x8B3Fu) + v8 - 3172;
  STACK[0x47E0] = 0;
  LODWORD(STACK[0x72DC]) = -371865839;
  STACK[0x3ED0] = 0;
  (*(v7 + 8 * (v3 ^ 0x41FA)))(STACK[0xED0] - 749202243);
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v3 - 1762661292) ^ (906386353 * ((((2 * (&STACK[0x10000] + 3800)) | 0x5200D80C) - (&STACK[0x10000] + 3800) - 687893510) ^ 0x1801A122));
  v9 = (*(v7 + 8 * (v3 ^ 0x4182)))(&STACK[0x10ED8]);
  if (*STACK[0x970])
  {
    v10 = 1;
  }

  else
  {
    v10 = *STACK[0x940] == 0;
  }

  v11 = v10;
  return (*(v7 + 8 * ((511 * v11) ^ (v3 + 11193))))(v9);
}

uint64_t sub_1006588EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LODWORD(STACK[0xB234]) = v4;
  STACK[0xB238] = v5;
  return (*(STACK[0xF18] + 8 * (((((v3 ^ (a3 == 0)) & 1) == 0) * ((v3 - 1193264796) & 0xF7BFDBFF ^ 0xB0A052A1)) ^ v3)))(a1, a2, 371891400);
}

uint64_t sub_100658950@<X0>(unint64_t a1@<X8>)
{
  v2 = STACK[0x7924];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = a1;
  LODWORD(STACK[0x655C]) = v2;
  LODWORD(STACK[0x884C]) = 747336963;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1006589F8@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 6020)))(STACK[0x8F68], 272);
  LODWORD(STACK[0x1544]) = v3;
  return (*(v2 + 8 * ((60 * (((((v1 ^ 0x176A) - 38755) ^ (v3 < 0)) & 1) == 0)) ^ v1)))();
}

uint64_t sub_100658AC4()
{
  v3 = (((v1 ^ 0x8670759F0F31E5DALL) + 0x798F8A60F0CE1A26) ^ ((v1 ^ 0xEE16A8992CA4D48FLL) + 0x11E95766D35B2B71) ^ ((v1 ^ 0x6866DD06CA40F644) - 0x6866DD06CA40F644)) + 0x68F5085861A6D220;
  v4 = (v3 ^ 0x570AE782A42EF6EDLL) & (2 * (v3 & 0x970AF7A8882EF4F1)) ^ v3 & 0x970AF7A8882EF4F1;
  v5 = ((2 * (v3 ^ 0x5B1EEF93B42EBF0FLL)) ^ 0x98283076780097FCLL) & (v3 ^ 0x5B1EEF93B42EBF0FLL) ^ (2 * (v3 ^ 0x5B1EEF93B42EBF0FLL)) & 0xCC14183B3C004BFELL;
  v6 = v5 ^ 0x4414080904004802;
  v7 = (v5 ^ 0x88001022200003CCLL) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0x305060ECF0012FF8) & v6 ^ (4 * v6) & 0xCC14183B3C004BF8;
  v9 = (v8 ^ 0x10002830000BF0) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0xCC0418130C004006)) ^ 0xC14183B3C004BFE0) & (v8 ^ 0xCC0418130C004006) ^ (16 * (v8 ^ 0xCC0418130C004006)) & 0xCC14183B3C004BE0;
  v11 = (v10 ^ 0xC000003300000B00) & (v9 << 8) ^ v9;
  v12 = (((v10 ^ 0xC1418083C00401ELL) << 8) ^ 0x14183B3C004BFE00) & (v10 ^ 0xC1418083C00401ELL) ^ ((v10 ^ 0xC1418083C00401ELL) << 8) & 0xCC14183B3C004A00;
  v13 = v11 ^ 0xCC14183B3C004BFELL ^ (v12 ^ 0x410183800000000) & (v11 << 16);
  v14 = v3 ^ (2 * ((v13 << 32) & 0x4C14183B00000000 ^ v13 ^ ((v13 << 32) ^ 0x3C004BFE00000000) & (((v12 ^ 0xC80400033C0001FELL) << 16) & 0x4C14183B00000000 ^ 0x4404003B00000000 ^ (((v12 ^ 0xC80400033C0001FELL) << 16) ^ 0x183B3C0000000000) & (v12 ^ 0xC80400033C0001FELL)))) ^ 0x269642ED6F8D465ELL;
  v15 = 353670337 * (((&STACK[0x10ED8] | 0xB11C34DA2E05F366) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0x4EE3CB25D1FA0C98)) ^ 0x418D82519A240B5BLL);
  STACK[0x10EE0] = (((v0 ^ 0x8881C816F3598F30) + 0x777E37E90CA670D0) ^ ((v0 ^ 0x94936BD00329F2B8) + 0x6B6C942FFCD60D48) ^ ((((v2 ^ 0xB625u) + 0x1C12A3C619A5199DLL) ^ v0) - 0x1C12A3C619A5BA99)) - v15 + 0x2CB8161A532D212ELL;
  STACK[0x10EE8] = v14 + v15;
  LODWORD(STACK[0x10ED8]) = v15 + v2 - 4532;
  LODWORD(STACK[0x10EF0]) = v15 + 1018831775;
  v16 = STACK[0xF18];
  v17 = (*(STACK[0xF18] + 8 * (v2 + 45995)))(&STACK[0x10ED8]);
  return (*(v16 + 8 * v2))(v17);
}

uint64_t sub_100659240()
{
  v2 = v1 | 0xC86;
  v3 = v0 < ((v2 - 36786) | 0x5021) + ((v2 - 40893) | 0x6910) - 371925525;
  return (*(STACK[0xF18] + 8 * ((v3 | (8 * v3)) ^ v2)))();
}

uint64_t sub_10065932C@<X0>(int a1@<W8>)
{
  v3 = STACK[0xF18];
  STACK[0x7BA0] = *(STACK[0xF18] + 8 * v1);
  return (*(v3 + 8 * ((59 * (*(v2 + 4) == ((a1 - 4496) ^ 0x79AB))) ^ (a1 - 17313))))();
}

uint64_t sub_100659380()
{
  v1 = STACK[0xF18];
  STACK[0x3988] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0xDD95 ^ ((v0 + 46867) | 9))))();
}

uint64_t sub_1006593D4()
{
  LODWORD(STACK[0x4230]) = v4;
  STACK[0x19D8] = v3;
  STACK[0x7550] = v0;
  STACK[0x3C28] = v2;
  v5 = STACK[0x7690];
  v6 = &STACK[0xC4D0] + v5;
  v7 = &STACK[0xC4D0] + STACK[0x7690];
  *(v7 + 2) = 0x981390C2FED9246;
  STACK[0x7D88] = &STACK[0xC4D0] + v5;
  STACK[0x79E0] = (v7 + 16);
  STACK[0x7690] = ((v1 + 1754841025) & 0x97679F7B) + ((v1 + 1877979856) & 0xBFFDB377) + v5 - 804134241;
  *v6 = 0x981390C2FED9246;
  *(v6 + 2) = 95;
  STACK[0x32C8] = &STACK[0xC4D0] + v5 + 9;
  *(v6 + 6) = 95;
  return (*(STACK[0xF18] + 8 * ((2044 * (v3 == 0x217E172EFA1E81CLL)) ^ v1)))();
}

uint64_t sub_100659530()
{
  STACK[0x6140] = v3;
  STACK[0x3EA8] = v4;
  STACK[0x8498] = v1;
  LOBYTE(STACK[0x2A7F]) = v2;
  LODWORD(STACK[0x4D54]) = 1497668682;
  v6 = v3 == 0x217E172EFA1E81CLL || v4 == (v0 + 8150) + 0x981390C2FECA83CLL + ((v0 + 1472381062) & 0xA83D8BBB);
  return (*(STACK[0xF18] + 8 * ((479 * v6) ^ v0)))();
}

uint64_t sub_1006596EC()
{
  STACK[0x7EA0] = STACK[0x7720] - ((2 * STACK[0x7720]) & 0x130272185FDB248CLL) + 0x981390C2FED9246;
  LODWORD(STACK[0x6C8C]) = STACK[0x1148];
  STACK[0x71E0] = 0;
  LODWORD(STACK[0x2878]) = -371865839;
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762651019) ^ (906386353 * ((&STACK[0x10000] + 3800) ^ 0x3101CD24));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xA9A3)))(&STACK[0x10ED8]);
  v4 = *STACK[0x970] != ((v0 + 9486) | 0x313) - 35643 || *STACK[0x940] == 0;
  return (*(v1 + 8 * ((v4 * (((v0 + 7911) | 0x93A) - 35636)) ^ v0)))(v2);
}

uint64_t sub_1006598B4@<X0>(char a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v18 = *v14;
  v19 = ((*(*v15 + (v18 & 0xFFFFFFFF86B3AED0)) ^ v7) & 0x7FFFFFFF) * v9;
  v20 = (v19 ^ HIWORD(v19)) * v9;
  LODWORD(v18) = ((*(*v15 + (v18 & v10)) ^ v5) & 0x7FFFFFFF) * v9;
  v21 = (v18 ^ WORD1(v18)) * v9;
  *(v11 + v6) = *(a3 + (v20 >> 24)) ^ *(v3 + v6) ^ *(v12 + (v20 >> 24)) ^ *(v8 + (v20 >> 24)) ^ *(v13 + (v21 >> 24)) ^ *(v17 + (v21 >> 24)) ^ v20 ^ *(v16 + (v21 >> 24)) ^ (5 * BYTE3(v20)) ^ v21 ^ (BYTE3(v21) * a1);
  return (*(STACK[0xF18] + 8 * (((v6 == 0) * a2) ^ v4)))();
}

uint64_t sub_1006599C8@<X0>(uint64_t a1@<X8>)
{
  *(*(v7 + 16) + 8 * v1) = a1;
  v9 = v4 < v5 || v4 >= v3;
  return (*(STACK[0xF18] + 8 * ((v9 * v6) ^ v2)))();
}

uint64_t sub_1006599FC@<X0>(uint64_t a1@<X8>)
{
  STACK[0x8D20] = v1 - 0x10A99C80114D1457;
  *(a1 + 321) = 0;
  return (*(STACK[0xF18] + 8 * (v2 - 3198)))();
}

uint64_t sub_100659B5C()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 2609;
  v2 = STACK[0x10B8];
  v3 = STACK[0xF10] ^ 0x5632CCDA;
  v4 = 1022166737 * ((~(&STACK[0x10000] + 3800) & 0xE7A51020 | (&STACK[0x10000] + 3800) & 0x185AEFD8) ^ 0x5DB5F1B2);
  v5 = (STACK[0xF10] + 11093) ^ v4;
  STACK[0x10EE0] = *(STACK[0x5488] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x10ED8]) = v5;
  LODWORD(STACK[0x10EDC]) = v2 * v3 - v4 + 2011904846;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v0 ^ 0x40B6)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * v1))(v7);
}

uint64_t sub_100659C9C@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X1>, unint64_t a3@<X2>, int a4@<W8>)
{
  v11 = *a2;
  v12 = *v6;
  v13 = v8;
  v14 = STACK[0xF18];
  STACK[0x4208] = *(STACK[0xF18] + 8 * a4);
  LODWORD(STACK[0x888C]) = v9;
  STACK[0x8C88] = v5;
  STACK[0x1DE8] = a1;
  STACK[0x3070] = v12;
  LODWORD(STACK[0x2210]) = v13;
  STACK[0x3AB8] = v11;
  LODWORD(STACK[0x7324]) = v10;
  STACK[0x8540] = v7;
  STACK[0x7CB0] = a3;
  v15 = STACK[0x7690];
  STACK[0x6F98] = &STACK[0xC4D0] + STACK[0x7690];
  *(&STACK[0xC4D0] + v15) = 0x981390C2FED9246;
  STACK[0x8E28] = &STACK[0xC4D0] + v15 + 16;
  STACK[0x7690] = v15 + 48;
  LODWORD(STACK[0x7C44]) = -371865839;
  *(&STACK[0xC4D0] + v15 + 8) = 0;
  STACK[0x4198] = &STACK[0xC4D0] + v15 + 8;
  LODWORD(STACK[0x34CC]) = STACK[0x4F54];
  STACK[0x5FF8] = *(v14 + 8 * v4);
  return (*(v14 + 8 * ((((v4 + 31263) | 0x2C) - 24994) ^ v4)))();
}

uint64_t sub_100659D7C@<X0>(int a1@<W8>)
{
  v3 = v1 - 0x1BF5D69F46ABC0ABLL + ((a1 - 2309) | 0x300u);
  v5 = v3 < 0xDAE0A54E || v3 >= ((a1 + 10222) ^ 0xDAE01C60) + v2;
  return (*(STACK[0xF18] + 8 * ((7 * v5) | a1)))();
}

uint64_t sub_100659DE8@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *v2 = a1;
  *v3 = STACK[0x40D8];
  return (*(STACK[0xF18] + 8 * a2))();
}

uint64_t sub_100659E08()
{
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((((2 * (&STACK[0x10000] + 3800)) | 0x5CD06C16) - (&STACK[0x10000] + 3800) + 1368902133) ^ 0x484E2DC4) + 296786555;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 49723)))(&STACK[0x10ED8]);
  STACK[0x51A8] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((v0 ^ 0x4070) + 5667) ^ v0)))(v2);
}

uint64_t sub_100659FDC@<X0>(unint64_t a1@<X8>)
{
  STACK[0x10ED8] = a1;
  LODWORD(STACK[0x10EE4]) = v1 - 1012831759 * ((((&STACK[0x10000] + 3800) | 0xF0C81297) + (~(&STACK[0x10000] + 3800) | 0xF37ED68)) ^ 0xE05B041C) + 10517;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 16525)))(&STACK[0x10ED8]);
  *(v2 + 152) = 0;
  return (*(v3 + 8 * (v1 - 18703)))(v4);
}

uint64_t sub_10065A064()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16238)))();
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_10065A09C()
{
  v1 = *(STACK[0x2DC0] + 40);
  STACK[0x4F90] = STACK[0x88B8];
  LODWORD(STACK[0x22E8]) = v1 + ((v0 + 27063) ^ 0xE9D54F5B) - ((2 * v1) & 0xD3AB8E22);
  LODWORD(STACK[0x35EC]) = 1693393273;
  return (*(STACK[0xF18] + 8 * (v0 - 1234)))();
}

uint64_t sub_10065A1B0@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v10 = (v3 + 16 * (a2 + v7));
  *v10 = v4;
  v10[1] = *(*(*(STACK[0x75D0] + 112) + v2 * a1 + 16) + 16 * (v5 + v8)) + v9;
  return (*(STACK[0xF18] + 8 * v6))();
}

uint64_t sub_10065A200()
{
  v2 = v1 - 4878;
  v3 = v0 < ((773 * (v2 ^ 0x22D8)) ^ 0x88D5) - 371916870;
  return (*(STACK[0xF18] + 8 * (((2 * v3) | (4 * v3)) ^ v2)))();
}

uint64_t sub_10065A250@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  *(a1 + 1908) = a2 + 16;
  v5 = (((v2 ^ 0x3061) + (v4 ^ 0xE627FD4A) + 433585033) ^ ((v4 ^ 0xD13A7CEA) + 784696086) ^ (((((v2 + 801794223) & 0xD035EB3F) - 557335690) ^ v4) + 557300047)) - 1492931736;
  v6 = (a2 + 16) > 0x42D21BA8;
  v7 = v6 ^ (v5 < 0xBD2DE457);
  v8 = a2 - 1121065881 > v5;
  if (!v7)
  {
    v6 = v8;
  }

  if (v6)
  {
    v3 = 371891407;
  }

  *(a1 + 1912) = v3;
  return (*(STACK[0xF18] + 8 * ((222 * (v3 == -371865839)) ^ v2)))();
}

uint64_t sub_10065A360()
{
  v1 = STACK[0x2FD4];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393260;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10065A398()
{
  v1 = STACK[0xF18];
  STACK[0x3C98] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 - 2422) ^ v0)))(&STACK[0x3C07]);
}

uint64_t sub_10065A5CC()
{
  v0 = (STACK[0xF10] - 1920372332) & 0x7276BBBB;
  v1 = STACK[0xF10] - 34210;
  LODWORD(STACK[0xA010]) = STACK[0x98D4];
  v2 = *(STACK[0x80C8] + 32) + 1363700591;
  v3 = (v2 ^ 0x2EA700A8) & (2 * (v2 & 0xAEB7948C)) ^ v2 & 0xAEB7948C;
  v4 = (v0 ^ 0x206B82E3 ^ (2 * (v2 ^ 0x3E8209B8))) & (v2 ^ 0x3E8209B8) ^ (2 * (v2 ^ 0x3E8209B8)) & 0x90359D34;
  v5 = v4 ^ 0x90148514;
  v6 = (v4 ^ 0x201020) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0x40D674D0) & v5 ^ (4 * v5) & 0x90359D34;
  v8 = (v7 ^ 0x141400) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x90218924)) ^ 0x359D340) & (v7 ^ 0x90218924) ^ (16 * (v7 ^ 0x90218924)) & 0x90359D00;
  v10 = v8 ^ 0x90359D34 ^ (v9 ^ 0x119100) & (v8 << 8);
  LODWORD(STACK[0xA01C]) = v2 ^ (2 * ((v10 << 16) & 0x10350000 ^ v10 ^ ((v10 << 16) ^ 0x1D340000) & (((v9 ^ 0x90240C34) << 8) & 0x10350000 ^ (((v9 ^ 0x90240C34) << 8) ^ 0x359D0000) & (v9 ^ 0x90240C34) ^ 0x200000))) ^ 0x782AD522;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x1DAF)))();
}

uint64_t sub_10065A910()
{
  STACK[0x7690] -= 368;
  v1 = *STACK[0x5540];
  LODWORD(STACK[0x10ED8]) = v0 - 193924789 * ((((2 * &STACK[0x10ED8]) | 0x7E0B2F34) - &STACK[0x10ED8] - 1057331098) ^ 0x89BEA5FC) + 60349492;
  STACK[0x10EE0] = v1;
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0x4032)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x10ED8]) = (v0 - 1762661292) ^ (906386353 * ((2 * (&STACK[0x10ED8] & 0x346E9018) - &STACK[0x10ED8] + 1267822567) ^ 0x7A90A2C3));
  STACK[0x10EE0] = 0;
  v3 = (*(v2 + 8 * (v0 ^ 0x4182)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * (((*STACK[0x970] > 0) * ((v0 ^ 0xD29F) - 15191)) ^ (v0 - 821))))(v3);
}

uint64_t sub_10065ABB4()
{
  STACK[0x6E78] = v1;
  STACK[0x5C50] = 0x3AE1413A0D5C9A46;
  LODWORD(STACK[0x1374]) = -1806737462;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10065ABF4()
{
  v1 = STACK[0xF10] ^ 0x7A;
  v2 = STACK[0xF10] - 9902;
  STACK[0x8A48] = STACK[0xEA0];
  LODWORD(STACK[0x6B14]) = STACK[0xE90];
  STACK[0x6FE8] = STACK[0xEB0];
  LODWORD(STACK[0x15B4]) = STACK[0xEC0];
  v3 = LODWORD(STACK[0x191C]) * (v0 - 1548484898) - 212454859;
  v4 = (v3 ^ 0xCEADED8B) & (2 * (v3 & 0xCA9CDCB)) ^ v3 & 0xCA9CDCB;
  v5 = (((v3 ^ 0xC7FFFC1B) << v1) ^ 0x96AC63A0) & (v3 ^ 0xC7FFFC1B) ^ ((v3 ^ 0xC7FFFC1B) << v1) & 0xCB5631D0;
  v6 = v5 ^ 0x49521050;
  v7 = (v5 ^ 0x2042100) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0x2D58C740) & v6 ^ (4 * v6) & 0xCB5631D0;
  v9 = (v8 ^ 0x9500140) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0xC2063090)) ^ 0xB5631D00) & (v8 ^ 0xC2063090) ^ (16 * (v8 ^ 0xC2063090)) & 0xCB5631C0;
  v11 = v9 ^ 0xCB5631D0 ^ (v10 ^ 0x81421100) & (v9 << 8);
  v12 = v3 ^ LODWORD(STACK[0x7CD8]) ^ (2 * ((v11 << 16) & 0x4B560000 ^ v11 ^ ((v11 << 16) ^ 0x31D00000) & (((v10 ^ 0x4A1420D0) << 8) & 0x4B560000 ^ 0x9460000 ^ (((v10 ^ 0x4A1420D0) << 8) ^ 0x56310000) & (v10 ^ 0x4A1420D0)))) ^ 0x98A5AE6B;
  LODWORD(STACK[0x3E80]) += 4;
  v13 = LOBYTE(STACK[0x3737]);
  LODWORD(STACK[0x3DA4]) = v12;
  return (*(STACK[0xF18] + 8 * ((50326 * v13) ^ v2)))();
}

uint64_t sub_10065ADDC()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x95F4)))((v0 + 11215) ^ LODWORD(STACK[0x2EDC]) ^ 0xE9D54C2A);
  STACK[0x9380] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((v0 ^ 0x53C7) - 3023)) ^ v0)))();
}

uint64_t sub_10065AE40@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xD60]) = a1 ^ 0x8411;
  v2 = v1 - 35644 + (a1 ^ 0x8411);
  *((v1 - 1359699703) + STACK[0x9C90] + STACK[0x9C98] - 0x888F326781AB765) = *(STACK[0x9C88] + (v1 - 1359699703)) ^ 0x5F;
  v3 = *(STACK[0xF18] + 8 * a1);
  LODWORD(STACK[0xD90]) = v2;
  return v3();
}

uint64_t sub_10065AFF4()
{
  LODWORD(STACK[0x1FB8]) = v1;
  v2 = STACK[0xF18];
  STACK[0x92C8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 154792))();
}

uint64_t sub_10065B10C()
{
  v2 = *(v1 - 0x217E172EFA1E81CLL);
  v3 = (((*(v1 - 0x217E172EFA1E804) ^ 0xE07C9AF7) + 528704777) ^ ((*(v1 - 0x217E172EFA1E804) ^ 0x9A3BDF61) + 1707352223) ^ ((*(v1 - 0x217E172EFA1E804) ^ 0x93928287) + 1819114873)) - 54746966;
  v4 = 634647737 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x5061A08) - 2063197688) ^ 0xE89035F4);
  STACK[0x10F00] = v1 - 0x217E172EFA1E800;
  LODWORD(STACK[0x10ED8]) = v3 ^ v4;
  LODWORD(STACK[0x10EF8]) = v0 - v4 - 615;
  STACK[0x10EE8] = &STACK[0x19EC];
  STACK[0x10EE0] = &STACK[0x40B0];
  STACK[0x10EF0] = v2;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 ^ 0x570C)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((14530 * (LODWORD(STACK[0x10F08]) == ((11881 * (v0 ^ 0x9DCB)) ^ 0xE9D54C2A))) ^ v0)))(v6);
}

uint64_t sub_10065B498()
{
  v2 = v1 - 29747;
  v3 = STACK[0x89D4];
  STACK[0x8FE8] = *(v0 - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v3;
  LODWORD(STACK[0x7FD8]) = 1751212916;
  LODWORD(STACK[0x704C]) = -2116087588;
  LODWORD(STACK[0x4A8C]) = STACK[0x17C8];
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10065B514@<X0>(int a1@<W8>)
{
  v4 = v3 == 3;
  LOBYTE(STACK[0x7EB7]) = v4;
  if (v2 != ((a1 - 24044) | 8) - 371868168)
  {
    v4 = 0;
  }

  v5 = v1 == -2022255 && v4;
  return (*(STACK[0xF18] + 8 * ((56407 * v5) ^ a1)))();
}

uint64_t sub_10065B570()
{
  v1 = STACK[0xF18];
  STACK[0x3770] = *(STACK[0xF18] + 8 * (v0 - 16667));
  return (*(v1 + 8 * (((v0 - 18735) ^ 0x141F) + v0 - 16667)))();
}

uint64_t sub_10065B5B4(__n128 a1, __n128 a2)
{
  a1.n128_u16[0] = -16706;
  a1.n128_u8[2] = -66;
  a1.n128_u8[3] = -66;
  a1.n128_u8[4] = -66;
  a1.n128_u8[5] = -66;
  a1.n128_u8[6] = -66;
  a1.n128_u8[7] = -66;
  a2.n128_u16[0] = 24415;
  a2.n128_u8[2] = 95;
  a2.n128_u8[3] = 95;
  a2.n128_u8[4] = 95;
  a2.n128_u8[5] = 95;
  a2.n128_u8[6] = 95;
  a2.n128_u8[7] = 95;
  return (*(STACK[0xF18] + 8 * v5))((((v5 - 47) ^ 0x67) & v2) - v3 - 8, (((v5 - 47) ^ 0x67) & v2) + v4, (v5 + 7523), 81, a1, a2);
}

uint64_t sub_10065B650()
{
  LODWORD(STACK[0xA338]) = v0;
  *(STACK[0x4D80] + v0) = 7;
  LOWORD(STACK[0xA33E]) = LOWORD(STACK[0x3114]) - ((LOWORD(STACK[0x3114]) << (v1 + 33)) & 0x377A) + 7101;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x245F)))();
}

uint64_t sub_10065B75C()
{
  v1 = (((LODWORD(STACK[0x47B8]) ^ 0x4930DAF14E71DD5ELL) + 0x18F4CBD5EA48F3F4) ^ ((LODWORD(STACK[0x47B8]) ^ 0xDDE549B17AF4776) + 0x5C1A45BFB39669DCLL) ^ ((((v0 ^ 0x76BBu) + 15469 + 0x44EE8E6A59DE0EEDLL) ^ LODWORD(STACK[0x47B8])) + 0x152A9F4EFDE7B486)) - 0x51C41124841418D3;
  v2 = *STACK[0x9758] - 0x63763DEC8D1131CCLL;
  v3 = (v2 < 0x202515DB) ^ (v1 < 0x202515DB);
  v4 = v1 < v2;
  if (v3)
  {
    v4 = v2 < 0x202515DB;
  }

  return (*(STACK[0xF18] + 8 * (((4 * v4) | (8 * v4)) ^ v0)))();
}

uint64_t sub_10065B8CC()
{
  v1 = STACK[0xF18];
  STACK[0x3988] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 49599 + v0 + 46838)))();
}

uint64_t sub_10065B974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  ++*a5;
  LODWORD(STACK[0x10EE0]) = v5 + 155453101 * ((&STACK[0x10000] + 3800) ^ 0xE6261BCF) + 296753103;
  STACK[0x10ED8] = 0;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v5 + 16271)))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v6 + 8 * (v5 - 32434));
  return (*(v6 + 8 * ((2458 * (v5 ^ 0x8B31) - 17694) ^ (v5 - 32434))))(v7);
}

uint64_t sub_10065C04C()
{
  v1 = STACK[0xF18];
  STACK[0x90E8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 16219 + v0 - 1639)))();
}

uint64_t sub_10065C1AC()
{
  v2 = 353670337 * ((v1 - 2 * (v1 & 0x1BE4E3D2C1977ED8) - 0x641B1C2D3E688124) ^ 0x6B75555975B686E1);
  LODWORD(STACK[0x10ED8]) = v2 + v0 - 39895;
  STACK[0x10EE8] = v2 + 0x31B495479FA32553;
  STACK[0x10EE0] = 0x2CB8161969575A1DLL - v2;
  LODWORD(STACK[0x10EF0]) = v2 + 565524158;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 10632)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * v0))(v4);
}

uint64_t sub_10065C64C()
{
  STACK[0x10EE8] = STACK[0x7898];
  LODWORD(STACK[0x10ED8]) = (v0 + 4997) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x10EC588) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xFEF13A70)) ^ 0x300F08AC));
  LOWORD(STACK[0x10EE0]) = 23473 * ((((&STACK[0x10000] + 3800) | 0xC588) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x3A70)) ^ 0x8AC) + 18111;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0xD511)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * (((v1 == (((v0 + 144) | 0x2C8) ^ 0x22F8)) * ((v0 - 225894561) & 0xD76FFE4 ^ 0x3EEE)) | v0)))(v3);
}

uint64_t sub_10065C790@<X0>(int a1@<W8>)
{
  v2 = (a1 - 51649) | 0x5082;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 ^ 0x9A66)))();
  *(v1 + 16) = 0;
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_10065C910()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 371901482;
  v2 = 13 * (STACK[0xF10] ^ 0x8B89);
  v3 = STACK[0xF10] - 30666;
  v4 = STACK[0xB1A8];
  v5 = 1603510583 * ((((2 * &STACK[0x10ED8]) | 0xDE53FED583EC68B0) - &STACK[0x10ED8] + 0x10D600953E09CBA8) ^ 0xD0D8E886562D06F3);
  STACK[0x10F08] = STACK[0xB1B0];
  STACK[0x10EF0] = v5 + 0x787CF1E15A2A6CC2;
  STACK[0x10EF8] = v5 + 0x1D5BAA6B483C089DLL;
  LODWORD(STACK[0x10ED8]) = v0 - v5 - 29881;
  STACK[0x10EE8] = v4;
  STACK[0x10EE0] = 0;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v0 ^ 0x402D)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * (((LODWORD(STACK[0x10F00]) != (v1 ^ 0xFFFF5B80)) * (v2 - 2139)) ^ v3)))(v7);
}

uint64_t sub_10065CBB0@<X0>(int a1@<W8>)
{
  v3 = a1 ^ 0x9057;
  v4 = STACK[0x64C0] + (v1 + LODWORD(STACK[0x49F0]) - 1450680240);
  v5 = *v4;
  v6 = v1 + (~(2 * v1) | 0x15) - 10;
  LODWORD(v4) = ((v4 ^ *(*STACK[0xE50] + (*v2 & 0x72D7ACF8))) & 0x7FFFFFFF) * (1593 * (v3 ^ 0x96A) + 1864576904);
  v7 = 1864610357 * (v4 ^ WORD1(v4));
  LOBYTE(v7) = *(STACK[0x888] + (v7 >> 24)) ^ v5 ^ *((v7 >> 24) + STACK[0x880] + 3) ^ *((v7 >> 24) + STACK[0x890] + 2) ^ v7 ^ (-81 * BYTE3(v7));
  LOBYTE(STACK[0x5827]) = (((v7 ^ 0x50) + 8) ^ ((v7 ^ 0x35) + 99) ^ ((v7 ^ 0x65) + 51)) - (((v6 ^ 0xE0) + 32) ^ ((v6 ^ 0x54) - 84) ^ ((v6 ^ 0x41) - 65)) - 77;
  return (*(STACK[0xF18] + 8 * (v3 + 4871)))();
}

uint64_t sub_10065CD68()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] + 7759;
  STACK[0x8A48] = STACK[0xEA0];
  LODWORD(STACK[0x6B14]) = STACK[0xE90];
  STACK[0x6FE8] = STACK[0xEB0];
  v3 = (LODWORD(STACK[0x5374]) - 2083690232) * (v0 - 1548484898) + 1384130252 * v0 - 881049893;
  *(STACK[0x58C0] + 48 * STACK[0x72B8] + 0x3043717E71E4A108) = LODWORD(STACK[0x2C5C]) ^ v3 ^ ((v3 ^ (v1 - 184225746)) + 532854118) ^ ((v3 ^ 0x6BF43B41) - 2127301298) ^ ((v3 ^ 0x7C3E8E84) - 1762049911) ^ ((v3 ^ 0xF7F7FF5F) + 489697620) ^ 0xFCEDF6E2;
  LODWORD(STACK[0x15B4]) = STACK[0xEC0];
  LODWORD(STACK[0x94C0]) += 4;
  return (*(STACK[0xF18] + 8 * ((5228 * LOBYTE(STACK[0x82C3])) ^ v2)))();
}

uint64_t sub_10065CEBC@<X0>(unint64_t *a1@<X8>)
{
  v2 = *a1;
  STACK[0x5380] = *a1;
  return (*(STACK[0xF18] + 8 * ((239 * (v2 == 0)) ^ (v1 - 15298))))();
}

uint64_t sub_10065CF5C@<X0>(int a1@<W8>)
{
  v4 = a1 == v1;
  v5 = 360;
  if (v4)
  {
    v5 = 368;
  }

  v6 = *(v3 + v5);
  LODWORD(STACK[0x10ED8]) = v2 + 1022166737 * ((((&STACK[0x10000] + 3800) ^ 0x7C15CBCD) - 2 * (((&STACK[0x10000] + 3800) ^ 0x7C15CBCD) & 0x5F06B9ED) + 1594276333) ^ 0x990393B2) + 20002;
  STACK[0x10EE0] = v6;
  v7 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v2 + 27750)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * v2))(0);
}

uint64_t sub_10065D008()
{
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v2 ^ v0)))(v6);
  return (*(v7 + 8 * (((((v2 ^ v3) * v5) ^ v4) * (v1 == 0)) ^ (v2 + 2472))))(v8);
}

uint64_t sub_10065D178@<X0>(int a1@<W8>)
{
  STACK[0x1DC0] = 0x22EE7698899D41C8;
  LODWORD(STACK[0x3418]) = -371865839;
  LODWORD(STACK[0x4F14]) = -371865839;
  LODWORD(STACK[0x6168]) = -371865839;
  LODWORD(STACK[0x188C]) = -371865839;
  return (*(STACK[0xF18] + 8 * ((681 * (a1 != 606212114)) ^ (a1 + 1360923885))))();
}

uint64_t sub_10065D1FC()
{
  STACK[0x10EE0] = *STACK[0x3140];
  LODWORD(STACK[0x10ED8]) = v0 - 193924789 * ((2 * ((&STACK[0x10000] + 3800) & 0x32934CD0) - (&STACK[0x10000] + 3800) + 1298969386) ^ 0xFBD7814C) + 60374712;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 41554)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10065D298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, char a8)
{
  v12 = LODWORD(STACK[0xE90]) | 0x10A4;
  v13 = STACK[0xE50];
  v14 = *STACK[0xE50];
  v15 = STACK[0xE58];
  v16 = *STACK[0xE58] & 0xFFFFFFFFE6F073DCLL;
  v17 = STACK[0x7878];
  v18 = STACK[0x69E8];
  v19 = *(STACK[0x69E8] + 3);
  v20 = (((STACK[0x69E8] + 3) ^ *(v14 + v16)) & 0x7FFFFFFF) * v8;
  v21 = (v20 ^ HIWORD(v20)) * v8;
  LODWORD(STACK[0xED0]) = v12;
  v22 = v21 >> (v12 + 97);
  v23 = STACK[0xEC0];
  v24 = STACK[0xEB0];
  v25 = STACK[0xEA0];
  v26 = *(STACK[0xEB0] + v22) ^ *(v22 + STACK[0xEC0] + 1) ^ *(STACK[0xEA0] + v22) ^ v19 ^ v21 ^ (51 * v22);
  v17[128] = (((v26 ^ 0xE6) + 100) ^ ((v26 ^ 0xEE) + 108) ^ ((v26 ^ 8) - 114)) - 47;
  v17[129] = a8;
  v27 = ((*(v14 + v16) ^ (v18 + 2)) & 0x7FFFFFFF) * v8;
  v28 = (v27 ^ HIWORD(v27)) * v8;
  LOBYTE(v28) = *(v24 + (v28 >> 24)) ^ *((v28 >> 24) + v23 + 1) ^ *(v25 + (v28 >> 24)) ^ v18[2] ^ v28 ^ (51 * BYTE3(v28));
  v17[131] = (((v28 ^ 0xF4) - 68) ^ ((v28 ^ 0x70) + 64) ^ ((v28 ^ 0x84) - 52)) + 46;
  v17[132] = v11;
  LOBYTE(v21) = STACK[0x3AE7];
  LODWORD(v14) = ((*(v14 + v16) ^ (v18 + 1)) & 0x7FFFFFFF) * v8;
  v29 = (v14 ^ WORD1(v14)) * v8;
  LOBYTE(v29) = *(v24 + (v29 >> 24)) ^ *((v29 >> 24) + v23 + 1) ^ *(v25 + (v29 >> 24)) ^ v18[1] ^ v29 ^ (51 * BYTE3(v29));
  v17[134] = (((v29 ^ 0x49) - 109) ^ ((v29 ^ 0xB) - 47) ^ ((v29 ^ 0x42) - 102)) + 86;
  v30 = STACK[0x69E8];
  v31 = STACK[0x7878];
  v31[135] = v21;
  v32 = *v13;
  v33 = *v15 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v29) = ((*(*v13 + v33) ^ v30) & 0x7FFFFFFF) * v8;
  v34 = (v29 ^ WORD1(v29)) * v8;
  v35 = STACK[0x8C4F];
  LOBYTE(v29) = STACK[0x8717];
  LOBYTE(v34) = *(v24 + (v34 >> 24)) ^ *((v34 >> 24) + v23 + 1) ^ *(v25 + (v34 >> 24)) ^ *v30 ^ v34 ^ (51 * BYTE3(v34));
  v31[137] = (((v34 ^ 0xC) + 9) ^ ((v34 ^ 0x71) + 118) ^ ((v34 ^ 0x7D) + 122)) + 98;
  v31[138] = v35;
  LODWORD(v32) = ((*(v32 + v33) ^ (v30 + 7)) & 0x7FFFFFFF) * v8;
  v36 = (v32 ^ WORD1(v32)) * v8;
  LOBYTE(v36) = *(v24 + (v36 >> 24)) ^ *((v36 >> 24) + v23 + 1) ^ *(v25 + (v36 >> 24)) ^ *(v30 + 7) ^ v36 ^ (51 * BYTE3(v36));
  v31[140] = (((v36 ^ a7) - 125) ^ ((v36 ^ 0xAC) + 37) ^ ((v36 ^ 0xA6) + 47)) - 32;
  v31[141] = STACK[0x1E3F];
  v37 = *(v30 + 6);
  v38 = *v13;
  v39 = *v15 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v30) = ((*(*v13 + v39) ^ (v30 + 6)) & 0x7FFFFFFF) * v8;
  v40 = (v30 ^ WORD1(v30)) * v8;
  LOBYTE(v40) = *(v24 + (v40 >> 24)) ^ *((v40 >> 24) + v23 + 1) ^ *(v25 + (v40 >> 24)) ^ v37 ^ v40 ^ (51 * BYTE3(v40));
  v31[143] = (((v40 ^ 0x5C) + 107) ^ ((v40 ^ 4) + 51) ^ ((v40 ^ 0x58) + 111)) + 52;
  v17[144] = v29;
  v41 = STACK[0x69E8];
  LODWORD(v40) = (((STACK[0x69E8] + 5) ^ *(v38 + v39)) & 0x7FFFFFFF) * v8;
  v42 = (v40 ^ WORD1(v40)) * v8;
  v43 = STACK[0x257F];
  LOBYTE(v42) = *(v24 + (v42 >> 24)) ^ *((v42 >> 24) + v23 + 1) ^ *(v25 + (v42 >> 24)) ^ *(STACK[0x69E8] + 5) ^ v42 ^ (51 * BYTE3(v42));
  v17[146] = (((v42 ^ 0xBD) - 11) ^ ((v42 ^ 0x11) + 89) ^ ((v42 ^ 0xAC) - 26)) - 68;
  v17[147] = v43;
  LODWORD(v42) = ((*(v38 + v39) ^ (v41 + 4)) & 0x7FFFFFFF) * v8;
  v44 = (v42 ^ WORD1(v42)) * v8;
  v45 = STACK[0x7917];
  LOBYTE(v44) = *(v10 + (v44 >> 24)) ^ *(v9 + (v44 >> 24)) ^ *(a1 + (v44 >> 24)) ^ *(v41 + 4) ^ v44 ^ (79 * BYTE3(v44));
  v17[149] = (((v44 ^ 0x8C) - 26) ^ ((v44 ^ 0xDD) - 75) ^ ((v44 ^ 0x51) + 57)) - 21;
  v17[150] = v45;
  v46 = *v13;
  v47 = *v15 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v29) = ((*(*v13 + v47) ^ (v41 + 11)) & 0x7FFFFFFF) * v8;
  v48 = (v29 ^ WORD1(v29)) * v8;
  v49 = STACK[0x39A7];
  LOBYTE(v48) = *(v10 + (v48 >> 24)) ^ *(v9 + (v48 >> 24)) ^ *(a1 + (v48 >> 24)) ^ *(v41 + 11) ^ v48 ^ (79 * BYTE3(v48));
  v17[152] = (((v48 ^ 0xA0) + 46) ^ ((v48 ^ 0x91) + 29) ^ ((v48 ^ 0x31) - 67)) - 120;
  v31[153] = v49;
  LODWORD(v48) = ((*(v46 + v47) ^ (v18 + 10)) & 0x7FFFFFFF) * v8;
  v50 = (v48 ^ WORD1(v48)) * v8;
  v51 = STACK[0x6F8F];
  LOBYTE(v50) = *(v10 + (v50 >> 24)) ^ *(v9 + (v50 >> 24)) ^ *(a1 + (v50 >> 24)) ^ v18[10] ^ v50 ^ (79 * BYTE3(v50));
  v31[155] = (((v50 ^ 0x40) - 109) ^ ((v50 ^ 0xC2) + 17) ^ ((v50 ^ 0x82) + 81)) + 60;
  v31[156] = v51;
  LODWORD(v46) = *(v46 + v47);
  LOBYTE(v47) = STACK[0x7C5F];
  v52 = ((((v46 ^ (v18 + 9)) & 0x7FFFFFFF) * v8) ^ ((((v46 ^ (v18 + 9)) & 0x7FFFFFFF) * v8) >> 16)) * v8;
  LOBYTE(v52) = *(v10 + (v52 >> 24)) ^ *(v9 + (v52 >> 24)) ^ *(a1 + (v52 >> 24)) ^ v18[9] ^ v52 ^ (79 * BYTE3(v52));
  v31[158] = (((v52 ^ 0x4E) + 95) ^ ((v52 ^ 0xA3) - 76) ^ ((v52 ^ 0xED) - 2)) + 73;
  v31[159] = v47;
  v53 = *v13;
  v54 = *v15 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v52) = ((*(*v13 + v54) ^ (v18 + 8)) & 0x7FFFFFFF) * v8;
  v55 = (v52 ^ WORD1(v52)) * v8;
  v56 = STACK[0x377F];
  LOBYTE(v55) = *(v10 + (v55 >> 24)) ^ *(v9 + (v55 >> 24)) ^ *(a1 + (v55 >> 24)) ^ v18[8] ^ v55 ^ (79 * BYTE3(v55));
  LOBYTE(v39) = STACK[0x714F];
  v31[161] = (((v55 ^ 0x19) + 117) ^ ((v55 ^ 0xAF) - 61) ^ ((v55 ^ 0xB6) - 36)) - 9;
  v17[162] = v39;
  LODWORD(v55) = ((*(v53 + v54) ^ (v18 + 15)) & 0x7FFFFFFF) * v8;
  v57 = (v55 ^ WORD1(v55)) * v8;
  LOBYTE(v39) = STACK[0x780F];
  LOBYTE(v57) = *(v10 + (v57 >> 24)) ^ *(v9 + (v57 >> 24)) ^ *(a1 + (v57 >> 24)) ^ v18[15] ^ v57 ^ (79 * BYTE3(v57));
  v17[164] = (((v57 ^ 0xAF) - 46) ^ ((v57 ^ 0x19) + 104) ^ ((v57 ^ 0xB6) - 55)) - 59;
  v17[165] = v56;
  LODWORD(v57) = ((*(*v13 + (*v15 & 0xFFFFFFFFE6F073DCLL)) ^ (v18 + 14)) & 0x7FFFFFFF) * v8;
  v58 = (v57 ^ WORD1(v57)) * v8;
  LOBYTE(v58) = *(v10 + (v58 >> 24)) ^ *(v9 + (v58 >> 24)) ^ *(a1 + (v58 >> 24)) ^ v18[14] ^ v58 ^ (79 * BYTE3(v58));
  v17[167] = (((v58 ^ a5) + 27) ^ ((v58 ^ 0x39) + 18) ^ ((v58 ^ 0xB) + 36)) + 52;
  v17[168] = v39;
  LODWORD(v58) = ((*(*v13 + (*v15 & 0xFFFFFFFFE6F073DCLL)) ^ (v18 + 13)) & 0x7FFFFFFF) * v8;
  v59 = (v58 ^ WORD1(v58)) * v8;
  LOBYTE(v59) = *(v10 + (v59 >> 24)) ^ *(v9 + (v59 >> 24)) ^ *(a1 + (v59 >> 24)) ^ v18[13] ^ v59 ^ (79 * BYTE3(v59));
  v17[170] = (v59 ^ ((v59 ^ 0x8B) + 34) ^ ((v59 ^ 0x5E) - 11) ^ 0x55) + 103;
  v31[171] = STACK[0x6947];
  LODWORD(v59) = ((*(*v13 + (*v15 & 0xFFFFFFFFE6F073DCLL)) ^ (v18 + 12)) & 0x7FFFFFFF) * v8;
  v60 = (v59 ^ WORD1(v59)) * v8;
  LOBYTE(v60) = *(v10 + (v60 >> 24)) ^ *(v9 + (v60 >> 24)) ^ *(a1 + (v60 >> 24)) ^ v18[12] ^ v60 ^ (79 * BYTE3(v60));
  LODWORD(v39) = STACK[0xF10] - 34036;
  v31[173] = (((v60 ^ 0x52) - 123) ^ ((v60 ^ 0x22) - 11) ^ ((v60 ^ 0x70) - 89)) + 60;
  v31[174] = STACK[0x7E7F];
  return (*(STACK[0xF18] + 8 * (v39 ^ 0x3AFD)))();
}

uint64_t sub_10065DBEC()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x8100)))(STACK[0x4DF0] + v0);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10065DC18@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x10ED8]) = (v1 - 29457) ^ (155453101 * ((2 * ((&STACK[0x10000] + 3800) & 0x139CA428) - (&STACK[0x10000] + 3800) + 1818450898) ^ 0x8A45401D));
  STACK[0x10EE0] = a1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x41E7)))(&STACK[0x10ED8]);
  *(v2 + 280) = 0;
  return (*(v3 + 8 * (v1 - 7911)))(v4);
}

uint64_t sub_10065DD0C()
{
  v5 = v0 - 681949161;
  if ((v0 - 681949161) >= 0x19)
  {
    v6 = -681949186;
  }

  else
  {
    v6 = -681949161;
  }

  v7 = (v0 + v6 + 25) % 0x19u;
  v8 = *(v2 + 4 * v5) - 686988095 * *(v3 + 4 * v7);
  *(v2 + 4 * v5) = v8;
  *(v3 + 4 * v7) += 478674045 * v8;
  return (*(v4 + 8 * ((1010 * (v0 != 681949192)) ^ v1)))();
}

uint64_t sub_10065DDAC()
{
  v4 = STACK[0x11B0];
  *(v3 - 240) = STACK[0x650];
  *(v3 - 256) = v4;
  *(v3 - 248) = (v0 + 329029684) ^ (1112314453 * ((2 * (v1 & 0xCC4D2A8) - v1 + 1933258067) ^ 0x9C6D078A));
  v5 = (*(v2 + 8 * (v0 ^ 0xAF1C)))(v3 - 256);
  STACK[0x11B0] = 0;
  return (*(v2 + 8 * v0))(v5);
}

uint64_t sub_10065DF6C()
{
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((&STACK[0x10000] + 3800) ^ 0xE6261BCF) + 296762686;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 25854)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (((STACK[0x9560] == 0) * (((v0 ^ 0xEEF7) - 964017284) ^ 0xC68ACEB5)) ^ v0)))(v2);
}

uint64_t sub_10065E200@<X0>(unint64_t a1@<X8>)
{
  v3 = 634647737 * ((2 * ((&STACK[0x10000] + 3800) & 0x374EA8B8) - (&STACK[0x10000] + 3800) + 1219581760) ^ 0x252778BC);
  LODWORD(STACK[0x10ED8]) = ((((*(v1 - 0x217E172EFA1E804) ^ 0xC51BF9C5) + 988022331) ^ ((*(v1 - 0x217E172EFA1E804) ^ 0x60DDFEE4) - 1625161444) ^ (((v2 - 29613) | 0xD2) - 1276379426 + (*(v1 - 0x217E172EFA1E804) ^ 0x4C13C030))) - 54746966) ^ v3;
  STACK[0x10EF0] = a1;
  STACK[0x10F00] = v1 - 0x217E172EFA1E800;
  LODWORD(STACK[0x10EF8]) = v2 - v3 - 6252;
  STACK[0x10EE8] = &STACK[0x4AB4];
  STACK[0x10EE0] = &STACK[0x39F0];
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 ^ 0x7909)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v2))(v5);
}

uint64_t sub_10065E3DC()
{
  v1 = *STACK[0x85E0];
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((((&STACK[0x10000] + 3800) | 0x3DD2E2D8) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xC22D1D20)) ^ 0xDBF4F917) - 1077482732;
  STACK[0x10ED8] = v1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 - 1374219564)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * (((v0 < 0x63339178) * ((v0 - 1374235835) ^ 0x91A7)) ^ (v0 - 1374268729))))(v3);
}

uint64_t sub_10065E4AC()
{
  v2 = STACK[0x66A0];
  *(*v2 + 16) = v1;
  return (*(STACK[0xF18] + 8 * (((((v0 + 66) ^ (*(*v2 + 16) == 0)) & 1) * ((v0 - 1225366843) & 0x4909EFFD ^ 0x6762)) ^ (v0 + 16755))))();
}

uint64_t sub_10065E688()
{
  v4 = *(*(v1 + v2) + v3);
  v5 = STACK[0x24C4];
  v6 = LODWORD(STACK[0x33F0]) ^ 0xC6385557;
  STACK[0x8FE8] = v4;
  LODWORD(STACK[0x44A8]) = v5;
  LODWORD(STACK[0x704C]) = -2116087577;
  LODWORD(STACK[0x7FD8]) = 1970496882;
  LODWORD(STACK[0x4A8C]) = v6;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * ((5933 * (v0 > 0x24F76C24)) ^ (v0 + 493905145))))();
}

uint64_t sub_10065E790(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(STACK[0xF18] + 8 * (((v2 == 0) * v3) ^ v1)))();
}

uint64_t sub_10065E90C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v15 = *(*v13 + (*v11 & v7));
  v16 = ((((v15 ^ v3) & 0x7FFFFFFF) * v8) ^ ((((v15 ^ v3) & 0x7FFFFFFFu) * v8) >> 16)) * v8;
  v17 = ((((((v15 ^ v3) & 0x7FFFFFFF) * v8) ^ ((((v15 ^ v3) & 0x7FFFFFFFu) * v8) >> 16)) * v8) >> 24) * v9;
  v18 = ((((v15 ^ (v6 + a2)) & 0x7FFFFFFF) * v8) ^ ((((v15 ^ (v6 + a2)) & 0x7FFFFFFFu) * v8) >> 16)) * v8;
  *(v5 + a2) = *(v12 + (v16 >> 24)) ^ *(v4 + a2) ^ *((v16 >> 24) + v14 + 2) ^ *((v16 >> 24) + v10 + 1) ^ *(v12 + (v18 >> 24)) ^ *((v18 >> 24) + v14 + 2) ^ *((v18 >> 24) + v10 + 1) ^ v16 ^ v18 ^ v17 ^ (BYTE3(v18) * v9);
  return (*(STACK[0xF18] + 8 * (((a2 == -15) * a1) ^ v2)))();
}

uint64_t sub_10065E9D8()
{
  v1 = v0 - 30212;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10065EB30()
{
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((2 * ((&STACK[0x10000] + 3800) & 0x3A986C88) - (&STACK[0x10000] + 3800) - 983067787) ^ 0x234188BA) + 296783349;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 46517)))(&STACK[0x10ED8]);
  v3 = STACK[0x2BD8];
  v4 = STACK[0x6918];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v3;
  LODWORD(STACK[0x655C]) = v4;
  LODWORD(STACK[0x884C]) = -1157816302;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10065EC80()
{
  v1 = STACK[0x7D48];
  v2 = STACK[0x2918];
  STACK[0x10EE8] = STACK[0x4AC8] + ((v0 - 18928) | 0xC20u) + LODWORD(STACK[0x3C94]) + LODWORD(STACK[0x2048]) - 1381007337;
  STACK[0x10EE0] = v2;
  STACK[0x10ED8] = v1;
  LODWORD(STACK[0x10EF0]) = v0 - 193924789 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x233CE38) + 36949561) ^ 0xB488FC5F) + 10066;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0x85E1)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((14131 * (LODWORD(STACK[0x10EF4]) == -371865839)) ^ v0)))(v4);
}

uint64_t sub_10065EEA4()
{
  v3 = (v1 + 8181) % 0x5Eu;
  HIDWORD(v5) = *(v2 + 4 * ((v1 - 2107170884) % 0x5Eu));
  LODWORD(v5) = HIDWORD(v5);
  v4 = v5 >> 27;
  v6 = *(v2 + 4 * v3) ^ __ROR4__(*(v2 + 4 * ((((v0 - 6350) ^ 0x826709A9) + v1) % 0x5E)), 29);
  HIDWORD(v5) = *(v2 + 4 * ((v1 - 2107170982) % 0x5Eu));
  LODWORD(v5) = HIDWORD(v5);
  v7 = (((v6 ^ 0xE2B78ED3) + 211716699) ^ ((v6 ^ 0xCFC46C4A) + 569206980) ^ ((v6 ^ 0xC3EB660D) + 767713925)) + (((v4 ^ 0xF884C4E1) - 7918912) ^ ((v4 ^ 0x8799A075) - 2137371092) ^ ((v4 ^ 0xD08D74CC) - 678520173)) - ((((v5 >> 9) ^ 0x4685C4A9) - 1574825925) ^ (((v5 >> 9) ^ 0xFF140115) + 464770439) ^ (((v5 >> 9) ^ 0xF8F37BFC) + 475311984)) + 843200940;
  v8 = ((2 * (v7 ^ 0x22214ECE)) ^ 0xD039FB9A) & (v7 ^ 0x22214ECE) ^ (2 * (v7 ^ 0x22214ECE)) & 0xE81CFDCC;
  v9 = (v7 ^ 0xA2392ACA) & (2 * (v7 & 0xCA3DB303)) ^ v7 & 0xCA3DB303;
  v10 = ((4 * (v8 ^ 0x28040445)) ^ 0xA073F734) & (v8 ^ 0x28040445) ^ (4 * (v8 ^ 0x28040445)) & 0xE81CFDCC;
  v11 = (v10 ^ 0xA010F500) & (16 * ((v8 ^ 0x4018D808) & (4 * v9) ^ v9)) ^ (v8 ^ 0x4018D808) & (4 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x480C08C9)) ^ 0x81CFDCD0) & (v10 ^ 0x480C08C9) ^ (16 * (v10 ^ 0x480C08C9)) & 0xE81CFDC0;
  v13 = v11 ^ 0xE81CFDCD ^ (v12 ^ 0x800CDC00) & (v11 << 8);
  *(v2 + 4 * v3) = v7 ^ (2 * ((v13 << 16) & 0x681C0000 ^ v13 ^ ((v13 << 16) ^ 0x7DCD0000) & (((v12 ^ 0x6810210D) << 8) & 0x681C0000 ^ (((v12 ^ 0x6810210D) << 8) ^ 0x1CFD0000) & (v12 ^ 0x6810210D) ^ 0x60000000))) ^ 0xF60C81B;
  return (*(STACK[0xF18] + 8 * ((6925 * (v1 == 2107171202)) ^ v0)))();
}

uint64_t sub_10065F1C0()
{
  v4 = (v3 - 1);
  if ((~v1 & 0x1Fu) >= ((v3 - 1) & 0x1Fu))
  {
    v5 = STACK[0xD60] + (v2 << ((v0 - 64) & 0x3F ^ 0x39u)) + (v1 << ((v0 + 64) & 0xBF ^ 0x3Cu));
    v6 = v5 + (v4 << 7) >= v5;
  }

  else
  {
    v6 = 0;
  }

  v8 = !v6 || v4 > 0x1F;
  return (*(STACK[0xF18] + 8 * (v8 | (4 * v8) | (v0 - 26467))))();
}

uint64_t sub_10065F260()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  STACK[0x8BB0] = 0;
  return (*(v1 + 8 * (v0 - 12197)))(v2);
}

uint64_t sub_10065F3D8@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0x52B0];
  STACK[0xA228] = STACK[0x52B0];
  *v2 = *(v1 - 0x10A99C80114D144BLL);
  v3 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * a1);
  return (*(v3 + 8 * ((a1 ^ 0x8E3) + a1)))();
}

uint64_t sub_10065F4BC()
{
  v1 = STACK[0xF18];
  STACK[0x2850] = *(STACK[0xF18] + 8 * (v0 - 32934));
  return (*(v1 + 8 * ((v0 + 74) ^ (v0 - 32934))))();
}

uint64_t sub_10065F548()
{
  v1 = STACK[0xF18];
  STACK[0x4CD0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0xB49A ^ (v0 + 37773))))();
}

uint64_t sub_10065F750@<X0>(uint64_t a1@<X8>)
{
  v6 = (a1 + 4 * v1);
  v7 = (v4 + 4 * v1);
  v8 = vaddq_s32(v7[1], v6[1]);
  *v7 = vaddq_s32(*v7, *v6);
  v7[1] = v8;
  return (*(v5 + 8 * (((v1 != 24) * v3) ^ v2)))();
}

uint64_t sub_10065F85C()
{
  if (STACK[0x6C80])
  {
    v2 = STACK[0x2868] == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v2 || v1 != -371865839;
  return (*(STACK[0xF18] + 8 * ((246 * (((v0 + 41) ^ v4) & 1)) ^ v0)))();
}

uint64_t sub_10065F8D0@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v5 = (v4 ^ 0xFAEFFB7FDEDFFFFBLL) + (a1 - 13202) - 0x5AEF9A170A701909 + ((v4 << (((a1 + 30) & 0x7Bu) - 58)) & 0x1BDBFFFF6);
  v6 = ((2 * (v3 - 1)) & 0x571FEFFE) + ((v3 - 1) ^ 0x5FFF9E972B8FF7FFLL);
  *(v6 + v2 - 0x5FFF9E972B8FF7FFLL) = *(a2 + v5 + v6);
  return (*(STACK[0xF18] + 8 * (a1 ^ (101 * (v3 != 1)))))();
}

uint64_t sub_10065FA94()
{
  v1 = (STACK[0xF10] + 182981316) & 0xF517E6DD;
  v2 = STACK[0xF10] - 1630;
  v3 = v0 == ((STACK[0xF10] + 2035247931) & 0x86B00BEF ^ 0xE9D5C577);
  LOBYTE(STACK[0x851F]) = v3;
  return (*(STACK[0xF18] + 8 * ((v3 * (v1 ^ 0xBB78)) ^ v2)))();
}

uint64_t sub_10065FBF4@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 136) = v1;
  *(a1 + 8) = v3;
  *(a1 + 4) += (v2 - 1598) ^ 0x52CE;
  v4 = STACK[0x9570];
  STACK[0x5F58] = STACK[0x9570];
  STACK[0x9570] = 0;
  return (*(STACK[0xF18] + 8 * (((v4 == 0) * (v2 - 22726)) ^ v2)))();
}

uint64_t sub_10065FCD0@<X0>(void *a1@<X8>)
{
  v3 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x4BA6E21C)) ^ 0x4BA6E21ELL;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  LODWORD(v10) = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  STACK[0xC110] = 0;
  STACK[0xC118] = v1;
  v11 = 16777619 * ((1269228062 * v10 + 7) ^ (1269228062 * v10)) % 7;
  v12 = *(&STACK[0xC110] | v11);
  *(&STACK[0xC110] | v11) = 0;
  LOBYTE(STACK[0xC117]) = v12;
  v13 = 16777619 * ((1269228062 * v10 + 6) ^ (1269228062 * v10)) % 6;
  v14 = *(&STACK[0xC110] | v13);
  *(&STACK[0xC110] | v13) = STACK[0xC116];
  LOBYTE(STACK[0xC116]) = v14;
  v15 = 16777619 * ((1269228062 * v10 + 5) ^ (1269228062 * v10)) % 5;
  v16 = *(&STACK[0xC110] | v15);
  *(&STACK[0xC110] | v15) = STACK[0xC115];
  LOBYTE(STACK[0xC115]) = v16;
  v17 = STACK[0xC110];
  LOBYTE(STACK[0xC110]) = STACK[0xC114];
  LOBYTE(STACK[0xC114]) = v17;
  v18 = 16777619 * ((1269228062 * v10 + 3) ^ (1269228062 * v10)) % 3;
  v19 = *(&STACK[0xC110] | v18);
  *(&STACK[0xC110] | v18) = STACK[0xC113];
  LOBYTE(STACK[0xC113]) = v19;
  v20 = STACK[0xC111];
  LOBYTE(STACK[0xC112]) = STACK[0xC110];
  LOWORD(STACK[0xC110]) = v20;
  v21 = vdup_n_s32(1269228062 * v10);
  v22.i32[0] = v21.i32[0];
  v22.i32[1] = (1269228062 * v10) | 1;
  v23 = veor_s8(vmul_s32(v22, v21), v21);
  STACK[0xC110] = vmla_s32(v23, STACK[0xC110], vdup_n_s32(0x1000193u));
  STACK[0xC118] ^= STACK[0xC110];
  STACK[0xC118] = vmul_s32(vsub_s32(STACK[0xC118], v23), vdup_n_s32(0x359C449Bu));
  v24 = STACK[0xC11A];
  LOWORD(STACK[0xC119]) = STACK[0xC118];
  LOBYTE(STACK[0xC118]) = v24;
  v25 = (&STACK[0xC118] | v18);
  LOBYTE(v20) = *v25;
  *v25 = STACK[0xC11B];
  LOBYTE(STACK[0xC11B]) = v20;
  LOBYTE(v25) = STACK[0xC118];
  LOBYTE(STACK[0xC118]) = STACK[0xC11C];
  LOBYTE(STACK[0xC11C]) = v25;
  v26 = (&STACK[0xC118] | v15);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC11D];
  LOBYTE(STACK[0xC11D]) = v25;
  v27 = (&STACK[0xC118] | v13);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xC11E];
  LOBYTE(STACK[0xC11E]) = v26;
  v28 = (&STACK[0xC118] | v11);
  v29 = *v28;
  *v28 = STACK[0xC11F];
  LOBYTE(STACK[0xC11F]) = v29;
  v30 = STACK[0xC118];
  v31 = (1269228062 * STACK[0xC118]) ^ v10;
  for (i = 1; i != 273; ++i)
  {
    v33 = 16777619 * ((v31 + i) ^ v31) % i;
    v34 = *(v30 + 8 * v33) ^ *(v30 + 8 * i);
    *(v30 + 8 * i) = v34;
    v35 = *(v30 + 8 * v33) ^ v34;
    *(v30 + 8 * v33) = v35;
    *(v30 + 8 * i) ^= v35;
  }

  v36 = 0;
  v37 = xmmword_100BC7620;
  v38 = xmmword_100BC7630;
  v39 = xmmword_100BC7640;
  v40 = xmmword_100BC7650;
  v41.i64[0] = 0x9B009B009B009BLL;
  v41.i64[1] = 0x9B009B009B009BLL;
  v42.i64[0] = 0x1000000010;
  v42.i64[1] = 0x1000000010;
  v43 = vdupq_n_s32(v31);
  do
  {
    v44 = *(v30 + v36);
    v45 = vmovl_high_u8(v44);
    v46 = vmovl_u8(*v44.i8);
    v57.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v39, v43), vsubq_s32(v39, v43)), v43), vmull_high_u16(v46, v41));
    v57.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v38, v43), vsubq_s32(v38, v43)), v43), vmull_u16(*v45.i8, 0x9B009B009B009BLL));
    v57.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v40, v43), vsubq_s32(v40, v43)), v43), vmull_u16(*v46.i8, 0x9B009B009B009BLL));
    v57.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v37, v43), vsubq_s32(v37, v43)), v43), vmull_high_u16(v45, v41));
    *(v30 + v36) = vqtbl4q_s8(v57, xmmword_100BC7660);
    v36 += 16;
    v40 = vaddq_s32(v40, v42);
    v39 = vaddq_s32(v39, v42);
    v38 = vaddq_s32(v38, v42);
    v37 = vaddq_s32(v37, v42);
  }

  while (v36 != 2176);
  v47 = 0;
  v48 = xmmword_100F52AB0;
  v49 = xmmword_100F52AC0;
  v50 = vdupq_n_s32(v31);
  v51 = v30 + 2176;
  v52.i64[0] = 0x9B009B009B009BLL;
  v52.i64[1] = 0x9B009B009B009BLL;
  v53.i64[0] = 0x800000008;
  v53.i64[1] = 0x800000008;
  do
  {
    v54 = vmovl_u8(*(v51 + v47));
    v56.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v48, v50), vsubq_s32(v48, v50)), v50), vmull_high_u16(v54, v52));
    v56.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v49, v50), vsubq_s32(v49, v50)), v50), vmull_u16(*v54.i8, 0x9B009B009B009BLL));
    *(v51 + v47) = vqtbl2q_s8(v56, xmmword_100F52AD0).u64[0];
    v49 = vaddq_s32(v49, v53);
    v48 = vaddq_s32(v48, v53);
    v47 += 8;
  }

  while (v47 != 8);
  *a1 = STACK[0xC118];
  return (*(STACK[0xF18] + 8 * ((((22 * (v2 ^ 0x6D1E46E5)) ^ 0xD11F) * (v2 != -255456502)) ^ (v2 - 1830694729))))(v48, v49);
}

uint64_t sub_1006602E4()
{
  v1 = STACK[0xF18];
  STACK[0x3988] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 ^ 0x6DFB3BC1u) > 0x1C5A8777) * ((v0 + 46827) ^ 0xD3A1)) ^ (v0 - 3581))))();
}

uint64_t sub_1006603B4(uint64_t a1)
{
  STACK[0xA00] = v2;
  STACK[0xA10] = v1;
  v3 = STACK[0xE40];
  v4 = (LODWORD(STACK[0xE40]) - 24235) | 0xB018;
  LODWORD(STACK[0xD90]) = *(*STACK[0xE50] + ((v4 ^ 0x7D860BB2u) & *STACK[0xE58]));
  v5 = *(STACK[0xF18] + 8 * v3);
  STACK[0xE60] = 0xA674B79E96E690D1;
  STACK[0xDC0] = 0x20699479B5ACB1D9;
  LODWORD(STACK[0xDA0]) = v4;
  LODWORD(STACK[0xE30]) = v4 - 3617;
  return v5(a1, 3230401611);
}

uint64_t sub_10066051C()
{
  if (LODWORD(STACK[0x2210]))
  {
    v0 = STACK[0x8540] == 0;
  }

  else
  {
    v0 = 1;
  }

  v1 = v0;
  return (*(STACK[0xF18] + 8 * ((v1 * ((STACK[0xF10] - 2304) ^ 0x81C1)) ^ (STACK[0xF10] - 2426))))();
}

uint64_t sub_100660604()
{
  LODWORD(STACK[0x77CC]) = v1;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 - 31048 + v0 + 30243)))();
}

uint64_t sub_100660650(uint64_t a1, int a2)
{
  v2 = LODWORD(STACK[0x72DC]);
  v3 = STACK[0xF18];
  STACK[0x7418] = *(STACK[0xF18] + 8 * a2);
  return (*(v3 + 8 * ((((a2 - 2108) | 0x4820) - 10254) ^ a2)))(v2, &STACK[0x6660], &STACK[0x9708], &STACK[0x7DF8], STACK[0x5D0]);
}

uint64_t sub_10066078C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, char a7, int a8)
{
  v18 = ((v9 + v10) ^ v12) + v11;
  v19 = (a2 & (2 * v18)) + (v18 ^ a1);
  v20 = ((a4 + v19) ^ *(*v16 + (*v15 & a5))) & 0x7FFFFFFF;
  v21 = ((v20 * a6) ^ ((v20 * a6) >> 16)) * a6;
  *(a4 + v19) = *(v17 + (v21 >> 24)) ^ *(v19 + v8 + a3) ^ *((v21 >> 24) + v13 + 6) ^ *((v21 >> 24) + v14 + 5) ^ v21 ^ (BYTE3(v21) * a7);
  return (*(STACK[0xF18] + 8 * (((v18 != 0) * a8) ^ v9)))();
}

uint64_t sub_1006608E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10] + 11600;
  v4 = STACK[0xF10] - 34160;
  LODWORD(STACK[0xA074]) = STACK[0x98D4] & 0xFFFFFFFE ^ 0xE9D5C711;
  v5 = (v3 ^ 0xB8ED) % (LODWORD(STACK[0xA07C]) ^ 0xC9EA20D1);
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x1DFD)))(a1, a2, a3, v3, ((((v5 - ((2 * v5) & 0x30) - 1886040168) ^ 0xFF429669) + 12413335) ^ (((v5 - ((2 * v5) & 0x30) - 1886040168) ^ 0x611B5FD9) - 1629183961) ^ (((v5 - ((2 * v5) & 0x30) - 1886040168) ^ 0x11CC8628) - 298616360)) - 808197661);
}

uint64_t sub_100660BB8()
{
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 + 3537)))(v1 ^ 0xE9D5C711);
  *(v0 + 162) = v4;
  return (*(v3 + 8 * (((v4 != 0) * (v2 - 83916 + ((v2 - 12956) | 0x110))) ^ v2)))();
}

uint64_t sub_100660CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = STACK[0xF18];
  STACK[0x5070] = *(STACK[0xF18] + 8 * v9);
  STACK[0x74E0] = v6;
  STACK[0x2A80] = v11;
  if (v12)
  {
    v14 = v8 == 0;
  }

  else
  {
    v14 = 1;
  }

  v17 = v14 || a6 == 0 || v10 == 0;
  return (*(v13 + 8 * ((v17 * ((v7 - 12120) ^ (v7 + 24) ^ 0x31CA)) ^ v7)))(STACK[0xE58]);
}

uint64_t sub_100660E58()
{
  *(STACK[0x6A88] + 8 * STACK[0x8198]) = *STACK[0x66C8];
  v1 = STACK[0xF18];
  STACK[0x1968] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 7464) ^ 0x8AB) + v0)))();
}

uint64_t sub_100660EF4()
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = -2052509051;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10066100C@<X0>(int a1@<W8>)
{
  v8 = STACK[0x376C];
  v9 = STACK[0x84D0];
  v10 = STACK[0x3FB0];
  v11 = (v5 + 24 * v6 - 0x7183895F79D12E8);
  *v11 = v2;
  v11[1] = v10;
  *&v3[6 * v6 + 4] = v9;
  v11[4] = v8;
  *v3 = v4 + 1;
  v12 = *v1;
  LODWORD(STACK[0x1360]) = v12;
  v12 -= 2018442792;
  v13 = *(v7 + 45);
  v14 = v13 - 1702576619;
  v15 = v13 > -444907030;
  v16 = (v12 < 444907029) ^ v15;
  v17 = v12 < v14;
  if (v16)
  {
    v17 = v15;
  }

  return (*(STACK[0xF18] + 8 * ((v17 * (((a1 + 2000392582) & 0x88C47DEE) + 2691)) ^ a1)))();
}

uint64_t sub_1006611B8()
{
  v0 = STACK[0xF10] + 8800;
  v1 = (STACK[0xF10] + 511008818) & 0xE18A5EDE;
  v2 = (STACK[0xF10] - 1298407372) & 0x4D63DEDC;
  *STACK[0x9368] = STACK[0x4904];
  return (*(STACK[0xF18] + 8 * (((LODWORD(STACK[0x78E4]) != (v2 ^ 0x5944D606)) * (v1 - 18971)) ^ v0)))();
}

uint64_t sub_100661348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = a65 - 5496;
  v67 = STACK[0x5F8];
  v68 = 5000;
  if ((STACK[0x5F8] - 0x5068DD8FAAB0342BLL) > 5000)
  {
    v68 = STACK[0x5F8] - 0x5068DD8FAAB0342BLL;
  }

  STACK[0x260] = v68;
  STACK[0x380] = STACK[0x4D8];
  STACK[0x2E8] = STACK[0x488];
  STACK[0x2D8] = STACK[0x5C8];
  v80 = STACK[0x5A8];
  v81 = STACK[0x510];
  v76 = STACK[0x458];
  v77 = STACK[0x610];
  v78 = STACK[0x478];
  v79 = STACK[0x4F0];
  v75 = STACK[0x428];
  STACK[0x218] = STACK[0x5B0];
  STACK[0x308] = STACK[0x620];
  STACK[0x310] = STACK[0x538];
  STACK[0x248] = STACK[0x568];
  STACK[0x250] = STACK[0x450];
  STACK[0x280] = v67 - 0x5068DD8FAAB034F4;
  if (v67 >= 0x5068DD8FAAB03503)
  {
    v69 = v67 + 0x5068DD8FAAB034F6;
  }

  else
  {
    v69 = 0xA0D1BB1F556069F9;
  }

  v70 = (((v69 ^ 0x25A277390B51FD4BLL) + (v66 ^ 0x7A8C33D9A1CE6941)) ^ v69 ^ ((v69 ^ 0xA43C580B960A0B41) - 0x4EDE314C36A62A7) ^ ((v69 ^ 0x8EA061DA33DCE811) - 0x2E71DAC566BC81F7) ^ ((v69 ^ 0xAFEFF5F7FBE777FDLL) - 0xF3E4EE8AE871E1BLL)) & 0xFFFFFFFFFFFFFFFCLL;
  v71 = ((v70 ^ 0x763C848920D8001CLL) + 0x71799D4861AE2D28) ^ ((v70 ^ 0x4F76EA2D295E19F7) + 0x4833F3EC682834CDLL) ^ ((v70 ^ 0x999BD5BB5CE6700FLL) - 0x61213385E26FA2CBLL);
  STACK[0x268] = v68;
  v72 = ((v68 & 0x7FFFFFFFFFFFFFFCLL ^ 0x21AF70CE5262C0E6) - 0x4491B34FF8AB95FDLL) ^ ((v68 & 0x7FFFFFFFFFFFFFFCLL ^ 0xB21B12A44E8CCAD1) + 0x28DA2EDA1BBA6036) ^ ((v68 & 0x7FFFFFFFFFFFFFFCLL ^ 0x93B4626A1CEE0A37) + 0x9755E1449D8A0D4);
  STACK[0x2F8] = v72 - 0x5DDEDE6F9016A785;
  v73 = ((((v72 + 1877563515) ^ 0xDB00FD8E) - 505478902) ^ (v72 + 1877563515) ^ (((v72 + 1877563515) ^ 0x9F49EF93) - 1516891371) ^ (((v72 + 1877563515) ^ 0x3E8E647A) + 72456446) ^ (((v72 + 1877563515) ^ 0xBFE7751F) - 2059892327)) & 0xFFFFFFFC;
  STACK[0x210] = v72 + 0x653EC381AAC95503;
  STACK[0x240] = (((v73 ^ 0xEA8853137C1C56CCLL) + 0x159D4EADEA450F34) ^ ((v73 ^ 0x2F93CAB7A61AE16ALL) - 0x2F7928F6CFBC476ALL) ^ ((v73 ^ 0xC51B99A41F26B4DELL) + 0x3A0E841A897FED22)) + 0xEAE241AC86A54FLL;
  return (*(v65 + 8 * (v66 ^ 0x1A6A)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v71 - 0x4C4EB629FFDC4076, v71 - 0x6C72904976B62C03, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, v75, a39, v76, v77, a42, a43, v78, v79, v80, v81, a48);
}

uint64_t sub_1006617E8()
{
  v1 = v0 ^ 0x641;
  v2 = v0 ^ 0x5DA5;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * v2))(20) == 0;
  return (*(v3 + 8 * (((((v1 - 65) ^ v4) & 1) * ((v1 - 35121) ^ 0x849)) ^ v1)))();
}

uint64_t sub_100661844()
{
  v3 = 0;
  v4 = *(*STACK[0xE50] + (*v2 & 0xFFFFFFFFCA475F48)) ^ 0xCA475F4BLL;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = v1 - 0x10A99C80114D1487;
  v12 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  v13 = v12 ^ (-901292213 * (v1 - 290264199)) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v12 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
  v14 = vdupq_n_s32(v13);
  v15 = xmmword_100BC7620;
  v16 = xmmword_100BC7630;
  v17 = xmmword_100BC7640;
  v18 = xmmword_100BC7650;
  v19.i64[0] = 0x9393939393939393;
  v19.i64[1] = 0x9393939393939393;
  v20.i64[0] = 0x1000000010;
  v20.i64[1] = 0x1000000010;
  do
  {
    v21 = *(v11 + v3);
    v28.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v21, xmmword_100BC7690), v14), vmulq_s32(vaddq_s32(v17, v14), vsubq_s32(v17, v14)));
    v28.val[0] = veorq_s8(veorq_s8(vqtbl1q_s8(v21, xmmword_100BC76A0), v14), vmulq_s32(vaddq_s32(v18, v14), vsubq_s32(v18, v14)));
    v28.val[2] = veorq_s8(veorq_s8(vqtbl1q_s8(v21, xmmword_100BC7680), v14), vmulq_s32(vaddq_s32(v16, v14), vsubq_s32(v16, v14)));
    v28.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v21, xmmword_100BC7670), v14), vmulq_s32(vaddq_s32(v15, v14), vsubq_s32(v15, v14)));
    *(v11 + v3) = vmulq_s8(vqtbl4q_s8(v28, xmmword_100BC7660), v19);
    v3 += 16;
    v18 = vaddq_s32(v18, v20);
    v17 = vaddq_s32(v17, v20);
    v16 = vaddq_s32(v16, v20);
    v15 = vaddq_s32(v15, v20);
  }

  while (v3 != 384);
  v22 = (v1 - 0x10A99C80114D130FLL);
  for (i = 49; i > 2; --i)
  {
    v24 = 16777619 * ((i - 2 + v13) ^ v13) % (i - 2);
    v25 = *(v11 + 8 * v24) ^ *v22;
    *v22 = v25;
    v26 = *(v11 + 8 * v24) ^ v25;
    *(v11 + 8 * v24) = v26;
    *v22-- ^= v26;
  }

  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100661A90()
{
  v0 = STACK[0xF10] - 32447;
  v1 = STACK[0xF18];
  STACK[0x9958] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 8990)))();
}

uint64_t sub_100661BDC()
{
  v1 = *(STACK[0x60D8] + 8);
  STACK[0x85E0] = STACK[0x60D8] + 8;
  STACK[0x10EE0] = v1;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762658355) ^ (906386353 * ((~(&STACK[0x10000] + 3800) & 0xDF3F4003 | (&STACK[0x10000] + 3800) & 0x20C0BFF8) ^ 0xEE3E8D27));
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0xB57B)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * (((*(STACK[0x6858] + 312) == ((v0 + 1374238772) ^ 0x51E9B7F6)) * (557 * (v0 ^ 0x7FF5) - 30609)) ^ v0)))(v3);
}

uint64_t sub_100661D64()
{
  v2 = (v0 - 799121232) & 0x2FA18B7B;
  LODWORD(STACK[0xED0]) = v2;
  return (*(STACK[0xF18] + 8 * (((((v0 + 2130454668) & 0x8B5BBDF5 ^ 0xF5A7F170) + v2) * (v1 == 0)) ^ v0)))();
}

uint64_t sub_100661DC8()
{
  STACK[0x9C60] = STACK[0x8590] + 64;
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x741 ^ (3 * (v0 ^ 0xE0)))))();
}

uint64_t sub_100661E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = (((v8 ^ 0x624D136F) + v9) ^ ((v8 ^ 0x97B7EF21) + 1749553375) ^ (((((v7 - 528273278) & 0x1F7C666F) + 472848690) ^ v8) - 472857439)) + 597877799;
  v12 = v6 + (((a6 ^ 0x787A2E81) - 2021273217) ^ ((a6 ^ 0x70813833) - 1887516723) ^ ((a6 ^ 0xE12ED1A3) + 517025373));
  v13 = v12 < v10;
  v14 = v11 < v12;
  if (v13 != v11 < v10)
  {
    v14 = v13;
  }

  return (*(STACK[0xF18] + 8 * ((58 * !v14) ^ (v7 - 27755))))();
}

uint64_t sub_1006620CC()
{
  v1 = STACK[0xF10] - 16965;
  *(STACK[0x2F50] + LODWORD(STACK[0x6E94])) = 90 * v0 + (LOBYTE(STACK[0x61DF]) + 122) * (v0 - 74) + (((STACK[0xF10] - 24) | 0x9C) ^ 0x43);
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100662248()
{
  v1 = STACK[0x8590];
  v2 = STACK[0x9070];
  v2[38] = *STACK[0x8590];
  v2[35] = v1[2];
  v2[36] = v1[3];
  v3 = v1[1];
  STACK[0x7F00] = (v1 + 1);
  v2[39] = v3;
  v4 = STACK[0xF18];
  STACK[0x40F8] = *(STACK[0xF18] + 8 * v0);
  return (*(v4 + 8 * ((((v0 + 2040198292) & 0x8665B3BA) - 35283) ^ v0)))();
}

uint64_t sub_100662320()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 4945) ^ v0)))();
}

uint64_t sub_1006623DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0xF18];
  STACK[0x98B8] = *(STACK[0xF18] + 8 * v3);
  return (*(v4 + 8 * ((v3 + 12628) ^ v3)))(a1, a2, a3, 0x1D54AEB378980557);
}

uint64_t sub_1006624D0()
{
  v1 = STACK[0xF10] - 6256;
  *(STACK[0x7378] + LODWORD(STACK[0x2CD4])) = ((-84 * (STACK[0xF10] ^ 0x74)) ^ 0x47) * v0 + (LOBYTE(STACK[0x3D13]) + 123) * (v0 - 74) + 2;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100662534()
{
  v1 = STACK[0x2BC];
  v2 = STACK[0x358];
  STACK[0x2B0] = STACK[0x358];
  return (*(v0 + 8 * ((26328 * (*(v2 + 24) == v1 - 371893694)) ^ (v1 - 20354))))();
}

uint64_t sub_100662578()
{
  STACK[0x10ED8] = v0;
  LODWORD(STACK[0x10EE4]) = v1 - 1012831759 * ((&STACK[0x10000] + 3800) ^ 0x1093168A) + 38606;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 44614)))(&STACK[0x10ED8]);
  *(STACK[0x78B0] + 152) = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1006625F8()
{
  v2 = (((2 * v0) & 0x7EFD6FD1BB776FD6) + (v0 ^ 0xBF7EB7E8DDBBB7EBLL) + STACK[0x2598]);
  v3 = (v2[(v1 + 5025) ^ 0x408148172244C32ELL] << 56) | (v2[0x4081481722444816] << 48) | (((v2[0x4081481722444817] - ((2 * v2[0x4081481722444817]) & 0x1F8u) + 14265095) << 40) - 0xB0000000000) ^ 0xD9AAFC0000000000 | (((v2[0x4081481722444818] - ((2 * v2[0x4081481722444818]) & 0xBCu) - 380412027) << 32) - 0x2700000000) ^ 0xE9535F5E00000000 | (((v2[0x4081481722444819] - ((2 * v2[0x4081481722444819]) & 0x5E)) << 24) - 0x2EBBDFF0D1000000) ^ 0xD144200F2F000000 | (((v2[0x408148172244481ALL] - 2 * (v2[0x408148172244481ALL] & 0x3F)) << 16) - 0xBF699201FC10000) ^ 0xF40966DFE03F0000 | (((v2[0x408148172244481BLL] - ((2 * v2[0x408148172244481BLL]) & 0xBC)) << 8) + 0x564D9D4C1CB75E00) ^ 0x564D9D4C1CB75E00;
  v4 = v2[0x408148172244481CLL] - ((2 * v2[0x408148172244481CLL]) & 0x156) + 0x552540C778FCD2ABLL;
  STACK[0x6750] = v4 & 0x102000000000C1FELL ^ 0x279CBDDC96023AE5 ^ ((v3 - ((2 * v3) & 0x255A2C96A1EB5E7ELL) + 0x12AD164B50F5AF2BLL) ^ 0x136C89B05C6FB92ALL) & (v4 ^ 0xAADABF3887032D54);
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1006628CC()
{
  v2 = *(v1 + 4544);
  *v2 = **(v1 + 4584);
  v3 = *(v1 + 4448);
  *(v2 + 8) = *(v1 + 4440);
  *(v2 + 16) = v3;
  v5 = (*(v2 + 48) - 1) < 2 && *(v1 + 4456) == ((v0 + 2071875226) & 0x84817DF7) + 18455 + 0x1C004DD1B9696D75;
  return (*(STACK[0xF18] + 8 * ((499 * v5) ^ v0)))();
}

uint64_t sub_100662AD0()
{
  LODWORD(STACK[0x7B54]) = v0;
  LODWORD(STACK[0x10ED8]) = (v1 - 1762643609) ^ (906386353 * ((&STACK[0x10000] + 3800) ^ 0x3101CD24));
  STACK[0x10EE0] = 0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 33937)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * ((15883 * (*STACK[0x970] > ((v1 - 7557) ^ 0x3DB6 ^ ((v1 - 17703) | 0x1414)))) ^ v1)))(v3);
}

uint64_t sub_100662D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  v9 = v8 ^ 0xAE33;
  v10 = ((2 * a8) & 0xE6) + (a8 ^ 0x2FFFEDF6B6FD1B73);
  STACK[0x58F0] = v10 - 0x884417004301832;
  v11 = STACK[0x6230] + 32 * (v10 + ((v9 + 29909) | 0x110u)) + 0x24129204B2A40;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x57A8];
  STACK[0x5D28] = v11;
  LODWORD(STACK[0x4704]) = -1364234748;
  return (*(STACK[0xF18] + 8 * v9))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_100662EC8()
{
  v2 = *(STACK[0xE60] + (v1 - 649173213));
  v3 = ((3 * (v0 ^ 0x13)) ^ 0xF) & v2 ^ 0x5D;
  v2 ^= 0x1Au;
  v4 = (v2 ^ (2 * (v2 & (2 * (v2 & (2 * (v2 & (2 * (v2 & (2 * (v2 & (2 * (v3 ^ (13 * (v0 ^ 0x50) + 12) & v2)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)));
  v5 = 13108 * (((v4 ^ 0x341A) + 19430) ^ ((v4 ^ 0x16E4) + 10524) ^ ((v4 ^ 0x22D0) - 25296)) + 16689;
  v6 = v5 & 0x495D ^ 0x6F9C;
  v7 = ((v5 ^ (2 * ((v5 ^ 0x7226) & (2 * ((v5 ^ 0x7226) & (2 * ((v5 ^ 0x7226) & (2 * ((v5 ^ 0x7226) & (2 * ((v5 ^ 0x7226) & (2 * ((v5 ^ 0x7226) & (2 * ((v5 ^ 0x7226) & (2 * ((v5 ^ 0x7226) & (2 * ((v5 ^ 0x7226) & (2 * ((v5 ^ 0x7226) & (2 * ((v5 ^ 0x7226) & (2 * ((v5 ^ 0x7226) & (2 * ((v5 ^ 0x7226) & (2 * ((v5 ^ 0x7226) & (2 * v5) & 0x644A ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6))) ^ 0x5E30) & 0xFFFE;
  v8 = (((5 * (((v7 ^ 0x1D8D5E62) - 495804002) ^ ((v7 ^ 0xB2B76350) + 1296604336) ^ ((v7 ^ 0xAF3A2A5C) + 12965284)) + 6649126) >> 16) - 28);
  LODWORD(STACK[0xDF0]) = v1 + 5;
  return (*(STACK[0xF18] + 8 * ((238 * ((v8 | ((v8 < 0x48) << 8)) == 72)) ^ v0)))();
}

uint64_t sub_100663178@<X0>(int a1@<W8>)
{
  v1 = a1 + 5800;
  v2 = (a1 + 35478);
  v3 = STACK[0x7690];
  v4 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7B88] = v4;
  STACK[0x29D8] = (v4 + 74);
  STACK[0x7690] = v3 - 35547 + v2;
  STACK[0x4608] = 0x20DE4F5147E73171;
  STACK[0xF88] = 0;
  LODWORD(STACK[0x8370]) = -371865839;
  STACK[0x5C50] = 0x3AE1413A0D5C9732;
  LODWORD(STACK[0x1374]) = -774883557;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10066325C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 ^ 0xC8) & (2 * (a2 & 0xE2)) ^ a2 & 0xE2;
  v4 = (a2 ^ 0x8E3A674C) << (((v2 + 49) & 0x99) + 112);
  v5 = (v4 ^ 0x5C) & (a2 ^ 0x4C) ^ v4 & 0xAE;
  *(a2 + STACK[0xE60] + a1) = *(*(&off_1010A0B50 + v2 - 30866) + ((a2 ^ (2 * (((4 * (v5 ^ 0xA2)) & 0xA0 ^ ((4 * (v5 ^ 0xA2)) ^ 0xA0) & (v5 ^ 0xA2) ^ 0x20) & (16 * ((v5 ^ 8) & (4 * v3) ^ v3)) ^ (v5 ^ 8) & (4 * v3) ^ v3))) ^ 0xE2) - 436489866);
  return (*(STACK[0xF18] + 8 * ((59897 * (a2 == 1974824829)) ^ v2)))();
}

uint64_t sub_100663384()
{
  v4 = (v3 + 6310) | 0x1600;
  v5 = v2 + 32;
  v6 = STACK[0xEC0];
  *v6 = 1;
  v7 = 634647737 * ((-2 - ((~&STACK[0x10ED8] | 0xF44A8B4F) + (&STACK[0x10ED8] | 0xBB574B0))) ^ 0x99DCA4B3);
  LODWORD(STACK[0x10ED8]) = v3 - v7 + 2589;
  STACK[0x10EE0] = v5;
  LOWORD(STACK[0x10EF8]) = v7 + 11298;
  LODWORD(STACK[0x10EE8]) = v7 ^ 0x28D20269;
  STACK[0x10EF0] = STACK[0xE90];
  v8 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v3 + 31400)))(&STACK[0x10ED8]);
  v9 = STACK[0xED0];
  v10 = LODWORD(STACK[0xED0]) ^ 0xD1934C1A;
  LODWORD(STACK[0xEA0]) = v4;
  v11 = 634647737 * (((&STACK[0x10ED8] | 0x7998DEAF) - (&STACK[0x10ED8] & 0x7998DEA8)) ^ 0x140EF153);
  STACK[0x10ED8] = v0;
  STACK[0x10EE8] = v5;
  LODWORD(STACK[0x10EE0]) = v3 - v11 + 4715;
  LODWORD(STACK[0x10EE4]) = ((((v9 ^ 0xA51F9204) + 1524657660) ^ ((v9 ^ 0x9D59190F) + 1655105265) ^ (((v4 + 778855795) ^ ((v3 - 3326) | 0x14F1)) + v10)) + 251750208) ^ v11;
  (*(v8 + 8 * (v3 + 31554)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x10EE8]) = v3 - 353670337 * (((&STACK[0x10ED8] | 0xCA8F5017) + (~&STACK[0x10ED8] | 0x3570AFE8)) ^ 0x7EAEA82B) - 20408;
  STACK[0x10EE0] = (v6 + 1);
  STACK[0x10ED8] = v5;
  v12 = (*(v8 + 8 * (v3 ^ 0x8509)))(&STACK[0x10ED8]);
  return (*(v8 + 8 * ((51998 * (*(v1 + 66) == 6498)) ^ v3)))(v12);
}

uint64_t sub_1006635C0(unsigned int a1, char a2, char a3)
{
  v5 = a1 >> (a3 & 2 ^ (v3 - 52) ^ 0x3D) >> (a3 & a2 ^ 4);
  v6 = -117 - (((v4 ^ 0xF6) - 20) ^ ((v4 ^ 0x36) + 44) ^ ((v4 ^ 0xC6) - 36));
  v7 = (v6 ^ 0x11) & (2 * (v6 & 0x99)) ^ v6 & 0x99;
  v8 = ((2 * (v6 ^ 0x33)) ^ 0x54) & (v6 ^ 0x33) ^ (2 * (v6 ^ 0x33)) & 0xAA;
  v9 = v6 ^ (2 * (((4 * (v8 ^ 0xAA)) & 0xA0 ^ 0xA0 ^ ((4 * (v8 ^ 0xAA)) ^ 0xA0) & (v8 ^ 0xAA)) & (16 * (v8 & (4 * v7) ^ v7)) ^ v8 & (4 * v7) ^ v7));
  return (*(STACK[0xF18] + 8 * v3))(v5 ^ (a1 << (~v9 & 8) << (v9 & 0x17 ^ 0x11)));
}

uint64_t sub_100663800()
{
  v2 = v1 - 15905;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 ^ 0xDD9D)))();
  *(v0 + 688) = 0;
  *(v0 + 696) = -371865839;
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_1006638D8@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x583C]) = a1;
  v2 = STACK[0xF18];
  STACK[0x5930] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (((v1 ^ 0x1DAB) + 6528) ^ v1)))();
}

uint64_t sub_100663910()
{
  STACK[0x6030] = STACK[0x4A50] - ((2 * STACK[0x4A50]) & 0x130272185FDB248CLL) + 0x981390C2FED9246;
  LODWORD(STACK[0x25F4]) = STACK[0x878C];
  STACK[0x5258] = STACK[0x3C10];
  v1 = STACK[0x7690];
  STACK[0x64D8] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = ((v0 - 1342085286) | 0x6C6C51u) + ((v0 - 39216) | 0xC02u) + v1 - 2960030109u;
  STACK[0xF68] = 0;
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0x5371)))(STACK[0xED0] - 749202243);
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762664993) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x3A721FD7) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xC58DE028)) ^ 0xB73D2F3));
  v3 = (*(v2 + 8 * (v0 ^ 0x5309)))(&STACK[0x10ED8]);
  if (*STACK[0x970])
  {
    v4 = 1;
  }

  else
  {
    v4 = *STACK[0x940] == 0;
  }

  v5 = v4;
  return (*(v2 + 8 * ((114 * v5) ^ v0)))(v3);
}

uint64_t sub_100663A94@<X0>(int a1@<W8>)
{
  v1 = STACK[0x7E40];
  STACK[0xABF0] = STACK[0x7E40];
  v2 = STACK[0x416C];
  LODWORD(STACK[0xABFC]) = STACK[0x416C];
  if (v1)
  {
    v3 = v2 == -371865839;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(STACK[0xF18] + 8 * ((v4 * (a1 - 25857 + ((a1 - 2079600083) & 0x7BF3FBED))) ^ a1)))();
}

uint64_t sub_100663B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 30181;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x2C88];
  STACK[0x5D28] = &STACK[0x964C];
  LODWORD(STACK[0x4704]) = -63783094;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_100663DC0()
{
  v2 = *(STACK[0x2DC0] + 20);
  STACK[0x4F90] = STACK[0x88B8];
  LODWORD(STACK[0x22E8]) = v2;
  LODWORD(STACK[0x35EC]) = v1;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100663F6C()
{
  v1 = STACK[0x25D8];
  v2 = *(STACK[0x25D8] + 8);
  v3 = STACK[0x95C8];
  v3[1] = v2;
  *v3 = *v1;
  return (*(STACK[0xF18] + 8 * (((v2 == 0) * ((((v0 - 1427347308) & 0x55135FF1) - 998) ^ 0x4FFD)) ^ (v0 + 6616))))();
}

uint64_t sub_100663FD4()
{
  LODWORD(STACK[0x10EE4]) = v1 - 193924789 * ((((&STACK[0x10000] + 3800) | 0xFB844F73) - ((&STACK[0x10000] + 3800) & 0xFB844F70)) ^ 0x4D3F7D15) - 27540;
  STACK[0x10ED8] = v0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x406F)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * (v1 - 7441)))(v3);
}

uint64_t sub_1006640EC@<X0>(unint64_t a1@<X8>)
{
  v2 = v1 ^ 0xBCA7;
  STACK[0x10EE0] = a1;
  LODWORD(STACK[0x10EDC]) = ((v1 ^ 0xBCA7) + 19887) ^ (1012831759 * ((&STACK[0x10000] + 3800) ^ 0x1093168A));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x69DDu)))(&STACK[0x10ED8]);
  *(STACK[0x78B0] + 136) = 0;
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_1006641D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0xF18];
  STACK[0x61A0] = *(STACK[0xF18] + 8 * (v6 - 7375));
  return (*(v7 + 8 * (v6 - 30511 + v6 + 27445)))(a1, a2, a3, a4, a5, a6, &STACK[0xA237]);
}

uint64_t sub_1006642D4@<X0>(uint64_t a1@<X8>)
{
  v11 = *(v9 + (v10 & a1));
  v12 = v3 - (v11 & 0x7F ^ 0x18);
  v13 = (v11 & 0x7F ^ 0xE7) - (v11 & 0x1E ^ v6) + (v11 & 0x1E ^ v6 ^ v11 & 0x7F ^ v7) + (((12 * (((v1 + v2) | v4) ^ v5)) ^ 0xE) & (2 * (v11 & 0x1E ^ v6 ^ v11 & 0x7F)) ^ 0x20) + 1;
  if (((v13 ^ v12) & 0x80u) == 0)
  {
    v14 = v12 < v13;
  }

  else
  {
    v14 = v13 < 0;
  }

  return (*(STACK[0xF18] + 8 * ((v14 * v8) ^ v1)))();
}

uint64_t sub_1006643BC()
{
  STACK[0x6538] = 0x981390C2FED9246;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x6C07)))((v1 - 7012) ^ 0xDEB7D7AB ^ (16 * (v0 - (((3 * (v1 ^ 0x88F6)) ^ 0xBD660A8) & (2 * v0))) - 558408560));
  STACK[0x3C38] = v3;
  return (*(v2 + 8 * ((43 * (v3 != 0)) ^ v1)))();
}

uint64_t sub_10066445C()
{
  v0 = STACK[0xF10] - 19430;
  *(STACK[0x6150] + 16 * STACK[0x9A80] + 8) = STACK[0xA8F0];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100664518()
{
  v2 = v1 - 346598872;
  v3 = v0 < ((v2 - 281372915) ^ (v2 + 3515));
  return (*(STACK[0xF18] + 8 * (((8 * v3) | (32 * v3)) ^ v2)))();
}

uint64_t sub_1006645C0()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 33826;
  *(STACK[0x5C30] + 84) = STACK[0x897E];
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((6924 * ((v1 ^ 0xFD8522C4) > 0xE260E2E8)) ^ (v0 - 31625))))();
}

uint64_t sub_1006647A4()
{
  LODWORD(STACK[0x1D64]) = v1;
  v2 = STACK[0x6FE0];
  v3 = STACK[0x2184];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v2;
  LODWORD(STACK[0x655C]) = v3;
  LODWORD(STACK[0x884C]) = -1632908554;
  return (*(STACK[0xF18] + 8 * (v0 - 30246)))();
}

uint64_t sub_10066486C@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 4408) = a1;
  *(v3 + 4420) = v2;
  *(v3 + 4424) = v4;
  if (a1)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  return (*(STACK[0xF18] + 8 * ((4 * v6) | (8 * v6) | v1)))();
}

uint64_t sub_1006648D4()
{
  LODWORD(STACK[0x2E80]) = *(v1 + 88);
  LODWORD(STACK[0x58D4]) = 417548132;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100664904(uint64_t a1, uint64_t a2)
{
  v2 = (((LODWORD(STACK[0xA5C4]) ^ 0x3CDA5DAD) - 1020943789) ^ ((LODWORD(STACK[0xA5C4]) ^ 0x5FA6BA60) - 1604762208) ^ ((LODWORD(STACK[0xA5C4]) ^ 0x90E6687C) + 1863948164)) + 830773780;
  v3 = (((LODWORD(STACK[0xA5C0]) ^ 0x7C382B09) - 2084055817) ^ ((LODWORD(STACK[0xA5C0]) ^ 0x88849889) + 2004576119) ^ ((LODWORD(STACK[0xA5C0]) ^ 0x1D697491) - 493450385)) - 37781383;
  v4 = (((LODWORD(STACK[0xA5C8]) ^ 0x451E05AD) - 1159595437) ^ ((LODWORD(STACK[0xA5C8]) ^ 0x81DABFBB) + 2116370501) ^ ((LODWORD(STACK[0xA5C8]) ^ 0x2D117D07) - 756120839)) + v3 * v2 + 1042614399 * (-647883805 * v3 - 1959547544 * v2) + 1278288438;
  v5 = (v4 ^ 0x2B14478A) & (2 * (v4 & 0xB3556813)) ^ v4 & 0xB3556813;
  v6 = ((2 * (v4 ^ 0xB3E078A)) ^ 0x70D6DF32) & (v4 ^ 0xB3E078A) ^ (2 * (v4 ^ 0xB3E078A)) & 0xB86B6F98;
  v7 = v6 ^ 0x88292089;
  v8 = (v6 ^ 0x10424010) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0xE1ADBE64) & v7 ^ (4 * v7) & 0xB86B6F98;
  v10 = (v9 ^ 0xA0292E00) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x18424199)) ^ 0x86B6F990) & (v9 ^ 0x18424199) ^ (16 * (v9 ^ 0x18424199)) & 0xB86B6F90;
  v12 = v10 ^ 0xB86B6F99 ^ (v11 ^ 0x80226900) & (v10 << 8);
  return (*(STACK[0xF18] + 8 * ((STACK[0xF10] - 31835) ^ 0x119F)))(a1, a2, LODWORD(STACK[0x98D4]) ^ v4 ^ (2 * ((v12 << 16) & 0x386B0000 ^ v12 ^ ((v12 << 16) ^ 0x6F990000) & (((v11 ^ 0x38490609) << 8) & 0x386B0000 ^ (((v11 ^ 0x38490609) << 8) ^ 0x6B6F0000) & (v11 ^ 0x38490609) ^ 0x10000000))) ^ 0x30F40E2A);
}

uint64_t sub_100664C84@<X0>(int a1@<W8>)
{
  v5 = STACK[0xF18];
  STACK[0x4380] = *(STACK[0xF18] + 8 * a1);
  if (v2)
  {
    v6 = (v2 + 136);
  }

  else
  {
    v6 = (v4 + 16);
  }

  *v6 = *(v1 + 136);
  *(v1 + 136) = 0;
  LODWORD(STACK[0x10EE8]) = v3 + 906386353 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x6AFFD80) - 2035286656) ^ 0xB7AE30A4) + 1884331540;
  STACK[0x10ED8] = v1;
  STACK[0x10EE0] = &STACK[0xF28] ^ 0x55BFEDB102C40440;
  v7 = (*(v5 + 8 * (v3 + 16532)))(&STACK[0x10ED8]);
  v8 = (((*(v4 + 8) ^ 0x2C85DC6E) - 746970222) ^ ((*(v4 + 8) ^ 0xBD022229) + 1123933655) ^ ((*(v4 + 8) ^ 0x78523956) - 2018654550)) + 123757180;
  v9 = (v8 ^ 0xC1644255) & (2 * (v8 & 0xE2756494)) ^ v8 & 0xE2756494;
  v10 = ((2 * (v8 ^ 0x858C0375)) ^ 0xCFF2CFC2) & (v8 ^ 0x858C0375) ^ (2 * (v8 ^ 0x858C0375)) & 0x67F967E0;
  v11 = v10 ^ 0x20092021;
  v12 = (v10 ^ 0x3F006C0) & (4 * v9) ^ v9;
  v13 = ((4 * v11) ^ 0x9FE59F84) & v11 ^ (4 * v11) & 0x67F967E0;
  v14 = (v13 ^ 0x7E10780) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0x60186061)) ^ 0x7F967E10) & (v13 ^ 0x60186061) ^ (16 * (v13 ^ 0x60186061)) & 0x67F967C0;
  v16 = v14 ^ 0x67F967E1 ^ (v15 ^ 0x67906600) & (v14 << 8);
  *(v4 + 8) = v8 ^ (2 * ((v16 << 16) & 0x67F90000 ^ v16 ^ ((v16 << 16) ^ 0x67E10000) & (((v15 ^ 0x6901E1) << 8) & 0x67F90000 ^ 0x6980000 ^ (((v15 ^ 0x6901E1) << 8) ^ 0x79670000) & (v15 ^ 0x6901E1)))) ^ 0xB906C47;
  return (STACK[0x4380])(v7);
}

uint64_t sub_100664F40()
{
  v1 = STACK[0xF18];
  STACK[0x4920] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 19428) ^ 0x5F8B) + v0)))();
}

uint64_t sub_100665030()
{
  STACK[0x2300] = &STACK[0xC4D0] + STACK[0x7690];
  v2 = *(v0 + 8);
  STACK[0x2C20] = v0 + 8;
  return (*(STACK[0xF18] + 8 * (((v2 == 35) * ((v1 - 20042) ^ (v1 - 20039))) ^ v1)))();
}

uint64_t sub_1006650D4()
{
  v1 = STACK[0xF10] - 29050;
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v0;
  LODWORD(STACK[0x35EC]) = 1693393283;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100665110()
{
  v0 = (STACK[0xF10] - 18490) | 0x1420;
  v1 = STACK[0xF10] - 34383;
  *STACK[0x51D8] = -371865851;
  v2 = STACK[0xF18];
  STACK[0x7490] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 + v0 - 1818)))();
}

uint64_t sub_100665180@<X0>(unsigned int a1@<W8>)
{
  STACK[0x5C50] = 72 * ((v1 | ((v1 < a1) << 32)) + 109 * ((v2 - 29678) ^ 0x160Au)) + 0x3AE1412191A7EE32;
  LODWORD(STACK[0x1374]) = 1579847676;
  return (*(STACK[0xF18] + 8 * (v2 - 29678)))();
}

uint64_t sub_1006651E4()
{
  v0 = (STACK[0xF10] - 32682) | 0x8004;
  v1 = STACK[0xF10] - 9214;
  v2 = STACK[0x4658];
  LODWORD(STACK[0x198C]) = STACK[0x4658];
  return (*(STACK[0xF18] + 8 * ((44957 * (v2 == v0 - 371901572)) ^ v1)))();
}

uint64_t sub_1006652D0()
{
  v1 = STACK[0x2448];
  STACK[0xA178] = STACK[0x2448] + 186;
  STACK[0xA180] = v1 + 170;
  STACK[0xA188] = v1 + 154;
  v2 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (((v0 + 34335083) & 0xFDF4D7AD ^ 0xD281) + v0)))();
}

uint64_t sub_100665340()
{
  *(v4 + 2208) = v3;
  v5 = v3 + 1959645764 + (((**(v4 + 2136) ^ 0x92BD0A4B) + 1833104821) ^ ((**(v4 + 2136) ^ ((v0 ^ 0xB85E) + 378005800)) - 378007585) ^ ((**(v4 + 2136) ^ 0x6DEF3D7B) - 1844395387));
  v6 = (((v2 ^ 0x8602945B) + ((3 * (v0 ^ 0x90CE)) ^ 0x79FDE09E)) ^ ((v2 ^ 0xC3CC8213) + 1010007533) ^ ((v2 ^ 0xAC1BD159) + 1407463079)) + 1959645764;
  v7 = v5 < 0x8AF80B33;
  v8 = v5 > v6;
  if (v6 < 0x8AF80B33 != v7)
  {
    v8 = v7;
  }

  if (v8)
  {
    v1 = 371891407;
  }

  *(v4 + 2212) = v1;
  *(v4 + 2219) = v1 == -371865839;
  return (*(STACK[0xF18] + 8 * ((30 * (v1 != -371865839)) ^ v0)))();
}

uint64_t sub_100665530()
{
  v4 = v3 - 41362 + *v0 + (*v2 ^ 0xFFFB2F7F) + ((*v2 << (v3 + 46)) & 0xFE) + 1664630418;
  v5 = (*v1 ^ 0xFFD7FF3F) + 2 * (*v1 & 0x3F) + 1666938387;
  v6 = v4 < 0x63337552;
  v7 = v4 > v5;
  if (v6 != v5 < 0x63337552)
  {
    v7 = v6;
  }

  return (*(STACK[0xF18] + 8 * ((199 * !v7) ^ (v3 - 380))))();
}

uint64_t sub_100665BC8()
{
  v2 = 1112314453 * ((-2 - ((~(&STACK[0x10000] + 3800) | 0x27B56F41) + ((&STACK[0x10000] + 3800) | 0xD84A90BE))) ^ 0xC8E34598);
  STACK[0x10EE0] = v0;
  LODWORD(STACK[0x10ED8]) = v1 - v2 - 7989;
  LOWORD(STACK[0x10EDC]) = 28827 - v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4706)))(&STACK[0x10ED8]);
  *v0 = ((*v0 % 9u) ^ 0x66) + ((2 * (*v0 % 9u)) & 0xC) - 95;
  STACK[0x20A8] = *(v3 + 8 * (v1 - 31042));
  return (*(v3 + 8 * ((15468 * (((v1 - 31042) ^ 0x65BE070 ^ (4 * v1) ^ 0x26414u) < 0xD7F11FEB)) ^ (v1 - 29378))))(v4);
}

uint64_t sub_100665D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0xF10] - 25459;
  v10 = LOBYTE(STACK[0x5827]) * (v7 - 74) + 116;
  v11 = STACK[0x46B8] + LODWORD(STACK[0x8244]);
  v12 = v10 & 0x7C ^ 0x78;
  v13 = 1864610357 * ((*(*STACK[0xE50] + (*v8 & 0xFFFFFFFF86B3AED0)) ^ v11) & 0x7FFFFFFF);
  v14 = 1864610357 * (v13 ^ HIWORD(v13));
  *v11 = v10 ^ *(*(a7 + 8 * (STACK[0xF10] - 31110)) + (v14 >> 24) - 621189123) ^ *(*(a7 + 8 * (STACK[0xF10] - 30834)) + (v14 >> 24) - 653426253) ^ *(*(a7 + 8 * (STACK[0xF10] - 34935)) + (v14 >> 24) - 921375354) ^ v14 ^ (-25 * BYTE3(v14)) ^ (2 * ((v10 ^ 0xC) & (2 * ((v10 ^ 0xC) & (2 * ((v10 ^ 0xC) & (2 * ((v12 << (STACK[0xF10] - 58)) & (v10 ^ 0xC) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ 0x7C;
  return (*(STACK[0xF18] + 8 * v9))();
}

uint64_t sub_100665F24()
{
  v2 = ((423 * (v0 ^ 0x8D66)) ^ 0xB638E3A8) + LODWORD(STACK[0x423C]);
  v3 = (v1 - 1237799423 < (v0 ^ 0x672u) + 259833616) ^ (v2 < 0xF7D4A4B);
  v4 = v1 - 1237799423 > v2;
  if (v3)
  {
    v5 = v1 - 1237799423 < (v0 ^ 0x672u) + 259833616;
  }

  else
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((37 * !v5) ^ v0)))();
}

uint64_t sub_100666010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x7AD8] = a4 + 272;
  v5 = *(STACK[0xF18] + 8 * (((v4 + 932835238) & 0xC866277A ^ 0x1CB7) + v4));
  STACK[0xED0] = &STACK[0x855C];
  return v5();
}

uint64_t sub_1006660BC@<X0>(uint64_t a1@<X8>)
{
  v3 = ((a1 & 0x9DDCB3A634D1F807) << ((v2 - 88) ^ 0xAu)) & (a1 ^ 0x32D5F606) ^ a1 & 0x34D1F807;
  v4 = ((2 * (a1 ^ 0x3B76F606)) ^ 0x1F4E1C02) & (a1 ^ 0x3B76F606) ^ (2 * (a1 ^ 0x3B76F606)) & 0xFA70E00;
  v5 = v4 ^ 0xA10201;
  v6 = (v4 ^ 0x7260201) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0x3E9C3804) & v5 ^ (4 * v5) & 0xFA70E00;
  v8 = (v7 ^ 0xE840800) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x1230601)) ^ 0xFA70E010) & (v7 ^ 0x1230601) ^ (16 * (v7 ^ 0x1230601)) & 0xFA70E00;
  *(v1 + 64) = a1 ^ (2 * ((((v9 ^ 0x5870E01) << 8) & 0xFA70000 ^ 0x7060000 ^ (((v9 ^ 0x5870E01) << 8) ^ 0xA70E0000) & (v9 ^ 0x5870E01)) & (((v9 ^ 0xA200000) & (v8 << 8) ^ v8) << 16) ^ (v9 ^ 0xA200000) & (v8 << 8) ^ v8)) ^ 0x34D1F807;
  *STACK[0xB180] = *STACK[0xB1D8];
  *STACK[0xB188] = *STACK[0xB1E0] ^ 0x5A2A6CC2;
  *STACK[0xB190] = 0;
  *STACK[0xB198] = 0;
  v10 = STACK[0xB1B0];
  LOBYTE(STACK[0x10ED8]) = 1;
  LODWORD(STACK[0x10EE8]) = (v2 - 2082486968) ^ (139493411 * ((2 * ((&STACK[0x10000] + 3800) & 0x3EA4F340) - (&STACK[0x10000] + 3800) + 1096486079) ^ 0x4D76EDFA));
  STACK[0x10EE0] = v10;
  v11 = STACK[0xF18];
  v12 = (*(STACK[0xF18] + 8 * (v2 ^ 0x7C202392)))(&STACK[0x10ED8]);
  return (*(v11 + 8 * ((5436 * (v2 != 831010782)) ^ (v2 - 2082529221))))(v12);
}

uint64_t sub_100666378()
{
  v0 = STACK[0xF10] - 944472608;
  *(STACK[0x78B0] + 160) = 0;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0xC7B56EA3 ^ (58133 * (v0 > 0x93A7CC6D)))))();
}

uint64_t sub_1006664D4(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xF10] ^ 0x17AE;
  v3 = *(STACK[0x1758] + 24);
  STACK[0x1D28] = v3;
  return (*(STACK[0xF18] + 8 * (((v3 == 0) * ((v2 - 1577314211) & 0x5E035F7D ^ 0x1473)) ^ v2)))(a1, a2, 371891400);
}

uint64_t sub_10066657C(uint64_t a1, uint64_t a2)
{
  LODWORD(STACK[0x5564]) = v3;
  LODWORD(STACK[0x6ECC]) = v2;
  v4 = STACK[0xF10];
  LODWORD(STACK[0x1A0C]) = v3;
  return (*(STACK[0xF18] + 8 * (v4 - 23547)))(a1, a2, STACK[0x870], STACK[0x868], STACK[0x860]);
}

uint64_t sub_100666674@<X0>(int a1@<W8>)
{
  v2 = *STACK[0xE50];
  v3 = *STACK[0xE58] >> 2;
  v4 = *(v2 + 4 * ((0x687B094 % v3) & 0x7FFFFFC));
  LOWORD(v3) = ~*(v2 + 4 * ((((11369 * (v1 ^ 0xF18)) ^ 0xC560) + (v1 ^ 0x8427u) + v3) & v4));
  v5 = STACK[0x8B0];
  v6 = *(STACK[0x8B0] - 527405895);
  v7 = *(STACK[0x8B8] + 4 * v6);
  v9 = v3 & (~v4 >> 16);
  v8 = v9 == 0;
  v10 = v9 + v9 * v7;
  if (v8)
  {
    v11 = *(STACK[0x8B8] + 4 * v6);
  }

  else
  {
    v11 = 0;
  }

  *(STACK[0x8B8] + 4 * v6) = (v11 + v10) * v7;
  *(v5 - 527405895) = (v6 + 1) % 6u;
  if (!v8)
  {
    a1 = 371891350;
  }

  return (*(STACK[0xF18] + 8 * ((8385 * (a1 == -371865839)) | v1)))();
}

uint64_t sub_1006667B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0xEA0]) = 0;
  LODWORD(STACK[0xE70]) = 0;
  v8 = STACK[0xF18];
  STACK[0x4648] = *(STACK[0xF18] + 8 * v7);
  v9 = *(v8 + 8 * (((v7 ^ 0xA29A) - 38063) ^ v7));
  LODWORD(STACK[0xE60]) = 1;
  return v9(a1, a2, a3, a4, a5, a6, a7, &STACK[0x6954]);
}

uint64_t sub_100666A48@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x8B34]) = v2;
  LODWORD(STACK[0x2D64]) = v1;
  return (*(STACK[0xF18] + 8 * a1))(46141, 4294950586);
}

uint64_t sub_100666B4C()
{
  v4 = v3 - v0 + 635450251;
  v5 = v4 < (((v2 - 43933) | 4) ^ 0x2856CED5u);
  v6 = v4 > v1 + 459909896;
  if ((v1 + 459909896) < 0x2856C2F3 != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * (((32 * v6) | (v6 << 6)) ^ v2)))();
}

uint64_t sub_100666BD0()
{
  STACK[0x7690] += (8899 * (v0 ^ 0x57A2u)) ^ 0xFFFFFFFFFFFFBA56;
  *(STACK[0x2140] - 0x10A99C80114D130FLL) &= ~4u;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100666C30()
{
  v3 = (v2 ^ 0xAD58A3E9) & (2 * (v2 & 0x8999338D)) ^ v2 & 0x8999338D;
  v4 = (v2 ^ 0xBF48C3FB) << ((v0 - 88) & 0x3D ^ 0x1C);
  v5 = (v4 ^ 0x6DA3E0EC) & (v2 ^ 0xBF48C3FB) ^ v4 & 0x36D1F076;
  v6 = v5 ^ 0x12501012;
  v7 = (v5 ^ 0x2481C064) & (4 * v3) ^ v3;
  v8 = ((4 * v6) ^ 0xDB47C1D8) & v6 ^ (4 * v6) & 0x36D1F074;
  v9 = (v8 ^ 0x1241C050) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x24903026)) ^ 0x6D1F0760) & (v8 ^ 0x24903026) ^ (16 * (v8 ^ 0x24903026)) & 0x36D1F060;
  v11 = v9 ^ 0x36D1F076 ^ (v10 ^ 0x24110000) & (v9 << 8);
  v12 = (16 * ((v11 << 16) & 0x6D10000 ^ v11 ^ ((v11 << 16) ^ 0x760000) & (((v10 ^ 0x12C0F016) << 8) & 0x6D10000 ^ 0x6010000 ^ (((v10 ^ 0x12C0F016) << 8) ^ 0x1F00000) & (v10 ^ 0x12C0F016)))) ^ (8 * v2);
  LOBYTE(STACK[0xFCC]) = (LOBYTE(STACK[0xFCC]) + (~(2 * LOBYTE(STACK[0xFCC])) | 0x4F) + 89) ^ 0x50 ^ v12;
  LOBYTE(STACK[0xF55]) = (LOBYTE(STACK[0xF55]) - ((2 * LOBYTE(STACK[0xF55])) & 0x34) + 26) ^ BYTE1(v12) ^ 0x81;
  LOBYTE(STACK[0xEDE]) = (LOBYTE(STACK[0xEDE]) - ((2 * LOBYTE(STACK[0xEDE])) & 0x55) - 86) ^ BYTE2(v12) ^ 0x7C;
  LOBYTE(STACK[0xE67]) = (LOBYTE(STACK[0xE67]) - (v1 & (2 * LOBYTE(STACK[0xE67]))) - 42) ^ HIBYTE(v12) ^ 0xF2;
  return (*(STACK[0x6A0] + 8 * v0))();
}

uint64_t sub_100666E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 + v2 + 0x521E1CF60FD6D629);
  *v4 = a2;
  v4[1] = 0xBCE25E0EC5200378;
  return (*(STACK[0xF18] + 8 * ((((v3 - 1273862235) & 0x4BEDFB7F ^ ((v3 + 25379) | 2) ^ 0x577C) * (v2 + 0x521E1CF60FD6D629 >= 0)) ^ v3)))();
}

uint64_t sub_100666F4C@<X0>(uint64_t a1@<X8>, int32x4_t a2@<Q0>, int32x4_t a3@<Q1>, int8x16_t a4@<Q2>, int8x16_t a5@<Q3>, int32x4_t a6@<Q5>, int32x4_t a7@<Q6>, int8x16_t a8@<Q7>)
{
  v15 = *(v12 + a1);
  v16 = vqtbl1q_s8(v15, a4);
  v17 = vqtbl1q_s8(v15, a5);
  return (*(v10 + 8 * (((v8 + a1 == 48) * v9) ^ v11)))(vaddq_s32(vaddq_s32(a2, v14), veorq_s8(veorq_s8(vaddq_s32(v16, a6), vaddq_s32(v16, a7)), vaddq_s32(veorq_s8(v16, a8), v13))), vaddq_s32(vaddq_s32(a3, v14), veorq_s8(veorq_s8(vaddq_s32(v17, a6), vaddq_s32(v17, a7)), vaddq_s32(veorq_s8(v17, a8), v13))));
}

uint64_t sub_10066708C@<X0>(int a1@<W8>)
{
  v4 = STACK[0x2930];
  STACK[0x5CE8] = STACK[0x2930];
  LODWORD(STACK[0xED0]) = 106;
  LOBYTE(STACK[0x1AF3]) = 106;
  STACK[0x6920] = 0;
  LODWORD(STACK[0x7850]) = -371865839;
  STACK[0x3930] = STACK[0x668];
  STACK[0x2A60] = v1 + v2;
  STACK[0x85E8] = v4 + v2;
  LODWORD(STACK[0x4874]) = v3;
  LODWORD(STACK[0x726C]) = -187458866;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1006671FC@<X0>(int a1@<W8>)
{
  v1 = a1 | 0xA3A;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * ((a1 | 0xA3A) + 16238)))();
  return (*(v2 + 8 * (v1 - 18632)))(v3);
}

uint64_t sub_100667230@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x7784]) = a1;
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = -1733419231;
  return (*(STACK[0xF18] + 8 * (v2 - 30507)))();
}

uint64_t sub_100667264(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = a3 > -181256895;
  v10 = v7 + ((v8 - 12411) | 0x8802) + 2012838726;
  v11 = v9 ^ (v10 < (v8 ^ 0xACDF10A));
  v12 = v10 < a7;
  if (!v11)
  {
    v9 = v12;
  }

  return (*(STACK[0xF18] + 8 * ((39952 * v9) ^ v8)))();
}

uint64_t sub_100667330@<X0>(uint64_t a1@<X8>)
{
  v10 = v3 - 1;
  v11 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x72D7ACF8));
  v12 = ((((v11 ^ (v8 + v10)) & 0x7FFFFFFF) * v5) ^ ((((v11 ^ (v8 + v10)) & 0x7FFFFFFFu) * v5) >> 16)) * v5;
  v13 = ((((v11 ^ (a1 + v10)) & 0x7FFFFFFF) * v5) ^ ((((v11 ^ (a1 + v10)) & 0x7FFFFFFFu) * v5) >> 16)) * v5;
  *(a1 + v10) = *(v7 + (v12 >> 24)) ^ *(v8 + v10) ^ *(v1 + (v12 >> 24)) ^ *((v12 >> 24) + v9 + 5) ^ *(v7 + (v13 >> 24)) ^ *(v1 + (v13 >> 24)) ^ *((v13 >> 24) + v9 + 5) ^ v12 ^ v13 ^ (BYTE3(v12) * v6) ^ (BYTE3(v13) * v6);
  return (*(STACK[0xF18] + 8 * (((v10 == 0) * v4) ^ v2)))();
}

uint64_t sub_100667428@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24) + ((v2 - 27034) ^ 0x3E42u) - 0x22EE7698326F5EA7;
  v4 = *(a1 + 24) - 0x22EE7698326EE067;
  v5 = v3 < 0x572E6161;
  v6 = v3 > v4;
  if (v4 < (((v2 - 27034) | 0x5D1u) ^ 0x572E24B2uLL) != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((53 * !v6) ^ v2)))();
}

uint64_t sub_1006674CC@<X0>(int a1@<W8>)
{
  v1 = a1 & 0xFFFFFFFF99C44BF9;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 + 2305)))();
}

uint64_t sub_100667538(__n128 a1, __n128 a2)
{
  a1.n128_u16[0] = -16706;
  a1.n128_u8[2] = -66;
  a1.n128_u8[3] = -66;
  a1.n128_u8[4] = -66;
  a1.n128_u8[5] = -66;
  a1.n128_u8[6] = -66;
  a1.n128_u8[7] = -66;
  a2.n128_u16[0] = 24415;
  a2.n128_u8[2] = 95;
  a2.n128_u8[3] = 95;
  a2.n128_u8[4] = 95;
  a2.n128_u8[5] = 95;
  a2.n128_u8[6] = 95;
  a2.n128_u8[7] = 95;
  return (*(STACK[0xF18] + 8 * v4))(v3 - (v2 & 0xFFFFFFF8) + 8, (v4 - 33414) ^ 0x13FBu, a1, a2);
}

uint64_t sub_100667580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = *(v65 + 4);
  v67 = (2 * (v66 & 0x87571139)) & (v66 ^ 0x5FF2951F) ^ v66 & 0x87571139 ^ ((2 * (v66 & 0x87571139)) & 0x8A40022 | 0x80000004);
  v68 = (2 * (v66 ^ 0x5FF2951F)) & 0xD8A58426 ^ 0x48A48422 ^ ((2 * (v66 ^ 0x5FF2951F)) ^ 0xB14B084C) & (v66 ^ 0x5FF2951F);
  v69 = (4 * v67) & 0x18A48424 ^ v67 ^ ((4 * v67) ^ 0x10) & v68;
  v70 = (4 * v68) & 0xD8A58420 ^ 0x98218426 ^ ((4 * v68) ^ 0x62961098) & v68;
  v71 = (16 * v69) & 0xD8A58420 ^ v69 ^ ((16 * v69) ^ 0x40) & v70;
  v72 = (16 * v70) & 0xD8A58420 ^ 0x50A58406 ^ ((16 * v70) ^ 0x8A584260) & v70;
  v73 = (v71 << 8) & 0xD8A58400 ^ v71 ^ ((v71 << 8) ^ 0x400) & v72;
  v74 = v66 ^ (2 * ((v73 << 16) & 0x58A50000 ^ v73 ^ ((v73 << 16) ^ 0x4040000) & ((v72 << 8) & 0x58A50000 ^ 0x58210000 ^ ((v72 << 8) ^ 0x25840000) & v72)));
  *(v65 + 4) = (((v74 ^ 0xB87CC554) - 1966392461) ^ ((v74 ^ 0x35CF95E5) + 125332420) ^ ((v74 ^ 0xA55B22B9) - 1746084704)) + 1581867672;
  return (*(STACK[0x228] + 8 * a65))(2946521462, 977280614, 2481064956, 2832, STACK[0x210]);
}

uint64_t sub_100667814()
{
  v0 = STACK[0xF10] - 31770;
  LODWORD(STACK[0x27D4]) = 1997798458;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100667880()
{
  v1 = STACK[0xF10] - 9127;
  v2 = (((STACK[0xF10] - 22838) | 0x4DC8) + 3) * v0 + (LOBYTE(STACK[0x39F6]) - 31) * (v0 - 74) - 16;
  v3 = v2 & 0x96 ^ 0x53;
  *(STACK[0x15E0] + LODWORD(STACK[0x8718])) = v2 ^ (2 * ((v2 ^ 0x70) & (2 * ((v2 ^ 0x70) & (2 * ((v2 ^ 0x70) & (2 * ((v2 ^ 0x70) & (2 * ((v2 ^ 0x70) & (2 * (v3 ^ v2 & 0x26)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ 0xC9;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100667970@<X0>(uint64_t a1@<X8>)
{
  v4 = v3 + 0x5E7C7699C80AD092 + (((*(v1 + 8) ^ 0x856BAE81851E66B1) + 0x7A94517E7AE1994FLL) ^ ((*(v1 + 8) ^ 0xFF857AB37EA86BB5) + 0x7A854C8157944BLL) ^ ((((v2 ^ 0xCEu) + 11691) ^ 0x44E39F4B06D23A48) + (*(v1 + 8) ^ 0xBB1C60B4F92D4E8DLL)));
  v5 = ((a1 - 0x627FD133217CA53ELL) < 0x72A5D4B0) ^ (v4 < 0x72A5D4B0);
  v6 = a1 - 0x627FD133217CA53ELL > v4;
  if (v5)
  {
    v6 = (a1 - 0x627FD133217CA53ELL) < 0x72A5D4B0;
  }

  return (*(STACK[0xF18] + 8 * ((39 * !v6) ^ v2)))();
}

uint64_t sub_100667A88()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xDF188B6D)))(STACK[0x68E8] - 0x427A3CD3E8C5DA2FLL);
  return (*(v1 + 8 * (v0 ^ 0xDF180C3E)))(v2);
}

uint64_t sub_100667B18(uint64_t a1, uint64_t a2)
{
  v2 = LODWORD(STACK[0xA534]) ^ LODWORD(STACK[0x98D4]) ^ ((LODWORD(STACK[0xA534]) ^ 0x4F1C920A) + 488749126) ^ ((LODWORD(STACK[0xA534]) ^ 0xFFD4EC90) - 1377188128) ^ ((LODWORD(STACK[0xA534]) ^ 0x60F506D5) + 851979419) ^ ((LODWORD(STACK[0xA534]) ^ 0x7DFFADFF) + 801277873);
  v3 = (((LODWORD(STACK[0xA53C]) ^ 0xD699B725) + 694569179) ^ ((LODWORD(STACK[0xA53C]) ^ 0x647DF0) - 6585840) ^ ((LODWORD(STACK[0xA53C]) ^ 0xDC02954D) + 603810483)) + 716770856;
  v4 = (((v2 ^ 0x7FF1EB4C) - 1382715994) ^ ((v2 ^ 0xBA1FFF68) + 1752922498) ^ ((v2 ^ 0x81F90685) + 1402830957)) - 1727428057;
  v5 = (((LODWORD(STACK[0xA540]) ^ 0x8EBB6F51) + 1900318895) ^ ((LODWORD(STACK[0xA540]) ^ 0xBEE0FB4D) + 1092551859) ^ ((LODWORD(STACK[0xA540]) ^ 0xD98E530D) + 644984051)) + v4 * v3 - 573892209 * (-1928953968 * v4 + 1003855216 * v3) + 2017155188;
  return (*(STACK[0xF18] + 8 * (STACK[0xF10] - 27580)))(a1, a2, v5 ^ ((v5 ^ 0x5260D55C) - 1812236095) ^ ((v5 ^ 0x3E00FCAF) - 6598348) ^ ((v5 ^ 0xAFFBA46E) + 1851787763) ^ ((v5 ^ 0xFDFFDFFE) + 1013215843) ^ 0x74D42C79);
}

uint64_t sub_100667E58@<X0>(unsigned int a1@<W8>)
{
  v4 = *(v3 + (a1 - 7) % v2);
  v5 = *(v3 + (a1 - 37) % v2);
  v6 = (v5 >> 2) | (v5 << 6);
  v7 = *(v3 + (a1 - 177) % v2);
  *(v3 + a1 % v2) ^= (105 * (v1 ^ 0xD0)) ^ ((v4 >> 7) | (2 * v4)) ^ v6 ^ ((v7 >> 3) | (32 * v7)) ^ 0xB9;
  return (*(STACK[0xF18] + 8 * ((1901 * (a1 == 255)) ^ v1)))();
}

uint64_t sub_100667F5C@<X0>(unint64_t a1@<X8>)
{
  v2 = v1 - 4320;
  v3 = (v1 - 33388) ^ 0x9AD0;
  STACK[0x10ED8] = a1;
  LODWORD(STACK[0x10EE4]) = v1 - 4320 - 193924789 * (((((&STACK[0x10000] + 3800) | 0xBBC5EC82) ^ 0xFFFFFFFE) - (~(&STACK[0x10000] + 3800) | 0x443A137D)) ^ 0xF281211B) - 25552;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 14077)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((1889 * (LODWORD(STACK[0x10EE0]) == v3 - 371901482)) ^ v2)))(v5);
}

uint64_t sub_10066841C()
{
  v2 = ((v1 ^ 0x5EF9) - 1062632636) & 0x3F567CDC;
  v3 = ((v1 ^ 0x5EF9) - 29703) | 0x1411;
  v4 = (v0 ^ 0x1E459EE8) - 507879144;
  v5 = (((v0 ^ 0x317360DA) - 829650259 + v3) ^ v4 ^ (((v2 - 958217069) ^ v0) + 958187229)) == 0x1629946F || (((v0 ^ 0x317360DA) - 829650259 + v3) ^ v4 ^ (((v2 - 958217069) ^ v0) + 958187229)) == 371823724;
  v6 = v5;
  v7 = v6 ^ 0x7F;
  if (v5)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  return (*(STACK[0xF18] + 8 * ((255 * (v7 + v8 == 127)) ^ v1 ^ 0x5EF9)))();
}

uint64_t sub_100668508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (STACK[0xF10] - 2872) | 0x3888;
  v4 = STACK[0xF10] - 34139;
  LODWORD(STACK[0xA094]) = v3 ^ 0xE9D57F9A ^ STACK[0x98D4] & 0xFFFFFFFE;
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x1DD6)))(a1, a2, a3, v3, ((0x22 % (LODWORD(STACK[0xA09C]) ^ 0xED278C45)) ^ 0xFAEE6C65) + 1162880486 + ((2 * (0x22 % (LODWORD(STACK[0xA09C]) ^ 0xED278C45))) & 0x4A));
}

uint64_t sub_1006685A4()
{
  LODWORD(STACK[0x7DA4]) = v1;
  v2 = STACK[0x3DFC];
  STACK[0x8FE8] = *(STACK[0x7248] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v2;
  LODWORD(STACK[0x7FD8]) = 1685354864;
  LODWORD(STACK[0x704C]) = -2116087596;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10066862C@<X0>(int a1@<W8>)
{
  STACK[0x7D38] = STACK[0x3118] + 32;
  v1 = LODWORD(STACK[0x64B0]) + LODWORD(STACK[0x592C]);
  LODWORD(STACK[0x3544]) = v1 + 1944478076;
  v1 += 375835500;
  v2 = LODWORD(STACK[0x80A4]) + 1861615035;
  v3 = v1 < 0x7BB25EF1;
  v4 = v1 > v2;
  if (v3 != v2 < (((a1 + 22549) | 0x22) ^ 0x7BB2D5CAu))
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((38 * !v4) ^ a1)))();
}

uint64_t sub_1006686FC()
{
  v1 = STACK[0x84C8];
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 371917766)))(STACK[0x84C8], 0, 1024);
  STACK[0x7F50] = v1;
  STACK[0x4C28] = STACK[0x8990];
  v3 = STACK[0x7690];
  v4 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x9760] = v4;
  STACK[0x7690] = v3 + 576;
  STACK[0x10ED8] = v4;
  LODWORD(STACK[0x10EE4]) = v0 - 193924789 * ((((&STACK[0x10000] + 3800) | 0xD8998CB) - ((&STACK[0x10000] + 3800) | 0xF2766734) - 227121356) ^ 0xBB32AAAD) + 371911073;
  v5 = (*(v2 + 8 * (v0 ^ 0xE9D50DA9)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * ((22 * (((LODWORD(STACK[0x10EE0]) - v0) | (v0 - LODWORD(STACK[0x10EE0]))) >= 0)) ^ (v0 + 371910580))))(v5);
}

uint64_t sub_100668864@<X0>(unint64_t a1@<X8>)
{
  STACK[0x8048] = v3;
  STACK[0x7A40] = v4;
  STACK[0x3C70] = v5;
  STACK[0x15F8] = a1;
  STACK[0x68F0] = v1;
  *(v1 + 32) = 0x981390C2FED9246;
  return (*(STACK[0xF18] + 8 * (((*(v1 + 380) == ((v2 - 69801723) & 0x762F6C7C) + 272284810) * ((203 * (v2 ^ 0x16E7)) ^ 0x16FA)) ^ v2)))();
}

uint64_t sub_100668B44(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(STACK[0xE60] + (v3 - 649173214)) - 102;
  v5 = 32 - (v4 - 31 * ((((9 * v4) >> 8) + (((v4 - ((9 * v4) >> 8)) & 0xFE) >> 1)) >> 4));
  if ((*(STACK[0xE60] + (v3 - 649173213)) - 102) % 5u < v5)
  {
    v5 = (*(STACK[0xE60] + (v3 - 649173213)) - 102) % 5u;
  }

  if (v5 >= 32 - (*(STACK[0xE60] + (v3 - 649173215)) - 102) % (a3 + 32))
  {
    v6 = 32 - (*(STACK[0xE60] + (v3 - 649173215)) - 102) % (a3 + 32);
  }

  else
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((1008 * (v6 < 4)) ^ a3)))();
}

uint64_t sub_100668C9C()
{
  STACK[0x9D60] = ((2 * v1) & 0x1FFFBE97ELL) + (v1 ^ 0x7FF69BFBFFFDF4BFLL) - 0x1540802000001012;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * ((v0 ^ 0x9FA) + v0)))();
}

uint64_t sub_100668D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = (STACK[0xF10] + 353006180) & 0xEAF5BAEB;
  LODWORD(STACK[0xA078]) = STACK[0x98D4];
  v5 = 0x184 % (LODWORD(STACK[0xA07C]) ^ 0xC9EA20D1) - ((2 * (0x184 % (LODWORD(STACK[0xA07C]) ^ 0xC9EA20D1))) & 0x8C) + 1928660038;
  return (*(STACK[0xF18] + 8 * (v3 - 29445)))(a1, a2, a3, v4, (((v4 ^ 0x68A4A332 ^ v5) - 1755585465) ^ ((v5 ^ 0x7F05BEDB) - 2131082971) ^ ((v5 ^ 0x6554A124) - 1700045092)) - 1288464751);
}

uint64_t sub_100668EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] + 11600;
  v5 = STACK[0xF10] - 34071;
  LODWORD(STACK[0xA5D8]) = STACK[0x98D4];
  return (*(STACK[0xF18] + 8 * (v5 ^ 0x3DF ^ (((v3 - 154450862) > 0x7D8E39A7) * (v4 ^ 0xA546)))))(a1, a2, a3);
}

uint64_t sub_1006690AC()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xB7CC];
  v2 = (v1 ^ 0x4ECE8EE) & (2 * (v1 & 0x26CE0AEF)) ^ v1 & 0x26CE0AEF;
  v3 = ((STACK[0xF10] + 429273536) & 0xE669FB8F ^ 0x5D555625 ^ (2 * (v1 ^ 0x864FDB8))) & (v1 ^ 0x864FDB8) ^ (2 * (v1 ^ 0x864FDB8)) & 0x2EAAF756;
  v4 = v3 ^ 0x22AA1151;
  v5 = (v3 ^ 0xC006604) & (4 * v2) ^ v2;
  v6 = ((4 * v4) ^ 0xBAABDD5C) & v4 ^ (4 * v4) & 0x2EAAF754;
  v7 = (v6 ^ 0x2AAAD550) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0x4002203)) ^ 0xEAAF7570) & (v6 ^ 0x4002203) ^ (16 * (v6 ^ 0x4002203)) & 0x2EAAF750;
  v9 = v7 ^ 0x2EAAF757 ^ (v8 ^ 0x2AAA7500) & (v7 << 8);
  v10 = (4 * ((v9 << 16) & 0x2EAA0000 ^ v9 ^ ((v9 << 16) ^ 0x37570000) & (((v8 ^ 0x4008207) << 8) & 0x2EAA0000 ^ 0x4080000 ^ (((v8 ^ 0x4008207) << 8) ^ 0x2AF70000) & (v8 ^ 0x4008207)))) ^ (2 * LODWORD(STACK[0xB7CC]));
  v11 = ((LODWORD(STACK[0x98D4]) ^ 0x3E369A7) - 65235367) ^ ((LODWORD(STACK[0x98D4]) ^ 0x339FB039) - 866103353) ^ ((LODWORD(STACK[0x98D4]) ^ 0xD9A91E8F) + 643228017);
  LODWORD(STACK[0x7FCC]) = ((((v10 ^ 0xB8000C71) - 227520709) ^ ((v10 ^ 0x8947437F) - 1019805643) ^ ((v10 ^ 0x5E78878D) + 336118983)) - 2009653730) * (v11 - 371865839) + 1383683609 * v11 + 1732212533;
  return (*(STACK[0xF18] + 8 * (v0 - 29445)))();
}

uint64_t sub_1006693B8()
{
  v3 = STACK[0x60E4];
  v4 = STACK[0x33F0];
  v5 = 634647737 * ((2 * (v2 & 0x6D7D4BCD21C381C8) - v2 - 0x6D7D4BCD21C381CFLL) ^ 0x48591BDDB3AA51CDLL);
  STACK[0x10EF0] = &STACK[0x4D64];
  STACK[0x10EE0] = v0;
  STACK[0x10ED8] = (((v1 + 26995) | 0x928u) ^ 0x47272BD21B05A6E4) + v5 + (((v4 ^ 0x740BA2514E80554ELL) - 0x740BA2514E80554ELL) ^ ((v4 ^ 0x5F64C592C2B2B76FLL) - 0x5F64C592C2B2B76FLL) ^ (((v1 - 501833955) & 0x1DE95F4A ^ 0xDD11A1305C209891) + (v4 ^ 0x22EE5ECFA3DF7067)));
  LODWORD(STACK[0x10EEC]) = v5 + 1846266391 * v3 + 1573703399;
  LODWORD(STACK[0x10EE8]) = v5 + v1 + 40628;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v1 + 45899)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * ((10521 * (LODWORD(STACK[0x10EF8]) == -371865839)) ^ v1)))(v7);
}

uint64_t sub_100669574()
{
  v0 = STACK[0xF10];
  LODWORD(STACK[0x8B44]) = (((LODWORD(STACK[0xA0A0]) ^ LODWORD(STACK[0x98D4]) ^ 0xB62007AA) + 287592708) ^ ((LODWORD(STACK[0xA0A0]) ^ LODWORD(STACK[0x98D4]) ^ 0xF303064F) + 1409765607) ^ ((LODWORD(STACK[0xA0A0]) ^ LODWORD(STACK[0x98D4]) ^ 0x452301E5) + ((326 * (STACK[0xF10] ^ 0x8B06)) ^ 0xE2271AE3))) - (((LODWORD(STACK[0xA0A8]) ^ 0x4EFC2608) - 1325147656) ^ ((LODWORD(STACK[0xA0A8]) ^ 0xC046C4AA) + 1069103958) ^ ((LODWORD(STACK[0xA0A8]) ^ 0x676F25B3) - 1735337395)) - 1774256753;
  return (*(STACK[0xF18] + 8 * (v0 - 24874)))();
}

uint64_t sub_10066967C()
{
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x8778];
  STACK[0x5D28] = &STACK[0x61BC];
  LODWORD(STACK[0x4704]) = -274001282;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1006696C4()
{
  v1 = STACK[0x9734];
  LODWORD(STACK[0x6B3C]) = STACK[0x9734];
  STACK[0x2950] = (v0 + 242499289) ^ v1 ^ 0xE7A0C57E;
  STACK[0x1AC0] = STACK[0x5730];
  LODWORD(STACK[0x22C4]) = STACK[0x6798];
  LODWORD(STACK[0x7074]) = STACK[0x576C];
  LODWORD(STACK[0x10ED8]) = (v0 - 1762675719) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x1877516A) - ((&STACK[0x10000] + 3800) | 0xE788AE95) - 410472811) ^ 0x29769C4E));
  STACK[0x10EE0] = 0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x92F)))(&STACK[0x10ED8]);
  if (*STACK[0x970])
  {
    v4 = 1;
  }

  else
  {
    v4 = *STACK[0x940] == 0;
  }

  v5 = v4;
  return (*(v2 + 8 * ((v5 * (((v0 - 46996) | 0x88) - 3195)) ^ v0)))(v3);
}

uint64_t sub_100669860()
{
  *(v1 + 4) = 329966750;
  STACK[0xAC70] = v1 + 4;
  return (*(STACK[0xF18] + 8 * ((91 * (((((v0 ^ 0xA89E) + 1112476065) ^ (*(v1 + 27) == 66)) & 1) == 0)) ^ v0 ^ 0xA89E)))();
}

uint64_t sub_1006698D0()
{
  v3.i64[0] = 0xBEBEBEBEBEBEBEBELL;
  v3.i64[1] = 0xBEBEBEBEBEBEBEBELL;
  v4.i64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v4.i64[1] = 0x5F5F5F5F5F5F5F5FLL;
  *v2 = veorq_s8(vaddq_s8(vsubq_s8(*v2, vandq_s8(vaddq_s8(*v2, *v2), v3)), v4), *v0);
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100669960@<X0>(uint64_t a1@<X8>)
{
  STACK[0x1A78] = STACK[0x5888] + 8;
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 ^ 0x741E ^ (a1 + 25323))))();
}

uint64_t sub_1006699AC@<X0>(unsigned int a1@<W8>)
{
  v1 = STACK[0x6FA0];
  v2 = STACK[0x55CC];
  LODWORD(STACK[0xAC5C]) = STACK[0x55CC];
  if (v1)
  {
    v3 = v2 == -371865839;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(STACK[0xF18] + 8 * ((v4 * ((((a1 - 1936479285) & 0x336BBEDA) + 27763) ^ 0x8B3F)) ^ a1)))();
}

uint64_t sub_100669A1C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W8>)
{
  v16 = *(a5 + (*(a2 + (v12 + 1449 + a7) % v15) ^ 0x5FLL));
  v17 = *(a6 + (*(a2 + (v12 + (v16 & 0xFFFFFEFF | ((v16 < 0x5C) << 8)) + 1357) % v15) ^ 0x5FLL));
  v18 = (v17 < 0x2F) << 8;
  v19 = (v16 < 0x5C) << 8;
  v20 = *(*(v14 + 8 * SLODWORD(STACK[0xEC0])) + (*(v9 + v11 + v18 + v7 + v8 + v17 - 25 * ((v18 + v7 + v8 + v17 + v11) / 0x19)) ^ 0x8ELL) - 1425578734);
  v21 = (v20 < 0x1C) << 8;
  v22 = v17 & 0xFFFFFEFF | v18;
  v23 = v18 + v19 + v8 + v17 + v16 + v20 + v21;
  v24 = (2 * (v10 & 0x7F)) & 0xF8 ^ v10 & 0x7F ^ (2 * (v10 & 0x7F)) & (v10 ^ 0x87);
  v25 = v16 + 1767180037 + v19;
  v26 = *(a4 + (((v10 ^ (2 * (v24 ^ (4 * v24) & 8 ^ (4 * v24) & ((2 * (v10 ^ 0x87)) & 0xF8 ^ 8 ^ ((2 * (v10 ^ 0x87)) ^ 0xF0) & (v10 ^ 0x87)) ^ 8))) & 0x1F ^ 0xFu) << 7) + 4 * (((((v25 ^ 0x22) + 29) ^ (v16 + 5) ^ ((v25 ^ 4) + 27) ^ ((v25 ^ 0x10) + 15)) ^ ((v25 ^ 0xF7) + 10)) & 0x1F ^ 1u));
  LOBYTE(v18) = ((v20 - 9) ^ 0xCD) & (2 * ((v20 - 9) & 0xED)) ^ (v20 - 9) & 0xED;
  LOBYTE(v23) = *(*(v14 + 8 * SLODWORD(STACK[0xE80])) + (*(v9 + v12 + v23 - 25 * ((v23 + v12) / 0x19)) ^ 0x8ELL) - 920378975) - 1;
  v27 = (v26 ^ 0xE8) + v8 + a7 + v25 - 1767181458 + v22 + ((*(a4 + (((v10 + 18) & 0x1F) << 7) + 4 * ((v17 ^ (2 * (((2 * v17) & 0xA2 ^ 0xD1) & v22 ^ (((2 * (v22 ^ 0x24)) ^ 0xC8) & (v22 ^ 0x24) ^ (2 * (v22 ^ 0x24)) & 0xC4) & (4 * (((2 * v17) & 0xA2 ^ 0xD1) & v22)) ^ 0x55))) & 0x1F ^ 0x1Bu)) >> 8) ^ 0x54) + (*(a4 + ((v13 & 0x1F) << 7) + 4 * (((v20 - 9) ^ (2 * ((((2 * ((v20 - 9) ^ 0xD7)) ^ 0x74) & ((v20 - 9) ^ 0xD7) ^ (2 * ((v20 - 9) ^ 0xD7)) & 0x3A) & (4 * v18) ^ v18))) & 0x1F ^ 0xDu) + 2) ^ 0x1A) + v7 + v20 + 1313244663 + v21 + v23 - 1313244691 + (*(a4 + ((a1 & 0x1F) << 7) + 4 * (v23 & 0x1F) + 3) ^ 0x4B);
  *(a3 + (v12 + 1449) % v15) = *(a3 + (v12 + 1449) % v15) + ((((v27 - ((2 * v27) & 0xEA) - 11) ^ 0x13) - 19) ^ (((v27 - ((2 * v27) & 0xEA) - 11) ^ 0x31) - 49) ^ (((v27 - ((2 * v27) & 0xEA) - 11) ^ 0xD7) + 41)) - 11;
  return (*(STACK[0xF18] + 8 * (((v12 == -938) | (2 * (v12 == -938))) ^ LODWORD(STACK[0xED0]))))((a1 + 5));
}

uint64_t sub_100669E24()
{
  v1 = STACK[0xF18];
  STACK[0x4440] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x32D1 ^ ((v0 == 1381624809) * ((33 * (v0 ^ 0x49D)) ^ 0x78D6)))))();
}

uint64_t sub_100669E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] + 11600;
  LODWORD(STACK[0xA028]) = STACK[0x98D4];
  v5 = 0x6EF % (v4 ^ 0x8614F773 ^ LODWORD(STACK[0xA02C])) - ((2 * (0x6EF % (v4 ^ 0x8614F773 ^ LODWORD(STACK[0xA02C])))) & 0x30A) + 1528992133;
  return (*(STACK[0xF18] + 8 * (v3 - 29445)))(a1, a2, a3, v4, (((v5 ^ 0x4B931598) - 1267930520) ^ ((v5 ^ 0xAD43E745) + 1388058811) ^ ((v5 ^ 0xBDF26358) + 1108188328)) - 1688132656);
}

uint64_t sub_100669FE4@<X0>(unint64_t a1@<X8>)
{
  STACK[0x4DB0] = a1;
  LOBYTE(STACK[0x56AB]) = 0;
  return (*(STACK[0xF18] + 8 * ((39009 * (v2 == (((71 * (v1 ^ 0xBA)) ^ ((v1 + 67) | 0x21)) ^ 0x60))) ^ v1)))();
}

uint64_t sub_10066A0E8()
{
  v2 = *(v1 + 160);
  STACK[0x8270] = v1 + 160;
  return (*(STACK[0xF18] + 8 * (((v2 == 0) * (v0 + 32176)) ^ v0)))();
}

uint64_t sub_10066A178()
{
  v3 = *(STACK[0x5690] + 16 * v1 + 8);
  LODWORD(STACK[0x10EE4]) = v0 + v2;
  LODWORD(STACK[0x10EDC]) = (v0 ^ 0x6D2A ^ (v0 - 1482461643)) - v2;
  LODWORD(STACK[0x10ED8]) = -v2;
  STACK[0x10EE8] = v3 ^ v2;
  STACK[0x10EF0] = STACK[0xED0];
  LODWORD(STACK[0x10EF8]) = v0 - v2 + 1582293992;
  LODWORD(STACK[0x10EFC]) = (v0 ^ 0xFC) - v2;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0x585DDBC4u)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * SLODWORD(STACK[0x10EE0])))(v5);
}

uint64_t sub_10066A26C@<X0>(int a1@<W8>)
{
  STACK[0x2C70] = v2;
  LODWORD(STACK[0x7604]) = a1;
  STACK[0xED0] = (238 * (v1 ^ 0xB864u) - 0x43A3440AF91DC110) ^ &STACK[0xF28];
  return (*(STACK[0xF18] + 8 * v1))(54206, 21839, 34200, 34329, 842933316, 3452033969, 4294949282, 956728085);
}

uint64_t sub_10066A310()
{
  v3 = *(v0 + v2);
  v4 = STACK[0x1368];
  v5 = (466 * (v1 ^ 0x1753)) ^ LODWORD(STACK[0x1020]) ^ 0xC638F0F1;
  STACK[0x8FE8] = v3;
  LODWORD(STACK[0x44A8]) = v4;
  LODWORD(STACK[0x704C]) = -2116087570;
  LODWORD(STACK[0x7FD8]) = 1920229740;
  LODWORD(STACK[0x4A8C]) = v5;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10066A38C()
{
  STACK[0x10EE8] = &STACK[0x6A68];
  LODWORD(STACK[0x10ED8]) = (v0 + 12254) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x6AACC30A) - ((&STACK[0x10000] + 3800) | 0x95533CF5) - 1789707019) ^ 0x5BAD0E2E));
  LOWORD(STACK[0x10EE0]) = 23473 * ((((&STACK[0x10000] + 3800) | 0xC30A) - ((&STACK[0x10000] + 3800) | 0x3CF5) + 15605) ^ 0xE2E) + 18064;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xC9F6)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 ^ 0xD9A ^ (6310 * (v0 != -1263115445)))))(v2);
}

uint64_t sub_10066A5E0()
{
  v1 = STACK[0xF18];
  STACK[0x9558] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 3337) ^ 0xFE3) + v0)))();
}

uint64_t sub_10066A664()
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393270;
  return (*(STACK[0xF18] + 8 * (v0 - 29050)))();
}

uint64_t sub_10066A7E0()
{
  STACK[0x1250] = v0;
  LODWORD(STACK[0x7048]) = STACK[0x4834];
  return (*(STACK[0xF18] + 8 * ((v1 - 8993 + ((2 * v1) ^ 0x10E2C)) ^ (98445 * (v1 == 2050898291)))))();
}

uint64_t sub_10066A8C8(uint64_t a1)
{
  STACK[0x8D08] = *(a1 + 40);
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xA4FA)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10066A944(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v10 = (*(a4 + 8 * v8) + v6 + v9);
  v12 = *v10;
  v11 = v10[1];
  v13 = (v5 + a1);
  *v13 = v12;
  v13[1] = v11;
  return (*(STACK[0xF18] + 8 * (((v7 == 0) * a2) ^ v4)))();
}

uint64_t sub_10066A9A4(int a1, int a2, int a3)
{
  v8 = (a3 + 92) ^ 0xA2;
  v9 = (2 * v8) ^ 0x28;
  v10 = ((a3 + 92) ^ 0xA6) & (2 * ((a3 + 92) & 0xB6)) ^ (a3 + 92) & 0xB6;
  v11 = a3 ^ LODWORD(STACK[0xE90]) ^ ((a3 ^ 0x5F8D3D34) - 164960273) ^ ((a3 ^ 0x2C6833A0) - 2049971845) ^ ((a3 ^ 0xDA4BD44E) + 1944850069) ^ ((((v7 - 27769) | 0x1205) ^ 0x56513BE3) + (a3 ^ 0xFFF6FFFF));
  v12 = (a3 + 92) ^ (2 * ((v9 & v8 ^ (2 * v8) & 0x14 ^ 0x14) & (16 * ((v9 & v8 ^ (2 * v8) & 0x14) & (4 * v10) ^ v10)) & ((4 * (v9 & v8 ^ (2 * v8) & 0x14 ^ 0x14)) ^ 0x40) ^ (v9 & v8 ^ (2 * v8) & 0x14) & (4 * v10) ^ v10));
  LOBYTE(v11) = (((v11 ^ 0x2B) - 12) ^ ((v11 ^ 0x43) - 100) ^ ((v11 ^ 0x5C) - 123)) - (((v12 ^ 0x91) + 123) ^ ((v12 ^ 0x6B) - 127) ^ (20 - v12)) - 38;
  v13 = *(STACK[0xED0] + (a3 - 1448617253));
  LOBYTE(v11) = ((v11 ^ 0x69) + 79) ^ v11 ^ ((v11 ^ 0xC1) - 25) ^ ((v11 ^ 0x8E) - 86) ^ ((v11 ^ 0xFE) - 38);
  LOBYTE(v11) = (((v13 ^ 0x4B) - 75) ^ ((v13 ^ 0x74) - 116) ^ ((v13 ^ 0x60) - 96)) + (((v11 ^ 0x25) + 40) ^ ((v11 ^ 0x93) - 110) ^ ((v11 ^ 0x6E) + 109)) - 89;
  v14 = v11 & 0x27 ^ 0x25;
  v15 = v11 ^ 0x5C;
  *(STACK[0xED0] + (a3 - 1448617253)) = v11 ^ (2 * (v15 & (2 * (v15 & (2 * (v15 & (2 * (v15 & (2 * (v15 & (2 * (((2 * v11) & 0x3A ^ 0x7A) & v11 ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ 0x78;
  v16 = (((*v3 ^ v4) + v5) ^ ((*v3 ^ v6) + a1) ^ ((*v3 ^ a2) - 606553382)) + 1088950775;
  v17 = v16 < 0x57124ADE;
  v18 = a3 + 12199354 < v16;
  if ((a3 + 12199354) < 0x57124ADE != v17)
  {
    v18 = v17;
  }

  return (*(STACK[0xF18] + 8 * ((112 * v18) ^ v7)))();
}

uint64_t sub_10066AD68@<X0>(int a1@<W8>)
{
  v2 = (((LOBYTE(STACK[0xC3BA]) ^ 0x5FLL) << 16) | ((LOBYTE(STACK[0xC3BB]) ^ 0x5FLL) << 8)) + ((LOBYTE(STACK[0xC3B6]) ^ 0x5FLL) << (a1 ^ 0xABu)) + ((LOBYTE(STACK[0xC3B5]) ^ 0x5Fu) << 56) + ((LOBYTE(STACK[0xC3B7]) ^ 0x5Fu) << 40) + ((LOBYTE(STACK[0xC3B8]) ^ 0x5Fu) << 32) + ((LOBYTE(STACK[0xC3B9]) ^ 0x5FLL) << 24);
  *v1 = ((v2 - ((2 * v2) & 0x679DE1442016A4FELL) + 0x33CEF0A2100B526ELL) ^ 0xC41C11CE1029B8B3) & (LOBYTE(STACK[0xC3BC]) ^ 0xFFFFFFFFFFFFFFA0) ^ (STACK[0xC3BC] & 0x22 | 0xFE53D8602FCF7899);
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_10066B25C()
{
  LODWORD(STACK[0x10ED8]) = (v0 + 31048) ^ (1603510583 * ((((&STACK[0x10000] + 3800) | 0x115E5F57) - ((&STACK[0x10000] + 3800) & 0x115E5F50)) ^ 0x86856DFC));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xCC92)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * ((v0 + 8201) ^ v0)))(v2);
}

uint64_t sub_10066B30C()
{
  v2 = STACK[0xF10] ^ 0xB9EC;
  v3 = STACK[0xF10] - 22604;
  LODWORD(STACK[0x515C]) = v1;
  return (*(STACK[0xF18] + 8 * (((v2 ^ 0x9871) * v0) ^ v3)))();
}

uint64_t sub_10066B510()
{
  LODWORD(STACK[0x3908]) += (11881 * ((v0 - 12140) ^ 0x5BCC)) ^ 0x8B3F;
  STACK[0xACA8] = STACK[0x7D40] + 28;
  if (STACK[0x2920])
  {
    v1 = LODWORD(STACK[0x49CC]) == ((v0 - 12140) ^ 0xE9D59CDE);
  }

  else
  {
    v1 = 1;
  }

  v2 = v1;
  return (*(STACK[0xF18] + 8 * ((v2 | (32 * v2)) ^ (v0 - 12140))))();
}

uint64_t sub_10066B598()
{
  v0 = (STACK[0xF10] + 1383403682) & 0xAD8A6DF7;
  v1 = STACK[0xF10] + 15375;
  v2 = STACK[0x88B8];
  STACK[0x9718] = STACK[0x2DC0] + 130;
  STACK[0x58F8] = v2;
  STACK[0x2B28] = 0;
  return (*(STACK[0xF18] + 8 * (((v2 == 0) * (v0 ^ 0x9D2)) ^ v1)))();
}

uint64_t sub_10066B608()
{
  v2 = v0 ^ 0xB2AE ^ LODWORD(STACK[0x7CA8]) ^ 0xC638F0F1;
  STACK[0x8FE8] = *(STACK[0x7248] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v1;
  LODWORD(STACK[0x704C]) = -2116087571;
  LODWORD(STACK[0x7FD8]) = 1801812256;
  LODWORD(STACK[0x4A8C]) = v2;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10066B698()
{
  STACK[0x5658] = STACK[0x9178];
  LODWORD(STACK[0x2564]) = 1431988421;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10066B6CC()
{
  v1 = STACK[0xF18];
  STACK[0x4920] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 40760))();
}

uint64_t sub_10066B7D4()
{
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x5B00];
  STACK[0x5D28] = &STACK[0x6A44];
  LODWORD(STACK[0x4704]) = -1383806011;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10066B824()
{
  v2 = v1 - 1495;
  v3 = v1 + 36461;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * v3))(v0);
  return (*(v4 + 8 * v2))(v5);
}

uint64_t sub_10066B8F4()
{
  v1 = STACK[0x1410];
  STACK[0x26F8] = 0x794E87ED87161270;
  return (*(STACK[0xF18] + 8 * ((965 * (((v1 == 0) ^ (-17 * (v0 ^ 0xF1)) ^ 0x63) & 1)) ^ v0)))();
}

uint64_t sub_10066B9A0()
{
  STACK[0x78B0] = STACK[0x3518];
  v1 = STACK[0x5200];
  LODWORD(STACK[0x2C28]) = STACK[0x5200];
  STACK[0x6A98] = 0;
  LODWORD(STACK[0x8BA4]) = -371865839;
  return (*(STACK[0xF18] + 8 * ((126 * (((v0 + 50) ^ ((v1 & (v0 ^ 0x8EB6)) == 0)) & 1)) ^ v0)))();
}

uint64_t sub_10066BA50()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 6168)))((v1 - 2143645695), STACK[0x8480]);
  v4 = ((v3 ^ 0xEFDF9DFF) - 1876925951 + ((v3 << ((((v0 + 56) ^ 0x2F) - 6) ^ 0xD3)) & 0xDFBF3BFE)) >> 31;
  return (*(v2 + 8 * (((2 * v4) | (8 * v4)) ^ (v0 - 22472))))();
}

uint64_t sub_10066BC94()
{
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x10C0];
  STACK[0x5D28] = &STACK[0x8D64];
  LODWORD(STACK[0x4704]) = 1696247462;
  return (*(STACK[0xF18] + 8 * ((7628 * (v0 != -1678746031)) ^ (v0 - 1488936689))))();
}

uint64_t sub_10066BD38()
{
  v2 = STACK[0x85C8] + 72;
  v3 = STACK[0x4274];
  v4 = STACK[0x5760];
  v5 = 634647737 * (((&STACK[0x10ED8] | 0x3FA7E469) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0xC0581B90)) ^ 0x5231CB95);
  LOWORD(STACK[0x10EF8]) = v5 + 11302;
  STACK[0x10EE0] = v2;
  LODWORD(STACK[0x10ED8]) = v0 - v5 + 33;
  LODWORD(STACK[0x10EE8]) = v5 ^ 0x28D20269;
  STACK[0x10EF0] = v4;
  v6 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0x935C)))(&STACK[0x10ED8]);
  v7 = 634647737 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x3A1F5660) - 1172351391) ^ 0xD789799D);
  STACK[0x10ED8] = v1;
  LODWORD(STACK[0x10EE0]) = v0 - v7 + 2159;
  LODWORD(STACK[0x10EE4]) = (v3 + 623616063) ^ v7;
  STACK[0x10EE8] = v2;
  (*(v6 + 8 * (v0 ^ 0x92BA)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x10EE8]) = v0 - 353670337 * ((((2 * &STACK[0x10ED8]) | 0x29AC962E) - &STACK[0x10ED8] + 1797895401) ^ 0x20F7B32A) - 22964;
  STACK[0x10ED8] = v2;
  STACK[0x10EE0] = v1 + (((v0 + 1679) | 0x706) ^ 0x679Fu) + v3;
  v8 = (*(v6 + 8 * (v0 + 28925)))(&STACK[0x10ED8]);
  *STACK[0x5440] = v1;
  *(STACK[0x6760] - 0x4E045DE1EFC3C9CDLL) = STACK[0x7998];
  return (*(v6 + 8 * v0))(v8);
}

uint64_t sub_10066BF74()
{
  v2 = v0 - 6040;
  STACK[0x9DC8] = ((((v0 - 6040) ^ 0x6CEBu) + 0x67DE7FD7EEDF8C26) ^ v1) + ((2 * v1) & 0x1DDBFDFFELL) - 0x600E0A018848CAC9;
  v3 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * (v2 ^ 0x1936)))();
}

uint64_t sub_10066C050()
{
  LODWORD(STACK[0x7C10]) = v1;
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = STACK[0x7C4C];
  LODWORD(STACK[0x35EC]) = 1693393328;
  return (*(STACK[0xF18] + 8 * (v0 - 29050)))();
}

uint64_t sub_10066C1B0@<X0>(unint64_t *a1@<X7>, unsigned int a2@<W8>)
{
  v3 = 0;
  v4 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x20FAB224)) ^ 0x20FAB225;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  v12 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v11;
  STACK[0xBD10] = 0;
  STACK[0xBD18] = v2;
  v13 = 16777619 * ((553300517 * v12 + 7) ^ (553300517 * v12)) % 7;
  v14 = 16777619 * ((553300517 * v12 + 6) ^ (553300517 * v12)) % 6;
  v15 = 16777619 * ((553300517 * v12 + 5) ^ (553300517 * v12)) % 5;
  v16 = *(&STACK[0xBD10] | v13);
  *(&STACK[0xBD10] | v13) = STACK[0xBD17];
  v17 = *(&STACK[0xBD10] | v14);
  *(&STACK[0xBD10] | v14) = STACK[0xBD16];
  v18 = *(&STACK[0xBD10] | v15);
  *(&STACK[0xBD10] | v15) = STACK[0xBD15];
  v19 = vdup_n_s32(553300517 * v12);
  v20 = 16777619 * ((553300517 * v12 + 3) ^ (553300517 * v12)) % 3;
  v21.i32[0] = v19.i32[0];
  v21.i32[1] = 553300517 * v12 + 1;
  LOBYTE(STACK[0xBD17]) = v16;
  v22 = veor_s8(vmul_s32(v21, v19), v19);
  LOBYTE(STACK[0xBD16]) = v17;
  LOBYTE(STACK[0xBD15]) = v18;
  v23 = STACK[0xBD10];
  LOBYTE(STACK[0xBD10]) = STACK[0xBD14];
  LOBYTE(STACK[0xBD14]) = v23;
  v24 = *(&STACK[0xBD10] | v20);
  *(&STACK[0xBD10] | v20) = STACK[0xBD13];
  LOBYTE(STACK[0xBD13]) = v24;
  v25 = STACK[0xBD11];
  LOBYTE(STACK[0xBD12]) = STACK[0xBD10];
  LOWORD(STACK[0xBD10]) = v25;
  STACK[0xBD10] = vmla_s32(v22, STACK[0xBD10], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBD18];
  v27 = (553300517 * STACK[0xBD18]) ^ v12;
  v28 = vdupq_n_s32(v27);
  v29 = xmmword_100BC7620;
  v30 = xmmword_100BC7630;
  v31 = xmmword_100BC7640;
  v32 = xmmword_100BC7650;
  v33.i64[1] = 0xFFFFFF0FFFFFFF0ELL;
  v34.i64[0] = 0x9393939393939393;
  v34.i64[1] = 0x9393939393939393;
  v35.i64[0] = 0x1000000010;
  v35.i64[1] = 0x1000000010;
  do
  {
    v36 = *(v26 + v3);
    v56.val[1] = veorq_s8(vqtbl1q_s8(v36, xmmword_100BC7690), veorq_s8(v28, vmulq_s32(vaddq_s32(v31, v28), vsubq_s32(v31, v28))));
    v56.val[0] = veorq_s8(vqtbl1q_s8(v36, xmmword_100BC76A0), veorq_s8(v28, vmulq_s32(vaddq_s32(v32, v28), vsubq_s32(v32, v28))));
    v56.val[2] = veorq_s8(vqtbl1q_s8(v36, xmmword_100BC7680), veorq_s8(v28, vmulq_s32(vaddq_s32(v30, v28), vsubq_s32(v30, v28))));
    v56.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v36, xmmword_100BC7670), v28), vmulq_s32(vaddq_s32(v29, v28), vsubq_s32(v29, v28)));
    *(v26 + v3) = vmulq_s8(vqtbl4q_s8(v56, xmmword_100BC7660), v34);
    v3 += 16;
    v32 = vaddq_s32(v32, v35);
    v31 = vaddq_s32(v31, v35);
    v30 = vaddq_s32(v30, v35);
    v29 = vaddq_s32(v29, v35);
  }

  while (v3 != 576);
  v37 = 0;
  v38 = xmmword_100F52AE0;
  v39 = vdupq_n_s32(v27);
  v40 = xmmword_100F52AF0;
  v41 = v26 + 576;
  v42.i64[0] = 0x800000008;
  v42.i64[1] = 0x800000008;
  do
  {
    v33.i64[0] = *(v41 + v37);
    v55.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v33, xmmword_100BC7690), v39), vmulq_s32(vaddq_s32(v38, v39), vsubq_s32(v38, v39)));
    v55.val[0] = veorq_s8(vqtbl1q_s8(v33, xmmword_100BC76A0), veorq_s8(v39, vmulq_s32(vaddq_s32(v40, v39), vsubq_s32(v40, v39))));
    v33 = vqtbl2q_s8(v55, xmmword_100F52AD0);
    *(v41 + v37) = vmul_s8(*v33.i8, 0x9393939393939393);
    v40 = vaddq_s32(v40, v42);
    v38 = vaddq_s32(v38, v42);
    v37 += 8;
  }

  while (v37 != 8);
  v43 = 72;
  do
  {
    v44 = 16777619 * ((v27 + v43) ^ v27) % v43;
    v45 = *(v26 + 8 * v44) ^ *(v26 + 8 * v43);
    *(v26 + 8 * v43) = v45;
    v46 = *(v26 + 8 * v44) ^ v45;
    *(v26 + 8 * v44) = v46;
    *(v26 + 8 * v43) ^= v46;
    v47 = v43-- + 1;
  }

  while (v47 > 2);
  v48 = *(&STACK[0xBD18] + v13);
  *(&STACK[0xBD18] + v13) = STACK[0xBD1F];
  LOBYTE(STACK[0xBD1F]) = v48;
  v49 = *(&STACK[0xBD18] + v14);
  *(&STACK[0xBD18] + v14) = STACK[0xBD1E];
  LOBYTE(STACK[0xBD1E]) = v49;
  v50 = *(&STACK[0xBD18] + v15);
  *(&STACK[0xBD18] + v15) = STACK[0xBD1D];
  LOBYTE(STACK[0xBD1D]) = v50;
  v51 = STACK[0xBD18];
  LOBYTE(STACK[0xBD18]) = STACK[0xBD1C];
  LOBYTE(STACK[0xBD1C]) = v51;
  v52 = *(&STACK[0xBD18] + v20);
  *(&STACK[0xBD18] + v20) = STACK[0xBD1B];
  LOBYTE(STACK[0xBD1B]) = v52;
  v53 = STACK[0xBD19];
  LOBYTE(STACK[0xBD1A]) = STACK[0xBD18];
  LOWORD(STACK[0xBD18]) = v53;
  STACK[0xBD18] = vmla_s32(v22, STACK[0xBD18], vdup_n_s32(0x1000193u));
  *a1 = STACK[0xBD18] ^ STACK[0xBD10];
  return (*(STACK[0xF18] + 8 * a2))();
}

uint64_t sub_10066C77C()
{
  STACK[0x4DB0] = 0;
  LOBYTE(STACK[0x56AB]) = 1;
  return (*(STACK[0xF18] + 8 * (((v0 - 3133) | 0x800B) - 22123)))();
}

uint64_t sub_10066C874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (STACK[0xF10] - 33466) | 0xB00A;
  v4 = STACK[0xF10] - 34202;
  LODWORD(STACK[0x9B0C]) = STACK[0x98D4] & 0xFFFFFFFE ^ 0x30740C9B;
  v5 = 0x294 % (LODWORD(STACK[0x9B14]) ^ 0x529D9683u) - ((v3 ^ 0xBDE5) & (2 * (0x294 % (LODWORD(STACK[0x9B14]) ^ 0x529D9683u)))) + 1822767799;
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x1D97)))(a1, a2, a3, v3, (((v5 ^ 0x2D11AACB) - 756132555) ^ ((v5 ^ 0xEFA04347) + 274709689) ^ ((v5 ^ 0xAE14D33B) + 1374366917)) - 1394356990);
}

uint64_t sub_10066CB40@<X0>(int a1@<W8>)
{
  v4 = STACK[0xF18];
  STACK[0x1508] = *(STACK[0xF18] + 8 * v1);
  STACK[0xB240] = v3;
  v5 = ((((a1 + 120152118) & 0xF8D61353) + (*(v3 + 12) ^ 0x8E407D6B) + 1908376213) ^ ((*(v3 + 12) ^ 0x37F280A4) - 938639524) ^ (((a1 + 19275622) & 0xFED9F7EF ^ *(v3 + 12) ^ 0x50679912) - 1348942558)) + 845175930;
  v6 = (((v2 ^ 0x2489963E) - 612996670) ^ ((v2 ^ 0xD4133B44) + 736937148) ^ ((v2 ^ 0x194F6A6B) - 424634987)) + 845175930;
  v7 = (v6 < 0x488A9569) ^ (v5 < 0x488A9569);
  v8 = v5 < v6;
  if (v7)
  {
    v8 = v6 < 0x488A9569;
  }

  return (*(v4 + 8 * (a1 ^ (8 * v8))))();
}

uint64_t sub_10066CC7C()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x41FD)))();
  return (*(v1 + 8 * (v0 - 6714)))(v2);
}

uint64_t sub_10066CCBC()
{
  v2 = *(v1 + 8);
  STACK[0x6050] = v1 + 8;
  LODWORD(STACK[0x34BC]) = 0;
  return (*(STACK[0xF18] + 8 * (((v2 == 0) * (((v0 + 2068054057) & 0x84BBFFB6) + 28754)) ^ v0)))();
}

uint64_t sub_10066CE54(uint64_t a1)
{
  v3 = *(STACK[0xE60] + (v1 - 649173214));
  v4 = v3 & 2 | 0xD4;
  v5 = (v3 ^ (2 * ((v3 ^ 0x18) & (2 * ((v3 ^ 0x18) & (2 * ((v3 ^ 0x18) & (2 * ((v3 ^ 0x18) & (2 * ((v4 << (94 * (v2 ^ 0x9C) + 13)) & (v3 ^ 0x18) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4))) ^ 0xAF;
  v6 = 2115 * (((v5 ^ 0xD222) + 11742) ^ ((v5 ^ 0x9A94) + 25964) ^ ((v5 ^ 0x481B) - 18459)) - 1680;
  v7 = v6 & 0xD075 ^ 0xAE53;
  v8 = v6 ^ 0x1BD6;
  v9 = (v6 ^ (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (((2 * v6) & 0x37AE ^ 0x4BA2) & (v6 ^ 0x1B86) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7))) ^ 0xB128;
  v10 = 16777247 * (((v9 ^ 0x4C5215E0) - 1280447968) ^ ((v9 ^ 0x1EDB41EB) - 517685739) ^ ((v9 ^ 0x52893556) - 1384723798)) - 1139291581;
  v11 = ((BYTE2(v10) < 0xCu) << 8) | BYTE2(v10);
  LOBYTE(v10) = *(STACK[0xE60] + (v1 - 649173215));
  LOBYTE(v7) = v10 & 0xDE ^ 0x22;
  LOWORD(v10) = (v10 ^ (2 * ((v10 ^ 0x18) & (2 * ((v10 ^ 0x18) & (2 * ((v10 ^ 0x18) & (2 * ((v10 ^ 0x18) & (2 * ((v10 ^ 0x18) & (2 * v7) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7))) ^ 0xE4;
  LOWORD(v10) = 2115 * (((v10 ^ 0x5D96) - 23958) ^ ((v10 ^ 0x3A0E) - 14862) ^ ((v10 ^ 0x67A2) - 26530)) - 2918;
  v12 = v10 & 0xD462 ^ 0x35EF;
  v13 = (v10 ^ (2 * ((v10 ^ 0x6A94) & (2 * ((v10 ^ 0x6A94) & (2 * ((v10 ^ 0x6A94) & (2 * ((v10 ^ 0x6A94) & (2 * ((v10 ^ 0x6A94) & (2 * ((v10 ^ 0x6A94) & (2 * ((v10 ^ 0x6A94) & (2 * ((v10 ^ 0x6A94) & (2 * ((v10 ^ 0x6A94) & (2 * ((v10 ^ 0x6A94) & (2 * ((v10 ^ 0x6A94) & (2 * ((v10 ^ 0x6A94) & (2 * ((v10 ^ 0x6A94) & (2 * ((v10 ^ 0x6A94) & 0x3EF6 ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12))) ^ 0xB792;
  v14 = 31 * (((v13 ^ 0xC8338CD) - 209926349) ^ ((v13 ^ 0xF44C479E) + 196327522) ^ ((v13 ^ 0xF8CF1CA3) + 3203933)) + 8329744;
  v15 = ((BYTE2(v14) < 0x73u) << 8) | BYTE2(v14);
  v16 = *(STACK[0xE60] + (v1 - 649173212));
  v17 = (v16 | ((v16 < 0x66) << 8)) + 192151825;
  v18 = ((2 * (v17 & 0x3B4)) | 0x600000) & (v17 ^ 0xC60212B1) ^ v17 & 0x3B4 ^ (((((v17 & 0x3B4) >> 7) & 1) << 8) | 0x64030000);
  v19 = (2 * (v17 ^ 0xC60212B1)) & 0x12682104 ^ 0x1108A105 ^ ((2 * (v17 ^ 0xC60212B1)) ^ 0xCC76020A) & (v17 ^ 0xC60212B1);
  v20 = (4 * v18) & 0x777BA100 ^ v18 ^ ((4 * v18) ^ 0x9C4C0000) & v19;
  v21 = (4 * v19) & 0x777BA104 ^ 0x22112101 ^ ((4 * v19) ^ 0xDDEE8414) & v19;
  v22 = (16 * v20) & 0x777BA100 ^ v20 ^ ((16 * v20) ^ 0x35B00000) & v21;
  v23 = (16 * v21) & 0x777BA100 ^ 0x41A105 ^ ((16 * v21) ^ 0x77BA1050) & v21;
  v24 = v22 ^ (v22 << 8) & 0x777BA100 ^ ((v22 << 8) ^ 0x6B000000) & v23 ^ 0x5210A105;
  return (*(STACK[0xF18] + 8 * v2))(a1, v17, (2 * ((v24 << 16) & 0x777B0000 ^ v24 ^ ((v24 << 16) ^ 0x21050000) & ((v23 << 8) & 0x777B0000 ^ 0x45A0000 ^ ((v23 << 8) ^ 0x7BA10000) & v23))) ^ v17, (v11 + 1489456722), (v15 + 450529343));
}

uint64_t sub_10066D3A0(uint64_t a1, int a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a1 + v11) = (v10 - ((2 * v10) & 0xBF) + 95) ^ *(a7 + ((v12 | 0x100) ^ v13) + v11);
  v14 = v7 < v8;
  if (v14 == v11 + 1 > a3)
  {
    v14 = v11 + a2 < v7;
  }

  return (*(STACK[0xF18] + 8 * ((!v14 * a4) ^ v9)))();
}

uint64_t sub_10066D5D8@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x39D4]) = -371865839;
  *(v1 + 124) = 1979949814;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_10066D624@<X0>(int a1@<W8>)
{
  v3 = (((LODWORD(STACK[0x7FF8]) ^ 0xE2C7CB20) + 490222816) ^ ((LODWORD(STACK[0x7FF8]) ^ 0xCEC57217) + 825921001) ^ ((((v1 ^ 0xBD9C) - 14588) ^ LODWORD(STACK[0x7FF8]) ^ 0xC5D72C19) + 975733210)) - (LODWORD(STACK[0x17DC]) + a1) - 1464987832;
  v4 = (v2 > 0x62B808E5) ^ (v3 < 0x9D47F71A);
  v5 = v2 - 1656228070 > v3;
  if (v4)
  {
    v5 = v2 > 0x62B808E5;
  }

  return (*(STACK[0xF18] + 8 * ((21 * !v5) ^ v1)))();
}

uint64_t sub_10066D708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] - 32996;
  v5 = STACK[0xF18];
  STACK[0x98B8] = *(STACK[0xF18] + 8 * v4);
  return (*(v5 + 8 * ((v3 - 20528) ^ v4)))(a1, a2, a3, 0x1D54AEB378980553);
}

uint64_t sub_10066D7D0()
{
  v1 = v0 - 16856;
  v2 = *STACK[0x1E00];
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((~(&STACK[0x10000] + 3800) & 0xF0DFC2BE | (&STACK[0x10000] + 3800) & 0xF203D40) ^ 0x16F9D971) + 296753103;
  STACK[0x10ED8] = v2;
  LODWORD(v2) = v0 ^ 0x41F1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * v2))(&STACK[0x10ED8]);
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_10066DA40()
{
  v2 = (v0 + 950282294) ^ v1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0xCE73)))(v2);
  STACK[0x8F88] = v4;
  v5 = STACK[0xA940];
  if (!v4)
  {
    v5 = 371891397;
  }

  LODWORD(STACK[0xA948]) = v5;
  return (*(v3 + 8 * ((24169 * (v5 == -371865839)) ^ v0)))();
}

uint64_t sub_10066DABC()
{
  LODWORD(STACK[0x8D68]) = v1;
  v2 = STACK[0x3088];
  v3 = STACK[0x1B20];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v2;
  LODWORD(STACK[0x655C]) = v3;
  LODWORD(STACK[0x884C]) = 593757136;
  return (*(STACK[0xF18] + 8 * (v0 - 30246)))();
}

uint64_t sub_10066DB0C()
{
  v4 = *(v0 + 64) - (*(v0 + 16) ^ v3);
  *(v0 + 64) = v4;
  *(v0 + 64) = (*(v2 + 16) ^ ((v1 ^ 0x38D5) - 371875765)) + v4;
  *(v0 + 16) = *(v2 + 16);
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x38D5)))();
}

uint64_t sub_10066DB64()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] + 8113;
  STACK[0x9D78] = &STACK[0x42A8];
  if (STACK[0x2920])
  {
    v2 = LODWORD(STACK[0x49CC]) == v0 - 371901482;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  return (*(STACK[0xF18] + 8 * ((458 * v3) ^ v1)))();
}

uint64_t sub_10066DD20()
{
  v2 = STACK[0x4310];
  v3 = *STACK[0x4310];
  v4 = STACK[0x8B50];
  STACK[0xEC0] = STACK[0x8B50];
  *(v3 + 72 * v4 + 16) = v1;
  return (*(STACK[0xF18] + 8 * ((51 * (((((v0 - 41) & 0xFD) - 113) ^ (*(*v2 + 72 * v4 + 16) == 0)) & 1)) ^ v0)))();
}

uint64_t sub_10066DF54()
{
  v1 = v0 - 20561;
  v2 = v0 ^ 0x4192;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * v2))();
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_10066DFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 30181;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x32D0];
  STACK[0x5D28] = &STACK[0x53EC];
  LODWORD(STACK[0x4704]) = -608899827;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10066E0B0()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 15757;
  v2 = STACK[0xF10] - 31080;
  LODWORD(STACK[0x1388]) = STACK[0x98D4];
  LODWORD(STACK[0x551C]) = (((LODWORD(STACK[0x9EF8]) ^ 0xE586D8E0) + 444147488) ^ ((LODWORD(STACK[0x9EF8]) ^ 0x66C06649) - 1723885129) ^ ((v1 ^ 0x6A933416 ^ LODWORD(STACK[0x9EF8])) - 1788049848)) - (((LODWORD(STACK[0x9F00]) ^ 0x911AE75A) + 1860507814) ^ ((LODWORD(STACK[0x9F00]) ^ 0x2715E878) - 655747192) ^ ((LODWORD(STACK[0x9F00]) ^ 0x5FDAC833) - 1608173619)) + 956784679;
  return (*(STACK[0xF18] + 8 * ((10938 * ((v2 ^ 0xF1CA4D4u) < 0x42505703)) ^ (v0 - 35472))))();
}

uint64_t sub_10066E41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  ++*a5;
  LODWORD(STACK[0x10EE0]) = v5 + 155453101 * ((((2 * (&STACK[0x10000] + 3800)) | 0xBF5CF38) - (&STACK[0x10000] + 3800) + 2047154276) ^ 0x63DCFC53) + 296785540;
  STACK[0x10ED8] = 0;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v5 + 48708)))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v6 + 8 * v5);
  return (*(v6 + 8 * (((v5 ^ 0x6C82) - 17691) ^ v5)))(v7);
}

uint64_t sub_10066E4F4()
{
  v1 = (STACK[0xF10] + 569042112) & 0xDE14F3D7;
  v2 = STACK[0xF10] - 1496115432;
  STACK[0x3270] = v0;
  return (*(STACK[0xF18] + 8 * (v2 ^ 0xA6D3AA8A ^ (27402 * (v2 != v1 + 191878238)))))(51019);
}

uint64_t sub_10066E5B8()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 1118)))(v1 ^ ((v0 - 49970) | 0x24C0) ^ 0xD22F6FFB);
  STACK[0x46B8] = v3;
  STACK[0x65D8] = v3;
  return (*(v2 + 8 * (((v3 == 0) * (3 * (v0 ^ 0xD581) - 15030)) ^ v0)))();
}

uint64_t sub_10066E62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] + 11600;
  LODWORD(STACK[0xA54C]) = STACK[0x98D4] & 0xFFFFFFFE ^ 0x24F6B52C;
  return (*(STACK[0xF18] + 8 * (v3 - 29445)))(a1, a2, a3, v4, (v4 ^ 0xB933) % (LODWORD(STACK[0xA554]) ^ 0x375CB774u) + 1077842507);
}

uint64_t sub_10066E6AC()
{
  v1 = STACK[0x9660] + 376;
  STACK[0x8C30] = v1;
  v2 = 634647737 * (((((&STACK[0x10000] + 3800) | 0x1C27F0D6) ^ 0xFFFFFFFE) - (~(&STACK[0x10000] + 3800) | 0xE3D80F29)) ^ 0x8E4E20D5);
  STACK[0x10EE0] = v1;
  LODWORD(STACK[0x10ED8]) = v2 - 1431125376;
  LODWORD(STACK[0x10EE8]) = v0 - 11921 - v2 + 19346;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 38411)))(&STACK[0x10ED8]);
  STACK[0x16D8] = *(v3 + 8 * (v0 - 11921));
  return (*(v3 + 8 * ((((v0 - 13554) | 0x3811) ^ 0x2D38) + v0 - 11921)))(v4);
}

uint64_t sub_10066E9BC@<X0>(unint64_t a1@<X8>)
{
  v8 = STACK[0xF18];
  STACK[0x7668] = *(STACK[0xF18] + 8 * v2);
  STACK[0x4B90] = v6 + ((v3 - 41193) | 0x410u) + 0x6B183CBD16A9D0F5;
  STACK[0x6900] = v7;
  STACK[0x8438] = a1;
  STACK[0x81D0] = v1;
  STACK[0x3398] = v5;
  STACK[0x7438] = v4;
  v9 = STACK[0x7690];
  STACK[0x8C20] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v9 + (((v3 - 8428) | 0xA3Bu) ^ 0x8A2BLL);
  return (*(v8 + 8 * ((25 * (v7 == 0x7E666516A39B34A6)) ^ v3)))();
}

uint64_t sub_10066EB74()
{
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((((&STACK[0x10000] + 3800) ^ 0xCEED8C2F) - 2 * (((&STACK[0x10000] + 3800) ^ 0xCEED8C2F) & 0x1C58041D) - 1671953379) ^ 0xB49393FD) + 296753103;
  STACK[0x10ED8] = 0;
  v1 = (*(STACK[0xF18] + 8 * (v0 + 16271)))(&STACK[0x10ED8]);
  return (STACK[0x3468])(v1);
}

uint64_t sub_10066ED24()
{
  LODWORD(STACK[0xE80]) = STACK[0x859C];
  v1 = STACK[0x67BC];
  v2 = ((LODWORD(STACK[0x708C]) ^ 0x9B1C23F1) + 1692654607) ^ ((LODWORD(STACK[0x708C]) ^ 0x81E8C4F8) + 2115451656) ^ ((LODWORD(STACK[0x708C]) ^ 0x425D8226) + (((v0 - 19494) | 0x2064) ^ 0xBDA25C36));
  LODWORD(STACK[0xE70]) = STACK[0x67BC];
  LODWORD(STACK[0xE60]) = v2 - (((v1 ^ 0x5DFC9549) - 1576834377) ^ ((v1 ^ 0xDEA7D327) + 559426777) ^ ((v1 ^ 0x6A8E817F) - 1787724159)) + 1859362334;
  STACK[0xE40] = LODWORD(STACK[0x5714]);
  LODWORD(STACK[0xE30]) = STACK[0x2DCC];
  v3 = STACK[0x6D04];
  v4 = ((LODWORD(STACK[0x6334]) ^ 0x8D969837) + 1919510473) ^ ((LODWORD(STACK[0x6334]) ^ 0x2E8EB880) - 781105280) ^ ((LODWORD(STACK[0x6334]) ^ 0xCE9DD902) + 828516094);
  LODWORD(STACK[0xE20]) = STACK[0x6D04];
  LODWORD(STACK[0xE10]) = v4 - (((v3 ^ 0x57C2418B) - 1472348555) ^ ((v3 ^ 0x7AA1A79D) - 2057414557) ^ ((v3 ^ 0xC4B62107) + 994696953)) - 2085604700;
  STACK[0xE00] = LODWORD(STACK[0x60A4]);
  STACK[0xEA0] = STACK[0x8A48];
  LODWORD(STACK[0xE90]) = STACK[0x6B14];
  STACK[0xEB0] = STACK[0x6FE8];
  LODWORD(STACK[0xEC0]) = STACK[0x15B4];
  v5 = *(STACK[0xF18] + 8 * v0);
  v6 = STACK[0xF10];
  LODWORD(STACK[0xDF0]) = 61 * (STACK[0xF10] ^ 0x8A7D);
  LODWORD(STACK[0xDE0]) = v6 - 27834;
  return v5();
}

uint64_t sub_10066F070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (STACK[0xF10] - 227839340) & 0xD94BABB;
  v4 = STACK[0xF10] - 34197;
  LODWORD(STACK[0x98D8]) = STACK[0x98D4];
  v5 = *(STACK[0x98E8] + 32) + 625143806;
  v6 = ((v5 & 0xDABD0FFD) << (v3 + 118)) & (v5 ^ 0x9A39AFF9) ^ v5 & 0xDABD0FFD;
  v7 = ((2 * (v5 ^ 0x9A69A829)) ^ 0x81A94FA8) & (v5 ^ 0x9A69A829) ^ (2 * (v5 ^ 0x9A69A829)) & 0x40D4A7D4;
  v8 = v7 ^ 0x4054A054;
  v9 = (v7 ^ 0x808780) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x3529F50) & v8 ^ (4 * v8) & 0x40D4A7D0;
  v11 = (v10 ^ 0x508750) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x40842084)) ^ 0xD4A7D40) & (v10 ^ 0x40842084) ^ (16 * (v10 ^ 0x40842084)) & 0x40D4A7C0;
  v13 = v11 ^ 0x40D4A7D4 ^ (v12 ^ 0x402500) & (v11 << 8);
  LODWORD(STACK[0x98F0]) = v5 ^ (2 * (((v13 << 16) ^ 0x27D40000) & (((v12 ^ 0x40948294) << 8) & 0x40D40000 ^ 0x500000 ^ (((v12 ^ 0x40948294) << 8) ^ 0xD4A70000) & (v12 ^ 0x40948294)) ^ v13 ^ ((v13 << 16) & 0x40D40000 | 0x2504))) ^ 0x36153DD3;
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x1D90)))(a1, a2, a3);
}

uint64_t sub_10066F310()
{
  if (STACK[0x70F0])
  {
    v1 = LODWORD(STACK[0x3948]) == -371865839;
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  return (*(STACK[0xF18] + 8 * ((v2 * (((v0 ^ 0x9E2E) + 29678) ^ 0x8B3E)) ^ v0)))();
}

uint64_t sub_10066F460()
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = STACK[0x52AC];
  LODWORD(STACK[0x35EC]) = 1693393261;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10066F4F4()
{
  LODWORD(STACK[0x3980]) = -371865839;
  v1 = STACK[0x41E8];
  STACK[0x17B8] = *(STACK[0x41E8] + 32) ^ 0x981390C2FED9246;
  return (*(STACK[0xF18] + 8 * (((*(v1 + 380) == -2109658874) * (((v0 + 3147167) & 0xFFCFF7EF) + 44350)) ^ v0)))();
}

uint64_t sub_10066F57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = a7 + 12726;
  v9 = ((STACK[0xE30] + STACK[0xE10]) << (v7 ^ 0x3Cu)) & 0xF80;
  v10 = STACK[0xDA0] + v9;
  v11 = STACK[0xD90] + v9;
  v13 = v10 < STACK[0xD80] && STACK[0xE40] < v11;
  return (*(STACK[0xF18] + 8 * (((v8 ^ 0x8D09) * v13) ^ v8)))();
}

uint64_t sub_10066F5F4()
{
  STACK[0xAD60] = v1[15];
  v2 = v1[1];
  STACK[0x87A0] = (v1 + 1);
  LODWORD(STACK[0x10ED8]) = (v0 - 1762671462) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x63C0B4BC) - ((&STACK[0x10000] + 3800) & 0x63C0B4B8)) ^ 0x52C17998));
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 6084)))(&STACK[0x10ED8]);
  v6 = v1[20];
  v5 = (v1 + 20);
  STACK[0x70A0] = v5 - 124;
  STACK[0x66E8] = v5;
  STACK[0x7790] = v6;
  STACK[0xAD68] = *(v5 + 352);
  v7 = *(v5 - 24);
  STACK[0x5C58] = *(v5 - 32);
  STACK[0x25F8] = *(v5 + 160);
  STACK[0x6928] = v7;
  v8 = STACK[0x7690];
  v9 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x8B80] = v9;
  STACK[0x4C50] = v9;
  STACK[0x8EE8] = (v9 + 160);
  STACK[0x9218] = (v9 + 176);
  STACK[0x3630] = (v9 + 192);
  STACK[0x7690] = v8 + 208;
  STACK[0x8318] = 0;
  STACK[0x8208] = 0;
  STACK[0x14E8] = 0;
  LODWORD(STACK[0x91AC]) = -371865839;
  return (*(v3 + 8 * (((*(STACK[0x790] - 573165550) != 0) * (((v0 + 978271494) & 0xC5B09B3F) - 35202)) ^ v0)))(v4);
}

uint64_t sub_10066F768()
{
  v1 = v0 ^ 0x9745;
  LODWORD(STACK[0x318C]) = 3 * (v1 ^ 0x9BBB) + *(STACK[0x1258] + 16) - 786013328;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10066F81C()
{
  v1 = STACK[0xF10] - 16196;
  v2 = (STACK[0xF10] - 18963) | 0x1E85;
  v3 = STACK[0xF10] + 2052;
  STACK[0x4828] = v0;
  return (*(STACK[0xF18] + 8 * ((((v2 ^ 0xFFFFEBF0) + v1) * (v0 == 0)) ^ v3)))();
}

uint64_t sub_10066FA5C()
{
  v0 = STACK[0xF10] - 33711;
  LODWORD(STACK[0xA324]) = LODWORD(STACK[0xA320]) - 423361120;
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1167)))();
}

uint64_t sub_10066FC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10] - 34164;
  LODWORD(STACK[0x5714]) = STACK[0x98D4] & 0xFFFFFFFE ^ 0xE9D5C711;
  return (*(STACK[0xF18] + 8 * (v3 ^ 0x1DF1)))(a1, a2, a3);
}

uint64_t sub_10066FD64@<X0>(unint64_t a1@<X8>)
{
  STACK[0x3A80] = a1;
  v3 = STACK[0x7690];
  STACK[0x6340] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v3 + 16;
  v4 = v1 ^ 0x526E ^ (v1 - 14101) ^ v2 ^ 0x10A99C80114D0F82;
  STACK[0x2B08] = v4;
  return (*(STACK[0xF18] + 8 * ((45 * (v4 == 0x10A99C80114D1487)) | v1)))();
}

uint64_t sub_10066FDF0()
{
  v1 = STACK[0xF10] - 30246;
  LODWORD(STACK[0x2F8C]) = v0;
  v2 = STACK[0x9708];
  v3 = STACK[0x6660];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v2;
  LODWORD(STACK[0x655C]) = v3;
  LODWORD(STACK[0x884C]) = 272244711;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10066FEE4()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1F1E)))();
}

uint64_t sub_10066FFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0xF10] - 12989;
  LODWORD(STACK[0x19AC]) = v7;
  return (*(STACK[0xF18] + 8 * v8))(a1, a2, a3, a4, a5, a6, a7, v7);
}

uint64_t sub_100670058(uint64_t a1)
{
  *a1 = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v4;
  *(a1 + 56) = 0;
  *(a1 + 8) = v1;
  *(a1 + 24) = 0;
  v6 = STACK[0xF18];
  STACK[0x98B8] = *(STACK[0xF18] + 8 * v5);
  return (*(v6 + 8 * ((v5 ^ 0x2D58) + v5)))();
}

uint64_t sub_100670160()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 4037)))();
}

uint64_t sub_100670294@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  *(a1 + 1892) = a2 + 8;
  v5 = (((v4 ^ 0xDE525404) + ((v2 + 563456368) & 0xDE6A6FF2 ^ 0x21ADE97E)) ^ ((v4 ^ 0xE1747DA4) + 512459356) ^ (((v2 - 1452796228) & 0x5697C7E5) + 688654734 + (v4 ^ 0xD6F3EEB1))) + 2062242668;
  v6 = ((a2 + 8) > 0x6EEA73A4) ^ (v5 < 0x91158C5B);
  v7 = a2 - 1860858781 > v5;
  if (v6)
  {
    v7 = (a2 + 8) > 0x6EEA73A4;
  }

  if (v7)
  {
    v3 = 371891407;
  }

  *(a1 + 1896) = v3;
  return (*(STACK[0xF18] + 8 * ((52 * (v3 == -371865839)) ^ v2)))();
}

uint64_t sub_1006703F4@<X0>(int a1@<W8>)
{
  v1 = a1 & 0x4BF9ABBF;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 & 0x4BF9ABBF ^ 0x4192u)))();
  return (*(v2 + 8 * (v1 - 14327)))(v3);
}

uint64_t sub_100670548()
{
  v0 = STACK[0xF10] - 5823;
  STACK[0x15A8] = STACK[0x4868];
  LODWORD(STACK[0x2D70]) = STACK[0x5AFC];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100670598()
{
  v2 = STACK[0x2628];
  v3 = STACK[0x7D1C];
  STACK[0x4A98] = v0;
  STACK[0x3E98] = v2;
  LODWORD(STACK[0x655C]) = v3;
  LODWORD(STACK[0x884C]) = -994667961;
  return (*(STACK[0xF18] + 8 * (v1 - 30246)))();
}

uint64_t sub_10067063C()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v1 + 8 * (v0 - 15653)))(v2);
}

uint64_t sub_100670678()
{
  STACK[0x10EE0] = *(v1 + 8);
  LODWORD(STACK[0x10ED8]) = (v0 + 703903889) ^ (634647737 * ((2 * ((&STACK[0x10000] + 3800) & 0x4C87A180) - (&STACK[0x10000] + 3800) + 863526526) ^ 0x5EEE7182));
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 29446)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_10067070C(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *a4 += v4 - 3196;
  LODWORD(STACK[0x10EE0]) = v4 + 155453101 * ((~(&STACK[0x10000] + 3800) & 0xEA996FAB | (&STACK[0x10000] + 3800) & 0x15669050) ^ 0xCBF7464) + 296785549;
  STACK[0x10ED8] = 0;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v4 + 48717)))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v5 + 8 * v4);
  return (*(v5 + 8 * (v4 + 2546)))(v6);
}

uint64_t sub_1006707B8()
{
  v0 = STACK[0xF10] - 3185;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(STACK[0x72F0]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1006707F4@<X0>(int a1@<W8>)
{
  v3 = ((a1 + 37098) ^ 0x39B9u) + v1 + ((v1 < 0x482D4312) << 32);
  v4 = *(v2 + 8);
  v5 = v4 + 1535988364;
  v6 = v4 > 0xFFFFFFFFA472AD73;
  v7 = v5 > v3 + 325026879;
  if (v6 == v3 + 325026879 < 0x5B8D528C)
  {
    v6 = v7;
  }

  return (*(STACK[0xF18] + 8 * ((27660 * v6) ^ a1)))();
}

uint64_t sub_10067088C()
{
  v6 = *(STACK[0xED0] - 0x217E172EFA1E81CLL);
  v7 = v1 - 3724 + 40409587 * LODWORD(STACK[0x93E0]) - 1378567611;
  v8 = ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x3C96800) - 2083952639) ^ 0x65EF73CE) * v5;
  LODWORD(STACK[0x10F04]) = v8 + v0;
  STACK[0x10F10] = v6;
  LODWORD(STACK[0x10ED8]) = v7 ^ v8;
  STACK[0x10EE0] = &STACK[0x3610];
  STACK[0x10EE8] = v3 ^ 0xB2C981EB4C31130FLL;
  LODWORD(STACK[0x10EF0]) = v8 ^ 0xD6FFF64B;
  LOWORD(STACK[0x10F00]) = v4 - ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x6800) + 26625) ^ 0x73CE) * v5;
  STACK[0x10EF8] = 0;
  LODWORD(STACK[0x10EF4]) = v8 ^ v2;
  LODWORD(STACK[0x10F08]) = v1 - v8 + 1777283598;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * (v1 + 44377)))(&STACK[0x10ED8]);
  v11 = LODWORD(STACK[0x10F0C]) != ((v1 + 40474) ^ 0xE9D57CB4);
  return (*(v9 + 8 * (((8 * v11) | (16 * v11)) ^ v1)))(v10);
}

uint64_t sub_1006709CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v14 = (((*a7 ^ v12) + v11) ^ ((*a7 ^ 0x78137967) - 2014542183) ^ (((((v8 + a3) | 0x50C0) - 591097627) ^ *a7) + 591074651)) + (((v8 - 12092) | 0x408) ^ v10);
  v15 = v14 < v9;
  v16 = v7 < v14;
  if (v7 < v9 != v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  return (*(STACK[0xF18] + 8 * ((v17 * v13) ^ v8)))();
}

uint64_t sub_100670B34()
{
  v1 = STACK[0xF18];
  STACK[0x78C0] = *(STACK[0xF18] + 8 * (v0 + 2142));
  return (*(v1 + 8 * (v0 + 2142 + v0 + 9093 - 3515)))();
}

uint64_t sub_100670D4C@<X0>(int a1@<W0>, int a2@<W1>, __int16 a3@<W2>, unsigned int a4@<W3>, int a5@<W4>, int a6@<W8>)
{
  v15 = *(v14 + (((*(v6 + (v7 ^ 0xF3) * ((a6 + 20896) ^ 0x89AE) + 4882525 - (((((v7 ^ 0xF3) * ((a6 + 20896) ^ 0x89AEu) + 4882525) * v9) >> 32) >> 11) * v10) ^ 0x58) * a3) & 0x1FF));
  v16 = v15 & 0x18 ^ 0xF1;
  *(v8 + (*(v12 + 4 * (a2 + ((v7 + 1536) ^ v11) * a1 - ((((a2 + ((v7 + 1536) ^ v11) * a1) * a4) >> 32) >> 13) * a5)) ^ 0x8B6B2AE6) + 8464) = v15 ^ BYTE2(v13) ^ (2 * ((v15 ^ 0x36) & (2 * ((v15 ^ 0x36) & (2 * ((v15 ^ 0x36) & (2 * ((v15 ^ 0x36) & (2 * (((2 * (v16 ^ v15 & 0x2E)) ^ 0xCC) & (v15 ^ 0x36) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ 0x5D;
  return (*(STACK[0xF18] + 8 * ((62315 * (v7 == 255)) ^ a6)))();
}

uint64_t sub_100670F68()
{
  v4 = STACK[0xCD8] + 36;
  *(v3 - 256) = (v0 + 5512) ^ (1603510583 * (((v1 | 0xAC99A0E5) - (v1 | 0x53665F1A) + 1399217946) ^ 0x3B42924E));
  v5 = (*(v2 + 8 * (v0 ^ 0xA0D2)))(v3 - 256);
  v6 = *(v3 - 252);
  v7 = STACK[0x1F28];
  v8 = STACK[0x1574];
  v9 = STACK[0xCD8] + 96;
  STACK[0x1368] = v4;
  LODWORD(STACK[0x1864]) = v6;
  STACK[0x1F60] = v7;
  LODWORD(STACK[0xD74]) = v8;
  STACK[0x1158] = v9;
  LODWORD(STACK[0x1560]) = 1396925413;
  return (*(v2 + 8 * v0))(v5);
}

uint64_t sub_1006710A8(uint64_t a1)
{
  *(a1 + 8) = 0xDF83970A92E86607;
  *(a1 + 16) = 0xDF83970A92E86607;
  *(a1 + 24) = 0xDF83970A92E86607;
  *(a1 + 32) = 0xDF83970A92E86607;
  *(a1 + 40) = 1717593696;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100671250()
{
  v3 = v0 < 0xFFFFFFCF;
  if ((v2 & 1) == ((((v1 + 33088) | 0x10A) - 34679) ^ (v1 - 1325)))
  {
    v3 = 0;
  }

  return (*(STACK[0xF18] + 8 * ((21381 * v3) ^ v1)))();
}

uint64_t sub_1006712AC()
{
  v4 = 4 * (63 - v0);
  v5 = *(v3 + v4 - 12);
  v6 = *(v3 + v4 - 28);
  v7 = v2 + v4;
  *(v7 - 12) = v5;
  *(v7 - 28) = v6;
  return (*(STACK[0xF18] + 8 * ((3344 * (v0 - 17976 + ((v1 - 44092) | 0x4240u) == 64)) ^ v1)))();
}

uint64_t sub_1006713DC()
{
  v5 = *(v4 + 16) + v2;
  STACK[0x438] = STACK[0x7E0];
  LODWORD(STACK[0x4C4]) = v5;
  LODWORD(STACK[0x628]) = 65221522;
  STACK[0x290] = (&STACK[0x4B0] ^ 0xDF7F6BF4BF95BFF4) + 0x3198BFFBE6EEC9FCLL + ((2 * &STACK[0x4B0]) & 0xBEFED7E97F2B7FE0);
  v6 = *(STACK[0x430] + 8 * v0);
  STACK[0x3F0] = (2 * (v1 & 0x2C0138B380A98728) - v1 + 0x53FEC74C7F5678D5) ^ 0x6C0FD0A0E88D4A7ELL;
  STACK[0x3E8] = (((2 * v1) | 0x8DB4E84C4533F0B6) - v1 - 0x46DA74262299F85BLL) ^ 0xE85089E81398357FLL;
  v7 = (v3 - 5736) | 0x3447;
  STACK[0x220] = (~v1 & 0x43BA59C27AA5BC13 | v1 & 0xBC45A63D855A43E8) ^ 0x7C4B4E2EED7E8EB8;
  STACK[0x218] = v1 | 0xE988C1FE99F7C7B4;
  v8 = 1603510583 * ((v1 - 2 * (v1 & 0x7EDC9A4184A7800) + 0x7EDC9A4184A7801) ^ 0x381CDE488F914AAALL);
  STACK[0x3E0] = v8;
  STACK[0x3D8] = v8 ^ 0xDFE1DA57;
  v9 = (v3 - 538868897);
  STACK[0x3C8] = v9;
  LODWORD(STACK[0x3C4]) = v9 ^ 0xDFE1F005;
  LODWORD(STACK[0x3C0]) = v3 - 8075196;
  LODWORD(STACK[0x3BC]) = v3 + 1739031639;
  LODWORD(STACK[0x3B8]) = v3 + 2024808709;
  LODWORD(STACK[0x3B4]) = v3 - 538868274;
  LODWORD(STACK[0x284]) = v3 - 20216;
  LODWORD(STACK[0x280]) = v3 - 7296;
  LODWORD(STACK[0x364]) = v7;
  LODWORD(STACK[0x27C]) = v7 ^ 0x743E;
  *&STACK[0x2D0] = vdupq_n_s32(0x289E845Eu);
  *&STACK[0x2E0] = vdupq_n_s32(0x3411000u);
  *&STACK[0x2B0] = vdupq_n_s32(0x74386FBEu);
  *&STACK[0x2C0] = vdupq_n_s32(0xBC79040u);
  *&STACK[0x2A0] = vdupq_n_s32(0xF954171u);
  v10.i64[0] = 0x100000001;
  v10.i64[1] = 0x100000001;
  *&STACK[0x200] = vnegq_f32(v10);
  LODWORD(STACK[0x360]) = v3 - 1129581307;
  LODWORD(STACK[0x244]) = v3 + 56450823;
  LODWORD(STACK[0x35C]) = v3 - 16048;
  LODWORD(STACK[0x3B0]) = v3 - 22258;
  LODWORD(STACK[0x3AC]) = v3 - 12544;
  STACK[0x350] = v4;
  LODWORD(STACK[0x34C]) = v3;
  return v6(217825342);
}

uint64_t sub_100671D0C()
{
  STACK[0x7690] += (v0 - 2905) ^ 0xFFFFFFFFFFFF8002;
  ++LOWORD(STACK[0x149A]);
  return (*(STACK[0xF18] + 8 * ((41287 * (v1 == -371865839)) ^ (v0 - 34012))))();
}

uint64_t sub_100671ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = v67 - 13398;
  v70 = STACK[0x430];
  (*(STACK[0x430] + 8 * (v67 ^ 0x9C1A)))(*(a67 - 1306953403), a2, (v67 - 208) ^ 0xE9D59139 ^ *(v68 + 8));
  return (*(v70 + 8 * v69))(217825342);
}

uint64_t sub_100671F40(uint64_t a1, int a2)
{
  v6 = 1112314453 * ((v5 - 120 - 2 * ((v5 - 120) & 0x66C3F348) - 423365810) ^ 0x995D997);
  *(v5 - 112) = v2;
  *(v5 - 120) = v6 + v4 - 35754;
  *(v5 - 104) = a2 + v6 + 7063 * (v4 ^ 0xB243) + 604404350;
  v7 = (*(v3 + 8 * (v4 + 6434)))(v5 - 120);
  return (*(v3 + 8 * v4))(v7);
}

uint64_t sub_100672190()
{
  *(STACK[0x9070] + 8) |= 0x4000000u;
  STACK[0x6608] = 0;
  v1 = STACK[0xF18];
  STACK[0x8390] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 3639)))();
}

uint64_t sub_100672270@<X0>(uint64_t a1@<X8>)
{
  v17 = v3 - 35644 + a1;
  v18 = *v11;
  v19 = (((v1 + v17) ^ *(*v12 + (v18 & v5))) & 0x7FFFFFFF) * v6;
  v20 = (v19 ^ HIWORD(v19)) * v6;
  LODWORD(v18) = ((*(*v12 + (v18 & v7)) ^ (v9 + v17)) & 0x7FFFFFFF) * v6;
  v21 = (v18 ^ WORD1(v18)) * v6;
  *(v9 + v17) = *(v4 + (v20 >> 24)) ^ *(v1 + v17) ^ *((v20 >> 24) + v15 + 2) ^ *(v16 + (v20 >> 24)) ^ *(v10 + (v21 >> 24)) ^ *(v14 + (v21 >> 24)) ^ *(v13 + (v21 >> 24)) ^ v20 ^ v21 ^ (-9 * BYTE3(v20)) ^ (BYTE3(v21) * v8);
  return (*(STACK[0xF18] + 8 * (((2 * (v17 != 0)) | (16 * (v17 != 0))) ^ v2)))();
}

uint64_t sub_1006723D4()
{
  STACK[0x5C50] = 0x3AE1413A0D5C9822;
  LODWORD(STACK[0x1374]) = -192836711;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100672430@<X0>(int a1@<W8>)
{
  v2 = (((LODWORD(STACK[0x5134]) ^ 0x345C7E90) + (a1 ^ 0xCBA3A131)) ^ ((LODWORD(STACK[0x5134]) ^ 0x8EAB06B5) + 1901394251) ^ ((LODWORD(STACK[0x5134]) ^ 0x5322BF34) + ((a1 + 9509) ^ 0xACDD05AA))) - 1696455261;
  v3 = v2 < 0xB10C5E92;
  v4 = v1 - 1324589422 < v2;
  if (v1 > 0x4EF3A16D != v3)
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((25425 * v4) ^ a1)))();
}

uint64_t sub_100672578@<X0>(int a1@<W2>, int a2@<W3>, int a3@<W6>, int a4@<W7>, int a5@<W8>)
{
  v8 = v5 < v6;
  if (v8 == a4 + a1 < v6)
  {
    v8 = a4 + a1 < v5;
  }

  return (*(STACK[0xF18] + 8 * (((((a3 + v7) | a5) ^ a2) * v8) ^ a3)))();
}

uint64_t sub_1006725D8()
{
  v3 = ((v1 & 0xC159B110) << (((v0 - 2) & 0xFB) - 58)) & (v1 ^ 0xF511AC85) ^ v1 & 0xC159B110;
  v4 = (v0 ^ 0x34690AD4) & (2 * (v1 ^ 0xF5308C85)) ^ ((2 * (v1 ^ 0xF5308C85)) ^ 0x68D27B2A) & (v1 ^ 0xF5308C85);
  v5 = v4 ^ 0x14290495;
  v6 = (v4 ^ 0x10400815) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0xD1A4F654) & v5 ^ (4 * v5) & 0x34693D94;
  v8 = (v7 ^ 0x10203401) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x24490981)) ^ 0x4693D950) & (v7 ^ 0x24490981) ^ (16 * (v7 ^ 0x24490981)) & 0x34693D90;
  v10 = v8 ^ 0x34693D95 ^ (v9 ^ 0x4011900) & (v8 << 8);
  return (*(STACK[0xF18] + 8 * ((27818 * ((v2 ^ (4 * v1) ^ (8 * ((v10 << 16) & 0x14690000 ^ v10 ^ ((v10 << 16) ^ 0x1D950000) & (((v9 ^ 0x30682485) << 8) & 0x14690000 ^ 0x14400000 ^ (((v9 ^ 0x30682485) << 8) ^ 0x93D0000) & (v9 ^ 0x30682485))))) == -269291527)) ^ v0)))();
}

uint64_t sub_1006727CC@<X0>(int a1@<W8>)
{
  v4 = *v2;
  v5 = *(*(v1 + 168) + 40) - (*(*v3 + (v4 & 0xFFFFFFFFF1F71F20)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x329F1AD0046BFA29uLL) > 0xFFFFFFFF168140F6;
  v6 = STACK[0x2FA0] - (*(*v3 + (v4 & 0xFFFFFFFFEC2178E0)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x1B32B66C61FAA489) > 0xFFFFFFFF168140F6;
  v7 = 1022166737 * ((2 * (&STACK[0x10ED8] & 0x72775A8C0ACE2F20) - &STACK[0x10ED8] - 0x72775A8C0ACE2F27) ^ 0xF302D70E4F21314BLL);
  LODWORD(STACK[0x10EE0]) = -1022166737 * ((2 * (&STACK[0x10ED8] & 0x72775A8C0ACE2F20) - &STACK[0x10ED8] - 181284647) ^ 0x4F21314B);
  LODWORD(STACK[0x10EE4]) = v7 + a1 + 782565441;
  STACK[0x10EF0] = v5 ^ v6 | v7;
  LODWORD(STACK[0x10EFC]) = v7 + a1 - 248148109;
  STACK[0x10ED8] = v7;
  LODWORD(STACK[0x10EEC]) = a1 - 248152806 - v7;
  LODWORD(STACK[0x10EE8]) = ((a1 - 248152806) ^ 0x24) + v7;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * (a1 + 16343)))(&STACK[0x10ED8]);
  return (*(v8 + 8 * SLODWORD(STACK[0x10EF8])))(v9);
}

uint64_t sub_10067297C()
{
  STACK[0x81A8] = *v1;
  STACK[0x97E8] = v0 - ((v0 << (v2 + 44)) & 0x130272185FDB248CLL) + 0x981390C2FED9246;
  LODWORD(STACK[0x6974]) = 103711529;
  return (*(STACK[0xF18] + 8 * (v2 - 1749)))();
}

uint64_t sub_100672A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x8A48] = STACK[0xEA0];
  LODWORD(STACK[0x6B14]) = STACK[0xE90];
  STACK[0x6FE8] = STACK[0xEB0];
  LODWORD(STACK[0x15B4]) = STACK[0xEC0];
  return (*(STACK[0xF18] + 8 * ((STACK[0xF10] - 33645) ^ 0x1421)))(a1, a2, a3, STACK[0xF10]);
}

uint64_t sub_100672C08()
{
  v1 = STACK[0x203C];
  v2 = 1022166737 * ((((2 * (&STACK[0x10000] + 3800)) | 0xB4A7F344) - (&STACK[0x10000] + 3800) - 1515452834) ^ 0xE0431830);
  STACK[0x10EE0] = STACK[0x7BF0];
  LODWORD(STACK[0x10EDC]) = (v0 ^ 0x1B9E) - v2 + ((v0 - 33177) ^ 0x563248ED) * v1 + 2011869203;
  LODWORD(STACK[0x10ED8]) = (v0 + 9707) ^ v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 15080)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((13741 * (LODWORD(STACK[0x10EE8]) == -371865839)) ^ v0)))(v4);
}

uint64_t sub_100672D28()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 - 598759313)))();
  return (*(v1 + 8 * ((((327 * (v0 ^ 0x23B12257)) ^ 0xDC4FA59C) + v0) ^ (61530 * (v0 < 0xF5E720BC)))))(v2);
}

uint64_t sub_100672D90()
{
  v1 = STACK[0xF18];
  v2 = *(STACK[0xF18] + 8 * v0);
  STACK[0xED0] = v2;
  STACK[0x8F00] = v2;
  return (*(v1 + 8 * (v0 ^ 0x38F1 ^ (19728 * ((v0 ^ 0x9BF3FE3C) >= ((v0 + 94) | 0xA01u) - 112012344)))))();
}