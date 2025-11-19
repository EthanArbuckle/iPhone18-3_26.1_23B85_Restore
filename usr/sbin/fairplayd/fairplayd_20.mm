uint64_t sub_1005FA01C(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xF10] - 27257;
  STACK[0x95A0] = STACK[0x78A0];
  LOWORD(STACK[0x79DE]) = 7085;
  LODWORD(STACK[0x16B4]) = -2060635965;
  return (*(STACK[0xF18] + 8 * v2))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_1005FA074@<X0>(unsigned int a1@<W8>)
{
  *(v5 + 1800) = v3;
  *(v5 + 1808) = v1 + 8;
  v6 = v1 + 553202346 > a1 + ((v2 - 3465) | 0x179) + (((v2 - 16607) | 0x11) ^ 0x299970D8);
  if (a1 > 0xD666581F != (v1 + 553202346) < 0x2999A7E0)
  {
    v6 = (v1 + 553202346) < 0x2999A7E0;
  }

  if (v6)
  {
    v7 = 371891407;
  }

  else
  {
    v7 = v4;
  }

  *(v5 + 1812) = v7;
  return (*(STACK[0xF18] + 8 * ((7431 * (v7 == -371865839)) ^ v2)))();
}

uint64_t sub_1005FA140()
{
  v0 = (STACK[0xF10] - 31544) | 0x8C24;
  v1 = STACK[0xF10] - 32961;
  v2 = STACK[0xF18];
  STACK[0x2850] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0xEAB1) + v1)))();
}

uint64_t sub_1005FA184()
{
  v1 = STACK[0x8AA0];
  if ((STACK[0x8AA0] - 0x76120422FCB500CDLL) <= 5000)
  {
    v2 = 5000;
  }

  else
  {
    v2 = STACK[0x8AA0] - 0x76120422FCB500CDLL;
  }

  STACK[0xCA0] = v2;
  STACK[0xDA0] = STACK[0x8FA8];
  STACK[0xD20] = STACK[0x1DA8];
  STACK[0xD00] = STACK[0x43B8];
  STACK[0xAF0] = STACK[0x9538];
  STACK[0xB20] = STACK[0x23A8];
  STACK[0xB30] = STACK[0x7B60];
  STACK[0xCF0] = STACK[0x4060];
  STACK[0xB10] = STACK[0x5238];
  STACK[0xB00] = STACK[0x6D98];
  STACK[0xAE8] = STACK[0x8758];
  STACK[0xC60] = STACK[0x91D0];
  STACK[0xD80] = STACK[0x5700];
  STACK[0xD90] = STACK[0x95E8];
  STACK[0xC80] = STACK[0x4B80];
  STACK[0xC90] = STACK[0x4218];
  STACK[0xCC0] = v1 - 0x76120422FCB50196;
  v3 = v1 + 0x76120422FCB4765DLL + (v0 + 31934);
  v4 = v1 >= 0x76120422FCB501A5;
  v5 = 0xEC240845F96A033DLL;
  if (v4)
  {
    v5 = v3;
  }

  v6 = (v5 ^ 0xCB9BE7BBC611FCC7) & (2 * (v5 & 0x13DBF7BA0695FCD6)) ^ v5 & 0x13DBF7BA0695FCD6;
  v7 = ((2 * (v5 ^ 0xC88C8DDFC331ECCBLL)) ^ 0xB6AEF4CB8B48203ALL) & (v5 ^ 0xC88C8DDFC331ECCBLL) ^ (2 * (v5 ^ 0xC88C8DDFC331ECCBLL)) & 0xDB577A65C5A4101CLL;
  v8 = v7 ^ 0x49510A2444A41005;
  v9 = (v7 ^ 0x9206704000000018) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x6D5DE99716904074) & v8 ^ (4 * v8) & 0xDB577A65C5A4101CLL;
  v11 = (v10 ^ 0x4955680504800000) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x92021260C1241009)) ^ 0xB577A65C5A4101D0) & (v10 ^ 0x92021260C1241009) ^ (16 * (v10 ^ 0x92021260C1241009)) & 0xDB577A65C5A41010;
  v13 = (v12 ^ 0x9157224440000000) & (v11 << 8) ^ v11;
  v14 = (((v12 ^ 0x4A00582185A4100DLL) << 8) ^ 0x577A65C5A4101D00) & (v12 ^ 0x4A00582185A4100DLL) ^ ((v12 ^ 0x4A00582185A4100DLL) << 8) & 0xDB577A65C5A41000;
  v15 = v13 ^ 0xDB577A65C5A4101DLL ^ (v14 ^ 0x5352604584000000) & (v13 << 16);
  v16 = (v5 ^ (2 * ((v15 << 32) & 0x5B577A6500000000 ^ v15 ^ ((v15 << 32) ^ 0x45A4101D00000000) & (((v14 ^ 0x88051A2041A4001DLL) << 16) & 0x5B577A6500000000 ^ 0x1123A4100000000 ^ (((v14 ^ 0x88051A2041A4001DLL) << 16) ^ 0x7A65C5A400000000) & (v14 ^ 0x88051A2041A4001DLL))))) & 0xFFFFFFFFFFFFFFFCLL;
  v17 = ((v16 ^ 0x6C9F43CEAF4AC1A4) + 0x7E86F4D7AD1AD743) ^ ((v16 ^ 0x1F590B2FE2811E18) + 0xD40BC36E0D108FFLL) ^ ((v16 ^ 0x54BB6B9AC0160350) + 0x46A2DC83C24615B7);
  STACK[0xAB0] = v17 - 0x64A5F09C48161EBELL;
  STACK[0xCB0] = v2;
  v18 = ((v2 & 0x7FFFFFFFFFFFFFFCLL ^ 0xBAE1DFD0FD3629FDLL) + 0x5D42CE496D89552DLL) ^ ((v2 & 0x7FFFFFFFFFFFFFFCLL ^ 0x27CF2687626969F3) - 0x3F93C8E10D29EADDLL) ^ ((v2 & 0x7FFFFFFFFFFFFFFCLL ^ 0x9D2EF9579F5F400ELL) + 0x7A8DE8CE0FE03CE0);
  STACK[0xD60] = v18 + 0x553F4C753460868ELL;
  v19 = ((((v18 + 878741134) ^ 0x84E82F86) - 1103637758) ^ (v18 + 878741134) ^ (((v18 + 878741134) ^ 0x5D94CB4E) + 1732982730) ^ (((v18 + 878741134) ^ 0xE7B6B44F) - 580302647) ^ (((v18 + 878741134) ^ 0xFBEA53FF) - 1053446279)) & 0xFFFFFFFC;
  STACK[0xB40] = v17 - 0x3564946217FF990ELL;
  STACK[0xAA8] = v17 + 0x136B4B55DCD5AFB8;
  STACK[0xC50] = v18 + 0x185CEE666F408316;
  STACK[0xC70] = (((v19 ^ 0xBB4557A97E7B1245) + 0x61A24C6F1D9E68DCLL) ^ ((v19 ^ 0xC7DB4A8AF4F04E42) + 0x1D3C514C971534DDLL) ^ ((v19 ^ 0x7C9E1D234FAB5F7FLL) - 0x5986F91AD3B1DA1ELL)) + 0x2518E439593A85F0;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x538E)))();
}

uint64_t sub_1005FA764()
{
  v1 = STACK[0xF18];
  STACK[0x6580] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 7880) ^ v0)))();
}

uint64_t sub_1005FA798()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 16238)))(v1);
  return (*(v2 + 8 * (v0 - 5823)))(v3);
}

uint64_t sub_1005FA7C8(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xF10] - 27257;
  STACK[0x95A0] = STACK[0x61A8] + 4;
  LOWORD(STACK[0x79DE]) = 7089;
  LODWORD(STACK[0x16B4]) = -1799847224;
  return (*(STACK[0xF18] + 8 * v2))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_1005FA824()
{
  v1 = STACK[0x5BB8];
  STACK[0x7D98] = STACK[0x5BB8];
  STACK[0x2F20] = STACK[0x3230];
  LODWORD(STACK[0x10ED8]) = (v0 + 9863) ^ (1603510583 * ((((&STACK[0x10000] + 3800) | 0x29582A2A) - ((&STACK[0x10000] + 3800) & 0x29582A28)) ^ 0xBE831881));
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x91D5)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x9168]) = STACK[0x10EDC];
  return (*(v2 + 8 * (((((v1 == 0) ^ (v0 + 89)) & 1) * (((v0 - 468034983) ^ 0xE41A29D4) - 40199)) | v0)))(v3);
}

uint64_t sub_1005FA9AC()
{
  v0 = 5 * (STACK[0xF10] ^ 0x8E8D);
  v1 = STACK[0xF10] - 26354;
  v2 = STACK[0x1F2C];
  LODWORD(STACK[0xED0]) = v0;
  LODWORD(STACK[0xFAC]) = (v0 ^ 0x807AC2B) + v2;
  STACK[0x4730] = STACK[0x2C78];
  LODWORD(STACK[0x44B4]) = -371865840;
  LODWORD(STACK[0x2CE8]) = -804776148;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1005FAA14()
{
  v2 = STACK[0x1FE0];
  LODWORD(STACK[0x5DFC]) = v1;
  return (*(STACK[0xF18] + 8 * (((v2 == 0) * (109 * (v0 ^ 0x4DFC) - 35639)) ^ v0)))();
}

uint64_t sub_1005FAA5C@<X0>(uint64_t a1@<X2>, _DWORD *a2@<X3>, uint64_t a3@<X4>, void *a4@<X5>, uint64_t a5@<X6>, int a6@<W7>, unsigned int a7@<W8>)
{
  v21 = (((v10 ^ 0xB4A0F49F) + 1264520033) ^ ((v10 ^ 0x85313EA4) + 2060370268) ^ (((v9 | 0x2293) ^ 0x27BBC105) + (v10 ^ 0xD8440D2A))) + 511819936;
  v22 = ((v21 ^ 0x4BF29774) - 2136567524) ^ v21 ^ ((v21 ^ 0xDCA42740) + a6) ^ ((v21 ^ v11) + v12) ^ ((v21 ^ v13) + v14);
  v23 = (v8 + (v22 ^ v15));
  v24 = ((v23 ^ *(*a4 + (*a2 & v17))) & 0x7FFFFFFF) * v18;
  v25 = (v24 ^ HIWORD(v24)) * v18;
  *(v16 + (v22 ^ v15) + v20) = *(a3 + (v25 >> 24)) ^ *v23 ^ *((v25 >> 24) + a5 + 2) ^ *((v25 >> 24) + a1 + 1) ^ v25 ^ (BYTE3(v25) * v19);
  return (*(STACK[0xF18] + 8 * (((v22 != v15) * v7) ^ a7)))();
}

uint64_t sub_1005FAB98()
{
  v1 = STACK[0xF10] + 665;
  v2 = LODWORD(STACK[0x6134]) + (((*(STACK[0x7980] + 116) ^ 0x17A59A89) - 396728969) ^ ((*(STACK[0x7980] + 116) ^ 0x2195F25C) - 563475036) ^ (((((STACK[0xF10] - 35638) | 0x27A) - 538596027) ^ *(STACK[0x7980] + 116)) + 538595388));
  LODWORD(STACK[0x6134]) = v2 + v0;
  return (*(STACK[0xF18] + 8 * ((54 * ((v2 - 2094322339) + 4 > STACK[0xB7F0])) ^ v1)))();
}

uint64_t sub_1005FAC6C()
{
  LODWORD(STACK[0x10EDC]) = v0 - 1022166737 * ((&STACK[0x10000] + 3800) ^ 0xBA10E192) - 12428;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 27521)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * ((40138 * (LODWORD(STACK[0x10ED8]) == (v0 ^ 0x3C2B) + 2077033650)) ^ v0)))(v2);
}

uint64_t sub_1005FAD50()
{
  v1 = v0 - 16444;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1005FADAC()
{
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x4808];
  STACK[0x5D28] = &STACK[0x2B74];
  LODWORD(STACK[0x4704]) = 730694353;
  return (*(STACK[0xF18] + 8 * (v0 - 5541)))();
}

uint64_t sub_1005FAE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = STACK[0xF10] - 24098;
  LODWORD(STACK[0xED0]) = 107;
  LOBYTE(STACK[0x1AF3]) = 107;
  STACK[0x6920] = 0;
  LODWORD(STACK[0x7850]) = -371865839;
  STACK[0x3930] = STACK[0x668];
  STACK[0x2A60] = v7;
  STACK[0x85E8] = v7;
  LODWORD(STACK[0x4874]) = v6 ^ v8 ^ 0x34AC33B;
  LODWORD(STACK[0x726C]) = -187458869;
  return (*(STACK[0xF18] + 8 * v8))(v7, v7, a3, a4, a5, a6, 0);
}

uint64_t sub_1005FB084()
{
  LODWORD(STACK[0x8F9C]) = v2;
  LODWORD(STACK[0x727C]) = v0;
  LOBYTE(STACK[0x80D3]) = 0;
  return (*(STACK[0xF18] + 8 * ((30382 * ((v1 + 848972579) < 0x9E2978C3)) ^ (v1 - 23071))))();
}

uint64_t sub_1005FB0F4()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 371901482;
  v2 = STACK[0x5920];
  v3 = STACK[0x7238];
  v4 = STACK[0x83D8];
  v5 = ((STACK[0xF10] - 32666) ^ 0x995B8DD9 ^ LODWORD(STACK[0xA7F8])) & (2 * (STACK[0xA7F8] & 0x99938462)) ^ STACK[0xA7F8] & 0x99938462;
  v6 = (LODWORD(STACK[0xA7F8]) ^ 0xBA5A8E78) << (((STACK[0xF10] - 47) | 0x80) + 117);
  v7 = (v6 ^ 0x47921434) & (LODWORD(STACK[0xA7F8]) ^ 0xBA5A8E78) ^ v6 & 0x23C90A1A;
  v8 = v7 ^ 0x20490A0A;
  v9 = (v7 ^ 0x2800010) & (4 * v5) ^ v5;
  v10 = ((4 * v8) ^ 0x8F242868) & v8 ^ (4 * v8) & 0x23C90A18;
  v11 = (v10 ^ 0x3000800) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x20C90212)) ^ 0x3C90A1A0) & (v10 ^ 0x20C90212) ^ (16 * (v10 ^ 0x20C90212)) & 0x23C90A00;
  v13 = v11 ^ 0x23C90A1A ^ (v12 ^ 0x20800000) & (v11 << 8);
  v14 = LODWORD(STACK[0xA7F8]) ^ (2 * ((v13 << 16) & 0x23C90000 ^ v13 ^ ((v13 << 16) ^ 0xA1A0000) & (((v12 ^ 0x3490A1A) << 8) & 0x23C90000 ^ 0x22C10000 ^ (((v12 ^ 0x3490A1A) << 8) ^ 0x490A0000) & (v12 ^ 0x3490A1A)))) ^ 0x33C45747;
  v15 = 155453101 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x790D2410) + 2030904338) ^ 0x9F2B3FDD);
  STACK[0x10EF8] = &STACK[0x585C];
  LODWORD(STACK[0x10EE0]) = v14 - v15;
  STACK[0x10ED8] = v2;
  LODWORD(STACK[0x10F18]) = v15 + v0 + 5676;
  STACK[0x10F10] = 0;
  STACK[0x10F08] = 0;
  STACK[0x10EF0] = v3;
  STACK[0x10EE8] = v4;
  v16 = STACK[0xF18];
  v17 = (*(STACK[0xF18] + 8 * (v0 + 16746)))(&STACK[0x10ED8]);
  return (*(v16 + 8 * (v1 ^ 0xE9D5AA9D ^ (60520 * (((LODWORD(STACK[0x10F00]) - v1) | (v1 - LODWORD(STACK[0x10F00]))) >= 0)))))(v17);
}

uint64_t sub_1005FB440()
{
  LODWORD(STACK[0x7C24]) = 0;
  STACK[0x8730] = 0;
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1 == v0 - 371879503;
  }

  v4 = v3;
  return (*(STACK[0xF18] + 8 * ((v4 * (v0 - 12784)) ^ v0)))();
}

uint64_t sub_1005FB534()
{
  v1 = LODWORD(STACK[0x3908]) + 1275141775;
  v2 = (((STACK[0xF10] ^ 0xC983CAB8) + (v0 ^ 0x367CBE7D)) ^ ((v0 ^ 0x906A2966) + 1872090778) ^ ((v0 ^ (STACK[0xF10] - 31700) ^ 0x4FC35F6D) - 1338200074)) + 903275932;
  v3 = (v1 < 0x4C011E8B) ^ (v2 < 0x4C011E8B);
  v4 = v1 > v2;
  if (v3)
  {
    v4 = v1 < 0x4C011E8B;
  }

  return (*(STACK[0xF18] + 8 * ((503 * v4) ^ (STACK[0xF10] + 13252))))();
}

uint64_t sub_1005FB668()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((946 * (v0 ^ 0x475)) ^ 0x74FA) + v0)))();
}

uint64_t sub_1005FB6F8()
{
  v1 = STACK[0x8660];
  LOWORD(STACK[0x10EE0]) = 23473 * ((((&STACK[0x10000] + 3800) | 0xE700) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x18F8)) ^ 0x2A24) + 18076;
  STACK[0x10EE8] = v1;
  LODWORD(STACK[0x10ED8]) = (v0 + 9120) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x977CE700) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x688318F8)) ^ 0xA67D2A24));
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 47916)))(&STACK[0x10ED8]);
  STACK[0x99B8] = *(v2 + 8 * v0);
  return (*(v2 + 8 * (((v0 ^ 0xE5F01132) + 437254313) ^ v0)))(v3);
}

uint64_t sub_1005FB80C()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 32115;
  STACK[0x6C30] = STACK[0x7EE0] + 16;
  v2 = STACK[0xF18];
  STACK[0x6728] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x90CE) + v1)))();
}

uint64_t sub_1005FB884@<X0>(int a1@<W8>)
{
  v2 = a1 & 0x9C527DAF;
  v3 = 139493411 * ((((&STACK[0x10000] + 3800) | 0xFFEA9C59) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x1563A0)) ^ 0xF3C77D1C);
  STACK[0x10ED8] = *(STACK[0x6508] - 0x217E172EFA1E81CLL);
  STACK[0x10EE8] = &STACK[0x78F4];
  LODWORD(STACK[0x10EE0]) = v1 + v3 + (((a1 & 0x9C527DAF) + 20876) ^ 0xA531A69);
  LODWORD(STACK[0x10EF0]) = (a1 & 0x9C527DAF) - v3 - 498;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (a1 & 0x9C527DAF ^ 0xF235)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v2))(v5);
}

uint64_t sub_1005FB95C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xB428]) = a1 + 16;
  v3 = (((LODWORD(STACK[0x4ADC]) ^ 0x44052CC) - 71324364) ^ ((LODWORD(STACK[0x4ADC]) ^ 0x95A2EC2D) + 1784484819) ^ ((LODWORD(STACK[0x4ADC]) ^ 0x78377C89 ^ ((327 * ((v1 | 0x8A00) ^ 0xABC3) - 35523) | 0x501)) - 2016901616)) + 1328841359;
  v4 = (a1 + 16) > 0x9AA14481;
  v5 = v4 ^ (v3 < 0x655EBB7E);
  v6 = a1 + 1700707214 > v3;
  if (!v5)
  {
    v4 = v6;
  }

  if (!v4)
  {
    v2 = -371865839;
  }

  LODWORD(STACK[0x136C]) = v2;
  LOBYTE(STACK[0xB42F]) = !v4;
  return (*(STACK[0xF18] + 8 * ((1970 * v4) ^ (v1 | 0x8A00))))();
}

uint64_t sub_1005FBA78()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 32648;
  LODWORD(STACK[0x6FF4]) = v0;
  return (*(STACK[0xF18] + 8 * (((v1 + 10251) * (v0 == -371865839)) ^ v2)))();
}

uint64_t sub_1005FBAFC()
{
  v0 = STACK[0xF10];
  v1 = (STACK[0xF10] + 20050116) & 0xFECDAC77;
  v2 = ((LODWORD(STACK[0xB064]) ^ 0xA873AA16) + 1468814826) ^ ((LODWORD(STACK[0xB064]) ^ 0xA64A6814) + 1505073132) ^ ((LODWORD(STACK[0xB064]) ^ 0xE7EC0513) + 403962605);
  LODWORD(STACK[0xA2BC]) = v2 + 145414084;
  v3 = v2 + (v1 ^ 0x6332EEA1);
  v4 = v3 < 0x795CFFB1;
  v5 = v3 > LODWORD(STACK[0x21D4]) + 2036137905;
  if (LODWORD(STACK[0x21D4]) > 0x86A3004E != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((25 * v5) ^ (v0 - 8080))))();
}

uint64_t sub_1005FBC78@<X0>(unsigned int a1@<W0>, int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, int a8@<W8>)
{
  v15 = ((((a1 >> v10) ^ a1 ^ v13) + a2) ^ (((a1 >> v10) ^ a1 ^ a3) + a4) ^ (((a1 >> v10) ^ a1 ^ a5) + a6)) * a7;
  *(v14 + 4 * v8) = a8 + v15;
  return (*(STACK[0xF18] + 8 * (v12 ^ (4 * (v8 < 0x26F)))))((v9 + v11 + v15));
}

uint64_t sub_1005FBD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] ^ 0x33B0;
  LODWORD(STACK[0xA038]) = STACK[0x98D4];
  v5 = 0x1E5 % (LODWORD(STACK[0xA03C]) ^ (v4 + 1230092447)) - ((2 * (0x1E5 % (LODWORD(STACK[0xA03C]) ^ (v4 + 1230092447)))) & 0x114) + 1252289162;
  return (*(STACK[0xF18] + 8 * (v3 - 29445)))(a1, a2, a3, v4, (((v5 ^ 0xF13CD8BD) + 247670595) ^ ((v5 ^ 0x2910EF8E) - 688975758) ^ ((v5 ^ 0x92885DB9) + 1836556871)) - 1964835627);
}

uint64_t sub_1005FBE98()
{
  v2 = *(v0 + 8);
  STACK[0x7010] = v0 + 8;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x96C0)))(v2);
  STACK[0x2F50] = v4;
  return (*(v3 + 8 * (((v4 != 0) * (3 * ((v1 - 1449778777) & 0x5669CADF ^ 0x66B6) - 35637)) ^ v1)))();
}

uint64_t sub_1005FBFF0()
{
  v1 = STACK[0x49C0];
  *v1 = -123;
  LOBYTE(STACK[0x6563]) = -53;
  *(v1 + 564) = 2;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1005FC030()
{
  v1 = (STACK[0xF10] - 35283) | 0x1684;
  v2 = 215 * (STACK[0xF10] ^ 0x8B5A);
  v3 = STACK[0xF10] + 14920;
  STACK[0x3890] = v0;
  return (*(STACK[0xF18] + 8 * ((((v1 + 14703) ^ v2) * (v0 != 0)) ^ v3)))();
}

uint64_t sub_1005FC08C()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] + 106;
  LODWORD(STACK[0xEB0]) = STACK[0xF10] - 28627;
  v2 = (((*(STACK[0x27B0] + 24) ^ 0xA2) + ((v0 - 16) ^ v1)) ^ ((*(STACK[0x27B0] + 24) ^ 0x36) + 26) ^ ((*(STACK[0x27B0] + 24) ^ 0x85) - 85)) - 18;
  v3 = STACK[0x9420];
  STACK[0xE90] = STACK[0x9420];
  *(v3 + 36) = v2;
  v4 = STACK[0x7690];
  STACK[0xEC0] = -STACK[0x7690];
  v5 = &STACK[0xC4D0] + v4;
  STACK[0x7528] = &STACK[0xC4D0] + v4 + 36;
  STACK[0x78A0] = &STACK[0xC4D0] + v4 + 292;
  STACK[0xEA0] = &STACK[0xC4D0] + v4 + 308;
  STACK[0x2548] = &STACK[0xC4D0] + v4 + 308;
  STACK[0x6568] = &STACK[0xC4D0] + v4 + 328;
  STACK[0x5608] = &STACK[0xC4D0] + v4 + 600;
  STACK[0x7690] = v4 + 880;
  v6 = STACK[0xF18];
  v7 = *(STACK[0xF18] + 8 * (v0 ^ 0x41EC));
  STACK[0xED0] = &STACK[0xC4D0] + v4 + 292;
  v7();
  v8 = (*(v6 + 8 * (v0 + 16284)))(STACK[0xEA0], 0, 20);
  v9 = STACK[0x8CE0];
  *(v5 + 82) = *(STACK[0x8CE0] + 8);
  *(v5 + 83) = *(v9 + 12);
  return (*(v6 + 8 * ((16651 * (STACK[0x550] - v4 + v9 - 320 < 0x20)) ^ LODWORD(STACK[0xEB0]))))(v8);
}

uint64_t sub_1005FC290()
{
  v1 = *(STACK[0x2798] - 0x5BF2EE499BCE2BFALL);
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393406;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1005FC328()
{
  v2 = 0;
  v3 = *(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFCA475F48)) ^ 0xCA475F4BLL;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = v0 - 0x10A99C80114D1487;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v12 = v11 ^ (-901292213 * (v0 - 290264199)) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
  v13 = vdupq_n_s32(v12);
  v14 = xmmword_100BC7620;
  v15 = xmmword_100BC7630;
  v16 = xmmword_100BC7640;
  v17 = xmmword_100BC7650;
  v18.i64[0] = 0x9393939393939393;
  v18.i64[1] = 0x9393939393939393;
  v19.i64[0] = 0x1000000010;
  v19.i64[1] = 0x1000000010;
  do
  {
    v20 = *(v10 + v2);
    v27.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC7690), v13), vmulq_s32(vaddq_s32(v16, v13), vsubq_s32(v16, v13)));
    v27.val[0] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC76A0), v13), vmulq_s32(vaddq_s32(v17, v13), vsubq_s32(v17, v13)));
    v27.val[2] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC7680), v13), vmulq_s32(vaddq_s32(v15, v13), vsubq_s32(v15, v13)));
    v27.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC7670), v13), vmulq_s32(vaddq_s32(v14, v13), vsubq_s32(v14, v13)));
    *(v10 + v2) = vmulq_s8(vqtbl4q_s8(v27, xmmword_100BC7660), v18);
    v2 += 16;
    v17 = vaddq_s32(v17, v19);
    v16 = vaddq_s32(v16, v19);
    v15 = vaddq_s32(v15, v19);
    v14 = vaddq_s32(v14, v19);
  }

  while (v2 != 384);
  v21 = (v0 - 0x10A99C80114D130FLL);
  for (i = 49; i > 2; --i)
  {
    v23 = 16777619 * ((i - 2 + v12) ^ v12) % (i - 2);
    v24 = *(v10 + 8 * v23) ^ *v21;
    *v21 = v24;
    v25 = *(v10 + 8 * v23) ^ v24;
    *(v10 + 8 * v23) = v25;
    *v21-- ^= v25;
  }

  return (*(STACK[0xF18] + 8 * (v1 - 30448)))();
}

uint64_t sub_1005FC5D4()
{
  LODWORD(STACK[0x687C]) = v1;
  v2 = STACK[0x53E0];
  STACK[0x81A8] = STACK[0x8C68];
  STACK[0x97E8] = v2 - ((2 * v2) & 0x130272185FDB248CLL) + 0x981390C2FED9246;
  LODWORD(STACK[0x6974]) = 103711527;
  return (*(STACK[0xF18] + 8 * (v0 - 26939)))();
}

uint64_t sub_1005FC6A8@<X0>(uint64_t a1@<X8>)
{
  STACK[0x15E8] = &STACK[0xC4D0] + a1;
  STACK[0x7690] = v4 + 96;
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  v12 = !v8 && v3 == -371865851 && v1 != 0 && v2 == -371865816;
  return (*(STACK[0xF18] + 8 * ((((v5 - 5351) ^ 0x10C1) * v12) ^ v5)))();
}

uint64_t sub_1005FC718@<X0>(int a1@<W8>)
{
  v2 = a1 + 20;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * ((a1 + 20) ^ 0x9364)))();
  *(v1 + 704) = 0;
  *(v1 + 712) = -371865839;
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_1005FC760()
{
  v2 = *(v0 + 136);
  *STACK[0xED0] += (v1 - 13388) ^ 0x8B3A;
  return (*(STACK[0xF18] + 8 * ((13 * (((v2 == 0) ^ (-109 * (v1 ^ 0x90))) & 1)) ^ v1)))();
}

uint64_t sub_1005FC7C4()
{
  v1 = (v0 - 35716) | 0x20;
  v2 = STACK[0xF18];
  STACK[0x7A80] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x6F27 ^ (v1 + 28260))))();
}

uint64_t sub_1005FC800()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4192)))();
  *(v0 + 48) = 0;
  return (*(v2 + 8 * (v1 - 25859)))(v3);
}

uint64_t sub_1005FC900()
{
  LODWORD(STACK[0x1EB4]) = v1;
  v2 = STACK[0x2028] + 304;
  STACK[0x70C8] = STACK[0x5E20];
  STACK[0x9ED0] = v2;
  v3 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v3 + 8 * (v0 + 5123)))();
}

uint64_t sub_1005FCBD8@<X0>(unint64_t a1@<X0>, int a2@<W8>)
{
  v4 = a2 + 3429;
  v5 = STACK[0x1A98];
  v6 = STACK[0xA900];
  v7 = STACK[0x4A18] + (v2 - 1543924812);
  v8 = 1012831759 * ((((&STACK[0x10000] + 3800) | 0x8B731020) - ((&STACK[0x10000] + 3800) | 0x748CEFDF) + 1955393503) ^ 0x9BE006AA);
  LODWORD(STACK[0x10F00]) = a2 + 3429 - v8 + 7475;
  LODWORD(STACK[0x10EFC]) = (((v3 ^ 0xFBCF78EC) + 719431158) ^ ((v3 ^ 0xE991A32B) + 952073779) ^ ((v3 ^ ((a2 + 8161) | 0xB39) ^ 0xD55AB50B) + 74769194)) - v8 - 52971651;
  STACK[0x10ED8] = a1;
  STACK[0x10EE0] = v7;
  STACK[0x10EF0] = (v5 + 71);
  STACK[0x10EE8] = v6;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * ((a2 + 3429) ^ 0xA639)))(&STACK[0x10ED8]);
  v11 = STACK[0x10EF8];
  LODWORD(STACK[0xA908]) = STACK[0x10EF8];
  LODWORD(STACK[0x7E54]) = (((v3 ^ 0xCB0F517D) + 438406245) ^ ((v3 ^ 0x970B6156) + 1176878160) ^ ((v3 ^ 0x9B00D5DC) + 1244530886)) + v2 - 371865835;
  v5[88] = 0;
  v5[90] = 0;
  v5[86] = 0;
  v5[82] = 0;
  v5[84] = 0;
  return (*(v9 + 8 * ((59751 * (v11 == -371865839)) ^ v4)))(v10);
}

uint64_t sub_1005FCE04(uint64_t a1, uint64_t a2)
{
  v4 = STACK[0xF10];
  LOWORD(STACK[0x98F6]) = v2;
  return (*(STACK[0xF18] + 8 * (v4 - 27350)))(a1, a2, v3);
}

uint64_t sub_1005FCE3C@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * (a1 - 34504));
  return (*(v1 + 8 * (a1 - 56008 + ((a1 - 25827) | 0x4120))))();
}

uint64_t sub_1005FCEDC()
{
  *(v1 + 300) = STACK[0xA400];
  *(v1 + 296) = v2;
  return (*(STACK[0xF18] + 8 * ((16430 * (v2 == v0 - 371901482)) | (v0 - 20282))))();
}

uint64_t sub_1005FCF28()
{
  v0 = (STACK[0xF10] - 14970) | 0xA32;
  v1 = (STACK[0xF10] + 677536964) & 0xD79DD7E3;
  v2 = STACK[0xF10] - 25156;
  LODWORD(STACK[0x6134]) += 4;
  v4 = LODWORD(STACK[0x9F64]) == (v1 ^ 0xE9D500E6) && LODWORD(STACK[0x9F68]) == -371866033;
  return (*(STACK[0xF18] + 8 * ((v4 * (v0 - 22825)) ^ v2)))();
}

uint64_t sub_1005FD04C()
{
  v1 = STACK[0x2D38];
  STACK[0x13D0] = STACK[0x4F88] - ((2 * STACK[0x4F88]) & 0x130272185FDB248CLL) + ((((v0 - 46114) | 0x8020u) + 4080) ^ 0x981390C2FED096DLL);
  STACK[0x5D38] = STACK[0x90F8] - ((2 * STACK[0x90F8]) & 0x130272185FDB248CLL) + 0x981390C2FED9246;
  return (*(STACK[0xF18] + 8 * ((108 * (v1 == 0)) ^ v0)))();
}

uint64_t sub_1005FD0F0()
{
  v1 = STACK[0x8838];
  LODWORD(STACK[0x10EE8]) = 1112314453 * ((((&STACK[0x10000] + 3800) | 0x3D8FD6F3) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xC2702908)) ^ 0xD2D9FC2A) + 36040 + v0;
  STACK[0x10EE0] = v1 + 122;
  STACK[0x10EF0] = v1 + 28;
  LOWORD(STACK[0x10ED8]) = (-28075 * ((((&STACK[0x10000] + 3800) | 0xD6F3) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x2908)) ^ 0xFC2A)) ^ 0x73E5;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 36421)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * (((LODWORD(STACK[0x10EF8]) == -371865839) * ((v0 - 3212) ^ v0 ^ 0x2897 ^ 0xD0DF)) ^ v0)))(v3);
}

uint64_t sub_1005FD1C8()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 21447 + (v0 ^ 0x6342))))();
}

uint64_t sub_1005FD204()
{
  v2 = v1 - 11063;
  v3 = v1 - 32420;
  ++*v0;
  LODWORD(STACK[0x10EE0]) = v1 + 155453101 * ((~(&STACK[0x10000] + 3800) & 0xDC3130A4 | (&STACK[0x10000] + 3800) & 0x23CECF58) ^ 0x3A172B6B) + 296753103;
  STACK[0x10ED8] = 0;
  v4 = v1 + 16271;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * v4))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v5 + 8 * v3);
  return (*(v5 + 8 * (v2 ^ v3 ^ 0x7AFC)))(v6);
}

uint64_t sub_1005FD2B8()
{
  v1 = STACK[0x4514];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393365;
  return (*(STACK[0xF18] + 8 * (v0 - 29050)))();
}

uint64_t sub_1005FD33C@<X0>(uint64_t a1@<X2>, int a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v9 = a3 - 1;
  v10 = 1864610357 * ((*(*v6 + (*v5 & 0x72D7ACF8)) ^ (a4 + v9)) & 0x7FFFFFFF);
  v11 = 1864610357 * ((v10 >> (STACK[0xF10] ^ 0x2B)) ^ v10);
  *(a4 + v9) = *(a1 + v9) ^ *(v7 + (v11 >> 24)) ^ *((v11 >> 24) + v4 + 2) ^ *((v11 >> 24) + v8 + 4) ^ v11 ^ (-97 * BYTE3(v11)) ^ 0x5F;
  return (*(STACK[0xF18] + 8 * ((26109 * (v9 == 0)) ^ a2)))();
}

uint64_t sub_1005FD5D8()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] + 9398;
  *STACK[0xAC70] += (((STACK[0xF10] - 28346) | 0x202) + 6888) ^ 0x397B;
  LOBYTE(STACK[0x637F]) = 29;
  LOBYTE(STACK[0x6667]) = 111;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 16221)))(20);
  STACK[0x8BB0] = v3;
  return (*(v2 + 8 * ((15 * (v3 == 0)) ^ v1)))();
}

uint64_t sub_1005FD6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 30181;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x6630];
  STACK[0x5D28] = &STACK[0xF54];
  LODWORD(STACK[0x4704]) = 1065592898;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_1005FD7C4()
{
  v1 = STACK[0x2D78];
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = v1 + 24;
  STACK[0x5D28] = v1 + 16;
  LODWORD(STACK[0x4704]) = 606013996;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1005FD8A0()
{
  LODWORD(STACK[0x2674]) = -371865837;
  STACK[0x85A8] = 0;
  LODWORD(STACK[0x61F4]) = -371865839;
  STACK[0x6630] = 0;
  LODWORD(STACK[0xF54]) = -371865839;
  LODWORD(STACK[0x441C]) = -371865839;
  STACK[0x27E0] = 0;
  LOBYTE(STACK[0x6563]) = -54;
  LOBYTE(STACK[0x2237]) = v1 == (v0 ^ 0xE9D544C3);
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1005FD91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x344]) = -371865839;
  STACK[0x2F0] -= 512;
  v5 = STACK[0x420] + 544;
  STACK[0x240] = v5;
  v6 = 634647737 * ((2 * ((v4 - 176) & 0x3EF3C0F8) - (v4 - 176) + 1091321604) ^ 0x2C9A10F8);
  *(v4 - 176) = v6 - 1431125376;
  *(v4 - 168) = v5;
  *(v4 - 160) = v3 - v6 + 18740;
  v8 = (*(a3 + 8 * (v3 ^ 0xC3C2)))(v4 - 176);
  return (*(a3 + 8 * ((((v3 ^ 0xBFA884E9) > 0x3D1D5484) * (v3 + 18058)) ^ (v3 + 12887))))(v8);
}

uint64_t sub_1005FDA10()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 1391)))(32);
  STACK[0x5C10] = v2;
  return (*(v1 + 8 * (((((23 * (v0 ^ 0xC2CF) - 1802549936) & 0x6B707765) - 29261) * (v2 != 0)) ^ v0)))();
}

uint64_t sub_1005FDB14()
{
  v0 = STACK[0xF10];
  v1 = STACK[0x5B70];
  v2 = STACK[0xF18];
  STACK[0x4688] = *(STACK[0xF18] + 8 * (STACK[0xF10] - 31189));
  return (*(v2 + 8 * (v0 - 22770)))(v1);
}

uint64_t sub_1005FDB98()
{
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 ^ 0x807)))((((109 * (v2 ^ 0xC3D8)) ^ 0x38A4907E) + 18 * (v2 ^ 0xC261)) ^ v1);
  *(v0 + 672) = v5;
  v6 = *(v3 + 1532);
  if (!v5)
  {
    v6 = 371891397;
  }

  *(v3 + 1540) = v6;
  return (*(v4 + 8 * ((89 * (v6 == -371865839)) ^ v2)))();
}

uint64_t sub_1005FDD88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  v8 = STACK[0xF18];
  STACK[0x8D40] = *(STACK[0xF18] + 8 * (a8 - 7625));
  return (*(v8 + 8 * ((59362 * (((a8 - 7625) ^ 0x7FC45E44u) < 0x6E9D7DE7)) ^ (a8 - 7625 + a8 + 9381 - 1633))))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_1005FDEA4(unint64_t a1)
{
  v4 = STACK[0x648] + 49 * ((v1 ^ 0x6CBF1DFED7B2BFE9) + ((v1 << (v3 ^ 0x18u)) & 0x17FD2)) + 0x2F6B4238B6C94467;
  v5 = STACK[0xAC40];
  v6 = STACK[0xAC00] + 20;
  LODWORD(STACK[0xED0]) = 106;
  LOBYTE(STACK[0x1AF3]) = 106;
  STACK[0x6920] = v4;
  LODWORD(STACK[0x7850]) = -371865824;
  STACK[0x3930] = v5;
  STACK[0x2A60] = v6;
  STACK[0x85E8] = a1;
  LODWORD(STACK[0x4874]) = v2;
  LODWORD(STACK[0x726C]) = -187458870;
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_1005FDF70()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 21414 + 344 * (v0 ^ 0x454))))();
}

uint64_t sub_1005FDFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = LODWORD(STACK[0x3AC4]) + a8 + (((*v8 ^ 0x16EEB05D) - 384741469) ^ ((*v8 ^ 0x7ED2A773) - 2127734643) ^ ((*v8 ^ 0x81E9D03F) + 2115383233));
  LODWORD(STACK[0x3AC4]) = v11;
  LODWORD(STACK[0xA558]) = *(a4 + 1204) + v9 + v11;
  LODWORD(STACK[0xA55C]) = v8[20];
  v12 = *(STACK[0x2C38] + 32) + 1078960462;
  v13 = (v12 ^ 0x3F291C8C) & (2 * (v12 & 0xBFB05EAD)) ^ v12 & 0xBFB05EAD;
  v14 = ((2 * (v12 ^ 0x426994DE)) ^ 0xFBB394E6) & (v12 ^ 0x426994DE) ^ (2 * (v12 ^ 0x426994DE)) & 0xFDD9CA72;
  v15 = v14 ^ 0x4484A11;
  v16 = (v14 ^ 0xF9818060) & (4 * v13) ^ v13;
  v17 = ((4 * v15) ^ 0xF76729CC) & v15 ^ (4 * v15) & 0xFDD9CA70;
  v18 = (v17 ^ 0xF5410840) & (16 * v16) ^ v16;
  v19 = ((16 * (v17 ^ 0x898C233)) ^ 0xDD9CA730) & (v17 ^ 0x898C233) ^ (16 * (v17 ^ 0x898C233)) & 0xFDD9CA70;
  v20 = v18 ^ 0xFDD9CA73 ^ (v19 ^ 0xDD988200) & (v18 << 8);
  LODWORD(STACK[0xA568]) = v12 ^ (2 * ((v20 << 16) & 0x7DD90000 ^ v20 ^ ((v20 << 16) ^ 0x4A730000) & (((v19 ^ 0x20414843) << 8) & 0x7DD90000 ^ 0x24110000 ^ (((v19 ^ 0x20414843) << 8) ^ 0x59CA0000) & (v19 ^ 0x20414843)))) ^ 0x75F0F208;
  return (*(STACK[0xF18] + 8 * ((v10 - 34118) ^ 0x195A)))();
}

uint64_t sub_1005FE248@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x825C]) = v1;
  LODWORD(STACK[0x3FA8]) = STACK[0xEB0];
  LODWORD(STACK[0x659C]) = STACK[0xEC0];
  LODWORD(STACK[0x1370]) = STACK[0xED0];
  LODWORD(STACK[0x5D04]) = -371865839;
  LODWORD(STACK[0x8A44]) = -371865839;
  return (*(STACK[0xF18] + 8 * ((a1 + 16046) ^ a1)))();
}

uint64_t sub_1005FE334@<X0>(int a1@<W8>)
{
  STACK[0x7690] = v1;
  LODWORD(STACK[0x6F0C]) = 371891400;
  return (*(STACK[0xF18] + 8 * (a1 ^ 0x517B78CF ^ (58651 * (a1 == ((a1 - 610571430) & 0xD2E9FBBF ^ 0xBA4262E1))))))();
}

uint64_t sub_1005FE518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v6 = STACK[0x3738] + v3;
  STACK[0x4458] = a3;
  LODWORD(STACK[0x9268]) = v5;
  STACK[0x1B18] = v6;
  return (*(STACK[0xF18] + 8 * (((((v6 == 0) ^ (v4 - 38)) & 1) * ((v4 - 25380) ^ 0x2166)) ^ v4)))(a1, a2, 371891397);
}

uint64_t sub_1005FE5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (v6)
  {
    v11 = a6;
  }

  else
  {
    v11 = 0;
  }

  return (*(v10 + 8 * (((((a3 - v7) | (v7 - a3)) >= 0) * a5) ^ a4)))(a1, a2, (a3 ^ a2 ^ v7 ^ v9) + 2 * a3, a4, a5, (v11 + (a6 + v8) * (a6 + v8) - a6 * a6 - v8 * v8));
}

uint64_t sub_1005FE708()
{
  v1 = STACK[0xBD0];
  v2 = STACK[0xBD0] < 0x69B12606;
  v3 = STACK[0xF10] - 26693;
  v4 = (v0 ^ 0xE9D5C711) + STACK[0xD50];
  STACK[0x9FB8] = v4 + 10;
  v4 -= 0x21B09568C1170990;
  v5 = v4 < 0x69B12606;
  v6 = v4 > v1;
  if (v2 == v5)
  {
    v5 = v6;
  }

  return (*(STACK[0xF18] + 8 * (v3 ^ (491 * (v5 ^ 1)))))();
}

uint64_t sub_1005FE79C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x617C]) = a1;
  STACK[0x8648] = STACK[0x1B50];
  LODWORD(STACK[0x37DC]) = 249361490;
  return (*(STACK[0xF18] + 8 * (v1 - 26090)))();
}

uint64_t sub_1005FE7D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = STACK[0xF10] - 32377;
  LODWORD(STACK[0x9F88]) = a4;
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x266E)))();
}

uint64_t sub_1005FE844()
{
  v1 = v0 - 3056;
  LODWORD(STACK[0x10ED8]) = (v0 + 1877394474) ^ (155453101 * ((2 * ((&STACK[0x10000] + 3800) & 0x56B3E90) - (&STACK[0x10000] + 3800) + 2056569192) ^ 0x9CB2DAA7));
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 40619)))(&STACK[0x10ED8]);
  v3 = LODWORD(STACK[0x10EE0]) ^ (v1 - 1568722033);
  STACK[0x8B38] = *(STACK[0x1880] + 8);
  LODWORD(STACK[0x3BA4]) = 524519727;
  LODWORD(STACK[0x5A14]) = v3;
  LODWORD(STACK[0x8F84]) = 967225703;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_1005FE968@<X0>(uint64_t a1@<X8>)
{
  STACK[0x2910] = &STACK[0xC4D0] + a1 - 288;
  STACK[0x3F90] = &STACK[0xC4D0] + a1 - 288;
  STACK[0x56F0] = &STACK[0xC4D0] + a1 - 182;
  STACK[0x2398] = &STACK[0xC4D0] + a1 + 118;
  STACK[0x7690] = ((v1 + 33569) ^ (v1 + 25071) ^ 0x27A6) + a1;
  LODWORD(STACK[0x49BC]) = -371865839;
  STACK[0x2808] = 0;
  LODWORD(STACK[0x1344]) = 701922874;
  return (*(STACK[0xF18] + 8 * ((37 * (STACK[0x6F68] == 0)) ^ (v1 + 22600))))();
}

uint64_t sub_1005FEC14()
{
  v2 = LODWORD(STACK[0x5144]) + 451784127;
  v3 = ((v0 + 1835993117) < 0xBB24EB2D) ^ (v2 < 0xBB24EB2D);
  v4 = v2 < v0 + 1835993117;
  if (v3)
  {
    v4 = (v0 + 1835993117) < 0xBB24EB2D;
  }

  LOBYTE(STACK[0xA8DB]) = v4;
  return (*(STACK[0xF18] + 8 * ((v4 * (((v1 - 1913431212) & 0x720C6B7E ^ 0xFFFF761F) + ((v1 - 1732155302) & 0x673EDF3B))) ^ v1)))();
}

uint64_t sub_1005FECC4()
{
  v1 = STACK[0xF18];
  STACK[0x88F8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x3BEA ^ (v0 + 2281))))();
}

uint64_t sub_1005FEE08()
{
  *(v1 + 40) = v0 + 1;
  v3 = *(v1 + 32);
  LODWORD(STACK[0x10EE0]) = v2 + 155453101 * ((((&STACK[0x10000] + 3800) | 0xBE5D365F) + (~(&STACK[0x10000] + 3800) | 0x41A2C9A0)) ^ 0x587B2D91) + 296750674;
  STACK[0x10ED8] = v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 + 13842)))(&STACK[0x10ED8]);
  v6 = *(v1 + 48);
  STACK[0x4E08] = v1 + 48;
  STACK[0xA960] = v6;
  return (*(v4 + 8 * (((v6 == 0) * ((((v2 - 37812) | 0x6A89) + 8172) ^ (v2 - 1338889401) & 0x4FCDCB3B)) ^ v2)))(v5);
}

uint64_t sub_1005FEF48@<X0>(int a1@<W0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v9 = (v3 + v6 + a2 + v7);
  *v9 = a3;
  v9[1] = a3;
  return (*(STACK[0xF18] + 8 * (((v8 + v6 == v4) * a1) ^ v5)))();
}

uint64_t sub_1005FF010()
{
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762641937) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0xFBFD60DE) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x4029F20)) ^ 0xCAFCADFA));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xF519)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (((*STACK[0x970] > 0) * (((v0 + 1819967263) & 0x9385FF5B) + ((v0 + 558935067) & 0xDEAF9F7F) - 35971)) ^ v0)))(v2);
}

uint64_t sub_1005FF10C@<X0>(unint64_t a1@<X8>)
{
  v3 = 17902189 * (((~(&STACK[0x10000] + 3800) & 0xED4ABE34) - (~(&STACK[0x10000] + 3800) | 0xED4ABE35)) ^ 0x6305A825);
  LODWORD(STACK[0x10EE8]) = v3 ^ 0x3DF96229;
  LODWORD(STACK[0x10ED8]) = v3 + v2 + 5683;
  STACK[0x10EE0] = a1;
  STACK[0x10EF8] = a1;
  STACK[0x10EF0] = v1;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 + 16650)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (v2 - 15898)))(v5);
}

uint64_t sub_1005FF3D8()
{
  v3 = *(v1 + 8);
  v2 = (v1 + 8);
  STACK[0x56A0] = v2;
  STACK[0x10EE0] = v3;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762659795) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0xF2E0148D) - ((&STACK[0x10000] + 3800) | 0xD1FEB72) + 220195698) ^ 0xC3E1D9A9));
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4FDB)))(&STACK[0x10ED8]);
  v6 = v2[13];
  STACK[0x5A68] = v2[14];
  v7 = v2[12];
  STACK[0x6508] = v6;
  STACK[0x8408] = v7;
  STACK[0x66D0] = v2[18];
  return (*(v4 + 8 * (((LODWORD(STACK[0x6588]) != v0 - 371900222) * ((v0 + 583906683) & 0xDD31D77F ^ 0x125B)) ^ v0)))(v5);
}

uint64_t sub_1005FF4DC@<X0>(unint64_t a1@<X8>)
{
  v6 = v3 + v2;
  v7 = STACK[0x7B94];
  v8 = (LODWORD(STACK[0x7B94]) ^ 0x6D80D4A5) - 885278959;
  v9 = (LODWORD(STACK[0x7B94]) ^ 0x9F81F95A) + 960142064;
  v10 = ((((v4 + 8397) | 0x219) + 1553580815) ^ LODWORD(STACK[0x7B94])) - 98488832;
  v11 = ((v4 - 14946) ^ LODWORD(STACK[0x7B94]) ^ 0xF7DFD20C) + 1365548107;
  v12 = 1012831759 * ((2 * ((&STACK[0x10000] + 3800) & 0x77D86B68) - (&STACK[0x10000] + 3800) - 2010671979) ^ 0x98B4821F);
  STACK[0x10F00] = v6;
  LODWORD(STACK[0x10F08]) = v12 ^ v7 ^ v8 ^ v9 ^ v11 ^ 0x5E9993B8 ^ v10;
  STACK[0x10EF0] = a1;
  LODWORD(STACK[0x10ED8]) = (((v1 ^ 0xFE229461) + 31288223) ^ ((v1 ^ 0x91C9A4DF) + 1849056033) ^ ((v1 ^ 0x863EF7AF) + 2042693713)) - v12 + 99480725;
  STACK[0x10EE0] = &STACK[0x93B0];
  LODWORD(STACK[0x10EE8]) = v4 - v12 - 13668;
  LOBYTE(STACK[0x10EF8]) = 69 - 15 * ((2 * ((&STACK[0x10000] - 40) & 0x68) - (&STACK[0x10000] - 40) - 107) ^ 0x1F);
  v13 = STACK[0xF18];
  v14 = (*(STACK[0xF18] + 8 * (v4 + 25192)))(&STACK[0x10ED8]);
  v15 = STACK[0x10EFC];
  *(v5 + 2144) = STACK[0x10EFC];
  return (*(v13 + 8 * ((15 * (v15 != -371865839)) ^ v4)))(v14);
}

uint64_t sub_1005FF6BC()
{
  v3 = STACK[0x1D90];
  v4 = STACK[0x8B68];
  v5 = LODWORD(STACK[0x80F8]);
  v6 = STACK[0x8EC8] + v5;
  v7 = STACK[0x1538] + v5;
  v8 = 17902189 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x519127C8) - 779016246) ^ 0x5FDE31DA);
  LODWORD(STACK[0x10EF8]) = (v1 ^ 0xFFFF0680 ^ (LODWORD(STACK[0x8DE8]) - v5)) - v8 + ((2 * (LODWORD(STACK[0x8DE8]) - v5)) & 0xFFFE98FE) + 409480557;
  LODWORD(STACK[0x10EF0]) = (v0 + 9043) ^ v8;
  STACK[0x10EE0] = v4;
  STACK[0x10ED8] = v7;
  STACK[0x10EE8] = v3;
  STACK[0x10F00] = v6;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * (v0 + 28413)))(&STACK[0x10ED8]);
  return (*(v9 + 8 * ((39 * (LODWORD(STACK[0x10EF4]) == v2)) ^ v0)))(v10);
}

uint64_t sub_1005FF7C0()
{
  LODWORD(STACK[0xEC0]) = LODWORD(STACK[0xEC0]) - 371865831 + (((v1 ^ 0xE4BABB10) + 457524464) ^ ((v1 ^ 0xB3510193) + 1286536813) ^ (((v0 - 1103212761) ^ v1) + 1103200878));
  v2 = (((LODWORD(STACK[0xED0]) ^ 0xDE19FBE9) + 568722455) ^ ((LODWORD(STACK[0xED0]) ^ 0xC09197DF) + 1064200225) ^ ((LODWORD(STACK[0xED0]) ^ 0xF75DAB27) + 144856281)) - 189423910;
  LODWORD(STACK[0xED0]) = v2 ^ ((v2 ^ 0xB6A2AAAA) + 1132626590) ^ ((v2 ^ 0x18532338) - 311227632) ^ ((v2 ^ 0x5FD1B115) - 1427007197) ^ ((v2 ^ 0xFBFFEF4F) + 249546617) ^ 0xE30A10D9;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1005FF9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 29554;
  STACK[0x7388] = STACK[0x7BB0];
  STACK[0x1CE0] = &STACK[0x8110];
  LODWORD(STACK[0x3AF0]) = -694127922;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_1005FFAE4()
{
  v0 = STACK[0xF10];
  v1 = (STACK[0xF10] - 34363) | 0x7A17;
  v2 = STACK[0xF10] - 19296;
  v3 = STACK[0x7068];
  v4 = *(STACK[0x7068] + 16);
  LODWORD(STACK[0x10ED8]) = (STACK[0xF10] - 1762661292) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0xDA96701A) - ((&STACK[0x10000] + 3800) | 0x25698FE5) + 627675109) ^ 0xEB97BD3E));
  STACK[0x10EE0] = v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 + 16254)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * (((*(v3 + 24) < 1) * (v1 - 32485)) ^ v2)))(v6);
}

uint64_t sub_1005FFBAC@<X0>(unint64_t a1@<X8>)
{
  v2 = 1022166737 * ((((&STACK[0x10000] + 3800) ^ 0x225FE420 | 0x65E0E5FD) - ((&STACK[0x10000] + 3800) ^ 0x225FE420 | 0x9A1F1A02) - 1709237758) ^ 0xFDAFE04F);
  LODWORD(STACK[0x10EF8]) = v1 - v2 - 12014;
  STACK[0x10EE0] = STACK[0x5B8];
  STACK[0x10EE8] = a1;
  STACK[0x10EF0] = a1;
  LODWORD(STACK[0x10ED8]) = v2 ^ 0x611E7C6C;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x461E)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (v1 - 15898)))(v4);
}

uint64_t sub_1005FFCF0()
{
  v2 = STACK[0x9840];
  v3 = ((v1 ^ 0x675EC6FDFFF9DFFLL) + STACK[0x6758] - 0x675EC6FDFFF9DFFLL + ((((v0 + 17622) | 0x12u) ^ 0x1BFFFBF8CLL) & (2 * v1)));
  v3[19] = *(STACK[0x9840] + 80);
  v3[18] = v2[79];
  v3[17] = v2[78];
  v3[16] = v2[77];
  v3[15] = v2[76];
  v3[14] = v2[75];
  v3[13] = v2[74];
  v3[12] = v2[73];
  v3[11] = v2[72];
  v3[10] = v2[71];
  v3[9] = v2[70];
  v3[8] = v2[69];
  v3[7] = v2[68];
  v3[6] = v2[67];
  v3[5] = v2[66];
  v3[4] = v2[65];
  v3[3] = v2[64];
  v3[2] = v2[63];
  v3[1] = v2[62];
  *v3 = v2[61];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1005FFEE8@<X0>(char a1@<W8>)
{
  v7 = *(STACK[0xF18] + 8 * v5);
  *v6 = (a1 ^ HIBYTE(v4)) - ((2 * (a1 ^ HIBYTE(v4))) & 0xBF) + 95;
  v6[1] = (v1 ^ BYTE2(v4)) - ((2 * (v1 ^ BYTE2(v4))) & 0xBF) + 95;
  v6[2] = (v2 ^ BYTE1(v4)) - ((2 * (v2 ^ BYTE1(v4))) & 0xBF) + 95;
  v6[3] = v4 ^ v3;
  return v7();
}

uint64_t sub_1005FFF50()
{
  STACK[0x5278] = STACK[0x2228];
  STACK[0x7A10] = 0;
  STACK[0x79E8] = 0;
  LODWORD(STACK[0x6004]) = 1765993179;
  LODWORD(STACK[0x36E8]) = 133;
  v1 = STACK[0x4048] == 0x7E666516A39B34A6;
  LOBYTE(STACK[0x698F]) = v1;
  return (*(STACK[0xF18] + 8 * (((((v0 - 88) ^ v1) & 1) * ((v0 + 1750590392) & 0x97A7D7EF ^ 0x50E8)) ^ v0)))();
}

uint64_t sub_100600020()
{
  v0 = STACK[0xF10] - 9155;
  v1 = STACK[0xF10] - 34555;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 ^ v1 ^ 0x74D3)))();
}

uint64_t sub_1006000C8()
{
  v2 = (STACK[0xF10] - 1519833020) & 0x5A96EFF9;
  v3 = STACK[0xF10] - 29507;
  LODWORD(STACK[0x3444]) = v0;
  STACK[0xA1D0] = STACK[0x8AC0] + 4;
  return (*(STACK[0xF18] + 8 * ((4059 * ((((LODWORD(STACK[0x6014]) ^ 0xD784A294) + 679173484) ^ ((LODWORD(STACK[0x6014]) ^ 0x47644250) - 1197752912) ^ ((v2 ^ 0x79358CAC ^ LODWORD(STACK[0x6014])) - 2033526741)) + (((v1 ^ 0x7A010BFE) - 1422928152) ^ ((v1 ^ 0x32EDF62C) - 473748682) ^ ((v1 ^ 0x8FE81825) + 1590084925)) - (((LODWORD(STACK[0x8398]) ^ 0x84CF0A33) + 2066806221) ^ ((LODWORD(STACK[0x8398]) ^ 0x33EF5118) - 871321880) ^ ((LODWORD(STACK[0x8398]) ^ 0x5EF59C3A) - 1593154618)) != 371865702)) ^ v3)))();
}

uint64_t sub_100600238()
{
  v0 = STACK[0xF10] - 9155;
  v1 = STACK[0xF10] - 34570;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x13DA ^ (14347 * ((v1 ^ 0x7222EF46u) > (v0 ^ 0xBEF18855))))))();
}

uint64_t sub_100600354()
{
  v2 = (((v0 + 0xA8959218FC8001ELL) & 0xEAED4DBCE06FFFC6) << (((v1 - 58) | 0x19) ^ 0x3Au)) & ((v0 + 0xA8959218FC8001ELL) ^ 0xC0E82D38C44FFFD6) ^ (v0 + 0xA8959218FC8001ELL) & 0xEAED4DBCE06FFFC6;
  v3 = ((2 * ((v0 + 0xA8959218FC8001ELL) ^ 0x90BA3C684410F7D6)) ^ 0xF4AEE3A948FE1020) & ((v0 + 0xA8959218FC8001ELL) ^ 0x90BA3C684410F7D6) ^ (2 * ((v0 + 0xA8959218FC8001ELL) ^ 0x90BA3C684410F7D6)) & 0x7A5771D4A47F0810;
  v4 = v3 ^ 0xA511054A4010810;
  v5 = (v3 ^ 0x70066180247E0000) & (4 * v2) ^ v2;
  v6 = ((4 * v4) ^ 0xE95DC75291FC2040) & v4 ^ (4 * v4) & 0x7A5771D4A47F0810;
  v7 = (v6 ^ 0x68554150807C0010) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0x1202308424030810)) ^ 0xA5771D4A47F08100) & (v6 ^ 0x1202308424030810) ^ (16 * (v6 ^ 0x1202308424030810)) & 0x7A5771D4A47F0800;
  v9 = (v8 ^ 0x2057114004700010) & (v7 << 8) ^ v7;
  v10 = (((v8 ^ 0x5A006094A00F0810) << 8) ^ 0x5771D4A47F081000) & (v8 ^ 0x5A006094A00F0810) ^ ((v8 ^ 0x5A006094A00F0810) << 8) & 0x7A5771D4A47F0000;
  v11 = v9 ^ 0x7A5771D4A47F0810 ^ (v10 ^ 0x5251508424080810) & (v9 << 16);
  STACK[0xAE90] = (v0 + 0xA8959218FC8001ELL) ^ (2 * ((v11 << 32) & 0x7A5771D400000000 ^ v11 ^ ((v11 << 32) ^ 0x247F081000000000) & (((v10 ^ 0x2806215080770810) << 16) & 0x7A5771D400000000 ^ 0xA03518000000000 ^ (((v10 ^ 0x2806215080770810) << 16) ^ 0x71D4A47F00000000) & (v10 ^ 0x2806215080770810)))) ^ 0xAD3E19C536AA1F45;
  v12 = STACK[0xF18];
  v13 = (*(STACK[0xF18] + 8 * (v1 ^ 0x6FC4)))((v0 - 1882718178) ^ (2 * v11) ^ 0xA891EFE6);
  STACK[0x2BD0] = v13;
  if (v13)
  {
    v14 = -371865839;
  }

  else
  {
    v14 = 371891397;
  }

  LODWORD(STACK[0xAE98]) = v14;
  return (*(v12 + 8 * ((v13 != 0) | (2 * (v13 != 0)) | v1)))();
}

uint64_t sub_100600694()
{
  v2 = (((v1 ^ 0x87ABFE35) + 2018771403) ^ ((v1 ^ 0x9877D8D8) + 1736976168) ^ ((((v0 ^ 0xCE87) + 23502) ^ 0x9F6B544) + (v1 ^ 0xF609E1FC))) - 1035513685;
  v3 = (((LODWORD(STACK[0x4FD4]) ^ 0xC814324F) + 938200497) ^ ((LODWORD(STACK[0x4FD4]) ^ 0x38026932) - 939682098) ^ ((LODWORD(STACK[0x4FD4]) ^ 0x19C39C6C) - 432249964)) - 1035513685;
  v4 = v3 < 0xD871899A;
  v5 = v2 < v3;
  if (v2 < 0xD871899A != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((3895 * v5) ^ v0)))();
}

uint64_t sub_1006007B0()
{
  v0 = STACK[0xF10];
  v1 = 17902189 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x58E47438) + 1491366972) ^ 0xD6AB622C);
  LODWORD(STACK[0x10EE0]) = (((LODWORD(STACK[0x9894]) ^ 0xEEA3C4A3) + 291257181) ^ ((LODWORD(STACK[0x9894]) ^ 0x8B29B5B9) + 1960200775) ^ ((LODWORD(STACK[0x9894]) ^ 0x8C5FB60B) + 1939884533)) - v1 - 271025034;
  LODWORD(STACK[0x10ED8]) = v0 - v1 - 20606;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 16499)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * (v0 - 30540)))(v3);
}

uint64_t sub_100600954(uint64_t a1, uint64_t a2)
{
  v4 = STACK[0xF10] - 35597;
  LOWORD(STACK[0xA42C]) = v2;
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x204B)))(a1, a2, v3);
}

uint64_t sub_1006009CC@<X0>(int a1@<W8>)
{
  v5 = STACK[0x4110];
  v6 = (v1 + v2 - STACK[0x4110]);
  v7 = v4 - STACK[0x4110];
  *(v3 + 8) = v7;
  *v6 = v7;
  v6[1] = 0x3CE25E0EC5200378 - v5;
  v6[2] = ((11881 * (a1 ^ 0x3C57u) + (LOBYTE(STACK[0x3EEF]) ^ 0xDC74FB5DF6CFD00FLL) + 0x238B04A2092FA4B6) ^ ((LOBYTE(STACK[0x3EEF]) ^ 0x743DFD8EDE29F620) - 0x743DFD8EDE29F620) ^ ((LOBYTE(STACK[0x3EEF]) ^ 0xA84906D328E62691) + 0x57B6F92CD719D96FLL)) + 0x73B4913AF7D02EFDLL;
  *(v1 + v2) = 0x3CE25E0EC5200378;
  *(STACK[0x9D0] + 40) += v5;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100600AD4()
{
  LODWORD(STACK[0x10EE0]) = v1 + 155453101 * ((~(&STACK[0x10000] + 3800) & 0x9BCBB8D8 | (&STACK[0x10000] + 3800) & 0x64344720) ^ 0x7DEDA317) + 296782153;
  STACK[0x10ED8] = 0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xD30B)))(&STACK[0x10ED8]);
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v0;
  LODWORD(STACK[0x35EC]) = 1693393351;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100600B80@<X0>(int a1@<W8>)
{
  v1 = a1 ^ 0xB941;
  v2 = ((a1 ^ 0xB941) - 8357567) & 0x7FDF7F;
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = ((a1 ^ 0xB941) - 1762638571) ^ (906386353 * ((~(&STACK[0x10000] + 3800) & 0xFFAE0CB2 | (&STACK[0x10000] + 3800) & 0x51F348) ^ 0xCEAFC196));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (a1 ^ 0x4182)))(&STACK[0x10ED8]);
  if (*STACK[0x970])
  {
    v5 = 1;
  }

  else
  {
    v5 = *STACK[0x940] == 0;
  }

  v6 = v5;
  return (*(v3 + 8 * ((v6 * (v2 ^ 0x8B3F)) | v1)))(v4);
}

void *sub_100600C50()
{
  v1 = (STACK[0xF10] - 1422691178) & 0x54CC73FE;
  v2 = STACK[0xF10] - 33998;
  LOWORD(STACK[0x7CCE]) = v0;
  STACK[0x4758] = 0;
  LODWORD(STACK[0x1AFC]) = -371865839;
  v3 = STACK[0xF18];
  STACK[0x40C8] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * (v2 + 5325 + v1)))(&STACK[0x4758]);
}

uint64_t sub_100600CC4()
{
  STACK[0x5658] = v0;
  LODWORD(STACK[0x2564]) = -855922226;
  return (*(STACK[0xF18] + 8 * (v1 - 30507)))();
}

uint64_t sub_100600CF0@<X0>(int a1@<W8>)
{
  *(v3 + 1524) = v2;
  *(v3 + 1520) = a1;
  return (*(STACK[0xF18] + 8 * ((754 * (v1 != -569613104)) ^ (v1 - 30452))))();
}

uint64_t sub_100600D2C()
{
  v0 = STACK[0xF10] - 35330;
  LODWORD(STACK[0x9F50]) = (((LODWORD(STACK[0x9F4C]) ^ 0x835F6718) + 2090899688) ^ ((LODWORD(STACK[0x9F4C]) ^ 0xF16BC6B9) + 244595015) ^ ((LODWORD(STACK[0x9F4C]) ^ 0x9BE166B0) + 1679726928)) + ((STACK[0xF10] - 7569) ^ 0x3D3537D7);
  return (*(STACK[0xF18] + 8 * (v0 ^ 0xBAC ^ (7882 * ((v0 ^ 0x66B9CC72u) > 0x58B0B7F0)))))();
}

uint64_t sub_1006011CC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  STACK[0x9590] = 0;
  return (*(STACK[0xF18] + 8 * (((v4 == 0) * (((v3 + 2118371961) & 0x81BBFF7F) + ((v3 - 45585) ^ 0xFFFF7BC7))) | v3)))(a1, a2, 371891400);
}

uint64_t sub_10060124C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v21.i64[0] = a6 + a1 - 3;
  v21.i64[1] = a6 + a1 - 4;
  *&STACK[0xEC0] = v21;
  v22.i64[0] = a6 + a1 - 1;
  v22.i64[1] = a6 + a1 - 2;
  v23.i64[0] = a4 + a5 - 1970627028;
  v23.i64[1] = a4 + a5 - 1970627029;
  v24.i64[0] = a4 + a5 - 1970627030;
  v24.i64[1] = a4 + a5 - 1970627031;
  v25 = (v8 - 19834) | 1u;
  v26.i64[0] = a6 + a1 - 7;
  STACK[0xED0] = *(a6 + a1 - 8);
  v27.i64[0] = a4 + a5 - 1970627034;
  v26.i64[1] = a6 + a1 - 8;
  v27.i64[1] = a4 + a5 - 1970627035;
  v28.i64[0] = a6 + a1 - 5;
  v28.i64[1] = a6 + a1 + (v25 ^ 0xFFFFFFFFFFFFCFFFLL);
  v29.i64[0] = a4 + a5 - 1970627032;
  v29.i64[1] = a4 + a5 - 1970627027 + (v25 ^ 0xFFFFFFFFFFFFCFFFLL);
  v30 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v31 = vandq_s8(v22, v30);
  v32 = vandq_s8(v21, v30);
  v33 = vandq_s8(v28, v30);
  v34 = vandq_s8(v26, v30);
  v35 = vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL);
  v36 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v37 = vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL);
  v38 = vdupq_n_s64(0x38uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v40 = vdupq_n_s64(a8);
  v41 = vaddq_s64(v39, v40);
  v42 = vaddq_s64(v37, v40);
  v43 = vaddq_s64(v35, v40);
  v44 = vaddq_s64(v36, v40);
  v45 = vdupq_n_s64(v19);
  v46 = vsubq_s64(v45, v36);
  v47 = vsubq_s64(v45, v35);
  v48 = vsubq_s64(v45, v37);
  v49 = vsubq_s64(v45, v39);
  v50 = vdupq_n_s64(v9);
  v51 = vandq_s8(v49, v50);
  v52 = vaddq_s64(vandq_s8(v46, v50), v44);
  v53 = vaddq_s64(vandq_s8(v47, v50), v43);
  v54 = vaddq_s64(vandq_s8(v48, v50), v42);
  v55 = vdupq_n_s64(v11);
  v56 = vsubq_s64(v54, vandq_s8(v42, v55));
  v57 = vsubq_s64(vaddq_s64(v51, v41), vandq_s8(v41, v55));
  v58 = vsubq_s64(v53, vandq_s8(v43, v55));
  v59 = vsubq_s64(v52, vandq_s8(v44, v55));
  v60 = vdupq_n_s64(0x75CF442284965A07uLL);
  v61 = veorq_s8(v58, v60);
  v62 = veorq_s8(v59, v60);
  v63 = veorq_s8(v56, v60);
  v64 = veorq_s8(v57, v60);
  v65 = vdupq_n_s64(0xC14413EE03AAF609);
  v66 = veorq_s8(v56, v65);
  v67 = veorq_s8(v57, v65);
  v68 = veorq_s8(v58, v65);
  v69 = veorq_s8(v59, v65);
  v70 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v71 = vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL);
  v72 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v69);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v66);
  v74 = vaddq_s64(v70, v67);
  v75 = vdupq_n_s64(v10);
  v76 = veorq_s8(v73, v75);
  v77 = veorq_s8(v74, v75);
  v78 = veorq_s8(vaddq_s64(v71, v68), v75);
  v79 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v80 = vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL);
  v81 = veorq_s8(v72, v75);
  v82 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v83 = vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL);
  v84 = veorq_s8(v78, v82);
  v85 = veorq_s8(v81, v83);
  v86 = veorq_s8(v76, v80);
  v87 = veorq_s8(v77, v79);
  v88 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v89 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v86);
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v87);
  v92 = vaddq_s64(v89, v85);
  v93 = vdupq_n_s64(v18);
  v94 = veorq_s8(vaddq_s64(v88, v84), v93);
  v95 = veorq_s8(v92, v93);
  v96 = veorq_s8(v90, v93);
  v97 = vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL);
  v98 = vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL);
  v99 = veorq_s8(v91, v93);
  v100 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v101 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v102 = veorq_s8(v94, v98);
  v103 = veorq_s8(v95, v97);
  v104 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v105 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v102);
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v103);
  v108 = vaddq_s64(v105, v101);
  v109 = vdupq_n_s64(0xBD7D2DE9C10AA16ALL);
  v110 = veorq_s8(vaddq_s64(v104, v100), v109);
  v111 = veorq_s8(v108, v109);
  v112 = veorq_s8(v106, v109);
  v113 = vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL);
  v114 = vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL);
  v115 = veorq_s8(v107, v109);
  v116 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v117 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v118 = veorq_s8(v110, v114);
  v119 = veorq_s8(v111, v113);
  v120 = vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL);
  v121 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v118);
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v119);
  v124 = vaddq_s64(v120, v116);
  v125 = vaddq_s64(v121, v117);
  v126 = vdupq_n_s64(0x4BB2CF10603AF002uLL);
  v127 = vdupq_n_s64(0xB44D30EF9FC50FFDLL);
  v128 = vsubq_s64(vorrq_s8(v123, v126), vorrq_s8(v123, v127));
  v129 = vaddq_s64(vsubq_s64(vorrq_s8(v125, v126), vorrq_s8(v125, v127)), v127);
  v130 = vaddq_s64(vsubq_s64(vorrq_s8(v124, v126), vorrq_s8(v124, v127)), v127);
  v131 = vaddq_s64(vsubq_s64(vorrq_s8(v122, v126), vorrq_s8(v122, v127)), v127);
  v132 = vdupq_n_s64(0xC9024F07DF79306BLL);
  v133 = veorq_s8(v131, v132);
  v134 = veorq_s8(v130, v132);
  v135 = vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL);
  v136 = veorq_s8(vaddq_s64(v128, v127), v132);
  v137 = vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL);
  v139 = vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL);
  v140 = veorq_s8(v129, v132);
  v141 = veorq_s8(v140, v139);
  v142 = veorq_s8(v134, v138);
  v143 = veorq_s8(v133, v137);
  v144 = veorq_s8(v136, v135);
  v145 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v144);
  v147 = vaddq_s64(v145, v143);
  v148 = vdupq_n_s64(0x3BC4FBA94204947DuLL);
  v149 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v141), v148);
  v150 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v142), v148);
  v151 = veorq_s8(v147, v148);
  v152 = veorq_s8(v146, v148);
  v153 = vdupq_n_s64(0x444C3EF7816B06F8uLL);
  v154 = vorrq_s8(vaddq_s64(v149, v149), v153);
  v155 = vsubq_s64(vorrq_s8(vaddq_s64(v151, v151), v153), v151);
  v156 = vdupq_n_s64(0xDDD9E0843F4A7C84);
  v157 = vsubq_s64(vorrq_s8(vaddq_s64(v152, v152), v153), v152);
  v158 = vsubq_s64(vorrq_s8(vaddq_s64(v150, v150), v153), v150);
  v159 = vdupq_n_s64(0xB37F3E686055C37DLL);
  v160 = vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL);
  v161 = vsubq_s64(v154, v149);
  v162 = vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL);
  v163 = vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL);
  v164 = vaddq_s64(v158, v156);
  v165 = vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL);
  v166 = vandq_s8(v27, v30);
  v167 = vandq_s8(v24, v30);
  v168 = vandq_s8(v23, v30);
  v169 = vandq_s8(v29, v30);
  v170 = vaddq_s64(v155, v156);
  v171 = vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL);
  v172 = vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL);
  v173 = vaddq_s64(v161, v156);
  v174 = vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL);
  v175 = vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL);
  v176 = vaddq_s64(v157, v156);
  v177 = vdupq_n_s64(0xA325067CBC52C678);
  v178 = veorq_s8(v170, v159);
  v179 = vdupq_n_s64(v17);
  v180 = veorq_s8(v164, v159);
  v181 = vandq_s8(vaddq_s64(vaddq_s64(v175, v175), v177), v179);
  v182 = vandq_s8(vaddq_s64(vaddq_s64(v174, v174), v177), v179);
  v183 = vandq_s8(vaddq_s64(vaddq_s64(v172, v172), v177), v179);
  v184 = vsubq_s64(v171, vandq_s8(vaddq_s64(vaddq_s64(v171, v171), v177), v179));
  v185 = veorq_s8(v176, v159);
  v186 = vsubq_s64(v172, v183);
  v187 = vsubq_s64(v174, v182);
  v188 = vsubq_s64(v175, v181);
  v189 = vdupq_n_s64(0xCB0F1D4FE79F5D56);
  v190 = veorq_s8(v173, v159);
  v191 = vaddq_s64(v188, v189);
  v192 = vaddq_s64(v187, v189);
  v193 = vaddq_s64(v186, v189);
  v194 = vdupq_n_s64(0x67FD13F296EE9EB2uLL);
  v195 = veorq_s8(v180, v163);
  v196 = vaddq_s64(v184, v189);
  v197 = veorq_s8(v196, v194);
  v198 = veorq_s8(v193, v194);
  v199 = veorq_s8(v192, v194);
  v200 = veorq_s8(v191, v194);
  v201 = veorq_s8(v178, v162);
  v202 = vdupq_n_s64(0xEB690A0067A58754);
  v203 = veorq_s8(v191, v202);
  v204 = veorq_s8(v192, v202);
  v205 = veorq_s8(v193, v202);
  v206 = veorq_s8(v196, v202);
  v207 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v208 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v206);
  v209 = veorq_s8(v190, v165);
  v210 = vaddq_s64(v207, v205);
  v211 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), v204);
  v212 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v203);
  v213 = vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL);
  v214 = vdupq_n_s64(0x8D4F80F477B96692);
  v215 = veorq_s8(v185, v160);
  v216 = vdupq_n_s64(0x297AF72712700E83uLL);
  v217 = vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL);
  v218 = vdupq_n_s64(0xD68508D8ED8FF17CLL);
  v219 = vsubq_s64(v208, vandq_s8(vaddq_s64(v208, v208), v214));
  v220 = vdupq_n_s64(0xC6A7C07A3BDCB349);
  v221 = vaddq_s64(v219, v220);
  v222 = vaddq_s64(vsubq_s64(v210, vandq_s8(vaddq_s64(v210, v210), v214)), v220);
  v223 = vaddq_s64(vsubq_s64(v211, vandq_s8(vaddq_s64(v211, v211), v214)), v220);
  v224 = vaddq_s64(vsubq_s64(v212, vandq_s8(vaddq_s64(v212, v212), v214)), v220);
  v225 = vdupq_n_s64(v16);
  v226 = vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL);
  v227 = veorq_s8(v224, v225);
  v228 = veorq_s8(v223, v225);
  v229 = veorq_s8(v222, v225);
  v230 = veorq_s8(v221, v225);
  v231 = vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL);
  v232 = vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL);
  v233 = vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL);
  v234 = veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL));
  v235 = veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL));
  v236 = veorq_s8(v228, v232);
  v237 = veorq_s8(v227, v231);
  v238 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v239 = vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL);
  v240 = vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL);
  v241 = vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL);
  v242 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL), v237);
  v243 = vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL);
  v244 = vaddq_s64(v241, v236);
  v245 = vaddq_s64(v238, v234);
  v246 = vdupq_n_s64(v15);
  v247 = vaddq_s64(v217, v201);
  v248 = veorq_s8(v245, v246);
  v249 = veorq_s8(vaddq_s64(v239, v235), v246);
  v250 = veorq_s8(v244, v246);
  v251 = veorq_s8(v242, v246);
  v252 = vaddq_s64(v213, v195);
  v253 = veorq_s8(v251, vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL));
  v254 = veorq_s8(v250, vsraq_n_u64(vshlq_n_s64(v236, 3uLL), v236, 0x3DuLL));
  v255 = veorq_s8(v249, vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL));
  v256 = vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL);
  v257 = veorq_s8(v248, vsraq_n_u64(vshlq_n_s64(v234, 3uLL), v234, 0x3DuLL));
  v258 = vsraq_n_u64(vshlq_n_s64(v251, 0x38uLL), v251, 8uLL);
  v259 = vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL);
  v260 = vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL);
  v261 = vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL);
  v262 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL), v257);
  v263 = vaddq_s64(v233, v215);
  v264 = vaddq_s64(v261, v255);
  v265 = vdupq_n_s64(0x19BBA1D59C2A28CuLL);
  v266 = vaddq_s64(v226, v209);
  v267 = veorq_s8(vaddq_s64(v258, v253), v265);
  v268 = veorq_s8(vaddq_s64(v259, v254), v265);
  v269 = veorq_s8(v264, v265);
  v270 = veorq_s8(v262, v265);
  v271 = vorrq_s8(v252, v216);
  v272 = vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL);
  v273 = vsraq_n_u64(vshlq_n_s64(v254, 3uLL), v254, 0x3DuLL);
  v274 = vsraq_n_u64(vshlq_n_s64(v255, 3uLL), v255, 0x3DuLL);
  v275 = vorrq_s8(v247, v216);
  v276 = veorq_s8(v270, vsraq_n_u64(vshlq_n_s64(v257, 3uLL), v257, 0x3DuLL));
  v277 = veorq_s8(v269, v274);
  v278 = veorq_s8(v268, v273);
  v279 = vorrq_s8(v252, v218);
  v280 = veorq_s8(v267, v272);
  v281 = vsraq_n_u64(vshlq_n_s64(v270, 0x38uLL), v270, 8uLL);
  v282 = vsraq_n_u64(vshlq_n_s64(v269, 0x38uLL), v269, 8uLL);
  v283 = vorrq_s8(v247, v218);
  v284 = vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL);
  v285 = vorrq_s8(v266, v216);
  v286 = vdupq_n_s64(0xA958557FD3FC79DDLL);
  v287 = vorrq_s8(v263, v216);
  v288 = veorq_s8(vaddq_s64(v281, v276), v286);
  v289 = veorq_s8(vaddq_s64(v282, v277), v286);
  v290 = veorq_s8(vaddq_s64(v284, v278), v286);
  v291 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v267, 0x38uLL), v267, 8uLL), v280), v286);
  v292 = vorrq_s8(v266, v218);
  v293 = vsraq_n_u64(vshlq_n_s64(v277, 3uLL), v277, 0x3DuLL);
  v294 = vsraq_n_u64(vshlq_n_s64(v278, 3uLL), v278, 0x3DuLL);
  v295 = vorrq_s8(v263, v218);
  v296 = veorq_s8(v291, vsraq_n_u64(vshlq_n_s64(v280, 3uLL), v280, 0x3DuLL));
  v297 = veorq_s8(v290, v294);
  v298 = veorq_s8(v289, v293);
  v299 = vsubq_s64(v275, v283);
  v300 = veorq_s8(v288, vsraq_n_u64(vshlq_n_s64(v276, 3uLL), v276, 0x3DuLL));
  v301 = vsraq_n_u64(vshlq_n_s64(v291, 0x38uLL), v291, 8uLL);
  v302 = vsubq_s64(v271, v279);
  v303 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v288, 0x38uLL), v288, 8uLL), v300);
  v304 = vsubq_s64(v287, v295);
  v305 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v289, 0x38uLL), v289, 8uLL), v298);
  v306 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v290, 0x38uLL), v290, 8uLL), v297);
  v307 = vaddq_s64(v301, v296);
  v308 = vdupq_n_s64(v20);
  v309 = vaddq_s64(vsubq_s64(v285, v292), v218);
  v310 = vaddq_s64(v302, v218);
  v311 = vaddq_s64(v299, v218);
  v312 = vdupq_n_s64(v13);
  v313 = veorq_s8(vaddq_s64(v304, v218), v312);
  v314 = veorq_s8(v311, v312);
  v315 = veorq_s8(v310, v312);
  v316 = veorq_s8(v309, v312);
  v317 = vsubq_s64(vandq_s8(vaddq_s64(v307, v307), v308), v307);
  v318 = vdupq_n_s64(v14);
  v319 = veorq_s8(v315, v243);
  v320 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v303, v303), v308), v303), v318);
  v321 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v305, v305), v308), v305), v318);
  v322 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v306, v306), v308), v306), v318);
  v323 = vaddq_s64(v317, v318);
  v324 = veorq_s8(v314, v240);
  v325 = vdupq_n_s64(v12);
  v326 = veorq_s8(v323, v325);
  v327 = veorq_s8(v322, v325);
  v328 = veorq_s8(v321, v325);
  v329 = veorq_s8(v320, v325);
  v330 = vsraq_n_u64(vshlq_n_s64(v296, 3uLL), v296, 0x3DuLL);
  v331 = vsraq_n_u64(vshlq_n_s64(v297, 3uLL), v297, 0x3DuLL);
  v332 = veorq_s8(v316, v260);
  v333 = vsraq_n_u64(vshlq_n_s64(v298, 3uLL), v298, 0x3DuLL);
  v334 = veorq_s8(v329, vsraq_n_u64(vshlq_n_s64(v300, 3uLL), v300, 0x3DuLL));
  v335 = veorq_s8(v313, v256);
  v336 = veorq_s8(v328, v333);
  v337 = veorq_s8(v327, v331);
  v338 = veorq_s8(v326, v330);
  v339 = vsraq_n_u64(vshlq_n_s64(v329, 0x38uLL), v329, 8uLL);
  v340 = vsraq_n_u64(vshlq_n_s64(v315, 0x38uLL), v315, 8uLL);
  v341 = vsraq_n_u64(vshlq_n_s64(v328, 0x38uLL), v328, 8uLL);
  v342 = vsraq_n_u64(vshlq_n_s64(v327, 0x38uLL), v327, 8uLL);
  v343 = vsraq_n_u64(vshlq_n_s64(v326, 0x38uLL), v326, 8uLL);
  v344 = vsraq_n_u64(vshlq_n_s64(v314, 0x38uLL), v314, 8uLL);
  v345 = vaddq_s64(v339, v334);
  v346 = vdupq_n_s64(0x1B5DE9094BAFA51AuLL);
  v347 = veorq_s8(v345, v346);
  v348 = veorq_s8(vaddq_s64(v341, v336), v346);
  v349 = vsraq_n_u64(vshlq_n_s64(v316, 0x38uLL), v316, 8uLL);
  v350 = veorq_s8(vaddq_s64(v342, v337), v346);
  v351 = veorq_s8(vaddq_s64(v343, v338), v346);
  v352 = vsraq_n_u64(vshlq_n_s64(v334, 3uLL), v334, 0x3DuLL);
  v353 = vsraq_n_u64(vshlq_n_s64(v313, 0x38uLL), v313, 8uLL);
  v354 = vsraq_n_u64(vshlq_n_s64(v336, 3uLL), v336, 0x3DuLL);
  v355 = vsraq_n_u64(vshlq_n_s64(v337, 3uLL), v337, 0x3DuLL);
  v356 = veorq_s8(v351, vsraq_n_u64(vshlq_n_s64(v338, 3uLL), v338, 0x3DuLL));
  v357 = veorq_s8(v350, v355);
  v358 = veorq_s8(v347, v352);
  v359 = vsraq_n_u64(vshlq_n_s64(v351, 0x38uLL), v351, 8uLL);
  v360 = vsraq_n_u64(vshlq_n_s64(v350, 0x38uLL), v350, 8uLL);
  v361 = vaddq_s64(v353, v335);
  v362 = vdupq_n_s64(0x9B1C7427651E0F18);
  v363 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v348, 0x38uLL), v348, 8uLL), veorq_s8(v348, v354));
  v364 = veorq_s8(v361, v362);
  v365 = vaddq_s64(v360, v357);
  v366 = vdupq_n_s64(0xC437C7327FD12F34);
  v367 = vshlq_u64(veorq_s8(vaddq_s64(v344, v324), v362), vnegq_s64(vandq_s8(vshlq_n_s64(v22, 3uLL), v38)));
  v368 = veorq_s8(v365, v366);
  v369 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v347, 0x38uLL), v347, 8uLL), v358), v366), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v38)));
  v370 = vshlq_u64(veorq_s8(v363, v366), vnegq_s64(vandq_s8(vshlq_n_s64(v23, 3uLL), v38)));
  v372.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v349, v332), v362), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v38))), vshlq_u64(veorq_s8(vaddq_s64(v359, v356), v366), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v38))));
  v372.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v340, v319), v362), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xEC0], 3uLL), v38))), vshlq_u64(v368, vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), v38))));
  v372.val[0] = veorq_s8(v367, v370);
  v372.val[2] = veorq_s8(vshlq_u64(v364, vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v38))), v369);
  *v27.i64[1] = veor_s8(vrev64_s8(*&vqtbl4q_s8(v372, xmmword_100F523B0)), STACK[0xED0]);
  return (*(STACK[0xF18] + 8 * ((53323 * (a2 == a3)) ^ v8)))();
}

uint64_t sub_100601E7C()
{
  v1 = STACK[0xF18];
  STACK[0x8378] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((1308 * ((v0 ^ 0xFDA7ECDA) > 0xA640AC59)) ^ (v0 - 17130 + ((v0 - 2062490463) & 0x7AEF5B7D)))))();
}

uint64_t sub_100601FC4()
{
  v0 = (STACK[0xF10] - 2111755324) & 0x7DDE5FEF;
  v1 = STACK[0xF10] - 33735;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 805) ^ v1)))();
}

uint64_t sub_10060202C()
{
  v3 = (((v0 ^ 0xE9D5C711) / (v2 - 1522411201 + ((v1 - 27579) | 0x3A1Au))) ^ 0xF6AF7739) + 536731640 + ((2 * ((v0 ^ 0xE9D5C711) / (v2 - 1522411201 + ((v1 - 27579) | 0x3A1Au)))) & 0x6D5EEE72);
  v4 = LOBYTE(STACK[0x895F]) * (v1 ^ 0x7FC3);
  LODWORD(STACK[0xA9E4]) = v3;
  return (*(STACK[0xF18] + 8 * (v4 ^ v1)))();
}

uint64_t sub_1006020C8(uint64_t a1, uint64_t a2)
{
  STACK[0x8A60] = 0;
  LODWORD(STACK[0x7244]) = -371865839;
  STACK[0x6FE0] = 0;
  LODWORD(STACK[0x2184]) = -371865839;
  return (*(STACK[0xF18] + 8 * (((v3 == (v2 ^ 0xFB0C032E) - 288799498) * (v2 - 29079)) ^ v2)))(a1, a2, 371891535);
}

uint64_t sub_1006021BC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xA814]) = v2;
  LODWORD(STACK[0xA810]) = v1;
  v3 = LODWORD(STACK[0x6004]) - 1047491207;
  v4 = v3 < 0x2AD37854;
  v5 = v2 - 420991671 < v3;
  if ((v2 - 420991671) < 0x2AD37854 != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((!v5 * ((2333 * (((a1 - 48711) | 0x140) ^ 0x14C)) ^ 0x88A8)) ^ a1)))();
}

uint64_t sub_100602314@<X0>(_DWORD *a1@<X7>, unint64_t *a2@<X8>)
{
  v5 = 0;
  v6 = *(*v3 + (*a1 & 0x4BA6E21C)) ^ 0x4BA6E21ELL;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  v12 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v11;
  v13 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v12 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v12;
  v14 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v13 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v13;
  STACK[0xBEE0] = 0;
  STACK[0xBEE8] = v2;
  v15 = 16777619 * ((1269228062 * v14 + 7) ^ (1269228062 * v14)) % 7;
  v16 = 16777619 * ((1269228062 * v14 + 6) ^ (1269228062 * v14)) % 6;
  v17 = 16777619 * ((1269228062 * v14 + 5) ^ (1269228062 * v14)) % 5;
  v18 = *(&STACK[0xBEE0] | v15);
  *(&STACK[0xBEE0] | v15) = STACK[0xBEE7];
  v19 = *(&STACK[0xBEE0] | v16);
  *(&STACK[0xBEE0] | v16) = STACK[0xBEE6];
  v20 = *(&STACK[0xBEE0] | v17);
  *(&STACK[0xBEE0] | v17) = STACK[0xBEE5];
  v21 = 16777619 * ((1269228062 * v14 + 3) ^ (1269228062 * v14)) % 3;
  v22 = vdup_n_s32(1269228062 * v14);
  v23.i32[0] = v22.i32[0];
  v23.i32[1] = (1269228062 * v14) | 1;
  LOBYTE(STACK[0xBEE7]) = v18;
  v24 = veor_s8(vmul_s32(v23, v22), v22);
  LOBYTE(STACK[0xBEE6]) = v19;
  LOBYTE(STACK[0xBEE5]) = v20;
  v25 = STACK[0xBEE0];
  LOBYTE(STACK[0xBEE0]) = STACK[0xBEE4];
  LOBYTE(STACK[0xBEE4]) = v25;
  v26 = *(&STACK[0xBEE0] | v21);
  *(&STACK[0xBEE0] | v21) = STACK[0xBEE3];
  LOBYTE(STACK[0xBEE3]) = v26;
  v27 = STACK[0xBEE1];
  LOBYTE(STACK[0xBEE2]) = STACK[0xBEE0];
  LOWORD(STACK[0xBEE0]) = v27;
  STACK[0xBEE0] = vmla_s32(v24, STACK[0xBEE0], vdup_n_s32(0x1000193u));
  v28 = STACK[0xBEE8];
  v29 = (1269228062 * STACK[0xBEE8]) ^ v14;
  v30 = vdupq_n_s32(v29);
  v31 = xmmword_100BC7620;
  v32 = xmmword_100BC7630;
  v33 = xmmword_100BC7640;
  v34 = xmmword_100BC7650;
  v35.i64[1] = 0xFFFFFF0FFFFFFF0ELL;
  v36.i64[0] = 0x9393939393939393;
  v36.i64[1] = 0x9393939393939393;
  v37.i64[0] = 0x1000000010;
  v37.i64[1] = 0x1000000010;
  do
  {
    v38 = *(v28 + v5);
    v58.val[1] = veorq_s8(vqtbl1q_s8(v38, xmmword_100BC7690), veorq_s8(v30, vmulq_s32(vaddq_s32(v33, v30), vsubq_s32(v33, v30))));
    v58.val[0] = veorq_s8(vqtbl1q_s8(v38, xmmword_100BC76A0), veorq_s8(v30, vmulq_s32(vaddq_s32(v34, v30), vsubq_s32(v34, v30))));
    v58.val[2] = veorq_s8(vqtbl1q_s8(v38, xmmword_100BC7680), veorq_s8(v30, vmulq_s32(vaddq_s32(v32, v30), vsubq_s32(v32, v30))));
    v58.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v38, xmmword_100BC7670), v30), vmulq_s32(vaddq_s32(v31, v30), vsubq_s32(v31, v30)));
    *(v28 + v5) = vmulq_s8(vqtbl4q_s8(v58, xmmword_100BC7660), v36);
    v5 += 16;
    v34 = vaddq_s32(v34, v37);
    v33 = vaddq_s32(v33, v37);
    v32 = vaddq_s32(v32, v37);
    v31 = vaddq_s32(v31, v37);
  }

  while (v5 != 2176);
  v39 = 0;
  v40 = xmmword_100F52AB0;
  v41 = vdupq_n_s32(v29);
  v42 = xmmword_100F52AC0;
  v43 = v28 + 2176;
  v44.i64[0] = 0x800000008;
  v44.i64[1] = 0x800000008;
  do
  {
    v35.i64[0] = *(v43 + v39);
    v57.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7690), v41), vmulq_s32(vaddq_s32(v40, v41), vsubq_s32(v40, v41)));
    v57.val[0] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC76A0), veorq_s8(v41, vmulq_s32(vaddq_s32(v42, v41), vsubq_s32(v42, v41))));
    v35 = vqtbl2q_s8(v57, xmmword_100F52AD0);
    *(v43 + v39) = vmul_s8(*v35.i8, 0x9393939393939393);
    v42 = vaddq_s32(v42, v44);
    v40 = vaddq_s32(v40, v44);
    v39 += 8;
  }

  while (v39 != 8);
  v45 = 272;
  do
  {
    v46 = 16777619 * ((v29 + v45) ^ v29) % v45;
    v47 = *(v28 + 8 * v46) ^ *(v28 + 8 * v45);
    *(v28 + 8 * v45) = v47;
    v48 = *(v28 + 8 * v46) ^ v47;
    *(v28 + 8 * v46) = v48;
    *(v28 + 8 * v45) ^= v48;
    v49 = v45-- + 1;
  }

  while (v49 > 2);
  v50 = *(&STACK[0xBEE8] + v15);
  *(&STACK[0xBEE8] + v15) = STACK[0xBEEF];
  LOBYTE(STACK[0xBEEF]) = v50;
  v51 = *(&STACK[0xBEE8] + v16);
  *(&STACK[0xBEE8] + v16) = STACK[0xBEEE];
  LOBYTE(STACK[0xBEEE]) = v51;
  v52 = *(&STACK[0xBEE8] + v17);
  *(&STACK[0xBEE8] + v17) = STACK[0xBEED];
  LOBYTE(STACK[0xBEED]) = v52;
  v53 = STACK[0xBEE8];
  LOBYTE(STACK[0xBEE8]) = STACK[0xBEEC];
  v54 = *(&STACK[0xBEE8] + v21);
  *(&STACK[0xBEE8] + v21) = STACK[0xBEEB];
  LOBYTE(STACK[0xBEEC]) = v53;
  LOBYTE(STACK[0xBEEB]) = v54;
  v55 = STACK[0xBEE9];
  LOBYTE(STACK[0xBEEA]) = STACK[0xBEE8];
  LOWORD(STACK[0xBEE8]) = v55;
  STACK[0xBEE8] = vmla_s32(v24, STACK[0xBEE8], vdup_n_s32(0x1000193u));
  *a2 = STACK[0xBEE8] ^ STACK[0xBEE0];
  return (*(STACK[0xF18] + 8 * (v4 + 8071)))();
}

uint64_t sub_100602858@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x3310]) = a1;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * (v1 - 32625));
  return (*(v2 + 8 * ((((v1 + 847980548) & 0xCD74CEDE) - 25347) ^ (v1 - 32625))))();
}

uint64_t sub_1006028B0()
{
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 44165)))(*(v2 + 16) ^ 0xE9D5C711);
  *(v0 + 24) = v4;
  return (*(v3 + 8 * (((v4 != 0) * (((v1 + 27925) | 0x13) + (v1 ^ 0xFFFF6AED))) ^ v1)))();
}

uint64_t sub_100602920()
{
  v0 = STACK[0xF10] ^ 0xF5A0;
  v1 = STACK[0xF18];
  v2 = STACK[0x4E8];
  STACK[0x6728] = *(STACK[0xF18] + 8 * SLODWORD(STACK[0x4E8]));
  return (*(v1 + 8 * (v0 ^ v2 ^ 0x5562)))();
}

uint64_t sub_100602A14()
{
  v3 = (((*(v1 + 16) ^ 0x2674BAC6) + 1946728218) ^ ((*(v1 + 16) ^ 0xD2CC3B53) - 2135935347) ^ (((v2 - 506257236) & 0x1E2CDA63 ^ 0xB47FC28 ^ *(v1 + 16)) + 1497068470)) + 1206660884;
  v4 = v0 - 675574533 > v3;
  v5 = ((v0 - 675574533) < 0xF5702135) ^ (v3 < 0xF5702135);
  v6 = v4;
  if (v5)
  {
    v7 = (v0 - 675574533) < 0xF5702135;
  }

  else
  {
    v7 = v6;
  }

  return (*(STACK[0xF18] + 8 * ((169 * !v7) ^ v2)))();
}

uint64_t sub_100602AF4()
{
  STACK[0x7690] -= 144;
  v2 = 634647737 * ((~&STACK[0x10ED8] & 0x182A4867D711A041 | &STACK[0x10ED8] & 0xE7D5B79828EE5FB8) ^ 0xC2F1E788BA878FBDLL);
  v3 = v1 + 297025115 - v2;
  STACK[0x10EE8] = v2 ^ 0x162A9CCB;
  STACK[0x10EF0] = v0 - v2;
  LODWORD(STACK[0x10EF8]) = v1 - v2 - 1230214699;
  LODWORD(STACK[0x10EE4]) = v1 + 297025115 + v2;
  LODWORD(STACK[0x10EFC]) = v3 + 14;
  LODWORD(STACK[0x10EDC]) = v3 + 4685;
  LODWORD(STACK[0x10ED8]) = -634647737 * ((~&STACK[0x10ED8] & 0xD711A041 | &STACK[0x10ED8] & 0xE7D5B79828EE5FB8) ^ 0xBA878FBD);
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 ^ 0x41D7)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * SLODWORD(STACK[0x10EE0])))(v5);
}

uint64_t sub_100602BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _DWORD *a29)
{
  v32 = ((((v29 + 28888) ^ STACK[0x820] & 0x40000000 ^ 0x4E356B92) - 2109721277) ^ 0x1C03F800) - 1707686715;
  v33 = 1603510583 * ((((2 * (v30 - 176)) | 0xDEFA453E) - (v30 - 176) + 277011809) ^ 0x78A61034);
  v34 = (STACK[0x820] & 0x4000000 ^ 0x66480B67) + v33;
  *(v30 - 176) = -1603510583 * ((((2 * (v30 - 176)) | 0xDEFA453E) - (v30 - 176) + 277011809) ^ 0x78A61034) + 991889963 * (((*a29 & 4 ^ 0xF8C361F7) + 20630426) ^ (*a29 & 4 | 0xFA022A71) ^ ((*a29 & 4 ^ 0x38EEABDE) - 1055456847)) + 654232827;
  *(v30 - 172) = v34;
  *(v30 - 164) = v32 ^ v33;
  *(v30 - 160) = v33 - 574087989 + v29;
  v35 = (*(v31 + 8 * (v29 ^ 0xD8F9)))(v30 - 176);
  return (*(v31 + 8 * v29))(v35);
}

uint64_t sub_100602DBC(unint64_t a1)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  STACK[0x4438] = v3;
  return (*(STACK[0xF18] + 8 * (((v3 == 0) * ((2101 * (v2 ^ 0x8B3C)) ^ 0x3989)) ^ (v2 + 7745))))();
}

uint64_t sub_100602E70()
{
  if (LODWORD(STACK[0x93B0]) == LODWORD(STACK[0x2A78]))
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891374;
  }

  v3 = v0 == -371865839;
  if (v0 == -371865839)
  {
    v0 = v2;
  }

  v4 = LODWORD(STACK[0x93B0]) == LODWORD(STACK[0x2A78]);
  LODWORD(STACK[0x8D7C]) = v0;
  v5 = v4 && v3;
  return (*(STACK[0xF18] + 8 * ((!v5 * (4679 * (v1 ^ 0x8B39) - 9130)) ^ (v1 - 28092))))();
}

uint64_t sub_100602FD0@<X0>(int a1@<W8>)
{
  v4 = v2 + 10173;
  LODWORD(STACK[0xAA94]) = a1 | 4;
  v5 = (((v3 ^ 0xF06EA173) - 770033492) ^ ((v3 ^ 0x2D39B0D2) + 256715019) ^ ((v3 ^ (96 * (((v2 - 25391) | 0x113) ^ 0x2937)) ^ 0xE909BF97) - 880989872)) - 347259551;
  v7 = v5 > 0x177764F && (a1 | 0x1777654u) > v5 || v3 == v1;
  v8 = v7;
  if (v7)
  {
    v9 = 371891407;
  }

  else
  {
    v9 = -371865839;
  }

  LODWORD(STACK[0xAA98]) = v9;
  return (*(STACK[0xF18] + 8 * ((499 * v8) ^ v4)))();
}

uint64_t sub_100603198@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xEC0]) += 12;
  v1 = (((LODWORD(STACK[0xED0]) ^ 0xC4B07587) + 995068537) ^ ((LODWORD(STACK[0xED0]) ^ 0x667EEB84) - 1719593860) ^ ((LODWORD(STACK[0xED0]) ^ 0x4B1B5912) - 1260083474)) + 1106666461 + ((a1 - 35554) | 0x80);
  v2 = (v1 ^ 0x279EB925) & (2 * (v1 & 0xA7DF39B5)) ^ v1 & 0xA7DF39B5;
  v3 = ((2 * (v1 ^ 0x6D2E9A4D)) ^ 0x95E347F0) & (v1 ^ 0x6D2E9A4D) ^ (2 * (v1 ^ 0x6D2E9A4D)) & 0xCAF1A3F8;
  v4 = v3 ^ 0x4A10A008;
  v5 = (v3 ^ 0x80E103F0) & (4 * v2) ^ v2;
  v6 = ((4 * v4) ^ 0x2BC68FE0) & v4 ^ (4 * v4) & 0xCAF1A3F8;
  v7 = (v6 ^ 0xAC083E0) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0xC0312018)) ^ 0xAF1A3F80) & (v6 ^ 0xC0312018) ^ (16 * (v6 ^ 0xC0312018)) & 0xCAF1A3C0;
  v9 = v7 ^ 0xCAF1A3F8 ^ (v8 ^ 0x8A102300) & (v7 << 8);
  LODWORD(STACK[0xED0]) = v1 ^ (2 * ((v9 << 16) & 0x4AF10000 ^ v9 ^ ((v9 << 16) ^ 0x23F80000) & (((v8 ^ 0x40E18078) << 8) & 0x4AF10000 ^ 0xA500000 ^ (((v8 ^ 0x40E18078) << 8) ^ 0x71A30000) & (v8 ^ 0x40E18078)))) ^ 0xDE09B954;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_10060341C@<X0>(unsigned int a1@<W8>)
{
  STACK[0x4128] = v2;
  STACK[0x7D20] = ((v1 + 168105659) & 0xF5FAEBBF) + 0x6F6F2C6F0BC0D5EALL + (((a1 ^ 0xCB6721B4E83B476CLL) + 0x3498DE4B17C4B894) ^ ((a1 ^ 0x86733B8B66822017) + 0x798CC474997DDFE9) ^ ((((v1 - 32910) | 0x8309u) ^ 0xB2EBE5C09893D4ADLL) + (a1 ^ 0x4D141A3F676CA06ALL)));
  return (*(STACK[0xF18] + 8 * (v1 | (26 * ((((a1 ^ 0x259E3560) - 631125344) ^ ((a1 ^ 0x335AA598) - 861578648) ^ ((a1 ^ 0xFF1157E9) + 15640599)) - 371865880 > 0xFFFFFFD6)))))();
}

uint64_t sub_1006035B4()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + (v0 ^ 0x11E4) - 1807)))();
}

uint64_t sub_1006035FC()
{
  v5 = v1 < v2;
  if (v5 == v4 + 903429623 < v2)
  {
    v5 = v4 + 903429623 < v1;
  }

  return (*(STACK[0xF18] + 8 * ((v5 * v3) ^ v0)))();
}

uint64_t sub_100603BF0()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 3846) | 0xE5) ^ 0x1908) + v0)))();
}

uint64_t sub_100603C3C()
{
  v2 = (v1 + 371868915) | 1;
  v3 = STACK[0x34E8];
  v4 = 1012831759 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x70F0E458) - 252648357) ^ 0xE063F2D1);
  LODWORD(STACK[0x10EE4]) = (v2 + 11412) ^ v4;
  LODWORD(STACK[0x10EE0]) = v4 ^ 0xD1377A90;
  STACK[0x10ED8] = v3;
  v5 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v2 + 49292)))(&STACK[0x10ED8]);
  v6 = STACK[0x53F0];
  v7 = 297845113 * ((((&STACK[0x10ED8] | 0x55BE760) ^ 0xFFFFFFFE) - (~&STACK[0x10ED8] | 0xFAA4189F)) ^ 0x8D970401);
  LODWORD(STACK[0x10EE0]) = 1559216456 - v7;
  STACK[0x10ED8] = v3;
  STACK[0x10EE8] = v6 + 23;
  LODWORD(STACK[0x10EF0]) = v2 - v7 + 41864;
  STACK[0x10EF8] = v0;
  v8 = (*(v5 + 8 * (v2 ^ 0xC676)))(&STACK[0x10ED8]);
  v9 = STACK[0x10EF4];
  LODWORD(STACK[0x4204]) = STACK[0x10EF4];
  return (*(v5 + 8 * ((27804 * (v9 == (((v2 ^ 0x873E) - 21589) ^ 0xE9D5F1F7))) ^ v2)))(v8);
}

uint64_t sub_100603ED8()
{
  v0 = STACK[0xF10];
  v1 = LODWORD(STACK[0xA31C]) + LODWORD(STACK[0x6654]);
  LODWORD(STACK[0xA320]) = v1;
  *(STACK[0x4D80] + (v1 - 636593762)) = 8;
  return (*(STACK[0xF18] + 8 * (v0 - 24956)))();
}

uint64_t sub_100603FA8@<X0>(uint64_t a1@<X8>)
{
  v14 = *(STACK[0xF18] + 8 * v9);
  v15 = STACK[0xE50];
  v16 = (a1 + (v11 + v1));
  v17 = ((*(*STACK[0xE50] + (*v13 & v2)) ^ v16) & 0x7FFFFFFF) * v3;
  v18 = (v17 ^ HIWORD(v17)) * v3;
  *v16 = v12 ^ *(STACK[0x860] + (v18 >> 24)) ^ *(STACK[0x868] + (v18 >> 24)) ^ *((v18 >> 24) + STACK[0x870] + 5) ^ v18 ^ (BYTE3(v18) * v4) ^ v5;
  v19 = (a1 + (v11 + v6));
  LODWORD(v16) = ((*(*v15 + (*v13 & v2)) ^ v19) & 0x7FFFFFFF) * v3;
  v20 = (v16 ^ (v16 >> 16)) * v3;
  *v19 = v10 ^ *(STACK[0x958] + (v20 >> 24)) ^ *(STACK[0x960] + (v20 >> 24)) ^ *((v20 >> 24) + STACK[0x968] + 1) ^ v20 ^ (BYTE3(v20) * v7) ^ v8;
  return v14();
}

uint64_t sub_100604094()
{
  STACK[0x7288] = STACK[0x14C0] + 8;
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 21433 + ((v0 + 434168654) & 0x61F7FFD))))();
}

uint64_t sub_1006040EC()
{
  v6 = ((2 * v5) & 0x17F7ED7B0) + (v5 ^ 0xFFDEAFCBFBF6BD8) - 0xFFDEAFC4040B079;
  v7 = (((v0 ^ 0x403E6E91F492C282) - 0x403E6E91F492C282) ^ ((v0 ^ 0x21DC8796534D8373) - 0x21DC8796534D8373) ^ ((v0 ^ 0x61E2E9074E0A86E0) - 0x61E2E9074E0AB386 + ((v4 + 578835204) & 0xDD7FACEF))) + 0x16954825CLL;
  v8 = (v6 < 0x7F7EBB4B) ^ (v7 < 0x7F7EBB4B);
  v9 = v6 > v7;
  if (v8)
  {
    v9 = v6 < 0x7F7EBB4B;
  }

  if (v9)
  {
    v10 = v1;
  }

  else
  {
    v10 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((6298 * (v10 == v2)) ^ v4)))();
}

uint64_t sub_100604234@<X0>(int a1@<W8>)
{
  v2 = (2 * (a1 - 34415)) ^ 0x541C;
  LODWORD(STACK[0xED0]) = v2;
  return (*(STACK[0xF18] + 8 * (((v2 + 20627) * (v1 == 2045206471)) ^ (a1 - 34415))))();
}

uint64_t sub_100604278()
{
  v0 = STACK[0xF10] - 20086;
  STACK[0x2AA8] = &STACK[0x8028];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1006042AC()
{
  v2 = STACK[0xF10] ^ 0xE7EB;
  v3 = STACK[0xF10] - 32816;
  LODWORD(STACK[0x5AE4]) = v0;
  v4 = (((v1 ^ 0xF8FF1114) + 701615118) ^ ((v1 ^ 0x632455D3) - 1307932469) ^ ((v1 ^ 0x5CDFA130) - 1913553878)) + 885731368;
  v5 = (((LODWORD(STACK[0xAC94]) ^ (v2 - 1044237857)) + 1044210001) ^ ((LODWORD(STACK[0xAC94]) ^ 0xAB1F04AA) + 1424030550) ^ ((LODWORD(STACK[0xAC94]) ^ 0x83085D14) + 2096603884)) + 885731368;
  v6 = (v4 < 0x4AF56917) ^ (v5 < 0x4AF56917);
  v7 = v4 < v5;
  if (v6)
  {
    v7 = v5 < 0x4AF56917;
  }

  return (*(STACK[0xF18] + 8 * ((33088 * v7) ^ v3)))();
}

uint64_t sub_100604568@<X0>(uint64_t a1@<X8>)
{
  *v1 = STACK[0xD18];
  v3 = STACK[0x9D0];
  v1[1] = *(STACK[0x9D0] + 80);
  *(v3 + 80) = a1;
  *(v1[1] + 24) = a1;
  *(v1 - 2) = 9829 * (v2 ^ 0x28E7u) - *(v1 - 2) + 0x79C4BC1D8A3F46F7;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_100604620()
{
  v0 = STACK[0xF10] ^ 0x8C37;
  v1 = STACK[0xF10] - 1200;
  v2 = STACK[0x9A8C];
  LODWORD(STACK[0x9A94]) = LODWORD(STACK[0x9A8C]) + 1483322472;
  v2 -= 1868906419;
  v3 = (((LODWORD(STACK[0x93CC]) ^ 0x1BF3734C) - 468939596) ^ ((LODWORD(STACK[0x93CC]) ^ 0x2C842348) - 746857288) ^ ((LODWORD(STACK[0x93CC]) ^ 0xDEA29715) + (v0 ^ 0x215D6FE7))) + 2054194766;
  v4 = v2 < 0x909ABF3D;
  v5 = v2 > v3;
  if (v4 != v3 < 0x909ABF3D)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((19 * v5) ^ v1)))();
}

uint64_t sub_100604750()
{
  v2 = STACK[0x5E10];
  STACK[0x10EE0] = *(v0 + 136);
  STACK[0x10EE8] = &STACK[0x6D8C];
  STACK[0x10EF8] = v2;
  LODWORD(STACK[0x10EF0]) = v1 - 139493411 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x733867F0) + 1933076465) ^ 0x7F1586B4) + 15005;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 37793)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (((*(v0 + 264) != 0) * ((v1 + 21612) ^ (v1 + 21451))) ^ v1)))(v4);
}

uint64_t sub_100604910(uint64_t a1, uint64_t a2)
{
  v7 = v3 - 1;
  *(v4 + v7) = *(v5 + v7) ^ *(v6 + (v7 & 0xF)) ^ *((v7 & 0xF) + a1 + 3) ^ *((v7 & 0xF) + a2 + 2) ^ ((v7 & 0xF) * (-23 * (v2 ^ 8) - 119)) ^ 0x5F;
  return (*(STACK[0xF18] + 8 * (v2 ^ 0x5386 ^ (47 * (((v7 - v2) | (v2 - v7)) >> 63)))))();
}

uint64_t sub_100604994()
{
  v2 = (((v0 + 2055139736) & 0x8580FB3D) + 0x10A99C80114C8C73) ^ *(v1 - 0x43D8CBFA0CEB427CLL);
  STACK[0x9698] = v2;
  return (*(STACK[0xF18] + 8 * (((v2 == 0x10A99C80114D1487) * ((11881 * (v0 ^ 0x9B3D)) ^ 0x8B9D)) ^ v0)))();
}

uint64_t sub_100604A30()
{
  v2 = (v1 - 37950) | 0x1801;
  *(v0 + 168) = 801182935;
  *(v0 + 8) |= ((v2 + 17594) | 0xB28) ^ 0x4008B3B;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_100604A84()
{
  v0 = STACK[0xF10] - 9155;
  v1 = STACK[0xF10] - 34502;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x139E ^ (14361 * ((v0 ^ 0x47D9073u) + v1 < 0x18ECAD9)))))();
}

uint64_t sub_100604B14()
{
  v3 = STACK[0xF18];
  STACK[0x6040] = *(STACK[0xF18] + 8 * v1);
  STACK[0x8EB8] = v2;
  STACK[0x7690] += 32;
  return (*(v3 + 8 * ((100 * ((((v0 - 33667) ^ (v2 == 0x10A99C80114D1487)) & 1) == 0)) ^ (v0 - 21118))))();
}

uint64_t sub_100604C38()
{
  v1 = STACK[0x7290];
  v2 = STACK[0x9C40];
  v3 = STACK[0x6298];
  LODWORD(STACK[0xED0]) = 106;
  LOBYTE(STACK[0x1AF3]) = 106;
  STACK[0x6920] = v1;
  LODWORD(STACK[0x7850]) = -371865824;
  STACK[0x3930] = STACK[0x640];
  STACK[0x2A60] = v2;
  STACK[0x85E8] = v3;
  LODWORD(STACK[0x4874]) = -371865855;
  LODWORD(STACK[0x726C]) = -187458880;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x7849CC2D ^ (30536 * (v0 >= ((v0 - 2018103320) ^ 0xD4F79394))))))();
}

uint64_t sub_100604CF0@<X0>(int a1@<W1>, int a2@<W8>)
{
  v4 = (((v3 ^ 0xD0D1B8E4) + 791562012) ^ ((v3 ^ 0x6D4B17BD) - 1833637821) ^ (((38 * (v2 ^ 0x5102) + 1414468828) ^ v3) - 1414490184)) + 1070149365;
  v5 = ((a1 + 1442015205) < 0x55F367E4) ^ (v4 < 0x55F367E4);
  v6 = a1 + 1442015205 > v4;
  if (v5)
  {
    v6 = (a1 + 1442015205) < 0x55F367E4;
  }

  if (v6)
  {
    v7 = 371891407;
  }

  else
  {
    v7 = a2;
  }

  return (*(STACK[0xF18] + 8 * ((92 * (v7 != -371865839)) ^ v2)))();
}

uint64_t sub_100604DE0()
{
  v1 = STACK[0xF18];
  STACK[0x7308] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 ^ 0x7FC7) - 3949) ^ v0)))();
}

uint64_t sub_100604EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = (((LODWORD(STACK[0x36FC]) ^ 0x16744F9E52478EDELL) - 0x16744F9E52478EDELL) ^ ((LODWORD(STACK[0x36FC]) ^ 0xA6AA9FC5248A7266) + 0x5955603ADB758D9ALL) ^ (((a8 + 2398) ^ 0x759Du ^ LODWORD(STACK[0x36FC]) ^ 0xB0DED05B9F1850A1) + 0x4F212FA460E7C457)) + 0x287E22A9038B80E3;
  LODWORD(STACK[0x705C]) = STACK[0x17D8];
  STACK[0x3CC8] = v8;
  LODWORD(STACK[0x2D84]) = 7;
  LOBYTE(STACK[0x3FCF]) = 96;
  LODWORD(STACK[0x4078]) = 503691601;
  return (*(STACK[0xF18] + 8 * (a8 + 2398)))();
}

uint64_t sub_100604F9C()
{
  v0 = STACK[0xF10] - 12135;
  LODWORD(STACK[0x3E80]) += 4;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10060518C@<X0>(int a1@<W8>)
{
  v1 = a1 - 6983;
  v2 = *(STACK[0x26A8] + (-(&STACK[0x7000] + 760) & 8));
  v3 = ((v2 - ((2 * v2) & 0xELL) + 178) << (73 * (v1 ^ 0xB9u) - 87)) - 0x2B00000000000000;
  v4 = ((v2 - ((2 * v2) & 0x184) + 3795) << 48) - 0x11000000000000;
  LODWORD(v2) = *(STACK[0x720] - 830459327);
  *(STACK[0x720] - 830459327) = v2 + 1;
  v5 = v4 & 0xDE2000000000000 ^ 0x9E39DC42BB124E45 ^ (v4 ^ 0xF11D54BCFA669E44) & (v3 ^ 0xB51D54BCFA669E44);
  LODWORD(v3) = (((v2 + 16) ^ v2 ^ ((v2 ^ 0x22) + 46)) ^ (((v2 ^ 0x25) + 43) ^ ((v2 ^ 0xF7) + 57))) & 0x3F ^ 0x30;
  v6 = 8 * v3;
  v7 = (STACK[0x718] + v6);
  v8 = v6 + STACK[0x728] - 296;
  if (v3 <= 0x24)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  *v9 = v5;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100605328()
{
  v1 = *STACK[0x6DA0];
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((((2 * &STACK[0x10ED8]) | 0xE545F8BE) - &STACK[0x10ED8] - 1923284063) ^ 0x9484E790) + 296764237;
  STACK[0x10ED8] = v1;
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0x9577)))(&STACK[0x10ED8]);
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762650158) ^ (906386353 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x59D3AF80) + 1507045248) ^ 0x68D262A4));
  v3 = (*(v2 + 8 * (v0 ^ 0x9504)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * (((*STACK[0x970] > 347 * (v0 ^ 0x5FAE) - 6593) * (v0 + 15125)) ^ v0)))(v3);
}

uint64_t sub_100605448@<X0>(int a1@<W8>)
{
  v1 = a1 - 26561;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 ^ 0x4192)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100605590()
{
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x8F48];
  STACK[0x5D28] = &STACK[0x3584];
  LODWORD(STACK[0x4704]) = -1154016560;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x6DF6)))();
}

uint64_t sub_100605630@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x3908]) = a1;
  STACK[0x7690] -= 16;
  LODWORD(STACK[0x773C]) = 1600085855;
  STACK[0xAD30] = &STACK[0x773C];
  if (STACK[0x5E20])
  {
    v2 = LODWORD(STACK[0x3650]) == ((2 * v1) ^ 0x16BF0) - 371897973;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  return (*(STACK[0xF18] + 8 * ((v1 - 5416) ^ (4 * v3))))();
}

uint64_t sub_1006056A8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xAE20] = (((v1 ^ 0x36E0A7165D027DB9) - 0x36E0A7165D027DB9) ^ ((v1 ^ 0xC682476D6F554913) + 0x397DB89290AAB6EDLL) ^ ((v1 ^ 0xF062E07BDB82F3BBLL) + 0xF9D1F84247D0C45)) + 0x5C3ED1F1E15D9E35;
  *(a1 + 16) = (((v1 ^ 0x5EFDA4A2) - 1593681058) ^ ((v1 ^ 0x6A28F408) - 1781068808) ^ (((3 * (v2 ^ 0x85BC) - 587199360) ^ v1) + 587163717)) - 371865829;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 + 7875)))();
  *(a1 + 24) = v5;
  return (*(v4 + 8 * ((46 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_10060588C()
{
  v2 = (((v1 ^ 0x3EABB3E9781416A7) - 0x3EABB3E9781416A7) ^ ((v1 ^ 0xEA9008028D68A3E5) + 0x156FF7FD72975C1BLL) ^ ((v0 ^ 0x18D3u) + (v1 ^ 0xDFB1E6BD462229ADLL) + 0x204E1942B9DD426BLL)) + 0xB8A5D56F6DCD25DLL;
  v3 = (((LODWORD(STACK[0x93CC]) ^ 0xC852E158F8E228CELL) + 0x37AD1EA7071DD732) ^ ((LODWORD(STACK[0x93CC]) ^ 0x6D5B3C04E8DA33B2) - 0x6D5B3C04E8DA33B2) ^ ((LODWORD(STACK[0x93CC]) ^ 0xA509DD5CF9EDDC6DLL) + 0x5AF622A306122393)) + 0x12D53FC7FLL;
  v4 = v3 < 0x437E356E;
  v5 = v2 < v3;
  if (v2 < 0x437E356E != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((7349 * v5) ^ (v0 - 16611))))();
}

uint64_t sub_100605A1C()
{
  v1 = STACK[0x6230] + 32 * STACK[0x58F0] + 0x108A6F29A65F97E0;
  *(v1 + 8) = STACK[0x57A8];
  *(v1 + 24) = STACK[0x4420];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100605A78()
{
  v1 = STACK[0x90D8];
  STACK[0x2A50] = STACK[0x90D8];
  *v1 = STACK[0x41C8];
  *(v1 + 8) = 0x981390C2FED9246;
  v2 = STACK[0xF18];
  STACK[0x5CF8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * ((6173 * (v0 + 2075157689 <= (v0 - 878458346))) ^ (v0 - 335))))();
}

uint64_t sub_100605CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x498] = v7;
  STACK[0x4A0] = v6;
  v8 = STACK[0xC20];
  v9 = LODWORD(STACK[0xC20]) ^ 0xC6;
  LODWORD(STACK[0xD40]) = *(*STACK[0xE50] + ((v9 + 2105932176) & *STACK[0xE58]));
  v10 = *(STACK[0xF18] + 8 * v8);
  STACK[0xE70] = 0xF76C48E1F3D10433;
  STACK[0xE80] = 0x195DAA9198CB5878;
  LODWORD(STACK[0xD50]) = v9;
  LODWORD(STACK[0xC20]) = v8 ^ 0xF354;
  LODWORD(STACK[0xD30]) = (v8 ^ 0xF354) - 88455248;
  return v10(a1, 1337, a3, a4, 1985411458, a6, 117670337);
}

uint64_t sub_100606178(int a1, int a2, unsigned int a3, int a4, unsigned int a5, uint64_t a6, int a7, int a8)
{
  v15 = *(v14 + ((((v11 - ((2 * v11) & 0xD4) + 106) ^ LODWORD(STACK[0xEB0])) * v10) & 0x1FF ^ 0x100));
  v16 = v15 & 0x44 ^ 0x4B;
  v17 = (v15 ^ (2 * ((v15 ^ 0x36) & (2 * ((v15 ^ 0x36) & (2 * ((v15 ^ 0x36) & (2 * ((v15 ^ 0x36) & (2 * ((v15 ^ 0x36) & (2 * ((v15 ^ 0x36) & 0x32 ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ 0xDE;
  *(v9 + (*(v13 + 4 * (a2 + ((v11 + 2560) ^ v12) * a1 - ((((a2 + ((v11 + 2560) ^ v12) * a1) * a5) >> 32) >> 13) * a7)) ^ 0x8B6B2AE6) + 8464) = *(v8 + 2705 * v17 + 2088260 - ((((2705 * v17 + 2088260) * a3) >> 32) >> 1) * a4) ^ 0x18;
  v18 = a8 + 14 + v11 == 28279;
  return (*(STACK[0xF18] + 8 * (((2 * v18) | (16 * v18)) ^ a8)))();
}

uint64_t sub_1006062D8()
{
  STACK[0x4A28] = *STACK[0x1258];
  LODWORD(STACK[0x46C4]) = -1868306933;
  STACK[0x2608] = &STACK[0x318C];
  LODWORD(STACK[0x40AC]) = 252924561;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1006063E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = (STACK[0xF10] - 860852640) & 0x334FBEEF;
  LODWORD(STACK[0xA564]) = STACK[0x98D4];
  v5 = 0x9FC % (LODWORD(STACK[0xA568]) ^ 0xA1513843) - ((2 * (0x9FC % (LODWORD(STACK[0xA568]) ^ 0xA1513843))) & 0x10E4) + 902240370;
  return (*(STACK[0xF18] + 8 * (v3 - 29445)))(a1, a2, a3, v4, (((v5 ^ (v4 + 181687665)) - 181734908) ^ ((v5 ^ 0x868394CA) + 2038197046) ^ ((v5 ^ 0xB9918144) + 1181646524)) + 1980082877);
}

uint64_t sub_100606580()
{
  v3 = *(v2 + v0);
  v4 = STACK[0x7ACC];
  v5 = 1012831759 * ((&STACK[0x10000] + 3800) ^ 0x1093168A);
  STACK[0x10EF8] = STACK[0x4628];
  LODWORD(STACK[0x10ED8]) = (v1 - 21619) ^ v5;
  STACK[0x10EE8] = &STACK[0x5800];
  STACK[0x10EE0] = v3;
  LODWORD(STACK[0x10EF0]) = v4 - v5;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4CC0)))(&STACK[0x10ED8]);
  v8 = STACK[0x10F00];
  LODWORD(STACK[0x827C]) = STACK[0x10F00];
  return (*(v6 + 8 * ((58 * (v8 != ((v1 + 13023) ^ 0xA1C1) - 371872922)) ^ v1)))(v7);
}

uint64_t sub_1006066D8()
{
  v1 = STACK[0x80B0];
  v2 = STACK[0x9208];
  v1[74] = *STACK[0x9208] ^ 0x76;
  v1 += 74;
  v1[1] = v2[1] ^ 0xC8;
  v1[2] = v2[2] ^ 0x5B;
  v1[3] = v2[3] ^ 0xC2;
  v1[4] = v2[4] ^ 0x95;
  v1[5] = v2[5] ^ 0xD;
  v1[6] = v2[6] ^ (((v0 - 91) & 0x39) - 74);
  v1[7] = v2[7] ^ 0xC7;
  v1[8] = v2[8] ^ 0x8F;
  v1[9] = v2[9] ^ 0x37;
  v1[10] = v2[10] ^ 0x33;
  v1[11] = v2[11] ^ 0xB2;
  v1[12] = v2[12] ^ 0x56;
  v1[13] = v2[13] ^ 3;
  v1[14] = v2[14] ^ 0x90;
  v1[15] = v2[15] ^ 0xB3;
  v3 = STACK[0x36D0];
  v4 = STACK[0x4128];
  v5 = 1112314453 * ((~(&STACK[0x10000] + 3800) & 0x44B24602 | (&STACK[0x10000] + 3800) & 0xBB4DB9F8) ^ 0xABE46CDB);
  LODWORD(STACK[0x10EF0]) = v5 + 1599993265 * (((LODWORD(STACK[0x4ADC]) ^ 0xE57B4DB4) + 444904012) ^ ((LODWORD(STACK[0x4ADC]) ^ 0x94C339F6) + 1799144970) ^ ((LODWORD(STACK[0x4ADC]) ^ 0x986DB353) + 1737641133)) - 1152241234;
  LODWORD(STACK[0x10EDC]) = (v0 + 679153197) ^ v5;
  STACK[0x10EF8] = v3;
  LOWORD(STACK[0x10ED8]) = -28075 * ((~(&STACK[0x10000] + 3800) & 0x4602 | (&STACK[0x10000] + 3800) & 0xB9F8) ^ 0x6CDB) + 3771;
  STACK[0x10EE8] = v4;
  STACK[0x10EE0] = v1;
  v6 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0x54C2)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * v0))(1474984212, 122);
}

uint64_t sub_100606A3C@<X0>(uint64_t a1@<X8>)
{
  v6 = (16413 * (v4 ^ 0x5818) + ((v4 + 490166053) & 0xE2C8DBFB) - 391147548 + (*(a1 + v3 * v1 + 24) ^ 0x174F64A7)) ^ ((*(a1 + v3 * v1 + 24) ^ 0x84D14B9E) + 2066658402) ^ ((*(a1 + v3 * v1 + 24) ^ 0x7A4BE828) - 2051794984);
  v7 = __CFADD__(v2, v5);
  v8 = v6 + 1006306257;
  v9 = v8 < v5;
  v10 = v2 + v5 < v8;
  if (v7 != v9)
  {
    v10 = v9;
  }

  return (*(STACK[0xF18] + 8 * (v4 | (4 * v10))))();
}

uint64_t sub_100606B9C()
{
  v2 = STACK[0xB008];
  v3 = 1603510583 * ((((&STACK[0x10000] + 3800) | 0x7B6E5556) - ((&STACK[0x10000] + 3800) | 0x8491AAA9) - 2070828375) ^ 0xECB567FD);
  STACK[0x10EE0] = STACK[0xB018];
  STACK[0x10EE8] = v2;
  LODWORD(STACK[0x10EDC]) = (v1 ^ 0xC704E5F7) + v3;
  LODWORD(STACK[0x10EF0]) = v0 - v3 - 6212;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 11053)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (((LODWORD(STACK[0x10ED8]) == 0) * (((v0 - 916894577) & 0xFEFFD7FF) + 933640897)) ^ v0)))(v5);
}

uint64_t sub_100606C7C()
{
  v1 = STACK[0x2D78];
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = v1 + 8;
  STACK[0x5D28] = v1;
  LODWORD(STACK[0x4704]) = 166006357;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100606D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0xDB0] = v9;
  LODWORD(STACK[0xD40]) = v10;
  *STACK[0xE60] = xmmword_100F52B90;
  STACK[0xE70] = v8;
  *(v8 + 4112) = xmmword_100F52BA0;
  return (*(STACK[0xF18] + 8 * v7))((v7 - 14199), a2, a3, a4, a5, a6, a7, 4294931232);
}

uint64_t sub_100606D94@<X0>(int a1@<W8>)
{
  v1 = a1 - 21500;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 ^ 0x4192u)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100606DC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 12) = -371865839;
  if (*(v2 + 416) == -2109658874)
  {
    v5 = -371865839;
  }

  else
  {
    v5 = -371865855;
  }

  *(a2 + 12) = v5;
  v6 = *v4 >> 2;
  v7 = *(*a1 + 4 * ((0xB61C4703 % v6) & 0x3FFFFFFC));
  LOWORD(v6) = ~*(*a1 + 4 * ((((v3 + 13508) & 0xFD17u) + v6 + 17128) & v7)) & ~HIWORD(v7);
  v8 = STACK[0x8B0];
  v9 = *(STACK[0x8B0] - 527405895);
  v10 = *(STACK[0x8B8] + 4 * v9);
  v6 = v6;
  v11 = v6 == 0;
  v12 = v6 + v6 * v10;
  if (v11)
  {
    v13 = *(STACK[0x8B8] + 4 * v9);
  }

  else
  {
    v13 = 0;
  }

  *(STACK[0x8B8] + 4 * v9) = (v13 + v12) * v10;
  *(v8 - 527405895) = (v9 + 1) % 6u;
  v14 = STACK[0x73D0];
  v15 = STACK[0x59F8];
  v15[10] = *(STACK[0x73D0] + 80);
  v15[11] = *(v14 + 88);
  v15[12] = *(v14 + 96);
  return (*(STACK[0xF18] + 8 * (v3 - 3528)))();
}

uint64_t sub_100607168()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x17DB ^ (1582 * ((((v0 - 124) | 0x104D) ^ 0x6C1FE66F | v0) < 0x8CE6157E)))))();
}

uint64_t sub_1006071F8@<X0>(int a1@<W8>)
{
  v2 = STACK[0x16F4];
  STACK[0x4F90] = v1;
  LODWORD(STACK[0x22E8]) = v2;
  LODWORD(STACK[0x35EC]) = 1693393318;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100607228@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  v2 = *(v1 + 8 * ((((*(STACK[0xF18] + 8 * (a1 + 16221)))(48) == 0) * ((a1 - 27427) ^ 0x6E94 ^ ((a1 - 27427) | 0xD02) ^ 0x63F1)) ^ (a1 - 16808)));
  return v2();
}

uint64_t sub_100607294@<X0>(int a1@<W8>)
{
  v1 = a1 - 5305;
  v2 = 109 * ((a1 - 5305) ^ 0x77C5);
  STACK[0x6EB8] = 0;
  LODWORD(STACK[0x8584]) = -371865839;
  LODWORD(STACK[0x10ED8]) = (a1 - 1762661292) ^ (906386353 * ((2 * ((&STACK[0x10000] + 3800) & 0x35284560) - (&STACK[0x10000] + 3800) - 891831652) ^ 0xFBD677B8));
  STACK[0x10EE0] = 0;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * ((a1 - 5305) ^ 0xBC3B)))(&STACK[0x10ED8]);
  v6 = *STACK[0x970] != v2 - 35643 || *STACK[0x940] == 0;
  return (*(v3 + 8 * ((7 * ((v2 ^ v6) & 1)) ^ v1)))(v4);
}

uint64_t sub_100607428()
{
  v1 = STACK[0xF18];
  STACK[0x5F38] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x6B67 ^ ((v0 + 5570) | 0x1200))))();
}

uint64_t sub_100607464()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 28277;
  v3 = STACK[0xF10] - 22550;
  STACK[0x10EE8] = STACK[0xB8E8];
  LODWORD(STACK[0x10ED8]) = v3 ^ (906386353 * ((((2 * (&STACK[0x10000] + 3800)) | 0x49579886) - (&STACK[0x10000] + 3800) - 615238723) ^ 0x15AA0167));
  LOWORD(STACK[0x10EE0]) = 23473 * ((((2 * (&STACK[0x10000] + 3800)) | 0x9886) - (&STACK[0x10000] + 3800) + 13245) ^ 0x167) + 18080;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 16246)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (((LODWORD(STACK[0x10EDC]) != v0) * (v1 ^ 0x8B10)) ^ v2)))(v5);
}

uint64_t sub_100607524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 30181;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x53B8];
  STACK[0x5D28] = &STACK[0x7B34];
  LODWORD(STACK[0x4704]) = -1574452936;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_1006075C0()
{
  STACK[0x10EE0] = *(v1 + 336);
  LODWORD(STACK[0x10ED8]) = v0 + 1022166737 * (((~&STACK[0x10ED8] & 0x3C5687CC) - (~&STACK[0x10ED8] | 0x3C5687CD)) ^ 0x8646665F) + 1639596071;
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 1639603819)))(&STACK[0x10ED8]);
  v3 = *(v1 + 8);
  STACK[0x55B0] = v1 + 8;
  LODWORD(STACK[0x10ED8]) = (v0 - 123073806) ^ (906386353 * (((&STACK[0x10ED8] | 0x7E5E92F3) - (&STACK[0x10ED8] | 0x81A16D0C) - 2120127220) ^ 0x4F5F5FD7));
  STACK[0x10EE0] = v3;
  v4 = (*(v2 + 8 * (v0 + 1639603740)))(&STACK[0x10ED8]);
  STACK[0x3518] = v1;
  LODWORD(STACK[0x5200]) = 2;
  LODWORD(STACK[0x6404]) = -1460406952;
  return (*(v2 + 8 * ((9788 * (v0 != (v0 ^ 0x9E46E22A) - 604053986)) ^ (v0 + 1639551906))))(v4);
}

uint64_t sub_10060771C@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 + 1646)))();
}

uint64_t sub_100607934@<X0>(uint64_t a1@<X2>, unsigned int a2@<W8>)
{
  v3 = a2;
  v4 = a2 + a1;
  if (v4 <= 0x40)
  {
    v4 = 64;
  }

  return (*(STACK[0xF18] + 8 * ((1013 * (v4 - v3 + 1740454279 < (v2 - 16439) - 19188)) ^ (v2 - 25924))))();
}

uint64_t sub_100607994@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x898C]) = a1;
  LODWORD(STACK[0x3D4C]) = v1;
  v3 = STACK[0xF18];
  STACK[0x1500] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * (v2 ^ 0x7C05 ^ (5051 * (v2 ^ 0x118A)))))();
}

uint64_t sub_100607BE8()
{
  v1 = v0 ^ 0x1905;
  v2 = ((v0 ^ 0x1905) - 5461) | 0x220;
  v3 = (v0 ^ 0x1905) - 4917;
  LODWORD(STACK[0x10ED8]) = ((v0 ^ 0x1905) - 1762666209) ^ (906386353 * ((((2 * (&STACK[0x10000] + 3800)) | 0xA88537FE) - (&STACK[0x10000] + 3800) + 733832193) ^ 0xE54356DB));
  STACK[0x10EE0] = 0;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * ((v0 ^ 0x1905) + 11337)))(&STACK[0x10ED8]);
  if (*STACK[0x970])
  {
    v6 = 1;
  }

  else
  {
    v6 = *STACK[0x940] == 0;
  }

  v7 = v6;
  return (*(v4 + 8 * ((v7 * (v3 ^ 0xB ^ v2)) | v1)))(v5);
}

uint64_t sub_100607D10()
{
  STACK[0x9D40] = (((v0 + 21649) ^ 0x1EFB7DCA6) & (2 * v1)) + (v1 ^ 0x33FFDFDBF7DBDFBFLL) - 0x23058440D0090904;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x194C)))();
}

uint64_t sub_100607EA0@<X0>(char a1@<W8>)
{
  v3 = (((a1 & 0x1F ^ 0x251B0E83) + 1477379500) ^ ((a1 & 0x1F ^ 0x459EBFDF) + 948614392) ^ ((a1 & 0x1F ^ 0x6085B15C) + 496089717)) - 388254101;
  v4 = (v3 ^ 0x59803F49) & (2 * (v3 & 0x6C)) ^ v3 & 0x6C;
  v5 = ((2 * (v3 ^ 0x49807389)) ^ 0xA7209BCA) & (v3 ^ 0x49807389) ^ (2 * (v3 ^ 0x49807389)) & 0x53904DE4;
  v6 = v5 ^ 0x50904425;
  v7 = (v5 ^ 0x1C0) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0x4E413794) & v6 ^ (4 * v6) & 0xD3904DE4;
  v9 = (v8 ^ 0x42000580) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x91904861)) ^ 0x3904DE50) & (v8 ^ 0x91904861) ^ (16 * (v8 ^ 0x91904861)) & 0xD3904DC0;
  v11 = v9 ^ 0xD3904DE5 ^ (v10 ^ 0x11004C00) & (v9 << 8);
  v12 = (v3 ^ (2 * ((v11 << 16) & 0x53900000 ^ v11 ^ ((v11 << 16) ^ 0x4DE50000) & (((v10 ^ 0xC29001A5) << 8) & 0x53900000 ^ 0x43900000 ^ (((v10 ^ 0xC29001A5) << 8) ^ 0x104D0000) & (v10 ^ 0xC29001A5)))) ^ 0xBE30A5A6) << (~((((v2 + 9) | 0x32) ^ 0x24) & v1 ^ (((v2 + 65) | 0x18) + 38)) & 0xB) << (~((((v2 + 9) | 0x32) ^ 0x24) & v1 ^ (((v2 + 65) | 0x18) + 38)) & 0x14);
  return (*(STACK[0xF18] + 8 * (v2 ^ 0x7959 ^ (64620 * ((((v12 - v2) | (v2 - v12)) & 0x80000000) == 0)))))();
}

uint64_t sub_1006080D4()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 480630092)))();
  return (*(v1 + 8 * (v0 ^ ((v0 + 480591805) | 0x4281) ^ 0xE35ADC2D ^ (51995 * (v0 > 0xDDBB15E2)))))(v2);
}

uint64_t sub_1006082C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x76D8]) = a7;
  STACK[0x9528] = STACK[0x6CD8];
  STACK[0x42E0] = &STACK[0x9528];
  return (*(STACK[0xF18] + 8 * v7))();
}

uint64_t sub_100608318@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x9558] = *(STACK[0xF18] + 8 * (a1 - 45933));
  return (*(v1 + 8 * ((1157 * ((a1 - 45933) ^ 0x9B1) + 5157) ^ (a1 - 45933))))();
}

uint64_t sub_1006083AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = (a6 + 9845) % 0x5Eu;
  HIDWORD(v10) = *(v7 + 4 * ((a6 - 95541700) % 0x5Eu));
  LODWORD(v10) = HIDWORD(v10);
  v9 = v10 >> 27;
  v11 = *(v7 + 4 * v8) ^ __ROR4__(*(v7 + 4 * ((a6 - 95541656) % 0x5Eu)), 29);
  HIDWORD(v10) = *(v7 + 4 * ((a6 - 95541798) % 0x5Eu));
  LODWORD(v10) = HIDWORD(v10);
  v12 = (((v11 ^ 0x95B9D6DA) + 243645571) ^ ((v11 ^ 0x950D0DE3) + 238118844) ^ ((v11 ^ 0x86250EA1) + 488203514)) + (((v9 ^ 0x918ED5CE) + ((v6 + 1327910054) & 0xB0D9FFBF ^ 0x70A30F2C)) ^ ((v9 ^ 0x99CF6545) + 2028126236) ^ ((v9 ^ 0xCA4612AD) + 728479732)) - ((((v10 >> 9) ^ 0x51F854B0) - 1141808265) ^ (((v10 >> 9) ^ 0x8FE984F) - 487084150) ^ (((v10 >> 9) ^ 0xD19DC4E1) + 999617320)) + 785531515;
  v13 = ((2 * (v12 ^ 0xAB91BC86)) ^ 0xB2F31544) & (v12 ^ 0xAB91BC86) ^ (2 * (v12 ^ 0xAB91BC86)) & 0x59798AA2;
  v14 = (v12 ^ 0xEAC1B486) & (2 * (v12 & 0xF2E83624)) ^ v12 & 0xF2E83624;
  v15 = ((4 * (v13 ^ 0x49088AA2)) ^ 0x65E62A88) & (v13 ^ 0x49088AA2) ^ (4 * (v13 ^ 0x49088AA2)) & 0x59798AA0;
  v16 = (v15 ^ 0x41600A80) & (16 * ((v13 ^ 0x10610000) & (4 * v14) ^ v14)) ^ (v13 ^ 0x10610000) & (4 * v14) ^ v14;
  v17 = ((16 * (v15 ^ 0x18198022)) ^ 0x9798AA20) & (v15 ^ 0x18198022) ^ (16 * (v15 ^ 0x18198022)) & 0x59798AA0;
  v18 = v16 ^ 0x59798AA2 ^ (v17 ^ 0x11188A00) & (v16 << 8);
  *(v7 + 4 * v8) = v12 ^ (2 * ((v18 << 16) & 0x59790000 ^ v18 ^ ((v18 << 16) ^ 0xAA20000) & (((v17 ^ 0x48610082) << 8) & 0x59790000 ^ 0x710000 ^ (((v17 ^ 0x48610082) << 8) ^ 0x798A0000) & (v17 ^ 0x48610082)))) ^ 0x664B1E71;
  return (*(STACK[0xF18] + 8 * ((35027 * (a6 == 95542018)) ^ v6)))();
}

uint64_t sub_1006087B4@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = *(STACK[0xF18] + 8 * v15);
  v19 = v9 + a9;
  *(v19 - 0x4824DB9D186FE1C2) = HIBYTE(v10) ^ 0x3D;
  *(v19 + v12) = (BYTE6(v10) ^ v11) - ((2 * (BYTE6(v10) ^ v11)) & 0xBF) + 95;
  *(v19 + v14) = (BYTE5(v10) ^ v13) - ((2 * (BYTE5(v10) ^ v13)) & 0xBF) + 95;
  *(v19 + a2) = (BYTE4(v10) ^ a1) - ((2 * (BYTE4(v10) ^ a1)) & 0xBF) + 95;
  *(v19 + a4) = (BYTE3(v10) ^ a3) - ((2 * (BYTE3(v10) ^ a3)) & 0xBF) + 95;
  *(v19 + a6) = (BYTE2(v10) ^ a5) - ((2 * (BYTE2(v10) ^ a5)) & 0xBF) + 95;
  *(v19 + a8) = (BYTE1(v10) ^ a7) - ((2 * (BYTE1(v10) ^ a7)) & 0xBF) + 95;
  *(v19 + v17) = v10 ^ v16;
  return v18();
}

uint64_t sub_100608978@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v10 = v3 - 1;
  *(a1 + v10) = *(v6 + v10) ^ *(v9 + (v10 & 0xF)) ^ *(v8 + (v10 & 0xF)) ^ ((v10 & 0xF) * v2) ^ *(v7 + (v10 & 0xF)) ^ v4;
  return (*(STACK[0xF18] + 8 * (((v10 == 0) * v5) ^ a2)))();
}

uint64_t sub_1006089C8()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x11CB)))();
}

uint64_t sub_100608B64()
{
  v0 = (STACK[0xF10] - 904257628) & 0x35E5F7EC;
  v1 = STACK[0xF10] - 31755;
  v2 = STACK[0xF18];
  STACK[0x4CD0] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0xA8F5) + v1)))();
}

uint64_t sub_100608C54()
{
  v1 = STACK[0xF18];
  STACK[0x5F38] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + v0 + 10177 + 3442)))();
}

uint64_t sub_100608CD4@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v12 = *(a6 + 8);
  v13 = *(a6 + 32);
  v14 = (v12 + (v8 - 1031075107) % v13);
  v15 = *v14;
  LODWORD(v14) = ((v14 ^ *(v6 + a1)) & 0x7FFFFFFF) * a2;
  v16 = (v14 ^ (v14 >> 16)) * (((19 * (a3 ^ 0x7E73) + 1811946934) & 0x93FFD7FC) + 1864593025);
  LOBYTE(v16) = *(v10 + (v16 >> 24)) ^ v15 ^ *((v16 >> 24) + a4 + 2) ^ *((v16 >> 24) + a5 + 7) ^ v16 ^ -BYTE3(v16);
  v17 = (2 * (v8 & 0x4C)) & 0x8F ^ v8 & 0x4C ^ ((2 * (v8 & 0x4C)) ^ 0x60162480) & (v8 ^ 0xA2B5AC27);
  v18 = (2 * (v8 ^ 0xA2B5AC27)) & 0x82EA ^ 0x8229 ^ ((2 * (v8 ^ 0xA2B5AC27)) ^ 0xA06B6956) & (v8 ^ 0xA2B5AC27);
  v19 = (4 * v17) & v11 ^ v17 ^ ((4 * v17) ^ 0x60162400) & v18;
  v20 = ((4 * v18) ^ 0xE0ECBFAC) & v18 ^ (4 * v18) & 0x603EA6E8;
  v21 = v20 ^ 0x60042443;
  v22 = (v20 ^ 0x3A82A3) & (16 * v19) ^ v19;
  v23 = ((16 * v21) ^ 0x3EA6EB0) & v21 ^ (16 * v21) & 0x603EA6E0;
  v24 = v22 ^ 0x603EA6EB ^ (v23 ^ 0x2A264B) & (v22 << 8);
  v25 = (4 * ((v24 << 16) & v9 ^ v24 ^ ((v24 << 16) ^ 0x26EB0000) & (((v23 ^ 0x6014804B) << 8) & v9 ^ (((v23 ^ 0x6014804B) << 8) ^ 0x3EA60000) & (v23 ^ 0x6014804B) ^ 0x180000))) ^ (2 * v8);
  v26 = (v12 + ((((v25 ^ 0x57DD987C) + 1553541626) ^ ((v25 ^ 0xCABC8AA1) - 1040696539) ^ ((v25 ^ 0x18259CE9) + 325135725)) + 1912586333) % v13);
  v27 = ((v26 ^ *(v6 + v7)) & 0x7FFFFFFF) * a2;
  v28 = (v27 ^ HIWORD(v27)) * a2;
  return (*(STACK[0xF18] + 8 * (((v16 & 7) != (((*(v10 + (v28 >> 24)) ^ *v26 ^ *((v28 >> 24) + a4 + 2) ^ *((v28 >> 24) + a5 + 7)) ^ (v28 ^ -BYTE3(v28))) & 7)) ^ a3)))();
}

uint64_t sub_100609064()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 29772;
  v3 = v0 ^ 0xE773B63C2CB22AF9;
  v4 = STACK[0xF10] - 33690;
  *(STACK[0x1E30] + 56) = v3;
  v5 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v4);
  return (*(v5 + 8 * ((15158 * ((v4 ^ 0xE491078F) == (v2 ^ 0xFBEADDC7))) ^ (v1 - 29776))))();
}

uint64_t sub_100609180()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 7171) | 0x4740) - 21402) ^ v0)))();
}

uint64_t sub_100609248()
{
  v1 = STACK[0x7EB0];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393322;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10060930C()
{
  v0 = STACK[0xF10] ^ 0xE4E6;
  v1 = 11881 * (STACK[0xF10] ^ 0x8B38);
  v2 = LOWORD(STACK[0x472E]);
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 23227)))(v2);
  STACK[0x4428] = v4;
  v5 = (*(v3 + 8 * (v0 ^ 0xA545)))(v2);
  STACK[0x5000] = v5;
  return (*(v3 + 8 * (((v5 != 0 && v4 != 0) * (v1 - 30237)) ^ v0)))();
}

uint64_t sub_100609404(unint64_t a1)
{
  STACK[0xC60] = 0;
  v3 = *(STACK[0xF18] + 8 * (v1 - 11592));
  STACK[0xC90] = a1;
  STACK[0xC80] = a1;
  STACK[0xD90] = a1;
  STACK[0xD80] = v2;
  return v3();
}

uint64_t sub_100609598()
{
  v5 = 1112314453 * (((v2 | 0x411C0FA3) - (v2 & 0x411C0FA0)) ^ 0xAE4A257A);
  STACK[0x10EF8] = v0;
  STACK[0x10EE0] = v4;
  STACK[0x10ED8] = STACK[0x520];
  LODWORD(STACK[0x10EEC]) = 1961923937 - v5;
  LODWORD(STACK[0x10EF0]) = v1 - v5 + 699855854;
  v6 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 ^ 0xF9E5)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * (((LODWORD(STACK[0x10EE8]) == ((v1 + 22698) ^ 0xE9D54C2A)) * ((v1 ^ 0x3DE) + 33949)) ^ v1)))(12608, 863, 47, STACK[0xDA0], v3, STACK[0xD90], &STACK[0x10ED8]);
}

uint64_t sub_1006096B8()
{
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0xEE0A)))((v0 + 950274191) ^ v2);
  *(v1 + 656) = v5;
  v6 = *(v3 + 1520);
  if (!v5)
  {
    v6 = 371891397;
  }

  *(v3 + 1528) = v6;
  return (*(v4 + 8 * ((13 * (v6 == (v0 ^ 0xE9D5E383))) | v0)))();
}

uint64_t sub_100609774()
{
  v0 = STACK[0xF10] - 33725;
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1195)))();
}

uint64_t sub_100609970@<X0>(char a1@<W8>)
{
  LOBYTE(STACK[0x7906]) = a1;
  LODWORD(STACK[0x44F4]) = v2;
  v3 = *(STACK[0x5630] + 40);
  STACK[0x2908] = STACK[0x5630] + 40;
  STACK[0x67C0] = v3;
  return (*(STACK[0xF18] + 8 * (((*STACK[0x5520] != 0) * (((v1 - 970642620) & 0x39DAEFAC) - 42434)) ^ (v1 - 3069))))();
}

uint64_t sub_1006099E0()
{
  v0 = STACK[0xF10] + 12862;
  v1 = STACK[0xA3F4];
  LODWORD(STACK[0xA3F8]) = LODWORD(STACK[0xB594]) - 371865839 + (((LODWORD(STACK[0xA3F4]) ^ 0xA51B311E) + 1524944610) ^ ((LODWORD(STACK[0xA3F4]) ^ 0x1BB9118A) - 465113482) ^ ((((STACK[0xF10] - 1426) | 0x4014) ^ 0xA888DDC6) + (LODWORD(STACK[0xA3F4]) ^ 0x5777E785)));
  v2 = (((v1 ^ 0x42BECDE2) - 1119800802) ^ ((v1 ^ 0x103EB450) - 272544848) ^ ((v1 ^ 0xBB55BEA3) + 1152008541)) - 371865839 < 8;
  return (*(STACK[0xF18] + 8 * ((v2 | (2 * v2)) ^ v0)))();
}

uint64_t sub_100609B58@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * (a1 - 6800));
  return (*(v1 + 8 * (a1 - 28244 + 154 * ((a1 - 6800) ^ 0x49B))))();
}

uint64_t sub_100609C80()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 - 244714756) & 0xE966FFC ^ 0x7414) + v0)))();
}

uint64_t sub_100609D28(uint64_t a1, uint64_t a2)
{
  *(a1 + 104) = *(a2 + 8);
  *(a1 + 96) = *(a2 + 4);
  return (*(v2 + 111456))();
}

uint64_t sub_100609D50@<X0>(uint64_t a1@<X8>)
{
  v3 = (((*(a1 + 16) ^ 0x2511793D) - 621902141) ^ ((*(a1 + 16) ^ 0xE45645AC) + 464108116) ^ ((*(a1 + 16) ^ 0x2892FB80) + ((v1 - 869132386) & 0x33CDBBFF) - 680730420)) - 583239691;
  v4 = (((*(a1 + 12) ^ 0x29C08821) - 700483617) ^ ((*(a1 + 12) ^ 0xEB2B5994) + 349480556) ^ ((*(a1 + 12) ^ 0x2B3E16A4) - 725489316)) - 583239691;
  v5 = (v4 < 0xF366B0E4) ^ (v3 < 0xF366B0E4);
  v6 = v3 < v4;
  if (v5)
  {
    v6 = v4 < 0xF366B0E4;
  }

  return (*(v2 + 8 * ((71 * v6) ^ v1)))();
}

uint64_t sub_100609E6C()
{
  LODWORD(STACK[0xEC0]) = v0;
  v2 = STACK[0x938];
  v3 = *(STACK[0x938] + 16);
  LODWORD(STACK[0x10ED8]) = (v1 - 1762658397) ^ (906386353 * ((~(&STACK[0x10000] + 3800) & 0x1458ADF9 | (&STACK[0x10000] + 3800) & 0xEBA75200) ^ 0x255960DD));
  STACK[0x10EE0] = v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 ^ 0xB555)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((65481 * (((v1 - 113) ^ (*(v2 + 8) == 0)) & 1)) ^ v1)))(v5);
}

uint64_t sub_10060A24C()
{
  v0 = STACK[0xF18];
  v1 = STACK[0x4B8];
  STACK[0x6728] = *(STACK[0xF18] + 8 * SLODWORD(STACK[0x4B8]));
  return (*(v0 + 8 * ((LODWORD(STACK[0x998]) ^ 0x663C) + v1)))();
}

uint64_t sub_10060A284@<X0>(unsigned int a1@<W8>)
{
  *(*(v2 + 16) + 8 * v1) = v3;
  v4 = *(v2 + 8) + 1;
  *(v2 + 4) = ((a1 + 29586) | 0x229) + *(v2 + 4) - 35642;
  *(v2 + 8) = v4;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_10060A384()
{
  v2 = *(v0 + 32);
  STACK[0x2128] = v0 + 32;
  return (*(STACK[0xF18] + 8 * (((v2 == 0) ^ (109 * (v1 ^ 0xEB))) & 1 ^ v1)))();
}

uint64_t sub_10060A480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] + 11600;
  LODWORD(STACK[0xA004]) = (STACK[0xF10] - 35645) & LODWORD(STACK[0x98D4]) ^ 0xE9D5C711;
  return (*(STACK[0xF18] + 8 * (v3 - 29445)))(a1, a2, a3, v4, ((0x1B8 % (LODWORD(STACK[0xA00C]) ^ 0x3C77CD08u)) ^ 0xFEFDDAE3) + 1094760296 + ((2 * (0x1B8 % (LODWORD(STACK[0xA00C]) ^ 0x3C77CD08u))) & 0x1C6));
}

uint64_t sub_10060A584@<X0>(int a1@<W8>)
{
  v2 = 105 * (a1 ^ 0x8A57);
  v3 = a1 - 31796;
  LODWORD(STACK[0x25F0]) = v1;
  v4 = STACK[0x7560];
  v5 = *(STACK[0x7560] - 0x10A99C80114D146FLL);
  LODWORD(STACK[0x10ED8]) = a1 + 1603510583 * ((&STACK[0x10000] + 3800) ^ 0x97DB32AB) - 4883;
  STACK[0x10EE0] = v5;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (a1 + 16292)))(&STACK[0x10ED8]);
  *(v4 - 0x10A99C80114D146FLL) = 0x427A3CD3E8C5DA2FLL;
  STACK[0x1518] = *(v6 + 8 * v3);
  return (*(v6 + 8 * (v3 ^ 0xBF2C ^ v2)))(v7);
}

uint64_t sub_10060A6AC()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16238)))(v0);
  return (*(v2 + 8 * (v1 - 7336)))(v3);
}

uint64_t sub_10060A6E8()
{
  v2 = STACK[0x90B8];
  STACK[0x8FE8] = *(STACK[0x1C58] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v2;
  LODWORD(STACK[0x704C]) = -2116087585;
  LODWORD(STACK[0x7FD8]) = 1751212916;
  LODWORD(STACK[0x4A8C]) = v1;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10060A764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (STACK[0xF10] - 2737) | 0x3801;
  v4 = STACK[0xF10] - 34047;
  LODWORD(STACK[0xA5F4]) = (v3 - 47245) & LODWORD(STACK[0x98D4]) ^ 0xB8414DD1;
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x1E0A)))(a1, a2, a3, v3, ((0x22 % (LODWORD(STACK[0xA5FC]) ^ 0x6F41ED37u)) ^ 0xBD7DF73B) - 2101306608 + ((2 * (0x22 % (LODWORD(STACK[0xA5FC]) ^ 0x6F41ED37u))) & 0x76));
}

uint64_t sub_10060A874()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v1 + 8 * (v0 - 5227)))(v2);
}

uint64_t sub_10060A948()
{
  v1 = (STACK[0xF10] - 1787) | 0x1283;
  v2 = STACK[0xF10] - 21076;
  LODWORD(STACK[0xA50C]) = v0;
  v3 = (((v0 ^ 0xDC49142CF60E6B52) + 0x23B6EBD309F194AELL) ^ ((v0 ^ 0x84CD15B36EF43B82) + 0x7B32EA4C910BC47ELL) ^ (((v1 + 0x5884019F712F00FELL) ^ v0) - 0x5884019F712F97C1)) + 0x135CE03BALL;
  v4 = (LODWORD(STACK[0x90BC]) ^ 0xE9F77FBF967FBFE2) + 0x16088040B5787CC3 + ((2 * LODWORD(STACK[0x90BC])) & 0x12CFF7FC4);
  v5 = (v4 < 0x4BF83CA5) ^ (v3 < 0x4BF83CA5);
  v6 = v3 > v4;
  if (v5)
  {
    v6 = v3 < 0x4BF83CA5;
  }

  return (*(STACK[0xF18] + 8 * ((8 * !v6) | (16 * !v6) | v2)))();
}

uint64_t sub_10060AD90@<X0>(int a1@<W8>)
{
  v1 = a1 + 4396;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 ^ 0x4192)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10060AE24@<X0>(int a1@<W8>)
{
  v2 = (((v1 ^ 0xD38AABB2) + 745886798) ^ ((v1 ^ 0x3ADBD0BF) - 987484351) ^ ((v1 ^ 0x84BC1C) - 8734551 + 11881 * (a1 ^ 0x9180))) - LODWORD(STACK[0x6A94]) + ((5 * (a1 ^ 0x952A)) ^ 0x4C3DD15C);
  LODWORD(STACK[0x7754]) = v2;
  return (*(STACK[0xF18] + 8 * (((v2 == 0) | (8 * (v2 == 0))) ^ a1)))();
}

uint64_t sub_10060AED4()
{
  v1 = STACK[0xF18];
  STACK[0x20A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x35CB)))();
}

uint64_t sub_10060B0D0(unint64_t a1)
{
  v4 = *(v2 + 26) | ((*(v2 + 26) < 0x5Au) << 8);
  v5 = v1 + ((v3 - 8079) ^ 0xC4C87986) + *v2;
  v6 = 1022166737 * ((2 * ((&STACK[0x10000] + 3800) & 0x6B58BF10) - (&STACK[0x10000] + 3800) + 346505450) ^ 0xAEB7A178);
  LODWORD(STACK[0x10EE0]) = *(v2 + 27) - v6 + ((*(v2 + 27) < 0x42u) << 8) + 358478103;
  STACK[0x10EF8] = v2 + 10;
  LODWORD(STACK[0x10EDC]) = (v3 - 4051) ^ v6;
  LODWORD(STACK[0x10ED8]) = (609899203 * v4 - 1515123889) ^ v6;
  STACK[0x10EE8] = v5;
  STACK[0x10EF0] = a1;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v3 ^ 0xF2B4)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * ((27472 * (LODWORD(STACK[0x10EE4]) == 157686605)) ^ v3)))(v8);
}

uint64_t sub_10060B2CC()
{
  v1 = v0 ^ 0x918B ^ SLOBYTE(STACK[0x6563]) ^ 0x162AB091;
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393370;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10060B4AC()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 37621)))(STACK[0x21D8]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10060B4D4()
{
  v1 = STACK[0x107C];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393253;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10060B5B4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v18 = *v14;
  v19 = ((*(*v15 + (v18 & 0xFFFFFFFF86B3AED0)) ^ v7) & 0x7FFFFFFF) * v9;
  v20 = (v19 ^ HIWORD(v19)) * v10;
  LODWORD(v18) = ((*(*v15 + (v18 & a1)) ^ v4) & 0x7FFFFFFF) * v9;
  v21 = (v18 ^ WORD1(v18)) * v9;
  *(v11 + v6) = *(v3 + (v20 >> 24)) ^ *(a3 + v6) ^ *(v12 + (v20 >> 24)) ^ *(v8 + (v20 >> 24)) ^ *(v13 + (v21 >> 24)) ^ *(v17 + (v21 >> 24)) ^ v20 ^ *(v16 + (v21 >> 24)) ^ (5 * BYTE3(v20)) ^ v21 ^ (BYTE3(v21) * a2);
  return (*(STACK[0xF18] + 8 * ((30 * (v6 == 0)) ^ v5)))();
}

uint64_t sub_10060B700()
{
  v3 = 1112314453 * ((((&STACK[0x10000] + 3800) | 0x4D490C5) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xFB2B6F38)) ^ 0xEB82BA1C);
  LODWORD(STACK[0x10ED8]) = v3 + v2 - 25761;
  LODWORD(STACK[0x10EE8]) = v3 + v0 - 291624221;
  STACK[0x10EE0] = v1;
  v4 = (*(STACK[0xF18] + 8 * (v2 + 16427)))(&STACK[0x10ED8]);
  return (STACK[0x16D8])(v4);
}

uint64_t sub_10060B7B8()
{
  STACK[0x10ED8] = *v0;
  LODWORD(STACK[0x10EE0]) = v1 + 155453101 * ((((&STACK[0x10000] + 3800) | 0x4715C8D) - ((&STACK[0x10000] + 3800) | 0xFB8EA372) - 74538126) ^ 0xE2574742) + 296781915;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xD065)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10060B850()
{
  *v2 = 0;
  *v1 = -371865839;
  return (*(STACK[0xF18] + 8 * (v0 & 0x94DE3F7B)))();
}

uint64_t sub_10060B980@<X0>(int a1@<W8>)
{
  v2 = (v1 - 1698509615);
  v3 = *(STACK[0x9C70] + v2);
  v4 = v2 + STACK[0x9C78] + STACK[0x9C80];
  LODWORD(STACK[0xD40]) = a1 ^ 0x8408;
  *(v4 - 0x3356CFCE99FE49EFLL) = a1 ^ 0x6C ^ v3;
  v5 = *(STACK[0xF18] + 8 * a1);
  LODWORD(STACK[0xD70]) = v1 - 1;
  return v5();
}

uint64_t sub_10060B9EC()
{
  STACK[0xAD10] = v1 + 108;
  if (STACK[0xACF8])
  {
    v2 = LODWORD(STACK[0xAD04]) == (((v0 + 4101) | 0x1A86) ^ 0xE9D559FF);
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  return (*(STACK[0xF18] + 8 * ((227 * v3) ^ v0)))();
}

uint64_t sub_10060BAA8()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 43321)))();
  STACK[0x25D8] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10060BAD8()
{
  v1 = STACK[0xF18];
  STACK[0x1FA0] = *(STACK[0xF18] + 8 * v0);
  v2 = *(v1 + 8 * ((15530 * (v0 - 1399283137 > (v0 + 733696796))) ^ (v0 + 4524)));
  LODWORD(STACK[0xED0]) = 1;
  return v2();
}

uint64_t sub_10060BB40()
{
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762664428) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x70365E7B) - ((&STACK[0x10000] + 3800) | 0x8FC9A184) - 1882611324) ^ 0x4137935F));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 13118)))(&STACK[0x10ED8]);
  v4 = *STACK[0x970] != (v0 ^ 0x73CDBA4) - 121392351 || *STACK[0x940] == 0;
  return (*(v1 + 8 * ((v4 * ((v0 - 2030546045) & 0x790717DD ^ 0x225)) ^ v0)))(v2);
}

uint64_t sub_10060BC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 30181;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x3748];
  STACK[0x5D28] = &STACK[0x5678];
  LODWORD(STACK[0x4704]) = -1804242387;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10060BDE8()
{
  v2 = STACK[0x5608];
  v3 = STACK[0x6568];
  v4 = STACK[0x7528];
  v5 = STACK[0x9420];
  v6 = 1603510583 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x2AF1A870) + 720480372) ^ 0xBD2A9ADF);
  LODWORD(STACK[0x10F18]) = v6 + (((LODWORD(STACK[0x3D50]) ^ 0xBAA54400) + 1163574272) ^ ((LODWORD(STACK[0x3D50]) ^ 0xF911F64D) + 116263347) ^ ((LODWORD(STACK[0x3D50]) ^ 0x5BED916C) - 1542295916)) + 1196091123;
  STACK[0x10EE8] = v4;
  STACK[0x10EE0] = 0;
  STACK[0x10F00] = v2;
  STACK[0x10F10] = v5 + 348;
  STACK[0x10EF8] = 0;
  STACK[0x10EF0] = v3;
  LODWORD(STACK[0x10F08]) = v6 + v0 + 16379;
  STACK[0x10F20] = v5 + 89;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v0 ^ 0xD5FD)))(&STACK[0x10ED8]);
  v9 = STACK[0x10ED8];
  STACK[0x7690] += (2 * ((v0 - 620035997) & 0x24F4FBAF ^ 0x5844u)) ^ 0xFFFFFFFFFFFF7A46;
  return (*(v7 + 8 * ((29072 * (v9 == v1)) ^ v0)))(v8);
}

uint64_t sub_10060BFD4()
{
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x60A8];
  STACK[0x5D28] = &STACK[0x1380];
  LODWORD(STACK[0x4704]) = 1170701992;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10060C024()
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = -371865839;
  LODWORD(STACK[0x35EC]) = 1693393352;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10060C064()
{
  v0 = (STACK[0xF10] - 37557054) & 0x23CEF7A;
  v1 = STACK[0xF10] - 34544;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x74D8) + v1)))();
}

uint64_t sub_10060C11C()
{
  v4 = v1 + v3 + ((v2 - 854530284) & 0x32EEFF7F) - 1709064856;
  v5 = (((v0 ^ 0xF8FD4014) + 117620716) ^ ((v0 ^ 0xD528EA6) - 223514278) ^ (((v2 - 854530284) ^ 0x2E947DE6) + (v0 ^ 0x1C7A09A3))) - 1535045672;
  v6 = (v4 < 0xBAAB48C7) ^ (v5 < 0xBAAB48C7);
  v7 = v4 > v5;
  if (v6)
  {
    v7 = v4 < 0xBAAB48C7;
  }

  return (*(STACK[0xF18] + 8 * (((2 * !v7) | (!v7 << 6)) ^ v2)))();
}

uint64_t sub_10060C20C()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 4943) ^ v0)))();
}

uint64_t sub_10060C244@<X0>(int a1@<W8>)
{
  v3 = 261 * (v2 ^ 0x8B3C);
  v4 = (((a1 ^ 0x8B8D892B) + 1953658581) ^ ((a1 ^ 0xCEA7B60A) + 827869686) ^ ((a1 ^ 0xACFFF830) + 1392510928)) + v1 + 62168727;
  LODWORD(STACK[0xA974]) = v4;
  v5 = (((v4 + (v3 ^ 0x782EB79E)) ^ 0xEE5C22CE) - 503399364) ^ (v4 + (v3 ^ 0x782EB79E)) ^ (((v4 + (v3 ^ 0x782EB79E)) ^ 0xB263715D) - 1111363671) ^ (((v4 + (v3 ^ 0x782EB79E)) ^ 0x139DDDF7) + 473907971) ^ (((v4 + (v3 ^ 0x782EB79E)) ^ 0xBFFFEF6E) - 1336053348);
  LODWORD(STACK[0x28C0]) = v5 ^ 0x1988A61B;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v2 ^ 0x41A3)))(v5 ^ 0xF05D610A);
  STACK[0x6B80] = v7;
  return (*(v6 + 8 * ((488 * (v7 == 0)) ^ (v2 + 9659))))();
}

uint64_t sub_10060C3A4()
{
  v2 = *(STACK[0x94D0] + 72 * STACK[0x8B20] + 44);
  v3 = (((v1 ^ 0xF4D6CF68) + 187248792) ^ ((v1 ^ 0x364CB361) - 910996321) ^ ((v1 ^ 0x2B4FBB18) - 726645528)) + 1541791948;
  v4 = (((v2 ^ 0x88A8CF64) + 2002202780) ^ ((v2 ^ 0xFC9F5427) + 56667097) ^ ((v2 ^ 0x9DE25C52) + 1646109614)) + 1541791948;
  v5 = v3 < 0x721019BB;
  v6 = v3 > v4;
  if (v5 != v4 < 0x721019BB)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((27 * v6) ^ (v0 + 9514))))();
}

uint64_t sub_10060C5B8()
{
  v0 = STACK[0xF10] - 31659;
  STACK[0x8AC0] = STACK[0x7FA8] + (STACK[0xF10] ^ 0xCA04) + STACK[0x7630] - 0x3AE1413A0D5CD801;
  v1 = STACK[0xF18];
  STACK[0x67B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x4070)))();
}

uint64_t sub_10060C6B8()
{
  STACK[0x90C8] = v3 + 36;
  v4 = STACK[0xA100];
  STACK[0x3530] = &STACK[0xC4D0] + v2 + 100;
  STACK[0x2CF0] = &STACK[0xC4D0] + v2 + 116;
  STACK[0x7690] = v1 - 23107 + (v0 ^ 0xB628u) - 25530;
  STACK[0x7A18] = v4;
  STACK[0x1040] = 0;
  if (v4)
  {
    v5 = STACK[0x4E98] == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  return (*(STACK[0xF18] + 8 * ((v6 * ((v0 ^ 0x80AE) - 35517)) ^ v0 ^ 0xB628)))();
}

uint64_t sub_10060C74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10] - 34038;
  LODWORD(STACK[0xA5F8]) = STACK[0x98D4];
  return (*(STACK[0xF18] + 8 * (v3 ^ 0x1E73)))(a1, a2, a3);
}

uint64_t sub_10060C8BC()
{
  v1 = STACK[0x1D64];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393343;
  return (*(STACK[0xF18] + 8 * (v0 ^ ((v0 + 1670793148) | 2) ^ 0x9C6ACBF1 ^ (6902 * (v0 > 0x2A37EE6C)))))();
}

uint64_t sub_10060CA5C()
{
  v1 = v0 ^ 0xA480;
  v2 = v0 ^ 0xBFEB;
  v3 = v0 + 10210;
  v4 = *(STACK[0x4DB0] + 16);
  v5 = *(STACK[0x4DB0] + 24);
  if (v5)
  {
    v6 = (v5 + 16);
  }

  else
  {
    v6 = (*STACK[0x938] + 640 * STACK[0x9670] + 0x7A4FE54A28FFC678);
  }

  *v6 = v4;
  return (*(STACK[0xF18] + 8 * (((v4 == 0) * (v1 ^ v2 ^ 0x1B50)) ^ v3)))();
}

uint64_t sub_10060CC38()
{
  STACK[0x7690] -= 928;
  v2 = STACK[0x6E10] + 1064;
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0xCFBA)))(STACK[0xEB0] - 628312998, v2, 16);
  v4 = STACK[0xBA50];
  v5 = STACK[0xBA58];
  v6 = STACK[0xB9F4];
  v7 = STACK[0xBA00];
  v8 = 297845113 * (((~(&STACK[0x10000] + 3800) & 0x9368D3BC) - (~(&STACK[0x10000] + 3800) | 0x9368D3BD)) ^ 0xE45BCF23);
  LODWORD(STACK[0x10F0C]) = (((v1 ^ 0xC07F1980) + 1065412224) ^ ((v1 ^ 0x9E1A27C0) + 1642453056) ^ ((v1 ^ 0xB52D7340) + 1255276933 + v0 + 34240)) - v8 + 213266025;
  LODWORD(STACK[0x10EF8]) = (v0 + 14247) ^ v8;
  LODWORD(STACK[0x10F08]) = v8 + (((v1 ^ 0xB8714881) + 1200535423) ^ ((v1 ^ 0x2F9352E4) - 798184164) ^ ((v1 ^ 0x7CAA5765) - 2091538277)) - 163089624;
  LODWORD(STACK[0x10EE0]) = (v6 ^ 0x30B6000) - v8;
  STACK[0x10EE8] = v7;
  STACK[0x10EF0] = v4;
  STACK[0x10F00] = v5;
  STACK[0x10ED8] = v2;
  v9 = (*(v3 + 8 * (v0 + 50823)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((27478 * (LODWORD(STACK[0x10F10]) == -371865839)) ^ v0)))(v9);
}

uint64_t sub_10060CEB0@<X0>(unsigned int a1@<W8>)
{
  v3 = STACK[0x4DA8];
  *(v3 + 200) = v2;
  *(v3 + 208) = *(v1 + 24);
  *(v3 + 216) = 0;
  return (*(STACK[0xF18] + 8 * (((a1 ^ 0xFFFF9931) + a1) ^ (8817 * (a1 > 0x78FD770)))))();
}

uint64_t sub_10060CF74()
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
  STACK[0xBF60] = 0;
  STACK[0xBF68] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xBF60] | v10);
  *(&STACK[0xBF60] | v10) = 0;
  LOBYTE(STACK[0xBF67]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xBF60] | v12);
  *(&STACK[0xBF60] | v12) = STACK[0xBF66];
  LOBYTE(STACK[0xBF66]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xBF60] | v14);
  *(&STACK[0xBF60] | v14) = STACK[0xBF65];
  LOBYTE(STACK[0xBF65]) = v15;
  v16 = STACK[0xBF60];
  LOBYTE(STACK[0xBF60]) = STACK[0xBF64];
  LOBYTE(STACK[0xBF64]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xBF60] | v17);
  *(&STACK[0xBF60] | v17) = STACK[0xBF63];
  LOBYTE(STACK[0xBF63]) = v18;
  v19 = STACK[0xBF61];
  LOBYTE(STACK[0xBF62]) = STACK[0xBF60];
  LOWORD(STACK[0xBF60]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xBF60] = vmla_s32(v22, STACK[0xBF60], vdup_n_s32(0x1000193u));
  STACK[0xBF68] ^= STACK[0xBF60];
  STACK[0xBF68] = vmul_s32(vsub_s32(STACK[0xBF68], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xBF6A];
  LOWORD(STACK[0xBF69]) = STACK[0xBF68];
  LOBYTE(STACK[0xBF68]) = v23;
  v24 = (&STACK[0xBF68] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xBF6B];
  LOBYTE(STACK[0xBF6B]) = v19;
  LOBYTE(v24) = STACK[0xBF68];
  LOBYTE(STACK[0xBF68]) = STACK[0xBF6C];
  LOBYTE(STACK[0xBF6C]) = v24;
  v25 = (&STACK[0xBF68] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xBF6D];
  LOBYTE(STACK[0xBF6D]) = v24;
  v26 = (&STACK[0xBF68] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xBF6E];
  LOBYTE(STACK[0xBF6E]) = v25;
  v27 = (&STACK[0xBF68] | v10);
  v28 = *v27;
  *v27 = STACK[0xBF6F];
  LOBYTE(STACK[0xBF6F]) = v28;
  v29 = STACK[0xBF68];
  v30 = (553300517 * STACK[0xBF68]) ^ v9;
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
  *STACK[0x940] = STACK[0xBF68];
  return (*(STACK[0xF18] + 8 * v1))(v47, v48);
}

uint64_t sub_10060D404@<X0>(int a1@<W8>)
{
  v2 = v1 - 1235676518;
  v3 = (v2 + 47) ^ ((a1 & ~v2 | (v2 ^ ~a1) & (a1 - v2)) < 0);
  return (*(STACK[0xF18] + 8 * (v2 ^ 0xB6598AFF ^ ((16 * (v3 & 1)) & 0xBF | ((v3 & 1) << 6)))))();
}

uint64_t sub_10060D4AC()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xEDE2)))(STACK[0x4AA8]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10060D4DC()
{
  LODWORD(STACK[0x10ED8]) = (v0 + 31684) ^ (1603510583 * ((((&STACK[0x10000] + 3800) | 0xE1BA10BA) - ((&STACK[0x10000] + 3800) & 0xE1BA10B8)) ^ 0x76612211));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xCE16)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * ((((v0 - 895) | 0xC815) - 28947) ^ v0)))(v2);
}

uint64_t sub_10060DD38()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 1122860317;
  v3 = 634647737 * (&STACK[0x10ED8] ^ 0xDADBAFEF6D962FFCLL);
  LODWORD(STACK[0x10EFC]) = v2 - v3 - 10;
  STACK[0x10EF0] = v0 - v3;
  STACK[0x10EE8] = v3 ^ 0xE9D5C711;
  LODWORD(STACK[0x10EF8]) = v1 - v3 - 1230214699;
  LODWORD(STACK[0x10EE4]) = v2 + v3;
  LODWORD(STACK[0x10ED8]) = -634647737 * (&STACK[0x10ED8] ^ 0xDADBAFEF6D962FFCLL);
  LODWORD(STACK[0x10EDC]) = v2 - v3 + 3908;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 ^ 0x41D7)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * SLODWORD(STACK[0x10EE0])))(v5);
}

uint64_t sub_10060DEC8@<X0>(int a1@<W8>)
{
  STACK[0x8600] = v2;
  STACK[0x7980] = v3;
  LODWORD(STACK[0x3A4C]) = a1;
  LODWORD(STACK[0x72D0]) = 3072;
  LODWORD(STACK[0x6134]) = 1722456500;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(STACK[0xF18] + 8 * ((v5 * ((v1 - 1536038917) & 0x5B8D9FDD ^ 0x17BD)) ^ v1)))();
}

uint64_t sub_10060DF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = (LODWORD(STACK[0xE80]) + 386028059) | 0x280C;
  v7 = *(STACK[0xF18] + 8 * ((v6 - 386043976) ^ LODWORD(STACK[0xE80]) ^ (32393 * (LODWORD(STACK[0xE80]) < 0xDF8E4FA7))));
  LODWORD(STACK[0xE80]) = v6 + 5002;
  return v7(9924, (v6 - 10862), LODWORD(STACK[0xEB0]), 495, LODWORD(STACK[0xD20]) ^ 0x1CD4BE60u, a6, 2443320218, 54);
}

uint64_t sub_10060E030()
{
  v1 = STACK[0xF10] - 12929;
  *(v0 + 16) = -371865840;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10060E058(unint64_t a1)
{
  v4 = v1 + (v3 ^ 0xD3FF9FEF) + ((2 * v3) & 0xFFFFFFDF) + 738222101;
  LODWORD(STACK[0x22A4]) = v4;
  LODWORD(STACK[0x68C4]) = v4;
  STACK[0x6CC0] = a1;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10060E0E0@<X0>(int a1@<W8>)
{
  v1 = a1 + 1536;
  v2 = STACK[0x7690];
  v3 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x6CC8] = v3;
  STACK[0x7690] = (a1 - 3443) + v2 + ((a1 + 2019316916) & 0x87A339D1) - 38217;
  LODWORD(STACK[0x10EE4]) = a1 - 193924789 * ((((&STACK[0x10000] + 3800) | 0x899A4594) - ((&STACK[0x10000] + 3800) & 0x899A4590)) ^ 0x3F2177F2) + 9591;
  STACK[0x10ED8] = v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (a1 ^ 0x4183)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((14879 * (LODWORD(STACK[0x10EE0]) == -371865839)) ^ v1)))(v5);
}

uint64_t sub_10060E224()
{
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 ^ v1)))(v0);
  return (*(v3 + 8 * (v2 + 5510)))(v4);
}

uint64_t sub_10060E2B8@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, unsigned int a8@<W7>, uint64_t a9@<X8>)
{
  v22 = (v10 + (a1 + v15 + 1726660187));
  v23 = 2 * ((124 - v15) ^ v15 ^ ((v15 ^ 0x70) - 12) ^ ((v15 ^ 0x31) + 51) ^ ((((v13 | 0x2A) + 24) ^ v15) + 66));
  v24 = ((v22 ^ *(*a2 + (*v14 & a8))) & 0x7FFFFFFF) * v16;
  v25 = (v24 ^ HIWORD(v24)) * v16;
  LODWORD(v25) = *((v25 >> 24) + a9 + 1) ^ *(a4 + (v25 >> 24)) ^ *((v25 >> 24) + a3 + 3) ^ v25 ^ ((v25 >> 24) * v17);
  v26 = ((v25 ^ *v22 ^ v18) + 29) ^ ((v25 ^ *v22 ^ 0x3E) + 88) ^ ((v25 ^ *v22 ^ v19) + 35);
  *v22 = v25 ^ (v15 + v26 + (v26 - 106) * ((((v23 ^ a6) - 92) ^ ((v23 ^ a7) - 83) ^ ((v23 ^ a5) + 36)) - 46) + 26);
  v27 = v15 + v20 < v11;
  if (v11 < v12 != v15 + v20 < v12)
  {
    v27 = v11 < v12;
  }

  return (*(STACK[0xF18] + 8 * ((!v27 * v21) ^ v9)))();
}

uint64_t sub_10060E528@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v4 = (((v3 ^ 0xD1820BB0) - 1011380978) ^ ((v3 ^ 0x233AB5C2) + 823079808) ^ ((v3 ^ 0xF6A70021) - 460193020 + 59 * (a2 ^ 0x655F))) + 1678664247;
  v5 = (v4 ^ 0xC1C65690) & (2 * (v4 & 0x85C764D9)) ^ v4 & 0x85C764D9;
  v6 = ((2 * (v4 ^ 0xC0CE1692)) ^ 0x8A12E496) & (v4 ^ 0xC0CE1692) ^ (2 * (v4 ^ 0xC0CE1692)) & 0x4509724A;
  v7 = v6 ^ 0x45091249;
  v8 = (v6 ^ 0x2000) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0x1425C92C) & v7 ^ (4 * v7) & 0x45097248;
  v10 = (v9 ^ 0x4014000) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x41083243)) ^ 0x509724B0) & (v9 ^ 0x41083243) ^ (16 * (v9 ^ 0x41083243)) & 0x45097240;
  v12 = v10 ^ 0x4509724B ^ (v11 ^ 0x40012000) & (v10 << 8);
  v13 = v4 ^ (2 * ((v12 << 16) & 0x45090000 ^ v12 ^ ((v12 << 16) ^ 0x724B0000) & (((v11 ^ 0x508524B) << 8) & 0x45090000 ^ 0x44090000 ^ (((v11 ^ 0x508524B) << 8) ^ 0x9720000) & (v11 ^ 0x508524B))));
  v14 = *(v2 + (v13 ^ 0x8FC7804FLL));
  LODWORD(STACK[0x5798]) = v13 ^ 0x6612475E;
  LODWORD(STACK[0x3D54]) = (v14 ^ 0x775F6E6E) - 268438024 + ((2 * v14) & 0xDC);
  v15 = LODWORD(STACK[0x10F4]);
  LODWORD(v13) = (((v13 ^ 0xCFD3F653) + 1446924019) ^ ((v13 ^ 0xDA2562BD) + 1137236509) ^ ((v13 ^ 0x9A3114A1) + 64793601)) - v15 + 449643665;
  v16 = (v13 ^ 0x8E8690E6) & (2 * (v13 & 0xCF08C280)) ^ v13 & 0xCF08C280;
  v17 = ((2 * (v13 ^ 0xE8611E6)) ^ 0x831DA6CC) & (v13 ^ 0xE8611E6) ^ (2 * (v13 ^ 0xE8611E6)) & 0xC18ED366;
  v18 = v17 ^ 0x40825122;
  v19 = (v17 ^ 0x40200) & (4 * v16) ^ v16;
  v20 = ((4 * v18) ^ 0x63B4D98) & v18 ^ (4 * v18) & 0xC18ED360;
  v21 = (v20 ^ 0xA4100) & (16 * v19) ^ v19;
  v22 = ((16 * (v20 ^ 0xC1849266)) ^ 0x18ED3660) & (v20 ^ 0xC1849266) ^ (16 * (v20 ^ 0xC1849266)) & 0xC18ED360;
  v23 = v21 ^ 0xC18ED366 ^ (v22 ^ 0x8C1200) & (v21 << 8);
  LODWORD(STACK[0x32BC]) = v13 ^ (2 * ((v23 << 16) & 0x418E0000 ^ v23 ^ ((v23 << 16) ^ 0x53660000) & (((v22 ^ 0xC102C106) << 8) & 0x418E0000 ^ 0x410C0000 ^ (((v22 ^ 0xC102C106) << 8) ^ 0xED30000) & (v22 ^ 0xC102C106)))) ^ 0x27CCA35D;
  return (*(STACK[0xF18] + 8 * a2))(a1, v2 + v15);
}

uint64_t sub_10060E8FC()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 31008 + v0 + 30283)))();
}

uint64_t sub_10060E95C@<X0>(int a1@<W8>)
{
  *STACK[0x4E98] = STACK[0x1040];
  *(STACK[0x64E0] + v1) = -371865737;
  return (*(STACK[0xF18] + 8 * (a1 & 0x8F7DDB87)))();
}

uint64_t sub_10060EA78()
{
  v3 = STACK[0xF10];
  v4 = (STACK[0xF10] + 1814557748) & 0x93D7EFDA;
  LODWORD(STACK[0x5564]) = v2;
  LODWORD(STACK[0x6ECC]) = v0;
  *STACK[0x40B8] = (v4 - 1837874722) ^ v1;
  return (*(STACK[0xF18] + 8 * (v3 - 22821)))();
}

uint64_t sub_10060EB28()
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
  STACK[0xC0C0] = 0;
  STACK[0xC0C8] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC0C0] | v10);
  *(&STACK[0xC0C0] | v10) = 0;
  LOBYTE(STACK[0xC0C7]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC0C0] | v12);
  *(&STACK[0xC0C0] | v12) = STACK[0xC0C6];
  LOBYTE(STACK[0xC0C6]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC0C0] | v14);
  *(&STACK[0xC0C0] | v14) = STACK[0xC0C5];
  LOBYTE(STACK[0xC0C5]) = v15;
  v16 = STACK[0xC0C0];
  LOBYTE(STACK[0xC0C0]) = STACK[0xC0C4];
  LOBYTE(STACK[0xC0C4]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC0C0] | v17);
  *(&STACK[0xC0C0] | v17) = STACK[0xC0C3];
  LOBYTE(STACK[0xC0C3]) = v18;
  v19 = STACK[0xC0C1];
  LOBYTE(STACK[0xC0C2]) = STACK[0xC0C0];
  LOWORD(STACK[0xC0C0]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC0C0] = vmla_s32(v22, STACK[0xC0C0], vdup_n_s32(0x1000193u));
  STACK[0xC0C8] ^= STACK[0xC0C0];
  STACK[0xC0C8] = vmul_s32(vsub_s32(STACK[0xC0C8], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC0CA];
  LOWORD(STACK[0xC0C9]) = STACK[0xC0C8];
  LOBYTE(STACK[0xC0C8]) = v23;
  v24 = (&STACK[0xC0C8] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC0CB];
  LOBYTE(STACK[0xC0CB]) = v19;
  LOBYTE(v24) = STACK[0xC0C8];
  LOBYTE(STACK[0xC0C8]) = STACK[0xC0CC];
  LOBYTE(STACK[0xC0CC]) = v24;
  v25 = (&STACK[0xC0C8] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC0CD];
  LOBYTE(STACK[0xC0CD]) = v24;
  v26 = (&STACK[0xC0C8] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC0CE];
  LOBYTE(STACK[0xC0CE]) = v25;
  v27 = (&STACK[0xC0C8] | v10);
  v28 = *v27;
  *v27 = STACK[0xC0CF];
  LOBYTE(STACK[0xC0CF]) = v28;
  v29 = STACK[0xC0C8];
  v30 = (553300517 * STACK[0xC0C8]) ^ v9;
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
  v43 = STACK[0x940];
  do
  {
    v44 = *(v29 + v35);
    v45 = vmovl_high_u8(v44);
    v46 = vmovl_u8(*v44.i8);
    v57.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v38, v42), vsubq_s32(v38, v42)), v42), vmull_high_u16(v46, v40));
    v57.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v37, v42), vsubq_s32(v37, v42)), v42), vmull_u16(*v45.i8, 0x9B009B009B009BLL));
    v57.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v39, v42), vsubq_s32(v39, v42)), v42), vmull_u16(*v46.i8, 0x9B009B009B009BLL));
    v57.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v36, v42), vsubq_s32(v36, v42)), v42), vmull_high_u16(v45, v40));
    *(v29 + v35) = vqtbl4q_s8(v57, xmmword_100BC7660);
    v35 += 16;
    v39 = vaddq_s32(v39, v41);
    v38 = vaddq_s32(v38, v41);
    v37 = vaddq_s32(v37, v41);
    v36 = vaddq_s32(v36, v41);
  }

  while (v35 != 576);
  v47 = 0;
  v48 = xmmword_100F52AE0;
  v49 = xmmword_100F52AF0;
  v50 = vdupq_n_s32(v30);
  v51 = v29 + 576;
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
  *v43 = STACK[0xC0C8];
  return (*(STACK[0xF18] + 8 * (v1 + 11)))(v48, v49);
}

uint64_t sub_10060F010()
{
  v2 = *(v1 + 68);
  *(v1 + (v2 & 0x3F)) = -33;
  return (*(STACK[0xF18] + 8 * ((33204 * ((v2 & 0x3Fu) > (((((v0 - 34615) | 0x228) - 770) | 0x8811) ^ 0xFFFF34FE) + ((v0 - 34615) | 0x228) + 14918)) ^ ((v0 - 34615) | 0x228))))();
}

uint64_t sub_10060F0B0@<X0>(int a1@<W8>)
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393309;
  return (*(STACK[0xF18] + 8 * (a1 - 29050)))();
}

uint64_t sub_10060F118()
{
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((~(&STACK[0x10000] + 3800) & 0x11DBD132 | (&STACK[0x10000] + 3800) & 0xEE242EC8) ^ 0xF7FDCAFD) + 296783349;
  STACK[0x10ED8] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xDFDF)))(&STACK[0x10ED8]);
  v3 = STACK[0x4CB0];
  v4 = STACK[0x6C78];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v3;
  LODWORD(STACK[0x655C]) = v4;
  LODWORD(STACK[0x884C]) = 1702305724;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10060F1D0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  *v2 = 0;
  *a2 = -371865839;
  v5 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v4 + 47956)))(a1, v3, 32);
  v6 = (*(v5 + 8 * (v4 + 48140)))(v3, 0, 0, 0, 0, 0, &STACK[0x2518], 0);
  STACK[0x99B8] = *(v5 + 8 * v4);
  return (*(v5 + 8 * (v4 - 23874 + v4 + 21612)))(v6);
}

uint64_t sub_10060F2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  ++*a5;
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v5 + 155453101 * ((&STACK[0x10000] + 3800) ^ 0xE6261BCF) + 296753103;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v5 + 16271)))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v6 + 8 * (v5 - 32396));
  return (*(v6 + 8 * ((4916 * (v5 ^ 0x8B3E) - 17732) ^ (v5 - 32396))))(v7);
}

uint64_t sub_10060F37C@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * (a1 - 31553));
  return (*(v1 + 8 * (a1 - 72235 + a1 + 5966)))();
}

uint64_t sub_10060F3E0()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v1 + 8 * (v0 - 4440)))(v2);
}

uint64_t sub_10060F5E8()
{
  v3 = v1 + 246914327;
  v4 = (((((v0 ^ 0x353A) - 24465) ^ 0xA4B150E6) + (v2 ^ 0x5B4EA07E)) ^ ((v2 ^ 0xAF7C87AB) + 1350793301) ^ ((v2 ^ 0x1DE76BFF ^ ((v0 ^ 0x353A) - 191918906) & 0xB708F7F) - 501735620)) - 124951532;
  v5 = v3 < 0xEB79D03;
  v6 = v3 > v4;
  if (v5 != v4 < 0xEB79D03)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((508 * v6) ^ v0 ^ 0x353A)))();
}

uint64_t sub_10060F6D0()
{
  *(*(v3 + 16) + 8 * v2) = v0;
  v4 = *(v3 + 8) + ((19 * (v1 ^ 0x301E)) ^ 0x94F4);
  ++*(v3 + 4);
  *(v3 + 8) = v4;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10060F774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 30181;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x1648];
  STACK[0x5D28] = &STACK[0x3DBC];
  LODWORD(STACK[0x4704]) = -168892188;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10060F80C()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v1 + 8 * (v0 + 4539)))(v2);
}

uint64_t sub_10060F890()
{
  STACK[0x5C50] = 0x3AE1413A0D5C98BALL;
  LODWORD(STACK[0x1374]) = 794937265;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10060FA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = (a3 + 4 * ((((v14 ^ v11) * v13) ^ v8) & (v7 + v9)));
  v16 = *v15;
  v17 = v15[1];
  v18 = (a7 + 4 * v7);
  *v18 = v16;
  v18[1] = v17;
  return (*(STACK[0xF18] + 8 * (((v7 + 8 == v12) * v10) ^ v14)))();
}

uint64_t sub_10060FADC@<X0>(int a1@<W8>)
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393307;
  return (*(STACK[0xF18] + 8 * ((a1 + 1118817362) ^ 0x42B04486 ^ (2762 * (a1 + 1118817362 <= (a1 ^ 0x371u) + 1408891963)))))();
}

uint64_t sub_10060FC18()
{
  v0 = STACK[0xF10] - 32320;
  v1 = STACK[0xF10] - 34314;
  v2 = STACK[0xF18];
  STACK[0x8390] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * ((v1 ^ 0xB69) + v0)))();
}

uint64_t sub_10060FCF8()
{
  STACK[0x81A8] = *STACK[0x7210];
  STACK[0x97E8] = STACK[0x54D8];
  LODWORD(STACK[0x6974]) = 103711531;
  return (*(STACK[0xF18] + 8 * ((327 * (v0 ^ 0x1BB3C2E3) + 464737195) ^ v0 ^ (15976 * (v0 > 0x154C12FD)))))();
}

uint64_t sub_10060FD74()
{
  v3 = *(v0 + 16);
  *(v2 + 4560) = v0 + 16;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 26346)))((((v1 - 21162) | 0x8C50u) + 1512689518) ^ v3);
  STACK[0x6AC8] = v5;
  return (*(v4 + 8 * ((102 * (((v1 + 73) ^ (v5 == 0)) & 1)) ^ v1)))();
}

uint64_t sub_10060FEBC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 768);
  v4 = STACK[0x40E8] >= v2 + 16 || v2 >= STACK[0x40E8] + 16;
  return (*(STACK[0xF18] + 8 * ((v4 * (((v1 - 42729) | 0x10C1) ^ 0x32C6)) ^ v1)))();
}

uint64_t sub_100610054()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 23400)))(v2);
}

uint64_t sub_1006102BC()
{
  LODWORD(STACK[0xED0]) = v0 - 34686;
  v1 = STACK[0x1608];
  v2 = 17902189 * ((((&STACK[0x10ED8] | 0x115A4F92) ^ 0xFFFFFFFE) - (~&STACK[0x10ED8] | 0xEEA5B06D)) ^ 0x60EAA67D);
  STACK[0x10EE0] = *(&off_1010A0B50 + (v0 ^ 0x8CCC)) - 1294698415;
  LODWORD(STACK[0x10ED8]) = v2 + 1017869920;
  LODWORD(STACK[0x10EE8]) = v0 - 29615 + v2;
  LODWORD(STACK[0x10EEC]) = -1007397285 - v2;
  STACK[0x10EF0] = v1;
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 16370)))(&STACK[0x10ED8]);
  v4 = 17902189 * (((&STACK[0x10ED8] | 0xD681F7B1) - (&STACK[0x10ED8] & 0xD681F7B0)) ^ 0x58CEE1A1);
  STACK[0x10EF0] = STACK[0x9280];
  STACK[0x10EE0] = *(&off_1010A0B50 + (v0 ^ 0x83D2)) - 1167349551;
  LODWORD(STACK[0x10ED8]) = v4 + 1017869920;
  LODWORD(STACK[0x10EEC]) = -1007397285 - v4;
  LODWORD(STACK[0x10EE8]) = v0 - 29615 + v4;
  (*(v3 + 8 * (v0 ^ 0x4016)))(&STACK[0x10ED8]);
  v5 = 17902189 * (((&STACK[0x10ED8] | 0x4F62A29C) - (&STACK[0x10ED8] | 0xB09D5D63) - 1331864221) ^ 0xC12DB48C);
  STACK[0x10EF0] = STACK[0x8590] + 8;
  STACK[0x10EE0] = *(&off_1010A0B50 + (v0 ^ 0x8E77)) - 1183800242;
  LODWORD(STACK[0x10ED8]) = v5 + 1017869912;
  LODWORD(STACK[0x10EEC]) = -1007397285 - v5;
  LODWORD(STACK[0x10EE8]) = v0 - 29615 + v5;
  (*(v3 + 8 * (v0 ^ 0x4016)))(&STACK[0x10ED8]);
  (*(v3 + 8 * (v0 + 16284)))(STACK[0x7B18], 0, 20);
  v6 = (*(v3 + 8 * (v0 ^ 0x41EC)))(STACK[0x4C60], 0, 16);
  v7 = STACK[0xED0];
  STACK[0x9880] = *(v3 + 8 * SLODWORD(STACK[0xED0]));
  return (*(v3 + 8 * ((v0 - 14109) ^ v7 ^ 0x421A)))(v6);
}

uint64_t sub_10061053C(unint64_t a1)
{
  *a1 = 0x981390C2FED9246;
  *(a1 + 8) = 4292945040;
  *(a1 + 16) = 0;
  v6 = *(*v5 + (*STACK[0x800] & 0x43420908));
  *(a1 + 64) = 0x981390C2FED9246;
  *(a1 + 72) = 0x981390C2FED9246;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 80) = 0xE9D5C711E9D5C711;
  *(a1 + 88) = v3;
  *(a1 + 128) = 0x176E9D5C700;
  *(a1 + 136) = 0;
  *(a1 + 48) = (v6 & ((v2 & 0x8A7D2DF ^ 0x6260428Du) + 0x7FFFFFFF9D9F2FADLL) ^ 0x7B49658091533B91 ^ v6 & 0x37299B52D6EE5A2BLL ^ 0x4209A5246AC402ALL) - (v6 & 0x37299B52D6EE5A2BLL ^ 0x4209A5246AC402ALL);
  *(a1 + 56) = 0x981390C2FED9246;
  *(a1 + 44) = 115;
  *(a1 + 112) = 0;
  *(a1 + 120) = v1;
  STACK[0x1FD8] = a1;
  v7 = STACK[0xE3C];
  v8 = STACK[0x1840];
  STACK[0x1520] = a1;
  LODWORD(STACK[0xF74]) = STACK[0x1DAC];
  LODWORD(STACK[0x1640]) = 705533083;
  STACK[0x11D0] = 0;
  LODWORD(STACK[0x8B8]) = v7 + v8 - 705533083;
  LODWORD(STACK[0x1698]) = v3;
  LOBYTE(STACK[0x1183]) = 1;
  return (*(v4 + 8 * (v2 & 0x8A7D2DF)))();
}

uint64_t sub_100610680()
{
  v1 = STACK[0xF10] + 11;
  v2 = STACK[0xF10] - 30246;
  LODWORD(STACK[0x8FDC]) = v0;
  v3 = STACK[0x49B0];
  v4 = (LODWORD(STACK[0x7738]) << (v1 ^ 0x42)) ^ 0xE9D5C711;
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v3;
  LODWORD(STACK[0x655C]) = v4;
  LODWORD(STACK[0x884C]) = -44483457;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1006106F4()
{
  v1 = *(STACK[0x6270] + 8);
  LODWORD(STACK[0x10ED8]) = v0 - 193924789 * ((2 * (((&STACK[0x10000] + 3800) ^ 0xCC0F75F5) & 0x4086CCF0) - ((&STACK[0x10000] + 3800) ^ 0xCC0F75F5) - 1082576113) ^ 0xC5CD749C) + 60374878;
  STACK[0x10EE0] = v1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 41720)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1006107A4()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] + 555;
  STACK[0x10EE0] = *STACK[0x50E0];
  LODWORD(STACK[0x10ED8]) = v0 - 193924789 * ((((2 * (&STACK[0x10000] + 3800)) | 0x7D1DEB08) - (&STACK[0x10000] + 3800) - 1049556356) ^ 0x8835C7E2) + 60349492;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 16334)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100610850()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + ((v0 - 966258494) & 0x3997FEFF) - 1841)))();
}

uint64_t sub_100610908()
{
  v1 = STACK[0xF18];
  STACK[0x9958] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x5D8F ^ ((v0 + 13) | 0x7200))))();
}

uint64_t sub_100610954(uint64_t a1)
{
  STACK[0xED0] = STACK[0x95C8] + 24;
  v2 = SLOWORD(STACK[0xAE06]);
  LODWORD(STACK[0xE70]) = v2;
  LODWORD(STACK[0xE40]) = v2 ^ 0x387C;
  STACK[0xEC0] = STACK[0x3828] + 24;
  v3 = SLOWORD(STACK[0xADC6]);
  LODWORD(STACK[0xE60]) = v3;
  LODWORD(STACK[0xE30]) = v3 ^ 0x7374;
  STACK[0xEB0] = STACK[0x5C10] + 24;
  STACK[0xEA0] = STACK[0x8810] + 24;
  v4 = *(STACK[0xF18] + 8 * (v1 - 24649));
  LODWORD(STACK[0xE90]) = STACK[0xAE08];
  LODWORD(STACK[0xD80]) = STACK[0xAE0C];
  v5 = STACK[0xF10];
  LODWORD(STACK[0xE20]) = STACK[0xF10] + 14678;
  LODWORD(STACK[0xE80]) = STACK[0xADC8];
  LODWORD(STACK[0xD70]) = STACK[0xADCC];
  v6 = (v5 + 1528918195) & 0xA4DEACBD;
  LODWORD(STACK[0xE10]) = STACK[0x1C34];
  LODWORD(STACK[0xD60]) = v6 - 19709;
  LODWORD(STACK[0xE00]) = STACK[0xA6F4];
  LODWORD(STACK[0xDF0]) = v5 - 21575;
  LODWORD(STACK[0xD90]) = v6;
  LODWORD(STACK[0xDE0]) = v6 - 43167;
  LODWORD(STACK[0xDD0]) = v5 - 7739;
  v7 = (v5 + 1898280079) & 0x8EDA2EBD;
  LODWORD(STACK[0xD50]) = v7;
  LODWORD(STACK[0xDC0]) = (2117 * (v5 ^ 0x8B3E) - 19342) ^ v7;
  LODWORD(STACK[0xDB0]) = v5 - 21330;
  LODWORD(STACK[0xDA0]) = v5 - 25579;
  return v4(a1, 0x684895FAE31DCC6CLL, 0x30B131F11BB74009, 0xDB05397F7548ABE5, 0xD87ADC859AB2F24, 0xB52FFCE62967CC61, 2013999969);
}

uint64_t sub_100610DBC@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0xF10];
  v3 = STACK[0xF10] - 25158;
  v4 = a1 + 16 * v1;
  if (v1 >= 5u)
  {
    v4 = 0;
  }

  v5 = STACK[0x8690];
  v6 = STACK[0x60C0];
  v7 = STACK[0x477C];
  v8 = 1112314453 * ((((&STACK[0x10000] + 3800) | 0xDD3A8F4F) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x22C570B0)) ^ 0x326CA596);
  LODWORD(STACK[0x10EF0]) = ((((STACK[0xF10] + 2113899821) | 0x81B20010) + 5116986) ^ 0x4A2A5773) + v8 + 1599993265 * LODWORD(STACK[0x477C]);
  STACK[0x10EE0] = v4;
  STACK[0x10EE8] = v5;
  LODWORD(STACK[0x10EDC]) = (v2 + 679158052) ^ v8;
  STACK[0x10EF8] = v6;
  LOWORD(STACK[0x10ED8]) = -28075 * ((((&STACK[0x10000] + 3800) | 0x8F4F) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x70B0)) ^ 0xA596) + 3771;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * (v2 + 16309)))(&STACK[0x10ED8]);
  v11 = (((LODWORD(STACK[0x74CC]) ^ 0x25BE29E8) - 633219560) ^ ((LODWORD(STACK[0x74CC]) ^ 0x9B73EC54) + 1686901676) ^ ((LODWORD(STACK[0x74CC]) ^ 0x571802AD) - 1461191341)) - 669515356;
  v12 = ((v7 - 297649516) < 0xEE423A93) ^ (v11 < 0xEE423A93);
  v13 = v7 - 297649516 > v11;
  if (v12)
  {
    v13 = (v7 - 297649516) < 0xEE423A93;
  }

  if (v13)
  {
    v14 = 371891407;
  }

  else
  {
    v14 = STACK[0x4E40];
  }

  return (*(v9 + 8 * ((28322 * (v14 == -371865839)) ^ v3)))(v10);
}

uint64_t sub_100610FC4()
{
  if (*(v0 + 56))
  {
    v3 = v2 == 33;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(STACK[0xF18] + 8 * ((v4 * (((v1 + 1144452034) & 0xBBC8EFBF) - 28336)) ^ (v1 + 9338))))();
}

uint64_t sub_10061106C()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x6777)))(STACK[0x72F0]);
  STACK[0x72F0] = STACK[0x6238];
  LODWORD(STACK[0x3110]) = STACK[0x204C];
  return (*(v1 + 8 * ((((STACK[0x7074] & 1) == 0) * ((v0 ^ 0xB770) - 54580 + 7 * (v0 ^ 0xB770))) ^ v0)))(v2);
}

uint64_t sub_1006110E0@<X0>(int a1@<W8>)
{
  v5 = 23958;
  atomic_compare_exchange_strong(v2, &v5, v3);
  return (*(STACK[0xF18] + 8 * (((v5 == v4) * v1) ^ a1)))();
}

uint64_t sub_10061112C()
{
  STACK[0x7548] = STACK[0x7BB0];
  STACK[0x77B0] = &STACK[0x90F8];
  LODWORD(STACK[0x648C]) = 468931406;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100611168@<X0>(unsigned int a1@<W8>)
{
  v6 = v3 < 0x668D51C4;
  *(v4 + v2) = *(v1 + v2) ^ *(v5 + v2) ^ 0x5F;
  if (v6 == (v2 + 1) > 0xFFFFFFFF9972AE3BLL)
  {
    v6 = v2 + 1720537541 < v3;
  }

  return (*(STACK[0xF18] + 8 * ((60 * !v6) ^ a1)))();
}

uint64_t sub_100611308(int a1)
{
  v2 = *(STACK[0xF18] + 8 * ((34224 * (a1 == ((v1 + 19927) ^ 0xE9D526A6 ^ (v1 + 844537674) & 0xCDA9CF3B))) ^ v1));
  STACK[0xE80] = 0x93BB533BC1BCE739;
  STACK[0xE70] = 0x6C44ACC43E4318C7;
  STACK[0xE60] = 0x61BA86513F3F699DLL;
  STACK[0xE40] = 0x9E4579AEC0C09663;
  STACK[0xE30] = 0xECB1AE4ADCEB8200;
  STACK[0xE20] = 0x134E51B523147E00;
  STACK[0xE10] = 0xFA6D41F0E4FEDD73;
  STACK[0xE00] = 0x1F27AC6D3C2F08C8;
  STACK[0xDF0] = 0xFBFA96BDFAB9DAEFLL;
  STACK[0xDE0] = 0x7AC7A1DF0DAC8107;
  return v2(0x645380963C478BE9, 0xCE55F862CA251711, 0xC04FB445F008235ALL, -1, 0x3FB04BBA0FF7DCA6, 0x3980F18260949CA1, 1724701217, 0xC67F0E7D9F6B635FLL);
}

uint64_t sub_100611508()
{
  v1 = STACK[0x39C8];
  STACK[0x36F0] = STACK[0x6F40];
  STACK[0x73E8] = v1;
  LODWORD(STACK[0x56B8]) = 744170666;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100611548@<X0>(int a1@<W8>)
{
  v3 = 0;
  v4 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x4BA6E21C)) ^ 0x4BA6E21ELL;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  v12 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v11;
  STACK[0xBC10] = 0;
  STACK[0xBC18] = v2;
  v13 = 16777619 * ((1269228062 * v12 + 7) ^ (1269228062 * v12)) % 7;
  v14 = 16777619 * ((1269228062 * v12 + 6) ^ (1269228062 * v12)) % 6;
  v15 = 16777619 * ((1269228062 * v12 + 5) ^ (1269228062 * v12)) % 5;
  v16 = *(&STACK[0xBC10] | v13);
  *(&STACK[0xBC10] | v13) = STACK[0xBC17];
  v17 = *(&STACK[0xBC10] | v14);
  *(&STACK[0xBC10] | v14) = STACK[0xBC16];
  v18 = *(&STACK[0xBC10] | v15);
  *(&STACK[0xBC10] | v15) = STACK[0xBC15];
  v19 = vdup_n_s32(1269228062 * v12);
  v20 = 16777619 * ((1269228062 * v12 + 3) ^ (1269228062 * v12)) % 3;
  v21.i32[0] = v19.i32[0];
  v21.i32[1] = (1269228062 * v12) | 1;
  LOBYTE(STACK[0xBC17]) = v16;
  v22 = veor_s8(vmul_s32(v21, v19), v19);
  LOBYTE(STACK[0xBC16]) = v17;
  LOBYTE(STACK[0xBC15]) = v18;
  v23 = STACK[0xBC10];
  LOBYTE(STACK[0xBC10]) = STACK[0xBC14];
  LOBYTE(STACK[0xBC14]) = v23;
  v24 = *(&STACK[0xBC10] | v20);
  *(&STACK[0xBC10] | v20) = STACK[0xBC13];
  LOBYTE(STACK[0xBC13]) = v24;
  v25 = STACK[0xBC11];
  LOBYTE(STACK[0xBC12]) = STACK[0xBC10];
  LOWORD(STACK[0xBC10]) = v25;
  STACK[0xBC10] = vmla_s32(v22, STACK[0xBC10], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBC18];
  v27 = (1269228062 * STACK[0xBC18]) ^ v12;
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

  while (v3 != 2176);
  v37 = 0;
  v38 = xmmword_100F52AB0;
  v39 = vdupq_n_s32(v27);
  v40 = xmmword_100F52AC0;
  v41 = v26 + 2176;
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
  v43 = 272;
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
  v48 = *(&STACK[0xBC18] + v13);
  *(&STACK[0xBC18] + v13) = STACK[0xBC1F];
  LOBYTE(STACK[0xBC1F]) = v48;
  v49 = *(&STACK[0xBC18] + v14);
  *(&STACK[0xBC18] + v14) = STACK[0xBC1E];
  LOBYTE(STACK[0xBC1E]) = v49;
  v50 = *(&STACK[0xBC18] + v15);
  *(&STACK[0xBC18] + v15) = STACK[0xBC1D];
  LOBYTE(STACK[0xBC1D]) = v50;
  v51 = STACK[0xBC18];
  LOBYTE(STACK[0xBC18]) = STACK[0xBC1C];
  LOBYTE(STACK[0xBC1C]) = v51;
  v52 = *(&STACK[0xBC18] + v20);
  *(&STACK[0xBC18] + v20) = STACK[0xBC1B];
  LOBYTE(STACK[0xBC1B]) = v52;
  v53 = STACK[0xBC19];
  LOBYTE(STACK[0xBC1A]) = STACK[0xBC18];
  LOWORD(STACK[0xBC18]) = v53;
  STACK[0xBC18] = vmla_s32(v22, STACK[0xBC18], vdup_n_s32(0x1000193u));
  *v1 = STACK[0xBC18] ^ STACK[0xBC10];
  return (*(STACK[0xF18] + 8 * (a1 ^ ((a1 + 8624170) | 0x4C84) ^ 0xFF7CA575 ^ (49197 * (a1 == 2105345371)))))();
}

uint64_t sub_100611A54@<X0>(uint64_t a1@<X8>)
{
  v3 = 634647737 * ((((2 * &STACK[0x10ED8]) | 0x760A7F8F8BFE7696) - &STACK[0x10ED8] - 0x3B053FC7C5FF3B4BLL) ^ 0xE1DE9028A86914B7);
  STACK[0x10EF0] = &STACK[0x5134];
  STACK[0x10EE0] = v1;
  STACK[0x10ED8] = (((v2 + 28586) | 0x312u) ^ 0x47272BD21B05A6E4) + v3 + (((a1 ^ 0x63924C9EB85EF8E0) - 0x6A1375927E66ADB7) ^ ((a1 ^ 0x3E7360808899CCDALL) - 0x37F2598C4EA1998DLL) ^ ((a1 ^ 0x5DE12C1ED912F32BLL) - 0x546015121F2ACBCCLL + 24 * (v2 ^ 0x19F1u)));
  LODWORD(STACK[0x10EE8]) = v3 + 40661 + v2;
  LODWORD(STACK[0x10EEC]) = v3 + 158809485;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 ^ 0xD394)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((26808 * (LODWORD(STACK[0x10EF8]) == -371865839)) ^ v2)))(v5);
}

uint64_t sub_100611C34@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x10ED8]) = (v1 + 11316) ^ (297845113 * ((~(&STACK[0x10000] + 3800) & 0xEDCD9839 | (&STACK[0x10000] + 3800) & 0x123267C0) ^ 0x9AFE84A7));
  STACK[0x10EE0] = a1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 28122)))(&STACK[0x10ED8]);
  STACK[0x22A8] = 0;
  *(STACK[0x76E0] - 0x43D8CBFA0CEB4284) = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100611CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  STACK[0x4B0] = v6;
  STACK[0x4B8] = v5;
  v7 = STACK[0xD40];
  v8 = (2 * LODWORD(STACK[0xD40])) ^ 0x3786;
  LODWORD(STACK[0xD50]) = *(*STACK[0xE50] + ((v8 + 2105981628) & *STACK[0xE58]));
  v9 = *(STACK[0xF18] + 8 * v7);
  STACK[0xE80] = 0xE1F25C61A69CCBFBLL;
  v10 = 24781 * ((2 * v7) ^ 0x37B4);
  LODWORD(STACK[0xC20]) = v10;
  LODWORD(STACK[0xD40]) = v10 ^ 0xC199;
  LODWORD(STACK[0xE70]) = v8;
  LODWORD(STACK[0xD30]) = v8 + 7083;
  return v9(970080887, a2, a3, a4, a5, 0xC09F73E88E7BB6A2, 2336, 1337);
}

uint64_t sub_100611DC8()
{
  STACK[0x3C48] = STACK[0x5870];
  LODWORD(STACK[0x545C]) = STACK[0x3EA0];
  v3 = STACK[0x7690];
  STACK[0x3B98] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = (v0 ^ 0x87E1u) - 29747 + v3 - 5848;
  v4 = *(STACK[0x6ED8] - 0x7E666516A39B34A6);
  v5 = STACK[0x6600] ^ 0xE74734B2971F82B6;
  v6 = 155453101 * ((~v2 & 0x958607EEDC86FFFELL | v2 & 0x6A79F81123790000) ^ 0x29F1591B3AA0E431);
  LODWORD(STACK[0x10EF8]) = v0 - v6 + 377;
  STACK[0x10F00] = &STACK[0xF28] ^ 0xCBE8294556449AC1;
  STACK[0x10F08] = v5 - v6;
  LOBYTE(STACK[0x10EE8]) = -83 * (~v2 & 0xFE ^ 0x31) + 56;
  STACK[0x10EE0] = v4;
  STACK[0x10EF0] = &STACK[0x3340];
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v0 ^ 0xC7A1)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * ((24890 * (LODWORD(STACK[0x10ED8]) == v1)) ^ v0)))(v8);
}

uint64_t sub_100611F18@<X0>(uint64_t a1@<X8>)
{
  v3 = (((v1 ^ 0xA4D030D) - 172819213) ^ ((v1 ^ 0xCA425FAD) + 901619795) ^ (((v2 - 354393949) & 0x151F3BBF ^ 0xD6254574) + (v1 ^ 0x29DA9BB1))) + ((v2 + 1635) ^ 0x1BEAE008);
  *(a1 + 192) = v3 ^ ((v3 ^ 0x69A636A8) - 1538429598) ^ ((v3 ^ 0x1A5F8A5C) - 676015722) ^ ((v3 ^ 0x9E12E63B) + 1408876019) ^ ((v3 ^ 0xDFFFFEF9) + 303342897) ^ 0xDBC16327;
  v4 = STACK[0x1E30];
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v2 + 17856)))(*(STACK[0x1E30] + 192) ^ 0xE9D5C711);
  *(v4 + 184) = v6;
  return (*(v5 + 8 * (((v6 == 0) | (2 * (v6 == 0))) ^ v2)))();
}

uint64_t sub_10061206C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x3FB0]) = STACK[0x5CBC];
  STACK[0x84D0] = STACK[0x39A8];
  LODWORD(STACK[0x376C]) = -371865839;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1006120A4()
{
  v1 = STACK[0xF10] - 19259;
  v2 = (LOBYTE(STACK[0x44D7]) + 78) * (v0 - 74) + 70 * v0 - 28;
  v3 = v2 & 0xC2 | 0x31;
  v4 = v2 ^ (STACK[0xF10] - 3291);
  *(STACK[0x4CC0] + LODWORD(STACK[0x651C])) = v2 ^ (2 * (v4 & (2 * (v4 & (2 * (v4 & (2 * (v4 & (2 * (v4 & (2 * (v4 & 0x22 ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ 0x9D;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1006122A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v12[1];
  v15 = v12[82] ^ v12[49];
  v16 = ((v12[50] - ((2 * v12[50]) & 0x2C02BA74) + v9) ^ *(a8 + 4 * ((((v8 + 182362138) & 0xCA137B1B) - 22779) & *v12))) + (((v15 ^ 0x7B24BAE7) - 1820576376) ^ ((v15 ^ 0xCAD114F6) + 579443607) ^ ((v15 ^ 0x8A63B025) + 1648049990)) * v10 + v11;
  v12[50] = v16;
  v17 = v12[52];
  v18 = ((v12[51] - ((2 * v12[51]) & 0x2C02BA74) + v9) ^ *(a8 + 4 * (v14 & 0x1F))) + (((v16 ^ v12[83] ^ 0x7B24BAE7) - 1820576376) ^ ((v16 ^ v12[83] ^ 0xCAD114F6) + 579443607) ^ ((v16 ^ v12[83] ^ 0x8A63B025) + 1648049990)) * v10 + v11;
  v12[51] = v18;
  v19 = v12[3];
  v20 = ((v17 - ((2 * v17) & 0x2C02BA74) + v9) ^ *(a8 + 4 * (v12[2] & 0x1FLL))) + (((v18 ^ v12[84] ^ 0x7B24BAE7) - 1820576376) ^ ((v18 ^ v12[84] ^ 0xCAD114F6) + 579443607) ^ ((v18 ^ v12[84] ^ 0x8A63B025) + 1648049990)) * v10 + v11;
  v12[52] = v20;
  v21 = v12[54];
  v22 = ((v12[53] - ((2 * v12[53]) & 0x2C02BA74) + v9) ^ *(a8 + 4 * (v19 & 0x1F))) + (((v20 ^ v12[85] ^ 0x7B24BAE7) - 1820576376) ^ ((v20 ^ v12[85] ^ 0xCAD114F6) + 579443607) ^ ((v20 ^ v12[85] ^ 0x8A63B025) + 1648049990)) * v10 + v11;
  v12[53] = v22;
  v23 = v12[5];
  v24 = ((v21 - ((2 * v21) & 0x2C02BA74) + v9) ^ *(a8 + 4 * (v12[4] & 0x1FLL))) + (((v22 ^ v12[86] ^ 0x7B24BAE7) - 1820576376) ^ ((v22 ^ v12[86] ^ 0xCAD114F6) + 579443607) ^ ((v22 ^ v12[86] ^ 0x8A63B025) + 1648049990)) * v10 + v11;
  v12[54] = v24;
  v25 = v12[56];
  v26 = ((v12[55] - ((2 * v12[55]) & 0x2C02BA74) + v9) ^ *(a8 + 4 * (v23 & 0x1F))) + (((v24 ^ v12[87] ^ 0x7B24BAE7) - 1820576376) ^ ((v24 ^ v12[87] ^ 0xCAD114F6) + 579443607) ^ ((v24 ^ v12[87] ^ 0x8A63B025) + 1648049990)) * v10 + v11;
  v12[55] = v26;
  v12[56] = ((v25 - ((2 * v25) & 0x2C02BA74) + v9) ^ *(a8 + 4 * (v12[6] & 0x1F))) + (((v26 ^ v12[88] ^ 0x7B24BAE7) - 1820576376) ^ ((v26 ^ v12[88] ^ 0xCAD114F6) + 579443607) ^ ((v26 ^ v12[88] ^ 0x8A63B025) + 1648049990)) * v10 + v11;
  return (*(v13 + 8 * (v8 ^ 0x2B0E32C9 ^ (17889 * (v8 < 0x42B92A64)))))();
}

uint64_t sub_1006125E0()
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
  STACK[0xC020] = 0;
  STACK[0xC028] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC020] | v10);
  *(&STACK[0xC020] | v10) = 0;
  LOBYTE(STACK[0xC027]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC020] | v12);
  *(&STACK[0xC020] | v12) = STACK[0xC026];
  LOBYTE(STACK[0xC026]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC020] | v14);
  *(&STACK[0xC020] | v14) = STACK[0xC025];
  LOBYTE(STACK[0xC025]) = v15;
  v16 = STACK[0xC020];
  LOBYTE(STACK[0xC020]) = STACK[0xC024];
  LOBYTE(STACK[0xC024]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC020] | v17);
  *(&STACK[0xC020] | v17) = STACK[0xC023];
  LOBYTE(STACK[0xC023]) = v18;
  v19 = STACK[0xC021];
  LOBYTE(STACK[0xC022]) = STACK[0xC020];
  LOWORD(STACK[0xC020]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC020] = vmla_s32(v22, STACK[0xC020], vdup_n_s32(0x1000193u));
  STACK[0xC028] ^= STACK[0xC020];
  STACK[0xC028] = vmul_s32(vsub_s32(STACK[0xC028], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC02A];
  LOWORD(STACK[0xC029]) = STACK[0xC028];
  LOBYTE(STACK[0xC028]) = v23;
  v24 = (&STACK[0xC028] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC02B];
  LOBYTE(STACK[0xC02B]) = v19;
  LOBYTE(v24) = STACK[0xC028];
  LOBYTE(STACK[0xC028]) = STACK[0xC02C];
  LOBYTE(STACK[0xC02C]) = v24;
  v25 = (&STACK[0xC028] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC02D];
  LOBYTE(STACK[0xC02D]) = v24;
  v26 = (&STACK[0xC028] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC02E];
  LOBYTE(STACK[0xC02E]) = v25;
  v27 = (&STACK[0xC028] | v10);
  v28 = *v27;
  *v27 = STACK[0xC02F];
  LOBYTE(STACK[0xC02F]) = v28;
  v29 = STACK[0xC028];
  v30 = (553300517 * STACK[0xC028]) ^ v9;
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
  v43 = STACK[0x940];
  do
  {
    v44 = *(v29 + v35);
    v45 = vmovl_high_u8(v44);
    v46 = vmovl_u8(*v44.i8);
    v57.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v38, v42), vsubq_s32(v38, v42)), v42), vmull_high_u16(v46, v40));
    v57.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v37, v42), vsubq_s32(v37, v42)), v42), vmull_u16(*v45.i8, 0x9B009B009B009BLL));
    v57.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v39, v42), vsubq_s32(v39, v42)), v42), vmull_u16(*v46.i8, 0x9B009B009B009BLL));
    v57.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v36, v42), vsubq_s32(v36, v42)), v42), vmull_high_u16(v45, v40));
    *(v29 + v35) = vqtbl4q_s8(v57, xmmword_100BC7660);
    v35 += 16;
    v39 = vaddq_s32(v39, v41);
    v38 = vaddq_s32(v38, v41);
    v37 = vaddq_s32(v37, v41);
    v36 = vaddq_s32(v36, v41);
  }

  while (v35 != 576);
  v47 = 0;
  v48 = xmmword_100F52AE0;
  v49 = xmmword_100F52AF0;
  v50 = vdupq_n_s32(v30);
  v51 = v29 + 576;
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
  *v43 = STACK[0xC028];
  return (*(STACK[0xF18] + 8 * ((v1 ^ 0xC3C4) - 17152)))(v48, v49);
}

uint64_t sub_100612BAC(uint64_t a1)
{
  *a1 = v2;
  *(a1 + 16) = 0;
  *(a1 + 4) = 0x21E23A8900000000;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 ^ 0x84E0)))((8 * v2) ^ 0x4EAE3888u);
  *(a1 + 16) = v5;
  return (*(v4 + 8 * (((v5 == 0) * (((v1 - 616329853) & 0x24BCAF3F) - 35429)) ^ v1)))();
}

uint64_t sub_100612C28(uint64_t a1)
{
  *a1 = 807566967;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 37147)))(40000);
  *(a1 + 16) = v4;
  return (*(v3 + 8 * (((v4 == 0) * ((1838 * (v1 ^ 0x3975)) ^ ((v1 ^ 0xB246) + 6775))) ^ v1)))();
}

uint64_t sub_100612D1C(uint64_t a1)
{
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v4 ^ 0xCB8F)))((v2 + v3), a1, *v1);
  v7 = v4 | ((v4 + 0x7FFFFFFF) << 32);
  v8 = (((v4 + 757620348) ^ 0x5F7EDFB5C37761A6 ^ v6) + 0x2081204A11A0C025 + ((2 * v6) & 0xBEFDBF6BDCBE7FB6)) ^ v7;
  return (*(v5 + 8 * ((196 * ((((v8 & v7) >> (__clz(v8 | 1) ^ 0x3Fu)) & 1) == 0)) ^ (v4 | 0x5352))))();
}

uint64_t sub_100612F20()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 27798)))(v2);
}

uint64_t sub_100612F4C()
{
  STACK[0xE90] = v2;
  v3 = (v1 - 2247) | 0x151;
  STACK[0xED0] = *(v0 + 112);
  LODWORD(STACK[0xEB0]) = v3 ^ 0xDF58E51F;
  STACK[0xEA0] = STACK[0x13D0];
  return (*(STACK[0xF18] + 8 * v3))(3619738766, 4018015762);
}

uint64_t sub_10061307C()
{
  v0 = STACK[0xF10] - 28333;
  v1 = STACK[0xF10] - 659222316;
  LODWORD(STACK[0x1C54]) = LODWORD(STACK[0x6FC8]) + 4;
  STACK[0x43E8] = STACK[0x2C78];
  LODWORD(STACK[0x44B4]) = -371865840;
  LODWORD(STACK[0x2CE8]) = -724802678;
  LODWORD(STACK[0xED0]) = v0;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0xD8B59AB4 ^ ((v1 > 0x8655F573) * (v0 ^ 0x3E7C)))))();
}

uint64_t sub_100613160()
{
  STACK[0x3A8] = v3;
  STACK[0x380] = v1;
  STACK[0x388] = v2;
  STACK[0x398] = &STACK[0xC4D0] + v2;
  return (*(STACK[0xF18] + 8 * (v0 - 8852)))();
}

uint64_t sub_100613194()
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
  STACK[0xBFD8] = v0;
  STACK[0xBFD0] = 0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xBFD0] | v10);
  *(&STACK[0xBFD0] | v10) = 0;
  LOBYTE(STACK[0xBFD7]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xBFD0] | v12);
  *(&STACK[0xBFD0] | v12) = STACK[0xBFD6];
  LOBYTE(STACK[0xBFD6]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xBFD0] | v14);
  *(&STACK[0xBFD0] | v14) = STACK[0xBFD5];
  LOBYTE(STACK[0xBFD5]) = v15;
  v16 = STACK[0xBFD0];
  LOBYTE(STACK[0xBFD0]) = STACK[0xBFD4];
  LOBYTE(STACK[0xBFD4]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xBFD0] | v17);
  *(&STACK[0xBFD0] | v17) = STACK[0xBFD3];
  LOBYTE(STACK[0xBFD3]) = v18;
  v19 = STACK[0xBFD1];
  LOBYTE(STACK[0xBFD2]) = STACK[0xBFD0];
  LOWORD(STACK[0xBFD0]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xBFD0] = vmla_s32(v22, STACK[0xBFD0], vdup_n_s32(0x1000193u));
  STACK[0xBFD8] ^= STACK[0xBFD0];
  STACK[0xBFD8] = vmul_s32(vsub_s32(STACK[0xBFD8], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xBFDA];
  LOWORD(STACK[0xBFD9]) = STACK[0xBFD8];
  LOBYTE(STACK[0xBFD8]) = v23;
  v24 = (&STACK[0xBFD8] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xBFDB];
  LOBYTE(STACK[0xBFDB]) = v19;
  LOBYTE(v24) = STACK[0xBFD8];
  LOBYTE(STACK[0xBFD8]) = STACK[0xBFDC];
  LOBYTE(STACK[0xBFDC]) = v24;
  v25 = (&STACK[0xBFD8] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xBFDD];
  LOBYTE(STACK[0xBFDD]) = v24;
  v26 = (&STACK[0xBFD8] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xBFDE];
  LOBYTE(STACK[0xBFDE]) = v25;
  v27 = (&STACK[0xBFD8] | v10);
  v28 = *v27;
  *v27 = STACK[0xBFDF];
  LOBYTE(STACK[0xBFDF]) = v28;
  v29 = STACK[0xBFD8];
  v30 = (553300517 * STACK[0xBFD8]) ^ v9;
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
  *STACK[0x940] = STACK[0xBFD8];
  return (*(STACK[0xF18] + 8 * ((9009 * (v1 < 0x2831A5D7)) ^ (v1 + 2137872940))))(v47, v48);
}

uint64_t sub_10061365C@<X0>(char a1@<W5>, int a2@<W8>)
{
  v4 = STACK[0xED0];
  v5 = (((*STACK[0xED0] ^ 9) - 9) ^ ((*STACK[0xED0] ^ 0xBB) + 69) ^ ((*STACK[0xED0] ^ 0xED) + 19)) - 8;
  v6 = v5 & 0xB9 ^ 0xF1;
  v7 = v5 ^ 0x56;
  *STACK[0xED0] = v5 ^ (2 * (v7 & (2 * (v7 & (2 * (v7 & (2 * (v7 & (2 * (v7 & (2 * (((2 * v5) & 0x2E ^ 0x6E) & (v5 ^ 0x46) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ 0xE6;
  if (a2 == -347583231)
  {
    v8 = v4;
  }

  else
  {
    v8 = (v4 + 1);
  }

  v9 = (((*v8 ^ 0xFC) + 4) ^ ((*v8 ^ 0x2A) - 42) ^ ((*v8 ^ 0x89) + 119)) - 13;
  v10 = v9 & 0x7A ^ 0xD7;
  *v8 = v9 ^ (2 * ((v9 ^ 0x5C) & (2 * ((v9 ^ 0x5C) & (2 * ((v9 ^ 0x5C) & (2 * ((v9 ^ 0x5C) & (2 * ((v9 ^ 0x5C) & (2 * (v10 ^ v9 & 0x26)) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ 0x25;
  v11 = 2 % (a2 ^ 0xEB484D00);
  v12 = (((*(v4 + v11) ^ 0xFD) + 3) ^ ((*(v4 + v11) ^ 0xE5) + 27) ^ ((*(v4 + v11) ^ 0x47) - 71)) + 59;
  v13 = v12 & 0x6A ^ 0x6B;
  *(v4 + v11) = v12 ^ (2 * ((v12 ^ 0x14) & (2 * ((v12 ^ 0x14) & (2 * ((v12 ^ 0x14) & (2 * ((v12 ^ 0x14) & (2 * ((v12 ^ 0x14) & (2 * (v12 & (2 * v13) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ 0x35;
  v14 = STACK[0x11DC];
  v15 = LODWORD(STACK[0x11DC]) ^ 0xEB484D00;
  v16 = ((*(v4 + 3 % v15) ^ 0x20) - 32) ^ ((*(v4 + 3 % v15) ^ 0x8F) + 113) ^ ((*(v4 + 3 % v15) ^ 0xF0) + 16);
  v17 = (v16 + 76) & 0x37 ^ 0x5A;
  v18 = (v16 + 76) ^ 2;
  *(v4 + 3 % v15) = (v16 + 76) ^ (2 * (v18 & (2 * (v18 & (2 * (v18 & (2 * (v18 & (2 * (v18 & (2 * (v18 & (2 * v16) & 6 ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ 0x68;
  v19 = ((*(v4 + 4 % v15) ^ 0x7A) - 122) ^ ((*(v4 + 4 % v15) ^ 0xC5) + 59) ^ ((*(v4 + 4 % v15) ^ 0xE0) + 32);
  v20 = (2 * (v19 & 0xF)) ^ 0x7A;
  v19 += 64;
  v21 = v19 & 0xF5 ^ 0x37;
  *(v4 + 4 % v15) = v19 ^ (2 * ((v19 ^ 0xE) & (2 * ((v19 ^ 0xE) & (2 * ((v19 ^ 0xE) & (2 * ((v19 ^ 0xE) & (2 * ((v19 ^ 0xE) & (2 * (v20 & (v19 ^ 0xE) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ 0xAA;
  v22 = (((v3 ^ 0xE8) - 14) ^ ((v3 ^ 0xD) + 21) ^ ((v3 ^ 0x9D) - 123)) + (((*(v4 + 5 % v15) ^ 0x14) - 20) ^ ((*(v4 + 5 % v15) ^ 0xA1) + 95) ^ ((*(v4 + 5 % v15) ^ 0xEA) + 22)) + 88;
  v23 = v22 & 0x4D ^ 0xD4;
  *(v4 + 5 % v15) = v22 ^ (2 * ((v22 ^ 0x24) & (2 * ((v22 ^ 0x24) & (2 * ((v22 ^ 0x24) & (2 * ((v22 ^ 0x24) & (2 * ((v22 ^ 0x24) & (2 * (((2 * v22) & 0x4A | 0x25) & v22)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ 0x12;
  v24 = ((((a1 - v2 + 58) ^ 0xA8) + 9) ^ (((a1 - v2 + 58) ^ 0x89) + 42) ^ (((a1 - v2 + 58) ^ 0x1B) - 68)) + (((*(v4 + 6 % v15) ^ 0x7B) - 123) ^ ((*(v4 + 6 % v15) ^ 0x3B) - 59) ^ ((*(v4 + 6 % v15) ^ 0x1F) - 31)) + 33;
  v25 = v24 & 0x73 ^ 0xE8;
  *(v4 + 6 % v15) = v24 ^ (2 * ((v24 ^ 0x22) & (2 * ((v24 ^ 0x22) & (2 * ((v24 ^ 0x22) & (2 * ((v24 ^ 0x22) & (2 * ((v24 ^ 0x22) & (2 * ((v24 ^ 2) & (2 * v24) & 0x46 ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ 0x2C;
  v26 = (((*(v4 + 7 % v15) ^ 0xA5) + 91) ^ ((*(v4 + 7 % v15) ^ 0xC2) + 62) ^ ((*(v4 + 7 % v15) ^ 0x38) - 56)) - 23;
  v27 = v26 & 0x90 ^ 0xDD;
  *(v4 + 7 % v15) = v26 ^ (2 * ((v26 ^ 0x66) & (2 * ((v26 ^ 0x66) & (2 * ((v26 ^ 0x66) & (2 * ((v26 ^ 0x66) & (2 * ((v26 ^ 0x66) & (2 * ((v26 ^ 0x66) & 0x36 ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ 0xCF;
  v15 = 8 % v15;
  v28 = (((*(v4 + v15) ^ 0xCD) + 51) ^ ((*(v4 + v15) ^ 0x24) - 36) ^ ((*(v4 + v15) ^ 0xB6) + 74)) - 53;
  v29 = v28 & 0x47 ^ 0xFA;
  *(v4 + v15) = v28 ^ (2 * ((v28 ^ 0x12) & (2 * ((v28 ^ 0x12) & (2 * ((v28 ^ 0x12) & (2 * ((v28 ^ 0x12) & (2 * ((v28 ^ 0x12) & (2 * ((v28 ^ 0x12) & (2 * v28) & 0x26 ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ 0x18;
  v30 = v14 ^ 0xEB484D00;
  v31 = 9 % (v14 ^ 0xEB484D00);
  v32 = (((LODWORD(STACK[0xE30]) ^ 0xFFFFFFDF) + 86) ^ ((LODWORD(STACK[0xE30]) ^ 0x57) - 34) ^ ((LODWORD(STACK[0xE30]) ^ 0xFFFFFFBE) + 53)) + (((*(v4 + v31) ^ 0x3F) - 63) ^ ((*(v4 + v31) ^ 0x73) - 115) ^ ((*(v4 + v31) ^ 0x13) - 19)) + 13;
  LOBYTE(v14) = v32 & 0xDF ^ 0x25;
  *(v4 + v31) = v32 ^ (2 * ((v32 ^ 0x14) & (2 * ((v32 ^ 0x14) & (2 * ((v32 ^ 0x14) & (2 * ((v32 ^ 0x14) & (2 * ((v32 ^ 0x14) & (2 * ((v32 ^ 0x14) & (2 * v14) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ 0x80;
  v33 = (((*(v4 + 0xA % v30) ^ 0xB7) + 73) ^ ((*(v4 + 0xA % v30) ^ 0x4A) - 74) ^ ((*(v4 + 0xA % v30) ^ 0xA2) + 94)) - 53;
  v34 = v33 & 0x7D ^ 0x75;
  *(v4 + 0xA % v30) = v33 ^ (2 * ((v33 ^ 0x12) & (2 * ((v33 ^ 0x12) & (2 * ((v33 ^ 0x12) & (2 * ((v33 ^ 0x12) & (2 * ((v33 ^ 0x12) & (2 * ((((2 * v33) & 0x26 ^ 0xEE) & 2 | v34) ^ ((2 * v33) & 0x26 ^ 0xEE) & v33)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ 0x22;
  v35 = LODWORD(STACK[0xDF0]) / 5 - ((2 * (LODWORD(STACK[0xDF0]) / 5)) & 0x7FFFFF9A) - 51;
  v36 = (((v35 ^ 0x8D) - 29) ^ ((v35 ^ 9) + 103) ^ ((v35 ^ 0xB6) - 38)) + (((*(v4 + 0xB % v30) ^ 0x5B) - 91) ^ ((*(v4 + 0xB % v30) ^ 0xE1) + 31) ^ ((*(v4 + 0xB % v30) ^ 0xE5) + 27)) + 56;
  LOBYTE(v35) = v36 & 0x3F ^ 0x3B;
  *(v4 + 0xB % v30) = v36 ^ (2 * ((v36 ^ 0x48) & (2 * ((v36 ^ 0x48) & (2 * ((v36 ^ 0x48) & (2 * ((v36 ^ 0x48) & (2 * ((v36 ^ 0x48) & (2 * (((2 * v36) & 0x12 ^ 0x76) & v36 ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ 0x60;
  v37 = STACK[0x11DC];
  v38 = LODWORD(STACK[0x11DC]) ^ 0xEB484D00;
  LOBYTE(v31) = (((*(v4 + 0xC % v38) ^ 0xEE) + 18) ^ ((*(v4 + 0xC % v38) ^ 0x47) - 71) ^ ((*(v4 + 0xC % v38) ^ 0xF6) + 10)) + 111;
  v39 = v31 & 0x4B ^ 0x76;
  *(v4 + 0xC % v38) = v31 ^ (2 * ((v31 ^ 0x6E) & (2 * ((v31 ^ 0x6E) & (2 * ((v31 ^ 0x6E) & (2 * ((v31 ^ 0x6E) & (2 * ((v31 ^ 0x6E) & (2 * ((v31 ^ 0x6E) & (2 * v31) & 0x5E ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ 0x14;
  LOBYTE(v32) = (((*(v4 + 0xD % v38) ^ 0x92) + 110) ^ ((*(v4 + 0xD % v38) ^ 7) - 7) ^ ((*(v4 + 0xD % v38) ^ 0xCA) + 54)) + 59;
  v40 = v32 & 0x9F ^ 0xB0;
  *(v4 + 0xD % v38) = v32 ^ (2 * ((v32 ^ 0x3E) & (2 * ((v32 ^ 0x3E) & (2 * ((v32 ^ 0x3E) & (2 * ((v32 ^ 0x3E) & (2 * ((v32 ^ 0x3E) & (2 * ((v32 ^ 0x3E) & (2 * v32) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ 0xC0;
  v41 = (((*(v4 + 0xE % v38) ^ 0x32) - 50) ^ ((*(v4 + 0xE % v38) ^ 0xE8) + 24) ^ ((*(v4 + 0xE % v38) ^ 0x85) + 123)) - 101;
  v42 = v41 & 0x29 ^ 0xB7;
  *(v4 + 0xE % v38) = v41 ^ (2 * ((v41 ^ 0x42) & (2 * ((v41 ^ 0x42) & (2 * ((v41 ^ 0x42) & (2 * ((v41 ^ 0x42) & (2 * ((v41 ^ 0x42) & (2 * (((2 * (v41 & 3)) ^ 0x6A) & (v41 ^ 0x42) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ 0x76;
  v37 ^= 0xEB484D00;
  v43 = (((*(v4 + 0xF % v37) ^ 0x63) - 99) ^ *(v4 + 0xF % v37) ^ ((*(v4 + 0xF % v37) ^ 0xBC) + 68)) - 61;
  v44 = v43 & 0x75 ^ 0x7D;
  *(v4 + 0xF % v37) = v43 ^ (2 * ((v43 ^ 0x1A) & (2 * ((v43 ^ 0x1A) & (2 * ((v43 ^ 0x1A) & (2 * ((v43 ^ 0x1A) & (2 * ((v43 ^ 0x1A) & (2 * (((2 * v43) & 0x36 ^ 0x6E) & (v43 ^ 0x1A) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ 0x2A;
  v45 = *(v4 + 0x10 % v37);
  v46 = (((LODWORD(STACK[0xE60]) ^ 0xFFFFFFCC) - 3) ^ ((LODWORD(STACK[0xE60]) ^ 0x71) + 66) ^ ((LODWORD(STACK[0xE60]) ^ 0xFFFFFFFB) - 52)) + (((v45 ^ 0x72) - 114) ^ ((v45 ^ 0x4A) - 74) ^ ((v45 ^ 0x67) - 103)) + 50;
  v47 = v46 & 0x58 ^ 0x51;
  v48 = v46 ^ 0x36;
  *(v4 + 0x10 % v37) = v46 ^ (2 * (v48 & (2 * (v48 & (2 * (v48 & (2 * (v48 & (2 * (v48 & (2 * ((v47 | 0x2E) ^ v46 & 0x2E)) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ 7;
  v49 = 0x11 % v37;
  LOBYTE(v37) = ((*(v4 + 0x11 % v37) ^ 0x30) - 48) ^ ((*(v4 + 0x11 % v37) ^ 0xBB) + 69) ^ ((*(v4 + 0x11 % v37) ^ 0xD4) + 44);
  v50 = (v37 + 16) & 0x88;
  LOBYTE(v37) = v37 - 112;
  v51 = (v50 | 0x14) ^ v37 & 0x38;
  *(v4 + v49) = v37 ^ (2 * ((v37 ^ 8) & (2 * ((v37 ^ 8) & (2 * ((v37 ^ 8) & (2 * ((v37 ^ 8) & (2 * (v37 & (2 * v51) ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ 0xEF;
  v52 = STACK[0x11DC];
  v53 = LODWORD(STACK[0x11DC]) ^ 0xEB484D00;
  v54 = *(v4 + 0x12 % v53);
  v55 = (((v54 ^ 0xFFFFFF9A) + 102) ^ ((v54 ^ 0x3F) - 63) ^ ((v54 ^ 0xFFFFFFFA) + 6)) + (((LODWORD(STACK[0xE80]) ^ 0xFFFFFFE0) - 120) ^ ((LODWORD(STACK[0xE80]) ^ 0x7D) + 27) ^ ((LODWORD(STACK[0xE80]) ^ 0xFFFFFF85) - 29));
  v56 = v55 + 48;
  LOBYTE(v55) = v55 & 1;
  *(v4 + 0x12 % v53) = v56 ^ (2 * ((v56 ^ 0x2E) & (2 * ((v56 ^ 0x2E) & (2 * ((v56 ^ 0x2E) & (2 * ((v56 ^ 0x2E) & (2 * ((v56 ^ 0x2E) & (2 * (((2 * v55) ^ 0x2E) & (v56 ^ 0x2E) ^ v55 ^ 0x79)) ^ v55 ^ 0x79)) ^ v55 ^ 0x79)) ^ v55 ^ 0x79)) ^ v55 ^ 0x79)) ^ v55 ^ 0x79)) ^ 0x5E;
  LOBYTE(v49) = (((*(v4 + 0x13 % v53) ^ 0xE9) + 23) ^ *(v4 + 0x13 % v53) ^ ((*(v4 + 0x13 % v53) ^ 0xB6) + 74)) - 124;
  LOBYTE(v14) = (v49 & 0x94 | 0x22) ^ v49 & 0x4C;
  *(v4 + 0x13 % v53) = v49 ^ (2 * ((v49 ^ 0x14) & (2 * ((v49 ^ 0x14) & (2 * ((v49 ^ 0x14) & (2 * ((v49 ^ 0x14) & (2 * ((v49 ^ 0x14) & (2 * v14) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ 0x87;
  LOBYTE(v49) = (((*(v4 + 0x14 % v53) ^ 0xDF) + 33) ^ ((*(v4 + 0x14 % v53) ^ 0x68) - 104) ^ ((*(v4 + 0x14 % v53) ^ 0xE8) + 24)) + 74;
  LOBYTE(v14) = v49 & 0x12 ^ 0xA2;
  *(v4 + 0x14 % v53) = v49 ^ (2 * ((v49 ^ 0x4C) & (2 * ((v49 ^ 0x4C) & (2 * ((v49 ^ 0x4C) & (2 * ((v49 ^ 0x4C) & (2 * ((v49 ^ 0x4C) & (2 * v14) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ 0x4D;
  v57 = 0x15 % (v52 ^ 0xEB484D00);
  v58 = (((*(v4 + v57) ^ 0xCC) + 52) ^ ((*(v4 + v57) ^ 0x9D) + 99) ^ ((*(v4 + v57) ^ 0xE) - 14)) + 116;
  v59 = v58 & 0xE0 ^ 0x26;
  *(v4 + v57) = v58 ^ (2 * ((v58 ^ 0x24) & (2 * ((v58 ^ 0x24) & (2 * ((v58 ^ 0x24) & (2 * (((2 * (v59 ^ v58 & 0x44)) ^ 8) & (v58 ^ 0x24) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ 0xBF;
  v60 = 0x16 % (v52 ^ 0xEB484D00);
  v61 = (((*(v4 + v60) ^ 0xC6) + 58) ^ ((*(v4 + v60) ^ 0xFC) + 4) ^ ((*(v4 + v60) ^ 0x65) - 101)) - 115;
  v62 = v61 & 0x23 | 0x5C;
  *(v4 + v60) = v61 ^ (2 * ((v61 ^ 0xA) & (2 * ((v61 ^ 0xA) & (2 * ((v61 ^ 0xA) & (2 * ((v61 ^ 0xA) & (2 * ((v61 ^ 0xA) & (2 * ((v61 ^ 0xA) & (2 * (v61 & 0x23)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ 0x7C;
  v63 = 0x17 % (v52 ^ 0xEB484D00);
  LOBYTE(v60) = (((*(v4 + v63) ^ 0xC9) + 55) ^ ((*(v4 + v63) ^ 0x37) - 55) ^ ((*(v4 + v63) ^ 0xA1) + 95)) + 60;
  v64 = v60 & 0x6A ^ 0xCF;
  *(v4 + v63) = v60 ^ (2 * ((v60 ^ 0x5C) & (2 * ((v60 ^ 0x5C) & (2 * ((v60 ^ 0x5C) & (2 * ((v60 ^ 0x5C) & (2 * ((v60 ^ 0x5C) & (2 * (v64 ^ v60 & 0x36)) ^ v64)) ^ v64)) ^ v64)) ^ v64)) ^ v64)) ^ 0x35;
  v65 = STACK[0x11DC];
  v66 = LODWORD(STACK[0x11DC]) ^ 0xEB484D00;
  v67 = *(v4 + 0x18 % v66);
  v68 = (LODWORD(STACK[0xE10]) ^ LODWORD(STACK[0xE40]) ^ 0x55) + (((v67 ^ 0xC) - 12) ^ ((v67 ^ 0x7C) - 124) ^ ((v67 ^ 0x2F) - 47));
  v69 = 100 - v68;
  LOBYTE(v68) = v68 - 101;
  v70 = (v69 & 0xC4 | 0x38) ^ v68 & 0x78;
  *(v4 + 0x18 % v66) = v68 ^ (2 * ((v68 ^ 0x44) & (2 * ((v68 ^ 0x44) & (2 * ((v68 ^ 0x44) & (2 * ((v68 ^ 0x44) & (2 * ((v68 ^ 0x44) & (2 * v70) ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ 0xE3;
  LOBYTE(v68) = (((*(v4 + 0x19 % v66) ^ 0x14) - 20) ^ ((*(v4 + 0x19 % v66) ^ 0xAA) + 86) ^ ((*(v4 + 0x19 % v66) ^ 0xE1) + 31)) - 19;
  v71 = v68 & 0x47 ^ 0x5F;
  *(v4 + 0x19 % v66) = v68 ^ (2 * ((v68 ^ 0x28) & (2 * ((v68 ^ 0x28) & (2 * ((v68 ^ 0x28) & (2 * ((v68 ^ 0x28) & (2 * (((2 * (((2 * v68) & 0x52 | 0x29) & v68)) ^ 0x6E) & (v68 ^ 0x28) ^ v71)) ^ v71)) ^ v71)) ^ v71)) ^ v71)) ^ 0x18;
  v72 = *(v4 + 0x1A % v66);
  v73 = (((LODWORD(STACK[0xE70]) ^ 0x62) + 33) ^ ((LODWORD(STACK[0xE70]) ^ 0xFFFFFFAF) - 18) ^ ((LODWORD(STACK[0xE70]) ^ 0x37) + 118)) + (((v72 ^ 0xFFFFFFF0) + 16) ^ ((v72 ^ 0x7C) - 124) ^ ((v72 ^ 0xFFFFFFD3) + 45)) - 30;
  LOBYTE(v53) = v73 & 0x60 ^ 0x56;
  *(v4 + 0x1A % v66) = v73 ^ (2 * ((v73 ^ 0x44) & (2 * ((v73 ^ 0x44) & (2 * ((v73 ^ 0x44) & (2 * ((v73 ^ 0x44) & (2 * ((v73 ^ 0x44) & (2 * v53) ^ v53)) ^ v53)) ^ v53)) ^ v53)) ^ v53)) ^ 0x3F;
  v74 = STACK[0xEA0];
  v75 = (LODWORD(STACK[0xEA0]) - 19388) & STACK[0xE20] ^ LODWORD(STACK[0xE00]);
  v76 = 0x1B % (v65 ^ 0xEB484D00);
  LOBYTE(v67) = ((((((2 * v75) | 0x4B) - v75 - 38) ^ 0x19) - 25) ^ (((((2 * v75) | 0x4B) - v75 - 38) ^ 0x96) + 106) ^ (((((2 * v75) | 0x4B) - v75 - 38) ^ 0x55) - 85)) + (((*(v4 + v76) ^ 5) - 5) ^ ((*(v4 + v76) ^ 0x61) - 97) ^ ((*(v4 + v76) ^ 0x3B) - 59)) - 2;
  v77 = v67 & 0xB7 ^ 0xE3;
  *(v4 + v76) = v67 ^ (2 * ((v67 ^ 0x70) & (2 * ((v67 ^ 0x70) & (2 * ((v67 ^ 0x70) & (2 * ((v67 ^ 0x70) & (2 * (v67 & (2 * (((2 * v67) & 0x62 ^ 0x46) & v67 ^ v77)) ^ v77)) ^ v77)) ^ v77)) ^ v77)) ^ v77)) ^ 0xE8;
  v78 = *(v4 + 0x1C % (v65 ^ 0xEB484D00));
  v79 = (((v78 ^ 0x6C) - 108) ^ ((v78 ^ 0xEF) + 17) ^ ((v78 ^ 0xDC) + 36)) + 20;
  LOBYTE(v75) = v79 & 0xC2 | 0x20;
  *(v4 + 0x1C % (v65 ^ 0xEB484D00)) = v79 ^ (2 * (v79 & (2 * (v79 & (2 * (v79 & (2 * (v79 & (2 * (v79 & (2 * v75) ^ v75)) ^ v75)) ^ v75)) ^ v75)) ^ v75)) ^ 0x9D;
  v80 = 0x1D % (v65 ^ 0xEB484D00);
  LOBYTE(v67) = (((*(v4 + v80) ^ 0xB5) + 75) ^ ((*(v4 + v80) ^ 0xB3) + 77) ^ ((*(v4 + v80) ^ 0x59) - 89)) - 52;
  LOBYTE(v72) = v67 & 0x8E ^ 0x62;
  *(v4 + v80) = v67 ^ (2 * ((v67 ^ 0x48) & (2 * ((v67 ^ 0x48) & (2 * ((v67 ^ 0x48) & (2 * ((v67 ^ 0x48) & (2 * ((v67 ^ 0x48) & (2 * v72) ^ v72)) ^ v72)) ^ v72)) ^ v72)) ^ v72)) ^ 0xD1;
  v81 = LODWORD(STACK[0x11DC]) ^ 0xEB484D00;
  LOBYTE(v67) = ((*(v4 + 0x1E % v81) ^ 0x75) - 117) ^ ((*(v4 + 0x1E % v81) ^ 0x97) + 105) ^ ((*(v4 + 0x1E % v81) ^ 0xBD) + 67);
  v82 = v67 - 42;
  LOBYTE(v67) = ((41 - v67) & 0xC0 | 6) ^ (v67 - 42) & 0x8C;
  *(v4 + 0x1E % v81) = v82 ^ (2 * ((v82 ^ 0x40) & (2 * ((v82 ^ 0x40) & (2 * ((v82 ^ 0x40) & (2 * ((v82 ^ 0x40) & (2 * ((v82 ^ 0x40) & (2 * v67) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ 0x13;
  LOBYTE(v66) = (((*(v4 + 0x1F % v81) ^ 0x1A) - 26) ^ ((*(v4 + 0x1F % v81) ^ 0x96) + 106) ^ ((*(v4 + 0x1F % v81) ^ 0xD3) + 45)) + 14;
  *(v4 + 0x1F % v81) = v66 ^ (2 * ((v66 ^ 8) & (2 * ((v66 ^ 8) & (2 * ((v66 ^ 8) & (2 * ((v66 ^ 8) & 0xC ^ v66 & 0x84 ^ 0xE)) ^ v66 & 0x84 ^ 0xE)) ^ v66 & 0x84 ^ 0xE)) ^ v66 & 0x84 ^ 0xE)) ^ 0xDB;
  return (*(STACK[0xF18] + 8 * v74))();
}

uint64_t sub_100614A98()
{
  LODWORD(STACK[0x10ED8]) = (v0 - 1762632995) ^ (906386353 * ((&STACK[0x10000] + 3800) ^ 0x3101CD24));
  STACK[0x10EE0] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 44551)))(&STACK[0x10ED8]);
  if (*STACK[0x970])
  {
    v3 = 1;
  }

  else
  {
    v3 = *STACK[0x940] == 0;
  }

  v4 = !v3;
  return (*(v1 + 8 * ((v4 * ((81 * (v0 ^ 0x1C95)) ^ 0xDEC)) ^ v0)))(v2);
}

uint64_t sub_100614B3C@<X0>(int a1@<W8>)
{
  if (v1)
  {
    v3 = v2 == (a1 ^ 0x38A44166);
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(STACK[0xF18] + 8 * ((v4 * (((a1 - 1976692312) & 0x75D1F310) - 28919)) ^ a1)))();
}

uint64_t sub_100614B9C()
{
  v1 = STACK[0xF18];
  STACK[0x2FE0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ (v0 - 475034798) & 0x1C507FBF ^ 0x12B7 ^ (9926 * ((v0 ^ 0x443A9AFu) > 0x2B5C9D68)))))();
}

uint64_t sub_100614C00(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, int a7)
{
  v22 = (((v9 ^ 0xB0FC6AF8) + 1325634824) ^ ((v9 ^ 0x548466B7) - 1417963191) ^ ((v9 ^ 0xEF9654E5 ^ (v19 + 979)) + 275325973)) + 787248641;
  v23 = ((v22 ^ v14) + v15) ^ v22 ^ ((v22 ^ v16) + a3) ^ ((v22 ^ v7) + v8) ^ ((v22 ^ a4) + a5);
  *(STACK[0xD90] + ((v9 ^ v13) << 7) + 4 * (v18 + a7)) = *(STACK[0xD90] + ((v23 ^ v20) << 7) + 4 * (v17 + a7));
  return (*(STACK[0xF18] + 8 * ((((((v23 ^ v21) + 2117259314) ^ ((v23 ^ v10) - 1994402475) ^ ((v23 ^ v11) + 54275391)) - 1947281500 < 0x8000001F) * v12) ^ (v19 - 20563))))();
}

uint64_t sub_100614D84(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  ++*a4;
  LODWORD(STACK[0x10EE0]) = v4 + 155453101 * ((((&STACK[0x10000] + 3800) | 0x6DDAB83D) - ((&STACK[0x10000] + 3800) | 0x922547C2) - 1843050558) ^ 0x8BFCA3F2) + 296785587;
  STACK[0x10ED8] = 0;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v4 + 48755)))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v5 + 8 * v4);
  return (*(v5 + 8 * (v4 ^ 0x1A38 ^ (((v4 ^ 0x50075B1Fu) > 0x6AB47A76) * ((v4 ^ 0x6C53) - 9591)))))(v6);
}

uint64_t sub_100614EB8(uint64_t a1)
{
  v3 = (((*(a1 + 16) ^ 0xA62FEA40) + 1506809280) ^ ((*(a1 + 16) ^ 0x3E41B5AE) - 1044493742) ^ (((((v1 - 1951840358) & 0x74567FFE) + 1908087437) ^ *(a1 + 16)) - 1908119807)) - 1438830563;
  v4 = v3 < ((3 * (v1 ^ 0x98B0)) ^ 0xC067E237);
  v5 = v3 > v2;
  if (v2 < 0xC067690C != v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((v6 | (4 * v6)) ^ v1)))();
}

uint64_t sub_100615030()
{
  STACK[0x5F58] = v1;
  STACK[0x9570] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100615160()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v1 + 8 * (v0 - 27227)))(v2);
}

uint64_t sub_100615198()
{
  v3 = &STACK[0x10E50] + v2;
  *v3 = *v0;
  v3[1] = v0[1];
  v3[2] = v0[2];
  v3[3] = v0[3];
  v3[4] = v0[4];
  v3[5] = v0[5];
  v3[6] = v0[6];
  v3[7] = v0[7];
  v3[8] = v0[8];
  v3[9] = v0[9];
  v3[10] = v0[10];
  v3[11] = v0[11];
  v3[12] = v0[12];
  v3[13] = v0[13];
  v3[14] = v0[14];
  v3[15] = v0[15];
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100615300()
{
  v2 = STACK[0x7690];
  STACK[0x3410] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v2 - 38637 + ((v0 - 3282) | 0x10A9u);
  STACK[0x5FE0] = v1;
  STACK[0x2FF0] = v1;
  STACK[0x8A38] = 0;
  STACK[0x2438] = 0;
  STACK[0x9548] = 0;
  LODWORD(STACK[0x12A0]) = -371865839;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10061536C()
{
  v2 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x14CFE928)) ^ 0x14CFE92BLL;
  v3 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v2 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v2;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *(v0 + 48);
  v11 = v9 ^ (349169963 * v10) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
  for (i = 1; i != 33; ++i)
  {
    v13 = 16777619 * ((v11 + i) ^ v11) % i;
    v14 = *(v10 + 8 * v13) ^ *(v10 + 8 * i);
    *(v10 + 8 * i) = v14;
    v15 = *(v10 + 8 * v13) ^ v14;
    *(v10 + 8 * v13) = v15;
    *(v10 + 8 * i) ^= v15;
  }

  v16 = 0;
  v17 = xmmword_100BC7620;
  v18 = xmmword_100BC7630;
  v19 = xmmword_100BC7640;
  v20 = xmmword_100BC7650;
  v21.i64[0] = 0x9B009B009B009BLL;
  v21.i64[1] = 0x9B009B009B009BLL;
  v22.i64[0] = 0x1000000010;
  v22.i64[1] = 0x1000000010;
  v23 = vdupq_n_s32(v11);
  do
  {
    v24 = *(v10 + v16);
    v25 = vmovl_high_u8(v24);
    v26 = vmovl_u8(*v24.i8);
    v37.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v19, v23), vsubq_s32(v19, v23)), v23), vmull_high_u16(v26, v21));
    v37.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v18, v23), vsubq_s32(v18, v23)), v23), vmull_u16(*v25.i8, 0x9B009B009B009BLL));
    v37.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v20, v23), vsubq_s32(v20, v23)), v23), vmull_u16(*v26.i8, 0x9B009B009B009BLL));
    v37.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v17, v23), vsubq_s32(v17, v23)), v23), vmull_high_u16(v25, v21));
    *(v10 + v16) = vqtbl4q_s8(v37, xmmword_100BC7660);
    v16 += 16;
    v20 = vaddq_s32(v20, v22);
    v19 = vaddq_s32(v19, v22);
    v18 = vaddq_s32(v18, v22);
    v17 = vaddq_s32(v17, v22);
  }

  while (v16 != 256);
  v27 = 0;
  v28 = xmmword_100F52B10;
  v29 = xmmword_100F52B20;
  v30 = vdupq_n_s32(v11);
  v31 = v10 + 256;
  v32.i64[0] = 0x9B009B009B009BLL;
  v32.i64[1] = 0x9B009B009B009BLL;
  v33.i64[0] = 0x800000008;
  v33.i64[1] = 0x800000008;
  do
  {
    v34 = vmovl_u8(*(v31 + v27));
    v36.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v28, v30), vsubq_s32(v28, v30)), v30), vmull_high_u16(v34, v32));
    v36.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v29, v30), vsubq_s32(v29, v30)), v30), vmull_u16(*v34.i8, 0x9B009B009B009BLL));
    *(v31 + v27) = vqtbl2q_s8(v36, xmmword_100F52AD0).u64[0];
    v29 = vaddq_s32(v29, v33);
    v28 = vaddq_s32(v28, v33);
    v27 += 8;
  }

  while (v27 != 8);
  return (*(STACK[0xF18] + 8 * v1))(v28, v29);
}

uint64_t sub_100615688@<X0>(uint64_t a1@<X8>, uint8x8_t a2@<D0>)
{
  a2.i32[0] = *(v4 + v3);
  v5 = veor_s8(*&vmovl_u8(a2), 0xEE00EE00EE00EELL);
  *(a1 + v3 + 2) = vuzp1_s8(v5, v5).u32[0];
  return (*(STACK[0xF18] + 8 * ((11044 * (v3 - 35639 + (v2 ^ 0xD207u) == 52)) ^ v2)))();
}

uint64_t sub_1006156E0@<X0>(uint64_t a1@<X8>)
{
  v8 = a1 - 1;
  STACK[0x3D40] = v8;
  *(v3 + v8) = (v2 ^ v5) * (v2 + 17);
  return (*(STACK[0xF18] + 8 * (((STACK[0x3D40] != 0) * (((v1 ^ v7) * v4) ^ v6)) ^ v1)))();
}

uint64_t sub_10061572C()
{
  v3 = v0 ^ 0x38A42D21u;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 + 22936)))(v3);
  *(v1 + 120) = v5;
  return (*(v4 + 8 * ((11 * (((v5 == 0) ^ (71 * (v2 ^ 0x6D) - 118)) & 1)) ^ v2)))();
}

uint64_t sub_10061579C()
{
  v4 = v2 - ((v0 + 38) & (2 * v2)) + 121;
  *(v3 + STACK[0xE60] - 1974824222) = *(v1 + (((30 - v3) ^ v3 ^ ((v3 ^ 0xD7) + 55) ^ ((v3 ^ 0x9F) + 127) ^ ((v3 ^ 0xB6 ^ (v0 + 83)) + 73)) ^ 0x1ELL)) + (((v4 ^ 0x6C) - 108) ^ ((v4 ^ 0x35) - 53) ^ ((v4 ^ 0x20) - 32)) + 113;
  return (*(STACK[0xF18] + 8 * (v0 | (19 * (v3 != 1974825341)))))();
}

uint64_t sub_1006158BC()
{
  v1 = STACK[0xF18];
  STACK[0x31A0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 - 803) | 0xA91) + 3155) ^ v0)))();
}

uint64_t sub_100615D68@<X0>(uint64_t a1@<X8>)
{
  LODWORD(STACK[0x53AC]) = -347583202;
  STACK[0xED0] = STACK[0xBA38];
  v4 = (&STACK[0xC4D0] + v1);
  STACK[0x7690] = a1 - 3200;
  v5 = STACK[0xF18];
  v6 = *(STACK[0xF18] + 8 * (v3 + 16262));
  v7 = *(&off_1010A0B50 + (v3 ^ 0x83FB)) - 1038068894;
  STACK[0xEC0] = (v4 + 79);
  v8 = v6(v7);
  v4[47] = 0x42ADB34AE1CDE98CLL;
  v4[48] = 0xBB180DA727A5F8E6;
  v4[49] = 0x9BBC4EDED0A81700;
  v4[50] = 0x3225B7573660F51FLL;
  v4[51] = 0xE57A4C627A5225B4;
  v4[52] = 0xC34BFC4854EEF26CLL;
  v4[53] = 0xA60E31FFE97CE51ELL;
  v4[54] = 0x3380A0F3B3BFA2A2;
  v4[55] = 0xAA2F94F2BFF6E74FLL;
  v4[56] = 0xF3F71C07A3A62768;
  v4[57] = 0x392D879012196B61;
  v4[58] = 0xF8D9B0B9CED90566;
  v4[59] = 0xCE66F8FA783C9414;
  v4[60] = 0x43F0CA162BB9D12DLL;
  v4[61] = 0xA5919B7ACFA04D47;
  v4[62] = 0x167C500511A303BELL;
  v4[63] = 0x316D5F41F3C9B2B2;
  v4[64] = 0x5DFF941CD6EE48EDLL;
  v4[65] = 0xEF6F4769FF59B5DCLL;
  v4[66] = 0x45B64D6A815D14BELL;
  v4[67] = 0x55C88F74ADD712EFLL;
  v4[68] = 0x5838116B2F1E593CLL;
  v4[69] = 0x2B367C8E30CB1F4ALL;
  v4[70] = 0xB1852CCDF48A0F28;
  v4[71] = 0xC7A0DC9051FC886;
  v4[72] = 0x2BE4D42A1549AD36;
  v4[73] = 0x4F9E51F9449069BLL;
  v4[74] = 0xAA370E50FAAB9736;
  v4[75] = 0xDB9A75EECD46D5DDLL;
  v4[76] = 0x222207D3186D47E0;
  v4[77] = 0xE2812F49DBC3147ELL;
  v4[78] = 0x4DD0841D80A1A7FCLL;
  return (*(v5 + 8 * ((54 * ((((v2 ^ 0x3D94CCAF) - 1033161903) ^ ((v2 ^ 0x91FD84C2) + 1845656382) ^ (((v3 + 1193310770) ^ v2) - 1193346413)) - 347583292 > 0xFFFFFFC3)) ^ (v3 - 12894))))(v8);
}

uint64_t sub_1006160CC(uint64_t a1, uint64_t a2, int a3)
{
  v4 = (a3 ^ 0x1927E6EA) & (2 * ((853 * (v3 ^ 0x3EBF) - 3181) & a3)) ^ (853 * (v3 ^ 0x3EBF) - 3181) & a3;
  v5 = ((2 * (a3 ^ 0x1927B7AA)) ^ 0x2290BE92) & (a3 ^ 0x1927B7AA) ^ (2 * (a3 ^ 0x1927B7AA)) & 0x51245F48;
  v6 = v5 ^ 0x51244149;
  v7 = (v5 ^ 0x51240641) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0x45B17D24) & v6 ^ (4 * v6) & 0xD16C5F48;
  v9 = (v8 ^ 0x41205D09) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x904C0249)) ^ 0x16C5F490) & (v8 ^ 0x904C0249) ^ (16 * (v8 ^ 0x904C0249)) & 0xD16C5F40;
  v11 = v9 ^ 0xD16C5F49 ^ (v10 ^ 0x10445449) & (v9 << 8);
  LODWORD(STACK[0xED0]) = a3 ^ (2 * ((v11 << 16) & 0x516C0000 ^ v11 ^ ((v11 << 16) ^ 0x5F490000) & (((v10 ^ 0xC1280B49) << 8) & 0x516C0000 ^ 0x11200000 ^ (((v10 ^ 0xC1280B49) << 8) ^ 0x6C5F0000) & (v10 ^ 0xC1280B49)))) ^ 0xC803566E;
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_100616240()
{
  STACK[0x9E30] = (((v0 - 437252273) ^ 0x5A47D0C8) & (2 * v1)) + (v1 ^ 0x6DEE6D375FDBE73FLL) - 0x802610000CA2209;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 + 2429)))();
}

uint64_t sub_1006162E0()
{
  v2 = v0 + 18739;
  v3 = (v0 - 5096) | 3;
  v4 = (v0 - 1507505142) & 0x59DABF9F;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 + 38960)))((v1 - 66));
  STACK[0x2330] = v6;
  return (*(v5 + 8 * (((v6 == 0) * ((v3 ^ 0xFFFFD7AA) + v4)) ^ v2)))();
}

uint64_t sub_100616360@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x6CA0]) = *v1;
  STACK[0x8870] = a1;
  LODWORD(STACK[0x3F20]) = v2;
  return (*(STACK[0xF18] + 8 * (v3 - 4001)))();
}

uint64_t sub_10061639C()
{
  v1 = *(STACK[0x850] - 914251479);
  STACK[0x83F8] = 0;
  return (*(STACK[0xF18] + 8 * ((250 * (((v1 == ((v0 + 7371) ^ 0x8B3B)) ^ (3 * (v0 ^ 0x85))) & 1)) ^ v0)))();
}

uint64_t sub_10061643C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 1089202863;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x2288];
  STACK[0x5D28] = &STACK[0x1B64];
  LODWORD(STACK[0x4704]) = -2034031838;
  return (*(STACK[0xF18] + 8 * (v7 ^ 0xBF14B5DA ^ (16273 * (v7 < 0x4FB427EA)))))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_1006164C0()
{
  STACK[0x2CC0] = 0;
  LODWORD(STACK[0x45C4]) = -371865839;
  STACK[0x9800] = 0;
  LODWORD(STACK[0x10E4]) = -371865839;
  return (*(STACK[0xF18] + 8 * (v0 + 6802)))();
}

uint64_t sub_100616504()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 3005)))(v2);
}

uint64_t sub_100616600()
{
  v5 = v4 < 0x30226AEF;
  if (v5 == (v1 - 1058049622) < 0xD8F5D72B)
  {
    v5 = v1 - 1058049622 < v0;
  }

  return (*(STACK[0xF18] + 8 * (((v5 & v3 ^ 1) * (v2 ^ 0xB47E ^ ((v2 + 19207) | 0x84))) ^ v2)))();
}

uint64_t sub_1006166E0()
{
  LODWORD(STACK[0x10ED8]) = (v0 - 1762652649) ^ (906386353 * ((2 * ((&STACK[0x10000] + 3800) & 0x5210E338) - (&STACK[0x10000] + 3800) - 1376838458) ^ 0x9CEED1E2));
  STACK[0x10EE0] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 24897)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (((*STACK[0x970] < 1) * ((v0 + 8643) ^ 0x8B94)) ^ v0)))(v2);
}

uint64_t sub_100616808()
{
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762661292) ^ (906386353 * ((&STACK[0x10000] + 3800) ^ 0x3101CD24));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4182u)))(&STACK[0x10ED8]);
  if (*STACK[0x970])
  {
    v3 = 1;
  }

  else
  {
    v3 = *STACK[0x940] == 0;
  }

  v4 = v3;
  return (*(v1 + 8 * ((14 * v4) ^ (v0 - 25077))))(v2);
}

uint64_t sub_1006168A0()
{
  v2 = v1[37];
  LODWORD(STACK[0x10ED8]) = v0 + 34497 + 1022166737 * (((&STACK[0x10ED8] | 0x796861C3) - (&STACK[0x10ED8] & 0x796861C0)) ^ 0xC3788051);
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0xED0B)))(&STACK[0x10ED8]);
  v4 = v1[39];
  LODWORD(STACK[0x10ED8]) = v0 + 34497 + 1022166737 * (((&STACK[0x10ED8] | 0x2FB7D9EA) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0xD0482610)) ^ 0x95A73878);
  STACK[0x10EE0] = v4;
  (*(v3 + 8 * (v0 + 42245)))(&STACK[0x10ED8]);
  STACK[0x10EE0] = v1[38];
  LODWORD(STACK[0x10ED8]) = v0 + 34497 + 1022166737 * (((&STACK[0x10ED8] | 0xD0897414) - (&STACK[0x10ED8] & 0xD0897410)) ^ 0x6A999586);
  (*(v3 + 8 * (v0 ^ 0xED0B)))(&STACK[0x10ED8]);
  v5 = 353670337 * (((&STACK[0x10ED8] | 0x676E0C0A91B28288) - (&STACK[0x10ED8] & 0x676E0C0A91B28288)) ^ 0x97FFBA8125937AB5);
  LODWORD(STACK[0x10EF0]) = v5 + 2140645752;
  LODWORD(STACK[0x10ED8]) = v5 + v0 - 8414;
  STACK[0x10EE8] = v5 + 0x31B495479FA32553;
  STACK[0x10EE0] = 0x2CB8161969575A1DLL - v5;
  (*(v3 + 8 * (v0 ^ 0xEC87)))(&STACK[0x10ED8]);
  v6 = v1[1];
  STACK[0x8360] = (v1 + 1);
  STACK[0x10EE0] = v6;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762635380) ^ (906386353 * (&STACK[0x10ED8] ^ 0x3101CD24));
  v7 = (*(v3 + 8 * (v0 ^ 0xECBA)))(&STACK[0x10ED8]);
  STACK[0x3518] = v1;
  LODWORD(STACK[0x5200]) = 16;
  LODWORD(STACK[0x6404]) = -1460406949;
  return (*(v3 + 8 * v0))(v7);
}

uint64_t sub_100616B3C()
{
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 10245)))(v2 ^ 0x38A42D21u);
  *(v1 + 688) = v5;
  v6 = *(v3 + 1508);
  if (!v5)
  {
    v6 = 371891397;
  }

  *(v3 + 1516) = v6;
  return (*(v4 + 8 * (((((v0 - 88) ^ (v6 == -371865839)) & 1) * (v0 - 41586)) ^ v0)))();
}

uint64_t sub_100616BF0@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W8>)
{
  v3 = (a2 | ((a2 < 0x5Fu) << 8)) + (v2 + 30181) + 0x47E64045F749E542;
  STACK[0x2EA0] = v3;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x72A8];
  STACK[0x5D28] = a1 + 32 * v3 + 0x337F74116B1E480;
  LODWORD(STACK[0x4704]) = -44211831;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_100616E44()
{
  v2 = v0 - 6498;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 16238)))(v1);
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_100616EA8@<X0>(int a1@<W8>)
{
  v1 = STACK[0x6CB8];
  v2 = STACK[0x8FE0];
  v3 = STACK[0x767C];
  v4 = STACK[0x77C0];
  STACK[0x8490] = STACK[0x77C0];
  v5 = STACK[0x14DC];
  LODWORD(STACK[0x553C]) = STACK[0x14DC];
  v10 = v1 == ((a1 + 270571880) & 0xEFDFAF3F ^ 0xE9D54C2A) || v2 == 0 || v3 == (((a1 + 1422) | 0x2300) ^ 0xE9D5AC30) || v4 == 0 || v5 == -371865839;
  return (*(STACK[0xF18] + 8 * ((v10 | (4 * v10)) ^ a1)))();
}

uint64_t sub_100616FA4()
{
  v2 = STACK[0x7C10];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v2;
  LODWORD(STACK[0x35EC]) = v1;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100616FE8()
{
  v4 = *v2;
  *(v3 + 28) = v4;
  *(v3 + 4) = 1;
  STACK[0xAC20] = v3 + 28;
  return (*(STACK[0xF18] + 8 * ((25 * ((((v0 ^ 0xE9) * v1 + 1) ^ (v4 == (((v0 - 108) & 0xF9) - 121))) & 1)) ^ v0)))();
}

uint64_t sub_10061705C()
{
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x46081150) + 1174933845) ^ 0xA02E0A9A) + 296753103;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x41F1)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 - 19429)))(v2);
}

uint64_t sub_1006170E8()
{
  v0 = STACK[0xF10] - 9155;
  v1 = STACK[0xF10] - 34521;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 ^ 0x74F1 | v1)))();
}

uint64_t sub_1006172E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W8>)
{
  v4 = ((2 * v3) & 0x1BF77FFAELL) + (v3 ^ 0xEF56FEA7DFBBFFD7) + (a3 ^ 0x3EFFCFFFFF7FE6FELL);
  STACK[0xA680] = v4;
  v5 = STACK[0x3E10];
  STACK[0xA688] = STACK[0x3E10];
  return (*(STACK[0xF18] + 8 * ((27897 * (v4 - v5 - 0x2732B82FF4BF393ALL < 0xFFFFFFFFFFFFFFF6)) ^ a3)))(a1, a2, 371891407);
}

uint64_t sub_10061737C()
{
  v0 = STACK[0xF10] - 12734;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))(STACK[0x42B8]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100617408()
{
  v0 = STACK[0xF10] - 13965;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))(STACK[0x2BD8]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100617440@<X0>(char a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, unsigned int a8@<W8>)
{
  v17 = *(v8 + 8);
  v18 = *v12;
  v19 = (v17 + STACK[0xED0]);
  v20 = *(*v13 + (v18 & 0x72D7ACF8));
  v21 = *v19;
  v22 = (((((v20 ^ v19) & 0x7FFFFFFF) * a2) >> a1) ^ (((v20 ^ v19) & 0x7FFFFFFF) * a2)) * a2;
  v23 = v9 ^ (2 * (((32 * ((v9 >> 4) & 1)) | 0x10) & v9));
  LOBYTE(v23) = 2 * (((2 * v23) & 0x5C) - v23) + 34;
  v24 = ((v23 ^ 0x56) + 76) ^ ((v23 ^ 0xA5) - 71) ^ ((v23 ^ 0xF0) - 18);
  v25 = (v17 + STACK[0xEC0]);
  LODWORD(v17) = (v20 | ~v25) - (v25 | ~v20) + 2 * (v25 & ~v20);
  v26 = v21 ^ *(a7 + v9 - 1414125168) ^ *(a3 + (v22 >> 24)) ^ *((v22 >> 24) + a5 + 1) ^ *((v22 >> 24) + a6 + 3);
  v27 = (v17 & 0x7FFFFFFF) + v17 * v14;
  v28 = (HIWORD(v27) & 0x4924) + (v27 & v15);
  v29 = (HIWORD(v27) & 0x1489 | 0x12542912) - (v27 & v16);
  v30 = v26 ^ v22 ^ ((v22 >> 24) * a4);
  LODWORD(v22) = HIWORD(v27) & 0xA252 ^ v27 & 0x1284A252;
  LOBYTE(v27) = (v30 ^ 0x2D) - 38;
  v31 = (v30 ^ 0x37) - 60;
  v32 = v30 ^ 0x45;
  v33 = v27 ^ v31;
  v34 = v28 & v15 | v22 | v29 & v16;
  if (v29)
  {
    v35 = v14;
  }

  else
  {
    v35 = 0;
  }

  v36 = v35 + v34 + (v34 & 0x3FFFFFFE) * v14;
  v37 = ((v33 ^ (v32 - 78)) - 26) * (v24 - 31) + 110 * v24;
  v38 = (v11 + v10 + v9 - 2072370009);
  v39 = ((((v20 ^ v38) & 0x7FFFFFFF) * a2) ^ ((((v20 ^ v38) & 0x7FFFFFFF) * a2) >> 16)) * a2;
  *v38 = *((v39 >> 24) + a5 + 1) ^ *(a3 + (v39 >> 24)) ^ *((v39 >> 24) + a6 + 3) ^ v39 ^ (BYTE3(v39) * a4) ^ (v37 + (*(a3 + HIBYTE(v36)) ^ *v25 ^ *(HIBYTE(v36) + a5 + 1) ^ *(HIBYTE(v36) + a6 + 3) ^ v36 ^ (HIBYTE(v36) * a4) | 1) - 82);
  v40 = v9 + 682879596 < a8;
  if (a8 < 0x7CFDC0DB != v9 + 682879596 < 0x7CFDC0DB)
  {
    v40 = a8 < 0x7CFDC0DB;
  }

  return (*(STACK[0xF18] + 8 * ((2647 * v40) ^ LODWORD(STACK[0xEB0]))))();
}

uint64_t sub_1006176F4(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = v7 > v10;
  *(*(a6 + a7) + 8 * (a3 + v12)) = 0;
  if (v13 == a3 + a1 < v8)
  {
    v13 = a3 + a1 < v9;
  }

  return (*(STACK[0xF18] + 8 * ((v13 * a2) ^ v11)))();
}

uint64_t sub_10061780C()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  STACK[0x19F8] = 0;
  return (*(v1 + 8 * (v0 - 22674)))(v2);
}

uint64_t sub_100617860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v7 + v9;
  LODWORD(STACK[0xED0]) = 107;
  LOBYTE(STACK[0x1AF3]) = 107;
  STACK[0x6920] = 0;
  LODWORD(STACK[0x7850]) = -371865839;
  STACK[0x3930] = STACK[0x660];
  STACK[0x2A60] = v10;
  STACK[0x85E8] = v10;
  LODWORD(STACK[0x4874]) = v8 - v9 - (((v8 - v9) << (v6 + 12)) & 0xD3AB8E22) - 371865839;
  LODWORD(STACK[0x726C]) = -187458878;
  return (*(STACK[0xF18] + 8 * (v6 + 292)))(v10, v10, a3, a4, a5, a6, 0);
}

uint64_t sub_100617904(uint64_t a1, uint64_t a2, int a3)
{
  v7 = v3 < 0xAF32AE4B;
  v8 = ((2 * (a3 + v6)) & 0x94 ^ 0x4A) & (a3 + v6);
  v9 = ((a3 + v6) ^ (2 * (((((a3 + v6) ^ 0xBC) << v4) ^ 0x68) & ((a3 + v6) ^ 0xBC) & (4 * v8) ^ v8))) & 0x1F ^ 0xA;
  *(a2 + 4 * v9) += 1976181163;
  if (v7 == (a3 - 2021448599) < 0xAF32AE4B)
  {
    v7 = a3 - 2021448599 < v3;
  }

  return (*(STACK[0xF18] + 8 * ((60645 * v7) ^ v5)))();
}

uint64_t sub_100617ADC@<X0>(char a1@<W8>)
{
  STACK[0x55C0] = v5;
  STACK[0x8FC8] = v2;
  STACK[0x28C8] = v3;
  STACK[0x4598] = v4;
  LOBYTE(STACK[0x167F]) = a1;
  STACK[0x70D8] = 0;
  LODWORD(STACK[0x40D8]) = -371865839;
  LOBYTE(STACK[0x4437]) = 80;
  STACK[0x24B0] = 0;
  LODWORD(STACK[0x67AC]) = 0;
  v6 = STACK[0xF18];
  STACK[0x6F00] = *(STACK[0xF18] + 8 * v1);
  return (*(v6 + 8 * (((v1 ^ 0x88B) + 15767) ^ v1)))();
}

uint64_t sub_100617B58@<X0>(int a1@<W8>)
{
  *v1 = a1 | 2;
  *(v1 + 12) = 592812796;
  v3 = *(v1 + 16);
  LODWORD(STACK[0x10ED8]) = (v2 - 1762644468) ^ (906386353 * ((((&STACK[0x10000] + 3800) ^ 0x4509FE07) - 2 * (((&STACK[0x10000] + 3800) ^ 0x4509FE07) & 0x5D23B4AE) + 1562621102) ^ 0x292B878D));
  STACK[0x10EE0] = v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 + 33078)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (((*(v1 + 24) == 0) * (1403 * (v2 ^ 0x4980) + 48924)) ^ v2)))(v5);
}

uint64_t sub_100617C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x6548] = 0;
  STACK[0x9068] = v7 + 120;
  v8 = STACK[0xF18];
  STACK[0x61A0] = *(STACK[0xF18] + 8 * v6);
  return (*(v8 + 8 * (v6 ^ 0x2E7E ^ (29360 * ((v6 ^ 0x60443063u) > (v6 ^ 0x8807u) - 183816382)))))(a1, a2, a3, a4, a5, a6, &STACK[0xA237]);
}

uint64_t sub_100617C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] ^ 0x33B0;
  LODWORD(STACK[0xA030]) = STACK[0x98D4];
  v5 = *(STACK[0x80C8] + 32) + 599275194;
  v6 = (v5 ^ 0x9A67EC4C) & (2 * (v5 & (v4 - 599322442))) ^ v5 & (v4 - 599322442);
  v7 = ((2 * (v5 ^ 0x326A6E4C)) ^ 0xDC5B4E1A) & (v5 ^ 0x326A6E4C) ^ (2 * (v5 ^ 0x326A6E4C)) & 0xEE2DA70C;
  v8 = v7 ^ 0x2224A105;
  v9 = (v7 ^ 0xC0098608) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0xB8B69C34) & v8 ^ (4 * v8) & 0xEE2DA70C;
  v11 = (v10 ^ 0xA8248400) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x46092309)) ^ 0xE2DA70D0) & (v10 ^ 0x46092309) ^ (16 * (v10 ^ 0x46092309)) & 0xEE2DA700;
  v13 = v11 ^ 0xEE2DA70D ^ (v12 ^ 0xE2082000) & (v11 << 8);
  LODWORD(STACK[0xA03C]) = v5 ^ (2 * ((v13 << 16) & 0x6E2D0000 ^ v13 ^ ((v13 << 16) ^ 0x270D0000) & (((v12 ^ 0xC25870D) << 8) & 0x6E2D0000 ^ 0x42080000 ^ (((v12 ^ 0xC25870D) << 8) ^ 0x2DA70000) & (v12 ^ 0xC25870D)))) ^ 0x554F671;
  return (*(STACK[0xF18] + 8 * (v3 - 29445)))(a1, a2, a3);
}

uint64_t sub_100617F10()
{
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((((&STACK[0x10000] + 3800) | 0x92772E7D) - ((&STACK[0x10000] + 3800) & 0x92772E78)) ^ 0x745135B2) + 296771892;
  STACK[0x10ED8] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 35060)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100617F94()
{
  v0 = STACK[0xF10] - 19754;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))(STACK[0x4B30]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1006180A0()
{
  v1 = STACK[0x6678];
  v2 = ((v1 ^ 0x2508D87E) - 621336702) ^ ((v1 ^ 0x14F2280D) - 351414285) ^ (((109 * (v0 ^ 0xB398) - 668029913) ^ v1) + 667994270);
  LOBYTE(v1) = (((v1 ^ 0x66) - 102) ^ ((v1 ^ 0x5E) - 94) ^ (((v0 + 92) ^ 0x12 ^ v1) - 41)) - 68;
  v3 = (v1 ^ (2 * (((2 * v1) & (4 * (((2 * v1) & 0xB2 ^ 0x59) & v1)) ^ (2 * v1) & 0xB2 ^ 0x59) & v1))) & 0xF;
  v4 = v2 - (((v3 ^ 0x93FE095) - 572575131) ^ (v3 + 384637682) ^ ((v3 ^ 0x3C19C44C) - 386328898)) - 1863411596;
  v5 = ((v4 ^ 0x26B88B5F) + 191924979) ^ v4 ^ ((v4 ^ 0xB799884) + 649173290) ^ ((v4 ^ 0x8009A276) - 1379818532) ^ ((v4 ^ 0x7FFF4FFF) + 1379356243);
  LODWORD(STACK[0x2098]) = v5 ^ 0x3BE23943;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v0 + 6073)))(v5 ^ 0xD237FE52);
  STACK[0x15C0] = v7;
  STACK[0x62F8] = v7;
  return (*(v6 + 8 * ((58 * (v7 == 0)) ^ v0)))();
}

uint64_t sub_1006183A4()
{
  STACK[0x5C50] = 0x3AE1413A0D5C9732;
  LODWORD(STACK[0x1374]) = 301050277;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100618488()
{
  STACK[0x4F90] = *STACK[0x3BD0];
  LODWORD(STACK[0x22E8]) = STACK[0x9064];
  LODWORD(STACK[0x35EC]) = 1693393216;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100618550()
{
  v0 = STACK[0xF10] - 30507;
  STACK[0x5658] = STACK[0x6A78];
  LODWORD(STACK[0x2564]) = -1825936960;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100618580()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100618764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>)
{
  LODWORD(STACK[0x4474]) = 1600085855;
  *v9 = 1;
  STACK[0x1230] = &STACK[0x4474];
  LODWORD(STACK[0x392C]) = v8;
  v10 = ((v7 + 15596) ^ 0x322A3686) + a7;
  v11 = v10 < 0x322ABDB5;
  v12 = v10 > LODWORD(STACK[0x484C]) + 841661877;
  if (v11 != LODWORD(STACK[0x484C]) > 0xCDD5424A)
  {
    v12 = v11;
  }

  return (*(STACK[0xF18] + 8 * ((63 * (((v7 + 0x80) ^ v12) & 1)) ^ v7)))(a1, a2, a3, a4, a5, a6, &off_1010A0B50, &STACK[0x30FF]);
}

uint64_t sub_100618934()
{
  STACK[0x1A58] = v2;
  LOBYTE(STACK[0x602F]) = v0;
  return (*(STACK[0xF18] + 8 * ((v2 == 0) | v1)))();
}

uint64_t sub_10061895C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a1 + ((((v4 - 7314) ^ 0x86A35BA3) + a4) << 7);
  v7 = *(v6 + 4 * (v5 - 1964911518));
  v8 = (v7 ^ 0x941B44A4) & (2 * (v7 & 0xC6221635)) ^ v7 & 0xC6221635;
  v9 = ((2 * (v7 ^ 0x145B44CC)) ^ 0xA4F2A5F2) & (v7 ^ 0x145B44CC) ^ (2 * (v7 ^ 0x145B44CC)) & 0xD27952F8;
  v10 = v9 ^ 0x52095209;
  v11 = (v9 ^ 0x1000F0) & (4 * v8) ^ v8;
  v12 = ((4 * v10) ^ 0x49E54BE4) & v10 ^ (4 * v10) & 0xD27952F8;
  v13 = (v12 ^ 0x406142E0) & (16 * v11) ^ v11;
  v14 = ((16 * (v12 ^ 0x92181019)) ^ 0x27952F90) & (v12 ^ 0x92181019) ^ (16 * (v12 ^ 0x92181019)) & 0xD27952D0;
  v15 = v13 ^ 0xD27952F9 ^ (v14 ^ 0x2110200) & (v13 << 8);
  v16 = v7 ^ (2 * ((v15 << 16) & 0x52790000 ^ v15 ^ ((v15 << 16) ^ 0x52F90000) & (((v14 ^ 0xD0685069) << 8) & 0x52790000 ^ 0x2290000 ^ (((v14 ^ 0xD0685069) << 8) ^ 0x79520000) & (v14 ^ 0xD0685069))));
  *(v6 + 4 * (v5 - 1964911518)) = (((v16 ^ 0x58956E78) - 1194797103) ^ ((v16 ^ 0xA3A95153) + 1140123900) ^ ((v16 ^ 0x48D4AD47) - 1467411216)) - 433537530;
  return (*(STACK[0xF18] + 8 * v4))();
}

uint64_t sub_100618E1C()
{
  v0 = STACK[0xF10];
  v1 = 591 * (STACK[0xF10] ^ 0x8B0C);
  v2 = STACK[0xF10] - 31328;
  v3 = STACK[0x5188];
  *(v3 - 0x217E172EFA1E80CLL) = STACK[0xB30C];
  *(v3 - 0x217E172EFA1E808) = STACK[0xB310];
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0x41FA)))(STACK[0x74F0], v3 - 0x217E172EFA1E804, 24);
  *(v3 - 0x217E172EFA1E814) = STACK[0xB308];
  *(v3 - 0x217E172EFA1E810) = -371931376;
  *(v3 - 0x217E172EFA1E7E0) = 0;
  return (*(v4 + 8 * ((v1 ^ 0x78E5) + v2)))(v5);
}

uint64_t sub_100618F20()
{
  v0 = (STACK[0xF10] + 1890946228) & 0x8F49FEFF;
  v1 = STACK[0xF10] - 33731;
  STACK[0xA290] = STACK[0xA288] + STACK[0xA280];
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x1BA9) + v1)))();
}

uint64_t sub_100618F98@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * (a1 - 32615));
  return (*(v1 + 8 * (a1 - 30314)))();
}

uint64_t sub_1006190B4@<X0>(uint64_t a1@<X8>)
{
  v4 = (v3 - 1108457445) & 0xEED7BFB1;
  v5 = (v4 ^ 0x2CC69FB3) * v1;
  v6 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x64E5AD20)) ^ 0x64E5AD20;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  v12 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v11;
  v13 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v12 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v12;
  LODWORD(v13) = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v13 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v13;
  STACK[0xBFE0] = 0;
  STACK[0xBFE8] = v2 - 0x43D8CBFA0CEB42D4;
  v14 = 16777619 * (((1692773664 * v13) | 7) ^ (1692773664 * v13)) % 7;
  v15 = *(&STACK[0xBFE0] | v14);
  *(&STACK[0xBFE0] | v14) = 0;
  LOBYTE(STACK[0xBFE7]) = v15;
  v16 = 16777619 * (((1692773664 * v13) | 6) ^ (1692773664 * v13)) % 6;
  v17 = *(&STACK[0xBFE0] | v16);
  *(&STACK[0xBFE0] | v16) = STACK[0xBFE6];
  LOBYTE(STACK[0xBFE6]) = v17;
  v18 = 16777619 * (((1692773664 * v13) | 5) ^ (1692773664 * v13)) % 5;
  v19 = *(&STACK[0xBFE0] | v18);
  *(&STACK[0xBFE0] | v18) = STACK[0xBFE5];
  LOBYTE(STACK[0xBFE5]) = v19;
  v20 = STACK[0xBFE0];
  LOBYTE(STACK[0xBFE0]) = STACK[0xBFE4];
  LOBYTE(STACK[0xBFE4]) = v20;
  v21 = 16777619 * (((1692773664 * v13) | 3) ^ (1692773664 * v13)) % 3;
  v22 = *(&STACK[0xBFE0] | v21);
  *(&STACK[0xBFE0] | v21) = STACK[0xBFE3];
  LOBYTE(STACK[0xBFE3]) = v22;
  v23 = STACK[0xBFE1];
  LOBYTE(STACK[0xBFE2]) = STACK[0xBFE0];
  LOWORD(STACK[0xBFE0]) = v23;
  v24 = vdup_n_s32(1692773664 * v13);
  v25.i32[0] = v24.i32[0];
  v25.i32[1] = (1692773664 * v13) | 1;
  v26 = veor_s8(vmul_s32(v25, v24), v24);
  STACK[0xBFE0] = vmla_s32(v26, STACK[0xBFE0], vdup_n_s32(0x1000193u));
  STACK[0xBFE8] ^= STACK[0xBFE0];
  STACK[0xBFE8] = vmul_s32(vsub_s32(STACK[0xBFE8], v26), vdup_n_s32(0x359C449Bu));
  v27 = STACK[0xBFEA];
  LOWORD(STACK[0xBFE9]) = STACK[0xBFE8];
  LOBYTE(STACK[0xBFE8]) = v27;
  v28 = (&STACK[0xBFE8] | v21);
  LOBYTE(v23) = *v28;
  *v28 = STACK[0xBFEB];
  LOBYTE(STACK[0xBFEB]) = v23;
  LOBYTE(v28) = STACK[0xBFE8];
  LOBYTE(STACK[0xBFE8]) = STACK[0xBFEC];
  LOBYTE(STACK[0xBFEC]) = v28;
  v29 = (&STACK[0xBFE8] | v18);
  LOBYTE(v28) = *v29;
  *v29 = STACK[0xBFED];
  LOBYTE(STACK[0xBFED]) = v28;
  v30 = (&STACK[0xBFE8] | v16);
  LOBYTE(v29) = *v30;
  *v30 = STACK[0xBFEE];
  LOBYTE(STACK[0xBFEE]) = v29;
  v31 = (&STACK[0xBFE8] | v14);
  v32 = *v31;
  *v31 = STACK[0xBFEF];
  LOBYTE(STACK[0xBFEF]) = v32;
  v33 = STACK[0xBFE8];
  v34 = (1692773664 * STACK[0xBFE8]) ^ v13;
  for (i = 1; i != 12; ++i)
  {
    v36 = 16777619 * ((v34 + i) ^ v34) % i;
    v37 = *(v33 + 8 * v36) ^ *(v33 + 8 * i);
    *(v33 + 8 * i) = v37;
    v38 = *(v33 + 8 * v36) ^ v37;
    *(v33 + 8 * v36) = v38;
    *(v33 + 8 * i) ^= v38;
  }

  v39 = 0;
  v40 = xmmword_100BC7620;
  v41 = xmmword_100BC7630;
  v42 = xmmword_100BC7640;
  v43 = xmmword_100BC7650;
  v44.i64[0] = 0x9B009B009B009BLL;
  v44.i64[1] = 0x9B009B009B009BLL;
  v45 = vdupq_n_s32(v34);
  v46.i64[0] = 0x1000000010;
  v46.i64[1] = 0x1000000010;
  do
  {
    v47 = *(v33 + v39);
    v48 = vmovl_high_u8(v47);
    v49 = vmovl_u8(*v47.i8);
    v51.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v42, v45), vsubq_s32(v42, v45)), v45), vmull_high_u16(v49, v44));
    v51.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v41, v45), vsubq_s32(v41, v45)), v45), vmull_u16(*v48.i8, 0x9B009B009B009BLL));
    v51.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v43, v45), vsubq_s32(v43, v45)), v45), vmull_u16(*v49.i8, 0x9B009B009B009BLL));
    v51.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v40, v45), vsubq_s32(v40, v45)), v45), vmull_high_u16(v48, v44));
    *(v33 + v39) = vqtbl4q_s8(v51, xmmword_100BC7660);
    v39 += 16;
    v43 = vaddq_s32(v43, v46);
    v42 = vaddq_s32(v42, v46);
    v41 = vaddq_s32(v41, v46);
    v40 = vaddq_s32(v40, v46);
  }

  while (v39 != 96);
  STACK[0x76E0] = STACK[0xBFE8] + a1;
  return (*(STACK[0xF18] + 8 * (((v5 + 17395) * (v4 < 0x110C9DC9)) ^ (v4 + 1396287898))))(v40, v41, v42, v43);
}

uint64_t sub_100619570@<X0>(unint64_t a1@<X8>)
{
  STACK[0xB658] = a1;
  v4 = STACK[0x7690];
  v5 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0xB660] = v5;
  STACK[0xB668] = (v5 + 41);
  STACK[0x7690] = v4 + 64;
  v6 = v2 ^ 0xFDF5;
  STACK[0x87B0] = 0;
  v7 = STACK[0xF18];
  v8 = *(STACK[0xF18] + 8 * (v1 ^ 0xB911));
  STACK[0x2698] = 0;
  v8(*(&off_1010A0B50 + (v1 ^ 0x7184)) - 1406260842, v5 + 41, 9);
  *v5 = (53 - ((((v6 >> 4) ^ 0x1C) - 89) ^ ((v6 >> 4) + 59) ^ (((v6 >> 4) ^ 0x6C) - 41))) ^ 0xA6;
  v5[1] = (53 - ((((v6 >> 12) ^ 0x1C) - 89) ^ ((v6 >> 12) + 59) ^ (((v6 >> 12) ^ 0x6C) - 41))) ^ 0xBA;
  v5[2] = ((((v6 & 0xF ^ 0xBD) + 54) ^ ((v6 & 0xF ^ 0xFA) + 115) ^ (((v1 - 89) & 0xEB ^ (v1 - 81) & 0xBB ^ 0x88) + (v6 & 0xF ^ 0x47))) - 40) ^ 0xCA;
  v5[3] = (((HIBYTE(v6) & 0xF ^ 0xFA) + 115) ^ ((HIBYTE(v6) & 0xF ^ 0x47) - 48) ^ ((HIBYTE(v6) & 0xF ^ 0xBD) + 54) ^ 1) - 40;
  v5[4] = 0;
  *(v3 + 752) = 1;
  if ((*(v7 + 8 * (v1 + 22732)))(0, &STACK[0x6520]))
  {
    v9 = *(v3 + 752) == 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  return (*(v7 + 8 * (((8 * v10) | (32 * v10)) ^ v1)))();
}

uint64_t sub_10061976C@<X0>(char a1@<W6>, unint64_t a2@<X8>)
{
  STACK[0x2B38] = a2;
  LOBYTE(STACK[0xB657]) = a1;
  *(a2 + 12) = *(v2 + 12);
  *(a2 + 8) = *(v2 + 8);
  *(a2 + 48) = *(v2 + 48);
  v4 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v3);
  return (*(v4 + 8 * (((v3 + 37460) ^ 0xA1ED) + v3)))();
}

uint64_t sub_1006198A0@<X0>(__int16 a1@<W8>)
{
  LOWORD(STACK[0xB600]) = a1;
  LOWORD(STACK[0xB602]) = v1;
  v3 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * (v2 - 24403));
  return (*(v3 + 8 * ((v2 - 24403) ^ 0x1172)))();
}

uint64_t sub_100619B50(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xF10];
  v3 = LOWORD(STACK[0x3FE6]);
  v4 = STACK[0x897E];
  *((((v3 ^ 0x609B3850F14DF207) - 0x609B3850F14DF207) ^ ((v3 ^ 0xCE90EAE65ADE5337) + 0x316F1519A521ACC9) ^ ((STACK[0xF10] ^ 0xEA8E ^ v3 ^ 0xAE0BD2B6AB93DB38) + 0x51F42D49546C4573)) + STACK[0x1FE0] + 7102) = LOWORD(STACK[0x897E]) ^ 0xBD;
  LODWORD(STACK[0x29A4]) = (v3 ^ 0x1BBD) + 2;
  STACK[0x95A0] = STACK[0x9378];
  LOWORD(STACK[0x79DE]) = v4;
  LODWORD(STACK[0x16B4]) = -108169092;
  return (*(STACK[0xF18] + 8 * (v2 - 27257)))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_100619C98(uint64_t a1, int a2)
{
  STACK[0x9870] = 327 * (v2 ^ 0x8206u) + v3 - 35659;
  v6 = ((a2 ^ 0xF2B6A3E9) + 222911511) ^ ((a2 ^ 0x85D9DB96) + 2049320042) ^ ((a2 ^ 0x6E09E9A0) - 1846143392);
  *v4 = *(v5 + v6 + 426152399);
  v4[1] = *(v5 + v6 + 426152400);
  v4[2] = *(v5 + v6 + 426152401);
  v4[3] = *(v5 + v6 + 426152402);
  v4[4] = *(v5 + v6 + 426152403);
  v4[5] = *(v5 + v6 + 426152404);
  v4[6] = *(v5 + v6 + 426152405);
  v4[7] = *(v5 + v6 + 426152406);
  v4[8] = *(v5 + v6 + 426152407);
  v4[9] = *(v5 + v6 + 426152408);
  v4[10] = *(v5 + v6 + 426152409);
  v4[11] = *(v5 + v6 + 426152410);
  v4[12] = *(v5 + v6 + 426152411);
  v4[13] = *(v5 + v6 + 426152412);
  v4[14] = *(v5 + v6 + 426152413);
  v4[15] = *(v5 + v6 + 426152414);
  return (*(STACK[0xF18] + 8 * v2))(STACK[0x6728]);
}

uint64_t sub_100619EAC(uint64_t a1)
{
  v2 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 36439)))(24);
  return (*(v2 + 8 * (((v4 == 0) * ((v1 - 1022542916) & 0x3CF2C983 ^ 0x41AC)) ^ v1)))(a1);
}

uint64_t sub_100619F24()
{
  v1 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 37496) ^ 0xA101) + v0)))();
}

uint64_t sub_100619F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, int8x16_t a3@<Q3>, int8x16_t a4@<Q4>)
{
  v11 = ~v6 + a2;
  v12 = *(v10 + v11 - 15);
  v13 = *(v10 + v11 - 31);
  v14 = a1 + v11;
  *(v14 - 15) = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a3)), a4);
  *(v14 - 31) = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a3)), a4);
  return (*(STACK[0xF18] + 8 * ((((v5 ^ v8) + v6 == v4) * v9) ^ v7)))();
}

uint64_t sub_10061A154()
{
  v0 = STACK[0xF10] - 9155;
  v1 = STACK[0xF10] - 34547;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 ^ v1 ^ 0x74DB)))();
}

uint64_t sub_10061A19C()
{
  *v1 |= 0x100u;
  v4 = STACK[0xB588];
  *(v4 + 40) = v0 - 176739293 + *STACK[0xA3E8];
  *(v4 + 44) = (((v2 ^ 0xDA19D46F) + 635841425) ^ ((v2 ^ 0x223F1208) - 574558728) ^ ((((v3 ^ 0x9E1B) + 301102651) ^ v2) - 301138294)) - 371865847;
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_10061A250()
{
  v1 = STACK[0xF10] - 15018;
  v2 = STACK[0x1800];
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(*(STACK[0x1800] + 720));
  *(v2 + 720) = 0;
  *(v2 + 728) = v0;
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_10061A298()
{
  if (v2 == v0)
  {
    v3 = 8;
  }

  else
  {
    v3 = 4;
  }

  v4 = (((LODWORD(STACK[0x22EC]) ^ 0x2A5FF4C6662ADDD9) - 0x2A5FF4C6662B6914 + ((v1 + 607688805) & 0xDBC7BF7B)) ^ ((LODWORD(STACK[0x22EC]) ^ 0x2F64C0DF6EDE6B88) - 0x2F64C0DF6EDE6B88) ^ (((((v1 + 36062) | 0x184u) + 0x53B3419E120AF84) ^ LODWORD(STACK[0x22EC])) - 0x53B3419E1217140)) + 0x177BB39EFLL;
  v6 = v4 > 0x8DE572DD && v4 < (v3 | 0x8DE572E0);
  return (*(STACK[0xF18] + 8 * ((7 * v6) ^ v1)))();
}

uint64_t sub_10061A418@<X0>(unsigned int a1@<W8>)
{
  *(v3 + 2516) = a1;
  v4 = (((v2 ^ 0xBA33DA34) + 1171006924) ^ ((v2 ^ 0xDC5DD2A1) + 597831007) ^ (((((v1 - 5131) | 0x13C) - 1596381927) ^ v2) + 1596381547)) + 802648766;
  v5 = v4 < 0x692044BE;
  v6 = a1 + 1763722430 < v4;
  if (a1 > 0x96DFBB41 != v5)
  {
    v6 = v5;
  }

  *(v3 + 2523) = v6;
  return (*(STACK[0xF18] + 8 * ((44542 * v6) ^ v1)))();
}

uint64_t sub_10061A4F4()
{
  v1 = STACK[0xF10] + 6394;
  *STACK[0x4978] = v0 & 0xFFFFFFF | 0xE0000000;
  *STACK[0x3838] = STACK[0x7C80];
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10061A594()
{
  v0 = STACK[0xF10] - 31317;
  STACK[0x23E0] = STACK[0x68C8] + (SLODWORD(STACK[0x5D0C]) ^ 0x196691DFLL);
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x837)))();
}

uint64_t sub_10061A5E0()
{
  v0 = (STACK[0xF10] - 2283) | 0x1009;
  v1 = STACK[0xF10] - 33949;
  STACK[0x13C0] = STACK[0x63B8];
  v2 = STACK[0xF18];
  STACK[0x5040] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 30184) ^ v1)))();
}

uint64_t sub_10061A644()
{
  v1 = v0 - 36203;
  v2 = *(STACK[0x9080] - 0x74AEF492C2474BEFLL);
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v2;
  LODWORD(STACK[0x35EC]) = 1693393403;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10061A6BC()
{
  v2 = STACK[0x4B50];
  v3 = STACK[0x1A68];
  v4 = STACK[0x6BEC];
  *(v3 + (v4 - 824251475)) = LOBYTE(STACK[0x627C]) ^ 0x6C;
  v5 = (v4 - 824251474);
  v6 = STACK[0x6980];
  v7 = 1112314453 * ((&STACK[0x10000] + 3800) ^ 0xEF562AD9);
  LOWORD(STACK[0x10ED8]) = -28075 * ((&STACK[0x10000] + 3800) ^ 0x2AD9) + 3771;
  STACK[0x10EF8] = (v2 + 64);
  LODWORD(STACK[0x10EDC]) = (v0 + 679177169) ^ v7;
  LODWORD(STACK[0x10EF0]) = v7 + 1599993265 * v5 + 1244298177;
  STACK[0x10EE8] = v3;
  STACK[0x10EE0] = v6;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * (v0 ^ 0x8A7E)))(&STACK[0x10ED8]);
  v10 = (v3 + v5);
  v10[19] = v2[83] ^ (v0 - 47);
  *((v0 ^ 0x78B1u) + v5 + v3 - 14381) = v2[82] ^ 0x5F;
  v10[17] = v2[81] ^ 0x5F;
  v10[16] = v2[80] ^ 0x5F;
  v10[15] = v2[79] ^ 0x5F;
  v10[14] = v2[78] ^ 0x5F;
  v10[13] = v2[77] ^ 0x5F;
  v10[12] = v2[76] ^ 0x5F;
  v10[11] = v2[75] ^ 0x5F;
  v10[10] = v2[74] ^ 0x5F;
  v10[9] = v2[73] ^ 0x5F;
  v10[8] = v2[72] ^ 0x5F;
  v10[7] = v2[71] ^ 0x5F;
  v10[6] = v2[70] ^ 0x5F;
  v10[5] = v2[69] ^ 0x5F;
  v10[4] = v2[68] ^ 0x5F;
  v10[3] = v2[67] ^ 0x5F;
  v10[2] = v2[66] ^ 0x5F;
  v10[1] = v2[65] ^ 0x5F;
  *v10 = v2[64] ^ 0x5F;
  return (*(v8 + 8 * ((5563 * (LODWORD(STACK[0x14E0]) == v1)) ^ v0)))(v9);
}

uint64_t sub_10061A8C8@<X0>(int a1@<W8>)
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
  STACK[0xBB00] = 0;
  STACK[0xBB08] = v1;
  v12 = 16777619 * ((553300517 * v11 + 7) ^ (553300517 * v11)) % 7;
  v13 = 16777619 * ((553300517 * v11 + 6) ^ (553300517 * v11)) % 6;
  v14 = 16777619 * ((553300517 * v11 + 5) ^ (553300517 * v11)) % 5;
  v15 = *(&STACK[0xBB00] | v12);
  *(&STACK[0xBB00] | v12) = STACK[0xBB07];
  v16 = *(&STACK[0xBB00] | v13);
  *(&STACK[0xBB00] | v13) = STACK[0xBB06];
  v17 = *(&STACK[0xBB00] | v14);
  *(&STACK[0xBB00] | v14) = STACK[0xBB05];
  v18 = 16777619 * ((553300517 * v11 + 3) ^ (553300517 * v11)) % 3;
  v19 = vdup_n_s32(553300517 * v11);
  v20.i32[0] = v19.i32[0];
  v20.i32[1] = 553300517 * v11 + 1;
  LOBYTE(STACK[0xBB07]) = v15;
  v21 = veor_s8(vmul_s32(v20, v19), v19);
  LOBYTE(STACK[0xBB06]) = v16;
  LOBYTE(STACK[0xBB05]) = v17;
  v22 = STACK[0xBB00];
  LOBYTE(STACK[0xBB00]) = STACK[0xBB04];
  LOBYTE(STACK[0xBB04]) = v22;
  v23 = *(&STACK[0xBB00] | v18);
  *(&STACK[0xBB00] | v18) = STACK[0xBB03];
  LOBYTE(STACK[0xBB03]) = v23;
  v24 = STACK[0xBB01];
  LOBYTE(STACK[0xBB02]) = STACK[0xBB00];
  LOWORD(STACK[0xBB00]) = v24;
  STACK[0xBB00] = vmla_s32(v21, STACK[0xBB00], vdup_n_s32(0x1000193u));
  v25 = STACK[0xBB08];
  v26 = (553300517 * STACK[0xBB08]) ^ v11;
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
  v48 = *(&STACK[0xBB08] + v12);
  *(&STACK[0xBB08] + v12) = STACK[0xBB0F];
  LOBYTE(STACK[0xBB0F]) = v48;
  v49 = *(&STACK[0xBB08] + v13);
  *(&STACK[0xBB08] + v13) = STACK[0xBB0E];
  LOBYTE(STACK[0xBB0E]) = v49;
  v50 = *(&STACK[0xBB08] + v14);
  *(&STACK[0xBB08] + v14) = STACK[0xBB0D];
  LOBYTE(STACK[0xBB0D]) = v50;
  v51 = STACK[0xBB08];
  LOBYTE(STACK[0xBB08]) = STACK[0xBB0C];
  LOBYTE(STACK[0xBB0C]) = v51;
  v52 = *(&STACK[0xBB08] + v18);
  *(&STACK[0xBB08] + v18) = STACK[0xBB0B];
  LOBYTE(STACK[0xBB0B]) = v52;
  v53 = STACK[0xBB09];
  LOBYTE(STACK[0xBB0A]) = STACK[0xBB08];
  LOWORD(STACK[0xBB08]) = v53;
  STACK[0xBB08] = vmla_s32(v21, STACK[0xBB08], vdup_n_s32(0x1000193u));
  *v42 = STACK[0xBB08] ^ STACK[0xBB00];
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_10061AD64()
{
  v1 = STACK[0xF18];
  STACK[0x40E0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 6152) | 0x2448) - 4769) ^ v0)))();
}

uint64_t sub_10061ADC4(uint64_t a1)
{
  v4 = *(STACK[0xF18] + 8 * v1);
  LODWORD(STACK[0xEA0]) = v3;
  LODWORD(STACK[0xE90]) = v2;
  return v4(a1, v1 ^ 0x3E88u, 997876304, 4294967249, 114, 156, 197, 55);
}

uint64_t sub_10061AE8C()
{
  LODWORD(STACK[0x96D8]) = -371865839;
  STACK[0x6A60] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10061AEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = STACK[0xFE8];
  LODWORD(STACK[0x7BEC]) = *(*STACK[0x938] + 640 * (LODWORD(STACK[0x17D8]) - 1210925842) + 136);
  STACK[0x6308] = 0;
  return (*(STACK[0xF18] + 8 * (((v8 == 0) * ((a8 ^ 0xE9D5408B) - 70276 + (((a8 ^ 0xE9D5408B) + 927) | 2))) ^ a8 ^ 0xE9D5408B)))();
}

uint64_t sub_10061AF44@<X0>(int a1@<W8>)
{
  v5 = a1 + ((327 * (v1 ^ 0xC168)) ^ 0x8B33);
  *(v3 + 2792) = v5;
  v6 = (((v4 ^ ((v1 ^ 0xC6DD) - 1904046334)) + 1904044326) ^ ((v4 ^ 0x1E5BA4BB) - 509322427) ^ ((v4 ^ 0x790CF570) - 2030892400)) + 90422838;
  v7 = v5 > 0xE47208DA;
  v8 = v7 ^ (v6 < 0x1B8DF725);
  v9 = a1 + 462288685 > v6;
  if (!v8)
  {
    v7 = v9;
  }

  if (v7)
  {
    v10 = 371891407;
  }

  else
  {
    v10 = v2;
  }

  LODWORD(STACK[0x81D8]) = v10;
  *(v3 + 2799) = v10 == -371865839;
  return (*(STACK[0xF18] + 8 * ((43 * (v10 != -371865839)) ^ v1)))();
}

uint64_t sub_10061B0EC()
{
  v0 = STACK[0xF10] - 32103;
  *(STACK[0x4D80] + (LODWORD(STACK[0xA32C]) + 7)) = 11;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x246B)))();
}

uint64_t sub_10061B1B8@<X0>(int a1@<W8>)
{
  v2 = a1 | 0x8850C500;
  v3 = (((*(v1 + 245) - 1588086265) << (71 * (a1 ^ 0x7Cu) - 58)) & 0x1BBC2FB5ELL) + ((*(v1 + 245) - 1588086265) ^ 0x99CB3CD7DDE17DAFLL);
  STACK[0xB440] = v3 - 0x3096B3046AD4B438;
  v4 = v3 + ((a1 | 0x8850C500) ^ 0x6634C3281CABBB6FLL);
  v5 = STACK[0x7D20] - 0x6F6F2C6D4E8B9FEBLL;
  v6 = v4 < 0xD35FFA29;
  v7 = v4 > v5;
  if (v5 < 0xD35FFA29 != v6)
  {
    v7 = v6;
  }

  if (v7)
  {
    v8 = 371891407;
  }

  else
  {
    v8 = STACK[0xB438];
  }

  LODWORD(STACK[0x7404]) = v8;
  v9 = (((v8 - v2) | (v2 - v8)) & 0x80000000) == 0;
  LOBYTE(STACK[0xB44B]) = v9;
  return (*(STACK[0xF18] + 8 * ((430 * v9) ^ (v2 + 371892650))))();
}

uint64_t sub_10061B348()
{
  *(v1 + 1160) = 0;
  LODWORD(STACK[0x5A50]) = 0;
  return (*(STACK[0xF18] + 8 * (v0 - 14491)))(0);
}

uint64_t sub_10061B3D0()
{
  v0 = STACK[0xF10] - 33988;
  STACK[0x3F28] = STACK[0x3330] + ((((STACK[0xF10] - 1497796670) & 0x5946975B) - 1397870887) ^ 0xACAEC132);
  v1 = STACK[0xF18];
  STACK[0x5040] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1C98)))();
}

uint64_t sub_10061B458()
{
  v0 = LODWORD(STACK[0xA800]) + 1267646288;
  v1 = v0 < 0xBA2378F2;
  v2 = v0 > LODWORD(STACK[0x36E8]) - 1172080398;
  if (v1 != LODWORD(STACK[0x36E8]) > 0x45DC870D)
  {
    v2 = v1;
  }

  return (*(STACK[0xF18] + 8 * ((STACK[0xF10] - 13530) ^ (16 * (((STACK[0xF10] + 16) ^ v2) & 1)))))();
}

uint64_t sub_10061B5FC()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 22583)))(v2);
}

uint64_t sub_10061B630()
{
  STACK[0x5C50] = (v1 ^ 0x3EEFE9BFCFFFFFF3) - 0x40EA885C2A36931 + ((v1 << (v0 ^ 0x4Cu)) & 0x19FFFFFE6);
  LODWORD(STACK[0x1374]) = -563251952;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10061B6A4()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 18991)))(72);
  *(STACK[0x1E30] + 480) = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((((v0 + 7709) ^ 0x9E80) + 32867) ^ 0xC326 ^ (2870 * ((v0 + 7709) ^ 0x9E80)))) ^ (v0 + 7709))))();
}

uint64_t sub_10061B8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = LODWORD(STACK[0xD30]) < 0x101 && LODWORD(STACK[0xD40]) < 0x101;
  LODWORD(STACK[0xE70]) = v6;
  v7 = (((LODWORD(STACK[0xD60]) ^ 0xE13B76E8) + 516196632) ^ ((LODWORD(STACK[0xD60]) ^ 0xE0EC97F5) + 521365515) ^ ((LODWORD(STACK[0xD60]) ^ 0xEA9FAC1D) + 358598824 + ((5 * (v4 ^ 0xC3CFD7ED) - 7596) | 0x833A))) - 1357374108;
  return (*(STACK[0xF18] + 8 * (v4 ^ 0xC3CF59D4 ^ (97 * (((v7 - v4) | (v4 - v7)) >> 31)))))(a1, a2, a3, a4, STACK[0xD50]);
}

uint64_t sub_10061BAA0@<X0>(int a1@<W8>)
{
  v5 = STACK[0xF18];
  STACK[0x5310] = *(STACK[0xF18] + 8 * a1);
  STACK[0x16A8] = v2;
  LODWORD(STACK[0x25D4]) = v3;
  STACK[0x2C90] = v1;
  v6 = (*(v5 + 8 * (v4 ^ 0x77C4)))(48);
  STACK[0x68E8] = v6 + 0x427A3CD3E8C5DA2FLL;
  return (*(v5 + 8 * (((v6 == 0) * (((v4 - 48412) | 0x10A8) ^ ((v4 ^ 0x3667) - 31312))) | v4)))();
}

uint64_t sub_10061BB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x3908]) = LODWORD(STACK[0x3908]) + 715 * (v7 ^ 0xA940) - 2852;
  v8 = STACK[0x7D40];
  LODWORD(STACK[0xACC4]) = *(STACK[0x7D40] + 192);
  STACK[0xACC8] = v8 + 196;
  return (*(STACK[0xF18] + 8 * (((STACK[0xACB8] == 0) * (((v7 - 17503) | 0x1018) - 29920)) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, &off_1010A0B50);
}

uint64_t sub_10061BBC4()
{
  v0 = STACK[0xF10] - 10844;
  v1 = ((STACK[0xF10] - 2791) | 0x1009) + 18544 + (((LOWORD(STACK[0xB98E]) ^ 0x4BDA) - 19418) ^ ((LOWORD(STACK[0xB98E]) ^ 0xEFA0) + 4192) ^ ((LOWORD(STACK[0xB98E]) ^ 0x7C98) - 31896));
  LOWORD(STACK[0x1622]) = v1;
  return (*(STACK[0xF18] + 8 * ((54 * (v1 != 0)) ^ v0)))();
}

uint64_t sub_10061BD64()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 30391) ^ 0x8B74) + v0)))();
}

uint64_t sub_10061BE2C()
{
  v0 = STACK[0xF10];
  STACK[0x64C8] = STACK[0x3358] - 0x10A99C80114D147FLL;
  return (*(STACK[0xF18] + 8 * (v0 - 24185)))();
}

uint64_t sub_10061BE88(char a1)
{
  v4 = a1 - ((v3 ^ 0x97) & (2 * a1)) + 84;
  *(v1 + STACK[0xE60] - 1974824222) = *(v2 + ((((v1 ^ 0x92) + 116) ^ v1 ^ ((v1 ^ 0xED) + 13) ^ ((v1 ^ 0xE5) + 5) ^ (((-89 * (v3 ^ 0x38) - 13) ^ v1) + 102)) ^ 0x1ELL)) + (((v4 ^ 0x60) - 96) ^ ((v4 ^ 0x50) - 80) ^ ((v4 ^ 0x64) - 100)) - 81;
  return (*(STACK[0xF18] + 8 * (v3 ^ (11135 * (v1 == 1974825085)))))();
}

uint64_t sub_10061BF7C()
{
  v2 = v1 - 336776869 + ((v0 - 1019) | 0x8002u);
  *(STACK[0x9DA0] + STACK[0x2920] + v2 - 0x5C21AD48B6A1F917) = *(STACK[0xACB0] + v2);
  v3 = *(STACK[0xF18] + 8 * v0);
  LODWORD(STACK[0xE40]) = v1 - 1;
  return v3();
}

uint64_t sub_10061BFE8()
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 68);
  *(v1 + 56) = (v2 >> 21) - ((v2 >> 21 << (83 * (v0 ^ 2) - 108)) & 0xBE) + 95;
  *(v1 + 57) = (v2 >> 13) - ((v2 >> 12) & 0xBE) + 95;
  *(v1 + 58) = (v2 >> 5) - ((v2 >> 4) & 0xBE) + 95;
  *(v1 + 59) = (__PAIR64__(v2, v3) >> 29) - ((2 * (__PAIR64__(v2, v3) >> 29)) & 0xBF) + 95;
  *(v1 + 60) = (v3 >> 21) - ((v3 >> 20) & 0xBE) + 95;
  *(v1 + 61) = (v3 >> 13) - ((v3 >> 12) & 0xBE) + 95;
  *(v1 + 62) = (v3 >> 5) - ((v3 >> 4) & 0xBE) + 95;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10061C1F0()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 21498 + v0 + 25355)))();
}

uint64_t sub_10061C338@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 4) = *(v1 + 4);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(v1 + 8) = 0;
  *v2 = a1;
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_10061C384()
{
  v0 = STACK[0xF10] ^ 0x925;
  v1 = STACK[0xF10] - 32498;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 27014) ^ v1)))();
}

uint64_t sub_10061C42C()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 23632)))();
  v3 = (*(v1 + 8 * (v0 + 23284)))(v2, &STACK[0x31A8], &STACK[0x3864], &STACK[0x6370], &STACK[0x2B04]);
  return (*(v1 + 8 * ((45459 * (v3 - ((2 * v3) & 0xD3AB8E22) - 371865839 == 3 * (v0 ^ 0x5E1F) - 371901482)) ^ v0)))();
}

uint64_t sub_10061C608()
{
  v3 = v1 ^ 0x20DE4F5147E746EALL ^ (457 * ((v2 - 73609138) & 0x462ABDF ^ 0x2B59u));
  STACK[0x8C08] = v3;
  return (*(STACK[0xF18] + 8 * ((507 * (v3 != v0)) ^ v2)))();
}

uint64_t sub_10061C674()
{
  v0 = 2593 * (STACK[0xF10] ^ 0x8B2A);
  v1 = STACK[0xF10] - 16645;
  STACK[0x9EA8] = &STACK[0x65F8];
  if (STACK[0xACF8])
  {
    v2 = LODWORD(STACK[0xAD04]) == ((v0 + 5109) | 0x101) - 371915286;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  return (*(STACK[0xF18] + 8 * ((126 * v3) ^ v1)))();
}

uint64_t sub_10061C73C(unint64_t a1)
{
  STACK[0x95A0] = a1;
  LOWORD(STACK[0x79DE]) = 7087;
  LODWORD(STACK[0x16B4]) = 1037462070;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10061C80C()
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
  STACK[0xC160] = 0;
  STACK[0xC168] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC160] | v10);
  *(&STACK[0xC160] | v10) = 0;
  LOBYTE(STACK[0xC167]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC160] | v12);
  *(&STACK[0xC160] | v12) = STACK[0xC166];
  LOBYTE(STACK[0xC166]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC160] | v14);
  *(&STACK[0xC160] | v14) = STACK[0xC165];
  LOBYTE(STACK[0xC165]) = v15;
  v16 = STACK[0xC160];
  LOBYTE(STACK[0xC160]) = STACK[0xC164];
  LOBYTE(STACK[0xC164]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC160] | v17);
  *(&STACK[0xC160] | v17) = STACK[0xC163];
  LOBYTE(STACK[0xC163]) = v18;
  v19 = STACK[0xC161];
  LOBYTE(STACK[0xC162]) = STACK[0xC160];
  LOWORD(STACK[0xC160]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC160] = vmla_s32(v22, STACK[0xC160], vdup_n_s32(0x1000193u));
  STACK[0xC168] ^= STACK[0xC160];
  STACK[0xC168] = vmul_s32(vsub_s32(STACK[0xC168], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC16A];
  LOWORD(STACK[0xC169]) = STACK[0xC168];
  LOBYTE(STACK[0xC168]) = v23;
  v24 = (&STACK[0xC168] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC16B];
  LOBYTE(STACK[0xC16B]) = v19;
  LOBYTE(v24) = STACK[0xC168];
  LOBYTE(STACK[0xC168]) = STACK[0xC16C];
  LOBYTE(STACK[0xC16C]) = v24;
  v25 = (&STACK[0xC168] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC16D];
  LOBYTE(STACK[0xC16D]) = v24;
  v26 = (&STACK[0xC168] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC16E];
  LOBYTE(STACK[0xC16E]) = v25;
  v27 = (&STACK[0xC168] | v10);
  v28 = *v27;
  *v27 = STACK[0xC16F];
  LOBYTE(STACK[0xC16F]) = v28;
  v29 = STACK[0xC168];
  v30 = (553300517 * STACK[0xC168]) ^ v9;
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
  *STACK[0x940] = STACK[0xC168];
  return (*(STACK[0xF18] + 8 * (v1 - 18153)))(v47, v48);
}

uint64_t sub_10061CCA0()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 31387)))();
  STACK[0x7588] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10061CD58()
{
  v0 = STACK[0xF10] - 25365;
  v1 = STACK[0x56D8];
  STACK[0x36F0] = STACK[0x6368];
  STACK[0x73E8] = v1;
  LODWORD(STACK[0x56B8]) = 744170677;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10061CD98()
{
  v0 = STACK[0xF10] - 20583;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16221)))((32 * LODWORD(STACK[0x8154])) ^ 0x3AB8E220u);
  STACK[0x1E60] = v2;
  return (*(v1 + 8 * ((56 * (v2 != 0)) ^ v0)))();
}

uint64_t sub_10061CDFC()
{
  v0 = STACK[0xF10] ^ 0x3D;
  v1 = v0 + 124;
  v2 = -45 * v0;
  v3 = STACK[0xF10] + 3072;
  *(STACK[0x2478] - 0x10A99C80114D1487) = STACK[0x11BC];
  return (*(STACK[0xF18] + 8 * ((107 * (((STACK[0x80B8] == 0) ^ (v1 + v2 + 1)) & 1)) ^ v3)))();
}

uint64_t sub_10061CFCC()
{
  v0 = STACK[0xF10] + 1445;
  LODWORD(STACK[0x3E80]) = LODWORD(STACK[0x3E80]) + ((STACK[0xF10] - 30518) | 0x300) - 26386 + 103 * (STACK[0xF10] ^ 0x8BFC);
  return (*(STACK[0xF18] + 8 * ((9790 * LOBYTE(STACK[0x8576])) ^ v0)))();
}

uint64_t sub_10061D258()
{
  v0 = (STACK[0xF10] - 26315) | 0x4308;
  v1 = STACK[0xF10] - 34528;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 21448) ^ v1)))();
}

uint64_t sub_10061D2A8()
{
  v5 = *v2;
  *(v0 - 1) = *(v2 - 1);
  *v0 = v5;
  return (*(STACK[0xF18] + 8 * (((v1 != 0) * v4) ^ v3)))();
}

uint64_t sub_10061D2F8@<X0>(int a1@<W8>)
{
  v1 = a1 - 1534379141;
  v2 = a1 + 10138;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (a1 + 26376)))();
  return (*(v3 + 8 * (((v1 < 0x6737ABD9) * (v2 ^ 0xA85A)) ^ (v1 + 1534361515))))(v4);
}

uint64_t sub_10061D3B8@<X0>(uint64_t a1@<X4>, void *a2@<X8>)
{
  *(v4 + v5) = a1;
  *(*a2 + v5 + 8) = v3;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10061D3F0()
{
  v1 = STACK[0xF18];
  STACK[0x1DB0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 1197873670) & 0xB899D7DF) + 17357) ^ v0)))();
}

uint64_t sub_10061D4EC()
{
  STACK[0x9DB0] = ((v1 << (((v0 + 127) & 0xF9) + 40)) & 0x1FFADECFELL) + (v1 ^ 0x9EBBFBBFFFD6F67FLL) + 0x6DED9D6CC7ED8FDBLL;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x1964)))();
}

uint64_t sub_10061D59C()
{
  STACK[0x8FE8] = *(*(STACK[0x9698] - 0x10A99C80114D147FLL) - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v1;
  LODWORD(STACK[0x7FD8]) = 1751212916;
  LODWORD(STACK[0x704C]) = -2116087568;
  LODWORD(STACK[0x4A8C]) = -371865837;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10061D66C()
{
  v2 = ((v1 ^ 0x9BAC98B7) + 1683187529) ^ ((v1 ^ 0x302E6A67) - 808348263) ^ (((((v0 + 1815421182) & 0x93CA5F64) + 1113007713) ^ v1) - 1113011649);
  v3 = LODWORD(STACK[0x3908]) - 1671732131;
  v2 -= 2043597978;
  v4 = (v3 < 0x9C5B6455) ^ (v2 < 0x9C5B6455);
  v5 = v3 > v2;
  if (v4)
  {
    v5 = v3 < 0x9C5B6455;
  }

  return (*(STACK[0xF18] + 8 * ((465 * !v5) ^ v0)))();
}

uint64_t sub_10061D754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 30181;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x7E40];
  STACK[0x5D28] = &STACK[0x416C];
  LODWORD(STACK[0x4704]) = -379110376;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10061D7A8()
{
  STACK[0x9E80] = (((v0 + 21606) - 0x9000168085DCLL) ^ v1) + ((2 * v1) & 0x1D2FFBBFALL) + 0x3F14968D7FFFAFF0;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x1977)))();
}

uint64_t sub_10061D8D4()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1F09)))();
}

uint64_t sub_10061D99C()
{
  v2 = *(v1 + 8);
  STACK[0x5FE8] = v1 + 8;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762635452) ^ (906386353 * ((~(&STACK[0x10000] + 3800) & 0xBFF225BE | (&STACK[0x10000] + 3800) & 0x400DDA40) ^ 0x8EF3E89A));
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 42094)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (((*(v1 + 160) == 0) * (((3 * (v0 ^ 0x822) - 996903809) & 0x3B6B0FF7) - 3789)) ^ v0)))(v4);
}

uint64_t sub_10061DAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  LODWORD(STACK[0x98E4]) = v8;
  STACK[0x3F48] = v5;
  LODWORD(STACK[0x117C]) = v7;
  STACK[0x98E8] = v6;
  return (*(STACK[0xF18] + 8 * (v9 ^ 0x191C)))(a1, a2, a3, a4, (v9 ^ 0x8E88u) + 1728844287 + a5);
}

uint64_t sub_10061DB04()
{
  v1 = STACK[0x90D0] + 480;
  STACK[0x40D0] = v1;
  v2 = 634647737 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x45822EF0) - 981324045) ^ 0xA814010F);
  STACK[0x10EE0] = v1;
  LODWORD(STACK[0x10ED8]) = v2 - 1431125376;
  LODWORD(STACK[0x10EE8]) = v0 - v2 + 19353;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 50339)))(&STACK[0x10ED8]);
  STACK[0x16D8] = *(v3 + 8 * v0);
  return (*(v3 + 8 * (v0 ^ 0x25D9 ^ (v0 + 1829926111) & 0x92EDBCD7)))(v4);
}

uint64_t sub_10061DBDC@<X0>(void *a1@<X8>)
{
  *(v4 + 132) -= *(v3 + 64);
  *(v4 + 12) += (v2 + 30648) ^ 0xFFFF506E;
  if (v1)
  {
    a1 = (v1 + 56);
  }

  *a1 = *(v3 + 56);
  *(v3 + 56) = 0;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10061DD08()
{
  *(v2 + 96) = *(v0 + 96);
  *(v0 + 96) = 0;
  return (*(STACK[0xF18] + 8 * (v1 - 10171)))();
}

uint64_t sub_10061DE90()
{
  v4 = *v3;
  v5 = STACK[0xF18];
  STACK[0x5290] = *(STACK[0xF18] + 8 * v1);
  if (v0)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  STACK[0xB638] = v4;
  STACK[0xB640] = v0;
  return (*(v5 + 8 * ((v7 * ((v2 + 1766139313) & 0x96BA7FDB ^ 0x1E0B)) ^ v2)))();
}

uint64_t sub_10061DF00()
{
  v2 = STACK[0xF10];
  v3 = STACK[0xF10] - 23612;
  LODWORD(STACK[0xAD7C]) = v1;
  return (*(STACK[0xF18] + 8 * (((v2 - 18402) * v0) ^ v3)))();
}

uint64_t sub_10061DFF4@<X0>(int a1@<W8>)
{
  v5 = STACK[0xF18];
  STACK[0x7E68] = *(STACK[0xF18] + 8 * a1);
  STACK[0x7A08] = v2;
  STACK[0x25A0] = v1;
  v6 = STACK[0x7690];
  v7 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x8480] = v7;
  STACK[0x8F68] = (v7 + 144);
  STACK[0xB290] = (v7 + 1168);
  STACK[0x7690] = v6 + 1200;
  STACK[0x54C8] = v3;
  return (*(v5 + 8 * ((63 * (((v4 + 122) ^ (v3 == 0)) & 1)) ^ (v4 - 20835))))();
}

uint64_t sub_10061E084()
{
  v1 = STACK[0xF18];
  STACK[0x31A0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 - 1330620504) & 0x4F4FAFDF) + 3133) ^ v0)))();
}

uint64_t sub_10061E0DC()
{
  v4 = (v1 | ((v1 < 0x33CBA83B) << 32)) + ((10 * (v2 ^ 0x4C58u) + 2866533428) ^ (v2 - 371885501));
  v5 = v4 < 0x76D9C538;
  v6 = v4 > v0 - 0x5D1E61E331EE3DBLL;
  if ((v0 - 0x5D1E61E331EE3DBLL) < 0x76D9C538 != v5)
  {
    v6 = v5;
  }

  if (v6)
  {
    v3 = 371891407;
  }

  LODWORD(STACK[0x93C4]) = v3;
  return (*(STACK[0xF18] + 8 * ((449 * (v3 != -371865839)) ^ v2)))();
}

uint64_t sub_10061E234()
{
  *(*(v3 + 16) + 8 * v2) = v1;
  v4 = *(v3 + 8) + 1;
  *(v3 + 4) = 18632 * (v0 ^ 0x6091) + *(v3 + 4) - 37263;
  *(v3 + 8) = v4;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10061E2B0()
{
  v0 = STACK[0xF10] - 8555;
  v1 = STACK[0x91C0];
  v2 = STACK[0xF10] + 16238;
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * v2))(*(STACK[0x91C0] + 16));
  *(v1 + 16) = 0;
  v4 = (*(v3 + 8 * v2))(*(v1 + 24));
  *(v1 + 24) = 0;
  return (*(v3 + 8 * v0))(v4);
}

uint64_t sub_10061E31C()
{
  v0 = 149 * (STACK[0xF10] ^ 0x8BF2);
  v1 = STACK[0xF10] - 25713;
  v2 = STACK[0xF10] - 13360;
  STACK[0x9DB8] = &STACK[0x34DC];
  v3 = STACK[0xACB8];
  STACK[0x9DC0] = STACK[0xACB8];
  if (v3)
  {
    v4 = LODWORD(STACK[0xACC0]) == v0 + (v1 ^ 0xE9D574DE);
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  return (*(STACK[0xF18] + 8 * (((8 * v5) | (16 * v5)) ^ v2)))();
}

uint64_t sub_10061E398()
{
  v3 = v1 + 997623912 + ((((((v0 ^ 0xDED1) - 47086) | 0x342) ^ 0x1CC5BB02) + (LODWORD(STACK[0xACC4]) ^ 0xE33A4BA4)) ^ ((LODWORD(STACK[0xACC4]) ^ 0x58EA6604) - 1491756548) ^ ((LODWORD(STACK[0xACC4]) ^ 0x52059E4C ^ ((v0 ^ 0xDED1) + 1601518069) & 0xA08A76FD) - 1376119473));
  v4 = (((v2 ^ 0xCF4FF33) - 217382707) ^ ((v2 ^ 0x2B88A1E7) - 730374631) ^ ((v2 ^ 0xCEA999C5) + 827745851)) + 997623908;
  v5 = v3 < 0x51A0C153;
  v6 = v3 > v4;
  if (v4 < 0x51A0C153 != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((78 * v6) ^ v0 ^ 0xDED1)))();
}

uint64_t sub_10061E780()
{
  LODWORD(STACK[0x92C4]) = v1;
  v3 = LOBYTE(STACK[0x813F]) == (3 * (v0 ^ 0x1E) - 109) && v1 != -371865839;
  return (*(STACK[0xF18] + 8 * ((123 * v3) ^ (v0 - 25601))))();
}

uint64_t sub_10061E7D8()
{
  if (STACK[0x3150])
  {
    v2 = v1;
  }

  else
  {
    v2 = 1;
  }

  return (*(STACK[0xF18] + 8 * ((30 * v2) ^ (v0 - 9491))))();
}

uint64_t sub_10061E850()
{
  v3 = 906386353 * STACK[0xE80];
  LODWORD(STACK[0x10EFC]) = LODWORD(STACK[0xE90]) + v3;
  v4 = LODWORD(STACK[0xEA0]) ^ v3;
  LODWORD(STACK[0x10F04]) = v4 ^ 0x3E;
  LODWORD(STACK[0x10ED8]) = v4;
  STACK[0x10EE0] = v0 - v3;
  v5 = STACK[0xF10];
  LODWORD(STACK[0x10F00]) = v3 + STACK[0xF10] + v2;
  LODWORD(STACK[0x10EE8]) = v3 + 1;
  STACK[0x10EF0] = (v1 - 1752957153) ^ v3;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v5 ^ 0x403D)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * SLODWORD(STACK[0x10EF8])))(v7);
}

uint64_t sub_10061E95C()
{
  v1 = (((((v0 - 2000719864) & 0x7740FF3F ^ 0xFFFF74C4) & STACK[0x7F68] ^ 0x44F3962BE5B57752) + ((v0 + 16747) ^ 0x268C4718A8DEE9CELL)) ^ ((((v0 - 2000719864) & 0x7740FF3F ^ 0xFFFF74C4) & STACK[0x7F68] ^ 0x436E456B7DCE7F5CLL) + 0x2111945830A5BC82) ^ ((((v0 - 2000719864) & 0x7740FF3F ^ 0xFFFF74C4) & STACK[0x7F68] ^ 0x79DD3404132B23ELL) + 0x65E202730C5971E4)) - 0x627FD132C64E7866;
  v2 = *STACK[0x8E90] - 0x63763DEBDF62461FLL;
  v3 = (v2 < 0xCDD40188) ^ (v1 < 0xCDD40188);
  v4 = v1 < v2;
  if (v3)
  {
    v4 = v2 < 0xCDD40188;
  }

  return (*(STACK[0xF18] + 8 * ((7 * v4) ^ v0)))();
}

uint64_t sub_10061EB60()
{
  v2 = ((v0 - 16521) ^ 0x9C89C2144209C0A5) + *v1;
  v3 = (v0 - 8566) + STACK[0x4B90] - 0x6B183CBC276A6E0ELL;
  v4 = v2 < 0xEF3FD1BE;
  v5 = v2 > v3;
  if (v4 != v3 < 0xEF3FD1BE)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * (v5 ^ (v0 - 8817))))();
}

uint64_t sub_10061EBF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] ^ 0x33B0;
  LODWORD(STACK[0xA0A0]) = STACK[0x98D4];
  v5 = *(STACK[0x80C8] + 32) + 602832179;
  v6 = ((v5 ^ 0x7376D1DB) + (v3 ^ 0xAF67D826)) ^ v5 ^ ((v5 ^ 0x8DE32C69) + 1374858927) ^ ((v5 ^ 0x2A80FF75) - 158237261) ^ ((v5 ^ 0xF7FB7FFF) + 736820537);
  LODWORD(STACK[0xA0AC]) = v6 ^ 0xA0A6E04A;
  return (*(STACK[0xF18] + 8 * (v3 - 29445)))(a1, a2, a3, v4, 1077842516 - 9 / (v6 ^ 0x23EE7D38u) * (v6 ^ 0x23EE7D38));
}

uint64_t sub_10061ED08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 397 * (STACK[0xF10] ^ 0x8B4C);
  v4 = STACK[0xF10] - 34170;
  LODWORD(STACK[0x9F00]) = STACK[0x98D4];
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x1DF7)))(a1, a2, a3, v3, (v3 - 40143) % (LODWORD(STACK[0x9F04]) ^ 0x481A41BCu) + 1077842507);
}

uint64_t sub_10061EE80@<X0>(int a1@<W8>)
{
  v1 = a1 - 5793;
  v2 = STACK[0x1A58];
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (a1 + 16238)))(*(*(STACK[0x1A58] + 8) + 16 * STACK[0x8960] + 8));
  return (*(v3 + 8 * v1))(*(v2 + 8));
}

uint64_t sub_10061EEE0()
{
  v1 = STACK[0x75B8];
  STACK[0x68B8] = STACK[0x75B8] + 100;
  STACK[0x1A18] = v1;
  v2 = 634647737 * ((&STACK[0x10000] + 3800) ^ 0x6D962FFC);
  STACK[0x10EE0] = v1;
  LODWORD(STACK[0x10ED8]) = v2 - 1431125373;
  LODWORD(STACK[0x10EE8]) = v0 - v2 + 12326;
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0xEAD0)))(&STACK[0x10ED8]);
  v4 = STACK[0xA300];
  v5 = (*(v3 + 8 * (v0 ^ 0xEA8F)))(STACK[0xA300]);
  STACK[0x5400] = v1;
  STACK[0x41A0] = v4;
  LODWORD(STACK[0x20CC]) = v0 + 6665 + v5 - ((2 * v5) & 0xD3AB8E22) - 371881161;
  LODWORD(STACK[0x38AC]) = -732740660;
  return (*(v3 + 8 * v0))();
}

uint64_t sub_10061EFD0()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 25377) ^ 0x74EC) + v0)))();
}

uint64_t sub_10061F010(char a1, char a2, uint64_t a3, int a4, int a5, unsigned int a6)
{
  v14 = (*v9 + a6);
  v15 = (*v9 + (a5 + v10));
  v16 = *(*STACK[0xE50] + (*v13 & v11));
  v17 = *v14;
  v18 = ((((v16 ^ v14) & 0x7FFFFFFF) * v12) ^ ((((v16 ^ v14) & 0x7FFFFFFF) * v12) >> 16)) * v12;
  v19 = ((((v16 ^ v15) & 0x7FFFFFFF) * v12) ^ ((((v16 ^ v15) & 0x7FFFFFFF) * v12) >> 16)) * v12;
  *v15 = *(STACK[0x8E8] + (v18 >> 24)) ^ v17 ^ *((v18 >> 24) + STACK[0x8E0] + 2) ^ *((v18 >> 24) + STACK[0x8F0] + 1) ^ *(STACK[0x918] + (v19 >> 24)) ^ *((v19 >> 24) + STACK[0x908] + 6) ^ *((v19 >> 24) + STACK[0x910] + 5) ^ v18 ^ v19 ^ (BYTE3(v18) * a1) ^ (BYTE3(v19) * a2);
  return (*(STACK[0xF18] + 8 * (((v6 - 1 == v7) * a4) ^ v8)))();
}

uint64_t sub_10061F234()
{
  v1 = (STACK[0xF10] - 1172804668) & 0x45E78FDE;
  v2 = *(v0 + 8);
  STACK[0x6778] = v0 + 8;
  STACK[0x10EE0] = v2;
  LODWORD(STACK[0x10ED8]) = (v1 - 1762660175) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0xF01535E0) - ((&STACK[0x10000] + 3800) & 0xF01535E0)) ^ 0xC114F8C4));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4C67)))(&STACK[0x10ED8]);
  STACK[0x4890] = v0 + 264;
  return (*(v3 + 8 * ((472 * (((v1 + 93) ^ (*(v0 + 264) == 0)) & 1)) ^ v1)))(v4);
}

uint64_t sub_10061F304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10] + 11600;
  v4 = STACK[0xF10] - 34153;
  LODWORD(STACK[0x9FF8]) = STACK[0x98D4];
  v5 = 0x1677 % (v3 ^ 0x7162C6C ^ LODWORD(STACK[0x9FFC])) - ((2 * (0x1677 % (v3 ^ 0x7162C6C ^ LODWORD(STACK[0x9FFC])))) & 0x2CA4) - 1507142062;
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x1DE4)))(a1, a2, a3, v3, (((v5 ^ 0xE52034C8) + 450874168) ^ ((v5 ^ 0x51912B3) - 85529267) ^ ((v5 ^ 0x4613F029) - 1175711785)) - 429299555);
}

uint64_t sub_10061F444()
{
  v3 = v0 - 3996;
  v4 = (v0 - 3996) ^ 0x32E7;
  if ((v1 + 497524781) > 0x40)
  {
    v2 = v1 + 497524781;
  }

  return (*(STACK[0xF18] + 8 * ((13 * (v4 + v2 + ((109 * (v3 ^ 0x8560)) ^ 0xFFFFC204) < v1 + 497524780)) ^ v3)))();
}

uint64_t sub_10061F4DC()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 - 179710993)))();
  STACK[0x1D38] = 0;
  return (*(v1 + 8 * (((((v0 + 1599064252) & 0x95F9EDBB) - 41024) * (v0 < 0xEF7C9C06)) ^ (v0 - 179720618))))(v2);
}

uint64_t sub_10061F54C()
{
  v1 = STACK[0x2B5C];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393371;
  return (*(STACK[0xF18] + 8 * (v0 & 0x276FDDCD)))();
}

uint64_t sub_10061F590()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 2328)))();
}

uint64_t sub_10061F65C@<X0>(int a1@<W0>, int a2@<W8>)
{
  v4 = 1864610357 * ((*(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFB1D8FE70)) ^ v2) & ((v3 ^ 0x9245) + 2147482000));
  v5 = 1864610357 * (v4 ^ HIWORD(v4));
  *v2 = *(*(&off_1010A0B50 + v3 - 37918) + (v5 >> 24) - 559975154) ^ *(*(&off_1010A0B50 + (v3 ^ 0x9BBF)) + (v5 >> 24) - 215296803) ^ *(*(&off_1010A0B50 + (v3 ^ 0x99B0)) + (v5 >> 24) - 1183135989) ^ v5 ^ (105 * BYTE3(v5));
  return (*(STACK[0xF18] + 8 * (((a2 != 1) * a1) ^ v3)))();
}

uint64_t sub_10061F748@<X0>(int a1@<W8>)
{
  v4 = *(v3 + 4 * (v2 - 1703456242));
  v5 = 1566083941 * (((v4 ^ (v4 >> 30) ^ 0x318969B) - 246076974) ^ ((v4 ^ (v4 >> 30) ^ 0xE8964FAC) + 450621671) ^ ((v4 ^ (v4 >> 30) ^ 0xEB8ED937) + 432236158)) - 1868409808;
  v6 = (v5 ^ 0x1E8278B9) & (2 * (v5 & 0x9F0B7A39)) ^ v5 & 0x9F0B7A39;
  v7 = ((2 * (v5 ^ 0x3A80A8BB)) ^ 0x4B17A504) & (v5 ^ 0x3A80A8BB) ^ (2 * (v5 ^ 0x3A80A8BB)) & 0xA58BD282;
  v8 = v7 ^ 0xA4885282;
  v9 = (v7 ^ 0x38000) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x962F4A08) & v8 ^ (4 * v8) & 0xA58BD280;
  v11 = (v10 ^ 0x840B4200) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x21809082)) ^ 0x58BD2820) & (v10 ^ 0x21809082) ^ (16 * (v10 ^ 0x21809082)) & 0xA58BD280;
  v13 = v11 ^ 0xA58BD282 ^ (v12 ^ 0x890000) & (v11 << 8);
  v14 = v5 ^ *(v3 + 4 * (v2 - 1703456241)) ^ (2 * ((v13 << 16) & 0x258B0000 ^ v13 ^ ((v13 << 16) ^ 0x52820000) & (((v12 ^ 0xA502D282) << 8) & 0x258B0000 ^ 0x24090000 ^ (((v12 ^ 0xA502D282) << 8) ^ 0xBD20000) & (v12 ^ 0xA502D282))));
  *(v3 + 4 * (v2 - 1703456241)) = (((v14 ^ 0xB97A0281) + 1764051748) ^ ((v14 ^ 0x678200D9) - 1210234500) ^ ((v14 ^ 0xBE0DD65) - 608201528)) - v2 + 1614878545;
  v15 = 906386353 * STACK[0xE70];
  STACK[0x10EF0] = (v2 + 1393118206) ^ v15;
  LODWORD(STACK[0x10EE8]) = v15 + 1;
  STACK[0x10EE0] = 3096574446u - v15;
  LODWORD(STACK[0x10F00]) = v15 + a1 + v1;
  LODWORD(STACK[0x10ED8]) = (a1 + 22782838) ^ v15;
  LODWORD(STACK[0x10F04]) = (a1 + 22782791) ^ v15;
  LODWORD(STACK[0x10EFC]) = ((a1 + 22782838) ^ 0x13AF) + v15;
  v16 = STACK[0xF18];
  v17 = (*(STACK[0xF18] + 8 * (a1 + 16331)))(&STACK[0x10ED8]);
  return (*(v16 + 8 * SLODWORD(STACK[0x10EF8])))(v17);
}

uint64_t sub_10061FAE8()
{
  v2 = 0;
  v3 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x64E5AD20)) ^ 0x64E5AD20;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
  v11 = v0 - 0x43D8CBFA0CEB42D4;
  v12 = v10 ^ v9 ^ (1692773664 * (v0 - 216744660)) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v10 ^ v9) & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
  v13 = vdupq_n_s32(v12);
  v14 = xmmword_100BC7620;
  v15 = xmmword_100BC7630;
  v16 = xmmword_100BC7640;
  v17 = xmmword_100BC7650;
  v18.i64[0] = 0x9393939393939393;
  v18.i64[1] = 0x9393939393939393;
  v19.i64[0] = 0x1000000010;
  v19.i64[1] = 0x1000000010;
  do
  {
    v20 = *(v11 + v2);
    v27.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC7690), v13), vmulq_s32(vaddq_s32(v16, v13), vsubq_s32(v16, v13)));
    v27.val[0] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC76A0), v13), vmulq_s32(vaddq_s32(v17, v13), vsubq_s32(v17, v13)));
    v27.val[2] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC7680), v13), vmulq_s32(vaddq_s32(v15, v13), vsubq_s32(v15, v13)));
    v27.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC7670), v13), vmulq_s32(vaddq_s32(v14, v13), vsubq_s32(v14, v13)));
    *(v11 + v2) = vmulq_s8(vqtbl4q_s8(v27, xmmword_100BC7660), v18);
    v2 += 16;
    v17 = vaddq_s32(v17, v19);
    v16 = vaddq_s32(v16, v19);
    v15 = vaddq_s32(v15, v19);
    v14 = vaddq_s32(v14, v19);
  }

  while (v2 != 96);
  v21 = (v0 - 0x43D8CBFA0CEB427CLL);
  for (i = 13; i > 2; --i)
  {
    v23 = 16777619 * ((i - 2 + v12) ^ v12) % (i - 2);
    v24 = *(v11 + 8 * v23) ^ *v21;
    *v21 = v24;
    v25 = *(v11 + 8 * v23) ^ v24;
    *(v11 + 8 * v23) = v25;
    *v21-- ^= v25;
  }

  return (*(STACK[0xF18] + 8 * (v1 - 20732)))();
}

uint64_t sub_10061FE14()
{
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x71A66410) - 240753644) ^ 0x17807FDB) + 296753103;
  STACK[0x10ED8] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16271)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 - 689)))(v2);
}

uint64_t sub_10061FED4()
{
  v2 = *(STACK[0xE60] + (v0 - 649173215));
  v3 = *(STACK[0xE60] + (v0 - 649173213));
  v4 = v2 & 0x44 ^ 0x75;
  v5 = (v2 ^ (2 * ((v2 ^ 0x1A) & (2 * ((v2 ^ 0x1A) & (2 * ((v2 ^ 0x1A) & (2 * ((v2 ^ 0x1A) & (2 * ((v2 ^ 0x1A) & (2 * ((v2 ^ 0x1A) & 0x1E ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4))) ^ 0xA5;
  v6 = 2115 * (((v5 ^ 0xE2B6) + 7498) ^ ((v5 ^ 0x828C) + 32116) ^ ((v5 ^ 0x60DB) - 24795)) - 26689;
  v7 = v6 & 0xF4B4 ^ 0xA4C8;
  v8 = (v6 ^ (2 * ((v6 ^ 0x2B24) & (2 * ((v6 ^ 0x2B24) & (2 * ((v6 ^ 0x2B24) & (2 * ((v6 ^ 0x2B24) & (2 * ((v6 ^ 0x2B24) & (2 * ((v6 ^ 0x2B24) & (2 * ((v6 ^ 0x2B24) & (2 * ((v6 ^ 0x2B24) & (2 * ((v6 ^ 0x2B24) & (2 * ((v6 ^ 0x2B24) & (2 * ((v6 ^ 0x2B24) & (2 * ((v6 ^ 0x2B24) & (2 * v7) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7))) ^ 0x533B;
  v9 = 16777247 * (((v8 ^ 0xC4FB54B8) + 990161736) ^ ((v8 ^ 0xFBCB26D8) + 70572328) ^ ((v8 ^ 0x3F30D5EF) - 1060165103)) - 1591522735;
  v10 = (((BYTE2(v9) < 0xFu) << 8) | BYTE2(v9)) + 345936991;
  LOBYTE(v9) = v3 & 0x28 ^ 0xCB;
  LOWORD(v9) = (v3 ^ (2 * ((v3 ^ 0x1A) & (2 * ((v3 ^ 0x1A) & (2 * ((v3 ^ 0x1A) & (2 * ((v3 ^ 0x1A) & (2 * (((2 * (v9 ^ v3 & 0x32)) ^ 0x24) & (v3 ^ 0x1A) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9))) ^ 0xAA;
  LOWORD(v9) = 10923 * (((v9 ^ 0x58D0) - 22736) ^ ((v9 ^ 0x90AD) + 28499) ^ ((v9 ^ 0xC8FF) + 14081)) - 25472;
  v11 = v9 & 0xB75E ^ 0x5484;
  v12 = (v9 ^ (2 * ((v9 ^ 0xE54) & (2 * ((v9 ^ 0xE54) & (2 * ((v9 ^ 0xE54) & (2 * ((v9 ^ 0xE54) & (2 * ((v9 ^ 0xE54) & (2 * ((v9 ^ 0xE54) & (2 * ((v9 ^ 0xE54) & (2 * ((v9 ^ 0xE54) & (2 * ((v9 ^ 0xE54) & (2 * ((v9 ^ 0xE54) & (2 * ((v9 ^ 0xE54) & (2 * ((v9 ^ 0xE54) & (2 * ((v9 ^ 0xE54) & (2 * v11) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11))) ^ 0xF362;
  v13 = (((6 * (((v12 ^ 0x5D91B250) + 577654192) ^ ((v12 ^ 0x4D94B6EB) - 1301591787) ^ ((v12 ^ 0x10054087u) + 16433017)) + 5020008) >> 16) - 15);
  return (*(STACK[0xF18] + 8 * ((8315 * (v10 - 1472284254 + (v13 | ((v13 < 0x3B) << 8)) + 1126347157 < 0xFFFFFFE0)) ^ v1)))();
}

uint64_t sub_100620918()
{
  v5 = v0[3];
  *(v0[4] + 24) = v5;
  *(v5 + 32) = v0[4];
  *(STACK[0x9D0] + 40) += v0[1] + v2;
  v6 = (((LOBYTE(STACK[0x3EEF]) ^ 0x7C98C639AF43BF75) - 0x7C98C639AF43BF75) ^ ((LOBYTE(STACK[0x3EEF]) ^ 0x123808EC4E480FACLL) - 0x123808EC4E480FACLL) ^ (((5 * (v3 ^ 0x11E7u)) ^ LOBYTE(STACK[0x3EEF]) ^ 0x6EA0CED5E10B3279) - 0x6EA0CED5E10BB067)) + 0x73B4913AF7C22BE2;
  v0[1] = 0x79C4BC1D8A4006F0 - v0[1];
  v0[2] = v6;
  *(v0 + v1) = 0x3CE25E0EC5200378;
  STACK[0x1440] = v4;
  v7 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v3);
  return (*(v7 + 8 * (v3 ^ 0x1C92)))();
}

uint64_t sub_100620A88()
{
  v3 = *(v0 + v2);
  v4 = STACK[0x7FC8];
  v5 = LODWORD(STACK[0x8E30]) ^ (v1 - 233669230);
  STACK[0x8FE8] = v3;
  LODWORD(STACK[0x44A8]) = v4;
  LODWORD(STACK[0x704C]) = -2116087580;
  LODWORD(STACK[0x7FD8]) = 1970496882;
  LODWORD(STACK[0x4A8C]) = v5;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100620AFC()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + ((v0 + 3234) | 0x2ED) - 2449)))(3204694014, 1090286692, 4294923066, 35593, 4294941560, 1194047912, 35641, 1090303727);
}

uint64_t sub_100620B78()
{
  v1 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * (v0 - 31570));
  return (*(v1 + 8 * ((v0 ^ 0x29B2) + v0 - 31570 - 40665)))();
}

uint64_t sub_100620BCC()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 7002)))(((v0 ^ 0xE448AC9C) + 93176687) ^ v1);
  STACK[0x7228] = v3;
  return (*(v2 + 8 * ((78 * (v3 == 0)) ^ v0)))();
}

uint64_t sub_100620C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = (((v2 + 871548000) & 0xCC0D51B1) - 20881) & (a2 + 15);
  v11 = (v3 - a1) > 0xF && (v6 - a2 - a1 + v7 + 1) > 0xF && (v5 - a2 - a1 + v7 + 1) > 0xF && (v4 - a2 - a1 + v7 + 1) > 0xF;
  return (*(STACK[0xF18] + 8 * (((8 * v11) | (32 * v11)) ^ v2)))();
}

uint64_t sub_100620CBC()
{
  v0 = STACK[0xF10] - 8615;
  v1 = STACK[0x5BB8];
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(*(STACK[0x5BB8] + 768));
  *(v1 + 768) = 0;
  *(v1 + 776) = 174777416;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_100620D0C()
{
  STACK[0x3350] = STACK[0x1E80];
  LODWORD(STACK[0x3464]) = STACK[0x2E7C];
  STACK[0x3A10] = STACK[0x7DD8];
  LODWORD(STACK[0x17C4]) = STACK[0x5DD4];
  LODWORD(STACK[0x1628]) = -1304553729;
  v1 = STACK[0xF18];
  STACK[0x6580] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x2D31)))();
}

uint64_t sub_100620E4C()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 8499;
  v2 = *STACK[0x2B60];
  LODWORD(STACK[0x10ED8]) = STACK[0xF10] - 193924789 * ((((2 * &STACK[0x10ED8]) | 0x392391EA) - &STACK[0x10ED8] + 1668167435) ^ 0x2A2AFA93) + 60349492;
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 16334)))(&STACK[0x10ED8]);
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762661292) ^ (906386353 * (&STACK[0x10ED8] ^ 0x3101CD24));
  v4 = (*(v3 + 8 * (v0 + 16254)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (((*STACK[0x970] < 1) * (v0 ^ 0x8B0D)) ^ v1)))(v4);
}

uint64_t sub_100620F50()
{
  v2 = *(*(STACK[0x650] + v0) + 8 * (SLODWORD(STACK[0x3E18]) ^ 0x4DC1E900));
  STACK[0x7068] = v2;
  return (*(STACK[0xF18] + 8 * ((((*v2 & 2) == 0) * ((v1 + 18610) ^ 0xF89)) ^ v1)))();
}

uint64_t sub_100620FE8()
{
  v0 = STACK[0xF10] - 31592;
  v1 = ((STACK[0xF10] - 976595088) & 0x3A35BFDD ^ 0xC1591399) + *(STACK[0x8CE0] + 12);
  if (v1 < 0)
  {
    v1 = -v1;
  }

  LODWORD(STACK[0x3D50]) = (4 * v1) ^ 0x18592321;
  v2 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x1C4A)))();
}

uint64_t sub_100621078(uint64_t a1)
{
  v5 = a1 - 0x10A99C80114D1487;
  v6 = *(*STACK[0xE50] + (*v4 & 0xFFFFFFFFCA475F48)) ^ 0xCA475F4BLL;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  v12 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v11;
  v13 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v12 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v12;
  LODWORD(v13) = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v13 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v13;
  STACK[0xBFF0] = 0;
  STACK[0xBFF8] = v5;
  v14 = 16777619 * ((-901292213 * v13 + 7) ^ (-901292213 * v13)) % 7;
  v15 = *(&STACK[0xBFF0] | v14);
  *(&STACK[0xBFF0] | v14) = 0;
  LOBYTE(STACK[0xBFF7]) = v15;
  v16 = 16777619 * ((-901292213 * v13 + 6) ^ (-901292213 * v13)) % 6;
  v17 = *(&STACK[0xBFF0] | v16);
  *(&STACK[0xBFF0] | v16) = STACK[0xBFF6];
  LOBYTE(STACK[0xBFF6]) = v17;
  v18 = 16777619 * ((-901292213 * v13 + 5) ^ (-901292213 * v13)) % 5;
  v19 = *(&STACK[0xBFF0] | v18);
  *(&STACK[0xBFF0] | v18) = STACK[0xBFF5];
  LOBYTE(STACK[0xBFF5]) = v19;
  v20 = STACK[0xBFF0];
  LOBYTE(STACK[0xBFF0]) = STACK[0xBFF4];
  LOBYTE(STACK[0xBFF4]) = v20;
  v21 = 16777619 * ((-901292213 * v13 + 3) ^ (-901292213 * v13)) % 3;
  v22 = *(&STACK[0xBFF0] | v21);
  *(&STACK[0xBFF0] | v21) = STACK[0xBFF3];
  LOBYTE(STACK[0xBFF3]) = v22;
  v23 = STACK[0xBFF1];
  LOBYTE(STACK[0xBFF2]) = STACK[0xBFF0];
  LOWORD(STACK[0xBFF0]) = v23;
  v24 = vdup_n_s32(-901292213 * v13);
  v25.i32[0] = v24.i32[0];
  v25.i32[1] = -901292213 * v13 + 1;
  v26 = veor_s8(vmul_s32(v25, v24), v24);
  STACK[0xBFF0] = vmla_s32(v26, STACK[0xBFF0], vdup_n_s32(0x1000193u));
  STACK[0xBFF8] ^= STACK[0xBFF0];
  STACK[0xBFF8] = vmul_s32(vsub_s32(STACK[0xBFF8], v26), vdup_n_s32(0x359C449Bu));
  v27 = STACK[0xBFFA];
  LOWORD(STACK[0xBFF9]) = STACK[0xBFF8];
  LOBYTE(STACK[0xBFF8]) = v27;
  v28 = (&STACK[0xBFF8] | v21);
  LOBYTE(v23) = *v28;
  *v28 = STACK[0xBFFB];
  LOBYTE(STACK[0xBFFB]) = v23;
  LOBYTE(v28) = STACK[0xBFF8];
  LOBYTE(STACK[0xBFF8]) = STACK[0xBFFC];
  LOBYTE(STACK[0xBFFC]) = v28;
  v29 = (&STACK[0xBFF8] | v18);
  LOBYTE(v28) = *v29;
  *v29 = STACK[0xBFFD];
  LOBYTE(STACK[0xBFFD]) = v28;
  v30 = (&STACK[0xBFF8] | v16);
  LOBYTE(v29) = *v30;
  *v30 = STACK[0xBFFE];
  LOBYTE(STACK[0xBFFE]) = v29;
  v31 = (&STACK[0xBFF8] | v14);
  v32 = *v31;
  *v31 = STACK[0xBFFF];
  LOBYTE(STACK[0xBFFF]) = v32;
  v33 = STACK[0xBFF8];
  v34 = (-901292213 * STACK[0xBFF8]) ^ v13;
  for (i = 1; i != 48; ++i)
  {
    v36 = 16777619 * ((v34 + i) ^ v34) % i;
    v37 = *(v33 + 8 * v36) ^ *(v33 + 8 * i);
    *(v33 + 8 * i) = v37;
    v38 = *(v33 + 8 * v36) ^ v37;
    *(v33 + 8 * v36) = v38;
    *(v33 + 8 * i) ^= v38;
  }

  v39 = 0;
  v40 = xmmword_100BC7620;
  v41 = xmmword_100BC7630;
  v42 = xmmword_100BC7640;
  v43 = xmmword_100BC7650;
  v44.i64[0] = 0x9B009B009B009BLL;
  v44.i64[1] = 0x9B009B009B009BLL;
  v45 = vdupq_n_s32(v34);
  v46.i64[0] = 0x1000000010;
  v46.i64[1] = 0x1000000010;
  do
  {
    v47 = *(v33 + v39);
    v48 = vmovl_high_u8(v47);
    v49 = vmovl_u8(*v47.i8);
    v51.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v42, v45), vsubq_s32(v42, v45)), v45), vmull_high_u16(v49, v44));
    v51.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v41, v45), vsubq_s32(v41, v45)), v45), vmull_u16(*v48.i8, 0x9B009B009B009BLL));
    v51.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v43, v45), vsubq_s32(v43, v45)), v45), vmull_u16(*v49.i8, 0x9B009B009B009BLL));
    v51.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v40, v45), vsubq_s32(v40, v45)), v45), vmull_high_u16(v48, v44));
    *(v33 + v39) = vqtbl4q_s8(v51, xmmword_100BC7660);
    v39 += 16;
    v43 = vaddq_s32(v43, v46);
    v42 = vaddq_s32(v42, v46);
    v41 = vaddq_s32(v41, v46);
    v40 = vaddq_s32(v40, v46);
  }

  while (v39 != 384);
  STACK[0x2B08] = STACK[0xBFF8] + v3;
  return (*(STACK[0xF18] + 8 * ((((13 * (((v2 + 52655171) | 0x859A000) ^ 0xB7DAF9A)) ^ 0x9023) * (v1 == 0x281C6FD9594A6EA7)) ^ v2)))(v40, v41, v42, v43);
}

uint64_t sub_1006214DC()
{
  *(v1 + 200) = *STACK[0x7F00] + ((1481 * (v0 ^ 0x8B3Cu)) ^ 0x981390C2FEDBA39) - ((2 * *STACK[0x7F00]) & 0x130272185FDB248CLL);
  *(v1 + 208) = *STACK[0x8590];
  *(v1 + 216) = 0;
  return (*(STACK[0xF18] + 8 * ((27357 * (v2 == -371865839)) ^ (v0 - 21730))))();
}

uint64_t sub_100621570(__n128 a1)
{
  a1.n128_u16[0] = 24415;
  a1.n128_u8[2] = 95;
  a1.n128_u8[3] = 95;
  a1.n128_u8[4] = 95;
  a1.n128_u8[5] = 95;
  a1.n128_u8[6] = 95;
  a1.n128_u8[7] = 95;
  return (*(STACK[0xF18] + 8 * (v1 - 19453)))(a1);
}

uint64_t sub_1006216F0()
{
  v0 = (STACK[0xF10] + 1245) | 0x241;
  v1 = STACK[0xF10] - 33984;
  STACK[0x6748] = STACK[0x42C0];
  v2 = STACK[0xF18];
  STACK[0x5040] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 + v0 - 32229)))();
}

uint64_t sub_1006217A8()
{
  v1 = STACK[0x3A10] == 0;
  LOBYTE(STACK[0x142F]) = v1;
  if (LODWORD(STACK[0x17C4]) != (((v0 ^ 0xA11C) - 17116) ^ 0xE9D58F4E))
  {
    v1 = 1;
  }

  return (*(STACK[0xF18] + 8 * ((29370 * v1) ^ v0)))();
}

uint64_t sub_100621800()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 32176;
  STACK[0x8DA8] = STACK[0x4740] + 16;
  v2 = STACK[0xF18];
  STACK[0x6728] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x2436 ^ ((v1 == 182257109) * (v0 ^ 0xF102)))))();
}

uint64_t sub_1006218D8()
{
  v2 = (v1 + 1447344710) & 0xA9BB3DFE;
  LODWORD(STACK[0xED0]) = v2;
  return (*(STACK[0xF18] + 8 * (((((v1 - 457458252) & 0x1B441FBF ^ 0x26ED) + v2) * (v0 == 720181999)) ^ v1)))();
}

uint64_t sub_100621A64()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 1055089211;
  v2 = STACK[0xF10] + 14445;
  v3 = STACK[0x7FD0];
  v4 = STACK[0x61E0];
  *(v4 + 304) = *(STACK[0x7FD0] + 24);
  *(v4 + 280) = *(v3 + 496);
  *(v4 + 288) = *(v3 + 488);
  *(v4 + 312) = *(v3 + 32) ^ 0x981390C2FED9246;
  *v4 = *(v3 + 324) ^ ((v0 ^ 0xE945DD7C) + v1);
  *(v4 + 16) = *(v3 + 372) ^ 0x82412906;
  *(v4 + 24) = *(v3 + 428) ^ 0x82412906;
  *(v4 + 32) = *(v3 + 436) ^ 0x82412906;
  *(v4 + 36) = *(v3 + 440) ^ 0x82412906;
  *(v4 + 40) = *(v3 + 444) ^ 0x82412906;
  return (*(STACK[0xF18] + 8 * ((107 * (*(v3 + 444) != -2109658874)) ^ v2)))();
}

uint64_t sub_100621BDC()
{
  v2 = v0 - 3567;
  LODWORD(STACK[0x3C20]) = (v0 - 1648604412) ^ v1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 5435)))((v0 + 1952977427) ^ v1);
  STACK[0x3590] = v4;
  return (*(v3 + 8 * ((220 * (v4 == 0)) ^ v2)))();
}

uint64_t sub_100621CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 30181;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x3AB0];
  STACK[0x5D28] = &STACK[0x679C];
  LODWORD(STACK[0x4704]) = 1256239823;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_100621D3C@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 + 8595)))(a1);
  *(STACK[0x25D8] + 24) = 0;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_100621DB8(int a1, int a2, int a3, int a4, int a5)
{
  v12 = (v5 + 18440) ^ 0x304B;
  LODWORD(STACK[0xD30]) = v12;
  v13 = *(STACK[0xF18] + 8 * ((31387 * (v6 == v12 + 774866806)) ^ v5));
  LODWORD(STACK[0xEC0]) = v7;
  LODWORD(STACK[0xD40]) = v11;
  LODWORD(STACK[0xDB0]) = v9;
  LODWORD(STACK[0xD50]) = a4;
  LODWORD(STACK[0xDA0]) = a1;
  LODWORD(STACK[0xD80]) = a3;
  LODWORD(STACK[0xED0]) = a5;
  LODWORD(STACK[0xD70]) = v8;
  v14 = LODWORD(STACK[0x3EC]);
  LODWORD(STACK[0xD90]) = v10;
  LODWORD(STACK[0xD60]) = a2;
  return v13(v14);
}

uint64_t sub_100621EFC()
{
  v3 = (((v0 - 13103) | 0x70B5) ^ 0x8992D4F) + v1;
  v4 = (((v2 ^ 0x11ACEF21) - 296546081) ^ ((v2 ^ 0xF1F8ADD7) + 235360809) ^ (((((v0 - 1165940600) & 0x457EAF4F) + 159479448) ^ v2) - 159483367)) - 227598177;
  v5 = v3 < 0x899598E;
  v6 = v3 > v4;
  if (v5 != v4 < 0x899598E)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((13 * !v6) ^ v0)))();
}

uint64_t sub_100622030()
{
  v1 = v0 - 33725;
  v2 = v0 + 4777;
  STACK[0x10EE0] = STACK[0x8C10];
  LODWORD(STACK[0x10ED8]) = v0 + 4777 + 1022166737 * (((&STACK[0x10ED8] | 0xFD7D71F1) + (~&STACK[0x10ED8] | 0x2828E0E)) ^ 0x476D9062);
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 12525)))(&STACK[0x10ED8]);
  v4 = STACK[0x9638];
  LODWORD(STACK[0x10ED8]) = v2 + 1022166737 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x1FDBE908) + 534505740) ^ 0xA5CB089E);
  STACK[0x10EE0] = v4;
  v5 = (*(v3 + 8 * (v1 ^ 0xDD56)))(&STACK[0x10ED8]);
  LOBYTE(STACK[0x768F]) = 1;
  return (*(v3 + 8 * v1))(v5);
}

uint64_t sub_1006222D8()
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393304;
  return (*(STACK[0xF18] + 8 * (v0 - 29050)))();
}

uint64_t sub_100622314@<X0>(int a1@<W8>)
{
  v1 = a1 - 2410;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 ^ 0x4192)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100622344@<X0>(uint64_t a1@<X8>)
{
  *STACK[0xAEE0] = v3;
  *(a1 + 16) = v1;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_100622438@<X0>(int a1@<W8>)
{
  v3 = *(v2 + v1 - 371882751 + (((a1 ^ 0x16EC0D6F) - 384568687) ^ ((a1 ^ 0x4FB1341E) - 1337013278) ^ (v1 + 18732 + (a1 ^ 0xB088FE60) + 1333163621)));
  v4 = (v3 ^ 0xBD) + ((2 * v3) & 0x7A) + 112;
  v5 = v3 - 97;
  v6 = v3 + 13;
  if (v5 >= 0x1A)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  return (*(STACK[0xF18] + 8 * (((2 * ((v7 - 110) < 6u)) | (16 * ((v7 - 110) < 6u))) ^ v1)))();
}

uint64_t sub_10062252C@<X0>(unint64_t a1@<X8>)
{
  STACK[0x10ED8] = a1;
  LODWORD(STACK[0x10EE0]) = v1 + 353670337 * ((((&STACK[0x10000] + 3800) | 0x94E18C35) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x6B1E73C8)) ^ 0x20C07408) - 233049816;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xDB98)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * (v1 ^ 0x78E6 ^ ((v1 + 15265) | 0x3270))))(v3);
}

uint64_t sub_100622624()
{
  STACK[0x8680] = v0;
  LODWORD(STACK[0x17B4]) = STACK[0x2EDC];
  LODWORD(STACK[0xAE3C]) = -371865839;
  return (*(STACK[0xF18] + 8 * (((STACK[0x4C88] == 0) * ((((v1 - 17433) | 0x1202) + 26271) ^ ((v1 + 8343) | 0x1408))) ^ (v1 + 14513))))();
}

uint64_t sub_100622744@<X0>(unsigned int a1@<W8>)
{
  STACK[0x9EC0] = (((v2 - 437252292) + 0x59EFDDF29707DAB0) ^ a1) + ((2 * a1) & 0xF9EFF2CELL) - 0x4045002140C61103;
  STACK[0x9EC8] = v1;
  v3 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * (v2 ^ 0x179E)))();
}

uint64_t sub_100622858@<X0>(unint64_t a1@<X8>)
{
  STACK[0x2F10] = a1;
  v2 = *(a1 + 112);
  STACK[0x5428] = a1 + 112;
  return (*(STACK[0xF18] + 8 * (((v2 == 0) * (((v1 - 706) | 0x1362) ^ 0x9B57)) ^ v1)))();
}

uint64_t sub_1006229A0()
{
  v1 = STACK[0x8F68];
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0xF2BC)))(STACK[0x8F68], 0, 1024);
  STACK[0xB298] = v1;
  return (*(v2 + 8 * ((*(STACK[0x7F0] - 124380774) * (v0 - 12492 + v0 + 17203 - 33592)) ^ v0)))(v3);
}

uint64_t sub_100622A78()
{
  v0 = (STACK[0xF10] - 35570) | 0x280;
  v1 = (STACK[0xF10] - 31243) | 0x2A01;
  v2 = STACK[0xF10] - 19709;
  v3 = STACK[0x592C];
  v4 = LODWORD(STACK[0x59EC]) + LODWORD(STACK[0x64B0]);
  LODWORD(STACK[0x80A4]) = v4 + LODWORD(STACK[0x592C]) - 1485779551;
  v5 = v4 + v3 - 494898038;
  v6 = LODWORD(STACK[0x4A48]) + 990881513;
  v7 = v5 < (v0 ^ 0x47CC0AD6u);
  v8 = v5 > v6;
  if (v7 != v6 < 0x47CC081F)
  {
    v8 = v7;
  }

  v9 = !v8;
  if (v4 == v1 + 1699436644)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  return (*(STACK[0xF18] + 8 * (((4 * v10) | (v10 << 6)) ^ v2)))();
}

uint64_t sub_100622B68@<X0>(int a1@<W8>)
{
  v3 = v2 ^ v1;
  v4 = 1112314453 * ((~(&STACK[0x10000] + 3800) & 0x7BB6BF58 | (&STACK[0x10000] + 3800) & 0x844940A0) ^ 0x94E09581);
  LODWORD(STACK[0x10EE0]) = v4 + 464206590 + (((a1 ^ 0x6811F059) - 1746006105) ^ ((a1 ^ 0x36E83D6C) - 921189740) ^ (((v3 - 1221886231) ^ a1) + 1221850588));
  LODWORD(STACK[0x10EDC]) = v4 + 27263 + v2;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v2 + 30623)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((11096 * (LOBYTE(STACK[0x10ED8]) == (v2 + 19))) ^ v2)))(v6);
}

uint64_t sub_100622EA8()
{
  v1 = STACK[0x2DC0] + 152;
  STACK[0x4A98] = STACK[0x88B8];
  STACK[0x3E98] = v1;
  LODWORD(STACK[0x655C]) = -371865855;
  LODWORD(STACK[0x884C]) = -1320964643;
  return (*(STACK[0xF18] + 8 * (v0 - 30246)))();
}

uint64_t sub_100622F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10] - 34189;
  LODWORD(STACK[0x9B10]) = STACK[0x98D4];
  return (*(STACK[0xF18] + 8 * (v3 ^ 0x1D98)))(a1, a2, a3);
}

uint64_t sub_1006230A4@<X0>(int a1@<W8>)
{
  v2 = (a1 - 89330593) & 0x5538F7B;
  LODWORD(STACK[0xCA0]) = v2;
  *((v1 - 585937564) + STACK[0x9DB0] + STACK[0x2920] - 0xCA9992CC7C4865ALL) = *(STACK[0x9DA8] + (v1 - 585937564)) ^ 0x5F;
  v3 = *(STACK[0xF18] + 8 * a1);
  LODWORD(STACK[0xE60]) = v1 - 35644 + v2;
  return v3();
}

uint64_t sub_100623124()
{
  v0 = (STACK[0xF10] - 34455) | 0x124B;
  v1 = STACK[0xF10] - 33729;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 + v0 - 1918)))();
}

uint64_t sub_100623184()
{
  v2 = (((v1 ^ 0xEB908BC8) + 342848568) ^ ((v1 ^ 0x14252FB1) - 337981361) ^ (((v0 + 1545691893) ^ 0x48DC7F1D ^ v1) - 352184697)) + 417898412;
  v3 = (v2 ^ 0xD31FAD44) & (2 * (v2 & 0xD25FAD68)) ^ v2 & 0xD25FAD68;
  v4 = ((2 * (v2 ^ 0x570EBF14)) ^ 0xAA224F8) & (v2 ^ 0x570EBF14) ^ (2 * (v2 ^ 0x570EBF14)) & 0x8551127C;
  v5 = v4 ^ 0x85511204;
  v6 = (v4 ^ 0x60) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0x154449F0) & v5 ^ (4 * v5) & 0x85511278;
  v8 = (v7 ^ 0x5400060) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x8011120C)) ^ 0x551127C0) & (v7 ^ 0x8011120C) ^ (16 * (v7 ^ 0x8011120C)) & 0x85511240;
  v10 = v8 ^ 0x8551127C ^ (v9 ^ 0x5110200) & (v8 << 8);
  LODWORD(STACK[0x53AC]) = v2 ^ (2 * ((v10 << 16) & 0x5510000 ^ v10 ^ ((v10 << 16) ^ 0x127C0000) & (((v9 ^ 0x8040103C) << 8) & 0x5510000 ^ 0x4410000 ^ (((v9 ^ 0x8040103C) << 8) ^ 0x51120000) & (v9 ^ 0x8040103C)))) ^ 0x3315C490;
  return (*(STACK[0xF18] + 8 * v0))(134742048, 1182632438, 3636069408, (v0 + 1545691893) ^ 0x5C21A533u, 0xFFFFFFFE8F79A7E8);
}

uint64_t sub_100623420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] ^ 0x33B0;
  v5 = STACK[0xF10] - 34152;
  LODWORD(STACK[0xA008]) = STACK[0x98D4];
  return (*(STACK[0xF18] + 8 * ((v3 ^ 0x9958) + v5)))(a1, a2, a3, v4, 1077847051 - 0x11C0 / (LODWORD(STACK[0xA00C]) ^ 0x3C77CD08u) * (LODWORD(STACK[0xA00C]) ^ 0x3C77CD08));
}

uint64_t sub_1006234BC()
{
  v1 = STACK[0x8208] + 4;
  v2 = STACK[0x14E8];
  v3 = (((LODWORD(STACK[0x91AC]) ^ 0xEB7C34C1) + 344181567) ^ ((LODWORD(STACK[0x91AC]) ^ 0x2800D4FE) - 671143166) ^ (((v0 + 1766905962) & 0xACD9EBBF) - 715764329 + ((327 * (v0 ^ 0xE9D5C77C)) ^ LODWORD(STACK[0x91AC]) ^ 0x2AA9AC15))) - 371865843;
  v4 = 155453101 * ((((&STACK[0x10000] + 3800) | 0x17318215) + (~(&STACK[0x10000] + 3800) | 0xE8CE7DEA)) ^ 0xF11799DB);
  STACK[0x10EF8] = STACK[0x6B18] + 8;
  STACK[0x10EF0] = STACK[0x858];
  LODWORD(STACK[0x10EEC]) = v4 + (v3 ^ 0x5F9D5F7B) + ((2 * v3) & 0xBF3ABEF6) - 1543768113;
  LODWORD(STACK[0x10F00]) = v4 + v0 + 371892221;
  STACK[0x10EE0] = v1;
  STACK[0x10ED8] = v2 + 4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 + 371918101)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * (v0 ^ 0xE9D5F91E ^ (52 * (((LODWORD(STACK[0x10EE8]) - v0) | (v0 - LODWORD(STACK[0x10EE8]))) >> 31)))))(v6);
}

uint64_t sub_100623664()
{
  v2 = v0 ^ 0x34;
  v3 = *(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFFE389194)) ^ 0xFE389197;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  STACK[0xC040] = 0;
  STACK[0xC048] = v1 - 0x65D7F4DC84452C66;
  v12 = 16777619 * ((-29847145 * v11 + 7) ^ (-29847145 * v11)) % 7;
  v13 = *(&STACK[0xC040] | v12);
  *(&STACK[0xC040] | v12) = 0;
  LOBYTE(STACK[0xC047]) = v13;
  v14 = 16777619 * ((-29847145 * v11 + 6) ^ (-29847145 * v11)) % 6;
  v15 = *(&STACK[0xC040] | v14);
  *(&STACK[0xC040] | v14) = STACK[0xC046];
  LOBYTE(STACK[0xC046]) = v15;
  v16 = 16777619 * ((-29847145 * v11 + 5) ^ (-29847145 * v11)) % 5;
  v17 = *(&STACK[0xC040] | v16);
  *(&STACK[0xC040] | v16) = STACK[0xC045];
  LOBYTE(STACK[0xC045]) = v17;
  v18 = STACK[0xC040];
  LOBYTE(STACK[0xC040]) = STACK[0xC044];
  LOBYTE(STACK[0xC044]) = v18;
  v19 = 16777619 * ((-29847145 * v11 + 3) ^ (-29847145 * v11)) % 3;
  v20 = *(&STACK[0xC040] | v19);
  *(&STACK[0xC040] | v19) = STACK[0xC043];
  LOBYTE(STACK[0xC043]) = v20;
  v21 = STACK[0xC041];
  LOBYTE(STACK[0xC042]) = STACK[0xC040];
  LOWORD(STACK[0xC040]) = v21;
  v22 = vdup_n_s32(-29847145 * v11);
  v23.i32[0] = v22.i32[0];
  v23.i32[1] = -29847145 * v11 + 1;
  v24 = veor_s8(vmul_s32(v23, v22), v22);
  STACK[0xC040] = vmla_s32(v24, STACK[0xC040], vdup_n_s32(0x1000193u));
  STACK[0xC048] ^= STACK[0xC040];
  STACK[0xC048] = vmul_s32(vsub_s32(STACK[0xC048], v24), vdup_n_s32(0x359C449Bu));
  v25 = STACK[0xC04A];
  LOWORD(STACK[0xC049]) = STACK[0xC048];
  LOBYTE(STACK[0xC048]) = v25;
  v26 = (&STACK[0xC048] | v19);
  LOBYTE(v21) = *v26;
  *v26 = STACK[0xC04B];
  LOBYTE(STACK[0xC04B]) = v21;
  LOBYTE(v26) = STACK[0xC048];
  LOBYTE(STACK[0xC048]) = STACK[0xC04C];
  LOBYTE(STACK[0xC04C]) = v26;
  v27 = (&STACK[0xC048] | v16);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xC04D];
  LOBYTE(STACK[0xC04D]) = v26;
  v28 = (&STACK[0xC048] | v14);
  LOBYTE(v27) = *v28;
  *v28 = STACK[0xC04E];
  LOBYTE(STACK[0xC04E]) = v27;
  v29 = (&STACK[0xC048] | v12);
  v30 = *v29;
  *v29 = STACK[0xC04F];
  LOBYTE(STACK[0xC04F]) = v30;
  v31 = STACK[0xC048];
  v32 = (-29847145 * STACK[0xC048]) ^ v11;
  for (i = 1; i != 8; ++i)
  {
    v34 = 16777619 * ((v32 + i) ^ v32) % i;
    v35 = *(v31 + 8 * v34) ^ *(v31 + 8 * i);
    *(v31 + 8 * i) = v35;
    v36 = *(v31 + 8 * v34) ^ v35;
    *(v31 + 8 * v34) = v36;
    *(v31 + 8 * i) ^= v36;
  }

  v37 = 0;
  v38 = xmmword_100BC7620;
  v39 = xmmword_100BC7630;
  v40 = xmmword_100BC7640;
  v41 = xmmword_100BC7650;
  v42.i64[0] = 0x9B009B009B009BLL;
  v42.i64[1] = 0x9B009B009B009BLL;
  v43.i64[0] = 0x1000000010;
  v43.i64[1] = 0x1000000010;
  v44 = vdupq_n_s32(v32);
  do
  {
    v45 = *(v31 + v37);
    v46 = vmovl_high_u8(v45);
    v47 = vmovl_u8(*v45.i8);
    v50.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v40, v44), vsubq_s32(v40, v44)), v44), vmull_high_u16(v47, v42));
    v50.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v39, v44), vsubq_s32(v39, v44)), v44), vmull_u16(*v46.i8, 0x9B009B009B009BLL));
    v50.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v41, v44), vsubq_s32(v41, v44)), v44), vmull_u16(*v47.i8, 0x9B009B009B009BLL));
    v50.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v38, v44), vsubq_s32(v38, v44)), v44), vmull_high_u16(v46, v42));
    *(v31 + v37) = vqtbl4q_s8(v50, xmmword_100BC7660);
    v37 += 16;
    v41 = vaddq_s32(v41, v43);
    v40 = vaddq_s32(v40, v43);
    v39 = vaddq_s32(v39, v43);
    v38 = vaddq_s32(v38, v43);
  }

  while (v37 != 64);
  for (j = 64; j != 68; ++j)
  {
    *(v31 + j) = (-101 * *(v31 + j)) ^ v32 ^ ((v32 + j) * (j - v32));
  }

  return (*(STACK[0xF18] + 8 * v2))(v38, v39, v40, v41, xmmword_100BC7660);
}

uint64_t sub_100623AD8()
{
  v1 = STACK[0xF10] - 30246;
  LODWORD(STACK[0x71FC]) = v0;
  v2 = STACK[0x3088];
  v3 = STACK[0x1B20];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v2;
  LODWORD(STACK[0x655C]) = v3;
  LODWORD(STACK[0x884C]) = 1707089981;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100623C68()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16238)))(v0);
  return (*(v2 + 8 * (v1 + 5188)))(v3);
}

uint64_t sub_100623DCC()
{
  v1 = STACK[0xF18];
  STACK[0x67B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1AE ^ (v0 + 12750))))();
}

uint64_t sub_100623E78@<X0>(int a1@<W1>, int a2@<W8>)
{
  LODWORD(STACK[0x82C4]) = a2;
  LODWORD(STACK[0x1E70]) = v2;
  LODWORD(STACK[0x670C]) = a1;
  LODWORD(STACK[0x59C4]) = v3;
  LODWORD(STACK[0x58D4]) = 417548196;
  return (*(STACK[0xF18] + 8 * SLODWORD(STACK[0xEC0])))();
}

uint64_t sub_100623EBC()
{
  v1 = STACK[0x96E8] + 376;
  STACK[0x2E58] = v1;
  v2 = 634647737 * (((((&STACK[0x10000] + 3800) | 0x3981F9C8) ^ 0xFFFFFFFE) - (~(&STACK[0x10000] + 3800) | 0xC67E0637)) ^ 0xABE829CB);
  LODWORD(STACK[0x10EE8]) = v0 - v2 + 19330;
  STACK[0x10EE0] = v1;
  LODWORD(STACK[0x10ED8]) = v2 - 1431125376;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 50316)))(&STACK[0x10ED8]);
  STACK[0x16D8] = *(v3 + 8 * v0);
  return (*(v3 + 8 * (((v0 + 12704) ^ 0x2D08) + v0)))(v4);
}

uint64_t sub_100623F8C()
{
  v1 = 104 * (STACK[0xF10] ^ 0x8B21);
  v2 = (STACK[0xF10] - 2132027452) & 0x7F13FD5B;
  v3 = STACK[0xF10] + 12989;
  STACK[0x5F58] = v0;
  return (*(STACK[0xF18] + 8 * (((v2 ^ 0x693D ^ v1) * (v0 == 0)) ^ v3)))();
}

uint64_t sub_1006241D4()
{
  v0 = (STACK[0xF10] - 35578) | 0x600A;
  v1 = STACK[0xF10] - 31025;
  v2 = STACK[0x9F70];
  v3 = STACK[0xF18];
  STACK[0x5E70] = *(STACK[0xF18] + 8 * v1);
  return (*(v3 + 8 * (v1 ^ 0x4282 ^ v0)))(v2);
}

uint64_t sub_1006242E0@<X0>(int a1@<W8>)
{
  v4 = a1 - 25356;
  v5 = (((a1 + 2238) | 0x400) ^ 0x97A9) * v1;
  v6 = *(v3 + 4432);
  STACK[0x10EE8] = *(v3 + 4552);
  STACK[0x10EF0] = v6;
  STACK[0x10ED8] = v2;
  LODWORD(STACK[0x10EE0]) = v4 - 155453101 * ((~(&STACK[0x10000] + 3800) & 0x58E734FD | (&STACK[0x10000] + 3800) & 0xA718CB00) ^ 0xBEC12F32) + 10172;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v4 ^ 0xEAA2)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * ((25576 * (LODWORD(STACK[0x10EE4]) == (v5 ^ 0xE9D58646))) ^ v4)))(v8);
}

uint64_t sub_1006243B0()
{
  v1 = STACK[0x1320];
  v2 = STACK[0x93F0];
  v3 = LODWORD(STACK[0x558C]) + 105876725;
  v4 = 353670337 * ((((&STACK[0x10000] + 3800) | 0x4D42CFFF) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xB2BD3000)) ^ 0xF96337C2);
  LODWORD(STACK[0x10EE8]) = v4 ^ LODWORD(STACK[0x6804]) ^ ((LODWORD(STACK[0x6804]) ^ 0xE27B50F) - 1466116421) ^ ((LODWORD(STACK[0x6804]) ^ 0xC7DFFFF7) + 1633983555) ^ (((v0 - 46673774) & 0xEEED1F07 ^ 0x513CCFD) + (LODWORD(STACK[0x6804]) ^ 0x4F8DB34E)) ^ ((((v0 ^ 0xA75C) - 550446399) ^ LODWORD(STACK[0x6804])) + 2039088714) ^ 0xDBD0F935;
  LOWORD(STACK[0x10EFC]) = -27455 * ((((&STACK[0x10000] + 3800) | 0xCFFF) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x3000)) ^ 0x37C2) + 518;
  LODWORD(STACK[0x10EF8]) = v3 ^ v4;
  LODWORD(STACK[0x10F10]) = 2005924293 - v4;
  LODWORD(STACK[0x10EDC]) = v4 + 705411674 + v0;
  STACK[0x10EF0] = &STACK[0xF28] ^ 0x5DF2F71386CDF5DLL;
  STACK[0x10F08] = &STACK[0x4948];
  STACK[0x10F00] = v2;
  STACK[0x10EE0] = v1;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 ^ 0xE7C8)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((18309 * (LODWORD(STACK[0x10ED8]) == -371865839)) ^ v0)))(v6);
}

uint64_t sub_100624578()
{
  v2 = (STACK[0xF10] + 950612960) & 0xC75678F6;
  v3 = STACK[0xF10] - 15938;
  LODWORD(STACK[0xA514]) = v0;
  return (*(STACK[0xF18] + 8 * ((489 * (v1 == v2 + 950269199)) ^ v3)))();
}

uint64_t sub_100624650()
{
  STACK[0x9560] = 0;
  LODWORD(STACK[0x59AC]) = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1006246BC()
{
  STACK[0xA600] = STACK[0x87F8];
  LODWORD(STACK[0x3AC4]) = 658232844;
  return (*(STACK[0xF18] + 8 * (v0 + 7334)))();
}

uint64_t sub_10062481C(int a1, int a2, int a3, int a4, int a5, int a6, __int16 a7, __int16 a8)
{
  if ((v11 & 2) != 0)
  {
    a4 = 0;
  }

  if ((v11 & 2) != 0)
  {
    v24 = 0;
  }

  else
  {
    v24 = v18;
  }

  if (v11)
  {
    a1 = 0;
  }

  v26 = a1 ^ v24;
  if (v11)
  {
    a3 = 0;
  }

  v28 = v26 ^ a3 ^ a4;
  if ((v20 & v11) != 0)
  {
    a7 = 0;
  }

  v30 = v28 ^ (v11 << 29 >> 31) & a6 ^ (v11 << 29 >> 31) & v16 ^ (v11 << 28 >> 31) & a5;
  if ((v20 & v11) != 0)
  {
    v31 = 0;
  }

  else
  {
    v31 = v14;
  }

  if ((v11 & 0x20) != 0)
  {
    v32 = 0;
  }

  else
  {
    v32 = v19;
  }

  v33 = v30 ^ ((v11 << 12) >> 15) & a8 ^ ((v11 << 11) >> 15) & v9 ^ ((v11 << 11) >> 15) & v15 ^ v32;
  if ((v11 & 0x20) != 0)
  {
    v34 = 0;
  }

  else
  {
    v34 = v13;
  }

  v35 = v34 ^ v17 & (v11 >> 7);
  if ((v11 & 0x80) != 0)
  {
    v36 = v10;
  }

  else
  {
    v36 = -18825;
  }

  v37 = v33 ^ v35 ^ v36 ^ a7 ^ v31;
  v38 = STACK[0xEA0];
  *(v38 + ((((((v11 ^ 0x22B0) + 336) ^ ((v11 ^ 0xF9FF) + 1)) ^ ((v11 ^ 0x12C) + 212)) * v8 + 365) & 0x1FF)) = (v37 ^ 0x77) + 74;
  *(v38 + ((((((v37 ^ 0x7D80) + 486) ^ ((v37 ^ 0x64A9) + 205)) ^ ((v37 ^ 0x15E) + 316)) * v8 + 323) & 0x1FF ^ 0x100)) = (((v11 ^ 0xEB) - 96) ^ ((v11 ^ 0xC3) - 72) ^ ((v11 ^ 0x4B) + 64)) + 50;
  v39 = (((v11 ^ 0xC08EAB43) + 1064391869) ^ ((v11 ^ 0x5F2D671) - 99800689) ^ ((v11 ^ 0x80D63751) + 2133444783)) + 1836733625;
  v40 = ((v39 ^ 0xCC180021) + 339211660) ^ v39 ^ ((v39 ^ 0xCBC537B1) + 334152220) ^ ((v39 ^ 0x5FF2D838) - 2015548013) ^ ((v39 ^ 0x7FFFE5FD) - 1479536552);
  return (*(STACK[0xF18] + 8 * ((((((v40 ^ 0x9238B7CE) + 264046600) ^ ((v40 ^ 0x9454CC49) + 164721537) ^ ((v40 ^ v12) + v21)) + 1168788067 < 0x100) * v22) ^ a2)))();
}

uint64_t sub_100624CE4()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16238)))(v0);
  return (*(v2 + 8 * (v1 - 7336)))(v3);
}

uint64_t sub_100624D68()
{
  v2 = v0 + 2072417283;
  v3 = (v2 ^ 0xF07D6BFF) & (2 * (v2 & 0x84796BFF)) ^ v2 & 0x84796BFF;
  v4 = ((2 * ((v0 + 2072417283) ^ 0xF81DA881)) ^ 0xF8C986FC) & ((v0 + 2072417283) ^ 0xF81DA881) ^ (2 * ((v0 + 2072417283) ^ 0xF81DA881)) & 0x7C64C37E;
  v5 = v4 ^ 0x4244102;
  v6 = (v4 ^ 0x3040827C) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0xF1930DF8) & v5 ^ (4 * v5) & 0x7C64C378;
  v8 = (v7 ^ 0x70000170) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0xC64C206)) ^ 0xC64C37E0) & (v7 ^ 0xC64C206) ^ (16 * (v7 ^ 0xC64C206)) & 0x7C64C360;
  v10 = v8 ^ 0x7C64C37E ^ (v9 ^ 0x44440300) & (v8 << 8);
  v11 = 8 * (v2 ^ (2 * ((v10 << 16) & 0x7C640000 ^ v10 ^ ((v10 << 16) ^ 0x437E0000) & (((v9 ^ 0x3820C01E) << 8) & 0x7C640000 ^ 0x18240000 ^ (((v9 ^ 0x3820C01E) << 8) ^ 0x64C30000) & (v9 ^ 0x3820C01E)))));
  STACK[0x5C50] = (((v11 ^ 0x190E1C3F3B80B17ALL) + 0x3F813347C18BA33DLL) ^ ((v11 ^ 0xF4AAF5CB2156816FLL) - 0x2DDA254C24A26CD6) ^ ((v11 ^ 0xEDA4E9F3F911580DLL) - 0x34D43974FCE5B5B4)) + 0x145211BAF3901C63;
  LODWORD(STACK[0x1374]) = -730803628;
  return (*(STACK[0xF18] + 8 * (v1 - 29678)))();
}

uint64_t sub_100624FC4()
{
  v1 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 1656)))();
}

uint64_t sub_100625038()
{
  v1 = (LODWORD(STACK[0x8DE8]) - LODWORD(STACK[0x80F8])) & 0xF;
  v2 = -105 - (((v1 ^ 0xEE) - 24) ^ ((v1 ^ 0x7B) + (v0 ^ 0x44)) ^ ((v1 ^ 0x95) + ((v0 - 113) ^ 0x5B)));
  LOBYTE(STACK[0xB08F]) = v2;
  v3 = v2 & 0xFD ^ 0xBD;
  v4 = v2 ^ 2;
  return (*(STACK[0xF18] + 8 * ((15 * ((v2 ^ (2 * (v4 & (2 * (v4 & (2 * (v4 & (2 * (v4 & (2 * (v4 & (2 * ((((2 * (v2 & 3)) ^ 0x7E) & 2 | v3) ^ ((2 * (v2 & 3)) ^ 0x7E) & v2)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3))) == 253)) ^ v0)))();
}

uint64_t sub_100625138()
{
  v2 = STACK[0xDA0];
  LODWORD(STACK[0x5564]) = v1;
  LODWORD(STACK[0x6ECC]) = v0;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_100625170()
{
  v1 = STACK[0xF18];
  STACK[0x5050] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 45239) ^ 0xF418) + v0)))();
}

uint64_t sub_100625234@<X0>(uint64_t a1@<X8>)
{
  STACK[0x10EE0] = *(a1 + 336);
  LODWORD(STACK[0x10ED8]) = v1 - 1012831759 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x53807108) - 746557170) ^ 0xC3136784) + 29216;
  STACK[0x10EF8] = &STACK[0x8BA4];
  STACK[0x10EF0] = &STACK[0x6A98];
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 44255)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * ((30057 * (LODWORD(STACK[0x10EE8]) == (v1 ^ 0xAC61) - 371914905 + ((v1 - 7779) | 0xD84))) ^ v1)))(v3);
}

uint64_t sub_1006253BC()
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = 2070168061;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1006253E8@<X0>(unint64_t a1@<X1>, int a2@<W8>)
{
  v6 = a2 - 26326;
  v7 = STACK[0x1560] + v5;
  v8 = STACK[0x6908];
  v9 = 297845113 * ((((&STACK[0x10000] + 3800) | 0x8A4B1F40) - ((&STACK[0x10000] + 3800) & 0x8A4B1F40)) ^ 0xFD7803DE);
  STACK[0x10ED8] = a1;
  STACK[0x10EE8] = v7;
  LODWORD(STACK[0x10EF0]) = v3 ^ v9 ^ (11 * (a2 ^ 0x8874) - 2042740965);
  LODWORD(STACK[0x10F00]) = v8 - v9 + 1004536687;
  STACK[0x10EF8] = &STACK[0x32BC];
  LODWORD(STACK[0x10EE0]) = v9 - 752704076 + a2;
  LODWORD(STACK[0x10EE4]) = v9 ^ ((a2 ^ 0x8874) + 21644) ^ 0x1CF108BF ^ v2;
  v10 = STACK[0xF18];
  v11 = (*(STACK[0xF18] + 8 * (a2 ^ 0x41E0)))(&STACK[0x10ED8]);
  v12 = STACK[0x10F04];
  STACK[0x3AD8] = v7 + (v4 - 580479489);
  return (*(v10 + 8 * ((17107 * (v12 == -371865839)) ^ v6)))(v11);
}

uint64_t sub_10062570C@<X0>(int a1@<W8>)
{
  v1 = a1 - 8591;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 ^ 0x4192)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100625814@<X0>(uint64_t a1@<X4>, void *a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t *a5@<X8>)
{
  v10 = *v7;
  v11 = *a5;
  v12 = ((2 * (v5 - 1497668668)) & 0xC97DAE7C) + ((v5 - 1497668668) ^ 0x64BED73E);
  v13 = (v11 + v12 - 1690228542);
  v14 = 1864610357 * ((v13 ^ *(*a2 + (*v9 & 0x72D7ACF8))) & 0x7FFFFFFF);
  v15 = 1864610357 * (v14 ^ HIWORD(v14));
  *v13 = v8 ^ *(a4 + (v15 >> 24)) ^ *(a3 + (v15 >> 24)) ^ *((v15 >> 24) + a1 + 1) ^ v15 ^ (107 * BYTE3(v15)) ^ 0xAB;
  v16 = (v11 + v12 - 1690228541);
  v17 = 1864610357 * ((*(*a2 + (*v9 & 0x72D7ACF8)) ^ v16) & 0x7FFFFFFF);
  v18 = 1864610357 * (v17 ^ HIWORD(v17));
  *v16 = v6 ^ *(a4 + (v18 >> 24)) ^ *(a3 + (v18 >> 24)) ^ *((v18 >> 24) + a1 + 1) ^ v18 ^ (107 * BYTE3(v18)) ^ 0x6F;
  return v10();
}

uint64_t sub_100625960()
{
  v6 = STACK[0x138C];
  LODWORD(STACK[0x10EF8]) = v2 - v4 - 417204623;
  STACK[0x10EF0] = &STACK[0x49E8];
  STACK[0x10EE0] = v5;
  STACK[0x10ED8] = v1;
  LODWORD(STACK[0x10EFC]) = v4 + v2 + 29919 + 1215133685 * v6 - 1273210571;
  LODWORD(STACK[0x10EEC]) = (v0 - 1248982982) ^ v4;
  STACK[0x10F10] = 0;
  STACK[0x10F00] = 0;
  STACK[0x10F08] = 0;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v2 + 46279)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * (((LODWORD(STACK[0x10EE8]) == -371865839) * (v2 + v3)) ^ v2)))(v8);
}

uint64_t sub_100625B9C()
{
  v4 = v1 + ((((v0 - 1742) | 0x40C1) + 6624) ^ 0x5D32E5BF);
  v5 = (2 * (v4 & 0x2951AA6E)) & (v4 ^ 0xE317812D) ^ v4 & 0x2951AA6E ^ ((2 * (v4 & 0x2951AA6E)) & 0x42020040 | 0x40002);
  v6 = (2 * (v4 ^ 0xE317812D)) & 0xCA462B42 ^ 0x4A422941 ^ ((2 * (v4 ^ 0xE317812D)) ^ 0x948C5686) & (v4 ^ 0xE317812D);
  v7 = (4 * v5) & 0xCA462B40 ^ v5 ^ ((4 * v5) ^ 0x100008) & v6;
  v8 = (4 * v6) & 0xCA462B40 ^ 0xC2460243 ^ ((4 * v6) ^ 0x2918AD0C) & v6;
  v9 = (16 * v7) & 0xCA462B40 ^ v7 ^ ((16 * v7) ^ 0x400020) & v8;
  v10 = (16 * v8) & 0xCA462B40 ^ 0x4A040B43 ^ ((16 * v8) ^ 0xA462B430) & v8;
  v11 = v9 ^ (v9 << 8) & 0xCA462B00 ^ ((v9 << 8) ^ 0x44000200) & v10 ^ 0x8A022941;
  v12 = ((v11 << 16) ^ 0x2B430000) & ((v10 << 8) & 0x4A460000 ^ 0x8440000 ^ ((v10 << 8) ^ 0x462B0000) & v10);
  v13 = (((v4 ^ (2 * ((v11 << 16) & 0x4A460000 ^ v11 ^ v12)) ^ 0x88DE74E) + 668619943) ^ ((v4 ^ (2 * ((v11 << 16) & 0x4A460000 ^ v11 ^ v12)) ^ 0x1E1541A4) + 826470989) ^ ((v4 ^ (2 * ((v11 << 16) & 0x4A460000 ^ v11 ^ v12)) ^ 0xBFC15A02) - 1869157909)) - 1018157671;
  v14 = (v2 < v3) ^ (v13 < v3);
  v15 = v13 < v2;
  if (v14)
  {
    v15 = v2 < v3;
  }

  return (*(STACK[0x6A0] + 8 * (((2 * v15) | (8 * v15)) ^ v0)))();
}

uint64_t sub_100625E28()
{
  if (STACK[0x6360])
  {
    v1 = STACK[0x2A28] == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = v1;
  return (*(STACK[0xF18] + 8 * ((218 * (((v0 - 60) ^ v2) & 1)) ^ (v0 + 3627))))();
}

uint64_t sub_100625F74()
{
  v2 = (STACK[0xF10] - 35066) | 0x914;
  v3 = STACK[0xF10] - 22738;
  LODWORD(STACK[0x64B8]) = v1;
  return (*(STACK[0xF18] + 8 * (((v2 ^ 0x7D51) * v0) ^ v3)))();
}

uint64_t sub_100626150@<X0>(int a1@<W8>)
{
  v2 = v1 + 16109;
  v3 = a1 >= 245 * (v2 ^ 0x76F7) + 1830843591;
  return (*(STACK[0xF18] + 8 * ((v3 | (16 * v3)) ^ v2)))();
}

uint64_t sub_100626194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10] ^ 0x33B0;
  v4 = STACK[0xF10] - 34185;
  LODWORD(STACK[0x98DC]) = STACK[0xF10] ^ 0xE9D54C2A ^ STACK[0x98D4] & 0xFFFFFFFE;
  v5 = 34 * LODWORD(STACK[0x98E4]) % (LODWORD(STACK[0x98F0]) ^ 0x6CA9378Eu);
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x1D84)))(a1, a2, a3, v3, ((((v5 - ((2 * v5) & 0xA930E598) + 1419277004) ^ 0x927C6F33) + 1837338829) ^ (((v5 - ((2 * v5) & 0xA930E598) + 1419277004) ^ 0x87218826) + 2027845594) ^ (((v5 - ((2 * v5) & 0xA930E598) + 1419277004) ^ 0x41C595D9) - 1103467993)) - 1797847785);
}

uint64_t sub_1006262C8()
{
  v2 = (STACK[0xF10] - 35579) | 0xB18;
  v3 = STACK[0xF10] - 22738;
  LODWORD(STACK[0x2AF0]) = v1;
  return (*(STACK[0xF18] + 8 * (((v2 ^ 0x9B28) * v0) ^ v3)))();
}

uint64_t sub_10062635C@<X0>(uint64_t a1@<X8>)
{
  if (a1)
  {
    v3 = v1 == -371865839;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(STACK[0xF18] + 8 * (((((v2 + 1) ^ v4) & 1) * (22201 * (v2 ^ 0xC976) - 44157)) ^ v2)))();
}

uint64_t sub_1006265E8@<X0>(unint64_t a1@<X8>)
{
  *(v2 + 448) = v3;
  STACK[0x4698] = a1;
  STACK[0x2400] = 0;
  LODWORD(STACK[0x7D5C]) = -371865839;
  LODWORD(STACK[0x2F1C]) = -371865839;
  v7 = v3 == 0x217E172EFA1E81CLL || a1 == 0 || v4 == ((v1 - 357696709) ^ 0xEAAE34E6) + 0x981390C2FED070BLL;
  return (*(STACK[0xF18] + 8 * ((v7 * (((v1 - 357696709) & 0x1551DAFF) - 39242)) ^ v1)))();
}

uint64_t sub_10062668C()
{
  v1 = STACK[0xB228];
  STACK[0xD90] = ((STACK[0xB228] - 0x1BB53DFA7FC51984) ^ 0xFFFD4FF83FFDFFBFLL) + 0xF7FFBE7FD738C5FLL + ((2 * (STACK[0xB228] - 0x1BB53DFA7FC51984)) & 0xFFFA9FF07FFBFF7ELL);
  v2 = STACK[0xB218];
  STACK[0xD80] = ((STACK[0xB218] - 0x47D94FA29F465F0FLL) ^ 0xAF7FEFFDBF7F9EBELL) + 0x5FFD5BE27DF1ED60 + ((2 * (STACK[0xB218] - 0x47D94FA29F465F0FLL)) & 0x5EFFDFFB7EFF3D7CLL);
  v3 = STACK[0xB208];
  STACK[0xD70] = ((STACK[0xB208] - 0x166668CC9ED56DBBLL) ^ 0x5F7D7FE67D77FE5FLL) - 0x5000340640067241 + ((2 * (STACK[0xB208] - 0x166668CC9ED56DBBLL)) & 0xBEFAFFCCFAEFFCBELL);
  v4 = STACK[0xB1F8];
  STACK[0xD60] = ((STACK[0xB1F8] - 0x73411E761F177A27) ^ 0x4F7FFBFD7FF9CC5ELL) - 0x4002B01D42884040 + ((2 * (STACK[0xB1F8] - 0x73411E761F177A27)) & 0x9EFFF7FAFFF398BCLL);
  v5 = STACK[0xADE8];
  STACK[0xD40] = ((STACK[0xADE8] - 0x21B095692AC82F9CLL) ^ 0xFFFD5BFCFD7F9D1FLL) + 0xF7FEFE33FF1EEFFLL + ((2 * (STACK[0xADE8] - 0x21B095692AC82F9CLL)) & 0xFFFAB7F9FAFF3A3ELL);
  v6 = STACK[0xA6E8];
  STACK[0xD30] = ((STACK[0xA6E8] - 0x5ED04CA5846C1B9ELL) ^ 0xEF7FDFF6BFF1AE5FLL) + 0x1FFD6BE97D7FDDBFLL + ((2 * (STACK[0xA6E8] - 0x5ED04CA5846C1B9ELL)) & 0xDEFFBFED7FE35CBELL);
  v7 = STACK[0xA6D8];
  STACK[0xD00] = ((STACK[0xA6D8] - 0x7CB293E2FD0BE5C1) ^ 0xEF7FCFEEBFF9FD5ELL) + 0x1FFD7BF17D778EC0 + ((2 * (STACK[0xA6D8] - 0x7CB293E2FD0BE5C1)) & 0xDEFF9FDD7FF3FABCLL);
  v8 = STACK[0xA6C8];
  STACK[0xCE0] = ((STACK[0xA6C8] - 0x65357EE154792F03) ^ 0x1FFDDFF57FF3AD5ELL) - 0x1080941542822140 + ((2 * (STACK[0xA6C8] - 0x65357EE154792F03)) & 0x3FFBBFEAFFE75ABCLL);
  v9 = STACK[0xA6B8];
  STACK[0xCC0] = ((STACK[0xA6B8] - 0x189799C7B53DFB17) ^ 0xFFFFFF53FF5DF1ELL) - 0x82B41502845300 + ((2 * (STACK[0xA6B8] - 0x189799C7B53DFB17)) & 0x1FFFFFEA7FEBBE3CLL);
  v10 = STACK[0xA6A8];
  STACK[0xCA0] = ((STACK[0xA6A8] - 0x31ACEAB9C1818AB5) ^ 0x9FFD5BFC7D7FCD5FLL) + 0x6F7FEFE3BFF1BEBFLL + ((2 * (STACK[0xA6A8] - 0x31ACEAB9C1818AB5)) & 0x3FFAB7F8FAFF9ABELL);
  v11 = STACK[0xA688];
  STACK[0xC90] = ((STACK[0xA688] - 0x7241677EA7C159FLL) ^ 0xEFFDEFF2BDF3AD9ELL) + 0x1F7F5BED7F7DDE80 + ((2 * (STACK[0xA688] - 0x7241677EA7C159FLL)) & 0xDFFBDFE57BE75B3CLL);
  v12 = STACK[0xA668];
  STACK[0xC80] = ((STACK[0xA668] - 0x2EDB380E18416615) ^ 0xDF7DFBE0BDFBAD9FLL) + 0x2FFF4FFF7F75DE7FLL + ((2 * (STACK[0xA668] - 0x2EDB380E18416615)) & 0xBEFBF7C17BF75B3ELL);
  STACK[0xC70] = ((v1 - 0x1BB53DFA7FC51982) ^ 0xFF3E7FDD5DFFDFF7) + 0x7ACFFB7AF3C07D7FLL + ((2 * (v1 - 0x1BB53DFA7FC51982)) & 0xFE7CFFBABBFFBFEELL);
  STACK[0xC60] = ((v2 - 0x47D94FA29F465F0DLL) ^ 0x7EBE7B5CDBCD5D7FLL) - 0x4B000048A0D0009 + ((2 * (v2 - 0x47D94FA29F465F0DLL)) & 0xFD7CF6B9B79ABAFELL);
  STACK[0xC50] = ((v3 - 0x166668CC9ED56DB9) ^ 0xFE2FFF7871E27FF7) + 0x7BDE7BDFDFDDDD7FLL + ((2 * (v3 - 0x166668CC9ED56DB9)) & 0xFC5FFEF0E3C4FFEELL);
  STACK[0xC40] = ((v4 - 0x73411E761F177A25) ^ 0x7A6EFFDC53C97D7FLL) - 0x60848402092009 + ((2 * (v4 - 0x73411E761F177A25)) & 0xF4DDFFB8A792FAFELL);
  STACK[0xC30] = ((v5 - 0x21B095692AC82F9ALL) ^ 0x7F8E7FDAFBD37D7ELL) - 0x5800482AA132008 + ((2 * (v5 - 0x21B095692AC82F9ALL)) & 0xFF1CFFB5F7A6FAFCLL);
  STACK[0xC20] = ((v6 - 0x5ED04CA5846C1B9CLL) ^ 0xFF7E7B5CF5D27D7ELL) + 0x7A8FFFFB5BEDDFF8 + ((2 * (v6 - 0x5ED04CA5846C1B9CLL)) & 0xFEFCF6B9EBA4FAFCLL);
  STACK[0xBE0] = ((v7 - 0x7CB293E2FD0BE5BFLL) ^ 0xFF6FFFDB71D17DFELL) + 0x7A9E7B7CDFEEDF78 + ((2 * (v7 - 0x7CB293E2FD0BE5BFLL)) & 0xFEDFFFB6E3A2FBFCLL);
  STACK[0xBD0] = STACK[0xADE0] - 0x641A14AC46861300;
  STACK[0xBC0] = STACK[0xADB0] - 0x2F70F50BE831020BLL;
  STACK[0xBB0] = STACK[0xA6D0] - 0x1D5058BA94D15997;
  STACK[0xBA0] = STACK[0xA6C0] - 0x5DF0268E56A6D3E9;
  STACK[0xB90] = STACK[0xA6B0] - 0x1377D18E826D20ALL;
  STACK[0xB80] = STACK[0xA6A0] - 0x1DFAE020284F2E6FLL;
  STACK[0xB70] = ((v8 - 0x65357EE154792F01) ^ 0x7E4F7F5E5DE07F7ELL) - 0x44104060C202208 + ((2 * (v8 - 0x65357EE154792F01)) & 0xFC9EFEBCBBC0FEFCLL);
  STACK[0xB60] = ((v9 - 0x189799C7B53DFB15) ^ 0x7B2F7BD9D3EBDFFFLL) - 0x1210081822B8289 + ((2 * (v9 - 0x189799C7B53DFB15)) & 0xF65EF7B3A7D7BFFELL);
  STACK[0xB50] = ((v10 - 0x31ACEAB9C1818AB3) ^ 0x7F3E7BDB7FEA7F7ELL) - 0x53000832E2A2208 + ((2 * (v10 - 0x31ACEAB9C1818AB3)) & 0xFE7CF7B6FFD4FEFCLL);
  STACK[0xB40] = ((v11 - 0x7241677EA7C159DLL) ^ 0xFE1FFB797DE45D76) + 0x7BEE7FDED3DC0000 + ((2 * (v11 - 0x7241677EA7C159DLL)) & 0xFC3FF6F2FBC8BAECLL);
  STACK[0xB30] = ((v12 - 0x2EDB380E18416613) ^ 0x7FAFFF7C53FE7DF7) - 0x5A18424023E2081 + ((2 * (v12 - 0x2EDB380E18416613)) & 0xFF5FFEF8A7FCFBEELL);
  v13 = STACK[0xADB8];
  STACK[0xB20] = STACK[0xADB8] + 0xF7D4BE03D718C22;
  STACK[0xB10] = v13 + 0x7A0E7B5851C05D7CLL;
  STACK[0xD50] = v5;
  STACK[0xAF0] = v5 + 0x585DE5EF26F82DE0;
  STACK[0xAE8] = v13 + 0x7A0E7B5851C05D80;
  STACK[0xD20] = v7;
  STACK[0xAE0] = v7 - 0x2A4188AAB4B8845;
  STACK[0xCF0] = v8;
  STACK[0xAD8] = v8 + 0x14D8FC76FD472E79;
  STACK[0xCD0] = v9;
  STACK[0xAD0] = v9 + 0x6176E1909C826265;
  STACK[0xCB0] = v10;
  STACK[0xAC8] = v10 + 0x4861909E903ED2C7;
  v14 = *(STACK[0xF18] + 8 * (v0 + 7168));
  STACK[0xE00] = STACK[0x1D28];
  STACK[0xDF0] = STACK[0x6890];
  STACK[0xDE0] = STACK[0x3628];
  STACK[0xDD0] = STACK[0x6088];
  STACK[0xED0] = STACK[0x2B30];
  STACK[0xAC0] = v13;
  STACK[0xB00] = v13 + 10;
  STACK[0xEC0] = STACK[0x1878];
  STACK[0xDC0] = STACK[0x3738];
  STACK[0xEB0] = STACK[0x3958];
  STACK[0xEA0] = STACK[0x2E00];
  STACK[0xE90] = STACK[0x4FC8];
  STACK[0xE80] = STACK[0x6720];
  STACK[0xDB0] = STACK[0x5178];
  STACK[0xDA0] = STACK[0x92E8];
  LODWORD(STACK[0xE20]) = LOWORD(STACK[0x9FB6]);
  LODWORD(STACK[0xE10]) = LOWORD(STACK[0x9F92]);
  LODWORD(STACK[0xE30]) = LOWORD(STACK[0x9936]);
  LODWORD(STACK[0xE40]) = LOWORD(STACK[0x9926]);
  LODWORD(STACK[0xE60]) = LOWORD(STACK[0x9916]);
  LODWORD(STACK[0xE70]) = LOWORD(STACK[0x9906]);
  return v14();
}

uint64_t sub_100627244()
{
  v1 = STACK[0xF18];
  STACK[0x2FE0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 4462 + ((v0 + 1487555489) & 0xA755BF77))))();
}

uint64_t sub_1006272D8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1045745514;
  *(a1 + 40) = 1850287412;
  *(a1 + 32) = 0;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 ^ 0x84A1)))(v1);
  STACK[0x15E0] = v4;
  STACK[0x6ED0] = v4;
  return (*(v3 + 8 * (((v4 == 0) * (109 * (v2 ^ 0x4F7E) + (v2 ^ 0xFFFF3B1E))) ^ v2)))();
}

uint64_t sub_1006273B0@<X0>(int a1@<W8>)
{
  STACK[0x1C90] = v1;
  LODWORD(STACK[0x6C7C]) = -272862700;
  return (*(STACK[0xF18] + 8 * (a1 - 19861)))();
}

uint64_t sub_100627474(uint64_t a1, unint64_t a2)
{
  v3 = (v2 + 1149795209) & 0xFFFFFFFFBB76FF77;
  v4 = STACK[0xF18];
  v5 = *(STACK[0xF18] + 8 * (v3 ^ 0xC0A7));
  STACK[0xA340] = a2;
  v6 = v5(*(&off_1010A0B50 + (v3 ^ 0xC93)) - 2104883395);
  STACK[0x98B8] = *(v4 + 8 * v3);
  return (*(v4 + 8 * (v3 - 5942 + ((v3 - 130845287) & 0x7CCBE2C))))(v6);
}

uint64_t sub_100627520()
{
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((((&STACK[0x10000] + 3800) | 0x43691046) - ((&STACK[0x10000] + 3800) & 0x43691040)) ^ 0xA54F0B89) + 296753103;
  STACK[0x10ED8] = 0;
  v1 = (*(STACK[0xF18] + 8 * (v0 ^ 0x41F1)))(&STACK[0x10ED8]);
  return (STACK[0x51A8])(v1);
}

uint64_t sub_100627634@<X0>(unint64_t a1@<X8>)
{
  v2 = STACK[0x5F88];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = a1;
  LODWORD(STACK[0x655C]) = v2;
  LODWORD(STACK[0x884C]) = 1860669808;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1006276D8()
{
  v1 = *(STACK[0xF18] + 8 * v0);
  v2 = *(STACK[0xF18] + 8 * (v0 ^ 0x3C46 ^ (v0 + 3268)));
  STACK[0x9558] = v1;
  return v2();
}

uint64_t sub_100627740@<X0>(int a1@<W8>)
{
  v4 = a1 - 23651;
  v5 = (v3 ^ 0x257A0907u) + a1 < v1;
  if (v1 < 0x257A9896 != (v4 + v3 - 13612) > 0xDA856769)
  {
    v5 = v1 < 0x257A9896;
  }

  return (*(STACK[0xF18] + 8 * ((59 * (v2 & v5)) ^ v3)))();
}

uint64_t sub_1006279B0()
{
  v1 = *(STACK[0x15C8] - 0x217E172EFA1E81CLL);
  v2 = STACK[0x43DC];
  v3 = *(STACK[0x1C58] - 0x217E172EFA1E81CLL);
  v4 = ((v2 & 0xA6BB63B6) << ((v0 - 100) ^ 0x3A)) & ((88 * (v0 ^ 0x80DC)) ^ v2 ^ 0xB4B25C2C) ^ v2 & 0xA6BB63B6;
  v5 = ((2 * (v2 ^ 0xB8904B0C)) ^ 0x3C565174) & (v2 ^ 0xB8904B0C) ^ (2 * (v2 ^ 0xB8904B0C)) & 0x1E2B28BA;
  v6 = v5 ^ 0x229288A;
  v7 = (v5 ^ 0x1C022030) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0x78ACA2E8) & v6 ^ (4 * v6) & 0x1E2B28B8;
  v9 = (v8 ^ 0x182820B0) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x6030812)) ^ 0xE2B28BA0) & (v8 ^ 0x6030812) ^ (16 * (v8 ^ 0x6030812)) & 0x1E2B28A0;
  v11 = v9 ^ 0x1E2B28BA ^ (v10 ^ 0x2220800) & (v9 << 8);
  v12 = ((LODWORD(STACK[0x8EDC]) ^ 0xD5C22DF1) + 708694543) ^ ((LODWORD(STACK[0x8EDC]) ^ 0xB1288B9D) + 1322742883) ^ ((LODWORD(STACK[0x8EDC]) ^ 0x8D3F617D) + 1925226115);
  v13 = 353670337 * ((((&STACK[0x10000] + 3800) | 0xBC904D74) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x436FB288)) ^ 0x8B1B549);
  LODWORD(STACK[0x10EF8]) = (LODWORD(STACK[0x304C]) + 105876725) ^ v13;
  LODWORD(STACK[0x10EDC]) = v13 + 705390114 + v0;
  STACK[0x10EF0] = &STACK[0xF28] ^ 0x5DF2F71386CDF5DLL;
  STACK[0x10EE0] = v3;
  LOWORD(STACK[0x10EFC]) = -27455 * ((((&STACK[0x10000] + 3800) | 0x4D74) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xB288)) ^ 0xB549) + 518;
  LODWORD(STACK[0x10F10]) = v12 - v13 + 1634058453;
  LODWORD(STACK[0x10EE8]) = v13 ^ v2 ^ (2 * ((v11 << 16) & 0x1E2B0000 ^ v11 ^ ((v11 << 16) ^ 0x28BA0000) & (((v10 ^ 0x1C09201A) << 8) & 0x1E2B0000 ^ 0x14030000 ^ (((v10 ^ 0x1C09201A) << 8) ^ 0x2B280000) & (v10 ^ 0x1C09201A)))) ^ 0x82D57BD;
  STACK[0x10F08] = 0;
  STACK[0x10F00] = v1;
  v14 = STACK[0xF18];
  v15 = (*(STACK[0xF18] + 8 * (v0 + 19216)))(&STACK[0x10ED8]);
  v16 = STACK[0x10ED8];
  LODWORD(STACK[0x11EC]) = STACK[0x10ED8];
  return (*(v14 + 8 * (((2 * (v16 != -371865839)) | ((v16 != -371865839) << 6)) ^ v0)))(v15);
}

uint64_t sub_100627D0C@<X0>(int a1@<W8>)
{
  v2 = 0;
  v3 = *(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFCA475F48)) ^ 0xCA475F4BLL;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = v1 - 0x10A99C80114D1487;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v12 = v11 ^ (-901292213 * (v1 - 290264199)) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
  v13 = vdupq_n_s32(v12);
  v14 = xmmword_100BC7620;
  v15 = xmmword_100BC7630;
  v16 = xmmword_100BC7640;
  v17 = xmmword_100BC7650;
  v18.i64[0] = 0x9393939393939393;
  v18.i64[1] = 0x9393939393939393;
  v19.i64[0] = 0x1000000010;
  v19.i64[1] = 0x1000000010;
  do
  {
    v20 = *(v10 + v2);
    v27.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC7690), v13), vmulq_s32(vaddq_s32(v16, v13), vsubq_s32(v16, v13)));
    v27.val[0] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC76A0), v13), vmulq_s32(vaddq_s32(v17, v13), vsubq_s32(v17, v13)));
    v27.val[2] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC7680), v13), vmulq_s32(vaddq_s32(v15, v13), vsubq_s32(v15, v13)));
    v27.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC7670), v13), vmulq_s32(vaddq_s32(v14, v13), vsubq_s32(v14, v13)));
    *(v10 + v2) = vmulq_s8(vqtbl4q_s8(v27, xmmword_100BC7660), v18);
    v2 += 16;
    v17 = vaddq_s32(v17, v19);
    v16 = vaddq_s32(v16, v19);
    v15 = vaddq_s32(v15, v19);
    v14 = vaddq_s32(v14, v19);
  }

  while (v2 != 384);
  v21 = (v1 - 0x10A99C80114D130FLL);
  for (i = 49; i > 2; --i)
  {
    v23 = 16777619 * ((i - 2 + v12) ^ v12) % (i - 2);
    v24 = *(v10 + 8 * v23) ^ *v21;
    *v21 = v24;
    v25 = *(v10 + 8 * v23) ^ v24;
    *(v10 + 8 * v23) = v25;
    *v21-- ^= v25;
  }

  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100627F90(int a1, int a2, uint64_t a3, int a4, int a5, int a6, __int16 a7, int a8)
{
  if ((v21 + v8) >= 0x28)
  {
    v23 = v9;
  }

  else
  {
    v23 = v10;
  }

  v24 = v23 + v21;
  if ((v21 + v11) >= 0x28)
  {
    v25 = v12;
  }

  else
  {
    v25 = v13;
  }

  v26 = v25 + v21;
  if ((v21 + v15) >= 0x28)
  {
    a2 = a1;
  }

  v28 = v21 + a3;
  v29 = (*(v14 + v24) << 24) | (*(v14 + v26) << 16);
  v30 = *(v14 + v28) - (a7 & (2 * *(v14 + v28))) + a8;
  *(v22 + 4 * v28) = (v30 & 0x40 | (((a4 ^ (*(v14 + (a2 + v21)) << 8)) & (v29 ^ a5) | v29 & a6) ^ v17) & (v30 ^ v18)) ^ v19;
  return (*(STACK[0x228] + 8 * (((2 * (v21 + 1 != v20)) | (4 * (v21 + 1 != v20))) ^ v16)))();
}

uint64_t sub_10062827C()
{
  v1 = 245 * (STACK[0xF10] ^ 0x8B3E);
  v2 = STACK[0xF10] - 33304;
  LODWORD(STACK[0x7C6C]) = v0;
  v3 = STACK[0xF18];
  STACK[0x18C0] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * ((v1 ^ 0x1313) + v2)))();
}

uint64_t sub_100628368()
{
  v0 = (STACK[0xF10] - 15079) | 0x288;
  v1 = STACK[0xF10] - 31183;
  v2 = *(*(&off_1010A0B50 + (STACK[0xF10] ^ 0x8D78)) - 1648371459);
  v3 = *(v2 + 4);
  LODWORD(STACK[0xC419]) = *v2;
  LODWORD(STACK[0xC41D]) = v3;
  LOBYTE(STACK[0xC421]) = *(v2 + 8);
  return (*(STACK[0xF18] + 8 * ((v0 - 18823) ^ v1)))();
}

uint64_t sub_1006283E8@<X0>(unint64_t a1@<X8>)
{
  STACK[0x6A10] = v3;
  STACK[0x6450] = v1;
  STACK[0x51C8] = a1;
  v4 = STACK[0x7690];
  v5 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7670] = v5;
  STACK[0x2570] = (v5 + 100);
  STACK[0x7690] = v4 + 128;
  STACK[0x2750] = 0;
  LODWORD(STACK[0x904C]) = -371865839;
  STACK[0x35D8] = 0;
  LODWORD(STACK[0x1384]) = 0;
  STACK[0x8E08] = 0;
  LODWORD(STACK[0x5D94]) = 0;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v2 ^ 0xCCCA)))(-1, &STACK[0x35D8], &STACK[0x1384], &STACK[0x8E08], &STACK[0x5D94]);
  LODWORD(STACK[0x817C]) = v7 - ((v7 << ((v2 - 97) & 0xFB ^ 0x3A)) & (((v2 + 15090) | 0x120) - 743749008)) - 371865839;
  return (*(v6 + 8 * ((20093 * (v7 == ((v7 << ((v2 - 97) & 0xFB ^ 0x3A)) & (((v2 + 15090) | 0x120) - 743749008)))) ^ v2)))();
}

uint64_t sub_100628588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] + 11600;
  v5 = ((LODWORD(STACK[0x98D4]) ^ 0x2D524FAD) - 760369069) ^ ((LODWORD(STACK[0x98D4]) ^ 0x5EFA4F2C) - 1593462572) ^ ((LODWORD(STACK[0x98D4]) ^ 0x9A7DC790) + 1703032944);
  LODWORD(STACK[0xA610]) = (((((2 * LODWORD(STACK[0xB4A8])) ^ (STACK[0xF10] + 1518293031)) + 2087276319) ^ (((2 * LODWORD(STACK[0xB4A8])) ^ 0xBFE97C85) - 1711281926) ^ (((2 * LODWORD(STACK[0xB4A8])) ^ 0xE596A7E6) - 1015008357)) + 2143986328) * (v5 - 371865839) + 1511966954 * v5 + 519144262;
  v6 = 0x193D % (LODWORD(STACK[0xA614]) ^ 0xE7011160) - ((2 * (0x193D % (LODWORD(STACK[0xA614]) ^ 0xE7011160))) & 0x2B0) - 1641143976;
  return (*(STACK[0xF18] + 8 * (v3 - 29445)))(a1, a2, a3, v4, (((v6 ^ 0x65C77AF9) - 1707571961) ^ ((v6 ^ 0x8DE86B0E) + 1914148082) ^ ((v6 ^ 0x760130AF) - 1979789487)) - 563301469);
}

uint64_t sub_100628740()
{
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v3 + 30601)))(*(&off_1010A0B50 + v3 - 21200) - 2002376630, v0 + 16, 16);
  v7 = v0 < v1 + 16 && v1 < &STACK[0xC4D0] + v2 + 32;
  return (*(v4 + 8 * ((((v3 ^ 0xFFFF88E5) + v3 - 11934) * v7) ^ v3)))(v5);
}

uint64_t sub_100628BB4@<X0>(int a1@<W8>)
{
  v3 = (((*v1 ^ 0x3C4CFED4) - 1011678932) ^ ((*v1 ^ ((a1 ^ 0xF17A8C89) - 1994455389)) - 2056868406) ^ (((((a1 - 794019723) & 0x2F53C3FB) - 1358976920) ^ *v1) + 1358926861)) - 1787761778;
  v4 = v3 < 0xAB9B247D;
  v5 = v2 + 859813156 < v3;
  if ((v2 + 859813156) < 0xAB9B247D != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((60 * v5) ^ a1)))();
}

uint64_t sub_100628FD8()
{
  v7 = v3[1];
  v8 = (((*v3 ^ 0x7161A089) - 1902223497) ^ ((*v3 ^ v5) + v6) ^ ((*v3 ^ v1) + ((v0 + 22) | 1) + v4)) + 1877512611;
  if (v7 > v2 != v8 < 0x8612CA92)
  {
    v9 = v8 < 0x8612CA92;
  }

  else
  {
    v9 = v8 > v7 - 2045588846;
  }

  return (*(STACK[0xF18] + 8 * ((23 * !v9) | v0)))();
}

uint64_t sub_1006290CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (STACK[0xF10] + 7495) | 0x1009;
  v4 = STACK[0xF10] - 34065;
  LODWORD(STACK[0xA5C4]) = STACK[0x98D4] & 0xFFFFFFFE ^ 0x1A4F48A0;
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x1E1C)))(a1, a2, a3, v3, ((0x66 % (v3 ^ 0x1ABA4607 ^ LODWORD(STACK[0xA5CC]))) ^ 0xFAF9FBC4) + 1162122887 + ((2 * (0x66 % (v3 ^ 0x1ABA4607 ^ LODWORD(STACK[0xA5CC])))) & 0x88));
}

uint64_t sub_10062916C()
{
  v1 = 1012831759 * ((&STACK[0x10000] + 3800) ^ 0x1093168A);
  v2 = v1 ^ LODWORD(STACK[0x6A34]) ^ 0xD75B8A38;
  LODWORD(STACK[0x10EDC]) = v1 + v0 - 1961790896;
  LODWORD(STACK[0x10EE0]) = v2;
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0x5BCF)))(&STACK[0x10ED8]);
  STACK[0x1CF8] = STACK[0x4FE0];
  v4 = LODWORD(STACK[0x17B4]);
  LODWORD(STACK[0x509C]) = v4;
  v5 = STACK[0x7690];
  STACK[0x5D10] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v5 + (((v0 ^ 0xD69Bu) + 27256) ^ 0xAADBLL);
  LODWORD(STACK[0x2394]) = v4;
  v6 = (*(v3 + 8 * (v0 + 13264)))(v4 ^ 0xE9D5C711);
  STACK[0x7298] = v6;
  return (*(v3 + 8 * ((v6 != 0) | (2 * (v6 != 0)) | v0)))();
}

uint64_t sub_1006292BC()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 11568;
  STACK[0x10ED8] = *STACK[0x6778];
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((~(&STACK[0x10000] + 3800) & 0x4657B48B | (&STACK[0x10000] + 3800) & 0xB9A84B70) ^ 0xA071AF44) + 296753103;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x41F1)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1006293BC()
{
  STACK[0x9D30] = ((2 * v1) & 0x177EFC7FCLL) + (v1 ^ 0xFFFAFFDEBBF7E3FELL) + 0x373FF33FE6CE9AA7 + ((v0 - 699764589) & 0x29B5E3DB);
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 + 1690)))();
}

uint64_t sub_1006294B8()
{
  v0 = STACK[0xF10] - 25365;
  v1 = STACK[0x5FC0];
  STACK[0x36F0] = STACK[0x2758];
  STACK[0x73E8] = v1;
  LODWORD(STACK[0x56B8]) = 744170676;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1006294F8@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x2D4C]) = v1;
  LODWORD(STACK[0x3A68]) = a1;
  STACK[0x1940] = v2;
  v4 = STACK[0x7690];
  v5 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x5B70] = v5;
  STACK[0x8F08] = (v5 + 16);
  STACK[0x3A98] = (v5 + 32);
  STACK[0x7690] = 3 * (v3 ^ 0x2D7Au) + v4 - 35595;
  STACK[0x3E08] = 552;
  LODWORD(STACK[0x10ED8]) = (v3 + 12306) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x7A197FF5) - ((&STACK[0x10000] + 3800) | 0x85E6800A) - 2048491510) ^ 0x4B18B2D1));
  STACK[0x10EE8] = &STACK[0x614C];
  LOWORD(STACK[0x10EE0]) = 23473 * ((((&STACK[0x10000] + 3800) | 0x7FF5) - ((&STACK[0x10000] + 3800) | 0x800A) - 32758) ^ 0xB2D1) + 18064;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v3 + 51102)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * (v3 + 4968)))(v7);
}

uint64_t sub_10062964C()
{
  v2 = 0x981390C2FED9246;
  if (*(STACK[0x6258] + 560) == ((v0 + 29488) | 0x11Au) + 0x981390C2FED070CLL)
  {
    v2 = 0x981390C2FED9247;
  }

  *(STACK[0x88D8] + 16 * v1 + 8) = v2;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1006296B4()
{
  v3 = STACK[0xF10] + 8880;
  *(STACK[0x6360] + 40) = (*(v0 + (v1 & 0xFFFFFFFFF1F71F20)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x329F1AD0046BFA29) + 0x981390C2FED9246 + (((v2 ^ 0xAF57F9119A3A9837) - 0x5773D6012755FA35) ^ ((v2 ^ 0x6BD490C1766163E7) + 0x6C0F402E34F1FE1BLL) ^ ((v2 ^ (STACK[0xF10] - 1956538082) ^ 0x35267FCCF5BB2FCDLL) + 0x32FDAF233C49966ALL));
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_1006297AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] ^ 0x33B0;
  LODWORD(STACK[0xA5A8]) = STACK[0x98D4];
  return (*(STACK[0xF18] + 8 * (v3 - 29445)))(a1, a2, a3, v4, (((v4 - 46758) % (LODWORD(STACK[0xA5AC]) ^ 0xFA2C6D87)) ^ 0x1FF7F6D7) + 541498228 + ((2 * ((v4 - 46758) % (LODWORD(STACK[0xA5AC]) ^ 0xFA2C6D87))) & 0x1AE));
}

uint64_t sub_100629920(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a1 + ((a4 - 1132858061) << 7);
  v7 = *(v6 + 4 * (v5 - 1009403217));
  v8 = ((((v4 - 806702375) & 0x7A7DFFF4) - 1390794111) ^ v7) & (2 * (v7 & 0xC6221635)) ^ v7 & 0xC6221635;
  v9 = ((2 * (v7 ^ 0xFBC3B8FF)) ^ 0x7BC35D94) & (v7 ^ 0xFBC3B8FF) ^ (2 * (v7 ^ 0xFBC3B8FF)) & 0x3DE1AECA;
  v10 = v9 ^ 0x420A24A;
  v11 = (v9 ^ 0x3DA00A82) & (4 * v8) ^ v8;
  v12 = ((4 * v10) ^ 0xF786BB28) & v10 ^ (4 * v10) & 0x3DE1AEC8;
  v13 = (v12 ^ 0x3580AA00) & (16 * v11) ^ v11;
  v14 = ((16 * (v12 ^ 0x86104C2)) ^ 0xDE1AECA0) & (v12 ^ 0x86104C2) ^ (16 * (v12 ^ 0x86104C2)) & 0x3DE1AEC0;
  v15 = v13 ^ 0x3DE1AECA ^ (v14 ^ 0x1C00AC00) & (v13 << 8);
  v16 = v7 ^ (2 * ((v15 << 16) & 0x3DE10000 ^ v15 ^ ((v15 << 16) ^ 0x2ECA0000) & (((v14 ^ 0x21E1024A) << 8) & 0x3DE10000 ^ 0x1C410000 ^ (((v14 ^ 0x21E1024A) << 8) ^ 0x61AE0000) & (v14 ^ 0x21E1024A))));
  *(v6 + 4 * (v5 - 1009403217)) = (((v16 ^ 0xBBE2FC52) - 446547339) ^ ((v16 ^ 0xBA19A037) - 459708910) ^ ((v16 ^ 0x5977A2EF) + 133653706)) + 869380382;
  return (*(STACK[0xF18] + 8 * v4))();
}

uint64_t sub_10062A078@<X0>(unsigned int a1@<W8>)
{
  *(v4 + 1208) = v1;
  LODWORD(STACK[0x8920]) = a1;
  v6 = *(*(v5 + 6) + 132) - 183364545;
  v7 = v6 < 0xF9D42F3F;
  v8 = 95 * (v3 ^ 0x673F) + a1 - 103574210 < v6;
  if (a1 > v3 + 103508512 != v7)
  {
    v8 = v7;
  }

  v9 = !v8;
  if (v2)
  {
    v9 = 1;
  }

  return (*(STACK[0xF18] + 8 * ((2 * v9) | (16 * v9) | v3)))();
}

uint64_t sub_10062A118()
{
  v1 = STACK[0xF18];
  STACK[0x44B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x2B76 ^ (v0 + 27819))))();
}

uint64_t sub_10062A144()
{
  v1 = STACK[0x358];
  v2 = (*(STACK[0x358] + 8 * (v0 + 40509)))(1028);
  STACK[0x3A8] = v2;
  return (*(v1 + 8 * (((4 * (((v2 == 0) ^ ((v0 ^ 0xEC) - 60)) & 1)) & 0xF7 | (8 * (((v2 == 0) ^ ((v0 ^ 0xEC) - 60)) & 1))) ^ v0)))();
}

uint64_t sub_10062A514()
{
  STACK[0xA468] = STACK[0x7650] + 808;
  v1 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 5872) ^ v0)))();
}

uint64_t sub_10062A618()
{
  v1 = STACK[0xF18];
  STACK[0x4440] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 4244 + ((v0 - 2106446817) & 0x7D8DEF69))))();
}

uint64_t sub_10062A668()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xD327)))(24) != 0;
  return (*(v1 + 8 * ((v2 * ((((v0 - 1391037056) & 0x52E9FBFB) - 15664) ^ ((v0 + 11937) | 0x618))) ^ v0)))();
}

uint64_t sub_10062A6DC@<X0>(uint64_t a1@<X8>)
{
  v3 = a1 + 16 * v2;
  v4 = 0x981390C2FED9246;
  if (*(STACK[0x6258] + 428) != (v1 ^ 0x82413FF7))
  {
    v4 = 0x981390C2FED9247;
  }

  *(v3 + 8) = v4;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10062A7B8()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x796 ^ (v0 + 3933))))();
}

uint64_t sub_10062A894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (STACK[0xF10] - 1359204256) & 0x5103FCEF;
  v4 = STACK[0xF10] - 34068;
  LODWORD(STACK[0xA598]) = STACK[0x98D4];
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x1E11)))(a1, a2, a3, v3, 1077842992 - 0x1E5 / (v3 ^ 0xC2E29596 ^ LODWORD(STACK[0xA59C])) * (v3 ^ 0xC2E29596 ^ LODWORD(STACK[0xA59C])));
}

uint64_t sub_10062A9BC()
{
  v1 = STACK[0xF18];
  STACK[0x80E8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 6299) ^ 0x2164) + v0)))();
}

uint64_t sub_10062AB78@<X0>(uint64_t a1@<X6>, unsigned int a2@<W8>)
{
  v5 = (v3 - 1711100116) % a2;
  v6 = *(v4 + v5);
  v7 = v6 & ((v2 + 50) ^ 0x99) ^ 0x7E;
  v8 = *(v3 + a1 - 1711100116) ^ v6 ^ (2 * ((v6 ^ 0x1E) & (2 * ((v6 ^ 0x1E) & (2 * ((v6 ^ 0x1E) & (2 * ((v6 ^ 0x1E) & (2 * ((v6 ^ 0x1E) & (2 * ((v6 ^ 0x1E) & (2 * v6) & 0x3E ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7));
  *(v4 + v5) = (((v8 ^ 0xC) + 121) ^ ((v8 ^ 0x1A) + 111) ^ ((v8 ^ 0x5D) + 42)) + 33;
  return (*(STACK[0xF18] + 8 * ((33138 * (v3 == 1711100494)) ^ v2)))();
}

uint64_t sub_10062AD84()
{
  v0[5] = 0;
  v0[17] = 0;
  v0[15] = 0;
  v2 = STACK[0xF18];
  STACK[0x7A80] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 52248))();
}

uint64_t sub_10062ADB4@<X0>(int a1@<W8>)
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = -1905709415;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_10062AE24()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 12931;
  v3 = 1112314453 * ((&STACK[0x10000] + 3800) ^ 0xEF562AD9);
  v4 = (*v0 ^ 0x4776F56A) - v3;
  LODWORD(STACK[0x10EE0]) = v3 + STACK[0xF10] - 2086964070;
  LODWORD(STACK[0x10EDC]) = v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 + 16611)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * (v2 | (2 * (LOBYTE(STACK[0x10ED8]) != 116)))))(v6);
}

uint64_t sub_10062AEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a8 + a6) ^ *(a8 + v10);
  *(a8 + a6) = v11 ^ 0x5F;
  v12 = *(a8 + v10) ^ v11;
  *(a8 + v10) = v12;
  *(a8 + a6) ^= v9 ^ v12 ^ 0xE3;
  return (*(STACK[0xF18] + 8 * v8))();
}

uint64_t sub_10062AF38()
{
  v0 = STACK[0xF10] - 29603;
  STACK[0x8A48] = STACK[0xEA0];
  LODWORD(STACK[0x6B14]) = STACK[0xE90];
  STACK[0x6FE8] = STACK[0xEB0];
  LODWORD(STACK[0x15B4]) = STACK[0xEC0];
  LODWORD(STACK[0x3E80]) += 4;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10062B0BC@<X0>(unsigned int a1@<W8>)
{
  v5 = *(v2 + a1);
  *(v1 + v3) = v5 - 17;
  v6 = v5 != ((v4 - 125) & 0x3F ^ 0x2A);
  return (*(STACK[0xF18] + 8 * (((2 * v6) | (4 * v6)) ^ v4)))();
}

uint64_t sub_10062B1A0(uint64_t a1, char a2, int a3, int a4, int a5)
{
  v8 = STACK[0xE70] + (((a2 + v7) & 0x1F) << 7);
  v9 = STACK[0xE70] + (((a2 + v7 + 1) & 0x1F) << 7);
  v10 = *(v9 + 4 * v6) + a4;
  *(v8 + 4 * v6) += v5;
  *(v9 + 4 * v6) = v10;
  return (*(STACK[0xF18] + 8 * ((30822 * (a5 == 0)) ^ a3)))();
}

uint64_t sub_10062B284(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, int a6)
{
  v8 = (*a4 ^ 0xE5881734) & (2 * (*a4 & 0xC6221635)) ^ *a4 & 0xC6221635;
  v9 = ((2 * (*a4 ^ 0x618C3F54)) ^ 0x4F5C52C2) & (*a4 ^ 0x618C3F54) ^ (2 * (*a4 ^ 0x618C3F54)) & 0xA7AE2960;
  v10 = v9 ^ ((a6 ^ 0x5283) - 1600010964);
  v11 = (v9 ^ 0x1080040) & (4 * v8) ^ v8;
  v12 = ((4 * v10) ^ 0x9EB8A584) & v10 ^ (4 * v10) & 0xA7AE2960;
  v13 = (v12 ^ 0x86A82100) & (16 * v11) ^ v11;
  v14 = ((16 * (v12 ^ 0x21060861)) ^ 0x7AE29610) & (v12 ^ 0x21060861) ^ (16 * (v12 ^ 0x21060861)) & 0xA7AE2940;
  v15 = v13 ^ 0xA7AE2961 ^ (v14 ^ 0x22A20000) & (v13 << 8);
  v16 = *a4 ^ v7 ^ (2 * ((v15 << 16) & 0x27AE0000 ^ v15 ^ ((v15 << 16) ^ 0x29610000) & (((v14 ^ 0x850C2961) << 8) & 0x27AE0000 ^ 0x1860000 ^ (((v14 ^ 0x850C2961) << 8) ^ 0x2E290000) & (v14 ^ 0x850C2961))));
  *a4 = (((v16 ^ 0xA15F0836) + 1672364287) ^ ((v16 ^ 0x9360E3EE) + 1368501031) ^ ((v16 ^ 0xF901AF2F) + 1005643752)) + 806280587;
  return (*(STACK[0xF18] + 8 * (a6 ^ (46883 * (v6 == 0)))))();
}

uint64_t sub_10062B5EC()
{
  v0 = STACK[0xF10] - 7498;
  v1 = STACK[0x9600];
  v2 = ((v1 ^ (STACK[0xF10] + 997998656) & 0xC483BFBF ^ 0x5668A15) - 90571054) ^ ((v1 ^ 0x2B16136C) - 722867052) ^ ((((STACK[0xF10] - 2051) | 0x803) ^ 0x385AA196) + (v1 ^ 0xC7A5D553));
  LOBYTE(v1) = (((v1 ^ 0xA6) + 90) ^ ((v1 ^ 0x76) - 118) ^ ((v1 ^ 0xC1) + 63)) - 52;
  v3 = (2 * (v1 & 0x49 ^ 0x32)) & 0x32 ^ v1 & 0x49 ^ 0x32 ^ ((2 * (v1 & 0x49 ^ 0x32)) ^ 0x64) & (v1 ^ 0x7B);
  v4 = (v1 ^ (2 * (((2 * (v1 ^ 0x7B)) ^ 0x64) & (v1 ^ 0x7B) & (4 * v3) ^ v3))) & 0xF;
  v5 = v2 - (((v4 ^ 0x15E84BB3) - 454861167) ^ ((v4 ^ 0xE42B033B) + 354424345) ^ ((v4 ^ 0xF1C34885) + 13131175)) - 615793808;
  v6 = (v5 ^ 0xFF950EC3) & (2 * (v5 & 0xFF9520E8)) ^ v5 & 0xFF9520E8;
  v7 = ((2 * (v5 ^ 0xA9B50FD3)) ^ 0xAC405E76) & (v5 ^ 0xA9B50FD3) ^ (2 * (v5 ^ 0xA9B50FD3)) & 0x56202F3A;
  v8 = v7 ^ 0x52202109;
  v9 = (v7 ^ 0x4000620) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x5880BCEC) & v8 ^ (4 * v8) & 0x56202F38;
  v11 = (v10 ^ 0x50002C20) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x6200313)) ^ 0x6202F3B0) & (v10 ^ 0x6200313) ^ (16 * (v10 ^ 0x6200313)) & 0x56202F30;
  v13 = v11 ^ 0x56202F3B ^ (v12 ^ 0x42002300) & (v11 << 8);
  v14 = v5 ^ (2 * ((v13 << 16) & 0x56200000 ^ v13 ^ ((v13 << 16) ^ 0x2F3B0000) & (((v12 ^ 0x14200C0B) << 8) & 0x56200000 ^ 0x56000000 ^ (((v12 ^ 0x14200C0B) << 8) ^ 0x202F0000) & (v12 ^ 0x14200C0B))));
  LODWORD(STACK[0x91AC]) = v14 ^ 0xB640B98F;
  v15 = STACK[0xF18];
  v16 = (*(STACK[0xF18] + 8 * (v0 + 23719)))(v14 ^ 0x5F957E9Eu);
  STACK[0x8208] = v16;
  STACK[0x14E8] = v16;
  return (*(v15 + 8 * ((7 * (v16 == 0)) ^ v0)))();
}

uint64_t sub_10062BAB8(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 16) = 0;
  *(a1 + 4) = 0x21E23A8900000000;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v3 + 37170)))((((v3 - 14142) | 0x8913) + 1320004941) ^ v2);
  *(a1 + 16) = v6;
  return (*(v5 + 8 * (((v6 == 0) * (((v3 - 13048) | 0x4800) ^ 0x4E67)) ^ v3)))();
}

uint64_t sub_10062BB40()
{
  v2 = STACK[0x82E8];
  LODWORD(STACK[0x10ED8]) = (v0 - 3923) ^ (((((&STACK[0x10000] + 3800) ^ 0xFF7A6A34 | 0x8C52286F) - ((&STACK[0x10000] + 3800) ^ 0xFF7A6A34 | 0x73ADD790) + 1940772752) ^ 0x41B5EC5) * v1);
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0x5522)))(&STACK[0x10ED8]);
  STACK[0x82E8] = 0;
  return (*(v3 + 8 * v0))(v4);
}

uint64_t sub_10062BED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W6>, unsigned int a7@<W8>)
{
  v15 = a7 > v9;
  v16 = ((a6 + v10) & v12 ^ v13) + v11;
  v17 = v15 ^ (v16 < v7);
  v18 = v16 < v8;
  if (!v17)
  {
    v15 = v18;
  }

  return (*(STACK[0xF18] + 8 * ((v15 * v14) ^ a6)))(a1, a2, a3, a4, a5, (a6 - 2286));
}

uint64_t sub_10062BFB8()
{
  STACK[0x7260] = STACK[0x60B8];
  STACK[0x7860] = STACK[0x4D88];
  v1 = STACK[0x7690];
  v2 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x2FB8] = v2;
  STACK[0x7690] = (v0 ^ 0x8A25u) + v1 - 43412 + 3 * (v0 ^ 0x29ADu);
  LODWORD(STACK[0x10EE4]) = v0 - 193924789 * ((~(&STACK[0x10000] + 3800) & 0x3E1243D0 | (&STACK[0x10000] + 3800) & 0xC1EDBC28) ^ 0x88A971B6) + 34356;
  STACK[0x10ED8] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 41018)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((47538 * (LODWORD(STACK[0x10EE0]) == -371865839)) ^ v0)))(v4);
}

uint64_t sub_10062C0F8()
{
  v1 = STACK[0x7EF0];
  STACK[0x36F0] = STACK[0x6BB0];
  STACK[0x73E8] = v1;
  LODWORD(STACK[0x56B8]) = 744170679;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10062C130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] ^ 0x33B0;
  LODWORD(STACK[0xA014]) = STACK[0x98D4] & 0xFFFFFFFE ^ 0xE9D5C711;
  return (*(STACK[0xF18] + 8 * (v3 - 29445)))(a1, a2, a3, v4, (v4 ^ 0x9FE94774 ^ (0x14A % (LODWORD(STACK[0xA01C]) ^ 0xD69E7BC6))) + 2 * (0x14A % (LODWORD(STACK[0xA01C]) ^ 0xD69E7BC6)) - 1605070260);
}

uint64_t sub_10062C36C()
{
  LODWORD(STACK[0xAE5C]) = 371891397;
  STACK[0x7690] += (v0 + 23685) ^ 0xFFFFFFFFFFFF6328;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10062C424()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 16221)))((v0 - 33742) ^ 0xE9D5C07C ^ v1);
  STACK[0xAF08] = v3;
  return (*(v2 + 8 * ((28 * (v3 == 0)) ^ (v0 - 7373))))();
}

uint64_t sub_10062C48C()
{
  v0 = STACK[0xF10] ^ 0xEB70;
  v1 = STACK[0xF10] - 31047;
  v2 = STACK[0x9F30];
  v3 = STACK[0xF18];
  STACK[0x5E70] = *(STACK[0xF18] + 8 * v1);
  return (*(v3 + 8 * (v0 + v1 - 16764)))(v2);
}

uint64_t sub_10062C548()
{
  v0 = (STACK[0xF10] - 33563) | 0x105;
  v1 = STACK[0xF10] - 33365;
  v2 = STACK[0xF18];
  STACK[0x4150] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x2D08 ^ v0)))();
}

uint64_t sub_10062C614@<X0>(unint64_t *a1@<X7>, int a2@<W8>)
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
  STACK[0xBC90] = 0;
  STACK[0xBC98] = v2;
  v13 = 16777619 * ((553300517 * v12 + 7) ^ (553300517 * v12)) % 7;
  v14 = 16777619 * ((553300517 * v12 + 6) ^ (553300517 * v12)) % 6;
  v15 = 16777619 * ((553300517 * v12 + 5) ^ (553300517 * v12)) % 5;
  v16 = *(&STACK[0xBC90] | v13);
  *(&STACK[0xBC90] | v13) = STACK[0xBC97];
  v17 = *(&STACK[0xBC90] | v14);
  *(&STACK[0xBC90] | v14) = STACK[0xBC96];
  v18 = *(&STACK[0xBC90] | v15);
  *(&STACK[0xBC90] | v15) = STACK[0xBC95];
  v19 = 16777619 * ((553300517 * v12 + 3) ^ (553300517 * v12)) % 3;
  v20 = vdup_n_s32(553300517 * v12);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v12 + 1;
  LOBYTE(STACK[0xBC97]) = v16;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  LOBYTE(STACK[0xBC96]) = v17;
  LOBYTE(STACK[0xBC95]) = v18;
  v23 = STACK[0xBC90];
  LOBYTE(STACK[0xBC90]) = STACK[0xBC94];
  LOBYTE(STACK[0xBC94]) = v23;
  v24 = *(&STACK[0xBC90] | v19);
  *(&STACK[0xBC90] | v19) = STACK[0xBC93];
  LOBYTE(STACK[0xBC93]) = v24;
  v25 = STACK[0xBC91];
  LOBYTE(STACK[0xBC92]) = STACK[0xBC90];
  LOWORD(STACK[0xBC90]) = v25;
  STACK[0xBC90] = vmla_s32(v22, STACK[0xBC90], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBC98];
  v27 = (553300517 * STACK[0xBC98]) ^ v12;
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
  v48 = *(&STACK[0xBC98] + v13);
  *(&STACK[0xBC98] + v13) = STACK[0xBC9F];
  LOBYTE(STACK[0xBC9F]) = v48;
  v49 = *(&STACK[0xBC98] + v14);
  *(&STACK[0xBC98] + v14) = STACK[0xBC9E];
  LOBYTE(STACK[0xBC9E]) = v49;
  v50 = *(&STACK[0xBC98] + v15);
  *(&STACK[0xBC98] + v15) = STACK[0xBC9D];
  LOBYTE(STACK[0xBC9D]) = v50;
  v51 = STACK[0xBC98];
  LOBYTE(STACK[0xBC98]) = STACK[0xBC9C];
  LOBYTE(STACK[0xBC9C]) = v51;
  v52 = *(&STACK[0xBC98] + v19);
  *(&STACK[0xBC98] + v19) = STACK[0xBC9B];
  LOBYTE(STACK[0xBC9B]) = v52;
  v53 = STACK[0xBC99];
  LOBYTE(STACK[0xBC9A]) = STACK[0xBC98];
  LOWORD(STACK[0xBC98]) = v53;
  STACK[0xBC98] = vmla_s32(v22, STACK[0xBC98], vdup_n_s32(0x1000193u));
  *a1 = STACK[0xBC98] ^ STACK[0xBC90];
  return (*(STACK[0xF18] + 8 * a2))();
}

uint64_t sub_10062CAAC()
{
  v2 = STACK[0xF10] - 26083;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(v0 + v1);
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_10062CC5C()
{
  v2 = LODWORD(STACK[0x3908]) - 1163071869;
  v3 = (((v1 ^ 0x6F8BF59C) + v0 - 1871478369) ^ ((v1 ^ 0x2FC79DA9) - 801611177) ^ ((((v0 - 32165) | 0x449) ^ 0x56665FB5) + (v1 ^ 0xA999AF24))) - 1534937712;
  v4 = (v2 < 0xBAACEE7F) ^ (v3 < 0xBAACEE7F);
  v5 = v2 > v3;
  if (v4)
  {
    v5 = v2 < 0xBAACEE7F;
  }

  return (*(STACK[0xF18] + 8 * ((15 * !v5) ^ v0)))();
}

uint64_t sub_10062CD8C()
{
  v1 = STACK[0xF10] - 29050;
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v0;
  LODWORD(STACK[0x35EC]) = 1693393291;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10062D0A4()
{
  v3 = (v1 - 261322612) & 0xF9373FA;
  v4 = (((v0 << ((v3 ^ 0x9F) - 54)) ^ 0x6C0DD6D0) + 1920809369) ^ (((v0 << ((v3 ^ 0x9F) - 54)) ^ 0xC5C8BD94) + (v3 ^ 0xDBB80175)) ^ (((v0 << ((v3 ^ 0x9F) - 54)) ^ 0xFEC19E84) - 525241907);
  v5 = ((v2 ^ 0x11322906) - 288499974) ^ ((v2 ^ 0x3BDF44D0) - 1004487888) ^ ((v2 ^ 0xC338AAC7) + 1019696441);
  v6 = v4 + 514710018;
  v7 = v4 < 0x49741A89;
  v8 = v5 >= 0x162A38EF;
  v9 = v5 + 1375189916;
  v10 = !v8;
  v11 = v6 < v9;
  if (v10 != v7)
  {
    v11 = v10;
  }

  return (*(STACK[0xF18] + 8 * ((31 * v11) ^ v3)))();
}

uint64_t sub_10062D20C@<X0>(uint64_t a1@<X1>, unsigned int a2@<W4>, int a3@<W8>)
{
  v5 = *(a1 + 4 * v4 - 3250658628);
  v6 = (((a3 + 9685332) ^ (v5 >> 8)) + (v5 ^ 0x94216A8F)) ^ HIWORD(v5);
  LOBYTE(v6) = (((HIBYTE(v5) ^ 0xFA) + 14) ^ ((HIBYTE(v5) ^ 0x56) - 94) ^ ((HIBYTE(v5) ^ 0x38) - 48)) - 6 + (((v6 ^ 0xC0) - 18) ^ ((v6 ^ 0xA7) - 117) ^ ((v6 ^ 0x46) + 108));
  v7 = ((2 * (v6 ^ 0xB3)) ^ 0x4C) & (v6 ^ 0xB3) ^ (2 * (v6 ^ 0xB3)) & 0x26;
  v8 = v7 ^ 0x22;
  v9 = 4 * (v7 ^ 0x22);
  v10 = (v7 ^ 4) & (4 * (((2 * v6) & 0x2A ^ 0x95) & v6)) ^ ((2 * v6) & 0x2A ^ 0x95) & v6;
  *(v3 + (v4 - 812664657) % a2) ^= 0x95 ^ v6 ^ (2 * (((v9 ^ 0x90) & v8 ^ v9 & 0x20) & (16 * v10) ^ v10));
  return (*(STACK[0xF18] + 8 * ((13 * (v4 == 812664750)) ^ a3)))();
}

uint64_t sub_10062D3F4()
{
  v0 = STACK[0xF10];
  v1 = (STACK[0xF10] - 1229557214) & 0x4949BAFE;
  v2 = (LODWORD(STACK[0x3AC4]) + 4);
  v3 = (v2 | ((v2 < 0x273BD60C) << 32)) + STACK[0xA600];
  v4 = STACK[0x6850];
  *(v3 - 658232829) = *(STACK[0x6850] + 63) ^ 0x5F;
  *(v3 + (v1 ^ 0xA2118D26626AF53CLL) + 0x5DEE72D97659DCA2) = v4[62] ^ 0x5F;
  *(v3 - 658232831) = v4[61] ^ 0x5F;
  *(v3 - 658232832) = v4[60] ^ 0x5F;
  *(v3 - 658232833) = v4[59] ^ 0x5F;
  *(v3 - 658232834) = v4[58] ^ 0x5F;
  *(v3 - 658232835) = v4[57] ^ 0x5F;
  *(v3 - 658232836) = v4[56] ^ 0x5F;
  *(v3 - 658232837) = v4[55] ^ 0x5F;
  *(v3 - 658232838) = v4[54] ^ 0x5F;
  *(v3 - 658232839) = v4[53] ^ 0x5F;
  *(v3 - 658232840) = v4[52] ^ 0x5F;
  *(v3 - 658232841) = v4[51] ^ 0x5F;
  *(v3 - 658232842) = v4[50] ^ 0x5F;
  *(v3 - 658232843) = v4[49] ^ 0x5F;
  *(v3 - 658232844) = v4[48] ^ 0x5F;
  v5 = *(STACK[0xF18] + 8 * (v0 - 28689));
  LODWORD(STACK[0x3AC4]) = v2;
  return v5(1814149345, STACK[0xA600], 769424456, 1926737144, 1864610357, 2342244908, 29, 421804622);
}

uint64_t sub_10062D67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v4 + 24) = a1;
  *(v3[3] + 32) = v3[4];
  *(a2 + 8) += v3[1] + v2;
  return (*(STACK[0xF18] + 8 * ((8443 * (v5 > 0x7B8698FC)) ^ (v5 + 329740317))))();
}

uint64_t sub_10062D804()
{
  v1 = v0 - 4728;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (((v1 + 4009) ^ 0x194A) + v1)))();
}

uint64_t sub_10062D950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *a5 += ((v5 - 19255) | 0x2000) - 24579;
  LODWORD(STACK[0x10EE0]) = v5 + 155453101 * ((((&STACK[0x10000] + 3800) | 0x9F8CB06) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xF60734F8)) ^ 0xEFDED0C9) + 296753103;
  STACK[0x10ED8] = 0;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v5 ^ 0x41F1u)))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v6 + 8 * (v5 - 32445));
  return (*(v6 + 8 * (v5 - 29900)))(v7);
}

uint64_t sub_10062DA10()
{
  v2 = LODWORD(STACK[0x25F4]) == (((v0 ^ 0x812D) + 2023) ^ 0xE9D5D7D5) || LODWORD(STACK[0x25F4]) == -371866069;
  v3 = 160;
  if (v2)
  {
    v3 = 168;
  }

  v4 = *(v1 + v3);
  STACK[0xF68] = v4;
  return (*(STACK[0xF18] + 8 * ((v0 - 23853) | (16 * (v4 == 0)))))();
}

uint64_t sub_10062DA74()
{
  v1 = (((LODWORD(STACK[0x6318]) ^ 0xB2B340ED) + 1296875283) ^ ((LODWORD(STACK[0x6318]) ^ 0x7053AA35) - 1884531253) ^ ((LODWORD(STACK[0x6318]) ^ 0x2B352DC9) - 724905417)) - 197142764 + (((LODWORD(STACK[0x2ACC]) ^ 0x5264F325) + (v0 ^ 0xAD9B8BDB)) ^ ((LODWORD(STACK[0x2ACC]) ^ 0xBF8C3B10) + 1081328880) ^ ((LODWORD(STACK[0x2ACC]) ^ 0x43D0056 ^ ((v0 - 34560) | 0xF72)) - 71110436));
  v2 = ((v1 ^ 0xBAE74A6A) + 1703738828) ^ v1 ^ ((v1 ^ 0x7742F248) - 1473690134) ^ ((v1 ^ 0x938E0FA3) + 1290123267) ^ ((v1 ^ 0x7EBFFFDF) - 1579923329);
  *STACK[0x38A0] = v2 ^ 0xC9418F4F;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4D98)))(v2 ^ 0x2094485E);
  *STACK[0x1FF8] = v4;
  return (*(v3 + 8 * ((23 * (v4 == 0)) ^ v0)))();
}

uint64_t sub_10062DC60()
{
  STACK[0x9E38] = ((((v1 - 1066400444) | 0x25800A24u) + 2208270643) & (2 * v0)) + (v0 ^ 0x4F75F7EEB4C7D3F5) - 0x4870B28210821000;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x17AA)))();
}

uint64_t sub_10062DE70@<X0>(int a1@<W8>)
{
  STACK[0x4BA0] = STACK[0x3EF0];
  v2 = STACK[0x75F0];
  STACK[0x8BE0] = STACK[0x75F0];
  LODWORD(STACK[0x1D0C]) = STACK[0x2D30];
  LODWORD(STACK[0x2A94]) = v1;
  return (*(STACK[0xF18] + 8 * (((((a1 - 29) ^ (v2 == 0)) & 1) * (a1 - 44090)) ^ a1)))();
}

uint64_t sub_10062DED8@<X0>(int a1@<W8>)
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
  STACK[0xBD30] = 0;
  STACK[0xBD38] = v1;
  v12 = 16777619 * ((553300517 * v11 + 7) ^ (553300517 * v11)) % 7;
  v13 = 16777619 * ((553300517 * v11 + 6) ^ (553300517 * v11)) % 6;
  v14 = 16777619 * ((553300517 * v11 + 5) ^ (553300517 * v11)) % 5;
  v15 = *(&STACK[0xBD30] | v12);
  *(&STACK[0xBD30] | v12) = STACK[0xBD37];
  v16 = *(&STACK[0xBD30] | v13);
  *(&STACK[0xBD30] | v13) = STACK[0xBD36];
  v17 = *(&STACK[0xBD30] | v14);
  *(&STACK[0xBD30] | v14) = STACK[0xBD35];
  v18 = 16777619 * ((553300517 * v11 + 3) ^ (553300517 * v11)) % 3;
  v19 = vdup_n_s32(553300517 * v11);
  v20.i32[0] = v19.i32[0];
  v20.i32[1] = 553300517 * v11 + 1;
  LOBYTE(STACK[0xBD37]) = v15;
  v21 = veor_s8(vmul_s32(v20, v19), v19);
  LOBYTE(STACK[0xBD36]) = v16;
  LOBYTE(STACK[0xBD35]) = v17;
  v22 = STACK[0xBD30];
  LOBYTE(STACK[0xBD30]) = STACK[0xBD34];
  LOBYTE(STACK[0xBD34]) = v22;
  v23 = *(&STACK[0xBD30] | v18);
  *(&STACK[0xBD30] | v18) = STACK[0xBD33];
  LOBYTE(STACK[0xBD33]) = v23;
  v24 = STACK[0xBD31];
  LOBYTE(STACK[0xBD32]) = STACK[0xBD30];
  LOWORD(STACK[0xBD30]) = v24;
  STACK[0xBD30] = vmla_s32(v21, STACK[0xBD30], vdup_n_s32(0x1000193u));
  v25 = STACK[0xBD38];
  v26 = (553300517 * STACK[0xBD38]) ^ v11;
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
  v48 = *(&STACK[0xBD38] + v12);
  *(&STACK[0xBD38] + v12) = STACK[0xBD3F];
  LOBYTE(STACK[0xBD3F]) = v48;
  v49 = *(&STACK[0xBD38] + v13);
  *(&STACK[0xBD38] + v13) = STACK[0xBD3E];
  LOBYTE(STACK[0xBD3E]) = v49;
  v50 = *(&STACK[0xBD38] + v14);
  *(&STACK[0xBD38] + v14) = STACK[0xBD3D];
  LOBYTE(STACK[0xBD3D]) = v50;
  v51 = STACK[0xBD38];
  LOBYTE(STACK[0xBD38]) = STACK[0xBD3C];
  LOBYTE(STACK[0xBD3C]) = v51;
  v52 = *(&STACK[0xBD38] + v18);
  *(&STACK[0xBD38] + v18) = STACK[0xBD3B];
  LOBYTE(STACK[0xBD3B]) = v52;
  v53 = STACK[0xBD39];
  LOBYTE(STACK[0xBD3A]) = STACK[0xBD38];
  LOWORD(STACK[0xBD38]) = v53;
  STACK[0xBD38] = vmla_s32(v21, STACK[0xBD38], vdup_n_s32(0x1000193u));
  *v42 = STACK[0xBD38] ^ STACK[0xBD30];
  return (*(STACK[0xF18] + 8 * ((46797 * (a1 != (a1 ^ 0xE1C853E3))) ^ (a1 - 545168497))))();
}

uint64_t sub_10062E3CC()
{
  STACK[0x7778] = v0 + 64;
  v3 = STACK[0x7690];
  v4 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7BC8] = v4;
  STACK[0x3EC8] = (v4 + 80);
  STACK[0x7690] = ((3 * (v2 ^ 0xB3D4u)) ^ 0x8B5BLL) + v3;
  STACK[0x3D00] = 0;
  STACK[0x47C0] = 0;
  LODWORD(STACK[0x8BDC]) = -371865839;
  STACK[0x93E8] = 0;
  LODWORD(STACK[0x4E34]) = -371865839;
  LODWORD(STACK[0x2578]) = 0;
  LODWORD(STACK[0x163C]) = -371865839;
  STACK[0x7280] = v1;
  *(v0 + 80) = 33;
  return (*(STACK[0xF18] + 8 * ((123 * (STACK[0x3428] == 0)) ^ v2)))();
}

uint64_t sub_10062E484()
{
  v1 = STACK[0xF10] - 32184;
  STACK[0x5080] = v0;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x21BB)))();
}

uint64_t sub_10062E7B4()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x759 ^ (19 * (v0 ^ 0x668)))))();
}

uint64_t sub_10062E804()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + (v0 ^ 0x11B1) - 1890)))();
}

uint64_t sub_10062E84C()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  STACK[0x2330] = 0;
  return (*(v1 + 8 * (v0 - 1174)))(v2);
}

uint64_t sub_10062E928@<X0>(int a1@<W8>)
{
  v2 = a1 + 10499;
  v3 = (109 * ((a1 + 10499) ^ 0xA577) - 34816) | 0x8800u;
  STACK[0x9490] = (v3 ^ 0xD781DD57E64ACD15) + v1;
  return (*(STACK[0xF18] + 8 * ((89 * ((v3 ^ 0xD781DD57E64ACD15) + v1 == 0)) ^ v2)))();
}

uint64_t sub_10062E9E0@<X0>(int a1@<W8>)
{
  if ((v3 == a1) | STACK[0x851F] & 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 371891407;
  }

  return (*(STACK[0xF18] + 8 * (((v4 == (v1 ^ 0x430A) - 371901482) * ((v1 - 9262) ^ 0xA47E)) ^ v1)))();
}

uint64_t sub_10062EA90()
{
  v1 = STACK[0x8C68];
  STACK[0x20C0] = STACK[0x8C68];
  STACK[0x1D98] = 0;
  return (*(STACK[0xF18] + 8 * (((v1 == 0) * (((v0 + 12824) ^ 0xACF6) - 10021)) ^ v0)))();
}

uint64_t sub_10062EB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x3510];
  STACK[0x5D28] = &STACK[0x4624];
  LODWORD(STACK[0x4704]) = 1151130729;
  return (*(STACK[0xF18] + 8 * a8))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10062EBC8()
{
  STACK[0x2DA0] = *(STACK[0x28B0] - 0x10A99C80114D147FLL);
  STACK[0x43F8] = *(v1 + 4016);
  STACK[0x6160] = STACK[0x69A0];
  LODWORD(STACK[0x72A4]) = 1122423943;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10062EC30@<X0>(int a1@<W1>, int a2@<W8>)
{
  v5 = v2 - 8309 + a1;
  *(v3 + 2904) = v5;
  v6 = (((v4 ^ 0xD9E35398) + 639413352) ^ ((v4 ^ 0x7F33BFDF) - 2134097887) ^ (((((v2 - 6845) | 0x212) + 1325736836) ^ v4) - 1325738838)) - 2054057937;
  v7 = v5 > 0x644436E1;
  v8 = v7 ^ (v6 < 0x9BBBC91E);
  v9 = a1 - 1682192090 > v6;
  if (!v8)
  {
    v7 = v9;
  }

  if (v7)
  {
    a2 = 371891407;
  }

  *(v3 + 2908) = a2;
  return (*(STACK[0xF18] + 8 * ((173 * (a2 == -371865839)) ^ v2)))();
}

uint64_t sub_10062EE3C(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0xEC0];
  v4 = (LODWORD(STACK[0xEC0]) + 16482) | 0x91;
  STACK[0x9290] = STACK[0x54A8] + 48;
  *v2 = STACK[0x217C];
  v5 = STACK[0x3E38];
  *(v5 - 0x20DE4F5147E73107) = 0;
  *(v5 - 0x20DE4F5147E73161) = v4 ^ LODWORD(STACK[0x22A0]) ^ 0xE9D5A6A4;
  STACK[0x95A0] = STACK[0x9290];
  LOWORD(STACK[0x79DE]) = 7064;
  LODWORD(STACK[0x16B4]) = 2000311201;
  return (*(STACK[0xF18] + 8 * v3))(a1, a2, STACK[0xE58], STACK[0xE50]);
}