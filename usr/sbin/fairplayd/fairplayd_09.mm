uint64_t sub_1002CA0F0(double a1, __n128 a2, uint64_t a3, unsigned int a4)
{
  a2.n128_u16[0] = 19275;
  a2.n128_u8[2] = 75;
  a2.n128_u8[3] = 75;
  a2.n128_u8[4] = 75;
  a2.n128_u8[5] = 75;
  a2.n128_u8[6] = 75;
  a2.n128_u8[7] = 75;
  return (*(v4 + 8 * ((56445 * (a4 < 0x6E46D8F4)) ^ (a4 - 2134902853))))(xmmword_100F523B0, a2);
}

uint64_t sub_1002CA18C@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 ^ 0xF022;
  v5 = v1 ^ 0x4FAD;
  *(v3 - 132) = ((v1 ^ 0xF022) - 10740) ^ (155453101 * ((v3 - 136 - 2 * ((v3 - 136) & 0x599CAAF0) + 1503439607) ^ 0xBFBAB138));
  *(v3 - 128) = a1;
  *(v3 - 120) = a1;
  (*(v2 + 8 * ((v1 ^ 0xF022) + 2276)))(v3 - 136);
  v6 = (*(v2 + 8 * (v4 + 2144)))(21) == 0;
  return (*(v2 + 8 * ((v6 * (v5 - 32181)) | v4)))((v5 - 20793), 0);
}

uint64_t sub_1002CA280(unint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0xE9D5C711E9D5C711;
  *(a1 + 16) = 0xA52FF067E9D5C711;
  *(a1 + 24) = -371865839;
  STACK[0x5CE0] = a1;
  v2 = STACK[0xF18];
  STACK[0x2D20] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x6106 ^ (v1 + 17174))))();
}

uint64_t sub_1002CA300()
{
  LODWORD(STACK[0xB93C]) = STACK[0x5A44];
  LODWORD(STACK[0x44AC]) = v0;
  return (*(STACK[0xF18] + 8 * (((v0 == -371865839) * (v1 + 10611)) ^ (v1 - 27317))))();
}

uint64_t sub_1002CA39C@<X0>(int a1@<W8>)
{
  v9 = v3 < v5;
  v10 = (v7 - 1888747199);
  v11 = 2 * (((v7 ^ 0x2F) + 112) ^ v7 ^ ((v7 ^ 0x37) + 120) ^ ((v7 ^ 0x3E) - 1) ^ (((((a1 - 88) | 0x8A) + 31) ^ v7) + 90));
  v12 = *STACK[0xE58];
  v13 = *STACK[0xE50];
  v14 = v11 ^ ((v11 ^ 0xBB) - 14) ^ ((v11 ^ 0x8E) - 59) ^ 0x4B;
  v15 = 1864610357 * (((v2 + v10) ^ *(v13 + (v12 & 0x46620868))) & 0x7FFFFFFF);
  v16 = 1864610357 * (v15 ^ HIWORD(v15));
  LODWORD(v16) = *(STACK[0x6B8] + (v16 >> 24)) ^ *(v2 + v10) ^ *((v16 >> 24) + STACK[0x6C8] + 2) ^ *(STACK[0x6C0] + (v16 >> 24)) ^ v16 ^ (-9 * (v16 >> 24));
  v17 = (v4 + (v1 + v10));
  LODWORD(v13) = 1864610357 * ((*(v13 + (v12 & 0x72D7ACF8)) ^ v17) & 0x7FFFFFFF);
  v18 = 1864610357 * (v13 ^ WORD1(v13));
  *v17 = *((v18 >> 24) + v8 + 1) ^ *(STACK[0x8C8] + (v18 >> 24)) ^ *((v18 >> 24) + STACK[0x8D0] + 3) ^ v18 ^ (61 * BYTE3(v18)) ^ (v7 + 79 * v14 + ((((v16 ^ 0xD8) - 9) ^ ((v16 ^ 0x71) + 96) ^ ((v16 ^ 0xA9) - 120)) - 126) * (v14 - 54) - 105);
  if (v9 == v7 + 2029881402 < v5)
  {
    v9 = v7 + 2029881402 < v3;
  }

  return (*(STACK[0xF18] + 8 * ((v9 * v6) ^ a1)))();
}

uint64_t sub_1002CAAC8@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W7>, int a8@<W8>)
{
  v14 = *(STACK[0xF18] + 8 * v10);
  v15 = (*(v12 + (a8 + v8)) << 24) | (*(v12 + (a8 + a2)) << 16) | (*(v12 + (a8 + a3)) << 8);
  v16 = *(v12 + (a8 + a6));
  LODWORD(STACK[0x9894]) = ((v15 - (a4 & (2 * v15)) + a5) ^ v13) & ((v16 - ((2 * v16) & 0xFFFFFFE7) + a7) ^ v11) ^ (v16 - ((2 * v16) & 0xFFFFFFE7) + a7) & v9 ^ a1;
  return v14();
}

uint64_t sub_1002CABB0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = STACK[0xF10] - 28477;
  LODWORD(STACK[0x8C84]) = a3;
  return (*(STACK[0xF18] + 8 * (v3 ^ (2040 * (a3 == -371865839)))))();
}

uint64_t sub_1002CACE4@<X0>(uint64_t a1@<X8>)
{
  STACK[0x8FF8] = &STACK[0xC4D0] + v1;
  STACK[0x7690] = a1 + 544;
  LODWORD(STACK[0x6BFC]) = -371865839;
  LODWORD(STACK[0x10EE4]) = v2 - 193924789 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x37C0C420) + 935380004) ^ 0x817BF642) + 35160;
  STACK[0x10ED8] = &STACK[0xC4D0] + v1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 + 41822)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (((LODWORD(STACK[0x10EE0]) != (v2 ^ 0xAEBE) - 371901139) * (v2 - 9868)) ^ v2)))(v4);
}

uint64_t sub_1002CADBC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, unsigned int a5, uint64_t a6, int a7, unsigned int a8)
{
  v12 = 1603510583 * ((((2 * &a4) | 0xBE28B80C) - &a4 + 552313850) ^ 0x48CF6EAD);
  a6 = *(v10 - 0x217E172EFA1E81CLL);
  a7 = v11 - 5759 - v12 - 11070;
  a8 = a1 - v12 + ((v11 - 5759) ^ 0xD7E6A45A);
  a5 = -1995309458 - v12;
  v13 = (*(v9 + 8 * (v11 + 28167)))(&a4);
  *v8 = a4;
  return (*(v9 + 8 * (v11 - 5759)))(v13);
}

uint64_t sub_1002CAE7C()
{
  *(v0 + 108) = 0;
  v2 = STACK[0x6EE8];
  *(v0 + 104) = 16;
  *(v0 + 103) = v2[23];
  *(v0 + 102) = v2[22];
  *(v0 + 101) = v2[21];
  *(v0 + 100) = v2[20];
  *(v0 + 99) = v2[19];
  *(v0 + 98) = v2[18];
  *(v0 + 97) = v2[17];
  *(v0 + 96) = v2[16];
  *(v0 + 95) = v2[15];
  *(v0 + 94) = v2[14];
  *(v0 + 93) = v2[13];
  *(v0 + 92) = v2[12];
  *(v0 + 91) = v2[11];
  *(v0 + 90) = v2[10];
  *(v0 + 89) = v2[9];
  *(v0 + 88) = v2[8];
  return (*(STACK[0xF18] + 8 * ((113 * ((((v1 ^ 0xAD) - 108) ^ (v2[4] == 0)) & 1)) | v1)))();
}

uint64_t sub_1002CB06C()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 - 866126070)))();
  return (*(v1 + 8 * (v0 ^ 0x33A0CA18 ^ (24291 * (v0 != 1471290039)))))(v2);
}

uint64_t sub_1002CB0D4()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 ^ 0x8988) - 25303) ^ v0)))();
}

uint64_t sub_1002CB150()
{
  v1 = LOWORD(STACK[0x1AFC]);
  LOWORD(STACK[0x1C32]) = v1 ^ 0xC711;
  return (*(STACK[0xF18] + 8 * (((((v0 - 39) ^ (v1 == 50961)) & 1) * ((v0 + 25665) ^ 0x8BBD)) ^ v0)))();
}

uint64_t sub_1002CB1A8()
{
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762661292) ^ (906386353 * ((~(&STACK[0x10000] + 3800) & 0x27569104 | (&STACK[0x10000] + 3800) & 0xD8A96EF8) ^ 0x16575C20));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4182)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (((*STACK[0x970] > 0) * (7283 * (v0 ^ 0x8B3E) + 25457)) ^ (v0 - 18996))))(v2);
}

uint64_t sub_1002CB314()
{
  v1 = (STACK[0xF10] - 32555) | 0x8129;
  v2 = STACK[0xF10] - 14663;
  LODWORD(STACK[0x5AFC]) = v0;
  return (*(STACK[0xF18] + 8 * (((LODWORD(STACK[0x9EDC]) != -371865839) * (v1 ^ 0x8EDA)) ^ v2)))();
}

uint64_t sub_1002CB524()
{
  if (*v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(STACK[0xF18] + 8 * ((v4 * ((v0 ^ 0x7991) - 35641 + 11881 * (v0 ^ 0x7991))) ^ v0)))();
}

uint64_t sub_1002CB5B8()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 9075;
  v3 = ((v0 ^ 0x5DE3DECC) - 1932721194) ^ ((v0 ^ 0x2176BC5D) - 262643387) ^ (STACK[0xF10] + 1790889797 + (v0 ^ STACK[0xF10] ^ 0xBB910C5D));
  v4 = 353670337 * ((((&STACK[0x10000] + 3800) ^ 0x850A806E | 0xA5CB9382) - ((&STACK[0x10000] + 3800) ^ 0x850A806E | 0x5A346C7D) + 1513385085) ^ 0x94E0EBD1);
  LODWORD(STACK[0x10EE0]) = (STACK[0xF10] - 1138106178) ^ v4;
  LODWORD(STACK[0x10ED8]) = v4 + 1355248435 + v3;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 + 16550)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((28 * (LOBYTE(STACK[0x10EDC]) != 11)) ^ v2)))(v6);
}

uint64_t sub_1002CB714@<X0>(uint64_t a1@<X8>)
{
  LODWORD(STACK[0x7FEC]) = v2;
  STACK[0x7690] = ((v1 + 32657) ^ 0xFFFFFFFFFFFF74DBLL) + a1;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1002CB744()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 30947;
  v2 = STACK[0xF18];
  STACK[0x5D78] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((5162 * (v1 != 507474468)) ^ (v0 - 33695))))();
}

uint64_t sub_1002CB7D8@<X0>(int a1@<W8>)
{
  v1 = a1 ^ 0x1F19;
  STACK[0x7690] += (919 * (v1 ^ 0x171Au)) ^ 0xFFFFFFFFFFFFA65FLL;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1002CB814@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x3770] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 + 5026 + ((a1 - 2926) | 0x303))))();
}

uint64_t sub_1002CB858()
{
  v2 = STACK[0x67C8];
  v3 = STACK[0x6E60];
  v4 = LODWORD(STACK[0x22A4]);
  v5 = STACK[0x6CC0] + v4;
  v6 = *(v0 + 1);
  v7 = 634647737 * ((((&STACK[0x10000] + 3800) | 0x248FB928) - ((&STACK[0x10000] + 3800) & 0x248FB928)) ^ 0x491996D4);
  LODWORD(STACK[0x10EE0]) = (((v1 - 37727) | 0x2250) ^ (LODWORD(STACK[0x68C4]) - v4) ^ 0x5785E662) - v7 + ((2 * (LODWORD(STACK[0x68C4]) - v4)) & 0xAF0B9B2E) - 991013303;
  LODWORD(STACK[0x10F00]) = v1 - v7 + 4727;
  STACK[0x10EF8] = v6 + v4;
  STACK[0x10F08] = v2;
  STACK[0x10ED8] = v3;
  STACK[0x10EE8] = v5;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * (v1 + 12264)))(&STACK[0x10ED8]);
  return (*(v8 + 8 * v1))(v9);
}

uint64_t sub_1002CB950()
{
  v1 = *(STACK[0x7B8] - 901996491);
  LODWORD(STACK[0x2A94]) = v1;
  LODWORD(STACK[0x62D4]) = v1;
  LODWORD(STACK[0x3710]) = 1632222351;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002CB998@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x8C04]) = v1;
  v2 = v1 == ((a1 + 27406114) & 0xFE5DADEF ^ 0x69D517F9) + (a1 ^ 0x9C26);
  LOBYTE(STACK[0x5353]) = v2;
  return (*(STACK[0xF18] + 8 * ((5421 * v2) ^ a1)))();
}

uint64_t sub_1002CBAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = STACK[0xE90];
  *v7 = v4;
  STACK[0xF90] = v5;
  *(v7 + 8) = a3;
  *(v7 + 4) = *(a3 + 4);
  STACK[0x95A0] = v6;
  LOWORD(STACK[0x79DE]) = 7085;
  LODWORD(STACK[0x16B4]) = 776673329;
  return (*(STACK[0xF18] + 8 * (v3 - 27257)))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_1002CBB64()
{
  v1 = *(STACK[0x95E0] + 24);
  STACK[0x2E00] = v1;
  return (*(STACK[0xF18] + 8 * (((v1 == 0) * (((v0 - 2094833306) | 0x7CDC1040) + 66)) ^ v0)))();
}

uint64_t sub_1002CBC04()
{
  v0 = STACK[0xF10] - 28333;
  v1 = STACK[0xF10] - 26354;
  v2 = STACK[0x6FC8];
  LODWORD(STACK[0xED0]) = v0;
  LODWORD(STACK[0x2C04]) = (v0 ^ 0x1C83) + v2;
  v3 = *(STACK[0x3D68] - 0xA639E7FDEF7D068);
  STACK[0x41B8] = STACK[0x2C78];
  LODWORD(STACK[0x44B4]) = v3;
  LODWORD(STACK[0x2CE8]) = 720181999;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1002CBC78@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x62D4]) = STACK[0x3A1C];
  LODWORD(STACK[0x3710]) = 662271026;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1002CBD88()
{
  STACK[0x7690] += (v0 - 113) ^ 0xFFFFFFFFFFFF773ALL;
  LODWORD(STACK[0x40C4]) = v1;
  v2 = STACK[0xF18];
  STACK[0x8228] = *(STACK[0xF18] + 8 * (v0 - 32215));
  return (*(v2 + 8 * (v0 - 30227)))();
}

uint64_t sub_1002CBE74()
{
  LODWORD(STACK[0x10ED8]) = (v0 - 1762659154) ^ (906386353 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x33915240) + 865161793) ^ 0x2909F65));
  STACK[0x10EE0] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 18392)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (((*STACK[0x970] > 0) * (((v0 + 1682963582) & 0x9BAF95B5) + 6692)) ^ v0)))(v2);
}

uint64_t sub_1002CBF38(__n128 a1)
{
  a1.n128_u16[0] = -24416;
  a1.n128_u8[2] = -96;
  a1.n128_u8[3] = -96;
  a1.n128_u8[4] = -96;
  a1.n128_u8[5] = -96;
  a1.n128_u8[6] = -96;
  a1.n128_u8[7] = -96;
  return (*(STACK[0xF18] + 8 * v1))(a1);
}

uint64_t sub_1002CBF68()
{
  v0 = STACK[0xF10] - 35142;
  STACK[0x9FA8] = STACK[0xB790] + 48 * STACK[0xB7C0] + 20;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x1903)))();
}

uint64_t sub_1002CBFE0()
{
  v1 = STACK[0x4020];
  STACK[0x36F0] = STACK[0x2558];
  STACK[0x73E8] = v1;
  LODWORD(STACK[0x56B8]) = 744170656;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002CC018@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v20 = v8 - 1;
  v21 = *v15;
  v22 = ((*(*v16 + (v21 & v9)) ^ (v6 + v20)) & 0x7FFFFFFF) * v10;
  v23 = (v22 ^ HIWORD(v22)) * v10;
  LODWORD(v21) = ((*(*v16 + (v21 & a4)) ^ (a6 + v20)) & 0x7FFFFFFF) * v10;
  v24 = (v21 ^ WORD1(v21)) * v10;
  *(a6 + v20) = *(*(v14 + 8 * v11) + (v23 >> 24) + v12) ^ *(v6 + v20) ^ *(*(v14 + 8 * v13) + (v23 >> 24) + a1) ^ *(*(v14 + 8 * a2) + (v23 >> 24) + a3) ^ v23 ^ *(v17 + (v24 >> 24)) ^ *((v24 >> 24) + v19 + 2) ^ (-65 * BYTE3(v23)) ^ *((v24 >> 24) + v18 + 4) ^ v24 ^ (BYTE3(v24) * a5);
  return (*(STACK[0xF18] + 8 * ((30 * (v20 == 0)) ^ v7)))();
}

uint64_t sub_1002CC100()
{
  v4 = *(v1 - 0x217E172EFA1E81CLL);
  v5 = 1603510583 * ((v2 - 2 * (v2 & 0x51764070) - 780779407) ^ 0x46AD72DA);
  LODWORD(STACK[0x10EDC]) = -2112097355 - v5;
  LODWORD(STACK[0x10EE8]) = v3 - v5 - 1891;
  LODWORD(STACK[0x10EEC]) = v0 - v5 - 672734622;
  STACK[0x10EE0] = v4;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v3 + 43105)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * ((219 * (((((v3 - 761903998) & 0x2D69BBA6 ^ LODWORD(STACK[0x10ED8]) ^ 0x9FAA2D65) + 1616244765) ^ ((LODWORD(STACK[0x10ED8]) ^ 0x567522D5) - 1450517205) ^ ((LODWORD(STACK[0x10ED8]) ^ ((v3 ^ 0xA966) + 537550572)) - 537586215)) - 371865839 > 1)) ^ v3)))(v7);
}

uint64_t sub_1002CC254@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 0x43D8CBFA0CEB42CCLL) = STACK[0x7838];
  *(a1 - 0x43D8CBFA0CEB42C4) = STACK[0x783C];
  *(a1 - 0x43D8CBFA0CEB42C8) = -371865839;
  *(a1 - 0x43D8CBFA0CEB42C0) = STACK[0x92AC];
  *(a1 - 0x43D8CBFA0CEB42D0) = STACK[0x11BC];
  *(a1 - 0x43D8CBFA0CEB42BCLL) = *STACK[0x5470];
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * (v1 - 33817));
  return (*(v2 + 8 * ((15135 * ((v1 + 2103496192) < 0x2B36CA70)) ^ (v1 - 29776))))();
}

uint64_t sub_1002CC5F4()
{
  *(v1 + 360) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 288) = 0u;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 336) = 0u;
  *(v1 + 152) = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002CC630()
{
  v0 = STACK[0xF10];
  v1 = 4 * STACK[0xF10];
  v2 = STACK[0xF10] - 5952;
  v3 = STACK[0xB5F0];
  v4 = STACK[0xA390];
  LODWORD(STACK[0x10EE0]) = STACK[0xF10] - 1012831759 * ((((&STACK[0x10000] + 3800) | 0xF56C21DF) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xA93DE20)) ^ 0xE5FF3755) + 6761;
  STACK[0x10EE8] = v4;
  STACK[0x10ED8] = v3;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4087)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * (((LODWORD(STACK[0x10EF0]) == (v1 ^ 0xE9D7EBFD)) * (v0 - 35637)) ^ v2)))(v6);
}

uint64_t sub_1002CC75C()
{
  STACK[0xDA0] = &STACK[0x622C];
  v4 = v3 + 0x48CFDFB86C6379ABLL;
  v5 = STACK[0xD00];
  *(v5 + 8) = v4;
  v6 = STACK[0xB10];
  *v6 = v4;
  v6[1] = 0x85B23DC731837D23 - v0;
  v6[2] = (((LOBYTE(STACK[0x622F]) ^ 0x9FD7AB80D760F4CALL) + 0x6028547F289F0B36) ^ ((LOBYTE(STACK[0x622F]) ^ 0x27B12EC0B199547ALL) - 0x27B12EC0B199547ALL) ^ ((LOBYTE(STACK[0x622F]) ^ ((v1 + 23761) - 0x47997ABF9906EA6FLL)) + 0x47997ABF99065F34)) + 0x73B4913AF7D02EBBLL;
  *STACK[0xB00] = 0x3CE25E0EC5200378;
  *(STACK[0x9D0] + 40) += v2;
  STACK[0xDB0] = (v6 + 3);
  v7 = *(STACK[0xF18] + 8 * v1);
  STACK[0xAE8] = v6;
  STACK[0xD20] = v5;
  return v7();
}

uint64_t sub_1002CC894()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  *v1 = 0;
  return (*(v2 + 8 * (v0 + 9686)))(v3);
}

uint64_t sub_1002CC8C4()
{
  *((v1 - 1654347154) + STACK[0x9EC0] + STACK[0x9EC8] - 0x19AADDD23C31E864) = ((v0 & 0x7F) - 28) ^ *(STACK[0xAD30] + (v1 - 1654347154));
  v2 = *(STACK[0xF18] + 8 * (v0 & 0xD80A0F7F));
  LODWORD(STACK[0xED0]) = v1 - 1;
  return v2();
}

uint64_t sub_1002CC93C()
{
  v1 = STACK[0xF10] - 50;
  v2 = STACK[0xF10] + 10593;
  v3 = STACK[0x65B8];
  *(v3 + 24) = STACK[0x1DC0];
  v4 = STACK[0x3418];
  *(v3 + 64) = STACK[0x188C];
  *(v3 + 80) = STACK[0x6168];
  v5 = STACK[0x4F14];
  *(v3 + 72) = 0;
  *(v3 + 88) = 0;
  *(v3 + 32) = v4;
  *(v3 + 36) = v0;
  *(v3 + 40) = v5;
  *(v3 + 44) = v0;
  *(v3 + 96) = v0;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0x9A0A9301979A4FF9;
  *(v3 + 120) = STACK[0x36C8];
  v6 = STACK[0x4234];
  *(v3 + 128) = STACK[0x83E0];
  *(v3 + 132) = v6;
  *(v3 + 136) = 0;
  return (*(STACK[0xF18] + 8 * ((77 * ((v1 ^ (STACK[0x3200] == 0)) & 1)) ^ v2)))();
}

uint64_t sub_1002CCAA0@<X0>(int a1@<W8>)
{
  v2 = a1 ^ 0x9855;
  v3 = *v1;
  v4 = 634647737 * (((&STACK[0x10ED8] | 0x1D14EABAF1781AB0) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0xE2EB15450E87E548)) ^ 0xC7CF45559CEE354CLL);
  LODWORD(STACK[0x10EFC]) = ((v2 - 1946763515) ^ 3) - v4;
  LODWORD(STACK[0x10EE4]) = v2 - 1946763515 + v4;
  LODWORD(STACK[0x10EF8]) = v2 - v4 - 1230214699;
  STACK[0x10EF0] = 94 - v4;
  STACK[0x10EE8] = v3 ^ v4;
  LODWORD(STACK[0x10EDC]) = ((v2 - 1946763515) ^ 0x136D) - v4;
  LODWORD(STACK[0x10ED8]) = -634647737 * (((&STACK[0x10ED8] | 0x1D14EABAF1781AB0) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0xE2EB15450E87E548)) ^ 0x9CEE354C);
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v2 + 16305)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * SLODWORD(STACK[0x10EE0])))(v6);
}

uint64_t sub_1002CCBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[1] = 0xC1F2B486029B4389;
  *v3 = 0x63763DEDAD3647A6;
  STACK[0x5110] = (v3 + 1);
  STACK[0x5D70] = (v3 + 0x2CE1C9E1FD8826);
  v5 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x51D1B4B8));
  v3[2] = (v5 & 0x7FFFFFFFFFFFFFFFLL ^ 0x23717FC5D5EE4B65 ^ v5 & ((v4 + 13310) ^ 0x2219815DD05F5C10) ^ 0x8801800112018) - (v5 & ((v4 + 13310) ^ 0x2219815DD05F5C10) ^ 0x8801800112018);
  v6 = STACK[0x2E48];
  *(v6 + 24) = -371865839;
  v6 += 24;
  STACK[0x5748] = v6;
  STACK[0x6F10] = v6 + 8;
  *(v6 + 4) = 0xE9D5C711E9D5C711;
  *(v6 + 12) = -371865839;
  STACK[0x9170] = v6 + 4;
  STACK[0x6B40] = v6 + 12;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0xFFFFFFFFLL;
  STACK[0x6480] = v6 + 32;
  v7 = STACK[0xF18];
  STACK[0x98B8] = *(STACK[0xF18] + 8 * v4);
  return (*(v7 + 8 * (v4 + 10030)))(a1, a2, a3, 0x1D54AEB378980575);
}

uint64_t sub_1002CCD94()
{
  v0 = STACK[0xF10] - 11229;
  v1 = STACK[0x1800];
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(*(STACK[0x1800] + 640));
  *(v1 + 640) = 0;
  *(v1 + 648) = 42803857;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1002CCDF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  LODWORD(STACK[0x3B1C]) = -371865839;
  STACK[0x6198] = 0;
  LODWORD(STACK[0x78E0]) = -371865839;
  STACK[0x6D28] = 0;
  LODWORD(STACK[0x57FC]) = -371865839;
  STACK[0x53E0] = 0;
  return (*(STACK[0xF18] + 8 * (((v3 == (a3 ^ 0x58F1) - 371866944) * ((a3 + 11930) ^ 0xBAA6)) ^ a3)))(a1, a2, 371891535);
}

uint64_t sub_1002CCF04()
{
  v0 = STACK[0xF10] - 34186;
  v1 = STACK[0xF10] - 29830;
  v2 = STACK[0xA924];
  LODWORD(STACK[0xA92C]) = LODWORD(STACK[0x9AB0]) + (*(STACK[0x1A98] + 696) ^ 0xE9D5C711);
  LODWORD(STACK[0xA928]) = v2;
  return (*(STACK[0xF18] + 8 * (((v2 == -371865839) * (v0 ^ 0x5D2)) ^ v1)))();
}

uint64_t sub_1002CCF74()
{
  v1 = STACK[0x5ED8];
  *(STACK[0xA648] + v1 - 0x66FF6746BA8A02A1) = 47;
  *(v1 + STACK[0xA650]) = 0;
  v2 = STACK[0xF10];
  v3 = STACK[0xA630];
  v4 = v0 ^ STACK[0xA630] ^ 0xFE3B7C1DF5FF62A4;
  STACK[0x10ED8] = STACK[0x5828];
  v5 = v4 + ((2 * v3) & 0xFC76F83BEBFED75ALL) + 0x6DF7E3F77FDAD600;
  v6 = STACK[0xEC0];
  STACK[0x10EF8] = STACK[0xEC0] + v5;
  STACK[0x10EE8] = v1;
  LODWORD(STACK[0x10EE0]) = v6 + v2 - 371901482;
  v7 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * SLODWORD(STACK[0xEB0])))(&STACK[0x10ED8]);
  v8 = LODWORD(STACK[0x10EF0]) != -371865839;
  v9 = (*(v7 + 8 * SLODWORD(STACK[0xEA0])))(v1);
  return (*(v7 + 8 * (LODWORD(STACK[0xED0]) ^ (16 * v8))))(v9);
}

uint64_t sub_1002CD17C(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x5EA0]) = a3;
  STACK[0x8648] = STACK[0x69E0];
  LODWORD(STACK[0x37DC]) = 176185699;
  return (*(STACK[0xF18] + 8 * (v3 - 26090)))();
}

uint64_t sub_1002CD328@<X0>(int a1@<W8>)
{
  v1 = (a1 + 1706879787) & 0xFFFFFFFFF12877EDLL;
  LODWORD(STACK[0x1BF4]) = -371865839;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v1 + 4123) ^ v1)))();
}

uint64_t sub_1002CD3EC()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 33944;
  STACK[0x1000] = STACK[0x6E58] + ((((STACK[0xF10] - 2291) | 0x1011) - 1397870887) ^ 0xACAEC132);
  v2 = STACK[0xF18];
  STACK[0x5040] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 - 28748)))();
}

uint64_t sub_1002CD508()
{
  v2 = (((v1 ^ 0xA1AFF6CA6FAF6819) + 0x5E500935905097E7) ^ ((v1 ^ 0xC00C4334E4D7C279) + 0x3FF3BCCB1B283D87) ^ ((((((v0 ^ 0xB7E1) - 324032462) & 0x1350CBBB) + 0x61A3B5FE62ACE236) ^ v1) - 0x61A3B5FE62AD6D71)) + 0x3AE1413AF7325DD3;
  STACK[0x83F0] = v2;
  STACK[0x5C50] = v2;
  LODWORD(STACK[0x1374]) = -1145298798;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0xB7E1)))();
}

uint64_t sub_1002CD5EC(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v43.n128_u64[0] = (v40 + 13) & 0xF;
  v43.n128_u64[1] = (v40 + 12) & 0xF;
  v44.n128_u64[0] = (v40 + 11) & 0xF;
  v44.n128_u64[1] = (v40 + 10) & 0xF;
  v45.n128_u64[0] = (v40 + 9) & 0xF;
  v45.n128_u64[1] = v40 & 0xF ^ 8;
  v48.val[0].i64[0] = (v40 + 7) & 0xF;
  v48.val[0].i64[1] = (v40 + 6) & 0xF;
  v48.val[1].i64[0] = (v40 + 5) & 0xF;
  v48.val[1].i64[1] = (v40 + 4) & 0xF;
  v48.val[2].i64[0] = (v40 + 3) & 0xF;
  v48.val[2].i64[1] = (v40 + 2) & 0xF;
  v48.val[3].i64[0] = (v40 + 1) & 0xF;
  v48.val[3].i64[1] = v40 & 0xF;
  v46.n128_u64[0] = 0x3737373737373737;
  v46.n128_u64[1] = 0x3737373737373737;
  return (*(a40 + 8 * v41))(v42 - 15, (v40 + 14) & 0xF, a4, (v40 & 0x10) - 16, 26233, a1, v43, v44, v45, xmmword_100BC76B0, vqtbl4q_s8(v48, xmmword_100BC76B0), v46);
}

uint64_t sub_1002CD6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  v6 = STACK[0xF18];
  STACK[0x98B8] = *(STACK[0xF18] + 8 * v5);
  return (*(v6 + 8 * (v5 ^ 0x3B24)))(a1, a2, a3, ((a4 - v4) | (((a4 - v4) < 0x52815A5E) << 32)) + 0x1D54AEB32616AAE5);
}

uint64_t sub_1002CD8C8()
{
  v1 = STACK[0xF18];
  STACK[0x9880] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 16851 + ((v0 + 16530) | 0x101E))))();
}

uint64_t sub_1002CD948()
{
  v1 = STACK[0xF10] - 787;
  *(STACK[0xAAF8] + 56) = v0 ^ (STACK[0xF10] - 1948992) & 0xA0FF7226 ^ 0xE773B63C8C506ADBLL;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1002CD9D0()
{
  v1 = STACK[0x8CD8];
  LODWORD(STACK[0x10EE0]) = (v0 - 21613) ^ (155453101 * ((~(&STACK[0x10000] + 3800) & 0x20FA041F | (&STACK[0x10000] + 3800) & 0xDF05FBE0) ^ 0xC6DC1FD0));
  STACK[0x10ED8] = v1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 22377)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1002CDAB0()
{
  v1 = STACK[0xF18];
  STACK[0x3620] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 ^ 0x28C4) + v0)))();
}

uint64_t sub_1002CDB30()
{
  v0 = STACK[0xF10];
  v1 = (STACK[0xF10] - 18403) | 0x2420;
  v2 = STACK[0xF10] - 34556;
  v3 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * (v2 ^ 0x13D4 ^ (14362 * (v0 - 572053294 < (v1 + 836922438))))))();
}

uint64_t sub_1002CDBA8()
{
  v1 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x7ADD ^ (v0 + 586864889) & 0xDD057BDF)))();
}

uint64_t sub_1002CDBFC()
{
  LODWORD(STACK[0xEC0]) = v3 + (((v4 ^ 0x52D38EDE) - 1389596382) ^ ((v4 ^ 0x3510D862) - 890296418) ^ ((v4 ^ 0xD17789FE ^ (v1 - 27446081)) + 1911123539)) - 1612383639;
  v5 = v0 + 189195471;
  v6 = ((2 * (v5 & v2 ^ 0xB8630F48)) ^ 0xF9A2550) & (v5 ^ 0xE9703648) ^ v5 & v2 ^ 0xB8630F48;
  v7 = ((2 * v5) ^ 0xADB85718) & (v5 ^ v2);
  v8 = ((4 * v6) ^ 0x63A0E9E0) & (v7 ^ 0x7F5C3BC0) ^ v6;
  v9 = ((4 * v7) ^ 0x822CD4C0) & (v7 ^ 0x7F5C3BC0);
  v10 = ((16 * v8) ^ 0xF96CCF40) & (v9 ^ 0x7F5C3BC0) ^ v8;
  v11 = ((16 * v9) ^ 0x8A9F87C0) & (v9 ^ 0x7F5C3BC0) ^ 0xC73F34C8;
  v12 = v10 ^ (v10 << 8) & 0xB8630F00 ^ ((v10 << 8) ^ 0x3F34C800) & v11 ^ 0x477C3380;
  LODWORD(STACK[0xED0]) = v5 ^ (2 * ((v12 << 16) & 0x38630000 ^ v12 ^ ((v12 << 16) ^ 0xF480000) & (((v11 << 8) ^ 0x630F0000) & v11 ^ 0x30000))) ^ 0x60E1EFED;
  return (*(STACK[0xF18] + 8 * ((38371 * (v1 == -2066199694)) ^ (v1 - 1627615286))))();
}

uint64_t sub_1002CDDD4()
{
  v3 = v1 + 1393671331;
  v4 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x64E5AD20)) ^ 0x64E5AD20;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  LODWORD(v11) = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v11;
  STACK[0xC240] = 0;
  STACK[0xC248] = v2 - 0x43D8CBFA0CEB42D4;
  v12 = 16777619 * (((1692773664 * v11) | 7) ^ (1692773664 * v11)) % 7;
  v13 = *(&STACK[0xC240] | v12);
  *(&STACK[0xC240] | v12) = 0;
  LOBYTE(STACK[0xC247]) = v13;
  v14 = 16777619 * (((1692773664 * v11) | 6) ^ (1692773664 * v11)) % 6;
  v15 = *(&STACK[0xC240] | v14);
  *(&STACK[0xC240] | v14) = STACK[0xC246];
  LOBYTE(STACK[0xC246]) = v15;
  v16 = 16777619 * (((1692773664 * v11) | 5) ^ (1692773664 * v11)) % 5;
  v17 = *(&STACK[0xC240] | v16);
  *(&STACK[0xC240] | v16) = STACK[0xC245];
  LOBYTE(STACK[0xC245]) = v17;
  v18 = STACK[0xC240];
  LOBYTE(STACK[0xC240]) = STACK[0xC244];
  LOBYTE(STACK[0xC244]) = v18;
  v19 = 16777619 * (((1692773664 * v11) | 3) ^ (1692773664 * v11)) % 3;
  v20 = *(&STACK[0xC240] | v19);
  *(&STACK[0xC240] | v19) = STACK[0xC243];
  LOBYTE(STACK[0xC243]) = v20;
  v21 = STACK[0xC241];
  LOBYTE(STACK[0xC242]) = STACK[0xC240];
  LOWORD(STACK[0xC240]) = v21;
  v22 = vdup_n_s32(1692773664 * v11);
  v23.i32[0] = v22.i32[0];
  v23.i32[1] = (1692773664 * v11) | 1;
  v24 = veor_s8(vmul_s32(v23, v22), v22);
  STACK[0xC240] = vmla_s32(v24, STACK[0xC240], vdup_n_s32(0x1000193u));
  STACK[0xC248] ^= STACK[0xC240];
  STACK[0xC248] = vmul_s32(vsub_s32(STACK[0xC248], v24), vdup_n_s32(0x359C449Bu));
  v25 = STACK[0xC24A];
  LOWORD(STACK[0xC249]) = STACK[0xC248];
  LOBYTE(STACK[0xC248]) = v25;
  v26 = (&STACK[0xC248] | v19);
  LOBYTE(v21) = *v26;
  *v26 = STACK[0xC24B];
  LOBYTE(STACK[0xC24B]) = v21;
  LOBYTE(v26) = STACK[0xC248];
  LOBYTE(STACK[0xC248]) = STACK[0xC24C];
  LOBYTE(STACK[0xC24C]) = v26;
  v27 = (&STACK[0xC248] | v16);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xC24D];
  LOBYTE(STACK[0xC24D]) = v26;
  v28 = (&STACK[0xC248] | v14);
  LOBYTE(v27) = *v28;
  *v28 = STACK[0xC24E];
  LOBYTE(STACK[0xC24E]) = v27;
  v29 = (&STACK[0xC248] | v12);
  v30 = *v29;
  *v29 = STACK[0xC24F];
  LOBYTE(STACK[0xC24F]) = v30;
  v31 = STACK[0xC248];
  v32 = (1692773664 * STACK[0xC248]) ^ v11;
  for (i = 1; i != 12; ++i)
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
  v43 = vdupq_n_s32(v32);
  v44.i64[0] = 0x1000000010;
  v44.i64[1] = 0x1000000010;
  do
  {
    v45 = *(v31 + v37);
    v46 = vmovl_high_u8(v45);
    v47 = vmovl_u8(*v45.i8);
    v49.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v40, v43), vsubq_s32(v40, v43)), v43), vmull_high_u16(v47, v42));
    v49.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v39, v43), vsubq_s32(v39, v43)), v43), vmull_u16(*v46.i8, 0x9B009B009B009BLL));
    v49.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v41, v43), vsubq_s32(v41, v43)), v43), vmull_u16(*v47.i8, 0x9B009B009B009BLL));
    v49.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v38, v43), vsubq_s32(v38, v43)), v43), vmull_high_u16(v46, v42));
    *(v31 + v37) = vqtbl4q_s8(v49, xmmword_100BC7660);
    v37 += 16;
    v41 = vaddq_s32(v41, v44);
    v40 = vaddq_s32(v40, v44);
    v39 = vaddq_s32(v39, v44);
    v38 = vaddq_s32(v38, v44);
  }

  while (v37 != 96);
  STACK[0xF70] = STACK[0xC248] + v0;
  return (*(STACK[0xF18] + 8 * (v3 ^ 0x5312E263 ^ (103730 * (v3 >= ((v3 + 443841823) & 0x9279B5D4 ^ 0xA12BA1FA))))))(&STACK[0xC000], v38, v39, v40, v41);
}

uint64_t sub_1002CE290()
{
  v0 = LODWORD(STACK[0x4C8]) | 0x161B;
  v1 = STACK[0xF18];
  v2 = STACK[0x4C0];
  STACK[0x6728] = *(STACK[0xF18] + 8 * SLODWORD(STACK[0x4C0]));
  return (*(v1 + 8 * ((v0 ^ 0x6649) + v2)))();
}

uint64_t sub_1002CE3A0()
{
  v1 = STACK[0xF10] - 24098;
  v2 = STACK[0xF10] - 3866;
  LODWORD(STACK[0x32B8]) = v0;
  return (*(STACK[0xF18] + 8 * (((4 * (((v1 ^ 0xF0002D19) & v0) == 1610612736)) | ((((v1 ^ 0xF0002D19) & v0) == 1610612736) << 6)) ^ v2)))();
}

uint64_t sub_1002CE568()
{
  v4 = v2 ^ 0x5B6A;
  v5 = *(v3 + 28);
  v6.i64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v6.i64[1] = 0x5F5F5F5F5F5F5F5FLL;
  *(v1 + ((v4 - 507181368) | 0x8104311u) + v0 - 3923101441) = veorq_s8(*(v3 + 44), v6);
  *(v0 + v1) = veorq_s8(v5, v6);
  return (*(STACK[0xF18] + 8 * v4))();
}

uint64_t sub_1002CE5C8()
{
  v2 = (v1 - 34445) | 0x4940;
  v3 = (v0 & 0x18) == ((((8 * v2) ^ 0x25A00) - 11512) | 0x8823u) - 35643;
  return (*(STACK[0xF18] + 8 * ((v3 | (16 * v3)) ^ v2)))();
}

uint64_t sub_1002CE628()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 4011) ^ v0)))();
}

uint64_t sub_1002CE688()
{
  STACK[0xB90] = v2;
  LODWORD(STACK[0xBE0]) = v3;
  return (*(STACK[0xF18] + 8 * (((((((2 * v0) ^ 0x13B54u) + 129616991) ^ v1) > 7) * (11881 * (v0 ^ 0x8A5A) - 35430)) ^ v0)))();
}

uint64_t sub_1002CE7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x98C8] = STACK[0x7BD0] + 1024;
  v5 = STACK[0xF18];
  STACK[0x98C0] = *(STACK[0xF18] + 8 * v4);
  return (*(v5 + 8 * (v4 ^ 0x44F8 ^ (6959 * (v4 ^ 0x90B)))))(3335, 4118177278, 176770430, a4, 4294921499, 4294949551);
}

uint64_t sub_1002CE8A8()
{
  v2 = v1 - 0x752A5C0F0D3D185ALL;
  v3 = STACK[0xA3D0] - 0x7FCBC9519D9981A2;
  v4 = v2 < (v0 ^ 0x8869u) + 938690693;
  v5 = v2 > v3;
  if (v4 != v3 < 0x37F34BD7)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((98 * v5) | (v0 - 11314))))();
}

uint64_t sub_1002CE994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  *v4 = -371865839;
  STACK[0x8830] = v5 + 0x27EAE90AB831AA60;
  *(v5 + 1172) = -371865839;
  STACK[0x4A78] = v5 + 0x11709D52AC497E57;
  *(v5 + 1176) = 0xE9D5C711E9D5C711;
  STACK[0x9080] = v5 + 0x74AEF492C247508BLL;
  return (*(STACK[0xF18] + 8 * ((31522 * (v3 == a3 - 371880810 + ((a3 - 1777232382) & 0x69EE37FD))) ^ a3)))(a1, a2, 371891535);
}

uint64_t sub_1002CEA58()
{
  v0 = STACK[0xF10] - 34742;
  *(STACK[0x6A78] + 24) = STACK[0x9894];
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x1F54)))();
}

uint64_t sub_1002CEAE8(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21.i64[0] = a6 + a5 + a7;
  v21.i64[1] = a6 + a5 - 4;
  v22 = v21;
  *&STACK[0xE80] = v21;
  v21.i64[0] = a6 + a5 - 1;
  v21.i64[1] = a6 + a5 - 2;
  v23 = v21;
  *&STACK[0xE70] = v21;
  v24.i64[0] = a6 + a5 - 5;
  v24.i64[1] = a6 + a5 - 6;
  v25.i64[0] = a6 + a5 - 7;
  STACK[0xE90] = *(a6 + a5 - 8);
  v25.i64[1] = a6 + a5 - 8;
  *&STACK[0xE60] = v25;
  v21.i64[0] = v13 + a5 + 7;
  v21.i64[1] = v13 + a5 + 6;
  v26 = v21;
  *&STACK[0xE20] = v21;
  v21.i64[0] = v13 + a5 + 9;
  v21.i64[1] = v13 + a5 + 8;
  v27 = v21;
  *&STACK[0xE00] = v21;
  v28.i64[0] = v13 + a5 + 5;
  v28.i64[1] = v13 + a5 + 4;
  v21.i64[0] = v13 + a5 + 3;
  v21.i64[1] = v13 + a5 + 2;
  v29 = v21;
  *&STACK[0xDF0] = v21;
  v30 = *&STACK[0xD20];
  v31 = vandq_s8(v25, *&STACK[0xD20]);
  v32 = vandq_s8(v24, *&STACK[0xD20]);
  v33 = vandq_s8(v23, *&STACK[0xD20]);
  v34 = vandq_s8(v22, *&STACK[0xD20]);
  v35 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v36 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v37 = vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL);
  v38 = vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL);
  v39 = vaddq_s64(v38, *&STACK[0xDE0]);
  v40 = vaddq_s64(v37, *&STACK[0xDE0]);
  v41 = vaddq_s64(v36, *&STACK[0xDE0]);
  v42 = vaddq_s64(v35, *&STACK[0xDE0]);
  v43 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v19, v38), *&STACK[0xCD0]), v39), vandq_s8(v39, *&STACK[0xCD0]));
  v44 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v19, v37), *&STACK[0xCD0]), v40), vandq_s8(v40, *&STACK[0xCD0]));
  v45 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v19, v36), *&STACK[0xCD0]), v41), vandq_s8(v41, *&STACK[0xCD0]));
  v46 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v19, v35), *&STACK[0xCD0]), v42), vandq_s8(v42, *&STACK[0xCD0]));
  v47 = veorq_s8(v46, *&STACK[0xDD0]);
  v48 = veorq_s8(v45, *&STACK[0xDD0]);
  v49 = veorq_s8(v44, *&STACK[0xDD0]);
  v50 = veorq_s8(v43, *&STACK[0xDD0]);
  v51 = veorq_s8(v43, *&STACK[0xDC0]);
  v52 = veorq_s8(v44, *&STACK[0xDC0]);
  v53 = veorq_s8(v45, *&STACK[0xDC0]);
  v54 = veorq_s8(v46, *&STACK[0xDC0]);
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v54);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v53);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v52);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v51);
  v59 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v55, *&STACK[0xDB0]), vorrq_s8(v55, *&STACK[0xCB0])), *&STACK[0xCB0]), *&STACK[0xDA0]);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v56, *&STACK[0xDB0]), vorrq_s8(v56, *&STACK[0xCB0])), *&STACK[0xCB0]), *&STACK[0xDA0]);
  v61 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v57, *&STACK[0xDB0]), vorrq_s8(v57, *&STACK[0xCB0])), *&STACK[0xCB0]), *&STACK[0xDA0]);
  v62 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v58, *&STACK[0xDB0]), vorrq_s8(v58, *&STACK[0xCB0])), *&STACK[0xCB0]), *&STACK[0xDA0]);
  v63 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v64 = veorq_s8(v61, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v65 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v66 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v66);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v65);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v64);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v63);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v67, *&STACK[0xD90]), vorrq_s8(v67, *&STACK[0xC90])), *&STACK[0xC90]), *&STACK[0xD80]);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v68, *&STACK[0xD90]), vorrq_s8(v68, *&STACK[0xC90])), *&STACK[0xC90]), *&STACK[0xD80]);
  v73 = vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v69, *&STACK[0xD90]), vorrq_s8(v69, *&STACK[0xC90])), *&STACK[0xC90]), *&STACK[0xD80]);
  v75 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v70, *&STACK[0xD90]), vorrq_s8(v70, *&STACK[0xC90])), *&STACK[0xC90]), *&STACK[0xD80]);
  v76 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v77 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v78 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v79 = veorq_s8(v71, v73);
  v80 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v81 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v79);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v78);
  v84 = vaddq_s64(v81, v77);
  v85 = vaddq_s64(v80, v76);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v85, v85), *&STACK[0xD70]), v85), *&STACK[0xD60]), *&STACK[0xD50]);
  v87 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v84, v84), *&STACK[0xD70]), v84), *&STACK[0xD60]), *&STACK[0xD50]);
  v88 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v83, v83), *&STACK[0xD70]), v83), *&STACK[0xD60]), *&STACK[0xD50]);
  v89 = vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL);
  v90 = vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL);
  v91 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v82, v82), *&STACK[0xD70]), v82), *&STACK[0xD60]), *&STACK[0xD50]);
  v92 = vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL);
  v93 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v94 = veorq_s8(v88, v92);
  v95 = veorq_s8(v87, v90);
  v96 = veorq_s8(v86, v89);
  v97 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v98 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v96);
  v100 = veorq_s8(vaddq_s64(v97, v93), *&STACK[0xD40]);
  v101 = veorq_s8(vaddq_s64(v98, v94), *&STACK[0xD40]);
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v95), *&STACK[0xD40]);
  v103 = veorq_s8(v99, *&STACK[0xD40]);
  v104 = vsubq_s64(vandq_s8(vaddq_s64(v103, v103), *&STACK[0xD30]), v103);
  v105 = vsubq_s64(vandq_s8(vaddq_s64(v102, v102), *&STACK[0xD30]), v102);
  v106 = vsubq_s64(vandq_s8(vaddq_s64(v101, v101), *&STACK[0xD30]), v101);
  *&STACK[0xE40] = vsubq_s64(vandq_s8(vaddq_s64(v100, v100), *&STACK[0xD30]), v100);
  v107 = vaddq_s64(v106, *&STACK[0xEB0]);
  v108 = vaddq_s64(v105, *&STACK[0xEB0]);
  v109 = veorq_s8(vaddq_s64(v104, *&STACK[0xEB0]), *&STACK[0xEA0]);
  v110 = vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL);
  v111 = veorq_s8(v108, *&STACK[0xEA0]);
  v112 = vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL);
  v113 = vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL);
  v114 = veorq_s8(v107, *&STACK[0xEA0]);
  *&STACK[0xE30] = vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL);
  v115 = veorq_s8(v114, v113);
  v116 = veorq_s8(v111, v112);
  v117 = veorq_s8(v109, v110);
  *&STACK[0xE10] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v116), v16);
  v119 = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v117), v16);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v122 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v123 = vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL);
  v124 = vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL);
  v125 = vandq_s8(v29, v30);
  v126 = vandq_s8(v28, v30);
  v127 = vandq_s8(v27, v30);
  v128 = vandq_s8(v26, v30);
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v122);
  v130 = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  v131 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121);
  v133 = vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL);
  v134 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v135 = veorq_s8(v132, v18);
  v136 = veorq_s8(v129, v18);
  v137 = vorrq_s8(vandq_s8(vsubq_s64(v19, v134), *&STACK[0xC40]), vandq_s8(vaddq_s64(v134, *&STACK[0xC50]), *&STACK[0xC30]));
  v138 = vorrq_s8(vandq_s8(vsubq_s64(v19, v133), *&STACK[0xC40]), vandq_s8(vaddq_s64(v133, *&STACK[0xC50]), *&STACK[0xC30]));
  v139 = veorq_s8(v138, *&STACK[0xC20]);
  v140 = veorq_s8(v137, *&STACK[0xC20]);
  v141 = veorq_s8(v137, *&STACK[0xBD0]);
  v142 = veorq_s8(v138, *&STACK[0xBD0]);
  v143 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v144 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v142);
  v145 = vdupq_n_s64(a3);
  v146 = veorq_s8(vaddq_s64(v143, v141), v145);
  v147 = veorq_s8(v144, v145);
  v148 = vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL);
  v149 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v150 = veorq_s8(v146, v148);
  v151 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v150);
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v149);
  v153 = vdupq_n_s64(v8);
  v154 = vsubq_s64(vorrq_s8(vaddq_s64(v151, v151), v153), v151);
  v155 = vdupq_n_s64(v9);
  v156 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v152, v152), v153), v152), v155);
  v157 = vdupq_n_s64(v10);
  v158 = veorq_s8(v156, v157);
  v159 = veorq_s8(vaddq_s64(v154, v155), v157);
  v160 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v136, v136), v17), v136), *&STACK[0xCA0]), v20);
  v161 = vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL);
  v162 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v163 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v135, v135), v17), v135), *&STACK[0xCA0]), v20);
  v164 = veorq_s8(v158, v161);
  v165 = veorq_s8(v163, v124);
  v166 = vdupq_n_s64(v14);
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v164), v166);
  v168 = veorq_s8(v160, v123);
  v169 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v170 = vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL);
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v162), v166);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v173 = vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL);
  v174 = vdupq_n_s64(a2);
  v175 = vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL);
  v176 = veorq_s8(vaddq_s64(v170, v169), v174);
  v177 = vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL);
  v178 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172), v174);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v180 = veorq_s8(v176, v177);
  v181 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179), v16);
  v182 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v180), v16);
  v183 = vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL);
  v184 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v185 = veorq_s8(v181, v183);
  v186 = vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL);
  v187 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v185);
  v188 = vaddq_s64(v186, v184);
  v189 = vaddq_s64(v175, v168);
  v190 = vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL);
  v191 = vdupq_n_s64(v15);
  v192 = veorq_s8(v187, v191);
  v193 = vaddq_s64(v173, v165);
  v194 = veorq_s8(v192, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v195 = vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL);
  v196 = vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), *&STACK[0xD00]));
  v197 = veorq_s8(v188, v191);
  v198 = vaddq_s64(v195, v194);
  v199 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), veorq_s8(v197, v190)), *&STACK[0xC60]), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), *&STACK[0xD00])));
  v200 = veorq_s8(*&STACK[0xE10], v16);
  v258.val[3] = veorq_s8(vshlq_u64(veorq_s8(v193, *&STACK[0xC60]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xE60], 3uLL), *&STACK[0xD00]))), vshlq_u64(veorq_s8(v198, *&STACK[0xC60]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xDF0], 3uLL), *&STACK[0xD00]))));
  v258.val[2] = veorq_s8(vshlq_u64(veorq_s8(v189, *&STACK[0xC60]), v196), v199);
  v201 = veorq_s8(v200, v119);
  v202 = vorrq_s8(vandq_s8(vsubq_s64(v19, v131), *&STACK[0xC40]), vandq_s8(vaddq_s64(v131, *&STACK[0xC50]), *&STACK[0xC30]));
  v203 = vorrq_s8(vandq_s8(vsubq_s64(v19, v130), *&STACK[0xC40]), vandq_s8(vaddq_s64(v130, *&STACK[0xC50]), *&STACK[0xC30]));
  v204 = veorq_s8(v202, *&STACK[0xC20]);
  v205 = vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL);
  v206 = vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL);
  v207 = vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL);
  v208 = veorq_s8(v202, *&STACK[0xBD0]);
  v209 = veorq_s8(vaddq_s64(v206, v208), v145);
  v210 = veorq_s8(v209, vsraq_n_u64(vshlq_n_s64(v208, 3uLL), v208, 0x3DuLL));
  v211 = veorq_s8(vaddq_s64(v205, v201), v18);
  v212 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL), v210);
  v213 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v212, v212), v153), v212), v155), v157);
  v214 = veorq_s8(v213, vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL));
  v215 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v211, v211), v17), v211), *&STACK[0xCA0]), v20);
  v216 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL), v214), v166);
  v217 = veorq_s8(v216, vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL));
  v218 = veorq_s8(v215, v207);
  v219 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL), v217), v174);
  v220 = veorq_s8(v219, vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL));
  v221 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), v218);
  v222 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL), v220), v16);
  v223 = veorq_s8(v222, vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL));
  v224 = vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL);
  v225 = vshlq_u64(veorq_s8(v221, *&STACK[0xC60]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xE70], 3uLL), *&STACK[0xD00])));
  v226 = veorq_s8(vaddq_s64(v224, v223), v191);
  v258.val[0] = veorq_s8(v225, vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), veorq_s8(v226, vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL))), *&STACK[0xC60]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xE00], 3uLL), *&STACK[0xD00]))));
  v227 = veorq_s8(v203, *&STACK[0xC20]);
  v228 = vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL);
  v229 = veorq_s8(vaddq_s64(*&STACK[0xE40], *&STACK[0xEB0]), *&STACK[0xEA0]);
  v230 = veorq_s8(v203, *&STACK[0xBD0]);
  v231 = veorq_s8(vaddq_s64(v228, v230), v145);
  v232 = veorq_s8(v229, *&STACK[0xE30]);
  v233 = veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL));
  v234 = vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL);
  v235 = vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL);
  v236 = vaddq_s64(v234, v233);
  v237 = veorq_s8(vaddq_s64(v235, v232), v16);
  v238 = veorq_s8(v237, vsraq_n_u64(vshlq_n_s64(v232, 3uLL), v232, 0x3DuLL));
  v239 = vsraq_n_u64(vshlq_n_s64(v237, 0x38uLL), v237, 8uLL);
  v240 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v236, v236), v153), v236), v155), v157);
  v241 = vsraq_n_u64(vshlq_n_s64(v233, 3uLL), v233, 0x3DuLL);
  v242 = vsraq_n_u64(vshlq_n_s64(v238, 3uLL), v238, 0x3DuLL);
  v243 = veorq_s8(v240, v241);
  v244 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL), v243), v166);
  v245 = veorq_s8(vaddq_s64(v239, v238), v18);
  v246 = veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL));
  v247 = vsubq_s64(vandq_s8(vaddq_s64(v245, v245), v17), v245);
  v248 = vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL);
  v249 = veorq_s8(vaddq_s64(v247, *&STACK[0xCA0]), v20);
  v250 = veorq_s8(v249, v242);
  v251 = veorq_s8(vaddq_s64(v248, v246), v174);
  v252 = veorq_s8(v251, vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL));
  v253 = vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL);
  v254 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251, 0x38uLL), v251, 8uLL), v252), v16);
  v255 = veorq_s8(v254, vsraq_n_u64(vshlq_n_s64(v252, 3uLL), v252, 0x3DuLL));
  v256 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v254, 0x38uLL), v254, 8uLL), v255), v191);
  v258.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v253, v250), *&STACK[0xC60]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xE80], 3uLL), *&STACK[0xD00]))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL), veorq_s8(v256, vsraq_n_u64(vshlq_n_s64(v255, 3uLL), v255, 0x3DuLL))), *&STACK[0xC60]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xE20], 3uLL), *&STACK[0xD00]))));
  *(v13 + a5 + 2) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v258, *&STACK[0xBE0])), STACK[0xE90]);
  return (*(STACK[0xF18] + 8 * (((v12 == 0) * v11) ^ v7)))();
}

uint64_t sub_1002CF5E0(__n128 a1)
{
  v4[-1] = a1;
  *v4 = a1;
  return (*(v5 + 8 * ((31 * ((v3 ^ (v1 == 0)) & 1)) ^ (v2 + 643))))();
}

uint64_t sub_1002CF618@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 - 21493 + a1 + 25360)))();
}

uint64_t sub_1002CF694@<X0>(int a1@<W8>)
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
  STACK[0xBF00] = 0;
  STACK[0xBF08] = v1;
  v12 = 16777619 * ((553300517 * v11 + 7) ^ (553300517 * v11)) % 7;
  v13 = 16777619 * ((553300517 * v11 + 6) ^ (553300517 * v11)) % 6;
  v14 = 16777619 * ((553300517 * v11 + 5) ^ (553300517 * v11)) % 5;
  v15 = *(&STACK[0xBF00] | v12);
  *(&STACK[0xBF00] | v12) = STACK[0xBF07];
  v16 = *(&STACK[0xBF00] | v13);
  *(&STACK[0xBF00] | v13) = STACK[0xBF06];
  v17 = *(&STACK[0xBF00] | v14);
  *(&STACK[0xBF00] | v14) = STACK[0xBF05];
  v18 = 16777619 * ((553300517 * v11 + 3) ^ (553300517 * v11)) % 3;
  v19 = vdup_n_s32(553300517 * v11);
  v20.i32[0] = v19.i32[0];
  v20.i32[1] = 553300517 * v11 + 1;
  LOBYTE(STACK[0xBF07]) = v15;
  v21 = veor_s8(vmul_s32(v20, v19), v19);
  LOBYTE(STACK[0xBF06]) = v16;
  LOBYTE(STACK[0xBF05]) = v17;
  v22 = STACK[0xBF00];
  LOBYTE(STACK[0xBF00]) = STACK[0xBF04];
  LOBYTE(STACK[0xBF04]) = v22;
  v23 = *(&STACK[0xBF00] | v18);
  *(&STACK[0xBF00] | v18) = STACK[0xBF03];
  LOBYTE(STACK[0xBF03]) = v23;
  v24 = STACK[0xBF01];
  LOBYTE(STACK[0xBF02]) = STACK[0xBF00];
  LOWORD(STACK[0xBF00]) = v24;
  STACK[0xBF00] = vmla_s32(v21, STACK[0xBF00], vdup_n_s32(0x1000193u));
  v25 = STACK[0xBF08];
  v26 = (553300517 * STACK[0xBF08]) ^ v11;
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
    v55.val[1] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7690), veorq_s8(v27, vmulq_s32(vaddq_s32(v30, v27), vsubq_s32(v30, v27))));
    v55.val[0] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC76A0), veorq_s8(v27, vmulq_s32(vaddq_s32(v31, v27), vsubq_s32(v31, v27))));
    v55.val[2] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7680), veorq_s8(v27, vmulq_s32(vaddq_s32(v29, v27), vsubq_s32(v29, v27))));
    v55.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7670), v27), vmulq_s32(vaddq_s32(v28, v27), vsubq_s32(v28, v27)));
    *(v25 + v2) = vmulq_s8(vqtbl4q_s8(v55, xmmword_100BC7660), v33);
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
  do
  {
    v32.i64[0] = *(v40 + v36);
    v54.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v32, xmmword_100BC7690), v38), vmulq_s32(vaddq_s32(v37, v38), vsubq_s32(v37, v38)));
    v54.val[0] = veorq_s8(vqtbl1q_s8(v32, xmmword_100BC76A0), veorq_s8(v38, vmulq_s32(vaddq_s32(v39, v38), vsubq_s32(v39, v38))));
    v32 = vqtbl2q_s8(v54, xmmword_100F52AD0);
    *(v40 + v36) = vmul_s8(*v32.i8, 0x9393939393939393);
    v39 = vaddq_s32(v39, v41);
    v37 = vaddq_s32(v37, v41);
    v36 += 8;
  }

  while (v36 != 8);
  v42 = 72;
  do
  {
    v43 = 16777619 * ((v26 + v42) ^ v26) % v42;
    v44 = *(v25 + 8 * v43) ^ *(v25 + 8 * v42);
    *(v25 + 8 * v42) = v44;
    v45 = *(v25 + 8 * v43) ^ v44;
    *(v25 + 8 * v43) = v45;
    *(v25 + 8 * v42) ^= v45;
    v46 = v42-- + 1;
  }

  while (v46 > 2);
  v47 = *(&STACK[0xBF08] + v12);
  *(&STACK[0xBF08] + v12) = STACK[0xBF0F];
  LOBYTE(STACK[0xBF0F]) = v47;
  v48 = *(&STACK[0xBF08] + v13);
  *(&STACK[0xBF08] + v13) = STACK[0xBF0E];
  LOBYTE(STACK[0xBF0E]) = v48;
  v49 = *(&STACK[0xBF08] + v14);
  *(&STACK[0xBF08] + v14) = STACK[0xBF0D];
  LOBYTE(STACK[0xBF0D]) = v49;
  v50 = STACK[0xBF08];
  LOBYTE(STACK[0xBF08]) = STACK[0xBF0C];
  LOBYTE(STACK[0xBF0C]) = v50;
  v51 = *(&STACK[0xBF08] + v18);
  *(&STACK[0xBF08] + v18) = STACK[0xBF0B];
  LOBYTE(STACK[0xBF0B]) = v51;
  v52 = STACK[0xBF09];
  LOBYTE(STACK[0xBF0A]) = STACK[0xBF08];
  LOWORD(STACK[0xBF08]) = v52;
  STACK[0xBF08] = vmla_s32(v21, STACK[0xBF08], vdup_n_s32(0x1000193u));
  *STACK[0x940] = STACK[0xBF08] ^ STACK[0xBF00];
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1002CFB74()
{
  v0 = STACK[0xF10] + 271;
  v1 = STACK[0x6B00];
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))(*(STACK[0x6B00] + 304));
  *(v1 + 304) = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1002CFBBC()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 19945)))();
  *(v0 + 720) = 0;
  *(v0 + 728) = -371865839;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1002CFBF0()
{
  v2 = 1603510583 * ((~(&STACK[0x10000] + 3800) & 0x9FDFD004 | (&STACK[0x10000] + 3800) & 0x60202FF8) ^ 0x804E2AF);
  STACK[0x10EE0] = *(STACK[0x8408] - 0x427A3CD3E8C5DA2FLL);
  LODWORD(STACK[0x10EE8]) = v1 - v2 - 28018;
  LODWORD(STACK[0x10EEC]) = v0 - v2 - 672734622;
  LODWORD(STACK[0x10EDC]) = -1826625867 - v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 16978)))(&STACK[0x10ED8]);
  v5 = STACK[0x4310];
  v6 = STACK[0x2C08];
  *(*v5 + 72 * v6 + 24) = STACK[0x10ED8];
  return (*(v3 + 8 * ((241 * (*(*v5 + 72 * v6 + 24) != (((v1 - 33055) | 0x1000) ^ 0xE9D5D05C))) ^ v1)))(v4);
}

uint64_t sub_1002CFD08@<X0>(int a1@<W8>)
{
  v3 = v1 < 0x2F030A4B;
  if (v3 == (v2 + 1) > 0xD0FCF5B4)
  {
    v3 = v2 + 788728396 < v1;
  }

  return (*(STACK[0xF18] + 8 * (((((a1 - 29217) | 0x4024) - 22802) * !v3) ^ (a1 - 111))))();
}

uint64_t sub_1002CFE18()
{
  v3 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x64E5AD20)) ^ 0x64E5AD20;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  LODWORD(v10) = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  STACK[0xC1E0] = 0;
  STACK[0xC1E8] = v2 - 0x43D8CBFA0CEB42D4;
  v11 = 16777619 * (((1692773664 * v10) | 7) ^ (1692773664 * v10)) % 7;
  v12 = *(&STACK[0xC1E0] | v11);
  *(&STACK[0xC1E0] | v11) = 0;
  LOBYTE(STACK[0xC1E7]) = v12;
  v13 = 16777619 * (((1692773664 * v10) | 6) ^ (1692773664 * v10)) % 6;
  v14 = *(&STACK[0xC1E0] | v13);
  *(&STACK[0xC1E0] | v13) = STACK[0xC1E6];
  LOBYTE(STACK[0xC1E6]) = v14;
  v15 = 16777619 * (((1692773664 * v10) | 5) ^ (1692773664 * v10)) % 5;
  v16 = *(&STACK[0xC1E0] | v15);
  *(&STACK[0xC1E0] | v15) = STACK[0xC1E5];
  LOBYTE(STACK[0xC1E5]) = v16;
  v17 = STACK[0xC1E0];
  LOBYTE(STACK[0xC1E0]) = STACK[0xC1E4];
  LOBYTE(STACK[0xC1E4]) = v17;
  v18 = 16777619 * (((1692773664 * v10) | 3) ^ (1692773664 * v10)) % 3;
  v19 = *(&STACK[0xC1E0] | v18);
  *(&STACK[0xC1E0] | v18) = STACK[0xC1E3];
  LOBYTE(STACK[0xC1E3]) = v19;
  v20 = STACK[0xC1E1];
  LOBYTE(STACK[0xC1E2]) = STACK[0xC1E0];
  LOWORD(STACK[0xC1E0]) = v20;
  v21 = vdup_n_s32(1692773664 * v10);
  v22.i32[0] = v21.i32[0];
  v22.i32[1] = (1692773664 * v10) | 1;
  v23 = veor_s8(vmul_s32(v22, v21), v21);
  STACK[0xC1E0] = vmla_s32(v23, STACK[0xC1E0], vdup_n_s32(0x1000193u));
  STACK[0xC1E8] ^= STACK[0xC1E0];
  STACK[0xC1E8] = vmul_s32(vsub_s32(STACK[0xC1E8], v23), vdup_n_s32(0x359C449Bu));
  v24 = STACK[0xC1EA];
  LOWORD(STACK[0xC1E9]) = STACK[0xC1E8];
  LOBYTE(STACK[0xC1E8]) = v24;
  v25 = (&STACK[0xC1E8] | v18);
  LOBYTE(v20) = *v25;
  *v25 = STACK[0xC1EB];
  LOBYTE(STACK[0xC1EB]) = v20;
  LOBYTE(v25) = STACK[0xC1E8];
  LOBYTE(STACK[0xC1E8]) = STACK[0xC1EC];
  LOBYTE(STACK[0xC1EC]) = v25;
  v26 = (&STACK[0xC1E8] | v15);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC1ED];
  LOBYTE(STACK[0xC1ED]) = v25;
  v27 = (&STACK[0xC1E8] | v13);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xC1EE];
  LOBYTE(STACK[0xC1EE]) = v26;
  v28 = (&STACK[0xC1E8] | v11);
  v29 = *v28;
  *v28 = STACK[0xC1EF];
  LOBYTE(STACK[0xC1EF]) = v29;
  v30 = STACK[0xC1E8];
  v31 = (1692773664 * STACK[0xC1E8]) ^ v10;
  for (i = 1; i != 12; ++i)
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
  v42 = vdupq_n_s32(v31);
  v43.i64[0] = 0x1000000010;
  v43.i64[1] = 0x1000000010;
  do
  {
    v44 = *(v30 + v36);
    v45 = vmovl_high_u8(v44);
    v46 = vmovl_u8(*v44.i8);
    v48.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v39, v42), vsubq_s32(v39, v42)), v42), vmull_high_u16(v46, v41));
    v48.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v38, v42), vsubq_s32(v38, v42)), v42), vmull_u16(*v45.i8, 0x9B009B009B009BLL));
    v48.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v40, v42), vsubq_s32(v40, v42)), v42), vmull_u16(*v46.i8, 0x9B009B009B009BLL));
    v48.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v37, v42), vsubq_s32(v37, v42)), v42), vmull_high_u16(v45, v41));
    *(v30 + v36) = vqtbl4q_s8(v48, xmmword_100BC7660);
    v36 += 16;
    v40 = vaddq_s32(v40, v43);
    v39 = vaddq_s32(v39, v43);
    v38 = vaddq_s32(v38, v43);
    v37 = vaddq_s32(v37, v43);
  }

  while (v36 != 96);
  STACK[0x7FA0] = STACK[0xC1E8] + v1;
  return (*(STACK[0xF18] + 8 * ((7900 * (v0 != 5 * (v0 ^ 0x441CB41B) + 1282855685)) ^ (v0 - 1142714348))))(&STACK[0xC000], v37, v38, v39, v40);
}

uint64_t sub_1002D0264()
{
  v3 = STACK[0x6D7C];
  v4 = *(v1 + 184);
  STACK[0x7690] += (3 * (v0 ^ 0x4A6Du)) ^ 0x8B6BLL;
  LODWORD(STACK[0xDC0]) = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  STACK[0x390] = v4;
  v7 = v5 || v4 == 0;
  return (*(STACK[0xF18] + 8 * ((v7 * ((v0 + 10039) ^ 0x8B30)) ^ v0)))();
}

uint64_t sub_1002D02E4()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 41243)))((16 * (v1 - ((2 * v1) & 0x6180302)) + 817895440) ^ v0 ^ 0xA246 ^ 0x30C0932Bu);
  STACK[0x8730] = v3;
  return (*(v2 + 8 * ((48406 * (v3 == 0)) ^ v0)))();
}

uint64_t sub_1002D0370()
{
  v1 = STACK[0x3918];
  v2 = ((v1[1] << (((v0 + 37) & 0x3Fu) - 11)) + ((*v1 ^ 0x5Fu) << 56) + (v1[2] << 40) + ((v1[3] ^ 0x5Fu) << 32) + (v1[4] << 24) + (((v0 + 101) ^ 0x64u ^ v1[5]) << 16) + ((v1[6] ^ 0x5FLL) << 8)) | v1[7] ^ 0x5FLL;
  STACK[0x3138] = (v2 ^ 0xEBB1A19C90BD6DCFLL) + 0x36FF77FBB9DFD3F9 + ((2 * v2) & 0xD7DDFD399F7ADB9ELL ^ 0x9CBC009E000000);
  LODWORD(STACK[0x3E80]) = 8;
  v3 = STACK[0x6010];
  LODWORD(STACK[0xB758]) = STACK[0x6010];
  return (*(STACK[0xF18] + 8 * ((49 * (v3 != -371865839)) ^ v0)))();
}

uint64_t sub_1002D0608()
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393380;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002D0674(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xF10] - 27257;
  v3 = *STACK[0x2880] - 101;
  v4 = STACK[0x637F];
  *(((STACK[0xF10] - 35511) | 0x6131) + v3 + STACK[0x4690] - 25012) = LOBYTE(STACK[0x637F]) - 9;
  LODWORD(STACK[0x761C]) = v3 + 2;
  v5 = v4 & 0x47 ^ 0xE8;
  STACK[0x95A0] = STACK[0x8BB0];
  LOWORD(STACK[0x79DE]) = (v4 ^ (2 * ((v4 ^ 0x76) & (2 * ((v4 ^ 0x76) & (2 * ((v4 ^ 0x76) & (2 * ((v4 ^ 0x76) & (2 * ((v4 ^ 0x76) & (2 * ((v4 ^ 0x76) & (2 * v4) & 0xEE ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5))) ^ 0x1BFA;
  LODWORD(STACK[0x16B4]) = -420195932;
  return (*(STACK[0xF18] + 8 * v2))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_1002D08B8()
{
  v1 = (v0 + 25267) | 0x11;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16238)))();
  return (*(v2 + 8 * (v1 - 25284)))(v3);
}

uint64_t sub_1002D0934(unint64_t a1)
{
  STACK[0xC60] = v3;
  STACK[0xC70] = v2;
  v4 = *(STACK[0xF18] + 8 * v1);
  STACK[0xC90] = a1 - 1277883762;
  STACK[0xCF0] = a1;
  STACK[0xCA0] = a1 - 1277883754;
  *&STACK[0xC80] = vdupq_n_s64(0x38uLL);
  *&STACK[0xE70] = xmmword_100F523B0;
  *&STACK[0xD40] = xmmword_100BC76B0;
  *&STACK[0xE60] = vdupq_n_s64(0x9B1C7427651E0F18);
  *&STACK[0xE40] = vdupq_n_s64(0xD6916AF990E79581);
  *&STACK[0xE30] = vdupq_n_s64(0x1D3BCD708988B1A1uLL);
  *&STACK[0xE20] = vdupq_n_s64(0x96E95066F186A7EuLL);
  *&STACK[0xE10] = vdupq_n_s64(0xE2C4328F76774E5ELL);
  *&STACK[0xE00] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0xDF0] = vdupq_n_s64(0xE5E62B6C8A507A2CLL);
  *&STACK[0xDE0] = vdupq_n_s64(0x516D7CA00D6CD622uLL);
  *&STACK[0xDD0] = vdupq_n_s64(0xAD6687B613E69E68);
  *&STACK[0xDC0] = vdupq_n_s64(0xA94CBC24F60CB0CBLL);
  *&STACK[0xDB0] = vdupq_n_s64(0xBDF6BB6ED994DF2ELL);
  *&STACK[0xDA0] = vdupq_n_s64(0x2C378843F9A46E98uLL);
  *&STACK[0xD90] = vdupq_n_s64(0xBD7D2DE9C10AA16ALL);
  *&STACK[0xD80] = vdupq_n_s64(0x63EC2BFAC13B3147uLL);
  *&STACK[0xD70] = vdupq_n_s64(0xE15CABED7E78F12ELL);
  *&STACK[0xD60] = vdupq_n_s64(0xAA9DDABAE2E4D47CLL);
  *&STACK[0xD50] = vdupq_n_s64(0x8FB22143FEDB6CB3);
  *&STACK[0xEC0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  return v4(1346337803);
}

uint64_t sub_1002D0B6C()
{
  v0 = STACK[0xF10] - 1790;
  v1 = STACK[0xA3FC];
  v2 = LODWORD(STACK[0xB56C]) + ((75 * (STACK[0xF10] ^ 0x891A)) ^ 0x1C0C8149) + (((v1 ^ 0xE7DC9ADF) + 404972833) ^ ((v1 ^ 0x519C1CD7) - 1369185495) ^ ((v1 ^ 0x5F954119) - 1603617049));
  LODWORD(STACK[0xA400]) = v2 - 842422225;
  v3 = v2 + 785581859;
  v5 = (((v1 ^ 0x8AB04D61) + 1968157343) ^ ((v1 ^ 0xEA02F749) + 368904375) ^ ((v1 ^ 0x89677D39) + 1989706439)) + 1775617809 < 0x80000008 || v3 >= 0;
  return (*(STACK[0xF18] + 8 * ((119 * v5) ^ v0)))();
}

uint64_t sub_1002D0D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 16) + a3 == ((v3 - 2012416453) & 0x77F2DD7E ^ 0x10CFDE18);
  }

  v8 = v5 || *(a1 + 24) == 0 || *(a1 + 8) == 0;
  return (*(v4 + 8 * ((v8 * (((v3 + 28293483) & 0xFE4FD61E) - 21457)) ^ v3)))();
}

uint64_t sub_1002D0DD4()
{
  *(v1 + 32) = 0x1000000000;
  *(v1 + 40) = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002D0DFC@<X0>(int a1@<W8>)
{
  v1 = ((STACK[0xADD8] ^ 0xA19AE31557932900) + 527756062) ^ STACK[0xADD8] ^ ((STACK[0xADD8] ^ 0xAFE22D9683F8219CLL) + 3407864706u) ^ ((STACK[0xADD8] ^ 0x1C6DE8C1) + 1418341085) ^ ((STACK[0xADD8] ^ ((a1 - 5812) + 2132722077)) + ((a1 + 22629) ^ 0x37F99498));
  STACK[0xB00] = v1;
  return (*(STACK[0xF18] + 8 * ((473 * (v1 != 3071819234)) ^ a1)))();
}

uint64_t sub_1002D0F58()
{
  *STACK[0x5520] = STACK[0x3A70];
  *(STACK[0x6BE0] - 0x32965FC7A5F7965BLL) = STACK[0x8188];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002D10BC()
{
  v0 = STACK[0xF10] - 35249;
  v1 = STACK[0xF10] + 6931;
  v2 = STACK[0xA810];
  LODWORD(STACK[0x99E0]) = LODWORD(STACK[0xA810]) - 890260044;
  v2 += 1231110116;
  v3 = v2 < 0xA1B833DC;
  v4 = v2 > LODWORD(STACK[0x36E8]) + (v0 ^ 0xA1B83256);
  if (v3 != LODWORD(STACK[0x36E8]) > 0x5E47CC23)
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((28 * v4) ^ v1)))();
}

uint64_t sub_1002D115C(uint64_t a1, int a2, char a3, char a4)
{
  v12 = v5 - 1;
  *(a1 + v12) = ((((((v6 ^ 0x93) - 103) ^ v6 ^ ((v6 ^ 0xC2) - 54) ^ ((v6 ^ 0xFA) + ((v4 + 96) ^ 0x92)) ^ ((v6 ^ v11) + 85) ^ 0x89) + 110) ^ ((((v6 ^ 0x93) - 103) ^ v6 ^ ((v6 ^ 0xC2) - 54) ^ ((v6 ^ 0xFA) + ((v4 + 96) ^ 0x92)) ^ ((v6 ^ v11) + 85) ^ 0x67) + a3) ^ ((((v6 ^ 0x93) - 103) ^ v6 ^ ((v6 ^ 0xC2) - 54) ^ ((v6 ^ 0xFA) + ((v4 + 96) ^ 0x92)) ^ ((v6 ^ v11) + 85) ^ a4) + v7)) + v8) * (v6 + v9) + 52 * v6 + v10;
  return (*(STACK[0xF18] + 8 * (v4 ^ a2 ^ (62 * (((v12 - v4) | (v4 - v12)) >= 0)))))();
}

uint64_t sub_1002D1264@<X0>(int a1@<W8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>, __n128 a6@<Q4>)
{
  v7 = *(STACK[0x9C0] - 1401400883) != (a1 + 47) || *(STACK[0x9A0] - 228216043) == ((7 * (a1 ^ 0xAADF)) ^ 0x155B);
  v8.n128_u64[0] = 0x8000000080000000;
  v8.n128_u64[1] = 0x8000000080000000;
  return (*(STACK[0xF18] + 8 * ((35 * v7) ^ a1)))(a2, a3, a4, a5, a6, v8, *&STACK[0xCE0], *&STACK[0xCD0]);
}

uint64_t sub_1002D1380@<X0>(int a1@<W8>)
{
  v5 = v2 == v1;
  v6 = ((303 * (a1 ^ 0xAD57)) ^ 0x8C1AE84A) + (((v4 ^ 0x2900C071) - 828588423) ^ ((v4 ^ 0xC4CA1327) + 592866607) ^ ((v4 ^ 0x1C7C95B1) - 69145671));
  v8 = v6 < 0xA244AE10 || (v3 | 0xA244AE10) < v6;
  return (*(STACK[0xF18] + 8 * ((963 * (v4 != -239712537 && v8 && v5)) ^ a1)))();
}

uint64_t sub_1002D14A4()
{
  v0 = STACK[0xF10] - 33627;
  STACK[0x74F8] = &STACK[0x300C];
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x238B)))(&STACK[0x10DF0]);
}

uint64_t sub_1002D15E8()
{
  v2 = STACK[0x87C0];
  STACK[0x10EE0] = STACK[0x8ED0];
  STACK[0x10EF0] = v2;
  LODWORD(STACK[0x10ED8]) = v0 - ((&STACK[0x10000] + 3800) ^ 0xE6261BCF) * v1 - 3713;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0x5DE8)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (((LODWORD(STACK[0x10EE8]) == -371865839) * (((v0 - 532388581) & 0x1FBB8FBB) - 35429)) ^ v0)))(v4);
}

uint64_t sub_1002D1730@<X0>(uint64_t a1@<X8>)
{
  *v1 = -1436385465;
  *(a1 + 20) = 0x8241290682412906;
  *(a1 + 28) = 0x8241290682412906;
  *(a1 + 36) = 0x64DEF2832FC114D3;
  *(a1 + 156) = 0x45037CDE1622CB84;
  *(a1 + 168) = 0x981390C2FED9246;
  *(a1 + 176) = 0x981390C2FED9246;
  *(a1 + 184) = 0xE9D5C711E9D5C711;
  *(a1 + 192) = -371865839;
  *(a1 + 200) = 0;
  *(a1 + 208) = -371865839;
  *(a1 + 264) = -371865839;
  v3 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * (((v2 - 1424566149) & 0x54E97BFB ^ 0x657B) + v2)))();
}

uint64_t sub_1002D1808()
{
  v1.n128_u64[0] = 0xA0A0A0A0A0A0A0A0;
  v1.n128_u64[1] = 0xA0A0A0A0A0A0A0A0;
  return (*(STACK[0xF18] + 8 * (v0 + 7756)))(v1);
}

uint64_t sub_1002D1838()
{
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762644160) ^ (906386353 * ((((2 * (&STACK[0x10000] + 3800)) | 0xA42ECCC) - (&STACK[0x10000] + 3800) - 86079078) ^ 0x3420BB42));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 33386)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (((*STACK[0x970] > ((v0 - 1157863072) & 0x4503DF7D) - 37165) * (((v0 - 15927) | 0x8123) ^ 0x42F4)) ^ v0)))(v2);
}

uint64_t sub_1002D1A00()
{
  v1 = STACK[0xF10] + 4123;
  LODWORD(STACK[0x7130]) = v0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1002D1A6C()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x9D5E ^ (v0 + 30349))))();
}

uint64_t sub_1002D1AB0()
{
  v0 = STACK[0xF10] + 8936;
  STACK[0x7690] = STACK[0x7690] - 16005 + ((STACK[0xF10] - 1680542534) & 0x642ABDFF);
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002D1BA8(uint64_t a1, uint64_t a2)
{
  STACK[0x2500] = 0;
  LODWORD(STACK[0x3A94]) = -371865839;
  return (*(STACK[0xF18] + 8 * (((v3 == v2 - 371879983) * (v2 + 24015)) ^ v2)))(a1, a2, 371891535);
}

uint64_t sub_1002D1C94()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 1415443437) & 0xABA26F79 ^ 0x74A2) + v0)))();
}

uint64_t sub_1002D1CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 7 * (STACK[0xF10] ^ 0x92FC);
  v6 = STACK[0xF10] - 26256;
  v7 = STACK[0x3AC4];
  LODWORD(STACK[0xEA0]) = v5;
  LODWORD(STACK[0x3AC4]) = v7 + v5 - 46189;
  return (*(STACK[0xF18] + 8 * ((29 * ((((*(STACK[0x6850] + 64) ^ 0xFD5790E4) + 44592924) ^ ((*(STACK[0x6850] + 64) ^ 0x51DB91B0) - 1373344176) ^ ((*(STACK[0x6850] + 64) ^ 0x4559C645) - 1163511365)) == 371865839)) ^ v6)))(a1, a2, STACK[0x8C8], a4, v4, STACK[0x8D0]);
}

uint64_t sub_1002D1DC4()
{
  *(v0 + 72 * v2 + 24) = -371865839;
  *(*v3 + 72 * v2 + 32) = 0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1002D1E44()
{
  v0 = STACK[0xF10] - 20740;
  *STACK[0x9368] |= 0x100u;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002D2020()
{
  LODWORD(STACK[0x5144]) = v0;
  v2 = v0 + 370978239 + (((LODWORD(STACK[0xE80]) ^ 0xBA346A22) + 1170970078) ^ ((LODWORD(STACK[0xE80]) ^ 0x390CBBD3) - 957135827) ^ (((5 * (((v1 - 28118) | 0x8113) ^ 0x8F92) + 1793916819) ^ LODWORD(STACK[0xE80])) - 1793922784));
  v3 = ((v2 ^ 0x8496029D) - 1223173781) ^ v2 ^ ((v2 ^ 0x5534CF64) + 1723143316) ^ ((v2 ^ 0xE233142F) - 776810535) ^ ((v2 ^ 0xFFEFFDDE) - 865196502);
  LODWORD(STACK[0x49BC]) = v3 ^ 0x25ABE319;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 21146)))(v3 ^ 0xCC7E2408);
  STACK[0x1CF0] = v5;
  STACK[0x2808] = v5;
  return (*(v4 + 8 * ((4017 * (v5 == 0)) ^ v1)))();
}

uint64_t sub_1002D2184()
{
  v1 = STACK[0x7E54];
  LODWORD(STACK[0xA94C]) = STACK[0x7E54];
  v2 = (STACK[0x4A18] + (v1 - 1543924816));
  STACK[0xA950] = v2;
  return (*(STACK[0xF18] + 8 * ((60060 * (((((v0 - 6972) | 0x8313) ^ 0x38) & 0xEE) > (*v2 + (((v0 - 66) | 0x19) ^ 0xC4)))) ^ v0)))();
}

uint64_t sub_1002D2214()
{
  v0 = (STACK[0xF10] - 452968256) & 0x1AFF35B4;
  v1 = STACK[0xF10] - 8891;
  v2 = STACK[0xA810];
  LODWORD(STACK[0x99D8]) = LODWORD(STACK[0xA810]) - 1205857773;
  v2 += 769230649;
  v3 = v2 < (v0 ^ 0x86307A89);
  v4 = v2 > LODWORD(STACK[0x36E8]) - 2043643079;
  if (v3 != LODWORD(STACK[0x36E8]) > 0x79CF84C6)
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * (!v4 | (32 * !v4) | v1)))();
}

uint64_t sub_1002D22C4()
{
  v1 = STACK[0x30B8];
  v2 = STACK[0x1170];
  *v2 = *(STACK[0x30B8] + 8);
  v2[1] = *v1;
  v3 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v3 + 8 * (v0 + 3 * (v0 ^ 0xA5) - 1796)))();
}

uint64_t sub_1002D2348@<X0>(int a1@<W8>)
{
  STACK[0x5BE0] = STACK[0x7258];
  LODWORD(STACK[0x658C]) = STACK[0x11AC];
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1002D23D4()
{
  v1 = STACK[0xF10] - 10216;
  v2 = ((v0 ^ 0xC9260B24) + 403232318) ^ ((v0 ^ 0x266B153D) - 146421723) ^ (((STACK[0xF10] + 675901619) ^ v0) - 110680328);
  LODWORD(STACK[0x53B4]) = v2 - 371865814;
  v3 = LODWORD(STACK[0xA94C]) - 642449367 + v2;
  v4 = (((LODWORD(STACK[0x3554]) ^ 0xDC80A654) + 595548588) ^ ((LODWORD(STACK[0x3554]) ^ 0x81133997) + 2129446505) ^ ((LODWORD(STACK[0x3554]) ^ 0xB44658D2) + 1270458158)) + 901475424;
  v5 = v3 < 0x4BE5A54F;
  v6 = v3 > v4;
  if (v5 != v4 < 0x4BE5A54F)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((209 * !v6) ^ v1)))();
}

uint64_t sub_1002D2514()
{
  v0 = STACK[0xF10] - 15590;
  *(STACK[0xAE40] + 12) = 1600085855;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002D25B4()
{
  v0 = STACK[0xF10] - 29409;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))(*STACK[0x2020]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1002D2650()
{
  v2 = STACK[0xF10] - 30563;
  v3 = (STACK[0xF10] - 49) | 0x31;
  v4 = (STACK[0xF10] - 27386) | 0x190;
  v5 = *(v1 + 1512);
  v6 = STACK[0x73B0];
  v7 = *(v1 + 1508);
  v8 = STACK[0xF10] + 13672;
  v9 = 139493411 * ((((2 * (&STACK[0x10000] + 3800)) | 0x5849E142) - (&STACK[0x10000] + 3800) - 740618401) ^ 0x200911E4);
  STACK[0x10EF0] = v0;
  STACK[0x10EF8] = v6;
  LODWORD(STACK[0x10EE8]) = v9 + (v3 ^ v7 ^ 0x3B1315C8) + ((2 * v7) & 0x76273DE6) - 319951393;
  LODWORD(STACK[0x10F00]) = v8 ^ v9;
  STACK[0x10EE0] = v6;
  STACK[0x10ED8] = v5;
  v10 = STACK[0xF18];
  v11 = (*(STACK[0xF18] + 8 * (v2 ^ 0xDFB5)))(&STACK[0x10ED8]);
  v12 = STACK[0x10F04];
  STACK[0x7690] -= 48;
  return (*(v10 + 8 * (((v12 == -371865839) * (v4 + 33789)) ^ v2)))(v11);
}

uint64_t sub_1002D2A38@<X0>(int a1@<W8>)
{
  v1 = *(STACK[0x630] - 341378134);
  LODWORD(STACK[0x24E8]) = -1;
  return (*(STACK[0xF18] + 8 * ((57 * (v1 == ((a1 + 11208) | 0x1E00) - 24416)) ^ a1)))();
}

uint64_t sub_1002D2A94(__n128 a1)
{
  a1.n128_u32[0] = 11010216;
  a1.n128_u16[2] = 168;
  a1.n128_u16[3] = 168;
  return (*(STACK[0xF18] + 8 * (v1 - 27500)))(32, 36, a1);
}

uint64_t sub_1002D2AC8()
{
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v1 + 155453101 * ((((&STACK[0x10000] + 3800) | 0xC9F8771A) - ((&STACK[0x10000] + 3800) | 0x360788E5) + 906463461) ^ 0x2FDE6CD5) + 296782153;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 45321)))(&STACK[0x10ED8]);
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v0;
  LODWORD(STACK[0x35EC]) = 1693393347;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1002D2B70()
{
  v1 = STACK[0xF18];
  STACK[0x9880] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 4601)))();
}

uint64_t sub_1002D2C8C()
{
  STACK[0x6EB8] = 0;
  LODWORD(STACK[0x8584]) = -371865839;
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762647268) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x46340E16) - ((&STACK[0x10000] + 3800) | 0xB9CBF1E9) - 1177816599) ^ 0x7735C332));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 30278)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * ((11395 * (*STACK[0x970] > ((v0 - 1585740020) & 0x5E84AFBB) - 35643)) ^ v0)))(v2);
}

uint64_t sub_1002D2DB8@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * ((309 * (a1 ^ 0x715) - 823) ^ a1)))();
}

uint64_t sub_1002D2E0C()
{
  v2 = (((v0 + 17433) ^ 0x2431FDFB) + (v1 ^ 0xDBCE8940)) ^ ((v1 ^ 0x34FD078C) - 888997772) ^ ((v1 ^ 0x6E6C5D4 ^ (v0 + 17639)) - 115755485);
  LODWORD(STACK[0x1A74]) = v2 + 1072821554;
  LODWORD(STACK[0x3884]) = v2 + 683963537;
  return (*(STACK[0xF18] + 8 * ((58728 * (v2 - 371865796 < 0x51)) ^ v0)))();
}

uint64_t sub_1002D2F20()
{
  v2 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x20CE6D0C)) ^ 0x20CE6D0CLL;
  v3 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v2 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v2;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *(v1 + 56);
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
  return (*(STACK[0xF18] + 8 * v0))(v28, v29);
}

uint64_t sub_1002D31B0()
{
  v1 = STACK[0x3CA4];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393285;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002D31F0()
{
  STACK[0x4A40] = STACK[0x55D0];
  LODWORD(STACK[0x7A04]) = STACK[0x8D00];
  v1 = STACK[0x7690];
  STACK[0x7D90] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = ((v0 - 39215) | 0x8A1B) + (v0 ^ 0xFFFFFFFFFFFFEF9ALL) + v1;
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762665152) ^ (906386353 * ((2 * ((&STACK[0x10000] + 3800) & 0x24FF60D8) - (&STACK[0x10000] + 3800) - 620716256) ^ 0xEA015204));
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 12394)))(&STACK[0x10ED8]);
  if (*STACK[0x970])
  {
    v4 = 1;
  }

  else
  {
    v4 = *STACK[0x940] == 0;
  }

  v5 = !v4;
  return (*(v2 + 8 * ((201 * v5) ^ v0)))(v3);
}

uint64_t sub_1002D32FC@<X0>(unint64_t *a1@<X7>, int a2@<W8>)
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
  STACK[0xBE30] = 0;
  STACK[0xBE38] = v2;
  v13 = 16777619 * ((553300517 * v12 + 7) ^ (553300517 * v12)) % 7;
  v14 = 16777619 * ((553300517 * v12 + 6) ^ (553300517 * v12)) % 6;
  v15 = 16777619 * ((553300517 * v12 + 5) ^ (553300517 * v12)) % 5;
  v16 = *(&STACK[0xBE30] | v13);
  *(&STACK[0xBE30] | v13) = STACK[0xBE37];
  v17 = *(&STACK[0xBE30] | v14);
  *(&STACK[0xBE30] | v14) = STACK[0xBE36];
  v18 = *(&STACK[0xBE30] | v15);
  *(&STACK[0xBE30] | v15) = STACK[0xBE35];
  v19 = vdup_n_s32(553300517 * v12);
  v20 = 16777619 * ((553300517 * v12 + 3) ^ (553300517 * v12)) % 3;
  v21.i32[0] = v19.i32[0];
  v21.i32[1] = 553300517 * v12 + 1;
  LOBYTE(STACK[0xBE37]) = v16;
  v22 = veor_s8(vmul_s32(v21, v19), v19);
  LOBYTE(STACK[0xBE36]) = v17;
  LOBYTE(STACK[0xBE35]) = v18;
  v23 = STACK[0xBE30];
  LOBYTE(STACK[0xBE30]) = STACK[0xBE34];
  LOBYTE(STACK[0xBE34]) = v23;
  v24 = *(&STACK[0xBE30] | v20);
  *(&STACK[0xBE30] | v20) = STACK[0xBE33];
  LOBYTE(STACK[0xBE33]) = v24;
  v25 = STACK[0xBE31];
  LOBYTE(STACK[0xBE32]) = STACK[0xBE30];
  LOWORD(STACK[0xBE30]) = v25;
  STACK[0xBE30] = vmla_s32(v22, STACK[0xBE30], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBE38];
  v27 = (553300517 * STACK[0xBE38]) ^ v12;
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
  v48 = *(&STACK[0xBE38] + v13);
  *(&STACK[0xBE38] + v13) = STACK[0xBE3F];
  LOBYTE(STACK[0xBE3F]) = v48;
  v49 = *(&STACK[0xBE38] + v14);
  *(&STACK[0xBE38] + v14) = STACK[0xBE3E];
  LOBYTE(STACK[0xBE3E]) = v49;
  v50 = *(&STACK[0xBE38] + v15);
  *(&STACK[0xBE38] + v15) = STACK[0xBE3D];
  LOBYTE(STACK[0xBE3D]) = v50;
  v51 = STACK[0xBE38];
  LOBYTE(STACK[0xBE38]) = STACK[0xBE3C];
  LOBYTE(STACK[0xBE3C]) = v51;
  v52 = *(&STACK[0xBE38] + v20);
  *(&STACK[0xBE38] + v20) = STACK[0xBE3B];
  LOBYTE(STACK[0xBE3B]) = v52;
  v53 = STACK[0xBE39];
  LOBYTE(STACK[0xBE3A]) = STACK[0xBE38];
  LOWORD(STACK[0xBE38]) = v53;
  STACK[0xBE38] = vmla_s32(v22, STACK[0xBE38], vdup_n_s32(0x1000193u));
  *a1 = STACK[0xBE38] ^ STACK[0xBE30];
  return (*(STACK[0xF18] + 8 * a2))();
}

uint64_t sub_1002D3834(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  v21 = 4 * (((v10 ^ 0xE7DCA19) + 721388866) ^ v10 ^ ((v10 ^ 0x434570) + v11) ^ ((v10 ^ 0x2AFCC421) + 243174266) ^ ((v10 ^ 0x3FBFFBEF) + 457028792));
  v22 = *(v9 + (v21 ^ 0x6DF6C29C));
  v23 = v22 & 0xFD ^ 0x93;
  v24 = *(v9 + (v21 ^ 0x6DF6C29D));
  v25 = v24 & 0x4F ^ 0xD8;
  v26 = v22 ^ (2 * ((v22 ^ a8) & (2 * ((v22 ^ a8) & (2 * ((v22 ^ a8) & (2 * ((v22 ^ a8) & (2 * ((v22 ^ a8) & (2 * (((2 * (v22 & 0x1F)) ^ 0x22) & (v22 ^ 0x1E) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23));
  v27 = (v24 ^ a8) & (2 * ((v24 ^ a8) & (2 * ((v24 ^ a8) & (2 * ((v24 ^ a8) & (2 * ((v24 ^ a8) & (2 * ((v24 ^ 0x1E) & (2 * v24) & 0x3E ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25;
  v28 = *(v9 + (v21 ^ 0x6DF6C29E));
  v29 = v28 & 0x7D ^ 0x53;
  v30 = v24 ^ (2 * v27);
  LODWORD(v21) = *(v9 + (v21 ^ 0x6DF6C29F));
  v31 = v21 & 0xFFFFFFAD ^ 0x6B;
  v32 = ((v30 << 8) ^ 0xE584669E) & (v26 ^ 0xF5E4FF02) | v26 & 0x61;
  v33 = (v28 ^ (2 * ((v28 ^ a8) & (2 * ((v28 ^ a8) & (2 * ((v28 ^ a8) & (2 * ((v28 ^ a8) & (2 * ((v28 ^ a8) & (2 * (((2 * (v28 & 0x1F)) ^ 0x22) & (v28 ^ 0x1E) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29))) << 16;
  v34 = v21 ^ (2 * ((v21 ^ a8) & (2 * ((v21 ^ a8) & (2 * ((v21 ^ a8) & (2 * ((v21 ^ a8) & (2 * ((v21 ^ a8) & (2 * (((2 * (v21 & 0x1F)) ^ 0x72) & (v21 ^ a8) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31));
  v35 = (v33 & 0x1F0000 ^ a4 ^ (v32 ^ 0x82645265) & (v33 ^ 0xFF80FFFF)) & (((v34 ^ 0xA) << 24) ^ a5) ^ ((v34 ^ 0xA) << 24) & v12;
  *(STACK[0xED0] + 4 * v10 + v18) = (((v35 ^ a6) + a7) ^ ((v35 ^ v13) + v14) ^ ((v35 ^ v15) + v16)) + v17;
  return (*(STACK[0xF18] + 8 * (((v10 + 1 == v19) * v20) ^ v8)))();
}

uint64_t sub_1002D3AF4()
{
  v3 = (v0 + 16 * v1);
  *v3 = STACK[0x73A8] ^ 0x981390C2FED9246;
  v3[1] = (STACK[0x94E8] ^ 0xEBD7F6FFD89BE5B1) + 0x1428090008898809 + ((2 * STACK[0x94E8]) & 0x1EEECEFEELL ^ 0x4EC8248C);
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1002D3E44()
{
  v0 = STACK[0xF10] - 33939;
  STACK[0x7818] = STACK[0x7090] + ((635 * (STACK[0xF10] ^ 0x8B00) - 1397870887) ^ 0xACAEC132);
  v1 = STACK[0xF18];
  STACK[0x5040] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1C47)))();
}

uint64_t sub_1002D3EC4@<X0>(int a1@<W8>)
{
  v2 = (((a1 - 54) & 0x3F) + (v1 & 1) - 10) ^ ((v1 & 1) + 25) ^ ((v1 & 1 ^ 0x1D) + 6);
  v3 = v2 & 1 ^ 0x83;
  *(STACK[0x9EE0] + STACK[0x6618] - 0x7FE04C6846861763) = v2 ^ (2 * ((v2 ^ 0x66) & (2 * ((v2 ^ 0x26) & (2 * ((v2 ^ 6) & (2 * ((v2 ^ 6) & (2 * ((v2 ^ 6) & (2 * ((2 * (v2 & 3)) ^ 2 ^ v3 ^ ((2 * (v2 & 3)) ^ 2) & v2)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ 0xBA;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1002D3F94()
{
  v0 = (STACK[0xF10] - 1965566940) & 0x7527F4BE;
  v1 = STACK[0xF10] - 34675;
  v2 = STACK[0xF18];
  STACK[0x9880] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 - 16941 + v0)))();
}

uint64_t sub_1002D405C()
{
  v0 = (STACK[0xF10] + 1360622655) & 0xAEE667FD;
  v1 = STACK[0xF10] - 34563;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x74AB ^ v0)))();
}

uint64_t sub_1002D410C@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * ((a1 + 4009) ^ a1)))();
}

uint64_t sub_1002D414C()
{
  v2 = ((v0 + 2556) | 0x84A2) ^ LODWORD(STACK[0x5318]) ^ 0xC638F0F1;
  STACK[0x8FE8] = *(STACK[0x8408] - 0x427A3CD3E8C5DA2FLL);
  LODWORD(STACK[0x44A8]) = v1;
  LODWORD(STACK[0x704C]) = -2116087584;
  LODWORD(STACK[0x7FD8]) = 1970496882;
  LODWORD(STACK[0x4A8C]) = v2;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002D41E0()
{
  v2 = v0 + ((v1 - 256788366) & 0xF4EBB7Bu) + 597381224;
  LODWORD(STACK[0x53B0]) = v2;
  STACK[0x5C50] = 1640 * (v2 | ((v2 < 0x79A45249) << 32)) + 0x3AE13E2EC8AD731ALL;
  LODWORD(STACK[0x1374]) = 1456375929;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1002D4260()
{
  v0 = 10 * (STACK[0xF10] ^ 0x8638);
  v1 = STACK[0xF10] - 32506;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x892C) + v1)))();
}

uint64_t sub_1002D42B8()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 11220;
  v3 = STACK[0x81F8];
  v4 = STACK[0x6328];
  v5 = STACK[0x7870];
  v6 = STACK[0xB020];
  v7 = 155453101 * ((&STACK[0x10000] + 3800) ^ 0xE6261BCF);
  STACK[0x10F10] = 0;
  STACK[0x10F08] = 0;
  LODWORD(STACK[0x10F18]) = v7 + v1 + 5676;
  STACK[0x10ED8] = v3;
  LODWORD(STACK[0x10EE0]) = v6 - v7 - ((2 * v6) & 0xD3AB8E22) + v0;
  STACK[0x10EF8] = &STACK[0x7394];
  STACK[0x10EE8] = v5;
  STACK[0x10EF0] = v4;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * (v1 + 16746)))(&STACK[0x10ED8]);
  return (*(v8 + 8 * v2))(v9);
}

uint64_t sub_1002D43A0()
{
  v0 = STACK[0xF10] - 29518;
  *(STACK[0x2710] + 208) = STACK[0x99B4];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002D43E8()
{
  v1 = STACK[0x5C88];
  STACK[0x4DC8] = STACK[0x5C88] + 100;
  STACK[0x4120] = v1;
  v2 = 634647737 * ((2 * ((&STACK[0x10000] + 3800) & 0x31333950) - (&STACK[0x10000] + 3800) + 1322043049) ^ 0x235AE955);
  STACK[0x10EE0] = v1;
  LODWORD(STACK[0x10ED8]) = v2 - 1431125373;
  LODWORD(STACK[0x10EE8]) = v0 - v2 + 12326;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 43312)))(&STACK[0x10ED8]);
  v5 = *STACK[0x7338];
  v6 = *(STACK[0x7338] + 8);
  STACK[0x5400] = v1;
  STACK[0x41A0] = v5;
  LODWORD(STACK[0x20CC]) = v6;
  LODWORD(STACK[0x38AC]) = 1346106150;
  return (*(v3 + 8 * v0))(v4);
}

uint64_t sub_1002D453C()
{
  STACK[0x3C38] = STACK[0x8730];
  LODWORD(STACK[0x3994]) = STACK[0x7C24];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002D45D8()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 30669;
  v2 = LOWORD(STACK[0x1622]);
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x41A3)))(v2);
  STACK[0x5938] = v4;
  v5 = (*(v3 + 8 * (v0 + 16221)))(v2);
  STACK[0x5AE8] = v5;
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 371891397;
  }

  else
  {
    v7 = STACK[0xB9C0];
  }

  return (*(v3 + 8 * ((22264 * (v7 == (v1 ^ 0xE9D5D47F))) ^ v1)))();
}

uint64_t sub_1002D467C()
{
  v2 = v0 - 176739293 + *STACK[0xA3E8];
  v3 = STACK[0xB588];
  *(v3 + 64) = v2;
  *(v3 + 68) = 217654554;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x25001C7A ^ (16232 * (v1 > (v1 ^ 0x25008261) + 1484322691)))))();
}

uint64_t sub_1002D46FC()
{
  STACK[0x10EE0] = *(v0 + 16);
  LODWORD(STACK[0x10ED8]) = (v1 - 1762661292) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x8E1D33A1) - ((&STACK[0x10000] + 3800) & 0x8E1D33A0)) ^ 0xBF1CFE85));
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16254)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * (((*(v0 + 24) == 0) * ((v1 - 806145795) ^ (v1 - 5140) ^ 0x6659 ^ 0xCFF359E3)) ^ (v1 - 5140))))(v3);
}

uint64_t sub_1002D4838()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * (v0 - 32534));
  return (*(v1 + 8 * (v0 - 30314)))();
}

uint64_t sub_1002D4904()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 19759)))(v2);
}

uint64_t sub_1002D4930()
{
  LODWORD(STACK[0x10BC]) = -371865853;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 21391)))(18);
  STACK[0x5AB0] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((3 * (((v0 - 30281) | 0x2002) ^ 0x247)) ^ 0x6794)) ^ v0)))();
}

uint64_t sub_1002D4A40()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xBCD04765)))();
  return (*(v1 + 8 * ((17547 * (v0 < 0xF66F873E)) ^ (v0 + 1127193359))))(v2);
}

uint64_t sub_1002D4ABC()
{
  LODWORD(STACK[0xA844]) = v2;
  v5 = (((v3 ^ 0x6D323703) - 1832007427) ^ ((v3 ^ 0x12614DA5) - 308366757) ^ ((v3 ^ 0x9686BDB7) + 1769520435 + ((v0 + 371898881) | 0x404))) + 39566938;
  v6 = ((v4 + 411432778) < 0x1885F749) ^ (v5 < 0x1885F749);
  v7 = v4 + 411432778 > v5;
  if (v6)
  {
    v7 = (v4 + 411432778) < 0x1885F749;
  }

  if (v7)
  {
    v8 = 371891407;
  }

  else
  {
    v8 = v1;
  }

  return (*(STACK[0xF18] + 8 * (v0 ^ 0xE9D543FD ^ (506 * (((v8 - v0) | (v0 - v8)) >> 31)))))();
}

uint64_t sub_1002D4BB8()
{
  v1 = (STACK[0xF10] - 34619) | 0x4892;
  v2 = 17902189 * ((&STACK[0x10000] + 3800) ^ 0x8E4F1610);
  LODWORD(STACK[0x10EE0]) = v2 - 178823974 + (((v0 ^ 0x398C3124) - 391975874) ^ ((v0 ^ 0xA47A449C) + 1968478598) ^ ((v0 ^ (v1 - 113003687) & 0x6BCBFD7 ^ 0x5AF22F8C) - 1948496553));
  LODWORD(STACK[0x10ED8]) = v1 - v2 + 645330369;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 32936)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (((2 * (LOBYTE(STACK[0x10EDC]) == 5)) | (8 * (LOBYTE(STACK[0x10EDC]) == 5))) ^ v1)))(v4);
}

uint64_t sub_1002D4CD0@<X0>(int a1@<W8>)
{
  v1 = *STACK[0x6F68];
  v3 = ((((a1 - 41720) ^ 0x8CC0) - 35639) & v1) != 0 && v1 > 0x30003;
  return (*(STACK[0xF18] + 8 * (a1 | (4 * v3))))();
}

uint64_t sub_1002D4D14@<X0>(int a1@<W8>)
{
  v3 = STACK[0xF18];
  v4 = *(STACK[0xF18] + 8 * v1);
  STACK[0x10EE0] = v2;
  LOBYTE(STACK[0x10ED8]) = 0;
  LODWORD(STACK[0x10EE8]) = (a1 + 9072) ^ (139493411 * ((~(&STACK[0x10000] + 3800) & 0x9F469FB0 | (&STACK[0x10000] + 3800) & 0x60B96048) ^ 0x936B7EF5));
  v5 = (*(v3 + 8 * (a1 + 16310)))(&STACK[0x10ED8]);
  return v4(v5);
}

uint64_t sub_1002D4DA8@<X0>(int a1@<W8>)
{
  v4 = ((2 * ((((4 * a1) ^ 0x9674) - 23105) & v1 ^ 0x989C1316)) ^ 0x29BC252C) & (v1 ^ 0x48800B4D) ^ (((4 * a1) ^ 0x9674) - 23105) & v1 ^ 0x989C1316 ^ ((2 * ((((4 * a1) ^ 0x9674) - 23105) & v1 ^ 0x989C1316)) & 0x10000216 | 0x8840100);
  v5 = ((2 * (v1 ^ 0x48800B4D)) ^ 0x29BC252C) & (v1 ^ 0x48800B4D) ^ ((2 * (v1 ^ 0x48800B4D)) & 0x80001016 | 0x180000);
  v6 = v4 ^ v5 & 0x2302A44C ^ ((4 * v4) ^ 0x3BE6E704) & (v5 ^ 0x18840306);
  v7 = ((4 * v5) ^ 0x5996AB5C) & (v5 ^ 0x18840306) ^ v5 & 0x2302A44C;
  v8 = v6 ^ v7 & 0x3B86A74C ^ ((16 * v6) ^ 0xB247962C) & (v7 ^ 0x18840306);
  v9 = ((16 * v7) ^ 0xB3C6970C) & (v7 ^ 0x18840306) ^ v7 & 0x3B86A74C;
  v10 = v8 ^ v9 & 0x3B86A74C ^ ((v8 << 8) ^ 0x2396B54C) & (v9 ^ 0x18840316);
  v11 = ((v9 << 8) ^ 0xBF85A34C) & (v9 ^ 0x18840316) ^ v9 & 0x3B86A74C;
  v12 = (8 * (v10 ^ v11 & 0x1B86A74C ^ ((v10 << 16) ^ 0x2890A74D) & (v11 ^ 0x180000) ^ ((v10 << 16) ^ 0x2890A74D) & 0x189C0304)) ^ (4 * v1);
  v13 = *(v2 + (v12 ^ 0x40B0E1FC));
  v14 = v13 & 0x49 ^ 0xDD;
  v15 = *(v2 + (v12 ^ 0x40B0E1FD));
  v16 = v15 & 0x5D ^ 0x43;
  v17 = v13 ^ (2 * ((v13 ^ 0x5E) & (2 * ((v13 ^ 0x5E) & (2 * ((v13 ^ 0x5E) & (2 * ((v13 ^ 0x5E) & (2 * ((v13 ^ 0x5E) & (2 * (((2 * (v13 & 0x1F)) ^ 0x16) & (v13 ^ 0x1E) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14));
  v18 = *(v2 + (v12 ^ 0x40B0E1FE));
  v19 = v18 & 0x35 ^ 0x3F;
  v20 = (v18 ^ (2 * ((v18 ^ 0x5E) & (2 * ((v18 ^ 0x5E) & (2 * ((v18 ^ 0x5E) & (2 * ((v18 ^ 0x5E) & (2 * ((v18 ^ 0x5E) & (2 * (((2 * (v18 & 0x1F)) ^ 0x6A) & (v18 ^ 0x5E) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) << 16;
  LODWORD(v12) = *(v2 + (v12 ^ 0x40B0E1FF));
  v21 = v12 & 0x51 ^ 0x49;
  LODWORD(v12) = (((v12 ^ 0x5E) & (2 * ((v12 ^ 0x5E) & (2 * ((v12 ^ 0x5E) & (2 * ((v12 ^ 0x5E) & (2 * ((v12 ^ 0x5E) & (2 * (((2 * (v12 & 0x1F)) ^ 0xE) & (v12 ^ 0x1E) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21) << 25) ^ (v12 << 24);
  LODWORD(v12) = (v20 & 0xB60000 ^ 0xDE322EAD ^ (((((v15 ^ (2 * ((v15 ^ 0x5E) & (2 * ((v15 ^ 0x5E) & (2 * ((v15 ^ 0x5E) & (2 * ((v15 ^ 0x5E) & (2 * ((v15 ^ 0x5E) & (2 * (((2 * (v15 & 0x1F)) ^ 2) & (v15 ^ 0x1E) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16))) << 8) ^ 0x58138447) & (v17 ^ 0x593BFF06) | v17 & 0xB8) ^ 0x3C5AD963) & (v20 ^ 0x7D4AFFFF)) & (v12 ^ 0xAEFFFFFF) ^ v12 & 0x45000000;
  *(v3 + 4 * v1 - 3213860476) = (((v12 ^ 0xE930742A) - 1034666490) ^ ((v12 ^ 0x41004886) + 1784939178) ^ ((v12 ^ 0x537F122D) + 2015057923)) + 1462825198;
  return (*(STACK[0xF18] + 8 * ((61545 * (v1 == 803465129)) ^ a1)))();
}

uint64_t sub_1002D5238()
{
  v1 = 186 * (v0 ^ 0xB3A2);
  v3 = ((v1 - 45938) & STACK[0xE70]) == 0 || LODWORD(STACK[0xE70]) < ((1328 * (v1 ^ 0xB37E)) ^ 0x32984u);
  return (*(STACK[0xF18] + 8 * ((1029 * v3) ^ v1)))();
}

uint64_t sub_1002D529C()
{
  v0 = (STACK[0xF10] + 158094499) & 0xF693E6A5;
  v1 = STACK[0xF10] - 34267;
  v2 = STACK[0x5C30];
  *(v2 + 120) = 16;
  v3 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v1);
  return (*(v3 + 8 * ((v0 - 43636) ^ v1)))(v2 + 104);
}

uint64_t sub_1002D54C0()
{
  STACK[0x9D88] = ((2 * v0) & 0xFE7BFFAALL) + (v0 ^ 0xF7DD7FED7F3DFFD5) + 0x6D6EDE9799EB7F6CLL;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x1781)))();
}

uint64_t sub_1002D556C()
{
  v1 = LODWORD(STACK[0x9268]);
  STACK[0xD20] = v1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 43405)))(v1 ^ 0xE9D54605 ^ (((v0 - 122434896) & 0x74C9F7F) - 2599)) == 0;
  return (*(v2 + 8 * (((8 * v3) | (16 * v3)) ^ v0)))();
}

uint64_t sub_1002D580C()
{
  v1 = *(STACK[0x6508] - 0x217E172EFA1E81CLL);
  v2 = STACK[0x31F0];
  v3 = 1603510583 * (((&STACK[0x10ED8] | 0x2C2A7F7A) - (&STACK[0x10ED8] & 0x2C2A7F78)) ^ 0xBBF14DD1);
  LODWORD(STACK[0x10EDC]) = -1995309458 - v3;
  LODWORD(STACK[0x10EEC]) = v2 - v3 - 672734622;
  LODWORD(STACK[0x10EE8]) = v0 - v3 - 11921;
  STACK[0x10EE0] = v1;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 33075)))(&STACK[0x10ED8]);
  v6 = STACK[0x2CE0] + (v0 ^ 0x8896BBAAF3E2E940);
  v7 = STACK[0x4310];
  STACK[0xED0] = v6;
  v8 = 72 * v6;
  *(*v7 + v8 + 8) = STACK[0x10ED8];
  *(*v7 + v8 + 12) = 920545551;
  v9 = *(v4 + 8 * v0);
  LODWORD(STACK[0xEC0]) = 1945538087 * v2 + 777074195;
  return v9(v5);
}

uint64_t sub_1002D595C@<X0>(int a1@<W8>)
{
  v3[544] = v2 + 4;
  v4 = (((v1 ^ ((a1 ^ 0x8C09) + 1150) ^ 0x894EBEB) - 143975634) ^ ((v1 ^ 0x288DF0CF) - 680390863) ^ (((11 * (a1 ^ 0x8C09) - 909353725) ^ v1) + 909323508)) + 1150484475;
  v5 = (v2 + 4) > 0xA542C715;
  v6 = v5 ^ (v4 < 0x5ABD38EA);
  v7 = v2 + 1522350318 > v4;
  if (!v6)
  {
    v5 = v7;
  }

  if (v5)
  {
    v8 = 371891407;
  }

  else
  {
    v8 = v3[543];
  }

  v3[545] = v8;
  return (*(STACK[0xF18] + 8 * ((123 * (v8 != -371865839)) ^ a1)))();
}

uint64_t sub_1002D5A60()
{
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 10756)))(v2 ^ 0x38A42D21u);
  *(v1 + 720) = v5;
  v6 = *(v3 + 1496);
  if (!v5)
  {
    v6 = 371891397;
  }

  *(v3 + 1504) = v6;
  return (*(v4 + 8 * (((v6 == -371865839) * ((v0 ^ 0x2BAF) - 35640)) | v0)))();
}

uint64_t sub_1002D5B58@<X0>(int a1@<W8>)
{
  STACK[0x2EE0] = v1;
  v3 = STACK[0x7690];
  STACK[0x1330] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = ((11881 * (a1 ^ 0x39C4u) + 6574) ^ (3835 * (a1 ^ 0x39CCu))) + v3;
  STACK[0x2BD0] = 0;
  return (*(STACK[0xF18] + 8 * ((58 * (v2 == 0)) ^ a1)))();
}

uint64_t sub_1002D5E80()
{
  v3 = (v2 ^ 0xF6AFFFEF) + 156237845 + ((2 * v2) & 0xFFFFFFDF);
  v4 = v0 == (v1 ^ 0xBD ^ (101 * (v1 ^ 0xB9)) ^ 0xE0);
  LODWORD(STACK[0x10F4]) = v3;
  return (*(STACK[0xF18] + 8 * (v4 | (32 * v4) | v1)))();
}

uint64_t sub_1002D5F48()
{
  v1 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 534569954) & 0xE023AE9F ^ 0xA11B) + v0)))();
}

uint64_t sub_1002D5F98()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 31554;
  LODWORD(STACK[0x9A24]) = LODWORD(STACK[0xA894]) + 1787123220;
  v2 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((13530 * ((v0 + 912857042) > 0x42C5300F)) ^ (v0 - 30626))))();
}

uint64_t sub_1002D619C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  LODWORD(STACK[0xA534]) = *(v6 + 128) + a5;
  LODWORD(STACK[0xA538]) = LODWORD(STACK[0x3AC4]) + LODWORD(STACK[0xB4B4]) - 658232844;
  v7 = *(STACK[0x2C38] + 32) + 265456287;
  v8 = ((v7 ^ 0xF81AC096) + 137868750) ^ v7 ^ (11881 * (v5 ^ 0x55F) + (v7 ^ 0x74BDB26E) - 2070922245) ^ ((v7 ^ 0x548A17A2) - 1532534022) ^ ((v7 ^ 0xD7FFEFFE) + 668113574);
  LODWORD(STACK[0xA544]) = v8 ^ 0xA0EF1083;
  return (*(STACK[0xF18] + 8 * ((9670 * ((v5 ^ 0x5D97A4F4u) < 0x13A222A5)) ^ (v5 + 5971))))(a1, a2, a3, a4, ((0x12 % (v8 ^ 0xFD28AA4)) ^ 0xFDDFBBFF) + 2 * (0x12 % (v8 ^ 0xFD28AA4)) + 1113511500);
}

uint64_t sub_1002D62EC()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 1645)))(32);
  STACK[0x42C8] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 ^ 0xC83B) + 1407) ^ 0x119F)) | v0)))();
}

uint64_t sub_1002D6340@<X0>(unsigned int a1@<W8>)
{
  if (LODWORD(STACK[0x690C]))
  {
    v1 = LOBYTE(STACK[0x3C07]) == (a1 + 21);
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;
  return (*(STACK[0xF18] + 8 * ((6061 * v2) ^ a1)))();
}

uint64_t sub_1002D6424()
{
  v0 = (STACK[0xF10] - 10032) | 0x1A90;
  v1 = STACK[0xF10] - 32117;
  STACK[0x4148] = STACK[0x6748] + 16;
  v2 = STACK[0xF18];
  STACK[0x6728] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x5AE0 ^ v0)))();
}

uint64_t sub_1002D6594()
{
  v0 = STACK[0xF10] ^ 0xECB;
  v1 = STACK[0xF10] + 5900;
  STACK[0x9CB8] = &STACK[0x7F9C];
  return (*(STACK[0xF18] + 8 * (((STACK[0x9340] == 0) * (v0 - 34269)) ^ v1)))();
}

uint64_t sub_1002D666C()
{
  v3 = ((v1 + 507031824) & 0xE1C6BF6F ^ 0x60E816C) + v0;
  v4 = (((v2 ^ 0xEF212D37) + 283038409) ^ ((v2 ^ 0x89780579) + 1988622983) ^ ((v2 ^ 0x8F8CEF5F) + 1886545008 + ((v1 + 507031824) ^ 0x1E39E3CF))) - 270248705;
  v5 = (v3 < 0x60E8DEE) ^ (v4 < 0x60E8DEE);
  v6 = v3 > v4;
  if (v5)
  {
    v6 = v3 < 0x60E8DEE;
  }

  return (*(STACK[0xF18] + 8 * ((497 * v6) ^ v1)))();
}

uint64_t sub_1002D6754()
{
  STACK[0x10ED8] = *(v0 + 32);
  LODWORD(STACK[0x10EE0]) = v2 + ((2 * ((&STACK[0x10000] + 3800) & 0xE6E8DF0) - (&STACK[0x10000] + 3800) + 1905357323) ^ 0x97B769C4) * v1 + 296753103;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 ^ 0x41F1)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (v2 - 4426)))(v4);
}

uint64_t sub_1002D681C()
{
  v4 = v1 - 1;
  *(v3 + 4 * v4 + 16) = *(v0 + 4 * v4);
  return (*(STACK[0xF18] + 8 * (((v4 != 0) * (((v2 - 4325) | 0x109) ^ 0x4985)) ^ v2)))();
}

uint64_t sub_1002D68F0()
{
  STACK[0x5C50] = 0x3AE1413A0D5C9D2ALL;
  LODWORD(STACK[0x1374]) = 1914951028;
  return (*(STACK[0xF18] + 8 * (v0 - 29678)))();
}

uint64_t sub_1002D692C(uint64_t a1, uint64_t a2, int a3)
{
  v7 = a3 <= v6 + v3;
  v8 = (a3 - 1);
  v9 = !v7;
  return (*(STACK[0xF18] + 8 * (((v4 & ~((v6 + 1022) ^ v9)) * v5) ^ v6)))(a1, a2, v8);
}

uint64_t sub_1002D696C@<X0>(int a1@<W8>)
{
  STACK[0x2AC0] = v2;
  LODWORD(STACK[0x2350]) = v3;
  LODWORD(STACK[0x11B8]) = v5;
  STACK[0xB2F8] = v7;
  LODWORD(STACK[0xB300]) = a1;
  STACK[0x5FA8] = v4;
  STACK[0x6420] = v1;
  LODWORD(STACK[0x9604]) = -371865839;
  STACK[0x4518] = 0x217E172EFA1E81CLL;
  STACK[0x1180] = 0;
  if (v7)
  {
    v8 = a1 == (((1119 * (v6 ^ 0xC650) - 24937) | 0x881B) ^ 0xE9D54C2A);
  }

  else
  {
    v8 = 1;
  }

  v11 = v8 || v2 == 0 || v4 == 0;
  return (*(STACK[0xF18] + 8 * ((14 * v11) ^ v6)))();
}

uint64_t sub_1002D6A18@<X0>(int a1@<W8>)
{
  v2 = a1 - 27679;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (a1 ^ 0x4192)))(v1);
  STACK[0x9058] = 0;
  LODWORD(STACK[0x892C]) = 1202816382;
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_1002D6A70(unint64_t a1)
{
  v3 = STACK[0x409C];
  v4 = STACK[0xF18];
  v5 = *(STACK[0xF18] + 8 * v1);
  v6 = STACK[0x7EEC];
  STACK[0x44D8] = v5;
  LODWORD(STACK[0x4200]) = v6;
  STACK[0x5BE8] = a1;
  return (*(v4 + 8 * ((v2 + 11293) | (4 * (((31 * (v2 ^ 0x76)) ^ (v3 == -371865839)) & 1)))))();
}

uint64_t sub_1002D6AD8()
{
  v1 = STACK[0x4298];
  v2 = STACK[0x2248];
  v3 = STACK[0x42E8];
  *v1 = *STACK[0x2248] ^ *STACK[0x42E8];
  v1[1] = v2[1] ^ v3[1];
  v1[2] = v2[2] ^ v3[2];
  v1[3] = v2[3] ^ v3[3];
  v1[4] = v2[4] ^ v3[4];
  v1[5] = v2[5] ^ v3[5];
  v1[6] = v2[6] ^ v3[6];
  v1[7] = v2[7] ^ v3[7];
  v1[8] = v2[8] ^ v3[8];
  v1[9] = v2[9] ^ v3[9];
  v1[10] = v2[10] ^ v3[10];
  v1[11] = v2[11] ^ v3[11];
  v1[12] = v2[12] ^ v3[12];
  v1[13] = v2[13] ^ v3[13];
  v1[14] = v2[14] ^ v3[14];
  v1[15] = v2[15] ^ v3[15];
  v4 = STACK[0x4298];
  v5 = STACK[0x8320];
  LODWORD(STACK[0x10EEC]) = (v0 + 25031) ^ (139493411 * ((&STACK[0x10000] + 3800) ^ 0xC2DE145));
  STACK[0x10EE0] = v5;
  STACK[0x10ED8] = v4;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v0 + 34599)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * (((LODWORD(STACK[0x10EE8]) == -371865839) * (((v0 ^ 0xEF45) - 7877) ^ 0x7959)) ^ v0)))(v7);
}

uint64_t sub_1002D6CC8()
{
  STACK[0xDB0] = 0;
  v1 = STACK[0xD18];
  v2 = *(STACK[0x9D0] + 72) == STACK[0xD18];
  STACK[0xDA0] = &STACK[0x622C];
  v3 = *(STACK[0xF18] + 8 * (((((((v0 - 1) ^ 0x2E04) + 35534) ^ 0xFFFFFFF3) + 327 * ((v0 - 1) ^ 0x2E04)) * v2) ^ (v0 - 1)));
  STACK[0xD20] = v1;
  return v3();
}

uint64_t sub_1002D6D2C()
{
  v0 = STACK[0xF10];
  v1 = 10 * (STACK[0xF10] ^ 0x8638);
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * (STACK[0xF10] - 32588));
  return (*(v2 + 8 * ((((v0 - 2065582337) < 0xE8EF7362) * (v1 - 28135)) ^ (v0 - 34807))))();
}

uint64_t sub_1002D7048()
{
  v0 = STACK[0xF10] - 21864;
  v1 = STACK[0xA90C];
  LODWORD(STACK[0xA914]) = (((*(STACK[0x1A98] + 712) ^ 0x25D385E3) - 634619363) ^ ((*(STACK[0x1A98] + 712) ^ 0xE0193881) + 535218047) ^ (((((STACK[0xF10] - 34201) | 1) + 740259024) ^ *(STACK[0x1A98] + 712)) - 740260467)) - 371865835;
  LODWORD(STACK[0xA910]) = v1;
  return (*(STACK[0xF18] + 8 * ((30121 * (v1 == -371865839)) ^ v0)))();
}

uint64_t sub_1002D7108@<X0>(unint64_t a1@<X8>)
{
  v2 = 906386353 * ((~(&STACK[0x10000] + 3800) & 0x7D765FCF | (&STACK[0x10000] + 3800) & 0x8289A030) ^ 0x4C7792EB);
  LODWORD(STACK[0x10EF0]) = v2 ^ 0x1B5728E4;
  STACK[0x10EF8] = a1;
  LODWORD(STACK[0x10EE8]) = v2 + 5720 + v1;
  STACK[0x10EE0] = a1;
  STACK[0x10ED8] = STACK[0x5A0];
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4733)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (v1 - 15898)))(v4);
}

uint64_t sub_1002D71CC(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = STACK[0xF10] - 28119;
  *a3 = v3 ^ 0xEEF28F30035FB8BFLL;
  return (*(STACK[0xF18] + 8 * v4))();
}

uint64_t sub_1002D7278()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 25394) ^ 0x74DD) + v0)))();
}

uint64_t sub_1002D73B0@<X0>(unsigned int a1@<W8>)
{
  v5 = v3 + v1 - 931983027;
  v6 = v3 + v1 - 1253508679;
  v7 = v6 < 0xF5765DAA;
  v8 = v6 > v2 - 176819712 + a1;
  if (a1 > 0xA89A255 != v7)
  {
    v8 = v7;
  }

  v9 = *(v4 + 1836);
  if (v8)
  {
    v9 = 371891407;
  }

  if (v9 != ((v2 + 1718107219) & 0x99977FFE) - 371876075)
  {
    v5 = v1;
  }

  return (*(STACK[0xF18] + 8 * ((61975 * (v5 - a1 == 144733502)) ^ v2)))();
}

uint64_t sub_1002D74F4()
{
  v1 = STACK[0xF10];
  *(*STACK[0xAB00] + 8 * (LOBYTE(STACK[0xAB37]) - 16)) = (STACK[0xF10] - 7030 - 0x188C49C3D34E44CCLL) ^ v0;
  return (*(STACK[0xF18] + 8 * (v1 + 2200)))();
}

uint64_t sub_1002D76C4()
{
  v0 = STACK[0xF10] - 32550;
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1B66 ^ (14735 * (v0 == 701249460)))))();
}

uint64_t sub_1002D778C()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] ^ 0xF042;
  v2 = STACK[0xF10] - 34422;
  v3 = STACK[0x9968];
  v4 = STACK[0x2030] + 245;
  v5 = STACK[0x21E8];
  v6 = *(STACK[0x21E8] + 72);
  STACK[0x10EE8] = STACK[0x570];
  LODWORD(STACK[0x10EF0]) = 1112314453 * ((((&STACK[0x10000] + 3800) | 0x324D2FF8) - ((&STACK[0x10000] + 3800) & 0x324D2FF8)) ^ 0xDD1B0521) + v0 + 481094384;
  STACK[0x10F08] = v3;
  STACK[0x10ED8] = v4;
  STACK[0x10EE0] = v6;
  LOBYTE(STACK[0x10EF4]) = 85 * ((((&STACK[0x10000] - 40) | 0xF8) - ((&STACK[0x10000] - 40) & 0xF8)) ^ 0x21) + 95;
  LOBYTE(STACK[0x10F10]) = -75 - 85 * ((((&STACK[0x10000] - 40) | 0xF8) - ((&STACK[0x10000] - 40) & 0xF8)) ^ 0x21);
  STACK[0x10EF8] = v5 + 82;
  STACK[0x10F00] = STACK[0x578];
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v0 ^ 0x478D)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x6E0C]) = STACK[0x10F14];
  STACK[0x7308] = *(v7 + 8 * v2);
  return (*(v7 + 8 * (v1 + v2 - 6028)))(v8);
}

uint64_t sub_1002D7978@<X0>(int a1@<W8>)
{
  if ((((LODWORD(STACK[0x1950]) ^ 0x20816A0E) - 545352206) ^ ((LODWORD(STACK[0x1950]) ^ 0x5063B54B) - 1348711755) ^ (((2 * v1) ^ 0x99360E22 ^ LODWORD(STACK[0x1950])) + 1724442540)) - 371865839 >= 0x10)
  {
    v2 = a1;
  }

  else
  {
    v2 = 371891403;
  }

  return (*(STACK[0xF18] + 8 * ((83 * (v2 == -371865839)) ^ (v1 - 4899))))();
}

uint64_t sub_1002D7A24@<X0>(int a1@<W0>, int a2@<W8>)
{
  v12 = v10 > v4;
  *(v9 + (a1 + v5)) = *(v3 + (a1 + v5)) ^ *(v11 + (a1 + v5)) ^ v6;
  v13 = v7 + a1;
  v14 = (a1 + 1);
  v15 = v12 ^ (v13 < v8);
  v16 = v13 < v2;
  if (!v15)
  {
    v12 = v16;
  }

  return (*(STACK[0xF18] + 8 * (((4 * !v12) | (8 * !v12)) ^ a2)))(v14);
}

uint64_t sub_1002D7BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a3;
  v6 = STACK[0xF18];
  STACK[0x4798] = *(STACK[0xF18] + 8 * v4);
  return (*(v6 + 8 * (((v5 == 0) * (((v3 - 1778306144) | 0xA44640) + 109 * (v3 ^ 0x5522) + 1767483037)) ^ v3)))(a1, a2, 371891400);
}

uint64_t sub_1002D7C18()
{
  LODWORD(STACK[0xE60]) = v1 + 167;
  LODWORD(STACK[0xE70]) = (v1 + 167) ^ 0xA53D;
  LODWORD(STACK[0xE80]) = v1 + 6983;
  v6 = (((&STACK[0x10ED8] | 0x2034563B) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0xDFCBA9C0)) ^ 0xC6124DF4) * v2;
  LODWORD(STACK[0x10ED8]) = v1 - 14772 + v6;
  STACK[0x10EE8] = v5;
  STACK[0x10EE0] = v3;
  LOBYTE(STACK[0x10EFC]) = -46 - v6;
  STACK[0xEC0] = v0 + 320;
  STACK[0x10EF0] = v0 + 320;
  v7 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 + 16299)))(&STACK[0x10ED8]);
  v8 = 155453101 * ((~&STACK[0x10ED8] & 0xC562FA90 | &STACK[0x10ED8] & 0x3A9D0568) ^ 0x2344E15F);
  STACK[0xEB0] = v0 + 336;
  STACK[0x10EF0] = v0 + 336;
  LOBYTE(STACK[0x10EFC]) = -46 - v8;
  LODWORD(STACK[0x10ED8]) = v1 - 14772 + v8;
  v9 = *(&off_1010A0B50 + v1 - 33580) - 270444247;
  STACK[0x10EE8] = v4;
  STACK[0x10EE0] = v9;
  (*(v7 + 8 * (v1 + 16299)))(&STACK[0x10ED8]);
  v10 = 155453101 * (((&STACK[0x10ED8] | 0x4445430D) - (&STACK[0x10ED8] | 0xBBBABCF2) - 1145389838) ^ 0xA26358C2);
  STACK[0xE40] = v0 + 344;
  STACK[0x10EF0] = v0 + 344;
  LOBYTE(STACK[0x10EFC]) = -46 - v10;
  LODWORD(STACK[0x10ED8]) = v1 - 14772 + v10;
  v11 = *(&off_1010A0B50 + v1 - 33425) - 1440097638;
  STACK[0x10EE8] = v4;
  STACK[0x10EE0] = v11;
  (*(v7 + 8 * (v1 ^ 0x41DD)))(&STACK[0x10ED8]);
  v12 = 155453101 * ((~&STACK[0x10ED8] & 0x833EC91B | &STACK[0x10ED8] & 0x7CC136E0) ^ 0x6518D2D4);
  LOBYTE(STACK[0x10EFC]) = -46 - v12;
  STACK[0x10EE0] = *(&off_1010A0B50 + (v1 ^ 0x861E)) - 1076101395;
  STACK[0x10EE8] = v5;
  STACK[0xED0] = v0 + 352;
  STACK[0x10EF0] = v0 + 352;
  LODWORD(STACK[0x10ED8]) = v1 - 14772 + v12;
  (*(v7 + 8 * (v1 + 16299)))(&STACK[0x10ED8]);
  v13 = 155453101 * ((-2 - ((~&STACK[0x10ED8] | 0x717C9B69) + (&STACK[0x10ED8] | 0x8E836496))) ^ 0x975A80A6);
  STACK[0xEA0] = v0 + 360;
  STACK[0x10EF0] = v0 + 360;
  LODWORD(STACK[0x10ED8]) = v1 - 14772 + v13;
  LOBYTE(STACK[0x10EFC]) = -46 - v13;
  STACK[0x10EE0] = *(&off_1010A0B50 + v1 - 34887) - 1020350666;
  STACK[0x10EE8] = v5;
  (*(v7 + 8 * (v1 ^ 0x41DD)))(&STACK[0x10ED8]);
  v14 = *(&off_1010A0B50 + (v1 ^ 0x880D)) - 1961748090;
  STACK[0x10EE8] = v5;
  STACK[0x10EE0] = v14;
  STACK[0xE90] = v0 + 368;
  STACK[0x10EF0] = v0 + 368;
  LODWORD(STACK[0x10ED8]) = v1 - 14772 + 155453101 * (((&STACK[0x10ED8] | 0xCB55F44A) - (&STACK[0x10ED8] | 0x34AA0BB5) + 883559349) ^ 0x2D73EF85);
  LOBYTE(STACK[0x10EFC]) = -46 - -83 * (((&STACK[0x10ED8] | 0x4A) - (&STACK[0x10ED8] | 0xB5) - 75) ^ 0x85);
  v15 = (*(v7 + 8 * (v1 ^ 0x41DD)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * (((*(v0 + 296) == 0) * (LODWORD(STACK[0xE70]) - 11912)) ^ LODWORD(STACK[0xE80]))))(v15);
}

uint64_t sub_1002D8114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0xF10] - 34062;
  LODWORD(STACK[0xA5E0]) = STACK[0x9894];
  v5 = *(STACK[0x2C38] + 32) + 1217394384;
  v6 = ((v5 ^ 0x44492EA4) - 214358129) ^ v5 ^ ((v5 ^ 0x440BF3CC) - 209978649) ^ ((v5 ^ 0x3712D550) - 2141004677) ^ ((v5 ^ 0x7FDFFEED) - 927991864);
  LODWORD(STACK[0xA5EC]) = v6 ^ 0x1EE1E910;
  v7 = 9 % (v6 ^ 0x488FF6D5u) - 2 * ((9 % (v6 ^ 0x488FF6D5u)) & 3) + 1340030403;
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x1A82)))(a1, a2, a3, a4, (((v7 ^ 0x1797AA27) - 395815463) ^ ((v7 ^ 0x1A314D9D) - 439438749) ^ ((v7 ^ 0x4279DA79) - 1115282041)) - 1877094386);
}

uint64_t sub_1002D826C(uint64_t a1, uint64_t a2)
{
  LODWORD(STACK[0x8FF4]) = -371865839;
  STACK[0x4228] = 0;
  LODWORD(STACK[0x4B04]) = -371865839;
  return (*(STACK[0xF18] + 8 * ((8871 * (((v3 - (v2 - 371871102)) | (v2 - 371871102 - v3)) >= 0)) | (((2 * (v2 - 371871102)) ^ 0xC5810B20) + v2 - 371871102))))(a1, a2, 371891535);
}

uint64_t sub_1002D82E0()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 26036)))(v2);
}

uint64_t sub_1002D830C()
{
  v0 = (STACK[0xF10] - 18098) | 0x3A12;
  v1 = STACK[0xF10] - 32126;
  STACK[0x1DD8] = STACK[0x4D28] + 16;
  v2 = STACK[0xF18];
  STACK[0x6728] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 23195) ^ v1)))();
}

uint64_t sub_1002D8374()
{
  v2 = *(STACK[0x89C0] + v1);
  v3 = STACK[0x1CA4];
  STACK[0x8FE8] = v2;
  LODWORD(STACK[0x44A8]) = v3;
  LODWORD(STACK[0x7FD8]) = 1970496882;
  LODWORD(STACK[0x704C]) = -2116087575;
  LODWORD(STACK[0x4A8C]) = STACK[0x6B3C];
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002D83DC@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + v3 + 89);
  v5 = (a1 + v3);
  *v5 = *(v2 + v3 + 73);
  v5[1] = v4;
  return (*(STACK[0xF18] + 8 * ((35876 * (v3 == 0)) ^ v1)))();
}

uint64_t sub_1002D86F0()
{
  STACK[0x5690] = 0;
  LODWORD(STACK[0x1D34]) = 0;
  v4 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 ^ 0xC7BB)))(v3 + v2, STACK[0x79F8], 16);
  v5 = (*(v4 + 8 * (v1 ^ 0xC7BB)))(v0 - 130840395, STACK[0x72C0], 16);
  return (*(v4 + 8 * (v1 ^ 0x14FA ^ (((v1 ^ 0x517FEEF0u) > 0xF4198459) * (((v1 + 30113) | 0x820) - 24750)))))(v5);
}

uint64_t sub_1002D87B4@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X4>, uint64_t a4@<X5>, int a5@<W8>)
{
  v14 = v5 > v8;
  *(v13 + 8 * (a2 + v11)) = *(*(a3 + a4) + 8 * (a2 + v11));
  v15 = a5 + v9 + a2 + v12;
  v16 = v14 ^ (v15 < v6);
  v17 = v15 < v7;
  if (!v16)
  {
    v14 = v17;
  }

  return (*(STACK[0xF18] + 8 * ((v14 * a1) ^ v10)))();
}

uint64_t sub_1002D8A58()
{
  v0 = (STACK[0xF10] + 124169123) & 0xFFFFFFFFF898CDE3;
  v1 = STACK[0xF18];
  STACK[0x9AD0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x3D8D)))();
}

uint64_t sub_1002D8D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(STACK[0xF18] + 8 * v8);
  v14 = *v12;
  v15 = *v12 + 4;
  v16 = __ROR8__(v15 & 0xFFFFFFFFFFFFFFF8, 8);
  v17 = (v16 - 0x296E95066F186A7FLL) ^ 0xB3A94E2F7B1B987CLL;
  v18 = (__ROR8__((v16 - 0x296E95066F186A7FLL) ^ 0x72219E3FC273472, 8) + v17) ^ v9;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x2C378843F9A46E98;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (((2 * (v22 + v21)) | 0x9D9845494FC970F2) - (v22 + v21) - 0x4ECC22A4A7E4B879) ^ 0xF3B10F4D66EE1913;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0x82B08017BF43C069;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((v27 + v26) & a5 ^ 0x983240801AB2500) + ((v27 + v26) ^ 0x961489F57C445A24) - (((v27 + v26) ^ 0x961489F57C445A24) & a5)) ^ 0x310EFE87C70BA17CLL;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((v30 + v29) | 0x4AD00319D698339ELL) - ((v30 + v29) | a6) + a6) ^ 0xC562225A28435F2DLL;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  *(v14 + 4) = v11 ^ 0x5C ^ (((((2 * (v33 + v32)) | 0x85FFF0CB5B49AA56) - (v33 + v32) - 0x42FFF865ADA4D52BLL) ^ 0xD9E38C42C8BADA33) >> (8 * (v15 & 7u)));
  v34 = __ROR8__((v14 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v35 = (0x296E95066F186A7ELL - v34) & 0x6817BAF44AE008C1 | (v34 - 0x296E95066F186A7FLL) & 0x91E8450BB51FF73ELL;
  v36 = v35 ^ 0x6935A317B6C73CB3;
  v35 ^= 0xDDBEF4DB31FB90BDLL;
  v37 = (__ROR8__(v36, 8) + v35) ^ v9;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x2C378843F9A46E98;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0xBD7D2DE9C10AA16ALL;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (v43 + v42 - ((2 * (v43 + v42)) & 0x88505E8AE28CC05ELL) - 0x3BD7D0BA8EB99FD1) ^ 0x4698AF52CE05A046;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0xAA9DDABAE2E4D47CLL;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (v48 + v47 - ((2 * (v48 + v47)) & 0xFEB301930C096308) + 0x7F5980C98604B184) ^ 0xF0EBA18A78DFDD37;
  *(v14 + 5) = v10 ^ 0x48 ^ (((__ROR8__(v49, 8) + (v49 ^ __ROR8__(v47, 61))) ^ a8) >> (8 * ((v14 + 5) & 7)));
  return v13();
}

uint64_t sub_1002D90AC()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 34316;
  v2 = STACK[0x8AF8];
  LODWORD(STACK[0x10ED8]) = (STACK[0xF10] - 22550) ^ (906386353 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x1E9B6BB8) + 513502143) ^ 0x2F9AA69B));
  LOWORD(STACK[0x10EE0]) = 23473 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x6BB8) + 27583) ^ 0xA69B) + 18204;
  STACK[0x10EE8] = v2;
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 16246)))(&STACK[0x10ED8]);
  v4 = STACK[0x4D48] + 60;
  STACK[0x98B0] = *(v3 + 8 * v1);
  return (*(v3 + 8 * (v1 ^ 0x1C5F)))(v4);
}

uint64_t sub_1002D919C()
{
  v0 = STACK[0xF10] - 21567;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))(STACK[0x5268]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1002D9280()
{
  LODWORD(STACK[0x10ED8]) = (v0 - 1762646504) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x870C1C50) - ((&STACK[0x10000] + 3800) & 0x870C1C50)) ^ 0xB60DD174));
  STACK[0x10EE0] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x9BCE)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (((*STACK[0x970] > 0) * ((v0 - 127801288) & 0x79DF752 ^ (v0 - 18234))) ^ v0)))(v2);
}

uint64_t sub_1002D93D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = ((2 * v6) & 0x1BE65FF76) + (v6 ^ 0xFEFDE3AFDF32FFBBLL);
  STACK[0xA748] = v9 + 24 * (v7 ^ 0x9502u) + 0x64E4A4B4E2673947;
  v9 += 0x1021C50A33B9543;
  v10 = (((v7 ^ 0xD520u) + 19198) ^ 0xAB8ED9DB942A9FAALL) + STACK[0x9978];
  v11 = v9 < 0x826E94FA;
  v12 = v9 > v10;
  if (v11 != v10 < 0x826E94FA)
  {
    v12 = v11;
  }

  if (v12)
  {
    v13 = 371891407;
  }

  else
  {
    v13 = v8;
  }

  LODWORD(STACK[0xA750]) = v13;
  LOBYTE(STACK[0xA757]) = !v12;
  return (*(STACK[0xF18] + 8 * ((76 * v12) ^ v7 ^ 0xD520)))(a1, a2, a3, a4, a5, a6, &STACK[0xA237]);
}

uint64_t sub_1002D94DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  ++*a5;
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = 155453101 * ((((2 * (&STACK[0x10000] + 3800)) | 0x18ED8FDC) - (&STACK[0x10000] + 3800) - 209111022) ^ 0xEA50DC21) + v5 + 296753103;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v5 + 16271)))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v6 + 8 * (v5 - 32435));
  return (*(v6 + 8 * (v5 ^ 0xEB3F ^ (v5 - 32435) ^ 0x7AE3)))(v7);
}

uint64_t sub_1002D95D4()
{
  v0 = (STACK[0xF10] - 34389) | 0x1209;
  v1 = STACK[0xF10] - 33701;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x5C7 ^ v0)))();
}

uint64_t sub_1002D9680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0xF10];
  LODWORD(STACK[0x3AC4]) += 4;
  return (*(STACK[0xF18] + 8 * (v6 - 29888)))(a1, a2, a3, a4, a5, a6, &STACK[0xA237]);
}

uint64_t sub_1002D96CC()
{
  v1 = (STACK[0xF10] - 705007636) & 0x2A0596FC;
  v2 = STACK[0xF10] - 16391;
  *STACK[0xAD40] = v0 ^ 0xE773B63C2CB22AF9;
  STACK[0x7598] = **(STACK[0x790] - 573165550);
  return (*(STACK[0xF18] + 8 * (((LODWORD(STACK[0xAD3C]) != -371865839) * (v1 - 37296)) ^ v2)))();
}

uint64_t sub_1002D9768()
{
  v0 = STACK[0xF10] - 32118;
  *(STACK[0x4D80] + (STACK[0xF10] ^ 0x20CE) - 44003 + LODWORD(STACK[0xA318])) = 12;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x247A)))();
}

uint64_t sub_1002D9818@<X0>(int a1@<W8>)
{
  *(v1 + 40) = a1 + 1;
  v3 = *(v1 + 32);
  LODWORD(STACK[0x10EE0]) = v2 + 155453101 * ((((2 * (&STACK[0x10000] + 3800)) | 0x1C5B45D4) - (&STACK[0x10000] + 3800) - 237871850) ^ 0xE80BB925) + 296754685;
  STACK[0x10ED8] = v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 ^ 0x4FC7)))(&STACK[0x10ED8]);
  v6 = *(v1 + 48);
  STACK[0x3658] = v1 + 48;
  STACK[0x58D8] = STACK[0x84E8];
  STACK[0x7D50] = v6;
  return (*(v4 + 8 * (((v6 != 0) * ((v2 ^ 0xE513) + ((v2 - 987) | 0xA09) - 60221)) ^ v2)))(v5);
}

uint64_t sub_1002D9998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  STACK[0x4F98] = 0;
  STACK[0x22F0] = 0;
  LODWORD(STACK[0x3D84]) = -371865839;
  return (*(STACK[0xF18] + 8 * (a3 ^ 0xE9D5D39E ^ (337 * (((a3 + 1) ^ (((v3 - a3) | (a3 - v3)) >> (a3 + 15))) & 1)))))(a1, a2, 371891535);
}

uint64_t sub_1002D9A04()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 14203;
  v3 = 2287 * (STACK[0xF10] ^ 0x8B39);
  v4 = STACK[0xF10] - 854;
  LODWORD(STACK[0x8E04]) = v0 & 0xF0000000 ^ 0x29FE2AFA;
  v5 = v0 & 0xFFFFFFF;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v1 + 16221)))(v2 ^ 0xE9D594D1 ^ LODWORD(STACK[0x5798]));
  STACK[0x1560] = v7;
  if (v7)
  {
    v8 = v5 == (v3 ^ 0x9DFD6CF);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  return (*(v6 + 8 * ((7450 * v9) ^ v4)))();
}

uint64_t sub_1002D9AB0()
{
  v0 = STACK[0xF10] - 15916;
  LODWORD(STACK[0x3E80]) += 4;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002D9DB8()
{
  v2 = STACK[0xF10];
  v3 = LODWORD(STACK[0xA1A4]) - 952909389;
  v4 = STACK[0xB730];
  STACK[0xA1C0] = STACK[0xB730] + 4 * v3;
  *(v4 + 4 * v3) = v0;
  v5 = ((*STACK[0xA198] ^ 0xC992E34E) + 913120434) ^ ((*STACK[0xA198] ^ 0xFC0AF4BA) + 66390854) ^ ((*STACK[0xA198] ^ 0x359817AB) - 899159979);
  LODWORD(v4) = ((LODWORD(STACK[0xB738]) ^ 0x64F41152) - 1693716818) ^ ((LODWORD(STACK[0xB738]) ^ 0x712591DE) - 1898287582) ^ ((LODWORD(STACK[0xB738]) ^ 0x82D787C4) + 2099804220);
  v6 = ((LODWORD(STACK[0xA194]) ^ 0xCFEEA225) + 806444507) ^ ((LODWORD(STACK[0xA194]) ^ 0xF24FD1F3) + 229649933) ^ ((LODWORD(STACK[0xA194]) ^ 0x7412726D) - 1947365997);
  v7 = 634647737 * ((((&STACK[0x10000] + 3800) | 0xD199BC93) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x2E664368)) ^ 0xBC0F936F);
  LODWORD(STACK[0x10EF4]) = v2 - v7 + 1352419535;
  LODWORD(STACK[0x10EE0]) = v7 + v4 - 1038619786;
  STACK[0x10EE8] = v1;
  LODWORD(STACK[0x10EDC]) = (v5 + 678242615) ^ v7;
  LODWORD(STACK[0x10ED8]) = v7 + v6 - 1462826144;
  v8 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v2 + 16376)))(&STACK[0x10ED8]);
  return (*(v8 + 8 * (v2 - 26084)))(2234432642, 2234432643, 2234432644, 1775617819, 10, 3923101457, 4294932395, -1080961354);
}

uint64_t sub_1002DA060@<X0>(int a1@<W2>, int a2@<W8>)
{
  LODWORD(STACK[0x825C]) = v2;
  LODWORD(STACK[0x3FA8]) = a1;
  LODWORD(STACK[0x659C]) = STACK[0xEC0];
  LODWORD(STACK[0x1370]) = STACK[0xED0];
  LODWORD(STACK[0x5D04]) = v3;
  LODWORD(STACK[0x8A44]) = v4;
  return (*(STACK[0xF18] + 8 * ((a2 - 638) ^ 0x17BE ^ (21517 * (((a2 - 638) ^ 0x1F6DA165) != a2 - 1770557723)))))();
}

uint64_t sub_1002DA0DC()
{
  v1[3] = *v2;
  v1[4] = v0 ^ 0x7F4A ^ v2[4] ^ 0xE9D5DE58;
  v1[6] = ((v0 - 23747) | 0x1009) ^ v2[5] ^ 0xE9D5DE58;
  return (*(STACK[0xF18] + 8 * (v0 | (32 * ((*STACK[0x9108] & 4) == 0)))))();
}

uint64_t sub_1002DA14C()
{
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x4A08];
  STACK[0x5D28] = &STACK[0x3EA4];
  LODWORD(STACK[0x4704]) = -799546752;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002DA194()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + ((v0 + 285366550) & 0xEEFDB6FF) - 1757)))();
}

uint64_t sub_1002DA1E8(uint64_t a1, uint64_t a2)
{
  v4 = STACK[0xF10] - 35594;
  LOWORD(STACK[0x9FB6]) = v2;
  v5 = *(STACK[0xF18] + 8 * (v4 ^ 0x2054));
  LODWORD(STACK[0xE20]) = v2;
  return v5(a1, a2, v3);
}

uint64_t sub_1002DA2C8(uint64_t a1, uint64_t a2)
{
  v4 = STACK[0xF10];
  LOWORD(STACK[0x9906]) = v2;
  v5 = *(STACK[0xF18] + 8 * (v4 - 27350));
  LODWORD(STACK[0xE70]) = v2;
  return v5(a1, a2, v3);
}

uint64_t sub_1002DA3B0()
{
  v2 = *(v0 + 16);
  LODWORD(STACK[0x10EE0]) = v1 + 155453101 * ((~(&STACK[0x10000] + 3800) & 0x1CAFD456 | (&STACK[0x10000] + 3800) & 0xE3502BA8) ^ 0xFA89CF99) + 296753103;
  STACK[0x10ED8] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x41F1)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (v1 - 18610)))(v4);
}

uint64_t sub_1002DA498(uint64_t a1, char a2, char a3, uint64_t a4, int a5, char a6, int a7)
{
  v11 = (v10 + 4 * v7);
  v12 = STACK[0xF10];
  v13 = STACK[0xF10] ^ a2;
  v14 = (v8 + 4 * v7);
  *v14 = *v11 - (a3 & (2 * *v11)) + 22;
  v14[1] = v11[1] ^ v9;
  v14[2] = (*v11 >> (v13 + a6)) ^ v9;
  v14[3] = v11[3] ^ v9;
  return (*(STACK[0xF18] + 8 * (((v7 == 7) * a7) ^ (v12 + a5))))();
}

uint64_t sub_1002DA524()
{
  STACK[0x5658] = v0;
  LODWORD(STACK[0x2564]) = 235401596;
  return (*(STACK[0xF18] + 8 * (v1 - 30507)))();
}

uint64_t sub_1002DA58C()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF18];
  STACK[0x5990] = *(STACK[0xF18] + 8 * (STACK[0xF10] - 33093));
  return (*(v1 + 8 * (v0 - 26275)))();
}

uint64_t sub_1002DA604()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 29739) | 0x21A) - 25366) ^ v0)))();
}

uint64_t sub_1002DA6D4()
{
  v2 = 0;
  v3 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x14CFE928)) ^ 0x14CFE92BLL;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *(v0 + 48);
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v12 = v11 ^ (349169963 * v10) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
  v13 = vdupq_n_s32(v12);
  v14 = xmmword_100BC7620;
  v15 = xmmword_100BC7630;
  v16 = xmmword_100BC7640;
  v17 = xmmword_100BC7650;
  v18.i64[1] = 0xFFFFFF0FFFFFFF0ELL;
  v19.i64[0] = 0x9393939393939393;
  v19.i64[1] = 0x9393939393939393;
  v20.i64[0] = 0x1000000010;
  v20.i64[1] = 0x1000000010;
  do
  {
    v21 = *(v10 + v2);
    v35.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v21, xmmword_100BC7690), v13), vmulq_s32(vaddq_s32(v16, v13), vsubq_s32(v16, v13)));
    v35.val[0] = veorq_s8(veorq_s8(vqtbl1q_s8(v21, xmmword_100BC76A0), v13), vmulq_s32(vaddq_s32(v17, v13), vsubq_s32(v17, v13)));
    v35.val[2] = veorq_s8(veorq_s8(vqtbl1q_s8(v21, xmmword_100BC7680), v13), vmulq_s32(vaddq_s32(v15, v13), vsubq_s32(v15, v13)));
    v35.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v21, xmmword_100BC7670), v13), vmulq_s32(vaddq_s32(v14, v13), vsubq_s32(v14, v13)));
    *(v10 + v2) = vmulq_s8(vqtbl4q_s8(v35, xmmword_100BC7660), v19);
    v2 += 16;
    v17 = vaddq_s32(v17, v20);
    v16 = vaddq_s32(v16, v20);
    v15 = vaddq_s32(v15, v20);
    v14 = vaddq_s32(v14, v20);
  }

  while (v2 != 256);
  v22 = 0;
  v23 = xmmword_100F52B10;
  v24 = vdupq_n_s32(v12);
  v25 = xmmword_100F52B20;
  v26 = v10 + 256;
  v27.i64[0] = 0x800000008;
  v27.i64[1] = 0x800000008;
  do
  {
    v18.i64[0] = *(v26 + v22);
    v34.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v18, xmmword_100BC7690), v24), vmulq_s32(vaddq_s32(v23, v24), vsubq_s32(v23, v24)));
    v34.val[0] = veorq_s8(vqtbl1q_s8(v18, xmmword_100BC76A0), veorq_s8(v24, vmulq_s32(vaddq_s32(v25, v24), vsubq_s32(v25, v24))));
    v18 = vqtbl2q_s8(v34, xmmword_100F52AD0);
    *(v26 + v22) = vmul_s8(*v18.i8, 0x9393939393939393);
    v25 = vaddq_s32(v25, v27);
    v23 = vaddq_s32(v23, v27);
    v22 += 8;
  }

  while (v22 != 8);
  v28 = 32;
  do
  {
    v29 = 16777619 * ((v12 + v28) ^ v12) % v28;
    v30 = *(v10 + 8 * v29) ^ *(v10 + 8 * v28);
    *(v10 + 8 * v28) = v30;
    v31 = *(v10 + 8 * v29) ^ v30;
    *(v10 + 8 * v29) = v31;
    *(v10 + 8 * v28) ^= v31;
    v32 = v28-- + 1;
  }

  while (v32 > 2);
  return (*(STACK[0xF18] + 8 * v1))(xmmword_100BC7690, xmmword_100BC76A0, v23);
}

uint64_t sub_1002DA9D4()
{
  STACK[0x8798] = STACK[0x1660];
  LODWORD(STACK[0x16E4]) = STACK[0x3744];
  LODWORD(STACK[0x3E18]) = -1304553729;
  v1 = STACK[0xF18];
  STACK[0x6580] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x2D3F)))();
}

uint64_t sub_1002DAAB8@<X0>(int a1@<W8>)
{
  v2 = (a1 - 702575542) & 0x29E0EFBB;
  LODWORD(STACK[0xCE0]) = v2;
  *(STACK[0x9D60] + STACK[0x2920] + (v2 ^ 0xEC1EEC8A) + v1 - 0x6AB61BDBFFFDE4ADLL) = *(STACK[0x9D58] + (v2 ^ 0xEC1EEC8A) + v1) ^ 0x5F;
  v3 = *(STACK[0xF18] + 8 * a1);
  LODWORD(STACK[0xE30]) = v1 - 1;
  return v3();
}

uint64_t sub_1002DAB9C@<X0>(unint64_t *a1@<X7>, unsigned int a2@<W8>)
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
  STACK[0xBE40] = 0;
  STACK[0xBE48] = v2;
  v13 = 16777619 * ((553300517 * v12 + 7) ^ (553300517 * v12)) % 7;
  v14 = 16777619 * ((553300517 * v12 + 6) ^ (553300517 * v12)) % 6;
  v15 = 16777619 * ((553300517 * v12 + 5) ^ (553300517 * v12)) % 5;
  v16 = *(&STACK[0xBE40] | v13);
  *(&STACK[0xBE40] | v13) = STACK[0xBE47];
  v17 = *(&STACK[0xBE40] | v14);
  *(&STACK[0xBE40] | v14) = STACK[0xBE46];
  v18 = *(&STACK[0xBE40] | v15);
  *(&STACK[0xBE40] | v15) = STACK[0xBE45];
  v19 = vdup_n_s32(553300517 * v12);
  v20 = 16777619 * ((553300517 * v12 + 3) ^ (553300517 * v12)) % 3;
  v21.i32[0] = v19.i32[0];
  v21.i32[1] = 553300517 * v12 + 1;
  LOBYTE(STACK[0xBE47]) = v16;
  v22 = veor_s8(vmul_s32(v21, v19), v19);
  LOBYTE(STACK[0xBE46]) = v17;
  LOBYTE(STACK[0xBE45]) = v18;
  v23 = STACK[0xBE40];
  LOBYTE(STACK[0xBE40]) = STACK[0xBE44];
  LOBYTE(STACK[0xBE44]) = v23;
  v24 = *(&STACK[0xBE40] | v20);
  *(&STACK[0xBE40] | v20) = STACK[0xBE43];
  LOBYTE(STACK[0xBE43]) = v24;
  v25 = STACK[0xBE41];
  LOBYTE(STACK[0xBE42]) = STACK[0xBE40];
  LOWORD(STACK[0xBE40]) = v25;
  STACK[0xBE40] = vmla_s32(v22, STACK[0xBE40], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBE48];
  v27 = (553300517 * STACK[0xBE48]) ^ v12;
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
  v48 = *(&STACK[0xBE48] + v13);
  *(&STACK[0xBE48] + v13) = STACK[0xBE4F];
  LOBYTE(STACK[0xBE4F]) = v48;
  v49 = *(&STACK[0xBE48] + v14);
  *(&STACK[0xBE48] + v14) = STACK[0xBE4E];
  LOBYTE(STACK[0xBE4E]) = v49;
  v50 = *(&STACK[0xBE48] + v15);
  *(&STACK[0xBE48] + v15) = STACK[0xBE4D];
  LOBYTE(STACK[0xBE4D]) = v50;
  v51 = STACK[0xBE48];
  LOBYTE(STACK[0xBE48]) = STACK[0xBE4C];
  LOBYTE(STACK[0xBE4C]) = v51;
  v52 = *(&STACK[0xBE48] + v20);
  *(&STACK[0xBE48] + v20) = STACK[0xBE4B];
  LOBYTE(STACK[0xBE4B]) = v52;
  v53 = STACK[0xBE49];
  LOBYTE(STACK[0xBE4A]) = STACK[0xBE48];
  LOWORD(STACK[0xBE48]) = v53;
  STACK[0xBE48] = vmla_s32(v22, STACK[0xBE48], vdup_n_s32(0x1000193u));
  *a1 = STACK[0xBE48] ^ STACK[0xBE40];
  return (*(STACK[0xF18] + 8 * a2))();
}

uint64_t sub_1002DB03C()
{
  LODWORD(STACK[0x10ED8]) = (v0 - 22550) ^ (906386353 * ((~(&STACK[0x10000] + 3800) & 0x38FCF7CB | (&STACK[0x10000] + 3800) & 0xC7030830) ^ 0x9FD3AEF));
  LOWORD(STACK[0x10EE0]) = 23473 * ((~(&STACK[0x10000] + 3800) & 0xF7CB | (&STACK[0x10000] + 3800) & 0x830) ^ 0x3AEF) + 18064;
  STACK[0x10EE8] = &STACK[0x2824];
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x418A)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * ((v0 - 34861) ^ 0x1575)))(v2);
}

uint64_t sub_1002DB0F0()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 ^ 0x32D) + v0)))();
}

uint64_t sub_1002DB2D4(uint64_t a1, uint64_t a2)
{
  v4 = *(STACK[0xF18] + 8 * (v2 - 27350));
  LODWORD(STACK[0xE30]) = 47179;
  return v4(a1, a2, v3);
}

uint64_t sub_1002DB38C()
{
  v1 = STACK[0xF18];
  STACK[0x9880] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 16921 + v0 + 20586)))();
}

uint64_t sub_1002DB414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 29045;
  STACK[0x7548] = STACK[0x7BB0];
  STACK[0x77B0] = &STACK[0x28E8];
  LODWORD(STACK[0x648C]) = -1235632436;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_1002DB460()
{
  LODWORD(STACK[0x6FCC]) = v0;
  LODWORD(STACK[0x51D4]) = v2;
  return (*(STACK[0xF18] + 8 * ((59346 * (v0 == ((v1 - 253808454) & 0xF2076EF ^ 0xE9D5F5F4))) ^ (v1 - 25589))))();
}

uint64_t sub_1002DB508()
{
  v2 = (((v0 + 461196798) ^ 0x464C4746) - 1602028122) ^ (v0 + 461196798) ^ (((v0 + 461196798) ^ 0xEB77E533) + 230252497) ^ (((v0 + 461196798) ^ 0x4B75AAB6) + ((v1 - 17997) | 0xFD0) - 1380265854) ^ (((v1 - 8464498) ^ (v0 + 461196798)) + 431093565);
  v3 = (((v2 ^ 0x4357714B) + 1465981915) ^ ((v2 ^ 0x7C368EC) + 334824062) ^ ((v2 ^ 0x5DA55CBB) + 1234384427)) + 1145420516;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 ^ 0xBCC9)))(((v3 ^ 0x956008BB) + 1003691299) ^ v3 ^ ((v3 ^ 0x1ADDC3DE) - 1267804600) ^ ((v3 ^ 0x4112C492) - 274607860) ^ ((v3 ^ 0x9FE3E591) + 827387913) ^ 0x514CEA66) == 0;
  return (*(v4 + 8 * ((35 * v5) ^ v1)))();
}

uint64_t sub_1002DB6B8@<X0>(char a1@<W8>)
{
  v5 = v4 - 1;
  STACK[0x96B8] = v5;
  v6 = ((2 * (a1 ^ 0x8E)) ^ (71 * (v1 ^ 0x87) + 1)) & (a1 ^ 0x8E) ^ (2 * (a1 ^ 0x8E)) & 0x1E;
  v7 = v6 & (4 * (((2 * a1) & 0x20 ^ 0x90) & a1)) ^ ((2 * a1) & 0x20 ^ 0x90) & a1;
  *(v2 + v5) = (a1 ^ (2 * (((4 * v6) ^ 0x40) & v6 & (16 * v7) ^ v7)) ^ 0x2A) * (a1 - 95);
  v8 = STACK[0x96B8] + 3107238577u > v3;
  if (v3 < 0xB934B2B1 != STACK[0x96B8] > 0xFFFFFFFF46CB4D4ELL)
  {
    v8 = STACK[0x96B8] > 0xFFFFFFFF46CB4D4ELL;
  }

  return (*(STACK[0xF18] + 8 * ((31939 * v8) ^ v1)))();
}

uint64_t sub_1002DB84C@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF10] - 5355;
  LODWORD(STACK[0x1F2C]) = a1;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1002DB86C@<X0>(int a1@<W0>, int a2@<W8>)
{
  v3 = *(STACK[0xF18] + 8 * ((((a1 + 32) > 0xBE) * ((743 * (a2 ^ 0x8939)) ^ 0x99CA)) ^ a2));
  LODWORD(STACK[0xAB0]) = a1 + 32;
  LODWORD(STACK[0x9E8]) = v2;
  return v3();
}

uint64_t sub_1002DBA08()
{
  v0 = (2251 * (STACK[0xF10] ^ 0x8B39) - 1997754775) & 0x771367FC;
  v1 = STACK[0xF10] - 48;
  v2 = LOBYTE(STACK[0xAAC3]);
  LODWORD(STACK[0x1144]) = STACK[0xAABC];
  return (*(STACK[0xF18] + 8 * (((v0 ^ 0x2765) * v2) ^ v1)))();
}

uint64_t sub_1002DBBB4()
{
  v0 = STACK[0xF10];
  v1 = ((STACK[0xF10] - 34457) | 0x1C) + 644248779;
  v2 = STACK[0xF10] - 19357;
  v3 = STACK[0x7408] + 245;
  v4 = STACK[0x16C8];
  v5 = STACK[0x4568];
  STACK[0x10F08] = STACK[0xA458];
  STACK[0x10EF8] = v4 + 82;
  STACK[0x10F00] = STACK[0x578];
  STACK[0x10EE8] = STACK[0x570];
  LOBYTE(STACK[0x10EF4]) = 85 * ((~(&STACK[0x10000] - 40) & 0xF4 | (&STACK[0x10000] - 40) & 8) ^ 0x2D) + 95;
  LOBYTE(STACK[0x10F10]) = -75 - 85 * ((~(&STACK[0x10000] - 40) & 0xF4 | (&STACK[0x10000] - 40) & 8) ^ 0x2D);
  LODWORD(STACK[0x10EF0]) = 1112314453 * ((~(&STACK[0x10000] + 3800) & 0xC020D6F4 | (&STACK[0x10000] + 3800) & 0x3FDF2908) ^ 0x2F76FC2D) + v0 + 481094384;
  STACK[0x10EE0] = v5;
  STACK[0x10ED8] = v3;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v0 + 16763)))(&STACK[0x10ED8]);
  v8 = STACK[0x10F14];
  LODWORD(STACK[0x7148]) = STACK[0x10F14];
  return (*(v6 + 8 * ((45487 * (v8 == (v1 ^ 0xCFB3BE98))) ^ v2)))(v7);
}

uint64_t sub_1002DBCD8()
{
  v5 = 4 * (63 - v1);
  v6 = *(v0 + v5 - 12);
  v7 = *(v0 + v5 - 28);
  v8 = v4 + v5;
  *(v8 + 4) = v6;
  *(v8 - 12) = v7;
  return (*(STACK[0xF18] + 8 * (((v1 + 8 != (v2 ^ 0x5297u) - 18825) * v3) ^ v2)))();
}

uint64_t sub_1002DBD78()
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
  return (*(STACK[0xF18] + 8 * ((39232 * (v1 <= ((v1 + 806114618) | 0xC) + 1483520337)) ^ (v1 + 806140655))))(v28, v29);
}

uint64_t sub_1002DC074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0xED0];
  *(v8 + 8) = -371865839;
  *(v8 + 44) = 0;
  *v8 = -1359724707;
  *(v8 + 172) = -2109658874;
  *(v8 + 28) = 0;
  *(v8 + 36) = 16;
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  *(v8 + 80) = 33;
  *(v8 + 148) = -371865839;
  *(v8 + 264) = 0x981390C2FED9246;
  *(v8 + 272) = 1692332675;
  *(v8 + 184) = v8;
  *(v8 + 296) = 0x981390C2FED9246;
  v9 = STACK[0x5F68];
  *(v9 + 16) = STACK[0x8EE0];
  *(v9 + 24) = STACK[0x763C];
  *(v9 + 132) = -338311407;
  *(v9 + 144) = 0;
  v10 = STACK[0x32F8];
  *(v10 + 4) = -371865839;
  *(v10 + 176) = 0;
  return (*(STACK[0xF18] + 8 * ((v7 + 13408) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, STACK[0xE58]);
}

uint64_t sub_1002DC154()
{
  v1 = STACK[0x5628];
  STACK[0xA9A8] = STACK[0x1898];
  LODWORD(STACK[0xA9B4]) = STACK[0x5E9C];
  STACK[0xA9B8] = STACK[0x9330];
  LODWORD(STACK[0xA9C4]) = STACK[0x93D4];
  return (*(STACK[0xF18] + 8 * ((30 * (((v1 == 0) ^ ((v0 ^ 0x80) - 85)) & 1)) | v0)))();
}

uint64_t sub_1002DC1C0()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 25249)))(LOWORD(STACK[0x3FE6]) ^ 0x1BBDLL);
  STACK[0x7C98] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((1511 * ((v0 - 355592324) & 0x1531E5EF ^ 0x656E)) ^ 0x4349)) ^ v0)))();
}

uint64_t sub_1002DC240@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v4 = *v2 == ((105 * (a2 ^ 0x5D)) ^ (a2 + 66));
  if (*v2 == ((105 * (a2 ^ 0x5D)) ^ (a2 + 66)))
  {
    v5 = -371865839;
  }

  else
  {
    v5 = v3;
  }

  LODWORD(STACK[0x735C]) = v5;
  v6 = v4;
  return (*(STACK[0xF18] + 8 * (v6 | a2)))(a1, 0);
}

uint64_t sub_1002DC290()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] + 549727298;
  *(STACK[0x8768] + 24) = -371865839;
  v2 = STACK[0x1510];
  *v2 = 1443395236;
  *(v2 + 8) = -371865839;
  *(v2 + 16) = 0;
  *(v2 + 24) = -371865839;
  *(v2 + 32) = 0;
  *(v2 + 40) = -371865839;
  *(v2 + 48) = 0;
  *(v2 + 56) = -371865839;
  STACK[0x8478] = v2 + 56;
  *(v2 + 64) = 0;
  STACK[0x4668] = v2 + 64;
  *(v2 + 72) = -371865839;
  STACK[0x3DA8] = v2 + 72;
  *(v2 + 80) = 0;
  STACK[0x6688] = v2 + 80;
  *(v2 + 88) = -371865839;
  STACK[0x66F8] = v2 + 88;
  *(v2 + 96) = 0;
  STACK[0x84E0] = v2 + 96;
  v3 = STACK[0xF18];
  STACK[0x4AD0] = *(STACK[0xF18] + 8 * (v0 - 31127));
  return (*(v3 + 8 * (v0 - 14834 + (v1 & 0xDF3B6EFB))))();
}

uint64_t sub_1002DC38C()
{
  v4 = (v2 ^ 0xB) & (2 * (v2 & 0x23)) ^ v2 & 0x23;
  v5 = ((2 * (v2 ^ 0xF)) ^ 0x58) & (v2 ^ 0xF) ^ (2 * (v2 ^ 0xF)) & ((v1 - 121) ^ 0xDD);
  v6 = v2 ^ (2 * (((4 * (v5 ^ 0x24)) & 0x20 ^ ((4 * (v5 ^ 0x24)) ^ 0xB0) & (v5 ^ 0x24) ^ 0x20) & (16 * ((v5 ^ 8) & (4 * v4) ^ v4)) ^ (v5 ^ 8) & (4 * v4) ^ v4));
  v7 = (((v6 ^ 0x2C) - 7) ^ ((v6 ^ 0x9C) + 73) ^ ((v6 ^ 0x29) - 2)) - 88;
  v8 = v3 - 1;
  STACK[0x8B10] = v8;
  *(v0 + v8) = v7 * (v2 + 31) + 73 * (109 * v7 - 70 * (v2 + 31)) - 46;
  return (*(STACK[0xF18] + 8 * ((62381 * (STACK[0x8B10] == 0)) ^ v1)))();
}

uint64_t sub_1002DC5A0()
{
  v2 = v0 + 7516;
  v3 = (v0 + 7516) ^ 0x3943;
  LODWORD(STACK[0x369C]) = (((v1 ^ 0x267CFF83) - 645726083) ^ ((v1 ^ 0x96DD9A12) + 1763861998) ^ (((5 * v3) ^ 0xA68B5B74) + (v1 ^ 0x5974A280))) - 371865843;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 45005)))();
  STACK[0x7CF0] = v5;
  return (*(v4 + 8 * (((v5 == 0) * (v3 - 281)) ^ v2)))();
}

uint64_t sub_1002DC664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x3908]) += (((v7 - 12995) | 0xA40) - 371868735) ^ LODWORD(STACK[0xED0]);
  v8 = STACK[0x7D40];
  LODWORD(STACK[0xACD4]) = *(STACK[0x7D40] + 248);
  STACK[0xACD8] = v8 + 252;
  return (*(STACK[0xF18] + 8 * (((STACK[0xACB8] == 0) * (v7 ^ 0x33F9)) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, &off_1010A0B50);
}

uint64_t sub_1002DC6F0()
{
  if (v1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == -371865839;
  }

  v4 = v3;
  return (*(STACK[0xF18] + 8 * ((((v0 ^ 0x16C2) + 26494 + 109 * (v0 ^ 0x16C2) - 38909) * v4) ^ v0)))();
}

uint64_t sub_1002DC768()
{
  v1 = STACK[0xF18];
  STACK[0x6820] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 39318) | 0x1040) ^ 0x9E87) + v0)))();
}

uint64_t sub_1002DC804()
{
  LODWORD(STACK[0x10EE0]) = v1 + 155453101 * ((~(&STACK[0x10000] + 3800) & 0x8BDA82ED | (&STACK[0x10000] + 3800) & 0x74257D10) ^ 0x6DFC9922) + 474660468;
  STACK[0x10ED8] = 0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xF5652E5C)))(&STACK[0x10ED8]);
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v0;
  LODWORD(STACK[0x35EC]) = 1693393394;
  return (*(v2 + 8 * (v1 ^ 0xF565F4BC ^ (2539 * (v1 > 10 * (v1 ^ 0x7565E937) + 1606516586)))))(v3);
}

uint64_t sub_1002DC8E4()
{
  v2 = 0;
  *v1 = 0;
  *(v1 + 564) = 1;
  *(v1 + 4) = -371865839;
  v3 = STACK[0x26B8];
  *(v3 + 760) = -371865839;
  *(v3 + 752) = 0;
  *(v3 + 776) = 174777416;
  *(v3 + 768) = 0;
  *(v3 + 552) = 0;
  *(v3 + 560) = 0;
  *(v3 + 640) = 0;
  *(v3 + 648) = 42803857;
  *(v3 + 656) = 0;
  *(v3 + 664) = -371865839;
  *(v3 + 672) = 0;
  *(v3 + 680) = -371865839;
  *(v3 + 688) = 0;
  *(v3 + 696) = -371865839;
  *(v3 + 704) = 0;
  *(v3 + 712) = -371865839;
  *(v3 + 720) = 0;
  *(v3 + 728) = -371865839;
  *(v3 + 736) = 0u;
  *(v3 + 788) = STACK[0x7BEC];
  *STACK[0x8E78] = v3;
  v4 = STACK[0x6308];
  *v4 &= v0 - 20596;
  *(v4 + 12) = 559522867;
  v5 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x20CE6D0C)) ^ 0x20CE6D0CLL;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  v12 = *(v4 + 56);
  v13 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v11;
  v14 = v13 ^ (550399244 * v12) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v13 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
  v15 = vdupq_n_s32(v14);
  v16 = xmmword_100BC7620;
  v17 = xmmword_100BC7630;
  v18 = xmmword_100BC7640;
  v19 = xmmword_100BC7650;
  v20.i64[1] = 0xFFFFFF0FFFFFFF0ELL;
  v21.i64[0] = 0x9393939393939393;
  v21.i64[1] = 0x9393939393939393;
  v22.i64[0] = 0x1000000010;
  v22.i64[1] = 0x1000000010;
  do
  {
    v23 = *(v12 + v2);
    v38.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v23, xmmword_100BC7690), v15), vmulq_s32(vaddq_s32(v18, v15), vsubq_s32(v18, v15)));
    v38.val[0] = veorq_s8(veorq_s8(vqtbl1q_s8(v23, xmmword_100BC76A0), v15), vmulq_s32(vaddq_s32(v19, v15), vsubq_s32(v19, v15)));
    v38.val[2] = veorq_s8(veorq_s8(vqtbl1q_s8(v23, xmmword_100BC7680), v15), vmulq_s32(vaddq_s32(v17, v15), vsubq_s32(v17, v15)));
    v38.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v23, xmmword_100BC7670), v15), vmulq_s32(vaddq_s32(v16, v15), vsubq_s32(v16, v15)));
    *(v12 + v2) = vmulq_s8(vqtbl4q_s8(v38, xmmword_100BC7660), v21);
    v2 += 16;
    v19 = vaddq_s32(v19, v22);
    v18 = vaddq_s32(v18, v22);
    v17 = vaddq_s32(v17, v22);
    v16 = vaddq_s32(v16, v22);
  }

  while (v2 != 784);
  v24 = 0;
  v25 = xmmword_100F52B30;
  v26 = vdupq_n_s32(v14);
  v27 = xmmword_100F52B40;
  v28 = v12 + 784;
  v29.i64[0] = 0x800000008;
  v29.i64[1] = 0x800000008;
  do
  {
    v20.i64[0] = *(v28 + v24);
    v37.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v20, xmmword_100BC7690), v26), vmulq_s32(vaddq_s32(v25, v26), vsubq_s32(v25, v26)));
    v37.val[0] = veorq_s8(vqtbl1q_s8(v20, xmmword_100BC76A0), veorq_s8(v26, vmulq_s32(vaddq_s32(v27, v26), vsubq_s32(v27, v26))));
    v20 = vqtbl2q_s8(v37, xmmword_100F52AD0);
    *(v28 + v24) = vmul_s8(*v20.i8, 0x9393939393939393);
    v27 = vaddq_s32(v27, v29);
    v25 = vaddq_s32(v25, v29);
    v24 += 8;
  }

  while (v24 != 8);
  v30 = 98;
  v31 = STACK[0x650];
  do
  {
    v32 = 16777619 * ((v14 + v30) ^ v14) % v30;
    v33 = *(v12 + 8 * v32) ^ *(v12 + 8 * v30);
    *(v12 + 8 * v30) = v33;
    v34 = *(v12 + 8 * v32) ^ v33;
    *(v12 + 8 * v32) = v34;
    *(v12 + 8 * v30) ^= v34;
    v35 = v30-- + 1;
  }

  while (v35 > 2);
  STACK[0x38D0] = v4;
  return (*(STACK[0xF18] + 8 * (((*(v31 - 108594335) == 0) * (v0 - 20583)) | v0)))(xmmword_100BC7690, xmmword_100BC76A0, v25);
}

uint64_t sub_1002DCCA8()
{
  *v1 |= 0x80u;
  *(STACK[0xB588] + 36) = v0 + *STACK[0xA3E8] - 176774936 + (v2 ^ 0x9E1B);
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1002DCD00@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x5FF8] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * ((a1 + 6499) ^ a1)))();
}

uint64_t sub_1002DCD38(uint64_t a1, uint64_t a2)
{
  STACK[0x6EE8] = 0;
  LODWORD(STACK[0x506C]) = -371865839;
  LODWORD(STACK[0x1F70]) = -371865839;
  STACK[0x6490] = 0;
  STACK[0x5A28] = 0;
  return (*(STACK[0xF18] + 8 * (((STACK[0x33E0] != 0) * (((v2 ^ 0xA92B) + 33767) ^ 0x8A4B)) ^ v2)))(a1, a2, 371891400);
}

uint64_t sub_1002DCD9C()
{
  STACK[0x10ED8] = v0;
  LODWORD(STACK[0x10EE4]) = v1 - 193924789 * ((((&STACK[0x10000] + 3800) | 0xEBDE35D) - ((&STACK[0x10000] + 3800) & 0xEBDE358)) ^ 0xB806D13B) + 12777;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 19439)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * ((64333 * (LODWORD(STACK[0x10EE0]) == ((v1 - 27060) ^ 0xCD4) - 371872432)) ^ v1)))(v3);
}

uint64_t sub_1002DCE50()
{
  v0 = STACK[0xF10] - 21074;
  v1 = STACK[0x1800];
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(*(STACK[0x1800] + 736));
  *(v1 + 736) = 0;
  *(v1 + 744) = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1002DCE98()
{
  LODWORD(STACK[0xB74C]) = -371865839;
  LODWORD(STACK[0xB748]) = v1;
  LODWORD(STACK[0xB744]) = 1487383158;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002DCF78()
{
  v1 = STACK[0x3E38] - 0x20DE4F5147E73151;
  v2 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0xDA82 ^ (v0 + 49422))))(v1);
}

uint64_t sub_1002DD1A4@<X0>(int a1@<W8>)
{
  v1 = STACK[0x4560];
  STACK[0x5BB0] = ((a1 - 1078647967) & 0x404AF77F) + (STACK[0x5738] ^ 0x1997FC2BFFDBFFFFLL) - 0x8124221188B309 + ((((a1 - 5917) | 0xB00u) ^ 0x332FF857FFB774C4) & (2 * STACK[0x5738]));
  return (*(STACK[0xF18] + 8 * ((v1 == 0) ^ a1)))();
}

uint64_t sub_1002DD2E0@<X0>(unsigned int a1@<W8>)
{
  v2 = (a1 + 935280095) | 0x8B2B;
  *((v1 - 2092435809) + STACK[0x9CE0] + STACK[0x9CE8] - 0x65541CB1BFED98C2) = *(STACK[0x9CD8] + (v1 - 2092435809)) ^ 0x5F;
  LODWORD(STACK[0xDB0]) = v2;
  v3 = *(STACK[0xF18] + 8 * (((v2 - 32126) * (a1 > 0x61613A15)) ^ (a1 + 935280838)));
  LODWORD(STACK[0xDA0]) = v1 - 1;
  return v3();
}

uint64_t sub_1002DD380()
{
  v0 = STACK[0xF10] - 21797;
  *STACK[0xAC18] = (*STACK[0xAC30] ^ ((STACK[0xF10] ^ 0x3A5A) + 2111775324)) + *STACK[0xAC18] + ((2 * *STACK[0xAC30]) & 0x17A) - 2111820733;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002DD44C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xAAD0]) = a1 | 4;
  v4 = (((v3 ^ 0x9C59B8C3) + ((v1 + 548825889) & 0xDF495FD7) - 1196061673) ^ ((v3 ^ 0x9641544) + 763901675) ^ (((v1 - 1476693399) ^ v3) - 2095606422)) + 1250799905;
  v6 = v4 < 0x60B7EA10 || (a1 | 0x60B7EA14u) <= v4;
  v7 = v2 & v6;
  if (v7)
  {
    v8 = -371865839;
  }

  else
  {
    v8 = 371891407;
  }

  LODWORD(STACK[0xAAD4]) = v8;
  return (*(STACK[0xF18] + 8 * ((49511 * v7) ^ v1)))();
}

uint64_t sub_1002DD63C()
{
  v1 = STACK[0x6DE0];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393349;
  return (*(STACK[0xF18] + 8 * ((v0 + 1692931598) & 0x648A1BF9)))();
}

uint64_t sub_1002DD690@<X0>(int a1@<W8>)
{
  v1 = a1 - 16171;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 + 16238)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1002DD748()
{
  v1 = STACK[0xF10] - 1513;
  *STACK[0xB618] = v0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1002DD844()
{
  v2 = *(v1 + 8);
  STACK[0x95A8] = v1 + 8;
  LODWORD(STACK[0x10ED8]) = (v0 + 703921893) ^ (634647737 * ((((&STACK[0x10000] + 3800) | 0x43C04777) - ((&STACK[0x10000] + 3800) & 0x43C04770)) ^ 0x2E56688B));
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0xDBAA)))(&STACK[0x10ED8]);
  v4 = LODWORD(STACK[0x31F4]);
  STACK[0x3C98] = *(v3 + 8 * v0);
  return (*(v3 + 8 * ((((v0 + 4261) | 0x8100) ^ 0xA62B) + v0)))(&STACK[0x194F], v4);
}

uint64_t sub_1002DD928@<X0>(unint64_t *a1@<X7>, int a2@<W8>)
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
  STACK[0xBD60] = 0;
  STACK[0xBD68] = v2;
  v13 = 16777619 * ((553300517 * v12 + 7) ^ (553300517 * v12)) % 7;
  v14 = 16777619 * ((553300517 * v12 + 6) ^ (553300517 * v12)) % 6;
  v15 = 16777619 * ((553300517 * v12 + 5) ^ (553300517 * v12)) % 5;
  v16 = *(&STACK[0xBD60] | v13);
  *(&STACK[0xBD60] | v13) = STACK[0xBD67];
  v17 = *(&STACK[0xBD60] | v14);
  *(&STACK[0xBD60] | v14) = STACK[0xBD66];
  v18 = *(&STACK[0xBD60] | v15);
  *(&STACK[0xBD60] | v15) = STACK[0xBD65];
  v19 = vdup_n_s32(553300517 * v12);
  v20 = 16777619 * ((553300517 * v12 + 3) ^ (553300517 * v12)) % 3;
  v21.i32[0] = v19.i32[0];
  v21.i32[1] = 553300517 * v12 + 1;
  LOBYTE(STACK[0xBD67]) = v16;
  v22 = veor_s8(vmul_s32(v21, v19), v19);
  LOBYTE(STACK[0xBD66]) = v17;
  LOBYTE(STACK[0xBD65]) = v18;
  v23 = STACK[0xBD60];
  LOBYTE(STACK[0xBD60]) = STACK[0xBD64];
  LOBYTE(STACK[0xBD64]) = v23;
  v24 = *(&STACK[0xBD60] | v20);
  *(&STACK[0xBD60] | v20) = STACK[0xBD63];
  LOBYTE(STACK[0xBD63]) = v24;
  v25 = STACK[0xBD61];
  LOBYTE(STACK[0xBD62]) = STACK[0xBD60];
  LOWORD(STACK[0xBD60]) = v25;
  STACK[0xBD60] = vmla_s32(v22, STACK[0xBD60], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBD68];
  v27 = (553300517 * STACK[0xBD68]) ^ v12;
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
  v48 = *(&STACK[0xBD68] + v13);
  *(&STACK[0xBD68] + v13) = STACK[0xBD6F];
  LOBYTE(STACK[0xBD6F]) = v48;
  v49 = *(&STACK[0xBD68] + v14);
  *(&STACK[0xBD68] + v14) = STACK[0xBD6E];
  LOBYTE(STACK[0xBD6E]) = v49;
  v50 = *(&STACK[0xBD68] + v15);
  *(&STACK[0xBD68] + v15) = STACK[0xBD6D];
  LOBYTE(STACK[0xBD6D]) = v50;
  v51 = STACK[0xBD68];
  LOBYTE(STACK[0xBD68]) = STACK[0xBD6C];
  LOBYTE(STACK[0xBD6C]) = v51;
  v52 = *(&STACK[0xBD68] + v20);
  *(&STACK[0xBD68] + v20) = STACK[0xBD6B];
  LOBYTE(STACK[0xBD6B]) = v52;
  v53 = STACK[0xBD69];
  LOBYTE(STACK[0xBD6A]) = STACK[0xBD68];
  LOWORD(STACK[0xBD68]) = v53;
  STACK[0xBD68] = vmla_s32(v22, STACK[0xBD68], vdup_n_s32(0x1000193u));
  *a1 = STACK[0xBD68] ^ STACK[0xBD60];
  return (*(STACK[0xF18] + 8 * a2))();
}

uint64_t sub_1002DDDC8@<X0>(int a1@<W0>, int a2@<W2>, uint64_t a3@<X3>, int a4@<W4>, int a5@<W5>, char a6@<W6>, int a7@<W7>, int a8@<W8>)
{
  v16 = ((2 * (v8 & 0x51 ^ 0x3B247F6E)) ^ v11) & (v8 ^ 0xB8FAE43F) ^ v8 & 0x51 ^ 0x3B247F6E ^ (((a8 - 44346) | 0x1008) + 153347286 + ((2 * (v8 & 0x51 ^ 0x3B247F6E)) & 0x10003A6E));
  v17 = ((2 * (v8 ^ 0xB8FAE43F)) ^ v11) & (v8 ^ 0xB8FAE43F) ^ ((2 * (v8 ^ 0xB8FAE43F)) & 0x16E | 0x22004400);
  v18 = v16 ^ v17 & 0x4D000DC ^ ((4 * v16) ^ 0x95F52E54) & (v17 ^ a7);
  v19 = ((4 * v17) ^ 0x7964D3EC) & (v17 ^ a7) ^ v17 & 0x4D000DC;
  v20 = v18 ^ v19 & v14 ^ ((16 * v18) ^ 0xAFB3CC3C) & (v19 ^ a7);
  v21 = ((16 * v19) ^ 0x8FB79E1C) & (v19 ^ a7) ^ v19 & v14;
  v22 = v20 ^ v21 & v14 ^ ((v20 << 8) ^ 0x1DB118DC) & (v21 ^ 0x19243A6E);
  v23 = ((v21 << 8) ^ 0x39CE76DC) & (v21 ^ 0x19243A6E) ^ v21 & v14;
  v24 = v22 ^ v23 & v14 ^ ((v22 << 16) ^ 0x629A3ADC) & (v23 ^ 0x22000000) ^ ((v22 << 16) ^ 0x629A3ADC) & 0x3B243A4C;
  v25 = (*(v12 + 8) + (((((2 * v8) ^ (4 * v24) ^ 0x191B236C) + 1149534890) ^ (((2 * v8) ^ (4 * v24) ^ 0xA7191863) - 91833945) ^ (((2 * v8) ^ (4 * v24) ^ v10) + a1)) + a2) % *(v12 + 32));
  v26 = ((v25 ^ *(v15 + (v9 & a3))) & 0x7FFFFFFF) * a4;
  v27 = (v26 ^ HIWORD(v26)) * a4;
  v28 = (*(v12 + 8) + (3 * v8 + a5) % *(v12 + 32));
  v29 = *v28;
  LODWORD(v28) = ((*(*STACK[0xE50] + (*STACK[0xE58] & a3)) ^ v28) & 0x7FFFFFFF) * a4;
  v30 = (v28 ^ (v28 >> 16)) * a4;
  return (*(STACK[0xF18] + 8 * ((((((*(STACK[0x888] + (v27 >> 24)) ^ *v25 ^ *((v27 >> 24) + STACK[0x880] + 3) ^ *((v27 >> 24) + STACK[0x890] + 2)) ^ (v27 ^ (15 * BYTE3(v27)))) & 0x1F) == (((*(STACK[0x8C8] + (v30 >> 24)) ^ v29 ^ *((v30 >> 24) + STACK[0x920] + 1) ^ *((v30 >> 24) + STACK[0x8D0] + 3)) ^ (v30 ^ (BYTE3(v30) * a6))) & 0x1F)) * v13) ^ a8)))();
}

uint64_t sub_1002DE09C()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 32501;
  v2 = STACK[0x9894];
  v3 = STACK[0x28F8];
  v4 = ((STACK[0xF10] - 35117) | 0x8010) ^ 0x449AEC36 ^ LODWORD(STACK[0x98A0]);
  v5 = STACK[0x9898];
  v6 = STACK[0xF10] + 727016269;
  v7 = 1603510583 * (((((&STACK[0x10000] + 3800) | 0x1C090E90) ^ 0xFFFFFFFE) - (~(&STACK[0x10000] + 3800) | 0xE3F6F16F)) ^ 0x742DC3C4);
  v8 = (LODWORD(STACK[0x98A4]) ^ 0x3E83CC6A) - v7;
  LODWORD(STACK[0x10ED8]) = v7 ^ 0x3A6F08A;
  STACK[0x10F08] = v5;
  LODWORD(STACK[0x10EE0]) = v8;
  LODWORD(STACK[0x10EE4]) = v7 ^ v2 ^ 0x32F29868;
  LODWORD(STACK[0x10EE8]) = v6 ^ v7;
  LODWORD(STACK[0x10F00]) = v4 + v7;
  STACK[0x10EF0] = v3;
  STACK[0x10EF8] = &STACK[0xF28] ^ 0x842B260C4815F818;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4776)))(&STACK[0x10ED8]);
  STACK[0x4B88] = *(v9 + 8 * v1);
  return (*(v9 + 8 * (v1 ^ 0x1897)))(v10);
}

uint64_t sub_1002DE23C(uint64_t a1)
{
  v4 = *(v3 + 112);
  *(a1 + 2160) = v3 + 112;
  v5 = ((v2 + 1449151190) & 0x72C14D5F ^ 0xA62387B0) + v1;
  *(a1 + 2168) = v5;
  v6 = *(v4 + 72 * v5 + 12);
  return (*(STACK[0xF18] + 8 * ((224 * (((v6 - v2) | (v2 - v6)) >= 0)) ^ ((((v2 - 920545543) | 0x8B33) ^ 0xC9214C56) + v2))))();
}

uint64_t sub_1002DE2D0(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xF10] - 27257;
  STACK[0x95A0] = STACK[0x5480] + 48;
  LOWORD(STACK[0x79DE]) = 7149;
  LODWORD(STACK[0x16B4]) = -2138642675;
  return (*(STACK[0xF18] + 8 * v2))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_1002DE324()
{
  v1 = STACK[0xF18];
  STACK[0x2378] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0xFCA3 ^ (17 * (v0 ^ 0x1807)))))();
}

uint64_t sub_1002DE360()
{
  v1 = STACK[0x9410];
  STACK[0x10EF0] = STACK[0x5DA8];
  STACK[0x10EE0] = v1;
  LODWORD(STACK[0x10ED8]) = v0 - 155453101 * ((((&STACK[0x10000] + 3800) | 0xF06D13B5) + (~(&STACK[0x10000] + 3800) | 0xF92EC4A)) ^ 0x164B087B) + 25954;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0xE90D)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * ((37598 * (LODWORD(STACK[0x10EE8]) == (v0 ^ 0x2298) - 371904364 + 1540 * (v0 ^ 0x2298))) ^ v0)))(v3);
}

uint64_t sub_1002DE50C()
{
  STACK[0x2248] = STACK[0x3718];
  LODWORD(STACK[0x89F4]) = STACK[0x4914];
  LODWORD(STACK[0x10ED8]) = (v0 - 1762639521) ^ (906386353 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x1B97CE40) - 1684550078) ^ 0xAA960366));
  STACK[0x10EE0] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 38025)))(&STACK[0x10ED8]);
  v4 = *STACK[0x970] != v0 - 13872 || *STACK[0x940] == 0;
  return (*(v1 + 8 * ((v4 * (((v0 - 11270) | 0x8111) ^ 0x8B30)) ^ v0)))(v2);
}

uint64_t sub_1002DE5F4()
{
  v0 = (STACK[0xF10] - 35541) | 0x1689;
  v1 = STACK[0xF10] - 33763;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x1B89) + v1)))();
}

uint64_t sub_1002DE6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *STACK[0x2F80];
  v6 = STACK[0xF18];
  v7 = *(STACK[0xF18] + 8 * v4);
  STACK[0x7E20] = STACK[0x2F80] + 8;
  STACK[0x5FF8] = v7;
  return (*(v6 + 52088))(a1, a2, a3, a4, v5);
}

uint64_t sub_1002DE72C()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 3469)))(3204694014, 1090286692, 4294923066, 35593, 4294941560, 1194047912, 35641, 1090303727);
}

uint64_t sub_1002DE9D0()
{
  STACK[0x5400] = STACK[0x27E8];
  STACK[0x41A0] = &STACK[0x7FC4];
  LODWORD(STACK[0x20CC]) = -371865835;
  LODWORD(STACK[0x38AC]) = -320919632;
  return (*(STACK[0xF18] + 8 * ((v0 + 2146888656) & 0xD11E65FD)))();
}

uint64_t sub_1002DEA5C@<X0>(int a1@<W8>)
{
  v4 = (((v3 ^ (v1 - 792488095)) + 792467707) ^ ((v3 ^ 0xF1D0B705) + 237979899) ^ ((v3 ^ 0xC8C69711) + 926509295)) - 414510304;
  v5 = ((a1 - 42644445) < 0xFD754C0F) ^ (v4 < 0xFD754C0F);
  v6 = a1 - 42644445 > v4;
  if (v5)
  {
    v6 = (a1 - 42644445) < 0xFD754C0F;
  }

  if (v6)
  {
    v2 = 371891407;
  }

  return (*(STACK[0xF18] + 8 * ((63172 * (v2 == -371865839)) ^ v1)))();
}

uint64_t sub_1002DEB38()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] + 1546;
  v2 = STACK[0x9AD8];
  v3 = STACK[0x3410];
  v4 = ((LODWORD(STACK[0x345C]) ^ 0x488A9309) - 1217041161) ^ ((LODWORD(STACK[0x345C]) ^ 0x12A82A63) - 313010787) ^ (((STACK[0xF10] - 1516424648) & 0x5A62DE9D ^ 0xB3F7E26A ^ LODWORD(STACK[0x345C])) + 1275625861);
  v5 = 297845113 * ((~(&STACK[0x10000] + 3800) & 0xB6C57F7F | (&STACK[0x10000] + 3800) & 0x493A8080) ^ 0xC1F663E1);
  STACK[0x10EE0] = STACK[0xA960];
  LODWORD(STACK[0x10EE8]) = v0 - v5 - 15372;
  STACK[0x10EF8] = v2;
  STACK[0x10EF0] = v3;
  LODWORD(STACK[0x10ED8]) = v5 + v4 + 1257541977;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4061)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * (v1 | (16 * (((v0 - 58) ^ LOBYTE(STACK[0xA972])) & 1)))))(v7);
}

uint64_t sub_1002DEC7C()
{
  v2 = (v1 - 32051) | 0x6001;
  v4 = v0 != ((v2 - 8673) | 0x2200) + ((v2 + 1792032996) & 0x952F7DD3) - 39656 || *STACK[0x940] == 0;
  return (*(STACK[0xF18] + 8 * ((v4 | (32 * v4)) ^ v2)))();
}

uint64_t sub_1002DED10()
{
  v2 = (((LODWORD(STACK[0x2534]) ^ 0x588DBB06) - 1485683462) ^ ((LODWORD(STACK[0x2534]) ^ 0xB0A5F298) + 1331301736) ^ ((LODWORD(STACK[0x2534]) ^ 0x1FD05B4 ^ ((29 * (v1 ^ 0x2F55) - 14293) | 0x8A32)) - 33394319)) - 323111240;
  v3 = v2 < 0x2E7EFA7;
  v4 = v0 - 186773205 < v2;
  if ((v0 - 186773205) < 0x2E7EFA7 != v3)
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((!v4 | (4 * !v4)) ^ v1)))();
}

uint64_t sub_1002DEE10()
{
  v3 = (*v0 ^ 0xE7) + ((v2 - 55) | 3) + ((*v0 << ((v2 - 55) ^ 0x81)) & 0xCE) - 9;
  *(v1 + 8) = v3;
  *v1 = 993499388;
  STACK[0x5640] = v1 + 8;
  return (*(STACK[0xF18] + 8 * ((113 * (v3 == 98)) ^ v2)))();
}

uint64_t sub_1002DEE88()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x9E5B)))();
  *(v0 + 16) = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1002DEEB8()
{
  v3 = (5 * (v2 ^ 0x7885u)) ^ v1 ^ ((v2 ^ 0x7885u) - 1661 + 0x65D7F4DC844531DBLL);
  STACK[0x2F68] = v3;
  return (*(STACK[0xF18] + 8 * ((v3 == v0) ^ v2)))();
}

uint64_t sub_1002DEF04()
{
  STACK[0x9658] = STACK[0x6810] - ((2 * STACK[0x6810]) & 0x130272185FDB248CLL) + 0x981390C2FED9246;
  LODWORD(STACK[0x1D4C]) = STACK[0x4E6C];
  STACK[0x3388] = STACK[0x4FA0];
  LODWORD(STACK[0x8FB4]) = STACK[0x5D24];
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762671542) ^ (906386353 * (((((&STACK[0x10000] + 3800) | 0xBB4210F8) ^ 0xFFFFFFFE) - (~(&STACK[0x10000] + 3800) | 0x44BDEF07)) ^ 0x75BC2223));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x79FC)))(&STACK[0x10ED8]);
  if (*STACK[0x970])
  {
    v3 = 1;
  }

  else
  {
    v3 = *STACK[0x940] == 0;
  }

  v4 = v3;
  return (*(v1 + 8 * ((v4 * (327 * (v0 ^ 0xB328) - 35412)) ^ v0)))(v2);
}

uint64_t sub_1002DF028()
{
  LODWORD(STACK[0x8FC4]) = v0;
  v2 = STACK[0xF18];
  STACK[0x1518] = *(STACK[0xF18] + 8 * (v1 - 31840));
  return (*(v2 + 8 * (v1 - 64288 + ((v1 + 979113027) & 0xC5A3F5CD))))();
}

uint64_t sub_1002DF080()
{
  STACK[0x9A48] = v1;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 + 4126)))();
}

uint64_t sub_1002DF278@<X0>(unsigned int a1@<W8>)
{
  v2 = *(*(STACK[0x650] + v1) + 8 * (SLODWORD(STACK[0x2D60]) ^ 0x4DC1E900));
  STACK[0x2010] = v2;
  return (*(STACK[0xF18] + 8 * ((7 * ((*v2 & (((a1 - 23520) | 0x882B) ^ 0x8B3A)) != a1 - 24304)) ^ a1)))();
}

uint64_t sub_1002DF474()
{
  LODWORD(STACK[0x6D90]) = 12;
  v1 = *STACK[0xEB0];
  LODWORD(STACK[0xE90]) = (v1 & 0xFFFF0000) == 0x40000;
  LODWORD(STACK[0xE70]) = v1;
  v2 = *(STACK[0xF18] + 8 * (((((v0 - 24) ^ ((v1 & 0xFFFE0000) != 0)) & 1) * (13 * (v0 ^ 0x2D00) - 14420)) ^ v0));
  LODWORD(STACK[0xE80]) = -371865855;
  LODWORD(STACK[0xED0]) = -371865839;
  return v2(3923101457);
}

uint64_t sub_1002DF534()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  STACK[0x1038] = 0;
  return (*(v1 + 8 * (v0 - 16003)))(v2);
}

uint64_t sub_1002DF564(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xF10] - 27257;
  LODWORD(STACK[0x6AD4]) = ((STACK[0xF10] - 28542) ^ LOWORD(STACK[0x897E])) + LODWORD(STACK[0x29A4]);
  STACK[0x95A0] = STACK[0x4B08];
  LOWORD(STACK[0x79DE]) = 7085;
  LODWORD(STACK[0x16B4]) = 620659909;
  return (*(STACK[0xF18] + 8 * v2))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_1002DF838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, int a11, int a12, int a13, char a14, int a15)
{
  v18 = v15 >> a14;
  v19 = *(a9 + 4 * ((0x9ED10ECD % v18) & 0x3FFFFFFC));
  v20 = *(a9 + 4 * (v19 & a13 & (v18 + 0xFFFF)));
  v21 = *(v17 + 8 * a12);
  v22 = *(v21 - 527405895);
  v23 = *(v17 + 8 * a11) + 4 * v22;
  v24 = ~v20 & (~v19 >> 16);
  if (v24)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v23 - 1940437438);
  }

  *(v23 - 1940437438) *= v24 + v24 * *(v23 - 1940437438) + v25;
  *(v21 - 527405895) = (v22 + 1) % 6u;
  return (*(v16 + 8 * (HIDWORD(a10) ^ (10840 * ((((v24 - a15) | (a15 - v24)) & 0x80000000) == 0)))))(a1, a2, a3, a4, a5, a6, a7, a8, a10);
}

uint64_t sub_1002DFA00()
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393323;
  return (*(STACK[0xF18] + 8 * (v0 - 29050)))();
}

uint64_t sub_1002DFA3C()
{
  v2 = STACK[0xF18];
  v3 = *(STACK[0xF18] + 8 * v0);
  STACK[0x3940] = v1;
  STACK[0x2C40] = v3;
  return (*(v2 + 8 * ((11 * (v0 ^ 0x184) - 668) ^ v0)))();
}

uint64_t sub_1002FAE64()
{
  v2 = v0 - 26939;
  v3 = *(STACK[0x2CC0] + 8 * v1);
  STACK[0x81A8] = STACK[0x8C68];
  STACK[0x97E8] = v3;
  LODWORD(STACK[0x6974]) = 103711523;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1002FAEE8()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x6D9DFC9)))();
  return (*(v1 + 8 * ((30848 * (v0 > 0x8E2E07C4)) ^ (v0 - 114879203))))(v2);
}

uint64_t sub_1002FAFC0()
{
  LODWORD(STACK[0x3C24]) = v1;
  v2 = v1 == ((v0 - 167583878) & 0x9FD9FBF) - 371901482;
  return (*(STACK[0xF18] + 8 * (((v2 << 11) | (v2 << 13)) ^ v0)))();
}

uint64_t sub_1002FB00C()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v1 + 8 * (v0 - 4844)))(v2);
}

uint64_t sub_1002FB038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  LODWORD(STACK[0x4834]) = -371865839;
  *a7 = 0;
  *(v7 + 128) = 0;
  v9 = v7 + 128;
  STACK[0x7F70] = v9;
  *(v9 + 8) = 0;
  STACK[0x1BC8] = v9 + 8;
  STACK[0x13B8] = v9 + 0x6FFE6D3084B38805;
  *(v9 + 16) = -371865839;
  *(v9 + 24) = 0;
  STACK[0x7BC0] = v9 + 24;
  *(v9 + 32) = -371865839;
  STACK[0x2718] = v9 + 32;
  *(v9 + 48) = -371865839;
  *(v9 + 40) = 0;
  return (*(STACK[0xF18] + 8 * (v8 ^ 0x9E69 ^ (v8 + 34834))))(a1, a2, a3, a4, a5, a6, &STACK[0xA237]);
}

uint64_t sub_1002FB0D0(uint64_t a1, uint64_t a2)
{
  STACK[0x95A0] = STACK[0x8838] + 68;
  LOWORD(STACK[0x79DE]) = 7085;
  LODWORD(STACK[0x16B4]) = -1877853934;
  return (*(STACK[0xF18] + 8 * ((20613 * (v2 == (((v2 - 1941287667) | 0x8103) ^ 0x86BEFB05))) ^ (v2 - 1941277883))))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_1002FB1EC@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>, __n128 a6@<Q4>, __n128 a7@<Q5>, int8x16_t a8@<Q6>)
{
  v23 = *(a1 + v8 + 13);
  v24 = *(a1 + v8 + 14);
  v25 = *(a1 + v8 + 15);
  v26 = *(v12 + v8 + a1 - 60);
  v27 = *(a1 + v8) - 7;
  v28 = *(a1 + v8 + 1) - 7;
  v29 = *(a1 + v8 + 2) - 7;
  v30 = *(a1 + v8 + 3) - 7;
  v31 = *(a1 + v8 + 5) - 7;
  v32 = *(a1 + v8 + 6) - 7;
  v33 = *(a1 + v8 + 7) - 7;
  v34 = *(a1 + v8 + 8) - 7;
  v35 = *(a1 + v8 + 9) - 7;
  v36 = *(a1 + v8 + 10) - 7;
  v37 = *(a1 + v8 + 11) - 7;
  STACK[0xEA0] = *(a1 + v8 + 12) - 7;
  v38 = *(&off_1010A0B50 + SLODWORD(STACK[0xE90])) + v10;
  v39.i8[0] = v38[v27];
  v39.i8[1] = v38[v28];
  v39.i8[2] = v38[v29];
  v39.i8[3] = v38[v30];
  v39.i8[4] = v38[(v26 - 7)];
  v39.i8[5] = v38[v31];
  v39.i8[6] = v38[v32];
  v39.i8[7] = v38[v33];
  v39.i8[8] = v38[v34];
  v39.i8[9] = v38[v35];
  v39.i8[10] = v38[v36];
  v39.i8[11] = v38[v37];
  v39.i8[12] = v38[STACK[0xEA0]];
  v39.i8[13] = v38[(v23 - 7)];
  v39.i8[14] = v38[(v24 - 7)];
  v40 = vaddq_s8(vsubq_s8(a8, vandq_s8(vaddq_s8(a8, a8), v20)), v21);
  v39.i8[15] = v38[(v25 - 7)];
  *(a1 + v8) = vaddq_s8(vaddq_s8(veorq_s8(veorq_s8(vaddq_s8(veorq_s8(v40, v22), v13), vaddq_s8(veorq_s8(v40, v14), v15)), vaddq_s8(veorq_s8(v40, v16), v17)), v18), v39);
  return (*(STACK[0xF18] + 8 * (((v8 == 64) * v11) ^ v9)))(a2, a3, a4, a5, a6, a7, vaddq_s8(a8, v19));
}

uint64_t sub_1002FB4C8()
{
  v0 = STACK[0xF10] - 6565;
  v1 = STACK[0xF10] - 109;
  STACK[0x9D68] = &STACK[0x42A8];
  if (STACK[0x2920])
  {
    v2 = LODWORD(STACK[0x49CC]) == (v0 ^ 0xE9D5B687);
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  return (*(STACK[0xF18] + 8 * ((16 * v3) | (32 * v3) | v1)))();
}

uint64_t sub_1002FB530(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0xB35C]) = a3;
  STACK[0x10EE8] = &STACK[0x96D4];
  LODWORD(STACK[0x10ED8]) = (v3 + 12299) ^ (906386353 * ((&STACK[0x10000] + 3800) ^ 0x3101CD24));
  LOWORD(STACK[0x10EE0]) = 23473 * ((&STACK[0x10000] + 3800) ^ 0xCD24) + 18064;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v3 + 51095)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (v3 ^ 0x9E5A ^ (v3 + 34849))))(v5);
}

uint64_t sub_1002FB62C()
{
  v2 = *(v1 + 104);
  STACK[0x8750] = v1 + 104;
  return (*(STACK[0xF18] + 8 * (((v2 != 0x7E666516A39B34A6) * ((v0 - 22035) ^ 0xE3D)) ^ v0)))();
}

uint64_t sub_1002FB6E8()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 2312)))();
}

uint64_t sub_1002FB7AC@<X0>(int a1@<W8>)
{
  v1 = a1 + 27834;
  v2 = &STACK[0xC4D0] + STACK[0xDB0];
  STACK[0xD50] = (v2 + 5120);
  STACK[0xED0] = *(STACK[0xF18] + 8 * v1);
  *&STACK[0xDD0] = vdupq_n_s32(0xC9EC47A6);
  *&STACK[0xDC0] = vdupq_n_s32(0x41AC0105u);
  *&STACK[0xEC0] = vdupq_n_s32(0x1A00683u);
  *&STACK[0xEB0] = vdupq_n_s32(0x88C44287);
  *&STACK[0xEA0] = vdupq_n_s32(0xEC470000);
  *&STACK[0xE90] = vdupq_n_s32(0xC9EC0000);
  *&STACK[0xE80] = vdupq_n_s32(0xFCE5192u);
  STACK[0xD60] = v2;
  STACK[0xD70] = &v2[(v1 - 11129) | 0x2020];
  return (STACK[0xED0])();
}

uint64_t sub_1002FBB48()
{
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((((2 * (&STACK[0x10000] + 3800)) | 0x95C6BE7A) - (&STACK[0x10000] + 3800) + 891068611) ^ 0x2CC544F2) + 296782153;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 45321)))(&STACK[0x10ED8]);
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393262;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1002FBC24@<X0>(uint64_t a1@<X8>)
{
  v7 = v6 + v4;
  v8 = v6 - 1;
  *(a1 + v8) = *(v1 + v8) ^ *(v3 + v8) ^ (-73 * v8) ^ *(v7 + 5) ^ *(v5 + v8) ^ 0x5F;
  return (*(STACK[0xF18] + 8 * ((28938 * (((((v8 - v2) | (v2 - v8)) >> (((v2 - 8) & 0xEF) + 87)) & 1) == 0)) ^ (v2 + 16117))))();
}

uint64_t sub_1002FBD54@<X0>(int a1@<W8>)
{
  v1 = (((*(STACK[0x7B80] + 16) ^ 0xB6C632D8) + 1228524840) ^ ((*(STACK[0x7B80] + 16) ^ 0x9233AABD) + 1842107715) ^ (((11881 * ((((a1 ^ 0x2E9A9236) + 8264) | 0x12A) ^ 0x8B38) - 853552071) ^ *(STACK[0x7B80] + 16)) + 853516428)) - 206140430;
  v2 = (v1 ^ 0xE79F331E) & (2 * (v1 & 0xF61F3B1F)) ^ v1 & 0xF61F3B1F;
  v3 = ((2 * (v1 ^ 0x2787651A)) ^ 0xA330BC0A) & (v1 ^ 0x2787651A) ^ (2 * (v1 ^ 0x2787651A)) & 0xD1985E04;
  v4 = v3 ^ 0x50884205;
  v5 = (v3 ^ 0x80101C00) & (4 * v2) ^ v2;
  v6 = ((4 * v4) ^ 0x46617814) & v4 ^ (4 * v4) & 0xD1985E04;
  v7 = (v6 ^ 0x40005800) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0x91980601)) ^ 0x1985E050) & (v6 ^ 0x91980601) ^ (16 * (v6 ^ 0x91980601)) & 0xD1985E00;
  v9 = (v1 ^ (2 * ((((v8 ^ 0xC0181E05) << 8) & 0x51980000 ^ 0x10180000 ^ (((v8 ^ 0xC0181E05) << 8) ^ 0x985E0000) & (v8 ^ 0xC0181E05)) & (((v8 ^ 0x11804000) & (v7 << 8) ^ v7) << 16) ^ (v8 ^ 0x11804000) & (v7 << 8) ^ v7))) != -165725409;
  return (*(STACK[0xF18] + 8 * ((4 * v9) | (16 * v9) | a1 ^ 0x2E9A9236)))();
}

uint64_t sub_1002FBF8C()
{
  LODWORD(STACK[0x1D44]) = v1;
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762640261) ^ (906386353 * ((2 * ((&STACK[0x10000] + 3800) & 0x6480C980) - (&STACK[0x10000] + 3800) + 461321849) ^ 0x2A7EFB5D));
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0xF3AD)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * (v0 ^ (2 * (((v0 + 1) ^ (*STACK[0x970] > 0)) & 1)))))(v3);
}

uint64_t sub_1002FC128()
{
  v1 = STACK[0xF18];
  v2 = STACK[0x8EF8] + 16;
  (*(STACK[0xF18] + 8 * (v0 + 32975)))(*(&off_1010A0B50 + (v0 ^ 0x4D66)) - 446480938, v2, 16);
  v3 = STACK[0x6E50];
  v4 = 353670337 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x6F630DC8) - 278721074) ^ 0x5B42F5F3);
  LODWORD(STACK[0x10EEC]) = ((LODWORD(STACK[0x381C]) ^ 0xDFFBFFFE) + 796785494 + ((2 * LODWORD(STACK[0x381C])) & 0xBFF7FFFC)) ^ v4;
  STACK[0x10EE0] = v3;
  LODWORD(STACK[0x10ED8]) = v4 + v0 + 27654;
  STACK[0x10EF8] = v3;
  STACK[0x10EF0] = v2;
  v5 = (*(v1 + 8 * (v0 ^ 0x852D)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (((LODWORD(STACK[0x10EE8]) == ((v0 + 12368) ^ 0xE9D5BD53)) * (v0 + 42574)) ^ v0)))(v5);
}

uint64_t sub_1002FC300()
{
  if (v1 == 1 && v0 == ((3 * (v2 ^ 0x78) + 115) ^ 0xAF))
  {
    v5 = v3;
  }

  else
  {
    v5 = 371891407;
  }

  return (*(STACK[0xF18] + 8 * ((981 * (((v5 - v2) | (v2 - v5)) >= 0)) ^ (v2 + 371877614))))();
}

uint64_t sub_1002FC374()
{
  STACK[0x9E48] = ((2 * v1) & 0x1BFF7D7DCLL) + (v1 ^ 0xDAF7FF7BDFFBEBEELL) + 0x3FFFBCED7BBE76F6;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * ((14857 * (v0 == -307918730)) ^ (v0 + 1691))))();
}

uint64_t sub_1002FC680()
{
  v1 = STACK[0xF10] ^ 0x34D8;
  v2 = STACK[0xF10] + 298597195;
  v3 = STACK[0x1800];
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))(*(STACK[0x1800] + 656));
  *(v3 + 656) = 0;
  *(v3 + 664) = v0;
  return (*(v4 + 8 * ((v1 + 298570479) ^ v2 ^ (64751 * (v2 == 1831231709)))))(v5);
}

uint64_t sub_1002FC758()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16238)))(v0);
  return (*(v2 + 8 * (v1 - 28972)))(v3);
}

uint64_t sub_1002FC78C(unint64_t a1)
{
  STACK[0x8FA8] = STACK[0xDA0];
  STACK[0x1DA8] = STACK[0xD20];
  STACK[0x43B8] = STACK[0xD00];
  STACK[0x9538] = STACK[0xAF0];
  STACK[0x23A8] = STACK[0xB20];
  STACK[0x7B60] = STACK[0xB30];
  STACK[0x4060] = v3;
  STACK[0x5238] = STACK[0xB10];
  STACK[0x6D98] = STACK[0xB00];
  STACK[0x8758] = STACK[0xAE8];
  STACK[0x91D0] = 0;
  STACK[0x5700] = v2;
  STACK[0x95E8] = a1;
  STACK[0x4B80] = a1;
  STACK[0x4218] = a1;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 ^ 0xED04CCB0)))();
  return (*(v4 + 8 * (v1 ^ 0xED040AB6 ^ (17667 * (v1 != 377692796)))))(v5);
}

uint64_t sub_1002FC86C()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 27524;
  v2 = STACK[0xF10] - 33278;
  v3 = STACK[0x9950];
  v4 = STACK[0x2030] + 245;
  v5 = STACK[0x21E8];
  v6 = *(STACK[0x21E8] + 64);
  v7 = STACK[0xF10] + 146646645;
  STACK[0x10F08] = STACK[0x570];
  STACK[0x10F00] = v5 + 82;
  LOBYTE(STACK[0x10EE0]) = (35 * ((((&STACK[0x10000] - 40) | 0xF2) - (&STACK[0x10000] - 40) + ((&STACK[0x10000] - 40) & 8)) ^ 0xB7)) ^ 0x49;
  LOBYTE(STACK[0x10F18]) = 67 - 35 * ((((&STACK[0x10000] - 40) | 0xF2) - (&STACK[0x10000] - 40) + ((&STACK[0x10000] - 40) & 8)) ^ 0xB7);
  STACK[0x10F10] = STACK[0x578];
  LODWORD(STACK[0x10EE8]) = v7 ^ (139493411 * ((((&STACK[0x10000] + 3800) | 0x75362CF2) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x8AC9D308)) ^ 0x791BCDB7));
  STACK[0x10ED8] = v4;
  STACK[0x10EF0] = v3;
  STACK[0x10EF8] = v6;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * (v0 ^ 0x470D)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x3C34]) = STACK[0x10EE4];
  STACK[0x17A8] = *(v8 + 8 * v2);
  return (*(v8 + 8 * ((v1 ^ 0x5FA9) + v2)))(v9);
}

uint64_t sub_1002FC980@<X0>(int a1@<W8>)
{
  *(STACK[0x9DC0] + ((a1 + 31753) ^ 0xF82F8A29996851F1) + (v1 - 1950477075) + STACK[0x9DC8]) = *(STACK[0x9DB8] + (v1 - 1950477075)) ^ 0x5F;
  v2 = *(STACK[0xF18] + 8 * a1);
  LODWORD(STACK[0xE70]) = v1 - 1;
  return v2();
}

uint64_t sub_1002FC9EC@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v2 + 32) + 8;
  STACK[0x73B0] = v5;
  v6 = *(v2 + 40);
  LODWORD(STACK[0xB5E0]) = v6;
  v7 = (((v6 ^ 0xFDF99AD8) + 33973544) ^ ((v6 ^ 0x2313A261) - 588489313) ^ ((v6 ^ (v3 + 926908053)) - 926941096)) - 371865847;
  LODWORD(STACK[0xB5E4]) = v7;
  STACK[0xB5E8] = v1 + v4;
  STACK[0xB5F0] = v1 + v4 + 16;
  STACK[0x7690] = a1 - 35467 + ((v3 + 2584) | 0x10u);
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * (v3 + 18884)))(v1 + v4, 0, 16);
  v11 = (v7 & 0xF) == 0 && v5 != 0;
  return (*(v8 + 8 * ((37 * v11) ^ v3)))(v9);
}

uint64_t sub_1002FCCA8@<X0>(int a1@<W8>)
{
  v1 = a1 + 14716;
  LODWORD(STACK[0x499C]) = -371865839;
  STACK[0x7690] += v1 ^ 0xFFFFFFFFFFFFBF5DLL;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1002FCD18(unint64_t a1)
{
  v2 = v1 + 25363;
  v3 = (v1 + 692642752) & 0xD6B750FF;
  v4 = (v1 + 25363) ^ 0x63D5;
  STACK[0x3A00] = a1;
  v5 = *(a1 + 20);
  v7 = v5 == -371865837 || v5 == LODWORD(STACK[0xA4C0]);
  return (*(STACK[0xF18] + 8 * ((v7 * ((v3 + 35466) ^ v4)) ^ v2)))();
}

uint64_t sub_1002FCF04@<X0>(int a1@<W8>)
{
  *(v3 + 1536) = v2;
  *(v3 + 1532) = a1;
  return (*(STACK[0xF18] + 8 * (v1 - 25438)))();
}

uint64_t sub_1002FCFC4@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0xF10];
  v3 = 5 * ((STACK[0xF10] + 672265154) & 0xD7EDE33B ^ 0x6DA4);
  v4 = STACK[0xF10] - 15658;
  v5 = a1 + 16 * v1;
  if (v1 >= 5u)
  {
    v5 = 0;
  }

  v6 = STACK[0xF88];
  v7 = STACK[0x1C6C];
  v8 = 1112314453 * ((((&STACK[0x10000] + 3800) | 0xE31A066B) - ((&STACK[0x10000] + 3800) | 0x1CE5F994) + 484833684) ^ 0xC4C2CB2);
  STACK[0x10EF8] = STACK[0x29D8];
  LOWORD(STACK[0x10ED8]) = -28075 * ((((&STACK[0x10000] + 3800) | 0x66B) - ((&STACK[0x10000] + 3800) | 0xF994) - 1644) ^ 0x2CB2) + 3771;
  LODWORD(STACK[0x10EF0]) = v8 + 1599993265 * v7 + 1244298177;
  LODWORD(STACK[0x10EDC]) = (v2 + 679158052) ^ v8;
  STACK[0x10EE0] = v5;
  STACK[0x10EE8] = v6;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * (v2 ^ 0x41CB)))(&STACK[0x10ED8]);
  v11 = LODWORD(STACK[0x195C]) + 323697517;
  v12 = (((LODWORD(STACK[0x8370]) ^ 0xD555D4F) - 223698255) ^ ((LODWORD(STACK[0x8370]) ^ 0x9BF58BEA) + 1678406678) ^ (v3 + (LODWORD(STACK[0x8370]) ^ 0x7F7511B4) - 2138398661)) - 48168323;
  v13 = (v11 < 0x134B3B6C) ^ (v12 < 0x134B3B6C);
  v14 = v11 > v12;
  if (v13)
  {
    v14 = v11 < 0x134B3B6C;
  }

  if (v14)
  {
    v15 = 371891407;
  }

  else
  {
    v15 = STACK[0x81D8];
  }

  return (*(v9 + 8 * ((8176 * (v15 == -371865839)) ^ v4)))(v10);
}

uint64_t sub_1002FD198()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 28482)))(56);
  STACK[0x6EE0] = v2;
  return (*(v1 + 8 * ((15 * (v2 != 0)) ^ v0)))();
}

uint64_t sub_1002FD2D4@<X0>(int a1@<W8>)
{
  v1 = a1 - 26561;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 ^ 0x4192)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1002FD404@<X0>(int a1@<W8>)
{
  *v1 = -371865839;
  *(v1 + 8) = 0;
  v3 = 2 * (a1 ^ 0x4699);
  *(v1 + 16) = 977947492;
  *(v1 + 24) = -371865839;
  *(v1 + 32) = 0;
  *(v1 + 40) = -371865839;
  STACK[0x8BB8] = v1 + 40;
  *(v1 + 48) = 0;
  STACK[0x7E90] = v1 + 48;
  *(v1 + 56) = -371865839;
  STACK[0x72E0] = v1 + 56;
  *(v1 + 64) = 0;
  STACK[0x32C0] = v1 + 64;
  STACK[0x6C60] = v1 + 0x13D444233107860ALL;
  *(v1 + 72) = -371865839;
  *(v1 + 80) = 0;
  STACK[0x6B88] = v1 + 80;
  *(v1 + 88) = 100;
  *v2 = -371865839;
  v4 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v3);
  return (*(v4 + 8 * (v3 ^ 0x7A91 ^ ((v3 + 20740) | 0x389))))();
}

uint64_t sub_1002FD518@<X0>(char a1@<W8>)
{
  LODWORD(STACK[0x213C]) = v2;
  LOBYTE(STACK[0x833F]) = v1 + v2 + 15;
  v5 = (((v4 - 16710) | 0x1E80) + (LODWORD(STACK[0x8A6C]) ^ 0x10526DAE) - 273845297) ^ ((LODWORD(STACK[0x8A6C]) ^ 0xFF635F90) + 10264688) ^ ((LODWORD(STACK[0x8A6C]) ^ 0x6E4F52F) - 115668271);
  STACK[0x11C0] = (v2 | ((v2 < v3) << 32)) + 0x3AE141398EFE71D1;
  v6 = v2 + (a1 - 101) + 962761400 + v5;
  v7 = (v6 ^ 0xA810AF8B) & (2 * (v6 & 0x32150FA2)) ^ v6 & 0x32150FA2;
  v8 = ((2 * (v6 ^ 0xEC38B68F)) ^ 0xBC5B725A) & (v6 ^ 0xEC38B68F) ^ (2 * (v6 ^ 0xEC38B68F)) & 0xDE2DB92C;
  v9 = v8 ^ 0x42248925;
  v10 = (v8 ^ 0x98083008) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0x78B6E4B4) & v9 ^ (4 * v9) & 0xDE2DB92C;
  v12 = (v11 ^ 0x5824A020) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x86091909)) ^ 0xE2DB92D0) & (v11 ^ 0x86091909) ^ (16 * (v11 ^ 0x86091909)) & 0xDE2DB900;
  v14 = v12 ^ 0xDE2DB92D ^ (v13 ^ 0xC2099000) & (v12 << 8);
  v15 = v6 ^ (2 * ((v14 << 16) & 0x5E2D0000 ^ v14 ^ ((v14 << 16) ^ 0x392D0000) & (((v13 ^ 0x1C24292D) << 8) & 0x5E2D0000 ^ 0x52040000 ^ (((v13 ^ 0x1C24292D) << 8) ^ 0x2DB90000) & (v13 ^ 0x1C24292D))));
  LODWORD(STACK[0x8A6C]) = v15 ^ 0x57C1BAE9;
  v16 = STACK[0xF18];
  v17 = (*(STACK[0xF18] + 8 * (v4 ^ 0x8BD1)))(v15 ^ 0xBE147DF8);
  STACK[0x61B0] = v17;
  return (*(v16 + 8 * ((29 * (v17 != 0)) ^ v4)))();
}

uint64_t sub_1002FD770@<X0>(unsigned int a1@<W8>)
{
  STACK[0x8128] = STACK[0x2910] + 62;
  v2 = STACK[0x2C78] + a1;
  v3 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v1);
  return (*(v3 + 8 * (v1 - 45667 + 5082 * (v1 ^ 0x545))))(v2);
}

uint64_t sub_1002FD898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  STACK[0x5B98] = v4;
  STACK[0x65A0] = a3;
  LODWORD(STACK[0x673C]) = -371865839;
  STACK[0x5138] = 0;
  return (*(STACK[0xF18] + 8 * (((((a3 == 0) ^ (v3 - 1)) & 1) * (v3 ^ 0x677B)) | v3)))(a1, a2, 371891400);
}

uint64_t sub_1002FDAD8()
{
  v1 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 21628) ^ 0x657E) + v0)))();
}

uint64_t sub_1002FDBA4()
{
  LODWORD(STACK[0x207C]) = v1;
  v2 = STACK[0x3C38];
  v3 = STACK[0x3994];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v2;
  LODWORD(STACK[0x655C]) = (v3 << (14 * (v0 ^ 0x3E) - 66)) ^ 0xE9D5C711;
  LODWORD(STACK[0x884C]) = 277028968;
  return (*(STACK[0xF18] + 8 * (v0 - 30246)))();
}

uint64_t sub_1002FDC68()
{
  v2 = (((v1 & 0xFFFFFFF0 ^ 0x6C6978FA) + 782975782) ^ ((v1 & 0xFFFFFFF0 ^ 0x561C87F1) + 350141487) ^ (((v0 - 744504179) ^ v1 & 0xFFFFFFF0) - 1855847483)) + 1958219133;
  v3 = (v2 ^ 0xC98FE1EA) & (2 * (v2 & 0xE02FF5C3)) ^ v2 & 0xE02FF5C3;
  v4 = ((2 * (v2 ^ 0x49C92268)) ^ 0x53CDAF56) & (v2 ^ 0x49C92268) ^ (2 * (v2 ^ 0x49C92268)) & 0xA9E6D7AA;
  v5 = v4 ^ 0xA82250A9;
  v6 = (v4 ^ 0x1C48700) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0xA79B5EAC) & v5 ^ (4 * v5) & 0xA9E6D7A8;
  v8 = (v7 ^ 0xA18256A0) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x8648103)) ^ 0x9E6D7AB0) & (v7 ^ 0x8648103) ^ (16 * (v7 ^ 0x8648103)) & 0xA9E6D7A0;
  v10 = v8 ^ 0xA9E6D7AB ^ (v9 ^ 0x88645200) & (v8 << 8);
  LODWORD(STACK[0x7AFC]) = v2 ^ (2 * ((v10 << 16) & 0x29E60000 ^ v10 ^ ((v10 << 16) ^ 0x57AB0000) & (((v9 ^ 0x2182850B) << 8) & 0x29E60000 ^ 0x9200000 ^ (((v9 ^ 0x2182850B) << 8) ^ 0x66D70000) & (v9 ^ 0x2182850B)))) ^ 0x59739D84;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002FDE3C()
{
  LODWORD(STACK[0x9164]) = v0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xCDA)))((((v1 + 2042685885) & 0x863EDB3B ^ 0xE9D5C766) + (v1 ^ 0xBCF6)) ^ v0);
  STACK[0x4D80] = v3;
  return (*(v2 + 8 * ((56 * (v3 == 0)) | v1)))();
}

uint64_t sub_1002FDEE8()
{
  v1 = STACK[0xF10] ^ 0xAEE5;
  v2 = ((v0 ^ 0x6A120ABD) + 1355675195) ^ v0 ^ ((v0 ^ 0x3CC35873) + 102540533) ^ ((v0 ^ 0x8C1E93DB) - 1228837027) ^ ((v0 ^ 0x1FEFC26D) + 623918827);
  v3 = ((v2 ^ 0x96CB8FD6) - 795159079) ^ ((v2 ^ 0xDABAF809) - 1662279160) ^ ((v2 ^ 0x895174A7) - 822071638);
  v4 = (((v1 - 1162531626 + (LOBYTE(STACK[0x8457]) ^ 0x454AAD4C)) ^ ((LOBYTE(STACK[0x8457]) ^ 0x7EDB0FE2) - 2128285666) ^ (((v1 - 6654) | 0xA) + (LOBYTE(STACK[0x8457]) ^ 0x3B91A271u) - 999403099)) + 223) % (-2089723553 - v3);
  v5 = (v4 ^ 0xE5956376) + 998244304 + ((2 * v4) & 0xCB2AC6EC) + v3;
  if (v5 + 1534674005 >= 0xFB)
  {
    v6 = 722202830;
  }

  else
  {
    v6 = -812471175 - v5;
  }

  v8 = v0 != 0x3CE25E0EC520035FLL && v6 != 722202580;
  return (*(STACK[0xF18] + 8 * ((981 * v8) ^ v1)))();
}

uint64_t sub_1002FE0DC()
{
  v2 = v1 ^ 0xE7DC;
  v3 = v1 ^ 0x41A3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * v3))((((v2 + 384893624) & 0xE90EBD79) - 371877384) ^ v0);
  STACK[0x4130] = v5;
  return (*(v4 + 8 * (((v5 == 0) * ((v2 + 1309348504) & 0xB1F4ACD3 ^ 0x2C48)) ^ v2)))();
}

uint64_t sub_1002FE184()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 10630;
  v2 = STACK[0xF10] - 27257;
  v3 = STACK[0x3150];
  v4 = STACK[0x3150] + 1;
  *v3 = 2;
  v5 = STACK[0x5248];
  v6 = STACK[0x21D4];
  v7 = *(STACK[0xB050] + 160);
  v8 = 353670337 * ((&STACK[0x10000] + 3800) ^ 0xB421F83D);
  LODWORD(STACK[0x10EF8]) = v8 + v0 + 4130;
  LODWORD(STACK[0x10EF4]) = v8 + (v6 ^ 0x7EB3FAA7) + ((v1 ^ 0xFD6794FB) & (2 * v6)) - 1071105;
  STACK[0x10EE8] = v7;
  STACK[0x10EE0] = v5;
  STACK[0x10ED8] = v4;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * (v0 + 16867)))(&STACK[0x10ED8]);
  STACK[0x95A0] = (v3 + 17);
  LOWORD(STACK[0x79DE]) = 7102;
  LODWORD(STACK[0x16B4]) = 1610277651;
  return (*(v9 + 8 * v2))(v10);
}

uint64_t sub_1002FE290()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 34517;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 30638) ^ v1)))();
}

uint64_t sub_1002FE2D8()
{
  v1 = 766 * (v0 ^ 0x369D);
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((5630 * (((((v1 - 2522) | 0x8000) - 64181817) ^ v1) > 0x9DE5CBCE)) ^ (v1 - 2761))))();
}

uint64_t sub_1002FE3D4()
{
  v2 = *(STACK[0x2FF0] + 4);
  v3 = *(STACK[0x2FF0] + 5);
  v4 = 91 * *(STACK[0x2FF0] + 6) - 73;
  v5 = 906386353 * ((~(&STACK[0x10000] + 3800) & 0x79744F60 | (&STACK[0x10000] + 3800) & 0x868BB098) ^ 0x48758244);
  LODWORD(STACK[0x10EF0]) = v5 + v0 + 20385;
  LOBYTE(STACK[0x10EE0]) = (3 * v3 + 80) ^ (-79 * ((~(&STACK[0x10000] - 40) & 0x60 | (&STACK[0x10000] - 40) & 0x98) ^ 0x44));
  LODWORD(STACK[0x10EF8]) = (v1 ^ 0x196951C7) + v5;
  LOBYTE(STACK[0x10EF4]) = -79 * ((~(&STACK[0x10000] - 40) & 0x60 | (&STACK[0x10000] - 40) & 0x98) ^ 0x44) + (v2 ^ 0xB5) + ((v2 << (v0 + 70)) & 0x6A) + 76;
  STACK[0x10ED8] = &STACK[0x441C];
  LOBYTE(STACK[0x10EFC]) = v4 ^ (-79 * ((~(&STACK[0x10000] - 40) & 0x60 | (&STACK[0x10000] - 40) & 0x98) ^ 0x44));
  STACK[0x10EE8] = &STACK[0x27E0];
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v0 ^ 0x96CC)))(&STACK[0x10ED8]);
  LOBYTE(STACK[0x6563]) = 53;
  return (*(v6 + 8 * v0))(v7);
}

uint64_t sub_1002FE54C()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16490)))((((v0 + 6643) | 0x1218u) - 371912488) ^ LODWORD(STACK[0x1C24]));
  STACK[0x96E0] = v2;
  STACK[0x6190] = v2;
  return (*(v1 + 8 * ((124 * (v2 == 0)) ^ v0)))();
}

uint64_t sub_1002FE5E8()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 31711;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 29570) ^ v1)))();
}

uint64_t sub_1002FE648()
{
  v2 = STACK[0x7208];
  v3 = 353670337 * ((((2 * (&STACK[0x10000] + 3800)) | 0xCE4BA436) - (&STACK[0x10000] + 3800) + 416951781) ^ 0x53042A26);
  STACK[0x10F08] = &STACK[0x6563];
  STACK[0x10EE8] = 0;
  STACK[0x10EF0] = v0;
  LODWORD(STACK[0x10F00]) = (v1 + 11862) ^ v3;
  LODWORD(STACK[0x10EE0]) = v3 ^ 0xC82D6EC4;
  STACK[0x10ED8] = &STACK[0x441C];
  STACK[0x10EF8] = v2;
  STACK[0x10F18] = &STACK[0x27E0];
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 ^ 0x47A4)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (v1 - 25261)))(v5);
}

uint64_t sub_1002FE748@<X0>(int a1@<W8>)
{
  v2 = STACK[0x68B4];
  STACK[0x4F90] = v1;
  LODWORD(STACK[0x22E8]) = v2;
  LODWORD(STACK[0x35EC]) = 1693393368;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1002FE780()
{
  v1 = STACK[0x38E8];
  v2 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x1C4A)))(v1);
}

uint64_t sub_1002FE98C()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1002FE9B0()
{
  v1 = *STACK[0x55B0];
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * (&STACK[0x10ED8] ^ 0xE6261BCF) + 296776773;
  STACK[0x10ED8] = v1;
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 39941)))(&STACK[0x10ED8]);
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762637622) ^ (906386353 * ((((2 * &STACK[0x10ED8]) | 0x7757488A) - &STACK[0x10ED8] + 1146379195) ^ 0x8AAA6961));
  v3 = (*(v2 + 8 * (v0 + 39924)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * ((56 * (*STACK[0x970] <= (v0 ^ 0x7AFD) - 21560)) | v0)))(v3);
}

uint64_t sub_1002FEB54()
{
  v2 = STACK[0x48E8];
  v3 = STACK[0x1E40];
  STACK[0x4A98] = v0;
  STACK[0x3E98] = v2;
  LODWORD(STACK[0x655C]) = v3;
  LODWORD(STACK[0x884C]) = -1949636722;
  return (*(STACK[0xF18] + 8 * (v1 - 30246)))();
}

uint64_t sub_1002FEBE4()
{
  v0 = (STACK[0xF10] - 150608830) & 0x8F997CB;
  v1 = STACK[0xF10] - 2231;
  v2 = STACK[0xAC54];
  LODWORD(STACK[0x9C5C]) = LODWORD(STACK[0xAC54]) + 461125148;
  v2 += 1917680950;
  v3 = (((LODWORD(STACK[0x22EC]) ^ (v0 + 822407627)) - 822409492) ^ ((LODWORD(STACK[0x22EC]) ^ 0xB48C55F1) + 1265871375) ^ ((LODWORD(STACK[0x22EC]) ^ 0x6C5D6BF4) - 1818061812)) + 1545815079;
  v4 = v2 < 0x724D7D16;
  v5 = v2 > v3;
  if (v4 != v3 < 0x724D7D16)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((28 * !v5) ^ v1)))();
}

uint64_t sub_1002FED5C@<X0>(int a1@<W0>, char a2@<W1>, int a3@<W2>, int a4@<W8>)
{
  v14 = *(STACK[0xF18] + 8 * v11);
  v15 = (v12 + (a4 + v13));
  v16 = STACK[0xE58];
  v17 = STACK[0xE50];
  v18 = ((*(*STACK[0xE50] + (*STACK[0xE58] & v4)) ^ v15) & 0x7FFFFFFF) * v5;
  v19 = (v18 ^ HIWORD(v18)) * v5;
  v20 = STACK[0x9B8];
  v21 = STACK[0x9A8];
  v22 = STACK[0x9B0];
  *v15 = *(STACK[0x9B8] + (v19 >> 24)) ^ HIBYTE(a3) ^ *((v19 >> 24) + STACK[0x9A8] + 2) ^ *((v19 >> 24) + STACK[0x9B0] + 4) ^ v19 ^ (BYTE3(v19) * v6) ^ v7;
  v23 = (v12 + (a4 + v8));
  LODWORD(v19) = ((*(*v17 + (*v16 & v4)) ^ v23) & 0x7FFFFFFF) * v5;
  v24 = (v19 ^ WORD1(v19)) * v5;
  *v23 = *(v20 + (v24 >> 24)) ^ BYTE2(a3) ^ *((v24 >> 24) + v21 + 2) ^ *((v24 >> 24) + v22 + 4) ^ v24 ^ (BYTE3(v24) * v6) ^ v9;
  v25 = (v12 + (a4 + v10));
  LODWORD(v24) = ((*(*v17 + (*v16 & v4)) ^ v25) & 0x7FFFFFFF) * v5;
  v26 = (v24 ^ WORD1(v24)) * v5;
  *v25 = *(v20 + (v26 >> 24)) ^ BYTE1(a3) ^ *((v26 >> 24) + v21 + 2) ^ *((v26 >> 24) + v22 + 4) ^ v26 ^ (BYTE3(v26) * v6) ^ 0x7E;
  v27 = (v12 + (a4 + a1));
  LODWORD(v25) = ((*(*v17 + (*v16 & v4)) ^ v27) & 0x7FFFFFFF) * v5;
  v28 = (v25 ^ (v25 >> 16)) * v5;
  *v27 = a3 ^ *(v20 + (v28 >> 24)) ^ *((v28 >> 24) + v21 + 2) ^ *((v28 >> 24) + v22 + 4) ^ v28 ^ (BYTE3(v28) * v6) ^ a2;
  return v14();
}

uint64_t sub_1002FEFFC()
{
  v3 = (((*v0 ^ 0xCEAFCCB0) + ((11 * (v1 ^ 0x5D1A)) ^ 0x3150755A)) ^ ((*v0 ^ (v1 + 1349649954)) - 1349673318) ^ ((*v0 ^ 0x77086AC7) - 1997040327)) - 607896707;
  v4 = v3 < 0xF1EE746C;
  v5 = v2 - 1349049104 < v3;
  if ((v2 - 1349049104) < 0xF1EE746C != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((42 * v5) ^ v1)))();
}

uint64_t sub_1002FF1F8()
{
  v1 = STACK[0xF10] - 21418;
  *(STACK[0x29B0] + 16) = ((STACK[0xF10] ^ 0xA063) - 955991393) ^ v0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1002FF284(uint64_t a1, uint64_t a2)
{
  v3 = *STACK[0x1258];
  STACK[0x1758] = 0;
  STACK[0x1310] = 0x1BB53DFA7FC51988;
  return (*(STACK[0xF18] + 8 * (((v3 == 0) * (v2 - 42456 + ((v2 - 1734690677) & 0x6764BF62))) ^ v2)))(a1, a2, 371891400);
}

uint64_t sub_1002FF4A4()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 7269;
  v3 = STACK[0x3E50];
  v4 = 193924789 * (((&STACK[0x10ED8] | 0xC534B87B915EA58DLL) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0x3ACB47846EA15A70)) ^ 0x3EAFA88F27E597EBLL);
  LODWORD(STACK[0x10EDC]) = (STACK[0xF10] + 4626) ^ v4;
  STACK[0x10EE0] = v4 ^ 0xE773B63C2CB22AF9 ^ v0;
  STACK[0x10EE8] = v3;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4045)))(&STACK[0x10ED8]);
  v7 = STACK[0x10ED8];
  v8 = LODWORD(STACK[0xA780]) + 8;
  ++LODWORD(STACK[0xA784]);
  LODWORD(STACK[0xA780]) = v8;
  return (*(v5 + 8 * ((64834 * (v7 == -371865839)) ^ v2)))(v6);
}

uint64_t sub_1002FF5AC@<X0>(uint64_t a1@<X8>)
{
  *(v3 + v1) ^= *(a1 + v1);
  v4 = v1 + ((v2 + 1992544205) & 0x893C3FD6) - 4051;
  return (*(STACK[0xF18] + 8 * ((44206 * (((v4 - v2) | (v2 - v4)) >> 63)) ^ (v2 | 0x2DC2))))();
}

uint64_t sub_1002FF670()
{
  LODWORD(STACK[0xA3CC]) = v0;
  v1 = ((v0 ^ 0x606866A9A9E2F9CDLL) - 0x606866A9A9E2F9CDLL) ^ ((v0 ^ 0xD6D35E3B89F710FBLL) + 0x292CA1C47608EF05) ^ ((v0 ^ 0xB6BB3892C9C02E27) + 0x4944C76D363FD1D9);
  STACK[0xA3D0] = v1 + 0x7FCBC952BF62948ALL;
  v1 += 0x12AE02D5ALL;
  v2 = (((STACK[0xA3A8] ^ 0x887C3003E153A3B4) + 0x7783CFFC1EAC5C4CLL) ^ ((STACK[0xA3A8] ^ 0x2ADEBFC78E3935D0) - 0x2ADEBFC78E3935D0) ^ ((STACK[0xA3A8] ^ 0xDADE7E253540FAA6) + 0x252181DACABF055ALL)) + 0x787CF1E19B34D30BLL;
  v3 = (v1 < 0x80000000410A6649) ^ (v2 < 0x80000000410A6649);
  v4 = v1 < v2;
  if (v3)
  {
    v4 = v2 < 0x80000000410A6649;
  }

  return (*(STACK[0xF18] + 8 * ((12906 * v4) ^ (STACK[0xF10] - 33799))))();
}

uint64_t sub_1002FF814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  STACK[0x2C88] = 0;
  LODWORD(STACK[0x964C]) = -371865839;
  STACK[0x4CB0] = 0;
  LODWORD(STACK[0x6C78]) = -371865839;
  return (*(STACK[0xF18] + 8 * (((((109 * ((a3 - 24091) ^ 0x4AA0) + 159718596) & 0xF67A5C96) + 63994) * (v3 == -371865840)) ^ (a3 - 24091))))(a1, a2, 371891535);
}

uint64_t sub_1002FF8DC()
{
  v2 = 61 * (v1 ^ 0x4DA4);
  v3 = (v2 + 130636241) & 0xF8368BDB;
  LOBYTE(STACK[0x1B8F]) = ((v3 ^ 0x89FA) & v0) == 0;
  if (((v3 ^ 0x89FA) & v0) != 0)
  {
    v4 = 5;
  }

  else
  {
    v4 = 2;
  }

  LODWORD(STACK[0x133C]) = v4;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1002FF968@<X0>(int a1@<W8>)
{
  v1 = a1 + 852682123;
  v2 = a1 - 3753;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (a1 + 12485)))();
  return (*(v3 + 8 * ((v1 - 852717766 + v2) ^ (109108 * (v1 > 0xA6F1CD44)))))(v4);
}

uint64_t sub_1002FFA28()
{
  v1 = STACK[0xF18];
  STACK[0x98C0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 344885251 + v0 + 344891706)))();
}

uint64_t sub_1002FFA7C(uint64_t a1)
{
  v3 = 1936 * (v1 ^ 0x5B54);
  *a1 = *v2;
  *(a1 + 4) = 0xE9D5C71100000000;
  *(a1 + 12) = 0xE9D5C711E9D5C711;
  *(a1 + 20) = -371865839;
  v4 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v3);
  return (*(v4 + 8 * (v3 - 23797 + (v3 ^ 0x6CF9))))();
}

uint64_t sub_1002FFB00()
{
  v1 = STACK[0x1610];
  v2 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 - 45692 + (v0 ^ 0xC3EC))))(v1);
}

uint64_t sub_1002FFB5C@<X0>(char *a1@<X8>)
{
  v2 = *a1;
  LOBYTE(STACK[0x813F]) = *a1;
  return (*(STACK[0xF18] + 8 * ((16379 * ((((v1 + 94) & 0x5F ^ 0xE2) + v2) < 2u)) ^ v1)))();
}

uint64_t sub_1002FFBC4()
{
  v2 = *(STACK[0x6508] - 0x217E172EFA1E81CLL);
  v3 = 139493411 * ((((&STACK[0x10000] + 3800) | 0x1114DC92) - ((&STACK[0x10000] + 3800) | 0xEEEB236D) - 286579859) ^ 0x1D393DD7);
  LODWORD(STACK[0x10EE0]) = v1 + v3 + (((v0 - 38962) | 0x1C4B) ^ 0xA538C09);
  STACK[0x10ED8] = v2;
  LODWORD(STACK[0x10EF0]) = v0 - v3 - 24965;
  STACK[0x10EE8] = &STACK[0x49F4];
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 12888)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v0))(v5);
}

uint64_t sub_1002FFCE4(unint64_t a1)
{
  LODWORD(STACK[0x379C]) = v2;
  STACK[0x9AE0] = a1;
  STACK[0x8D88] = a1 + 12;
  STACK[0x9AE8] = a1;
  v3 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v3 + 8 * ((((v1 - 925298724) & 0x3726FFEF) - 1319) ^ v1)))();
}

uint64_t sub_1002FFD50()
{
  v0 = STACK[0xF10];
  STACK[0x8FA8] = STACK[0xDA0];
  STACK[0x1DA8] = STACK[0xD20];
  STACK[0x43B8] = STACK[0xD00];
  STACK[0x9538] = STACK[0xAF0];
  STACK[0x23A8] = STACK[0xB20];
  STACK[0x7B60] = STACK[0xB30];
  STACK[0x4060] = STACK[0xCF0];
  STACK[0x5238] = STACK[0xB10];
  STACK[0x6D98] = STACK[0xB00];
  STACK[0x8758] = STACK[0xAE8];
  STACK[0x91D0] = STACK[0xC60];
  STACK[0x5700] = STACK[0xD80];
  STACK[0x95E8] = STACK[0xD90];
  STACK[0x4B80] = STACK[0xC80];
  STACK[0x4218] = STACK[0xC90];
  return (*(STACK[0xF18] + 8 * (v0 - 16783)))();
}

uint64_t sub_1002FFE64()
{
  v1 = STACK[0x3660];
  STACK[0x81A8] = *STACK[0x10D8];
  STACK[0x97E8] = v1 - (((327 * (v0 ^ 0x226Du)) ^ 0x130272185FDBAFB7) & (2 * v1)) + 0x981390C2FED9246;
  LODWORD(STACK[0x6974]) = 103711533;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1002FFF48()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 32682)))(STACK[0x1538]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1002FFF80()
{
  v1 = ((STACK[0xF10] ^ 0x9DD4) - 0x188C49C3D34DEBF6) ^ v0;
  v2 = STACK[0xF10] - 33697;
  *(STACK[0x1E30] + 40) = v1;
  v3 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * (v2 ^ 0x1171)))();
}

uint64_t sub_100300108()
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
  STACK[0xBE90] = 0;
  STACK[0xBE98] = v1;
  v13 = 16777619 * ((553300517 * v12 + 7) ^ (553300517 * v12)) % 7;
  v14 = 16777619 * ((553300517 * v12 + 6) ^ (553300517 * v12)) % 6;
  v15 = 16777619 * ((553300517 * v12 + 5) ^ (553300517 * v12)) % 5;
  v16 = *(&STACK[0xBE90] | v13);
  *(&STACK[0xBE90] | v13) = STACK[0xBE97];
  v17 = *(&STACK[0xBE90] | v14);
  *(&STACK[0xBE90] | v14) = STACK[0xBE96];
  v18 = *(&STACK[0xBE90] | v15);
  *(&STACK[0xBE90] | v15) = STACK[0xBE95];
  v19 = vdup_n_s32(553300517 * v12);
  v20 = 16777619 * ((553300517 * v12 + 3) ^ (553300517 * v12)) % 3;
  v21.i32[0] = v19.i32[0];
  v21.i32[1] = 553300517 * v12 + 1;
  LOBYTE(STACK[0xBE97]) = v16;
  v22 = veor_s8(vmul_s32(v21, v19), v19);
  LOBYTE(STACK[0xBE96]) = v17;
  LOBYTE(STACK[0xBE95]) = v18;
  v23 = STACK[0xBE90];
  LOBYTE(STACK[0xBE90]) = STACK[0xBE94];
  LOBYTE(STACK[0xBE94]) = v23;
  v24 = *(&STACK[0xBE90] | v20);
  *(&STACK[0xBE90] | v20) = STACK[0xBE93];
  LOBYTE(STACK[0xBE93]) = v24;
  v25 = STACK[0xBE91];
  LOBYTE(STACK[0xBE92]) = STACK[0xBE90];
  LOWORD(STACK[0xBE90]) = v25;
  STACK[0xBE90] = vmla_s32(v22, STACK[0xBE90], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBE98];
  v27 = (553300517 * STACK[0xBE98]) ^ v12;
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
  v48 = *(&STACK[0xBE98] + v13);
  *(&STACK[0xBE98] + v13) = STACK[0xBE9F];
  LOBYTE(STACK[0xBE9F]) = v48;
  v49 = *(&STACK[0xBE98] + v14);
  *(&STACK[0xBE98] + v14) = STACK[0xBE9E];
  LOBYTE(STACK[0xBE9E]) = v49;
  v50 = *(&STACK[0xBE98] + v15);
  *(&STACK[0xBE98] + v15) = STACK[0xBE9D];
  LOBYTE(STACK[0xBE9D]) = v50;
  v51 = STACK[0xBE98];
  LOBYTE(STACK[0xBE98]) = STACK[0xBE9C];
  LOBYTE(STACK[0xBE9C]) = v51;
  v52 = *(&STACK[0xBE98] + v20);
  *(&STACK[0xBE98] + v20) = STACK[0xBE9B];
  LOBYTE(STACK[0xBE9B]) = v52;
  v53 = STACK[0xBE99];
  LOBYTE(STACK[0xBE9A]) = STACK[0xBE98];
  LOWORD(STACK[0xBE98]) = v53;
  STACK[0xBE98] = vmla_s32(v22, STACK[0xBE98], vdup_n_s32(0x1000193u));
  *v2 = STACK[0xBE98] ^ STACK[0xBE90];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100300690()
{
  v1 = STACK[0x82F4];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393362;
  return (*(STACK[0xF18] + 8 * (v0 - 23268)))();
}

uint64_t sub_1003006F4@<X0>(int a1@<W7>, int a2@<W8>)
{
  v2 = a1 + 11233;
  v3 = (a1 + 29690) | 0x20A;
  v4 = STACK[0x2A08] + 1072;
  STACK[0x6D80] = v4;
  LODWORD(STACK[0x6D8C]) = -371865851;
  STACK[0x5E10] = v4;
  v5 = STACK[0x7690];
  v6 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x63F8] = v6;
  STACK[0x5850] = v6;
  STACK[0x7690] = (a1 + 30212) + v5 - 35515;
  STACK[0x4908] = 0;
  LODWORD(STACK[0x1BB4]) = a2;
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (a1 - 1762631080) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x3CE543C9) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xC31ABC30)) ^ 0xDE48EED));
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * ((a1 + 11233) ^ 0x8BA1)))(&STACK[0x10ED8]);
  v10 = *STACK[0x970] != (v3 ^ 0x8B3B) || *STACK[0x940] == 0;
  return (*(v7 + 8 * ((61 * v10) ^ v2)))(v8);
}

uint64_t sub_10030085C()
{
  STACK[0x25D8] = 0;
  v1 = STACK[0xF18];
  STACK[0x3058] = *(STACK[0xF18] + 8 * (v0 - 31842));
  return (*(v1 + 8 * ((v0 - 19897) ^ (v0 - 31842) ^ 0x1817)))();
}

uint64_t sub_1003008F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v4 = *(STACK[0x3B90] + 24);
  STACK[0x3958] = v4;
  return (*(STACK[0xF18] + 8 * (((v4 == 0) * (v3 ^ a3 ^ v3 ^ 0xEDA4 ^ 0xED2B)) ^ v3)))(a1, a2, 371891400);
}

uint64_t sub_10030097C()
{
  v0 = STACK[0xF10] - 19260;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))(STACK[0x6EC0]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1003009BC@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 8);
  STACK[0x8E60] = v1;
  STACK[0x3FC0] = v1;
  *(v1 + 8) = ((2 * v3) ^ 0x3CE25E0EC520AF80) + v2 - v4;
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_100300A0C()
{
  STACK[0x10EE8] = 0;
  STACK[0x10ED8] = (((v1 ^ 0x2EF3603A6E53D243) - 0x2EF3603A6E53D243) ^ ((v1 ^ 0xCE25E4899EA5ECCFLL) + 0x31DA1B76615A1331) ^ ((v1 ^ ((v0 ^ 0x7F48) + 25891) ^ 0xE0D684B3192372A6) + 0x1F297B4CE6DC0663)) + 3923101457u;
  LODWORD(STACK[0x10EE0]) = v0 + 1022166737 * ((((&STACK[0x10000] + 3800) | 0x6B0D994) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xF94F2668)) ^ 0xBCA03806) + 7231;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x958D)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * ((15074 * (LOBYTE(STACK[0x10EE4]) == 33)) ^ v0)))(v3);
}

uint64_t sub_100300B48()
{
  v1 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x3BD)))();
}

uint64_t sub_100300DCC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v15 = (((a13 ^ 0xF5910568) + 175045272) ^ ((a13 ^ 0xC41F1577) + 1004595849) ^ (((a1 - 14523) ^ 0xD85B84A3 ^ a13) + ((a1 + 953395975) & 0xC72BE8B2 ^ 0x27A408D0))) + 127809220;
  v16 = v15 < 0x1DC86FB3;
  v17 = v13 - 810792982 < v15;
  if ((v13 - 810792982) < 0x1DC86FB3 != v16)
  {
    v17 = v16;
  }

  return (*(v14 + 8 * ((231 * !v17) ^ a1)))();
}

uint64_t sub_100300EE8()
{
  LODWORD(STACK[0x10B0]) = v0;
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = 634263871;
  return (*(STACK[0xF18] + 8 * (v2 - 30507)))();
}

uint64_t sub_100300FF8()
{
  v4 = (((v3 - 5940) | 0xA08) - 371901482) ^ v2;
  STACK[0x8B50] = v4;
  *(v1 + 72 * v4) = v0;
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_100301048()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 19859;
  LOBYTE(STACK[0x768F]) = 1;
  LODWORD(STACK[0x10ED8]) = (v0 - 2608) ^ (1603510583 * ((~(&STACK[0x10000] + 3800) & 0x92C4CF33 | (&STACK[0x10000] + 3800) & 0x6D3B30C8) ^ 0x51FFD98));
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 16406)))(&STACK[0x10ED8]);
  v4 = STACK[0x10EDC];
  v5 = STACK[0x1B00];
  v6 = STACK[0x6ABC];
  STACK[0x59A0] = STACK[0xAF10];
  LODWORD(STACK[0x8344]) = v4;
  STACK[0x5A58] = v5;
  LODWORD(STACK[0x8B1C]) = v6;
  STACK[0x9210] = &STACK[0x5020];
  LODWORD(STACK[0x4F34]) = -1946105185;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10030113C()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 31539;
  v2 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 34730) ^ v1)))();
}

uint64_t sub_100301220@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x1744]) = a1;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x1F63)))();
}

uint64_t sub_1003012F0@<X0>(int *a1@<X2>, void *a2@<X3>, unsigned int a3@<W5>, char a4@<W6>, int a5@<W7>, int a6@<W8>)
{
  v11 = (v8 - 880021620 + a6 - 1039096940);
  v12 = *(*a2 + (*a1 & 0xFFFFFFFFB69264BCLL)) + v9 + v11;
  *(v9 + v11) = (-72 * (v9 + v8 - 116 + a6 - 108)) ^ (((v7 ^ a3) >> v6) + ((2 * ((v7 ^ a3) >> v6)) & 0x60 ^ ((a6 ^ 0xB8) * a4 + 80)) - 79) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v12 - 1231919937) & (qword_1010C0540 ^ 0x7226FCCC))) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v12 - 1231919935) & (qword_1010C0540 ^ 0x7226FCCC))) ^ 0xB7;
  return (*(STACK[0xF18] + 8 * (((v8 - (*(STACK[0x71F0] + v11) != 0) == a5) * v10) ^ a6)))();
}

uint64_t sub_100301620()
{
  STACK[0x10EE0] = *(STACK[0x3890] + 344);
  LODWORD(STACK[0x10ED8]) = v0 + 1022166737 * (((&STACK[0x10ED8] | 0xE553344D) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0x1AACCBB0)) ^ 0x5F43D5DF) + 8585;
  v1 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 16333)))(&STACK[0x10ED8]);
  STACK[0x10ED8] = *STACK[0x18A8];
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x66FD4610) + 1727874576) ^ 0x80DB5DDF) + 296753103;
  (*(v1 + 8 * (v0 ^ 0x41F1)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x10ED8]) = (v0 - 1762661292) ^ (906386353 * (((&STACK[0x10ED8] | 0x98590D8E) - (&STACK[0x10ED8] & 0x98590D88)) ^ 0xA958C0AA));
  STACK[0x10EE0] = 0;
  v2 = (*(v1 + 8 * (v0 ^ 0x4182)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * ((37083 * (*STACK[0x970] > (((v0 - 23099) | 2) ^ 0x3102))) ^ (v0 - 14788))))(v2);
}

uint64_t sub_1003018C0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xA83C]) = a1 + 4;
  v6 = (((v5 ^ 0xA76563AC) - 1906695384) ^ ((v5 ^ 0x921877E9) - 1155057821) ^ (((((v1 + 887768327) & 0xCB159FFD) + 174613588) ^ v5) + 592915628)) - 1243369453;
  if (a1 - 871503610 <= v6 || v6 <= 0xCC0DE901)
  {
    v3 = v4;
  }

  LODWORD(STACK[0xA840]) = v3;
  return (*(STACK[0xF18] + 8 * ((47607 * (v3 == v2)) ^ v1)))();
}

uint64_t sub_1003019C8@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0x3868];
  v2 = STACK[0xF18];
  STACK[0x58B8] = *(STACK[0xF18] + 8 * a1);
  return (*(v2 + 8 * (((a1 ^ 0x6569) - 299) ^ a1)))(v1);
}

uint64_t sub_100301A30()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 18507)))(STACK[0x768] - 1383350530, 16);
  return (*(v1 + 8 * ((v2 * ((v0 ^ 0x8FDB) + 14472)) ^ v0)))();
}

uint64_t sub_100301A80()
{
  v0 = (STACK[0xF10] - 1847331964) & 0x6E1B9FC3;
  v1 = STACK[0xF10] - 536;
  v2 = *STACK[0xAC70] + (*STACK[0x2880] - 101);
  *STACK[0xAC70] = v2;
  return (*(STACK[0xF18] + 8 * ((88 * (v2 - 329966749 > (*STACK[0xAC68] + (v0 ^ 0x3D)))) | v1)))();
}

uint64_t sub_100301B0C()
{
  v0 = (STACK[0xF10] - 20171) | 0x202;
  LODWORD(STACK[0x8FF4]) = *(STACK[0x5C30] + 4);
  STACK[0x4228] = STACK[0x1170];
  LODWORD(STACK[0x4B04]) = STACK[0x77BC];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100301BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 30181;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x7970];
  STACK[0x5D28] = &STACK[0x4DC4];
  LODWORD(STACK[0x4704]) = -1699133293;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_100301C10()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * (STACK[0xF10] - 31658));
  return (*(v1 + 8 * (v0 - 30626)))();
}

uint64_t sub_100301C80@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x4860]) = a1;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v1 + 5071) ^ v1)))();
}

uint64_t sub_100301D0C@<X0>(int a1@<W0>, _DWORD *a2@<X6>, void *a3@<X7>, uint64_t a4@<X8>)
{
  v14 = v6 - 1;
  v15 = ((*(*a3 + (*a2 & v7)) ^ (v4 + v14)) & 0x7FFFFFFF) * v8;
  v16 = (v15 ^ HIWORD(v15)) * v8;
  *(a4 + v14) = *(v4 + v14) ^ *(v12 + (v16 >> 24)) ^ *((v16 >> 24) + v13 + 2) ^ *((v16 >> 24) + v11 + 4) ^ v16 ^ (BYTE3(v16) * v9) ^ v10;
  return (*(STACK[0xF18] + 8 * (((v14 == 0) * a1) ^ v5)))();
}

uint64_t sub_100301ED8()
{
  v0 = STACK[0xF10] - 33291;
  v1 = STACK[0xF10] + 14637;
  LODWORD(STACK[0x6794]) = STACK[0xF10] - 35635 + LODWORD(STACK[0xAA08]);
  return (*(STACK[0xF18] + 8 * ((199 * (((v0 ^ (STACK[0x4968] == 0)) & 1) == 0)) ^ v1)))();
}

uint64_t sub_100301F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] + 13325;
  LOBYTE(STACK[0x75EF]) = 95;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_100301FCC()
{
  v3 = (v0 - 210178386);
  STACK[0x8B20] = v3;
  v4 = v1 + 72 * v3;
  v5 = *(v4 + 32);
  v4 += 32;
  STACK[0x2120] = v4 - 8;
  STACK[0x7B58] = v4;
  STACK[0x6C28] = v5;
  STACK[0x9390] = STACK[0x8800];
  v6 = STACK[0x7690];
  v7 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x1858] = v7;
  STACK[0x12A8] = v7;
  STACK[0xB948] = (v7 + 16);
  STACK[0x30D0] = (v7 + 271);
  STACK[0x7810] = (v7 + 526);
  STACK[0x7690] = v6 + 656;
  return (*(STACK[0xF18] + 8 * ((v2 - 18878) ^ v2 ^ (54107 * (v2 == -1488353870)))))();
}

uint64_t sub_100302134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, uint64_t a43)
{
  *(v50 - 124) = v43;
  v52 = v45 & 0xFFFFFFF4 ^ (((v43 - 1143243783) & 0x44246DAD) + 936523230);
  *(v50 - 156) = v52;
  v53 = *(v49 + v52);
  v54 = v45 & (v43 - 33549) ^ 0x37D2A28ELL;
  *(v50 - 136) = v54;
  v55 = *(v49 + v54);
  v56 = *(a16 + (v53 ^ 0x82)) ^ v53;
  v57 = v45 & 0xFFFFFFF0 ^ 0x37D2A28FLL;
  *(v50 - 192) = v57;
  v58 = *(v49 + v57);
  v59 = *(a17 + 4 * (v55 ^ 0xBB));
  LODWORD(v54) = *(a16 + (v58 ^ 0x38));
  v60 = v45 & 0xFFFFFFFD ^ 0x37D2A28ALL;
  *(v50 - 168) = v60;
  v61 = *(v49 + v60);
  v62 = *(a17 + 4 * (v61 ^ 0xC8));
  v63 = v54 ^ v58;
  v64 = v45 & 0xFFFFFFF7 ^ 0x37D2A28ALL;
  *(v50 - 184) = v64;
  v65 = *(*(v50 - 120) + v64) ^ 0xB4;
  v66 = v45 & 0xFFFFFFF3 ^ 0x37D2A28ELL;
  *(v50 - 152) = v66;
  v67 = *(a18 + 4 * v65);
  v68 = *(*(v50 - 120) + v66);
  v69 = v45 ^ 0x37D2A28ALL;
  *(v50 - 144) = v69;
  v70 = *(a18 + 4 * (v68 ^ 0xB5));
  LODWORD(v68) = *(a18 + 4 * (*(*(v50 - 120) + v69) ^ 0xEALL));
  v71 = v45 & 0xFFFFFFF2 ^ 0x37D2A28FLL;
  *(v50 - 224) = v71;
  v72 = *(*(v50 - 120) + v71);
  LODWORD(v71) = *(a19 + 4 * (v72 ^ 0x93));
  v73 = v45 & 0xFFFFFFFC ^ 0x37D2A28BLL;
  *(v50 - 248) = v73;
  v74 = *(*(v50 - 120) + v73);
  LODWORD(v74) = *(a16 + (v74 ^ 0x66)) ^ v74;
  v75 = v45 & 0xFFFFFFF8 ^ 0x37D2A28FLL;
  *(v50 - 200) = v75;
  v76 = *(*(v50 - 120) + v75);
  LODWORD(v75) = v45;
  v77 = *(a16 + (v76 ^ 0xE7)) ^ v76;
  v319 = v45 & 0xFFFFFFFB ^ 0x37D2A28ELL;
  LODWORD(v76) = v44 ^ a25 ^ v61;
  v78 = *(a18 + 4 * (*(*(v50 - 120) + v319) ^ 0x85));
  v318 = v45 & 0xFFFFFFFE ^ 0x37D2A28BLL;
  LODWORD(v68) = v76 ^ v68 ^ v74;
  v79 = *(*(v50 - 120) + v318);
  LODWORD(v79) = v79 ^ *(a19 + 4 * (v79 ^ 0x41));
  *(v50 - 204) = v45;
  v80 = v45 & 0xFFFFFFF5 ^ 0x37D2A28ALL;
  *(v50 - 232) = v80;
  v81 = v68 ^ v62 ^ v79;
  v82 = *(*(v50 - 120) + v80);
  v83 = *(a17 + 4 * (v82 ^ 4));
  v84 = v75 & 0xFFFFFFF6 ^ 0x37D2A28BLL;
  *(v50 - 240) = v84;
  LODWORD(v82) = v47 ^ a22 ^ v67 ^ v82 ^ v83;
  v85 = *(*(v50 - 120) + v84);
  LODWORD(v85) = v85 ^ *(a19 + 4 * (v85 ^ 0x40));
  v86 = v75 & 0xFFFFFFFA ^ 0x37D2A28FLL;
  *(v50 - 216) = v86;
  v87 = *(*(v50 - 120) + v86);
  v88 = v82 ^ v56 ^ v85;
  LODWORD(v85) = *(a19 + 4 * (v87 ^ 0x92));
  LODWORD(v82) = v51 ^ a41 ^ v55 ^ v78;
  v89 = v75 & 0xFFFFFFF1 ^ 0x37D2A28ELL;
  *(v50 - 176) = v89;
  v90 = *(*(v50 - 120) + v89);
  v91 = v82 ^ v87 ^ v85 ^ v59;
  v92 = a42 ^ v46 ^ v70 ^ v63 ^ v72 ^ v71 ^ v90 ^ *(a17 + 4 * (v90 ^ 0x2A)) ^ 0xAA0D5CC9;
  v93 = *(v48 + 8 * (*(v50 - 124) - 29707)) - 882014347;
  v94 = *(v48 + 8 * (*(v50 - 124) ^ 0x8C79)) - 617325543;
  v95 = *(v48 + 8 * (*(v50 - 124) ^ 0x8AC3)) - 1442029427;
  LODWORD(v82) = *(v93 + 4 * ((v88 ^ 0x7B360E9Cu) >> 24)) ^ 0x56F03B79;
  v96 = __ROR4__(*(v94 + 4 * BYTE2(v92)), 19);
  LODWORD(v85) = *(v95 + 4 * (BYTE1(v81) ^ 0x57u));
  v97 = *(v48 + 8 * (*(v50 - 124) ^ 0x9186)) - 1889817822;
  LODWORD(v82) = v82 ^ HIDWORD(a22) ^ v96 ^ 0xC26DABF9 ^ (2 * v82) & 0x9AAF774A ^ (-1754273660 * v85 + 1377782096) ^ (635173409 * v85 + 1474653705);
  LODWORD(v85) = *(v97 + 4 * ((v91 ^ v77) ^ 0x50u)) + 2050443071;
  LODWORD(v71) = *(v93 + 4 * HIBYTE(v92)) ^ 0x4A71BA1F;
  v98 = v82 ^ (16 * (v96 ^ 0xC26DABF9)) ^ v85 ^ (2 * v85) & 0x80C8B7F6;
  v99 = __ROR4__(*(v94 + 4 * (BYTE2(v81) ^ 1u)), 19);
  LODWORD(v85) = *(v95 + 4 * (BYTE1(v91) ^ 0x80u));
  LODWORD(v82) = (2 * v71) & 0x9AAF774A ^ v71 ^ v99 ^ 0x8D349EAA ^ (16 * (v99 ^ 0x8D349EAA)) ^ (635173409 * v85 + 1474653705) ^ (-1754273660 * v85 + 1377782096);
  LODWORD(v85) = *(v97 + 4 * (v88 ^ 0x9Cu)) + 2050443071;
  v100 = v82 ^ v85;
  v101 = 2 * v85;
  *(v50 - 252) = *(v50 - 128) < 0xD9C6A3AA;
  if (((2 * v85) & 0x80C8B7F6) != 0)
  {
    v102 = v101 & 0x80C8B7F6 ^ 0x1892B19B ^ v100;
  }

  else
  {
    v102 = 1034544558;
  }

  v103 = *(v93 + 4 * (HIBYTE(v81) ^ 0x40)) ^ 0x16AB59D3;
  v104 = __ROR4__(*(v94 + 4 * (BYTE2(v91) ^ 0x53u)), 19);
  v105 = *(v97 + 4 * v92) + 2050443071;
  v106 = v103 ^ a40 ^ (2 * v103) & 0x9AAF774A ^ v104 ^ 0xA1E78EEB ^ (16 * (v104 ^ 0xA1E78EEB)) ^ (635173409 * *(v95 + 4 * (BYTE1(v88) ^ 0xEu)) + 1474653705) ^ (1377782096 - 1754273660 * *(v95 + 4 * (BYTE1(v88) ^ 0xEu))) ^ v105 ^ (2 * v105) & 0x80C8B7F6;
  v107 = *(v93 + 4 * (HIBYTE(v91) ^ 0xCF)) ^ 0xBAA783A8;
  v108 = __ROR4__(*(v94 + 4 * (BYTE2(v88) ^ 0x54u)), 19);
  v109 = *(v97 + 4 * (v81 ^ 0xFu)) + 2050443071;
  v110 = a39 ^ v107 ^ (2 * v107) & 0x9AAF774A ^ v108 ^ 0x4F641A36 ^ (1377782096 - 1754273660 * *(v95 + 4 * BYTE1(v92))) ^ (635173409 * *(v95 + 4 * BYTE1(v92)) + 1474653705) ^ (16 * (v108 ^ 0x4F641A36)) ^ v109 ^ (2 * v109) & 0x80C8B7F6 ^ 0x997A53A7;
  v111 = a38 ^ v101 & 0x80C002D4 ^ (v100 ^ 0x94DA56E9) & ~(v101 & 0x80C8B7F6) ^ v102 & 0xC662E8E ^ (v102 ^ 0x3DA9E5AE) & (v100 ^ 0xD6A28544) ^ 0x7F2EA07;
  v112 = *(v93 + 4 * HIBYTE(v111)) ^ 0xB2C1B242;
  v113 = __ROR4__(*(v94 + 4 * ((v106 ^ 0x2543F2B5) >> 16)), 19);
  v114 = *(v97 + 4 * (v98 ^ 4u)) + 2050443071;
  v115 = v112 ^ HIDWORD(a24) ^ v113 ^ 0xC1FA1783 ^ (2 * v112) & 0x9AAF774A ^ (16 * (v113 ^ 0xC1FA1783)) ^ (1377782096 - 1754273660 * *(v95 + 4 * BYTE1(v110))) ^ (635173409 * *(v95 + 4 * BYTE1(v110)) + 1474653705) ^ v114 ^ (2 * v114) & 0x80C8B7F6;
  v116 = *(v93 + 4 * ((v106 ^ 0x2543F2B5) >> 24)) ^ 0x3F40F6EC;
  v117 = __ROR4__(*(v94 + 4 * BYTE2(v110)), 19);
  v118 = *(v95 + 4 * (BYTE1(v98) ^ 0x1Du));
  v119 = HIDWORD(a12) ^ v116 ^ v117 ^ 0x6BB000CE ^ (2 * v116) & 0x9AAF774A ^ (16 * (v117 ^ 0x6BB000CE)) ^ (1377782096 - 1754273660 * v118) ^ (635173409 * v118 + 1474653705);
  v120 = *(v97 + 4 * v111) + 2050443071;
  v121 = v119 ^ v120 ^ (2 * v120) & 0x80C8B7F6 ^ a24;
  v122 = *(v93 + 4 * ((v98 ^ 0x9E9F904u) >> 24)) ^ 0x1DAB15DA;
  v123 = __ROR4__(*(v94 + 4 * BYTE2(v111)), 19);
  v124 = *(v95 + 4 * (BYTE1(v106) ^ 0x16u));
  v125 = *(v97 + 4 * v110) + 2050443071;
  v126 = HIDWORD(a15) ^ v122 ^ (2 * v122) & 0x9AAF774A ^ v123 ^ 0xC5AB42C7 ^ (16 * (v123 ^ 0xC5AB42C7)) ^ (635173409 * v124 + 1474653705) ^ (1377782096 - 1754273660 * v124) ^ v125 ^ (2 * v125) & 0x80C8B7F6;
  v127 = *(v93 + 4 * HIBYTE(v110)) ^ 0xEA67247F;
  v128 = __ROR4__(*(v94 + 4 * ((v98 ^ 0x9E9F904u) >> 16)), 19);
  v129 = *(v97 + 4 * (v106 ^ 0xB5u)) + 2050443071;
  v130 = a37 ^ v127 ^ v128 ^ 0x8E72AC28 ^ (16 * (v128 ^ 0x8E72AC28)) ^ (635173409 * *(v95 + 4 * BYTE1(v111)) + 1474653705) ^ (1377782096 - 1754273660 * *(v95 + 4 * BYTE1(v111))) ^ (2 * v127) & 0x9AAF774A ^ v129 ^ (2 * v129) & 0x80C8B7F6 ^ 0xF1F4F432;
  v131 = *(v97 + 4 * (v115 ^ 0x1Du));
  v132 = *(v93 + 4 * HIBYTE(v130));
  v133 = __ROR4__(*(v94 + 4 * (BYTE2(v126) ^ 8u)), 19);
  v134 = *(v95 + 4 * ((v115 ^ 0x8F1D) >> 8));
  v135 = (1377782096 - 1754273660 * v134) ^ (635173409 * v134 + 1474653705);
  v136 = v132 ^ (2 * v132) & 0x9AAF774A ^ v133 ^ 0x8A3F96E8 ^ (16 * (v133 ^ 0x8A3F96E8)) ^ 0x77ADE9BD;
  v137 = v136 + v135 - 2 * (v136 & v135);
  v121 ^= 0x55DCA86u;
  v138 = *(v93 + 4 * (HIBYTE(v121) ^ 0x56)) ^ 0x5C6086E2;
  v139 = __ROR4__(*(v94 + 4 * BYTE2(v130)), 19);
  v140 = *(v95 + 4 * (BYTE1(v126) ^ 0xEBu));
  v141 = v138 ^ a36 ^ v139 ^ 0xE16C14D0 ^ (16 * (v139 ^ 0xE16C14D0)) ^ (2 * v138) & 0x9AAF774A ^ (635173409 * v140 + 1474653705) ^ (1377782096 - 1754273660 * v140) ^ (v131 + 2050443071) ^ (612554786 - ((2 * (((v131 ^ 0x28B0C75B) + 617116684) ^ v131 ^ ((v131 ^ 0x4B9FBFD2) + 1206324355) ^ ((v131 ^ 0x6D77C3C9) + 1628401818) ^ ((v131 ^ 0x7DDFF7EF) + 1906787520))) ^ 0xE70E995E)) & 0x80C8B7F6;
  v142 = *(v93 + 4 * (HIBYTE(v126) ^ 0xCD)) ^ 0xFA6CAB3A;
  v143 = *(v95 + 4 * (BYTE1(v121) ^ 0xCBu));
  v144 = __ROR4__(*(v94 + 4 * (BYTE2(v115) ^ 0xE8u)), 19);
  v145 = v142 ^ a35 ^ (2 * v142) & 0x9AAF774A ^ v144 ^ 0xA7C5A793 ^ (1377782096 - 1754273660 * v143) ^ (635173409 * v143 + 1474653705) ^ (16 * (v144 ^ 0xA7C5A793));
  v146 = *(v97 + 4 * v130) + 2050443071;
  v147 = v145 ^ v146 ^ (2 * v146) & 0x80C8B7F6;
  v148 = *(v97 + 4 * (v121 ^ 0xD2u)) + 2050443071;
  v149 = *(v93 + 4 * ((v115 ^ 0xB28A8F1D) >> 24));
  v150 = a15 ^ v148 ^ (2 * v148) & 0x80C8B7F6 ^ v137;
  v151 = __ROR4__(*(v94 + 4 * (BYTE2(v121) ^ 0xAEu)), 19);
  v152 = *(v97 + 4 * (v126 ^ 0xC9u)) + 2050443071;
  v153 = v149 ^ 0xAB940FBB ^ HIDWORD(a34) ^ v151 ^ 0xA85E8752 ^ (2 * (v149 ^ 0xAB940FBB)) & 0x9AAF774A ^ (16 * (v151 ^ 0xA85E8752)) ^ (635173409 * *(v95 + 4 * BYTE1(v130)) + 1474653705) ^ (1377782096 - 1754273660 * *(v95 + 4 * BYTE1(v130))) ^ v152 ^ (2 * v152) & 0x80C8B7F6;
  v154 = *(v93 + 4 * (HIBYTE(v153) ^ 0xCA));
  HIDWORD(v155) = *(v94 + 4 * (BYTE2(v141) ^ 0xDEu));
  LODWORD(v155) = HIDWORD(v155);
  v156 = (v155 >> 19) ^ (16 * (v155 >> 19)) ^ 0x20BFB505;
  v157 = v156 + (v154 ^ 0x7ED4A4D0 ^ (2 * v154) & 0x9AAF774A) - 2 * (v156 & (v154 ^ 0x7ED4A4D0 ^ (2 * v154) & 0x9AAF774A));
  v158 = *(v93 + 4 * (HIBYTE(v150) ^ 0x8F)) ^ 0x4CD2D27A;
  LODWORD(v155) = __ROR4__(*(v94 + 4 * ((v147 ^ 0x7AA39A78) >> 16)), 19);
  v159 = *(v95 + 4 * (BYTE1(v153) ^ 0x41u));
  v160 = *(v97 + 4 * (v141 ^ 0x16u)) + 2050443071;
  v161 = v158 ^ a34 ^ v155 ^ 0xD6F68DDE ^ (2 * v158) & 0x9AAF774A ^ (16 * (v155 ^ 0xD6F68DDE)) ^ (635173409 * v159 + 1474653705) ^ (1377782096 - 1754273660 * v159) ^ v160 ^ (2 * v160) & 0x80C8B7F6;
  v153 ^= 0x1395A58Bu;
  v162 = *(v93 + 4 * ((v147 ^ 0x7AA39A78) >> 24)) ^ 0x42DC2247;
  LODWORD(v155) = __ROR4__(*(v94 + 4 * BYTE2(v153)), 19);
  v163 = *(v95 + 4 * ((v141 ^ 0xF816) >> 8));
  v164 = v150 ^ 0x5681B68E;
  v165 = *(v97 + 4 * (v150 ^ 0x8Eu)) + 2050443071;
  v166 = a34 ^ a35 ^ v162 ^ v155 ^ 0x38C7B98C ^ (2 * v162) & 0x9AAF774A ^ (16 * (v155 ^ 0x38C7B98C)) ^ (1377782096 - 1754273660 * v163) ^ (635173409 * v163 + 1474653705) ^ v165 ^ (2 * v165) & 0x80C8B7F6;
  v167 = *(v97 + 4 * (v147 ^ 0x78u)) + 2050443071;
  v168 = (635173409 * *(v95 + 4 * BYTE1(v164)) + 1474653705) ^ HIDWORD(a33) ^ (1377782096 - 1754273660 * *(v95 + 4 * BYTE1(v164))) ^ v167 ^ (2 * v167) & 0x80C8B7F6 ^ v157;
  v169 = *(v93 + 4 * ((v141 ^ 0x64BCF816) >> 24)) ^ 0xAC8ADB34;
  LODWORD(v155) = __ROR4__(*(v94 + 4 * BYTE2(v164)), 19);
  v170 = *(v95 + 4 * (BYTE1(v147) ^ 0x7Eu));
  v171 = *(v97 + 4 * v153) + 2050443071;
  v172 = a33 ^ v169 ^ v155 ^ 0x4082F6BB ^ (2 * v169) & 0x9AAF774A ^ (16 * (v155 ^ 0x4082F6BB)) ^ (1377782096 - 1754273660 * v170) ^ (635173409 * v170 + 1474653705) ^ v171 ^ (2 * v171) & 0x80C8B7F6 ^ 0xC4E8D9E7;
  v173 = *(v93 + 4 * (HIBYTE(v161) ^ 0x45)) ^ 0x1E8C6F87;
  LODWORD(v155) = __ROR4__(*(v94 + 4 * (BYTE2(v166) ^ 0x31u)), 19);
  v174 = v168 ^ 0x9C02D3F7;
  v175 = *(v95 + 4 * ((v168 ^ 0xD3F7) >> 8));
  v176 = *(v97 + 4 * v172) + 2050443071;
  v177 = v173 ^ HIDWORD(a23) ^ v155 ^ 0x3D2D54A6 ^ (2 * v173) & 0x9AAF774A ^ (16 * (v155 ^ 0x3D2D54A6)) ^ (635173409 * v175 + 1474653705) ^ (1377782096 - 1754273660 * v175) ^ v176 ^ (2 * v176) & 0x80C8B7F6;
  v178 = *(v93 + 4 * (HIBYTE(v166) ^ 0x54)) ^ 0xA17D9ABF;
  LODWORD(v155) = __ROR4__(*(v94 + 4 * (BYTE2(v168) ^ 0x60u)), 19);
  v179 = a23 ^ v178 ^ (2 * v178) & 0x9AAF774A ^ v155 ^ 0x881C39EA ^ (16 * (v155 ^ 0x881C39EA));
  BYTE1(v178) = BYTE1(v161) ^ 0x3F;
  v180 = *(v97 + 4 * (v161 ^ 0xE4u)) + 2050443071;
  v181 = v179 ^ (635173409 * *(v95 + 4 * BYTE1(v172)) + 1474653705) ^ (1377782096 - 1754273660 * *(v95 + 4 * BYTE1(v172))) ^ v180 ^ (2 * v180) & 0x80C8B7F6 ^ 0x57BD6763;
  v182 = *(v93 + 4 * HIBYTE(v172)) ^ 0x80D1AD6E;
  LODWORD(v155) = __ROR4__(*(v94 + 4 * ((v161 ^ 0x9CCF3FE4) >> 16)), 19);
  v183 = *(v95 + 4 * (BYTE1(v166) ^ 0x14u));
  v184 = *(v97 + 4 * v174) + 2050443071;
  v185 = HIDWORD(a32) ^ v182 ^ (2 * v182) & 0x9AAF774A ^ v155 ^ 0xCC9641FE ^ (16 * (v155 ^ 0xCC9641FE)) ^ (635173409 * v183 + 1474653705) ^ (1377782096 - 1754273660 * v183) ^ v184 ^ (2 * v184) & 0x80C8B7F6 ^ 0x6EB98A49;
  v186 = *(v93 + 4 * HIBYTE(v174)) ^ 0x2B97E9CC;
  LODWORD(v155) = __ROR4__(*(v94 + 4 * BYTE2(v172)), 19);
  v187 = *(v97 + 4 * (v166 ^ 0x6Bu)) + 2050443071;
  v188 = HIDWORD(a14) ^ (v181 + a13 - 2 * (v181 & a13));
  v189 = a32 ^ v186 ^ v155 ^ 0xB474B101 ^ (2 * v186) & 0x9AAF774A ^ (1377782096 - 1754273660 * *(v95 + 4 * BYTE1(v178))) ^ (635173409 * *(v95 + 4 * BYTE1(v178)) + 1474653705) ^ (16 * (v155 ^ 0xB474B101)) ^ v187 ^ (2 * v187) & 0x80C8B7F6 ^ 0x7707D22B;
  v190 = *(v93 + 4 * HIBYTE(v188)) ^ 0x654A85BF;
  LODWORD(v155) = __ROR4__(*(v94 + 4 * BYTE2(v189)), 19);
  v191 = *(v97 + 4 * (v177 ^ 0xA1u)) + 2050443071;
  v192 = v190 ^ a30 ^ v155 ^ 0x8866F1FE ^ (2 * v190) & 0x9AAF774A ^ (1377782096 - 1754273660 * *(v95 + 4 * BYTE1(v185))) ^ (635173409 * *(v95 + 4 * BYTE1(v185)) + 1474653705) ^ (16 * (v155 ^ 0x8866F1FE)) ^ v191 ^ (2 * v191) & 0x80C8B7F6;
  v193 = *(v93 + 4 * HIBYTE(v185)) ^ 0x94E6E08B;
  LODWORD(v155) = __ROR4__(*(v94 + 4 * ((v177 ^ 0xDA2F49A1) >> 16)), 19);
  v194 = *(v95 + 4 * (((BYTE1(v188) - (BYTE1(v188) ^ 0xE4)) ^ 0xFFFFFFF8) + BYTE1(v188)));
  v195 = v193 ^ HIDWORD(a30) ^ (2 * v193) & 0x9AAF774A ^ v155 ^ 0x7526303A ^ (635173409 * v194 + 1474653705) ^ (1377782096 - 1754273660 * v194) ^ (16 * (v155 ^ 0x7526303A));
  v196 = *(v97 + 4 * v189) + 2050443071;
  v197 = v195 ^ v196 ^ (2 * v196) & 0x80C8B7F6;
  v198 = *(v93 + 4 * (HIBYTE(v177) ^ 3)) ^ 0xD8C6E2C8;
  LODWORD(v155) = __ROR4__(*(v94 + 4 * BYTE2(v188)), 19);
  v199 = *(v97 + 4 * v185) + 2050443071;
  v200 = v198 ^ HIDWORD(a31) ^ (2 * v198) & 0x9AAF774A ^ v155 ^ 0x1540FB90 ^ (16 * (v155 ^ 0x1540FB90)) ^ (635173409 * *(v95 + 4 * BYTE1(v189)) + 1474653705) ^ (1377782096 - 1754273660 * *(v95 + 4 * BYTE1(v189))) ^ v199 ^ (2 * v199) & 0x80C8B7F6;
  v201 = *(v93 + 4 * HIBYTE(v189)) ^ 0x37078145;
  LODWORD(v155) = __ROR4__(*(v94 + 4 * BYTE2(v185)), 19);
  v202 = *(v95 + 4 * ((v177 ^ 0x49A1) >> 8));
  v203 = *(v97 + 4 * v188) + 2050443071;
  v204 = a31 ^ v201 ^ v155 ^ 0x791C7671 ^ (2 * v201) & 0x9AAF774A ^ (16 * (v155 ^ 0x791C7671)) ^ (635173409 * v202 + 1474653705) ^ (1377782096 - 1754273660 * v202) ^ v203 ^ (2 * v203) & 0x80C8B7F6 ^ 0xFBBD9694;
  v205 = *(v93 + 4 * (HIBYTE(v200) ^ 0x24)) ^ 0xBF7841A;
  LODWORD(v155) = __ROR4__(*(v94 + 4 * (BYTE2(v192) ^ 0x2Eu)), 19);
  v206 = *(v97 + 4 * (v197 ^ 0xF1u)) + 2050443071;
  v207 = (2 * v205) & 0x9AAF774A ^ v205 ^ v155 ^ 0xC6AF93FE ^ (1377782096 - 1754273660 * *(v95 + 4 * BYTE1(v204))) ^ (635173409 * *(v95 + 4 * BYTE1(v204)) + 1474653705) ^ (16 * (v155 ^ 0xC6AF93FE)) ^ v206 ^ (2 * v206) & 0x80C8B7F6;
  HIDWORD(v155) = *(v94 + 4 * BYTE2(v204));
  LODWORD(v155) = HIDWORD(v155);
  v208 = v155 >> 19;
  v209 = 16 * v208;
  v210 = ((16 * v208) ^ 0x994D65DD) & (v208 ^ 0xDFF4B055);
  v211 = ((16 * v208) ^ 0xB4FAAF) & (v208 ^ 0x1955CCD0);
  v212 = *(v93 + 4 * (HIBYTE(v197) ^ 0x8D)) ^ 0x76890DB7;
  LODWORD(v155) = __ROR4__(*(v94 + 4 * (BYTE2(v200) ^ 0x67u)), 19);
  v213 = *(v95 + 4 * ((v192 ^ 0x3284) >> 8));
  v214 = *(v97 + 4 * v204) + 2050443071;
  v215 = v212 ^ HIDWORD(a28) ^ v155 ^ 0xB0E7B7B0 ^ (2 * v212) & 0x9AAF774A ^ (16 * (v155 ^ 0xB0E7B7B0)) ^ (635173409 * v213 + 1474653705) ^ (1377782096 - 1754273660 * v213) ^ v214 ^ (2 * v214) & 0x80C8B7F6;
  v216 = *(v93 + 4 * ((v192 ^ 0xB34C3284) >> 24)) ^ 0x4C4C9464;
  v217 = v216 ^ HIDWORD(a29) ^ v208 & 0x6606608D ^ (2 * v216) & 0x9AAF774A;
  v218 = *(v95 + 4 * (BYTE1(v197) ^ 0x65u));
  v219 = v217 ^ (1377782096 - 1754273660 * v218) ^ (635173409 * v218 + 1474653705) ^ v209 & 0x395E8370;
  v220 = *(v97 + 4 * (v200 ^ 0xEBu)) + 2050443071;
  v221 = v219 ^ v220 ^ v210 ^ v211 ^ (2 * v220) & 0x80C8B7F6;
  v222 = a14 ^ v207 & 0xFBFFFFFF ^ (v207 & 0x4000000 | 0x48107CF6);
  v223 = *(v93 + 4 * HIBYTE(v204)) ^ 0xE4C5F6C3;
  v224 = *(v95 + 4 * (BYTE1(v200) ^ 0xB4u));
  LODWORD(v155) = __ROR4__(*(v94 + 4 * (BYTE2(v197) ^ 1u)), 19);
  v225 = *(v97 + 4 * (v192 ^ 0x84u)) + 2050443071;
  v226 = v223 ^ a29 ^ (2 * v223) & 0x9AAF774A ^ (635173409 * v224 + 1474653705) ^ (1377782096 - 1754273660 * v224) ^ v155 ^ 0x50006202 ^ (16 * (v155 ^ 0x50006202)) ^ v225 ^ (2 * v225) & 0x80C8B7F6;
  v227 = *(v93 + 4 * (HIBYTE(v221) ^ 0xAC)) ^ 0x90898344;
  LODWORD(v155) = __ROR4__(*(v94 + 4 * ((v226 ^ 0x6C3376F9u) >> 16)), 19);
  v228 = a12 ^ v227 ^ v155 ^ 0xCCF14690 ^ (2 * v227) & 0x9AAF774A ^ (16 * (v155 ^ 0xCCF14690));
  v229 = v215 ^ 0x74068F2E;
  v230 = *(v95 + 4 * ((v215 ^ 0x8F2E) >> 8));
  v231 = v222 ^ 0x4CC1E127;
  v232 = (635173409 * v230 + 1474653705) ^ (1377782096 - 1754273660 * v230);
  v233 = *(v97 + 4 * v231) + 2050443071;
  v234 = v228 ^ v232 ^ v233 ^ (2 * v233) & 0x80C8B7F6;
  v235 = *(v93 + 4 * (HIBYTE(v215) ^ 0xAD)) ^ 0xB0F4FAE;
  LODWORD(v155) = __ROR4__(*(v94 + 4 * BYTE2(v231)), 19);
  v221 ^= 0x7537F559u;
  v236 = *(v95 + 4 * BYTE1(v221));
  v237 = a28 ^ v235 ^ v155 ^ 0xB8785F11 ^ (16 * (v155 ^ 0xB8785F11)) ^ (2 * v235) & 0x9AAF774A ^ (635173409 * v236 + 1474653705);
  v238 = 1377782096 - 1754273660 * v236;
  v239 = *(v97 + 4 * (v226 ^ 0xF9u)) + 2050443071;
  v240 = v237 ^ v238 ^ v239 ^ (2 * v239) & 0x80C8B7F6;
  v241 = *(v93 + 4 * HIBYTE(v231)) ^ 0x5B883D5D;
  LODWORD(v155) = __ROR4__(*(v94 + 4 * BYTE2(v221)), 19);
  v242 = *(v95 + 4 * (BYTE1(v226) ^ 0x92u));
  v243 = *(v97 + 4 * v229) + 2050443071;
  v244 = HIDWORD(a27) ^ v241 ^ v155 ^ 0x514D085E ^ (2 * v241) & 0x9AAF774A ^ (16 * (v155 ^ 0x514D085E)) ^ (1377782096 - 1754273660 * v242) ^ (635173409 * v242 + 1474653705) ^ v243 ^ (2 * v243) & 0x80C8B7F6;
  v245 = *(v93 + 4 * ((v226 ^ 0x6C3376F9u) >> 24)) ^ 0x85AA7A9E;
  LODWORD(v155) = __ROR4__(*(v94 + 4 * BYTE2(v229)), 19);
  v246 = *(v97 + 4 * v221) + 2050443071;
  v247 = (2 * v246) & 0x80C8B7F6;
  v248 = v240 ^ 0x411E2965;
  v249 = (635173409 * *(v95 + 4 * BYTE1(v231)) + 1474653705) ^ (1377782096 - 1754273660 * *(v95 + 4 * BYTE1(v231))) ^ v246;
  LOWORD(v231) = v244 ^ 0x7877;
  v250 = a27 ^ v245 ^ (2 * v245) & 0x9AAF774A ^ v155 ^ 0xBB24F3A9 ^ (16 * (v155 ^ 0xBB24F3A9)) ^ v249 ^ v247 ^ 0x7A677D7B;
  v251 = *(v93 + 4 * ((v240 ^ 0x411E2965) >> 24));
  LOWORD(v240) = v234 ^ 0xC539;
  v252 = *(v93 + 4 * ((v244 ^ 0xACBD7877) >> 24));
  v253 = *(v93 + 4 * ((v234 ^ 0xFED2C539) >> 24));
  v254 = *(v93 + 4 * HIBYTE(v250));
  v255 = *(v94 + 4 * ((v244 ^ 0xACBD7877) >> 16));
  v256 = *(v94 + 4 * (BYTE2(v234) ^ 0xB0u));
  v257 = *(v94 + 4 * BYTE2(v250));
  v258 = *(v94 + 4 * BYTE2(v248));
  v259 = *(v95 + 4 * BYTE1(v240));
  v260 = *(v95 + 4 * BYTE1(v250));
  v261 = *(v95 + 4 * BYTE1(v248));
  v262 = *(v95 + 4 * BYTE1(v231));
  v263 = *(v97 + 4 * v250);
  v264 = *(v97 + 4 * v248);
  v265 = *(v97 + 4 * v231);
  v266 = *(v97 + 4 * v240);
  LODWORD(v155) = __ROR4__(v257, 19);
  v267 = v253 ^ 0xC7F4462B ^ a26 ^ v155 ^ 0x5488C9CC ^ (2 * (v253 ^ 0xC7F4462B)) & 0x9AAF774A ^ (1377782096 - 1754273660 * v261) ^ (635173409 * v261 + 1474653705) ^ (16 * (v155 ^ 0x5488C9CC));
  LODWORD(v155) = __ROR4__(v258, 19);
  v268 = HIDWORD(a13) ^ v254 ^ 0xD73BB19B ^ v155 ^ 0x4E723B23 ^ (2 * (v254 ^ 0xD73BB19B)) & 0x9AAF774A ^ (16 * (v155 ^ 0x4E723B23)) ^ (635173409 * v262 + 1474653705) ^ (1377782096 - 1754273660 * v262) ^ (v266 + 2050443071) ^ (2 * (v266 + 2050443071)) & 0x80C8B7F6;
  LODWORD(v155) = __ROR4__(v255, 19);
  v269 = HIDWORD(a26) ^ v251 ^ 0xD0D4973C ^ v155 ^ 0xDDC40652 ^ (2 * (v251 ^ 0xD0D4973C)) & 0x9AAF774A ^ (16 * (v155 ^ 0xDDC40652));
  LODWORD(v155) = __ROR4__(v256, 19);
  v270 = v269 ^ (635173409 * v259 + 1474653705) ^ (1377782096 - 1754273660 * v259) ^ (v263 + 2050443071) ^ (2 * (v263 + 2050443071)) & 0x80C8B7F6 ^ 0x7B614DA4;
  v265 += 2050443071;
  v271 = v267 ^ v265;
  v272 = (2 * v265) & 0x80C8B7F6;
  v273 = HIBYTE(v270);
  v274 = v252 ^ 0x147177F ^ HIDWORD(a21) ^ (2 * (v252 ^ 0x147177F)) & 0x9AAF774A ^ v155 ^ 0x9DE04E21 ^ (635173409 * v260 + 1474653705) ^ (1377782096 - 1754273660 * v260) ^ (16 * (v155 ^ 0x9DE04E21)) ^ (v264 + 2050443071) ^ (2 * (v264 + 2050443071)) & 0x80C8B7F6;
  LOBYTE(v256) = v274 ^ 7;
  v275 = (v274 ^ 0xD524F107) >> 24;
  v276 = *(v48 + 8 * (*(v50 - 124) - 32738)) - 1119325978;
  v277 = *(v276 + 4 * (HIBYTE(v270) ^ 0x46));
  v278 = *(v276 + 4 * (v275 ^ 0x46));
  LOBYTE(v261) = v271 ^ v272;
  v279 = (v271 ^ v272) >> 24;
  v280 = *(v276 + 4 * (v279 ^ 0x2E));
  v281 = HIBYTE(v268);
  v282 = *(v276 + 4 * (HIBYTE(v268) ^ 0xCA));
  v283 = *(v48 + 8 * (*(v50 - 124) ^ 0x8C47)) - 578960919;
  v284 = *(v283 + 4 * ((v274 ^ 0xD524F107) >> 16));
  LODWORD(v276) = *(v283 + 4 * (((v271 ^ v272) >> 16) ^ 0x88u));
  v285 = *(v283 + 4 * (BYTE2(v268) ^ 0xB5u));
  v286 = *(v283 + 4 * BYTE2(v270));
  v287 = *(v48 + 8 * (*(v50 - 124) - 30517)) - 1627725063;
  v288 = *(v287 + 4 * (((v271 ^ v272) >> 8) ^ 0x2Au));
  v289 = *(v287 + 4 * (BYTE1(v268) ^ 0xA1u));
  v290 = *(v287 + 4 * BYTE1(v270));
  v291 = *(v287 + 4 * (BYTE1(v274) ^ 0x58u));
  v292 = *(&off_1010A0B50 + *(v50 - 124) - 29383) - 1013226791;
  LODWORD(v287) = *&v292[4 * v270];
  v293 = *&v292[4 * v256];
  v294 = *&v292[4 * (v261 ^ 0xA8)];
  v295 = *&v292[4 * (v268 ^ 0x99)] ^ 0x39F7D472;
  v296 = (v273 + 1703005747) ^ HIDWORD(a25) ^ v277 ^ v284 ^ __ROR4__(v288, 12) ^ v295 ^ (8 * v295);
  v297 = *(&off_1010A0B50 + *(v50 - 124) - 33002) - 1648703586;
  v298 = v297[v296 ^ 0xEALL];
  *(*(v50 - 120) + *(v50 - 248)) = (-((v298 >> 3) & 8 ^ v298 ^ 0x57) ^ (41 - ((v298 >> 3) & 8 ^ v298 ^ 0x7E)) ^ 0x42 ^ (((v298 >> 3) & 8 ^ v298 ^ 0x57) - ((2 * ((v298 >> 3) & 8 ^ v298 ^ 0x57)) & 0x84) + 66)) + 41;
  v299 = (v275 + 1703005747) ^ a21 ^ v278 ^ v276 ^ __ROR4__(v289, 12);
  v300 = ((v281 ^ 0x8C) + 1703005747) ^ HIDWORD(a20) ^ v286 ^ v282 ^ __ROR4__(v291, 12) ^ v294 ^ 0xC70D70FD ^ (8 * (v294 ^ 0xC70D70FD));
  v301 = *(&off_1010A0B50 + (*(v50 - 124) ^ 0x9365)) - 550587363;
  v302 = v299 ^ v287 ^ 0xE1F3B291 ^ (8 * (v287 ^ 0xE1F3B291));
  *(*(v50 - 120) + *(v50 - 224)) = (v301[BYTE2(v300) ^ 0x57] - 65) ^ 0xD;
  *(*(v50 - 120) + *(v50 - 192)) = v297[v300 ^ 0x6ALL] ^ (v297[v300 ^ 0x6ALL] >> 3) & 8 ^ 0xC;
  v303 = *(&off_1010A0B50 + (*(v50 - 124) ^ 0x8C68)) - 1611274370;
  *(*(v50 - 120) + v319) = v303[BYTE3(v302) ^ 0x5BLL] ^ 0xE8;
  *(*(v50 - 120) + v318) = (v301[BYTE2(v296) ^ 0x20] - 65) ^ 0x17;
  v304 = HIDWORD(a11) ^ (((v271 >> 23) & 0x66666666 ^ 0x40) + (v279 ^ 0x6581CE5B)) ^ v285 ^ v280 ^ (v290 >> 12) ^ (v290 << 20) ^ v293 ^ (8 * v293);
  *(*(v50 - 120) + *(v50 - 184)) = v303[HIBYTE(v304) ^ 0x14] ^ 0x33;
  *(*(v50 - 120) + *(v50 - 156)) = v297[v304 ^ 0x1ELL] ^ 0x49 ^ (v297[v304 ^ 0x1ELL] >> 3) & 8;
  *(*(v50 - 120) + *(v50 - 240)) = (v301[BYTE2(v304) ^ 0x7DLL] - 65) ^ 0xEB;
  v305 = *(&off_1010A0B50 + *(v50 - 124) - 32632) - 353633122;
  *(*(v50 - 120) + *(v50 - 168)) = ((BYTE1(v296) ^ 0x19) - 106) ^ 0x82 ^ v305[BYTE1(v296) ^ 9];
  *(*(v50 - 120) + *(v50 - 232)) = ((BYTE1(v304) ^ 0xD3) + 22) ^ 0xC4 ^ v305[BYTE1(v304) ^ 0x43];
  v306 = v297[(v299 ^ v287 ^ 0x91 ^ (8 * (v287 ^ 0x91))) ^ 0x14];
  *(*(v50 - 120) + *(v50 - 200)) = v306 ^ ((v306 >> 3) & 8 | 0xF3) ^ 3;
  *(*(v50 - 120) + *(v50 - 152)) = v303[HIBYTE(v300) ^ 0x82] ^ 0xFD;
  *(*(v50 - 120) + *(v50 - 216)) = (v301[BYTE2(v302) ^ 0xB2] - 65) ^ 0xEF;
  *(*(v50 - 120) + *(v50 - 136)) = ((BYTE1(v302) ^ 0x48) + 22) ^ 0xA3 ^ v305[BYTE1(v302) ^ 0xD8];
  LOBYTE(v306) = v303[HIBYTE(v296) ^ 0x40];
  v307 = *(v50 - 120);
  *(v307 + *(v50 - 144)) = v306 ^ 0x80;
  v308 = (((*(v50 - 204) ^ 0xEE08ED11) + 301404911) ^ ((*(v50 - 204) ^ 0x343B0364) - 876282724) ^ ((*(v50 - 204) ^ 0xEDE14CFF) + 304001793)) + 1205424232;
  LODWORD(v297) = (v308 ^ 0xEFF05AB0) & (2 * (v308 & 0xEFF95232)) ^ v308 & 0xEFF95232;
  v309 = ((2 * (v308 ^ 0x6A805AB4)) ^ 0xAF2110C) & (v308 ^ 0x6A805AB4) ^ (2 * (v308 ^ 0x6A805AB4)) & 0x85790886;
  LODWORD(v276) = v309 ^ 0x85090882;
  v310 = (v309 ^ 0x600000) & (4 * v297) ^ v297;
  LODWORD(v297) = ((4 * v276) ^ 0x15E42218) & v276 ^ (4 * v276) & 0x85790880;
  v311 = v310 ^ 0x85790886 ^ (v297 ^ 0x5600000) & (16 * v310);
  LODWORD(v297) = (16 * (v297 ^ 0x80190886)) & 0x85790880 ^ 0x80690086 ^ ((16 * (v297 ^ 0x80190886)) ^ 0x57908860) & (v297 ^ 0x80190886);
  v312 = (v311 << 8) & 0x85790800 ^ v311 ^ ((v311 << 8) ^ 0x79088600) & v297;
  v313 = (v312 << 16) & 0x5790000 ^ v312 ^ ((v312 << 16) ^ 0x8860000) & ((v297 << 8) & 0x5790000 ^ 0x4710000 ^ ((v297 << 8) ^ 0x79080000) & v297);
  v314 = *(v50 - 124);
  *(v307 + *(v50 - 176)) = ((BYTE1(v300) ^ 0xA3) + 22) ^ 0x6A ^ v305[BYTE1(v300) ^ 0x33];
  LODWORD(v305) = (((v308 ^ (2 * v313) ^ 0xF6EF7E79) - 640065485) ^ ((v308 ^ (2 * v313) ^ 0x2464387F) + 189933109) ^ ((v308 ^ (2 * v313) ^ 0x35900538) + 447093620)) + 295257652;
  v315 = *(v50 - 252) ^ (v305 < 0xD9C6A3AA);
  v316 = v305 < *(v50 - 128);
  if (v315)
  {
    v316 = *(v50 - 252);
  }

  return (*(a43 + 8 * ((8580 * v316) ^ v314)))(91815936, 106, 2239301760, v302, v286, v271, 2050443071, v289, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_1003040E0()
{
  v0 = (STACK[0xF10] - 35555) | 0x5284;
  v1 = STACK[0xF10] - 31121;
  v2 = *(*(&off_1010A0B50 + (STACK[0xF10] ^ 0x80B9)) - 435825614);
  v3 = *(v2 + 4);
  LODWORD(STACK[0xC44A]) = *v2;
  LODWORD(STACK[0xC44E]) = v3;
  LOWORD(STACK[0xC452]) = *(v2 + 8);
  return (*(STACK[0xF18] + 8 * (v1 - 19533 + v0)))();
}

uint64_t sub_100304370()
{
  v1 = STACK[0xF18];
  STACK[0x2FE0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 4382 + (v0 ^ 0xCBB))))();
}

uint64_t sub_100304520()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 4945) ^ v0)))();
}

uint64_t sub_1003045EC()
{
  v1 = (STACK[0xF10] - 34106) | 0x10;
  v2 = STACK[0xF10] + 2028;
  LODWORD(STACK[0x37A0]) = v0 + 64;
  v3 = LODWORD(STACK[0x983C]) - 2100689681;
  v4 = v0 - 1168583559 > v3;
  if ((v0 - 1168583559) < 0xBA58D439 != v3 < 0xBA58D439)
  {
    v4 = (v0 - 1168583559) < 0xBA58D439;
  }

  return (*(STACK[0xF18] + 8 * ((!v4 * (v1 - 1524)) ^ v2)))();
}

uint64_t sub_100304678@<X0>(int a1@<W1>, int a2@<W8>)
{
  v5 = a1 + ((v2 - 24197) ^ 0x7EE);
  *(v3 + 2912) = v5;
  v6 = (((v4 ^ (v2 + 1819538740)) - 1819564963) ^ ((v4 ^ 0xC6EDC1BB) + 957496901) ^ ((v4 ^ 0x434C5D09) - 1129078025)) - 1038001900;
  v7 = v5 > 0x27B46DFC;
  v8 = v7 ^ (v6 < 0xD84B9203);
  v9 = a1 - 666136057 > v6;
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
    v10 = a2;
  }

  *(v3 + 2916) = v10;
  return (*(STACK[0xF18] + 8 * ((64889 * (v10 == -371865839)) ^ v2)))();
}

uint64_t sub_100304774@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  *(a1 + 4148) = a2;
  v5 = (((v2 ^ 0x766DCFF9) - 1986908153) ^ ((v2 ^ 0x69AAFD54) - 1772813652) ^ (3 * (v3 ^ 0xA61C) + (v2 ^ 0xF612F5BC) + 166527585)) - 557984426;
  v6 = ((a2 - 186118579) < 0xF4E80E45) ^ (v5 < 0xF4E80E45);
  v7 = a2 - 186118579 > v5;
  if (v6)
  {
    v7 = (a2 - 186118579) < 0xF4E80E45;
  }

  if (v7)
  {
    v8 = 371891407;
  }

  else
  {
    v8 = v4;
  }

  *(a1 + 4152) = v8;
  return (*(STACK[0xF18] + 8 * (((v8 != -371865839) | (2 * (v8 != -371865839))) ^ v3)))();
}

uint64_t sub_100304860@<X0>(uint64_t a1@<X8>)
{
  v3 = 0;
  v4 = v1 - 26083;
  v5 = *(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFCA475F48)) ^ 0xCA475F4BLL;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  v12 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v11;
  v13 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v12 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v12;
  STACK[0xBDF0] = 0;
  STACK[0xBDF8] = v2 - 0x10A99C80114D1487;
  v14 = 16777619 * ((-901292213 * v13 + 7) ^ (-901292213 * v13)) % 7;
  v15 = 16777619 * ((-901292213 * v13 + 6) ^ (-901292213 * v13)) % 6;
  v16 = 16777619 * ((-901292213 * v13 + 5) ^ (-901292213 * v13)) % 5;
  v17 = *(&STACK[0xBDF0] | v14);
  *(&STACK[0xBDF0] | v14) = STACK[0xBDF7];
  v18 = *(&STACK[0xBDF0] | v15);
  *(&STACK[0xBDF0] | v15) = STACK[0xBDF6];
  v19 = *(&STACK[0xBDF0] | v16);
  *(&STACK[0xBDF0] | v16) = STACK[0xBDF5];
  v20 = vdup_n_s32(-901292213 * v13);
  v21 = 16777619 * ((-901292213 * v13 + 3) ^ (-901292213 * v13)) % 3;
  v22.i32[0] = v20.i32[0];
  v22.i32[1] = -901292213 * v13 + 1;
  LOBYTE(STACK[0xBDF7]) = v17;
  v23 = veor_s8(vmul_s32(v22, v20), v20);
  LOBYTE(STACK[0xBDF6]) = v18;
  LOBYTE(STACK[0xBDF5]) = v19;
  v24 = STACK[0xBDF0];
  LOBYTE(STACK[0xBDF0]) = STACK[0xBDF4];
  LOBYTE(STACK[0xBDF4]) = v24;
  v25 = *(&STACK[0xBDF0] | v21);
  *(&STACK[0xBDF0] | v21) = STACK[0xBDF3];
  LOBYTE(STACK[0xBDF3]) = v25;
  v26 = STACK[0xBDF1];
  LOBYTE(STACK[0xBDF2]) = STACK[0xBDF0];
  LOWORD(STACK[0xBDF0]) = v26;
  STACK[0xBDF0] = vmla_s32(v23, STACK[0xBDF0], vdup_n_s32(0x1000193u));
  v27 = STACK[0xBDF8];
  v28 = (-901292213 * STACK[0xBDF8]) ^ v13;
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

  while (v3 != 384);
  v37 = 47;
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
  v42 = *(&STACK[0xBDF8] + v14);
  *(&STACK[0xBDF8] + v14) = STACK[0xBDFF];
  LOBYTE(STACK[0xBDFF]) = v42;
  v43 = *(&STACK[0xBDF8] + v15);
  *(&STACK[0xBDF8] + v15) = STACK[0xBDFE];
  LOBYTE(STACK[0xBDFE]) = v43;
  v44 = *(&STACK[0xBDF8] + v16);
  *(&STACK[0xBDF8] + v16) = STACK[0xBDFD];
  LOBYTE(STACK[0xBDFD]) = v44;
  v45 = STACK[0xBDF8];
  LOBYTE(STACK[0xBDF8]) = STACK[0xBDFC];
  LOBYTE(STACK[0xBDFC]) = v45;
  v46 = *(&STACK[0xBDF8] + v21);
  *(&STACK[0xBDF8] + v21) = STACK[0xBDFB];
  LOBYTE(STACK[0xBDFB]) = v46;
  v47 = STACK[0xBDF9];
  LOBYTE(STACK[0xBDFA]) = STACK[0xBDF8];
  LOWORD(STACK[0xBDF8]) = v47;
  STACK[0xBDF8] = vmla_s32(v23, STACK[0xBDF8], vdup_n_s32(0x1000193u));
  STACK[0x2478] = (STACK[0xBDF8] ^ STACK[0xBDF0]) + a1;
  return (*(STACK[0xF18] + 8 * v4))();
}

uint64_t sub_100304D48@<X0>(uint64_t a1@<X8>)
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
  STACK[0xBE70] = 0;
  STACK[0xBE78] = v2;
  v13 = 16777619 * ((1269228062 * v12 + 7) ^ (1269228062 * v12)) % 7;
  v14 = 16777619 * ((1269228062 * v12 + 6) ^ (1269228062 * v12)) % 6;
  v15 = 16777619 * ((1269228062 * v12 + 5) ^ (1269228062 * v12)) % 5;
  v16 = *(&STACK[0xBE70] | v13);
  *(&STACK[0xBE70] | v13) = STACK[0xBE77];
  v17 = *(&STACK[0xBE70] | v14);
  *(&STACK[0xBE70] | v14) = STACK[0xBE76];
  v18 = *(&STACK[0xBE70] | v15);
  *(&STACK[0xBE70] | v15) = STACK[0xBE75];
  v19 = 16777619 * ((1269228062 * v12 + 3) ^ (1269228062 * v12)) % 3;
  v20 = vdup_n_s32(1269228062 * v12);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = (1269228062 * v12) | 1;
  LOBYTE(STACK[0xBE77]) = v16;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  LOBYTE(STACK[0xBE76]) = v17;
  LOBYTE(STACK[0xBE75]) = v18;
  v23 = STACK[0xBE70];
  LOBYTE(STACK[0xBE70]) = STACK[0xBE74];
  LOBYTE(STACK[0xBE74]) = v23;
  v24 = *(&STACK[0xBE70] | v19);
  *(&STACK[0xBE70] | v19) = STACK[0xBE73];
  LOBYTE(STACK[0xBE73]) = v24;
  v25 = STACK[0xBE71];
  LOBYTE(STACK[0xBE72]) = STACK[0xBE70];
  LOWORD(STACK[0xBE70]) = v25;
  STACK[0xBE70] = vmla_s32(v22, STACK[0xBE70], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBE78];
  v27 = (1269228062 * STACK[0xBE78]) ^ v12;
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
  v48 = *(&STACK[0xBE78] + v13);
  *(&STACK[0xBE78] + v13) = STACK[0xBE7F];
  LOBYTE(STACK[0xBE7F]) = v48;
  v49 = *(&STACK[0xBE78] + v14);
  *(&STACK[0xBE78] + v14) = STACK[0xBE7E];
  LOBYTE(STACK[0xBE7E]) = v49;
  v50 = *(&STACK[0xBE78] + v15);
  *(&STACK[0xBE78] + v15) = STACK[0xBE7D];
  LOBYTE(STACK[0xBE7D]) = v50;
  v51 = STACK[0xBE78];
  LOBYTE(STACK[0xBE78]) = STACK[0xBE7C];
  LOBYTE(STACK[0xBE7C]) = v51;
  v52 = *(&STACK[0xBE78] + v19);
  *(&STACK[0xBE78] + v19) = STACK[0xBE7B];
  LOBYTE(STACK[0xBE7B]) = v52;
  v53 = STACK[0xBE79];
  LOBYTE(STACK[0xBE7A]) = STACK[0xBE78];
  LOWORD(STACK[0xBE78]) = v53;
  STACK[0xBE78] = vmla_s32(v22, STACK[0xBE78], vdup_n_s32(0x1000193u));
  *(a1 + 264) = STACK[0xBE78] ^ STACK[0xBE70];
  return (*(STACK[0xF18] + 8 * (v1 + 8797)))();
}

uint64_t sub_1003051DC()
{
  v1 = STACK[0xF10] - 30246;
  LODWORD(STACK[0x6C94]) = v0;
  v2 = STACK[0x3088];
  v3 = STACK[0x1B20];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v2;
  LODWORD(STACK[0x655C]) = v3;
  LODWORD(STACK[0x884C]) = -519575709;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1003052B4()
{
  v0 = STACK[0xF10] - 32153;
  STACK[0x7820] = STACK[0x1FE8] + 16;
  v1 = STACK[0xF18];
  STACK[0x6728] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (LODWORD(STACK[0x998]) ^ 0x5A84 ^ v0)))();
}

uint64_t sub_100305550()
{
  v0 = STACK[0xF10] ^ 0x38A;
  v1 = STACK[0xF10] - 33637;
  STACK[0x2C48] = &STACK[0x3704];
  return (*(STACK[0xF18] + 8 * (v0 ^ v1 ^ 0xAB0C)))(&STACK[0xC454]);
}

uint64_t sub_1003055C4()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))(STACK[0x7960]);
  return (*(v1 + 8 * (v0 - 15933)))(v2);
}

uint64_t sub_100305648@<X0>(unint64_t a1@<X8>)
{
  v5 = *(v4 + 112);
  v6 = STACK[0x7710];
  v7 = STACK[0x34A8];
  v8 = (v6 ^ 0xF3D659D8E81C9103) & (2 * (v6 & 0xFBC71DE2F29CA204)) ^ v6 & 0xFBC71DE2F29CA204;
  v9 = ((2 * (((v1 + 5072) + 0x2DE7AD9EC2D7146) ^ v6)) ^ 0xF232CE763D62E60ELL) & (((v1 + 5072) + 0x2DE7AD9EC2D7146) ^ v6) ^ (2 * (((v1 + 5072) + 0x2DE7AD9EC2D7146) ^ v6)) & 0xF919673B1EB17306;
  v10 = (921 * (v1 ^ 0x4BE6u)) ^ 0x909210902913692 ^ v9;
  v11 = (v9 ^ 0xF01046121C200000) & (4 * v8) ^ v8;
  v12 = ((4 * v10) ^ 0xE4659CEC7AC5CC1CLL) & v10 ^ (4 * v10) & 0xF919673B1EB17304;
  v13 = (v12 ^ 0xE00104281A814000) & (16 * v11) ^ v11;
  v14 = ((16 * (v12 ^ 0x1918631304303303)) ^ 0x919673B1EB173070) & (v12 ^ 0x1918631304303303) ^ (16 * (v12 ^ 0x1918631304303303)) & 0xF919673B1EB17300;
  v15 = (v14 ^ 0x911063310A113000) & (v13 << 8) ^ v13;
  v16 = (((v14 ^ 0x6809040A14A04307) << 8) ^ 0x19673B1EB1730700) & (v14 ^ 0x6809040A14A04307) ^ ((v14 ^ 0x6809040A14A04307) << 8) & 0xF919673B1EB17300;
  v17 = v15 ^ 0xF919673B1EB17307 ^ (v16 ^ 0x1901231A10310000) & (v15 << 16);
  v18 = STACK[0x7710] ^ (2 * ((v17 << 32) & 0x7919673B00000000 ^ v17 ^ ((v17 << 32) ^ 0x1EB1730700000000) & (((v16 ^ 0xE01844210E807007) << 16) & 0x7919673B00000000 ^ 0x1800610A00000000 ^ (((v16 ^ 0xE01844210E807007) << 16) ^ 0x673B1EB100000000) & (v16 ^ 0xE01844210E807007)))) ^ 0x6355D4E281F78AA4;
  v19 = LODWORD(STACK[0x945C]) ^ 0x3B0BD5F0;
  v20 = ((LODWORD(STACK[0x39EC]) ^ 0x7E9F225F) - 2124358239) ^ ((LODWORD(STACK[0x39EC]) ^ 0x83D5EA3D) + 2083132867) ^ ((LODWORD(STACK[0x39EC]) ^ 0x149F0F73) - 345968499);
  v21 = 1603510583 * ((~v3 & 0x2E088301338149E0 | v3 & 0xD1F77CFECC7EB618) ^ 0x11F994EDA45A7B4BLL);
  STACK[0x10EF8] = &STACK[0xF28] ^ 0x2366BA2A837E302ELL;
  STACK[0x10F08] = v7;
  LODWORD(STACK[0x10F14]) = v19 + v21;
  STACK[0x10EE8] = a1;
  STACK[0x10EF0] = v18 + v21;
  STACK[0x10ED8] = v5;
  LODWORD(STACK[0x10EE0]) = v21 + v20 + 1231550544;
  LODWORD(STACK[0x10F10]) = (v1 + 25398) ^ v21;
  v22 = STACK[0xF18];
  v23 = (*(STACK[0xF18] + 8 * (v1 ^ 0x8718)))(&STACK[0x10ED8]);
  return (*(v22 + 8 * ((26 * (LODWORD(STACK[0x10F00]) != v2)) ^ v1)))(v23);
}

uint64_t sub_100305A04()
{
  v2 = *(v0 + 16);
  LODWORD(STACK[0x10EE0]) = v1 + 155453101 * ((((&STACK[0x10000] + 3800) | 0x625DD49D) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x9DA22B60)) ^ 0x847BCF52) + 296753103;
  STACK[0x10ED8] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 16271)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (v1 - 17020)))(v4);
}

uint64_t sub_100305B74()
{
  v6 = 16 * (v1 - 973371144 + ((v5 + 194872005) & 0xF4627D3F));
  *(*(*v0 + 72 * v4 + 16) + v6) = *(v3 + 24);
  *(*(*v0 + 72 * v4 + 16) + v6 + 8) = *(v3 + 32);
  *(*(*v0 + 72 * v4 + 16) + v6 + 12) = *(v3 + 36);
  v7 = *(*(*v0 + 72 * v2 + 0x6A64C81497BD3928) + v6 + 12);
  v8 = 353670337 * ((((&STACK[0x10000] + 3800) | 0x3A8D80C) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xFC5727F0)) ^ 0xB7892031);
  LODWORD(STACK[0x10EDC]) = ((((v7 ^ (((v5 - 2049380657) & 0x7A26BD5B) + 1388017788)) - 1388025303) ^ ((v7 ^ 0xD24FCF53) + 766521517) ^ ((v7 ^ 0x69219D95) - 1763810709)) + 38076517) ^ v8;
  LODWORD(STACK[0x10ED8]) = v5 - v8 - 87471670;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * (v5 ^ 0xBA81)))(&STACK[0x10ED8]);
  return (*(v9 + 8 * ((LOBYTE(STACK[0x10EE0]) == 73) | (4 * (LOBYTE(STACK[0x10EE0]) == 73)) | v5)))(v10);
}

uint64_t sub_100305D2C()
{
  v0 = STACK[0xF10];
  v1 = (STACK[0xF10] + 786969504) & 0xD117E3AD;
  v2 = STACK[0x7E08];
  v3 = STACK[0xF48];
  *(v3 + 24) = *(STACK[0x7E08] + 64);
  *(v3 + 8) = *(v2 + 96);
  v4 = v0 - 31523;
  v5 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v4);
  return (*(v5 + 8 * ((v1 ^ 0xA108) + v4)))();
}

uint64_t sub_100305DA8()
{
  v1 = STACK[0xF18];
  STACK[0x2278] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x7AE4 ^ (v0 + 21365))))();
}

uint64_t sub_100305DD8()
{
  v2 = *(v1 + 8);
  STACK[0x3DE0] = v1 + 8;
  STACK[0x10EE0] = v2;
  LODWORD(STACK[0x10ED8]) = (v0 + 703924004) ^ (634647737 * ((((&STACK[0x10000] + 3800) | 0x38BAFB13) + (~(&STACK[0x10000] + 3800) | 0xC74504EC)) ^ 0x552CD4EE));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0xC3EB)))(&STACK[0x10ED8]);
  STACK[0x23F0] = *(v3 + 8 * v0);
  return (*(v3 + 8 * (v0 - 13606 + ((v0 + 7575) | 0x4000))))(v4);
}

uint64_t sub_100305EA4()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 31951;
  LODWORD(STACK[0x10ED8]) = (STACK[0xF10] - 2608) ^ (1603510583 * ((((2 * (&STACK[0x10000] + 3800)) | 0xD5067A98) - (&STACK[0x10000] + 3800) - 1786985804) ^ 0xFD580FE7));
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x406A)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * (v1 ^ 0x1113)))(v3);
}

uint64_t sub_100305F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *STACK[0xEC0];
  v6 = *(STACK[0xEC0] + 1584) ^ ((v5 & 0x7FFFFFFE | *(STACK[0xEC0] + 2492) & 0x80000000) >> 1);
  *(STACK[0xEC0] + 2492) = (v6 - (((v3 - 1400392019) & 0x53789B7F ^ 0xECC0F893) & (2 * v6)) + v4) ^ *(a3 + 4 * (v5 & (v3 ^ 0x390Fu)));
  return (*(STACK[0xF18] + 8 * ((49 * (LODWORD(STACK[0x507C]) > 0x26F)) | v3)))();
}

uint64_t sub_10030609C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x8624]) = a1;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * (v1 - 32539));
  return (*(v2 + 8 * (v1 ^ 0x925 ^ (v1 - 32539) ^ 0x9AEF)))();
}

uint64_t sub_100306134()
{
  STACK[0x5EB0] = STACK[0xD18];
  STACK[0x2650] = v0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1003061C8()
{
  v1 = STACK[0x8FD8];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393384;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100306238()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 34288;
  v2 = STACK[0x41D8];
  v3 = 1012831759 * ((2 * ((&STACK[0x10000] + 3800) & 0x6C75CE40) - (&STACK[0x10000] + 3800) + 327823802) ^ 0x3192730);
  STACK[0x10ED8] = STACK[0x1960];
  STACK[0x10EE0] = v2;
  LODWORD(STACK[0x10EEC]) = v3 + 1408121346;
  LODWORD(STACK[0x10EE8]) = v3 + v0 - 1455;
  v4 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0x4620)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x9714]) = STACK[0x10EF0];
  v5 = STACK[0x4608] - 0x20DE4F5147E7312CLL;
  STACK[0x98B0] = *(v4 + 8 * v1);
  return (*(v4 + 8 * ((v0 ^ 0x9F1E) + v1)))(v5);
}

uint64_t sub_100306330()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xA5C6)))(v0 ^ (v1 + 11691) ^ (v1 - 371922246));
  STACK[0xAF48] = v3;
  return (*(v2 + 8 * ((39 * (v3 == 0)) ^ v1)))();
}

uint64_t sub_100306394()
{
  v1 = STACK[0x45C4];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393336;
  return (*(STACK[0xF18] + 8 * (v0 - 752)))();
}

uint64_t sub_100306428(_BYTE *a1)
{
  v2 = v1 - 26446;
  STACK[0xA1F0] = a1;
  *a1 = ((v2 + 43) ^ 0xB2) + LOBYTE(STACK[0x1E47]);
  STACK[0x10EE0] = &STACK[0x9168];
  LODWORD(STACK[0x10ED8]) = v2 - 297845113 * ((~(&STACK[0x10000] + 3800) & 0x14405A16 | (&STACK[0x10000] + 3800) & 0xEBBFA5E8) ^ 0x63734688) + 34036;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 + 50369)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (v2 ^ 0x1BFF)))(v4);
}

uint64_t sub_100306570()
{
  LODWORD(STACK[0x6A48]) = v0;
  v2 = STACK[0x5C70];
  v3 = STACK[0xF18];
  STACK[0x5E70] = *(STACK[0xF18] + 8 * v1);
  return (*(v3 + 8 * (v1 ^ 0x2123 ^ (20833 * ((v1 ^ 0x91CFA6A3) < ((v1 + 858645259) & 0xCCD26B5F ^ 0x664BF9BE))))))(v2);
}

uint64_t sub_1003065F4()
{
  STACK[0xED0] = v1;
  v2 = STACK[0xF18];
  v3 = *(v2 + 8 * ((((*(STACK[0xF18] + 8 * (v0 + 13681)))(24) == 0) * ((((v0 - 2046351160) & 0x79F87B76) + 21025) ^ (v0 + 116651732) & 0xF90BFF3F)) ^ v0));
  return v3();
}

uint64_t sub_100306678@<X0>(uint64_t a1@<X8>)
{
  STACK[0x3320] = STACK[0x7210] + 8;
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * ((((a1 - 131) | 0x6378) - 21520) ^ a1)))();
}

uint64_t sub_10030677C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x7548] = a8;
  STACK[0x77B0] = &STACK[0x8180];
  LODWORD(STACK[0x648C]) = 1600388287;
  return (*(STACK[0xF18] + 8 * (v8 + 1167)))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_100306890()
{
  v2 = STACK[0x9108];
  v3 = STACK[0xF10];
  LODWORD(STACK[0x10ED8]) = STACK[0xF10] + 139493411 * (&STACK[0x10ED8] ^ 0xC2DE145) - 24345;
  STACK[0x10EE0] = v2;
  v4 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 ^ 0x408D)))(&STACK[0x10ED8]);
  STACK[0x10EE0] = STACK[0x8590];
  LODWORD(STACK[0x10ED8]) = v3 - 906386353 * ((((2 * &STACK[0x10ED8]) | 0x42D300A8) - &STACK[0x10ED8] - 560562260) ^ 0x10684D70) - 21317;
  (*(v4 + 8 * (v1 ^ 0x408B)))(&STACK[0x10ED8]);
  v5 = STACK[0x6120];
  STACK[0x10ED8] = STACK[0x6120];
  LODWORD(STACK[0x10EE0]) = (297845113 * (((&STACK[0x10ED8] | 0xF3298203) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0xCD67DF8)) ^ 0x841A9E9D)) ^ (v3 - 2526);
  v6 = (*(v4 + 8 * (v0 ^ 0xC26F)))(&STACK[0x10ED8]);
  *(v5 + 16) = -371865839;
  *(v2 + 40) = STACK[0xB920];
  STACK[0x5050] = *(v4 + 8 * v0);
  return (*(v4 + 8 * ((4201 * ((v0 ^ 0x1F50CECAu) < ((v0 + 45308) ^ 0xF883E0DA))) | v0 ^ 0x4E93)))(v6);
}

uint64_t sub_100306A80(uint64_t a1, uint64_t a2)
{
  STACK[0x3F98] = 0;
  STACK[0x2BD8] = 0;
  return (*(STACK[0xF18] + 8 * (((v3 == ((v2 + 15132) | 0x830) - 371901483) * ((v2 ^ 0x439B) + 57746)) ^ v2)))(a1, a2, 371891535);
}

uint64_t sub_100306ADC@<X0>(int a1@<W8>)
{
  STACK[0x4B48] = 0;
  STACK[0x37F8] = 0;
  return (*(STACK[0xF18] + 8 * ((17247 * (*(*STACK[0x938] + 640 * ((((a1 - 2958) | 0x823Bu) ^ 0x1FFFFFFB7D237D5) + v1 + ((v1 < ((a1 + 1849746027) & 0x91BF7F3F) + 1210895577) << 32)) + 136) == 1445028844)) ^ a1)))();
}

uint64_t sub_100306B78()
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
  STACK[0xBEA0] = 0;
  STACK[0xBEA8] = v0;
  v12 = 16777619 * ((553300517 * v11 + 7) ^ (553300517 * v11)) % 7;
  v13 = 16777619 * ((553300517 * v11 + 6) ^ (553300517 * v11)) % 6;
  v14 = 16777619 * ((553300517 * v11 + 5) ^ (553300517 * v11)) % 5;
  v15 = *(&STACK[0xBEA0] | v12);
  *(&STACK[0xBEA0] | v12) = STACK[0xBEA7];
  v16 = *(&STACK[0xBEA0] | v13);
  *(&STACK[0xBEA0] | v13) = STACK[0xBEA6];
  v17 = *(&STACK[0xBEA0] | v14);
  *(&STACK[0xBEA0] | v14) = STACK[0xBEA5];
  v18 = vdup_n_s32(553300517 * v11);
  v19 = 16777619 * ((553300517 * v11 + 3) ^ (553300517 * v11)) % 3;
  v20.i32[0] = v18.i32[0];
  v20.i32[1] = 553300517 * v11 + 1;
  LOBYTE(STACK[0xBEA7]) = v15;
  v21 = veor_s8(vmul_s32(v20, v18), v18);
  LOBYTE(STACK[0xBEA6]) = v16;
  LOBYTE(STACK[0xBEA5]) = v17;
  v22 = STACK[0xBEA0];
  LOBYTE(STACK[0xBEA0]) = STACK[0xBEA4];
  LOBYTE(STACK[0xBEA4]) = v22;
  v23 = *(&STACK[0xBEA0] | v19);
  *(&STACK[0xBEA0] | v19) = STACK[0xBEA3];
  LOBYTE(STACK[0xBEA3]) = v23;
  v24 = STACK[0xBEA1];
  LOBYTE(STACK[0xBEA2]) = STACK[0xBEA0];
  LOWORD(STACK[0xBEA0]) = v24;
  STACK[0xBEA0] = vmla_s32(v21, STACK[0xBEA0], vdup_n_s32(0x1000193u));
  v25 = STACK[0xBEA8];
  v26 = (553300517 * STACK[0xBEA8]) ^ v11;
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
    v55.val[1] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7690), veorq_s8(v27, vmulq_s32(vaddq_s32(v30, v27), vsubq_s32(v30, v27))));
    v55.val[0] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC76A0), veorq_s8(v27, vmulq_s32(vaddq_s32(v31, v27), vsubq_s32(v31, v27))));
    v55.val[2] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7680), veorq_s8(v27, vmulq_s32(vaddq_s32(v29, v27), vsubq_s32(v29, v27))));
    v55.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7670), v27), vmulq_s32(vaddq_s32(v28, v27), vsubq_s32(v28, v27)));
    *(v25 + v2) = vmulq_s8(vqtbl4q_s8(v55, xmmword_100BC7660), v33);
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
  do
  {
    v32.i64[0] = *(v40 + v36);
    v54.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v32, xmmword_100BC7690), v38), vmulq_s32(vaddq_s32(v37, v38), vsubq_s32(v37, v38)));
    v54.val[0] = veorq_s8(vqtbl1q_s8(v32, xmmword_100BC76A0), veorq_s8(v38, vmulq_s32(vaddq_s32(v39, v38), vsubq_s32(v39, v38))));
    v32 = vqtbl2q_s8(v54, xmmword_100F52AD0);
    *(v40 + v36) = vmul_s8(*v32.i8, 0x9393939393939393);
    v39 = vaddq_s32(v39, v41);
    v37 = vaddq_s32(v37, v41);
    v36 += 8;
  }

  while (v36 != 8);
  v42 = 72;
  do
  {
    v43 = 16777619 * ((v26 + v42) ^ v26) % v42;
    v44 = *(v25 + 8 * v43) ^ *(v25 + 8 * v42);
    *(v25 + 8 * v42) = v44;
    v45 = *(v25 + 8 * v43) ^ v44;
    *(v25 + 8 * v43) = v45;
    *(v25 + 8 * v42) ^= v45;
    v46 = v42-- + 1;
  }

  while (v46 > 2);
  v47 = *(&STACK[0xBEA8] + v12);
  *(&STACK[0xBEA8] + v12) = STACK[0xBEAF];
  LOBYTE(STACK[0xBEAF]) = v47;
  v48 = *(&STACK[0xBEA8] + v13);
  *(&STACK[0xBEA8] + v13) = STACK[0xBEAE];
  LOBYTE(STACK[0xBEAE]) = v48;
  v49 = *(&STACK[0xBEA8] + v14);
  *(&STACK[0xBEA8] + v14) = STACK[0xBEAD];
  LOBYTE(STACK[0xBEAD]) = v49;
  v50 = STACK[0xBEA8];
  LOBYTE(STACK[0xBEA8]) = STACK[0xBEAC];
  LOBYTE(STACK[0xBEAC]) = v50;
  v51 = *(&STACK[0xBEA8] + v19);
  *(&STACK[0xBEA8] + v19) = STACK[0xBEAB];
  LOBYTE(STACK[0xBEAB]) = v51;
  v52 = STACK[0xBEA9];
  LOBYTE(STACK[0xBEAA]) = STACK[0xBEA8];
  LOWORD(STACK[0xBEA8]) = v52;
  STACK[0xBEA8] = vmla_s32(v21, STACK[0xBEA8], vdup_n_s32(0x1000193u));
  *STACK[0x940] = STACK[0xBEA8] ^ STACK[0xBEA0];
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100307024()
{
  v1 = v0 - 38460;
  v2 = STACK[0xF18];
  STACK[0x9880] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x4219 ^ (v1 + 20576))))();
}

uint64_t sub_100307070@<X0>(int a1@<W8>)
{
  v1 = a1 + 5716;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 + 51554)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1003070A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  STACK[0x7468] = v5;
  LOBYTE(STACK[0x5BAB]) = 0;
  STACK[0x2280] = *(v5 + 16);
  return (*(STACK[0xF18] + 8 * a5))();
}

uint64_t sub_1003071CC(uint64_t a1, uint64_t a2)
{
  v2 = (MEMORY[0x40] ^ 0xDA8DC654) & (2 * (MEMORY[0x40] & 0xDAAD1411)) ^ MEMORY[0x40] & 0xDAAD1411;
  v3 = ((2 * (MEMORY[0x40] ^ 0x4F97EE56)) ^ 0x2A75F48E) & (MEMORY[0x40] ^ 0x4F97EE56) ^ (2 * (MEMORY[0x40] ^ 0x4F97EE56)) & 0x953AFA46;
  v4 = v3 ^ 0x950A0A41;
  v5 = (v3 ^ 0x30F004) & (4 * v2) ^ v2;
  v6 = ((4 * v4) ^ 0x54EBE91C) & v4 ^ (4 * v4) & 0x953AFA44;
  v7 = (v6 ^ 0x142AE800) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0x81101243)) ^ 0x53AFA470) & (v6 ^ 0x81101243) ^ (16 * (v6 ^ 0x81101243)) & 0x953AFA40;
  v9 = v7 ^ 0x953AFA47 ^ (v8 ^ 0x112AA000) & (v7 << 8);
  return (*(STACK[0xF18] + 8 * ((7662 * (STACK[0xF10] + 1992066053 > 0x20857474)) ^ (STACK[0xF10] - 34986))))(a1, a2, MEMORY[0x40] ^ (2 * ((v9 << 16) & 0x153A0000 ^ v9 ^ ((v9 << 16) ^ 0x7A470000) & (((v8 ^ 0x84105A07) << 8) & 0x153A0000 ^ 0x5000000 ^ (((v8 ^ 0x84105A07) << 8) ^ 0x3AFA0000) & (v8 ^ 0x84105A07)))) ^ 0x9A6C9E85);
}

uint64_t sub_1003073CC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x5794]) = a1;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * (v1 - 32556));
  return (*(v2 + 8 * (((v1 - 2333) ^ 0x8ADC) + v1 - 32556)))();
}

uint64_t sub_100307648()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 8239)))(LODWORD(STACK[0x662C]) ^ 0xE9D5C711);
  STACK[0x5788] = v2;
  return (*(v1 + 8 * ((169 * (((((v0 ^ 0xA86A) + 25757) ^ (v2 == 0)) & 1) == 0)) ^ v0)))();
}

uint64_t sub_1003076F0()
{
  v2 = STACK[0xF10] ^ 0xDA3A;
  v3 = *v0;
  *(v1 + 608) = *v0 - ((2 * *v0) & 0x2C) + 22;
  *(v1 + 609) = (v2 + 21) ^ BYTE1(v3);
  *(v1 + 610) = BYTE2(v3) ^ 0x16;
  *(v1 + 611) = HIBYTE(v3) ^ 0x16;
  v4 = *(v1 + 580);
  *(v1 + 612) = v4 - ((2 * v4) & 0x2C) + 22;
  *(v1 + 613) = BYTE1(v4) ^ 0x16;
  *(v1 + 614) = BYTE2(v4) ^ 0x16;
  *(v1 + 615) = HIBYTE(v4) ^ 0x16;
  v5 = *(v1 + 584);
  *(v1 + 616) = v5 - ((2 * v5) & 0x2C) + 22;
  *(v1 + 617) = BYTE1(v5) ^ 0x16;
  *(v1 + 618) = BYTE2(v5) ^ 0x16;
  *(v1 + 619) = HIBYTE(v5) ^ 0x16;
  v6 = *(v1 + 588);
  *(v1 + 620) = v6 - ((2 * v6) & 0x2C) + 22;
  *(v1 + 621) = BYTE1(v6) ^ 0x16;
  *(v1 + 622) = BYTE2(v6) ^ 0x16;
  *(v1 + 623) = HIBYTE(v6) ^ 0x16;
  v7 = *(v1 + 592);
  *(v1 + 624) = v7 - ((2 * v7) & 0x2C) + 22;
  *(v1 + 625) = BYTE1(v7) ^ 0x16;
  *(v1 + 626) = BYTE2(v7) ^ 0x16;
  *(v1 + 627) = HIBYTE(v7) ^ 0x16;
  v8 = *(v1 + 596);
  *(v1 + 628) = v8 - ((2 * v8) & 0x2C) + 22;
  *(v1 + 629) = BYTE1(v8) ^ 0x16;
  *(v1 + 630) = BYTE2(v8) ^ 0x16;
  *(v1 + 631) = HIBYTE(v8) ^ 0x16;
  v9 = *(v1 + 600);
  *(v1 + 632) = v9 - ((2 * v9) & 0x2C) + 22;
  *(v1 + 633) = BYTE1(v9) ^ 0x16;
  *(v1 + 634) = BYTE2(v9) ^ 0x16;
  *(v1 + 635) = HIBYTE(v9) ^ 0x16;
  v10 = *(v1 + 604);
  *(v1 + 636) = v10 - ((2 * v10) & 0x2C) + 22;
  *(v1 + 637) = BYTE1(v10) ^ 0x16;
  *(v1 + 638) = BYTE2(v10) ^ 0x16;
  *(v1 + 639) = HIBYTE(v10) ^ 0x16;
  v11 = (STACK[0x998] + LODWORD(STACK[0xAA8]));
  *v11 = *(v1 + 608);
  v11[1] = *(v1 + 609);
  v11[2] = *(v1 + 610);
  v11[3] = *(v1 + 611);
  v11[4] = *(v1 + 612);
  v11[5] = *(v1 + 613);
  v11[6] = *(v1 + 614);
  v11[7] = *(v1 + 615);
  v11[8] = *(v1 + 616);
  v11[9] = *(v1 + 617);
  v11[10] = *(v1 + 618);
  v11[11] = *(v1 + 619);
  v11[12] = *(v1 + 620);
  v11[13] = *(v1 + 621);
  v11[14] = *(v1 + 622);
  v11[15] = *(v1 + 623);
  v11[16] = *(v1 + 624);
  v11[17] = *(v1 + 625);
  v11[18] = *(v1 + 626);
  v11[19] = *(v1 + 627);
  v11[20] = *(v1 + 628);
  v11[21] = *(v1 + 629);
  v11[22] = *(v1 + 630);
  v11[23] = *(v1 + 631);
  v11[24] = *(v1 + 632);
  v11[25] = *(v1 + 633);
  v11[26] = *(v1 + 634);
  v11[27] = *(v1 + 635);
  v11[28] = *(v1 + 636);
  v11[29] = *(v1 + 637);
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1003079C0()
{
  v1 = STACK[0xF18];
  STACK[0x6580] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 14001)))();
}

uint64_t sub_100307A8C()
{
  v1 = STACK[0xF18];
  STACK[0x4CD0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0xB481 ^ (v0 + 301585336) & 0xEE06BFEF)))();
}

uint64_t sub_100307B04@<X0>(unsigned int a1@<W8>)
{
  *(v5 + 1816) = v4;
  v6 = v1 - 1156841652 > ((v2 - 208914001) & 0xC73FBFF ^ 0xC3AC1FD0) + a1;
  if (a1 > 0x3C538B85 != (v1 - 1156841652) < 0xC3AC747A)
  {
    v6 = (v1 - 1156841652) < 0xC3AC747A;
  }

  if (v6)
  {
    v3 = 371891407;
  }

  v7 = STACK[0x2978] + 394 * (v2 ^ 0x35F9u) + v1 - 144734290;
  if (v3 == -371865839)
  {
    v1 += 16;
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 1824) = v8;
  *(v5 + 1832) = v1 + 4;
  v9 = v1 - 1701093293 > a1 - 1556359795;
  if (a1 > 0x5CC42A72 != (v1 - 1701093293) < 0xA33BD58D)
  {
    v9 = (v1 - 1701093293) < 0xA33BD58D;
  }

  if (v9)
  {
    v3 = 371891407;
  }

  *(v5 + 1836) = v3;
  return (*(STACK[0xF18] + 8 * ((62078 * (v3 == -371865839)) ^ v2)))();
}

uint64_t sub_100307C48(uint64_t a1, uint64_t a2)
{
  STACK[0x95A0] = STACK[0x9228] + 49;
  LOWORD(STACK[0x79DE]) = 7085;
  LODWORD(STACK[0x16B4]) = -1643833804;
  return (*(STACK[0xF18] + 8 * (v2 + 5831)))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_100307CA0@<X0>(int a1@<W8>)
{
  v2 = a1 - 32659;
  *(v1 + 8) &= (v2 + 1073729364) & 0xEFED9BCF ^ 0x90126DB9;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_100307CE8()
{
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((((2 * (&STACK[0x10000] + 3800)) | 0x1B4F963E) - (&STACK[0x10000] + 3800) + 1918383329) ^ 0x6B81D0D0) + 296753103;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16271)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 - 8065)))(v2);
}

uint64_t sub_100307D78()
{
  v1 = STACK[0xF18];
  STACK[0x9AD0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 13412)))();
}

uint64_t sub_1003080D4@<X0>(unsigned int a1@<W8>)
{
  *STACK[0x1468] = 0;
  *STACK[0x4600] = 0;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1003080F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v4 = (v3 ^ 0x67F77DFBDABFBBDDLL) - 0x66C000E24A111008 + (((a3 + 23300) + 0x1B57EEC7FLL) & (2 * v3));
  STACK[0xA6B0] = v4;
  v5 = STACK[0x2840];
  STACK[0xA6B8] = STACK[0x2840];
  return (*(STACK[0xF18] + 8 * (((v4 - v5 + 0x17601CAE248F4F3CLL < 0xFFFFFFFFFFFFFFF6) * ((a3 - 1522767100) & 0x5AC3EFFF ^ 0xF335)) ^ a3)))(a1, a2, 371891407);
}

uint64_t sub_1003081AC()
{
  LODWORD(STACK[0x10ED8]) = (v0 + 23419) ^ (1603510583 * ((((&STACK[0x10000] + 3800) | 0x873652EF) - ((&STACK[0x10000] + 3800) & 0x873652E8)) ^ 0x10ED6044));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xEEC1u)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (((LODWORD(STACK[0x10EDC]) == LODWORD(STACK[0x2350])) * (v0 - 9580)) ^ v0)))(v2);
}

uint64_t sub_100308250()
{
  v3 = v1 + 640 * v2;
  STACK[0x63C8] = v3 + 144;
  STACK[0x1C38] = v3 + 560;
  STACK[0x1F50] = v3 + 576;
  STACK[0x8220] = v3 + 592;
  STACK[0x2B78] = v3 + 556;
  v4 = STACK[0x7690];
  v5 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x3808] = (v5 + 228);
  STACK[0x7690] = v4 + 1616;
  LODWORD(STACK[0x5BF0]) = -371865711;
  v6 = STACK[0xF18];
  STACK[0x3978] = *(STACK[0xF18] + 8 * (v0 - 5616));
  STACK[0x9010] = v5;
  STACK[0x44C0] = v5;
  STACK[0x3E70] = (v5 + 248);
  return (*(v6 + 8 * ((29921 * (v0 - 490985579 <= ((v0 + 15618) | 0xD14u) - 1806800166)) ^ (v0 + 2324))))();
}

uint64_t sub_1003083B0@<X0>(int a1@<W8>)
{
  STACK[0x8680] = v1;
  LODWORD(STACK[0x17B4]) = STACK[0x2EDC];
  LODWORD(STACK[0xAE3C]) = -371865839;
  v2 = STACK[0x4FE0];
  STACK[0xAE40] = STACK[0x4FE0];
  return (*(STACK[0xF18] + 8 * (((((a1 + 64) ^ (v2 == 0)) & 1) * ((a1 - 10229) ^ 0x96CB)) ^ a1)))();
}

uint64_t sub_100308418()
{
  LODWORD(STACK[0x4D40]) = 371891400;
  STACK[0x7690] = (v0 + 31558) + STACK[0x7690] - 36155;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1003085B8()
{
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((((&STACK[0x10000] + 3800) | 0xC0737F7D) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x3F8C8080)) ^ 0x265564B2) + 296753103;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16271)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 - 1646)))(v2);
}

uint64_t sub_100308680()
{
  v2 = STACK[0xB5A8];
  *STACK[0xB5B0] |= v0 ^ 0x1001B65;
  *(v2 + 72) = v1;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1003086DC()
{
  v0 = LODWORD(STACK[0x498]) | 0x2A11;
  v1 = STACK[0xF18];
  STACK[0x6728] = *(STACK[0xF18] + 8 * SLODWORD(STACK[0x490]));
  return (*(v1 + 8 * (LODWORD(STACK[0x488]) ^ v0)))();
}

uint64_t sub_10030877C()
{
  v4 = 4 * (63 - v0);
  v5 = *(v1 + v4 - 12);
  v6 = *(v1 + v4 - 28);
  v7 = v3 + v4;
  *(v7 + 4) = v5;
  *(v7 - 12) = v6;
  return (*(STACK[0xF18] + 8 * (((v0 == 56) * ((v2 + 29881) ^ 0x5251)) ^ v2)))();
}

uint64_t sub_1003087D4(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v9 = vaddq_s8(vdupq_n_s8(v8 + v7), *&STACK[0xE80]);
  v10 = *(STACK[0xF18] + 8 * v6);
  LODWORD(STACK[0xE90]) = v6 ^ 0x5739;
  return v10(a1, a2, a3, a4, a5, a6, v9);
}

uint64_t sub_100308880()
{
  v2 = *(v1 + 8);
  STACK[0x18A8] = v1 + 8;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762631773) ^ (906386353 * ((~&STACK[0x10ED8] & 0x9EC33026 | &STACK[0x10ED8] & 0x613CCFD8) ^ 0xAFC2FD02));
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0xDD55)))(&STACK[0x10ED8]);
  STACK[0x1C48] = 0;
  LODWORD(STACK[0x2450]) = -371865839;
  STACK[0x10EE0] = *(v1 + 344);
  LODWORD(STACK[0x10ED8]) = v0 - 1012831759 * (((&STACK[0x10ED8] | 0xF1536156) - (&STACK[0x10ED8] | 0xEAC9EA9) + 246193833) ^ 0xE1C077DC) + 30888;
  STACK[0x10EF0] = &STACK[0x1C48];
  STACK[0x10EF8] = &STACK[0x2450];
  v4 = (*(v3 + 8 * (v0 ^ 0xDCBF)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (((LODWORD(STACK[0x10EE8]) == (v0 ^ 0x9CD7) - 371901482) * (((v0 - 1103566977) & 0x41C734FE) - 9354)) ^ v0)))(v4);
}

uint64_t sub_100308A24@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 24) = STACK[0xD18];
  v3 = STACK[0x9D0];
  *(v1 + 32) = *(STACK[0x9D0] + 80);
  *(v3 + 80) = v1;
  *(*(v1 + 32) + 24) = v1;
  *(a1 + 8) = (v2 ^ 0x79C4BC1D8A400D5ELL) - *(a1 + 8);
  return (*(STACK[0xF18] + 8 * (v2 ^ 0x5DD2)))();
}

uint64_t sub_100308A88()
{
  v0 = (2 * STACK[0xF10]) ^ 0x19468;
  v1 = STACK[0xF10] - 32634;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 25964) ^ v1)))();
}

uint64_t sub_100308AD8()
{
  v0 = STACK[0xF10] - 446;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(STACK[0x4908]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100308B70()
{
  v1 = STACK[0x9678];
  *(v1 + 8) = STACK[0x9658];
  *(v1 + 4) = STACK[0x1D4C];
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 + 3415)))();
}

uint64_t sub_100308D18()
{
  v2 = STACK[0xF18];
  STACK[0x1668] = *(STACK[0xF18] + 8 * v1);
  STACK[0x1800] = v0;
  *v0 = 0;
  return (*(v2 + 8 * (v1 ^ 0x533C ^ ((*(v0 + 552) != 0) * ((v1 + 24306) ^ 0x5F50)))))();
}

uint64_t sub_100308E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v17 = v12 + v14 < (v7 + v15);
  if (v12 + v14 < v13 != v7 + v15 < ((a7 + v9) & v10) + v16)
  {
    v17 = v7 + v15 < ((a7 + v9) & v10) + v16;
  }

  return (*(STACK[0xF18] + 8 * ((v17 * (((a7 - 363) | v11) + v8)) ^ a7)))();
}

uint64_t sub_100308F64()
{
  v1 = STACK[0xF18];
  STACK[0x1500] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 15865) ^ 0x5C98) + v0)))();
}

uint64_t sub_100309194(uint64_t a1)
{
  v2 = *(*(a1 + 8 * (v1 - 20295)) - 2040409131);
  v3 = *(v2 + 4);
  LODWORD(STACK[0xC3F0]) = *v2;
  v4 = *(STACK[0xF18] + 8 * v1);
  LODWORD(STACK[0xC3F4]) = v3;
  LOBYTE(STACK[0xC3F8]) = *(v2 + 8);
  return v4(34620, 10000, 12654, 22507);
}

uint64_t sub_100309288@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  if ((a2 ^ 0xCB73BB7F) + ((2 * a2) & 0x96E630D8) == -881607809)
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891401;
  }

  *(result + 28) = v2;
  return result;
}

uint64_t sub_1003092FC@<X0>(int a1@<W3>, uint64_t a2@<X4>, int a3@<W5>, uint64_t a4@<X8>)
{
  v8 = v5 + a2 + (v6 + a1);
  *(v4 + v8) = *(a4 + v8);
  return (*(v7 + 8 * (((v8 == 0) * a3) ^ v6)))();
}

uint64_t sub_100309328(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v8 = *(STACK[0xF18] + 8 * ((253 * (((v5 == v6) ^ (v7 - 34)) & 1)) ^ v7));
  STACK[0xEB0] = v6;
  return v8(STACK[0xCF0], a1, a2, a3, a4, a5, *&STACK[0xE40], *&STACK[0xE30], *&STACK[0xE20]);
}

uint64_t sub_100309510(uint64_t a1, uint64_t a2)
{
  LODWORD(STACK[0x8C3C]) = -371865839;
  STACK[0x6810] = 0;
  LODWORD(STACK[0x4E6C]) = -371865839;
  STACK[0x4FA0] = 0;
  LODWORD(STACK[0x5D24]) = -371865839;
  STACK[0x15A8] = 0;
  LODWORD(STACK[0x2D70]) = -371865839;
  return (*(STACK[0xF18] + 8 * (((((v2 + 2138427427) & 0x8089EDFF) + ((v2 + 960402755) & 0xC6C1AF7F) - 36063) * (v3 == -371865840)) ^ (v2 - 6505))))(a1, a2, 371891535);
}

uint64_t sub_1003095C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = v19 + v9;
  v21 = v19 == 1;
  v22 = (v11 + v19 - 1);
  v23 = v19 + v9 + 9;
  v24 = (__ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8) + a3) & 0xF9FFFFFFFFFFFFFFLL;
  v25 = v24 ^ 0x12219E3FC273472;
  v24 ^= 0xB5A94E2F7B1B987CLL;
  v26 = __ROR8__(v25, 8);
  v27 = (((v26 + v24) ^ 0x174CADB1648C3A67 | 0x380278A0DE13B815) - ((v26 + v24) ^ 0x174CADB1648C3A67 | a4) + a4) ^ 0x3BF4D25B9507ED97;
  v28 = v27 ^ __ROR8__(v24, 61);
  v29 = 1864610357 * ((*(*v13 + (*v10 & 0x72D7ACF8)) ^ v22) & 0x7FFFFFFF);
  v30 = (__ROR8__(v27, 8) + v28) ^ 0x2C378843F9A46E98;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0xBD7D2DE9C10AA16ALL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (v29 ^ HIWORD(v29)) * v12;
  v36 = (v34 + v33 - (a6 & (2 * (v34 + v33))) + a7) ^ a8;
  v37 = v36 ^ __ROR8__(v33, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0xAA9DDABAE2E4D47CLL;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (v40 + v39 - (v15 & (2 * (v40 + v39))) + v16) ^ v17;
  *(v20 + 9) = *(a1 + (v35 >> 24)) ^ *v22 ^ *(a2 + (v35 >> 24)) ^ *(v14 + (v35 >> 24)) ^ v35 ^ (-111 * BYTE3(v35)) ^ (((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v39, 61))) ^ a5) >> (8 * (v23 & 7u)));
  v42 = !v21;
  return (*(STACK[0xF18] + 8 * ((v42 * v18) | v8)))();
}

uint64_t sub_1003097A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x8170] = v9 + 1232;
  STACK[0x7548] = a8;
  STACK[0x77B0] = ((2 * &STACK[0x5628]) & 0x9FEB77FADFE359F0) + (&STACK[0x5628] ^ 0x4FF5BBFD6FF1ACFDLL) + (((v8 - 6564) | 0x8B19u) ^ 0xB00A4402900ED838);
  LODWORD(STACK[0x648C]) = 305186560;
  return (*(STACK[0xF18] + 8 * v8))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_1003099E4()
{
  LODWORD(STACK[0xA858]) = STACK[0xA844];
  v2 = *(v1 + 8) - ((2 * *(v1 + 8)) & 0xB0) + 2062041944;
  v3 = ((*(v1 + 10) - ((2 * *(v1 + 10)) & 0x15E)) << 16) + 430899200;
  v4 = (v2 & 0x8017C9 ^ 0x3340B524 ^ ((((v0 + 6991) ^ 0xFFFF428A) + ((*(v1 + 9) - ((2 * *(v1 + 9)) & 0xD8)) << 8) - 1753774080) ^ 0x311D0436) & (v2 ^ 0x8517BCE7)) & (v3 ^ 0xE650FFFF);
  v5 = v3 & 0xA550000;
  v6 = ((*(v1 + 11) - ((2 * *(v1 + 11)) & 0x7A)) << 24) + 1023410176;
  v7 = (v5 ^ 0xD2B5E084 ^ v4) & (v6 ^ 0xC2FFFFFF);
  v8 = v6 & 0xB0000000;
  v9 = *(v1 + 84);
  v10 = STACK[0xA820];
  v11 = STACK[0x3238];
  v12 = 17902189 * ((((&STACK[0x10000] + 3800) | 0xA789AB8E) - ((&STACK[0x10000] + 3800) & 0xA789AB88)) ^ 0x29C6BD9E);
  LODWORD(STACK[0x10EE0]) = v12 + v0 - 28707;
  STACK[0x10EF0] = v11;
  STACK[0x10EE8] = v10;
  LODWORD(STACK[0x10EDC]) = (v9 - ((2 * v9) & 0x3571DCB6) - 1699156389) ^ v12;
  LODWORD(STACK[0x10ED8]) = (v8 ^ 0xBE836077 ^ v7) + v12;
  v13 = STACK[0xF18];
  v14 = (*(STACK[0xF18] + 8 * (v0 + 16908)))(&STACK[0x10ED8]);
  return (*(v13 + 8 * ((26316 * (LODWORD(STACK[0x10EE4]) == -371865839)) ^ (v0 + 6991))))(v14);
}

uint64_t sub_100309BCC()
{
  STACK[0x2A18] = v0;
  STACK[0x4378] = &STACK[0x2A18];
  LODWORD(STACK[0x8A84]) = 1132543758;
  return (*(STACK[0xF18] + 8 * ((v1 + 1704328077) ^ 0x65969E7A ^ (25552 * ((v1 + 1704328077) < 0xA07E617C)))))();
}

uint64_t sub_100309C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x7548] = a8;
  STACK[0x77B0] = &STACK[0x1410];
  LODWORD(STACK[0x648C]) = -2039599625;
  return (*(STACK[0xF18] + 8 * ((v8 - 1677976048) ^ 0x9BFC2ED4 ^ ((v8 != 2125597566) * ((v8 - 1677976048) ^ 0x9BFC3712)))))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_100309D04(uint64_t a1, uint64_t a2)
{
  *(a1 + 312) = *(a2 + 8);
  *(a1 + 320) = *(a2 + 4);
  return (*(v2 + 203888))();
}

uint64_t sub_100309D68@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  a4 = v7 - 353670337 * (&a3 ^ 0xB421F83D) - 9003;
  a3 = v6;
  a5 = a1;
  v8 = (*(v5 + 8 * (v7 ^ 0x9922)))(&a3);
  *(v6 + 4) = (((v7 + 749058248) | 0x12004260) ^ 0x43EAD310) - *(v6 + 4);
  return (*(v5 + 8 * v7))(v8);
}

uint64_t sub_100309DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  *STACK[0x2BC8] = 1;
  *STACK[0x5D48] = STACK[0x67F8];
  *STACK[0x58A0] = (a3 - 5195) ^ LODWORD(STACK[0x488C]) ^ 0xE9D5E240;
  return (*(STACK[0xF18] + 8 * a3))(a1, a2, 3923101457);
}

uint64_t sub_100309E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30, int a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, int a45)
{
  v48 = 634647737 * ((((v47 - 168) | 0xF378D487) - ((v47 - 168) & 0xF378D480)) ^ 0x9EEEFB7B);
  *(v47 - 168) = v48 - 1431125373;
  *(v47 - 152) = a45 - v48 + 20983;
  *(v46 + 8) = &STACK[0x340];
  v49 = (*(v45 + 8 * a29))(v47 - 168);
  return (*(v45 + 8 * ((25 * (a32 + ((7 * (a31 & 0x6FD4EE7F ^ 0x62B2) + (STACK[0x384] & 0x3F ^ 0x4E1CE8DC) - 498716137) ^ ((STACK[0x384] & 0x3F ^ 0x208E5533) - 1932253429) ^ ((STACK[0x384] & 0x3F ^ 0x6E92BDEFu) - 1027026985)) - 1559053521 > 0xFFFFFFBF)) ^ a30)))(v49);
}

uint64_t sub_10030A0E4(__n128 a1, __n128 a2, __n128 a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  v57 = v54 - 549277317;
  if ((v54 - 549277317) <= 0x40)
  {
    v57 = 64;
  }

  v58.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v58.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  v59.n128_u64[0] = 0xBEBEBEBEBEBEBEBELL;
  v59.n128_u64[1] = 0xBEBEBEBEBEBEBEBELL;
  v60.n128_u64[0] = 0x6060606060606060;
  v60.n128_u64[1] = 0x6060606060606060;
  return (*(v56 + 8 * ((55 * (v57 - v54 + 549277317 >= ((v55 - 1804240369) & 0x6B8A7F7B ^ 0x2335u))) ^ v55)))(2875842978, &STACK[0x340], 0, a50, a54, a10, a51, a53, a1, a2, a3, a4, v58, v59, v60);
}

uint64_t sub_10030A1DC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = *(STACK[0xF18] + 8 * ((a8 - 1338796565) ^ 0xB0346D9A ^ (31392 * ((a8 - 1338796565) > 0xB3B14754))));
  *&STACK[0xEB0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0xE90] = vdupq_n_s64(0x38uLL);
  *&STACK[0xED0] = vdupq_n_s64(0xD6916AF990E79581);
  *&STACK[0xE80] = vdupq_n_s64(0x296E95066F186A7EuLL);
  *&STACK[0xE70] = vdupq_n_s64(v8);
  *&STACK[0xE60] = vdupq_n_s64(v9);
  *&STACK[0xE40] = vdupq_n_s64(v10);
  *&STACK[0xE30] = vdupq_n_s64(v11);
  *&STACK[0xE20] = vdupq_n_s64(0x14BA074A2F986FE5uLL);
  *&STACK[0xE10] = vdupq_n_s64(0x2C378843F9A46E98uLL);
  *&STACK[0xE00] = vdupq_n_s64(v12);
  *&STACK[0xDF0] = vdupq_n_s64(a1);
  *&STACK[0xDE0] = vdupq_n_s64(a2);
  *&STACK[0xDD0] = vdupq_n_s64(0x82B08017BF43C069);
  *&STACK[0xDC0] = vdupq_n_s64(a3);
  *&STACK[0xDB0] = vdupq_n_s64(a4);
  *&STACK[0xDA0] = vdupq_n_s64(a5);
  *&STACK[0xD90] = vdupq_n_s64(v13);
  *&STACK[0xD80] = vdupq_n_s64(0x9B1C7427651E0F18);
  *&STACK[0xEA0] = xmmword_100BC76B0;
  return v14();
}

uint64_t sub_10030A5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x7388] = a8;
  STACK[0x1CE0] = &STACK[0x5610];
  LODWORD(STACK[0x3AF0]) = -694127923;
  return (*(STACK[0xF18] + 8 * v8))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10030A690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  (*(v49 + 8 * (v48 + 44158)))(v51);
  v53 = *(v49 + 8 * v48);
  *(v52 - 240) = v50;
  *(v52 - 236) = -371865839;
  return v53(a48);
}

uint64_t sub_10030A730@<X0>(int a1@<W1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  HIDWORD(a15) = 0;
  v21 = v19 & 0xFFFFFFF9 ^ 0x4DF7793FLL;
  *(v20 - 224) = v21;
  LODWORD(v246) = (v18 - 2085855936) & 0x7C5375ED;
  v262 = v246 ^ v19 & 0xFFFFFFF4 ^ 0x4DF71CF6;
  v22 = *(a13 + (*(v17 + v21) ^ 0xE9));
  v23 = *(a14 + ((v18 - 33) & 0xB7 ^ 0xD6u ^ *(v17 + v262)));
  v259 = v19 & 0xFFFFFFFD ^ 0x4DF7793BLL;
  v24 = v22 ^ (((2 * v22) ^ 0x38) + 100);
  v25 = v23 ^ (v23 >> 4) ^ (v23 >> 2);
  LOBYTE(v23) = *(a13 + (*(v17 + v259) ^ 0x3BLL));
  v261 = v19 & 0xFFFFFFF5 ^ 0x4DF7793BLL;
  LODWORD(v21) = ((((2 * v23) ^ 0x38) + 100) ^ v23);
  LOBYTE(v23) = *(a13 + (*(v17 + v261) ^ 0x19));
  v260 = v19 & 0xFFFFFFF8 ^ 0x4DF7793FLL;
  LOBYTE(v23) = (((v23 ^ 0x6D) - (v23 ^ 0x9C)) ^ 0xFE) + (v23 ^ 0x6D);
  v26 = *(a14 + (*(v17 + v260) ^ 0x4BLL));
  v251 = v19 & 0xFFFFFFFB ^ 0x4DF7793FLL;
  v252 = v19 & 0xFFFFFFF6 ^ 0x4DF7793BLL;
  v27 = v26 ^ 0xFFFFFFFC ^ (v26 >> 2) ^ (((v26 ^ 0xFC) >> 4) | 0x50);
  v256 = v19 & 0xFFFFFFFC ^ 0x4DF7793BLL;
  v28 = *(a14 + (*(v17 + v256) ^ 0x42));
  v29 = ((((((2 * v23 + 100) ^ v23) << 8) ^ 0x44A98710) & (v25 ^ 0x7DFDFF59) | v25 & 0xFFFFFFEF) ^ 0x1E45767) & (((*(a11 + (*(v17 + v252) ^ 0xADLL)) ^ *(v17 + v252)) << 16) ^ 0xFF94FFFF) ^ ((*(a11 + (*(v17 + v252) ^ 0xADLL)) ^ *(v17 + v252)) << 16) & 0xB20000;
  v257 = v19 & 0xFFFFFFF1 ^ 0x4DF7793FLL;
  LODWORD(v21) = ((v28 ^ 0xBB08FF82) & ((v21 << 8) ^ 0xBB08B887) | v28 & 0x78) ^ (v28 >> 4) ^ (v28 >> 2);
  v255 = v19 ^ 0x4DF7793BLL;
  v30 = (((2 * *(a13 + (*(v17 + v257) ^ 6))) ^ 0x38) + 100) ^ *(a13 + (*(v17 + v257) ^ 6));
  v248 = v19 & 0xFFFFFFFA ^ 0x4DF7793FLL;
  v253 = v19 & 0xFFFFFFF2 ^ 0x4DF7793FLL;
  HIDWORD(v32) = *(v17 + v253) ^ 0x526A0EB2;
  LODWORD(v32) = HIDWORD(v32);
  v31 = v32 >> 5;
  HIDWORD(v32) = v31 ^ 0x2935075;
  LODWORD(v32) = v31 ^ 0x90000000;
  v249 = v19 & 0xFFFFFFFE ^ 0x4DF7793BLL;
  v34 = (*(a11 + (*(v17 + v249) ^ 0x5ELL)) ^ *(v17 + v249)) << 16;
  v258 = v19 & 0xFFFFFFF0 ^ 0x4DF7793FLL;
  v35 = *(a14 + (*(*(v20 - 200) + v258) ^ 0x32));
  v250 = v19 & 0xFFFFFFF7 ^ 0x4DF7793BLL;
  v36 = v29 & 0xB1C09E78 ^ a1 ^ (((*(a12 + (*(*(v20 - 200) + v250) ^ 0xFCLL)) ^ *(*(v20 - 200) + v250)) << 24) ^ 0xEE3F6187) & (v29 ^ 0xBA9047F7);
  v247 = v19 & 0xFFFFFFF3 ^ 0x4DF7793FLL;
  v37 = *(*(v20 - 200) + v247);
  v38 = v34 & 0x3E0000 ^ v16 ^ (v34 ^ 0xFFBAFFFF) & (v21 & 0x30897DE ^ 0xE2BB77CB ^ (((*(a12 + (*(v17 + v255) ^ 0x98)) ^ *(v17 + v255)) << 24) ^ 0x6F726821) & (v21 ^ 0x447EDF74));
  v39 = (v37 ^ 0x3A ^ *(a12 + (v37 ^ 0x8E))) << 24;
  v40 = (((((((v32 >> 27) ^ *(a11 + ((v32 >> 27) ^ 0x65))) << 16) ^ 0x4D6EBBD3) & ((v30 << 8) ^ 0x6FFF99DF) ^ ((v30 << 8) & 0x4400 | 0x1AEAA9EE)) & (v35 ^ (v35 >> 4) ^ (v35 >> 2) ^ 0x7FFFFFF2) | (v35 ^ (v35 >> 4) ^ (v35 >> 2)) & 0xC2) ^ 0x57B61833) & (v39 ^ 0xEBFFFFFF);
  v41 = (v24 ^ 0xFD) << 8;
  v254 = *(v20 - 216) < 0x6DBCA504u;
  v42 = v41 & 0x200;
  if ((v41 & 0x200 & v15) != 0)
  {
    v42 = -v42;
  }

  v43 = (v27 ^ 0x534153DC) & (v41 & 0xFFFFFDFF ^ 0x7FD15FFF) | v41 & 0xAC00;
  v33 = (*(a11 + (*(v17 + v248) ^ 0x22)) ^ *(v17 + v248)) << 16;
  v44 = v43 & 0x40C5C6 ^ (v42 + (v15 ^ 0xDFBBBCA3)) ^ (((v33 ^ 0xFF0FFFFF) & (((*(a12 + (*(v17 + v251) ^ 0xB5)) ^ *(v17 + v251)) << 24) ^ 0x9D3C98B1) | v33 & 0xFFC3FFFF) ^ 0x3B56A288) & (v43 ^ 0xACBE690F);
  v45 = BYTE1(v44) ^ 0xB2;
  v46 = *(&off_1010A0B50 + (v18 ^ 0x9272)) - 1426575115;
  v47 = a2 ^ v39 ^ 0xB707E882 ^ v40;
  v48 = ((v44 ^ 0x1DC7B20E) >> 16) & 0x2A ^ 0xED91CC20 ^ (((v44 ^ 0x1DC7B20E) >> 16) | 0xED91CC2A);
  v49 = *(&off_1010A0B50 + (v18 ^ 0x82E1)) - 740478706;
  v50 = *(&off_1010A0B50 + v18 - 34668) - 1391409811;
  v51 = *(&off_1010A0B50 + v18 - 33988) - 288162475;
  v52 = v38 ^ 0xC91811A8;
  v53 = *&v51[4 * (v38 ^ 0xA8)];
  v54 = *&v49[4 * (BYTE2(v36) ^ 0x5B)] ^ *&v46[4 * ((v44 ^ 0x1DC7B20E) >> 24)] ^ *&v50[4 * (BYTE1(v47) ^ 0x8F)];
  v55 = *&v51[4 * (v44 ^ 0x54)];
  v56 = v54 ^ BYTE1(v47) ^ v53;
  v57 = *&v49[4 * (BYTE2(v38) ^ 0x12)];
  v58 = v45;
  v59 = *&v49[4 * BYTE2(v47)] ^ BYTE1(v52) ^ *&v46[4 * (HIBYTE(v36) ^ 0x3E)] ^ v55 ^ (v55 >> 4) ^ (v55 >> 8) ^ *&v50[4 * (BYTE1(v52) ^ 0x8F)];
  HIDWORD(v60) = *&v46[4 * HIBYTE(v47)] ^ v57 ^ *&v50[4 * (v58 ^ 0x8F)] ^ 0x9A68F6BB;
  LODWORD(v60) = HIDWORD(v60);
  v61 = *&v46[4 * HIBYTE(v52)] ^ *&v49[4 * v48] ^ BYTE1(v36) ^ *&v50[4 * (BYTE1(v36) ^ 0xA4)] ^ *&v51[4 * v47] ^ (*&v51[4 * v47] >> 4) ^ (*&v51[4 * v47] >> 8);
  v62 = *&v51[4 * (v36 ^ 0x48)];
  v63 = v62 ^ (v62 >> 8) ^ (v62 >> 4) ^ (v58 ^ ((v60 >> 31) >> 1) | ((v60 >> 31) << 31));
  v64 = *&v51[4 * ((v62 ^ BYTE1(v62) ^ (v62 >> 4) ^ v58 ^ ((v60 >> 31) >> 1)) ^ 0xCB)] ^ 0xEBCBBEAE;
  v65 = v56 ^ (v53 >> 4);
  v66 = v65 ^ (v53 >> 8);
  LODWORD(v60) = __ROR4__(v61 ^ 0xB8B689B4, 23) ^ 0xCFAFD0D3;
  HIDWORD(v60) = v60;
  v67 = v60 >> 9;
  v68 = *&v49[4 * (BYTE2(v66) ^ 0xDF)] ^ *&v50[4 * (BYTE1(v59) ^ 0x72)] ^ BYTE1(v59) ^ v64 ^ *&v46[4 * (HIBYTE(v67) ^ 0xBC)] ^ (((-(v64 >> 4) ^ (v64 - ((v64 >> 4) ^ v64)) ^ ((v64 >> 4) - ((v64 >> 3) & 0x176CF7D6) + 196508651) ^ 0xBB67BEB) + v64) >> 4);
  v69 = *&v51[4 * ((v60 >> 9) ^ 0x55)] ^ 0xEBCBBEAE;
  v70 = *&v49[4 * (BYTE2(v59) ^ 0xA2)] ^ *&v46[4 * (HIBYTE(v65) ^ 0x11)];
  v71 = v63 ^ 0x7A739691;
  v72 = v70 ^ *&v50[4 * (BYTE1(v71) ^ 0x8F)] ^ BYTE1(v71) ^ v69 ^ (((v69 >> 4) + v69 - 2 * ((v69 >> 4) & v69)) >> 4);
  v73 = v66 ^ 0x4368;
  if ((v66 & 0x10) != 0)
  {
    v74 = -16;
  }

  else
  {
    v74 = 16;
  }

  v75 = *&v51[4 * ((v74 + v73) ^ 0x4A)];
  v76 = *&v49[4 * (BYTE2(v63) ^ 0x79)] ^ BYTE1(v67) ^ *&v46[4 * (HIBYTE(v59) ^ 0x4B)] ^ v75 ^ *&v50[4 * (BYTE1(v67) ^ 0x43)];
  v77 = *&v51[4 * (v59 ^ 0xFD)];
  v78 = *&v46[4 * HIBYTE(v71)] ^ HIBYTE(v73) ^ *&v50[4 * (HIBYTE(v73) ^ 0x8F)] ^ v77 ^ 0x87437631 ^ *&v49[4 * (BYTE2(v67) ^ 0x6B)] ^ ((((v77 ^ 0xEBCBBEAE) >> (v37 & 4 ^ 4) >> (v37 & 4)) ^ v77 ^ 0x87437631) >> 4);
  v79 = v76 ^ (v75 >> 4);
  v80 = v79 ^ (v75 >> 8);
  v81 = (((((v80 ^ 0x5D840D5Au) >> ((HIBYTE(v73) ^ 0x8F) & 8)) - ((2 * ((v80 ^ 0x5D840D5Au) >> ((HIBYTE(v73) ^ 0x8F) & 8))) & 0x9EF353D8) - 814110228) ^ 0xCF79A9EC) >> ((HIBYTE(v73) ^ 0x8F) & 8 ^ 8));
  v82 = *&v50[4 * (v81 ^ 0x8F)];
  v83 = v81 ^ 0x51DDFADA;
  v84 = ~v82 & 8;
  if ((v83 & v84) != 0)
  {
    v84 = -v84;
  }

  v85 = v84 + v83;
  v86 = *&v51[4 * (v78 ^ 0xEA)];
  v87 = v78 ^ 0x3AB9E0B0;
  v88 = *&v46[4 * (HIBYTE(v68) ^ 0xF4)] ^ *&v49[4 * (BYTE2(v72) ^ 0x4A)] ^ v86 ^ v82 & 0xFFFFFFF7 ^ (v86 >> 4) ^ (v86 >> 8) ^ v85;
  v89 = *&v51[4 * (v68 ^ 4)];
  v90 = *&v50[4 * (((v78 ^ 0xE0B0) >> 8) ^ 0x8F)] ^ *&v49[4 * (BYTE2(v80) ^ 0x8E)] ^ ((v78 ^ 0xE0B0) >> 8) ^ *&v46[4 * (HIBYTE(v72) ^ 0xFB)] ^ 0x722973F;
  v91 = (v89 >> 8) ^ (v89 >> 4) ^ ((-(v89 ^ 0xEBCBBEAE) ^ (v90 - (v90 ^ v89 ^ 0xEBCBBEAE)) ^ 0xF24C6A48 ^ ((v89 ^ 0xEBCBBEAE) - ((2 * (v89 ^ 0xEBCBBEAE)) & 0xE498D490) - 229873080)) + v90);
  v92 = *&v51[4 * (v72 ^ 0x71)];
  v93 = *&v51[4 * v80];
  v94 = *&v46[4 * (HIBYTE(v79) ^ 0x4B)] ^ ((v68 ^ 0x7D5E) >> 8) ^ *&v49[4 * BYTE2(v87)] ^ v92 ^ *&v50[4 * (((v68 ^ 0x7D5E) >> 8) ^ 0x8F)] ^ (v92 >> 4);
  v95 = v94 ^ (v92 >> 8) ^ 0x5D7C9AAD;
  HIDWORD(v97) = *&v50[4 * (BYTE1(v95) ^ 0x8F)];
  LODWORD(v97) = HIDWORD(v97);
  v96 = v97 >> 29;
  HIDWORD(v97) = v96;
  LODWORD(v97) = (v95 >> 5) & 0x7F8 ^ v96;
  v98 = *&v46[4 * HIBYTE(v87)] ^ BYTE1(v72) ^ *&v50[4 * (BYTE1(v72) ^ 0xB6)] ^ *&v49[4 * (BYTE2(v68) ^ 0x6F)] ^ v93 ^ (v93 >> 4);
  v99 = v98 ^ (v93 >> 8);
  v100 = *&v51[4 * ((v98 ^ BYTE1(v93)) ^ 0x28)];
  v101 = *&v49[4 * (BYTE2(v91) ^ 0xE1)] ^ v100 ^ *&v46[4 * (HIBYTE(v88) ^ 0x4F)] ^ (v100 >> 4) ^ (v100 >> 8) ^ (v97 >> 3);
  BYTE1(v93) = BYTE1(v91) ^ 0xB9;
  v102 = *&v46[4 * ((v91 ^ 0xF2EBB910) >> 24)];
  v103 = *&v51[4 * (v88 ^ 0x38)];
  v104 = *&v50[4 * (BYTE1(v99) ^ 0x78)] ^ *&v49[4 * BYTE2(v95)] ^ BYTE1(v99) ^ v103 ^ (v103 >> 4) ^ (v103 >> 8) ^ ((v102 ^ (308884435 - (v102 ^ 0x89CFD9D5)) ^ 0x9BA6EA06 ^ (1683559930 - (((v102 ^ 0xD02F22E3) + 802217245) ^ ((v102 ^ 0x5DFFA1D1) - 1577034193) ^ ((v102 ^ 0x16766934) - 376858932)))) + 308884435);
  v105 = *&v51[4 * (v91 ^ 0x4A)];
  v106 = *&v46[4 * (HIBYTE(v94) ^ 0x4B)] ^ *&v49[4 * (BYTE2(v99) ^ 0xE3)] ^ *&v50[4 * (BYTE1(v88) ^ 0x15)] ^ (((v105 >> 8) ^ (v105 >> 4) ^ 0xE577054) + (v105 ^ 0xEBCBBEAE) - 2 * (((v105 >> 8) ^ (v105 >> 4) ^ 0xE577054) & (v105 ^ 0xEBCBBEAE)));
  v107 = *&v51[4 * v95];
  v108 = *&v46[4 * (HIBYTE(v98) ^ 0xE0)] ^ BYTE1(v93) ^ *&v50[4 * (BYTE1(v93) ^ 0x8F)] ^ v107 ^ *&v49[4 * (BYTE2(v88) ^ 0xF9)];
  v109 = v108 ^ (v107 >> 4);
  v110 = *&v51[4 * ((v108 ^ (v107 >> 4) ^ BYTE1(v107)) ^ 0x16)];
  v111 = *&v50[4 * (BYTE1(v106) ^ 0xB5)] ^ *&v46[4 * (HIBYTE(v101) ^ 0x4A)] ^ *&v49[4 * (((v104 ^ 0xD590B088) >> 16) ^ 0xA)] ^ BYTE1(v106) ^ 0x7229705;
  v112 = v110 ^ (v110 >> 8) ^ (v110 >> 4) ^ 0xE59CCEFA;
  v113 = (-v111 ^ (v112 - (v111 ^ v112)) ^ (v111 - ((2 * v111) & 0x41F6DB6) - 2112899365) ^ 0x820FB6DB) + v112;
  v114 = HIWORD(v106) ^ 0xEC45;
  v115 = *&v49[4 * (BYTE2(v106) ^ 0x4F)] ^ *&v46[4 * (HIBYTE(v104) ^ 0xC3)] ^ 0x7F7AEDC6;
  v116 = v101 ^ 0x5CA7FECB;
  v117 = *&v51[4 * (v101 ^ 0xCB)];
  v118 = v106 ^ BYTE1(v88);
  v119 = (~(v118 << 6) | 0x3FFFFFFF) & ((v106 >> 26) ^ 0x787D4C7E) ^ ((v118 >> 25 << 31) | 0x40081A2);
  HIDWORD(v97) = v119 ^ 0x3B4E9560;
  LODWORD(v97) = v119 ^ 0x80000000;
  v120 = ((v109 ^ (v107 >> 8) ^ 0x44C) >> 8) ^ *&v50[4 * (((v109 ^ (v107 >> 8) ^ 0x44C) >> 8) ^ 0x8F)] ^ v117 ^ (v117 >> 4) ^ (v117 >> 8) ^ ((v115 & 0xAF409D34 ^ 0x3400D98F) & (v115 & 0x50BF62CB ^ 0xFFEB9FB4) | v115 & 0x40BF2240);
  v121 = *&v46[4 * ((v97 >> 30) ^ 0x1CCD6209)] ^ *&v49[4 * (((v109 ^ (v107 >> 8)) >> 16) ^ 0xCA)];
  v122 = v116 >> 8;
  if ((((((v109 ^ BYTE1(v107) ^ 0x4C) - (v109 ^ BYTE1(v107) ^ 0x79)) ^ 0xFE) + (v109 ^ BYTE1(v107) ^ 0x4C)) ^ v109 ^ BYTE1(v107)) == 0x4C)
  {
    LOBYTE(v122) = v114;
  }

  v123 = v121 ^ *&v50[4 * (v122 ^ 0x8F)];
  v124 = *&v46[4 * (HIBYTE(v109) ^ 0xE1)] ^ BYTE1(v104) ^ 0xB0 ^ *&v49[4 * BYTE2(v116)] ^ *&v50[4 * (BYTE1(v104) ^ 0x3F)];
  v125 = *&v51[4 * (v104 ^ 0x88)];
  v126 = v113 ^ 0x31B35FEA;
  v127 = *&v46[4 * ((v113 ^ 0x31B35FEA) >> 24)] ^ 0x89CFD9D5;
  v128 = *&v49[4 * (BYTE2(v120) ^ 0xD8)];
  v129 = v127 & 1;
  v130 = (v127 & 1 & v128) == 0;
  v131 = v128 ^ 0x1BE2581C;
  if (!v130)
  {
    v129 = -v129;
  }

  v132 = v129 + v131;
  v133 = v123 ^ v125 ^ (v125 >> 4);
  v134 = v133 ^ (v125 >> 8);
  v135 = *&v51[4 * (v118 ^ 0xDD)];
  v136 = v124 ^ v135 ^ (v135 >> 4);
  v137 = v136 ^ (v135 >> 8);
  v138 = *&v51[4 * ((v136 ^ BYTE1(v135)) ^ 0xCE)];
  v139 = *&v50[4 * (BYTE1(v134) ^ 0x14)] ^ v127 & 0xFFFFFFFE ^ BYTE1(v134) ^ v138 ^ (v138 >> 4) ^ (v138 >> 8) ^ v132;
  v140 = v134 ^ v122;
  v141 = *&v51[4 * (v113 ^ 0xB0)];
  v142 = *&v49[4 * (((BYTE2(v134) ^ 0x81) - (BYTE2(v134) ^ 0x8B)) ^ 0xFFFFFFFC) + 4 * (BYTE2(v134) ^ 0x81)] ^ *&v46[4 * (HIBYTE(v120) ^ 0xCC)] ^ *&v50[4 * (BYTE1(v137) ^ 0x17)] ^ BYTE1(v137) ^ v141;
  v143 = *&v46[4 * (HIBYTE(v133) ^ 0x86)] ^ BYTE1(v126) ^ *&v50[4 * (BYTE1(v126) ^ 0x8F)] ^ *&v49[4 * (BYTE2(v137) ^ 0xBB)];
  v144 = v120 ^ 0x27;
  v145 = *&v46[4 * (HIBYTE(v136) ^ 0x79)] ^ ((v120 ^ 0x1C27) >> 8) ^ *&v50[4 * (((v120 ^ 0x1C27) >> 8) ^ 0x8F)] ^ *&v49[4 * BYTE2(v126)];
  v146 = v142 ^ (v141 >> 4);
  v147 = v146 ^ (v141 >> 8);
  v148 = *&v51[4 * v144];
  v149 = v143 ^ v148 ^ (v148 >> 4);
  v150 = v149 ^ (v148 >> 8);
  v151 = *&v49[4 * (BYTE2(v147) ^ 0x51)];
  v152 = *&v46[4 * (HIBYTE(v139) ^ 0xD3)] ^ 0x89CFD9D5;
  v153 = v152 & 0x1000;
  v130 = (v153 & ~v151) == 0;
  v154 = v151 ^ 0x1BE2581C;
  if (!v130)
  {
    v153 = -v153;
  }

  v155 = *&v51[4 * (v140 ^ 0x62)];
  v156 = v145 ^ v155 ^ (v155 >> 4);
  v157 = v156 ^ (v155 >> 8);
  v158 = *&v51[4 * (v157 ^ 0x74)];
  v159 = BYTE1(v150) ^ *&v50[4 * (BYTE1(v150) ^ 0x2B)] ^ v158 ^ v152 & 0xFFFFEFFF ^ (v158 >> 4) ^ (v158 >> 8) ^ (v153 + v154);
  v160 = *&v46[4 * (HIBYTE(v146) ^ 0xD8)] ^ 0xBC2AD035;
  v161 = *&v51[4 * (v139 ^ 0x55)];
  v162 = v161 ^ *&v49[4 * (BYTE2(v150) ^ 0x20)] ^ (v161 >> 4) ^ (v161 >> 8) ^ *&v50[4 * (((v157 ^ 0x3B74) >> 8) ^ 0x8F)] ^ ((v157 ^ 0x3B74) >> 8) ^ (v160 - ((2 * v160) & 0x6BCA13C0) + 904202720);
  v163 = BYTE1(v139) ^ *&v46[4 * (HIBYTE(v149) ^ 0x40)] ^ *&v49[4 * (BYTE2(v157) ^ 0x61)] ^ *&v50[4 * (BYTE1(v139) ^ 0x59)];
  v164 = *&v51[4 * v150];
  v165 = *&v49[4 * (BYTE2(v139) ^ 0x24)] ^ BYTE1(v147) ^ *&v46[4 * ((HIBYTE(v156) ^ 0xAC07792D) - ((2 * (HIBYTE(v156) ^ 0xAC07792D)) & 0x580EF214)) - 0x14FE21BD8] ^ *&v50[4 * (BYTE1(v147) ^ 0xB7)] ^ v164;
  v166 = *&v46[4 * (HIBYTE(v159) ^ 0xC)];
  v167 = -(v166 & 0x14485C9C ^ 0x10004804) ^ (273158288 - (v166 & 0x14485C9C ^ 0x485894)) ^ 0x4A1BC71D ^ ((v166 & 0x14485C9C ^ 0x10004804) - ((2 * (v166 & 0x14485C9C ^ 0x10004804)) & 0x108838) + 1243334429);
  v168 = *&v51[4 * (v147 ^ 0x40)];
  v169 = v163 ^ v168 ^ (v168 >> 4) ^ 0x68D0392;
  v170 = v169 ^ (v168 >> 8);
  v171 = v165 ^ (v164 >> 4);
  v172 = v171 ^ (v164 >> 8);
  v173 = *&v50[4 * (BYTE1(v172) ^ 0xB0)] ^ *&v46[4 * ((v162 ^ 0xD1987971) >> 24)] ^ *&v49[4 * BYTE2(v170)] ^ BYTE1(v172);
  v174 = ((v159 ^ 0x1EF1) >> 8);
  v175 = *&v46[4 * HIBYTE(v169)] ^ v174 ^ *&v49[4 * (BYTE2(v172) ^ 0x16)];
  v176 = *&v50[4 * (v174 ^ 0x8F)];
  v177 = *&v51[4 * (v162 ^ 0x2B)];
  v178 = v175 ^ v177 ^ v176 ^ (v177 >> 4) ^ (v177 >> 8);
  v179 = *&v51[4 * (v172 ^ 0xB2)];
  v180 = *&v49[4 * ((v162 ^ 0xD1987971) >> 16)] ^ BYTE1(v170) ^ *&v50[4 * (BYTE1(v170) ^ 0x8F)] ^ v179 ^ (v179 >> 4) ^ (v179 >> 8) ^ (v167 + 273158288) & 0x264620BA ^ (-273158289 - v167) & (v166 & 0xEBB7A363 ^ 0x503E5E04) ^ 0xD53C8009;
  v181 = *&v51[4 * v170];
  v182 = (v181 >> 8) ^ (v181 >> 4);
  v183 = *&v46[4 * (HIBYTE(v171) ^ 0x3F)] ^ ((v162 ^ 0x7971) >> 8) ^ *&v50[4 * (((v162 ^ 0x7971) >> 8) ^ 0x8F)] ^ *&v49[4 * (BYTE2(v159) ^ 0xD1)] ^ v181;
  v184 = *&v51[4 * (v159 ^ 0xF1)];
  v185 = v173 ^ v184 ^ (v184 >> 4);
  v186 = v185 ^ (v184 >> 8);
  v187 = v183 ^ v182;
  v188 = (v186 ^ 0xD5ED21B8) >> (v182 & 8) >> (v182 & 8 ^ 8);
  v189 = v178 ^ 0xDB9A2523;
  v190 = v183 ^ v182 ^ 0xEC7C1D13;
  v191 = *&v51[4 * ((v183 ^ v182) ^ 0x13)];
  v192 = *&v49[4 * (BYTE2(v186) ^ 0xE7)] ^ *&v50[4 * (BYTE1(v189) ^ 0x8F)] ^ BYTE1(v189) ^ v191 ^ *&v46[4 * HIBYTE(v180)];
  v193 = *&v46[4 * (HIBYTE(v185) ^ 0xC3)] ^ BYTE1(v190) ^ *&v50[4 * (BYTE1(v190) ^ 0x8F)] ^ *&v49[4 * (BYTE2(v178) ^ 0x90)] ^ *&v51[4 * v180] ^ (*&v51[4 * v180] >> 4) ^ (*&v51[4 * v180] >> 8);
  v194 = *&v51[4 * (v186 ^ 0xE2)];
  v195 = v194 ^ 0xEBCBBEAE;
  v196 = (v194 ^ 0xEBCBBEAE) >> 4;
  v130 = (v196 & 0x100 & v194) == 0;
  v197 = v196 & 0xFFFFFEFF;
  if (v130)
  {
    v198 = v196 & 0x100;
  }

  else
  {
    v198 = -(v196 & 0x100);
  }

  v199 = *&v46[4 * HIBYTE(v189)] ^ BYTE1(v180) ^ *&v49[4 * BYTE2(v190)] ^ v195 ^ *&v50[4 * (BYTE1(v180) ^ 0x8F)] ^ (((v198 + v195) ^ v197) >> 4);
  v200 = *&v46[4 * (HIBYTE(v187) ^ 0xFA)];
  v201 = *&v49[4 * BYTE2(v180)];
  v202 = *&v51[4 * v189];
  v203 = *&v50[4 * (v188 ^ 0x8F)];
  v204 = (((v202 >> 8) ^ (v202 >> 4)) & 0xF1F54BD ^ v202 & 0x2F1F54BD ^ 0xD2E3AB42) & (v202 & 0xD0E0AB42 ^ 0x16D7E058 ^ ((v202 >> 8) ^ (v202 >> 4)) & 0xE0AB42) | (((v202 >> 8) ^ (v202 >> 4)) & 0xF1F54BD ^ v202 & 0x2F1F54BD) & 0x290814A5;
  LOBYTE(v202) = v193 ^ 6;
  v205 = v201 ^ v200 ^ v203 ^ v204;
  v206 = *(&off_1010A0B50 + v18 - 36425) - 408116314;
  v207 = *&v206[4 * ((v193 ^ 0x8D4F0406) >> 24)];
  v208 = *(&off_1010A0B50 + (v18 ^ 0x92BE)) - 469059127;
  v209 = *(&off_1010A0B50 + (v18 ^ 0x9DE5)) - 25405462;
  v210 = *&v208[4 * (BYTE2(v199) ^ 0xB9)] + 1389368497;
  v211 = *&v209[4 * (BYTE1(v205) ^ 0x4F)];
  v212 = v207 ^ (32 * (v207 ^ 0xF4945229)) ^ (4 * (v207 ^ 0xF4945229)) ^ v211 ^ v210;
  v213 = v192 ^ (v191 >> 4);
  v214 = v213 ^ (v191 >> 8);
  v215 = *&v206[4 * (HIBYTE(v213) ^ 0x50)];
  v216 = *&v206[4 * (HIBYTE(v199) ^ 0xAD)];
  v217 = *&v206[4 * (HIBYTE(v205) ^ 0xBE)];
  v218 = v205 ^ v188;
  LODWORD(v206) = *&v208[4 * ((v193 ^ 0x8D4F0406) >> 16)];
  v219 = *&v208[4 * (BYTE2(v205) ^ 0x60)];
  v220 = *&v208[4 * (BYTE2(v214) ^ 0x52)];
  v221 = v212 ^ (8 * v210);
  v222 = *&v209[4 * (BYTE1(v199) ^ 0x3B)];
  v223 = v221 ^ (v211 >> 2) ^ (v211 >> 5);
  v224 = *&v209[4 * (BYTE1(v214) ^ 0xF1)];
  v225 = *&v209[4 * (BYTE1(v193) ^ 0xD7)];
  LODWORD(v208) = v218;
  v226 = *(v20 - 200);
  v227 = *(&off_1010A0B50 + (v18 ^ 0x9605)) - 727288310;
  v228 = *&v227[4 * (v208 ^ 0x76)];
  v229 = *&v227[4 * (v214 ^ 0x61)] + 330287721;
  v230 = *&v227[4 * v202];
  v231 = *&v227[4 * (v199 ^ 0x65)];
  LODWORD(v233) = __ROR4__(v223 ^ v229 ^ (v229 >> 4) ^ (v229 >> 3) ^ 0xA68DD382, 5) ^ 0xACB06245;
  HIDWORD(v233) = v233;
  v232 = v233 >> 27;
  v234 = *(&off_1010A0B50 + v18 - 36781) - 1642576094;
  v235 = v234[HIBYTE(v232) ^ 3];
  *(v226 + v251) = v235 ^ HIBYTE(v232) ^ 0x73;
  v236 = v216 ^ 0x27542958 ^ (32 * (v216 ^ 0x27542958)) ^ (4 * (v216 ^ 0x27542958)) ^ v224 ^ (v219 + 1389368497) ^ (8 * (v219 + 1389368497)) ^ (v224 >> 2) ^ (v224 >> 5) ^ (v230 + 330287721) ^ ((v230 + 330287721) >> 3) ^ ((v230 + 330287721) >> 4);
  v237 = *(&off_1010A0B50 + v18 - 33695) - 1473934430;
  *(v226 + v252) = v237[(((BYTE2(v236) ^ 0xDA) - (BYTE2(v236) ^ 0xB6)) ^ 0xFFFFFFF8) + (BYTE2(v236) ^ 0xDA)] ^ 0x3C;
  *(v226 + v248) = v237[BYTE2(v232) ^ 0x9ALL] ^ 0xA9;
  v238 = v215 ^ 0x28A4C4A3 ^ (32 * (v215 ^ 0x28A4C4A3)) ^ (4 * (v215 ^ 0x28A4C4A3)) ^ (v206 + 1389368497) ^ (8 * (v206 + 1389368497)) ^ v222 ^ (v222 >> 2) ^ (v222 >> 5) ^ (v228 + 330287721) ^ ((v228 + 330287721) >> 3) ^ ((v228 + 330287721) >> 4);
  v239 = v217 ^ 0x10268E7F ^ (32 * (v217 ^ 0x10268E7F)) ^ (4 * (v217 ^ 0x10268E7F)) ^ (v220 + 1389368497) ^ v225 ^ (8 * (v220 + 1389368497)) ^ (v225 >> 2) ^ (v225 >> 5) ^ (v231 + 330287721) ^ ((v231 + 330287721) >> 3) ^ ((v231 + 330287721) >> 4);
  *(v226 + v249) = v237[BYTE2(v238) ^ 0x17] ^ 0x22;
  *(v226 + v247) = v234[BYTE3(v239) ^ 0xA5] ^ BYTE3(v239) ^ 0xC3;
  v240 = ((v215 ^ 0xC4A3 ^ (32 * (v215 ^ 0xC4A3)) ^ (4 * (v215 ^ 0xC4A3)) ^ (v206 + 5297) ^ (8 * (v206 + 5297)) ^ v222 ^ (v222 >> 2) ^ (v222 >> 5) ^ (v228 - 13719) ^ ((v228 + 330287721) >> 3) ^ ((v228 + 330287721) >> 4)) >> 8) ^ 0xC3;
  v241 = *(&off_1010A0B50 + v18 - 36194) - 1555523643;
  *(v226 + v259) = ((BYTE1(v238) ^ 0x84) + v241[v240] - 111) ^ 0xDE;
  v242 = *(&off_1010A0B50 + v18 - 36212) - 713101531;
  *(v226 + v256) = ((99 - v242[v238 ^ 0x79]) ^ (-12 - ((v242[v238 ^ 0x79] - 99) ^ 0xF4)) ^ 0xB1 ^ (v242[v238 ^ 0x79] - ((2 * (v242[v238 ^ 0x79] - 99)) & 0x62) + 78)) - 12;
  *(v226 + v260) = (v242[(v233 >> 27) ^ 0xDFLL] - 99) ^ 0xC1;
  *(v226 + v255) = HIBYTE(v238) ^ 0xD8 ^ v234[HIBYTE(v238) ^ 0x2CLL];
  *(v226 + v253) = v237[BYTE2(v239) ^ 0x22] ^ 0x16;
  *(v226 + v250) = BYTE3(v236) ^ 0x54 ^ v234[BYTE3(v236) ^ 0x8ALL];
  *(v226 + v262) = (v242[v236 ^ 0x5FLL] - 99) ^ 0x56;
  *(v226 + v257) = ((((v217 ^ 0x8E7F ^ (32 * (v217 ^ 0x8E7F)) ^ (4 * (v217 ^ 0x8E7F)) ^ (v220 + 5297) ^ v225 ^ (8 * (v220 + 5297)) ^ (v225 >> 2) ^ (v225 >> 5) ^ (v231 - 13719) ^ ((v231 + 330287721) >> 3) ^ ((v231 + 330287721) >> 4)) >> 8) ^ 0x25) + v241[((v217 ^ 0x8E7F ^ (32 * (v217 ^ 0x8E7F)) ^ (4 * (v217 ^ 0x8E7F)) ^ (v220 + 5297) ^ v225 ^ (8 * (v220 + 5297)) ^ (v225 >> 2) ^ (v225 >> 5) ^ (v231 - 13719) ^ ((v231 + 330287721) >> 3) ^ ((v231 + 330287721) >> 4)) >> 8) ^ 0x62] - 111) ^ 0x9C;
  *(v226 + v261) = ((BYTE1(v236) ^ 0xA9) + v241[BYTE1(v236) ^ 0xEELL] - 111) ^ 0xA4;
  *(v226 + *(v20 - 224)) = ((BYTE1(v232) ^ 0xAA) + v241[BYTE1(v232) ^ 0xEDLL] - 111) ^ 0x78;
  LOBYTE(v234) = v242[v217 ^ 0x7Fu ^ (32 * (v217 ^ 0x7F)) ^ (4 * (v217 ^ 0x7F)) ^ ((v220 - 79) ^ v225) ^ (8 * (v220 - 79)) ^ (v225 >> 2) ^ (v225 >> 5) ^ (v231 + 105) ^ ((v231 + 330287721) >> 3) ^ ((v231 + 330287721) >> 4) ^ 0x2FLL];
  LODWORD(v241) = (((v19 ^ 0x7210A4F8) - 1913693432) ^ ((v19 ^ 0xA021BAF6) + 1608402186) ^ ((v19 ^ 0x9FC66735) + 1614387403)) + 1808767757;
  LODWORD(v242) = (v241 ^ 0xDBA79E3C) & (2 * (v241 & 0xE227DE3E)) ^ v241 & 0xE227DE3E;
  LODWORD(v240) = ((2 * (v241 ^ 0xDFE88274)) ^ 0x7B9EB894) & (v241 ^ 0xDFE88274) ^ (2 * (v241 ^ 0xDFE88274)) & 0x3DCF5C4A;
  v243 = v240 ^ 0x441444A;
  LODWORD(v240) = (v240 ^ 0x198E1800) & (4 * v242) ^ v242;
  LODWORD(v242) = ((4 * v243) ^ 0xF73D7128) & v243 ^ (4 * v243) & 0x3DCF5C48;
  LODWORD(v240) = (v242 ^ 0x350D5000) & (16 * v240) ^ v240;
  LODWORD(v242) = ((16 * (v242 ^ 0x8C20C42)) ^ 0xDCF5C4A0) & (v242 ^ 0x8C20C42) ^ (16 * (v242 ^ 0x8C20C42)) & 0x3DCF5C40;
  LODWORD(v240) = v240 ^ 0x3DCF5C4A ^ (v242 ^ 0x1CC54400) & (v240 << 8);
  LODWORD(v241) = v241 ^ (2 * ((v240 << 16) & 0x3DCF0000 ^ v240 ^ ((v240 << 16) ^ 0x5C4A0000) & (((v242 ^ 0x210A184A) << 8) & 0x3DCF0000 ^ 0x30830000 ^ (((v242 ^ 0x210A184A) << 8) ^ 0x4F5C0000) & (v242 ^ 0x210A184A))));
  *(v226 + v258) = (v234 - 99) ^ 0xD7;
  LODWORD(v234) = (((v241 ^ 0xB5DF6AC0) - 1493529937) ^ ((v241 ^ 0xFE9F08BB) - 306517802) ^ ((v241 ^ 0xEA6D04D1) - 112663360)) - 1145823681;
  LODWORD(v240) = v254 ^ (v234 < 0x6DBCA504);
  v244 = v234 < *(v20 - 216);
  if (v240)
  {
    v244 = v254;
  }

  HIDWORD(v246) = (v18 + 1777807327) & 0xDFCF3FB7;
  return (*(*(v20 - 208) + 8 * ((43 * v244) ^ v18)))(v222, v236, 330287721, v228, v235, v217, v239, &off_1010A0B50, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, v246, v247, v248, v249, v250, v251, v252, v253);
}

uint64_t sub_10030C4D8@<X0>(uint64_t a1@<X8>)
{
  v8 = *(v6 + v1) - 91;
  *(a1 + v1) = v8;
  return (*(STACK[0xF18] + 8 * ((((3 * ((v2 + v3) & v4 ^ v5)) ^ v7) * (v8 != 0)) ^ v2)))();
}

uint64_t sub_10030C514@<X0>(unsigned int a1@<W1>, unsigned int a2@<W2>, uint64_t a3@<X8>)
{
  v12 = (v3 + v5);
  v13 = *(*(v7 + v8) + (*(v4 + v6) & 0x72D7ACF8));
  v14 = ((1864610357 * ((v13 ^ v12) & 0x7FFFFFFF)) >> (v10 + 119)) ^ (1864610357 * ((v13 ^ v12) & 0x7FFFFFFF));
  *(a3 + v5) = *(v9 + (v5 & 0xF | (16 * ((1864610357 * v14) >> 24)))) ^ *v12 ^ (53 * v14);
  if (a1 < a2 != v5 + 1 > 0x53C5B3E)
  {
    v15 = a1 < a2;
  }

  else
  {
    v15 = v5 - 87841598 < a1;
  }

  return (*(v11 + 8 * ((v15 | (2 * v15)) ^ v10)))();
}

uint64_t sub_10030C834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 64);
  v8 = *(a5 + 68);
  *(a5 + 56) = (v7 >> 21) - ((v7 >> 20) & 0xBE) + 95;
  *(a5 + 57) = (v7 >> ((v5 - 92) ^ 0x79)) + (~(2 * (v7 >> ((v5 - 92) ^ 0x79))) | 0x41) + 96;
  *(a5 + 58) = (v7 >> 5) - ((v7 >> 4) & 0xBE) + 95;
  *(a5 + 59) = (__PAIR64__(v7, v8) >> 29) - ((2 * (__PAIR64__(v7, v8) >> 29)) & 0xBF) + 95;
  *(a5 + 60) = (v8 >> 21) - ((v8 >> 20) & 0xBE) + 95;
  *(a5 + 61) = (v8 >> 13) - ((v8 >> 12) & 0xBE) + 95;
  *(a5 + 62) = (v8 >> 5) - ((v8 >> 4) & 0xBE) + 95;
  *(a5 + 63) = (~(16 * v8) | 0x4F) + 8 * v8 + 96;
  return (*(v6 + 8 * v5))();
}

uint64_t sub_10030C940(int a1)
{
  v4 = a1 + 1363587078 + v1 + 4202;
  v6 = v4 > 0x7F26BF0C && 2133245773 - v2 > v4;
  return (*(v3 + 8 * ((v6 * ((501 * (v1 ^ 0x2368)) ^ 0x77B6)) ^ v1)))();
}

uint64_t sub_10030C9F0()
{
  STACK[0x5C50] = (((v1 ^ 0x308DBC0150489184) - 0x308DBC0150489184) ^ ((v1 ^ 0x9E8BC765EAEF439BLL) + 0x6174389A1510BC65) ^ (((((v0 + 1291949102) & 0xB2FEDFBF) - 0x51F9849BAC8E762DLL) ^ v1) + 0x51F9849BAC8DEAF2)) + 0x3AE1413AF7325DD3;
  LODWORD(STACK[0x1374]) = 1332904182;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10030CAC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, int a22, int a23, int a24, int a25, int a26, int a27, int a28, int a29, int a30, int a31, int a32, int a33, int a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  *(v97 - 152) = a3;
  *(v97 - 144) = *(v97 - 132) < 0xCC2F27FB;
  v98 = (a3 - 16996) | 0x2840u;
  v99 = *(a84 + (*(v95 + (v90 & (v98 - 32380) ^ 0xBC608CE3)) ^ 0xCBLL));
  v100 = *(v95 + (v90 & ((a3 - 25868) ^ 0xFFFFCC61) ^ 0xBC608CEFLL));
  v101 = *(v97 - 232);
  v102 = *(v97 - 216);
  v103 = *(v95 + (v90 ^ 0xBC608CE1));
  v104 = (*(v102 + (*(v95 + (v90 & 0xFFFFFFF2 ^ 0xBC608CEDLL)) ^ 0xE8)) - 105) << 16;
  v105 = (v104 ^ 0xFFEFFFFF) & (((*(v101 + (v100 ^ 0xE8)) ^ v100) << 8) ^ 0x213AD42E) | v104 & 0xC50000;
  v106 = *(v97 - 240);
  LODWORD(v100) = (((*(v106 + (v103 ^ 0x23)) ^ ((v103 ^ 0xD) + 10) ^ 0x54) << 24) ^ 0x63B34BE1) & (((v99 >> 7) | (2 * v99)) ^ 0xFFB34BE1) | ((v99 >> 7) | (2 * v99)) & 0x1E;
  v107 = *(v95 + (v90 & 0xFFFFFFFB ^ 0xBC608CE5));
  LODWORD(v103) = *(a84 + (*(v95 + (v90 & 0xFFFFFFF4 ^ 0xBC608CEBLL)) ^ v96));
  HIDWORD(v108) = v103 ^ 0x45;
  LODWORD(v108) = ~v103 << 24;
  LODWORD(v103) = (v108 >> 31) | ((*(v102 + (*(v95 + (v90 & 0xFFFFFFF6 ^ 0xBC608CE9)) ^ 0x1ALL)) + 23) << 16);
  v109 = *(v95 + (v90 & 0xFFFFFFF9 ^ 0xBC608CE7));
  LODWORD(v109) = *(v101 + (v109 ^ 0x7C)) ^ v109;
  LODWORD(v107) = ((v109 << 8) ^ 0xFFFF9FFF) & (((((v107 ^ 0x63) + 10) ^ *(v106 + (v107 ^ 0x4D))) << 24) ^ 0xA3DEE05B) & 0xFFFFE0FF | ((v109 & 0x1F) << 8);
  LODWORD(v109) = *(a84 + (*(v95 + (v90 & 0xFFFFFFF8 ^ 0xBC608CE7)) ^ 0xE5));
  HIDWORD(v108) = v109 ^ 0x45;
  LODWORD(v108) = ~v109 << 24;
  v110 = (*(v102 + (*(v95 + (v90 & 0xFFFFFFFA ^ 0xBC608CE5)) ^ 0x50)) - 105) << 16;
  v111 = (((v108 >> 31) & 0x4D | (v107 ^ 0x1BCB4CE9) & ((v108 >> 31) ^ 0xFFDFFFBB)) ^ 0x8F8C45F) & (v110 ^ 0xFF1CFFFF);
  v112 = v110 & 0x120000;
  v113 = *(v95 + (v90 & 0xFFFFFFFD ^ 0xBC608CE3));
  LODWORD(v113) = (*(v101 + (v113 ^ 0xF1)) ^ v113) << 8;
  LODWORD(v100) = (v113 ^ 0xFFFFFDFF) & (v100 ^ 0xD328DC8C) | v113 & 0x6800;
  v114 = *(v95 + (v90 & 0xFFFFFFF5 ^ 0xBC608CEBLL));
  LODWORD(v114) = (((*(v101 + (v114 ^ 0xA9)) ^ v114) << 8) ^ 0xC9207BBF) & (v103 ^ 0xD93DFFBF) | v103 & 0xDF0040;
  v115 = *(v95 + (v90 & 0xFFFFFFF3 ^ 0xBC608CEDLL));
  LODWORD(v115) = (((v115 ^ 0x5C) + 10) ^ *(v106 + (v115 ^ 0x72))) << 24;
  LODWORD(v103) = (v115 ^ 0xAFFFF2C) & (v105 ^ 0xC3E20302);
  v116 = *(v95 + (v90 & 0xFFFFFFF7 ^ 0xBC608CE9));
  v117 = (((v116 ^ 0xAAAAAAAA) + 10) ^ *(v106 + (v116 ^ 0x84))) << 24;
  v118 = (v117 ^ 0xBAFFFFFF) & (v114 ^ 0x71612239);
  v119 = v117 & 0x47000000;
  v120 = (((*(v102 + (*(v95 + (v90 & 0xFFFFFFFE ^ 0xBC608CE1)) ^ 0x4ALL)) - 105) << 16) ^ 0xE8A0B5CB) & (v100 ^ 0xC4640AA8);
  v121 = v100 & 0x17014A34;
  LODWORD(v101) = *(a84 + (*(v95 + (v90 & 0xFFFFFFF0 ^ 0xBC608CEFLL)) ^ 0x77));
  v122 = ((2 * v101) & 0x30 ^ 0x18850A33 ^ ((2 * v101) & 0xFE ^ 0xFFFFFF64) & (v115 & 0x1D000000 ^ 0xACD116E2 ^ v103)) & ((v101 >> 7) | 0xFFFFFFFE);
  if (a38 - (((v90 ^ 0x54107ABB) - 1410366139) ^ ((v90 ^ 0x11F12525) - 301016357) ^ ((v90 ^ 0xF981D37F) + 108932225)) < 0x11)
  {
    a42 = a89;
  }

  else
  {
    a90 = a44;
  }

  if (a38 - (((v90 ^ 0x54107ABB) - 1410366139) ^ ((v90 ^ 0x11F12525) - 301016357) ^ ((v90 ^ 0xF981D37F) + 108932225)) >= 0x11)
  {
    v125 = a36;
  }

  else
  {
    v125 = *(v97 - 256);
  }

  v126 = a26 ^ *(v97 - 176) ^ a42;
  if (a38 - (((v90 ^ 0x54107ABB) - 1410366139) ^ ((v90 ^ 0x11F12525) - 301016357) ^ ((v90 ^ 0xF981D37F) + 108932225)) >= 0x11)
  {
    v127 = a40;
  }

  else
  {
    v127 = *(v97 - 248);
  }

  v128 = v126 ^ v112 ^ v111;
  v129 = a24 ^ *(v97 - 168) ^ a90 ^ v121 ^ v120 ^ 0xE848B2EC;
  v130 = a34 ^ *(v97 - 136) ^ v125 ^ v119 ^ v118;
  v131 = a22 ^ *(v97 - 160) ^ v127 ^ 0xA609E949 ^ v122;
  v132 = *(v93 + 4 * ((v130 ^ 0x14D3) >> 8));
  v133 = *(v91 + 4 * HIBYTE(v131)) ^ a85 ^ *(v93 + 4 * (BYTE1(v128) ^ 0x47u)) ^ BYTE2(v129) ^ *(v94 + 4 * (v130 ^ 0xD3u)) ^ *(v92 + 4 * (BYTE2(v129) ^ v96));
  v134 = *(v93 + 4 * BYTE1(v129));
  v135 = *(v91 + 4 * (HIBYTE(v130) ^ 0x26));
  v136 = a87 ^ ((v130 ^ 0xE71114D3) >> 16) ^ *(v91 + 4 * ((v128 ^ 0x2F8BE456u) >> 24)) ^ *(v93 + 4 * BYTE1(v131)) ^ *(v92 + 4 * (((v130 ^ 0xE71114D3) >> 16) ^ v96)) ^ 0xEE41FB2E ^ *(v94 + 4 * v129);
  v137 = a88 ^ ((v128 ^ 0x2F8BE456u) >> 16) ^ v132 ^ *(v94 + 4 * v131) ^ *(v92 + 4 * (((v128 ^ 0x2F8BE456u) >> 16) ^ v96)) ^ 0x3C920F9D ^ *(v91 + 4 * HIBYTE(v129));
  v138 = a86 ^ *(v94 + 4 * (v128 ^ 0x56u)) ^ *(v92 + 4 * (BYTE2(v131) ^ v96)) ^ BYTE2(v131) ^ v134 ^ v135 ^ 0x11E63D68;
  v139 = a82 ^ *(v91 + 4 * HIBYTE(v138)) ^ ((v133 ^ 0x182FE562u) >> 16) ^ *(v92 + 4 * (((v133 ^ 0x182FE562u) >> 16) ^ 0x84u)) ^ *(v93 + 4 * BYTE1(v137)) ^ *(v94 + 4 * v136) ^ 0x5CF3B966;
  v140 = *(v94 + 4 * (v133 ^ 0x62u));
  v141 = a79 ^ BYTE2(v138) ^ *(v91 + 4 * HIBYTE(v136)) ^ *(v92 + 4 * (BYTE2(v138) ^ v96)) ^ *(v93 + 4 * (BYTE1(v133) ^ 0x45u)) ^ *(v94 + 4 * v137) ^ 0xB7E872E5;
  v142 = a81 ^ *(v92 + 4 * (BYTE2(v137) ^ v96)) ^ *(v91 + 4 * ((v133 ^ 0x182FE562u) >> 24)) ^ BYTE2(v137) ^ *(v94 + 4 * v138) ^ *(v93 + 4 * BYTE1(v136)) ^ 0xF0CB044C;
  v143 = a83 ^ BYTE2(v136) ^ *(v91 + 4 * HIBYTE(v137)) ^ *(v92 + 4 * (BYTE2(v136) ^ v96)) ^ v140 ^ *(v93 + 4 * BYTE1(v138)) ^ 0xDB1A1A72;
  v144 = BYTE2(v141) ^ a80 ^ *(v93 + 4 * BYTE1(v139)) ^ *(v92 + 4 * (BYTE2(v141) ^ v96)) ^ *(v91 + 4 * HIBYTE(v143)) ^ *(v94 + 4 * v142);
  v145 = a76 ^ *(v93 + 4 * BYTE1(v141)) ^ *(v91 + 4 * HIBYTE(v142)) ^ *(v92 + 4 * (BYTE2(v143) ^ v96)) ^ BYTE2(v143) ^ *(v94 + 4 * v139) ^ 0x86A0495F;
  v146 = a78 ^ BYTE2(v139) ^ *(v91 + 4 * HIBYTE(v141)) ^ *(v92 + 4 * (BYTE2(v139) ^ v96)) ^ *(v94 + 4 * v143) ^ *(v93 + 4 * BYTE1(v142)) ^ 0xF35A4D06;
  v147 = a77 ^ BYTE2(v142) ^ *(v91 + 4 * HIBYTE(v139)) ^ *(v94 + 4 * v141) ^ *(v93 + 4 * BYTE1(v143)) ^ *(v92 + 4 * (BYTE2(v142) ^ v96)) ^ 0x8C96BBAE;
  v148 = BYTE2(v145);
  v149 = *(v92 + 4 * (BYTE2(v145) ^ v96));
  v150 = BYTE2(v146) ^ a72 ^ *(v93 + 4 * BYTE1(v147)) ^ *(v91 + 4 * ((v144 ^ 0xBB0ADF20) >> 24)) ^ *(v94 + 4 * v145) ^ *(v92 + 4 * (BYTE2(v146) ^ v96));
  v151 = *(v93 + 4 * BYTE1(v145));
  v152 = *(v94 + 4 * v147) ^ a73 ^ ((v144 ^ 0xBB0ADF20) >> 16) ^ *(v92 + 4 * (((v144 ^ 0xBB0ADF20) >> 16) ^ v96)) ^ *(v91 + 4 * HIBYTE(v145)) ^ *(v93 + 4 * BYTE1(v146));
  v153 = v150 ^ 0x246231E7;
  v154 = *(v91 + 4 * HIBYTE(v146)) ^ a75 ^ BYTE2(v147) ^ v151 ^ *(v94 + 4 * (v144 ^ 0x20u)) ^ *(v92 + 4 * (BYTE2(v147) ^ v96));
  v155 = a74 ^ v148 ^ v149 ^ *(v93 + 4 * (BYTE1(v144) ^ 0x7Cu)) ^ *(v94 + 4 * v146) ^ *(v91 + 4 * HIBYTE(v147)) ^ 0x5BF8C758;
  v156 = *(v94 + 4 * (v150 ^ 0xF0u));
  v157 = *(v94 + 4 * (v152 ^ 0x50u));
  v158 = *(v91 + 4 * ((v152 ^ 0x29BDAA47u) >> 24));
  v159 = a32 ^ ((v152 ^ 0x29BDAA47u) >> 16) ^ *(v94 + 4 * (v154 ^ 0x4Bu)) ^ *(v93 + 4 * ((v150 ^ 0x31E7) >> 8)) ^ *(v92 + 4 * (((v152 ^ 0x29BDAA47u) >> 16) ^ v96)) ^ *(v91 + 4 * HIBYTE(v155));
  v160 = *(v92 + 4 * (BYTE2(v155) ^ v96)) ^ a69 ^ BYTE2(v155) ^ v156 ^ *(v91 + 4 * (HIBYTE(v154) ^ 0x2D)) ^ *(v93 + 4 * (BYTE1(v152) ^ 9u));
  v161 = *(v93 + 4 * BYTE1(v155)) ^ a70 ^ BYTE2(v154) ^ 0x93 ^ v157 ^ *(v91 + 4 * HIBYTE(v153)) ^ *(v92 + 4 * (BYTE2(v154) ^ 0x93 ^ v96));
  v162 = BYTE2(v153) ^ a68 ^ *(v94 + 4 * v155) ^ v158 ^ *(v92 + 4 * (BYTE2(v153) ^ 0x84u)) ^ *(v93 + 4 * ((v154 ^ 0x8A4B) >> 8));
  v163 = v160 ^ 0x29BFB298;
  v164 = *(v91 + 4 * (HIBYTE(v160) ^ 0xE8));
  v165 = *(v93 + 4 * ((v162 ^ 0x47A2) >> 8));
  v166 = BYTE2(v161);
  v167 = *(v93 + 4 * (BYTE1(v161) ^ 0xCEu)) ^ a66 ^ *(v94 + 4 * (v160 ^ 0x98u)) ^ ((v162 ^ 0x4D9947A2) >> 16) ^ *(v91 + 4 * (HIBYTE(v159) ^ 0x5F)) ^ *(v92 + 4 * (((v162 ^ 0x4D9947A2) >> 16) ^ v96));
  v168 = ((v159 ^ 0x9ED91819) >> 16);
  v169 = *(v92 + 4 * (v168 ^ v96));
  v170 = a63 ^ v168 ^ v164;
  v171 = *(v91 + 4 * (HIBYTE(v162) ^ 0x8C));
  v172 = a67 ^ BYTE2(v163) ^ *(v91 + 4 * (HIBYTE(v161) ^ 0x3F)) ^ *(v94 + 4 * (v162 ^ 0xA2u)) ^ *(v92 + 4 * (BYTE2(v163) ^ v96)) ^ *(v93 + 4 * (BYTE1(v159) ^ 0xB8u)) ^ 0xAA8A3008;
  v173 = v170 ^ v165 ^ *(v94 + 4 * (v161 ^ 0x6Eu)) ^ v169 ^ 0xB1B7A0E8;
  v174 = a65 ^ v166 ^ *(v92 + 4 * (v166 ^ 3u)) ^ *(v94 + 4 * (v159 ^ 0x19u)) ^ *(v93 + 4 * BYTE1(v163)) ^ v171 ^ 0x3CB268BF;
  v175 = BYTE2(v173) ^ a64 ^ *(v94 + 4 * (a65 ^ v166 ^ *(v92 + 4 * (v166 ^ 3u)) ^ *(v94 + 4 * (v159 ^ 0x19u)) ^ *(v93 + 4 * BYTE1(v163)) ^ v171 ^ 0xBF)) ^ __ROR4__(__ROR4__(*(v93 + 4 * (BYTE1(v167) ^ 0xEEu)), 30) ^ 0xF60B9485, 2) ^ *(v92 + 4 * (BYTE2(v173) ^ v96)) ^ *(v91 + 4 * HIBYTE(v172));
  v176 = *(v92 + 4 * (BYTE2(v172) ^ v96)) ^ a59 ^ *(v94 + 4 * (v167 ^ 0x4Cu)) ^ *(v91 + 4 * HIBYTE(v174)) ^ BYTE2(v172) ^ *(v93 + 4 * BYTE1(v173));
  v177 = BYTE2(v167) ^ 0x93 ^ a60 ^ *(v93 + 4 * BYTE1(v174)) ^ *(v91 + 4 * HIBYTE(v173)) ^ *(v92 + 4 * (BYTE2(v167) ^ 0x93 ^ v96)) ^ *(v94 + 4 * v172);
  v178 = a30 ^ BYTE2(v174) ^ *(v93 + 4 * BYTE1(v172)) ^ *(v94 + 4 * v173) ^ *(v92 + 4 * (BYTE2(v174) ^ v96)) ^ *(v91 + 4 * ((v167 ^ 0x14934D4Cu) >> 24)) ^ 0xFA5B330A;
  v179 = ((v175 ^ 0x378021B1) >> 16);
  v180 = v179 ^ a54 ^ *(v91 + 4 * ((v176 ^ 0x3C42ADCEu) >> 24)) ^ *(v93 + 4 * (BYTE1(v177) ^ 0x31u));
  v177 ^= 0xC01E91C5;
  v181 = v180 ^ *(v94 + 4 * v178) ^ *(v92 + 4 * (v179 ^ 0x84u));
  v182 = a58 ^ BYTE2(v177) ^ *(v92 + 4 * (BYTE2(v177) ^ v96)) ^ *(v91 + 4 * (HIBYTE(v175) ^ 0xF6)) ^ *(v93 + 4 * BYTE1(v178)) ^ *(v94 + 4 * (v176 ^ 0xD9u)) ^ 0xC70F99F6;
  v183 = a56 ^ BYTE2(v176) ^ 0x42 ^ *(v92 + 4 * (BYTE2(v176) ^ 0x42 ^ v96)) ^ *(v93 + 4 * (BYTE1(v175) ^ 0x82u)) ^ *(v94 + 4 * v177) ^ *(v91 + 4 * HIBYTE(v178)) ^ 0xD88B257B;
  v184 = a50 ^ BYTE2(v178) ^ *(v93 + 4 * ((v176 ^ 0xADCE) >> 8)) ^ *(v91 + 4 * HIBYTE(v177)) ^ *(v94 + 4 * (v175 ^ 0xB1u)) ^ *(v92 + 4 * (BYTE2(v178) ^ 0x84u)) ^ 0xD82DE09A;
  v185 = *(v94 + 4 * (a50 ^ BYTE2(v178) ^ *(v93 + 4 * ((v176 ^ 0xADCE) >> 8)) ^ *(v91 + 4 * HIBYTE(v177)) ^ *(v94 + 4 * (v175 ^ 0xB1u)) ^ *(v92 + 4 * (BYTE2(v178) ^ 0x84u)) ^ 0x9A)) ^ a29 ^ *(v93 + 4 * BYTE1(v182)) ^ ((v181 ^ 0x968B0C87) >> 16) ^ *(v92 + 4 * (((v181 ^ 0x968B0C87) >> 16) ^ 0x84u)) ^ *(v91 + 4 * HIBYTE(v183));
  v186 = *(v93 + 4 * BYTE1(v183));
  v187 = *(v94 + 4 * v183);
  v188 = BYTE2(v183) ^ a48 ^ *(v94 + 4 * v182) ^ *(v92 + 4 * (BYTE2(v183) ^ v96)) ^ (*(v93 + 4 * (BYTE1(v181) ^ 0xACu)) ^ *(v91 + 4 * HIBYTE(v184)));
  v189 = BYTE2(v184);
  v190 = *(v92 + 4 * (BYTE2(v184) ^ 0x84u));
  v191 = v187 ^ a46 ^ BYTE2(v182) ^ *(v91 + 4 * (HIBYTE(v181) ^ 0x57)) ^ *(v93 + 4 * BYTE1(v184)) ^ *(v92 + 4 * (BYTE2(v182) ^ v96));
  v192 = v186 ^ a52 ^ v189 ^ v190 ^ (*(v91 + 4 * HIBYTE(v182)) ^ *(v94 + 4 * (v181 ^ 0x87u)));
  v194 = *(v97 - 200);
  v193 = *(v97 - 192);
  v195 = *(v97 - 208);
  v196 = *(v97 - 224);
  v197 = *(v193 + 4 * ((v188 ^ 0x6E6CD7FF) >> 16)) ^ a45 ^ *(v195 + 4 * ((v185 ^ 0x812F) >> 8)) ^ (*(v194 + 4 * (BYTE3(v192) ^ 0x7B)) ^ *(v196 + 4 * (v191 ^ 0xCEu)));
  v198 = *(v196 + 4 * (v192 ^ 0x56u));
  v199 = *(v194 + 4 * ((v188 ^ 0x6E6CD7FF) >> 24)) ^ *(v195 + 4 * (BYTE1(v191) ^ 0xC5u));
  v200 = v198 ^ a20;
  v201 = v200 ^ v199 ^ *(v193 + 4 * ((v185 ^ 0x74C812Fu) >> 16));
  v202 = (((v90 ^ 0x98E8170A) + 1729620214) ^ ((v90 ^ 0xCAA2789E) + 895321954) ^ ((v90 ^ 0xEE2AE375) + 299179147)) - 238937244;
  v203 = ((v202 ^ 0x7112C7B9) - 1148406218) ^ v202 ^ ((v202 ^ 0x680ED11C) - 1567580015) ^ ((v202 ^ 0xC2826669) + 136058854) ^ ((v202 ^ 0xEEFFFEBF) + 610373428);
  v204 = (((v203 ^ 0x1EECD2BB) + 1746022359) ^ ((v203 ^ 0xC38E1F52) - 1250893248) ^ ((v203 ^ 0xE803439A) - 1627537672)) - 2003847972;
  v205 = *(v97 - 144) ^ (v204 < 0xCC2F27FB);
  v206 = v204 < *(v97 - 132);
  if (v205)
  {
    v206 = *(v97 - 144);
  }

  return (*(*(v97 - 184) + 8 * (*(v97 - 152) | (2 * v206))))(v200, v197, 238, v188, v201, v192, v98, v198, a9);
}

uint64_t sub_10030DD60@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = (((((a1 - 27399) | 0x8004u) ^ 0x63A7B6AE490225C2 ^ *(*(a4 + 16) + 8)) - 0x63A7B6AE490285C4) ^ ((*(*(a4 + 16) + 8) ^ (((a1 - 1897335818) & 0x7116E7BD) + 0x3DE40948F6CF8391)) - 0x3DE40948F6CFEA4ELL) ^ ((*(*(a4 + 16) + 8) ^ 0x57C286EA9020FDCCLL) - 0x57C286EA9020FDCCLL)) + 0x981390C6B505339;
  v8 = (((*(v6 + 8) ^ 0x1E8F8D2580256F8FLL) - 0x1E8F8D2580256F8FLL) ^ ((*(v6 + 8) ^ 0x4CEAA5BCE676AC86) - 0x4CEAA5BCE676AC86) ^ ((*(v6 + 8) ^ 0x5BE4119549BE514FLL) - 0x5BE4119549BE514FLL)) + 0x981390C6B505339;
  v9 = (v8 < 0x3B62C0F3) ^ (v7 < 0x3B62C0F3);
  v10 = v7 < v8;
  if (v9)
  {
    v10 = v8 < 0x3B62C0F3;
  }

  HIDWORD(a5) = *(v6 + 16);
  return (*(v5 + 8 * ((v10 | (2 * v10)) ^ a1)))(12912, 2083819074, 649291712, 4294947088, 4128, 3645679055, 0xDF82C770FDCC01FELL, 0x207D388F0233FE02, a2, a3, a4, a5);
}

uint64_t sub_10030DF9C(uint64_t a1, uint64_t a2)
{
  v3 = LODWORD(STACK[0x62B0]);
  STACK[0x7690] -= 48;
  return (*(STACK[0xF18] + 8 * (((((3 * (v2 ^ 0xA5D0)) ^ 0xAD3D) + ((v2 - 542191002) & 0x2050BDFE)) * (v3 == -371865839)) ^ v2)))(a1, a2, v3);
}

uint64_t sub_10030E034()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 16093)))();
  *(v1 + 24) = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_10030E124()
{
  v0 = (STACK[0xF10] + 620721341) & 0xDB00677F;
  v1 = STACK[0xF10] - 34591;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 21377) ^ v1)))();
}

uint64_t sub_10030E17C()
{
  v0 = LODWORD(STACK[0x508]) | 0x1A99;
  v1 = STACK[0xF18];
  STACK[0x6728] = *(STACK[0xF18] + 8 * SLODWORD(STACK[0x500]));
  return (*(v1 + 8 * (LODWORD(STACK[0x4F8]) ^ v0)))();
}

uint64_t sub_10030E1BC()
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
  STACK[0xC2B0] = 0;
  STACK[0xC2B8] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC2B0] | v10);
  *(&STACK[0xC2B0] | v10) = 0;
  LOBYTE(STACK[0xC2B7]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC2B0] | v12);
  *(&STACK[0xC2B0] | v12) = STACK[0xC2B6];
  LOBYTE(STACK[0xC2B6]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC2B0] | v14);
  *(&STACK[0xC2B0] | v14) = STACK[0xC2B5];
  LOBYTE(STACK[0xC2B5]) = v15;
  v16 = STACK[0xC2B0];
  LOBYTE(STACK[0xC2B0]) = STACK[0xC2B4];
  LOBYTE(STACK[0xC2B4]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC2B0] | v17);
  *(&STACK[0xC2B0] | v17) = STACK[0xC2B3];
  LOBYTE(STACK[0xC2B3]) = v18;
  v19 = STACK[0xC2B1];
  LOBYTE(STACK[0xC2B2]) = STACK[0xC2B0];
  LOWORD(STACK[0xC2B0]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC2B0] = vmla_s32(v22, STACK[0xC2B0], vdup_n_s32(0x1000193u));
  STACK[0xC2B8] ^= STACK[0xC2B0];
  STACK[0xC2B8] = vmul_s32(vsub_s32(STACK[0xC2B8], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC2BA];
  LOWORD(STACK[0xC2B9]) = STACK[0xC2B8];
  LOBYTE(STACK[0xC2B8]) = v23;
  v24 = (&STACK[0xC2B8] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC2BB];
  LOBYTE(STACK[0xC2BB]) = v19;
  LOBYTE(v24) = STACK[0xC2B8];
  LOBYTE(STACK[0xC2B8]) = STACK[0xC2BC];
  LOBYTE(STACK[0xC2BC]) = v24;
  v25 = (&STACK[0xC2B8] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC2BD];
  LOBYTE(STACK[0xC2BD]) = v24;
  v26 = (&STACK[0xC2B8] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC2BE];
  LOBYTE(STACK[0xC2BE]) = v25;
  v27 = (&STACK[0xC2B8] | v10);
  v28 = *v27;
  *v27 = STACK[0xC2BF];
  LOBYTE(STACK[0xC2BF]) = v28;
  v29 = STACK[0xC2B8];
  v30 = (553300517 * STACK[0xC2B8]) ^ v9;
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
  *v43 = STACK[0xC2B8];
  return (*(STACK[0xF18] + 8 * (v1 - 10245)))(v48, v49);
}

uint64_t sub_10030E64C()
{
  v0 = STACK[0xF10] - 29678;
  v1 = STACK[0x5B58];
  v2 = STACK[0x7690];
  v3 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x1510] = v3;
  STACK[0x1B58] = (v3 + 104);
  STACK[0x7690] = v2 + 320;
  STACK[0x6990] = v1;
  STACK[0x5C50] = 0x3AE1413A0D5C9D2ALL;
  LODWORD(STACK[0x1374]) = -651411810;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10030E738@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W8>)
{
  *(a2 + ((v3 + v7) ^ v8) + a3) = *(v6 + v5);
  v10 = (a3 + a1) ^ v3;
  v11 = __clz(v10 | 1);
  return (*(v9 + 8 * (v4 ^ (((v10 & v3) >> (v11 ^ 0x1F)) & 1 | (16 * (((v10 & v3) >> (v11 ^ 0x1F)) & 1))))))();
}

uint64_t sub_10030E78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v24 = v13 - 1;
  v25 = __ROR8__((v15 + v24) & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = a6 - (((v22 - v25) | a5) + ((v25 + v16) | v20));
  v27 = v26 ^ v21;
  v28 = v26 ^ v7;
  v29 = __ROR8__(v27, 8);
  v30 = ((v8 & (2 * (v29 + v28))) - (v29 + v28) + v6) ^ v14;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v17;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v10;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((v36 + v35) | v11) - ((v36 + v35) | v9) + v9) ^ a4;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v19;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ v23;
  *(a1 + v24 + a2) = (((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v40, 61))) ^ v18) >> (8 * ((v15 + v24) & 7))) ^ *(v15 + v24);
  return (*(STACK[0xF18] + 8 * (((v24 == 0) * v12) ^ a3)))();
}

uint64_t sub_10030EA3C@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 + a1 + 4065 - 1810)))();
}

uint64_t sub_10030EA7C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, unsigned int *a8)
{
  *a7 = v9;
  v11 = (*(v8 + 66) | ((*(v8 + 66) >> 1 < 0xCA7u) << 16)) + 300753765;
  *a8 = v11 ^ ((v11 ^ 0x4D09BEC) - 356362078) ^ (((a1 - 28635) | 0x2C2A) - 1606574603 + (v11 ^ 0x4E2F093F)) ^ ((v11 ^ 0x24FD509F) - 890268717) ^ ((v11 ^ 0x7FEFFEFE) - 1845674572) ^ 0xF838FBA3;
  return (*(v10 + 8 * a1))();
}

uint64_t sub_10030EB50(int a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  v16 = v9 < v11;
  v17 = a7 + a1;
  v18 = v8 + (*(*(v15 + 8) + 4 * v17) ^ ((v10 ^ v12) + a2)) - (*(*(v14 + 8) + 4 * v17) ^ a3) + a4;
  *(*(v7 + 8) + 4 * v17) = v18 - (a5 & (2 * v18)) + a3;
  v19 = a7 + a6;
  v20 = v16 ^ (v19 < v11);
  v21 = v19 < v9;
  if (!v20)
  {
    v16 = v21;
  }

  return (*(v13 + 8 * ((32 * v16) | (v16 << 6) | v10)))();
}

uint64_t sub_10030EBE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v49 = (*(v47 + 8 * (v45 ^ 0x6BAA)))(((v45 - 33543) ^ 0xCE30D4DB) + 4987 * (v45 ^ 0xA130) + a3);
  if ((v46 & 4) != 0)
  {
    a45 = v49;
  }

  v51 = *(v48 - 256);
  if ((v46 & 4) == 0)
  {
    v51 = v49;
  }

  *(v48 - 256) = v51;
  return (*(v47 + 8 * ((73 * ((a45 | v51) != 0)) ^ v45)))();
}

uint64_t sub_10030ED40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, int a13)
{
  v17 = *(v13 + 4 * ((0x9ED10ECD % (v14 >> 2)) & 0x3FFFFFFC));
  v18 = ~*(v13 + 4 * (((v14 >> 2) - 1) & v17));
  v19 = *(v16 + 8 * a12);
  v20 = *(v19 - 527405895);
  v21 = *(v16 + 8 * a11) + 4 * v20;
  v22 = *(v21 - 1940437438);
  v24 = *&v18 & (~v17 >> 16);
  v23 = v24 == 0;
  v25 = v24 + v24 * v22;
  v26 = v23;
  if (v23)
  {
    v27 = *(v21 - 1940437438);
  }

  else
  {
    v27 = 0;
  }

  *(v21 - 1940437438) = (v25 + v27) * v22;
  *(v19 - 527405895) = (v20 + 1) % 6u;
  return (*(v15 + 8 * ((38 * v26) | a13)))();
}

uint64_t sub_10030EEA0()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 30042)))(32);
  STACK[0x8810] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 - 11165) | 0x800A) ^ 0xA9CF)) ^ v0)))();
}

uint64_t sub_10030EF08@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * ((44 * (a1 ^ 0x62A) - 21469) ^ a1)))();
}

uint64_t sub_10030EF6C()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 21494;
  v2 = STACK[0x7C90];
  v3 = STACK[0x9268];
  LODWORD(STACK[0x9964]) = STACK[0x9268];
  STACK[0x3288] = v2;
  if (v2)
  {
    v4 = v3 == v0 - 371901482;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(STACK[0xF18] + 8 * ((v5 | (32 * v5)) ^ v1)))();
}

uint64_t sub_10030EFC8()
{
  v1 = STACK[0xBC0];
  v2 = STACK[0xBC0] < 0xC774D793;
  v3 = STACK[0xF10] + 11834;
  v4 = STACK[0xB00] + (v0 ^ 0xE9D5C711);
  v5 = STACK[0xF10] + 13353;
  LODWORD(STACK[0x9F94]) = v0;
  STACK[0x9F98] = v4;
  v6 = v4 + 3346323347u;
  v7 = v4 > (v3 ^ 0xFFFFFFFF388B9119);
  v8 = v6 > v1;
  if (v2 != v7)
  {
    v8 = v7;
  }

  return (*(STACK[0xF18] + 8 * ((22 * !v8) ^ v5)))();
}

uint64_t sub_10030F188()
{
  v1 = STACK[0xF10] - 28427;
  *(STACK[0x6A78] + 132) = v0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10030F38C(__n128 a1)
{
  v4.n128_u64[0] = (v1 + 13) & 0xF;
  v4.n128_u64[1] = (v1 + 12) & 0xF;
  v5.n128_u64[0] = (v1 + 11) & 0xF;
  v5.n128_u64[1] = (v1 + 10) & 0xF;
  v6.n128_u64[0] = (v1 + 9) & 0xF;
  v6.n128_u64[1] = v2 & 0xF ^ 0xELL;
  v9.val[0].i64[0] = (v1 + 7) & 0xF;
  v9.val[0].i64[1] = (v1 + 6) & 0xF;
  v9.val[1].i64[0] = (v1 + 5) & 0xF;
  v9.val[1].i64[1] = (v1 + 4) & 0xF;
  v9.val[2].i64[0] = (v1 + 3) & 0xF;
  v9.val[2].i64[1] = (v1 + 2) & 0xF;
  v9.val[3].i64[0] = (v1 + 1) & 0xF;
  v9.val[3].i64[1] = v1 & 0xF;
  v7.n128_u64[0] = 0xD9D9D9D9D9D9D9D9;
  v7.n128_u64[1] = 0xD9D9D9D9D9D9D9D9;
  return (*(STACK[0x290] + 8 * v3))((v1 + 14) & 0xF, (v3 - 1921591746) & 0x72896E7F, v1 - 16, (v1 & 0x10) - 16, a1, v4, v5, v6, xmmword_100BC76B0, vqtbl4q_s8(v9, xmmword_100BC76B0), v7);
}

uint64_t sub_10030F488()
{
  v8 = ((((v5 ^ 0x7A) - 53) ^ (-61 * (v5 ^ 0x7A))) + v4) & 0xF;
  v9 = -v6 - v4;
  v11 = (v0 - v6) > 0xF && (v9 + 1 + v1 + v8) > 0xF && (v9 + 1 + v2 + v8) > 0xF;
  v12 = v9 + v3 + v8 + 4;
  v14 = v11 && v12 > 0xF;
  return (*(v7 + 8 * ((247 * v14) ^ v5)))();
}

void sub_10030F514(uint64_t a1, uint64_t a2, int a3)
{
  if ((a3 ^ 0x6FF3BFF2) + ((2 * a3) & 0xDFE630C0) == 1878245362)
  {
    v3 = -371865839;
  }

  else
  {
    v3 = 371891401;
  }

  *(v4 + 32) = v3;
}

uint64_t sub_10030F630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10];
  *(a7 + 61) = STACK[0x9894];
  return (*(STACK[0xF18] + 8 * (v7 - 28266)))();
}

uint64_t sub_10030F6B4(int a1, int a2, int a3, int a4, int a5, int a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v31 = *v29;
  v32 = *(v30 + 8 * v20) ^ v23;
  v33 = (a1 & (2 * v27)) + (v27 ^ v24);
  v34 = (v17 ^ v22) + v32 - (v18 & (2 * v32)) + a2;
  *(*v29 + (v33 + a3)) = HIBYTE(v34) ^ 0xFB;
  *(v31 + (v33 + a4)) = v19 ^ BYTE2(v34);
  *(v31 + (v33 + a5)) = BYTE1(v34) ^ 2;
  *(v31 + (v33 + a6)) = v34 ^ 0x70;
  v35 = *(a17 + 4 * v20);
  v36 = *v29;
  *(*v29 + (v27 + 4)) = a7 ^ HIBYTE(v35);
  *(v36 + (v27 + 5)) = a8 ^ BYTE2(v35);
  *(v36 + (v27 + 6)) = BYTE1(v35) ^ 0xC7;
  *(v36 + (v27 + 7)) = v35 ^ 0x11;
  return (*(v28 + 8 * (((((v20 + 1 - v26) | (v26 - (v20 + 1))) >= 0) * v25) ^ v21)))();
}

uint64_t sub_10030F7E4()
{
  v4 = *(STACK[0x978] + v2);
  v5 = v2 - 1;
  *(v3 + v5) = *(v1 + v5) ^ *(STACK[0x988] + v5) ^ (111 * v5) ^ *(STACK[0x980] + v5) ^ v4 ^ 0x5F;
  return (*(STACK[0xF18] + 8 * (((v5 != 0) * (((v0 + 243587584) & 0xF17B9B3B) - 34663)) ^ v0)))();
}

uint64_t sub_10030F864(uint64_t a1, uint64_t a2, int a3)
{
  v5 = STACK[0xDD0];
  LODWORD(STACK[0x825C]) = a3;
  LODWORD(STACK[0x3FA8]) = STACK[0xEB0];
  LODWORD(STACK[0x659C]) = STACK[0xEC0];
  LODWORD(STACK[0x1370]) = STACK[0xED0];
  LODWORD(STACK[0x5D04]) = v3;
  LODWORD(STACK[0x8A44]) = v4;
  return (*(STACK[0xF18] + 8 * v5))();
}

uint64_t sub_10030F994()
{
  v3 = (v2 + 196861346) ^ v0;
  LODWORD(STACK[0x10EF0]) = v3 ^ 0x12C3;
  STACK[0x10ED8] = v1 ^ v0;
  STACK[0x10EE8] = v0 ^ 0xF9B3D085;
  LODWORD(STACK[0x10F00]) = v2 - v0 - 1781272532;
  LODWORD(STACK[0x10EF8]) = v0;
  LODWORD(STACK[0x10EF4]) = ((v2 + 196861346) ^ 0x18B) - v0;
  LODWORD(STACK[0x10EE0]) = v3;
  v4 = v2 + 16198;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * v4))(&STACK[0x10ED8]);
  return (*(v5 + 8 * SLODWORD(STACK[0x10EFC])))(v6);
}

uint64_t sub_10030FAE4()
{
  v1 = STACK[0xF18];
  v2 = *(v1 + 8 * ((((*(STACK[0xF18] + 8 * (v0 ^ 0xD141)))(64) == 0) * ((v0 - 405995703) ^ v0 ^ 0xE7CD00FD)) ^ v0));
  return v2();
}

uint64_t sub_10030FB40()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4192)))();
  *(v0 + 24) = 0;
  return (*(v2 + 8 * (v1 - 8330)))(v3);
}

uint64_t sub_10030FBB0()
{
  v1 = STACK[0x4B60];
  v2 = STACK[0xA738];
  v3 = ((LODWORD(STACK[0x8188]) ^ 0xB78B148E) + 1215622002) ^ ((LODWORD(STACK[0x8188]) ^ 0x98A7DA34) + 1733830092) ^ ((LODWORD(STACK[0x8188]) ^ 0xC6F909AB) + 956757589);
  v4 = STACK[0x3A70];
  v5 = 1112314453 * ((((&STACK[0x10000] + 3800) | 0x1A9B638D) - ((&STACK[0x10000] + 3800) & 0x1A9B6388)) ^ 0xF5CD4954);
  LOWORD(STACK[0x10ED8]) = -28075 * ((((&STACK[0x10000] + 3800) | 0x638D) - ((&STACK[0x10000] + 3800) & 0x6388)) ^ 0x4954) + 3771;
  LODWORD(STACK[0x10EF0]) = v5 + ((v0 + 321615634) & 0xECD4F73D) + 1599993265 * v3 - 1152279407;
  STACK[0x10EE8] = v4;
  STACK[0x10EE0] = v2;
  STACK[0x10EF8] = v1;
  LODWORD(STACK[0x10EDC]) = (v0 + 679183762) ^ v5;
  v6 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0xEC3D)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * v0))(28240, 38172, -8496, 41917);
}

uint64_t sub_10030FE38()
{
  v1 = STACK[0xF10] + 70;
  v2 = STACK[0xF10] - 9514;
  LODWORD(STACK[0xA52C]) = v0;
  v3 = STACK[0xB4B8];
  LODWORD(STACK[0xA530]) = LODWORD(STACK[0xB4B8]) + 8;
  v3 -= 307769449;
  v4 = *(STACK[0x6850] + 128) - 634467603;
  v5 = v3 < 0x15544C17;
  v6 = v3 > v4;
  if (v5 != v4 < 0x15544C17)
  {
    v6 = v5;
  }

  if (v6)
  {
    v7 = -42018;
  }

  else
  {
    v7 = STACK[0xB4C0];
  }

  LODWORD(STACK[0xB4C4]) = v7;
  return (*(STACK[0xF18] + 8 * ((62 * ((v1 ^ (v7 == 0)) & 1)) ^ v2)))();
}

uint64_t sub_10030FF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26)
{
  LODWORD(a13) = a26 - 32829;
  HIDWORD(v31) = a26 + 1633249765;
  LODWORD(v31) = a26 - 37482;
  HIDWORD(v30) = a26 ^ 0x849B;
  HIDWORD(v33) = a26 - 4662;
  LODWORD(v32) = ((*(a10 + 72) - v28) ^ 0xFFFFC3F5) + 27993;
  HIDWORD(v32) = a26 - 14186;
  LODWORD(v33) = (a26 - 14186) ^ 0x5944C255;
  LODWORD(v30) = a26 - 21678;
  return (*(v27 + 8 * ((((v26 + 254) | 0x9100) ^ 0xD6B0) + v26)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v30, v31, a13, v32, v33, *(a10 + 16));
}

uint64_t sub_1003104A0()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 28784;
  v2 = STACK[0x94D0];
  v3 = STACK[0x4F58];
  v4 = STACK[0x1B28] + 4;
  v5 = STACK[0x7CF0];
  v6 = STACK[0x369C];
  v7 = 139493411 * ((&STACK[0x10000] + 3800) ^ 0xC2DE145);
  LODWORD(STACK[0x10EF0]) = STACK[0xF10] - v7 - 1157;
  LODWORD(STACK[0x10ED8]) = ((v6 ^ 0x4F3BDF26) - 69353474 + ((2 * v6) & 0x9E77BE4C)) ^ v7;
  STACK[0x10EF8] = v4;
  STACK[0x10F00] = v2;
  STACK[0x10EE8] = v5;
  STACK[0x10EE0] = v3;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * (v0 ^ 0x40F1)))(&STACK[0x10ED8]);
  return (*(v8 + 8 * ((14454 * (LODWORD(STACK[0x10EDC]) == (v0 ^ 0xE9D54C2A))) ^ v1)))(v9);
}

uint64_t sub_1003107C4@<X0>(int a1@<W8>, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v10 = *(v7 + 24);
  v11 = v6 + a1 - (((v6 + a1) << (v8 - 88)) & 0x61A17464) - 254756302;
  v12 = 906386353 * ((((2 * &a2) | 0x64D354A2) - &a2 + 1301697967) ^ 0x83686775);
  a2 = *(v7 + 8);
  a3 = v12 - 7855 + v8;
  a4 = v11 ^ v12;
  a5 = 0;
  a6 = v10;
  v13 = (*(v9 + 8 * (v8 ^ 0xF14C)))(&a2);
  return (*(v9 + 8 * v8))(v13);
}

uint64_t sub_100310874()
{
  STACK[0x2D18] = v0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xD7DE)))(*(STACK[0x820] - 1306953403), &STACK[0x1728], STACK[0xD00], 1);
  return (*(v2 + 8 * ((17117 * (((2 * v3) & 0x5FFFFFDE) + (v3 ^ 0x2FFFFFEF) == (v1 ^ 0x10EC) + 805303189)) ^ v1)))();
}

uint64_t sub_100310980(uint64_t a1)
{
  v3 = *(v1 + 4);
  v4 = *(v1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 12) = 44;
  *a1 = 0;
  v5 = STACK[0x8D08];
  *(v5 + 8) = 0;
  *(v5 + 40) = 0;
  v7 = v3 != ((v2 + 1354260673) ^ 0x50B8C066) - 23449 && v4 != 0;
  return (*(STACK[0xF18] + 8 * ((107 * v7) ^ v2)))();
}

uint64_t sub_100310A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  STACK[0x4770] = 0;
  LODWORD(STACK[0x2E84]) = -371865839;
  STACK[0x88B0] = 0;
  LODWORD(STACK[0x394C]) = -371865839;
  return (*(STACK[0xF18] + 8 * (((v3 == ((a3 - 18322) ^ 0xE9D5C36E)) * ((3 * (a3 ^ 0x6279)) ^ 0x92D5)) ^ a3)))(a1, a2, 371891535);
}

uint64_t sub_100310A8C(uint64_t a1)
{
  v3 = STACK[0xF10];
  *(v2 + 32 * a1 + 16) = v1 ^ 0xEEF28F30035FB8BFLL;
  LODWORD(STACK[0x998C]) = STACK[0xEB0] + 579252674;
  return (*(STACK[0xF18] + 8 * (v3 - 29888)))();
}

uint64_t sub_100310C38()
{
  v1 = *(STACK[0xF18] + 8 * v0);
  v2 = STACK[0xF10];
  v3 = STACK[0xF10] + 13053;
  LODWORD(STACK[0xEB0]) = STACK[0xF10] - 26788;
  LODWORD(STACK[0xEA0]) = v2 - 8271;
  LODWORD(STACK[0xE70]) = v3;
  v3 *= 2;
  LODWORD(STACK[0xE30]) = v3;
  LODWORD(STACK[0xE60]) = v3 ^ 0xE9D4BB41;
  LODWORD(STACK[0xEC0]) = v2 - 1349555305;
  LODWORD(STACK[0xE90]) = v2 + 331718748;
  v4 = (v2 - 15031) | 0x919;
  LODWORD(STACK[0xE40]) = v4;
  LODWORD(STACK[0xE80]) = v4 ^ 0xC08;
  return v1(-35645, 0);
}

uint64_t sub_100310D24(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xF10] - 27257;
  STACK[0x95A0] = STACK[0x5B28];
  LOWORD(STACK[0x79DE]) = 6957;
  LODWORD(STACK[0x16B4]) = -186175802;
  return (*(STACK[0xF18] + 8 * v2))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_100310D74()
{
  v2 = ((v1 - 13193) | 0x3940) + (((LODWORD(STACK[0x2A78]) ^ 0x71787148) - 1903718728) ^ ((LODWORD(STACK[0x2A78]) ^ 0xEDDC7AE1) + 304317727) ^ ((LODWORD(STACK[0x2A78]) ^ 0x7571CCB8) - 1970392248)) - 393552215;
  v4 = v2 > 0xFEB55157 && v2 < v0 - 555217861;
  return (*(STACK[0xF18] + 8 * (v1 ^ (16 * v4))))();
}

uint64_t sub_100310E2C()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 5989;
  v3 = (((v0 ^ 0x332E4CEC) - 503279114) ^ ((v0 ^ 0xD925B68E) + 134966168) ^ ((v0 ^ 0x2D0F1F95) - 64896371)) + 1477260789;
  v4 = (v3 ^ 0x1D8A8499) & (2 * (v3 & 0x91C8911D)) ^ v3 & 0x91C8911D;
  v5 = ((2 * (v3 ^ 0x1D1A86AB)) ^ 0x19A42F6C) & (v3 ^ 0x1D1A86AB) ^ (2 * (v3 ^ 0x1D1A86AB)) & 0x8CD217B6;
  v6 = v5 ^ 0x84521092;
  v7 = (v5 ^ 0x8000424) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0x33485ED8) & v6 ^ (4 * v6) & 0x8CD217B0;
  v9 = (v8 ^ 0x401690) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x8C920126)) ^ 0xCD217B60) & (v8 ^ 0x8C920126) ^ (16 * (v8 ^ 0x8C920126)) & 0x8CD217A0;
  v11 = v9 ^ 0x8CD217B6 ^ (v10 ^ 0x8C001300) & (v9 << 8);
  v12 = v3 ^ (2 * ((v11 << 16) & 0xCD20000 ^ v11 ^ ((v11 << 16) ^ 0x17B60000) & (((v10 ^ 0xD20496) << 8) & 0xCD20000 ^ 0xCC00000 ^ (((v10 ^ 0xD20496) << 8) ^ 0x52170000) & (v10 ^ 0xD20496)))) ^ 0x4DC227DB;
  v13 = 0x1B4E81B4E81B4E9 * (((v12 ^ 0xBC4527D87F7D9A03) + 0x43BAD827808265FDLL) ^ ((v12 ^ 0x6B258FD107E74FA3) - 0x6B258FD107E74FA3) ^ ((v12 ^ 0xD760A809B4104C0ALL) + 0x289F57F64BEFB3F6)) + 0x5F7775F91BA8F96ELL;
  v14 = v13 ^ ((v13 ^ 0xBA2741C68A22BD14) + 0x788DEDEF3710D760) ^ ((v13 ^ 0xB85410A2BE0C24DDLL) + 0x7AFEBC8B033E4E97) ^ ((v13 ^ 0x8023FD6FA910F342) + 0x428951461422990ALL) ^ ((v13 ^ 0xBF05FFDDDFF3FF3FLL) + 0x7DAF53F462C19575);
  v15 = ((v14 ^ 0x43DB894C5C0D2342) + 0x720B87933A7F3411) ^ ((v14 ^ 0x590C89DB1CB45A6CLL) + 0x68DC87047AC64D3FLL);
  LODWORD(v14) = __CFADD__(150 * (v15 ^ ((v14 ^ 0x278253410274EC9ALL) + 0x16525D9E6406FBC9)), 0xA9DB7CA477C94CA6) + (((v15 ^ ((v14 ^ 0x278253410274EC9ALL) + 0x16525D9E6406FBC9)) * 0x96uLL) >> 64) + 150 * ((__CFADD__(v14 ^ 0x43DB894C5C0D2342, 0x720B87933A7F3411) - 1) ^ (__CFADD__(v14 ^ 0x590C89DB1CB45A6CLL, 0x68DC87047AC64D3FLL) - 1) ^ (__CFADD__(v14 ^ 0x278253410274EC9ALL, 0x16525D9E6406FBC9) - 1)) + 1259647963;
  v16 = (v14 ^ 0xA4EB4A22) & (2 * (v14 & 0xB4EB4CB3)) ^ v14 & 0xB4EB4CB3;
  LODWORD(v15) = ((2 * (v14 ^ 0xCCED5B02)) ^ 0xF00C2F62) & (v14 ^ 0xCCED5B02) ^ (2 * (v14 ^ 0xCCED5B02)) & 0x780617B0;
  v17 = v15 ^ 0x8021091;
  LODWORD(v15) = (v15 ^ 0x70040700) & (4 * v16) ^ v16;
  v18 = ((4 * v17) ^ 0xE0185EC4) & v17 ^ (4 * v17) & 0x780617B0;
  LODWORD(v15) = (v18 ^ 0x60001680) & (16 * v15) ^ v15;
  v19 = ((16 * (v18 ^ 0x18060131)) ^ 0x80617B10) & (v18 ^ 0x18060131) ^ (16 * (v18 ^ 0x18060131)) & 0x78061790;
  LODWORD(v15) = v15 ^ 0x780617B1 ^ (v19 ^ 0x1300) & (v15 << 8);
  LODWORD(v14) = v14 ^ (2 * ((v15 << 16) & 0x78060000 ^ v15 ^ ((v15 << 16) ^ 0x17B10000) & (((v19 ^ 0x780604A1) << 8) & 0x78060000 ^ (((v19 ^ 0x780604A1) << 8) ^ 0x6170000) & (v19 ^ 0x780604A1) ^ 0x78000000)));
  LODWORD(STACK[0x285C]) = v14 ^ 0x8D32A4C0;
  LODWORD(v15) = ((v14 ^ 0x843ED681) - 151810625) ^ ((v14 ^ 0x1005914B) + 1657326197) ^ ((v14 ^ 0xF0DC241B) - 2112782555);
  LOBYTE(v14) = ((v14 ^ 0xB3) - 115) ^ ((v14 ^ 0x6F) + 81) ^ ((v14 ^ 0xD) + 51);
  LODWORD(v14) = (((((v14 - 86) ^ 0xF9) + 12) ^ (3 - v14)) ^ (((v14 - 86) ^ 0xE) + 13)) & 0xF;
  LODWORD(v14) = v15 - (((v14 ^ 0xDA0FB137) - 438613747) ^ ((v14 ^ 0x9F9AE231) - 1605494261) ^ ((v14 ^ 0x45955306) + 2051124030)) - 1353256535;
  LODWORD(v14) = ((v14 ^ 0x91146D9F) - 347627427) ^ v14 ^ ((v14 ^ 0x3AEA1E1F) + 1085920221) ^ ((v14 ^ 0x79ADBE41) + 67007363) ^ ((v14 ^ 0x57FFFFFD) + 766259775);
  LODWORD(STACK[0x91AC]) = v14 ^ 0x6C79F52D;
  v20 = STACK[0xF18];
  v21 = (*(STACK[0xF18] + 8 * (v1 + 16221)))(v14 ^ 0x85AC323C);
  STACK[0x8208] = v21;
  STACK[0x14E8] = v21;
  return (*(v20 + 8 * ((61 * (v21 != 0)) ^ v2)))();
}

uint64_t sub_100311554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0xF10] - 34795;
  LODWORD(STACK[0x3AC4]) += 4;
  return (*(STACK[0xF18] + 8 * (v6 ^ 0x152B)))(a1, a2, a3, a4, a5, a6, &STACK[0xA237]);
}

uint64_t sub_1003115A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] - 10023;
  LODWORD(STACK[0x506C]) = a3;
  v5 = STACK[0x6490];
  STACK[0x5818] = STACK[0x6490];
  return (*(STACK[0xF18] + 8 * (((v5 == 0) * (v3 ^ 0x8B0A)) ^ v4)))(a1, a2, 371891400);
}

uint64_t sub_1003115EC()
{
  STACK[0x8FE8] = *(STACK[0x6508] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v1;
  LODWORD(STACK[0x7FD8]) = 1751212916;
  LODWORD(STACK[0x704C]) = -2116087553;
  LODWORD(STACK[0x4A8C]) = -371865837;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * (v0 - 8805)))();
}

uint64_t sub_1003117E0(uint64_t a1, char a2, uint64_t a3, int a4, int a5, int8x16_t a6, int8x8_t a7, int8x8_t a8)
{
  v16.val[0].i64[0] = (v11 + a1 - 1) & 0xF;
  v16.val[0].i64[1] = (a2 + a1 + v12) & 0xF;
  v16.val[1].i64[0] = (v11 + a1 + 13) & 0xF;
  v16.val[1].i64[1] = (v11 + a1 + 12) & 0xF;
  v16.val[2].i64[0] = (v11 + a1 + 11) & 0xF;
  v16.val[2].i64[1] = (v11 + a1 + 10) & 0xF;
  v16.val[3].i64[0] = (v11 + a1 + 9) & 0xF;
  v16.val[3].i64[1] = (v11 + a1) & 0xF ^ 8;
  *(a3 + a1) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a3 + a1), *(v8 + v16.val[0].i64[0] - 7)), veor_s8(*(v10 + v16.val[0].i64[0] - 7), *(v16.val[0].i64[0] + v9 - 3)))), a8), vmul_s8(*&vqtbl4q_s8(v16, a6), a7)));
  return (*(v14 + 8 * (((v13 != a1) * a5) ^ a4)))(a1 - 8);
}

uint64_t sub_1003118E8(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  *(v47 - 136) = *(a44 + 8 * v45);
  v48.n128_u64[0] = (v44 + 13) & 0xF;
  v48.n128_u64[1] = (v44 + 12) & 0xF;
  v49.n128_u64[0] = (v44 + 11) & 0xF;
  v49.n128_u64[1] = (v44 + 10) & 0xF;
  v50.n128_u64[0] = (v44 + 9) & 0xF;
  v50.n128_u64[1] = v44 & 0xF ^ 8;
  v53.val[0].i64[0] = (v44 + 7) & 0xF;
  v53.val[0].i64[1] = (v44 + 6) & 0xF;
  v53.val[1].i64[0] = (v44 + 5) & 0xF;
  v53.val[1].i64[1] = (v44 + 4) & 0xF;
  v53.val[2].i64[0] = (v44 + 3) & 0xF;
  v53.val[2].i64[1] = (v44 + 2) & 0xF;
  v53.val[3].i64[0] = (v44 + 1) & 0xF;
  v53.val[3].i64[1] = v44 & 0xF;
  v51.n128_u64[0] = 0x5757575757575757;
  v51.n128_u64[1] = 0x5757575757575757;
  return (*(v47 - 136))((v44 + 14) & 0xF, v44 + v46 - 16, (v45 + 26066) | 0x3440, (v44 & 0x10) - 16, v44 & 0x10 ^ 0x10, v45 + 26066, 1, 19450, a1, v48, v49, v50, xmmword_100BC76B0, vqtbl4q_s8(v53, xmmword_100BC76B0), v51, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, v46);
}

uint64_t sub_100311AA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t))
{
  v16 = 1112314453 * (((~(v15 - 184) & 0x4DEDA0EC) - (~(v15 - 184) | 0x4DEDA0ED)) ^ 0xA2BB8A34);
  *(v15 - 176) = v14;
  *(v15 - 168) = v16 + (a3 ^ 0x66BEFB6F) + ((2 * a3) & 0x1F6DE) - 1083310402;
  *(v15 - 184) = v16 + v12 - 13185;
  v17 = (*(v13 + 8 * (v12 ^ 0x917D)))(v15 - 184);
  return a12(v17);
}

uint64_t sub_100311B44()
{
  v2 = STACK[0xF10];
  v3 = STACK[0xF10] - 34968;
  *STACK[0xA1C0] ^= LODWORD(STACK[0xA15C]) ^ v0;
  LODWORD(STACK[0xA150]) = *(STACK[0xB730] + 4 * (SLODWORD(STACK[0xA158]) ^ 0x7740408ALL));
  v4 = STACK[0xA154];
  v5 = 634647737 * ((&STACK[0x10000] + 3800) ^ 0x6D962FFC);
  v6 = v5 - 1462826144 + (((LODWORD(STACK[0xA194]) ^ 0x4F29BCA9) - 1328135337) ^ ((LODWORD(STACK[0xA194]) ^ 0xCAD66A29) + 891917783) ^ ((LODWORD(STACK[0xA194]) ^ 0xCC4CD73B) + 867379397));
  LODWORD(STACK[0x10EDC]) = ((*STACK[0xA198] ^ 0xFA7DBB81) + 770665722 + ((2 * (*STACK[0xA198] ^ 0x7E)) & 0x1BC)) ^ v5;
  LODWORD(STACK[0x10ED8]) = v6;
  LODWORD(STACK[0x10EE0]) = v5 + v4 + 365362192;
  STACK[0x10EE8] = v1;
  LODWORD(STACK[0x10EF4]) = v2 - v5 + 1352419535;
  v7 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v2 ^ 0x4008)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * (v3 ^ 0x27F4)))(2234432642, 2234432643, 2234432644, 1775617819, 10, 3923101457, 4294932395, -1080961354);
}

uint64_t sub_100311D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  *(v25 + 24) = a1;
  *(v28[3] + 32) = v28[4];
  v29 = v28[1] + *(a8 + 40) - 0x58ACCE80D1A65414;
  *(a8 + 40) = (v29 ^ 0xDBCE72FE2CA673BDLL) + 0x3FFBFD73DFDFDCDFLL + ((2 * v29) & 0xB79CE5FC594CE77ALL);
  v30 = ((LOBYTE(STACK[0x20F]) + 439687) ^ 0x7FFEDFBBFFFB75FFLL) - 0xC4A4E8108400062 + ((2 * (LOBYTE(STACK[0x20F]) + 439687)) & 0x46BFE);
  v28[1] = ((v23 - 24645) ^ (0x3CE25E0EC5200378 - v28[1]) ^ 0xFEFFFEFFEDA388CBLL) + ((2 * (0x3CE25E0EC5200378 - v28[1])) & 0xFDFFFDFFDB4756FELL) + 0x3DE25F0ED77C57F9;
  v28[2] = v30;
  *a22 = 0x3CE25E0EC5200378;
  v31 = v22 - 24;
  *(v26 + 112) = v31;
  v32 = *(v27 + 8 * (v23 ^ (2047 * (v31 == 0))));
  return v32(v32, 0x3CE25E0EC5200378, 0xF3B5B17EF7BFFF9ELL, a4, v24, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_100311E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a8 + 8 * (((v8 + 20199) ^ 0x48E1) + v8));
  LODWORD(STACK[0x290]) = v9;
  return v10();
}

uint64_t sub_100311F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, int a45)
{
  v46 = (a6 + 754861823) & 0xD3017FF9;
  v47 = (*(v45 + 8 * (a6 + 24992)))(a43) != 0;
  return (*(v45 + 8 * ((v47 * (v46 - 11767)) ^ a45)))();
}

uint64_t sub_100311F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, char a13)
{
  v17 = v16 >> ((a13 | 0x20) - 47);
  v18 = *(a5 + 4 * ((0x9ED10ECD % v17) & 0x3FFFFFFC));
  LOWORD(v17) = ~*(a5 + 4 * (v18 & (v17 - 1)));
  v19 = *(v15 + 8 * (v14 ^ 0x6000));
  v20 = *(v19 - 527405895);
  v21 = *(v15 + 8 * a11) + 4 * v20;
  v22 = *(v21 - 1940437438);
  v24 = v17 & (~v18 >> 16);
  v23 = v24 == 0;
  v25 = v24 + v24 * v22;
  v26 = v23;
  if (v23)
  {
    v27 = *(v21 - 1940437438);
  }

  else
  {
    v27 = 0;
  }

  *(v21 - 1940437438) = (v25 + v27) * v22;
  *(v19 - 527405895) = (v20 + 1) % 6u;
  return (*(v13 + 8 * ((44425 * v26) ^ a12)))();
}

uint64_t sub_1003120F8()
{
  v1 = STACK[0xF18];
  v2 = *(v1 + 8 * ((((*(STACK[0xF18] + 8 * (v0 ^ 0x9101)))(48) != 0) * ((v0 + 22087) ^ 0xB1D0)) ^ v0));
  return v2();
}

uint64_t sub_100312148()
{
  v1 = STACK[0xF10] + 2140;
  *STACK[0x1BD8] = v0;
  *STACK[0x7908] = STACK[0x6A70];
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100312174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = STACK[0x7690];
  v11 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7BD0] = v11;
  STACK[0xA638] = v11;
  STACK[0xA640] = (v11 + 2048);
  STACK[0x5828] = (v11 + 2208);
  STACK[0x7690] = v10 + 2656;
  if (v8)
  {
    v12 = STACK[0xED0] == 0;
  }

  else
  {
    v12 = 1;
  }

  v14 = v12 || v9 == 0;
  return (*(STACK[0xF18] + 8 * ((((v14 ^ (v7 + 26)) & 1) * ((v7 - 26723) ^ 0x43E8)) ^ v7)))(a1, a2, a3, a4, 371891400, a6, a7, &STACK[0xA000]);
}

uint64_t sub_100312280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x2688] = a8;
  STACK[0x1488] = &STACK[0x6FA0];
  STACK[0x5D28] = &STACK[0x55CC];
  LODWORD(STACK[0x4704]) = 60897263;
  return (*(STACK[0xF18] + 8 * v8))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_100312310()
{
  v4 = v3 - 1865392203 + ((v2 - 607046385) & 0x242EDF4E);
  *(v0 + v4) = *(v1 + v4);
  return (*(STACK[0xF18] + 8 * ((13524 * (v3 == 1865369093)) ^ v2)))();
}

uint64_t sub_100312484()
{
  if (LODWORD(STACK[0x5DE8]) != LODWORD(STACK[0x46FC]))
  {
    v0 = 371891450;
  }

  v5 = *(v3 + v4);
  LODWORD(STACK[0x4CBC]) = v0;
  STACK[0x8FE8] = v5;
  LODWORD(STACK[0x44A8]) = v2;
  LODWORD(STACK[0x7FD8]) = 1685354864;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  LODWORD(STACK[0x704C]) = -2116087582;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1003125D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, int a3@<W4>, uint64_t a4@<X8>, __n128 a5@<Q1>, int8x16_t a6@<Q4>, uint64_t a7@<D5>, int8x16_t a8@<Q6>)
{
  v18 = (a4 ^ v16) + v14;
  v19 = v18 & 0xF;
  v21.i64[0] = vqtbl4q_s8(*(&a5 - 1), a6).u64[0];
  v21.i64[1] = a7;
  v22 = vrev64q_s8(vmulq_s8(v21, a8));
  *(a1 + v18) = veorq_s8(veorq_s8(veorq_s8(*(v12 + v19 - 15), *(a1 + v18)), veorq_s8(*(v19 + v13 - 14), *(v11 + v19 - 15))), vextq_s8(v22, v22, 8uLL));
  return (*(v17 + 8 * (((a2 == v16) * a3) ^ v15)))();
}

uint64_t sub_10031267C()
{
  v2 = STACK[0xF10] + 2760;
  *STACK[0xE40] = v1;
  *STACK[0xE30] = v0;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1003128C8()
{
  STACK[0x9028] = 0;
  LODWORD(STACK[0x7788]) = -371865839;
  return (*(STACK[0xF18] + 8 * (v0 - 28086)))();
}

uint64_t sub_100312904@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 ^ 0x1458 ^ (1991 * ((a1 ^ 0x6E73B4B8) != ((a1 + 814932868) & 0xCF6D7F7F ^ 0x78A681DC))))))();
}

uint64_t sub_100312980(uint64_t a1, uint64_t a2)
{
  STACK[0x2358] = 0;
  STACK[0x2CC0] = 0;
  LODWORD(STACK[0x45C4]) = -371865839;
  STACK[0x9800] = 0;
  LODWORD(STACK[0x10E4]) = -371865839;
  return (*(STACK[0xF18] + 8 * ((6288 * (v3 == ((v2 - 977391175) & 0x3A41BDDE ^ (v2 - 371870552)))) ^ v2)))(a1, a2, 371891535);
}

uint64_t sub_100312AC0()
{
  v0 = STACK[0xF10] - 11413;
  v1 = STACK[0x3B00];
  v2 = ((LODWORD(STACK[0x64BC]) ^ 0x4D70D02B) + ((STACK[0xF10] - 34247) ^ 0xB28F2AA1)) ^ ((LODWORD(STACK[0x64BC]) ^ 0x438607E) - 70803582) ^ (((((STACK[0xF10] - 272) | 0x110) - 1577029094) ^ LODWORD(STACK[0x64BC])) + 1576993451);
  v3 = 1112314453 * ((2 * ((&STACK[0x10000] + 3800) & 0x15501018) - (&STACK[0x10000] + 3800) + 1789915109) ^ 0x85F9C53C);
  STACK[0x10ED8] = STACK[0x4260];
  LODWORD(STACK[0x10EE0]) = v0 - v3 + 1596655347;
  STACK[0x10EF8] = &STACK[0x64BC];
  STACK[0x10F00] = &STACK[0xF28] ^ 0xD5100F5EBAB327EALL;
  LODWORD(STACK[0x10EF4]) = v2 - v3 - 149760133;
  STACK[0x10EE8] = v1;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 28195)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((27 * (LODWORD(STACK[0x10EF0]) == -371865839)) ^ v0)))(v5);
}

uint64_t sub_100312ECC@<X0>(int a1@<W8>)
{
  v1 = STACK[0x3F44];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393401;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100312F04()
{
  LODWORD(STACK[0x2B5C]) = v1;
  v2 = STACK[0x27E0];
  v3 = STACK[0x441C];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v2;
  LODWORD(STACK[0x655C]) = v3;
  LODWORD(STACK[0x884C]) = -2108000806;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x24700B75 ^ (4123 * (v0 < 0xA88F35DF)))))();
}

uint64_t sub_100312F7C()
{
  v2 = (((*(v1 - 0x217E172EFA1E814) ^ 0x8ED0E572) + 1898912398) ^ ((*(v1 - 0x217E172EFA1E814) ^ 0x1B003544) - 452998468) ^ (((((v0 + 1047395519) & 0xC198375B) + 2080695054) ^ *(v1 - 0x217E172EFA1E814)) - 2080708391)) - 372259057;
  v3 = ((v0 & ~v2 | (v0 | ~v2) & (v2 - v0)) & 0x80000000) == 0;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0xFFF9A0CB ^ ((2 * v3) | (v3 << 6)))))();
}

uint64_t sub_1003130B0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x6D24]) = a1;
  STACK[0x7690] = STACK[0x7690] + ((v1 - 447060313) & 0x1AA56FD5) - 3537;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100313154()
{
  v1 = v0 + 31955;
  v2 = (v0 - 766981727) & 0x2DB78F3B;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * ((v0 + 31955) ^ 0x65A9)))(16) == 0;
  return (*(v3 + 8 * ((((v4 ^ (v1 + 80)) & 1) * (v2 ^ 0x8B6A)) ^ v1)))();
}

uint64_t sub_1003131CC()
{
  LODWORD(STACK[0x91AC]) = -371865851;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 12715)))(20);
  STACK[0x8208] = v2;
  STACK[0x14E8] = v2;
  return (*(v1 + 8 * ((((v0 ^ (v2 == 0)) & 1) * ((v0 - 3506) ^ 0x8B23)) ^ v0)))();
}

uint64_t sub_10031323C@<X0>(uint64_t a1@<X8>)
{
  v9 = (v3 - 1) & 0xF;
  v13 = (v5 + v2 - v3 + v9 + 1) > 0xF && (v5 + a1 - v3 + v9 + 6) > 0xF && v7 - v6 >= ((v4 ^ 0xD646u) + 10379) - 27832 && (v5 + v1 - v3 + v9 + 4) > 0xF;
  return (*(v8 + 8 * ((7 * v13) ^ v4)))();
}

uint64_t sub_1003132C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  v53 = (a1 + a37);
  *v53 = a36;
  v53[1] = 0xBCE25E0EC5200378;
  return (*(v52 + 8 * (((v51 + 42307) ^ 0x8020) + v51)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a1, a1, a43, a44, a45, a46, a47, a48, a49, a50, a51);
}

uint64_t sub_100313574()
{
  LODWORD(STACK[0x6BDC]) = 3072;
  v1 = *STACK[0xB2D0];
  v2 = STACK[0xB2C0];
  v3 = 155453101 * (&STACK[0x10ED8] ^ 0xE6261BCF);
  STACK[0x10EF8] = *STACK[0xB2C8];
  STACK[0x10EF0] = &STACK[0x6BDC];
  LODWORD(STACK[0x10F00]) = v3 ^ 0x5AF81C38;
  LODWORD(STACK[0x10EEC]) = v0 - v3 + 1615;
  STACK[0x10EE0] = v2;
  LODWORD(STACK[0x10ED8]) = v3 ^ 0xE30658FF;
  LODWORD(STACK[0x10EDC]) = -155453101 * (&STACK[0x10ED8] ^ 0xE6261BCF) + v1 * (((v0 - 8761) | 0x909) + 1305699042) + 1096739917;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0x6FEA)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((336 * (LODWORD(STACK[0x10EE8]) == ((v0 - 32999) ^ 0xE9D5E495))) ^ v0)))(v5);
}

uint64_t sub_10031368C@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * (a1 - 34670));
  return (*(v1 + 8 * ((((a1 - 25875) | 0x4150) - 21330) ^ (a1 - 34670) ^ (14385 * ((a1 + 792126303) > 0x766C9F87)))))();
}

uint64_t sub_10031374C@<X0>(int a1@<W8>)
{
  v4 = (v1 | ((v1 < 0x21156346) << 32)) + ((a1 - 6796) ^ 0x5581461FA6A7AA50);
  v5 = (v2 | ((v2 < v3) << 32)) + v4;
  STACK[0x96B8] = v5 - 0x5581461FF2C87485;
  v4 -= 0x5581461F0E87D200;
  v6 = v5 - 0x5581461FF2C87485 > (a1 - 39389) - 3107241628u;
  v7 = v5 - 0x5581461F3993C1D4 > v4;
  if (v4 < 0xB934B2B1 != v6)
  {
    v7 = v6;
  }

  return (*(STACK[0xF18] + 8 * ((668 * v7) ^ a1)))();
}

uint64_t sub_100313838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, int a23, uint64_t a24, uint64_t a25, int a26, int a27, char *a28, int a29, int a30, char *a31, uint64_t a32, uint64_t a33)
{
  a27 = (v34 - 1216378489 + ((1109 * (v33 ^ 0x53BE) - 12079) | 0x9800)) ^ a12;
  a29 = v33 - a12 - 417220320;
  a30 = a12 + 1215133685 * a23 - 1273174928;
  a32 = 0;
  a33 = 0;
  a31 = &a22;
  a28 = &a20;
  a24 = v36;
  a25 = a11;
  v37 = (*(v35 + 8 * (v33 ^ 0x988E)))(&a24);
  return (*(v35 + 8 * ((9830 * (a26 == -371865839)) ^ v33)))(v37);
}

uint64_t sub_100313904()
{
  v1 = STACK[0xF10] - 19603;
  *(STACK[0xAAF8] + 88) = v0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100313A48(int a1, int a2, uint64_t a3, int a4, int a5, int a6)
{
  v8 = v6 < v7;
  if (v8 == a5 + a2 < v7)
  {
    v8 = a5 + a2 < v6;
  }

  return (*(STACK[0xF18] + 8 * ((((a6 ^ a1) + a4) * v8) ^ a6)))();
}

uint64_t sub_100313C4C()
{
  v0 = STACK[0xF10] - 6090;
  *(STACK[0x68F0] + 64) |= (STACK[0xF10] - 2772) ^ 0x806F;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100313C9C()
{
  v3 = v1 + 26554;
  v4 = (((v0 - v2 - 848315160) ^ 0xCE75E1D1) + 1439673805) ^ (v0 - v2 - 848315160) ^ (((v0 - v2 - 848315160) ^ 0xFBFDDFFE) + 1615303652) ^ (((v0 - v2 - 848315160) ^ 0x740389CE) + v1 - 273037858) ^ (((((v1 - 988234754) & 0x3AE77E3F) + 634243535) ^ (v0 - v2 - 848315160)) - 1099675617);
  LODWORD(STACK[0x5814]) = v4 ^ 0x8D9074F3;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 + 51874)))(v4 ^ 0x6445B3E2);
  STACK[0x1E20] = v6;
  STACK[0xC20] = v6;
  return (*(v5 + 8 * (v3 | (8 * (v6 == 0)))))();
}

uint64_t sub_100313EF4@<X0>(int a1@<W8>)
{
  v1 = STACK[0x79E8] + 48 * STACK[0x9440] + 0x4F8D89C7B48F94E0;
  *(v1 + 24) = *STACK[0x6480] - ((2 * *STACK[0x6480]) & 0xE17C569C) + 1891511118;
  v2 = LODWORD(STACK[0x8374]);
  *v1 = STACK[0x7CD0];
  *(v1 + 8) = (((v2 ^ 0xFD73226CCBB59048) + 0x28CDD93344A6FB8) ^ ((v2 ^ 0xD9F5CDD73BD19193) + 0x260A3228C42E6E6DLL) ^ ((v2 ^ 0x2486EFBB19B1C6CALL) + (((a1 + 20210) | 0x2800u) ^ 0xDB791044E64E9733))) + 0xE5388D10F980EDCLL;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100314074()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 4024)))();
}

uint64_t sub_10031425C()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((103 * (v0 ^ 0x6CD) - 1744) ^ v0)))();
}

uint64_t sub_1003143B0()
{
  v1 = STACK[0xF10] + 4509;
  v2 = STACK[0xF10] + 5560;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(STACK[0x7298]);
  v5 = STACK[0x77F4];
  LODWORD(STACK[0xAE5C]) = STACK[0x77F4];
  STACK[0x7690] += v1 ^ 0xFFFFFFFFFFFF6328;
  return (*(v3 + 8 * ((7214 * (v5 == v0)) ^ v2)))(v4);
}

uint64_t sub_100314470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x7B08] = 0;
  LODWORD(STACK[0x4A4C]) = -371865839;
  STACK[0x2688] = a8;
  STACK[0x1488] = &STACK[0x7B08];
  STACK[0x5D28] = &STACK[0x4A4C];
  LODWORD(STACK[0x4704]) = -1278696917;
  return (*(STACK[0xF18] + 8 * v8))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_100314618(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0xB208] - 0x166668CC9ED56DB5 + (((v2 ^ 0xA4DC066AB8146249) + 0x5B23F99547EB9DB7) ^ ((v2 ^ 0x3C978F9C769280C5) - 0x3C978F9C769280C5) ^ ((v2 ^ 0x984B89F62753259DLL) + 0x67B47609D8ACDA63)) + 0x19EFA8161;
  v4 = STACK[0xB200] - 0x26DECC072D70D638;
  v5 = v3 < 0xB524BA50;
  v6 = v3 > v4;
  if (v4 < 0xB524BA50 != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((27 * !v6) | (STACK[0xF10] - 10647))))(a1, a2, 371891407);
}

uint64_t sub_100314948()
{
  STACK[0x10ED8] = *STACK[0x37C0];
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((2 * (&STACK[0x10ED8] & 0x7A451440) - &STACK[0x10ED8] - 2051347527) ^ 0x639CF076) + 296766764;
  v1 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 29932)))(&STACK[0x10ED8]);
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762647631) ^ (906386353 * (((&STACK[0x10ED8] | 0xF95AC2EE) - (&STACK[0x10ED8] & 0xF95AC2E8)) ^ 0xC85B0FCA));
  v2 = (*(v1 + 8 * (v0 ^ 0x9F67)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * ((12232 * (*STACK[0x970] > ((v0 - 18890) | 0x1200) - 7700)) ^ v0)))(v2);
}

uint64_t sub_100314A70()
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
  STACK[0xC2E0] = 0;
  STACK[0xC2E8] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC2E0] | v10);
  *(&STACK[0xC2E0] | v10) = 0;
  LOBYTE(STACK[0xC2E7]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC2E0] | v12);
  *(&STACK[0xC2E0] | v12) = STACK[0xC2E6];
  LOBYTE(STACK[0xC2E6]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC2E0] | v14);
  *(&STACK[0xC2E0] | v14) = STACK[0xC2E5];
  LOBYTE(STACK[0xC2E5]) = v15;
  v16 = STACK[0xC2E0];
  LOBYTE(STACK[0xC2E0]) = STACK[0xC2E4];
  LOBYTE(STACK[0xC2E4]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC2E0] | v17);
  *(&STACK[0xC2E0] | v17) = STACK[0xC2E3];
  LOBYTE(STACK[0xC2E3]) = v18;
  v19 = STACK[0xC2E1];
  LOBYTE(STACK[0xC2E2]) = STACK[0xC2E0];
  LOWORD(STACK[0xC2E0]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC2E0] = vmla_s32(v22, STACK[0xC2E0], vdup_n_s32(0x1000193u));
  STACK[0xC2E8] ^= STACK[0xC2E0];
  STACK[0xC2E8] = vmul_s32(vsub_s32(STACK[0xC2E8], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC2EA];
  LOWORD(STACK[0xC2E9]) = STACK[0xC2E8];
  LOBYTE(STACK[0xC2E8]) = v23;
  v24 = (&STACK[0xC2E8] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC2EB];
  LOBYTE(STACK[0xC2EB]) = v19;
  LOBYTE(v24) = STACK[0xC2E8];
  LOBYTE(STACK[0xC2E8]) = STACK[0xC2EC];
  LOBYTE(STACK[0xC2EC]) = v24;
  v25 = (&STACK[0xC2E8] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC2ED];
  LOBYTE(STACK[0xC2ED]) = v24;
  v26 = (&STACK[0xC2E8] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC2EE];
  LOBYTE(STACK[0xC2EE]) = v25;
  v27 = (&STACK[0xC2E8] | v10);
  v28 = *v27;
  *v27 = STACK[0xC2EF];
  LOBYTE(STACK[0xC2EF]) = v28;
  v29 = STACK[0xC2E8];
  v30 = (553300517 * STACK[0xC2E8]) ^ v9;
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
  *STACK[0x940] = STACK[0xC2E8];
  return (*(STACK[0xF18] + 8 * (v1 - 21685)))(v47, v48);
}

uint64_t sub_100314F40@<X0>(unint64_t a1@<X8>)
{
  v4 = 1012831759 * ((~(&STACK[0x10000] + 3800) & 0xAA70D537 | (&STACK[0x10000] + 3800) & 0x558F2AC8) ^ 0xBAE3C3BD);
  LODWORD(STACK[0x10EF8]) = v4 + 92625098;
  LODWORD(STACK[0x10F08]) = v4 + 1393109295 + (((v3 ^ 0xBB20C69B) + (v1 ^ 0x44DFBF11)) ^ ((v1 ^ 0xEF3EDC3D) + 281093059) ^ ((v1 ^ ((v3 - 25696) | 0x421) ^ 0x42348208) - 1110746173));
  STACK[0x10ED8] = a1;
  LODWORD(STACK[0x10EE0]) = v4 ^ 0x3B3ABCD1;
  LODWORD(STACK[0x10EE4]) = v4 + v3 + 899237028;
  STACK[0x10F00] = *(&off_1010A0B50 + v3 - 33297) - 658618339;
  STACK[0x10EF0] = &STACK[0xF28] ^ 0x2E16ABDE55271C49;
  STACK[0x10EE8] = &STACK[0xC4D0] + v2 + 184;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v3 + 17682)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((223 * (LODWORD(STACK[0x10EFC]) != -371865839)) ^ v3)))(v6);
}

uint64_t sub_10031511C(unint64_t a1)
{
  STACK[0x5288] = a1;
  LODWORD(STACK[0x1160]) = v1;
  return (*(STACK[0xF18] + 8 * (v2 - 17256)))();
}

uint64_t sub_100315150()
{
  v3 = STACK[0xF18];
  *(v1 + 160) = (*(STACK[0xF18] + 8 * (v0 ^ 0xEBAC)))((((4 * v0) ^ 0x94F4) - 371869971) ^ v2);
  v4 = *(v1 + 120) == 0;
  if (*(v1 + 120))
  {
    v5 = -371865839;
  }

  else
  {
    v5 = 371891397;
  }

  LODWORD(STACK[0x9814]) = v5;
  return (*(v3 + 8 * ((117 * v4) ^ v0)))();
}

uint64_t sub_100315238@<X0>(uint64_t a1@<X8>)
{
  v9 = ((v4 + 12961) ^ 0x5742) & (v3 + 15);
  v13 = (v7 - v6) > 0xF && (v5 + 1 + a1 - v3 + v9) > 0xF && (v5 + 1 + v1 - v3 + v9) > 0xF && v5 + v2 - v3 + v9 + 3 >= ((v4 + 474171728) & 0xE3BCFECB) - 27832;
  return (*(v8 + 8 * ((105 * v13) ^ v4)))();
}

uint64_t sub_10031544C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  *v5 = -371865839;
  STACK[0x65E8] = v4 + 0x1E04F32196D5EC4ELL;
  *(v4 + 1156) = -371865839;
  STACK[0x5978] = v4 + 0x56779F5E64BCF137;
  *(v4 + 1160) = 0xE9D5C711E9D5C711;
  STACK[0x2798] = v4 + 0x5BF2EE499BCE3086;
  return (*(STACK[0xF18] + 8 * (((((a3 ^ 0x3C5B) + 34560) ^ 0xFC33) * (v3 == -371865840)) ^ a3)))(a1, a2, 371891535);
}

uint64_t sub_1003156DC()
{
  LODWORD(STACK[0x538C]) = v0;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * (v1 - 32651));
  return (*(v2 + 8 * ((v1 - 32651) ^ 0x1F61 ^ (15739 * ((v1 - 1345929578) < 0x904A5A39)))))();
}

uint64_t sub_100315868()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 ^ 0x6346) - 21411) ^ v0)))();
}

uint64_t sub_1003158F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, int a46)
{
  v48 = ((a46 - 35398010) ^ 0x33316BBD) & (2 * ((a46 - 35398010) & 0xA3A44B00)) ^ (a46 - 35398010) & 0xA3A44B00;
  v49 = ((v46 + 623507591) ^ (2 * ((a46 - 35398010) ^ 0x31317DBD))) & ((a46 - 35398010) ^ 0x31317DBD) ^ (v46 ^ 0x9295424E) & (2 * ((a46 - 35398010) ^ 0x31317DBD));
  v50 = v49 ^ 0x92951285;
  v51 = (v49 ^ 0x2400) & (4 * v48) ^ v48;
  v52 = ((4 * v50) ^ 0x4A54DAF4) & v50 ^ (4 * v50) & 0x929536BC;
  v53 = (v52 ^ 0x21412A0) & (16 * v51) ^ v51;
  v54 = ((16 * (v52 ^ 0x90812409)) ^ 0x29536BD0) & (v52 ^ 0x90812409) ^ (16 * (v52 ^ 0x90812409)) & 0x92953690;
  v55 = v53 ^ 0x929536BD ^ (v54 ^ 0x112200) & (v53 << 8);
  v56 = (a46 - 35398010) ^ (2 * ((v55 << 16) & 0x12950000 ^ v55 ^ ((v55 << 16) ^ 0x36BD0000) & (((v54 ^ 0x9284142D) << 8) & 0x12950000 ^ 0x2810000 ^ (((v54 ^ 0x9284142D) << 8) ^ 0x15360000) & (v54 ^ 0x9284142D))));
  v57 = (v46 ^ 0x1AF6) + 1011781049;
  LODWORD(STACK[0x2A4]) = v57 & 0xC3B19F77;
  v59 = v56 == -1549523334 || (((3121 * (v46 ^ 0x74F4)) ^ 0x5558) & v56) != 10;
  v60 = *(v47 + 8 * ((15 * (((v57 ^ v59) & 1) == 0)) ^ v46 ^ 0x1AF6));
  LODWORD(STACK[0x298]) = -42899;
  return v60();
}

uint64_t sub_100315ACC@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  STACK[0x248] = v5;
  v6 = *(STACK[0x2F0] + 8 * ((25 * ((v4 ^ (v3 + 17310) ^ 0x1804E414uLL) < 8)) ^ v3));
  v7 = STACK[0x270];
  STACK[0x2D0] = *(a3 + 24);
  return v6(0x96E95066F186A7ELL, v7, 0xBDF6BB6ED994DF2ELL, a1, a2, 0xD6916AF990E79581);
}

uint64_t sub_100315C24()
{
  v0 = (2 * STACK[0xF10]) ^ 0x144AA;
  v1 = STACK[0xF10] - 31124;
  v2 = *(*(&off_1010A0B50 + (STACK[0xF10] - 30861)) - 463534914);
  v3 = *v2;
  LODWORD(v2) = v2[1];
  LODWORD(STACK[0xC3D6]) = v3;
  LODWORD(STACK[0xC3DA]) = v2;
  return (*(STACK[0xF18] + 8 * (v1 - 19530 + v0)))();
}

uint64_t sub_100315CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>, int8x16_t a6@<Q0>, int8x8_t a7@<D1>)
{
  v15.val[0].i64[0] = (v9 + a1 - 1) & 0xF;
  v15.val[0].i64[1] = (v9 + a1 + 14) & 0xF;
  v15.val[1].i64[0] = (v9 + a1 + 13) & 0xF;
  v15.val[1].i64[1] = (v9 + a1 + 12) & 0xF;
  v15.val[2].i64[0] = (v9 + a1 + 11) & 0xF;
  v15.val[2].i64[1] = (v9 + a1 + v10) & 0xF;
  v15.val[3].i64[0] = (v9 + a1 + 9) & 0xF;
  v15.val[3].i64[1] = (v9 + a1) & 0xF ^ 8;
  *(a2 + v9) = veor_s8(veor_s8(veor_s8(*(v8 + v15.val[0].i64[0] - 7), *(a3 + v9)), veor_s8(*(a5 + v15.val[0].i64[0] - 7), *(v15.val[0].i64[0] + v7 - 5))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v15, a6), a7)));
  return (*(v13 + 8 * (((v11 == a1) * a4) ^ v12)))(a1 - 8, a2 - 8, a3 - 8);
}

uint64_t sub_100315D7C@<X0>(uint64_t a1@<X8>)
{
  v3 = (((v2 + 6755) + 0x5AEBF7FF6F7752C0) ^ a1) + (v1 & 0xDEEFBBF6) - 0x5AEBF7FE76FF538BLL;
  v4 = STACK[0x7D20] - 0x6F6F2C6D29730FA8;
  v5 = v3 < 0xF8788A6C;
  v6 = v3 > v4;
  if (v4 < (v2 - 7941) + 4168628377u != v5)
  {
    v6 = v5;
  }

  v7 = STACK[0xB3D8];
  if (v6)
  {
    v7 = 371891407;
  }

  return (*(STACK[0xF18] + 8 * ((41592 * (v7 == -371865839)) ^ (v2 - 17113))))();
}

uint64_t sub_100315F44()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * (v0 - 34628));
  return (*(v1 + 8 * ((v0 - 34628) ^ 0x7364 ^ (88 * ((v0 - 34628) ^ 0x2DA)))))();
}

uint64_t sub_100315F94@<X0>(int a1@<W8>)
{
  STACK[0x5658] = STACK[0x27C8];
  LODWORD(STACK[0x2564]) = -788895045;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100315FD4()
{
  v1 = STACK[0xF18];
  STACK[0x3770] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 5028 + ((v0 - 2155) | 2))))();
}

uint64_t sub_10031608C()
{
  v1 = (v0 + 2545) | 0x185;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x1F1C)))();
}

uint64_t sub_1003162D8@<X0>(int a1@<W8>)
{
  STACK[0x80E0] = 0;
  LODWORD(STACK[0x1958]) = 0;
  return (*(STACK[0xF18] + 8 * (a1 + 7667)))();
}

uint64_t sub_10031633C()
{
  v1 = STACK[0xF10] - 34881;
  v2 = STACK[0xF10] - 3956;
  LODWORD(STACK[0x9B34]) = v0;
  v3 = ((STACK[0xA9F0] ^ 0x925724A550A531DDLL) - 0xD7F4F3F79142DEELL) ^ ((STACK[0xA9F0] ^ 0x80796762E825D2C6) - 0x1F510CF8C194CEF5) ^ ((STACK[0xA9F0] ^ 0x122E43C757A8D8C8) + (v1 ^ 0x72F9D7A281E639FFLL));
  STACK[0x9B38] = v3 - 0x24EDBF904B5B35A7;
  v3 -= 0x60D794646CF9CCEALL;
  v4 = (LODWORD(STACK[0x44F8]) ^ 0xF7F4F5EFDDFF5BD5) + 0x80B0A10EE6DAF5DLL + ((2 * LODWORD(STACK[0x44F8])) & 0x1BBFEB7AALL);
  v5 = v3 < 0xCC6D0B32;
  v6 = v3 > v4;
  if (v5 != v4 < 0xCC6D0B32)
  {
    v6 = v5;
  }

  if (v6)
  {
    v7 = 371891374;
  }

  else
  {
    v7 = STACK[0xA9FC];
  }

  LODWORD(STACK[0xAA00]) = v7;
  return (*(STACK[0xF18] + 8 * (((v7 != -371865839) | (8 * (v7 != -371865839))) ^ v2)))();
}

uint64_t sub_100316508()
{
  v0 = STACK[0xF10] ^ 0xEC45;
  v1 = 1394 * (STACK[0xF10] ^ 0x8B28);
  STACK[0x8120] = STACK[0x9420] + 8;
  return (*(STACK[0xF18] + 8 * v0))(8614 * (v1 ^ 0x6772u) + 1864575901, 61, 95, 2430356939);
}

uint64_t sub_1003165A4()
{
  v0 = STACK[0xF10] - 12843;
  *(STACK[0x6E88] + STACK[0x2BD0] - 0x39BFB1AFE8AB3822) = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1003165E0()
{
  v0 = STACK[0xF10] + 756984551;
  v1 = STACK[0xF10];
  STACK[0x1C90] = STACK[0x4548];
  LODWORD(STACK[0x6C7C]) = -272862698;
  return (*(STACK[0xF18] + 8 * ((4618 * (v0 < 0xE99D9241)) ^ (v0 - 757043633 + v1))))();
}

uint64_t sub_100316650()
{
  v1 = STACK[0x1018];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393385;
  return (*(STACK[0xF18] + 8 * ((10849 * (v0 > 0xE0AE85EC)) ^ ((v0 ^ 0xFFFE1981) + v0))))();
}

uint64_t sub_1003166B8()
{
  v4 = (((2 * v0) & 0x1F48B6EBELL) + v1 - 0x6CD9D7F7FA45B75FLL + (v0 ^ v3 ^ 0xC3B0 ^ 0x6CD9D7F7FA4571DBLL));
  v4[19] = v2[19] ^ 0x5F;
  v4[18] = v2[18] ^ 0x5F;
  v4[17] = v2[17] ^ 0x5F;
  v4[16] = v2[16] ^ 0x5F;
  v4[15] = v2[15] ^ 0x5F;
  v4[14] = v2[14] ^ 0x5F;
  v4[13] = v2[13] ^ 0x5F;
  v4[12] = v2[12] ^ 0x5F;
  v4[11] = v2[11] ^ 0x5F;
  v4[10] = v2[10] ^ 0x5F;
  v4[9] = v2[9] ^ 0x5F;
  v4[8] = v2[8] ^ 0x5F;
  v4[7] = v2[7] ^ 0x5F;
  v4[6] = v2[6] ^ 0x5F;
  v4[5] = v2[5] ^ 0x5F;
  v4[4] = v2[4] ^ 0x5F;
  v4[3] = v2[3] ^ 0x5F;
  v4[2] = v2[2] ^ 0x5F;
  v4[1] = v2[1] ^ 0x5F;
  *v4 = *v2 ^ 0x5F;
  LODWORD(STACK[0x8F9C]) = v0 + 20;
  STACK[0x9A00] = STACK[0x1708] + 68;
  v5 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v3);
  return (*(v5 + 8 * (v3 ^ 0x1C44)))();
}