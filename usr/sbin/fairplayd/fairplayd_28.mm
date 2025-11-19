uint64_t sub_10085AED0()
{
  v10 = *(v0 + v4);
  v11 = STACK[0x1264];
  v12 = 155453101 * ((2 * (v3 & 0x1DD74C70) - v3 + 1646834569) ^ 0x840EA846);
  *(v9 - 224) = 0;
  *(v5 + 2296) = 16376 - 1709 * ((2 * (v3 & 0x4C70) - v3 - 19575) ^ 0xA846);
  *(v9 - 256) = (40409587 * v11 - 1378563772) ^ v12;
  *(v9 - 248) = &STACK[0x124C];
  *(v9 - 240) = v8;
  *(v9 - 200) = v10;
  *(v9 - 232) = v12 ^ 0xE2FBFE53;
  *(v9 - 228) = v12 ^ v6;
  *(v9 - 212) = v12 + 2069619737;
  *(v9 - 208) = v1 - v12 + 1777258814;
  v13 = (*(v7 + 8 * (v1 + 19593)))(v9 - 256);
  return (*(v7 + 8 * ((50051 * (*(v9 - 204) == (v2 ^ 0x8BB51743))) ^ v1)))(v13);
}

uint64_t sub_10085AFC8()
{
  (*(v1 + 8 * (v0 ^ 0xE85B)))(0);
  v2 = (*(v1 + 8 * (v0 ^ 0xE85B)))(STACK[0x7E0]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10085B074()
{
  LODWORD(STACK[0x2628]) = v0;
  LODWORD(STACK[0x262C]) = v1;
  STACK[0x2630] = v2;
  STACK[0x1480] = 0;
  return (*(v4 + 8 * (((((v3 + 1) ^ (v2 == 0)) & 1) * ((v3 + 781019191) & 0xD171F9BF ^ 0x181F)) ^ v3)))();
}

uint64_t sub_10085B0E4()
{
  v5 = STACK[0x1C48];
  v6 = STACK[0xE60];
  *(v4 - 248) = STACK[0x1C48];
  *(v4 - 240) = v6;
  *(v4 - 256) = (v0 + 21833) ^ (1022166737 * ((2 * (v2 & 0x2C0C9460) - v2 - 739021926) ^ 0x69E38A08));
  v7 = (*(v3 + 8 * (v0 ^ 0xC509)))(v4 - 256);
  v8 = *(v4 - 232);
  LODWORD(STACK[0x1C94]) = v8;
  *v5 = ~*v5;
  v5[1] ^= 0xAu;
  v5[2] ^= 0x68u;
  v5[3] ^= 0xD8u;
  v5[4] ^= 0x76u;
  v5[5] ^= ((v0 - 96) | 0xD) - 16;
  v5[6] ^= 0x39u;
  v5[7] ^= 0x34u;
  v5[8] ^= 0x21u;
  v5[9] ^= 0xF4u;
  v5[10] ^= 0x63u;
  v5[11] ^= 0x9Du;
  v5[12] ^= 0x71u;
  v5[13] ^= 0xA0u;
  v9 = v5[15] ^ 1;
  v5[14] ^= 0x32u;
  v5[15] = v9;
  return (*(v3 + 8 * ((33177 * (v8 == v1)) ^ v0)))(v7);
}

uint64_t sub_10085B29C@<X0>(int a1@<W8>)
{
  v2 = (((a1 ^ 0xC4) + 32) ^ 8) + *(STACK[0xFA0] + 5) - (((63 * (a1 ^ 0xC4)) ^ 0x61) & (2 * *(STACK[0xFA0] + 5)));
  v3 = v2 & 0x71 ^ 0x30 | (v2 ^ 0x45) & ((*(STACK[0xFA0] + 4) - ((2 * *(STACK[0xFA0] + 4)) & 0x5A) + 45) ^ 0xC3);
  v4 = *(STACK[0xFA0] + 6) - ((2 * *(STACK[0xFA0] + 6)) & 0x5A) + 45;
  v5 = v3 & (v4 ^ 0x76) | v4 & 0x71 ^ 1;
  v6 = *(STACK[0xFA0] + 7) - ((2 * *(STACK[0xFA0] + 7)) & 0x5A) + 45;
  v7 = v5 & (v6 ^ 0x62) | v6 & 0x71 ^ 0x11;
  v8 = *(STACK[0xFA0] + 8) - ((2 * *(STACK[0xFA0] + 8)) & 0x5A) + 45;
  v9 = v7 & (v8 ^ 0x10) | v8 & 0x71 ^ 0x61;
  v10 = *(STACK[0xFA0] + 9) - ((2 * *(STACK[0xFA0] + 9)) & 0x5A) + 45;
  v11 = v9 & (v10 ^ 0xD8) | v10 & 0x71 ^ 0x21;
  v12 = *(STACK[0xFA0] + 10) - ((2 * *(STACK[0xFA0] + 10)) & 0x5A) + 45;
  v13 = v11 & (v12 ^ 0xD8) | v12 & 0x71 ^ 0x21;
  v14 = *(STACK[0xFA0] + 11) - ((2 * *(STACK[0xFA0] + 11)) & 0x5A) + 45;
  return (*(v1 + 8 * ((43994 * ((v13 & (v14 ^ 0x4D) | v14 & 0x71 ^ 0x30) == 142)) ^ a1)))();
}

uint64_t sub_10085B428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = (v11 + 1478232722);
  v15 = *(STACK[0x798] + (*(v12 + v14) ^ (a8 + 39) ^ 0x5Cu));
  v16 = -3 * (((v15 ^ 0x28) - 40) ^ ((v15 ^ 0xEF) + 17) ^ ((v15 ^ 0x98) + 104)) - 52;
  v17 = v16 & 0x86 | 0x69;
  v18 = v16 ^ (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & 0x32 ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ 0xD9;
  *(v12 + v14) = v18;
  v19 = v18 ^ *(v8 + (v9 + v11) % (*v8 ^ 0xE9D5C711) + 4);
  *(v12 + v14) = v19;
  v20 = (((v19 ^ 0x8C) + 116) ^ ((v19 ^ 0xD4) + 44) ^ ((v19 ^ 7) - 7)) - 116;
  v21 = v20 & 0x50 ^ 0x46;
  *(v10 + v14) = v20 ^ (2 * ((v20 ^ 0x54) & (2 * ((v20 ^ 0x54) & (2 * ((v20 ^ 0x54) & (2 * ((v20 ^ 0x54) & (2 * ((v20 ^ 0x54) & (2 * v21) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ 0xF;
  return (*(v13 + 8 * (a8 - 11808)))();
}

uint64_t sub_10085B63C(uint64_t a1, int a2, int a3, int a4, int a5, unsigned int a6, int a7, uint64_t a8)
{
  if ((v8 - 410456045) >= 0x28)
  {
    v21 = -410456085;
  }

  else
  {
    v21 = -410456045;
  }

  v22 = a5 ^ (2 * (((v8 ^ 0x73A7C503) + 338638095) ^ v8 ^ ((v8 ^ 0x478CDC2) + 1676688848) ^ ((v8 ^ 0x1037F8C8) + a2) ^ ((v8 ^ a3) + a4)));
  v23 = (*(a8 + (v21 + v8)) << 24) | (*(a8 + v22 + 2 - ((((v22 + 2) * a6) >> 32) >> 5) * a7) << 16);
  v24 = *(a8 + v22 + 3 - ((((v22 + 3) * a6) >> 32) >> 5) * a7);
  *(v12 + 4 * (v8 + a1)) = (v24 - (v17 & (2 * v24)) + v18) & v9 ^ v10 ^ (((v14 ^ (*(a8 + v8 + a1) << 8)) & (v23 ^ v15) | v23 & v16) ^ v19) & ((v24 - (v17 & (2 * v24)) + v18) ^ v20);
  return (*(STACK[0x228] + 8 * (((4 * (v8 + 1 != v11)) | (32 * (v8 + 1 != v11))) ^ v13)))();
}

uint64_t sub_10085B7EC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  STACK[0x2050] = v7;
  LODWORD(STACK[0xE20]) = a5;
  STACK[0xD00] = v6;
  LODWORD(STACK[0x18B8]) = v5;
  v9 = LODWORD(STACK[0xCBC]) * (a4 - 1575347102) + 1690691385;
  v10 = v9 ^ LODWORD(STACK[0x984]) ^ ((v9 ^ 0x7E8E883C) - 441151237) ^ ((v9 ^ 0xEE88AD1D) + 1974646236) ^ ((v9 ^ 0x8B1E3DE7) + 270804258) ^ ((v9 ^ 0x7FDDFFFF) - 454564038) ^ 0x64C5E739;
  LODWORD(STACK[0x1D9C]) += 4;
  v11 = LOBYTE(STACK[0x1223]);
  LODWORD(STACK[0x1D5C]) = v10;
  return (*(v8 + 8 * ((866 * v11) ^ 0x5D91u)))();
}

uint64_t sub_10085BA2C@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 256) = a1;
  *(v3 - 244) = (v1 - 5629) ^ (1012831759 * ((((v3 - 256) | 0xA1738498) - ((v3 - 256) | 0x5E8C7B67) + 1586264935) ^ 0xB1E09212));
  v4 = (*(v2 + 8 * (v1 ^ 0xA9F4)))(v3 - 256);
  *(STACK[0xCD8] + 128) = 0x7E666516A39B34A6;
  return (*(v2 + 8 * v1))(v4);
}

uint64_t sub_10085BB5C@<X0>(int a1@<W8>)
{
  v3 = *v1;
  STACK[0x1A98] = STACK[0x1020];
  STACK[0x1070] = v3;
  STACK[0x1CF0] = 0;
  return (*(v2 + 8 * (((v3 != 0) * (((a1 - 697) | 0x400) + ((a1 + 1736229763) & 0x6261DFF3) - 1650523759)) ^ a1)))();
}

uint64_t sub_10085BBBC()
{
  v3 = v0 - 1650487497;
  v4 = (((*(v1 + 8) ^ 0x839105B4) + 2087647820) ^ ((*(v1 + 8) ^ 0x2991EF7E) - 697429886) ^ (((1549 * (v0 ^ 0x6260D04D) + 1137996360) ^ *(v1 + 8)) - 1138044379)) + 1213990323;
  *(v1 + 8) = v4 ^ ((v4 ^ 0x743AC586) - 717028135) ^ ((v4 ^ 0x429C3F6D) - 471466444) ^ ((v4 ^ 0xD7DF3B37) + 1990654570) ^ ((v4 ^ 0xBFFFFF7D) + 512114212) ^ 0xB753F9B0;
  return (*(v2 + 8 * v3))();
}

uint64_t sub_10085BE94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x2FC]) = a6;
  v9 = *(v6 + 8 * (v7 ^ 0x9728));
  STACK[0x440] = a4;
  v10 = v9(1028);
  STACK[0x4B8] = 0;
  LODWORD(STACK[0x48C]) = 0;
  *(v8 - 192) = 0;
  STACK[0x4A0] = 0;
  *(v8 - 248) = 0;
  *(v8 - 176) = 0;
  STACK[0x498] = 0;
  *(v8 - 256) = 0;
  *(v8 - 168) = 0;
  STACK[0x480] = 0;
  *(v8 - 208) = 0;
  *(v8 - 200) = 0;
  *(v8 - 240) = 0;
  *(v8 - 232) = 0;
  *(v8 - 184) = 0;
  STACK[0x4A8] = 0;
  STACK[0x490] = 0;
  STACK[0x478] = 0;
  *(v8 - 160) = 0;
  STACK[0x4B0] = 0;
  *(v8 - 224) = v7 - 18775;
  v11 = *(v6 + 8 * (((((v7 - 87) ^ (v10 == 0)) & 1) * (v7 - 23876)) ^ v7));
  *(v8 - 148) = 1644243867;
  return v11();
}

uint64_t sub_10085BFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, char a6@<W8>)
{
  v8 = (LOBYTE(STACK[0x16E7]) + 81) * (a6 - 69) - 121 * a6 - 5;
  v9 = v8 & 0x30 | 0xCB;
  v10 = v8 ^ 0x22;
  *(STACK[0x14E8] + LODWORD(STACK[0x1C14])) = v8 ^ (2 * (v10 & (2 * (v10 & (2 * (v10 & (2 * (v10 & (2 * (v10 & (2 * ((((v6 - 19) ^ 0x7B) + 2 * (v8 & 0x30) + 103) & v10 ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ 0x6F;
  return (*(v7 + 8 * (v6 + 10221)))(a1, a2, a3, a4, STACK[0x808], 1864610357, a5, STACK[0x800]);
}

uint64_t sub_10085C0A4(uint64_t a1, int a2, uint64_t a3, double a4, __n128 a5, __n128 a6, __n128 a7, int8x16_t a8, double a9, int8x16_t a10, int8x16_t a11, uint64_t a12, uint64_t a13)
{
  v21 = ~a1 + v17;
  v22 = v21 & 0xF;
  v24.i64[0] = vqtbl4q_s8(*(&a5 - 1), a8).u64[0];
  *&v24.i64[1] = a9;
  v25 = vrev64q_s8(veorq_s8(veorq_s8(*(v13 + v21), *(v15 + v22 - 15)), veorq_s8(*(v16 + v22 + 4 - 15), *(v14 + v22 + 4 - 15))));
  v26 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v25, v25, 8uLL), a11), vmulq_s8(v24, a10)));
  *(v18 + v21) = vextq_s8(v26, v26, 8uLL);
  return (*(v20 + 8 * (((a13 + a1 != v19) | (2 * (a13 + a1 != v19))) ^ a2)))();
}

uint64_t sub_10085C238@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x117C]) = a1;
  v3 = STACK[0x1BC8];
  v4 = *(STACK[0x1BC8] + 16);
  v5 = *(STACK[0x1BC8] + 20);
  LODWORD(STACK[0x1C74]) = v5;
  LODWORD(STACK[0x190C]) = v4;
  v6 = v3[1];
  STACK[0x1358] = *v3;
  STACK[0x1478] = v6;
  v7 = STACK[0xF64];
  LODWORD(STACK[0x114C]) = v5 - (((v1 ^ 0xF5ED2D3D) + 1907598588) ^ ((v1 ^ 0xC9DBA5AA) + 1300573293) ^ ((v1 ^ 0xAE4239BF) + 706523258)) + LODWORD(STACK[0xF64]) + 371865839;
  return (*(v2 + 8 * ((4 * ((v7 ^ a1) == -371865839)) | 0xAAE2u)))();
}

uint64_t sub_10085C304@<X0>(int a1@<W0>, unsigned int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W8>)
{
  v17 = (v8 ^ v7);
  *(v15 + 4 * v8) = a4 ^ ((v17 ^ v10) + (v14 ^ v17 ^ v12)) ^ a5 ^ *(STACK[0x448] + 4 * (a1 + (v17 ^ v11) * v13 - ((((a1 + (v17 ^ v11) * v13) * a2) >> 32) >> 3) * a3));
  return (*(*(v16 - 216) + 8 * (((v9 == 0) * a6) ^ a7)))();
}

uint64_t sub_10085C564@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  STACK[0x348] = 0;
  STACK[0x380] = &STACK[0x5EC];
  v3 = *(a2 + 8 * (((*(v2 + 24) == STACK[0x330]) * (((a1 ^ 0x7620) + 23614) ^ 0xC897)) ^ a1));
  STACK[0x2E8] = STACK[0x330];
  return v3();
}

uint64_t sub_10085C658()
{
  v3 = (((LODWORD(STACK[0x1424]) ^ 0xC7BEA224) + 943807964) ^ ((LODWORD(STACK[0x1424]) ^ (v0 - 838306508)) + 838289111) ^ ((LODWORD(STACK[0x1424]) ^ 0xE063DC1C) + 530326500)) - 138558920;
  v4 = v3 < 0xDE7FB27;
  v5 = (((v0 + 1646283851) | 0x404012) ^ 0x6F872B75) + v1 < v3;
  if (v1 > 0xF21804D8 != v4)
  {
    v5 = v4;
  }

  return (*(v2 + 8 * ((11 * !v5) ^ v0)))();
}

uint64_t sub_10085C734()
{
  v3 = (v0 + 541) | 0x2134;
  v4 = ((v0 + 15572) ^ 0x4AE8BCB3) + (v1 ^ 0xB517CFB5);
  v5 = (v4 ^ ((v1 ^ 0x242FB152) - 607105362) ^ ((v1 ^ 0x78EDCA83 ^ v3) - 2028845558)) == 0x1629946F || (v4 ^ ((v1 ^ 0x242FB152) - 607105362) ^ ((v1 ^ 0x78EDCA83 ^ v3) - 2028845558)) == 371823724;
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

  return (*(v2 + 8 * ((55783 * (v7 + v8 == 127)) ^ v0)))();
}

uint64_t sub_10085C8A0()
{
  v1 = STACK[0x14F4];
  v2 = LODWORD(STACK[0x1BE8]) + LODWORD(STACK[0x1C2C]);
  LODWORD(STACK[0x16BC]) = v2 + LODWORD(STACK[0x14F4]) - 1029251831;
  v3 = v2 + v1 + 299744228;
  v4 = LODWORD(STACK[0x19C0]) + 1328996059;
  v5 = v3 < 0x3BEB507F;
  v6 = v3 > v4;
  if (v5 != v4 < 0x3BEB507F)
  {
    v6 = v5;
  }

  v7 = v2 == 705533083 || v6;
  return (*(v0 + 8 * ((1917 * v7) ^ 0x1BF8u)))();
}

uint64_t sub_10085CA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14)
{
  v21 = v17 << (v14 ^ 0x84u);
  v22 = *(v15 + v21) ^ 0x74;
  LOWORD(v21) = *(v15 + v21 + 1);
  *(&a14 + v16) = ((v22 << 8) ^ 0x2D7E) & (v21 ^ 0xFF20) ^ (v21 & 0x9481 | 0x6B0E);
  v24 = v18 < v19 || v18 > (v16 + 1) + v19;
  return (*(v20 + 8 * (v14 ^ (8 * v24))))();
}

uint64_t sub_10085CB50@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, _DWORD *a3@<X5>, int a4@<W6>, uint64_t a5@<X8>)
{
  v15 = *(v7 + 2 * v6);
  v16 = a2 % (*a3 ^ v9);
  v17 = *(a5 + v16) ^ ((v8 ^ HIBYTE(v15)) - (v10 & (2 * (v8 ^ HIBYTE(v15)))) - 62) ^ v11;
  LOBYTE(v15) = (v17 - (v12 & (2 * v17)) + 113) ^ v15;
  *(a5 + v16) = v15 - ((2 * v15) & 0xBF) + 95;
  return (*(v13 + 8 * (((v6 + 1 == v14) * a4) ^ v5)))(a1, v6 + 1, 3923101457);
}

uint64_t sub_10085CBD0()
{
  LODWORD(STACK[0x15A8]) = v1;
  v5 = STACK[0x8D0];
  *(v4 - 248) = *(STACK[0x8D0] - 0x10A99C80114D146FLL);
  *(v4 - 256) = v0 + 1603510583 * (((v2 | 0x3E7DE7D2) - (v2 | 0xC182182D) - 1048438739) ^ 0xA9A6D579) - 1650481194;
  v6 = (*(v3 + 8 * (v0 ^ 0x62601A8D)))(v4 - 256);
  *(v5 - 0x10A99C80114D146FLL) = 0x427A3CD3E8C5DA2FLL;
  STACK[0x1FD0] = *(v5 - 0x10A99C80114D147FLL);
  LODWORD(STACK[0x12D0]) = 1344063313;
  return (*(v3 + 8 * (v0 - 1650505868)))(v6);
}

uint64_t sub_10085CCD0()
{
  v5 = *(v3 - 0x217E172EFA1E80CLL);
  *(v4 - 256) = (v0 - 72) ^ (1603510583 * (((v1 | 0x2ECC3A2C) - (v1 & 0x2ECC3A28)) ^ 0xB9170887));
  v6 = (*(v2 + 8 * ((v0 + 12443) ^ 0x7ABF)))(v4 - 256);
  if (v5 == *(v4 - 252))
  {
    v7 = STACK[0x19EC] & (((v0 - 27914) | 0x2004) + ((v0 - 18778) ^ 0x7FFFFC4B));
  }

  else
  {
    v7 = STACK[0x19EC];
  }

  LODWORD(STACK[0x1670]) = v7;
  STACK[0x1BF0] = v3 - 0x217E172EFA1E804;
  LODWORD(STACK[0x1AC4]) = *(v3 - 0x217E172EFA1E80CLL);
  v8 = STACK[0x1428];
  v9 = &STACK[0x2720] + STACK[0x1428];
  STACK[0x1BD0] = v9;
  STACK[0x15F0] = (v9 + 100);
  STACK[0xED8] = (v9 + 116);
  STACK[0xC20] = (v9 + 132);
  STACK[0xA08] = (v9 + 660);
  STACK[0x1428] = v8 + 688;
  LODWORD(STACK[0x9E4]) = 1928997902;
  LODWORD(STACK[0x1EE4]) = 596563677;
  LOBYTE(STACK[0x1C27]) = 51;
  if (STACK[0xF00])
  {
    v10 = STACK[0xAE0] == 0;
  }

  else
  {
    v10 = 1;
  }

  v12 = !v10 && STACK[0x1D80] != 0;
  return (*(v2 + 8 * ((960 * v12) ^ (v0 + 12443))))(v6);
}

uint64_t sub_10085CF9C()
{
  v4 = *(v0 - 0x217E172EFA1E7ECLL);
  v5 = STACK[0x10B0];
  v6 = 2 * STACK[0x10B0];
  v7 = 353670337 * STACK[0x5D0];
  *(v3 - 240) = v7 + 27619;
  *(v3 - 256) = (v5 - ((2 * v5) & 0x6AEE92E8E4E2328ELL) + 0x3577497472711947) ^ v7;
  *(v3 - 248) = v4;
  (*(v2 + 419736))(v3 - 256);
  v8 = 353670337 * ((STACK[0x5C8] - (v1 | 0x87E7173A7FEC4E91) - 0x7818E8C58013B16FLL) ^ 0x88895E4E34324953);
  *(v3 - 256) = 353670337 * ((LODWORD(STACK[0x5C8]) - (v1 | 0x7FEC4E91) + 2146193041) ^ 0x34324953) + 1317;
  *(v3 - 232) = v8 - 1247706310;
  *(v3 - 248) = 0x2CB8161969575A1DLL - v8;
  *(v3 - 240) = v8 + v5 - (v6 & 0x63692A8F3F464AA6) + 0x31B495479FA32553;
  v9 = (*(v2 + 414752))(v3 - 256);
  return (*(v2 + 65184))(v9);
}

uint64_t sub_10085D1A8@<X0>(char a1@<W1>, char a2@<W2>, char a3@<W4>, char a4@<W5>, int a5@<W6>, int a6@<W8>)
{
  v16 = v12 - 1;
  v17 = (v15 ^ v10) & (2 * (v15 & v9)) ^ v15 & v9;
  v18 = ((2 * (v15 ^ v8)) ^ v11) & (v15 ^ v8) ^ (2 * (v15 ^ v8)) & v13;
  *(v6 + v16) = (v15 ^ (2 * ((((4 * (v18 ^ a1)) ^ a2) & (v18 ^ a1) ^ (4 * (v18 ^ a1)) & a3) & (16 * (v18 & (4 * v17) ^ v17)) ^ v18 & (4 * v17) ^ v17)) ^ a4) * (v15 - 108);
  return (*(v14 + 8 * (((v16 > v7) * a5) ^ a6)))();
}

uint64_t sub_10085D25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v34 = v31 - v29;
  v35 = v32 - v29;
  v39 = (v30 - v29) > 0xF && (*(a5 + 8 * (a1 - 6400)) - 802085771 - v29) > 0xF && v34 > 0xF && v35 > 0xF;
  return (*(v33 + 8 * ((v39 * (1581 * (a1 ^ 0x1CF0) - 17384)) ^ a1)))(a1, 16, v34, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t sub_10085D2D0@<X0>(int a1@<W6>, uint64_t a2@<X7>, unsigned int a3@<W8>)
{
  v21 = ((v10 ^ 0x5F1D4CA82637634FLL) + v13) ^ ((v10 ^ 0x1E9385DEA51CE750) - 0x1E9385DEA51CE750) ^ ((v10 ^ 0x418EC976FC6C888BLL) - 0x418EC976FC6C888BLL);
  v22 = (v21 + 2573754629) * (v7 + 0x33F3CE4903590975 + v21) - 0x33F3CE48841212CALL * v21 + 0x76AF09F8639706C9;
  v23 = v22 - 3377535439u * (((v22 * v15) >> 64) >> 31);
  v24 = ((v9 ^ 0xCCB1B6CD0AE465DALL) + 0x334E4932F51B9A26) ^ ((v9 ^ 0x21E0BB11B07FD5F1) - 0x21E0BB11B07FD5F1) ^ ((v9 ^ 0xED510DDCC5DCBCBFLL) + 0x12AEF2233A234341);
  v25 = ((2 * v23) & 0xFEBD64FA) + (v23 ^ 0x7FEC2FDF7F5EB27DLL);
  v26 = (v24 + 2135362708) * (v24 - 0x6BF797CADCF61501) + 0x6BF797CB5C3D2195 * v24 + 2575459919 * v25 - 0x7529E6F983963438;
  v27 = v26 % 0x8C3E3039 - ((2 * (v26 % 0x8C3E3039)) & 0x18AA7B8FCLL) + 0x444CA6E9C553DC7ELL;
  v28 = ((((v27 ^ 0xFFA5A0CDDDB74BC9) + 0x5A5F322248B437) ^ ((v27 ^ 0xB86B9968725206A4) + 0x479466978DADF95CLL) ^ ((v27 ^ 0x3829F4C6AB69113) - 0x3829F4C6AB69113)) - 0x26C1DE39B18BD612) * (v25 - 0x7FEC2FDF7F5EB27DLL) + 0x6B0E852376DFB290 * v25 - 0x7EBAB4457BB5FBFBLL;
  v29 = (v28 ^ 0xF9084CA3E46B0B03) & (2 * (v28 & 0xF9AD6E23E573ABABLL)) ^ v28 & 0xF9AD6E23E573ABABLL;
  v30 = ((2 * (v28 ^ 0x7A02C4A4AC8A0B51)) ^ 0x75F550E93F341F4) & (v28 ^ 0x7A02C4A4AC8A0B51) ^ (2 * (v28 ^ 0x7A02C4A4AC8A0B51)) & v19;
  v31 = v30 ^ 0x80A0AA814808A00ALL;
  v32 = (v30 ^ 0x30F000601D100F0) & (4 * v29) ^ v29;
  v33 = ((4 * v31) ^ 0xEBEAA1D27E683E8) & v31 ^ (4 * v31) & 0x83AFAA8749F9A0F8;
  v34 = (v33 ^ 0x2AEAA0501E080E0) & (16 * v32) ^ v32;
  v35 = ((16 * (v33 ^ 0x8101008248192012)) ^ 0x3AFAA8749F9A0FA0) & (v33 ^ 0x8101008248192012) ^ (16 * (v33 ^ 0x8101008248192012)) & 0x83AFAA8749F9A0E0;
  v36 = (v35 ^ 0x2AAA80409980000) & (v34 << 8) ^ v34;
  v37 = (((v35 ^ 0x810502834061A05ALL) << 8) ^ 0xAFAA8749F9A0FA00) & (v35 ^ 0x810502834061A05ALL) ^ ((v35 ^ 0x810502834061A05ALL) << 8) & 0x83AFAA8749F9A000;
  v38 = v36 ^ v19 ^ (v37 ^ 0x83AA820149A00000) & (v36 << 16);
  v39 = (v4 + v3);
  v40 = ((v39 ^ *(*v14 + (*v20 & v16))) & 0x7FFFFFFF) * v11;
  v41 = v28 ^ (2 * ((v38 << 32) & a2 ^ v38 ^ ((v38 << 32) ^ 0x49F9A0FA00000000) & (((v37 ^ 0x52886005900FALL) << 16) & a2 ^ 0x128A20600000000 ^ (((v37 ^ 0x52886005900FALL) << 16) ^ 0x2A8749F900000000) & (v37 ^ 0x52886005900FALL))));
  *v39 = *(v5 + v3) ^ *(v18 + (((v40 ^ HIWORD(v40)) * v11) >> 24)) ^ *((((v40 ^ HIWORD(v40)) * v11) >> 24) + v12 + 1) ^ *(v17 + (((v40 ^ HIWORD(v40)) * v11) >> 24)) ^ ((v40 ^ BYTE2(v40)) * v11) ^ (-63 * (((v40 ^ HIWORD(v40)) * v11) >> 24)) ^ (v41 >> 15) ^ 1;
  v42 = v3 + 1;
  LODWORD(v37) = (*(*v14 + (*v20 & v16)) ^ (v4 + v42)) & 0x7FFFFFFF;
  v43 = ((v37 * v11) ^ ((v37 * v11) >> 16)) * v11;
  *(v4 + v42) = *(v5 + v42) ^ *(v18 + (v43 >> 24)) ^ *((v43 >> 24) + v12 + 1) ^ *(v17 + (v43 >> 24)) ^ v43 ^ (-63 * BYTE3(v43)) ^ (v41 >> 23) ^ 0xED;
  v44 = v3 + 2;
  LODWORD(v43) = (*(*v14 + (*v20 & v16)) ^ (v4 + v44)) & 0x7FFFFFFF;
  v45 = ((v43 * v11) ^ ((v43 * v11) >> 16)) * v11;
  *(v4 + v44) = *(v5 + v44) ^ *(v18 + (v45 >> 24)) ^ *((v45 >> 24) + v12 + 1) ^ *(v17 + (v45 >> 24)) ^ v45 ^ (-63 * BYTE3(v45)) ^ 0x52 ^ (v41 >> 31);
  v46 = (((v8 ^ 0x74FD0496) - 2063798633) ^ v8 ^ ((v8 ^ 0xEDAE0AC8) + 498065609) ^ ((v8 ^ 0x6B72E44E) - 1686958513) ^ ((v8 ^ 0xFDDFFFEC) + 232658416)) & 0xFFFFFFFC ^ 0xFFE15FFLL;
  LODWORD(v45) = ((*(*v14 + (*v20 & v16)) ^ (v4 + v46)) & 0x7FFFFFFF) * v11;
  v47 = (v45 ^ WORD1(v45)) * v11;
  *(v4 + v46) = *(v5 + v46) ^ *(v18 + (v47 >> 24)) ^ *((v47 >> 24) + v12 + 1) ^ *(v17 + (v47 >> 24)) ^ v47 ^ (-63 * BYTE3(v47)) ^ 0xF4 ^ (v41 >> 39);
  v48 = v8 - 890676856 < v6;
  if (a3 > 0x2518907C != (v8 - 890676856) < 0xDAE76F83)
  {
    v48 = a3 > 0x2518907C;
  }

  return (*(STACK[0x430] + 8 * ((223 * v48) ^ a1)))();
}

uint64_t sub_10085DAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x2520];
  LODWORD(STACK[0x7E0]) = STACK[0x2520];
  return (*(v7 + 8 * ((2 * (v8 == 0)) | (4 * (v8 == 0)) | 0xBB60u)))(a1, a2, a3, a4, STACK[0x808], 1864610357, a7, STACK[0x800]);
}

uint64_t sub_10085DBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, unsigned int a47)
{
  v51 = *(&a35 + v48 + 72);
  v52 = ((2 * v48) & 0xFAFFEFE8) + (v48 ^ 0xFD7FF7F6);
  *(v49 + v52 + 41945098) = ((v51 >> ((v47 - 47) ^ 0x2E)) ^ 0x1D) - ((2 * ((v51 >> ((v47 - 47) ^ 0x2E)) ^ 0x1D)) & 0xBF) + 95;
  *(v49 + v52 + 41945099) = (BYTE2(v51) ^ 0x7C) - ((2 * (BYTE2(v51) ^ 0x7C)) & 0xBF) + 95;
  *(v49 + v52 + 41945100) = (BYTE1(v51) ^ 0x86) - ((2 * (BYTE1(v51) ^ 0x86)) & 0xBF) + 95;
  *(v49 + v52 + 41945101) = v51 ^ 0x23;
  return (*(v50 + 8 * (((v48 + 4 < a47) | (8 * (v48 + 4 < a47))) ^ v47)))();
}

uint64_t sub_10085DD60()
{
  v5 = v2 + (((LODWORD(STACK[0x1CD4]) ^ 0xDE6D3F5E) + 563265698) ^ ((LODWORD(STACK[0x1CD4]) ^ 0xCC226496) + 870161258) ^ ((LODWORD(STACK[0x1CD4]) ^ 0xFB9A9CD9) + 73753383));
  *(v0 + v5 + 1217929451 + (((v1 ^ 0x6260CB31) - 5260) ^ 0x3F612ED2u)) = 16 - LODWORD(STACK[0x798]);
  v6 = (v5 - 2013705999);
  v7 = 1112314453 * ((v4 - 256 - 2 * ((v4 - 256) & 0x452339F8) + 1159936510) ^ 0xAA751327);
  *(v4 - 232) = v7 + 1599993265 * v6 + 1244298177;
  LOWORD(STACK[0x2F40]) = v7 + 3771;
  *(v4 - 248) = STACK[0x1040];
  *(v4 - 240) = v0;
  v8 = STACK[0x12B8];
  *(v4 - 252) = ((v1 ^ 0x6260CB31) + 679186684) ^ v7;
  LODWORD(STACK[0x8BC]) = v6;
  *(v4 - 224) = v8 + 115;
  v9 = (*(v3 + 8 * (v1 ^ 0x62601AA2)))(v4 - 256);
  v10 = ((v6 ^ 0xBF7DEFFFDF3FEFEBLL) + v0 + ((2 * v6) & 0x1BE7FDFD6) + 0x4082100020C01015);
  v10[19] = v8[134] ^ 0x5F;
  v10[18] = v8[133] ^ 0x5F;
  v10[17] = v8[132] ^ 0x5F;
  v10[16] = v8[131] ^ 0x5F;
  v10[15] = v8[130] ^ 0x5F;
  v10[14] = v8[129] ^ 0x5F;
  v10[13] = v8[128] ^ 0x5F;
  v10[12] = v8[127] ^ 0x5F;
  v10[11] = v8[126] ^ 0x5F;
  v10[10] = v8[125] ^ 0x5F;
  v10[9] = v8[124] ^ 0x5F;
  v10[8] = v8[123] ^ 0x5F;
  v10[7] = v8[122] ^ 0x5F;
  v10[6] = v8[121] ^ 0x5F;
  v10[5] = v8[120] ^ 0x5F;
  v10[4] = v8[119] ^ 0x5F;
  v10[3] = v8[118] ^ 0x5F;
  v10[2] = v8[117] ^ 0x5F;
  v10[1] = v8[116] ^ 0x5F;
  *v10 = v8[115] ^ 0x5F;
  LODWORD(v10) = LODWORD(STACK[0x8BC]) + 20;
  LODWORD(STACK[0x8BC]) = v10;
  STACK[0x1BB0] = STACK[0xA40];
  LODWORD(STACK[0x1000]) = v10;
  return (*(v3 + 8 * (v1 ^ 0x6260CB31)))(v9);
}

uint64_t sub_10085E06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8 * (v4 - 26464)) - 441620979;
  v8 = *(v7 + v3 + 16);
  v9 = (v5 + v3);
  *v9 = *(v7 + v3);
  v9[1] = v8;
  return (*(v6 + 8 * (((v3 == 192) * ((197 * (v4 ^ 0x7686)) ^ 0x7633)) ^ v4)))();
}

uint64_t sub_10085E0D0@<X0>(int a1@<W5>, uint64_t a2@<X8>)
{
  v16 = v6 - 1;
  v17 = (v9 + (v3 + v16));
  v18 = (a2 + (v4 + v16));
  v19 = *v17;
  v20 = *(*v14 + (*v15 & v2));
  v21 = ((((v17 ^ v20) & 0x7FFFFFFF) * a1) ^ ((((v17 ^ v20) & 0x7FFFFFFF) * a1) >> 16)) * a1;
  v22 = v21 >> ((v7 | 0x42u) - 58);
  v23 = 1864610357 * ((((v18 ^ v20) & 0x7FFFFFFF) * a1) ^ ((((v18 ^ v20) & 0x7FFFFFFF) * a1) >> 16));
  *v18 = *(v10 + v22) ^ v19 ^ *(v12 + v22) ^ *(v22 + v11 + 5) ^ *(v10 + (v23 >> 24)) ^ *(v12 + (v23 >> 24)) ^ *((v23 >> 24) + v11 + 5) ^ v21 ^ v23 ^ (v22 * v8) ^ (-83 * BYTE3(v23));
  return (*(v13 + 8 * ((15 * (v16 != 0)) ^ v5)))();
}

uint64_t sub_10085E57C@<X0>(int a1@<W8>)
{
  v6 = v2 + a1 - 439307661;
  LODWORD(STACK[0x1D9C]) = v6;
  v7 = ((v1 + 1479227538 + v6) | ((v1 + 1479227538 + v6 < ((v3 + 1650461557) ^ 0x8F6BC578)) << 32)) - 3434809592u;
  v8 = STACK[0x17B0] - 0x61E4F89B3D565BB9;
  v9 = v7 < 0x20500C2E;
  v10 = v7 > v8;
  if (v8 < 0x20500C2E != v9)
  {
    v10 = v9;
  }

  if (v10)
  {
    v11 = 371891407;
  }

  else
  {
    v11 = v4;
  }

  LODWORD(STACK[0x1FCC]) = v11;
  LOBYTE(STACK[0x16F7]) = !v10;
  return (*(v5 + 8 * ((46 * v10) ^ v3)))();
}

uint64_t sub_10085E650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v38 = v35 & 0xF7BBFEFD;
  v39 = (((v34 ^ 0x5E9133217DF77186) - 0x5E9133217DF77186) ^ ((v34 ^ 0xCE81730DBFA721F5) + 0x317E8CF24058DE0BLL) ^ ((v34 ^ 0x9010402CD01736CBLL ^ ((v35 & 0xF7BBFEFD) + 367501996)) + 0x6FEFBFD3D47A689ELL)) + 0x308EE1EA1E32F288;
  *(v37 - 256) = 353670337 * a33 + 441779752 + (v35 & 0xF7BBFEFD);
  *(v37 - 232) = 353670337 * a33 + 1018831775;
  *(v37 - 248) = (((v33 ^ 0xA4F163B79E3CF644) + 0x5B0E9C4861C309BCLL) ^ ((v33 ^ 0x2B1E25A554E625) - 0x2B1E25A554E625) ^ ((v33 ^ 0xA4DA7D92D2BDD770) + 0x5B25826D2D422890)) - 353670337 * a33 + 0x2CB8161A532D212ELL;
  *(v37 - 240) = (v39 ^ ((v39 ^ 0x8B1013BE9320D0FELL) + 0x44610DA858820477) ^ ((v39 ^ 0x7B135951DE6E054CLL) - 0x4B9DB8B8EA332E3BLL) ^ ((v39 ^ 0x5D7364E985EC518DLL) - 0x6DFD8500B1B17AFALL) ^ ((v39 ^ 0x9DFECFEFFCFFAF48) + 0x528FD1F9375D7BC1) ^ 0x13A74AEABFE0E24) + 353670337 * a33;
  v40 = (*(v36 + 8 * ((v35 & 0xF7BBFEFD) + 441830279)))(v37 - 256);
  return (*(v36 + 8 * (v38 ^ 0xE5AAE037 ^ (18365 * (v38 > 0x74C2ED5)))))(v40);
}

uint64_t sub_10085E918@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v4 = *(v3 + 1272);
  *(v3 + 200) = *(a1 + 8 * v2);
  return (*(a1 + 8 * (((v4 == 0) * ((((a2 - 9354) | 0x10) + 38375) ^ (a2 + 29380))) ^ a2)))();
}

uint64_t sub_10085EA48@<X0>(int a1@<W0>, int a2@<W7>, int a3@<W8>)
{
  v10 = v8 < v4;
  if (v10 == (((3 * (a3 ^ a1 ^ a2) - 2368) | v5) ^ v6) + v3 > 0xFFFFFFFFA11139C9)
  {
    v10 = v3 + v9 < v8;
  }

  return (*(v7 + 8 * (v10 ^ a3 ^ a1 ^ 1)))();
}

uint64_t sub_10085EAA8()
{
  v1 = STACK[0x250];
  v2 = STACK[0x250] < 0xB70359AA;
  v3 = STACK[0x318] - 17717;
  v4 = (v0 ^ 0xE9D5C711) + STACK[0x270];
  STACK[0x9F8] = v4 + 10;
  v4 -= 0x1E1F0F1801E2AE2;
  v5 = v4 < 0xB70359AA;
  v6 = v4 > v1;
  if (v2 == v5)
  {
    v5 = v6;
  }

  return (*(STACK[0x3A8] + 8 * (v3 ^ (98 * v5))))();
}

uint64_t sub_10085EB78@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v55 = (((a1 ^ 0x69073516FB912933) - 0x69073516FB912933) ^ ((a1 ^ 0xCD5263F927428B0FLL) + 0x32AD9C06D8BD74F1) ^ ((a1 ^ 0xA45556EF3506652DLL) + 0x5BAAA910CAF99AD3)) + 0x6EC51BFD62182840;
  v56 = (v55 ^ 0x58B0D28B17B95EC9) & (2 * (v55 & 0x913AE40387BD9ED1)) ^ v55 & 0x913AE40387BD9ED1;
  v57 = ((2 * (((v52 + 12727) + 0x7AE1D2881990C5C7) ^ v55)) ^ 0xD7B66D173C599B74) & (((v52 + 12727) + 0x7AE1D2881990C5C7) ^ v55) ^ (2 * (((v52 + 12727) + 0x7AE1D2881990C5C7) ^ v55)) & 0xEBDB368B9E2CCDBALL;
  v58 = v57 ^ 0x284912888224448ALL;
  v59 = (v57 ^ 0xC19220021C088900) & (4 * v56) ^ v56;
  v60 = ((4 * v58) ^ 0xAF6CDA2E78B336E8) & v58 ^ (4 * v58) & 0xEBDB368B9E2CCDB8;
  v61 = (v60 ^ 0xAB48120A182004A0) & (16 * v59) ^ v59;
  v62 = ((16 * (v60 ^ 0x40932481860CC912)) ^ 0xBDB368B9E2CCDBA0) & (v60 ^ 0x40932481860CC912) ^ (16 * (v60 ^ 0x40932481860CC912)) & 0xEBDB368B9E2CCDA0;
  v63 = (v62 ^ 0xA9932089820CC900) & (v61 << 8) ^ v61;
  v64 = (((v62 ^ 0x424816021C20041ALL) << 8) ^ 0xDB368B9E2CCDBA00) & (v62 ^ 0x424816021C20041ALL) ^ ((v62 ^ 0x424816021C20041ALL) << 8) & 0xEBDB368B9E2CC800;
  v65 = v63 ^ 0xEBDB368B9E2CCDBALL ^ (v64 ^ 0xCB12028A0C0C0000) & (v63 << 16);
  *(v54 - 256) = 353670337 * a52 + v52 - 22216;
  *(v54 - 248) = 0x2CB8161969575A1DLL - 353670337 * a52;
  *(v54 - 240) = (v55 ^ (2 * ((v65 << 32) & 0x6BDB368B00000000 ^ v65 ^ ((v65 << 32) ^ 0x1E2CCDBA00000000) & (((v64 ^ 0x20C93401922045BALL) << 16) & 0x6BDB368B00000000 ^ 0x4950208300000000 ^ (((v64 ^ 0x20C93401922045BALL) << 16) ^ 0x368B9E2C00000000) & (v64 ^ 0x20C93401922045BALL)))) ^ 0x63281547244720F6) + 353670337 * a52;
  *(v54 - 232) = 353670337 * a52 + 1018831775;
  v66 = (*(v53 + 8 * (v52 + 28311)))(v54 - 256);
  return (*(v53 + 8 * v52))(v66);
}

void sub_10085EF24(uint64_t a1)
{
  v1 = *(a1 + 8) + 1112314453 * ((-2 - ((a1 | 0x77449754) + (~a1 | 0x88BB68AB))) ^ 0x67ED4272);
  __asm { BRAA            X6, X17 }
}

uint64_t sub_10085F130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, int a54)
{
  v58 = (v56 + v55 - a1) >> 16;
  v59 = (v56 + v55 + v58 - a1) >> 8;
  v60 = v56 + v54 + v58;
  v61 = (v60 - a1 - v59) >> 25;
  v62 = (v60 - a1 - v61 - v59) >> 15;
  v63 = (v60 + v62 - a1 - v61 - v59) >> 1;
  LODWORD(STACK[0x458]) = (2 * (-v59 - a1 - v61 + v54 + v56 + v58 + v62 - v63)) & 0x7525F3BA ^ (-v59 - a1 - v61 + v54 + v56 + v58 + v62 - v63);
  LODWORD(STACK[0x468]) = a54 & 0xFEFFFFFF;
  v64 = *(v57 - 224 + (*(v57 - 224 + ((*(v57 - 224 + ((*(v57 - 224) + 12) & 0xF)) + 13) & 0xF)) & 0xF ^ 8));
  v65 = *(STACK[0x480] + 8 * STACK[0x470]);
  if (((v64 + 12) & 0xE) != 0)
  {
    v66 = (v64 + 12) & 0xF;
  }

  else
  {
    v66 = 1;
  }

  v67 = STACK[0x470] + 10206;
  LODWORD(STACK[0x320]) = v67;
  return v65(v66 - 1, 833604403, v67 ^ 0x6A44u, 845678247);
}

uint64_t sub_10085F618()
{
  v4 = (*(v1 + 8 * (v3 ^ 0x6A4C)))(v0);
  *v2 = 0;
  return (*(v1 + 8 * v3))(v4);
}

uint64_t sub_10085F760(__n128 a1)
{
  a1.n128_u16[0] = 24415;
  a1.n128_u8[2] = 95;
  a1.n128_u8[3] = 95;
  a1.n128_u8[4] = 95;
  a1.n128_u8[5] = 95;
  a1.n128_u8[6] = 95;
  a1.n128_u8[7] = 95;
  return (*(v2 + 8 * v1))(a1);
}

uint64_t sub_10085F7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  STACK[0x1318] = a6;
  STACK[0x898] = v8;
  v10 = STACK[0x1428];
  STACK[0xCD0] = &STACK[0x2720] + STACK[0x1428];
  STACK[0x1428] = (v7 ^ 0x27D0u) + v10 - 5649;
  STACK[0x8D0] = v6 ^ 0x10A99C80114D1487;
  return (*(v9 + 8 * (((v6 != 0) * (((v7 + 1736156666) & 0xFAE4F876) - 1650510966)) ^ v7)))();
}

uint64_t sub_10085FBEC@<X0>(int a1@<W8>)
{
  *v3 = 0;
  v5 = v1 + 48 * v2;
  *(v5 + 16) = 0;
  *(v5 + 8) = 0;
  *(v5 + 4) = 0;
  *(v5 + 20) = 0x3E54CF6A00000000;
  *(v5 + 32) = 0;
  *(v5 + 40) = 1850287412;
  return (*(v4 + 8 * a1))();
}

uint64_t sub_10085FC88(int a1)
{
  v8 = *(v7 + 8 * v6);
  *(v1 + (a1 - 1550464034)) = (111 * a1 + 66) ^ HIBYTE(v5) ^ *(v2 + (a1 - 1550464034)) ^ *(v3 + (a1 - 1550464034)) ^ *(v4 + (a1 - 1550464034) + 1) ^ 0xDA;
  *(v1 + (a1 - 1550464033)) = (111 * a1 - 79) ^ BYTE2(v5) ^ *(v2 + (a1 - 1550464033)) ^ *(v3 + (a1 - 1550464033)) ^ *((a1 - 1550464033) + v4 + 1) ^ 0x7B;
  *(v1 + (a1 - 1550464032)) = (111 * a1 + 32) ^ BYTE1(v5) ^ *(v2 + (a1 - 1550464032)) ^ *(v3 + (a1 - 1550464032)) ^ *(v4 + (a1 - 1550464032) + 1) ^ 0xE3;
  *(v1 + (a1 - 1550464031)) = v5 ^ (111 * a1 - 113) ^ *(v2 + (a1 - 1550464031)) ^ *(v3 + (a1 - 1550464031)) ^ *((a1 - 1550464031) + v4 + 1) ^ 0xF7;
  return v8();
}

uint64_t sub_10085FDC8()
{
  *STACK[0x6F0] += (v0 + 12396201) & 0x9CE2596F ^ 0x506A;
  *(v3 - 248) = v0 + 155453101 * ((2 * (v1 & 0x22A0D000) - v1 + 1566519288) ^ 0xBB793437) - 1353723208;
  *(v3 - 256) = 0;
  v4 = (*(v2 + 8 * (v0 - 1650460040)))(v3 - 256);
  return (*(v2 + 8 * (v0 - 1650499569)))(v4);
}

uint64_t sub_10085FE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v45 = *(v44 + 8 * (v43 - 1650487455));
  STACK[0x1610] = a9;
  return v45(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43);
}

uint64_t sub_10085FF88()
{
  STACK[0x13C8] = STACK[0x1AD8];
  LODWORD(STACK[0xD4C]) = v0;
  STACK[0xBB0] = STACK[0x2418];
  LODWORD(STACK[0x1504]) = STACK[0x2420];
  LOBYTE(STACK[0x1677]) = 1;
  STACK[0x1528] = &STACK[0x140C];
  STACK[0xEE0] = &STACK[0x9D0];
  LODWORD(STACK[0xCF8]) = 1332049182;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_100860000@<X0>(int a1@<W8>)
{
  STACK[0x2C0] = ((1027 * (a1 ^ 0xB146u)) ^ (v2[196] - 0x7D5B1A4758246674) ^ 0xFFFF4BFB7F775419) + ((2 * (v2[196] - 0x7D5B1A4758246674)) & 0xFFFE97F6FEEFB8FELL) + 0xF7DFFE4BDF9AF9FLL;
  STACK[0x2B0] = v2[189] - 0xB90BD7E39209F09;
  STACK[0x2A0] = ((v2[200] - 0x2882B6585C441801) ^ 0x8FFD4FFABD739CBELL) + 0x7F7FFBE57FFDEF60 + ((2 * (v2[200] - 0x2882B6585C441801)) & 0x1FFA9FF57AE7397CLL);
  STACK[0x290] = ((v2[204] - 0x7B18333B9310501) ^ 0xAF7F5BFD3F7FAF1FLL) + 0x5FFDEFE2FDF1DCFFLL + ((2 * (v2[204] - 0x7B18333B9310501)) & 0x5EFEB7FA7EFF5E3ELL);
  STACK[0x280] = ((v2[208] - 0x221DA9F0F1EA5222) ^ 0x8F7F7FFDBFF39D9FLL) + 0x7FFDCBE27D7DEE7FLL + ((2 * (v2[208] - 0x221DA9F0F1EA5222)) & 0x1EFEFFFB7FE73B3ELL);
  v3 = v2[212];
  STACK[0x260] = ((v3 - 0x1E1F0F237218492) ^ 0xDF7FEFF3BFF7CD9FLL) + 0x2FFD5BEC7D79BE7FLL + ((2 * (v3 - 0x1E1F0F237218492)) & 0xBEFFDFE77FEF9B3ELL);
  STACK[0x250] = v2[211] - 0x654E677531F7CD7ELL;
  v4 = v2[214];
  STACK[0x230] = ((v4 - 0x776E1D627FFA35D8) ^ 0xF7FEBEDBFFB8EDELL) - 0x2A00D828A02C0 + ((2 * (v4 - 0x776E1D627FFA35D8)) & 0x1EFFD7DB7FF71DBCLL);
  STACK[0x220] = v2[213] - 0x70EBC41BF1EA30A5;
  STACK[0x210] = ((v2[188] - 0x8AA5BE76575BF92) ^ 0x4F7D4FF7FD7B9D7ELL) - 0x40000417C00A1160 + ((2 * (v2[188] - 0x8AA5BE76575BF92)) & 0x9EFA9FEFFAF73AFCLL);
  STACK[0x200] = ((v2[186] - 0x5F84BE805CAC3B23) ^ 0x7FFFFFF03D7FBC9ELL) - 0x7082B410000E3080 + ((2 * (v2[186] - 0x5F84BE805CAC3B23)) & 0xFFFFFFE07AFF793CLL);
  STACK[0x270] = v3;
  STACK[0x240] = v4;
  v5 = *(v1 + 8 * a1);
  STACK[0x360] = v2[61];
  STACK[0x3E0] = v2[48];
  STACK[0x350] = v2[114];
  STACK[0x340] = v2[126];
  STACK[0x3D0] = v2[121];
  STACK[0x3C0] = v2[135];
  STACK[0x330] = v2[75];
  STACK[0x320] = v2[95];
  v6 = v2[21];
  STACK[0x300] = v2[22];
  STACK[0x2F0] = v6;
  STACK[0x2E0] = v2[24];
  STACK[0x2D0] = STACK[0x450];
  STACK[0x3B0] = v2[110];
  LODWORD(STACK[0x370]) = LOWORD(STACK[0xA12]);
  LODWORD(STACK[0x380]) = LOWORD(STACK[0x9F6]);
  LODWORD(STACK[0x3F0]) = LOWORD(STACK[0x9E6]);
  LODWORD(STACK[0x390]) = LOWORD(STACK[0x9A6]);
  return v5(0x34715EC3C626A647, 0xAD22D5F321CF2B02, 0x9EEC847924C2723BLL, 0xDB05303BB58F7BB9);
}

uint64_t sub_100860B30@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10)
{
  a8 = v10;
  a9 = a1;
  a10 = (v13 + 18390) ^ (139493411 * ((~&a6 & 0xA3E44D24 | &a6 & 0x5C1BB2D8) ^ 0xAFC9AC61));
  a6 = v12;
  v14 = (*(v11 + 8 * (v13 + 26560)))(&a6);
  return (*(v11 + 8 * v13))(v14);
}

uint64_t sub_100860CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, int a18, char *a19, unsigned int a20, uint64_t a21, unsigned int a22, __int16 a23, int a24)
{
  v28 = 139493411 * (&a18 ^ 0xC2DE145);
  a21 = v24;
  a22 = v28 + 1133646169;
  a23 = -32733 * (&a18 ^ 0xE145) + ((2 * (v27 + 1)) & 0xDEF6) + 32221 + ((((v25 + 20831) | 0x9960) + 21530) ^ (v27 + 1));
  a20 = v28 - 466197451;
  a18 = v25 - v28 + 166;
  a19 = &a15;
  v29 = (*(v26 + 8 * (v25 ^ 0x7BA1)))(&a18);
  return (*(v26 + 8 * (((a24 == 1497668682) * ((v25 ^ 0x150D) - 42327)) ^ v25)))(v29);
}

uint64_t sub_100860F64@<X0>(int a1@<W8>)
{
  *(*(v2 + 16) + 8 * v1) = v3;
  v5 = *(v2 + 8) + 1;
  *(v2 + 4) = a1 + 1650504768 + *(v2 + 4) - 1650511953;
  *(v2 + 8) = v5;
  return (*(v4 + 8 * a1))();
}

uint64_t sub_1008610D8()
{
  LODWORD(STACK[0xA04]) += 4;
  v3 = STACK[0x1EC0];
  *(v2 - 240) = STACK[0x1C18];
  *(v2 - 256) = v3;
  *(v2 - 232) = (634647737 * ((2 * (v0 & 0x54084BE0) - v0 + 737653784) ^ 0x46619BE4)) ^ 0x9F33;
  v4 = (*(v1 + 417208))(v2 - 256);
  return (*(v1 + 8 * ((4 * (LOBYTE(STACK[0x2F48]) != 37)) | 0x8422u)))(v4);
}

uint64_t sub_100861180@<X0>(int a1@<W8>)
{
  v4 = STACK[0x242C];
  LODWORD(STACK[0x146C]) = a1;
  return (*(v3 + 8 * (((((v4 == v2) ^ (v1 + 30)) & 1) * ((v1 ^ 0x6D32) - 2300)) ^ v1)))();
}

void sub_1008611D4(uint64_t a1)
{
  v1 = 634647737 * ((2 * (a1 & 0x56C9712A) - a1 + 691441365) ^ 0x44A0A129);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_100861388()
{
  LODWORD(STACK[0x21C]) = LODWORD(STACK[0x290]) + LODWORD(STACK[0x464]);
  v1 = *(STACK[0x480] + 8 * (v0 - 10639));
  LODWORD(STACK[0x238]) = (v0 - 26685) | 0x2193;
  return v1();
}

uint64_t sub_1008614C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v9 + 1280);
  v11 = v10[1];
  v12 = *(v9 + 944);
  v12[1] = v11;
  *v12 = *v10;
  return (*(a8 + 8 * ((180 * ((((v8 - 19100) ^ (v11 == 0)) & 1) == 0)) ^ v8)))();
}

uint64_t sub_100861514@<X0>(int a1@<W8>)
{
  v7 = (v4 + 1874831299) & 0x903FBE7F;
  *(v6 - 224) = v7;
  v8 = -1687810435 * v1;
  v9 = (1236271104 * v2) | ((-1683995493 * v2) >> 12);
  v10 = (-2086715392 * v1) | ((-1687810435 * v1) >> 18);
  v11 = (-2033647616 * a1) | ((-1070561591 * a1) >> 16);
  v12 = (v9 ^ ((385875968 * v5) | (((((v4 - 2081534789) & 0x7C11277F) + v7 + 1470009749) * v5) >> 8)) ^ 0xB3218BAA ^ (v10 - 2 * (v10 & 0x33218BAB ^ (v8 >> 18) & 1) - 1289647190)) + v11;
  v13 = (1602224128 * v12) | ((-1316123969 * v12) >> 9);
  v14 = (-724566016 * v10) | ((-325538483 * v10) >> 12);
  v15 = 2751255 * v14;
  v16 = (1217731488 * v11) | ((172271837 * v11) >> 27);
  v17 = ((2088763392 * v9) | ((-566989575 * v9) >> 9)) - v16 - v14 - v13;
  v18 = (358742272 * v13) | ((-988454407 * v13) >> 24);
  v19 = (1258078208 * v17) | ((-1227019277 * v17) >> 18);
  v20 = (-5242880 * v16) | ((-791064581 * v16) >> 12);
  HIDWORD(v21) = v15;
  LODWORD(v21) = v15;
  v22 = (v21 >> 29) - v20 + v18 - v19;
  v23 = (1670381568 * v18) | ((-303778247 * v18) >> 12);
  v24 = (-1879048192 * v22) | ((-393483623 * v22) >> 4);
  v25 = (1580219520 * v19) | ((-88317831 * v19) >> 25);
  v26 = v24 ^ (((-1174405120 * v20) | ((-431535779 * v20) >> 7)) + v23 + v25);
  v27 = v26 - 1863828757 + (v23 ^ v25 ^ v24 ^ 0x4ED6746B);
  v28 = -1098927137 * v27 + v25;
  v29 = v26 - -1098927137 * v27;
  LODWORD(STACK[0x3C4]) = -1098927137 * v27;
  LODWORD(STACK[0x460]) = v24;
  v30 = (-1098927137 * v27) ^ v24;
  LODWORD(STACK[0x408]) = v28;
  LODWORD(STACK[0x428]) = v29;
  v31 = (-1024487424 * v28) | ((530329337 * v28) >> 20);
  LODWORD(STACK[0x3A8]) = v30;
  v32 = (1689913344 * v30) | ((-1647536319 * v30) >> 21);
  v33 = (188219392 * v29) | ((2106392935 * v29) >> 13);
  HIDWORD(v21) = 1065293767 * (((-1848256704 * v27) | ((-1035511971 * v27) >> 26)) + v31 + v32 - v33);
  LODWORD(v21) = HIDWORD(v21);
  v34 = v21 >> 30;
  v35 = (-682598432 * v32) | ((1991934719 * v32) >> 27);
  v36 = (618790912 * v33) | ((2087293553 * v33) >> 15);
  v37 = ((-1164027584 * v31) | ((-957712027 * v31) >> 26)) + v35 - v36 + v34;
  v38 = (-2115903051 * v34) >> 29;
  v39 = (-25065308 * v37) | ((2141217321 * v37) >> 30);
  v40 = (252644776 * v34) | v38;
  v41 = (-822566912 * v36) | ((-2108262459 * v36) >> 19);
  v42 = ((-207259072 * v35) | ((265197033 * v35) >> 26)) + v41 + v40 + v39;
  HIDWORD(v21) = v38;
  LODWORD(v21) = 1945820857 * v40;
  v43 = v21 >> 1;
  v44 = (-502155264 * v39) | ((-344178121 * v39) >> 21);
  v45 = (-511732736 * v42) | ((2130206693 * v42) >> 22);
  v46 = v45 ^ ((v43 ^ ((703472512 * v41) | ((-1269572537 * v41) >> 25))) - v44);
  v47 = v46 + 1496398931 * (v45 ^ (v43 - v44 - 1785546211));
  v48 = v44 - (v47 ^ 0x72E9F6F7);
  v49 = v45 - (v47 ^ 0x72E9F6F7);
  LODWORD(STACK[0x388]) = v47;
  LODWORD(STACK[0x440]) = v46;
  LODWORD(STACK[0x390]) = v47 ^ v46;
  v50 = (-476086942 * (v47 ^ 0x72E9F6F7)) | ((-238043471 * (v47 ^ 0x72E9F6F7)) >> 31);
  LODWORD(STACK[0x450]) = v48;
  v51 = ((1144570567 * v48) >> 3) - (v48 << 29);
  LODWORD(STACK[0x3E8]) = v49;
  v52 = (-1361344368 * v49) | ((-1964132215 * v49) >> 28);
  v53 = (-1312489472 * (v47 ^ v46 ^ 0x72E9F6F7)) | ((-1172262459 * (v47 ^ v46 ^ 0x72E9F6F7)) >> 16);
  v54 = (1322704896 * ((v50 + v51 - v52) ^ v53)) | ((-1873119561 * ((v50 + v51 - v52) ^ v53)) >> 19);
  v55 = (-845225536 * v52) | ((-482968697 * v52) >> 26);
  v56 = (1765087000 * v53) | ((-1926847773 * v53) >> 29);
  v57 = 788131041 * v56;
  v58 = (v54 ^ ((-1744830464 * v51) | ((-963820845 * v51) >> 5))) - (v56 + v55);
  v59 = (1581530505 * v58) >> 14;
  v60 = (-165412864 * v58) | v59;
  v61 = (-203832832 * v56) | ((788131041 * v56) >> 23);
  v62 = (580799692 * v54) | ((-928541901 * v54) >> 30);
  v63 = (v60 ^ (((-1069888640 * v55) | ((-847219305 * v55) >> 25)) - v62)) + v61;
  v64 = ((302467711 * v60) >> 6) - (v59 << 26);
  v65 = ((1940469119 * v62) >> 5) - (v62 << 27);
  v66 = (-432013312 * v63) | ((1719377817 * v63) >> 10);
  HIDWORD(v21) = v57 >> 23;
  LODWORD(v21) = -517684489 * v61;
  v67 = (v66 ^ (v64 + (v65 ^ (v21 >> 1)))) + 2 * (v66 & (v64 + (v65 ^ (v21 >> 1))));
  v68 = (v67 ^ (v65 + v64 - v66 + 371335508)) + 1065494791;
  v69 = v66 - v68;
  v70 = v64 - v68;
  LODWORD(STACK[0x3A4]) = v67;
  v71 = v68 ^ v67;
  v72 = -151258425 * v68;
  v73 = 67510605 * (v68 ^ v67);
  LODWORD(STACK[0x37C]) = v68;
  v74 = -1912602624 * v68;
  v75 = 993005205 * v69;
  v76 = (-1810542592 * v70) | ((1011433813 * v70) >> 20);
  *(v6 - 152) = v69;
  v77 = -1522532352 * v69;
  v78 = v74 & 0xFE000000 | (v72 >> 7);
  v79 = (993005205 * v69) >> 10;
  LODWORD(STACK[0x394]) = v71;
  v80 = (822765568 * v71) | (v73 >> 21);
  v81 = v77 & 0xFFC00000 | (v75 >> 10);
  v82 = v80 + v81 + (v76 ^ v78) - 2 * v80;
  v83 = (-1316093952 * v82) | ((-1257514809 * v82) >> 15);
  HIDWORD(v21) = v79;
  LODWORD(v21) = 1571136849 * v81;
  v84 = v21 >> 2;
  v85 = (-206760320 * v80) | ((-1444455891 * v80) >> 25);
  v86 = ((((-813694976 * v76) | ((1910875551 * v76) >> 9)) + v83) ^ v84) + v85;
  v87 = (-2053111808 * v83) | ((-2144545747 * v83) >> 11);
  v88 = (1907858380 * v86) | ((1550706419 * v86) >> 30);
  v89 = (1739194368 * v85) | ((1008874453 * v85) >> 15);
  v90 = (v87 ^ ((-1359551104 * v84) | ((761130443 * v84) >> 25))) - v89 - v88;
  v91 = (-1593835520 * v87) | ((292802209 * v87) >> 8);
  v92 = (865236608 * v90) | ((-1033427731 * v90) >> 25);
  v93 = (367652864 * v88) | ((98655903 * v88) >> 20);
  v94 = v93 + (v91 ^ ((-2101346304 * v89) | ((-99263989 * v89) >> 10))) + v92;
  v95 = (v94 ^ 0xD3D4C93B ^ (((v91 - v93) ^ 0xA3318414) - v92)) - 346186729;
  LODWORD(STACK[0x38C]) = v92;
  v96 = v95 ^ v92;
  v97 = v93 - v95;
  v98 = v95 ^ v94;
  v99 = -1661239713 * (v93 - v95);
  LODWORD(STACK[0x3D4]) = v95;
  LODWORD(STACK[0x3A0]) = v96;
  v100 = (-1226047488 * v95) | ((-1898304069 * v95) >> 14);
  LODWORD(STACK[0x3F0]) = v97;
  v101 = (-1442316288 * v96) | ((-514550463 * v96) >> 13);
  v102 = (-604833792 * v97) | (v99 >> 21);
  HIDWORD(v21) = v98;
  LODWORD(v21) = 963007937 * v98;
  v103 = v21 >> 4;
  v104 = (-1358954496 * (v100 + v103 - v101 + v102)) | ((267140271 * (v100 + v103 - v101 + v102)) >> 8);
  v105 = (-1944117243 * v103) >> 14;
  v106 = (1278939648 * v101) | ((-1566171767 * v101) >> 23);
  v107 = (-2146172928 * v103) | v105;
  v108 = ((772358488 * v102) | ((-1514067925 * v102) >> 29)) + v107 - v106 + v104;
  v109 = (-1260568141 * v104) >> 23;
  v110 = (-1165793792 * v104) | v109;
  v111 = (-696975360 * v108) | ((1240258165 * v108) >> 16);
  v112 = ((-711596497 * v107) >> 3) - (v105 << 29);
  v113 = -1801097039 * v110;
  v114 = ((-973078528 * v106) | ((818700899 * v106) >> 7)) - v112 + v110 - v111;
  v115 = -1294830069 * v111;
  v116 = -2101346304 * v111;
  v117 = __PAIR64__(v109, v113) >> 1;
  v118 = (-1216872448 * v114) | ((-1079503121 * v114) >> 13);
  v119 = v116 & 0xFFC00000 | (v115 >> 10);
  v120 = ((-242156544 * v112) | ((586966079 * v112) >> 22)) ^ v117 ^ v119 ^ 0xFF72BDFE ^ (v118 - ((2 * v118) & 0xFEE57BFC) - 9257474);
  v121 = -1661626207 * (v120 + ((v117 + v119 + 684292990) ^ v118)) - 434286926;
  v122 = v121 + v119;
  LODWORD(STACK[0x458]) = v120;
  v123 = v121 ^ v120;
  LODWORD(STACK[0x438]) = v118 - v121;
  v124 = (496578048 * (v118 - v121)) | ((-1072771945 * (v118 - v121)) >> 23);
  LODWORD(STACK[0x400]) = v121 + v119;
  v125 = (368065360 * v122) | ((828310453 * v122) >> 28);
  v126 = -1683772877 * v125;
  LODWORD(STACK[0x398]) = v123;
  HIDWORD(v21) = 910967761 * v123;
  LODWORD(v21) = 910967761 * v123;
  v127 = v21 >> 30;
  v128 = ((-603979776 * v121) | ((-628108937 * v121) >> 6)) + v125 - v124 + v127;
  v129 = (-853933264 * v128) | ((-1127112653 * v128) >> 28);
  v130 = (-1946943488 * v124) | ((1611440893 * v124) >> 14);
  v131 = (v126 >> 4) | (805306368 * ((828310453 * v122) >> 28));
  v132 = (-427849728 * v127) | ((1167904753 * v127) >> 21);
  v133 = 369346381 * v130;
  v134 = (1918566400 * (v131 + v130 - v132 + v129)) | ((-2061143461 * (v131 + v130 - v132 + v129)) >> 16);
  v135 = (-767783574 * v129) | ((-383891787 * v129) >> 31);
  v136 = -1827183039 * v132;
  v137 = (1986269184 * v132) | ((-1827183039 * v132) >> 20);
  v136 >>= 20;
  v138 = v135 ^ __ROR4__(v133, 29) ^ v134 ^ (v137 - 2 * (v137 & 0x6FAE6D8F ^ v136 & 4) + 1873702283) ^ 0x6FAE6D8B;
  v139 = (-1539309568 * v134) | ((450363025 * v134) >> 10);
  v140 = (-830604640 * v135) | ((-965480491 * v135) >> 27);
  v141 = (-2076180480 * v138) | ((279811601 * v138) >> 10);
  v142 = v139 + (v140 ^ (((1046395009 * v137) >> 9) | (1082130432 * v136))) + v141;
  v143 = (1353071889 * (((v140 - v139) ^ 0xB0444D2A) - v141)) ^ v142;
  LODWORD(STACK[0x420]) = v139;
  LODWORD(STACK[0x380]) = v143;
  HIDWORD(v21) = v143;
  LODWORD(v21) = -1864956415 * v143;
  v144 = v21 >> 8;
  HIDWORD(v21) = (650712479 * v143) ^ v139;
  LODWORD(v21) = -1789506911 * HIDWORD(v21);
  v145 = v21 >> 2;
  LODWORD(STACK[0x3F8]) = v142 - 650712479 * v143;
  v146 = (1817750124 * (v142 - 650712479 * v143)) | ((1528179355 * (v142 - 650712479 * v143)) >> 30);
  LODWORD(STACK[0x3AC]) = 650712479 * v143;
  LODWORD(STACK[0x410]) = v141;
  v147 = (650712479 * v143) ^ v141;
  LODWORD(STACK[0x384]) = v147;
  HIDWORD(v21) = 441771605 * v147;
  LODWORD(v21) = 441771605 * v147;
  v148 = v21 >> 30;
  v149 = 46088505 * ((v144 - v145) ^ v148 ^ 0x1B09B69 ^ (v146 - ((2 * v146) & 0x36136D2) + 28351337));
  v150 = (-391454944 * v148) | ((-12232967 * v148) >> 27);
  v151 = (-1906774784 * v146) | ((1099847917 * v146) >> 24);
  HIDWORD(v21) = v149;
  LODWORD(v21) = v149;
  v152 = v21 >> 29;
  v153 = ((-1610612736 * v145) | ((-1353294035 * v145) >> 3)) + v150 + v151 + v152;
  v154 = (-178257920 * v152) | ((-1638803541 * v152) >> 11);
  v155 = (2004877312 * v153) | ((1067136751 * v153) >> 9);
  v156 = (461717504 * v151) | ((454061589 * v151) >> 18);
  v157 = ((1848639488 * v150) | ((-769153309 * v150) >> 12)) - v156 + v154 + v155;
  v158 = (-1531774976 * v155) | ((-1386965409 * v155) >> 21);
  v159 = (-469762048 * v157) | ((-180484615 * v157) >> 6);
  LODWORD(STACK[0x430]) = v158;
  v160 = ((((-757002752 * v156) | ((2078896263 * v156) >> 23)) - ((-1795162112 * v154) | ((1208734101 * v154) >> 8)) - v158 + v159) ^ (((-1795162112 * v154) | ((1208734101 * v154) >> 8)) - v158 + v159 - 1376219352)) + 2083359384;
  LODWORD(STACK[0x3C0]) = v160;
  v161 = v159 - v160;
  v162 = *(v3 + 8 * (v4 + 7346));
  LODWORD(STACK[0x3C8]) = v121;
  v163 = v162(1032);
  STACK[0x4B8] = 0;
  LODWORD(STACK[0x48C]) = 0;
  *(v6 - 192) = 0;
  STACK[0x4A0] = 0;
  *(v6 - 248) = 0;
  *(v6 - 176) = 0;
  STACK[0x470] = 0;
  STACK[0x498] = 0;
  *(v6 - 256) = 0;
  *(v6 - 168) = 0;
  STACK[0x480] = 0;
  *(v6 - 208) = 0;
  *(v6 - 200) = 0;
  *(v6 - 240) = 0;
  *(v6 - 232) = 0;
  *(v6 - 184) = 0;
  STACK[0x4A8] = 0;
  STACK[0x490] = 0;
  STACK[0x478] = 0;
  *(v6 - 160) = 0;
  STACK[0x4B0] = 0;
  LODWORD(STACK[0x418]) = v161;
  STACK[0x468] = v163;
  STACK[0x3B0] = *(&off_1010A0B50 + (v4 - 42043)) - 819803999;
  STACK[0x448] = *(&off_1010A0B50 + (v4 - 41434)) - 330722806;
  v164 = *(v3 + 8 * ((30 * (v163 == 0)) ^ v4));
  *(v6 - 148) = 1644243867;
  *(v6 - 216) = v3;
  return v164();
}

uint64_t sub_100862778(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  *v1 = *v2;
  *v2 = v3;
  return result;
}

uint64_t sub_100862894()
{
  v4 = v1 - 1650491644;
  v5 = v2 + v0;
  v6 = STACK[0x15AC];
  v7 = STACK[0xBA0];
  LODWORD(STACK[0x1B40]) = v5;
  LODWORD(STACK[0x15AC]) = v6 + v5;
  STACK[0x24C0] = *v7;
  return (*(v3 + 8 * v4))();
}

uint64_t sub_1008628E4@<X0>(uint64_t a1@<X8>)
{
  *(v5 - 256) = a1;
  *(v5 - 244) = v2 - 1012831759 * (((v3 | 0x994B338B) - (v3 & 0x994B3388)) ^ 0x89D82501) - 1650465794;
  v6 = (*(v4 + 8 * (v2 - 1650459786)))(v5 - 256);
  *(v1 + 152) = 0;
  return (*(v4 + 8 * (v2 - 1650492260)))(v6);
}

uint64_t sub_1008629B8@<X0>(uint64_t a1@<X2>, int a2@<W3>, uint64_t a3@<X8>)
{
  v8 = *(a3 + v3 + a1) ^ a2;
  v9 = ((*(a3 + v3 - 595448525) << 24) | ((*(a3 + v3 - 595448526) ^ a2) << 16) | v8 | ((*(a3 + v3 - 595448527) ^ a2) << 8)) ^ 0x5F000000;
  v10 = v9 - 2 * (v9 & 0x69D5C715 ^ v8 & 4);
  v11 = (a3 & 0x130 | 0x96565A0D) ^ (2 * (a3 & 0x130)) ^ 0x14080260 ^ (((2 * (a3 & 0x130)) | 0x80080000) & (a3 ^ 0x42EE564C) | 0x1C322311);
  v12 = ((2 * (a3 ^ 0x42EE564C)) ^ 0xA8F0F6F8) & (a3 ^ 0x42EE564C) ^ (2 * (a3 ^ 0x42EE564C)) & 0x2040B78;
  v13 = v11 ^ v12 & 0x219104A0 ^ ((4 * v11) ^ 0xCC08E952) & (v12 ^ 0x9C687278);
  v14 = ((4 * v12) ^ 0xC418CD42) & (v12 ^ 0x9C687278) ^ v12 & 0x219104A0;
  v15 = v13 ^ v14 & 0xB5B904A2 ^ ((16 * v13) ^ 0x11FEB162) & (v14 ^ 0x9428002C);
  v16 = ((16 * v14) ^ 0xF73906A2) & (v14 ^ 0x9428002C) ^ v14 & 0xB5B904A2;
  v17 = v15 ^ v16 & 0xB5B904A2 ^ ((v15 << 8) ^ 0xD9C278A2) & (v16 ^ 0x9428007C);
  v18 = ((v16 << 8) ^ 0x9DB924A2) & (v16 ^ 0x9428007C) ^ v16 & 0xB5B904A2;
  *(v6 + 4 * (((a3 ^ (2 * (v17 ^ v18 & 0x35B904A2 ^ ((v17 << 16) ^ 0xCEE504A3) & (v18 ^ 0xA440000) ^ ((v17 << 16) ^ 0xCEE504A3) & 0x1E6C0020))) >> 2) ^ 0x3816B6F2)) = v10 + v4;
  return (*(v5 + 8 * ((59 * ((a3 - 595448524) < 0x40)) ^ v7)))();
}

uint64_t sub_100862BE4(int a1, int a2)
{
  v5 = (a1 - 96779651) & 0x5C4ADFC;
  v6 = v2 < v3;
  v7 = a2 - 543822981 + v5 - 22304;
  v8 = v6 ^ (v7 < 0x12BF49C5);
  v9 = v7 < v2;
  if (!v8)
  {
    v6 = v9;
  }

  return (*(v4 + 8 * ((15582 * v6) ^ v5)))();
}

uint64_t sub_100862CF8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a1[47] = v9[47];
  a1[46] = v9[46];
  a1[45] = v9[45];
  a1[44] = v9[44];
  a1[43] = v9[43];
  a1[42] = v9[42];
  a1[41] = v9[41];
  a1[40] = v9[40];
  a1[39] = v9[39];
  a1[38] = v9[38];
  a1[37] = v9[37];
  a1[36] = v9[36];
  a1[35] = v9[35];
  a1[34] = v9[34];
  a1[33] = v9[33];
  a1[32] = v9[32];
  a1[31] = v9[31];
  a1[30] = v9[30];
  a1[29] = v9[29];
  a1[28] = v9[28];
  a1[27] = v9[27];
  a1[26] = v9[26];
  a1[25] = v9[25];
  a1[24] = v9[24];
  a1[23] = v9[23];
  a1[22] = v9[22];
  a1[21] = v9[21];
  a1[20] = v9[20];
  a1[19] = v9[19];
  a1[18] = v9[18];
  a1[17] = v9[17];
  a1[16] = v9[16];
  a1[15] = v9[15];
  a1[14] = v9[14];
  a1[13] = v9[13];
  a1[12] = v9[12];
  a1[11] = v9[11];
  a1[10] = v9[10];
  a1[9] = v9[9];
  a1[8] = v9[8];
  a1[7] = v9[7];
  a1[6] = v9[6];
  a1[5] = v9[5];
  a1[4] = v9[4];
  a1[3] = v9[3];
  a1[2] = v9[2];
  a1[1] = v9[1];
  *a1 = *v9;
  return (*(a8 + 8 * (v8 ^ 0x4932)))(xmmword_100F52F00, 0, xmmword_100BC76A0, xmmword_100BC7690, xmmword_100BC7680, xmmword_100BC7670, vdupq_n_s32(0x9DD1CB08), vdupq_n_s32(0x387EC6CEu));
}

uint64_t sub_100862F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v7;
  v12 = (v7 - 8566333) & 0x6262F4D2;
  v13 = 2741 * (v7 ^ 0x91BF);
  v14 = *(v8 - 0x43D8CBFA0CEB4284);
  STACK[0xB90] = v14;
  v15 = *(v8 - 0x43D8CBFA0CEB428CLL);
  v16 = STACK[0x1050];
  *(v16 + 24) = v9;
  v16 += 24;
  *(v16 - 8) = 0;
  STACK[0x10A8] = v15;
  STACK[0x1388] = v16 - 8;
  *(v16 + 8) = 0;
  STACK[0xF18] = v16 + 8;
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  STACK[0x1A60] = v16 + 24;
  *(v16 + 32) = 0;
  *(v16 + 56) = 0;
  *(v16 + 64) = 0;
  return (*(v10 + 8 * (((v13 + v12 - 1650520065) * (v14 != 0)) ^ v11)))(a1, a2, a3, a4, a5, a6, a7, STACK[0x800]);
}

uint64_t sub_10086305C(uint64_t a1)
{
  v5 = v1;
  LODWORD(STACK[0x7E0]) = v1 + 1650451217;
  v6 = v1 - 48;
  *a1 = v2 ^ 0xF4EF7FF3;
  *(a1 + 16) = 0;
  *(a1 + 4) = 0x21E23A8900000000;
  v7 = (*(v3 + 8 * (v1 + 40345)))((8 * (v2 ^ 0xF4EF7FF3)) ^ 0x4EAE3888);
  v8 = STACK[0x7E0];
  *(a1 + 16) = v7;
  return (*(v3 + 8 * ((460 * (((v8 ^ v6) ^ (v7 == 0)) & 1)) ^ v5)))();
}

uint64_t sub_1008631A8()
{
  LODWORD(STACK[0x2354]) = v0;
  v2 = *(STACK[0x19D8] + 32) + 1240836921;
  LODWORD(STACK[0x2358]) = ((v2 ^ 0xBA6B48B) - 1112743861) ^ v2 ^ ((v2 ^ 0x3DC14F56) - 1949623400) ^ ((v2 ^ 0x6D2F1D) - 1234732067) ^ ((v2 ^ 0x7FFF7FFE) - 906679488) ^ 0xBEFF6D86;
  return (*(v1 + 41408))();
}

uint64_t sub_1008632EC@<X0>(__int16 a1@<W8>)
{
  LOWORD(STACK[0x9A0]) = a1;
  LODWORD(STACK[0xC00]) = v2;
  v5 = (a1 + 23499);
  v6 = (v3 - 32136 + (((v1 ^ 0xFD4C) + 692) ^ ((v1 ^ 0xFCA5) + 859) ^ ((v1 ^ (v3 - 7342) & 0x89B7 ^ 0x79C9) - 31231)));
  v7 = (v5 < 0x9D8E) ^ (v6 < 0x9D8E);
  v8 = v5 > v6;
  if (v7)
  {
    v8 = v5 < 0x9D8E;
  }

  return (*(v4 + 8 * ((79 * !v8) ^ v3)))();
}

void sub_1008633DC(uint64_t a1)
{
  v1 = 297845113 * (((a1 | 0x613F9908) - (a1 & 0x613F9908)) ^ 0x160C8596);
  v2 = *(a1 + 8) - v1;
  v3 = *(a1 + 32) + v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a1 ^ 0x2A07E7D2927AB6DLL;
  v7 = v6 ^ ((*a1 << 22) & 0x1000000000000000 | (((*a1 >> 16) & 1) << 37));
  v8 = 3 * (((v7 & 0x10000) * 0x5555555555555556uLL) >> 64);
  v9 = ((v7 & 0x10000) - v8) * ((v7 & 0x10000) - v8);
  v16 = v15 + (((v6 << 22) & 0x1000000000000000 | ((v9 - 3 * ((v9 * 0x5555555555555556uLL) >> 64)) << 37)) ^ v7);
  v15[0] = (v16 ^ 0xF521E958) - (~(2 * v16) & 0xEA43D2B0) - 364653904;
  v10 = (((2 * (-114 * (&v14 ^ 0x5C) - 3)) | 4) ^ (-114 * (&v14 ^ 0x5C) - 3)) & 7;
  v14 = 16 * (((v10 ^ 0x467468B5C073A9DLL) + 0x124C15205AA2869) ^ ((v10 ^ 0xFFAFB99E2B1FDF5) + 0xAB97C40BB1CEF01) ^ ((v10 ^ 0xB9DBD12BEB6C76BLL) + 0xEDE3ACBE71BD59FLL)) - 0x54387D959AD12F70;
  if (v5)
  {
    v11 = v3 == 1998229682;
  }

  else
  {
    v11 = 1;
  }

  v13 = v11 || v4 == 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100863620@<X0>(_DWORD *a1@<X7>, int a2@<W8>)
{
  v4 = *(*v3 + (*a1 & 0x5701EF08));
  STACK[0x10A0] = (v4 & ((a2 - 2723) + 0x7FFFFFFFFFFF602BLL) ^ 0x42A5FD9F28528BCALL ^ v4 & 0x6034D2E975C38752 ^ 0xA010026055810410) - (v4 & 0x6034D2E975C38752 ^ 0xA010026055810410);
  return (*(v2 + 8 * (((*(STACK[0xCD8] + 360) != 0) * (((a2 - 9614628) & 0x62F2DAFE) - 1650511728)) ^ a2)))();
}

uint64_t sub_1008636DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (((v8 ^ 0x902713EEB6F8CEC0) + 0x6FD8EC1149073140) ^ ((v8 ^ 0x998CD29927F57037) + 0x66732D66D80A8FC9) ^ (((((v9 + 1537938385) & 0xA454DBF1) + 0x9ABC17778D7E875) ^ v8) - 0x9ABC17778D879E6)) + STACK[0xD18] - 0x28199675C47B6946 + 0x17CFAD826;
  v11 = STACK[0xD10] - 0x5F25BA4902AD4FB8;
  v12 = v10 < 0x93251115;
  v13 = v10 > v11;
  if (v11 < 0x93251115 != v12)
  {
    v13 = v12;
  }

  return (*(a8 + 8 * ((52 * !v13) ^ (v9 - 18027))))();
}

uint64_t sub_100863818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int8x16_t a51)
{
  v73.i64[0] = a2 + a4 + 17;
  v73.i64[1] = v55 + a4 + 1;
  v74.i64[0] = a2 + a4 + 19;
  v74.i64[1] = a2 + a4 + 18;
  v75.i64[0] = a2 + a4 + 25;
  v75.i64[1] = a2 + a4 + 24;
  v76.i64[0] = a2 + a4 + 27;
  v77 = STACK[0x5A0];
  v76.i64[1] = a2 + a4 + 26;
  v78.i64[0] = a2 + a4 + 31;
  v79.i64[0] = a2 + a4 + 29;
  v78.i64[1] = a2 + a4 + 30;
  v79.i64[1] = a3 + a4 + v54 + 16;
  v80 = vandq_s8(v79, *&STACK[0x4B0]);
  v81 = vandq_s8(v78, *&STACK[0x4B0]);
  v82 = vandq_s8(v76, *&STACK[0x4B0]);
  v83 = vandq_s8(v75, *&STACK[0x4B0]);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v67);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v67);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v67);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v67);
  v88 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v86, v86), v68), v86), v71);
  v89 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v87, v87), v68), v87), v71);
  v90 = veorq_s8(v89, v70);
  v91 = veorq_s8(v88, v70);
  v92 = veorq_s8(v88, v69);
  v93 = veorq_s8(v89, v69);
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92), v63);
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v93), v63);
  v96 = vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL);
  v97 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v98 = veorq_s8(v94, v96);
  v99 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v98);
  v101 = veorq_s8(vaddq_s64(v99, v97), v66);
  v102 = veorq_s8(v100, v66);
  v103 = vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL);
  v104 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v105 = veorq_s8(v101, v103);
  v106 = vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL);
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v105);
  v108 = veorq_s8(vaddq_s64(v106, v104), v57);
  v109 = vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL);
  v110 = veorq_s8(v107, v57);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v112 = veorq_s8(v108, v109);
  v113 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v112);
  v115 = veorq_s8(vaddq_s64(v113, v111), v56);
  v116 = veorq_s8(v114, v56);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v118 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v119 = vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL);
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v118);
  v121 = vaddq_s64(v119, v117);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v121, v121), v65), v121), v58), v64);
  v123 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v120, v120), v65), v120), v58), v64);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v125 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v126 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v125);
  v128 = veorq_s8(vaddq_s64(v126, v124), v60);
  v129 = veorq_s8(v127, v60);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v131 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v132 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v124.i64[0] = a2 + a4 + 21;
  v124.i64[1] = a2 + a4 + 20;
  v133 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v85, v85), v68), v85), v71);
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v131);
  v135 = vaddq_s64(v132, v130);
  v238.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v134, v134), v72), v134), v61), v62), vnegq_s64(vandq_s8(vshlq_n_s64(v75, 3uLL), v59)));
  v238.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v135, v135), v72), v135), v61), v62), vnegq_s64(vandq_s8(vshlq_n_s64(v76, 3uLL), v59)));
  v136 = veorq_s8(v133, v70);
  v137 = veorq_s8(v133, v69);
  v138 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v137), a51);
  v139 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v140 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139), v66);
  v141 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v142 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v141), v57);
  v143 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL));
  v144 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v143), v56);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145);
  v147 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v146, v146), v65), v146), v58), v64);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v149 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v148), v60);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v151 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v149.i64[0] = a2 + a4 + 23;
  v149.i64[1] = a2 + a4 + 22;
  v152 = vaddq_s64(v151, v150);
  v153 = vsubq_s64(vorrq_s8(vaddq_s64(v152, v152), v72), v152);
  v154 = vandq_s8(v149, *&STACK[0x4B0]);
  v155 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v84, v84), v68), v84), v71);
  v238.val[0] = vshlq_u64(veorq_s8(vaddq_s64(v153, v61), v62), vnegq_s64(vandq_s8(vshlq_n_s64(v78, 3uLL), v59)));
  v156 = veorq_s8(v155, v70);
  v157 = veorq_s8(v155, v69);
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157), a51);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v160 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159), v66);
  v161 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161), v57);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), v56);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v166, v166), v65), v166), v58), v64);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v169 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168), v60);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v171 = vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL);
  v172 = vandq_s8(v124, *&STACK[0x4B0]);
  v173 = vaddq_s64(v171, v170);
  v174 = vandq_s8(v74, *&STACK[0x4B0]);
  v238.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v173, v173), v72), v173), v61), v62), vnegq_s64(vandq_s8(vshlq_n_s64(v79, 3uLL), v59)));
  v175 = vandq_s8(v73, *&STACK[0x4B0]);
  v176 = vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL);
  v177 = vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL);
  v178 = vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL);
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v67);
  v180 = vaddq_s64(v178, v67);
  v181 = vaddq_s64(v177, v67);
  v182 = vaddq_s64(v176, v67);
  v183 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v181, v181), v68), v181), v71);
  v184 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v182, v182), v68), v182), v71);
  v181.i64[0] = vqtbl4q_s8(v238, *&STACK[0x2A0]).u64[0];
  v238.val[0] = veorq_s8(v184, v70);
  v238.val[1] = veorq_s8(v183, v70);
  v185 = veorq_s8(v183, v69);
  v186 = veorq_s8(v184, v69);
  v238.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v238.val[1], 0x38uLL), v238.val[1], 8uLL), v185), a51);
  v238.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v238.val[0], 0x38uLL), v238.val[0], 8uLL), v186), a51);
  v187 = veorq_s8(v238.val[0], vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v188 = veorq_s8(v238.val[1], vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v238.val[2] = vsraq_n_u64(vshlq_n_s64(v238.val[0], 0x38uLL), v238.val[0], 8uLL);
  v238.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v238.val[1], 0x38uLL), v238.val[1], 8uLL), v188);
  v238.val[1] = veorq_s8(vaddq_s64(v238.val[2], v187), v66);
  v238.val[0] = veorq_s8(v238.val[0], v66);
  v238.val[2] = vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL);
  v189 = veorq_s8(v238.val[0], vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v190 = veorq_s8(v238.val[1], v238.val[2]);
  v238.val[2] = vsraq_n_u64(vshlq_n_s64(v238.val[0], 0x38uLL), v238.val[0], 8uLL);
  v238.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v238.val[1], 0x38uLL), v238.val[1], 8uLL), v190);
  v238.val[1] = veorq_s8(vaddq_s64(v238.val[2], v189), v57);
  v238.val[0] = veorq_s8(v238.val[0], v57);
  v238.val[2] = vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL);
  v191 = veorq_s8(v238.val[0], vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v192 = veorq_s8(v238.val[1], v238.val[2]);
  v238.val[2] = vsraq_n_u64(vshlq_n_s64(v238.val[0], 0x38uLL), v238.val[0], 8uLL);
  v238.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v238.val[1], 0x38uLL), v238.val[1], 8uLL), v192);
  v238.val[1] = veorq_s8(vaddq_s64(v238.val[2], v191), v56);
  v238.val[2] = vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL);
  v238.val[0] = veorq_s8(v238.val[0], v56);
  v193 = veorq_s8(v238.val[0], vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v194 = veorq_s8(v238.val[1], v238.val[2]);
  v238.val[2] = vsraq_n_u64(vshlq_n_s64(v238.val[0], 0x38uLL), v238.val[0], 8uLL);
  v238.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v238.val[1], 0x38uLL), v238.val[1], 8uLL), v194);
  v238.val[1] = vaddq_s64(v238.val[2], v193);
  v238.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v238.val[1], v238.val[1]), v65), v238.val[1]), v58), v64);
  v238.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v238.val[0], v238.val[0]), v65), v238.val[0]), v58), v64);
  v238.val[2] = vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL);
  v195 = veorq_s8(v238.val[0], vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v196 = veorq_s8(v238.val[1], v238.val[2]);
  v238.val[2] = vsraq_n_u64(vshlq_n_s64(v238.val[0], 0x38uLL), v238.val[0], 8uLL);
  v238.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v238.val[1], 0x38uLL), v238.val[1], 8uLL), v196);
  v238.val[1] = veorq_s8(vaddq_s64(v238.val[2], v195), v60);
  v238.val[2] = vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL);
  v238.val[0] = veorq_s8(v238.val[0], v60);
  v197 = veorq_s8(v238.val[0], vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL));
  v198 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v180, v180), v68), v180), v71);
  v199 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v238.val[1], 0x38uLL), v238.val[1], 8uLL), veorq_s8(v238.val[1], v238.val[2]));
  v200 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v238.val[0], 0x38uLL), v238.val[0], 8uLL), v197);
  v238.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v199, v199), v72), v199), v61), v62), vnegq_s64(vandq_s8(vshlq_n_s64(v73, 3uLL), v59)));
  v238.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v200, v200), v72), v200), v61), v62), vnegq_s64(vandq_s8(vshlq_n_s64(v74, 3uLL), v59)));
  v201 = veorq_s8(v198, v70);
  v202 = veorq_s8(v198, v69);
  v203 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), v202), a51);
  v204 = veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL));
  v205 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), v204), v66);
  v206 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL));
  v207 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), v206), v57);
  v208 = veorq_s8(v207, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL));
  v209 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL), v208), v56);
  v210 = veorq_s8(v209, vsraq_n_u64(vshlq_n_s64(v208, 3uLL), v208, 0x3DuLL));
  v211 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL), v210);
  v212 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v211, v211), v65), v211), v58), v64);
  v213 = veorq_s8(v212, vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL));
  v214 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL), v213), v60);
  v215 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), veorq_s8(v214, vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL)));
  v216 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v179, v179), v68), v179), v71);
  v238.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v215, v215), v72), v215), v61), v62), vnegq_s64(vandq_s8(vshlq_n_s64(v124, 3uLL), v59)));
  v217 = veorq_s8(v216, v70);
  v218 = veorq_s8(v216, v69);
  v219 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v218), a51);
  v220 = veorq_s8(v219, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL));
  v221 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL), v220), v66);
  v222 = veorq_s8(v221, vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL));
  v223 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL), v222), v57);
  v224 = vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL);
  v225 = vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL);
  v226 = veorq_s8(v223, v224);
  v227 = veorq_s8(vaddq_s64(v225, v226), v56);
  v228 = veorq_s8(v227, vsraq_n_u64(vshlq_n_s64(v226, 3uLL), v226, 0x3DuLL));
  v229 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL), v228);
  v230 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v229, v229), v65), v229), v58), v64);
  v231 = vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL);
  v232 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v233 = veorq_s8(v230, v231);
  v234 = veorq_s8(vaddq_s64(v232, v233), v60);
  v235 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), veorq_s8(v234, vsraq_n_u64(vshlq_n_s64(v233, 3uLL), v233, 0x3DuLL)));
  v238.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v235, v235), v72), v235), v61), v62), vnegq_s64(vandq_s8(vshlq_n_s64(v149, 3uLL), v59)));
  v181.i64[1] = vqtbl4q_s8(v238, *&STACK[0x2A0]).u64[0];
  v236 = vrev64q_s8(v181);
  *(a2 + a4 + 16) = vextq_s8(v236, v236, 8uLL);
  return (*(v77 + 8 * (((v53 == a4) * v51) ^ v52)))();
}

uint64_t sub_10086419C()
{
  STACK[0x7E0] = *(v2 + 8 * v0);
  v4 = *(&off_1010A0B50 + v1 - 1650511831);
  *(v3 - 248) = *(v4 - 386202379);
  *(v3 - 256) = (v1 + 881829693) ^ (906386353 * ((((v3 - 256) | 0x12F8D82B) - (v3 - 256) + ((v3 - 256) & 0xED0727D0)) ^ 0x23F9150F));
  (*(v2 + 8 * (v1 ^ 0x62601AEB)))(v3 - 256);
  return (*(v2 + 8 * ((27 * (*(v4 - 386202371) == ((v1 - 1650510994) | 0x6004) - 25540)) ^ (v1 - 1650489093))))(62253, 1673320310, 2621661135, 1322907119, 0x95BDDB4F3E212ELL, 1650493727, 3310191188);
}

uint64_t sub_100864384()
{
  v2 = (*(v1 + 414912))(v0 ^ 0x82B6543D);
  STACK[0x19B0] = v2;
  STACK[0x1D40] = v2;
  return (*(v1 + 8 * ((83 * (v2 == 0)) ^ 0xB5A6u)))();
}

uint64_t sub_100864418()
{
  LODWORD(STACK[0x107C]) = v0;
  *STACK[0x1CC0] = 0;
  return (*(v1 + 8 * ((26 * (*(STACK[0x1720] + 4) > 0x10u)) ^ 0x9D44)))();
}

uint64_t sub_100864478(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  STACK[0x2050] = v7;
  LODWORD(STACK[0xE20]) = a5;
  STACK[0xD00] = v6;
  LODWORD(STACK[0x18B8]) = v5;
  v9 = LODWORD(STACK[0xDF4]) * (a4 - 1575347102) - 820567666;
  v10 = v9 ^ LODWORD(STACK[0x189C]) ^ ((v9 ^ 0x59AE7FEC) + 1766236574) ^ ((v9 ^ 0xD7ED5CF1) - 419069311) ^ ((v9 ^ 0x3EEFF96C) + 235349790) ^ ((v9 ^ 0x7FBBFBFF) + 1330849167) ^ 0x26C2E69F;
  LODWORD(STACK[0x1D9C]) += 4;
  v11 = LOBYTE(STACK[0x16F7]);
  LODWORD(STACK[0x1BA8]) = v10;
  return (*(v8 + 8 * ((59065 * v11) ^ 0x57AAu)))();
}

uint64_t sub_1008645FC@<X0>(int a1@<W8>)
{
  LOWORD(STACK[0x19FE]) = v3;
  LODWORD(STACK[0x168C]) = v1;
  v5 = (v3 - 11773);
  v6 = v2 - 10762;
  v7 = v2 > 0x2A09u;
  v8 = v7 ^ (v5 < 0xD5F6);
  v9 = v5 < v6;
  if (!v8)
  {
    v7 = v9;
  }

  return (*(v4 + 8 * ((!v7 * ((a1 + 477116412) & 0xE38F39AF ^ (a1 - 36431))) ^ a1)))();
}

uint64_t sub_100864898()
{
  v3 = *(STACK[0xCD8] + 296);
  v4 = *(STACK[0xCD8] + 312);
  *(v2 - 256) = LODWORD(STACK[0x50C]) ^ (906386353 * (((v0 | 0x69465A27) - (v0 | 0x96B9A5D8) - 1766218280) ^ 0x58479703));
  *(v2 - 248) = v4;
  *(v2 - 240) = v3;
  v5 = (*(v1 + 8 * LODWORD(STACK[0x508])))(v2 - 256);
  STACK[0x1FD0] = STACK[0x1600];
  LODWORD(STACK[0x12D0]) = -2014295998;
  return (*(v1 + 48688))(v5);
}

uint64_t sub_10086495C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v21 - 112) = v20 + 1051046887 + 1012831759 * ((v21 - 144 - 2 * ((v21 - 144) & 0x728D5470) - 225618831) ^ 0xE21E42FB);
  *(v21 - 144) = a13;
  *(v21 - 136) = &a18;
  *(v21 - 128) = &a18;
  *(v21 - 120) = a14;
  (*(v19 + 8 * (v20 ^ 0x5036)))(v21 - 144);
  *(v21 - 144) = a13;
  *(v21 - 136) = &a18;
  *(v21 - 112) = v20 + 1051046887 + 1012831759 * ((~(v21 - 144) & 0xD6EA7914 | (v21 - 144) & 0x291586E8) ^ 0xC6796F9E);
  *(v21 - 128) = &a18;
  *(v21 - 120) = a14;
  (*(v19 + 8 * (v20 ^ 0x5036)))(v21 - 144);
  v22 = 906386353 * ((((v21 - 144) | 0x1D8357D2) - ((v21 - 144) & 0x1D8357D0)) ^ 0x2C829AF6);
  *(v21 - 128) = a15;
  *(v21 - 144) = v20 - v22 + 3176;
  *(v21 - 140) = v22 + v18 - ((2 * v18 + 107004696) & 0x62470326) - 1269570785;
  v23 = (*(v19 + 8 * (v20 ^ 0x50C2)))(v21 - 144);
  v24 = *(v21 - 136) == (v20 ^ 0xC84F) - 1729190018;
  return (*(v19 + 8 * ((2 * v24) | (4 * v24) | v20)))(v23);
}

uint64_t sub_100864BD8()
{
  v3 = v1[1];
  v4 = v0 + 986756338 + *v1;
  if (v3 > 0x950C9F67 != v4 < 0x6AF36098)
  {
    v5 = v4 < 0x6AF36098;
  }

  else
  {
    v5 = v4 > v3 + 1794334872;
  }

  return (*(v2 + 8 * ((53831 * v5) ^ v0)))();
}

uint64_t sub_100864C50()
{
  *(v3 - 256) = *v0;
  *(v3 - 248) = v1 + 155453101 * ((((v3 - 256) ^ 0xBCD74507 | 0x920CE760) - (((v3 - 256) ^ 0xBCD74507) & 0x920CE762)) ^ 0xC8FDB9AA) - 1353723208;
  v4 = (*(v2 + 8 * (v1 - 1650460040)))(v3 - 256);
  return (STACK[0x7E0])(v4);
}

uint64_t sub_100864CE4@<X0>(char a1@<W0>, int a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v46 = ((a9 & v36) << a1) & (a9 ^ a2) ^ a9 & v36;
  v47 = ((2 * (a9 ^ v35)) ^ a3) & (a9 ^ v35) ^ (2 * (a9 ^ v35)) & a4;
  LOBYTE(v46) = a9 ^ (2 * ((((4 * (v47 ^ a5)) ^ a6) & (v47 ^ a5) ^ (4 * (v47 ^ a5)) & a7) & (16 * (v47 & (4 * v46) ^ v46)) ^ v47 & (4 * v46) ^ v46));
  LOBYTE(v46) = ((v46 ^ a8) + v37) ^ ((v46 ^ v38) + v39) ^ ((v46 ^ v40) + v41);
  *(v44 + v34) = v32 + v46 * v43 + v33 * (v46 + v42);
  return (*(a31 + 8 * (((v34 == 0) * v45) ^ v31)))();
}

uint64_t sub_100864DA0()
{
  v2 = (v1 + 1126652308) & 0xBCD8D6FF;
  v3 = 193924789 * ((((&STACK[0x10000] + 3800) | 0x128458D) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xFED7BA70)) ^ 0xB79377EB);
  v4 = ((((*(v0 + 32) ^ 0xF9B511FA) + 105573894) ^ ((*(v0 + 32) ^ 0x7CCA2953) - 2093623635) ^ (10715 * (v2 ^ 0x84E7) + (*(v0 + 32) ^ 0x6CAAFFB8) - 1823178057)) + 254242934) ^ v3;
  LODWORD(STACK[0x10EDC]) = (v2 - 1588114026) ^ v3;
  LODWORD(STACK[0x10ED8]) = v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v2 + 18019)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((8915 * (LOBYTE(STACK[0x10EE0]) == (((v2 ^ 0xE7) + 56) ^ 0x6D))) ^ v2)))(v6);
}

uint64_t sub_10086505C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a8 + 8 * (((*v8 == 0) * ((v9 ^ 0xBD51) - 63787 + (((v9 ^ 0xBD51) - 30981) | 0x8004))) ^ v9 ^ 0xBD51));
  STACK[0x520] = 1325327707;
  return v10();
}

uint64_t sub_1008650C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v27 = 1022166737 * ((((v26 - 152) | 0xC56CA1D8) - ((v26 - 152) | 0x3A935E27) + 982736423) ^ 0x7F7C404A);
  *(v26 - 144) = v25 - v27;
  *(v26 - 140) = v27 + 8609 + v24;
  *(v26 - 152) = a16;
  (*(v23 + 8 * (v24 ^ 0x9147)))(v26 - 152);
  return (*(v23 + 8 * ((78 * (*(v26 - 136) != (v24 ^ 0x261) + 1497645681)) ^ v24)))(a23, a22, a21, (v24 ^ 0x261u) - 12681);
}

uint64_t sub_10086523C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, unsigned __int8 a55, unsigned __int8 a56, unsigned __int8 a57, unsigned __int8 a58)
{
  v61 = ((a55 ^ 0x5F) << (((v58 + 32) ^ 0x49) & 0xCB)) + (a56 ^ 0x5F);
  LOWORD(v61) = v61 - 2 * (v61 & 0x183F ^ (a56 ^ 0x5F) & 0xC) + 6195;
  *(v59 - 148) = v58 + 553808093 + 155453101 * ((((v59 - 152) | 0xF4C32C06) - ((v59 - 152) | 0xB3CD3F9) + 188535801) ^ 0x12E537C9);
  *(v59 - 144) = a13;
  *(v59 - 152) = (((v61 ^ 0x9C29) + 25559) ^ ((v61 ^ 0xA80B) + 22517) ^ ((v61 ^ 0x2C11) - 11281)) - 1709 * ((((v59 - 152) | 0x2C06) - ((v59 - 152) | 0xD3F9) - 11271) ^ 0x37C9) + 9089;
  (*(v60 + 8 * (v58 ^ 0x48F1)))(v59 - 152);
  *(v59 - 144) = a13;
  *(v59 - 136) = (v58 + 818937827) ^ (634647737 * ((((v59 - 152) | 0xC43A4635) + (~(v59 - 152) | 0x3BC5B9CA)) ^ 0xA9AC69C8));
  (*(a30 + 8 * (v58 + 19110)))(v59 - 152);
  v62 = ((*(v59 - 152) ^ 0xB186C328) + 1814912130) ^ *(v59 - 152) ^ ((*(v59 - 152) ^ 0xAED96D2C) + 1936913030) ^ ((*(v59 - 152) ^ 0xC2F4B1AC) + 526331398) ^ ((*(v59 - 152) ^ 0xFFFF7FFE) + 575987800);
  BYTE4(a49) = (HIBYTE(v62) ^ 0x22) - ((2 * (HIBYTE(v62) ^ 0x22)) & 0xBF) + 95;
  BYTE5(a49) = (BYTE2(v62) ^ 0x54) - ((2 * (BYTE2(v62) ^ 0x54)) & 0xBF) + 95;
  BYTE6(a49) = (BYTE1(v62) ^ 0x60) - ((2 * (BYTE1(v62) ^ 0x60)) & 0xBF) + 95;
  HIBYTE(a49) = ((*(v59 - 152) ^ 0x28) - 126) ^ *(v59 - 152) ^ ((*(v59 - 152) ^ 0x2C) - 122) ^ ((*(v59 - 152) ^ 0xAC) + 6) ^ ((*(v59 - 152) ^ 0xFE) + 88) ^ 9;
  v63 = a58 ^ 0x5F | ((a57 ^ 0x5F) << 8);
  LOWORD(v62) = v63 - 2 * (v63 & 0x183F ^ (a58 ^ 0x5F) & 0xC) + 6195;
  *(v59 - 144) = a13;
  v64 = 155453101 * ((-2 - ((~(v59 - 152) | 0x6A34413B) + ((v59 - 152) | 0x95CBBEC4))) ^ 0x8C125AF4);
  *(v59 - 148) = v58 + 553808093 + v64;
  *(v59 - 152) = (((v62 ^ 0x9D99) + 25191) ^ ((v62 ^ 0xC8F2) + 14094) ^ ((v62 ^ 0x4D58) - 19800)) - v64 + 9089;
  (*(a30 + 8 * (v58 + 18511)))(v59 - 152);
  *(v59 - 144) = a13;
  *(v59 - 136) = (v58 + 818937827) ^ (634647737 * ((v59 - 152) ^ 0x6D962FFC));
  (*(a30 + 8 * (v58 + 19110)))(v59 - 152);
  return (*(a30 + 8 * v58))(1040127854, 2667547574, 2181073041, 486508581, 2080255708, 520063924, 452856467, 3930817889, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49);
}

uint64_t sub_1008658B8(uint64_t a1)
{
  *a1 = 807566967;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v4 = (*(v2 + 8 * (v1 + 34194)))(40000);
  *(a1 + 16) = v4;
  return (*(v2 + 8 * (((v4 == 0) * (v1 - 17649)) ^ v1)))();
}

uint64_t sub_100865928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(STACK[0xBC8] + (LODWORD(STACK[0x14C4]) + v4));
  v8 = v4 + (~(2 * v4) | 0x55) + ((v5 - 105) & 0x7A) + 126;
  LOBYTE(STACK[0x1A83]) = (((v7 ^ 0x27) - 39) ^ ((v7 ^ 0xDB) + 37) ^ ((v7 ^ 0xA3) + 93)) - (((v8 ^ 0x8C) + 116) ^ ((v8 ^ 0xA7) + 89) ^ ((v8 ^ 0xFE) + 2)) - 58;
  return (*(v6 + 8 * v5))(a1, a2, a3, a4, &off_1010A0B50);
}

uint64_t sub_100865D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, int a54)
{
  LODWORD(STACK[0x2494]) = LODWORD(STACK[0x1D7C]) + LODWORD(STACK[0x840]) + 1792165885;
  v55 = STACK[0x1D48];
  v56 = STACK[0x12A0];
  STACK[0x2498] = STACK[0x12A0];
  if (v56)
  {
    v57 = v55 == 0;
  }

  else
  {
    v57 = 1;
  }

  v58 = v57;
  return (*(v54 + 8 * ((v58 * (((a54 | 0x2005000) - 1650504408) ^ 0x1D66)) ^ 0x1D66)))(1650511955, a2, 946722720, 3348244351, 235, 1864610357);
}

uint64_t sub_100865E28()
{
  v3 = (((v1 ^ 0x9E48133A) + (v0 ^ 0x61B772CB)) ^ ((v0 ^ 0xA86B28C5) + 1469372219) ^ ((v0 ^ ((v1 + 1727) | 0x1831) ^ 0x200921E0) - 537500959)) + 46161081;
  v4 = (v3 ^ 0xF6047A47) & (2 * (v3 & 0xE7157A57)) ^ v3 & 0xE7157A57;
  v5 = ((2 * (v3 ^ 0xB02C7EE7)) ^ 0xAE720960) & (v3 ^ 0xB02C7EE7) ^ (2 * (v3 ^ 0xB02C7EE7)) & 0x573904B0;
  v6 = v5 ^ 0x51090490;
  v7 = (v5 ^ 0x4300020) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0x5CE412C0) & v6 ^ (4 * v6) & 0x573904B0;
  v9 = v7 ^ 0x573904B0 ^ (v8 ^ 0x54200080) & (16 * v7);
  v10 = (16 * (v8 ^ 0x3190430)) & 0x57390480 ^ 0x42904B0 ^ ((16 * (v8 ^ 0x3190430)) ^ 0x73904B00) & (v8 ^ 0x3190430);
  v11 = (v9 << 8) & 0x57390400 ^ v9 ^ ((v9 << 8) ^ 0x3904B000) & v10;
  v12 = (*(v2 + 8 * (v1 + 11609)))(*STACK[0x648], &STACK[0xDE8], (v3 ^ (2 * ((v11 << 16) & 0x57390000 ^ v11 ^ ((v11 << 16) ^ 0x4B00000) & ((v10 << 8) & 0x57390000 ^ 0x46390000 ^ ((v10 << 8) ^ 0x39040000) & v10)))) & 0xFFFFF000 ^ 0x63077000, 1);
  return (*(v2 + 8 * ((58 * (((2 * v12) & 0xFDA99ABA) + (v12 ^ 0xFED4CD5D) == -19608227)) ^ v1)))();
}

uint64_t sub_1008661B0()
{
  v5 = 1603510583 * (((v2 | 0x5A9F8570) - (v2 | 0xA5607A8F) - 1520403825) ^ 0xCD44B7DB);
  *(v4 - 240) = STACK[0x1D60];
  *(v4 - 256) = STACK[0x5B0];
  *(v4 - 232) = v5 ^ 0x2F5FFB1A;
  *(v4 - 244) = (v0 + 900038726) ^ v5;
  v6 = (*(v3 + 8 * (v0 + 22618)))(v4 - 256);
  return (*(v3 + 8 * (((*(v4 - 248) == v1) * (16857 * (v0 ^ 0x7360) - 50345)) ^ v0)))(v6);
}

uint64_t sub_100866274@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, char a4@<W3>, int a5@<W4>, __int16 a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v16 = (v9 + a6 - (((((v9 + a6) * a7) >> 16) + (((v9 + a6 - (((v9 + a6) * a7) >> 16)) & 0xFFFE) >> 1)) >> 8) * a8);
  v17 = *(v10 + ((a9 - 1459) ^ v11) + v9 - (((a9 - 1459) ^ v11) + v9) / 0x13F * a8);
  v18 = *(v10 + v9 - 2135415024 - (v9 - 2135415024) / 0x13Fu * a8);
  v19 = ((v17 >> 5) | (8 * v17)) ^ *(v10 + v16);
  v20 = *(v10 + v9 + a3 - (v9 + a3) / 0x13Fu * a8);
  v21 = (v20 >> 1) | (v20 << 7);
  v22 = (((v19 ^ 0x1D) - 55) ^ ((v19 ^ 0x7C) - 86) ^ ((v19 ^ a2) + 18)) + (((((v18 >> 3) | (32 * v18)) ^ a1) - 77) ^ ((((v18 >> 3) | (32 * v18)) ^ v13) - 31) ^ ((((v18 >> 3) | (32 * v18)) ^ v12) - 42)) - (((v21 ^ v14) - 28) ^ ((v21 ^ 0x22) - 39) ^ ((v21 ^ 0xFFFFFF94) + 111)) - 115;
  v23 = v22 & 0xCC ^ 0x1E;
  *(v10 + v16) = v22 ^ (2 * ((v22 ^ 0x50) & (2 * ((v22 ^ 0x50) & (2 * ((v22 ^ 0x50) & (2 * ((v22 ^ 0x50) & (2 * ((v22 ^ 0x50) & (2 * v23) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ a4;
  return (*(v15 + 8 * ((54 * (v9 + 1 != a5)) ^ a9)))();
}

uint64_t sub_10086667C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*(v9 + 424) + 24);
  *(v9 + 384) = v10;
  return (*(a8 + 8 * (((v10 == 0) * (((2 * ((v8 - 6) ^ 0xADC)) ^ 0xFFFF68D1) + 7 * ((v8 - 6) ^ 0x5DC6))) ^ (v8 - 6))))();
}

uint64_t sub_100866710(uint64_t a1, uint64_t a2, char a3, int a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = v10 - 1;
  v18 = ((*(*v16 + (*v14 & a5)) ^ (v12 + v17)) & 0x7FFFFFFF) * v13;
  v19 = (v18 ^ HIWORD(v18)) * v13;
  *(v12 + v17) = *(a7 + (v19 >> ((v11 | 0x10u) + a3))) ^ *(v8 + v17) ^ *((v19 >> ((v11 | 0x10u) + a3)) + a8 + 6) ^ *(a6 + (v19 >> ((v11 | 0x10u) + a3))) ^ v19 ^ (-7 * (v19 >> ((v11 | 0x10u) + a3)));
  return (*(v15 + 8 * (((v17 == 0) * a4) ^ v9)))();
}

uint64_t sub_10086687C()
{
  v1 = STACK[0x1840];
  v2 = LODWORD(STACK[0xD7C]) + LODWORD(STACK[0xE3C]);
  LODWORD(STACK[0x1DAC]) = v2 + LODWORD(STACK[0x1840]) - 1029251831;
  v3 = v2 + v1 + 275989969;
  v4 = (((LODWORD(STACK[0x1A28]) ^ 0x1C645267) - 476336743) ^ ((LODWORD(STACK[0x1A28]) ^ 0x9C523577) + 1672333961) ^ ((LODWORD(STACK[0x1A28]) ^ 0x69E3A001) - 1776525313)) + 609657213;
  v5 = v3 < 0x3A80DA6C;
  v6 = v3 > v4;
  if (v5 != v4 < 0x3A80DA6C)
  {
    v6 = v5;
  }

  v7 = !v6;
  if (v2 == 705533083)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return (*(v0 + 8 * ((v8 | (4 * v8)) ^ 0x9889u)))();
}

uint64_t sub_100866EF0()
{
  v2 = (((v0 ^ 0xFE662F31) + 26857679) ^ ((v0 ^ 0xE25CC31F) + 497237217) ^ ((v0 ^ 0xF5EF2B3F) + 168875201)) + 2075770243;
  v3 = (((LODWORD(STACK[0xFF0]) ^ 0x7A7E46A7) - 2055095975) ^ ((LODWORD(STACK[0xFF0]) ^ 0x732592D5) - 1931842261) ^ ((LODWORD(STACK[0xFF0]) ^ 0xE08E1363) + 527559837)) + 2075770207;
  v4 = v3 < 0x91E3F672;
  v5 = v2 < v3;
  if (v2 < 0x91E3F672 != v4)
  {
    v5 = v4;
  }

  return (*(v1 + 8 * ((57 * !v5) ^ 0x7E89u)))();
}

uint64_t sub_1008670F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v22 - 144) = a13;
  *(v22 - 136) = &a18;
  *(v22 - 128) = &a18;
  *(v22 - 120) = v20;
  *(v22 - 112) = (v21 ^ 0x7701) + 1051074289 + 1012831759 * ((~(v22 - 144) & 0xAF197EA4 | (v22 - 144) & 0x50E68158) ^ 0xBF8A682E);
  v23 = (v21 ^ 0x7701) + 39744;
  (*(v19 + 8 * v23))(v22 - 144);
  *(v22 - 112) = (v21 ^ 0x7701) + 1051074289 + 1012831759 * ((((v22 - 144) | 0x1161F150) - ((v22 - 144) & 0x1161F150)) ^ 0x1F2E7DA);
  *(v22 - 144) = a13;
  *(v22 - 136) = &a18;
  *(v22 - 128) = &a18;
  *(v22 - 120) = v20;
  (*(v19 + 8 * v23))(v22 - 144);
  *(v22 - 128) = &a18;
  *(v22 - 120) = v20;
  *(v22 - 112) = (v21 ^ 0x7701) + 1051074289 + 1012831759 * ((2 * ((v22 - 144) & 0x3006C698) - (v22 - 144) + 1341733223) ^ 0x5F6A2FED);
  *(v22 - 144) = a13;
  *(v22 - 136) = &a18;
  (*(v19 + 8 * (v21 ^ 0x93C1)))(v22 - 144);
  v24 = 906386353 * ((~(v22 - 144) & 0xAC20EB2E | (v22 - 144) & 0x53DF14D0) ^ 0x9D21260A);
  *(v22 - 128) = a15;
  *(v22 - 144) = (v21 ^ 0x7701) - v24 + 30578;
  *(v22 - 140) = v18 - 1269570785 + v24 - (((286 * ((((v21 ^ 0x7701) - 11511) | 0xC421) ^ 0xC7BB)) ^ 0x6247A03A) & (2 * v18 + 107004696));
  v25 = (*(v19 + 8 * (v21 ^ 0x9335)))(v22 - 144);
  return (*(v19 + 8 * ((8180 * (*(v22 - 136) != -1729168700)) ^ v21 ^ 0x7701)))(v25);
}

uint64_t sub_100867434()
{
  *(v3 - 256) = 0;
  *(v3 - 248) = v0 + 155453101 * (((v1 | 0x52F1F80F) - (v1 | 0xAD0E07F0) - 1391589392) ^ 0xB4D7E3C0) + 475682014;
  v4 = (*(v2 + 8 * (v0 ^ 0xF55684E6)))(v3 - 256);
  return (*(v2 + 8 * (v0 ^ 0xF556EE21 ^ (122902 * (v0 < ((v0 + 1829405222) ^ 0xDC6FB6CA))))))(v4);
}

uint64_t sub_100867504@<X0>(int a1@<W8>)
{
  v2 = a1 - 1650473906;
  v3 = (*(v1 + 8 * (a1 ^ 0x62601AFB)))();
  return (*(v1 + 8 * v2))(v3);
}

uint64_t sub_10086760C()
{
  v4 = STACK[0x1428];
  v5 = &STACK[0x2720] + STACK[0x1428];
  STACK[0x9B8] = v5;
  STACK[0x1428] = v4 + 23 * (v1 ^ 0x1AEDu) + ((v1 - 5807) | 0xC70u) - 16414;
  *(v3 - 256) = v5;
  *(v3 - 244) = v1 - 193924789 * ((((v3 - 256) ^ 0xB9386132 | 0xB6FA8113) - ((v3 - 256) ^ 0xB9386132) + (((v3 - 256) ^ 0xB9386132) & 0x49057EE8)) ^ 0xB979D247) + 38915;
  v6 = (*(v2 + 8 * (v1 ^ 0xD217)))(v3 - 256);
  return (*(v2 + 8 * ((16552 * (*(v3 - 248) == v0)) ^ v1)))(v6);
}

uint64_t sub_100867868@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v4 = 1439 * (v2 ^ 0xA0EA);
  v5 = v2 - 31162;
  if (a2)
  {
    v6 = a1 == -371865839;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  return (*(v3 + 8 * ((v7 * (v4 ^ 0xB951)) | v5)))();
}

uint64_t sub_1008678C4@<X0>(int a1@<W0>, int a2@<W8>)
{
  v5 = a2 ^ 0x1DEAu;
  STACK[0x7E0] = v2 + 4;
  v6 = STACK[0x19D8];
  STACK[0x7A0] = STACK[0x19D8];
  v7 = *(v6 + 32) - 5;
  STACK[0x798] = 19 * a1 % v7;
  STACK[0x790] = (9 * a1 + 89) % v7;
  v8 = *(v4 + 8 * v5);
  LODWORD(STACK[0x788]) = v3 + a1 - 1322345225;
  LODWORD(v6) = (v5 - 1574983327) | 0x18950828;
  LODWORD(STACK[0x780]) = v6;
  return v8(v5, 151255644, 302511288, v6 ^ 0xBAB528A9);
}

uint64_t sub_100867AC8()
{
  v3 = (((LODWORD(STACK[0x171C]) ^ 0x27DBFB19) - 668728089) ^ ((LODWORD(STACK[0x171C]) ^ 0x8E53409A) + 1907146598) ^ (((((v0 - 21718) | 0x4020) + 1079851810) ^ LODWORD(STACK[0x171C])) - 1079868562)) + ((v0 - 21718) ^ 0xCD879F55);
  v4 = v3 < 0xE3B1D6F4;
  v5 = v1 - 604736026 < v3;
  if ((v1 - 604736026) < 0xE3B1D6F4 != v4)
  {
    v5 = v4;
  }

  return (*(v2 + 8 * ((11571 * v5) ^ v0)))();
}

uint64_t sub_100867C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, unsigned int a47)
{
  v51 = *(&a35 + v49 + 72);
  v52 = ((2 * v49) & 0x66AD2FE8) + (v49 ^ 0xB35697F6);
  *(a1 + v52 + (v48 ^ 0x4CA9F4C0)) = v51 ^ 0x23;
  *(a1 + v52 + 1286170635) = (BYTE1(v51) ^ 0x86) - ((2 * (BYTE1(v51) ^ 0x86)) & 0xBF) + 95;
  *(a1 + v52 + 1286170636) = (BYTE2(v51) ^ 0x7C) + (~(2 * (BYTE2(v51) ^ 0x7C)) | 0x41) + 96;
  *(a1 + v52 + 1286170637) = (HIBYTE(v51) ^ 0x1D) + (~(2 * (HIBYTE(v51) ^ 0x1D)) | 0x41) + 96;
  return (*(v50 + 8 * ((58567 * (v49 + 4 < a47)) ^ v47)))();
}

uint64_t sub_100867E3C@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v6 = v4 - 1;
  STACK[0x4C8] = v6;
  v7 = (v3 ^ 0x8F) & (2 * (v3 & 0xCE)) ^ v3 & 0xCE;
  v8 = ((2 * ((a2 - 21) ^ v3)) ^ 0x92) & ((a2 - 21) ^ v3) ^ (2 * ((a2 - 21) ^ v3)) & 0xC8;
  *(a1 + v6) = (v3 ^ (2 * ((((4 * (v8 ^ 0x49)) ^ 0x20) & (v8 ^ 0x49) ^ (4 * (v8 ^ 0x49)) & 0xC0) & (16 * (v8 & (4 * v7) ^ v7)) ^ v8 & (4 * v7) ^ v7)) ^ 0x74) * (v3 - 33);
  if (v2 < 0x952ED873 != STACK[0x4C8] > 0xFFFFFFFF6AD1278CLL)
  {
    v9 = STACK[0x4C8] > 0xFFFFFFFF6AD1278CLL;
  }

  else
  {
    v9 = STACK[0x4C8] + 2502875251u > v2;
  }

  return (*(v5 + 8 * ((5587 * v9) ^ a2)))();
}

uint64_t sub_100867F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X7>, int a3@<W8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>, int64x2_t a6@<Q2>, int8x16_t a7@<Q3>, int8x16_t a8@<Q4>, int8x16_t a9@<Q5>, int8x16_t a10@<Q6>, int8x16_t a11@<Q7>)
{
  v27.i64[0] = v14 + a2 + 9;
  v27.i64[1] = v14 + a2 + 8;
  v28.i64[0] = v14 + a2 + 7;
  v28.i64[1] = v14 + a2 + 6;
  v29.i64[0] = v14 + a2 + 5;
  v29.i64[1] = v14 + a2 + 4;
  v30.i64[0] = v14 + a2 + 3;
  v30.i64[1] = v14 + a2 + 2;
  v31 = vandq_s8(v30, a4);
  v32 = vandq_s8(v29, a4);
  v33 = vandq_s8(v28, a4);
  v34 = vandq_s8(v27, a4);
  v35 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL), a6);
  v36 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL), a6);
  v37 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL), a6);
  v38 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), a6);
  v39 = vsubq_s64(vorrq_s8(v35, a7), vorrq_s8(v35, a8));
  v40 = vsubq_s64(vorrq_s8(v36, a7), vorrq_s8(v36, a8));
  v41 = vsubq_s64(vorrq_s8(v37, a7), vorrq_s8(v37, a8));
  v42 = vsubq_s64(vorrq_s8(v38, a7), vorrq_s8(v38, a8));
  v43 = vaddq_s64(v40, a8);
  v44 = vaddq_s64(v39, a8);
  v45 = veorq_s8(v44, a9);
  v46 = veorq_s8(v43, a9);
  v47 = veorq_s8(v43, a10);
  v48 = veorq_s8(v44, a10);
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v48);
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v47);
  v51 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v50, v50), a11), v50), v15), v16);
  v52 = vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL);
  v53 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v49, v49), a11), v49), v15), v16);
  v54 = veorq_s8(v53, vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL));
  v55 = veorq_s8(v51, v52);
  v56 = vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v55);
  v58 = veorq_s8(vaddq_s64(v56, v54), v17);
  v59 = veorq_s8(v57, v17);
  v60 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v61 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v62 = veorq_s8(v58, v60);
  v63 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v62);
  v65 = veorq_s8(vaddq_s64(v63, v61), v18);
  v66 = veorq_s8(v64, v18);
  v67 = vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL);
  v68 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v69 = veorq_s8(v65, v67);
  v70 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v69);
  v72 = veorq_s8(vaddq_s64(v70, v68), v19);
  v73 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v74 = veorq_s8(v71, v19);
  v75 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v76 = veorq_s8(v72, v73);
  v77 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v76);
  v79 = vaddq_s64(v77, v75);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v79, v79), v20), v79), v21), v22);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v78, v78), v20), v78), v21), v22);
  v82 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v83 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v84 = veorq_s8(v80, v82);
  v85 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v84);
  v87 = veorq_s8(vaddq_s64(v85, v83), v23);
  v88 = vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL);
  v89 = veorq_s8(v86, v23);
  v90 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v91 = veorq_s8(v87, v88);
  v92 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v94 = vaddq_s64(v41, a8);
  v95 = vaddq_s64(v93, v91);
  v96 = vaddq_s64(v92, v90);
  v133.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v95, vandq_s8(vaddq_s64(v95, v95), v24)), v25), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a5)));
  v133.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v96, vandq_s8(vaddq_s64(v96, v96), v24)), v25), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), a5)));
  v97 = veorq_s8(v94, a9);
  v98 = veorq_s8(v94, a10);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v99, v99), a11), v99), v15), v16);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), v17);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), v18);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105), v19);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v108, v108), v20), v108), v21), v22);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v23);
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL)));
  v113 = vaddq_s64(v42, a8);
  v133.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v112, vandq_s8(vaddq_s64(v112, v112), v24)), v25), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), a5)));
  v114 = veorq_s8(v113, a9);
  v115 = veorq_s8(v113, a10);
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v116, v116), a11), v116), v15), v16);
  v118 = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v119 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v120 = veorq_s8(v117, v118);
  v121 = veorq_s8(vaddq_s64(v119, v120), v17);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), v18);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124), v19);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v127, v127), v20), v127), v21), v22);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129), v23);
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL)));
  v133.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v131, vandq_s8(vaddq_s64(v131, v131), v24)), v25), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), a5)));
  *(v14 + a2 + 2) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(v11 + a2)), 0x5F5F5F5F5F5F5F5FLL), *&vqtbl4q_s8(v133, *&STACK[0x580])));
  return (*(a1 + 8 * (((v12 == 0) * a3) ^ v13)))();
}

uint64_t sub_100868460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*(a8 + 8 * (v8 ^ 0x49B3)))(32);
  v10 = STACK[0x5A0];
  STACK[0x640] = v9;
  return (*(v10 + 8 * ((((v8 ^ (v9 == 0)) & 1) * ((1678 * (v8 ^ 0x833C)) ^ 0x96D5)) ^ v8)))();
}

uint64_t sub_1008685A4()
{
  v3 = (*(v2 + 8 * (v1 ^ 0x62601AFB)))();
  *(v0 + 16) = 0;
  return (*(v2 + 8 * (v1 ^ 0x6260E43E)))(v3);
}

uint64_t sub_1008685EC@<X0>(int a1@<W0>, char a2@<W1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v13 = v5 - 1;
  *(a5 + v13) ^= *(v8 + (v13 & 0xF)) ^ *((v13 & 0xF) + v10 + 4) ^ ((v13 & 0xF) * a2) ^ ((v13 & 0xF) * a3) ^ *(v7 + (v13 & 0xF)) ^ *(v9 + (v13 & 0xF)) ^ *(v6 + (v13 & 0xF)) ^ *(v11 + (v13 & 0xF));
  return (*(v12 + 8 * (((v13 == 0) * a4) ^ a1)))();
}

uint64_t sub_100868888@<X0>(uint64_t a1@<X8>)
{
  *(v5 - 248) = a1;
  *(v5 - 256) = (v1 - 1650505768) ^ (155453101 * (((v3 | 0x841FA8B0) - v3 + (v3 & 0x7BE05748)) ^ 0x6239B37F));
  v6 = (*(v4 + 8 * (v1 ^ 0x62601A8E)))(v5 - 256);
  *(v2 + 328) = 0;
  return (*(v4 + 8 * (v1 - 1650488091)))(v6);
}

uint64_t sub_10086898C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 + 32);
  v11 = 1603510583 * ((v7 - 2 * (v7 & 0x3E29C790) - 1104558192) ^ 0x29F2F53B);
  *(v9 - 244) = LODWORD(STACK[0x524]) ^ v11;
  *(v9 - 232) = v11 ^ 0x2F5FFB17;
  *(v9 - 240) = v10;
  *(v9 - 256) = STACK[0x5B0];
  v12 = (*(v8 + 8 * LODWORD(STACK[0x520])))(v9 - 256);
  v13 = *(v9 - 248) == LODWORD(STACK[0x51C]);
  return (*(v8 + 8 * (((2 * (((LODWORD(STACK[0x528]) ^ v13) & 1) == 0)) & 0xFB | (4 * ((LODWORD(STACK[0x528]) ^ ~v13) & 1))) ^ 0x92CAu)))(v12);
}

uint64_t sub_100868B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, unsigned int a30)
{
  LODWORD(STACK[0x18B0]) = v30;
  LODWORD(STACK[0x1978]) = v31;
  return (*(v33 + 8 * ((a29 * (v31 == v32)) ^ a30)))();
}

uint64_t sub_100868B9C()
{
  STACK[0x2568] = v2;
  STACK[0x2570] = v0;
  v4 = STACK[0x1428];
  STACK[0x2578] = &STACK[0x2720] + STACK[0x1428];
  STACK[0x1428] = v4 + 320;
  LODWORD(STACK[0x9B4]) = (((v2[18] ^ 0x505377D0) - 1347647440) ^ ((v2[18] ^ 0xF73B16BA) + 147122502) ^ ((v2[18] ^ 0xBA14E716) + ((8 * v1) ^ 0x45EA49BA))) + 621257026;
  LODWORD(STACK[0x1874]) = v2[19] ^ 0xA719755;
  LODWORD(STACK[0x1950]) = v2[20] ^ 0x7C34502D;
  LODWORD(STACK[0x1A90]) = v2[21] ^ 0x523265D;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_100868E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  if (v5)
  {
    v9 = a5 << ((((v7 + 34) | 0x42) + 15) ^ (v7 + 114)) >= v6;
  }

  else
  {
    v9 = 0;
  }

  v10 = !v9;
  return (*(v8 + 8 * ((1984 * v10) ^ v7)))(a1, a2, a3, a4, (v7 + 168427042) | 0xC0412442);
}

uint64_t sub_100868FEC@<X0>(uint64_t a1@<X8>)
{
  STACK[0x2018] = a1 + 36;
  v3 = (*(v2 + 8 * (v1 + 27212)))(48);
  STACK[0x1BE0] = v3 + 0x427A3CD3E8C5DA2FLL;
  return (*(v2 + 8 * (((v3 != 0) * ((((v1 + 1336352556) & 0xFD7CA1D7) + 356298574) ^ (v1 + 1944154375) & 0xEE7EFEFE)) ^ v1)))();
}

uint64_t sub_1008691B4@<X0>(int a1@<W0>, int a2@<W8>)
{
  v4 = a2 - 36936;
  v5 = (v2 & 4) == 0;
  v6 = (*(v3 + 8 * (a2 + 2482)))(a1 + ((a2 - 41062) | 0x9862u) - 216912077);
  return (*(v3 + 8 * (v4 ^ (43 * v5))))(v6);
}

uint64_t sub_100869210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  *(v38 + 8) = v43 - 0x6D1F7049DB47A9FDLL;
  *v41 = v43 - 0x6D1F7049DB47A9FDLL;
  v41[1] = 0xCFC2EDC4E9D8597BLL - v40;
  v41[2] = (LOBYTE(STACK[0x207]) ^ 0x7BEEBABEAFF993CBLL) - 0x83A2983B829658CLL + ((LOBYTE(STACK[0x207]) << (v39 - 104)) & 0x196);
  *(v41 + v42) = 0x3CE25E0EC5200378;
  *(a38 + 40) += v42;
  return (*(v44 + 8 * v39))();
}

uint64_t sub_1008692C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = (((LODWORD(STACK[0x11A8]) ^ 0x26EB49E2) - 652954082) ^ ((LODWORD(STACK[0x11A8]) ^ 0x21C2DE9) - 35401193) ^ ((LODWORD(STACK[0x11A8]) ^ 0xAF427348 ^ ((v8 + 1111508407) | 0x20208042)) + 853368038)) - v4 + 1486856076;
  v11 = (v10 ^ 0xAD5C0735) & (2 * (v10 & 0xCE5C8601)) ^ v10 & 0xCE5C8601;
  v12 = ((2 * (v10 ^ 0x35F40737)) ^ 0xF751026C) & (v10 ^ 0x35F40737) ^ (2 * (v10 ^ 0x35F40737)) & 0xFBA88136;
  v13 = v12 ^ 0x8A88112;
  v14 = (v12 ^ 0x73000004) & (4 * v11) ^ v11;
  v15 = ((4 * v13) ^ 0xEEA204D8) & v13 ^ (4 * v13) & 0xFBA88130;
  v16 = v14 ^ 0xFBA88136 ^ (v15 ^ 0xEAA00010) & (16 * v14);
  v17 = (16 * (v15 ^ 0x11088126)) & 0xFBA88120 ^ 0x41208016 ^ ((16 * (v15 ^ 0x11088126)) ^ 0xBA881360) & (v15 ^ 0x11088126);
  v18 = (v16 << 8) & 0xFBA88100 ^ v16 ^ ((v16 << 8) ^ 0xA8813600) & v17;
  LODWORD(STACK[0x11A8]) = v10 ^ (2 * ((v18 << 16) & 0x7BA80000 ^ v18 ^ ((v18 << 16) ^ 0x1360000) & ((v17 << 8) & 0x7BA80000 ^ 0x53280000 ^ ((v17 << 8) ^ 0x28810000) & v17))) ^ 0x8398437C;
  LODWORD(STACK[0x2540]) = v7;
  LOBYTE(STACK[0x2547]) = 1;
  LODWORD(STACK[0x23F0]) = v6 + v5 + 1027235963;
  return (*(v9 + 8 * (v8 + 3400)))(a1, a2, a3, a4, STACK[0x808]);
}

uint64_t sub_100869594(int a1, uint64_t a2)
{
  v8 = *(v5 + a2);
  v9 = a2 - 1;
  *(v2 + v9) = *(v3 + v9) ^ *(v6 + v9) ^ (111 * v9) ^ *(v4 + v9) ^ (((a1 + 82) | 0x20) - 14) ^ v8;
  return (*(v7 + 8 * ((41285 * (v9 == 0)) ^ a1)))();
}

uint64_t sub_1008695F8()
{
  *(v5 - 248) = (v1 + 329028340) ^ (1112314453 * (((v3 | 0x992EA06C) - (v3 & 0x992EA068)) ^ 0x76788AB5));
  *(v5 - 256) = v0;
  *(v5 - 240) = STACK[0x650];
  v6 = (*(v4 + 8 * (v1 + 24996)))(v5 - 256);
  *(STACK[0xCD8] + 120) = v2;
  return (*(v4 + 8 * v1))(v6);
}

uint64_t sub_100869730()
{
  LODWORD(STACK[0xA04]) += 4;
  v1 = STACK[0x265C];
  LODWORD(STACK[0x7E0]) = STACK[0x265C];
  return (*(v0 + 8 * ((42 * ((((v1 ^ 0xCF29D22F) + 819342801) ^ ((v1 ^ 0xB9FA0295) + 1174797675) ^ ((v1 ^ 0x9F0617AB) + 1626990677)) == 371865839)) ^ 0x7517u)))();
}

uint64_t sub_10086984C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x1718]) = 1600085855;
  *v3 = 1;
  STACK[0xA50] = &STACK[0x1718];
  LODWORD(STACK[0x1B0C]) = v2;
  v5 = a1 - 174733789 + v1 + 9322;
  v6 = v5 < v1 - 174724475;
  v7 = v5 > LODWORD(STACK[0x1BA8]) - 174702537;
  if (v6 != LODWORD(STACK[0x1BA8]) > 0xA69BFC8)
  {
    v7 = v6;
  }

  return (*(v4 + 8 * ((14 * v7) ^ v1)))();
}

uint64_t sub_100869964(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35)
{
  STACK[0x330] = STACK[0x678];
  STACK[0x328] = STACK[0x670];
  v36 = *(v35 + 8 * a35);
  LODWORD(STACK[0x348]) = a1;
  return v36();
}

uint64_t sub_1008699D4(int a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7)
{
  LODWORD(STACK[0x590]) = a7;
  LODWORD(STACK[0x598]) = a6;
  LODWORD(STACK[0x688]) = a5;
  LODWORD(STACK[0x5A8]) = a3;
  LODWORD(STACK[0x5A0]) = v7 - 1801190599;
  LODWORD(STACK[0x4B4]) = -252031991 - a1;
  LODWORD(STACK[0x628]) = (v9 ^ 0x1C02B905) - 469931596;
  v10 = *(STACK[0x6A0] + 8 * ((63827 * (a1 + (v9 ^ 0x1C02B905u) + 1649963157 < 0x40)) ^ v9));
  STACK[0x698] = v8;
  return v10(0x8FB22143FEDB6CB3, 0x69BD282DC245046, 0xD37A505B848A08CLL, a4, 0xAA9DDABAE2E4D47CLL, 0x82B08017BF43C069, 0xF0B8BD62D78C6B5DLL, 0xB9A0A289B8E6F931);
}

uint64_t sub_100869B64@<X0>(uint64_t a1@<X8>)
{
  STACK[0x1ED0] = v3;
  STACK[0x4558] = v2;
  v5 = STACK[0x7690];
  v6 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7338] = v6;
  STACK[0x7690] = v5 + 112;
  v7 = (((v1 ^ 0xCD0BC831) + 854865871) ^ ((v1 ^ 0x2D9C233D) - 765207357) ^ ((v1 ^ 0x9422C1D) + ((v4 + 31594) ^ 0xF6BD58D8))) + 343542077;
  v8 = 155453101 * ((((&STACK[0x10000] + 3800) | 0x2C1FE593) - ((&STACK[0x10000] + 3800) & 0x2C1FE590)) ^ 0xCA39FE5C);
  LODWORD(STACK[0x10EF0]) = (v4 + 45301) ^ v8;
  LODWORD(STACK[0x10EEC]) = (v7 ^ ((v7 ^ 0x8DB59DE0) + 1492000860) ^ ((v7 ^ 0xA7E4890) - 551160532) ^ ((v7 ^ 0xF29068CB) + 667669873) ^ ((v7 ^ 0x5FFFFFFF) - 1968946619) ^ 0xC3718555) - v8;
  STACK[0x10EE0] = v6;
  STACK[0x10ED8] = a1 + 24;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * (v4 ^ 0xC35F)))(&STACK[0x10ED8]);
  return (*(v9 + 8 * ((48088 * (LODWORD(STACK[0x10EE8]) == -371865839)) ^ v4)))(v10);
}

uint64_t sub_100869D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  STACK[0x250] = 0;
  STACK[0x228] = &STACK[0x2D4];
  v40 = a37 > 0x80000000A8E72DD7 || a37 < (((1857 * (v37 ^ 0x37D5u)) ^ 0x80000000A8E74118) - v38);
  return (*(STACK[0x2A0] + 8 * ((31319 * v40) ^ v37)))();
}

uint64_t sub_10086A05C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  LODWORD(STACK[0x9B4]) = a2;
  LODWORD(STACK[0x1874]) = v5;
  LODWORD(STACK[0x1950]) = v2;
  LODWORD(STACK[0x1A90]) = v4;
  LODWORD(STACK[0xB14]) = v6;
  LODWORD(STACK[0x175C]) = v3;
  return (*(v8 + 8 * (v7 + 16880)))(a1, 2 * ((v7 + 16880) ^ 0x983Bu));
}

uint64_t sub_10086A138@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = *(v2 + 864);
  *(v2 + 960) = *(a1 + 8 * a2);
  return (*(a1 + 8 * (a2 + 7216)))(v3);
}

uint64_t sub_10086A26C@<X0>(int a1@<W8>)
{
  v5 = *(v4 + 4 * (v2 - 2059661825));
  v6 = 1566083941 * (((v5 ^ (v5 >> 30) ^ 0x48C0D34C) - 1450110266) ^ ((v5 ^ (v5 >> 30) ^ 0x5A247BDB) - 1149912493) ^ ((v5 ^ (v5 >> 30) ^ 0x12E4A897) - 206214881)) + 1172444805;
  v7 = ((2 * (v6 & 0xC756A009)) & 0x200002 | v6 & 0xC756A009) ^ (2 * (v6 & 0xC756A009)) & (v6 ^ 0x8636B402);
  v8 = ((2 * (v6 ^ 0x8636B402)) ^ 0x82C02816) & (v6 ^ 0x8636B402) ^ (2 * (v6 ^ 0x8636B402)) & 0x4160140A;
  v9 = v8 ^ 0x41201409;
  v10 = v7 ^ 0x4160140B ^ (v8 ^ 0x40401401) & (4 * v7);
  v11 = (4 * v9) & 0x41601408 ^ 0x40600403 ^ ((4 * v9) ^ 0x580502C) & v9;
  v12 = (16 * v10) & 0x41601400 ^ v10 ^ ((16 * v10) ^ 0x160140B0) & v11;
  v13 = (16 * v11) & 0x41601400 ^ 0x4160140B ^ ((16 * v11) ^ 0x160140B0) & v11;
  v14 = (v12 << 8) & 0x41601400 ^ v12 ^ ((v12 << 8) ^ 0x60140B00) & v13;
  v15 = v6 ^ *(v4 + 4 * (v2 - 2059661824)) ^ (2 * ((v14 << 16) & 0x41600000 ^ v14 ^ ((v14 << 16) ^ 0x140B0000) & ((v13 << 8) & 0x41600000 ^ 0x1600000 ^ ((v13 << 8) ^ 0x60140000) & v13)));
  *(v4 + 4 * (v2 - 2059661824)) = (((v15 ^ 0xE36F18D4) + 793016887) ^ ((v15 ^ 0x3BA5B92E) - 141632563) ^ ((v15 ^ 0x1D5C29E5) - 780711160)) - v2 + 1896220418;
  v16 = STACK[0x3A8];
  *(v3 - 152) = (v2 + 1075784272) ^ STACK[0x3A8];
  *(v3 - 128) = (a1 + 364899276) ^ v16;
  *(v3 - 124) = a1 + 364895728 - v16 + 71;
  *(v3 - 144) = (a1 + 364895728) ^ v16;
  *(v3 - 112) = a1 - v16 - 1781264637;
  *(v3 - 120) = v16;
  *(v3 - 136) = STACK[0x3A0];
  v17 = (*(v1 + 8 * (a1 ^ 0xA6E5)))(v3 - 152);
  return (*(v1 + 8 * *(v3 - 116)))(v17);
}

uint64_t sub_10086A548(unint64_t a1)
{
  STACK[0x2B0] = STACK[0x358];
  v3 = *(v2 + 8 * (v1 ^ 0x5742));
  STACK[0x2A8] = a1;
  return v3();
}

uint64_t sub_10086A5E8(uint64_t a1)
{
  v7 = (v1 + v4) & v5;
  v8 = *(a1 + 56);
  (*(v6 + 8 * (v1 + v2)))();
  return (*(v6 + 8 * (((v8 == 0) * (v7 + v3)) ^ 0x36E7)))(v8);
}

uint64_t sub_10086A62C()
{
  STACK[0x1198] = STACK[0x1B30] + v1;
  v3 = *(v2 + 8 * ((24801 * (v0 + 338300674 > ((v0 - 249004546) & 0xED7FFDF ^ 0x9A68B55F))) ^ (v0 + 3829)));
  STACK[0x1750] = *(v2 + 8 * v0);
  LODWORD(STACK[0x7E0]) = 62;
  return v3();
}

uint64_t sub_10086A720@<X0>(uint64_t a1@<X8>)
{
  *(v5 - 256) = (v1 - 1650505768) ^ (155453101 * (v3 ^ 0xE6261BCF));
  *(v5 - 248) = a1;
  v6 = (*(v4 + 8 * (v1 - 1650460022)))(v5 - 256);
  *(v2 + 360) = 0;
  return (*(v4 + 8 * (v1 - 1650500633)))(v6);
}

uint64_t sub_10086A7B4@<X0>(int a1@<W8>)
{
  v4 = a1 - 1650496780;
  v5 = STACK[0x1970];
  *(v3 - 256) = a1 + 193924789 * ((2 * (v1 & 0xA73C590) - v1 + 1972124266) ^ 0xC337080C) - 1650508615;
  *(v3 - 248) = v5;
  v6 = (*(v2 + 8 * (a1 - 1650460004)))(v3 - 256);
  STACK[0x1428] -= 576;
  return (*(v2 + 8 * v4))(v6);
}

uint64_t sub_10086A868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (*(a8 + 8 * (v8 ^ 0xFE4B)))();
  v10 = STACK[0x5A0];
  STACK[0x5D0] = 0;
  return (*(v10 + 8 * v8))(v9);
}

uint64_t sub_10086AA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x318];
  LOWORD(STACK[0x9A6]) = v4;
  v6 = *(STACK[0x3A8] + 8 * (v5 - 28074));
  LODWORD(STACK[0x390]) = v4;
  return v6(a1, a2, a3, a4, v5);
}

uint64_t sub_10086AA98(uint64_t a1, int a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  LODWORD(STACK[0xC80]) = a7;
  LODWORD(STACK[0xAC8]) = a5;
  LODWORD(STACK[0x4FC]) = v60;
  LODWORD(STACK[0x218]) = v59;
  v61 = STACK[0xE78];
  v62 = STACK[0xE78] ^ LODWORD(STACK[0xC38]);
  v63 = ((((v62 ^ v58 ^ 0x5D) + 117) ^ ((v62 ^ 0x82) + 97) ^ (((((v58 - 92) & 0xFC) + 104) ^ v62) + 55)) - 17) ^ 0x91;
  v64 = STACK[0x4E8];
  LODWORD(v63) = ((*(STACK[0x4E8] + v63) ^ 0xFFFFFF93) + 109) ^ ((*(STACK[0x4E8] + v63) ^ 0xFFFFFF8D) + 115) ^ ((*(STACK[0x4E8] + v63) ^ 0x58) - 88);
  v65 = v63 - 5;
  LODWORD(v63) = v63 + 123;
  LODWORD(v63) = v63 ^ (2 * ((v65 ^ 0x5E) & (2 * ((v65 ^ 0x5E) & (2 * ((v65 ^ 0x5E) & (2 * ((v65 ^ 0x5E) & (2 * ((v65 ^ 0x5E) & (2 * ((v65 ^ 0x1E) & (2 * (v63 & 0xFFFFFFDF)) ^ v63 & 0xFFFFFFDF)) ^ v63 & 0xFFFFFFDF)) ^ v63 & 0xFFFFFFDF)) ^ v63 & 0xFFFFFFDF)) ^ v63 & 0xFFFFFFDF)) ^ v63 & 0xFFFFFFDF));
  LODWORD(v63) = v63 ^ (v63 >> 4) ^ (v63 >> 1);
  LOBYTE(v63) = -51 * (((v63 ^ 0xD8) + 80) ^ ((v63 ^ 0x50) - 56) ^ ((v63 ^ 0x1D) - 117)) - 101;
  LOBYTE(v65) = v63 & 0xD6 ^ 0xBC;
  v66 = 2 * ((2 * v65) ^ v65 ^ (2 * v65) & v63);
  v67 = 2 * ((2 * (v66 ^ v65 ^ v66 & v63)) ^ v65 ^ (2 * (v66 ^ v65 ^ v66 & v63)) & v63);
  *(STACK[0xF10] + 135) ^= *(STACK[0xF50] + 82) ^ v63 ^ (2 * ((2 * (v67 ^ v65 ^ v67 & v63)) ^ v65 ^ (2 * (v67 ^ v65 ^ v67 & v63)) & v63)) ^ 0xB5;
  v68 = STACK[0xC88];
  *(STACK[0xF10] + 11) ^= LODWORD(STACK[0xCA0]) ^ *(STACK[0xF50] + 85) ^ 0x27 ^ STACK[0xC88];
  LOBYTE(v63) = *(STACK[0xF50] + 75) - 122;
  LOBYTE(v65) = v63 & 0x20 | 0x5A;
  LODWORD(v63) = *(v64 + ((v63 ^ (2 * ((v63 ^ 0xC) & (2 * ((v63 ^ 0xC) & (2 * ((v63 ^ 0xC) & (2 * ((v63 ^ 0xC) & (2 * ((v63 ^ 0xC) & (2 * v65) ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ v65))) ^ 0xB1u));
  LODWORD(v63) = ((v63 ^ 0xFFFFFFFE) + 2) ^ ((v63 ^ a2) - 33) ^ ((v63 ^ 0xFFFFFF99) + 103);
  v69 = v63 + 84;
  LODWORD(v63) = ((-85 - v63) & 0xFFFFFF86 | 0x50) ^ (v63 + 84) & 0xFFFFFFA4;
  LODWORD(v63) = v69 ^ (2 * ((v69 ^ 4) & (2 * ((v69 ^ 4) & (2 * ((v69 ^ 4) & (2 * ((v69 ^ 4) & (2 * ((v69 ^ 6) & (2 * v63) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63));
  LODWORD(v63) = (-51 * (v63 ^ (v63 >> 4) ^ (v63 >> 1) ^ 0xFFFFFFD1)) ^ 0xFFFFFF9E;
  *(STACK[0xF10] + (((v61 & 0x1A38BF7F ^ 0x18109401) + (v61 & 0x1A38BF7F ^ 0x2282B7E)) & 0x20010080) + 70) = LODWORD(STACK[0xCB0]) ^ BYTE1(v61) ^ *(STACK[0xF10] + 70) ^ (-81 * (*(STACK[0xEB0] + (((v63 >> 4) | (16 * v63)) ^ 0x5DLL)) ^ ((v63 >> 4) | (16 * v63)) ^ 0xCC)) ^ 0x9C;
  v70 = 12 - 5 * (LODWORD(STACK[0xCC0]) ^ *(STACK[0xF10] + 104) ^ 0x68 ^ (v68 >> 8));
  LOBYTE(v69) = (12 - 5 * (LOBYTE(STACK[0xCC0]) ^ *(STACK[0xF10] + 104) ^ 0x68 ^ BYTE1(v68))) & 0x7C ^ 0x44;
  LOBYTE(v70) = v70 ^ (2 * ((v70 ^ 0x74) & (2 * ((v70 ^ 0x74) & (2 * ((v70 ^ 0x74) & (2 * ((v70 ^ 0x74) & (2 * v69) ^ v69)) ^ v69)) ^ v69)) ^ v69));
  LOBYTE(v69) = v70 ^ *(STACK[0xE90] + (v70 ^ 0x5ALL));
  LOBYTE(v69) = (((v69 ^ 0xDE) + 15) ^ ((v69 ^ 0xA) - 37) ^ ((v69 ^ 0x2A) - 5)) + 57;
  v71 = v69 & 0x95 ^ 3;
  *(STACK[0xF10] + 104) = v69 ^ *(STACK[0xF50] + 54) ^ (2 * ((v69 ^ 0x16) & (2 * ((v69 ^ 0x16) & (2 * ((v69 ^ 0x16) & (2 * ((v69 ^ 0x16) & (2 * ((v69 ^ 0x16) & (2 * (((2 * v69) & 0x2E ^ 2) & (v69 ^ 6) ^ v71)) ^ v71)) ^ v71)) ^ v71)) ^ v71)) ^ v71));
  v72 = (((*(STACK[0xF50] + 105) ^ 0xD8) + 67) ^ ((*(STACK[0xF50] + 105) ^ 0x9E) + 5) ^ ((*(STACK[0xF50] + 105) ^ 0x6D) - 8)) - 104;
  v73 = v72 & 0x9B ^ 0xBE;
  v74 = *(STACK[0xEC0] + ((v72 ^ (2 * ((v72 ^ 0x2E) & (2 * ((v72 ^ 0x2E) & (2 * ((v72 ^ 0x2E) & (2 * ((v72 ^ 0x2E) & (2 * ((v72 ^ 0x2E) & (2 * ((v72 ^ 0x2E) & (2 * v72) & 0x5E ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73))) ^ 3u));
  v75 = ((v68 >> 16) & 0x2D ^ 0x20) + ((v68 >> 16) & 0x2D ^ 0xD);
  v76 = v74 ^ (v75 - ((2 * v75) & 0x72) - 71);
  v77 = LODWORD(STACK[0x220]) - 59 * (((v76 ^ 0xFFFFFFDA) + 38) ^ ((v76 ^ 0xFFFFFF87) + 121) ^ ((v76 ^ 0xFFFFFFA2) + 94));
  LOBYTE(v75) = v77 & 6 | 0x38;
  *(STACK[0xF10] + 5) ^= BYTE4(a56) ^ BYTE2(v61) ^ v77 ^ (2 * ((v77 ^ 0x54) & (2 * ((v77 ^ 0x54) & (2 * ((v77 ^ 0x54) & (2 * ((v77 ^ 0x54) & (2 * ((v77 ^ 0x54) & (2 * v75) ^ v75)) ^ v75)) ^ v75)) ^ v75)) ^ v75)) ^ 0xC;
  *(STACK[0xF10] + (((v61 & 0x6F ^ 0x6E) + (v61 & 0x6F ^ 1)) & 0xB7)) = LODWORD(STACK[0xCC8]) ^ *(STACK[0xF10] + 39) ^ *(STACK[0xF50] + 14) ^ 0x28 ^ BYTE2(v68);
  LOBYTE(v65) = *(STACK[0xF50] + 113);
  v78 = STACK[0xF10];
  v79 = *(STACK[0xE98] + (((*(STACK[0xF10] + 98) >> 4) | (16 * *(STACK[0xF10] + 98))) ^ 0xC5));
  LODWORD(STACK[0xCE0]) = 110;
  v80 = -81 * (((v79 ^ 0x52) - 26) ^ ((v79 ^ a4) + 33) ^ ((v79 ^ 0xFFFFFFF5) + 67)) + 110;
  v81 = v80 & 0x7A ^ 0x70;
  *(v78 + 98) = BYTE4(a57) ^ BYTE3(v61) ^ v65 ^ v80 ^ (2 * ((v80 ^ 0x18) & (2 * ((v80 ^ 0x18) & (2 * ((v80 ^ 0x18) & (2 * ((v80 ^ 0x18) & (2 * ((v80 ^ 0x18) & (2 * v81) ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ a6;
  v82 = *(STACK[0xED8] + 8 * (v58 ^ (26 * (a39 == 1981808495))));
  LODWORD(STACK[0x4D0]) = -27;
  STACK[0xE88] = 11;
  return v82((v80 ^ 0x18) & (2 * ((v80 ^ 0x18) & (2 * ((v80 ^ 0x18) & (2 * ((v80 ^ 0x18) & (2 * v81) ^ v81)) ^ v81)) ^ v81)) ^ v81, 10, 37, v82, 174, a6, 221, 8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
}

uint64_t sub_10086B1EC()
{
  v2 = (*(v0 + 8 * (v1 ^ 0xDAD0)))();
  v3 = (*(v0 + 8 * (v1 ^ 0xDCAE)))();
  return (*(v0 + 8 * (((v2 == v3) * (v1 + 14723 + ((v1 + 1849908552) & 0x91BCDEFF))) ^ v1)))(v3, v4, v5, v6);
}

uint64_t sub_10086B2A4@<X0>(unsigned int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v11 = v3 + (a1 ^ (a1 >> 30)) * v5;
  *(v10 + 4 * a3) = a3 + v7 + v11;
  return (*(v8 + 8 * (((a3 < 0x26F) * a2) ^ v9)))((v11 + v4 + v6));
}

uint64_t sub_10086B2E8()
{
  v3 = *(*(v2 + 672) + 24);
  STACK[0x450] = v3;
  return (*(v1 + 8 * (((v3 == 0) * ((v0 - 7531) ^ (v0 - 7529))) ^ v0)))();
}

uint64_t sub_10086B41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  STACK[0x2050] = v7;
  LODWORD(STACK[0xE20]) = a5;
  STACK[0xD00] = v6;
  LODWORD(STACK[0x18B8]) = v5;
  return (*(v8 + 92960))(STACK[0x19F0], 3976926506, 371891407, 55, 95, 2525398098, 4294967274, 2525398095);
}

uint64_t sub_10086B6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, int32x2_t a3, uint64_t a4)
{
  v7 = *(a1 + 24);
  v8 = *(*(*(v6 + 8 * (v5 ^ 0x9751)) - 1680276466) + (*(*(v6 + 8 * (v5 ^ 0x8C30)) - 231415367) & 0xFFFFFFFFCA475F48)) ^ 0xCA475F4BLL;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  v12 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v11;
  v13 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v12 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v12;
  v14 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v13 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v13;
  v15 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v14 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v14;
  LODWORD(v15) = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v15 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v15;
  a3 = 0;
  a4 = (v4 ^ 0x10A99C80114D1487) - 0x10A99C80114D1487;
  v16 = 16777619 * ((-901292213 * v15 + 7) ^ (-901292213 * v15)) % 7;
  v17 = *(&a3 | v16);
  *(&a3 | v16) = 0;
  a3.i8[7] = v17;
  v18 = 16777619 * ((-901292213 * v15 + 6) ^ (-901292213 * v15)) % 6;
  v19 = *(&a3 | v18);
  *(&a3 | v18) = a3.i8[6];
  a3.i8[6] = v19;
  v20 = 16777619 * ((-901292213 * v15 + 5) ^ (-901292213 * v15)) % 5;
  v21 = *(&a3 | v20);
  *(&a3 | v20) = a3.i8[5];
  a3.i8[5] = v21;
  v22 = a3.i8[0];
  a3.i8[0] = a3.i8[4];
  a3.i8[4] = v22;
  v23 = 16777619 * ((-901292213 * v15 + 3) ^ (-901292213 * v15)) % 3;
  v24 = *(&a3 | v23);
  *(&a3 | v23) = a3.i8[3];
  a3.i8[3] = v24;
  v25 = *(a3.i16 + 1);
  a3.i8[2] = a3.i8[0];
  a3.i16[0] = v25;
  v26 = vdup_n_s32(-901292213 * v15);
  v27.i32[0] = v26.i32[0];
  v27.i32[1] = -901292213 * v15 + 1;
  v28 = veor_s8(vmul_s32(v27, v26), v26);
  a3 = vmla_s32(v28, a3, vdup_n_s32(0x1000193u));
  a4 ^= *&a3;
  v29 = vmul_s32(vsub_s32(a4, v28), vdup_n_s32(0x359C449Bu));
  a4 = v29;
  *(&a4 + 1) = v29.i16[0];
  LOBYTE(a4) = v29.i8[2];
  v30 = (&a4 | v23);
  LOBYTE(v25) = *v30;
  *v30 = v29.i8[3];
  BYTE3(a4) = v25;
  LOBYTE(v30) = a4;
  LOBYTE(a4) = BYTE4(a4);
  BYTE4(a4) = v30;
  v31 = (&a4 | v20);
  LOBYTE(v30) = *v31;
  *v31 = BYTE5(a4);
  BYTE5(a4) = v30;
  v32 = (&a4 | v18);
  LOBYTE(v31) = *v32;
  *v32 = BYTE6(a4);
  BYTE6(a4) = v31;
  v33 = (&a4 | v16);
  v34 = *v33;
  *v33 = HIBYTE(a4);
  HIBYTE(a4) = v34;
  v35 = a4;
  v36 = (-901292213 * a4) ^ v15;
  for (i = 1; i != 48; ++i)
  {
    v38 = 16777619 * ((v36 + i) ^ v36) % i;
    v39 = *(*&v35 + 8 * v38) ^ *(*&v35 + 8 * i);
    *(*&v35 + 8 * i) = v39;
    v40 = *(*&v35 + 8 * v38) ^ v39;
    *(*&v35 + 8 * v38) = v40;
    *(*&v35 + 8 * i) ^= v40;
  }

  v41 = 0;
  v42 = xmmword_100BC7620;
  v43 = xmmword_100BC7630;
  v44 = vdupq_n_s32(v36);
  v45.i64[0] = 0x9B009B009B009BLL;
  v45.i64[1] = 0x9B009B009B009BLL;
  v46 = xmmword_100BC7640;
  v47.i64[0] = 0x1000000010;
  v47.i64[1] = 0x1000000010;
  v48 = xmmword_100BC7650;
  do
  {
    v49 = *(*&v35 + v41);
    v50 = vmovl_high_u8(v49);
    v51 = vmovl_u8(*v49.i8);
    v54.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v46, v44), vsubq_s32(v46, v44)), v44), vmull_high_u16(v51, v45));
    v54.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v43, v44), vsubq_s32(v43, v44)), v44), vmull_u16(*v50.i8, 0x9B009B009B009BLL));
    v54.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v48, v44), vsubq_s32(v48, v44)), v44), vmull_u16(*v51.i8, 0x9B009B009B009BLL));
    v54.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v42, v44), vsubq_s32(v42, v44)), v44), vmull_high_u16(v50, v45));
    *(*&v35 + v41) = vqtbl4q_s8(v54, xmmword_100BC7660);
    v41 += 16;
    v48 = vaddq_s32(v48, v47);
    v46 = vaddq_s32(v46, v47);
    v43 = vaddq_s32(v43, v47);
    v42 = vaddq_s32(v42, v47);
  }

  while (v41 != 384);
  v52 = a4;
  *(v7 - 0x5DCADD66F8048E16) = *(a4 + 376);
  return (*(a2 + 8 * ((92 * (((((v5 - 38061) | 0x1818) ^ (*&v52 == 0)) & 1) == 0)) ^ v5)))(xmmword_100BC7660, v42, v43);
}

uint64_t sub_10086BB8C(uint64_t a1)
{
  v2 = *(a1 + 4) ^ (1022166737 * (((a1 | 0xD35A72E1) - (a1 | 0x2CA58D1E) + 749047070) ^ 0x694A9373));
  v5 = v2 + 297845113 * (((v4 | 0x74D9679) + (~v4 | 0xF8B26986)) ^ 0x707E8AE6) - 439630667;
  result = (*(*(&off_1010A0B50 + v2 - 439659463) + 8 * (v2 ^ 0x1A347C85) - 810145054))(v4);
  *a1 = v4[0];
  return result;
}

uint64_t sub_10086BD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = (*(v72 + 8 * a70))((a71 + LODWORD(STACK[0x1D94])));
  STACK[0xA40] = v73;
  return (*(v72 + 8 * (((v73 == 0) * ((a72 & 0x17DF) - 1691)) ^ 0x1B5F)))();
}

uint64_t sub_10086BE98@<X0>(int a1@<W5>, uint64_t a2@<X7>, unint64_t a3@<X8>)
{
  STACK[0x3D0] = a3;
  v4 = a2 ^ (5 * (a1 ^ 0xA876u)) ^ 0x99E93869;
  v5 = *(v3 + 8 * (((16 * (v4 > 7)) | (32 * (v4 > 7))) ^ a1));
  STACK[0x3E0] = v4;
  return v5(STACK[0x3C0], v4);
}

uint64_t sub_10086BF88()
{
  v3 = (*(v1 + 8 * (v2 + 5932)))();
  v4 = v3 == (*(v1 + 8 * (v2 + 6000)))(v0);
  return (*(v1 + 8 * ((v4 * ((v2 - 235064824) & 0xFF6B3FC7 ^ (v2 - 244813126))) ^ v2)))();
}

uint64_t sub_10086C000(uint64_t result)
{
  if (((*(result + 8) ^ (1022166737 * ((-2 - ((result | 0x460B6292) + (~result | 0xB9F49D6D))) ^ 0xE47CFF))) & 0xFF00FE ^ 0x7000E8) <= 0x10001)
  {
    v1 = -16;
  }

  else
  {
    v1 = -14;
  }

  *(result + 4) = ((((*(result + 8) ^ (1022166737 * ((-2 - ((result | 0x460B6292) + (~result | 0xB9F49D6D))) ^ 0xE47CFF))) & 0xFF00FE ^ 0x7000E8) > 0x10001) ^ 0x5F) + v1;
  return result;
}

void sub_10086C084(uint64_t a1)
{
  v1 = *(a1 + 8) - 193924789 * (((a1 | 0xB512B135) - a1 + (a1 & 0x4AED4ECA)) ^ 0x3A98353);
  v2 = 634647737 * ((((2 * &v5) | 0xD856EE80) - &v5 + 332695744) ^ 0x81BD58BC);
  v5 = v2 - 1431125373;
  v7 = v1 - v2 + 18851;
  v6 = &v4;
  v3 = *(&off_1010A0B50 + (v1 ^ 0xC14)) - 810145054;
  (*&v3[8 * (v1 ^ 0xC355)])(&v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10086C304(unint64_t a1)
{
  STACK[0x450] = a1;
  v4 = *(v1 + 8 * (v2 - 1647256273));
  v5 = (v2 - 1647264019) | 0xCB8;
  *(v3 - 148) = v5;
  return v4(v5 ^ 0xFFFFFFE9, 105, 4294967218, 4294967213, 4294967216, 19, 25, 26);
}

uint64_t sub_10086C3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21)
{
  v25 = 1022166737 * ((((v24 - 144) | 0x30FF1173) + (~(v24 - 144) | 0xCF00EE8C)) ^ 0x8AEFF0E0);
  *(v24 - 144) = v23;
  *(v24 - 136) = a21 - v25;
  *(v24 - 132) = v25 + v22 + 11637;
  v26 = (*(v21 + 8 * (v22 + 31515)))(v24 - 144);
  return (*(v21 + 8 * (((*(v24 - 128) != v22 + 1497648230) * (((v22 - 18651) | 0x1000) - 5887)) ^ v22)))(v26);
}

uint64_t sub_10086C518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v70 = STACK[0x480];
  (*(STACK[0x480] + 8 * (a69 ^ 0xA051)))(v69);
  v71 = (*(v70 + 8 * (a69 ^ 0xA051)))(STACK[0x488]);
  return (*(v70 + 8 * a69))(v71);
}

uint64_t sub_10086C5A4()
{
  v5 = *(STACK[0x9D8] + v0);
  v6 = 1022166737 * ((((v2 | 0x211F6786) ^ 0xFFFFFFFE) - (~v2 | 0xDEE09879)) ^ 0x64F079EB);
  v7 = LODWORD(STACK[0x4D8]) - v6 + 1446135777 * LODWORD(STACK[0x1DC8]);
  *(v4 - 256) = LODWORD(STACK[0x4C8]) ^ v6;
  *(v4 - 252) = v7;
  *(v4 - 248) = v5;
  v8 = (*(v3 + 8 * LODWORD(STACK[0x4CC])))(v4 - 256);
  return (*(v3 + 8 * ((11626 * (*(v4 - 240) == v1)) ^ 0x159Bu)))(v8);
}

uint64_t sub_10086C670()
{
  v2 = 58 * (v0 ^ 0x6260D06C);
  STACK[0x17A0] = *(v1 + 8 * v2);
  return (*(v1 + 8 * (v2 - 1650502595 + v2 + 1650508358)))();
}

uint64_t sub_10086C6CC@<X0>(char a1@<W8>)
{
  v5 = ((v1 + 47) ^ 0x6C) * a1 + (LOBYTE(STACK[0x1457]) - 16) * (a1 - 69) + 11;
  v6 = v5 & 0x7D ^ 0x39;
  v7 = (*(STACK[0xE88] + 8) + (19 * LODWORD(STACK[0x1A6C]) - 211640136) % (LODWORD(STACK[0x1210]) - 747449584));
  v8 = *v7;
  LODWORD(v7) = 1864610357 * ((*(*v4 + (*STACK[0x800] & v2)) ^ v7) & 0x7FFFFFFF);
  v9 = 1864610357 * (v7 ^ (v7 >> 16));
  *(STACK[0x17E8] + LODWORD(STACK[0x129C])) = v5 ^ v8 ^ *(STACK[0x6A8] + (v9 >> 24)) ^ *(STACK[0x6A0] + (v9 >> 24)) ^ *((v9 >> 24) + STACK[0x6B0] + 1) ^ v9 ^ (-71 * BYTE3(v9)) ^ (2 * ((v5 ^ 0xA) & (2 * ((v5 ^ 0xA) & (2 * ((v5 ^ 0xA) & (2 * ((v5 ^ 0xA) & (2 * ((v5 ^ 0xA) & (2 * ((((2 * v5) & 0x16 ^ 0x76) & 2 | v6) ^ ((2 * v5) & 0x16 ^ 0x76) & v5)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ 0x7D;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_10086C828@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, uint64_t a8@<X8>)
{
  v15 = ((v10 + (a1 ^ (a1 >> 30) ^ a4)) ^ ((a1 ^ (a1 >> 30) ^ a5) + a6) ^ ((a1 ^ (a1 >> 30) ^ a7) + v11)) * a2;
  *(v13 + 4 * a8) = v8 + v15;
  return (*(v14 + 8 * ((496 * (a8 < 0x26F)) ^ v12)))((v9 + a3 + v15));
}

uint64_t sub_10086C890(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, __n128 a34)
{
  v37 = (v34 + 13408);
  STACK[0x410] = v37;
  return (*(v36 + 8 * ((((v37 ^ 0xCFE3) - 28174) * (v35 == a22)) ^ v34)))(0xEB690A0067A58754, a3, a26, a5, 0xC437C7327FD12F34, 0x75CF442284965A07, 0xDDD9E0843F4A7C84, 0xC6A7C07A3BDCB349, a1, a34);
}

uint64_t sub_10086CA30@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 4);
  *(a1 + 20) = v4;
  return (*(v3 + 8 * ((4284 * (v4 == (v2 ^ 0x5A9EE5DE))) ^ v2)))();
}

uint64_t sub_10086CAF4(uint64_t a1, unsigned int a2)
{
  v7 = (v3 | ((v3 < a2) << 32)) + 223638464;
  v8 = (((6 * (v4 ^ 0x998F) + 8135) | 0x600u) ^ 0x9E1B07659CB906A8) + v2;
  v9 = (v7 < 0xFA5F88E6) ^ (v8 < 0xFA5F88E6);
  v10 = v7 > v8;
  if (v9)
  {
    v10 = v7 < 0xFA5F88E6;
  }

  if (v10)
  {
    v11 = 371891407;
  }

  else
  {
    v11 = v5;
  }

  LODWORD(STACK[0xB40]) = v11;
  v12 = v11 == -371865839;
  LOBYTE(STACK[0x1FC7]) = v12;
  return (*(v6 + 8 * ((8380 * v12) ^ v4)))();
}

uint64_t sub_10086CBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  STACK[0x2050] = v7;
  LODWORD(STACK[0xE20]) = a5;
  STACK[0xD00] = v6;
  LODWORD(STACK[0x18B8]) = v5;
  return (*(v8 + 92960))(STACK[0x19F0], 3976926506, 371891407, 55, 95, 2525398098, 4294967274, 2525398095);
}

uint64_t sub_10086CFCC()
{
  v7 = *(*v3 + (*STACK[0x800] & 0x20FAB224)) ^ 0x20FAB225;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  v12 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v11;
  v13 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v12 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v12;
  v14 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v13 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v13;
  LODWORD(v14) = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v14 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v14;
  STACK[0x26E8] = v0;
  STACK[0x26E0] = 0;
  v15 = 16777619 * ((553300517 * v14 + 7) ^ (553300517 * v14)) % 7;
  v16 = *(&STACK[0x26E0] | v15);
  *(&STACK[0x26E0] | v15) = STACK[0x26E7];
  LOBYTE(STACK[0x26E7]) = v16;
  v17 = 16777619 * ((553300517 * v14 + 6) ^ (553300517 * v14)) % 6;
  v18 = *(&STACK[0x26E0] | v17);
  *(&STACK[0x26E0] | v17) = STACK[0x26E6];
  LOBYTE(STACK[0x26E6]) = v18;
  v19 = 16777619 * ((553300517 * v14 + 5) ^ (553300517 * v14)) % 5;
  v20 = *(&STACK[0x26E0] | v19);
  *(&STACK[0x26E0] | v19) = STACK[0x26E5];
  LOBYTE(STACK[0x26E5]) = v20;
  v21 = STACK[0x26E0];
  LOBYTE(STACK[0x26E0]) = STACK[0x26E4];
  LOBYTE(STACK[0x26E4]) = v21;
  v22 = 16777619 * ((553300517 * v14 + 3) ^ (553300517 * v14)) % 3;
  v23 = *(&STACK[0x26E0] | v22);
  *(&STACK[0x26E0] | v22) = STACK[0x26E3];
  LOBYTE(STACK[0x26E3]) = v23;
  v24 = STACK[0x26E1];
  LOBYTE(STACK[0x26E2]) = STACK[0x26E0];
  LOWORD(STACK[0x26E0]) = v24;
  v25 = vdup_n_s32(553300517 * v14);
  v26.i32[0] = v25.i32[0];
  v26.i32[1] = 553300517 * v14 + 1;
  v27 = veor_s8(vmul_s32(v26, v25), v25);
  STACK[0x26E0] = vmla_s32(v27, STACK[0x26E0], v5);
  STACK[0x26E8] ^= STACK[0x26E0];
  STACK[0x26E8] = vmul_s32(vsub_s32(STACK[0x26E8], v27), v6);
  v28 = STACK[0x26EA];
  LOWORD(STACK[0x26E9]) = STACK[0x26E8];
  LOBYTE(STACK[0x26E8]) = v28;
  v29 = (&STACK[0x26E8] | v22);
  v30 = *v29;
  *v29 = STACK[0x26EB];
  LOBYTE(STACK[0x26EB]) = v30;
  LOBYTE(v29) = STACK[0x26E8];
  LOBYTE(STACK[0x26E8]) = STACK[0x26EC];
  LOBYTE(STACK[0x26EC]) = v29;
  v31 = (&STACK[0x26E8] | v19);
  LOBYTE(v29) = *v31;
  *v31 = STACK[0x26ED];
  LOBYTE(STACK[0x26ED]) = v29;
  v32 = (&STACK[0x26E8] | v17);
  LOBYTE(v31) = *v32;
  *v32 = STACK[0x26EE];
  LOBYTE(STACK[0x26EE]) = v31;
  v33 = (&STACK[0x26E8] | v15);
  v34 = *v33;
  *v33 = STACK[0x26EF];
  LOBYTE(STACK[0x26EF]) = v34;
  v35 = STACK[0x26E8];
  v36 = (553300517 * STACK[0x26E8]) ^ v14;
  for (i = 1; i != 73; ++i)
  {
    v38 = 16777619 * ((v36 + i) ^ v36) % i;
    v39 = *(v35 + 8 * v38) ^ *(v35 + 8 * i);
    *(v35 + 8 * i) = v39;
    v40 = *(v35 + 8 * v38) ^ v39;
    *(v35 + 8 * v38) = v40;
    *(v35 + 8 * i) ^= v40;
  }

  v41 = 0;
  v42 = xmmword_100BC7620;
  v43 = xmmword_100BC7630;
  v44 = xmmword_100BC7640;
  v45 = xmmword_100BC7650;
  v46 = vdupq_n_s32(v36);
  v47 = *&STACK[0x610];
  v48.i64[0] = 0x9B009B009B009BLL;
  v48.i64[1] = 0x9B009B009B009BLL;
  v49.i64[0] = 0x1000000010;
  v49.i64[1] = 0x1000000010;
  do
  {
    v50 = *(v35 + v41);
    v51 = vmovl_high_u8(v50);
    v52 = vmovl_u8(*v50.i8);
    v63.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v44, v46), vsubq_s32(v44, v46)), v46), vmull_high_u16(v52, v48));
    v63.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v43, v46), vsubq_s32(v43, v46)), v46), vmull_u16(*v51.i8, v4));
    v63.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v45, v46), vsubq_s32(v45, v46)), v46), vmull_u16(*v52.i8, v4));
    v63.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v42, v46), vsubq_s32(v42, v46)), v46), vmull_high_u16(v51, v48));
    *(v35 + v41) = vqtbl4q_s8(v63, v47);
    v41 += 16;
    v45 = vaddq_s32(v45, v49);
    v44 = vaddq_s32(v44, v49);
    v43 = vaddq_s32(v43, v49);
    v42 = vaddq_s32(v42, v49);
  }

  while (v41 != 576);
  v53 = 0;
  v54 = xmmword_100F52AE0;
  v55 = xmmword_100F52AF0;
  v56 = v35 + 576;
  v57 = vdupq_n_s32(v36);
  v58 = *&STACK[0x5F0];
  v59.i64[0] = 0x800000008;
  v59.i64[1] = 0x800000008;
  do
  {
    v60 = vmovl_u8(*(v56 + v53));
    v62.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v54, v57), vsubq_s32(v54, v57)), v57), vmull_high_u16(v60, v48));
    v62.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v55, v57), vsubq_s32(v55, v57)), v57), vmull_u16(*v60.i8, v4));
    *(v56 + v53) = vqtbl2q_s8(v62, v58).u64[0];
    v55 = vaddq_s32(v55, v59);
    v54 = vaddq_s32(v54, v59);
    v53 += 8;
  }

  while (v53 != 8);
  *STACK[0x6E8] = STACK[0x26E8];
  return (*(v2 + 8 * (v1 - 31614)))(v54, v55);
}

uint64_t sub_10086D57C(void *a1)
{
  v4 = v2 < 0xD005EFD5;
  v5 = (((*a1 ^ 0x9B290FAE9A484761) + 0x64D6F05165B7B89FLL) ^ ((*a1 ^ 0x6A32DE2423395023) - 0x6A32DE2423395023) ^ ((v1 ^ 0x76517796963524ELL) + (*a1 ^ 0xF89AE886969C8504))) + 0x981390CFFF3821BLL;
  v6 = v4 ^ (v5 < 0xD005EFD5);
  v7 = v5 < v2;
  if (!v6)
  {
    v4 = v7;
  }

  return (*(v3 + 8 * ((42609 * v4) ^ v1)))();
}

uint64_t sub_10086D7DC@<X0>(uint64_t a1@<X8>)
{
  *(v5 - 256) = (v1 - 1650505768) ^ (155453101 * ((2 * (v3 & 0x23688538) - v3 - 594052412) ^ 0x3AB1610B));
  *(v5 - 248) = a1;
  v6 = (*(v4 + 8 * (v1 ^ 0x62601A8E)))(v5 - 256);
  *(v2 + 368) = 0;
  return (*(v4 + 8 * (v1 - 1650466782)))(v6);
}

uint64_t sub_10086D864()
{
  v3 = *(v2 + 64);
  *(v2 + 776) = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((v0 - 32639222) & 0x1F27E7E ^ 0x6D4A) + v0)))(v3);
}

uint64_t sub_10086D9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, unsigned __int8 a15, char a16, unsigned __int8 a17, unsigned __int8 a18, unsigned __int8 a19, unsigned __int8 a20, unsigned __int8 a21, unsigned __int8 a22, unsigned __int8 a23, unsigned __int8 a24, unsigned __int8 a25, unsigned __int8 a26, unsigned __int8 a27, unsigned __int8 a28, unsigned __int8 a29)
{
  v33 = v29 + 32;
  v34 = -1802333311 * (((4863 * ((v29 + 32) ^ 0x5F1E)) ^ 0xA104) & v31);
  v35 = *(*(v32 + 8 * (v29 - 23144)) + (BYTE2(v34) ^ 0xB1) - 757593651);
  v36 = (v35 ^ (16 * (v35 ^ 0x31) * (v35 ^ 0x31))) << 16;
  v382 = v31;
  v383 = v30;
  v37 = *(*(v32 + 8 * (v33 ^ 0x4D22)) + (v34 ^ 0x67) - 356500319);
  v38 = v32;
  v39 = ((2 * v37) & 0x76 ^ 0x60) + (v37 ^ 0x8B);
  v40 = *(*(v32 + 8 * (v33 ^ 0x5E54)) + (BYTE1(v34) ^ 0xCFLL) - 1002300311);
  v41 = ((((120 * (v40 ^ 0xD)) ^ v40) << 8) ^ 0x303EA839) & (v39 ^ 0xFABEFF3F) | v39 & 0xC6;
  v42 = *(*(v38 + 8 * (v33 - 21363)) + (HIBYTE(v34) ^ 0x11) - 1498444406);
  v386 = v36 & 0xC50000 ^ 0xBF604FC5 ^ (v41 & 0x1018DCBC ^ 0xF4443CFB ^ (((v42 ^ (32 * (v42 ^ 0xFFFFFFEC)) ^ (4 * (v42 ^ 0xFFFFFFEC)) ^ 0x7A) << 24) ^ 0xD1662343) & (v41 ^ 0xCF585FFA)) & (v36 ^ 0xFF4CFFFF);
  v43 = *(v38 + 8 * (v33 - 19679)) - 1570645826;
  v44 = *(v38 + 8 * (v33 ^ 0x5DA8)) - 1915324179;
  v45 = *(v38 + 8 * (v33 ^ 0x5D6B));
  v46 = *(v44 + (a24 ^ 0xD6)) ^ ((a24 ^ 0x20) + 16);
  v47 = *(v44 + (a20 ^ 0x19)) ^ ((a20 ^ 0xEF) + 16) ^ 0xAA;
  v48 = *(v38 + 8 * (v33 - 24180)) - 1729628543;
  v49 = *(v48 + (a29 ^ 0x91));
  v50 = ((v47 << 8) - ((v47 << 9) & 0xBC00) - 71803207) ^ 0xFBB85EB9;
  HIDWORD(v51) = ((v49 >> 6) & 0xFFFFFC03 | (4 * v49)) ^ 2;
  LODWORD(v51) = ~(4 * v49) << 24;
  v52 = *(v45 - 1285039470 + (a27 ^ 0xC1));
  v53 = (((v52 ^ 0xFFFFFFBC) + 68) ^ ((v52 ^ 0x41) - 65) ^ ((v52 ^ 0xFFFFFFD7) + 41)) - ((2 * v52) & 0xFFFFFFA0);
  v54 = ((a28 ^ 0xA6) + 16) ^ 0xC8 ^ *(v44 + (a28 ^ 0x50));
  v55 = *(v48 + (a21 ^ 0x87));
  v56 = (((((*(v45 - 1285039470 + (a19 ^ 0xC8)) >> 2) & 0x3E ^ *(v45 - 1285039470 + (a19 ^ 0xC8))) << 16) ^ 0xE9F1F355) & (v55 ^ 0xFDFFF70D) | v55 & 0xAAAAAAAA) ^ (v50 + (*(v43 + (a18 ^ 0x3ALL)) << 24));
  v57 = *(v45 - 1285039470 + (a15 ^ 0x45));
  v58 = ((((((a16 & 0x1E ^ 0xCF) & ~(a16 & 0xE1) | a16 & 0x20) ^ 0x8A) + (~(2 * a16) & 0x20)) ^ *(v44 + (((a16 & 0x1E ^ 0xDF42A1CF) & (a16 & 0xE1 ^ 0xDFDEBDFF) | a16 & 0x20) ^ 0xDF42A16CLL))) << 8) ^ 0xA7E12400;
  v59 = *(v45 - 1285039470 + (a23 ^ 0x80));
  v60 = v59 >> 2;
  v61 = (((((v59 >> 2) & 0x3E ^ v59) << 16) ^ 0xBC85E2EE) & ((v46 << 8) ^ 0xFFFFB8FF) | (v46 << 8) & 0x1D00) ^ 0x2C80111;
  v62 = v38;
  v63 = *(v38 + 8 * (v33 ^ 0x58EB)) - 1325003758;
  v385 = v33;
  v64 = *(v62 + 8 * (v33 - 24057)) - 2117470510;
  v65 = *(v62 + 8 * (v33 ^ 0x55F0)) - 169205019;
  v66 = *(v62 + 8 * (v33 - 22050)) - 484513439;
  v67 = *(v66 + 4 * ((v51 >> 26) ^ 0x13u)) + 1382439214;
  LODWORD(v62) = ((v67 >> 2) & 0x2AA264B2) + v67 - 2 * ((v67 >> 2) & 0x2AA264B2 & v67);
  HIDWORD(v51) = *(v63 + 4 * (*(v43 + (a18 ^ 0x3ALL)) ^ 0x95));
  LODWORD(v51) = HIDWORD(v51);
  v381 = BYTE2(v61);
  v68 = *(v66 + 4 * (*(v48 + (a17 ^ 0x71)) ^ 0xC1)) + 1382439214;
  v69 = (v51 >> 20) ^ *(v64 + 4 * (BYTE2(v61) ^ 0x1Fu)) ^ ((v51 >> 20) >> 4) ^ ((v51 >> 20) >> 6) ^ (((2 * v54) ^ 0x1C0) + 352715696 + *(v65 + 4 * (v54 ^ 0x6Eu))) ^ v68 ^ (v68 >> 2) & 0x2AA264B2;
  HIDWORD(v51) = *(v63 + 4 * (*(v43 + (a22 ^ 0xD8)) ^ 0xC7));
  LODWORD(v51) = HIDWORD(v51);
  v70 = *(v66 + 4 * (v56 ^ 0xFBu)) + 1382439214;
  v71 = (v51 >> 20) ^ *(v64 + 4 * ((v53 - 6) ^ 0x12 ^ ((v53 - 6) >> 2) & 0x3E)) ^ ((v51 >> 20) >> 4) ^ ((v51 >> 20) >> 6) ^ (((v58 >> 7) & 0x1FE ^ 0xC8) + 352715696 + *(v65 + 4 * (BYTE1(v58) ^ 0xEAu))) ^ v70 ^ (v70 >> 2) & 0x2AA264B2;
  LOBYTE(v53) = v57 ^ (v57 >> 2) & 0x3E;
  HIDWORD(v51) = *(v63 + 4 * (*(v43 + (a14 ^ 0xEALL)) ^ 0xFLL));
  LODWORD(v51) = HIDWORD(v51);
  v72 = (v51 >> 20) ^ ((v51 >> 20) >> 4) ^ *(v64 + 4 * (BYTE2(v56) ^ 0xC3u)) ^ ((v51 >> 20) >> 6) ^ (*(v65 + 4 * (BYTE1(v61) ^ 0xFAu)) + ((v61 >> 7) & 0x1FE ^ 0xE8) + 352715696) ^ v62 ^ 0x136F118;
  HIDWORD(v51) = *(v63 + 4 * (*(v43 + (((a26 ^ 0x4C) - (a26 ^ 0x99)) ^ 0xFFFFFFFE) + (a26 ^ 0x4C)) ^ 0xEDLL));
  LODWORD(v51) = HIDWORD(v51);
  v73 = *(v66 + 4 * (*(v48 + (a25 ^ 0x15)) ^ 0x94)) + 1382439214;
  LODWORD(v62) = (v51 >> 20) ^ *(v64 + 4 * (v53 ^ 0xCCu)) ^ ((v51 >> 20) >> 4) ^ ((v51 >> 20) >> 6) ^ (((v50 >> 7) & 0x1FE ^ 0xE2) + 352715696 + *(v65 + 4 * ~(v50 >> 8))) ^ v73;
  v74 = (v73 >> 2) & 0x2AA264B2;
  HIDWORD(v51) = *(v63 + 4 * HIBYTE(v72));
  LODWORD(v51) = HIDWORD(v51);
  v75 = v62 ^ v74;
  v76 = *(v66 + 4 * ((v62 ^ v74) ^ 0x46u)) + 1382439214;
  v77 = (v51 >> 20) ^ *(v64 + 4 * (BYTE2(v69) ^ 0xC3u)) ^ ((v51 >> 20) >> 4) ^ ((v51 >> 20) >> 6) ^ v76 & 0xFFFBFFFF ^ (*(v65 + 4 * (BYTE1(v71) ^ 0xBu)) + ((v71 >> 7) & 0x1FE ^ 0x10A) + 352715696) ^ ((v76 >> 2) & 0x2AA264B2 | v76 & 0x40000);
  v78 = *(v65 + 4 * (((v62 ^ v74) >> 8) ^ 0xCFu)) + (((v62 ^ v74) >> 7) & 0x1FE ^ 0x82) + 352715696;
  LODWORD(v62) = *(v63 + 4 * (HIBYTE(v71) ^ 0xD5));
  HIDWORD(v51) = *(v63 + 4 * (HIBYTE(v69) ^ 0xF8));
  LODWORD(v51) = HIDWORD(v51);
  LODWORD(v62) = ((((v62 >> 20) & 0xE47 ^ 0x977E1374) & ((v62 << 12) & 0xB5853000 ^ 0x3FFB6F7F) | (v62 << 12) & 0x20812000) ^ 0x7D854D8A) & ((((v62 << 12) & 0x4A7AC000 ^ 0x9A2EABEE) & ((v62 >> 20) & 0x1B8 ^ 0xDBFEEA7E) | (v62 >> 20) & 0x10) ^ 0x6F891501) ^ ((v62 << 12) & 0x4A7AC000 ^ 0x9A2EABEE) & ((v62 >> 20) & 0x1B8 ^ 0xDBFEEA7E) & 0x48100;
  v79 = *(v66 + 4 * v72) + 1382439214;
  v80 = (v51 >> 20) ^ ((v51 >> 20) >> 6) ^ ((v51 >> 20) >> 4) ^ *(v64 + 4 * (BYTE2(v71) ^ 0x56u)) ^ v79 ^ (v79 >> 2) & 0x2AA264B2 ^ v78;
  HIDWORD(v51) = (v75 >> 19) & 0x1F ^ 0x8D71B1E;
  LODWORD(v51) = (v75 << 13) ^ 0x40000000;
  v81 = *(v66 + 4 * (v69 ^ 0x8Fu)) + 1382439214;
  v82 = (((v72 >> 7) & 0x1FE) + 352715696 + *(v65 + 4 * (BYTE1(v72) ^ 0x8Eu))) ^ *(v64 + 4 * ((v51 >> 29) ^ 0x46B8D8CD)) ^ v81 ^ (v81 >> 2) & 0x2AA264B2 ^ v62 ^ (v62 >> 4) ^ (v62 >> 6);
  LODWORD(v62) = ((v69 >> 7) & 0x1FE ^ 0x154) + 352715696 + *(v65 + 4 * (BYTE1(v69) ^ 0x24u));
  v83 = v77 ^ 0xA41009F6;
  HIDWORD(v51) = *(v63 + 4 * (HIBYTE(v75) ^ 8));
  LODWORD(v51) = HIDWORD(v51);
  v84 = ((((v80 ^ 0x66B2D78C) >> (BYTE1(v83) & 8)) - ((2 * ((v80 ^ 0x66B2D78C) >> (BYTE1(v83) & 8))) & 0x3416424) + 27308562) ^ 0x1A0B212) >> (BYTE1(v83) & 8 ^ 8);
  v85 = *(v66 + 4 * (v71 ^ 0xFAu)) + 1382439214;
  LODWORD(v62) = (v51 >> 20) ^ *(v64 + 4 * BYTE2(v72)) ^ ((v51 >> 20) >> 4) ^ ((v51 >> 20) >> 6) ^ v62 ^ v85 ^ (v85 >> 2) & 0x2AA264B2;
  v86 = ((138658693 - (v62 ^ 0xBBDB1330)) ^ -(v62 ^ 0xB398D0B5) ^ ((v62 ^ 0xB398D0B5) - ((2 * (v62 ^ 0xB398D0B5)) & 0x963AE234) - 887262950) ^ 0xCB1D711A) + 138658693;
  HIDWORD(v51) = *(v63 + 4 * (HIBYTE(v77) ^ 0x97));
  LODWORD(v51) = HIDWORD(v51);
  v87 = *(v66 + 4 * ((((-123 - (v62 ^ 0x30)) ^ -(v62 ^ 0xB5) ^ ((v62 ^ 0xB5) - ((2 * (v62 ^ 0xB5)) & 0x34) + 26) ^ 0x1A) - 123) ^ 0x2Cu)) + 1382439214;
  v88 = (v51 >> 20) ^ *(v64 + 4 * (BYTE2(v80) ^ 0x22u)) ^ ((v51 >> 20) >> 4) ^ ((v51 >> 20) >> 6) ^ v87 ^ (*(v65 + 4 * (BYTE1(v82) ^ 0x90u)) + ((v82 >> 7) & 0x1FE ^ 0x3C) + 352715696) ^ (v87 >> 2) & 0x2AA264B2;
  HIDWORD(v51) = *(v63 + 4 * (HIBYTE(v80) ^ 0x55));
  LODWORD(v51) = HIDWORD(v51);
  v89 = (v51 >> 20) ^ *(v64 + 4 * (BYTE2(v82) ^ 0x3Eu)) ^ ((v51 >> 20) >> 4) ^ ((v51 >> 20) >> 6);
  if ((v77 & 8) != 0)
  {
    v90 = -8;
  }

  else
  {
    v90 = 8;
  }

  v91 = *(v66 + 4 * ((v90 + v83) ^ 0x24u)) + 1382439214;
  v92 = v89 ^ v91 ^ (v91 >> 2) & 0x2AA264B2 ^ (*(v65 + 4 * (BYTE1(v86) ^ 0x8Eu)) + ((v86 >> 7) & 0x1FE) + 352715696);
  HIDWORD(v93) = *(v63 + 4 * (HIBYTE(v82) ^ 0xDD));
  LODWORD(v93) = HIDWORD(v93);
  v94 = *(v66 + 4 * (v80 ^ 0xA0u)) + 1382439214;
  v95 = (v93 >> 20) ^ *(v64 + 4 * (BYTE2(v86) ^ 0x90u)) ^ ((v93 >> 20) >> 4) ^ ((v93 >> 20) >> 6) ^ v94 ^ (((v83 >> 7) & 0x1FE) + 352715696 + *(v65 + 4 * (BYTE1(v83) ^ 0x8Eu))) ^ (v94 >> 2) & 0x2AA264B2;
  v96 = *(v63 + 4 * (HIBYTE(v86) ^ 0x33));
  HIDWORD(v93) = v96 ^ 0x8A5DD;
  LODWORD(v93) = v96 ^ 0xD9500000;
  v97 = v93 >> 20;
  v98 = *(v66 + 4 * (v82 ^ 0x1Eu)) + 1382439214;
  v99 = v97 ^ *(v64 + 4 * (BYTE2(v77) ^ 0x80u)) ^ v98 ^ (2 * v84 + 352715696 + *(v65 + 4 * (v84 ^ 0x8Eu))) ^ (v98 >> 2) & 0x2AA264B2 ^ (((v97 >> 2) + v97 - 2 * ((v97 >> 2) & v97)) >> 4);
  HIDWORD(v93) = *(v63 + 4 * (HIBYTE(v88) ^ 0xA6));
  LODWORD(v93) = HIDWORD(v93);
  v100 = *(v66 + 4 * ((v97 ^ *(v64 + 4 * (BYTE2(v77) ^ 0x80u)) ^ v98 ^ (2 * v84 - 80 + *(v65 + 4 * (v84 ^ 0x8Eu))) ^ (v98 >> 2) & 0xB2 ^ (((v97 >> 2) + v97 - 2 * ((v97 >> 2) & v97)) >> 4)) ^ 0xF9u)) + 1382439214;
  v101 = (v93 >> 20) ^ *(v64 + 4 * (BYTE2(v92) ^ 0x77u)) ^ ((v93 >> 20) >> 4) ^ ((v93 >> 20) >> 6) ^ v100 ^ (*(v65 + 4 * (BYTE1(v95) ^ 0xBu)) + ((v95 >> 7) & 0x1FE ^ 0x10A) + 352715696) ^ (v100 >> 2) & 0x2AA264B2;
  v102 = *(v66 + 4 * (v88 ^ 0x25u)) + 1382439214;
  v103 = (v102 >> 2) & 0x8202022;
  HIDWORD(v93) = *(v63 + 4 * (HIBYTE(v92) ^ 0xC9));
  LODWORD(v93) = HIDWORD(v93);
  v104 = (v93 >> 20) ^ *(v64 + 4 * (BYTE2(v95) ^ 3u)) ^ ((v93 >> 20) >> 4) ^ ((v93 >> 20) >> 6) ^ (*(v65 + 4 * (BYTE1(v99) ^ 0x1Bu)) + ((v99 >> 7) & 0x1FE ^ 0x12A) + 352715696) ^ (v103 + (v102 & 0x9869B82F) - 2 * (v103 & v102)) & 0x3F0F5E0 ^ (v102 & 0x679647D0 ^ 0xFC0F0A1F ^ (v102 >> 2) & 0x22824490) & ~(v103 + (v102 & 0x9869B82F) - 2 * (v103 & v102));
  v380 = v88;
  HIDWORD(v93) = *(v63 + 4 * (HIBYTE(v95) ^ 0x49));
  LODWORD(v93) = HIDWORD(v93);
  v105 = HIBYTE(v99) ^ 0x7B;
  v106 = *(v66 + 4 * (v92 ^ 0x70u)) + 1382439214;
  v107 = (v93 >> 20) ^ *(v64 + 4 * (BYTE2(v99) ^ 0xF8u)) ^ ((v93 >> 20) >> 4) ^ ((v93 >> 20) >> 6) ^ v106 ^ (((v88 >> 7) & 0x1FE ^ 0xE8) + 352715696 + *(v65 + 4 * (BYTE1(v88) ^ 0xFAu))) ^ (v106 >> 2) & 0x2AA264B2;
  v108 = (2 * BYTE1(v92)) ^ 0x1AE;
  v109 = *(v65 + 4 * (BYTE1(v92) ^ 0x59u));
  v110 = (v109 ^ 0x3EE1531A) & (2 * (v109 & 0xB8E25B9C)) ^ v109 & 0xB8E25B9C;
  v111 = ((2 * (v109 ^ 0x4FE1742A)) ^ 0xEE065F6C) & (v109 ^ 0x4FE1742A) ^ (2 * (v109 ^ 0x4FE1742A)) & 0xF7032FB6;
  v112 = (v111 ^ 0xE6020E20) & (4 * v110) ^ v110;
  v113 = ((4 * (v111 ^ 0x11012092)) ^ 0xDC0CBED8) & (v111 ^ 0x11012092) ^ (4 * (v111 ^ 0x11012092)) & 0xF7032FB0;
  v114 = (v113 ^ 0xD4002E80) & (16 * v112) ^ v112;
  v115 = ((16 * (v113 ^ 0x23030126)) ^ 0x7032FB60) & (v113 ^ 0x23030126) ^ (16 * (v113 ^ 0x23030126)) & 0xF7032FA0;
  v116 = v114 ^ 0xF7032FB6 ^ (v115 ^ 0x70022B00) & (v114 << 8);
  v117 = ((2 * ((v109 ^ (2 * ((v116 << 16) & 0x26010000 ^ v116 ^ ((v116 << 16) ^ 0x2E100000) & (((v115 ^ 0x87010496) << 8) & 0x77030000 ^ 0x74000000 ^ (((v115 ^ 0x87010496) << 8) ^ 0x32F0000) & (v115 ^ 0x87010496)))) ^ 0x402228B0) & (v108 + 1545840660) ^ ((v108 + 1545840660) & 0x2840 | 0x44400))) ^ 0xB00C8800) + ((v108 - ((2 * (v108 + 1545840660)) & 0xB00002DC) - 1207960190) ^ v109 ^ ((v109 ^ 0x3B0287E6) - 2082415490) ^ ((v109 ^ 0xF9F78E9F) + 1091949829) ^ ((v109 ^ 0x780712E6) - 1058715266) ^ ((v109 ^ 0xFDEFBFFB) + 1158538337) ^ 0x1CC1F10A);
  HIDWORD(v93) = *(v63 + 4 * v105);
  LODWORD(v93) = HIDWORD(v93);
  v118 = *(v66 + 4 * (v95 ^ 0x2Au)) + 1382439214;
  v119 = (v93 >> 20) ^ ((v93 >> 20) >> 6) ^ ((v93 >> 20) >> 4) ^ *(v64 + 4 * (BYTE2(v88) ^ 0x34u)) ^ v118 ^ (v118 >> 2) & 0x2AA264B2 ^ 0xA07980C7 ^ v117;
  v120 = (v119 & 0x5259953F ^ 0xFAAFD56A) & (v119 & 0xADA66AC0 ^ 0xFA5F95BF);
  HIDWORD(v93) = *(v63 + 4 * ((v101 ^ 0x7850E37Cu) >> 24));
  LODWORD(v93) = HIDWORD(v93);
  v121 = v120 | v119 & 0x5002A80;
  v122 = *(v66 + 4 * (v121 ^ 0xD1u)) + 1382439214;
  v123 = (v93 >> 20) ^ *(v64 + 4 * (((v104 ^ 0x44494AE6) >> (v60 & 0x10 ^ 0x10) >> (v60 & 0x10)) ^ 0x90u)) ^ ((v93 >> 20) >> 4) ^ ((v93 >> 20) >> 6) ^ (*(v65 + 4 * (BYTE1(v107) ^ 0x3Fu)) + ((v107 >> 7) & 0x1FE ^ 0x162) + 352715696) ^ v122 ^ (v122 >> 2) & 0x2AA264B2;
  HIDWORD(v93) = *(v63 + 4 * (HIBYTE(v104) ^ 0x77));
  LODWORD(v93) = HIDWORD(v93);
  v124 = *(v66 + 4 * (v101 ^ 0x50u)) + 1382439214;
  v125 = (v93 >> 20) ^ *(v64 + 4 * (BYTE2(v107) ^ 0xB4u)) ^ ((v93 >> 20) >> 4) ^ ((v93 >> 20) >> 6) ^ v124 ^ (v124 >> 2) & 0x2AA264B2 ^ (*(v65 + 4 * (((v121 ^ 0x32D1) >> 8) ^ 0x8Eu)) + (((v121 ^ 0x501A32D1) >> 7) & 0x1FE) + 352715696);
  v126 = HIBYTE(v121) ^ 0x63;
  HIDWORD(v93) = *(v63 + 4 * (HIBYTE(v107) ^ 0xF8));
  LODWORD(v93) = HIDWORD(v93);
  v127 = *(v66 + 4 * (v104 ^ 0xCAu)) + 1382439214;
  v128 = *(v63 + 4 * v126);
  v129 = (v93 >> 20) ^ *(v64 + 4 * (BYTE2(v120) ^ 0x8Au)) ^ ((v93 >> 20) >> 4) ^ ((v93 >> 20) >> 6) ^ ((((v101 ^ 0x7850E37Cu) >> 7) & 0x1FE) + 352715696 + *(v65 + 4 * (((v101 ^ 0xE37C) >> 8) ^ 0x8Eu))) ^ v127 ^ (v127 >> 2) & 0x2AA264B2;
  HIDWORD(v93) = v128 ^ 0x8A5DD;
  LODWORD(v93) = v128 ^ 0xD9500000;
  v130 = v93 >> 20;
  v131 = v130 >> 2;
  v132 = v131 - (v131 ^ v130);
  v133 = (v93 >> 20) & 0x20000;
  if ((v132 & v133) != 0)
  {
    LODWORD(v133) = -v133;
  }

  v134 = (-(v133 + v132) ^ ((v130 & 0xFFFDFFFF) - ((v133 + v132) ^ v130 & 0xFFFDFFFF)) ^ 0x82FE521B ^ (v133 + v132 - ((2 * (v133 + v132)) & 0x5FCA436) - 2097262053)) + (v130 & 0xFFFDFFFF);
  v135 = ((v104 >> 7) & 0x1FE ^ 0x94) + 352715696 + *(v65 + 4 * (BYTE1(v104) ^ 0xC4u));
  v136 = *(v66 + 4 * (v107 ^ 0xAu)) + 1382439214;
  v137 = v130 ^ *(v64 + 4 * (BYTE2(v101) ^ 0xC0u)) ^ v136 ^ v135 ^ (v136 >> 2) & 0x2AA264B2 ^ ((v131 - v130 + v134 - 2 * (v134 & -v130)) >> 4);
  HIDWORD(v138) = *(v63 + 4 * ((((HIBYTE(v123) ^ 0xA) - (HIBYTE(v123) ^ 0x39)) ^ 0xFFFFFFFE) + (HIBYTE(v123) ^ 0xA)));
  LODWORD(v138) = HIDWORD(v138);
  v139 = *(v66 + 4 * ((v130 ^ *(v64 + 4 * (BYTE2(v101) ^ 0xC0u)) ^ v136 ^ v135 ^ (v136 >> 2) & 0xB2 ^ ((v131 - v130 + v134 - 2 * (v134 & -v130)) >> 4)) ^ 0x94u)) + 1382439214;
  v140 = (v138 >> 20) ^ *(v64 + 4 * (BYTE2(v125) ^ 0xAFu)) ^ ((v138 >> 20) >> 4) ^ ((v138 >> 20) >> 6) ^ v139 ^ (*(v65 + 4 * (BYTE1(v129) ^ 0xDDu)) + ((4 * ((v129 >> 8) ^ 0x3CB6D39B)) & 0x28 ^ 0x20) + ((2 * (BYTE1(v129) ^ 0x9B)) ^ 0x5C23A984) - 1193124964) ^ (v139 >> 2) & 0x2AA264B2;
  HIDWORD(v138) = *(v63 + 4 * (HIBYTE(v125) ^ 0x88));
  LODWORD(v138) = HIDWORD(v138);
  v141 = *(v66 + 4 * (v123 ^ 0xB8u)) + 1382439214;
  v142 = (v138 >> 20) ^ ((v138 >> 20) >> 6) ^ ((v138 >> 20) >> 4) ^ __ROR4__(__ROR4__(*(v64 + 4 * (BYTE2(v129) ^ 0x7Au)), 21) ^ 0xA7EBCA04, 11) ^ 0xF30C2DCC ^ (*(v65 + 4 * (BYTE1(v137) ^ 0xF9u)) + ((v137 >> 7) & 0x1FE ^ 0xEE) + 352715696);
  v143 = (-v142 ^ (((v141 >> 2) & 0x2AA264B2 ^ v141) - (v142 ^ (v141 >> 2) & 0x2AA264B2 ^ v141)) ^ 0xCE403233 ^ (v142 - ((2 * v142) & 0x9C806466) - 834653645)) + ((v141 >> 2) & 0x2AA264B2 ^ v141);
  HIDWORD(v138) = *(v63 + 4 * (HIBYTE(v129) ^ 0x4A));
  LODWORD(v138) = HIDWORD(v138);
  v144 = *(v66 + 4 * (v125 ^ 0x98u)) + 1382439214;
  v145 = (v138 >> 20) ^ *(v64 + 4 * (BYTE2(v137) ^ 0x36u)) ^ ((v138 >> 20) >> 4) ^ ((v138 >> 20) >> 6) ^ (((v123 >> 7) & 0x1FE ^ 0x144) + 352715696 + *(v65 + 4 * (BYTE1(v123) ^ 0x2Cu))) ^ v144 ^ (v144 >> 2) & 0x2AA264B2;
  HIDWORD(v138) = *(v63 + 4 * (HIBYTE(v137) ^ 0xC9));
  LODWORD(v138) = HIDWORD(v138);
  v146 = *(v66 + 4 * (v129 ^ 0x67u)) + 1382439214;
  v147 = (v138 >> 20) ^ *(v64 + 4 * (BYTE2(v123) ^ 0x18u)) ^ ((v138 >> 20) >> 4) ^ ((v138 >> 20) >> 6) ^ v146 ^ (v146 >> 2) & 0x2AA264B2 ^ (*(v65 + 4 * (BYTE1(v125) ^ 0x18u)) + ((v125 >> 7) & 0x1FE ^ 0x12C) + 352715696);
  v148 = v145 ^ 0xE0A2668C;
  HIDWORD(v138) = *(v63 + 4 * (HIBYTE(v140) ^ 0x22));
  LODWORD(v138) = HIDWORD(v138);
  v149 = *(v66 + 4 * (v147 ^ 0xD7u)) + 1382439214;
  v150 = (v138 >> 20) ^ *(v64 + 4 * (BYTE2(v143) ^ 0xB1u)) ^ ((v138 >> 20) >> 4) ^ ((v138 >> 20) >> 6) ^ v149 ^ (*(v65 + 4 * (((v145 ^ 0x668C) >> 8) ^ 0x8Eu)) + (((v145 ^ 0xE0A2668C) >> 7) & 0x1FE) + 352715696) ^ (v149 >> 2) & 0x2AA264B2;
  HIDWORD(v138) = *(v63 + 4 * (HIBYTE(v143) ^ 0x23));
  LODWORD(v138) = HIDWORD(v138);
  v151 = (v138 >> 20) ^ *(v64 + 4 * (BYTE2(v145) ^ 0x32u)) ^ ((v138 >> 20) >> 4) ^ ((v138 >> 20) >> 6);
  v152 = *(v66 + 4 * (v140 ^ 0x73u)) + 1382439214;
  v153 = v151 ^ v152 ^ (v152 >> 2) & 0x2AA264B2 ^ (*(v65 + 4 * (((v147 ^ 0x12D7) >> 8) ^ 0x8Eu)) + (((v147 ^ 0xA02412D7) >> 7) & 0x1FE) + 352715696);
  v154 = (((v153 ^ 0xCD985A55) & 0x15FE351C ^ 0xA3D5AB98) & ((v153 ^ 0xCD985A55) & 0xEA01CAE3 ^ 0xDDFF353C) | (v153 ^ 0xCD985A55) & 0x48004063) ^ 0xFFD5ABF8;
  HIDWORD(v138) = *(v63 + 4 * HIBYTE(v148));
  LODWORD(v138) = HIDWORD(v138);
  v155 = *(v66 + 4 * (v143 ^ 0xABu)) + 1382439214;
  v156 = (v138 >> 20) ^ *(v64 + 4 * (BYTE2(v147) ^ 0xB4u)) ^ ((v138 >> 20) >> 4) ^ ((v138 >> 20) >> 6) ^ v155 ^ ((((BYTE1(v140) ^ 0xA3) + 1545840660) ^ BYTE1(v140) ^ 0xA3) + 2 * (((BYTE1(v140) ^ 0xA3) + 1545840660) & (BYTE1(v140) ^ 0xA3)) - 1193124964 + *(v65 + 4 * (BYTE1(v140) ^ 0x2Du))) ^ (v155 >> 2) & 0x2AA264B2;
  v157 = *(v64 + 4 * (BYTE2(v140) ^ 0xE7u));
  HIDWORD(v138) = *(v63 + 4 * (HIBYTE(v147) ^ 0x93));
  LODWORD(v138) = HIDWORD(v138);
  v158 = *(v66 + 4 * v148) + 1382439214;
  v159 = (v138 >> 20) ^ ((v138 >> 20) >> 6) ^ ((v138 >> 20) >> 4) ^ v158 ^ (v158 >> 2) & 0x2AA264B2 ^ (((2 * v157) & 0x27CD410 ^ 0xFF936FFF) + 867579792 + (((v157 ^ 0x80683948) + 2140653240) ^ ((v157 ^ 0x48C865BD) - 1221092797) ^ ((v157 ^ 0x7AD79172) - 2060947826))) ^ (*(v65 + 4 * (BYTE1(v143) ^ 0x1Fu)) + ((v143 >> 7) & 0x1FE ^ 0x122) + 352715696);
  v160 = (v159 ^ 0xC0F83FF6) >> (v153 & 8) >> (v153 & 8 ^ 8);
  v161 = v156 ^ 0x5AF4FE77;
  HIDWORD(v138) = *(v63 + 4 * (HIBYTE(v150) ^ 0x19));
  LODWORD(v138) = HIDWORD(v138);
  v162 = *(v66 + 4 * (v159 ^ 0xDAu)) + 1382439214;
  v163 = (v138 >> 20) ^ *(v64 + 4 * (BYTE2(v154) ^ 0x3Fu)) ^ ((v138 >> 20) >> 4) ^ ((v138 >> 20) >> 6) ^ v162 ^ (*(v65 + 4 * (((v156 ^ 0xFE77) >> 8) ^ 0x8Eu)) + (((v156 ^ 0x5AF4FE77) >> 7) & 0x1FE) + 352715696) ^ (v162 >> 2) & 0x2AA264B2;
  v164 = *(v65 + 4 * (v160 ^ 0x8Eu)) + v160 + ((2 * v160) & 0x28) + (v160 ^ 0x5C23A814) - 1193124964;
  v165 = *(v66 + 4 * (v150 ^ 0xE5u)) + 1382439214;
  HIDWORD(v138) = *(v63 + 4 * (HIBYTE(v156) ^ 0x69));
  LODWORD(v138) = HIDWORD(v138);
  v166 = *(v66 + 4 * (v154 ^ 0xBBu)) + 1382439214;
  v167 = (v138 >> 20) ^ *(v64 + 4 * (BYTE2(v159) ^ 0x68u)) ^ ((v138 >> 20) >> 4) ^ ((v138 >> 20) >> 6) ^ (((v150 >> 7) & 0x1FE ^ 0x1B2) + 352715696 + *(v65 + 4 * (BYTE1(v150) ^ 0x57u))) ^ v166 ^ (v166 >> 2) & 0x2AA264B2;
  HIDWORD(v138) = *(v63 + 4 * (HIBYTE(v159) ^ 0xF3));
  LODWORD(v138) = HIDWORD(v138);
  v168 = *(v66 + 4 * v161) + 1382439214;
  v169 = (v138 >> 20) ^ ((v138 >> 20) >> 6) ^ ((v138 >> 20) >> 4) ^ *(v64 + 4 * (BYTE2(v150) ^ 0xEFu)) ^ v168 ^ (v168 >> 2) & 0x2AA264B2;
  HIDWORD(v138) = *(v63 + 4 * HIBYTE(v154));
  LODWORD(v138) = HIDWORD(v138);
  v170 = v169 ^ (*(v65 + 4 * (BYTE1(v154) ^ 0xB2u)) + ((v154 >> 7) & 0x1FE ^ 0x78) + 352715696);
  v171 = *(v64 + 4 * BYTE2(v161)) ^ (v138 >> 20) ^ ((v138 >> 20) >> 4) ^ ((v138 >> 20) >> 6) ^ v165 ^ ((v165 & 0xAA8992CB) >> (v165 & 2) >> (v165 & 2 ^ 2)) ^ v164 ^ 0x24BBD553;
  v172 = *(v63 + 4 * (((v163 ^ 0xE683DAF7) >> (~v170 & 0x10) >> (v170 & 8) >> (v170 & 0x18 ^ 8)) ^ 0x33u));
  v173 = __ROR4__(v171, 3) ^ 0x5A87076B;
  HIDWORD(v138) = v172 ^ 0x8A5DD;
  LODWORD(v138) = v172 ^ 0xD9500000;
  v174 = v138 >> 20;
  v175 = ((v174 >> 6) ^ (v174 >> 4)) + v174 - 2 * (((v174 >> 6) ^ (v174 >> 4)) & v174);
  v176 = v167 ^ 0xFD0C8A2;
  v177 = *(v66 + 4 * (v170 ^ 2u)) + 1382439214;
  v178 = v177 ^ (v177 >> 2) & 0x2AA264B2;
  HIDWORD(v138) = v173;
  LODWORD(v138) = v173;
  v179 = v138 >> 29;
  v180 = v178 ^ *(v64 + 4 * (BYTE2(v179) ^ 0x56u)) ^ (*(v65 + 4 * (((v167 ^ 0xC8A2) >> 8) ^ 0x8Eu)) + (((v167 ^ 0xFD0C8A2u) >> 7) & 0x1FE) + 352715696) ^ v175;
  HIDWORD(v138) = *(v63 + 4 * (HIBYTE(v179) ^ 0xAC));
  LODWORD(v138) = HIDWORD(v138);
  v181 = *(v65 + 4 * (BYTE1(v170) ^ 0xAAu));
  v182 = *(v64 + 4 * (BYTE2(v167) ^ 0x40u)) ^ (v138 >> 20) ^ ((v138 >> 20) >> 4) ^ ((v138 >> 20) >> 6) ^ 0xB398D0B5;
  v183 = *(v66 + 4 * (v163 ^ 0xDBu)) + 1382439214;
  v184 = (v183 >> 2) & 0x2AA264B2 ^ v183 ^ (((-352715696 - (v181 + 2 * (BYTE1(v170) ^ 0x24))) ^ (v181 + 2 * (BYTE1(v170) ^ 0x24) - 2 * ((v181 + 2 * (BYTE1(v170) ^ 0x24) + 352715696) & 0x5971E8E7 ^ v181 & 1) + 1853353110) ^ 0x5971E8E6 ^ (v182 - ((v181 + 2 * (BYTE1(v170) ^ 0x24) + 352715696) ^ v182))) + v182);
  HIDWORD(v138) = *(v63 + 4 * HIBYTE(v176));
  LODWORD(v138) = HIDWORD(v138);
  v185 = *(v66 + 4 * (v179 ^ 0x29u)) + 1382439214;
  v186 = *(v64 + 4 * ((-(BYTE2(v170) ^ 0x90) ^ (144 - BYTE2(v170)) ^ 0xDA183C8E ^ ((BYTE2(v170) ^ 0x90) - ((2 * (BYTE2(v170) ^ 0x90)) & 0x11C) - 635945842)) + 144)) ^ (v138 >> 20) ^ ((v138 >> 20) >> 4) ^ ((v138 >> 20) >> 6) ^ (((v163 >> 7) & 0x1FE ^ 0x1B4) + 352715696 + *(v65 + 4 * (BYTE1(v163) ^ 0x54u))) ^ v185 ^ (v185 >> 2) & 0x2AA264B2 ^ 0x7C6BF9CE;
  HIDWORD(v138) = *(v63 + 4 * (HIBYTE(v170) ^ 0xF5));
  LODWORD(v138) = HIDWORD(v138);
  v187 = *(v66 + 4 * v176) + 1382439214;
  v188 = (v138 >> 20) ^ ((v138 >> 20) >> 6) ^ ((v138 >> 20) >> 4) ^ *(v64 + 4 * (BYTE2(v163) ^ 0x13u)) ^ v187 ^ (v187 >> 2) & 0x2AA264B2 ^ (((v179 >> 7) & 0x1FE ^ 0x158) + 352715696 + *(v65 + 4 * (BYTE1(v179) ^ 0x22u)));
  v189 = *(&off_1010A0B50 + v385 - 20976) - 1356908763;
  v190 = *(&off_1010A0B50 + v385 - 24294) - 689255811;
  v191 = *&v189[4 * BYTE1(v186)] ^ 0xEC19DD46;
  v192 = (((v188 & 0x7F ^ 0x65) - (v188 & 0x7F ^ 0x7F9F5C39)) ^ 0xFFFFFFF8) + (v188 & 0x7F ^ 0x65);
  v193 = v188 & 0x80 ^ 0x539C05DB ^ (v192 - ((2 * v192) & 0x5806B3B6) + 738417115);
  v194 = *(&off_1010A0B50 + v385 - 22127) - 817872210;
  v195 = *&v189[4 * (BYTE1(v188) ^ 0xA9)] ^ 0x2BC85E1B;
  v196 = *(&off_1010A0B50 + v385 - 21362) - 1187331695;
  v197 = BYTE2(v186) ^ *&v190[4 * (BYTE2(v186) ^ 0xFA)] ^ *&v196[4 * (HIBYTE(v184) ^ 0xC9)] ^ __ROR4__(*&v194[4 * (v180 ^ 0x76)], 4) ^ (((2 * HIBYTE(v184)) ^ 0x1F4) + 1166411305) ^ v195 ^ (8 * v195) ^ 0x508F4C50;
  v198 = *&v189[4 * (BYTE1(v180) ^ 4)] ^ 0xC33CF247;
  v199 = BYTE2(v188) ^ (((HIBYTE(v186) + 1166411305) ^ HIBYTE(v186)) + 2 * ((HIBYTE(v186) + 1166411305) & HIBYTE(v186))) ^ *&v190[4 * (BYTE2(v188) ^ 0xF0)] ^ *&v196[4 * (HIBYTE(v186) ^ 0x33)] ^ __ROR4__(*&v194[4 * (v184 ^ 0x2C)], 4) ^ v198 ^ (8 * v198) ^ 0x90D7A24B;
  v200 = *&v189[4 * (BYTE1(v184) ^ 0x95)] ^ 0x44E37B40;
  v201 = ((v180 ^ 0xAF2F9276) >> 16) ^ v386 ^ (((2 * HIBYTE(v188)) ^ 0x166) + 1166411305) ^ *&v196[4 * (HIBYTE(v188) ^ 0x80)] ^ *&v190[4 * (((v180 ^ 0xAF2F9276) >> 16) ^ 0xFA)] ^ __ROR4__(*&v194[4 * v186], 4) ^ v200 ^ (8 * v200);
  v202 = (2 * ((v180 ^ 0xAF2F9276) >> 24) + 1166411305) ^ v191 ^ *&v196[4 * (((v180 ^ 0xAF2F9276) >> 24) ^ 0x33)] ^ *&v190[4 * (BYTE2(v184) ^ 0x28)] ^ (8 * v191) ^ __ROR4__(*&v194[4 * v193], 4) ^ BYTE2(v184) ^ 0xED7F7D2C ^ v197;
  v203 = v199 ^ v201 ^ v197;
  v204 = v202 ^ v386 ^ v199;
  LODWORD(v138) = __ROR4__(v202 ^ v201 ^ 0x3F3FD818, 22);
  v205 = v201 ^ v203 ^ v204;
  LODWORD(v138) = v138 ^ 0xBAB19AA7;
  HIDWORD(v138) = v138;
  v206 = v138 >> 10;
  v207 = v205 ^ 0x893D6143;
  HIDWORD(v138) = *(v63 + 4 * (HIBYTE(v204) ^ 0x8E));
  LODWORD(v138) = HIDWORD(v138);
  v208 = *(v66 + 4 * (v205 ^ 0x6Fu)) + 1382439214;
  v209 = (v138 >> 20) ^ *(v64 + 4 * (BYTE2(v203) ^ 0xAAu)) ^ ((v138 >> 20) >> 4) ^ ((v138 >> 20) >> 6) ^ v208 ^ (v208 >> 2) & 0x2AA264B2 ^ (*(v65 + 4 * (BYTE1(v206) ^ 0x6Fu)) + ((v206 >> 7) & 0x1FE ^ 0x1C2) + 352715696);
  HIDWORD(v138) = *(v63 + 4 * (HIBYTE(v203) ^ 0xC6));
  LODWORD(v138) = HIDWORD(v138);
  v210 = *(v66 + 4 * (v204 ^ 0xC3u)) + 1382439214;
  v211 = (v138 >> 20) ^ ((v138 >> 20) >> 6) ^ ((v138 >> 20) >> 4) ^ *(v64 + 4 * (BYTE2(v206) ^ 0xFEu)) ^ v210 ^ (v210 >> 2) & 0x2AA264B2 ^ (*(v65 + 4 * (BYTE1(v207) ^ 0x8Eu)) + ((v207 >> 7) & 0x1FE) + 352715696);
  HIDWORD(v138) = *(v63 + 4 * (HIBYTE(v206) ^ 0x40));
  LODWORD(v138) = HIDWORD(v138);
  v212 = *(v66 + 4 * (v203 ^ 0x1Eu)) + 1382439214;
  v213 = (v138 >> 20) ^ *(v64 + 4 * BYTE2(v207)) ^ ((v138 >> 20) >> 4) ^ ((v138 >> 20) >> 6) ^ v212 ^ (v212 >> 2) & 0x2AA264B2 ^ (((v204 >> 7) & 0x1FE ^ 0x19C) + 352715696 + *(v65 + 4 * (BYTE1(v204) ^ 0x40u)));
  HIDWORD(v138) = *(v63 + 4 * HIBYTE(v207));
  LODWORD(v138) = HIDWORD(v138);
  v214 = *(v66 + 4 * (v206 ^ 0x73u)) + 1382439214;
  v215 = (v138 >> 20) ^ ((v138 >> 20) >> 6) ^ ((v138 >> 20) >> 4) ^ __ROR4__(__ROR4__(*(v64 + 4 * (BYTE2(v204) ^ 0x82u)), 16) ^ 0x1477197B, 16) ^ (((v203 >> 7) & 0x1FE ^ 0x19A) + 352715696 + *(v65 + 4 * (BYTE1(v203) ^ 0x43u))) ^ v214 ^ (v214 >> 2) & 0x2AA264B2;
  HIDWORD(v138) = *(v63 + 4 * (HIBYTE(v211) ^ 0x53));
  LODWORD(v138) = HIDWORD(v138);
  v216 = (v138 >> 20) ^ ((v138 >> 20) >> 6) ^ ((v138 >> 20) >> 4);
  v217 = *(v65 + 4 * (((v215 ^ 0x1CC7) >> 8) ^ 0x8Eu)) + (((v215 ^ 0xFCF21CC7) >> 7) & 0x1FE) + 352715696;
  HIDWORD(v138) = *(v63 + 4 * (HIBYTE(v209) ^ 0xC5));
  LODWORD(v138) = HIDWORD(v138);
  v218 = *(v66 + 4 * (v215 ^ 0xEBu)) + 1382439214;
  v219 = (v138 >> 20) ^ *(v64 + 4 * ((BYTE2(v211) ^ 0x6D) - ((v211 >> 15) & 0x120) + 144)) ^ ((v138 >> 20) >> 4) ^ ((v138 >> 20) >> 6) ^ v218 ^ (v218 >> 2) & 0x2AA264B2 ^ (*(v65 + 4 * (((v213 ^ 0xB13F) >> 8) ^ 0x8Eu)) + (((v213 ^ 0x20ADB13F) >> 7) & 0x1FE) + 352715696);
  v220 = v216 ^ *(v64 + 4 * (BYTE2(v213) ^ 0x3Du)) ^ 0xB398D0B5;
  v221 = *(v66 + 4 * (v209 ^ 0x3Cu)) + 1382439214;
  v222 = (v221 >> 2) & 0x2AA264B2 ^ v221 ^ ((-v220 ^ (v217 - (v220 ^ v217)) ^ 0x758E91BE ^ (v220 - ((2 * v220) & 0xEB1D237C) + 1972277694)) + v217);
  HIDWORD(v138) = *(v63 + 4 * (HIBYTE(v213) ^ 0x13));
  LODWORD(v138) = HIDWORD(v138);
  v223 = *(v66 + 4 * ((-(v211 ^ 0xD3) ^ (44 - (v211 ^ 0xFF)) ^ 0xC1E397AC ^ ((v211 ^ 0xD3) - ((2 * (v211 ^ 0xD3)) & 0x158) - 1042049108)) + 44)) + 1382439214;
  v224 = (v138 >> 20) ^ *(v64 + 4 * (BYTE2(v215) ^ 0x62u)) ^ ((v138 >> 20) >> 4) ^ ((v138 >> 20) >> 6) ^ v223 ^ (v223 >> 2) & 0x2AA264B2 ^ (((v209 >> 7) & 0x1FE ^ 0x1F6) + 352715696 + *(v65 + 4 * (BYTE1(v209) ^ 0x75u)));
  v225 = *(v63 + 4 * (HIBYTE(v215) ^ 0xCF));
  HIDWORD(v138) = v225 ^ 0x8A5DD;
  LODWORD(v138) = v225 ^ 0xD9500000;
  v226 = v138 >> 20;
  v227 = (v226 >> 2) & 0x400;
  if ((v227 & v226) != 0)
  {
    v227 = -v227;
  }

  v228 = *(v66 + 4 * (v213 ^ 0x3Fu)) + 1382439214;
  v229 = *(v64 + 4 * (BYTE2(v209) ^ 0xD4u)) ^ v226 ^ v228 ^ (((v211 >> 7) & 0x1FE ^ 0x24) + 352715696 + *(v65 + 4 * (BYTE1(v211) ^ 0x9Cu))) ^ (((v227 + v226) ^ (v226 >> 2) & 0xFFFFFBFF) >> 4) ^ 0x1CA80D3C;
  v230 = (-v229 ^ (((v228 >> 2) & 0x2AA264B2) - (v229 ^ (v228 >> 2) & 0x2AA264B2)) ^ 0x6EB712EC ^ (v229 - ((2 * v229) & 0xDD6E25D8) + 1857491692)) + ((v228 >> 2) & 0x2AA264B2);
  v231 = *(v66 + 4 * (((-v229 ^ (((v228 >> 2) & 0xB2) - (v229 ^ (v228 >> 2) & 0xB2)) ^ 0xEC ^ (v229 - ((2 * v229) & 0xD8) - 20)) + ((v228 >> 2) & 0xB2)) ^ 0x2Cu)) + 1382439214;
  v232 = v231 & 0x469DF982;
  v233 = v231 & 0xB962067D;
  v231 >>= 2;
  HIDWORD(v234) = *(v63 + 4 * (HIBYTE(v219) ^ 0x92));
  LODWORD(v234) = HIDWORD(v234);
  v235 = (v234 >> 20) ^ *(v64 + 4 * (BYTE2(v222) ^ 0x6Bu)) ^ ((v234 >> 20) >> 4) ^ ((v234 >> 20) >> 6) ^ (*(v65 + 4 * (BYTE1(v224) ^ 0x65u)) + ((v224 >> 7) & 0x1FE ^ 0x1D6) + 352715696) ^ ((v233 ^ 0x5E895921 ^ v231 & 0x28220430) & ~(v231 & 0x2806082 ^ v232) | (v231 & 0x2806082 ^ v232) & 0x14A082);
  HIDWORD(v234) = *(v63 + 4 * (HIBYTE(v222) ^ 0x1D));
  LODWORD(v234) = HIDWORD(v234);
  v236 = *(v66 + 4 * (v219 ^ 0x99u)) + 1382439214;
  v237 = (v234 >> 20) ^ ((v234 >> 20) >> 6) ^ ((v234 >> 20) >> 4) ^ v236 ^ *(v64 + 4 * (BYTE2(v224) ^ 5u)) ^ (v236 >> 2) & 0x2AA264B2 ^ (*(v65 + 4 * (BYTE1(v230) ^ 0x8Eu)) + ((v230 >> 7) & 0x1FE) + 352715696);
  HIDWORD(v234) = *(v63 + 4 * (HIBYTE(v224) ^ 0x42));
  LODWORD(v234) = HIDWORD(v234);
  v238 = *(v64 + 4 * (BYTE2(v230) ^ 0x90u)) ^ (v234 >> 20) ^ ((v234 >> 20) >> 4) ^ ((v234 >> 20) >> 6) ^ (((v219 >> 7) & 0x1FE ^ 0x1F4) + 352715696 + *(v65 + 4 * (BYTE1(v219) ^ 0x74u))) ^ 0xB398D0B5;
  v239 = *(v66 + 4 * (v222 ^ 0xE5u)) + 1382439214;
  v240 = ((-v238 ^ (v239 - (v238 ^ v239)) ^ 0xF2DF716C ^ (v238 - ((2 * v238) & 0xE5BEE2D8) - 220237460)) + v239) ^ (v239 >> 2) & 0x2AA264B2;
  HIDWORD(v234) = *(v63 + 4 * (HIBYTE(v230) ^ 0x33));
  LODWORD(v234) = HIDWORD(v234);
  v241 = *(v66 + 4 * (v224 ^ 0xFCu)) + 1382439214;
  v242 = (v234 >> 20) ^ *(v64 + 4 * (BYTE2(v219) ^ 0x99u)) ^ ((v234 >> 20) >> 4) ^ ((v234 >> 20) >> 6) ^ (((v222 >> 7) & 0x1FE ^ 0x16E) + 352715696 + *(v65 + 4 * (BYTE1(v222) ^ 0x39u))) ^ v241 ^ (v241 >> 2) & 0x2AA264B2;
  HIDWORD(v234) = *(v63 + 4 * (HIBYTE(v235) ^ 0x49));
  LODWORD(v234) = HIDWORD(v234);
  v243 = *(v66 + 4 * (v242 ^ 0xB0u)) + 1382439214;
  v244 = (v234 >> 20) ^ ((v234 >> 20) >> 6) ^ ((v234 >> 20) >> 4) ^ *(v64 + 4 * (BYTE2(v237) ^ 0x43u)) ^ v243 ^ (v243 >> 2) & 0x2AA264B2 ^ (*(v65 + 4 * (BYTE1(v240) ^ 0x11u)) + ((v240 >> 7) & 0x1FE ^ 0x13E) + 352715696);
  v245 = *(v66 + 4 * (v235 ^ 0x64u));
  HIDWORD(v234) = *(v63 + 4 * (HIBYTE(v237) ^ 0x52));
  LODWORD(v234) = HIDWORD(v234);
  v246 = (v234 >> 20) ^ ((v234 >> 20) >> 6) ^ ((v234 >> 20) >> 4) ^ (*(v65 + 4 * (BYTE1(v242) ^ 0xF7u)) + ((v242 >> 7) & 0x1FE ^ 0xF2) + 352715696) ^ *(v64 + 4 * (BYTE2(v240) ^ 0x17u)) ^ (((-1382439214 - v245) ^ (v245 - ((2 * (v245 + 1382439214)) & 0xD2D848A8) + 1003650434) ^ 0xE96C2454 ^ ((((v245 + 1382439214) >> 2) & 0x2AA264B2 ^ (v245 + 1382439214)) + (((v245 + 1382439214) >> 2) & 0x2AA264B2) - 2 * (((v245 + 1382439214) >> 2) & 0x2AA264B2 ^ (v245 + 1382439214)))) + (((v245 + 1382439214) >> 2) & 0x2AA264B2));
  HIDWORD(v234) = *(v63 + 4 * (HIBYTE(v240) ^ 0xF1));
  LODWORD(v234) = HIDWORD(v234);
  v247 = *(v66 + 4 * (v237 ^ 0xA0u)) + 1382439214;
  v248 = (v234 >> 20) ^ *(v64 + 4 * (BYTE2(v242) ^ 1u)) ^ ((v234 >> 20) >> 4) ^ ((v234 >> 20) >> 6) ^ (((v235 >> 7) & 0x1FE ^ 0x184) + 352715696 + *(v65 + 4 * (BYTE1(v235) ^ 0x4Cu))) ^ v247 ^ (v247 >> 2) & 0x2AA264B2;
  HIDWORD(v234) = *(v63 + 4 * (HIBYTE(v242) ^ 0x6B));
  LODWORD(v234) = HIDWORD(v234);
  v249 = *(v66 + 4 * (v240 ^ 0x7Au)) + 1382439214;
  v250 = *(v64 + 4 * (BYTE2(v235) ^ 0xCDu)) ^ (v234 >> 20) ^ ((v234 >> 20) >> 4) ^ ((v234 >> 20) >> 6) ^ (((v237 >> 7) & 0x1FE ^ 0x1CC) + 352715696 + *(v65 + 4 * (BYTE1(v237) ^ 0x68u))) ^ v249 ^ (v249 >> 2) & 0x2AA264B2 ^ 0xD3A72CEA;
  v251 = *(v63 + 4 * (HIBYTE(v244) ^ 0xCF));
  v252 = __ROR4__(v250, 23) ^ 0x8326222C;
  HIDWORD(v234) = v251 ^ 0x8A5DD;
  LODWORD(v234) = v251 ^ 0xD9500000;
  v253 = v234 >> 20;
  v254 = BYTE2(v246) ^ 0x70;
  v255 = v254 >= 0x82;
  if (v254 >= 0x82)
  {
    v254 -= 130;
  }

  LOBYTE(v256) = (BYTE2(v246) ^ 0x70) + 126;
  if (!v255)
  {
    v256 = HIWORD(v246) ^ 0xC470;
  }

  if (v254)
  {
    v257 = 0;
  }

  else
  {
    v257 = v256;
  }

  HIDWORD(v259) = v252;
  LODWORD(v259) = v252;
  v258 = v259 >> 9;
  v260 = v258 ^ 0x96B9910C;
  v261 = *(v66 + 4 * ((v259 >> 9) ^ 0xCu));
  v262 = v253 ^ (v261 + 1382439214) ^ (*(v65 + 4 * (BYTE1(v248) ^ 0xA7u)) + ((v248 >> 7) & 0x1FE ^ 0x52) + 352715696) ^ *(v64 + 4 * (((BYTE2(v246) ^ 0x70) - v257) ^ 0x90u)) ^ ((-1382439215 - v261) >> 2) & 0x2AA264B2 ^ (((-(v253 >> 2) ^ (v253 - ((v253 >> 2) ^ v253)) ^ ((v253 >> 2) - ((v253 >> 1) & 0x5136E942) - 1466207071) ^ 0xA89B74A1) + v253) >> 4);
  HIDWORD(v259) = *(v63 + 4 * (HIBYTE(v246) ^ 0xF7));
  LODWORD(v259) = HIDWORD(v259);
  v263 = *(v66 + 4 * (v244 ^ 0x43u)) + 1382439214;
  v264 = (v259 >> 20) ^ *(v64 + 4 * ((((((v248 ^ 0xC1FC293C) >> (HIBYTE(v244) & 0x10 ^ 0x10)) - ((2 * ((v248 ^ 0xC1FC293C) >> (HIBYTE(v244) & 0x10 ^ 0x10))) & 0x94AF95FE) - 900216065) ^ 0xCA57CAFF) >> (HIBYTE(v244) & 0x10)) ^ 0x90u)) ^ ((v259 >> 20) >> 4) ^ ((v259 >> 20) >> 6) ^ v263 ^ (v263 >> 2) & 0x2AA264B2 ^ (*(v65 + 4 * (BYTE1(v260) ^ 0x8Eu)) + ((v260 >> 7) & 0x1FE) + 352715696);
  v265 = *(v66 + 4 * (v246 ^ 0x54u)) + 1382439214;
  v266 = v265 ^ 0x55766D34;
  if ((v380 & 0xFF0000) == 0xA40000)
  {
    v266 = -1433824568;
  }

  HIDWORD(v267) = *(v63 + 4 * (HIBYTE(v248) ^ 0xF2));
  LODWORD(v267) = HIDWORD(v267);
  v268 = (v267 >> 20) ^ *(v64 + 4 * BYTE2(v260)) ^ ((v267 >> 20) >> 4) ^ ((v267 >> 20) >> 6) ^ v265 ^ (((v244 >> 7) & 0x1FE ^ 0x1F0) + 352715696 + *(v65 + 4 * (BYTE1(v244) ^ 0x76u))) ^ ((v266 & v265) >> 2);
  HIDWORD(v267) = *(v63 + 4 * (HIBYTE(v258) ^ 0xA5));
  LODWORD(v267) = HIDWORD(v267);
  v269 = (v267 >> 20) ^ ((v267 >> 20) >> 6) ^ ((v267 >> 20) >> 4) ^ 0x80D1773A;
  v270 = *(v64 + 4 * (BYTE2(v244) ^ 0xB4u)) ^ 0x3349A78F;
  v271 = v269 + v270 - 2 * (v269 & v270);
  v272 = *(v66 + 4 * (v248 ^ 0x10u)) + 1382439214;
  v273 = v272 ^ (((v246 >> 7) & 0x1FE ^ 0xE6) + 352715696 + *(v65 + 4 * (BYTE1(v246) ^ 0xFDu))) ^ (v272 >> 2) & 0x2AA264B2 ^ v271;
  v274 = v268 ^ 0x66B6A1E;
  HIDWORD(v267) = *(v63 + 4 * (HIBYTE(v262) ^ 0x23));
  LODWORD(v267) = HIDWORD(v267);
  v275 = *(v66 + 4 * (v273 ^ 7u)) + 1382439214;
  v276 = v264 ^ 0xCE7AB296;
  v277 = (v267 >> 20) ^ *(v64 + 4 * (BYTE2(v264) ^ 0xEAu)) ^ ((v267 >> 20) >> 4) ^ ((v267 >> 20) >> 6) ^ v275 ^ (v275 >> 2) & 0x2AA264B2 ^ (*(v65 + 4 * (BYTE1(v274) ^ 0x8Eu)) + ((v274 >> 7) & 0x1FE) + 352715696);
  HIDWORD(v267) = *(v63 + 4 * ((v264 ^ 0xCE7AB296) >> 24));
  LODWORD(v267) = HIDWORD(v267);
  v278 = v267 >> 20;
  v279 = (v278 >> 2) ^ 0x22977765;
  v280 = ~v278 & 4;
  v281 = (v280 & v279) == 0;
  v282 = v280 + v279;
  v283 = 2 * v280;
  if (v281)
  {
    v284 = 0;
  }

  else
  {
    v284 = -v283;
  }

  v285 = *(v66 + 4 * (v262 ^ 0x92u)) + 1382439214;
  v286 = v278 ^ *(v64 + 4 * (((v268 ^ 0x66B6A1E) >> 16) ^ 0x90u)) ^ v285 ^ (v285 >> 2) & 0x2AA264B2 ^ (*(v65 + 4 * (BYTE1(v273) ^ 0x70u)) + ((v273 >> 7) & 0x1FE ^ 0x1FC) + 352715696) ^ (((v282 + v284) ^ v278) >> 4);
  HIDWORD(v288) = *(v63 + 4 * (HIBYTE(v268) ^ 0x35));
  LODWORD(v288) = HIDWORD(v288);
  v287 = v288 >> 20;
  v289 = *(v66 + 4 * (v264 ^ 0xBAu)) + 1382439214;
  v290 = v287 ^ 0xBA73CA28 ^ *(v64 + 4 * (BYTE2(v273) ^ 0xDBu)) ^ (((v262 >> 7) & 0x1FE ^ 0x48) + 352715696 + *(v65 + 4 * (BYTE1(v262) ^ 0xAAu))) ^ v289 ^ (v289 >> 2) & 0x2AA264B2 ^ (((((v287 >> 2) ^ v287 ^ 0xBA73CA28) & 0x18A9CC10 ^ 0xCD10C140) & ((v287 >> 2) & 0x275633E0 ^ v287 & 0xE75633E0 ^ 0x7DF9CDB0) | ((v287 >> 2) & 0x275633E0 ^ v287 & 0xE75633E0) & 0x224632A0) >> 4);
  HIDWORD(v288) = *(v63 + 4 * (HIBYTE(v273) ^ 0xE));
  LODWORD(v288) = HIDWORD(v288);
  v291 = *(v66 + 4 * v274) + 1382439214;
  v292 = (v288 >> 20) ^ *(v64 + 4 * (BYTE2(v262) ^ 0xA7u)) ^ ((v288 >> 20) >> 4) ^ ((v288 >> 20) >> 6) ^ (((v276 >> 7) & 0x1FE) + 352715696 + *(v65 + 4 * (BYTE1(v276) ^ 0x8Eu))) ^ v291 ^ (v291 >> 2) & 0x2AA264B2;
  HIDWORD(v288) = *(v63 + 4 * (HIBYTE(v277) ^ 0xD0));
  LODWORD(v288) = HIDWORD(v288);
  v293 = *(v66 + 4 * (v292 ^ 0x5Cu)) + 1382439214;
  v294 = (v288 >> 20) ^ *(v64 + 4 * (BYTE2(v286) ^ 0xD6u)) ^ ((v288 >> 20) >> 4) ^ ((v288 >> 20) >> 6) ^ v293 ^ (v293 >> 2) & 0x2AA264B2 ^ (*(v65 + 4 * (BYTE1(v290) ^ 0xF9u)) + ((v290 >> 7) & 0x1FE ^ 0xEE) + 352715696);
  HIDWORD(v288) = *(v63 + 4 * (HIBYTE(v286) ^ 0x3E));
  LODWORD(v288) = HIDWORD(v288);
  v295 = *(v66 + 4 * (v277 ^ 0xD4u)) + 1382439214;
  v296 = (v288 >> 20) ^ ((v288 >> 20) >> 6) ^ ((v288 >> 20) >> 4) ^ *(v64 + 4 * (BYTE2(v290) ^ 9u)) ^ v295 ^ (*(v65 + 4 * (BYTE1(v292) ^ 0xD5u)) + ((v292 >> 7) & 0x1FE ^ 0xB6) + 352715696) ^ (v295 >> 2) & 0x2AA264B2;
  HIDWORD(v288) = *(v63 + 4 * (HIBYTE(v290) ^ 0x79));
  LODWORD(v288) = HIDWORD(v288);
  v297 = *(v66 + 4 * ((v286 ^ 0x3B) + ((2 * v286) & 0x58 ^ 0xFFFFFFAF) + 45)) + 1382439214;
  v298 = (v288 >> 20) ^ *(v64 + 4 * (BYTE2(v292) ^ 0xE1u)) ^ ((v288 >> 20) >> 4) ^ ((v288 >> 20) >> 6) ^ (((v277 >> 7) & 0x1FE ^ 0x1BC) + 352715696 + *(v65 + 4 * (BYTE1(v277) ^ 0x50u))) ^ v297 ^ (v297 >> 2) & 0x2AA264B2;
  HIDWORD(v288) = *(v63 + 4 * (HIBYTE(v292) ^ 0x1B));
  LODWORD(v288) = HIDWORD(v288);
  v299 = (v288 >> 20) ^ *(v64 + 4 * (BYTE2(v277) ^ 0x8Au)) ^ ((v288 >> 20) >> 4) ^ ((v288 >> 20) >> 6) ^ (((v286 >> 7) & 0x1FE ^ 0x1B6) + 352715696 + *(v65 + 4 * (BYTE1(v286) ^ 0x55u)));
  v300 = *(v66 + 4 * (v290 ^ 0x4Eu)) + 1382439214;
  v301 = (v300 >> 2) & 0x2AA264B2 ^ v300;
  v302 = v299 ^ 0xB398D0B5;
  if ((v301 & 0x10 & ~v299) != 0)
  {
    v303 = -(v301 & 0x10);
  }

  else
  {
    v303 = v301 & 0x10;
  }

  v304 = (v303 + v302) ^ v301 & 0xFFFFFFEF;
  HIDWORD(v305) = *(v63 + 4 * ((v294 ^ 0xE1BE4955) >> 24));
  LODWORD(v305) = HIDWORD(v305);
  v306 = *(v66 + 4 * (v304 ^ 0x82u)) + 1382439214;
  v307 = (v305 >> 20) ^ *(v64 + 4 * (BYTE2(v296) ^ 0x1Eu)) ^ ((v305 >> 20) >> 4) ^ ((v305 >> 20) >> 6) ^ v306 ^ (v306 >> 2) & 0x2AA264B2 ^ (*(v65 + 4 * (BYTE1(v298) ^ 0xD1u)) + ((v298 >> 7) & 0x1FE ^ 0xBE) + 352715696);
  HIDWORD(v305) = *(v63 + 4 * (HIBYTE(v296) ^ 0xE7));
  LODWORD(v305) = HIDWORD(v305);
  v308 = *(v66 + 4 * (v294 ^ 0x79u)) + 1382439214;
  v309 = v308 ^ (v308 >> 2) & 0x2AA264B2 ^ (*(v65 + 4 * (((v304 ^ 0x2182) >> 8) ^ 0x8Eu)) + (((v304 ^ 0x7A8B2182) >> 7) & 0x1FE) + 352715696);
  v310 = *(v63 + 4 * (HIBYTE(v298) ^ 0xDA));
  v311 = (v305 >> 20) ^ *(v64 + 4 * (BYTE2(v298) ^ 8u)) ^ ((v305 >> 20) >> 4) ^ ((v305 >> 20) >> 6) ^ v309;
  HIDWORD(v305) = v310 ^ 0x8A5DD;
  LODWORD(v305) = v310 ^ 0xD9500000;
  v312 = v305 >> 20;
  v313 = BYTE2(v304) ^ 0x1B;
  v314 = *(v63 + 4 * ((v304 ^ 0x7A8B2182) >> 24));
  v315 = v314 >> 20;
  v316 = ((v314 << 12) ^ 0xD14B3527) & ((v314 >> 20) ^ 0xFFFFFAAA) | (v314 >> 20) & 0xAD8;
  v317 = *(v66 + 4 * (v296 ^ 0xF6u)) + 1382439214;
  v318 = ((((v294 ^ 0xE1BE4955) >> 7) & 0x1FE) + 352715696 + *(v65 + 4 * (((v294 ^ 0x4955) >> 8) ^ 0x8Eu))) ^ *(v64 + 4 * v313) ^ v317 ^ (v317 >> 2) & 0x2AA264B2 ^ ((-v312 ^ (v312 - ((2 * v312) & 0x96216AD0) + 1259386216) ^ (((v312 >> 6) ^ (v312 >> 4)) - ((v312 >> 6) ^ (v312 >> 4) ^ v312)) ^ 0x4B10B568) + ((v312 >> 6) ^ (v312 >> 4)));
  v319 = *(v66 + 4 * (v298 ^ 0xD8u)) + 1382439214;
  v320 = (((v296 >> 7) & 0x1FE ^ 0x1BC) + 352715696 + *(v65 + 4 * (BYTE1(v296) ^ 0x50u))) ^ *(v64 + 4 * (BYTE2(v294) ^ 0x2Eu)) ^ v319 ^ v316 ^ (v316 >> 4) ^ (v316 >> 6) ^ (v319 >> 2) & 0x2AA264B2;
  v321 = v318 ^ 0xE567;
  v322 = (v318 ^ 0x9C83E567) >> (~v315 & 0x10) >> (v315 & 8) >> (v315 & 0x18 ^ 8);
  if (v318)
  {
    v323 = v321 + 1;
  }

  else
  {
    v323 = (v318 ^ 0x98) + 2 * (v318 ^ 0x67);
  }

  HIDWORD(v325) = *(v63 + 4 * (HIBYTE(v307) ^ 0x76));
  LODWORD(v325) = HIDWORD(v325);
  v324 = v325 >> 20;
  v326 = (v324 >> 6) ^ (v324 >> 4);
  v327 = v326 ^ 0xB7B978FC;
  if (v381 == 31)
  {
    v327 = -1120546221;
  }

  v328 = (v327 ^ 0x4FCCCFA2) & (v326 ^ 0x69CD15AF) ^ v327 & 0xCBE40FF;
  v329 = (v328 & 0xD06E20E ^ 0xF3FBBFFD) - (v326 & 0xD06E20E ^ 0x998E00A2 ^ v328);
  v330 = *(v66 + 4 * (v320 ^ 0x34u)) + 1382439214;
  v331 = v324 ^ *(v64 + 4 * (BYTE2(v311) ^ 9u)) ^ ((v330 & 0x308EA9C7 ^ 0xF9309558 ^ (v330 >> 2) & 0x20822082) & ~((v330 >> 2) & 0xA204430 ^ v330 & 0xCF715638) | ((v330 >> 2) & 0xA204430 ^ v330 & 0xCF715638) & 0x6414220) ^ (*(v65 + 4 * (HIBYTE(v321) ^ 0x8Eu)) + ((HIBYTE(v321) + 1545840660) ^ HIBYTE(v321)) + 2 * ((HIBYTE(v321) + 1545840660) & HIBYTE(v321)) - 1193124964) ^ v329;
  HIDWORD(v332) = *(v63 + 4 * ((v311 ^ 0x679955BEu) >> 24));
  LODWORD(v332) = HIDWORD(v332);
  v333 = *(v66 + 4 * (v307 ^ 0x6Eu)) + 1382439214;
  v334 = *(v64 + 4 * (BYTE2(v318) ^ 0x13u)) ^ (v332 >> 20) ^ ((v332 >> 20) >> 4) ^ ((v332 >> 20) >> 6) ^ v333 ^ (v333 >> 2) & 0x2AA264B2 ^ (*(v65 + 4 * (BYTE1(v320) ^ 0x56u)) + ((v320 >> 7) & 0x1FE ^ 0x1B0) + 352715696) ^ 0x6CC38789;
  v335 = (v334 & 0x1E7D740 ^ 0x774B9BA7) & (v334 & 0xFE1828BF ^ 0x21F7FFC3) | v334 & 0x88102018;
  HIDWORD(v332) = *(v63 + 4 * (v322 ^ 0x33u));
  LODWORD(v332) = HIDWORD(v332);
  v336 = *(v66 + 4 * (v311 ^ 0x92u)) + 1382439214;
  v337 = (v332 >> 20) ^ *(v64 + 4 * (BYTE2(v320) ^ 0x8Bu)) ^ ((v332 >> 20) >> 4) ^ ((v332 >> 20) >> 6) ^ ((((v307 ^ 0x45BA8142) >> 7) & 0x1FE) + 352715696 + *(v65 + 4 * (((v307 ^ 0x8142) >> 8) ^ 0x8Eu))) ^ v336 ^ (v336 >> 2) & 0x2AA264B2;
  v338 = *(v66 + 4 * (v323 ^ 0x2Du)) + 1382439214;
  HIDWORD(v332) = *(v63 + 4 * (HIBYTE(v320) ^ 0x1F));
  LODWORD(v332) = HIDWORD(v332);
  v339 = (v332 >> 20) ^ *(v64 + 4 * (BYTE2(v307) ^ 0x2Au)) ^ ((v332 >> 20) >> 4) ^ ((v332 >> 20) >> 6) ^ ((((v311 ^ 0x679955BEu) >> 7) & 0x1FE) + 352715696 + *(v65 + 4 * (((v311 ^ 0x55BE) >> 8) ^ 0x8Eu))) ^ v338 ^ (v338 >> 2) & 0x2AA264B2;
  v340 = (((32 * HIBYTE(v331)) ^ 0x18E0) + 1482711700) ^ __ROR4__(*&v196[4 * (HIBYTE(v331) ^ 0xF4)], 28) ^ 0x49DAAB6C;
  v341 = *&v189[4 * (BYTE1(v337) ^ 0x36)] ^ 0x66C0FF14;
  v342 = *&v189[4 * (BYTE1(v339) ^ 0xDE)] ^ 0x92EB326D;
  v343 = BYTE2(v337) ^ *&v196[4 * (HIBYTE(v335) ^ 0x9D)] ^ (((2 * HIBYTE(v335)) ^ 0x15C) + 1166411305) ^ *&v190[4 * (BYTE2(v337) ^ 0xB8)] ^ v342 ^ (8 * v342) ^ __ROR4__(*&v194[4 * (v331 ^ 0xB1)], 4);
  v344 = *&v189[4 * (-(BYTE1(v331) ^ 0x57) ^ (150 - (BYTE1(v331) ^ 0xC1)) ^ 0xEF05BE3A ^ ((BYTE1(v331) ^ 0x57) - ((2 * (BYTE1(v331) ^ 0x57)) & 0x74) - 284836294)) + 600] ^ 0x5DFA44F6;
  v345 = (((2 * HIBYTE(v337)) ^ 0x1B0) + 1166411305) ^ BYTE2(v339) ^ *&v190[4 * (BYTE2(v339) ^ 0x57)] ^ *&v196[4 * (HIBYTE(v337) ^ 0xEB)] ^ v344 ^ (8 * v344) ^ __ROR4__(*&v194[4 * (v335 ^ 0x11)], 4) ^ 0x2AF05AB2;
  v346 = *&v189[4 * (BYTE1(v335) ^ 0xBF)];
  v347 = BYTE2(v335);
  v348 = *&v190[4 * (BYTE2(v335) ^ 0x45)];
  v349 = BYTE2(v331);
  v350 = v346 ^ (8 * v346) ^ 0x5E9E5A08;
  v351 = *&v196[4 * (HIBYTE(v339) ^ 0x6B)] ^ (((2 * HIBYTE(v339)) ^ 0xB0) + 1166411305) ^ *&v190[4 * (v349 ^ 7)];
  v352 = *&v194[4 * (((v339 & 0x8C ^ 0x20DA4947) & (v339 & 0x73 ^ 0xE7FB6DAF) | v339 & 0x30) ^ 0x20DA4913)];
  v353 = *&v194[4 * (v337 ^ 0xE8)];
  v354 = v349 ^ 0x4729BC1C ^ v351;
  if ((v350 & 0x40000000 & ~v351) != 0)
  {
    v355 = -(v350 & 0x40000000);
  }

  else
  {
    v355 = v350 & 0x40000000;
  }

  v356 = v350 & 0xBFFFFFFF ^ __ROR4__(v353, 4) ^ 0xA887CD4D ^ (v355 + v354);
  v357 = v343 ^ 0x4F5EBC2D ^ v345;
  v358 = v357 ^ v386 ^ v348 ^ __ROR4__(v352, 4) ^ __ROR4__(v340, 4) ^ v341 ^ (8 * v341);
  v359 = v357 ^ v386 ^ v356;
  v360 = v345 ^ v356;
  v361 = v358 ^ v347 ^ 0x73D19F9C;
  v362 = v361 ^ v357;
  v363 = *(&off_1010A0B50 + (v385 ^ 0x542A)) - 2013635239;
  v364 = v363[((v361 ^ v357) >> 16) ^ 0x95];
  v281 = (v364 & 8) == 0;
  v365 = v364 ^ 0xA3;
  if (v281)
  {
    v366 = 8;
  }

  else
  {
    v366 = -8;
  }

  v382[11] = (v366 + v365) ^ 0x86;
  v382[15] = v363[BYTE2(v361) ^ 0xABLL] ^ 0x2D;
  v367 = *(&off_1010A0B50 + v385 - 23433) - 1256665918;
  v368 = v361 ^ v360;
  v382[5] = v367[v359 ^ 0x8ALL] ^ ((v359 ^ 0x84) + (v359 ^ 0x87)) ^ 0x3A;
  v369 = *(&off_1010A0B50 + v385 - 24164) - 1046792431;
  v382[7] = v369[HIBYTE(v368) ^ 0x4FLL] ^ 0xE2 ^ (v369[HIBYTE(v368) ^ 0x4FLL] >> 1) & 0x6E;
  v382[1] = v363[BYTE2(v368) ^ 0xCALL] ^ 0x2D;
  v382[10] = ((v368 ^ 0x6B) - (v368 ^ 0x97)) ^ 0xC5 ^ v367[v368 ^ 0x9ALL];
  v370 = *(&off_1010A0B50 + (v385 ^ 0x5264)) - 993244647;
  v371 = v370[(v361 >> 8) & 0xDF ^ 0x1C778A03 ^ ((v361 >> 8) & 0x20 | 0x1C778A5E)];
  v382[9] = v371 ^ (v371 >> 1) ^ ((v370[(v361 >> 8) & 0xDF ^ 0x1C778A03 ^ ((v361 >> 8) & 0x20 | 0x1C778A5E)] >> 3) | 0x20) ^ 0x78;
  v382[12] = v363[BYTE2(v359) ^ 0x3ELL] ^ 0x2D;
  v372 = v369[HIBYTE(v359) ^ 0x48];
  v373 = (v372 ^ (((2 * (-70 - (v372 ^ 0xFFFFFFE2))) & 0xFFFFFFF3) + ((-70 - (v372 ^ 0xFFFFFFE2)) ^ 0x79)) ^ (47 - (((v372 ^ 0xFFFFFFFC) + 4) ^ ((v372 ^ 0xFFFFFFD3) + 45) ^ ((v372 ^ 0xFFFFFFFE) + 2))) ^ 0xFFFFFFD1) + 51;
  v374 = (v373 >> 1) & 0x6E;
  v382[2] = (v373 ^ 0x60) - v374 + (((v373 ^ 0x60) - (v373 ^ 0x60 ^ v374)) ^ v374) - 2 * ((((v373 ^ 0x60) - (v373 ^ 0x60 ^ v374)) ^ v374) & -v374);
  v382[4] = ((v358 ^ v347 ^ 0xE6) - (v358 ^ v347 ^ 0x1A)) ^ 0xC5 ^ v367[(v358 ^ v347) ^ 0x17];
  v375 = v370[BYTE1(v362) ^ 0x96];
  v382[6] = v375 ^ (v375 >> 3) ^ (v375 >> 1) ^ 0x58;
  v376 = v369[HIBYTE(v358) ^ 0xB3];
  v382[8] = v376 ^ 0xE2 ^ (v376 >> 1) & 0x6E;
  v382[13] = v369[HIBYTE(v362) ^ 0xBALL] ^ 0xE2 ^ (v369[HIBYTE(v362) ^ 0xBALL] >> 1) & 0x6E;
  v377 = v370[BYTE1(v368) ^ 0xD3];
  LOBYTE(v375) = (v377 >> 3) ^ (v377 >> 1);
  v382[3] = (v375 & 3 ^ v377 & 0x83 | (v375 ^ v377) & 0x7C) ^ 0x58;
  *v382 = ((v362 ^ 0xEE) + (v362 ^ 0xED)) ^ 0x3A ^ v367[v362 ^ 0xE0];
  v378 = v370[BYTE1(v359) ^ 0x1ALL];
  LOBYTE(v378) = ((((v378 >> 2) | (v378 << 6)) ^ 0xC7) >> 6) | (4 * (((v378 >> 2) | (v378 << 6)) ^ 0xC7));
  v382[14] = v378 ^ (v378 >> 3) ^ (v378 >> 1) ^ 0x4B;
  return (*(v383 + 8 * v385))(a1);
}

uint64_t sub_1008718DC()
{
  STACK[0x8F8] = *STACK[0x12E0];
  STACK[0x10C0] = &STACK[0x1D2C];
  LODWORD(STACK[0xD50]) = -1102842943;
  return (*(v0 + 124800))();
}

uint64_t sub_100871918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x4D8] - 38865;
  LOWORD(STACK[0xBAE]) = v8;
  v10 = *(a8 + 8 * (v9 ^ 0x12D7));
  LODWORD(STACK[0x500]) = v8;
  return v10();
}

uint64_t sub_100871A84()
{
  if (v5 == v3)
  {
    v6 = v1;
  }

  else
  {
    v6 = v2;
  }

  *v2 = *v6;
  return (*(v0 + 8 * v4))();
}

uint64_t sub_100871ABC@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v4 = a2 ^ 0x98C2;
  v5 = (v2 ^ 0x3EBE6D5D0FFDFFB3) - 0x1608601902A8C080 + ((7 * (v4 ^ 0x1A17u) + 536606080) & (2 * v2));
  *(v3 + 1512) = v5;
  v6 = STACK[0x5F8];
  *(v3 + 1520) = STACK[0x5F8];
  return (*(a1 + 8 * ((43706 * (v5 - v6 + 0x167A0D1B1972FA6ALL < 0xFFFFFFFFFFFFFFF6)) ^ v4)))();
}

uint64_t sub_100871B64@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  *STACK[0x498] = a2;
  v5 = *(v4 - 955876402);
  v6 = STACK[0x5D8] - 0x28E5CE97280829F9;
  STACK[0x350] = v6;
  *(v5 + v6 * a1 + 512) = 0;
  return (*(v3 + 8 * v2))();
}

uint64_t sub_100871BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _DWORD *a13, _DWORD *a14)
{
  *a14 = v16;
  *a13 = v16;
  return (*(v15 + 8 * v14))();
}

uint64_t sub_100871D3C@<X0>(uint64_t a1@<X8>)
{
  v5 = *(a1 + 288);
  *(v4 - 224) = &STACK[0x1574];
  *(v4 - 256) = v1 - 1012831759 * (v2 ^ 0x1093168A) + 24203;
  *(v4 - 248) = v5;
  *(v4 - 232) = &STACK[0x1F28];
  v6 = (*(v3 + 8 * (v1 + 39242)))(v4 - 256);
  return (*(v3 + 8 * ((46697 * (*(v4 - 240) == ((v1 + 1724791979) ^ 0x8F1BF6E9) + ((v1 + 1724791979) & 0x9931BFFF))) ^ v1)))(v6);
}

uint64_t sub_100871E9C@<X0>(unsigned int a1@<W1>, uint64_t a2@<X8>)
{
  v8 = (((a1 - 67540267) & 0x406FFFF) - 42895) & (v6 + 15);
  v9 = -a2 - v6 + 1;
  v11 = (v9 + v4 + v8) >= 0x10 && v2 - a2 >= a1 - 15545 && (v9 + v5 + v8) >= 0x10;
  v12 = v9 + v3 + v8;
  v14 = !v11 || v12 < 0x10;
  return (*(v7 + 8 * ((118 * v14) ^ (a1 + 31343))))();
}

uint64_t sub_100872198@<X0>(unint64_t a1@<X8>)
{
  *(v2 + 6) = BYTE6(a1) ^ 0x36;
  *(v2 + 7) = (a1 >> (((v1 - 78) | 0x8A) ^ (3 * (v1 ^ 0xEA)) ^ 0x5Eu)) ^ 0xBE;
  return (*(v4 + 8 * (v1 ^ (46 * (v3 == 8)))))();
}

uint64_t sub_100872378()
{
  v5 = v0 - 14381;
  v6 = *STACK[0xB30];
  v7 = *STACK[0xBD8];
  v8 = STACK[0xE88];
  v9 = STACK[0xE88] + 134109408;
  v10 = ((v9 ^ 0x1CF49990) - 788469207) ^ v9 ^ ((v9 ^ 0xA90E95C1) + 1694164602) ^ ((v9 ^ 0xF80A7EE9) + 905842002) ^ ((v9 ^ 0x7FFBFEFF) - 1307603640);
  v11 = (((v10 ^ 0x7882A6F7) + 1594428425) ^ ((v10 ^ 0x3D1071BD) + 446421827) ^ ((v10 ^ 0x5D94686A) + 2048901782)) - 1356900101 + ((((2 * v10) & 0x541A66CE ^ 0xBAE2AB3A) - 1991324917) ^ (((2 * v10) & 0x541A66CE ^ 0x8C1F8D) + 857767870) ^ (((2 * v10) & 0x541A66CE ^ 0xFE7CB439) - 841952246));
  v12 = STACK[0xE88] - ((((2 * v1) ^ 0xF09D8662) + 1127685076) ^ (((2 * v1) ^ 0x8AFC739C) + 961998382) ^ (((2 * v1) ^ 0x123B238E) - 1584284096)) + 663732235 + ((((2 * v1) ^ 0x27F6DF5A) - 127730302) ^ (((2 * v1) ^ 0x596307DC) - 2030623480) ^ ((v5 ^ 0xC95B61F7) + ((2 * v1) ^ 0x16CF0EF6)));
  v13 = ((v12 ^ 0x6F684AD4) - 1812341281) ^ v12 ^ ((v12 ^ 0x886C07BE) + 1962774709) ^ ((v12 ^ 0x1E99DE60) - 502773397) ^ ((v12 ^ 0xFAF3FBFF) + 107113718);
  v14 = ((v13 & 0x20 ^ 0xD6F7A173) - 1981084590) ^ ((v13 & 0x20 ^ 0xD0105D37) - 1894977514) ^ ((v13 & 0x20 ^ 0x6E7FC64) + 1509642567);
  v15 = ((v11 ^ 0x93C6AB2) - 1867949352) ^ v11 ^ ((v11 ^ 0x4DC75EFD) - 732795239) ^ ((v11 ^ 0x19EE4428) - 2139392946) ^ ((v11 ^ 0x3B7FBFFD) - 1561686119) ^ v1;
  LODWORD(STACK[0xED0]) = v15 ^ 0x64C4D6DA;
  v16 = (v1 ^ v2) & v8;
  v17 = v15 ^ v8;
  v18 = ((v14 - 1565373372) ^ 0xFE30A6B9) & (2 * ((v14 + 68) & 0xA1)) | (v14 + 68) & 0xA1;
  v19 = ((2 * ((v14 - 1565373372) ^ 0x8E70AEA9)) ^ 0xE0835020) & ((v14 - 1565373372) ^ 0x8E70AEA9) ^ (2 * ((v14 - 1565373372) ^ 0x8E70AEA9)) & 0x7041A810;
  v20 = v19 ^ 0x1040A810;
  v21 = v19 & (4 * v18) ^ v18;
  v22 = ((4 * v20) ^ 0xC106A040) & v20 ^ (4 * v20) & 0x7041A810;
  v23 = v21 ^ 0x7041A810 ^ (v22 ^ 0x4000A000) & (16 * v21);
  v24 = (16 * (v22 ^ 0x30410810)) & 0x7041A800 ^ 0x70412810 ^ ((16 * (v22 ^ 0x30410810)) ^ 0x41A8100) & (v22 ^ 0x30410810);
  v25 = (v23 << 8) & 0x7041A800 ^ v23 ^ ((v23 << 8) ^ 0x41A81000) & v24;
  v26 = (v14 - 1565373372) ^ (2 * ((v25 << 16) & 0x70410000 ^ v25 ^ ((v25 << 16) ^ 0x28100000) & ((v24 << 8) & 0x70410000 ^ 0x30410000 ^ ((v24 << 8) ^ 0x41A80000) & v24)));
  v27 = 1626056266 - v14;
  if (((v26 ^ 0xDEB25699) & (v17 ^ 0x8F5015BF) ^ v26 & 0x5D17B11D) == 0x5C121019)
  {
    v27 = v14 - 1565373372;
  }

  LODWORD(STACK[0xEC8]) = v17;
  v28 = (((v17 ^ 0x465177C) - 239133601) ^ ((v17 ^ 0xB09D5462) + 1162305345) ^ ((v17 ^ 0x66BFE7BC) - 1822036833)) + 1347629960 + v27;
  v29 = v28 ^ v13 & 0xFFFFFFDF ^ ((v28 ^ 0x4A9BABD9) - 858027913) ^ ((v28 ^ 0xABC134CE) + 763434850) ^ ((v28 ^ 0xA51ABC3A) + 593141654) ^ ((v28 ^ 0x3DFFFF7D) - 1145053997);
  v30 = 2 * ((v29 ^ 0x7AD1B485) & (v16 ^ 0x76989822) ^ v29 & 0x76989822);
  LODWORD(STACK[0xEB8]) = ((v30 ^ 0xF5DEF47B) - 146428367) ^ ((v30 ^ 0x811C4D37) - 2088298627) ^ ((v30 ^ 0x91E3994C) - 1820802296);
  v31 = *(&off_1010A0B50 + (v5 ^ 0x5C36));
  STACK[0xE60] = v3;
  STACK[0xE78] = v31 - 1904004599;
  STACK[0xE70] = v31 - 1904003795;
  STACK[0xEA0] = v6;
  STACK[0xE80] = v7;
  STACK[0xEC0] = (LODWORD(STACK[0xEC8]) ^ 0xC00F46AE) << 32;
  HIDWORD(v32) = STACK[0xE88] ^ LODWORD(STACK[0xED0]) ^ 8;
  LODWORD(v32) = LODWORD(STACK[0xED0]) ^ (STACK[0xE88] - ((2 * STACK[0xE88]) & 0x6D06E4F0) - 1232899464);
  LODWORD(v31) = (((v16 ^ 0x2646F472) - 485331541) ^ ((v16 ^ 0xCD7EF946) + 136994975) ^ ((v16 ^ 0xEB380D34) + 778867949)) + (__ROR4__((v32 >> 4) ^ 0x26D0BDAB, 28) ^ 0x92F4254D) + (((v29 ^ v16 ^ 0xCD8ED67) + 1795840208) ^ ((v29 ^ v16 ^ 0x7A22E5F4) + 502288477) ^ ((v29 ^ v16 ^ 0xC2BBC16) + 1811483071)) + LODWORD(STACK[0xEB8]);
  LODWORD(STACK[0xEB8]) = v31 + 904784558;
  LODWORD(STACK[0xEB0]) = v31 - 1652496284;
  return (*(v4 + 8 * v5))();
}

void *sub_100873B94@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x588]) = v2;
  *(v3 + 1192) = *(v1 + 8 * a1);
  return (*(v1 + 8 * (a1 + 6358 + a1 + 7068)))(&STACK[0x740]);
}

uint64_t sub_100873C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = (*(v65 + 414912))(LODWORD(STACK[0xCCC]) ^ (a65 | 0x440) ^ 0xE9D5AB52);
  STACK[0x1AB0] = v66;
  return (*(v65 + 8 * ((8 * (v66 == 0)) ^ 0xCA42)))();
}

uint64_t sub_100873CE8()
{
  v5 = (((((v4 ^ 0xB7A4) - 578176446) & 0x2276E5FC) - 167838349) ^ (v0 - 1497668668)) + ((2 * (v0 - 1497668668)) & 0xEBFF7B7E);
  v6 = *(*(*(v3 + 8 * ((v4 ^ 0xB7A4) - 5263)) - 1680276466) + (*(*(v3 + 8 * ((v4 ^ 0xB7A4) - 4078)) - 231415367) & 0x72D7ACF8));
  v7 = (*v2 + v5 + (((v4 ^ 0xB7A4) + 1985665004) & 0x89A59FAF ^ 0xA00D5E8));
  v8 = 1864610357 * ((1864610357 * ((v7 ^ v6) & 0x7FFFFFFF)) ^ ((1864610357 * ((v7 ^ v6) & 0x7FFFFFFF)) >> 16));
  v9 = *(v3 + 8 * (v4 ^ 0x915A)) - 579625171;
  v10 = *(v3 + 8 * ((v4 ^ 0xB7A4) - 5071)) - 2076177714;
  v11 = *(v3 + 8 * ((v4 ^ 0xB7A4) - 6676)) - 1048392095;
  LOWORD(v7) = *(v9 + (v8 >> 24)) ^ *v7 ^ *(v10 + (v8 >> 24)) ^ *((v8 >> 24) + v11 + 5) ^ v8 ^ (-83 * (((1864610357 * ((1864610357 * ((v7 ^ v6) & 0x7FFFFFFF)) ^ ((1864610357 * ((v7 ^ v6) & 0x7FFFFFFF)) >> 16))) >> 16) >> 8));
  v12 = (*v2 + v5 + 167789122);
  LOBYTE(v8) = *v12;
  v13 = 1864610357 * ((1864610357 * ((v12 ^ v6) & 0x7FFFFFFF)) ^ ((1864610357 * ((v12 ^ v6) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v13) = *(v9 + (v13 >> 24)) ^ v8 ^ *(v10 + (v13 >> 24)) ^ *((v13 >> 24) + v11 + 5) ^ v13 ^ (-83 * BYTE3(v13));
  return (*(v1 + 8 * ((57690 * (((v13 | (v7 << 8)) - 2 * ((v13 & 0x1F | (v7 << 8) & 0x781F) ^ v13 & 9)) == 0)) ^ v4 ^ 0xB7A4)))();
}

uint64_t sub_100873F98@<X0>(int a1@<W8>)
{
  STACK[0xC90] = v2;
  STACK[0x1620] = v1;
  return (*(v3 + 8 * (((v1 == 0) * ((((a1 + 541072231) | 0x42201012) - 1650507454) ^ (2 * a1) ^ 0x15810)) ^ a1)))();
}

uint64_t sub_10087404C@<X0>(int a1@<W8>)
{
  v6 = 11 * (a1 ^ 0x6260DE45);
  v7 = a1 - 1650494237;
  v9 = v2 < v4 && v1 == v3;
  return (*(v5 + 8 * ((v9 * (v6 ^ 0xBDC0)) ^ v7)))();
}

uint64_t sub_100874114@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  if (LODWORD(STACK[0xAE4]))
  {
    v2 = LODWORD(STACK[0xAE4]) == ((LODWORD(STACK[0xAE4]) << ((((a2 - 2) | 0x22) + 53) ^ 0x61)) & 0xD3AB8E22);
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  return (*(a1 + 8 * ((49987 * v3) ^ a2)))();
}

uint64_t sub_10087417C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x288]) ^= LODWORD(STACK[0x354]) ^ LODWORD(STACK[0x2A0]) ^ LODWORD(STACK[0x338]) ^ a65 ^ LODWORD(STACK[0x348]) ^ a69 ^ LODWORD(STACK[0x3E4]) ^ a71 ^ LODWORD(STACK[0x2C8]) ^ LODWORD(STACK[0x3E8]) ^ LODWORD(STACK[0x2A8]) ^ LODWORD(STACK[0x2B0]) ^ LODWORD(STACK[0x29C]) ^ LODWORD(STACK[0x228]) ^ LODWORD(STACK[0x3EC]) ^ LODWORD(STACK[0x34C]) ^ LODWORD(STACK[0x3F0]) ^ LODWORD(STACK[0x2E0]) ^ LODWORD(STACK[0x2B8]) ^ LODWORD(STACK[0x32C]) ^ LODWORD(STACK[0x328]) ^ LODWORD(STACK[0x33C]) ^ LODWORD(STACK[0x26C]) ^ 0xA7F0C5B0;
  LODWORD(STACK[0x29C]) = LODWORD(STACK[0x258]) ^ LODWORD(STACK[0x268]);
  LODWORD(v72) = *(v71 - 224 + ((*(v71 - 224 + ((*(v71 - 224 + ((*(v71 - 224) + 6) & 0xF)) + 7) & 0xF)) + 11) & 0xF)) & 0xF ^ 8;
  if (v72 <= 1)
  {
    v72 = 1;
  }

  else
  {
    v72 = v72;
  }

  return (*(STACK[0x480] + 8 * STACK[0x290]))(v72 - 1, 833604403, 845678247, 1691356494, 845651042, 78);
}

uint64_t sub_1008746C8()
{
  STACK[0x1FD0] = v0;
  LODWORD(STACK[0x12D0]) = 407455328;
  return (*(v2 + 8 * (v1 - 1650505868)))();
}

uint64_t sub_100874714(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, int a6)
{
  v9 = v7[1];
  v10 = (((*v7 ^ 0x361F8E7A) - 908037754) ^ ((*v7 ^ 0xD6BADB4C) + 692397236) ^ (((((v6 + 1593857687) & 0xA0FFBFC7) + 158356579) ^ *v7) + a3)) + a4;
  if (v9 > 0xCC52E0FE != v10 < a5)
  {
    v11 = v10 < a5;
  }

  else
  {
    v11 = v10 > v9 + a5;
  }

  return (*(v8 + 8 * ((v11 * a6) ^ v6)))();
}

uint64_t sub_10087481C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x24F4]) = v2;
  LODWORD(STACK[0x1434]) = v1;
  v5 = a1 - 44016 + v2 - 2058741061;
  v6 = (((v3 ^ 0xD121DC7E) + 786310018) ^ ((v3 ^ 0xDA7E14E9) + 629271319) ^ (((((a1 - 832970306) & 0x31A57DFE) - 494271846) ^ v3) + 494268538)) - 2042170448;
  v7 = v6 < 0x9C712C9F;
  v8 = v5 < v6;
  if (v5 < 0x9C712C9F != v7)
  {
    v8 = v7;
  }

  return (*(v4 + 8 * ((98 * !v8) ^ a1)))();
}

uint64_t sub_1008748FC@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  LODWORD(STACK[0xE20]) = 0;
  LODWORD(STACK[0xD10]) = 0;
  LODWORD(STACK[0xDC0]) = 0;
  LODWORD(STACK[0xE28]) = 0;
  LODWORD(STACK[0xD30]) = 0;
  LODWORD(STACK[0xDD8]) = 0;
  LODWORD(STACK[0xD58]) = 0;
  LODWORD(STACK[0xD70]) = 0;
  LODWORD(STACK[0xD80]) = 0;
  LODWORD(STACK[0xD38]) = 0;
  LODWORD(STACK[0xD20]) = 0;
  v5 = v2 | 0x222;
  v6 = (v2 | 0x222u) + 14045;
  v7 = v3 ^ LODWORD(STACK[0xAA4]);
  STACK[0xE88] = v6;
  *(a2 + 67) = v7 ^ v6 ^ 0x75;
  v8 = *(v4 + 8 * v5);
  LODWORD(STACK[0xEA8]) = 1;
  LODWORD(STACK[0xE18]) = 1;
  LODWORD(STACK[0xDF0]) = 1;
  LODWORD(STACK[0xDE8]) = 1;
  LODWORD(STACK[0xCF8]) = 1;
  LODWORD(STACK[0xD98]) = 1;
  LODWORD(STACK[0xDF8]) = 1;
  LODWORD(STACK[0xDA8]) = 1;
  LODWORD(STACK[0xD18]) = 1;
  LODWORD(STACK[0xE10]) = 1;
  LODWORD(STACK[0xDB0]) = 1;
  LODWORD(STACK[0xD28]) = 1;
  LODWORD(STACK[0xDB8]) = 1;
  LODWORD(STACK[0xD88]) = 1;
  LODWORD(STACK[0xE00]) = 1;
  LODWORD(STACK[0xDE0]) = 1;
  LODWORD(STACK[0xD00]) = 1;
  LODWORD(STACK[0xD08]) = 1;
  LODWORD(STACK[0xDA0]) = 1;
  LODWORD(STACK[0xE08]) = 1;
  return v8(4294947698, -22206133, STACK[0xBD8], 0xFFFFF20000000000, 184, a1, &off_1010A0B50, 12602655);
}

uint64_t sub_100874A3C()
{
  v7 = v5 + v3;
  v8 = (v3 - 1) & 0xF;
  v9 = v8 + 1;
  v10 = v8 + 1 - v3;
  v11 = v2 + v10;
  v12 = v2 + v8 + 1;
  v13 = v8 + v0 + 3;
  v14 = v1 + v10;
  v15 = v1 + v9;
  v17 = v13 > v5 && v13 - v3 < v7;
  if (v12 > v5 && v11 < v7)
  {
    v17 = 1;
  }

  if (v15 > v5 && v14 < v7)
  {
    v17 = 1;
  }

  return (*(v6 + 8 * ((((v17 ^ (v4 - 1)) & 1) * (((v4 + 35329528) | 0x8C60000C) ^ 0x8E7B7729)) ^ v4)))();
}

uint64_t sub_100874ADC()
{
  LODWORD(STACK[0x2B0]) = (v1 - 39451) | 0xA450;
  v2 = (*(v0 + 8 * (v1 + 11921)))(265);
  STACK[0x2D8] = v2;
  return (*(v0 + 8 * (((((v2 == 0) ^ (v1 - 26)) & 1) * (v1 ^ 0x9C40)) ^ v1)))();
}

uint64_t sub_100874B40(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(v21 - 128) = v20 & 0xF;
  v22 = *(a18 + 8 * v18);
  *(v21 - 120) = v19 & 0x10;
  v23.n128_u64[0] = (v20 + 13) & 0xF;
  v23.n128_u64[1] = (v20 + 12) & 0xF;
  v24.n128_u64[0] = (v20 + 11) & 0xF;
  v24.n128_u64[1] = (v20 + 10) & 0xF;
  v25.n128_u64[0] = (v20 + 9) & 0xF;
  v25.n128_u64[1] = v19 & 0xF ^ 0xCLL;
  v28.val[0].i64[0] = (v20 + 7) & 0xF;
  v28.val[0].i64[1] = (v20 + 6) & 0xF;
  v28.val[1].i64[0] = (v20 + 5) & 0xF;
  v28.val[1].i64[1] = (v20 + 4) & 0xF;
  v28.val[2].i64[0] = (v20 + 3) & 0xF;
  v28.val[2].i64[1] = (v20 + 2) & 0xF;
  v28.val[3].i64[0] = (v20 + 1) & 0xF;
  v28.val[3].i64[1] = *(v21 - 128);
  v26.n128_u64[0] = 0x5959595959595959;
  v26.n128_u64[1] = 0x5959595959595959;
  return v22(a1, v23, v24, v25, xmmword_100BC76B0, vqtbl4q_s8(v28, xmmword_100BC76B0), v26);
}

uint64_t sub_100874C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x5AC]) = v9;
  *(v10 + 504) = *(a8 + 8 * v8);
  return (*(a8 + 8 * ((((v8 + 1348713923) & 0xAF9C7FAD) - 7510) ^ v8)))();
}

uint64_t sub_100874CF4@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v4 = ((a2 + 779) ^ 0xEFFFB7B7E5FED526) + ((2 * v2) & 0x1BFDFDD38) + (v2 ^ 0x3B8FDFFEDFEFE710 ^ (1222 * (a2 ^ 0x4599u)));
  v3[224] = v4;
  v5 = v3[161];
  v3[225] = v5;
  return (*(a1 + 8 * ((2632 * (v4 - v5 + 0x4B51A8C03D8FC9FFLL < 0xFFFFFFFFFFFFFFF6)) ^ a2)))();
}

uint64_t sub_100874FB4(int a1, int a2, uint64_t a3, int a4)
{
  v10 = v5 > v8;
  if (v10 == a2 + 224478146 < v6)
  {
    v10 = a2 + 224478146 < v4;
  }

  return (*(v9 + 8 * (((v10 & a4 ^ 1) * (a1 ^ v7)) ^ a1)))();
}

uint64_t sub_100876D78@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unint64_t a33, unint64_t a34, unint64_t a35, unint64_t a36, unint64_t a37, uint64_t a38, unint64_t a39, unint64_t a40)
{
  STACK[0x1AC8] = v42;
  STACK[0x1090] = STACK[0x7A0];
  STACK[0x1668] = STACK[0x798];
  STACK[0x1D50] = a35;
  STACK[0xA28] = a39;
  STACK[0x12A8] = a40;
  STACK[0x12E8] = a34;
  STACK[0x19E0] = a37;
  STACK[0x1880] = a36;
  STACK[0x1008] = a33;
  STACK[0xF08] = v41;
  STACK[0xC38] = v40;
  STACK[0xEB8] = a1;
  STACK[0xC58] = STACK[0x760];
  STACK[0x13D0] = STACK[0x768];
  return (*(v44 + 8 * v43))();
}

void sub_100876E30(_DWORD *a1)
{
  v1 = *a1 ^ (1603510583 * ((2 * (a1 & 0x3E255D31) - a1 - 1042636082) ^ 0x56019065));
  v5 = &v3;
  v6 = (353670337 * (((&v4 | 0x5061643E) - (&v4 | 0xAF9E9BC1) - 1348559935) ^ 0xE4409C03)) ^ (v1 - 34794365);
  v2 = *(&off_1010A0B50 + (v1 ^ 0x854B)) - 810145054;
  (*&v2[8 * (v1 + 19173)])(&v4);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_100876F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v9 + 1176);
  *(v9 + 440) = *(a8 + 8 * v8);
  return (*(a8 + 8 * ((((v8 + 29560) | 0x3200) - 44017) ^ v8)))(v10);
}

uint64_t sub_100876FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v64 = v59 < v61;
  v63 = ((((v59 + 1582776109) ^ 0xA) + ((v60 + 354060020) & 0xEAE5E5FF ^ 0x854E)) ^ (9 - v59) ^ (((v59 + 1582776109) ^ 5) + 13)) & (((v60 - 949586792) & 0x3899FB77) - 34903);
  v66 = 229678771 - (((v63 ^ 0xC0FE8576) + 1811506638) ^ ((v63 ^ 0x3FE7A0CC) - 1797242760) ^ ((v63 ^ 0xFF1925BA) + 1411302658));
  return (*(v62 + 8 * ((52 * ((v59 | (v64 << 32)) + v66 + ((v66 < 0x62A8BDE7) << 32) - 3238001930u > 0xFFFFFFF5)) ^ v60)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59);
}

uint64_t sub_1008772E0(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5, int a6)
{
  v13 = LODWORD(STACK[0xCA0]) - LODWORD(STACK[0xFBC]) == -526514841;
  v14 = *(v12 - 184);
  v15 = v14[2];
  v16 = ((v15 - ((2 * v15) & 0x8C)) << 8) + 1128613376;
  v17 = ((((*v14 - 2 * (*v14 & 0x1F)) << 24) + 520093696) ^ 0x789D587F) & (v16 ^ 0xBC98397F) | v16 & 0x62A700;
  v18 = v14[1];
  LODWORD(STACK[0x1038]) = a4;
  v19 = (v17 ^ 0x98228180) & ((((v18 - ((2 * v18) & 0xAC)) << 16) - 246022144) ^ 0x2ED685F3) ^ v17 & 0x207F7A0C;
  v20 = v14[3];
  v21 = v20 ^ 0xF7BEF1FE;
  LODWORD(STACK[0xB60]) = v20;
  v20 *= 2;
  LODWORD(STACK[0xB58]) = v20;
  v22 = (v20 & 0x1FC) + v21;
  v23 = (v22 + 1038876620) & 0xE36 ^ 0xA2B760E3 ^ ((v22 + 1038876620) ^ 0x68E26EB5) & (2 * ((v22 + 1038876620) & 0xE36));
  v24 = (2 * ((v22 + 1038876620) ^ 0x68E26ED5)) & 0xA29120E2 ^ 0xA2912021 ^ ((2 * ((v22 + 1038876620) ^ 0x68E26ED5)) ^ 0x454881C6) & ((v22 + 1038876620) ^ 0x68E26ED5);
  v25 = (4 * v23) & 0x829560E0 ^ v23 ^ ((4 * v23) ^ 0x8ADD838C) & v24;
  v26 = v22 - (((4 * ((16 * v25) ^ v25 ^ ((16 * v25) ^ 0x20) & ((4 * v24) & 0x22B760E0 ^ ((4 * v24) ^ 0xADD8380) & v24 ^ 0x20))) ^ (2 * (v22 + 1038876620))) & 0x88);
  LODWORD(STACK[0xB68]) = v19;
  v27 = STACK[0xFC8];
  v28 = *(&off_1010A0B50 + (LODWORD(STACK[0xFC8]) ^ 0xA04C)) - 569966226;
  LOBYTE(v22) = v28[HIBYTE(v19) ^ 0xBBLL];
  LOBYTE(v24) = v22 & 0xC6 ^ 0xAE;
  v29 = v14[6];
  LODWORD(STACK[0xB50]) = v29;
  v30 = (((v22 ^ (2 * ((v22 ^ 8) & (2 * ((v22 ^ 8) & (2 * ((v22 ^ 8) & (2 * ((v22 ^ 8) & (2 * (((2 * v22) & 0x14 ^ 0x4C) & (v22 ^ 8) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24))) << 8) ^ 0xB86EE9EF) & ((v28[v18 ^ 0x44] - 118) ^ 0xBBFEFFFF) | (v28[v18 ^ 0x44] - 118) & 0x10;
  LODWORD(v18) = ((v29 >> 5) | (8 * v29)) + (~(2 * ((v29 >> 5) | (8 * v29))) | 0x73) - 57;
  HIDWORD(v31) = ((v18 >> 5) | (8 * v18)) ^ 0x36;
  LODWORD(v31) = v18 << 27;
  LOBYTE(v18) = v31 >> 30;
  LODWORD(v31) = __ROR4__(v30 ^ 0xD0AD51, 7) ^ 0xD2005B6D;
  HIDWORD(v31) = v31;
  v32 = v28[v15 ^ 0x44] - 118;
  v33 = (((v31 >> 25) << 8) ^ 0xAF250E8A) & ((v28[v15 ^ 0x44] - 118) ^ 0xFFFFFFBB) | v32 & 0x75;
  v34 = v14[4];
  STACK[0xB48] = v34;
  LODWORD(v15) = v28[v34 ^ 0x44];
  v35 = (v15 & 0xFFFFFF8A | 0x64) ^ v15 & 0xFFFFFFD8;
  *(v12 - 176) = a5;
  v36 = (v33 ^ 0x3CB2FA8A) - ((2 * v32) & 0x146) + 1231483417;
  v37 = (v36 ^ 0xB45D0CCB) & (2 * (v36 & 0xB6990E8A)) ^ v36 & 0xB6990E8A;
  LODWORD(STACK[0x1040]) = a6;
  v38 = ((2 * (v36 ^ 0xDC4D09DB)) ^ 0xD5A80EA2) & (v36 ^ 0xDC4D09DB) ^ (2 * (v36 ^ 0xDC4D09DB)) & 0x6AD40750;
  v39 = (v38 ^ 0x40800600) & (4 * v37) ^ v37;
  v40 = ((4 * (v38 ^ 0x2A540151)) ^ 0xAB501D44) & (v38 ^ 0x2A540151) ^ (4 * (v38 ^ 0x2A540151)) & 0x6AD40750;
  v41 = (v40 ^ 0x2A500540) & (16 * v39) ^ v39;
  v42 = ((16 * (v40 ^ 0x40840211)) ^ 0xAD407510) & (v40 ^ 0x40840211) ^ (16 * (v40 ^ 0x40840211)) & 0x6AD40750;
  v43 = v41 ^ 0x6AD40751 ^ (v42 ^ 0x28400500) & (v41 << 8);
  v44 = (v43 << 16) & 0x540000 ^ v43 ^ ((v43 << 16) ^ 0x510000) & (((v42 ^ 0x42940241) << 8) & 0x540000 ^ 0x500000 ^ (((v42 ^ 0x42940241) << 8) ^ 0x70000) & (v42 ^ 0x42940241));
  LOBYTE(v26) = v28[v26 + 138481222];
  LOBYTE(v42) = v26 & 0x94 ^ 0x85;
  LOBYTE(v26) = v26 ^ (2 * ((v26 ^ 0xA) & (2 * ((v26 ^ 0xA) & (2 * ((v26 ^ 0xA) & (2 * ((v26 ^ 0xA) & (2 * (((2 * v26) & 0x14 ^ 0x1E) & v26 ^ (v42 | 0xA))) ^ v42)) ^ v42)) ^ v42)) ^ v42));
  v45 = ((v36 << 8) ^ (v44 << 9) ^ 0xA498769E) & (v26 ^ 0xFFFFFF4A) | v26 & 0x61;
  v46 = (((v15 ^ 8) & (2 * ((v15 ^ 8) & (2 * ((v15 ^ 8) & (2 * ((v15 ^ 0xA) & (2 * (v15 & (2 * v35) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35) << 17) ^ (v15 << 16);
  v47 = v14[5];
  STACK[0xB38] = v47;
  LODWORD(v15) = (v28[v47 ^ 0x44] - 118);
  v48 = (v46 ^ 0x7FF909) & ((v15 << 8) ^ 0xFFFB5B) & 0xFFFFF9FF | (((v15 >> 1) & 3) << 9);
  v49 = v14[8];
  STACK[0xB30] = v49;
  LODWORD(v15) = v28[v49 ^ 0x44];
  v50 = v15 & 0x26 ^ 0x5E;
  LOBYTE(v18) = v28[v18 ^ 0x44] - 118;
  v51 = (v48 ^ 0x87DC39) & (v18 ^ 0xFFFFFFBF) | v18 & 0xCF;
  v52 = v14[9];
  STACK[0xB28] = v52;
  LODWORD(v18) = (v28[v52 ^ 0x44] - 118) << 8;
  LODWORD(v15) = ((((v15 ^ 8) & (2 * ((v15 ^ 8) & (2 * ((v15 ^ 8) & (2 * ((v15 ^ 8) & (2 * (((2 * v15) & 0x14 ^ 0x2C) & (v15 ^ 8) ^ v50)) ^ v50)) ^ v50)) ^ v50)) ^ v50) << 17) ^ (v15 << 16) ^ 0xAD0A8C) & (v18 ^ 0xFFFE9D);
  v53 = v14[7];
  STACK[0xB40] = v53;
  LOBYTE(v50) = v28[v53 ^ 0x44];
  LODWORD(v18) = v15 | v18 & 0xF500;
  LOBYTE(v15) = v50 & 0xA8 ^ 0x93;
  LOBYTE(v15) = v50 ^ (2 * ((v50 ^ 0xA) & (2 * ((v50 ^ 0xA) & (2 * ((v50 ^ 0xA) & (2 * ((v50 ^ 0xA) & (2 * (((2 * v50) & 0x14 | 0x22) & (v50 ^ 0xA) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15));
  LODWORD(v15) = ((v51 << 8) ^ 0x491DBF42) & (v15 ^ 0xFFFFFFDB) | v15 & 0xBD;
  v54 = v14[10];
  STACK[0xB20] = v54;
  LODWORD(v54) = (v18 ^ 0xB61D87) & ((v28[v54 ^ 0x44] - 118) ^ 0xFFFF6B) | (v28[v54 ^ 0x44] - 118) & 0xF4;
  v55 = v14[12];
  STACK[0xB00] = v55;
  LOBYTE(v18) = v28[v55 ^ 0x44];
  LOBYTE(v50) = v18 & 0x56 ^ 0xE6;
  LOBYTE(v18) = v18 ^ (2 * ((v18 ^ 8) & (2 * ((v18 ^ 8) & (2 * ((v18 ^ 8) & (2 * ((v18 ^ 8) & (2 * (((2 * v18) & 0x14 ^ 0x5C) & (v18 ^ 8) ^ v50)) ^ v50)) ^ v50)) ^ v50)) ^ v50));
  v56 = v14[11];
  STACK[0xB18] = v56;
  LOBYTE(v50) = v28[v56 ^ 0x44];
  LOBYTE(v44) = v50 & 0x4C ^ 0xE1;
  LOBYTE(v50) = v50 ^ (2 * ((v50 ^ 0xA) & (2 * ((v50 ^ 0xA) & (2 * ((v50 ^ 0xA) & (2 * ((v50 ^ 0xA) & (2 * (((2 * v50) & 0x14 ^ 0x46) & (v50 ^ 0xA) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44));
  v57 = ((v54 << 8) ^ 0xB3FDEFDB) & (v50 ^ 0xFFFFFFB7) | v50 & 0x24;
  v58 = v14[13];
  STACK[0xAF8] = v58;
  LODWORD(v58) = (v28[v58 ^ 0x44] - 118) << 8;
  v59 = v14[14];
  *(v12 - 184) = v14;
  STACK[0xB08] = v59;
  v60 = v28[v59 ^ 0x44];
  STACK[0xF08] = v28;
  LODWORD(v58) = ((((v18 << 16) ^ 0x45627592) & (v58 ^ 0x45FF7592) | v58 & 0x8A00) ^ 0x7D325C) & (~(v60 - 118) | 0xFFFF00) | (v60 - 118) & 0x31;
  v61 = v14[15];
  STACK[0xB10] = v61;
  LOBYTE(v18) = v28[v61 ^ 0x44];
  LOBYTE(v60) = v18 & 0x1C ^ 0xC9;
  LOBYTE(v60) = v18 ^ (2 * ((v18 ^ 0xA) & (2 * ((v18 ^ 0xA) & (2 * ((v18 ^ 0xA) & (2 * ((v18 ^ 0xA) & (2 * (((2 * v18) & 0x14 ^ 0x16) & (v18 ^ 0xA) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60));
  LODWORD(v28) = LODWORD(STACK[0xC90]) ^ (v60 & 9 | 0x2201000) ^ ((v58 << 8) ^ 0x575CC5F6) & (v60 ^ 0xFFFFFFE2);
  *(v12 - 224) = v28;
  v62 = LODWORD(STACK[0xD40]) ^ v45;
  v63 = *(&off_1010A0B50 + v27 - 36852) - 293957842;
  *(v12 - 240) = v62;
  LODWORD(v58) = *&v63[4 * (HIBYTE(v62) ^ 0x95)] - (HIBYTE(v62) ^ 0x95 | 0x3C);
  v64 = (~(901284066 * v58) | 0x8B4FDBA5) + 450642033 * v58;
  LODWORD(v58) = ((1535643168 * v58) & 0xFED7FBC0) + ((-1379662064 * v58) ^ 0xFF6BFDE7) + 1639665335;
  v65 = (2 * (v58 & 0x83EC1530)) & 0x3580040 ^ v58 & 0x83EC1530 ^ ((2 * (v58 & 0x83EC1530)) | 4) & (v58 ^ 0x40931478);
  v66 = (2 * (v58 ^ 0x40931478)) & 0xC37F0148 ^ 0x4101014A ^ ((2 * (v58 ^ 0x40931478)) ^ 0x86FE0294) & (v58 ^ 0x40931478);
  v67 = (4 * v65) & 0x3700140 ^ v65 ^ ((4 * v65) | 8) & v66;
  v68 = (4 * v66) & 0xC37F0148 ^ 0xC2030042 ^ ((4 * v66) ^ 0xDFC0528) & v66;
  v69 = v67 ^ (16 * v67) & 0xC37F0140 ^ ((16 * v67) ^ 0xA0) & v68;
  v70 = (16 * v68) & 0xC37F0140 ^ 0xC00F014A ^ ((16 * v68) ^ 0x37F014A0) & v68;
  v71 = ((v69 ^ 0xC37F0140) << 8) & 0xC37F0100 ^ v69 ^ 0xC37F0140 ^ (((v69 ^ 0xC37F0140) << 8) ^ 0x7F014A00) & v70;
  LODWORD(v58) = (v64 + 978850350) ^ v58;
  v72 = *(&off_1010A0B50 + v27 - 40440) - 2022358774;
  HIDWORD(v31) = *&v72[4 * (BYTE2(v28) ^ 0xAB)] - (BYTE2(v28) ^ 0xAB | 0xB9);
  LODWORD(v31) = HIDWORD(v31);
  v73 = v58 ^ (2 * ((v71 << 16) & 0x437F0000 ^ v71 ^ ((v71 << 16) ^ 0x14A0000) & ((v70 << 8) & 0x437F0000 ^ ((v70 << 8) ^ 0x7F010000) & v70 ^ 0x7E0000)));
  v74 = (v31 >> 10) - ((2 * (v31 >> 10)) & 0xD7823F98);
  v75 = ((((v31 & 0x40000000000) != 0) ^ 0x3EA2335D) + 1442137404) ^ (((v31 & 0x40000000000) != 0) + 1957132407) ^ ((((v31 & 0x40000000000) != 0) ^ 0xFB0A1611) - 1872928648);
  v76 = v75 + 342034705;
  LODWORD(v58) = ((v76 ^ 0xE927541C) & (2 * (v76 & 0x88)) | v76 & 0x88) ^ ((16 * (((v76 & 0x88) >> 3) & 1)) | 0x6020C000);
  v77 = (2 * (v76 ^ 0xE927541C)) & 0x6962D494 ^ 0x29225494 ^ ((2 * (v76 ^ 0xE927541C)) ^ 0xD2C5A928) & (v76 ^ 0xE927541C);
  LODWORD(v58) = ((4 * v58) & 0x20400 | v58) ^ ((4 * v58) ^ 0x80830000) & v77;
  v78 = (4 * v77) & 0x6962D490 ^ 0x48608484 ^ ((4 * v77) ^ 0xA58B5250) & v77;
  LODWORD(v58) = (16 * v58) & 0x6962D490 ^ v58 ^ ((16 * v58) ^ 0x22C0000) & v78;
  v79 = (16 * v78) & 0x6962D480 ^ 0x69429494 ^ ((16 * v78) ^ 0x962D4940) & v78;
  LODWORD(v58) = v58 ^ (v58 << 8) & 0x6962D400 ^ ((v58 << 8) ^ 0x2C00000) & v79;
  v80 = LODWORD(STACK[0xC88]) ^ __ROR4__(__ROR4__(v73 ^ 0x59C54F18, 11) ^ 0xE82E61D9, 21);
  LODWORD(v58) = (v75 + 342034705) ^ (2 * (((v58 ^ 0x9201494) << 16) & 0x69620000 ^ v58 ^ 0x9201494 ^ (((v58 ^ 0x9201494) << 16) ^ 0x54940000) & ((v79 << 8) & 0x69620000 ^ 0x9220000 ^ ((v79 << 8) ^ 0x62D40000) & v79)));
  v81 = (v80 ^ 0xA94CE949) & (v58 ^ 0xD28029A0) ^ v58 & 0x34E1AC5C;
  v82 = LODWORD(STACK[0xC98]) ^ v15;
  v83 = LODWORD(STACK[0xD38]) ^ v57;
  v84 = *(&off_1010A0B50 + v27 - 37428) - 1253737746;
  HIDWORD(v31) = *&v84[4 * (BYTE1(v83) ^ 6)] - (BYTE1(v83) ^ 6 | 0x6C);
  LODWORD(v31) = HIDWORD(v31);
  v86 = (v31 >> 22) - ((2 * (v31 >> 22)) & 0x7AA79D3A);
  if (v13)
  {
    v87 = v9 ^ 0x94;
  }

  else
  {
    v87 = 78;
  }

  LODWORD(STACK[0x1010]) = v87;
  if (v13)
  {
    v88 = HIWORD(v6) ^ 0x19;
  }

  else
  {
    v88 = 59;
  }

  *(v12 - 248) = v88;
  if (v13)
  {
    v89 = (v7 >> 8) ^ 0x4F;
  }

  else
  {
    v89 = 39;
  }

  LODWORD(STACK[0xFF8]) = v89;
  if (v13)
  {
    v90 = (v6 >> 8) ^ 0x9C;
  }

  else
  {
    v90 = -110;
  }

  LODWORD(STACK[0x1018]) = v90;
  if (v13)
  {
    v91 = a3 ^ 0x30;
  }

  else
  {
    v91 = -40;
  }

  LODWORD(STACK[0x1058]) = v91;
  if (v13)
  {
    v92 = (v9 >> 8) ^ 0x2C;
  }

  else
  {
    v92 = -45;
  }

  LODWORD(STACK[0xFE8]) = v92;
  v93 = v6 ^ 0xA9;
  v94 = HIBYTE(v6) ^ 0xC7;
  if (v13)
  {
    v95 = (a3 >> 8) ^ 0x2A;
  }

  else
  {
    v95 = 19;
  }

  LODWORD(STACK[0x1008]) = v95;
  v96 = HIBYTE(v9);
  v97 = HIWORD(v9) ^ 0x44;
  if (v13)
  {
    v98 = v97;
  }

  else
  {
    v98 = -32;
  }

  LODWORD(STACK[0x1050]) = v98;
  v99 = HIBYTE(a3) ^ 0xFFFFFF8B;
  v100 = HIWORD(a3) ^ 0x7B;
  if (v13)
  {
    v101 = v7 ^ 3;
  }

  else
  {
    v101 = -122;
  }

  LODWORD(STACK[0x1028]) = v101;
  if (v13)
  {
    v102 = v100;
  }

  else
  {
    v102 = -18;
  }

  LODWORD(STACK[0x1000]) = v102;
  if (v13)
  {
    v103 = HIWORD(v7) ^ 0xD1;
  }

  else
  {
    v103 = 127;
  }

  LODWORD(STACK[0x1030]) = v103;
  if (!v13)
  {
    v94 = 47;
  }

  LODWORD(STACK[0x1048]) = v94;
  if (v13)
  {
    v104 = v93;
  }

  else
  {
    v104 = 32;
  }

  LODWORD(STACK[0x1020]) = v104;
  if (v13)
  {
    v105 = v99;
  }

  else
  {
    v105 = -12;
  }

  LODWORD(STACK[0xFF0]) = v105;
  v106 = HIBYTE(v7) ^ 0x77;
  if (v13)
  {
    v107 = ~v96;
  }

  else
  {
    v107 = -10;
  }

  LODWORD(STACK[0xFE0]) = v107;
  if (!v13)
  {
    v106 = 80;
  }

  *(v12 - 256) = v106;
  v13 = v81 == 276834304;
  v108 = -351144481 - v75;
  if (v13)
  {
    v108 = v75 + 342034705;
  }

  v109 = (((v80 ^ 0xB5BD2820) + 1489428242) ^ ((v80 ^ 0x40D5BDAC) - 1381086562) ^ ((v80 ^ 0x68C5D099) - 2051135575)) + 820774465 + v108;
  v110 = *&v63[4 * (HIBYTE(v82) ^ 0xB3)] - (HIBYTE(v82) ^ 0xB3 | 0x3C);
  v111 = 450642033 * v110 - ((901284066 * v110) & 0x672E5194);
  HIDWORD(v112) = *&v72[4 * (BYTE2(v62) ^ 0x15)] - (BYTE2(v62) ^ 0x15 | 0xB9);
  LODWORD(v112) = HIDWORD(v112);
  v113 = (v112 >> 10) - ((2 * (v112 >> 10)) & 0x15C3AB86);
  v114 = ((1535643168 * v110) & 0xFEA7FF20) + ((-1379662064 * v110) ^ 0xFF53FF95) - 1100522653;
  v115 = (2 * (v114 & 0x275806D0)) & 0xC100980 ^ v114 & 0x275806D0 ^ ((2 * (v114 & 0x275806D0)) | 0x10) & (v114 ^ 0x2B078F09);
  v116 = (2 * (v114 ^ 0x2B078F09)) & 0xC5F89C0 ^ 0x4408851 ^ ((2 * (v114 ^ 0x2B078F09)) ^ 0x18BF13A0) & (v114 ^ 0x2B078F09);
  v117 = (4 * v115) & 0xC4009C0 ^ v115 ^ ((4 * v115) ^ 0x60) & v116;
  v118 = (4 * v116) & 0xC5F89D0 ^ 0xC018891 ^ ((4 * v116) ^ 0x317E2744) & v116;
  v119 = (16 * v117) & 0xC5F89D0 ^ v117 ^ ((16 * v117) ^ 0x580) & v118;
  v120 = (16 * v118) & 0xC5F89D0 ^ 0x80700C1 ^ ((16 * v118) ^ 0xC5F89D10) & v118;
  v121 = v119 ^ (v119 << 8) & 0xC5F8900 ^ ((v119 << 8) ^ 0x1D800) & v120 ^ 0xC5E0009;
  v122 = ((v121 << 16) ^ 0x9D10000) & ((v120 << 8) & 0xC5F0000 ^ 0x560000 ^ ((v120 << 8) ^ 0x5F890000) & v120);
  v123 = *(&off_1010A0B50 + (v27 ^ 0xB0DA)) - 629248406;
  v124 = *(v12 - 224);
  HIDWORD(v112) = *&v84[4 * (BYTE1(v124) ^ 0xE2)] - (BYTE1(v124) ^ 0xE2 | 0x6C);
  LODWORD(v112) = HIDWORD(v112);
  v125 = LODWORD(STACK[0xC80]) ^ v121 ^ (v121 << 16) & 0xC5F0000 ^ v122;
  v85 = ((v82 ^ 0x8B770266) + 346918838) ^ ((v82 ^ 0xF16DD582) + 1857509458) ^ ((v82 ^ 0x7A1AD7F1) - 440378845);
  *(v12 - 232) = (*&v123[4 * (v82 ^ 0xD2)] + (v82 ^ 0xD2) * (v82 ^ 0xD2)) ^ v82 ^ (v85 + 1908429938) ^ (((v85 + 1908429938) ^ 0x5AF6503B) - 26691090) ^ (((v85 + 1908429938) ^ 0x9927B2B0) + 1035557735) ^ (((v85 + 1908429938) ^ 0xE75F0359) + 1136781968) ^ (((v85 + 1908429938) ^ 0x7FEFF7FB) - 613343698) ^ (v86 + 1028902557) ^ (v74 + 1807818700) & 0xFFFFFFFE ^ v109 ^ ((v109 ^ 0x34634F6C) - 354318514) ^ ((v109 ^ 0xE8DD5137) + 912234775) ^ ((v109 ^ 0xC23CD67A) + 482221660) ^ ((v109 ^ 0x3FFFFFFF) - 511887393);
  v126 = *&v63[4 * (HIBYTE(v83) ^ 0x4C)] - (HIBYTE(v83) ^ 0x4C | 0x3C);
  v127 = 450642033 * v126 - ((901284066 * v126) & 0x6F6BBADC);
  v128 = v83 ^ 0x67;
  v129 = 2 * v128 - ((((2 * ((v128 + 16) & v128)) ^ 0x760C51E5) + 1482141555) ^ (((2 * ((v128 + 16) & v128)) ^ 0x2F29D65A) + 24258766) ^ (((2 * ((v128 + 16) & v128)) ^ 0x592587BF) + 2004777257));
  v130 = ((461901344 * v126) & 0x3FE6F2C0) + ((-1379662064 * v126) ^ 0x1FF37968) - 500770136;
  v131 = (v130 ^ 0xE0FCE9A6) & (2 * (v130 & 0xE2F90DC0)) ^ v130 & 0xE2F90DC0;
  v132 = ((2 * (v130 ^ 0x216EE8A6)) ^ 0x872FCAC4) & (v130 ^ 0x216EE8A6) ^ (2 * (v130 ^ 0x216EE8A6)) & 0xC397E564;
  v133 = (v132 ^ 0x83044000) & (4 * v131) ^ v131;
  v134 = ((4 * (v132 ^ 0x40902522)) ^ 0xE5F9598) & (v132 ^ 0x40902522) ^ (4 * (v132 ^ 0x40902522)) & 0xC397E560;
  v135 = (v134 ^ 0x2178500) & (16 * v133) ^ v133;
  v136 = ((16 * (v134 ^ 0xC1806066)) ^ 0x397E5660) & (v134 ^ 0xC1806066) ^ (16 * (v134 ^ 0xC1806066)) & 0xC397E560;
  v137 = v135 ^ 0xC397E566 ^ (v136 ^ 0x1164400) & (v135 << 8);
  v138 = *&v63[4 * (HIBYTE(v124) ^ 0x70)] - (HIBYTE(v124) ^ 0x70 | 0x3C);
  v139 = LODWORD(STACK[0xC78]) ^ (*&v123[4 * (v83 ^ 0xA0)] + (v83 ^ 0xA0) * (v83 ^ 0xA0)) ^ (v111 - 1281939254) ^ v114 ^ (v129 + 199020447) ^ (((v129 + 199020447) ^ 0xEAEBCB95) + 844312734) ^ (((v129 + 199020447) ^ 0xDDA0886D) + 85488486) ^ (((v129 + 199020447) ^ 0xFFE3B860) + 660292457) ^ (((v129 + 199020447) ^ 0xEFEFFF6F) + 928449640) ^ ((v112 >> 22) - ((2 * (v112 >> 22)) & 0x81FEF12A) + 1090484373) ^ (v113 + 182572483) ^ (2 * v125);
  HIDWORD(v112) = *&v84[4 * (BYTE1(*(v12 - 240)) ^ 0xBC)] - (BYTE1(*(v12 - 240)) ^ 0xBC | 0x6C);
  LODWORD(v112) = HIDWORD(v112);
  v140 = v112 >> 22;
  HIDWORD(v112) = *&v72[4 * (BYTE2(v82) ^ 0x24)] - (BYTE2(v82) ^ 0x24 | 0xB9);
  LODWORD(v112) = HIDWORD(v112);
  v141 = (v112 >> 10) - ((2 * (v112 >> 10)) & 0x7122F058);
  v124 = v124;
  HIDWORD(v112) = *&v72[4 * (BYTE2(v83) ^ 0x84)] - (BYTE2(v83) ^ 0x84 | 0xB9);
  LODWORD(v112) = HIDWORD(v112);
  v142 = LODWORD(STACK[0xC68]) ^ (*&v123[4 * (v124 ^ 9)] + (v124 ^ 9) * (v124 ^ 9)) ^ (v127 + 934665582) ^ v130 ^ (v141 - 1198426068);
  v143 = (((v124 ^ 0x4C2925CD) + 1517005711) ^ ((v124 ^ 0x91473B72) - 2029669070) ^ ((v124 ^ 0xDD6E1E71) - 886271949)) + 36714094;
  v144 = v142 ^ v143 ^ ((v143 ^ 0xFC6231EE) + 1638217470) ^ ((v143 ^ 0x75D75CE3) - 401581071) ^ ((v143 ^ 0x14316A0E) - 1980338914) ^ ((v143 ^ 0xFFBCFFEF) + 1652291837) ^ (v140 - ((2 * v140) & 0x5B0A0C70) + 763692600) ^ (2 * (LODWORD(STACK[0xC74]) ^ v137 ^ (v137 << 16) & 0x43970000 ^ ((v137 << 16) ^ 0x65660000) & (((v136 ^ 0xC281A106) << 8) & 0x43970000 ^ 0x40120000 ^ (((v136 ^ 0xC281A106) << 8) ^ 0x17E50000) & (v136 ^ 0xC281A106))));
  v145 = ((1535643168 * v138) & 0xF7BCFFC0) + ((-1379662064 * v138) ^ 0x7BDE7FE1) - 791291791;
  v146 = LODWORD(STACK[0xC60]) ^ ((v112 >> 10) - ((2 * (v112 >> 10)) & 0x6BBBA96E) + 903730359) ^ (450642033 * v138 - ((901284066 * v138) & 0xF669DB8E) - 80417337) ^ v145 ^ ((v145 ^ 0xD4C0EE8E) + 1285548020) ^ ((v145 ^ 0x11C3433A) - 1986246072) ^ ((v145 ^ 0x5C5CB6E9) - 1006387307) ^ ((v145 ^ 0xFEFFEDDF) + 1721820323) ^ 0x76696F3F;
  v147 = *(v12 - 240);
  v148 = ((v147 ^ 0x2A353A3B) + 2039941039) ^ ((v147 ^ 0xD07E5663) - 2082706441) ^ ((v147 ^ 0xFA4B6CF7) - 1444327069);
  HIDWORD(v112) = *&v84[4 * (BYTE1(v82) ^ 0x8C)] - (BYTE1(v82) ^ 0x8C | 0x6C);
  LODWORD(v112) = HIDWORD(v112);
  v149 = ((v112 >> 22) - ((2 * (v112 >> 22)) & 0x47C0DDB8) - 1545572644) ^ v147 ^ __ROR4__(__ROR4__(__ROR4__(v146, 26) ^ 0x87616DE7, 14) ^ 0x429D493A, 24) ^ (v148 - 1720027912) ^ (((v148 - 1720027912) ^ 0x96FEF2F7) + 1608772396) ^ (((v148 - 1720027912) ^ 0x242C3499) - 315544250) ^ (((v148 - 1720027912) ^ 0x79CFDD32) - 1328364305) ^ (*&v123[4 * (v147 ^ 0x68)] + (v147 ^ 0x68) * (v147 ^ 0x68)) ^ (((v148 - 1720027912) ^ 0xFDFFFD7F) + 887284900) ^ 0x8827958D;
  v150 = *(v12 - 232);
  v151 = HIBYTE(v150) & 0xFE ^ (HIBYTE(v150) & 1 | 0x100290C0) ^ 0x10029009;
  v152 = STACK[0xFC8];
  v153 = *(&off_1010A0B50 + (LODWORD(STACK[0xFC8]) ^ 0xB304)) - 447416346;
  v154 = *&v153[4 * v151];
  HIDWORD(v112) = v154 - v151;
  LODWORD(v112) = v154 - (v151 | 0x58);
  v155 = (v112 >> 2) - ((2 * (v112 >> 2)) & 0xB73550AC);
  BYTE1(v154) = BYTE1(v139) ^ 0x52;
  v156 = (v139 ^ 0xAB4B5253) >> 24;
  v157 = *&v153[4 * v156];
  HIDWORD(v112) = v157 - v156;
  LODWORD(v112) = v157 - (v156 | 0x58);
  v158 = v149 - ((2 * v149) & 0x46B94A46) + 593274147 - ((2 * (v149 - ((2 * v149) & 0x46B94A46) + 593274147)) & 0xB2E4472E) - 646831209;
  v159 = *(&off_1010A0B50 + LODWORD(STACK[0xFC8]) - 38348) - 1862108522;
  v160 = *(&off_1010A0B50 + (LODWORD(STACK[0xFC8]) ^ 0xAB37)) - 1700590735;
  v161 = v144 ^ v124;
  v162 = *(&off_1010A0B50 + LODWORD(STACK[0xFC8]) - 39253) - 2098755899;
  v163 = *&v162[4 * (((v161 ^ 0x8117) >> 8) ^ 0x71)] - (((v161 ^ 0x8117) >> 8) ^ 0x71 | 0x54) + (((v161 ^ 0x8117) >> 8) ^ 0x43F67911);
  v164 = (v112 >> 2) - ((2 * (v112 >> 2)) & 0x212B78F2) - 1869235079;
  v165 = (*&v160[4 * (v139 ^ 0x53)] - (v139 ^ 0x53 | 0x11)) ^ 0xF375FFAF;
  v166 = LODWORD(STACK[0xD30]) ^ v165 ^ (32 * v165) ^ BYTE2(v158) ^ (*&v159[4 * (BYTE2(v158) ^ 0xF6)] + (BYTE2(v158) ^ 0xF6) * (BYTE2(v158) ^ 0xF6)) ^ (v163 - ((2 * v163) & 0x2F49FD5E) - 1750794577) ^ (v155 + 1536862294) ^ ((v155 + 1536862294) >> 1) & 0x72EE5BB7;
  v167 = *&v162[4 * (BYTE1(v158) ^ 0x52)] - (BYTE1(v158) ^ 0x52 | 0x54) + (BYTE1(v158) ^ 0x43F67932);
  v168 = (v167 - ((2 * v167) & 0x167E0348) - 1958805084) ^ __ROR4__(__ROR4__(__ROR4__(LODWORD(STACK[0xC58]) ^ v164 ^ (v164 >> 1) & 0x72EE5BB7 ^ BYTE2(v150) ^ 0x90F10F24 ^ (*&v159[4 * (BYTE2(v150) ^ 7)] + (BYTE2(v150) ^ 7) * (BYTE2(v150) ^ 7)), 16) ^ 0x73031CA9, 3) ^ 0x1F149800, 13);
  v169 = (v161 ^ 0x94758117) >> 24;
  v170 = *&v153[4 * v169];
  HIDWORD(v112) = v170 - v169;
  LODWORD(v112) = v170 - (v169 | 0x58);
  v171 = (v112 >> 2) - ((2 * (v112 >> 2)) & 0x9B30EF34);
  v172 = (*&v160[4 * (v161 & 0x80 | (v161 ^ 0x94758117) & 0x7F)] - (v161 & 0x80 | (v161 ^ 0x94758117) & 0x7F | 0x11)) ^ 0x8C8DDFCF;
  v173 = v172 ^ (32 * v172);
  v174 = (v168 ^ 0x726F6559) & (v173 ^ 0x592BCB8) ^ v168 & 0x2549B8AD;
  v175 = *&v162[4 * (BYTE1(v150) ^ 0xB9)] - (BYTE1(v150) ^ 0xB9 | 0x54) + (BYTE1(v150) ^ 0x43F679D9);
  v176 = BYTE2(v139);
  v177 = *&v159[4 * (BYTE2(v139) ^ 0xCF)] + (BYTE2(v139) ^ 0xCF) * (BYTE2(v139) ^ 0xCF);
  v178 = ((v168 ^ 0x800C314) - 1429181947) ^ ((v168 ^ 0x4CEA3B4E) - 298151329) ^ ((v168 ^ 0xB6859D03) + 341128212);
  v179 = *&v160[4 * (v158 ^ 0xE8)] - (v158 ^ 0xE8 | 0x11);
  v180 = HIBYTE(v158) ^ 0xED;
  LODWORD(v153) = *&v153[4 * v180];
  HIDWORD(v112) = v153 - v180;
  LODWORD(v112) = v153 - (v180 | 0x58);
  v181 = (((v173 ^ 0x3F99D32D) + 1398560806) ^ ((v173 ^ 0x8861AC70) - 459004039) ^ ((v173 ^ 0x17237B48) + 2078732353)) + v178 + ((2 * v174) ^ 0xBF6DBFED);
  v182 = LODWORD(STACK[0xC50]) ^ v176 ^ v177 ^ (v171 - 845645926) ^ v179 ^ 0x61D6AFEC ^ ((v171 - 845645926) >> 1) & 0x72EE5BB7 ^ (32 * (v179 ^ 0x61D6AFEC)) ^ (v175 - ((2 * v175) & 0x61D4C9E4) - 1326816014);
  v183 = *&v162[4 * (BYTE1(v154) ^ 0x71)] - (BYTE1(v154) ^ 0x71 | 0x54) + (BYTE1(v154) ^ 0x43F67911);
  LODWORD(v112) = __ROR4__(__ROR4__(__ROR4__((v112 >> 2) - ((2 * (v112 >> 2)) & 0xC7A9572C) - 472601706, 3) ^ 0xB897D6DE, 10) ^ 0x95F2A3B3, 22) ^ 0x5CE8413D;
  HIDWORD(v112) = v112;
  v184 = (*&v160[4 * (v150 ^ 0xD8)] - (v150 ^ 0xD8 | 0x11)) ^ 0x292C8894;
  v185 = LODWORD(STACK[0xC48]) ^ BYTE2(v144) ^ (*&v159[4 * (BYTE2(v144) ^ 0xF1)] + (BYTE2(v144) ^ 0xF1) * (BYTE2(v144) ^ 0xF1)) ^ (v183 - ((2 * v183) & 0x1D024662) - 1904139471) ^ (v112 >> 29) ^ ((v112 >> 29) >> 1) & 0x72EE5BB7 ^ v184 ^ (32 * v184);
  v186 = ((2 * v185) & 0x66C2CD5E ^ 0xF93FB2E5) - 677814913 + (((v185 ^ 0xEAE5DB75) + 844102857) ^ ((v185 ^ 0x785DDA50) - 1594360338) ^ ((v185 ^ 0x11DA2FA8) - 915404778));
  v187 = (((HIBYTE(v166) ^ 0x43543758) - 2140516378) ^ ((HIBYTE(v166) ^ 0x9D887D8B) + 1588987191) ^ ((HIBYTE(v166) ^ 0xDEDC4AD9) + 501363301)) - (((HIBYTE(v166) ^ 0x1F69B3C8) - 1062378065) ^ ((HIBYTE(v166) ^ 0x18A18DEB) - 949658738) ^ ((HIBYTE(v166) ^ 0x9119D4F5) + 1323106964)) - 1502999168;
  v188 = (v187 ^ 0x9E48A774) & (2 * (v187 & 0xDF6CB679)) ^ v187 & 0xDF6CB679;
  LODWORD(v159) = ((2 * (v187 ^ 0xB498E334)) ^ 0xD7E8AA9A) & (v187 ^ 0xB498E334) ^ (2 * (v187 ^ 0xB498E334)) & 0x6BF4554C;
  v189 = (v159 ^ 0x43E00008) & (4 * v188) ^ v188;
  LODWORD(v159) = ((4 * (v159 ^ 0x28145545)) ^ 0xAFD15534) & (v159 ^ 0x28145545) ^ (4 * (v159 ^ 0x28145545)) & 0x6BF4554C;
  v190 = (v159 ^ 0x2BD05500) & (16 * v189) ^ v189;
  LODWORD(v159) = ((16 * (v159 ^ 0x40240049)) ^ 0xBF4554D0) & (v159 ^ 0x40240049) ^ (16 * (v159 ^ 0x40240049)) & 0x6BF45540;
  v191 = v190 ^ 0x6BF4554D ^ (v159 ^ 0x2B445400) & (v190 << 8);
  v192 = (v191 << 16) & 0x6BF40000 ^ v191 ^ ((v191 << 16) ^ 0x554D0000) & (((v159 ^ 0x40B0010D) << 8) & 0x6BF40000 ^ 0xBA00000 ^ (((v159 ^ 0x40B0010D) << 8) ^ 0x74550000) & (v159 ^ 0x40B0010D));
  v193 = *(&off_1010A0B50 + (LODWORD(STACK[0xFC8]) ^ 0xB378)) - 1449424454;
  v194 = *(&off_1010A0B50 + (LODWORD(STACK[0xFC8]) ^ 0xAF58)) - 835590438;
  v195 = (*&v193[4 * (HIBYTE(v166) ^ 0xF9)] - (HIBYTE(v166) ^ 0xF9 | 0xE0)) ^ LODWORD(STACK[0xB88]) ^ v187 ^ (2 * v192);
  LODWORD(v153) = ((v195 & 1 ^ 0xB9DC7F29) + 1931781966) ^ ((v195 & 1) - 855581851) ^ ((v195 & 1 ^ 0xF0E0BEE9) + 974677646);
  v196 = v153 - 2109718318;
  v197 = ((v196 ^ 0xC2BF8AA8) + 1887005793) ^ v196 ^ ((v196 ^ 0x1CA408E3) - 1369248212) ^ ((v196 ^ 0x4DD96483) - 14712244) ^ ((v196 ^ 0xDEFBFFFF) + 1815943480);
  v198 = 405926300 - v153;
  if (((v197 ^ 0x4D391937) & STACK[0xD28] ^ v197 & 0x22797E6C) == 0x391824)
  {
    v198 = v196;
  }

  v199 = v181 - 484334439;
  v200 = STACK[0xFC8];
  v201 = *(&off_1010A0B50 + (v152 ^ 0xA13E)) - 1402397266;
  v202 = *&v201[4 * ((v182 ^ 0xA469) >> 8)];
  HIDWORD(v203) = v202 - (((v182 ^ 0xC923A469) >> 8) | 8);
  LODWORD(v203) = v202 - (((v182 ^ 0xA469) >> 8) | 0xF8);
  v204 = *(&off_1010A0B50 + v152 - 40528) - 1482990094;
  v205 = (*&v204[4 * (v199 ^ 0x95)] - (v199 ^ 0x95 | 0xA1)) ^ ((v203 >> 4) - ((2 * (v203 >> 4)) & 0xB9B9E410) - 589499896) ^ ((v199 & 0x4D ^ 0x585BAA97) & (v199 & 0xB2 ^ 0x5C5FAFED) | v199 & 0x20) ^ __ROR4__(__ROR4__(BYTE2(v186) ^ (*&v194[4 * (BYTE2(v186) ^ 0xA)] + (BYTE2(v186) ^ 0xA) * (BYTE2(v186) ^ 0xA)) ^ v195 & 0xFFFFFFFE ^ (LODWORD(STACK[0xD20]) + v198) ^ (((LODWORD(STACK[0xD20]) + v198) ^ 0xE8089D3D) + 820567317) ^ (((LODWORD(STACK[0xD20]) + v198) ^ 0x20BD7968) - 128108222) ^ (((LODWORD(STACK[0xD20]) + v198) ^ 0x1A77A67C) - 1030232490) ^ (((LODWORD(STACK[0xD20]) + v198) ^ 0xF5DDFDFF) + 759021015) ^ 0x96EFD829, 2) ^ 0xA7686F48, 30);
  v206 = *(&off_1010A0B50 + v152 - 38396) - 1763133210;
  v207 = *&v206[4 * (BYTE2(v205) ^ 0x7A)] - (BYTE2(v205) ^ 0x7A | 0xD5);
  v208 = ((2 * v207) & 0xEFF6C7CA ^ 0xED90810A) + (v207 ^ 0x81372360);
  LODWORD(STACK[0xEE8]) = v208;
  v209 = 1806832904 * v208 + 1063696947;
  v210 = (v209 ^ 0xB501590A) & (2 * (v209 & 0x35525DA0)) ^ v209 & 0x35525DA0;
  v211 = (2 * (v209 ^ 0xF5817A0A)) & 0xC0D327A2 ^ 0x405120A1 ^ ((2 * (v209 ^ 0xF5817A0A)) ^ 0x81A64F58) & (v209 ^ 0xF5817A0A);
  v212 = (4 * v210) & 0xC0D32780 ^ v210 ^ ((4 * v210) | 8) & v211;
  v213 = (4 * v211) & 0xC0D327AC ^ 0xC0932103 ^ ((4 * v211) ^ 0x34C9EB8) & v211;
  v214 = (16 * v212) & 0xC0D327A0 ^ v212 ^ ((16 * v212) ^ 0xF0) & v213;
  v215 = (16 * v213) & 0xC0D327A0 ^ 0xC0C1050F ^ ((16 * v213) ^ 0xD327AF0) & v213;
  v216 = (v214 << 8) & 0xC0D32700 ^ v214 ^ ((v214 << 8) ^ 0xAF00) & v215;
  v217 = v209 ^ (2 * ((v216 << 16) & 0x40D30000 ^ v216 ^ ((v216 << 16) ^ 0x27AF0000) & ((v215 << 8) & 0x40D30000 ^ 0xD00000 ^ ((v215 << 8) ^ 0x53270000) & v215)));
  LODWORD(STACK[0xEF0]) = v217;
  v218 = ((v217 & 0x10000 ^ 0xC535CF56) - 1060689197) ^ (v217 & 0x10000 | 0x1A0AFA07) ^ ((v217 & 0x10000 ^ 0xCE9B6597) - 882278380);
  v13 = ((v218 - 99804549) & v207) == ((2 * ((v218 - 99804549) & v207)) & 0x3340185C);
  LOBYTE(v216) = v8 ^ v11;
  LODWORD(STACK[0xF30]) = v8 ^ v11;
  LODWORD(STACK[0xAF0]) = v152 - 4831;
  v219 = ((v152 - 4831) ^ 0x22F09377) + v10;
  STACK[0xF10] = ((*(v12 - 192) >> 8) & 0xF0 ^ 0xFAF72893) & ((*(v12 - 192) >> 8) & 0xF ^ 0xFAF728F8) | (*(v12 - 192) >> 8) & 0xC;
  v220 = STACK[0x1040];
  v221 = HIBYTE(LODWORD(STACK[0x1040]));
  STACK[0xFD0] = v221;
  v222 = STACK[0xF08];
  LODWORD(v221) = *(STACK[0xF08] + (v221 ^ 0x44));
  v223 = v221 & 0xFFFFFFF6 ^ 0xFFFFFFB6;
  LODWORD(v221) = (((v221 ^ 8) & (2 * ((v221 ^ 8) & (2 * ((v221 ^ 8) & (2 * ((v221 ^ 8) & (2 * (((2 * v221) & 0x14 ^ 0x7C) & v221 ^ v223)) ^ v223)) ^ v223)) ^ v223)) ^ v223) << 9) ^ (v221 << 8);
  v224 = v220;
  v225 = *(STACK[0xF08] + (BYTE2(v220) ^ 0x44)) - 118;
  LODWORD(v221) = (v221 ^ 0x55A3) - ((2 * v225) & 0x146) + v225;
  v226 = *(v12 - 176);
  v227 = HIBYTE(v226);
  STACK[0xF28] = v227;
  v228 = *(v222 + (v227 ^ 0x44));
  v229 = v228 & 0xFFFFFFCC ^ 0xFFFFFFA1;
  v230 = (((v228 ^ 0xA) & (2 * ((v228 ^ 0xA) & (2 * ((v228 ^ 0xA) & (2 * ((v228 ^ 0xA) & (2 * (((2 * v228) & 0x14 ^ 0x46) & (v228 ^ 0xA) ^ v229)) ^ v229)) ^ v229)) ^ v229)) ^ v229) << 17) ^ (v228 << 16);
  v231 = (*(v222 + (BYTE2(v226) ^ 0x44)) - 118) << 8;
  LODWORD(v221) = ((*(v222 + (HIBYTE(v224) ^ 0x44)) - 118) << 8) | (v221 << 16);
  v232 = (((v230 ^ 0xDD3103) & (v231 ^ 0xFFBD3F) | v231 & 0xCE00) ^ 0x89A6D7) & ((*(v222 + (BYTE1(v226) ^ 0x44)) - 118) ^ 0xFFFFFFFD) | (*(v222 + (BYTE1(v226) ^ 0x44)) - 118) & 0x2B;
  v233 = *(v222 + (v224 ^ 0x44));
  v234 = v233 & 0x2C | 0xFFFFFFD1;
  *(v12 - 232) = v233 ^ (2 * ((v233 ^ 0xA) & (2 * ((v233 ^ 0xA) & (2 * ((v233 ^ 0xA) & (2 * ((v233 ^ 0xA) & (2 * ((v233 ^ 0xA) & (2 * ((v233 ^ 0xA) & 0x26 ^ v234)) ^ v234)) ^ v234)) ^ v234)) ^ v234)) ^ v234));
  *(v12 - 224) = ((v221 - ((2 * v221) & 0xE5B08800) - 220707609) ^ 0x1C11E152) & ((v233 ^ (2 * ((v233 ^ 0xA) & (2 * ((v233 ^ 0xA) & (2 * ((v233 ^ 0xA) & (2 * ((v233 ^ 0xA) & (2 * ((v233 ^ 0xA) & (2 * ((v233 ^ 0xA) & 0x26 ^ v234)) ^ v234)) ^ v234)) ^ v234)) ^ v234)) ^ v234))) ^ 0xFFFFFFD3);
  *(v12 - 240) = ((v232 << 8) ^ 0x11B39F43) & ((*(v222 + (v216 ^ 0xBBLL)) - 118) ^ 0xFFFFFF53) | (*(v222 + (v216 ^ 0xBBLL)) - 118) & 0xBC;
  v235 = HIBYTE(v219);
  STACK[0xF20] = v235;
  v236 = *(v222 + (v235 ^ 0x44));
  LODWORD(v235) = v236 & 0xFFFFFF8A | 0x35;
  v237 = v235 ^ v236 & 0x7E;
  v238 = (v236 ^ 0xA) & (2 * ((v236 ^ 0xA) & (2 * ((v236 ^ 0xA) & (2 * ((v236 ^ 0xA) & (2 * (((2 * (v236 & (2 * v235) ^ v237)) ^ 0x14) & (v236 ^ 0xA) ^ v237)) ^ v237)) ^ v237)) ^ v237));
  v239 = STACK[0x1038];
  v240 = LODWORD(STACK[0x1038]) >> 29;
  STACK[0xFD8] = v240;
  LODWORD(v240) = *(v222 + (v240 ^ 0x44));
  v241 = v238 ^ v237;
  v242 = v240 & 0xFFFFFF98 ^ 0xB;
  LODWORD(STACK[0xF18]) = v219;
  v243 = ((v241 << 25) ^ (v236 << 24)) & 0xFF00FFFF | ((*(v222 + (BYTE2(v219) ^ 0x44)) - 118) << 16);
  v244 = (*(v222 + (BYTE1(v219) ^ 0x44)) - 118) << 8;
  v245 = (v243 ^ 0xAFB43D3D) & (v244 ^ 0xFFFF7FFD) | v244 & 0xC200;
  v246 = *(v222 + (((((v152 + 33) ^ 0x77) + v10) | 0x44) ^ v219 & 0x44));
  v247 = v246 & 0xFFFFFF94 ^ 0xFFFFFF85;
  v248 = v246 ^ (2 * ((v246 ^ 0xA) & (2 * ((v246 ^ 0xA) & (2 * ((v246 ^ 0xA) & (2 * ((v246 ^ 0xA) & (2 * (((2 * v246) & 0x14 ^ 0x1E) & v246 ^ (v247 | 0xA))) ^ v247)) ^ v247)) ^ v247)) ^ v247));
  LODWORD(STACK[0xEF8]) = v248;
  v249 = *(v222 + ((v239 >> 5) ^ 0x44));
  v250 = *(v222 + ((v239 >> 13) ^ 0x44));
  LODWORD(STACK[0xF00]) = (v245 ^ 0x32346C41) & (v248 ^ 0xFFFFFF69);
  LODWORD(STACK[0xF08]) = ((((((((v240 ^ 0xA) & (2 * ((v240 ^ 0xA) & (2 * ((v240 ^ 0xA) & (2 * ((v240 ^ 0xA) & (2 * (((2 * v240) & 0x14 ^ 0x12) & (v240 ^ 0xA) ^ v242)) ^ v242)) ^ v242)) ^ v242)) ^ v242) << 17) ^ (v240 << 16) ^ 0xC4FFDF) & (((*(v222 + ((v239 >> 21) ^ 0x44)) - 118) << 8) ^ 0xFFEBDF) ^ 0x46E9AE) & ((v250 - 118) ^ 0xFFFFF5) | (v250 - 118) & 0x8E) << 8) ^ 0x72DE1588) & ((v249 ^ (2 * (((2 * (((2 * (((2 * (((2 * (((2 * v249) & 0x14 | 0xA) & (v249 ^ 0xA))) ^ 0x1E) & (v249 ^ 0xA))) ^ 0x1E) & (v249 ^ 0xA))) ^ 0x1E) & (v249 ^ 0xA))) ^ 0x1E) & (v249 ^ 0xA)))) ^ 0xFFFFFF35) | (v249 ^ (2 * (((2 * (((2 * (((2 * (((2 * (((2 * v249) & 0x14 | 0xA) & (v249 ^ 0xA))) ^ 0x1E) & (v249 ^ 0xA))) ^ 0x1E) & (v249 ^ 0xA))) ^ 0x1E) & (v249 ^ 0xA))) ^ 0x1E) & (v249 ^ 0xA)))) & 0x77;
  LODWORD(v222) = (((HIBYTE(v182) ^ 0x3C668E6E) + 2078825120) ^ ((HIBYTE(v182) ^ 0x1E8750E) + 1181131264) ^ ((HIBYTE(v182) ^ 0x3D8EFBA9) + 2046832473)) - (((HIBYTE(v182) ^ 0x9A4A489D) + 2096306161) ^ ((HIBYTE(v182) ^ 0x2B8E64C1) - 852018259) ^ ((HIBYTE(v182) ^ 0x2715C649) - 1045653211)) + 1956395536;
  LODWORD(v240) = (v222 ^ 0xB5BD86B4) & (2 * (v222 & 0xB43DA730)) ^ v222 & 0xB43DA730;
  v251 = ((2 * (v222 ^ 0x9D9680B4)) ^ 0x53564F08) & (v222 ^ 0x9D9680B4) ^ (2 * (v222 ^ 0x9D9680B4)) & 0x29AB2784;
  LODWORD(v240) = (v251 ^ 0x1020500) & (4 * v240) ^ v240;
  v252 = ((4 * (v251 ^ 0x28A92084)) ^ 0x26AC9E10) & (v251 ^ 0x28A92084) ^ (4 * (v251 ^ 0x28A92084)) & 0x29AB2780;
  LODWORD(v240) = (v252 ^ 0x20A80600) & (16 * v240) ^ v240;
  v253 = ((16 * (v252 ^ 0x9032184)) ^ 0x9AB27840) & (v252 ^ 0x9032184) ^ (16 * (v252 ^ 0x9032184)) & 0x29AB2780;
  LODWORD(v240) = v240 ^ 0x29AB2784 ^ (v253 ^ 0x8A22000) & (v240 << 8);
  v254 = (v240 << 16) & 0x29AB0000 ^ v240 ^ ((v240 << 16) ^ 0x27840000) & (((v253 ^ 0x21090784) << 8) & 0x29AB0000 ^ 0x880000 ^ (((v253 ^ 0x21090784) << 8) ^ 0x2B270000) & (v253 ^ 0x21090784));
  LODWORD(v240) = BYTE2(v166);
  v255 = *&v194[4 * (BYTE2(v166) ^ 0x17)] + (BYTE2(v166) ^ 0x17) * (BYTE2(v166) ^ 0x17);
  v256 = v186 ^ 0xAE;
  v257 = *&v201[4 * ((v186 ^ 0xA3AE) >> 8)];
  HIDWORD(v203) = v257 - (((v186 ^ 0xA3AE) >> 8) | 8);
  LODWORD(v203) = v257 - (((v186 ^ 0xA3AE) >> 8) | 0xF8);
  v258 = *&v193[4 * (HIBYTE(v182) ^ 0x3A)] - (HIBYTE(v182) ^ 0x3A | 0xE0);
  LODWORD(v227) = (v203 >> 4) - ((2 * (v203 >> 4)) & 0x6F854ABA);
  LOBYTE(v245) = v166 ^ 0x4D;
  v259 = *&v201[4 * ((v166 ^ 0xC04D) >> 8)];
  HIDWORD(v203) = v259 - (((v166 ^ 0xA1DC04D) >> 8) | 8);
  LODWORD(v203) = v259 - (((v166 ^ 0xC04D) >> 8) | 0xF8);
  v260 = (v203 >> 4) - ((2 * (v203 >> 4)) & 0x761F9B90);
  v261 = *&v194[4 * (BYTE2(v199) ^ 0xF3)] + (BYTE2(v199) ^ 0xF3) * (BYTE2(v199) ^ 0xF3);
  v262 = BYTE2(v199) ^ 0x913DB1E1;
  v263 = (v261 & v262) - ((2 * (v261 & v262)) & 0x22120DA);
  v264 = v261 + v262;
  LODWORD(v240) = LODWORD(STACK[0xC44]) ^ v240 ^ (*&v204[4 * (v182 ^ 0x69)] - (v182 ^ 0x69 | 0xA1)) ^ v255 ^ (v227 + 935503197);
  LODWORD(v227) = (((HIBYTE(v199) ^ 0x29A7B574) - 802596049) ^ ((HIBYTE(v199) ^ 0xEBE55FF6) + 309047725) ^ ((HIBYTE(v199) ^ 0xC242EA23) + 1003226234)) - (((HIBYTE(v199) ^ 0x79990807) - 1192636019) ^ ((HIBYTE(v199) ^ 0x38AB8A61) - 103066645) ^ ((HIBYTE(v199) ^ 0xD7E3681B) + 378778001)) + 1598350338;
  LODWORD(v201) = *&v201[4 * (BYTE1(v199) ^ 0x40)];
  v265 = v240 ^ v227 ^ (*&v193[4 * (HIBYTE(v199) ^ 0x52)] - (HIBYTE(v199) ^ 0x52 | 0xE0)) ^ ((v227 ^ 0xFF91EEC) - 248218091) ^ ((v227 ^ 0xEFD83C8E) + 286612599) ^ ((v227 ^ 0x8EED4AB8) + 1881156161) ^ ((v227 ^ 0x6FFEF7DD) - 1858889946);
  LODWORD(v240) = (((HIBYTE(v186) ^ 0x7B2F682) + 928391361) ^ ((HIBYTE(v186) ^ 0x7973CAE3) + 1234640034) ^ ((HIBYTE(v186) ^ 0x7EC13C61) + 1311107620)) - (((HIBYTE(v186) ^ 0x6196C7CE) + 1809498946) ^ ((HIBYTE(v186) ^ 0xE7E19B6B) - 307388443) ^ ((HIBYTE(v186) ^ 0x10A6B679) + 451588855));
  LODWORD(v227) = *&v193[4 * (HIBYTE(v186) ^ 0xF3)] - (HIBYTE(v186) ^ 0xF3 | 0xE0);
  v266 = (v264 ^ 0xD7EEC2BA) + ((2 * v264) & 0xAFDD8574) - ((((2 * v263 - 702432038) ^ 0xA32A674E) + 1661051387) ^ (((2 * v263 - 702432038) ^ 0x7F2C5769) - 1090022946) ^ (((2 * v263 - 702432038) ^ 0xA278CFD) - 905164214));
  HIDWORD(v203) = v201 - ((v199 >> 8) | 8);
  LODWORD(v203) = v201 - (BYTE1(v199) | 0xF8);
  v267 = BYTE2(v182);
  v268 = *&v194[4 * (v267 ^ 0x29)] + (v267 ^ 0x29) * (v267 ^ 0x29);
  v266 += 1852294424;
  v269 = LODWORD(STACK[0xC38]) ^ v258 ^ v222 ^ (*&v204[4 * v256] - (v256 | 0xA1)) ^ (v260 - 1156592184) ^ v266 ^ ((v266 ^ 0xDD978A96) + 304379915) ^ ((v266 ^ 0xF661E913) + 970070928) ^ ((v266 ^ 0xE4078819) + 733248134) ^ ((v266 ^ 0xFFBDE6FF) + 806229092) ^ (2 * v254);
  LODWORD(v240) = v240 - 1045635810;
  LODWORD(v240) = LODWORD(STACK[0xD18]) ^ v267 ^ v268 ^ v227 ^ (*&v204[4 * v245] - (v245 | 0xA1)) ^ v240 ^ ((v240 ^ 0x4223458D) - 399540352) ^ ((v240 ^ 0x5B64F15C) - 244790353) ^ ((v240 ^ 0xB54B8E23) + 524793042) ^ ((v240 ^ 0xF9FFFFFF) + 1408484622) ^ ((v203 >> 4) - ((2 * (v203 >> 4)) & 0x4CCCCF6A) - 1503238219);
  v270 = (1160840054 - (((v240 & 0x20000000) + 1897561828) ^ (v240 & 0x20000000 | 0x911D7F04) ^ ((v240 & 0x20000000 ^ 0x7C03B473) + 282708145))) ^ v240 & 0xDFFFFFFF;
  v271 = *(&off_1010A0B50 + v200 - 38330) - 557046986;
  HIDWORD(v203) = *&v271[4 * (HIBYTE(v205) ^ 0xF)] - (HIBYTE(v205) ^ 0xF | 0xB1);
  LODWORD(v203) = HIDWORD(v203);
  v272 = (v203 >> 11) - ((2 * (v203 >> 11)) & 0xA2580D2A);
  v273 = v270 ^ 0xEF8ECE2F;
  v274 = *&v206[4 * BYTE2(v273)] - (BYTE2(v273) | 0xD5);
  v275 = *(&off_1010A0B50 + v200 - 37039) - 489976679;
  v276 = *(&off_1010A0B50 + (v200 ^ 0xAF8E)) - 1215373122;
  v277 = *&v275[4 * (BYTE1(v269) ^ 0x6D)] - (BYTE1(v269) ^ 0x6D | 0x2C);
  v278 = *&v276[4 * (v265 ^ 0x1D)] + (v265 ^ 0x1D) * (v265 ^ 0x1D);
  HIDWORD(v203) = *&v271[4 * (HIBYTE(v265) ^ 0x5A)] - (HIBYTE(v265) ^ 0x5A | 0xB1);
  LODWORD(v203) = HIDWORD(v203);
  LODWORD(STACK[0xED0]) = (v203 >> 11) - ((2 * (v203 >> 11)) & 0x7109CE02);
  v279 = v218 + 551390414;
  v280 = 750999512 - v218;
  if (!v13)
  {
    v279 = v280;
  }

  HIDWORD(v281) = *&v271[4 * (HIBYTE(v269) ^ 0x1C)] - (HIBYTE(v269) ^ 0x1C | 0xB1);
  LODWORD(v281) = HIDWORD(v281);
  v282 = 1806832904 * (((v274 ^ 0xFD029B9) - 1249498508) ^ ((v274 ^ 0x802FE66) + 844430765) ^ ((v274 ^ 0x111E975A) - 347564911)) - 1223363047;
  LODWORD(STACK[0xED8]) = LODWORD(STACK[0xC30]) ^ v265 ^ v278 ^ v274 ^ v282 ^ ((v282 ^ 0x4E319F85) - 1329413916) ^ ((v282 ^ 0xFC5B206A) + 44597005) ^ ((v282 ^ 0xCC99E081) + 845856744) ^ ((v282 ^ 0x7FFFFFF7) - 2129878894) ^ BYTE1(v269) ^ v277 ^ (v272 + 1361839765) ^ ((v272 + 1361839765) >> 4) ^ ((v272 + 1361839765) >> 7);
  LODWORD(STACK[0xEE0]) = v270;
  v283 = LODWORD(STACK[0xEE8]) - 1681981444 + v279;
  v284 = (v283 ^ 0xF0750D8D) & (2 * (v283 & 0xC57529CC)) ^ v283 & 0xC57529CC;
  v285 = ((2 * (v283 ^ 0x7ABD5D0D)) ^ 0x7F90E982) & (v283 ^ 0x7ABD5D0D) ^ (2 * (v283 ^ 0x7ABD5D0D)) & 0xBFC874C0;
  v286 = (v285 ^ 0x3F806000) & (4 * v284) ^ v284;
  v287 = ((4 * (v285 ^ 0x80481441)) ^ 0xFF21D304) & (v285 ^ 0x80481441) ^ (4 * (v285 ^ 0x80481441)) & 0xBFC874C0;
  v288 = (v287 ^ 0xBF005000) & (16 * v286) ^ v286;
  v289 = ((16 * (v287 ^ 0xC824C1)) ^ 0xFC874C10) & (v287 ^ 0xC824C1) ^ (16 * (v287 ^ 0xC824C1)) & 0xBFC874C0;
  v290 = v288 ^ 0xBFC874C1 ^ (v289 ^ 0xBC804400) & (v288 << 8);
  v291 = (v290 << 16) & 0x3FC80000 ^ v290 ^ ((v290 << 16) ^ 0x74C10000) & (((v289 ^ 0x34830C1) << 8) & 0x3FC80000 ^ 0x37880000 ^ (((v289 ^ 0x34830C1) << 8) ^ 0x48740000) & (v289 ^ 0x34830C1));
  v293 = (v281 >> 11) - ((2 * (v281 >> 11)) & 0x8A29AD8C) + 1158993606;
  v294 = (v293 >> 7) ^ (v293 >> 4);
  v295 = ((v294 & 0x8000 ^ 0x6FDBFC83) - 132535020) ^ (v294 & 0x8000 | 0xD7F2522B) ^ ((v294 & 0x8000 ^ 0xC881EC4E) + 1598275039);
  v296 = v295 - 506074884;
  v297 = (v296 ^ 0x2677A06A) & (2 * (v296 & 0x80038003)) | v296 & 0x80038003;
  v298 = ((2 * (v296 ^ 0x2EB1AAE8)) ^ 0x51ACDF36) & (v296 ^ 0x2EB1AAE8) ^ (2 * (v296 ^ 0x2EB1AAE8)) & 0xA8D66F9A;
  v299 = (v298 ^ 0x40000) & (4 * v297) | v297;
  v300 = ((4 * (v298 ^ 0xA8522089)) ^ 0xA359BE6C) & (v298 ^ 0xA8522089) ^ (4 * (v298 ^ 0xA8522089)) & 0xA8D66F98;
  v301 = (v300 ^ 0xA0502E00) & (16 * v299) ^ v299;
  v302 = ((16 * (v300 ^ 0x8864193)) ^ 0x8D66F9B0) & (v300 ^ 0x8864193) ^ (16 * (v300 ^ 0x8864193)) & 0xA8D66F90;
  v303 = v301 ^ 0xA8D66F9B ^ (v302 ^ 0x88466900) & (v301 << 8);
  v304 = (v295 - 506074884) ^ (2 * ((v303 << 16) & 0x28D60000 ^ v303 ^ ((v303 << 16) ^ 0x6F9B0000) & (((v302 ^ 0x2090060B) << 8) & 0x28D60000 ^ 0x28900000 ^ (((v302 ^ 0x2090060B) << 8) ^ 0x566F0000) & (v302 ^ 0x2090060B))));
  v305 = 291146782 - v295;
  if (((v304 ^ 0x86EF1A45) & (v293 ^ 0xA301A155) ^ v304 & 0xE6157793) == 0x86051201)
  {
    v305 = v296;
  }

  v306 = (((v293 ^ 0x80168AFF) + 2146006273) ^ ((v293 ^ 0x277497D4) - 661952468) ^ ((v293 ^ 0xE276CBED) + 495531027)) - 659607620 + v305;
  v292 = (HIWORD(v265) ^ 0x5AF9) - ((2 * (HIWORD(v265) ^ 0x5AF9)) & 0xB4);
  v307 = *&v206[4 * (v292 + 90)] - ((v292 + 90) | 0xD5);
  v308 = v205 ^ v199;
  v309 = BYTE1(v205);
  v310 = *&v275[4 * (BYTE1(v205) ^ 6)] - (BYTE1(v205) ^ 6 | 0x2C);
  v311 = 1806832904 * (((v307 ^ 0xD9B2CB9) + 1163137066) ^ ((v307 ^ 0x4C70D7C) - 871878163) ^ ((v307 ^ 0x1F906140) + 1465867729)) - 1055127639;
  v312 = (2 * (v311 & 0x8C4E49A1)) & (v311 ^ 0x695EED79) ^ v311 & 0x8C4E49A1 ^ ((2 * (v311 & 0x8C4E49A1)) & 0x108042 | 0x9C);
  v313 = (2 * (v311 ^ 0x695EED79)) & 0xE510A4D0 ^ 0x2510A442 ^ ((2 * (v311 ^ 0x695EED79)) ^ 0xCA2149B8) & (v311 ^ 0x695EED79);
  v314 = (4 * v312) & 0x611024DC ^ v312 ^ ((4 * v312) ^ 0x270) & v313;
  v315 = (4 * v313) & 0xE510A4C8 ^ 0x61102486 ^ ((4 * v313) ^ 0x94429378) & v313;
  v316 = (16 * v314) & 0xE510A4D0 ^ v314 ^ ((16 * v314) ^ 0xCC0) & v315;
  v317 = (16 * v315) & 0xE510A4C0 ^ 0xA410A01E ^ ((16 * v315) ^ 0x510A4DE0) & v315;
  v318 = v316 ^ (v316 << 8) & 0xE510A400 ^ ((v316 << 8) ^ 0x40C00) & v317;
  HIDWORD(v319) = *&v271[4 * HIBYTE(v273)] - (HIBYTE(v273) | 0xB1);
  LODWORD(v319) = HIDWORD(v319);
  v320 = (v319 >> 11) - ((2 * (v319 >> 11)) & 0x529D7368);
  v321 = LODWORD(STACK[0xC28]) ^ v307 ^ (*&v276[4 * (v270 ^ 1)] + (v270 ^ 1) * (v270 ^ 1)) ^ v311 ^ v294 & 0xFFFF7FFF ^ (2 * (((v318 ^ 0xE510A4D2) << 16) & 0x65100000 ^ v318 ^ 0xE510A4D2 ^ (((v318 ^ 0xE510A4D2) << 16) ^ 0x24DE0000) & ((v317 << 8) & 0x65100000 ^ 0x65100000 ^ ((v317 << 8) ^ 0x10A40000) & v317))) ^ v309 ^ v310 ^ v306 ^ ((v306 ^ 0x5059CB02) - 1567316097) ^ ((v306 ^ 0xBD51381C) + 1335645281) ^ ((v306 ^ 0x9FC58B22) + 1829300063) ^ ((v306 ^ 0x7FFFEBBF) - 1926068284);
  v322 = LODWORD(STACK[0xC20]) ^ BYTE1(v270) ^ (LODWORD(STACK[0xED0]) - 1199249663) ^ (*&v275[4 * (BYTE1(v270) ^ 0x25)] - (BYTE1(v270) ^ 0x25 | 0x2C)) ^ ((LODWORD(STACK[0xED0]) - 1199249663) >> 4) ^ ((LODWORD(STACK[0xED0]) - 1199249663) >> 7) ^ (*&v276[4 * (v269 ^ 0x5E)] + (v269 ^ 0x5E) * (v269 ^ 0x5E)) ^ __ROR4__(__ROR4__(__ROR4__((v269 << 9) ^ 0x96E119E, 11) ^ 0x9D52AF26, 21) ^ 0xA7B1B30E, 9) ^ STACK[0xEF0] & 0xFFFEFFF8 ^ v283 ^ (2 * v291);
  v323 = *&v206[4 * (BYTE2(v269) ^ 0xCD)] - (BYTE2(v269) ^ 0xCD | 0xD5);
  v324 = 1806832904 * (((v323 ^ 0x67223D4) - 1463354469) ^ ((v323 ^ 0x1A57BA13) - 1260166562) ^ ((v323 ^ 0xAE9D942) + 610074893)) + 1278630073;
  v325 = (2 * (v324 & 0x89A424E0)) & 0x13084940 ^ v324 & 0x89A424E0 ^ ((2 * (v324 & 0x89A424E0)) | 2) & (v324 ^ 0x7EBCDDBE);
  v326 = (2 * (v324 ^ 0x7EBCDDBE)) & 0xF718F950 ^ 0x11080941 ^ ((2 * (v324 ^ 0x7EBCDDBE)) ^ 0xEE31F2B2) & (v324 ^ 0x7EBCDDBE);
  v327 = (4 * v325) & 0x6710B108 ^ v325 ^ ((4 * v325) | 4) & v326;
  v328 = (4 * v326) & 0xF718F958 ^ 0x23181819 ^ ((4 * v326) ^ 0xDC63E564) & v326;
  v329 = (16 * v327) & 0xF718F950 ^ v327 ^ ((16 * v327) ^ 0x10) & v328;
  v330 = (16 * v328) & 0xF718F950 ^ 0x86106849 ^ ((16 * v328) ^ 0x718F9590) & v328;
  v331 = v329 ^ (v329 << 8) & 0xF718F900 ^ ((v329 << 8) ^ 0x1100) & v330;
  v332 = ((v331 ^ 0xF718E848) << 16) & 0x77180000 ^ v331 ^ 0xF718E848 ^ (((v331 ^ 0xF718E848) << 16) ^ 0x79590000) & ((v330 << 8) & 0x77180000 ^ 0x67000000 ^ ((v330 << 8) ^ 0x18F90000) & v330);
  v333 = BYTE1(v265);
  v334 = *&v275[4 * (BYTE1(v265) ^ 0xCF)] - (BYTE1(v265) ^ 0xCF | 0x2C);
  v335 = *&v276[4 * (v308 ^ 0xB8)] + (v308 ^ 0xB8) * (v308 ^ 0xB8);
  v336 = *(&off_1010A0B50 + (LODWORD(STACK[0xFC8]) ^ 0xABA1)) - 934897879;
  v337 = *&v336[4 * HIBYTE(LODWORD(STACK[0xED8]))] + HIBYTE(LODWORD(STACK[0xED8])) * HIBYTE(LODWORD(STACK[0xED8]));
  v338 = LODWORD(STACK[0xC18]) ^ v333 ^ v334 ^ (v320 + 693025204) ^ ((v320 + 693025204) >> 4) ^ ((v320 + 693025204) >> 7) ^ v323 ^ v324 ^ v308 ^ v335 ^ (2 * v332);
  v339 = (((BYTE1(v321) ^ 0x83BC0D48) + 1264182669) ^ ((BYTE1(v321) ^ 0x783798BF) - 1328385924) ^ ((BYTE1(v321) ^ 0xFB8B9529) + 862879214)) + (((BYTE1(v321) ^ 0xC2DF87D7) + 481932196) ^ ((BYTE1(v321) ^ 0x9DEB859B) + 1133359600) ^ ((BYTE1(v321) ^ 0xFF30AC83) + 559323384)) - 841026793;
  v340 = (v339 ^ 0xC0966B09) & (2 * (v339 & 0xEAD88A12)) ^ v339 & 0xEAD88A12;
  v341 = ((2 * (v339 ^ 0x80867F29)) ^ 0xD4BDEA76) & (v339 ^ 0x80867F29) ^ (2 * (v339 ^ 0x80867F29)) & 0x6A5EF53A;
  v342 = (v341 ^ 0x40046010) & (4 * v340) ^ v340;
  v343 = ((4 * (v341 ^ 0x2A421509)) ^ 0xA97BD4EC) & (v341 ^ 0x2A421509) ^ (4 * (v341 ^ 0x2A421509)) & 0x6A5EF538;
  v344 = (v343 ^ 0x285AD420) & (16 * v342) ^ v342;
  v345 = ((16 * (v343 ^ 0x42042113)) ^ 0xA5EF53B0) & (v343 ^ 0x42042113) ^ (16 * (v343 ^ 0x42042113)) & 0x6A5EF530;
  v346 = v344 ^ 0x6A5EF53B ^ (v345 ^ 0x204E5100) & (v344 << 8);
  v347 = (v346 << 16) & 0x6A5E0000 ^ v346 ^ ((v346 << 16) ^ 0x753B0000) & (((v345 ^ 0x4A10A40B) << 8) & 0x6A5E0000 ^ 0x200A0000 ^ (((v345 ^ 0x4A10A40B) << 8) ^ 0x5EF50000) & (v345 ^ 0x4A10A40B));
  v348 = *(&off_1010A0B50 + (LODWORD(STACK[0xFC8]) ^ 0xB1E3)) - 748537987;
  LODWORD(v319) = __ROR4__(__ROR4__(v322 ^ 0x624582B1, 21) ^ 0x38C6AFBE, 29) ^ 0x1F690A93;
  HIDWORD(v319) = v319;
  v349 = v319 >> 14;
  v350 = *&v336[4 * (HIBYTE(v349) ^ 0x28)] + (HIBYTE(v349) ^ 0x28) * (HIBYTE(v349) ^ 0x28);
  v351 = -694713557 * v350 - ((-1389427114 * v350) & 0xE0ABAF2A) - 262809707;
  v352 = (v351 >> 1) & 0x4F302EE;
  v353 = *(&off_1010A0B50 + (LODWORD(STACK[0xFC8]) ^ 0xA305)) - 996172819;
  v354 = (((v351 ^ 0xB8267F47) + 1205436601) ^ ((v351 ^ 0xECB7D66B) + 323496341) ^ ((v351 ^ 0xA4C47EB9) + 1530626375)) + (((v352 ^ 0xA5537E8A) + 1744181238) ^ ((v352 ^ 0x7D9BF256) - 1086416086) ^ ((v352 ^ 0xD8EA8E16) + 441444202)) + ((2 * ((v352 ^ 0x13F897FE) & (v351 ^ 0x7051F795) ^ v351 & 0x13DA9534)) ^ 0xDF5ED5D7);
  v355 = *(&off_1010A0B50 + LODWORD(STACK[0xFC8]) - 36953) - 1651570783;
  v356 = (v319 >> 14);
  v357 = -694713557 * v337 - ((-1389427114 * v337) & 0xFD5778A0) + 2125184080;
  v358 = (((BYTE2(v338) ^ 0x3CAC2090) + 1729154590) ^ ((BYTE2(v338) ^ 0xA1ACFCAB) - 99610073) ^ ((BYTE2(v338) ^ 0x9D00DCBC) - 960744910)) + 1004695046;
  v359 = LODWORD(STACK[0xC10]) ^ (*&v348[4 * (BYTE2(v338) ^ 0x94)] + (BYTE2(v338) ^ 0x94) * (BYTE2(v338) ^ 0x94)) ^ v358 ^ v357 ^ ((v358 ^ 0x9734CAE8) + 188981980) ^ (v357 >> 1) & 0x4F302EE ^ ((v358 ^ 0x546213BC) - 938116208) ^ ((v358 ^ 0x5F20B167) - 1017652907) ^ ((v358 ^ 0xFFFEFFFF) + 1669961677) ^ v339 ^ (*&v353[4 * (BYTE1(v321) ^ 0x52)] + (BYTE1(v321) ^ 0x52) * (BYTE1(v321) ^ 0x52)) ^ (2 * v347) ^ v356 ^ (*&v355[4 * (v356 ^ 0x86)] + (v356 ^ 0x86) * (v356 ^ 0x86));
  HIDWORD(v319) = v354 + 768502752;
  LODWORD(v319) = v354 + 768502752;
  v360 = BYTE2(LODWORD(STACK[0xED8]));
  v361 = (((v360 ^ 0xFDD0C103) + 1886390378) ^ ((v360 ^ 0xC7C5A064) + 1248160015) ^ ((v360 ^ 0x3A156163) - 1212831734)) + 164578413;
  v362 = (v361 ^ 0xD804B741) & (2 * (v361 & 0x94201669)) ^ v361 & 0x94201669;
  v363 = ((2 * (v361 ^ 0xD0419781)) ^ 0x99CE43D0) & (v361 ^ 0xD0419781) ^ (2 * (v361 ^ 0xD0419781)) & 0x4CE721E8;
  v364 = (v363 ^ 0x8001C0) & (4 * v362) ^ v362;
  v365 = ((4 * (v363 ^ 0x44212028)) ^ 0x339C87A0) & (v363 ^ 0x44212028) ^ (4 * (v363 ^ 0x44212028)) & 0x4CE721E8;
  v366 = (v365 ^ 0x8401A0) & (16 * v364) ^ v364;
  v367 = ((16 * (v365 ^ 0x4C632048)) ^ 0xCE721E80) & (v365 ^ 0x4C632048) ^ (16 * (v365 ^ 0x4C632048)) & 0x4CE721C0;
  v368 = v366 ^ 0x4CE721E8 ^ (v367 ^ 0x4C620000) & (v366 << 8);
  v369 = (v368 << 16) & 0x4CE70000 ^ v368 ^ ((v368 << 16) ^ 0x21E80000) & (((v367 ^ 0x852168) << 8) & 0x4CE70000 ^ 0x8C60000 ^ (((v367 ^ 0x852168) << 8) ^ 0xE7210000) & (v367 ^ 0x852168));
  v370 = (((BYTE1(v338) ^ 0x8DC2418F) - 693463645) ^ ((BYTE1(v338) ^ 0xEDA4D121) - 1228143347) ^ ((BYTE1(v338) ^ 0x6066908F) + 990790819)) + (((BYTE1(v338) ^ 0x17420DC1) + 2117092062) ^ ((BYTE1(v338) ^ 0x86262E15) - 279682806) ^ ((BYTE1(v338) ^ 0x31608DE4) + 1477624569)) - 495643940;
  v371 = (v370 ^ 0xF20327C9) & (2 * (v370 & 0xF8AB37EA)) ^ v370 & 0xF8AB37EA;
  v372 = ((2 * (v370 ^ 0xC347208D)) ^ 0x77D82ECE) & (v370 ^ 0xC347208D) ^ (2 * (v370 ^ 0xC347208D)) & 0x3BEC1766;
  v373 = (v372 ^ 0x23C80640) & (4 * v371) ^ v371;
  v374 = ((4 * (v372 ^ 0x8241121)) ^ 0xEFB05D9C) & (v372 ^ 0x8241121) ^ (4 * (v372 ^ 0x8241121)) & 0x3BEC1764;
  v375 = (v374 ^ 0x2BA01500) & (16 * v373) ^ v373;
  v376 = ((16 * (v374 ^ 0x104C0263)) ^ 0xBEC17670) & (v374 ^ 0x104C0263) ^ (16 * (v374 ^ 0x104C0263)) & 0x3BEC1760;
  v377 = v375 ^ 0x3BEC1767 ^ (v376 ^ 0x3AC01600) & (v375 << 8);
  v378 = (v377 << 16) & 0x3BEC0000 ^ v377 ^ ((v377 << 16) ^ 0x17670000) & (((v376 ^ 0x12C0107) << 8) & 0x3BEC0000 ^ 0x13E80000 ^ (((v376 ^ 0x12C0107) << 8) ^ 0xEC170000) & (v376 ^ 0x12C0107));
  v379 = *&v336[4 * (HIBYTE(v321) ^ 0x2A)] + (HIBYTE(v321) ^ 0x2A) * (HIBYTE(v321) ^ 0x2A);
  v380 = -694713557 * v379 - ((-1389427114 * v379) & 0xABB9FA74);
  v381 = *&v348[4 * (v360 ^ 0x17)] + (v360 ^ 0x17) * (v360 ^ 0x17);
  v382 = BYTE1(LODWORD(STACK[0xED8]));
  v383 = (((v382 ^ 0x557E35B7) - 619783589) ^ ((v382 ^ 0x6130721B) - 280977929) ^ ((v382 ^ 0x344E4718) - 1170298634)) + (((v382 ^ 0xF6870420) - 716217745) ^ ((v382 ^ 0xEA1320D3) - 908376418) ^ ((v382 ^ 0xBC908A56) - 1621562343));
  v384 = *&v353[4 * (v382 ^ 0x38)] + (v382 ^ 0x38) * (v382 ^ 0x38);
  v385 = (v321 ^ LODWORD(STACK[0xEE0]));
  v386 = (BYTE2(v349) ^ 0x14) + 955198994;
  v387 = ((2 * (v386 & 0x260233)) | 0x70000000) & (v386 ^ 0x403F4AB9) ^ v386 & 0x260233 ^ ((2 * (v386 & 0x260233)) & 0x80402 | 0x2001000);
  v388 = (2 * (v386 ^ 0x403F4AB9)) & 0xB100C88A ^ 0x8908448A ^ ((2 * (v386 ^ 0x403F4AB9)) ^ 0x70102114) & (v386 ^ 0x403F4AB9);
  v389 = (4 * v387) & 0xBB18DC88 ^ v387 ^ ((4 * v387) ^ 0x28047000) & v388;
  v390 = (4 * v388) & 0xBB18DC88 ^ 0x13188C82 ^ ((4 * v388) ^ 0xEC637228) & v388;
  v391 = (16 * v389) & 0xBB18DC80 ^ v389 ^ ((16 * v389) ^ 0x2014C000) & v390;
  v392 = (16 * v390) & 0xBB18DC80 ^ 0xA10140A ^ ((16 * v390) ^ 0xB18DC8A0) & v390;
  v393 = v391 ^ (v391 << 8) & 0xBB18DC00 ^ ((v391 << 8) ^ 0x118C0000) & v392 ^ 0xA801508A;
  v394 = (v393 << 16) & 0x3B180000 ^ v393 ^ ((v393 << 16) ^ 0x5C8A0000) & ((v392 << 8) & 0x3B180000 ^ 0x23000000 ^ ((v392 << 8) ^ 0x18DC0000) & v392);
  v395 = LODWORD(STACK[0xD10]) ^ (*&v353[4 * (BYTE1(v338) ^ 0xAD)] + (BYTE1(v338) ^ 0xAD) * (BYTE1(v338) ^ 0xAD)) ^ v381 ^ v361 ^ v370 ^ v385 ^ (*&v355[4 * (v385 ^ 0x78)] + (v385 ^ 0x78) * (v385 ^ 0x78)) ^ (2 * (v369 ^ v378)) ^ __ROR4__((v319 >> 28) - ((2 * (v319 >> 28)) & 0xA082C878) - 801020868, 4);
  v396 = *&v336[4 * (HIBYTE(v338) ^ 0x41)] + (HIBYTE(v338) ^ 0x41) * (HIBYTE(v338) ^ 0x41);
  v397 = -694713557 * v396 - ((758056534 * v396) & 0x210E8164);
  LODWORD(v336) = LODWORD(STACK[0xC08]) ^ v338 ^ (*&v355[4 * (v338 ^ 0x23)] + (v338 ^ 0x23) * (v338 ^ 0x23)) ^ v384 ^ (v383 + 852864276) ^ (((v383 + 852864276) ^ 0xCFA79EDD) + 1967850617) ^ (((v383 + 852864276) ^ 0xCC015DAA) + 1995294480) ^ (((v383 + 852864276) ^ 0xB95A5992) + 62309176) ^ (((v383 + 852864276) ^ 0xFFEFFFBF) + 1157850395) ^ (v380 - 706937542) ^ ((v380 - 706937542) >> 1) & 0x4F302EE ^ v386 ^ (*&v348[4 * (BYTE2(v349) ^ 7)] + (BYTE2(v349) ^ 7) * (BYTE2(v349) ^ 7)) ^ (2 * v394);
  v398 = (((BYTE1(v349) ^ 0xCA8609D2) + 2060011150) ^ ((BYTE1(v349) ^ 0xEF4708CE) + 1594378130) ^ ((BYTE1(v349) ^ 0x85C5AF9D) + 898293955)) + (((BYTE1(v349) ^ 0x875C80EF) - 1396369641) ^ ((BYTE1(v349) ^ 0x8B4660D2) - 1595934932) ^ ((BYTE1(v349) ^ 0xC1AE0AD) + 662927189));
  v399 = *&v353[4 * (BYTE1(v349) ^ 0x1C)] + (BYTE1(v349) ^ 0x1C) * (BYTE1(v349) ^ 0x1C);
  v400 = BYTE2(v321);
  v401 = v400 ^ 0x2B;
  LODWORD(v348) = *&v348[4 * (v400 ^ 0x2B)];
  v402 = (((v400 ^ 0x926FF516) - 1515685803) ^ ((v400 ^ 0x5D4F7909) + 1787360332) ^ ((v400 ^ 0xCF208C27) - 119078554)) + 614140009;
  v398 += 863330195;
  v403 = LODWORD(STACK[0xC00]) ^ LODWORD(STACK[0xED8]) ^ (*&v355[4 * (LODWORD(STACK[0xED8]) ^ 0xBD)] + (LODWORD(STACK[0xED8]) ^ 0xBD) * (LODWORD(STACK[0xED8]) ^ 0xBD)) ^ (v397 + 277299378) ^ ((v397 + 277299378) >> 1) & 0x4F302EE ^ v402 ^ ((v402 ^ 0x8EB3320E) + 1493638255) ^ ((v402 ^ 0xDCB4E249) + 184601642) ^ ((v402 ^ 0x87B3FF25) + 1342689606) ^ (v348 + v401 * v401) ^ ((v402 ^ 0xFDFFFEFD) + 709611678) ^ v398 ^ ((v398 ^ 0x2543DC85) - 1243153497) ^ ((v398 ^ 0x217ED079) - 1310984357) ^ v399 ^ ((v398 ^ 0x11B82B97) - 2128802635) ^ ((v398 ^ 0x7ADFFFB7) - 361047915);
  v404 = STACK[0xFC8];
  v405 = *(&off_1010A0B50 + (LODWORD(STACK[0xFC8]) ^ 0xAAD8)) - 231747494;
  LOWORD(v338) = v359 ^ 0x3CB;
  HIDWORD(v319) = *&v405[4 * ((v359 ^ 0xABCF03CB) >> 24)] + ((v359 ^ 0xABCF03CB) >> 24) * ((v359 ^ 0xABCF03CB) >> 24);
  LODWORD(v319) = HIDWORD(v319);
  v406 = (v319 >> 30) - ((2 * (v319 >> 30)) & 0x82FC66A4);
  HIDWORD(v319) = *&v405[4 * (HIBYTE(v395) ^ 0xCC)] + (HIBYTE(v395) ^ 0xCC) * (HIBYTE(v395) ^ 0xCC);
  LODWORD(v319) = HIDWORD(v319);
  v407 = (v319 >> 30) - ((2 * (v319 >> 30)) & 0x731693C);
  v408 = *(&off_1010A0B50 + LODWORD(STACK[0xFC8]) - 40714) - 1367896218;
  v409 = *&v408[4 * (BYTE2(v359) ^ 0x60)] + (BYTE2(v359) ^ 0x60) * (BYTE2(v359) ^ 0x60);
  v410 = *(&off_1010A0B50 + LODWORD(STACK[0xFC8]) - 40598) - 1786043526;
  v411 = *&v410[4 * (BYTE1(v336) ^ 0x39)] + (BYTE1(v336) ^ 0x39) * (BYTE1(v336) ^ 0x39);
  LODWORD(v353) = (2 * v409 - ((4 * v409) & 0xE68C2F9C) + 1933973454) & 0x86F1607A;
  v412 = ((v409 + 1131982909) ^ 0xF7EFEE1B) + ((2 * (v409 + 1131982909)) & 0xEFDFDC36) - (((v353 ^ 0x61D18FC5) + 1321413023) ^ ((v353 ^ 0x2A3924AF) + 86737653) ^ ((v353 ^ 0x49A8AB20) + 1723469180));
  v413 = *(&off_1010A0B50 + (LODWORD(STACK[0xFC8]) ^ 0xA70F)) - 1428174775;
  v414 = LODWORD(STACK[0xD08]) ^ (*&v408[4 * (BYTE2(v403) ^ 0xBD)] + (BYTE2(v403) ^ 0xBD) * (BYTE2(v403) ^ 0xBD)) ^ (v406 + 1098789714) ^ (v411 - ((2 * v411 + 218663066) & 0x319672E6) + 525303232) ^ (*&v413[4 * (v395 ^ 0xED)] + (v395 ^ 0xED) * (v395 ^ 0xED));
  v415 = *&v410[4 * (BYTE1(v403) ^ 0x8B)] + (BYTE1(v403) ^ 0x8B) * (BYTE1(v403) ^ 0x8B);
  HIDWORD(v319) = *&v405[4 * ((v336 >> 24) ^ 0xC9)] + ((v336 >> 24) ^ 0xC9) * ((v336 >> 24) ^ 0xC9);
  LODWORD(v319) = HIDWORD(v319);
  v416 = (v319 >> 30) - ((2 * (v319 >> 30)) & 0x57AC01A2);
  v417 = *&v413[4 * v338] + v338 * v338;
  v418 = *&v408[4 * (BYTE2(v395) ^ 0x93)] + (BYTE2(v395) ^ 0x93) * (BYTE2(v395) ^ 0x93);
  v412 -= 2086274756;
  v419 = LODWORD(STACK[0xBF8]) ^ v412 ^ ((v412 ^ 0x6DF73ECA) - 599031695) ^ ((v412 ^ 0x1AB95EDE) - 1425678235) ^ ((v412 ^ 0xC7FACEA6) + 1984327709) ^ ((v412 ^ 0xFEF7EFF7) + 1330336078) ^ (v415 - ((2 * v415 + 218663066) & 0xA37F4B2E) + 1480845796) ^ (*&v413[4 * (v336 ^ 0xD7)] + (v336 ^ 0xD7) * (v336 ^ 0xD7)) ^ 0xA37870AB ^ (v407 + 60339358);
  HIDWORD(v319) = *&v405[4 * (HIBYTE(v403) ^ 0x86)] + (HIBYTE(v403) ^ 0x86) * (HIBYTE(v403) ^ 0x86);
  LODWORD(v319) = HIDWORD(v319);
  v420 = *&v410[4 * BYTE1(v338)] + BYTE1(v338) * BYTE1(v338);
  v421 = *&v410[4 * (BYTE1(v395) ^ 0xA9)] + (BYTE1(v395) ^ 0xA9) * (BYTE1(v395) ^ 0xA9);
  v422 = v421 - ((2 * v421 + 218663066) & 0x6B524104);
  v423 = (2 * v417 - ((4 * v417) & 0xA5679A28) - 759968492) & 0x835EC76A;
  LODWORD(v405) = ((v417 + 1102013365) ^ 0x74E83EEF) + ((2 * (v417 + 1102013365)) & 0xE9D07DDE) - (((v423 ^ 0xA403F1C5) - 1098260879) ^ ((v423 ^ 0x76DF0F64) + 1817518290) ^ ((v423 ^ 0x50CE3BA1) + 1245975573));
  v424 = LODWORD(STACK[0xBF0]) ^ (*&v413[4 * (v403 ^ 0x5E)] + (v403 ^ 0x5E) * (v403 ^ 0x5E)) ^ (v420 - ((2 * v420 + 218663066) & 0x531331A4) - 1341268705) ^ (v416 - 1412038447) ^ v418;
  v425 = LODWORD(STACK[0xBE8]) ^ (v405 + 1596873220) ^ (((v405 + 1596873220) ^ 0x14B7C28) - 976671253) ^ (((v405 + 1596873220) ^ 0xE734B389) + 599188044) ^ (((v405 + 1596873220) ^ 0xA2AC9E63) + 1714343842) ^ (((v405 + 1596873220) ^ 0x7FAEFFFF) - 1154699714) ^ ((v319 >> 30) - ((2 * (v319 >> 30)) & 0x70DE742A) - 1200670187) ^ (*&v408[4 * (BYTE2(v336) ^ 0xB)] + (BYTE2(v336) ^ 0xB) * (BYTE2(v336) ^ 0xB));
  LODWORD(v319) = __ROR4__(v419, 23) ^ 0xD9BE8D06;
  HIDWORD(v319) = v319;
  v426 = v319 >> 9;
  v427 = v425 ^ 0x868D3DA5 ^ (v422 + 1009607887);
  v428 = v319 >> 9;
  v429 = (v428 ^ 0xA3) - (((v428 ^ 0xA3) - ((2 * (v428 ^ 0xA3)) & 0x92) - 1333621687) ^ (v426 & 0x80 | 0xB0828C49));
  if ((((v428 ^ 0xA3) - (((v428 ^ 0xA3) - ((2 * (v428 ^ 0xA3)) & 0x92) + 73) ^ (v426 & 0x80 | 0x49))) & 0xC5) != 0)
  {
    v429 = (((v428 ^ 0xA3) - ((2 * (v428 ^ 0xA3)) & 0x92) - 1333621687) ^ (v426 & 0x80 | 0xB0828C49)) - (v428 ^ 0xA3);
  }

  v430 = v428 ^ 0x9324EC85 ^ ((v429 - 59) - ((2 * (v429 + 197)) & 0x14C) - 1826296666);
  v431 = *(&off_1010A0B50 + v404 - 40757) - 1860840987;
  v432 = *(&off_1010A0B50 + v404 - 37034) - 1081896762;
  v433 = *&v432[4 * v430] + v430 * v430;
  v434 = ((2 * (v433 + 1911519190)) & 0xFF7FFFCC) + ((v433 + 1911519190) ^ 0x7FBFFFE6);
  v435 = ((~(4 * v433) | 0x160D38DB) + 2 * v433 - 184982637) & 0xE3DEEFAC;
  v436 = v434 - (((v435 ^ 0xAD3AD4A2) - 1406732343) ^ ((v435 ^ 0x5C7F3EDC) + 1566776759) ^ ((v435 ^ 0x119D89FE) + 276933269)) + 2062160612;
  v437 = ((v436 ^ 0x1847E6FE) - 10630945) ^ v436 ^ ((v436 ^ 0x21F47F79) - 957460134) ^ ((v436 ^ 0xDE2AB5A3) + 959486852) ^ ((v436 ^ 0xFF7CFDFB) + 409392092);
  v438 = *(&off_1010A0B50 + (v404 ^ 0xAF84)) - 31532954;
  HIDWORD(v439) = *&v438[4 * BYTE2(v427)] + BYTE2(v427) * BYTE2(v427);
  LODWORD(v439) = HIDWORD(v439);
  v440 = (v439 >> 14) - ((2 * (v439 >> 14)) & 0xA148355E);
  HIDWORD(v439) = *&v438[4 * (BYTE2(v414) ^ 0x4D)] + (BYTE2(v414) ^ 0x4D) * (BYTE2(v414) ^ 0x4D);
  LODWORD(v439) = HIDWORD(v439);
  v441 = (v439 >> 14) + 1103156437 + (~(2 * (v439 >> 14)) | 0x7C7E5657);
  v442 = (v437 >> 2) ^ (v437 >> 1);
  v443 = (v442 & 2) + 64754142;
  v444 = ((2 * ((32 - (v442 & 2)) & 0x22222222)) | 0x40480020) ^ (32 - (v442 & 2)) & 0x22222222 ^ (((2 * ((32 - (v442 & 2)) & 0x22222222)) ^ 4) & (v443 ^ 0x89CDC0D4) | 0x983926B3);
  v445 = (2 * (v443 ^ 0x89CDC0D4)) & 0x74 ^ 0x12 ^ ((2 * (v443 ^ 0x89CDC0D4)) ^ 0x8A10512C) & (v443 ^ 0x89CDC0D4);
  v446 = (4 * v444) & 0x558A2EF0 ^ v444 ^ ((4 * v444) ^ 0x9154) & v445;
  v447 = (4 * v445) & 0x204604F0 ^ 0x20460426 ^ ((4 * v445) ^ 0x82109158) & v445;
  v448 = (16 * v446) & 0x75EE2EF0 ^ v446 ^ ((16 * v446) ^ 0x9F12C250) & v447;
  v449 = (16 * v447) & 0x75EE2EE0 ^ 0x210C0096 ^ ((16 * v447) ^ 0x5EE2EF60) & v447;
  v450 = v448 ^ (v448 << 8) & 0x75EE2E00 ^ ((v448 << 8) ^ 0xF32E7500) & v449 ^ 0x88332483;
  v451 = (v450 << 16) & 0x75EE0000 ^ v450 ^ ((v450 << 16) ^ 0x2EF60000) & ((v449 << 8) & 0x75EE0000 ^ 0x11C00000 ^ ((v449 << 8) ^ 0x6E2E0000) & v449);
  v13 = ((v443 ^ (2 * v451) ^ 0x5E33B3CE) & ((v434 - 1293159972) ^ (((v434 - 1293159972) ^ 0xD4D7E3CA) + 428076536) ^ (((v434 - 1293159972) ^ 0x253B1577) - 395371701) ^ (((v434 - 1293159972) ^ 0xFE28B880) + 863811262) ^ (((v434 - 1293159972) ^ 0x3D6FBFFF) - 264523325) ^ 0xE73DBEEC) ^ (v443 ^ (2 * v451)) & 0xD5964F2E) == 1410466574;
  v452 = v442 & 2 ^ 0x3DC11DE;
  if (v13)
  {
    v452 = (v442 & 2) + 64754142;
  }

  v453 = ((v437 ^ 0x25564A7A) - 1362553887) ^ ((v437 ^ 0xE6689D6B) + 1844954354) ^ ((v437 ^ 0xDBDB06CE) + 1346658133);
  v454 = *(&off_1010A0B50 + (v404 ^ 0xA386)) - 1664822154;
  v455 = LODWORD(STACK[0xD00]) ^ (*&v431[4 * (HIBYTE(v414) ^ 0xE5)] + (HIBYTE(v414) ^ 0xE5) * (HIBYTE(v414) ^ 0xE5)) ^ (*&v454[4 * (BYTE1(v424) ^ 0x18)] + (BYTE1(v424) ^ 0x18) * (BYTE1(v424) ^ 0x18)) ^ (v440 + 1352932015) ^ ((v440 + 1352932015) >> 3) & 0xD13F2E ^ v442 & 0xFFFFFFFD ^ (v453 + 1755932124 + v452);
  HIDWORD(v456) = *&v438[4 * (BYTE2(v426) ^ 0x87)] + (BYTE2(v426) ^ 0x87) * (BYTE2(v426) ^ 0x87);
  LODWORD(v456) = HIDWORD(v456);
  v457 = (v456 >> 14) - ((2 * (v456 >> 14)) & 0xB0EDFFD2);
  v458 = *&v432[4 * (v424 ^ 0x55)] + (v424 ^ 0x55) * (v424 ^ 0x55);
  v459 = LODWORD(STACK[0xCF8]) ^ (*&v454[4 * BYTE1(v427)] + BYTE1(v427) * BYTE1(v427)) ^ v441 ^ (v441 >> 3) & 0xD13F2E ^ (*&v431[4 * (HIBYTE(v426) ^ 0xEC)] + (HIBYTE(v426) ^ 0xEC) * (HIBYTE(v426) ^ 0xEC));
  v460 = v458 ^ (v458 >> 2) ^ (v458 >> 1);
  v461 = *&v431[4 * (HIBYTE(v424) ^ 0x9F)] + (HIBYTE(v424) ^ 0x9F) * (HIBYTE(v424) ^ 0x9F);
  v462 = *&v432[4 * v427] + v427 * v427;
  v463 = (((v460 ^ 0x7EF9EE67) - 1745066006) ^ ((v460 ^ 0x4D452337) - 1539265862) ^ ((v460 ^ 0x66DFDC98) - 1881516777)) + (((v459 ^ 0x94E387DD) - 1247284040) ^ ((v459 ^ 0xFA526C3) + 786519466) ^ ((v459 ^ 0xF982DB6D) - 658069496)) + ((2 * ((v459 ^ 0x53DD5A0F) & (v460 ^ 0x556311C8) ^ v460 & 0x3119207C)) ^ 0xDDFDFF6F);
  HIDWORD(v456) = *&v438[4 * (BYTE2(v424) ^ 0xCA)] + (BYTE2(v424) ^ 0xCA) * (BYTE2(v424) ^ 0xCA);
  LODWORD(v456) = HIDWORD(v456);
  v464 = *&v431[4 * HIBYTE(v427)] + HIBYTE(v427) * HIBYTE(v427);
  v465 = *&v432[4 * (v414 ^ 0xB6)] + (v414 ^ 0xB6) * (v414 ^ 0xB6);
  v466 = (v456 >> 14) - ((2 * (v456 >> 14)) & 0x1A476E4) - 2133705870;
  v467 = LODWORD(STACK[0xBE0]) ^ v465 ^ v464 ^ (*&v454[4 * (BYTE1(v426) ^ 0xE9)] + (BYTE1(v426) ^ 0xE9) * (BYTE1(v426) ^ 0xE9)) ^ (v465 >> 1) ^ (v465 >> 2) ^ v466;
  v468 = v467 ^ (v466 >> 3) & 0xD13F2E;
  v469 = *(&off_1010A0B50 + (v404 ^ 0xB3AD)) - 2140319851;
  HIDWORD(v456) = *&v469[4 * (BYTE2(v468) ^ 0xA7)] + (BYTE2(v468) ^ 0xA7) * (BYTE2(v468) ^ 0xA7);
  LODWORD(v456) = HIDWORD(v456);
  v470 = LODWORD(STACK[0xCF0]) ^ v462 ^ (v462 >> 1) ^ (v462 >> 2) ^ v461 ^ (*&v454[4 * (BYTE1(v414) ^ 0xE9)] + (BYTE1(v414) ^ 0xE9) * (BYTE1(v414) ^ 0xE9));
  v471 = (v456 >> 4) - ((2 * (v456 >> 4)) & 0xB3ED7FC4);
  v472 = *(&off_1010A0B50 + v404 - 41106) - 917511778;
  v473 = v455 ^ 0x5F8640D6;
  v474 = *&v472[4 * ((v455 ^ 0x5F8640D6) >> 24)];
  HIDWORD(v456) = v474 - (((v455 ^ 0x5F8640D6) >> 24) | 0xAAAAAAAA);
  LODWORD(v456) = v474 - (((v455 ^ 0x5F8640D6) >> 24) | 0xFA);
  v475 = (v456 >> 4) - 1042670014 + (~(2 * (v456 >> 4)) | 0x7C4BC37D);
  v476 = v470 ^ (v457 - 663289879);
  v477 = v463 + 1662624;
  v478 = v476 ^ ((v457 - 663289879) >> 3) & 0xD13F2E;
  v479 = (v463 - 96) ^ 0x7E;
  v480 = *(&off_1010A0B50 + (v404 ^ 0xA0D7)) - 274972079;
  v481 = *(&off_1010A0B50 + v404 - 39696) - 335250638;
  v482 = *&v480[4 * v479] - (v479 | 0x8F);
  v483 = v477 ^ 0x354F40C;
  v484 = *&v472[4 * ((v477 ^ 0x354F40C) >> 24)];
  HIDWORD(v456) = v484 - (((v477 ^ 0x354F40C) >> 24) | 0xAAAAAAAA);
  LODWORD(v456) = v484 - (((v477 ^ 0x354F40C) >> 24) | 0xFA);
  v485 = (v456 >> 4) - ((2 * (v456 >> 4)) & 0x40EC4F9A) - 1602869299;
  v486 = LODWORD(STACK[0xBD8]) ^ v485 ^ (v485 >> 1) & 0x20C14A82;
  v487 = LODWORD(STACK[0xBD0]) ^ BYTE1(v478) ^ (*&v481[4 * (BYTE1(v478) ^ 0x7B)] + (BYTE1(v478) ^ 0x7B) * (BYTE1(v478) ^ 0x7B)) ^ (v482 & 0x200 | v477) ^ ((v482 & 0xFFFFFDFF) - ((2 * v482) & 0x928C2BC) - 2070650018) ^ (v471 - 638140446) ^ v475 ^ (v475 >> 1) & 0x20C14A82;
  v13 = ((v486 ^ 0xAA7E06EB) & STACK[0xCE0] ^ LODWORD(STACK[0xCD8])) == 134751490;
  v488 = ((v486 ^ 0x96822653) + 120263933) ^ ((v486 ^ 0xD408AE94) + 1168219196) ^ ((v486 ^ 0x72CAE91A) - 479994954);
  v489 = *&v469[4 * ((v455 ^ 0x5F8640D6) >> 16)];
  HIDWORD(v456) = v489 + HIWORD(v473) * HIWORD(v473);
  LODWORD(v456) = v489 + BYTE2(v473) * BYTE2(v473);
  v490 = v456 >> 4;
  v491 = v488 - 1910772095;
  v492 = STACK[0xCD0];
  if (v13)
  {
    v492 = STACK[0xCE8];
  }

  v493 = v491 + v492;
  v494 = HIBYTE(v476);
  v495 = *&v472[4 * (v494 ^ 0xA2)];
  HIDWORD(v496) = v495 - (v494 | 0xAAAAAAAA);
  LODWORD(v496) = v495 - (v494 | 0xFA);
  v497 = (v496 >> 4) - ((2 * (v496 >> 4)) & 0xB372B864);
  v498 = HIBYTE(v467) ^ 0x27;
  v499 = *&v472[4 * v498];
  HIDWORD(v496) = v499 - (v498 | 0xAAAAAAAA);
  LODWORD(v496) = v499 - (v498 | 0xFA);
  v500 = v478 ^ LODWORD(STACK[0xB70]) ^ BYTE1(v468) ^ (*&v480[4 * (v478 ^ 0x1B)] - (v478 ^ 0x1B | 0x8F)) ^ (*&v481[4 * (BYTE1(v468) ^ 0x71)] + (BYTE1(v468) ^ 0x71) * (BYTE1(v468) ^ 0x71)) ^ v493 ^ ((v493 ^ 0x38FCBF2F) - 28459097) ^ ((v493 ^ 0xEBFBE077) + 759881983) ^ ((v493 ^ 0x97F65ED0) + 1363631706) ^ ((v493 ^ 0x7DBFFEFE) - 1156645256) ^ (v490 - ((2 * v490) & 0xE4FAF220) - 226658032);
  v501 = (v496 >> 4) - ((2 * (v496 >> 4)) & 0xAB6A9490);
  v502 = *&v469[4 * BYTE2(v483)];
  HIDWORD(v496) = v502 + HIWORD(v483) * HIWORD(v483);
  LODWORD(v496) = v502 + BYTE2(v483) * BYTE2(v483);
  v503 = (v496 >> 4) - ((2 * (v496 >> 4)) & 0xE9C20656);
  HIDWORD(v496) = *&v469[4 * (BYTE2(v478) ^ 5)] + (BYTE2(v478) ^ 5) * (BYTE2(v478) ^ 5);
  LODWORD(v496) = HIDWORD(v496);
  v504 = LODWORD(STACK[0xBC0]) ^ v468 ^ (*&v480[4 * (v468 ^ 0xCF)] - (v468 ^ 0xCF | 0x8F)) ^ (v497 + 1505319986) ^ ((v497 + 1505319986) >> 1) & 0x20C14A82 ^ (v503 - 186580181) ^ BYTE1(v455) ^ (*&v481[4 * (BYTE1(v455) ^ 0x60)] + (BYTE1(v455) ^ 0x60) * (BYTE1(v455) ^ 0x60));
  v505 = (*&v481[4 * (BYTE1(v477) ^ 0xD4)] + (BYTE1(v477) ^ 0xD4) * (BYTE1(v477) ^ 0xD4)) ^ ((v496 >> 4) - ((2 * (v496 >> 4)) & 0x37A44686) - 1680727229) ^ __ROR4__(__ROR4__(LODWORD(STACK[0xBC8]) ^ (v501 - 709539256) ^ 0x3A511C84 ^ ((v501 - 709539256) >> 1) & 0x20C14A82, 9) ^ 0x5641D077, 23) ^ (*&v480[4 * (v455 ^ 0xA4)] - (v455 ^ 0xA4 | 0x8F)) ^ __ROR4__((__PAIR64__(v473, v455) >> 4) & 0xF000000F ^ 0x6BC28828, 28);
  v506 = *(&off_1010A0B50 + (v404 ^ 0xACD8)) - 2003312038;
  v507 = *&v506[4 * (HIBYTE(v487) ^ 0xBC)] + (HIBYTE(v487) ^ 0xBC) * (HIBYTE(v487) ^ 0xBC);
  v508 = *(&off_1010A0B50 + v404 - 39372) - 466463082;
  v509 = *&v506[4 * (HIBYTE(v500) ^ 0x97)] + (HIBYTE(v500) ^ 0x97) * (HIBYTE(v500) ^ 0x97);
  v510 = *(&off_1010A0B50 + (v404 ^ 0xA3B9)) - 1414320127;
  HIDWORD(v496) = *&v510[4 * (BYTE1(v504) ^ 0x56)] - (BYTE1(v504) ^ 0x56 | 0x90);
  LODWORD(v496) = HIDWORD(v496);
  v511 = v509 - ((2 * v509 + 128252730) & 0x63A3352);
  v512 = (v496 >> 31) - ((2 * (v496 >> 31)) & 0xB03CE96C);
  v513 = *(&off_1010A0B50 + v404 - 39765) - 327191355;
  HIDWORD(v496) = *&v513[4 * (v500 ^ 0xA4)] - (v500 ^ 0xA4 | 0x98);
  LODWORD(v496) = HIDWORD(v496);
  v514 = (v496 >> 21) - ((2 * (v496 >> 21)) & 0x91512DF6);
  HIDWORD(v496) = *&v508[4 * (BYTE2(v487) ^ 0x38)] - (BYTE2(v487) ^ 0x38 | 3);
  LODWORD(v496) = HIDWORD(v496);
  v515 = (v496 >> 20) - ((2 * (v496 >> 20)) & 0xC6587B28);
  v516 = LODWORD(STACK[0xBB8]) ^ (*&v508[4 * (BYTE2(v505) ^ 0x75)] - (BYTE2(v505) ^ 0x75 | 3)) ^ (v512 + 1478390966) ^ ((v512 + 1478390966) >> 3) ^ ((v512 + 1478390966) >> 6) ^ (v514 - 928475397) ^ (v507 - ((2 * v507 + 128252730) & 0x16312F06) - 1091889888) ^ ((v507 - ((2 * v507 + 128252730) & 0x16312F06u) - 1091889888) >> 4) & 0x3D55F43;
  HIDWORD(v496) = *&v510[4 * ((BYTE1(v505) ^ 3) - ((v505 >> 7) & 0xA0) - 48)] - (((BYTE1(v505) ^ 3) - ((v505 >> 7) & 0xA0) - 48) | 0x90);
  LODWORD(v496) = HIDWORD(v496);
  v517 = (v496 >> 31) - ((2 * (v496 >> 31)) & 0x72D88BAE);
  v518 = v504 & 0xBF ^ 0x8D ^ (627328033 - (((v504 & 0x40 ^ 0x4DEFAC65) + 1754001317) ^ (v504 & 0x40 | 0x39989432) ^ ((v504 & 0x40 ^ 0x47D584DD) + 1655818013)));
  v519 = *&v506[4 * (HIBYTE(v504) ^ 0xFA)] + (HIBYTE(v504) ^ 0xFA) * (HIBYTE(v504) ^ 0xFA);
  HIDWORD(v496) = *&v513[4 * v518] - (v518 | 0x98);
  LODWORD(v496) = HIDWORD(v496);
  v520 = LODWORD(STACK[0xBB0]) ^ (v517 + 963397079) ^ ((v517 + 963397079) >> 3) ^ ((v517 + 963397079) >> 6) ^ (v511 + 921671494) ^ ((v496 >> 21) - ((2 * (v496 >> 21)) & 0x67B9CBE2) + 870114801) ^ ((v511 + 921671494) >> 4) & 0x3D55F43 ^ __ROR4__(__ROR4__(v515 + 1663843732, 26) ^ 0xCDE67ECF, 18);
  LOBYTE(v517) = v505 ^ BYTE1(v477);
  v521 = *&v506[4 * (HIBYTE(v505) ^ 0x1C)] + (HIBYTE(v505) ^ 0x1C) * (HIBYTE(v505) ^ 0x1C);
  LODWORD(v506) = v521 - ((2 * v521 + 1738865466) & 0x6D2FB694);
  HIDWORD(v496) = *&v510[4 * (BYTE1(v487) ^ 0x36)] - (BYTE1(v487) ^ 0x36 | 0x90);
  LODWORD(v496) = HIDWORD(v496);
  v522 = (((BYTE1(v500) & 0xF0 ^ 0xF0) & 0x30 ^ 0xFFFFFFEF) & ((v500 >> 8) & 0xF ^ 0x203D0678) ^ 0x302309E) & ((BYTE1(v500) & 0xF0 ^ 0xF0) & 0xC0 ^ 0x233F367F) ^ 0x233F36E0;
  v523 = *&v510[4 * v522];
  LODWORD(v510) = (v496 >> 31) - ((2 * (v496 >> 31)) & 0x19FFCACA);
  HIDWORD(v496) = v523 - (v522 | 0x90);
  LODWORD(v496) = HIDWORD(v496);
  v524 = (v496 >> 31) - ((2 * (v496 >> 31)) & 0x3CF093E0);
  HIDWORD(v496) = *&v513[4 * (v517 ^ 0xAA)] - (v517 ^ 0xAA | 0x98);
  LODWORD(v496) = HIDWORD(v496);
  v525 = v519 - ((2 * v519 + 1738865466) & 0xFD927BB4) + 849066871;
  v526 = LODWORD(STACK[0xBA8]) ^ ((v496 >> 21) - ((2 * (v496 >> 21)) & 0xC2A3F5D4) + 1632762602) ^ (*&v508[4 * (BYTE2(v500) ^ 0x29)] - (BYTE2(v500) ^ 0x29 | 3)) ^ v525 ^ (v525 >> 4) & 0x3D55F43 ^ (v510 - 1929386651) ^ ((v510 - 1929386651) >> 3) ^ ((v510 - 1929386651) >> 6);
  v527 = *(&off_1010A0B50 + (v404 ^ 0xA6B5)) - 1718973219;
  v528 = v516 ^ 0xCA524636;
  v529 = *&v527[4 * HIBYTE(v528)] - (HIBYTE(v528) | 0x4C);
  HIDWORD(v496) = *&v513[4 * (v487 ^ 0x7D)] - (v487 ^ 0x7D | 0x98);
  LODWORD(v496) = HIDWORD(v496);
  v530 = LODWORD(STACK[0xBA0]) ^ (*&v508[4 * (BYTE2(v504) ^ 0xE7)] - (BYTE2(v504) ^ 0xE7 | 3)) ^ (v506 - 362129177) ^ ((v506 - 362129177) >> 4) & 0x3D55F43 ^ ((v496 >> 21) - 1176598602 + (~(2 * (v496 >> 21)) | 0x8C42F095)) ^ (v524 - 1636283920) ^ ((v524 - 1636283920) >> 3) ^ ((v524 - 1636283920) >> 6);
  v531 = (((BYTE1(v526) ^ 0xFAD4572F) + 446721568) ^ ((BYTE1(v526) ^ 0x33DFA9DA) - 743730965) ^ ((BYTE1(v526) ^ 0xBF7E0AA6) + 1594504087)) + (((BYTE1(v526) ^ 0xC34420D6) - 1769502596) ^ ((BYTE1(v526) ^ 0xC6D30690) - 1827623362) ^ ((BYTE1(v526) ^ 0x59726BE) + 1347718676)) - 2086884886;
  v532 = (v531 ^ 0x52DDE45E) & (2 * (v531 & 0x109DE05C)) ^ v531 & 0x109DE05C;
  v533 = ((2 * (v531 ^ 0x73F5A46E)) ^ 0xC6D08864) & (v531 ^ 0x73F5A46E) ^ (2 * (v531 ^ 0x73F5A46E)) & 0xE3684432;
  v534 = (v533 ^ 0xC2400020) & (4 * v532) ^ v532;
  v535 = ((4 * (v533 ^ 0x21284412)) ^ 0x8DA110C8) & (v533 ^ 0x21284412) ^ (4 * (v533 ^ 0x21284412)) & 0xE3684430;
  v536 = v534 ^ 0x63684432 ^ (v535 ^ 0x81200000) & (16 * v534);
  v537 = (16 * (v535 ^ 0x62484432)) & 0xE3684420 ^ 0xC1680412 ^ ((16 * (v535 ^ 0x62484432)) ^ 0x36844320) & (v535 ^ 0x62484432);
  v538 = (v536 << 8) & 0xE3684400 ^ v536 ^ ((v536 << 8) ^ 0x68443200) & v537;
  LODWORD(v513) = ((v538 << 16) ^ 0x44320000) & ((v537 << 8) & 0x63680000 ^ 0x3280000 ^ ((v537 << 8) ^ 0x68440000) & v537);
  v539 = *(&off_1010A0B50 + (v404 ^ 0xA8D6)) - 1229892026;
  v540 = *(&off_1010A0B50 + v404 - 36896) - 1098015326;
  v541 = v531 ^ (*&v539[4 * (BYTE1(v526) ^ 0x2B)] - (BYTE1(v526) ^ 0x2B | 0x82)) ^ (2 * ((v538 << 16) & 0x63680000 ^ v538 ^ v513));
  v542 = LODWORD(STACK[0xCC8]) ^ v529 ^ (v529 >> 2) ^ (v529 >> 4) ^ (*&v540[4 * (BYTE2(v530) ^ 0x5C)] + (BYTE2(v530) ^ 0x5C) * (BYTE2(v530) ^ 0x5C));
  v543 = (v541 ^ 0x168D6838) & (v542 ^ 0x28B07F70) ^ v541 & 0x9F24C2CB;
  LODWORD(STACK[0xEE8]) = v520;
  v544 = BYTE2(v520) ^ 0x7E;
  v545 = *&v527[4 * ((v520 ^ 0x817EE6ED) >> 24)] - (((v520 ^ 0x817EE6ED) >> 24) | 0x4C);
  HIDWORD(v496) = *&v540[4 * BYTE2(v528)] + BYTE2(v528) * BYTE2(v528);
  LODWORD(v496) = HIDWORD(v496);
  LODWORD(STACK[0xEF0]) = (v496 >> 21) - ((2 * (v496 >> 21)) & 0x6BD75F40);
  v546 = v545 ^ (v545 >> 4) ^ (v545 >> 2);
  LODWORD(STACK[0xEE0]) = (v543 ^ 0xE9FBBFF7) & (v542 ^ 0xF963D5E4 ^ v541);
  v547 = *(&off_1010A0B50 + (v404 ^ 0xB1FD)) - 1249542043;
  v548 = *&v547[4 * (v520 ^ 0xB2)] + (v520 ^ 0xB2) * (v520 ^ 0xB2);
  v549 = 2 * ((v546 ^ 0x29F531DA) & STACK[0xCC0] ^ LODWORD(STACK[0xCB8]));
  v550 = LODWORD(STACK[0xCB0]) + (((v546 ^ 0x43B255DB) - 1240637487) ^ ((v546 ^ 0xD7D58CCB) + 577406657) ^ ((v546 ^ 0xC455776A) + 837451106)) - (((v549 ^ 0x3144E2CB) - 1153777077) ^ ((v549 ^ 0x78ABD854) - 220858154) ^ ((v549 ^ 0xFAEE329F) + 1888490015));
  v551 = (v550 ^ 0xFB4766B1) & (2 * (v550 & 0xFA4776B9)) ^ v550 & 0xFA4776B9;
  v552 = ((2 * (v550 ^ 0x2FCF02B3)) ^ 0xAB10E814) & (v550 ^ 0x2FCF02B3) ^ (2 * (v550 ^ 0x2FCF02B3)) & 0xD588740A;
  v553 = (v552 ^ 0x81006000) & (4 * v551) ^ v551;
  v554 = ((4 * (v552 ^ 0x5488140A)) ^ 0x5621D028) & (v552 ^ 0x5488140A) ^ (4 * (v552 ^ 0x5488140A)) & 0xD5887408;
  v555 = v553 ^ 0xD588740A ^ (v554 ^ 0x54005000) & (16 * v553);
  v556 = (16 * (v554 ^ 0x81882402)) & 0xD5887400 ^ 0x8508340A ^ ((16 * (v554 ^ 0x81882402)) ^ 0x588740A0) & (v554 ^ 0x81882402);
  v557 = (v555 << 8) & 0xD5887400 ^ v555 ^ ((v555 << 8) ^ 0x88740A00) & v556;
  v558 = (v557 << 16) & 0x55880000 ^ v557 ^ ((v557 << 16) ^ 0x740A0000) & ((v556 << 8) & 0xD5880000 ^ 0x55880000 ^ ((v556 << 8) ^ 0x88740000) & v556);
  v559 = v526 ^ 0x616DF88B;
  v560 = *&v527[4 * HIBYTE(v559)] - (HIBYTE(v559) | 0x4C);
  v561 = (((BYTE1(v530) ^ 0x2A0A0525) + 1962869965) ^ ((BYTE1(v530) ^ 0xD7D11F8D) - 1994121627) ^ ((BYTE1(v530) ^ 0xFDDB1A14) - 1557259266)) + (((BYTE1(v530) ^ 0x58CF2C11) - 2085441747) ^ ((BYTE1(v530) ^ 0x436959CA) - 1743463688) ^ ((BYTE1(v530) ^ 0x6DD381CC) - 1230109966)) + 700171418;
  v562 = (v561 ^ 0x8954C2C1) & (2 * (v561 & 0xCA46C2E5)) ^ v561 & 0xCA46C2E5;
  v563 = ((2 * (v561 ^ 0x1958C2C3)) ^ 0xA63C004C) & (v561 ^ 0x1958C2C3) ^ (2 * (v561 ^ 0x1958C2C3)) & 0xD31E0026;
  v564 = (v563 ^ 0x21C0004) & (4 * v562) ^ v562;
  v565 = ((4 * (v563 ^ 0x51020022)) ^ 0x4C780098) & (v563 ^ 0x51020022) ^ (4 * (v563 ^ 0x51020022)) & 0xD31E0020;
  v566 = v564 ^ 0xD31E0026 ^ (v565 ^ 0x40180000) & (16 * v564);
  v567 = (16 * (v565 ^ 0x93060026)) & 0xD31E0020 ^ 0xC21E0006 ^ ((16 * (v565 ^ 0x93060026)) ^ 0x31E00260) & (v565 ^ 0x93060026);
  v568 = (v566 << 8) & 0xD31E0000 ^ v566 ^ ((v566 << 8) ^ 0x1E002600) & v567;
  v569 = (v568 << 16) & 0x531E0000 ^ v568 ^ ((v568 << 16) ^ 0x260000) & ((v567 << 8) & 0xD31E0000 ^ 0x411E0000 ^ ((v567 << 8) ^ 0x1E000000) & v567);
  v570 = *&v539[4 * (BYTE1(v530) ^ 0x6F)] - (BYTE1(v530) ^ 0x6F | 0x82);
  v571 = *&v540[4 * v544] + v544 * v544;
  v572 = *&v547[4 * v559] + v559 * v559;
  v573 = BYTE1(v516);
  v574 = (((BYTE1(v516) ^ 0x5337244E) - 1340160885) ^ ((BYTE1(v516) ^ 0xC82C245D) + 721798298) ^ ((BYTE1(v516) ^ 0x9B1B0055) + 2016600210)) + (((BYTE1(v516) ^ 0x8F505A51) + 1936132352) ^ ((BYTE1(v516) ^ 0xA7C97167) + 1543381962) ^ ((BYTE1(v516) ^ 0x5EECDFDB) - 1562669706));
  v575 = *&v527[4 * (HIBYTE(v530) ^ 0x5A)] - (HIBYTE(v530) ^ 0x5A | 0x4C);
  v576 = *&v539[4 * (v573 ^ 0x95)] - (v573 ^ 0x95 | 0x82);
  v577 = (((v575 >> 2) & 0x10 ^ 0xE830ED4) - 1362917496) ^ 0x1D061F08;
  v578 = v577 - 908474193;
  v579 = ((((((v578 & 0x201) >> 9) & 1) << 10) | 0x40298840) ^ (v578 & 0x201 | 0x21144528)) & 0xFFFFFFFD | (2 * (v578 & 1));
  v580 = (2 * (v578 ^ 0xF4D86365)) & 0x613DCD68 ^ 0x21044528 ^ ((2 * (v578 ^ 0xF4D86365)) ^ 0xC27B9AD0) & (v578 ^ 0xF4D86365);
  v581 = (4 * v579) & 0x350D28 ^ v579 ^ ((4 * v579) ^ 0x84F735A0) & v580;
  v582 = (4 * v580) & 0x613DCD68 ^ 0x6108C848 ^ ((4 * v580) ^ 0x84F735A0) & v580;
  v583 = (16 * v581) & 0x613DCD60 ^ v581 ^ ((16 * v581) ^ 0x108C8480) & v582;
  v584 = (16 * v582) & 0x613DCD40 ^ 0x60210968 ^ ((16 * v582) ^ 0x13DCD680) & v582;
  v585 = v583 ^ (v583 << 8) & 0x613DCD00 ^ ((v583 << 8) ^ 0x44C4800) & v584 ^ 0x35C920;
  v586 = (v577 - 908474193) ^ (2 * ((v585 << 16) & 0x613D0000 ^ v585 ^ ((v585 << 16) ^ 0x4D680000) & ((v584 << 8) & 0x613D0000 ^ 0x40300000 ^ ((v584 << 8) ^ 0x3DCD0000) & v584)));
  v587 = 173726519 - v577;
  if (((v586 ^ 0xD5CE34DD) & (v575 ^ 0xC56D393B) ^ v586 & 0x80479662) == 0x80461440)
  {
    v587 = v578;
  }

  v588 = (((v575 ^ 0xEBAE17D2) + 400735006) ^ ((v575 ^ 0xF088CEB1) + 214196863) ^ ((v575 ^ 0x5E0C763A) - 1572807946)) + 65539031 + v587;
  v589 = (v588 ^ 0x90571C1F) & (2 * (v588 & 0xD8979E9F)) ^ v588 & 0xD8979E9F;
  v590 = ((2 * (v588 ^ 0x179013D)) ^ 0xB3DD3F44) & (v588 ^ 0x179013D) ^ (2 * (v588 ^ 0x179013D)) & 0xD9EE9FA2;
  v591 = (v590 ^ 0x80CC1E00) & (4 * v589) ^ v589;
  v592 = ((4 * (v590 ^ 0x482280A2)) ^ 0x67BA7E88) & (v590 ^ 0x482280A2) ^ (4 * (v590 ^ 0x482280A2)) & 0xD9EE9FA0;
  v593 = (v592 ^ 0x41AA1E80) & (16 * v591) ^ v591;
  v594 = ((16 * (v592 ^ 0x98448122)) ^ 0x9EE9FA20) & (v592 ^ 0x98448122) ^ (16 * (v592 ^ 0x98448122)) & 0xD9EE9FA0;
  v595 = v593 ^ 0xD9EE9FA2 ^ (v594 ^ 0x98E89A00) & (v593 << 8);
  v596 = *&v547[4 * (v530 ^ 0x5B)] + (v530 ^ 0x5B) * (v530 ^ 0x5B);
  v597 = LODWORD(STACK[0xB98]) ^ (*&v540[4 * BYTE2(v559)] + BYTE2(v559) * BYTE2(v559)) ^ v575 ^ ((v588 ^ (v575 >> 2) & 0xFFFFFFEF ^ (2 * ((v595 << 16) & 0x59EE0000 ^ v595 ^ ((v595 << 16) ^ 0x1FA20000) & (((v594 ^ 0x41060582) << 8) & 0x59EE0000 ^ 0x11600000 ^ (((v594 ^ 0x41060582) << 8) ^ 0x6E9F0000) & (v594 ^ 0x41060582))))) >> 2);
  v598 = (*(v12 - 224) | *(v12 - 232) & 0x4A) ^ v548 ^ v543 & 0x587A0067 ^ LODWORD(STACK[0xEE0]);
  v599 = LODWORD(STACK[0xB90]) ^ __ROR4__(__ROR4__(*(v12 - 240) ^ 0x6ACA71C0, 21) ^ 0x88DE7CFF, 11) ^ v572 ^ __ROR4__(LODWORD(STACK[0xEF0]) - 1242845280, 11) ^ v570 ^ v561 ^ v550 ^ (2 * (v569 ^ v558));
  v600 = BYTE1(LODWORD(STACK[0xEE8]));
  v601 = LODWORD(STACK[0xCA8]) ^ (STACK[0xEF8] & 0x83 | 0x1100A800) ^ LODWORD(STACK[0xF00]) ^ v560 ^ (v560 >> 2) ^ (v560 >> 4) ^ v576 ^ v571 ^ (v574 + 15233092) ^ (((v574 + 15233092) ^ 0x34133C5D) - 1514654550) ^ (((v574 + 15233092) ^ 0x547ABCA6) - 976112557) ^ (((v574 + 15233092) ^ 0x61C2811F) - 261518868) ^ v596 ^ (((v574 + 15233092) ^ 0x6FFFF6EF) - 27984356);
  v602 = (((v600 ^ 0x755ED26D) + 1085993380) ^ ((v600 ^ 0x46D5FE3B) + 1932647926) ^ ((v600 ^ 0x45FED81B) + 1880816598)) + (((v600 ^ 0x7F5894AB) + 1025575708) ^ ((v600 ^ 0x29357EDE) + 1800200559) ^ ((v600 ^ 0x566DEA93) + 336885028)) - 206997089;
  v603 = (*&v539[4 * (v600 ^ 0x35)] - (v600 ^ 0x35 | 0x82)) ^ LODWORD(STACK[0xF08]) ^ v602 ^ (*&v547[4 * v528] + v528 * v528) ^ ((v602 ^ 0x533D2F53) - 713678633) ^ ((v602 ^ 0xEF15E052) + 1767829464) ^ ((v602 ^ 0xAB66C084) + 757976834) ^ ((v602 ^ 0x6EFAFFFF) - 390991749) ^ __ROR4__(__ROR4__(__ROR4__(v597 ^ 0x832C3A74, 21) ^ 0xC1B83D2A, 4) ^ 0xFC4070DE, 7);
  v604 = *(&off_1010A0B50 + (v404 ^ 0xB1AF)) - 1894013527;
  v605 = v604[BYTE1(v598) ^ 0x33];
  HIDWORD(v606) = ((v605 >> 1) | (v605 << 7)) ^ 0x75;
  LODWORD(v606) = v605 << 31;
  v607 = v604[BYTE2(v599) ^ 0x51];
  v608 = (((v604[HIBYTE(v599) ^ 0x4FLL] << 8) ^ 0xC228) - (~v607 & 8)) ^ v607 & 0xFFFFFFF7;
  v609 = v604[BYTE1(v599) ^ 0xA2] << 8;
  v610 = ((v608 << 16) ^ 0x47E8CA59) & (v609 ^ 0xFFFF34F9) | v609 & 0x3500;
  v611 = v601 ^ 0x819F5825;
  v612 = v604[v599 ^ 0xALL];
  v613 = ((2 * (((v601 >> 1) & 0x40 | 0x16) & (~(v611 >> 1) | 0x7FFFFFC0) | (v611 >> 1) & 0x29)) ^ 0xC4CC318F) & (v601 & 0x3B33CE01 ^ 0xEDFC33FE);
  v614 = v604[HIBYTE(v598) ^ 0x1DLL];
  v615 = v604[BYTE2(v598) ^ 0xBLL];
  v616 = v604[v598 ^ 0xD9];
  LODWORD(STACK[0xDB0]) = v616;
  v617 = v604[v611 >> 24];
  v618 = v604[BYTE2(v611)];
  v619 = v604[HIBYTE(v603) ^ 0x55];
  v620 = v604[BYTE2(v603) ^ 0xECLL];
  v621 = v604[v603 ^ 0x50];
  v622 = v604[v613 ^ 0xC4CC31A3];
  v623 = v604[BYTE1(v611)];
  v624 = v604[BYTE1(v603) ^ 0x42];
  LODWORD(STACK[0xD98]) = v624;
  v625 = ((v612 & 0x64 | (v610 ^ 0xB0891FC2) & (v612 ^ 0xFFFFFF55)) ^ 0xF783DDFB) - ((((2 * v612) & 0x50 ^ 0x9DF181ED) - 1228698248) ^ (((2 * v612) & 0x50) + 1262703325) ^ (((2 * v612) & 0x50 ^ 0x7CB2A9C) + 754525703)) + 941034917;
  v626 = ((v625 ^ 0x231E8FE2) - 805015376) ^ v625 ^ ((v625 ^ 0xA0777EFA) + 1399685560) ^ ((v625 ^ 0x74720E55) - 2023165671) ^ ((v625 ^ 0xFBFEFFFF) + 149160115);
  v627 = STACK[0xFC0];
  *(v627 + 3) = v616 ^ 0x9D;
  v628 = *(v12 - 208);
  STACK[0xDD0] = v614 ^ 0xFFFFFF9D;
  v629 = v619 ^ 0xFFFFFF9D;
  *(v12 - 232) = v617 ^ 0xFFFFFF9D;
  *(v12 - 224) = v629;
  STACK[0xE30] = (v606 >> 31) ^ 0x77;
  v630 = v626 ^ 0xFFFFFFED;
  STACK[0xDD8] = v630;
  v631 = HIWORD(v626) ^ 0xFFFFFFBA;
  STACK[0xDF0] = v631;
  v632 = HIBYTE(v626) ^ 0x53;
  STACK[0xDC8] = v632;
  v633 = (v626 >> 8) ^ 0x5F;
  STACK[0xE48] = v633;
  STACK[0xFC0] = v627;
  *v627 = v614 ^ 0x9D;
  v634 = v615 ^ 0xFFFFFF9D;
  STACK[0xDF8] = v634;
  *(v627 + 7) = v630;
  *(v627 + 1) = v634;
  *(v627 + 6) = v633;
  *(v627 + 5) = v631;
  *(v627 + 4) = v632;
  STACK[0xE10] = v622 ^ 0xFFFFFF9D;
  *(v627 + 12) = v629;
  *(v627 + 2) = (v606 >> 31) ^ 0x77;
  *(v627 + 11) = v622 ^ 0x9D;
  STACK[0xDE8] = v618 ^ 0xFFFFFF9D;
  *(v627 + 9) = v618 ^ 0x9D;
  STACK[0xE00] = v621 ^ 0xFFFFFF9D;
  *(v627 + 15) = v621 ^ 0x9D;
  STACK[0xDE0] = v620 ^ 0xFFFFFF9D;
  STACK[0xE38] = v623 ^ 0xFFFFFF9D;
  LODWORD(STACK[0xD88]) = v624 ^ 0xFFFFFF9D;
  *(v627 + 14) = v624 ^ 0x9D;
  *(v627 + 13) = v620 ^ 0x9D;
  *(v627 + 10) = v623 ^ 0x9D;
  *(v627 + 8) = v617 ^ 0x9D;
  v635 = *(&off_1010A0B50 + v404 - 38478) - 1504571902;
  v636 = *(v12 - 216);
  v637 = v404;
  v638 = *(&off_1010A0B50 + v404 - 37573) - 1267924523;
  LODWORD(v633) = (v635[v628 ^ 0x9CLL] ^ ((v628 ^ 0x92) - (v628 ^ 0xCC))) << 16;
  LODWORD(v613) = (v636 >> 8) ^ 0x5D ^ v638[BYTE1(v636) ^ 0x5ALL];
  LODWORD(v627) = *(v12 - 200);
  v639 = *(&off_1010A0B50 + (v404 ^ 0xA9B5)) - 1531013667;
  LODWORD(v632) = v639[v627 ^ 0xAALL] << 8;
  LODWORD(v611) = (((v633 ^ 0xFF07FFFF) & (((v636 ^ 0x7A ^ v638[v636 ^ 0xC8]) << 24) ^ 0x2ECC428C) | v633 & 0x33333333) ^ 0xBD5D7907) & (v632 ^ 0xFFFFC88F);
  LODWORD(v633) = v613 - ((2 * v613) & 0x66666666);
  v640 = *(v12 - 192);
  v641 = *(&off_1010A0B50 + (v404 ^ 0xAB42)) - 1989457390;
  LOBYTE(v634) = v641[v640 ^ 0xB6] ^ v640;
  LODWORD(v629) = ((v632 & 0xC400 | v611) ^ 0xD34386A6) & (v634 ^ 0xFFFFFFCB);
  LODWORD(v632) = (v404 - 45024033) & 0x2AEE77A;
  *(v12 - 240) = v632;
  LODWORD(v613) = v628 >> (v632 ^ 0x72);
  LODWORD(v632) = v641[STACK[0xF10] ^ 0xFAF72859];
  LODWORD(v632) = (((((v632 >> 1) | (v632 << 7)) ^ 0x2C) >> 3) | (32 * (((v632 >> 1) | (v632 << 7)) ^ 0x2C))) ^ 0xFFFFFFAA;
  LODWORD(v632) = (((v632 >> 4) | (16 * v632)) ^ 0x31) & (STACK[0xF10] ^ 0x16) ^ STACK[0xF10] & 0x68 ^ (((v632 >> 4) | (16 * v632)) ^ 0xA6) & (STACK[0xF10] ^ 0xE9);
  LODWORD(v611) = v638[BYTE2(v636) ^ 0xBCLL] ^ HIWORD(v636);
  v642 = HIBYTE(v636);
  v643 = v638[v642 ^ 0xC2];
  LODWORD(v604) = (v632 | 0xFFFFF000) & (((((v635[v613 ^ 0x1ALL] ^ ((v613 ^ 0x14) - (v613 ^ 0x4A))) << 16) ^ 0x6FF440E5) & (((v633 << 24) - 1291845632) ^ 0x6FFF44E7) | ((v633 << 24) - 1291845632) & 0x90000000) ^ 0x92B610AB);
  LODWORD(v638) = v641[HIWORD(v640) & 0xBF ^ 0x1F763642 ^ (HIWORD(v640) & 0x40 | 0x1F76363F)] ^ HIWORD(v640);
  v644 = v639[BYTE1(v627) ^ 0xD6];
  v645 = v639[BYTE2(v627) ^ 0xF8];
  LOWORD(v633) = v645 << 8;
  v646 = (((((v635[BYTE2(v628) ^ 0xFLL] ^ ((BYTE2(v628) ^ 1) - (BYTE2(v628) ^ 0x5F))) << 16) ^ 0x7DD36542) & ((v611 << 24) ^ 0x57FF75E7) | (v611 << 24) & 0x82000000) ^ 0xCDC346EC) & ((v645 << 8) ^ 0xFFFFF2FF);
  LODWORD(v635) = (((v635[HIBYTE(v628) ^ 0x9FLL] ^ ((HIBYTE(v628) ^ 0x91) - (HIBYTE(v628) ^ 0xCF))) << 16) ^ 0x80AB39B6) & (((v642 ^ v643 ^ 8) << 24) ^ 0x83FFFFFE) & 0x80FFFFFF | (((v642 ^ v643 ^ 8) & 0x7F) << 24);
  LODWORD(v611) = (v635 ^ 0x4604C649) & ((v639[BYTE3(v627) ^ 0x42] << 8) ^ 0xC6246ADB);
  LODWORD(v639) = (v641[HIBYTE(v640) ^ 0xA3] ^ 0xFFFFFFF7) & (HIBYTE(v640) ^ 0x13) ^ HIBYTE(v640) & 0xB3 ^ (v641[HIBYTE(v640) ^ 0xA3] ^ 0xBBBBBBBB) & (HIBYTE(v640) ^ 0xEC);
  LODWORD(v611) = v639 & 0x8E ^ 0xCE7AA96F ^ (v635 & 0x39DB1020 ^ 0x90BDC58A ^ v611) & (v639 ^ 0xFFFFFF23);
  v647 = *(&off_1010A0B50 + (v404 ^ 0xAE7D)) - 457739547;
  LODWORD(v642) = v634 & 0xD2 ^ 0xF4E622CC ^ v629;
  v648 = *(&off_1010A0B50 + (v404 ^ 0xA9A0)) - 1621929694;
  v649 = *(&off_1010A0B50 + v404 - 36929) - 627316615;
  v650 = *(&off_1010A0B50 + (v404 ^ 0xA273)) - 1529414003;
  v651 = *&v648[4 * v611] ^ *&v647[4 * BYTE1(v611)] ^ (*&v649[4 * BYTE2(v611)] - 2040818611) ^ (1263785427 * *&v650[4 * BYTE3(v611)] + 2029935656);
  LODWORD(v633) = ((v633 & 0xDC00 | v646) ^ 0x6222FBA3) & (v638 ^ 0xFFFFFF46);
  v652 = *(&off_1010A0B50 + v404 - 37625) - 265916415;
  v653 = *&v652[4 * (BYTE2(v651) ^ 0xCD)];
  HIDWORD(v606) = (2121263680 * v653 - 1681652160) & 0xFFFFFFE0 | ((-1007452334 * v653 + 1423843378) >> 27);
  LODWORD(v606) = 2121263680 * v653 - 1681652160;
  LODWORD(v611) = (1263785427 * *&v650[4 * BYTE3(v642)] + 2029935656) ^ (*&v649[4 * BYTE2(v642)] - 2040818611) ^ *&v647[4 * BYTE1(v642)] ^ 0xD159EEC1;
  LODWORD(v632) = v632 & 0xB1 | v604;
  LODWORD(v604) = *&v648[4 * v642] ^ 0x381FBAD3;
  v654 = v611 + v604 - 2 * (v611 & v604);
  LODWORD(STACK[0xD70]) = v654;
  LODWORD(v638) = v638 & 0xF2 ^ 0xE29AE0CD ^ v633;
  LODWORD(v611) = v632 ^ 0xB397A81E;
  LODWORD(v633) = *&v650[4 * ((v632 ^ 0xB397A81E) >> 24)];
  LODWORD(v632) = *&v650[4 * (v638 >> 24)];
  LODWORD(v604) = *&v649[4 * BYTE2(v611)];
  LODWORD(v650) = *&v649[4 * BYTE2(v638)];
  v655 = *(&off_1010A0B50 + v637 - 39377) - 2022026647;
  HIDWORD(v606) = v606 >> 14;
  LODWORD(v606) = HIDWORD(v606);
  LODWORD(v642) = ((BYTE1(v651) ^ 0xE47CD38B) + (BYTE1(v651) ^ 0xCB)) ^ *&v655[4 * (BYTE1(v651) ^ 0x96)] ^ (-503726167 * v653 + 711921689) ^ (8 * (v606 >> 23));
  v656 = *(&off_1010A0B50 + v637 - 38677) - 1138975995;
  v657 = *&v656[4 * (v651 ^ 0x1C)];
  v658 = *(&off_1010A0B50 + (v637 ^ 0xB3C5)) - 532204883;
  LODWORD(STACK[0xD80]) = v651;
  v659 = *&v647[4 * BYTE1(v638)];
  v660 = v642 ^ (v657 + 1704811758) ^ v654 ^ *&v658[4 * (HIBYTE(v651) ^ 0x5E)] ^ ((v657 + 1704811758) >> 2) & 0x2537E605;
  LODWORD(v638) = *&v648[4 * v638];
  LODWORD(v647) = *&v648[4 * v611] ^ (v604 - 2040818611) ^ *&v647[4 * (v644 ^ 0x85)] ^ (1263785427 * v633 + 2029935656);
  LODWORD(STACK[0xD50]) = v647;
  LODWORD(v644) = (v650 - 2040818611) ^ v659 ^ v638 ^ (1263785427 * v632 + 2029935656);
  LODWORD(STACK[0xD78]) = v644;
  LODWORD(v633) = v644 ^ 0xE9465412;
  v661 = (v644 ^ 0xE9465412) & 0x1000000;
  v662 = v647 ^ v660;
  LODWORD(STACK[0xDA8]) = v662;
  LODWORD(STACK[0xDB8]) = v660;
  v663 = v633 & 0xFEFFFFFF;
  if ((v661 & (v662 ^ 0x43AECB3D)) != 0)
  {
    v661 = -v661;
  }

  v664 = v662 ^ 0x599291A1;
  v665 = (v661 + (v662 ^ 0x599291A1)) ^ v663;
  v666 = v651 ^ 0x18FC5838;
  v667 = v665;
  *(v12 - 216) = v665;
  v668 = v665 ^ v651 ^ 0x18FC5838 ^ 0x401DDFD8;
  LODWORD(STACK[0xF10]) = v665 ^ v651 ^ 0x18FC5838;
  v669 = BYTE1(v668);
  v670 = (BYTE1(v668) ^ 0xE47CD3BF) + (BYTE1(v668) ^ 0xFF);
  v671 = *&v656[4 * ((v665 ^ v651 ^ 0x38) ^ 0xE)] + 1704811758;
  v672 = (v671 >> 2) & 0x2537E605;
  v673 = v672 ^ v671 & 0x20000000;
  if (((v671 >> 2) & v671 & 0x20000000) != 0)
  {
    v673 = v672 - (v671 & 0x20000000);
  }

  v674 = *&v652[4 * (BYTE2(v668) ^ 0xB3)];
  v675 = (530315920 * v674 - 1494154864) ^ v660 ^ (711921689 - 503726167 * v674) ^ *&v655[4 * (v669 ^ 0xA2)] ^ v671 & 0xDFFFFFFF ^ *&v658[4 * (((v665 ^ v651 ^ 0x18FC5838) >> 24) ^ 0x1C)] ^ v673 ^ v670;
  LODWORD(STACK[0xF08]) = v675 ^ v664;
  LODWORD(STACK[0xD90]) = v675;
  v676 = v675 ^ v664 ^ 0x46973860;
  v677 = v676 ^ v666;
  v678 = (BYTE1(v677) ^ 0xE47CD357) + (BYTE1(v677) ^ 0x17);
  v679 = *&v656[4 * ((v676 ^ v666) ^ 0x5B)] + 1704811758;
  v680 = *&v655[4 * (((v676 ^ v666) >> 8) ^ 0x4A)];
  v681 = v678 & (v680 ^ 0x605C07F9);
  v682 = (v680 ^ 0xF55C07F9) + v678;
  v683 = *&v652[4 * (((v676 ^ v666) >> 16) ^ 0x67)];
  v684 = (711921689 - 503726167 * v683) ^ (530315920 * v683 - 1494154864) ^ *&v658[4 * (((v676 ^ v666) >> 24) ^ 0xFC)] ^ __ROR4__(__ROR4__(__ROR4__(v679 ^ 0x43AA05CF ^ (v679 >> 2) & 0x2537E605, 4) ^ 0x174930EF, 27) ^ 0x3E6C055B, 1) ^ v675 ^ (v682 + ((2 * v681) ^ 0xF7FFFFFF) + 1);
  LODWORD(STACK[0xE18]) = v684;
  v685 = (v667 ^ 0x6EB64E8D ^ v676) - ((2 * (v667 ^ 0x6EB64E8D ^ v676)) & 0x93657E94) + 1236451146;
  LODWORD(STACK[0xDA0]) = v685;
  v686 = v684 ^ 0x7F3DACD;
  v687 = v684 ^ 0x7F3DACD ^ v676;
  v688 = v685 & 0x20000;
  if ((v687 & v685 & 0x20000) != 0)
  {
    v688 = -v688;
  }

  v689 = v687;
  LODWORD(STACK[0xE08]) = v687;
  v690 = (v688 + (v687 ^ 0x3AB8734F)) ^ v685 & 0xFFFDFFFF;
  LODWORD(STACK[0xD48]) = v690;
  v691 = v690 ^ 0xC02E1A6B;
  v692 = v690 ^ 0xC02E1A6B ^ v677;
  v693 = *&v652[4 * (BYTE2(v692) ^ 0xBC)];
  v694 = *&v656[4 * (v692 ^ 0x10)] + 1704811758;
  v695 = *&v655[4 * (BYTE1(v692) ^ 0x63)] ^ v694 ^ (530315920 * v693 - 1494154864) ^ (-503726167 * v693 + 711921689) ^ (v694 >> 2) & 0x2537E605;
  v696 = v692;
  *(v12 - 200) = v692;
  v697 = v695 ^ *&v658[4 * (HIBYTE(v692) ^ 0x6B)] ^ v686 ^ ((BYTE1(v692) ^ 0xE47CD37E) + (BYTE1(v692) ^ 0x3E));
  *(v12 - 192) = v697;
  v698 = v697 ^ 0x1ECFE78F;
  v699 = v697 ^ 0x1ECFE78F ^ v689;
  LODWORD(STACK[0xE50]) = v699 ^ v691;
  v700 = v699;
  LODWORD(STACK[0xE40]) = v699;
  v701 = v699 ^ v691 ^ 0x573C5748;
  v702 = *&v652[4 * (((v701 ^ v696) >> 16) ^ 0x79)];
  v703 = (-503726167 * v702 + 711921689) & (530315920 * v702 - 1494154864);
  v704 = (((2 * v703 - ((4 * v703) & 0x6F7E9FC0) - 1212198913) ^ 0x124EBA45 | (2 * v703) & 0x4840B000) ^ ((2 * v703) & 0x40B000 | 0x5A0E0A45)) + 26589753 * v702;
  v705 = (v701 ^ v696) >> 3;
  v706 = ((v705 & 3) << 6) | 0xFFFBCD38;
  v707 = (v705 & 0xFFFFFF1F | (32 * ((v701 ^ v696) & 7))) >> 2;
  LOBYTE(v707) = ((((v707 | 0x7DCBC880) & v706 ^ (((((v701 ^ v696) & 8) != 0) << 6) | 0x508)) >> 3) ^ 0xB5) + ((32 * v707) ^ 0x40);
  LODWORD(STACK[0xE20]) = v701 ^ v696;
  v708 = *&v658[4 * (((v701 ^ v696) >> 24) ^ 0x5B)];
  v709 = *&v656[4 * v707] + 1704811758;
  v710 = v709 ^ *&v655[4 * (((v701 ^ v696) >> 8) ^ 0x6E)] ^ (((2 * v708) & 0x2D49F11C ^ 0xF6F72EE3) + 1535206221 + (((v708 ^ 0xAEC6A6D6) + 1362712874) ^ ((v708 ^ 0xA7EB68D1) + 1477744431) ^ ((v708 ^ 0xCDF1A4B9) + 839801671))) ^ (v709 >> 2) & 0x2537E605 ^ v698 ^ ((((v701 ^ v696) >> 8) ^ 0x33) + (((v701 ^ v696) >> 8) ^ 0xE47CD373)) ^ (v704 - 782233174);
  *(v12 - 208) = v710;
  v711 = v710 ^ 0x876C4D6F;
  v712 = v710 ^ 0x876C4D6F ^ v700;
  LODWORD(STACK[0xE78]) = v712;
  v713 = v701 ^ v696 ^ 0x1233211;
  v714 = v712 ^ 0x411EC30B ^ v701;
  v715 = *&v652[4 * (((v714 ^ v713) >> 16) ^ 0xAE)];
  HIDWORD(v716) = ((-419519488 * v715) | ((-503726167 * v715 + 711921689) >> 22)) - 1136630784;
  LODWORD(v716) = HIDWORD(v716);
  v717 = *&v655[4 * (((v714 ^ v713) >> 8) ^ 0xDB)] ^ (v716 >> 10) ^ (16 * (v716 >> 10)) ^ v711 ^ ((((v714 ^ v713) >> 8) ^ 0xE47CD3C6) + (((v714 ^ v713) >> 8) ^ 0x86)) ^ 0x17011AC4;
  LODWORD(STACK[0xE60]) = v714 ^ v713;
  v718 = (v714 ^ v713) ^ 0x1F;
  v719 = *&v656[4 * v718] + 1704811758;
  v720 = *&v658[4 * (((v714 ^ v713) >> 24) ^ 0xD)] ^ v719 ^ (v719 >> 2) & 0x2537E605 ^ __ROR4__(__ROR4__(__ROR4__(v717, 9) ^ 0x7FEDC69D, 7) ^ 0x92211173, 16) ^ 0x55275511;
  v721 = v720 ^ v712 ^ 0x411EC30B;
  LODWORD(STACK[0xE70]) = v720;
  LODWORD(STACK[0xE90]) = v721;
  v722 = v721 ^ 0x9F12DAC8;
  v723 = v721 ^ 0x9F12DAC8 ^ v713;
  v724 = (BYTE1(v723) ^ 0xE47CD3DC) + (BYTE1(v723) ^ 0x9C);
  v725 = (v724 - ((2 * v724) & 0xC8B80FF2) - 178518023) ^ *&v655[4 * (((v723 ^ 0xAA3B) >> 8) ^ 0x6B)];
  v726 = *&v652[4 * (((v723 ^ 0xCFB4AA3B) >> 16) ^ 0xA3)];
  v727 = (530315920 * v726 - 1494154864) ^ (-503726167 * v726 + 711921689) ^ v720 ^ 0xC96ECDEE;
  v728 = v725 + v727 - 2 * (v725 & v727);
  v729 = *&v656[4 * (v723 ^ 0x7D)] + 1704811758;
  LODWORD(STACK[0xE58]) = v723;
  v730 = *&v658[4 * (HIBYTE(v723) ^ 0xDD)] ^ v729 ^ (v729 >> 2) & 0x2537E605 ^ 0x4DBA8FAB ^ v728;
  v731 = v714;
  LODWORD(STACK[0xDC0]) = v714;
  v732 = v730 ^ v714 ^ v723 ^ 0xCFB4AA3B;
  v733 = v730 ^ v714;
  LODWORD(STACK[0xEA8]) = v730 ^ v714;
  v734 = *&v652[4 * (BYTE2(v732) ^ 0xA)];
  v735 = (-503726167 * v734 + 711921689) ^ *&v658[4 * (HIBYTE(v732) ^ 0xA6)] ^ (530315920 * v734 - 1494154864) ^ *&v655[4 * (BYTE1(v732) ^ 0x74)];
  v736 = *&v656[4 * ((v730 ^ v714 ^ v723 ^ 0x3B) ^ 0xF9)] + 1704811758;
  LODWORD(STACK[0xE80]) = v730;
  v737 = v735 ^ v736 ^ (v736 >> 2) & 0x2537E605 ^ v730 ^ ((BYTE1(v732) ^ 0xE47CD369) + (BYTE1(v732) ^ 0x29));
  v738 = v730 ^ v722;
  LODWORD(STACK[0xEA0]) = v738;
  v739 = v737 ^ 0x5CCF2B8A ^ v738;
  LODWORD(STACK[0xED0]) = v739;
  v740 = v739 ^ 0xDF629020;
  v741 = v739 ^ 0xDF629020 ^ v733;
  LODWORD(STACK[0xEB0]) = v741;
  v742 = v741 ^ 0x6BDD0139 ^ v732 ^ 0xF77FE88C;
  v743 = v732 ^ 0xF77FE88C;
  LODWORD(STACK[0xE88]) = v732 ^ 0xF77FE88C;
  v744 = *&v652[4 * (BYTE2(v742) ^ 0x5A)];
  v745 = (-503726167 * v744 + 711921689) ^ *&v658[4 * (HIBYTE(v742) ^ 0x16)] ^ (530315920 * v744 - 1494154864) ^ *&v655[4 * (BYTE1(v742) ^ 0xB4)];
  v746 = *&v656[4 * (v741 ^ 0x39 ^ v732 ^ 0x8C ^ 0xD6)] + 1704811758;
  v747 = v745 ^ v746 ^ (v746 >> 2) & 0x2537E605 ^ v737 ^ 0x5CCF2B8A ^ HIBYTE(v742) ^ 0x1C ^ ((BYTE1(v742) ^ 0xE47CD3A9) + (BYTE1(v742) ^ 0xE9)) ^ ((HIBYTE(v742) ^ 0x1C) - ((2 * (HIBYTE(v742) ^ 0x1C)) & 0x11C) - 1767573362);
  LODWORD(STACK[0xEF0]) = v747;
  v748 = v747 ^ 0x6B8459BE;
  v749 = v747 ^ 0x6B8459BE ^ v740;
  LODWORD(STACK[0xEF8]) = v749 ^ 0x27F9DB44;
  v750 = v749 ^ 0x27F9DB44 ^ v743;
  LODWORD(STACK[0xEE8]) = v750;
  v751 = *&v652[4 * (BYTE2(v750) ^ 0x65)];
  v752 = BYTE1(v750) ^ 0x3E;
  v753 = v752 + (BYTE1(v750) ^ 0xE47CD37E);
  v754 = *&v655[4 * (v752 - ((2 * v752) & 0xBB) + 93)];
  v755 = *&v656[4 * (v749 ^ 0x44 ^ v743 ^ 0x4B)];
  v756 = v754 ^ (530315920 * v751 - 1494154864) ^ (711921689 - 503726167 * v751) ^ *&v658[4 * (HIBYTE(v750) ^ 0x74)] ^ (v755 + 1704811758) ^ ((v755 + 1704811758) >> 2) & 0x2537E605 ^ v748 ^ v753;
  LODWORD(STACK[0xD68]) = v677 ^ 0x929C462A;
  v757 = (v677 ^ 0x929C462A) + (*(v12 - 216) ^ 0x9106F37D);
  LODWORD(STACK[0xE68]) = v757;
  v757 = -429645753 - v757;
  LODWORD(STACK[0xEE0]) = v757;
  v758 = v757 - (*(v12 - 208) ^ 0x79E583F3);
  LODWORD(STACK[0xEC8]) = v742 ^ 0xA754CF7B;
  v759 = (v742 ^ 0xA754CF7B) + v758;
  LODWORD(STACK[0xEC0]) = v759;
  v760 = v759 - (v723 ^ 0xB06E5D5E) + (v741 ^ 0xEBCD6ACC) - 1288773692;
  LODWORD(STACK[0xEB8]) = v760;
  v761 = v731 ^ 0xB58F148E ^ v722;
  LODWORD(STACK[0xE28]) = v761;
  v762 = LODWORD(STACK[0xF10]) ^ 0x151F31CD;
  LODWORD(STACK[0xD58]) = v762;
  v763 = LODWORD(STACK[0xF08]) ^ 0x541B8EF1;
  LODWORD(STACK[0xD60]) = v763;
  v764 = v762 + v763 - (*(v12 - 192) ^ 0x8A698EED);
  v756 ^= 0xF45E0646;
  LODWORD(STACK[0xF00]) = v756;
  LODWORD(STACK[0xF10]) = v756 ^ v741 ^ 0x6BDD0139;
  LODWORD(STACK[0xE98]) = v737 ^ 0x4D5014CD;
  LODWORD(STACK[0xF08]) = v756 ^ v741 ^ 0x6BDD0139 ^ 0x47340429;
  v765 = v764 - v761 - (v737 ^ 0x4D5014CD) + v760 + (v756 ^ v741 ^ 0x6BDD0139 ^ 0x47340429);
  v766 = (v764 - v761 - (v737 ^ 0xCD) + v760 + ((v756 ^ v741 ^ 0x39) ^ 0x29) - 6) & 0x10;
  v767 = LODWORD(STACK[0xD48]) ^ 0x7B72A7AD;
  LODWORD(STACK[0xED8]) = v766;
  if ((v766 & ~v749) != 0)
  {
    v768 = -v766;
  }

  else
  {
    v768 = v766;
  }

  if ((v767 & 0x10000000) != 0)
  {
    v769 = -268435456;
  }

  else
  {
    v769 = 0x10000000;
  }

  v13 = v718 == (v718 + 100);
  v770 = STACK[0x1040];
  v771 = STACK[0xFD0] - ((LODWORD(STACK[0x1040]) >> 23) & 0x22);
  v772 = *(v12 - 176);
  v773 = BYTE1(v772) - ((v772 >> 7) & 0xAA);
  v774 = STACK[0xF28] - ((v772 >> 23) & 0xD4);
  v775 = HIWORD(LODWORD(STACK[0xF18])) - ((LODWORD(STACK[0xF18]) >> 15) & 0xF6);
  v776 = BYTE1(v770) - ((v770 >> 7) & 0x50);
  v777 = v770 - ((2 * v770) & 0x8F);
  v778 = BYTE2(v770) - ((v770 >> 15) & 0xE);
  v779 = v772 - ((2 * v772) & 0x5A);
  v780 = (LODWORD(STACK[0xF18]) >> 8) - ((LODWORD(STACK[0xF18]) >> 7) & 0x5A);
  v781 = STACK[0x1038];
  v782 = (v781 >> 21) - ((v781 >> 20) & 0x48);
  LOBYTE(v772) = LODWORD(STACK[0xF18]) - ((2 * LOBYTE(STACK[0xF18])) & 0x9A);
  LOBYTE(v770) = STACK[0xF20] - ((LODWORD(STACK[0xF18]) >> 23) & 0xD0);
  v783 = (v781 >> 13) - ((v781 >> 12) & 0x9A);
  *(v12 - 176) = v768 + (v749 ^ 0x16E9247A);
  v784 = LODWORD(STACK[0xFA0]) ^ ((v781 >> 5) - ((v781 >> 4) & 0xF6) - 5) ^ 0x52 ^ LODWORD(STACK[0xFE0]);
  v785 = (LODWORD(STACK[0xFA8]) ^ (v779 - 83)) ^ 0x21 ^ LODWORD(STACK[0xFE8]);
  LODWORD(STACK[0x1040]) = v769 + v767;
  v786 = v784;
  LODWORD(STACK[0x1038]) = (v784 ^ 0xC1) - (v784 ^ 0xD3FAFC0D);
  v787 = (LODWORD(STACK[0xF38]) ^ (v773 + 85)) ^ 0x2D ^ LODWORD(STACK[0xFF8]);
  STACK[0xFE0] = LODWORD(STACK[0xF98]) ^ LODWORD(STACK[0xFF0]) ^ 0x58 ^ (v782 - 92);
  v788 = LODWORD(STACK[0xF40]) ^ LODWORD(STACK[0x1000]) ^ 0x43 ^ (v775 - 5);
  LOBYTE(v782) = LODWORD(STACK[0xF48]) ^ HIWORD(LODWORD(STACK[0xF30])) ^ 0xAF ^ LODWORD(STACK[0x1008]);
  v789 = (LODWORD(STACK[0xF60]) ^ (v777 + 71)) ^ 0x56 ^ LODWORD(STACK[0x1010]);
  LODWORD(STACK[0x1010]) = (v789 ^ 0x1D) - (v789 ^ 0xD3FAFCD1);
  v790 = (LODWORD(STACK[0xF50]) ^ (v774 - 22)) ^ 0x27 ^ LODWORD(STACK[0x1018]);
  v791 = STACK[0xFC8];
  v792 = *(&off_1010A0B50 + LODWORD(STACK[0xFC8]) - 40014) - 484845566;
  v793 = LODWORD(STACK[0xD50]) ^ 0x89C00D32;
  v794 = (*(v12 - 200) ^ 0x180633DF) - v793;
  LODWORD(STACK[0x1018]) = ((v787 ^ 0xFE) + (v787 ^ 0x62A71CEE)) ^ v790 ^ ((v785 ^ 0xE7) - (v785 ^ 0xD3FAFC2B)) ^ *&v792[4 * (v785 ^ 0x23)] ^ v793;
  v795 = *(&off_1010A0B50 + (v791 ^ 0xAE74)) - 1110270314;
  v796 = v791;
  v797 = *(&off_1010A0B50 + (v791 ^ 0xA63C)) - 708905826;
  LODWORD(STACK[0x1008]) = *&v797[4 * v782] & 0x20000 ^ *&v795[4 * (v787 ^ 0x83)] ^ *&v797[4 * v782] & 0xFFFDFFFF;
  LOBYTE(v785) = LODWORD(STACK[0xF80]) ^ (v771 + 17) ^ LODWORD(STACK[0x1020]);
  v798 = LODWORD(STACK[0xF70]) ^ (v776 - 88) ^ 0x71 ^ LODWORD(STACK[0x1028]);
  LODWORD(STACK[0x1000]) = LODWORD(STACK[0xF78]) ^ (v780 - 83) ^ 0xD1 ^ LODWORD(STACK[0x1030]);
  v799 = v798;
  LODWORD(STACK[0x1030]) = (v798 ^ 6) + (v798 ^ 0x62A71C16);
  v800 = LODWORD(STACK[0xF58]) ^ (-STACK[0xFD8] - 121) ^ LODWORD(STACK[0x1048]);
  v801 = LODWORD(STACK[0xF90]) ^ (v778 + 7) ^ 0x79 ^ LODWORD(STACK[0x1058]);
  v802 = (LODWORD(STACK[0xF7C]) ^ (v772 - 51)) ^ 0x72 ^ LODWORD(STACK[0x1050]);
  LODWORD(STACK[0x1028]) = (v802 ^ 0xBC) - (v802 ^ 0xD3FAFC70);
  LOBYTE(v770) = LODWORD(STACK[0xF88]) ^ (v770 + 104) ^ *(v12 - 248);
  v803 = (LODWORD(STACK[0xF68]) ^ (v783 + 77)) ^ 0x42 ^ *(v12 - 256);
  LODWORD(STACK[0x1048]) = (v803 ^ 0x62A71CD7) + (v803 ^ 0xC7);
  v804 = STACK[0xDB0];
  LODWORD(STACK[0xFA8]) = (LODWORD(STACK[0xDB0]) ^ 0x9B) - (LODWORD(STACK[0xDB0]) ^ 0xD3FAFC57);
  v805 = LODWORD(STACK[0xD88]);
  v806 = ((2 * (LODWORD(STACK[0xD98]) ^ 0x50)) & 0xFFFFFFFB ^ 0x17) + (((LODWORD(STACK[0xD98]) ^ 0x33) - 97) ^ (LODWORD(STACK[0xD98]) - 82) ^ ((LODWORD(STACK[0xD98]) ^ 0xFFFFFF95) + 57));
  LODWORD(STACK[0xF90]) = v785 ^ 0xF3;
  v807 = *(&off_1010A0B50 + v796 - 39143) - 88612191;
  LODWORD(STACK[0xF98]) = *&v807[4 * (v785 ^ 0x9B)];
  LODWORD(STACK[0xFF8]) = v800 ^ 0x30;
  LODWORD(STACK[0x1020]) = *&v807[4 * (v800 ^ 0x58)];
  LODWORD(STACK[0xF88]) = *&v807[4 * (v790 ^ 0x25)];
  LODWORD(STACK[0xFA0]) = v770 ^ 0xC;
  LODWORD(STACK[0xFD8]) = *&v807[4 * (v770 ^ 0x3E)];
  LODWORD(STACK[0xFF0]) = *&v807[4 * (*(v12 - 224) ^ 0xA1)];
  LODWORD(STACK[0xFE8]) = (((v805 ^ 0x6BC2B87B) - 493219380) ^ (v805 + 715475377) ^ ((v805 ^ 0xD19B5DD0) + 1489237089)) + (((v805 ^ 0x8B8A2DDF) + 1953878768) ^ ((v805 ^ 0xF8AC0052) + 122945379) ^ ((v805 ^ 0x73262D36) - 1931881977));
  LODWORD(STACK[0xFD0]) = *&v807[4 * (*(v12 - 232) ^ 0x3ELL)];
  v808 = STACK[0xDC8];
  LODWORD(STACK[0xF80]) = *&v807[4 * (STACK[0xDC8] ^ 0x4F)];
  v809 = STACK[0xDD0];
  LODWORD(STACK[0xF58]) = *&v807[4 * (STACK[0xDD0] ^ 0x46)];
  v810 = STACK[0xDD8];
  v811 = STACK[0xDD8];
  LODWORD(STACK[0xFE0]) = *&v797[4 * STACK[0xFE0]];
  LODWORD(STACK[0xF78]) = *&v797[4 * v788];
  LODWORD(STACK[0xF60]) = *&v797[4 * v801];
  v812 = STACK[0xDF8];
  v813 = STACK[0xDE8];
  LODWORD(STACK[0xF68]) = *&v797[4 * (STACK[0xDF0] ^ 0x91)];
  v814 = *&v797[4 * (v812 ^ 0x6D)];
  v815 = STACK[0xDE0];
  LODWORD(STACK[0xF70]) = *&v797[4 * (v813 ^ 0xC3)];
  LODWORD(STACK[0xF7C]) = *&v797[4 * (v815 ^ 0xEF)];
  LODWORD(STACK[0xF50]) = (((v811 ^ 0x84A59554) + 2069523174) ^ ((v811 ^ 0x40CCCA6A) - 1087162916) ^ ((v811 ^ 0xC4695F28) + 999727258)) - (((v811 ^ 0x31DE008C) + 842771016) ^ ((v811 ^ 0x89C87618) - 1976705836) ^ ((v811 ^ 0x6BEC8A4E) + 1745428614));
  v816 = STACK[0xE00];
  v817 = ((STACK[0xE00] ^ 0x8027175B) + 2144921689) ^ ((STACK[0xE00] ^ 0xCB6D1A28) + 882042156) ^ ((STACK[0xE00] ^ 0x4B4A0DBD) - 1263144257);
  v818 = (v817 + 648687439) ^ 2;
  *(v12 - 248) = v765 - 1752707108;
  v819 = v794 + v765 - 1752707108;
  LODWORD(STACK[0x1050]) = v819;
  LODWORD(STACK[0x1058]) = v819 - 1466336849;
  if (v13)
  {
    v820 = v765 + 820161247;
  }

  else
  {
    v820 = v819 - 1466336849;
  }

  *(v12 - 256) = v820;
  v821 = STACK[0xE10];
  v822 = (((v821 ^ 0xF8314F8) + 813493123) ^ ((v821 ^ 0x1375AD7B) + 747262466) ^ ((v821 ^ 0x1CF6B913) + 587810410)) - (((v821 ^ 0x78E000D6) + 208179493) ^ ((v821 ^ 0x28AD529C) + 472236911) ^ ((v821 ^ 0x104D5616) + 616941541));
  if (((((((v817 + 79) ^ 0x1C) - 1) ^ (v817 + 17)) ^ (v818 + 2)) & 0x10) != 0)
  {
    v823 = 1935579251;
  }

  else
  {
    v823 = 1935579219;
  }

  v824 = *&v792[4 * (v804 ^ 0x5F)];
  v825 = v817 + ((((v823 + v817 + 648687439) & 0xFFFFFFF8 | ((((v818 & (2 * (v817 + 648687439)) ^ (v817 + 648687439)) << 30) ^ ((v817 + 648687439) << 29)) >> 29)) + 1710700672) ^ 0x2C050320);
  v826 = STACK[0xE48];
  v827 = LODWORD(STACK[0x1008]) ^ LODWORD(STACK[0xF88]) ^ LODWORD(STACK[0x1018]) ^ v808 ^ LODWORD(STACK[0xF68]) ^ LODWORD(STACK[0xF80]) ^ (LODWORD(STACK[0xF50]) - 803252630) ^ *&v792[4 * (v810 ^ 0xD2)] ^ *&v795[4 * (STACK[0xE48] ^ 0x35)] ^ ((((v826 ^ 0x4A95A0D7) - 1104589942) ^ ((v826 ^ 0x1E536EE) - 178659919) ^ ((v826 ^ 0x29D78A61) - 580165312)) + (((v826 ^ 0x2FB9F61E) - 800716474) ^ ((v826 ^ 0x6BD68FFB) - 1809223519) ^ ((v826 ^ 0x446F79AD) - 1148156169)) + 1776552421);
  v828 = *(v12 - 144);
  v829 = LODWORD(STACK[0xFA0]) ^ ((LODWORD(STACK[0x1000]) ^ 0x62A71C10) + LODWORD(STACK[0x1000])) ^ LODWORD(STACK[0xD78]) ^ LODWORD(STACK[0xF78]) ^ LODWORD(STACK[0x1028]) ^ *&v795[4 * (LODWORD(STACK[0x1000]) ^ 0x7D)] ^ LODWORD(STACK[0xFD8]) ^ *&v792[4 * (v802 ^ 0x78)] ^ *(v12 - 232) ^ LODWORD(STACK[0xF70]) ^ LODWORD(STACK[0xFD0]) ^ *&v792[4 * (STACK[0xE10] ^ 0x54)] ^ (v822 + 881366468) & 0x2C0507FF ^ *&v795[4 * (STACK[0xE38] ^ 0x90)] ^ (((2 * ((STACK[0xE38] ^ 0x6F) & (STACK[0xE38] ^ 0x100ED) ^ STACK[0xE38] & 0x92)) ^ 0x100) + 1655118864);
  v830 = LODWORD(STACK[0x1038]) ^ LODWORD(STACK[0x1048]) ^ LODWORD(STACK[0xFF8]) ^ LODWORD(STACK[0xD80]) ^ LODWORD(STACK[0xFE0]) ^ *&v792[4 * (v786 ^ 5)] ^ LODWORD(STACK[0x1020]) ^ *&v795[4 * (v803 ^ 0xBA)] ^ *(v12 - 224) ^ LODWORD(STACK[0xFF0]) ^ (LODWORD(STACK[0xFE8]) + 335563608) ^ LODWORD(STACK[0xF7C]) ^ *&v792[4 * (v816 ^ 0xALL)] ^ *&v795[4 * (v806 - 14)] ^ (v825 + 51);
  v831 = LODWORD(STACK[0x1030]) ^ LODWORD(STACK[0xF90]) ^ LODWORD(STACK[0xD70]) ^ LODWORD(STACK[0x1010]) ^ *&v795[4 * (v799 ^ 0x7B)] ^ LODWORD(STACK[0xF98]) ^ *&v792[4 * (v789 ^ 0xD9)] ^ LODWORD(STACK[0xF60]) ^ __ROR4__(__ROR4__(__ROR4__(__ROR4__(v809 ^ LODWORD(STACK[0xFA8]) ^ v824 ^ v814 ^ LODWORD(STACK[0xF58]) ^ ((STACK[0xE30] ^ 0x62A71C1F) + (STACK[0xE30] ^ 0xF)) ^ 0x3E79EAB3 ^ *&v795[4 * (STACK[0xE30] ^ 0x72)], 5) ^ 0xC5D9FCEF, 17) ^ 0x1C068EBC, 16) ^ 0x11161988, 26) ^ 0x2A9CEC01;
  v832 = STACK[0xFC8];
  v833 = v827 ^ 0x8C9FBC7C;
  v834 = *(&off_1010A0B50 + LODWORD(STACK[0xFC8]) - 36928) - 316203902;
  v835 = v829 ^ 0x6916BD1C;
  v836 = *(&off_1010A0B50 + LODWORD(STACK[0xFC8]) - 39990) - 1608075046;
  HIDWORD(v837) = *&v834[4 * BYTE2(v833)];
  LODWORD(v837) = HIDWORD(v837);
  v838 = *(&off_1010A0B50 + LODWORD(STACK[0xFC8]) - 41093) - 1168013803;
  v839 = (v837 >> 11) ^ ((v837 >> 11) >> 4) ^ *&v836[4 * HIBYTE(v831)] ^ ((v837 >> 11) >> 5) ^ *&v838[4 * (BYTE1(v835) - ((v829 >> 7) & 4) + 2)] ^ BYTE1(v835);
  v13 = (v830 & 2) == 0;
  v840 = v830 ^ 0xDE0B23A5;
  if (v13)
  {
    v841 = 2;
  }

  else
  {
    v841 = -2;
  }

  v842 = *(&off_1010A0B50 + v832 - 40576) - 1384014782;
  v843 = v839 ^ 0x6A790FEF ^ *&v842[4 * ((v841 + v840) ^ 0x95)];
  v844 = *&v836[4 * HIBYTE(v840)];
  HIDWORD(v846) = *&v834[4 * BYTE2(v831)];
  LODWORD(v846) = HIDWORD(v846);
  v845 = v846 >> 11;
  v847 = (v844 & 0x2000000 | v844 & 0xFDFFFFFF ^ BYTE1(v833)) ^ v845 ^ *&v838[4 * (BYTE1(v833) ^ 2)];
  HIDWORD(v846) = *&v834[4 * BYTE2(v840)];
  LODWORD(v846) = HIDWORD(v846);
  v848 = *(v12 - 216) ^ (v846 >> 11) ^ ((v846 >> 11) >> 5) ^ ((v846 >> 11) >> 4) ^ BYTE1(v831) ^ *&v842[4 * v833] ^ *&v836[4 * HIBYTE(v835)] ^ *&v838[4 * (BYTE1(v831) ^ 2)] ^ 0x76BC2B02;
  HIDWORD(v846) = *&v834[4 * BYTE2(v835)];
  LODWORD(v846) = HIDWORD(v846);
  v849 = LODWORD(STACK[0xDA8]) ^ (v846 >> 11) ^ *&v836[4 * HIBYTE(v833)] ^ ((v846 >> 11) >> 4) ^ ((v846 >> 11) >> 5) ^ *&v842[4 * v831] ^ 0x4EBD7304 ^ *&v838[4 * (BYTE1(v840) ^ 2)];
  v850 = v847 ^ (v845 >> 4) ^ (v845 >> 5) ^ 0x131FD344;
  v851 = *&v842[4 * v835] ^ LODWORD(STACK[0xD58]) ^ v850 & 0xDFFFFFFF ^ (v850 & 0x20000000 | 0x4F0D0D00);
  v852 = v851 ^ 0x649C4EB0;
  HIDWORD(v846) = *&v834[4 * BYTE2(v848)];
  LODWORD(v846) = HIDWORD(v846);
  v853 = v846 >> 11;
  LODWORD(v846) = __ROR4__(__ROR4__(v843, 16) ^ 0xB1DB5A00, 16);
  v854 = LODWORD(STACK[0xDB8]) ^ v846 ^ 0xC72CF0AE;
  v855 = *&v838[4 * (BYTE1(v852) ^ 2)] ^ LODWORD(STACK[0xD60]) ^ *&v836[4 * HIBYTE(v849)] ^ v853 ^ (v853 >> 4) ^ (v853 >> 5) ^ *&v842[4 * ((LOBYTE(STACK[0xDB8]) ^ v846 ^ 0xAE) - ((2 * (LOBYTE(STACK[0xDB8]) ^ v846 ^ 0xAE)) & 0x2E) - 105)] ^ BYTE1(v852);
  v13 = (v855 & 0x400) == 0;
  v856 = v855 ^ 0x53643EA2;
  HIDWORD(v846) = *&v834[4 * BYTE2(v849)];
  LODWORD(v846) = HIDWORD(v846);
  v857 = v846 >> 11;
  if (v13)
  {
    v858 = -1024;
  }

  else
  {
    v858 = 1024;
  }

  v859 = v858 + v856;
  HIDWORD(v860) = *&v834[4 * ((HIWORD(v852) & 4 | 0x52) ^ HIWORD(v852) & 0xFB)];
  LODWORD(v860) = HIDWORD(v860);
  v861 = BYTE1(v854) ^ LODWORD(STACK[0xDA0]) ^ *&v842[4 * (v849 ^ BYTE1(v840))] ^ *&v836[4 * HIBYTE(v848)] ^ (v860 >> 11) ^ ((v860 >> 11) >> 4) ^ ((v860 >> 11) >> 5) ^ *&v838[4 * (BYTE1(v854) ^ 2)];
  HIDWORD(v860) = *&v834[4 * BYTE2(v854)];
  LODWORD(v860) = HIDWORD(v860);
  v862 = BYTE1(v849) ^ LODWORD(STACK[0xD68]) ^ *&v842[4 * v848] ^ (v860 >> 11) ^ ((v860 >> 11) >> 4) ^ ((v860 >> 11) >> 5) ^ *&v836[4 * (HIBYTE(v851) ^ 0x5A)] ^ *&v838[4 * (BYTE1(v849) ^ 2)];
  LODWORD(v860) = __ROR4__(__ROR4__(LODWORD(STACK[0xD90]) ^ v857 ^ *&v838[4 * (BYTE1(v848) ^ 2)] ^ (v857 >> 4) ^ (v857 >> 5) ^ *&v836[4 * HIBYTE(v854)] ^ *&v842[4 * v852] ^ BYTE1(v848) ^ 0x8F8D3552, 23) ^ 0x45103EA9, 4) ^ 0x4D1C8491;
  HIDWORD(v860) = v860;
  v863 = v860 >> 5;
  v864 = BYTE2(v863) ^ 0xA9;
  v865 = *&v836[4 * ((v863 ^ 0xBAA907D3) >> 24)];
  v866 = ((2 * v865) & 0x263FA688 ^ 0xFDF1DFF7) - 1197021189 + (((v865 ^ 0x666B7D15) - 1718320405) ^ ((v865 ^ 0x4CA7DDDA) - 1286069722) ^ ((v865 ^ 0x8F4BB479) + 1890864007));
  HIDWORD(v860) = *&v834[4 * (BYTE2(v861) ^ 0xEE)];
  LODWORD(v860) = HIDWORD(v860);
  v867 = (v860 >> 11) ^ ((v860 >> 11) >> 5) ^ ((v860 >> 11) >> 4) ^ 0xCA9E9F5D;
  if ((v867 & 0x100) != 0)
  {
    v868 = -256;
  }

  else
  {
    v868 = 256;
  }

  v869 = v868 + v867;
  LODWORD(v871) = __ROR4__(v859 ^ 0x22A42351, 17) ^ 0x14F0D016;
  HIDWORD(v871) = v871;
  v870 = v871 >> 15;
  v872 = *&v836[4 * (HIBYTE(v870) ^ 0x55)] ^ BYTE1(v862) ^ *&v842[4 * (v863 ^ 0xD3)] ^ *&v838[4 * (BYTE1(v862) ^ 0xD2)] ^ 0x99FAA02F ^ v869;
  v873 = *&v836[4 * (HIBYTE(v861) ^ 0xEB)];
  HIDWORD(v871) = *&v834[4 * (BYTE2(v862) ^ 0x96)];
  LODWORD(v871) = HIDWORD(v871);
  v874 = BYTE1(v863) ^ 0x53389B85 ^ *&v838[4 * (BYTE1(v863) ^ 5)];
  v875 = v873 & 0xFFFFDFFF ^ (v871 >> 11) ^ (v873 & 0x2000 | 0x26370A8E) ^ ((v871 >> 11) >> 4) ^ ((v871 >> 11) >> 5) ^ 0x5A315221;
  v876 = v875 + v874;
  v877 = v875 & v874;
  v878 = STACK[0x1050];
  v879 = LODWORD(STACK[0x1050]) + 1136804279;
  v880 = v872 & 0x80000;
  if ((v872 & 0x80000 & v879) != 0)
  {
    v880 = -v880;
  }

  v881 = v879 ^ LODWORD(STACK[0xE08]) ^ v872 & 0xFFF7FFFF ^ (v880 + v879);
  v882 = LODWORD(STACK[0xE18]) ^ *&v838[4 * (BYTE1(v861) ^ 0x5C)] ^ BYTE1(v861) ^ *&v842[4 * (v862 ^ 0x46)] ^ v866;
  v883 = *&v842[4 * (v870 ^ 0xD4)] ^ LODWORD(STACK[0x1040]) ^ LODWORD(STACK[0x1058]) ^ *(v12 - 256) ^ (v876 - 2 * v877);
  HIDWORD(v884) = *&v834[4 * v864];
  LODWORD(v884) = HIDWORD(v884);
  v885 = *(v12 - 200) ^ *&v836[4 * (HIBYTE(v862) ^ 0x61)] ^ BYTE1(v870) ^ (v884 >> 11) ^ *&v838[4 * (BYTE1(v870) ^ 0x98)] ^ ((v884 >> 11) >> 4) ^ ((v884 >> 11) >> 5) ^ *&v842[4 * (v861 ^ 0xBA)] ^ 0x64D1BFBD;
  HIDWORD(v884) = *&v834[4 * (BYTE2(v870) ^ 0x15)];
  LODWORD(v884) = HIDWORD(v884);
  v886 = v884 >> 11;
  LODWORD(v884) = __ROR4__(__ROR4__(v886 ^ (v886 >> 1) ^ 0xF9EBB158, 8) ^ 0x600937CC, 18) ^ 0xF9BFE813;
  HIDWORD(v884) = v884;
  v887 = v882 ^ v886 ^ ((v884 >> 6) >> 4);
  HIDWORD(v884) = *&v834[4 * (BYTE2(v881) ^ 0xC7)];
  LODWORD(v884) = HIDWORD(v884);
  v888 = (v884 >> 11) ^ ((v884 >> 11) >> 5) ^ ((v884 >> 11) >> 4);
  v889 = v887 ^ 0x866D2FE2;
  v890 = ((v883 ^ 0xCF88) >> 8);
  v891 = v890 ^ *&v836[4 * ((v887 ^ 0x866D2FE2) >> 24)];
  v892 = v888 & 0x62E1FBEF ^ 0xC3EEC791 ^ (v891 ^ 0x5E4559D3) & (v888 ^ 0xCA9E9F5D);
  v893 = *(v12 - 192) ^ *&v842[4 * v885] ^ *&v838[4 * (v890 ^ 2)] ^ v888 & 0x24A40D2D ^ (v891 ^ 0xE7FF50EE) & (v888 ^ 0x356160A2);
  HIDWORD(v884) = *&v834[4 * BYTE2(v885)];
  LODWORD(v884) = HIDWORD(v884);
  v881 ^= 0xD5952077;
  v894 = LODWORD(STACK[0xE50]) ^ BYTE1(v889) ^ *&v836[4 * (HIBYTE(v883) ^ 0x3F)] ^ (v884 >> 11) ^ *&v838[4 * (BYTE1(v889) ^ 2)] ^ ((v884 >> 11) >> 4) ^ ((v884 >> 11) >> 5) ^ *&v842[4 * v881] ^ 0x4BDAC224;
  HIDWORD(v884) = *&v834[4 * BYTE2(v889)];
  LODWORD(v884) = HIDWORD(v884);
  v895 = BYTE1(v881) ^ LODWORD(STACK[0xE20]) ^ *&v836[4 * HIBYTE(v885)] ^ (v884 >> 11) ^ ((v884 >> 11) >> 4) ^ ((v884 >> 11) >> 5) ^ *&v838[4 * (BYTE1(v881) ^ 2)] ^ *&v842[4 * (v883 ^ 0x88)];
  HIDWORD(v884) = *&v834[4 * ((v883 ^ 0x19ACF88) >> 16)];
  LODWORD(v884) = HIDWORD(v884);
  v896 = LODWORD(STACK[0xE40]) ^ (v884 >> 11) ^ ((v884 >> 11) >> 5) ^ ((v884 >> 11) >> 4) ^ *&v842[4 * v889] ^ __ROR4__(__ROR4__(*&v836[4 * HIBYTE(v881)], 2) ^ 0x4381FBDD, 30) ^ *&v838[4 * (BYTE1(v885) ^ 2)] ^ 0xD206041A;
  v897 = ((v895 ^ 0xB263) >> 8);
  v898 = *&v838[4 * (v897 ^ 2)];
  LODWORD(v884) = __ROR4__(__ROR4__(v893 ^ __ROR4__(__ROR4__(__ROR4__(v892, 14) ^ 0xBA4A892B, 25) ^ 0xE54FFA18, 25) ^ 0x792A1A2, 27) ^ 0x7B86AC92, 17) ^ 0x2F75E736;
  HIDWORD(v884) = v884;
  v899 = v884 >> 20;
  HIDWORD(v884) = *&v834[4 * BYTE2(v896)];
  LODWORD(v884) = HIDWORD(v884);
  v900 = *(v12 - 208) ^ (v884 >> 11) ^ *&v836[4 * (HIBYTE(v899) ^ 0xB)] ^ ((v884 >> 11) >> 4) ^ ((v884 >> 11) >> 5) ^ *&v842[4 * (v895 ^ 0x63)] ^ *&v838[4 * (BYTE1(v894) ^ 2)] ^ 0x7D42EF15;
  HIDWORD(v884) = *&v834[4 * (BYTE2(v895) ^ 0x14)];
  LODWORD(v884) = HIDWORD(v884);
  v901 = LODWORD(STACK[0xDC0]) ^ *&v836[4 * HIBYTE(v894)] ^ (v884 >> 11) ^ ((v884 >> 11) >> 4) ^ ((v884 >> 11) >> 5) ^ BYTE1(v899) ^ *&v842[4 * (v896 ^ BYTE1(v885))] ^ 0x7BD71F72 ^ *&v838[4 * (BYTE1(v899) ^ 2)];
  v902 = LODWORD(STACK[0xE60]) ^ 0xBE263FA1 ^ (v878 + 1332287076);
  v899 ^= 0x354F00AEu;
  HIDWORD(v884) = *&v834[4 * BYTE2(v899)];
  LODWORD(v884) = HIDWORD(v884);
  v903 = (v878 + 1332287076) ^ BYTE1(v896) ^ (v884 >> 11) ^ ((v884 >> 11) >> 5) ^ ((v884 >> 11) >> 4) ^ *&v836[4 * ((v895 ^ 0x5414B263u) >> 24)] ^ *&v838[4 * (BYTE1(v896) ^ 2)] ^ *&v842[4 * v894] ^ 0x53643EA2;
  HIDWORD(v884) = *&v834[4 * BYTE2(v894)];
  LODWORD(v884) = HIDWORD(v884);
  v904 = LODWORD(STACK[0xE78]) ^ (v884 >> 11) ^ ((v884 >> 11) >> 5) ^ ((v884 >> 11) >> 4) ^ *&v836[4 * HIBYTE(v896)] ^ v898 & 0xFDFFFFFF ^ (v897 - (((v895 ^ 0x5414B263u) >> 7) & 0x19C) - (v898 & 0x2000000) - 1975753266) ^ 0x8030B4F3 ^ *&v842[4 * v899];
  v905 = *&v836[4 * HIBYTE(v904)];
  v906 = v903 & v902;
  v907 = v903 + v902;
  v908 = ((2 * v905) & 0x263FA688 ^ 0xFDF1DFF7) - 1197021189 + (((v905 ^ 0xB830448D) + 1204796275) ^ ((v905 ^ 0xE5513AC4) + 447661372) ^ ((v905 ^ 0xF8E66AFF) + 119117057));
  HIDWORD(v884) = *&v834[4 * BYTE2(v904)];
  LODWORD(v884) = HIDWORD(v884);
  v909 = v907 - 2 * v906;
  v910 = *&v836[4 * HIBYTE(v900)] ^ LODWORD(STACK[0xE70]) ^ (v884 >> 11) ^ ((v884 >> 11) >> 4) ^ ((v884 >> 11) >> 5) ^ BYTE1(v901) ^ *&v838[4 * (BYTE1(v901) ^ 2)] ^ *&v842[4 * (v909 ^ 0x2B)];
  v909 ^= 0xEF8106BC;
  LODWORD(v884) = __ROR4__(*&v834[4 * BYTE2(v909)], 11);
  LOBYTE(v894) = v900 ^ BYTE1(v894);
  v911 = *&v834[4 * BYTE2(v900)];
  v912 = BYTE1(v900) ^ LODWORD(STACK[0xE28]) ^ *&v842[4 * v904] ^ v884 ^ 0xA81E5DA1 ^ ((v884 ^ 0xA81E5DA1) >> 4) ^ ((v884 ^ 0xA81E5DA1) >> 5) ^ *&v836[4 * HIBYTE(v901)] ^ *&v838[4 * (BYTE1(v900) ^ 2)];
  HIDWORD(v884) = v911;
  LODWORD(v884) = v911;
  v913 = *&v836[4 * HIBYTE(v909)] ^ (v884 >> 11) ^ ((v884 >> 11) >> 4) ^ ((v884 >> 11) >> 5);
  HIDWORD(v884) = *&v834[4 * BYTE2(v901)];
  LODWORD(v884) = HIDWORD(v884);
  v914 = LODWORD(STACK[0xE90]) ^ (v884 >> 11) ^ *&v842[4 * v894] ^ ((v884 >> 11) >> 4) ^ ((v884 >> 11) >> 5) ^ v908 ^ *&v838[4 * (BYTE1(v909) ^ 2)] ^ 0x82E4182A;
  v915 = *&v834[4 * BYTE2(v914)];
  HIDWORD(v884) = v915 ^ 0x604;
  LODWORD(v884) = v915 ^ 0x99AD5000;
  v916 = v884 >> 11;
  v917 = LODWORD(STACK[0xE58]) ^ BYTE1(v904) ^ *&v842[4 * v901] ^ *&v838[4 * (BYTE1(v904) ^ 2)] ^ __ROR4__(__ROR4__(__ROR4__(v913 ^ 0x6FD87A0, 11) ^ 0x9F9518A9, 24) ^ 0x727771D3, 29);
  v918 = (v916 >> 1) + v916 - 2 * ((v916 >> 1) & v916);
  v919 = STACK[0xE68];
  v920 = (-1879778523 - LODWORD(STACK[0xE68])) ^ LODWORD(STACK[0xE80]) ^ *&v836[4 * (HIBYTE(v910) ^ 0x53)] ^ BYTE1(v912) ^ v916;
  v921 = v917 ^ 0xEFF9588D;
  v922 = v920 ^ *&v842[4 * (v917 ^ 0x8D)] ^ __ROR4__(__ROR4__(__ROR4__(*&v838[4 * (BYTE1(v912) ^ 0xDE)], 27) ^ 0x5D50414D, 2) ^ 0x3C9513CF, 3) ^ (v918 >> 4);
  v923 = BYTE1(v914) ^ 0x53389B82 ^ *&v838[4 * (BYTE1(v914) ^ 2)];
  LOWORD(v920) = v910 ^ 0x55C6;
  HIDWORD(v884) = *&v834[4 * ((v910 ^ 0x6D4D55C6) >> 16)];
  LODWORD(v884) = HIDWORD(v884);
  v924 = *&v836[4 * HIBYTE(v921)] ^ (v884 >> 11) ^ ((v884 >> 11) >> 4) ^ ((v884 >> 11) >> 5) ^ 0x7C0658AF;
  v925 = v924 + v923;
  v926 = v924 & v923;
  HIDWORD(v884) = *&v834[4 * (BYTE2(v912) ^ 0xCA)];
  LODWORD(v884) = HIDWORD(v884);
  v927 = v914 ^ (v909 >> 8);
  v928 = BYTE1(v921);
  v929 = (v884 >> 11) ^ LODWORD(STACK[0xEA0]) ^ ((v884 >> 11) >> 5) ^ ((v884 >> 11) >> 4) ^ *&v836[4 * HIBYTE(v914)] ^ *&v838[4 * (BYTE1(v921) ^ 2)] ^ *&v842[4 * v920];
  v930 = (-1879778523 - LODWORD(STACK[0xE68])) ^ __ROR4__(__ROR4__(__ROR4__(v922 ^ 0x76A0C35, 12) ^ 0x95B2E45B, 15) ^ 0x21C59C42, 5);
  v931 = *&v842[4 * (v912 ^ 0x52)] ^ LODWORD(STACK[0xE88]) ^ (v925 - 2 * v926);
  HIDWORD(v884) = *&v834[4 * BYTE2(v921)];
  LODWORD(v884) = HIDWORD(v884);
  v932 = LODWORD(STACK[0xEA8]) ^ BYTE1(v920) ^ (v884 >> 11) ^ ((v884 >> 11) >> 5) ^ ((v884 >> 11) >> 4) ^ *&v836[4 * (HIBYTE(v912) ^ 0xEE)] ^ *&v838[4 * (BYTE1(v920) ^ 2)] ^ *&v842[4 * v927] ^ 0x988A8797;
  LOBYTE(v912) = (2 * (v931 >> 17)) ^ 0x64;
  v933 = ((v912 & 0xE ^ 0x2829B23D) & (HIWORD(v931) & 1 | 0x8081214) | 0x84444C00) ^ (v912 & 0xE ^ 0x2829B23D) & 0x2021A02B;
  v934 = *&v834[4 * (BYTE2(v929) ^ 0x33)];
  v935 = (__ROR4__(__ROR4__((((v934 << 9) & 0xF80003FF ^ 0x87FFFFFF) & ((v934 >> 23) ^ 0x980A34CD) | (v934 << 9) & 0x67F00000) ^ 0xD7D27E02, 6) ^ 0xBCC7A2E6, 14) ^ 0x592C172D) & ((v934 << 21) ^ 0x3F7FFFFF) ^ (v934 << 21) & 0xA9E00000;
  v936 = v933 & 0xB23B ^ 0x29FFF22F ^ (v933 | 0x19200C0) & (v912 & 0xF0 ^ 0x29FF4054);
  v937 = v930 ^ 0xB0B926B3;
  v938 = *&v836[4 * HIBYTE(v937)] ^ LODWORD(STACK[0xE98]) ^ *&v842[4 * (v931 ^ 0x6F)] ^ *&v838[4 * (BYTE1(v932) ^ 2)] ^ BYTE1(v932) ^ v935 ^ (v935 >> 4) ^ (v935 >> 5);
  HIDWORD(v884) = *&v834[4 * v936];
  LODWORD(v884) = HIDWORD(v884);
  v939 = *&v836[4 * HIBYTE(v932)];
  v940 = (v884 >> 11) ^ ((v884 >> 11) >> 5) ^ ((v884 >> 11) >> 4) ^ 0xCA9E9F5D;
  v13 = (v940 & v939 & 0x40000) == 0;
  v941 = v940 + (v939 & 0x40000);
  v942 = v940 - (v939 & 0x40000);
  if (v13)
  {
    v942 = v941;
  }

  v943 = v929 ^ v928 ^ 0x9DF5;
  LODWORD(v944) = __ROR4__(__ROR4__(__ROR4__(*&v834[4 * BYTE2(v932)], 30) ^ 0x33EFDDB9, 11) ^ 0x1FF91F0F, 23) ^ 0x1FEEE110;
  HIDWORD(v944) = v944;
  v945 = (1990330558 - v919) ^ LODWORD(STACK[0xED0]) ^ *&v836[4 * (HIBYTE(v929) ^ 0x48)] ^ *&v842[4 * v937] ^ *&v838[4 * ((BYTE1(v931) ^ 0x83) - ((2 * (BYTE1(v931) ^ 0x83)) & 4) + 2)] ^ (v944 >> 11) ^ BYTE1(v931) ^ 0x83 ^ ((v944 >> 11) >> 4) ^ ((v944 >> 11) >> 5) ^ 0x1CAB5EBB;
  HIDWORD(v944) = *&v834[4 * BYTE2(v937)];
  LODWORD(v944) = HIDWORD(v944);
  v946 = (v944 >> 11) ^ HIBYTE(v943) ^ ((v944 >> 11) >> 5) ^ ((v944 >> 11) >> 4) ^ *&v836[4 * (HIBYTE(v931) ^ 0x71)] ^ *&v838[4 * (HIBYTE(v943) ^ 2)] ^ __ROR4__(__ROR4__(__ROR4__(*&v842[4 * v932], 29) ^ 0x5E887881, 15) ^ 0xCC7E6290, 20);
  v947 = LODWORD(STACK[0xEB0]) ^ BYTE1(v937) ^ v939 & 0xFFFBFFFF ^ *&v842[4 * v943] ^ *&v838[4 * (BYTE1(v937) ^ 2)] ^ 0x7237CB33 ^ v942;
  v948 = v945 - v919 - 2 * (v945 & (1990330558 - v919)) + 1990330558;
  if ((v948 & 0x200) != 0)
  {
    v949 = -512;
  }

  else
  {
    v949 = 512;
  }

  v950 = v949 + v948;
  v951 = LODWORD(STACK[0xEC0]) ^ LODWORD(STACK[0xEC8]);
  v952 = v946 & 2;
  if ((v946 & 2 & v951) != 0)
  {
    v952 = -v952;
  }

  v953 = LODWORD(STACK[0xEC0]) ^ v946 & 0xFFFFFFFD ^ 0x75709619 ^ (v952 + v951);
  v954 = LODWORD(STACK[0xEB8]) ^ 0xB878E5DC ^ (v947 + LODWORD(STACK[0xEB8]) - 2 * (v947 & STACK[0xEB8]));
  v955 = v950 ^ 0x7F47A48A;
  LODWORD(v957) = __ROR4__(__ROR4__(v953, 4) ^ 0xA6D71ED, 16) ^ 0x5FCD6D37;
  HIDWORD(v957) = v957;
  v956 = v957 >> 12;
  v958 = *&v834[4 * ((v950 ^ 0x7F47A48Au) >> 16)];
  v959 = *&v834[4 * BYTE2(v954)];
  v960 = *&v834[4 * ((v956 ^ 0x7349D052u) >> 16)];
  v961 = *&v834[4 * (BYTE2(v938) ^ 0x5E)];
  v962 = v938 ^ 0x90C6467;
  HIDWORD(v957) = v960;
  LODWORD(v957) = v960;
  v963 = BYTE1(v962) ^ (v957 >> 11) ^ ((v957 >> 11) >> 5) ^ ((v957 >> 11) >> 4) ^ *&v836[4 * HIBYTE(v954)] ^ *&v838[4 * (BYTE1(v962) ^ 2)] ^ 0xB61D75A7;
  v964 = *&v842[4 * v955] ^ 0x7C5AFD8F;
  v965 = v963 & 0x100;
  if ((v963 & 0x100 & v964) != 0)
  {
    v965 = -v965;
  }

  v966 = v965 + v964;
  v967 = *&v838[4 * (BYTE1(v954) ^ 2)];
  v968 = *&v838[4 * (BYTE1(v956) ^ 0xD2)];
  v969 = BYTE1(v955);
  v970 = *&v838[4 * (BYTE1(v955) ^ 2)];
  v971 = *&v836[4 * HIBYTE(v962)];
  v972 = *&v836[4 * HIBYTE(v955)];
  HIDWORD(v973) = v961;
  LODWORD(v973) = v961;
  v974 = v970 ^ v969 ^ (v973 >> 11) ^ ((v973 >> 11) >> 4) ^ ((v973 >> 11) >> 5) ^ *&v836[4 * ((v956 ^ 0x7349D052u) >> 24)] ^ *&v842[4 * v954] ^ 0xF13858F3;
  HIDWORD(v973) = v959;
  LODWORD(v973) = v959;
  v975 = *(v12 - 176) ^ LODWORD(STACK[0xED8]) ^ v972 ^ (v973 >> 11) ^ ((v973 >> 11) >> 4) ^ ((v973 >> 11) >> 5) ^ *&v842[4 * v962] ^ v968;
  v976 = (v966 + (v963 & 0xFFFFFEFF ^ 0x9923B68A) - 2 * (v966 & (v963 & 0xFFFFFEFF ^ 0x9923B68A))) ^ LODWORD(STACK[0xEE0]);
  v977 = v976 + LODWORD(STACK[0xEE0]) - 2 * (v976 & STACK[0xEE0]);
  HIDWORD(v973) = v958;
  LODWORD(v973) = v958;
  v978 = LODWORD(STACK[0xEF0]) ^ v971 ^ (v973 >> 11) ^ ((v973 >> 11) >> 4) ^ ((v973 >> 11) >> 5) ^ *&v842[4 * (v956 ^ 0x52)] ^ v967 ^ 0x4821B7EC;
  v979 = LODWORD(STACK[0xEE8]) ^ 0x721185F0;
  LODWORD(v973) = __ROR4__(v974, 25);
  v980 = LODWORD(STACK[0xEB0]) ^ LODWORD(STACK[0xEF8]) ^ 0xE391140B ^ v977;
  v981 = *(&off_1010A0B50 + v832 - 38231) - 1969143119;
  v982 = *&v981[4 * (BYTE2(v975) ^ 0x17)];
  v983 = *&v981[4 * BYTE2(v980)];
  LODWORD(v973) = __ROR4__(v973 ^ 0x64FC7958, 7);
  v984 = v979 ^ v973 ^ 0xDDDC8CA8;
  v985 = *&v981[4 * BYTE2(v984)];
  v986 = *&v981[4 * BYTE2(v978)];
  v987 = *(&off_1010A0B50 + (v832 ^ 0xA8F5)) - 759193315;
  v988 = *&v987[4 * HIBYTE(v978)];
  LODWORD(v981) = *&v987[4 * (HIBYTE(v975) ^ 0xAD)];
  v989 = *&v987[4 * HIBYTE(v980)];
  LODWORD(v987) = *&v987[4 * HIBYTE(v984)];
  LOBYTE(v971) = v975 ^ BYTE1(v956);
  v990 = *(&off_1010A0B50 + (v832 ^ 0xB05E)) - 552519154;
  v991 = *&v990[4 * ((v979 ^ v973) ^ 0xA8)];
  v992 = *&v990[4 * (v978 ^ BYTE1(v954))];
  v993 = *&v990[4 * (v971 ^ 0xDD)];
  LODWORD(v990) = *&v990[4 * v980];
  v994 = BYTE1(v980);
  v995 = *(&off_1010A0B50 + (v832 ^ 0xAA67)) - 1611606495;
  v996 = *&v995[4 * (((v979 ^ v973) >> 8) ^ 0xFE)];
  v997 = *&v995[4 * (BYTE1(v975) ^ 0xFC)];
  v998 = v982 ^ LODWORD(STACK[0xF00]) ^ v988 ^ (v982 >> 4) & 0x77A5F23 ^ v991 ^ *&v995[4 * v994];
  v999 = v986 ^ (v986 >> 4) & 0x77A5F23 ^ 0xD37BB08B ^ v987;
  v1000 = *&v995[4 * BYTE1(v978)] ^ v985 ^ (v985 >> 4) & 0x77A5F23 ^ 0xF2E20C7 ^ v989;
  LODWORD(v973) = __ROR4__(__ROR4__(v993, 15) ^ 0xD6ED531C, 17);
  v1001 = (v997 ^ 0xDC55904C) + v999 - 2 * ((v997 ^ 0xDC55904C) & v999);
  v1002 = (v973 ^ 0xE19D43A4) + v1000 - 2 * ((v973 ^ 0xE19D43A4) & v1000);
  LODWORD(v987) = *(v12 - 248);
  v1003 = ((HIBYTE(v998) << 7) | 0x91BF107C) & ((v998 >> 25) ^ 0x91BF10BC);
  LODWORD(v995) = v1002 + (v987 ^ LODWORD(STACK[0xF08])) - 2 * (v1002 & (v987 ^ LODWORD(STACK[0xF08])));
  v1004 = LODWORD(STACK[0xEF8]) ^ LODWORD(STACK[0xF00]) ^ v981 ^ v983 ^ v992 ^ (v983 >> 4) & 0x77A5F23 ^ v996;
  v1005 = *(&off_1010A0B50 + (v832 ^ 0xA572)) - 1652567166;
  v1006 = v995 ^ v987;
  v1007 = (((HIBYTE(v998) ^ 0x27) - 6) ^ ((HIBYTE(v998) ^ 0x75) - 84) ^ ((HIBYTE(v998) ^ 0xFFFFFFAA) + 117)) + v1005[((((v1003 >> 7) ^ 0x1F) & (HIBYTE(v998) & 6 ^ 0x3B) ^ 0x3E) + ((2 * v1003) ^ 0xC0))];
  LOBYTE(v995) = v1007 - 55;
  LOBYTE(v1007) = (54 - v1007) & 0xF2 ^ (v1007 - 55) & 0xA4;
  LOBYTE(v981) = (v995 ^ 0x70) & (2 * ((v995 ^ 0x70) & (2 * ((v995 ^ 0x70) & (2 * ((v995 ^ 0x70) & (2 * ((v995 ^ 0x70) & (2 * v1007) ^ v1007)) ^ v1007)) ^ v1007)) ^ v1007)) ^ v1007;
  v1008 = LODWORD(STACK[0xF10]) ^ v979 ^ v1001 ^ v990;
  v1009 = STACK[0xFC0];
  *v1009 = v995 ^ (2 * v981) ^ 0xE5;
  v1010 = *(&off_1010A0B50 + v832 - 39025) - 2032017719;
  v1009[6] = v1010[BYTE1(v1004) ^ 0x9ALL] ^ 0x30;
  LODWORD(v990) = v1005[HIBYTE(v1006) ^ 0x5BLL] + (((HIBYTE(v1006) ^ 0x54) + 89) ^ ((HIBYTE(v1006) ^ 0xFFFFFFBC) - 79) ^ ((HIBYTE(v1006) ^ 0xFFFFFFF6) - 5)) + 3;
  LOBYTE(v995) = v990 & 0x1A ^ 0x2F;
  v1009[8] = v990 ^ (2 * ((v990 ^ 0x4C) & (2 * ((v990 ^ 0x4C) & (2 * ((v990 ^ 0x4C) & (2 * ((v990 ^ 0x4C) & (2 * ((v990 ^ 0x4C) & (2 * ((v990 ^ 0x4C) & 0x16 ^ v995)) ^ v995)) ^ v995)) ^ v995)) ^ v995)) ^ v995)) ^ 0x95;
  v1011 = *(&off_1010A0B50 + v832 - 37969) - 2061990935;
  LODWORD(v995) = v1011[BYTE2(v1006) ^ 0xAALL];
  v1009[9] = ((v995 >> 3) | (32 * v995)) ^ (16 * (v995 >> 3)) ^ 0xB;
  v1009[14] = v1010[BYTE1(v1008) ^ 0xDALL] & 0xEF ^ 0xBD ^ (v1010[BYTE1(v1008) ^ 0xDALL] & 0x10 | 0x8F);
  v1012 = (HIBYTE(v1004) ^ ((HIBYTE(v1004) ^ 0x6B) - 65) ^ ((HIBYTE(v1004) ^ 0x17) - 61) ^ 0x2A) + v1005[HIBYTE(v1004) ^ 0x93];
  LOBYTE(v995) = v1012 + 40;
  LOBYTE(v1012) = v1012 + 88;
  LOBYTE(v995) = v995 & 0xE ^ 0xC4;
  v1009[4] = v1012 ^ (2 * ((v1012 ^ 4) & (2 * ((v1012 ^ 4) & (2 * ((v1012 ^ 4) & (2 * ((v1012 ^ 4) & (2 * ((v1012 ^ 4) & (2 * v995) ^ v995)) ^ v995)) ^ v995)) ^ v995)) ^ v995)) ^ 0x22;
  v1013 = v1011[BYTE2(v1004) ^ 0xA9];
  v1014 = ((v1013 >> 3) | (32 * v1013)) ^ (16 * ((v1013 >> 3) | (32 * v1013))) ^ 2;
  v1009[5] = v1014;
  v1015 = *(&off_1010A0B50 + v832 - 40318) - 573829806;
  v1016 = v1015[v1004 ^ 0x82];
  v1017 = v1016 ^ (16 * v1016) ^ 0xFFFFFFD0 ^ 0x26 ^ (((16 * v1016) ^ 0xFFFFFFD0) & 0x40 | 1);
  v1009[7] = v1017;
  LODWORD(v995) = v1010[BYTE1(v1006) ^ 0x9ALL] ^ 0x67;
  v1009[10] = v1010[BYTE1(v1006) ^ 0x9ALL] ^ 0x67;
  LODWORD(v1005) = (((HIBYTE(v1008) ^ 0xFFFFFFDC) - 54) ^ ((HIBYTE(v1008) ^ 0x3A) + 48) ^ ((HIBYTE(v1008) ^ 0xFFFFFFCB) - 33)) + v1005[HIBYTE(v1008) ^ 0x68] + 3;
  v1018 = v1005 & 0xFFFFFF88 ^ 0xFFFFFFB1;
  LODWORD(v1005) = v1005 ^ (2 * ((v1005 ^ 0x26) & (2 * ((v1005 ^ 0x26) & (2 * ((v1005 ^ 0x26) & (2 * ((v1005 ^ 0x26) & (2 * ((v1005 ^ 0x26) & (2 * ((v1005 ^ 0x26) & 0x2E ^ v1018)) ^ v1018)) ^ v1018)) ^ v1018)) ^ v1018)) ^ v1018)) ^ 0xFFFFFFE4;
  v1009[12] = v1005;
  v1019 = v1015[v998 ^ 0xCALL];
  v1020 = v1019 ^ (16 * v1019) & 0xFFFFFFBF ^ 0xFFFFFFF0;
  v1009[3] = v1020;
  v1021 = v1011[BYTE2(v998) ^ 0x79];
  v1022 = ((v1021 >> 3) | (32 * v1021)) ^ (16 * ((v1021 >> 3) | (32 * v1021))) ^ 0xFFFFFFB6;
  v1009[1] = v1022;
  v1023 = v1015[v1008 ^ 0x61];
  v1024 = v1023 ^ (16 * v1023) & 0xFFFFFFBF ^ 0xFFFFFFE7;
  v1009[15] = v1024;
  v1025 = v1011[BYTE2(v1008) ^ 0x31];
  v1026 = ((v1025 >> 3) | (32 * v1025)) ^ (16 * ((v1025 >> 3) | (32 * v1025))) ^ 0x38;
  v1009[13] = v1026;
  v1027 = v1015[v1006 ^ 0x8DLL];
  LODWORD(v1011) = ((v1027 >> 3) | (32 * (v1027 ^ 2))) ^ 0x21;
  v1028 = v1027 ^ 0xFFFFFFF6 ^ (((v1011 & 0x60) >> 1) | (v1011 << 7));
  v1009[11] = v1028;
  v1029 = v1010[BYTE1(v998) ^ 0x82] ^ 0xD;
  v1009[2] = v1029;
  LODWORD(v1010) = v1009[8];
  LODWORD(v1011) = *v1009;
  v1030 = *(v12 - 184);
  LODWORD(STACK[0xF60]) = v1030[3] ^ v1020;
  LODWORD(STACK[0xF90]) = v1030[1] ^ v1022;
  LODWORD(STACK[0xF80]) = *v1030 ^ v1011;
  LODWORD(STACK[0xFA0]) = v1030[15] ^ v1024;
  LODWORD(STACK[0xF78]) = v1030[10] ^ v995;
  LODWORD(STACK[0xF88]) = v1030[8] ^ v1010;
  LODWORD(STACK[0xF50]) = v1030[4] ^ v1009[4];
  LODWORD(STACK[0xFA8]) = v1030[7] ^ v1017;
  LODWORD(v1010) = ((v1009[14] ^ 0xBD) >> 2) | ((v1009[14] ^ 0xFFFFFFBD) << 6);
  LODWORD(STACK[0xF7C]) = v1030[11] ^ v1028;
  LODWORD(STACK[0xF70]) = v1030[2] ^ v1029;
  LODWORD(STACK[0xF38]) = v1030[6] ^ v1009[6];
  LODWORD(STACK[0xF40]) = v1030[9] ^ v1009[9];
  LODWORD(STACK[0xF58]) = v1030[12] ^ v1005;
  LODWORD(STACK[0xF48]) = v1030[5] ^ v1014;
  LODWORD(STACK[0xF98]) = v1030[13] ^ v1026;
  LODWORD(STACK[0xF68]) = v1030[14] ^ 0x3B ^ (((v1010 ^ 0xA1) >> 6) | (4 * (v1010 ^ 0xFFFFFFA1)));
  v1031 = LODWORD(STACK[0xFBC]) - 16;
  LODWORD(STACK[0xFBC]) = v1031;
  *(v12 - 184) = v1030 + 16;
  STACK[0xFC0] = (v1009 + 16);
  return (*(v828 + 8 * (v832 ^ (98 * (v1031 == 32720342)))))();
}

uint64_t sub_100882704()
{
  STACK[0x17C0] = STACK[0x1280] + v1;
  STACK[0x1750] = *(v2 + 8 * v0);
  v3 = *(v2 + 8 * (v0 - 32941 + ((v0 + 1645378995) & 0x9DEDFFCF)));
  LODWORD(STACK[0x7E0]) = 62;
  return v3();
}

uint64_t sub_1008827A0@<X0>(int a1@<W8>)
{
  *(v1 + 32) = a1 - 1;
  v6 = *(v1 + 8);
  *(v5 - 248) = v2 + 155453101 * ((v3 - 2 * (v3 & 0x7AE764D8) - 85498662) ^ 0x1CC17F15) + 296769576;
  *(v5 - 256) = v6;
  (*(v4 + 8 * (v2 + 32744)))(v5 - 256);
  *(v5 - 256) = (v2 - 1762644819) ^ (906386353 * ((v3 - 2 * (v3 & 0x1477E78) + 21462651) ^ 0x3046B35F));
  *(v5 - 248) = 0;
  v7 = (*(v4 + 8 * (v2 ^ 0x805B)))(v5 - 256);
  return (*(v4 + 8 * ((7551 * (*STACK[0x6F0] > (((1828 * (v2 ^ 0x4AF2) - 136414036) & 0xFD775F3C) + 178893268))) ^ v2)))(v7);
}

uint64_t sub_100882928()
{
  v3 = *(v2 + 584);
  *(v2 + 1144) = v3;
  return (*(v1 + 8 * ((((401 * (v0 ^ 0x4183)) ^ 0x498) * (v3 == 0)) ^ v0)))();
}

uint64_t sub_1008829DC()
{
  *STACK[0xAE0] = v0;
  v2 = LODWORD(STACK[0x1EE4]) + 991 + LODWORD(STACK[0x1404]) + 971348745;
  v3 = (v2 ^ 0x3823CDFC) & (2 * (v2 & 0xA28B89FE)) ^ v2 & 0xA28B89FE;
  v4 = ((2 * (v2 ^ 0x7D35CCF8)) ^ 0xBF7C8A0C) & (v2 ^ 0x7D35CCF8) ^ (2 * (v2 ^ 0x7D35CCF8)) & 0xDFBE4506;
  v5 = v4 ^ 0x40824502;
  v6 = (v4 ^ 0x9E3C0000) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0x7EF91418) & v5 ^ (4 * v5) & 0xDFBE4500;
  v8 = (v7 ^ 0x5EB80400) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x81064106)) ^ 0xFBE45060) & (v7 ^ 0x81064106) ^ (16 * (v7 ^ 0x81064106)) & 0xDFBE4500;
  v10 = v8 ^ 0xDFBE4506 ^ (v9 ^ 0xDBA44000) & (v8 << 8);
  *STACK[0x1D80] = v2 ^ (2 * ((v10 << 16) & 0x5FBE0000 ^ v10 ^ ((v10 << 16) ^ 0x45060000) & (((v9 ^ 0x41A0506) << 8) & 0x5FBE0000 ^ 0x41BA0000 ^ (((v9 ^ 0x41A0506) << 8) ^ 0x3E450000) & (v9 ^ 0x41A0506)))) ^ 0x7E2EC4E3;
  return (*(v1 + 48016))();
}

void sub_100882B70(uint64_t a1)
{
  v1 = *(a1 + 8) - 1112314453 * ((a1 - 2 * (a1 & 0x1910ABEF) + 420522991) ^ 0xF6468136);
  __asm { BRAA            X15, X17 }
}

uint64_t sub_100882C94@<X0>(uint64_t a1@<X8>)
{
  v14 = ((v6 ^ v9) + v5) ^ ((v8 ^ v9) + v7) ^ ((v4 ^ v9) + v3);
  v15 = 17902189 * ((2 * (v11 & 0x30695188) - v11 - 812208523) ^ 0x41D9B865);
  *(v13 - 216) = STACK[0x560];
  *(v13 - 248) = v1;
  *(v13 - 240) = v2;
  *(v13 - 232) = (((v10 + 3088) | 0x4808) ^ 0x2B49B2EE) - v15 + v14;
  *(v13 - 224) = (v10 + 45263) ^ v15;
  *(v13 - 256) = a1;
  v16 = (*(v12 + 8 * (v10 + 46163)))(v13 - 256);
  return (*(v12 + 8 * ((38545 * (*(v13 - 228) == (((v10 - 5233) | 0xDE) ^ 0xE9D5C4CE))) ^ v10)))(v16);
}

uint64_t sub_100882DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = v9 + v8;
  v20 = v9 + v8 + 9;
  v21 = __ROR8__(v20 & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = ((v21 - 0x296E95066F186A7FLL) | v14) - ((v21 - 0x296E95066F186A7FLL) | a8) + a8;
  v23 = (v10 + 34918) ^ 0x6B8298A058209F33 ^ v22;
  v24 = v22 ^ a7;
  v25 = __ROR8__(v23, 8);
  v26 = ((a4 | (2 * (v25 + v24))) - (v25 + v24) + a5) ^ a6;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x2C378843F9A46E98;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v17;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x82B08017BF43C069;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = ((a1 & (2 * (v34 + v33))) - (v34 + v33) + a2) ^ a3;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = v9 - 1;
  v38 = (__ROR8__(v35, 8) + v36) ^ v16;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8);
  *(v19 + 9) = *(v18 + v37) ^ 0x5F ^ (((v40 + v39 - (v11 & (2 * (v40 + v39))) + v13) ^ v12) >> (8 * (v20 & 7u)));
  return (*(v15 + 8 * (v10 ^ 0x42C2 ^ (5324 * (((v37 - v10) | (v10 - v37)) >= 0)))))();
}

uint64_t sub_100882F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v11 = 120 * (((7 * (a9 ^ a4)) ^ a7) + a2);
  v15 = *(v10 + 8);
  v12 = a5 + v11;
  *v12 = *(v15 + v11);
  *(v12 + 4) = *(v15 + v11 + 4);
  *(v12 + 8) = *(v15 + v11 + 8);
  *(v12 + 16) = *(v15 + v11 + 16);
  *(v12 + 24) = *(v15 + v11 + 24);
  *(v12 + 32) = *(v15 + v11 + 32);
  v13 = a5 + v11 + 32;
  *(v13 + 32) = *(v15 + v11 + 64);
  *(v13 + 52) = *(v15 + v11 + 84);
  *(v13 + 51) = *(v15 + v11 + 83);
  *(v13 + 50) = *(v15 + v11 + 82);
  *(v13 + 49) = *(v15 + v11 + 81);
  *(v13 + 48) = *(v15 + v11 + 80);
  *(v13 + 47) = *(v15 + v11 + 79);
  *(v13 + 46) = *(v15 + v11 + 78);
  *(v13 + 45) = *(v15 + v11 + 77);
  *(v13 + 44) = *(v15 + v11 + 76);
  *(v13 + 43) = *(v15 + v11 + 75);
  *(v13 + 42) = *(v15 + v11 + 74);
  *(v13 + 41) = *(v15 + v11 + 73);
  *(v13 + 40) = *(v15 + v11 + 72);
  *(v13 + 39) = *(v15 + v11 + 71);
  *(v13 + 38) = *(v15 + v11 + 70);
  *(v13 + 37) = *(v15 + v11 + 69);
  *(v13 + 36) = *(v15 + v11 + 68);
  *(v13 + 35) = *(v15 + v11 + 67);
  *(v13 + 34) = *(v15 + v11 + 66);
  *(v13 + 33) = *(v15 + v11 + 65);
  *(v13 + 72) = *(v15 + v11 + 104);
  *(v13 + 71) = *(v15 + v11 + 103);
  *(v13 + 70) = *(v15 + v11 + 102);
  *(v13 + 69) = *(v15 + v11 + 101);
  *(v13 + 68) = *(v15 + v11 + 100);
  *(v13 + 67) = *(v15 + v11 + 99);
  *(v13 + 66) = *(v15 + v11 + 98);
  *(v13 + 65) = *(v15 + v11 + 97);
  *(v13 + 64) = *(v15 + v11 + 96);
  *(v13 + 63) = *(v15 + v11 + 95);
  *(v13 + 62) = *(v15 + v11 + 94);
  *(v13 + 61) = *(v15 + v11 + 93);
  *(v13 + 60) = *(v15 + v11 + 92);
  *(v13 + 59) = *(v15 + v11 + 91);
  *(v13 + 58) = *(v15 + v11 + 90);
  *(v13 + 57) = *(v15 + v11 + 89);
  *(v13 + 56) = *(v15 + v11 + 88);
  *(v13 + 55) = *(v15 + v11 + 87);
  *(v13 + 54) = *(v15 + v11 + 86);
  *(v13 + 53) = *(v15 + v11 + 85);
  *(v13 + 80) = *(v15 + v11 + 112);
  return (*(v9 + 8 * (((*(v15 + v11 + 40) == 0) * (a9 ^ a8)) ^ (a9 + a6))))(a1, a2, a3, a4);
}

void sub_100883148(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  __asm { BRAA            X8, X17 }
}

int *sub_1008831AC(int *result, int a2)
{
  if ((a2 ^ 0xB4FAFB9F) + ((2 * a2) & 0x69F4B018) == -1258620001)
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891401;
  }

  *result = v2;
  return result;
}

uint64_t sub_100883530()
{
  v2 = STACK[0x290] & 0xDFB7;
  v3 = STACK[0x1D9C];
  v4 = STACK[0x1A6C];
  LODWORD(STACK[0xF3C]) = LODWORD(STACK[0x1D9C]) + LODWORD(STACK[0x1A6C]) + 1797268328;
  STACK[0x1150] = v0;
  v5 = v3 + v4 + 1897849085 + (((LODWORD(STACK[0x1D5C]) ^ 0x2E0C03B1) - 772539313) ^ ((LODWORD(STACK[0x1D5C]) ^ 0x169F2CC5) - 379530437) ^ ((LODWORD(STACK[0x1D5C]) ^ 0xD146E865) + 783882139));
  v6 = (((LODWORD(STACK[0x1B1C]) ^ 0x61889090) - 1636339856) ^ ((LODWORD(STACK[0x1B1C]) ^ 0x9E5B9DB8) + 1638163016) ^ ((LODWORD(STACK[0x1B1C]) ^ 0x1606CA39) - 369543737)) + 100580757;
  LODWORD(STACK[0xBE4]) = v2 + LODWORD(STACK[0x28C]) + *(STACK[0xE88] + 32);
  if (v5 < 0x1C28F684 != v6 < 0x1C28F684)
  {
    v7 = v5 < 0x1C28F684;
  }

  else
  {
    v7 = v5 > v6;
  }

  return (*(v1 + 8 * ((53 * v7) ^ 0x3ED6u)))();
}

uint64_t sub_100883708()
{
  LODWORD(STACK[0x216C]) = STACK[0x20D4];
  v1 = *(STACK[0xE88] + 32) + 2140180483;
  LODWORD(STACK[0x2170]) = ((v1 ^ 0xF597481) - 1892279433) ^ v1 ^ ((v1 ^ 0x47BF00E7) - 942641391) ^ ((v1 ^ 0x48999BD9) - 923339729) ^ ((v1 ^ 0x7FEF7FB7) - 8384447) ^ 0xDFBC970B;
  return (*(v0 + 40672))();
}

uint64_t sub_1008837FC@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 24) = v4;
  *(v1[3] + 32) = v1[4];
  *(a1 + 8) = v1[1] + *(a1 + 8) - 0x3CE25E0EC5200378;
  return (*(v5 + 8 * (v2 + 7083)))();
}

uint64_t sub_10088393C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *v14 = v13;
  *(v13 + 8) = *(a9 + 8);
  *(a9 + 8) = v13;
  return (*(a8 + 8 * v12))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12);
}

uint64_t sub_10088397C@<X0>(uint64_t a1@<X8>)
{
  *&STACK[0x3E0] = *(v2 + v1 - 16);
  v8.i64[0] = v6 + v1;
  v8.i64[1] = v2 + v1 - 4;
  *&v9 = v2 + v1 - 15;
  *(&v9 + 1) = v2 + v1 - 16;
  *&STACK[0x360] = v9;
  *&v9 = v2 + v1 - 13;
  *(&v9 + 1) = v2 + v1 - 14;
  *&STACK[0x350] = v9;
  v10.i64[0] = v2 + v1 - 7;
  v10.i64[1] = v2 + v1 - 8;
  v11.i64[0] = v2 + v1 - 5;
  v11.i64[1] = v2 + v1 - 6;
  v12.i64[0] = v2 + v1 - 1;
  v12.i64[1] = v2 + v1 - 2;
  v13 = *&STACK[0x260];
  v14 = vandq_s8(v12, *&STACK[0x260]);
  v15 = vandq_s8(v11, *&STACK[0x260]);
  v16 = vandq_s8(v10, *&STACK[0x260]);
  v17 = vandq_s8(v8, *&STACK[0x260]);
  v18 = vsraq_n_u64(vshlq_n_s64(v17, 0x38uLL), v17, 8uLL);
  v19 = vsraq_n_u64(vshlq_n_s64(v16, 0x38uLL), v16, 8uLL);
  v20 = vsraq_n_u64(vshlq_n_s64(v15, 0x38uLL), v15, 8uLL);
  v21 = vsraq_n_u64(vshlq_n_s64(v14, 0x38uLL), v14, 8uLL);
  v22 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x380], v21), *&STACK[0x3B0]), vorrq_s8(vaddq_s64(v21, *&STACK[0x370]), *&STACK[0x390]));
  v23 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x380], v20), *&STACK[0x3B0]), vorrq_s8(vaddq_s64(v20, *&STACK[0x370]), *&STACK[0x390]));
  v24 = vsubq_s64(*&STACK[0x270], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x380], v18), *&STACK[0x3B0]), vorrq_s8(vaddq_s64(v18, *&STACK[0x370]), *&STACK[0x390])));
  v25 = vsubq_s64(*&STACK[0x270], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x380], v19), *&STACK[0x3B0]), vorrq_s8(vaddq_s64(v19, *&STACK[0x370]), *&STACK[0x390])));
  v26 = *&STACK[0x270];
  v27 = *&STACK[0x300];
  v28 = veorq_s8(v24, *&STACK[0x300]);
  v29 = veorq_s8(v24, *&STACK[0x2F0]);
  v30 = veorq_s8(v25, *&STACK[0x300]);
  v31 = veorq_s8(v25, *&STACK[0x2F0]);
  v32 = *&STACK[0x2F0];
  v33 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL), v31);
  v34 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL), v29);
  v35 = *&STACK[0x2D0];
  v36 = *&STACK[0x2E0];
  v37 = *&STACK[0x2B0];
  v38 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v34, v34), *&STACK[0x2E0]), v34), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v39 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v33, v33), *&STACK[0x2E0]), v33), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v40 = *&STACK[0x2C0];
  v41 = veorq_s8(v39, vsraq_n_u64(vshlq_n_s64(v31, 3uLL), v31, 0x3DuLL));
  v42 = veorq_s8(v38, vsraq_n_u64(vshlq_n_s64(v29, 3uLL), v29, 0x3DuLL));
  v43 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v44 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), v42);
  v45 = veorq_s8(vaddq_s64(v43, v41), *&STACK[0x2B0]);
  v46 = veorq_s8(v44, *&STACK[0x2B0]);
  v47 = vsraq_n_u64(vshlq_n_s64(v41, 3uLL), v41, 0x3DuLL);
  v48 = veorq_s8(v46, vsraq_n_u64(vshlq_n_s64(v42, 3uLL), v42, 0x3DuLL));
  v49 = veorq_s8(v45, v47);
  v50 = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v51 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v49);
  v52 = *&STACK[0x2A0];
  v53 = veorq_s8(vaddq_s64(v50, v48), *&STACK[0x2A0]);
  v54 = vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL);
  v55 = veorq_s8(v51, *&STACK[0x2A0]);
  v56 = veorq_s8(v55, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v57 = veorq_s8(v53, v54);
  v58 = vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL);
  v59 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v57);
  v60 = vaddq_s64(v58, v56);
  v61 = *&STACK[0x3C0];
  v62 = *&STACK[0x3D0];
  v63 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v59, *&STACK[0x3D0]), vorrq_s8(v59, v7)), v7), *&STACK[0x3C0]);
  v64 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v60, *&STACK[0x3D0]), vorrq_s8(v60, v7)), v7), *&STACK[0x3C0]);
  v65 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v66 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v67 = *&STACK[0x280];
  v68 = *&STACK[0x290];
  v69 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v66), *&STACK[0x290]);
  v70 = vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL);
  v71 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v65), *&STACK[0x290]);
  v72 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v73 = veorq_s8(v71, v70);
  v74 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v73);
  v76 = veorq_s8(vaddq_s64(v74, v72), *&STACK[0x280]);
  v77 = veorq_s8(v75, *&STACK[0x280]);
  v78 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v79 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v80 = veorq_s8(v76, v78);
  v81 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v82 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v83.i64[0] = v2 + v1 - 11;
  v83.i64[1] = v2 + v1 - 12;
  *&STACK[0x340] = v83;
  v84 = v26;
  v85 = vsubq_s64(v26, v23);
  v213.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v82, v80), *&STACK[0x320]), vnegq_s64(vandq_s8(vshlq_n_s64(v8, 3uLL), *&STACK[0x250])));
  v213.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v81, v79), *&STACK[0x320]), vnegq_s64(vandq_s8(vshlq_n_s64(v10, 3uLL), *&STACK[0x250])));
  v86 = veorq_s8(v85, v27);
  v87 = veorq_s8(v85, v32);
  v88 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v87);
  v89 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v88, v88), v36), v88), v35), v40);
  v90 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v91 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v90), v37);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92), v52);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94);
  v96 = v62;
  v97 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v95, v62), vorrq_s8(v95, v7)), v7), v61);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), v68);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100), v67);
  v62.i64[0] = v2 + v1 - 9;
  v62.i64[1] = v2 + v1 - 10;
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL)));
  v103 = vandq_s8(v62, v13);
  v104 = vsubq_s64(v26, v22);
  v213.val[2] = vshlq_u64(veorq_s8(v102, *&STACK[0x320]), vnegq_s64(vandq_s8(vshlq_n_s64(v11, 3uLL), *&STACK[0x250])));
  v105 = veorq_s8(v104, v27);
  v106 = veorq_s8(v104, v32);
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v107, v107), v36), v107), v35), v40);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), v37);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), v52);
  v113 = v52;
  v114 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v114);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v115, v96), vorrq_s8(v115, v7)), v7), v61);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v68);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v67);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v123 = vandq_s8(v83, v13);
  v124 = vaddq_s64(v122, v121);
  v125 = vandq_s8(*&STACK[0x350], v13);
  v213.val[0] = vshlq_u64(veorq_s8(v124, *&STACK[0x320]), vnegq_s64(vandq_s8(vshlq_n_s64(v12, 3uLL), *&STACK[0x250])));
  v126 = vandq_s8(*&STACK[0x360], v13);
  v127 = vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v129 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v131 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x380], v130), *&STACK[0x3B0]), vorrq_s8(vaddq_s64(v130, *&STACK[0x370]), *&STACK[0x390]));
  v132 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x380], v128), *&STACK[0x3B0]), vorrq_s8(vaddq_s64(v128, *&STACK[0x370]), *&STACK[0x390]));
  v133 = vsubq_s64(v84, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x380], v127), *&STACK[0x3B0]), vorrq_s8(vaddq_s64(v127, *&STACK[0x370]), *&STACK[0x390])));
  v134 = vsubq_s64(v84, v132);
  v127.i64[0] = vqtbl4q_s8(v213, *&STACK[0x240]).u64[0];
  v135 = veorq_s8(v134, v27);
  v136 = veorq_s8(v133, v27);
  v137 = veorq_s8(v133, v32);
  v138 = veorq_s8(v134, v32);
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v138);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v137);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v140, v140), v36), v140), v35), v40);
  v142 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v139, v139), v36), v139), v35), v40);
  v143 = vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL);
  v144 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v145 = veorq_s8(v141, v143);
  v146 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v147 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v145);
  v148 = veorq_s8(vaddq_s64(v146, v144), v37);
  v149 = vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL);
  v150 = veorq_s8(v147, v37);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v152 = veorq_s8(v148, v149);
  v153 = vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL);
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v152);
  v155 = veorq_s8(vaddq_s64(v153, v151), v113);
  v156 = vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL);
  v157 = veorq_s8(v154, v113);
  v158 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v159 = veorq_s8(v155, v156);
  v160 = vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL);
  v161 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v159);
  v162 = vaddq_s64(v160, v158);
  v163 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v161, *&STACK[0x3D0]), vorrq_s8(v161, v7)), v7), *&STACK[0x3C0]);
  v164 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v162, *&STACK[0x3D0]), vorrq_s8(v162, v7)), v7), *&STACK[0x3C0]);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v166 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165), v68);
  v168 = vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL);
  v169 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v166), v68);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v171 = veorq_s8(v167, v168);
  v172 = vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL);
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v171);
  v174 = veorq_s8(vaddq_s64(v172, v170), v67);
  v175 = veorq_s8(v173, v67);
  v176 = vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL);
  v177 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v178 = vsubq_s64(v84, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x380], v129), *&STACK[0x3B0]), vorrq_s8(vaddq_s64(v129, *&STACK[0x370]), *&STACK[0x390])));
  v212.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), veorq_s8(v174, v176)), *&STACK[0x320]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x360], 3uLL), *&STACK[0x250])));
  v212.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v177), *&STACK[0x320]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x350], 3uLL), *&STACK[0x250])));
  v179 = veorq_s8(v178, v27);
  v180 = veorq_s8(v178, v32);
  v181 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180);
  v182 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v181, v181), v36), v181), v35), v40);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v184 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183), v37);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v186 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185), v113);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v188 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187);
  v189 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v188, *&STACK[0x3D0]), vorrq_s8(v188, v7)), v7), *&STACK[0x3C0]);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v191 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190), v68);
  v192 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v193 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v192), v67);
  v194 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL)));
  v195 = vsubq_s64(v84, v131);
  v212.val[1] = vshlq_u64(veorq_s8(v194, *&STACK[0x320]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x340], 3uLL), *&STACK[0x250])));
  v196 = veorq_s8(v195, v27);
  v197 = veorq_s8(v195, v32);
  v198 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), v197);
  v199 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v198, v198), v36), v198), v35), v40);
  v200 = veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v201 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), v200), v37);
  v202 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL));
  v203 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), v202), v113);
  v204 = veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL));
  v205 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), v204);
  v206 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v205, *&STACK[0x3D0]), vorrq_s8(v205, v7)), v7), *&STACK[0x3C0]);
  v207 = veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL));
  v208 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL), v207), v68);
  v209 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL));
  v210 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), v209), v67);
  v212.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL), veorq_s8(v210, vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL))), *&STACK[0x320]), vnegq_s64(vandq_s8(vshlq_n_s64(v62, 3uLL), *&STACK[0x250])));
  v127.i64[1] = vqtbl4q_s8(v212, *&STACK[0x240]).u64[0];
  v212.val[0] = vrev64q_s8(v127);
  *(v4 + v1) = veorq_s8(vextq_s8(v212.val[0], v212.val[0], 8uLL), *&STACK[0x3E0]);
  return (*(a1 + 8 * ((v5 == 0) | (2 * (v5 == 0)) | v3)))();
}

uint64_t sub_100884398(uint64_t a1)
{
  v8 = *v4;
  v9 = (v6 + v3);
  *v9 = *(v4 - 1);
  v9[1] = v8;
  return (*(v7 + 8 * ((((a1 | v5) >= 0) * (v1 - 257)) ^ v2)))(a1 + 32);
}

uint64_t sub_100884524()
{
  v8 = (v0 ^ 0x3D7FF4FF7BFFEAFFLL) - 0x3D7FF4FEB9E30D9ALL + ((((39 * (v2 ^ 0x1B9E)) ^ 0xB9FD) + 4160692146) & v3);
  v9 = (v5 & 0x7FE5FF3C) + (v1 ^ 0x7F78FFAF3FF2FF9ELL) - 0x7F78FFAE7DD6223DLL;
  v10 = v8 < 0xC21CDD61;
  v11 = v8 > v9;
  if (v9 < 0xC21CDD61 != v10)
  {
    v11 = v10;
  }

  if (v11)
  {
    v12 = 371891407;
  }

  else
  {
    v12 = v4;
  }

  LODWORD(STACK[0x1E08]) = v12;
  v13 = v12 == v6;
  LOBYTE(STACK[0x1147]) = v13;
  return (*(v7 + 8 * ((22904 * v13) ^ v2)))();
}

uint64_t sub_1008848B8()
{
  *(v0 - 0x217E172EFA1E7E4) = 1467396097;
  *(v0 - 0x217E172EFA1E7ECLL) = 0;
  LODWORD(STACK[0x1DE8]) = -371865839;
  return (*(v2 + 8 * (v1 - 3078)))();
}

uint64_t sub_10088491C@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  LODWORD(STACK[0x64C]) = v2;
  v3 = STACK[0x778];
  STACK[0xA58] = STACK[0x778];
  return (*(a1 + 8 * (((v3 != 0) * (((a2 - 1628788310) & 0x6115D7B7) - 50392)) ^ a2)))();
}

uint64_t sub_1008849BC()
{
  if (((STACK[0x780] - v0) | (v0 - STACK[0x780])) > ~v0)
  {
    v2 = 23957;
  }

  else
  {
    v2 = 23958;
  }

  *STACK[0x7B8] = v2 + (v0 ^ 1);
  return (*(v1 + 8 * (v0 + 4872)))();
}

uint64_t sub_100884A0C@<X0>(void *a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v6 = a1[3];
  *(a1[4] + 24) = v6;
  *(v6 + 32) = a1[4];
  *(STACK[0x6C8] + 40) += a1[1] + a4;
  v7 = (((LOBYTE(STACK[0xF9F]) ^ 0x34913DE0FFCEA35FLL) - 0x34913DE0FFCEA35FLL) ^ ((LOBYTE(STACK[0xF9F]) ^ 0x3F6333D0C221186) - 0x3F6333D0C221186) ^ ((a3 + 24992) + (LOBYTE(STACK[0xF9F]) ^ 0x37670EDDF3ECB2D5) - 0x37670EDDF3ED1821)) + 0x73B4913AF7C22B30;
  a1[1] = 0x79C4BC1D8A4006F0 - a1[1];
  a1[2] = v7;
  *(a1 + a2) = 0x3CE25E0EC5200378;
  STACK[0xB18] = v4;
  STACK[0x9E8] = *(v5 + 8 * a3);
  return (*(v5 + 8 * (a3 + 8959)))();
}

uint64_t sub_100884B78()
{
  v4 = ((v1 + 1) | ((v1 + 1 < ((v2 - 1444562302) & 0x561A77BE ^ 0x374477B2u)) << 32)) + 3126444363u;
  v5 = (v0 > 0xFFFFFFFF0E622EA8) ^ (v4 < 0xF19DD157);
  v6 = v0 + 4053619604u + 47 * (v2 ^ 0x37D0u) > v4;
  if (v5)
  {
    v6 = v0 > 0xFFFFFFFF0E622EA8;
  }

  return (*(v3 + 8 * ((240 * !v6) ^ v2)))();
}

uint64_t sub_100884C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = STACK[0x14C8] + (v6 - 2027473937 + LODWORD(STACK[0x1380]));
  v12 = v6 - ((2 * v6) & 0x42) + (v7 ^ 0x23);
  v13 = 1864610357 * ((v11 ^ *(*v10 + (*STACK[0x800] & v8))) & 0x7FFFFFFF);
  v14 = 1864610357 * (v13 ^ HIWORD(v13));
  LOBYTE(v11) = *(STACK[0x6A8] + (v14 >> 24)) ^ *v11 ^ *(STACK[0x6A0] + (v14 >> 24)) ^ *((v14 >> 24) + STACK[0x6B0] + 1) ^ v14 ^ (-71 * BYTE3(v14));
  *(a6 + 448) = (((v11 ^ 0x54) - 113) ^ ((v11 ^ 0xC3) + 26) ^ ((v11 ^ 0x97) + 78)) + (((v12 ^ 0xE3) + 29) ^ ((v12 ^ 0x49) - 73) ^ (10 - (v12 ^ 0xB)));
  return (*(v9 + 8 * (v7 ^ 0x8EB5585 ^ (1345 * (v7 < 0x9AF309D6)))))();
}

uint64_t sub_100884E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = v12 - 1;
  v24 = (v10 + v23);
  v25 = v15 + v23 + v8;
  v26 = __ROR8__((v10 + v23) & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = ((v17 - v26) & v22) + v26 + a3 - ((v26 + a3) & 0x72ED5DC178B16E75);
  v28 = __ROR8__(v27 ^ 0x75CF442284965A07, 8);
  v27 ^= 0xC14413EE03AAF609;
  v29 = (v28 + v27) ^ v21;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x2C378843F9A46E98;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v19;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = __ROR8__((((v35 + v34) | a5) - ((v35 + v34) | 0xB44D30EF9FC50FFDLL) - 0x4BB2CF10603AF003) ^ 0xC9024F07DF79306BLL, 8);
  v37 = (((v35 + v34) | a5) - ((v35 + v34) | 0xB44D30EF9FC50FFDLL) - 0x4BB2CF10603AF003) ^ 0xC9024F07DF79306BLL ^ __ROR8__(v34, 61);
  v38 = (((2 * ((v36 + v37) ^ 0x3BC4FBA94204947DLL)) | 0x444C3EF7816B06F8) - ((v36 + v37) ^ 0x3BC4FBA94204947DLL) - 0x22261F7BC0B5837CLL) ^ 0xB37F3E686055C37DLL;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8) + v39;
  v42 = __ROR8__(v25 & 0xFFFFFFFFFFFFFFF8, 8);
  v43 = v42 - ((a7 + 2 * v42) & 0xF2F9342312EBF434) - 0x34F0E2B01860A2AALL;
  v44 = __ROR8__(v43 ^ 0x67FD13F296EE9EB2, 8);
  v45 = v43 ^ 0xEB690A0067A58754;
  v46 = (v44 + (v43 ^ 0xEB690A0067A58754) - ((2 * (v44 + (v43 ^ 0xEB690A0067A58754))) & 0x8D4F80F477B96692) - 0x39583F85C4234CB7) ^ 0xE12D425383608694;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = ((v40 | 0x297AF72712700E83) - (v40 | 0xD68508D8ED8FF17CLL) - 0x297AF72712700E84) ^ v18;
  v49 = (__ROR8__(v46, 8) + v47) ^ 0xFD0A19BB2FE13205;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ a8;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ v13;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = __ROR8__(v53, 8);
  v56 = __ROR8__(v48, 8) + (v48 ^ __ROR8__(v39, 61));
  v57 = (((2 * (v55 + v54)) & 0x44533E486510C9DELL) - (v55 + v54) + a1) ^ v11;
  v58 = v57 ^ __ROR8__(v54, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ a6;
  *v25 = ((v56 ^ v20) >> (8 * (v24 & 7u))) ^ (((__ROR8__(v59, 8) + (v59 ^ __ROR8__(v58, 61))) ^ v14) >> (8 * (v25 & 7u))) ^ *v24;
  return (*(v16 + 8 * ((125 * (v23 == 0)) ^ v9)))(a1);
}

uint64_t sub_100885128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, unsigned int a14)
{
  *(v16 - 160) = a1;
  v17 = *(v14 + 8 * (v15 - 1647291661));
  *(v16 - 148) = v15 ^ 0x622F4012;
  return v17(v15 ^ 0xDC7FA1ED, 1102024454, 3026062835, 1268904461, 1607608793, 2687358503, 2639476950, LODWORD(STACK[0x38C]) ^ a12 ^ a14);
}

uint64_t sub_100885350()
{
  LODWORD(STACK[0x214C]) = STACK[0x20D4];
  v1 = *(STACK[0xE88] + 32) + 510918149;
  v2 = (v1 ^ 0xF94879E4) & (2 * (v1 & 0xE18C01F6)) ^ v1 & 0xE18C01F6;
  v3 = ((2 * (v1 ^ 0xBB407A08)) ^ 0xB598F7FC) & (v1 ^ 0xBB407A08) ^ (2 * (v1 ^ 0xBB407A08)) & 0x5ACC7BFE;
  v4 = v3 ^ 0x4A440802;
  v5 = (v3 ^ 0x3F8) & (4 * v2) ^ v2;
  v6 = ((4 * v4) ^ 0x6B31EFF8) & v4 ^ (4 * v4) & 0x5ACC7BF8;
  v7 = (v6 ^ 0x4A006BE0) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0x10CC1006)) ^ 0xACC7BFE0) & (v6 ^ 0x10CC1006) ^ (16 * (v6 ^ 0x10CC1006)) & 0x5ACC7BE0;
  v9 = v7 ^ 0x5ACC7BFE ^ (v8 ^ 0x8C43B00) & (v7 << 8);
  LODWORD(STACK[0x2150]) = v1 ^ (2 * ((v9 << 16) & 0x5ACC0000 ^ v9 ^ ((v9 << 16) ^ 0x7BFE0000) & (((v8 ^ 0x5208401E) << 8) & 0x5ACC0000 ^ 0x12840000 ^ (((v8 ^ 0x5208401E) << 8) ^ 0x4C7B0000) & (v8 ^ 0x5208401E)))) ^ 0x2B68B2B0;
  return (*(v0 + 40672))();
}

uint64_t sub_1008856F0()
{
  v5 = v3[396] ^ ((*v3 & 0x7FFFFFFE | v3[623] & 0x80000000) >> 1);
  v3[623] = (v5 - ((((v0 + 1612704734) | 0x2409050) ^ 0xFA1722FE) & (2 * v5)) + v2) ^ *(v1 + 4 * (*v3 & 1));
  return (*(v4 + 8 * ((26950 * (LODWORD(STACK[0x2000]) > ((v0 - 5777) ^ 0x3FFCu))) ^ (v0 - 5777))))();
}

uint64_t sub_100885788()
{
  *(v4 - 232) = (v2 + 1877354841) ^ (155453101 * ((v4 - 232 - 2 * ((v4 - 232) & 0x5C9A3028) - 593874899) ^ 0x3ABC2BE2));
  v5 = (*(v3 + 8 * (v2 ^ 0xDDE)))(v4 - 232);
  v6 = STACK[0x1CB0];
  v7 = v0 + v1;
  *(v7 - 534196596) = STACK[0x1CB0] ^ 0xC0;
  *(v7 + ((v2 - 46807) ^ 0xFFFFFFFFE028DEA1)) = (v6 >> (v2 + 5)) ^ 0x94;
  *(v7 - 534196594) = BYTE2(v6) ^ 0xAA;
  *(v7 - 534196593) = BYTE3(v6) ^ 0x4B;
  return (*(v3 + 8 * ((11 * (v0 != 534196608)) ^ v2)))(v5);
}

uint64_t sub_100885920@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 248) = *(a1 + 304);
  *(v3 - 256) = v1 + 1022166737 * ((((v3 - 256) | 0xFDA73EC4) - ((v3 - 256) | 0x258C13B) + 39371067) ^ 0x47B7DF56) + 38461;
  v4 = (*(v2 + 8 * (v1 ^ 0xDD8F)))(v3 - 256);
  return (*(v2 + 8 * v1))(v4);
}

uint64_t sub_100885A70(char a1, char a2, char a3, int a4, int a5, unsigned int a6, int a7, int a8)
{
  v19 = (v16 ^ (2 * (v9 & v12 ^ v13))) & (v9 ^ v18) ^ v9 & v12 ^ v13;
  v20 = ((2 * (v9 ^ v18)) ^ v16) & (v9 ^ v18) ^ (2 * (v9 ^ v18)) & v15;
  *(STACK[0xF10] + (v8 ^ v17) * a7 + v9 * v11 + v14 - (((((v8 ^ v17) * a7 + v9 * v11 + v14) * a6) >> 32) >> 7) * a5) = v9 ^ (2 * ((16 * (v19 ^ (v10 ^ (4 * v19)) & (v20 | a1) ^ a2)) & 0x20 ^ v19 ^ (v10 ^ (4 * v19)) & (v20 | a1) ^ (16 * (v19 ^ (v10 ^ (4 * v19)) & (v20 | a1) ^ a2)) & ((a3 ^ (4 * v20)) & (v20 | a1) ^ 0x20))) ^ 0xE7;
  return (*(STACK[0xED8] + 8 * (((v9 + 1 == a4) * a8) ^ v8)))();
}

uint64_t sub_100885BAC@<X0>(int a1@<W5>, int a2@<W6>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v11 = (a4 + v6 % v5);
  v12 = *v11;
  v13 = ((1864610357 * ((v11 ^ v4) & (((v8 ^ a2) * a1) ^ 0x7FFF5323))) ^ ((1864610357 * ((v11 ^ v4) & (((v8 ^ a2) * a1) ^ 0x7FFF5323))) >> 16)) * (((v8 ^ a2) + 45985) ^ 0x6F230A78);
  LOBYTE(v13) = *(STACK[0x7A8] + (v13 >> 24)) ^ v12 ^ *(a3 + (v13 >> 24)) ^ *((v13 >> 24) + v9 + 3) ^ v13 ^ (5 * BYTE3(v13));
  v14 = 2 * (((v7 ^ 0x43DFC153) + 1240029937) ^ v7 ^ ((v7 ^ 0x5A9A09E9) + 1353486923) ^ ((v7 ^ 0x13335B1D) + 419807423) ^ ((v7 ^ 0x7FBFF7FB) + 1971940441));
  v15 = (a4 + ((((v14 ^ 0xF430AFAC) - 413801641) ^ ((v14 ^ 0x2172C1E6) + 840404253) ^ ((v14 ^ 0x3ED0A6F2) + 766896649)) + 117996492) % v5);
  v16 = 1864610357 * ((1864610357 * ((v15 ^ v4) & 0x7FFFFFFF)) ^ ((1864610357 * ((v15 ^ v4) & 0x7FFFFFFF)) >> 16));
  LODWORD(v13) = (v13 & 7) == ((*(STACK[0x7A8] + (v16 >> 24)) ^ *v15 ^ *(a3 + (v16 >> 24)) ^ *((v16 >> 24) + v9 + 3) ^ v16 ^ (5 * (v16 >> 24))) & 7);
  return (*(v10 + 8 * (((2 * v13) | (32 * v13)) ^ v8)))();
}

uint64_t sub_100886048()
{
  v2 = (v0 - 9830);
  v3 = STACK[0xE58];
  STACK[0xE88] = v2;
  return (*(v1 + 8 * ((4046 * (((v2 ^ v3) & 1) == 0)) ^ v0)))();
}

uint64_t sub_1008864AC()
{
  v3 = *(v1 - 148);
  *(v1 - 224) = v3 - 32758;
  v4 = *(v0 + 8 * (v3 + 13945));
  STACK[0x438] = v2;
  v5 = v4(1028);
  STACK[0x4B8] = 0;
  LODWORD(STACK[0x48C]) = 0;
  *(v1 - 192) = 0;
  STACK[0x4A0] = 0;
  *(v1 - 248) = 0;
  *(v1 - 176) = 0;
  STACK[0x498] = 0;
  *(v1 - 256) = 0;
  *(v1 - 168) = 0;
  STACK[0x480] = 0;
  *(v1 - 208) = 0;
  *(v1 - 200) = 0;
  *(v1 - 240) = 0;
  *(v1 - 232) = 0;
  *(v1 - 184) = 0;
  STACK[0x4A8] = 0;
  STACK[0x490] = 0;
  STACK[0x478] = 0;
  *(v1 - 160) = 0;
  STACK[0x4B0] = 0;
  v6 = *(v0 + 8 * (((v5 != 0) * ((v3 + 2012175620) & 0xEA3FDFD7 ^ 0x622FD142)) ^ v3));
  *(v1 - 148) = 1644243867;
  return v6();
}

uint64_t sub_100886700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  v8 = a3 - 1;
  *(v7 + 1440) = v8;
  *(a1 + v8) = (v4 ^ v5) * (v4 + 17);
  return (*(a2 + 8 * (((v8 == 0) * v6) ^ v3)))();
}

void sub_100886850(uint64_t a1)
{
  v1 = 155453101 * ((-2 - ((~a1 | 0x3AE99C92) + (a1 | 0xC516636D))) ^ 0xDCCF875D);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1008869C8()
{
  v4 = STACK[0x8C0] + 376;
  STACK[0x830] = v4;
  v5 = 634647737 * (((v1 | 0x1D7CB8F3) - (v1 | 0xE283470C) - 494713076) ^ 0x70EA970F);
  *(v3 - 256) = v5 - 1431125376;
  *(v3 - 248) = v4;
  *(v3 - 240) = v0 - v5 + 16536;
  v6 = (*(v2 + 8 * (v0 + 47522)))(v3 - 256);
  STACK[0x2038] = *(v2 + 8 * v0);
  return (*(v2 + 8 * ((((v0 - 114713887) | 0x6D65380) ^ 0xFFFFF3C4) + v0)))(v6);
}

uint64_t sub_100886C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = LODWORD(STACK[0x8E4]);
  STACK[0x7E0] = v9;
  v10 = (v7 - v9 - ((2 * (v7 - v9)) & 4) + 26) & 0xF;
  LOBYTE(v9) = -21 - (((v10 ^ 0x26) + (((v6 ^ 0xA) - 55) ^ 0xB5)) ^ ((v10 ^ 0x49) + 55) ^ ((v10 ^ 0x65) + 27));
  *(a6 + 976) = v9;
  v11 = v9 ^ 0x1A;
  return (*(v8 + 8 * ((19 * ((v9 ^ (2 * (v11 & (2 * (v11 & (2 * (v11 & (2 * (v11 & (2 * (v11 & (2 * ((v9 ^ 0x12) & (2 * (v9 & 0x9B)) ^ v9 & 0x9B)) ^ v9 & 0x9B)) ^ v9 & 0x9B)) ^ v9 & 0x9B)) ^ v9 & 0x9B)) ^ (v9 & 0x9B | 0x40)))) == 27)) ^ v6)))(a1, a2, a3, a4, a5, 56298, 0x70859D3AFD8FFFBELL, 4213178236);
}

uint64_t sub_100886D74()
{
  v6 = 1022166737 * (v3 ^ 0xBA10E192);
  *(v5 - 256) = v0;
  *(v5 - 248) = v2 - v6;
  *(v5 - 244) = v6 + v1 + 874;
  v7 = (*(v4 + 8 * (v1 + 20752)))(v5 - 256);
  v8 = *(v5 - 240);
  LODWORD(STACK[0xCB8]) = v8;
  return (*(v4 + 8 * ((971 * (v8 == ((((v1 + 541050385) | 0x42209052) - 1650509492) ^ 0x594495D4))) ^ v1)))(v7);
}

uint64_t sub_10088706C@<X0>(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  a1[-1] = a2;
  *a1 = a2;
  return (*(v5 + 8 * (((v2 == v3) * v4) ^ v6)))();
}

uint64_t sub_1008872DC@<X0>(uint64_t a1@<X8>)
{
  v6 = v1 - 837012840;
  *(v5 - 256) = (v6 - 813492928) ^ (155453101 * (((v3 | 0x16E51871) + (~v3 | 0xE91AE78E)) ^ 0xF0C303BF));
  *(v5 - 248) = a1;
  v7 = (*(v4 + 8 * (v6 - 813447182)))(v5 - 256);
  *(v2 + 320) = 0;
  return (*(v4 + 8 * ((((2 * v6) ^ 0x60FA4262) + 813482404) ^ v6 ^ (26822 * (v6 < 0x8C99B1EE)))))(v7);
}

uint64_t sub_10088743C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11)
{
  v14 = *(v11 + 68);
  *(v11 + (v14 & 0x3F)) = -33;
  return (*(v13 + 8 * ((15325 * ((v14 & 0x3Fu) > 0x37)) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, v12);
}

uint64_t sub_1008874A0@<X0>(void *a1@<X0>, int a2@<W8>)
{
  STACK[0x3A0] = v3 ^ 0x6BA344C2;
  *(v5 - 248) = *a1;
  *(v5 - 256) = a1[1];
  v7 = v3 ^ 0xFFFFCD95 ^ v2;
  v8 = v7 | a2;
  v9 = (v2 | a2) - v7;
  STACK[0x3F8] = a1[3];
  STACK[0x378] = a1;
  v10 = a1[4];
  v11 = v9 + v8;
  v12 = *(v6 + 8 * (v3 - 12107));
  v13 = *(v12 - 527405895);
  v14 = *(v6 + 8 * (v3 - 8536)) + 4 * v13;
  v15 = *(v14 - 1940437438);
  v16 = (v11 ^ a2) + (v11 ^ a2) * v15;
  if (v11 == a2)
  {
    v17 = *(v14 - 1940437438);
  }

  else
  {
    v17 = 0;
  }

  *(v14 - 1940437438) = (v16 + v17) * v15;
  *(v12 - 527405895) = (v13 + 1) % 6u;
  *(v5 - 176) = veorq_s8(*v10, xmmword_100F52E80);
  v18 = 4741 * (*(v5 - 176) ^ 0x90) + 24378222;
  v19 = v3;
  STACK[0x360] = v3;
  v20 = *(v6 + 8 * (v3 ^ 0x3AFE)) - 1842126378;
  v21 = *(v20 + v18 - 8832 * (((3890369 * v18) >> 32) >> 3));
  LODWORD(STACK[0x3D4]) = v21;
  v22 = *(v5 - 175);
  v23 = v21 ^ 0x295DF907;
  LODWORD(STACK[0x36C]) = v21 ^ 0x295DF907;
  v24 = *(v5 - 174);
  v25 = *(v20 + 4741 * (v22 ^ 0xD7) + 7301140 - 8832 * (((3890369 * (4741 * (v22 ^ 0xD7u) + 7301140)) >> 32) >> 3));
  LODWORD(STACK[0x3C8]) = v25;
  v26 = ((v25 << 16) ^ 0xE0BE1A35) & ((v23 << 24) ^ 0xD4FFBAFD) & 0xE0FFFFFF | ((v23 & 0x1F) << 24);
  v27 = *(v20 + (4741 * ((v24 ^ 0xE2) - ((2 * (v24 ^ 0xE2)) & 0xF6u) + 123) + 6082703) % 0x2280) ^ ((v24 ^ 0x1D) + (v24 ^ 0xE2));
  LODWORD(STACK[0x3EC]) = v27;
  v28 = 4741 * (*(v5 - 173) ^ 3) + 19476028;
  v29 = *(v20 + v28 - 8832 * (((3890369 * v28) >> 32) >> 3));
  v30 = 4741 * (*(v5 - 167) ^ 0xC3) + 7301140;
  v31 = v30 - 17664 * (((3890369 * v30) >> 32) >> 4);
  v32 = *(v5 - 172) ^ 0x91;
  v33 = v29 ^ (8 * (v29 ^ 0xFFFFFFAA) * (v29 ^ 0xFFFFFFAA));
  LODWORD(STACK[0x3F4]) = v33;
  v34 = 4741 * v32 + 24378222 - 8832 * (((3890369 * (4741 * v32 + 24378222)) >> 32) >> 3);
  v35 = v33 ^ 0x50;
  v36 = ((v33 ^ 0x50) & 0xFE ^ 0xFFFFFF04) & (((v26 ^ 0x94E5C0) & ((v27 << 8) ^ 0x15FCEDF4) | v26 & 0xEA030000) ^ 0x563E5BCA);
  v37 = 4741 * (*(v5 - 171) ^ 0xAB) + 7301140;
  v38 = *(v5 - 170);
  v39 = *(v20 + v34);
  LODWORD(STACK[0x3E8]) = v39;
  v40 = v39 ^ 0xEB76579;
  v41 = *(v20 + v37 - 8832 * (((3890369 * v37) >> 32) >> 3));
  LODWORD(STACK[0x3B8]) = v41;
  v42 = ((v40 << 24) ^ 0x1C1A11DB) & ~(v41 << 16) | (v41 << 16) & 0xE50000;
  v43 = *(v20 + 4741 * (v38 ^ 0xA7) + 6082703 - 8832 * (((3890369 * (4741 * (v38 ^ 0xA7u) + 6082703)) >> 32) >> 3)) ^ ((v38 ^ 0x23) + (v38 ^ 0xFFFFFFDC));
  LODWORD(STACK[0x39C]) = v43;
  v44 = 4741 * (*(v5 - 169) ^ 0x93) + 19476028;
  v45 = *(v20 + v44 - 8832 * (((3890369 * v44) >> 32) >> 3));
  v46 = v45 ^ (8 * (v45 ^ 0xFFFFFFAA) * (v45 ^ 0xFFFFFFAA));
  LODWORD(STACK[0x3F0]) = v46;
  v47 = 4741 * (*(v5 - 168) ^ 0x4B) + 24378222;
  v48 = v47 - 8832 * (((3890369 * v47) >> 32) >> 3);
  v49 = (v46 ^ 0xFFFFFF5D) & ((((v43 << 8) ^ 0xD88F9DE5) & (v42 ^ 0xF85EE2C) | v42 & 0x27700002) ^ 0x37E0A965) ^ (v46 ^ 0x1E) & 0x7D;
  v50 = v31 - 8832;
  if (v31 >> 7 < 0x45)
  {
    v50 = v31;
  }

  v51 = *(v20 + v48);
  *(v5 - 208) = v51;
  v52 = *(v20 + v50);
  LODWORD(STACK[0x3B0]) = v52;
  v53 = ((v52 << 16) ^ 0x31AE08BB) & ((v51 << 24) ^ 0xBFFFF8BB) | (v51 << 24) & 0xCE000000;
  v54 = *(v20 + 4741 * (*(v5 - 166) ^ 0xD5) + 6082703 - 8832 * (((3890369 * (4741 * (*(v5 - 166) ^ 0xD5u) + 6082703)) >> 32) >> 3)) ^ ((*(v5 - 166) ^ 0x51) + (*(v5 - 166) ^ 0xFFFFFFAE));
  LODWORD(STACK[0x3E0]) = v54;
  v55 = 4741 * (*(v5 - 165) ^ 0xE8) + 19476028;
  v56 = *(v20 + v55 - 8832 * (((3890369 * v55) >> 32) >> 3));
  v57 = v56 ^ (8 * (v56 ^ 0xFFFFFFAA) * (v56 ^ 0xFFFFFFAA));
  LODWORD(STACK[0x3E4]) = v57;
  v58 = 4741 * (*(v5 - 164) ^ 0x1F) + 24378222;
  v59 = 4741 * (*(v5 - 163) ^ 0x30) + 7301140;
  v60 = *(v5 - 162);
  v61 = *(v20 + v58 - 8832 * (((3890369 * v58) >> 32) >> 3));
  v62 = *(v20 + v59 - 8832 * (((3890369 * v59) >> 32) >> 3)) << 16;
  LODWORD(STACK[0x31C]) = v61;
  LODWORD(STACK[0x368]) = v61 ^ 0x82;
  v63 = (((v61 ^ 0x82) << 24) ^ 0xD83977A0) & (v62 ^ 0xFF6C77E0) | v62 & 0xC60000;
  v64 = (*(v20 + 4741 * (v60 ^ 0xF5) + 6082703 - 8832 * (((3890369 * (4741 * (v60 ^ 0xF5u) + 6082703)) >> 32) >> 3)) ^ ((v60 ^ 0x8E) + (v60 ^ 0x71))) << 8;
  v65 = (v63 ^ 0xCE7AE543) & (v64 ^ 0xFFFF49E3) | v64 & 0x6D00;
  v66 = 4741 * (*(v5 - 161) ^ 0x6D) + 19476028;
  v67 = *(v20 + v66 - 8832 * (((3890369 * v66) >> 32) >> 3));
  v68 = v67 ^ (8 * (v67 ^ 0xFFFFFFAA) * (v67 ^ 0xFFFFFFAA));
  v69 = v67 ^ (8 * (v67 ^ 0xAA) * (v67 ^ 0xAA));
  LODWORD(STACK[0x3DC]) = v68;
  v70 = (v68 ^ 0xFFFFFF5D) & (v65 ^ 0xF0142065) ^ (v68 ^ 0x5F) & 0x79;
  v71 = BYTE2(v63);
  LODWORD(STACK[0x384]) = v71;
  v72 = 8717 * (v71 ^ 0x89) + 33508148 - 10816 * (((3176751 * (8717 * (v71 ^ 0x89u) + 33508148)) >> 32) >> 3);
  v73 = *(v6 + 8 * (v19 ^ 0x3B3B)) - 1023882119;
  LODWORD(STACK[0x320]) = BYTE1(v65);
  v74 = 8717 * (BYTE1(v65) ^ 0x44) + 67042447 - 10816 * (((101656031 * (8717 * (BYTE1(v65) ^ 0x44u) + 67042447)) >> 32) >> 8);
  *(v5 - 200) = v4;
  v75 = *(v73 + 4 * (8717 * (v69 ^ 0x82) + 78226358 - 10816 * (((101656031 * (8717 * (v69 ^ 0x82u) + 78226358)) >> 32) >> 8)));
  v76 = *(v20 + 4741 * (v61 ^ 0x50) + 39260221 - 8832 * (((62245903 * (4741 * (v61 ^ 0x50u) + 39260221)) >> 32) >> 7));
  v77 = *(v73 + 4 * v74) ^ 0x57558551;
  v78 = v36 ^ v35 & 0xC1 ^ *(v73 + 4 * v72) ^ v77 ^ (4 * v77 * v77) ^ ((v76 >> 4) | (16 * v76)) ^ ((((v75 ^ 0x7C51D858) - 2085738584) ^ ((v75 ^ 0xBE47E604) + 1102584316) ^ ((v75 ^ 0x1163D796) - 291755926)) - 938384759);
  LODWORD(STACK[0x224]) = v78;
  v79 = v78 ^ 0xB447541D;
  v80 = v49 ^ v78 ^ 0xB447541D;
  LODWORD(STACK[0x24C]) = v80;
  v81 = v80 ^ 0x76AD1853;
  v82 = (v57 ^ 0xFFFFFF55) & ((((v54 << 8) ^ 0x896D0677) & (v53 ^ 0xFE46F7CC) | v53 & 0x76920000) ^ 0xDA578F9C) ^ (v57 ^ 0xB9) & 0x14 ^ v80 ^ 0x76AD1853;
  LODWORD(STACK[0x290]) = v82;
  v83 = v82 ^ 0x48BF66E4;
  v84 = v70 ^ v82 ^ 0x48BF66E4;
  LODWORD(STACK[0x2DC]) = BYTE2(v84);
  v85 = 8717 * (BYTE2(v84) ^ 5) + 33508148 - 10816 * (((3176751 * (8717 * (BYTE2(v84) ^ 5u) + 33508148)) >> 32) >> 3);
  v86 = v84;
  v87 = 8717 * (BYTE1(v84) ^ 0x83) + 67042447 - 10816 * (((101656031 * (8717 * (BYTE1(v84) ^ 0x83u) + 67042447)) >> 32) >> 8);
  v84 = v84;
  LODWORD(STACK[0x3D8]) = v84;
  v88 = *(v73 + 4 * (8717 * (v84 ^ 0x87) + 78226358 - 10816 * (((101656031 * (8717 * (v84 ^ 0x87u) + 78226358)) >> 32) >> 8)));
  v89 = v86;
  LODWORD(STACK[0x29C]) = v86;
  v86 >>= 24;
  LODWORD(STACK[0x2D0]) = v86;
  v90 = *(v20 + 4741 * (v86 ^ 0xC3) + 39260221 - 8832 * (((62245903 * (4741 * (v86 ^ 0xC3) + 39260221)) >> 32) >> 7));
  v91 = *(v73 + 4 * v87) ^ 0x57558551;
  v92 = v91 ^ *(v73 + 4 * v85) ^ (4 * v91 * v91) ^ ((v90 >> 4) | (16 * v90)) ^ v79 ^ ((((v88 ^ 0xCC77C4C5) + 864566075) ^ ((v88 ^ 0x702C173F) - 1881937727) ^ ((v88 ^ 0x6F2E3A30) - 1865300528)) - 938384759);
  *(v5 - 232) = v92;
  v93 = v92 ^ 0x965024DE;
  v94 = v92 ^ 0x965024DE ^ v81;
  *(v5 - 224) = v94;
  v95 = v94 ^ 0xCA9865C6;
  v96 = v94 ^ 0xCA9865C6 ^ v83;
  LODWORD(STACK[0x204]) = v96;
  v97 = v96 ^ 0x3C4ACEA0;
  v98 = v89 ^ 0xE37C506F ^ v96 ^ 0x3C4ACEA0;
  LODWORD(STACK[0x38C]) = BYTE2(v98);
  LODWORD(STACK[0x398]) = BYTE1(v98);
  LODWORD(STACK[0x270]) = v98;
  v99 = *(v73 + 4 * (8717 * (v98 ^ 0x49) + 78226358 - 10816 * (((101656031 * (8717 * (v98 ^ 0x49u) + 78226358)) >> 32) >> 8)));
  v100 = *(v73 + 4 * (8717 * (BYTE2(v98) ^ 0x5F) + 33508148 - 10816 * (((3176751 * (8717 * (BYTE2(v98) ^ 0x5Fu) + 33508148)) >> 32) >> 3)));
  LODWORD(STACK[0x3C0]) = HIBYTE(v98);
  v101 = *(v20 + 4741 * (HIBYTE(v98) ^ 0x4C) + 39260221 - 8832 * (((62245903 * (4741 * (HIBYTE(v98) ^ 0x4C) + 39260221)) >> 32) >> 7));
  v102 = *(v73 + 4 * (8717 * (BYTE1(v98) ^ 0x3C) + 67042447 - 10816 * (((101656031 * (8717 * (BYTE1(v98) ^ 0x3Cu) + 67042447)) >> 32) >> 8))) ^ 0x57558551;
  v103 = v102 ^ v100 ^ (4 * v102 * v102) ^ ((v101 >> 4) | (16 * v101)) ^ ((((v99 ^ 0xE75CC01F) + 413351905) ^ ((v99 ^ 0x5F108235) - 1594917429) ^ ((v99 ^ 0x6B39ABE0) - 1798941664)) - 938384759) ^ v93;
  LODWORD(STACK[0x208]) = v103;
  v103 ^= 0xB2E61235;
  v104 = v103 ^ v95;
  v502 = v104 ^ v97;
  *(v5 - 216) = v104;
  v105 = v104 ^ v97 ^ 0x80036396 ^ v98;
  LODWORD(STACK[0x200]) = BYTE2(v105);
  v106 = 8717 * (BYTE2(v105) ^ 0x44) + 33508148 - 10816 * (((3176751 * (8717 * (BYTE2(v105) ^ 0x44u) + 33508148)) >> 32) >> 3);
  v504 = BYTE1(v105);
  v107 = 8717 * (BYTE1(v105) ^ 0xA5) + 67042447 - 10816 * (((101656031 * (8717 * (BYTE1(v105) ^ 0xA5u) + 67042447)) >> 32) >> 8);
  v501 = v502 ^ 0x96 ^ v98;
  v108 = *(v73 + 4 * (8717 * (v501 ^ 0x6B) + 78226358 - 10816 * (((101656031 * (8717 * (v501 ^ 0x6Bu) + 78226358)) >> 32) >> 8)));
  v109 = *(v20 + 4741 * (HIBYTE(v105) ^ 0xA0) + 39260221 - 8832 * (((62245903 * (4741 * (HIBYTE(v105) ^ 0xA0) + 39260221)) >> 32) >> 7));
  v110 = *(v73 + 4 * v107) ^ 0x57558551;
  v492 = v110 ^ *(v73 + 4 * v106) ^ (4 * v110 * v110) ^ ((v109 >> 4) | (16 * v109)) ^ ((((v108 ^ 0xE2D862BF) + 489135425) ^ ((v108 ^ 0xE2ECFEF4) + 487784716) ^ ((v108 ^ 0xD3417581) + 750684799)) - 938384759) ^ v103;
  v111 = v492 ^ 0x86DC9429 ^ v104;
  *(v5 - 236) = v111;
  v112 = v111 ^ 0xC9180EB1 ^ v98;
  LODWORD(STACK[0x2B8]) = BYTE2(v112);
  v497 = BYTE1(v112);
  v496 = v112;
  v113 = *(v73 + 4 * (8717 * (v112 ^ 0x54) + 78226358 - 10816 * (((101656031 * (8717 * (v112 ^ 0x54u) + 78226358)) >> 32) >> 8)));
  v499 = HIBYTE(v112);
  v114 = *(v20 + 4741 * (HIBYTE(v112) ^ 0x2D) + 39260221 - 8832 * (((62245903 * (4741 * (HIBYTE(v112) ^ 0x2D) + 39260221)) >> 32) >> 7));
  v115 = *(v73 + 4 * (8717 * (BYTE1(v112) ^ 0x1A) + 67042447 - 10816 * (((101656031 * (8717 * (BYTE1(v112) ^ 0x1Au) + 67042447)) >> 32) >> 8))) ^ 0x57558551;
  v116 = v115 ^ *(v73 + 4 * (8717 * (BYTE2(v112) ^ 0x36) + 33508148 - 10816 * (((3176751 * (8717 * (BYTE2(v112) ^ 0x36u) + 33508148)) >> 32) >> 3))) ^ (4 * v115 * v115) ^ ((v114 >> 4) | (16 * v114)) ^ ((((v113 ^ 0x79EB7F6) - 127842294) ^ ((v113 ^ 0x7EE47709) - 2128901897) ^ ((v113 ^ 0xAA0F2935) + 1441846987)) - 938384759) ^ v492 ^ 0x86DC9429;
  LODWORD(STACK[0x328]) = v116;
  v494 = v111 ^ 0xC9180EB1 ^ v502 ^ 0x80036396;
  v117 = v116 ^ 0xC6B9B584 ^ v111 ^ 0xC9180EB1;
  v482 = v117;
  v118 = v116 ^ 0xC6B9B584 ^ v502 ^ 0x80036396 ^ v112;
  v484 = v116 ^ 0xC6B9B584 ^ v502 ^ 0x80036396;
  v490 = BYTE2(v118);
  v119 = *(v73 + 4 * (8717 * (v490 ^ 0xF8) + 33508148 - 10816 * (((3176751 * (8717 * (v490 ^ 0xF8u) + 33508148)) >> 32) >> 3))) ^ 0x82281EE8;
  v488 = BYTE1(v118);
  LODWORD(STACK[0x234]) = v116 ^ 0x84 ^ v502 ^ 0x96 ^ v112;
  v120 = *(v73 + 4 * (8717 * (v116 ^ 0x84 ^ v502 ^ 0x96 ^ v112 ^ 0x97) + 78226358 - 10816 * (((101656031 * (8717 * (v116 ^ 0x84 ^ v502 ^ 0x96 ^ v112 ^ 0x97u) + 78226358)) >> 32) >> 8)));
  v486 = HIBYTE(v118);
  v121 = *(v20 + 4741 * (HIBYTE(v118) ^ 0x3D) + 39260221 - 8832 * (((62245903 * (4741 * (HIBYTE(v118) ^ 0x3D) + 39260221)) >> 32) >> 7));
  v122 = *(v73 + 4 * (8717 * (BYTE1(v118) ^ 0x71) + 67042447 - 10816 * (((101656031 * (8717 * (BYTE1(v118) ^ 0x71u) + 67042447)) >> 32) >> 8))) ^ 0x57558551;
  v123 = v122 ^ (4 * v122 * v122) ^ ((v121 >> 4) | (16 * v121)) ^ ((((v120 ^ 0xAD9D6346) + 1382194362) ^ ((v120 ^ 0xF9451645) + 112912827) ^ ((v120 ^ 0x87AD9CC9) + 2018665271)) - 938384759) ^ ((v116 ^ 0xE5D24DB3) + v119 - 2 * ((v116 ^ 0xE5D24DB3) & v119));
  LODWORD(STACK[0x26C]) = v123;
  v124 = v123 ^ 0xE64B0E65;
  v125 = v123 ^ 0xE64B0E65 ^ v117;
  LODWORD(STACK[0x244]) = v125;
  v126 = v125 ^ 0xCA674B5F;
  v127 = v125 ^ 0xCA674B5F ^ v484;
  LODWORD(STACK[0x330]) = v127;
  v128 = v127 ^ 0xAA79A0F6;
  v129 = v127 ^ 0xAA79A0F6 ^ v118;
  LODWORD(STACK[0x32C]) = BYTE2(v129);
  v130 = 8717 * (BYTE2(v129) ^ 0x6A) + 33508148 - 10816 * (((3176751 * (8717 * (BYTE2(v129) ^ 0x6Au) + 33508148)) >> 32) >> 3);
  LODWORD(STACK[0x22C]) = BYTE1(v129);
  v131 = 8717 * (BYTE1(v129) ^ 0x45) + 67042447 - 10816 * (((101656031 * (8717 * (BYTE1(v129) ^ 0x45u) + 67042447)) >> 32) >> 8);
  v132 = v129 ^ 0x8A70BEAA;
  LODWORD(STACK[0x230]) = v129;
  v133 = *(v73 + 4 * (8717 * (v129 ^ 0x86) + 78226358 - 10816 * (((101656031 * (8717 * (v129 ^ 0x86u) + 78226358)) >> 32) >> 8)));
  LODWORD(STACK[0x228]) = HIBYTE(v132);
  v134 = *(v20 + 4741 * HIBYTE(v132) + 39260221 - 8832 * (((62245903 * (4741 * HIBYTE(v132) + 39260221)) >> 32) >> 7));
  v135 = *(v73 + 4 * v131) ^ 0x57558551;
  v136 = v135 ^ *(v73 + 4 * v130) ^ (4 * v135 * v135) ^ ((v134 >> 4) | (16 * v134)) ^ ((((v133 ^ 0x78F63D61) - 2029403489) ^ ((v133 ^ 0x2D3D2E02) - 758984194) ^ ((v133 ^ 0x86BEFAA9) + 2034304343)) - 938384759) ^ v124;
  LODWORD(STACK[0x340]) = v136;
  v136 ^= 0x8A644913;
  v137 = v136 ^ v126;
  v138 = v128 ^ v136 ^ v126;
  v139 = v137;
  LODWORD(STACK[0x2AC]) = v137;
  v140 = v132 ^ v138;
  v141 = v138;
  LODWORD(STACK[0x2A0]) = v138;
  LODWORD(STACK[0x338]) = BYTE2(v140);
  LODWORD(STACK[0x334]) = BYTE1(v140);
  v142 = *(v73 + 4 * (8717 * (BYTE1(v140) ^ 0x63) + 67042447 - 10816 * (((101656031 * (8717 * (BYTE1(v140) ^ 0x63u) + 67042447)) >> 32) >> 8))) ^ 0x57558551;
  v143 = v136 ^ 0xD09A290C ^ *(v73 + 4 * (8717 * (BYTE2(v140) ^ 0x14) + 33508148 - 10816 * (((3176751 * (8717 * (BYTE2(v140) ^ 0x14u) + 33508148)) >> 32) >> 3)));
  LODWORD(STACK[0x298]) = v140;
  v144 = (-v143 ^ (v143 - ((2 * v143) & 0xB7AC2EB0) + 1540757336) ^ 0x5BD61758 ^ ((v142 ^ (4 * v142 * v142)) - (v143 ^ v142 ^ (4 * v142 * v142)))) + (v142 ^ (4 * v142 * v142));
  v145 = *(v73 + 4 * (8717 * (v140 ^ 0x51) + 78226358 - 10816 * (((101656031 * (8717 * (v140 ^ 0x51u) + 78226358)) >> 32) >> 8)));
  v146 = v144 ^ ((((v145 ^ 0x9B91A0EA) + 1684954902) ^ ((v145 ^ 0xF81B161D) + 132442595) ^ ((v145 ^ 0xB0FF5F3D) + 1325441219)) - 938384759);
  LODWORD(STACK[0x28C]) = HIBYTE(v140);
  v147 = *(v20 + (4741 * ((((HIBYTE(v140) ^ 0xF2) - (HIBYTE(v140) ^ 0x34)) ^ 0xFFFFFFFC) + (HIBYTE(v140) ^ 0xF2)) + 39260221) % 0x2280);
  v148 = v139 ^ 0xF89BB03E;
  v149 = v146 ^ ((v147 >> 4) | (16 * v147));
  LODWORD(STACK[0x350]) = v149;
  v150 = v149 ^ 0x9CDFB7B5;
  v151 = v149 ^ 0x9CDFB7B5 ^ v139 ^ 0xF89BB03E;
  v152 = v151 ^ v141;
  v153 = v152 ^ 0x1E95B40D ^ v140;
  LODWORD(STACK[0x34C]) = BYTE2(v153);
  LODWORD(STACK[0x33C]) = BYTE1(v153);
  LODWORD(STACK[0x2D4]) = v152 ^ 0xD ^ v140;
  v154 = *(v73 + 4 * (8717 * (v152 ^ 0xD ^ v140 ^ 0x5E) + 78226358 - 10816 * (((101656031 * (8717 * (v152 ^ 0xD ^ v140 ^ 0x5Eu) + 78226358)) >> 32) >> 8)));
  LODWORD(STACK[0x2D8]) = HIBYTE(v153);
  v155 = *(v20 + 4741 * (HIBYTE(v153) ^ 0xFA) + 39260221 - 8832 * (((62245903 * (4741 * (HIBYTE(v153) ^ 0xFA) + 39260221)) >> 32) >> 7));
  STACK[0x3A8] = v20;
  v156 = *(v73 + 4 * (8717 * (BYTE1(v153) ^ 0xE4) + 67042447 - 10816 * (((101656031 * (8717 * (BYTE1(v153) ^ 0xE4u) + 67042447)) >> 32) >> 8))) ^ 0x57558551;
  v157 = *(v73 + 4 * (8717 * (BYTE2(v153) ^ 0x57) + 33508148 - 10816 * (((3176751 * (8717 * (BYTE2(v153) ^ 0x57u) + 33508148)) >> 32) >> 3))) ^ v156 ^ (4 * v156 * v156) ^ ((v155 >> 4) | (16 * v155)) ^ ((((v154 ^ 0x902C52AD) + 1876143443) ^ ((v154 ^ 0x1296FDD3) - 311885267) ^ ((v154 ^ 0x51CF46B4) - 1372538548)) - 938384759) ^ 0x865FFEF3;
  v158 = v150 ^ v157;
  v159 = v157 ^ v148;
  v160 = v152 ^ 0x1E95B40D ^ v159 ^ 0x11662050;
  v161 = v160 ^ 0xE132A30D ^ v153;
  v162 = BYTE2(v161);
  v163 = 8717 * (BYTE2(v161) ^ 0x3B) + 33508148 - 10816 * (((3176751 * (8717 * (BYTE2(v161) ^ 0x3Bu) + 33508148)) >> 32) >> 3);
  v164 = BYTE1(v161);
  v165 = *(v73 + 4 * (8717 * (BYTE1(v161) ^ 0x78) + 67042447 - 10816 * (((101656031 * (8717 * (BYTE1(v161) ^ 0x78u) + 67042447)) >> 32) >> 8))) ^ 0x57558551;
  v166 = v160 ^ 0xD ^ v153;
  v161 >>= 24;
  v167 = *(v73 + 4 * (8717 * (v166 ^ 0x71) + 78226358 - 10816 * (((101656031 * (8717 * (v166 ^ 0x71u) + 78226358)) >> 32) >> 8)));
  v168 = *(v20 + 4741 * (v161 ^ 0xC1) + 39260221 - 8832 * (((62245903 * (4741 * (v161 ^ 0xC1) + 39260221)) >> 32) >> 7));
  v169 = v165 ^ *(v73 + 4 * v163) ^ (4 * v165 * v165) ^ ((v168 >> 4) | (16 * v168)) ^ ((((v167 ^ 0xDCF168F7) + 588158729) ^ ((v167 ^ 0x8301F6BF) + 2097023297) ^ ((v167 ^ 0x8C857782) + 1937410174)) - 938384759) ^ v158;
  v441 = v169 ^ v159 ^ 0x11662050;
  LODWORD(STACK[0x248]) = v441 ^ 0x94A5C781 ^ v153;
  v170 = 8717 * ((~(2 * v158) & 4) + (v158 ^ 0xC7D));
  LODWORD(STACK[0x30C]) = v170 - 10816 * (((3176751 * v170) >> 32) >> 3);
  LODWORD(STACK[0x304]) = 8717 * (BYTE1(v158) ^ 0xAC) + 37988686 - 10816 * (((3176751 * (8717 * (BYTE1(v158) ^ 0xACu) + 37988686)) >> 32) >> 3);
  LODWORD(STACK[0x300]) = (8717 * (((BYTE2(v158) ^ 0xA3) + ((v158 >> 15) & 0x1B0 ^ 0xFFFFFEFF) + 217) ^ 0x99) + 69273999) % 0x2A40;
  LODWORD(STACK[0x394]) = 8717 * (HIBYTE(v158) ^ 0xE6) + 42460507 - 10816 * (((3176751 * (8717 * (HIBYTE(v158) ^ 0xE6) + 42460507)) >> 32) >> 3);
  LODWORD(STACK[0x390]) = 8717 * (v159 ^ 0xFA) + 26796058 - 10816 * (((3176751 * (8717 * (v159 ^ 0xFAu) + 26796058)) >> 32) >> 3);
  LODWORD(STACK[0x388]) = 8717 * (BYTE1(v159) ^ 0x6B) + 37988686 - 10816 * (((3176751 * (8717 * (BYTE1(v159) ^ 0x6Bu) + 37988686)) >> 32) >> 3);
  LODWORD(STACK[0x35C]) = 8717 * BYTE2(v159) + 69273999 - 10816 * (((101656031 * (8717 * BYTE2(v159) + 69273999)) >> 32) >> 8);
  LODWORD(STACK[0x324]) = 8717 * (HIBYTE(v159) ^ 0x38) + 42460507 - 10816 * (((3176751 * (8717 * (HIBYTE(v159) ^ 0x38) + 42460507)) >> 32) >> 3);
  v171 = 8717 * (v152 ^ 0xD ^ v159 ^ 0x50 ^ 0x94) + 26796058;
  LODWORD(STACK[0x2EC]) = v171 - 10816 * (((3176751 * v171) >> 32) >> 3);
  LODWORD(STACK[0x2E8]) = 8717 * (BYTE1(v160) ^ 0x7C) + 37988686 - 10816 * (((3176751 * (8717 * (BYTE1(v160) ^ 0x7Cu) + 37988686)) >> 32) >> 3);
  LODWORD(STACK[0x2E4]) = 8717 * (BYTE2(v160) ^ 0xB3) + 69273999 - 10816 * (((101656031 * (8717 * (BYTE2(v160) ^ 0xB3u) + 69273999)) >> 32) >> 8);
  LODWORD(STACK[0x318]) = 8717 * (HIBYTE(v160) ^ 0x71) + 42460507 - 10816 * (((3176751 * (8717 * (HIBYTE(v160) ^ 0x71) + 42460507)) >> 32) >> 3);
  LODWORD(STACK[0x314]) = 8717 * (v166 ^ 0x11) + 26796058 - 10816 * (((3176751 * (8717 * (v166 ^ 0x11u) + 26796058)) >> 32) >> 3);
  LODWORD(STACK[0x310]) = 8717 * (v164 ^ 0xA6) + 37988686 - 10816 * (((3176751 * (8717 * (v164 ^ 0xA6u) + 37988686)) >> 32) >> 3);
  LODWORD(STACK[0x358]) = 8717 * (v162 ^ 0xFF) + 69273999 - 10816 * (((101656031 * (8717 * (v162 ^ 0xFFu) + 69273999)) >> 32) >> 8);
  LODWORD(STACK[0x308]) = 8717 * (v161 ^ 0x2D) + 42460507 - 10816 * (((3176751 * (8717 * (v161 ^ 0x2D) + 42460507)) >> 32) >> 3);
  v172 = 8717 * (LODWORD(STACK[0x350]) ^ 0xE) + 26796058;
  LODWORD(STACK[0x2C8]) = v172 - 10816 * (((3176751 * v172) >> 32) >> 3);
  LODWORD(STACK[0x2C4]) = 8717 * (BYTE1(v146) ^ 0x78) + 37988686 - 10816 * (((3176751 * (8717 * (BYTE1(v146) ^ 0x78u) + 37988686)) >> 32) >> 3);
  LODWORD(STACK[0x2BC]) = 8717 * (BYTE2(v146) ^ 0xC1) + 69273999 - 10816 * (((101656031 * (8717 * (BYTE2(v146) ^ 0xC1u) + 69273999)) >> 32) >> 8);
  LODWORD(STACK[0x2FC]) = 8717 * (HIBYTE(v146) ^ 0x87) + 42460507 - 10816 * (((3176751 * (8717 * (HIBYTE(v146) ^ 0x87) + 42460507)) >> 32) >> 3);
  LODWORD(STACK[0x2F8]) = 8717 * (v151 ^ 0x51) + 26796058 - 10816 * (((3176751 * (8717 * (v151 ^ 0x51u) + 26796058)) >> 32) >> 3);
  LODWORD(STACK[0x2F4]) = 8717 * (BYTE1(v151) ^ 0x89) + 37988686 - 10816 * (((3176751 * (8717 * (BYTE1(v151) ^ 0x89u) + 37988686)) >> 32) >> 3);
  LODWORD(STACK[0x350]) = 8717 * (BYTE2(v151) ^ 0xF4) + 69273999 - 10816 * (((101656031 * (8717 * (BYTE2(v151) ^ 0xF4u) + 69273999)) >> 32) >> 8);
  LODWORD(STACK[0x2F0]) = 8717 * (HIBYTE(v151) ^ 0xBF) + 42460507 - 10816 * (((3176751 * (8717 * (HIBYTE(v151) ^ 0xBF) + 42460507)) >> 32) >> 3);
  LODWORD(STACK[0x288]) = 8717 * (v152 ^ 0x1D) + 26796058 - 10816 * (((3176751 * (8717 * (v152 ^ 0x1Du) + 26796058)) >> 32) >> 3);
  LODWORD(STACK[0x27C]) = 8717 * (BYTE1(v152) ^ 0xF6) + 37988686 - 10816 * (((3176751 * (8717 * (BYTE1(v152) ^ 0xF6u) + 37988686)) >> 32) >> 3);
  LODWORD(STACK[0x274]) = 8717 * (BYTE2(v152) ^ 0xD) + 69273999 - 10816 * (((101656031 * (8717 * (BYTE2(v152) ^ 0xDu) + 69273999)) >> 32) >> 8);
  LODWORD(STACK[0x2E0]) = 8717 * (HIBYTE(v152) ^ 0x1D) + 42460507 - 10816 * (((3176751 * (8717 * (HIBYTE(v152) ^ 0x1D) + 42460507)) >> 32) >> 3);
  LODWORD(STACK[0x268]) = 8717 * (LODWORD(STACK[0x2D4]) ^ 0xF9) + 26796058 - 10816 * (((3176751 * (8717 * (LODWORD(STACK[0x2D4]) ^ 0xF9u) + 26796058)) >> 32) >> 3);
  LODWORD(STACK[0x260]) = 8717 * (LODWORD(STACK[0x33C]) ^ 0x8F) + 37988686 - 10816 * (((3176751 * (8717 * (LODWORD(STACK[0x33C]) ^ 0x8Fu) + 37988686)) >> 32) >> 3);
  LODWORD(STACK[0x250]) = 8717 * (LODWORD(STACK[0x34C]) ^ 0xAD) + 69273999 - 10816 * (((101656031 * (8717 * (LODWORD(STACK[0x34C]) ^ 0xADu) + 69273999)) >> 32) >> 8);
  LODWORD(STACK[0x2D8]) = 8717 * (LODWORD(STACK[0x2D8]) ^ 0xF3) + 42460507 - 10816 * (((3176751 * (8717 * (LODWORD(STACK[0x2D8]) ^ 0xF3u) + 42460507)) >> 32) >> 3);
  v173 = STACK[0x340];
  v174 = 8717 * (LODWORD(STACK[0x340]) ^ 3) + 26796058;
  LODWORD(STACK[0x2D4]) = v174 - 10816 * (((3176751 * v174) >> 32) >> 3);
  LODWORD(STACK[0x2CC]) = 8717 * (BYTE1(v173) ^ 0xE6) + 37988686 - 10816 * (((3176751 * (8717 * (BYTE1(v173) ^ 0xE6u) + 37988686)) >> 32) >> 3);
  LODWORD(STACK[0x34C]) = 8717 * (BYTE2(v173) ^ 0xBF) + 69273999 - 10816 * (((101656031 * (8717 * (BYTE2(v173) ^ 0xBFu) + 69273999)) >> 32) >> 8);
  LODWORD(STACK[0x2C0]) = 8717 * (HIBYTE(v173) ^ 0x23) + 42460507 - 10816 * (((3176751 * (8717 * (HIBYTE(v173) ^ 0x23) + 42460507)) >> 32) >> 3);
  v175 = STACK[0x2AC];
  v176 = 8717 * (LODWORD(STACK[0x2AC]) ^ 0x66) + 26796058;
  LODWORD(STACK[0x2B4]) = v176 - 10816 * (((3176751 * v176) >> 32) >> 3);
  LODWORD(STACK[0x2B0]) = 8717 * (BYTE1(v175) ^ 0xAA) + 37988686 - 10816 * (((3176751 * (8717 * (BYTE1(v175) ^ 0xAAu) + 37988686)) >> 32) >> 3);
  LODWORD(STACK[0x33C]) = 8717 * (BYTE2(v175) ^ 0x82) + 69273999 - 10816 * (((101656031 * (8717 * (BYTE2(v175) ^ 0x82u) + 69273999)) >> 32) >> 8);
  LODWORD(STACK[0x2AC]) = 8717 * (HIBYTE(v175) ^ 0xD2) + 42460507 - 10816 * (((3176751 * (8717 * (HIBYTE(v175) ^ 0xD2) + 42460507)) >> 32) >> 3);
  v177 = STACK[0x2A0];
  LODWORD(STACK[0x2A8]) = (8717 * (((((LODWORD(STACK[0x2A0]) ^ 0xF5) - (LODWORD(STACK[0x2A0]) ^ 0xE5)) ^ 0xFFFFFFE0) + (LODWORD(STACK[0x2A0]) ^ 0xF5)) ^ 0x54) + 26796058) % 0x2A40;
  LODWORD(STACK[0x2A4]) = 8717 * (BYTE1(v177) ^ 0xDB) + 37988686 - 10816 * (((3176751 * (8717 * (BYTE1(v177) ^ 0xDBu) + 37988686)) >> 32) >> 3);
  LODWORD(STACK[0x340]) = 8717 * (BYTE2(v177) ^ 0x58) + 69273999 - 10816 * (((101656031 * (8717 * (BYTE2(v177) ^ 0x58u) + 69273999)) >> 32) >> 8);
  LODWORD(STACK[0x2A0]) = 8717 * (HIBYTE(v177) ^ 0xB3) + 42460507 - 10816 * (((3176751 * (8717 * (HIBYTE(v177) ^ 0xB3) + 42460507)) >> 32) >> 3);
  LODWORD(STACK[0x298]) = 8717 * (LODWORD(STACK[0x298]) ^ 9) + 26796058 - 10816 * (((3176751 * (8717 * (LODWORD(STACK[0x298]) ^ 9u) + 26796058)) >> 32) >> 3);
  LODWORD(STACK[0x294]) = 8717 * (LODWORD(STACK[0x334]) ^ 0xB9) + 37988686 - 10816 * (((3176751 * (8717 * (LODWORD(STACK[0x334]) ^ 0xB9u) + 37988686)) >> 32) >> 3);
  LODWORD(STACK[0x338]) = 8717 * (LODWORD(STACK[0x338]) ^ 0xEA) + 69273999 - 10816 * (((101656031 * (8717 * (LODWORD(STACK[0x338]) ^ 0xEAu) + 69273999)) >> 32) >> 8);
  LODWORD(STACK[0x28C]) = 8717 * (LODWORD(STACK[0x28C]) ^ 0x59) + 42460507 - 10816 * (((3176751 * (8717 * (LODWORD(STACK[0x28C]) ^ 0x59u) + 42460507)) >> 32) >> 3);
  v178 = STACK[0x26C];
  v179 = 8717 * (LODWORD(STACK[0x26C]) ^ 0xB) + 26796058;
  LODWORD(STACK[0x280]) = v179 - 10816 * (((3176751 * v179) >> 32) >> 3);
  LODWORD(STACK[0x278]) = 8717 * (BYTE1(v178) ^ 0x27) + 37988686 - 10816 * (((3176751 * (8717 * (BYTE1(v178) ^ 0x27u) + 37988686)) >> 32) >> 3);
  LODWORD(STACK[0x334]) = 8717 * (BYTE2(v178) ^ 0x8A) + 69273999 - 10816 * (((101656031 * (8717 * (BYTE2(v178) ^ 0x8Au) + 69273999)) >> 32) >> 8);
  LODWORD(STACK[0x26C]) = 8717 * (HIBYTE(v178) ^ 0xF0) + 42460507 - 10816 * (((3176751 * (8717 * (HIBYTE(v178) ^ 0xF0) + 42460507)) >> 32) >> 3);
  v180 = STACK[0x244];
  v181 = 8717 * (LODWORD(STACK[0x244]) ^ 0xC8) + 26796058;
  LODWORD(STACK[0x264]) = v181 - 10816 * (((3176751 * v181) >> 32) >> 3);
  LODWORD(STACK[0x258]) = (8717 * (((BYTE1(v180) ^ 0xB4) + ((v180 >> 7) & 0x110 ^ 0xFFFFFEFF) + 137) ^ 0xBF) + 37988686) % 0x2A40;
  LODWORD(STACK[0x25C]) = (8717 * (-(BYTE2(v180) ^ 0xBE) ^ (153 - (BYTE2(v180) ^ 0x27)) ^ 0x6D71E8B8 ^ ((BYTE2(v180) ^ 0xBE) - ((2 * (BYTE2(v180) ^ 0xBE)) & 0x170u) + 1836181688)) + 70607700) % 0x2A40;
  LODWORD(STACK[0x240]) = 8717 * (HIBYTE(v180) ^ 0xAB) + 42460507 - 10816 * (((3176751 * (8717 * (HIBYTE(v180) ^ 0xAB) + 42460507)) >> 32) >> 3);
  v182 = STACK[0x330];
  v183 = 8717 * (LODWORD(STACK[0x330]) ^ 0x26) + 26796058;
  LODWORD(STACK[0x244]) = v183 - 10816 * (((3176751 * v183) >> 32) >> 3);
  LODWORD(STACK[0x23C]) = 8717 * (BYTE1(v182) ^ 0x30) + 37988686 - 10816 * (((3176751 * (8717 * (BYTE1(v182) ^ 0x30u) + 37988686)) >> 32) >> 3);
  LODWORD(STACK[0x330]) = 8717 * (BYTE2(v182) ^ 0xFA) + 69273999 - 10816 * (((101656031 * (8717 * (BYTE2(v182) ^ 0xFAu) + 69273999)) >> 32) >> 8);
  LODWORD(STACK[0x238]) = 8717 * (HIBYTE(v182) ^ 0x49) + 42460507 - 10816 * (((3176751 * (8717 * (HIBYTE(v182) ^ 0x49) + 42460507)) >> 32) >> 3);
  LODWORD(STACK[0x230]) = 8717 * (LODWORD(STACK[0x230]) ^ 0x19) + 26796058 - 10816 * (((3176751 * (8717 * (LODWORD(STACK[0x230]) ^ 0x19u) + 26796058)) >> 32) >> 3);
  LODWORD(STACK[0x22C]) = 8717 * (LODWORD(STACK[0x22C]) ^ 0xA5) + 37988686 - 10816 * (((3176751 * (8717 * (LODWORD(STACK[0x22C]) ^ 0xA5u) + 37988686)) >> 32) >> 3);
  LODWORD(STACK[0x32C]) = 8717 * (LODWORD(STACK[0x32C]) ^ 0x11) + 69273999 - 10816 * (((101656031 * (8717 * (LODWORD(STACK[0x32C]) ^ 0x11u) + 69273999)) >> 32) >> 8);
  LODWORD(STACK[0x228]) = 8717 * (LODWORD(STACK[0x228]) ^ 0xD7) + 42460507 - 10816 * (((3176751 * (8717 * (LODWORD(STACK[0x228]) ^ 0xD7u) + 42460507)) >> 32) >> 3);
  v184 = STACK[0x328];
  v185 = 8717 * (LODWORD(STACK[0x328]) ^ 0x8E) + 26796058;
  LODWORD(STACK[0x220]) = v185 - 10816 * (((3176751 * v185) >> 32) >> 3);
  LODWORD(STACK[0x218]) = 8717 * (BYTE1(v184) ^ 0x60) + 37988686 - 10816 * (((3176751 * (8717 * (BYTE1(v184) ^ 0x60u) + 37988686)) >> 32) >> 3);
  LODWORD(STACK[0x328]) = 8717 * (BYTE2(v184) ^ 0xB6) + 69273999 - 10816 * (((101656031 * (8717 * (BYTE2(v184) ^ 0xB6u) + 69273999)) >> 32) >> 8);
  LODWORD(STACK[0x21C]) = 8717 * (HIBYTE(v184) ^ 0x7A) + 42460507 - 10816 * (((3176751 * (8717 * (HIBYTE(v184) ^ 0x7A) + 42460507)) >> 32) >> 3);
  LODWORD(STACK[0x214]) = 8717 * (v482 ^ 0x74) + 26796058 - 10816 * (((3176751 * (8717 * (v482 ^ 0x74u) + 26796058)) >> 32) >> 3);
  LODWORD(STACK[0x210]) = 8717 * (BYTE1(v482) ^ 0x6F) + 37988686 - 10816 * (((3176751 * (8717 * (BYTE1(v482) ^ 0x6Fu) + 37988686)) >> 32) >> 3);
  v186 = BYTE2(v482) ^ 0x87;
  v477 = (HIBYTE(v482) ^ 0x2A) - ((2 * (HIBYTE(v482) ^ 0x2A)) & 0x158);
  v459 = v484 ^ 0x3D;
  v462 = BYTE1(v484) ^ 0xD1;
  v465 = HIBYTE(v484) ^ 0x32;
  v187 = BYTE2(v484) ^ 0xDB;
  v470 = v488 ^ 0xD;
  v489 = *(v5 - 236) ^ 0x45;
  v485 = BYTE1(*(v5 - 236)) ^ 0xB8;
  v483 = BYTE1(v494) ^ 0x57;
  v475 = BYTE2(v494) ^ 0xD6;
  v473 = v494 ^ 0x86;
  v468 = BYTE2(*(v5 - 216)) ^ 0x86;
  v188 = v502;
  v451 = v499 ^ 0xAF;
  v500 = *(v5 - 232) ^ 0xAF;
  v457 = BYTE2(*(v5 - 232)) ^ 0x64;
  v453 = *(v5 - 224) ^ 0x28;
  BYTE2(v151) = BYTE2(*(v5 - 224));
  v450 = BYTE1(*(v5 - 224)) ^ 0xE8;
  v448 = LODWORD(STACK[0x204]) ^ 0x34;
  v445 = BYTE1(LODWORD(STACK[0x204])) ^ 0xE5;
  v437 = LODWORD(STACK[0x200]) ^ 0x4A;
  LODWORD(STACK[0x204]) = BYTE2(LODWORD(STACK[0x204])) ^ 0x4A;
  v439 = LODWORD(STACK[0x270]) ^ 0x5C;
  v431 = HIBYTE(v494) ^ 0x8C;
  v189 = STACK[0x224];
  v495 = LODWORD(STACK[0x224]) ^ 0x8C;
  v435 = BYTE1(LODWORD(STACK[0x224])) ^ 0x6C;
  v433 = BYTE2(LODWORD(STACK[0x224])) ^ 0xF3;
  LODWORD(STACK[0x270]) = 8717 * v186 + 69273999 - 10816 * (((101656031 * (8717 * v186 + 69273999)) >> 32) >> 8);
  LODWORD(STACK[0x224]) = HIBYTE(v189) ^ 0x44;
  v190 = STACK[0x24C];
  v398 = LODWORD(STACK[0x24C]) ^ 0xA8;
  v478 = (8717 * ((v477 + 172) ^ 0x95u) + 42460507) % 0x2A40;
  v191 = STACK[0x208];
  v429 = BYTE1(LODWORD(STACK[0x208])) ^ 9;
  v397 = BYTE2(LODWORD(STACK[0x24C])) ^ 9;
  v396 = LODWORD(STACK[0x290]) ^ 0x33;
  v456 = 8717 * v459 + 26796058 - 10816 * (((3176751 * (8717 * v459 + 26796058)) >> 32) >> 3);
  v460 = BYTE1(LODWORD(STACK[0x290])) ^ 0xE3;
  v395 = BYTE2(LODWORD(STACK[0x290])) ^ 0x73;
  v394 = HIBYTE(LODWORD(STACK[0x290])) ^ 0x13;
  v447 = 8717 * v462 + 37988686 - 10816 * (((3176751 * (8717 * v462 + 37988686)) >> 32) >> 3);
  LOBYTE(v178) = BYTE1(LODWORD(STACK[0x29C])) & 8;
  v192 = ((LODWORD(STACK[0x29C]) ^ 0x30E8229Du) >> v178) - ((2 * ((LODWORD(STACK[0x29C]) ^ 0x30E8229Du) >> v178)) & 0xA793207E);
  LODWORD(STACK[0x29C]) = 8717 * v187 + 69273999 - 10816 * (((101656031 * (8717 * v187 + 69273999)) >> 32) >> 8);
  v463 = (((v192 - 741765057) ^ 0xD3C9903F) >> (v178 ^ 8)) ^ 0x2B;
  v443 = 8717 * v465 + 42460507 - 10816 * (((3176751 * (8717 * v465 + 42460507)) >> 32) >> 3);
  v466 = LODWORD(STACK[0x2DC]) ^ 0xA1;
  v393 = LODWORD(STACK[0x2D0]) ^ 0x9F;
  v392 = LODWORD(STACK[0x3C8]) ^ 0xCE;
  LODWORD(STACK[0x3C8]) = 8717 * (LODWORD(STACK[0x234]) ^ 0x25) + 26796058 - 10816 * (((3176751 * (8717 * (LODWORD(STACK[0x234]) ^ 0x25u) + 26796058)) >> 32) >> 3);
  v391 = LODWORD(STACK[0x3B8]) ^ 0x95;
  LODWORD(STACK[0x39C]) ^= 0x19u;
  v390 = LODWORD(STACK[0x3B0]) ^ 0xC9;
  v425 = 8717 * v470 + 37988686 - 10816 * (((3176751 * (8717 * v470 + 37988686)) >> 32) >> 3);
  v193 = LODWORD(STACK[0x2B8]) ^ 0xD0;
  LODWORD(STACK[0x234]) = LODWORD(STACK[0x3D4]) ^ 0xD0;
  v471 = LODWORD(STACK[0x31C]) ^ 0xD0;
  LODWORD(STACK[0x384]) ^= 0x429u;
  v389 = LODWORD(STACK[0x320]) ^ 0x82;
  v388 = BYTE2(v169) ^ 0x4B9;
  LODWORD(STACK[0x31C]) = 8717 * (v490 ^ 0x4F) + 69273999 - 10816 * (((101656031 * (8717 * (v490 ^ 0x4Fu) + 69273999)) >> 32) >> 8);
  v416 = 8717 * (v486 ^ 0x54) + 42460507 - 10816 * (((3176751 * (8717 * (v486 ^ 0x54) + 42460507)) >> 32) >> 3);
  v194 = v441;
  LOWORD(v151) = v441 ^ 0xC781 ^ v160 ^ 0xA30D;
  v406 = 8717 * (v492 ^ 0x7B) + 26796058 - 10816 * (((3176751 * (8717 * (v492 ^ 0x7Bu) + 26796058)) >> 32) >> 3);
  v195 = LODWORD(STACK[0x38C]) ^ 0xCD;
  v196 = STACK[0x248];
  v400 = 8717 * (BYTE1(v492) ^ 0xEE) + 37988686 - 10816 * (((3176751 * (8717 * (BYTE1(v492) ^ 0xEEu) + 37988686)) >> 32) >> 3);
  v197 = LODWORD(STACK[0x398]) ^ 0x25;
  LODWORD(STACK[0x200]) = 8717 * (BYTE2(v492) ^ 0xF0) + 69273999 - 10816 * (((101656031 * (8717 * (BYTE2(v492) ^ 0xF0u) + 69273999)) >> 32) >> 8);
  v399 = 8717 * (HIBYTE(v492) ^ 0x8E) + 42460507 - 10816 * (((3176751 * (8717 * (HIBYTE(v492) ^ 0x8E) + 42460507)) >> 32) >> 3);
  v401 = 8717 * v489 + 26796058 - 10816 * (((3176751 * (8717 * v489 + 26796058)) >> 32) >> 3);
  v402 = 8717 * v485 + 37988686 - 10816 * (((3176751 * (8717 * v485 + 37988686)) >> 32) >> 3);
  v198 = *(v5 - 236);
  LODWORD(STACK[0x320]) = 8717 * (BYTE2(v198) ^ 0x1A) + 69273999 - 10816 * (((101656031 * (8717 * (BYTE2(v198) ^ 0x1Au) + 69273999)) >> 32) >> 8);
  v403 = 8717 * (HIBYTE(v198) ^ 0x6E) + 42460507 - 10816 * (((3176751 * (8717 * (HIBYTE(v198) ^ 0x6E) + 42460507)) >> 32) >> 3);
  v404 = 8717 * v473 + 26796058 - 10816 * (((3176751 * (8717 * v473 + 26796058)) >> 32) >> 3);
  v405 = 8717 * v483 + 37988686 - 10816 * (((3176751 * (8717 * v483 + 37988686)) >> 32) >> 3);
  LODWORD(STACK[0x2D0]) = 8717 * v475 + 69273999 - 10816 * (((101656031 * (8717 * v475 + 69273999)) >> 32) >> 8);
  v407 = 8717 * v431 + 42460507 - 10816 * (((3176751 * (8717 * v431 + 42460507)) >> 32) >> 3);
  v408 = 8717 * (v496 ^ 0xAC) + 26796058 - 10816 * (((3176751 * (8717 * (v496 ^ 0xACu) + 26796058)) >> 32) >> 3);
  v409 = 8717 * (v497 ^ 0x27) + 37988686 - 10816 * (((3176751 * (8717 * (v497 ^ 0x27u) + 37988686)) >> 32) >> 3);
  LODWORD(STACK[0x24C]) = 8717 * v193 + 69273999 - 10816 * (((101656031 * (8717 * v193 + 69273999)) >> 32) >> 8);
  v410 = 8717 * v451 + 42460507 - 10816 * (((3176751 * (8717 * v451 + 42460507)) >> 32) >> 3);
  v411 = 8717 * (v191 ^ 0x20) + 26796058 - 10816 * (((3176751 * (8717 * (v191 ^ 0x20u) + 26796058)) >> 32) >> 3);
  v412 = 8717 * v429 + 37988686 - 10816 * (((3176751 * (8717 * v429 + 37988686)) >> 32) >> 3);
  LODWORD(STACK[0x208]) = 8717 * (BYTE2(v191) ^ 0xD2) + 69273999 - 10816 * (((101656031 * (8717 * (BYTE2(v191) ^ 0xD2u) + 69273999)) >> 32) >> 8);
  v413 = 8717 * (HIBYTE(v191) ^ 0xBB) + 42460507 - 10816 * (((3176751 * (8717 * (HIBYTE(v191) ^ 0xBB) + 42460507)) >> 32) >> 3);
  v199 = 8717 * (*(v5 - 216) ^ 0xE0) + 26796058;
  v414 = v199 - 10816 * (((3176751 * v199) >> 32) >> 3);
  v415 = 8717 * (BYTE1(*(v5 - 216)) ^ 0xE0) + 37988686 - 10816 * (((3176751 * (8717 * (BYTE1(*(v5 - 216)) ^ 0xE0u) + 37988686)) >> 32) >> 3);
  LODWORD(STACK[0x3C0]) = 8717 * v468 + 69273999 - 10816 * (((101656031 * (8717 * v468 + 69273999)) >> 32) >> 8);
  v417 = 8717 * (v188 ^ 0xF) + 26796058 - 10816 * (((3176751 * (8717 * (v188 ^ 0xFu) + 26796058)) >> 32) >> 3);
  v418 = 8717 * (BYTE1(v188) ^ 0x2C) + 37988686 - 10816 * (((3176751 * (8717 * (BYTE1(v188) ^ 0x2Cu) + 37988686)) >> 32) >> 3);
  v503 = 8717 * (BYTE2(v502) ^ 0xC8) + 69273999 - 10816 * (((101656031 * (8717 * (BYTE2(v502) ^ 0xC8u) + 69273999)) >> 32) >> 8);
  v419 = 8717 * (HIBYTE(v188) ^ 0x2C) + 42460507 - 10816 * (((3176751 * (8717 * (HIBYTE(v188) ^ 0x2C) + 42460507)) >> 32) >> 3);
  v420 = 8717 * (v501 ^ 0xC3) + 26796058 - 10816 * (((3176751 * (8717 * (v501 ^ 0xC3u) + 26796058)) >> 32) >> 3);
  v421 = 8717 * (v504 ^ 0xDA) + 37988686 - 10816 * (((3176751 * (8717 * (v504 ^ 0xDAu) + 37988686)) >> 32) >> 3);
  LODWORD(STACK[0x2DC]) = 8717 * v437 + 69273999 - 10816 * (((101656031 * (8717 * v437 + 69273999)) >> 32) >> 8);
  v422 = 8717 * v500 + 26796058 - 10816 * (((3176751 * (8717 * v500 + 26796058)) >> 32) >> 3);
  v423 = 8717 * (BYTE1(*(v5 - 232)) ^ 0xF8) + 37988686 - 10816 * (((3176751 * (8717 * (BYTE1(*(v5 - 232)) ^ 0xF8u) + 37988686)) >> 32) >> 3);
  *(v5 - 216) = 8717 * v457 + 69273999 - 10816 * (((101656031 * (8717 * v457 + 69273999)) >> 32) >> 8);
  v424 = 8717 * v453 + 26796058 - 10816 * (((3176751 * (8717 * v453 + 26796058)) >> 32) >> 3);
  v200 = 8717 * v450 + 37988686 - 10816 * (((3176751 * (8717 * v450 + 37988686)) >> 32) >> 3);
  *(v5 - 232) = 8717 * (BYTE2(v151) ^ 0xC9) + 69273999 - 10816 * (((101656031 * (8717 * (BYTE2(v151) ^ 0xC9u) + 69273999)) >> 32) >> 8);
  v426 = 8717 * v448 + 26796058 - 10816 * (((3176751 * (8717 * v448 + 26796058)) >> 32) >> 3);
  v427 = 8717 * v445 + 37988686 - 10816 * (((3176751 * (8717 * v445 + 37988686)) >> 32) >> 3);
  *(v5 - 224) = 8717 * LODWORD(STACK[0x204]) + 69273999 - 10816 * (((101656031 * (8717 * LODWORD(STACK[0x204]) + 69273999)) >> 32) >> 8);
  v428 = 8717 * v439 + 26796058 - 10816 * (((3176751 * (8717 * v439 + 26796058)) >> 32) >> 3);
  v201 = 8717 * v197 + 37988686 - 10816 * (((3176751 * (8717 * v197 + 37988686)) >> 32) >> 3);
  LODWORD(STACK[0x2B8]) = 8717 * v195 + 69273999 - 10816 * (((101656031 * (8717 * v195 + 69273999)) >> 32) >> 8);
  v430 = 8717 * v495 + 26796058 - 10816 * (((3176751 * (8717 * v495 + 26796058)) >> 32) >> 3);
  v432 = 8717 * v435 + 37988686 - 10816 * (((3176751 * (8717 * v435 + 37988686)) >> 32) >> 3);
  LODWORD(STACK[0x204]) = 8717 * v433 + 69273999 - 10816 * (((101656031 * (8717 * v433 + 69273999)) >> 32) >> 8);
  v202 = 8717 * LODWORD(STACK[0x224]) + 42460507 - 10816 * (((3176751 * (8717 * LODWORD(STACK[0x224]) + 42460507)) >> 32) >> 3);
  v434 = 8717 * v398 + 26796058 - 10816 * (((3176751 * (8717 * v398 + 26796058)) >> 32) >> 3);
  v436 = 8717 * (BYTE1(v190) ^ 0x4D) + 37988686 - 10816 * (((3176751 * (8717 * (BYTE1(v190) ^ 0x4Du) + 37988686)) >> 32) >> 3);
  LODWORD(STACK[0x290]) = 8717 * v397 + 69273999 - 10816 * (((101656031 * (8717 * v397 + 69273999)) >> 32) >> 8);
  LODWORD(STACK[0x3B0]) = 8717 * (HIBYTE(v190) ^ 5) + 42460507 - 10816 * (((3176751 * (8717 * (HIBYTE(v190) ^ 5) + 42460507)) >> 32) >> 3);
  LODWORD(STACK[0x3B8]) = 8717 * v396 + 26796058 - 10816 * (((3176751 * (8717 * v396 + 26796058)) >> 32) >> 3);
  LODWORD(STACK[0x3D4]) = 8717 * v460 + 37988686 - 10816 * (((3176751 * (8717 * v460 + 37988686)) >> 32) >> 3);
  v498 = 8717 * v395 + 69273999 - 10816 * (((101656031 * (8717 * v395 + 69273999)) >> 32) >> 8);
  v438 = 8717 * v394 + 42460507 - 10816 * (((3176751 * (8717 * v394 + 42460507)) >> 32) >> 3);
  *(v5 - 236) = 8717 * (LODWORD(STACK[0x3D8]) ^ 4) + 26796058 - 10816 * (((3176751 * (8717 * (LODWORD(STACK[0x3D8]) ^ 4u) + 26796058)) >> 32) >> 3);
  v452 = 8717 * v463 + 37988686 - 10816 * (((3176751 * (8717 * v463 + 37988686)) >> 32) >> 3);
  v493 = 8717 * v466 + 69273999 - 10816 * (((101656031 * (8717 * v466 + 69273999)) >> 32) >> 8);
  LODWORD(STACK[0x3D8]) = 8717 * v393 + 42460507 - 10816 * (((3176751 * (8717 * v393 + 42460507)) >> 32) >> 3);
  v464 = 8717 * LODWORD(STACK[0x234]) + 51395432 - 10816 * (((3176751 * (8717 * LODWORD(STACK[0x234]) + 51395432)) >> 32) >> 3);
  v454 = 8717 * LODWORD(STACK[0x3EC]) + 49163880 - 10816 * (((3176751 * (8717 * LODWORD(STACK[0x3EC]) + 49163880)) >> 32) >> 3);
  LODWORD(STACK[0x234]) = 8717 * (LODWORD(STACK[0x3E8]) ^ 0x7C) + 51395432 - 10816 * (((3176751 * (8717 * (LODWORD(STACK[0x3E8]) ^ 0x7Cu) + 51395432)) >> 32) >> 3);
  LODWORD(STACK[0x224]) = 8717 * v391 + 8926208 - 10816 * (((3176751 * (8717 * v391 + 8926208)) >> 32) >> 3);
  v203 = 8717 * LODWORD(STACK[0x39C]) + 49163880;
  v461 = v203 - 10816 * (((3176751 * v203) >> 32) >> 3);
  v204 = 8717 * (*(v5 - 208) ^ 0xD2) + 51395432;
  v491 = v204 - 10816 * (((3176751 * v204) >> 32) >> 3);
  v205 = 8717 * (LODWORD(STACK[0x3E0]) ^ 0xF0) + 49163880;
  v458 = v205 - 10816 * (((3176751 * v205) >> 32) >> 3);
  v481 = 8717 * v471 + 51395432 - 10816 * (((3176751 * (8717 * v471 + 51395432)) >> 32) >> 3);
  v479 = 8717 * LODWORD(STACK[0x384]) - 10816 * (((3176751 * (8717 * LODWORD(STACK[0x384]))) >> 32) >> 3);
  v467 = 8717 * v389 + 49163880 - 10816 * (((3176751 * (8717 * v389 + 49163880)) >> 32) >> 3);
  v487 = (v169 ^ 0xD442F1D6) >> 24;
  v469 = 8717 * (BYTE1(v169) ^ 0x4D) + 49163880 - 10816 * (((3176751 * (8717 * (BYTE1(v169) ^ 0x4Du) + 49163880)) >> 32) >> 3);
  v474 = 8717 * (BYTE1(v441) ^ 0x50) + 49163880 - 10816 * (((3176751 * (8717 * (BYTE1(v441) ^ 0x50u) + 49163880)) >> 32) >> 3);
  v476 = 8717 * (BYTE1(v151) ^ 0xCD) + 49163880 - 10816 * (((3176751 * (8717 * (BYTE1(v151) ^ 0xCDu) + 49163880)) >> 32) >> 3);
  v472 = 8717 * (BYTE1(v196) ^ 0x25) + 49163880 - 10816 * (((3176751 * (8717 * (BYTE1(v196) ^ 0x25u) + 49163880)) >> 32) >> 3);
  v206 = 4741 * (LODWORD(STACK[0x3F4]) ^ 0xA9) + 25601400;
  v207 = 4741 * (LODWORD(STACK[0x3F0]) ^ 0x5B) + 25601400;
  v208 = 4741 * (LODWORD(STACK[0x3E4]) ^ 0x52) + 25601400;
  v209 = 4741 * (LODWORD(STACK[0x3DC]) ^ 0xC5) + 25601400;
  v440 = v206 - 8832 * (((3890369 * v206) >> 32) >> 3);
  v455 = v207 - 8832 * (((3890369 * v207) >> 32) >> 3);
  v442 = v208 - 8832 * (((3890369 * v208) >> 32) >> 3);
  v444 = v209 - 8832 * (((3890369 * v209) >> 32) >> 3);
  v446 = 4741 * (v169 ^ 0x5F) + 25601400 - 8832 * (((3890369 * (4741 * (v169 ^ 0x5Fu) + 25601400)) >> 32) >> 3);
  LODWORD(STACK[0x248]) = 4741 * (v194 ^ 0x48) + 25601400 - 8832 * (((3890369 * (4741 * (v194 ^ 0x48u) + 25601400)) >> 32) >> 3);
  v449 = 4741 * (v196 ^ 0x85) + 25601400 - 8832 * (((3890369 * (4741 * (v196 ^ 0x85u) + 25601400)) >> 32) >> 3);
  v210 = *(v73 + 4 * LODWORD(STACK[0x30C]));
  v211 = *(v73 + 4 * LODWORD(STACK[0x304]));
  v212 = *(v73 + 4 * LODWORD(STACK[0x300]));
  v213 = (((v210 ^ 0xB96B3733) + 1184155853) ^ ((v210 ^ 0x1C6F9BBF) - 477076415) ^ ((v210 ^ 0x76714546) - 1987134790)) + 1756723189;
  v214 = (v212 >> 3) & 0x5D145E6 ^ v212 ^ v213 ^ ((((v211 ^ 0x5C3D8732) - 1547536178) ^ ((v211 ^ 0x5F4F0C49) - 1599016009) ^ ((v211 ^ 0xD00762B1) + 804822351)) + 1647179943) ^ (2 * v213 * v213);
  v215 = *(v73 + 4 * LODWORD(STACK[0x2EC]));
  v216 = *(v73 + 4 * LODWORD(STACK[0x2E8]));
  v217 = *(v73 + 4 * LODWORD(STACK[0x2E4]));
  v218 = (((v215 ^ 0x9B0C3ADF) + 1693697313) ^ ((v215 ^ 0x4660CAD6) - 1180748502) ^ ((v215 ^ 0xE1919C3) - 236526019)) + 1756723189;
  v219 = (v217 >> 3) & 0x5D145E6 ^ v217 ^ v218 ^ ((((v216 ^ 0xAFCA39EF) + 1345701393) ^ ((v216 ^ 0x7D3875E8) - 2100852200) ^ ((v216 ^ 0x187A5CD) - 25667021)) + 1647179943) ^ (2 * v218 * v218);
  v220 = *(v73 + 4 * LODWORD(STACK[0x2C8]));
  v221 = *(v73 + 4 * LODWORD(STACK[0x2C4]));
  v222 = *(v73 + 4 * LODWORD(STACK[0x2BC]));
  v223 = (((v220 ^ 0xC365C2F) - 204889135) ^ ((v220 ^ 0xC21F633E) + 1038130370) ^ ((v220 ^ 0x1D5CD6DB) - 492623579)) + 1756723189;
  v224 = (v222 >> 3) & 0x5D145E6 ^ v222 ^ ((((v221 ^ 0x5D8484AA) - 1568965802) ^ ((v221 ^ 0xB386EBA8) + 1283003480) ^ ((v221 ^ 0x3D7786C8) - 1031243464)) + 1647179943) ^ v223 ^ (2 * v223 * v223);
  v225 = *(v73 + 4 * LODWORD(STACK[0x288]));
  v226 = *(v73 + 4 * LODWORD(STACK[0x27C]));
  v227 = *(v73 + 4 * LODWORD(STACK[0x274]));
  v228 = (((v225 ^ 0x4D9325FE) - 1301489150) ^ ((v225 ^ 0x63651ED4) - 1667571412) ^ ((v225 ^ 0xFD83D2E0) + 41692448)) + 1756723189;
  v229 = (v227 >> 3) & 0x5D145E6 ^ v227 ^ v228 ^ ((((v226 ^ 0xAE2B6C49) + 1372885943) ^ ((v226 ^ 0x42B5ED04) - 1119218948) ^ ((v226 ^ 0x3FEB6887) - 1072392327)) + 1647179943) ^ (2 * v228 * v228);
  v230 = *(v73 + 4 * LODWORD(STACK[0x268]));
  v231 = *(v73 + 4 * LODWORD(STACK[0x260]));
  v232 = *(v73 + 4 * LODWORD(STACK[0x250]));
  v233 = (((v230 ^ 0x5BEBD6EC) - 1542182636) ^ ((v230 ^ 0xB1F42A76) + 1309398410) ^ ((v230 ^ 0x396A1550) - 963253584)) + 1756723189;
  v234 = (v232 >> 3) & 0x5D145E6 ^ v232 ^ v233 ^ ((((v231 ^ 0x7CF71AE4) - 2096569060) ^ ((v231 ^ 0xFB64DD3E) + 77275842) ^ ((v231 ^ 0x54E62E10) - 1424371216)) + 1647179943) ^ (2 * v233 * v233);
  v235 = *(v73 + 4 * LODWORD(STACK[0x394]));
  v236 = *(v73 + 4 * LODWORD(STACK[0x390]));
  LODWORD(STACK[0x38C]) = v214 ^ (-910069761 * (((v235 ^ 0x68773C13) - 1752644627) ^ ((v235 ^ 0xE264744D) + 496733107) ^ ((v235 ^ 0x5966A194) - 1499898260)) - 1642301898);
  v237 = ((v236 ^ 0x2F0EFD46) - 789511494) ^ ((v236 ^ 0x5D5DE74D) - 1566435149) ^ ((v236 ^ 0xA126F3C1) + 1591282751);
  v238 = *(v73 + 4 * LODWORD(STACK[0x324]));
  v239 = *(v73 + 4 * LODWORD(STACK[0x318]));
  LODWORD(STACK[0x3F0]) = ((v238 ^ 0x75C7D18B) - 1976029579) ^ ((v238 ^ 0xD83E542C) + 667003860) ^ ((v238 ^ 0x7E8C6C6D) - 2123132013);
  v240 = *(v73 + 4 * LODWORD(STACK[0x314]));
  LODWORD(STACK[0x388]) = v219 ^ (-910069761 * (((v239 ^ 0x91785702) + 1854384382) ^ ((v239 ^ 0xE12384F) - 236075087) ^ ((v239 ^ 0x4C1F8687) - 1277134471)) - 1642301898);
  LODWORD(STACK[0x3F4]) = ((v240 ^ 0x76D27320) - 1993503520) ^ ((v240 ^ 0xB69F942B) + 1231055829) ^ ((v240 ^ 0x13380EC1) - 322440897);
  v241 = *(v73 + 4 * LODWORD(STACK[0x310]));
  LODWORD(STACK[0x318]) = ((v241 ^ 0xFC952810) + 57333744) ^ ((v241 ^ 0x88155649) + 2011867575) ^ ((v241 ^ 0xA7F59793) + 1477077101);
  v242 = *(v73 + 4 * LODWORD(STACK[0x308]));
  v243 = *(v73 + 4 * LODWORD(STACK[0x2FC]));
  LODWORD(STACK[0x3EC]) = ((v242 ^ 0x7E0D5122) - 2114801954) ^ ((v242 ^ 0x37DF77A6) - 937392038) ^ ((v242 ^ 0x9AA7CF4E) + 1700278450);
  v244 = *(v73 + 4 * LODWORD(STACK[0x2F8]));
  LODWORD(STACK[0x384]) = v224 ^ (-910069761 * (((v243 ^ 0x3441E08F) - 876732559) ^ ((v243 ^ 0xCD7C0D1) - 215466193) ^ ((v243 ^ 0xEBE3C994) + 337393260)) - 1642301898);
  v245 = ((v244 ^ 0xA504A1C4) + 1526423100) ^ ((v244 ^ 0x17D68FE0) - 399937504) ^ ((v244 ^ 0x61A7C7EE) - 1638385646);
  LODWORD(STACK[0x39C]) = v245 - 458771733;
  LODWORD(STACK[0x324]) = v245 + 1824734463;
  v246 = *(v73 + 4 * LODWORD(STACK[0x2F0]));
  LODWORD(STACK[0x3E4]) = ((v246 ^ 0x429C665B) - 1117546075) ^ ((v246 ^ 0x85668D7B) + 2056876677) ^ ((v246 ^ 0x148F02EA) - 344916714);
  v247 = *(v73 + 4 * LODWORD(STACK[0x2E0]));
  LODWORD(STACK[0x398]) = v229 ^ (-910069761 * (((v247 ^ 0xAFF35700) + 1343006976) ^ ((v247 ^ 0x11A51272) - 296030834) ^ ((v247 ^ 0x6D23ACB8) - 1831054520)) - 1642301898);
  v248 = *(v73 + 4 * LODWORD(STACK[0x2D8]));
  LODWORD(STACK[0x394]) = v234 ^ (-910069761 * (((v248 ^ 0xF0AB3B81) + 257213567) ^ ((v248 ^ 0xA558E2AC) + 1520901460) ^ ((v248 ^ 0x868630E7) + 2038026009)) - 1642301898);
  v249 = *(v73 + 4 * LODWORD(STACK[0x2D4]));
  LODWORD(STACK[0x3E8]) = ((v249 ^ 0x6B78B6EE) - 1803073262) ^ ((v249 ^ 0xAB1F0A92) + 1424029038) ^ ((v249 ^ 0x131255B6) - 319968694);
  v250 = *(v73 + 4 * LODWORD(STACK[0x2CC]));
  v251 = *(v73 + 4 * LODWORD(STACK[0x2C0]));
  LODWORD(STACK[0x314]) = ((v250 ^ 0x70998C12) - 1889111058) ^ ((v250 ^ 0xFBF106EF) + 68090129) ^ ((v250 ^ 0x581D6337) - 1478320951);
  LODWORD(STACK[0x30C]) = ((v251 ^ 0x21E8AE7A) - 568897146) ^ ((v251 ^ 0x6F4B06BA) - 1867187898) ^ ((v251 ^ 0x9DD6410A) + 1646903030);
  v252 = *(v73 + 4 * LODWORD(STACK[0x2B4]));
  LODWORD(STACK[0x3E0]) = ((v252 ^ 0xD088F594) + 796330604) ^ ((v252 ^ 0x6691BA4C) - 1720826444) ^ ((v252 ^ 0x656CA612) - 1701619218);
  v253 = *(v73 + 4 * LODWORD(STACK[0x2B0]));
  v254 = *(v73 + 4 * LODWORD(STACK[0x2AC]));
  LODWORD(STACK[0x310]) = ((v253 ^ 0x4A875D02) - 1250385154) ^ ((v253 ^ 0x16AF7044) - 380596292) ^ ((v253 ^ 0x8F5DC48C) + 1889680244);
  LODWORD(STACK[0x300]) = ((v254 ^ 0xB289ECCA) + 1299583798) ^ ((v254 ^ 0xDF71E756) + 546183338) ^ ((v254 ^ 0xBE8DE256) + 1097997738);
  v255 = *(v73 + 4 * LODWORD(STACK[0x2A8]));
  LODWORD(STACK[0x3DC]) = ((v255 ^ 0xC9F23651) + 906873263) ^ ((v255 ^ 0x9B59E4D4) + 1688607532) ^ ((v255 ^ 0x81DE3B4F) + 2116142257);
  v256 = *(v73 + 4 * LODWORD(STACK[0x2A0]));
  LODWORD(STACK[0x2F8]) = ((v256 ^ 0xA10A5A86) + 1593156986) ^ ((v256 ^ 0xDF06463B) + 553236933) ^ ((v256 ^ 0xAD79F577) + 1384516233);
  v257 = *(v73 + 4 * LODWORD(STACK[0x298]));
  LODWORD(STACK[0x304]) = ((v257 ^ 0xFFB7EEAE) + 4723026) ^ ((v257 ^ 0x80944CC4) + 2137764668) ^ ((v257 ^ 0xAC564BA0) + 1403630688);
  v258 = *(v73 + 4 * LODWORD(STACK[0x294]));
  v259 = *(v73 + 4 * LODWORD(STACK[0x28C]));
  LODWORD(STACK[0x308]) = ((v258 ^ 0x4B4D56B1) - 1263359665) ^ ((v258 ^ 0xFBAA2DF) - 263889631) ^ ((v258 ^ 0x97821DA4) + 1753080412);
  LODWORD(STACK[0x2F4]) = ((v259 ^ 0x5F4DBB06) - 1598929670) ^ ((v259 ^ 0x8BF335FF) + 1946995201) ^ ((v259 ^ 0x7CB6733) - 130770739);
  v260 = *(v73 + 4 * LODWORD(STACK[0x280]));
  LODWORD(STACK[0x2FC]) = ((v260 ^ 0x53B124D3) - 1404118227) ^ ((v260 ^ 0x956DB057) + 1787973545) ^ ((v260 ^ 0x15A97D4E) - 363429198);
  v261 = *(v73 + 4 * LODWORD(STACK[0x26C]));
  LODWORD(STACK[0x2F0]) = ((v261 ^ 0x7012988) - 117516680) ^ ((v261 ^ 0x7AAA7BE6) - 2057993190) ^ ((v261 ^ 0xAEDEBBA4) + 1361134684);
  v262 = *(v73 + 4 * LODWORD(STACK[0x264]));
  v263 = *(v73 + 4 * LODWORD(STACK[0x258]));
  v264 = *(v73 + 4 * LODWORD(STACK[0x240]));
  v265 = ((v264 ^ 0x3A35D1D8) - 976605656) ^ ((v264 ^ 0xCDE6833) - 215902259) ^ ((v264 ^ 0xE59E5021) + 442609631);
  v266 = **(v5 - 256);
  v267 = *STACK[0x3F8];
  v268 = **(v5 - 248);
  v269 = (((v262 ^ 0x117A3328) - 293221160) ^ ((v262 ^ 0x6B9F7B93) - 1805613971) ^ ((v262 ^ 0xA990A171) + 1450139279)) + 1756723189;
  v270 = *(v73 + 4 * LODWORD(STACK[0x25C]));
  LODWORD(STACK[0x390]) = (v270 >> 3) & 0x5D145E6 ^ v270 ^ v269 ^ ((((v263 ^ 0xCE08247A) + 838327174) ^ ((v263 ^ 0xFD4F1C8) - 265613768) ^ ((v263 ^ 0x12A93C78) - 313080952)) + 1647179943) ^ (2 * v269 * v269) ^ (-910069761 * v265 - 1642301898);
  v271 = *(v73 + 4 * LODWORD(STACK[0x244]));
  *(v5 - 248) = ((v271 ^ 0x8D1C4EEE) + 1927524626) ^ ((v271 ^ 0x344F6288) - 877617800) ^ ((v271 ^ 0x6A26C5AC) - 1780925868);
  v272 = *(v73 + 4 * LODWORD(STACK[0x23C]));
  LODWORD(STACK[0x244]) = ((v272 ^ 0x3BD0DE0D) - 1003544077) ^ ((v272 ^ 0x8B4B499) - 146060441) ^ ((v272 ^ 0xE011835E) + 535723170);
  v273 = *(v73 + 4 * LODWORD(STACK[0x238]));
  LODWORD(STACK[0x2EC]) = ((v273 ^ 0xD814FDEB) + 669712917) ^ ((v273 ^ 0xBB3E6304) + 1153539324) ^ ((v273 ^ 0xB05F7725) + 1335920859);
  v274 = *(v73 + 4 * LODWORD(STACK[0x230]));
  *(v5 - 256) = ((v274 ^ 0xDA4B8F75) + 632582283) ^ ((v274 ^ 0x4C625FC3) - 1281515459) ^ ((v274 ^ 0x455C397C) - 1163671932);
  v275 = *(v73 + 4 * LODWORD(STACK[0x22C]));
  LODWORD(STACK[0x240]) = ((v275 ^ 0xA55575C9) + 1521125943) ^ ((v275 ^ 0x37100B3E) - 923798334) ^ ((v275 ^ 0x4130973D) - 1093703485);
  v276 = *(v73 + 4 * LODWORD(STACK[0x228]));
  LODWORD(STACK[0x2E4]) = ((v276 ^ 0x2BD4DB99) - 735370137) ^ ((v276 ^ 0xDD52C341) + 581778623) ^ ((v276 ^ 0x25F3F112) - 636743954);
  v277 = *(v73 + 4 * LODWORD(STACK[0x220]));
  LODWORD(STACK[0x3F8]) = ((v277 ^ 0x66AF2E8E) - 1722756750) ^ ((v277 ^ 0xB2273FC9) + 1306050615) ^ ((v277 ^ 0x7FDF88D) - 134084749);
  v278 = *(v73 + 4 * LODWORD(STACK[0x218]));
  LODWORD(STACK[0x23C]) = ((v278 ^ 0x1D54F564) - 492107108) ^ ((v278 ^ 0x3B0F55FB) - 990860795) ^ ((v278 ^ 0xF52E4955) + 181515947);
  v279 = *(v73 + 4 * LODWORD(STACK[0x21C]));
  LODWORD(STACK[0x2D4]) = ((v279 ^ 0x227A150) - 36151632) ^ ((v279 ^ 0xA92177E) - 177346430) ^ ((v279 ^ 0xDBC05FE4) + 608149532);
  v280 = *(v73 + 4 * LODWORD(STACK[0x214]));
  LODWORD(STACK[0x2E8]) = ((v280 ^ 0x1E5D4BF0) - 509430768) ^ ((v280 ^ 0x571C51F1) - 1461473777) ^ ((v280 ^ 0x9A34F3CB) + 1707805749);
  v281 = *(v73 + 4 * LODWORD(STACK[0x210]));
  LODWORD(STACK[0x238]) = ((v281 ^ 0xE25F8CE2) + 497054494) ^ ((v281 ^ 0x34428251) - 876773969) ^ ((v281 ^ 0x568E779) - 90761081);
  LODWORD(STACK[0x2C4]) = ((*(v73 + 4 * v478) ^ 0x7583CA76) - 1971571318) ^ ((*(v73 + 4 * v478) ^ 0x4C3DD42D) - 1279120429) ^ ((*(v73 + 4 * v478) ^ 0xEACBF791) + 355731567);
  LODWORD(STACK[0x2D8]) = ((*(v73 + 4 * v456) ^ 0x6F525DCD) - 1867668941) ^ ((*(v73 + 4 * v456) ^ 0x80DEFA87) + 2132870521) ^ ((*(v73 + 4 * v456) ^ 0x3CF94E80) - 1022971520);
  LODWORD(STACK[0x2E0]) = ((*(v73 + 4 * v447) ^ 0xC8273331) + 936955087) ^ ((*(v73 + 4 * v447) ^ 0xA3C3FA57) + 1547437481) ^ ((*(v73 + 4 * v447) ^ 0xB89120AC) + 1198448468);
  LODWORD(STACK[0x2B4]) = ((*(v73 + 4 * v443) ^ 0x694F3479) - 1766798457) ^ ((*(v73 + 4 * v443) ^ 0x682F40D9) - 1747927257) ^ ((*(v73 + 4 * v443) ^ 0xD2159D6A) + 770335382);
  v282 = *(v73 + 4 * LODWORD(STACK[0x3C8]));
  LODWORD(STACK[0x2C8]) = ((v282 ^ 0xDC2DB722) + 600983774) ^ ((v282 ^ 0x31F948C6) - 838420678) ^ ((v282 ^ 0x3EA1162E) - 1050744366);
  LODWORD(STACK[0x2CC]) = ((*(v73 + 4 * v425) ^ 0x74456C1C) - 1950706716) ^ ((*(v73 + 4 * v425) ^ 0x47F50EF2) - 1207242482) ^ ((*(v73 + 4 * v425) ^ 0xE0C58B24) + 523924700);
  LODWORD(STACK[0x2A8]) = ((*(v73 + 4 * v416) ^ 0xBAC6F068) + 1161367448) ^ ((*(v73 + 4 * v416) ^ 0x43E96095) - 1139368085) ^ ((*(v73 + 4 * v416) ^ 0x2A5A7937) - 710572343);
  LODWORD(STACK[0x2BC]) = ((*(v73 + 4 * v406) ^ 0x1B4B385B) - 457914459) ^ ((*(v73 + 4 * v406) ^ 0x952E1F02) + 1792139518) ^ ((*(v73 + 4 * v406) ^ 0x5D10CE93) - 1561382547);
  LODWORD(STACK[0x2C0]) = ((*(v73 + 4 * v400) ^ 0xB91F412C) + 1189134036) ^ ((*(v73 + 4 * v400) ^ 0x84234E09) + 2078061047) ^ ((*(v73 + 4 * v400) ^ 0xEE49E6EF) + 297146641);
  LODWORD(STACK[0x294]) = ((*(v73 + 4 * v399) ^ 0x30DCE573) - 819783027) ^ ((*(v73 + 4 * v399) ^ 0xFA9E6CEA) + 90280726) ^ ((*(v73 + 4 * v399) ^ 0x19376053) - 423059539);
  LODWORD(STACK[0x2B0]) = ((*(v73 + 4 * v401) ^ 0x3A085FDD) - 973627357) ^ ((*(v73 + 4 * v401) ^ 0x22CA80C4) - 583696580) ^ ((*(v73 + 4 * v401) ^ 0xCBB736D3) + 877185325);
  LODWORD(STACK[0x230]) = ((*(v73 + 4 * v402) ^ 0xF0D8206A) + 254271382) ^ ((*(v73 + 4 * v402) ^ 0x2997A18A) - 697803146) ^ ((*(v73 + 4 * v402) ^ 0xA3A682A) - 171599914);
  LODWORD(STACK[0x288]) = ((*(v73 + 4 * v403) ^ 0x74918D25) - 1955695909) ^ ((*(v73 + 4 * v403) ^ 0x9E4715B5) + 1639508555) ^ ((*(v73 + 4 * v403) ^ 0x39A3715A) - 967012698);
  LODWORD(STACK[0x2A4]) = ((*(v73 + 4 * v404) ^ 0x24F9C88D) - 620349581) ^ ((*(v73 + 4 * v404) ^ 0xBD57EAF6) + 1118311690) ^ ((*(v73 + 4 * v404) ^ 0x4ADBCBB1) - 1255918513);
  LODWORD(STACK[0x2AC]) = ((*(v73 + 4 * v405) ^ 0xF9817348) + 108956856) ^ ((*(v73 + 4 * v405) ^ 0xC5115B06) + 988718330) ^ ((*(v73 + 4 * v405) ^ 0xEFE5C184) + 270155388);
  LODWORD(STACK[0x274]) = ((*(v73 + 4 * v407) ^ 0xCA84D6EF) + 897263889) ^ ((*(v73 + 4 * v407) ^ 0xCB77E8A5) + 881334107) ^ ((*(v73 + 4 * v407) ^ 0xD286D780) + 762914944);
  LODWORD(STACK[0x28C]) = ((*(v73 + 4 * v408) ^ 0xCE650C55) + 832238507) ^ ((*(v73 + 4 * v408) ^ 0x487B71E0) - 1216049632) ^ ((*(v73 + 4 * v408) ^ 0x556B947F) - 1433113727);
  LODWORD(STACK[0x298]) = ((*(v73 + 4 * v409) ^ 0x139E0FE1) - 329125857) ^ ((*(v73 + 4 * v409) ^ 0x8CE2B5CD) + 1931299379) ^ ((*(v73 + 4 * v409) ^ 0x4C0953E6) - 1275679718);
  LODWORD(STACK[0x26C]) = ((*(v73 + 4 * v410) ^ 0x99949910) + 1718314736) ^ ((*(v73 + 4 * v410) ^ 0x44635079) - 1147359353) ^ ((*(v73 + 4 * v410) ^ 0xE8220A3) - 243409059);
  LODWORD(STACK[0x278]) = ((*(v73 + 4 * v411) ^ 0x1996620B) - 429285899) ^ ((*(v73 + 4 * v411) ^ 0x930A013A) + 1828060870) ^ ((*(v73 + 4 * v411) ^ 0x59E98AFB) - 1508477691);
  LODWORD(STACK[0x280]) = ((*(v73 + 4 * v412) ^ 0xC7C38CCA) + 943485750) ^ ((*(v73 + 4 * v412) ^ 0x16B83E48) - 381173320) ^ ((*(v73 + 4 * v412) ^ 0x20E5B48) - 34495304);
  v283 = ((*(v73 + 4 * v413) ^ 0x875DF7EE) + 2023884818) ^ ((*(v73 + 4 * v413) ^ 0x9BA6C5C1) + 1683569215) ^ ((*(v73 + 4 * v413) ^ 0xCF8EDBE5) + 812721179);
  v284 = ((*(v73 + 4 * v414) ^ 0x38D4B30F) - 953463567) ^ ((*(v73 + 4 * v414) ^ 0xDDC3BBEC) + 574374932) ^ ((*(v73 + 4 * v414) ^ 0x3662E129) - 912449833);
  LODWORD(STACK[0x3C8]) = ((((*(v73 + 4 * v415) ^ 0xF9C44418) + 104578024) ^ ((*(v73 + 4 * v415) ^ 0x67ECC3CC) - 1743569868) ^ ((*(v73 + 4 * v415) ^ 0x4D5D6E1E) - 1297968670)) + 1647179943) ^ (v284 - ((2 * (v284 + 1756723189)) & 0x58DBD588) + 354640569) ^ (2 * (v284 + 1756723189) * (v284 + 1756723189)) ^ 0xAC6DEAC4;
  v285 = *(v73 + 4 * LODWORD(STACK[0x3C0]));
  LODWORD(STACK[0x3C0]) = v285 ^ 0xF0F8EDBD ^ (v285 >> 3) & 0x5D145E6;
  v286 = ((*(v73 + 4 * v417) ^ 0x5F324459) - 1597129817) ^ ((*(v73 + 4 * v417) ^ 0x358F5BDF) - 898587615) ^ ((*(v73 + 4 * v417) ^ 0xB9C8F64C) + 1178012084);
  LODWORD(STACK[0x268]) = ((*(v73 + 4 * v418) ^ 0x17E79C8F) - 401054863) ^ ((*(v73 + 4 * v418) ^ 0xA0044658) + 1610332584) ^ ((*(v73 + 4 * v418) ^ 0x6496331D) - 1687565085);
  v287 = ((*(v73 + 4 * v419) ^ 0x95729384) + 1787653244) ^ ((*(v73 + 4 * v419) ^ 0xBED6A96) - 200108694) ^ ((*(v73 + 4 * v419) ^ 0x4DEA10D8) - 1307185368);
  v288 = ((*(v73 + 4 * v420) ^ 0x870CDFAA) + 2029199446) ^ ((*(v73 + 4 * v420) ^ 0x63107AF8) - 1662024440) ^ ((*(v73 + 4 * v420) ^ 0x37694C98) - 929647768);
  LODWORD(STACK[0x260]) = ((*(v73 + 4 * v421) ^ 0xBF6CF53E) + 1083378370) ^ ((*(v73 + 4 * v421) ^ 0x7D377D86) - 2100788614) ^ ((*(v73 + 4 * v421) ^ 0x112E6172) - 288252274);
  v289 = ((*(v73 + 4 * v422) ^ 0xB5B740A5) + 1246281563) ^ ((*(v73 + 4 * v422) ^ 0x7A1E70A6) - 2048815270) ^ ((*(v73 + 4 * v422) ^ 0x1CDCD9C9) - 484235721);
  LODWORD(STACK[0x22C]) = ((*(v73 + 4 * v423) ^ 0xAE4F0A9A) + 1370551654) ^ ((*(v73 + 4 * v423) ^ 0xC5EA8691) + 974485871) ^ ((*(v73 + 4 * v423) ^ 0xB8D065C1) + 1194302015);
  v290 = ((*(v73 + 4 * v424) ^ 0xCFA94533) + 810990285) ^ ((*(v73 + 4 * v424) ^ 0x7DA70437) - 2108097591) ^ ((*(v73 + 4 * v424) ^ 0x617BA8CE) - 1635494094);
  LODWORD(STACK[0x228]) = ((*(v73 + 4 * v200) ^ 0xF9A3BECE) + 106709298) ^ ((*(v73 + 4 * v200) ^ 0x2E261043) - 774246467) ^ ((*(v73 + 4 * v200) ^ 0x4F04747) - 82855751);
  v291 = ((*(v73 + 4 * v426) ^ 0x5391E417) - 1402070039) ^ ((*(v73 + 4 * v426) ^ 0x490D73EA) - 1225618410) ^ ((*(v73 + 4 * v426) ^ 0xC9E97E37) + 907444681);
  LODWORD(STACK[0x220]) = ((*(v73 + 4 * v427) ^ 0xD3ECED60) + 739447456) ^ ((*(v73 + 4 * v427) ^ 0x8AA91842) + 1968629694) ^ ((*(v73 + 4 * v427) ^ 0x8A301CE8) + 1976558360);
  v292 = *(v73 + 4 * v201);
  v293 = ((*(v73 + 4 * v428) ^ 0x3C765D89) - 1014390153) ^ ((*(v73 + 4 * v428) ^ 0x5F2E5BE5) - 1596873701) ^ ((*(v73 + 4 * v428) ^ 0xB02DEFA6) + 1339166810);
  LODWORD(STACK[0x21C]) = ((v292 ^ 0x9F004BE0) + 1627370528) ^ ((v292 ^ 0xD0B0D387) + 793717881) ^ ((v292 ^ 0x9CC571AD) + 1664781907);
  v294 = ((*(v73 + 4 * v430) ^ 0x41EB18CD) - 1105926349) ^ ((*(v73 + 4 * v430) ^ 0x84C287DD) + 2067626019) ^ ((*(v73 + 4 * v430) ^ 0x165C76DA) - 375158490);
  LODWORD(STACK[0x2A0]) = ((2 * *(v73 + 4 * v432)) & 0x1D701DBA ^ 0x4601190) + (*(v73 + 4 * v432) ^ 0x5DCDE717);
  v295 = ((*(v73 + 4 * v202) ^ 0xA58951FB) + 1517727237) ^ ((*(v73 + 4 * v202) ^ 0xDC41EE55) + 599658923) ^ ((*(v73 + 4 * v202) ^ 0xAABD5664) + 1430432156);
  v296 = ((*(v73 + 4 * v434) ^ 0xCEBB57CA) + 826583094) ^ ((*(v73 + 4 * v434) ^ 0xD0D6CAA8) + 791229784) ^ ((*(v73 + 4 * v434) ^ 0xCD1874A8) + 854035288);
  LODWORD(STACK[0x218]) = ((*(v73 + 4 * v436) ^ 0xEE2B47A9) + 299153495) ^ ((*(v73 + 4 * v436) ^ 0x2CCF1286) - 751768198) ^ ((*(v73 + 4 * v436) ^ 0x1191BCE5) - 294763749);
  v297 = ((*(v73 + 4 * v438) ^ 0xC67BCC5D) + 964965283) ^ ((*(v73 + 4 * v438) ^ 0xC473F55D) + 999033507) ^ ((*(v73 + 4 * v438) ^ 0xD17DD0CA) + 780283702);
  v298 = *(v73 + 4 * LODWORD(STACK[0x3D8]));
  LODWORD(STACK[0x264]) = -910069761 * LODWORD(STACK[0x30C]) - 1642301898;
  LODWORD(STACK[0x27C]) = -910069761 * LODWORD(STACK[0x300]) - 1642301898;
  LODWORD(STACK[0x30C]) = -910069761 * LODWORD(STACK[0x2F4]) - 1642301898;
  LODWORD(STACK[0x25C]) = -910069761 * LODWORD(STACK[0x2B4]) - 1642301898;
  LODWORD(STACK[0x258]) = -910069761 * LODWORD(STACK[0x2A8]) - 1642301898;
  LODWORD(STACK[0x250]) = -910069761 * LODWORD(STACK[0x294]) - 1642301898;
  LODWORD(STACK[0x2A8]) = -910069761 * LODWORD(STACK[0x274]) - 1642301898;
  LODWORD(STACK[0x294]) = -910069761 * LODWORD(STACK[0x26C]) - 1642301898;
  LODWORD(STACK[0x274]) = -910069761 * v283 - 1642301898;
  LODWORD(STACK[0x26C]) = -910069761 * v287 - 1642301898;
  LODWORD(STACK[0x300]) = -910069761 * v295 - 1642301898;
  LODWORD(STACK[0x2F4]) = -910069761 * v297 - 1642301898;
  LODWORD(STACK[0x2B4]) = -910069761 * (((v298 ^ 0x10656FF1) - 275083249) ^ ((v298 ^ 0x7D74053A) - 2104755514) ^ ((v298 ^ 0xBE648301) + 1100709119)) - 1642301898;
  LODWORD(STACK[0x214]) = -910069761 * LODWORD(STACK[0x3F0]);
  LODWORD(STACK[0x210]) = -910069761 * LODWORD(STACK[0x3E4]);
  LODWORD(STACK[0x2E4]) *= -910069761;
  LODWORD(STACK[0x2D4]) *= -910069761;
  LODWORD(STACK[0x2C4]) *= -910069761;
  LODWORD(STACK[0x288]) *= -910069761;
  v299 = *(v73 + 4 * LODWORD(STACK[0x3B8]));
  v300 = ((v299 ^ 0x1B750946) - 460654918) ^ ((v299 ^ 0xB08EDDB) - 185134555) ^ ((v299 ^ 0xC3080D57) + 1022882473);
  v301 = *(v73 + 4 * LODWORD(STACK[0x3D4]));
  v302 = ((v301 ^ 0xFF0B0792) + 16054382) ^ ((v301 ^ 0x7E31B4B5) - 2117186741) ^ ((v301 ^ 0x524F5AED) - 1380932333);
  v303 = *(v73 + 4 * *(v5 - 236));
  v304 = ((v303 ^ 0x5042FB97) - 1346567063) ^ ((v303 ^ 0xA2C87F63) + 1563918493) ^ ((v303 ^ 0x21FF6D3E) - 570387774);
  LODWORD(STACK[0x3D4]) = v237 + 1756723189;
  LODWORD(STACK[0x3B8]) = LODWORD(STACK[0x3F4]) + 1756723189;
  v305 = LODWORD(STACK[0x3E8]) + 1756723189;
  LODWORD(STACK[0x3D8]) = LODWORD(STACK[0x3DC]) + 1756723189;
  LODWORD(STACK[0x304]) += 1756723189;
  LODWORD(STACK[0x3DC]) = LODWORD(STACK[0x2FC]) + 1756723189;
  LODWORD(STACK[0x3E0]) = *(v5 - 248) + 1756723189;
  LODWORD(STACK[0x3E4]) = *(v5 - 256) + 1756723189;
  LODWORD(STACK[0x3E8]) = LODWORD(STACK[0x3F8]) + 1756723189;
  LODWORD(STACK[0x3EC]) = LODWORD(STACK[0x2E8]) + 1756723189;
  v306 = LODWORD(STACK[0x2D8]) + 1756723189;
  v307 = LODWORD(STACK[0x2C8]) + 1756723189;
  v308 = LODWORD(STACK[0x2BC]) + 1756723189;
  LODWORD(STACK[0x3F0]) = LODWORD(STACK[0x2B0]) + 1756723189;
  v309 = LODWORD(STACK[0x2A4]) + 1756723189;
  v310 = LODWORD(STACK[0x28C]) + 1756723189;
  v311 = LODWORD(STACK[0x278]) + 1756723189;
  v312 = v286 + 1756723189;
  LODWORD(STACK[0x3B0]) = v288 + 1756723189;
  LODWORD(STACK[0x3F4]) = v289 + 1756723189;
  LODWORD(STACK[0x3F8]) = v290 + 1756723189;
  *(v5 - 256) = v291 + 1756723189;
  *(v5 - 248) = v293 + 1756723189;
  LODWORD(STACK[0x2FC]) = v294 + 1756723189;
  *(v5 - 236) = v296 + 1756723189;
  v313 = v300 + 1756723189;
  v314 = v304 + 1756723189;
  v315 = ((*(v73 + 4 * v452) ^ 0x7B3EA1B9) - 2067702201) ^ ((*(v73 + 4 * v452) ^ 0x3B4DF1B4) - 994963892) ^ ((*(v73 + 4 * v452) ^ 0x9306B9C7) + 1828275769);
  LODWORD(STACK[0x28C]) = LODWORD(STACK[0x318]) + 1647179943;
  LODWORD(STACK[0x2F0]) = LODWORD(STACK[0x314]) + 1647179943;
  LODWORD(STACK[0x2F8]) = LODWORD(STACK[0x310]) + 1647179943;
  LODWORD(STACK[0x318]) = LODWORD(STACK[0x308]) + 1647179943;
  v316 = LODWORD(STACK[0x2E0]) + 1647179943;
  v317 = LODWORD(STACK[0x2CC]) + 1647179943;
  v318 = LODWORD(STACK[0x2C0]) + 1647179943;
  LODWORD(STACK[0x308]) = LODWORD(STACK[0x2AC]) + 1647179943;
  LODWORD(STACK[0x2EC]) = LODWORD(STACK[0x298]) + 1647179943;
  v319 = LODWORD(STACK[0x280]) + 1647179943;
  v320 = LODWORD(STACK[0x268]) + 1647179943;
  LODWORD(STACK[0x280]) = LODWORD(STACK[0x260]) + 1647179943;
  LODWORD(STACK[0x314]) = v302 + 1647179943;
  LODWORD(STACK[0x310]) = v315 + 1647179943;
  v321 = *(v73 + 4 * v464) ^ LODWORD(STACK[0x36C]) ^ *(v73 + 4 * (8717 * v392 + 8926208 - 10816 * (((3176751 * (8717 * v392 + 8926208)) >> 32) >> 3))) ^ ((((*(v73 + 4 * v454) ^ 0x119C14D4) - 295441620) ^ ((*(v73 + 4 * v454) ^ 0x215706D6) - 559351510) ^ ((*(v73 + 4 * v454) ^ 0xE3BEFBC8) + 474022968)) + 1572357477);
  v322 = STACK[0x3A8];
  v323 = *(STACK[0x3A8] + v440);
  v324 = v323 & 0x1A ^ ((v323 >> 6) | (4 * v323));
  LODWORD(STACK[0x2E8]) = v324 & 0x5F;
  LODWORD(STACK[0x2E0]) = v324 & 0xA0 ^ v321 & 0x8D8F87A0 ^ 0x76FE78FF;
  LODWORD(STACK[0x2D8]) = ((*(v73 + 4 * v461) ^ 0x8281B5E) - 136846174) ^ ((*(v73 + 4 * v461) ^ 0x89B0D554) + 1984899756) ^ ((*(v73 + 4 * v461) ^ 0x52ED27C0) - 1391273920);
  LOBYTE(v304) = *(v322 + v442) & 0x1A ^ ((*(v322 + v442) >> 6) | (4 * *(v322 + v442)));
  LOBYTE(v288) = *(v322 + v444) & 0x1A ^ ((*(v322 + v444) >> 6) | (4 * *(v322 + v444)));
  v325 = (((*(v73 + 4 * v458) ^ 0x2484CFEE) - 612683758) ^ ((*(v73 + 4 * v458) ^ 0xAD3FBDD8) + 1388331560) ^ ((*(v73 + 4 * v458) ^ 0x5ACE9BFC) - 1523489788)) + 1572357477;
  v326 = (((*(v73 + 4 * v467) ^ 0x777A14C) - 125280588) ^ ((*(v73 + 4 * v467) ^ 0xB8704867) + 1200600985) ^ ((*(v73 + 4 * v467) ^ 0x6C7200E1) - 1819410657)) + 1572357477;
  v327 = (((*(v73 + 4 * v469) ^ 0xD53E35DA) + 717343270) ^ ((*(v73 + 4 * v469) ^ 0x6E4B2A0E) - 1850419726) ^ ((*(v73 + 4 * v469) ^ 0x6800F61E) - 1744893470)) + 1572357477;
  LOBYTE(v315) = *(v322 + v446) & 0x1A ^ ((*(v322 + v446) >> 6) | (4 * *(v322 + v446)));
  LODWORD(STACK[0x2C8]) = ((*(v73 + 4 * v474) ^ 0x6577AB29) - 1702341417) ^ ((*(v73 + 4 * v474) ^ 0xE4E36C05) + 454857723) ^ ((*(v73 + 4 * v474) ^ 0x52E12EE6) - 1390489318);
  v328 = *(v73 + 4 * v472);
  LODWORD(STACK[0x2C0]) = ((*(v73 + 4 * v476) ^ 0x772D6C38) - 1999465528) ^ ((*(v73 + 4 * v476) ^ 0xD31E276F) + 752998545) ^ ((*(v73 + 4 * v476) ^ 0x7746A29D) - 2001117853);
  v329 = *(v5 - 200);
  LODWORD(STACK[0x2BC]) = ((v328 ^ 0x5A51DFCA) - 1515315146) ^ ((v328 ^ 0xB1EED9E8) + 1309746712) ^ ((v328 ^ 0x38CAEFE8) - 952823784);
  v330 = *(v322 + v455);
  LODWORD(STACK[0x268]) = (v330 >> 6) | (4 * v330);
  LODWORD(STACK[0x260]) = v330 & 0x1A;
  LODWORD(STACK[0x2CC]) = *(v322 + v449) & 0x1A ^ ((*(v322 + v449) >> 6) | (4 * *(v322 + v449)));
  v331 = *(v73 + 4 * LODWORD(STACK[0x200]));
  v332 = (LODWORD(STACK[0x38C]) ^ 0xC711272E) + (LODWORD(STACK[0x384]) ^ 0x93945408) + (LODWORD(STACK[0x388]) ^ 0x4C11152E) + ((v331 >> 3) & 0x5D145E6 ^ v331 ^ v308 ^ v318 ^ (2 * v308 * v308) ^ LODWORD(STACK[0x250]) ^ 0x67D20338) - 1467443334;
  v333 = LODWORD(STACK[0x368]) ^ *(v73 + 4 * v481) ^ *(v73 + 4 * v479) ^ v288 ^ v326 ^ 0x14E9B96F;
  v334 = *(v73 + 4 * LODWORD(STACK[0x31C]));
  v480 = (v334 >> 3) & 0x5D145E6 ^ v334 ^ v307 ^ v317 ^ (2 * v307 * v307) ^ LODWORD(STACK[0x258]);
  LODWORD(STACK[0x200]) = v333;
  LODWORD(STACK[0x36C]) = v332;
  v335 = v332 - v333 + (v480 ^ 0x1384B0E6) - ((2 * (v332 - v333 + (v480 ^ 0x1384B0E6))) & 0xD651ACB4) + 1797838426;
  LODWORD(STACK[0x2B0]) = v335;
  v336 = *(v73 + 4 * LODWORD(STACK[0x29C]));
  v337 = (LODWORD(STACK[0x398]) ^ 0x38421E04) + ((v336 >> 3) & 0x5D145E6 ^ v336 ^ v306 ^ v316 ^ (2 * v306 * v306) ^ LODWORD(STACK[0x25C]) ^ 0x8DA61C60) + (((v335 ^ 0xB308913C) + 1291284164) ^ ((v335 ^ 0x78DFC8A9) - 2027931817) ^ ((v335 ^ 0xA0FF8FCF) + 1593864241));
  v338 = v337 + 1017905360;
  v339 = v337 + 1167570338;
  v340 = (*(v73 + 4 * v503) >> 3) & 0x5D145E6 ^ *(v73 + 4 * v503) ^ v312 ^ v320 ^ (2 * v312 * v312) ^ LODWORD(STACK[0x26C]);
  v341 = *(v73 + 4 * LODWORD(STACK[0x208]));
  LODWORD(STACK[0x31C]) = (v341 >> 3) & 0x5D145E6 ^ v341 ^ v311 ^ v319 ^ (2 * v311 * v311) ^ LODWORD(STACK[0x274]);
  LODWORD(STACK[0x208]) = v338;
  v342 = (v340 ^ 0x2A41CFC6) + v338;
  LODWORD(STACK[0x2AC]) = v342 + 2061567230;
  v343 = v342 + 583319840;
  v344 = *(v73 + 4 * LODWORD(STACK[0x24C]));
  v346 = LODWORD(STACK[0x390]) ^ 0x1507A580;
  v345 = *(v73 + 4 * (8717 * (v487 ^ 0xA5) + 51395432 - 10816 * (((3176751 * (8717 * (v487 ^ 0xA5) + 51395432)) >> 32) >> 3))) ^ v487 ^ *(v73 + 4 * (8717 * v388 - 10816 * (((3176751 * (8717 * v388)) >> 32) >> 3))) ^ v327 ^ v315;
  LODWORD(STACK[0x278]) = v343;
  v347 = (v345 ^ 0xC2A52CDC) + v346 + v343;
  v348 = (v344 >> 3) & 0x5D145E6 ^ v344 ^ v310 ^ LODWORD(STACK[0x2EC]) ^ (2 * v310 * v310) ^ LODWORD(STACK[0x294]);
  v349 = *(v5 - 208) ^ *(v73 + 4 * v491) ^ *(v73 + 4 * (8717 * v390 + 8926208 - 10816 * (((3176751 * (8717 * v390 + 8926208)) >> 32) >> 3))) ^ v325 ^ 0x47E01880 ^ v304;
  v350 = *(v73 + 4 * LODWORD(STACK[0x34C]));
  v351 = (v350 >> 3) & 0x5D145E6 ^ v350 ^ v305 ^ LODWORD(STACK[0x2F0]) ^ (2 * v305 * v305) ^ LODWORD(STACK[0x264]);
  v352 = *(v73 + 4 * LODWORD(STACK[0x2D0]));
  v353 = (v352 >> 3) & 0x5D145E6 ^ v352 ^ v309 ^ LODWORD(STACK[0x308]) ^ (2 * v309 * v309);
  LODWORD(STACK[0x34C]) = v347;
  v354 = (v348 ^ 0x5A8106C0) + v347;
  v355 = v354 - 1567039067;
  v356 = v354 + 340131771;
  v357 = v353 ^ LODWORD(STACK[0x2A8]);
  v358 = *(v73 + 4 * v493) ^ (*(v73 + 4 * v493) >> 3) & 0x5D145E6 ^ v314 ^ LODWORD(STACK[0x310]) ^ (2 * v314 * v314);
  v359 = (*(v73 + 4 * v498) >> 3) & 0x5D145E6 ^ *(v73 + 4 * v498) ^ v313 ^ LODWORD(STACK[0x314]) ^ (2 * v313 * v313);
  v360 = *(v73 + 4 * LODWORD(STACK[0x204]));
  v361 = (v360 >> 3) & 0x5D145E6 ^ v360 ^ LODWORD(STACK[0x2A0]) ^ LODWORD(STACK[0x2FC]) ^ (2 * LODWORD(STACK[0x2FC]) * LODWORD(STACK[0x2FC]));
  v362 = *(v73 + 4 * LODWORD(STACK[0x338]));
  v363 = (v362 >> 3) & 0x5D145E6 ^ v362 ^ LODWORD(STACK[0x304]) ^ LODWORD(STACK[0x318]) ^ (2 * LODWORD(STACK[0x304]) * LODWORD(STACK[0x304]));
  LODWORD(STACK[0x274]) = v356;
  v364 = v349 + (v351 ^ 0x22982932) + v356;
  LODWORD(STACK[0x250]) = v364;
  v364 += 1536304431;
  v365 = LODWORD(STACK[0x394]) ^ 0x7053BA0D;
  LODWORD(STACK[0x204]) = v364;
  v366 = v364 - v365;
  v367 = (v357 ^ 0xB801FC46) + v366;
  LODWORD(STACK[0x33C]) = v367 + 438878995;
  v368 = v358 ^ LODWORD(STACK[0x2B4]) ^ 0x568718F8;
  LODWORD(STACK[0x368]) = v359 ^ LODWORD(STACK[0x2F4]);
  LODWORD(STACK[0x258]) = v361 ^ LODWORD(STACK[0x300]) ^ 0xB5 ^ v355;
  v369 = v363 ^ LODWORD(STACK[0x30C]);
  *(v5 - 112) = veorq_s8(v266, xmmword_100F52E90);
  *(v5 - 144) = veorq_s8(v267, xmmword_100F52EA0);
  v370 = *(v73 + 4 * LODWORD(STACK[0x2DC]));
  LODWORD(STACK[0x26C]) = (*(v73 + 4 * LODWORD(STACK[0x358])) >> 3) & 0x5D145E6;
  LODWORD(STACK[0x358]) = v370;
  LODWORD(STACK[0x27C]) = (v370 >> 3) & 0x5D145E6;
  v371 = *(v322 + LODWORD(STACK[0x248]));
  LODWORD(STACK[0x30C]) = (v371 >> 6) | (4 * v371);
  LODWORD(STACK[0x318]) = __ROR4__(v367 + 2006628863 + v368, 3) ^ 0xFB24F4CE;
  v372 = *(v73 + 4 * LODWORD(STACK[0x35C]));
  LODWORD(STACK[0x264]) = 2 * LODWORD(STACK[0x3B8]) * LODWORD(STACK[0x3B8]);
  v373 = *(v73 + 4 * LODWORD(STACK[0x350]));
  v374 = *(v73 + 4 * LODWORD(STACK[0x340]));
  v375 = *(v73 + 4 * LODWORD(STACK[0x334]));
  v376 = *(v73 + 4 * LODWORD(STACK[0x330]));
  v377 = *(v73 + 4 * LODWORD(STACK[0x32C]));
  v378 = *(v73 + 4 * LODWORD(STACK[0x328]));
  v379 = *(v73 + 4 * LODWORD(STACK[0x270]));
  v380 = *(v73 + 4 * LODWORD(STACK[0x320]));
  LODWORD(STACK[0x270]) = 2 * LODWORD(STACK[0x3B0]) * LODWORD(STACK[0x3B0]);
  v381 = *(v73 + 4 * *(v5 - 216));
  v382 = *(v73 + 4 * *(v5 - 232));
  v383 = *(v73 + 4 * *(v5 - 224));
  v384 = *(v73 + 4 * LODWORD(STACK[0x2B8]));
  v385 = *(v73 + 4 * LODWORD(STACK[0x290]));
  LODWORD(STACK[0x248]) = *(v73 + 4 * LODWORD(STACK[0x234]));
  LODWORD(STACK[0x234]) = *(v73 + 4 * LODWORD(STACK[0x224]));
  v386 = *(v329 + 8 * STACK[0x360]);
  *(v5 - 160) = veorq_s8(v268, xmmword_100F52EB0);
  LODWORD(STACK[0x2FC]) = LODWORD(STACK[0x324]) * LODWORD(STACK[0x39C]);
  *(v5 - 208) = v321;
  LODWORD(STACK[0x300]) = v321 & 0x4810400;
  LODWORD(STACK[0x304]) = v371 & 0x3F;
  LODWORD(STACK[0x360]) = v339;
  LODWORD(STACK[0x290]) = v339 ^ 0x8EBB4D2;
  LODWORD(STACK[0x24C]) = v369 ^ (v366 + 143) ^ 0xC0;
  LODWORD(STACK[0x35C]) = 2 * LODWORD(STACK[0x3D4]);
  LODWORD(STACK[0x2F8]) = v372 >> 3;
  LODWORD(STACK[0x294]) = v373 >> 3;
  LODWORD(STACK[0x350]) = 2 * LODWORD(STACK[0x3D8]);
  LODWORD(STACK[0x2F4]) = v374 >> 3;
  LODWORD(STACK[0x340]) = 2 * LODWORD(STACK[0x3DC]);
  LODWORD(STACK[0x2F0]) = v375 >> 3;
  LODWORD(STACK[0x338]) = 2 * LODWORD(STACK[0x3E0]);
  LODWORD(STACK[0x2EC]) = v376 >> 3;
  LODWORD(STACK[0x334]) = 2 * LODWORD(STACK[0x3E4]);
  LODWORD(STACK[0x2DC]) = v377 >> 3;
  LODWORD(STACK[0x330]) = 2 * LODWORD(STACK[0x3E8]);
  LODWORD(STACK[0x2D0]) = v378 >> 3;
  LODWORD(STACK[0x32C]) = 2 * LODWORD(STACK[0x3EC]);
  LODWORD(STACK[0x2B8]) = v379 >> 3;
  LODWORD(STACK[0x328]) = 2 * LODWORD(STACK[0x3F0]);
  LODWORD(STACK[0x2B4]) = v380 >> 3;
  LODWORD(STACK[0x25C]) = STACK[0x3C8] & LODWORD(STACK[0x3C0]);
  LODWORD(STACK[0x324]) = 2 * LODWORD(STACK[0x3F4]);
  LODWORD(STACK[0x2A8]) = v381 >> 3;
  LODWORD(STACK[0x320]) = 2 * LODWORD(STACK[0x3F8]);
  LODWORD(STACK[0x2A4]) = v382 >> 3;
  LODWORD(STACK[0x314]) = 2 * *(v5 - 256);
  LODWORD(STACK[0x2A0]) = v383 >> 3;
  LODWORD(STACK[0x310]) = 2 * *(v5 - 248);
  LODWORD(STACK[0x29C]) = v384 >> 3;
  LODWORD(STACK[0x308]) = 2 * *(v5 - 236);
  LODWORD(STACK[0x224]) = v385;
  LODWORD(STACK[0x298]) = v385 >> 3;
  return v386(3639418438);
}

uint64_t sub_10088D9AC(unint64_t a1)
{
  *a1 = v3;
  *(a1 + 8) = v4 - (((v2 ^ 0x62605E20) + 1900723664) & (2 * v4)) + v5;
  *(a1 + 12) = v1;
  *(a1 + 16) = 0xA52FF064E9D5C711;
  *(a1 + 24) = v5;
  STACK[0xEF0] = a1;
  return (*(v6 + 8 * ((145 * (LODWORD(STACK[0x2514]) < 2)) ^ v2)))();
}

uint64_t sub_10088DB64@<X0>(uint64_t *a1@<X8>)
{
  v4 = *a1;
  STACK[0x528] = *(v3 + 8 * v2);
  return (*(v3 + 8 * (((v4 != 0) * (v1 ^ 0x7898)) ^ v1)))();
}

uint64_t sub_10088DC88()
{
  LODWORD(STACK[0x1F70]) = v4;
  STACK[0xF20] = v0;
  STACK[0x1D20] = v2;
  STACK[0xE70] = v3;
  return (*(v5 + 8 * (((((v1 + 28796) ^ (v0 == 0)) & 1) == 0) ^ v1)))();
}

uint64_t sub_10088DD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x1CB0];
  *(v8 + 8) = 0;
  *(v8 + 4) = 0;
  return (*(v7 + 58288))(a1, a2, a3, a4, a5, 1864610357, a7, STACK[0x800]);
}

uint64_t sub_10088DD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W6>, char a7@<W8>)
{
  v9 = -15 * a7 + (LOBYTE(STACK[0x1747]) - 21) * (a7 - 69) + 18;
  v10 = v9 & ((v7 ^ 0x71) + 85) ^ 0xF7;
  v11 = v9 ^ 0x78;
  v12 = v9 ^ (2 * (v11 & (2 * (v11 & (2 * (v11 & (2 * (v11 & (2 * (v11 & (2 * (((v7 + 79) & (2 * v9) ^ a6) & v11 ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ 0xF8;
  v13 = LODWORD(STACK[0x1178]);
  *(STACK[0x14B0] + v13) = v12;
  LODWORD(v13) = v13 + 1;
  LODWORD(STACK[0x1178]) = v13;
  return (*(v8 + 8 * ((29364 * (v13 < 0x10)) ^ v7)))(a1, a2, a3, a4, a5, 1864610357);
}

uint64_t sub_10088DE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0xA98] = *v8;
  LODWORD(STACK[0x858]) = v9;
  *v8 = 0;
  *(v8 + 8) = 0xE9D5C711E9D5C711;
  v12 = *(v8 + 24);
  v13 = *(v8 + 20) & 0xFFFFFFFE;
  *(v8 + 16) = -371865839;
  *(v8 + 20) = v13;
  return (*(v10 + 8 * (((v12 == -371865839) * ((((v7 + 1860966541) & 0xF373FC5E) - 564475163) ^ 0x40BBE014)) ^ v7)))(a1, a2, a3, a4, STACK[0x808], 1864610357, a7, v11);
}

uint64_t sub_10088DF40()
{
  v4 = 297845113 * ((((2 * (v3 - 160)) | 0x76E70EEE) - (v3 - 160) - 997427063) ^ 0x4C409BE9);
  v5 = ((((*v2 ^ 0x9DC1D2E3) + 1648241949) ^ (v1 + 4039 + (*v2 ^ 0x509727DE) - 1352104711) ^ ((v1 ^ 0x7DC0 ^ *v2 ^ 0x24830C8E) - 612577836)) + 512106342) ^ v4;
  *(v3 - 156) = (v1 + 22274) ^ v4;
  *(v3 - 152) = v5;
  v6 = (*(v0 + 8 * (v1 + 34930)))(v3 - 160);
  return (*(v0 + 8 * ((21 * (*(v3 - 160) == 4)) ^ v1)))(v6);
}

uint64_t sub_10088E078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X7>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v33 = ((a2 - 279620505) | (((a2 - 279620505) < 0x46CF8F38) << 32)) + a1;
  v34 = __ROR8__((v33 - 1188007736) & 0xFFFFFFFFFFFFFFF8, 8);
  v35 = (v34 - 0x2E6D7CC1A1D69CC4) ^ 0x12159011EED07D4ELL;
  v36 = __ROR8__((v34 - 0x2E6D7CC1A1D69CC4) ^ 0x9E8189E31F9B64A8, 8);
  v37 = (((2 * (v36 + v35)) & 0xA1AA17B749BF1D20) - (v36 + v35) + 0x2F2AF4245B20716FLL) ^ 0x8A0760DE39C44B2;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ a3;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ a4;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ v31;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0x2C3F70FBF6F9ADA3;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x1B5DE9094BAFA51ALL;
  return (*(v32 + 8 * ((a5 + 1303535710) ^ 0x4DB2A6D2 ^ (15389 * ((a5 + 1303535710) < 0x7C9B5D4A)))))(a1, v33 - 1188007736, a2, 0xAF8139409A82D961, 0xFD0A19BB2FE13205, 0xA958557FD3FC79DDLL, (((__ROR8__(v47, 8) + (v47 ^ __ROR8__(v46, 61))) ^ 0xC437C7327FD12F34) >> (8 * ((a2 + 103 + a1 - 56) & 7))) ^ 0x50, v33 - 1188007735, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

uint64_t sub_10088E4FC(void *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v118 = (**a1 ^ 0x3FF3DFED) - 97517572 + ((2 * **a1) & 0x7FE7BFDA);
  v119 = (v2[1] ^ 0x3FF3DFED) - 97517572 + ((2 * v2[1]) & 0x7FE7BFDA);
  v120 = (v2[2] ^ 0x3FF3DFED) - 97517572 + ((2 * v2[2]) & 0x7FE7BFDA);
  v121 = (v2[3] ^ 0x3FF3DFED) - 97517572 + ((2 * v2[3]) & 0x7FE7BFDA);
  v122 = (v2[4] ^ 0x3FF3DFED) - 97517572 + ((2 * v2[4]) & 0x7FE7BFDA);
  v123 = (v2[5] ^ 0x3FF3DFED) - 97517572 + ((2 * v2[5]) & 0x7FE7BFDA);
  v124 = (v2[6] ^ 0x3FF3DFED) - 97517572 + ((2 * v2[6]) & 0x7FE7BFDA);
  v125 = (v2[7] ^ 0x3FF3DFED) - 97517572 + ((2 * v2[7]) & 0x7FE7BFDA);
  v126 = (v2[8] ^ 0x3FF3DFED) - 97517572 + ((2 * v2[8]) & 0x7FE7BFDA);
  v127 = (v2[9] ^ 0x3FF3DFED) - 97517572 + ((2 * v2[9]) & 0x7FE7BFDA);
  v128 = (v2[10] ^ 0x3FF3DFED) - 97517572 + ((2 * v2[10]) & 0x7FE7BFDA);
  v129 = (v2[11] ^ 0x3FF3DFED) - 97517572 + ((2 * v2[11]) & 0x7FE7BFDA);
  v130 = (v2[12] ^ 0x3FF3DFED) - 97517572 + ((2 * v2[12]) & 0x7FE7BFDA);
  v131 = (v2[13] ^ 0x3FF3DFED) - 97517572 + ((2 * v2[13]) & 0x7FE7BFDA);
  v132 = (v2[14] ^ 0x3FF3DFED) - 97517572 + ((2 * v2[14]) & 0x7FE7BFDA);
  v133 = (v2[15] ^ 0x3FF3DFED) - 97517572 + ((2 * v2[15]) & 0x7FE7BFDA);
  LOBYTE(v2) = *v1;
  v3 = *v1 & 0x7E ^ 0x62;
  LOBYTE(v2) = v2 ^ (2 * ((v2 ^ 0x38) & (2 * ((v2 ^ 0x38) & (2 * ((v2 ^ 0x38) & (2 * ((v2 ^ 0x38) & (2 * ((v2 ^ 0x38) & (2 * v3) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3));
  v4 = v1[1];
  v5 = v4 & 0xD8 ^ 0x13;
  v6 = v1[2];
  v7 = v6 & 0xFA ^ 0x20;
  v8 = (v6 ^ (2 * ((v6 ^ 0x38) & (2 * ((v6 ^ 0x38) & (2 * ((v6 ^ 0x38) & (2 * ((v6 ^ 0x38) & (2 * ((v6 ^ 0x38) & (2 * v7) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7))) << 16;
  LODWORD(v2) = (((((v4 ^ (2 * ((v4 ^ 0x3A) & (2 * ((v4 ^ 0x3A) & (2 * ((v4 ^ 0x3A) & (2 * ((v4 ^ 0x3A) & (2 * (((2 * (v5 ^ v4 & 0x62)) ^ 0x44) & (v4 ^ 0x3A) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5))) << 8) ^ 0x70B62214) & (v2 ^ 0x72F6FF8B) | v2 & 0xEB) ^ 0x3856E0F6) & (v8 ^ 0xFE05FFFF);
  v9 = v1[3];
  v10 = v9 & 0x38 | 0xFFFFFFC3;
  v11 = (((v9 ^ 0x3A) & (2 * ((v9 ^ 0x3A) & (2 * ((v9 ^ 0x3A) & (2 * ((v9 ^ 0x3A) & (2 * (((2 * (v10 ^ v9 & 2)) ^ 4) & (v9 ^ 0x3A) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10) << 25) ^ (v9 << 24);
  v12 = (v8 & 0x1F0000 ^ 0x452D52C3 ^ v2) & (v11 ^ 0xC7FFFFFF) ^ v11 & 0xF2000000;
  LOBYTE(v2) = v1[4];
  LOBYTE(v8) = v2 & 0x66 ^ 0xF6;
  LOBYTE(v2) = v2 ^ (2 * ((v2 ^ 0x38) & (2 * ((v2 ^ 0x38) & (2 * ((v2 ^ 0x38) & (2 * ((v2 ^ 0x38) & (2 * ((v2 ^ 0x38) & (2 * v8) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8));
  LOBYTE(v10) = v1[5];
  v13 = v10 & 4 ^ 0x65;
  LODWORD(v2) = (((v10 ^ (2 * ((v10 ^ 0x3A) & (2 * ((v10 ^ 0x3A) & (2 * ((v10 ^ 0x3A) & (2 * ((v10 ^ 0x3A) & (2 * ((v10 ^ 0x3A) & (2 * ((v10 ^ 0x3A) & 0x3E ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13))) << 8) ^ 0x12C7FEF6) & (v2 ^ 0x5ACFFF98) | v2 & 9;
  LOBYTE(v8) = v1[6];
  LOBYTE(v10) = v8 & 4 ^ 0x65;
  v14 = (v8 ^ (2 * ((v8 ^ 0x3A) & (2 * ((v8 ^ 0x3A) & (2 * ((v8 ^ 0x3A) & (2 * ((v8 ^ 0x3A) & (2 * ((v8 ^ 0x3A) & (2 * ((v8 ^ 0x3A) & 0x3E ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10))) << 16;
  v15 = v1[7];
  v16 = v15 & 0xFFFFFF9E ^ 0x32;
  v17 = (v15 ^ (2 * ((v15 ^ 0x38) & (2 * ((v15 ^ 0x38) & (2 * ((v15 ^ 0x38) & (2 * ((v15 ^ 0x38) & (2 * ((v15 ^ 0x38) & (2 * v16) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ 0x28) << 24;
  v18 = (v14 & 0xC40000 ^ 0x3FB8750A ^ (v2 ^ 0x68FCD577) & (v14 ^ 0x7BFBFFFF)) & (v17 ^ 0x49FFFFFF) ^ v17 & 0xBA000000;
  v19 = v1[8];
  v20 = v19 & 0x2C ^ 0x59;
  v21 = v19 ^ (2 * ((v19 ^ 0x3A) & (2 * ((v19 ^ 0x3A) & (2 * ((v19 ^ 0x3A) & (2 * ((v19 ^ 0x3A) & (2 * (((2 * (v20 ^ v19 & 0x16)) ^ 0x24) & (v19 ^ 0x3A) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20));
  v22 = v1[9];
  v23 = v22 & 0xA6 ^ 0x16;
  v24 = (((v22 ^ (2 * ((v22 ^ 0x38) & (2 * ((v22 ^ 0x38) & (2 * ((v22 ^ 0x38) & (2 * ((v22 ^ 0x38) & (2 * ((v22 ^ 0x38) & (2 * v23) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23))) << 8) ^ 0x2E8F47D6) & (v21 ^ 0xBFAFFFFA) | v21 & 0x29;
  v25 = v1[10];
  v26 = v25 & 0x36 ^ 0x4E;
  v27 = (v25 ^ (2 * ((v25 ^ 0x38) & (2 * ((v25 ^ 0x38) & (2 * ((v25 ^ 0x38) & (2 * ((v25 ^ 0x38) & (2 * ((v25 ^ 0x38) & (2 * v26) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26))) << 16;
  v28 = v1[11];
  v29 = v28 & 0xFFFFFF86 ^ 0xFFFFFFA6;
  v30 = (((v28 ^ 0x38) & (2 * ((v28 ^ 0x38) & (2 * ((v28 ^ 0x38) & (2 * ((v28 ^ 0x38) & (2 * ((v28 ^ 0x38) & (2 * v29) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29) << 25) ^ (v28 << 24);
  v31 = (v27 & 0x780000 ^ 0x4ED7A78B ^ (v24 ^ 0xA10884D6) & (v27 ^ 0xBF89FFFF)) & (v30 ^ 0x79FFFFFF) ^ v30 & 0x3E000000;
  LOBYTE(v24) = v1[12];
  LOBYTE(v29) = v24 & 4 ^ 0xE5;
  LOBYTE(v24) = v24 ^ (2 * ((v24 ^ 0x3A) & (2 * ((v24 ^ 0x3A) & (2 * ((v24 ^ 0x3A) & (2 * ((v24 ^ 0x3A) & (2 * ((v24 ^ 0x3A) & (2 * ((v24 ^ 0x3A) & 0x3E ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29));
  v32 = v1[13];
  v33 = v32 & 0x78 ^ 0xE3;
  v34 = (((v32 ^ (2 * ((v32 ^ 0x3A) & (2 * ((v32 ^ 0x3A) & (2 * ((v32 ^ 0x3A) & (2 * ((v32 ^ 0x3A) & (2 * (((2 * (v33 ^ v32 & 0x42)) ^ 4) & (v32 ^ 0x3A) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33))) << 8) ^ 0x26CB6F20) & (v24 ^ 0x7FFBFFF4) | v24 & 0xDF;
  LOBYTE(v24) = v1[14];
  LOBYTE(v29) = v24 & 0x1E ^ 0xF2;
  v35 = (v24 ^ (2 * ((v24 ^ 0x38) & (2 * ((v24 ^ 0x38) & (2 * ((v24 ^ 0x38) & (2 * ((v24 ^ 0x38) & (2 * ((v24 ^ 0x38) & (2 * v29) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29))) << 16;
  v36 = v35 & 0xF80000 ^ v12 ^ v18 ^ 0x1CAC878C ^ (v34 ^ 0x42CC8B36) & (v35 ^ 0x7FE1FFFF);
  v37 = v36 ^ 0x1B99C837 ^ v31 ^ 0x4F5E3E93;
  v38 = (v36 ^ 0x1B99C837) & 0xF26854A0 ^ (v36 ^ 0xB2E3095E) & (v18 ^ 0x5EF0E2B) ^ v37;
  v39 = ((v12 ^ 0x5E6A6049) - 1173596286) ^ ((v12 ^ 0xD5632BAE) + 822418535) ^ ((v12 ^ 0xB6DE03AC) + 1387803749);
  v40 = v118;
  HIDWORD(v41) = v118 + v39 + 579789069 + (((v38 ^ 0xFBE41C6A) - 1428954745) ^ ((v38 ^ 0x8C6705B4) - 581896103) ^ ((v38 ^ 0xF6AF64A7) - 1483171508));
  LODWORD(v41) = HIDWORD(v41);
  v42 = (((v18 ^ 0x47598F28) - 1542785188) ^ ((v18 ^ 0xB25FF275) + 1359776263) ^ ((v18 ^ 0x28127D6) - 506306650)) + ((v41 >> 25) ^ 0x3DFFB7E1) + ((2 * (v41 >> 25)) & 0x7BFF6FC2) - 1389615834;
  v43 = (v18 ^ 0x7FB9A6BB) & v42 | (v31 ^ 0x4F5E3E93) & ~v42;
  HIDWORD(v41) = v119 + (((v37 ^ 0xA645E8DC) - 763846855) ^ ((v37 ^ 0x2C378455) + 1477112754) ^ ((v37 ^ 0xAB3651D0) - 552917451)) + 309016291 + (((v43 ^ 0xFCD28A56) - 2044478002) ^ ((v43 ^ 0x235517D2) + 1503928394) ^ ((v43 ^ 0x57B961B4) + 759715376));
  LODWORD(v41) = HIDWORD(v41);
  v44 = (v41 >> 20) + v42;
  v45 = v44 & (v18 ^ 0xF7875A8B ^ v42) ^ v18 ^ 0x1CAC878C;
  HIDWORD(v41) = v120 + (((v31 ^ 0xC5F6F982) + 1968650479) ^ ((v31 ^ 0x476EE229) - 137419962) ^ ((v31 ^ 0x45F8D908) - 178710427)) + 1780648451 + (((v45 ^ 0x8DE381A1) - 1102933856) ^ ((v45 ^ 0xF48D7B0D) - 953390540) ^ ((v45 ^ 0x924527AB) - 1578879338));
  LODWORD(v41) = HIDWORD(v41);
  v46 = (v41 >> 15) + v44;
  HIDWORD(v41) = v121 + (((v18 ^ 0x54FBF3C2) - 1213690958) ^ ((v18 ^ 0x969E53A6) + 1976380374) ^ ((v18 ^ 0x35E2FAEF) - 693009763)) + 430594777 + ((((v44 & v46 | v42 & ~v46) ^ 0xBE2BBE45) - 1832632849) ^ (((v44 & v46 | v42 & ~v46) ^ 0x19205577) + 902813405) ^ (((v44 & v46 | v42 & ~v46) ^ 0xA70BEB32) - 1947965286));
  LODWORD(v41) = HIDWORD(v41);
  v47 = (v41 >> 10) + v46;
  HIDWORD(v41) = v122 + v42 - 2116394305 + ((v44 - ((2 * v44) & 0x10FA59FA) + 142421245) ^ 0x87D2CFD ^ v47 & (v46 ^ v44));
  LODWORD(v41) = HIDWORD(v41);
  v48 = (v41 >> 25) + v47;
  HIDWORD(v41) = v123 + v44 - 119653072 + ((v46 - ((2 * v46) & 0x233E9B12) - 1851830903) ^ 0x919F4D89 ^ v48 & (v47 ^ v46));
  LODWORD(v41) = HIDWORD(v41);
  v49 = (v41 >> 20) + v48;
  HIDWORD(v41) = v124 + v46 - 565784869 + ((v47 - ((2 * v47) & 0x428EE25E) + 558330159) ^ 0x2147712F ^ v49 & (v48 ^ v47));
  LODWORD(v41) = HIDWORD(v41);
  v50 = (v41 >> 15) + v49;
  HIDWORD(v41) = v125 + v47 + 2035857813 + ((v48 - ((2 * v48) & 0xB93F1C96) + 1553960523) ^ 0x5C9F8E4B ^ v50 & (v49 ^ v48));
  LODWORD(v41) = HIDWORD(v41);
  v51 = (v41 >> 10) + v50;
  HIDWORD(v41) = v126 + v48 + 1956561487 + ((v49 - ((2 * v49) & 0xE8FD2D2) + 122153321) ^ 0x747E969 ^ v51 & (v50 ^ v49));
  LODWORD(v41) = HIDWORD(v41);
  v52 = (v41 >> 25) + v51;
  HIDWORD(v41) = v127 + v49 - 850014101 + ((v50 - ((2 * v50) & 0xE9E7C58A) - 185343291) ^ 0xF4F3E2C5 ^ v52 & (v51 ^ v50));
  LODWORD(v41) = HIDWORD(v41);
  v53 = (v41 >> 20) + v52;
  HIDWORD(v41) = v128 + v50 - 1766287804 + ((v51 - ((2 * v51) & 0x6965348E) - 1263363513) ^ 0xB4B29A47 ^ v53 & (v52 ^ v51));
  LODWORD(v41) = HIDWORD(v41);
  v54 = (v41 >> 15) + v53;
  HIDWORD(v41) = v129 + v51 - 1635385306 + ((v52 - ((2 * v52) & 0x3B91EE16) - 1647773941) ^ 0x9DC8F70B ^ v54 & (v53 ^ v52));
  LODWORD(v41) = HIDWORD(v41);
  v55 = (v41 >> 10) + v54;
  HIDWORD(v41) = v130 + v52 - 2064515758 + ((v53 - ((2 * v53) & 0x338052C8) - 1715459740) ^ 0x99C02964 ^ v55 & (v54 ^ v53));
  LODWORD(v41) = HIDWORD(v41);
  v56 = (v41 >> 25) + v55;
  HIDWORD(v41) = v131 + v53 - 672374985 + ((v54 - ((2 * v54) & 0x4FAB22EA) + 668307829) ^ 0x27D59175 ^ v56 & (v55 ^ v54));
  LODWORD(v41) = HIDWORD(v41);
  v57 = (v41 >> 20) + v56;
  HIDWORD(v41) = v132 + v54 - 141532038 + ((v55 - ((2 * v55) & 0x10D98E2C) - 2006137066) ^ 0x886CC716 ^ v57 & (v56 ^ v55));
  LODWORD(v41) = HIDWORD(v41);
  v58 = (v41 >> 15) + v57;
  HIDWORD(v41) = v133 + v55 - 244175171 + ((v56 - ((2 * v56) & 0xF5657056) + 2058532907) ^ 0x7AB2B82B ^ v58 & (v57 ^ v56));
  LODWORD(v41) = HIDWORD(v41);
  v59 = (v41 >> 10) + v58;
  HIDWORD(v41) = v119 + v56 + 1988154189 + ((v58 - 1069433656 + (~(2 * v58) | 0x7F7C8671)) ^ 0xC041BCC7 ^ (v59 ^ v58) & v57);
  LODWORD(v41) = HIDWORD(v41);
  v60 = (v41 >> 27) + v59;
  HIDWORD(v41) = v124 + v57 + 201807318 + ((v59 - ((2 * v59) & 0x10983574) - 2008278342) ^ 0x884C1ABA ^ (v60 ^ v59) & v58);
  LODWORD(v41) = HIDWORD(v41);
  v61 = (v41 >> 23) + v60;
  HIDWORD(v41) = v129 + v58 - 336015402 + ((v60 - ((2 * v60) & 0xE5A70780) - 221019200) ^ 0xF2D383C0 ^ (v61 ^ v60) & v59);
  LODWORD(v41) = HIDWORD(v41);
  v62 = (v41 >> 18) + v61;
  HIDWORD(v41) = v118 + v59 - 1880517454 + ((v61 - ((2 * v61) & 0xCB2AE80E) - 443190265) ^ 0xE5957407 ^ (v62 ^ v61) & v60);
  LODWORD(v41) = HIDWORD(v41);
  v63 = (v41 >> 12) + v62;
  HIDWORD(v41) = v123 + v60 + 160678193 + ((v62 - ((2 * v62) & 0x93943E74) + 1237983034) ^ 0x49CA1F3A ^ (v63 ^ v62) & v61);
  LODWORD(v41) = HIDWORD(v41);
  v64 = (v41 >> 27) + v63;
  HIDWORD(v41) = v128 + v61 + 1840354533 + ((v63 - ((2 * v63) & 0x90ED9326) - 931739245) ^ 0xC876C993 ^ (v64 ^ v63) & v62);
  LODWORD(v41) = HIDWORD(v41);
  v65 = (v41 >> 23) + v64;
  HIDWORD(v41) = v133 + v62 + 174913635 + ((v64 - ((2 * v64) & 0xF4DAC232) - 93495015) ^ 0xFA6D6119 ^ (v65 ^ v64) & v63);
  LODWORD(v41) = HIDWORD(v41);
  v66 = (v41 >> 18) + v65;
  HIDWORD(v41) = v122 + v63 - 1883064672 + ((v65 - ((2 * v65) & 0x9485679E) - 901598257) ^ 0xCA42B3CF ^ (v66 ^ v65) & v64);
  LODWORD(v41) = HIDWORD(v41);
  v67 = (v41 >> 12) + v66;
  HIDWORD(v41) = v127 + v64 + 1778491923 + ((v66 - ((2 * v66) & 0xEFE36ABE) + 2012329311) ^ 0x77F1B55F ^ (v67 ^ v66) & v65);
  LODWORD(v41) = HIDWORD(v41);
  v68 = (v41 >> 27) + v67;
  HIDWORD(v41) = v132 + v65 + 925208253 + ((v67 - ((2 * v67) & 0xA820EB30) + 1410364824) ^ 0x54107598 ^ (v68 ^ v67) & v66);
  LODWORD(v41) = HIDWORD(v41);
  v69 = (v41 >> 23) + v68;
  HIDWORD(v41) = v121 + v66 - 957447140 + ((v68 - ((2 * v68) & 0x915CE926) + 1219392659) ^ 0x48AE7493 ^ (v69 ^ v68) & v67);
  LODWORD(v41) = HIDWORD(v41);
  v70 = (v41 >> 18) + v69;
  HIDWORD(v41) = v126 + v67 - 938312642 + ((v69 - ((2 * v69) & 0x543C0490) + 706609736) ^ 0x2A1E0248 ^ (v70 ^ v69) & v68);
  LODWORD(v41) = HIDWORD(v41);
  v71 = (v41 >> 12) + v70;
  HIDWORD(v41) = v131 + v68 + 1961202337 + ((v70 - ((2 * v70) & 0x97837BB4) - 876495398) ^ 0xCBC1BDDA ^ (v71 ^ v70) & v69);
  LODWORD(v41) = HIDWORD(v41);
  v72 = (v41 >> 27) + v71;
  HIDWORD(v41) = v120 + v69 - 1526109625 + ((v71 - ((2 * v71) & 0xF5B15328) - 86464108) ^ 0xFAD8A994 ^ (v72 ^ v71) & v70);
  LODWORD(v41) = HIDWORD(v41);
  v73 = (v41 >> 23) + v72;
  HIDWORD(v41) = v125 + v70 + 1913101482 + ((v72 - 426191556 + (~(2 * v72) | 0x32CE5589)) ^ 0xE698D53B ^ (v73 ^ v72) & v71);
  LODWORD(v41) = HIDWORD(v41);
  v74 = (v41 >> 18) + v73;
  HIDWORD(v41) = v130 + v71 + 984461741 + ((v73 - ((2 * v73) & 0x12836938) + 155301020) ^ 0x941B49C ^ (v74 ^ v73) & v72);
  LODWORD(v41) = HIDWORD(v41);
  v75 = (v41 >> 12) + v74;
  v118 = *(&v118 + (v72 & 0xF));
  *(&v118 + (v72 & 0xF)) = v40;
  v76 = v119;
  v119 = *(&v118 + (v75 & 0xF));
  *(&v118 + (v75 & 0xF)) = v76;
  v77 = v120;
  v120 = *(&v118 + (v74 & 0xF));
  *(&v118 + (v74 & 0xF)) = v77;
  v78 = v121;
  v121 = *(&v118 + (v73 & 0xF));
  *(&v118 + (v73 & 0xF)) = v78;
  v79 = v122;
  v122 = *(&v118 + (v72 >> 4));
  *(&v118 + (v72 >> 4)) = v79;
  v80 = v123;
  v123 = *(&v118 + (v75 >> 4));
  *(&v118 + (v75 >> 4)) = v80;
  v81 = v124;
  v124 = *(&v118 + (v74 >> 4));
  *(&v118 + (v74 >> 4)) = v81;
  v82 = v125;
  v125 = *(&v118 + (v73 >> 4));
  *(&v118 + (v73 >> 4)) = v82;
  HIDWORD(v41) = v123 + v72 + 1734107403 + ((v73 - ((2 * v73) & 0xCAA81B12) - 447476343) ^ v74 ^ 0xE5540D89 ^ v75);
  LODWORD(v41) = HIDWORD(v41);
  v83 = (v41 >> 28) + v75;
  HIDWORD(v41) = v126 + v73 + 1245581096 + ((v74 - ((2 * v74) & 0x5B8E7794) + 768031690) ^ v75 ^ 0x2DC73BCA ^ v83);
  LODWORD(v41) = HIDWORD(v41);
  v84 = (v41 >> 21) + v83;
  HIDWORD(v41) = v129 + v74 - 583907944 + ((v75 - ((2 * v75) & 0xE2033006) - 251553789) ^ v83 ^ 0xF1019803 ^ v84);
  LODWORD(v41) = HIDWORD(v41);
  v85 = (v41 >> 16) + v84;
  HIDWORD(v41) = v132 + v75 - 623427895 + ((v83 - ((2 * v83) & 0x9810A370) + 1275613624) ^ v84 ^ 0x4C0851B8 ^ v85);
  LODWORD(v41) = HIDWORD(v41);
  v86 = (v41 >> 9) + v85;
  HIDWORD(v41) = v119 + v83 + 2126398175 + ((v84 - ((2 * v84) & 0x9EC91EF4) + 1331990394) ^ v85 ^ 0x4F648F7A ^ v86);
  LODWORD(v41) = HIDWORD(v41);
  v87 = (v41 >> 28) + v86;
  HIDWORD(v41) = v122 + v84 - 669594920 + ((v85 - ((2 * v85) & 0x57C5B2B8) + 736287068) ^ v86 ^ 0x2BE2D95C ^ v87);
  LODWORD(v41) = HIDWORD(v41);
  v88 = (v41 >> 21) + v87;
  HIDWORD(v41) = v125 + v85 + 1693251363 + ((v86 - ((2 * v86) & 0xC64B506E) - 484071369) ^ v87 ^ 0xE325A837 ^ v88);
  LODWORD(v41) = HIDWORD(v41);
  v89 = (v41 >> 16) + v88;
  HIDWORD(v41) = v128 + v86 + 478227158 + ((v87 - ((2 * v87) & 0xE192D7E2) - 255235087) ^ v88 ^ 0xF0C96BF1 ^ v89);
  LODWORD(v41) = HIDWORD(v41);
  v90 = (v41 >> 9) + v89;
  HIDWORD(v41) = v131 + v87 + 9154598 + ((v88 - ((2 * v88) & 0x9E1D8990) + 1326367944) ^ v89 ^ 0x4F0EC4C8 ^ v90);
  LODWORD(v41) = HIDWORD(v41);
  v91 = (v41 >> 28) + v90;
  HIDWORD(v41) = v118 + v88 + 494129269 + ((v89 - ((2 * v89) & 0x45A4EA) + 2282101) ^ v90 ^ 0x22D275 ^ v91);
  LODWORD(v41) = HIDWORD(v41);
  v92 = (v41 >> 21) + v91;
  HIDWORD(v41) = v121 + v89 - 599113503 + ((v90 - ((2 * v90) & 0x3C74DC6E) - 1640337865) ^ v91 ^ 0x9E3A6E37 ^ v92);
  LODWORD(v41) = HIDWORD(v41);
  v93 = (v41 >> 16) + v92;
  HIDWORD(v41) = v124 + v90 + 1045221208 + ((v91 - ((2 * v91) & 0x5D455868) - 1365070796) ^ v92 ^ 0xAEA2AC34 ^ v93);
  LODWORD(v41) = HIDWORD(v41);
  v94 = (v41 >> 9) + v93;
  HIDWORD(v41) = v127 + v91 - 1247534454 + ((v92 - ((2 * v92) & 0x2C4DD8EE) - 1775833993) ^ v93 ^ 0x9626EC77 ^ v94);
  LODWORD(v41) = HIDWORD(v41);
  v95 = (v41 >> 28) + v94;
  HIDWORD(v41) = v130 + v92 - 55853073 + ((v93 - ((2 * v93) & 0x15613E3A) + 179347229) ^ v94 ^ 0xAB09F1D ^ v95);
  LODWORD(v41) = HIDWORD(v41);
  v96 = (v41 >> 21) + v95;
  HIDWORD(v41) = v133 + v93 - 485189131 + ((v94 - ((2 * v94) & 0xEB1DF046) - 175179741) ^ v95 ^ 0xF58EF823 ^ v96);
  LODWORD(v41) = HIDWORD(v41);
  v97 = (v41 >> 16) + v96;
  HIDWORD(v41) = v120 + v94 - 1502268725 + ((v95 - ((2 * v95) & 0x876FE256) - 1011355349) ^ v96 ^ 0xC3B7F12B ^ v97);
  LODWORD(v41) = HIDWORD(v41);
  v98 = (v41 >> 9) + v97;
  HIDWORD(v41) = v118 + v95 - 803248379 + ((v97 - ((2 * v97) & 0xDFCFCE2E) + 1877468951) ^ 0xCB7FC5AA ^ (v98 & 0x5B67DD42 | (v96 ^ 0x5B67DD42) & ~v98));
  LODWORD(v41) = HIDWORD(v41);
  v99 = (v41 >> 26) + v98;
  HIDWORD(v41) = v125 + v96 - 268721802 + ((v98 - ((2 * v98) & 0x5CD7D198) + 778823884) ^ 0x58AE8E23 ^ (v99 & 0x893A9910 | (v97 ^ 0x893A9910) & ~v99));
  LODWORD(v41) = HIDWORD(v41);
  v100 = (v41 >> 22) + v99;
  HIDWORD(v41) = v132 + v97 + 319611050 + ((v99 - ((2 * v99) & 0x363D2492) + 454988361) ^ 0xFAA185C8 ^ (v100 & 0x1E40E87E | (v98 ^ 0x1E40E87E) & ~v100));
  LODWORD(v41) = HIDWORD(v41);
  v101 = (v41 >> 17) + v100;
  HIDWORD(v41) = v123 + v98 - 1285031582 + ((v100 - ((2 * v100) & 0xAB89B0B8) - 708519844) ^ 0x812EB675 ^ (v101 & 0xAB1591D6 | (v99 ^ 0xAB1591D6) & ~v101));
  LODWORD(v41) = HIDWORD(v41);
  v102 = (v41 >> 11) + v101;
  HIDWORD(v41) = v130 + v99 + 759459767 + ((v101 - ((2 * v101) & 0x95BF361A) + 1256168205) ^ 0xA7D02E28 ^ (v102 & 0x12F04ADA | (v100 ^ 0x12F04ADA) & ~v102));
  LODWORD(v41) = HIDWORD(v41);
  v103 = (v41 >> 26) + v102;
  HIDWORD(v41) = v121 + v100 + 677311072 + ((v102 + 21757252 + (~(2 * v102) | 0xFD680579)) ^ 0x62BDA0F8 ^ (v103 & 0x9C09A244 | (v101 ^ 0x9C09A244) & ~v103));
  LODWORD(v41) = HIDWORD(v41);
  v104 = (v41 >> 22) + v103;
  HIDWORD(v41) = v128 + v101 - 332116257 + ((v103 - ((2 * v103) & 0x5D6604DC) + 783483502) ^ 0x26DFA385 ^ (v104 & 0xF7935E14 | (v102 ^ 0xF7935E14) & ~v104));
  LODWORD(v41) = HIDWORD(v41);
  v105 = (v41 >> 17) + v104;
  HIDWORD(v41) = v119 + v102 - 937039330 + ((v104 - ((2 * v104) & 0x7F31228C) - 1080520378) ^ 0xB43C887A ^ (v105 & 0xF45BE6C3 | (v103 ^ 0xF45BE6C3) & ~v105));
  LODWORD(v41) = HIDWORD(v41);
  v106 = (v41 >> 11) + v105;
  HIDWORD(v41) = v126 + v103 - 776881294 + ((v105 - ((2 * v105) & 0xE70D6162) + 1938206897) ^ 0xDBF1F3B ^ (v106 & 0x81C65075 | (v104 ^ 0x81C65075) & ~v106));
  LODWORD(v41) = HIDWORD(v41);
  v107 = (v41 >> 26) + v106;
  HIDWORD(v41) = v133 + v104 + 1272446890 + ((v106 - ((2 * v106) & 0x640F1C4E) + 839355943) ^ 0x97ED20C5 ^ (v107 & 0x5A15511D | (v105 ^ 0x5A15511D) & ~v107));
  LODWORD(v41) = HIDWORD(v41);
  v108 = (v41 >> 22) + v107;
  HIDWORD(v41) = v124 + v105 + 602890308 + ((v107 - ((2 * v107) & 0x4C4A66DC) + 639972206) ^ 0x27A2EF67 ^ (v108 & 0xFE7823F6 | (v106 ^ 0xFE7823F6) & ~v108));
  LODWORD(v41) = HIDWORD(v41);
  v109 = (v41 >> 17) + v108;
  HIDWORD(v41) = v131 + v106 - 640979817 + ((v108 - ((2 * v108) & 0x9C46AAA0) - 836545200) ^ 0x6AC99234 ^ (v109 & 0x5B15389B | (v107 ^ 0x5B15389B) & ~v109));
  LODWORD(v41) = HIDWORD(v41);
  v110 = (v41 >> 11) + v109;
  HIDWORD(v41) = v122 + v107 + 236775392 + ((v109 - ((2 * v109) & 0x922CCF4A) - 921278555) ^ 0xA3EAEA05 ^ (v110 & 0x9503725F | (v108 ^ 0x9503725F) & ~v110));
  LODWORD(v41) = HIDWORD(v41);
  v111 = (v41 >> 26) + v110;
  HIDWORD(v41) = v129 + v108 + 1421311854 + ((v110 - ((2 * v110) & 0x4FDDFCE4) + 669974130) ^ 0x3C60D1F9 ^ (v111 & 0xE471D074 | (v109 ^ 0xE471D074) & ~v111));
  LODWORD(v41) = HIDWORD(v41);
  v112 = (v41 >> 22) + v111;
  HIDWORD(v41) = v120 + v109 + 993350165 + ((v111 - 35577346 + (~(2 * v111) | 0x43DBC05)) ^ 0x552DAFF8 ^ (v112 & 0x573371FA | (v110 ^ 0x573371FA) & ~v112));
  LODWORD(v41) = HIDWORD(v41);
  v113 = (v41 >> 17) + v112;
  HIDWORD(v41) = v127 + v110 - 1420164563 + ((v112 - ((2 * v112) & 0xFCAE46D0) + 2119639912) ^ 0x3D4D749F ^ (v113 & 0xBCE5A808 | (v111 ^ 0xBCE5A808) & ~v113));
  LODWORD(v41) = HIDWORD(v41);
  v114 = (v41 >> 11) + v113;
  *v1 = *v1 + (((HIBYTE(v112) ^ v111 ^ 0xE1) - 84) ^ ((HIBYTE(v112) ^ v111 ^ 0x57) + 30) ^ ((HIBYTE(v112) ^ v111 ^ 0xB6) - 3)) - 75;
  LOBYTE(v73) = (((BYTE1(v111) ^ 0x58) + 126) ^ ((BYTE1(v111) ^ 0xDB) - 1) ^ ((BYTE1(v111) ^ 0x83) - 89)) - 44 + HIBYTE(v112);
  LOBYTE(v14) = ((v73 ^ 0xC1) - 59) ^ v73 ^ ((v73 ^ 0x33) + 55) ^ ((v73 ^ 0x51) + 85) ^ ((v73 ^ 0x59) + 93);
  v1[1] = v1[1] + (((v14 ^ 0xE7) + 125) ^ ((v14 ^ 0xE9) + 115) ^ ((v14 ^ 0xF4) + 112)) - 98;
  LOBYTE(v14) = (-27 - ((((BYTE2(v111) ^ 0xA2) + 71) ^ ((BYTE2(v111) ^ 0x97) + 116) ^ ((BYTE2(v111) ^ 0x35) - 46)) - HIBYTE(v112))) ^ ((((BYTE2(v111) ^ 0xA2) + 71) ^ ((BYTE2(v111) ^ 0x97) + 116) ^ ((BYTE2(v111) ^ 0x35) - 46)) - HIBYTE(v112) + 56) ^ ((((((BYTE2(v111) ^ 0xA2) + 71) ^ ((BYTE2(v111) ^ 0x97) + 116) ^ ((BYTE2(v111) ^ 0x35) - 46)) - HIBYTE(v112) + 56) ^ 0x68) - 117) ^ ((((((BYTE2(v111) ^ 0xA2) + 71) ^ ((BYTE2(v111) ^ 0x97) + 116) ^ ((BYTE2(v111) ^ 0x35) - 46)) - HIBYTE(v112) + 56) ^ 0xEA) + 9) ^ ((((((BYTE2(v111) ^ 0xA2) + 71) ^ ((BYTE2(v111) ^ 0x97) + 116) ^ ((BYTE2(v111) ^ 0x35) - 46)) - HIBYTE(v112) + 56) ^ 0x60) - 125);
  v1[2] += (((v14 ^ 0x95) + 60) ^ ((v14 ^ 0xFC) + 83) ^ ((v14 ^ 0x74) - 37)) + 76;
  v1[3] = v1[3] + (((((v112 ^ v111) >> 24) ^ 0x15) + 6) ^ ((((v112 ^ v111) >> 24) ^ 0xF8) - 23) ^ ((((v112 ^ v111) >> 24) ^ 0xED) - 2)) - 17;
  LOBYTE(v14) = v114 + HIBYTE(v112) - ((2 * (v114 + HIBYTE(v112))) & 0x3C) + 30;
  v1[4] += (((v14 ^ 0x21) - 7) ^ ((v14 ^ 0x97) + 79) ^ ((v14 ^ 0xA8) + 114)) + 56;
  result = ((((((v114 >> 8) ^ 0x5213C8D) - 947826263) ^ (((v114 >> 8) ^ 0xF071F8CA) + 852596208) ^ (((v114 >> 8) ^ 0xF550C447) + 938518883)) - HIBYTE(v112) - 1491946627) ^ 0xBF) + 228;
  LOBYTE(v14) = ((((((BYTE1(v114) ^ 0x8D) - 87) ^ ((BYTE1(v114) ^ 0xCA) - 16) ^ ((BYTE1(v114) ^ 0x47) + 99)) - HIBYTE(v112) + 125) ^ 0x8A) - 41) ^ ((((BYTE1(v114) ^ 0x8D) - 87) ^ ((BYTE1(v114) ^ 0xCA) - 16) ^ ((BYTE1(v114) ^ 0x47) + 99)) - HIBYTE(v112) + 125) ^ ((((((BYTE1(v114) ^ 0x8D) - 87) ^ ((BYTE1(v114) ^ 0xCA) - 16) ^ ((BYTE1(v114) ^ 0x47) + 99)) - HIBYTE(v112) + 125) ^ 0xE3) - 64) ^ ((((((BYTE1(v114) ^ 0x8D) - 87) ^ ((BYTE1(v114) ^ 0xCA) - 16) ^ ((BYTE1(v114) ^ 0x47) + 99)) - HIBYTE(v112) + 125) ^ 0x75) + 42) ^ ((((((BYTE1(v114) ^ 0x8D) - 87) ^ ((BYTE1(v114) ^ 0xCA) - 16) ^ ((BYTE1(v114) ^ 0x47) + 99)) - HIBYTE(v112) + 125) ^ 0xBF) - 28);
  v1[5] += (((v14 ^ 0x8F) - 9) ^ ((v14 ^ 0xBC) - 58) ^ ((v14 ^ 0x90) - 22)) + 37;
  v1[6] = v1[6] + (((HIBYTE(v112) ^ BYTE2(v114) ^ 0x25) + 21) ^ ((HIBYTE(v112) ^ BYTE2(v114) ^ 0x5F) + 111) ^ ((HIBYTE(v112) ^ BYTE2(v114) ^ 0x7A) + 76)) - 50;
  v1[7] += (((((v114 ^ v112) >> 24) ^ 0xB9) + 6) ^ ((((v114 ^ v112) >> 24) ^ 0xFE) + 67) ^ ((((v114 ^ v112) >> 24) ^ 0x47) - 4)) + 67;
  LOBYTE(v14) = v113 - HIBYTE(v112) - ((2 * (v113 - HIBYTE(v112))) & 0x58) + 44;
  v1[8] = v1[8] + (((v14 ^ 4) + 100) ^ ((v14 ^ 6) + 98) ^ ((v14 ^ 0x2E) + 74)) - 76;
  v1[9] += (((HIBYTE(v112) ^ BYTE1(v113) ^ 0x61) - 2) ^ ((HIBYTE(v112) ^ BYTE1(v113) ^ 0x11) - 114) ^ ((HIBYTE(v112) ^ BYTE1(v113) ^ 0x70) - 19)) + 99;
  v1[10] += (((HIBYTE(v112) ^ BYTE2(v113) ^ 0xB3) + 49) ^ ((HIBYTE(v112) ^ BYTE2(v113) ^ 0xBB) + 57) ^ ((HIBYTE(v112) ^ BYTE2(v113) ^ 8) - 116)) + 124;
  v116 = HIBYTE(v112) - 1195693446 + (((HIBYTE(v113) ^ 0xA0BA6D85) - 127109183) ^ ((HIBYTE(v113) ^ 0x4917731C) + 297888090) ^ ((HIBYTE(v113) ^ 0xE9AD1E99) - 1317337891));
  LOBYTE(v116) = ((v116 ^ 0x8D) - 77) ^ v116 ^ ((v116 ^ 0x5E) + 98) ^ ((v116 ^ 0xE4) - 36) ^ ((v116 ^ 0xF7) - 55);
  v1[11] = v1[11] + (((v116 ^ 0xB8) + 103) ^ ((v116 ^ 0xAC) + 115) ^ ((v116 ^ 0xD4) + 11)) - 31;
  v1[12] = v1[12] + (((HIBYTE(v112) ^ v112 ^ 0x2C) + 87) ^ ((HIBYTE(v112) ^ v112 ^ 0xF1) - 116) ^ ((HIBYTE(v112) ^ v112 ^ 0xDD) - 88)) - 123;
  v1[13] = v1[13] + (((HIBYTE(v112) ^ BYTE1(v112) ^ 0x31) + 112) ^ ((HIBYTE(v112) ^ BYTE1(v112) ^ 0xAE) - 15) ^ ((HIBYTE(v112) ^ BYTE1(v112) ^ 0x9F) - 62)) - 95;
  LODWORD(v2) = HIBYTE(v112) + 403027089 + (((HIWORD(v112) ^ 0xBE1257E) + 1325520948) ^ ((HIWORD(v112) ^ 0xF3A53403) - 1220163249) ^ ((HIWORD(v112) ^ 0xF844117D) - 1130042319));
  LOBYTE(v116) = ((2 * (v2 ^ 0x52)) ^ 0xE6) & (v2 ^ 0x52) ^ (2 * (v2 ^ 0x52)) & 0x72;
  v117 = v116 ^ 0x11;
  LOBYTE(v116) = ((2 * v2) & 0x42 ^ 0x21) & v2 ^ 0x73 ^ v116 & (4 * (((2 * v2) & 0x42 ^ 0x21) & v2));
  LOBYTE(v2) = (HIBYTE(v112) - 111 + (((BYTE2(v112) ^ 0x7E) + 52) ^ ((BYTE2(v112) ^ 3) + 79) ^ ((BYTE2(v112) ^ 0x7D) + 49))) ^ (2 * ((16 * v116) ^ v116 ^ ((4 * v117) & 0x70 ^ 0x30 ^ ((4 * v117) ^ 0xC0) & v117) & ((16 * v116) ^ 0x30)));
  v1[14] = v1[14] + (((v2 ^ 0xC) - 100) ^ ((v2 ^ 0xB2) + 38) ^ ((v2 ^ 0x19) - 113)) - 49;
  return result;
}

void sub_100890B44(_DWORD *a1)
{
  v1 = *a1 - 1022166737 * (((a1 | 0x28296041) - a1 + (a1 & 0xD7D69FBE)) ^ 0x923981D3);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_100890E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (((v8 ^ 0x2F350F2EEEA5CD51) - 0x2F350F2EEEA5CD51) ^ ((v8 ^ 0x79749A410DD7FB1) - 0x79749A410DD7FB1) ^ ((v8 ^ (v9 - 1646768895) & 0x622759F6 ^ 0x28A2468A17AD3D57) - 0x28A2468A17AD75F1)) + STACK[0xD28] - 0x7D62A17D89406F9BLL + ((v9 + 1272290879) & 0xB429FCBF) + 0x1987AF1EDLL;
  v11 = STACK[0xD20] - 0x39CC88DF5D8629;
  v12 = v10 < 0xAEA52ADC;
  v13 = v10 > v11;
  if (v11 < 0xAEA52ADC != v12)
  {
    v13 = v12;
  }

  return (*(a8 + 8 * ((235 * v13) ^ (v9 - 23614))))();
}

uint64_t sub_100890FAC@<X0>(int a1@<W8>)
{
  STACK[0x1B00] = v3;
  LODWORD(STACK[0x1B9C]) = a1;
  STACK[0x1BB0] = 0;
  LODWORD(STACK[0x1000]) = 0;
  v5 = a1 == 1465878605;
  *(v2 + 1792) = v5;
  return (*(v4 + 8 * (v1 ^ (32 * ((((v1 + 18016) ^ v5) & 1) == 0)))))();
}

uint64_t sub_10089108C()
{
  v2 = (v1 - 165016162) & 0x9D53F61;
  LODWORD(STACK[0x2B4]) = v2;
  v3 = v2 + 42584;
  v4 = (*(v0 + 8 * (v1 ^ 0x79B4)))(1028);
  STACK[0x3B8] = v4;
  return (*(v0 + 8 * (((v4 == 0) * (v3 ^ 0xA655)) | v1)))();
}

uint64_t sub_100891298()
{
  v2[84] = 0;
  v2[96] = 0x479EAAC7E0D6AFADLL;
  v2[70] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((v0 ^ 0x7188) - 20658) ^ v0)))();
}

uint64_t sub_1008912E4()
{
  v6 = *(v1 + 312);
  *(v5 - 252) = v2 + 1012831759 * ((~v3 & 0xA1ACAEC5 | v3 & 0x5E535138) ^ 0xB13FB84F) + 37242;
  *(v5 - 248) = v0;
  *(v5 - 240) = v6;
  v7 = (*(v4 + 8 * (v2 + 44508)))(v5 - 256);
  return (*(v4 + 8 * (((*(v5 - 256) > ((v2 + 1727444087) & 0xFB69FCF3 ^ 0x9D9F2FAD)) * (v2 - 7901)) ^ v2)))(v7);
}

uint64_t sub_100891390(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  v1 = *(a1 + 16) + 1112314453 * (((a1 | 0xC7C42DD0) - (a1 | 0x383BD22F) + 943444527) ^ 0x28920709);
  return (*(*(&off_1010A0B50 + (v1 ^ 0xB64D)) + 8 * ((v3 * (((v1 - 36855) | 0x40C9) ^ 0x62DD)) ^ v1) - 810145054))();
}

uint64_t sub_100891430(uint64_t a1)
{
  v309 = v2;
  v310 = v1;
  v6 = *(v4 + 8 * (v3 - 20870)) - 1326271295;
  v7 = *(v6 + ((v3 + 44) ^ v5[6]));
  v8 = v3;
  v9 = *(v4 + 8 * (v3 - 21151)) - 702114078;
  v10 = v4;
  v11 = (v7 >> 1) | (v7 << 7);
  v12 = *(v9 + (v5[3] ^ 0xDDLL)) ^ (~(2 * v5[3]) + v5[3]);
  v13 = *(v10 + 8 * (v3 - 23923)) - 1965611666;
  v14 = v5[11];
  v15 = *(v10 + 8 * (v3 ^ 0x6763)) - 698914754;
  v16 = *(v15 + (*v5 ^ 0xCDLL));
  v17 = (((v16 ^ 0xFFFFFF8F) << 24) ^ 0xDFFFFFFF) & ((*(v13 + (v5[1] ^ 0x92)) << 16) ^ 0x60CF4320) | ((v16 ^ 0xFFFFFF8F) << 24) & 0x9FFFFFFF;
  v18 = (*(v6 + (v5[10] ^ 0x79)) >> 1) | (*(v6 + (v5[10] ^ 0x79)) << 7);
  v19 = *(v9 + (v14 ^ 0xB8));
  v20 = *(v6 + (v5[2] ^ 0x20));
  v21 = (((v20 >> 1) | (v20 << 7)) ^ 0x49 ^ (32 * (((v20 >> 1) | (v20 << 7)) ^ 0x49))) << 8;
  v22 = ((v21 & 0xDB00 | (v17 ^ 0x76946731) & ~v21) ^ 0x3157AFCD) & (v12 ^ 0xFFFFFF2B);
  v23 = *(v13 + (v5[5] ^ 0xCDLL));
  v24 = v22 ^ v12 & 0x23;
  v25 = (*(v15 + (v5[12] ^ 0x97)) ^ 0xA5) << 24;
  v26 = v5[15] - 2 * (v5[15] & 0x9Fu) + 159;
  LODWORD(v6) = *(v6 + (v5[14] ^ 0xDELL));
  LOWORD(v26) = v26 ^ *(v9 + (v26 ^ 0xF));
  v27 = (v26 | 0xFFFF0400) & ((((*(v13 + (v5[13] ^ 0x58)) << 16) ^ 0x111E05C5) & (v25 ^ 0x2BFF2DDF) | v25 & 0xEEEEEEEE) ^ 0x775901D5) | v26 & 0xEF;
  v28 = *(v15 + (v5[4] ^ 0x6BLL));
  LODWORD(v13) = *(v13 + (v5[9] ^ 0xF8));
  v29 = (v27 ^ 0x1200FB00) & (((((v6 >> 1) | (v6 << 7)) ^ 0x2C ^ (32 * (((v6 >> 1) | (v6 << 7)) ^ 0x2C))) << 8) ^ 0xD2609134) | v27 & 0x2D9F00CB;
  v30 = v5[7];
  v31 = *(v15 + (v5[8] ^ 0xEFLL)) ^ 5;
  v32 = (((v31 << 24) ^ 0x46FF20F8) & ((v13 << 16) ^ 0xE74120F8) & 0xE7FFFFFF | (((v31 >> 3) & 3) << 27)) ^ 0x308E2A06;
  v33 = *(v9 + (v30 ^ 0xF9));
  v34 = ~(2 * v30) + v30;
  v35 = v23 ^ 0x52;
  v36 = v8;
  v37 = *(v10 + 8 * (v8 ^ 0x62EF));
  v38 = *(v10 + 8 * (v8 - 20733)) - 1653502574;
  v39 = v37 - 97335726;
  v40 = (v29 ^ 0xD8AD5323) >> (BYTE1(v24) & 0x18 ^ 8) >> (BYTE1(v24) & 8) >> (~BYTE1(v24) & 0x10);
  v41 = (v29 ^ 0xD8AD5323) + 1920170652;
  if ((v29 ^ 0xD8AD5323) < 0x8D8C8564)
  {
    v41 = v29 ^ 0xD8AD5323;
  }

  if ((v29 ^ 0xD8AD5323) <= 0x8D8C8563)
  {
    v42 = 0;
  }

  else
  {
    v42 = 100;
  }

  v43 = v41 == 0;
  v44 = *(v10 + 8 * (v36 ^ 0x691B));
  if (!v43)
  {
    v42 = v29 ^ 0x23;
  }

  v45 = *(v10 + 8 * (v36 - 22997));
  v46 = v44 - 1377223034;
  v47 = v45 - 1638048262;
  v48 = *(v38 + 4 * (v28 ^ 0x6C)) ^ v28;
  v49 = HIBYTE(v24) ^ 0x8F;
  v50 = *(v44 - 1377223034 + 4 * (v42 ^ 0xFu)) + 788097970;
  v308 = BYTE2(v32);
  v51 = (*(v39 + 4 * v35) + 808581043) ^ (4 * (*(v39 + 4 * v35) + 808581043)) & 0x21F84244 ^ *(v38 + 4 * (HIBYTE(v24) ^ 0x36)) ^ *(v47 + 4 * ((v18 ^ (32 * v18)) ^ 0xEBu)) ^ v50 ^ (v50 >> 2) ^ (v50 >> 6);
  v52 = *(v39 + 4 * (BYTE2(v32) ^ 0xFEu)) + 808581043;
  v53 = (4 * v52) & 0x21F84244 ^ v52;
  v54 = (v53 - (v48 ^ 0x2925301D ^ v53)) ^ -(v48 ^ 0x2925301D);
  v55 = (v54 ^ 0xA4270001) & (v48 & 0xADB7C649 ^ 0x8492C640) ^ v48 & 0x990C648;
  v56 = v48 & 0xA1B64041 ^ (v54 ^ 0xA1B64041) & (v48 & 0xADB7C649 ^ 0x29250009) ^ 0xDC8BC028 ^ ((v55 ^ 0x52C8F9B6) & ((v54 ^ v48 ^ 0x2925301D) & 0x524839B6 ^ 0xD089C020) | v55 & 0x2D360649);
  v57 = BYTE2(v29) ^ 0xAE;
  v58 = *(v46 + 4 * (v12 ^ 0x33u));
  v59 = (v58 + 788097970) ^ *(v47 + 4 * (BYTE1(v29) ^ 9u)) ^ ((v58 + 788097970) >> 2) ^ ((v58 + 788097970) >> 6) ^ (v56 + v53);
  v60 = v34 ^ 0xA0 ^ v33;
  v61 = BYTE2(v24) ^ 0xA8;
  v62 = v61 >= 0xC9;
  if (v61 >= 0xC9)
  {
    v61 -= 201;
  }

  LOBYTE(v63) = (BYTE2(v24) ^ 0xA8) + 55;
  if (!v62)
  {
    v63 = HIWORD(v24) ^ 0x8FA8;
  }

  if (v61)
  {
    v64 = 0;
  }

  else
  {
    v64 = v63;
  }

  v65 = (BYTE2(v24) ^ 0xA8) - v64;
  v66 = *(v39 + 4 * v57) + 808581043;
  v67 = *(v46 + 4 * v60) + 788097970;
  v68 = *(v46 + 4 * (v14 ^ 0x46u ^ v19));
  v69 = *(v38 + 4 * (HIBYTE(v32) ^ 0x61)) ^ HIBYTE(v32) ^ v66 ^ *(v47 + 4 * (BYTE1(v24) ^ 0xD6u)) ^ v67 ^ (4 * v66) & 0x21F84244 ^ (v67 >> 2) ^ (v67 >> 6);
  v70 = ((2 * (((v68 ^ 0x5DFF25FF) + 130101674) ^ v68 ^ ((v68 ^ 0x7B5E83DF) + 559978378) ^ ((v68 ^ 0x749FB676) + 782344737) ^ ((v68 ^ 0x77FFFBFF) + 767684522))) & 0xA976AEB6 ^ 0x9028612) + (v68 ^ ((v68 ^ 0xCDA960B9) + 395801840) ^ ((v68 ^ 0x7567263B) - 1353108882) ^ ((v68 ^ 0x62F136D4) - 1194384765) ^ ((v68 ^ 0xFFFE9BFF) + 633376682) ^ 0x717ABCF2);
  v71 = *(v39 + 4 * (v65 ^ 3u)) + 808581043;
  v72 = *(v38 + 4 * (v40 ^ 0xB9u)) ^ v71 ^ *(v47 + 4 * ((v11 ^ (32 * v11)) ^ 0xBCu)) ^ (4 * v71) & 0x21F84244 ^ v70 ^ (v70 >> 2) ^ (v70 >> 6);
  v73 = *(v39 + 4 * (BYTE2(v59) ^ 0x4Au)) + 808581043;
  v74 = v73 ^ *(v38 + 4 * (HIBYTE(v51) ^ 0xE4)) ^ *(v47 + 4 * (BYTE1(v69) ^ 0xA2u)) ^ (4 * v73) & 0x21F84244;
  v75 = *(v46 + 4 * ((v72 ^ v40) ^ 0x12u)) + 788097970;
  v76 = v74 ^ v75 ^ (v75 >> 2) ^ (v75 >> 6);
  v77 = *(v39 + 4 * (BYTE2(v69) ^ 0x2Du));
  v78 = *(v46 + 4 * ((v49 - ((2 * v49) & 0x77777777) - 950396229) ^ 0xC75A1A75 ^ v51));
  v79 = ((2 * (v78 ^ 0xB3D7BDA6)) ^ 0xD3D353E2) & (v78 ^ 0xB3D7BDA6) ^ (2 * (v78 ^ 0xB3D7BDA6)) & 0x69E9A9F0;
  v80 = 2 * (v78 & 0xDA3E1457);
  v81 = (v79 ^ 0x41C001E0) & (4 * (v80 & (v78 ^ 0x93BF9506) ^ v78 & 0xDA3E1457)) ^ v80 & (v78 ^ 0x93BF9506) ^ v78 & 0xDA3E1457;
  v82 = ((4 * (v79 ^ 0x2828A811)) ^ 0xA7A6A7C4) & (v79 ^ 0x2828A811) ^ (4 * (v79 ^ 0x2828A811)) & 0x69E9A9F0;
  v83 = ((16 * (v82 ^ 0x48490831)) ^ 0x9E9A9F10) & (v82 ^ 0x48490831) ^ (16 * (v82 ^ 0x48490831)) & 0x69E9A9D0;
  v84 = (v82 ^ 0x21A0A1C0) & (16 * v81) ^ v81 ^ 0x69E9A9F1 ^ (v83 ^ 0x8888900) & (((v82 ^ 0x21A0A1C0) & (16 * v81) ^ v81) << 8);
  v85 = ((4 * ((v84 << 16) & 0x28490000 ^ v84 ^ ((v84 << 16) ^ 0x28510000) & (((v83 ^ 0x616120E1) << 8) & 0x29E90000 ^ (((v83 ^ 0x616120E1) << 8) ^ 0x29A90000) & (v83 ^ 0x616120E1) ^ 0x400000))) ^ (2 * v78)) & 0xA976AEB6 ^ 0xA0568E22;
  v86 = ((2 * (v78 ^ 0xF703CBA1)) ^ 0x5A7BBFEC) & (v78 ^ 0xF703CBA1) ^ (2 * (v78 ^ 0xF703CBA1)) & 0x2D3DDFF6;
  v87 = (v86 ^ 0x83893E4) & (4 * (v80 & (v78 ^ 0xD33FC307) ^ v78 & 0xDA3E1457)) ^ v80 & (v78 ^ 0xD33FC307) ^ v78 & 0xDA3E1457;
  v88 = ((4 * (v86 ^ 0x25044012)) ^ 0xB4F77FD8) & (v86 ^ 0x25044012) ^ (4 * (v86 ^ 0x25044012)) & 0x2D3DDFF0;
  v89 = (v88 ^ 0x24355FD0) & (16 * v87) ^ v87;
  v90 = ((16 * (v88 ^ 0x9088026)) ^ 0xD3DDFF60) & (v88 ^ 0x9088026) ^ (16 * (v88 ^ 0x9088026)) & 0x2D3DDFE0;
  v91 = v89 ^ 0x2D3DDFF6 ^ (v90 ^ 0x11DDF00) & (v89 << 8);
  v92 = v85 + (v78 ^ (2 * ((v91 << 16) & 0x2D3D0000 ^ v91 ^ ((v91 << 16) ^ 0x5FF60000) & (((v90 ^ 0x2C200096) << 8) & 0x2D3D0000 ^ (((v90 ^ 0x2C200096) << 8) ^ 0x3DDF0000) & (v90 ^ 0x2C200096) ^ 0x200000))) ^ 0xCE96FCE0);
  HIDWORD(v93) = v92;
  LODWORD(v93) = v92;
  v94 = (v93 >> 12) & 0xFF0FFFFF ^ 0xDD2B259E;
  HIDWORD(v93) = v92;
  LODWORD(v93) = v92;
  HIDWORD(v93) = v94 + (v93 >> 8) - 2 * (v94 & (v93 >> 8));
  LODWORD(v93) = HIDWORD(v93);
  v95 = *(v47 + 4 * (BYTE1(v72) ^ 0xD1u)) ^ (v77 + 808581043) ^ *(v38 + 4 * (HIBYTE(v59) ^ 0x37)) ^ ((-(HIBYTE(v59) ^ 0x8E) ^ (1471942674 - (HIBYTE(v59) ^ 0x57BC109C)) ^ 0xF639698 ^ ((HIBYTE(v59) ^ 0x8E) - ((2 * (HIBYTE(v59) ^ 0x8E)) & 0x130) + 258184856)) + 1471942674) ^ (150334700 - ((4 * (((v77 ^ 0xFCE584B0) + 780858975) ^ v77 ^ ((v77 ^ 0x3FF1A3AD) + 765382980) ^ ((v77 ^ 0x387B17D3) + 705979710) ^ ((v77 ^ 0x16FFBDDF) + 76599090))) ^ 0x36423444)) & 0x21F84244 ^ v92 ^ ((v93 >> 24) >> 2);
  v96 = *(v39 + 4 * (BYTE2(v72) ^ 0xEu)) + 808581043;
  v97 = HIBYTE(v69) ^ *(v38 + 4 * (HIBYTE(v69) ^ 0x58)) ^ *(v47 + 4 * (BYTE1(v51) ^ 0xAu)) ^ v96 ^ 0x4D36A998 ^ (4 * v96) & 0x21F84244;
  v98 = *(v46 + 4 * (v59 ^ 0x74u)) + 788097970;
  v99 = (v98 >> 6) ^ (v98 >> 2) ^ ((-v97 ^ (v98 - (v97 ^ v98)) ^ 0x65D9E8F6 ^ (v97 - ((2 * v97) & 0xCBB3D1EC) + 1708779766)) + v98);
  v100 = (v72 ^ (v40 | 0x80000000)) >> 24;
  v101 = v100 ^ 0x19;
  v102 = *(v39 + 4 * (BYTE2(v51) ^ 9u)) + 808581043;
  v103 = v102 ^ v100 ^ (4 * v102) & 0x21F84244 ^ *(v47 + 4 * ((-(BYTE1(v59) ^ 0x4A) ^ (90 - (BYTE1(v59) ^ 0x10)) ^ 0x650B3C68 ^ ((BYTE1(v59) ^ 0x4A) - ((2 * (BYTE1(v59) ^ 0x4A)) & 0xD0u) + 1695235176)) + 90));
  v104 = *(v46 + 4 * (v69 ^ 0x3Fu)) + 788097970;
  v105 = v103 ^ v104 ^ *(v38 + 4 * v101) ^ (v104 >> 2) ^ (v104 >> 6);
  v106 = 83 * ((v76 ^ HIBYTE(v51) ^ 0x730A8BD8) / 0x53000000u) + (((v76 ^ HIBYTE(v51) ^ 0x730A8BD8) >> 24) - 83 * ((99 * ((v76 ^ HIBYTE(v51) ^ 0x730A8BD8) >> 24)) >> 13));
  v107 = *(v47 + 4 * (BYTE1(v99) ^ 0xFAu));
  v108 = *(v39 + 4 * (BYTE2(v95) ^ 0xB2u)) + 808581043;
  v109 = *(v46 + 4 * (v105 ^ 0x17u)) + 788097970;
  v110 = v108 ^ __ROR4__((v106 << 11) ^ __ROR4__(*(v38 + 4 * (v106 ^ 0xB9)), 21) ^ 0xE47B77D, 11) ^ v109 ^ (v109 >> 2) ^ (v109 >> 6) ^ (4 * v108) & 0x21F84244 ^ ((v107 ^ (437630361 - (v107 ^ 0x641399B1)) ^ 0x7E062C28 ^ (-2114333736 - (((v107 ^ 0x6088719F) - 1619554719) ^ ((v107 ^ 0xA0A8D29) - 168463657) ^ ((v107 ^ 0x1484D09E) - 344248478)))) + 437630361);
  v111 = *(v39 + 4 * (BYTE2(v76) ^ 9u)) + 808581043;
  v112 = __ROR4__((4 * v111) & 0x21F84244 ^ 0x6C03E169, 20) ^ 0x6F4D3D9A;
  v113 = v111 ^ *(v47 + 4 * (BYTE1(v95) ^ 0xA4u)) ^ __ROR4__(__ROR4__(*(v38 + 4 * (HIBYTE(v105) ^ 0xFA)) ^ ((HIBYTE(v105) ^ 0x43) - ((2 * (HIBYTE(v105) ^ 0x43)) & 0x24) + 1471942674), 7) ^ 0xBFEC017D, 25);
  v114 = *(v46 + 4 * (v99 ^ 0xA8u)) + 788097970;
  v115 = v113 ^ v114 ^ (v114 >> 2) ^ (v114 >> 6) ^ __ROR4__(v112, 12);
  v116 = ((BYTE2(v110) ^ 0x371B8567) + 1866586277) ^ ((BYTE2(v110) ^ 0x39348177) + 1634655413) ^ ((BYTE2(v110) ^ 0xE2F0449) + 1450531211);
  v117 = v116 - (((BYTE2(v110) ^ 0xE8F83637) + 1509867913) ^ ((BYTE2(v110) ^ 0x8A84370A) + 998424758) ^ ((BYTE2(v110) ^ 0x627C0167) - 746916135)) + 1487706699;
  v118 = *(v39 + 4 * (v116 + 1386897400 + (((v117 ^ 0x4375546D) - 395187712) ^ ((v117 ^ 0x5798A903) - 56879982) ^ ((v117 ^ 0xEB120290) + 1075232515))));
  v119 = *(v38 + 4 * HIBYTE(v115));
  v120 = v118 + 808581043;
  v121 = HIBYTE(v115) ^ 0x29253071 ^ v119;
  v122 = (v120 - (v121 ^ v120)) ^ -v121;
  v123 = v122 & 0x8000;
  v43 = (v123 & ~v119 ^ (v123 | 0x600202)) == 6291970;
  v124 = *(v39 + 4 * (BYTE2(v99) ^ 0x7Du)) + 808581043;
  v125 = *(v46 + 4 * ((v76 ^ HIBYTE(v51)) ^ 0xD7u)) + 788097970;
  v126 = v124 ^ *(v47 + 4 * (BYTE1(v105) ^ 0xE2u)) ^ v125 ^ *(v38 + 4 * (HIBYTE(v95) ^ 0x47)) ^ (v125 >> 2) ^ (v125 >> 6) ^ (((((v124 & 0xC87E1091) << (v12 & 2)) - ((2 * ((v124 & 0xC87E1091) << (v12 & 2))) & 0x50EC25A8) + 678859766) ^ 0x287693F6) << (v12 & 2 ^ 2));
  v127 = HIBYTE(v99) ^ *(v38 + 4 * (HIBYTE(v99) ^ 0xC1));
  v128 = *(v47 + 4 * (BYTE1(v76) ^ 0xD1u));
  v129 = (v127 ^ 0x292530B0) + (v128 ^ 0x641399B1) + ((2 * ((v128 ^ 0x641399B1) & (v127 ^ 0x5DD4DFC0) ^ v128 & 0x74F1EF70)) ^ 0x37DCED9F);
  v130 = *(v39 + 4 * (BYTE2(v105) ^ 0x1Cu)) + 808581043;
  v131 = *(v46 + 4 * (v95 ^ 0xA3u)) + 788097970;
  v132 = v131 ^ v130 ^ (v131 >> 6) ^ (v131 >> 2) ^ (4 * v130) & 0x21F84244 ^ (v129 + 1);
  v133 = *(v38 + 4 * (HIBYTE(v110) ^ 0x3D));
  v134 = (v133 ^ 0x81444A25) & (HIBYTE(v110) ^ 0xCF444AF8) ^ v133 & 0x6707A591;
  v135 = (v133 ^ 0x4534104A) & (HIBYTE(v110) ^ 0x57BC1096) ^ HIBYTE(v110) & 0x90;
  v136 = (v135 & 0x11A010CC ^ v134 & 0x290387CC ^ 0x6D789073) & (v135 & 0x461C0033 ^ v134 & 0xC6446833 ^ 0xB9ABBFDD) | (v135 & 0x461C0033 ^ v134 & 0xC6446833) & 0x82046800;
  v137 = *(v39 + 4 * (BYTE2(v126) ^ 0x8Eu)) + 808581043;
  v138 = v134 ^ 0xFEF97AFE ^ -(v134 ^ 0xFEF97AFE) ^ ((((v135 ^ 0xD9B1B5E0) - 1240824110) ^ ((v135 ^ 0xCAC76BA5) - 1518577515) ^ ((v135 ^ 0xDACED5) + 1868692965)) - (((v136 ^ 0x149A6A3E) + 134081984) ^ ((v136 ^ 0x6127240C) + 1916838798) ^ ((v136 ^ 0xB1C0B40D) - 1566100595)) + 1526946333);
  v139 = *(v46 + 4 * (v115 ^ 0x5Bu)) + 788097970;
  v140 = __ROR4__(v139 ^ *(v47 + 4 * (BYTE1(v132) ^ 0xEu)) ^ (v139 >> 6) ^ (v139 >> 2) ^ (((4 * v137) & 0x21F84244) + v137 - 2 * ((4 * v137) & 0x21F84244 & v137)) ^ 0x70F45B8F ^ ((((v135 ^ 0x1A008F5D) + 1975237741) ^ ((v135 ^ 0x20A7DB87) + 1327294647) ^ ((v135 ^ 0x290B444A) + 1185970044)) - 1929047979 + (((v138 ^ 0x4A330737) - 1127167168) ^ ((v138 ^ 0x78C11E3D) - 1910320586) ^ ((v138 ^ 0x32F2190A) - 1005464317))), 12) ^ 0x9D2EA722;
  v141 = *(v39 + 4 * (BYTE2(v132) ^ 0xAAu));
  v142 = (v141 ^ 0x816E70CE) & (2 * (v141 & 0xD26F72EF)) ^ v141 & 0xD26F72EF;
  v143 = ((2 * (v141 ^ 0x5EC7440)) ^ 0xAF060D5E) & (v141 ^ 0x5EC7440) ^ (2 * (v141 ^ 0x5EC7440)) & 0xD78306AE;
  v144 = (v143 ^ 0x8302040C) & (4 * v142) ^ v142;
  v145 = ((4 * (v143 ^ 0x508102A1)) ^ 0x5E0C1ABC) & (v143 ^ 0x508102A1) ^ (4 * (v143 ^ 0x508102A1)) & 0xD78306AC;
  v146 = (v145 ^ 0x560002A0) & (16 * v144) ^ v144;
  v147 = ((16 * (v145 ^ 0x81830403)) ^ 0x78306AF0) & (v145 ^ 0x81830403) ^ (16 * (v145 ^ 0x81830403)) & 0xD78306A0;
  v148 = v146 ^ 0xD78306AF ^ (v147 ^ 0x50000200) & (v146 << 8);
  v149 = (v141 ^ (2 * ((v148 << 16) & 0x57830000 ^ v148 ^ ((v148 << 16) ^ 0x6AF0000) & (((v147 ^ 0x8783040F) << 8) & 0x57830000 ^ 0x54810000 ^ (((v147 ^ 0x8783040F) << 8) ^ 0x3060000) & (v147 ^ 0x8783040F)))) ^ 0x2DADFB75) + ((2 * (((v141 ^ 0xCACC855A) + 413398965) ^ v141 ^ ((v141 ^ 0x1BA4801D) + 1238102772) ^ ((v141 ^ 0x230757B9) + 1902650712) ^ ((v141 ^ 0x5FFFDFEE) + 227585282))) & 0xBB850988 ^ 0x1B010800);
  v150 = *(v46 + 4 * (v110 ^ 0x3Bu)) + 788097970;
  v151 = *(v47 + 4 * (BYTE1(v115) ^ 0x9Eu)) ^ *(v38 + 4 * (HIBYTE(v126) ^ 0x62)) ^ v150 ^ (v150 >> 2) ^ (v150 >> 6) ^ v149 ^ (4 * v149) & 0x21F84244;
  v152 = *(v39 + 4 * (((v115 >> 15) | 0xFFFFFFF9) + (BYTE2(v115) ^ 0xC3) + 4)) + 808581043;
  v153 = *(v46 + 4 * (v126 ^ HIBYTE(v95) ^ 0xB4)) + 788097970;
  v154 = *(v38 + 4 * (HIBYTE(v132) ^ 0x4C)) ^ HIBYTE(v132) ^ *(v47 + 4 * (BYTE1(v110) ^ 0x34u)) ^ v152 ^ v153 ^ (4 * v152) & 0x21F84244 ^ (v153 >> 2) ^ (v153 >> 6);
  if (v43)
  {
    v155 = v122 & 0x8000;
  }

  else
  {
    v155 = -v123;
  }

  v156 = (v155 + v121) ^ v122 & 0xFFFF7FFF;
  v157 = v154 ^ 0xC512EE03;
  v158 = *(v47 + 4 * (BYTE1(v126) ^ 0x94u));
  v159 = *(v46 + 4 * (v132 ^ 0x96u)) + 788097970;
  v160 = (4 * v120) & 0x21F84244 ^ v158 ^ v159 ^ (v159 >> 2) ^ (v159 >> 6) ^ (v156 + v120);
  v161 = (4 * v120) & 0x44 ^ (v158 ^ v159) ^ (v159 >> 2) ^ (v159 >> 6) ^ (v156 + v120) ^ 0xE5;
  v162 = *(v38 + 4 * (HIBYTE(v151) ^ 0xDF));
  HIDWORD(v164) = v140;
  LODWORD(v164) = v140;
  v163 = v164 >> 20;
  v165 = *(v46 + 4 * v161) + 788097970;
  v166 = *(v39 + 4 * (BYTE2(v151) ^ 0xE2u)) + 808581043;
  v167 = *(v47 + 4 * (BYTE1(v157) ^ 0xF3u)) ^ v165 ^ *(v38 + 4 * (HIBYTE(v163) ^ 0xE1)) ^ (v165 >> 2) ^ (v165 >> 6) ^ v166 ^ (4 * v166) & 0x21F84244;
  v168 = 2 * ((HIBYTE(v151) ^ 0x4A4C47B4) & (v162 ^ 0x5E1998DA) ^ v162 & 0x1DF057C0);
  v169 = (((v162 ^ 0x4336AE29) - 1127657001) ^ ((v162 ^ 0xC66DF378) + 965872776) ^ ((v162 ^ 0xFBC27D8B) + 71139957)) + (((HIBYTE(v151) ^ 0x7D75F78) + 971283016) ^ ((HIBYTE(v151) ^ 0x109848FC) + 782994884) ^ ((HIBYTE(v151) ^ 0x40F307F0) + 2126562000)) - (((v168 ^ 0xAF57DD0A) + 1275054419) ^ ((v168 ^ 0xEAE3E8CF) + 239860888) ^ ((v168 ^ 0x7C943445) - 1740890082)) - 225353369;
  v170 = *(v39 + 4 * (BYTE2(v157) ^ 0x35u));
  v171 = v170 + 808581043;
  v172 = *(v46 + 4 * ((v164 >> 20) ^ 0x45u));
  v173 = (-808581043 - v170) ^ (v170 - ((2 * (v170 + 808581043)) & 0xF5B0B69A) + 722096896) ^ 0xFAD85B4D ^ (v169 - (v169 ^ (v170 + 808581043)));
  v174 = (v172 ^ 0xDA3DD447) & (2 * (v172 & 0xDA3E1457)) ^ v172 & 0xDA3E1457;
  v175 = ((2 * (v172 ^ 0x5E35F463)) ^ 0x817C068) & (v172 ^ 0x5E35F463) ^ (2 * (v172 ^ 0x5E35F463)) & 0x840BE034;
  v176 = ((4 * (v175 ^ 0x84082014)) ^ 0x102F80D0) & (v175 ^ 0x84082014) ^ (4 * (v175 ^ 0x84082014)) & 0x840BE030;
  v177 = (v176 ^ 0xB8010) & (16 * ((v175 ^ 0xC020) & (4 * v174) ^ v174)) ^ (v175 ^ 0xC020) & (4 * v174) ^ v174;
  v178 = ((16 * (v176 ^ 0x84006024)) ^ 0x40BE0340) & (v176 ^ 0x84006024) ^ (16 * (v176 ^ 0x84006024)) & 0x840BE000;
  v179 = v177 ^ 0x840BE034 ^ (v178 ^ 0xA0000) & (v177 << 8);
  v180 = (((4 * ((v179 << 16) & 0x90000 ^ v179 ^ ((v179 << 16) ^ 0x20140000) & (((v178 ^ 0x8401E034) << 8) & 0x40B0000 ^ 0x90000 ^ (((v178 ^ 0x8401E034) << 8) ^ 0xBE00000) & (v178 ^ 0x8401E034)))) ^ (2 * v172)) & 0xA976AEB6 ^ 0xA052A836) + (v172 ^ ((v172 ^ 0x97CECC3B) + 1307629678) ^ ((v172 ^ 0xED462661) + 930624056) ^ ((v172 ^ 0xA8867C2C) + 1924687995) ^ ((v172 ^ 0xF7CF7DDF) + 770795914) ^ 0x717ABCF2);
  v181 = (v180 >> 4) & 0xBCA9B88 ^ v180;
  v182 = (v181 & 0x20489208 ^ 0xFB5576C1) & (v180 & 0x90014450 ^ 0xFB5FFFC9);
  v183 = (v181 & 0x4B820980 ^ 0xAE6B5425) & (v180 & 0x4342024 ^ 0xFFEFFDA7) | v180 & 0x142000;
  v184 = (4 * v171) & 0x21F84244 ^ *(v47 + 4 * (BYTE1(v160) ^ 0x68u)) ^ (v173 + v169) ^ v180 ^ ((v183 & 0xAAD13404 ^ (v180 >> 4) & 0x4356474 ^ (v183 ^ 0x51048BD8) & ((v182 | v180 & 0x10) ^ 0xBE7B3F78)) >> 2);
  v185 = *(v39 + 4 * (BYTE2(v160) ^ 0x82u)) + 808581043;
  v186 = *(v46 + 4 * ((HIBYTE(v126) - ((v126 >> 23) & 0x22222222) - 114734319) ^ 0xF9294B24 ^ v151)) + 788097970;
  v187 = *(v38 + 4 * (HIBYTE(v157) ^ 0xF4)) ^ HIBYTE(v157) ^ v185 ^ *(v47 + 4 * (BYTE1(v163) ^ 0x6Cu)) ^ (4 * v185) & 0x21F84244 ^ v186 ^ (v186 >> 2) ^ (v186 >> 6);
  v188 = BYTE1(v151) ^ 0xDA;
  v189 = *(v39 + 4 * (BYTE2(v163) ^ 0x96u)) + 808581043;
  v190 = v189 ^ *(v38 + 4 * (HIBYTE(v160) ^ 0xE3)) ^ *(v47 + 4 * v188) ^ (4 * v189) & 0x21F84244 ^ ((HIBYTE(v160) ^ 0x5A) - ((2 * (HIBYTE(v160) ^ 0x5A)) & 0x24) + 1471942674);
  v191 = *(v46 + 4 * (v157 ^ 0x83u)) + 788097970;
  v192 = v190 ^ v191 ^ (v191 >> 2) ^ (v191 >> 6);
  v193 = (v184 ^ 0xE3263AA2) >> 24;
  v194 = 45 * ((95443718 * v193) >> 32) + (v193 - 45 * ((((109 * v193) >> 8) + (((v193 - ((109 * v193) >> 8)) & 0xFE) >> 1)) >> 5));
  v195 = *(v39 + 4 * (BYTE2(v184) ^ 0x25u)) + 808581043;
  v196 = *(v46 + 4 * (v192 ^ 0x40u)) + 788097970;
  v197 = v195 ^ *(v38 + 4 * (HIBYTE(v167) ^ 0x78)) ^ *(v47 + 4 * (BYTE1(v187) ^ 0xFAu)) ^ v196 ^ (4 * v195) & 0x21F84244 ^ (v196 >> 2) ^ (v196 >> 6);
  v198 = *(v46 + 4 * (HIBYTE(v163) ^ 0xC8 ^ v167)) + 788097970;
  v199 = *(v39 + 4 * (BYTE2(v187) ^ 0xA5u)) + 808581043;
  v200 = v199 ^ *(v47 + 4 * (BYTE1(v192) ^ 0xD2u)) ^ (4 * v199) & 0x21F84244 ^ (((v198 >> 6) ^ (v198 >> 2)) + v198 - 2 * (((v198 >> 6) ^ (v198 >> 2)) & v198)) ^ *(v38 + 4 * (v194 ^ 0xB9u));
  v201 = *(v46 + 4 * (v184 ^ 0xADu));
  v202 = ((2 * (((v201 ^ 0xC8F9E246) + 315094545) ^ v201 ^ ((v201 ^ 0x6A35DA8E) + 806080217) ^ ((v201 ^ 0x79D22E9E) + 602684105) ^ ((v201 ^ 0x7EDFFDFF) + 618785194))) & 0xA976AEB6 ^ 0x9028612) + (v201 ^ ((v201 ^ 0x9F3FB745) + 1157735188) ^ ((v201 ^ 0xBD9EECDE) + 1738602633) ^ ((v201 ^ 0xF81F4EDC) + 572611211) ^ ((v201 ^ 0xFF7FFEEE) + 625076921) ^ 0x717ABCF2);
  v203 = *(v39 + 4 * (BYTE2(v192) ^ 0xE7u)) + 808581043;
  v204 = *(v47 + 4 * (BYTE1(v167) ^ 0x3Du)) ^ HIBYTE(v187) ^ *(v38 + 4 * (HIBYTE(v187) ^ 0x96)) ^ v203 ^ (4 * v203) & 0x21F84244 ^ v202 ^ (v202 >> 2) ^ (v202 >> 6);
  v205 = v187 ^ 0x46;
  v192 >>= 24;
  v206 = *(v39 + 4 * (BYTE2(v167) ^ 0x60u)) + 808581043;
  v207 = *(v46 + 4 * v205) + 788097970;
  v208 = v206 ^ *(v38 + 4 * (v192 ^ 0xE4)) ^ v207 ^ (4 * v206) & 0x21F84244 ^ *(v47 + 4 * (BYTE1(v184) ^ 0x60u)) ^ (v207 >> 2) ^ (v207 >> 6);
  v209 = *(v47 + 4 * (BYTE1(v204) ^ 0xA9u));
  v210 = *(v39 + 4 * (BYTE2(v200) ^ 0xEu)) + 808581043;
  v211 = *(v46 + 4 * (v192 ^ 0xBB ^ v208)) + 788097970;
  LOWORD(v194) = v194 ^ v200;
  v212 = HIBYTE(v200) ^ 0xBD;
  v213 = (HIBYTE(v200) ^ 4) - ((v200 >> 23) & 0x24);
  v214 = *(v38 + 4 * (HIBYTE(v197) ^ 0x1A)) ^ HIBYTE(v197) ^ v211 ^ ((((v209 ^ 0xD6106399) - (v209 ^ 0x641399B1)) ^ 0xFFFFFFF0) + (v209 ^ 0xD6106399)) ^ __ROR4__(__ROR4__((4 * v210) & 0x21F84244 ^ v210, 9) ^ 0x472D3F78, 23) ^ (((-(v211 >> 4) ^ (v211 - ((v211 >> 4) ^ v211)) ^ ((v211 >> 4) - ((v211 >> 3) & 0x1116E72) + 814266169) ^ 0x3088B739) + v211) >> 2);
  v215 = *(v46 + 4 * (v197 ^ HIBYTE(v167)));
  v216 = ((2 * (v215 ^ 0xF84E36E9)) ^ 0x44E0457C) & (v215 ^ 0xF84E36E9) ^ (2 * (v215 ^ 0xF84E36E9)) & 0x227022BE;
  v217 = v216 ^ 0x22102282;
  v218 = 2 * (v215 & 0xDA3E1457);
  v219 = (v216 ^ 0x60003C) & (4 * (v218 & (v215 ^ 0xD83E1647) ^ v215 & 0xDA3E1457)) ^ v218 & (v215 ^ 0xD83E1647) ^ v215 & 0xDA3E1457;
  v220 = ((4 * v217) ^ 0x89C08AF8) & v217 ^ (4 * v217) & 0x227022B8;
  v221 = (v220 ^ 0x4002B0) & (16 * v219) ^ v219;
  v222 = ((16 * (v220 ^ 0x22302006)) ^ 0x27022BE0) & (v220 ^ 0x22302006) ^ (16 * (v220 ^ 0x22302006)) & 0x227022A0;
  v223 = v221 ^ 0x227022BE ^ (v222 ^ 0x22002200) & (v221 << 8);
  v224 = ((4 * ((v223 << 16) & 0x22500000 ^ v223 ^ ((v223 << 16) ^ 0x221C0000) & (((v222 ^ 0x70001E) << 8) & 0x22700000 ^ (((v222 ^ 0x70001E) << 8) ^ 0x30220000) & (v222 ^ 0x70001E) ^ 0x7F00000))) ^ (2 * v215)) & 0xA976AEB6 ^ 0xA174A216;
  v225 = ((2 * (v215 ^ 0xB53E3340)) ^ 0xDE004E2E) & (v215 ^ 0xB53E3340) ^ (2 * (v215 ^ 0xB53E3340)) & 0x6F002716;
  v226 = (v225 ^ 0x48000204) & (4 * (v218 & (v215 ^ 0x913E1346) ^ v215 & 0xDA3E1457)) ^ v218 & (v215 ^ 0x913E1346) ^ v215 & 0xDA3E1457;
  v227 = ((4 * (v225 ^ 0x21002111)) ^ 0xBC009C5C) & (v225 ^ 0x21002111) ^ (4 * (v225 ^ 0x21002111)) & 0x6F002714;
  v228 = (v227 ^ 0x2C000410) & (16 * v226) ^ v226;
  v229 = ((16 * (v227 ^ 0x43002303)) ^ 0xF0027170) & (v227 ^ 0x43002303) ^ (16 * (v227 ^ 0x43002303)) & 0x6F002710;
  v230 = v228 ^ 0x6F002717 ^ (v229 ^ 0x60002100) & (v228 << 8);
  v231 = v224 + (v215 ^ (2 * ((v230 << 16) & 0x6F000000 ^ v230 ^ ((v230 << 16) ^ 0x27170000) & (((v229 ^ 0xF000607) << 8) & 0x6F000000 ^ 0x6F000000 ^ (((v229 ^ 0xF000607) << 8) ^ 0x270000) & (v229 ^ 0xF000607)))) ^ 0x1E850D22);
  v232 = *(v39 + 4 * (BYTE2(v204) ^ 0xF2u)) + 808581043;
  v233 = *(v38 + 4 * v212) ^ (v213 + 1471942674) ^ v232 ^ *(v47 + 4 * (BYTE1(v208) ^ 0xBu)) ^ (4 * v232) & 0x21F84244 ^ v231 ^ (v231 >> 2) ^ (v231 >> 6);
  v234 = *(v39 + 4 * (BYTE2(v208) ^ 0xF0u)) + 808581043;
  v235 = v234 ^ (4 * v234) & 0x21F84244 ^ *(v47 + 4 * (BYTE1(v197) ^ 0xD4u)) ^ *(v38 + 4 * (HIBYTE(v204) ^ 0xC4));
  v236 = *(v46 + 4 * (v194 ^ 0xBFu)) + 788097970;
  v237 = v235 ^ v236 ^ (v236 >> 2) ^ (v236 >> 6);
  v238 = *(v39 + 4 * (BYTE2(v197) ^ 0x8Cu)) + 808581043;
  v239 = *(v46 + 4 * (v204 ^ 0xEFu)) + 788097970;
  v240 = *(v38 + 4 * (HIBYTE(v208) ^ 0x98)) ^ HIBYTE(v208) ^ v238 ^ (4 * v238) & 0x21F84244 ^ v239 ^ *(v47 + 4 * (BYTE1(v194) ^ 0x33u)) ^ (v239 >> 2) ^ (v239 >> 6);
  v241 = *(v39 + 4 * (BYTE2(v233) ^ 0x41u));
  v242 = (v241 ^ 0x8A6F68CE) & (2 * (v241 & 0xD26F72EF)) ^ v241 & 0xD26F72EF;
  v243 = ((2 * (v241 ^ 0xEA9081E)) ^ 0xB98CF5E2) & (v241 ^ 0xEA9081E) ^ (2 * (v241 ^ 0xEA9081E)) & 0xDCC67AF0;
  v244 = (v243 ^ 0x988450E0) & (4 * v242) ^ v242;
  v245 = ((4 * (v243 ^ 0x44420A11)) ^ 0x7319EBC4) & (v243 ^ 0x44420A11) ^ (4 * (v243 ^ 0x44420A11)) & 0xDCC67AF0;
  v246 = (v245 ^ 0x50006AC0) & (16 * v244) ^ v244;
  v247 = ((16 * (v245 ^ 0x8CC61031)) ^ 0xCC67AF10) & (v245 ^ 0x8CC61031) ^ (16 * (v245 ^ 0x8CC61031)) & 0xDCC67AD0;
  v248 = v246 ^ 0xDCC67AF1 ^ (v247 ^ 0xCC462A00) & (v246 << 8);
  v249 = (((4 * ((v248 << 16) & 0xCCCCCCCC ^ v248 ^ ((v248 << 16) ^ 0x2AE10000) & (((v247 ^ 0x108050E1) << 8) & 0x1CC60000 ^ (((v247 ^ 0x108050E1) << 8) ^ 0x67A0000) & (v247 ^ 0x108050E1) ^ 0x88888888))) ^ (2 * v241)) & 0xBB850988 ^ 0xB0850808) + (v241 ^ ((v241 ^ 0x9D683530) + 1325877215) ^ ((v241 ^ 0xC542A8C1) + 388880944) ^ ((v241 ^ 0xA69E75F) - 670657102) ^ ((v241 ^ 0x7FD3F7BF) - 1380154030) ^ 0x705209D5);
  v250 = BYTE2(v237) ^ 0x56;
  v251 = *(v46 + 4 * ((v240 ^ 0xF7) + ((2 * (v240 & 0xF)) ^ 0xFFFFFFF1) + 16)) + 788097970;
  v252 = v251 ^ *(v47 + 4 * (BYTE1(v237) ^ 0xA0u)) ^ (v251 >> 2) ^ (v251 >> 6) ^ __ROR4__(__ROR4__(HIBYTE(v214) ^ *(v38 + 4 * (HIBYTE(v214) ^ 0xDC)) ^ v249 ^ 0x629B913F ^ (4 * v249) & 0x21F84244, 12) ^ 0xA11F49FD, 20);
  LOBYTE(v185) = v237 ^ HIBYTE(v204);
  v237 >>= 24;
  v253 = *(v39 + 4 * v250) + 808581043;
  v254 = *(v46 + 4 * (v214 ^ 0xA8u)) + 788097970;
  v255 = v253 ^ *(v47 + 4 * (BYTE1(v240) ^ 0xCBu)) ^ v254 ^ (4 * v253) & 0x21F84244 ^ *(v38 + 4 * (HIBYTE(v233) ^ 0xE7)) ^ (v254 >> 2) ^ (v254 >> 6);
  v256 = ~HIWORD(v240);
  v257 = HIBYTE(v240);
  v258 = *(v38 + 4 * (HIBYTE(v240) ^ 0xEC));
  v259 = *(v39 + 4 * v256) + 808581043;
  v260 = *(v46 + 4 * (v233 ^ 0xEDu)) + 788097970;
  v261 = *(v47 + 4 * (((v214 ^ 0x65C409A7) >> (v308 & 8 ^ 8) >> (v308 & 8)) ^ 0x5Au)) ^ v259 ^ (4 * v259) & 0x21F84244 ^ v260 ^ (v260 >> 2) ^ (v260 >> 6) ^ __ROR4__(__ROR4__(((-(v237 ^ 0x22) ^ (1471942674 - (v237 ^ 0x57BC1030)) ^ 0x7C68AC0E ^ ((v237 ^ 0x22) - 2 * ((v237 ^ 0x22) & 0x1F ^ v237 & 0x11111111) + 2087234574)) + 1471942674) ^ *(v38 + 4 * (v237 ^ 0x9B)), 9) ^ 0x1F21A487, 23);
  v262 = v257 ^ 0x57BC1047 ^ -(v257 ^ 0x57BC1047) ^ ((((v258 ^ 0xAE733836) + 1368180682) ^ ((v258 ^ 0x1AE40FD3) - 451153875) ^ ((v258 ^ 0xCA0E173F) + 905046209)) - (((v258 ^ v257 ^ 0xC9D47609) - 1570561958) ^ ((v258 ^ v257 ^ 0x5293E43D) + 958706286) ^ ((v258 ^ v257 ^ 0xB262A2A9) - 640289542)) - 1054111832);
  v263 = *(v39 + 4 * (BYTE2(v214) ^ 0xC7u)) + 808581043;
  v264 = *(v46 + 4 * (v185 ^ 0x36u)) + 788097970;
  v265 = v263 ^ (4 * v263) & 0x21F84244 ^ v264 ^ *(v47 + 4 * (BYTE1(v233) ^ 0x79u)) ^ (v264 >> 2) ^ (v264 >> 6) ^ ((((v258 ^ 0xE2F85B8F) + 487040113) ^ ((v258 ^ 0x52CEE507) - 1389290759) ^ ((v258 ^ 0xCEAF9E52) + 827351470)) + 1999091284 + (((v262 ^ 0xDDDBF2A6) - 626354140) ^ ((v262 ^ 0x688B383F) + 1878676155) ^ ((v262 ^ 0xB550CA99) - 1306419171)));
  v266 = *(v39 + 4 * BYTE2(v255)) + 808581043;
  v267 = HIBYTE(v252);
  v268 = *(v46 + 4 * (v265 ^ 0x26u)) + 788097970;
  v269 = v266 ^ (4 * v266) & 0x21F84244 ^ *(v47 + 4 * (BYTE1(v261) ^ 0x87u)) ^ v268 ^ *(v38 + 4 * (HIBYTE(v252) ^ 0xBB)) ^ (v268 >> 2) ^ (v268 >> 6);
  v270 = *(v47 + 4 * (BYTE1(v265) ^ 2u));
  v271 = *(v39 + 4 * (BYTE2(v261) ^ 0xFAu)) + 808581043;
  LODWORD(v164) = __ROR4__(HIBYTE(v255) ^ *(v38 + 4 * (HIBYTE(v255) ^ 0x72)) ^ v271 ^ (4 * v271) & 0x21F84244 ^ (((4 * (v270 & 0x1A15B599)) ^ 0x97EF6FDF) + ((2 * (v270 & 0x1A15B599)) ^ 0x34084810) + (((v270 ^ 0xF3BD42DC) + 205700388) ^ ((v270 ^ 0x4B2605BD) - 1260783037) ^ ((v270 ^ 0xC69D6B49) + 962761911)) - 1743003198) ^ 0x4379866A, 25);
  v272 = *(v46 + 4 * (v252 ^ 0xBCu)) + 788097970;
  v273 = v272 ^ (v272 >> 6) ^ (v272 >> 2) ^ __ROR4__(v164 ^ 0x8226231, 7);
  v274 = *(v46 + 4 * (v255 ^ HIBYTE(v233) ^ 0x22)) + 788097970;
  v275 = *(v39 + 4 * (BYTE2(v265) ^ 0x8Cu)) + 808581043;
  v276 = *(v38 + 4 * (HIBYTE(v261) ^ 0x12)) ^ HIBYTE(v261) ^ v275 ^ (4 * v275) & 0x21F84244 ^ ((v274 & 0x59A2AC29 ^ 0x36EC0C76 ^ ((v274 >> 6) ^ (v274 >> 2)) & 0x19A2AC29) & ~(((v274 >> 6) ^ (v274 >> 2)) & 0x265D53D6 ^ v274 & 0xA65D53D6) | (((v274 >> 6) ^ (v274 >> 2)) & 0x265D53D6 ^ v274 & 0xA65D53D6) & 0x80115380) ^ *(v47 + 4 * (BYTE1(v252) ^ 0x1Bu));
  v277 = *(v39 + 4 * (BYTE2(v252) ^ 0xA0u)) + 808581043;
  v278 = *(v46 + 4 * (v261 ^ 0x6Fu)) + 788097970;
  v279 = HIBYTE(v265) ^ *(v47 + 4 * (BYTE1(v255) ^ 0x59u)) ^ *(v38 + 4 * (HIBYTE(v265) ^ 0x2C)) ^ v277 ^ v278 ^ (4 * v277) & 0x21F84244 ^ (v278 >> 2) ^ (v278 >> 6);
  v280 = *(&off_1010A0B50 + (v36 ^ 0x6112)) - 80885035;
  v281 = *(&off_1010A0B50 + (v36 ^ 0x64D4)) - 1890814203;
  v282 = *(&off_1010A0B50 + v36 - 20908) - 263652499;
  v283 = *(&off_1010A0B50 + (v36 ^ 0x6578)) - 413911679;
  v284 = *&v282[4 * (BYTE1(v276) ^ 0x6A)] ^ (*&v280[4 * (HIBYTE(v269) ^ 0x22)] - 1404034818) ^ (*&v281[4 * (BYTE2(v273) ^ 0x18)] - ((v273 >> 15) & 0x12E) + 1348598671) ^ ((v279 ^ 0xC94472B3) - 150788947 + *&v283[4 * (v279 ^ 0xF3)]);
  v285 = v267 ^ v269;
  if ((v279 & 0x40000) != 0)
  {
    v286 = 4;
  }

  else
  {
    v286 = -4;
  }

  v287 = *&v282[4 * (BYTE1(v279) ^ 0x34)] ^ (*&v280[4 * (HIBYTE(v273) ^ 0xFA)] - 1404034818) ^ ((BYTE2(v276) ^ 0xFFFFFF7F) + (BYTE2(v276) ^ 0xCC2B2F17) - 2076783623 + *&v281[4 * (BYTE2(v276) ^ 0xD8)]) ^ ((v285 ^ 0xC9447281) - 150788947 + *&v283[4 * (v285 ^ 0xC1)]);
  v288 = ((((BYTE2(v279) ^ 0x9C) + v286) ^ 0xFFFFFFFB) + (((BYTE2(v279) ^ 0x9C) + v286) ^ 0xCC2B2F93) - 2076783623 + *&v281[4 * (((BYTE2(v279) ^ 0x9C) + v286) ^ 0x5C)]) ^ (*&v280[4 * (HIBYTE(v276) ^ 0x60)] - 1404034818);
  v289 = *&v282[4 * (BYTE1(v269) ^ 0xA6)];
  v290 = ((-(v289 ^ 0x6F25C7C2) ^ ((v289 ^ 0x6F25C7C2) - 2 * ((v289 ^ 0x6F25C7C2) & 0xA21D1BD ^ v289 & 0x20) + 169988509) ^ 0xA21D19D ^ (v288 - (v288 ^ v289 ^ 0x6F25C7C2))) + v288) ^ ((v273 ^ 0xC944725F) - 150788947 + *&v283[4 * (v273 ^ 0x1F)]);
  v291 = (*&v280[4 * (HIBYTE(v279) ^ 0xBC)] - 1404034818) ^ (((2 * (HIWORD(v269) ^ 0xEE63)) & 0xD0) - ((2 * (HIWORD(v269) ^ 0xEE63)) & 0x1FE) + 1348598671 + *&v281[4 * (BYTE2(v269) ^ 0x3B)]) ^ *&v282[4 * (BYTE1(v273) ^ 0xC4)];
  v292 = (v276 ^ 0xC9447261) - 150788947 + *&v283[4 * (v276 ^ 0x21)];
  v293 = ((v290 - (v290 ^ 0xD3F8330)) ^ 0xFFFFFFE0) + v290;
  v294 = *(&off_1010A0B50 + v36 - 22631) - 1587428646;
  v295 = v294[BYTE2(v284) ^ 0xBLL];
  v309[1] = ((v295 >> 6) | (4 * v295)) ^ (v295 & 1 | 0xC) ^ 0x20;
  v296 = *(&off_1010A0B50 + (v36 ^ 0x646B)) - 852373258;
  v309[11] = v296[(((v290 - (v290 ^ 0x30)) ^ 0xE0) + v290) ^ 0xC8] ^ 0x79;
  v297 = *(&off_1010A0B50 + v36 - 25072) - 804349687;
  v309[6] = v297[BYTE1(v287) ^ 0xBFLL] ^ 0xB8;
  v298 = *(&off_1010A0B50 + (v36 ^ 0x6D1B)) - 625384826;
  v299 = v291 ^ v292;
  v309[8] = (v298[HIBYTE(v293) ^ 0x14] + 4) ^ 0x71;
  v309[14] = v297[BYTE1(v299) ^ 0xD8] ^ 0xE0;
  v300 = v294[BYTE2(v293) ^ 0xDELL];
  v309[9] = ((v300 >> 6) | (4 * v300)) ^ v300 & 1 ^ 0xC1;
  LOBYTE(v300) = (~v299 & 0x10) + (v299 & 0xD6 ^ 0xC0);
  v309[15] = ((v300 ^ v299) & 0x42 | v299 & 0x84) ^ (v300 & 0xB4 | 1) ^ v296[v299 ^ 0xC4] ^ 0xF1;
  v309[10] = v297[BYTE1(v293) ^ 0x54] ^ 0xC5;
  v301 = v294[BYTE2(v299) ^ 0x7BLL];
  v309[13] = ((v301 >> 6) | (4 * v301)) ^ v301 & 1 ^ 0xEB;
  v309[12] = (v298[HIBYTE(v299) ^ 0x49] + 4) ^ 0x79;
  v309[2] = v297[BYTE1(v284) ^ 0x97] ^ 0xC7;
  v302 = v298[HIBYTE(v284) ^ 0x31];
  LOBYTE(v289) = v302 & 0xA5 ^ 4;
  LOBYTE(v301) = ((4 * ((v302 ^ 0x10) & (2 * ((v302 ^ 0x1C) & (2 * ((v302 ^ 0x1C) & (2 * ((v302 ^ 0x1C) & (2 * ((v302 ^ 0x1C) & (2 * v289) | v289)) ^ v289)) ^ v289)) ^ v289)) ^ v302 & 0xA5)) ^ (2 * v302)) & 0xCF;
  *v309 = (v302 + (v301 ^ 0xB5) + (v301 ^ 0x4A) + 5) ^ 0x5E;
  v303 = v298[HIBYTE(v287) ^ 0xDCLL];
  v304 = v287 ^ 0x51;
  if ((v304 & 0x10) != 0)
  {
    v305 = -16;
  }

  else
  {
    v305 = 16;
  }

  v309[4] = (v303 + 4) ^ 0x81;
  v309[7] = v296[(v305 + v304) ^ 0x61] ^ 0xAA;
  v309[3] = v296[v284 ^ 0x6ELL] ^ 0xC7;
  v306 = v294[BYTE2(v287) ^ 0xE8];
  v309[5] = ((v306 >> 6) | (4 * v306)) ^ v306 & 1 ^ 0xF2;
  return (*(v310 + 8 * v36))(a1);
}

uint64_t sub_10089483C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int64x2_t a47)
{
  v72.i64[0] = a4 + v50;
  v72.i64[1] = a3 + v50;
  v73.i64[0] = a6 + v50;
  v73.i64[1] = a5 + v50;
  v74.i64[0] = v55 + v50;
  v74.i64[1] = v54 + v50;
  v75.i64[0] = v47 + v50;
  v75.i64[1] = a8 + v50 + (v48 ^ v52);
  v76 = vandq_s8(v75, *&STACK[0x4B0]);
  v77 = vandq_s8(v74, *&STACK[0x4B0]);
  v78 = vandq_s8(v73, *&STACK[0x4B0]);
  v79 = vandq_s8(v72, *&STACK[0x4B0]);
  v80 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v81 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v82 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v83 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v84 = vdupq_n_s64(v51);
  v85 = vaddq_s64(v83, v56);
  v86 = vaddq_s64(v82, v56);
  v87 = vaddq_s64(v81, v56);
  v88 = vaddq_s64(v80, v56);
  v89 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v87, v87), v60), v87), v57);
  v90 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v88, v88), v60), v88), v57);
  v91 = veorq_s8(v90, v70);
  v92 = veorq_s8(v89, v70);
  v93 = veorq_s8(v89, v69);
  v94 = veorq_s8(v90, v69);
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93), v64);
  v96 = vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL);
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v94), v64);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v99 = veorq_s8(v95, v96);
  v100 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v99);
  v102 = veorq_s8(vaddq_s64(v100, v98), v68);
  v103 = veorq_s8(v101, v68);
  v104 = vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL);
  v105 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v106 = veorq_s8(v102, v104);
  v107 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v106);
  v109 = veorq_s8(vaddq_s64(v107, v105), v58);
  v110 = veorq_s8(v108, v58);
  v111 = vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL);
  v112 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v113 = veorq_s8(v109, v111);
  v114 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v113);
  v116 = veorq_s8(vaddq_s64(v114, v112), v59);
  v117 = vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL);
  v118 = veorq_s8(v115, v59);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v120 = veorq_s8(v116, v117);
  v121 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v120);
  v123 = vaddq_s64(v121, v119);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v123, v123), v67), v123), v63), v65);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v122, v122), v67), v122), v63), v65);
  v126 = vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL);
  v127 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v128 = veorq_s8(v124, v126);
  v129 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v128);
  v131 = veorq_s8(vaddq_s64(v129, v127), v61);
  v132 = vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL);
  v133 = veorq_s8(v130, v61);
  v134 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v135 = veorq_s8(v131, v132);
  v136 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v137 = vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL);
  v138 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v86, v86), v60), v86), v57);
  v139 = vaddq_s64(v137, v135);
  v140 = vaddq_s64(v136, v134);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v140, v140), v71), v140), a47), v62);
  v178.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v139, v139), v71), v139), a47), v62), vnegq_s64(vandq_s8(vshlq_n_s64(v72, 3uLL), v84)));
  v178.val[2] = vshlq_u64(v141, vnegq_s64(vandq_s8(vshlq_n_s64(v73, 3uLL), v84)));
  v142 = veorq_s8(v138, v70);
  v143 = veorq_s8(v138, v69);
  v144 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v143), v64);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v146 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145), v68);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v148 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147), v58);
  v149 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v150 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v149), v59);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151);
  v153 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v152, v152), v67), v152), v63), v65);
  v154 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v155 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v154), v61);
  v156 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL)));
  v157 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v85, v85), v60), v85), v57);
  v178.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v156, v156), v71), v156), a47), v62), vnegq_s64(vandq_s8(vshlq_n_s64(v74, 3uLL), v84)));
  v158 = veorq_s8(v157, v70);
  v159 = veorq_s8(v157, v69);
  v160 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159), v64);
  v161 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161), v68);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), v58);
  v165 = vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL);
  v166 = vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL);
  v167 = veorq_s8(v164, v165);
  v168 = veorq_s8(vaddq_s64(v166, v167), v59);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v170, v170), v67), v170), v63), v65);
  v172 = vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL);
  v173 = vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL);
  v174 = veorq_s8(v171, v172);
  v175 = veorq_s8(vaddq_s64(v173, v174), v61);
  v176 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL)));
  v178.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v176, v176), v71), v176), a47), v62), vnegq_s64(vandq_s8(vshlq_n_s64(v75, 3uLL), v84)));
  *(a3 + v50) = vrev64_s8(*&vqtbl4q_s8(v178, v66));
  return (*(a7 + 8 * ((((a2 | (a1 + v50)) >= 0) * v53) ^ v49)))();
}

uint64_t sub_100894D6C()
{
  v2 = STACK[0x1BC8];
  v3 = STACK[0x1478];
  *v2 = STACK[0x1358];
  *(v2 + 8) = v3;
  v4 = STACK[0x1C74];
  *(v2 + 16) = STACK[0x190C];
  *(v2 + 20) = v4;
  return (*(v1 + 8 * (((STACK[0x868] != 0) * ((((v0 - 1650511114) | 0xB6) ^ 0xFFFFC8A4) + ((v0 - 1650510910) | 0x30C3))) ^ (v0 - 1650498891))))();
}

uint64_t sub_100894E14()
{
  v3 = (*(v2 + 8 * (v0 + 41860)))();
  *(v1 + 232) = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_100894E4C()
{
  v1 = STACK[0xA04];
  LODWORD(STACK[0xA04]) += 4;
  LODWORD(STACK[0x2390]) = v1 + LODWORD(STACK[0x24DC]) - 1322345222;
  LODWORD(STACK[0x2394]) = *(STACK[0x1EC0] + 64);
  v2 = *(STACK[0x19D8] + 32) + 1127727925;
  LODWORD(STACK[0x2398]) = ((v2 ^ 0xB7856EBD) + 189616761) ^ v2 ^ ((v2 ^ 0x921EE2C5) + 785833473) ^ ((v2 ^ 0x9953A225) + 630955745) ^ ((v2 ^ 0xFFFFED67) + 1127731619) ^ 0xF1C46E0E;
  return (*(v0 + 41408))();
}

uint64_t sub_100895098()
{
  v4 = STACK[0x1FA8];
  v5 = STACK[0x1FA8] + v1 - 0x778B218E0E916E9;
  STACK[0x7E0] = v5;
  STACK[0x1D18] = v5;
  STACK[0x1FA8] = v4 + 32;
  v6 = *(&off_1010A0B50 + (v0 ^ 0x6260DA0D));
  STACK[0x790] = v6;
  LODWORD(v6) = *(v6 - 775311879);
  STACK[0x2708] = 0xD53349894C3BF956;
  LODWORD(STACK[0x2000]) = v6;
  v7 = *(*(&off_1010A0B50 + (v0 ^ 0x6260D1A4)) - 586084794);
  v8 = 634647737 * ((v3 - 256) ^ 0xDADBAFEF6D962FFCLL);
  *(v3 - 244) = v0 - 2044118703 + v8;
  *(v3 - 224) = v0 - v8 + 1414276286;
  *(v3 - 220) = ((v0 - 2044118703) ^ 0x30) - v8;
  STACK[0x780] = v7;
  *(v3 - 240) = v8;
  *(v3 - 232) = v7 - v8;
  *(v3 - 256) = -634647737 * ((v3 - 256) ^ 0x6D962FFC);
  *(v3 - 252) = ((v0 - 2044118703) ^ 0x1338) - v8;
  v9 = (*(v2 + 8 * (v0 ^ 0x62601ABE)))(v3 - 256);
  return (*(v2 + 8 * *(v3 - 248)))(v9);
}

uint64_t sub_10089522C()
{
  LOBYTE(STACK[0x181F]) = v0 >> 28 == 6;
  v2 = (*(v1 + 414912))(LODWORD(STACK[0x1424]) ^ 0xE9D5C711);
  STACK[0x1280] = v2;
  if (v2)
  {
    v3 = (v0 & 0xFFFFFFE) == 165660432;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  return (*(v1 + 8 * ((45477 * v4) ^ 0x1F0Bu)))();
}

uint64_t sub_1008953DC()
{
  *(v2 - 248) = STACK[0x2078];
  *(v2 - 256) = (297845113 * (((v0 ^ 0x6E90B770) - 2 * ((v0 ^ 0x6E90B770) & 0x34ECDF40) - 1259544764) ^ 0xAD4F74AA)) ^ 0x90A0;
  v3 = (*(v1 + 8 * LODWORD(STACK[0x450])))(v2 - 256);
  STACK[0x2078] = 0;
  return (*(v1 + 146968))(v3);
}

uint64_t sub_100895688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v4 - 1497668662);
  v7 = a3 + v6 - 1;
  if (v7 >= v6)
  {
    v7 = v6;
  }

  return (*(v5 + 8 * (v3 ^ 0xA03A | ((a3 + v6 - v7 < ((((v3 ^ 0xA03A) - 9226) | 0x8420u) - 10730) - 28087) << 6))))();
}

uint64_t sub_1008957FC()
{
  v5 = *(v3 - 0x217E172EFA1E81CLL);
  v6 = 139493411 * ((((2 * (v4 - 256)) | 0x41DE4AD8) - (v4 - 256) - 552543596) ^ 0x2CC2C429);
  LOWORD(STACK[0x2F64]) = -32733 * ((((2 * (v4 - 256)) | 0x4AD8) - (v4 - 256) - 9580) ^ 0xC429) + (v0 ^ 0xFF7C) + ((2 * v0) & 0xFEF8) + 28124;
  *(v4 - 232) = v5;
  *(v4 - 240) = v6 - 466197451;
  *(v4 - 256) = v1 - v6 + 28324;
  *(v4 - 248) = 0;
  *(v4 - 224) = v6 + 1133646169;
  v7 = (*(v2 + 8 * (v1 + 34911)))(v4 - 256);
  v8 = *(v4 - 216);
  LODWORD(STACK[0x1FEC]) = v8;
  v9 = *(v3 - 0x217E172EFA1E81CLL);
  STACK[0x17C8] = v9;
  v10 = STACK[0x1428];
  STACK[0x1958] = &STACK[0x2720] + STACK[0x1428];
  STACK[0x1428] = v10 + 32;
  if (v9)
  {
    v11 = v8 == 1497668682;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  return (*(v2 + 8 * ((v12 * ((((v1 - 11268) | 0x2151) + 28264) ^ 0xA644)) ^ v1)))(v7);
}

uint64_t sub_100895AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 136) = v18 - (((((v19 - 136) | 0x57C5674E) ^ 0xFFFFFFFE) - (~(v19 - 136) | 0xA83A98B1)) ^ 0x3FE1AA1A) * v17 + 13963;
  *(v19 - 128) = v15;
  *(v19 - 112) = &a15;
  v20 = (*(v16 + 8 * (v18 ^ 0xE4F7)))(v19 - 136);
  return (*(v16 + 8 * ((23 * (*(v19 - 120) > (v18 ^ 0x1F70u) + 989308526)) ^ v18)))(v20);
}

uint64_t sub_100895C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(v9 + 8);
  *(v10 + 960) = *(a8 + 8 * v8);
  return (*(a8 + 8 * ((v8 + 8765) ^ v8)))(v11);
}

uint64_t sub_100895C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17)
{
  *(v19 - 216) = (906386353 * ((((v19 - 216) | 0x8EB025BE) - (v19 - 216) + ((v19 - 216) & 0x714FDA40)) ^ 0xBFB1E89A)) ^ 0x3325;
  *(v19 - 200) = &STACK[0x504];
  *(v19 - 208) = 23473 * ((((v19 - 216) | 0x25BE) - (v19 - 216) + ((v19 - 216) & 0xDA40)) ^ 0xE89A) + 18064;
  v20 = (*(v18 + 8 * a17))(v19 - 216);
  v21 = (LOBYTE(STACK[0x504]) << 24) | (LOBYTE(STACK[0x505]) << 16) | (LOBYTE(STACK[0x506]) << 8);
  v22 = LOBYTE(STACK[0x507]) - ((2 * LOBYTE(STACK[0x507])) & 0xFFE7) - 2304525;
  v23 = (((v21 - ((2 * v21) & 0x70B9E600) - 1201867930) ^ 0xFF5C17F2) & (v22 ^ 0x232A0C) ^ v22 & 0x9004136A) >> 1;
  *(v17 + 16) = (((v23 ^ 0x9F908A14) - 1588391600) ^ ((v23 ^ 0x72A824EC) + 1282129848) ^ ((v23 ^ 0x86BAD403) - 1200009383)) - 1430380960;
  return (*(v18 + 83536))(v20);
}

void sub_100895DFC(uint64_t a1)
{
  v1 = *a1 + 297845113 * (a1 ^ 0x77331C9E);
  v93 = a1;
  v2 = *(a1 + 32);
  v3 = *(&off_1010A0B50 + v1 - 18004) - 810145054;
  (*&v3[8 * (v1 ^ 0x8043)])(v136, 0, 20);
  v4 = *&v3[8 * v1 + 263048];
  v5 = *(&off_1010A0B50 + v1 - 14657) - 1045463923;
  v92 = v2;
  v6 = v4(v2, v5, 4);
  v91 = ((v6 << (((v1 + 75) & 0xFB) + 38)) & 0xD9DFFDF6) + (v6 ^ 0xECEFFEFB);
  (*&v3[8 * (v1 ^ 0x8043)])(v137, 0, 1024);
  v7 = (v125 ^ 0x7EE3FBEFBFFE7F7BLL) - 0x7EE3FBEFBFFE7F7BLL + ((2 * v125) & 0xFDC7F7DF7FFCFEF0);
  v8 = ((2 * (v7 % 0x25)) & 0x2C) + ((v7 % 0x25) ^ 0x7FE9EFFBFC9BCFD6);
  v9 = v8 - 0x7FE9EFFBFC9BCFC7;
  v10 = v8 - 0x7FE9EFFB0A6CE8CBLL;
  v11 = v8 + 0x48FEF3C20228CF1DLL;
  if (v10 < 0xF22EE70B)
  {
    v11 = 0xC8E8E3BDFEC49EF3;
  }

  v12 = (((v11 ^ 0xDF73EEB180A88729) - 0x179B0D0C7E6C19C9) ^ v11 ^ ((v11 ^ 0x737A1C42CE46185BLL) + 0x446D0000CF7D7945) ^ ((v11 ^ 0x1B8268915ED5F06ELL) + 0x2C9574D35FEE9172) ^ ((v11 ^ 0x7F6379DFEEFFF1FCLL) + 0x4874659DEFC490E4)) & 0xFFFFFFFFFFFFFFFCLL;
  v13 = ((v12 ^ 0xED217FEA996FAA28) - 0x48D6EC1EBCEC9D2DLL) ^ ((v12 ^ 0x4DFC4D5E17C667F2) + 0x17F42155CDBAAF09) ^ ((v12 ^ 0x6835D109706D533ALL) + 0x323DBD02AA119BC1);
  v102 = v13 + 0x6D1F7049DB47AA20;
  v103 = v13;
  v14 = v13 + 0x6D1F704A4CB5622CLL;
  v88 = (&v129 ^ 0x5D37FFFEFA7BC6EFLL) - 0x5100043442434406 + ((2 * &v129) & 0xBA6FFFFDF4F78DD0);
  v94 = (&v130 ^ 0xFFEB61ABEEB7BBFFLL) + 0x7FDFBFF5517D5498 + ((2 * &v130) & 0xFFD6C357DD6F77F0);
  v87 = (v128 ^ 0x6F3FE5FE8F9F57BDLL) - 0xF32410801874000 + ((2 * v128) & 0xDE7FCBFD1F3EAF70);
  v89 = (v133 ^ 0x67EB3F7C23E4BF67) - 0x201140022C08405 + ((2 * v133) & 0xCFD67EF847C97EC0);
  v86 = (&v131 ^ 0xC2BB78EC972CE70FLL) + 0x3F65DF97EBFF3BF7 + ((2 * &v131) & 0x8576F1D92E59CE10);
  v15 = vdupq_n_s64((&v127 ^ 0xFFFDFEDBDF3F3AF1) + 0x1FA33FEEABEFFFFFLL + ((2 * &v127) & 0xFFFBFDB7BE7E75E0));
  v16 = vorrq_s8(v15, xmmword_100F52380);
  v17 = vorrq_s8(v15, xmmword_100F52390);
  v18 = vdupq_n_s64(0x2801B1E3E06CC95EuLL);
  v19 = veorq_s8(v17, v18);
  v20 = vdupq_n_s64(0xC85F70D694BC0C52);
  v21 = vaddq_s64(veorq_s8(v16, v18), v20);
  v22 = vaddq_s64(v19, v20);
  v23 = vdupq_n_s64(0xC9614A10FCC174EFLL);
  v24 = veorq_s8(v16, v23);
  v25 = vdupq_n_s64(0x293F8B258811B1E1uLL);
  v26 = vaddq_s64(veorq_s8(v17, v23), v25);
  v27 = vaddq_s64(v24, v25);
  v28 = vdupq_n_s64(0x35E1A5160677EBCuLL);
  v29 = veorq_s8(v17, v28);
  v30 = vdupq_n_s64(0xE300DB6414B7BBB4);
  v31 = vaddq_s64(veorq_s8(v16, v28), v30);
  v32 = vaddq_s64(v29, v30);
  v33 = vdupq_n_s64(0xFD9FDF68F7E5F9FDLL);
  v34 = veorq_s8(v16, v33);
  v35 = vdupq_n_s64(0xF3uLL);
  v36 = veorq_s8(v16, v21);
  v37 = vdupq_n_s64(0x4AuLL);
  v38 = veorq_s8(veorq_s8(veorq_s8(v17, v22), veorq_s8(v26, v32)), veorq_s8(vaddq_s64(veorq_s8(v17, v33), v35), v37));
  v39 = veorq_s8(veorq_s8(v36, veorq_s8(v27, v31)), veorq_s8(vaddq_s64(v34, v35), v37));
  v40 = vaddq_s64(v15, xmmword_100F52E00);
  v41 = vaddq_s64(v15, xmmword_100F52E10);
  v42 = (v39.i32[2] * v41.i32[2]);
  v43 = (v39.i32[0] * v41.i32[0]);
  v44 = v38.i32[2];
  LODWORD(v13) = v40.i32[2];
  v45 = v38.i32[0];
  v46 = v40.i32[0];
  v47 = vdupq_n_s64((v132 ^ 0x7FFFCDB87DFF8BFDLL) - 0x49214038545E0201 + ((2 * v132) & 0xFFFF9B70FBFF17F0));
  v48 = vorrq_s8(v47, xmmword_100F52380);
  v49 = vdupq_n_s64(0xC00CEE56B8CE0A74);
  v50 = veorq_s8(v48, v49);
  v51 = veorq_s8(vandq_s8(vaddq_s64(v47, v47), vdupq_n_s64(0x9242E4FFACBCEC08)), vdupq_n_s64(0xC921727FD65E7604));
  v52 = vandq_s8(v51, v48);
  v53 = vaddq_s64(v50, v50);
  v54 = vdupq_n_s64(0x125B3852DD20F8E0uLL);
  v55 = vandq_s8(veorq_s8(v53, v54), v50);
  v56 = vdupq_n_s64(0x92D9C296E907C70uLL);
  v57 = vandq_s8(v53, v56);
  v58 = vdupq_n_s64(0x924842922900410uLL);
  v59 = veorq_s8(v55, v57);
  v60 = veorq_s8(v59, v58);
  v61 = vdupq_n_s64(0x291C0048007C20uLL);
  v62 = veorq_s8(vandq_s8(veorq_s8(v59, v61), vshlq_n_s64(v52, 2uLL)), v52);
  v63 = vshlq_n_s64(v60, 2uLL);
  v64 = vdupq_n_s64(0x24B670A5BA41F1C0uLL);
  v65 = vdupq_n_s64(0x2410212A007050uLL);
  v66 = vandq_s8(veorq_s8(veorq_s8(vandq_s8(v63, v56), v65), vandq_s8(veorq_s8(v63, v64), v60)), vshlq_n_s64(v62, 4uLL));
  v63.i64[0] = v43;
  v67 = veorq_s8(v66, v62);
  v68 = vdupq_n_s64(0xBEuLL);
  v69 = veorq_s8(veorq_s8(v48, v68), vaddq_s64(v67, v67));
  v48.i64[0] = (v45 * v46);
  v48.i64[1] = (v44 * v13);
  *v48.i8 = vmovn_s64(v48);
  v63.i64[1] = v42;
  *v67.i8 = vmovn_s64(v63);
  v70 = vaddq_s64(v47, xmmword_100F52E30);
  v71 = v70.i32[2];
  v72 = v70.i32[0];
  v73 = vorrq_s8(v47, xmmword_100F52390);
  v74 = veorq_s8(v73, v49);
  v75 = vaddq_s64(v74, v74);
  v76 = vandq_s8(veorq_s8(v75, v54), v74);
  v74.i16[0] = v67.i16[2];
  v77 = vandq_s8(v51, v73);
  v78 = veorq_s8(v76, vandq_s8(v75, v56));
  v79 = veorq_s8(v78, v58);
  v80 = veorq_s8(vandq_s8(veorq_s8(v78, v61), vshlq_n_s64(v77, 2uLL)), v77);
  v81 = vshlq_n_s64(v79, 2uLL);
  v82 = veorq_s8(vandq_s8(veorq_s8(veorq_s8(vandq_s8(v81, v56), v65), vandq_s8(veorq_s8(v81, v64), v79)), vshlq_n_s64(v80, 4uLL)), v80);
  v83 = veorq_s8(veorq_s8(v73, v68), vaddq_s64(v82, v82));
  v81.i64[0] = (v69.i32[0] * v72);
  v84 = vaddq_s64(v47, xmmword_100F52E20);
  v84.i64[0] = (v83.i32[0] * v84.i32[0]);
  v84.i64[1] = (v83.i32[2] * v84.i32[2]);
  *v84.i8 = vmovn_s64(v84);
  v81.i64[1] = (v69.i32[2] * v71);
  *v81.i8 = vmovn_s64(v81);
  v83.i16[0] = v81.i16[2];
  v109 = v138 ^ 0x8CDC2A72D48D1BCFLL;
  v107 = v1 - 18136;
  v98 = v1 - 19091;
  v106 = (v1 - 19091) ^ 0x56EB;
  v122 = v138 | 0x1B6D5C1A0A67CD86;
  v121 = v1 - 1608583301;
  v120 = &v138[-2 * (v138 & 0x1A7DFAF4A6800B30) - 0x6582050B597FF4CCLL] ^ 0x34F7073A9781C610;
  v118 = v1 - 18940;
  v117 = 2782 * (v1 ^ 0x4A97);
  v119 = 1603510583 * ((-2 - ((~v138 | 0xB744DE10223CDB49) + (v138 | 0x48BB21EFDDC324B6))) ^ 0x88B5C9FCB5E7E9E2);
  v116 = v1 - 18946;
  v105 = ((v138 ^ 0x63F3E55B75F81D00 | 0x57BFA36CDF90D3E4) - (v138 ^ 0x63F3E55B75F81D00) + ((v138 ^ 0x63F3E55B75F81D00) & 0xA8405C93206F2C18)) ^ 0x9AC6BBF99B6903C0;
  v115 = v1 - 19087;
  v74.i16[1] = v67.i16[0];
  v74.i16[2] = v48.i16[2];
  v126 = 8;
  v96 = (v1 + 1462541063) ^ (v1 - 13973);
  v97 = v1 - 13973;
  v83.i16[1] = v81.i16[0];
  v83.i16[2] = v84.i16[2];
  v95 = v1 + 17555;
  v74.i16[3] = v48.i16[0];
  v134 = v137;
  v83.i16[3] = v84.i16[0];
  *v74.f32 = vuzp1_s8(*v74.f32, *v74.f32);
  v99 = v74;
  *v74.f32 = vuzp1_s8(*v83.i8, *v74.f32);
  v90 = v74;
  v74.i64[0] = 0x100000001;
  v74.i64[1] = 0x100000001;
  v85 = *&v3[8 * v1];
  v114 = v1 + 19357;
  v113 = v1 - 18469;
  v112 = v1 - 12675;
  v124 = v1;
  v111 = v1 - 19092;
  v110 = 138702544;
  v123 = &v135;
  v108 = v1 - 14355;
  v100 = v14;
  v101 = v9;
  v104 = vnegq_f32(v74);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10089698C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X7>, __int16 a3@<W8>)
{
  v9[28] = a1;
  LODWORD(STACK[0xC98]) = v6;
  LOWORD(STACK[0xC9E]) = a3;
  LODWORD(STACK[0xCA0]) = v8;
  LODWORD(STACK[0xCA4]) = v3;
  v9[207] = v5;
  v9[208] = v7;
  return (*(a2 + 8 * (((a1 == 0) * (((v4 - 5119) ^ 0x9A60) + 4139 * (v4 ^ 0x13FF))) ^ v4)))();
}

uint64_t sub_1008969EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v23 - 128) = &a18;
  *(v23 - 120) = v20;
  *(v23 - 112) = v21 + 1012831759 * (((~(v23 - 144) & 0xCDB594A0) - (~(v23 - 144) | 0xCDB594A1)) ^ 0xDD26822B) + 1051037253;
  *(v23 - 144) = v22;
  *(v23 - 136) = &a18;
  (*(v19 + 8 * (v21 ^ 0xB94)))(v23 - 144);
  v24 = 906386353 * ((v23 - 144) ^ 0x3101CD24);
  *(v23 - 128) = a15;
  *(v23 - 144) = v21 - v24 - 6458;
  *(v23 - 140) = ((v18 - 1) ^ (((v18 - 1) ^ 0x4AB85E52) - 913817632) ^ (((v18 - 1) ^ 0xEAD6A823) + 1776732591) ^ (((v21 - 32931) | 0xBA0) + ((v21 - 31227) ^ (v18 - 1) ^ 0x235ED16C) - 1603360086) ^ (((v18 - 1) ^ 0xFFFFFFDF) + 2093981267) ^ 0x4DEC1FE1) + v24;
  v25 = (*(v19 + 8 * (v21 + 2848)))(v23 - 144);
  return (*(v19 + 8 * ((111 * (*(v23 - 136) != -1729168700)) ^ v21)))(v25);
}

uint64_t sub_100896D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, char a45)
{
  LODWORD(STACK[0xED0]) = 0;
  LODWORD(STACK[0xE38]) = 0;
  LODWORD(STACK[0xE00]) = 0;
  LODWORD(STACK[0xDF8]) = 0;
  LODWORD(STACK[0xE08]) = 0;
  LODWORD(STACK[0xDD8]) = 0;
  LODWORD(STACK[0xE28]) = 0;
  LODWORD(STACK[0xDC0]) = 0;
  LODWORD(STACK[0xDE0]) = 0;
  LODWORD(STACK[0xC18]) = LODWORD(STACK[0xBA8]) + LODWORD(STACK[0xCE0]);
  LODWORD(STACK[0xDB0]) = LODWORD(STACK[0xBA0]) - LODWORD(STACK[0xCE8]);
  v53 = STACK[0xE10];
  v54 = LODWORD(STACK[0xE10]) ^ ((LODWORD(STACK[0xE10]) ^ 0x9143B165) + 466846345) ^ ((LODWORD(STACK[0xE10]) ^ 0x8EAD41B4) + 71135834) ^ ((LODWORD(STACK[0xE10]) ^ 0x147ECB75) - 1628505959);
  v55 = (v45 - 168960015) & 0xEE2D7F8F;
  STACK[0xDB8] = v55;
  LODWORD(STACK[0xCD8]) = v47;
  v56 = v54 ^ v47 ^ ((v53 ^ 0x7EFFA632 ^ v55) - 194001828) ^ 0x134887DE;
  LODWORD(v55) = v53 + v52 + 554568713;
  v57 = v52 + v55 - 1770137573 + v56;
  LODWORD(STACK[0xDA0]) = v55 ^ 0xBC4EA1EE;
  v58 = v56 + (v55 ^ 0xBC4EA1EE);
  v59 = v58 - v57 - 1908514207;
  LODWORD(STACK[0xD10]) = v59;
  STACK[0xD88] = v45;
  v60 = v57 ^ v55;
  v61 = v57 ^ v55 ^ 0xE88CAD85 ^ (v58 - v57 - ((2 * v59) & 0xA98418D6) - 486510900);
  v62 = LODWORD(STACK[0xE88]) ^ a6 ^ ((a6 ^ 0x9CE1F19A) + 1658866402) ^ ((a6 ^ 0x6493B56) - 129466322) ^ ((a6 ^ 0x660919B7) - 1744264499) ^ ((a6 ^ 0xFD5F97FF) + 56503429) ^ 0xA7D4117;
  v63 = v50 + a6 + v50 + 1347018942 + v62;
  v64 = a6 + v50 - 1490694627;
  LODWORD(STACK[0xB28]) = v64 ^ 0xBC4EA1EE;
  v65 = v62 + (v64 ^ 0xBC4EA1EE);
  v66 = v65 - v63 - 1908514207;
  v67 = v63 ^ v64;
  v68 = v63 ^ v64 ^ 0x28A2F3E5 ^ (v66 - ((2 * v66) & 0x29D8A416) - 1796451829);
  v69 = (a7 - 1016590465 + v64) ^ v64;
  v70 = (v51 - 1194657222 + v55) ^ v55;
  LODWORD(v55) = v69 - ((2 * v67) ^ 0x789D43DC);
  v71 = v58 - ((2 * v58) & 0x6B38395A);
  v72 = v70 - ((2 * v60) ^ 0x789D43DC);
  LODWORD(STACK[0xB20]) = ((v69 ^ LODWORD(STACK[0xE40])) - v69) ^ ((v65 ^ LODWORD(STACK[0xE40])) - v65 - ((2 * ((v65 ^ LODWORD(STACK[0xE40])) - v65)) & 0x311FCE06) + 412083971) ^ 0x188FE703 ^ ((v46 ^ v70 ^ 0x359C1CAD ^ (v71 + 899423405) ^ LODWORD(STACK[0xE40])) - (v46 ^ v70 ^ 0x359C1CAD ^ (v71 + 899423405)));
  v73 = v63 - v55 + 952765977;
  LODWORD(STACK[0xD98]) = v73;
  v74 = (v68 + 224134135) ^ 0x575A51CE;
  LODWORD(STACK[0xD58]) = v74;
  v75 = v66 - v55 - 94161050;
  LODWORD(STACK[0xD38]) = v75;
  LODWORD(STACK[0xCF8]) = v66 - v55;
  v76 = (v74 - ((2 * v74) & 0xC7916084) + 1674096706) ^ v75 ^ 0x399307ED;
  v77 = v73 ^ v55;
  v78 = v73 ^ v55 ^ 0x522A0F64;
  LODWORD(STACK[0xDE8]) = v78;
  v79 = v78 - v76;
  LODWORD(STACK[0xDF0]) = (v78 - v76 - ((2 * (v78 - v76)) & 0xC7916084) + 1674096706) ^ v75 ^ 0x399307ED;
  v80 = STACK[0xE20];
  LODWORD(STACK[0xE40]) = LODWORD(STACK[0x948]) + LODWORD(STACK[0xE20]) + v61;
  v81 = v57 - v72 + 952765977;
  v82 = STACK[0xD10];
  v83 = LODWORD(STACK[0xD10]) - v72;
  v84 = v83 ^ 0xBCF3420F ^ v81 ^ v72;
  LODWORD(STACK[0xCC8]) = v84;
  v85 = v81 ^ v72 ^ 0x522A0F64;
  v61 += 224134135;
  LODWORD(STACK[0xCD0]) = v61;
  LODWORD(STACK[0xD80]) = v61 ^ 0x575A51CE;
  v86 = (v61 ^ 0x575A51CE) - ((2 * (v61 ^ 0x575A51CE)) & 0x50AA077A) + 676660157;
  LODWORD(STACK[0xD30]) = v83 - 94161050;
  v87 = (v83 - 94161050) ^ 0x720EB412;
  v88 = v86 ^ v87;
  LODWORD(STACK[0xD28]) = v85;
  v89 = ((v81 - v84) ^ 0x7536500) - v85 - 500419462;
  v90 = v89 ^ 0x873A29A1 ^ v86 ^ v87;
  LODWORD(STACK[0xD78]) = v90;
  v91 = v85 - (v86 ^ v87);
  v92 = (v91 ^ 0xF5F809C4) - v90;
  v93 = v89 ^ 0xC071E14C;
  v94 = v88 - (v89 ^ 0xC071E14C);
  LODWORD(STACK[0xD70]) = v94;
  v95 = v92 - 401562865 + v93;
  LODWORD(STACK[0xD20]) = v92 - 401562865;
  v96 = (v95 ^ v94) - v93 - ((2 * ((v95 ^ v94) - v93)) & 0xB97C50F4) - 591517574;
  LODWORD(STACK[0xDA8]) = v96;
  v97 = v95 - (v96 ^ 0xDCBE287A) - 1906137695;
  v98 = ((2 * (v97 & 0xA22A5849)) & 0x4054A010 | v97 & 0xA22A5849) ^ (2 * (v97 & 0xA22A5849)) & (v97 ^ 0xD1D7F618);
  v99 = ((2 * (v97 ^ 0xD1D7F618)) ^ 0xE7FB5CA2) & (v97 ^ 0xD1D7F618) ^ (2 * (v97 ^ 0xD1D7F618)) & 0x73FDAE50;
  v100 = (v99 ^ 0x1FD0011) & (4 * v98) ^ v98;
  v101 = ((4 * (v99 ^ 0x1004A251)) ^ 0xCFF6B944) & (v99 ^ 0x1004A251) ^ (4 * (v99 ^ 0x1004A251)) & 0x73FDAE50;
  v102 = v100 ^ 0x73FDAE51 ^ (v101 ^ 0x43F4A840) & (16 * v100);
  v103 = (16 * (v101 ^ 0x30090611)) & 0x73FDAE50 ^ 0x40250A41 ^ ((16 * (v101 ^ 0x30090611)) ^ 0x3FDAE510) & (v101 ^ 0x30090611);
  v104 = (v102 << 8) & 0x73FDAE00 ^ v102 ^ ((v102 << 8) ^ 0xFDAE5100) & v103;
  v105 = v97 ^ (2 * ((v104 << 16) & 0x73FD0000 ^ v104 ^ ((v104 << 16) ^ 0x2E510000) & ((v103 << 8) & 0x73FD0000 ^ 0x2510000 ^ ((v103 << 8) ^ 0x7DAE0000) & v103)));
  v106 = LODWORD(STACK[0xC08]) + v53;
  v107 = ((v91 - ((2 * v91) & 0x50AA077A) + 676660157) ^ v87) - v92;
  LODWORD(STACK[0xD18]) = v107;
  v108 = v80 ^ v82 ^ 0x5F15B278 ^ (v72 - ((2 * v72) & 0xBE2B64F0) + 1595257464);
  LODWORD(STACK[0xE20]) = (((LODWORD(STACK[0xE48]) ^ v55) - v55) ^ ((LODWORD(STACK[0xE48]) ^ v66) - v66 - ((2 * ((LODWORD(STACK[0xE48]) ^ v66) - v66)) & 0xD911A092) - 326578103) ^ 0xEC88D049 ^ ((v108 ^ LODWORD(STACK[0xE48])) - v108)) + LODWORD(STACK[0xBB8]) - v68;
  LODWORD(STACK[0xD10]) = v107 + 1137392430;
  v109 = (v107 + 1137392430 - (v92 - 401562865)) ^ -v93;
  LODWORD(v55) = v77 ^ 0xBCF3420F ^ (v66 - v55);
  v110 = LODWORD(STACK[0xD98]) - v55;
  v111 = STACK[0xE30];
  v112 = (((LODWORD(STACK[0xC14]) ^ 0xA0EC2C4A) - 1838646440) ^ ((LODWORD(STACK[0xC14]) ^ 0x310E5FAE) + 59377844) ^ ((LODWORD(STACK[0xC14]) ^ 0x1D7F1CDB) + 804998087)) - (v55 ^ (v68 + 224134135)) + 2064655019 + (((v77 ^ 0xBCF3420F ^ LODWORD(STACK[0xE18])) - (v77 ^ 0xBCF3420F)) ^ ((v83 ^ LODWORD(STACK[0xE30]) ^ LODWORD(STACK[0xE18])) - (v83 ^ LODWORD(STACK[0xE30]))) ^ 0x8F8BCD78 ^ ((v55 ^ LODWORD(STACK[0xE18])) - v55 - ((2 * ((v55 ^ LODWORD(STACK[0xE18])) - v55)) & 0x1F179AF0) - 1886663304));
  LODWORD(v55) = (v112 ^ 0xC4C43521) & (2 * (v112 & 0xC6D6A532)) ^ v112 & 0xC6D6A532;
  v113 = ((2 * (v112 ^ 0x40483541)) ^ 0xD3D20E6) & (v112 ^ 0x40483541) ^ (2 * (v112 ^ 0x40483541)) & 0x869E9072;
  LODWORD(v55) = (v113 ^ 0x41C0040) & (4 * v55) ^ v55;
  v114 = ((4 * (v113 ^ 0x82829011)) ^ 0x1A7A41CC) & (v113 ^ 0x82829011) ^ (4 * (v113 ^ 0x82829011)) & 0x869E9070;
  LODWORD(v55) = (v114 ^ 0x21A0040) & (16 * v55) ^ v55;
  v115 = ((16 * (v114 ^ 0x84849033)) ^ 0x69E90730) & (v114 ^ 0x84849033) ^ (16 * (v114 ^ 0x84849033)) & 0x869E9070;
  LODWORD(v55) = v55 ^ 0x869E9073 ^ (v115 ^ 0x880000) & (v55 << 8);
  LODWORD(STACK[0xD98]) = v112 ^ (2 * ((v55 << 16) & 0x69E0000 ^ v55 ^ ((v55 << 16) ^ 0x10730000) & (((v115 ^ 0x86169043) << 8) & 0x69E0000 ^ (((v115 ^ 0x86169043) << 8) ^ 0x1E900000) & (v115 ^ 0x86169043) ^ 0xE0000)));
  LODWORD(STACK[0xE18]) = LODWORD(STACK[0xEA0]) + LODWORD(STACK[0xBC0]) + LODWORD(STACK[0xDA0]);
  v116 = (v110 ^ 0x7536500) - LODWORD(STACK[0xDE8]) - 500419462;
  v117 = v116 ^ 0xC071E14C;
  v118 = v76 ^ v116 ^ 0x873A29A1;
  LODWORD(STACK[0xD00]) = v118;
  v119 = v76 - (v116 ^ 0xC071E14C);
  LODWORD(STACK[0xCF0]) = v119;
  LODWORD(STACK[0xD08]) = v79 ^ 0xF5F809C4;
  v120 = (v79 ^ 0xF5F809C4) - v118;
  v121 = v120 - 401562865 + v117;
  LODWORD(STACK[0xCE8]) = v120 - 401562865;
  LODWORD(STACK[0xB00]) = ((2 * ((v121 ^ v119) - v117)) & 0x6ED60DFC) + (((v121 ^ v119) - v117) ^ 0x376B06FE);
  v122 = LODWORD(STACK[0xDF0]) - v120 + 1137392430;
  LODWORD(STACK[0xCE0]) = v122;
  v123 = (v122 - (v120 - 401562865)) ^ -v117;
  LODWORD(STACK[0xDA0]) = v111 + LODWORD(STACK[0xC28]) + (LODWORD(STACK[0xCC8]) ^ LODWORD(STACK[0xCD0]));
  v124 = (((LODWORD(STACK[0xC24]) ^ 0xCF5C17FE) - 275537014) ^ ((LODWORD(STACK[0xC24]) ^ 0xCD34EA05) - 302293389) ^ ((LODWORD(STACK[0xC24]) ^ 0xC0BB2875) - 529228797)) + v49;
  v125 = STACK[0xEC0];
  v126 = 2 * LODWORD(STACK[0xEC0]);
  v127 = v48 + 1016590465 + (a7 ^ ((a7 ^ 0x5C76F280) - 1625358849) ^ ((a7 ^ 0x86324397) + 1163545834) ^ ((a7 ^ 0x9BACBA6C) + 1489286419) ^ ((a7 ^ 0x7D7FFBFA) - 1105726331) ^ (LODWORD(STACK[0xEC0]) - (v126 & 0x7E0A4C98) + 1057302092) ^ 0x392D6CD);
  v128 = ((LODWORD(STACK[0xEC0]) - (v126 & 0x17060B26) + 193136019) ^ LODWORD(STACK[0xE88])) - (LODWORD(STACK[0xE88]) ^ 0xB830593);
  v129 = v128 - ((2 * v128) & 0xF0F9BC1C);
  v130 = (v51 ^ 0xB280FA3B) & (2 * (v51 & 0xB8CAFA3A)) ^ v51 & 0xB8CAFA3A;
  v131 = ((2 * (v51 ^ 0x82151E4F)) ^ 0x75BFC8EA) & (v51 ^ 0x82151E4F) ^ (2 * (v51 ^ 0x82151E4F)) & 0x3ADFE474;
  v132 = (v131 ^ 0x201FC060) & (4 * v130) ^ v130;
  v133 = ((4 * (v131 ^ 0xA402415)) ^ 0xEB7F91D4) & (v131 ^ 0xA402415) ^ (4 * (v131 ^ 0xA402415)) & 0x3ADFE474;
  v134 = (v133 ^ 0x2A5F8040) & (16 * v132) ^ v132;
  v135 = ((16 * (v133 ^ 0x10806421)) ^ 0xADFE4750) & (v133 ^ 0x10806421) ^ (16 * (v133 ^ 0x10806421)) & 0x3ADFE450;
  v136 = v134 ^ 0x3ADFE475 ^ (v135 ^ 0x28DE4400) & (v134 << 8);
  v137 = v51 ^ LODWORD(STACK[0xCD8]);
  LODWORD(v55) = STACK[0xEB8];
  LODWORD(STACK[0xB18]) = v106 + LODWORD(STACK[0xEB8]);
  v138 = v137 ^ v55 ^ (2 * ((v136 << 16) & 0x3ADF0000 ^ v136 ^ ((v136 << 16) ^ 0x64750000) & (((v135 ^ 0x1201A025) << 8) & 0x3ADF0000 ^ 0x201B0000 ^ (((v135 ^ 0x1201A025) << 8) ^ 0x5FE40000) & (v135 ^ 0x1201A025)))) ^ 0xEBF8791C;
  v139 = v124 - 2078182549 + (v127 ^ (v129 + 2021449230) ^ 0x787CDE0E ^ ((v138 ^ v125) - v138));
  v140 = (v139 ^ 0x13926F1E) & (2 * (v139 & 0x9BC06F1F)) ^ v139 & 0x9BC06F1F;
  v141 = ((2 * (v139 ^ 0x1412E136)) ^ 0x1FA51C52) & (v139 ^ 0x1412E136) ^ (2 * (v139 ^ 0x1412E136)) & 0x8FD28E28;
  v142 = (v141 ^ 0xF000F00) & (4 * v140) ^ v140;
  v143 = ((4 * (v141 ^ 0x80528229)) ^ 0x3F4A38A4) & (v141 ^ 0x80528229) ^ (4 * (v141 ^ 0x80528229)) & 0x8FD28E28;
  v144 = (v143 ^ 0xF420820) & (16 * v142) ^ v142;
  v145 = ((16 * (v143 ^ 0x80908609)) ^ 0xFD28E290) & (v143 ^ 0x80908609) ^ (16 * (v143 ^ 0x80908609)) & 0x8FD28E00;
  v146 = v144 ^ 0x8FD28E29 ^ (v145 ^ 0x8D008200) & (v144 << 8);
  v147 = v139 ^ (2 * ((v146 << 16) & 0xFD20000 ^ v146 ^ ((v146 << 16) ^ 0xE290000) & (((v145 ^ 0x2D20C29) << 8) & 0xFD20000 ^ 0xD500000 ^ (((v145 ^ 0x2D20C29) << 8) ^ 0x528E0000) & (v145 ^ 0x2D20C29))));
  v148 = STACK[0xDA8];
  v149 = ((LODWORD(STACK[0xDA8]) ^ 0x1A83A86D) - 444835949) ^ ((LODWORD(STACK[0xDA8]) ^ 0x21F2321A) - 569520666) ^ ((LODWORD(STACK[0xDA8]) ^ 0xE7CFB20D) + 405818867);
  v150 = (((v105 ^ 0x4F08354E) - 281052996) ^ ((v105 ^ 0x32D79ED8) - 1830759634) ^ ((v105 ^ 0x9FF4AF7D) + 1069802121)) + 820240456;
  v151 = v150 + v109;
  v152 = v151 + v150;
  LODWORD(STACK[0xB90]) = v93;
  v153 = (((v105 ^ 0x4A40C85B) - 361265745) ^ ((v105 ^ 0xC20C1A4C) + 1648056250) ^ ((v105 ^ 0x6A67D6FC) - 900687094)) - v93 - 1303560101;
  v154 = v149 - v93 - 785927692 + v153;
  LODWORD(STACK[0xEA0]) = v154;
  LODWORD(STACK[0xEC0]) = v152;
  v155 = v152 ^ v153;
  v156 = (v152 ^ v153 ^ v151) - v152 - 833868719;
  LODWORD(STACK[0xCC8]) = v155;
  LODWORD(v55) = (v155 - v156 + v154) ^ v156;
  v157 = v155 - v156 + 657070719;
  v158 = v152 + 809413039 - v55;
  v159 = v152 + 809413039;
  LODWORD(STACK[0xC78]) = v152 + 809413039;
  v160 = v158 ^ (v155 + 657070719);
  LODWORD(STACK[0xC70]) = v55;
  LODWORD(STACK[0xCC0]) = v157;
  v161 = (v55 - v160) ^ v157;
  LODWORD(STACK[0xEB8]) = v161;
  v162 = v157 ^ 0x33E61FCA;
  v163 = v158 ^ v157 ^ 0x33E61FCA;
  v164 = (v161 ^ 0x8D9E54DC ^ ((v160 ^ 0xED73F60C) - ((2 * (v160 ^ 0xED73F60C)) & 0x7CF0962C) - 1099412714)) - v163;
  LODWORD(STACK[0xCD8]) = v164;
  LODWORD(STACK[0xCD0]) = v163 - 1775332740;
  v165 = (v164 + 1478165767) ^ (v163 - 1775332740);
  v166 = v164 + 1478165767;
  LODWORD(STACK[0xC14]) = v164 + 1478165767;
  LODWORD(STACK[0xBB8]) = v165;
  v167 = v163;
  v168 = ((v160 ^ 0xED73F60C) - v165 + 1482673024) ^ (v163 - 70069435);
  v169 = ((v123 ^ 0x85F76891) - 1064733157) ^ ((v123 ^ 0xCD7E6471) - 2013234437) ^ ((v123 ^ 0x48890CE0) + 234295916);
  v170 = STACK[0xB00];
  v171 = v121 - LODWORD(STACK[0xB00]) - 1953113564;
  v172 = v121 - LODWORD(STACK[0xB00]) - 1787162685 + v169;
  v173 = LODWORD(STACK[0xB00]) - 2229396;
  LODWORD(STACK[0xAC0]) = v173;
  v174 = v173 - v117 - 1913898162 + v171 - v117;
  LODWORD(STACK[0xE30]) = v174;
  v175 = v171 + v172;
  v176 = v171 + v172 + 1331844139;
  LODWORD(STACK[0xE88]) = v176;
  v177 = v176 ^ (v171 - v117 - 791956418);
  v178 = (v177 ^ v172) - v176 - 833868719;
  v179 = v177 - v178;
  v180 = (v177 - v178 + v174) ^ v178;
  v181 = v175 + 2141257178;
  v182 = v179 + 657070719;
  v183 = v175 + 2141257178 - v180;
  LODWORD(STACK[0xC98]) = v175 + 2141257178;
  v184 = v183 ^ (v177 + 657070719);
  v185 = v182 ^ 0x33E61FCA ^ v183;
  v186 = v184 ^ 0xED73F60C;
  v187 = v180;
  LODWORD(STACK[0xC90]) = v180;
  v188 = (v180 - v184) ^ v182 ^ 0x33E61FCA;
  LODWORD(STACK[0xE48]) = v188;
  v189 = (v188 ^ v184 ^ 0xED73F60C) - v185 + 1478165767;
  LODWORD(STACK[0xCB0]) = v185 - 1775332740;
  v190 = v189 ^ (v185 - 1775332740);
  LODWORD(STACK[0xCA8]) = v189;
  v191 = (v186 - v190 + 1482673024) ^ (v185 - 70069435);
  v192 = (v182 ^ 0x33E61FCA) - 970260385;
  v193 = v185;
  LODWORD(STACK[0xCB8]) = v192 - v185;
  v194 = (v192 - v185) ^ v189 ^ 0x5D2A87FA ^ (v191 - ((2 * v191) & 0xBA550FF4) + 1563068410);
  LODWORD(STACK[0xB08]) = v194;
  v195 = 2 * LODWORD(STACK[0xE20]);
  v196 = LODWORD(STACK[0xE20]) - 1353147161 + (~v195 | 0xA14EC633);
  v197 = LODWORD(STACK[0xE20]) - (v195 & 0x51E8EEC4) - 1460373662;
  v198 = 803070275 - LODWORD(STACK[0xE40]);
  LODWORD(STACK[0xC80]) = v198;
  LODWORD(STACK[0xE10]) = ((v198 ^ v197 ^ 0xA8F47762 ^ v159) - v181) ^ v182 ^ ((v198 ^ v196 ^ 0xAF589CE6 ^ v55) - v187);
  v199 = ((LODWORD(STACK[0xD98]) ^ 0x4D3116FD) + 954706700) ^ ((LODWORD(STACK[0xD98]) ^ 0x14FD8AE8) + 1630222111) ^ ((LODWORD(STACK[0xD98]) ^ 0x920319C1) - 405429192);
  LODWORD(STACK[0xBC8]) = v162 - 970260385;
  v200 = v167;
  LODWORD(v55) = v162 - 970260385 - v167;
  LODWORD(STACK[0xC24]) = v55;
  v201 = v166 ^ v55 ^ (v168 - ((2 * v168) & 0x1EB8022A) - 1889795819);
  LODWORD(STACK[0xC68]) = v201;
  v202 = (v201 ^ 0x8F5C0115) - 114609208;
  LODWORD(STACK[0xBC0]) = v167 - 672905189;
  LODWORD(STACK[0xA88]) = v167;
  LODWORD(v55) = v167 - 672905189 - v168;
  v203 = (v202 ^ v168) - v55;
  LODWORD(STACK[0xBA8]) = v165 + 1989171405;
  v204 = v55 ^ (v165 + 1989171405);
  LODWORD(STACK[0xC04]) = v204;
  v204 += 983310304;
  LODWORD(STACK[0xB98]) = v204;
  LODWORD(STACK[0xC08]) = v202 ^ v204;
  LODWORD(v55) = v55 - 1511158546;
  LODWORD(STACK[0xBA0]) = v55;
  v205 = v203 ^ v55;
  v206 = v203 - (v202 ^ v204) - ((2 * (v203 - (v202 ^ v204))) & 0xFFA090F6) - 3127173;
  v207 = v205 ^ v202 ^ v204;
  LODWORD(STACK[0xCA0]) = v207;
  v208 = v207 + v204 + (v206 ^ 0xFFD0487B);
  v209 = LODWORD(STACK[0xB18]) + 1917143775;
  LODWORD(STACK[0xA78]) = v209;
  v210 = -501456390 - (((v147 ^ 0xEEB43B19) - 1798493778) ^ ((v147 ^ 0x24F8C87A) + 1585568463) ^ ((v147 ^ 0x5229802E) + 676369051));
  LODWORD(STACK[0xA80]) = v210;
  v211 = v210 ^ 0xA0898AF3 ^ (v209 - ((2 * v209) & 0x3AD47824) + 493501458);
  v212 = (v210 ^ 0xA0898AF3 ^ (v209 - ((2 * v209) & 0xF86F4512) + 2084020873) ^ v148) - v170;
  v213 = ((2 * ((441495511 - v117) ^ 0x9B6698CA)) ^ 0x82FC82D2) & ((441495511 - v117) ^ 0x9B6698CA) ^ (2 * ((441495511 - v117) ^ 0x9B6698CA)) & 0x417E4168;
  v214 = ((4 * (v213 ^ 0x41024129)) ^ 0x5F905A4) & (v213 ^ 0x41024129) ^ (4 * (v213 ^ 0x41024129)) & 0x417E4168;
  v215 = ((16 * (v214 ^ 0x40064049)) ^ 0x17E41690) & (v214 ^ 0x40064049) ^ (16 * (v214 ^ 0x40064049)) & 0x417E4140;
  v216 = ((441495511 - v117) ^ 0x9B56998A) & (2 * ((441495511 - v117) & 0xDA18D9A3)) ^ (441495511 - v117) & 0xDA18D9A3;
  v217 = (v214 ^ 0x1780120) & (16 * ((v213 ^ 0x7C0000) & (4 * v216) ^ v216)) ^ (v213 ^ 0x7C0000) & (4 * v216) ^ v216;
  v218 = v217 ^ 0x417E4169 ^ (v215 ^ 0x1640000) & (v217 << 8);
  LODWORD(STACK[0xA70]) = v105 ^ 0x5FC8B20A;
  LODWORD(STACK[0xD98]) = (441495511 - v117) ^ (2 * ((v218 << 16) & 0x417E0000 ^ v218 ^ ((v218 << 16) ^ 0x41690000) & (((v215 ^ 0x401A4169) << 8) & 0x417E0000 ^ 0x13E0000 ^ (((v215 ^ 0x401A4169) << 8) ^ 0x7E410000) & (v215 ^ 0x401A4169)))) ^ (v212 + 929761022) ^ ((v211 ^ v105 ^ 0x5FC8B20A) - v171 + 597546300);
  LODWORD(v55) = LODWORD(STACK[0xB28]) - LODWORD(STACK[0x938]) - LODWORD(STACK[0xB20]);
  v219 = LODWORD(STACK[0xC18]) + 509535040;
  v220 = ((2 * (v219 ^ 0x555340EF)) ^ 0x32066838) & (v219 ^ 0x555340EF) ^ (2 * (v219 ^ 0x555340EF)) & 0x9903341C;
  v221 = ((4 * (v220 ^ 0x89011404)) ^ 0x640CD070) & (v220 ^ 0x89011404) ^ (4 * (v220 ^ 0x89011404)) & 0x99033418;
  v222 = ((16 * (v221 ^ 0x9903240C)) ^ 0x903341C0) & (v221 ^ 0x9903240C) ^ (16 * (v221 ^ 0x9903240C)) & 0x99033400;
  v223 = 2 * (v219 & 0xCC5074F3);
  LODWORD(STACK[0xAF8]) = v223;
  LODWORD(STACK[0xB00]) = v219 & 0xCC5074F3;
  v224 = (v220 ^ 0x10022018) & (4 * (v223 & (v219 ^ 0xCD5360EB) ^ v219 & 0xCC5074F3)) ^ v223 & (v219 ^ 0xCD5360EB) ^ v219 & 0xCC5074F3;
  v225 = (v221 ^ 0x1010) & (16 * v224) ^ v224 ^ 0x9903341C ^ (v222 ^ 0x90030000) & (((v221 ^ 0x1010) & (16 * v224) ^ v224) << 8);
  v226 = STACK[0xDB0];
  v227 = v219 ^ LODWORD(STACK[0xDB0]) ^ (2 * ((v225 << 16) & 0x19030000 ^ v225 ^ ((v225 << 16) ^ 0x341C0000) & (((v222 ^ 0x900341C) << 8) & 0x19030000 ^ 0x18030000 ^ (((v222 ^ 0x900341C) << 8) ^ 0x3340000) & (v222 ^ 0x900341C))));
  v228 = ((2 * (v219 ^ 0xF7918CFC)) ^ 0x7783F01E) & (v219 ^ 0xF7918CFC) ^ (2 * (v219 ^ 0xF7918CFC)) & 0x3BC1F80E;
  v229 = ((4 * (v228 ^ 0x8400801)) ^ 0xEF07E03C) & (v228 ^ 0x8400801) ^ (4 * (v228 ^ 0x8400801)) & 0x3BC1F80C;
  v230 = ((16 * (v229 ^ 0x10C01803)) ^ 0xBC1F80F0) & (v229 ^ 0x10C01803) ^ (16 * (v229 ^ 0x10C01803)) & 0x3BC1F800;
  v231 = (v229 ^ 0x2B01E000) & (16 * ((v228 ^ 0x3381F00C) & (4 * (v223 & (v219 ^ 0xEF1164FA) ^ v219 & 0xCC5074F3)) ^ v223 & (v219 ^ 0xEF1164FA) ^ v219 & 0xCC5074F3)) ^ (v228 ^ 0x3381F00C) & (4 * (v223 & (v219 ^ 0xEF1164FA) ^ v219 & 0xCC5074F3)) ^ v223 & (v219 ^ 0xEF1164FA) ^ v219 & 0xCC5074F3;
  v232 = v231 ^ 0x3BC1F80F ^ (v230 ^ 0x38018000) & (v231 << 8);
  v233 = v208;
  LODWORD(STACK[0xC28]) = v208;
  v234 = v205 - v208;
  LODWORD(STACK[0xC18]) = v234;
  v235 = v234 ^ v219;
  LODWORD(STACK[0xAE8]) = v235;
  v236 = v235 ^ v226 ^ (2 * ((v232 << 16) & 0x3BC10000 ^ v232 ^ ((v232 << 16) ^ 0x780F0000) & (((v230 ^ 0x3C0780F) << 8) & 0x3BC10000 ^ 0x3A010000 ^ (((v230 ^ 0x3C0780F) << 8) ^ 0x41F80000) & (v230 ^ 0x3C0780F))));
  LODWORD(STACK[0xB20]) = v190 + 1989171405;
  LODWORD(STACK[0xA3C]) = v193;
  LODWORD(STACK[0xB18]) = v193 - 672905189;
  v237 = v193 - 672905189 - v191;
  LODWORD(STACK[0xAB0]) = v237;
  v238 = (v237 ^ (v190 + 1989171405)) + 983310304;
  LODWORD(STACK[0xAA8]) = v238;
  v239 = (v194 - 114609208) ^ v238;
  v240 = ((v194 - 114609208) ^ v191) - v237;
  LODWORD(STACK[0xAA4]) = v237 - 1511158546;
  v241 = v240 ^ (v237 - 1511158546);
  LODWORD(STACK[0xA90]) = v239;
  v242 = v240 - v239;
  v243 = v241 ^ v239;
  LODWORD(STACK[0x940]) = v242;
  v244 = v242 + v238 + (v241 ^ v239);
  LODWORD(STACK[0x948]) = v244;
  v245 = v241 - v244;
  LODWORD(STACK[0xAC8]) = v245;
  LODWORD(STACK[0x960]) = v243 - v245;
  v246 = (v243 - v245) ^ ((v227 ^ 0xDE561CCB ^ v233) - v244) ^ ((v236 ^ 0xCBD184ED) - v245);
  v247 = ((v246 ^ 0xFCEB9B3C) - 23001151) ^ ((v246 ^ 0x28CA6AAC) + 713094737) ^ ((v246 ^ 0xD421F190) - 697602707);
  LODWORD(STACK[0xB28]) = v247;
  LODWORD(STACK[0xAB8]) = v55 + 1888900884;
  v248 = (v177 - ((2 * v177) & 0x4AE74C2) + 39271009) ^ (((LODWORD(STACK[0xE18]) - ((2 * LODWORD(STACK[0xE18])) & 0xCD235188) + 1720821956) ^ (v55 + 1888900884) ^ 0x6691A8C4 ^ LODWORD(STACK[0xEA0])) - LODWORD(STACK[0xE30])) ^ (((LODWORD(STACK[0xE18]) - ((2 * LODWORD(STACK[0xE18])) & 0xCF7BE062) - 406982607) ^ (v55 + 1888900884) ^ 0xE7BDF031 ^ LODWORD(STACK[0xEC0])) - LODWORD(STACK[0xE88])) ^ 0x2573A61;
  v249 = STACK[0xDA0];
  v250 = (-1105643485 - v199) ^ LODWORD(STACK[0xDA0]);
  LODWORD(STACK[0xA68]) = -1105643485 - v199;
  LODWORD(STACK[0xEA8]) = *(STACK[0xEA8] + ((((((((v247 + 1764003393) ^ 0xE14BEA70) + 1977302706) ^ (v247 + 1764003393) ^ (((v247 + 1764003393) ^ 0x4F1766BB) - 611863941) ^ (((v247 + 1764003393) ^ 0xBACC5908) + 777817546) ^ (((v247 + 1764003393) ^ 0x7FFFFEFD) - 345036227)) >> 16) ^ 0x6F) - 7) ^ 0x67));
  v251 = ((v250 ^ v200) - v193) ^ v192 ^ (((v249 - ((2 * v249) & 0xA32222CE) - 779021977) ^ (-1105643485 - v199) ^ 0xE2770EAD ^ LODWORD(STACK[0xEB8])) - LODWORD(STACK[0xE48]));
  v252 = 29 - 81 * (((*(STACK[0xF50] + 83) >> 4) | (16 * *(STACK[0xF50] + 83))) ^ *(STACK[0xEB0] + (((*(STACK[0xF50] + 83) >> 4) | (16 * *(STACK[0xF50] + 83))) ^ 0x56)) ^ 0xFFFFFFC7);
  LOBYTE(v236) = v252 & 0x49 ^ 0x77;
  v253 = STACK[0xF10];
  LOBYTE(v252) = *STACK[0xF10] ^ v252 ^ (2 * ((v252 ^ 0x62) & (2 * ((v252 ^ 0x62) & (2 * ((v252 ^ 0x62) & (2 * ((v252 ^ 0x62) & (2 * ((v252 ^ 0x62) & (2 * (((2 * v252) & 0x46 ^ 0x2A) & (v252 ^ 0x62) ^ v236)) ^ v236)) ^ v236)) ^ v236)) ^ v236)) ^ v236));
  v254 = STACK[0xE10];
  v255 = STACK[0xE98];
  v256 = *(STACK[0xE98] + (((LODWORD(STACK[0xE10]) >> 20) & 0xF0 | (LODWORD(STACK[0xE10]) >> 28)) ^ 0x8DLL));
  v257 = STACK[0xEC8];
  v258 = *(STACK[0xEC8] + ((HIBYTE(v251) + 18) ^ 0xB9));
  LOBYTE(v105) = v251;
  LODWORD(STACK[0xA30]) = v251;
  LODWORD(STACK[0xA48]) = 251 * HIWORD(v251);
  v259 = STACK[0xE90];
  LODWORD(STACK[0xA50]) = *(STACK[0xE90] + ((-5 * BYTE2(v251)) ^ 0x26));
  LODWORD(STACK[0xA40]) = *(v255 + (((v254 >> 12) & 0xF0 | (v254 >> 20) & 0xF) ^ 0x8DLL));
  v260 = v248;
  LODWORD(STACK[0xA58]) = *(v255 + (((v248 >> 4) & 0xF0 | (v248 >> 12)) ^ 0x8DLL));
  v261 = STACK[0xC88];
  LOBYTE(v252) = v252 ^ STACK[0xC88] ^ 0x6A;
  v262 = STACK[0xD98];
  v263 = LODWORD(STACK[0xD98]) ^ 0x74ABA9BBu;
  STACK[0xEB0] = v263 >> 24;
  *v253 = v252 ^ BYTE3(v263);
  v264 = ((2 * (v171 ^ 0xEA527829)) ^ 0x6C60A5DA) & (v171 ^ 0xEA527829) ^ (2 * (v171 ^ 0xEA527829)) & 0x363052EC;
  v265 = ((4 * (v264 ^ 0x12105225)) ^ 0xD8C14BB4) & (v264 ^ 0x12105225) ^ (4 * (v264 ^ 0x12105225)) & 0x363052EC;
  LODWORD(v253) = ((16 * (v265 ^ 0x26301049)) ^ 0x63052ED0) & (v265 ^ 0x26301049) ^ (16 * (v265 ^ 0x26301049)) & 0x363052C0;
  v266 = (v171 ^ 0xDA5228A1) & (2 * (v171 & 0xDC622AC4)) ^ v171 & 0xDC622AC4;
  v267 = (v265 ^ 0x100042A0) & (16 * ((v264 ^ 0x20000000) & (4 * v266) ^ v266)) ^ (v264 ^ 0x20000000) & (4 * v266) ^ v266;
  v268 = v267 ^ 0x363052ED ^ (v253 ^ 0x22000200) & (v267 << 8);
  v269 = ((2 * (LODWORD(STACK[0xAC0]) ^ 0x92B85D8)) ^ 0x833AF09C) & (LODWORD(STACK[0xAC0]) ^ 0x92B85D8) ^ (2 * (LODWORD(STACK[0xAC0]) ^ 0x92B85D8)) & 0xC19D784E;
  v270 = ((4 * (v269 ^ 0x40850842)) ^ 0x675E138) & (v269 ^ 0x40850842) ^ (4 * (v269 ^ 0x40850842)) & 0xC19D7848;
  v271 = ((16 * (v270 ^ 0xC1881846)) ^ 0x19D784E0) & (v270 ^ 0xC1881846) ^ (16 * (v270 ^ 0xC1881846)) & 0xC19D7840;
  v272 = (LODWORD(STACK[0xAC0]) ^ 0x8826FDD4) & (2 * (STACK[0xAC0] & 0xC8B6FD96)) ^ STACK[0xAC0] & 0xC8B6FD96;
  v273 = (v270 ^ 0x156000) & (16 * ((v269 ^ 0x1187008) & (4 * v272) ^ v272)) ^ (v269 ^ 0x1187008) & (4 * v272) ^ v272;
  v274 = v273 ^ 0xC19D784E ^ (v271 ^ 0x1950000) & (v273 << 8);
  v275 = (LODWORD(STACK[0xA78]) ^ LODWORD(STACK[0xDA8]) ^ 0x615D9E9B ^ LODWORD(STACK[0xA70])) - (v171 ^ LODWORD(STACK[0xAC0]) ^ (2 * (v274 ^ v268 ^ (v274 << 16) & 0x419D0000 ^ (v268 << 16) & 0x36300000 ^ ((v268 << 16) ^ 0x52ED0000) & (((v253 ^ 0x1430502D) << 8) & 0x36300000 ^ 0x6200000 ^ (((v253 ^ 0x1430502D) << 8) ^ 0x30520000) & (v253 ^ 0x1430502D)) ^ ((v274 << 16) ^ 0x784E0000) & (((v271 ^ 0xC008780E) << 8) & 0x419D0000 ^ 0x40850000 ^ (((v271 ^ 0xC008780E) << 8) ^ 0x1D780000) & (v271 ^ 0xC008780E)))) ^ 0x5FD68214 ^ LODWORD(STACK[0xA80]));
  v276 = (-76889246 - LODWORD(STACK[0xB90])) ^ (((-76889246 - LODWORD(STACK[0xB90])) ^ 0xAEAB2669) + 1448468607) ^ (((-76889246 - LODWORD(STACK[0xB90])) ^ 0xFDD008C9) + 86953695) ^ (((-76889246 - LODWORD(STACK[0xB90])) ^ 0x2B814897) - 746615167) ^ (((-76889246 - LODWORD(STACK[0xB90])) ^ 0x7FFB5FDF) - 2029676087) ^ 0x4A8AE94A ^ (v275 - ((2 * v275) & 0x9B17A144) + 1301008546);
  v277 = STACK[0xBB0];
  v278 = STACK[0xBB0] ^ 0x20D0BAF1;
  STACK[0xDA8] = v276 >> 24;
  LOBYTE(v275) = BYTE3(v276) ^ v278;
  LOBYTE(v275) = *(STACK[0xF10] + 59) ^ v275 ^ 0x64 ^ *(STACK[0xF50] + (((v275 & 0x24 ^ 0xF2BF7F56) + 1289558887) ^ ((v275 & 0x24) + 1098089541) ^ ((v275 & 0x24 ^ 0x9B35CF4C) + 626502525)) + (((v275 & 0x24 ^ 0x9DD6D579) - 2146571872) ^ ((v275 & 0x24) - 1646509321) ^ ((v275 & 0x24 ^ 0x50467215) + 1302154996)) + 599940876);
  LOBYTE(v275) = *(v255 + (((v275 >> 4) | (16 * v275)) ^ 0x41));
  LOBYTE(v275) = -81 * (((v275 ^ 2) + 5) ^ ((v275 ^ 0x3F) + 58) ^ ((v275 ^ 0xD) + 12)) - 110;
  LOBYTE(v265) = v275 & 0xED ^ 0x8C;
  *(STACK[0xF10] + 59) = v275 ^ (2 * ((v275 ^ 0x54) & (2 * ((v275 ^ 0x54) & (2 * ((v275 ^ 0x54) & (2 * ((v275 ^ 0x54) & (2 * ((v275 ^ 0x54) & (2 * (v275 & (2 * v275) & 0x2A ^ v265)) ^ v265)) ^ v265)) ^ v265)) ^ v265)) ^ v265)) ^ 0x69;
  v279 = STACK[0xF10];
  LOBYTE(v265) = *(v255 + (((*(STACK[0xF10] + 93) >> 4) | (16 * *(STACK[0xF10] + 93))) ^ 0xC5));
  LOBYTE(v265) = -41 - 81 * (((v265 ^ 0xAD) + 57) ^ ((v265 ^ 0x74) - 30) ^ ((v265 ^ 0xE9) + 125));
  LOBYTE(v253) = v265 & 0x1F ^ 0xF8;
  LOBYTE(v265) = *(STACK[0xF50] + 93) ^ v265 ^ (2 * ((v265 ^ 0x2E) & (2 * ((v265 ^ 0x2E) & (2 * ((v265 ^ 0x2E) & (2 * ((v265 ^ 0x2E) & (2 * ((v265 ^ 0x2E) & (2 * ((v265 ^ 0x2E) & (2 * v265) & 0x5E ^ v253)) ^ v253)) ^ v253)) ^ v253)) ^ v253)) ^ v253));
  STACK[0xA80] = v263 >> 16;
  *(v279 + 93) = v265 ^ BYTE2(v263) ^ BYTE1(v261) ^ 0x88;
  STACK[0xB90] = v276 >> 16;
  LOBYTE(v279) = *(v255 + (((16 * (((v276 >> 16) ^ (v277 >> 8)) & 0xF)) | ((BYTE2(v276) ^ BYTE1(v277)) >> 4)) ^ 0x26));
  LOBYTE(v279) = a45 - 81 * (((v279 ^ 0x52) - 6) ^ ((v279 ^ 0x4D) - 25) ^ ((v279 ^ 0x2F) - 123));
  *(STACK[0xF10] + 152) ^= *(STACK[0xF50] + 23) ^ v279 ^ (2 * (((2 * (((2 * (((2 * (((2 * (((2 * v279) & 0x34 ^ 0x2A) & (v279 ^ 0x1A))) ^ 0x2E) & (v279 ^ 0x1A))) ^ 0x2E) & (v279 ^ 0x1A))) ^ 0x2E) & (v279 ^ 0x1A))) ^ 0x2E) & (v279 ^ 0x1A))) ^ ((v105 & 6 ^ 6) + (v105 & 6)) ^ 0xAE;
  v280 = STACK[0xF10];
  LOBYTE(v265) = (((*(STACK[0xF10] + 28) ^ 0x92) + 110) ^ ((*(STACK[0xF10] + 28) ^ 0x27) - 39) ^ ((*(STACK[0xF10] + 28) ^ 0x31) - 49)) - 7;
  LOBYTE(v253) = v265 & 0x43 ^ 0x73;
  LOBYTE(v265) = *(v257 + ((v265 ^ (2 * ((v265 ^ 0x1C) & (2 * ((v265 ^ 0x1C) & (2 * ((v265 ^ 0x1C) & (2 * ((v265 ^ 0x1C) & (2 * ((v265 ^ 0x1C) & (2 * (((2 * v265) & 0x3A ^ 0x5E) & (v265 ^ 0x1C) ^ v253)) ^ v253)) ^ v253)) ^ v253)) ^ v253)) ^ v253))) ^ 0xFAu));
  LOBYTE(v265) = -51 * (((v265 ^ 0x47) - 120) ^ ((v265 ^ 0x10) - 47) ^ ((v265 ^ 0x96) + 87));
  LOBYTE(v253) = v265 - 117;
  LOBYTE(v265) = (v265 + 11) & 0xDB | 4;
  LOBYTE(v274) = v265 ^ v253 & 0x38;
  LOBYTE(v265) = *(STACK[0xF50] + 8) ^ v253 ^ (2 * ((v253 ^ 0x5A) & (2 * ((v253 ^ 0x5A) & (2 * ((v253 ^ 0x5A) & (2 * ((v253 ^ 0x5A) & (2 * ((v253 ^ 0x5A) & (2 * ((v253 ^ 0x5A) & (2 * v265) ^ v274)) ^ v274)) ^ v274)) ^ v274)) ^ v274)) ^ v274));
  STACK[0xEC8] = v263 >> 8;
  *(v280 + 28) = v265 ^ BYTE1(v263) ^ BYTE2(v261) ^ 0x9D;
  v281 = STACK[0xF10];
  LOBYTE(v280) = *(STACK[0xF10] + 87) ^ BYTE2(v277) ^ (*(STACK[0xF50] + 57) - ((2 * *(STACK[0xF50] + 57)) & 0x3A) - 99) ^ 0x64;
  STACK[0xE98] = v276 >> 8;
  *(v281 + 87) = v280 ^ BYTE1(v276);
  v282 = (-5 * (BYTE3(v261) ^ 0xE)) - ((502 * (BYTE3(v261) ^ 0xE)) & 0x1E4u) + 153119218;
  LOBYTE(v282) = ((v282 ^ 0xBF) + ((2 * ((v282 ^ 0xBF | 0x79) ^ v282)) ^ 0x73) - 6) ^ 0x36 ^ *(v259 + (v282 ^ 0x92069D4));
  LOBYTE(v253) = (v282 + 48) & 0x3F ^ 0xB8;
  LOBYTE(v274) = (v282 + 48) ^ 0x4E;
  *(STACK[0xF10] + 121) ^= *(STACK[0xF50] + 107) ^ (v282 + 48) ^ (2 * (v274 & (2 * (v274 & (2 * (v274 & (2 * (v274 & (2 * (v274 & (2 * (v274 & (2 * v282) & 0x1E ^ v253)) ^ v253)) ^ v253)) ^ v253)) ^ v253)) ^ v253)) ^ 0xAF ^ v262;
  v283 = STACK[0xF10];
  LOBYTE(v282) = ((~(v278 >> 23) | 0x83) + HIBYTE(v278) - 65) ^ *(STACK[0xF50] + 1) ^ *(STACK[0xF10] + 22);
  LODWORD(STACK[0xE90]) = 2 * v276;
  *(v283 + 22) = v282 ^ 0x14 ^ (v276 + (~(2 * v276) | 0x7F) - 63);
  v284 = ((LODWORD(STACK[0xDE8]) - ((2 * LODWORD(STACK[0xDE8])) & 0x3A6E0FE4) + 490145778) ^ LODWORD(STACK[0xE50])) - LODWORD(STACK[0xDE8]);
  LODWORD(v263) = STACK[0xE80];
  v285 = LODWORD(STACK[0xE80]) ^ LODWORD(STACK[0xD30]) ^ 0x9D15B048 ^ (LODWORD(STACK[0xD28]) - ((2 * LODWORD(STACK[0xD28])) & 0x3A2B6090) - 1659523000);
  v286 = ((((LODWORD(STACK[0xCF8]) + 395984729 + (~(2 * LODWORD(STACK[0xD38])) | 0xC591F01B)) ^ LODWORD(STACK[0xE50])) - LODWORD(STACK[0xD38])) ^ (v284 - ((2 * v284) & 0x4B85DBA4) - 1513951790) ^ 0xA5C2EDD2 ^ (((v285 - ((2 * v285) & 0x3A6E0FE4) + 490145778) ^ LODWORD(STACK[0xE50])) - v285)) + LODWORD(STACK[0xBD0]) - LODWORD(STACK[0xD58]);
  v287 = (LODWORD(STACK[0xCE8]) ^ LODWORD(STACK[0xE58])) - LODWORD(STACK[0xCE8]);
  LODWORD(v255) = LODWORD(STACK[0xD20]) ^ LODWORD(STACK[0xE70]) ^ (LODWORD(STACK[0xD18]) - ((2 * LODWORD(STACK[0xD10])) & 0x3A6E0FE4) + 1627538208);
  LODWORD(v283) = LODWORD(STACK[0xCF0]) - LODWORD(STACK[0xC38]) + ((v287 - ((2 * v287) & 0x83C1B90E) - 1042228089) ^ ((LODWORD(STACK[0xCE0]) ^ LODWORD(STACK[0xE58])) - LODWORD(STACK[0xCE0])) ^ 0x3E1F2378 ^ ((v255 ^ LODWORD(STACK[0xE58])) - v255));
  v288 = (((LODWORD(STACK[0xC30]) ^ 0x1C04A8C3) - 1419468017) ^ ((LODWORD(STACK[0xC30]) ^ 0x6C0D39D6) - 613600740) ^ ((LODWORD(STACK[0xC30]) ^ 0xAD03CA25) + 442745321)) + (LODWORD(STACK[0xE70]) ^ 0x1D3707F2) - 728919724 + LODWORD(STACK[0xD70]);
  v289 = (v288 ^ 0xA583998F) & (2 * (v288 & 0xC1081DAE)) ^ v288 & 0xC1081DAE;
  LODWORD(v255) = ((2 * (v288 ^ 0x2793A987)) ^ 0xCD376852) & (v288 ^ 0x2793A987) ^ (2 * (v288 ^ 0x2793A987)) & 0xE69BB428;
  v290 = (v255 ^ 0x4002000) & (4 * v289) ^ v289;
  LODWORD(v255) = ((4 * (v255 ^ 0x22889429)) ^ 0x9A6ED0A4) & (v255 ^ 0x22889429) ^ (4 * (v255 ^ 0x22889429)) & 0xE69BB428;
  v291 = (v255 ^ 0x820A9020) & (16 * v290) ^ v290;
  LODWORD(v255) = ((16 * (v255 ^ 0x64912409)) ^ 0x69BB4290) & (v255 ^ 0x64912409) ^ (16 * (v255 ^ 0x64912409)) & 0xE69BB400;
  v292 = v291 ^ 0xE69BB429 ^ (v255 ^ 0x609B0000) & (v291 << 8);
  v293 = v288 ^ (2 * ((v292 << 16) & 0x669B0000 ^ v292 ^ ((v292 << 16) ^ 0x34290000) & (((v255 ^ 0x8600B429) << 8) & 0x669B0000 ^ 0x640B0000 ^ (((v255 ^ 0x8600B429) << 8) ^ 0x1BB40000) & (v255 ^ 0x8600B429))));
  v294 = (LODWORD(STACK[0xE60]) ^ 0xE2C8F80D) - LODWORD(STACK[0xC4C]) - LODWORD(STACK[0xD78]);
  LODWORD(v282) = (((LODWORD(STACK[0xC40]) ^ 0x265A2DC2) + 1513595916) ^ ((LODWORD(STACK[0xC40]) ^ 0x35A0EEEC) + 1238198054) ^ ((LODWORD(STACK[0xC40]) ^ 0x182FBD8F) + 1682060359)) - LODWORD(STACK[0xD00]) - 1237721715 + (((LODWORD(STACK[0xDF0]) ^ LODWORD(STACK[0xE78])) - LODWORD(STACK[0xDF0])) ^ ((LODWORD(STACK[0xD08]) ^ LODWORD(STACK[0xE78])) - LODWORD(STACK[0xD08])) ^ ((LODWORD(STACK[0xD30]) ^ LODWORD(STACK[0xE60]) ^ 0xB294B999 ^ LODWORD(STACK[0xE78])) - (LODWORD(STACK[0xD30]) ^ LODWORD(STACK[0xE60]) ^ 0xB294B999)));
  v295 = (v282 ^ 0x898D8220) & (2 * (v282 & 0xD20D2B0A)) ^ v282 & 0xD20D2B0A;
  v296 = ((2 * (v282 ^ 0x8D978434)) ^ 0xBF355E7C) & (v282 ^ 0x8D978434) ^ (2 * (v282 ^ 0x8D978434)) & 0x5F9AAF3E;
  v297 = (v296 ^ 0x18100C38) & (4 * v295) ^ v295;
  v298 = ((4 * (v296 ^ 0x408AA102)) ^ 0x7E6ABCF8) & (v296 ^ 0x408AA102) ^ (4 * (v296 ^ 0x408AA102)) & 0x5F9AAF38;
  v299 = (v298 ^ 0x5E0AAC20) & (16 * v297) ^ v297;
  v300 = ((16 * (v298 ^ 0x1900306)) ^ 0xF9AAF3E0) & (v298 ^ 0x1900306) ^ (16 * (v298 ^ 0x1900306)) & 0x5F9AAF20;
  v301 = v299 ^ 0x5F9AAF3E ^ (v300 ^ 0x598AA300) & (v299 << 8);
  LODWORD(v282) = v282 ^ (2 * ((v301 << 16) & 0x5F9A0000 ^ v301 ^ ((v301 << 16) ^ 0x2F3E0000) & (((v300 ^ 0x6100C1E) << 8) & 0x5F9A0000 ^ 0x45100000 ^ (((v300 ^ 0x6100C1E) << 8) ^ 0x1AAF0000) & (v300 ^ 0x6100C1E))));
  v302 = v283 + 1;
  LODWORD(v261) = STACK[0xBA0];
  v303 = STACK[0xAA4];
  LODWORD(v257) = STACK[0xB98];
  LODWORD(v259) = STACK[0xAA8];
  v304 = (LODWORD(STACK[0xA90]) + 602298528 + (~(2 * LODWORD(STACK[0xA90])) | 0xB8334EC1)) ^ ((v293 ^ (v283 + 1) ^ 0x442D75FC ^ LODWORD(STACK[0xBA0])) - LODWORD(STACK[0xAA4])) ^ ((v293 ^ (v283 + 1) ^ 0x442D75FC ^ LODWORD(STACK[0xB98])) - LODWORD(STACK[0xAA8]));
  LODWORD(v283) = -81 * (((v256 ^ 0x2E) - 94) ^ ((v256 ^ 0x7B) - 11) ^ ((v256 ^ 0x65) - 21)) - 61;
  v305 = v283 & 0x43 ^ 0xFFFFFFE3;
  LODWORD(STACK[0xE78]) = v283 ^ (2 * ((v283 ^ 0x7C) & (2 * ((v283 ^ 0x7C) & (2 * ((v283 ^ 0x7C) & (2 * ((v283 ^ 0x7C) & (2 * ((v283 ^ 0x7C) & (2 * (((2 * v283) & 0x7A ^ 0x3E) & (v283 ^ 0x7C) ^ v305)) ^ v305)) ^ v305)) ^ v305)) ^ v305)) ^ v305));
  v306 = STACK[0xBA8];
  v307 = STACK[0xBC0];
  v308 = v282 ^ LODWORD(STACK[0xBC0]) ^ 0xFB4B7DE1 ^ (LODWORD(STACK[0xBB8]) - ((2 * LODWORD(STACK[0xBA8])) & 0x108E112E) - 19439260);
  LODWORD(v281) = STACK[0xA3C];
  LODWORD(STACK[0xEB8]) = ((LODWORD(STACK[0xDA0]) ^ LODWORD(STACK[0xEB8]) ^ 0x4DED1359 ^ (LODWORD(STACK[0xA88]) - ((2 * LODWORD(STACK[0xA88])) & 0xFC161926) + 2114653331)) - (LODWORD(STACK[0xE48]) ^ (LODWORD(STACK[0xA3C]) - ((2 * LODWORD(STACK[0xA3C])) & 0xC290458) - 2045476308) ^ 0x8614822C ^ LODWORD(STACK[0xA68]))) ^ LODWORD(STACK[0xBC8]);
  v309 = STACK[0xEC0];
  LODWORD(v283) = (LODWORD(STACK[0xE20]) ^ (LODWORD(STACK[0xEC0]) - ((2 * LODWORD(STACK[0xC78])) & 0x983ACCAE) - 61075450) ^ 0xCC1D6657 ^ LODWORD(STACK[0xC70])) - (LODWORD(STACK[0xC98]) ^ (1405591023 - LODWORD(STACK[0xE40]) - ((2 * LODWORD(STACK[0xC80])) & 0x47D37958)) ^ 0x23E9BCAC ^ LODWORD(STACK[0xC90]));
  v310 = ((v293 ^ v261 ^ 0xD1B8DAFE ^ (LODWORD(STACK[0xC04]) - ((2 * v257) & 0x2B2B5E04) - 802042142)) - (v259 ^ v302 ^ 0xC7F13126 ^ (LODWORD(STACK[0xAB0]) - 2 * (v303 & 0x47F13127 ^ STACK[0xAB0] & 1) + 1843314196))) ^ LODWORD(STACK[0xC08]);
  v311 = ((2 * (v219 ^ 0x4FF3D218)) ^ 0x7474DD6) & (v219 ^ 0x4FF3D218) ^ (2 * (v219 ^ 0x4FF3D218)) & 0x83A3A6EA;
  v312 = ((4 * (v311 ^ 0x80A0A229)) ^ 0xE8E9BAC) & (v311 ^ 0x80A0A229) ^ (4 * (v311 ^ 0x80A0A229)) & 0x83A3A6E8;
  v313 = ((16 * (v312 ^ 0x81212443)) ^ 0x3A3A6EB0) & (v312 ^ 0x81212443) ^ (16 * (v312 ^ 0x81212443)) & 0x83A3A6E0;
  LODWORD(v261) = STACK[0xAF8] & (v219 ^ 0xCF5372FA) ^ LODWORD(STACK[0xB00]);
  v314 = (v312 ^ 0x28282A0) & (16 * ((v311 ^ 0x30304C0) & (4 * v261) ^ v261)) ^ (v311 ^ 0x30304C0) & (4 * v261) ^ v261;
  v315 = v314 ^ 0x83A3A6EB ^ (v313 ^ 0x2222600) & (v314 << 8);
  LODWORD(STACK[0xE70]) = (LODWORD(STACK[0xAE8]) ^ (2 * ((v315 << 16) & 0x3A30000 ^ v315 ^ ((v315 << 16) ^ 0x26EB0000) & (((v313 ^ 0x8181804B) << 8) & 0x3A30000 ^ (((v313 ^ 0x8181804B) << 8) ^ 0x23A60000) & (v313 ^ 0x8181804B) ^ 0x10000))) ^ (LODWORD(STACK[0xC28]) - ((2 * LODWORD(STACK[0xC28])) & 0x6543C6B2) + 849470297) ^ 0xFCF0DA7C) - (LODWORD(STACK[0x948]) ^ LODWORD(STACK[0xDB0]) ^ LODWORD(STACK[0xAC8]));
  v316 = ((LODWORD(STACK[0xEA0]) ^ LODWORD(STACK[0xE18]) ^ v309) - (LODWORD(STACK[0xE30]) ^ LODWORD(STACK[0xAB8]) ^ 0x9D13D044 ^ (LODWORD(STACK[0xE88]) - ((2 * LODWORD(STACK[0xE88])) & 0x3A27A088) - 1659645884))) ^ LODWORD(STACK[0xCC8]);
  LODWORD(STACK[0xEC0]) = ((((LODWORD(STACK[0xEA0]) ^ LODWORD(STACK[0xE18]) ^ v309) - (LODWORD(STACK[0xE30]) ^ LODWORD(STACK[0xAB8]) ^ 0x9D13D044 ^ (LODWORD(STACK[0xE88]) - ((2 * LODWORD(STACK[0xE88])) & 0x3A27A088) - 1659645884))) ^ LODWORD(STACK[0xCC8])) >> 24) - ((2 * ((((LODWORD(STACK[0xEA0]) ^ LODWORD(STACK[0xE18]) ^ v309) - (LODWORD(STACK[0xE30]) ^ LODWORD(STACK[0xAB8]) ^ 0x9D13D044 ^ (LODWORD(STACK[0xE88]) - ((2 * LODWORD(STACK[0xE88])) & 0x3A27A088) - 1659645884))) ^ LODWORD(STACK[0xCC8])) >> 24)) & 0x50);
  v317 = v283 ^ LODWORD(STACK[0xCC0]);
  LODWORD(v282) = v282 ^ (v294 + 239462628) ^ 0x730C7576;
  LODWORD(v283) = v282 ^ v307;
  LODWORD(v282) = v282 ^ v306;
  v318 = STACK[0xB18];
  v319 = STACK[0xB20];
  v320 = (v283 - LODWORD(STACK[0xB18])) ^ LODWORD(STACK[0xB08]) ^ (v282 - LODWORD(STACK[0xB20]));
  v321 = STACK[0xC14];
  v322 = STACK[0xCB0];
  LODWORD(v283) = LODWORD(STACK[0xC50]) - v263 - LODWORD(STACK[0xD80]) - 1836180244;
  v323 = STACK[0xCA8];
  LODWORD(v263) = STACK[0xCD0];
  v324 = LODWORD(STACK[0xCD0]) ^ LODWORD(STACK[0xC24]) ^ ((v286 ^ LODWORD(STACK[0xCD0]) ^ 0xCD93C504 ^ (LODWORD(STACK[0xCD8]) - ((2 * LODWORD(STACK[0xC14])) & 0x9B278A08) + 632211979)) - ((v281 - ((2 * LODWORD(STACK[0xCB0])) & 0x46D682B6) + 966382551) ^ LODWORD(STACK[0xCA8]) ^ v283 ^ 0xA36B415B));
  LODWORD(STACK[0xEA0]) = (v260 >> 24) - ((2 * (v260 >> 24)) & 0xFFFFFF9F);
  LODWORD(v282) = 98 - 51 * (((v258 ^ 0x24) + 103) ^ ((v258 ^ 0x1C) + 95) ^ ((v258 ^ 0xFFFFFFF9) - 68));
  v325 = v282 & 0xFFFFFF8E ^ 0x52;
  LODWORD(STACK[0xE80]) = v282 ^ (2 * ((v282 ^ 0x68) & (2 * ((v282 ^ 0x68) & (2 * ((v282 ^ 0x68) & (2 * ((v282 ^ 0x68) & (2 * ((v282 ^ 0x68) & (2 * v325) ^ v325)) ^ v325)) ^ v325)) ^ v325)) ^ v325));
  LODWORD(STACK[0xE60]) = LODWORD(STACK[0xCB8]) ^ v322 ^ ((v283 ^ (v286 - ((2 * v286) & 0xC0CA5B3C) + 1617243550) ^ 0x60652D9E ^ v263) - v322) ^ ((v286 ^ v283 ^ v321) - v323);
  LODWORD(STACK[0xE88]) = (v308 - (v319 ^ v318 ^ (v294 + 239462628))) ^ LODWORD(STACK[0xC68]);
  LODWORD(v282) = (LODWORD(STACK[0xA48]) - ((2 * LODWORD(STACK[0xA48])) & 0x54) + 42) ^ LODWORD(STACK[0xA50]);
  LODWORD(v283) = (v282 ^ 0xFFFFFFA8) + 56;
  v326 = v283 & 0xFFFFFF91 ^ 0xFFFFFFED;
  LODWORD(STACK[0xE58]) = v283 ^ (2 * ((v283 ^ 0x46) & (2 * ((v283 ^ 0x46) & (2 * ((v283 ^ 0x46) & (2 * ((v283 ^ 0x46) & (2 * ((v283 ^ 0x46) & (2 * (((2 * (v282 & 7)) ^ 0x56) & (v283 ^ 0x46) ^ v326)) ^ v326)) ^ v326)) ^ v326)) ^ v326)) ^ v326));
  LODWORD(v282) = (((LODWORD(STACK[0xEA8]) ^ 0xFFFFFFD9) + 39) ^ ((LODWORD(STACK[0xEA8]) ^ 0xFFFFFFCF) + 49) ^ ((LODWORD(STACK[0xEA8]) ^ 0x50) - 80)) + 62;
  LODWORD(v283) = v282 & 0x62 ^ 0xFFFFFFD9;
  LODWORD(v282) = v282 ^ (8 * LODWORD(STACK[0xEA8])) & 0x10 ^ (2 * ((v282 ^ 0x70) & (2 * ((v282 ^ 0x70) & (2 * ((v282 ^ 0x70) & (2 * ((v282 ^ 0x70) & (2 * ((v282 ^ 0x70) & (2 * (v283 ^ v282 & 0x12)) ^ v283)) ^ v283)) ^ v283)) ^ v283)) ^ v283));
  LODWORD(v282) = 60 - 59 * (((v282 ^ 0xFFFFFF9A) - 60) ^ ((v282 ^ 0x7C) + 38) ^ ((v282 ^ 9) + 81));
  LODWORD(v283) = v282 & 0xFFFFFFD5 ^ 0xFFFFFFB2;
  LODWORD(STACK[0xEA8]) = v282 ^ (2 * ((v282 ^ 0x70) & (2 * ((v282 ^ 0x70) & (2 * ((v282 ^ 0x70) & (2 * ((v282 ^ 0x70) & (2 * (v282 & (2 * (v282 & (2 * v282) & 0x62 ^ v283)) ^ v283)) ^ v283)) ^ v283)) ^ v283)) ^ v283));
  LODWORD(v282) = -70 - 81 * (((LODWORD(STACK[0xA58]) ^ 0x73) + 59) ^ ((LODWORD(STACK[0xA58]) ^ 0x3F) + 119) ^ ((LODWORD(STACK[0xA58]) ^ 0x7C) + 54));
  LODWORD(v283) = v282 & 0x6E ^ 0xFFFFFFC7;
  v327 = v282 ^ (2 * ((v282 ^ 0x60) & (2 * ((v282 ^ 0x60) & (2 * ((v282 ^ 0x60) & (2 * ((v282 ^ 0x60) & (2 * ((v282 ^ 0x60) & (2 * (v283 ^ v282 & 0xE)) ^ v283)) ^ v283)) ^ v283)) ^ v283)) ^ v283));
  LODWORD(v255) = STACK[0xA30];
  v328 = (LODWORD(STACK[0xA30]) >> 8) - ((LODWORD(STACK[0xA30]) >> 7) & 0x72);
  v329 = (LODWORD(STACK[0xB28]) - 38444285);
  LODWORD(STACK[0xE48]) = v260 - (v260 >> 5 << 6);
  LODWORD(STACK[0xE90]) = v276 - (STACK[0xE90] & 0x2A);
  LODWORD(STACK[0xE50]) = (v316 >> 8) - ((2 * (v316 >> 8)) & 0x1FFFFBC);
  v330 = v255 - ((2 * v255) & 0x28);
  v331 = v304 ^ 0x23E6589Fu;
  v332 = STACK[0xD88] ^ 0x1BE4FC0B ^ (6166 * (STACK[0xD88] != 800546826));
  v333 = v331 - ((2 * v331) & 0x1E5A3CB96) + 0x7DEBB339F2D1E5CBLL;
  LODWORD(STACK[0xC70]) = (v333 >> 24) ^ 0x47;
  LODWORD(STACK[0xC90]) = LODWORD(STACK[0xE78]) ^ 0xFFFFFFF3;
  v334 = STACK[0xEB8];
  LODWORD(STACK[0xAA4]) = ((LODWORD(STACK[0xEB8]) ^ 0xEFB412FC) >> 24) ^ 0xFFFFFFA9;
  LODWORD(STACK[0xA88]) = STACK[0xEB0] ^ 0xFFFFFFB1;
  v335 = v310;
  v336 = v310 ^ 0x9595AF02;
  LODWORD(STACK[0xC78]) = ((v310 ^ 0x9595AF02) >> 24) ^ 0x17;
  v337 = LODWORD(STACK[0xCA0]) - LODWORD(STACK[0xC18]);
  LODWORD(v276) = LODWORD(STACK[0xE70]) ^ v337;
  LODWORD(STACK[0xAC0]) = ((v276 ^ 0x48501A37) >> 24) ^ 0xFFFFFF81;
  LODWORD(STACK[0xC68]) = LODWORD(STACK[0xEC0]) - 88;
  LODWORD(STACK[0xC50]) = ((v317 ^ 0x1641691Du) >> 24) ^ 0xFFFFFFC4;
  LODWORD(STACK[0x4E0]) = ((v320 ^ 0x666AC2EDu) >> 24) ^ 0xFFFFFFD6;
  LODWORD(STACK[0xC98]) = (v324 >> 24) ^ 0x78;
  LODWORD(STACK[0xC38]) = (v329 >> 24) ^ 0xFFFFFFBE;
  LODWORD(STACK[0xAB8]) = LODWORD(STACK[0xEA0]) + 79;
  LODWORD(STACK[0xA90]) = STACK[0xDA8] ^ 0x78;
  LODWORD(v261) = STACK[0xE60];
  LODWORD(STACK[0xCA8]) = ((LODWORD(STACK[0xE60]) ^ 0x41E6C7DDu) >> 24) ^ 0xFFFFFFE6;
  LODWORD(STACK[0xA80]) = STACK[0xA80] ^ 0x5E;
  LODWORD(STACK[0xAB0]) = ((v334 ^ 0xEFB412FC) >> 16) ^ 0xFFFFFFA4;
  LODWORD(STACK[0xC08]) = ((v317 ^ 0x1641691Du) >> 16) ^ 7;
  LODWORD(STACK[0xC4C]) = (v336 >> 16) ^ 0x45;
  LODWORD(STACK[0x8A8]) = STACK[0xB90] ^ 1;
  LODWORD(STACK[0xAC8]) = ((v320 ^ 0x666AC2EDu) >> 16) ^ 0x2C;
  LODWORD(STACK[0xCA0]) = ((v276 ^ 0x48501A37) >> 16) ^ 0xFFFFFFE3;
  LODWORD(STACK[0xCF0]) = (v260 >> 16) - ((2 * (v260 >> 16)) & 0x1FFAE) + 87;
  LODWORD(v283) = STACK[0xE88];
  LODWORD(STACK[0xC24]) = ((LODWORD(STACK[0xE88]) ^ 0xD994F522) >> 24) ^ 0x3A;
  LODWORD(STACK[0x748]) = (v324 >> 16) ^ 0x1D;
  LODWORD(STACK[0xBD0]) = ((v261 ^ 0x41E6C7DD) >> 16) ^ 0x3D;
  LODWORD(STACK[0xCD0]) = LODWORD(STACK[0xE58]) ^ 0x70;
  LODWORD(STACK[0xCE0]) = ((v283 ^ 0xD994F522) >> 16) ^ 0xFFFFFFBA;
  LODWORD(STACK[0xBC8]) = (v333 >> 16) ^ 0xFFFFFFB4;
  LODWORD(STACK[0xA78]) = STACK[0xEC8] ^ 0x3B;
  LODWORD(STACK[0xCC0]) = ((v276 ^ 0x48501A37) >> 8) ^ 0xFFFFFFED;
  LODWORD(STACK[0xCB8]) = ((v334 ^ 0xEFB412FC) >> 8) ^ 0xFFFFFF96;
  LODWORD(STACK[0xCB0]) = LODWORD(STACK[0xEA8]) ^ 0x22;
  LODWORD(STACK[0xC40]) = ((v320 ^ 0x666AC2EDu) >> 8) ^ 0xFFFFFF80;
  LODWORD(STACK[0x4E4]) = (v324 >> 8) ^ 0xFFFFFF85;
  LODWORD(v281) = LODWORD(STACK[0xE10]) - ((2 * LODWORD(STACK[0xE10])) & 0xFFFFFFD8);
  LODWORD(STACK[0xBA0]) = (LODWORD(STACK[0xE10]) >> 8) ^ 0xFFFFFFC4;
  LODWORD(STACK[0xA70]) = STACK[0xE98] ^ 0x7F;
  LODWORD(STACK[0xC30]) = v327 ^ 0xFFFFFFEF;
  LODWORD(STACK[0xCD8]) = ((v317 ^ 0x1641691Du) >> 8) ^ 0xFFFFFFE3;
  LODWORD(STACK[0xCE8]) = v328 + 57;
  LODWORD(STACK[0xCC8]) = v276 ^ 0x78;
  LODWORD(STACK[0xBB8]) = ((v283 ^ 0xD994F522) >> 8) ^ 6;
  LODWORD(STACK[0xAA8]) = ((v261 ^ 0x41E6C7DD) >> 8) ^ 0x14;
  LODWORD(STACK[0xB00]) = v281 + 108;
  LODWORD(STACK[0xBA8]) = (v333 >> 8) ^ 0xFFFFFFA5;
  LODWORD(STACK[0x720]) = LODWORD(STACK[0xE48]) - 32;
  LODWORD(STACK[0xB28]) = v334 ^ 0xFFFFFF8C;
  LODWORD(STACK[0xB98]) = v335 ^ 0x3C;
  LODWORD(STACK[0xB90]) = v324 - ((2 * v324) & 0x70) + 56;
  LODWORD(STACK[0xA68]) = LODWORD(STACK[0xE90]) - 107;
  LODWORD(STACK[0xAF8]) = (v336 >> 8) ^ 0xFFFFFFB8;
  LODWORD(STACK[0xBC0]) = LODWORD(STACK[0xE50]) + 94;
  LODWORD(STACK[0xB20]) = v320 ^ 0xFFFFFFB6;
  LODWORD(STACK[0xB08]) = v330 + 20;
  LODWORD(STACK[0xBB0]) = v283 ^ 0x27;
  LODWORD(STACK[0xB18]) = v317 ^ 0xFFFFFFC7;
  LODWORD(STACK[0xAE8]) = v331 + (v331 >> 6 << 7) - 64;
  v338 = *(STACK[0xED8] + 8 * v332);
  LODWORD(STACK[0x938]) = v337;
  LODWORD(STACK[0xE60]) = 1;
  LODWORD(STACK[0xE58]) = 1;
  LODWORD(STACK[0xE30]) = 1;
  LODWORD(STACK[0xE40]) = 1;
  LODWORD(STACK[0xE48]) = 1;
  LODWORD(STACK[0xE50]) = 1;
  LODWORD(STACK[0xE18]) = 1;
  LODWORD(STACK[0xE20]) = 1;
  return v338(188);
}

uint64_t sub_10089A720()
{
  v10 = STACK[0xF40] + 4;
  v11 = (v1 - 1364022273 + (*STACK[0xF40] ^ 0x514CD5A6)) ^ ((*STACK[0xF40] ^ 0x3991E57C) - 965862780) ^ ((*STACK[0xF40] ^ 0x8108F7CB) + 2130118709);
  v12 = 155453101 * ((2 * (v3 & 0x4E1ED0E0) - v3 - 1310642403) ^ 0x57C734D2);
  *(v9 - 200) = *(v0 + v4);
  *(v5 + 2296) = 16376 - 1709 * ((2 * (v3 & 0xD0E0) - v3 + 12061) ^ 0x34D2);
  *(v9 - 224) = v10;
  *(v9 - 232) = v12 ^ 0xD60FFE4B;
  *(v9 - 228) = v12 ^ v6;
  *(v9 - 212) = v12 + 1697753898 + v11;
  *(v9 - 208) = v1 - v12 + 1777258814;
  *(v9 - 256) = (40409587 * LODWORD(STACK[0x2074]) - 1378563772) ^ v12;
  *(v9 - 248) = &STACK[0x13C4];
  *(v9 - 240) = v8;
  v13 = (*(v7 + 8 * v2))(v9 - 256);
  return (*(v7 + 8 * ((47952 * (*(v9 - 204) == -371865839)) ^ v1)))(v13);
}

uint64_t sub_10089AAA8(uint64_t a1, unsigned int a2, uint64_t a3, __int16 a4, unsigned int a5, int a6, int a7, int a8)
{
  v25 = v19;
  v26 = v14;
  v27 = v16;
  v28 = LODWORD(STACK[0xDF8]) ^ 0x1AB8;
  LODWORD(STACK[0xE68]) = v28;
  v30 = (a5 >> 4) & 0xFFFFFF0 | (a6 >> 12);
  LODWORD(STACK[0xDD8]) = 409 * v28;
  LOBYTE(v28) = v30 - 103 * v28 - ((v28 + 87) & (2 * v30)) - 57;
  v31 = *(STACK[0xE20] + 4 * (HIBYTE(a2) ^ 0x33)) + 1854724526;
  v32 = STACK[0xEA0];
  v33 = *(STACK[0xEA0] + ((HIBYTE(a4) * v10) ^ v9));
  v34 = *(STACK[0xD38] + 4 * ((((((((v33 >> 2) ^ 0x11) - ((2 * ((v33 >> 2) ^ 0x11)) & 0xF3) + 57) ^ 0x39) + (v33 << 6) + 0x80) ^ 0x89 ^ (2 * (((((v33 >> 2) ^ 0x11) - ((2 * ((v33 >> 2) ^ 0x11)) & 0xF3) + 57) ^ 0x39) + (v33 << 6) + 0x80)) & 0xE4) - 1) ^ 0xF1u));
  v35 = v31 ^ (v31 >> 6) ^ (v31 >> 3) ^ *(STACK[0xE28] + 2 * (v22 ^ 0x2Eu)) ^ (((v12 | (33378316 - v14)) & 0x123C3A5 ^ 0xC4443EA3) - 2123050088 + *(STACK[0xE00] + 4 * (((v22 ^ 0x78F49622u) >> 16) ^ 0x21u))) ^ (v34 - ((2 * v34 + 206094878) & 0x83ABA9FA) - 939903476);
  v36 = *(STACK[0xE10] + 4 * (((-81 * (*(v15 + (v28 ^ 0x2BLL)) ^ v28 ^ 0xBA)) ^ (((-81 * (*(v15 + (v28 ^ 0x2BLL)) ^ v28 ^ 0xBA)) & 0xFD ^ 0xFD) + ((-81 * (*(v15 + (v28 ^ 0x2BLL)) ^ v28 ^ 0xBA)) & 0xFD))) ^ 0x55u));
  v37 = *(v13 + ((BYTE2(a6) + 18) ^ 0xB9));
  v38 = *(STACK[0xD28] + 4 * (HIBYTE(a5) ^ 0xF6)) - 814946039;
  v39 = v36 ^ *(STACK[0xE18] + 2 * (v21 ^ 0xEAu)) ^ *(STACK[0xD30] + 4 * ((-51 * (((v37 ^ 0x9F) + 85) ^ ((v37 ^ 0x3E) - 10) ^ ((v37 ^ 0x60) - 84)) + 49) ^ 0xD3u)) ^ (v36 >> 1) & 0x381C6655 ^ v38 ^ ((4 * v38) | 0xB8620690);
  v40 = ((v20 ^ v18 ^ v35 ^ v39 ^ 0x7C7B1C67) - (v20 ^ v18 ^ v35 ^ 0xE4699B5D)) ^ ((LODWORD(STACK[0xDE8]) ^ 0x9812873A ^ v39) - LODWORD(STACK[0xDE8])) ^ ((v23 ^ 0x9812873A ^ v39) - v23 - ((2 * ((v23 ^ 0x9812873A ^ v39) - v23)) & 0x79B83F3A) + 1021058973) ^ 0x3CDC1F9D;
  v41 = (v35 ^ 0xC949DC0B) + (v11 ^ 0x935A066F);
  LODWORD(STACK[0xDE8]) = v25 + 496553724;
  LODWORD(STACK[0xDD0]) = ((a8 ^ 0x33DB19AD) + 1926893809) ^ ((a8 ^ 0xF7F634AB) - 1225310729) ^ ((a8 ^ 0x57F39CF2) + 384996784);
  v42 = v11 ^ 0x935A066F ^ (v25 + 496553724);
  LODWORD(STACK[0xDC8]) = v42;
  v42 -= 840030265;
  v43 = v14 + 295885 - 1144 * ((((v14 + 295885) * v8) >> 32) >> 10);
  v44 = v14 + 275235 - 1144 * ((((v14 + 275235) * v8) >> 32) >> 10);
  v45 = STACK[0xD98];
  *(STACK[0xD98] + 4 * v43) = v41;
  *(v45 + 4 * v44) = v40 - (a7 ^ 0x935A066F);
  v46 = *(STACK[0xD68] + (v24 - 865515938));
  v47 = (*(STACK[0xD68] + (v24 - 865515940)) ^ 0x84) << ((((1 - v24) & 3) + ((v24 + 94) & 3)) & 4 | 0x10);
  v48 = (v47 - ((2 * v47) & 0x1CB20000) + 777628609) ^ (*(STACK[0xD68] + (v24 - 865515941)) << 24);
  v49 = (v48 ^ 0x54A65416) & ((*(STACK[0xD68] + (v24 - 865515939)) << 8) ^ 0xD4F604D6) ^ v48 & 0x2B092B01;
  LOBYTE(v41) = *(STACK[0xEB8] + (((BYTE2(v42) ^ 9) + 18) ^ 0x91));
  LOBYTE(v41) = ((v41 ^ 0x35) - 53) ^ ((v41 ^ 0x83) + 125) ^ ((v41 ^ 0xF0) + 16);
  LOBYTE(v48) = v41 + 87;
  LOBYTE(v41) = v41 - 41;
  LOBYTE(v48) = v48 ^ 2;
  LOBYTE(v41) = v41 ^ (2 * (v48 & (2 * (v48 & (2 * (v48 & (2 * (v48 & (2 * (v48 & (2 * (v48 & (2 * (v41 & 0x83)) ^ v41 & 0x83)) ^ v41 & 0x83)) ^ v41 & 0x83)) ^ v41 & 0x83)) ^ v41 & 0x83)) ^ (v41 & 0x83 | 0x40)));
  v50 = a7 ^ 0x935A066F ^ (v27 + 496553724);
  v51 = *(STACK[0xDC0] + 4 * ((-51 * (v41 ^ (v41 >> 4) ^ (v41 >> 1) ^ 0x2A)) ^ 0x82u)) ^ 0x492FC167;
  v52 = ((v42 ^ 0xA0) - 283024897) ^ v42 ^ 0xA0 ^ ((HIBYTE(v42) ^ 0x86) + (HIBYTE(v42) ^ 0x695626D0)) ^ v46 & 0x38 ^ *(STACK[0xE50] + 4 * (v42 ^ 0xB1u)) ^ *(STACK[0xE08] + 4 * (HIBYTE(v42) ^ 0xCA)) ^ (*(STACK[0xD18] + 2 * (BYTE1(v42) ^ 0x7Bu)) ^ BYTE1(v42)) ^ v51 ^ (v49 ^ 0xAD374D10) & (v46 ^ 0xFFFFFF7B) ^ (4 * v51) & 0xA4561F9C;
  v53 = v52 ^ 0xEF59D19D;
  *(v45 + 4 * ((v14 + 590) % 0x478u)) = v53;
  v54 = v45;
  v55 = STACK[0xE78];
  v56 = *(STACK[0xE78] + (v24 - 865515941));
  v57 = *(STACK[0xE78] + (v24 - 865515940));
  v58 = *(STACK[0xE78] + (v24 - 865515939));
  v59 = ((v58 - ((2 * v58) & 0x1AE)) << 8) - 1384458496;
  v60 = ((v56 - ((2 * v56) & 0xD6)) << 24) + 1795162112;
  v61 = *(STACK[0xE78] + (v24 - 865515938));
  v62 = v61 - ((2 * v61) & 0x54) + 1231283498;
  v63 = (v59 & 0x9010300 ^ 0xCEB8026C ^ (v60 & 0x94000000 ^ 0xCD7CCB4F ^ ((((v57 - ((2 * v57) & 0x166)) << 16) - 1397555200) ^ 0xC7B13769) & (v60 ^ 0x94FFF77F)) & (v59 ^ 0x528528FF)) & (v62 ^ 0xB69C1AD5);
  v64 = STACK[0xE38];
  LOWORD(v60) = *(STACK[0xE38] + 2 * (((v50 - 840030265) >> (((8 - v50) & 8) + ((v50 - 57) & 8))) ^ 0x30u) + 10536);
  v65 = *(STACK[0xE70] + 4 * ((v50 - 57) ^ 0x21u)) ^ 0xD9C5923;
  v66 = (1486332688 * v65) ^ v65 ^ ((((v60 ^ 0x77DF) - 30687) ^ ((v60 ^ 0xC220) + 15840) ^ ((v60 ^ 0x1EE6) - 7910)) - 21959) ^ ((((((8 * v60) ^ 0x46F6) + 31513) ^ (((8 * v60) ^ 0x176E) + 10881)) ^ (((8 * v60) ^ 0x950) + 13503)) + 25857) & 0xFFF8;
  LOBYTE(v60) = *(v13 + (((((v50 - 840030265) >> 16) ^ 0xF8) + 18) ^ 0xB9));
  v67 = *(STACK[0xDB8] + 4 * ((LODWORD(STACK[0xC04]) - 51 * (((v60 ^ 0x63) - 76) ^ ((v60 ^ 0x33) - 28) ^ ((v60 ^ 0x91) + 66))) ^ 0x56u));
  STACK[0xE60] = v17;
  LOBYTE(v65) = *(STACK[0xE98] + (((((v50 - 840030265) >> 20) & 0xF0 ^ 0x1749CDD) & (((v50 - 840030265) >> 28) | 0x47FDDCF0) | ((v50 - 840030265) >> 28) & 2) ^ 0x1749C92));
  v68 = BYTE2(v52) ^ 0x8D;
  v69 = *(STACK[0xE48] + 4 * (LODWORD(STACK[0xD88]) + 81 * (((v65 ^ 0x9D) + 110) ^ ((v65 ^ 0x9E) + 111) ^ ((v65 ^ 0x33) - 60))));
  v70 = v69 ^ (v62 & 0x2B5 | 0x94100000) ^ v63 ^ v66 ^ ((v67 << (1 - ((-96 - v24) | (v24 + 95)))) + (v67 >> 30));
  *(v45 + 4 * ((v14 + 176410) % 0x478u)) = v70 ^ 0x4AE2C77F;
  LODWORD(v67) = *(v32 + ((-5 * (v52 ^ 0x68)) ^ 0xAFLL));
  v71 = *(STACK[0xD38] + 4 * (((v52 ^ 0xFA54) >> 8) ^ 0x7Eu));
  LOWORD(v67) = *(v64 + 2 * (((((v67 >> 2) | (v67 << 6)) ^ (2 * ((v67 >> 2) | (v67 << 6))) & 0xE4 ^ 0x38) - 1) ^ 0x7Du) + 6834) ^ 0xC2A1;
  v72 = v67 ^ (8 * v67) ^ (2 * v67);
  v73 = v71 - ((2 * v71 + 206094878) & 0xBC3C6866);
  v74 = (-1287610549 * ((v49 & 0xC685F00 ^ 0x54BF) + (v49 & 0xC685F00 ^ 0xC680B00))) ^ (v24 - 865515937) ^ ((v69 & 0x1558 ^ 0x1140) + (v69 & 0x1558 ^ 0x418)) & 0x28A0;
  LODWORD(v67) = LODWORD(STACK[0xDF0]) ^ 0x5F7E5B56;
  v75 = v67 + LODWORD(STACK[0xD20]);
  v76 = LODWORD(STACK[0xE88]) ^ 0x5F7E5B56;
  v77 = v76 + LODWORD(STACK[0xD10]);
  v78 = v72 ^ (*(STACK[0xE00] + 4 * (v68 ^ 0xBCu)) + 1188876446) ^ (v73 + 1682085186) ^ (((v53 >> (((v66 & 0x10) + (v66 & 0x10 ^ 0x10)) | 8u)) ^ 0x317BDBDF) + *(STACK[0xED0] + 4 * ((v53 >> (((v66 & 0x10) + (v66 & 0x10 ^ 0x10)) | 8u)) ^ 0xB1) + 72400));
  LODWORD(v53) = *(STACK[0xE10] + 4 * (((v70 ^ 0x31F4) >> 8) ^ 0x88u));
  v79 = *(v64 + 2 * (v70 ^ 0xC3u) + 3650) ^ v53 ^ (v53 >> 1) & 0x381C6655;
  LODWORD(STACK[0xD20]) = v79;
  v80 = STACK[0xEC0];
  LOBYTE(v62) = *(STACK[0xEC0] + (((HIBYTE(v70) ^ 0x4A) - 7) ^ 0x98));
  v81 = v77 + 683579811;
  v82 = v79 ^ *(STACK[0xD30] + 4 * (((v70 ^ 0x3C6031F4u) >> 16) ^ 0x98u)) ^ __ROR4__(*(STACK[0xDA0] + 4 * ((123 - 59 * (((v62 ^ 0xB1) + 27) ^ ((v62 ^ 0xFA) + 82) ^ ((v62 ^ 0x20) - 116))) ^ 0xD8u)), 10);
  v83 = STACK[0xDE8];
  v84 = (v82 ^ 0x84D49F86) + v42;
  v85 = ((v75 + 683579811) ^ LODWORD(STACK[0xDE8]) ^ v82 ^ 0x24001B8F ^ v78) - ((v75 + 683579811) ^ LODWORD(STACK[0xDE8]) ^ v82 ^ 0x88BA856E);
  LODWORD(v45) = (v27 + 496553724) ^ 0xC6E1AE8;
  LODWORD(v67) = v67 - 2 * v75 - LODWORD(STACK[0xDD0]);
  v86 = v76 - v27 - 2 * v77;
  v87 = STACK[0xDC8];
  LODWORD(STACK[0xDF0]) = LODWORD(STACK[0xDC8]) - v67;
  v88 = (v83 ^ 0xC6E1AE8) - 1440669945 + v67;
  LODWORD(STACK[0xDE8]) = v88;
  v89 = (((v81 ^ 0xACBA9EE1 ^ v78) - v81) ^ v85 ^ 0xE0671E35 ^ (((v27 + 496553724) ^ 0xA0D48409 ^ v78) - v45 - ((2 * (((v27 + 496553724) ^ 0xA0D48409 ^ v78) - v45)) & 0xC0CE3C6A) - 530112971)) - (v50 - 840030265);
  v90 = v45 - 1679265588 + v86;
  LOBYTE(v85) = v67 + v88;
  LODWORD(v67) = v67 + v88 - 1440669945;
  LODWORD(STACK[0xDD0]) = v87 + v75;
  v91 = v81 + v50 - 840030265;
  LODWORD(STACK[0xE88]) = v50 - v86;
  *(v54 + 4 * ((v26 + 296180) % ((v91 & 0x478 ^ 0x478) + (v91 & 0x478)))) = v84;
  *(v54 + 4 * ((v26 + 275530) % 0x478u)) = v89;
  v92 = ((v74 ^ 0x40E13A0B) + 1305831426) ^ ((v74 ^ 0xD765A43D) - 632162760) ^ ((v74 ^ 0x654F33C3) + 1752916426);
  LOBYTE(v89) = (*(STACK[0xD68] + v92 + 1) ^ 0x84) + 61;
  LOBYTE(v74) = v89 & 0xC4 ^ 0x84;
  v93 = STACK[0xEA8];
  LOBYTE(v89) = *(STACK[0xEA8] + ((v89 ^ (2 * ((v89 ^ 0x3C) & (2 * ((v89 ^ 0x3C) & (2 * ((v89 ^ 0x3C) & (2 * ((v89 ^ 0x3C) & (2 * v74) | v74)) ^ v74)) ^ v74)) ^ v74))) ^ 0xA3u));
  LOBYTE(v74) = (((v89 ^ 0xB6) + 74) ^ ((v89 ^ 0x90) + 112) ^ ((v89 ^ 0x60) - 96)) + 74;
  LOBYTE(v50) = v74 & 0x92 ^ 0x5F;
  v94 = (-59 * ((8 * v89) & 0x10 ^ v74 ^ (2 * ((v74 ^ 0x64) & (2 * ((v74 ^ 0x64) & (2 * ((v74 ^ 0x64) & (2 * ((v74 ^ 0x64) & (2 * ((v74 ^ 0x64) & (2 * ((v74 ^ 0x64) & 0x36 ^ v50)) ^ v50)) ^ v50)) ^ v50)) ^ v50)) ^ v50)) ^ 0x1F)) << 16;
  v95 = *(STACK[0xD68] + v92 + 2) << 8;
  v96 = *(STACK[0xD68] + v92 + 3);
  v97 = ((v95 & 0xFFFF9FFF | ((((*(STACK[0xD68] + v92) << 24) ^ 0xC7982E92) & ~v94 | v94 & 0x670000) ^ 0x3EF24E1A) & (v95 ^ 0xFFFF7A9F)) ^ 0xB4247EF4) & (v96 ^ 0xFFFFFF7B);
  LOBYTE(v94) = *(v80 + ((((11 - 59 * (((*(v80 + (v85 ^ 0x98)) ^ 0x61) + 123) ^ ((*(v80 + (v85 ^ 0x98)) ^ 0x51) + 75) ^ ((*(v80 + (v85 ^ 0x98)) ^ 0x5B) + 65))) ^ 0xBC) - 7) ^ 0x98));
  v98 = v80;
  LOBYTE(v94) = -59 * (((v94 ^ 0x33) - 9) ^ ((v94 ^ 0x70) - 74) ^ ((v94 ^ 0x28) - 18)) + 85;
  LOWORD(v85) = *(STACK[0xE40] + 2 * (BYTE1(v67) ^ 0xA9u));
  v99 = BYTE2(v67) ^ 0x6E;
  LODWORD(v80) = v94 ^ 0xDC;
  v100 = (v99 + 852345647) ^ ((BYTE3(v67) ^ 0x6956268E) + (BYTE3(v67) ^ 0xD8)) ^ v96 & 0xFFFFFF83 ^ *(STACK[0xE30] + 4 * (BYTE2(v67) ^ 0x4Fu)) ^ *(STACK[0xE08] + 4 * (BYTE3(v67) ^ 0x94)) ^ ((((v85 ^ 0x8C0D) + 29683) ^ ((v85 ^ 0xA20A) + 24054) ^ ((v85 ^ 0x851E) + 31458)) + 16748) ^ (v80 - 283024897) ^ *(STACK[0xE50] + 4 * (v94 ^ 0xCDu)) ^ v97;
  v101 = v80 ^ (v99 - ((2 * v99) & 0xA4) + 204287826) ^ v100;
  *(v54 + 4 * ((v26 + 885) % 0x478u)) = v101 ^ 0xD23FF185;
  v102 = *(v55 + v92 + 1);
  LODWORD(v32) = v86 - 1679265588 + v90;
  v103 = v92 + ((v102 & 1 ^ ((v102 & 1) + 77) ^ ((v102 & 1) - 79) ^ 0xCF) + (((v102 & 1 ^ 0xC1) - 82) ^ ((v102 & 1) - 111) ^ ((v102 & 1 ^ 0x37) + 92)) + 97);
  v104 = ((*(v55 + v92) - ((2 * *(v55 + v92)) & 0xCA)) << 24) - 452984832;
  v105 = ((v102 - ((2 * v102) & 0x9C)) << 16) - 1605500928;
  LOBYTE(v102) = *(v55 + v103 + 1);
  LOBYTE(v86) = 91 * v102 + 8;
  LOBYTE(v102) = v86 - 96 * v102;
  LOBYTE(v86) = v86 & 0x1E ^ 0x17 ^ v102 & 0xF8;
  LOBYTE(v102) = v102 ^ (2 * ((v102 ^ 0x78) & (2 * ((v102 ^ 0x78) & (2 * ((v102 ^ 0x78) & (2 * ((v102 ^ 0x78) & (2 * ((v102 ^ 0x78) & (2 * (((2 * (v102 & 0xF8)) ^ 0x1E) & (v102 ^ 0x78) ^ v86)) ^ v86)) ^ v86)) ^ v86)) ^ v86)) ^ v86));
  v106 = *(v55 + v103 + 2);
  v107 = ((*(STACK[0xE90] + (v102 ^ 0xC0)) ^ v102 ^ 0x64) - 1) << 8;
  v108 = ((v106 - ((2 * v106) & 0xC6) + 397990243) & 0x2011E3 ^ 0xB04B25A8 ^ (((v105 ^ 0x5AE92C95) & ~v107 | v107 & 0xD300) ^ 0x27F70289) & ((v106 - ((2 * v106) & 0xC6) + 397990243) ^ 0xE847269C)) & (v104 ^ 0x1AFFFFFF);
  LOBYTE(v105) = *(v93 + (((STACK[0xD20] & 0x8A ^ 2) + (STACK[0xD20] & 0x8A ^ 0x88)) ^ (((-81 * ((((v32 >> 4) & 0xF0 | (v32 >> 12)) - ((2 * ((v32 >> 4) & 0xF0 | (v32 >> 12))) & 0x70) - 72) ^ 0xBA ^ *(STACK[0xEB0] + (((v32 >> 4) & 0xF0 | (v32 >> 12)) ^ 0x93)))) ^ 0x2D) - 7) ^ 0xED));
  LOBYTE(v53) = (((v105 ^ 0xEF) + 17) ^ ((v105 ^ 0x9B) + 101) ^ ((v105 ^ 0x32) - 50)) + 52;
  LOBYTE(v99) = v53 & 0x10 ^ 0x9F;
  v109 = *(STACK[0xE48] + 4 * (BYTE3(v32) ^ 0xD1));
  v110 = ((BYTE2(v32) ^ 0xAA) - 129294016) ^ BYTE2(v32) ^ __ROR4__(*(STACK[0xD80] + 4 * (v32 ^ 0xCFu)), 10) ^ *(STACK[0xE60] + 4 * (BYTE2(v32) ^ 0xB8u)) ^ (v109 - ((2 * v109) & 0x71445FE0) + 950153200) ^ *(STACK[0xE58] + 2 * ((-59 * ((8 * v105) & 0x10 ^ v53 ^ (2 * ((v53 ^ 0x7A) & (2 * ((v53 ^ 0x7A) & (2 * ((v53 ^ 0x7A) & (2 * ((v53 ^ 0x7A) & (2 * ((v53 ^ 0x7A) & (2 * ((v53 ^ 0x7A) & 0x2A ^ v99)) ^ v99)) ^ v99)) ^ v99)) ^ v99)) ^ v99)) ^ 0x9D)) ^ 0xD3u));
  v111 = ((v110 ^ 0x38A28443) - 2 * ((v110 ^ 0x38A28443) & 0x65ABE01C ^ v110 & 0x10) - 441720820) ^ (v104 & 0x92000000 | 0x44C408) ^ v108;
  *(v54 + 4 * ((v26 + 176705) % 0x478u)) = v111 ^ 0x2D838444;
  LOBYTE(v110) = *(v98 + ((((v101 ^ 0xD23FF185) >> 16) - 7) ^ 0x98));
  LOBYTE(v86) = *(STACK[0xEB8] + (((HIBYTE(v100) ^ 0x24) + 18) ^ 0x91));
  LOBYTE(v86) = (((v86 ^ 0x42) - 66) ^ ((v86 ^ 0x8B) + 117) ^ ((v86 ^ 0x8F) + 113)) - 27;
  LOBYTE(v100) = v86 & 0xB ^ 0x8B;
  LOBYTE(v53) = (v86 ^ 0x74) & (2 * ((v86 ^ 0x74) & (2 * ((v86 ^ 0x74) & (2 * ((v86 ^ 0x74) & (2 * ((v86 ^ 0x74) & (2 * (((2 * ~v86) | 0x94) & (v86 ^ 0x74) ^ v100)) ^ v100)) ^ v100)) ^ v100)) ^ v100)) ^ v100;
  v112 = *(STACK[0xE20] + 4 * ((-51 * (v86 ^ (2 * v53) ^ ((v86 ^ (2 * v53)) >> 4) ^ ((v86 ^ (2 * v53)) >> 1) ^ 0xEE)) ^ 0x22u)) + 1854724526;
  LOBYTE(v53) = *(STACK[0xEC8] + (((v111 ^ 0x44) + 18) ^ 0xB9));
  v113 = *(STACK[0xE28] + 2 * (v101 ^ 0x76u)) ^ __ROR4__(*(STACK[0xDB0] + 4 * (BYTE1(v101) ^ 0xA8u)), 20) ^ (*(STACK[0xE00] + 4 * ((-59 * (((v110 ^ 0xEB) + 37) ^ ((v110 ^ 0xA4) + 108) ^ ((v110 ^ 0x24) - 20)) + 7) ^ 0x91u)) + 1188876446) ^ v112 ^ (v112 >> 3) ^ (v112 >> 6);
  v114 = *(STACK[0xE18] + 2 * ((LODWORD(STACK[0x50C]) - 51 * (((v53 ^ 0x8F) + 117) ^ ((v53 ^ 0xDE) + 38) ^ ((v53 ^ 0x90) + 108))) ^ 0xBFu));
  LOBYTE(v108) = *(STACK[0xEB8] + ((((v111 ^ 0x2D838444) >> 16) + 18) ^ 0x91));
  LOBYTE(v108) = (((v108 ^ 0x84) + 124) ^ ((v108 ^ 0x8B) + 117) ^ ((v108 ^ 0x49) - 73)) + 51;
  LOBYTE(v101) = v108 & 0x2D ^ 0x47;
  v115 = v114 ^ *(STACK[0xED0] + 4 * (BYTE1(v111) ^ 0x16u) + 92356);
  LOBYTE(v108) = v108 ^ (2 * ((v108 ^ 0x26) & (2 * ((v108 ^ 0x26) & (2 * ((v108 ^ 0x26) & (2 * ((v108 ^ 0x26) & (2 * ((v108 ^ 6) & (2 * (((2 * v108) & 0x4E ^ 0xA) & (v108 ^ 6) ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ v101));
  LOBYTE(v114) = v108 ^ ((v114 & 0x2D ^ 0x24) + (v114 & 0x2D ^ 9) - 77) ^ (v108 >> 1) ^ (v108 >> 4);
  LODWORD(v98) = LODWORD(STACK[0xDF0]) - 1636281512;
  v116 = v91 - v32;
  v117 = *(STACK[0xDA8] + 4 * ((LODWORD(STACK[0xD70]) - 51 * (((v114 ^ 0xF7) - 92) ^ (v114 + 85) ^ ((v114 ^ 0x4E) + 27))) ^ 0xF6u));
  v118 = *(STACK[0xD28] + 4 * (HIBYTE(v111) ^ 0x79)) - 814946039;
  v119 = v115 ^ v118 ^ v117 ^ (4 * v118) & 0x479DF96C ^ (v117 >> 2) & 0x3055F346 ^ BYTE1(v111) ^ 0xD8 ^ ((BYTE1(v111) ^ 0xD8) - ((2 * (BYTE1(v111) ^ 0xD8) + 304) & 0x38A) + 2070911069);
  v120 = LODWORD(STACK[0xE88]) - 1397685869;
  *(v54 + 4 * ((v26 + 296475) % 0x478u)) = (((v119 ^ 0xDE14985F ^ LODWORD(STACK[0xDE8]) ^ 0x67AAED0C ^ v98 ^ (LODWORD(STACK[0xDD0]) - v67 - 156450454) ^ v113) - (LODWORD(STACK[0xDE8]) ^ 0x67AAED0C ^ v98 ^ (LODWORD(STACK[0xDD0]) - v67 - 156450454) ^ v113 ^ 0xACDC2B70)) ^ ((v119 ^ 0x72C8B32F ^ v120 ^ v90) - (v120 ^ v90)) ^ 0x5F84D3CE ^ ((v119 ^ 0x72C8B32F ^ v116) - v116 - ((2 * ((v119 ^ 0x72C8B32F ^ v116) - v116)) & 0xBF09A79C) + 1602540494)) - v120;
  *(v54 + 4 * ((v26 + 275825) % 0x478u)) = (v113 ^ 0xCB76C67C) + v98;
  v121 = LODWORD(STACK[0xDF8]) ^ (38077 * (STACK[0xDE0] < 0xC));
  LODWORD(STACK[0xE68]) = v120 + v32 - (v32 ^ 0xE0B14FE5) - (v32 ^ 0xE0B14FE5 ^ v120 ^ v90) - (((v32 ^ 0xE0B14FE5) - 1575868631 + (v32 ^ 0xE0B14FE5 ^ v120 ^ v90)) ^ (((v91 - v32) ^ v120 ^ v90) + 143476973));
  return (*(STACK[0xED8] + 8 * v121))();
}

uint64_t sub_10089C4F8@<X0>(int a1@<W8>, __n128 a2@<Q1>, __n128 a3@<Q2>)
{
  a2.n128_u16[0] = 22873;
  a2.n128_u8[2] = 89;
  a2.n128_u8[3] = 89;
  a2.n128_u8[4] = 89;
  a2.n128_u8[5] = 89;
  a2.n128_u8[6] = 89;
  a2.n128_u8[7] = 89;
  a3.n128_u16[0] = 24415;
  a3.n128_u8[2] = 95;
  a3.n128_u8[3] = 95;
  a3.n128_u8[4] = 95;
  a3.n128_u8[5] = 95;
  a3.n128_u8[6] = 95;
  a3.n128_u8[7] = 95;
  return (*(v6 + 8 * ((26492 * (a1 == 964708060)) ^ (a1 - 1895952686))))(v3 & 0x18, 8 - (v3 & 0x18), -v4, v3 - 37760, v3 + v5 - 8, xmmword_100F523B0, a2, a3);
}

uint64_t sub_10089C684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v9[159];
  v11 = v9[37];
  v9[62] = &STACK[0xD50] + v11;
  v12 = &STACK[0xD50] + v11 + 16;
  v9[132] = v12;
  v9[96] = &STACK[0xD50] + v11 + 48;
  v9[37] = v11 + 80;
  (*(a8 + 8 * (v8 ^ 0x81D4)))();
  v13 = (*(STACK[0x5A0] + 8 * (v8 + 32724)))(v12, 0, 32);
  v14 = STACK[0x5A0];
  STACK[0xAC8] = 0;
  STACK[0x8D0] = 0;
  LODWORD(STACK[0xA74]) = -371865839;
  STACK[0x620] = 0;
  LODWORD(STACK[0x924]) = 0;
  STACK[0x7C8] = v10;
  return (*(v14 + 8 * (((((v10 == 0) ^ (-99 * v8)) & 1) * ((v8 ^ 0x4B00) + 60)) ^ v8)))(v13);
}

uint64_t sub_10089C760(int8x16_t a1, int8x16_t a2, int32x4_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int32x4_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v54 = vld4q_s8(a30);
  v33 = *(a30 + 88);
  v34 = veorq_s8(v54.val[0], a1);
  v35 = vmovl_high_u8(v34);
  v36 = vmovl_u8(*v34.i8);
  v37 = veorq_s8(v54.val[1], a1);
  _Q21 = vmovl_high_u8(v37);
  _Q20 = vmovl_u8(*v37.i8);
  v40 = vshll_n_s16(*_Q20.i8, 0x10uLL);
  __asm { SHLL2           V20.4S, V20.8H, #0x10 }

  v45 = vshll_n_s16(*_Q21.i8, 0x10uLL);
  __asm { SHLL2           V21.4S, V21.8H, #0x10 }

  v46 = veorq_s8(v54.val[2], a1);
  v47 = vmovl_u8(*v46.i8);
  v48 = vmovl_high_u8(v46);
  v54.val[0] = veorq_s8(v54.val[3], a1);
  v54.val[1] = vmovl_u8(*v54.val[0].i8);
  v54.val[2] = vmovl_u16(*v54.val[1].i8);
  v54.val[1] = vmovl_high_u16(v54.val[1]);
  v54.val[0] = vmovl_high_u8(v54.val[0]);
  v54.val[3] = vmovl_u16(*v54.val[0].i8);
  v54.val[0] = vmovl_high_u16(v54.val[0]);
  v49 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v48, 8uLL)), vshlq_n_s32(vmovl_high_u16(v35), 0x18uLL)), v54.val[0]);
  v50 = vorrq_s8(vorrq_s8(vorrq_s8(v45, vshll_n_u16(*v48.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v35.i8), 0x18uLL)), v54.val[3]);
  v51 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v47, 8uLL)), vshlq_n_s32(vmovl_high_u16(v36), 0x18uLL)), v54.val[1]);
  v52 = vorrq_s8(vorrq_s8(vorrq_s8(v40, vshll_n_u16(*v47.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v36.i8), 0x18uLL)), v54.val[2]);
  v54.val[0] = veorq_s8(vandq_s8(v49, a2), (*v54.val & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
  v54.val[3] = veorq_s8(vandq_s8(v50, a2), (*&v54.val[3] & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
  v54.val[1] = veorq_s8(vandq_s8(v51, a2), (*&v54.val[1] & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
  v54.val[2] = veorq_s8(vandq_s8(v52, a2), (*&v54.val[2] & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
  *a9 = vaddq_s32(vsubq_s32(v52, vaddq_s32(v54.val[2], v54.val[2])), a3);
  a9[1] = vaddq_s32(vsubq_s32(v51, vaddq_s32(v54.val[1], v54.val[1])), a3);
  a9[2] = vaddq_s32(vsubq_s32(v50, vaddq_s32(v54.val[3], v54.val[3])), a3);
  a9[3] = vaddq_s32(vsubq_s32(v49, vaddq_s32(v54.val[0], v54.val[0])), a3);
  return (*(v31 + 8 * v30))(-612734692, a5, -612734716, a7, v33);
}

uint64_t sub_10089CAA4@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v4 = (((v3 ^ 0x992F5490) + 1724951408) ^ ((v3 ^ 0x80C01C32) + 2134893518) ^ ((v3 ^ (a2 + 5182) ^ 0xF03ABBB2) + 264597581)) - 904497274;
  v5 = (((*(a1 + 12) ^ 0x3B8F7DDE) - 999259614) ^ ((*(a1 + 12) ^ 0x5E76BEED) - 1584840429) ^ ((*(a1 + 12) ^ 0x8C2C0422) + 1943272414)) - 904497274;
  v6 = (v4 < 0xE040B075) ^ (v5 < 0xE040B075);
  v7 = v4 > v5;
  if (v6)
  {
    v7 = v4 < 0xE040B075;
  }

  return (*(v2 + 8 * ((26 * v7) ^ a2)))();
}

uint64_t sub_10089CC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v58 = *(STACK[0x350] + 32) ^ a37;
  v59 = STACK[0x7E0];
  STACK[0x438] = STACK[0x7E0];
  LODWORD(STACK[0x4C4]) = v58;
  LODWORD(STACK[0x628]) = 65221523;
  return (*(STACK[0x430] + 8 * a36))(a1, v59, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
}

uint64_t sub_10089CD28@<X0>(int a1@<W8>)
{
  v3 = a1 ^ 0x39302632;
  v4 = STACK[0x534];
  LODWORD(STACK[0x780]) = STACK[0x564];
  v5 = LODWORD(STACK[0x4BC]) ^ v1;
  LODWORD(STACK[0x784]) = 1474431445;
  LODWORD(STACK[0x788]) = v5;
  LODWORD(STACK[0x9A0]) = (v3 - 31163) ^ v4 ^ 0xE9D5884C;
  return (*(v2 + 8 * v3))();
}

uint64_t sub_10089CD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v72 + v71) = 0;
  *(*(v70 + 8 * (v73 + 35325)))() = 0;
  v74 = (*(v70 + 8 * (v73 | 0x8A14)))(&a70, 493);
  return (*(v70 + 8 * ((((((v73 - 2029095459) & 0x78F16F8A) - 85757708) & (2 * v74)) + (v74 ^ 0xFD71CBBF) == -42873922) | v73)))(3562053724);
}

uint64_t sub_10089CECC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X7>, int a5@<W8>)
{
  v9 = a5 + 44065;
  v10 = 2 * ((v7 ^ 0x4385C79A18401009) & STACK[0xEB8] ^ v7 & 0x29684EB59962110BLL);
  v11 = STACK[0xEB0] - (((v10 ^ 0x1C2BB16AEFE5A833) - 0x1717ACF76341C765) ^ ((v10 ^ 0xB9E5D5C7AF52F60BLL) + 0x4D2637A5DC0966A3) ^ ((v10 ^ 0xA7CEE98D70377E2ALL) + 0x530D0BEF036CEE84)) + (((v7 ^ 0xE4405E85D3CA2023) + 0x1BBFA17A2C35DFDDLL) ^ ((v7 ^ 0x483C1808CABF6340) - 0x483C1808CABF6340) ^ ((v7 ^ 0xEFF9811721A459BELL) + 0x10067EE8DE5B5D00 + 9377 * ((a5 + 44065) ^ 0xAC55u)));
  v12 = ((v11 ^ 0x8CCC2237B66F1092) + 0x6C5CF18C39B6678BLL) ^ v11 ^ ((v11 ^ 0x80A12F4271E1A81CLL) + 0x6031FCF9FE38DF05) ^ ((v11 ^ 0xACFDCECD5254C566) + 0x4C6D1D76DD8DB27FLL) ^ ((v11 ^ 0xBFFFEFFCE5FCF50FLL) + 0x5F6F3C476A258218);
  v13 = v12 ^ (v5 - ((2 * v5) & 0x5DF64FA4) + 0x8CC93352EFB27D2);
  v14 = v13 ^ 0xA370D3C81956964DLL;
  v15 = (((a4 ^ 0x5719CBAA65740032) - 0x5719CBAA65740032) ^ ((a4 ^ 0x4572A3CDEEA25810) - 0x4572A3CDEEA25810) ^ ((a4 ^ 0x1A0691DEC0FE973DLL) - 0x1A0691DEC0FE973DLL)) - (((a4 ^ 0xE238B0F299EB9282) + 0x487C900044ED5EFALL) ^ ((a4 ^ 0xEF2EEF4B8AA5DE18) + 0x456ACFB957A31264) ^ ((a4 ^ 0xF63A4204A1A8E7CDLL) + 0x5C7E62F67CAE2BB7)) - 0x6EA299F349840E05;
  v16 = (v15 ^ 0xA478C8F964A85155) & (2 * (v15 & 0xC878D0FC048D4451)) ^ v15 & 0xC878D0FC048D4451;
  v17 = ((2 * (v15 ^ 0xB4B8C89964B0D9F5)) ^ 0xF98030CAC07B3B48) & (v15 ^ 0xB4B8C89964B0D9F5) ^ (2 * (v15 ^ 0xB4B8C89964B0D9F5)) & 0x7CC01865603D9DA4;
  v18 = v17 ^ 0x4400825200484A4;
  v19 = (v17 ^ 0x6080004000391100) & (4 * v16) ^ v16;
  v20 = ((4 * v18) ^ 0xF300619580F67690) & v18 ^ (4 * v18) & 0x7CC01865603D9DA0;
  v21 = (v20 ^ 0x7000000500341480) & (16 * v19) ^ v19;
  v22 = ((16 * (v20 ^ 0xCC0186060098924)) ^ 0xCC01865603D9DA40) & (v20 ^ 0xCC0186060098924) ^ (16 * (v20 ^ 0xCC0186060098924)) & 0x7CC01865603D9D80;
  v23 = (v22 ^ 0x4C00004400199800) & (v21 << 8) ^ v21;
  v24 = (((v22 ^ 0x30C01821602405A4) << 8) ^ 0xC01865603D9DA400) & (v22 ^ 0x30C01821602405A4) ^ ((v22 ^ 0x30C01821602405A4) << 8) & 0x7CC01865603D9400;
  v25 = v23 ^ 0x7CC01865603D9DA4 ^ (v24 ^ 0x40000060201D0000) & (v23 << 16);
  v26 = v15 ^ (2 * ((v25 << 32) & 0x7CC0186500000000 ^ v25 ^ ((v25 << 32) ^ 0x603D9DA400000000) & (((v24 ^ 0x3CC01805402019A4) << 16) & 0x7CC0186500000000 ^ 0x6480184000000000 ^ (((v24 ^ 0x3CC01805402019A4) << 16) ^ 0x1865603D00000000) & (v24 ^ 0x3CC01805402019A4))));
  v27 = __ROR8__(v6, 20);
  v28 = (((a4 ^ 0xD516941A572EF346) + 0x2AE96BE5A8D10CBALL) ^ ((a4 ^ 0xC84D9AFB177F2CECLL) + 0x37B26504E880D314) ^ ((a4 ^ 0x1536F7580B7910B5) - 0x1536F7580B7910B5)) - 0x4D4FF82F2FFE6ED2 + (((v26 ^ 0x106E420DEE9B4D68) - 0x2D4E38E05C3E3641) ^ ((v26 ^ 0x6A2C8083C51DDC56) - 0x570CFA6E77B8A77FLL) ^ ((v26 ^ 0x7445ED0F108F11D7) - 0x496597E2A22A6AFELL));
  v29 = (v28 ^ 0xE6E4075176C1B5A9) & (2 * (v28 & 0x88E5475504D439B1)) ^ v28 & 0x88E5475504D439B1;
  v30 = ((2 * (v28 ^ 0xE76603D37741F7CBLL)) ^ 0xDF06890CE72B9CF4) & (v28 ^ 0xE76603D37741F7CBLL) ^ (2 * (v28 ^ 0xE76603D37741F7CBLL)) & 0x6F8344867395CE7ALL;
  v31 = v30 ^ 0x208144821094420ALL;
  v32 = (v30 ^ 0x4702000423018C40) & (4 * v29) ^ v29;
  v33 = ((4 * v31) ^ 0xBE0D1219CE5739E8) & v31 ^ (4 * v31) & 0x6F8344867395CE78;
  v34 = (v33 ^ 0x2E01000042150860) & (16 * v32) ^ v32;
  v35 = ((16 * (v33 ^ 0x418244863180C612)) ^ 0xF8344867395CE7A0) & (v33 ^ 0x418244863180C612) ^ (16 * (v33 ^ 0x418244863180C612)) & 0x6F8344867395CE60;
  v36 = (v35 ^ 0x680040063114C600) & (v34 << 8) ^ v34;
  v37 = (((v35 ^ 0x78304804281085ALL) << 8) ^ 0x8344867395CE7A00) & (v35 ^ 0x78304804281085ALL) ^ ((v35 ^ 0x78304804281085ALL) << 8) & 0x6F8344867395CA00;
  v38 = v36 ^ 0x6F8344867395CE7ALL ^ (v37 ^ 0x300040211840000) & (v36 << 16);
  v39 = v28 ^ (2 * ((v38 << 32) & 0x6F83448600000000 ^ v38 ^ ((v38 << 32) ^ 0x7395CE7A00000000) & (((v37 ^ 0x6C8340846211847ALL) << 16) & 0x6F83448600000000 ^ 0x2B01040200000000 ^ (((v37 ^ 0x6C8340846211847ALL) << 16) ^ 0x4486739500000000) & (v37 ^ 0x6C8340846211847ALL))));
  v40 = v13 ^ 0xA370D3C81956964DLL ^ __ROR8__(v27 ^ 0xC044AFCE2BA9F698, 44);
  v41 = v39 ^ 0x296D11B150D77B7FLL ^ a2;
  v42 = (((v13 ^ 0x5E622F312C4809B8) + 0x2ED0306CAE1600BLL) ^ ((v13 ^ 0xE142E38178ABF17) + 0x529B020FF123D6A6) ^ ((v13 ^ 0xE722D51A6B520028) - 0x445206D272049665)) + 0x771351AAFA64AF06 + ((((2 * (v13 ^ 0xA370D3C81956964DLL)) ^ 0x37474C6622506FF7) + 0x127BF7D8D662970BLL) ^ (((2 * (v13 ^ 0xA370D3C81956964DLL)) ^ 0x49CF0AD60E33BDDLL) + 0x21A04B1394D1C321) ^ (((2 * (v13 ^ 0xA370D3C81956964DLL)) ^ 0xE46C4C822EC0EA41) - 0x3EAF08C3250DED43));
  v43 = (v42 ^ 0x20356938A78B2A2DLL) & (2 * (v42 & 0xAA856A38B7202B2DLL)) ^ v42 & 0xAA856A38B7202B2DLL;
  v44 = ((2 * (v42 ^ 0x6535E929898B2A67)) ^ 0x9F6106227D560294) & (v42 ^ 0x6535E929898B2A67) ^ (2 * (v42 ^ 0x6535E929898B2A67)) & 0xCFB083113EAB014ALL;
  v45 = v44 ^ 0x4090811102A9014ALL;
  v46 = (v44 ^ 0x8E2000003C000000) & (4 * v43) ^ v43;
  v47 = ((4 * v45) ^ 0x3EC20C44FAAC0528) & v45 ^ (4 * v45) & 0xCFB083113EAB0148;
  v48 = (v47 ^ 0xE8000003AA80100) & (16 * v46) ^ v46;
  v49 = ((16 * (v47 ^ 0xC130831104030042)) ^ 0xFB083113EAB014A0) & (v47 ^ 0xC130831104030042) ^ (16 * (v47 ^ 0xC130831104030042)) & 0xCFB083113EAB0140;
  v50 = (v49 ^ 0xCB0001112AA00000) & (v48 << 8) ^ v48;
  v51 = (((v49 ^ 0x4B08200140B014ALL) << 8) ^ 0xB083113EAB014A00) & (v49 ^ 0x4B08200140B014ALL) ^ ((v49 ^ 0x4B08200140B014ALL) << 8) & 0xCFB083113EAB0000;
  v52 = v50 ^ 0xCFB083113EAB014ALL ^ (v51 ^ 0x808001102A010000) & (v50 << 16);
  v53 = v42 ^ (2 * ((v52 << 32) & 0x4FB0831100000000 ^ v52 ^ ((v52 << 32) ^ 0x3EAB014A00000000) & (((v51 ^ 0x4F30820114AA014ALL) << 16) & 0x4FB0831100000000 ^ 0x4CA0811000000000 ^ (((v51 ^ 0x4F30820114AA014ALL) << 16) ^ 0x3113EAB00000000) & (v51 ^ 0x4F30820114AA014ALL))));
  v54 = (v40 ^ 0x403E2F971CB37C5FLL) & (a3 ^ 0xCFF44C809D16FAFALL) ^ v40 & 0x8D7E0EA5C3E5CF8ALL;
  v55 = v12 & 0x400000000000000;
  v56 = ((v12 & 0x400000000000000) + 0x372C67F2287CC286) ^ (v12 & 0x400000000000000 | 0xB2359834588C3296) ^ ((v12 & 0x400000000000000 ^ 0x668EF86B39095809) - 0x295B005EE1859573);
  v57 = (((v56 - 0x731D66D0FC182484) ^ 0xF25EB8400CECC3E9) + 0x4CADE746D8483215) ^ (v56 - 0x731D66D0FC182484) ^ (((v56 - 0x731D66D0FC182484) ^ 0xD4C8F1831410BBA5) + 0x6A3BAE85C0B44A59) ^ (((v56 - 0x731D66D0FC182484) ^ 0xD0679601955B83F1) + 0x6E94C90741FF720DLL) ^ (((v56 - 0x731D66D0FC182484) ^ 0xB7FD7F3BA6FCF5BFLL) + 0x90E203D72580443);
  v58 = v39 ^ 0x296D11B150D77B7FLL ^ a3 ^ 0x7BD1E741C6DDEB3BLL;
  v59 = 0xF536A8C352CE4088 - v56;
  if (((v57 ^ 0x410CA0F92B5B0E02) & (v54 ^ 0xBDF869D121F082B2) ^ v57 & 0xBDC667542151CEB8) == 0x104205021510E00)
  {
    v59 = v56 - 0x731D66D0FC182484;
  }

  v60 = (((v54 ^ 0x63DE618EBC5A71FELL) + 0x4C9814E6724EB4FLL) ^ ((v54 ^ 0x37E1F2F9681AE5DDLL) + 0x50F61239B3647F6ELL) ^ ((v54 ^ 0x54019DF2D4E1D829) + 0x33167D320F9F429ALL)) - 0x761B2196C67F515ALL + v59;
  v61 = (v60 ^ 0xADD203473E106A1CLL) & (2 * (v60 & 0xCDE49257BF446C9DLL)) ^ v60 & 0xCDE49257BF446C9DLL;
  v62 = ((2 * (v60 ^ 0x279303E20418A334)) ^ 0xD4EF236B76B99F52) & (v60 ^ 0x279303E20418A334) ^ (2 * (v60 ^ 0x279303E20418A334)) & 0xEA7791B5BB5CCFA8;
  v63 = v62 ^ 0x2A109094894440A9;
  v64 = (v62 ^ 0x4026012132108600) & (4 * v61) ^ v61;
  v65 = ((4 * v63) ^ 0xA9DE46D6ED733EA4) & v63 ^ (4 * v63) & 0xEA7791B5BB5CCFA8;
  v66 = (v65 ^ 0xA8560094A9500EA0) & (16 * v64) ^ v64;
  v67 = ((16 * (v65 ^ 0x42219121120CC109)) ^ 0xA7791B5BB5CCFA90) & (v65 ^ 0x42219121120CC109) ^ (16 * (v65 ^ 0x42219121120CC109)) & 0xEA7791B5BB5CCF80;
  v68 = (v67 ^ 0xA2711111B14CCA00) & (v66 << 8) ^ v66;
  v69 = (((v67 ^ 0x480680A40A100529) << 8) ^ 0x7791B5BB5CCFA900) & (v67 ^ 0x480680A40A100529) ^ ((v67 ^ 0x480680A40A100529) << 8) & 0xEA7791B5BB5CC900;
  v70 = v68 ^ 0xEA7791B5BB5CCFA9 ^ (v69 ^ 0x621191B1184C0000) & (v68 << 16);
  v71 = (v70 << 32) & 0x6A7791B500000000 ^ v70 ^ ((v70 << 32) ^ 0x3B5CCFA900000000) & (((v69 ^ 0x88660004A31046A9) << 16) & 0x6A7791B500000000 ^ 0x6A4200A100000000 ^ (((v69 ^ 0x88660004A31046A9) << 16) ^ 0x11B5BB5C00000000) & (v69 ^ 0x88660004A31046A9));
  v72 = (v39 ^ 0x98A1C5EEA4842268) & (a3 ^ 0xBD75BDDAA10CCA8FLL);
  v73 = (v41 ^ 0x28AB3F3E7579398ELL) & (v58 ^ 0x7F280D77D4F9FF8ELL);
  v74 = v58 & 0x835F91C791B45AEELL;
  v75 = v41 & 0x15EBA7024BE9505CLL ^ v58 ^ (v13 ^ 0xA2BF73111B79E6DBLL) & (v41 ^ 0x540B51061B329C9FLL);
  v76 = v41 ^ v53 & 0x14D3DEB00BE42634 ^ (v53 ^ 0x28A46E1ACA7629B9) & (v40 ^ 0xAB120ED8E8A8A594) ^ 0xFD3AE5F336C06AD3;
  v77 = v14 ^ v55 ^ v60 ^ v76 ^ (2 * v71);
  LODWORD(v71) = ((((v77 >> 61) ^ 0xF89697E1) - 2093214878) ^ ((v77 >> 61) + 2083165329) ^ (((v77 >> 61) ^ 0x78FC9F6B) + 55974892)) - 1928351040;
  LODWORD(v63) = (v71 ^ 0xE771E93B) & (2 * (v71 & 0xF745C93B)) ^ v71 & 0xF745C93B;
  v78 = ((2 * (v71 ^ 0xBF2693F)) ^ 0xF96F4008) & (v71 ^ 0xBF2693F) ^ (2 * (v71 ^ 0xBF2693F)) & 0x7CB7A004;
  v79 = v78 ^ 0x490A004;
  v80 = (v78 ^ 0xF8270000) & (4 * v63) ^ v63;
  LODWORD(v63) = ((4 * v79) ^ 0xF2DE8010) & v79 ^ (4 * v79) & 0x7CB7A000;
  v81 = v80 ^ 0xFCB7A004 ^ (v63 ^ 0xF0968000) & (16 * v80);
  LODWORD(v63) = ((16 * (v63 ^ 0xC212004)) ^ 0xCB7A0040) & (v63 ^ 0xC212004) ^ 0xA004;
  v82 = (v81 << 8) & 0xFCB7A000 ^ v81 ^ ((v81 << 8) ^ 0xB7A00400) & v63;
  v83 = v71 ^ (2 * ((v82 << 16) & 0x7CB70000 ^ v82 ^ ((v82 << 16) ^ 0x20040000) & (((v63 << 8) ^ 0x37A00000) & v63 ^ 0xB70000)));
  v84 = v72 ^ a3 & 0x84083B3477B872DLL ^ v40;
  v85 = v76 ^ v75;
  v86 = v76 ^ v75 ^ 0xA80AD3AD8A0E310ELL;
  v87 = (v77 ^ 0x5019AC28D5008D1DLL) << (v84 & 3 ^ 1) << (~v84 & 2) << (v84 & 1);
  v88 = *(STACK[0xEC0] + (v83 ^ 0x27628972));
  LOBYTE(v83) = (((v83 ^ 0x24) - 9) ^ ((v83 ^ 0x8F) + 94) ^ ((v83 ^ 0x6E) - 67)) - ((((2 * v83) & 0x32 ^ 0xB7) - 86) ^ (((2 * v83) & 0x32 ^ 0x58) + 71) ^ (((2 * v83) & 0x32 ^ 0xED) - 12)) + 56;
  LOBYTE(v83) = ((v83 ^ 0xD5) - 79) ^ v83 ^ ((v83 ^ 0x7C) + 26) ^ ((v83 ^ 0xE8) - 114) ^ ((v83 ^ 0xDB) - 65) ^ v88;
  v89 = v84 ^ 0x2B0A076E50D57A88;
  v90 = v74 ^ a3 ^ 0x7BD1E741C6DDEB3BLL ^ v73 ^ v84;
  LOBYTE(v83) = -72 - 9 * (((v83 ^ 0x60) - 98) ^ ((v83 ^ 0x74) - 118) ^ ((v83 ^ 0x8E) + 116));
  v91 = v83 & 0x46 ^ 0x6B;
  v92 = ((v84 >> 1) ^ (v84 >> 6) ^ 0xB055CB4A7853AD54) & ~(v84 << 63) ^ v84 ^ 0x2B0A076E50D57A88;
  *(&v93 + 1) = v77 ^ 0x3F5E5EB8C5053614;
  *&v93 = v77;
  v94 = (v93 >> 39) ^ v77 ^ 0x3F5E5EB8C5053614 ^ v87 ^ (v83 ^ (2 * ((v83 ^ 0x70) & (2 * ((v83 ^ 0x70) & (2 * ((v83 ^ 0x70) & (2 * ((v83 ^ 0x70) & (2 * ((v83 ^ 0x70) & (2 * (v91 ^ v83 & 0x36)) ^ v91)) ^ v91)) ^ v91)) ^ v91)) ^ v91)));
  v95 = (v75 >> 7) ^ (v75 >> 41) ^ v75 ^ 0xD76A8C1AF18A062ALL ^ ((v75 ^ 0xD76A8C1AF18A062ALL) << 23) ^ ((v75 ^ 0xD76A8C1AF18A062ALL) << 57) ^ 0xF9AC15549C3E1927;
  v96 = (v92 | 0xFFFFFFFFFFDFFFFFLL) & ((v89 << 58) ^ 0xF146431495F74941) ^ v92 & 0xFFFFFFFFFFDFFFFFLL;
  v97 = v94 ^ 0xD1BD7BB5E2638BC0 ^ v96;
  v98 = (v90 >> 17) ^ (v90 >> 10) ^ v90 ^ 0xBE382FD5058EE5C8 ^ ((v90 ^ 0xBE382FD5058EE5C8) << 47) ^ ((v90 ^ 0xBE382FD5058EE5C8) << 54);
  v99 = v95 ^ (v85 >> 19) ^ (v86 ^ (v86 << 36)) & 0xFFFFFFEFFFFFFFFFLL ^ (((v86 ^ ~(v86 << 36) | 0xFFFFFFEFFFFFFFFFLL) & ((v86 << 45) ^ 0xD4C1A836162A9CC9) ^ 0x90028409E9D56336) & ((v85 >> 28) ^ 0xD4C3AC353D713357) | (v86 << 45) & 0x2B3C400000000000);
  v100 = v98 ^ 0x48735CF4838AD6C4 ^ v95;
  *&v93 = __ROR8__(__ROR8__(v98 ^ 0x48735CF4838AD6C4, 54) ^ 0xBE50EC9290F9DE96, 10);
  v101 = v99 ^ v94 & 0x1B55BDA07D78DEACLL ^ (v94 ^ 0xB0980619FD5A77E8) & (v96 ^ 0xF468489CA8DE8FAALL) ^ 0xD1CEBB11444B72E5;
  v102 = (v94 ^ 0x3DCA92C0A3584444) & (v99 ^ 0x9B386A82457EF59ELL) ^ v99 & 0x72AD6B26A1FDCC53;
  v103 = v97 & 0x1E8CE042E5127247 ^ v94 ^ 0xD1BD7BB5E2638BC0 ^ (v97 ^ 0x8E188890CA9FAD2ELL) & (v98 ^ 0x8F44BC64E07F2309) ^ v101;
  v104 = v101 ^ v102 ^ v100 ^ 0x96D56527E5B51C0;
  v105 = (v93 ^ 0x83EB6B165DBC4602) & (v100 ^ 0x2C96319020491FALL) ^ v93 & 0x753C3CEF92D17742 ^ v97;
  v106 = (((v103 ^ 0xF0A3E9B79FBA4E51) + 0x5E3E7E89A6A0C39ELL) ^ ((v103 ^ 0x5052DB036D2C97C8) - 0x130B3C2ABC9E5FBLL) ^ ((v103 ^ 0x953A1A8B51D0D464) + 0x3BA78DB568CA59A9)) - ((((2 * v103) & 0xDC6D8B7F2A53C85ELL ^ 0x9CBA1F14DB4A7637) + 0x42D582E1B40E5FB7) ^ (((2 * v103) & 0xDC6D8B7F2A53C85ELL ^ 0x35C674F357D254DALL) - 0x145616F9C76982A4) ^ (((2 * v103) & 0xDC6D8B7F2A53C85ELL ^ 0xE1786B988E982AB7) + 0x3F17F66DE1DC0337)) - 0xC2391A8C78DCEC0;
  v107 = (v106 ^ 0xE44E21E5AF1E06D9) & (2 * (v106 & 0xF56F35F12F9F5499)) ^ v106 & 0xF56F35F12F9F5499;
  v108 = ((2 * (v106 ^ 0x4E8062C5E22007DBLL)) ^ 0x77DEAE699B7EA684) & (v106 ^ 0x4E8062C5E22007DBLL) ^ (2 * (v106 ^ 0x4E8062C5E22007DBLL)) & 0xBBEF5734CDBF5342;
  v109 = v108 ^ 0x8821511444815142;
  v110 = (v108 ^ 0x33CC0600883E0200) & (4 * v107) ^ v107;
  v111 = ((4 * v109) ^ 0xEFBD5CD336FD4D08) & v109 ^ (4 * v109) & 0xBBEF5734CDBF5340;
  v112 = (v111 ^ 0xABAD541004BD4100) & (16 * v110) ^ v110;
  v113 = ((16 * (v111 ^ 0x10420324C9021242)) ^ 0xBEF5734CDBF53420) & (v111 ^ 0x10420324C9021242) ^ (16 * (v111 ^ 0x10420324C9021242)) & 0xBBEF5734CDBF5340;
  v114 = (v113 ^ 0xBAE55304C9B51000) & (v112 << 8) ^ v112;
  v115 = (((v113 ^ 0x10A0430040A4342) << 8) ^ 0xEF5734CDBF534200) & (v113 ^ 0x10A0430040A4342) ^ ((v113 ^ 0x10A0430040A4342) << 8) & 0xBBEF5734CDBF5200;
  v116 = v114 ^ 0xBBEF5734CDBF5342 ^ (v115 ^ 0xAB4714048D130000) & (v114 << 16);
  v117 = v106 ^ (2 * ((v116 << 32) & 0x3BEF573400000000 ^ v116 ^ ((v116 << 32) ^ 0x4DBF534200000000) & (((v115 ^ 0x10A8433040AC1142) << 16) & 0x3BEF573400000000 ^ 0x28CB120000000000 ^ (((v115 ^ 0x10A8433040AC1142) << 16) ^ 0x5734CDBF00000000) & (v115 ^ 0x10A8433040AC1142))));
  v118 = v100 & 0xD3028E072F12BE5CLL ^ v98 ^ 0x48735CF4838AD6C4 ^ (v99 ^ 0xB7C51B7A9593B43DLL) & (v100 ^ 0x880AA0096F2A1947) ^ v105;
  v119 = v117 ^ 0xC2A71927305C862DLL ^ (v117 >> 39) ^ __ROR8__(v117 ^ 0xC2A71927305C862DLL, 61) ^ ((v117 ^ 0xC2A71927305C862DLL) << 25);
  v120 = (v102 ^ v100 ^ 0x96D56527E5B51C0) << 57;
  v121 = v102 ^ v100 ^ 0x363760E114172FC0 ^ __ROR8__(v102 ^ v100 ^ 0x363760E114172FC0, 41);
  v122 = (v121 ^ 0x47640CC79BCD417DLL) & (v120 ^ 0xEDFFFFFFFFFFFFFFLL);
  v123 = (v121 ^ 0x3E4020E210281850) & (v120 ^ 0xDF7A7CF293395ED2) ^ v121 & 0xCD7A7CF293395ED2;
  v124 = v122 ^ v120 & 0x87FFFFFFFFFFFFFFLL ^ v123 & 0x56406CC2030950C2 ^ (v123 ^ 0xA1BFDF1DEFD7E7AFLL) & (((v102 ^ v100) >> 7) ^ 0xA8232AAB0F7680F0);
  v125 = __ROR8__(v104 ^ 0x571A3001B785DB77, 19) ^ (v104 >> 28) ^ ((v104 ^ 0x571A3001B785DB77) << 36) & 0x236F2C8000000000 ^ (((v104 ^ 0x571A3001B785DB77) << 36) ^ 0xB99E620000000000) & (v104 ^ 0x80A0C9D000000000) ^ (((v104 ^ 0x571A3001B785DB77) << 36) ^ 0x46619DFFFFFFFFFFLL) & (v104 ^ 0x5C301AAE59716892) ^ v124 ^ 0xD30B402AC1237CB1;
  v126 = v105 ^ 0x350D396AEDDF3646 ^ (v105 >> 1) ^ ((v105 >> 6) | (v105 << 63)) ^ ((v105 ^ 0x350D396AEDDF3646) << 58);
  v127 = v119 ^ 0xFFECD41AEF9693ADLL ^ v126;
  v128 = v127 ^ 0x3F14A9423CD86DE9;
  v129 = v118 ^ 0x2FF17078E88BB0A9 ^ (v118 >> 10) ^ ((v118 ^ 0x2FF17078E88BB0A9) << 47) ^ ((((v118 ^ 0x2FF17078E88BB0A9) << 54) ^ 0x28177FFFFFFFFFFFLL) & ((v118 >> 17) ^ 0xFB5729A341B5D5C4) | ((v118 ^ 0x2FF17078E88BB0A9) << 54) & 0x480000000000000);
  v130 = v129 ^ 0xA9F9DAAC10FC5347;
  v131 = v124 ^ 0xD30B402AC1237CB1 ^ v129 ^ 0xA9F9DAAC10FC5347;
  v132 = (v124 ^ 0x90A2C255B73497C8) & (v129 ^ 0xC37DB02C95001F95) ^ v129 & 0x46F85E83A8EBD19DLL;
  v133 = (v127 ^ 0x3F14A9423CD86DE9) & 0x49F8DEA090FCC3ADLL ^ v119 ^ 0xFFECD41AEF9693ADLL ^ (v127 ^ 0x3439F921C50B873ELL) & (v129 ^ 0x757A9173FA0323C7);
  v134 = (v125 ^ 0x9DF4625220131115) & (v131 ^ 0x6FD5B67C5B007636);
  v135 = v131 & 0xB93AD634714CA294;
  v136 = (((v133 ^ 0x22F7EA12FDE040A4) - 0x4688710EA96D2DE5) ^ ((v133 ^ 0xF57F73DF27E80789) + 0x6EFF173C8C9A9538) ^ ((v133 ^ 0x974C665C653B1DCCLL) + 0xCCC02BFCE498F73)) - (((v133 ^ 0xC61077DFAC71B125) - 0x3802B668FE319529) ^ ((v133 ^ 0x67D156E6C4F3DC6CLL) + 0x663C68AE694C07A0) ^ ((v133 ^ 0x28C8864CE9D8933FLL) + 0x2925B804446748CDLL)) + 0x2963F048F909E86CLL;
  v137 = ((v136 ^ 0x6810E506566EC281) - 0x13D3177BB60849C7) ^ v136 ^ ((v136 ^ 0x7AB499BD0EC1FF2ELL) - 0x1776BC0EEA77468) ^ ((v136 ^ 0x5E9AA1A965362120) - 0x255953D48550AA66) ^ ((v136 ^ 0x37FD2F6FDDFF97C9) - 0x4C3EDD123D991C8FLL);
  v138 = v125 & 0xF16F699A2523ED21 ^ v131 ^ (v119 ^ 0x476F1231E556E6E8) & (v125 ^ 0xDB314B99AEA04C7ELL);
  v139 = v125 ^ v119 & 0xE23C104AE407178ELL ^ (v119 ^ 0x49FF84543F8AF436) & (v126 ^ 0x6016B925F110F72BLL) ^ 0x8C82A8BF8F83246ELL;
  v140 = (((v133 ^ 0x220C08E6A07C56E3) - 0x467393FAF4F13BA2) ^ ((v133 ^ 0xF5CEF897B864D6AELL) + 0x6E4E9C7413164411) ^ ((v133 ^ 0x97060FE0A72BDAACLL) + 0xC866B030C594813)) + 0x624057CD5D1A79DFLL + (((v137 ^ 0xE1530ED44F969517) - 0x4111BB733B4CFD26) ^ ((v137 ^ 0x987D0EE9CD2FC251) - 0x383FBB4EB9F5AA60) ^ ((v137 ^ 0xFD120DBF9D2023FELL) - 0x5D50B818E9FA4BCFLL));
  v141 = (v140 ^ 0xC4F982F5F1D6D021) & (2 * (v140 & 0xE6F9C4E5F9E6DA4ALL)) ^ v140 & 0xE6F9C4E5F9E6DA4ALL;
  v142 = ((2 * (v140 ^ 0x85CB0BF611D77431)) ^ 0xC6659E27D0635CF6) & (v140 ^ 0x85CB0BF611D77431) ^ (2 * (v140 ^ 0x85CB0BF611D77431)) & 0x6332CF13E831AE7ALL;
  v143 = v142 ^ 0x211241102810A209;
  v144 = (v142 ^ 0x2200603C0210870) & (4 * v141) ^ v141;
  v145 = ((4 * v143) ^ 0x8CCB3C4FA0C6B9ECLL) & v143 ^ (4 * v143) & 0x6332CF13E831AE78;
  v146 = (v145 ^ 0x20C03A000A860) & (16 * v144) ^ v144;
  v147 = ((16 * (v145 ^ 0x6330C31048310613)) ^ 0x332CF13E831AE7B0) & (v145 ^ 0x6330C31048310613) ^ (16 * (v145 ^ 0x6330C31048310613)) & 0x6332CF13E831AE70;
  v148 = (v147 ^ 0x2320C1128010A600) & (v146 << 8) ^ v146;
  v149 = (((v147 ^ 0x40120E016821084BLL) << 8) ^ 0x32CF13E831AE7B00) & (v147 ^ 0x40120E016821084BLL) ^ ((v147 ^ 0x40120E016821084BLL) << 8) & 0x6332CF13E831AA00;
  v150 = v148 ^ 0x6332CF13E831AE7BLL ^ (v149 ^ 0x2202030020200000) & (v148 << 16);
  v151 = (v150 << 32) & 0x6332CF1300000000 ^ v150 ^ ((v150 << 32) ^ 0x6831AE7B00000000) & (((v149 ^ 0x4130CC13C811847BLL) << 16) & 0x6332CF1300000000 ^ 0x2020070200000000 ^ (((v149 ^ 0x4130CC13C811847BLL) << 16) ^ 0x4F13E83100000000) & (v149 ^ 0x4130CC13C811847BLL));
  v152 = v139 ^ v138;
  v153 = v132 ^ v128;
  v154 = v132 ^ v128 ^ 0x9600D5AB07CBC3B1;
  v155 = ((v139 ^ v140 ^ (2 * v151) ^ 0xCB355FDE14828247) & 0x8800D94C7E1EB04CLL ^ 0xEB6F4C5C1BAF375CLL) & ((v139 ^ v140 ^ (2 * v151) ^ 0xCB355FDE14828247) & 0x77FF26B381E14FB3 ^ 0xBC57FBDEFE7EB84ELL) | (v139 ^ v140 ^ (2 * v151) ^ 0xCB355FDE14828247) & 0x149022A3804048A3;
  v156 = v135 ^ v130 ^ v134 ^ v154;
  v157 = (((v138 ^ 0xF5E95D8F4B8D979ELL) + 0x429CC794FE63AA43) ^ ((v138 ^ 0x457FD2D3392ADC5) - 0x4CDD98C979836FE6) ^ ((v138 ^ 0x6A8E8AF291AB78FDLL) - 0x2204EF16DBBABADELL)) - ((((2 * (v138 ^ 0x488A65E44A11C223)) & 0xC0 ^ 0x7D9B2B9CAB4B7847) - 0x1F44BE8B231B00AFLL) ^ (((2 * (v138 ^ 0x488A65E44A11C223)) & 0xC0) - 0x21B06B0D782F98A8) ^ (((2 * (v138 ^ 0x488A65E44A11C223)) & 0xC0 ^ 0xCD0C9451E6D90F60) + 0x502CFEB991768878)) - 0x4C12D9CA3B5E924DLL;
  v158 = (v157 ^ 0xB8C9455656ABDB68) & (2 * (v157 & 0xBCED946756B39A4ALL)) ^ v157 & 0xBCED946756B39A4ALL;
  v159 = ((2 * (v157 ^ 0x818265DAD28CDB6CLL)) ^ 0x7ADFE37B087E824CLL) & (v157 ^ 0x818265DAD28CDB6CLL) ^ (2 * (v157 ^ 0x818265DAD28CDB6CLL)) & 0x3D6FF1BD843F4126;
  v160 = v159 ^ 0x520108484014122;
  v161 = (v159 ^ 0x304EE139001E0000) & (4 * v158) ^ v158;
  v162 = ((4 * v160) ^ 0xF5BFC6F610FD0498) & v160 ^ (4 * v160) & 0x3D6FF1BD843F4120;
  v163 = (v162 ^ 0x352FC0B4003D0000) & (16 * v161) ^ v161;
  v164 = ((16 * (v162 ^ 0x840310984024126)) ^ 0xD6FF1BD843F41260) & (v162 ^ 0x840310984024126) ^ (16 * (v162 ^ 0x840310984024126)) & 0x3D6FF1BD843F4120;
  v165 = (v164 ^ 0x146F119800340000) & (v163 << 8) ^ v163;
  v166 = (((v164 ^ 0x2900E025840B4106) << 8) ^ 0x6FF1BD843F412600) & (v164 ^ 0x2900E025840B4106) ^ ((v164 ^ 0x2900E025840B4106) << 8) & 0x3D6FF1BD843F4000;
  v167 = v165 ^ 0x3D6FF1BD843F4126 ^ (v166 ^ 0x2D61B18404010000) & (v165 << 16);
  *(&v93 + 1) = v138 ^ 0x488A65E44A11C223;
  *&v93 = v157 ^ (2 * ((v167 << 32) & 0x3D6FF1BD00000000 ^ v167 ^ ((v167 << 32) ^ 0x43F412600000000) & (((v166 ^ 0x100E4039803E4126) << 16) & 0x3D6FF1BD00000000 ^ 0xC42718000000000 ^ (((v166 ^ 0x100E4039803E4126) << 16) ^ 0x71BD843F00000000) & (v166 ^ 0x100E4039803E4126))));
  v168 = (v93 >> 7) ^ v138 ^ 0x488A65E44A11C223;
  v169 = v168 ^ 0x8B3C277AAB6AF2A8;
  v170 = v155 ^ 0xDCC0F1999E6998D8 ^ __ROR8__(v155 ^ 0xDCC0F1999E6998D8, 61) ^ __ROR8__(v155 ^ 0xDCC0F1999E6998D8, 39);
  v171 = (v138 ^ 0x488A65E44A11C223) << 23;
  v172 = v170 ^ 0x2D9AE01C13773AEDLL;
  v173 = (((v171 ^ 0x7C884DF68596EAD5) + 0x30D1AF35D31F2A93) ^ ((v171 ^ 0xF973DAABEAD293EELL) - 0x4AD5C79743A4AC56) ^ ((v171 ^ 0x5FAA459D2DC4793BLL) + 0x13F3A75E7B4DB97DLL)) - (((v168 ^ 0x8B3C277AAB6AF2A8 ^ v171 ^ 0x457ACD56B8ED9830) + 0x9232F95EE645878) ^ ((v168 ^ 0x8B3C277AAB6AF2A8 ^ v171 ^ 0xF28D1872DE18E83DLL) - 0x412B054E776ED785) ^ ((v168 ^ 0x8B3C277AAB6AF2A8 ^ v171 ^ 0x3EBCB6C084079810) + 0x72E55403D28E5858)) + 0x56AAA988FC27D57ELL;
  v174 = (v153 >> 6) ^ (v153 >> 1) ^ v153 ^ 0x4A6DC88943B0C038 ^ ((v153 ^ 0x4A6DC88943B0C038) << 58) ^ (v154 << 63);
  v175 = 0xBE29332825169DD2 - (((v168 ^ 0xC82D2E831074E406) - 0x431109F9BB1E16AELL) ^ ((v168 ^ 0x6DF049C475A505E0) + 0x19339141213008B8) ^ ((v168 ^ 0x7DFBF1196EC9FB53) + 0x938299C3A5CF605));
  v176 = (v175 ^ 0xEEBBDBB3BA677010) & (2 * (v175 & 0xEEBC1BB33A767A11)) ^ v175 & 0xEEBC1BB33A767A11;
  v177 = ((2 * (v175 ^ 0xAEE3E8D7EEE77412)) ^ 0x80BFE6C9A9221C06) & (v175 ^ 0xAEE3E8D7EEE77412) ^ (2 * (v175 ^ 0xAEE3E8D7EEE77412)) & 0x405FF364D4910E02;
  v178 = v177 ^ 0x4040112454910201;
  v179 = (v177 ^ 0x10E24080000800) & (4 * v176) ^ v176;
  v180 = ((4 * v178) ^ 0x17FCD935244380CLL) & v178 ^ (4 * v178) & 0x405FF364D4910E00;
  v181 = (v180 ^ 0x5FC10050000800) & (16 * v179) ^ v179;
  v182 = ((16 * (v180 ^ 0x4000326484910603)) ^ 0x5FF364D4910E030) & (v180 ^ 0x4000326484910603) ^ (16 * (v180 ^ 0x4000326484910603)) & 0x405FF364D4910E00;
  v183 = (v182 ^ 0x5F324440100000) & (v181 << 8) ^ v181;
  v184 = (((v182 ^ 0x4000C12094810E03) << 8) ^ 0x5FF364D4910E0300) & (v182 ^ 0x4000C12094810E03) ^ ((v182 ^ 0x4000C12094810E03) << 8) & 0x405FF364D4910200;
  v185 = v183 ^ 0x405FF364D4910E03 ^ (v184 ^ 0x4053604490000000) & (v183 << 16);
  v186 = (v185 << 32) & 0x405FF36400000000 ^ v185 ^ ((v185 << 32) ^ 0x54910E0300000000) & (((v184 ^ 0xC932044910C03) << 16) & 0x405FF36400000000 ^ 0x1B236400000000 ^ (((v184 ^ 0xC932044910C03) << 16) ^ 0x7364D49100000000) & (v184 ^ 0xC932044910C03));
  v187 = v156 ^ 0x46B10D23471E07BBLL ^ (v156 >> 17) ^ __ROR8__(v156 ^ 0x46B10D23471E07BBLL, 10) ^ ((v156 ^ 0x46B10D23471E07BBLL) << 47);
  v188 = v174 ^ v170 ^ 0x2D9AE01C13773AEDLL;
  v189 = v175 ^ v169 ^ v173 ^ ((v173 ^ 0x2AB55A0C065F177ELL) - 0xD1502685DE97A15) ^ ((v173 ^ 0x47B60FE5F9AEA884) - 0x60165781A218C5EFLL) ^ ((v173 ^ 0xF93BF272CCB92E28) + 0x216455E968F0BCBDLL) ^ ((v173 ^ 0xB398FFFF68FEFCB9) + 0x6BC75864CCB76E2ELL) ^ (2 * v186);
  v190 = (((v171 ^ 0x3C8A578D13310BA5) + 0x70D3B54E45B8CBE3) ^ ((v171 ^ 0xB77CF88C7D63839) + 0x472E2D4B915FF87FLL) ^ ((v171 ^ 0xEDAC4AC59667339CLL) - 0x5E0A57F93F110C24)) - 0x5B33C359721BA93ALL + (((v189 ^ 0x3F085914210A0BC9) - 0x7F7797C84FA3047FLL) ^ ((v189 ^ 0x156BD06E1CCA3A95) - 0x55141EB272633523) ^ ((v189 ^ 0xB0F899405550D23DLL) + 0xF78A863C4062275));
  v191 = v190 ^ (v138 >> 41) ^ ((v190 ^ 0xF6891165C0A8EF92) + 0x56996359A4E33A5BLL) ^ ((v190 ^ 0x85CDCD7A01B18F06) + 0x25DDBF4665FA5ACFLL) ^ ((v190 ^ 0x4D81AE4B7452F46CLL) - 0x126E2388EFE6DE5BLL) ^ ((v190 ^ 0x612AFF972EFFBECFLL) - 0x3EC57254B54B94F8);
  v192 = v152 ^ 0x9C5C07B72EBF219FLL ^ (v152 >> 19) ^ __ROR8__(v152 ^ 0x9C5C07B72EBF219FLL, 28) ^ ((v152 ^ 0x9C5C07B72EBF219FLL) << 45) ^ v191 ^ 0x1D312C387A09BB57;
  v193 = (v188 ^ 0x2F5E40B157589005) & (v170 ^ 0x3DBA9CF4ADFED334);
  v194 = (v192 ^ 0x6A07758E279B6B49) & (v170 ^ 0x7D45581231DFF64DLL) ^ v192 & 0xBF003B1963DEDA86;
  v195 = ((v194 & 0x40000000 ^ 0x49F1DA21FE399FBCLL) + 0x22944A613CE203F6) ^ (v194 & 0x40000000 | 0x946A54B324E3DC52) ^ ((v194 & 0x40000000 ^ 0x5757A8184FF63BF8) + 0x3C3238588D2DA7B2);
  v196 = ((v195 - 0x1B750841C318368ELL) ^ 0x23AE7408DEB81211) & (2 * ((v195 - 0x1B750841C318368ELL) & 0x100000004)) | (v195 - 0x1B750841C318368ELL) & 0x100000004;
  v197 = ((2 * ((v195 - 0x1B750841C318368ELL) ^ 0x3B0B40ADEE83219)) ^ 0x677F9817BDA950BALL) & ((v195 - 0x1B750841C318368ELL) ^ 0x3B0B40ADEE83219) ^ (2 * ((v195 - 0x1B750841C318368ELL) ^ 0x3B0B40ADEE83219)) & 0xB3BFCC0BDED4A85CLL;
  v198 = v197 ^ 0x908044084254A845;
  v199 = (v197 ^ 0x10) & (4 * v196) | v196;
  v200 = ((4 * v198) ^ 0xCEFF302F7B52A174) & v198 ^ (4 * v198) & 0xB3BFCC0BDED4A85CLL;
  v201 = (v200 ^ 0x82BF000B5A50A040) & (16 * v199) ^ v199;
  v202 = ((16 * (v200 ^ 0x3100CC0084840809)) ^ 0x3BFCC0BDED4A85D0) & (v200 ^ 0x3100CC0084840809) ^ (16 * (v200 ^ 0x3100CC0084840809)) & 0xB3BFCC0BDED4A850;
  v203 = (v202 ^ 0x33BCC009CC408000) & (v201 << 8) ^ v201;
  v204 = (((v202 ^ 0x80030C021294280DLL) << 8) ^ 0xBFCC0BDED4A85D00) & (v202 ^ 0x80030C021294280DLL) ^ ((v202 ^ 0x80030C021294280DLL) << 8) & 0xB3BFCC0BDED4A800;
  v205 = v203 ^ 0xB3BFCC0BDED4A85DLL ^ (v204 ^ 0xB38C080AD4800000) & (v203 << 16);
  v206 = v191 ^ 0x1D312C387A09BB57 ^ v187 ^ 0x6A69DB7618950A43;
  v207 = (v195 - 0x1B750841C318368ELL) ^ (2 * ((v205 << 32) & 0x33BFCC0B00000000 ^ v205 ^ ((v205 << 32) ^ 0x5ED4A85D00000000) & (((v204 ^ 0x33C4010A54A05DLL) << 16) & 0x33BFCC0B00000000 ^ 0x33B4000B00000000 ^ (((v204 ^ 0x33C4010A54A05DLL) << 16) ^ 0x4C0BDED400000000) & (v204 ^ 0x33C4010A54A05DLL))));
  v208 = v170 & 0x5EFE49B3CF889F33;
  if (((v207 ^ 0xF259F004BD95CAFELL) & (v206 ^ 0xAFE1F04F984ECE14) ^ v207 & 0x223E5080A57FE25FLL) == 0x22185000A515C25ELL)
  {
    v209 = v195 - 0x1B750841C318368ELL;
  }

  else
  {
    v209 = 0xBB56183FC29F0206 - v195;
  }

  v210 = (((v206 ^ 0xF75C35681D094F53) + 0x8A3CA97E2F6B0ADLL) ^ ((v206 ^ 0x588B8A435A018B3CLL) - 0x588B8A435A018B3CLL) ^ ((v206 ^ 0x22081FE47A39E824) - 0x22081FE47A39E824)) - 0x68E43B354652E012 + v209;
  v211 = (v191 ^ 0x5CE8D426D3A80AALL) & (v187 ^ 0x5A9725BD3BABD082);
  v212 = v208 ^ v193 ^ 0xC346567E83995E44 ^ v192;
  v213 = v210 ^ v194 & 0xFFFFFFFFBFFFFFFFLL ^ ((v210 ^ 0x7B9F24EA3A1933F0) - 0x22B38F1046266AAFLL) ^ ((v210 ^ 0x8BA3BB1C3FA3C431) + 0x2D70EF19BC636292) ^ ((v210 ^ 0x6ED8BDEA65C717BLL) - 0x5FC12024DA632824) ^ ((v210 ^ 0xAFFDBFD2DFD9DFE5) + 0x92EEBD75C197946);
  v214 = v213 ^ v212 ^ 0xDFDA41CCE1D16E50;
  v215 = v188 & 0xBEC36CA058AE628 ^ v172 ^ (v188 ^ 0x8E5FF6FD672FF0C9) & (v187 ^ 0xAE84EC88C1DEC955) ^ v212;
  v216 = (v192 ^ 0x444EE24759162340) & (v206 ^ 0x72205F30C2CED3B4);
  v217 = v188 ^ v187 & 0x5A210081F6C33288 ^ v211;
  v218 = v214 ^ ((v213 ^ v212) >> 19) ^ __ROR8__(v214, 28) ^ 0x17AAD433D5E2EF1;
  v219 = ((((v215 >> 61) ^ 0x809082D39D305777) - 0x19AD7072746B2D99) ^ (((v215 >> 61) ^ 0xB34109EC69198472) - 0x2A7CFB4D8042FE9CLL) ^ (((v215 >> 61) ^ 0x33D18B3FF429D303) + 0x55138661E28D5613)) - 0x3F5707B286BA1637;
  v220 = (v219 ^ 0xD4C0F957791115BCLL) & (2 * (v219 & 0xBC)) ^ v219 & 0xBC;
  v221 = ((2 * (v219 ^ 0x55C93DD7393137FCLL)) ^ 0x1ABB8F0692494C80) & (v219 ^ 0x55C93DD7393137FCLL) ^ (2 * (v219 ^ 0x55C93DD7393137FCLL)) & 0x8D5DC7834924A640;
  v222 = v221 ^ 0x854440814924A240;
  v223 = (v221 ^ 0x400) & (4 * v220) ^ v220;
  v224 = ((4 * v222) ^ 0x35771E0D24929900) & v222 ^ (4 * v222) & 0x8D5DC7834924A640;
  v225 = (v224 ^ 0x555060100008000) & (16 * v223) ^ v223;
  v226 = ((16 * (v224 ^ 0x8808C18249242640)) ^ 0xD5DC7834924A6400) & (v224 ^ 0x8808C18249242640) ^ (16 * (v224 ^ 0x8808C18249242640)) & 0x8D5DC7834924A640;
  v227 = v225 ^ 0x8D5DC7834924A640 ^ (v226 ^ 0x855C400000002400) & (v225 << 8);
  v228 = ((v226 ^ 0x801878349248240) << 8) & 0x8D5DC7834924A000 ^ 0x801844824900A640 ^ (((v226 ^ 0x801878349248240) << 8) ^ 0x5DC7834924A64000) & (v226 ^ 0x801878349248240);
  v229 = (v227 << 16) & 0x8D5DC78349240000 ^ v227 ^ ((v227 << 16) ^ 0xC7834924A6400000) & v228;
  v230 = v206 & 0xD1B668368172B7F6 ^ v187 ^ 0x6A69DB7618950A43 ^ v216 ^ v217;
  v231 = __ROR8__(v218, 1);
  v232 = v230 ^ 0x5C1DE4D270AB10B1;
  v230 >>= 17;
  v233 = ((2 * v231) ^ (v214 << 45)) & 0xFFFFFFFFFFFFFFFELL | (v231 >> 63);
  LODWORD(v214) = *(STACK[0xEC8] + (v219 ^ (2 * ((v229 << 32) & 0xD5DC78300000000 ^ v229 ^ ((v229 << 32) ^ 0x4924A64000000000) & ((v228 << 16) & 0xD5DC78300000000 ^ 0x85C868300000000 ^ ((v228 << 16) ^ 0x4783492400000000) & v228))) ^ 0xDA24FB52E25CDD46));
  v234 = v215 ^ ((v215 ^ 0x3769691BA26DBEB7) << 25);
  LODWORD(v219) = (((v214 >> 2) | (v214 << 6)) ^ 0x7D) + ((2 * ((v214 >> 2) | (v214 << 6))) & 0xFFFFFFFB) - 80;
  LOBYTE(v222) = v219 & 0xFD ^ 0x15;
  LOBYTE(v219) = v219 ^ (2 * ((v219 ^ 0x52) & (2 * ((v219 ^ 0x52) & (2 * ((v219 ^ 0x52) & (2 * ((v219 ^ 0x52) & (2 * ((v219 ^ 0x52) & (2 * (((2 * v219) & 0x26 ^ 0x2E) & (v219 ^ 2) ^ v222)) ^ v222)) ^ v222)) ^ v222)) ^ v222)) ^ v222));
  v235 = v219 & 0x4E ^ v234 & 0xB109B2D53BEDC44ELL ^ 0x8E62C07A78733EF5;
  v236 = v219 & 0xB1 ^ v234 & 0x4EF64D2AC4123BB1 ^ 0xFFC9FFDF7BEDD6DFLL;
  v237 = v232 ^ __ROR8__(v232, 10);
  v238 = v235 & v236 | v234 & 0x40940D0084000100;
  v239 = v237 & 0x285CA53350B31B33 ^ v230 & 0x253350B31B33;
  *(&v240 + 1) = v213 ^ 0x30;
  *&v240 = v213 ^ 0x910CEF79D4782700;
  v241 = (v215 >> 39) ^ (8 * (v215 ^ 0x3769691BA26DBEB7)) ^ 0x2344CA056C7D9F94 ^ v238;
  v242 = v232 << 47;
  v243 = ((v239 ^ 0xF693A3E4A571902) & (v237 & 0xD7A35ACCAF4CE4CCLL ^ v230 & 0x5ACCAF4CE4CCLL ^ 0xBA7FADF373F71BBFLL) | (v237 & 0xD7A35ACCAF4CE4CCLL ^ v230 & 0x5ACCAF4CE4CCLL) & 0xD08240C0A508E4CCLL) ^ 0x6FAF1E6C9EF4089BLL;
  v244 = v102 == 0x12286A02017CC412;
  v245 = v239 & 0x200000000 | v242 & 0x5FD6800000000000;
  v246 = v243 - ((2 * v243) & 0xBFAD218D48EC8E86) + 0x5FD690C6A4764743;
  v247 = (v240 >> 7) - ((2 * (v240 >> 7)) & 0xAF3FB374FC3502A6) + 0x579FD9BA7E1A8153;
  if (v244)
  {
    v246 = v243;
  }

  *(&v248 + 1) = v213 ^ 0x8E930776E506F97;
  *&v248 = v213;
  v249 = v241 ^ v217 ^ 0x26522C1D4F709273 ^ (((v217 >> 6) ^ (v217 >> 1) ^ ((v217 ^ 0x26522C1D4F709273) << 58) ^ (((v217 ^ 0x26522C1D4F709273) << 63) | 0x30138A6907C5CC50) ^ 0x1E9F1467EF9EFE82) - 2 * (((v217 >> 6) ^ (v217 >> 1) ^ ((v217 ^ 0x26522C1D4F709273) << 58) ^ (((v217 ^ 0x26522C1D4F709273) << 63) | 0x30138A6907C5CC50) ^ 0x1E9F1467EF9EFE82) & 0x3F85AC00760D1B9DLL ^ ((v217 >> 6) ^ (v217 >> 1)) & 5) - 0x407A53FF89F2E468);
  v250 = ((v247 ^ (v248 >> 41) ^ 0xD0C2CD9E2DD20724) - 2 * ((v247 ^ (v248 >> 41) ^ 0xD0C2CD9E2DD20724) & 0x19E5DF0EBA2848AFLL ^ (v247 ^ (v248 >> 41)) & 8) - 0x661A20F145D7B759) ^ v213 ^ 0x8E930776E506F97;
  v251 = v246 & 0xA0296F395B89B8BCLL ^ (v243 & 0x5FD690C4A4764743 ^ v245 | v242 & 0xA029000000000000);
  v252 = v251 ^ 0xCED3800200000000;
  v253 = (v250 - ((2 * v250) & 0xDA2B09E9655311B2) - 0x12EA7B0B4D567727) ^ v233;
  v254 = v253 ^ 0xD8EC391B44A0D23ELL;
  v255 = v250 ^ v251 ^ 0xCED3800200000000;
  v256 = v250 & (v251 ^ 0x312C7FFDFFFFFFFFLL);
  v257 = v256 & 0x40000000000000 ^ v249;
  if ((v256 & 0x40000000000000 & v249) != 0)
  {
    v257 = v249 - (v256 & 0x40000000000000);
  }

  v258 = v254 & ~v255;
  v259 = (v253 ^ 0x2713C6E4BB5F2DC1) & v241 ^ v255;
  v260 = v259 & 0x200000000;
  v261 = v254 ^ v249 & (~(4 * v241) + 3 * v241);
  v262 = v257 ^ v256 & 0xFFBFFFFFFFFFFFFFLL;
  v263 = v258 ^ v252 ^ v262;
  v264 = v252 & ~v249;
  if ((v259 & 0x200000000 & v261) != 0)
  {
    v260 = -v260;
  }

  v265 = v259 & 0xFFFFFFFDFFFFFFFFLL ^ 0x7AB12DDB9BDC770BLL ^ (v260 + v261);
  v266 = (v262 ^ 0xAEE99381 ^ -(v262 ^ 0xAEE99381) ^ (2934543233u - ((v262 ^ 0xAEE99381) & 0xFFFFFFFFFFFFFFF7 ^ (v262 & 8 | 0xAEE99381)))) + 2934543233u;
  v267 = v265 ^ (v265 << 36) ^ (v265 >> 19);
  v268 = v264 ^ v241 ^ v261;
  v269 = (0x16818B33293F2CF7 - (v263 & 0x2000000000)) ^ v263 & 0xFFFFFFDFFFFFFFFFLL;
  v270 = v267 & 0x97403AF224A14A25;
  v271 = v267 & 0x68BFC50DDB5EB5DALL ^ (v265 >> 28) & 0xDDB5EB5DALL;
  v272 = v269 & 0x1000000000 | (v269 << 54);
  v273 = v270 ^ (v265 >> 28) & 0x224A14A25 | v271;
  v274 = v269 >> 10;
  v275 = v269 & 0xFFFFFFEFFFFFFFFFLL ^ (v269 << 47);
  v276 = v259 ^ 0xB13D69654EF3FAFLL;
  *(&v277 + 1) = v268 ^ 0x1FFF6F6486662F53;
  *&v277 = v268;
  v278 = v268 ^ 0x1FFF6F6486662F53 ^ ((v268 ^ 0x1FFF6F6486662F53) << 25) ^ (v277 >> 61) ^ ((v268 ^ 0x1FFF6F6486662F53uLL) >> (v155 & 0x27 ^ 6) >> (v155 & 0x27 ^ 0x21));
  v279 = (v269 >> 10) & 0xFFEFFFFFFFFFFFFFLL ^ (v269 >> 17);
  v280 = v275 ^ v272;
  v281 = v274 & 0x10000000000000;
  v282 = v266 ^ 0xA8F5046868AD7308 ^ (v266 << 63) ^ ((v266 ^ 0xA8F5046868AD7308) << 58) ^ ((v266 ^ 0xA8F5046868AD7308) >> 1) ^ ((v266 ^ 0xA8F5046868AD7308) >> 6);
  v283 = v282 ^ v278;
  if ((v275 & v281) != 0)
  {
    v281 = -v281;
  }

  v284 = v279 ^ (v281 + v280);
  v285 = (((v276 >> 7) ^ -(v276 >> 7) ^ (v276 - ((v276 >> 7) ^ v276))) + v276) ^ (((v276 << 57) ^ (v276 << 23)) & 0xFFFFFFFFFF800000 | (v276 >> 41));
  v286 = v285 ^ (v265 << 45) ^ v273;
  v287 = v278 & ~v286 ^ v284 ^ v285;
  v288 = (((v286 & 0xAC7382A79248829CLL ^ -(v286 & 0xAC7382A79248829CLL) ^ ((v282 & ~v278 & 0xAC7382A79248829CLL) - (v286 & 0xAC7382A79248829CLL ^ v282 & ~v278 & 0xAC7382A79248829CLL))) + (v282 & ~v278 & 0xAC7382A79248829CLL)) | (v286 ^ v282 & ~v278) & 0x538C7D586DB77D63) ^ v287;
  v289 = v286 & ~(v284 ^ v285) ^ v284 ^ (~(4 * v284) + 3 * v284) & (v284 ^ v285) ^ v283;
  v290 = __ROR8__(__ROR8__(v287, 15) ^ 0x846EF0EF2BE5EB7FLL, 49);
  v291 = (v290 << 23) ^ 0xD1985D829B800000;
  v292 = ((v290 >> 41) ^ (v290 >> 7) | (v290 << 57)) ^ 0x6E22A4E34669DF32;
  v293 = (v292 - ((2 * v292) & 0xA807ECA964DAF49ALL) + 0x5403F654B26D7A4DLL) ^ v290;
  *(&v295 + 1) = v289 ^ 0x110A6;
  *&v295 = v289 ^ 0x9BDA78B023AC0000;
  v294 = v295 >> 17;
  *(&v295 + 1) = v288 ^ 0xA5741A6D7DE47AC2;
  *&v295 = v288;
  v296 = v288 ^ ((v288 ^ 0xA5741A6D7DE47AC2) << 36) ^ (v295 >> 19) ^ ((v288 ^ 0xA5741A6D7DE47AC2) >> 28);
  if ((v291 & 0x4000000000000000 & ~v293) != 0)
  {
    v297 = -(v291 & 0x4000000000000000);
  }

  else
  {
    v297 = v291 & 0x4000000000000000;
  }

  v298 = LODWORD(STACK[0xED0]) + 537066474;
  v299 = (v297 + (v293 ^ 0x455187F782D67F7ALL)) ^ v291 & 0xBFFFFFFFFFFFFFFFLL;
  v300 = v289 ^ __ROR8__(v289, 10) ^ v294;
  if (LODWORD(STACK[0xEA8]) > 0x6C47DCA8 != v298 < 0x93B82357)
  {
    v301 = LODWORD(STACK[0xEA8]) > 0x6C47DCA8;
  }

  else
  {
    v301 = LODWORD(STACK[0xEA0]) > v298;
  }

  return (*(v8 + 8 * (v9 ^ (252 * !v301))))(v296, v299, a1, v296 ^ 0x8E15E11E7EFC54AELL, v300 ^ 0xE132CBA08C4DB868, (LODWORD(STACK[0xED0]) + 1), v9 ^ 0xE2F1u, v299 ^ 0x86DF9B94B28CF1FLL);
}