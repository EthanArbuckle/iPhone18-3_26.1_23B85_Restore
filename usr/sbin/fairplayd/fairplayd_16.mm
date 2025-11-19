uint64_t sub_1004ABB04()
{
  STACK[0x8FE8] = *(v1 - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v3;
  LODWORD(STACK[0x704C]) = -2116087572;
  LODWORD(STACK[0x7FD8]) = 1970496882;
  LODWORD(STACK[0x4A8C]) = v2 ^ (v0 - 969422308);
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * (v0 - 29747)))();
}

uint64_t sub_1004ABC50@<X0>(int a1@<W8>)
{
  STACK[0x7690] = v1;
  LODWORD(STACK[0x771C]) = 371892093;
  return (*(STACK[0xF18] + 8 * (a1 - 23058)))();
}

uint64_t sub_1004ABC84(int8x16_t a1, double a2, double a3, double a4, int8x16_t a5)
{
  v11 = (v10 + (v6 + v7));
  v12 = *v11;
  v13 = v11[1];
  v14 = (v5 + v6);
  *v14 = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a5)), a1);
  v14[1] = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a5)), a1);
  return (*(v9 + 8 * ((60 * (v6 == 32)) ^ v8)))();
}

uint64_t sub_1004ABD5C@<X0>(int a1@<W8>)
{
  v9 = v2 - 66;
  v10 = v2 - 12322;
  v11 = STACK[0xF18];
  STACK[0x7C50] = *(STACK[0xF18] + 8 * v7);
  STACK[0x6590] = v1;
  LODWORD(STACK[0x6C24]) = v6;
  STACK[0x1110] = v8;
  LODWORD(STACK[0x332C]) = a1;
  LOBYTE(STACK[0x132F]) = v3;
  STACK[0x4978] = v5;
  STACK[0x3838] = v4;
  v12 = STACK[0x7690];
  v13 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x68D8] = v13;
  STACK[0x5AA8] = (v13 + 100);
  STACK[0x5F80] = (v13 + 116);
  STACK[0x74A0] = (v13 + 132);
  STACK[0x7B70] = (v13 + 148);
  STACK[0x7EF0] = (v13 + 676);
  STACK[0x7690] = v12 + 704;
  LODWORD(STACK[0x9004]) = 137779115;
  LODWORD(STACK[0x5D58]) = 864827765;
  STACK[0x8560] = 0;
  if (v1)
  {
    v14 = v8 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14;
  STACK[0x6B30] = 0;
  LOBYTE(STACK[0x778F]) = 57;
  return (*(v11 + 8 * ((57 * ((v9 ^ v15) & 1)) ^ v10)))();
}

uint64_t sub_1004ABFF4()
{
  v0 = STACK[0xF10] - 31542;
  v1 = (STACK[0xF10] + 5957) | 9;
  v2 = STACK[0x3500];
  STACK[0x9B18] = STACK[0x3500] + 1664;
  STACK[0x9B20] = v2;
  v3 = STACK[0x48F8];
  v4 = 139493411 * (((&STACK[0x10ED8] ^ 0x419289C6FECAD517 | 0xB66072DC4C874C9ELL) - (&STACK[0x10ED8] ^ 0x419289C6FECAD517) + ((&STACK[0x10ED8] ^ 0x419289C6FECAD517) & 0x499F8D23B378B361)) ^ 0x9D8942B6BE6078CCLL);
  v5 = (STACK[0x7580] ^ 0x3F7A49FF1887DFFDLL) - v4;
  v6 = (STACK[0x4880] ^ (v1 - 0x51BE627FEF16B41ELL)) - v4;
  LODWORD(STACK[0x10F00]) = (LODWORD(STACK[0x27BC]) + 1643533841) ^ v4;
  STACK[0x10EF8] = v6;
  STACK[0x10EF0] = v3;
  STACK[0x10EE0] = v5;
  STACK[0x10ED8] = v2;
  LODWORD(STACK[0x10EE8]) = (v0 + 33201) ^ v4;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v0 ^ 0xDCCB)))(&STACK[0x10ED8]);
  STACK[0x9888] = *(v7 + 8 * v0);
  return (*(v7 + 8 * (v0 + 916)))(v8);
}

uint64_t sub_1004AC1CC()
{
  v2 = STACK[0xF18];
  v3 = *(STACK[0xF18] + 8 * v0);
  STACK[0xED0] = v3;
  STACK[0x1B80] = v3;
  return (*(v2 + 8 * (v1 ^ 0x502 ^ (v1 + 19060))))();
}

uint64_t sub_1004AC24C()
{
  LODWORD(STACK[0x2D04]) = -371865839;
  STACK[0x7690] = STACK[0x7690] - 27647 + ((v0 + 415444164) & 0xE73CFFEF);
  LODWORD(STACK[0x771C]) = -371865839;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004AC2D8()
{
  v0 = STACK[0xF10] - 19142;
  STACK[0x67E8] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004AC464@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x81E0] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 ^ 0x7CB8 ^ (1877 * (a1 ^ 0x11C1)))))();
}

uint64_t sub_1004AC5D4@<X0>(int a1@<W8>)
{
  v2 = a1 & 0x72424FCF;
  v3 = (v2 + 29670) | 0x812;
  v4 = (v1 - 48128047);
  v5 = *(STACK[0x9D18] + v4);
  v6 = v4 + STACK[0x9D20] + STACK[0x2920];
  STACK[0xD00] = v3;
  *(v6 + v3 - 0x451B16B046921B82) = v5 ^ 0x5F;
  v7 = *(STACK[0xF18] + 8 * v2);
  LODWORD(STACK[0xE00]) = v1 - 1;
  return v7();
}

uint64_t sub_1004AC654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10];
  v8 = STACK[0xF10] + 1633559834;
  STACK[0x7548] = STACK[0x7BB0];
  STACK[0x77B0] = &STACK[0x8E80];
  LODWORD(STACK[0x648C]) = 632676252;
  return (*(STACK[0xF18] + 8 * ((4827 * (v8 < 0x76556E82)) ^ (v7 - 32798))))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_1004AC6C8()
{
  LODWORD(STACK[0x10ED8]) = (v0 + 1711406264) ^ (1603510583 * ((((&STACK[0x10ED8] | 0xDD82A7CE) ^ 0xFFFFFFFE) - (~&STACK[0x10ED8] | 0x227D5831)) ^ 0xB5A66A9A));
  v1 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0x99FE4F02)))(&STACK[0x10ED8]);
  v2 = STACK[0x10EDC];
  v3 = 17902189 * (((&STACK[0x10ED8] | 0xD3DB3933) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0x2C24C6C8)) ^ 0x5D942F23);
  LODWORD(STACK[0x10ED8]) = v0 - v3 + 1711388266;
  LODWORD(STACK[0x10EE0]) = (((v2 ^ 0x23D69ED6) - 601267926) ^ ((v2 ^ 0xA38168DB) + 1551800101) ^ (((v0 + 1711379022) | 0x2808) + (v2 ^ 0x6982311C) - 1770155973)) - v3 - 271025034;
  v4 = (*(v1 + 8 * (v0 ^ 0x99FE4FFD)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * ((15964 * (v0 != 538169120)) ^ (v0 + 1711408669))))(v4);
}

uint64_t sub_1004AC868()
{
  v2 = STACK[0x3850];
  LODWORD(STACK[0x74B4]) = v0;
  return (*(STACK[0xF18] + 8 * (((v2 == 0) * (((v1 - 32571) | 0x27) - 3070)) ^ (v1 - 13299))))();
}

uint64_t sub_1004AC8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0xF10] - 29030;
  v8 = STACK[0x53B4];
  *(STACK[0x1A98] + 560) = STACK[0x53B4];
  LODWORD(STACK[0x7E54]) = LODWORD(STACK[0xA94C]) + v8;
  LODWORD(STACK[0xA958]) = v6;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, &STACK[0xA237]);
}

uint64_t sub_1004ACC20()
{
  v1 = v0 & 0xFFFFFFFFD6955FFBLL;
  *(STACK[0x6D0] - 308144619) = LODWORD(STACK[0x1384]) - ((2 * LODWORD(STACK[0x1384])) & 0xD3AB8E22) - 371865839;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x1150)))();
}

uint64_t sub_1004ACDC0()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))(v1);
  return (*(v2 + 8 * (v0 + 3104)))(v3);
}

uint64_t sub_1004ACE78()
{
  v0 = STACK[0xF10] - 28618;
  *(STACK[0x78B0] + 112) = 0x217E172EFA1E81CLL;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004ACFB8@<X0>(unint64_t a1@<X0>, unint64_t a2@<X4>, int a3@<W8>)
{
  STACK[0xB380] = a2;
  LODWORD(STACK[0x3FB0]) = v5;
  STACK[0x84D0] = a1;
  LODWORD(STACK[0x1360]) = a3;
  return (*(STACK[0xF18] + 8 * ((102 * ((*(a2 + 48 * v3 + 40) & 1) == ((v4 - 18483) | 0x6652) - 28630)) ^ v4)))();
}

uint64_t sub_1004AD03C()
{
  LODWORD(STACK[0x7804]) = v2 + v1;
  LODWORD(STACK[0x5624]) = -371865839;
  LOBYTE(STACK[0x330F]) = 1;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004AD11C()
{
  v6 = (*(v5 + 8) + v0 * v2 + v3);
  v6[3] = 0;
  v6[5] = 0;
  v6[14] = 0;
  return (*(STACK[0xF18] + 8 * (((4 * (v0 + 1 != v4)) | ((v0 + 1 != v4) << 6)) ^ v1)))();
}

uint64_t sub_1004AD2BC()
{
  LOBYTE(STACK[0x58EB]) = 1;
  STACK[0x9368] = v0;
  STACK[0x87E0] = 0;
  return (*(STACK[0xF18] + 8 * (v1 + 1161)))();
}

uint64_t sub_1004AD340()
{
  LODWORD(STACK[0x8BC4]) = v1;
  v3 = *v2;
  STACK[0x7F48] = *v2;
  return (*(STACK[0xF18] + 8 * (((v3 != 0) * ((((v0 - 13160) | 0x3020) - 816) ^ ((v0 - 34194) | 0x8000))) ^ v0)))();
}

uint64_t sub_1004AD44C()
{
  v1 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 != -962482035) * ((v0 ^ 0xB28F) - 33561)) ^ (v0 - 797))))();
}

uint64_t sub_1004AD54C()
{
  v2 = STACK[0x2080] + *(STACK[0x8590] + 36);
  STACK[0x5400] = v1;
  STACK[0x41A0] = v2;
  LODWORD(STACK[0x20CC]) = -371865855;
  LODWORD(STACK[0x38AC]) = -1909437741;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004AD5A4()
{
  STACK[0x10EE0] = v1;
  LODWORD(STACK[0x10ED8]) = v0 + 1022166737 * (((~(&STACK[0x10000] + 3800) & 0x981614EA) - (~(&STACK[0x10000] + 3800) | 0x981614EB)) ^ 0x2206F579) + 38502;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 46250)))(&STACK[0x10ED8]);
  LOBYTE(STACK[0x768F]) = 1;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1004AD670(uint64_t a1)
{
  v3 = *(STACK[0xE60] + (v1 - 649173215));
  v4 = v3 & 0x4A ^ 0x78;
  v5 = (v3 ^ (2 * ((v3 ^ 0x18) & (2 * ((v3 ^ 0x18) & (2 * ((v3 ^ 0x18) & (2 * ((v3 ^ 0x18) & (2 * ((v3 ^ 0x18) & (2 * v4) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4))) ^ 0x8F;
  v6 = 2115 * (((v5 ^ 0xA7A2) + 22622) ^ ((v5 ^ 0x6CFE) - 27902) ^ ((v5 ^ 0xCB99) + 13415)) - 20483;
  v7 = v6 & 0x618C ^ 0x6F1D;
  v8 = v6 ^ 0x2B92;
  v9 = (v6 ^ (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (((2 * (v7 ^ v6 & 0x4A1E)) ^ 0x1424) & (v6 ^ 0x2B12) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7))) ^ 0xF5E1;
  v10 = 31 * (((v9 ^ 0x8D93B8DE) + 1919698722) ^ ((v9 ^ 0xA50219D) - 173023645) ^ ((v9 ^ 0x87C30D2E) + 3994322)) + 9042227;
  v11 = ((BYTE2(v10) < 0x78u) << 8) | BYTE2(v10);
  v12 = *(STACK[0xE60] + (v1 - 649173212));
  v13 = (v12 | ((v12 < 0x66) << 8)) - 728564735;
  v14 = ((2 * (v13 & 0x544)) & 0x288 | 0x2000000) ^ (v13 & 0x544 | 0x1581B2A8) ^ (v13 ^ 0x3680B7EC) & 0x4A88 & ((2 * (v13 & 0x544)) | 0x2F4B6550);
  v15 = (2 * (v13 ^ 0x3680B7EC)) & 0x42492A8 ^ 0x109092A8 ^ ((2 * (v13 ^ 0x3680B7EC)) ^ 0x22020150) & (v13 ^ 0x3680B7EC);
  v16 = (4 * v14) & 0x160792A0 ^ v14 ^ ((4 * v14) ^ 0x5EDE4AA0) & v15;
  v17 = (4 * v15) & 0x97B792A8 ^ 0x81219008 ^ ((4 * v15) ^ 0x5EDE4AA0) & v15;
  v18 = (16 * v16) & 0x17B792A0 ^ v16 ^ ((16 * v16) ^ 0x12190080) & v17;
  v19 = (16 * v17) & 0x97B79280 ^ 0x84869028 ^ ((16 * v17) ^ 0x7B792A80) & v17;
  v20 = v18 ^ (v18 << 8) & 0x97B79200 ^ ((v18 << 8) ^ 0x30908800) & v19 ^ 0x14178220;
  v21 = 2 * ((v20 << 16) & 0x17B70000 ^ v20 ^ ((v20 << 16) ^ 0x12A80000) & ((v19 << 8) & 0x17B70000 ^ 0x250000 ^ ((v19 << 8) ^ 0x37920000) & v19));
  return (*(STACK[0xF18] + 8 * v2))(a1, v21, v21 ^ v13, (v11 + 1684861457), (v2 + 30317));
}

uint64_t sub_1004ADC54()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] + 1050620835;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x41D9)))(*(STACK[0x820] - 1306953403), *STACK[0xB240], *(STACK[0xB240] + 8) ^ 0xE9D5C711);
  return (*(v2 + 8 * ((114379 * (v1 > 0xDE5B8F18)) ^ (v0 + 2686))))(v3);
}

uint64_t sub_1004ADCE8()
{
  v1 = *(STACK[0x78B0] + 280);
  v2 = STACK[0x6A98];
  v3 = ((LODWORD(STACK[0x8BA4]) ^ 0xD9175968) + 652781208) ^ ((LODWORD(STACK[0x8BA4]) ^ 0x50A8AD28) - 1353231656) ^ ((v0 ^ 0x60E9) + (LODWORD(STACK[0x8BA4]) ^ 0x606A3351) - 1617577930);
  v4 = 353670337 * ((((&STACK[0x10000] + 3800) | 0xFDBE64F5) + (~(&STACK[0x10000] + 3800) | 0x2419B0A)) ^ 0x499F9CC9);
  LODWORD(STACK[0x10EE0]) = v0 - v4 + 18237;
  STACK[0x10EF0] = v1;
  STACK[0x10EE8] = v2;
  LODWORD(STACK[0x10ED8]) = v3 - v4 + 1051652780;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 + 22063)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * v0))(v6);
}

uint64_t sub_1004ADDF4()
{
  v3 = *(v1 + v2);
  v4 = STACK[0x3340];
  v5 = ((v0 - 4452) | 0xA002) ^ LODWORD(STACK[0x1FA8]) ^ 0xC638F0F1;
  STACK[0x8FE8] = v3;
  LODWORD(STACK[0x44A8]) = v4;
  LODWORD(STACK[0x704C]) = -2116087560;
  LODWORD(STACK[0x7FD8]) = 1920229740;
  LODWORD(STACK[0x4A8C]) = v5;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004ADE70@<X0>(unint64_t a1@<X8>)
{
  STACK[0x10EE0] = a1;
  LODWORD(STACK[0x10ED8]) = (v1 - 29457) ^ (155453101 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x749CA70) - 2025207180) ^ 0x616FD1BB));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 16289)))(&STACK[0x10ED8]);
  *(v2 + 352) = 0;
  return (*(v3 + 8 * (v1 - 9520)))(v4);
}

uint64_t sub_1004ADEFC()
{
  STACK[0x36F0] = STACK[0x40D0];
  STACK[0x73E8] = STACK[0x3B10];
  LODWORD(STACK[0x56B8]) = 744170662;
  return (*(STACK[0xF18] + 8 * ((13897 * (STACK[0xF10] != -1447025537)) ^ (STACK[0xF10] - 27852))))();
}

uint64_t sub_1004ADF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v2 ^ 0x9C62)))(a2);
  *(a1 + 40) = 0;
  return (*(v3 + 8 * v2))(a1);
}

uint64_t sub_1004ADF94()
{
  v1 = *(STACK[0x9418] + 16);
  STACK[0x49D0] = STACK[0x9418] + 16;
  return (*(STACK[0xF18] + 8 * (((v1 == 0) * (((v0 - 1751139256) & 0x685F9F31) - 2773)) ^ v0)))();
}

uint64_t sub_1004AE150()
{
  v3 = v1 - 522367024 + (((LODWORD(STACK[0xACEC]) ^ 0x76F4D769) - 1995757417) ^ ((LODWORD(STACK[0xACEC]) ^ 0x386B4BB) - 59159739) ^ (((((v0 - 35752) | 0x77C) - 1666738875) ^ LODWORD(STACK[0xACEC])) + ((v0 + 1887824979) & 0x8F79F4FF ^ 0x63582FC0)));
  v4 = (((v2 ^ 0xF9FD1145) + 100855483) ^ ((v2 ^ 0x5BE3C2D5) - 1541653205) ^ ((v2 ^ 0x4BCB1481) - 1271600257)) - 522367028;
  v5 = v3 < 0xF70788BB;
  v6 = v3 > v4;
  if (v4 < 0xF70788BB != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((99 * v6) ^ v0)))();
}

uint64_t sub_1004AE2B4()
{
  if (v0 < 0x848D141E != (v1 + 1791892927) < 0x848D141E)
  {
    v3 = v0 < 0x848D141E;
  }

  else
  {
    v3 = v1 + 1791892927 < v0;
  }

  return (*(STACK[0xF18] + 8 * ((2 * !v3) | (!v3 << 6) | v2)))();
}

uint64_t sub_1004AE3A4()
{
  v3 = 598422478 - (((v1 ^ (v0 + 4578) ^ 0x83721858) + 1365974244) ^ ((v1 ^ 0xDED7E625) + 214854054) ^ (((v0 + 1571093485) ^ v1) - 1883440441));
  v4 = v3 < 0x5191A42D;
  v5 = v2 - 729966332 < v3;
  if ((v2 - 729966332) < 0x5191A42D != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((46 * v5) ^ v0)))();
}

uint64_t sub_1004AE464@<X0>(int a1@<W8>)
{
  v4 = v1 < 0x83E19A35;
  if (v4 == a1 + 1 > (v2 + 2082328789))
  {
    v4 = (((v2 - 32821) | 0x8211) ^ 0x83E10CE7) + a1 < v1;
  }

  return (*(STACK[0xF18] + 8 * ((11 * (v3 & v4)) ^ v2)))();
}

uint64_t sub_1004AE618()
{
  v0 = STACK[0xF10] - 21642;
  STACK[0x7690] -= 16;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004AE644()
{
  v1 = STACK[0xF18];
  STACK[0x5FF8] = *(STACK[0xF18] + 8 * (v0 - 27955));
  return (*(v1 + 8 * (v0 - 56227 + 6614 * ((v0 - 27955) ^ 0x6B4))))();
}

uint64_t sub_1004AE688@<X0>(int a1@<W8>)
{
  STACK[0x2FA0] = *(*(v1 + 168) + 40) + (*(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFF1F71F20)) & 0x7FFFFFFFFFFFFFFFLL ^ 0xCD60E52FFB9405D6) + (*(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFEC2178E0)) & ((a1 ^ 0x5442u) + 0x7FFFFFFFFFFFA75CLL) ^ v2) + 1;
  v3 = STACK[0xF18];
  STACK[0x4920] = *(STACK[0xF18] + 8 * a1);
  return (*(v3 + 8 * (a1 ^ 0x1F06)))();
}

uint64_t sub_1004AE77C()
{
  v0 = STACK[0xF10] - 15757;
  v1 = STACK[0xF10] - 31074;
  LODWORD(STACK[0x6D04]) = STACK[0x98D4];
  LODWORD(STACK[0x2DCC]) = (((LODWORD(STACK[0xA4D8]) ^ 0x5C50A0A7) - 1548787879) ^ ((LODWORD(STACK[0xA4D8]) ^ 0x551E07EE) - 1428031470) ^ ((LODWORD(STACK[0xA4D8]) ^ 0xF2A91C9B) + (v0 ^ 0xD56AECB))) - LODWORD(STACK[0x9460]) + 586163610;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x3BC8)))();
}

uint64_t sub_1004AE834()
{
  STACK[0x5870] = 0;
  LODWORD(STACK[0x3EA0]) = -371865839;
  v4 = *(v1 + v2);
  v5 = 906386353 * (((&STACK[0x10ED8] | 0xD50760E9) + (~&STACK[0x10ED8] | 0x2AF89F16)) ^ 0xE406ADCC);
  STACK[0x10ED8] = &STACK[0x5870];
  LODWORD(STACK[0x10EE4]) = v5 ^ v4 ^ ((v4 ^ 0x586B6E27) - 1780383334) ^ ((((v3 ^ 0x23D2) - 26306) ^ 0xA0D8A0B2 ^ v4) + 1834107863) ^ ((v4 ^ 0x3D3939E1) - 256649632) ^ ((v4 ^ 0xF7FFEBEF) + 980747346) ^ 0xC2A5AA73;
  LODWORD(STACK[0x10EE0]) = v5 + v3 - 13476;
  STACK[0x10EE8] = v0;
  STACK[0x10EF0] = &STACK[0x3EA0];
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v3 ^ 0x9B5B)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * ((28 * (LODWORD(STACK[0x10EF8]) == -371865839)) ^ v3)))(v7);
}

uint64_t sub_1004AEA78()
{
  v1 = *(STACK[0x6D0] - 308144619);
  STACK[0x2750] = *(STACK[0x6D8] - 1818280658);
  LODWORD(STACK[0x904C]) = v1;
  return (*(STACK[0xF18] + 8 * (((STACK[0x6A10] != 0) * (((v0 + 1019) | 0x684) - 18326)) ^ v0)))();
}

uint64_t sub_1004AEB84()
{
  v2 = (v0 + 1769136833) ^ 0x6973F514;
  v3 = (v0 + 1769136833) & 0x968CF7CF;
  v4 = v0 - 17759;
  LODWORD(STACK[0x5FBC]) = v1;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762661292) ^ (906386353 * ((2 * ((&STACK[0x10000] + 3800) & 0x676B9618) - (&STACK[0x10000] + 3800) + 412379616) ^ 0x2995A4C4));
  STACK[0x10EE0] = 0;
  v5 = v0 + 16254;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * v5))(&STACK[0x10ED8]);
  return (*(v6 + 8 * ((42 * (*STACK[0x970] > (v2 + v3 - 65204))) ^ v4)))(v7);
}

uint64_t sub_1004AED98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = a7 - 25572;
  v9 = (*(v7 + 8 * (a7 + 5461)))(266);
  v10 = STACK[0x358];
  STACK[0x448] = v9;
  return (*(v10 + 8 * ((233 * (v9 == 0)) ^ v8)))();
}

uint64_t sub_1004AEDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = v9 - 1;
  v21 = ((*(*v17 + (*v15 & v10)) ^ (v7 + v20)) & 0x7FFFFFFF) * v11;
  v22 = (v21 ^ HIWORD(v21)) * v11;
  *(v7 + v20) = *(v18 + (v22 >> 24)) ^ *(a7 + v20) ^ *((v22 >> 24) + v16 + 2) ^ *((v22 >> 24) + v19 + 4) ^ v22 ^ (BYTE3(v22) * v12);
  return (*(v14 + 8 * (((v20 == 0) * v13) ^ v8)))();
}

uint64_t sub_1004AEE64()
{
  if (v0)
  {
    v2 = STACK[0x3790] == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  return (*(STACK[0xF18] + 8 * ((39 * ((v3 ^ ((v1 ^ 0x62) + 48)) & 1)) ^ v1)))();
}

uint64_t sub_1004AEF14()
{
  v1 = STACK[0xF18];
  STACK[0x44B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((3 * (v0 ^ 0x239D)) ^ 0x347A) + v0)))();
}

uint64_t sub_1004AEF44()
{
  v2 = v0 ^ 0x5944AE10;
  LODWORD(STACK[0x75DC]) = -371865839;
  v3 = *(STACK[0x1C58] - 0x217E172EFA1E81CLL);
  v4 = 1022166737 * (((((&STACK[0x10000] + 3800) | 0xE2D95A92) ^ 0xFFFFFFFE) - (~(&STACK[0x10000] + 3800) | 0x1D26A56D)) ^ 0xA73644FF);
  LODWORD(STACK[0x10EDC]) = v4 + 18290 + (v0 ^ 0x5944AE10);
  LODWORD(STACK[0x10EF0]) = v4 ^ v1 ^ ((v1 ^ 0x6584ABD1) - 1019230107) ^ ((v1 ^ 0x583CBFC5) - 24650639) ^ ((((((v0 ^ 0x5944AE10) - 1052029584) & 0x3EB49EFF) - 1107304139) ^ v1) + 457481291) ^ ((((((v0 ^ 0x5944AE10) - 4694) | 0x95C2) - 654130725) ^ v1) + 2142770197) ^ 0xF2A05DA2;
  STACK[0x10EE8] = v3;
  STACK[0x10EE0] = &STACK[0x75DC];
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * ((v0 ^ 0x5944AE10) + 39181)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((194 * (LODWORD(STACK[0x10ED8]) != -371865839)) ^ v2)))(v6);
}

uint64_t sub_1004AF218()
{
  v2 = STACK[0x480];
  STACK[0x528] = STACK[0x480];
  STACK[0x530] = v2;
  LODWORD(STACK[0x538]) = STACK[0x384];
  return (*(v1 + 8 * ((v0 - 1418516018) & 0x6AB77FBB)))();
}

uint64_t sub_1004AF364@<X0>(char a1@<W8>)
{
  LOBYTE(STACK[0x9107]) = a1;
  v2 = *STACK[0x2768];
  v3 = STACK[0x4578];
  v4 = ((LODWORD(STACK[0x3268]) << (7 * (v1 ^ 0x3Cu) + 32)) & 0x18C3E6DFCLL) + (LODWORD(STACK[0x3268]) ^ 0xFB7D76FFC61F36FELL);
  STACK[0x41F8] = v4 + 0x2FDAB9BFFBE7FDD8;
  v5 = v3 + 16 * v4 + 0x482890039E0C9020;
  *v5 = v2 ^ 0x981390C2FED9246;
  *(v5 + 8) = 0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1004AF540()
{
  STACK[0x8FE8] = *(STACK[0x7248] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v1;
  LODWORD(STACK[0x7FD8]) = 1685479788;
  LODWORD(STACK[0x704C]) = -2116087593;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004AF5E4()
{
  v2 = (((LODWORD(STACK[0x4864]) ^ 0x751FBF6E) - 1965014894) ^ ((LODWORD(STACK[0x4864]) ^ 0x57299940) + ((v1 + 43773) ^ 0xA8D6D524)) ^ ((LODWORD(STACK[0x4864]) ^ 0xCBE3E13F) + 874258113)) + 1786147995;
  v3 = v2 < 0x80A0AD8A;
  v4 = v2 > ((v1 + 1808176760) & 0x943977AB ^ 0x80A0BA81) + *v0;
  if (*v0 > 0x7F5F5275u != v3)
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((2028 * v4) ^ (v1 + 43773))))();
}

uint64_t sub_1004AF6D0()
{
  v1 = STACK[0xF18];
  STACK[0x5F38] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x6B71 ^ (v0 + 10188))))();
}

uint64_t sub_1004AF7F0()
{
  v2 = STACK[0x38C0];
  *(v2 + 280) = v0;
  *(v2 + 288) = 0xE9D5C495E9D5C711;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 20279)))(20) == 0;
  return (*(v3 + 8 * ((v4 * ((((v1 - 1040973158) & 0x3E0BDF9F) - 18239) ^ 0x1690)) ^ v1)))();
}

uint64_t sub_1004AF8D4@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, unsigned int a4@<W3>, unsigned int a5@<W4>, unsigned __int16 a6@<W5>, __int16 a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v23 = a3 + (*(v9 + (a9 ^ 0x4E) * v13 + 2780740 - (((((a9 ^ 0x4Eu) * v13 + 2780740) * v15) >> 32) >> 11) * a1) ^ a2) * v13;
  LOBYTE(v23) = *(STACK[0xEA0] + (((*(v9 + v23 - (((v23 * a4) >> 32) >> 1) * a1) ^ a6) * a7) & 0x1FF));
  v24 = v23 & 0x38 | 0xC1;
  *(v20 + (*(v12 + 4 * (v16 + ((a9 + 3584) ^ a5) * a8 - ((((v16 + ((a9 + 3584) ^ a5) * a8) * v17) >> 32) >> 13) * v11)) ^ v19) + v22) = v23 ^ BYTE2(v18) ^ (2 * ((v23 ^ v14) & (2 * ((v23 ^ v14) & (2 * ((v23 ^ v14) & (2 * ((v23 ^ v14) & (2 * ((v23 ^ v14) & (2 * ((v23 ^ v14) & 0xE ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v21;
  return (*(STACK[0xF18] + 8 * ((a9 == 255) | (2 * (a9 == 255)) | v10)))();
}

uint64_t sub_1004AF9B8@<X0>(int a1@<W8>)
{
  v1 = *(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFB724B0B8));
  STACK[0x1098] = (v1 & 0x7FFFFFFFFFFFFFFFLL ^ 0x719361230411ED1BLL ^ (49 * (a1 ^ 0x1DC8u) + 0x453CF5B8216E4CBBLL) & v1 ^ 0x842C9498216E1220) - ((49 * (a1 ^ 0x1DC8u) + 0x453CF5B8216E4CBBLL) & v1 ^ 0x842C9498216E1220);
  STACK[0x60B8] = &STACK[0x1098];
  STACK[0x4D88] = 0;
  LODWORD(STACK[0x43E4]) = -761127285;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1004AFB04()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 4051) ^ 0x1920) + v0)))();
}

uint64_t sub_1004AFB4C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x2A44]) = v1;
  LOBYTE(STACK[0x9197]) = 0;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1004AFC6C@<X0>(int a1@<W8>)
{
  v1 = a1 - 32082;
  v2 = (a1 + 1909348708) & 0x8E319FEB;
  LODWORD(STACK[0x10ED8]) = (a1 - 2608) ^ (1603510583 * ((2 * ((&STACK[0x10000] + 3800) & 0x5C8AA040) - (&STACK[0x10000] + 3800) + 594894778) ^ 0xB4AE6D11));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (a1 + 16406)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (v1 - 23605 + v2)))(v4);
}

uint64_t sub_1004AFD90()
{
  v2 = STACK[0x55D8];
  *(v2 - 0x10A99C80114D1317) = STACK[0x1BD4];
  v3 = STACK[0x7168];
  v4 = v0 + v3 + *(v2 - 0x10A99C80114D131FLL) - ((2 * (v3 + *(v2 - 0x10A99C80114D131FLL))) & 0x184EB2D0) - 1943585490;
  v5 = v4 & (((v0 - 4896) | 0x8221) - 35488) ^ (v4 ^ 0x68) & (v1 ^ 0x8A) ^ 8;
  *(v2 - 0x10A99C80114D142BLL) += v5 / (*(v2 - 0x10A99C80114D142BLL) - 1051086575) * (*(v2 - 0x10A99C80114D142BLL) - 1051086575) - v5;
  return (*(STACK[0xF18] + 8 * ((v3 == 0) | v0)))();
}

uint64_t sub_1004AFEBC()
{
  v5 = *(v4 + v2);
  v6 = (v1 ^ 0x63243A5) & (2 * (v1 & 0xA6BB63B6)) ^ v1 & 0xA6BB63B6;
  v7 = ((2 * ((((v3 + 6011825) & 0xFFA47EA3) + 1263923177) ^ v1)) ^ 0xDBDA4CBE) & ((((v3 + 6011825) & 0xFFA47EA3) + 1263923177) ^ v1) ^ (2 * ((((v3 + 6011825) & 0xFFA47EA3) + 1263923177) ^ v1)) & 0xEDED265E;
  v8 = v7 ^ 0x24252241;
  v9 = (v7 ^ 0x89C80418) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0xB7B4997C) & v8 ^ (4 * v8) & 0xEDED265C;
  v11 = (v10 ^ 0xA5A40040) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x48492603)) ^ 0xDED265F0) & (v10 ^ 0x48492603) ^ (16 * (v10 ^ 0x48492603)) & 0xEDED2650;
  v13 = v11 ^ 0xEDED265F ^ (v12 ^ 0xCCC02400) & (v11 << 8);
  v14 = (((LODWORD(STACK[0x6428]) ^ 0xBCE0842E) + 1126136786) ^ ((LODWORD(STACK[0x6428]) ^ 0xDACA0F48) + 624292024) ^ ((LODWORD(STACK[0x6428]) ^ 0x8FFF4C77) + 1879094153)) + 1714524362;
  v15 = 155453101 * ((((&STACK[0x10000] + 3800) | 0x6C5AA059) - ((&STACK[0x10000] + 3800) & 0x6C5AA058)) ^ 0x8A7CBB96);
  STACK[0x10ED8] = *(v0 + v2);
  LODWORD(STACK[0x10EF4]) = v14 ^ v15;
  LODWORD(STACK[0x10EE0]) = (v3 + 7732) ^ v15;
  STACK[0x10EF8] = &STACK[0xF28] ^ 0xB18B801BC34286D9;
  LODWORD(STACK[0x10EF0]) = (v1 ^ (2 * ((v13 << 16) & 0x6DED0000 ^ v13 ^ ((v13 << 16) ^ 0x265F0000) & (((v12 ^ 0x212D020F) << 8) & 0x6DED0000 ^ 0xC90000 ^ (((v12 ^ 0x212D020F) << 8) ^ 0x6D260000) & (v12 ^ 0x212D020F)))) ^ 0xB7830682) - v15;
  STACK[0x10EE8] = v5;
  v16 = STACK[0xF18];
  v17 = (*(STACK[0xF18] + 8 * (v3 + 45270)))(&STACK[0x10ED8]);
  return (*(v16 + 8 * v3))(v17);
}

uint64_t sub_1004B0178()
{
  v1 = STACK[0xF18];
  STACK[0x9820] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 - 102766023) & 0x6203BBE) - 8589) ^ v0)))();
}

uint64_t sub_1004B01C8@<X0>(unint64_t a1@<X8>)
{
  v7 = *v6;
  v8 = STACK[0xF18];
  STACK[0x1788] = *(STACK[0xF18] + 8 * v2);
  STACK[0x3428] = v4;
  STACK[0x21E8] = a1;
  STACK[0x1460] = v3;
  STACK[0x2030] = v5;
  v9 = STACK[0x7690];
  v10 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x31B0] = v10;
  STACK[0x7CC0] = (v10 + 16);
  STACK[0xBA80] = (v10 + 32);
  STACK[0xBA88] = (v10 + 92);
  STACK[0xBA90] = (v10 + 112);
  STACK[0x7690] = ((v1 - 882229592) & 0x34958F7B) + ((v1 + 1686868560) & 0x9B73BFDFLL) + v9 - 39426;
  LODWORD(STACK[0x12EC]) = v7;
  LODWORD(STACK[0x5754]) = -371865839;
  if (v4)
  {
    v11 = a1 == 0;
  }

  else
  {
    v11 = 1;
  }

  v13 = v11 || v5 == 0;
  LODWORD(STACK[0x7FB4]) = 0;
  STACK[0x6448] = 0;
  return (*(v8 + 8 * (((4 * v13) | (32 * v13)) ^ v1)))();
}

uint64_t sub_1004B02CC()
{
  v0 = 137 * (STACK[0xF10] ^ 0x8B3E);
  v1 = STACK[0xF10] + 7563;
  v2 = STACK[0x7804];
  v3 = LODWORD(STACK[0x2C9C]) + LODWORD(STACK[0x4574]);
  LODWORD(STACK[0x871C]) = v3 + LODWORD(STACK[0x7804]) - 1485779551;
  v4 = v3 + v2 + 2000958191;
  v5 = (((LODWORD(STACK[0x8634]) ^ 0xD8AA7E88) + 659915128) ^ ((LODWORD(STACK[0x8634]) ^ 0x4C3074D1) - 1278244049) ^ ((LODWORD(STACK[0x8634]) ^ (v0 + 2102381211)) - 2102381896)) - 966423147;
  v6 = v4 < 0xDC8FC684;
  v7 = v4 > v5;
  if (v6 != v5 < 0xDC8FC684)
  {
    v7 = v6;
  }

  v8 = !v7;
  if (v3 == 1699451797)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  return (*(STACK[0xF18] + 8 * (((4 * v9) | (16 * v9)) ^ v1)))();
}

uint64_t sub_1004B0574@<X0>(unint64_t a1@<X8>)
{
  v6 = STACK[0x5F50];
  v7 = 353670337 * ((((&STACK[0x10000] + 3800) | 0x3C6CA2B2) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xC3935D48)) ^ 0x884D5A8F);
  STACK[0x10F08] = &STACK[0xF28] ^ 0x29DCF992F3801DC7;
  STACK[0x10F00] = v1;
  LODWORD(STACK[0x10ED8]) = ((v4 ^ 0x1CEE7667) - 336205314 + (((v5 + 29024) ^ 0x39DC67F5) & v3)) ^ v7;
  STACK[0x10EF0] = v2;
  LODWORD(STACK[0x10EFC]) = v7 + v5 + 1478440832;
  STACK[0x10EE8] = v6;
  STACK[0x10EE0] = a1;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * (v5 + 45449)))(&STACK[0x10ED8]);
  return (*(v8 + 8 * v5))(v9);
}

uint64_t sub_1004B0668@<X0>(int a1@<W8>)
{
  *(v6 + 1084) = a1;
  *(v6 + 1080) = v3;
  *(v6 + 1076) = v2;
  *(v6 + 1064) = v5;
  v7 = v2 + 61414363 < v4 + 85057058;
  if (v4 > (v1 ^ 0xFAEE1090) != v2 + 61414363 < ((v1 - 840200802) & 0x3214FF96u) + 85008288)
  {
    v7 = v4 > (v1 ^ 0xFAEE1090);
  }

  return (*(STACK[0xF18] + 8 * ((v7 | (2 * v7)) ^ v1)))();
}

uint64_t sub_1004B07F4@<X0>(int a1@<W8>)
{
  *(v1 + 40) = 0;
  *(v1 + 32) = 0;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1004B0990@<X0>(unsigned int a1@<W8>)
{
  v3 = a1 | ((a1 < 3 * (v1 ^ 0x531u) + 203088835) << 32);
  *(v2 + 1904) = v3 + 0x2DA103B1CB3FBD4FLL;
  v3 += 1357352777;
  v4 = (v1 ^ 0x285Bu ^ *STACK[0x5CC8] ^ 0x7F7CD9DFFDE55EFCLL) + ((2 * *STACK[0x5CC8]) & 0x1FBCABBFELL) - 0x7F7CD9DFA0E25FBCLL;
  v5 = v3 < 0x5D02FE43;
  v6 = v3 > v4;
  if (v5 != v4 < 0x5D02FE43)
  {
    v6 = v5;
  }

  if (v6)
  {
    v7 = 371891407;
  }

  else
  {
    v7 = *(v2 + 1900);
  }

  *(v2 + 1916) = v7;
  v8 = v7 == -371865839;
  *(v2 + 1923) = v8;
  return (*(STACK[0xF18] + 8 * ((1302 * v8) ^ v1)))();
}

uint64_t sub_1004B0B38()
{
  v2 = STACK[0x3B98];
  v3 = STACK[0x1FA8];
  *v2 = STACK[0x6600];
  *(v2 + 8) = v3;
  *(v2 + 16) = STACK[0x3C48];
  *(v2 + 24) = STACK[0x545C];
  *(v2 + 32) = *(STACK[0x6ED8] - 0x7E666516A39B34A6);
  *(v2 + 40) = v1;
  STACK[0x3060] = v2;
  STACK[0x6A58] = STACK[0x2668];
  LODWORD(STACK[0x575C]) = 0;
  LODWORD(STACK[0x4E3C]) = 1336320515;
  return (*(STACK[0xF18] + 8 * ((v0 - 1497667578) | 0x9287)))();
}

uint64_t sub_1004B0CD0(uint64_t a1)
{
  v1 = STACK[0xF18];
  STACK[0x1968] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 ^ 0x3B0F ^ (a1 - 1834889444) & 0x6D5E30FF)))();
}

uint64_t sub_1004B0D4C()
{
  v3 = (((v1 ^ 0xCC6BA48055DE6B76) + 0x33945B7FAA21948ALL) ^ ((v1 ^ 0xF180056801832DCBLL) + 0xE7FFA97FE7CD235) ^ ((v1 ^ 0x346A98E47BB0CC1DLL ^ (v2 - 31430)) + ((v2 - 18032) ^ 0xCB95671B844F6639))) + 0x981390CDC6E9CB6;
  v4 = (((*v0 ^ 0xF5F3AB5221DD63C9) + 0xA0C54ADDE229C37) ^ ((*v0 ^ 0xFCF6518CB856570DLL) + 0x309AE7347A9A8F3) ^ ((*v0 ^ 0x84C3D2B666A682) - 0x84C3D2B666A682)) + 0x981390CDC6E9CB6;
  v5 = (v4 < 0xAC810A70) ^ (v3 < 0xAC810A70);
  v6 = v4 < v3;
  if (v5)
  {
    v7 = v3 < 0xAC810A70;
  }

  else
  {
    v7 = v6;
  }

  return (*(STACK[0xF18] + 8 * ((14090 * v7) ^ v2)))();
}

uint64_t sub_1004B1028()
{
  v1 = STACK[0xF10] - 30246;
  LODWORD(STACK[0x2E2C]) = v0;
  v2 = STACK[0x9708];
  v3 = STACK[0x6660];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v2;
  LODWORD(STACK[0x655C]) = v3;
  LODWORD(STACK[0x884C]) = -1954420979;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1004B12D4()
{
  LODWORD(STACK[0x10ED8]) = (v0 - 1762644336) ^ (906386353 * ((~(&STACK[0x10000] + 3800) & 0x657203D2 | (&STACK[0x10000] + 3800) & 0x9A8DFC28) ^ 0x5473CEF6));
  STACK[0x10EE0] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 33210)))(&STACK[0x10ED8]);
  v4 = *STACK[0x970] != (v0 ^ 0xFFFF3C3A) + v0 + 16956 || *STACK[0x940] == 0;
  return (*(v1 + 8 * ((506 * v4) ^ v0)))(v2);
}

uint64_t sub_1004B1400()
{
  v1 = STACK[0xF18];
  STACK[0x90E8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x5B8A)))();
}

uint64_t sub_1004B14E8()
{
  STACK[0x10EE0] = STACK[0x7210];
  LODWORD(STACK[0x10ED8]) = v0 + 193924789 * ((2 * ((&STACK[0x10000] + 3800) & 0x7141B978) - (&STACK[0x10000] + 3800) - 1900132730) ^ 0x380574E0) - 10032;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xFED5)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1004B1570()
{
  v1 = STACK[0x7810];
  *v1 ^= 0xAu;
  v1[1] ^= 0xE1u;
  v1[2] ^= 0xC8u;
  v1[3] ^= 0x33u;
  v1[4] ^= (v0 ^ 0x7C) + 40;
  v1[5] ^= 0x5Du;
  v1[6] ^= 0x19u;
  v1[7] ^= 0x36u;
  v1[8] ^= 0xFDu;
  v1[9] ^= 0x27u;
  v1[10] ^= 0x5Fu;
  v1[11] ^= 0x40u;
  v1[12] ^= 3u;
  v1[13] ^= 0x58u;
  v1[14] ^= 0xB3u;
  v1[15] ^= 0x52u;
  v2 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x1C6C)))();
}

uint64_t sub_1004B16C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (v8 == (a8 ^ 0xE9D5A4D7))
  {
    v9 = LODWORD(STACK[0x1ABC]);
  }

  else
  {
    v9 = v8;
  }

  return (*(STACK[0xF18] + 8 * a8))(a1, a2, v9);
}

uint64_t sub_1004B1730()
{
  v1 = v0 - 8239;
  v2 = STACK[0x828];
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 6564)))(*(STACK[0x828] - 250462103));
  *(STACK[0x850] - 914251479) <<= 11 * (v1 ^ 0xE8) + 87;
  *(v2 - 250462103) = STACK[0x83F8];
  return (*(v3 + 8 * v1))();
}

uint64_t sub_1004B17A8@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v6 = (a2 + (((v3 ^ 0x4BC4466C ^ v2 ^ 0x9ABC) - 1271166714) ^ ((v3 ^ 0xAC2B1C6A) + 1406460822) ^ ((v3 ^ 0xE3A26BA ^ ((v2 - 42992) | 0x8901)) - 238726529)) - 371865840);
  v7 = *v6;
  LODWORD(v6) = 1864610357 * ((v6 ^ *(*STACK[0xE50] + (*v5 & 0x72D7ACF8))) & 0x7FFFFFFF);
  v8 = 1864610357 * (v6 ^ (v6 >> 16));
  LODWORD(v8) = *(v4 + (v8 >> 24)) ^ v7 ^ *((v8 >> 24) + STACK[0x908] + 6) ^ *((v8 >> 24) + a1 + 5) ^ v8 ^ (-53 * (v8 >> 24));
  return (*(STACK[0xF18] + 8 * ((28 * (((((v8 ^ 0xED) + 20) ^ ((v8 ^ 0x65) - 100)) ^ ((v8 ^ 0x88) + 119)) == -1)) ^ v2)))();
}

uint64_t sub_1004B18F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v10 = ((2 * v9) & 0x1FF67FDDELL) - 0x622C8000B281B0C3 + (((v6 + 1192) + 0x7B7EECFDFFB373B4) ^ v9);
  v11 = (v10 ^ 0x64F29080B8AD2181) & (2 * (v10 & 0x2B2CDB1D4)) ^ v10 & 0x2B2CDB1D4;
  v12 = ((2 * (v10 ^ 0x64F29081993F6009)) ^ 0x4A0040657E5A3BALL) & (v10 ^ 0x64F29081993F6009) ^ (2 * (v10 ^ 0x64F29081993F6009)) & 0x824703832BF2D1DCLL;
  v13 = v12 ^ 0x8241008128125045;
  v14 = (v12 ^ 0x203608190) & (4 * v11) ^ v11;
  v15 = ((4 * v13) ^ 0x97C0E0CAFCB4774) & v13 ^ (4 * v13) & 0x825F03832BF2D1DCLL;
  v16 = (v15 ^ 0x5C02002BC24140) & (16 * v14) ^ v14;
  v17 = ((16 * (v15 ^ 0x8203018300309089)) ^ 0x25F03832BF2D1DD0) & (v15 ^ 0x8203018300309089) ^ (16 * (v15 ^ 0x8203018300309089)) & 0x825F03832BF2D1D0;
  v18 = (v17 ^ 0x5000022B201100) & (v16 << 8) ^ v16;
  v19 = (((v17 ^ 0x820F038100D2C00DLL) << 8) ^ 0x5F03832BF2D1DD00) & (v17 ^ 0x820F038100D2C00DLL) ^ ((v17 ^ 0x820F038100D2C00DLL) << 8) & 0x825F03832BF2D100;
  v20 = v18 ^ 0x825F03832BF2D1DDLL ^ (v19 ^ 0x203030322D00000) & (v18 << 16);
  v21 = 1112314453 * ((~&STACK[0x10ED8] & 0xA80E8AB3D980E9A2 | &STACK[0x10ED8] & 0x57F1754C267F1658) ^ 0x5402220836D6C37BLL);
  LODWORD(STACK[0x10EE8]) = (v7 ^ 0xC1E7A734) + v21;
  LODWORD(STACK[0x10F10]) = v21 + 1079372422;
  STACK[0x10F08] = v4;
  STACK[0x10F00] = a4;
  LODWORD(STACK[0x10F14]) = (v6 + 269671060) ^ v21;
  STACK[0x10EE0] = v8;
  STACK[0x10ED8] = v21 + (v5 ^ 0xFF7FF7FFB99DEEF3) + ((2 * v5) & 0x1733BDDE6) + 0x30BB79DFE7FFD7E0;
  STACK[0x10EF0] = (v10 ^ (2 * ((v20 << 32) & 0x25F038300000000 ^ v20 ^ ((v20 << 32) ^ 0x2BF2D1DD00000000) & (((v19 ^ 0x805C0080092200DDLL) << 16) & 0x25F038300000000 ^ 0x5C000100000000 ^ (((v19 ^ 0x805C0080092200DDLL) << 16) ^ 0x3832BF200000000) & (v19 ^ 0x805C0080092200DDLL)))) ^ 0x84991099DE7A2771) + v21;
  STACK[0x10EF8] = &STACK[0xF28] ^ 0x15B381C2A8EA5294;
  v22 = STACK[0xF18];
  v23 = (*(STACK[0xF18] + 8 * (v6 + 17789)))(&STACK[0x10ED8]);
  return (*(v22 + 8 * v6))(v23);
}

uint64_t sub_1004B1CAC@<X0>(int a1@<W8>)
{
  v2 = a1 - 2333;
  v3 = a1 - 32541;
  LODWORD(STACK[0x200C]) = v1;
  v4 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v3);
  return (*(v4 + 8 * (v2 ^ 0x9AD1 ^ v3)))();
}

uint64_t sub_1004B1FA8()
{
  v1 = STACK[0x2D04];
  STACK[0x7690] -= 3632;
  LODWORD(STACK[0x771C]) = v1;
  return (*(STACK[0xF18] + 8 * (((((v1 == -371865839) ^ (v0 - 108)) & 1) * (1601 * (v0 ^ 0x3114) - 23965)) ^ v0)))();
}

uint64_t sub_1004B2020()
{
  v1 = STACK[0x7870];
  v2 = (8 * (((*(v1 + 4) ^ 0x9B0DF4AC) + ((v0 + 4303) ^ 0x1A543592)) ^ *(v1 + 4) ^ ((*(v1 + 4) ^ 0x12C18F8F) + 328744577) ^ ((*(v1 + 4) ^ 0x995C8AE) + 147618210) ^ ((*(v1 + 4) ^ 0x1EFFFD7D) + 530992243))) ^ 0xF5327780;
  LODWORD(STACK[0xB020]) = v2;
  v3 = (((LODWORD(STACK[0x7394]) ^ 0xE753D02) - 242564354) ^ ((LODWORD(STACK[0x7394]) ^ 0x64CE7283) - 1691251331) ^ ((LODWORD(STACK[0x7394]) ^ 0x836E8890) + 2089908080)) - 1310939812;
  v4 = (v3 < 0xC806DE4B) ^ (v2 > 0x37F921B4);
  v5 = v3 < v2 - 939073973;
  if (v4)
  {
    v5 = v2 > 0x37F921B4;
  }

  return (*(STACK[0xF18] + 8 * ((!v5 | (8 * !v5)) ^ v0)))();
}

uint64_t sub_1004B21C0()
{
  v2 = ((v1 ^ 0xC2ACD06D) + v0 + 1028832243) ^ ((v1 ^ 0x8814E5BC) + 2011896388) ^ ((v1 ^ 0xA36DFD88 ^ (163 * (v0 ^ 0x73B8))) + 1553075520);
  v3 = LODWORD(STACK[0x3908]) + 1317331689;
  v2 += 945465846;
  v4 = (v3 < 0x4E84E2E5) ^ (v2 < 0x4E84E2E5);
  v5 = v3 > v2;
  if (v4)
  {
    v5 = v3 < 0x4E84E2E5;
  }

  return (*(STACK[0xF18] + 8 * ((7 * v5) | v0)))();
}

uint64_t sub_1004B24A8()
{
  v2 = ((((v1 + 2141716016) & 0x8057FF0B) + (LODWORD(STACK[0x60D4]) ^ 0x10923C5) - 17405903) ^ ((LODWORD(STACK[0x60D4]) ^ 0xB61629DD) + 1240061475) ^ ((LODWORD(STACK[0x60D4]) ^ 0x5ECACD09) - 1590349065)) + 460657251;
  v3 = (v2 ^ 0xCE64362F) & (2 * (v2 & 0xCE60B4AF)) ^ v2 & 0xCE60B4AF;
  v4 = ((2 * (v2 ^ 0x5AE5772F)) ^ 0x290B8700) & (v2 ^ 0x5AE5772F) ^ (2 * (v2 ^ 0x5AE5772F)) & 0x9485C380;
  v5 = v4 ^ 0x94844080;
  v6 = (v4 ^ 0x18300) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0x52170E00) & v5 ^ (4 * v5) & 0x9485C380;
  v8 = (v7 ^ 0x10050200) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x8480C180)) ^ 0x485C3800) & (v7 ^ 0x8480C180) ^ (16 * (v7 ^ 0x8480C180)) & 0x9485C380;
  v10 = v8 ^ 0x9485C380 ^ (v9 ^ 0x40000) & (v8 << 8);
  LODWORD(STACK[0x60D4]) = v2 ^ (2 * ((v10 << 16) & 0x14850000 ^ v10 ^ ((v10 << 16) ^ 0x43800000) & (((v9 ^ 0x9481C380) << 8) & 0x14850000 ^ 0x10040000 ^ (((v9 ^ 0x9481C380) << 8) ^ 0x5C30000) & (v9 ^ 0x9481C380)))) ^ 0xFBEF4BE;
  LOWORD(STACK[0x10EE0]) = 23473 * ((((&STACK[0x10000] + 3800) | 0x9103) - ((&STACK[0x10000] + 3800) | 0x6EFC) + 28412) ^ 0x5C27) + 18076;
  LODWORD(STACK[0x10ED8]) = (v1 - 17321) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0xB6EB9103) - ((&STACK[0x10000] + 3800) | 0x49146EFC) + 1226075900) ^ 0x87EA5C27));
  STACK[0x10EE8] = v0;
  v11 = STACK[0xF18];
  v12 = (*(STACK[0xF18] + 8 * (v1 ^ 0xBC7F)))(&STACK[0x10ED8]);
  return (*(v11 + 8 * v1))(v12);
}

uint64_t sub_1004B2868()
{
  v2 = 3 * (v1 ^ 0x507Eu);
  v3 = *(v0 + 36);
  LODWORD(STACK[0xB864]) = v3;
  v4 = 48 * ((v3 ^ 0xFBFB9F7AFBFBFFFLL) + ((v3 << ((9 * (v1 ^ 0x14)) ^ 0x1Au)) & (v2 ^ 0x15F7FF4C5))) - 0x30CB3993CA785F57;
  v5 = (2 * (v4 & 0xD6845F80)) & 0x81002F00 ^ v4 & 0xD6845F80 ^ ((2 * (v4 & 0xD6845F80)) | 2) & (v4 ^ 0x55F57066);
  v6 = (2 * (v4 ^ 0x55F57066)) & 0x83712FE0 ^ 0x81112021 ^ ((2 * (v4 ^ 0x55F57066)) ^ 0x6E25FC2) & (v4 ^ 0x55F57066);
  v7 = (4 * v5) & 0x82312E00 ^ v5 ^ ((4 * v5) | 4) & v6;
  v8 = (4 * v6) & 0x83712FE0 ^ 0x82310061 ^ ((4 * v6) ^ 0xDC4BF84) & v6;
  v9 = (16 * v7) & 0x83712FE0 ^ v7 ^ ((16 * v7) ^ 0x10) & v8;
  v10 = (16 * v8) & 0x83712FC0 ^ 0x806101E1 ^ ((16 * v8) ^ 0x3712FE10) & v8;
  v11 = (v9 << 8) & 0x83712F00 ^ v9 ^ ((v9 << 8) ^ 0x100) & v10;
  v12 = STACK[0xF18];
  v13 = (*(STACK[0xF18] + 8 * (v1 ^ 0xB48F)))(((48 * ((v3 ^ 0xAFBFBFFF) + ((v3 << ((9 * (v1 ^ 0x14)) ^ 0x1A)) & (v2 ^ 0x5F7FF4C5))) + 898080937) ^ (2 * ((v11 << 16) & 0x3710000 ^ v11 ^ ((v11 << 16) ^ 0x1010000) & ((v10 << 8) & 0x3712100 ^ 0x2500EE1 ^ ((v10 << 8) ^ 0x712FE100) & v10)))) & 0xFFFFFFFE ^ 0xD4865D84);
  STACK[0x39D8] = v13;
  return (*(v12 + 8 * ((50 * (v13 == 0)) ^ v1)))();
}

uint64_t sub_1004B2B6C()
{
  STACK[0x7548] = *STACK[0x2BE8];
  STACK[0x77B0] = &STACK[0x7458];
  LODWORD(STACK[0x648C]) = 1682260710;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004B2C00()
{
  v2 = v1 & 0x96EF5ECF;
  LODWORD(STACK[0x10EDC]) = ((v1 & 0x96EF5ECF) + 5012) ^ (1012831759 * ((((&STACK[0x10000] + 3800) | 0xA7C6400A) - ((&STACK[0x10000] + 3800) & 0xA7C64008)) ^ 0xB7555680));
  STACK[0x10EE0] = v0;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 & 0x96EF5ECF ^ 0x9381)))(&STACK[0x10ED8]);
  *(STACK[0x78B0] + 136) = 0;
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_1004B2C9C()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 34081;
  LODWORD(STACK[0xA5A4]) = (2779 * (STACK[0xF10] ^ 0x8B2A) - 47245) & LODWORD(STACK[0x98D4]) ^ 0xDD17D5D2;
  return (*(STACK[0xF18] + 8 * ((10311 * (v1 == -898948582)) ^ (v0 - 29445))))();
}

uint64_t sub_1004B2DCC()
{
  STACK[0x81A8] = *v2;
  STACK[0x97E8] = v0;
  LODWORD(STACK[0x6974]) = 103711540;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1004B2E10()
{
  v2 = 31 * (STACK[0xF10] ^ 0x8B06);
  v3 = STACK[0xF10] + 2441;
  LODWORD(STACK[0x5EA4]) = v1;
  return (*(STACK[0xF18] + 8 * (((v2 - 1467) * (v1 == v0)) ^ v3)))();
}

uint64_t sub_1004B2FB8()
{
  STACK[0x9EA0] = (((v1 - 437252235) - 100147259) & (2 * v0)) + (v0 ^ 0xDFB9DBE56FFBFF3ELL) + 0x63E7EEDFFFF653DCLL;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 + 2467)))();
}

uint64_t sub_1004B30A4@<X0>(int a1@<W8>)
{
  v1 = a1 + 13;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 + 36788)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1004B32A4()
{
  v1 = (STACK[0xF10] - 738759522) & 0x2C087F7F;
  v2 = STACK[0xF10] - 14719;
  v3 = STACK[0xF10] + 10026;
  STACK[0x6418] = v0;
  return (*(STACK[0xF18] + 8 * (((v1 + (v2 ^ 0xFFFFD909)) * (v0 == 0)) ^ v3)))();
}

uint64_t sub_1004B3350@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v23 = v12;
  v25 = v13 & 0x23C6AB26 ^ 0xFEBB7DDB ^ (a2 ^ 0xC145D2A5) & (v13 ^ a5);
  v26 = *(v15 + 4 * (*(v9 + v14) - 46));
  v27 = *(v10 + 4 * v14) + (((a9 ^ v16) - 105316550) ^ ((a9 ^ 0x7012DC4B) - 1880284235) ^ ((a9 ^ 0x6B295AF1) - 1797872369)) + ((v25 - ((2 * v25) & 0x3AF90CF8) + a5) ^ v23) + 738224531 + (((v26 ^ 0xA77BB45C) + 1485065124) ^ ((v26 ^ 0x3CC590AF) - 1019580591) ^ ((v26 ^ 0x726BE3E2) - 1919673314));
  v28 = (v27 ^ 0x776E18DD) & (2 * (v27 & 0x784E9ADD)) ^ v27 & 0x784E9ADD;
  v29 = ((2 * (v27 ^ 0x677B2D55)) ^ 0x3E6B6F10) & (v27 ^ 0x677B2D55) ^ (2 * (v27 ^ 0x677B2D55)) & v18;
  v30 = v29 ^ 0x1149088;
  v31 = (v29 ^ 0x2202700) & (4 * v28) ^ v28;
  v32 = ((4 * v30) ^ 0x7CD6DE20) & v30 ^ (4 * v30) & v18;
  v33 = (v32 ^ 0x1C149600) & (16 * v31) ^ v31;
  v34 = ((16 * (v32 ^ 0x3212188)) ^ 0xF35B7880) & (v32 ^ 0x3212188) ^ (16 * (v32 ^ 0x3212188)) & 0x1F35B780;
  v35 = v33 ^ v18 ^ (v34 ^ 0x13113000) & (v33 << 8);
  v36 = ((v35 << 16) ^ 0x37880000) & (((v34 ^ 0xC248708) << 8) & a6 ^ 0xA000000 ^ (((v34 ^ 0xC248708) << 8) ^ 0x35B70000) & (v34 ^ 0xC248708));
  v37 = (((a2 ^ 0x8830101D) + 2010116067) ^ ((a2 ^ 0xB9243C66) + 1188807578) ^ ((a2 ^ 0x2C68AA07) - 745056775)) + 1435946971 + (((v27 ^ (2 * ((v35 << 16) & a6 ^ v35 ^ v36)) ^ 0x6825F5CD) >> (94 - *(v11 + v14))) | ((v27 ^ (2 * ((v35 << 16) & a6 ^ v35 ^ v36)) ^ 0x6825F5CD) << (*(v11 + v14) - 94)));
  return (*(STACK[0xF18] + 8 * (((a1 > 0x3F) * v22) ^ a3)))(a1 + 1, v37 ^ ((v37 ^ 0x3C056A44) - 69149467) ^ ((v37 ^ a4) + a7) ^ ((v37 ^ a8) + v17) ^ ((v37 ^ v19) + v20) ^ v21);
}

uint64_t sub_1004B3728@<X0>(int a1@<W8>)
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
  v11 = v1 - 0x43D8CBFA0CEB42D4;
  v12 = v10 ^ v9 ^ (1692773664 * (v1 - 216744660)) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v10 ^ v9) & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
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
  v21 = (v1 - 0x43D8CBFA0CEB427CLL);
  for (i = 13; i > 2; --i)
  {
    v23 = 16777619 * ((i - 2 + v12) ^ v12) % (i - 2);
    v24 = *(v11 + 8 * v23) ^ *v21;
    *v21 = v24;
    v25 = *(v11 + 8 * v23) ^ v24;
    *(v11 + 8 * v23) = v25;
    *v21-- ^= v25;
  }

  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1004B3968@<X0>(int a1@<W8>)
{
  v2 = a1 ^ 0x4642;
  v3 = a1 ^ 0xA14u;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (a1 ^ 0xE741)))(v1);
  STACK[0x2978] = 0;
  STACK[0x7690] = v3 + STACK[0x7690] - 10300;
  return (*(v4 + 8 * v2))(v5);
}

uint64_t sub_1004B39DC()
{
  LOBYTE(STACK[0x1B27]) = v1;
  v2 = 2 * (v1 & 0x3F) + (v0 ^ 0x3754 ^ v1 ^ 0x7E7D6150);
  v3 = (((LODWORD(STACK[0x45C4]) ^ 0xD3BD5F63) + 742563997) ^ ((LODWORD(STACK[0x45C4]) ^ 0xDBACD202) + 609431038) ^ ((LODWORD(STACK[0x45C4]) ^ (v0 - 507265227)) + 507229584)) - 1732486039;
  v4 = v3 < 0xAEE69558;
  v5 = v3 > v2 + 812169241;
  if (v2 < 0x7E7DDD3F != v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((v0 - 1994) | (8 * !v6))))();
}

uint64_t sub_1004B3B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 30181;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x54C0];
  STACK[0x5D28] = &STACK[0x4F38];
  LODWORD(STACK[0x4704]) = -1909351481;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_1004B3B9C()
{
  v6 = v1 < v2;
  *(STACK[0xE00] + (v5 - 182115138)) = 121;
  v7 = ((3 * (v0 ^ 0x9F1A)) ^ 0x387716F2) + v5;
  v8 = v6 ^ (v7 < v3);
  v9 = v7 < v1;
  if (!v8)
  {
    v6 = v9;
  }

  return (*(STACK[0xF18] + 8 * ((v6 * v4) ^ v0)))();
}

uint64_t sub_1004B3CD0@<X0>(unsigned int a1@<W8>)
{
  v5 = a1 < v1;
  *(*(v3 + 16) + 8 * (v2 - 665987821)) = 0x981390C2FED9246;
  if (v5 == v2 - 1948041842 < (v4 - 1282062184))
  {
    v5 = v2 - 1948041842 < a1;
  }

  return (*(STACK[0xF18] + 8 * ((16352 * !v5) ^ v4)))();
}

uint64_t sub_1004B3E18()
{
  v1 = STACK[0x4A70];
  STACK[0x9B48] = STACK[0x4A70] + 20;
  STACK[0x35B0] = v1;
  v2 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * (v0 - 23476));
  return (*(v2 + 8 * (((v0 - 23476) ^ 0xC55) + v0 - 23476)))();
}

uint64_t sub_1004B3E8C()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16238)))(v0);
  return (*(v2 + 8 * (v1 - 14914)))(v3);
}

uint64_t sub_1004B3EBC@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v9 = (v8 + a1 + v2);
  *v9 = a2;
  v9[1] = a2;
  return (*(STACK[0xF18] + 8 * (((a1 + v6 + v5 == v4) * v7) ^ v3)))();
}

uint64_t sub_1004B3F90()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 2553;
  STACK[0x9D48] = &STACK[0x42A8];
  if (STACK[0x2920])
  {
    v2 = LODWORD(STACK[0x49CC]) == -371865839;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  return (*(STACK[0xF18] + 8 * ((v3 * (v0 ^ 0x8B28)) ^ v1)))();
}

uint64_t sub_1004B3FF0()
{
  v0 = STACK[0xF10] - 30507;
  STACK[0x5658] = STACK[0x75D0];
  LODWORD(STACK[0x2564]) = 953353691;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004B40B4()
{
  v0 = STACK[0xF10] - 15751;
  v1 = STACK[0xB26F];
  LOBYTE(STACK[0xB26F]) += STACK[0xF10] - 77 + 19;
  return (*(STACK[0xF18] + 8 * ((100 * ((v1 & 0xFE) != 36)) ^ v0)))();
}

uint64_t sub_1004B4108()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xC132)))(STACK[0x1C48]);
  return (*(v1 + 8 * ((v0 ^ 0x80A0) - 29519)))(v2);
}

uint64_t sub_1004B4190()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 12451;
  v2 = *STACK[0x4288];
  LODWORD(STACK[0x10ED8]) = STACK[0xF10] - 193924789 * ((((&STACK[0x10000] + 3800) | 0x983004D6) - ((&STACK[0x10000] + 3800) & 0x983004D0)) ^ 0x2E8B36B0) + 60349492;
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 16334)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_1004B42B0()
{
  v0 = STACK[0xF10] - 22715;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))(STACK[0x1560]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1004B42FC()
{
  v1 = STACK[0xF18];
  STACK[0x2378] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0xFC91 ^ (v0 - 532841215) & 0x1FC2FFFB)))();
}

uint64_t sub_1004B4348()
{
  v0 = 43 * (STACK[0xF10] ^ 0x8B91);
  v1 = STACK[0xF10] - 26354;
  v2 = LODWORD(STACK[0x680C]) - 7306;
  LODWORD(STACK[0xED0]) = v0;
  LODWORD(STACK[0x2428]) = v2 + v0;
  STACK[0x2058] = STACK[0x2C78];
  LODWORD(STACK[0x44B4]) = -371865840;
  LODWORD(STACK[0x2CE8]) = -764789413;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1004B440C@<X0>(unsigned int a1@<W8>)
{
  v1 = STACK[0x186C];
  STACK[0x8B38] = STACK[0x53C8];
  LODWORD(STACK[0x3BA4]) = -16882525;
  LODWORD(STACK[0x5A14]) = v1;
  LODWORD(STACK[0x8F84]) = -2142255670;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1004B497C(uint64_t a1)
{
  *a1 = STACK[0xA510];
  *(a1 + 4) = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  v4 = STACK[0x6360];
  *(a1 + 16) = *(STACK[0x6360] + 24);
  *(v4 + 24) = a1;
  *(v4 + 20) += v1 ^ 0x4D11;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1004B4B28@<X0>(int a1@<W8>)
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4482)))((v1 + 210792913) & 0xF36FAFFC ^ 0x11433CF8 ^ (16 * (a1 - ((2 * a1) & 0x2287262) + ((v1 + 895094181) & 0xCAA5EF7B ^ 0x114B269)) - 528));
  STACK[0x4578] = v3;
  return (*(v2 + 8 * ((87 * (v3 == 0)) ^ v1)))();
}

uint64_t sub_1004B4C90@<X0>(int a1@<W8>)
{
  v2 = a1 - 27162;
  STACK[0x10EE0] = v1;
  LODWORD(STACK[0x10ED8]) = a1 + 1022166737 * ((((&STACK[0x10000] + 3800) | 0x689DF901) + (~(&STACK[0x10000] + 3800) | 0x976206FE)) ^ 0xD28D1892) + 8585;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (a1 ^ 0x4033)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_1004B4D68@<X0>(char a1@<W8>)
{
  LOBYTE(STACK[0x63A7]) = a1;
  LODWORD(STACK[0x8074]) = v2;
  v3 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v3 + 8 * (v1 - 31095 + ((v1 - 3104) | 0x8214))))();
}

uint64_t sub_1004B4E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = v5 - 32417;
  *a5 += (v5 - 1260263158) & 0x4B1DEBBE ^ 0x6005;
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v5 + 155453101 * ((((&STACK[0x10000] + 3800) | 0x7810F466) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x87EF0B98)) ^ 0x9E36EFA9) + 296753103;
  v7 = v5 ^ 0x41F1;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * v7))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v8 + 8 * v6);
  return (*(v8 + 8 * (v6 ^ 0x1AF5)))(v9);
}

uint64_t sub_1004B4EDC()
{
  v0 = (STACK[0xF10] - 1545785168) & 0x5C22FC9F;
  v1 = STACK[0xF10] - 34128;
  LODWORD(STACK[0xA070]) = STACK[0x98D4];
  v2 = *(STACK[0x80C8] + 32) + 1764548174;
  v3 = (v2 ^ 0x14830128) & (2 * (v2 & 0x96D321AD)) ^ v2 & 0x96D321AD;
  v4 = (v0 ^ 0x4FA0FD85 ^ (2 * (v2 ^ 0x3103032A))) & (v2 ^ 0x3103032A) ^ (2 * (v2 ^ 0x3103032A)) & 0xA7D02286;
  v5 = v4 ^ 0xA0502281;
  v6 = (v4 ^ 0x7800004) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0x9F408A1C) & v5 ^ (4 * v5) & 0xA7D02284;
  v8 = (v7 ^ 0x87400200) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x20902083)) ^ 0x7D022870) & (v7 ^ 0x20902083) ^ (16 * (v7 ^ 0x20902083)) & 0xA7D02280;
  v10 = v8 ^ 0xA7D02287 ^ (v9 ^ 0x25002000) & (v8 << 8);
  LODWORD(STACK[0xA07C]) = v2 ^ (2 * ((v10 << 16) & 0x27D00000 ^ v10 ^ ((v10 << 16) ^ 0x22870000) & (((v9 ^ 0x82D00287) << 8) & 0x27D00000 ^ 0x27D00000 ^ (((v9 ^ 0x82D00287) << 8) ^ 0x50220000) & (v9 ^ 0x82D00287)))) ^ 0x55994472;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x1DDD)))();
}

uint64_t sub_1004B5360()
{
  v0 = STACK[0xF10] - 35375;
  v1 = STACK[0xF10] - 22168;
  v2 = *(STACK[0x6A10] + 44);
  STACK[0x1D88] = STACK[0x6A10] + 44;
  return (*(STACK[0xF18] + 8 * ((21 * (((v0 ^ (v2 == 115)) & 1) == 0)) ^ v1)))();
}

uint64_t sub_1004B53D0()
{
  v0 = STACK[0xF10] - 32094;
  *(STACK[0x4D80] + (LODWORD(STACK[0xA318]) + 11)) = 5;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x2462)))();
}

uint64_t sub_1004B5468@<X0>(unint64_t a1@<X8>)
{
  STACK[0x3970] = v5;
  LODWORD(STACK[0xB324]) = v2;
  LODWORD(STACK[0x6908]) = v3;
  STACK[0xFD8] = v6;
  STACK[0x67A0] = a1;
  v7 = STACK[0x7690];
  v8 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x5AC0] = v8;
  STACK[0x4030] = v8;
  STACK[0x4C40] = (v8 + 16);
  STACK[0x1A10] = (v8 + 48);
  STACK[0x7690] = (v4 ^ 0x95E0u) + 35640 + v7 - 71190 + 11881 * (v4 ^ 0x95E0u);
  LODWORD(STACK[0x5798]) = v1;
  STACK[0x1560] = 0;
  STACK[0x3AD8] = 0;
  STACK[0x2D10] = 0;
  STACK[0x67E8] = 0;
  return (*(STACK[0xF18] + 8 * ((962 * (v6 == 0)) ^ v4)))();
}

uint64_t sub_1004B5524()
{
  *(v1 + 1224) = STACK[0x5AC0] + 32;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 + ((v0 - 1615579013) & 0x604BD6EF) - 1928)))();
}

uint64_t sub_1004B5580@<X0>(int a1@<W6>, unsigned int a2@<W8>)
{
  v8 = v2 > v3;
  v9 = a1 + v4 + v7 - 1969;
  v10 = v8 ^ (v9 < v5);
  v11 = v9 < a2;
  if (!v10)
  {
    v8 = v11;
  }

  return (*(STACK[0xF18] + 8 * ((v8 * v6) ^ v7)))();
}

uint64_t sub_1004B55D8()
{
  v1 = v0 - 22375;
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((2 * ((&STACK[0x10000] + 3800) & 0x6A9E4D80) - (&STACK[0x10000] + 3800) - 1788759425) ^ 0x7347A9B0) + 296753103;
  v2 = v0 + 16271;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * v2))(&STACK[0x10ED8]);
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_1004B566C@<X0>(int a1@<W8>)
{
  v3 = LODWORD(STACK[0x484C]) - v1;
  v4 = v3 ^ 0x641E7BBA;
  v5 = (((327 * (a1 ^ 0x64DC) - 30259) | 0x245) ^ 0xC83CE038) & (2 * v3);
  v6 = *(v2 + 8);
  STACK[0x5CC8] = v2 + 8;
  v7 = v4 - 1840788859 + v5;
  v8 = (v6 > 0x999B9C0uLL) ^ (v7 < 0xF666463F);
  v9 = v6 - 161069505 > v7;
  if (v8)
  {
    v9 = v6 > 0x999B9C0uLL;
  }

  return (*(STACK[0xF18] + 8 * ((319 * v9) ^ a1)))();
}

uint64_t sub_1004B5728()
{
  v2 = 139493411 * ((((2 * (&STACK[0x10000] + 3800)) | 0x27C946C6) - (&STACK[0x10000] + 3800) - 333751139) ^ 0x1FC94226);
  STACK[0x10EF0] = *(STACK[0x8B28] - 0x427A3CD3E8C5DA2FLL);
  LODWORD(STACK[0x10EE8]) = v2 - 466197451;
  LOWORD(STACK[0x10EFC]) = -32733 * ((((2 * (&STACK[0x10000] + 3800)) | 0x46C6) - (&STACK[0x10000] + 3800) + 23709) ^ 0x4226) + v0 + 22150;
  STACK[0x10EE0] = &STACK[0x73CC];
  LODWORD(STACK[0x10EF8]) = v2 + 1133646169;
  LODWORD(STACK[0x10ED8]) = v1 - v2 + 15355;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 21942)))(&STACK[0x10ED8]);
  v5 = STACK[0x10F00];
  LODWORD(STACK[0x23CC]) = STACK[0x10F00];
  return (*(v3 + 8 * ((30 * (v5 == ((((16 * v1) ^ 0x70370) + 1497653576) ^ (v1 - 20651)))) ^ v1)))(v4);
}

uint64_t sub_1004B5840@<X0>(uint64_t a1@<X8>)
{
  STACK[0xE70] = v3;
  STACK[0xE80] = v4;
  STACK[0xE90] = v2;
  **a1 = 495357033;
  v5 = STACK[0x4CE8];
  v6 = *(*a1 + 24);
  STACK[0x7690] += 16;
  STACK[0x7000] = v6;
  STACK[0x5438] = 0;
  STACK[0x4DD8] = 0;
  STACK[0x2000] = 0;
  STACK[0x7318] = 0;
  STACK[0x5AD0] = 0;
  STACK[0x1D58] = 0;
  STACK[0x9258] = 0;
  STACK[0x96B0] = 0;
  STACK[0x8A58] = 0;
  STACK[0x32E8] = 0;
  STACK[0x1F78] = 0;
  STACK[0x60C8] = 0;
  return (*(STACK[0xF18] + 8 * (((v5 == 0) * (v1 - 5154 + v1 + 8791 - 69658)) ^ v1)))();
}

uint64_t sub_1004B5B00@<X0>(int a1@<W8>)
{
  v5 = *(v4 - 0x217E172EFA1E81CLL);
  v6 = 155453101 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0xC83C128) - 1937522391) ^ 0x6AA5DAE6);
  LOWORD(STACK[0x10F00]) = 16376 - 1709 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0xC128) - 16087) ^ 0xDAE6);
  STACK[0x10EF8] = 0;
  LODWORD(STACK[0x10EF0]) = v6 ^ 0xE40DFA59;
  LODWORD(STACK[0x10ED8]) = (40409587 * a1 - 1378563772) ^ v6;
  LODWORD(STACK[0x10F04]) = v6 + 2069619737;
  STACK[0x10F10] = v5;
  LODWORD(STACK[0x10EF4]) = ((((v3 ^ 0x322B5EC2) - 841703106) ^ ((v3 ^ 0x7D6D6EFD) - 2104323837) ^ (v1 + 1500246646 + (v3 ^ 0xA693E026 ^ (v1 + 2124261757) & 0x8162572E))) + 1722579672) ^ v6;
  STACK[0x10EE8] = &STACK[0xF28] ^ 0xB2C981EB4C31130FLL;
  STACK[0x10EE0] = &STACK[0x43DC];
  LODWORD(STACK[0x10F08]) = v1 - v6 + 1777285437;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v1 ^ 0xDCB8)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * ((21931 * (LODWORD(STACK[0x10F0C]) == v2)) ^ v1)))(v8);
}

uint64_t sub_1004B5CFC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x55C8]) = v1;
  LODWORD(STACK[0x7DE4]) = a1;
  return (*(STACK[0xF18] + 8 * (((a1 == ((v2 - 1777291886) & 0x69EF8FFF ^ 0xE9D54C2A)) * ((552 * (v2 ^ 0x4D98)) ^ 0x928A)) ^ v2)))();
}

uint64_t sub_1004B5D68()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 21683)))(STACK[0x768] - 1383350530, 16);
  return (*(v1 + 8 * ((97 * ((v2 ^ (v0 - 102)) & 1)) ^ v0)))();
}

uint64_t sub_1004B5DCC()
{
  v1 = STACK[0x1C28] == 0;
  LOBYTE(STACK[0x320F]) = v1;
  if (LODWORD(STACK[0x2E34]) == -371865839)
  {
    v1 = 1;
  }

  return (*(STACK[0xF18] + 8 * ((v1 * (((v0 - 42944) | 0x9550) - 46388)) ^ v0)))();
}

uint64_t sub_1004B5F10()
{
  v1 = STACK[0x37E0];
  v2 = STACK[0x2928];
  v2[1] = *(STACK[0x37E0] + 4);
  v2[2] = *(v1 + 8);
  v2[44] = *(v1 + 176);
  v3 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v3 + 8 * ((19 * (v0 ^ 0x6A8) - 1401) ^ v0)))();
}

uint64_t sub_1004B5F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  STACK[0x388] = 0;
  v37 = *(v34 + v36 + ((v35 + 961332922) & 0xC6B376FD ^ 0xC31DA1F13ADFAA70)) == v36;
  STACK[0x3D0] = &STACK[0x47C];
  v38 = *(a9 + 8 * ((v37 * ((v35 ^ 0x2CCC) + 33489)) ^ v35));
  STACK[0x310] = v34;
  return v38(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_1004B6120@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x3364]) = v1;
  STACK[0x2268] = a1;
  STACK[0x1838] = v3;
  return (*(STACK[0xF18] + 8 * (((v3 == 0) * (v2 - 73901 + ((v2 + 1063537201) & 0xC09BAB7B))) ^ v2)))();
}

uint64_t sub_1004B61A8@<X0>(int a1@<W0>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  v15 = v4 - 1;
  v16 = ((*(*v13 + (*v12 & v7)) ^ (v11 + v15)) & 0x7FFFFFFF) * v8;
  v17 = (v16 ^ HIWORD(v16)) * v8;
  *(v11 + v15) = *(v10 + (v17 >> ((v5 | v6) + v9))) ^ *(a3 + v15) ^ *((v17 >> ((v5 | v6) + v9)) + v14 + 6) ^ *(a2 + (v17 >> ((v5 | v6) + v9))) ^ v17 ^ (-7 * (v17 >> ((v5 | v6) + v9)));
  return (*(STACK[0xF18] + 8 * (((v15 == 0) * a1) ^ v3)))();
}

uint64_t sub_1004B622C(uint64_t a1)
{
  *(a1 + 384) = 1809169911;
  *(a1 + 380) = -371865839;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1004B626C()
{
  v2 = LODWORD(STACK[0x4194]) | ((LODWORD(STACK[0x4194]) < ((v0 + 7849) | 0xA10u) + 1170542596) << 32);
  *(v1 + 1712) = v2 + 0x55622E7689F7BB93;
  v2 += 639204672;
  v3 = (LODWORD(STACK[0x3EE8]) ^ 0xB7F37A67BB967FCFLL) + 0x480C8598B04898ACLL + ((2 * LODWORD(STACK[0x3EE8])) & 0x1772CFF9ELL);
  v4 = v2 < 0x6BDF187B;
  v5 = v2 > v3;
  if (v3 < 0x6BDF187B != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((119 * !v5) ^ v0)))();
}

uint64_t sub_1004B6354()
{
  v1 = v0 - 3142;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x18C5)))();
}

uint64_t sub_1004B63C8()
{
  LODWORD(STACK[0x8534]) = v1;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x18D5 ^ (15731 * ((v0 ^ 0xA071AE7C ^ (v0 + 30234)) < 0x70AEA330)))))();
}

uint64_t sub_1004B648C@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  v2 = *(v1 + 8 * ((((*(STACK[0xF18] + 8 * (((a1 + 33732) | 0x40A) + 11594)))(24) == 0) * ((((a1 + 33732) | 0x40A) - 4627) ^ 0x8BC2)) ^ ((a1 + 33732) | 0x40A)));
  return v2();
}

uint64_t sub_1004B64F8@<X0>(int a1@<W8>)
{
  STACK[0x4C88] = v2;
  *(v1 + 2612) = v4;
  STACK[0xFF0] = v3;
  v5 = STACK[0x7690];
  STACK[0x4FE0] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = ((a1 + 25046563) & 0xFE81EFBB) + v5 - 35627;
  STACK[0x6220] = 0;
  LODWORD(STACK[0x6E2C]) = -371865839;
  return (*(STACK[0xF18] + 8 * (((((a1 - 27201) | 0x8820) ^ 0x8B17) * (v3 == 0)) ^ a1)))();
}

uint64_t sub_1004B65DC()
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
  STACK[0xC120] = 0;
  STACK[0xC128] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC120] | v10);
  *(&STACK[0xC120] | v10) = 0;
  LOBYTE(STACK[0xC127]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC120] | v12);
  *(&STACK[0xC120] | v12) = STACK[0xC126];
  LOBYTE(STACK[0xC126]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC120] | v14);
  *(&STACK[0xC120] | v14) = STACK[0xC125];
  LOBYTE(STACK[0xC125]) = v15;
  v16 = STACK[0xC120];
  LOBYTE(STACK[0xC120]) = STACK[0xC124];
  LOBYTE(STACK[0xC124]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC120] | v17);
  *(&STACK[0xC120] | v17) = STACK[0xC123];
  LOBYTE(STACK[0xC123]) = v18;
  v19 = STACK[0xC121];
  LOBYTE(STACK[0xC122]) = STACK[0xC120];
  LOWORD(STACK[0xC120]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC120] = vmla_s32(v22, STACK[0xC120], vdup_n_s32(0x1000193u));
  STACK[0xC128] ^= STACK[0xC120];
  STACK[0xC128] = vmul_s32(vsub_s32(STACK[0xC128], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC12A];
  LOWORD(STACK[0xC129]) = STACK[0xC128];
  LOBYTE(STACK[0xC128]) = v23;
  v24 = (&STACK[0xC128] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC12B];
  LOBYTE(STACK[0xC12B]) = v19;
  LOBYTE(v24) = STACK[0xC128];
  LOBYTE(STACK[0xC128]) = STACK[0xC12C];
  LOBYTE(STACK[0xC12C]) = v24;
  v25 = (&STACK[0xC128] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC12D];
  LOBYTE(STACK[0xC12D]) = v24;
  v26 = (&STACK[0xC128] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC12E];
  LOBYTE(STACK[0xC12E]) = v25;
  v27 = (&STACK[0xC128] | v10);
  v28 = *v27;
  *v27 = STACK[0xC12F];
  LOBYTE(STACK[0xC12F]) = v28;
  v29 = STACK[0xC128];
  v30 = (553300517 * STACK[0xC128]) ^ v9;
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
  *STACK[0x940] = STACK[0xC128];
  return (*(STACK[0xF18] + 8 * (v1 - 20144)))(v47, v48);
}

uint64_t sub_1004B6A70()
{
  STACK[0x4A98] = *STACK[0x5888];
  STACK[0x3E98] = STACK[0x83B0];
  LODWORD(STACK[0x655C]) = -371865851;
  LODWORD(STACK[0x884C]) = -207631798;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004B6BE0@<X0>(int a1@<W8>)
{
  v3 = *(v1 - 0x217E172EFA1E81CLL);
  STACK[0x5FC8] = v3;
  LODWORD(STACK[0x76F4]) = a1;
  v4 = 1603510583 * ((((&STACK[0x10000] + 3800) ^ 0x52020003 | 0xA56C29F0) + ((&STACK[0x10000] + 3800) ^ 0x812C29C0 | 0x5A93D60F)) ^ 0x44F51B69);
  LODWORD(STACK[0x10EE8]) = v2 - v4 - 26839;
  LODWORD(STACK[0x10EEC]) = 824934060 - v4;
  STACK[0x10EE0] = v3;
  LODWORD(STACK[0x10EDC]) = -2061567298 - v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v2 ^ 0x496F)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x2B84]) = STACK[0x10ED8];
  LOWORD(STACK[0x149A]) = 1;
  return (*(v5 + 8 * v2))(v6);
}

uint64_t sub_1004B6CF0()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  *(v1 + 134) = 0;
  return (*(v2 + 8 * (v0 - 26025)))(v3);
}

uint64_t sub_1004B6D7C@<X0>(uint64_t a1@<X1>, char a2@<W3>, unsigned int a3@<W5>, unsigned int a4@<W7>, int a5@<W8>)
{
  *(v11 + 4 * (v13 + v10)) = *(a1 + 4 * (v8 & v6 ^ v9 ^ (((v7 - (v13 + a2)) ^ (v13 + a2) ^ (v13 + a2 + 20)) ^ ((((v13 + a2) ^ 6) + 22) ^ (((v13 + a2) ^ 0x55) + 7))) & 0x1Fu));
  v14 = v13 + a5 < a3;
  if (a3 < v12 != v13 + a5 < v12)
  {
    v14 = a3 < v12;
  }

  return (*(STACK[0xF18] + 8 * ((v14 * v5) ^ a4)))();
}

uint64_t sub_1004B70D0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x1E48]) = v2;
  v3 = ((((v1 - 1433535884) ^ (a1 + 216864762) ^ 0xE37DC44F) + 89694046) ^ (a1 + 216864762) ^ (((a1 + 216864762) ^ 0x38C09D55) - 555397763) ^ (((a1 + 216864762) ^ 0xAD990208) + 1270665762) ^ (((a1 + 216864762) ^ 0x6FFEFFFF) - 1982124073)) & 0xFFFFFFF0 ^ 0xF00FE8C1;
  LODWORD(STACK[0x1D1C]) = v3;
  v4 = (((v3 ^ 0x57D8FBE4CFEC8B74) - 0x57D8FBE4CFEC8B74) ^ ((v3 ^ 0x68A45918164BB1DLL) - 0x68A45918164BB1DLL) ^ ((v3 ^ 0x5152BE75A75DF778) - 0x5152BE75A75DF778)) + 0x3AE1413AF7325DD3;
  STACK[0x2360] = v4;
  STACK[0x5C50] = v4;
  LODWORD(STACK[0x1374]) = -483860134;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x5572878A ^ (14823 * (v1 > 0xD06F7FBA)))))();
}

uint64_t sub_1004B72AC()
{
  STACK[0x6210] = v1;
  LODWORD(STACK[0x74EC]) = v3;
  STACK[0x2490] = v2;
  return (*(STACK[0xF18] + 8 * (((v0 + 49677) ^ 0x96D1) + v0)))();
}

uint64_t sub_1004B7374()
{
  v3 = vaddq_s32(vsubq_s32(veorq_s8(veorq_s8(vaddq_s32(veorq_s8(*(v2 + 4 * v0), vdupq_n_s32(0xBE6484F7)), vdupq_n_s32(0x419B7B09u)), vaddq_s32(veorq_s8(*(v2 + 4 * v0), vdupq_n_s32(0xF9C6FCAF)), vdupq_n_s32(0x6390351u))), vaddq_s32(veorq_s8(*(v2 + 4 * v0), vdupq_n_s32(0x7C34666Cu)), vdupq_n_s32(0x83CB9994))), *(STACK[0x220] + 4 * v0)), vdupq_n_s32(0xB1097DC5));
  *(v2 + 4 * v0) = veorq_s8(veorq_s8(veorq_s8(v3, vaddq_s32(veorq_s8(v3, vdupq_n_s32(0x1BB1A030u)), vdupq_n_s32(0x913D005F))), veorq_s8(vaddq_s32(veorq_s8(v3, vdupq_n_s32(0x7002EE57u)), vdupq_n_s32(0xFA8E4E3A)), vaddq_s32(veorq_s8(v3, vdupq_n_s32(0xE53FEE0D)), vdupq_n_s32(0x6FB34E64u)))), veorq_s8(vaddq_s32(veorq_s8(v3, vdupq_n_s32(0xFBFFFFFB)), vdupq_n_s32(0x71735F96u)), vdupq_n_s32(0x4EE541A5u)));
  return (*(STACK[0x228] + 8 * ((25 * ((((((v0 + 4 - v1) | (v1 - (v0 + 4))) >> 63) ^ (v1 - 1)) & 1) == 0)) | (v1 + 26560))))();
}

uint64_t sub_1004B74F8@<X0>(unint64_t a1@<X8>)
{
  v2 = (((STACK[0x89A0] ^ 0x3B7707AF98444EC3) - 0x3B7707AF98444EC3) ^ ((STACK[0x89A0] ^ 0x31BC96D2EDE020CLL) - 0x31BC96D2EDE020CLL) ^ (((v1 - 1229469826) & 0x49483EEC ^ 0xCE1208316688011FLL) + (STACK[0x89A0] ^ 0x31EDF7CE9977DE89))) + 0x5C39C5D9FED104D4;
  v3 = 193924789 * ((((2 * &STACK[0x10ED8]) | 0xD4FAFE8B572F9066) - &STACK[0x10ED8] + 0x158280BA546837CDLL) ^ 0x11E66FB11D2CFA55);
  STACK[0x10ED8] = a1;
  LODWORD(STACK[0x10EF0]) = v3 + v1 + 43336;
  STACK[0x10EE8] = v2 ^ v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 45692)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v1))(v5);
}

uint64_t sub_1004B766C()
{
  STACK[0x5658] = v0;
  LODWORD(STACK[0x2564]) = 2003140880;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1004B76A8()
{
  *STACK[0x4E70] = STACK[0x7328];
  *STACK[0x19E0] = STACK[0x81F4];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004B76E0()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 43660)))(v0);
  *(STACK[0x2748] + 96) = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1004B77A0()
{
  v2 = *(v0 + 144);
  v3 = STACK[0x2088];
  v4 = 1012831759 * ((2 * ((&STACK[0x10000] + 3800) & 0x4B9A2F8) - (&STACK[0x10000] + 3800) + 2068208901) ^ 0x6BD54B8F);
  LODWORD(STACK[0x10ED8]) = v1 - v4 + 3088;
  LODWORD(STACK[0x10EF0]) = ((((v2 ^ 0x62A9E316) - 1655300886) ^ ((v2 ^ 0x35C61B12) - 902175506) ^ ((v2 ^ 0xBEBA3F15) + 1095090411)) - ((((((v1 - 13087) | 0x43B1) - 17318) & v2 ^ 0xE5BD8DEE) - 1720667314) ^ (((((v1 - 13087) | 0x43B1) - 17318) & v2 ^ 0x1E17E27D) + 1658510559) ^ (((((v1 - 13087) | 0x43B1) - 17318) & v2 ^ 0xFBAA6F92) - 2023272142)) - 1837413350) ^ v4;
  STACK[0x10EE8] = v3;
  STACK[0x10EE0] = v3;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 ^ 0xFFE4)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * v1))(v6);
}

uint64_t sub_1004B79B8()
{
  v1 = (((v0 ^ 0x9B8B2F35) + 1685377227) ^ ((v0 ^ 0x5733C53F) - 1463010623) ^ ((v0 ^ 0x429EE560) - 1117709664)) + 209034164;
  v2 = (v1 ^ 0x99AF6327) & (2 * (v1 & 0x81B073B7)) ^ v1 & 0x81B073B7;
  v3 = ((2 * (v1 ^ 0x98AFA64B)) ^ 0x323FABF8) & (v1 ^ 0x98AFA64B) ^ (2 * (v1 ^ 0x98AFA64B)) & 0x191FD5FC;
  v4 = ((4 * (v3 ^ 0x9005404)) ^ 0x647F57F0) & (v3 ^ 0x9005404) ^ (4 * (v3 ^ 0x9005404)) & 0x191FD5F8;
  v5 = ((16 * (v4 ^ 0x1900800C)) ^ 0x91FD5FC0) & (v4 ^ 0x1900800C) ^ (16 * (v4 ^ 0x1900800C)) & 0x191FD5C0;
  v6 = (v4 ^ 0x1F55F0) & (16 * ((v3 ^ 0x381F8) & (4 * v2) ^ v2)) ^ (v3 ^ 0x381F8) & (4 * v2) ^ v2 ^ 0x191FD5FC ^ (v5 ^ 0x111D5500) & (((v4 ^ 0x1F55F0) & (16 * ((v3 ^ 0x381F8) & (4 * v2) ^ v2)) ^ (v3 ^ 0x381F8) & (4 * v2) ^ v2) << 8);
  v7 = v1 ^ (2 * ((v6 << 16) & 0x191F0000 ^ v6 ^ ((v6 << 16) ^ 0x55FC0000) & (((v5 ^ 0x802803C) << 8) & 0x191F0000 ^ 0xA0000 ^ (((v5 ^ 0x802803C) << 8) ^ 0x1FD50000) & (v5 ^ 0x802803C))));
  return (*(STACK[0xF18] + 8 * ((994 * ((((v7 ^ 0x8BA594E2) + 1808514105) ^ ((v7 ^ 0xE40DE396) + 73648973) ^ ((v7 ^ 0xFE1FAF3A) + 510756834)) - 1910108310 < 0x30)) ^ LODWORD(STACK[0xE40]))))();
}

uint64_t sub_1004B87FC()
{
  v1 = STACK[0xF18];
  STACK[0x9820] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 9053 + ((v0 - 1114475864) & 0x426DB37F))))();
}

uint64_t sub_1004B88A4@<X0>(int a1@<W8>)
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = 1830850696;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1004B88D0()
{
  v3 = *(STACK[0x8590] + 52);
  v4 = v1 + ((2 * v2) ^ 0xA9CC9804) + *(STACK[0x8590] + 48);
  STACK[0x5400] = v0;
  STACK[0x41A0] = v4;
  LODWORD(STACK[0x20CC]) = v3;
  LODWORD(STACK[0x38AC]) = 169409069;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1004B8924()
{
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 16238)))(v1);
  return (*(v2 + 8 * ((v0 - 11446) ^ ((STACK[0xEC0] == 0) | ((STACK[0xEC0] == 0) << 6)))))();
}

uint64_t sub_1004B8968()
{
  v1 = *(STACK[0x7248] - 0x217E172EFA1E81CLL);
  v2 = STACK[0x9368] + 480;
  v3 = STACK[0x325C];
  v4 = 1022166737 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x66D0ADB0) - 422531664) ^ 0x5CC04C22);
  LODWORD(STACK[0x10EDC]) = v4 + v0 + 371897019;
  STACK[0x10EE0] = v2;
  STACK[0x10EE8] = v1;
  LODWORD(STACK[0x10EF0]) = v4 ^ v3 ^ ((v3 ^ (v0 - 1768029167)) + 650684568) ^ ((v3 ^ 0x3BE2A492) - 1655060696) ^ ((v3 ^ 0x35220E05) - 1818661455) ^ ((v3 ^ (v0 - 299747602)) + 1900846667) ^ 0xF2A05DA2;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 ^ 0xE9D50C76)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((37888 * (((LODWORD(STACK[0x10ED8]) - v0) | (v0 - LODWORD(STACK[0x10ED8]))) >= 0)) ^ (v0 + 371870851))))(v6);
}

uint64_t sub_1004B8AE4@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, char a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v20 = ((2 * (v12 ^ 0x4B)) ^ 0xBE) & (v12 ^ 0x4B) ^ (2 * (v12 ^ 0x4B)) & 0x5E;
  v21 = (v20 ^ 0x10) & (4 * ((v14 & a5 ^ 0x14) & v12)) ^ (v14 & a5 ^ 0x14) & v12;
  v22 = *(v19 + ((((v12 ^ v16 ^ (2 * ((((v20 ^ 0x41) & 0x70 | (v20 ^ 0xB0) & (4 * (v20 ^ 0x41))) ^ 0x40) & (16 * v21) ^ v21))) ^ 0xB3) * v15) & 0x1FF ^ 0x100));
  v23 = v22 & 0x82 ^ 0x2E;
  v24 = 2899 * ((v22 ^ (2 * ((v22 ^ v18) & (2 * ((v22 ^ v18) & (2 * ((v22 ^ v18) & (2 * ((v22 ^ v18) & (2 * ((v22 ^ v18) & (2 * v23) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23))) ^ 0xA3) + 9627579;
  v25 = *(v17 + 4 * (v24 - (((13849149 * v24) >> 32) >> 5) * a3)) ^ 0xEBCB8ECELL;
  v26 = *(v19 + (((v25 >> 24) * v15) & 0x1FF));
  v27 = *(v19 + ((BYTE2(v25) * v15) & 0x1FF));
  v28 = *(v19 + ((BYTE1(v25) * v15) & 0x1FF));
  v29 = v27 & 0x60 ^ 0x7D;
  v30 = v26 ^ (2 * ((v26 ^ v18) & (2 * ((v26 ^ v18) & (2 * ((v26 ^ v18) & (2 * ((v26 ^ v18) & (2 * ((v26 ^ v18) & (2 * (v26 & 0xB6)) ^ v26 & 0xB6)) ^ v26 & 0xB6)) ^ v26 & 0xB6)) ^ v26 & 0xB6)) ^ (v26 & 0xB6 | 0x40)));
  v31 = v28 & 0xAE ^ 0x9C;
  LODWORD(v25) = *(v19 + ((v25 * v15) & 0x1FF));
  v32 = ((v30 ^ v13) << 16) | (((v27 ^ (2 * ((v27 ^ v13) & (2 * ((v27 ^ v13) & (2 * ((v27 ^ v13) & (2 * ((v27 ^ v13) & (2 * ((v27 ^ v13) & (2 * ((v27 ^ v13) & 0x16 ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29))) ^ 0x60) << 8);
  v33 = ((v28 ^ (2 * ((v28 ^ v18) & (2 * ((v28 ^ v18) & (2 * ((v28 ^ v18) & (2 * ((v28 ^ v18) & (2 * ((v28 ^ v18) & (2 * v31) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31))) ^ 0x346C0C) & ~v32 | v32 & 0xCB9300;
  v34 = v25 & 0x64 ^ 0xFFFFFFFB;
  v35 = (v25 ^ v13) & (2 * ((v25 ^ v13) & (2 * ((v25 ^ v13) & (2 * ((v25 ^ v13) & (2 * ((v25 ^ v13) & 0x12 ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34;
  *(a9 + 4 * (*(v17 + 4 * (a1 - a1 / 0x26C4 * a3)) ^ 0x380493)) = a4 ^ ((v9 ^ (v33 << 8)) & ((v25 ^ (2 * ((v25 ^ v13) & (2 * v35) ^ v34))) ^ a2) | (v25 ^ (2 * ((v25 ^ v13) & (2 * v35) ^ v34))) & a7);
  return (*(STACK[0xF18] + 8 * (a6 ^ (((v11 | v10) >= 0) * a8))))(a1 + 2899);
}

uint64_t sub_1004B8E64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = ((v5 & 0x7FFFFFFFFFFFFFFCLL ^ 0x3889DABDC54F972) - 0x5196815DD3822F33) ^ ((v5 & 0x7FFFFFFFFFFFFFFCLL ^ 0x5F78D467C5F7D23CLL) - 0xD66C891CA21047DLL) ^ ((a2 ^ 0xF111AAC5E98A89CALL) + (v5 & 0x7FFFFFFFFFFFFFFCLL ^ 0x5CF049CC19A32B4ELL));
  a1[3] = STACK[0xD18];
  a1[4] = *(v2 + 80);
  *(v2 + 80) = a1;
  *(a1[4] + 24) = a1;
  a1[1] = v6 - 0x70FF84FB2B09265FLL;
  v7 = ((((v6 - 722019935) ^ 0x494B647D) + 1939118331) ^ (v6 - 722019935) ^ (((v6 - 722019935) ^ 0xD6651F9) + 934915455) ^ (((v6 - 722019935) ^ 0xBBBFCD77) - 2124402191) ^ ((v3 ^ 0x6D8C36) + ((v6 - 722019935) ^ 0x3AB2FB8B))) & 0xFFFFFFFC;
  return (*(STACK[0xF18] + 8 * ((40336 * ((((v7 ^ 0x5022553A5B8F2683) - 0xE9078646BC17553) ^ ((v7 ^ 0x9098C9E18747F704) + 0x31D51B4048F65B2CLL) ^ ((v7 ^ 0xC0BA9CDB19E8D2FFLL) + 0x61F74E7AD6597ED1)) + 0x5EB22D5EF56E507FLL < 0xFFFFFFFFFFFFFFD7)) ^ v4)))();
}

uint64_t sub_1004B90A8()
{
  v1 = STACK[0x6804];
  STACK[0x8FE8] = STACK[0x93F0];
  LODWORD(STACK[0x44A8]) = v1;
  LODWORD(STACK[0x7FD8]) = 1986096245;
  LODWORD(STACK[0x704C]) = -2116087604;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004B919C@<X0>(unsigned int a1@<W8>)
{
  v3 = v2 + 1297639750 > a1 + 2105201717;
  if (a1 > 0x82852BCA != v2 + 1297639750 < (((v1 ^ 0xE5A8) - 4020) ^ 0x7D7AAFB2u))
  {
    v3 = v2 + 1297639750 < (((v1 ^ 0xE5A8) - 4020) ^ 0x7D7AAFB2u);
  }

  return (*(STACK[0xF18] + 8 * ((5529 * v3) ^ v1)))();
}

uint64_t sub_1004B9220@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xB7BC]) = a1;
  LODWORD(STACK[0xB7B8]) = v1;
  v3 = *STACK[0xB7A0];
  v4 = v3 - 1107170612;
  v5 = v3 > 0x41FE1533;
  if ((v1 + 1821702853) < 0xBE01EACC == v5)
  {
    v5 = v1 + 1821702853 < v4;
  }

  return (*(STACK[0xF18] + 8 * ((v5 * (((v2 ^ 0x39D6) - 15539) ^ 0x7408)) ^ v2)))();
}

uint64_t sub_1004B92A8@<X0>(unint64_t a1@<X8>)
{
  v4 = STACK[0x5F50];
  v5 = 353670337 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x1F16D4B0) - 1625893710) ^ 0x2B372C8F);
  LODWORD(STACK[0x10ED8]) = v5 ^ 0x8E46085;
  STACK[0x10EF0] = v3;
  STACK[0x10EE0] = v1;
  STACK[0x10EE8] = v4;
  STACK[0x10F00] = a1;
  STACK[0x10F08] = ((v2 - 9115) + 0x29DCF992F38003ECLL) ^ &STACK[0xF28];
  LODWORD(STACK[0x10EFC]) = v5 + v2 + 1478431717;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v2 + 36334)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * v2))(v7);
}

uint64_t sub_1004B937C@<X0>(uint64_t a1@<X8>)
{
  **a1 = 934290438;
  v2 = STACK[0x4CE8];
  v3 = *(*a1 + 8);
  STACK[0x7690] += 80;
  STACK[0x21C0] = v3;
  STACK[0x55F0] = 0;
  STACK[0x4670] = 0;
  STACK[0x2A70] = 0;
  STACK[0x2E38] = 0;
  STACK[0x1BB8] = 0;
  STACK[0x4D68] = 0;
  STACK[0x74C0] = 0;
  STACK[0x1818] = 0;
  STACK[0x2538] = 0;
  STACK[0x35F8] = 0;
  STACK[0x3BF0] = 0;
  STACK[0x5650] = 0;
  STACK[0x49E0] = 0;
  return (*(STACK[0xF18] + 8 * (((v2 != 0) * (((v1 - 507504867) & 0x1E3FDFFE ^ 0xFFFF03EC) + ((v1 + 690455937) & 0xD6D8BDEF))) ^ v1)))();
}

uint64_t sub_1004B948C()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 29295)))((v0 - 992313642));
  STACK[0xB7A8] = v3;
  v4 = v3 == 0;
  LOBYTE(STACK[0xB7B7]) = v4;
  return (*(v2 + 8 * ((v4 * ((v1 + 1754506150) & 0x976C8D3B ^ 0x8971)) ^ v1)))();
}

uint64_t sub_1004B956C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  if ((v57 - 897143706) >= 0x28)
  {
    v71 = v56;
  }

  else
  {
    v71 = v58;
  }

  v72 = v71 + v57;
  if ((v57 + v59) >= 0x28)
  {
    v73 = v60;
  }

  else
  {
    v73 = v61;
  }

  v74 = *(a1 + (v73 + v57));
  if ((v57 + a2 + a9) >= 0x28)
  {
    a4 = a3;
  }

  v76 = (*(a1 + v72) << 24) | (v74 << 16);
  v77 = *(a1 + v57 + a5) + v64 + (v63 | ~(2 * *(a1 + v57 + a5)));
  *(a56 + 4 * (v57 + a5)) = v77 & v67 ^ v68 ^ (((a6 ^ (*(a1 + (a4 + v57)) << 8)) & (v76 ^ a7) | v76 & a8) ^ v65) & (v77 ^ v66);
  return (*(STACK[0x228] + 8 * (((v57 + 1 == v69) * v70) ^ v62)))();
}

uint64_t sub_1004B9930()
{
  v1 = STACK[0x1278];
  v2 = (v0 - 565090892 + 227 * (v0 ^ 0x7341)) ^ *(STACK[0x1278] + 24);
  v3 = 139493411 * ((((&STACK[0x10000] + 3800) | 0x7B5F841B) + (~(&STACK[0x10000] + 3800) | 0x84A07BE4)) ^ 0x7772655F);
  STACK[0x10EE0] = STACK[0x4738];
  STACK[0x10ED8] = v1;
  LODWORD(STACK[0x10EEC]) = v3 + v0 - 122;
  LODWORD(STACK[0x10EF0]) = v2 + v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0xBE79)))(&STACK[0x10ED8]);
  v6 = STACK[0x5C24];
  LOBYTE(STACK[0x3387]) = LODWORD(STACK[0x5C24]) == -371865851;
  return (*(v4 + 8 * ((99 * (v6 != -371865851)) ^ v0)))(v5);
}

uint64_t sub_1004B9A20(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = (v9 + a1 + a3);
  v17 = *v16;
  v18 = ((((v16 ^ v13) & 0x7FFFFFFF) * a5) ^ ((((v16 ^ v13) & 0x7FFFFFFF) * a5) >> 16)) * v8;
  LODWORD(v18) = (*(STACK[0x9B8] + (v18 >> 24)) ^ v17 ^ *((v18 >> 24) + STACK[0x9A8] + 2) ^ *((v18 >> 24) + STACK[0x9B0] + 4) ^ v18 ^ (BYTE3(v18) * v11));
  v19 = (a8 + a1 + v12);
  v20 = *v19;
  v21 = ((((v19 ^ v13) & 0x7FFFFFFF) * a5) ^ ((((v19 ^ v13) & 0x7FFFFFFF) * a5) >> 16)) * a5;
  LODWORD(v18) = v18 - (*(STACK[0x9B8] + (v21 >> 24)) ^ v20 ^ *((v21 >> 24) + STACK[0x9A8] + 2) ^ *((v21 >> 24) + STACK[0x9B0] + 4) ^ v21 ^ (BYTE3(v21) * v11));
  return (*(STACK[0xF18] + 8 * ((((v15 & (2 * v18)) + (v18 ^ v10) == v10) * v14) ^ a2)))();
}

uint64_t sub_1004B9B8C()
{
  v1 = *(STACK[0x2DC0] + 304);
  STACK[0x81A8] = STACK[0x88B8];
  STACK[0x97E8] = v1;
  LODWORD(STACK[0x6974]) = 103711535;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004B9BD0()
{
  v3 = (84 - v2);
  v6 = v3 <= (67 - v0) && v3 <= (-2 - v0) && 84 - v2 <= (((v1 ^ 0x18DBu) - 19445) ^ 0x39E4uLL);
  return (*(STACK[0xF18] + 8 * ((47 * v6) ^ v1)))();
}

uint64_t sub_1004B9CFC()
{
  v2 = *(v1 + 296);
  STACK[0x10EE0] = *(v1 + 312);
  STACK[0x10EE8] = v2;
  LODWORD(STACK[0x10ED8]) = (v0 + 9536) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x8819D011) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x77E62FE8)) ^ 0xB9181D35));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 27414)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * v0))(v4);
}

uint64_t sub_1004B9DD4()
{
  v4 = STACK[0x8280];
  LODWORD(STACK[0x10ED8]) = (v0 + 5522) ^ (906386353 * (((&STACK[0x10ED8] | 0xB585BD76) - (&STACK[0x10ED8] | 0x4A7A4289) + 1249526409) ^ 0x84847052));
  STACK[0x10EE8] = v4;
  LOWORD(STACK[0x10EE0]) = 23473 * (((&STACK[0x10ED8] | 0xBD76) - (&STACK[0x10ED8] | 0x4289) + 17033) ^ 0x7052) + 18080;
  v5 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0xD722)))(&STACK[0x10ED8]);
  v6 = *(STACK[0xED0] - 0x217E172EFA1E81CLL);
  v7 = LODWORD(STACK[0x896C]) * v1 - 1378563772;
  v8 = 155453101 * ((((2 * (&STACK[0x10ED8] ^ 0xB84B069D)) | 0x6619F4A0) - (&STACK[0x10ED8] ^ 0xB84B069D) - 856488528) ^ 0x6D61E702);
  LODWORD(STACK[0x10EF0]) = v8 ^ 0xD80EFC59;
  LODWORD(STACK[0x10ED8]) = v7 ^ v8;
  LODWORD(STACK[0x10F04]) = v8 + 2069619757;
  STACK[0x10EE8] = &STACK[0xF28] ^ 0xB2C981EB4C31130FLL;
  STACK[0x10EE0] = &STACK[0x8944];
  LODWORD(STACK[0x10F08]) = v0 - v8 + v2;
  LODWORD(STACK[0x10EF4]) = v8 ^ 0x7CD6B3C8;
  STACK[0x10EF8] = v4;
  LOWORD(STACK[0x10F00]) = 16376 - 1709 * ((((2 * (&STACK[0x10ED8] ^ 0x69D)) | 0xF4A0) - (&STACK[0x10ED8] ^ 0x69D) + 1456) ^ 0xE702);
  STACK[0x10F10] = v6;
  v9 = (*(v5 + 8 * v3))(&STACK[0x10ED8]);
  return (*(v5 + 8 * (((LODWORD(STACK[0x10F0C]) == -371865839) * (((v0 - 5959) | 0x8B3) + 36898)) ^ v0)))(v9);
}

uint64_t sub_1004B9FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = ((v7 ^ 0x4916) * a5 + 21786308) & 0xFEB37EFF;
  *v5 = v6 ^ 0x1D633921;
  *(v5 + 16) = 0;
  *(v5 + 4) = 0x21E23A8900000000;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * (v7 + 33351)))((8 * (v6 ^ 0x1D633921)) ^ 0x4EAE3888u);
  *(v5 + 16) = v10;
  return (*(v9 + 8 * (((v10 != 0) * (v8 - 30937)) ^ v7)))(v5);
}

uint64_t sub_1004BA0D0()
{
  v1 = STACK[0xF18];
  STACK[0x88F8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 - 706063901) & 0x2A15B6FB ^ 0x21C) + v0)))();
}

uint64_t sub_1004BA21C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0xADF9)))(2400);
  a1[1] = v4;
  return (*(v3 + 8 * (((((v1 - 38) ^ (v4 == 0)) & 1) * (((v1 + 7106) | 0x818) ^ 0x8BFF)) ^ v1)))();
}

uint64_t sub_1004BA288()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 19478)))();
  *(v1 + 16) = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1004BA2C8@<X0>(int a1@<W8>)
{
  v2 = (a1 ^ 0xBE9F5240) & (2 * (((v1 - 8285) ^ 0xBE1F98FE) & a1)) ^ ((v1 - 8285) ^ 0xBE1F98FE) & a1;
  v3 = (((a1 ^ 0xDAA352C0) << (v1 - 8)) ^ 0xC9798124) & (a1 ^ 0xDAA352C0) ^ ((a1 ^ 0xDAA352C0) << (v1 - 8)) & 0x64BCC092;
  v4 = v3 ^ 0x24844092;
  v5 = (v3 ^ 0x44388002) & (4 * v2) ^ v2;
  v6 = ((4 * v4) ^ 0x92F30248) & v4 ^ (4 * v4) & 0x64BCC090;
  v7 = (v6 ^ 0xB00010) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0x640CC092)) ^ 0x4BCC0920) & (v6 ^ 0x640CC092) ^ (16 * (v6 ^ 0x640CC092)) & 0x64BCC080;
  v9 = v7 ^ 0x64BCC092 ^ (v8 ^ 0x408C0000) & (v7 << 8);
  v10 = a1 ^ (2 * ((v9 << 16) & 0x64BC0000 ^ v9 ^ ((v9 << 16) ^ 0x40920000) & (((v8 ^ 0x2430C092) << 8) & 0x64BC0000 ^ 0x403C0000 ^ (((v8 ^ 0x2430C092) << 8) ^ 0x3CC00000) & (v8 ^ 0x2430C092)))) ^ 0x43EEA1E1;
  v11 = 17902189 * ((2 * ((&STACK[0x10000] + 3800) & 0x48FF85E0) - (&STACK[0x10000] + 3800) + 922778143) ^ 0xB94F6C0F);
  STACK[0x10ED8] = STACK[0x3A80];
  LODWORD(STACK[0x10EE8]) = v11 + v1 + 30146;
  LODWORD(STACK[0x10EF8]) = v10 + v11;
  LODWORD(STACK[0x10EE0]) = v11 + 1497668682;
  STACK[0x10EF0] = &STACK[0x91C8];
  v12 = STACK[0xF18];
  v13 = (*(STACK[0xF18] + 8 * (v1 ^ 0xE092)))(&STACK[0x10ED8]);
  return (*(v12 + 8 * ((35645 * (LODWORD(STACK[0x10EE4]) == -371865839)) ^ v1)))(v13);
}

uint64_t sub_1004BA4F8()
{
  v1 = STACK[0xF18];
  STACK[0x9558] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x3C54 ^ (v0 - 617400846) & 0x24CCD6DF)))();
}

uint64_t sub_1004BA550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v5 = (v3 ^ 0xE5BEFCEEF17730DDLL ^ v4) + 0x7E5B17BDBEBF7D20 + ((v3 << ((a3 + 91) ^ 0x3Au)) & 0x1E2EF77CCLL);
  STACK[0xADE0] = v5;
  v6 = STACK[0x7110];
  STACK[0xADE8] = STACK[0x7110];
  return (*(STACK[0xF18] + 8 * ((29843 * (v5 - v6 - 0x42697F43856F0970 < 0xFFFFFFFFFFFFFFF6)) ^ a3)))(a1, a2, 371891407);
}

uint64_t sub_1004BA6CC@<X0>(unint64_t *a1@<X8>)
{
  LODWORD(STACK[0x3B2C]) = v2;
  v3 = *a1;
  STACK[0x8860] = v3;
  v5 = v2 != -371865839 || v3 == 0;
  return (*(STACK[0xF18] + 8 * ((v5 * ((v1 ^ 0xFAF2) - 30740)) ^ v1)))();
}

uint64_t sub_1004BA80C()
{
  STACK[0x5400] = v1;
  STACK[0x41A0] = STACK[0x6A60];
  LODWORD(STACK[0x20CC]) = v2;
  LODWORD(STACK[0x38AC]) = 855777449;
  return (*(STACK[0xF18] + 8 * ((v0 + 321219869) ^ (v0 - 21285) ^ 0x1325E617 ^ (25194 * ((v0 + 321219869) > 0x64DCA8B1)))))();
}

uint64_t sub_1004BA87C()
{
  LODWORD(STACK[0x89D4]) = v1;
  v3 = LODWORD(STACK[0x90B8]) != 1497668682 && v1 != 1497668682;
  return (*(STACK[0xF18] + 8 * ((v3 * (((v0 + 1836950644) & 0x9281BFEB) - 7878)) ^ v0)))();
}

uint64_t sub_1004BA8E8()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xF32E)))(((v0 - 412723869) & 0x1899FBFF ^ 0xCABA5A71) + LODWORD(STACK[0x8520]));
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1004BA93C()
{
  v1 = *(STACK[0x78B0] + 168) == 0;
  LOBYTE(STACK[0x31D7]) = v1;
  return (*(STACK[0xF18] + 8 * ((21 * (((v0 ^ v1) & 1) == 0)) ^ v0)))();
}

uint64_t sub_1004BA984()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((191 * ((v0 - 1454073720) > 0x991A2D76)) ^ (v0 + 2103))))();
}

uint64_t sub_1004BAA20()
{
  STACK[0x9CD0] = v1 + 248;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * (v0 - 33768));
  return (*(v2 + 8 * (v0 - 29776)))();
}

uint64_t sub_1004BAD60()
{
  v1 = STACK[0x88B0];
  v2 = STACK[0x394C];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v1;
  LODWORD(STACK[0x655C]) = v2;
  LODWORD(STACK[0x884C]) = 1227213472;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004BAE08@<X0>(int a1@<W8>)
{
  v1 = a1 - 16171;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 + 16238)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1004BAE3C()
{
  v2 = (&STACK[0xC4D0] + STACK[0x7690]);
  STACK[0x7690] += 896;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 35112)))(*(&off_1010A0B50 + v1 - 15561) - 1107070990, v2 + 79, 256);
  v2[47] = 0x9DC2521D166FA808;
  v2[48] = 0xFB11E713151E81C6;
  v2[49] = 0x553DEB73E996903;
  v2[50] = 0x7D58E344D5E0BB17;
  v2[51] = 0xABEFF5E9523436F9;
  v2[52] = 0x79C0A633839DE5E0;
  v2[53] = 0x23CDC15BC4FAFB9DLL;
  v2[54] = 0xE9FA6C06725F5FF8;
  v2[55] = 0xE335AF44382A8845;
  v2[56] = 0x5FF69AD9D9855313;
  v2[57] = 0xEE15A2635E547323;
  v2[58] = 0xD1F8DDD34F619A2CLL;
  v2[59] = 0xC0DE7A14D52E47ECLL;
  v2[60] = 0x4E17F841E7F325C6;
  v2[61] = 0xF182E116BA35597BLL;
  v2[62] = 0xE1CE0F678E3A9FF1;
  v2[63] = 0x8E6C93846A6F2C92;
  v2[64] = 0xC7A34B761BD08ECLL;
  v2[65] = 0x735952251538D3D0;
  v2[66] = 0xCB0D81C3BE0ABA02;
  v2[67] = 0x4C44F846E133C0D6;
  v2[68] = 0xB3495E4D6083EF72;
  v2[69] = 0x943AE8D91026DD94;
  v2[70] = 0x1180A3CCE22909E6;
  v2[71] = 0xB81A2F52D437883DLL;
  v2[72] = 0x315A497B867D4C8;
  v2[73] = 0xE8E58E2C14DAA0F3;
  v2[74] = 0x6F398647C4B405C0;
  v2[75] = 0x1145C9E842F204B9;
  v2[76] = 0x46651833CA42632ALL;
  v2[77] = 0xC528FFF711C27C7ALL;
  v2[78] = 0x113B3A820DFABE54;
  return (*(v3 + 8 * ((5402 * ((((v0 ^ 0xE7EA24AB) + 404085589) ^ ((v0 ^ 0x69D28455) - 1775404117) ^ ((v0 ^ 0x67ED67EF) - 1743611887)) + ((v1 - 299952542) & 0x11E0AD7F) - 371867250 < 0xFFFFFFF8)) ^ v1)))(v4);
}

uint64_t sub_1004BB214()
{
  v3 = 1022166737 * ((&STACK[0x10000] + 3800) ^ 0xBA10E192);
  STACK[0x10ED8] = v2;
  LODWORD(STACK[0x10EE0]) = v1 - v3;
  LODWORD(STACK[0x10EE4]) = v3 + v0 + 3599;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0xA5B5)))(&STACK[0x10ED8]);
  v6 = STACK[0x10EE8];
  LODWORD(STACK[0x27A4]) = STACK[0x10EE8];
  return (*(v4 + 8 * ((28 * (((v0 + 1) ^ (v6 == (v0 ^ 0xE471) + 1497633039)) & 1)) ^ v0)))(v5);
}

uint64_t sub_1004BB4B0()
{
  v1 = STACK[0xF18];
  STACK[0x9880] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1603)))();
}

uint64_t sub_1004BB540()
{
  STACK[0xA2D0] = STACK[0x5F58] + 56;
  STACK[0x10EE8] = &STACK[0x10E40];
  LOWORD(STACK[0x10EE0]) = 23473 * ((-2 - ((~(&STACK[0x10000] + 3800) | 0x2367) + ((&STACK[0x10000] + 3800) | 0xDC98))) ^ 0xEE43) + 18068;
  LODWORD(STACK[0x10ED8]) = (v0 + 12720) ^ (906386353 * ((-2 - ((~(&STACK[0x10000] + 3800) | 0xB4E22367) + ((&STACK[0x10000] + 3800) | 0x4B1DDC98))) ^ 0x85E3EE43));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xCBC4)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * ((v0 ^ 0x1A2A) + v0)))(v2);
}

uint64_t sub_1004BB6A8@<X0>(int a1@<W8>)
{
  v3 = (v1 | ((v1 < 0x6267FF14) << 32)) + ((v2 - 47286) ^ 0x3866A3D3AE2D3AB7);
  STACK[0xB3B8] = v3 - 0x280EC74396BE2A1CLL;
  v3 -= 0x3866A3D3E2CFCAC2;
  v4 = STACK[0x7D20] - 0x6F6F2C6DF42632B6;
  v5 = v3 < 0x2DC5675E;
  v6 = v3 > v4;
  if (v4 < 0x2DC5675E != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((205 * ((LODWORD(STACK[0x135C]) == a1) & ~v6)) ^ v2)))();
}

uint64_t sub_1004BB87C@<X0>(int a1@<W8>)
{
  v5 = STACK[0xF18];
  STACK[0x46A0] = *(STACK[0xF18] + 8 * a1);
  STACK[0x3218] = v2;
  STACK[0x1288] = v3;
  v6 = STACK[0x7690];
  v7 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x96E8] = v7;
  STACK[0x1EB8] = v7;
  STACK[0x2BF8] = (v7 + 255);
  STACK[0x7690] = v6 + 480;
  LODWORD(STACK[0x855C]) = -1102467656;
  if (v4)
  {
    v8 = v2 == 0;
  }

  else
  {
    v8 = 1;
  }

  v10 = v8 || v3 == 0;
  return (*(v5 + 8 * ((v10 * ((v1 - 498900238) & 0x1DBCBF3F ^ 0x8B79)) ^ v1)))();
}

uint64_t sub_1004BB918()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v1 + 8 * (v0 + 9304)))(v2);
}

uint64_t sub_1004BB944()
{
  *STACK[0x7778] = STACK[0x47C0];
  *STACK[0x7280] = 34;
  *(STACK[0x21E8] + 148) = STACK[0x163C];
  return (*(STACK[0xF18] + 8 * ((12453 * (v0 != -1700519822)) ^ (v0 + 1516539163))))();
}

uint64_t sub_1004BBA2C()
{
  v3 = v0 + 1882028635;
  v4 = (v2 + 1882028635) < 0x7D1A9246;
  v5 = v4 ^ (v3 < ((v1 + 3407) ^ 0x7D1A0233u));
  v6 = v2 + 1882028635 > v3;
  if (!v5)
  {
    v4 = v6;
  }

  LOBYTE(STACK[0x91DF]) = v4;
  LODWORD(STACK[0xED0]) = v4;
  return (*(STACK[0xF18] + 8 * ((112 * !v4) ^ v1)))();
}

uint64_t sub_1004BBB60@<X0>(int a1@<W2>, int a2@<W3>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v22 = *(v21 + 4 * (v11 & 0x1F));
  v23 = ((2 * (a6 % v12)) & 0x1D6) + ((a6 % v12) ^ 0xF7EAEF7FFF0EB7EBLL);
  v24 = v23 + 0x815108000F14798;
  v25 = (a5 + 4 * v23 + 0x2054420003C52054);
  if (v24 < 0xFFFFFFFFFFFFFF83)
  {
    v25 = (v13 + 4 * v24);
  }

  v26 = *v25;
  v27 = v22 + (((v26 ^ 0xA1B48468) + 1582005144) ^ ((v26 ^ 0xDDF87DF2) + 570917390) ^ ((v26 ^ 0x49DC85CB) - 1239188939));
  v28 = *(v8 + 4 * a6);
  v29 = 457880378 * ((*v20 + 1407067922 + (((v26 ^ 0xE338BF63) + 482820253) ^ ((v26 ^ 0xB6F6079) - 191848569) ^ ((v26 ^ 0xDDC7A34B) + 574119093))) * (v28 - v22 + 2099164960) - 508406465 * (v28 - v22)) + 1585096164 * ((v27 - 1200503503) * (((*v20 - v28) ^ 0x2EFFA7B5) - 227097425 + ((2 * (*v20 - v28)) & 0x1DFF4F6A)) - 561409124 * v27);
  v30 = ((v29 + 1476970740) ^ 0xE1CF233E) & (2 * ((v29 + 1476970740) & 0xE9CFB3BE)) ^ (v29 + 1476970740) & 0xE9CFB3BE;
  v31 = ((2 * ((v29 + 1476970740) ^ 0x215C240E)) ^ 0x91272F62) & ((v29 + 1476970740) ^ 0x215C240E) ^ (2 * ((v29 + 1476970740) ^ 0x215C240E)) & a2;
  v32 = v31 ^ 0x48909091;
  v33 = (v31 ^ 0x80030720) & (4 * v30) ^ v30;
  v34 = ((4 * v32) ^ 0x224E5EC4) & v32 ^ (4 * v32) & a2;
  v35 = (v34 ^ 0x21680) & (16 * v33) ^ v33;
  v36 = ((16 * (v34 ^ 0xC8918131)) ^ 0x89397B10) & (v34 ^ 0xC8918131) ^ (16 * (v34 ^ 0xC8918131)) & 0xC8939790;
  v37 = v35 ^ 0xC89397B1 ^ (v36 ^ 0x88111300) & (v35 << 8);
  v38 = STACK[0x210];
  *(v20 - 32) = v29 + 1476970740;
  v39 = ((v29 + 1476970740) ^ (2 * ((v37 << 16) & v6 ^ v37 ^ ((v37 << 16) ^ 0x17B10000) & (((v36 ^ 0x408284A1) << 8) & v6 ^ 0x48000000 ^ (((v36 ^ 0x408284A1) << 8) ^ 0x13970000) & (v36 ^ 0x408284A1)))) ^ 0x79CA9CEE) + 129;
  v40 = ((2 * (v39 % 0x81)) & 0x16E) + ((v39 % 0x81) ^ 0xBABF73AFD1AFFDB7);
  v41 = v40 + a3;
  v42 = (a5 + 4 * v40 + a4);
  if (v41 < 0xFFFFFFFFFFFFFF83)
  {
    v42 = (v13 + 4 * v41);
  }

  *(v38 + 4 * (v10 & 0x1F)) += (v29 - (((*v42 ^ a1) + v14) ^ ((*v42 ^ v9) + v15) ^ ((*v42 ^ v16) + v17))) * v18 + v19;
  return (*(STACK[0x228] + 8 * (((8 * (a6 == -31)) | (16 * (a6 == -31))) ^ v7)))();
}

uint64_t sub_1004BC000()
{
  v2 = *(v0 + 4);
  v4 = v2 - 1051086576;
  v3 = v2 - 1051086576 < 0;
  v5 = 1051086576 - v2;
  if (!v3)
  {
    v5 = v4;
  }

  LODWORD(STACK[0x2104]) = ((v1 - 14767) | 0x8238) ^ 0xE9D54C2A ^ (4 * v5);
  return (*(STACK[0xF18] + 8 * ((62077 * (((((4 * v5) ^ 0xE98EB012) + (((v1 + 18542) | 0x1B) ^ 0xFFA403C6)) ^ (((4 * v5) ^ 0xB8330E67) - 1374079350) ^ (((4 * v5) ^ 0x51BDBE75) + 1201112732)) - 371865839 < 0x101)) ^ v1)))();
}

uint64_t sub_1004BC284()
{
  v1 = STACK[0xF18];
  STACK[0x98C0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 344885289 + (v0 ^ 0x148EA314))))();
}

uint64_t sub_1004BC2D0()
{
  v1 = STACK[0xF18];
  STACK[0x81E0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x5731 ^ (52109 * ((v0 + 855650501) > 0xF117A530)))))();
}

uint64_t sub_1004BC390()
{
  v2 = 139493411 * ((2 * ((&STACK[0x10000] + 3800) & 0x7E403DA0) - (&STACK[0x10000] + 3800) - 2118139298) ^ 0x8D92231B);
  STACK[0x10EE0] = STACK[0x4180];
  STACK[0x10EE8] = v1;
  STACK[0x10EF8] = STACK[0xE70];
  LODWORD(STACK[0x10EF4]) = v2 + v0 + 12764;
  LODWORD(STACK[0x10EF0]) = v2 ^ 0x5460DFDD;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0xA12B)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((42438 * (LODWORD(STACK[0x10ED8]) == (v0 ^ 0x222A) - 371886170)) ^ v0)))(v4);
}

uint64_t sub_1004BC514@<X0>(int a1@<W8>)
{
  v1 = a1 + 3455;
  v2 = (a1 + 3455) ^ 0xB64C6363;
  v3 = STACK[0x358];
  v4 = (*(STACK[0x358] + 8 * (a1 + 11715)))(1032);
  STACK[0x450] = v4 + 0x6F1F52B07D899AFCLL;
  return (*(v3 + 8 * (((v4 != 0) * (v2 + 1236482017)) ^ v1)))();
}

uint64_t sub_1004BC594@<X0>(int a1@<W8>)
{
  v4 = STACK[0xF18];
  STACK[0x59E0] = *(STACK[0xF18] + 8 * a1);
  STACK[0x1240] = v1;
  STACK[0x7D08] = v3;
  LODWORD(STACK[0x4AB4]) = 1497668682;
  return (*(v4 + 8 * (((v1 != 0x217E172EFA1E81CLL) * (((v2 + 8169) | 0x91) ^ 0xAB5B)) ^ (v2 - 30166))))();
}

uint64_t sub_1004BC62C()
{
  v1 = (((LODWORD(STACK[0x6168]) ^ 0x7F5F51C4B23FD51ALL) - 0x7F5F51C4B23FD51ALL) ^ ((LODWORD(STACK[0x6168]) ^ 0xCF70FCF5FE96438) - 0xCF70FCF5FE96438) ^ ((v0 ^ 0x9C76u) + (LODWORD(STACK[0x6168]) ^ 0x73A85E0B04037633) - 0x73A85E0B0404016ELL)) + 0x3AE1413AF7325DD3;
  STACK[0x7C18] = v1;
  STACK[0x5C50] = v1;
  LODWORD(STACK[0x1374]) = -148756782;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004BC790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v11 = STACK[0x7000];
  LODWORD(STACK[0xED0]) = LOBYTE(STACK[0x78AF]);
  v12 = STACK[0x60C8];
  LODWORD(STACK[0xEC0]) = LOBYTE(STACK[0x219E]);
  LODWORD(STACK[0xEB0]) = LOBYTE(STACK[0x7047]);
  v13 = STACK[0x2000];
  v14 = STACK[0x3957];
  v15 = STACK[0x6C57];
  v16 = STACK[0xE58];
  v17 = *STACK[0xE58] & 0xFFFFFFFFE6F073DCLL;
  v18 = STACK[0xE50];
  v19 = *STACK[0xE50];
  v20 = 1864610357 * ((*(v19 + v17) ^ (v12 + 3)) & 0x7FFFFFFF);
  v21 = STACK[0xF10];
  v22 = 1864610357 * ((v20 >> (STACK[0xF10] - 43)) ^ v20);
  v23 = *((v22 >> 24) + v8 + 1) ^ v12[3] ^ *(v9 + (v22 >> 24)) ^ *(v7 + (v22 >> 24)) ^ v22 ^ (-87 * BYTE3(v22));
  *(v11 + 192) = (((v23 ^ 0xF) + 87) ^ ((v23 ^ 0x35) + 109) ^ ((v23 ^ 0x3A) + 100)) - 47;
  *(v11 + 193) = a7;
  v24 = STACK[0x3297];
  v25 = 1864610357 * ((*(v19 + v17) ^ (v12 + 2)) & 0x7FFFFFFF);
  v26 = 1864610357 * (v25 ^ HIWORD(v25));
  v27 = *(v9 + (v26 >> 24)) ^ *((v26 >> 24) + v8 + 1) ^ *(v7 + (v26 >> 24)) ^ v12[2] ^ v26 ^ (-87 * BYTE3(v26));
  *(v11 + 194) = (((v27 ^ 0xFC) + 52) ^ ((v27 ^ 0xF4) + 60) ^ ((v27 ^ 8) - 56)) - 83;
  *(v11 + 195) = v10;
  LODWORD(v17) = 1864610357 * ((*(v19 + v17) ^ (v12 + 1)) & 0x7FFFFFFF);
  v28 = 1864610357 * (v17 ^ WORD1(v17));
  LOBYTE(v28) = *(v9 + (v28 >> 24)) ^ *((v28 >> 24) + v8 + 1) ^ *(v7 + (v28 >> 24)) ^ v12[1] ^ v28 ^ (-87 * BYTE3(v28));
  *(v11 + 196) = (((v28 ^ 0xB2) + 8) ^ ((v28 ^ 0xDA) + 112) ^ ((v28 ^ 0x68) - 34)) + 75;
  v29 = STACK[0x5C6F];
  v30 = STACK[0x60C8];
  *(v11 + 197) = STACK[0x6EF7];
  v31 = *v18;
  v32 = *v16 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v28) = 1864610357 * ((*(*v18 + v32) ^ v30) & 0x7FFFFFFF);
  v33 = 1864610357 * (v28 ^ WORD1(v28));
  v34 = *(v9 + (v33 >> 24)) ^ *((v33 >> 24) + v8 + 1) ^ *(v7 + (v33 >> 24)) ^ *v30 ^ v33 ^ (-87 * BYTE3(v33));
  *(v11 + 198) = (((v34 ^ 0xBA) + 4) ^ ((v34 ^ 1) - 71) ^ ((v34 ^ 0xBB) + 3)) - 105;
  *(v11 + 199) = v29;
  v35 = STACK[0x2423];
  v36 = 1864610357 * ((*(v31 + v32) ^ (v30 + 7)) & 0x7FFFFFFF);
  v37 = 1864610357 * (v36 ^ HIWORD(v36));
  LOBYTE(v37) = *(v9 + (v37 >> 24)) ^ *((v37 >> 24) + v8 + 1) ^ *(v7 + (v37 >> 24)) ^ *(v30 + 7) ^ v37 ^ (-87 * BYTE3(v37));
  *(v11 + 200) = (((v37 ^ 0xC) + 26) ^ ((v37 ^ 0xBF) - 85) ^ ((v37 ^ 0xB3) - 89)) + 93;
  *(v11 + 201) = v15;
  LODWORD(v31) = *(v31 + v32);
  LOBYTE(v32) = STACK[0x176F];
  v38 = 1864610357 * ((1864610357 * ((v31 ^ (v30 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v31 ^ (v30 + 6)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v38) = *(v9 + (v38 >> 24)) ^ *((v38 >> 24) + v8 + 1) ^ *(v7 + (v38 >> 24)) ^ *(v30 + 6) ^ v38 ^ (-87 * BYTE3(v38));
  *(v11 + 202) = (v38 ^ ((v38 ^ 0x26) + 44) ^ ((v38 ^ 0xD4) - 38) ^ 0xF2) + 84;
  *(v11 + 203) = v14;
  v39 = STACK[0x341F];
  v40 = *v18;
  v41 = *v16 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v38) = 1864610357 * ((*(*v18 + v41) ^ (v12 + 5)) & 0x7FFFFFFF);
  v42 = 1864610357 * (v38 ^ WORD1(v38));
  v43 = *(v9 + (v42 >> 24)) ^ *((v42 >> 24) + v8 + 1) ^ *(v7 + (v42 >> 24)) ^ v12[5] ^ v42 ^ (-87 * BYTE3(v42));
  *(v11 + 204) = (((v43 ^ 0x4A) - 40) ^ (v43 - 98) ^ ((v43 ^ 0xCA) + 88)) - 59;
  *(v11 + 205) = v39;
  v44 = 1864610357 * ((*(v40 + v41) ^ (v12 + 4)) & 0x7FFFFFFF);
  v45 = 1864610357 * (v44 ^ HIWORD(v44));
  v46 = *(&off_1010A0B50 + v21 - 31644) - 1399136967;
  v47 = *(&off_1010A0B50 + v21 - 30968) - 1540340483;
  v48 = *(&off_1010A0B50 + (v21 ^ 0x81B9)) - 623785166;
  LOBYTE(v45) = v47[(v45 >> 24) + 2] ^ v46[(v45 >> 24) + 1] ^ v48[v45 >> 24] ^ v12[4] ^ v45 ^ (15 * BYTE3(v45));
  *(v11 + 206) = (((v45 ^ 0x3D) + 89) ^ ((v45 ^ 0x4F) + 43) ^ ((v45 ^ 0x72) + 24)) - 19;
  *(v11 + 207) = v32;
  LOBYTE(v45) = STACK[0x12A7];
  LODWORD(v32) = 1864610357 * ((*(v40 + v41) ^ (v12 + 11)) & 0x7FFFFFFF);
  v49 = 1864610357 * (v32 ^ WORD1(v32));
  LOBYTE(v49) = v47[(v49 >> 24) + 2] ^ v46[(v49 >> 24) + 1] ^ v48[v49 >> 24] ^ v12[11] ^ v49 ^ (15 * BYTE3(v49));
  *(v11 + 208) = (((v49 ^ 0xFC) + 82) ^ ((v49 ^ 0x83) + 47) ^ ((v49 ^ 0x7F) - 45)) - 101;
  *(v11 + 209) = STACK[0x81F3];
  LOBYTE(v40) = STACK[0x31EF];
  v50 = *v18;
  v51 = *v16 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v49) = 1864610357 * ((*(*v18 + v51) ^ (v12 + 10)) & 0x7FFFFFFF);
  v52 = 1864610357 * (v49 ^ WORD1(v49));
  LOBYTE(v52) = v47[(v52 >> 24) + 2] ^ v46[(v52 >> 24) + 1] ^ v48[v52 >> 24] ^ v12[10] ^ v52 ^ (15 * BYTE3(v52));
  *(v11 + 210) = (v52 ^ ((v52 ^ 4) - 91) ^ ((v52 ^ 0x5B) - 4) ^ 0x5F) - 47;
  *(v11 + 211) = v40;
  LODWORD(v52) = 1864610357 * ((*(v50 + v51) ^ (v12 + 9)) & 0x7FFFFFFF);
  v53 = 1864610357 * (v52 ^ WORD1(v52));
  LOBYTE(v53) = v47[(v53 >> 24) + 2] ^ v46[(v53 >> 24) + 1] ^ v48[v53 >> 24] ^ v12[9] ^ v53 ^ (15 * BYTE3(v53));
  *(v11 + 212) = (((v53 ^ 0x2D) - 100) ^ ((v53 ^ 0x5E) - 23) ^ ((v53 ^ 0x73) - 58)) - 67;
  *(v11 + 213) = v35;
  v54 = 1864610357 * ((*(*v18 + (*v16 & 0xFFFFFFFFE6F073DCLL)) ^ (v12 + 8)) & 0x7FFFFFFF);
  v55 = 1864610357 * (v54 ^ HIWORD(v54));
  LOBYTE(v55) = v47[(v55 >> 24) + 2] ^ v46[(v55 >> 24) + 1] ^ v48[v55 >> 24] ^ v12[8] ^ v55 ^ (15 * BYTE3(v55));
  *(v11 + 214) = (((v55 ^ 0x9A) + 59) ^ ((v55 ^ 0x4E) - 17) ^ ((v55 ^ 0xD4) + 117)) - 120;
  *(v11 + 215) = v24;
  v56 = 1864610357 * ((*(*v18 + (*v16 & 0xFFFFFFFFE6F073DCLL)) ^ (v12 + 15)) & 0x7FFFFFFF);
  v57 = 1864610357 * (v56 ^ HIWORD(v56));
  LOBYTE(v57) = v47[(v57 >> 24) + 2] ^ v46[(v57 >> 24) + 1] ^ v48[v57 >> 24] ^ v12[15] ^ v57 ^ (15 * BYTE3(v57));
  *(v11 + 216) = (((v57 ^ 0xE5) - 52) ^ ((v57 ^ 0xE6) - 55) ^ ((v57 ^ 3) + 46)) - 8;
  *(v11 + 217) = STACK[0xED0];
  v58 = v12[14];
  v59 = STACK[0x7000];
  v60 = v16;
  LODWORD(v12) = 1864610357 * ((*(*v18 + (*v16 & 0xFFFFFFFFE6F073DCLL)) ^ (v12 + 14)) & 0x7FFFFFFF);
  v61 = 1864610357 * (v12 ^ (v12 >> 16));
  LOBYTE(v57) = v47[(v61 >> 24) + 2] ^ v46[(v61 >> 24) + 1] ^ v48[v61 >> 24] ^ v58 ^ v61 ^ (15 * BYTE3(v61));
  v59[218] = (((v57 ^ 0xF5) - 10) ^ ((v57 ^ 0x49) + 74) ^ ((v57 ^ 0xBC) - 67)) + 38;
  v59[219] = STACK[0xEB0];
  v62 = STACK[0x2000];
  LODWORD(v16) = 1864610357 * ((*(*v18 + (*v16 & 0xFFFFFFFFE6F073DCLL)) ^ (v30 + 13)) & 0x7FFFFFFF);
  v63 = 1864610357 * (v16 ^ (v16 >> 16));
  LOBYTE(v57) = v47[(v63 >> 24) + 2] ^ v46[(v63 >> 24) + 1] ^ v48[v63 >> 24] ^ *(v30 + 13) ^ v63 ^ (15 * BYTE3(v63));
  STACK[0xED0] = v59;
  v59[220] = (((v57 ^ 0x57) - 30) ^ ((v57 ^ 0xA1) + 24) ^ ((v57 ^ 0xF6) + 65)) + 105;
  v59[221] = STACK[0xEC0];
  v64 = *(v30 + 12);
  v65 = v60;
  LODWORD(v30) = 1864610357 * ((*(*v18 + (*v60 & 0xFFFFFFFFE6F073DCLL)) ^ (v30 + 12)) & 0x7FFFFFFF);
  v66 = 1864610357 * (v30 ^ WORD1(v30));
  v67 = v47[(v66 >> 24) + 2] ^ v46[(v66 >> 24) + 1] ^ v48[v66 >> 24] ^ v64 ^ v66 ^ (15 * BYTE3(v66));
  *(v11 + 222) = (((v67 ^ 0x95) + 70) ^ ((v67 ^ 0x57) - 120) ^ ((v67 ^ 0xC2) + 19)) - 105;
  *(v11 + 223) = v45;
  LODWORD(v57) = *(*v18 + (*v60 & 0xFFFFFFFFE6F073DCLL));
  v68 = 1864610357 * ((1864610357 * ((v57 ^ (v13 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v57 ^ (v13 + 3)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v68) = v47[(v68 >> 24) + 2] ^ v46[(v68 >> 24) + 1] ^ v48[v68 >> 24] ^ v13[3] ^ v68 ^ (15 * ((1864610357 * ((1864610357 * ((v57 ^ (v13 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v57 ^ (v13 + 3)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v69 = 1864610357 * ((1864610357 * ((v57 ^ (v13 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v57 ^ (v13 + 2)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v69) = (v46[(v69 >> 24) + 1] ^ v13[2] ^ v47[(v69 >> 24) + 2] ^ v48[v69 >> 24] ^ (53 * ((53 * (v57 ^ (v13 + 2))) ^ ((1864610357 * ((v57 ^ (v13 + 2)) & 0x7FFFFFFF)) >> 16))) ^ (15 * ((1864610357 * ((1864610357 * ((v57 ^ (v13 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v57 ^ (v13 + 2)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 8;
  v70 = 1864610357 * ((1864610357 * ((v57 ^ (v13 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v57 ^ (v13 + 1)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v66) = (v46[(v70 >> 24) + 1] ^ v13[1] ^ v47[(v70 >> 24) + 2] ^ v48[v70 >> 24] ^ (53 * ((53 * (v57 ^ (v13 + 1))) ^ ((1864610357 * ((v57 ^ (v13 + 1)) & 0x7FFFFFFF)) >> 16))) ^ (15 * ((1864610357 * ((1864610357 * ((v57 ^ (v13 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v57 ^ (v13 + 1)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 16;
  v71 = 1864610357 * ((1864610357 * ((v57 ^ v13) & 0x7FFFFFFF)) ^ ((1864610357 * ((v57 ^ v13) & 0x7FFFFFFF)) >> 16));
  *v11 = v68 & 0x3B ^ 0x81CEA96C ^ (((((((v71 ^ v46[(v71 >> 24) + 1] ^ v47[(v71 >> 24) + 2] ^ v48[v71 >> 24] ^ (15 * (v71 >> 24)) ^ *v13) << 24) ^ 0x66BC40E3) & ~v66 | v66 & 0x430000) ^ 0x5356FE14) & ~v69 | v69 & 0x4100) ^ 0xC9DE9133) & (v68 ^ 0xFFFFFFF7);
  v72 = *(v62 + 7);
  v62 += 7;
  v73 = *v60 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v40) = *(*v18 + v73);
  v74 = 1864610357 * ((1864610357 * ((v40 ^ v62) & 0x7FFFFFFF)) ^ ((1864610357 * ((v40 ^ v62) & 0x7FFFFFFF)) >> 16));
  v75 = *(&off_1010A0B50 + v21 - 31585) - 223356086;
  v76 = *(&off_1010A0B50 + v21 - 34512) - 317200283;
  v77 = *(&off_1010A0B50 + (v21 & 0x2ABB6EC3)) - 1480394051;
  v78 = -111 * ((1864610357 * ((1864610357 * ((v40 ^ v62) & 0x7FFFFFFF)) ^ ((1864610357 * ((v40 ^ v62) & 0x7FFFFFFF)) >> 16))) >> 24);
  v79 = v76[(v74 >> 24) + 1] ^ v75[(v74 >> 24) + 1] ^ v77[v74 >> 24] ^ v72 ^ v74;
  LOBYTE(v74) = v79 ^ ~v78;
  v80 = (v79 ^ v78) & 0x9A;
  v81 = 1864610357 * ((1864610357 * ((v40 ^ (v62 - 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v40 ^ (v62 - 1)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v50) = v46[(v81 >> 24) + 1] ^ *(v62 - 1) ^ v47[(v81 >> 24) + 2] ^ v48[v81 >> 24] ^ (53 * ((53 * (v40 ^ (v62 - 1))) ^ ((1864610357 * ((v40 ^ (v62 - 1)) & 0x7FFFFFFF)) >> 16))) ^ (15 * ((1864610357 * ((1864610357 * ((v40 ^ (v62 - 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v40 ^ (v62 - 1)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v82 = 1864610357 * ((1864610357 * ((v40 ^ (v62 - 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v40 ^ (v62 - 2)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v51) = v46[(v82 >> 24) + 1] ^ *(v62 - 2) ^ v47[(v82 >> 24) + 2] ^ v48[v82 >> 24];
  v83 = STACK[0x7000];
  STACK[0xEC0] = STACK[0x7000];
  LOBYTE(v82) = (53 * ((53 * (v40 ^ (v62 - 2))) ^ ((1864610357 * ((v40 ^ (v62 - 2)) & 0x7FFFFFFF)) >> 16))) ^ (15 * ((1864610357 * ((1864610357 * ((v40 ^ (v62 - 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v40 ^ (v62 - 2)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v84 = *(v62 - 3);
  v85 = 1864610357 * ((1864610357 * ((v40 ^ (v62 - 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v40 ^ (v62 - 3)) & 0x7FFFFFFF)) >> 16));
  *(v11 + 4) = ((((((((v46[(v85 >> 24) + 1] ^ v85 ^ v47[(v85 >> 24) + 2] ^ v48[v85 >> 24] ^ (15 * (v85 >> 24)) ^ v84 ^ 0x4A) << 24) ^ 0x46B7C3D4) & ~((v51 ^ v82) << 16) | ((v51 ^ v82) << 16) & 0x480000) ^ 0xA7AD0350) & ~(v50 << 8) & 0xFFFFC0FF | ((v50 & 0x3F) << 8)) ^ 0x681AEFE1) & (v74 | 0xFFFFFF00) | v80) ^ 0xA290C859;
  v86 = v13 + 11;
  v87 = *v18;
  v88 = *v60 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v40) = *(*v18 + v88);
  LOBYTE(v84) = v13[10];
  v89 = 1864610357 * ((1864610357 * ((v40 ^ (v13 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v40 ^ (v13 + 11)) & 0x7FFFFFFF)) >> 16));
  v90 = STACK[0x2000];
  LODWORD(v85) = v13 + 9;
  v91 = v13[9];
  LODWORD(v89) = v75[(v89 >> 24) + 1] ^ v13[11] ^ v76[(v89 >> 24) + 1] ^ v77[v89 >> 24] ^ v89 ^ (-111 * (v89 >> 24));
  v92 = 1864610357 * ((1864610357 * ((v40 ^ (v13 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v40 ^ (v13 + 10)) & 0x7FFFFFFF)) >> 16));
  v93 = (v92 >> 24) + 1;
  LOBYTE(v51) = v75[v93] ^ v84;
  v94 = *(v86 - 3);
  LOBYTE(v92) = v51 ^ v76[v93] ^ v77[v92 >> 24] ^ v92 ^ (-111 * BYTE3(v92));
  LODWORD(v73) = *(*v18 + v73);
  v95 = 1864610357 * ((1864610357 * ((v73 ^ v85) & 0x7FFFFFFF)) ^ ((1864610357 * ((v73 ^ v85) & 0x7FFFFFFF)) >> 16));
  LODWORD(v95) = (v75[(v95 >> 24) + 1] ^ v91 ^ v76[(v95 >> 24) + 1] ^ v77[v95 >> 24] ^ v95 ^ (-111 * BYTE3(v95))) << 16;
  v96 = 1864610357 * ((1864610357 * ((v73 ^ (v86 - 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v73 ^ (v86 - 3)) & 0x7FFFFFFF)) >> 16));
  *(v11 + 8) = v89 & 0xE4 ^ 0x49A5820F ^ (((((((v76[(v96 >> 24) + 1] ^ v75[(v96 >> 24) + 1] ^ v77[v96 >> 24] ^ v94 ^ v96 ^ (-111 * (v96 >> 24))) << 24) ^ 0x9FE5AF02) & ~v95 | v95 & 0x1A0000) ^ 0x80D25709) & ~(v92 << 8) & 0xFFFFF8FF | ((v92 & 7) << 8)) ^ 0xAE563710) & (v89 ^ 0xFFFFFFBF);
  v97 = v90 + 15;
  v98 = *v18;
  v99 = *v60 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v89) = *(*v18 + v99);
  v100 = 1864610357 * ((1864610357 * ((v89 ^ (v90 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v89 ^ (v90 + 15)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v96) = v75[(v100 >> 24) + 1] ^ *(v90 + 15) ^ v76[(v100 >> 24) + 1] ^ v77[v100 >> 24] ^ v100;
  LOBYTE(v100) = v96 ^ ~(-111 * ((1864610357 * ((1864610357 * ((v89 ^ (v90 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v89 ^ (v90 + 15)) & 0x7FFFFFFF)) >> 16))) >> 24));
  LODWORD(v96) = (v96 ^ (-111 * ((1864610357 * ((1864610357 * ((v89 ^ (v90 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v89 ^ (v90 + 15)) & 0x7FFFFFFF)) >> 16))) >> 24))) & 0xC5;
  v101 = 1864610357 * ((1864610357 * ((v89 ^ (v90 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v89 ^ (v90 + 14)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v82) = v75[(v101 >> 24) + 1] ^ *(v90 + 14) ^ v76[(v101 >> 24) + 1] ^ v77[v101 >> 24];
  v102 = STACK[0x7318];
  LODWORD(v73) = 1864610357 * ((*(v87 + v99) ^ (v97 - 2)) & 0x7FFFFFFF);
  v103 = 1864610357 * (v73 ^ WORD1(v73));
  LODWORD(v103) = (v76[(v103 >> 24) + 1] ^ v75[(v103 >> 24) + 1] ^ v77[v103 >> 24] ^ *(v97 - 2) ^ v103 ^ (-111 * BYTE3(v103))) << 16;
  v104 = 1864610357 * ((1864610357 * ((*(v87 + v88) ^ (v97 - 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((*(v87 + v88) ^ (v97 - 3)) & 0x7FFFFFFFu)) >> 16));
  *(v83 + 12) = ((((((((v75[(v104 >> 24) + 1] ^ v76[(v104 >> 24) + 1] ^ v77[v104 >> 24] ^ *(v97 - 3) ^ v104 ^ (-111 * (v104 >> 24)) ^ 0xBBBBBBBB) << 24) ^ 0x9FB6B044) & ~v103 | v103 & 0x490000) ^ 0x1D296640) & ~((v82 ^ v101 ^ (-111 * BYTE3(v101))) << 8) | ((v82 ^ v101 ^ (-111 * BYTE3(v101))) << 8) & 0x2900) ^ 0x208B6E3E) & (v100 | 0xFFFFFF00) | v96) ^ 0xDF9D3AE7;
  LODWORD(v104) = v102;
  v105 = *v60 & 0xFFFFFFFFE6F073DCLL;
  v106 = v102;
  LODWORD(v88) = *(v98 + v105) ^ v102;
  LODWORD(v96) = *v102;
  LODWORD(v99) = *(v102 + 3);
  v107 = STACK[0x7318];
  LOBYTE(v101) = *(v102 + 2);
  LODWORD(v100) = *(*v18 + v105);
  v108 = 1864610357 * ((1864610357 * ((v100 ^ (v102 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v100 ^ (v102 + 3)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v94) = *(v106 + 1);
  LODWORD(v108) = v75[(v108 >> 24) + 1] ^ v99 ^ v76[(v108 >> 24) + 1] ^ v77[v108 >> 24] ^ v108 ^ (-111 * (v108 >> 24));
  v109 = 1864610357 * ((1864610357 * ((v100 ^ (v104 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v100 ^ (v104 + 2)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v109) = (v75[(v109 >> 24) + 1] ^ v101 ^ v76[(v109 >> 24) + 1] ^ v77[v109 >> 24] ^ v109 ^ (-111 * BYTE3(v109)));
  v110 = 1864610357 * ((1864610357 * ((v100 ^ (v106 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v100 ^ (v106 + 1)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v110) = (v75[(v110 >> 24) + 1] ^ v94 ^ v76[(v110 >> 24) + 1] ^ v77[v110 >> 24] ^ v110 ^ (-111 * BYTE3(v110))) << 16;
  v111 = 1864610357 * ((1864610357 * (v88 & 0x7FFFFFFF)) ^ ((1864610357 * (v88 & 0x7FFFFFFF)) >> 16));
  *(v11 + 16) = v108 & 0xBA ^ 0xAE4E9273 ^ ((((((v75[(v111 >> 24) + 1] ^ v76[(v111 >> 24) + 1] ^ v77[v111 >> 24] ^ v96 ^ v111 ^ (-111 * (v111 >> 24)) ^ 0x40) << 24) ^ 0xCD426086) & ~v110 | v110 & 0xBD0000) ^ 0x28BF9BA4) & ~(v109 << 8) ^ ((((v109 >> 2) & 1) << 10) | 0x8FCDC967)) & (v108 ^ 0xFFFFFFEF);
  v112 = *v18;
  v113 = *v60 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v93) = *(*v18 + v113);
  v114 = 1864610357 * ((1864610357 * ((v93 ^ (v107 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v93 ^ (v107 + 7)) & 0x7FFFFFFF)) >> 16));
  v115 = *(&off_1010A0B50 + (v21 ^ 0x8695)) - 1403332674;
  v116 = *(&off_1010A0B50 + v21 - 35084) - 32529335;
  v117 = *(&off_1010A0B50 + (v21 ^ 0x9BB5)) - 57642594;
  LODWORD(v114) = v115[(v114 >> 24) + 5] ^ v107[7] ^ v116[v114 >> 24] ^ v117[v114 >> 24] ^ v114 ^ (-109 * ((1864610357 * ((1864610357 * ((v93 ^ (v107 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v93 ^ (v107 + 7)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v118 = 1864610357 * ((1864610357 * ((v93 ^ (v107 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v93 ^ (v107 + 6)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v118) = v75[(v118 >> 24) + 1] ^ v107[6] ^ v76[(v118 >> 24) + 1] ^ v77[v118 >> 24] ^ (53 * ((53 * (v93 ^ (v107 + 6))) ^ ((1864610357 * ((v93 ^ (v107 + 6)) & 0x7FFFFFFF)) >> 16))) ^ (-111 * ((1864610357 * ((1864610357 * ((v93 ^ (v107 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v93 ^ (v107 + 6)) & 0x7FFFFFFF)) >> 16))) >> 24));
  LODWORD(v105) = *(*v18 + v105);
  v119 = 1864610357 * ((1864610357 * ((v105 ^ (v107 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v105 ^ (v107 + 5)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v83) = v75[(v119 >> 24) + 1] ^ v107[5] ^ v76[(v119 >> 24) + 1] ^ v77[v119 >> 24];
  LOBYTE(v93) = (53 * ((53 * (v105 ^ (v107 + 5))) ^ ((1864610357 * ((v105 ^ (v107 + 5)) & 0x7FFFFFFF)) >> 16))) ^ (-111 * ((1864610357 * ((1864610357 * ((v105 ^ (v107 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v105 ^ (v107 + 5)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v120 = 1864610357 * ((1864610357 * ((v105 ^ (v107 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v105 ^ (v107 + 4)) & 0x7FFFFFFF)) >> 16));
  v121 = STACK[0xED0];
  *(v121 + 20) = v114 & 0xB ^ 0x77F856BB ^ (((((((v76[(v120 >> 24) + 1] ^ v75[(v120 >> 24) + 1] ^ v77[v120 >> 24] ^ v107[4] ^ v120 ^ (-111 * (v120 >> 24))) << 24) ^ 0xB40D064) & ~((v83 ^ v93) << 16) | ((v83 ^ v93) << 16) & 0xFFBFFFFF) ^ 0xCC813971) & ~(v118 << 8) | (v118 << 8) & 0x1600) ^ 0x9EB73BE1) & (v114 ^ 0xFFFFFFF5);
  v122 = *v18;
  v123 = *v60 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v118) = *(*v18 + v123);
  v124 = 1864610357 * ((1864610357 * ((v118 ^ (v107 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v118 ^ (v107 + 11)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v124) = v115[(v124 >> 24) + 5] ^ v107[11] ^ v116[v124 >> 24] ^ v117[v124 >> 24] ^ (53 * ((53 * (v118 ^ (v107 + 11))) ^ ((1864610357 * ((v118 ^ (v107 + 11)) & 0x7FFFFFFF)) >> 16))) ^ (-109 * ((1864610357 * ((1864610357 * ((v118 ^ (v107 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v118 ^ (v107 + 11)) & 0x7FFFFFFF)) >> 16))) >> 24));
  LODWORD(v76) = v124 & 0x46 | 0x346B739;
  v125 = 1864610357 * ((1864610357 * ((v118 ^ (v107 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v118 ^ (v107 + 10)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v70) = v124 ^ 0xFFFFFFFB;
  LODWORD(v124) = (v115[(v125 >> 24) + 5] ^ v107[10] ^ v116[v125 >> 24] ^ v117[v125 >> 24] ^ v125 ^ (-109 * BYTE3(v125)));
  LODWORD(v120) = 1864610357 * ((*(v112 + v123) ^ (v107 + 9)) & 0x7FFFFFFF);
  v126 = 1864610357 * (v120 ^ WORD1(v120));
  LODWORD(v77) = ((v115[(v126 >> 24) + 5] ^ v116[v126 >> 24] ^ v117[v126 >> 24] ^ v107[9] ^ v126 ^ (-109 * BYTE3(v126))) ^ 0xFD) << 16;
  LODWORD(v112) = 1864610357 * ((*(v112 + v113) ^ (v107 + 8)) & 0x7FFFFFFF);
  v127 = 1864610357 * (v112 ^ WORD1(v112));
  *(v11 + 24) = (((((((v115[(v127 >> 24) + 5] ^ v116[v127 >> 24] ^ v117[v127 >> 24] ^ v107[8] ^ v127 ^ (-109 * (v127 >> 24)) ^ 0xBC) << 24) ^ 0x4CD351C3) & (v77 ^ 0xFF0251C3) | v77 & 0x2C0000) ^ 0x7E949092) & ~(v124 << 8) & 0xFFFFC1FF | (((v124 >> 1) & 0x1F) << 9)) ^ 0xF0E5E5E8) & v70 ^ v76;
  v128 = *v60 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v114) = *(*v18 + v128);
  v129 = STACK[0x5AD0];
  v130 = 1864610357 * ((1864610357 * ((v114 ^ (v107 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v114 ^ (v107 + 15)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v124) = v115[(v130 >> 24) + 5] ^ v107[15] ^ v116[v130 >> 24] ^ v117[v130 >> 24] ^ v130;
  LOBYTE(v70) = v124 ^ ~(-109 * ((1864610357 * ((1864610357 * ((v114 ^ (v107 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v114 ^ (v107 + 15)) & 0x7FFFFFFF)) >> 16))) >> 24));
  LODWORD(v130) = (v124 ^ (-109 * ((1864610357 * ((1864610357 * ((v114 ^ (v107 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v114 ^ (v107 + 15)) & 0x7FFFFFFF)) >> 16))) >> 24))) & 0xB0;
  v131 = 1864610357 * ((1864610357 * ((v114 ^ (v107 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v114 ^ (v107 + 14)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v131) = (v115[(v131 >> 24) + 5] ^ v107[14] ^ v116[v131 >> 24] ^ v117[v131 >> 24] ^ v131 ^ (-109 * BYTE3(v131))) << 8;
  v132 = 1864610357 * ((1864610357 * ((v114 ^ (v107 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v114 ^ (v107 + 13)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v132) = (v115[(v132 >> 24) + 5] ^ v107[13] ^ v116[v132 >> 24] ^ v117[v132 >> 24] ^ v132 ^ (-109 * BYTE3(v132))) << 16;
  LODWORD(v122) = 1864610357 * ((*(v122 + v128) ^ (v107 + 12)) & 0x7FFFFFFF);
  v133 = 1864610357 * (v122 ^ WORD1(v122));
  *(v121 + 28) = ((((((((v115[(v133 >> 24) + 5] ^ v116[v133 >> 24] ^ v117[v133 >> 24] ^ v107[12] ^ v133 ^ (-109 * (v133 >> 24)) ^ 3) << 24) ^ 0x62AA285) & ~v132 | v132 & 0xD50000) ^ 0xFB903BD5) & ~v131 | v131 & 0x66666666) ^ 0x9FCFE01F) & (v70 | 0xFFFFFF00) | v130) ^ 0x2C3A47C1;
  v134 = *v18;
  v135 = *v60 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v125) = *(*v18 + v135);
  v136 = 1864610357 * ((1864610357 * ((v125 ^ (v129 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v125 ^ (v129 + 3)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v70) = -109 * ((1864610357 * ((1864610357 * ((v125 ^ (v129 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v125 ^ (v129 + 3)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v136) = v115[(v136 >> 24) + 5] ^ *(v129 + 3) ^ v116[v136 >> 24] ^ v117[v136 >> 24] ^ v136;
  LODWORD(v130) = (v136 ^ v70) & 0xAA;
  LODWORD(v70) = v136 ^ ~v70 | 0xFFFFFF00;
  v137 = 1864610357 * ((1864610357 * ((v125 ^ (v129 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v125 ^ (v129 + 2)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v131) = (v115[(v137 >> 24) + 5] ^ *(v129 + 2) ^ v116[v137 >> 24] ^ v117[v137 >> 24] ^ (53 * ((53 * (v125 ^ (v129 + 2))) ^ ((1864610357 * ((v125 ^ (v129 + 2)) & 0x7FFFFFFF)) >> 16))) ^ (-109 * ((1864610357 * ((1864610357 * ((v125 ^ (v129 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v125 ^ (v129 + 2)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 8;
  LODWORD(v128) = *(*v18 + v128);
  v138 = 1864610357 * ((1864610357 * ((v128 ^ (v129 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v128 ^ (v129 + 1)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v132) = (v115[(v138 >> 24) + 5] ^ *(v129 + 1) ^ v116[v138 >> 24] ^ v117[v138 >> 24] ^ (53 * ((53 * (v128 ^ (v129 + 1))) ^ ((1864610357 * ((v128 ^ (v129 + 1)) & 0x7FFFFFFF)) >> 16))) ^ (-109 * ((1864610357 * ((1864610357 * ((v128 ^ (v129 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v128 ^ (v129 + 1)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 16;
  v139 = 1864610357 * ((1864610357 * ((v128 ^ v129) & 0x7FFFFFFF)) ^ ((1864610357 * ((v128 ^ v129) & 0x7FFFFFFF)) >> 16));
  *(STACK[0x7000] + 32) = ((((((((v115[(v139 >> 24) + 5] ^ v116[v139 >> 24] ^ v117[v139 >> 24] ^ *v129 ^ v139 ^ (-109 * (v139 >> 24)) ^ 0x89) << 24) ^ 0x87220173) & ~v132 | v132 & 0xDDDDDDDD) ^ 0x10505B60) & ~v131 | v131 & 0xA500) ^ 0x85F09E46) & v70 | v130) ^ 0x64D81DFF;
  v140 = *v18;
  v141 = *v60 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v125) = *(*v18 + v141);
  LODWORD(v123) = *(v134 + v141);
  LODWORD(v113) = *(v134 + v135);
  v142 = (STACK[0x5AD0] + 7);
  v143 = 1864610357 * ((1864610357 * ((v142 ^ v125) & 0x7FFFFFFF)) ^ ((1864610357 * ((v142 ^ v125) & 0x7FFFFFFF)) >> 16));
  v144 = *(&off_1010A0B50 + v21 - 35042) - 1998180927;
  v145 = *(&off_1010A0B50 + (v21 ^ 0x80E8)) - 1005499635;
  v146 = *(&off_1010A0B50 + (v21 ^ 0x9BCA)) - 1469738727;
  LODWORD(v141) = v145[v143 >> 24] ^ v144[(v143 >> 24) + 1] ^ v146[v143 >> 24] ^ *v142 ^ v143 ^ (-113 * ((1864610357 * ((1864610357 * ((v142 ^ v125) & 0x7FFFFFFF)) ^ ((1864610357 * ((v142 ^ v125) & 0x7FFFFFFF)) >> 16))) >> 24));
  v147 = 1864610357 * ((1864610357 * (((LODWORD(STACK[0x5AD0]) + 6) ^ v125) & 0x7FFFFFFF)) ^ ((1864610357 * (((LODWORD(STACK[0x5AD0]) + 6) ^ v125) & 0x7FFFFFFF)) >> 16));
  v148 = 1864610357 * ((1864610357 * (((LODWORD(STACK[0x5AD0]) + 5) ^ v123) & 0x7FFFFFFF)) ^ ((1864610357 * (((LODWORD(STACK[0x5AD0]) + 5) ^ v123) & 0x7FFFFFFF)) >> 16));
  LODWORD(v147) = (v116[v147 >> 24] ^ v115[(v147 >> 24) + 5] ^ v117[v147 >> 24] ^ v147 ^ *(STACK[0x5AD0] + 6) ^ (-109 * BYTE3(v147))) << 8;
  LODWORD(v148) = (v115[(v148 >> 24) + 5] ^ v148 ^ (-109 * BYTE3(v148)) ^ v116[v148 >> 24] ^ v117[v148 >> 24] ^ *(STACK[0x5AD0] + 5)) << 16;
  v149 = 1864610357 * ((1864610357 * (((LODWORD(STACK[0x5AD0]) + 4) ^ v113) & 0x7FFFFFFF)) ^ ((1864610357 * (((LODWORD(STACK[0x5AD0]) + 4) ^ v113) & 0x7FFFFFFF)) >> 16));
  *(v11 + 36) = v141 & 0x89 ^ 0xEDFFBF11 ^ ((((((((-109 * (v149 >> 24)) ^ v149 ^ v115[(v149 >> 24) + 5] ^ v116[v149 >> 24] ^ v117[v149 >> 24] ^ *(STACK[0x5AD0] + 4)) << 24) ^ 0x89A13013) & ~v148 | v148 & 0x5E0000) ^ 0xD10FBE2D) & ~v147 | v147 & 0x7100) ^ 0x3088F948) & (v141 ^ 0xFFFFFF7F);
  v150 = *v60 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v147) = *(*v18 + v150);
  v151 = STACK[0x1D58];
  v152 = 1864610357 * ((1864610357 * ((v147 ^ (v129 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v147 ^ (v129 + 11)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v143) = -113 * ((1864610357 * ((1864610357 * ((v147 ^ (v129 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v147 ^ (v129 + 11)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v152) = v144[(v152 >> 24) + 1] ^ *(v129 + 11) ^ v145[v152 >> 24] ^ v146[v152 >> 24] ^ v152;
  LOBYTE(v116) = v152 ^ ~v143;
  LODWORD(v121) = (v152 ^ v143) & 0x4A;
  v153 = 1864610357 * ((1864610357 * ((v147 ^ (v129 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v147 ^ (v129 + 10)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v153) = (v144[(v153 >> 24) + 1] ^ *(v129 + 10) ^ v145[v153 >> 24] ^ v146[v153 >> 24] ^ (53 * ((53 * (v147 ^ (v129 + 10))) ^ ((1864610357 * ((v147 ^ (v129 + 10)) & 0x7FFFFFFF)) >> 16))) ^ (-113 * ((1864610357 * ((1864610357 * ((v147 ^ (v129 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v147 ^ (v129 + 10)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 8;
  v154 = 1864610357 * ((1864610357 * ((v147 ^ (v129 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v147 ^ (v129 + 9)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v115) = (v144[(v154 >> 24) + 1] ^ *(v129 + 9) ^ v145[v154 >> 24] ^ v146[v154 >> 24] ^ v154 ^ (-113 * BYTE3(v154))) << 16;
  LODWORD(v140) = 1864610357 * ((*(v140 + v150) ^ (v129 + 8)) & 0x7FFFFFFF);
  v155 = 1864610357 * (v140 ^ WORD1(v140));
  *(v11 + 40) = ((((((((v145[v155 >> 24] ^ v144[(v155 >> 24) + 1] ^ v146[v155 >> 24] ^ *(v129 + 8) ^ v155 ^ (-113 * (v155 >> 24))) << 24) ^ 0xAF615726) & ~v115 | v115 & 0x9E0000) ^ 0x9CD00E09) & ~v153 | v153 & 0xA600) ^ 0xE08A9D9A) & (v116 | 0xFFFFFF00) | v121) ^ 0x6C57F9CC;
  v156 = *v18;
  v157 = *v60 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v153) = *(*v18 + v157);
  v158 = 1864610357 * ((1864610357 * ((v153 ^ (v129 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v153 ^ (v129 + 15)) & 0x7FFFFFFF)) >> 16));
  v159 = STACK[0x1D58];
  LODWORD(v143) = v144[(v158 >> 24) + 1] ^ *(v129 + 15) ^ v145[v158 >> 24] ^ v146[v158 >> 24] ^ v158 ^ (-113 * (v158 >> 24));
  v160 = 1864610357 * ((1864610357 * ((v153 ^ (v129 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v153 ^ (v129 + 14)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v160) = (v144[(v160 >> 24) + 1] ^ *(v129 + 14) ^ v145[v160 >> 24] ^ v146[v160 >> 24] ^ v160 ^ (-113 * BYTE3(v160))) << 8;
  LODWORD(v150) = *(*v18 + v150);
  v161 = 1864610357 * ((1864610357 * ((v150 ^ (v129 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v150 ^ (v129 + 13)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v149) = (v144[(v161 >> 24) + 1] ^ *(v129 + 13) ^ v145[v161 >> 24] ^ v146[v161 >> 24] ^ v161 ^ (-113 * BYTE3(v161))) << 16;
  v162 = 1864610357 * ((1864610357 * ((v150 ^ (v129 + 12)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v150 ^ (v129 + 12)) & 0x7FFFFFFF)) >> 16));
  *(v11 + 44) = v143 & 0xAD ^ 0x12A06BFE ^ (((((((v145[v162 >> 24] ^ v144[(v162 >> 24) + 1] ^ v146[v162 >> 24] ^ *(v129 + 12) ^ v162 ^ (-113 * (v162 >> 24))) << 24) ^ 0x9B213D98) & ~v149 | v149 & 0xDE0000) ^ 0x18EEB820) & ~v160 | v160 & 0x7A00) ^ 0x5AA813EA) & (v143 ^ 0xFFFFFFFE);
  v163 = *v18;
  v164 = *v60 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v148) = *(*v18 + v164);
  v165 = 1864610357 * ((1864610357 * ((v148 ^ (v151 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v148 ^ (v151 + 3)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v165) = v144[(v165 >> 24) + 1] ^ *(v151 + 3) ^ v145[v165 >> 24] ^ v146[v165 >> 24] ^ (53 * ((53 * (v148 ^ (v151 + 3))) ^ ((1864610357 * ((v148 ^ (v151 + 3)) & 0x7FFFFFFF)) >> 16))) ^ (-113 * ((1864610357 * ((1864610357 * ((v148 ^ (v151 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v148 ^ (v151 + 3)) & 0x7FFFFFFF)) >> 16))) >> 24));
  LODWORD(v129) = v165 & 6;
  LODWORD(v162) = v165 ^ 0xFFFFFFFB;
  v166 = 1864610357 * ((1864610357 * ((v148 ^ (v151 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v148 ^ (v151 + 2)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v166) = (v144[(v166 >> 24) + 1] ^ *(v151 + 2) ^ v145[v166 >> 24] ^ v146[v166 >> 24] ^ v166 ^ (-113 * BYTE3(v166))) << 8;
  LODWORD(v149) = 1864610357 * ((*(v156 + v164) ^ (v151 + 1)) & 0x7FFFFFFF);
  v167 = 1864610357 * (v149 ^ WORD1(v149));
  LODWORD(v167) = (v145[v167 >> 24] ^ v144[(v167 >> 24) + 1] ^ v146[v167 >> 24] ^ *(v151 + 1) ^ v167 ^ (-113 * BYTE3(v167))) << 16;
  LODWORD(v156) = 1864610357 * ((*(v156 + v157) ^ v151) & 0x7FFFFFFF);
  v168 = 1864610357 * (v156 ^ WORD1(v156));
  *(STACK[0x7000] + 48) = v129 ^ 0x475654FA ^ (((((((v145[v168 >> 24] ^ v144[(v168 >> 24) + 1] ^ v146[v168 >> 24] ^ *v151 ^ v168 ^ (-113 * (v168 >> 24))) << 24) ^ 0xD39E4A0A) & ~v167 | v167 & 0x610000) ^ 0xA506196A) & ~v166 | v166 & 0xAC00) ^ 0xEDC42899) & v162;
  v169 = *(v159 + 7);
  v159 += 7;
  v170 = *v60 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v148) = *(*v18 + v170);
  v171 = 1864610357 * ((1864610357 * ((v148 ^ v159) & 0x7FFFFFFF)) ^ ((1864610357 * ((v148 ^ v159) & 0x7FFFFFFF)) >> 16));
  v172 = *(&off_1010A0B50 + (v21 ^ 0x89F7)) - 579957298;
  v173 = *(&off_1010A0B50 + (v21 ^ 0x9939)) - 287830350;
  v174 = *(&off_1010A0B50 + (v21 ^ 0x86A8)) - 1213441331;
  LODWORD(v164) = (v172[v171 >> 24] ^ v169 ^ v173[v171 >> 24] ^ v174[v171 >> 24] ^ v171 ^ (13 * ((1864610357 * ((1864610357 * ((v148 ^ v159) & 0x7FFFFFFF)) ^ ((1864610357 * ((v148 ^ v159) & 0x7FFFFFFF)) >> 16))) >> 24)));
  LODWORD(v171) = (v172[v171 >> 24] ^ v169 ^ v173[v171 >> 24] ^ v174[v171 >> 24] ^ v171 ^ (13 * ((1864610357 * ((1864610357 * ((v148 ^ v159) & 0x7FFFFFFF)) ^ ((1864610357 * ((v148 ^ v159) & 0x7FFFFFFF)) >> 16))) >> 24))) & 0xD7;
  v175 = 1864610357 * ((1864610357 * ((v148 ^ (v159 - 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v148 ^ (v159 - 1)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v175) = v144[(v175 >> 24) + 1] ^ *(v159 - 1) ^ v145[v175 >> 24] ^ v146[v175 >> 24] ^ (53 * ((53 * (v148 ^ (v159 - 1))) ^ ((1864610357 * ((v148 ^ (v159 - 1)) & 0x7FFFFFFF)) >> 16))) ^ (-113 * ((1864610357 * ((1864610357 * ((v148 ^ (v159 - 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v148 ^ (v159 - 1)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v176 = 1864610357 * ((1864610357 * ((v148 ^ (v159 - 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v148 ^ (v159 - 2)) & 0x7FFFFFFF)) >> 16));
  v177 = *(v159 - 3);
  LODWORD(v176) = (v144[(v176 >> 24) + 1] ^ *(v159 - 2) ^ v145[v176 >> 24] ^ v146[v176 >> 24] ^ v176 ^ (-113 * BYTE3(v176))) << 16;
  LODWORD(v159) = 1864610357 * ((*(v163 + v170) ^ (v159 - 3)) & 0x7FFFFFFF);
  v178 = 1864610357 * (v159 ^ WORD1(v159));
  LODWORD(v175) = v171 ^ 0xB1EA1EA ^ (((((((v144[(v178 >> 24) + 1] ^ v145[v178 >> 24] ^ v146[v178 >> 24] ^ v177 ^ v178 ^ (-113 * (v178 >> 24)) ^ 0x6C) << 24) ^ 0x752EF041) & ~v176 | v176 & 0xD10000) ^ 0x9E869E28) & ~(v175 << 8) | (v175 << 8) & 0x9100) ^ 0x44BFE941) & (v164 ^ 0xFFFFFFEB);
  v179 = STACK[0x7000];
  STACK[0xEB0] = STACK[0x7000];
  *(v179 + 52) = v175;
  v180 = STACK[0x9258];
  v181 = *v18;
  v182 = *v65 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v164) = *(*v18 + v182);
  v183 = 1864610357 * ((1864610357 * ((v164 ^ (v151 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v164 ^ (v151 + 11)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v147) = 13 * ((1864610357 * ((1864610357 * ((v164 ^ (v151 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v164 ^ (v151 + 11)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LOBYTE(v183) = v172[v183 >> 24] ^ *(v151 + 11) ^ v173[v183 >> 24] ^ v174[v183 >> 24] ^ v183;
  v184 = 1864610357 * ((1864610357 * ((v164 ^ (v151 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v164 ^ (v151 + 10)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v170) = *(*v18 + v170);
  LOBYTE(v184) = v172[v184 >> 24] ^ *(v151 + 10) ^ v173[v184 >> 24] ^ v174[v184 >> 24] ^ (53 * ((53 * (v164 ^ (v151 + 10))) ^ ((1864610357 * ((v164 ^ (v151 + 10)) & 0x7FFFFFFF)) >> 16))) ^ (13 * ((1864610357 * ((1864610357 * ((v164 ^ (v151 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v164 ^ (v151 + 10)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v185 = 1864610357 * ((1864610357 * ((v170 ^ (v151 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v170 ^ (v151 + 9)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v185) = (v172[v185 >> 24] ^ *(v151 + 9) ^ v173[v185 >> 24] ^ v174[v185 >> 24] ^ (53 * ((53 * (v170 ^ (v151 + 9))) ^ ((1864610357 * ((v170 ^ (v151 + 9)) & 0x7FFFFFFF)) >> 16))) ^ (13 * ((1864610357 * ((1864610357 * ((v170 ^ (v151 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v170 ^ (v151 + 9)) & 0x7FFFFFFF)) >> 16))) >> 24)));
  v186 = 1864610357 * ((1864610357 * ((v170 ^ (v151 + 8)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v170 ^ (v151 + 8)) & 0x7FFFFFFF)) >> 16));
  *(v11 + 56) = ((((((((v173[v186 >> 24] ^ v172[v186 >> 24] ^ v174[v186 >> 24] ^ *(v151 + 8) ^ v186 ^ (13 * (v186 >> 24))) << 24) ^ 0xCE22804) & ~(v185 << 16) | (v185 << 16) & 0x1D0000) ^ 0x335CF198) & ~(v184 << 8) | (v184 << 8) & 0x2600) ^ 0x51EBAC5C) & (v183 ^ ~v147 | 0xFFFFFF00) | (v183 ^ v147) & 0x3F) ^ 0x1E895C33;
  v187 = STACK[0x9258];
  v188 = *v18;
  v189 = *v65 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v164) = *(*v18 + v189);
  v190 = 1864610357 * ((1864610357 * ((v164 ^ (v151 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v164 ^ (v151 + 15)) & 0x7FFFFFFF)) >> 16));
  v191 = v151 + 15;
  LODWORD(v183) = v172[v190 >> 24] ^ *(v151 + 15) ^ v173[v190 >> 24] ^ v174[v190 >> 24];
  LOBYTE(v177) = *(v151 + 14);
  v192 = 1864610357 * ((1864610357 * ((v164 ^ (v151 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v164 ^ (v151 + 14)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v183) = v183 ^ v190 ^ (13 * (v190 >> 24));
  LODWORD(v189) = 1864610357 * ((*(v181 + v189) ^ (v191 - 2)) & 0x7FFFFFFF);
  v193 = 1864610357 * (v189 ^ WORD1(v189));
  LOBYTE(v192) = v172[v192 >> 24] ^ v177 ^ v173[v192 >> 24] ^ v174[v192 >> 24] ^ v192 ^ (13 * BYTE3(v192));
  LODWORD(v193) = (v173[v193 >> 24] ^ v172[v193 >> 24] ^ v174[v193 >> 24] ^ *(v191 - 2) ^ v193 ^ (13 * BYTE3(v193)));
  LODWORD(v181) = 1864610357 * ((*(v181 + v182) ^ (v191 - 3)) & 0x7FFFFFFF);
  v194 = 1864610357 * (v181 ^ WORD1(v181));
  *(v11 + 60) = v183 & 0xE1 ^ 0x306E05F ^ (((((((v172[v194 >> 24] ^ v173[v194 >> 24] ^ v174[v194 >> 24] ^ *(v191 - 3) ^ v194 ^ (13 * (v194 >> 24)) ^ 2) << 24) ^ 0xDA835404) & ~(v193 << 16) & 0xFF83FFFF | (((v193 >> 2) & 0x1F) << 18)) ^ 0xF1810E08) & ~(v192 << 8) | (v192 << 8) & 0xA500) ^ 0xF8B67512) & (v183 ^ 0xFFFFFF9F);
  v195 = *v65 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v176) = *(*v18 + v195);
  v196 = 1864610357 * ((1864610357 * ((v176 ^ (v180 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v176 ^ (v180 + 3)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v143) = 13 * ((1864610357 * ((1864610357 * ((v176 ^ (v180 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v176 ^ (v180 + 3)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v196) = v172[v196 >> 24] ^ *(v180 + 3) ^ v173[v196 >> 24] ^ v174[v196 >> 24] ^ v196;
  v197 = 1864610357 * ((1864610357 * ((v176 ^ (v180 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v176 ^ (v180 + 2)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v197) = (v172[v197 >> 24] ^ *(v180 + 2) ^ v173[v197 >> 24] ^ v174[v197 >> 24] ^ (53 * ((53 * (v176 ^ (v180 + 2))) ^ ((1864610357 * ((v176 ^ (v180 + 2)) & 0x7FFFFFFF)) >> 16))) ^ (13 * ((1864610357 * ((1864610357 * ((v176 ^ (v180 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v176 ^ (v180 + 2)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 8;
  v198 = 1864610357 * ((1864610357 * ((v176 ^ (v180 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v176 ^ (v180 + 1)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v182) = (v172[v198 >> 24] ^ *(v180 + 1) ^ v173[v198 >> 24] ^ v174[v198 >> 24] ^ v198 ^ (13 * BYTE3(v198))) << 16;
  LODWORD(v188) = 1864610357 * ((*(v188 + v195) ^ v180) & 0x7FFFFFFF);
  v199 = 1864610357 * (v188 ^ WORD1(v188));
  v200 = STACK[0xED0];
  *(v200 + 64) = ((((((((v173[v199 >> 24] ^ v172[v199 >> 24] ^ v174[v199 >> 24] ^ *v180 ^ v199 ^ (13 * (v199 >> 24))) << 24) ^ 0xCED2AEB8) & ~v182 | v182 & 0x2D0000) ^ 0x30944A23) & ~v197 | v197 & 0x1B00) ^ 0x67ADF68C) & (v196 ^ ~v143 | 0xFFFFFF00) | (v196 ^ v143) & 0xE8) ^ 0xA470E606;
  v201 = *v65 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v164) = *(*v18 + v201);
  v202 = 1864610357 * ((1864610357 * ((v164 ^ (v187 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v164 ^ (v187 + 7)) & 0x7FFFFFFF)) >> 16));
  v203 = *(&off_1010A0B50 + (v21 ^ 0x834D)) - 438089530;
  v204 = *(&off_1010A0B50 + (v21 ^ 0x8F33)) - 1052587798;
  v205 = *(&off_1010A0B50 + v21 - 31652) - 1740555023;
  LODWORD(v197) = v203[(v202 >> 24) + 5] ^ *(v187 + 7) ^ v204[(v202 >> 24) + 3] ^ v205[v202 >> 24];
  LODWORD(v119) = v187 + 6;
  LOBYTE(v143) = *(v187 + 6);
  v206 = v187 + 7;
  LODWORD(v187) = -3 * ((1864610357 * ((1864610357 * ((v164 ^ (v187 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v164 ^ (v187 + 7)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v197) = v197 ^ v202;
  LOBYTE(v202) = v197 ^ ~v187;
  LODWORD(v187) = (v197 ^ v187) & 0x52;
  v207 = 1864610357 * ((1864610357 * ((v164 ^ v119) & 0x7FFFFFFF)) ^ ((1864610357 * ((v164 ^ v119) & 0x7FFFFFFF)) >> 16));
  v208 = v207 >> 24;
  LODWORD(v195) = *(*v18 + v195);
  v209 = 1864610357 * ((1864610357 * ((v195 ^ (v206 - 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v195 ^ (v206 - 2)) & 0x7FFFFFFF)) >> 16));
  v210 = 1864610357 * ((1864610357 * ((v195 ^ (v206 - 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v195 ^ (v206 - 3)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v210) = ((v172[v209 >> 24] ^ *(v206 - 2) ^ v173[v209 >> 24] ^ v174[v209 >> 24] ^ v209 ^ (13 * BYTE3(v209))) << 16) | ((v173[v210 >> 24] ^ v172[v210 >> 24] ^ v174[v210 >> 24] ^ *(v206 - 3) ^ v210 ^ (13 * (v210 >> 24))) << 24) | ((v172[v207 >> 24] ^ v143 ^ v207 ^ v173[v208] ^ v174[v208] ^ (13 * v208)) << 8);
  v211 = v11;
  *(v11 + 68) = (((v210 - ((2 * v210) & 0x44C50E00) - 1570601171) ^ 0x34B07E80) & (v202 | 0xFFFFFF00) | v187) ^ 0x89571502;
  v212 = v18;
  v213 = *v18;
  LODWORD(v202) = *(*v18 + (*v65 & 0xFFFFFFFFE6F073DCLL));
  v214 = 1864610357 * ((1864610357 * ((v202 ^ (v180 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v202 ^ (v180 + 11)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v190) = -3 * ((1864610357 * ((1864610357 * ((v202 ^ (v180 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v202 ^ (v180 + 11)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v214) = v203[(v214 >> 24) + 5] ^ *(v180 + 11) ^ v204[(v214 >> 24) + 3] ^ v205[v214 >> 24] ^ v214;
  LODWORD(v172) = (v214 ^ v190) & 0x9C;
  LODWORD(v162) = v214 ^ ~v190 | 0xFFFFFF00;
  v215 = 1864610357 * ((1864610357 * ((v202 ^ (v180 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v202 ^ (v180 + 10)) & 0x7FFFFFFF)) >> 16));
  v216 = 1864610357 * ((1864610357 * ((v202 ^ (v180 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v202 ^ (v180 + 9)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v201) = 1864610357 * ((*(*v18 + v201) ^ (v180 + 8)) & 0x7FFFFFFF);
  v217 = 1864610357 * (v201 ^ WORD1(v201));
  LODWORD(v217) = ((v203[(v216 >> 24) + 5] ^ *(v180 + 9) ^ v204[(v216 >> 24) + 3] ^ v205[v216 >> 24] ^ (53 * ((53 * (v202 ^ (v180 + 9))) ^ ((1864610357 * ((v202 ^ (v180 + 9)) & 0x7FFFFFFF)) >> 16))) ^ (-3 * ((1864610357 * ((1864610357 * ((v202 ^ (v180 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v202 ^ (v180 + 9)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 16) | ((v204[(v217 >> 24) + 3] ^ v203[(v217 >> 24) + 5] ^ v205[v217 >> 24] ^ *(v180 + 8) ^ v217 ^ (-3 * (v217 >> 24))) << 24) | ((v203[(v215 >> 24) + 5] ^ *(v180 + 10) ^ v204[(v215 >> 24) + 3] ^ v205[v215 >> 24] ^ (53 * ((53 * (v202 ^ (v180 + 10))) ^ ((1864610357 * ((v202 ^ (v180 + 10)) & 0x7FFFFFFF)) >> 16))) ^ (-3 * ((1864610357 * ((1864610357 * ((v202 ^ (v180 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v202 ^ (v180 + 10)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 8);
  *(v200 + 72) = (((v217 - ((2 * v217) & 0x4D75000) - 2106873792) ^ 0xAB4B3B23) & v162 | v172) ^ 0xF770FBB0;
  v218 = STACK[0x96B0];
  v219 = *v65 & 0xFFFFFFFFE6F073DCLL;
  v220 = *v18;
  LODWORD(v208) = *(*v18 + v219);
  v221 = 1864610357 * ((1864610357 * ((v208 ^ (v180 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v208 ^ (v180 + 15)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v215) = v203[(v221 >> 24) + 5] ^ *(v180 + 15) ^ v204[(v221 >> 24) + 3] ^ v205[v221 >> 24] ^ v221;
  LOBYTE(v187) = v215 ^ ~(-3 * ((1864610357 * ((1864610357 * ((v208 ^ (v180 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v208 ^ (v180 + 15)) & 0x7FFFFFFF)) >> 16))) >> 24));
  LODWORD(v221) = (v215 ^ (-3 * ((1864610357 * ((1864610357 * ((v208 ^ (v180 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v208 ^ (v180 + 15)) & 0x7FFFFFFF)) >> 16))) >> 24))) & 0x88;
  v222 = 1864610357 * ((1864610357 * ((v208 ^ (v180 + 14)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v208 ^ (v180 + 14)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v213) = *(v213 + v219);
  v223 = 1864610357 * ((1864610357 * ((v213 ^ (v180 + 13)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v213 ^ (v180 + 13)) & 0x7FFFFFFF)) >> 16));
  v224 = 1864610357 * ((1864610357 * ((v213 ^ (v180 + 12)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v213 ^ (v180 + 12)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v180) = ((v203[(v223 >> 24) + 5] ^ *(v180 + 13) ^ v204[(v223 >> 24) + 3] ^ v205[v223 >> 24] ^ v223 ^ (-3 * BYTE3(v223))) << 16) | ((v204[(v224 >> 24) + 3] ^ v203[(v224 >> 24) + 5] ^ v205[v224 >> 24] ^ *(v180 + 12) ^ v224 ^ (-3 * (v224 >> 24))) << 24) | ((v203[(v222 >> 24) + 5] ^ *(v180 + 14) ^ v204[(v222 >> 24) + 3] ^ v205[v222 >> 24] ^ v222 ^ (-3 * BYTE3(v222))) << 8);
  v211[19] = (((v180 - ((2 * v180) & 0xDEE57E00) - 277692422) ^ 0x32297B8D) & (v187 | 0xFFFFFF00) | v221) ^ 0x1C18AD76;
  v225 = v218;
  LODWORD(v174) = *(v220 + v219) ^ v218;
  LODWORD(v221) = *v218;
  LODWORD(v222) = v218 + 3;
  LODWORD(v187) = *(v218 + 3);
  LODWORD(v224) = v218 + 2;
  LOBYTE(v223) = *(v218 + 2);
  v226 = STACK[0x8A58];
  v227 = *v65 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v190) = *(*v18 + v227);
  v228 = 1864610357 * ((1864610357 * ((v190 ^ v222) & 0x7FFFFFFF)) ^ ((1864610357 * ((v190 ^ v222) & 0x7FFFFFFF)) >> 16));
  LODWORD(v119) = -3 * (v228 >> 24);
  LODWORD(v228) = v203[(v228 >> 24) + 5] ^ v187 ^ v204[(v228 >> 24) + 3] ^ v205[v228 >> 24] ^ v228;
  LODWORD(v187) = (v228 ^ v119) & 0xDB;
  LODWORD(v216) = v228 ^ ~v119 | 0xFFFFFF00;
  v229 = 1864610357 * ((1864610357 * ((v190 ^ v224) & 0x7FFFFFFF)) ^ ((1864610357 * ((v190 ^ v224) & 0x7FFFFFFF)) >> 16));
  LODWORD(v219) = 1864610357 * ((*(*v18 + v219) ^ (v225 + 1)) & 0x7FFFFFFF);
  v230 = 1864610357 * (v219 ^ WORD1(v219));
  LODWORD(v230) = (v204[(v230 >> 24) + 3] ^ v203[(v230 >> 24) + 5] ^ v205[v230 >> 24] ^ *(v225 + 1) ^ v230 ^ (-3 * BYTE3(v230))) << 16;
  v231 = 1864610357 * ((1864610357 * (v174 & 0x7FFFFFFF)) ^ ((1864610357 * (v174 & 0x7FFFFFFF)) >> 16));
  LODWORD(v230) = v230 & 0xFFFF00FF | ((v204[(v231 >> 24) + 3] ^ v203[(v231 >> 24) + 5] ^ v205[v231 >> 24] ^ v221 ^ v231 ^ (-3 * (v231 >> 24))) << 24) | ((v203[(v229 >> 24) + 5] ^ v223 ^ v204[(v229 >> 24) + 3] ^ v205[v229 >> 24] ^ v229 ^ (-3 * BYTE3(v229))) << 8);
  v211[20] = (((v230 - ((2 * v230) & 0xC6D85000) - 479451099) ^ 0x1F9F0201) & v216 | v187) ^ 0xC941B832;
  v232 = *v18;
  LODWORD(v208) = *(*v18 + (*v65 & 0xFFFFFFFFE6F073DCLL));
  LODWORD(v187) = *(*v18 + v227);
  v233 = (STACK[0x96B0] + 7);
  v234 = 1864610357 * ((1864610357 * ((v233 ^ v208) & 0x7FFFFFFF)) ^ ((1864610357 * ((v233 ^ v208) & 0x7FFFFFFF)) >> 16));
  LODWORD(v202) = -99 * ((1864610357 * ((1864610357 * ((v233 ^ v208) & 0x7FFFFFFF)) ^ ((1864610357 * ((v233 ^ v208) & 0x7FFFFFFF)) >> 16))) >> 24);
  v235 = *(&off_1010A0B50 + v21 - 35153) - 24470054;
  v236 = *(&off_1010A0B50 + (v21 ^ 0x863B)) - 1849853534;
  v237 = *(&off_1010A0B50 + v21 - 35417) - 553847662;
  LODWORD(v229) = v236[v234 >> 24] ^ v235[(v234 >> 24) + 2] ^ v237[v234 >> 24] ^ *v233 ^ v234;
  LOBYTE(v190) = v229 ^ ~v202;
  LODWORD(v223) = (v229 ^ v202) & 0x34;
  v238 = 1864610357 * ((1864610357 * (((LODWORD(STACK[0x96B0]) + 6) ^ v208) & 0x7FFFFFFF)) ^ ((1864610357 * (((LODWORD(STACK[0x96B0]) + 6) ^ v208) & 0x7FFFFFFF)) >> 16));
  v239 = STACK[0x96B0];
  v240 = 1864610357 * ((1864610357 * (((LODWORD(STACK[0x96B0]) + 5) ^ v208) & 0x7FFFFFFF)) ^ ((1864610357 * (((LODWORD(STACK[0x96B0]) + 5) ^ v208) & 0x7FFFFFFF)) >> 16));
  v241 = 1864610357 * ((1864610357 * (((LODWORD(STACK[0x96B0]) + 4) ^ v187) & 0x7FFFFFFF)) ^ ((1864610357 * (((LODWORD(STACK[0x96B0]) + 4) ^ v187) & 0x7FFFFFFF)) >> 16));
  LODWORD(v203) = ((v203[(v240 >> 24) + 5] ^ v240 ^ (-3 * BYTE3(v240)) ^ v204[(v240 >> 24) + 3] ^ v205[v240 >> 24] ^ *(v233 - 2)) << 16) | (((-3 * (v241 >> 24)) ^ v241 ^ v203[(v241 >> 24) + 5] ^ v204[(v241 >> 24) + 3] ^ v205[v241 >> 24] ^ *(v233 - 3)) << 24) | ((v204[(v238 >> 24) + 3] ^ v203[(v238 >> 24) + 5] ^ v205[v238 >> 24] ^ v238 ^ *(v233 - 1) ^ (-3 * BYTE3(v238))) << 8);
  STACK[0xEA0] = v211;
  v211[21] = (((v203 - ((2 * v203) & 0x67695C00) - 1280004575) ^ 0xF5C038EA) & (v190 | 0xFFFFFF00) | v223) ^ 0xEE979D14;
  v242 = STACK[0x8A58];
  v243 = *v65 & 0xFFFFFFFFE6F073DCLL;
  v244 = *v18;
  LODWORD(v202) = *(*v18 + v243);
  v245 = 1864610357 * ((1864610357 * ((v202 ^ (v239 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v202 ^ (v239 + 11)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v190) = -99 * ((1864610357 * ((1864610357 * ((v202 ^ (v239 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v202 ^ (v239 + 11)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v245) = v235[(v245 >> 24) + 2] ^ v239[11] ^ v236[v245 >> 24] ^ v237[v245 >> 24] ^ v245;
  LOBYTE(v143) = v245 ^ ~v190;
  LODWORD(v241) = (v245 ^ v190) & 0x65;
  v246 = 1864610357 * ((1864610357 * ((v202 ^ (v239 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v202 ^ (v239 + 10)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v232) = *(v232 + v243);
  v247 = 1864610357 * ((1864610357 * ((v232 ^ (v239 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v232 ^ (v239 + 9)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v247) = (v235[(v247 >> 24) + 2] ^ v239[9] ^ v236[v247 >> 24] ^ v237[v247 >> 24] ^ (53 * ((53 * (v232 ^ (v239 + 9))) ^ ((1864610357 * ((v232 ^ (v239 + 9)) & 0x7FFFFFFF)) >> 16))) ^ (-99 * ((1864610357 * ((1864610357 * ((v232 ^ (v239 + 9)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v232 ^ (v239 + 9)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 16;
  v248 = 1864610357 * ((1864610357 * ((v232 ^ (v239 + 8)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v232 ^ (v239 + 8)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v248) = v247 & 0xFFFF00FF | ((v236[v248 >> 24] ^ v235[(v248 >> 24) + 2] ^ v237[v248 >> 24] ^ v239[8] ^ v248 ^ (-99 * (v248 >> 24))) << 24) | ((v235[(v246 >> 24) + 2] ^ v239[10] ^ v236[v246 >> 24] ^ v237[v246 >> 24] ^ (53 * ((53 * (v202 ^ (v239 + 10))) ^ ((1864610357 * ((v202 ^ (v239 + 10)) & 0x7FFFFFFF)) >> 16))) ^ (-99 * ((1864610357 * ((1864610357 * ((v202 ^ (v239 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v202 ^ (v239 + 10)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 8);
  *(STACK[0xEB0] + 88) = (((v248 - ((2 * v248) & 0xA6A62E00) + 1397954451) ^ 0x7E2BDC09) & (v143 | 0xFFFFFF00) | v241) ^ 0xA2B3039;
  v249 = v239[15];
  v250 = v239 + 15;
  v251 = *v65 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v240) = *(*v18 + v251);
  LODWORD(v202) = v239 + 14;
  LOBYTE(v190) = v239[14];
  v252 = 1864610357 * ((1864610357 * ((v240 ^ (v239 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v240 ^ (v239 + 15)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v246) = v235[(v252 >> 24) + 2] ^ v249 ^ v236[v252 >> 24] ^ v237[v252 >> 24] ^ v252;
  LODWORD(v22) = (v246 ^ (-99 * (v252 >> 24))) & 0x35;
  LODWORD(v252) = v246 ^ ~(-99 * BYTE3(v252)) | 0xFFFFFF00;
  v253 = 1864610357 * ((1864610357 * ((v240 ^ v202) & 0x7FFFFFFF)) ^ ((1864610357 * ((v240 ^ v202) & 0x7FFFFFFF)) >> 16));
  LODWORD(v247) = 1864610357 * ((*(*v18 + v243) ^ (v250 - 2)) & 0x7FFFFFFF);
  v254 = 1864610357 * (v247 ^ WORD1(v247));
  LODWORD(v243) = 1864610357 * ((*(v244 + v243) ^ (v250 - 3)) & 0x7FFFFFFF);
  v255 = 1864610357 * (v243 ^ WORD1(v243));
  LODWORD(v255) = ((v236[v254 >> 24] ^ v235[(v254 >> 24) + 2] ^ v237[v254 >> 24] ^ *(v250 - 2) ^ v254 ^ (-99 * BYTE3(v254))) << 16) | ((v236[v255 >> 24] ^ v235[(v255 >> 24) + 2] ^ v237[v255 >> 24] ^ *(v250 - 3) ^ v255 ^ (-99 * (v255 >> 24))) << 24) | ((v235[(v253 >> 24) + 2] ^ v190 ^ v236[v253 >> 24] ^ v237[v253 >> 24] ^ v253 ^ (-99 * BYTE3(v253))) << 8);
  v211[23] = (((v255 - ((2 * v255) & 0xAAC6CE00) + 1432577878) ^ 0x1251969C) & v252 | v22) ^ 0x57410185;
  LODWORD(v255) = v242;
  LODWORD(v22) = v242;
  v256 = *v18;
  LODWORD(v244) = *(*v18 + v251) ^ v242;
  LODWORD(v250) = *v242;
  LODWORD(v253) = *(v242 + 3);
  LOBYTE(v254) = *(v242 + 2);
  LOBYTE(v249) = *(v242 + 1);
  v257 = STACK[0x7000];
  v258 = v65;
  LODWORD(v240) = *(v256 + (*v65 & 0xFFFFFFFFE6F073DCLL));
  v259 = 1864610357 * ((1864610357 * ((v240 ^ (v242 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v240 ^ (v242 + 3)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v253) = v235[(v259 >> 24) + 2] ^ v253 ^ v236[v259 >> 24] ^ v237[v259 >> 24] ^ v259;
  LOBYTE(v241) = v253 ^ ~(-99 * BYTE3(v259));
  LODWORD(v259) = (v253 ^ (-99 * (v259 >> 24))) & 0x11;
  v260 = 1864610357 * ((1864610357 * ((v240 ^ (v255 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v240 ^ (v255 + 2)) & 0x7FFFFFFF)) >> 16));
  v261 = 1864610357 * ((1864610357 * ((v240 ^ (v22 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v240 ^ (v22 + 1)) & 0x7FFFFFFF)) >> 16));
  v262 = 1864610357 * ((1864610357 * (v244 & 0x7FFFFFFF)) ^ ((1864610357 * (v244 & 0x7FFFFFFF)) >> 16));
  LODWORD(v261) = ((v235[(v261 >> 24) + 2] ^ v249 ^ v236[v261 >> 24] ^ v237[v261 >> 24] ^ v261 ^ (-99 * BYTE3(v261))) << 16) | ((v236[v262 >> 24] ^ v235[(v262 >> 24) + 2] ^ v237[v262 >> 24] ^ v250 ^ v262 ^ (-99 * (v262 >> 24))) << 24) | ((v235[(v260 >> 24) + 2] ^ v254 ^ v236[v260 >> 24] ^ v237[v260 >> 24] ^ v260 ^ (-99 * BYTE3(v260))) << 8);
  *(v257 + 96) = (((v261 - ((2 * v261) & 0xCF9D1200) + 1741588749) ^ 0x2304A9E3) & (v241 | 0xFFFFFF00) | v259) ^ 0xDC037CB9;
  v263 = *v65 & 0xFFFFFFFFE6F073DCLL;
  v264 = *v212;
  LODWORD(v143) = *(*v212 + v263);
  v265 = 1864610357 * ((1864610357 * ((v143 ^ (v226 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v143 ^ (v226 + 7)) & 0x7FFFFFFF)) >> 16));
  v266 = *(&off_1010A0B50 + (v21 ^ 0x8C03)) - 587684454;
  v267 = *(&off_1010A0B50 + v21 - 35483) - 1759933886;
  v268 = *(&off_1010A0B50 + (v21 ^ 0x8A5A)) - 1844722423;
  LODWORD(v254) = 107 * ((1864610357 * ((1864610357 * ((v143 ^ (v226 + 7)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v143 ^ (v226 + 7)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v265) = v266[(v265 >> 24) + 4] ^ v226[7] ^ v267[(v265 >> 24) + 3] ^ v268[v265 >> 24] ^ v265;
  LOBYTE(v202) = v265 ^ ~v254;
  LODWORD(v254) = (v265 ^ v254) & 0x54;
  v269 = 1864610357 * ((1864610357 * ((v143 ^ (v226 + 6)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v143 ^ (v226 + 6)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v256) = *(v256 + v263);
  v270 = 1864610357 * ((1864610357 * ((v256 ^ (v226 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v256 ^ (v226 + 5)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v270) = v235[(v270 >> 24) + 2] ^ v226[5] ^ v236[v270 >> 24] ^ v237[v270 >> 24] ^ (53 * ((53 * (v256 ^ (v226 + 5))) ^ ((1864610357 * ((v256 ^ (v226 + 5)) & 0x7FFFFFFF)) >> 16))) ^ (-99 * ((1864610357 * ((1864610357 * ((v256 ^ (v226 + 5)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v256 ^ (v226 + 5)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v271 = 1864610357 * ((1864610357 * ((v256 ^ (v226 + 4)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v256 ^ (v226 + 4)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v230) = (v270 << 16) | ((v236[v271 >> 24] ^ v235[(v271 >> 24) + 2] ^ v237[v271 >> 24] ^ v226[4] ^ v271 ^ (-99 * (v271 >> 24))) << 24) | ((v235[(v269 >> 24) + 2] ^ v226[6] ^ v236[v269 >> 24] ^ v237[v269 >> 24] ^ v269 ^ (-99 * BYTE3(v269))) << 8);
  v272 = STACK[0xED0];
  *(v272 + 100) = (((v230 - ((2 * v230) & 0xBC5F9C00) + 1580191307) ^ 0x1E1EFBE0) & (v202 | 0xFFFFFF00) | v254) ^ 0x119CF941;
  v273 = *v65 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v271) = *(*v212 + v273);
  v274 = 1864610357 * ((1864610357 * ((v271 ^ (v226 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v271 ^ (v226 + 11)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v254) = 107 * ((1864610357 * ((1864610357 * ((v271 ^ (v226 + 11)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v271 ^ (v226 + 11)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v274) = v266[(v274 >> 24) + 4] ^ v226[11] ^ v267[(v274 >> 24) + 3] ^ v268[v274 >> 24] ^ v274;
  v275 = 1864610357 * ((1864610357 * ((v271 ^ (v226 + 10)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v271 ^ (v226 + 10)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v236) = 1864610357 * ((*(*v212 + v263) ^ (v226 + 9)) & 0x7FFFFFFF);
  v276 = 1864610357 * (v236 ^ (v236 >> 16));
  LODWORD(v237) = 1864610357 * ((*(v264 + v263) ^ (v226 + 8)) & 0x7FFFFFFF);
  v277 = 1864610357 * (v237 ^ (v237 >> 16));
  LODWORD(v276) = ((v267[(v276 >> 24) + 3] ^ v266[(v276 >> 24) + 4] ^ v268[v276 >> 24] ^ v226[9] ^ v276 ^ (107 * BYTE3(v276))) << 16) | ((v267[(v277 >> 24) + 3] ^ v266[(v277 >> 24) + 4] ^ v268[v277 >> 24] ^ v226[8] ^ v277 ^ (107 * (v277 >> 24))) << 24) | ((v266[(v275 >> 24) + 4] ^ v226[10] ^ v267[(v275 >> 24) + 3] ^ v268[v275 >> 24] ^ v275 ^ (107 * BYTE3(v275))) << 8);
  *(STACK[0xEC0] + 104) = (((v276 - ((2 * v276) & 0x56465E00) + 723726260) ^ 0xF7C6F7BF) & (v274 ^ ~v254 | 0xFFFFFF00) | (v274 ^ v254) & 0xF4) ^ 0x3AAFF231;
  v278 = v226[15];
  v279 = v226 + 15;
  v280 = *v212;
  LODWORD(v277) = *(*v212 + (*v258 & 0xFFFFFFFFE6F073DCLL));
  LODWORD(v263) = v226 + 14;
  LOBYTE(v264) = v226[14];
  LODWORD(v276) = v226 + 13;
  LOBYTE(v274) = v226[13];
  v281 = 1864610357 * ((1864610357 * ((v277 ^ (v226 + 15)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v277 ^ (v226 + 15)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v254) = 107 * (v281 >> 24);
  LODWORD(v281) = v266[(v281 >> 24) + 4] ^ v278 ^ v267[(v281 >> 24) + 3] ^ v268[v281 >> 24] ^ v281;
  v282 = 1864610357 * ((1864610357 * ((v277 ^ v263) & 0x7FFFFFFF)) ^ ((1864610357 * ((v277 ^ v263) & 0x7FFFFFFF)) >> 16));
  v283 = *(v279 - 3);
  LOBYTE(v282) = v266[(v282 >> 24) + 4] ^ v264 ^ v267[(v282 >> 24) + 3] ^ v268[v282 >> 24] ^ (53 * ((53 * (v277 ^ v263)) ^ ((1864610357 * ((v277 ^ v263) & 0x7FFFFFFF)) >> 16))) ^ (107 * ((1864610357 * ((1864610357 * ((v277 ^ v263) & 0x7FFFFFFF)) ^ ((1864610357 * ((v277 ^ v263) & 0x7FFFFFFF)) >> 16))) >> 24));
  v284 = 1864610357 * ((1864610357 * ((v277 ^ v276) & 0x7FFFFFFF)) ^ ((1864610357 * ((v277 ^ v276) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v263) = v266[(v284 >> 24) + 4] ^ v274;
  v285 = STACK[0x32E8];
  LODWORD(v279) = 1864610357 * ((*(*v212 + v273) ^ (v279 - 3)) & 0x7FFFFFFF);
  v286 = 1864610357 * (v279 ^ (v279 >> 16));
  LODWORD(v286) = ((v263 ^ v267[(v284 >> 24) + 3] ^ v268[v284 >> 24] ^ v284 ^ (107 * BYTE3(v284))) << 16) | ((v267[(v286 >> 24) + 3] ^ v266[(v286 >> 24) + 4] ^ v268[v286 >> 24] ^ v283 ^ v286 ^ (107 * (v286 >> 24))) << 24) | (v282 << 8);
  *(v272 + 108) = (((v286 - ((2 * v286) & 0xB8D4D600) - 597005346) ^ 0x8645464B) & (v281 ^ ~v254 | 0xFFFFFF00) | (v281 ^ v254) & 0x6A) ^ 0x24F52C26;
  v287 = *v258 & 0xFFFFFFFFE6F073DCLL;
  v288 = *v212;
  LODWORD(v282) = *(*v212 + v287);
  v289 = 1864610357 * ((1864610357 * ((v282 ^ (v285 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v282 ^ (v285 + 3)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v273) = 107 * ((1864610357 * ((1864610357 * ((v282 ^ (v285 + 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v282 ^ (v285 + 3)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LOBYTE(v289) = v266[(v289 >> 24) + 4] ^ v285[3] ^ v267[(v289 >> 24) + 3] ^ v268[v289 >> 24] ^ v289;
  LOBYTE(v269) = v289 ^ ~v273;
  LODWORD(v289) = (v289 ^ v273) & 0x3F;
  LODWORD(v273) = v269 | 0xFFFFFF00;
  v290 = 1864610357 * ((1864610357 * ((v282 ^ (v285 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v282 ^ (v285 + 2)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v280) = *(v280 + v287);
  v291 = 1864610357 * ((1864610357 * ((v280 ^ (v285 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v280 ^ (v285 + 1)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v291) = (v266[(v291 >> 24) + 4] ^ v285[1] ^ v267[(v291 >> 24) + 3] ^ v268[v291 >> 24] ^ (53 * ((53 * (v280 ^ (v285 + 1))) ^ ((1864610357 * ((v280 ^ (v285 + 1)) & 0x7FFFFFFF)) >> 16))) ^ (107 * ((1864610357 * ((1864610357 * ((v280 ^ (v285 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v280 ^ (v285 + 1)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 16;
  v292 = 1864610357 * ((1864610357 * ((v280 ^ v285) & 0x7FFFFFFF)) ^ ((1864610357 * ((v280 ^ v285) & 0x7FFFFFFF)) >> 16));
  LODWORD(v292) = v291 & 0xFFFF00FF | ((v267[(v292 >> 24) + 3] ^ v266[(v292 >> 24) + 4] ^ v268[v292 >> 24] ^ *v285 ^ v292 ^ (107 * (v292 >> 24))) << 24) | ((v266[(v290 >> 24) + 4] ^ v285[2] ^ v267[(v290 >> 24) + 3] ^ v268[v290 >> 24] ^ (53 * ((53 * (v282 ^ (v285 + 2))) ^ ((1864610357 * ((v282 ^ (v285 + 2)) & 0x7FFFFFFF)) >> 16))) ^ (107 * ((1864610357 * ((1864610357 * ((v282 ^ (v285 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v282 ^ (v285 + 2)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 8);
  v293 = STACK[0xEA0];
  v293[28] = (((v292 - ((2 * v292) & 0xA47A8600) - 767736869) ^ 0xE778DC1B) & v273 | v289) ^ 0xA959BD22;
  v294 = v285[7];
  v285 += 7;
  v295 = *v258 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v277) = *(*v212 + v295);
  v296 = 1864610357 * ((1864610357 * ((v277 ^ v285) & 0x7FFFFFFF)) ^ ((1864610357 * ((v277 ^ v285) & 0x7FFFFFFF)) >> 16));
  v297 = STACK[0xE70];
  v298 = STACK[0xE90];
  v299 = STACK[0xE80];
  LODWORD(v270) = 51 * ((1864610357 * ((1864610357 * ((v277 ^ v285) & 0x7FFFFFFF)) ^ ((1864610357 * ((v277 ^ v285) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v296) = *((v296 >> 24) + STACK[0xE70] + 1) ^ v294 ^ *(STACK[0xE90] + (v296 >> 24)) ^ *(STACK[0xE80] + (v296 >> 24)) ^ v296;
  LOBYTE(v291) = v296 ^ ~(51 * ((1864610357 * ((1864610357 * ((v277 ^ v285) & 0x7FFFFFFF)) ^ ((1864610357 * ((v277 ^ v285) & 0x7FFFFFFF)) >> 16))) >> 24));
  v300 = 1864610357 * ((1864610357 * ((v277 ^ (v285 - 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v277 ^ (v285 - 1)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v300) = v266[(v300 >> 24) + 4] ^ *(v285 - 1) ^ v267[(v300 >> 24) + 3] ^ v268[v300 >> 24] ^ v300 ^ (107 * (v300 >> 24));
  LODWORD(v290) = 1864610357 * ((*(*v212 + v287) ^ (v285 - 2)) & 0x7FFFFFFF);
  v301 = 1864610357 * (v290 ^ WORD1(v290));
  LOBYTE(v301) = v267[(v301 >> 24) + 3] ^ v266[(v301 >> 24) + 4] ^ v268[v301 >> 24] ^ *(v285 - 2) ^ v301 ^ (107 * BYTE3(v301));
  v302 = 1864610357 * ((1864610357 * ((*(v288 + v287) ^ (v285 - 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((*(v288 + v287) ^ (v285 - 3)) & 0x7FFFFFFFu)) >> 16));
  LODWORD(v288) = v268[v302 >> 24] ^ *(v285 - 3);
  v303 = STACK[0x32E8];
  LODWORD(v301) = (v301 << 16) | ((v267[(v302 >> 24) + 3] ^ v266[(v302 >> 24) + 4] ^ v288 ^ v302 ^ (107 * (v302 >> 24))) << 24) | (v300 << 8);
  *(v257 + 116) = (((v301 - ((2 * v301) & 0xAECE1C00) + 1466371675) ^ 0xA4773910) & (v291 | 0xFFFFFF00) | (v296 ^ v270) & 0xB4) ^ 0xDCE74A5;
  v304 = *(v303 + 11);
  v303 += 11;
  v305 = *v212;
  LODWORD(v288) = *(*v212 + (*v258 & 0xFFFFFFFFE6F073DCLL));
  v306 = 1864610357 * ((1864610357 * ((v288 ^ v303) & 0x7FFFFFFF)) ^ ((1864610357 * ((v288 ^ v303) & 0x7FFFFFFF)) >> 16));
  LODWORD(v301) = *((v306 >> 24) + v297 + 1) ^ v304 ^ *(v298 + (v306 >> 24)) ^ *(v299 + (v306 >> 24)) ^ v306;
  LOBYTE(v266) = v301 ^ ~(51 * ((1864610357 * ((1864610357 * ((v288 ^ v303) & 0x7FFFFFFF)) ^ ((1864610357 * ((v288 ^ v303) & 0x7FFFFFFF)) >> 16))) >> 24));
  LODWORD(v306) = (v301 ^ (51 * ((1864610357 * ((1864610357 * ((v288 ^ v303) & 0x7FFFFFFF)) ^ ((1864610357 * ((v288 ^ v303) & 0x7FFFFFFF)) >> 16))) >> 24))) & 0x61;
  v307 = 1864610357 * ((1864610357 * ((v288 ^ (v303 - 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v288 ^ (v303 - 1)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v307) = *((v307 >> 24) + v297 + 1) ^ *(v303 - 1) ^ *(v298 + (v307 >> 24)) ^ *(v299 + (v307 >> 24)) ^ (53 * ((53 * (v288 ^ (v303 - 1))) ^ ((1864610357 * ((v288 ^ (v303 - 1)) & 0x7FFFFFFF)) >> 16))) ^ (51 * ((1864610357 * ((1864610357 * ((v288 ^ (v303 - 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v288 ^ (v303 - 1)) & 0x7FFFFFFF)) >> 16))) >> 24));
  v308 = 1864610357 * ((1864610357 * ((v288 ^ (v303 - 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v288 ^ (v303 - 2)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v296) = *((v308 >> 24) + v297 + 1) ^ *(v303 - 2) ^ *(v298 + (v308 >> 24)) ^ *(v299 + (v308 >> 24));
  v309 = *(v303 - 3);
  LODWORD(v303) = 1864610357 * ((*(*v212 + v295) ^ (v303 - 3)) & 0x7FFFFFFF);
  v310 = 1864610357 * (v303 ^ WORD1(v303));
  LODWORD(v267) = *(v298 + (v310 >> 24)) ^ *((v310 >> 24) + v297 + 1) ^ *(v299 + (v310 >> 24)) ^ v309;
  LODWORD(v295) = v310 ^ (51 * (v310 >> 24));
  v311 = STACK[0x32E8];
  LODWORD(v295) = ((v296 ^ v308 ^ (51 * BYTE3(v308))) << 16) | ((v267 ^ v295) << 24) | (v307 << 8);
  v293[30] = (((v295 - ((2 * v295) & 0x8D225800) - 963564394) ^ 0x71413508) & (v266 | 0xFFFFFF00) | v306) ^ 0x32BBE40E;
  v312 = *(v311 + 15);
  v311 += 15;
  v313 = *v258 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v306) = *(*v212 + v313);
  v314 = 1864610357 * ((1864610357 * ((v306 ^ v311) & 0x7FFFFFFF)) ^ ((1864610357 * ((v306 ^ v311) & 0x7FFFFFFF)) >> 16));
  LODWORD(v266) = 51 * ((1864610357 * ((1864610357 * ((v306 ^ v311) & 0x7FFFFFFF)) ^ ((1864610357 * ((v306 ^ v311) & 0x7FFFFFFF)) >> 16))) >> 24);
  LODWORD(v307) = *((v314 >> 24) + v297 + 1) ^ v312 ^ *(v298 + (v314 >> 24)) ^ *(v299 + (v314 >> 24)) ^ v314;
  v315 = 1864610357 * ((1864610357 * ((v306 ^ (v311 - 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v306 ^ (v311 - 1)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v305) = *(v305 + v313);
  v316 = 1864610357 * ((1864610357 * ((v305 ^ (v311 - 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v305 ^ (v311 - 2)) & 0x7FFFFFFF)) >> 16));
  v317 = 1864610357 * ((1864610357 * ((v305 ^ (v311 - 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v305 ^ (v311 - 3)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v317) = ((*((v316 >> 24) + v297 + 1) ^ *(v311 - 2) ^ *(v298 + (v316 >> 24)) ^ *(v299 + (v316 >> 24)) ^ v316 ^ (51 * ((1864610357 * ((1864610357 * ((v305 ^ (v311 - 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v305 ^ (v311 - 2)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 16) | ((*(v298 + (v317 >> 24)) ^ *((v317 >> 24) + v297 + 1) ^ *(v299 + (v317 >> 24)) ^ *(v311 - 3) ^ v317 ^ (51 * ((1864610357 * ((1864610357 * ((v305 ^ (v311 - 3)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v305 ^ (v311 - 3)) & 0x7FFFFFFF)) >> 16))) >> 24))) << 24) | ((*((v315 >> 24) + v297 + 1) ^ *(v311 - 1) ^ *(v298 + (v315 >> 24)) ^ *(v299 + (v315 >> 24)) ^ v315 ^ (51 * BYTE3(v315))) << 8);
  v293[31] = (((v317 - ((2 * v317) & 0x8DBFB200) - 958408417) ^ 0xFD512916) & (v307 ^ ~v266 | 0xFFFFFF00) | (v307 ^ v266) & 0xF6) ^ 0x98317274;
  v318 = STACK[0xF10];
  LODWORD(STACK[0x866C]) = -371865839;
  return (*(STACK[0xF18] + 8 * (v318 - 2457)))();
}

uint64_t sub_1004C0998@<X0>(unsigned int a1@<W0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, int a6@<W5>, char a7@<W6>, int a8@<W7>, uint64_t *a9@<X8>)
{
  v17 = *(STACK[0xF18] + 8 * v16);
  v18 = *a9;
  v19 = (v18 + (v10 - 350385979));
  v20 = ((*(*v11 + (*v13 & a1)) ^ v19) & 0x7FFFFFFF) * a2;
  v21 = (v20 ^ HIWORD(v20)) * a2;
  *v19 = *(a4 + (v21 >> 24)) ^ HIBYTE(v15) ^ *(v9 + (v21 >> 24)) ^ *((v21 >> 24) + v14 + 1) ^ v21 ^ (BYTE3(v21) * a3) ^ 0x55;
  v22 = (v18 + (v10 - 350385978));
  v23 = ((*(*v11 + (*STACK[0xE58] & a1)) ^ v22) & 0x7FFFFFFF) * a2;
  v24 = (v23 ^ HIWORD(v23)) * a2;
  *v22 = *(a4 + (v24 >> 24)) ^ BYTE2(v15) ^ *(v9 + (v24 >> 24)) ^ *((v24 >> 24) + v14 + 1) ^ v24 ^ (BYTE3(v24) * a3) ^ a5;
  v25 = (v18 + (v10 + a6));
  LODWORD(v24) = ((*(*v11 + (*STACK[0xE58] & a1)) ^ v25) & 0x7FFFFFFF) * a2;
  v26 = (v24 ^ WORD1(v24)) * a2;
  v27 = STACK[0xE58];
  *v25 = *(a4 + (v26 >> 24)) ^ BYTE1(v15) ^ *(v9 + (v26 >> 24)) ^ *((v26 >> 24) + v14 + 1) ^ v26 ^ (BYTE3(v26) * a3) ^ a7;
  v28 = (v18 + (v10 + a8));
  LODWORD(v25) = ((*(*v11 + (*v27 & a1)) ^ v28) & 0x7FFFFFFF) * a2;
  v29 = (v25 ^ (v25 >> 16)) * a2;
  *v28 = v15 ^ *(a4 + (v29 >> 24)) ^ *(v9 + (v29 >> 24)) ^ *((v29 >> 24) + v14 + 1) ^ v29 ^ (BYTE3(v29) * a3) ^ v12;
  return v17();
}

uint64_t sub_1004C0C20(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v21 = *(v8 + (v10 + v19)) ^ v11;
  v22 = v20;
  v23 = (((*(v8 + (v19 - 417548130)) ^ v11) << 16) | (*(v8 + (v19 - 417548129)) << 24) | v21 | ((*(v8 + (v19 - 417548131)) ^ v11) << 8)) ^ 0x5F000000;
  v24 = v23 - 2 * (v23 & 0x69D5C715 ^ v21 & 4);
  v25 = (v19 ^ 0xD6DAB859) & (2 * (v19 & 0x671CB89C)) ^ v19 & 0x671CB89C;
  v26 = ((2 * (v19 ^ 0x5AD2A859)) ^ 0x7B9C2188) & (v19 ^ 0x5AD2A859) ^ (2 * (v19 ^ 0x5AD2A859)) & v17;
  v27 = v26 ^ 0x84421045;
  v28 = (v26 ^ 0x38840080) & (4 * v25) ^ v25;
  v29 = ((4 * v27) ^ 0xF7384314) & v27 ^ (4 * v27) & 0xBDCE10C4;
  v30 = v28 ^ 0xBDCE10C5 ^ (v29 ^ 0xB5080000) & (16 * v28);
  v31 = (16 * (v29 ^ 0x8C610C1)) & v17 ^ a3 ^ ((16 * (v29 ^ 0x8C610C1)) ^ a1) & (v29 ^ 0x8C610C1);
  v32 = (v30 << 8) & v12 ^ v30 ^ ((v30 << 8) ^ a6) & v31;
  *(v22 + 4 * (v15 ^ ((v19 ^ (2 * ((v32 << 16) & a8 ^ v32 ^ ((v32 << 16) ^ v14) & ((v31 << 8) & a8 ^ v13 ^ ((v31 << 8) ^ a7) & v31)))) >> 2))) = v24 - 371865839;
  return (*(STACK[0xF18] + 8 * ((((v19 + v16) < 0x40) * v18) ^ v9)))();
}

uint64_t sub_1004C0DF0(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = v5 < v6;
  *(a5 + (v9 + a2)) = v8;
  if (v11 == a2 + v10 < v6)
  {
    v11 = a2 + v10 < v5;
  }

  return (*(STACK[0xF18] + 8 * ((v11 * a1) ^ v7)))();
}

uint64_t sub_1004C0EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>)
{
  LODWORD(STACK[0xB264]) = a7;
  STACK[0xF98] = STACK[0xB258];
  return (*(STACK[0xF18] + 8 * (v7 - 30742 + ((v7 + 1194) | 0x833B))))(a1, a2, a3, a4, a5, a6, &STACK[0xA237]);
}

uint64_t sub_1004C114C()
{
  v1 = STACK[0xF18];
  STACK[0x76F8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 - 123802481) & 0x7619FFF ^ 0x808B) + v0)))();
}

uint64_t sub_1004C1248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = STACK[0xE30];
  v6 = LODWORD(STACK[0xE30]) + 921051434;
  LODWORD(STACK[0xE40]) = *(*STACK[0xE50] + ((LODWORD(STACK[0xE30]) - 1267956461) & *STACK[0xE58]));
  v7 = *(STACK[0xF18] + 8 * ((63786 * (v5 < 0x576433EC)) ^ (v5 + 921051437)));
  LODWORD(STACK[0xE60]) = v6;
  v8 = (v6 - 925300612) & 0x3726BDEF;
  LODWORD(STACK[0xD50]) = v8;
  LODWORD(STACK[0xE30]) = v8 - 594130798;
  return v7(a1, 1337, a3, a4, a5, 117670337);
}

uint64_t sub_1004C1320()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v1 + 8 * (v0 - 3210)))(v2);
}

uint64_t sub_1004C13FC()
{
  v2 = *(STACK[0x3CF8] - 0x7E666516A39B34A6);
  v3 = STACK[0x3FE8];
  v4 = 155453101 * ((((&STACK[0x10000] + 3800) | 0x78015B4B) - ((&STACK[0x10000] + 3800) | 0x87FEA4B4) - 2013354828) ^ 0x9E274084);
  LODWORD(STACK[0x10F00]) = v4 ^ 0x5AF81C38;
  STACK[0x10EE0] = v3;
  LODWORD(STACK[0x10EEC]) = v1 - v4 + 26829;
  STACK[0x10EF8] = v2;
  STACK[0x10EF0] = &STACK[0x5D00];
  LODWORD(STACK[0x10ED8]) = v4 ^ 0xE30658FF;
  LODWORD(STACK[0x10EDC]) = (((v1 - 1727971856) & 0x66FEE5E6) + 1305708633) * v0 + 1096739917 - v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 ^ 0x8A6C)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((1000 * (LODWORD(STACK[0x10EE8]) != -371865839)) ^ v1)))(v6);
}

uint64_t sub_1004C1768()
{
  v1 = STACK[0xF10] - 23911;
  v2 = 291 * (STACK[0xF10] ^ 0x8B66);
  v3 = STACK[0xF10] - 16660;
  STACK[0x91C0] = v0;
  return (*(STACK[0xF18] + 8 * (((v2 + (v1 ^ 0xFFFFBB6A)) * (v0 == 0)) ^ v3)))();
}

uint64_t sub_1004C1840()
{
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762672631) ^ (906386353 * ((~(&STACK[0x10000] + 3800) & 0x9673E42 | (&STACK[0x10000] + 3800) & 0xF698C1B8) ^ 0x3866F366));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 4915)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * ((62 * (*STACK[0x970] <= 109 * (v0 ^ 0xB6C1) - 35643)) ^ v0)))(v2);
}

uint64_t sub_1004C18F8()
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = STACK[0x1F00];
  LODWORD(STACK[0x35EC]) = 1693393305;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004C1AF8()
{
  v2 = STACK[0x1A20];
  LODWORD(STACK[0x6FDC]) = v1;
  return (*(STACK[0xF18] + 8 * ((((((v0 + 4293) | 0x818) ^ 0xFFFFFFCF) + ((v0 - 29261) | 0x8B2A)) * (v2 == 0)) ^ v0)))();
}

uint64_t sub_1004C1C10()
{
  v1 = STACK[0x1940];
  v2 = STACK[0x1940];
  *(v2 + 16) = STACK[0x6838];
  STACK[0xAEC0] = v2 + 16;
  LODWORD(v2) = LODWORD(STACK[0x7254]) ^ 0xE9D5C711;
  v1[5] = STACK[0x2D4C];
  v1[6] = v2;
  LODWORD(v2) = STACK[0x2BE0];
  STACK[0xAEC8] = (v1 + 140);
  v1[140] = (v0 - 34539) ^ v2 ^ 0xE9D5DAF0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004C1D08()
{
  v1 = 0;
  v2 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x20CE6D0C)) ^ 0x20CE6D0CLL;
  v3 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v2 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v2;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
  v10 = *STACK[0x7ED0];
  v11 = v9 ^ v8 ^ (550399244 * v10) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v9 ^ v8) & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
  v12 = vdupq_n_s32(v11);
  v13 = xmmword_100BC7620;
  v14 = xmmword_100BC7630;
  v15 = xmmword_100BC7640;
  v16 = xmmword_100BC7650;
  v17.i64[1] = 0xFFFFFF0FFFFFFF0ELL;
  v18.i64[0] = 0x9393939393939393;
  v18.i64[1] = 0x9393939393939393;
  v19.i64[0] = 0x1000000010;
  v19.i64[1] = 0x1000000010;
  do
  {
    v20 = *(v10 + v1);
    v34.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC7690), v12), vmulq_s32(vaddq_s32(v15, v12), vsubq_s32(v15, v12)));
    v34.val[0] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC76A0), v12), vmulq_s32(vaddq_s32(v16, v12), vsubq_s32(v16, v12)));
    v34.val[2] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC7680), v12), vmulq_s32(vaddq_s32(v14, v12), vsubq_s32(v14, v12)));
    v34.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC7670), v12), vmulq_s32(vaddq_s32(v13, v12), vsubq_s32(v13, v12)));
    *(v10 + v1) = vmulq_s8(vqtbl4q_s8(v34, xmmword_100BC7660), v18);
    v1 += 16;
    v16 = vaddq_s32(v16, v19);
    v15 = vaddq_s32(v15, v19);
    v14 = vaddq_s32(v14, v19);
    v13 = vaddq_s32(v13, v19);
  }

  while (v1 != 784);
  v21 = 0;
  v22 = xmmword_100F52B30;
  v23 = vdupq_n_s32(v11);
  v24 = xmmword_100F52B40;
  v25 = v10 + 784;
  v26.i64[0] = 0x800000008;
  v26.i64[1] = 0x800000008;
  do
  {
    v17.i64[0] = *(v25 + v21);
    v33.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v17, xmmword_100BC7690), v23), vmulq_s32(vaddq_s32(v22, v23), vsubq_s32(v22, v23)));
    v33.val[0] = veorq_s8(vqtbl1q_s8(v17, xmmword_100BC76A0), veorq_s8(v23, vmulq_s32(vaddq_s32(v24, v23), vsubq_s32(v24, v23))));
    v17 = vqtbl2q_s8(v33, xmmword_100F52AD0);
    *(v25 + v21) = vmul_s8(*v17.i8, 0x9393939393939393);
    v24 = vaddq_s32(v24, v26);
    v22 = vaddq_s32(v22, v26);
    v21 += 8;
  }

  while (v21 != 8);
  v27 = 98;
  do
  {
    v28 = 16777619 * ((v11 + v27) ^ v11) % v27;
    v29 = *(v10 + 8 * v28) ^ *(v10 + 8 * v27);
    *(v10 + 8 * v27) = v29;
    v30 = *(v10 + 8 * v28) ^ v29;
    *(v10 + 8 * v28) = v30;
    *(v10 + 8 * v27) ^= v30;
    v31 = v27-- + 1;
  }

  while (v31 > 2);
  return (*(STACK[0xF18] + 8 * ((v0 + 1585194704) ^ 0x5E7CDACD ^ ((((v0 - 18991) | 0xB01) + 16790) * ((v0 + 1585194704) < 0x5D48A809)))))(xmmword_100BC7690, xmmword_100BC76A0, v22);
}

uint64_t sub_1004C1FF8()
{
  v1 = STACK[0x207C];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393313;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004C2154()
{
  v1 = STACK[0x8DC0];
  STACK[0x30B8] = STACK[0x8DC0];
  return (*(STACK[0xF18] + 8 * (((*(v1 + 8) == 1) * (((673 * (v0 ^ 0x672B)) ^ 0xFFFF1382) + ((v0 - 966362961) & 0x3999AB7F))) | v0)))();
}

uint64_t sub_1004C21C0@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, unint64_t a6@<X8>)
{
  v14 = *v11;
  v15 = *v10;
  v16 = STACK[0xF18];
  STACK[0x6180] = *(STACK[0xF18] + 8 * v7);
  STACK[0x78D8] = v8;
  STACK[0x1600] = v15;
  STACK[0x8638] = v14;
  STACK[0x37F0] = a1;
  STACK[0x37D0] = a2;
  STACK[0x85F0] = v12;
  STACK[0x97B8] = a4;
  STACK[0x9240] = a3;
  LODWORD(STACK[0x547C]) = a5;
  v17 = STACK[0x7690];
  v18 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x9758] = v18;
  STACK[0x83A8] = (v18 + 272);
  STACK[0x16E8] = (v18 + 312);
  STACK[0x7690] = v17 + 400;
  STACK[0x7C08] = v9;
  STACK[0x2988] = a6;
  v19 = *(*STACK[0xE50] + (*v13 & 0xFFFFFFFFB724B0B8));
  STACK[0x28D8] = (v19 & 0x7FFFFFFFFFFFFFFFLL ^ 0x719361230411ED1BLL ^ v19 & 0x546FC680E4F6A42ALL ^ 0x46C8680E0E60020) - (v19 & 0x546FC680E4F6A42ALL ^ 0x46C8680E0E60020);
  v21 = v8 == 0x7E666516A39B34A6 || v9 == 0;
  return (*(v16 + 8 * ((v21 * ((((v6 - 880475942) & 0x347A7FFF) + 28197) ^ 0x8B38)) ^ v6)))();
}

uint64_t sub_1004C2308()
{
  STACK[0x7690] -= 320;
  v2 = 32 * (((v1 ^ 0xA052C942) + 116382823) ^ v1 ^ ((v1 ^ 0x4FFBD02) + 37922855) ^ ((v1 ^ 0x7FFFFDD) + 21162746) ^ (((v0 + 957748420) & 0xC6E9EBAB) + 78440632 + (v1 ^ 0x2106146)));
  LODWORD(STACK[0x36E8]) = LODWORD(STACK[0x36E8]) - 664017807 + (((v2 ^ 0x1583C103) + 441090542) ^ ((v2 ^ 0xC4FA4295) - 885849476) ^ ((v2 ^ 0xF924D8F6) - 152201191));
  return (*(STACK[0xF18] + 8 * (v0 - 30574)))();
}

uint64_t sub_1004C2430@<X0>(int a1@<W8>)
{
  v3 = (((LODWORD(STACK[0x1C04]) ^ 0x1054228A) - 273949322) ^ ((LODWORD(STACK[0x1C04]) ^ 0x418D6A8B) - 1099786891) ^ (((941 * (v1 ^ 0x8B2D)) ^ LODWORD(STACK[0x1C04]) ^ 0xB80CDFCE) + 1207136496)) - 362696671;
  v4 = a1 + v2 + 9147782;
  v5 = (v4 < 0x8BE910) ^ (v3 < 0x8BE910);
  v6 = v3 > v4;
  if (v5)
  {
    v6 = v3 < 0x8BE910;
  }

  return (*(STACK[0xF18] + 8 * ((21 * !v6) ^ (v1 + 13229))))();
}

uint64_t sub_1004C2504()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 29588)))(32);
  STACK[0x1980] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((((v0 + 13335) | 0x20) + 9992) ^ v0 ^ 0xE54C)) ^ v0)))();
}

uint64_t sub_1004C2568()
{
  v1 = STACK[0xF10];
  LODWORD(STACK[0x6134]) += v0 + (((*(STACK[0x7980] + 256) ^ (STACK[0xF10] + 641754576)) - 641790219) ^ ((*(STACK[0x7980] + 256) ^ 0xF67BB5CD) + 159664691) ^ ((*(STACK[0x7980] + 256) ^ 0x39EE83D7) - 971932631));
  return (*(STACK[0xF18] + 8 * ((54382 * (v1 != 1808663226)) ^ (v1 - 10298))))();
}

uint64_t sub_1004C2620()
{
  *(STACK[0x4D80] + v0) = 10;
  LODWORD(STACK[0xA32C]) = v0;
  return (*(STACK[0xF18] + 8 * (v1 + 7172)))();
}

uint64_t sub_1004C2698@<X0>(int a1@<W8>)
{
  *(v1 + 2092) = a1;
  v3 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * (v2 - 32660));
  return (*(v3 + 8 * (((v2 ^ 0x925) - 25256) ^ (v2 - 32660))))();
}

uint64_t sub_1004C26E0@<X0>(int a1@<W8>)
{
  if (STACK[0x1630])
  {
    v1 = LODWORD(STACK[0x8B9C]) == a1 - 371911457;
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  return (*(STACK[0xF18] + 8 * ((v2 * (((a1 - 33330) | 0x144) - 12602)) ^ a1)))();
}

uint64_t sub_1004C290C()
{
  STACK[0x2AD0] = STACK[0x49A0];
  STACK[0x90F0] = STACK[0x5DB8];
  LODWORD(STACK[0x2904]) = STACK[0x1DCC];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004C2968()
{
  STACK[0x4110] = v2 + v1;
  v3 = *(STACK[0x9D0] + 72);
  v4 = v3 == STACK[0xD18];
  STACK[0x5EB0] = v3;
  return (*(STACK[0xF18] + 8 * ((2 * ((v4 ^ ((v0 - 34) ^ (v0 - 25))) & 1)) & 0xF7 | (8 * ((v4 ^ ((v0 - 34) ^ (v0 - 25))) & 1)) | v0)))();
}

uint64_t sub_1004C29EC@<X0>(int a1@<W8>)
{
  STACK[0x3728] = v1 + 28;
  STACK[0x2C80] = v1 + 32;
  v2 = *(STACK[0xF18] + 8 * (((a1 - 9807) | 0x104) + 181 * (((a1 - 9807) | 0x104) ^ 0x96B) + 579));
  STACK[0xEA0] = v1 + 32;
  return v2();
}

uint64_t sub_1004C2A44()
{
  v0 = STACK[0xF10];
  v1 = STACK[0x83F0] + STACK[0x38E8] - 0x3AE1413A0D5C96C2;
  v2 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * (STACK[0xF10] - 34318));
  return (*(v2 + 8 * (v0 - 25513)))(v1);
}

uint64_t sub_1004C2CB4()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xD680)))();
  STACK[0x5788] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1004C2F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x3C10];
  STACK[0x5D28] = &STACK[0x6BA8];
  LODWORD(STACK[0x4704]) = 711123090;
  return (*(STACK[0xF18] + 8 * a8))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_1004C2F84()
{
  *v1 = *v2;
  v3 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v3 + 8 * (v0 + 3971)))();
}

uint64_t sub_1004C2FF8()
{
  v1 = (STACK[0xF10] + 1718651268) & 0x998EFBFB;
  v2 = STACK[0xF10] - 34971;
  LODWORD(STACK[0x691C]) = v0;
  return (*(STACK[0xF18] + 8 * (((v1 + 1450) * (v0 == -371865839)) ^ v2)))();
}

uint64_t sub_1004C3058()
{
  STACK[0x2280] = *(v0 + 136);
  *STACK[0x7E80] += (13 * (v1 ^ 0x1A71)) ^ 0x5D23;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1004C30A0(unint64_t a1)
{
  STACK[0xED0] = a1;
  STACK[0x10EE0] = v1;
  LODWORD(STACK[0x10ED8]) = v2 - 353670337 * ((((&STACK[0x10000] + 3800) | 0x98EEE409) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x67111BF0)) ^ 0x2CCF1C34) - 23536;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 + 16492)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (v2 - 26486)))(v4);
}

uint64_t sub_1004C3178()
{
  v2 = STACK[0xB5A8];
  *STACK[0xB5B0] |= 0x40000u;
  *(v2 + 56) = (((v1 ^ 0xE7330D5ED866700FLL) + 0x18CCF2A127998FF1) ^ ((v1 ^ 0xDD6F6DD0CBFFB555) + 0x2290922F34004AABLL) ^ (((v0 + 296368974) & 0xEE55EFCF ^ 0xC5A39F7105B3BB36) + (v1 ^ 0x3A5C608EFA4C024BLL))) + 3923101457u;
  return (*(STACK[0xF18] + 8 * v0))();
}

void *sub_1004C324C()
{
  v0 = (STACK[0xF10] + 2501) | 0x8E;
  v1 = STACK[0xF10] - 33335;
  v2 = STACK[0xF18];
  STACK[0x76F8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 32398) ^ v1)))(&STACK[0x8F97]);
}

uint64_t sub_1004C32A0()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 3485)))();
}

uint64_t sub_1004C3438()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * ((v0 + 32169) ^ 0x7780)))(12);
  STACK[0x92D8] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((v0 + 430571020) & 0xE655D2BD ^ 0x103A)) | (v0 + 32169))))();
}

uint64_t sub_1004C34B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 8) = 0x8241290682412906;
  *(v4 + 16) = -2109658874;
  return (*(STACK[0xF18] + 8 * v5))(a1, a2, a3, a4, &off_1010A0B50);
}

uint64_t sub_1004C3500()
{
  v5 = (((v0 ^ 0x986F0ADD) + 1737553187) ^ ((v0 ^ 0x1AC370C) - 28063500) ^ ((v0 ^ 0xB4254DAE) + 1272623698)) + 1949312996 + ((v3 - 1705646908) & 0x65A9FB7D);
  v6 = ((v5 ^ 0x7480FC33) - 852156114) ^ v5 ^ ((v5 ^ 0x4BA076FB) - 233460762) ^ ((v5 ^ 0x469574C7) - 14636582) ^ ((v5 ^ 0x3FFFDCEE) - 2041970191);
  *(v4 + ((v0 ^ 0x2DE6707FLL) << 7) + 4 * (v1 - 1710211476)) = *(v4 + ((v6 ^ 0x464A22E1) << 7) + 4 * (v2 - 1710211476));
  v7 = (((v6 ^ 0x55F04B37) - 1046223273) ^ ((v6 ^ 0x5BB5F38F) - 806986001) ^ ((v6 ^ 0x480F9A59u) - 597936327)) - 1377406849 < 0x8000001F;
  return (*(STACK[0xF18] + 8 * (((2 * v7) | (4 * v7)) ^ (v3 + 446))))();
}

uint64_t sub_1004C3870()
{
  v3 = *(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFFE389194)) ^ 0xFE389197;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  STACK[0xC130] = 0;
  STACK[0xC138] = v2 - 0x65D7F4DC84452C66;
  v12 = 16777619 * ((-29847145 * v11 + 7) ^ (-29847145 * v11)) % 7;
  v13 = *(&STACK[0xC130] | v12);
  *(&STACK[0xC130] | v12) = 0;
  LOBYTE(STACK[0xC137]) = v13;
  v14 = 16777619 * ((-29847145 * v11 + 6) ^ (-29847145 * v11)) % 6;
  v15 = *(&STACK[0xC130] | v14);
  *(&STACK[0xC130] | v14) = STACK[0xC136];
  LOBYTE(STACK[0xC136]) = v15;
  v16 = 16777619 * ((-29847145 * v11 + 5) ^ (-29847145 * v11)) % 5;
  v17 = *(&STACK[0xC130] | v16);
  *(&STACK[0xC130] | v16) = STACK[0xC135];
  LOBYTE(STACK[0xC135]) = v17;
  v18 = STACK[0xC130];
  LOBYTE(STACK[0xC130]) = STACK[0xC134];
  LOBYTE(STACK[0xC134]) = v18;
  v19 = 16777619 * ((-29847145 * v11 + 3) ^ (-29847145 * v11)) % 3;
  v20 = *(&STACK[0xC130] | v19);
  *(&STACK[0xC130] | v19) = STACK[0xC133];
  LOBYTE(STACK[0xC133]) = v20;
  v21 = STACK[0xC131];
  LOBYTE(STACK[0xC132]) = STACK[0xC130];
  LOWORD(STACK[0xC130]) = v21;
  v22 = vdup_n_s32(-29847145 * v11);
  v23.i32[0] = v22.i32[0];
  v23.i32[1] = -29847145 * v11 + 1;
  v24 = veor_s8(vmul_s32(v23, v22), v22);
  STACK[0xC130] = vmla_s32(v24, STACK[0xC130], vdup_n_s32(0x1000193u));
  STACK[0xC138] ^= STACK[0xC130];
  STACK[0xC138] = vmul_s32(vsub_s32(STACK[0xC138], v24), vdup_n_s32(0x359C449Bu));
  v25 = STACK[0xC13A];
  LOWORD(STACK[0xC139]) = STACK[0xC138];
  LOBYTE(STACK[0xC138]) = v25;
  v26 = (&STACK[0xC138] | v19);
  LOBYTE(v21) = *v26;
  *v26 = STACK[0xC13B];
  LOBYTE(STACK[0xC13B]) = v21;
  LOBYTE(v26) = STACK[0xC138];
  LOBYTE(STACK[0xC138]) = STACK[0xC13C];
  LOBYTE(STACK[0xC13C]) = v26;
  v27 = (&STACK[0xC138] | v16);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xC13D];
  LOBYTE(STACK[0xC13D]) = v26;
  v28 = (&STACK[0xC138] | v14);
  LOBYTE(v27) = *v28;
  *v28 = STACK[0xC13E];
  LOBYTE(STACK[0xC13E]) = v27;
  v29 = (&STACK[0xC138] | v12);
  v30 = *v29;
  *v29 = STACK[0xC13F];
  LOBYTE(STACK[0xC13F]) = v30;
  v31 = STACK[0xC138];
  v32 = (-29847145 * STACK[0xC138]) ^ v11;
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

  STACK[0x2F68] = STACK[0xC138] + v0;
  return (*(STACK[0xF18] + 8 * v1))(v38, v39, v40, v41, xmmword_100BC7660);
}

uint64_t sub_1004C3CC0()
{
  v0 = STACK[0xF10];
  v1 = (STACK[0xF10] - 33879) | 0x1010;
  v2 = (STACK[0xF10] - 822308684) & 0x3102FFF7;
  v3 = STACK[0xF10] - 28500;
  v4 = STACK[0xAA28];
  v5 = STACK[0xAA20];
  STACK[0x10EE0] = STACK[0xAA30];
  STACK[0x10ED8] = v4;
  STACK[0x10EF0] = v5;
  LODWORD(STACK[0x10EE8]) = v0 - 1022166737 * ((~(&STACK[0x10000] + 3800) & 0xFD4B0A5E | (&STACK[0x10000] + 3800) & 0x2B4F5A0) ^ 0x475BEBCC) - 10228;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v0 + 16703)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * (((LODWORD(STACK[0x10EEC]) == v1 - 371871715) * (v2 - 7135)) | v3)))(v7);
}

uint64_t sub_1004C3DB0()
{
  v0 = STACK[0xF10] - 29359;
  *STACK[0xB540] = STACK[0x6EE0];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004C3DE8()
{
  v1 = STACK[0xF18];
  STACK[0x1500] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 8487) ^ v0)))();
}

uint64_t sub_1004C3E6C@<X0>(int a1@<W8>)
{
  v4 = (((v2 ^ (a1 + 70322821)) - 70357551) ^ ((v2 ^ 0x93C7C86C) + 1815623572) ^ ((v2 ^ 0x7E239D52) - 2116263250)) - 1380635515;
  v5 = ((v3 - 1008769675) < 0xC3DF6574) ^ (v4 < 0xC3DF6574);
  v6 = v3 - 1008769675 > v4;
  if (v5)
  {
    v6 = (v3 - 1008769675) < 0xC3DF6574;
  }

  if (v6)
  {
    v7 = 371891407;
  }

  else
  {
    v7 = v1;
  }

  return (*(STACK[0xF18] + 8 * ((9658 * (v7 == -371865839)) ^ a1)))();
}

uint64_t sub_1004C3F48()
{
  v3 = *(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFFE389194)) ^ 0xFE389197;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  STACK[0xC150] = 0;
  STACK[0xC158] = v2 - 0x65D7F4DC84452C66;
  v12 = 16777619 * ((-29847145 * v11 + 7) ^ (-29847145 * v11)) % 7;
  v13 = *(&STACK[0xC150] | v12);
  *(&STACK[0xC150] | v12) = 0;
  LOBYTE(STACK[0xC157]) = v13;
  v14 = 16777619 * ((-29847145 * v11 + 6) ^ (-29847145 * v11)) % 6;
  v15 = *(&STACK[0xC150] | v14);
  *(&STACK[0xC150] | v14) = STACK[0xC156];
  LOBYTE(STACK[0xC156]) = v15;
  v16 = 16777619 * ((-29847145 * v11 + 5) ^ (-29847145 * v11)) % 5;
  v17 = *(&STACK[0xC150] | v16);
  *(&STACK[0xC150] | v16) = STACK[0xC155];
  LOBYTE(STACK[0xC155]) = v17;
  v18 = STACK[0xC150];
  LOBYTE(STACK[0xC150]) = STACK[0xC154];
  LOBYTE(STACK[0xC154]) = v18;
  v19 = 16777619 * ((-29847145 * v11 + 3) ^ (-29847145 * v11)) % 3;
  v20 = *(&STACK[0xC150] | v19);
  *(&STACK[0xC150] | v19) = STACK[0xC153];
  LOBYTE(STACK[0xC153]) = v20;
  v21 = STACK[0xC151];
  LOBYTE(STACK[0xC152]) = STACK[0xC150];
  LOWORD(STACK[0xC150]) = v21;
  v22 = vdup_n_s32(-29847145 * v11);
  v23.i32[0] = v22.i32[0];
  v23.i32[1] = -29847145 * v11 + 1;
  v24 = veor_s8(vmul_s32(v23, v22), v22);
  STACK[0xC150] = vmla_s32(v24, STACK[0xC150], vdup_n_s32(0x1000193u));
  STACK[0xC158] ^= STACK[0xC150];
  STACK[0xC158] = vmul_s32(vsub_s32(STACK[0xC158], v24), vdup_n_s32(0x359C449Bu));
  v25 = STACK[0xC15A];
  LOWORD(STACK[0xC159]) = STACK[0xC158];
  LOBYTE(STACK[0xC158]) = v25;
  v26 = (&STACK[0xC158] | v19);
  LOBYTE(v21) = *v26;
  *v26 = STACK[0xC15B];
  LOBYTE(STACK[0xC15B]) = v21;
  LOBYTE(v26) = STACK[0xC158];
  LOBYTE(STACK[0xC158]) = STACK[0xC15C];
  LOBYTE(STACK[0xC15C]) = v26;
  v27 = (&STACK[0xC158] | v16);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xC15D];
  LOBYTE(STACK[0xC15D]) = v26;
  v28 = (&STACK[0xC158] | v14);
  LOBYTE(v27) = *v28;
  *v28 = STACK[0xC15E];
  LOBYTE(STACK[0xC15E]) = v27;
  v29 = (&STACK[0xC158] | v12);
  v30 = *v29;
  *v29 = STACK[0xC15F];
  LOBYTE(STACK[0xC15F]) = v30;
  v31 = STACK[0xC158];
  v32 = (-29847145 * STACK[0xC158]) ^ v11;
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

  STACK[0x2408] = STACK[0xC158] + v0;
  return (*(STACK[0xF18] + 8 * v1))(v38, v39, v40, v41, xmmword_100BC7660);
}

uint64_t sub_1004C4454()
{
  STACK[0x9EE0] = (((v0 ^ 0xC7AFBE608F67A20FLL) + 0x3850419F70985DF1) ^ ((v0 ^ 0x558AC47DD14A2E01) - 0x558AC47DD14A2E01) ^ ((v0 ^ 0x92257A1DB7F84B1FLL) + 0x6DDA85E248071258 + ((v1 + 29183) | 0x2080u))) + 0x7FE04C69305BDE74;
  v2 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x393)))();
}

uint64_t sub_1004C4748()
{
  v1 = STACK[0x1208];
  v2 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ ((v0 + 15694) | 0x8400) ^ 0xDAC2 ^ (11152 * (v0 == 1793388102)))))(v1);
}

uint64_t sub_1004C47D0@<X0>(int a1@<W8>)
{
  LOBYTE(STACK[0xFFF]) = a1;
  v2 = (((LODWORD(STACK[0x43CC]) ^ 0xE47D8FB3) + ((109 * (v1 ^ 0xBA22)) ^ 0x1B82FB76)) ^ ((LODWORD(STACK[0x43CC]) ^ 0x47C1CE78) - 1203883640) ^ ((LODWORD(STACK[0x43CC]) ^ 0x4A6986DA) - 1248429786)) - 30761876;
  v3 = (a1 ^ 0x6F9F7FEB) - 1531619984 + ((2 * a1) & 0x1D6);
  v4 = (v3 < 0x1454D55B) ^ (v2 < 0x1454D55B);
  v5 = v2 > v3;
  if (v4)
  {
    v5 = v2 < 0x1454D55B;
  }

  return (*(STACK[0xF18] + 8 * ((226 * !v5) ^ v1)))();
}

uint64_t sub_1004C48C0()
{
  v1 = STACK[0x4FE0];
  STACK[0xAE48] = STACK[0x4FE0];
  return (*(STACK[0xF18] + 8 * (((v1 == 0) * (((v0 + 6450) ^ 0xD99C) - 38497)) ^ v0)))();
}

uint64_t sub_1004C4944(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0xF10];
  v4 = (STACK[0xF10] - 1526242620) & 0x5AF873B5;
  v5 = STACK[0xF10] - 35643;
  STACK[0x95A0] = STACK[0x9218];
  LOWORD(STACK[0x79DE]) = 7085;
  LODWORD(STACK[0x16B4]) = (v3 - 35642) ^ ((((v2 - v5) | (v5 - v2)) & 0x80) >> 7) ^ 0x6DEDC034;
  return (*(STACK[0xF18] + 8 * (v5 ^ 0x4177 ^ v4)))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_1004C4A6C()
{
  v2 = LODWORD(STACK[0x8214]) - 431964818 + ((v0 + 5834) ^ 0xC3B);
  v3 = 17902189 * ((((&STACK[0x10000] + 3800) | 0xD402F72) - ((&STACK[0x10000] + 3800) & 0xD402F70)) ^ 0x830F3962);
  LODWORD(STACK[0x10ED8]) = (v0 - 28716) ^ v3;
  LODWORD(STACK[0x10EE8]) = v2 ^ v3;
  STACK[0x10EE0] = &STACK[0x6F90];
  STACK[0x10EF0] = &STACK[0x6318];
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 23539)))(&STACK[0x10ED8]);
  v6 = STACK[0x10EDC];
  LODWORD(STACK[0xB028]) = STACK[0x10EDC];
  return (*(v4 + 8 * ((59079 * (v6 == v1)) ^ v0)))(v5);
}

uint64_t sub_1004C4B50(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = (a4 + v7) & 0x9B ^ 0xFB ^ (v5 & 0xBF ^ (a4 + v7) ^ 0x69) & (2 * ((a4 + v7) & 0x9B));
  v9 = ((a4 + v7) ^ (2 * ((4 * v8) & 8 ^ v8 ^ ((4 * v8) ^ 0xC) & ((2 * (a4 + v7)) & 0xF8 ^ ((2 * (a4 + v7)) ^ 0xF4) & (a4 + v7) ^ 8)))) & 0x1F ^ 0x1D;
  *(a2 + 4 * v9) -= 1172228488;
  v10 = a4 - 1485329281 < v4;
  if (v4 < v6 != (a4 - 1485329281) < 0xE197DFD3)
  {
    v10 = v4 < v6;
  }

  return (*(STACK[0xF18] + 8 * ((37035 * v10) ^ a3)))();
}

uint64_t sub_1004C4C4C()
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
  STACK[0xBF90] = 0;
  STACK[0xBF98] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xBF90] | v10);
  *(&STACK[0xBF90] | v10) = 0;
  LOBYTE(STACK[0xBF97]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xBF90] | v12);
  *(&STACK[0xBF90] | v12) = STACK[0xBF96];
  LOBYTE(STACK[0xBF96]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xBF90] | v14);
  *(&STACK[0xBF90] | v14) = STACK[0xBF95];
  LOBYTE(STACK[0xBF95]) = v15;
  v16 = STACK[0xBF90];
  LOBYTE(STACK[0xBF90]) = STACK[0xBF94];
  LOBYTE(STACK[0xBF94]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xBF90] | v17);
  *(&STACK[0xBF90] | v17) = STACK[0xBF93];
  LOBYTE(STACK[0xBF93]) = v18;
  v19 = STACK[0xBF91];
  LOBYTE(STACK[0xBF92]) = STACK[0xBF90];
  LOWORD(STACK[0xBF90]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xBF90] = vmla_s32(v22, STACK[0xBF90], vdup_n_s32(0x1000193u));
  STACK[0xBF98] ^= STACK[0xBF90];
  STACK[0xBF98] = vmul_s32(vsub_s32(STACK[0xBF98], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xBF9A];
  LOWORD(STACK[0xBF99]) = STACK[0xBF98];
  LOBYTE(STACK[0xBF98]) = v23;
  v24 = (&STACK[0xBF98] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xBF9B];
  LOBYTE(STACK[0xBF9B]) = v19;
  LOBYTE(v24) = STACK[0xBF98];
  LOBYTE(STACK[0xBF98]) = STACK[0xBF9C];
  LOBYTE(STACK[0xBF9C]) = v24;
  v25 = (&STACK[0xBF98] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xBF9D];
  LOBYTE(STACK[0xBF9D]) = v24;
  v26 = (&STACK[0xBF98] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xBF9E];
  LOBYTE(STACK[0xBF9E]) = v25;
  v27 = (&STACK[0xBF98] | v10);
  v28 = *v27;
  *v27 = STACK[0xBF9F];
  LOBYTE(STACK[0xBF9F]) = v28;
  v29 = STACK[0xBF98];
  v30 = (553300517 * STACK[0xBF98]) ^ v9;
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
  *STACK[0x940] = STACK[0xBF98];
  return (*(STACK[0xF18] + 8 * v1))(v47, v48);
}

uint64_t sub_1004C5228()
{
  LODWORD(STACK[0x5D84]) = -371865839;
  v2 = STACK[0x5C58];
  v3 = 139493411 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x774E1368) + 2001605482) ^ 0x7B63F22F);
  STACK[0x10EF0] = *(STACK[0x5C58] - 0x7E666516A39B34A6);
  LODWORD(STACK[0x10EE8]) = v3 - 231254985;
  LODWORD(STACK[0x10ED8]) = v1 - v3 + 39488;
  LOWORD(STACK[0x10EFC]) = -32733 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x1368) + 4970) ^ 0xF22F) + ((((v0 - ((2 * v0) & 0x2ADC) - 27282) ^ 0x10B3) - 4275) ^ (((v0 - ((2 * v0) & 0x2ADC) - 27282) ^ 0x59BB) - 22971) ^ (((((v1 - 5512) | 0xA426) + 14016) ^ (v0 - ((2 * v0) & 0x2ADC) - 27282)) + 9114)) + 710;
  STACK[0x10EE0] = &STACK[0x5D84];
  LODWORD(STACK[0x10EF8]) = v3 + 1133646169;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 46075)))(&STACK[0x10ED8]);
  v6 = STACK[0x10F00];
  LODWORD(STACK[0x8304]) = STACK[0x10F00];
  v7 = LODWORD(STACK[0x8DF8]) ^ 0xC6385557;
  STACK[0x8FE8] = *(v2 - 0x7E666516A39B34A6);
  LODWORD(STACK[0x44A8]) = v6;
  LODWORD(STACK[0x704C]) = -2116087589;
  LODWORD(STACK[0x7FD8]) = 1920229740;
  LODWORD(STACK[0x4A8C]) = v7;
  STACK[0x5B78] = 0;
  return (*(v4 + 8 * v1))(v5);
}

uint64_t sub_1004C5408()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x585B)))(STACK[0x1250]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1004C5440@<X0>(int a1@<W8>)
{
  v4 = *(*(v1 + 160) + 40) - (*(*v3 + (*v2 & 0xFFFFFFFFF1F71F20)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x329F1AD0046BFA29uLL) > 0xFFFFFFFF3848434ELL;
  v5 = STACK[0x1F30] - (*(*v3 + (*v2 & 0x6DA0B6E8)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x2C75849961C9304ELL) > 0xFFFFFFFF3848434ELL;
  v6 = 1022166737 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x4595DEDF4B56290) - 0x7BA6A2120B4A9D70) ^ 0xFAD32F904EA58302);
  LODWORD(STACK[0x10EFC]) = v6 + a1 + 1860712901;
  LODWORD(STACK[0x10EE4]) = v6 + a1 + 782565441;
  LODWORD(STACK[0x10EE0]) = -1022166737 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x4595DEDF4B56290) - 189439344) ^ 0x4EA58302);
  LODWORD(STACK[0x10EEC]) = a1 + 1860717748 - v6;
  LODWORD(STACK[0x10EE8]) = ((a1 + 1860717748) ^ 0x1C) + v6;
  STACK[0x10EF0] = v4 ^ v5 | v6;
  STACK[0x10ED8] = v6;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (a1 ^ 0x4029)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * SLODWORD(STACK[0x10EF8])))(v8);
}

uint64_t sub_1004C55AC@<X0>(unint64_t a1@<X8>)
{
  STACK[0x9800] = a1;
  LODWORD(STACK[0x10E4]) = v1;
  STACK[0x7690] += (v2 - 20160) ^ 0xFFFFFFFFFFFFC3DBLL;
  return (*(STACK[0xF18] + 8 * (v2 - 4189)))();
}

uint64_t sub_1004C5660@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x2DDC]) = v2;
  STACK[0x1E78] = v1;
  LODWORD(STACK[0x568C]) = v3;
  return (*(STACK[0xF18] + 8 * (a1 - 26681 + 11881 * (a1 ^ 0xA67))))();
}

uint64_t sub_1004C573C()
{
  v1 = *(STACK[0x9120] + 8);
  STACK[0x2620] = STACK[0x9120] + 8;
  STACK[0x10EE0] = v1;
  LODWORD(STACK[0x10ED8]) = (v0 + 703896052) ^ (634647737 * ((((&STACK[0x10000] + 3800) | 0x1D4E5226) - ((&STACK[0x10000] + 3800) | 0xE2B1ADD9) - 491672103) ^ 0x70D87DDA));
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0xBC9B)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * ((333 * ((((v0 ^ 0x5D) - 1) ^ ((*(STACK[0x2738] - 0x43D8CBFA0CEB42C4) & 0x40) == ((35 * (v0 ^ 0x765D)) ^ 0x8C))) & 1)) ^ v0)))(v3);
}

uint64_t sub_1004C5854()
{
  v2 = (2477 * (STACK[0xF10] ^ 0x8B38) + 9017) | 0x8004;
  v3 = STACK[0xF10] - 7688;
  *(STACK[0x1A98] + 712) = v0;
  v4 = (((v1 ^ 0x9BC0965) + 657595563) ^ ((v1 ^ 0x3C3A775A) + 313811606) ^ ((v1 ^ v2 ^ 0xD22935A) + 598492882)) + 511865168;
  v5 = (((LODWORD(STACK[0x3834]) ^ 0x4882564F) - 1216501327) ^ ((LODWORD(STACK[0x3834]) ^ 0x77768959) - 2004257113) ^ ((LODWORD(STACK[0x3834]) ^ 0xD6211807) + 702474233)) + 511865164;
  v6 = v4 < 0x34ACAA3B;
  v7 = v4 > v5;
  if (v5 < 0x34ACAA3B != v6)
  {
    v7 = v6;
  }

  return (*(STACK[0xF18] + 8 * ((181 * v7) ^ v3)))();
}

uint64_t sub_1004C599C()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 4057)))();
}

uint64_t sub_1004C5B88@<X0>(int a1@<W8>)
{
  v2 = (v1 - 337732213);
  v3 = *(STACK[0x9D38] + v2);
  v4 = v2 + STACK[0x9D40] + STACK[0x2920];
  LODWORD(STACK[0xCC0]) = a1 ^ 0x8473;
  *(v4 - 0x10FA5B9B27D2D6BBLL) = ((a1 ^ 0x73) + 36) ^ v3;
  v5 = *(STACK[0xF18] + 8 * a1);
  LODWORD(STACK[0xDF0]) = v1 - 1;
  return v5();
}

uint64_t sub_1004C5BF0()
{
  v2 = (((LODWORD(STACK[0x2814]) ^ 0xCF36A59) - 217279065) ^ (((v0 + 2043262148) & 0x8635F8DE) + 949551600 + (LODWORD(STACK[0x2814]) ^ 0xC766C532)) ^ ((LODWORD(STACK[0x2814]) ^ 0x2240687A) - 574646394)) + 83590425;
  v3 = v2 < 0x1B25B608;
  v4 = v1 - 1356265564 < v2;
  if ((v1 - 1356265564) < 0x1B25B608 != v3)
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((473 * v4) ^ (v0 - 21085))))();
}

uint64_t sub_1004C5D44()
{
  LODWORD(STACK[0xB024]) = v0;
  *v2 = 95;
  v3 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v1);
  return (*(v3 + 8 * (v1 + 871)))();
}

uint64_t sub_1004C5E20()
{
  v1 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 4728) | 0x8008) - 40697) ^ v0)))();
}

uint64_t sub_1004C5E6C@<X0>(int a1@<W8>)
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = 1751078241;
  return (*(STACK[0xF18] + 8 * (a1 - 46241)))();
}

uint64_t sub_1004C5EC0@<X0>(int a1@<W8>)
{
  *(*(v1 + 4552) + 24) = STACK[0x4BC0] ^ 0x981390C3B633851 ^ (a1 + 921608673) & 0xDD9FFF37;
  v2 = STACK[0xF18];
  STACK[0x98C0] = *(STACK[0xF18] + 8 * a1);
  return (*(v2 + 8 * (a1 ^ 0x220F)))();
}

uint64_t sub_1004C64DC()
{
  LODWORD(STACK[0xED0]) = v2;
  *(v1 + 85) = v3;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0xEC70)))(((v0 ^ 0xEC70u) + 13608) ^ 0x8B3ALL, 691359112, 37284);
}

uint64_t sub_1004C65DC()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 1740618361) & 0x9840BBBE) - 25319) ^ v0)))();
}

uint64_t sub_1004C6628()
{
  v0 = STACK[0xF10] - 6226;
  *(STACK[0x3378] + 44) = 116;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004C665C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v15 = STACK[0xF10];
  v16 = STACK[0x4DD8];
  v17 = STACK[0xE50];
  v18 = *STACK[0xE50];
  v19 = STACK[0xE58];
  v20 = *STACK[0xE58] & 0xFFFFFFFFE6F073DCLL;
  v21 = (((STACK[0x4DD8] + 3) ^ *(v18 + v20)) & 0x7FFFFFFF) * v9;
  v22 = (v21 ^ HIWORD(v21)) * ((STACK[0xF10] - 27892) ^ 0x6F23AC72);
  v23 = STACK[0xED0];
  v24 = STACK[0xEC0];
  v25 = STACK[0xEB0];
  v26 = STACK[0x7000];
  v27 = *(STACK[0xEC0] + (v22 >> 24) + 3) ^ *(STACK[0xED0] + (v22 >> 24) + 3) ^ *(STACK[0xEB0] + (v22 >> 24)) ^ *(STACK[0x4DD8] + 3) ^ v22 ^ (-119 * BYTE3(v22));
  v26[128] = (((v27 ^ 0xB1) + 44) ^ ((v27 ^ 0x7E) - 27) ^ ((v27 ^ 0xCF) + 86)) + 122;
  v26[129] = a7;
  v28 = ((*(v18 + v20) ^ (v16 + 2)) & 0x7FFFFFFF) * v9;
  v29 = (v28 ^ HIWORD(v28)) * v9;
  v30 = STACK[0x6EF7];
  LOBYTE(v29) = *(v24 + (v29 >> 24) + 3) ^ *(v23 + (v29 >> 24) + 3) ^ *(v25 + (v29 >> 24)) ^ *(v16 + 2) ^ v29 ^ (-119 * BYTE3(v29));
  v26[130] = (((v29 ^ 0xCE) - 122) ^ (-76 - v29) ^ ((v29 ^ 0x31) + 123)) - 39;
  v26[131] = v12;
  LODWORD(v18) = ((*(v18 + v20) ^ (v16 + 1)) & 0x7FFFFFFF) * v9;
  v31 = (v18 ^ WORD1(v18)) * v9;
  LOBYTE(v31) = *(v24 + (v31 >> 24) + 3) ^ *(v23 + (v31 >> 24) + 3) ^ *(v25 + (v31 >> 24)) ^ *(v16 + 1) ^ v31 ^ (-119 * BYTE3(v31));
  v26[132] = (((v31 ^ 0x64) + 12) ^ ((v31 ^ 0xE2) - 114) ^ ((v31 ^ v11) - 22)) - 2;
  v26[133] = v30;
  v32 = *v17;
  v33 = *v19 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v29) = ((*(*v17 + v33) ^ v16) & 0x7FFFFFFF) * v9;
  v34 = (v29 ^ WORD1(v29)) * v9;
  v35 = STACK[0x5C6F];
  LOBYTE(v34) = *(v24 + (v34 >> 24) + 3) ^ *(v23 + (v34 >> 24) + 3) ^ *(v25 + (v34 >> 24)) ^ *v16 ^ v34 ^ (-119 * BYTE3(v34));
  v26[134] = (((v34 ^ 0xEB) + 117) ^ ((v34 ^ 0x3A) - 90) ^ ((v34 ^ 0xD1) + 79)) - 49;
  v26[135] = v35;
  LODWORD(v34) = ((*(v32 + v33) ^ (v16 + 7)) & 0x7FFFFFFF) * v9;
  v36 = (v34 ^ WORD1(v34)) * v9;
  v37 = STACK[0x6C57];
  LOBYTE(v36) = *(v24 + (v36 >> 24) + 3) ^ *(v23 + (v36 >> 24) + 3) ^ *(v25 + (v36 >> 24)) ^ *(v16 + 7) ^ v36 ^ (-119 * BYTE3(v36));
  v26[136] = (((v36 ^ 0x9C) - 112) ^ ((v36 ^ 0x55) + 71) ^ ((v36 ^ 0xC9) - 37)) + 106;
  v26[137] = v37;
  v38 = STACK[0x3957];
  LODWORD(v32) = ((*(v32 + v33) ^ (v16 + 6)) & 0x7FFFFFFF) * v9;
  v39 = (v32 ^ WORD1(v32)) * v9;
  LOBYTE(v39) = *(v24 + (v39 >> 24) + 3) ^ *(v23 + (v39 >> 24) + 3) ^ *(v25 + (v39 >> 24)) ^ *(v16 + 6) ^ v39 ^ (-119 * BYTE3(v39));
  v26[138] = (((v39 ^ 0x50) - 38) ^ ((v39 ^ 0x86) + 16) ^ ((v39 ^ 0xD6) + 96)) - 40;
  v26[139] = v38;
  v40 = *v17;
  v41 = *v19 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v36) = ((*(*v17 + v41) ^ (v16 + 5)) & 0x7FFFFFFF) * v9;
  v42 = (v36 ^ WORD1(v36)) * v9;
  v43 = STACK[0x341F];
  v26[140] = (*(v24 + (v42 >> 24) + 3) ^ *(v23 + (v42 >> 24) + 3) ^ *(v25 + (v42 >> 24)) ^ *(v16 + 5) ^ v42 ^ (-119 * BYTE3(v42))) + 59;
  v26[141] = v43;
  LODWORD(v42) = ((*(v40 + v41) ^ (v16 + 4)) & 0x7FFFFFFF) * v9;
  v44 = (v42 ^ WORD1(v42)) * v9;
  v45 = STACK[0x176F];
  LOBYTE(v22) = STACK[0x81F3];
  LOBYTE(v44) = *((v44 >> 24) + v8 + 1) ^ *((v44 >> 24) + v14 + 5) ^ *(v7 + (v44 >> 24)) ^ *(v16 + 4) ^ v44 ^ (125 * BYTE3(v44));
  v26[142] = (((v44 ^ 0x60) + 18) ^ ((v44 ^ 0x76) + 8) ^ ((v44 ^ 0x16) + 104)) - 76;
  v26[143] = v45;
  LODWORD(v40) = ((*(v40 + v41) ^ (v16 + 11)) & 0x7FFFFFFF) * v9;
  v46 = (v40 ^ WORD1(v40)) * v9;
  LOBYTE(v46) = *((v46 >> 24) + v8 + 1) ^ *((v46 >> 24) + v14 + 5) ^ *(v7 + (v46 >> 24)) ^ *(v16 + 11) ^ v46 ^ (125 * BYTE3(v46));
  v26[144] = (((v46 ^ 0xE5) + 13) ^ ((v46 ^ 0x2B) - 61) ^ ((v46 ^ 0xCE) + 40)) + 78;
  v26[145] = v22;
  v47 = *v17;
  v48 = *v19 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v46) = ((*(*v17 + v48) ^ (v16 + 10)) & 0x7FFFFFFF) * v9;
  v49 = (v46 ^ WORD1(v46)) * v9;
  v50 = STACK[0x31EF];
  LOBYTE(v49) = *((v49 >> 24) + v8 + 1) ^ *((v49 >> 24) + v14 + 5) ^ *(v7 + (v49 >> 24)) ^ *(v16 + 10) ^ v49 ^ (125 * BYTE3(v49));
  v26[146] = (((v49 ^ 0x71) - 119) ^ ((v49 ^ 0xE9) + 17) ^ ((v49 ^ 0x98) + 98)) + 19;
  v26[147] = v50;
  LODWORD(v49) = ((*(v47 + v48) ^ (v16 + 9)) & 0x7FFFFFFF) * v9;
  v51 = (v49 ^ WORD1(v49)) * v9;
  v52 = STACK[0x3297];
  LOBYTE(v22) = STACK[0x2423];
  LOBYTE(v44) = *((v51 >> 24) + v8 + 1) ^ *((v51 >> 24) + v14 + 5) ^ *(v7 + (v51 >> 24)) ^ *(v16 + 9) ^ v51 ^ (125 * BYTE3(v51));
  LOBYTE(v51) = STACK[0x78AF];
  v26[148] = (((v44 ^ v10) + 24) ^ ((v44 ^ 0xF8) + 78) ^ ((v44 ^ 0x5A) - 16)) + 84;
  v26[149] = v22;
  LODWORD(v44) = ((*(v47 + v48) ^ (v16 + 8)) & 0x7FFFFFFF) * v9;
  v53 = (v44 ^ WORD1(v44)) * v9;
  LOBYTE(v53) = *((v53 >> 24) + v8 + 1) ^ *((v53 >> 24) + v14 + 5) ^ *(v7 + (v53 >> 24)) ^ *(v16 + 8) ^ v53 ^ (125 * BYTE3(v53));
  v26[150] = (((v53 ^ 0x70) - 23) ^ ((v53 ^ 0xC) - 107) ^ ((v53 ^ 0x7C) - 27)) - 121;
  v26[151] = v52;
  v54 = STACK[0x4DD8];
  LODWORD(v53) = (((STACK[0x4DD8] + 15) ^ *(*v17 + (*v19 & 0xFFFFFFFFE6F073DCLL))) & 0x7FFFFFFF) * v9;
  v55 = (v53 ^ WORD1(v53)) * v9;
  LOBYTE(v55) = *((v55 >> 24) + v8 + 1) ^ *((v55 >> 24) + v14 + 5) ^ *(v7 + (v55 >> 24)) ^ *(STACK[0x4DD8] + 15) ^ v55 ^ (125 * BYTE3(v55));
  v26[152] = (((v55 ^ 0xC1) - 32) ^ ((v55 ^ 0x5D) + 68) ^ ((v55 ^ 0x9C) - 125)) - 21;
  v26[153] = v51;
  LODWORD(v51) = ((*(*v17 + (*v19 & 0xFFFFFFFFE6F073DCLL)) ^ (v54 + 14)) & 0x7FFFFFFF) * v9;
  v56 = (v51 ^ WORD1(v51)) * v9;
  LOBYTE(v22) = STACK[0x7047];
  v26[154] = *((v56 >> 24) + v14 + 5) ^ *((v56 >> 24) + v8 + 1) ^ *(v7 + (v56 >> 24)) ^ *(v54 + 14) ^ v56 ^ (125 * BYTE3(v56)) ^ 0x37;
  v26[155] = v22;
  LODWORD(v55) = ((*(*v17 + (*v19 & 0xFFFFFFFFE6F073DCLL)) ^ (v54 + 13)) & 0x7FFFFFFF) * v9;
  v57 = (v55 ^ WORD1(v55)) * v9;
  LOBYTE(v56) = *((v57 >> 24) + v8 + 1) ^ *((v57 >> 24) + v14 + 5) ^ *(v7 + (v57 >> 24)) ^ *(v54 + 13) ^ v57 ^ (125 * BYTE3(v57));
  LOBYTE(v57) = STACK[0x219E];
  v26[156] = (v56 ^ ((v56 ^ v13) - 21) ^ ((v56 ^ a1) + 119) ^ 0x9C) - 64;
  v26[157] = v57;
  v58 = *(v16 + 12);
  LODWORD(v16) = ((*(*v17 + (*v19 & 0xFFFFFFFFE6F073DCLL)) ^ (v16 + 12)) & 0x7FFFFFFF) * v9;
  v59 = (v16 ^ WORD1(v16)) * v9;
  LOBYTE(v59) = *((v59 >> 24) + v8 + 1) ^ *((v59 >> 24) + v14 + 5) ^ *(v7 + (v59 >> 24)) ^ v58 ^ v59 ^ (125 * BYTE3(v59));
  v26[158] = (((v59 ^ 0xC9) - 43) ^ ((v59 ^ 0x71) + 109) ^ ((v59 ^ 0xB8) - 90)) - 15;
  v26[159] = STACK[0x12A7];
  return (*(STACK[0xF18] + 8 * (v15 + 2580)))();
}

uint64_t sub_1004C6FA4@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x10ED8]) = v1 - 193924789 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x185B3BF8) - 1738851329) ^ 0x2EE00999) + 1731353478;
  STACK[0x10EE8] = a1;
  STACK[0x10EE0] = ((v1 + 27812) - 0x43A3440AF91E165FLL) ^ &STACK[0xF28];
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 44160)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1004C70A0@<X0>(int a1@<W8>)
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = 1763823515;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1004C7400()
{
  LODWORD(STACK[0x10EEC]) = v3 + 17902189 * ((~(&STACK[0x10000] + 3800) & 0x81FBDCA8 | (&STACK[0x10000] + 3800) & 0x7E042350) ^ 0xFB4CAB8) + 33117;
  STACK[0x10ED8] = v1;
  STACK[0x10EE0] = v1;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v3 ^ 0xD450)))(&STACK[0x10ED8]);
  v6 = *v1 & 0xFu ^ (((v3 + 81) | 9) - 127);
  v7 = v1[v6];
  v8 = *(v0 + v6);
  v9 = *(v6 + STACK[0xEC0] + 4);
  LODWORD(v6) = *(v6 + STACK[0xEA0] + 2);
  v10 = -3 * (*v1 & 0xF ^ (((v3 - 7599) | 0x2209) - 127));
  v11 = v7 ^ v8;
  v12 = STACK[0x10EE8];
  v13 = ((((v11 ^ v9 ^ v10 ^ v6 ^ 0xB9) - 2) ^ ((v11 ^ v9 ^ v10 ^ v6 ^ 0xC5) - 126) ^ ((v11 ^ v9 ^ v10 ^ v6 ^ 0x7C) + 57)) - 69);
  v14 = v11 ^ v10 ^ v9 ^ v6;
  if (v13 >= 0xAB)
  {
    v14 = (((v14 ^ 0xFFFFFFB5) - 32) ^ ((v14 ^ 0x11) + 124) ^ ((v14 ^ 0xA4) - 49)) - 22;
  }

  *v2 = (v14 ^ 0x27EFE7EF) + ((2 * v14) & 0x1DE) - 532254658;
  return (*(v4 + 8 * ((15 * (v12 != -371865839)) ^ v3)))(v5);
}

uint64_t sub_1004C75A4(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  v8 = v6 - 374832600;
  if (v6 == 374832625)
  {
    v8 = 0;
  }

  v9 = ((*(v4 + v8) & 7 ^ (3 * (v7 ^ 0x3D) - 28) ^ 0x3A) + 53) ^ ((*(v4 + v8) & 7 ^ 0x56) - 108) ^ ((*(v4 + v8) & 7 ^ 0xA1) + 101);
  v10 = (v9 + 64) ^ (((v9 + 64) ^ 0xBF) + 69) ^ (((v9 + 64) ^ 0x28) - 44) ^ (((v9 + 64) ^ 0x6C) - 104) ^ (-60 - v9) ^ 0xE4;
  v9 = 32 - v9;
  v11 = (v9 ^ 0x29) & (2 * (v9 & 0xAC)) ^ v9 & 0xAC;
  v12 = ((2 * (v9 ^ 0x61)) ^ 0x9A) & (v9 ^ 0x61) ^ (2 * (v9 ^ 0x61)) & 0xCC;
  v13 = (((4 * (v12 ^ 0x45)) ^ 0x34) & (v12 ^ 0x45) ^ (4 * (v12 ^ 0x45)) & 0xCC) & (16 * ((v12 ^ 0x80) & (4 * v11) ^ v11)) ^ (v12 ^ 0x80) & (4 * v11) ^ v11 ^ 0xCD;
  *(v4 + v5) = ((a4 ^ a2) << ((v9 ^ (2 * v13) ^ 0xA8) & 0xC9 ^ 0x88) << ((v9 ^ (2 * v13) ^ 0xA8) & 0x36 ^ 0x16)) ^ ((a4 ^ a2) >> (v10 & 0x51 ^ 0x40) >> (v10 & 0xAE ^ 0xA0)) ^ a2;
  return (*(STACK[0xF18] + 8 * v7))();
}

uint64_t sub_1004C7C3C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = 8 * v6;
  v9 = ((((8 * v6) ^ 0x4AA62EAC) - 1615587331) ^ (((8 * v6) ^ 0x1505F6FA) - 1072181333) ^ ((LODWORD(STACK[0xE30]) ^ (8 * v6) ^ 0x99A5AC54) - 2052218658)) + 1221298959;
  v10 = (v9 ^ 0xFFFFEFFF) + 125974;
  v11 = (v9 ^ 0xFB6F7F7E) + 642350230;
  v12 = STACK[0xED0];
  v13 = *(STACK[0xED0] + 4 * ((2899 * (((v6 ^ 0x857D1F86) + 1643194964) ^ ((v6 ^ 0x6336AD25) - 2017814287) ^ ((v6 ^ 0xC7A83A98) + 589565774)) + 826523451) % 0x26C4));
  v14 = (((8 * v6) ^ 0xD11B201F) - 133261116) ^ (((8 * v6) ^ 0x2D449E16) + 72427211) ^ (((8 * v6) ^ 0xF343FFCF) - 631879916);
  v15 = ((v9 ^ 0x12A8B5CC) + 46631) ^ v9 ^ ((v9 ^ 0xE643) + 58794) ^ ((v9 ^ 0x4065) + 17296);
  v16 = ((v9 ^ 0x4BCC93B6) - 1763012515) ^ v9 ^ ((v9 ^ 0x86586EC7) + 1535012142) ^ ((v9 ^ 0x14227E1A) - 922452494);
  v17 = ((((8 * v6) ^ 0xE3A81ED) + 108029421) ^ (((8 * v6) ^ 0x35190D34) + 1028909366) ^ (((8 * v6) ^ 0x343FCD00) + 1014311170)) * v7 - 1398857595;
  v18 = 707 * (((v13 ^ 0x8F01DB86) + 294853651) ^ ((v13 ^ 0x2A59AD10) - 1261737339) ^ ((v13 ^ 0xF37AF354) + 1843934401)) - 1053107205;
  v19 = __PAIR64__(v15 ^ v10, v16 ^ v11) >> 17;
  v20 = *(STACK[0xEC0] + 4 * (v18 % 0x300));
  v21 = ((((8 * v6) ^ 0x3F565E15) + 1931298209) ^ (((8 * v6) ^ 0xD7976952) - 1680051480) ^ (((8 * v6) ^ 0xE7DD769B) - 1416205009)) * v7 + 1290803004;
  v22 = (v20 ^ 0xB9E67652) + 1273310027;
  v23 = (v20 ^ 0x503BDB64) - 1573353859;
  v24 = v20 ^ 0xF88024DB;
  HIDWORD(v25) = v19 ^ 0xF427C89C;
  LODWORD(v25) = v19 ^ 0xF427C89C;
  LODWORD(STACK[0xE60]) = v17 - ((((v17 >> 5) * a2) >> 32) >> 1) * a6;
  v26 = ((((8 * v6) ^ 0xCB2FEF6) - 1015460914) ^ (((8 * v6) ^ 0xE2EC6ED) - 1041927209) ^ (((8 * v6) ^ 0xD8079C4) - 1035219712)) * v7 - 666285351;
  v27 = ((((8 * v6) ^ 0x8C24CA71) - 836989977) ^ (((8 * v6) ^ 0xC7496F7D) - 2056179989) ^ (((8 * v6) ^ 0x4471E4C8) + 105489760)) * v7 + 520748734;
  v28 = v26 - ((((v26 >> 5) * a2) >> 32) >> 1) * a6;
  v29 = v27 - ((((v27 >> 5) * a2) >> 32) >> 1) * a6;
  v30 = ((((8 * v6) ^ 0x9E0DAFB2) - 48656667) ^ (((8 * v6) ^ 0x75190807) + 369961298) ^ (((8 * v6) ^ 0xE408E677) - 2028157150)) * v7 - 934327483;
  v31 = v30 - ((((v30 >> 5) * a2) >> 32) >> 1) * a6;
  v32 = ((((8 * v6) ^ 0x562C8AFE) + 889997584) ^ (((8 * v6) ^ 0x9B0CC459) - 131332183) ^ (((8 * v6) ^ 0xC23C0F7D) - 1591948147)) * v7 - 1205636342;
  v33 = v32 - ((((v32 >> 5) * a2) >> 32) >> 1) * a6;
  v34 = *(a4 + 8 * (v21 - ((((v21 >> 5) * a2) >> 32) >> 1) * a6));
  v35 = (((8 * v6) ^ 0xD7C07BEC) - 2036959657) ^ (((8 * v6) ^ 0x22A86BCC) + 1946052215) ^ (((8 * v6) ^ 0xFA7451E3) - 1423811494);
  v36 = ((((8 * v6) ^ 0x59BC0498) + 1015669808) ^ (((8 * v6) ^ 0xDED03843) - 1142564619) ^ (((8 * v6) ^ 0x88707D03) - 314204747)) * v7 - 1933891354;
  v37 = *(a4 + 8 * v28);
  v38 = v36 - ((((v36 >> 5) * a2) >> 32) >> 1) * a6;
  v39 = ((((8 * v6) ^ 0x42B34071) + 379122706) ^ (((8 * v6) ^ 0x4C56AABB) + 410853084) ^ (((8 * v6) ^ 0x1F9AB0F) + 1439833968)) * v7 - 1731345028;
  v40 = ((((v25 >> 15) ^ 0xCC0C0F61) - 851208104) ^ (((v25 >> 15) ^ 0x947459CD) - 1791242500) ^ (((v25 >> 15) ^ 0xEB9842F6) - 354953791)) * v7 - 916808773;
  v41 = v39 - ((((v39 >> 5) * a2) >> 32) >> 1) * a6;
  v42 = (((8 * v6) ^ 0x82B0414C) - 986295076) ^ (((8 * v6) ^ 0x38DB8529) + 2136838335) ^ (((8 * v6) ^ 0xB57785A4) - 219049932);
  v43 = ((((8 * v6) ^ 0x3A9BA761) - 617648998) ^ (((8 * v6) ^ 0xEEB64E26) + 251823583) ^ (((8 * v6) ^ 0xDB31A880) + 981820281)) * v7 - 1848267470;
  v44 = v43 - ((((v43 >> 5) * a2) >> 32) >> 1) * a6;
  v45 = (((v6 ^ 0xA9E391A2) + 1444703838) ^ ((v6 ^ 0xCB8818A0) + 880273248) ^ ((v6 ^ 0x4388013D) - 1132986685)) + 1561651116;
  v46 = 2899 * (v22 ^ v23 ^ (v24 + 176388548)) + 890921534;
  v47 = ((v45 ^ 0xA063194B) + 1689106905) ^ v45 ^ ((v45 ^ 0xC92261C0) + 233619796) ^ ((v45 ^ 0x6D8F987C) - 1455343376) ^ ((v45 ^ 0x3FFFBF9B) - 80666871);
  v48 = (((v8 ^ 0xEE142389) - 495200992) ^ ((v8 ^ 0x2331B3BA) + 794707245) ^ ((v8 ^ 0xC239D1EE) - 833214599)) * v7;
  v49 = ((v8 ^ 0xC702A737) + 388709126) ^ ((v8 ^ 0xC9A31086) + 428510389) ^ ((v8 ^ 0x1BDF66F) - 778802594);
  v50 = v46 % 0x26C4;
  v51 = ((v8 ^ 0x84EDA0BD) - 1665817668) ^ ((v8 ^ 0x75F32731) + 1839932472);
  v52 = v8 ^ 0xFE02C64C;
  v53 = *(v12 + 4 * v50);
  v54 = v51 ^ (v52 - 430258869);
  v55 = v35 * v7 - 1912189880;
  v56 = (STACK[0xEB0] + (v53 ^ 0xC6A71E2));
  LODWORD(v53) = v55 - ((((v55 >> 5) * a2) >> 32) >> 1) * a6;
  v57 = v49 * v7 + 1070809105 - (((((v49 * v7 + 1070809105) >> 5) * a2) >> 32) >> 1) * a6;
  v58 = (v48 + 1323413896) ^ (((v48 + 1323413896) ^ 0x9E15A54D) + 939057421) ^ (((v48 + 1323413896) ^ 0x301F0D32) - 1712174732) ^ (((v48 + 1323413896) ^ 0x1FE7EC3C) - 1240815490) ^ (((v48 + 1323413896) ^ 0xE7FFFFFD) + 1309850557) ^ 0x2C4264B2;
  v59 = 1864610357 * ((1864610357 * ((v56 ^ LODWORD(STACK[0xD50])) & 0x7FFFFFFF)) ^ ((1864610357 * ((v56 ^ LODWORD(STACK[0xD50])) & 0x7FFFFFFF)) >> 16));
  v60 = 0x1C0E070381C0E1 * (((v58 ^ 0xAD04682ABFB93E81) + 0x52FB97D54046C17FLL) ^ ((v58 ^ 0x9D74EAB8CC1B34D4) + 0x628B154733E4CB2CLL) ^ ((v58 ^ 0x3070829209F2D559) - 0x3070829209F2D559)) + 0x47B7AD1DD8C79AB4;
  v61 = v59 >> 24;
  v62 = v60 ^ ((v60 ^ 0x8077A4FDE92F80A9) + 0x63D9A146318EEE7FLL) ^ ((v60 ^ 0xFEB2DAE0090F8D1FLL) + 0x1D1CDF5BD1AEE3C9) ^ ((v60 ^ 0x1F687BB6F0A6EF39) - 0x33981F2D7F87E11) ^ ((v60 ^ 0x7DFCFFEF37D873A7) - 0x61AD05AB1086E28FLL);
  LOBYTE(v59) = v59 ^ *v56 ^ *(STACK[0xE90] + (v59 >> 24));
  v63 = (__CFADD__(v62 ^ 0x42A1CC9FD3CBCE5, 0xEEC6F7A6D17FCF8ALL) - 1) ^ (__CFADD__(v62 ^ 0xDB4285CDAB66A56FLL, 0x31AE6EA28725D604) - 1);
  v64 = ((v62 ^ 0x42A1CC9FD3CBCE5) - 0x113908592E803076) ^ ((v62 ^ 0xDB4285CDAB66A56FLL) + 0x31AE6EA28725D604);
  v62 ^= 0xC3396340710488A2;
  v65 = __CFADD__(v62, 0x29D5882F5D47FBCFLL);
  LOBYTE(v12) = *(STACK[0xE80] + v61);
  v66 = v64 ^ (v62 + 0x29D5882F5D47FBCFLL);
  LODWORD(v64) = ((v66 * a6) >> 64) + (v63 ^ (v65 - 1)) * a6;
  v67 = v61 + STACK[0xE70];
  v68 = -107 * v61;
  v69 = *(a4 + 8 * v31);
  v70 = v59 ^ v12;
  v71 = *(a4 + 8 * v33);
  v72 = *(a4 + 8 * v57);
  v73 = *(v67 + 1);
  v74 = *(a4 + 8 * v53);
  v75 = *(a4 + 8 * v41) ^ 0x12C563131E5879D2;
  v76 = *(a4 + 8 * (v42 * v7 - 770884845 - (((((v42 * v7 - 770884845) >> 5) * a2) >> 32) >> 1) * a6));
  v77 = *(a4 + 8 * (v14 * v7 + 1442428783 - (((((v14 * v7 + 1442428783) >> 5) * a2) >> 32) >> 1) * a6));
  v78 = v70 ^ v73 ^ v68;
  v79 = __CFADD__(v66 * a6, 0x82C3573A8F4F4A60) + v64 + 1457549457;
  v80 = *(a4 + 8 * (v40 - ((((v40 >> 5) * a2) >> 32) >> 1) * a6)) ^ 0xD23D0DDF88EF2563;
  if (v48 - 120652054 >= 0x920)
  {
    v81 = v79;
  }

  else
  {
    v81 = v48 + 1336897319;
  }

  v82 = v70 ^ v68 ^ v73;
  v83 = 0x6D5E07F6DA936D89;
  if (v82)
  {
    v83 = v80;
  }

  v84 = 0xCC1498B5FF6596B6;
  if ((v70 ^ (v73 ^ v68)))
  {
    v84 = v77 ^ 0x20F3103F0AE0EBBLL;
  }

  v85 = v54 * v7 + 2089743395;
  v86 = 0x97C836F3B4139F0;
  if (((v70 ^ (v73 ^ v68)) & 0x10) != 0)
  {
    v86 = v37 ^ 0xB61F8946693D711ALL;
  }

  v87 = v85 - ((((v85 >> 5) * a2) >> 32) >> 1) * a6;
  v88 = v71 ^ 0xA2EEDF20FD3DE51ALL;
  if ((v78 & 8) != 0)
  {
    v89 = v75;
  }

  else
  {
    v89 = 0xDCDECAA51193E1DFLL;
  }

  v90 = v72 ^ 0xB7D37BAF86B90085;
  if ((v78 & 8) != 0)
  {
    v91 = *(a4 + 8 * v38) ^ 0x816BEF53473C5567;
  }

  else
  {
    v91 = 0x3E08E57A15401D8DLL;
  }

  v92 = ((v82 ^ 0x68) - 60) ^ ((v82 ^ 0xD1) + 123) ^ ((v82 ^ 0xB9) + 19);
  if ((v78 & 0x20) == 0)
  {
    v90 = 0x8B07186D4C5486FLL;
  }

  v93 = (v92 + 84);
  if ((v78 & 0x20) != 0)
  {
    v94 = v74 ^ 0xF6D2D3B44B677A4DLL;
  }

  else
  {
    v94 = 0x38C97A0244ACE240;
  }

  if (v93 < 0)
  {
    v95 = v34 ^ 0x220153FB85A3E9A0;
  }

  else
  {
    v95 = 0x9D6259D2D7DFA14ALL;
  }

  if (v93 < 0)
  {
    v96 = v76 ^ 0x3B45C6DADF2DCBD3;
  }

  else
  {
    v96 = 0xF55E6F6CD0E653DELL;
  }

  if ((v78 & 2) != 0)
  {
    v97 = v88;
  }

  else
  {
    v97 = 0x1D8DD509AF41ADF0;
  }

  v98 = ((v69 ^ 0x929FACED81E59A16) - 0x3C12CB7380F5FBF7) ^ ((v69 ^ 0x226C7F027284DB17) + 0x731EE7638C6B450ALL) ^ ((v69 ^ 0x7EE87A59FCAAD90CLL) + 0x2F9AE23802454713);
  v99 = v97 ^ STACK[0xD70];
  v100 = ((((((v78 & 0x10) >> 4) ^ 0xF41255D76F1EC66DLL) + 0xBEDAA289B48E5A8) ^ ((((v78 & 0x10) >> 4) ^ 0x1E7D44D8C245DD0ALL) - 0x1E7D44D8C9EC013FLL) ^ ((((v78 & 0x10) >> 4) ^ 0xEA6F110FAD5B1B67) + 0x1590EEF0590D38AELL)) - 0x312E2006A7A44E84) * (v98 + 0x6096CE280EDBF9ECLL) + 0x312E2006B34E2AB9 * v98 - 0x4651241561B2BA1ELL;
  v101 = (v100 ^ 0x28243A41FD28D08) & (2 * (v100 & 0x908463C65F930DAALL)) ^ v100 & 0x908463C65F930DAALL;
  v102 = ((2 * (v100 ^ 0x38A47A491F29D4CLL)) ^ 0x261C48C59CC321CCLL) & (v100 ^ 0x38A47A491F29D4CLL) ^ (2 * (v100 ^ 0x38A47A491F29D4CLL)) & 0x930E2462CE6190E6;
  v103 = *(a4 + 8 * v87);
  v104 = ((4 * (v102 ^ 0x9102242242209022)) ^ 0x4C38918B39864398) & (v102 ^ 0x9102242242209022) ^ (4 * (v102 ^ 0x9102242242209022)) & 0x930E2462CE6190E0;
  v105 = (v104 ^ 0x8000208000080) & (16 * ((v102 ^ 0x20000008C4000C0) & (4 * v101) ^ v101)) ^ (v102 ^ 0x20000008C4000C0) & (4 * v101) ^ v101;
  v106 = ((16 * (v104 ^ 0x93062460C6619066)) ^ 0x30E2462CE6190E60) & (v104 ^ 0x93062460C6619066) ^ (16 * (v104 ^ 0x93062460C6619066)) & 0x930E2462CE6190E0;
  v107 = (v106 ^ 0x10020420C6010000) & (v105 << 8) ^ v105;
  v108 = (((v106 ^ 0x830C204208609086) << 8) ^ 0xE2462CE6190E600) & (v106 ^ 0x830C204208609086) ^ ((v106 ^ 0x830C204208609086) << 8) & 0x930E2462CE619000;
  v109 = v107 ^ 0x930E2462CE6190E6 ^ (v108 ^ 0x204204240000000) & (v107 << 16);
  v110 = ((v109 << 32) ^ 0x4E6190E600000000) & (((v108 ^ 0x910A04208E6110E6) << 16) & 0x130E246200000000 ^ 0x130C200200000000 ^ (((v108 ^ 0x910A04208E6110E6) << 16) ^ 0x2462CE6100000000) & (v108 ^ 0x910A04208E6110E6));
  v111 = *(a4 + 8 * (v81 - 1457549373)) ^ 0xA03E0911BC747D9FLL;
  v112 = *(a4 + 8 * v44) ^ 0x532B033ABC32621ELL;
  if ((v78 & 2) == 0)
  {
    v112 = 0x9D30AA8CB3F9FA13;
  }

  if ((v78 & 0x40) == 0)
  {
    v111 = 0x1F5D0338EE083575;
  }

  v113 = v103 ^ 0x7EA72143AD8C2218;
  if ((v78 & 0x40) == 0)
  {
    v113 = 0xB0BC88F5A247BA15;
  }

  v114 = (v78 & 4) == 0;
  v115 = (v109 << 32) & 0x130E246200000000 ^ v109;
  v116 = STACK[0xD80] ^ v84 ^ v89 ^ v94;
  v117 = *(a4 + 8 * v29) ^ 0xF5262F71C5316E8FLL;
  if (v114)
  {
    v117 = 0x3B3D86C7CAFAF682;
  }

  v118 = v116 ^ v117 ^ v112 ^ v113 ^ v96 ^ v100;
  v119 = v115 ^ v110;
  v120 = v99 ^ v83 ^ v90;
  v121 = v86 ^ v91;
  v122 = *(a4 + 8 * LODWORD(STACK[0xE60])) ^ 0x724B95AFE4BD70BELL;
  if (v114)
  {
    v122 = 0xCD289F86B6C13854;
  }

  STACK[0xD70] = v120 ^ v121 ^ v122 ^ v111 ^ v95;
  v123 = *(STACK[0xF18] + 8 * ((79 * ((((v47 ^ 0xE2CAEAFD) + 132629074) ^ ((v47 ^ 0x5FA7FA8E) - 1165307357) ^ ((v47 ^ 0x865C4F1F) + 1668376500)) + 568559679 > 0x17)) ^ LODWORD(STACK[0xE40])));
  STACK[0xD80] = v118 ^ (2 * v119) ^ 0x7974C80762A85C15;
  return v123();
}

uint64_t sub_1004C914C()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 34019)))();
  STACK[0x6A88] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1004C92E4@<X0>(int a1@<W0>, int a2@<W8>)
{
  v3 = (285 * (v2 ^ 0x8B31) + 966224789) & 0xC66899FF;
  v4 = v2 + 3475;
  LODWORD(STACK[0x39A0]) = a2;
  v5 = LODWORD(STACK[0x35BC]) > 0xA818BFFC;
  if ((a1 + 1128549638) < 0x57E74003 == v5)
  {
    v5 = a1 + 1128549638 < (v3 ^ 0x57E750B4) + LODWORD(STACK[0x35BC]);
  }

  return (*(STACK[0xF18] + 8 * ((26 * !v5) ^ v4)))();
}

uint64_t sub_1004C93E8@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 ^ 0x6E8 ^ ((a1 - 645) | 0x1288))))();
}

uint64_t sub_1004C9484(uint64_t a1, uint64_t a2)
{
  v2 = (((LODWORD(STACK[0xA5D4]) ^ 0x88F722AB) + 1997069653) ^ ((LODWORD(STACK[0xA5D4]) ^ 0x1B02B43C) - 453162044) ^ ((LODWORD(STACK[0xA5D4]) ^ 0x68E7B5E1) - 1760015841)) + 2337215;
  v3 = (((LODWORD(STACK[0xA5D0]) ^ 0x8F79D3D6) + 1887841322) ^ ((LODWORD(STACK[0xA5D0]) ^ 0x55D8B682) - 1440265858) ^ ((LODWORD(STACK[0xA5D0]) ^ 0x3374A245) - 863281733)) - 153284072;
  v4 = (((LODWORD(STACK[0xA5D8]) ^ 0x8138DE93) + 2126979437) ^ ((LODWORD(STACK[0xA5D8]) ^ 0x5EC2A757) - 1589815127) ^ ((LODWORD(STACK[0xA5D8]) ^ 0x362FBED5) - 909098709)) + v3 * v2 + 1547682897 * (-1162804345 * v3 + 1533084713 * v2) - 731805174;
  return (*(STACK[0xF18] + 8 * ((STACK[0xF10] - 31861) ^ 0x11B9)))(a1, a2, LODWORD(STACK[0x98D4]) ^ v4 ^ ((v4 ^ 0xEB4BEC49) + 1460576333) ^ ((v4 ^ 0x588919EB) - 456370705) ^ ((v4 ^ 0x4F8D39A7) - 204966493) ^ ((v4 ^ 0xBFF57FFF) + 61879291) ^ 0xE0DF0AF1);
}

uint64_t sub_1004C96CC()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * (STACK[0xF10] - 33796));
  return (*(v1 + 8 * (v0 - 29776)))();
}

uint64_t sub_1004C97F0()
{
  STACK[0x61D0] = STACK[0x5948];
  v1 = (&STACK[0xC4D0] + STACK[0x7690]);
  STACK[0x7690] += (v0 + 50523) ^ 0xC7B6;
  STACK[0x1CD0] = 0;
  *v1 = -371865808;
  v2 = *(STACK[0xF18] + 8 * v0);
  v3 = *(STACK[0xF18] + 8 * (v0 + 5769));
  LODWORD(STACK[0x2644]) = 718093791;
  STACK[0x5CF8] = v2;
  return v3();
}

uint64_t sub_1004C98EC@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 136) = v2;
  *(v1 + 8) = a1;
  *(STACK[0x6360] + 4) += (11881 * (v3 ^ 0x4D13)) ^ 0x8B3A;
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_1004C9934()
{
  v2 = STACK[0xF10];
  v3 = (STACK[0xF10] - 1508707148) & 0x59EC919D;
  LODWORD(STACK[0x5564]) = v1;
  LODWORD(STACK[0x6ECC]) = v0;
  return (*(STACK[0xF18] + 8 * ((v3 ^ 0xA97) + v2 - 31321)))();
}

uint64_t sub_1004C99A4()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x5D8B)))((((v0 - 5115) | 0x823) ^ 0x517814CFu) + LODWORD(STACK[0x21A4]));
  STACK[0x7C60] = v2;
  return (*(v1 + 8 * (((v2 != 0) * (((v0 - 5115) ^ 0xC26A) - 16713)) ^ v0)))();
}

uint64_t sub_1004C9A20@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v4 = *(v3 + (961 * (v2 & 0xF) + 528550 - 965 * ((4450744 * (961 * (v2 & 0xF) + 528550)) >> 32)));
  v5 = 417 * (v4 ^ (16 * *(v3 + (961 * (v2 >> (a2 - 95)) + 528550) % 0x3C5)) ^ ((v4 & 0x60 ^ 0x20) + (v4 & 0x60 ^ 0x40)) ^ 0xBD);
  v6 = (*(a1 + (v5 - 944 * ((4549754 * v5) >> 32))) >> 3) & 0xF ^ 4;
  *(v3 + (961 * v2 + 544887) % 0x3C5) = (16 * *(v3 + (961 * v6 + 795708 - 965 * ((4450744 * (961 * v6 + 795708)) >> 32)))) ^ 0x12;
  return (*(STACK[0x6A0] + 8 * ((51802 * (v2 == 255)) ^ a2)))();
}

uint64_t sub_1004C9B3C()
{
  STACK[0x9E50] = ((((v1 - 462420825) | 0x1800A92u) ^ 0x116B1E10CLL) & (2 * v0)) + (v0 ^ 0x77F577F7F9A0FFDDLL) - 0x400166041808E00;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((4508 * ((v1 ^ 0xE1634FF5) > 0xD038DF8C)) ^ (v1 - 1541))))();
}

uint64_t sub_1004C9C98()
{
  LODWORD(STACK[0x7F2C]) = v0 - 6562 + LODWORD(STACK[0x7F2C]) - 35639;
  LODWORD(STACK[0xAC7C]) = -371865839;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x6E45)))(68);
  STACK[0xAC80] = v2 + 0x65D7F4DC84452C66;
  STACK[0x1D00] = v2 + 0x65D7F4DC84452C66;
  return (*(v1 + 8 * (((v2 != 0) * (((v0 - 17617) | 0x4D0) ^ 0x651B)) ^ v0)))();
}

uint64_t sub_1004C9EDC()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 11240;
  STACK[0x8DF8] = v0;
  return (*(STACK[0xF18] + 8 * (((STACK[0x9F58] == 0x981390C2FED9246) * (v1 ^ 0xA094)) ^ v2)))();
}

uint64_t sub_1004C9F30@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + 0x7D88D791D6D64482;
  v3 = STACK[0x938];
  v4 = *(STACK[0x938] + 16);
  LODWORD(STACK[0x10ED8]) = (v1 - 1762666498) ^ (906386353 * ((&STACK[0x10000] + 3800) ^ 0x3101CD24));
  STACK[0x10EE0] = v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 + 11048)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((7 * (*(*v3 + 640 * (((v1 - 5206) ^ 0x77286DE0FCF357) + v2) + 632) != 0)) ^ v1)))(v6);
}

uint64_t sub_1004CA008()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] + 6798;
  STACK[0x9C70] = &STACK[0x7F9C];
  return (*(STACK[0xF18] + 8 * (((STACK[0x9340] == 0) * (v0 - 35607)) ^ v1)))();
}

uint64_t sub_1004CA120()
{
  v2 = v1[1];
  v3 = *v1 + 803044108;
  v4 = v3 < 0x5FFFE5FB;
  if (v4 == v2 > v0 - 1610638989)
  {
    v4 = v3 > v2 + 1610606075;
  }

  return (*(STACK[0xF18] + 8 * ((14314 * v4) ^ v0)))();
}

uint64_t sub_1004CA19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 23 * (STACK[0xF10] ^ 0x898F);
  v4 = STACK[0xF10] - 32968;
  v5 = STACK[0x1F08];
  v6 = STACK[0xF48];
  *(v6 + 24) = *(STACK[0x1F08] + 404);
  *(v6 + 8) = *(v5 + 460);
  v7 = STACK[0xF18];
  STACK[0x98B8] = *(STACK[0xF18] + 8 * v4);
  return (*(v7 + 8 * ((v3 - 765) ^ v4)))(a1, a2, a3, 0x1D54AEB378980553);
}

uint64_t sub_1004CA2FC()
{
  v1 = 0;
  v2 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x14CFE928)) ^ 0x14CFE92BLL;
  v3 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v2 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v2;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *STACK[0x4E08];
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v11 = v10 ^ (349169963 * v9) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
  v12 = vdupq_n_s32(v11);
  v13 = xmmword_100BC7620;
  v14 = xmmword_100BC7630;
  v15 = xmmword_100BC7640;
  v16 = xmmword_100BC7650;
  v17.i64[1] = 0xFFFFFF0FFFFFFF0ELL;
  v18.i64[0] = 0x9393939393939393;
  v18.i64[1] = 0x9393939393939393;
  v19.i64[0] = 0x1000000010;
  v19.i64[1] = 0x1000000010;
  do
  {
    v20 = *(v9 + v1);
    v34.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC7690), v12), vmulq_s32(vaddq_s32(v15, v12), vsubq_s32(v15, v12)));
    v34.val[0] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC76A0), v12), vmulq_s32(vaddq_s32(v16, v12), vsubq_s32(v16, v12)));
    v34.val[2] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC7680), v12), vmulq_s32(vaddq_s32(v14, v12), vsubq_s32(v14, v12)));
    v34.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC7670), v12), vmulq_s32(vaddq_s32(v13, v12), vsubq_s32(v13, v12)));
    *(v9 + v1) = vmulq_s8(vqtbl4q_s8(v34, xmmword_100BC7660), v18);
    v1 += 16;
    v16 = vaddq_s32(v16, v19);
    v15 = vaddq_s32(v15, v19);
    v14 = vaddq_s32(v14, v19);
    v13 = vaddq_s32(v13, v19);
  }

  while (v1 != 256);
  v21 = 0;
  v22 = xmmword_100F52B10;
  v23 = vdupq_n_s32(v11);
  v24 = xmmword_100F52B20;
  v25 = v9 + 256;
  v26.i64[0] = 0x800000008;
  v26.i64[1] = 0x800000008;
  do
  {
    v17.i64[0] = *(v25 + v21);
    v33.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v17, xmmword_100BC7690), v23), vmulq_s32(vaddq_s32(v22, v23), vsubq_s32(v22, v23)));
    v33.val[0] = veorq_s8(vqtbl1q_s8(v17, xmmword_100BC76A0), veorq_s8(v23, vmulq_s32(vaddq_s32(v24, v23), vsubq_s32(v24, v23))));
    v17 = vqtbl2q_s8(v33, xmmword_100F52AD0);
    *(v25 + v21) = vmul_s8(*v17.i8, 0x9393939393939393);
    v24 = vaddq_s32(v24, v26);
    v22 = vaddq_s32(v22, v26);
    v21 += 8;
  }

  while (v21 != 8);
  v27 = 32;
  do
  {
    v28 = 16777619 * ((v11 + v27) ^ v11) % v27;
    v29 = *(v9 + 8 * v28) ^ *(v9 + 8 * v27);
    *(v9 + 8 * v27) = v29;
    v30 = *(v9 + 8 * v28) ^ v29;
    *(v9 + 8 * v28) = v30;
    *(v9 + 8 * v27) ^= v30;
    v31 = v27-- + 1;
  }

  while (v31 > 2);
  return (*(STACK[0xF18] + 8 * v0))(xmmword_100BC7690, xmmword_100BC76A0, v22);
}

uint64_t sub_1004CA608(int a1)
{
  v2 = ((a1 ^ 0xDE54B76A) + 564873366) ^ ((a1 ^ 0x9FC6944A) + 1614375862);
  v3 = (5833 * ((v1 + 371842467) ^ 0x162A38E5) - 1471695201) ^ a1;
  return (*(STACK[0xF18] + 8 * ((v1 + 371842467) ^ 0x162A6464 ^ (35 * (((((v2 ^ (v3 + 1471683535)) - (v1 + 371842467)) | (v1 + 371842467 - (v2 ^ (v3 + 1471683535)))) >> ((v1 + 63) ^ 0x9C)) & 1)))))(1471683535, 35, 1197285880);
}

uint64_t sub_1004CA6D4@<X0>(int a1@<W8>)
{
  v2 = STACK[0x4310];
  v3 = STACK[0x8B50];
  *(*v2 + 72 * v3 + 8) = v1;
  STACK[0x2280] = *(STACK[0x2E20] + 16);
  v4 = *(*v2 + 72 * v3 + 8);
  return (*(STACK[0xF18] + 8 * ((73 * (((v4 - a1) | (a1 - v4)) >= 0)) | 0x9D16u)))();
}

uint64_t sub_1004CA788()
{
  v0 = STACK[0xF18];
  v1 = STACK[0x4B0];
  STACK[0x6728] = *(STACK[0xF18] + 8 * SLODWORD(STACK[0x4B0]));
  return (*(v0 + 8 * ((LODWORD(STACK[0x998]) ^ 0x6647) + v1)))();
}

uint64_t sub_1004CA7C0@<X0>(int a1@<W8>)
{
  v1 = a1 & 0xBEF08F3F;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 & 0xBEF08F3F ^ 0x4192)))();
  return (*(v2 + 8 * (v1 - 18977)))(v3);
}

uint64_t sub_1004CA800@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0xF18];
  STACK[0x8CC0] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 ^ 0xF72C ^ (a1 - 1815352612) & 0x6C34C9FB)))();
}

uint64_t sub_1004CA8E8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - 40533;
  *(a1 + 40) = ((v3 ^ 0x160Cu) + 2094531) | v2;
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_1004CA954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = v5 - 32419;
  *a5 += ((v5 - 19255) | 0x2000) ^ 0x6005;
  LODWORD(STACK[0x10EE0]) = v5 + 155453101 * ((~(&STACK[0x10000] + 3800) & 0xF514DD50 | (&STACK[0x10000] + 3800) & 0xAEB22A8) ^ 0x1332C69F) + 296753103;
  STACK[0x10ED8] = 0;
  v7 = v5 ^ 0x41F1;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * v7))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v8 + 8 * v6);
  return (*(v8 + 8 * (v6 ^ 0x1AF7)))(v9);
}

uint64_t sub_1004CAA10()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16238)))(v0);
  return (*(v2 + 8 * (v1 - 21587)))(v3);
}

uint64_t sub_1004CAAC8@<X0>(uint64_t a1@<X8>)
{
  LODWORD(STACK[0x1CCC]) = v2;
  STACK[0x7690] = a1 - 34906 + ((v1 - 755) | 2u);
  v3 = LODWORD(STACK[0x939C]) ^ 0xE054FE1D;
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v3;
  LODWORD(STACK[0x35EC]) = 1693393321;
  return (*(STACK[0xF18] + 8 * (v1 - 29050)))();
}

uint64_t sub_1004CAB74()
{
  v1 = STACK[0x2C50];
  *v1 = 16;
  v2 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 - 45709 + v0 + 49419)))(v1 + 1);
}

uint64_t sub_1004CAC50()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x8CC9)))(STACK[0x5380]);
  return (*(v1 + 8 * (((STACK[0x5A30] == 0) * ((v0 ^ 0x4663) - 35396 + 11881 * (v0 ^ 0x4663))) ^ v0)))(v2);
}

uint64_t sub_1004CAD04()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((154 * (v0 ^ 0x4CD) - 21486) ^ v0)))();
}

uint64_t sub_1004CADAC()
{
  LODWORD(STACK[0x50AC]) = v1;
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = STACK[0x8204];
  LODWORD(STACK[0x35EC]) = 1693393374;
  return (*(STACK[0xF18] + 8 * (v0 - 29050)))();
}

uint64_t sub_1004CADF0()
{
  v1 = STACK[0xF18];
  STACK[0x88F8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 7935) ^ v0)))();
}

uint64_t sub_1004CAFC0()
{
  if (STACK[0x5F00])
  {
    v1 = v0;
  }

  else
  {
    v1 = 0;
  }

  if (LODWORD(STACK[0x66F0]) != ((2 * STACK[0xF10]) ^ 0x11948) - 371869757)
  {
    v1 = 0;
  }

  return (*(STACK[0xF18] + 8 * ((v1 * (((STACK[0xF10] + 1615769834) & 0x9FB0D3FB) - 3229)) ^ (STACK[0xF10] + 5817))))();
}

uint64_t sub_1004CB034()
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
  STACK[0xC2C0] = 0;
  STACK[0xC2C8] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC2C0] | v10);
  *(&STACK[0xC2C0] | v10) = 0;
  LOBYTE(STACK[0xC2C7]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC2C0] | v12);
  *(&STACK[0xC2C0] | v12) = STACK[0xC2C6];
  LOBYTE(STACK[0xC2C6]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC2C0] | v14);
  *(&STACK[0xC2C0] | v14) = STACK[0xC2C5];
  LOBYTE(STACK[0xC2C5]) = v15;
  v16 = STACK[0xC2C0];
  LOBYTE(STACK[0xC2C0]) = STACK[0xC2C4];
  LOBYTE(STACK[0xC2C4]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC2C0] | v17);
  *(&STACK[0xC2C0] | v17) = STACK[0xC2C3];
  LOBYTE(STACK[0xC2C3]) = v18;
  v19 = STACK[0xC2C1];
  LOBYTE(STACK[0xC2C2]) = STACK[0xC2C0];
  LOWORD(STACK[0xC2C0]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC2C0] = vmla_s32(v22, STACK[0xC2C0], vdup_n_s32(0x1000193u));
  STACK[0xC2C8] ^= STACK[0xC2C0];
  STACK[0xC2C8] = vmul_s32(vsub_s32(STACK[0xC2C8], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC2CA];
  LOWORD(STACK[0xC2C9]) = STACK[0xC2C8];
  LOBYTE(STACK[0xC2C8]) = v23;
  v24 = (&STACK[0xC2C8] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC2CB];
  LOBYTE(STACK[0xC2CB]) = v19;
  LOBYTE(v24) = STACK[0xC2C8];
  LOBYTE(STACK[0xC2C8]) = STACK[0xC2CC];
  LOBYTE(STACK[0xC2CC]) = v24;
  v25 = (&STACK[0xC2C8] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC2CD];
  LOBYTE(STACK[0xC2CD]) = v24;
  v26 = (&STACK[0xC2C8] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC2CE];
  LOBYTE(STACK[0xC2CE]) = v25;
  v27 = (&STACK[0xC2C8] | v10);
  v28 = *v27;
  *v27 = STACK[0xC2CF];
  LOBYTE(STACK[0xC2CF]) = v28;
  v29 = STACK[0xC2C8];
  v30 = (553300517 * STACK[0xC2C8]) ^ v9;
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
  *STACK[0x940] = STACK[0xC2C8];
  return (*(STACK[0xF18] + 8 * (v1 - 12628)))(v47, v48);
}

uint64_t sub_1004CB4C0()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * (v0 + 899));
  return (*(v1 + 8 * ((v0 + 899) ^ 0x141B ^ (14348 * (v0 - 94217307 < ((v0 + 899) ^ 0xD8612B44))))))();
}

uint64_t sub_1004CB52C()
{
  v0 = STACK[0xF10];
  v1 = ((STACK[0xF10] + 153694260) & 0xF6D6EEF9) - 17353;
  v2 = STACK[0xF10] - 28434;
  LODWORD(STACK[0x3AC4]) += 4;
  v3 = STACK[0x5378];
  STACK[0x10ED8] = STACK[0x6850];
  STACK[0x10EE8] = v3;
  LODWORD(STACK[0x10EF0]) = (v0 + 5112) ^ (634647737 * ((((&STACK[0x10000] + 3800) | 0x436FDEA4) - ((&STACK[0x10000] + 3800) | 0xBC90215B) - 1131404965) ^ 0x2EF9F158));
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0x408C)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (((LOBYTE(STACK[0x10EE0]) != 37) * (v1 ^ 0x66E1)) ^ v2)))(v5);
}

uint64_t sub_1004CB62C(int a1)
{
  STACK[0xDB0] = 0;
  v3 = (v2 + v1 - 0x3CE25E0EC5208EB3 + ((a1 + 10554) | 0x222u));
  STACK[0xAF0] = v3;
  v4 = *v3 == v2;
  STACK[0xDA0] = &STACK[0x622C];
  v5 = *(STACK[0xF18] + 8 * ((v4 * (13 * (a1 ^ 0x5C4D) + 3570)) ^ a1));
  STACK[0xD20] = v1;
  return v5();
}

uint64_t sub_1004CB6A8()
{
  STACK[0x8FE8] = *(v2 + v3);
  LODWORD(STACK[0x44A8]) = v0;
  LODWORD(STACK[0x7FD8]) = 1954115685;
  LODWORD(STACK[0x704C]) = -2116087555;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * ((v1 + 1232427740) ^ 0x4975859D ^ (((v1 + 417693694) & 0xE71AEDEE ^ 0x9CB0) * (v1 == 1062412290)))))();
}

uint64_t sub_1004CB754()
{
  v1 = STACK[0x7690];
  STACK[0x9420] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v1 + 400;
  STACK[0x9058] = 0;
  LODWORD(STACK[0x892C]) = 1202816382;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x685B)))(1640);
  STACK[0x27B0] = v3;
  return (*(v2 + 8 * ((((v0 ^ (v3 == 0)) & 1) * (v0 - 41650)) ^ v0)))();
}

uint64_t sub_1004CB7D4()
{
  v2 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x20CE6D0C)) ^ 0x20CE6D0CLL;
  v3 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v2 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v2;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *(v0 + 56);
  v11 = v9 ^ (550399244 * v10) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
  for (i = 1; i != 99; ++i)
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

  while (v16 != 784);
  v27 = 0;
  v28 = xmmword_100F52B30;
  v29 = xmmword_100F52B40;
  v30 = vdupq_n_s32(v11);
  v31 = v10 + 784;
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

uint64_t sub_1004CBA5C()
{
  STACK[0x1D50] = STACK[0x53C0];
  LODWORD(STACK[0x8790]) = STACK[0x4898];
  STACK[0x7238] = v0;
  v2 = STACK[0x7690];
  v3 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x83D8] = v3;
  STACK[0x5920] = (v3 + 1360);
  STACK[0x7690] = v2 + 1616;
  LOWORD(STACK[0x10EE0]) = 23473 * ((2 * ((&STACK[0x10000] + 3800) & 0x64F8) - (&STACK[0x10000] + 3800) - 25849) ^ 0x5623) + 18064;
  LODWORD(STACK[0x10ED8]) = (v1 + 12358) ^ (906386353 * ((2 * ((&STACK[0x10000] + 3800) & 0x7DBC64F8) - (&STACK[0x10000] + 3800) - 2109498617) ^ 0xB3425623));
  STACK[0x10EE8] = &STACK[0x5204];
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 51154)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((v1 ^ 0x1143) + v1)))(v5);
}

uint64_t sub_1004CBB5C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xC90]) = a1 ^ 0x8472;
  v2 = (a1 ^ 0xFFFFF0B6) + v1;
  *((v1 - 753731855) + STACK[0x9DE8] + STACK[0x9DC0] - 0x3730179A23D77028) = *(STACK[0x9DE0] + (v1 - 753731855)) ^ 0x5F;
  v3 = *(STACK[0xF18] + 8 * a1);
  LODWORD(STACK[0xEA0]) = v2;
  return v3();
}

uint64_t sub_1004CBBCC()
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393327;
  return (*(STACK[0xF18] + 8 * (v0 - 29050)))();
}

uint64_t sub_1004CBCE4()
{
  STACK[0xEA0] = v2;
  STACK[0xEC0] = v1;
  STACK[0xE90] = v1 + 376;
  return (*(STACK[0xF18] + 8 * ((115 * (((v0 - 1163) ^ 0x95206787) + (((v3 ^ 0xE94176AC) + 381585748) ^ ((v3 ^ 0x4064787) - 67520391) ^ ((v3 ^ 0x492F63A) - 76740154)) != -1421180784)) ^ v0)))();
}

uint64_t sub_1004CBDBC()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 21354)))(v2);
}

uint64_t sub_1004CBFA4()
{
  STACK[0x5740] = 0;
  *STACK[0x24C8] = 81;
  v2 = STACK[0x17B8];
  v3 = ((*(v0 + 360) ^ 0xB24E4D00B24145D8) + 0x4DB1B2FF4DBEBA28) ^ ((*(v0 + 360) ^ 0xB3E6EFC6A2DD320FLL) + 0x4C1910395D22CDF1) ^ (((((v1 + 328) | 0x8113) + 0x8299BCA3F715A56) ^ *(v0 + 360)) - 0x8299BCA3F71E591);
  v4 = STACK[0x17B8] ^ 0x77FFA6FFEE6DAD0FLL;
  v5 = 297845113 * ((((2 * &STACK[0x10ED8]) | 0x3DDA4128656C08C0) - &STACK[0x10ED8] + 0x6112DF6BCD49FBA0) ^ 0x29B68151458518FELL);
  STACK[0x10ED8] = &STACK[0x4AC4];
  STACK[0x10EE0] = &STACK[0x5740];
  STACK[0x10EF8] = ((v1 + 302833343) & 0xEDF37EF5 ^ 0x6EAED6A09B548DE3) + v5 + v3;
  STACK[0x10EE8] = v4 - v5 + ((2 * v2) & 0xEFFF4DFFDCDB5A1ELL) - 0x409720964440A400;
  LODWORD(STACK[0x10EF0]) = v5 + v1 + 35612;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v1 ^ 0xC46B)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * ((41208 * (LODWORD(STACK[0x10EF4]) == -371865839)) ^ v1)))(v7);
}

uint64_t sub_1004CC1E4@<X0>(unsigned int a1@<W8>)
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = 1843595970;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1004CC2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10] - 34214;
  LODWORD(STACK[0x9FCC]) = STACK[0x98D4];
  return (*(STACK[0xF18] + 8 * (v3 ^ 0x1DA3)))(a1, a2, a3);
}

uint64_t sub_1004CC328()
{
  v1 = STACK[0xF18];
  STACK[0x4050] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 6320) | 0x1A1) + 17957) ^ v0)))();
}

uint64_t sub_1004CC578()
{
  v1 = v0 - 22454;
  v2 = STACK[0xF18];
  STACK[0x5418] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 - 28037 + ((v1 + 660657777) & 0xD89FBF7F))))();
}

uint64_t sub_1004CC684@<X0>(uint64_t a1@<X8>)
{
  STACK[0xA298] = STACK[0x62B8] + 776;
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 ^ 0x3CD ^ (4694 * (a1 + 1232923028 + ((a1 + 968185743) & 0xC64AB7EF) > 0x3F0D0DB0)))))();
}

uint64_t sub_1004CC7C8()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 26646)))(v2);
}

uint64_t sub_1004CC7F8@<X0>(int a1@<W8>)
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = 394946506;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1004CCB0C@<X0>(unsigned int a1@<W0>, char a2@<W1>, char a3@<W2>, int a4@<W3>, unsigned int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, unsigned int a9@<W8>)
{
  v10 = a9 > a1;
  if (v10 == a7 + a4 < a5)
  {
    LOBYTE(v10) = a7 + a4 < v9;
  }

  return (*(STACK[0xF18] + 8 * ((((v10 ^ ((a8 ^ a2) + a3)) & 1) * a6) ^ a8)))();
}

uint64_t sub_1004CCBB8()
{
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 ^ 0x4192)))(v0);
  *v1 = 0;
  return (*(v3 + 8 * (v2 - 18905)))(v4);
}

uint64_t sub_1004CCDA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, unint64_t a6, int a7)
{
  LODWORD(STACK[0xE90]) = a7;
  STACK[0xEB0] = a6;
  LODWORD(STACK[0xEA0]) = a5;
  STACK[0xED0] = a4;
  return (*(STACK[0xF18] + 8 * ((12331 * (v7 != -384680772)) ^ (v7 + 243650839))))();
}

uint64_t sub_1004CCE6C()
{
  STACK[0x4FA8] = v0;
  LODWORD(STACK[0x45D4]) = v2;
  v4 = (((v3 ^ 0xAB8BA5) - 11242405) ^ ((v3 ^ 0xB4F236C9) + 1259194679) ^ ((v3 ^ 0x5D8C7A7D) - 1569487485)) + LODWORD(STACK[0xEA0]);
  v5 = &STACK[0xC4D0] + STACK[0xEB0];
  STACK[0x7690] = ((2 * v1) ^ 0x18A58u ^ ((v1 - 35898) - 4294926547)) + STACK[0xEB0];
  v6 = STACK[0xF18];
  v7 = *(STACK[0xF18] + 8 * (v1 + 16262));
  STACK[0xEB0] = v5;
  v8 = (v5 + 447);
  v9 = *(&off_1010A0B50 + v1 - 34690) - 2008171999;
  STACK[0xE90] = (v5 + 319);
  v7(v9);
  v10 = *(v6 + 8 * (v1 + 16262));
  v11 = *(&off_1010A0B50 + (v1 ^ 0x8F79)) - 187919630;
  STACK[0xEA0] = v8;
  v12 = v10(v11, v8, 64);
  return (*(v6 + 8 * ((30707 * ((((v4 - 8) ^ ~(v1 - 35395)) & (v4 - 8 - (v1 - 35395)) | (v1 - 35395) & ~(v4 - 8)) >> 31)) ^ (v1 - 29599))))(v12);
}

uint64_t sub_1004CCFC8@<X0>(unint64_t *a1@<X8>)
{
  STACK[0xA280] = v2 ^ 0xE9D5C711;
  STACK[0x51E8] = *a1;
  v3 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v1);
  return (*(v3 + 8 * (v1 + 1682)))();
}

uint64_t sub_1004CD16C@<X0>(int a1@<W8>)
{
  v2 = STACK[0xED0];
  *(v2 - 0x217E172EFA1E7E4) = 1467396097;
  *(v2 - 0x217E172EFA1E7ECLL) = 0;
  LODWORD(STACK[0x2AB4]) = a1;
  return (*(STACK[0xF18] + 8 * (v1 + 19691)))();
}

uint64_t sub_1004CD220()
{
  v2 = STACK[0xF10];
  v3 = (STACK[0xF10] - 33591) | 0x618;
  LODWORD(STACK[0x5564]) = v1;
  LODWORD(STACK[0x6ECC]) = v0;
  LODWORD(STACK[0x54FC]) = v1;
  v4 = STACK[0xF18];
  STACK[0x3F30] = *(STACK[0xF18] + 8 * (v2 - 31326));
  return (*(v4 + 8 * (((v2 == 1956455583) * (v3 + 54217)) ^ (v2 - 11256))))();
}

uint64_t sub_1004CD29C@<X0>(char a1@<W0>, int a2@<W1>, int a3@<W2>, unsigned int a4@<W3>, int a5@<W4>, int a6@<W5>, unsigned int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v24 = *(STACK[0xEA0] + ((495 * ((v10 - (a9 & 0xD4) + 106) ^ v13)) & 0x1FF ^ 0x100));
  v25 = v24 & 0x1E ^ v15;
  v26 = a3 + ((v24 ^ (2 * ((v24 ^ a1) & (2 * ((v24 ^ a1) & (2 * ((v24 ^ a1) & (2 * ((v24 ^ a1) & (2 * ((v24 ^ a1) & (2 * v25) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25))) ^ 0xFB) * a2;
  v27 = v19 + (*(v9 + v26 - (((v26 * a4) >> 32) >> 1) * a5) ^ a6) * a2;
  *(v20 + (*(v12 + 4 * (v16 + (v10 ^ a7) * a8 - ((((v16 + (v10 ^ a7) * a8) * v17) >> 32) >> 13) * v18)) ^ v14) + v22) = *(v9 + v27 - (((v27 * a4) >> 32) >> 1) * a5) ^ v21;
  return (*(STACK[0xF18] + 8 * (((a9 != 510) * v23) ^ v11)))();
}

void *sub_1004CD388(_DWORD *a1)
{
  *a1 = 1;
  STACK[0x8038] = a1;
  LODWORD(STACK[0x6A40]) = *(v1 + 32);
  STACK[0x5CA8] = *(v1 + 40);
  STACK[0x9298] = STACK[0x47E8];
  v3 = STACK[0x7690];
  v4 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x1E50] = v4;
  STACK[0x18A0] = (v4 + 16);
  STACK[0x7690] = v3 + ((v2 + 17014) ^ 0x4AE1);
  STACK[0x46D8] = (a1 + 1);
  LODWORD(STACK[0x53D4]) = 2065143989;
  v5 = STACK[0xF18];
  STACK[0x37B8] = *(STACK[0xF18] + 8 * v2);
  return (*(v5 + 8 * (v2 ^ 0x3F61)))(&STACK[0x53D4]);
}

uint64_t sub_1004CD4F0()
{
  v0 = STACK[0xF10] - 27305;
  STACK[0x38C0] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004CD588()
{
  v1 = v0 - 26450;
  v2 = LODWORD(STACK[0x5D54]) - 539995453 + ((((LODWORD(STACK[0x5508]) << (v0 - 58)) ^ 0xBB95F20C) - 211512013) ^ (((LODWORD(STACK[0x5508]) << (v0 - 58)) ^ 0x51424778) + 431169607) ^ (((LODWORD(STACK[0x5508]) << (v0 - 58)) ^ 0x397C3B56) + 1905089641));
  v3 = STACK[0xF18];
  *STACK[0x4E48] = (*(STACK[0xF18] + 8 * (v0 ^ 0x41A3)))((16 * (((v2 ^ 0x31A3FA2F) + 91700785) ^ v2 ^ ((v2 ^ 0xDD622E8) + 151185144) ^ ((v2 ^ 0xA11850) + 74832976) ^ ((v2 ^ 0x7FFFB77) + 53165929))) ^ 0xB2B3BE00);
  return (*(v3 + 8 * v1))();
}

uint64_t sub_1004CD76C@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x10EE4]) = v1 - 193924789 * (((((&STACK[0x10000] + 3800) | 0x9B2AF9BA) ^ 0xFFFFFFFE) - (~(&STACK[0x10000] + 3800) | 0x64D50645)) ^ 0xD26E3423) + 1648410598;
  STACK[0x10ED8] = a1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 1648454547)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * ((14631 * (v1 > 0xC989DAD0)) ^ (v1 + 1648408403))))(v3);
}

uint64_t sub_1004CD910(uint64_t a1, uint64_t a2)
{
  LODWORD(STACK[0x2FB4]) = v2;
  STACK[0x95A0] = STACK[0x2C18];
  LOWORD(STACK[0x79DE]) = 7085;
  LODWORD(STACK[0x16B4]) = -680984673;
  return (*(STACK[0xF18] + 8 * (v3 - 27257)))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_1004CD9B4@<X0>(_DWORD *a1@<X8>)
{
  v3 = v2 - 34124;
  v4 = (((*a1 ^ 0x99819C89) + 1719559031) ^ ((*a1 ^ 0xB7BB9883) + 1212442493) ^ (((((v2 - 34124) ^ 0x4A3F) - 2820) ^ 0x3810773A) + (*a1 ^ 0xC7EFC31B))) - 54746966;
  v5 = 634647737 * ((((&STACK[0x10000] + 3800) | 0xE1FE8200) - ((&STACK[0x10000] + 3800) & 0xE1FE8200)) ^ 0x8C68ADFC);
  STACK[0x10F00] = (a1 + 1);
  STACK[0x10EF0] = v1;
  LODWORD(STACK[0x10EF8]) = v3 - v5 + 32389;
  LODWORD(STACK[0x10ED8]) = v4 ^ v5;
  STACK[0x10EE8] = &STACK[0x8A50];
  STACK[0x10EE0] = &STACK[0x7FF0];
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v3 ^ 0xD618)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * ((9202 * (LODWORD(STACK[0x10F08]) == -371865839)) ^ v3)))(v7);
}

uint64_t sub_1004CDB0C()
{
  STACK[0x6F30] = v2;
  STACK[0x1FB0] = v3;
  STACK[0x16B8] = v4;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x2390 ^ (46197 * ((((((v1 & (2467 * (v0 ^ 0x71) - 14547)) - v0) | (v0 - (v1 & (2467 * (v0 ^ 0x71u) - 14547)))) >> (((v0 ^ 0x71) + 53) ^ 0x24)) & 1) == 0)))))();
}

uint64_t sub_1004CDCD0()
{
  v1 = LODWORD(STACK[0x96D0]) == ((11881 * (v0 ^ 0x55F8) - 528) | 0x210) - 371901482;
  LODWORD(STACK[0x33DC]) = STACK[0x96D0];
  return (*(STACK[0xF18] + 8 * ((57853 * v1) ^ v0)))();
}

uint64_t sub_1004CDD80@<X0>(int a1@<W8>)
{
  *STACK[0x3CD0] = a1 + v3 + 51490119;
  *STACK[0x1578] = v1;
  return (*(STACK[0xF18] + 8 * ((8843 * ((v2 + 637432203) < 0x4604280A)) ^ (v2 - 30485))))();
}

uint64_t sub_1004CDEE0@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W5>, int a5@<W6>, int a6@<W7>, int a7@<W8>)
{
  LODWORD(STACK[0x4B8]) = a6 + a5 - 1659752074;
  LODWORD(STACK[0x4EC]) = v9 - 2111044584;
  LODWORD(STACK[0x4E8]) = a7 - 1324770236;
  LODWORD(STACK[0x4C8]) = LODWORD(STACK[0x668]) - 1080776862;
  LODWORD(STACK[0x4D0]) = (((a4 ^ 0xEEBD0CB6) + 289600330) ^ ((a4 ^ 0xD68482B5) + 695958859) ^ ((a4 ^ (((a2 - 1128) ^ 0xA35) - 1581392042)) + 1581378445)) - v11 + 420692743;
  LODWORD(STACK[0x4CC]) = (((v7 ^ 0xA919A440) + 1457937344) ^ ((v7 ^ 0x29F8B7B7) - 704165815) ^ ((v7 ^ 0x4ADFB322) - 1256174370)) - v15 + 1956391091;
  LODWORD(STACK[0x4F0]) = (((a3 ^ 0xDC9F67DF) + 593532961) ^ ((a3 ^ 0xCA3D6EFD) + 901943555) ^ ((a3 ^ 0xEEF96001) + 285646847)) - v10 + 881316648;
  LODWORD(STACK[0x4F4]) = (((a1 ^ 0x4B0C3229) - 1259090473) ^ ((a1 ^ 0xA1BC35C) - 169591644) ^ ((a1 ^ 0xFDBD6E7A) + 37917062)) - (((v13 ^ 0x290F85C7) - 688883143) ^ ((v13 ^ 0xA21BABAF) + 1575244881) ^ ((v13 ^ 0x9D7C1B15) + 1652810987)) - 280785528;
  v16 = ((((105 - v12) | (v12 - 106)) & 0x40) - 1) & (64 - ((v12 - 106) & 0x3F));
  LODWORD(STACK[0x4A8]) = ((((v16 - ((2 * v16) & 0xEC) - 2078466058) ^ 0xBB53869E) + 1152153954) ^ (((v16 - ((2 * v16) & 0xEC) - 2078466058) ^ 0xC4DA3325) + 992333019) ^ (((v16 - ((2 * v16) & 0xEC) - 2078466058) ^ 0xFB94AA4D) + 74143155)) + v12;
  v17 = *(STACK[0x6A0] + 8 * (a2 ^ (34156 * (STACK[0x4AC] & 1))));
  LODWORD(STACK[0x418]) = v14;
  LODWORD(STACK[0x40C]) = v12;
  STACK[0x410] = v8;
  LODWORD(STACK[0x404]) = v14;
  return v17();
}

uint64_t sub_1004CE35C(int a1)
{
  v1 = STACK[0x6A0];
  LODWORD(STACK[0x670]) = a1 + 10513;
  v2 = *(v1 + 8 * (a1 + 10513));
  LODWORD(STACK[0x658]) = a1;
  LODWORD(STACK[0x668]) = a1 ^ 0x36DF;
  return v2();
}

uint64_t sub_1004CE3C0()
{
  LODWORD(STACK[0xD60]) = LODWORD(STACK[0xCB0]) ^ LODWORD(STACK[0xD20]) ^ LODWORD(STACK[0xD00]) ^ LODWORD(STACK[0xCF0]) ^ 0x951BF73D;
  LODWORD(STACK[0x9E8]) = STACK[0xDE0] & 0xFFFFFFDF;
  LODWORD(STACK[0x9F0]) = STACK[0xDD0] & 0xFFFFFFDF;
  LODWORD(STACK[0x9E0]) = STACK[0xDC0] & 0xFE;
  v0 = *(STACK[0xF18] + 8 * LODWORD(STACK[0xE80]));
  LODWORD(STACK[0xE90]) = LODWORD(STACK[0xE80]) - 18685;
  return v0(33621344, 2863311531, 768, 697620400, 312036720, 302581835, 9454848, 312036731);
}

uint64_t sub_1004CE570()
{
  v1 = v0 - 2899;
  v2 = 110 * ((v0 - 2899) ^ 0x11BAu);
  v3 = *STACK[0xE58];
  v4 = *STACK[0xE50];
  v5 = *(v4 + (v3 & 0xFFFFFFFFB724B0B8));
  *(STACK[0x5D88] + 72) = STACK[0x1098] - (v5 & 0x214EE30C6A148FE3 ^ 0x4C820C6A0402E0) + (*(v4 + (v3 & 0xFFFFFFFF90A15330)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x26EE718C68DCDF5BLL) + (v5 & 0x214EE30C6A148FE3 ^ 0x4C820C6A0402E0 ^ v5 & 0x7FFFFFFFFFFFFFFFLL ^ (v2 + 0x719361230410889DLL)) + 2 * (v5 ^ 0xE6C9EDCFBEE12E4) + ((2 * (v5 & 0x214EE30C6A148FE3 ^ 0x4C820C6A0402E0 ^ v5 & 0x7FFFFFFFFFFFFFFFLL)) & 0x2A300 ^ 0x28200) + 2;
  v6 = STACK[0xF18];
  STACK[0x21B0] = *(STACK[0xF18] + 8 * v1);
  return (*(v6 + 8 * (v1 ^ 0x3CDD)))();
}

uint64_t sub_1004CE8D8()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16238)))(v0);
  return (*(v2 + 8 * (v1 - 15505)))(v3);
}

uint64_t sub_1004CE964()
{
  v1 = (v0 + 1075129188) & 0xBFEAEBE9;
  v2 = v0 - 31548;
  v3 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * ((v1 ^ 0xA113) + v2)))();
}

uint64_t sub_1004CEA60()
{
  v1 = STACK[0x4770];
  v2 = STACK[0x2E84];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v1;
  LODWORD(STACK[0x655C]) = v2;
  LODWORD(STACK[0x884C]) = 113880627;
  return (*(STACK[0xF18] + 8 * (v0 - 30246)))();
}

uint64_t sub_1004CEAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0xF10];
  v10 = *v7;
  LODWORD(STACK[0x6CA0]) = *v8;
  STACK[0x8870] = v10;
  LODWORD(STACK[0x3F20]) = 100;
  return (*(STACK[0xF18] + 8 * ((v9 ^ 0xA1AF) + v9 - 32815)))(a1, a2, a3, a4, a5, a6, a7, STACK[0xE58]);
}

uint64_t sub_1004CEB18()
{
  STACK[0x18E0] = 0;
  LODWORD(STACK[0x44F8]) = 0;
  v3 = *(v2 + 8);
  STACK[0x4288] = v2 + 8;
  LODWORD(STACK[0x10ED8]) = (v0 + 703909254) ^ (634647737 * ((((2 * &STACK[0x10ED8]) | 0x506EDEF2) - &STACK[0x10ED8] + 1472761991) ^ 0xC5A14085));
  STACK[0x10EE0] = v3;
  v4 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0x8805)))(&STACK[0x10ED8]);
  v5 = *(v2 + 112);
  STACK[0x71E8] = v2 + 112;
  v6 = 634647737 * (&STACK[0x10ED8] ^ 0xDADBAFEF6D962FFCLL);
  STACK[0x10EF0] = 0x1371752868B5E147 * (((v1 ^ 0xBCBAEAE24BC96FE8) + 0x4345151DB4362EF3 + (v0 + 7774)) ^ ((v1 ^ 0xB64467455ACF4EE1) + 0x49BB98BAA530B11FLL) ^ ((v1 ^ 0x37FB4AB3EEBB34FLL) - 0x37FB4AB3EEC1474 + ((v0 - 225791906) & 0xD756DFF))) - v6 + 0x7A6355AEEB6E31EFLL;
  STACK[0x10EF8] = 0;
  STACK[0x10F00] = &STACK[0x44F8];
  STACK[0x10F08] = &STACK[0x18E0];
  LODWORD(STACK[0x10EE8]) = v6 + 596837812;
  LODWORD(STACK[0x10EE4]) = v6 + v0 + 19697;
  STACK[0x10ED8] = v5;
  (*(v4 + 8 * (v0 ^ 0x8FB2)))(&STACK[0x10ED8]);
  v7 = STACK[0x10EE0];
  v8 = *(v2 + 8);
  LODWORD(STACK[0x10ED8]) = v0 - 193924789 * (((&STACK[0x10ED8] | 0x614BA40D) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0x9EB45BF0)) ^ 0xD7F0966B) + 60368040;
  STACK[0x10EE0] = v8;
  v9 = (*(v4 + 8 * (v0 ^ 0x89CE)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((59116 * (v7 == -371865839)) ^ v0)))(v9);
}

uint64_t sub_1004CEDB8@<X0>(int a1@<W8>)
{
  v4 = ((((((a1 + 8822) | 0x8820u) - 47358) | (v2 << 56)) ^ 0x9015420E0000052DLL) & ~((v1 ^ 0x5Fu) << 48) | ((v1 ^ 0x5Fu) << 48) & 0xEA000000000000) ^ 0xFFB190B0D859A525;
  v5 = v3 & 1;
  v6 = 0xFFFFD2BED859AD2DLL;
  if (v3)
  {
    v6 = 0xFFFFD2BCD859AD2DLL;
  }

  v7 = v4 & v6 ^ 0x90425A42992D7D2CLL;
  v8 = *(STACK[0x720] - 830459327);
  *(STACK[0x720] - 830459327) = v8 + 1;
  v9 = v8 & 0x3F ^ (2 * v8) & 0x20 ^ 0x10;
  v10 = 8 * v9;
  v11 = (STACK[0x718] + v10);
  v12 = v10 + STACK[0x728] - 296;
  if (v9 <= 0x24)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  *v13 = v7;
  return (*(STACK[0xF18] + 8 * ((10123 * v5) ^ a1)))();
}

uint64_t sub_1004CEEE8@<X0>(int a1@<W8>)
{
  v1 = ((a1 + 2127390927) & 0x8132FF3F ^ 0xFFFF74CB) & *STACK[0x7B78];
  LODWORD(STACK[0x94BC]) = v1;
  return (*(STACK[0xF18] + 8 * ((109 * (((a1 - 67) ^ (v1 == 0)) & 1)) ^ a1)))();
}

uint64_t sub_1004CEF50()
{
  STACK[0x7690] = STACK[0x7690] - 18645 + ((v0 + 7565) | 0x84u);
  v1 = STACK[0x22D4];
  LODWORD(STACK[0x2A44]) = STACK[0x22D4];
  v2 = v1 == ((v0 + 878) ^ 0xE9D5E903);
  LOBYTE(STACK[0x9197]) = v2;
  return (*(STACK[0xF18] + 8 * ((97 * v2) ^ v0)))();
}

uint64_t sub_1004CF048(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6, int a7, int a8)
{
  v14 = v8 > a4;
  v15 = ((v13 + a6) & a7 ^ a8) + v12;
  v16 = v14 ^ (v15 < v9);
  v17 = v15 < v10;
  if (!v16)
  {
    v14 = v17;
  }

  return (*(STACK[0xF18] + 8 * ((v14 * v11) ^ v13)))();
}

uint64_t sub_1004CF0EC@<X0>(int a1@<W8>)
{
  v1 = STACK[0x596C];
  LODWORD(STACK[0xB318]) = 1115225941;
  LODWORD(STACK[0xB314]) = v1;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1004CF170()
{
  v1 = 35 * (STACK[0xF10] ^ 0x8B18);
  v2 = STACK[0xF10] - 33321;
  LODWORD(STACK[0x6650]) = v0;
  v3 = STACK[0xF18];
  STACK[0x18C0] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * ((v1 + 9510) ^ v2)))();
}

uint64_t sub_1004CF224()
{
  v1 = (v0 - 1061414360) & 0xE76758E4;
  v2 = *(STACK[0xF18] + 8 * (((v1 ^ 0xA8231EB5) + v0) ^ (29932 * (v0 < 0x72A9AE54))));
  STACK[0xED0] = v1 + 12919;
  return v2(762853648, 4294967197);
}

uint64_t sub_1004CF330()
{
  v1 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * (v0 - 33012));
  return (*(v1 + 8 * (v0 - 32126)))();
}

uint64_t sub_1004CF558()
{
  v4 = STACK[0x5284];
  STACK[0x8FE8] = *(v0 + v2);
  LODWORD(STACK[0x44A8]) = v4;
  LODWORD(STACK[0x704C]) = -2116087587;
  LODWORD(STACK[0x7FD8]) = 1970496882;
  LODWORD(STACK[0x4A8C]) = v1;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_1004CF764()
{
  v1 = STACK[0x6A20];
  v2 = STACK[0x7DC8];
  LODWORD(STACK[0x10EDC]) = v0 + 1112314453 * ((((2 * (&STACK[0x10000] + 3800)) | 0x9387DEA0) - (&STACK[0x10000] + 3800) - 1237577552) ^ 0xA695C589) + 40763;
  STACK[0x10EE8] = v1;
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0xD7AD)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * v0))(v4);
}

uint64_t sub_1004CF870()
{
  v2 = *(v1 - 0x43D8CBFA0CEB4284);
  STACK[0x22A8] = v2;
  STACK[0x4BA8] = *(v1 - 0x43D8CBFA0CEB428CLL);
  v3 = STACK[0x9530];
  *(v3 + 24) = -371865839;
  v3 += 24;
  *(v3 - 8) = 0;
  STACK[0x8EF0] = v3 - 8;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  STACK[0x71C0] = v3 + 8;
  *(v3 + 24) = 0;
  STACK[0x3240] = v3 + 24;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  return (*(STACK[0xF18] + 8 * (((((v2 == 0) ^ (v0 - 52)) & 1) * (8831 * (v0 ^ 0x9335) - 35228)) ^ v0)))();
}

uint64_t sub_1004CF94C@<X0>(int a1@<W2>, int a2@<W8>)
{
  LODWORD(STACK[0xADFC]) = a2;
  LODWORD(STACK[0xADF8]) = v2;
  return (*(STACK[0xF18] + 8 * (((v2 < LODWORD(STACK[0x9374])) * (((5 * (a1 ^ 0x9CF2)) ^ 0xFFFF8C19) + a1 - 34096)) ^ (a1 + 14645))))();
}

uint64_t sub_1004CF9F8()
{
  LODWORD(STACK[0x209C]) = v1;
  v2 = STACK[0x2568];
  *STACK[0x2568] = 91;
  LODWORD(STACK[0x10ED8]) = (v0 + 31223) ^ (1603510583 * (((&STACK[0x10ED8] | 0xA06580A) - (&STACK[0x10ED8] | 0xF5F9A7F5) - 168187915) ^ 0x9DDD6AA1));
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0xCC45)))(&STACK[0x10ED8]);
  v2[1] = STACK[0x10EDC];
  LODWORD(STACK[0x10ED8]) = v0 + 634647737 * (((&STACK[0x10ED8] | 0x9588D323) - (&STACK[0x10ED8] & 0x9588D320)) ^ 0xF81EFCDF) - 212178676;
  v4 = (*(v3 + 8 * (v0 ^ 0xCC2A)))(&STACK[0x10ED8]);
  v2[2] = -1562523887;
  v2[3] = *STACK[0xAAF0];
  STACK[0x98A8] = *(v3 + 8 * v0);
  return (*(v3 + 8 * (v0 ^ 0x11FF ^ (15110 * ((v0 ^ 0xDEA1A516) < 0xB62CBAD7)))))(v4);
}

uint64_t sub_1004CFCAC(unint64_t a1)
{
  LODWORD(STACK[0xAD3C]) = -371865839;
  STACK[0xAD40] = a1;
  v3 = STACK[0xF10] - 22550;
  LOWORD(STACK[0x10EE0]) = 23473 * ((2 * ((&STACK[0x10000] + 3800) & 0x1370) - (&STACK[0x10000] + 3800) - 4979) ^ 0x21A9) + 18068;
  STACK[0x10EE8] = &STACK[0x10DF8];
  LODWORD(STACK[0x10ED8]) = (906386353 * ((2 * ((&STACK[0x10000] + 3800) & 0x1A471370) - (&STACK[0x10000] + 3800) - 440865651) ^ 0xD4B921A9)) ^ v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 ^ 0xE9D50DA0)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (v1 ^ 0x966E ^ (v1 + 660196858) & 0xD8A6BBBF)))(v5);
}

uint64_t sub_1004CFDA0()
{
  v1 = *(STACK[0x78B0] + 272);
  v2 = STACK[0x6A98];
  v3 = 353670337 * ((((&STACK[0x10000] + 3800) | 0xB32C1B2A) - ((&STACK[0x10000] + 3800) & 0xB32C1B28)) ^ 0x70DE317);
  LODWORD(STACK[0x10ED8]) = (((LODWORD(STACK[0x8BA4]) ^ 0xAF2B398) - 183677848) ^ ((LODWORD(STACK[0x8BA4]) ^ 0xA608A212) + 1509383662) ^ (((v0 - 10407) | 0x1430) + (LODWORD(STACK[0x8BA4]) ^ 0x452FD69B) - 1160768276)) - v3 + 1051652780;
  STACK[0x10EE8] = v2;
  STACK[0x10EF0] = v1;
  LODWORD(STACK[0x10EE0]) = v0 - v3 + 37597;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 41423)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v0))(v5);
}

uint64_t sub_1004CFF9C()
{
  if (STACK[0x2400])
  {
    v0 = 0;
  }

  else
  {
    v0 = LODWORD(STACK[0x7D5C]) == -371865839;
  }

  v1 = v0;
  return (*(STACK[0xF18] + 8 * ((v1 * (((STACK[0xF10] + 365331617) & 0xEA38FAAF) + 8824)) ^ (STACK[0xF10] - 18935))))();
}

uint64_t sub_1004D00B8()
{
  v0 = STACK[0xF10] - 10992;
  *STACK[0x7858] = -371865831;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004D0138()
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
  return (*(STACK[0xF18] + 8 * ((v1 * ((STACK[0xF10] ^ 0xD51B) - 24040)) ^ (STACK[0xF10] - 11555))))();
}

uint64_t sub_1004D025C()
{
  v1[67] = STACK[0x4A38];
  v1[65] = -371865839;
  v1[1] = 950108106;
  v1[4] = STACK[0x7EA8];
  v2 = STACK[0xF18];
  STACK[0x1528] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * ((21995 * ((v0 ^ 0xF967153E) < 0xBE99A76C)) ^ (v0 - 29932 + v0 + 37949))))();
}

uint64_t sub_1004D02F8()
{
  v2 = STACK[0xF10] ^ 0x8BB1;
  v3 = STACK[0xF10] ^ 0xA77;
  v4 = STACK[0xF10] + 2851;
  LODWORD(STACK[0x8C38]) = v1;
  v5 = v1 == v3 + v2 - 371899077;
  *(v0 + 415) = v5;
  if (!STACK[0x61E0])
  {
    v5 = 0;
  }

  return (*(STACK[0xF18] + 8 * ((57 * v5) ^ v4)))();
}

uint64_t sub_1004D0368()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 26302)))((LODWORD(STACK[0x5E1C]) - 228322666));
  STACK[0x1538] = v2;
  return (*(v1 + 8 * (((((v0 ^ (v2 == 0)) & 1) == 0) * ((v0 - 23483) ^ 0x821)) ^ v0)))();
}

uint64_t sub_1004D04CC(unint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, char a6, int a7)
{
  v18 = v9 - 1;
  v19 = ((v10 & v11 ^ a1) & (2 * v18)) + (v18 ^ v12);
  v20 = ((a3 + v19) ^ *(*v15 + (*v14 & a4))) & 0x7FFFFFFF;
  v21 = ((v20 * a5) ^ ((v20 * a5) >> 16)) * a5;
  *(a3 + v19) = *(v17 + (v21 >> 24)) ^ *(v19 + v8 + a2) ^ *((v21 >> 24) + v13 + 1) ^ *((v21 >> 24) + v16 + 3) ^ v21 ^ (BYTE3(v21) * a6);
  return (*(STACK[0xF18] + 8 * (((v18 == 0) * a7) ^ v7)))();
}

uint64_t sub_1004D0564@<X0>(int a1@<W0>, unsigned int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X7>, int a6@<W8>)
{
  v21 = *(a5 + (v9 + a4));
  v22 = v15 - 1007532411 * (v10 + (v21 ^ 0xE3EFDFFF) + 2 * v21);
  v23 = ((2 * (v22 ^ v16)) ^ v17) & (v22 ^ v16) ^ (2 * (v22 ^ v16)) & a3;
  v24 = v23 ^ 0x14A89429;
  v25 = (v22 ^ 0x217F02A3) & (2 * (v22 & v20)) ^ v22 & v20;
  v26 = (v23 ^ 0x20020040) & (4 * v25) ^ v25;
  v27 = ((4 * v24) ^ 0xD2AE51A4) & v24 ^ (4 * v24) & a3;
  v28 = v26 ^ 0x34AB9469 ^ (v27 ^ 0x10AA1020) & (16 * v26);
  v29 = (16 * (v27 ^ 0x24018449)) & 0x34AB9440 ^ 0x34029069 ^ ((16 * (v27 ^ 0x24018449)) ^ 0x4AB94690) & (v27 ^ 0x24018449);
  v30 = (v28 << 8) & 0x34AB9400 ^ v28 ^ ((v28 << 8) ^ 0xAB946900) & v29;
  v31 = (v13 - ((2 * v13) & 0xCAD1E00E) - 446107641) ^ v22 ^ (2 * ((v30 << 16) & a6 ^ v30 ^ ((v30 << 16) ^ 0x14690000) & ((v29 << 8) & a6 ^ 0x142B0000 ^ ((v29 << 8) ^ 0x2B940000) & v29))) ^ 0xD0124A1F;
  v32 = ((a1 + v12 + v31 + v31 % 0x101) ^ v11) - 1615711483;
  v33 = v8 < v6;
  v34 = v32 ^ v11;
  v35 = v32 + v12;
  HIDWORD(v36) = v32;
  LODWORD(v36) = v32;
  v37 = v32 ^ a1;
  v38 = ((v36 >> 28) - v35 + v37) ^ v34;
  v39 = (v38 ^ v14) + v37;
  v40 = v38 ^ v35;
  v41 = v34 - (v38 ^ v14);
  v42 = ((v40 ^ __ROR4__(v38 ^ v14, 30) ^ v39 ^ v14) + v41) ^ 0x474F42B1;
  v43 = v40 ^ 0xC866448 ^ (v42 - (v18 & (2 * v42)) + v19);
  if (v33 == a2 < v6)
  {
    v33 = a2 < v8;
  }

  HIDWORD(v44) = v42;
  LODWORD(v44) = v42;
  return (*(STACK[0x6A0] + 8 * ((163 * !v33) ^ v7)))((v41 + v42 - 1058929032 + (v43 ^ ((v42 ^ v39) + (v44 >> 28)))) ^ v42 ^ v39, a2 + 1);
}

uint64_t sub_1004D09CC()
{
  v2 = *(STACK[0x2DC0] + 12);
  STACK[0x4F90] = STACK[0x88B8];
  LODWORD(STACK[0x22E8]) = v2;
  LODWORD(STACK[0x35EC]) = v0;
  return (*(STACK[0xF18] + 8 * (v1 - 44001)))();
}

uint64_t sub_1004D0A88()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v1 + 8 * (v0 - 26590)))(v2);
}

uint64_t sub_1004D0AD8@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v2 = *(STACK[0xF18] + 8 * (((SLODWORD(STACK[0xE90]) <= 11881 * (a2 ^ 0x1CB6) - 371901420) * ((a2 ^ 0x1CB6) + 23434)) ^ a2));
  STACK[0xE80] = 0x681545D2F6DF8F5FLL;
  STACK[0xE70] = 0x97EABA2D092070A1;
  STACK[0xE60] = 0x1CCAE6C03F7DC19FLL;
  STACK[0xE40] = 0xE335193FC0823E61;
  STACK[0xE30] = 0x367AA73832449F79;
  STACK[0xE20] = 0xC98558C7CDBB6087;
  STACK[0xE10] = 0xE527211FC9AC8EFELL;
  STACK[0xE00] = 0x4D7F4AC8EDB7A59CLL;
  STACK[0xDF0] = 0xEAFD6FFDDFFDFADDLL;
  STACK[0xDE0] = 0xCBFB77DD0A5E5DF9;
  LODWORD(STACK[0xEC0]) = 1724701212;
  return v2(0xB8408CB4B9DC4841, 0xBB10DFE5E7189F3, 0x9F2632BF76345949, a1, 0x60D9CD4089CBA6B7, 0xB4B56A12200AB4CCLL, 1724701216, 0x4B4A95EDDFF54B34);
}

uint64_t sub_1004D0CFC()
{
  v1 = STACK[0x7F50];
  strcpy(STACK[0x7F50], "/var/mobile/Library/FairPlay/vdpf");
  *(v1 + 34) = 0;
  *(v1 + 36) = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004D0D74(uint64_t a1)
{
  STACK[0xA70] = v1;
  v2 = STACK[0xDF0];
  v3 = (LODWORD(STACK[0xDF0]) + 264077752) & 0xF0427E3B;
  LODWORD(STACK[0xDA0]) = *(*STACK[0xE50] + ((v3 ^ 0x7D86D6CD) & *STACK[0xE58]));
  v4 = *(STACK[0xF18] + 8 * v2);
  v5 = (v3 - 1787882563) & 0x6A90BA33;
  LODWORD(STACK[0xD80]) = v5;
  LODWORD(STACK[0xD90]) = v5 ^ 0x3141;
  STACK[0xE90] = *(&off_1010A0B50 + (v3 ^ 0x6E34)) - 1679008931;
  STACK[0xE80] = *(&off_1010A0B50 + (v3 ^ 0x7DAE)) - 1706053975;
  LODWORD(STACK[0xDC0]) = v3;
  STACK[0xE70] = *(&off_1010A0B50 + (v3 - 26151)) - 737279382;
  STACK[0xDF0] = 0xFA051B567E009E65;
  STACK[0xDE0] = 0x6759F00D0FF5CBEBLL;
  return v4(a1, 2336);
}

uint64_t sub_1004D1100()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4192)))();
  *(v0 + 32) = 0;
  return (*(v2 + 8 * (v1 - 29181)))(v3);
}

uint64_t sub_1004D1174()
{
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((((2 * (&STACK[0x10000] + 3800)) | 0x40EB6660) - (&STACK[0x10000] + 3800) - 544584496) ^ 0xC653A8FF) + 296753103;
  STACK[0x10ED8] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16271)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 - 9284)))(v2);
}

uint64_t sub_1004D12A8@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0xF18];
  STACK[0x51A8] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * ((63683 * ((a1 ^ 0xC4BE1422) < 0x90419CFE)) ^ (a1 + 20303))))();
}

uint64_t sub_1004D14B8()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v1 + 8 * (v0 - 14317)))(v2);
}

uint64_t sub_1004D150C()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1F4F)))();
}

uint64_t sub_1004D15D8()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 34023;
  v2 = STACK[0x6368];
  v3 = 634647737 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x5B445778) - 616278151) ^ 0xB6D27885);
  LODWORD(STACK[0x10ED8]) = v3 - 1431125373;
  LODWORD(STACK[0x10EE8]) = v0 - v3 - 14660;
  STACK[0x10EE0] = v2;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 16326)))(&STACK[0x10ED8]);
  STACK[0x16D8] = *(v4 + 8 * v1);
  return (*(v4 + 8 * ((v0 - 28021) ^ v1)))(v5);
}

uint64_t sub_1004D16A4()
{
  v1 = STACK[0x6CC8];
  LODWORD(STACK[0x10ED8]) = v0 + 193924789 * ((((&STACK[0x10000] + 3800) | 0x522AADB9) - ((&STACK[0x10000] + 3800) | 0xADD55246) - 1378528698) ^ 0xE4919FDF) - 33840;
  STACK[0x10EE0] = v1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x5BD5)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1004D18C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 720);
  v4 = STACK[0x3170];
  v5 = STACK[0x3A10];
  v6 = 155453101 * ((2 * ((&STACK[0x10000] + 3800) & 0x668AAE58) - (&STACK[0x10000] + 3800) + 427119013) ^ 0xFF534A6A);
  LODWORD(STACK[0x10F00]) = v2 - v6 + 31860;
  LODWORD(STACK[0x10EF8]) = (((v1 & 0xFFFFFFF0 ^ 0x3BD3EC0B) + 91444807) ^ ((v1 & 0xFFFFFFF0 ^ 0xCAF24FFE) - 195889740) ^ ((v1 & 0xFFFFFFF0 ^ 0x18F464E5) + 643060590 + v2 + 27663)) - v6 + 1377433018;
  STACK[0x10EE8] = v4;
  STACK[0x10EF0] = v5;
  STACK[0x10ED8] = v5;
  STACK[0x10EE0] = v3;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v2 ^ 0xD34D)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * v2))(v8);
}

uint64_t sub_1004D1A48()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 33350;
  LODWORD(STACK[0x3A0C]) = v0;
  v3 = STACK[0xF18];
  STACK[0x18C0] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * (v2 ^ 0xCA ^ (((v1 + 128228379) < 0x6AD4A8B4) * (v1 ^ 0xA3F9)))))();
}

uint64_t sub_1004D1AB4()
{
  v1 = v0 ^ 0xDFC7240E;
  v2 = STACK[0x2D78];
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = v2 + 40;
  STACK[0x5D28] = v2 + 32;
  LODWORD(STACK[0x4704]) = 1046021635;
  return (*(STACK[0xF18] + 8 * ((16273 * (v1 == 2039303567)) ^ (v1 + 540599390))))();
}

uint64_t sub_1004D1CD8()
{
  STACK[0x10ED8] = v0;
  LODWORD(STACK[0x10EE4]) = v1 - 17902189 * ((((2 * (&STACK[0x10000] + 3800)) | 0x27FF2DCA) - (&STACK[0x10000] + 3800) - 335517413) ^ 0x9DB080F5) + 25938;
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 + 41062)))(&STACK[0x10ED8]);
  v3 = (*(v2 + 8 * (v1 ^ 0xE63A)))(16) != 0;
  return (*(v2 + 8 * ((v3 * (((v1 ^ 0xA799) - 9178) ^ 0x6779)) | v1)))();
}

uint64_t sub_1004D1DE0()
{
  v1 = STACK[0x6230] + 32 * (STACK[0x58F0] + ((v0 - 398756251) & 0x17C4FF7F)) + 0x108A6F29A64E3090;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x4420];
  STACK[0x5D28] = v1;
  LODWORD(STACK[0x4704]) = -924227109;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004D21D4()
{
  LOBYTE(STACK[0x59F7]) = v0;
  STACK[0x4040] = v4;
  STACK[0x5100] = v1;
  *(STACK[0x4A90] + 8) = ((v2 - 804074333) + 0x1A52FC5655CE5549) ^ v1;
  v5 = STACK[0x3E38];
  *(v5 - 0x20DE4F5147E73169) = v1 ^ v3;
  *(v5 - 0x20DE4F5147E73107) = v0;
  return (*(STACK[0xF18] + 8 * ((42 * (((((v1 - (v2 | ((v2 - 644634938) << 32))) | ((v2 | ((v2 - 644634938) << 32)) - v1)) >> ((v2 - 3) ^ 0x7C)) & 1) == 0)) ^ (v2 - 804066236))))();
}

uint64_t sub_1004D22B0()
{
  v2 = (v0 - 1497660354) | 0x360;
  v3 = *(*(STACK[0x2B08] - 0x10A99C80114D147FLL) - 0x217E172EFA1E81CLL);
  v4 = 1022166737 * (((((&STACK[0x10000] + 3800) | 0x8EE4F37C) ^ 0xFFFFFFFE) - (~(&STACK[0x10000] + 3800) | 0x711B0C83)) ^ 0xCB0BED11);
  LODWORD(STACK[0x10EDC]) = 1446135777 * v1 - v4 + v2 + 2011895654;
  LODWORD(STACK[0x10ED8]) = (v2 + 37544) ^ v4;
  STACK[0x10EE0] = v3;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v2 ^ 0xE865)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * v2))(v6);
}

uint64_t sub_1004D24C8(uint64_t a1)
{
  STACK[0x47E0] = STACK[0x82E0];
  LODWORD(STACK[0x72DC]) = -371865811;
  return (*(STACK[0xF18] + 8 * v1))(a1, 131 * (v1 ^ 0x93C1u));
}

uint64_t sub_1004D2560()
{
  LODWORD(STACK[0x10ED8]) = v0 + 155453101 * ((2 * ((&STACK[0x10000] + 3800) & 0x63530090) - (&STACK[0x10000] + 3800) - 1666384024) ^ 0x7A8AE4A7) + 843;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 45556)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (((STACK[0x10EE0] != 0) * (3 * (v0 ^ 0x346C) - 37521 + 948 * (v0 ^ 0x1A07))) | v0)))(v2);
}

uint64_t sub_1004D2694()
{
  LODWORD(STACK[0x10EEC]) = (v1 + 6418) ^ (634647737 * ((&STACK[0x10000] + 3800) ^ 0x6D962FFC));
  STACK[0x10ED8] = v0;
  STACK[0x10EE0] = v2;
  (*(v3 + 8 * (v1 + 23565)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((112 * (((v1 ^ 0x8E3B40C5 ^ LODWORD(STACK[0xE60])) & 1) == 0)) ^ v1)))(6868, 65058);
}

uint64_t sub_1004D2788()
{
  *(v4 + 2184) = v3 + 8;
  v5 = (((v2 ^ 0x9A4F036C) + (v0 ^ 0x65B08A9D)) ^ ((v2 ^ 0xB63FB036) + 1237340106) ^ (((v0 + 355349576) & 0xEAD1DDEF ^ v2 ^ 0xC5A5FC0A) + 979012533)) + 261183422;
  v6 = ((v3 + 8) > 0xDA446F52) ^ (v5 < 0x25BB90AD);
  v7 = v3 + 633049269 > v5;
  if (v6)
  {
    v7 = (v3 + 8) > 0xDA446F52;
  }

  if (v7)
  {
    v1 = 371891407;
  }

  *(v4 + 2188) = v1;
  return (*(STACK[0xF18] + 8 * ((62570 * (v1 == -371865839)) ^ v0)))();
}

uint64_t sub_1004D29C8(uint64_t a1)
{
  *(v2 + 272) = 0;
  *(v2 + 296) = a1;
  *(v2 + 304) = 0;
  *(v2 + 312) = 0xD46D34F9E9D5C711;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1004D2B28@<X0>(int a1@<W8>)
{
  v4 = *(STACK[0xF18] + 8 * (((a1 > -371865830) | (32 * (a1 > -371865830))) ^ (v1 + 14150)));
  STACK[0xEB0] = v2;
  STACK[0xED0] = v3;
  return v4();
}

uint64_t sub_1004D2C48()
{
  v0 = STACK[0xF10] - 22760;
  *(STACK[0x91C0] + 160) = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004D2C78()
{
  v2 = *v1;
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((((&STACK[0x10000] + 3800) | 0x350DDA15) - ((&STACK[0x10000] + 3800) | 0xCAF225EA) - 890100246) ^ 0xD32BC1DA) + 296783443;
  STACK[0x10ED8] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 46611)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * v0))(v4);
}

uint64_t sub_1004D2D08()
{
  v2 = STACK[0xF18];
  STACK[0x21F8] = *(STACK[0xF18] + 8 * v1);
  STACK[0x4BF8] = *(v2 + 8 * (v0 - 31191));
  return (*(v2 + 8 * ((v0 - 25400) ^ (v0 - 31191))))();
}

uint64_t sub_1004D2D50()
{
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762639945) ^ (906386353 * ((2 * ((&STACK[0x10000] + 3800) & 0x6C316828) - (&STACK[0x10000] + 3800) + 332306386) ^ 0x22CF5AF6));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 37601)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * ((4037 * (*STACK[0x970] > (83 * (v0 ^ 0x3768) + (v0 ^ 0xFFFFF128)))) ^ v0)))(v2);
}

uint64_t sub_1004D2EA0@<X0>(int a1@<W8>)
{
  v3 = v1 - 0x1C004DD1B969F6E4;
  v5 = v2 < 2 && v3 < 0xFFFFFFFFFFFFFFFDLL;
  return (*(STACK[0xF18] + 8 * ((((v5 ^ (43 * (a1 ^ 0xEB))) & 1) * (a1 - 34951)) ^ a1)))();
}

uint64_t sub_1004D2F00()
{
  v2 = v0 ^ 0x57FA;
  v3 = LODWORD(STACK[0x7D08]) ^ (((v2 + 28286) | 0x2020) - 969429071);
  STACK[0x8FE8] = *(STACK[0x1240] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v1;
  LODWORD(STACK[0x704C]) = -2116087563;
  LODWORD(STACK[0x7FD8]) = 1801812256;
  LODWORD(STACK[0x4A8C]) = v3;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1004D3010()
{
  v1 = STACK[0x3E60];
  STACK[0x3810] = STACK[0x3E60] + 100;
  STACK[0x7958] = v1;
  v2 = 634647737 * ((2 * ((&STACK[0x10000] + 3800) & 0x46678978) - (&STACK[0x10000] + 3800) + 966293122) ^ 0x540E597E);
  LODWORD(STACK[0x10EE8]) = v0 - v2 + 12326;
  LODWORD(STACK[0x10ED8]) = v2 - 1431125373;
  STACK[0x10EE0] = v1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 43312)))(&STACK[0x10ED8]);
  v5 = STACK[0x8E88];
  v6 = STACK[0x3444];
  STACK[0x5400] = v1;
  STACK[0x41A0] = v5;
  LODWORD(STACK[0x20CC]) = v6;
  LODWORD(STACK[0x38AC]) = -458193308;
  return (*(v3 + 8 * v0))(v4);
}

uint64_t sub_1004D30F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] + 13455;
  v5 = STACK[0x1710];
  STACK[0xA108] = STACK[0x1710] + 36;
  STACK[0xA110] = v5 + 232;
  v6 = STACK[0xA100];
  v7 = STACK[0x7690];
  v8 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x2448] = v8;
  STACK[0xA118] = (v8 + 102);
  STACK[0xA120] = (v8 + 122);
  STACK[0x7690] = v7 + 208;
  STACK[0x8618] = v6;
  if (v6)
  {
    v9 = STACK[0xA0F0] == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  return (*(STACK[0xF18] + 8 * ((39 * v10) ^ v4)))(a1, a2, a3, v3);
}

uint64_t sub_1004D3184(uint64_t a1, int a2)
{
  v5 = *v2 + v4;
  v6 = (((v3 ^ 0x932A05B2) + 1825962574) ^ ((v3 ^ 0x469AC362) - 1184547682) ^ ((((a2 ^ 0xF726) + 1013229421) ^ v3) - 1013252545)) + 601748594;
  v7 = v5 + 973614433 > v6;
  v8 = (v5 > 0xC5F7D29E) ^ (v6 < 0x3A082D61);
  v9 = v7;
  if (v8)
  {
    v10 = v5 > 0xC5F7D29E;
  }

  else
  {
    v10 = v9;
  }

  return (*(STACK[0xF18] + 8 * ((250 * !v10) ^ a2)))();
}

uint64_t sub_1004D3250@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, char a5@<W8>)
{
  v11 = (v8 - 124) ^ 0xC;
  v12 = ((2 * ((v8 - 124) & 0x84)) & (v9 ^ 0xCD) | (v8 - 124) & 0x84) ^ (2 * ((v8 - 124) & 0x84)) & v11;
  v13 = (v8 - 124) ^ (2 * (((2 * v11) ^ 0x10) & v11 & (4 * (((2 * v11) ^ 0x10) & v11)) & (16 * (((2 * v11) ^ 0x10) & v11 & (4 * v12) ^ v12)) ^ ((2 * v11) ^ 0x10) & v11 & (4 * v12) ^ v12));
  *(STACK[0xED0] + (v8 - 1568490430)) ^= 0x8B ^ (a5 + v8 + (v13 ^ 0x16) + 84 - ((2 * (a5 + v8 + (v13 ^ 0x16) + 84)) & 0x16) - 117);
  v14 = (((*v5 ^ v6) + v7) ^ ((*v5 ^ v10) + a1) ^ ((*v5 ^ a2) + a3)) - 658534124;
  v15 = v14 < 0xEEE9C9FB;
  v16 = v8 - 1855158722 < v14;
  if ((v8 - 1855158722) < 0xEEE9C9FB != v15)
  {
    v16 = v15;
  }

  v17 = *(STACK[0xF18] + 8 * ((v16 * a4) ^ v9));
  LODWORD(STACK[0xEC0]) = 1724701211;
  return v17();
}

uint64_t sub_1004D339C@<X0>(unint64_t a1@<X8>)
{
  STACK[0x2828] = a1;
  LODWORD(STACK[0x17F4]) = v2;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0xEBDF ^ (25786 * (v1 ^ 0x49E)))))();
}

uint64_t sub_1004D347C()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 35572)))(24) == 0;
  return (*(v1 + 8 * ((v2 * ((((v0 + 1688637324) ^ 0x64A6440B) - 22679) ^ (v0 + 1688637324) & 0x9B597DDF)) ^ v0)))();
}

uint64_t sub_1004D3578@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x1678]) = STACK[0x24EC];
  v1 = (((LODWORD(STACK[0x5134]) ^ 0xD7468911) + 683243247) ^ ((LODWORD(STACK[0x5134]) ^ 0xD1FEB622) + 771836382) ^ ((LODWORD(STACK[0x5134]) ^ (5922 * (a1 ^ 0x5D45) - 278023492)) + 278005726)) + (a1 ^ 0x22BF3F43);
  v2 = (v1 ^ 0x861551CA) & (2 * (v1 & 0xC716650B)) ^ v1 & 0xC716650B;
  v3 = ((2 * (v1 ^ 0x881991DC)) ^ 0x9E1FE9AE) & (v1 ^ 0x881991DC) ^ (2 * (v1 ^ 0x881991DC)) & 0x4F0FF4D6;
  v4 = v3 ^ 0x41001451;
  v5 = (v3 ^ 0xC0BA004) & (4 * v2) ^ v2;
  v6 = ((4 * v4) ^ 0x3C3FD35C) & v4 ^ (4 * v4) & 0x4F0FF4D4;
  v7 = (v6 ^ 0xC0FD050) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0x43002483)) ^ 0xF0FF4D70) & (v6 ^ 0x43002483) ^ (16 * (v6 ^ 0x43002483)) & 0x4F0FF4D0;
  v9 = v7 ^ 0x4F0FF4D7 ^ (v8 ^ 0x400F4400) & (v7 << 8);
  v10 = v1 ^ (2 * ((v9 << 16) & 0x4F0F0000 ^ v9 ^ ((v9 << 16) ^ 0x74D70000) & (((v8 ^ 0xF00B087) << 8) & 0x4F0F0000 ^ 0x400B0000 ^ (((v8 ^ 0xF00B087) << 8) ^ 0xFF40000) & (v8 ^ 0xF00B087))));
  LODWORD(STACK[0x5134]) = v10 ^ 0x38D24BB4;
  v12 = v10 == -788034395 || LODWORD(STACK[0x1474]) == -371867426;
  return (*(STACK[0xF18] + 8 * ((220 * v12) ^ a1)))();
}

uint64_t sub_1004D37D0()
{
  LODWORD(STACK[0x8710]) = v1;
  v2 = STACK[0x138C];
  STACK[0x8FE8] = *(STACK[0x15C8] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v2;
  LODWORD(STACK[0x7FD8]) = 1970496882;
  LODWORD(STACK[0x704C]) = -2116087614;
  LODWORD(STACK[0x4A8C]) = STACK[0x93C8];
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x430B ^ (14632 * ((v0 ^ 0x5C978D3A) == 1624584507)))))();
}

uint64_t sub_1004D38C4()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 26836)))(v2);
}

uint64_t sub_1004D38F4()
{
  v1 = STACK[0xF18];
  STACK[0x5990] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x2E90 ^ (28118 * ((v0 + 1553267855) > 0xA09ECFD6)))))();
}

uint64_t sub_1004D3A20()
{
  v1 = (((v0 ^ 0x501B523E) - 1343967806) ^ ((v0 ^ 0xA40D1E6D) + 1542644115) ^ ((v0 ^ 0x1DC42797) - 499394455)) + 1210335210;
  v2 = (v1 ^ 0x29AC0B92) & (2 * (v1 & 0xA1AE2BDB)) ^ v1 & 0xA1AE2BDB;
  v3 = ((2 * (v1 ^ 0x29B81880)) ^ 0x102C66B6) & (v1 ^ 0x29B81880) ^ (2 * (v1 ^ 0x29B81880)) & 0x8816335A;
  v4 = ((4 * (v3 ^ 0x88121149)) ^ 0x2058CD6C) & (v3 ^ 0x88121149) ^ (4 * (v3 ^ 0x88121149)) & 0x88163358;
  v5 = (v4 ^ 0x100140) & (16 * ((v3 ^ 0x2210) & (4 * v2) ^ v2)) ^ (v3 ^ 0x2210) & (4 * v2) ^ v2;
  v6 = ((16 * (v4 ^ 0x88063213)) ^ 0x816335B0) & (v4 ^ 0x88063213) ^ (16 * (v4 ^ 0x88063213)) & 0x88163350;
  v7 = v5 ^ 0x8816335B ^ (v6 ^ 0x80023100) & (v5 << 8);
  v8 = v1 ^ (2 * ((v7 << 16) & 0x8160000 ^ v7 ^ ((v7 << 16) ^ 0x335B0000) & (((v6 ^ 0x814024B) << 8) & 0x8160000 ^ 0x8040000 ^ (((v6 ^ 0x814024B) << 8) ^ 0x16330000) & (v6 ^ 0x814024B))));
  v9 = (((v8 ^ 0x2D8FB14) - 1521278396) ^ ((v8 ^ 0xB266200) - 1397900456) ^ ((v8 ^ 0xB858D478) + 533925168)) - 372085820 < 0x30;
  return (*(STACK[0xF18] + 8 * ((v9 | (4 * v9)) ^ LODWORD(STACK[0xE60]))))();
}

uint64_t sub_1004D485C()
{
  STACK[0x5C50] = 0x3AE1413A0D5C9752;
  LODWORD(STACK[0x1374]) = -1718577604;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004D4898()
{
  v1 = STACK[0x248];
  v2 = &STACK[0x280] + STACK[0x248];
  STACK[0x220] = (v2 + 356);
  v3 = STACK[0x228];
  v4 = *(STACK[0x228] + 8 * ((v0 ^ 0x10D1) + 26714));
  STACK[0x248] = (((v0 ^ 0x10D1) - 1191504744) & 0x4704EB43 ^ 0x67B3) + v1;
  v4(*(&off_1010A0B50 + (v0 ^ 0x10D1) - 20972) - 1673816843, v2, 100);
  (*(v3 + 8 * (v0 ^ 0xB877)))(*(&off_1010A0B50 + (v0 ^ 0x10D1) - 20744) - 1607078663, v2 + 100, 128);
  v5 = *(v3 + 8 * ((v0 ^ 0x10D1) + 26714));
  v6 = *(&off_1010A0B50 + (v0 ^ 0x10D1) - 21620) - 1411391955;
  STACK[0x210] = (v2 + 228);
  v5(v6, v2 + 228, 128);
  (*(v3 + 8 * ((v0 ^ 0x10D1) + 26736)))(v2 + 484, 0, 1024);
  return (*(v3 + 8 * (v0 ^ 0x10D1)))(-410456050, 2009008326, 2141192187, 404164599, 820912100, 3435973837, 40, &STACK[0x258]);
}

uint64_t sub_1004D4A44@<X0>(int a1@<W8>)
{
  v6 = (STACK[0x8930] + (v3 + LODWORD(STACK[0x481C]) - 301503014));
  v7 = (*(v2 + 8) + (9 * v1 - 772987308) % (v4 - 495536354));
  v8 = *(*STACK[0xE50] + (*v5 & 0x72D7ACF8));
  v9 = 1864610357 * (((1864610357 * ((v8 ^ v7) & 0x7FFFFFFF)) >> (((a1 - 65) | 0x8C) ^ 0xBD)) ^ (1864610357 * ((v8 ^ v7) & 0x7FFFFFFF)));
  LOBYTE(v7) = (*(STACK[0x7C8] + (v9 >> 24)) ^ *v7 ^ *((v9 >> 24) + STACK[0x7C0] + 2) ^ *((v9 >> 24) + STACK[0x7D0] + 4) ^ v9 ^ (13 * BYTE3(v9))) & 0xFE;
  v10 = 1864610357 * ((1864610357 * ((v8 ^ v6) & 0x7FFFFFFF)) ^ ((1864610357 * ((v8 ^ v6) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v10) = *(STACK[0x7C8] + (v10 >> 24)) ^ *v6 ^ *((v10 >> 24) + STACK[0x7C0] + 2) ^ *((v10 >> 24) + STACK[0x7D0] + 4) ^ v10 ^ (13 * BYTE3(v10));
  LOBYTE(STACK[0x3987]) = (((v10 ^ 0xB6) - 7) ^ ((v10 ^ 0x94) - 37) ^ ((v10 ^ 0x22) + 109)) - (((v7 ^ 0x8F) + 64) ^ ((v7 ^ 0xF8) + 73) ^ ((v7 ^ 0x76) - 57)) + 99;
  return (*(STACK[0xF18] + 8 * (a1 ^ 0x15E4)))();
}

uint64_t sub_1004D4C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v24 = *(v23 + 8 * ((a5 - 9967) | 0x1006));
  LODWORD(a18) = -371865827;
  return v24(a1, v24, a3, a4, a7, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_1004D4D3C@<X0>(unint64_t a1@<X3>, _DWORD *a2@<X8>)
{
  *a2 = 2065143990;
  v4 = *(STACK[0xF18] + 8 * ((28 * (((((v3 + 3982) ^ 0xADC6E961) + (v2 ^ 0x5239BBA7)) ^ ((v2 ^ 0xE0AA4620) + 525711840) ^ ((v2 ^ 0x5B463A96) + 616154104 + ((v3 + 2147443640) | 0x10))) + 1775617809 > 0x8000012B)) ^ v3));
  STACK[0xE80] = a1;
  return v4();
}

uint64_t sub_1004D4F34@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  v2 = *(v1 + 8 * ((((*(STACK[0xF18] + 8 * (a1 + 51755)))(24) == 0) * (((a1 + 32676) | 0xB2A) - 35594)) ^ (a1 + 20014)));
  return v2();
}

uint64_t sub_1004D4FC0()
{
  v3 = *(v0 + v1 + 16);
  v4 = (STACK[0xEC0] + v1);
  *v4 = *(v0 + v1);
  v4[1] = v3;
  return (*(STACK[0xF18] + 8 * (((v1 == 96) * (((v2 + 17582) | 0x840) ^ 0x64A9)) ^ v2)))();
}

uint64_t sub_1004D5010()
{
  STACK[0x39F8] = 0x217E172EFA1E81CLL;
  LOBYTE(STACK[0x5B6F]) = 77;
  STACK[0x6D40] = 0x217E172EFA1E81CLL;
  LOBYTE(STACK[0x1FBF]) = 77;
  LODWORD(STACK[0x47FC]) = 334278328;
  return (*(STACK[0xF18] + 8 * (((*(STACK[0x78B0] + 296) != 0) * ((v0 - 1972082935) & 0x758B6C3F ^ ((v0 + 6804171) | 0x8013D002) ^ 0x807BD64F)) ^ v0)))();
}

uint64_t sub_1004D5434()
{
  v1 = *(STACK[0x78B0] + 96);
  LODWORD(STACK[0x10EDC]) = (v0 + 196377328) ^ (1012831759 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x3E430828) - 1102903249) ^ 0xAED01EA5));
  STACK[0x10EE0] = v1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 196401627)))(&STACK[0x10ED8]);
  *(STACK[0x78B0] + 96) = 0;
  return (*(v2 + 8 * (v0 ^ 0xF44BDBA5 ^ (32699 * (v0 < 0x5BB5EBB0)))))(v3);
}

uint64_t sub_1004D5558()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))(v1);
  return (*(v2 + 8 * (v0 - 15548)))(v3);
}

uint64_t sub_1004D55DC()
{
  STACK[0x5C50] = 0x3AE1413A0D5C9822;
  LODWORD(STACK[0x1374]) = -1886129280;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004D56AC@<X0>(unint64_t *a1@<X7>, int a2@<W8>)
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
  STACK[0xBD20] = 0;
  STACK[0xBD28] = v2;
  v13 = 16777619 * ((553300517 * v12 + 7) ^ (553300517 * v12)) % 7;
  v14 = 16777619 * ((553300517 * v12 + 6) ^ (553300517 * v12)) % 6;
  v15 = 16777619 * ((553300517 * v12 + 5) ^ (553300517 * v12)) % 5;
  v16 = *(&STACK[0xBD20] | v13);
  *(&STACK[0xBD20] | v13) = STACK[0xBD27];
  v17 = *(&STACK[0xBD20] | v14);
  *(&STACK[0xBD20] | v14) = STACK[0xBD26];
  v18 = *(&STACK[0xBD20] | v15);
  *(&STACK[0xBD20] | v15) = STACK[0xBD25];
  v19 = 16777619 * ((553300517 * v12 + 3) ^ (553300517 * v12)) % 3;
  v20 = vdup_n_s32(553300517 * v12);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v12 + 1;
  LOBYTE(STACK[0xBD27]) = v16;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  LOBYTE(STACK[0xBD26]) = v17;
  LOBYTE(STACK[0xBD25]) = v18;
  v23 = STACK[0xBD20];
  LOBYTE(STACK[0xBD20]) = STACK[0xBD24];
  LOBYTE(STACK[0xBD24]) = v23;
  v24 = *(&STACK[0xBD20] | v19);
  *(&STACK[0xBD20] | v19) = STACK[0xBD23];
  LOBYTE(STACK[0xBD23]) = v24;
  v25 = STACK[0xBD21];
  LOBYTE(STACK[0xBD22]) = STACK[0xBD20];
  LOWORD(STACK[0xBD20]) = v25;
  STACK[0xBD20] = vmla_s32(v22, STACK[0xBD20], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBD28];
  v27 = (553300517 * STACK[0xBD28]) ^ v12;
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
  v48 = *(&STACK[0xBD28] + v13);
  *(&STACK[0xBD28] + v13) = STACK[0xBD2F];
  LOBYTE(STACK[0xBD2F]) = v48;
  v49 = *(&STACK[0xBD28] + v14);
  *(&STACK[0xBD28] + v14) = STACK[0xBD2E];
  LOBYTE(STACK[0xBD2E]) = v49;
  v50 = *(&STACK[0xBD28] + v15);
  *(&STACK[0xBD28] + v15) = STACK[0xBD2D];
  LOBYTE(STACK[0xBD2D]) = v50;
  v51 = STACK[0xBD28];
  LOBYTE(STACK[0xBD28]) = STACK[0xBD2C];
  LOBYTE(STACK[0xBD2C]) = v51;
  v52 = *(&STACK[0xBD28] + v19);
  *(&STACK[0xBD28] + v19) = STACK[0xBD2B];
  LOBYTE(STACK[0xBD2B]) = v52;
  v53 = STACK[0xBD29];
  LOBYTE(STACK[0xBD2A]) = STACK[0xBD28];
  LOWORD(STACK[0xBD28]) = v53;
  STACK[0xBD28] = vmla_s32(v22, STACK[0xBD28], vdup_n_s32(0x1000193u));
  *a1 = STACK[0xBD28] ^ STACK[0xBD20];
  return (*(STACK[0xF18] + 8 * a2))();
}

uint64_t sub_1004D5B48()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 10956)))();
  *(v0 + 16) = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1004D5E7C()
{
  v2 = STACK[0xF18];
  STACK[0x32A0] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v1 - 3810)))();
}

uint64_t sub_1004D5F94@<X0>(unint64_t a1@<X0>, int a2@<W1>, unint64_t a3@<X8>)
{
  v7 = STACK[0xF10];
  LODWORD(STACK[0x10ED8]) = STACK[0xF10] + 139493411 * (((&STACK[0x10ED8] ^ 0xB75C4094 | 0xFBDB8123) - (&STACK[0x10ED8] ^ 0xB75C4094) + ((&STACK[0x10ED8] ^ 0xB75C4094) & 0x4247EDC)) ^ 0x40AA20F2) - 24345;
  STACK[0x10EE0] = a3;
  v8 = STACK[0xF18];
  v9 = *(STACK[0xF18] + 8 * (v7 ^ 0x408D));
  STACK[0xEC0] = a1;
  LODWORD(STACK[0xED0]) = a2;
  v9(&STACK[0x10ED8]);
  STACK[0x10EE0] = v6;
  LODWORD(STACK[0x10ED8]) = v7 - 906386353 * ((((2 * &STACK[0x10ED8]) | 0x1C48A764) - &STACK[0x10ED8] - 237261746) ^ 0x3F259E96) - 21317;
  (*(v8 + 8 * (v7 ^ 0x408B)))(&STACK[0x10ED8]);
  STACK[0x10ED8] = v5;
  LODWORD(STACK[0x10EE0]) = (297845113 * ((~&STACK[0x10ED8] & 0xB1E5CB74 | &STACK[0x10ED8] & 0x4E1A3488) ^ 0xC6D6D7EA)) ^ (v7 - 2526);
  (*(v8 + 8 * (v7 ^ 0x41C5)))(&STACK[0x10ED8]);
  STACK[0x10ED8] = v4;
  LODWORD(STACK[0x10EE4]) = v7 - 17902189 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x588C77D8) - 661882915) ^ 0x56C361CD) + 1721;
  v10 = (*(v8 + 8 * (v7 + 16845)))(&STACK[0x10ED8]);
  *STACK[0xEC0] = 80;
  STACK[0x5FF8] = *(v8 + 8 * v3);
  return (*(v8 + 8 * (v3 - 28220 + 3307 * (v3 ^ 0x677))))(v10);
}

uint64_t sub_1004D62A8()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 ^ 0x630A) - 21471) ^ v0)))();
}

uint64_t sub_1004D63A0@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 + 1741)))();
}

uint64_t sub_1004D6474@<X0>(int a1@<W8>)
{
  v2 = 11881 * (a1 ^ 0xF50);
  LODWORD(STACK[0xD30]) = v2;
  *(STACK[0x9CA8] + STACK[0x9CB0] + (v1 - 2036699850 + v2) - 0x72C4E5E126FDA59DLL) = *(STACK[0x9CA0] + (v1 - 2036699850 + v2)) ^ 0x5F;
  v3 = *(STACK[0xF18] + 8 * a1);
  LODWORD(STACK[0xD80]) = v1 - 1;
  return v3();
}

uint64_t sub_1004D64E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x7548] = STACK[0x7BB0];
  STACK[0x77B0] = &STACK[0x2160];
  LODWORD(STACK[0x648C]) = 2091622825;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_1004D6530()
{
  v2 = STACK[0xF10] ^ 0x8F9B;
  v3 = STACK[0xF10] + 1177;
  LODWORD(STACK[0x9F6C]) = v0;
  return (*(STACK[0xF18] + 8 * ((13 * (v1 != v2 + 950282337)) ^ v3)))();
}

uint64_t sub_1004D65B4()
{
  v1 = STACK[0x7588];
  v2 = *(STACK[0x7588] + 8);
  v3 = STACK[0x3828];
  v3[1] = v2;
  *v3 = *v1;
  return (*(STACK[0xF18] + 8 * ((21 * (((v2 == 0) ^ (23 * ((v0 - 78) & 0x73 ^ 0xA2))) & 1)) ^ v0)))();
}

uint64_t sub_1004D6650()
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
  STACK[0xC0A0] = 0;
  STACK[0xC0A8] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC0A0] | v10);
  *(&STACK[0xC0A0] | v10) = 0;
  LOBYTE(STACK[0xC0A7]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC0A0] | v12);
  *(&STACK[0xC0A0] | v12) = STACK[0xC0A6];
  LOBYTE(STACK[0xC0A6]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC0A0] | v14);
  *(&STACK[0xC0A0] | v14) = STACK[0xC0A5];
  LOBYTE(STACK[0xC0A5]) = v15;
  v16 = STACK[0xC0A0];
  LOBYTE(STACK[0xC0A0]) = STACK[0xC0A4];
  LOBYTE(STACK[0xC0A4]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC0A0] | v17);
  *(&STACK[0xC0A0] | v17) = STACK[0xC0A3];
  LOBYTE(STACK[0xC0A3]) = v18;
  v19 = STACK[0xC0A1];
  LOBYTE(STACK[0xC0A2]) = STACK[0xC0A0];
  LOWORD(STACK[0xC0A0]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC0A0] = vmla_s32(v22, STACK[0xC0A0], vdup_n_s32(0x1000193u));
  STACK[0xC0A8] ^= STACK[0xC0A0];
  STACK[0xC0A8] = vmul_s32(vsub_s32(STACK[0xC0A8], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC0AA];
  LOWORD(STACK[0xC0A9]) = STACK[0xC0A8];
  LOBYTE(STACK[0xC0A8]) = v23;
  v24 = (&STACK[0xC0A8] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC0AB];
  LOBYTE(STACK[0xC0AB]) = v19;
  LOBYTE(v24) = STACK[0xC0A8];
  LOBYTE(STACK[0xC0A8]) = STACK[0xC0AC];
  LOBYTE(STACK[0xC0AC]) = v24;
  v25 = (&STACK[0xC0A8] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC0AD];
  LOBYTE(STACK[0xC0AD]) = v24;
  v26 = (&STACK[0xC0A8] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC0AE];
  LOBYTE(STACK[0xC0AE]) = v25;
  v27 = (&STACK[0xC0A8] | v10);
  v28 = *v27;
  *v27 = STACK[0xC0AF];
  LOBYTE(STACK[0xC0AF]) = v28;
  v29 = STACK[0xC0A8];
  v30 = (553300517 * STACK[0xC0A8]) ^ v9;
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
  *STACK[0x940] = STACK[0xC0A8];
  return (*(STACK[0xF18] + 8 * (v1 - 2902)))(v47, v48);
}

uint64_t sub_1004D6C28()
{
  STACK[0x2188] = STACK[0x2C88];
  LODWORD(STACK[0x6C74]) = STACK[0x964C];
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762658261) ^ (906386353 * ((&STACK[0x10000] + 3800) ^ 0x3101CD24));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xB5DDu)))(&STACK[0x10ED8]);
  v4 = *STACK[0x970] != ((v0 - 1215030117) & 0x486BEF3B) - 35643 || *STACK[0x940] == 0;
  return (*(v1 + 8 * ((v4 * (((v0 + 2207) | 0x338) ^ 0x8BBA)) | v0)))(v2);
}

uint64_t sub_1004D6D08()
{
  STACK[0xACF8] = v1;
  LODWORD(STACK[0xAD04]) = v3;
  STACK[0xAD08] = &STACK[0xC4D0] + 2593 * (v2 ^ 0x2EACu) + v4 - 44113;
  STACK[0x7690] = v4 - 16;
  if (v0)
  {
    v5 = v1 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  return (*(STACK[0xF18] + 8 * ((104 * v6) ^ v2)))();
}

uint64_t sub_1004D6DD4()
{
  LODWORD(STACK[0x649C]) = v0 + v3 + 754633830;
  v5 = v1 + v0 + v3 - 1456643183;
  v6 = (((v2 ^ 0xB04E43F4) + 1337048076) ^ ((v2 ^ 0x1BAC99F4) - 464296436) ^ (((17 * (v4 ^ 0x44D7) + (((v4 ^ 0x29AD) + 6201) ^ 0x42361C8E)) ^ v2) - 1110908177)) - 1265402949;
  v7 = v5 < 0xCABDB4AA;
  v8 = v5 > v6;
  if (v7 != v6 < 0xCABDB4AA)
  {
    v8 = v7;
  }

  return (*(STACK[0xF18] + 8 * ((53903 * v8) ^ v4 ^ 0x29AD)))();
}

uint64_t sub_1004D6F38()
{
  STACK[0x4F90] = *STACK[0x5888];
  LODWORD(STACK[0x22E8]) = STACK[0x949C];
  LODWORD(STACK[0x35EC]) = 1693393231;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004D7044@<X0>(unint64_t a1@<X8>)
{
  STACK[0x56E0] = a1;
  v2 = STACK[0xF18];
  STACK[0x8A90] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((((v1 + 16820) | 0x8010) - 27555) ^ v1)))();
}

uint64_t sub_1004D70A0()
{
  v2 = ((v1 ^ 0xDD31D279) + 583937415) ^ ((v1 ^ 0x70D4EBC5) - 1893002181) ^ (((((v0 - 34472) | 0xF10) + 1144057721) ^ v1) - 1144061613);
  v3 = v0 + 1135 + LODWORD(STACK[0x3908]) - 1865861774;
  v2 += 2057275322;
  v4 = (v3 < 0x90C9C0A9) ^ (v2 < 0x90C9C0A9);
  v5 = v3 > v2;
  if (v4)
  {
    v5 = v3 < 0x90C9C0A9;
  }

  return (*(STACK[0xF18] + 8 * ((41 * !v5) ^ v0)))();
}

uint64_t sub_1004D7180()
{
  v0 = STACK[0xF10];
  LODWORD(STACK[0x2604]) = (((STACK[0xF10] ^ 0xDC102571 ^ LODWORD(STACK[0x98D8]) ^ LODWORD(STACK[0x98D4])) + 257861208) ^ ((LODWORD(STACK[0x98D8]) ^ LODWORD(STACK[0x98D4]) ^ 0x42AD6B9A) - 1847368824) ^ ((LODWORD(STACK[0x98D8]) ^ LODWORD(STACK[0x98D4]) ^ 0x9EBDC5D0) + 1307823566)) - (((LODWORD(STACK[0x98E0]) ^ 0x4FED173D) - 1340938045) ^ ((LODWORD(STACK[0x98E0]) ^ 0xAF080D6B) + 1358426773) ^ ((LODWORD(STACK[0x98E0]) ^ 0x930DD47) - 154197319)) + 1226068196;
  return (*(STACK[0xF18] + 8 * (v0 - 24874)))();
}

uint64_t sub_1004D72E8@<X0>(int a1@<W8>)
{
  v1 = ((2 * STACK[0x90A8]) & 0x73FF57F87FFB7BECLL) - 0x1181895426480424 + ((((a1 + 17011) | 0xA00u) + 0x39FFABFC3FFD52EELL) ^ STACK[0x90A8]);
  LODWORD(STACK[0x705C]) = STACK[0x17D8];
  STACK[0x3CC8] = v1;
  LODWORD(STACK[0x2D84]) = 5;
  LOBYTE(STACK[0x3FCF]) = 96;
  LODWORD(STACK[0x4078]) = -1868256040;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1004D7470()
{
  v0 = STACK[0xF10] - 17116;
  v1 = LODWORD(STACK[0x3464]);
  STACK[0x9B28] = (((v1 ^ 0xED53D1B6485115B3) + 0x12AC2E49B7AEEA4DLL) ^ ((v1 ^ 0xF56F5DFC68F1B58ELL) + 0xA90A203970E4A72) ^ ((v1 ^ 0x183C8C4AC975672CLL) - 0x183C8C4AC975672CLL)) + 0x28D1558D4496EADELL;
  return (*(STACK[0xF18] + 8 * ((8693 * ((((v1 ^ 0x80F60401) + 2131360767) ^ ((v1 ^ 0xD61FB3D9) + 702565415) ^ ((v1 ^ 0xBF3C70C9) + 1086558007)) - 371865909 < 0xFFFFFFBA)) ^ v0)))();
}

uint64_t sub_1004D7688@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x2278] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (((a1 + 21338) ^ 0x69C1) + a1)))();
}

uint64_t sub_1004D76C0@<X0>(uint64_t a1@<X4>, unsigned int a2@<W8>)
{
  v4 = *(a1 + (v2 - 7) % a2);
  v5 = *(a1 + (v2 - 37) % a2);
  v6 = *(a1 + (v2 - 177) % a2);
  *(a1 + v2 % a2) ^= ((v4 >> 7) | (2 * v4)) ^ ((v5 >> 2) | (v5 << 6)) ^ ((v6 >> 3) | (32 * v6)) ^ 0x82;
  return (*(STACK[0xF18] + 8 * ((434 * (((v3 - 1763074881) ^ 0x96E9D1AE) + v2 == 256)) ^ v3)))();
}

uint64_t sub_1004D776C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v4 = (v3 ^ 0xE5FED3FD515FFCCDLL) + 0x1FEFEC56FFB9BF7BLL + ((((a3 + 29842) | 0x239u) ^ 0xA2BF72A0) & (2 * v3));
  STACK[0xB210] = v4;
  v5 = STACK[0x8C90];
  STACK[0xB218] = STACK[0x8C90];
  return (*(STACK[0xF18] + 8 * ((23141 * (v4 - v5 + (a3 - 5182) + 0x41EA8F4E4E2CA28FLL < 0xFFFFFFFFFFFFFFF6)) ^ a3)))(a1, a2, 371891407);
}

uint64_t sub_1004D781C()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * ((v0 ^ 0x9AF4) + 37897)))(STACK[0x6A98]);
  STACK[0x6A98] = 0;
  return (*(v1 + 8 * (v0 ^ 0x9AF4)))(v2);
}

uint64_t sub_1004D7C0C()
{
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 34220)))(v2, v0, 4096);
  return (*(v3 + 8 * ((((v4 ^ 0x6EBF9BD6) + 289432618 + ((2 * v4) & 0xDD7F37AC) < 0x80000001) * (((v1 + 17948) ^ 0xABF9) - 8296)) ^ v1)))();
}

uint64_t sub_1004D7CC4()
{
  v1 = STACK[0xF18];
  STACK[0x16D8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 12721) | 0x11) ^ 0x2D2A) + v0)))();
}

uint64_t sub_1004D7D0C@<X0>(uint64_t a1@<X8>)
{
  *v2 = a1;
  STACK[0x7690] -= 112;
  v3 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * (v1 - 33801));
  return (*(v3 + 8 * ((((v1 - 31512) | 0x6CC) ^ 0x1956) + v1 - 33801)))();
}

uint64_t sub_1004D7E54()
{
  v0 = (STACK[0xF10] - 853748812) & 0x32E2B7FF;
  v1 = STACK[0xF10] - 33789;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x1942) + v1)))();
}

uint64_t sub_1004D7EBC()
{
  v2 = STACK[0x7DD8];
  v3 = STACK[0x5DD4];
  STACK[0x4A98] = v1;
  STACK[0x3E98] = v2;
  LODWORD(STACK[0x655C]) = v3;
  LODWORD(STACK[0x884C]) = -836303877;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004D7F4C()
{
  v2 = *(v0 + 16);
  STACK[0x9690] = v0 + 16;
  return (*(STACK[0xF18] + 8 * ((60 * (v2 == 0)) ^ (v1 - 8868))))();
}

uint64_t sub_1004D8034()
{
  v5 = v3 < 0x73C07ED8;
  *(v2 + v1) ^= *(v4 + v1);
  if (v5 == (v1 + 1) > 0xFFFFFFFF8C3F8127)
  {
    v5 = v1 + 1941995225 < v3;
  }

  return (*(STACK[0xF18] + 8 * ((v5 * ((v0 + 69355788) & 0xFBDDFF7A ^ 0x3369)) ^ v0)))();
}

uint64_t sub_1004D80C0()
{
  LODWORD(STACK[0x3908]) += 4;
  if (STACK[0xACD8])
  {
    v1 = STACK[0xACB8] == 0;
  }

  else
  {
    v1 = 1;
  }

  v3 = v1 || LODWORD(STACK[0xACC0]) == -371865839;
  return (*(STACK[0xF18] + 8 * ((v3 * ((9983 * (v0 ^ 0x8DC7)) ^ 0x74C0)) ^ v0)))();
}

uint64_t sub_1004D81C4@<X0>(unsigned int a1@<W0>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  v12 = STACK[0x8840] + a1;
  v13 = 1864610357 * ((*(*STACK[0xE50] + (*v11 & 0x72D7ACF8)) ^ v12) & (v3 + 2147471209));
  v14 = 1864610357 * (v13 ^ HIWORD(v13));
  *(a3 + a1) = *(v10 + (v14 >> 24)) ^ *v12 ^ *((v14 >> 24) + STACK[0x908] + 6) ^ *((v14 >> 24) + a2 + 5) ^ v14 ^ (-53 * BYTE3(v14));
  v15 = (((LODWORD(STACK[0x65E4]) ^ v4) - 631112363) ^ ((LODWORD(STACK[0x65E4]) ^ v5) + v6) ^ ((LODWORD(STACK[0x65E4]) ^ v7) + v8)) + 1980217142;
  v16 = v15 < 0x8C31F025;
  v17 = a1 - 1942884314 < v15;
  if (a1 + 1 > 0x73CE0FDA != v16)
  {
    v17 = v16;
  }

  return (*(STACK[0xF18] + 8 * ((v17 * v9) ^ v3)))();
}

uint64_t sub_1004D8698()
{
  *v1 = 69;
  v2 = STACK[0xEB0];
  *(v2 + 384) = 0xC77A733C1CF1C999;
  *(v2 + 392) = 0x2CA897D5E0DD5E66;
  v3 = *(v2 + 109);
  v4 = *(v2 + 21);
  *(v2 + 400) = 0x9A5B48F7AE914171;
  *(v2 + 408) = 0xE224BB79232842B7;
  *(v2 + 416) = 0x8D0120915F141FC3;
  *(v2 + 424) = 0x4643F4BD89956245;
  LODWORD(STACK[0xE70]) = v0;
  *(v2 + 432) = 0x92860D3F6A8622B5;
  *(v2 + 440) = 545657070;
  *(v2 + 444) = -4024;
  *(v2 + 446) = 84;
  v5 = ((v3 & 0x20 | v4 & (v3 ^ 0x20) & 0x73) ^ 0x4A59C6E5) & (v4 & 0xB2 ^ 0x6A5DD7E5 ^ (v4 ^ 0x5F) & (v3 ^ (v0 - 27997))) ^ (v4 ^ 0x5F) & (v3 ^ (v0 - 27997)) & 0x49;
  v6 = ((v5 ^ 0x15CF045B) - 1475127882) ^ ((v5 ^ 0x3BDA321) - 1100877104) ^ ((v5 ^ 0x5C2B61CC) - 503893981);
  v7 = v6 - 2132133081;
  v8 = (v6 + 142239911) * (v6 + 976099672) - 833859761 * v6 + 560343984;
  LODWORD(STACK[0xE60]) = v1[*(v2 + 40) & 0x3F ^ 0x1FLL];
  v9 = 8 - (v8 * v7 + 107 * (((v8 << 7) ^ 0x80) + 203 * v7));
  v10 = STACK[0xEA0];
  LODWORD(STACK[0xE30]) = *(STACK[0xEA0] + (*(v2 + 52) & 0x3F ^ 0x1FLL));
  LODWORD(STACK[0xE20]) = v1[*(v2 + 157) & 0x3F ^ 0x1FLL];
  v11 = v1[*(v2 + 104) & 0x3F ^ 0x1FLL];
  *(v2 + 391) = -93;
  LODWORD(STACK[0xE80]) = v10[*(v2 + 44) & 0x3F ^ 0x1FLL];
  LOBYTE(v8) = v1[*(v2 + 17) & 0x3F ^ 0x1FLL];
  LOBYTE(v8) = (((v8 ^ 0x22) - 34) ^ ((v8 ^ 0x42) - 66) ^ ((v8 ^ 0x3F) - 63)) + (((*(v2 + 450) ^ 0xBF) + 65) ^ ((*(v2 + 450) ^ 4) - 4) ^ ((*(v2 + 450) ^ 0xE4) + 28)) + 59;
  LOBYTE(v7) = v8 & 0xDF ^ 0x2E;
  *(v2 + 450) = v8 ^ (2 * ((v8 ^ 2) & (2 * ((v8 ^ 2) & (2 * ((v8 ^ 2) & (2 * ((v8 ^ 2) & (2 * ((v8 ^ 2) & (2 * ((v8 ^ 2) & (2 * v7) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ 0x80;
  LOBYTE(v7) = ((*(v2 + 146) ^ 0xF4) + 12) ^ ((*(v2 + 146) ^ 0x57) - 87) ^ ((*(v2 + 146) ^ 0xFC) + 4);
  v12 = *(v2 + 26);
  v13 = ((v12 ^ 0x79) - 121) ^ ((v12 ^ 0x17) - 23) ^ ((v12 ^ 0x31) - 49);
  v14 = ((v12 ^ 0xFFFFFF93) + 109) ^ ((v12 ^ 0x1F) - 31) ^ ((v12 ^ 0xFFFFFFD3) + 45);
  LODWORD(STACK[0xE10]) = (((*(v2 + 414) ^ 0xFFFFFFE1) + 31) ^ ((*(v2 + 414) ^ 0xFFFFFFE5) + 27) ^ ((*(v2 + 414) ^ 0x5B) - 91)) + 61 * v14 + (-95 - v14) * (v13 - 100);
  LODWORD(STACK[0xE40]) = v9;
  *(v2 + 510) = v1[(v9 ^ (2 * ((v9 ^ 0x18) & (2 * ((v9 ^ 0x78) & (2 * ((v9 ^ 0x78) & (2 * (v9 & 0x14 ^ 0x9E)) ^ v9 & 0x14 ^ 0x9E)) ^ v9 & 0x14 ^ 0x9E)) ^ v9 & 0x14 ^ 0x9E))) & 0x3F ^ 0x14];
  v15 = ((*(v2 + 336) & 0x93 ^ 0xAC) & (v1[*(v2 + 13) & 0x3F ^ 0x1FLL] & 0x2C ^ 0xB7) | *(v2 + 336) & 0x40) ^ 0xFB;
  LODWORD(STACK[0xE00]) = v1[*(v2 + 241) & 0x3F ^ 0x1FLL];
  *(v2 + 445) = (v15 << ((((v7 + 17) * (v7 - 83) - 60) * (v7 + 95)) & 7)) ^ (v15 >> (-(((v7 + 17) * (v7 - 83) - 60) * (v7 + 95)) & 7)) ^ 0x5F;
  v16 = *(v2 + 131);
  v17 = *(v2 + 457);
  v18 = (v17 ^ 0xA0) & (v16 ^ 0x25);
  v17 ^= 0x5Fu;
  v19 = ((v18 | v17 & 0x85) ^ 0x7A) & (*(v2 + 464) ^ 0x5F);
  v20 = v17 & (v16 ^ 0x5F);
  LOBYTE(v17) = *(v2 + 344) & v10[*(v2 + 220) & 0x3F ^ 0x1FLL];
  v21 = ((v19 | v20) >> (~v17 & 7)) ^ ((v19 | v20) << ((v17 + 1) & 7));
  LOBYTE(v21) = (((*(v2 + 394) ^ 0xEF) + 17) ^ ((*(v2 + 394) ^ 0x60) - 96) ^ ((*(v2 + 394) ^ 0xD0) + 48)) + ((((v21 - ((2 * v21) & 0x50) + 40) ^ 0x4B) - 75) ^ (((v21 - ((2 * v21) & 0x50) + 40) ^ 0x1E) - 30) ^ (((v21 - ((2 * v21) & 0x50) + 40) ^ 0x7D) - 125)) - 83;
  LOBYTE(v19) = v21 & 0xD8 ^ 0x83;
  *(v2 + 394) = v21 ^ (2 * ((v21 ^ 0x5A) & (2 * ((v21 ^ 0x5A) & (2 * ((v21 ^ 0x5A) & (2 * ((v21 ^ 0x5A) & (2 * (((2 * (v19 ^ v21 & 2)) ^ 4) & (v21 ^ 0x5A) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ 0x87;
  LOBYTE(v21) = *(v2 + 430);
  LOBYTE(v19) = ((v21 ^ 0x19) - 25) ^ ((v21 ^ 0x29) - 41) ^ ((v21 ^ 0x6F) - 111);
  LOBYTE(v21) = ((v21 ^ 0x66) - 102) ^ ((v21 ^ 0x93) + 109) ^ ((v21 ^ 0xAA) + 86);
  v22 = (v19 - 76) * (v21 + 95);
  v23 = v1[*(v2 + 182) & 0x3F ^ 0x1FLL];
  v24 = v22 - 85 * v21;
  v25 = ((v23 ^ 0x36) - 54) ^ ((v23 ^ 0xFFFFFFA0) + 96) ^ ((v23 ^ 0xFFFFFFC9) + 55);
  LOBYTE(v23) = v1[*(v2 + 196) & 0x3F ^ 0x1FLL];
  LOBYTE(v4) = v10[*(v2 + 21) & 0x3F ^ 0x1FLL];
  LOBYTE(v23) = (v10[*(v2 + 127) & 0x3F ^ 0x1FLL] ^ 0x5F) - (v4 & 0x2B ^ 0xB ^ (v4 ^ 0x5F) & (v23 ^ 0x74) | ~(v23 & v4) & 0x49) + (((*(v2 + 487) ^ 0x20) - 32) ^ ((*(v2 + 487) ^ 0x3E) - 62) ^ ((*(v2 + 487) ^ 0x41) - 65));
  LOBYTE(v4) = v23 - 73;
  v26 = ((72 - v23) & 0xA8 | 0x43) ^ (v23 - 73) & 0xD6;
  LODWORD(STACK[0xDF0]) = v10[*(v2 + 27) & 0x3F ^ 0x1FLL];
  *(v2 + 487) = v4 ^ (2 * ((v4 ^ 0x28) & (2 * ((v4 ^ 0x28) & (2 * ((v4 ^ 0x28) & (2 * ((v4 ^ 0x28) & (2 * ((v4 ^ 0x28) & (2 * ((v4 ^ 0x28) & (2 * v26) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ 0x21;
  v27 = (*(v2 + 329) & 0xFD | (2 * ((v10[*(v2 + 65) & 0x3F ^ 0x1FLL] >> 1) & 1))) ^ 0x5F;
  LOBYTE(v9) = *(v2 + 373);
  *(v2 + 433) = ((*(v2 + 140) & 0x2E ^ 0xBC) & (v9 & 0xD1 ^ 0xEF) & 0xFE | v9 & 0x40) ^ 0xAD ^ ((v27 - ((2 * v27) & 0xF3) - 7) ^ 7) & (((*(v2 + 140) & 0x2E ^ 0xBC) & (v9 & 0xD1 ^ 0xEF) | v9 & 0x41) ^ 0xF3);
  v28 = 205 * ((((*(v2 + 134) & 0x89) - 56) ^ ((*(v2 + 134) & 0x89 ^ 0x99C5) + 26115) ^ ((*(v2 + 134) & 0x89 ^ 0x7EFA) - 32450)) + 144) + 5105;
  LOWORD(v27) = ((((((*(v2 + 134) & 0x89) - 56) ^ ((*(v2 + 134) & 0x89 ^ 0x99C5) + 26115) ^ ((*(v2 + 134) & 0x89 ^ 0x7EFA) - 32450)) + 144) > 0x126u) << 6) | (v28 >> 10);
  v29 = (v28 >> 10) & 0x1A ^ 0x1F;
  *(v2 + 385) = v27 ^ (2 * ((v27 ^ 0x6C) & (2 * ((v27 ^ 0x2C) & (2 * ((v27 ^ 0x2C) & (2 * ((v27 ^ 0x2C) & (2 * ((v27 ^ 0x2C) & (2 * ((v27 ^ 0x2C) & 0x36 ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ 0x45;
  v30 = (171 * (((*(v2 + 403) ^ 0xD82D) + 10195) ^ ((*(v2 + 403) ^ 0xE809) + 6135) ^ ((*(v2 + 403) ^ 0x307B) - 12411)) + 31605) >> 9;
  LOBYTE(v9) = v30 & 0xAA ^ 0x24;
  LOBYTE(v30) = v30 ^ (2 * ((v30 ^ 0x20) & (2 * ((v30 ^ 0x20) & (2 * ((v30 ^ 0x20) & (2 * ((v30 ^ 0x20) & (2 * (v30 & (2 * v9) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9));
  LOBYTE(v9) = v1[*(v2 + 39) & 0x3F ^ 0x1FLL];
  LOBYTE(v9) = (((v9 ^ 0x45) - 69) ^ ((v9 ^ 0x34) - 52) ^ ((v9 ^ 0x2E) - 46)) - 28;
  LOBYTE(v8) = v9 & 0x5B ^ 0x5F;
  LOBYTE(v8) = (v30 & 0x4D | (v9 ^ (2 * ((v9 ^ 8) & (2 * ((v9 ^ 0x2C) & (2 * ((v9 ^ 0x2C) & (2 * ((v9 ^ 0x2C) & (2 * v8) ^ v8)) ^ v8)) ^ v8)) ^ v8))) & 0x32) ^ 0x1A;
  LOBYTE(v8) = (((*(v2 + 394) ^ 0xF5) + 11) ^ ((*(v2 + 394) ^ 0x1E) - 30) ^ ((*(v2 + 394) ^ 0xB4) + 76)) + ((((v8 - ((2 * v8) & 0x44) + 34) ^ 0x49) - 73) ^ (((v8 - ((2 * v8) & 0x44) + 34) ^ 0x91) + 111) ^ (((v8 - ((2 * v8) & 0x44) + 34) ^ 0xFA) + 6)) - 85;
  LOBYTE(v30) = v8 & 0x6E ^ 0x4C;
  *(v2 + 394) = v8 ^ (2 * ((v8 ^ 0x54) & (2 * ((v8 ^ 0x54) & (2 * ((v8 ^ 0x54) & (2 * ((v8 ^ 0x54) & (2 * ((v8 ^ 0x54) & (2 * v30) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ 0x31;
  LOBYTE(v8) = (v25 - 120) & 0x72 ^ 0x4F;
  LODWORD(STACK[0xDB0]) = v25 - 120;
  v31 = v1[((v25 - 120) ^ (2 * (((v25 - 120) ^ 4) & (2 * (((v25 - 120) ^ 0x64) & (2 * (((v25 - 120) ^ 0x64) & (2 * (((v25 - 120) ^ 0x64) & (2 * v8) ^ v8)) ^ v8)) ^ v8)) ^ v8))) & 0x3F ^ 0x32] >> 1;
  LOBYTE(v21) = *(v2 + 391);
  LOBYTE(v30) = (v31 ^ 0x2F) & (v21 ^ 0x14);
  v32 = (((*(v2 + 208) ^ 0x41) - 65) ^ ((*(v2 + 208) ^ 0xC6) + 58) ^ ((*(v2 + 208) ^ 0xD8) + 40)) - 62;
  v33 = v32 & 0xC4 ^ 0xE;
  LOBYTE(v21) = (v32 ^ (2 * ((v32 ^ 0x48) & (2 * ((v32 ^ 0x48) & (2 * ((v32 ^ 0x48) & (2 * ((v32 ^ 0x48) & (2 * (v32 & (2 * v33) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ 0x17) & (v21 ^ 0xA0) ^ v21 & 0xD3;
  LOBYTE(v21) = v21 & 0xB7 | (v31 & 0x4B ^ 0x43 ^ v30) & ~v21;
  LOBYTE(v21) = (((*(v2 + 399) ^ 0xA7) + 89) ^ ((*(v2 + 399) ^ 0x6D) - 109) ^ ((*(v2 + 399) ^ 0x95) + 107)) + (((v21 ^ 0x27) + 49) ^ ((v21 ^ 0xFD) - 21) ^ ((v21 ^ 0x12) + 6)) - 117;
  v34 = v21 & 0x18 ^ 0x92;
  *(v2 + 399) = v21 ^ (2 * ((v21 ^ 0x74) & (2 * ((v21 ^ 0x74) & (2 * ((v21 ^ 0x74) & (2 * ((v21 ^ 0x74) & (2 * ((v21 ^ 0x74) & (2 * v34) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ 0x47;
  v35 = v1[*(v2 + 65) & 0x3F ^ 0x1FLL];
  LOBYTE(v21) = (((*(v2 + 407) ^ 0xF7) + 9) ^ ((*(v2 + 407) ^ 0x6F) - 111) ^ ((*(v2 + 407) ^ 0xC7) + 57)) - 45 * v24;
  v36 = (((v35 ^ 0x71) - 113) ^ ((v35 ^ 0xB3) + 77) ^ ((v35 ^ 0x9D) + 99)) - 95;
  v37 = v36 & 0xFD ^ 0xB;
  *(v2 + 420) ^= ((171 * (*(v2 + 352) ^ 0x5Fu)) >> 9) ^ v36 ^ (2 * ((v36 ^ 0x6E) & (2 * ((v36 ^ 0x6E) & (2 * ((v36 ^ 0x6E) & (2 * ((v36 ^ 0x6E) & (2 * ((v36 ^ 0x6E) & (2 * (((2 * v36) & 0x5E ^ 0x12) & (v36 ^ 0x4E) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ 0xFD;
  v38 = LODWORD(STACK[0xE10]) + 12;
  v39 = v38 & 0xE0 | 0x1D;
  *(v2 + 414) = v38 ^ (2 * ((v38 ^ 0x76) & (2 * ((v38 ^ 0x76) & (2 * ((v38 ^ 0x76) & (2 * ((v38 ^ 0x76) & (2 * ((v38 ^ 0x76) & (2 * ((v38 ^ 0x76) & 0x16 ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ 0xBF;
  v40 = v1[*(v2 + 136) & 0x3F ^ 0x1FLL];
  v41 = *(v2 + 449);
  v42 = *(v2 + 442);
  LODWORD(STACK[0xDC0]) = 54;
  v43 = ((v40 ^ 0x74817A21) & (v41 ^ 0xF5C57AA0) ^ (v41 ^ 0x5F) & 0xFFFFFF81) & 0x69 ^ 0x68 ^ ((v40 ^ 0x74817A21) & (v41 ^ 0xF5C57AA0) ^ (v41 ^ 0x5F) & 0xFFFFFF81 ^ 0x7E) & (v42 ^ 0x36) | (v40 ^ 0x5F) & (v41 ^ 0x5F);
  v44 = (v43 | 0x3D) & ((*(v2 + 438) >> 1) ^ 0x2F) | v43 & 0xBD;
  *(v2 + 422) = (v44 - ((2 * v44) & 0xF8) + 124) ^ 0x23;
  *(v2 + 409) ^= 0xFDu;
  LOBYTE(v21) = v21 + 44;
  LOBYTE(v41) = v21 & 0xF0 ^ 0x2B;
  *(v2 + 407) = v21 ^ (2 * ((v21 ^ 0x22) & (2 * ((v21 ^ 0x22) & (2 * ((v21 ^ 0x22) & (2 * ((v21 ^ 0x22) & (2 * (((2 * v21) & 0x44 ^ 0x52) & (v21 ^ 2) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ 0xAF;
  v45 = *(v2 + 69);
  v46 = (v45 & 0x99999999 ^ 0x7F) & (*(v2 + 340) ^ 0xFFFFFFBF);
  LODWORD(STACK[0xDD0]) = ((v45 & 0x80 | 0x7B) ^ v46 & 0xA4 ^ (v46 ^ 0x1F) & (v45 & 0x66666666 ^ 0x1D)) * (v1[*(v2 + 116) & 0x3F ^ 0x1FLL] ^ 0xFFFFFFA0) - 44;
  v47 = *(v2 + 419) & 0x6E ^ (*(v2 + 380) ^ 0x31) & (*(v2 + 419) ^ 0xFFFFFFA0) ^ 0x20 | STACK[0xE30] & 0x14 ^ 0x14 ^ (LODWORD(STACK[0xE30]) ^ 0x5F) & (*(v2 + 419) ^ 0x4B);
  v48 = ((LODWORD(STACK[0xE60]) ^ 0x60) & 0x75 | 2) ^ 0xFFFFFFBF;
  LOBYTE(v48) = ((v47 | v48) & 0x2B | v47 & v48) - ((2 * ((v47 | v48) & 0x2B | v47 & v48)) & 0xC);
  LOBYTE(v47) = *(v2 + 94);
  LODWORD(STACK[0xE10]) = 87;
  LODWORD(STACK[0xD90]) = 82;
  LOBYTE(v48) = (((v47 ^ 0x57) - 87) ^ ((v47 ^ 0x5A) - 90) ^ ((v47 ^ 0x52) - 82)) - ((((v48 + 6) ^ 0x6E) - 110) ^ (((v48 + 6) ^ 0x6B) - 107) ^ (((v48 + 6) ^ 3) - 3)) - 65;
  LOBYTE(v47) = v48 & 0x7A ^ 0x70;
  *(v2 + 94) = v48 ^ (2 * ((v48 ^ 0x18) & (2 * ((v48 ^ 0x18) & (2 * ((v48 ^ 0x18) & (2 * ((v48 ^ 0x18) & (2 * ((v48 ^ 0x18) & (2 * v47) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ 0x25;
  v49 = STACK[0xE90];
  LOBYTE(v45) = *(v2 + 379) & 0x85 ^ (*(STACK[0xE90] + (*(v2 + 85) & 0x3F ^ 0x1FLL)) ^ 0xDA) & (*(v2 + 379) ^ 0xA0) ^ 0x80 | *(v2 + 139) & 0x3C ^ (*(v2 + 139) ^ 0x5F) & (*(v2 + 379) ^ 0x63) ^ 0x1C;
  LOBYTE(v45) = (v45 & 0xD1 | 0x20) ^ (v45 | 0x2A) & (*(v2 + 356) ^ 0xAE) | v45 & 0x2A;
  *(v2 + 64) ^= (v45 - ((2 * v45) & 0x66) + 51) ^ 0x33;
  v50 = -73 - (((LODWORD(STACK[0xE20]) ^ 0xFFFFFFAA) + 86) ^ ((LODWORD(STACK[0xE20]) ^ 0xFFFFFF81) + 127) ^ ((LODWORD(STACK[0xE20]) ^ 0x74) - 116));
  LODWORD(STACK[0xD20]) = 123;
  v51 = v50 & 0x7B ^ 0x4A;
  v52 = *(v2 + 125) & 0xC9 ^ 0x4B;
  v53 = (v52 + (v52 >> 6 << 7) - 44) ^ v50 ^ (2 * ((v50 ^ 0x66) & (2 * ((v50 ^ 0x66) & (2 * ((v50 ^ 0x66) & (2 * ((v50 ^ 0x66) & (2 * ((v50 ^ 0x66) & (2 * ((v50 ^ 0xFFFFFFC7) & (2 * v50) & 0x4E ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51));
  v54 = *(v2 + 373);
  v55 = (*v10 ^ 0x5F) & (v54 ^ 0xFFFFFFB9) ^ *v10 & 0xE6;
  v56 = (v54 & 0x4C ^ 0xFFFFFFC4 ^ (LODWORD(STACK[0xE00]) ^ 0x13) & (v54 ^ 0xFFFFFFA0)) & (v55 ^ 0xFFFFFFB9) ^ v55 & 0x3B;
  LOBYTE(v56) = ((v56 ^ 0xB8) - 95) ^ ((v56 ^ 0x37) + 48) ^ ((v56 ^ 0x49) + 82);
  v57 = ((v56 + 33) * (v56 + 73) - 40 * v56 + 12) * (v56 + 33) - 52 * v56;
  v58 = ((v11 ^ 0xFFFFFFCC) + 52) ^ ((v11 ^ 0x29) - 41) ^ ((v11 ^ 0xFFFFFFBA) + 70);
  v59 = (v58 + 95) * ((((v11 ^ 0xFFFFFFC6) + 58) ^ ((v11 ^ 0xFFFFFFED) + 19) ^ ((v11 ^ 0x74) - 116)) - 53) - 108 * v58 + 26;
  v60 = v59 & 0xFFFFFF9A ^ 0xFFFFFFE4;
  v61 = (v59 ^ (2 * ((v59 ^ 0x50) & (2 * ((v59 ^ 0x50) & (2 * ((v59 ^ 0x50) & (2 * ((v59 ^ 0x50) & (2 * ((v59 ^ 0x50) & (2 * v60) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ 0xE) & ((*(v2 + 451) & 0x3E ^ 0x20 | *(v2 + 451) & 0xA1) ^ 1) ^ ((*(v2 + 451) & 0x3E ^ 0x20) & 0xFFFFFF9F | *(v2 + 451) & 0x81 | 0x4B);
  LOBYTE(v48) = (((*(v2 + 175) ^ 0xF4) + 12) ^ ((*(v2 + 175) ^ 0xB5) + 75) ^ ((*(v2 + 175) ^ 0x1E) - 30)) - (((*(v2 + 52) ^ 0x32) - 50) ^ ((*(v2 + 52) ^ 0xC3) + 61) ^ ((*(v2 + 52) ^ 0xAE) + 82)) + 80;
  LOBYTE(v60) = v48 & 0xDE ^ 0x17;
  *(v2 + 175) = v48 ^ (2 * ((v48 ^ 0x30) & (2 * ((v48 ^ 0x30) & (2 * ((v48 ^ 0x30) & (2 * ((v48 ^ 0x30) & (2 * ((v48 ^ 0x30) & (2 * (v60 ^ v48 & 0x2E)) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ 0x81;
  LOBYTE(v48) = (((*(v2 + 100) ^ 0xDE) + 34) ^ ((*(v2 + 100) ^ 0x43) - 67) ^ ((*(v2 + 100) ^ 0xC2) + 62)) - 105;
  v62 = v48 & 0xCF ^ 5;
  *(v2 + 100) = v48 ^ (2 * ((v48 ^ 0x44) & (2 * ((v48 ^ 0x44) & (2 * ((v48 ^ 0x44) & (2 * ((v48 ^ 0x44) & (2 * ((v48 ^ 0x44) & (2 * (v48 & (2 * v62) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ 0x90;
  LODWORD(STACK[0xE60]) = ((v53 ^ 0xFFFFFFF8) - 18) ^ ((v53 ^ 0xFFFFFF82) - 104) ^ ((v53 ^ 0xF) + 27);
  v63 = 171 * ((*(v2 + 479) & 0x8C | *(v49 + (*(v2 + 57) & 0x3F ^ 0x1FLL)) & 0x73) ^ 0x5F);
  v64 = ((v63 >> 9) ^ 1) + (((*(v2 + 101) ^ 0xFFFFFFC7) + 57) ^ ((*(v2 + 101) ^ 0xFFFFFFE8) + 24) ^ ((*(v2 + 101) ^ 0x70) - 112)) - ((v63 >> 8) & 0xFC) - 122;
  LOBYTE(v60) = v64 & 0x5E ^ 0x43;
  *(v2 + 101) = v64 ^ (2 * ((v64 ^ 0x58) & (2 * ((v64 ^ 0x58) & (2 * ((v64 ^ 0x58) & (2 * ((v64 ^ 0x58) & (2 * ((v64 ^ 0x58) & (2 * (v60 ^ v64 & 6)) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ 1;
  v65 = *(v49 + (*(v2 + 217) & 0x3F ^ 0x1FLL));
  v66 = ((*(v2 + 352) ^ 0x5F | v65 ^ 0x5C) ^ *(v2 + 352) & 3) & (*(v2 + 462) ^ 0x5F) | *(v2 + 352) & 0xA2 ^ (*(v2 + 352) ^ 0x5F) & (v65 ^ 0xFFFFFFFD) ^ 2;
  v67 = v66 & 0x33 | ((*(v2 + 7) >> 1) ^ 0xFFFFFFE3) & ~v66;
  LOBYTE(v67) = (((*(v2 + 249) ^ 0x13) - 19) ^ ((*(v2 + 249) ^ 0x2C) - 44) ^ ((*(v2 + 249) ^ 0x60) - 96)) - (((v67 ^ 0x87) + 17) ^ ((v67 ^ 4) - 108) ^ ((v67 ^ 0x4F) - 39)) + 33;
  LOBYTE(v65) = v67 & 0x5E ^ 0x62;
  *(v2 + 249) = v67 ^ (2 * ((v67 ^ 0x18) & (2 * ((v67 ^ 0x18) & (2 * ((v67 ^ 0x18) & (2 * ((v67 ^ 0x18) & (2 * ((v67 ^ 0x18) & (2 * v65) ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ 1;
  *(v2 + 30) ^= 0x58u;
  LOBYTE(v67) = v57 - 9;
  LOBYTE(v65) = (v57 - 9) & 0x81;
  *(v2 + 215) = v67 ^ (2 * ((v67 ^ 0x54) & (2 * ((v67 ^ 0x54) & (2 * ((v67 ^ 0x54) & (2 * ((v67 ^ 0x54) & (2 * ((v67 ^ 0x54) & (2 * ((v57 - 9) & (2 * (v57 - 9)) ^ (v65 | 0x2A))) ^ (v65 | 0x3E))) ^ (v65 | 0x3E))) ^ (v65 | 0x3E))) ^ (v65 | 0x3E))) ^ (v65 | 0x3E))) ^ 0xDE;
  v68 = (*(v2 + 10) >> 1) ^ 0x2F;
  v69 = (v68 >> (((LOBYTE(STACK[0xDF0]) ^ 0x5F) * (LOBYTE(STACK[0xDF0]) ^ 0x5F)) & 7)) ^ (v68 << (-((LOBYTE(STACK[0xDF0]) ^ 0x5F) * (LOBYTE(STACK[0xDF0]) ^ 0x5F)) & 7));
  LOBYTE(v69) = (((*(v2 + 67) ^ 0xE5) + 27) ^ ((*(v2 + 67) ^ 0x84) + 124) ^ ((*(v2 + 67) ^ 0x3E) - 62)) - ((((v69 - ((2 * v69) & 0x22) - 111) ^ 0xAA) + 86) ^ (((v69 - ((2 * v69) & 0x22) - 111) ^ 0xED) + 19) ^ (((v69 - ((2 * v69) & 0x22) - 111) ^ 0xD6) + 42)) - 36;
  LOBYTE(v65) = v69 & 0xA8 ^ 0x7F;
  *(v2 + 67) = v69 ^ (2 * ((v69 ^ 0x72) & (2 * ((v69 ^ 0x72) & (2 * ((v69 ^ 0x72) & (2 * ((v69 ^ 0x72) & (2 * ((v69 ^ 0x72) & (2 * ((v69 ^ 0x72) & 0x1A ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ 0xF7;
  LOBYTE(v69) = *(v49 + (*(v2 + 136) & 0x3F ^ 0x1FLL)) & 0xAC;
  LOBYTE(v69) = (((*(v2 + 195) ^ 0xA) - 10) ^ ((*(v2 + 195) ^ 8) - 8) ^ ((*(v2 + 195) ^ 0x5D) - 93)) - (((v69 ^ 0x72) + 21) ^ ((v69 ^ 0x2E) + 73) ^ ((v69 ^ 0xBE) - 39));
  LOBYTE(v65) = v69 + 32;
  LOBYTE(v69) = v69 & 0x1C ^ 0x2C;
  *(v2 + 195) = v65 ^ (2 * ((v65 ^ 0x44) & (2 * ((v65 ^ 0x44) & (2 * ((v65 ^ 0x44) & (2 * ((v65 ^ 0x44) & (2 * ((v65 ^ 0x44) & (2 * v69) ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ 0x43;
  v70 = 171 * (*(v49 + (*(v2 + 56) & 0x3F ^ 0x1FLL)) ^ 0xB9);
  v71 = (0x37u >> ((*(v2 + 386) + 1) & 7)) ^ (55 << (~*(v2 + 386) & 7));
  STACK[0xCE0] = ((v71 | 0x2D) & (*(v2 + 465) ^ 0x5F) | v71 & 0x2D) + v61;
  LOBYTE(v61) = (*(v49 + (*(v2 + 201) & 0x3F ^ 0x1FLL)) ^ 0xA0) + (((*(v2 + 237) ^ 0x70) - 112) ^ ((*(v2 + 237) ^ 0xFD) + 3) ^ ((*(v2 + 237) ^ 0xD2) + 46)) - 62;
  LOBYTE(v47) = v61 & 0x85 ^ 0x94;
  *(v2 + 237) = v61 ^ (2 * ((v61 ^ 0x1C) & (2 * ((v61 ^ 0x1C) & (2 * ((v61 ^ 0x1C) & (2 * ((v61 ^ 0x1C) & (2 * ((v61 ^ 0x1C) & (2 * (v61 & (2 * v61) & 0x3A ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ 0xDA;
  v72 = v10[*(v2 + 120) & 0x3F ^ 0x1FLL] ^ 0x5F;
  v73 = (v72 | *(v2 + 464) ^ 0x5F) & (*(v2 + 456) ^ 0x5F) | v72 & (*(v2 + 464) ^ 0x5F);
  v74 = (v73 | *(v2 + 500) ^ 0x5F) & 0x4F | v73 & (*(v2 + 500) ^ 0x5F);
  v75 = -44 - v74;
  v76 = ((v74 + 43) & 0x1FC | 0x70) ^ (-44 - v74) & 0xFFFFFFE8;
  STACK[0xD80] = v75 ^ (2 * ((v75 ^ 0xC) & (2 * ((v75 ^ 0xC) & (2 * ((v75 ^ 0xC) & (2 * ((v75 ^ 0xC) & (2 * ((v75 ^ 0xC) & (2 * v76) ^ v76)) ^ v76)) ^ v76)) ^ v76)) ^ v76)) ^ 0x3B;
  v77 = v10[*(v2 + 162) & 0x3F ^ 0x1FLL];
  *(v2 + 458) ^= (((v77 & 0x80 ^ 0xAE ^ (v77 | 0x7E) & (*(v2 + 387) ^ 0xFFFFFFF3)) & (v77 & 0x7E ^ 0xA0) ^ v77 & 0x7C) >> 1) ^ 0x6F;
  LOBYTE(v48) = ((*(v2 + 500) ^ 0x92) + 110) ^ ((*(v2 + 500) ^ 0x40) - 64) ^ ((*(v2 + 500) ^ 0x8D) + 115);
  LOBYTE(v75) = *(v2 + 103);
  LODWORD(STACK[0xD40]) = 72;
  LOBYTE(v48) = v48 - (((v75 ^ 0xBE) + 66) ^ ((v75 ^ 0x48) - 72) ^ ((v75 ^ 0xA9) + 87)) + 106;
  LOBYTE(v75) = v48 & 0x54 ^ 0x63;
  *(v2 + 500) = v48 ^ (2 * ((v48 ^ 0x16) & (2 * ((v48 ^ 0x16) & (2 * ((v48 ^ 0x16) & (2 * ((v48 ^ 0x16) & (2 * (((2 * (v75 ^ v48 & 0x42)) ^ 4) & (v48 ^ 0x16) ^ v75)) ^ v75)) ^ v75)) ^ v75)) ^ v75)) ^ 0xB;
  LOBYTE(v48) = ((2 * v10[*(v2 + 173) & 0x3F ^ 0x1FLL]) ^ 0x41) + (((*(v2 + 227) ^ 0xED) + 19) ^ ((*(v2 + 227) ^ 0x9D) + 99) ^ ((*(v2 + 227) ^ 0x2F) - 47)) - 83;
  LOBYTE(v15) = v48 & 0x3D ^ 0x45;
  LOBYTE(v48) = v48 ^ (2 * ((v48 ^ 0x32) & (2 * ((v48 ^ 0x32) & (2 * ((v48 ^ 0x32) & (2 * ((v48 ^ 0x32) & (2 * ((v48 ^ 0x32) & (2 * (((2 * v48) & 0x66 ^ 0xE) & (v48 ^ 0x22) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15));
  v78 = (v70 >> 9) - ((v70 >> 8) & 0xE8) - 12;
  LODWORD(STACK[0xCF0]) = v78;
  *v10 ^= v10[v78 & 0x3F ^ 0x34] ^ 0x5F;
  v79 = (*(v2 + 486) ^ 0x5F) & 0x3E ^ (*(v2 + 92) ^ 0xEC1A061) & (*(v2 + 486) ^ 0xFEF1B2A0) ^ 0xEC1A03E | (*(v2 + 486) ^ 0x5F) & 0x8A;
  v80 = (205 * ((((*(v2 + 155) ^ 0x4E28) - 20008) ^ ((*(v2 + 155) ^ 0x27B8) - 10168)) ^ ((*(v2 + 155) ^ 0x69CF) + 5681)) + 3091) & 0xFC00;
  v81 = (((*(v2 + 459) ^ 0xFFFFFFB5) + 75) ^ ((*(v2 + 459) ^ 0xFFFFFF89) + 119) ^ ((*(v2 + 459) ^ 0x63) - 99)) - ((v79 >> (-(v80 >> 10) & 7)) ^ (v79 << ((v80 >> 10) & 7))) - 85;
  LOBYTE(v80) = v81 & 0xB0 | 6;
  *(v2 + 459) = v81 ^ (2 * ((v81 ^ 0x34) & (2 * ((v81 ^ 0x34) & (2 * ((v81 ^ 0x34) & (2 * ((v81 ^ 0x34) & (2 * ((v81 ^ 0x34) & (2 * v80) ^ v80)) ^ v80)) ^ v80)) ^ v80)) ^ v80)) ^ 0xEF;
  LOBYTE(v81) = v10[*(v2 + 85) & 0x3F ^ 0x1FLL];
  *(v2 + 227) = v48 ^ 0x62;
  *(v2 + 96) = (2 * v81) ^ 0x1E;
  v82 = *(v2 + 39);
  LODWORD(STACK[0xCD0]) = 184;
  v83 = *(v2 + 329);
  LOBYTE(v80) = ((((v83 ^ 0x5E) & (v82 ^ 0xB8) ^ v83 & 0xFFFFFFE7) >> 1) ^ 0x23) + 102;
  *(v2 + 437) ^= v1[v80 & 0x3F] & 0x3A ^ (v1[v80 & 0x3F] ^ 0x5F) & (*(v49 + (*(v2 + 33) & 0x3F ^ 0x1FLL)) ^ 0x65) ^ 0x1A;
  v84 = *(v2 + 239) & 0x3F ^ 0x1FLL;
  v85 = (v10[*(v2 + 105) & 0x3F ^ 0x1FLL] & 0x39 ^ 0x28) & (v83 ^ 0x19) ^ v83 & 0x31 | (*(v2 + 148) & 0xC6 ^ 0x40) & (v10[v84] ^ 0xFFFFFF80) ^ v10[v84] & 0xC0;
  v86 = ((2 * v85) & 0xFFFFFFE7 ^ 0xFFFFFFA6) + (v85 ^ 0x24);
  LOBYTE(v85) = *(v2 + 418);
  LOBYTE(v75) = *(v2 + 221);
  LOBYTE(v65) = (v75 ^ 0x5F) & (v85 ^ 0x73);
  LOBYTE(v85) = (*(v2 + 403) ^ 0x32) & (v85 ^ 0xA0) ^ v85 & 0x6D;
  *(v2 + 505) = ((v85 ^ 0x20 | v75 & 0x2C ^ v65 ^ 0xF1) & 0x7F ^ v85 & 0x7D | ((*(v2 + 343) | ~*(v2 + 142)) ^ *(v2 + 354) & *(v2 + 343)) & 0x80) ^ 0x82;
  LOWORD(v85) = v1[*(v2 + 171) & 0x3F ^ 0x1FLL];
  v87 = 205 * (LODWORD(STACK[0xE80]) ^ 0x5F);
  LOWORD(v85) = (((v85 ^ 0x5D6) - 1494) ^ ((v85 ^ 0x9D41) + 25279) ^ ((v85 ^ 0x98C8) + 26424)) + 220;
  v88 = (((*(v2 + 24) ^ 0x32) - 50) ^ ((*(v2 + 24) ^ 0xFFFFFFF1) + 15) ^ ((*(v2 + 24) ^ 0xFFFFFF9C) + 100)) + ((v85 > 0xF9u) << 6) + (((205 * v85 + 14311) & 0xFC00) >> 10) - 95;
  LOBYTE(v65) = v88 & 0xBB ^ 0x92;
  *(v2 + 44) ^= v88 ^ (2 * ((v88 ^ 0x16) & (2 * ((v88 ^ 0x16) & (2 * ((v88 ^ 0x16) & (2 * ((v88 ^ 0x16) & (2 * ((v88 ^ 0x16) & (2 * ((v88 ^ 6) & (2 * v88) & 0x2E ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ 0xBB;
  *(v2 + 487) ^= *(v2 + 353) & 0x96 ^ ((*(v2 + 137) >> 1) ^ 0xB9) & (*(v2 + 353) ^ 0xA0) ^ 0x80 | *(v2 + 393) & 0x13 ^ 0x13 ^ (*(v2 + 393) & 0x73 ^ 0xD7) & (*(v2 + 353) ^ 0x44);
  LOBYTE(v88) = *(v2 + 67);
  LOBYTE(v51) = v88 & 0x90 ^ 0x3E;
  LOBYTE(v69) = v51 & (*(v2 + 330) ^ 0x2E) | *(v2 + 330) & 0x41;
  LODWORD(STACK[0xDE0]) = 111;
  LOBYTE(v51) = 3 * (v69 & 0x46 ^ (v51 & 0x10 ^ 0x9E ^ v69) & (v88 & 0x6F ^ 0xF6) ^ 0xF9) + 6;
  LOBYTE(v69) = v51 & 0x74 ^ 0x4D;
  *(v2 + 408) ^= v51 ^ (2 * ((v51 ^ 0x7A) & (2 * ((v51 ^ 0x7A) & (2 * ((v51 ^ 0x7A) & (2 * ((v51 ^ 0x7A) & (2 * ((v51 ^ 0x7A) & (2 * ((v51 ^ 0x7A) & 0xE ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ 0x74;
  *(v2 + 434) = -22;
  LOBYTE(v69) = v1[*(v2 + 37) & 0x3F ^ 0x1FLL];
  *(v2 + 483) ^= 0xBDu;
  LOBYTE(v51) = (v69 & 0x5E ^ 0x55) & (*(v2 + 464) | 0x5E) ^ (*(v2 + 464) & 0xA0 | 0x50);
  LOBYTE(v51) = (((*(v2 + 188) ^ 0xEA) + 22) ^ ((*(v2 + 188) ^ 0xF1) + 15) ^ ((*(v2 + 188) ^ 0x44) - 68)) + (((v51 ^ 0x8C) - 105) ^ (-27 - v51) ^ ((v51 ^ 0x26) + 61)) + 58;
  LOBYTE(v77) = v51 & 0x8D ^ 0xFC;
  LOBYTE(v51) = v51 ^ (2 * ((v51 ^ 0x54) & (2 * ((v51 ^ 0x54) & (2 * ((v51 ^ 0x54) & (2 * ((v51 ^ 0x54) & (2 * ((v51 ^ 0x54) & (2 * (v51 & (2 * v51) & 0x2A ^ v77)) ^ v77)) ^ v77)) ^ v77)) ^ v77)) ^ v77));
  LODWORD(STACK[0xE20]) = *(v49 + v84);
  LOBYTE(v84) = *(v49 + (*(v2 + 193) & 0x3F ^ 0x1FLL));
  v89 = *(v2 + 61);
  LOBYTE(v49) = (v84 ^ 0xA0) & (v89 ^ 0xDA) ^ v84 & 0x7A;
  LOBYTE(v84) = v49 & 0xB1 ^ 0x91 ^ (v49 ^ 0xDF) & (*(v2 + 467) ^ 0xEE) | v84 & 0x60 ^ (v84 ^ 0x5F) & (v89 ^ 0x3F) ^ 0x40;
  LOBYTE(v84) = (((*(v2 + 421) ^ 0x46) - 70) ^ ((*(v2 + 421) ^ 0x47) - 71) ^ ((*(v2 + 421) ^ 0x5E) - 94)) - ((((v84 - ((2 * v84) & 0x98) - 52) ^ 0xB0) + 80) ^ (((v84 - ((2 * v84) & 0x98) - 52) ^ 0x4D) - 77) ^ (((v84 - ((2 * v84) & 0x98) - 52) ^ 0x31) - 49)) - 44;
  LOBYTE(v49) = v84 & 0x11 ^ 0xF9;
  *(v2 + 421) = v84 ^ (2 * ((v84 ^ 0x3E) & (2 * ((v84 ^ 0x3E) & (2 * ((v84 ^ 0x3E) & (2 * ((v84 ^ 0x3E) & (2 * ((v84 ^ 0x3E) & (2 * (((2 * v84) ^ 0x2E) & (v84 ^ 0x3E) ^ v49)) ^ v49)) ^ v49)) ^ v49)) ^ v49)) ^ v49)) ^ 0x4E;
  *(v2 + 435) ^= 0xA ^ ((((v86 - 115) & 0x6B ^ 0x6B ^ (v1[*(v2 + 159) & 0x3F ^ 0x1FLL] ^ 0x34) & ~(v86 - 115) | (v86 - 115) & 0x62 | 0x26) & (*(v2 + 367) ^ 0x5F) | ((v86 - 115) & 0x6B ^ 0x6B ^ (v1[*(v2 + 159) & 0x3F ^ 0x1FLL] ^ 0x34) & ~(v86 - 115)) & 0x26 | (v86 - 115) & 0x22) - ((2 * (((v86 - 115) & 0x6B ^ 0x6B ^ (v1[*(v2 + 159) & 0x3F ^ 0x1FLL] ^ 0x34) & ~(v86 - 115) | (v86 - 115) & 0x62 | 0x26) & (*(v2 + 367) ^ 0x5F) | ((v86 - 115) & 0x6B ^ 0x6B ^ (v1[*(v2 + 159) & 0x3F ^ 0x1FLL] ^ 0x34) & ~(v86 - 115)) & 0x26 | (v86 - 115) & 0x22)) & 0x14) + 10);
  LOBYTE(v3) = *(v2 + 480);
  LOBYTE(v49) = ((v3 ^ 0xA0) & (*(v2 + 116) ^ 0xDC) & 0x3F | (v3 ^ 0x5F) & 0x3C) ^ (((v3 ^ 0xA0) & (*(v2 + 116) ^ 0xDC) | (v3 ^ 0x5F) & 0x7C) ^ 0x83) & (*(v2 + 413) ^ 0x60) ^ 3 | (v3 ^ 0x5F) & (*(v2 + 116) ^ 0x5F);
  LOBYTE(v82) = (v49 | (v80 >> 1)) & (*(v2 + 385) ^ 0x5F) | v49 & (v80 >> 1);
  *(v2 + 411) = (v82 - ((2 * v82) & 0x22) - 111) ^ 0xCE;
  *(v2 + 188) = v51 ^ 0xD2;
  v90 = v10[(v51 ^ 0xD2) & 0x3F ^ 0x1FLL];
  HIDWORD(v91) = ~v90;
  LODWORD(v91) = (v90 ^ 0x5C) << 24;
  LODWORD(STACK[0xD70]) = (v91 >> 26) ^ 0xFFFFFF9A;
  v92 = ((*(v2 + 494) ^ 0x5Fu) >> ((*(v2 + 4) + 1) & 7)) ^ ((*(v2 + 494) ^ 0x5F) << (~*(v2 + 4) & 7));
  LOBYTE(v84) = v10[*(v2 + 41) & 0x3F ^ 0x1FLL];
  LOBYTE(v84) = (((v84 ^ 0xA0) & (*(v2 + 247) ^ 0xAC) | (v84 ^ 0x5F) & 0xC) ^ 0xF3) & (*(v2 + 479) ^ 0x5F) | (v84 ^ 0x5F) & (*(v2 + 247) ^ 0x5F);
  LOBYTE(v92) = (v84 | v92) & (*(v2 + 445) ^ 0x5F) | v84 & v92;
  LOBYTE(v84) = *(v2 + 418);
  LODWORD(STACK[0xCC0]) = 97;
  LOBYTE(v77) = (((v84 ^ 0xB1) + 79) ^ ((v84 ^ 0x61) - 97) ^ ((v84 ^ 0x8F) + 113)) + ((((v92 - ((2 * v92) & 0xBA) - 35) ^ 0x7C) - 124) ^ (((v92 - ((2 * v92) & 0xBA) - 35) ^ 9) - 9) ^ (((v92 - ((2 * v92) & 0xBA) - 35) ^ 0xA8) + 88)) + 72;
  LOBYTE(v92) = v77 & 0x6A ^ 0xDB;
  *(v2 + 418) = v77 ^ (2 * ((v77 ^ 0x74) & (2 * ((v77 ^ 0x74) & (2 * ((v77 ^ 0x74) & (2 * ((v77 ^ 0x74) & (2 * ((v77 ^ 0x74) & (2 * ((v77 ^ 0x74) & 0x1E ^ v92)) ^ v92)) ^ v92)) ^ v92)) ^ v92)) ^ v92)) ^ 0x35;
  LOBYTE(v92) = (*(v2 + 506) ^ 0x5F) & 0xE2 ^ (*(v2 + 436) ^ 0xBD) & (*(v2 + 506) ^ 0xA0) ^ 0xE2 | (*(v2 + 506) ^ 0x5F) & 0x23;
  *(v2 + 403) = (v92 * v92 + (~(2 * v92 * v92) | 0xED) - 118) ^ 0xD6;
  v93 = STACK[0xE70];
  LODWORD(STACK[0xE80]) = LODWORD(STACK[0xE70]) - 9412;
  LODWORD(STACK[0xD30]) = LODWORD(STACK[0xE60]) - 72;
  *(v2 + 151) = 95;
  LODWORD(STACK[0xE90]) = v86 - 3;
  v94 = *(STACK[0xF18] + 8 * v93);
  STACK[0xE60] = 14;
  LODWORD(STACK[0xD50]) = 135;
  LODWORD(STACK[0xD60]) = 151;
  LODWORD(STACK[0xD00]) = 194;
  LODWORD(STACK[0xE00]) = 180;
  STACK[0xDA0] = 155;
  LODWORD(STACK[0xE30]) = 245;
  LODWORD(STACK[0xE70]) = 195;
  LODWORD(STACK[0xDF0]) = 148;
  return v94((v87 >> 10) ^ 0x44);
}

uint64_t sub_1004DAE9C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a4 - 32196;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (a4 + 16238)))();
  return (*(v5 + 8 * v4))(v6);
}

uint64_t sub_1004DAED0()
{
  v1 = v0 & 0xFFFFFFFFC4D2BDFFLL;
  v2 = STACK[0xF18];
  STACK[0x9558] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 + ((v1 + 2605) | 0x291) + 662)))();
}

uint64_t sub_1004DAF68@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W4>, int a5@<W8>)
{
  v16 = *(STACK[0xF18] + 8 * v13);
  v17 = (v14 + (a4 + a5));
  v18 = *(*STACK[0xE50] + (*STACK[0xE58] & v5));
  v19 = *v17;
  v20 = ((((v18 ^ v17) & 0x7FFFFFFF) * v6) ^ ((((v18 ^ v17) & 0x7FFFFFFF) * v6) >> 16)) * v6;
  LODWORD(v20) = (*(STACK[0x9B8] + (v20 >> 24)) ^ v19 ^ *((v20 >> 24) + STACK[0x9A8] + 2) ^ *((v20 >> 24) + v15 + 4) ^ v20 ^ ((v20 >> 24) * v7)) << 24;
  v21 = (v14 + (a4 + v8));
  v22 = ((((v18 ^ v21) & 0x7FFFFFFF) * v6) ^ ((((v18 ^ v21) & 0x7FFFFFFF) * v6) >> 16)) * v6;
  LODWORD(v20) = v20 & 0xFF00FFFF | ((*(STACK[0x9B8] + (v22 >> 24)) ^ *v21 ^ *((v22 >> 24) + STACK[0x9A8] + 2) ^ *((v22 >> 24) + v15 + 4) ^ v22 ^ (BYTE3(v22) * v7)) << 16);
  v23 = (v14 + (a4 + v9));
  LOBYTE(v22) = *v23;
  v24 = ((((v18 ^ v23) & 0x7FFFFFFF) * v6) ^ ((((v18 ^ v23) & 0x7FFFFFFF) * v6) >> 16)) * v6;
  LODWORD(v20) = v20 & 0xFFFF00FF | ((v22 ^ v24 ^ (BYTE3(v24) * v7) ^ *(STACK[0x9B8] + (v24 >> 24)) ^ *((v24 >> 24) + STACK[0x9A8] + 2) ^ *((v24 >> 24) + v15 + 4)) << 8);
  v25 = (v14 + (a4 + v12));
  LODWORD(v24) = *v25;
  v26 = ((((v18 ^ v25) & 0x7FFFFFFF) * v6) ^ ((((v18 ^ v25) & 0x7FFFFFFF) * v6) >> 16)) * v6;
  LODWORD(v25) = (v26 >> 24) * v7;
  LODWORD(v26) = *(STACK[0x9B8] + (v26 >> 24)) ^ v24 ^ *((v26 >> 24) + STACK[0x9A8] + 2) ^ *((v26 >> 24) + v15 + 4) ^ v26;
  LODWORD(STACK[0x98D4]) = ((v26 ^ v25) & a2 | (v26 ^ ~v25 | 0xFFFFFF00) & ((v20 - (v10 & (2 * v20)) + v11) ^ a1)) ^ a3;
  return v16();
}

uint64_t sub_1004DB114()
{
  v0 = *(STACK[0xF18] + 8 * (LODWORD(STACK[0xE00]) ^ ((LODWORD(STACK[0xE00]) - 774913759) | 0x300B) ^ 0x2E30A4D3 ^ (115 * (((STACK[0xDD0] & (LODWORD(STACK[0xE00]) ^ LODWORD(STACK[0xDD0])) | (LODWORD(STACK[0xDD0]) - LODWORD(STACK[0xE00])) & ~(LODWORD(STACK[0xE00]) ^ LODWORD(STACK[0xDD0]))) & 0x8000000000000000) == 0))));
  v1 = LODWORD(STACK[0xDA0]);
  v2 = LODWORD(STACK[0xD80]);
  v3 = LODWORD(STACK[0xED0]);
  v4 = LODWORD(STACK[0xD60]);
  v5 = LODWORD(STACK[0xD50]);
  v6 = LODWORD(STACK[0x4F8]);
  LODWORD(STACK[0xDD0]) = STACK[0xDD0];
  return v0(v1, v4, v2, v5, v3, v6);
}

uint64_t sub_1004DB220@<X0>(unint64_t *a1@<X8>)
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
  STACK[0xBE00] = 0;
  STACK[0xBE08] = v1;
  v13 = 16777619 * ((1269228062 * v12 + 7) ^ (1269228062 * v12)) % 7;
  v14 = 16777619 * ((1269228062 * v12 + 6) ^ (1269228062 * v12)) % 6;
  v15 = 16777619 * ((1269228062 * v12 + 5) ^ (1269228062 * v12)) % 5;
  v16 = *(&STACK[0xBE00] | v13);
  *(&STACK[0xBE00] | v13) = STACK[0xBE07];
  v17 = *(&STACK[0xBE00] | v14);
  *(&STACK[0xBE00] | v14) = STACK[0xBE06];
  v18 = *(&STACK[0xBE00] | v15);
  *(&STACK[0xBE00] | v15) = STACK[0xBE05];
  v19 = 16777619 * ((1269228062 * v12 + 3) ^ (1269228062 * v12)) % 3;
  v20 = vdup_n_s32(1269228062 * v12);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = (1269228062 * v12) | 1;
  LOBYTE(STACK[0xBE07]) = v16;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  LOBYTE(STACK[0xBE06]) = v17;
  LOBYTE(STACK[0xBE05]) = v18;
  v23 = STACK[0xBE00];
  LOBYTE(STACK[0xBE00]) = STACK[0xBE04];
  LOBYTE(STACK[0xBE04]) = v23;
  v24 = *(&STACK[0xBE00] | v19);
  *(&STACK[0xBE00] | v19) = STACK[0xBE03];
  LOBYTE(STACK[0xBE03]) = v24;
  v25 = STACK[0xBE01];
  LOBYTE(STACK[0xBE02]) = STACK[0xBE00];
  LOWORD(STACK[0xBE00]) = v25;
  STACK[0xBE00] = vmla_s32(v22, STACK[0xBE00], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBE08];
  v27 = (1269228062 * STACK[0xBE08]) ^ v12;
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
  v48 = *(&STACK[0xBE08] + v13);
  *(&STACK[0xBE08] + v13) = STACK[0xBE0F];
  LOBYTE(STACK[0xBE0F]) = v48;
  v49 = *(&STACK[0xBE08] + v14);
  *(&STACK[0xBE08] + v14) = STACK[0xBE0E];
  LOBYTE(STACK[0xBE0E]) = v49;
  v50 = *(&STACK[0xBE08] + v15);
  *(&STACK[0xBE08] + v15) = STACK[0xBE0D];
  LOBYTE(STACK[0xBE0D]) = v50;
  v51 = STACK[0xBE08];
  LOBYTE(STACK[0xBE08]) = STACK[0xBE0C];
  v52 = *(&STACK[0xBE08] + v19);
  *(&STACK[0xBE08] + v19) = STACK[0xBE0B];
  LOBYTE(STACK[0xBE0C]) = v51;
  LOBYTE(STACK[0xBE0B]) = v52;
  v53 = STACK[0xBE09];
  LOBYTE(STACK[0xBE0A]) = STACK[0xBE08];
  LOWORD(STACK[0xBE08]) = v53;
  STACK[0xBE08] = vmla_s32(v22, STACK[0xBE08], vdup_n_s32(0x1000193u));
  *a1 = STACK[0xBE08] ^ STACK[0xBE00];
  return (*(STACK[0xF18] + 8 * (v2 - 16162)))();
}

uint64_t sub_1004DB6B0()
{
  v1 = *(STACK[0x2DC0] + 32);
  STACK[0x4F90] = STACK[0x88B8];
  LODWORD(STACK[0x22E8]) = v1 - 371865838 + (~(v1 << ((66 * (v0 ^ 0xC4)) ^ 0x4B)) | 0x2C5471DD);
  LODWORD(STACK[0x35EC]) = 1693393275;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004DB71C@<X0>(int a1@<W0>, int a2@<W8>)
{
  v13 = (*v2 + (a2 - 1522967433));
  v14 = ((v13 ^ *(*v11 + (*v10 & 0x72D7ACF8))) & 0x7FFFFFFF) * v4;
  v15 = ((v14 >> (((v3 + 19) | 0x68) ^ 0x78)) ^ v14) * v4;
  v16 = *((v15 >> 24) + v8 + 6) ^ *(v12 + (v15 >> 24)) ^ *((v15 >> 24) + v9 + 5) ^ v15 ^ (BYTE3(v15) * v5);
  if (v6 < v7 != a2 - 2113660833 < v7)
  {
    v17 = v6 < v7;
  }

  else
  {
    v17 = a2 - 2113660833 < v6;
  }

  *v13 = v16;
  return (*(STACK[0xF18] + 8 * ((!v17 * a1) ^ v3)))();
}

uint64_t sub_1004DB7F8(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  v15 = *(STACK[0xF18] + 8 * (a13 ^ (104 * ((v14 < 4) | (STACK[0xDE0] & 1)))));
  STACK[0xE30] = v13;
  return v15(3465227465, a1, a2, a3, a4, a5, a6, *&STACK[0xDD0]);
}

uint64_t sub_1004DB8CC()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 21745;
  STACK[0x10EE0] = *STACK[0x19F0];
  LODWORD(STACK[0x10ED8]) = v0 - 193924789 * ((((&STACK[0x10000] + 3800) | 0x72D4EE34) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x8D2B11C8)) ^ 0xC46FDC52) + 60349492;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4032)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1004DB964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  STACK[0x95A0] = v6;
  LOWORD(STACK[0x79DE]) = 7085;
  LODWORD(STACK[0x16B4]) = 1505502330;
  return (*(STACK[0xF18] + 8 * v5))(a1, a2, STACK[0xE58], STACK[0xE50], a5, 367782106);
}

uint64_t sub_1004DBA00()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * (v0 - 31099));
  return (*(v1 + 8 * (v0 - 31099 + v0 - 27172 - 2505)))(3204694014, 1090286692, 4294923066, 35593, 4294941560, 1194047912, 35641, 1090303727);
}

uint64_t sub_1004DBC44()
{
  v0 = STACK[0xF10];
  STACK[0x1418] = STACK[0x3AA8] + (SLODWORD(STACK[0x8C74]) ^ 0x196691DFLL);
  return (*(STACK[0xF18] + 8 * (v0 - 29290)))();
}

uint64_t sub_1004DBC88()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 31535;
  v2 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x88B6) + v1)))();
}

uint64_t sub_1004DBCEC()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 27448)))((8 * (2 * v0 - ((4 * v0) & 0x1A265E00) + v1 + 4774) - 392828968) ^ 0xE8997808) == 0;
  return (*(v2 + 8 * (v1 | (16 * ((((v1 + 1534) ^ v3) & 1) == 0)))))();
}

uint64_t sub_1004DBE6C()
{
  v1 = STACK[0x1E60] + 32 * STACK[0x85C0] + 0x6C2A3185FA868560;
  *(v1 + 8) = STACK[0x9300];
  *(v1 + 24) = STACK[0x7558];
  ++LOBYTE(STACK[0x3FAF]);
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004DBEE8(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x7B88];
  STACK[0x1960] = STACK[0x7B88] + 37;
  STACK[0x41D8] = v3;
  STACK[0x95A0] = v3;
  LOWORD(STACK[0x79DE]) = 7064;
  LODWORD(STACK[0x16B4]) = 230626359;
  return (*(STACK[0xF18] + 8 * v2))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_1004DBF80()
{
  STACK[0x5C50] = 0x3AE1413A0D5C9772;
  LODWORD(STACK[0x1374]) = 1870871099;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004DC058()
{
  v0 = STACK[0xF10] + 8583;
  v1 = (*STACK[0xAC28] ^ 0x1DE20FFD) + *STACK[0xAC18] + ((((STACK[0xF10] - 10993) | 0x1214) ^ ((STACK[0xF10] ^ 0x145E) - 11201)) & (2 * *STACK[0xAC28]));
  *STACK[0xAC18] = v1 - 501354493;
  v1 -= 302396245;
  v2 = (*STACK[0xAC08] ^ 0x76FDADE1) - 1797378362 + ((2 * *STACK[0xAC08]) & 0xFFC3);
  v3 = v1 < 0xBDBDCA7;
  v4 = v1 > v2;
  if (v3 != v2 < 0xBDBDCA7)
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((486 * !v4) ^ v0)))();
}

uint64_t sub_1004DC1B4@<X0>(int a1@<W8>)
{
  v2 = a1 ^ 0xD6C4;
  v3 = ((((v2 - 460072687) & 0x1B6BCBB5 ^ 0xFFFEBD80) + (v2 ^ 0x9F05)) & *v1) != 0x40000;
  return (*(STACK[0xF18] + 8 * (((2 * v3) | (32 * v3)) ^ v2)))();
}

uint64_t sub_1004DC218()
{
  v0 = STACK[0x450] & 0x9FC9FFBB;
  v1 = STACK[0xF18];
  v2 = STACK[0x44C];
  STACK[0x6728] = *(STACK[0xF18] + 8 * SLODWORD(STACK[0x44C]));
  return (*(v1 + 8 * ((v0 ^ 0x6635) + v2)))();
}

uint64_t sub_1004DC304()
{
  v2 = 239 * (STACK[0xF10] ^ 0x8B97);
  v3 = STACK[0xF10] - 21864;
  *(STACK[0x1A98] + 728) = v0;
  v4 = LODWORD(STACK[0xA914]) + 4;
  LODWORD(STACK[0x9AAC]) = v4;
  v5 = v4 - 2090575470 + (((v1 ^ 0xCAB1DFE) + 572852274) ^ ((v1 ^ 0x18C91BFA) + 910626358) ^ ((v2 ^ 0x2489E7F) + (v1 ^ 0x2CC62B25)));
  v6 = (((LODWORD(STACK[0x3834]) ^ 0xEF073756) + 284739754) ^ ((LODWORD(STACK[0x3834]) ^ 0x396BBDBB) - 963362235) ^ ((LODWORD(STACK[0x3834]) ^ 0x3FB94DFC) - 1069108732)) - 2090575470;
  v7 = v5 < 0x998E9281;
  v8 = v5 > v6;
  if (v7 != v6 < 0x998E9281)
  {
    v8 = v7;
  }

  return (*(STACK[0xF18] + 8 * (((2 * !v8) | (32 * !v8)) ^ v3)))();
}

uint64_t sub_1004DC4FC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x3908]) += 4;
  if (STACK[0xACC8])
  {
    v4 = STACK[0xACB8] == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = v4 || LODWORD(STACK[0xACC0]) == a4 - 371901482;
  return (*(STACK[0xF18] + 8 * ((v6 * ((a4 - 28768) ^ 0x1ADF)) | (a4 - 28768))))();
}

uint64_t sub_1004DC5A0()
{
  v0 = STACK[0xF10] - 30507;
  STACK[0x5658] = STACK[0x1F48];
  LODWORD(STACK[0x2564]) = 567236690;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004DC5D4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = a3 < 0xED62CF17;
  v9 = a7 - 1980032396 + v7 + 955;
  v10 = v8 ^ (v9 < 0xED62CF17);
  v11 = v9 < a3;
  if (!v10)
  {
    v8 = v11;
  }

  return (*(STACK[0xF18] + 8 * ((57 * v8) ^ v7)))();
}

uint64_t sub_1004DC648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (STACK[0xF10] - 2123993740) & 0x7E99BFDB;
  v4 = STACK[0xF10] - 34125;
  LODWORD(STACK[0xA090]) = STACK[0x98D4];
  v5 = *(STACK[0x80C8] + 32) + 1468442052;
  v6 = ((v5 & 0xA8795A37) << (v3 + 118)) & (v5 ^ 0x17D5337) ^ v5 & 0xA8795A37;
  v7 = ((2 * (v5 ^ 0x411DC71B)) ^ 0xD2C93A58) & (v5 ^ 0x411DC71B) ^ (2 * (v5 ^ 0x411DC71B)) & 0xE9649D2C;
  v8 = v7 ^ 0x29248524;
  v9 = (v7 ^ 0xC8401C08) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0xA59274B0) & v8 ^ (4 * v8) & 0xE9649D28;
  v11 = (v10 ^ 0xA1001420) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x4864890C)) ^ 0x9649D2C0) & (v10 ^ 0x4864890C) ^ (16 * (v10 ^ 0x4864890C)) & 0xE9649D00;
  v13 = v11 ^ 0xE9649D2C ^ (v12 ^ 0x80409000) & (v11 << 8);
  LODWORD(STACK[0xA09C]) = v5 ^ (2 * ((v13 << 16) & 0x69640000 ^ v13 ^ ((v13 << 16) ^ 0x1D2C0000) & (((v12 ^ 0x69240D2C) << 8) & 0x69640000 ^ 0x9600000 ^ (((v12 ^ 0x69240D2C) << 8) ^ 0x649D0000) & (v12 ^ 0x69240D2C)))) ^ 0x85DFEC2A;
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x1DD8)))(a1, a2, a3);
}

uint64_t sub_1004DC83C@<X0>(unint64_t *a1@<X7>, int a2@<W8>)
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
  STACK[0xBDB0] = 0;
  STACK[0xBDB8] = v2;
  v13 = 16777619 * ((553300517 * v12 + 7) ^ (553300517 * v12)) % 7;
  v14 = 16777619 * ((553300517 * v12 + 6) ^ (553300517 * v12)) % 6;
  v15 = 16777619 * ((553300517 * v12 + 5) ^ (553300517 * v12)) % 5;
  v16 = *(&STACK[0xBDB0] | v13);
  *(&STACK[0xBDB0] | v13) = STACK[0xBDB7];
  v17 = *(&STACK[0xBDB0] | v14);
  *(&STACK[0xBDB0] | v14) = STACK[0xBDB6];
  v18 = *(&STACK[0xBDB0] | v15);
  *(&STACK[0xBDB0] | v15) = STACK[0xBDB5];
  v19 = 16777619 * ((553300517 * v12 + 3) ^ (553300517 * v12)) % 3;
  v20 = vdup_n_s32(553300517 * v12);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v12 + 1;
  LOBYTE(STACK[0xBDB7]) = v16;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  LOBYTE(STACK[0xBDB6]) = v17;
  LOBYTE(STACK[0xBDB5]) = v18;
  v23 = STACK[0xBDB0];
  LOBYTE(STACK[0xBDB0]) = STACK[0xBDB4];
  LOBYTE(STACK[0xBDB4]) = v23;
  v24 = *(&STACK[0xBDB0] | v19);
  *(&STACK[0xBDB0] | v19) = STACK[0xBDB3];
  LOBYTE(STACK[0xBDB3]) = v24;
  v25 = STACK[0xBDB1];
  LOBYTE(STACK[0xBDB2]) = STACK[0xBDB0];
  LOWORD(STACK[0xBDB0]) = v25;
  STACK[0xBDB0] = vmla_s32(v22, STACK[0xBDB0], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBDB8];
  v27 = (553300517 * STACK[0xBDB8]) ^ v12;
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
  v48 = *(&STACK[0xBDB8] + v13);
  *(&STACK[0xBDB8] + v13) = STACK[0xBDBF];
  LOBYTE(STACK[0xBDBF]) = v48;
  v49 = *(&STACK[0xBDB8] + v14);
  *(&STACK[0xBDB8] + v14) = STACK[0xBDBE];
  LOBYTE(STACK[0xBDBE]) = v49;
  v50 = *(&STACK[0xBDB8] + v15);
  *(&STACK[0xBDB8] + v15) = STACK[0xBDBD];
  LOBYTE(STACK[0xBDBD]) = v50;
  v51 = STACK[0xBDB8];
  LOBYTE(STACK[0xBDB8]) = STACK[0xBDBC];
  LOBYTE(STACK[0xBDBC]) = v51;
  v52 = *(&STACK[0xBDB8] + v19);
  *(&STACK[0xBDB8] + v19) = STACK[0xBDBB];
  LOBYTE(STACK[0xBDBB]) = v52;
  v53 = STACK[0xBDB9];
  LOBYTE(STACK[0xBDBA]) = STACK[0xBDB8];
  LOWORD(STACK[0xBDB8]) = v53;
  STACK[0xBDB8] = vmla_s32(v22, STACK[0xBDB8], vdup_n_s32(0x1000193u));
  *a1 = STACK[0xBDB8] ^ STACK[0xBDB0];
  return (*(STACK[0xF18] + 8 * a2))();
}

uint64_t sub_1004DCCD4@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X5>, int a6@<W8>)
{
  v24 = (((v10 ^ 0x577638DB) - 1467365595) ^ ((v10 ^ 0x35FAF4BE) - 905639102) ^ ((v8 ^ v10 ^ 0x8B59804F) + 1957098636)) - 86148285;
  v25 = (v24 ^ v15) & (2 * (v24 & 0xEEF84BCD)) ^ v24 & 0xEEF84BCD;
  v26 = ((2 * (v24 ^ 0xAB587001)) ^ v16) & (v24 ^ 0xAB587001) ^ (2 * (v24 ^ 0xAB587001)) & v17;
  v27 = v26 ^ v18;
  v28 = (v26 ^ v19) & (4 * v25) ^ v25;
  v29 = ((4 * v27) ^ v20) & v27 ^ (4 * v27) & v21;
  v30 = (v29 ^ v23) & (16 * v28) ^ v28;
  v31 = ((16 * (v29 ^ v22)) ^ v6) & (v29 ^ v22) ^ (16 * (v29 ^ v22)) & v7;
  v32 = v30 ^ v17 ^ (v31 ^ a6) & (v30 << 8);
  v33 = v24 ^ (2 * ((v32 << 16) & v14 ^ v32 ^ ((v32 << 16) ^ a4) & (((v31 ^ a1) << 8) & v14 ^ a3 ^ (((v31 ^ a1) << 8) ^ a2) & (v31 ^ a1))));
  *(v12 + v13 + (v33 ^ a5)) = *(v11 + (v33 ^ a5));
  return (*(STACK[0xF18] + 8 * (v9 ^ (2 * (v33 == a5)))))();
}

uint64_t sub_1004DCE2C()
{
  STACK[0x1558] = STACK[0x8238] - 0x43D8CBFA0CEB427CLL;
  if (STACK[0x80B8])
  {
    v1 = LODWORD(STACK[0x9724]) == -371865839;
  }

  else
  {
    v1 = 1;
  }

  v2 = v1;
  return (*(STACK[0xF18] + 8 * (((((v0 - 113) ^ v2) & 1) * (((v0 + 1532046925) & 0xA4AE67CF) - 9405)) ^ v0)))();
}

uint64_t sub_1004DCEFC()
{
  STACK[0xE90] = STACK[0xEC0] + 376;
  LODWORD(STACK[0xEA0]) = v0 + 31638;
  return (*(STACK[0xF18] + 8 * ((35 * ((((v1 ^ 0xB0C78D23) + 1329099485) ^ ((v1 ^ 0xAD739C20) + 1384932320) ^ ((v1 ^ 0xF6FC5C03) + 151233533)) + 1041397145 + v0 + 31638 != 1389020458)) ^ v0)))();
}

uint64_t sub_1004DCFBC()
{
  STACK[0x9D80] = (((v0 + 21618) ^ 0x17FFF8DA6) & (2 * v1)) + (v1 ^ 0xF9A7FF4DBFFFF73FLL) + 0x3E7AC7FE63F2EAF7;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 + 1693)))();
}

uint64_t sub_1004DD050@<X0>(int a1@<W8>)
{
  v3 = a1 ^ 0xF575;
  v4 = (v2 ^ 0x98CA45EF) & (2 * ((v3 - 1664414603) & v2)) ^ (v3 - 1664414603) & v2;
  v5 = ((2 * (v2 ^ 0xB1CC8D0E ^ (v3 - 1209420667) & 0x48164BAB)) ^ 0x5A0F2294) & (v2 ^ 0xB1CC8D0E ^ (v3 - 1209420667) & 0x48164BAB) ^ (2 * (v2 ^ 0xB1CC8D0E ^ (v3 - 1209420667) & 0x48164BAB)) & 0x2D07914A;
  v6 = v5 ^ 0x2500914A;
  v7 = (v5 ^ 0x70000) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0xB41E4528) & v6 ^ (4 * v6) & 0x2D079148;
  v9 = v7 ^ 0x2D07914A ^ (v8 ^ 0x24060100) & (16 * v7);
  v10 = (16 * (v8 ^ 0x9019042)) & 0x2D079140 ^ 0x2D06814A ^ ((16 * (v8 ^ 0x9019042)) ^ 0xD07914A0) & (v8 ^ 0x9019042);
  v11 = (v9 << 8) & 0x2D079100 ^ v9 ^ ((v9 << 8) ^ 0x7914A00) & v10;
  v12 = v2 ^ (2 * ((v11 << 16) & 0x2D070000 ^ v11 ^ ((v11 << 16) ^ 0x114A0000) & ((v10 << 8) & 0x2D070000 ^ 0x28060000 ^ ((v10 << 8) ^ 0x7910000) & v10))) ^ 0x7B6AC5EC;
  v13 = 17902189 * ((((2 * (&STACK[0x10000] + 3800)) | 0xB2430900) - (&STACK[0x10000] + 3800) - 1495368832) ^ 0xD76E9290);
  LODWORD(STACK[0x10EF8]) = v12 + v13;
  LODWORD(STACK[0x10EE8]) = v13 + v3 + 22353;
  STACK[0x10ED8] = v1;
  LODWORD(STACK[0x10EE0]) = v13 + 1497668682;
  STACK[0x10EF0] = &STACK[0x73A8];
  v14 = STACK[0xF18];
  v15 = (*(STACK[0xF18] + 8 * (v3 ^ 0x82E1)))(&STACK[0x10ED8]);
  return (*(v14 + 8 * ((209 * (LODWORD(STACK[0x10EE4]) != -371865839)) ^ v3)))(v15);
}

uint64_t sub_1004DD29C()
{
  STACK[0x7710] = (((LODWORD(STACK[0x4A6C]) ^ 0xB7493944003BB62BLL) + 0x48B6C6BBFFC449D5) ^ ((LODWORD(STACK[0x4A6C]) ^ 0x5D1C958A56065B13) - 0x5D1C958A56065B13) ^ ((LODWORD(STACK[0x4A6C]) ^ 0xEA55ACCEBFE82A29) + 0x15AA53314017D5D7)) + (v0 ^ 0x438E21DF7395894);
  STACK[0x8E50] = STACK[0x2CA0];
  LODWORD(STACK[0x945C]) = STACK[0x48D8];
  STACK[0x34A8] = STACK[0x3748];
  LODWORD(STACK[0x39EC]) = STACK[0x5678];
  LODWORD(STACK[0x10ED8]) = (v0 - 1762657802) ^ (906386353 * ((((2 * (&STACK[0x10000] + 3800)) | 0x90AD2AF4) - (&STACK[0x10000] + 3800) + 933849734) ^ 0xF957585E));
  STACK[0x10EE0] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 19744)))(&STACK[0x10ED8]);
  v4 = *STACK[0x970] != v0 - 32153 || *STACK[0x940] == 0;
  return (*(v1 + 8 * ((2 * v4) | (32 * v4) | v0)))(v2);
}

uint64_t sub_1004DD43C()
{
  v2 = v0[1];
  v3 = *v0 + 541650510;
  v4 = v3 < 0x506B593D;
  v5 = v3 > v2 + 1349212477;
  if (v4 != v2 > 0xAF94A6C2)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((v5 * (((v1 - 1509362527) & 0x59F695A3) - 4526)) ^ (v1 - 2382))))();
}

uint64_t sub_1004DD51C()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x11BB)))();
}

uint64_t sub_1004DD6A8()
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393372;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004DD700()
{
  v1 = v0 - 42874;
  v2 = (((v0 - 1858348093) & 0x6EC3EB4B) - 969421555) ^ LODWORD(STACK[0x9398]);
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v2;
  LODWORD(STACK[0x35EC]) = 1693393334;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1004DDA60(uint64_t a1, uint64_t a2)
{
  STACK[0xE00] = STACK[0xBA60];
  STACK[0x7690] = v2 + 9344;
  return (*(STACK[0xF18] + 8 * ((22442 * ((((v4 ^ 0xCEE931D9) + 823578151) ^ ((v4 ^ 0x1D646CDD) - 493120733) ^ (((v3 + 952437385) ^ v4) - 952438788)) - 347583232 < 0x101)) ^ v3)))(a1, a2, 371891400);
}

uint64_t sub_1004DDB94()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * (v0 - 32662));
  return (*(v1 + 8 * (((v0 - 2333) ^ 0x8B32) + v0 - 32662)))();
}

uint64_t sub_1004DDBE8()
{
  v1 = (STACK[0xF10] - 14133) | 9;
  v2 = *(v0 + 8);
  STACK[0x92B0] = v0 + 8;
  STACK[0x10EE0] = v2;
  LODWORD(STACK[0x10ED8]) = (v1 - 1762647168) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0xFDBAA3BB) - ((&STACK[0x10000] + 3800) | 0x2455C44) + 38100036) ^ 0xCCBB6E9F));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x9EB6)))(&STACK[0x10ED8]);
  STACK[0x2F28] = v0 + 264;
  return (*(v3 + 8 * (((*(v0 + 264) == 0) * ((7 * (((v1 + 9604) | 0x46820020) ^ 0x46827624)) ^ 0x6D66)) ^ v1)))(v4);
}

uint64_t sub_1004DDCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 30181;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x6320];
  STACK[0x5D28] = &STACK[0x2A04];
  LODWORD(STACK[0x4704]) = -1488915105;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_1004DDD38@<X0>(unint64_t a1@<X8>)
{
  v3 = 1864610357 * ((*(*STACK[0xE50] + (*STACK[0xE58] & 0x72D7ACF8)) ^ (v1 + a1)) & 0x7FFFFFFF);
  v4 = 1864610357 * ((v3 >> (109 * (v2 ^ 0x90) - 43)) ^ v3);
  *(v1 + a1) = *((v4 >> 24) + STACK[0x9A8] + 2) ^ *(STACK[0x9B8] + (v4 >> 24)) ^ *((v4 >> 24) + STACK[0x9B0] + 4) ^ v4 ^ (-97 * BYTE3(v4));
  return (*(STACK[0xF18] + 8 * ((14 * (a1 > 0x1E)) ^ v2)))();
}

uint64_t sub_1004DDF1C@<X0>(void *a1@<X8>)
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
  STACK[0xBF50] = 0;
  STACK[0xBF58] = v1;
  v11 = 16777619 * ((1269228062 * v10 + 7) ^ (1269228062 * v10)) % 7;
  v12 = *(&STACK[0xBF50] | v11);
  *(&STACK[0xBF50] | v11) = 0;
  LOBYTE(STACK[0xBF57]) = v12;
  v13 = 16777619 * ((1269228062 * v10 + 6) ^ (1269228062 * v10)) % 6;
  v14 = *(&STACK[0xBF50] | v13);
  *(&STACK[0xBF50] | v13) = STACK[0xBF56];
  LOBYTE(STACK[0xBF56]) = v14;
  v15 = 16777619 * ((1269228062 * v10 + 5) ^ (1269228062 * v10)) % 5;
  v16 = *(&STACK[0xBF50] | v15);
  *(&STACK[0xBF50] | v15) = STACK[0xBF55];
  LOBYTE(STACK[0xBF55]) = v16;
  v17 = STACK[0xBF50];
  LOBYTE(STACK[0xBF50]) = STACK[0xBF54];
  LOBYTE(STACK[0xBF54]) = v17;
  v18 = 16777619 * ((1269228062 * v10 + 3) ^ (1269228062 * v10)) % 3;
  v19 = *(&STACK[0xBF50] | v18);
  *(&STACK[0xBF50] | v18) = STACK[0xBF53];
  LOBYTE(STACK[0xBF53]) = v19;
  v20 = STACK[0xBF51];
  LOBYTE(STACK[0xBF52]) = STACK[0xBF50];
  LOWORD(STACK[0xBF50]) = v20;
  v21 = vdup_n_s32(1269228062 * v10);
  v22.i32[0] = v21.i32[0];
  v22.i32[1] = (1269228062 * v10) | 1;
  v23 = veor_s8(vmul_s32(v22, v21), v21);
  STACK[0xBF50] = vmla_s32(v23, STACK[0xBF50], vdup_n_s32(0x1000193u));
  STACK[0xBF58] ^= STACK[0xBF50];
  STACK[0xBF58] = vmul_s32(vsub_s32(STACK[0xBF58], v23), vdup_n_s32(0x359C449Bu));
  v24 = STACK[0xBF5A];
  LOWORD(STACK[0xBF59]) = STACK[0xBF58];
  LOBYTE(STACK[0xBF58]) = v24;
  v25 = (&STACK[0xBF58] | v18);
  LOBYTE(v20) = *v25;
  *v25 = STACK[0xBF5B];
  LOBYTE(STACK[0xBF5B]) = v20;
  LOBYTE(v25) = STACK[0xBF58];
  LOBYTE(STACK[0xBF58]) = STACK[0xBF5C];
  LOBYTE(STACK[0xBF5C]) = v25;
  v26 = (&STACK[0xBF58] | v15);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xBF5D];
  LOBYTE(STACK[0xBF5D]) = v25;
  v27 = (&STACK[0xBF58] | v13);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xBF5E];
  LOBYTE(STACK[0xBF5E]) = v26;
  v28 = (&STACK[0xBF58] | v11);
  v29 = *v28;
  *v28 = STACK[0xBF5F];
  LOBYTE(STACK[0xBF5F]) = v29;
  v30 = STACK[0xBF58];
  v31 = (1269228062 * STACK[0xBF58]) ^ v10;
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
  *a1 = STACK[0xBF58];
  return (*(STACK[0xF18] + 8 * (v2 | 0x4B0)))(v48, v49);
}

uint64_t sub_1004DE3B8()
{
  v2 = STACK[0x7980];
  *(v2 + 120) = 0;
  *(v2 + 136) = 0;
  *(v2 + 148) = 2;
  *(v2 + 160) = 0;
  *(v2 + 232) = 0;
  v3 = *(STACK[0x8600] + 32);
  LODWORD(v2) = *(STACK[0x8600] + 40);
  v4 = 155453101 * ((~(&STACK[0x10000] + 3800) & 0x96866299 | (&STACK[0x10000] + 3800) & 0x69799D60) ^ 0x70A07956);
  LODWORD(STACK[0x10F00]) = v4 ^ 0x5AF81C38;
  LODWORD(STACK[0x10EEC]) = v1 - v4 + 28079;
  STACK[0x10EE0] = v0;
  STACK[0x10EF8] = v3;
  STACK[0x10EF0] = &STACK[0x72D0];
  LODWORD(STACK[0x10ED8]) = v4 ^ 0xE30658FF;
  LODWORD(STACK[0x10EDC]) = -155453101 * ((~(&STACK[0x10000] + 3800) & 0x96866299 | (&STACK[0x10000] + 3800) & 0x69799D60) ^ 0x70A07956) + 1305734685 * v2 + 1096739917;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 ^ 0xF68A)))(&STACK[0x10ED8]);
  v7 = STACK[0x10EE8];
  LODWORD(STACK[0xB7E4]) = STACK[0x10EE8];
  return (*(v5 + 8 * ((24733 * (v7 == (v1 ^ 0x409A) + (v1 ^ 0x22C6) - 371906125)) ^ v1)))(v6);
}

uint64_t sub_1004DE5A0()
{
  v0 = STACK[0xF10];
  v1 = 2 - STACK[0xB278];
  v2 = *(&off_1010A0B50 + (STACK[0xF10] - 33936)) - STACK[0xB278] - 1504904027;
  v9 = STACK[0xB280] - STACK[0xB278] < 0x10 || *(&off_1010A0B50 + (STACK[0xF10] - 32113)) - STACK[0xB278] - 1282111302 < 0x10 || *(&off_1010A0B50 + v0 - 31497) + v1 - 762724766 < 0x10 || *(&off_1010A0B50 + (STACK[0xF10] ^ 0x8113)) - STACK[0xB278] - 706641909 < 0x10 || *(&off_1010A0B50 + (STACK[0xF10] ^ 0x8913)) - STACK[0xB278] - 62834678 < 0x10 || v2 < (((STACK[0xF10] + 1906791091) & 0x8E587FDD) + 9096) - 33092 || *(&off_1010A0B50 + (v0 ^ 0x9B3D)) + v1 - 1566782250 < 0x10;
  return (*(STACK[0xF18] + 8 * ((30 * v9) ^ (STACK[0xF10] - 2486))))(v2);
}

uint64_t sub_1004DE798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7)
{
  v9 = 0;
  v10 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x20FAB224)) ^ 0x20FAB225;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  v12 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v11;
  v13 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v12 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v12;
  v14 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v13 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v13;
  v15 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v14 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v14;
  v16 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v15 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v15;
  v17 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v16 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v16;
  v18 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v17 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v17;
  STACK[0xBAF0] = 0;
  STACK[0xBAF8] = v7;
  v19 = 16777619 * ((553300517 * v18 + 7) ^ (553300517 * v18)) % 7;
  v20 = 16777619 * ((553300517 * v18 + 6) ^ (553300517 * v18)) % 6;
  v21 = 16777619 * ((553300517 * v18 + 5) ^ (553300517 * v18)) % 5;
  v22 = *(&STACK[0xBAF0] | v19);
  *(&STACK[0xBAF0] | v19) = STACK[0xBAF7];
  v23 = *(&STACK[0xBAF0] | v20);
  *(&STACK[0xBAF0] | v20) = STACK[0xBAF6];
  v24 = *(&STACK[0xBAF0] | v21);
  *(&STACK[0xBAF0] | v21) = STACK[0xBAF5];
  v25 = vdup_n_s32(553300517 * v18);
  v26 = 16777619 * ((553300517 * v18 + 3) ^ (553300517 * v18)) % 3;
  v27.i32[0] = v25.i32[0];
  v27.i32[1] = 553300517 * v18 + 1;
  LOBYTE(STACK[0xBAF7]) = v22;
  v28 = veor_s8(vmul_s32(v27, v25), v25);
  LOBYTE(STACK[0xBAF6]) = v23;
  LOBYTE(STACK[0xBAF5]) = v24;
  v29 = STACK[0xBAF0];
  LOBYTE(STACK[0xBAF0]) = STACK[0xBAF4];
  LOBYTE(STACK[0xBAF4]) = v29;
  v30 = *(&STACK[0xBAF0] | v26);
  *(&STACK[0xBAF0] | v26) = STACK[0xBAF3];
  LOBYTE(STACK[0xBAF3]) = v30;
  v31 = STACK[0xBAF1];
  LOBYTE(STACK[0xBAF2]) = STACK[0xBAF0];
  LOWORD(STACK[0xBAF0]) = v31;
  STACK[0xBAF0] = vmla_s32(v28, STACK[0xBAF0], vdup_n_s32(0x1000193u));
  v32 = STACK[0xBAF8];
  v33 = (553300517 * STACK[0xBAF8]) ^ v18;
  v34 = vdupq_n_s32(v33);
  v35 = xmmword_100BC7620;
  v36 = xmmword_100BC7630;
  v37 = xmmword_100BC7640;
  v38 = xmmword_100BC7650;
  v39.i64[1] = 0xFFFFFF0FFFFFFF0ELL;
  v40.i64[0] = 0x9393939393939393;
  v40.i64[1] = 0x9393939393939393;
  v41.i64[0] = 0x1000000010;
  v41.i64[1] = 0x1000000010;
  do
  {
    v42 = *(v32 + v9);
    v62.val[1] = veorq_s8(vqtbl1q_s8(v42, xmmword_100BC7690), veorq_s8(v34, vmulq_s32(vaddq_s32(v37, v34), vsubq_s32(v37, v34))));
    v62.val[0] = veorq_s8(vqtbl1q_s8(v42, xmmword_100BC76A0), veorq_s8(v34, vmulq_s32(vaddq_s32(v38, v34), vsubq_s32(v38, v34))));
    v62.val[2] = veorq_s8(vqtbl1q_s8(v42, xmmword_100BC7680), veorq_s8(v34, vmulq_s32(vaddq_s32(v36, v34), vsubq_s32(v36, v34))));
    v62.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v42, xmmword_100BC7670), v34), vmulq_s32(vaddq_s32(v35, v34), vsubq_s32(v35, v34)));
    *(v32 + v9) = vmulq_s8(vqtbl4q_s8(v62, xmmword_100BC7660), v40);
    v9 += 16;
    v38 = vaddq_s32(v38, v41);
    v37 = vaddq_s32(v37, v41);
    v36 = vaddq_s32(v36, v41);
    v35 = vaddq_s32(v35, v41);
  }

  while (v9 != 576);
  v43 = 0;
  v44 = xmmword_100F52AE0;
  v45 = vdupq_n_s32(v33);
  v46 = xmmword_100F52AF0;
  v47 = v32 + 576;
  v48.i64[0] = 0x800000008;
  v48.i64[1] = 0x800000008;
  do
  {
    v39.i64[0] = *(v47 + v43);
    v61.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v39, xmmword_100BC7690), v45), vmulq_s32(vaddq_s32(v44, v45), vsubq_s32(v44, v45)));
    v61.val[0] = veorq_s8(vqtbl1q_s8(v39, xmmword_100BC76A0), veorq_s8(v45, vmulq_s32(vaddq_s32(v46, v45), vsubq_s32(v46, v45))));
    v39 = vqtbl2q_s8(v61, xmmword_100F52AD0);
    *(v47 + v43) = vmul_s8(*v39.i8, 0x9393939393939393);
    v46 = vaddq_s32(v46, v48);
    v44 = vaddq_s32(v44, v48);
    v43 += 8;
  }

  while (v43 != 8);
  v49 = 72;
  do
  {
    v50 = 16777619 * ((v33 + v49) ^ v33) % v49;
    v51 = *(v32 + 8 * v50) ^ *(v32 + 8 * v49);
    *(v32 + 8 * v49) = v51;
    v52 = *(v32 + 8 * v50) ^ v51;
    *(v32 + 8 * v50) = v52;
    *(v32 + 8 * v49) ^= v52;
    v53 = v49-- + 1;
  }

  while (v53 > 2);
  v54 = *(&STACK[0xBAF8] + v19);
  *(&STACK[0xBAF8] + v19) = STACK[0xBAFF];
  LOBYTE(STACK[0xBAFF]) = v54;
  v55 = *(&STACK[0xBAF8] + v20);
  *(&STACK[0xBAF8] + v20) = STACK[0xBAFE];
  LOBYTE(STACK[0xBAFE]) = v55;
  v56 = *(&STACK[0xBAF8] + v21);
  *(&STACK[0xBAF8] + v21) = STACK[0xBAFD];
  LOBYTE(STACK[0xBAFD]) = v56;
  v57 = STACK[0xBAF8];
  LOBYTE(STACK[0xBAF8]) = STACK[0xBAFC];
  LOBYTE(STACK[0xBAFC]) = v57;
  v58 = *(&STACK[0xBAF8] + v26);
  *(&STACK[0xBAF8] + v26) = STACK[0xBAFB];
  LOBYTE(STACK[0xBAFB]) = v58;
  v59 = STACK[0xBAF9];
  LOBYTE(STACK[0xBAFA]) = STACK[0xBAF8];
  LOWORD(STACK[0xBAF8]) = v59;
  STACK[0xBAF8] = vmla_s32(v28, STACK[0xBAF8], vdup_n_s32(0x1000193u));
  *a7 = STACK[0xBAF8] ^ STACK[0xBAF0];
  return (*(STACK[0xF18] + 8 * v8))();
}

uint64_t sub_1004DEC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>)
{
  v7 = STACK[0xAFF0] + 8;
  STACK[0x54F0] = v7;
  STACK[0x95F0] = v7 + 0x2206CC48EAC38120;
  return (*(STACK[0xF18] + 8 * (a7 ^ 0x6158 ^ (a7 - 3201))))(a1, a2, a3, a4, a5, a6, &STACK[0xA237]);
}

uint64_t sub_1004DECA8(uint64_t a1, char a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(v12 + (((v9 ^ -v9 ^ ((v9 ^ 0xC) + 4) ^ ((v15 ^ 0xFD) + 3)) ^ ((((v16 ^ 0xB8) - 114) ^ v15) + 2)) & 0xF)) & 7;
  v18 = (((*(v12 + a8) ^ 0x55) - 85) ^ ((*(v12 + a8) ^ 0xC9) + 55) ^ ((*(v12 + a8) ^ 0xC3) + 61)) + (((v17 ^ a2) + 44) ^ ((v17 ^ 0x4D) + 41) ^ ((v17 ^ 4) + 98));
  v19 = 9 * v18 - 21;
  v20 = (STACK[0xED0] + a8);
  v21 = v19 & 0xB7 ^ 0x14;
  v22 = (v19 ^ 0xE) & (2 * ((v19 ^ 0xE) & (2 * ((v19 ^ 0xE) & (2 * ((v19 ^ 0xE) & (2 * ((v19 ^ 0xE) & (2 * ((18 * v18 + 118) & (v19 ^ 0xE) & 0x1E ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21;
  v23 = 1864610357 * ((*(*STACK[0xE50] + (*STACK[0xE58] & 0x72D7ACF8)) ^ v20) & 0x7FFFFFFF);
  v24 = 1864610357 * (v23 ^ HIWORD(v23));
  *v20 = *(STACK[0x8A0] + (v24 >> 24)) ^ *((v24 >> 24) + STACK[0x898] + 3) ^ *((v24 >> 24) + STACK[0x8A8] + 2) ^ v19 ^ v24 ^ (27 * BYTE3(v24)) ^ (2 * v22) ^ 0xB7;
  v25 = *(v10 + (v11 + 1169890910) % (*v10 ^ v8) + 4);
  v26 = ((v25 - ((2 * v25) & 0xA)) << 16) - 1559953408;
  LODWORD(v20) = *(v12 + (((4 * ((2 * (v14 ^ 0x3F)) ^ v14 ^ 0x3F ^ ((2 * (v14 ^ 0x3F)) ^ 2) & (v13 ^ 2))) ^ (2 * v13)) & 0xE ^ 6)) << 8;
  v27 = (v9 + 111) * (v9 + 125) - 14 * v9;
  v28 = *(v12 + ((((v27 - 9) ^ (97 - v27) ^ (17 - v27)) ^ ((((v27 - 9) ^ 0xFD) + 11) ^ (((v27 - 9) ^ 0x55) + 3))) & 0xF ^ 8));
  v29 = 15536650 * (v28 & 0x84 ^ 0x431357F ^ ((v20 & 0x8600 | (v26 & 0x6180000 ^ 0x26DCFBDF ^ (v26 ^ 0x5CE2822B) & ((*(v12 + a8) << 24) ^ 0x66E7822B)) & (v20 ^ 0x7FFFA4FF)) ^ 0x190A4A8F) & (v28 ^ 0x7FFFFFA0)) + 148441066;
  v30 = a3[v29 % ((*a3 ^ 0x77FFB7FD) - 2013247485 + ((2 * *a3) & 0xFFFBu))];
  v31 = (v30 ^ 0x76FFEDBB) + v29 + ((2 * v30) & 0x77777777) - 1996484027;
  v32 = v31 * v31;
  v33 = (v31 * v31) >> 1;
  v34 = v33 + v31;
  if ((v31 * v31))
  {
    v35 = v31;
  }

  else
  {
    v35 = 0;
  }

  v36 = v31 >> 8;
  v37 = HIWORD(v31);
  v38 = v35 + v37 + v34 * v34 + v36 * v36 * v36 * v36 * v36;
  v39 = v37 & 0xFE;
  if (v37)
  {
    v40 = v37;
  }

  else
  {
    v40 = 0;
  }

  v41 = v40 + v39 * v39;
  if ((v37 & 1) == 0)
  {
    v39 = 0;
  }

  *(v12 + a8) = (v38 - v33 * v33 - v32 + (v41 + v39) * v37 * v37 * (v41 + v39) * v37 - ((2 * (v38 - v33 * v33 - v32 + (v41 + v39) * v37 * v37 * (v41 + v39) * v37)) & 0x16) + 11) ^ 0x54;
  return (*(STACK[0xF18] + 8 * v16))();
}

uint64_t sub_1004DF110()
{
  v2 = v0[1];
  v3 = (((*v0 ^ 0x9B19F46D) + 1692797843) ^ ((*v0 ^ 0x6FF1DFB7) - 1878122423) ^ ((((v1 + 2311) | 0x2B05) ^ *v0 ^ 0x1D3D538C) - 490597579)) - 14111641;
  v4 = v3 < 0x1552E556;
  v5 = v3 > v2 + 357754198;
  if (v2 > 0xEAAD1AA9 != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((57 * !v5) ^ (v1 - 29688))))();
}

uint64_t sub_1004DF48C()
{
  v1 = STACK[0xF18];
  STACK[0x9958] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 23306 + v0 + 29246)))();
}

uint64_t sub_1004DF520@<X0>(unint64_t a1@<X8>)
{
  STACK[0x10ED8] = a1;
  LODWORD(STACK[0x10EE4]) = (v1 - 7624) ^ (1012831759 * ((((&STACK[0x10000] + 3800) | 0xB0E306BA) - ((&STACK[0x10000] + 3800) & 0xB0E306B8)) ^ 0xA0701030));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 24833)))(&STACK[0x10ED8]);
  *(STACK[0x78B0] + 128) = v2;
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_1004DF648@<X0>(uint64_t a1@<X8>)
{
  v4 = a1 + 16 * v3;
  v5 = 0x981390C2FED9246;
  if (*(STACK[0x6258] + 221) != (v2 ^ 0x3B))
  {
    v5 = 0x981390C2FED9247;
  }

  *(v4 + 8) = v5;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1004DF718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  STACK[0x7548] = STACK[0x7BB0];
  STACK[0x77B0] = &STACK[0x4A50];
  LODWORD(STACK[0x648C]) = -1875854779;
  return (*(STACK[0xF18] + 8 * (a8 ^ 0x10FB0)))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_1004DF898@<X0>(unint64_t *a1@<X8>)
{
  v2 = *a1;
  STACK[0x57E8] = *a1;
  return (*(STACK[0xF18] + 8 * (((v2 == 0) * (((v1 - 2080357288) ^ 0x8400CF8A) + v1 - 35643)) ^ (v1 - 6682))))();
}

uint64_t sub_1004DF8F8@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W8>)
{
  v20 = (((v19 ^ 0xBE197B0A) + 1105626358) ^ ((v19 ^ 0x250C0B2) - 38846642) ^ ((v19 ^ 0x559C7CA9) - 1436318889)) + 1264226275;
  v21 = ((v20 ^ 0x4A282266) - 732752565) ^ v20 ^ ((v20 ^ a2) + a3) ^ ((v20 ^ a4) + a5) ^ ((v20 ^ a6) + a7);
  v22 = (*v13 + (v21 ^ v14));
  v23 = (*v13 + (v21 ^ v14) + a1);
  v24 = *(*v11 + (*v10 & v15));
  v25 = ((((v22 ^ v24) & 0x7FFFFFFF) * v16) ^ ((((v22 ^ v24) & 0x7FFFFFFF) * v16) >> 16)) * v16;
  v26 = ((((v23 ^ v24) & 0x7FFFFFFF) * v16) ^ ((((v23 ^ v24) & 0x7FFFFFFF) * v16) >> 16)) * v16;
  *v23 = *(v12 + (v25 >> 24)) ^ *v22 ^ *((v25 >> 24) + v8 + 6) ^ *((v25 >> 24) + v9 + 5) ^ *(v12 + (v26 >> 24)) ^ *((v26 >> 24) + v8 + 6) ^ *((v26 >> 24) + v9 + 5) ^ v25 ^ v26 ^ (BYTE3(v25) * v17) ^ (BYTE3(v26) * v17);
  return (*(STACK[0xF18] + 8 * (((v21 == v14) * v18) ^ a8)))();
}

uint64_t sub_1004DFAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x7C20];
  v10 = *(a8 + 25);
  *(v10 + 16) = STACK[0x7C20];
  *(v10 + 24) = STACK[0x65D8];
  *(v10 + 64) += v9 ^ 0xE9D54C2A ^ (109 * (v8 ^ 0x3243));
  return (*(STACK[0xF18] + 8 * v8))();
}

uint64_t sub_1004DFBF4()
{
  v1 = STACK[0xF10] - 6218;
  v2 = LODWORD(STACK[0xB31C]) + ((STACK[0xF10] - 33463) | 0x7112) + (((v0 ^ 0x44A97BC2) + 1780968974) ^ ((v0 ^ 0x1D514B2C) + 870276836) ^ ((((STACK[0xF10] - 33362) | 0xA000) ^ 0x4FD2A0E8) + (v0 ^ 0x615C1DCF)));
  LODWORD(STACK[0xA4C4]) = v2 - 371896945;
  v2 += 866755208;
  v3 = LODWORD(STACK[0xB318]) + 1622286686;
  v4 = v2 < 0x4DC17D68;
  v5 = v2 > v3;
  if (v3 < 0x4DC17D68 != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((476 * v5) ^ v1)))();
}

uint64_t sub_1004DFD00()
{
  v0 = STACK[0xF10] ^ 0xE8E2;
  v1 = STACK[0xF10] - 31701;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 ^ v1 ^ 0x7ABB)))();
}

uint64_t sub_1004DFDE4()
{
  STACK[0x5658] = v0;
  LODWORD(STACK[0x2564]) = -310260315;
  return (*(STACK[0xF18] + 8 * (v1 - 30507)))();
}

uint64_t sub_1004DFEFC()
{
  v1 = STACK[0x40E8];
  STACK[0x10EE8] = STACK[0x40E8];
  STACK[0x10EE0] = v1;
  LODWORD(STACK[0x10EF0]) = v0 + 1112314453 * ((&STACK[0x10000] + 3800) ^ 0xEF562AD9) - 7586;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 29377)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1004DFFF8()
{
  v0 = (STACK[0xF10] + 1833758916) & 0x92B2BC15;
  v1 = STACK[0xF10] - 34027;
  v2 = STACK[0xF18];
  STACK[0x16D8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 - 8915 + v0)))();
}

uint64_t sub_1004E00F8()
{
  v2 = v0 - 18996;
  v3 = v0 - 5988;
  STACK[0x10ED8] = *(STACK[0x4438] + 8);
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x53893080) - 745983869) ^ 0x35AF2B4C) + 296753103;
  v4 = v0 + 16271;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * v4))(&STACK[0x10ED8]);
  return (*(v5 + 8 * (((v2 ^ v3 ^ 0x32EE) * v1) ^ v3)))(v6);
}

uint64_t sub_1004E01AC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 12);
  v3 = (((*(a1 + 16) ^ 0x20C2A1F2) - 549626354) ^ ((*(a1 + 16) ^ 0xC3B8AB10) + 1011307760) ^ (((26 * ((((v1 ^ 0x6A55CFB2) + 15457) | 0xA11) ^ 0x8B02) + 179292201) ^ *(a1 + 16)) - 179293683)) + 746894268;
  v4 = ((2 * (v3 & 0xBD51135D)) & 0x22024A0 | v3 & 0xBD51135D) ^ (2 * (v3 & 0xBD51135D)) & (v3 ^ 0x3A7526BD);
  v5 = ((2 * (v3 ^ 0x3A7526BD)) ^ 0xE486BC0) & (v3 ^ 0x3A7526BD) ^ (2 * (v3 ^ 0x3A7526BD)) & 0x872435E0;
  v6 = v5 ^ 0x81241420;
  v7 = (v5 ^ 0x62001C0) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0x1C90D780) & v6 ^ (4 * v6) & 0x872435E0;
  v9 = (v8 ^ 0x4001580) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x83242060)) ^ 0x72435E00) & (v8 ^ 0x83242060) ^ (16 * (v8 ^ 0x83242060)) & 0x872435C0;
  v11 = v9 ^ 0x872435E0 ^ (v10 ^ 0x2001400) & (v9 << 8);
  v12 = v3 ^ (2 * ((v11 << 16) & 0x7240000 ^ v11 ^ ((v11 << 16) ^ 0x35E00000) & (((v10 ^ 0x852421E0) << 8) & 0x7240000 ^ (((v10 ^ 0x852421E0) << 8) ^ 0x24350000) & (v10 ^ 0x852421E0) ^ 0x3000000)));
  LODWORD(STACK[0xAEF4]) = v12 ^ 0x508CBF8C;
  v13 = (((v12 ^ 0x8894CFB1) + 669487043) ^ ((v12 ^ 0x1219395C) - 1117095632) ^ ((v12 ^ 0x23D48E70) - 1935159804)) - 1638609453;
  v14 = (((v2 ^ 0x3A057FA4) - 973438884) ^ ((v2 ^ 0xEA9E4D2C) + 358724308) ^ ((v2 ^ 0x394EF599) - 961475993)) - 1638609453;
  v15 = (v14 < 0xB47F06C2) ^ (v13 < 0xB47F06C2);
  v16 = v13 > v14;
  if (v15)
  {
    v16 = v13 < 0xB47F06C2;
  }

  return (*(STACK[0xF18] + 8 * ((38 * v16) ^ v1 ^ 0x6A55CFB2)))();
}

uint64_t sub_1004E0484(uint64_t a1)
{
  STACK[0x45D8] = a1 + 24;
  STACK[0x1D78] = a1 + 40;
  STACK[0x7360] = STACK[0x4EE0];
  v2 = STACK[0x8A18];
  v3 = STACK[0x7690];
  v4 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x4448] = v4;
  STACK[0x8BE8] = (v4 + 16);
  STACK[0x56D8] = (v4 + 32);
  STACK[0x8BF8] = (v4 + 64);
  STACK[0x4618] = (v4 + 80);
  STACK[0x1348] = (v4 + 96);
  STACK[0x7690] = v3 + 224;
  if (*v2 == -371865851)
  {
    v5 = -371865831;
  }

  else
  {
    v5 = *v2;
  }

  return (*(STACK[0xF18] + 8 * ((37 * (v5 != -371865853)) | v1)))();
}

uint64_t sub_1004E05C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0xF10];
  LODWORD(STACK[0xA4D8]) = v4 ^ 0xD40A2994;
  LODWORD(STACK[0x6334]) = HIDWORD(v4) ^ 0x6404C0B9;
  v6 = 0x11E3 % (LODWORD(STACK[0xB340]) ^ 0xE20778B1) - ((2 * (0x11E3 % (LODWORD(STACK[0xB340]) ^ 0xE20778B1))) & 0x2FB2) - 1129728039;
  return (*(STACK[0xF18] + 8 * (v5 - 28300)))(a1, a2, a3, a4, (((v6 ^ 0xBF178FDF) + 1088974881) ^ ((v6 ^ 0x26BCAC3B) - 649899067) ^ ((v6 ^ 0x2502943D) - 620926013)) - 51885532);
}

uint64_t sub_1004E0864()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xE2A2)))(STACK[0x6AC8]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1004E0908()
{
  v0 = STACK[0xF10] - 23831;
  v1 = STACK[0x5F70];
  v2 = STACK[0xF10] + 11093;
  v3 = 1022166737 * ((((&STACK[0x10000] + 3800) | 0x535A71BD) + (~(&STACK[0x10000] + 3800) | 0xACA58E42)) ^ 0xE94A902E);
  STACK[0x10EE0] = *(STACK[0x6140] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x10EDC]) = v1 * ((11881 * (v0 ^ 0x2E27)) ^ 0x5632CCDA) - v3 + 2011904846;
  LODWORD(STACK[0x10ED8]) = v2 ^ v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 40297)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v0))(v5);
}

uint64_t sub_1004E09F4(uint64_t a1)
{
  *a1 = v1 + 5000;
  *(a1 + 16) = 0;
  *(a1 + 4) = 0;
  v5 = ((v1 + 5000) ^ 0xCC991451) & (2 * ((v1 + 5000) & 0x5D9511)) ^ (v1 + 5000) & 0x5D9511;
  v6 = ((2 * ((11881 * (v2 ^ 0x94F2) - 871190248) ^ (v1 + 5000))) ^ ((v2 ^ 0x95B6) * v3 + 68994889)) & ((11881 * (v2 ^ 0x94F2) - 871190248) ^ (v1 + 5000)) ^ (2 * ((11881 * (v2 ^ 0x94F2) - 871190248) ^ (v1 + 5000))) & 0xCEA942;
  v7 = v6 ^ 0x42A942;
  v8 = (v6 ^ 0x38C0000) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0xF3AA508) & v7 ^ (4 * v7) & 0x3CEA940;
  v10 = v8 ^ 0x3CEA942 ^ (v9 ^ 0x30AA100) & (16 * v8);
  v11 = (16 * (v9 ^ 0xC40842)) & 0x3CEA940 ^ 0x3042942 ^ ((16 * (v9 ^ 0xC40842)) ^ 0x3CEA9420) & (v9 ^ 0xC40842);
  v12 = (v10 << 8) & 0x3CEA900 ^ v10 ^ ((v10 << 8) ^ 0xCEA94200) & v11;
  v13 = STACK[0xF18];
  v14 = (*(STACK[0xF18] + 8 * (v2 + 13735)))((8 * (v1 + 5000)) ^ (16 * ((v12 << 16) & 0x3CE0000 ^ v12 ^ ((v12 << 16) ^ 0x9420000) & ((v11 << 8) & 0x3CE0000 ^ 0x1460000 ^ ((v11 << 8) ^ 0xEA90000) & v11))) ^ 0x7EA63CA8);
  *(a1 + 16) = v14;
  return (*(v13 + 8 * ((467 * (v14 == 0)) ^ v2)))();
}

uint64_t sub_1004E0C68@<X0>(int a1@<W8>)
{
  v2 = a1 - 17722;
  STACK[0x10EE0] = v1;
  LODWORD(STACK[0x10EDC]) = (a1 - 14729) ^ (1012831759 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x61DEA788) - 505501815) ^ 0xF14DB103));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (a1 + 9570)))(&STACK[0x10ED8]);
  *(STACK[0x78B0] + 96) = 0;
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_1004E0D70@<X0>(uint64_t a1@<X8>)
{
  STACK[0x4838] = 0;
  STACK[0x4C10] = a1 + 0x2B19D6594B294812;
  STACK[0x9250] = a1 + 0x14F785CAD9BA14FDLL;
  return (*(STACK[0xF18] + 8 * ((((v1 - 22467) ^ 0x83F9) - 27427) ^ (v1 - 22467))))();
}

uint64_t sub_1004E0DE4()
{
  v2 = v1 ^ 0x35D3;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 + 14781)))();
  *(v0 + 672) = 0;
  *(v0 + 680) = -371865839;
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_1004E0E78@<X0>(uint64_t a1@<X2>, char a2@<W5>, int a3@<W7>, int a4@<W8>)
{
  v14 = (v8 + a4 + 121) % v11;
  v15 = *(a1 + v14);
  v16 = (a3 + v15 - 121) & 0x1F;
  v17 = ((a3 + v5) ^ (2 * ((((2 * ((a3 + v5 - 32) ^ 0xA7)) ^ 0x80) & ((a3 + v5 - 32) ^ 0xA7) & ((4 * ((a3 + v5 - 32) & 0xE8 ^ 0x4F)) ^ 0x30) | 0xC) ^ (a3 + v5 - 32) & 0xE8 ^ 0x4F))) & 0x1F ^ 0xE;
  v18 = *(STACK[0xE70] + (v16 << 7) + 4 * v17);
  v19 = ((2 * ((v8 - 77) & 0x4D)) & 0xF7 | (v8 - 77) & 0x4D) ^ (2 * ((v8 - 77) & 0x4D)) & ((v8 - 77) ^ 0xDA);
  v20 = *(STACK[0xE70] + ((((v8 - 77) ^ (2 * ((4 * v19) & 4 ^ v19 ^ (4 * v19) & (((2 * ((v8 - 77) ^ 0xDA)) ^ 0x2E) & ((v8 - 77) ^ 0xDA) ^ (2 * ((v8 - 77) ^ 0xDA)) & 0x96)))) & 0x1F ^ 0xDu) << 7) + 4 * v16);
  LOBYTE(v16) = (v8 + 121) ^ 0x5C;
  v21 = ((2 * ((v8 + 121) & 0x9A ^ 0xC6)) ^ a2) & v16 ^ (v8 + 121) & 0x9A ^ 0xC6 ^ (2 * ((v8 + 121) & 0x9A ^ 0xC6)) & 4;
  v22 = ((2 * v16) ^ a2) & v16 ^ (2 * v16) & 0xC6;
  v23 = *(STACK[0xE70] + ((((v8 + 121) ^ (2 * (v21 ^ v22 & 4 ^ ((4 * v21) ^ 0xC) & (v22 ^ 6)))) & 0x1F ^ 0x16u) << 7) + 4 * v17);
  LODWORD(v16) = (v23 ^ 0x86034625) & (2 * (v23 & v12)) ^ v23 & v12;
  v24 = ((2 * (v23 ^ 0x207626F)) ^ 0x884AE8B4) & (v23 ^ 0x207626F) ^ (2 * (v23 ^ 0x207626F)) & 0xC425745A;
  v25 = v24 ^ 0x4425144A;
  v26 = (v24 ^ 0x6010) & (4 * v16) ^ v16;
  v27 = 4 * (v24 ^ 0x4425144A);
  LODWORD(v16) = (v27 ^ 0x1095D168) & v25;
  v28 = v27 & 0xC4257458;
  LODWORD(v16) = (v23 ^ (2 * (((16 * (v16 ^ v28 ^ 0xC4202412)) & 0x44257400 ^ 0x40054400 ^ ((16 * (v16 ^ v28 ^ 0xC4202412)) ^ 0x42574500) & (v16 ^ v28 ^ 0xC4202412)) & (((v16 ^ v28 ^ 0x55040) & (16 * v26) ^ v26) << 8) ^ (v16 ^ v28 ^ 0x55040) & (16 * v26) ^ v26))) >> 8;
  v29 = *(STACK[0xE70] + ((v7 & 0x1F ^ v9 & 0x10 ^ 8u) << 7) + 4 * (((v18 ^ v10 ^ ((v18 ^ 0x5F) + 108) ^ ((v18 ^ 0xA7) - 108) ^ ((v18 ^ 0xCC) - 7)) ^ (-v18 - 53)) & 0x1F ^ 9u));
  LOBYTE(v18) = (v6 ^ 0xE) & (2 * (v6 & 0xAE)) ^ v6 & 0xAE;
  v30 = *(STACK[0xE70] + (((v6 ^ (2 * (((2 * (v6 ^ 0x5A)) ^ 0xE8) & (v6 ^ 0x5A) & (4 * v18) ^ v18))) & 0x1F ^ 0xEu) << 7) + 4 * ((v8 + 1) & 0x1F));
  v31 = (v30 ^ 0xC702C6B1) & (2 * (v30 & v12)) ^ v30 & v12;
  v32 = ((2 * (v30 ^ 0x4746EE91)) ^ 0x2C9F148) & (v30 ^ 0x4746EE91) ^ (2 * (v30 ^ 0x4746EE91)) & v13;
  v33 = v32 ^ 0x812408A4;
  v34 = (v32 ^ 0xF000) & (4 * v31) ^ v31;
  v35 = ((4 * v33) ^ 0x593E290) & v33 ^ (4 * v33) & 0x8164F8A0;
  v36 = v34 ^ v13 ^ (v35 ^ 0x100E080) & (16 * v34);
  v37 = (((v29 ^ 0x2B04A290) - 316230491) ^ v29 ^ ((v29 ^ 0x4FC148CC) - 1981587719) ^ ((v29 ^ 0x22E7D978) - 456798387) ^ ((v29 ^ 0x7FFFDAECu) - 1176646436)) >> 16;
  v38 = (16 * (v35 ^ 0x80641824)) & 0x8164F880 ^ 0x812070A4 ^ ((16 * (v35 ^ 0x80641824)) ^ 0x164F8A40) & (v35 ^ 0x80641824);
  v39 = (v36 << 8) & 0x8164F800 ^ v36 ^ ((v36 << 8) ^ 0x64F8A400) & v38;
  v40 = (v30 ^ (2 * ((v39 << 16) & 0x1000000 ^ v39 ^ ((v39 << 16) ^ 0x58800000) & ((v38 << 8) & 0x1640000 ^ ((v38 << 8) ^ 0x64F80000) & v38 ^ 0x1000000)))) >> 24;
  LOBYTE(v37) = v20 + (((v16 ^ 0x6B) - 111) ^ ((v16 ^ 0x19) - 29) ^ ((v16 ^ 0x64) - 96)) + (((v40 ^ 0x70) + 122) ^ ((v40 ^ 0x59) + 81) ^ ((v40 ^ 0xED) - 27)) + 41 + (((v37 ^ 6) + 79) ^ ((v37 ^ 0x74) + 61) ^ ((v37 ^ 0xAF) - 24));
  LOBYTE(v37) = ((v37 ^ 0x7C) - 58) ^ v37 ^ ((v37 ^ 0xCB) + 115) ^ ((v37 ^ 0xC) - 74) ^ ((v37 ^ 0xFD) + 69);
  *(a1 + v14) = v15 + (v37 ^ ((v37 ^ 0xC) + 12) ^ ((v37 ^ 0xB2) - 74) ^ 0xF8) - 66;
  return (*(STACK[0xF18] + 8 * ((28615 * (v8 == 511)) ^ v4)))();
}

uint64_t sub_1004E159C()
{
  v0 = STACK[0xF10] + 1715764752;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))(STACK[0x9620]);
  return (*(v1 + 8 * (v0 ^ 0x6645083A ^ (15309 * (v0 != -171118455)))))(v2);
}

uint64_t sub_1004E17A0()
{
  v2 = *(STACK[0x650] + v1);
  v3 = SLODWORD(STACK[0x7B00]) ^ 0x4DC1E900;
  v4 = *(v2 + 8 * v3);
  STACK[0x4240] = v4;
  *(v2 + 8 * v3) = 0;
  return (*(STACK[0xF18] + 8 * (((*v4 & 1) * ((v0 - 18068) ^ 0x58)) ^ v0)))();
}

uint64_t sub_1004E1974()
{
  v0 = 5 * (STACK[0xF10] ^ 0x913D);
  v1 = STACK[0xF10] - 32613;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x8983) + v1)))();
}

uint64_t sub_1004E19C4()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + v0 + 4013 - 1862)))();
}

uint64_t sub_1004E1AB0()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 31735;
  v2 = STACK[0xF18];
  STACK[0x4CD0] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 29966) ^ v1)))();
}

uint64_t sub_1004E1B60()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x622F)))(((v1 ^ 0x238C) - 371901482) ^ v0);
  STACK[0x5C80] = v3;
  return (*(v2 + 8 * ((14 * (((v1 + 90) ^ (v3 == 0)) & 1)) ^ v1)))();
}

uint64_t sub_1004E1D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W8>)
{
  if (*(v4 + 97) == (v3 + 107))
  {
    v5 = 371891255;
  }

  else
  {
    v5 = a3;
  }

  return (*(STACK[0xF18] + 8 * v3))(a1, a2, v5);
}

uint64_t sub_1004E1D84()
{
  v3 = STACK[0x42B8];
  STACK[0xED0] = STACK[0x42B8];
  v4 = STACK[0x9420];
  v5 = STACK[0x9A98];
  v6 = 1012831759 * ((((&STACK[0x10000] + 3800) | 0x2A8DA00B) + (~(&STACK[0x10000] + 3800) | 0xD5725FF4)) ^ 0x3A1EB680);
  STACK[0x10EF8] = STACK[0x1588];
  STACK[0x10EF0] = v4 + 37;
  LODWORD(STACK[0x10F08]) = v2 + (((v1 + 16713) | 0xB3B) ^ 0x3963F2BD) + v6;
  LODWORD(STACK[0x10ED8]) = v1 - v6 - 1773;
  STACK[0x10F00] = v5;
  STACK[0xEC0] = v3 + v0;
  STACK[0x10EE0] = v3 + v0;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v1 ^ 0xF3D2u)))(&STACK[0x10ED8]);
  v9 = STACK[0x10EE8];
  LODWORD(STACK[0xA8FC]) = STACK[0x10EE8];
  return (*(v7 + 8 * (((v9 == -371865839) * ((v1 + 2140958272) & 0x8063F7AF ^ 0xE0B0)) ^ v1)))(v8);
}

uint64_t sub_1004E1F98@<X0>(int a1@<W8>)
{
  *(v3 + 2776) = a1 + 8;
  v5 = (((v4 ^ 0xEE66B809) + ((v1 + 1628609498) & 0x9EEDABBF ^ 0x1199CDCA)) ^ ((v4 ^ 0x80356383) + 2143984765) ^ ((v4 ^ 0x87861C9B) + 2021253989)) + 1013591705;
  v6 = (a1 + 8) > 0xAD6B9877;
  v7 = v6 ^ (v5 < 0x52946788);
  v8 = a1 + (((v1 - 15907) | 0x364) ^ 0x52946074u) > v5;
  if (!v7)
  {
    v6 = v8;
  }

  if (v6)
  {
    v2 = 371891407;
  }

  *(v3 + 2780) = v2;
  return (*(STACK[0xF18] + 8 * ((118 * (v2 != -371865839)) ^ v1)))();
}

uint64_t sub_1004E2180()
{
  v1 = STACK[0xF10] + 2651;
  v2 = STACK[0xF10] - 25862;
  LODWORD(STACK[0x499C]) = v0;
  STACK[0x7690] -= 1248;
  return (*(STACK[0xF18] + 8 * (((v1 ^ 0xF7DE) * (v0 == -371865839)) ^ v2)))();
}

uint64_t sub_1004E225C()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 3886)))();
}

uint64_t sub_1004E249C()
{
  STACK[0x5C50] = ((((16 * v1) ^ 0x989900B46231C2A6) + 0x5274BF97A36A2AA7) ^ (((16 * v1) ^ 0x954323CE626815C5) + 0x5FAE9CEDA333FDC6) ^ (((16 * v1) ^ (v0 + 29678) ^ 0xDDA23749D052D48) - 0x38C863A8A3A1B18CLL)) + 0x6FF3820CB154FDB1;
  LODWORD(STACK[0x1374]) = -1021827051;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004E26B8@<X0>(unsigned int a1@<W8>)
{
  v2 = ((LOWORD(STACK[0x2C2E]) ^ 0x9FD3B378) + 1613515912) ^ (v1 + 1683552528 + (LOWORD(STACK[0x2C2E]) ^ 0x9BA6C87E)) ^ ((LOWORD(STACK[0x2C2E]) ^ 0x4750146) - 74776902);
  v3 = STACK[0x5900];
  v4 = STACK[0x1FE0];
  v5 = STACK[0x1170] + 20;
  v6 = 139493411 * ((2 * ((&STACK[0x10000] + 3800) & 0x138EC8F8) - (&STACK[0x10000] + 3800) + 1819358980) ^ 0x605CD641);
  LODWORD(STACK[0x10EF4]) = v1 - v6 - 1904527254;
  LODWORD(STACK[0x10EF8]) = v6 + 1842270117 * v2 + 176943761;
  STACK[0x10ED8] = v5;
  STACK[0x10EE0] = v4;
  LODWORD(STACK[0x10EF0]) = v6 + a1 + ((a1 < (v1 + 13)) << 8) + 1535041083;
  STACK[0x10EE8] = v3;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v1 + 36278)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * ((28670 * (LODWORD(STACK[0x10EFC]) == 151061646)) ^ v1)))(v8);
}

uint64_t sub_1004E282C()
{
  v1 = STACK[0xF18];
  STACK[0x6820] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 12593) ^ v0)))();
}

uint64_t sub_1004E2998()
{
  v0 = STACK[0xF10];
  v1 = (STACK[0xF10] - 1037868946) & 0x3DDCB6DF;
  v2 = STACK[0xF10] - 31545;
  v3 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * (((v2 == -398581919) * (v1 - 28089)) ^ (v0 - 30626))))();
}

uint64_t sub_1004E2A60()
{
  v1 = (STACK[0x79E8] + 48 * LODWORD(STACK[0x4630]));
  v1[2] = 4023011430;
  v1[3] = 0x4E7E94170BE2B4ELL;
  *v1 = 0x981390C2FED9246;
  v1[1] = 0xE5388D025C247CBLL;
  return (*(STACK[0xF18] + 8 * (v0 - 126)))();
}

uint64_t sub_1004E2BB8@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v4 = *(STACK[0x3350] + a2 + (v2 ^ 0xE9D5F637) - 32623592);
  v5 = (((v2 - 11892) | 0x49) ^ 0xE218C6DE) + a2 + (v4 ^ 0x1DE73BDD) + ((2 * v4) & 0xBBBBBBBB);
  *(a1 + 2468) = v5;
  v6 = v5 - 907494688;
  v7 = (((v3 ^ 0xEEC2937C) + 289238148) ^ ((v3 ^ 0xA5EB3CB5) + 1511310155) ^ ((v3 ^ 0xA2FC68D8) + 1560516392)) - 874871095;
  v8 = (v7 < 0xE204BFB8) ^ (v6 < 0xE204BFB8);
  v9 = v6 > v7;
  if (v8)
  {
    v9 = v6 < 0xE204BFB8;
  }

  return (*(STACK[0xF18] + 8 * ((121 * v9) ^ v2)))();
}

uint64_t sub_1004E2CCC()
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393337;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x754)))();
}

uint64_t sub_1004E2D08()
{
  v1 = v0 - 5217;
  v2 = STACK[0x8F18];
  v3 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v1);
  return (*(v3 + 8 * (v1 - 45681 + v1 + 49447)))(v2);
}

uint64_t sub_1004E2D90@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x3D84]) = a1;
  v2 = STACK[0x7D40];
  STACK[0x45B8] = STACK[0x7D40] + 168;
  return (*(STACK[0xF18] + 8 * (((*(v2 + 184) == 0) * ((v1 - 17740) ^ 0x4403)) ^ (v1 + 1470))))();
}

uint64_t sub_1004E2DE0()
{
  v1 = v0 ^ 0x751DLL;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v1 + 3258) ^ v1)))(3204694014, 1090286692, 4294923066, 35593, 4294941560, 1194047912, 35641, 1090303727);
}

uint64_t sub_1004E2E7C()
{
  v1 = STACK[0x2C78] + (LODWORD(STACK[0x34B8]) - 64354046);
  v2 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 + 5189)))(v1);
}

uint64_t sub_1004E31C8()
{
  v0 = STACK[0xF10] + 5785;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(STACK[0x6618]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1004E3204()
{
  v2 = (v0 | ((v0 < ((v1 + 2077086702) & 0x84329FFF) - 1607028173) << 32)) + 0x3AE141396D255954;
  STACK[0x8770] = v2;
  STACK[0x5C50] = v2;
  LODWORD(STACK[0x1374]) = 1950262917;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1004E3378@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0x2738];
  LODWORD(STACK[0x83E8]) = *(STACK[0x2738] - 0x43D8CBFA0CEB42CCLL);
  LODWORD(STACK[0x83EC]) = *(v1 - 0x43D8CBFA0CEB42C4);
  v2 = STACK[0xF18];
  STACK[0x8A90] = *(STACK[0xF18] + 8 * a1);
  return (*(v2 + 8 * (a1 - 27817 + a1 + 49622)))();
}

uint64_t sub_1004E3498@<X0>(int a1@<W8>)
{
  LOWORD(STACK[0x1C32]) = 0;
  STACK[0x7AD0] = 0;
  return (*(STACK[0xF18] + 8 * (a1 ^ 0x79D8 ^ (a1 + 17807))))();
}

uint64_t sub_1004E34D8@<X0>(int a1@<W8>)
{
  v3 = *(v1 + 1);
  v4 = v3 != 2;
  v5 = a1 + 27052 + (v3 ^ 0xCFFFED7E) + ((2 * v3) & 0xFC) + 2008091845;
  if (v3 == 2)
  {
    v6 = -371865839;
  }

  else
  {
    v6 = v2;
  }

  LODWORD(STACK[0xA8E4]) = v6;
  LODWORD(STACK[0xA8E0]) = v5;
  return (*(STACK[0xF18] + 8 * ((v4 * ((a1 + 26805) ^ 0x8A62)) ^ a1)))();
}

uint64_t sub_1004E35F0@<X0>(__int16 a1@<W8>)
{
  v2 = *(STACK[0x4048] - 0x7E666516A39B34A6);
  v3 = STACK[0x4B3C];
  v4 = 139493411 * ((~(&STACK[0x10000] + 3800) & 0x14418547 | (&STACK[0x10000] + 3800) & 0xEBBE7AB8) ^ 0x186C6402);
  STACK[0x10EE0] = &STACK[0x8374];
  STACK[0x10EF0] = v2;
  LODWORD(STACK[0x10ED8]) = v1 - v4 + 5527;
  LODWORD(STACK[0x10EE8]) = v4 - 281522127;
  LOWORD(STACK[0x10EFC]) = -32733 * ((~(&STACK[0x10000] + 3800) & 0x8547 | (&STACK[0x10000] + 3800) & 0x7AB8) ^ 0x6402) + 10446 + a1;
  LODWORD(STACK[0x10EF8]) = v4 + v3 * ((v1 ^ 0x919F) + 1945535481) + 777074195;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 ^ 0x50B2)))(&STACK[0x10ED8]);
  v7 = STACK[0x10F00];
  LODWORD(STACK[0xA7FC]) = STACK[0x10F00];
  return (*(v5 + 8 * (((v7 == 1497668682) * (((v1 - 37023) | 0x8029) ^ 0x8B50)) ^ v1)))(v6);
}

uint64_t sub_1004E372C()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 7884) | 0x4450) - 21441) ^ v0)))();
}

uint64_t sub_1004E3A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  v7 = a5 - 34168;
  LODWORD(STACK[0x9B08]) = LODWORD(STACK[0x3AC4]) + v6 + ((a5 - 185253692) & 0xB0ABF3B ^ 0x5FC7AD11);
  v8 = *(v5 + 32) + 598593344;
  v9 = ((v8 ^ 0x40378E54) - 1671053585) ^ v8 ^ ((v8 ^ 0x803A5842) + 1550346489) ^ ((v8 ^ 0x9E5F62BC) + 1108169223) ^ ((v8 ^ 0x7DFF7BEF) - 1582478506);
  LODWORD(STACK[0x9B14]) = v9 ^ 0x713059C6;
  return (*(STACK[0xF18] + 8 * (v7 ^ 0x196C)))(a1, a2, a3, a4, 1077842531 - 0x18 / (v9 ^ 0x23ADCF45) * (v9 ^ 0x23ADCF45));
}

uint64_t sub_1004E3B6C()
{
  STACK[0x10ED8] = *STACK[0x34C0];
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((((2 * &STACK[0x10ED8]) | 0xAE0634EA) - &STACK[0x10ED8] - 1459821173) ^ 0xB12501BA) + 296778272;
  v1 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0xE220)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x10ED8]) = (v0 - 1762636123) ^ (906386353 * (((&STACK[0x10ED8] | 0x3D3E2B4D) + (~&STACK[0x10ED8] | 0xC2C1D4B2)) ^ 0xC3FE668));
  STACK[0x10EE0] = 0;
  v2 = (*(v1 + 8 * (v0 ^ 0xE253)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (((*STACK[0x970] > 0) * ((v0 - 1795088619) & 0x6AFEFF76 ^ 0x4771)) ^ v0)))(v2);
}

uint64_t sub_1004E3CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0xF10] - 34798;
  LODWORD(STACK[0x3AC4]) += 4;
  return (*(STACK[0xF18] + 8 * (v6 ^ 0x1536)))(a1, a2, a3, a4, a5, a6, &STACK[0xA237]);
}

uint64_t sub_1004E3D30()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x7497 ^ (8 * v0) ^ 0x4758)))();
}

uint64_t sub_1004E3D6C()
{
  v1 = STACK[0xF10] - 30235;
  *(STACK[0xB588] + 16) = v0 ^ 0xE773B63C2CB22AF9;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1004E3DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = v17 + *v10;
  v19 = __ROR8__((v18 - 0x77618121D9EA8995) & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = ((2 * v19 + 0x2D22D5F321CF2B02) & 0x3833AC852BF37AD8) - v19 + 0xD54BEC3D91EAD12;
  v21 = __ROR8__(v20 ^ 0xE4C4305E962176E1, 8);
  v20 ^= 0x504F6792111DDAEFuLL;
  v22 = __ROR8__((v21 + v20) ^ 0x14BA074A2F986FE5, 8);
  v23 = (v21 + v20) ^ 0x14BA074A2F986FE5 ^ __ROR8__(v20, 61);
  v24 = (v22 + v23) ^ v5;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((v26 + v25) | 0x9CA55D84F65A99B2) - ((v26 + v25) | v12) + v12) ^ 0x21D8706D375038D8;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x82B08017BF43C069;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = *(STACK[0xF18] + 8 * v15);
  v33 = __ROR8__((((v31 + v30) | 0x2DBC9B9342966C8DLL) - ((v31 + v30) | v16) + v16) ^ 0x87214129A072B8F1, 8);
  v34 = (((v31 + v30) | 0x2DBC9B9342966C8DLL) - ((v31 + v30) | v16) + v16) ^ 0x87214129A072B8F1 ^ __ROR8__(v30, 61);
  v35 = (((v33 + v34) | 0xABFB04E607E229F0) - ((v33 + v34) | v4) + v4) ^ 0x244925A5F9394543;
  *(v18 - 0x77618121D9EA8995) = (((__ROR8__(v35, 8) + (v35 ^ __ROR8__(v34, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v18 + 107) & 7))) ^ HIBYTE(v9) ^ 0x91;
  v36 = __ROR8__((v18 - 0x77618121D9EA8994) & 0xFFFFFFFFFFFFFFF8, 8);
  v37 = ((0x296E95066F186A7ELL - v36) & 0x51F1AF3817ABCAD4) + v36 - 0x296E95066F186A7FLL - ((v36 - 0x296E95066F186A7FLL) & 0x53F1AF3817ABCAD4);
  v38 = __ROR8__(v37 ^ 0x54D3B6DBEB8CFEA6, 8);
  v37 ^= 0xE058E1176CB052A8;
  v39 = (v38 + v37) ^ 0x14BA074A2F986FE5;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (v41 + v40 - ((2 * (v41 + v40)) & 0x75A6D19F0C6867C0) + 0x3AD368CF863433E0) ^ 0x16E4E08C7F905D78;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (((2 * (v44 + v43)) | 0xCC64C34E16E9732CLL) - (v44 + v43) + 0x19CD9E58F48B466ALL) ^ 0x5B4F4C4ECA7E18FCLL;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x82B08017BF43C069;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (((2 * (v49 + v48)) & 0x19C65FC09C0D4C32) - (v49 + v48) - 0xCE32FE04E06A61ALL) ^ 0x59810AA5531D8D9ALL;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = __ROR8__(v50, 8);
  v53 = (((v52 + v51) | 0x78989669C029B6EBLL) - ((v52 + v51) | v11) + v11) ^ 0xF72AB72A3EF2DA58;
  v54 = __ROR8__((v18 - 0x77618121D9EA8993) & 0xFFFFFFFFFFFFFFF8, 8);
  *(v18 - 0x77618121D9EA8994) = (((__ROR8__(v53, 8) + (v53 ^ __ROR8__(v51, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v18 + 108) & 7))) ^ BYTE2(v9) ^ 0xDE;
  v55 = ((0x296E95066F186A7ELL - v54) & 0x815F3681021F858BLL) + v54 - 0x296E95066F186A7FLL - ((v54 - 0x296E95066F186A7FLL) & 0x835F3681021F858BLL);
  v56 = v55 ^ 0x847D2F62FE38B1F9;
  v55 ^= 0x30F678AE79041DF7uLL;
  v57 = __ROR8__(v56, 8);
  v58 = (((v57 + v55) | 0x97B76A051CE23393) - ((v57 + v55) | a2) + a2) ^ 0x830D6D4F337A5C76;
  v59 = v58 ^ __ROR8__(v55, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ v5;
  v61 = __ROR8__(v60, 8);
  v62 = v60 ^ __ROR8__(v59, 61);
  v63 = (((2 * (v61 + v62)) & 0x4A116F4A475E6212) - (v61 + v62) - 0x2508B7A523AF310ALL) ^ 0x678A65B31D5A6F9CLL;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = __ROR8__(v63, 8);
  v66 = (((2 * (v65 + v64)) & 0x1C31660AE6BB1B66) - (v65 + v64) + 0x71E74CFA8CA2724CLL) ^ 0xF357CCED33E1B225;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (((v68 + v67) & 0xE46CE57B6C42BADDLL ^ 0xE444C40A4C42304CLL) + ((v68 + v67) & 0x1B931A8493BD4522 ^ 0x1101080400B80523) - 1) ^ 0x5FD816B4AE1EE112;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = __ROR8__(v69, 8);
  *(v18 - 0x77618121D9EA8993) = (((__ROR8__((((v71 + v70) | 0x66DE1BC79C4C0F5ELL) - ((v71 + v70) | v14) + v14) ^ 0xE96C3A84629763EDLL, 8) + ((((v71 + v70) | 0x66DE1BC79C4C0F5ELL) - ((v71 + v70) | v14) + v14) ^ 0xE96C3A84629763EDLL ^ __ROR8__(v70, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v18 + 109) & 7))) ^ BYTE1(v9) ^ 0xF4;
  v72 = (v18 - 0x77618121D9EA8992);
  v73 = __ROR8__((v18 - 0x77618121D9EA8992) & 0xFFFFFFFFFFFFFFF8, 8);
  v74 = ((2 * (v73 - 0x296E95066F186A7FLL)) | 0xC93FF201A6CF04B4) - (v73 - 0x296E95066F186A7FLL) + 0x1B6006FF2C987DA6;
  v75 = v74 ^ 0xE3BDE0E32F40B628;
  v74 ^= 0x5736B72FA87C1A26uLL;
  v76 = (__ROR8__(v75, 8) + v74) ^ 0x14BA074A2F986FE5;
  v77 = v76 ^ __ROR8__(v74, 61);
  v78 = (__ROR8__(v76, 8) + v77) ^ v5;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = __ROR8__(v78, 8);
  v81 = (((v80 + v79) | a3) - ((v80 + v79) | v13) + v13) ^ v6;
  v82 = v81 ^ __ROR8__(v79, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ 0x82B08017BF43C069;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = __ROR8__(v83, 8);
  v86 = ((v7 | (2 * (v85 + v84))) - (v85 + v84) + v8) ^ a4;
  v87 = v86 ^ __ROR8__(v84, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ 0x8FB22143FEDB6CB3;
  *v72 = v9 ^ (((__ROR8__(v88, 8) + (v88 ^ __ROR8__(v87, 61))) ^ 0x9B1C7427651E0F18) >> (8 * (v72 & 7u))) ^ 0x70;
  return v32();
}

uint64_t sub_1004E4508()
{
  LODWORD(STACK[0x489C]) = v1;
  v2 = STACK[0x6190];
  v3 = STACK[0x1C24];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v2;
  LODWORD(STACK[0x655C]) = v3;
  LODWORD(STACK[0x884C]) = 1073633645;
  return (*(STACK[0xF18] + 8 * ((v0 + 9843503) ^ 0x96BA75 ^ (4362 * (v0 + 9843503 < (v0 ^ 0x2760B05Au))))))();
}

uint64_t sub_1004E45B4()
{
  LODWORD(STACK[0x4728]) = v1;
  v2 = STACK[0x7ED8];
  v3 = STACK[0x8B7C];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v2;
  LODWORD(STACK[0x655C]) = v3;
  LODWORD(STACK[0x884C]) = -1479328727;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x85134ACB ^ ((((v0 + 2062337267) | 0xC004) ^ 0xD4D7) * (v0 > 0x53838178)))))();
}

uint64_t sub_1004E4638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0xF10];
  LODWORD(STACK[0xA5D0]) = STACK[0x9894];
  v5 = *(STACK[0x2C38] + 32) + 1197364468;
  v6 = (v5 ^ 0x308D8346) & (2 * (v5 & 0xB8A1AB07)) ^ v5 & 0xB8A1AB07;
  v7 = ((2 * (v5 ^ 0xCE974A)) ^ 0x70DE789A) & (v5 ^ 0xCE974A) ^ (2 * (v5 ^ 0xCE974A)) & 0xB86F3C4C;
  v8 = v7 ^ 0x88210445;
  v9 = (v7 ^ 0x200E3808) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0xE1BCF134) & v8 ^ (4 * v8) & 0xB86F3C4C;
  v11 = (v10 ^ 0xA02C3000) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x18430C49)) ^ 0x86F3C4D0) & (v10 ^ 0x18430C49) ^ (16 * (v10 ^ 0x18430C49)) & 0xB86F3C40;
  v13 = v11 ^ 0xB86F3C4D ^ (v12 ^ 0x80630400) & (v11 << 8);
  v14 = v5 ^ (2 * ((v13 << 16) & 0x386F0000 ^ v13 ^ ((v13 << 16) ^ 0x3C4D0000) & (((v12 ^ 0x380C380D) << 8) & 0x386F0000 ^ 0x10430000 ^ (((v12 ^ 0x380C380D) << 8) ^ 0x6F3C0000) & (v12 ^ 0x380C380D))));
  LODWORD(STACK[0xA5DC]) = v14 ^ 0x8F673C0A;
  return (*(STACK[0xF18] + 8 * (v4 - 28300)))(a1, a2, a3, a4, 1077842543 - 0x24 / (v14 ^ 0xB8E5D39D) * (v14 ^ 0xB8E5D39D));
}

uint64_t sub_1004E4844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xB4B4];
  v4 = *(STACK[0x2C38] + 32) - 5;
  v5 = STACK[0xF10] ^ 0xA5DA;
  v6 = STACK[0xF10] ^ 0xAF8D;
  STACK[0xED0] = 19 * LODWORD(STACK[0xB4B4]) % v4;
  STACK[0xEC0] = (9 * v3 + 89) % v4;
  v7 = *(STACK[0xF18] + 8 * v5);
  LODWORD(STACK[0xEB0]) = v6;
  v8 = 6599 * (v6 ^ 0x24B1);
  LODWORD(STACK[0xEA0]) = v8;
  return v7((v8 - 46177), 1864610357, a3, 61);
}

uint64_t sub_1004E4904()
{
  v2 = STACK[0xB660];
  v3 = STACK[0xB658];
  LODWORD(STACK[0x10ED8]) = 155453101 * ((~(&STACK[0x10000] + 3800) & 0xDC97317B | (&STACK[0x10000] + 3800) & 0x2368CE80) ^ 0x3AB12AB4) + v1 + 359650324;
  LOBYTE(STACK[0x10EFC]) = -46 - -83 * ((~(&STACK[0x10000] - 40) & 0x7B | (&STACK[0x10000] - 40) & 0x80) ^ 0xB4);
  STACK[0x10EE8] = v0;
  STACK[0x10EE0] = v2;
  STACK[0x10EF0] = v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 ^ 0xEA90B795)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (v1 ^ 0xEA9044B9 ^ (20433 * (v1 != 1118162401)))))(v5);
}

uint64_t sub_1004E4A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, atomic_uint *a5)
{
  v9 = 23958;
  atomic_compare_exchange_strong(a5, &v9, v7);
  return (*(STACK[0xF18] + 8 * (((v9 == v8) * v5) ^ v6)))();
}

uint64_t sub_1004E4C00@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 - 31016 + 5 * (a1 ^ 0x11DD))))();
}

uint64_t sub_1004E4C44()
{
  v1 = STACK[0xF10] ^ 0x4998;
  v2 = LODWORD(STACK[0x3908]) - 628958928;
  v3 = (((v0 ^ 0xB16A6C45) + 1318425531) ^ ((v0 ^ 0x8DA85898) + 1918347112) ^ ((v0 ^ 0xD517F3CC) + ((v1 - 19878) ^ 0x7B96) + 719846601)) - 1000824771;
  v4 = (v2 < 0xDA82D92C) ^ (v3 < 0xDA82D92C);
  v5 = v2 > v3;
  if (v4)
  {
    v5 = v2 < 0xDA82D92C;
  }

  return (*(STACK[0xF18] + 8 * (v1 ^ (4 * !v5))))();
}

uint64_t sub_1004E4D18()
{
  LODWORD(STACK[0x10ED8]) = (v0 - 1762632062) ^ (906386353 * ((~(&STACK[0x10000] + 3800) & 0x6F1738DF | (&STACK[0x10000] + 3800) & 0x90E8C720) ^ 0x5E16F5FB));
  STACK[0x10EE0] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 45484)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (((*STACK[0x970] > 0) * (((v0 + 690471602) & 0xD6D8AF7B) + 20469)) ^ v0)))(v2);
}

uint64_t sub_1004E4DD4(int8x16_t a1, int8x16_t a2)
{
  v10 = (v9 + (v3 + v2));
  v11 = *v10;
  v12 = v10[1];
  v13 = (v8 + v3);
  *v13 = vaddq_s8(vsubq_s8(v11, vandq_s8(vaddq_s8(v11, v11), a1)), a2);
  v13[1] = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a1)), a2);
  LODWORD(v13) = v3 + 32 != ((v4 + v5) ^ v7);
  return (*(STACK[0xF18] + 8 * (((2 * v13) | (32 * v13)) ^ v6)))();
}

uint64_t sub_1004E4F48()
{
  v1 = 2 * (v0 ^ 0x8CE3);
  v2 = STACK[0xF18];
  STACK[0x67B0] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((53289 * ((v1 ^ 0x3834FBD6u) > 0x4FFB7EFA)) ^ 0x4FE0u)))();
}

uint64_t sub_1004E5064@<X0>(uint64_t a1@<X8>)
{
  *(a1 + (v1 + v3 - 1009101615)) = *(v4 + (v1 + v3 - 1009101615));
  v7 = (v3 + 1441240928) > 0x920CFAAD && v3 + 1441240928 < v2;
  return (*(v5 + 8 * ((v7 | (4 * v7)) ^ v1)))();
}

uint64_t sub_1004E5148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a5 + (((v5 + v12) & 0x1F) << 7);
  *(v15 + 4 * v13) += v10;
  return (*(STACK[0xF18] + 8 * (((v5 + v6 + (v11 & v8) == v14) * v7) ^ v9)))();
}

uint64_t sub_1004E51B0()
{
  v1 = *(STACK[0x2DC0] + 16);
  STACK[0x4F90] = STACK[0x88B8];
  LODWORD(STACK[0x22E8]) = 10 * (v0 ^ 0x1460) + v1 - ((2 * v1) & 0xD3AB8E22) - 371900729;
  LODWORD(STACK[0x35EC]) = 1693393276;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004E5214@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0xF10] - 34;
  v2 = STACK[0xF10] + 1726;
  *(a1 + 64) |= (STACK[0xF10] + 246034579) & 0xF155FEB7 ^ 0xBA84;
  return (*(STACK[0xF18] + 8 * ((1020 * ((v1 ^ (*(a1 + 488) == 0x981390C2FED9246)) & 1)) ^ v2)))();
}

uint64_t sub_1004E5298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 30181;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x79C0];
  STACK[0x5D28] = &STACK[0x7E74];
  LODWORD(STACK[0x4704]) = 940912541;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_1004E52EC()
{
  v1 = STACK[0x32E4];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393396;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004E532C()
{
  v0 = (STACK[0xF10] - 26139) | 0x4258;
  v1 = STACK[0xF10] - 34622;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 21346) ^ v1)))();
}

uint64_t sub_1004E53EC()
{
  v1 = v0 | 0x40;
  v2 = STACK[0xF18];
  STACK[0x2C40] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v1 + 12530) ^ v1)))();
}

uint64_t sub_1004E5510()
{
  v1 = STACK[0xF18];
  STACK[0x17A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((353 * (v0 ^ 0x94E)) ^ 0x5FB5) + v0)))();
}

uint64_t sub_1004E5548()
{
  v1 = STACK[0xF10] - 30235;
  *(STACK[0xB588] + 32) = v0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1004E557C()
{
  v3 = STACK[0x345C];
  v4 = STACK[0x7208];
  v5 = 155453101 * ((~(&STACK[0x10000] + 3800) & 0x9A2DD4F0 | (&STACK[0x10000] + 3800) & 0x65D22B08) ^ 0x7C0BCF3F);
  STACK[0x10EF8] = &STACK[0x441C];
  LODWORD(STACK[0x10F18]) = v1 - v5 + 32841;
  LODWORD(STACK[0x10EE0]) = ((((v1 + 22682) | 0xA13) + 593288674) ^ v3) + v5;
  STACK[0x10EF0] = &STACK[0x27E0];
  STACK[0x10EE8] = &STACK[0x6563];
  STACK[0x10F08] = v2;
  STACK[0x10F10] = v0;
  STACK[0x10ED8] = v4;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v1 ^ 0xE591)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * v1))(v7);
}

uint64_t sub_1004E5698()
{
  v4 = v3 - 1;
  v5 = (v1 ^ 0x95) & (2 * (((v0 ^ 0x62) - 34) & v1)) ^ ((v0 ^ 0x62) - 34) & v1;
  v6 = ((2 * (v1 ^ 0xA7)) ^ 0x7C) & (v1 ^ 0xA7) ^ (2 * (v1 ^ 0xA7)) & 0xBE;
  v7 = v1 ^ (2 * (((4 * v6) & 0xB8 ^ 0xB6 ^ ((4 * v6) ^ 0xF8) & v6) & (16 * ((v6 ^ 0x2E) & (4 * v5) ^ v5)) ^ (v6 ^ 0x2E) & (4 * v5) ^ v5));
  STACK[0x26A0] = v4;
  *(v2 + v4) = ((v7 ^ 0xA3) + 122) * (v1 + 5) + 97 * (69 * ((v7 ^ 0xA3) + 122) + 70 * (v1 + 5)) + 94;
  v8 = *(STACK[0xF18] + 8 * ((209 * (STACK[0x26A0] != 0)) ^ v0));
  STACK[0xDA0] = &STACK[0x622C];
  STACK[0xB30] = v2;
  STACK[0xB20] = v2;
  STACK[0xD20] = STACK[0xD00];
  STACK[0xDB0] = v2;
  return v8();
}

uint64_t sub_1004E588C()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 34319;
  v2 = STACK[0x579C];
  LODWORD(STACK[0x9A1C]) = LODWORD(STACK[0x579C]) + 781499616;
  v3 = STACK[0x2C78] + (v2 + 8);
  v4 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v1);
  return (*(v4 + 8 * (v0 - 29131)))(v3);
}

uint64_t sub_1004E5B48()
{
  *(v1 + 80) = 34;
  *(v1 + 148) = STACK[0x7A9C];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004E5C0C()
{
  v3 = *(v0 - 0x427A3CD3E8C5DA2FLL);
  LODWORD(STACK[0x10EDC]) = v1 - 274689061 + 17902189 * ((2 * ((&STACK[0x10ED8] ^ 0xAE046BAE) & 0x1866D90E) - (&STACK[0x10ED8] ^ 0xAE046BAE) + 1738090225) ^ 0x47D25B4F);
  STACK[0x10EE0] = v3;
  v4 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 + 14886)))(&STACK[0x10ED8]);
  v5 = STACK[0x10ED8];
  STACK[0x10EE0] = *(v2 - 0x427A3CD3E8C5DA2FLL);
  LODWORD(STACK[0x10EDC]) = v1 - 274689061 + 17902189 * ((2 * (&STACK[0x10ED8] & 0x57D23D98) - &STACK[0x10ED8] - 1473396128) ^ 0x2662D470);
  (*(v4 + 8 * (v1 ^ 0x5BDE)))(&STACK[0x10ED8]);
  v6 = STACK[0x10ED8];
  v7 = *(v2 - 0x427A3CD3E8C5DA2FLL);
  v8 = 139493411 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x6748A410) + 1732813843) ^ 0x6B654556);
  LODWORD(STACK[0x10EDC]) = (v1 + 1270010906) ^ v8;
  LODWORD(STACK[0x10EE8]) = ((v1 - 22318) ^ 0xF312D1BB) + v5 + v6 + v8;
  STACK[0x10EF0] = &STACK[0xF28] ^ 0x962C433804ECA67BLL;
  STACK[0x10EE0] = v7;
  v9 = (*(v4 + 8 * (v1 ^ 0x5C68)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v1))(v9);
}

uint64_t sub_1004E5DC4()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 15664)))(4);
  STACK[0xAA10] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (v0 - 71823 + ((v0 - 45142381) & 0x2B0CF3F))) | v0)))();
}

uint64_t sub_1004E5E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0xF18];
  STACK[0x22B8] = *(STACK[0xF18] + 8 * (v7 - 23030));
  return (*(v8 + 8 * ((((v7 - 22324) | 0x8720) ^ 0xD532) + v7 - 23030)))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_1004E5EBC()
{
  v1 = STACK[0xF10] ^ 0x4F11;
  v2 = (STACK[0xF10] ^ 0xE661) + 7649;
  v4 = *(v0 + 8);
  v3 = (v0 + 8);
  STACK[0x5540] = v3;
  LODWORD(STACK[0x10ED8]) = (v1 + 703876131) ^ (634647737 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x6FE792D0) + 1877447383) ^ 0x271BD2B));
  STACK[0x10EE0] = v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 + 1688)))(&STACK[0x10ED8]);
  v7 = v3[13];
  STACK[0x30C8] = v3[14];
  STACK[0x63B0] = v7;
  v8 = v3[11];
  STACK[0x8088] = v3[12];
  STACK[0x4AB8] = v3[19];
  STACK[0x4348] = v8;
  v9 = v3[16];
  STACK[0x13A8] = v3[15];
  STACK[0x57A0] = v9;
  STACK[0x44E0] = v3[39];
  STACK[0x8140] = v3 + 28;
  v10 = STACK[0x7690];
  v11 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x2028] = v11;
  STACK[0x7E58] = v11;
  STACK[0x7D40] = (v11 + 16);
  STACK[0x7690] = v10 + 368;
  v12 = STACK[0x64F8];
  STACK[0x2F68] = 0x65D7F4DC84452C66;
  STACK[0x70C8] = 0;
  LODWORD(STACK[0x1EB4]) = -371865839;
  LODWORD(STACK[0x3F20]) = 0;
  STACK[0x4F98] = 0;
  return (*(v5 + 8 * ((31 * ((v2 ^ (v12 == 0)) & 1)) ^ v1)))(v6);
}

uint64_t sub_1004E6030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  ++*a5;
  LODWORD(STACK[0x10EE0]) = v5 + 155453101 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x5183BA20) - 779896283) ^ 0x37A5A1EA) + 296753103;
  STACK[0x10ED8] = 0;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v5 + 16271)))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v6 + 8 * (v5 - 32466));
  return (*(v6 + 8 * (v5 ^ 0xEB3F ^ (v5 - 32466) ^ 0x7A02)))(v7);
}

uint64_t sub_1004E60E4()
{
  v0 = STACK[0xF10] - 4902;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))(STACK[0x6B00]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1004E63A0()
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = 873581236;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1004E6464()
{
  v0 = STACK[0xF10] - 2333;
  v1 = STACK[0xF10] - 32629;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 ^ 0x9D09 ^ v1)))();
}

uint64_t sub_1004E64B0()
{
  v1 = STACK[0x8BE0] + 4;
  v2 = STACK[0x8318];
  v3 = (((LODWORD(STACK[0xAD70]) ^ 0x8DF190B8) + 1625807714) ^ ((LODWORD(STACK[0xAD70]) ^ 0xBF0DE86B) + 1377543091) ^ (((v0 + 19712) ^ LODWORD(STACK[0xAD70]) ^ 0x88D75C01) + 1707187428)) + 601882022;
  v4 = 1112314453 * ((((2 * (&STACK[0x10000] + 3800)) | 0x2AC92582) - (&STACK[0x10000] + 3800) + 1788570943) ^ 0x7A32B818);
  STACK[0x10ED8] = STACK[0x6B18] + 8;
  STACK[0x10EF8] = v2;
  LODWORD(STACK[0x10EE0]) = v3 ^ v4;
  STACK[0x10EE8] = STACK[0x858];
  LODWORD(STACK[0x10F00]) = (v0 + 26818) ^ v4;
  STACK[0x10F08] = v1;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 ^ 0xF5B4)))(&STACK[0x10ED8]);
  v7 = STACK[0x10EF0];
  LODWORD(STACK[0x635C]) = STACK[0x10EF0];
  return (*(v5 + 8 * ((35474 * (v7 == -371865839)) ^ v0)))(v6);
}

uint64_t sub_1004E6690()
{
  v0 = (STACK[0xF10] - 2101873600) & 0x7D47E7FC;
  v1 = STACK[0xF10] - 34548;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 21452) ^ v1)))();
}

uint64_t sub_1004E682C()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 27886)))(v2);
}

uint64_t sub_1004E685C()
{
  v0 = STACK[0xF10];
  STACK[0x6F20] = STACK[0x5918] + (SLODWORD(STACK[0x90E4]) ^ 0x196691DFLL);
  return (*(STACK[0xF18] + 8 * (v0 - 29290)))();
}

uint64_t sub_1004E68A0()
{
  STACK[0x7F80] = v1 + 44;
  STACK[0x998] = STACK[0x75E0];
  return (*(STACK[0xF18] + 8 * (((v0 - 1943774237) & 0x73DBB3F7 ^ 0x4BDD) + v0)))();
}

uint64_t sub_1004E69B4()
{
  v3 = STACK[0xB8F0];
  *v3 = *v1 ^ 0x5F ^ *v2;
  v3[1] = v1[1] ^ 0x5F ^ v2[1];
  v3[2] = v1[2] ^ 0x5F ^ v2[2];
  v3[3] = v1[3] ^ 0x5F ^ v2[3];
  v3[4] = (v0 + 122) ^ v1[4] ^ v2[4] ^ 0xD6;
  v3[5] = v1[5] ^ 0x5F ^ v2[5];
  v3[6] = v1[6] ^ 0x5F ^ v2[6];
  v3[7] = v1[7] ^ 0x5F ^ v2[7];
  v3[8] = v1[8] ^ 0x5F ^ v2[8];
  v3[9] = v1[9] ^ 0x5F ^ v2[9];
  v3[10] = v1[10] ^ 0x5F ^ v2[10];
  v3[11] = v1[11] ^ 0x5F ^ v2[11];
  v3[12] = v1[12] ^ 0x5F ^ v2[12];
  v3[13] = v1[13] ^ 0x5F ^ v2[13];
  v3[14] = v1[14] ^ 0x5F ^ v2[14];
  v3[15] = v1[15] ^ 0x5F ^ v2[15];
  v3[16] = v1[16] ^ 0x5F ^ v2[16];
  v3[17] = v1[17] ^ 0x5F ^ v2[17];
  v3[18] = v1[18] ^ 0x5F ^ v2[18];
  v3[19] = v1[19] ^ 0x5F ^ v2[19];
  v4 = STACK[0x1458];
  *v4 = 95;
  STACK[0x1458] = (v4 + 1);
  v5 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v0);
  return (*(v5 + 8 * (v0 + 1342)))(9285, 26350, 2625, 1690175423, 23855, 1690221200, 35608, 15095);
}

uint64_t sub_1004E6BF4()
{
  v1 = STACK[0x7A30] + 576 * STACK[0x8198];
  v2 = (v0 - 1311427825) & 0x4E2A7FF9 ^ ~*(v1 + 384);
  *(STACK[0x3E38] - 0x20DE4F5147E73106) = (v0 + 15) & 0xF9 ^ ~*(v1 + 384);
  LOBYTE(STACK[0x6AD3]) = v2;
  return (*(STACK[0xF18] + 8 * (((*(v1 + 520) == 0) * ((v0 ^ 0xB2D3) - 3610)) | v0)))();
}