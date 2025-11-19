uint64_t sub_100D56D00@<X0>(int a1@<W0>, char a2@<W3>, int a3@<W4>, uint64_t a4@<X8>)
{
  v10 = v6;
  v11 = v5 + v6;
  v12 = *(a4 + (((v11 & 0xFFFFFFF8 ^ 0xE90A081) + 1806407833 + ((2 * (v11 & 0xFFFFFFF8)) & 0x1D214100)) & v4));
  v13 = __ROR8__(v11 & 0xFFFFFFFFFFFFFFF8, 8);
  v14 = (v12 + v13 - (((v12 + v13) << ((v8 - 91) ^ 0x9Fu)) & 0xBD7D6F7E18C0C20ALL) + 0x5EBEB7BF0C606105) ^ 0xE636B66BEDA70256;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x38C8B16AE7056877;
  v17 = __ROR8__(v16, 8);
  v18 = v16 ^ __ROR8__(v15, 61);
  v19 = (v17 + v18) ^ 0xE580B17D8CC5E551;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0xE1A1FD5BD155F97ALL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0xDA604B0C03A2BF99;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0xFA35E2CDCB3E31C7;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(v26) = -941754499 * ((((__ROR8__(v27, 8) + (v27 ^ __ROR8__(v26, 61))) ^ 0xF4730B31AE70757BLL) >> (a2 & 0x38)) ^ *v11);
  LODWORD(v11) = v26 ^ a3;
  v28 = (v26 ^ a3) + v10;
  LODWORD(v27) = (v28 + WORD1(v28)) >> 8;
  v29 = (v10 - 1431926677 + v11 - v27 + (v28 >> 16)) ^ a1;
  LODWORD(v27) = (v10 + 1431113942 + v11 - v27 + (v28 >> 16)) ^ v26;
  return (*(v9 + 8 * ((1006 * (v10 + 1 < v7)) ^ v8)))(v29 ^ (v10 - 1431926677 + v27 - ((v27 + v10 + ((v27 + v10) >> 16)) >> 8) + ((v27 + v10) >> 16)));
}

uint64_t sub_100D56F88@<X0>(int a1@<W0>, unsigned int *a2@<X8>)
{
  v6 = v4 + v3 + *a2;
  *v2 = v6;
  return (*(v5 + 8 * (((HIDWORD(v6) == 0) * ((a1 + 6714) ^ 0x4332)) ^ a1)))();
}

uint64_t sub_100D57014@<X0>(char a1@<W8>)
{
  *v3 = (v2 ^ v5) * (v2 + 17);
  *(v3 - 1) = (v2 ^ v6 ^ a1) * (v2 + 18);
  return (*(v8 + 8 * (((v4 == 0) * v7) ^ v1)))();
}

uint64_t sub_100D570FC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a4 == 6)
  {
    v6 = 8;
  }

  else
  {
    v6 = a4 + 1;
  }

  return (*(v5 + 8 * ((506 * (STACK[0x3910] > v6)) ^ a5)))();
}

uint64_t sub_100D57368(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6, int a7, int a8)
{
  v13 = ((a7 - a5 - 257 * (((v10 - 461474823 * (*(STACK[0x3448] + v12) + v12)) ^ a6) / 0x101)) ^ a4) + a8;
  v14 = v13 + a4;
  v15 = v13 ^ a7;
  v16 = a5 - v13;
  v17 = LODWORD(STACK[0x3E40]) - 1600659015 + (((v13 ^ a7) + (v13 >> 29) + 8 * v13 - v16) ^ v14);
  v18 = v15 - v17;
  v19 = v17 ^ v14;
  v20 = v17 + v16;
  v21 = v19 + v8 + (v18 ^ __ROR4__(v17, 30));
  v22 = v20 + v21;
  v23 = v18 - v22;
  v24 = v22 ^ v19;
  HIDWORD(v25) = v22;
  LODWORD(v25) = v22;
  v26 = (v18 - v22 + (v25 >> 28)) ^ -v21;
  return (*(v9 + 8 * ((104 * (v12 + 1 != a3)) ^ (LODWORD(STACK[0x3E40]) - 4481))))(a1, a2, a3, ((v26 + v24) ^ v11) + v24, ((v26 + v24) ^ v11) - v21, (v26 + v24) ^ v11, (v26 + v24) ^ v11 ^ v23);
}

uint64_t sub_100D57488()
{
  v1 = LODWORD(STACK[0x3D68]) - 3486;
  ++LODWORD(STACK[0x2220]);
  v2 = *(v0 + 8 * v1);
  STACK[0x3D60] = STACK[0x3998];
  STACK[0x3D88] = STACK[0x39E8];
  LODWORD(STACK[0x3E40]) = STACK[0x39A0];
  LODWORD(STACK[0x3B18]) = STACK[0x39A8];
  LODWORD(STACK[0x2010]) = STACK[0x38B8];
  LODWORD(STACK[0x3B08]) = STACK[0x3710];
  LODWORD(STACK[0x3D28]) = STACK[0x2424];
  LODWORD(STACK[0x3AE8]) = STACK[0x31E8];
  LODWORD(STACK[0x3AD8]) = STACK[0x351C];
  LODWORD(STACK[0x3D90]) = STACK[0x3988];
  LODWORD(STACK[0x3AF0]) = STACK[0x2500];
  LODWORD(STACK[0x3B00]) = STACK[0x3810];
  LODWORD(STACK[0x3958]) = STACK[0x32C8];
  STACK[0x3928] = STACK[0x39C0];
  LODWORD(STACK[0x3D10]) = STACK[0x3318];
  return v2();
}

uint64_t sub_100D5754C()
{
  LODWORD(STACK[0x3D68]) = 0;
  v4 = STACK[0x3D18];
  v4[69] = v1 >> (-113 * (v0 ^ 0x5E) + 122);
  v4[71] = v1;
  v5 = STACK[0x3E18];
  v4[70] = BYTE1(v1);
  LODWORD(STACK[0x3D20]) = HIBYTE(v1);
  v4[68] = HIBYTE(v1);
  return (*(v3 + 8 * ((194 * ((((v0 ^ 0x5E) - 13) ^ (v5 > v2)) & 1)) ^ v0)))();
}

uint64_t sub_100D575F0@<X0>(uint64_t a1@<X1>, int a2@<W3>, int a3@<W8>)
{
  v7 = *(v6 - 252);
  v8 = v3 + v5 + ((v5 + v4 - ((v5 + v4) >> 16)) >> 8) - ((v5 + v4) >> 16) - a3;
  v9 = ((v8 >> 14) ^ v8) + 2 * ((v8 >> 14) & v8);
  v10 = v9 - (v9 >> 6) - 967039738 - ((v9 - (v9 >> 6) - 967039738) >> (3 * (v7 ^ 0x7D) - 68));
  v11 = v10 + (v10 >> 4);
  v12 = v11 - 773634210 - ((v11 - 773634210) >> 8) - ((v11 - 773634210 - ((v11 - 773634210) >> 8)) >> 6);
  v13 = v12 - 285851051 + ((v12 - 285851051) >> 15) - ((v12 - 285851051 + ((v12 - 285851051) >> 15)) >> 3);
  v14 = v13 + 1755257154 - ((v13 + 1755257154) >> 9) + ((v13 + 1755257154 - ((v13 + 1755257154) >> 9)) >> 6);
  v15 = v14 + 1564225671 + ((v14 + 1564225671) >> 15) + ((v14 + 1564225671 + ((v14 + 1564225671) >> 15)) >> 8);
  v16 = v15 - 45917739 - ((v15 - 45917739) >> 11) + ((v15 - 45917739 - ((v15 - 45917739) >> 11)) >> 6);
  LODWORD(STACK[0x398]) = v11;
  LODWORD(STACK[0x394]) = v14;
  LODWORD(STACK[0x348]) = (v16 ^ 0x53A041CE) + ((v16 ^ 0x53A041CE) >> 8) - (((v16 ^ 0x53A041CE) + ((v16 ^ 0x53A041CE) >> 8)) >> 5);
  LODWORD(STACK[0x368]) = a2 & (((LODWORD(STACK[0x39C]) ^ LODWORD(STACK[0x368])) ^ *(v6 - 208)) >> 2);
  *(v6 - 256) = a2 & (*(v6 - 256) >> 2);
  v17 = *(*(v6 - 184) + 8 * v7);
  v18 = 709 * ((3 * (v7 ^ 0x4A7D)) ^ 0x5740);
  *(v6 - 200) = v18;
  return v17(v18 ^ 0xF9DE0163, a1, 4294938062);
}

uint64_t sub_100D577F4()
{
  LODWORD(STACK[0x3D98]) = 0;
  LODWORD(STACK[0x3D88]) = 0;
  LODWORD(STACK[0x3D78]) = 0;
  LODWORD(STACK[0x3D90]) = 0;
  LODWORD(STACK[0x3D80]) = 0;
  v2 = STACK[0x3D10];
  v3 = STACK[0x3D18];
  v3[2564] = BYTE1(STACK[0x3D10]);
  v3[2566] = BYTE3(v2);
  v3[2567] = BYTE4(v2);
  v3[2568] = BYTE5(v2);
  v3[2565] = BYTE2(v2);
  v3[2569] = v2 >> ((v0 - 116) & 0xFD ^ 0x29);
  v3[2563] = v2;
  v3[2570] = HIBYTE(v2);
  v4 = *(v1 + 8 * v0);
  LODWORD(STACK[0x3E18]) = 1;
  return v4();
}

uint64_t sub_100D57908@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x3D30]) = 0;
  LODWORD(STACK[0x3CF0]) = 0;
  LODWORD(STACK[0x3AE0]) = 0;
  LODWORD(STACK[0x3D90]) = 0;
  LODWORD(STACK[0x38B8]) = 0;
  LODWORD(STACK[0x3AE8]) = 0;
  LODWORD(STACK[0x3E18]) = 0;
  LODWORD(STACK[0x3D38]) = 0;
  LODWORD(STACK[0x3D20]) = 0;
  LODWORD(STACK[0x3AF0]) = 0;
  LODWORD(STACK[0x3980]) = 0;
  LODWORD(STACK[0x3E40]) = 0;
  LODWORD(STACK[0x3800]) = 0;
  LODWORD(STACK[0x3988]) = 0;
  LODWORD(STACK[0x3D78]) = 0;
  LODWORD(STACK[0x3808]) = 0;
  LODWORD(STACK[0x3D28]) = 0;
  LODWORD(STACK[0x3B00]) = 0;
  LODWORD(STACK[0x3998]) = 0;
  LODWORD(STACK[0x3810]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  LODWORD(STACK[0x39A0]) = 0;
  LODWORD(STACK[0x3818]) = 0;
  LODWORD(STACK[0x3828]) = 0;
  LODWORD(STACK[0x3B08]) = 0;
  LODWORD(STACK[0x39E8]) = 0;
  LODWORD(STACK[0x3830]) = 0;
  LODWORD(STACK[0x3D60]) = 0;
  LODWORD(STACK[0x39F0]) = 0;
  LODWORD(STACK[0x3848]) = 0;
  LODWORD(STACK[0x3850]) = 0;
  LODWORD(STACK[0x3AD8]) = 0;
  LODWORD(STACK[0x3858]) = 0;
  LODWORD(STACK[0x3D50]) = 0;
  LODWORD(STACK[0x3838]) = 0;
  LODWORD(STACK[0x3860]) = 0;
  LODWORD(STACK[0x3840]) = 0;
  LODWORD(STACK[0x3820]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  v3 = *(v1 + 8 * ((a1 ^ 0x70A9) - 16725));
  STACK[0x3B18] = HIDWORD(v2);
  LODWORD(STACK[0x3378]) = v2;
  LODWORD(STACK[0x3B20]) = 1;
  LODWORD(STACK[0x3A28]) = 1;
  LODWORD(STACK[0x3AA0]) = 1;
  LODWORD(STACK[0x3D88]) = 1;
  LODWORD(STACK[0x38B0]) = 1;
  return v3();
}

uint64_t sub_100D579E8@<X0>(int a1@<W8>)
{
  v3 = STACK[0x3740];
  LODWORD(STACK[0x35AC]) = STACK[0x3740] ^ 0x59B2;
  v4 = STACK[0x3848] < STACK[0x3B58];
  v5 = STACK[0x3860];
  LODWORD(STACK[0x3AE8]) = v4;
  v6 = v5 > (v3 ^ 0x609C) && v4;
  v7 = *(v2 + 8 * ((v6 * (v3 - 24672)) ^ v3));
  LODWORD(STACK[0x3B08]) = 1;
  LODWORD(STACK[0x3688]) = a1;
  LODWORD(STACK[0x3810]) = v1;
  LODWORD(STACK[0x35FC]) = STACK[0x3774];
  LODWORD(STACK[0x3970]) = STACK[0x36A8];
  LODWORD(STACK[0x35F8]) = STACK[0x3DD8];
  return v7();
}

uint64_t sub_100D57A64()
{
  STACK[0x35A0] = *(v2 + LODWORD(STACK[0x3E18]));
  LODWORD(STACK[0x3E18]) = v0 + 23;
  v6 = *(v5 + 8 * (v3 ^ (4 * (v1 == ((97 * (v3 ^ 0x5EA7) + 15988) ^ v4)))));
  STACK[0x3850] = 23;
  return v6();
}

uint64_t sub_100D57C0C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  v2 = *(v1 + 8 * ((((((a1 ^ 0x5206) - 2016113924) & 0x782B7B9F) - 5969) * (STACK[0x2AC8] & 1)) ^ a1 ^ 0x5206));
  LODWORD(STACK[0x3CF0]) = 74;
  LODWORD(STACK[0x3D88]) = 2;
  v3 = STACK[0x4A8];
  STACK[0x3D40] = STACK[0x4A8];
  v4 = STACK[0x1BE8];
  STACK[0x3D78] = STACK[0x1BE8];
  STACK[0x3B20] = v3;
  STACK[0x3B18] = v4;
  STACK[0x3818] = LODWORD(STACK[0x3988]);
  LODWORD(STACK[0x1204]) = STACK[0x39A0];
  LODWORD(STACK[0x2134]) = STACK[0x36B8];
  v5 = STACK[0x3820];
  LODWORD(STACK[0x3688]) = STACK[0x2B30];
  LODWORD(STACK[0x3858]) = STACK[0x2B40];
  LODWORD(STACK[0x3B00]) = STACK[0x2B88];
  LODWORD(STACK[0x1954]) = v5;
  LODWORD(STACK[0x1A78]) = STACK[0x3268];
  LODWORD(STACK[0x3AE8]) = STACK[0x3998];
  LODWORD(STACK[0x3AE0]) = STACK[0x2B60];
  LODWORD(STACK[0x3810]) = STACK[0x2B28];
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v2();
}

uint64_t sub_100D59B6C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = STACK[0x3B38];
  v6 = STACK[0x3D90];
  *(v5 + 1867) = bswap32(STACK[0x3D90]) >> 16;
  *(v5 + 1865) = HIBYTE(v6);
  v7 = LODWORD(STACK[0x3E18]) > a3;
  *(v5 + 1866) = v6 >> (v3 + 29);
  return (*(v4 + 8 * (((2 * ((((v3 - 845813557) ^ v7) & 1) == 0)) & 0xFB | (4 * (((v3 - 53) ^ ~v7) & 1))) ^ v3)))();
}

uint64_t sub_100D59BDC()
{
  v1 = STACK[0x40BC];
  v2 = *(v0 + 8 * (LODWORD(STACK[0x40BC]) - 12635));
  LOBYTE(STACK[0x4E73]) = STACK[0x6C50];
  v3 = STACK[0x40B0];
  v4 = STACK[0x40CC];
  v5 = STACK[0x40D0];
  v6 = STACK[0x40D4];
  v7 = STACK[0x40D8];
  LODWORD(STACK[0x42F4]) = v1;
  STACK[0x42F8] = v3;
  LODWORD(STACK[0x4300]) = v5;
  LODWORD(STACK[0x4304]) = v4;
  LODWORD(STACK[0x4308]) = v7;
  LODWORD(STACK[0x430C]) = v6;
  return v2();
}

uint64_t sub_100D59D6C()
{
  v2 = *(*STACK[0x3E40] + ((*v0 & ((STACK[0x42E0] & 0xFFFFFFF8) - 1831847764)) & 0xFFFFFFFFFFFFFFF8));
  v3 = (__ROR8__(STACK[0x42E0] & 0xFFFFFFFFFFFFFFF8, 8) + v2) ^ 0xC2AF3EAA3FF1B8E4;
  v4 = v3 ^ __ROR8__(v2, 61);
  v5 = (__ROR8__(v3, 8) + v4) ^ 0x65F254DD188DB4FCLL;
  v6 = v5 ^ __ROR8__(v4, 61);
  v7 = (__ROR8__(v5, 8) + v6) ^ 0x6FF046966119128DLL;
  v8 = v7 ^ __ROR8__(v6, 61);
  v9 = (__ROR8__(v7, 8) + v8) ^ 0xA1B29DC5D776132BLL;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (((v11 + v10) ^ 0xC951B844EC0CC429) - ((2 * ((v11 + v10) ^ 0xC951B844EC0CC429)) & 0xCD3140EF8D54C4A4) + 0x6698A077C6AA6252) ^ 0x40CD3872DF43EE97;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (v14 + v13 - ((2 * (v14 + v13)) & 0xC506E229BE22774ALL) - 0x1D7C8EEB20EEC45BLL) ^ 0x3A44C20B1508E27BLL;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((2 * (v17 + v16)) & 0x1867761E179938EALL) - (v17 + v16) - 0xC33BB0F0BCC9C76) ^ 0xA79945DE7E82A005;
  LOBYTE(v18) = (((__ROR8__(v18, 8) + (v18 ^ __ROR8__(v16, 61))) ^ 0x6F4F60BC0E025EE0) >> (8 * (STACK[0x42E0] & 7u))) ^ LOBYTE(STACK[0x3F17]);
  LOBYTE(v18) = (((v18 ^ 0xC6) - 82) ^ ((v18 ^ 0xEF) - 123) ^ ((v18 ^ 0x29) + 67)) + 75;
  v19 = STACK[0x37D0] + (v18 - 44 * ((187 * v18) >> 13));
  STACK[0x42E8] = v19;
  v20 = *(v1 + 8 * (STACK[0x2150] + 26881));
  STACK[0x3F18] = v19;
  STACK[0x3F08] = v20;
  return (*(v1 + 8 * (LODWORD(STACK[0x3E28]) + 22161)))();
}

uint64_t sub_100D59FC8@<X0>(uint64_t a1@<X8>)
{
  *(STACK[0x3D18] + v1) = veor_s8(*(STACK[0x3D18] + v1), *(STACK[0x3448] + v1));
  *(STACK[0x2760] + v1) = veor_s8(*(STACK[0x2760] + v1), *(STACK[0x3B50] + v1));
  return (*(v3 + 8 * ((3422 * (((v2 - 17259) ^ 0x234BLL) + v1 == a1)) ^ v2)))();
}

uint64_t sub_100D5A02C()
{
  v4 = STACK[0x3D18];
  v4[234] = v1 >> (v0 ^ 0xC3);
  v4[235] = v1;
  LODWORD(STACK[0x3D88]) = HIBYTE(v1);
  v4[232] = HIBYTE(v1);
  v5 = STACK[0x3E18];
  v4[233] = BYTE2(v1);
  return (*(v3 + 8 * ((18841 * (v5 > v2)) ^ v0)))();
}

uint64_t sub_100D5A0B4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  *(v3 - 224) = a1;
  v4 = *(*(v3 - 184) + 8 * ((21835 * (v2 + a2 == 15)) ^ *(v3 - 236)));
  v5 = *(v3 - 200);
  --*(v3 - 208);
  *(v3 - 200) = v5 - 1;
  return v4();
}

uint64_t sub_100D5A29C@<X0>(unint64_t a1@<X6>, int a2@<W8>)
{
  v5 = v4 | 1;
  v6 = STACK[0x35C0];
  v7 = v4 | 2;
  v8 = v4 | 3;
  v9 = v4;
  v10 = STACK[0x3D88];
  v11 = STACK[0x3670];
  v12 = *(STACK[0x3670] + 4 * (BYTE1(LODWORD(STACK[0x3D88])) ^ 0xB5u)) ^ 0xFD88CD19;
  v13 = *(STACK[0x3670] + 4 * (BYTE2(LODWORD(STACK[0x3D88])) ^ 0x92u));
  v14 = *(STACK[0x3670] + 4 * (HIBYTE(LODWORD(STACK[0x3D88])) ^ 0x57u));
  v15 = v12 ^ ((*(v6 + v4) << 24) | (*(v6 + (v4 | 1)) << 16) | (*(v6 + (v4 | 2)) << 8) | *(v6 + (v4 | 3))) ^ (v12 >> 1) ^ (v12 >> 2) ^ __ROR4__(*(v11 + 4 * (LODWORD(STACK[0x3D88]) ^ 0x65u)) ^ 0xBDC3FB5D ^ ((*(v11 + 4 * (LODWORD(STACK[0x3D88]) ^ 0x65u)) ^ 0xFD88CD19) >> 2) ^ ((*(v11 + 4 * (LODWORD(STACK[0x3D88]) ^ 0x65u)) ^ 0xFD88CD19) >> 1), 8) ^ __ROR4__(v13 ^ ((v13 ^ 0xFD88CD19) >> 2) ^ ((v13 ^ 0xFD88CD19) >> 1) ^ 0xE5B92F82, 24);
  v17 = __ROR4__(v14 ^ ((v14 ^ 0xFD88CD19) >> 2) ^ ((v14 ^ 0xFD88CD19) >> 1) ^ 0x404269F0, 16);
  v16 = v15 ^ v17;
  STACK[0x3D58] = a1;
  v18 = 4 * a1;
  v19 = v15 ^ v17 ^ 0x7F9BFA11;
  *(STACK[0x3E10] + v18) = v19;
  v20 = STACK[0x3598];
  v21 = STACK[0x3D98];
  v22 = STACK[0x3678];
  LODWORD(v5) = (*(v20 + v9) << 24) | (*(v20 + v5) << 16) | (*(v20 + v7) << 8);
  LODWORD(v7) = *(STACK[0x3678] + 4 * (BYTE1(LODWORD(STACK[0x3D98])) ^ 0x4Fu)) ^ 0xD607A034;
  v23 = *(STACK[0x3678] + 4 * (BYTE2(LODWORD(STACK[0x3D98])) ^ 0xD1u));
  LODWORD(v5) = v5 | *(STACK[0x3598] + v8);
  LODWORD(v8) = *(STACK[0x3678] + 4 * (HIBYTE(LODWORD(STACK[0x3D98])) ^ 0xCBu));
  LODWORD(v5) = v7 ^ v5 ^ (2 * v7) ^ (16 * v7) ^ __ROR4__(*(v22 + 4 * (LODWORD(STACK[0x3D98]) ^ 0xF4u)) ^ (16 * (*(v22 + 4 * (LODWORD(STACK[0x3D98]) ^ 0xF4u)) ^ 0xD607A034)) ^ (2 * (*(v22 + 4 * (LODWORD(STACK[0x3D98]) ^ 0xF4u)) ^ 0xD607A034)) ^ 0xEB7C03AF, 8) ^ __ROR4__(v23 ^ 0x431048B4 ^ (16 * (v23 ^ 0xD607A034)) ^ (2 * (v23 ^ 0xD607A034)), 24) ^ __ROR4__(v8 ^ 0x178CCF93 ^ (16 * (v8 ^ 0xD607A034)) ^ (2 * (v8 ^ 0xD607A034)), 16);
  *(STACK[0x3DC8] + v18) = v5 ^ 0x342E46CC;
  v24 = STACK[0x2980];
  v25 = STACK[0x2978];
  LODWORD(v7) = *(STACK[0x2980] + 4 * (BYTE1(v19) ^ 0x2Fu)) ^ BYTE1(v19) ^ __ROR4__(v19 ^ 0xB50D8CEB ^ *(STACK[0x2980] + 4 * (v16 ^ 0xB4u)), 8);
  v26 = *(STACK[0x2978] + 4 * (BYTE1(v5) ^ 0xC9u)) ^ __ROR4__(*(STACK[0x2978] + 4 * (v5 ^ 0xDBu)) ^ 0x2A226178, 8) ^ __ROR4__(*(STACK[0x2978] + 4 * (BYTE2(v5) ^ 0x35u)) ^ 0x25E2A174, 24);
  v27 = v7 ^ __ROR4__(BYTE2(v19) ^ 0x350DBECC ^ *(STACK[0x2980] + 4 * (BYTE2(v19) ^ 0x97u)), 24) ^ __ROR4__(HIBYTE(v19) ^ 0xF50D576B ^ *(STACK[0x2980] + 4 * (HIBYTE(v19) ^ 0x7E)), 16);
  v28 = __ROR4__(*(STACK[0x2978] + 4 * (BYTE3(v5) ^ 0x98)) ^ 0xB459D1C3, 16);
  v29 = STACK[0x3E18];
  v30 = v9 | 4;
  v31 = STACK[0x3D90];
  LODWORD(v5) = (v26 ^ v28 ^ 0x9DABE1E0) + a2;
  v32 = a2 + v2;
  v33 = ((v27 ^ LODWORD(STACK[0x298C]) ^ v31) - v31) ^ ((v27 ^ LODWORD(STACK[0x298C]) ^ v21) - v21) ^ ((v27 ^ LODWORD(STACK[0x3E18]) ^ v10 ^ v26 ^ v28 ^ 0xA8A6E7E6) - (LODWORD(STACK[0x3E18]) ^ v10 ^ v26 ^ v28 ^ 0x9DABE1E0));
  v34 = STACK[0x3E38];
  *(STACK[0x3AD0] + v18) = v33 - LODWORD(STACK[0x3E38]);
  *(STACK[0x3E20] + v18) = v5;
  STACK[0x3D68] = v18;
  v35 = LODWORD(STACK[0x3D80]) + v34;
  v36 = v29 - v2 - (v2 ^ 0x1477B369);
  v37 = v9 | 5;
  v38 = (v2 ^ 0x1477B369) - v32;
  v32 -= 719912908;
  LODWORD(v5) = v31 - LODWORD(STACK[0x3D80]) - (LODWORD(STACK[0x3D80]) ^ 0x1477B369);
  LODWORD(v7) = (LODWORD(STACK[0x3D80]) ^ 0x1477B369) - v35;
  v39 = *(v6 + (v9 | 4));
  v40 = *(v6 + (v9 | 5));
  LODWORD(v8) = v10 - v38;
  v41 = v9;
  STACK[0x3D50] = v9;
  v42 = v9 | 6;
  LODWORD(v9) = *(v6 + (v9 | 6));
  v43 = *(v6 + (v41 | 7));
  LODWORD(STACK[0x3E18]) = v35 - 719912908;
  v44 = *(v11 + 4 * (v36 ^ 0xAFu));
  v45 = (v39 << 24) | (v40 << 16) | (v9 << 8);
  LODWORD(v9) = *(v11 + 4 * (BYTE1(v36) ^ 0xB3u)) ^ 0xFD88CD19;
  v46 = *(v11 + 4 * (BYTE2(v36) ^ 0x4Cu));
  v47 = v45 | v43;
  v48 = *(v11 + 4 * (HIBYTE(v36) ^ 0xB2));
  v49 = v9 ^ v47 ^ (v9 >> 1) ^ (v9 >> 2) ^ __ROR4__(v44 ^ 0x25E92E82 ^ ((v44 ^ 0xFD88CD19) >> 2) ^ ((v44 ^ 0xFD88CD19) >> 1), 8) ^ __ROR4__(v46 ^ 0xD0AE3FCE ^ ((v46 ^ 0xFD88CD19) >> 2) ^ ((v46 ^ 0xFD88CD19) >> 1), 24);
  v50 = __ROR4__(v48 ^ ((v48 ^ 0xFD88CD19) >> 2) ^ ((v48 ^ 0xFD88CD19) >> 1) ^ 0x770D904, 16);
  LOBYTE(v9) = v49 ^ v50;
  v51 = v49 ^ v50 ^ 0xCDEE5BA9;
  v52 = v18 | 4;
  v53 = LODWORD(STACK[0x3D70]) - v7;
  *(STACK[0x3E10] + v52) = v51;
  v54 = *(v22 + 4 * (v5 ^ 0x45u));
  v55 = v54 ^ 0xD607A034;
  LODWORD(v30) = (*(v20 + v30) << 24) | (*(v20 + v37) << 16);
  LODWORD(v37) = v54 ^ 0xE2A164DA ^ (16 * (v54 ^ 0xD607A034));
  LODWORD(v30) = v30 | (*(v20 + v42) << 8);
  LODWORD(v42) = *(v22 + 4 * (BYTE1(v5) ^ 0x8Bu)) ^ 0xD607A034;
  v56 = *(v22 + 4 * (BYTE2(v5) ^ 0x59u));
  v57 = v37 ^ (2 * v55);
  LODWORD(v37) = *(v22 + 4 * (BYTE3(v5) ^ 0xDB));
  LODWORD(v42) = v42 ^ (v30 | *(v20 + (v41 | 7))) ^ (2 * v42) ^ (16 * v42) ^ __ROR4__(v57, 8) ^ __ROR4__(v56 ^ 0x49BA621C ^ (16 * (v56 ^ 0xD607A034)) ^ (2 * (v56 ^ 0xD607A034)), 24) ^ __ROR4__(v37 ^ (16 * (v37 ^ 0xD607A034)) ^ (2 * (v37 ^ 0xD607A034)) ^ 0x4398CA96, 16);
  v58 = STACK[0x3DC8];
  *(v58 + v52) = v42 ^ 0x91DB7BB2;
  v59 = STACK[0x3D50];
  LODWORD(v9) = *(v24 + 4 * (BYTE1(v51) ^ 0xAAu)) ^ BYTE1(v51) ^ __ROR4__(v51 ^ 0xF50D131C ^ *(v24 + 4 * (v9 ^ 0x93u)), 8) ^ __ROR4__(BYTE2(v51) ^ 0x750D516F ^ *(v24 + 4 * (BYTE2(v51) ^ 0x78u)), 24) ^ __ROR4__(HIBYTE(v51) ^ 0xF50DD38C ^ *(v24 + 4 * (HIBYTE(v51) ^ 0xFA)), 16);
  LODWORD(v37) = (v10 - v38 - 22780745) ^ v36 ^ v9;
  v60 = *(v25 + 4 * (BYTE1(v42) ^ 0x65u)) ^ __ROR4__(*(v25 + 4 * (v42 ^ 0xD8u)) ^ 0x4FB5B105, 8) ^ __ROR4__(*(v25 + 4 * (BYTE2(v42) ^ 0x83u)) ^ 0x72169137, 24);
  v61 = __ROR4__(*(v25 + 4 * (BYTE3(v42) ^ 0x86)) ^ 0x2A226178, 16);
  v62 = v36 - v38;
  v63 = v37 ^ v60 ^ v61 ^ 0xD4FF7291;
  v64 = v8 + 515087326;
  LODWORD(v8) = v37 ^ 0xF50D83E0;
  LODWORD(v37) = (v9 ^ 0xF50D83E0) + v32;
  LODWORD(v30) = v64 + v32;
  v10 += 515087326;
  LODWORD(STACK[0x3D80]) = v10;
  LODWORD(STACK[0x3E38]) = (v64 + v32) ^ v62;
  v65 = STACK[0x3E18];
  v66 = (((v60 ^ v61 ^ 0x21F2F171 ^ (v53 + 611296985)) - (v53 + 611296985)) ^ ((v60 ^ v61 ^ 0x21F2F171 ^ v5) - v5) ^ (v63 - v8)) - LODWORD(STACK[0x3E18]);
  v67 = STACK[0x3AD0];
  *(v67 + v52) = v37;
  v53 += 1149165056;
  LODWORD(v42) = v5 - v7;
  v68 = STACK[0x3E20];
  *(v68 + v52) = v66;
  v69 = v53 + v65;
  LODWORD(v5) = v30 + 1898785083;
  LODWORD(v8) = LODWORD(STACK[0x3D70]) + 1149165056;
  LODWORD(STACK[0x3D90]) = v8;
  LODWORD(STACK[0x3E18]) = v64 ^ v10;
  v70 = *(v6 + (v59 | 9));
  LODWORD(STACK[0x3D98]) = v53 ^ v8;
  LODWORD(v52) = *(v11 + 4 * ((v30 + 59) ^ 0x5Eu));
  v71 = *(v11 + 4 * (((v30 + 10555) >> 8) ^ 0x4Bu)) ^ 0xFD88CD19;
  v72 = *(v11 + 4 * (((v30 + 1898785083) >> 16) ^ 0xCDu));
  v73 = v72 ^ 0xFD88CD19;
  LODWORD(v37) = v72 ^ 0x6C9FAA61 ^ ((v72 ^ 0xFD88CD19) >> 2);
  v74 = *(v11 + 4 * (((v30 + 1898785083) >> 24) ^ 0x49));
  v75 = v74 ^ 0x3BE14EAA ^ ((v74 ^ 0xFD88CD19) >> 2) ^ ((v74 ^ 0xFD88CD19) >> 1);
  v76 = v71 ^ ((*(v6 + (v59 | 8)) << 24) | (v70 << 16) | (*(v6 + (v59 | 0xA)) << 8) | *(v6 + (v59 | 0xB))) ^ (v71 >> 1) ^ (v71 >> 2) ^ __ROR4__(v52 ^ 0xCFE65BE5 ^ ((v52 ^ 0xFD88CD19) >> 2) ^ ((v52 ^ 0xFD88CD19) >> 1), 8) ^ __ROR4__(v37 ^ (v73 >> 1), 24) ^ (v75 << 16) ^ HIWORD(v75);
  v77 = STACK[0x3D68] | 8;
  *(STACK[0x3E10] + v77) = v76 ^ 0xA8451CDB;
  LODWORD(v8) = v42 ^ v69;
  LODWORD(v52) = v69 + 1898785083;
  v78 = v69;
  LODWORD(v9) = *(v22 + 4 * ((v69 + 59) ^ 0x4Au));
  v79 = *(v22 + 4 * (((v69 + 10555) >> 8) ^ 0xD8u)) ^ 0xD607A034;
  LODWORD(v42) = *(v22 + 4 * (((v69 + 1898785083) >> 16) ^ 0x63u));
  v80 = *(v22 + 4 * (((v69 + 1898785083) >> 24) ^ 0x79));
  v81 = v79 ^ ((*(v20 + (v59 | 8)) << 24) | (*(v20 + (v59 | 9)) << 16) | (*(v20 + (v59 | 0xA)) << 8) | *(v20 + (v59 | 0xB))) ^ (2 * v79) ^ (16 * v79) ^ __ROR4__(v9 ^ 0xE26DA7E9 ^ (16 * (v9 ^ 0xD607A034)) ^ (2 * (v9 ^ 0xD607A034)), 8) ^ __ROR4__(v42 ^ (16 * (v42 ^ 0xD607A034)) ^ (2 * (v42 ^ 0xD607A034)) ^ 0xB50EEF31, 24) ^ __ROR4__(v80 ^ (16 * (v80 ^ 0xD607A034)) ^ (2 * (v80 ^ 0xD607A034)) ^ 0xE1926816, 16);
  *(v58 + v77) = v81 ^ 0x6A5CAA52;
  LODWORD(v9) = *(v25 + 4 * (BYTE1(v81) ^ 0xA3u)) ^ __ROR4__(*(v25 + 4 * (v81 ^ 0x3Eu)) ^ 0x4855D103, 8) ^ __ROR4__(*(v25 + 4 * (BYTE2(v81) ^ 0x1Du)) ^ 0x6CC7012E, 24);
  LODWORD(v37) = ((v76 ^ 0x1CDB) >> 8) ^ *(v24 + 4 * (((v76 ^ 0x1CDB) >> 8) ^ 0x70u)) ^ __ROR4__(v76 ^ 0xF50D27E4 ^ *(v24 + 4 * (v76 ^ 0xD5u)), 8) ^ __ROR4__(((v76 ^ 0xA8451CDB) >> 16) ^ 0x750D614B ^ *(v24 + 4 * (((v76 ^ 0xA8451CDB) >> 16) ^ 0x48u)), 24) ^ __ROR4__(((v76 ^ 0xA8451CDB) >> 24) ^ 0xB50D1810 ^ *(v24 + 4 * (((v76 ^ 0xA8451CDB) >> 24) ^ 0x31)), 16);
  v82 = __ROR4__(*(v25 + 4 * (HIBYTE(v81) ^ 0xC6)) ^ 0xB459D1C3, 16);
  LODWORD(v42) = LODWORD(STACK[0x3E38]) ^ LODWORD(STACK[0x3E18]) ^ v37;
  LODWORD(STACK[0x3D88]) = v8;
  v83 = STACK[0x3D98];
  *(v67 + v77) = (v37 ^ 0x750D5961) + v30 + 1898785083;
  v84 = v67;
  LODWORD(v37) = LODWORD(STACK[0x3D80]) ^ 0xDCE4A53C;
  *(v68 + v77) = (((v9 ^ v82 ^ 0x32438166 ^ v83) - v83) ^ ((v9 ^ v82 ^ 0x32438166 ^ v8) - v8) ^ ((v42 ^ v9 ^ v82 ^ 0x474ED807) - (v42 ^ 0x750D5961))) - (v69 + 1898785083);
  LODWORD(v30) = v30 - 404940593;
  v85 = v37 + 740616795 + v30;
  v86 = *(v11 + 4 * ((v37 + 91 + v30) ^ 0xF0u));
  v87 = *(v11 + 4 * (BYTE2(v85) ^ 0xFCu));
  LODWORD(v42) = v87 ^ ((v87 ^ 0xFD88CD19) >> 2) ^ ((v87 ^ 0xFD88CD19) >> 1);
  v88 = *(v11 + 4 * (HIBYTE(v85) ^ 0x58));
  v89 = *(v11 + 4 * (((v37 - 5541 + v30) >> 8) ^ 0xC1u)) ^ 0xFD88CD19;
  LODWORD(v77) = v89 ^ ((*(v6 + (v59 | 0xC)) << 24) | (*(v6 + (v59 | 0xD)) << 16) | (*(v6 + (v59 | 0xE)) << 8) | *(v6 + (v59 | 0xF))) ^ (v89 >> 1) ^ (v89 >> 2) ^ __ROR4__(v86 ^ ((v86 ^ 0xFD88CD19) >> 2) ^ ((v86 ^ 0xFD88CD19) >> 1) ^ 0xACCFAB61, 8);
  v90 = (LODWORD(STACK[0x3D90]) ^ 0xDCE4A53C) + 740616795;
  LODWORD(v8) = v77 ^ __ROR4__(v42 ^ 0xC824E810, 24);
  v91 = __ROR4__(v88 ^ ((v88 ^ 0xFD88CD19) >> 2) ^ ((v88 ^ 0xFD88CD19) >> 1) ^ 0x7D93FA5D, 16);
  LOBYTE(v42) = v8 ^ v91;
  LODWORD(v77) = v8 ^ v91 ^ 0xF5FC2409;
  v92 = STACK[0x3D68] | 0xC;
  *(STACK[0x3E10] + v92) = v77;
  LODWORD(v8) = v78 - 404940593;
  v93 = v90 + v78 - 404940593;
  LODWORD(v37) = *(v22 + 4 * (v93 ^ 0xA1u));
  LODWORD(v9) = *(v22 + 4 * (BYTE2(v93) ^ 0xF9u));
  v94 = *(v22 + 4 * (HIBYTE(v93) ^ 0x13));
  v95 = *(v22 + 4 * (BYTE1(v93) ^ 0x95u)) ^ 0xD607A034;
  v96 = v95 ^ ((*(v20 + (v59 | 0xC)) << 24) | (*(v20 + (v59 | 0xD)) << 16) | (*(v20 + (v59 | 0xE)) << 8) | *(v20 + (v59 | 0xF))) ^ (2 * v95) ^ (16 * v95) ^ __ROR4__(v37 ^ (16 * (v37 ^ 0xD607A034)) ^ (2 * (v37 ^ 0xD607A034)) ^ 0xEF7C53AE, 8) ^ __ROR4__(v9 ^ (16 * (v9 ^ 0xD607A034)) ^ (2 * (v9 ^ 0xD607A034)) ^ 0x4132403C, 24) ^ __ROR4__(v94 ^ 0x1962F42B ^ (16 * (v94 ^ 0xD607A034)) ^ (2 * (v94 ^ 0xD607A034)), 16);
  LODWORD(v68) = v52 + LODWORD(STACK[0x3D98]);
  LODWORD(v5) = v5 + LODWORD(STACK[0x3E18]);
  *(STACK[0x3DC8] + v92) = v96 ^ 0x9042FDD4;
  LODWORD(v67) = *(v24 + 4 * (BYTE1(v77) ^ 0x41u)) ^ BYTE1(v77) ^ __ROR4__(v77 ^ 0x750D85E4 ^ *(v24 + 4 * (v42 ^ 0xA5u)), 8);
  v97 = v5 + LODWORD(STACK[0x3E38]);
  LODWORD(v30) = v30 - v97;
  LODWORD(v42) = v97 - 2065401276;
  v98 = v67 ^ __ROR4__(BYTE2(v77) ^ 0x750D8DEA ^ *(v24 + 4 * (BYTE2(v77) ^ 0xA4u)), 24) ^ __ROR4__(BYTE3(v77) ^ 0x750DEDA2 ^ *(v24 + 4 * (BYTE3(v77) ^ 0xC4)), 16);
  LODWORD(v67) = *(v25 + 4 * (BYTE1(v96) ^ 0x3Bu)) ^ __ROR4__(*(v25 + 4 * (v96 ^ 0x3Fu)) ^ 0xE6EDA184, 8) ^ __ROR4__(*(v25 + 4 * (BYTE2(v96) ^ 0x9Du)) ^ 0xDCAEE1B0, 24) ^ __ROR4__(*(v25 + 4 * (HIBYTE(v96) ^ 0xA6)) ^ 0x1707159, 16);
  LODWORD(v52) = (v98 ^ v5 ^ v85 ^ v42 ^ v67 ^ 0x777219ED) - (v5 ^ v85 ^ v42 ^ v67 ^ 0xC27F71A9);
  v99 = v98 ^ 0xB50D6844;
  LODWORD(v77) = (v98 ^ 0xB50D6844 ^ v93 ^ v68) - (v93 ^ v68);
  v100 = v68 + LODWORD(STACK[0x3D88]);
  v101 = v8 - v100;
  v100 -= 2065401276;
  LODWORD(v52) = ((v99 ^ v100) - v100) ^ v77 ^ v52;
  LODWORD(v68) = v100 + v68;
  v102 = v68 ^ v93;
  *(v84 + v92) = (v67 ^ 0xC27F71A9) + v30;
  LODWORD(v68) = v101 - 861106150 - v68;
  v103 = v102 + v101 + 1412569205;
  LODWORD(v77) = v102 - v68 + v101 + 1435174379;
  LODWORD(STACK[0x3E18]) = 2021291941 - (v30 - (v42 + v5) + 1412569205 + ((v42 + v5) ^ v85));
  LODWORD(STACK[0x3D88]) = v5 + v30 - 861106150 + 87201342 + ((v42 + v5) ^ v85) - 1998686767;
  v104 = STACK[0x3D58] >= 0xC;
  LODWORD(STACK[0x3D80]) = v77;
  v105 = v101 - 861106150 - v100 + v77;
  *(STACK[0x3E20] + v92) = v52 - v101;
  LODWORD(STACK[0x3D70]) = v105 - 546876388;
  v106 = v101 - v68;
  v107 = !v104;
  LODWORD(STACK[0x3D98]) = v105 + 87201342;
  LODWORD(STACK[0x3E38]) = v103;
  v108 = *(v3 + 8 * ((26277 * v107) ^ LODWORD(STACK[0x3D60])));
  LODWORD(STACK[0x3D90]) = v106 - v103 + 1160185791;
  return v108();
}

uint64_t sub_100D5B1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x3D20]) = 0;
  v5 = (v3 + 16828);
  v6 = (STACK[0x2BD8] & 1) == 0;
  if (STACK[0x2BD8])
  {
    v7 = STACK[0x2260];
  }

  else
  {
    v7 = STACK[0x3430];
  }

  if (STACK[0x2BD8])
  {
    v8 = 23;
  }

  else
  {
    v8 = 24;
  }

  LODWORD(STACK[0x2BB0]) = v8;
  v9 = STACK[0x39C0];
  LODWORD(v10) = STACK[0x32D8];
  if (v6)
  {
    v10 = v10;
  }

  else
  {
    v10 = v9;
  }

  STACK[0x3540] = v10;
  v11 = STACK[0x3860];
  if (v6)
  {
    v11 = v9;
  }

  LODWORD(STACK[0x3710]) = v11;
  v12 = *(v4 + 8 * v3);
  LODWORD(STACK[0x3D98]) = 2;
  STACK[0x3D60] = v7;
  v13 = STACK[0x2618];
  STACK[0x3D88] = STACK[0x2618];
  STACK[0x3B20] = v7;
  STACK[0x3CF0] = v13;
  STACK[0x3650] = LODWORD(STACK[0x3AD8]);
  LODWORD(STACK[0x3AE0]) = STACK[0x39F0];
  v14 = STACK[0x3318];
  LODWORD(STACK[0x3E40]) = STACK[0x3318];
  LODWORD(STACK[0x3688]) = STACK[0x32E0];
  LODWORD(STACK[0x3D90]) = v9;
  LODWORD(STACK[0x3CE8]) = v14;
  LODWORD(STACK[0x3810]) = STACK[0x3D80];
  LODWORD(STACK[0x1188]) = STACK[0x3A28];
  LODWORD(STACK[0x3268]) = v9;
  LODWORD(STACK[0x3D70]) = v14;
  return v12(v5, a2, a3, 1);
}

uint64_t sub_100D5B2AC()
{
  v4 = 3 * ((v0 + 1326) ^ 0x5CAF);
  LODWORD(STACK[0x1A9C]) = v4;
  return (*(v3 + 8 * (((v1 != (~(((v0 + 1326) ^ 0x40DD) * v2) & 3)) * (v4 ^ 0x4A1A)) ^ (v0 + 1326))))();
}

uint64_t sub_100D5B308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = (v5 - 811269607) & 0x305AFDFE;
  *(a5 + 64) = v7 + 503357599 + *(a5 + 64) - 503385688;
  return (*(v6 + 8 * v7))();
}

uint64_t sub_100D5B350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>)
{
  v24 = *(*v13 + (*v16 & 0xFFFFFFF8 & (((v14 + v9) & 0xFFFFFFF8 ^ 0x2E34DE2A) + v12 + (v11 & (2 * ((v14 + v9) & 0xFFFFFFF8))))));
  v25 = (__ROR8__((v14 + v9) & 0xFFFFFFFFFFFFFFF8, 8) + v24) ^ a7;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ a2;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = ((v21 & (2 * (v29 + v28))) - (v29 + v28) + v20) ^ a5;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v19 - ((v32 + v31) | v19) + ((v32 + v31) | v17)) ^ a8;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (v35 + v34 - (v18 & (2 * (v35 + v34))) + v23) ^ v15;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (a1 - ((v38 + v37) ^ v22 | a1) + ((v38 + v37) ^ v22 | a6)) ^ 0x1C668502C8D18EDBLL;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ v10;
  v42 = __ROR8__(v41, 8) + (v41 ^ __ROR8__(v40, 61));
  *(v14 + v9) = ((((2 * v42) & 0xA205213422806BF8) - v42 - 0x5102909A114035FDLL) ^ a4) >> (8 * ((v14 + v9) & 7));
  return (*(a3 + 8 * ((30002 * (v9 == 55)) ^ a9)))();
}

uint64_t sub_100D5B634(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v11 = v6 + v8;
  v12 = *(v7 + (((v11 & 0xF5EBD4D0) + (v11 & 0xA142B28 | 0xF5EBD4D0) - 2075106230) & v9));
  v13 = __ROR8__(v11 & 0xFFFFFFFFFFFFFFF8, 8);
  v14 = (v13 + v12 - (((v13 + v12) << (a6 - 19)) & 0x51507A14DC831A94) + 0x28A83D0A6E418D4ALL) ^ 0x90203CDE8F86EE19 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__((v13 + v12 - (((v13 + v12) << (a6 - 19)) & 0x51507A14DC831A94) + 0x28A83D0A6E418D4ALL) ^ 0x90203CDE8F86EE19, 8) + v14) ^ 0x38C8B16AE7056877;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xE580B17D8CC5E551;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (((2 * (v19 + v18)) & 0x260069AD2C287D0ELL) - (v19 + v18) + 0x6CFFCB2969EBC178) ^ 0x8D5E3672B8BE3802;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0xDA604B0C03A2BF99;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0xFA35E2CDCB3E31C7;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(v25) = -1315322961 * ((((__ROR8__(v26, 8) + (v26 ^ __ROR8__(v25, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * (v11 & 7u))) ^ *v11);
  LODWORD(v25) = ((v8 + 1117797212 + (v25 ^ a4) + (((v25 ^ a4) + v8) >> 16) - (((v25 ^ a4) + v8 + (((v25 ^ a4) + v8) >> 16)) >> 8)) ^ v25) + v8;
  v27 = v25 + WORD1(v25) + 1117797212 - ((v25 + WORD1(v25)) >> 8);
  LODWORD(v25) = STACK[0x3910] <= v8 + 1;
  return (*(v10 + 8 * (((4 * v25) | (32 * v25)) ^ a6)))(a1, (a2 + 1), a3, v27);
}

uint64_t sub_100D5B894@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x3AF0]) = 0;
  LODWORD(STACK[0x3D28]) = 0;
  LODWORD(STACK[0x3AE0]) = 0;
  LODWORD(STACK[0x3D60]) = 0;
  LODWORD(STACK[0x3AE8]) = 0;
  LODWORD(STACK[0x38B8]) = 0;
  v3 = STACK[0x3948];
  STACK[0x27E0] = STACK[0x3948] >> 24;
  STACK[0x3288] = HIDWORD(v3);
  v4 = STACK[0x3B18];
  STACK[0x2FF0] = HIBYTE(v3);
  LODWORD(STACK[0x3E40]) = 1;
  STACK[0x3D98] = v1 ^ 0x4397u;
  STACK[0x2530] = BYTE5(v4);
  STACK[0x2770] = v3 >> 8;
  v5 = *(v2 + 8 * v1);
  STACK[0x29B8] = v3 >> ((v1 ^ 0x97u) - 118);
  STACK[0x2ED0] = v4 >> 24;
  STACK[0x2DF0] = HIWORD(v4);
  STACK[0x2580] = v3;
  STACK[0x3078] = STACK[0x3950];
  STACK[0x27D0] = HIDWORD(v4);
  STACK[0x3CA8] = HIWORD(v3);
  STACK[0x2930] = v4;
  STACK[0x2E28] = v3 >> 16;
  STACK[0x26C8] = v4 >> 8;
  STACK[0x2DE0] = a1;
  LODWORD(STACK[0x3D90]) = 1;
  LODWORD(STACK[0x3D88]) = 1;
  LODWORD(STACK[0x3B00]) = 1;
  LODWORD(STACK[0x3B18]) = 1;
  LODWORD(STACK[0x3980]) = 1;
  LODWORD(STACK[0x3988]) = 1;
  LODWORD(STACK[0x3E18]) = 1;
  LODWORD(STACK[0x3B08]) = 1;
  LODWORD(STACK[0x3998]) = 1;
  LODWORD(STACK[0x39A0]) = 1;
  LODWORD(STACK[0x3D80]) = 1;
  LODWORD(STACK[0x3D68]) = 1;
  LODWORD(STACK[0x3D30]) = 1;
  LODWORD(STACK[0x3B20]) = 1;
  LODWORD(STACK[0x3828]) = 1;
  LODWORD(STACK[0x39E8]) = 1;
  LODWORD(STACK[0x3D78]) = 1;
  LODWORD(STACK[0x3830]) = 1;
  LODWORD(STACK[0x3CF0]) = 1;
  LODWORD(STACK[0x39F0]) = 1;
  LODWORD(STACK[0x3D50]) = 1;
  LODWORD(STACK[0x3838]) = 1;
  LODWORD(STACK[0x3A28]) = 1;
  LODWORD(STACK[0x3840]) = 1;
  LODWORD(STACK[0x3848]) = 1;
  LODWORD(STACK[0x3D38]) = 1;
  LODWORD(STACK[0x3D20]) = 1;
  LODWORD(STACK[0x3AA0]) = 1;
  LODWORD(STACK[0x3850]) = 1;
  LODWORD(STACK[0x3D58]) = 1;
  LODWORD(STACK[0x3AD8]) = 1;
  LODWORD(STACK[0x3858]) = 1;
  LODWORD(STACK[0x3860]) = 1;
  LODWORD(STACK[0x38B0]) = 1;
  return v5();
}

uint64_t sub_100D5BA60(int a1, int a2, int a3)
{
  v9 = STACK[0x3960];
  v10 = -STACK[0x3900];
  LODWORD(STACK[0x3D88]) = ((a2 ^ LODWORD(STACK[0x3960]) ^ v8) - (v3 ^ v10 ^ v4)) ^ v7;
  v11 = v8 - 580740115 + (v8 ^ v7);
  v12 = v8 - 580740115 + a2;
  v13 = (v8 ^ v7) - 260972811;
  v14 = v12 - (v11 ^ v13);
  v15 = v11 ^ 0x42FAEB7F ^ v14;
  LODWORD(STACK[0x3E40]) = v15 - 907028950;
  v16 = v6 - (v8 ^ v7) + 2 * v12;
  v17 = v16 + (v11 ^ v13);
  v18 = v14 - 1854319472;
  v19 = v16 - v15;
  v20 = v16 - v15 + 268849401;
  LODWORD(STACK[0x3E18]) = v20;
  v21 = v14 - 2123168873 + v17 - v19;
  v22 = a3 - (v3 ^ a1);
  v23 = v3 - 580740115 + (v3 ^ a1);
  v24 = v3 - 580740115 + v4;
  v25 = v22 + 2 * v24;
  v26 = (v3 ^ a1) - 260972811;
  v27 = v24 - (v23 ^ v26);
  v28 = v27 ^ v23 ^ 0x42FAEB7F;
  v29 = v25 - v28;
  v30 = v25 + (v23 ^ v26);
  v31 = -1192286535 - v15 + v17 + v20;
  v32 = -LODWORD(STACK[0x3998]);
  v33 = STACK[0x39A0];
  v27 -= 1854319472;
  LODWORD(STACK[0x3D48]) = ((v18 ^ LODWORD(STACK[0x39A0]) ^ v32) - v27) ^ v30 ^ ((v15 ^ LODWORD(STACK[0x39A0]) ^ v32) - v28);
  LODWORD(STACK[0x3D90]) = ((v15 ^ v33 ^ v18) - (v28 ^ v32 ^ v27)) ^ v17;
  v34 = -LODWORD(STACK[0x3980]);
  v35 = STACK[0x3988];
  LODWORD(STACK[0x3D40]) = ((v12 ^ LODWORD(STACK[0x3988]) ^ v34) - v24) ^ v26 ^ ((v11 ^ LODWORD(STACK[0x3988]) ^ v34) - v23);
  LODWORD(STACK[0x3E38]) = ((v11 ^ v35 ^ v12) - (v23 ^ v34 ^ v24)) ^ v13;
  LODWORD(STACK[0x3D78]) = ((a2 ^ v9 ^ v10) - v4) ^ a1 ^ ((v8 ^ v9 ^ v10) - v3);
  v36 = v30 - 1192286535 - v28 + v29 + 268849401;
  v37 = v27 - 268849401 + v30 - v29;
  v38 = -LODWORD(STACK[0x39F0]);
  v39 = (LODWORD(STACK[0x3E40]) ^ v38 ^ LODWORD(STACK[0x3A28])) - (v28 - 907028950);
  v40 = (v21 ^ v38 ^ LODWORD(STACK[0x3A28])) - v37;
  v41 = v21 ^ LODWORD(STACK[0x3E40]);
  v42 = v37 ^ (v28 - 907028950);
  v43 = v15 - 1231730447 + LODWORD(STACK[0x3E18]);
  v44 = v43 ^ v21;
  v45 = (v41 ^ LODWORD(STACK[0x3A28])) - (v42 ^ v38);
  v46 = v28 - 1231730447 + v29 + 268849401;
  LODWORD(STACK[0x3D58]) = v45 ^ v31;
  LODWORD(STACK[0x3E40]) = v40 ^ v39 ^ v36;
  v47 = v41 + v31;
  v48 = (v41 + v31) ^ v44;
  v49 = v46 ^ v37;
  v50 = v41 + v31 + v41;
  v51 = v42 + v36;
  v52 = (v42 + v36) ^ v46 ^ v37;
  v53 = v43 - v47;
  v54 = (v50 ^ 0xBFB18019) - v53;
  v55 = v46 - v51;
  v53 += 1862882503;
  v56 = v53 + (v44 ^ 0x84877E03);
  v57 = ((v51 + v42) ^ 0xBFB18019) - v55;
  v58 = -LODWORD(STACK[0x3AD8]);
  v55 += 1862882503;
  v59 = v48 - 1974386772 + v56;
  v60 = (v54 ^ LODWORD(STACK[0x3AE8]) ^ v58) - v57;
  v61 = v55 + (v49 ^ 0x84877E03);
  v62 = v52 - 1974386772 + v61;
  v63 = (v59 ^ LODWORD(STACK[0x3AE8]) ^ v58) - v62;
  LODWORD(STACK[0x3E18]) = ((v54 ^ LODWORD(STACK[0x3AE8]) ^ v59) - (v57 ^ v58 ^ v62)) ^ v56;
  v64 = -LODWORD(STACK[0x3AE0]);
  LODWORD(STACK[0x3D98]) = v60 ^ v61 ^ v63;
  LODWORD(STACK[0x3D80]) = v59 ^ v56 ^ 0xC99114EF ^ ((LODWORD(STACK[0x3AF0]) ^ 0xAFD776D2 ^ (v59 + (v53 ^ 0xBE54940F)) ^ (v59 + v54) ^ 0xFFE07ED) - ((v62 + v57) ^ 0xFFE07ED ^ v64 ^ (v62 + (v55 ^ 0xBE54940F)) ^ 0xAFD776D2));
  v65 = *(v5 + 8 * STACK[0x3D60]);
  v66 = 844 * (STACK[0x3D60] ^ 0x36C2);
  LODWORD(STACK[0x3B20]) = v66;
  LODWORD(STACK[0x3CF0]) = v66 ^ 0x3EA5;
  LODWORD(STACK[0x3D68]) = STACK[0x3B08];
  LODWORD(STACK[0x3D70]) = STACK[0x3B00];
  return v65();
}

uint64_t sub_100D5BF1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7)
{
  v14 = STACK[0x3D18];
  *(v14 + 333) = v11;
  *(v14 + 262) = a4;
  *(v14 + 334) = v12;
  *(v14 + 263) = a6;
  v15 = a6 - (v9 + a4);
  v16 = v12 - (v11 + v13);
  v17 = v16 + (v10 ^ 0x6F138266);
  v18 = v15 + (a7 ^ 0x6F138266);
  v19 = v16 ^ (v11 + v13);
  v20 = v15 ^ (v9 + a4);
  v16 -= 200398560;
  *(v14 + 335) = v19;
  *(v14 + 264) = v20;
  v21 = v19 ^ (v11 + 850925460);
  *(v14 + 336) = v17;
  *(v14 + 265) = v18;
  v15 -= 200398560;
  *(v14 + 337) = v11 - 108;
  *(v14 + 266) = a4 - 108;
  v22 = v17 - (v11 + 850925460);
  *(v14 + 338) = v16;
  LODWORD(STACK[0x3CD8]) = (v8 - 8646) ^ 0x3CC7;
  v23 = ((v8 - 8646) ^ 0xA36325DE) + v11;
  v24 = v18 - (a4 + 850925460);
  *(v14 + 267) = v15;
  v25 = v24 ^ v15;
  v26 = v22 ^ v16;
  v27 = v25 + v24;
  v28 = v20 ^ (a4 + 850925460);
  v29 = v25 ^ v28;
  v28 ^= 0x7A344BD6u;
  v30 = v26 + v22;
  v31 = v26 ^ v21;
  v21 ^= 0x7A344BD6u;
  *(v14 + 339) = v21;
  *(v14 + 268) = v28;
  *(v14 + 340) = v30;
  v32 = (a4 - 1553789664) ^ 0x243840FE;
  *(v14 + 269) = v27;
  *(v14 + 341) = (((v8 + 58) ^ 0xDE) + v11) ^ 0xFE;
  *(v14 + 270) = (a4 + 32) ^ 0xFE;
  *(v14 + 342) = v31;
  *(v14 + 271) = v29;
  v31 += 605426102;
  v33 = (v23 ^ 0x243840FE ^ v21) - v31;
  v34 = (a4 - 1553789664) ^ 0xF8F380A1;
  v35 = v23 ^ 0x243840FE ^ v30;
  v29 += 605426102;
  v36 = (v27 ^ v32) - v34;
  v23 ^= 0xF8F380A1;
  v37 = v35 - v23;
  v38 = (v28 ^ v32) - v29;
  v39 = v37 ^ v31;
  *(v14 + 343) = v33;
  *(v14 + 272) = v38;
  *(v14 + 344) = v37;
  *(v14 + 273) = v36;
  v40 = v33 ^ v23;
  v41 = v39 + v33;
  v42 = v36 ^ v29;
  *(v14 + 345) = v40;
  v43 = v38 ^ v34;
  *(v14 + 274) = v43;
  *(v14 + 346) = v39;
  v44 = v41 ^ v40;
  v45 = v37 - v44;
  v46 = v41 - v45;
  *(v14 + 275) = v42;
  v47 = v45 - v44;
  v48 = v42 + v38;
  v49 = v46 + (v39 ^ 0x56FF8081);
  v50 = v48 ^ v43;
  *(v14 + 347) = v46;
  v51 = v36 - v50;
  v52 = v48 - v51;
  v53 = v51 - v50;
  v54 = v52 ^ v50;
  v55 = v46 ^ v44;
  v46 -= 556146332;
  *(v14 + 276) = v52;
  *(v14 + 348) = v47;
  v56 = v52 + (v42 ^ 0x56FF8081);
  *(v14 + 277) = v53;
  *(v14 + 349) = v55;
  *(v14 + 278) = v54;
  *(v14 + 350) = v49;
  v52 -= 556146332;
  v57 = v54 + v56;
  *(v14 + 279) = v56;
  v56 ^= 0xD3DF2A83;
  v58 = v53 - v52;
  v59 = v57 ^ v52;
  v60 = v47 - v46;
  v61 = (v55 + v49) ^ v46;
  v49 ^= 0xD3DF2A83;
  v62 = v56 + v52;
  v63 = v49 + v46;
  v64 = v49 ^ v60;
  v65 = v58 ^ v56;
  *(v14 + 351) = v63;
  *(v14 + 280) = v62;
  *(v14 + 352) = v64;
  *(v14 + 281) = v65;
  *(v14 + 353) = v61;
  *(v14 + 282) = v59;
  *(v14 + 354) = v49;
  v66 = v63 + v49;
  *(v14 + 283) = v56;
  v67 = v64 ^ v61 ^ v66;
  *(v14 + 355) = v63;
  *(v14 + 284) = v62;
  v68 = v62 + v56;
  *(v14 + 356) = v67;
  v66 -= 916412152;
  v69 = v67 + (v61 ^ 0x8478593D);
  v70 = v65 ^ v59 ^ v68;
  *(v14 + 285) = v70;
  *(v14 + 357) = v69;
  v71 = v70 + (v59 ^ 0x8478593D);
  v63 ^= 0x56F78105u;
  *(v14 + 286) = v71;
  v72 = v67 ^ v63;
  v68 -= 916412152;
  v69 += 206915562;
  v71 += 206915562;
  v73 = v69 - v72;
  *(v14 + 358) = v66;
  v74 = (v66 ^ v63) + v72;
  v75 = v63 - (v69 - v72);
  *(v14 + 287) = v68;
  v62 ^= 0x56F78105u;
  v76 = v70 ^ v62;
  *(v14 + 359) = v75;
  v77 = v76 + (v68 ^ v62);
  v78 = v71 - v76;
  v79 = v72 - v75;
  v80 = v62 - (v71 - v76);
  *(v14 + 288) = v80;
  v81 = v76 - v80;
  *(v14 + 360) = v79;
  *(v14 + 289) = v81;
  *(v14 + 361) = v73;
  *(v14 + 290) = v78;
  *(v14 + 362) = v74;
  v82 = v79 ^ v75;
  *(v14 + 291) = v77;
  v83 = v81 ^ v80;
  v84 = v69 - v75;
  v85 = v82 - v84;
  *(v14 + 363) = v85;
  v86 = v85 ^ (v74 - 408378068);
  v87 = v71 - v80;
  v88 = v83 - v87;
  v89 = v88 ^ (v77 - 408378068);
  v90 = v89 ^ v87;
  v91 = v86 ^ v84;
  v92 = v88 + (v78 ^ 0x2D3BD2D2);
  v93 = v85 + (v73 ^ 0x2D3BD2D2);
  *(v14 + 292) = v88;
  *(v14 + 364) = v91;
  *(v14 + 293) = v90;
  v94 = v93 ^ v85;
  *(v14 + 365) = v93;
  v95 = v92 ^ v88;
  *(v14 + 294) = v92;
  v96 = v92 + v89;
  v97 = v93 + v86;
  v98 = v91 + 961356030 + v97;
  *(v14 + 366) = v86;
  *(v14 + 295) = v89;
  v97 += 1148041632;
  v99 = v97 + v94;
  v100 = v96 + 961356030 + v90;
  v96 += 1148041632;
  v101 = v96 + v95;
  *(v14 + 367) = v99;
  *(v14 + 296) = v101;
  *(v14 + 368) = v98;
  v102 = v98 ^ v99;
  *(v14 + 297) = v100;
  *(v14 + 369) = v97;
  v103 = v101 ^ v100;
  *(v14 + 298) = v96;
  v104 = (v89 - 1567735866) ^ 0xCBC8C38A;
  v105 = (v86 - 1567735866) ^ 0xCBC8C38A;
  *(v14 + 370) = v105;
  *(v14 + 299) = v104;
  v99 -= 2096050052;
  v106 = v105 - v102 + v97;
  v107 = v102 + v99;
  v108 = v104 - v103 + v96;
  v109 = v106 + v99;
  v101 -= 2096050052;
  v110 = v99 + v105;
  *(v14 + 371) = v109;
  v111 = v103 + v101;
  v112 = v101 + v104;
  v113 = v108 + v101;
  *(v14 + 300) = v113;
  *(v14 + 372) = v107;
  *(v14 + 301) = v111;
  *(v14 + 373) = v106 ^ v110;
  v114 = v108 ^ v112;
  *(v14 + 302) = v108 ^ v112;
  *(v14 + 374) = v110;
  *(v14 + 303) = v112;
  v115 = (v106 ^ v110) - 2021538156;
  v107 ^= 0xEE565D71;
  v116 = v115 ^ v109;
  v117 = v115 + v107;
  v116 -= 1453303347;
  v118 = v107 ^ v106;
  v119 = ((v114 - 2021538156) ^ v113) - 1453303347;
  v111 ^= 0xEE565D71;
  v120 = v114 - 2021538156 + v111;
  *(v14 + 375) = v116;
  v121 = v111 ^ v108;
  *(v14 + 304) = v119;
  *(v14 + 376) = v118;
  *(v14 + 305) = v121;
  v122 = v106 - v116;
  v123 = v108 - v119;
  *(v14 + 377) = v117;
  *(v14 + 306) = v120;
  *(v14 + 378) = v122;
  *(v14 + 307) = v123;
  v124 = v123 - v121;
  v125 = v122 - v118;
  v126 = v116 + v118;
  v127 = (v116 - v125) ^ v126;
  v128 = v117 + 2112714749 + v126;
  v125 -= 896216769;
  v129 = v119 + v121;
  *(v14 + 379) = v127;
  v126 += 592224720;
  v130 = (v119 - v124) ^ v129;
  *(v14 + 308) = v130;
  *(v14 + 380) = v126;
  v131 = v129 + 592224720;
  *(v14 + 309) = v129 - 48;
  *(v14 + 381) = v128;
  v132 = v120 + 2112714749 + v129;
  *(v14 + 310) = v132;
  v127 -= 1298731782;
  *(v14 + 382) = v125;
  v133 = v128 + v126;
  v130 -= 1298731782;
  v134 = v131 + v132;
  v135 = v125 - v133 - 900935535;
  *(v14 + 311) = v124 + 63;
  v136 = v125 ^ v126 ^ v127;
  v137 = (v124 - 896216769) ^ v131 ^ v130;
  v138 = v133 - v136;
  v130 ^= 0x713F8993u;
  v127 ^= 0x713F8993u;
  *(v14 + 383) = v127;
  v139 = v124 - v134 - 1797152304;
  *(v14 + 312) = v130;
  *(v14 + 384) = v136;
  *(v14 + 313) = v137;
  v140 = v134 - v137;
  v141 = v137 - v130;
  v142 = v136 - v127;
  *(v14 + 385) = v138;
  *(v14 + 314) = v140;
  v130 -= 1272105604;
  *(v14 + 386) = v135;
  v127 -= 1272105604;
  v143 = v135 ^ 0x379CDC58 ^ v138;
  *(v14 + 315) = v139;
  v144 = v142 ^ v127;
  v145 = v141 ^ v130;
  v146 = v139 ^ 0x379CDC58 ^ v140;
  v147 = v127 - v143;
  v148 = v130 - v146;
  *(v14 + 387) = v147;
  *(v14 + 316) = v148;
  *(v14 + 388) = v144;
  *(v14 + 317) = v145;
  v149 = v143 - 529135764 + v144;
  *(v14 + 389) = v138 ^ 0x9F;
  v150 = v147 ^ v138 ^ 0x5988D69F;
  *(v14 + 318) = v140 ^ 0x9F;
  *(v14 + 390) = v143 + 108;
  v151 = v148 ^ v140 ^ 0x5988D69F;
  *(v14 + 319) = v146 + 108;
  v152 = 529135764 - v143 + v147 - v149;
  LODWORD(STACK[0x3D98]) = v143 - 529135764;
  LOBYTE(v144) = v152 ^ (v143 + 108);
  v153 = v146 - 529135764 + v145;
  *(v14 + 391) = v152;
  LODWORD(STACK[0x3D88]) = v150;
  LODWORD(STACK[0x3D70]) = v152;
  v154 = 529135764 - v146 + v148 - v153;
  LODWORD(STACK[0x3D78]) = v151;
  *(v14 + 320) = v154;
  LODWORD(STACK[0x3D90]) = v149;
  *(v14 + 392) = v149 + 57;
  LODWORD(STACK[0x3E38]) = v146 - 529135764;
  LODWORD(STACK[0x3D68]) = v154;
  LODWORD(STACK[0x3D50]) = v153;
  *(v14 + 321) = v153 + 57;
  *(v14 + 393) = v150 - v152;
  *(v14 + 322) = v151 - v154;
  *(v14 + 394) = v144 ^ 0xF9;
  *(v14 + 323) = v154 ^ (v146 + 108) ^ 0xF9;
  v155 = *(v14 + 334);
  STACK[0x3D48] = v155;
  v156 = STACK[0x3D40];
  v157 = *(STACK[0x3D40] + 4 * (v155 ^ 0x4D));
  v158 = *(v14 + 332);
  STACK[0x3D58] = v158;
  LODWORD(v155) = *(v156 + 4 * (v158 ^ 0x90)) ^ 0xE0C33FFF ^ (16 * (*(v156 + 4 * (v158 ^ 0x90)) ^ 0xFBEF1DBD)) ^ (8 * (*(v156 + 4 * (v158 ^ 0x90)) ^ 0xFBEF1DBD));
  v159 = STACK[0x3DA8];
  v160 = *STACK[0x3DA8];
  STACK[0x3D38] = v160;
  LODWORD(v160) = *(v156 + 4 * (v160 ^ 3));
  LODWORD(v158) = v160 ^ (16 * (v160 ^ 0xFBEF1DBD)) ^ (8 * (v160 ^ 0xFBEF1DBD));
  v161 = STACK[0x3E40];
  LODWORD(v160) = *(STACK[0x3E40] + 4 * (*(v14 + 263) ^ 0xELL)) - 150430535;
  v162 = v160 ^ 0xC1991ECB ^ (v160 >> 4) ^ (v160 >> 1);
  LODWORD(v160) = *(STACK[0x3E40] + 4 * (*(v14 + 261) ^ 0xEFLL)) - 150430535;
  v163 = *(v14 + 333);
  STACK[0x3D30] = v163;
  v164 = *(v156 + 4 * (v163 ^ 0x34)) ^ (16 * (*(v156 + 4 * (v163 ^ 0x34)) ^ 0xFBEF1DBD)) ^ (8 * (*(v156 + 4 * (v163 ^ 0x34)) ^ 0xFBEF1DBD)) ^ __ROR4__(v157 ^ (16 * (v157 ^ 0xFBEF1DBD)) ^ (8 * (v157 ^ 0xFBEF1DBD)) ^ 0x4893AC1C, 8) ^ __ROR4__(v155, 24) ^ __ROR4__(v158 ^ 0x5C97ECEC, 16);
  v165 = STACK[0x3DA0];
  LODWORD(v155) = *(v161 + 4 * (*STACK[0x3DA0] ^ 0x68)) - 150430535;
  LODWORD(v158) = *(v161 + 4 * (*(v14 + 262) ^ 0x11)) - 150430535;
  v164 ^= 0xFE6073Au;
  LODWORD(v155) = v158 ^ (v158 >> 4) ^ (v158 >> 1) ^ __ROR4__(v162, 8) ^ __ROR4__(v160 ^ 0x185680F7 ^ (v160 >> 4) ^ (v160 >> 1), 24) ^ __ROR4__(v155 ^ (v155 >> 4) ^ (v155 >> 1) ^ 0x1152E24A, 16) ^ 0xDCF3C6FC;
  *v159 = HIBYTE(v164);
  *v165 = BYTE3(v155);
  *(v14 + 332) = BYTE2(v164);
  *(v14 + 261) = BYTE2(v155);
  *(v14 + 333) = BYTE1(v164);
  *(v14 + 262) = BYTE1(v155);
  *(v14 + 334) = v164;
  *(v14 + 263) = v155;
  v166 = *(v156 + 4 * (*(v14 + 338) ^ 0x4FLL));
  v167 = *(v156 + 4 * (*(v14 + 336) ^ 0xCALL));
  LODWORD(v155) = *(v156 + 4 * (*(v14 + 335) ^ 0xE5));
  v168 = v155 ^ (16 * (v155 ^ 0xFBEF1DBD)) ^ (8 * (v155 ^ 0xFBEF1DBD));
  LODWORD(v155) = *(v161 + 4 * (*(v14 + 267) ^ 0x63)) - 150430535;
  v169 = *(v14 + 265);
  STACK[0x3D28] = v169;
  LODWORD(v169) = *(v161 + 4 * (v169 ^ 0x8D)) - 150430535;
  v170 = *(v161 + 4 * (*(v14 + 264) ^ 7)) - 150430535;
  LODWORD(v159) = *(v156 + 4 * (*(v14 + 337) ^ 0xD6));
  v171 = v159 ^ (16 * (v159 ^ 0xFBEF1DBD)) ^ (8 * (v159 ^ 0xFBEF1DBD)) ^ __ROR4__(v166 ^ (16 * (v166 ^ 0xFBEF1DBD)) ^ (8 * (v166 ^ 0xFBEF1DBD)) ^ 0x83BDD569, 8) ^ __ROR4__(v167 ^ 0x3BE8464A ^ (16 * (v167 ^ 0xFBEF1DBD)) ^ (8 * (v167 ^ 0xFBEF1DBD)), 24) ^ __ROR4__(v168 ^ 0x1D5383E5, 16);
  v172 = *(v14 + 266);
  STACK[0x2378] = v172;
  v173 = *(v161 + 4 * (v172 ^ 0x24)) - 150430535;
  v174 = v173 ^ 0x1B65BF0F ^ (v173 >> 4) ^ (v173 >> 1) ^ __ROR4__(v155 ^ 0xEC112BD7 ^ (v155 >> 4) ^ (v155 >> 1), 8) ^ __ROR4__(v169 ^ (v169 >> 4) ^ (v169 >> 1) ^ 0xFDC07954, 24) ^ __ROR4__(v170 ^ (v170 >> 4) ^ (v170 >> 1) ^ 0x267455C7, 16);
  v171 ^= 0xD87E9AD8;
  *(v14 + 335) = HIBYTE(v171);
  *(v14 + 264) = HIBYTE(v174);
  *(v14 + 336) = BYTE2(v171);
  *(v14 + 265) = BYTE2(v174);
  *(v14 + 337) = BYTE1(v171);
  *(v14 + 266) = BYTE1(v174);
  *(v14 + 338) = v171;
  *(v14 + 267) = v174;
  v175 = *(v161 + 4 * (*(v14 + 271) ^ 0x34)) - 150430535;
  v176 = *(v14 + 339);
  STACK[0x3D10] = v176;
  LODWORD(v176) = *(v156 + 4 * (v176 ^ 0x1ALL));
  LODWORD(v172) = v175 ^ (v175 >> 4) ^ (v175 >> 1);
  v177 = v176 ^ (16 * (v176 ^ 0xFBEF1DBD)) ^ (8 * (v176 ^ 0xFBEF1DBD));
  v178 = *(v14 + 342);
  STACK[0x3CF0] = v178;
  LODWORD(v169) = *(v156 + 4 * (v178 ^ 0x7D)) ^ (16 * (*(v156 + 4 * (v178 ^ 0x7D)) ^ 0xFBEF1DBD)) ^ (8 * (*(v156 + 4 * (v178 ^ 0x7D)) ^ 0xFBEF1DBD));
  v179 = *(v14 + 340);
  STACK[0x3D20] = v179;
  LODWORD(v159) = *(v156 + 4 * (v179 ^ 0xC9)) ^ 0x15510385 ^ (16 * (*(v156 + 4 * (v179 ^ 0xC9)) ^ 0xFBEF1DBD)) ^ (8 * (*(v156 + 4 * (v179 ^ 0xC9)) ^ 0xFBEF1DBD));
  LODWORD(v163) = *(v161 + 4 * (*(v14 + 269) ^ 0x4CLL)) - 150430535;
  v180 = v163 ^ 0x8EE7CE79 ^ (v163 >> 4) ^ (v163 >> 1);
  v181 = *(v14 + 341);
  STACK[0x3CE8] = v181;
  v182 = *(v156 + 4 * (v181 ^ 0xDC)) ^ 0x3FE9067A ^ (16 * (*(v156 + 4 * (v181 ^ 0xDC)) ^ 0xFBEF1DBD)) ^ (8 * (*(v156 + 4 * (v181 ^ 0xDC)) ^ 0xFBEF1DBD)) ^ __ROR4__(v177 ^ 0xCCCAFE2F, 16) ^ __ROR4__(v169 ^ 0xA307F0EE, 8) ^ __ROR4__(v159, 24);
  LODWORD(v169) = *(v161 + 4 * (*(v14 + 268) ^ 0x6BLL)) - 150430535;
  v183 = *(v14 + 270);
  STACK[0x2528] = v183;
  LODWORD(v159) = *(v161 + 4 * (v183 ^ 0x2F)) - 150430535;
  LODWORD(v172) = v159 ^ 0xE6267692 ^ (v159 >> 4) ^ (v159 >> 1) ^ __ROR4__(v172 ^ 0xCE11AB87, 8) ^ __ROR4__(v180, 24) ^ __ROR4__(v169 ^ (v169 >> 4) ^ (v169 >> 1) ^ 0x86AB2193, 16);
  *(v14 + 339) = HIBYTE(v182);
  *(v14 + 268) = BYTE3(v172);
  *(v14 + 340) = BYTE2(v182);
  *(v14 + 269) = BYTE2(v172);
  *(v14 + 341) = BYTE1(v182);
  *(v14 + 270) = BYTE1(v172);
  *(v14 + 342) = v182;
  *(v14 + 271) = v172;
  v184 = *(v156 + 4 * (*(v14 + 346) ^ 0x59));
  LODWORD(v169) = v184 ^ 0x87BC9559 ^ (16 * (v184 ^ 0xFBEF1DBD)) ^ (8 * (v184 ^ 0xFBEF1DBD));
  v185 = *(v156 + 4 * (*(v14 + 344) ^ 0x84));
  LODWORD(v172) = *(v156 + 4 * (*(v14 + 343) ^ 0x56));
  v186 = *(v14 + 275);
  STACK[0x31B8] = v186;
  LODWORD(v159) = v172 ^ 0x13E0C7AA ^ (16 * (v172 ^ 0xFBEF1DBD)) ^ (8 * (v172 ^ 0xFBEF1DBD));
  LODWORD(v172) = *(v161 + 4 * (v186 ^ 0x80)) - 150430535;
  v187 = v172 ^ (v172 >> 4) ^ (v172 >> 1);
  LODWORD(v172) = *(v161 + 4 * (*(v14 + 273) ^ 0x94)) - 150430535;
  v188 = v172 ^ (v172 >> 4) ^ (v172 >> 1);
  v189 = *(v156 + 4 * (*(v14 + 345) ^ 0x23));
  HIDWORD(v191) = v169;
  LODWORD(v191) = v169;
  v190 = (v191 >> 8);
  STACK[0x33A8] = v190;
  v192 = v189 ^ 0xEE707BB0 ^ (16 * (v189 ^ 0xFBEF1DBD)) ^ (8 * (v189 ^ 0xFBEF1DBD)) ^ v190 ^ __ROR4__(v185 ^ 0x2FEC06BA ^ (16 * (v185 ^ 0xFBEF1DBD)) ^ (8 * (v185 ^ 0xFBEF1DBD)), 24) ^ __ROR4__(v159, 16);
  LODWORD(v169) = *(v161 + 4 * (*(v14 + 272) ^ 0xF7)) - 150430535;
  LODWORD(v159) = *(v161 + 4 * (*(v14 + 274) ^ 0xCFLL)) - 150430535;
  LODWORD(v169) = v159 ^ (v159 >> 4) ^ (v159 >> 1) ^ __ROR4__(v187 ^ 0x2F70377A, 8) ^ __ROR4__(v188 ^ 0xCF5926D0, 24) ^ __ROR4__(v169 ^ (v169 >> 4) ^ (v169 >> 1) ^ 0xA7989E3B, 16) ^ 0xB2BEA9E6;
  *(v14 + 343) = HIBYTE(v192);
  *(v14 + 272) = BYTE3(v169);
  *(v14 + 344) = BYTE2(v192);
  *(v14 + 273) = BYTE2(v169);
  *(v14 + 345) = BYTE1(v192);
  *(v14 + 274) = BYTE1(v169);
  *(v14 + 346) = v192;
  *(v14 + 275) = v169;
  v193 = *(v156 + 4 * (*(v14 + 350) ^ 0x71));
  LODWORD(v159) = v193 ^ 0x19E2E7D2 ^ (16 * (v193 ^ 0xFBEF1DBD)) ^ (8 * (v193 ^ 0xFBEF1DBD));
  v194 = *(v156 + 4 * (*(v14 + 348) ^ 0x7ALL));
  v195 = *(v156 + 4 * (*(v14 + 347) ^ 0x36));
  v196 = *(v161 + 4 * (*(v14 + 279) ^ 0x27)) - 150430535;
  v197 = *(v161 + 4 * (*(v14 + 277) ^ 0x6ALL)) - 150430535;
  LODWORD(v158) = *(v161 + 4 * (*(v14 + 276) ^ 0x4FLL)) - 150430535;
  v198 = *(v14 + 349);
  STACK[0x2610] = v198;
  v199 = *(v156 + 4 * (v198 ^ 0xC1));
  v200 = v199 ^ 0x39E8E652 ^ (16 * (v199 ^ 0xFBEF1DBD)) ^ (8 * (v199 ^ 0xFBEF1DBD)) ^ __ROR4__(v159, 8) ^ __ROR4__(v194 ^ 0x1BE247CA ^ (16 * (v194 ^ 0xFBEF1DBD)) ^ (8 * (v194 ^ 0xFBEF1DBD)), 24) ^ __ROR4__(v195 ^ 0xC4C87E4F ^ (16 * (v195 ^ 0xFBEF1DBD)) ^ (8 * (v195 ^ 0xFBEF1DBD)), 16);
  LODWORD(v159) = *(v161 + 4 * (*(v14 + 278) ^ 0x18)) - 150430535;
  *(v14 + 347) = HIBYTE(v200);
  LODWORD(v158) = v159 ^ (v159 >> 4) ^ (v159 >> 1) ^ __ROR4__(v196 ^ 0x8C9C7CD6 ^ (v196 >> 4) ^ (v196 >> 1), 8) ^ __ROR4__(v197 ^ (v197 >> 4) ^ (v197 >> 1) ^ 0xBFC60DB, 24) ^ __ROR4__(v158 ^ (v158 >> 4) ^ (v158 >> 1) ^ 0x191E0DA0, 16) ^ 0x3B1E8DF0;
  *(v14 + 276) = BYTE3(v158);
  *(v14 + 348) = BYTE2(v200);
  *(v14 + 277) = BYTE2(v158);
  *(v14 + 349) = BYTE1(v200);
  *(v14 + 278) = BYTE1(v158);
  *(v14 + 350) = v200;
  *(v14 + 279) = v158;
  v201 = *(v156 + 4 * (*(v14 + 354) ^ 0x8ELL));
  LODWORD(v159) = v201 ^ (16 * (v201 ^ 0xFBEF1DBD)) ^ (8 * (v201 ^ 0xFBEF1DBD));
  v202 = *(v156 + 4 * (*(v14 + 352) ^ 0x8DLL));
  v203 = v202 ^ (16 * (v202 ^ 0xFBEF1DBD)) ^ (8 * (v202 ^ 0xFBEF1DBD));
  v204 = *(v156 + 4 * (*(v14 + 351) ^ 0xB1));
  LODWORD(v155) = *(v161 + 4 * (*(v14 + 283) ^ 0x88)) - 150430535;
  v205 = v155 ^ (v155 >> 4) ^ (v155 >> 1);
  LODWORD(v155) = *(v161 + 4 * (*(v14 + 281) ^ 0xBBLL)) - 150430535;
  v206 = v155 ^ 0xADAFC37E ^ (v155 >> 4) ^ (v155 >> 1);
  LODWORD(v155) = *(v161 + 4 * (*(v14 + 280) ^ 0xF9)) - 150430535;
  v207 = *(v156 + 4 * (*(v14 + 353) ^ 0x9ALL));
  v208 = *(v14 + 282) ^ 0x8ELL;
  LODWORD(STACK[0x3CE0]) = v203 ^ 0xE6C2DFD7;
  LODWORD(v208) = (*(v161 + 4 * v208) - 150430535) ^ ((*(v161 + 4 * v208) - 150430535) >> 4) ^ ((*(v161 + 4 * v208) - 150430535) >> 1) ^ __ROR4__(v205 ^ 0x45CA3D3E, 8) ^ __ROR4__(v206, 24);
  v209 = v207 ^ (16 * (v207 ^ 0xFBEF1DBD)) ^ (8 * (v207 ^ 0xFBEF1DBD)) ^ __ROR4__(v159 ^ 0xC87B9A18, 8) ^ __ROR4__(v203 ^ 0xE6C2DFD7, 24) ^ __ROR4__(v204 ^ (16 * (v204 ^ 0xFBEF1DBD)) ^ (8 * (v204 ^ 0xFBEF1DBD)) ^ 0xB7B39419, 16) ^ 0x754A35D;
  *(v14 + 351) = HIBYTE(v209);
  LODWORD(v208) = v208 ^ __ROR4__(v155 ^ (v155 >> 4) ^ (v155 >> 1) ^ 0xE2D113CC, 16) ^ 0x6A39BA8D;
  *(v14 + 280) = BYTE3(v208);
  *(v14 + 352) = BYTE2(v209);
  *(v14 + 281) = BYTE2(v208);
  *(v14 + 353) = BYTE1(v209);
  *(v14 + 282) = BYTE1(v208);
  *(v14 + 354) = v209;
  *(v14 + 283) = v208;
  v210 = *(v156 + 4 * (*(v14 + 358) ^ 0xF1));
  LODWORD(v159) = v210 ^ 0xD27CBAA0 ^ (16 * (v210 ^ 0xFBEF1DBD)) ^ (8 * (v210 ^ 0xFBEF1DBD));
  v211 = *(v14 + 355) ^ 0x36;
  v212 = *(v14 + 356);
  STACK[0x2FE8] = v212;
  LODWORD(v169) = *(v161 + 4 * (*(v14 + 287) ^ 0xFDLL)) - 150430535;
  v213 = v169 ^ (v169 >> 4) ^ (v169 >> 1);
  LODWORD(v169) = *(v161 + 4 * (*(v14 + 285) ^ 0x89)) - 150430535;
  LODWORD(v179) = *(v161 + 4 * (*(v14 + 284) ^ 0x4CLL)) - 150430535;
  v214 = *(v156 + 4 * (*(v14 + 357) ^ 0x25));
  LODWORD(v211) = v214 ^ 0xB302F02E ^ (16 * (v214 ^ 0xFBEF1DBD)) ^ (8 * (v214 ^ 0xFBEF1DBD)) ^ __ROR4__(v159, 8) ^ __ROR4__(*(v156 + 4 * (v212 ^ 0x1E)) ^ (16 * (*(v156 + 4 * (v212 ^ 0x1E)) ^ 0xFBEF1DBD)) ^ (8 * (*(v156 + 4 * (v212 ^ 0x1E)) ^ 0xFBEF1DBD)) ^ 0x5A960CC4, 24) ^ __ROR4__(*(v156 + 4 * v211) ^ 0xC4C87E4F ^ (16 * (*(v156 + 4 * v211) ^ 0xFBEF1DBD)) ^ (8 * (*(v156 + 4 * v211) ^ 0xFBEF1DBD)), 16);
  LODWORD(v160) = *(v161 + 4 * (*(v14 + 286) ^ 0xC9)) - 150430535;
  *(v14 + 355) = BYTE3(v211);
  LODWORD(v160) = v160 ^ (v160 >> 4) ^ (v160 >> 1) ^ __ROR4__(v213 ^ 0xD78C16EE, 8) ^ __ROR4__(v169 ^ 0xC89D7C76 ^ (v169 >> 4) ^ (v169 >> 1), 24) ^ __ROR4__(v179 ^ 0x8EE7CE79 ^ (v179 >> 4) ^ (v179 >> 1), 16) ^ 0x9D4D2E55;
  *(v14 + 284) = BYTE3(v160);
  *(v14 + 356) = BYTE2(v211);
  *(v14 + 285) = BYTE2(v160);
  *(v14 + 357) = BYTE1(v211);
  *(v14 + 286) = BYTE1(v160);
  *(v14 + 358) = v211;
  *(v14 + 287) = v160;
  LODWORD(v211) = *(v156 + 4 * (*(v14 + 362) ^ 0x7ELL));
  LODWORD(v160) = v211 ^ (16 * (v211 ^ 0xFBEF1DBD)) ^ (8 * (v211 ^ 0xFBEF1DBD));
  LODWORD(v211) = *(v156 + 4 * (*(v14 + 360) ^ 0xD2));
  v215 = *(v14 + 359);
  STACK[0x2520] = v215;
  LODWORD(v159) = *(v156 + 4 * (v215 ^ 0x25));
  LODWORD(v215) = v159 ^ 0xB302F02E ^ (16 * (v159 ^ 0xFBEF1DBD)) ^ (8 * (v159 ^ 0xFBEF1DBD));
  LODWORD(v179) = *(v161 + 4 * (*(v14 + 291) ^ 0x37)) - 150430535;
  LODWORD(v159) = *(v161 + 4 * (*(v14 + 289) ^ 0x5CLL)) - 150430535;
  v216 = *(v161 + 4 * (*(v14 + 288) ^ 0xD4)) - 150430535;
  v217 = v216 ^ (v216 >> 4) ^ (v216 >> 1);
  v218 = *(v156 + 4 * (*(v14 + 361) ^ 0xB9));
  v219 = v160 ^ 0x8DBEB521;
  LODWORD(v160) = *(v161 + 4 * (*(v14 + 290) ^ 0x39)) - 150430535;
  LODWORD(v160) = v160 ^ 0x1CA1E5A9 ^ (v160 >> 4) ^ (v160 >> 1) ^ __ROR4__(v179 ^ (v179 >> 4) ^ (v179 >> 1) ^ 0x59E8685E, 8) ^ __ROR4__(v159 ^ 0x5B93DAF1 ^ (v159 >> 4) ^ (v159 >> 1), 24) ^ __ROR4__(v217 ^ 0x9A8974F3, 16);
  v220 = (*(v14 + 364) << 16) | (*(v14 + 363) << 24) | (*(v14 + 365) << 8);
  LODWORD(STACK[0x3A28]) = v215;
  LODWORD(v211) = v218 ^ (16 * (v218 ^ 0xFBEF1DBD)) ^ (8 * (v218 ^ 0xFBEF1DBD)) ^ __ROR4__(v219, 8) ^ __ROR4__(v211 ^ (16 * (v211 ^ 0xFBEF1DBD)) ^ (8 * (v211 ^ 0xFBEF1DBD)) ^ 0x4E226833, 24) ^ __ROR4__(v215, 16) ^ 0x9B0A71CE;
  *(v14 + 359) = BYTE3(v211);
  *(v14 + 288) = BYTE3(v160);
  *(v14 + 360) = BYTE2(v211);
  *(v14 + 289) = BYTE2(v160);
  *(v14 + 361) = BYTE1(v211);
  *(v14 + 290) = BYTE1(v160);
  *(v14 + 362) = v211;
  *(v14 + 291) = v160;
  LODWORD(v211) = *(v156 + 4 * (*(v14 + 366) ^ 0xCALL));
  LODWORD(v160) = v211 ^ 0x3BE8464A ^ (16 * (v211 ^ 0xFBEF1DBD)) ^ (8 * (v211 ^ 0xFBEF1DBD));
  v221 = v220 ^ 0x33940000;
  LODWORD(v211) = *(v156 + 4 * ((v220 ^ 0x33940000) >> 16));
  LODWORD(v220) = *(v156 + ((v221 >> 22) & 0x3FC)) ^ 0xB703B01E ^ (16 * (*(v156 + ((v221 >> 22) & 0x3FC)) ^ 0xFBEF1DBD)) ^ (8 * (*(v156 + ((v221 >> 22) & 0x3FC)) ^ 0xFBEF1DBD));
  LODWORD(v165) = bswap32(*(v14 + 292));
  v222 = v165 ^ 0x5538;
  LODWORD(v165) = *(v161 + 4 * (v165 ^ 0x38u)) - 150430535;
  LODWORD(v159) = *(v161 + 4 * (BYTE2(v222) ^ 0x40)) - 150430535;
  STACK[0x3340] = v222 >> 24;
  v223 = *(v161 + ((4 * (v222 >> 24)) ^ 0x394)) - 150430535;
  v224 = *(v156 + 4 * (BYTE1(v221) ^ 0x70));
  LODWORD(v211) = v224 ^ (16 * (v224 ^ 0xFBEF1DBD)) ^ (8 * (v224 ^ 0xFBEF1DBD)) ^ __ROR4__(v160, 8) ^ __ROR4__(v211 ^ (16 * (v211 ^ 0xFBEF1DBD)) ^ (8 * (v211 ^ 0xFBEF1DBD)) ^ 0x769FCD14, 24) ^ __ROR4__(v220, 16);
  LODWORD(v160) = *(v161 + 4 * BYTE1(v222)) - 150430535;
  LODWORD(v220) = (*(v14 + 296) << 24) | (*(v14 + 297) << 16);
  LODWORD(v211) = v211 ^ 0xFC75DB68;
  *(v14 + 363) = BYTE3(v211);
  LODWORD(v160) = v160 ^ (v160 >> 4) ^ (v160 >> 1) ^ __ROR4__(v165 ^ (v165 >> 4) ^ (v165 >> 1) ^ 0x91F6A4E1, 8) ^ __ROR4__(v159 ^ (v159 >> 4) ^ (v159 >> 1) ^ 0xD100C11F, 24) ^ __ROR4__(v223 ^ (v223 >> 4) ^ (v223 >> 1) ^ 0x68420822, 16) ^ 0xBC7E91FD;
  *(v14 + 292) = BYTE3(v160);
  *(v14 + 364) = BYTE2(v211);
  *(v14 + 293) = BYTE2(v160);
  *(v14 + 365) = BYTE1(v211);
  *(v14 + 294) = BYTE1(v160);
  *(v14 + 366) = v211;
  *(v14 + 295) = v160;
  LODWORD(v211) = bswap32(*(v14 + 367));
  v225 = v211 ^ 0x2DC0DF8;
  LODWORD(v211) = *(v156 + 4 * (v211 ^ 0xF8u));
  LODWORD(v165) = *(v156 + 4 * BYTE2(v225)) ^ 0x3FE9067A ^ (16 * (*(v156 + 4 * BYTE2(v225)) ^ 0xFBEF1DBD)) ^ (8 * (*(v156 + 4 * BYTE2(v225)) ^ 0xFBEF1DBD));
  LODWORD(v159) = *(v156 + ((v225 >> 22) & 0x3FC)) ^ 0xB900D056 ^ (16 * (*(v156 + ((v225 >> 22) & 0x3FC)) ^ 0xFBEF1DBD)) ^ (8 * (*(v156 + ((v225 >> 22) & 0x3FC)) ^ 0xFBEF1DBD));
  v226 = *(v14 + 299);
  STACK[0x3048] = v226;
  v227 = (v220 | v226) ^ 0x5A7A00B8;
  v228 = *(v161 + 4 * v227) - 150430535;
  v229 = *(v161 + 4 * BYTE2(v227)) - 150430535;
  LODWORD(v227) = *(v161 + ((v227 >> 22) & 0x3FC)) - 150430535;
  LODWORD(v211) = *(v156 + 4 * BYTE1(v225)) ^ (16 * (*(v156 + 4 * BYTE1(v225)) ^ 0xFBEF1DBD)) ^ (8 * (*(v156 + 4 * BYTE1(v225)) ^ 0xFBEF1DBD)) ^ __ROR4__(v211 ^ (16 * (v211 ^ 0xFBEF1DBD)) ^ (8 * (v211 ^ 0xFBEF1DBD)) ^ 0x1B5263CD, 8) ^ __ROR4__(v165, 24) ^ __ROR4__(v159, 16) ^ 0x2D5C82A5;
  LODWORD(v165) = *(v161 + 4 * (*(v14 + 298) ^ 0x32)) - 150430535;
  LODWORD(v225) = v165 ^ 0xE1E22C34 ^ (v165 >> 4) ^ (v165 >> 1) ^ __ROR4__(v228 ^ (v228 >> 4) ^ (v228 >> 1) ^ 0x3A5600A7, 8) ^ __ROR4__(v229 ^ 0xDE887453 ^ (v229 >> 4) ^ (v229 >> 1), 24) ^ __ROR4__(v227 ^ (v227 >> 4) ^ (v227 >> 1) ^ 0x74605D42, 16);
  *(v14 + 367) = BYTE3(v211);
  *(v14 + 296) = BYTE3(v225);
  *(v14 + 368) = BYTE2(v211);
  *(v14 + 297) = BYTE2(v225);
  *(v14 + 369) = BYTE1(v211);
  *(v14 + 298) = BYTE1(v225);
  *(v14 + 370) = v211;
  *(v14 + 299) = v225;
  LODWORD(v225) = *(v14 + 372);
  LODWORD(v211) = *(v14 + 371);
  LODWORD(STACK[0x33E4]) = v225;
  v230 = ((v225 << 16) | (v211 << 24) | *(v14 + 374) | (*(v14 + 373) << 8)) ^ 0x19880047u;
  LODWORD(v211) = *(v156 + 4 * (*(v14 + 374) ^ 0x47u));
  LODWORD(v225) = v211 ^ 0xAF0430BE ^ (16 * (v211 ^ 0xFBEF1DBD)) ^ (8 * (v211 ^ 0xFBEF1DBD));
  v231 = bswap32(*(v14 + 300)) ^ 0xAC391962;
  v232 = *(v161 + 4 * v231) - 150430535;
  v233 = *(v161 + 4 * BYTE1(v231)) - 150430535;
  v234 = v233 ^ (v233 >> 4) ^ (v233 >> 1);
  v235 = *(v161 + 4 * BYTE2(v231)) - 150430535;
  LODWORD(v231) = *(v161 + ((v231 >> 22) & 0x3FC)) - 150430535;
  LODWORD(v211) = *(v156 + 4 * (BYTE1(v230) ^ 0x47));
  LODWORD(v211) = v211 ^ 0xAF0430BE ^ (16 * (v211 ^ 0xFBEF1DBD)) ^ (8 * (v211 ^ 0xFBEF1DBD)) ^ __ROR4__(v225, 8) ^ __ROR4__(*(v156 + 4 * BYTE2(v230)) ^ 0x95091186 ^ (16 * (*(v156 + 4 * BYTE2(v230)) ^ 0xFBEF1DBD)) ^ (8 * (*(v156 + 4 * BYTE2(v230)) ^ 0xFBEF1DBD)), 24) ^ __ROR4__(*(v156 + ((v230 >> 22) & 0x3FC)) ^ (16 * (*(v156 + ((v230 >> 22) & 0x3FC)) ^ 0xFBEF1DBD)) ^ (8 * (*(v156 + ((v230 >> 22) & 0x3FC)) ^ 0xFBEF1DBD)) ^ 0xE273BBE0, 16);
  *(v14 + 371) = BYTE3(v211);
  v236 = v234 ^ 0xB649CCB8;
  STACK[0x3AE0] = v236;
  LODWORD(v236) = v236 ^ __ROR4__(v232 ^ (v232 >> 4) ^ (v232 >> 1) ^ 0x61466A9F, 8) ^ __ROR4__(v235 ^ 0x1CA1E5A9 ^ (v235 >> 4) ^ (v235 >> 1), 24) ^ __ROR4__(v231 ^ (v231 >> 4) ^ (v231 >> 1) ^ 0xDA7F110D, 16);
  *(v14 + 300) = BYTE3(v236);
  *(v14 + 372) = BYTE2(v211);
  *(v14 + 301) = BYTE2(v236);
  *(v14 + 373) = BYTE1(v211);
  *(v14 + 302) = BYTE1(v236);
  *(v14 + 374) = v211;
  *(v14 + 303) = v236;
  LODWORD(v236) = bswap32(*(v14 + 375));
  v237 = v236 ^ 0x99009217;
  LODWORD(v236) = *(v156 + 4 * (v236 ^ 0x17u));
  LODWORD(v227) = *(v156 + 4 * (BYTE2(v237) ^ 1));
  LODWORD(v231) = *(v161 + 4 * (*(v14 + 307) ^ 0x31u)) - 150430535;
  v238 = *(v161 + 4 * (*(v14 + 305) ^ 0x5DLL)) - 150430535;
  LODWORD(v236) = *(v156 + 4 * BYTE1(v237)) ^ (16 * (*(v156 + 4 * BYTE1(v237)) ^ 0xFBEF1DBD)) ^ (8 * (*(v156 + 4 * BYTE1(v237)) ^ 0xFBEF1DBD)) ^ __ROR4__(v236 ^ (16 * (v236 ^ 0xFBEF1DBD)) ^ (8 * (v236 ^ 0xFBEF1DBD)) ^ 0x93B8D5A9, 8) ^ __ROR4__(v227 ^ (16 * (v227 ^ 0xFBEF1DBD)) ^ (8 * (v227 ^ 0xFBEF1DBD)) ^ 0x97B99599, 24) ^ __ROR4__(*(v156 + ((v237 >> 22) & 0x3FC)) ^ (16 * (*(v156 + ((v237 >> 22) & 0x3FC)) ^ 0xFBEF1DBD)) ^ (8 * (*(v156 + ((v237 >> 22) & 0x3FC)) ^ 0xFBEF1DBD)) ^ 0x29EDE692, 16) ^ 0x2BED468A;
  LODWORD(v227) = *(v161 + (((((*(v14 + 304) << 24) | (*(v14 + 306) << 8) | *(v14 + 307)) ^ 0x3E004C31u) >> 22) & 0x3FC)) - 150430535;
  v239 = ((_byteswap_ushort(*(v14 + 306)) ^ 0x4C31) >> 8);
  LODWORD(v239) = (*(v161 + 4 * v239) - 150430535) ^ 0x8EE7CE79 ^ ((*(v161 + 4 * v239) - 150430535) >> 4) ^ ((*(v161 + 4 * v239) - 150430535) >> 1) ^ __ROR4__(v231 ^ (v231 >> 4) ^ (v231 >> 1) ^ 0x761BEFED, 8) ^ __ROR4__(v238 ^ (v238 >> 4) ^ (v238 >> 1) ^ 0xD6C49BB9, 24) ^ __ROR4__(v227 ^ 0xBE052352 ^ (v227 >> 4) ^ (v227 >> 1), 16);
  *(v14 + 375) = BYTE3(v236);
  *(v14 + 304) = BYTE3(v239);
  *(v14 + 376) = BYTE2(v236);
  *(v14 + 305) = BYTE2(v239);
  *(v14 + 377) = BYTE1(v236);
  *(v14 + 306) = BYTE1(v239);
  *(v14 + 378) = v236;
  *(v14 + 307) = v239;
  v240 = ((*(v14 + 379) << 24) | (*(v14 + 380) << 16) | *(v14 + 382)) ^ 0xAD95D009;
  LODWORD(v236) = *(v156 + 4 * (*(v14 + 382) ^ 9u));
  LODWORD(v227) = v236 ^ (16 * (v236 ^ 0xFBEF1DBD)) ^ (8 * (v236 ^ 0xFBEF1DBD)) ^ 0xBB00704E;
  v241 = *(v14 + 381) ^ 0xE2;
  LODWORD(v231) = *(v156 + 4 * BYTE2(v240)) ^ (16 * (*(v156 + 4 * BYTE2(v240)) ^ 0xFBEF1DBD)) ^ (8 * (*(v156 + 4 * BYTE2(v240)) ^ 0xFBEF1DBD)) ^ 0x9308F1AE;
  LODWORD(v240) = *(v156 + ((v240 >> 22) & 0x3FC)) ^ 0x5425488B ^ (16 * (*(v156 + ((v240 >> 22) & 0x3FC)) ^ 0xFBEF1DBD)) ^ (8 * (*(v156 + ((v240 >> 22) & 0x3FC)) ^ 0xFBEF1DBD));
  v242 = *(v14 + 310) ^ 0xB7;
  LODWORD(v236) = *(v161 + 4 * (*(v14 + 311) ^ 0x2DLL)) - 150430535;
  v243 = *(v14 + 309);
  STACK[0x3CC0] = v243;
  v244 = v236 ^ 0xFC88F403 ^ (v236 >> 4) ^ (v236 >> 1);
  LODWORD(v236) = *(v161 + 4 * (v243 ^ 8)) - 150430535;
  LODWORD(v240) = *(v156 + 4 * v241) ^ 0xA5B634C1 ^ (16 * (*(v156 + 4 * v241) ^ 0xFBEF1DBD)) ^ (8 * (*(v156 + 4 * v241) ^ 0xFBEF1DBD)) ^ __ROR4__(v227, 8) ^ __ROR4__(v231, 24) ^ __ROR4__(v240, 16);
  LODWORD(v227) = *(v161 + 4 * (*(v14 + 308) ^ 0xA2)) - 150430535;
  LODWORD(v243) = *(v161 + 4 * v242);
  *(v14 + 379) = BYTE3(v240);
  LODWORD(v227) = (v243 - 150430535) ^ ((v243 - 150430535) >> 4) ^ ((v243 - 150430535) >> 1) ^ __ROR4__(v244, 8) ^ __ROR4__(v236 ^ (v236 >> 4) ^ (v236 >> 1) ^ 0xEE6A9978, 24) ^ __ROR4__(v227 ^ (v227 >> 4) ^ (v227 >> 1) ^ 0x9F369CFA, 16) ^ 0xF248CC18;
  *(v14 + 308) = BYTE3(v227);
  *(v14 + 380) = BYTE2(v240);
  *(v14 + 309) = BYTE2(v227);
  *(v14 + 381) = BYTE1(v240);
  *(v14 + 310) = BYTE1(v227);
  *(v14 + 382) = v240;
  *(v14 + 311) = v227;
  LODWORD(v240) = bswap32(*(v14 + 383));
  v245 = v240 ^ 0x88000CFD;
  LODWORD(v240) = *(v156 + 4 * (v240 ^ 0xFDu));
  LODWORD(v227) = *(v156 + 4 * (BYTE2(v245) ^ 0x60));
  LODWORD(v186) = *(v161 + 4 * (*(v14 + 315) ^ 0x5FLL)) - 150430535;
  LODWORD(v241) = *(v161 + 4 * (*(v14 + 313) ^ 0x3DLL)) - 150430535;
  LODWORD(v240) = *(v156 + 4 * BYTE1(v245)) ^ (16 * (*(v156 + 4 * BYTE1(v245)) ^ 0xFBEF1DBD)) ^ (8 * (*(v156 + 4 * BYTE1(v245)) ^ 0xFBEF1DBD)) ^ __ROR4__(v240 ^ (16 * (v240 ^ 0xFBEF1DBD)) ^ (8 * (v240 ^ 0xFBEF1DBD)) ^ 0x6899AD9C, 8) ^ __ROR4__(v227 ^ (16 * (v227 ^ 0xFBEF1DBD)) ^ (8 * (v227 ^ 0xFBEF1DBD)) ^ 0xA50610C6, 24) ^ __ROR4__(*(v156 + ((v245 >> 22) & 0x3FC)) ^ 0x95091186 ^ (16 * (*(v156 + ((v245 >> 22) & 0x3FC)) ^ 0xFBEF1DBD)) ^ (8 * (*(v156 + ((v245 >> 22) & 0x3FC)) ^ 0xFBEF1DBD)), 16) ^ 0xC8CBBE1F;
  v246 = *(v14 + 312);
  STACK[0x30A8] = v246;
  LODWORD(v246) = *(v161 + 4 * (v246 ^ 6)) - 150430535;
  v247 = *(v14 + 314);
  STACK[0x2338] = v247;
  LODWORD(v155) = *(v161 + 4 * (v247 ^ 0x9A)) - 150430535;
  LODWORD(v155) = v155 ^ (v155 >> 4) ^ (v155 >> 1) ^ __ROR4__(v186 ^ 0xCC6A1928 ^ (v186 >> 4) ^ (v186 >> 1), 8) ^ __ROR4__(v241 ^ 0x29FCE08B ^ (v241 >> 4) ^ (v241 >> 1), 24) ^ __ROR4__(v246 ^ (v246 >> 4) ^ (v246 >> 1) ^ 0xAB23148F, 16) ^ 0x8A10AB27;
  *(v14 + 383) = BYTE3(v240);
  *(v14 + 312) = BYTE3(v155);
  *(v14 + 384) = BYTE2(v240);
  *(v14 + 313) = BYTE2(v155);
  *(v14 + 385) = BYTE1(v240);
  *(v14 + 314) = BYTE1(v155);
  *(v14 + 386) = v240;
  *(v14 + 315) = v155;
  LODWORD(v240) = *(v156 + 4 * (*(v14 + 390) ^ 0xF1));
  v248 = *(v14 + 388);
  STACK[0x21E8] = v248;
  LODWORD(v248) = *(v156 + 4 * (v248 ^ 0x39));
  LODWORD(v208) = v248 ^ (16 * (v248 ^ 0xFBEF1DBD)) ^ (8 * (v248 ^ 0xFBEF1DBD)) ^ 0x50942CBC;
  v249 = bswap32(*(v14 + 316)) ^ 0xD671FC;
  LODWORD(v248) = *(v156 + 4 * (*(v14 + 387) ^ 0x23));
  LODWORD(v186) = v248 ^ 0xEE707BB0 ^ (16 * (v248 ^ 0xFBEF1DBD)) ^ (8 * (v248 ^ 0xFBEF1DBD));
  LODWORD(v248) = *(v161 + 4 * v249) - 150430535;
  LODWORD(v241) = v248 ^ 0x5ADB57A6 ^ (v248 >> 4) ^ (v248 >> 1);
  LODWORD(v248) = *(v161 + 4 * BYTE2(v249)) - 150430535;
  v250 = *(v14 + 389);
  STACK[0x3BF8] = v250;
  LODWORD(v250) = *(v156 + 4 * (v250 ^ 0x96));
  LODWORD(v240) = v250 ^ 0xBDB1B461 ^ (16 * (v250 ^ 0xFBEF1DBD)) ^ (8 * (v250 ^ 0xFBEF1DBD)) ^ __ROR4__(v240 ^ 0xD27CBAA0 ^ (16 * (v240 ^ 0xFBEF1DBD)) ^ (8 * (v240 ^ 0xFBEF1DBD)), 8) ^ __ROR4__(v208, 24) ^ __ROR4__(v186, 16);
  LODWORD(v208) = *(v161 + 4 * BYTE1(v249)) - 150430535;
  STACK[0x38C0] = v249 >> 24;
  LODWORD(v249) = *(v161 + ((4 * (v249 >> 24)) ^ 0x258)) - 150430535;
  *(v14 + 388) = BYTE2(v240);
  v251 = v208 ^ (v208 >> 4) ^ (v208 >> 1) ^ __ROR4__(v241, 8) ^ __ROR4__(v248 ^ (v248 >> 4) ^ (v248 >> 1) ^ 0x8027F662, 24) ^ 0x23CBBDCE;
  STACK[0x3D80] = v251;
  LODWORD(v251) = v251 ^ __ROR4__(v249 ^ (v249 >> 4) ^ (v249 >> 1) ^ 0xD5F7A441, 16);
  *(v14 + 317) = BYTE2(v251);
  *(v14 + 389) = BYTE1(v240);
  *(v14 + 318) = BYTE1(v251);
  v252 = *(v14 + 321) ^ 0x3ALL;
  *(v14 + 390) = v240;
  v253 = BYTE3(v240);
  STACK[0x27F0] = v253;
  *(v14 + 387) = v253;
  *(v14 + 319) = v251;
  STACK[0x26F8] = BYTE3(v251);
  *(v14 + 316) = BYTE3(v251);
  LODWORD(v252) = (*(v161 + 4 * v252) - 150430535) ^ ((*(v161 + 4 * v252) - 150430535) >> 4) ^ ((*(v161 + 4 * v252) - 150430535) >> 1) ^ 0x8B582670;
  LODWORD(v253) = *(v161 + 4 * (*(v14 + 323) ^ 0x30)) - 150430535;
  LODWORD(v251) = *(v161 + 4 * (*(v14 + 320) ^ 0x1ALL)) - 150430535;
  LODWORD(v241) = *(v156 + 4 * (*(v14 + 391) ^ 0x6FLL));
  v254 = *(v14 + 393) ^ 0xCDLL;
  LODWORD(v248) = *(v156 + 4 * (*(v14 + 394) ^ 0x96));
  LODWORD(v250) = *(v156 + 4 * (*(v14 + 392) ^ 0xD8)) ^ (16 * (*(v156 + 4 * (*(v14 + 392) ^ 0xD8)) ^ 0xFBEF1DBD)) ^ (8 * (*(v156 + 4 * (*(v14 + 392) ^ 0xD8)) ^ 0xFBEF1DBD)) ^ 0xA9B5F491;
  v255 = *(v14 + 322);
  STACK[0x3CB8] = v255;
  LODWORD(v169) = *(v161 + 4 * (v255 ^ 0x25)) - 150430535;
  HIDWORD(v191) = v252;
  LODWORD(v191) = v252;
  LODWORD(v252) = v191 >> 24;
  LODWORD(STACK[0x1C98]) = v252;
  v256 = v169 ^ (v169 >> 4) ^ (v169 >> 1) ^ v252 ^ __ROR4__(v253 ^ (v253 >> 4) ^ (v253 >> 1) ^ 0xFB4CAEA5, 8) ^ __ROR4__(v251 ^ (v251 >> 4) ^ (v251 >> 1) ^ 0x21B00F61, 16) ^ 0x9632FE47;
  LODWORD(v253) = *(v156 + 4 * v254) ^ (16 * (*(v156 + 4 * v254) ^ 0xFBEF1DBD)) ^ (8 * (*(v156 + 4 * v254) ^ 0xFBEF1DBD)) ^ __ROR4__(v241 ^ (16 * (v241 ^ 0xFBEF1DBD)) ^ (8 * (v241 ^ 0xFBEF1DBD)) ^ 0x315A4235, 16) ^ __ROR4__(v248 ^ 0xBDB1B461 ^ (16 * (v248 ^ 0xFBEF1DBD)) ^ (8 * (v248 ^ 0xFBEF1DBD)), 8) ^ __ROR4__(v250, 24) ^ 0x830DF16E;
  *(v14 + 391) = BYTE3(v253);
  *(v14 + 320) = BYTE3(v256);
  *(v14 + 392) = BYTE2(v253);
  *(v14 + 321) = BYTE2(v256);
  v257 = LODWORD(STACK[0x3E18]) > LODWORD(STACK[0x4DF4]);
  *(v14 + 393) = BYTE1(v253);
  *(v14 + 322) = BYTE1(v256);
  *(v14 + 394) = v253;
  v258 = !v257;
  STACK[0x37E8] = v256;
  *(v14 + 323) = v256;
  return (*(v7 + 8 * ((27 * v258) | v8)))();
}

uint64_t sub_100D5DFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  v6 = (v3 - 1935190282) ^ 0x8CA72040;
  v7 = (v3 - 1935190282) & 0x7358DFBF;
  LODWORD(STACK[0x3B08]) = v7;
  v8 = *(v4 + 8 * (((((v3 - 1935190282) ^ 0x7358C190) + v7) * (v5 & 1)) ^ v3));
  LODWORD(STACK[0x3CF0]) = 40;
  LODWORD(STACK[0x3D88]) = 2;
  STACK[0x3818] = LODWORD(STACK[0x3988]);
  LODWORD(STACK[0x1204]) = STACK[0x39A0];
  STACK[0x2238] = LODWORD(STACK[0x2BB0]);
  LODWORD(STACK[0x1A90]) = STACK[0x3D48];
  LODWORD(STACK[0x28CC]) = STACK[0x3CE8];
  v9 = LODWORD(STACK[0x3998]);
  LODWORD(STACK[0x2134]) = STACK[0x36B8];
  LODWORD(STACK[0x1AA8]) = STACK[0x39A8];
  LODWORD(STACK[0x3858]) = STACK[0x2B40];
  v10 = STACK[0x3820];
  LODWORD(STACK[0x1C28]) = STACK[0x3820];
  LODWORD(STACK[0x1954]) = STACK[0x2B70];
  LODWORD(STACK[0x1A78]) = STACK[0x3268];
  LODWORD(STACK[0x2500]) = v9;
  LODWORD(STACK[0x21F4]) = STACK[0x2B60];
  LODWORD(STACK[0x3810]) = STACK[0x2B28];
  LODWORD(STACK[0x3688]) = STACK[0x2B30];
  LODWORD(STACK[0x3B00]) = STACK[0x2B88];
  LODWORD(STACK[0x3AE8]) = v9;
  LODWORD(STACK[0x3830]) = STACK[0x3D90];
  LODWORD(STACK[0x2A48]) = STACK[0x2B48];
  LODWORD(STACK[0x1C20]) = STACK[0x2B58];
  STACK[0x3420] = LODWORD(STACK[0x2B78]);
  LODWORD(STACK[0x1BA0]) = STACK[0x2B90];
  LODWORD(STACK[0x1BC8]) = STACK[0x39E8];
  LODWORD(STACK[0x183C]) = STACK[0x23B0];
  LODWORD(STACK[0x2630]) = STACK[0x2B50];
  STACK[0x2228] = LODWORD(STACK[0x2B68]);
  STACK[0x3318] = LODWORD(STACK[0x2B98]);
  v11 = STACK[0x438];
  STACK[0x3D40] = STACK[0x438];
  v12 = STACK[0x2618];
  STACK[0x3D78] = STACK[0x2618];
  STACK[0x3B20] = v11;
  STACK[0x3B18] = v12;
  LODWORD(STACK[0x3AE0]) = v10;
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v8(v10, v6, a3, v10, 11, v9);
}

uint64_t sub_100D5E1AC()
{
  LODWORD(STACK[0x3850]) = 0;
  LODWORD(STACK[0x3840]) = 0;
  LODWORD(STACK[0x3250]) = 0;
  LODWORD(STACK[0x32B0]) = 0;
  LODWORD(STACK[0x3258]) = 0;
  LODWORD(STACK[0x2BD0]) = 0;
  LODWORD(STACK[0x2BD8]) = 0;
  LODWORD(STACK[0x3260]) = 0;
  LODWORD(STACK[0x2BE0]) = 0;
  LODWORD(STACK[0x2BE8]) = 0;
  LODWORD(STACK[0x3848]) = 0;
  LODWORD(STACK[0x32B8]) = 0;
  LODWORD(STACK[0x3270]) = 0;
  LODWORD(STACK[0x2BF0]) = 0;
  LODWORD(STACK[0x2BF8]) = 0;
  LODWORD(STACK[0x3278]) = 0;
  LODWORD(STACK[0x2C00]) = 0;
  LODWORD(STACK[0x2C08]) = 0;
  LODWORD(STACK[0x3818]) = 0;
  LODWORD(STACK[0x3280]) = 0;
  LODWORD(STACK[0x2C10]) = 0;
  LODWORD(STACK[0x2F60]) = 0;
  LODWORD(STACK[0x3288]) = 0;
  LODWORD(STACK[0x3228]) = 0;
  LODWORD(STACK[0x3230]) = 0;
  LODWORD(STACK[0x2BC8]) = 0;
  v3 = *(v1 + 8 * (((((v0 + 396240888) & 0xE861F6DE) + 11349) * (LODWORD(STACK[0x2C20]) != 40)) ^ v0));
  LODWORD(STACK[0x3D68]) = v0 + 7895;
  v4 = STACK[0x3710];
  LODWORD(STACK[0x3E18]) = STACK[0x3710];
  LODWORD(STACK[0x3B08]) = v4;
  v5 = STACK[0x3540];
  LODWORD(STACK[0x3808]) = STACK[0x3540];
  LODWORD(STACK[0x32D8]) = v5;
  LODWORD(STACK[0x3D40]) = v2;
  LODWORD(STACK[0x3860]) = v2;
  LODWORD(v5) = STACK[0x3810];
  LODWORD(STACK[0x3B00]) = STACK[0x3810];
  LODWORD(STACK[0x3D80]) = v5;
  LODWORD(STACK[0x3AD8]) = 26;
  LODWORD(STACK[0x3D78]) = 1;
  STACK[0x3D58] = STACK[0x2618];
  STACK[0x3D50] = STACK[0x3430];
  LODWORD(STACK[0x3B18]) = STACK[0x39A8];
  LODWORD(STACK[0x3D28]) = STACK[0x2424];
  LODWORD(STACK[0x3AE8]) = STACK[0x31E8];
  LODWORD(STACK[0x3AF0]) = STACK[0x2500];
  LODWORD(STACK[0x3D10]) = STACK[0x3318];
  LODWORD(STACK[0x3310]) = STACK[0x3774];
  LODWORD(STACK[0x3308]) = STACK[0x36A8];
  LODWORD(STACK[0x3300]) = STACK[0x3DD8];
  LODWORD(STACK[0x3820]) = 1;
  LODWORD(STACK[0x3290]) = 1;
  LODWORD(STACK[0x3830]) = 1;
  LODWORD(STACK[0x3298]) = 1;
  LODWORD(STACK[0x32A0]) = 1;
  LODWORD(STACK[0x32A8]) = 1;
  LODWORD(STACK[0x3248]) = 1;
  LODWORD(STACK[0x2B98]) = 1;
  LODWORD(STACK[0x2BA0]) = 1;
  LODWORD(STACK[0x2BA8]) = 1;
  LODWORD(STACK[0x39F0]) = STACK[0x3AE0];
  LODWORD(STACK[0x32E0]) = STACK[0x3688];
  LODWORD(STACK[0x2C20]) = 41;
  LODWORD(STACK[0x3A28]) = STACK[0x1188];
  return v3();
}

uint64_t sub_100D5E3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, unint64_t a55)
{
  LODWORD(STACK[0x3850]) = 0;
  LODWORD(STACK[0x3840]) = 0;
  LODWORD(STACK[0x3830]) = 0;
  LODWORD(STACK[0x3848]) = 0;
  v58 = STACK[0x37B8];
  if (LODWORD(STACK[0x128C]) == 2)
  {
    v58 = v57;
  }

  else
  {
    v58 = v58;
  }

  STACK[0x37B8] = v58;
  v59 = *(v56 + 8 * ((v55 ^ 0x1CC) + 6056));
  LODWORD(STACK[0x3D80]) = 5;
  LODWORD(STACK[0x3E18]) = 1;
  v60 = STACK[0x39E8];
  STACK[0x920] = a55;
  STACK[0x478] = STACK[0x1160];
  LODWORD(STACK[0x39F0]) = 1;
  LODWORD(STACK[0x3818]) = 1;
  LODWORD(STACK[0x3A28]) = 1;
  LODWORD(STACK[0x3820]) = 1;
  LODWORD(STACK[0x1BE0]) = STACK[0x351C];
  v61 = STACK[0x268C];
  STACK[0x1B40] = LODWORD(STACK[0x268C]);
  v62 = LODWORD(STACK[0x39A0]);
  LODWORD(STACK[0x3810]) = v61;
  return v59(0, v60, 0, v62, a5, a54);
}

uint64_t sub_100D5E4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x2AC8]) = 0;
  LODWORD(STACK[0x2AB0]) = 0;
  LODWORD(STACK[0x2AA8]) = 0;
  LODWORD(STACK[0x2AF0]) = 0;
  LODWORD(STACK[0x2B00]) = 0;
  LODWORD(STACK[0x2AE8]) = 0;
  LODWORD(STACK[0x2AE0]) = 0;
  LODWORD(STACK[0x2B18]) = 0;
  LODWORD(STACK[0x2B08]) = 0;
  LODWORD(STACK[0x8E8]) = 0;
  LODWORD(STACK[0x850]) = 0;
  LODWORD(STACK[0x858]) = 0;
  LODWORD(STACK[0x2AC0]) = 0;
  LODWORD(STACK[0x8F0]) = 0;
  LODWORD(STACK[0x860]) = 0;
  LODWORD(STACK[0x868]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x870]) = 0;
  LODWORD(STACK[0x878]) = 0;
  LODWORD(STACK[0x2B10]) = 0;
  LODWORD(STACK[0x2AD0]) = 0;
  LODWORD(STACK[0x880]) = 0;
  LODWORD(STACK[0x888]) = 0;
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x890]) = 0;
  LODWORD(STACK[0x898]) = 0;
  LODWORD(STACK[0x2AD8]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8A0]) = 0;
  LODWORD(STACK[0x8A8]) = 0;
  LODWORD(STACK[0x910]) = 0;
  LODWORD(STACK[0x8B0]) = 0;
  LODWORD(STACK[0x8B8]) = 0;
  STACK[0x3D90] = 0;
  LODWORD(STACK[0x32D0]) = 0;
  v8 = v6 ^ 0x4960u;
  STACK[0x3AF0] = v8;
  LODWORD(STACK[0x3B08]) = v6 + 13984;
  v9 = *(v7 + 8 * ((1634 * (STACK[0x2238] == ((v6 + 13984) ^ v8 ^ 0x1E))) ^ v6));
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  v10 = STACK[0x1C28];
  LODWORD(STACK[0x2B88]) = STACK[0x1C28];
  LODWORD(STACK[0x3438]) = v10;
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  v11 = STACK[0x1954];
  LODWORD(STACK[0x2B70]) = STACK[0x1954];
  LODWORD(STACK[0x3280]) = v11;
  v12 = STACK[0x32E8];
  LODWORD(STACK[0x2B60]) = STACK[0x32E8];
  LODWORD(STACK[0x3488]) = v12;
  LODWORD(STACK[0x3B00]) = v12;
  LODWORD(STACK[0x3290]) = v12;
  v13 = STACK[0x1A78];
  LODWORD(STACK[0x3268]) = STACK[0x1A78];
  LODWORD(STACK[0x3288]) = v13;
  v14 = STACK[0x2500];
  LODWORD(STACK[0x2B40]) = STACK[0x2500];
  LODWORD(STACK[0x3998]) = v14;
  LODWORD(STACK[0x3AE8]) = v14;
  v15 = STACK[0x21F4];
  LODWORD(STACK[0x3298]) = STACK[0x21F4];
  LODWORD(STACK[0x3AE0]) = v15;
  v16 = STACK[0x3810];
  LODWORD(STACK[0x2B28]) = STACK[0x3810];
  LODWORD(STACK[0x3260]) = v16;
  v17 = STACK[0x3318];
  LODWORD(STACK[0x2B98]) = STACK[0x3318];
  LODWORD(STACK[0x3278]) = v17;
  LODWORD(STACK[0x3980]) = 42;
  LODWORD(STACK[0x2BB0]) = 30;
  LODWORD(STACK[0x3988]) = 27;
  v18 = STACK[0x3E0];
  v19 = STACK[0x2928];
  STACK[0x3D78] = STACK[0x2928];
  LODWORD(STACK[0x3D30]) = 1;
  LODWORD(STACK[0x3D38]) = 1;
  LODWORD(STACK[0x3D58]) = 1;
  LODWORD(STACK[0x3D28]) = 1;
  LODWORD(STACK[0x3D70]) = 1;
  LODWORD(STACK[0x2B80]) = 1;
  LODWORD(STACK[0x3B18]) = 1;
  LODWORD(STACK[0x3D40]) = 1;
  LODWORD(STACK[0x3D20]) = 1;
  LODWORD(STACK[0x32C8]) = 1;
  LODWORD(STACK[0x32A0]) = 1;
  LODWORD(STACK[0x32A8]) = 1;
  LODWORD(STACK[0x3B20]) = 1;
  LODWORD(STACK[0x32B0]) = 1;
  LODWORD(STACK[0x32B8]) = 1;
  LODWORD(STACK[0x918]) = 1;
  LODWORD(STACK[0x3CF0]) = 1;
  LODWORD(STACK[0x32C0]) = 1;
  LODWORD(STACK[0x800]) = 1;
  LODWORD(STACK[0x8C0]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x810]) = 1;
  LODWORD(STACK[0x2AF8]) = 1;
  LODWORD(STACK[0x2A90]) = 1;
  LODWORD(STACK[0x8C8]) = 1;
  LODWORD(STACK[0x818]) = 1;
  LODWORD(STACK[0x820]) = 1;
  LODWORD(STACK[0x8D0]) = 1;
  LODWORD(STACK[0x828]) = 1;
  LODWORD(STACK[0x830]) = 1;
  LODWORD(STACK[0x2A98]) = 1;
  LODWORD(STACK[0x8D8]) = 1;
  LODWORD(STACK[0x7F8]) = 1;
  LODWORD(STACK[0x838]) = 1;
  LODWORD(STACK[0x2AA0]) = 1;
  LODWORD(STACK[0x8E0]) = 1;
  LODWORD(STACK[0x840]) = 1;
  LODWORD(STACK[0x848]) = 1;
  LODWORD(STACK[0x39A0]) = STACK[0x1204];
  LODWORD(STACK[0x3D48]) = STACK[0x1A90];
  LODWORD(STACK[0x3CE8]) = STACK[0x28CC];
  LODWORD(STACK[0x36B8]) = STACK[0x2134];
  LODWORD(STACK[0x2B30]) = STACK[0x3688];
  LODWORD(STACK[0x39E8]) = STACK[0x1BC8];
  STACK[0x32E0] = v19;
  STACK[0x3D50] = STACK[0x438];
  STACK[0x3AD8] = v18;
  STACK[0x32D8] = STACK[0x2618];
  LODWORD(STACK[0x3270]) = STACK[0x2B20];
  LODWORD(STACK[0x3258]) = STACK[0x2424];
  return v9(a1, 0, a3, v18, a5, a6, v17);
}

uint64_t sub_100D5E764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W8>)
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  v4 = 846 * (a3 ^ 0x54EBu);
  v5 = (STACK[0x840] & 1) == 0;
  if (STACK[0x840])
  {
    v6 = STACK[0x438];
  }

  else
  {
    v6 = STACK[0x3E0];
  }

  if (STACK[0x840])
  {
    v7 = 34;
  }

  else
  {
    v7 = 35;
  }

  LODWORD(STACK[0x3CF0]) = v7;
  v8 = STACK[0x3820];
  v9 = STACK[0x2B88];
  if (v5)
  {
    v9 = STACK[0x3820];
  }

  LODWORD(STACK[0x3B00]) = v9;
  v10 = STACK[0x2B60];
  if (!v5)
  {
    v10 = v8;
  }

  LODWORD(STACK[0x3AE0]) = v10;
  v11 = *(v3 + 8 * a3);
  LODWORD(STACK[0x3D88]) = 2;
  v12 = STACK[0x2618];
  STACK[0x3D78] = STACK[0x2618];
  STACK[0x3B20] = v6;
  STACK[0x3B18] = v12;
  STACK[0x3D40] = v6;
  STACK[0x3818] = LODWORD(STACK[0x3988]);
  LODWORD(STACK[0x1204]) = STACK[0x39A0];
  LODWORD(STACK[0x2134]) = STACK[0x36B8];
  LODWORD(STACK[0x3688]) = STACK[0x2B30];
  LODWORD(STACK[0x3858]) = STACK[0x2B40];
  LODWORD(STACK[0x1954]) = STACK[0x2B70];
  LODWORD(STACK[0x1A78]) = STACK[0x3268];
  LODWORD(STACK[0x3AE8]) = STACK[0x3998];
  LODWORD(STACK[0x3810]) = STACK[0x2B28];
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v11(a1, v4, a2, v8);
}

uint64_t sub_100D5E938@<X0>(int a1@<W8>)
{
  v5 = *(STACK[0x3EE0] + v3);
  v6 = *v2;
  STACK[0x3B80] = v5 ^ v6;
  *v2 = v5 ^ v6;
  return (*(v4 + 8 * ((16259 * (v1 == 0)) ^ a1)))();
}

uint64_t sub_100D5E978()
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  v2 = *(v1 + 8 * (((((v0 + 8810) ^ 0x292) + ((v0 + 8810) | 0x292) - 42236) * (STACK[0x878] & 1)) | (v0 + 15096)));
  LODWORD(STACK[0x3CF0]) = 20;
  LODWORD(STACK[0x3D88]) = 2;
  v3 = STACK[0x438];
  STACK[0x3D40] = STACK[0x438];
  v4 = STACK[0x2618];
  STACK[0x3D78] = STACK[0x2618];
  STACK[0x3B20] = v3;
  STACK[0x3B18] = v4;
  STACK[0x3818] = LODWORD(STACK[0x3988]);
  LODWORD(STACK[0x1204]) = STACK[0x39A0];
  LODWORD(STACK[0x2134]) = STACK[0x36B8];
  v5 = STACK[0x3820];
  LODWORD(STACK[0x3688]) = STACK[0x2B30];
  LODWORD(STACK[0x3858]) = STACK[0x2B40];
  LODWORD(STACK[0x3B00]) = STACK[0x2B88];
  LODWORD(STACK[0x1954]) = STACK[0x2B70];
  LODWORD(STACK[0x1A78]) = STACK[0x3268];
  LODWORD(STACK[0x3AE8]) = STACK[0x3998];
  LODWORD(STACK[0x3AE0]) = v5;
  LODWORD(STACK[0x3810]) = STACK[0x2B28];
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v2();
}

uint64_t sub_100D5EAFC()
{
  v2 = *(v1 + 8 * (v0 - 503373341));
  LODWORD(STACK[0x690]) = v0 - 503373481;
  return v2();
}

uint64_t sub_100D5EB20@<X0>(int a1@<W8>)
{
  v3 = STACK[0xCF0];
  v4 = *STACK[0x5E0];
  v5 = STACK[0xAB0];
  v6 = &STACK[0x1D80] + STACK[0xAB0];
  STACK[0x1750] = v6;
  STACK[0xF98] = (v6 + 16);
  STACK[0xAB0] = ((a1 - 134900913) & 0xBFDAA3FD ^ (v1 + 16)) + v5;
  STACK[0xC40] = 0x683CBC57EAB92A3ELL;
  STACK[0x14A8] = 0;
  LODWORD(STACK[0x1484]) = -769884012;
  STACK[0xF10] = 0;
  LODWORD(STACK[0x9E0]) = -769884012;
  STACK[0xAA8] = v4;
  v8 = v4 == 0x79CEC8CF5A6FCEBALL || v3 == 0;
  return (*(v2 + 8 * (((4 * v8) | (8 * v8)) ^ a1)))();
}

uint64_t sub_100D5ECAC@<X0>(int a1@<W6>, int a2@<W8>)
{
  v4 = STACK[0x5E0];
  *(v4 + 248) = 0;
  *(v4 + 256) = -769884012;
  *(v4 + 260) = v2;
  return (*(v3 + 8 * (a2 ^ 0xB7D09682 ^ a2 ^ (a1 + 1040))))();
}

uint64_t sub_100D5ECEC@<X0>(int a1@<W3>, int a2@<W8>)
{
  v4 = *(v2 + 68) + a1;
  *(v2 + 68) = v4;
  return (*(v3 + 8 * ((119 * ((((((v4 | a1) - v4) | (a1 | ~v4) & (v4 - a1)) >> ((a2 + 9) ^ 0x4E ^ (a2 - 38))) & 1) == 0)) ^ a2)))();
}

uint64_t sub_100D5ED5C()
{
  v2 = *(*STACK[0x3E40] + (STACK[0x1418] & *v0));
  v3 = (v2 + STACK[0x1690]) ^ 0xC2AF3EAA3FF1B8E4;
  v4 = v3 ^ __ROR8__(v2, 61);
  v5 = (__ROR8__(v3, 8) + v4) ^ 0x65F254DD188DB4FCLL;
  v6 = v5 ^ __ROR8__(v4, 61);
  v7 = __ROR8__(v5, 8);
  v8 = (0x3A00096C13F6E43ELL - ((v7 + v6) | 0x3A00096C13F6E43ELL) + ((v7 + v6) | 0xC5FFF693EC091BC1)) ^ 0xAA0FB0058D10094CLL;
  v9 = v8 ^ __ROR8__(v6, 61);
  v10 = __ROR8__(v8, 8);
  v11 = (((2 * (v10 + v9)) | 0x105455AF012DAD5ALL) - (v10 + v9) + 0x77D5D5287F692953) ^ 0x2998B71257E0C586;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xEF042041F5E548ECLL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xD8C7B31FCA19D9DELL;
  v16 = __ROR8__(v15, 8);
  v17 = v15 ^ __ROR8__(v14, 61);
  v18 = (v16 + v17 - ((2 * (v16 + v17)) & 0x3E14439763B88AB6) + 0x1F0A21CBB1DC455BLL) ^ 0x4B5F20E53B6D86D4;
  LOBYTE(v17) = (((__ROR8__(v18, 8) + (v18 ^ __ROR8__(v17, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> STACK[0x1678]) ^ LOBYTE(STACK[0x3F17]);
  LOBYTE(v17) = (((v17 ^ 2) + 99) ^ ((v17 ^ 0x1A) + 123) ^ ((v17 ^ 0x18) + 121)) - 58;
  LODWORD(STACK[0x4244]) = LODWORD(STACK[0x4230]) - LODWORD(STACK[0x4234]);
  v19 = STACK[0x37D0] + (v17 - 44 * ((187 * v17) >> 13));
  STACK[0x4248] = v19;
  v20 = *(v1 + 8 * (LODWORD(STACK[0x28B8]) ^ 0x5402));
  STACK[0x3F18] = v19;
  STACK[0x3F08] = v20;
  return (*(v1 + 8 * (STACK[0x3C30] ^ 0x52C8)))();
}

uint64_t sub_100D5EFA8@<X0>(int a1@<W8>)
{
  v4 = STACK[0x3D18];
  *(v4 + 130) = bswap32(v1) >> 16;
  v5 = STACK[0x3E18];
  *(v4 + 129) = v1 >> (a1 ^ 0xF9);
  *(v4 + 128) = HIBYTE(v1);
  return (*(v3 + 8 * (((4 * (v2 < v5)) | ((v2 < v5) << 14)) ^ a1)))();
}

uint64_t sub_100D5EFF8@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  *(*(a1 + 96) + 680) = 64;
  *(*(a1 + 96) + 684) = 1172461588;
  *(*(a1 + 96) + 688) = *(a1 + 96) + 696;
  return (*(v2 + 8 * ((464 * (a2 + v3 - 85585254 + ((a2 - 24793) | 0x2165) > 0xFFFFFEFE)) ^ a2)))();
}

uint64_t sub_100D5F068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v38 = *(a31 + v32);
  *(v31 + v32) = v38;
  return (*(v37 + 8 * (((v38 == ((v33 + v35) ^ 4)) * ((v33 + v34) ^ v36)) ^ v33)))();
}

uint64_t sub_100D5F810@<X0>(int a1@<W1>, int a2@<W8>)
{
  v4 = *(v2 + 8 * (a1 - 2734));
  LODWORD(STACK[0x36B8]) = a2;
  return v4(v3);
}

uint64_t sub_100D5F844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  LODWORD(STACK[0x3D78]) = 0;
  LODWORD(STACK[0x3D88]) = 0;
  LODWORD(STACK[0x3D50]) = 0;
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D98]) = 0;
  STACK[0x3B08] = HIDWORD(a6);
  v8 = *(v7 + 8 * (v6 - 8481));
  LODWORD(STACK[0x3D70]) = 1;
  LODWORD(STACK[0x3E18]) = 1;
  LODWORD(STACK[0x1A68]) = a6;
  return v8(a1, a2, a3, (v6 + 7878));
}

uint64_t sub_100D5F9B0()
{
  v1 = STACK[0x3384];
  v2 = LODWORD(STACK[0x3384]) ^ 0x2AA2;
  STACK[0x3DC8] = (3525 * v2);
  v3 = (*(v0 + 8 * (v1 ^ 0x569A)))(16);
  STACK[0x3E48] = v3;
  STACK[0x3D58] = v3;
  return (*(v0 + 8 * (((v3 == 0) * ((v2 + 21215) ^ STACK[0x3DC8])) ^ v1)))();
}

uint64_t sub_100D5FA64@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X5>, int a4@<W6>, int a5@<W7>, int a6@<W8>)
{
  v17 = a4 ^ v14 ^ v6;
  v18 = v10 ^ *(*(a3 + 8 * v9) + 4 * (v17 ^ v8) - 8);
  HIDWORD(v19) = a1 ^ (v13 + v18 - (v11 & (2 * v18)) + v12);
  LODWORD(v19) = HIDWORD(v19);
  *(v15 + 4 * v6) = a5 ^ v17 ^ ((v19 >> 21) << 21) ^ ((v19 >> 21) >> 11) ^ a2;
  return (*(v16 + 8 * (a6 ^ (4 * (v7 != 0)))))();
}

uint64_t sub_100D5FB34@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *(a2 + 4);
  *(v2 + 4) = v4 + 1;
  STACK[0x39C0] = ((223 * (a1 ^ 0x2894)) ^ 0x4312) + STACK[0x39C0];
  return (*(v3 + 8 * (((v4 != -1) | (32 * (v4 != -1))) ^ a1)))();
}

uint64_t sub_100D5FBA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>)
{
  v8 = *(v7 + 8 * (a7 + 2622));
  LODWORD(STACK[0x3980]) = 31;
  LODWORD(STACK[0x3B08]) = a7;
  v9 = STACK[0x438];
  STACK[0x32E0] = STACK[0x438];
  STACK[0x3D50] = v9;
  STACK[0x3AD8] = v9;
  STACK[0x32D8] = STACK[0x2618];
  v10 = STACK[0x3318];
  LODWORD(STACK[0x3278]) = STACK[0x3318];
  v11 = STACK[0x21F4];
  LODWORD(STACK[0x3298]) = STACK[0x21F4];
  LODWORD(STACK[0x3270]) = STACK[0x2B20];
  LODWORD(STACK[0x39A8]) = STACK[0x1AA8];
  LODWORD(STACK[0x3B00]) = STACK[0x32E8];
  LODWORD(STACK[0x3280]) = STACK[0x1954];
  LODWORD(STACK[0x3290]) = v11;
  LODWORD(STACK[0x3258]) = STACK[0x2424];
  LODWORD(STACK[0x32D0]) = STACK[0x3830];
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  LODWORD(STACK[0x3288]) = STACK[0x1A78];
  LODWORD(STACK[0x3AE8]) = STACK[0x3E18];
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x3AE0]) = v11;
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x3260]) = STACK[0x3810];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  return v8(a1, a2, a3, a4, a5, a6, v10);
}

uint64_t sub_100D5FCAC@<X0>(const char *a1@<X8>, int8x16_t a2@<Q0>)
{
  v31 = vld4q_s8(a1);
  v5 = veorq_s8(v31.val[0], a2);
  v6 = vmovl_high_u8(v5);
  v7 = vmovl_high_u16(v6);
  v8 = vmovl_u8(*v5.i8);
  v9 = vmovl_high_u16(v8);
  v10 = veorq_s8(v31.val[1], a2);
  v11 = vmovl_u8(*v10.i8);
  v12 = vmovl_high_u8(v10);
  v13 = vorrq_s8(vshll_n_u16(*v11.i8, 8uLL), vmovl_u16(*v8.i8));
  v14 = vorrq_s8(vshll_high_n_u16(v11, 8uLL), v9);
  v15 = vorrq_s8(vshll_n_u16(*v12.i8, 8uLL), vmovl_u16(*v6.i8));
  v16 = vorrq_s8(vshll_high_n_u16(v12, 8uLL), v7);
  v17 = veorq_s8(v31.val[2], a2);
  _Q22 = vmovl_high_u8(v17);
  _Q21 = vmovl_u8(*v17.i8);
  v20 = vshll_n_s16(*_Q21.i8, 0x10uLL);
  __asm { SHLL2           V21.4S, V21.8H, #0x10 }

  v25 = vshll_n_s16(*_Q22.i8, 0x10uLL);
  __asm { SHLL2           V22.4S, V22.8H, #0x10 }

  v26 = vorrq_s8(v14, _Q21);
  v31.val[0] = veorq_s8(v31.val[3], a2);
  v31.val[1] = vmovl_high_u8(v31.val[0]);
  v31.val[0] = vmovl_u8(*v31.val[0].i8);
  v27 = vdupq_n_s32(0x507E0E4Au);
  v31.val[2] = veorq_s8(vshlq_n_s32(vmovl_high_u16(v31.val[1]), 0x18uLL), v27);
  v31.val[1] = veorq_s8(vshlq_n_s32(vmovl_u16(*v31.val[1].i8), 0x18uLL), v27);
  v31.val[3] = veorq_s8(vshlq_n_s32(vmovl_high_u16(v31.val[0]), 0x18uLL), v27);
  v31.val[0] = veorq_s8(vshlq_n_s32(vmovl_u16(*v31.val[0].i8), 0x18uLL), v27);
  v28 = vdupq_n_s32(0x81F1B5u);
  v29 = vbslq_s8(vorrq_s8(v15, v25), v28, v31.val[1]);
  v31.val[1] = vdupq_n_s32(0xFFB41634);
  *v4 = veorq_s8(vbslq_s8(vorrq_s8(v13, v20), v28, v31.val[0]), v31.val[1]);
  v4[1] = veorq_s8(vbslq_s8(v26, v28, v31.val[3]), v31.val[1]);
  v4[2] = veorq_s8(v29, v31.val[1]);
  v4[3] = veorq_s8(vbslq_s8(vorrq_s8(v16, _Q22), v28, v31.val[2]), v31.val[1]);
  return (*(v3 + 8 * (v2 ^ 0xE70F9A0 ^ (15984 * (v2 != 522834597)))))();
}

uint64_t sub_100D60074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = STACK[0x3D18] + (STACK[0x3D08] << 16);
  LODWORD(STACK[0x3DC8]) = v4 + 1;
  v8 = STACK[0x3D20] + (STACK[0x3D00] << 32);
  v9 = (v6 << 8) + (STACK[0x3DB0] << 16) + STACK[0x3CF8] + (a3 << 32);
  v10 = STACK[0x3DE0];
  v11 = STACK[0x3DF0];
  v12 = (STACK[0x3E08] << 8) + (STACK[0x3E18] << 16) + (STACK[0x3DE8] << 32) + (STACK[0x3D68] << 24);
  v13 = (STACK[0x3DD8] << 48) + (STACK[0x3E38] << 40);
  v14 = v7 + (STACK[0x3DF8] << 40) + (STACK[0x3DA0] << 8) + (STACK[0x3D50] << 32);
  v15 = (STACK[0x3D58] << 8) + (STACK[0x3D60] << 16);
  v16 = (LODWORD(STACK[0x3E00]) - 3) ^ 0xD1;
  v17 = (STACK[0x3D10] | (STACK[0x3D40] << 16)) + (STACK[0x3D30] << 8) + (STACK[0x3D38] << 32) + (STACK[0x3D48] << 24);
  v18 = *(&off_101353600 + SLODWORD(STACK[0x3CF0]));
  STACK[0x3E00] = v18;
  LOBYTE(v16) = *(v18 - 3 + v16);
  STACK[0x3E08] = v18 - 3;
  v19 = (v12 + STACK[0x3E10]) ^ v13;
  LOBYTE(v13) = *(v18 - 3 + (((2 - v3) & 0x36 | (v3 - 3) & 0xC9u) ^ 0xE7));
  v20 = v19 + (STACK[0x3D70] << 56);
  v21 = LODWORD(STACK[0x3E30]);
  v22 = ((v14 + (STACK[0x3D80] << 24)) | (STACK[0x3D90] << 48)) + (STACK[0x3DA8] << 56);
  v23 = STACK[0x3DB8];
  v24 = (v23 ^ 0xFFFFFF93) - (v23 ^ 5);
  v25 = ((STACK[0x3D78] << 40) + (STACK[0x3D88] << 48)) ^ (STACK[0x3D28] << 56);
  v26 = v9 + (((((-65 * v16) ^ 0xC2) >> 3) | (32 * ((-65 * v16) ^ 0xC2))) << 24);
  v27 = STACK[0x3DD0] << 56;
  v28 = __ROR8__((((v8 + v15 + (STACK[0x3D98] << 24)) >> (v24 & 0x34) >> (v24 & 0x34 ^ 0x34u)) + ((v8 + v15 + (STACK[0x3D98] << 24)) << 12)) ^ (STACK[0x3DC0] << 52) ^ 0xCB9D0E558F134B03, 12);
  v29 = STACK[0x3DB8] ^ 0x13;
  STACK[0x3E10] = v18 + 773;
  v30 = ((v11 << 48) | (v10 << 40)) ^ v26;
  v31 = (35 * (((((v23 ^ 5) - (v23 ^ 0xFFFFFF93)) ^ v24 ^ (-117 - (((v23 ^ 5) - (v23 ^ 0xFFFFFF93)) ^ 0xFFFFFF8B))) - 117) ^ *(v18 + 773 + v29))) << 56;
  v32 = v30 + v31 - 2 * (v30 & v31);
  v33 = v22 + 0x188DA8F2AF77AB90 - ((2 * v22) & 0x311B51E55EEF5720);
  v34 = (v27 | (((((-65 * v13) ^ 0xC2) >> 3) | (32 * ((-65 * v13) ^ 0xC2))) << 48)) ^ v28 ^ 0xB03CB9D0E558F134;
  v35 = v33 ^ 0x307D2E52AF03F00ELL ^ v34;
  v36 = v32 ^ v21;
  v37 = v32 ^ v21 ^ v20;
  v38 = v25 ^ v17 ^ v34;
  v39 = -v35 ^ v35 ^ __ROR8__(__ROR8__(v35, 11) ^ 0x2C920299971DC66, 53);
  v40 = v37 ^ 0x2553FD07FAF7CAC1;
  v41 = v38 ^ 0x307D2E52AF03F00ELL;
  v42 = 2048;
  if ((v38 & 0x800) != 0)
  {
    v42 = -2048;
  }

  v43 = (v42 + v41) ^ 0x98F93C59742CB086;
  v44 = v40 ^ v35 & ~v33;
  v45 = v44 ^ 0x2F1DDEDDB4E871E7 ^ ((v44 ^ 0x2F1DDEDDB4E871E7uLL) >> 1);
  v46 = (v36 ^ 0x1EBDF0FC294A6755) & (v38 ^ 0x577BEDF424D0B777) ^ v35;
  v47 = v41 - 0x6706C3A68BD3477ALL - 2 * ((v43 - (v38 & 0x10)) ^ (v41 & 0x6706C3A68BD34769 | 0x18F93C59742CB886));
  v48 = (v44 ^ 0x2F1DDEDDB4E871E7) << 63;
  v49 = (v45 & 0xE1402CC358BF07ELL | v48 & v44) ^ __ROR8__(v44 ^ 0x2F1DDEDDB4E871E7, 6);
  v50 = v40 & (v36 ^ 0xE1420F03D6B598AALL);
  v51 = (v47 ^ v50) + v46 - 2 * ((v47 ^ v50) & v46);
  v52 = v33 ^ 0x624E96FF38ACA7EALL ^ v44 ^ v47 & ((v39 ^ 0x49014CCB8EE33016) - 1);
  *(&v53 + 1) = __ROR8__(v46 ^ 0x80767966D7909204, 38) & 0xFFFFFFFFFC000007;
  *&v53 = (v46 ^ 0x80767966D7909204) << 26;
  v54 = v36 ^ (v37 ^ 0xDAAC02F80508353ELL) & v33;
  v55 = v52 ^ __ROR8__(v52, 10) ^ (v52 >> 17) ^ (v52 << 47);
  v56 = v54 ^ 0x972B4BA5F13440B0 ^ v47 ^ v50;
  v57 = __ROR8__(__ROR8__(v46 ^ 0x80767966D7909204 ^ __ROR8__(v46 ^ 0x80767966D7909204, 7) ^ ((v46 ^ 0x80767966D7909204) >> 41), 61) ^ __ROR8__(v53 >> 33, 31) ^ 0x623092095197184ELL, 3);
  v58 = ((v56 >> 61) & 3 ^ v56 & 0x43FB5B9E6CB9853 | (v56 >> 61) & 4) ^ v56 & 0xFBC04A46193467ACLL;
  v59 = (v58 & 0xA5576B213066A855 ^ (8 * v56) & 0xA5576B213066A850 | (8 * v56) & 0x5AA894DECF9957A8) ^ v58 & 0x5AA894DECF9957AALL;
  v60 = v51 ^ 0x8AEA9E5B6E1396AALL ^ v57 ^ ((v51 ^ 0x8AEA9E5B6E1396AALL) << 36) ^ __ROR8__(v51 ^ 0x8AEA9E5B6E1396AALL, 19) ^ __ROR8__(__ROR8__((v51 >> 28) ^ 0x5B05D0864CA15971, 35) ^ 0xDC411798EB60BA11, 29);
  v61 = (((v56 >> 39) ^ -(v56 >> 39) ^ (v59 - (v59 ^ (v56 >> 39)))) + v59) ^ (v56 << 25);
  v62 = v49 ^ (v45 & 0xF1EBFD33CA740F81 | v48);
  v63 = v55 ^ v57;
  v64 = v61 ^ v62;
  v65 = v61 ^ v62 ^ (__ROR8__(__ROR8__(v55, 31) ^ 0x902D7781FE352175, 33) ^ 0xE56F4537E9443FLL) & (v63 ^ 0xCC4612412A32E309);
  *(&v53 + 1) = ~v65;
  *&v53 = v65;
  v66 = v53 >> 1;
  v67 = v63 ^ 0x33B9EDBED5CD1CF6;
  v68 = v61 & (v60 ^ 0x33B9EDBED5CD1CF6) ^ v63;
  v69 = v68 ^ 0xC57B2848394B2F4;
  v60 ^= 0xCC4612412A32E309;
  v70 = v62 & ~v61 ^ v60;
  v71 = v55 ^ 0xF56C8D768DBE09C0 ^ v60 & v67 ^ v65;
  v72 = v68 ^ 0xC57B2848394B2F4 ^ __ROR8__(v68 ^ 0xC57B2848394B2F4, 7) ^ ((v68 ^ 0xC57B2848394B2F4) << 23);
  v73 = v70 ^ v68 ^ __ROR8__(v70 ^ v68 ^ 0xACB85072A8BD7FDELL, 19) ^ ((v70 ^ v68 ^ 0xACB85072A8BD7FDELL) >> 28) ^ ((v70 ^ v68 ^ 0xACB85072A8BD7FDELL) << 36);
  v74 = v61 ^ 0xB2C7E411DCD878DFLL ^ v55 & ~v64 ^ v70;
  v75 = v72 ^ (v69 >> 41);
  v76 = (v65 ^ 0xC48FF0668B028E15) << 58;
  *&v53 = __ROR8__(((v71 & 0x3FF) << 32) ^ __ROR8__((v71 >> (v43 & 0xA) >> (v43 & 0xA ^ 0xA)) ^ v71, 22) ^ 0xE581B0B68070F170, 42);
  v77 = (((v65 ^ 0xC48FF0668B028E15) >> 6) ^ -((v65 ^ 0xC48FF0668B028E15) >> 6) ^ ((v65 ^ 0xA6C80855CE83C91FLL ^ v66) - (v65 ^ 0xA6C80855CE83C91FLL ^ v66 ^ ((v65 ^ 0xC48FF0668B028E15) >> 6)))) + (v65 ^ 0xA6C80855CE83C91FLL ^ v66);
  v78 = (v77 & 0x7B47365D28BD3F39 ^ v76 & 0x7800000000000000 | v76 & 0x87FFFFFFFFFFFFFFLL) ^ v77 & 0x84B8C9A2D742C0C6;
  v79 = ((v53 ^ 0x2DA01C3C5C39606CLL) + (v71 >> 17) - 2 * ((v53 ^ 0x2DA01C3C5C39606CLL) & (v71 >> 17))) ^ (v71 << 47);
  v80 = v74 ^ __ROR8__(v74, 61) ^ (v74 >> 39) ^ (v74 << (v70 & 0x19) << (v70 & 0x19 ^ 0x19));
  v81 = v78 ^ v80;
  v82 = v78 & ~v80;
  v83 = v79 ^ v75;
  v84 = (((v73 ^ 0x5347AF8D57428021) + 1) ^ v73 ^ 0xACB85072A8BD7FDELL ^ (v75 - (v73 ^ 0xACB85072A8BD7FDELL ^ v75))) + v75;
  if (!v11)
  {
    v75 ^= v79;
  }

  v85 = v79 & ~v81;
  v86 = v84 & ~v83;
  v87 = __ROR8__(v79, 26);
  v88 = v75 & ~v79;
  v89 = v82 ^ v84;
  v90 = v80 ^ ~v84;
  v91 = v88 ^ v81;
  v92 = (((v80 | ~v84 | v90) ^ -(v80 | ~v84 | v90) ^ (((v80 | ~v84) & v90) - ((v80 | ~v84) ^ v90))) + ((v80 | ~v84) & v90)) ^ v83;
  v93 = __ROR8__(v87 ^ (v86 << 38) ^ (v86 >> (((v46 ^ 0x80767966D7909204) >> 38) & 2) >> (((v46 ^ 0x80767966D7909204) >> 38) & 2 ^ 0x1A)) ^ 0xF64C550396B58B5, 52) ^ 0xBADE074B78D7CA83;
  v94 = (v92 + v89 - 2 * (v92 & v89)) ^ 0x57004D1FACBBE423;
  v95 = v80 ^ 0x9000E2BDD87911ECLL ^ v89 ^ v85;
  v96 = v91 ^ 0xE0B5FD8498E69A8FLL;
  *(&v97 + 1) = v94 ^ (v94 >> 19);
  *&v97 = v94;
  v98 = v91 ^ __ROR8__(v93, 50) ^ 0x69B429727C914EAALL;
  v99 = v92 ^ 0xA56DF59961F9EB29 ^ __ROR8__(v92 ^ 0xA56DF59961F9EB29, 7) ^ ((v92 ^ 0xA56DF59961F9EB29) >> 41) ^ ((v92 ^ 0xA56DF59961F9EB29) << 23);
  v100 = v99 ^ __ROR8__(v94, 28) ^ __ROR8__(__ROR8__(v94, 13) & 0xFFF800000000003FLL ^ (v97 >> 58) ^ 0x60B5C8AF03DE52E8, 6);
  v101 = v98 ^ (v98 << 47) ^ __ROR8__(v98, 10) ^ (v98 >> (v50 & 0x11) >> (v50 & 0x11 ^ 0x11));
  v102 = __ROR8__(v96, 6) ^ (v96 << 63) ^ ((v96 >> 1) + v96 - 2 * ((v96 >> 1) & v96));
  v103 = (__ROR8__(__ROR8__((v95 ^ (v95 >> 61)) & 0xAAAB5B5D8FED69BELL ^ (8 * v95) & 0xAAAB5B5D8FED69B8, 12) ^ 0xAA442B9C602FDDD3, 52) ^ 0x42B9C602FDDD3AA4 | (v95 ^ (v95 >> 61)) & 0x5554A4A270129641 ^ (8 * v95) & 0x5554A4A270129640) ^ __ROR8__(v95, 39);
  v104 = v103 ^ v102;
  v105 = v101 ^ v99;
  v106 = v101 & ~(v103 ^ v102) ^ v103;
  v107 = (v100 ^ 0x5E7D28DD43F086B4) & v103;
  v108 = v106 & 0x100000;
  v109 = v102 & ~v103;
  v110 = v100 ^ 0xA182D722BC0F794BLL;
  if (!STACK[0x3E38])
  {
    v99 ^= v101;
  }

  v111 = v106 & 0xFFFFFFFFFFEFFFFFLL;
  v112 = v110 & ~v105;
  v113 = v110 ^ v109;
  v114 = v107 ^ v105;
  v115 = v99 & ~v101 ^ v104;
  if ((v113 & v108) != 0)
  {
    v116 = -v108;
  }

  else
  {
    v116 = v108;
  }

  v117 = v116 + v113;
  v118 = v114 ^ v113;
  v119 = v117 ^ v111 ^ 0x10FF6F76662C721BLL;
  v120 = v115 ^ v101 ^ v112;
  v121 = v120 ^ 0xE3F5CDE856EC31F4;
  *(&v123 + 1) = v119;
  *&v123 = v117 ^ v111;
  v122 = v123 >> 61;
  v124 = v114 ^ 0xFE1A666B801A7B6BLL;
  *(&v123 + 1) = v115;
  *&v123 = v115 ^ 0xB5E1BAB0C0767A80;
  v125 = (v120 << 54) ^ 0x7D00000000000000;
  v126 = v121 ^ (v121 >> 10);
  v127 = v125 - (v126 ^ v125);
  v128 = (v123 >> 1) ^ v115 ^ 0xB5E1BAB0C0767A80 ^ ((v115 ^ 0xB5E1BAB0C0767A80) >> 6);
  v129 = v126 ^ -v126;
  *(&v123 + 1) = v118 ^ 0xB075637FF86EDED1;
  *&v123 = v118;
  v130 = v123 >> 19;
  v131 = v122 ^ v119 ^ (v119 >> 39) ^ (v119 << 25);
  *(&v123 + 1) = v129 ^ v127;
  *&v123 = (v129 ^ v127) + v125;
  *&v123 = __ROR8__(__ROR8__(v121, 63) & 0xFFFFFFFFFFFC0001 ^ 0xF6E261F785ACBD5 ^ (v123 >> 46), 18);
  v132 = v123 ^ (v121 << 47);
  v133 = v128 & 0xB178BE77A32676FBLL ^ (v115 << 58) & 0xB000000000000000 | v128 & 0x4E8741885CD98904 ^ (v115 << 58) & 0x4C00000000000000;
  v134 = ((v124 ^ (v124 >> 7) ^ -(v124 ^ (v124 >> 7)) ^ ((v124 << 23) - (v124 ^ (v124 >> 7) ^ (v124 << 23)))) + (v124 << 23)) ^ (v124 >> 41) ^ (v124 << (v123 & 0x39 ^ 0x10) << (v123 & 0x39 ^ 0x29));
  v135 = v134 ^ v132 ^ 0xB2F543DB8987DE16;
  v136 = v118 ^ v130 ^ ((v118 ^ 0xB075637FF86EDED1) >> 28) ^ ((v118 ^ 0xB075637FF86EDED1) << 36) ^ v134;
  v137 = v136 ^ 0x4B02008A0A228200;
  v138 = v136 ^ 0xB0757571540121DCLL;
  v139 = v136 ^ 0xB0757571540121DCLL ^ v133 & ~v131;
  v140 = v134 & (v132 ^ 0x4D0ABC24767821E9) ^ v131 ^ v133;
  v141 = v131 ^ 0x31B470D1354D2C47 ^ (__ROR8__(__ROR8__(v131 ^ v133, 30) ^ 0xF5D25F1EDB2B4865, 34) ^ 0x49352DE6828B6838) & (v132 ^ 0xB2F543DB8987DE16) ^ v139;
  v142 = v132 ^ v140 ^ v138 & ~v135 ^ 0xE1BB26711DBC5844;
  *(&v123 + 1) = v140;
  *&v123 = v140 ^ 0xB42A0101DA2E0940;
  v143 = v123 >> 6;
  v144 = v141 ^ __ROR8__(v141, 61) ^ (v141 >> 39) ^ (v141 << 25);
  v145 = ((v137 & 0xB10041E00C020340 | 0x681E14308520A0) ^ v138 & 0x681E14308520A0 | (v137 & 0x4A17200A42208008 | 0x480800181585C17) ^ v138 & 0x480800181585C17) & v131 ^ v135;
  v146 = v139 ^ 0x77B2656CE098F723 ^ v145;
  v147 = v146 << 36;
  v148 = (v146 >> 28) | (v146 << 45);
  v149 = v144 & 0x10000000000000;
  v150 = v145 ^ 0xFC0FD342612AEF56;
  v151 = (v146 >> 19) + v146 - 2 * ((v146 >> 19) & v146);
  v152 = ((v142 ^ (v142 << 54)) + (v142 >> 10) - 2 * ((v142 >> 10) & v142)) ^ __ROR8__(v142, 17);
  v153 = v150 ^ __ROR8__(v150, 7);
  if ((v147 & v144 & 0x10000000000000) != 0)
  {
    v149 = -v149;
  }

  v154 = v153 ^ (v150 >> 41) ^ (v150 << 23);
  v155 = v148 ^ v147 ^ v151;
  v156 = (v140 ^ 0xB42A0101DA2E0940 ^ ((v140 ^ 0xB42A0101DA2E0940) >> 1)) + (v140 << 63);
  v157 = ((v144 ^ -v144 ^ (((v149 + v147) ^ v144 & 0xFFEFFFFFFFFFFFFFLL) - ((v149 + v147) ^ v144 & 0xFFEFFFFFFFFFFFFFLL ^ v144))) + ((v149 + v147) ^ v144 & 0xFFEFFFFFFFFFFFFFLL)) ^ (v149 + v147) ^ v144 & 0xFFEFFFFFFFFFFFFFLL;
  v158 = v154 ^ v152;
  v159 = v155 ^ v154;
  v160 = v157 & ~(v155 ^ v154) ^ v154 ^ v152;
  v161 = v156 ^ v143;
  v162 = v157 ^ v161;
  v163 = v157 ^ v161 ^ v154 & ~v152;
  v164 = v152 ^ 0xC76FDFB12E63C7F9 ^ ((v155 ^ v152) + (v159 | ~v158) + 1) ^ v163;
  v165 = v163 ^ 0x4ECCF2CB23C9FAB2;
  *(&v167 + 1) = v163;
  *&v167 = v163 ^ 0x4ECCF2CB23C9FAB2;
  v166 = v167 >> 1;
  v168 = v161 & ~v157 ^ v159;
  v169 = &_mh_execute_header + v160;
  if ((v160 & &_mh_execute_header) != 0)
  {
    v169 = (v160 ^ 0xFFFFFFFF00000000) + (HIDWORD(v160) << 33);
  }

  v170 = v169 ^ v168;
  v171 = v170 ^ 0xA3F147020A5D2225;
  v172 = (v170 ^ 0xA3F147020A5D2225) & 0xFFFFFFFFEFFFFFFFLL ^ ((v170 ^ 0xA3F147020A5D2225) << 45);
  v173 = ((v164 ^ (v164 >> 10)) + (v164 << 54) - 2 * ((v164 << 54) & v164)) ^ (v164 >> 17);
  v174 = (v170 ^ 0xA3F147020A5D2225) >> 19;
  v175 = v170 & 0x10000000;
  if ((v174 & v175) != 0)
  {
    v175 = -v175;
  }

  v176 = v172 ^ (v171 >> 28);
  if ((v162 & 0x80000000) == 0)
  {
    v177 = 0x80000000;
  }

  else
  {
    v177 = 0xFFFFFFFF80000000;
  }

  v178 = v157 ^ 0x757ECFD29D953023 ^ v168 ^ ((v177 + v162) ^ 0xFFFFFFFF7FFFFFFFLL) & v152;
  v179 = v176 ^ (v175 + v174);
  v180 = v179 ^ (v171 << 36);
  v181 = v166 ^ v165 ^ (v165 >> 6);
  v182 = v173 ^ (v164 << 47);
  v183 = v160 ^ 0x29FF9B2D20B28786;
  v184 = v178 ^ __ROR8__(v178, 61) ^ (v178 >> 39);
  v185 = v183 ^ __ROR8__(v183, 7) ^ (v183 >> 41);
  v186 = v185 ^ (v183 << 23);
  STACK[0x3D40] = BYTE2(v179);
  STACK[0x3D38] = BYTE4(v180);
  STACK[0x3D30] = BYTE1(v179);
  STACK[0x3D88] = BYTE6(v180);
  v187 = STACK[0x3E00];
  v188 = v184 ^ (v178 << 25);
  LODWORD(v183) = *(STACK[0x3E00] + (v179 ^ 0xC7) + 510) ^ ((v179 ^ 0xFFFFFFDA) - 87) ^ 0xFFFFFFB2;
  STACK[0x3D78] = BYTE5(v180);
  STACK[0x3D10] = (v183 >> 3) | (32 * v183);
  STACK[0x3D48] = BYTE3(v179);
  STACK[0x3DE8] = BYTE4(v181);
  STACK[0x3E18] = BYTE2(v181);
  STACK[0x3DD8] = BYTE6(v181);
  STACK[0x3E38] = BYTE5(v181);
  LODWORD(v179) = *(STACK[0x3E10] + (((v184 ^ (v178 << 25)) >> 24) ^ 0x13));
  v189 = *(STACK[0x3E10] + (((v188 >> 40) ^ 0xFFFFFFF3 | 0xE9) & (BYTE5(v188) ^ 0x13u)));
  STACK[0x3DA0] = BYTE1(v173);
  LODWORD(v178) = *(STACK[0x3E08] + ((BYTE6(v188) - 3) ^ 0xD1));
  v190 = *(v187 + 254 + (HIBYTE(v186) ^ 0xF4));
  STACK[0x3D68] = (v166 ^ v165 ^ (v165 >> 6)) >> 24;
  STACK[0x3DF8] = v182 >> 40;
  v191 = STACK[0x3E20];
  *v191 = v180 ^ 0xD62C6898F853D4B7;
  STACK[0x3E20] = (v191 + 1);
  STACK[0x3DA8] = HIBYTE(v182);
  v192 = v181 ^ (v165 << 58);
  STACK[0x3E08] = BYTE1(v181);
  LODWORD(STACK[0x3DF0]) = (((-65 * v178) ^ 0xC2) >> 3) | (32 * ((-65 * v178) ^ 0xFFFFFFC2));
  STACK[0x3D90] = BYTE6(v182);
  STACK[0x3D28] = HIBYTE(v180);
  STACK[0x3D18] = v173;
  STACK[0x3D08] = BYTE2(v173);
  STACK[0x3D80] = BYTE3(v173);
  STACK[0x3E10] = v192;
  STACK[0x3D70] = HIBYTE(v192);
  LODWORD(STACK[0x3E00]) = 35 * (v179 ^ ((BYTE3(v188) ^ 5) - (BYTE3(v188) ^ 0x93)) ^ 0xFFFFFF8B);
  STACK[0x3D58] = BYTE1(v185);
  STACK[0x3D50] = ((((v182 - (v182 ^ 0x5A76E048)) ^ 0xFFFFFFFFF0) + v173) >> 32);
  STACK[0x3D98] = BYTE3(v186);
  STACK[0x3DC0] = BYTE5(v186);
  STACK[0x3D60] = BYTE2(v186);
  STACK[0x3D20] = v186;
  STACK[0x3D00] = BYTE4(v186);
  LODWORD(v182) = (55 * (LODWORD(STACK[0x3DC8]) != 120)) ^ LODWORD(STACK[0x3E28]);
  LODWORD(STACK[0x3DE0]) = 35 * (v189 ^ ((BYTE5(v188) ^ 5) - ((v188 >> 40) ^ 0x93)) ^ 0xFFFFFF8B);
  v193 = *(v5 + 8 * v182);
  STACK[0x3DD0] = ((v190 >> 3) | (32 * v190)) ^ 0x20;
  STACK[0x3DB0] = BYTE2(v184);
  ++LODWORD(STACK[0x3E30]);
  STACK[0x3CF8] = v188;
  STACK[0x3DB8] = HIBYTE(v188);
  return v193();
}

uint64_t sub_100D612C0@<X0>(int a1@<W8>)
{
  v8 = STACK[0x3E18] ^ 0x760D;
  LODWORD(STACK[0x3798]) = v5 >> 2;
  v9 = v7 ^ LODWORD(STACK[0x3E38]);
  v10 = a1 ^ LODWORD(STACK[0x3E40]);
  v11 = v9 + v4;
  v12 = v3 + v10;
  v13 = a1 ^ 0xB5D890C3;
  v14 = v9 - 1430949625;
  v15 = (v7 ^ 0xB5D890C3 ^ v1) - (v7 ^ 0xB5D890C3);
  v16 = v11 + (v7 ^ 0xB5D890C3);
  v17 = -LODWORD(STACK[0x3858]);
  v18 = (v2 ^ v13) - v13;
  v19 = v15 + v11;
  v20 = v12 + v13;
  v10 -= 1430949625;
  v21 = (v16 ^ v17 ^ LODWORD(STACK[0x3998])) - v20;
  v22 = v18 + v12;
  v23 = v16 ^ v15;
  v24 = v23 + v14;
  LODWORD(STACK[0x3D30]) = v18 ^ ((v14 ^ v17 ^ LODWORD(STACK[0x3998])) - v10) ^ v21;
  v25 = ((v23 + v14) ^ v15) + 744576835;
  v23 -= 1073102972;
  v26 = v24 ^ v19;
  v27 = v20 ^ v18;
  v28 = v27 + v10;
  v29 = ((v27 + v10) ^ v18) + 744576835;
  v30 = (v27 + v10) ^ v22;
  v27 -= 1073102972;
  v31 = (v24 - 1971714744) ^ v23;
  v32 = v26 + v23;
  v33 = (v28 - 1971714744) ^ v27;
  LODWORD(STACK[0x3D50]) = ((v31 ^ LODWORD(STACK[0x3848])) - (v33 ^ -LODWORD(STACK[0x3850]))) ^ v25;
  v23 ^= 0xED7FF8B7;
  v34 = v32 + v23;
  v35 = v34 ^ (v25 - v23);
  v36 = v35 ^ v23;
  v37 = v30 + v27 + (v27 ^ 0xED7FF8B7);
  v38 = STACK[0x3860];
  v39 = -LODWORD(STACK[0x3988]);
  v40 = (v29 - (v27 ^ 0xED7FF8B7)) ^ v37;
  v41 = v40 ^ v27 ^ 0xED7FF8B7;
  v42 = v40 + v33;
  LODWORD(STACK[0x3CE0]) = ((v36 ^ LODWORD(STACK[0x3860]) ^ v39) - v41) ^ v40 ^ (((v35 + v31) ^ LODWORD(STACK[0x3860]) ^ v39) - v42);
  LODWORD(STACK[0x3D48]) = ((v36 ^ v38 ^ (v35 + v31)) - (v41 ^ v39 ^ v42)) ^ v35;
  v43 = -LODWORD(STACK[0x3878]);
  v44 = v35 + v31 - v36;
  v45 = v34 - 432018815 + v36 - v44;
  v46 = (v35 ^ 0x27A84479) + 1327191097;
  v47 = v36 + 687109104 - v46;
  v48 = (v40 ^ 0x27A84479) + 1327191097;
  v49 = v42 - v41;
  v50 = v37 - 432018815 + v41 - v49;
  v51 = v41 + 687109104 - v48;
  v52 = (v47 ^ v43 ^ LODWORD(STACK[0x3980])) - v51;
  v53 = ((v44 - 1011550756) ^ v43 ^ LODWORD(STACK[0x3980])) - (v49 - 1011550756);
  v54 = v47 ^ LODWORD(STACK[0x3980]) ^ (v44 - 1011550756);
  v55 = v51 ^ (v49 - 1011550756);
  v56 = (v44 - 1011550756) ^ v47;
  v44 += 1529585274;
  LODWORD(STACK[0x3D38]) = v53 ^ v48 ^ v52;
  LODWORD(STACK[0x3D28]) = (v54 - (v55 ^ v43)) ^ v46;
  v57 = -LODWORD(STACK[0x3888]);
  v58 = v56 - v44;
  v59 = (v46 ^ 0x4F4853DC) - (v45 ^ 0x4048666F);
  v60 = v44 - v59;
  v49 += 1529585274;
  v61 = v55 - v49;
  v62 = v58 ^ LODWORD(STACK[0x38B0]) ^ v57;
  v50 ^= 0x4048666Fu;
  v63 = (v48 ^ 0x4F4853DC) - v50;
  v64 = v49 - v63;
  v65 = (v60 ^ LODWORD(STACK[0x38B0]) ^ v57) - v64;
  v66 = (v64 + v50) ^ v63;
  LODWORD(STACK[0x3B20]) = ((v58 ^ LODWORD(STACK[0x38B0]) ^ v60) - (v61 ^ v57 ^ v64)) ^ v59;
  LODWORD(STACK[0x3D40]) = (v62 - v61) ^ v63 ^ v65;
  v67 = v61 - 428569008 + v64;
  v68 = v64 - 516952354 - v67;
  v69 = v66 - ((v63 ^ 0x4711BF25) + v67);
  v70 = v67 - v68;
  LODWORD(STACK[0x3E38]) = (v69 + (v63 ^ 0x61BE34F6)) ^ v70;
  LODWORD(STACK[0x3E40]) = (v68 ^ 0xDE9C1097) + v70;
  LODWORD(STACK[0x3CF0]) = v8;
  v71 = *(v6 + 8 * v8);
  STACK[0x3E18] = -63;
  LODWORD(STACK[0x3D20]) = STACK[0x38B8];
  LODWORD(STACK[0x3D10]) = STACK[0x3948];
  return v71();
}

uint64_t sub_100D617B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  v5 = *(v4 + 8 * (v3 - 15143));
  LODWORD(STACK[0x3CF0]) = 31;
  LODWORD(STACK[0x3D88]) = 2;
  v6 = v3;
  v7 = STACK[0x3E0];
  STACK[0x3D40] = STACK[0x3E0];
  v8 = STACK[0x2618];
  STACK[0x3D78] = STACK[0x2618];
  STACK[0x3B20] = v7;
  STACK[0x3B18] = v8;
  STACK[0x3818] = LODWORD(STACK[0x3988]);
  LODWORD(STACK[0x1204]) = STACK[0x39A0];
  LODWORD(STACK[0x2134]) = STACK[0x36B8];
  v9 = STACK[0x3820];
  LODWORD(STACK[0x3688]) = STACK[0x2B30];
  LODWORD(STACK[0x3858]) = STACK[0x2B40];
  LODWORD(STACK[0x3B00]) = v9;
  LODWORD(STACK[0x1954]) = STACK[0x2B70];
  LODWORD(STACK[0x1A78]) = STACK[0x3268];
  LODWORD(STACK[0x3AE8]) = STACK[0x3998];
  LODWORD(STACK[0x3AE0]) = STACK[0x2B60];
  LODWORD(STACK[0x3810]) = STACK[0x2B28];
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v5(a1, v6, a3, v9);
}

uint64_t sub_100D61894()
{
  v2 = *(v1 + 8 * (((LODWORD(STACK[0x3688]) == (((v0 - 12745) | 0x124A) ^ 0x3B6B)) * ((v0 + 3946) ^ 0x6A53)) ^ v0));
  LODWORD(STACK[0x39A8]) = STACK[0x1AA8];
  STACK[0x3700] = LODWORD(STACK[0x1698]);
  STACK[0x3D90] = LODWORD(STACK[0x3830]);
  LODWORD(STACK[0x32E8]) = STACK[0x3E18];
  LODWORD(STACK[0x3688]) = 0;
  return v2();
}

uint64_t sub_100D61944@<X0>(int a1@<W8>)
{
  v3 = v1 - 14096;
  LODWORD(STACK[0x3D58]) = v3;
  v4 = STACK[0x52D8];
  v5 = (*STACK[0x5360] << (((v3 - 30) | 0x14) + 4)) ^ (2 * ((*STACK[0x5360] << (((v3 - 30) | 0x14) + 4)) & STACK[0x52D8]));
  LODWORD(STACK[0x3C90]) = v5;
  v6 = v5 & STACK[0x52AC];
  v7 = STACK[0x52AC];
  LODWORD(STACK[0x3D68]) = STACK[0x52AC];
  v8 = STACK[0x5338];
  STACK[0x3D98] = STACK[0x5338];
  v9 = v6 << v8;
  LODWORD(v8) = STACK[0x52C8];
  v10 = v5 & STACK[0x52C8];
  STACK[0x3C88] = v10;
  v11 = v8;
  v12 = v10 >> STACK[0x5328];
  v13 = STACK[0x5328];
  v14 = LODWORD(STACK[0x70E8]);
  v15 = STACK[0x3660];
  STACK[0x3BF0] = BYTE2(v14);
  v16 = *(v15 + 4 * BYTE2(v14));
  LODWORD(STACK[0x3C18]) = v16;
  STACK[0x3BD8] = v14;
  LODWORD(v10) = *(v15 + 4 * v14);
  STACK[0x3BE0] = v14 >> 24;
  v17 = *(v15 + 4 * (v14 >> 24));
  LODWORD(STACK[0x3C10]) = v17;
  v18 = v14;
  STACK[0x3C08] = v14;
  STACK[0x3BD0] = BYTE1(v14);
  v19 = *(v15 + 4 * BYTE1(v14));
  LODWORD(STACK[0x1778]) = LOBYTE(STACK[0x535C]) - a1;
  HIDWORD(v20) = v19;
  LODWORD(v20) = v19;
  LODWORD(v9) = v12 | v9;
  LODWORD(v12) = STACK[0x7008];
  LODWORD(STACK[0x3C60]) = STACK[0x7008];
  v21 = (v20 >> 16) ^ __ROR4__(v10, 24);
  LODWORD(STACK[0x3C20]) = v21;
  v22 = v21 ^ __ROR4__(v16, 8) ^ v12 ^ v9;
  LODWORD(v9) = STACK[0x536C];
  LODWORD(v12) = STACK[0x71B0];
  LODWORD(STACK[0x3C78]) = STACK[0x71B0];
  LODWORD(v14) = v22 ^ v17;
  v23 = v9 ^ v12;
  v24 = *STACK[0x5370];
  STACK[0x2520] = v24;
  v25 = v14 ^ v23;
  v26 = STACK[0x7060];
  LODWORD(STACK[0x3C00]) = STACK[0x7060];
  v27 = v4;
  LODWORD(v10) = (v24 << 24) ^ (2 * (v4 & (v24 << 24)));
  LODWORD(STACK[0x3BF8]) = v10;
  v28 = STACK[0x5320];
  v29 = v9 ^ v18;
  LODWORD(v9) = v14 ^ v23 ^ v26;
  v30 = STACK[0x52A4];
  v31 = v9 ^ LODWORD(STACK[0x52A4]);
  LODWORD(STACK[0x3C98]) = v31;
  v32 = v31 ^ v29;
  v33 = *(v15 + 4 * BYTE2(v32));
  LODWORD(v24) = ((v10 & v11) >> v13) | ((v10 & v7) << v28);
  LODWORD(v10) = *(v15 + 4 * BYTE1(v32));
  LODWORD(STACK[0x3CC8]) = v14;
  v34 = v14 ^ __ROR4__(v33, 8) ^ __ROR4__(v10, 16) ^ *(v15 + ((v32 >> 22) & 0x3FC)) ^ v24 ^ __ROR4__(*(v15 + 4 * v32), 24);
  v35 = STACK[0x537C];
  LODWORD(STACK[0x3D90]) = STACK[0x537C];
  LODWORD(STACK[0x3B98]) = v25;
  LODWORD(v14) = v25 ^ v35 ^ 0xA6EF0179 ^ v34;
  LODWORD(STACK[0x3D80]) = v34;
  LODWORD(v10) = *STACK[0x5380] << 24;
  LODWORD(STACK[0x3BC0]) = v10;
  v36 = v27;
  LODWORD(v24) = v10 ^ (2 * (v10 & v27));
  v37 = STACK[0x52A8];
  v38 = STACK[0x52CC];
  v39 = (v24 & STACK[0x52CC]) << v28;
  v40 = STACK[0x5350];
  v41 = (v24 & STACK[0x52A8]) >> STACK[0x5350];
  STACK[0x3B78] = v32;
  v42 = v35 ^ v32;
  LODWORD(STACK[0x3AA0]) = v14 ^ v25 ^ v26;
  v43 = v35 ^ v32 ^ 0xA6EF0179 ^ v14 ^ v25 ^ v26;
  LODWORD(v32) = *(v15 + 4 * BYTE2(v43));
  v44 = *(v15 + 4 * v43);
  STACK[0x3D88] = v43;
  LODWORD(v43) = v34 ^ __ROR4__(v32, 8) ^ __ROR4__(v44, 24) ^ *(v15 + ((v43 >> 22) & 0x3FC)) ^ (v41 | v39) ^ __ROR4__(*(v15 + 4 * BYTE1(v43)), 16);
  v45 = STACK[0x52B8];
  LODWORD(v39) = (*STACK[0x5388] << 24) ^ (2 * ((*STACK[0x5388] << 24) & STACK[0x52B8]));
  v46 = STACK[0x52BC];
  v47 = v9 ^ 0xA6EF0179 ^ v43 ^ LODWORD(STACK[0x52BC]);
  LODWORD(STACK[0x3B90]) = v14;
  LODWORD(v9) = v43 ^ v46 ^ v14;
  LODWORD(v41) = STACK[0x52C0];
  v48 = v42 ^ LODWORD(STACK[0x52C0]) ^ v9;
  v49 = *(v15 + 4 * BYTE2(v48));
  v50 = *(v15 + 4 * v48);
  LODWORD(STACK[0x3CB8]) = v43;
  v51 = v43 ^ __ROR4__(v49, 8) ^ __ROR4__(v50, 24);
  LODWORD(v20) = __ROR4__(*(v15 + 4 * BYTE1(v48)), 16);
  v52 = v39 & v38;
  STACK[0x3948] = v52;
  v53 = v11;
  LODWORD(STACK[0x38D0]) = v11;
  STACK[0x3D60] = v13;
  v54 = (v39 & v11) >> v13;
  STACK[0x39E8] = v54;
  LODWORD(v54) = v51 ^ v20 ^ *(v15 + ((v48 >> 22) & 0x3FC)) ^ ((v52 << v28) | v54);
  LODWORD(v39) = (*STACK[0x5390] << 24) ^ (2 * (v36 & (*STACK[0x5390] << 24)));
  LODWORD(v9) = v9 ^ v30;
  LODWORD(STACK[0x3D78]) = v9;
  LODWORD(v52) = v41;
  LODWORD(STACK[0x3E40]) = v41;
  LODWORD(v41) = v41 ^ v9 ^ v54;
  v55 = (v38 & v39) << v28;
  STACK[0x3938] = v55;
  v56 = (v39 & v37) >> v13;
  STACK[0x3940] = v56;
  LODWORD(STACK[0x3B48]) = v41;
  LODWORD(STACK[0x3B70]) = v47;
  v57 = v41 ^ v30 ^ v47;
  LODWORD(STACK[0x3D70]) = v57;
  v58 = v52 ^ v57 ^ v48;
  v59 = v58 ^ v46;
  v60 = *(v15 + 4 * (v58 ^ v46));
  LODWORD(STACK[0x3B68]) = v54;
  v61 = v54 ^ __ROR4__(v60, 24) ^ (v55 | v56) ^ *(v15 + ((v59 >> 22) & 0x3FC));
  LODWORD(v13) = *(v15 + 4 * BYTE1(v59));
  STACK[0x3B20] = v59;
  LODWORD(v54) = v61 ^ __ROR4__(v13, 16) ^ __ROR4__(*(v15 + 4 * BYTE2(v59)), 8);
  LODWORD(v59) = *STACK[0x5398] << 24;
  LODWORD(STACK[0x39A8]) = v59;
  LODWORD(v32) = STACK[0x3D68];
  v62 = (((v59 ^ (2 * (v59 & v45))) & v53) >> v40) ^ (((v59 ^ (2 * (v59 & v45))) & STACK[0x3D68]) << v28);
  LODWORD(v59) = v54 ^ v41 ^ v30;
  LODWORD(v56) = v52 ^ v57 ^ v59;
  LODWORD(v41) = STACK[0x53A4];
  LODWORD(STACK[0x38C8]) = STACK[0x53A4];
  LODWORD(STACK[0x3B18]) = v56;
  v63 = v41 ^ v58 ^ v56;
  LODWORD(v39) = *(v15 + 4 * BYTE2(v63));
  v64 = *(v15 + 4 * BYTE1(v63));
  LODWORD(STACK[0x3CB0]) = v54;
  LODWORD(v56) = v54 ^ __ROR4__(v39, 8) ^ (v64 << 16) ^ HIWORD(v64) ^ __ROR4__(*(v15 + 4 * v63), 24) ^ *(v15 + ((v63 >> 22) & 0x3FC)) ^ v62;
  LODWORD(v54) = *STACK[0x53A8] << 24;
  LODWORD(STACK[0x39A0]) = v54;
  LODWORD(v52) = v36;
  v65 = v40;
  v66 = (((v54 ^ (2 * (v54 & v36))) & v37) >> v40) + (((v54 ^ (2 * (v54 & v36))) & v38) << v28);
  LODWORD(v39) = v56 ^ v57;
  STACK[0x3CC0] = v63;
  v67 = v56 ^ v57 ^ v63 ^ v46;
  v68 = *(v15 + ((v67 >> 22) & 0x3FC)) ^ __ROR4__(*(v15 + 4 * BYTE1(v67)), 16) ^ __ROR4__(*(v15 + 4 * (v56 ^ v57 ^ v63 ^ v46)), 24) ^ v66 ^ __ROR4__(*(v15 + 4 * BYTE2(v67)), 8);
  LODWORD(v63) = *STACK[0x53B0] << 24;
  LODWORD(STACK[0x3B60]) = v63;
  LODWORD(STACK[0x3848]) = v45;
  v69 = v63 ^ (2 * (v63 & v45));
  v70 = STACK[0x3D98];
  LODWORD(v55) = v37;
  LODWORD(STACK[0x3908]) = v37;
  v71 = STACK[0x3D60];
  v72 = ((v37 & v69) >> STACK[0x3D60]) | ((v69 & v38) << v70);
  LODWORD(STACK[0x3B88]) = v59;
  LODWORD(v13) = v68 ^ v59;
  LODWORD(v59) = v68 ^ v59 ^ v56 ^ v57;
  STACK[0x3B00] = v67;
  LODWORD(v40) = STACK[0x3D90];
  v73 = LODWORD(STACK[0x3D90]) ^ v67 ^ v59;
  v74 = v59;
  LODWORD(STACK[0x3D30]) = v59;
  v75 = v73 ^ v46;
  LODWORD(v59) = *(v15 + 4 * (v73 ^ v46));
  LODWORD(STACK[0x3B80]) = v56;
  v76 = v68 ^ v56;
  LODWORD(v59) = v68 ^ v56 ^ __ROR4__(v59, 24) ^ __ROR4__(*(v15 + 4 * BYTE2(v75)), 8);
  LODWORD(v20) = __ROR4__(*(v15 + 4 * BYTE1(v75)), 16);
  STACK[0x3AE8] = v75;
  v77 = v59 ^ v20 ^ *(v15 + ((v75 >> 22) & 0x3FC)) ^ v72;
  LODWORD(v56) = *STACK[0x53B8] << 24;
  LODWORD(STACK[0x3958]) = v56;
  v78 = v52;
  LODWORD(STACK[0x3920]) = v52;
  LODWORD(v59) = (((v56 ^ (2 * (v56 & v52))) & v38) << v28) | (((v56 ^ (2 * (v56 & v52))) & v55) >> v71);
  LODWORD(STACK[0x3AF0]) = v13;
  LODWORD(v55) = v30 ^ v13 ^ v77;
  v79 = v73 ^ v30;
  v80 = LODWORD(STACK[0x3E40]) ^ v55;
  LODWORD(v56) = v80 ^ v74;
  v81 = v80 ^ v74 ^ v79;
  LODWORD(v71) = v77 ^ __ROR4__(*(v15 + 4 * (v80 ^ v74 ^ v79)), 24) ^ __ROR4__(*(v15 + 4 * BYTE2(v81)), 8) ^ v59 ^ __ROR4__(*(v15 + 4 * BYTE1(v81)), 16) ^ *(v15 + ((v81 >> 22) & 0x3FC));
  LODWORD(v52) = (*STACK[0x53C0] << 24) ^ (2 * (v45 & (*STACK[0x53C0] << 24)));
  LODWORD(STACK[0x3950]) = v52;
  v82 = (v32 & v52) << v70;
  v83 = STACK[0x38D0];
  v84 = v52 & STACK[0x38D0];
  STACK[0x3928] = v84;
  LODWORD(v82) = (v84 >> v65) + v82;
  LODWORD(v56) = v56 ^ v46;
  LODWORD(STACK[0x3960]) = v56;
  LODWORD(STACK[0x3A60]) = v80 ^ v71;
  v85 = v30 ^ v56 ^ v80 ^ v71;
  v86 = v40 ^ v81 ^ v85;
  LODWORD(STACK[0x3D50]) = v85;
  HIDWORD(v20) = *(v15 + 4 * (v40 ^ v81 ^ v85));
  LODWORD(v20) = HIDWORD(v20);
  LODWORD(v82) = (v20 >> 24) ^ __ROR4__(*(v15 + 4 * BYTE1(v86)), 16) ^ __ROR4__(*(v15 + 4 * BYTE2(v86)), 8) ^ *(v15 + ((v86 >> 22) & 0x3FC)) ^ v82;
  LODWORD(STACK[0x3CA8]) = v71;
  v87 = v82 ^ v71;
  STACK[0x3CF0] = v87;
  v88 = STACK[0x33D8];
  LODWORD(v56) = *(STACK[0x33D8] + 4 * BYTE2(v87));
  LODWORD(STACK[0x1784]) = LOBYTE(STACK[0x521F]) + LODWORD(STACK[0x3E38]);
  LODWORD(v56) = *(v88 + ((v87 >> 22) & 0x3FC)) ^ __ROR4__(v56, 24);
  LODWORD(STACK[0x3AE0]) = v55;
  LODWORD(v82) = v82 ^ v55;
  LODWORD(STACK[0x3D48]) = v82;
  LODWORD(v82) = v82 ^ v30;
  STACK[0x3AD8] = v81;
  v89 = v46 ^ v81 ^ v82;
  v90 = v82 ^ v85;
  LODWORD(v82) = *(v88 + 4 * BYTE1(v87));
  STACK[0x3CE8] = v90;
  v91 = *(v88 + 4 * BYTE1(v90));
  LODWORD(STACK[0x3CA0]) = v56 ^ (v82 << 16) ^ WORD1(v82);
  LODWORD(STACK[0x3BB0]) = *(v88 + ((v90 >> 22) & 0x3FC)) ^ __ROR4__(v91, 16) ^ __ROR4__(*(v88 + 4 * BYTE2(v90)), 24);
  STACK[0x3E18] = (*(v88 + ((v89 >> 22) & 0x3FC)) ^ __ROR4__(*(v88 + 4 * BYTE2(v89)), 24)) ^ __ROR4__(*(v88 + 4 * BYTE1(v89)), 16) ^ __ROR4__(*(v88 + 4 * v89), 8);
  LODWORD(STACK[0x3CE0]) = LODWORD(STACK[0x5420]) ^ LODWORD(STACK[0x3D80]);
  LODWORD(v89) = LODWORD(STACK[0x6764]) ^ LODWORD(STACK[0x3D78]);
  LODWORD(STACK[0x3CD8]) = LODWORD(STACK[0x677C]) ^ LODWORD(STACK[0x3D70]);
  LODWORD(v90) = LODWORD(STACK[0x67A4]) ^ v76;
  LODWORD(STACK[0x3C68]) = v90;
  LODWORD(v82) = LODWORD(STACK[0x675C]) ^ STACK[0x3D88];
  LODWORD(STACK[0x3B08]) = v89;
  v92 = v89 + 242220482 + v90;
  LODWORD(v56) = v92 ^ (2 * (v92 & v78));
  v93 = v38 & v56;
  LODWORD(v89) = v83;
  v94 = v83 & v56;
  STACK[0x38C0] = v94;
  v95 = v93 << v28;
  STACK[0x38F8] = v93 << v28;
  v96 = v94 >> v65;
  STACK[0x3C80] = v94 >> v65;
  LODWORD(STACK[0x3D38]) = v82 ^ ((v94 >> v65) + v95);
  v97 = STACK[0x3848];
  LODWORD(STACK[0x3BA8]) = v92;
  LODWORD(v82) = v92 ^ (2 * (v92 & v97));
  v98 = STACK[0x6768];
  STACK[0x3BE8] = v48;
  v99 = v98 ^ v48;
  v100 = v38 & v82;
  STACK[0x38A0] = v100;
  v101 = v100 << v28;
  STACK[0x3D88] = v100 << v28;
  v102 = STACK[0x3908];
  v103 = STACK[0x3908] & v82;
  STACK[0x3860] = v103;
  v104 = STACK[0x3D60];
  v105 = v103 >> STACK[0x3D60];
  STACK[0x3D70] = v105;
  LODWORD(STACK[0x3D20]) = v99 ^ (v105 | v101);
  v106 = STACK[0x3D98];
  STACK[0x3E38] = v93 << STACK[0x3D98];
  STACK[0x39C0] = v96 ^ (v93 << v106) ^ STACK[0x6770];
  v107 = v102 & v56;
  LODWORD(v101) = STACK[0x3D68];
  v108 = STACK[0x3D68] & v56;
  STACK[0x3878] = v108;
  STACK[0x3D78] = v108 << v106;
  STACK[0x3D80] = v107 >> v65;
  LOBYTE(v40) = v65;
  LODWORD(STACK[0x3D10]) = v30 ^ v46 ^ v39 ^ (v107 >> v65) ^ (v108 << v106) ^ LODWORD(STACK[0x6798]);
  LODWORD(STACK[0x3BB8]) = LODWORD(STACK[0x3D30]) ^ LODWORD(STACK[0x67AC]);
  v109 = v82 & v101;
  STACK[0x3858] = v109;
  v110 = v82 & v89;
  STACK[0x3850] = v110;
  LODWORD(v96) = v89;
  v111 = v110 >> v104;
  STACK[0x3C70] = v109 << v28;
  LODWORD(v109) = (v109 << v28) + (v110 >> v104);
  LODWORD(v110) = STACK[0x67B4];
  LODWORD(STACK[0x3BC8]) = v109;
  LODWORD(STACK[0x3D30]) = v109 ^ v110 ^ v77;
  STACK[0x3D68] = v107 >> v104;
  LODWORD(v109) = STACK[0x67D0];
  LODWORD(STACK[0x3998]) = STACK[0x67D0];
  LODWORD(STACK[0x3D28]) = ((v107 >> v104) | v95) ^ v109 ^ v86;
  LODWORD(v101) = LODWORD(STACK[0x3C20]) ^ (LODWORD(STACK[0x3C18]) >> 8) ^ (LODWORD(STACK[0x3C18]) << 24) ^ LODWORD(STACK[0x3C10]) ^ v46 ^ LODWORD(STACK[0x3C60]) ^ ((v38 & STACK[0x3C90]) << v106) ^ (STACK[0x3C88] >> v65);
  v112 = v102;
  LODWORD(v110) = ((v38 & STACK[0x3BF8]) << v106) + ((v102 & STACK[0x3BF8]) >> v104);
  v113 = STACK[0x3C78];
  LODWORD(v109) = v101 ^ LODWORD(STACK[0x3C78]);
  v114 = v46 ^ LODWORD(STACK[0x3C00]) ^ v109;
  LODWORD(v86) = STACK[0x3E40];
  v115 = STACK[0x3C08];
  v116 = STACK[0x3C08] ^ LODWORD(STACK[0x3E40]) ^ v114;
  LODWORD(STACK[0x3C90]) = v114;
  LODWORD(v110) = v110 ^ *(v15 + ((v116 >> 22) & 0x3FC)) ^ __ROR4__(*(v15 + 4 * (v115 ^ v86 ^ v114)), 24) ^ __ROR4__(*(v15 + 4 * BYTE1(v116)), 16);
  STACK[0x38B0] = v116;
  LODWORD(v110) = v110 ^ __ROR4__(*(v15 + 4 * BYTE2(v116)), 8);
  LODWORD(v107) = (((LODWORD(STACK[0x3BC0]) ^ (2 * (v97 & STACK[0x3BC0]))) & v89) >> v104) | (((LODWORD(STACK[0x3BC0]) ^ (2 * (v97 & STACK[0x3BC0]))) & v38) << v106);
  LODWORD(STACK[0x3A28]) = v115 ^ LODWORD(STACK[0x6744]);
  LODWORD(v39) = v110 ^ v113;
  LODWORD(v116) = v110 ^ v113 ^ v86;
  LODWORD(STACK[0x3980]) = v116;
  v117 = v116 ^ v115;
  LODWORD(v115) = *(v15 + 4 * (v116 ^ v115));
  LODWORD(STACK[0x38B8]) = v101;
  LODWORD(v116) = v110 ^ v101;
  v118 = v110 ^ v101 ^ __ROR4__(v115, 24) ^ __ROR4__(*(v15 + 4 * BYTE2(v117)), 8) ^ *(v15 + ((v117 >> 22) & 0x3FC)) ^ v107 ^ __ROR4__(*(v15 + 4 * BYTE1(v117)), 16);
  LODWORD(v89) = STACK[0x38C8];
  LODWORD(STACK[0x39F0]) = v109 ^ LODWORD(STACK[0x38C8]);
  LODWORD(v101) = STACK[0x3D90];
  LODWORD(STACK[0x3A68]) = v116;
  LODWORD(v109) = v101 ^ v109 ^ v89 ^ v116;
  LODWORD(STACK[0x3888]) = v109;
  LODWORD(v107) = v30 ^ v109 ^ v118;
  LODWORD(v109) = v39 ^ v114 ^ v107;
  STACK[0x3988] = v117;
  LODWORD(v110) = v30 ^ v117 ^ v109;
  v119 = v110 ^ v46;
  LODWORD(v115) = *(v15 + 4 * BYTE1(v119));
  LODWORD(v39) = (STACK[0x3948] << v106) | STACK[0x39E8];
  LODWORD(STACK[0x3890]) = v118;
  LODWORD(v39) = v118 ^ __ROR4__(v115, 16) ^ v39 ^ __ROR4__(*(v15 + 4 * (v110 ^ v46)), 24) ^ *(v15 + ((v119 >> 22) & 0x3FC));
  STACK[0x3900] = v119;
  LODWORD(v119) = v39 ^ __ROR4__(*(v15 + 4 * BYTE2(v119)), 8);
  LODWORD(v39) = STACK[0x3938] + STACK[0x3940];
  LODWORD(v107) = v107 ^ v46;
  LODWORD(STACK[0x3880]) = v107;
  LODWORD(v107) = v30 ^ v107 ^ v119;
  LODWORD(STACK[0x3940]) = v109 ^ v46;
  LODWORD(v117) = v107 ^ v109 ^ v46;
  LODWORD(STACK[0x3948]) = v117;
  v120 = v117 ^ v110;
  LODWORD(v110) = *(v15 + ((v120 >> 22) & 0x3FC));
  LODWORD(STACK[0x39E8]) = v119;
  LODWORD(v110) = v110 ^ v39 ^ v119 ^ __ROR4__(*(v15 + 4 * BYTE2(v120)), 8) ^ __ROR4__(*(v15 + 4 * BYTE1(v120)), 16) ^ __ROR4__(*(v15 + 4 * v120), 24);
  v121 = STACK[0x3920];
  LODWORD(v39) = (((LODWORD(STACK[0x39A8]) ^ (2 * (v121 & STACK[0x39A8]))) & v112) >> v65) ^ (((LODWORD(STACK[0x39A8]) ^ (2 * (v121 & STACK[0x39A8]))) & v38) << v28);
  LODWORD(v109) = v107 ^ v109;
  LODWORD(STACK[0x3870]) = v107 ^ v46;
  LODWORD(v107) = v30 ^ v107 ^ v46 ^ v110;
  LODWORD(v115) = v110 ^ v46;
  LODWORD(v119) = v109 ^ v107;
  STACK[0x39A8] = v120;
  v122 = v89;
  v123 = v89 ^ v120 ^ v109 ^ v107;
  LODWORD(v110) = *(v15 + ((v123 >> 22) & 0x3FC));
  LODWORD(v109) = *(v15 + 4 * BYTE2(v123));
  LODWORD(STACK[0x3830]) = v115;
  LODWORD(v89) = v110 ^ v115 ^ __ROR4__(v109, 8) ^ __ROR4__(*(v15 + 4 * v123), 24) ^ v39 ^ __ROR4__(*(v15 + 4 * BYTE1(v123)), 16);
  LODWORD(v110) = LODWORD(STACK[0x39A0]) ^ (2 * (v97 & STACK[0x39A0]));
  LODWORD(v107) = v107 ^ v46;
  LODWORD(v109) = STACK[0x53D4];
  LODWORD(STACK[0x38D8]) = v107;
  v124 = v109 ^ v107 ^ v89;
  LODWORD(v107) = v30 ^ LODWORD(STACK[0x53D0]);
  LODWORD(STACK[0x3938]) = v119;
  LODWORD(v119) = v107 ^ v119 ^ v124;
  STACK[0x3930] = v123;
  v125 = v101 ^ v123 ^ v119;
  LODWORD(v107) = *(v15 + 4 * v125);
  LODWORD(v115) = *(v15 + 4 * BYTE1(v125));
  LODWORD(STACK[0x37F0]) = v89;
  LODWORD(v39) = v89 ^ __ROR4__(v107, 24) ^ __ROR4__(v115, 16) ^ __ROR4__(*(v15 + 4 * BYTE2(v125)), 8) ^ *(v15 + ((v125 >> 22) & 0x3FC)) ^ ((v110 & v96) >> v104) ^ ((v110 & v38) << v28);
  LODWORD(v110) = v30 ^ v124 ^ v39;
  LODWORD(STACK[0x39A0]) = v119;
  LODWORD(v119) = v109 ^ v119 ^ v110;
  LODWORD(v107) = v46 ^ 0xBCD3F3FC ^ v110;
  LODWORD(v109) = STACK[0x3B60];
  STACK[0x3920] = v125;
  v126 = v119 ^ v125 ^ v122;
  LODWORD(v110) = *(v15 + ((v126 >> 22) & 0x3FC)) ^ ((((v109 ^ (2 * (v121 & v109))) & v96) >> v40) + (((v109 ^ (2 * (v121 & v109))) & v38) << v106));
  LODWORD(v109) = *(v15 + 4 * BYTE2(v126));
  LODWORD(STACK[0x38D0]) = v39;
  LODWORD(v125) = v39 ^ __ROR4__(v109, 8) ^ v110 ^ __ROR4__(*(v15 + 4 * BYTE1(v126)), 16) ^ __ROR4__(*(v15 + 4 * (v119 ^ v125 ^ v122)), 24);
  LODWORD(v110) = (((LODWORD(STACK[0x3958]) ^ (2 * (v97 & STACK[0x3958]))) & v38) << v28) | (((LODWORD(STACK[0x3958]) ^ (2 * (v97 & STACK[0x3958]))) & v112) >> v104);
  LODWORD(STACK[0x37C8]) = v107;
  v127 = STACK[0x3E40];
  v128 = LODWORD(STACK[0x3E40]) ^ v107 ^ v125;
  LODWORD(STACK[0x3908]) = v119;
  LODWORD(v39) = v30 ^ v119 ^ v128;
  LODWORD(v119) = v101;
  LODWORD(v109) = v101 ^ v126;
  v129 = v39 ^ v101 ^ v126;
  LODWORD(v101) = *(v15 + ((v129 >> 22) & 0x3FC));
  LODWORD(v96) = *(v15 + 4 * BYTE2(v129));
  LODWORD(STACK[0x3840]) = v125;
  LODWORD(v110) = v125 ^ v101 ^ __ROR4__(v96, 8) ^ __ROR4__(*(v15 + 4 * v129), 24) ^ v110;
  STACK[0x3828] = v129;
  LODWORD(v129) = v110 ^ __ROR4__(*(v15 + 4 * BYTE1(v129)), 16);
  LODWORD(v110) = v30 ^ v109;
  LODWORD(v109) = ((v38 & STACK[0x3950]) << v28) | (STACK[0x3928] >> v104);
  LODWORD(v125) = v122 ^ v128 ^ v129;
  LODWORD(STACK[0x38C8]) = v125;
  LODWORD(v125) = v125 ^ v127;
  v130 = v110 ^ v125;
  HIDWORD(v20) = *(v15 + 4 * (v110 ^ v125));
  LODWORD(v20) = HIDWORD(v20);
  v131 = STACK[0x3850] >> v40;
  v132 = STACK[0x3860] >> v40;
  LODWORD(v110) = (v20 >> 24) ^ __ROR4__(*(v15 + 4 * BYTE1(v130)), 16) ^ __ROR4__(*(v15 + 4 * BYTE2(v130)), 8) ^ *(v15 + ((v130 >> 22) & 0x3FC)) ^ v109;
  LODWORD(STACK[0x3820]) = v39;
  LODWORD(STACK[0x37A0]) = v128;
  v133 = v110 ^ v128;
  LODWORD(STACK[0x366C]) = v125 ^ v39;
  LODWORD(v109) = v133 ^ v125 ^ v39 ^ v119;
  STACK[0x3808] = v130;
  v134 = v119 ^ v130 ^ v109;
  LODWORD(v130) = *(v88 + ((v134 >> 22) & 0x3FC)) ^ __ROR4__(*(v88 + 4 * BYTE1(v134)), 16);
  v135 = STACK[0x38C0] >> v104;
  v136 = STACK[0x3858] << v106;
  v137 = STACK[0x38A0] << v106;
  v138 = STACK[0x3878] << v28;
  STACK[0x3958] = LODWORD(STACK[0x3C90]) ^ LODWORD(STACK[0x67EC]) ^ (v132 | v136);
  LODWORD(v96) = v124 ^ LODWORD(STACK[0x687C]);
  LODWORD(STACK[0x37E8]) = v111 ^ v136 ^ LODWORD(STACK[0x6840]);
  LODWORD(v130) = v130 ^ __ROR4__(*(v88 + 4 * BYTE2(v134)), 24);
  v139 = STACK[0x3D70];
  LODWORD(STACK[0x3950]) = v137 ^ STACK[0x3D70] ^ LODWORD(STACK[0x6860]);
  v140 = STACK[0x3C80];
  LODWORD(STACK[0x36F0]) = v138 ^ STACK[0x3C80] ^ LODWORD(STACK[0x6868]);
  LODWORD(STACK[0x36E8]) = v130 ^ __ROR4__(*(v88 + 4 * v134), 8);
  v141 = v109 ^ v46;
  LODWORD(v130) = *(v88 + 4 * BYTE1(v133));
  LODWORD(STACK[0x3928]) = *(v88 + ((v141 >> 22) & 0x3FC)) ^ __ROR4__(*(v88 + 4 * v141), 8) ^ (*(v88 + 4 * BYTE1(v141)) << 16) ^ HIWORD(*(v88 + 4 * BYTE1(v141))) ^ __ROR4__(*(v88 + 4 * BYTE2(v141)), 24);
  LODWORD(STACK[0x36D8]) = *(v88 + ((v133 >> 22) & 0x3FC)) ^ __ROR4__(v130, 16) ^ __ROR4__(*(v88 + 4 * BYTE2(v133)), 24) ^ __ROR4__(*(v88 + 4 * (v110 ^ v128)), 8);
  LODWORD(STACK[0x3810]) = v129;
  v142 = v110 ^ v129;
  LODWORD(v110) = *(v88 + ((v142 >> 22) & 0x3FC)) ^ __ROR4__(*(v88 + 4 * BYTE2(v142)), 24) ^ __ROR4__(*(v88 + 4 * BYTE1(v142)), 16);
  STACK[0x32A0] = v142;
  LODWORD(STACK[0x36E0]) = v110 ^ __ROR4__(*(v88 + 4 * v142), 8);
  LODWORD(STACK[0x3BC0]) = *(v88 + 4 * STACK[0x3CF0]);
  v143 = LODWORD(STACK[0x3D48]) ^ v46;
  LODWORD(STACK[0x38C0]) = *(v88 + ((v143 >> 22) & 0x3FC));
  LODWORD(v141) = *(v88 + 4 * BYTE2(v143));
  LODWORD(STACK[0x38A0]) = *(v88 + 4 * BYTE1(v143));
  LODWORD(v143) = *(v88 + 4 * v143);
  LODWORD(STACK[0x3878]) = *(v88 + 4 * STACK[0x3CE8]);
  v144 = *(v2 + 8 * SLODWORD(STACK[0x3D58]));
  LODWORD(STACK[0x3CF0]) = v46;
  LODWORD(STACK[0x37D8]) = LODWORD(STACK[0x3D50]) ^ v46;
  STACK[0x25D8] = STACK[0x3E18] >> 24;
  v145 = STACK[0x3D88];
  LODWORD(STACK[0x37F8]) = LODWORD(STACK[0x6738]) ^ STACK[0x3D88] ^ v132;
  v146 = STACK[0x3C70];
  LODWORD(STACK[0x3B60]) = LODWORD(STACK[0x3CE0]) ^ (STACK[0x3C70] | v131);
  v147 = STACK[0x3D78];
  LODWORD(v142) = STACK[0x3CD8];
  LODWORD(STACK[0x3730]) = v140 | STACK[0x3D78];
  LODWORD(STACK[0x3CD8]) = v142 ^ (v140 | v147);
  LODWORD(STACK[0x3CE0]) = v111 ^ LODWORD(STACK[0x3C68]) ^ v146;
  LODWORD(STACK[0x37C0]) = v138 + v140;
  LODWORD(STACK[0x3CE8]) = (v138 + v140) ^ LODWORD(STACK[0x3BB8]);
  v148 = STACK[0x3D68];
  v149 = STACK[0x38F8];
  LODWORD(STACK[0x3C68]) = STACK[0x3D68] + STACK[0x38F8];
  STACK[0x3D60] = v96 ^ (v148 + v149);
  LODWORD(v142) = STACK[0x6848];
  v150 = STACK[0x3D80];
  LODWORD(STACK[0x37B8]) = STACK[0x3D80] | v149;
  LODWORD(STACK[0x3638]) = v142 ^ (v150 | v149);
  LODWORD(v28) = v148;
  LODWORD(STACK[0x3D50]) = v148 ^ v149;
  LODWORD(STACK[0x37A8]) = v140 | v149;
  LODWORD(STACK[0x3630]) = v150 + v149;
  LODWORD(v148) = v150;
  LODWORD(STACK[0x3C60]) = v135 + v149;
  HIDWORD(v20) = v141;
  LODWORD(v20) = v141;
  LODWORD(STACK[0x3628]) = v20 >> 24;
  HIDWORD(v20) = v143;
  LODWORD(v20) = v143;
  LODWORD(STACK[0x3BB8]) = v20 >> 8;
  STACK[0x3290] = STACK[0x6C30];
  LODWORD(STACK[0x3640]) = STACK[0x6784];
  LODWORD(STACK[0x3818]) = STACK[0x67D4];
  LODWORD(STACK[0x3768]) = STACK[0x6790];
  LODWORD(STACK[0x38F8]) = STACK[0x67BC];
  LODWORD(STACK[0x3790]) = STACK[0x67C0];
  LODWORD(STACK[0x3620]) = STACK[0x67C4];
  LODWORD(STACK[0x3848]) = STACK[0x67C8];
  LODWORD(STACK[0x3798]) = STACK[0x67E0];
  LODWORD(STACK[0x3698]) = STACK[0x6870];
  LODWORD(STACK[0x3858]) = STACK[0x67E8];
  LODWORD(STACK[0x36C0]) = STACK[0x67DC];
  LODWORD(STACK[0x36D0]) = STACK[0x6874];
  LODWORD(STACK[0x3788]) = STACK[0x67F8];
  LODWORD(STACK[0x36C8]) = STACK[0x67FC];
  LODWORD(STACK[0x3778]) = STACK[0x6800];
  LODWORD(STACK[0x3850]) = STACK[0x6808];
  LODWORD(STACK[0x36A0]) = STACK[0x680C];
  LODWORD(STACK[0x36B8]) = STACK[0x6814];
  LODWORD(STACK[0x3860]) = STACK[0x6810];
  LODWORD(STACK[0x3760]) = STACK[0x6878];
  LODWORD(STACK[0x36B0]) = STACK[0x6820];
  LODWORD(STACK[0x3C20]) = v135 + v147;
  LODWORD(STACK[0x3758]) = STACK[0x681C];
  v151 = STACK[0x3E38];
  LODWORD(STACK[0x3738]) = STACK[0x3E38] + v28;
  LODWORD(STACK[0x3710]) = v137 + v132;
  LODWORD(STACK[0x3708]) = v135 | v147;
  LODWORD(STACK[0x3750]) = STACK[0x6828];
  LODWORD(STACK[0x3688]) = STACK[0x6830];
  LODWORD(STACK[0x3838]) = v137 + v111;
  LODWORD(STACK[0x3C18]) = v131 ^ v136;
  LODWORD(STACK[0x3C10]) = v111 | v136;
  LODWORD(STACK[0x3BF8]) = v111 + v145;
  LODWORD(STACK[0x3C78]) = v148 | v147;
  LODWORD(STACK[0x3C08]) = v151 | v148;
  LODWORD(STACK[0x3C00]) = v137 + v139;
  STACK[0x3D98] = v131;
  LODWORD(STACK[0x3700]) = v146 + v131;
  LODWORD(STACK[0x3720]) = STACK[0x6880];
  STACK[0x3E40] = v111;
  LODWORD(STACK[0x36F8]) = STACK[0x6838];
  LODWORD(STACK[0x3658]) = STACK[0x683C];
  LODWORD(STACK[0x3718]) = STACK[0x6850];
  STACK[0x3800] = v137;
  LODWORD(STACK[0x3650]) = STACK[0x6854];
  STACK[0x3D58] = v136;
  v152 = LODWORD(STACK[0x67CC]);
  STACK[0x3C88] = v132;
  LODWORD(STACK[0x3D48]) = v146 | v132;
  STACK[0x3D90] = v135;
  return v144(v152, (v151 + v135));
}

uint64_t sub_100D62E3C()
{
  STACK[0x3750] += 16;
  v1 = STACK[0x3250];
  LODWORD(STACK[0x3E18]) = STACK[0x3250] - 7709;
  v2 = STACK[0x38D8];
  v3 = STACK[0x2AA0];
  v4 = STACK[0x3D80];
  v5 = (((LODWORD(STACK[0x3230]) ^ LODWORD(STACK[0x38D8])) & STACK[0x2C00]) >> STACK[0x3D78]) + (((LODWORD(STACK[0x3230]) ^ LODWORD(STACK[0x38D8])) & STACK[0x2AA0]) << STACK[0x3D80]);
  v6 = STACK[0x3908];
  v7 = STACK[0x3228];
  v8 = STACK[0x3228] & (((v5 ^ ((v5 & v6) >> 1)) & v6) >> 2) ^ v5 ^ ((v5 & v6) >> 1);
  v9 = (STACK[0x3228] & LODWORD(STACK[0x3908])) >> 2;
  LODWORD(STACK[0x3818]) = v9 & ((v8 & STACK[0x3908]) >> 4) & STACK[0x3228] ^ v8;
  v10 = STACK[0x3E38];
  v11 = (((LODWORD(STACK[0x3248]) ^ v2) & v3) << v4) ^ (((LODWORD(STACK[0x3248]) ^ v2) & STACK[0x2A98]) >> STACK[0x3E38]);
  v12 = (((v11 ^ ((v11 & STACK[0x3920]) >> 1)) & STACK[0x3920]) >> (v1 + 11)) & STACK[0x3650] ^ v11 ^ ((v11 & STACK[0x3920]) >> 1);
  LODWORD(STACK[0x3828]) = ((v12 & STACK[0x3920]) >> 4) & ((STACK[0x3650] & LODWORD(STACK[0x3920])) >> 2) & STACK[0x3650] ^ v12;
  v13 = (((LODWORD(STACK[0x36B8]) ^ LODWORD(STACK[0x3880])) & v3) << v4) | (((LODWORD(STACK[0x36B8]) ^ LODWORD(STACK[0x3880])) & STACK[0x32C8]) >> v10);
  v14 = v7 & (((v13 ^ ((v13 & v6) >> 1)) & v6) >> 2) ^ v13 ^ ((v13 & v6) >> 1);
  LODWORD(STACK[0x3838]) = v9 & ((v14 & v6) >> 4) & v7 ^ v14;
  v15 = *(v0 + 8 * v1);
  STACK[0x36F0] += 16;
  STACK[0x36E8] += 16;
  STACK[0x36E0] += 16;
  STACK[0x3850] = LODWORD(STACK[0x3960]);
  return v15();
}

uint64_t sub_100D630CC(uint64_t a1, int a2)
{
  if (HIDWORD(v2))
  {
    v4 = 0;
  }

  else
  {
    v4 = (STACK[0x3B18] ^ (a2 - 1796) ^ (a2 - 835838114) & 0x31D1F29F ^ 0xFFFF94FD) >= v2;
  }

  v5 = v4;
  return (*(v3 + 8 * ((25 * v5) ^ a2)))();
}

uint64_t sub_100D631F8@<X0>(int a1@<W8>)
{
  v4 = LODWORD(STACK[0x3E18]) > v2;
  v5 = STACK[0x3D18];
  *(STACK[0x3D18] + 109) = v1 >> (a1 ^ 0xDA);
  v6 = v4;
  v5[111] = v1;
  v5[110] = BYTE1(v1);
  v5[108] = HIBYTE(v1);
  return (*(v3 + 8 * ((24755 * v6) ^ a1)))();
}

uint64_t sub_100D63250()
{
  LODWORD(STACK[0x3D28]) = 0;
  LODWORD(STACK[0x3B08]) = 0;
  LODWORD(STACK[0x39E8]) = 0;
  LODWORD(STACK[0x3830]) = 0;
  LODWORD(STACK[0x3D60]) = 0;
  LODWORD(STACK[0x39F0]) = 0;
  LODWORD(STACK[0x3848]) = 0;
  LODWORD(STACK[0x3850]) = 0;
  LODWORD(STACK[0x3D50]) = 0;
  LODWORD(STACK[0x3838]) = 0;
  LODWORD(STACK[0x3840]) = 0;
  LODWORD(STACK[0x3820]) = 0;
  STACK[0x3B18] = v2 >> (v0 - 65);
  v3 = *(v1 + 8 * v0);
  LODWORD(STACK[0x3D30]) = 1;
  STACK[0x3950] = v2;
  LODWORD(STACK[0x3B20]) = 1;
  LODWORD(STACK[0x3A28]) = 1;
  LODWORD(STACK[0x3AA0]) = 1;
  LODWORD(STACK[0x3D88]) = 1;
  LODWORD(STACK[0x38B0]) = 1;
  LODWORD(STACK[0x3CF0]) = 1;
  LODWORD(STACK[0x3AE0]) = 1;
  LODWORD(STACK[0x3D90]) = 1;
  LODWORD(STACK[0x38B8]) = 1;
  LODWORD(STACK[0x3AE8]) = 1;
  LODWORD(STACK[0x3E18]) = 1;
  LODWORD(STACK[0x3D38]) = 1;
  LODWORD(STACK[0x3D20]) = 1;
  LODWORD(STACK[0x3AF0]) = 1;
  LODWORD(STACK[0x3980]) = 1;
  LODWORD(STACK[0x3E40]) = 1;
  LODWORD(STACK[0x3800]) = 1;
  LODWORD(STACK[0x3988]) = 1;
  LODWORD(STACK[0x3D78]) = 1;
  LODWORD(STACK[0x3808]) = 1;
  LODWORD(STACK[0x3B00]) = 1;
  LODWORD(STACK[0x3998]) = 1;
  LODWORD(STACK[0x3810]) = 1;
  LODWORD(STACK[0x3D58]) = 1;
  LODWORD(STACK[0x39A0]) = 1;
  LODWORD(STACK[0x3818]) = 1;
  LODWORD(STACK[0x3828]) = 1;
  LODWORD(STACK[0x3AD8]) = 1;
  LODWORD(STACK[0x3858]) = 1;
  LODWORD(STACK[0x3860]) = 1;
  LODWORD(STACK[0x3D70]) = 1;
  return v3();
}

uint64_t sub_100D6332C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x3D68]) = 0;
  LODWORD(STACK[0x3AD8]) = 0;
  LODWORD(STACK[0x3D50]) = 0;
  v8 = v6 - 5727;
  v9 = 1303 * ((v6 - 5727) ^ 0x2891) - 27356;
  v10 = LODWORD(STACK[0x1958]) != v9;
  if (LODWORD(STACK[0x1958]) == v9)
  {
    v11 = 6;
  }

  else
  {
    v11 = 3;
  }

  LODWORD(STACK[0x3D60]) = v11;
  v12 = *(v7 + 8 * v8);
  LODWORD(STACK[0x3290]) = 1;
  v13 = STACK[0x1100];
  LODWORD(STACK[0x3298]) = v10;
  STACK[0x3790] = STACK[0x3980];
  v14 = LODWORD(STACK[0x3438]);
  LODWORD(STACK[0x2144]) = v14;
  LODWORD(STACK[0x1698]) = STACK[0x3700];
  LODWORD(STACK[0x1C28]) = STACK[0x32E8];
  v15 = LODWORD(STACK[0x3548]);
  v16 = LODWORD(STACK[0x3830]);
  LODWORD(STACK[0x3E18]) = STACK[0x31D0];
  LODWORD(STACK[0x1C30]) = STACK[0x32E0];
  LODWORD(STACK[0x3268]) = STACK[0x1A78];
  LODWORD(STACK[0x1BA0]) = STACK[0x2B90];
  STACK[0x33C0] = v14;
  LODWORD(STACK[0x1AD0]) = STACK[0x32D0];
  LODWORD(STACK[0x36B8]) = v14;
  LODWORD(STACK[0x1C90]) = STACK[0x32D8];
  LODWORD(STACK[0x1B50]) = STACK[0x221C];
  LODWORD(STACK[0x3310]) = STACK[0x35FC];
  LODWORD(STACK[0x3308]) = STACK[0x3970];
  LODWORD(STACK[0x3300]) = STACK[0x35F8];
  return v12(a1, a2, v16, a4, a5, a6, v15, v13);
}

uint64_t sub_100D63434()
{
  v1 = STACK[0x3D18];
  STACK[0x3580] = STACK[0x3D18] + 426;
  STACK[0x2760] = v1 + 3156;
  STACK[0x3C50] = v1 + 5777;
  v2 = STACK[0x3CF8];
  STACK[0x4A8] = STACK[0x3CF8] + 3764;
  STACK[0x490] = v2 + 2156;
  STACK[0x3AD0] = v2 + 11780;
  v3 = STACK[0x1AB8];
  STACK[0x3D8] = STACK[0x1AB8] + 1328;
  STACK[0x448] = v3 + 2900;
  STACK[0x2618] = v3 + 15144;
  v4 = STACK[0x1BE8];
  STACK[0x928] = STACK[0x1BE8] + 6824;
  STACK[0x1100] = v4 + 6264;
  return (*(v0 + 8 * SLODWORD(STACK[0x295C])))(3480980747, 531704925, 4278255361, 793808370, (1611 * (LODWORD(STACK[0x295C]) ^ 0x1C87)) ^ 0x3EEFu, 46);
}

uint64_t sub_100D6351C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = *(v9 + LODWORD(STACK[0x3798]));
  LODWORD(STACK[0x3798]) = a7 + 22;
  v11 = *(v7 + 8 * (((v8 == ((a2 - 1672291649) & 0x63ACE7EF ^ 0x267A)) * (((a2 - 24345) | 0x2110) - 9546)) ^ a2));
  LODWORD(STACK[0x3D58]) = 22;
  return v11(v10);
}

uint64_t sub_100D65494@<X0>(int a1@<W8>)
{
  v4 = STACK[0x3D18];
  v4[238] = BYTE1(v1);
  v4[237] = v1 >> (a1 - 53);
  v4[239] = v1;
  v5 = v2 < LODWORD(STACK[0x3E18]);
  v4[236] = HIBYTE(v1);
  return (*(v3 + 8 * ((2 * v5) | (8 * v5) | a1)))();
}

uint64_t sub_100D654EC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x38B8]) = 0;
  LODWORD(STACK[0x3E40]) = 0;
  v2 = STACK[0x3870];
  v3 = (8 * LODWORD(STACK[0x3870])) & 0x18;
  v4 = 0x80000000 >> v3 >> 7;
  LODWORD(STACK[0x3D70]) = a1 ^ 0x7D24;
  v5 = ((0x80000u >> v3) & 0xF7FFFFFF | ((v4 & 1) << 27)) ^ ((0x100000u >> v3) & 0xEFFFFFFF | ((v4 & 1) << 28)) ^ ((0x800000u >> v3) & 0x7FFFFFFF | (v4 << 31)) ^ (((0x54020000u >> v3) & 0xFDFFFFFF | ((v4 & 1) << 25)) ^ ((0x40u >> v3) | (0x80000000 >> v3 << 7)) | (0x80u >> v3) | (0x80000000 >> v3 << 8));
  v6 = -v2 & 3;
  LODWORD(STACK[0x3650]) = ((0x300u >> v3) | (0x80000000 >> v3 << 10) | (0x80000000 >> v3 << 9) | (0x1000u >> v3) | (0x80000000 >> v3 << 13)) ^ ((0x2000u >> v3) | (0x80000000 >> v3 << 14)) ^ ((0x4000u >> v3) | (0x80000000 >> v3 << 15)) ^ ((0x10000u >> v3) & 0xFEFFFFFF | ((((0x80000000 >> v3) & 0x80) != 0) << 24)) ^ ((0x40000u >> v3) & 0xFBFFFFFF | ((((0x80000000 >> v3) & 0x80) != 0) << 26)) ^ v5 ^ ((((a1 ^ 0x7D24u) - 27639) >> v3) + 2 * (0x80000000 >> v3) + ((4u >> v3) | (8 * (0x80000000 >> v3))) + ((0x20u >> v3) | (0x80000000 >> v3 << 6)));
  LODWORD(STACK[0x3600]) = v2 & 0x1FFFFFFF ^ ((8 * v2) >> 1) ^ __ROR4__(8 * v2, 29) ^ __ROR4__(8 * v2, 31) ^ __ROR4__(8 * v2, 26) ^ __ROR4__(8 * v2, 25) ^ __ROR4__(8 * v2, 24) ^ __ROR4__(8 * v2, 23) ^ __ROR4__(8 * v2, 22) ^ __ROR4__(8 * v2, 19) ^ __ROR4__(8 * v2, 18) ^ __ROR4__(8 * v2, 17) ^ __ROR4__(8 * v2, 15) ^ __ROR4__(8 * v2, 14) ^ __ROR4__(8 * v2, 13) ^ __ROR4__(8 * v2, 12) ^ __ROR4__(8 * v2, 11) ^ __ROR4__(8 * v2, 8) ^ __ROR4__(8 * v2, 5);
  LODWORD(STACK[0x3550]) = v6;
  LODWORD(STACK[0x34F0]) = v6 + v2;
  LODWORD(STACK[0x38B0]) = v6 + v2;
  return (*(v1 + 8 * a1))();
}

uint64_t sub_100D656E0@<X0>(int a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v8 = v4 + a2;
  v9 = *(a3 + (((v8 & 0xFFFFFFF8) + 2050767130) & v3));
  v10 = __ROR8__(v8 & 0xFFFFFFFFFFFFFFF8, 8);
  v11 = (((v10 + v9) ^ 0xF8E3201C03D05EF2) - ((((v5 - 21126) | 0x1C85u) ^ 0x73C257B637F0D3F1) & (2 * ((v10 + v9) ^ 0xF8E3201C03D05EF2))) + 0x39E12BDB1BF867B6) ^ 0x798A0A13F9EF5A17;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (((2 * (v13 + v12)) | 0xB0821E4975873B2ALL) - (v13 + v12) + 0x27BEF0DB453C626BLL) ^ 0xE089BE4E5DC6F5E2;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (0x313AB8B17E8F9168 - ((v16 + v15) | 0x313AB8B17E8F9168) + ((v16 + v15) | 0xCEC5474E81706E97)) ^ 0x2B45F6330DB58BC6;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xE1A1FD5BD155F97ALL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = __ROR8__((0x6572555F9DE6AD53 - ((v21 + v20) | 0x6572555F9DE6AD53) + ((v21 + v20) | 0x9A8DAAA0621952ACLL)) ^ 0x40EDE1AC61BBED35, 8);
  v23 = (0x6572555F9DE6AD53 - ((v21 + v20) | 0x6572555F9DE6AD53) + ((v21 + v20) | 0x9A8DAAA0621952ACLL)) ^ 0x40EDE1AC61BBED35 ^ __ROR8__(v20, 61);
  v24 = (v22 + v23 - ((2 * (v22 + v23)) & 0xAC6525FBCB27F392) - 0x29CD6D021A6C0637) ^ 0x2C0770302EADC80ELL;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (0x176797E64FE22394 - ((v26 + v25) | 0x176797E64FE22394) + ((v26 + v25) | 0xE8986819B01DDC6BLL)) ^ 0x3A6864FF90F80FC5;
  LODWORD(v8) = -941754499 * ((((__ROR8__(v27, 8) + (v27 ^ __ROR8__(v25, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * (v8 & 7u))) ^ *v8);
  v28 = v8 ^ v6;
  LODWORD(v25) = (v28 + a2) >> 16;
  v29 = v28 + a2 + v25;
  v30 = (a2 - 1431926677 + v28 + v25 - (v29 >> 8)) ^ a1;
  v31 = a2 + 1431113942 + v28 + v25 - (v29 >> 8);
  return (*(v7 + 8 * ((27 * (a2 + 1 >= STACK[0x3910])) ^ (v5 + 6824))))(v30 ^ (a2 - 1431926677 + (v31 ^ v8) + (((v31 ^ v8) + a2) >> 16) - (((v31 ^ v8) + a2 + (((v31 ^ v8) + a2) >> 16)) >> 8)));
}

uint64_t sub_100D65A20@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = a2 - 8278;
  LODWORD(STACK[0x3D68]) = (v6 - 8049) | 0x508A;
  v7 = *(v4 + 8 * ((11 * ((((v6 - 8049) ^ v3) & 1) == 0)) ^ v6));
  LODWORD(STACK[0x3948]) = 4;
  LODWORD(STACK[0x33E8]) = 9;
  STACK[0x3998] = STACK[0x3D60];
  STACK[0x39E8] = STACK[0x3D88];
  v8 = STACK[0x10F8];
  STACK[0x36D0] = STACK[0x16A8];
  STACK[0x37A8] = STACK[0x3398];
  STACK[0x3860] = STACK[0x16A0];
  STACK[0x3760] = STACK[0x29B0];
  LODWORD(STACK[0x39A0]) = STACK[0x3E40];
  LODWORD(STACK[0x36B8]) = STACK[0x366C];
  LODWORD(STACK[0x3698]) = STACK[0x3700];
  LODWORD(STACK[0x38B8]) = STACK[0x2010];
  LODWORD(STACK[0x3550]) = STACK[0x37B8];
  v9 = STACK[0x31D0];
  STACK[0x3540] = v5;
  LODWORD(STACK[0x3710]) = STACK[0x3B08];
  LODWORD(STACK[0x38C8]) = v9;
  LODWORD(STACK[0x33C0]) = STACK[0x2A48];
  LODWORD(STACK[0x2424]) = STACK[0x3D28];
  LODWORD(STACK[0x31E8]) = STACK[0x3AE8];
  LODWORD(STACK[0x351C]) = STACK[0x3AD8];
  LODWORD(STACK[0x3988]) = STACK[0x3D90];
  LODWORD(STACK[0x2500]) = STACK[0x3AF0];
  LODWORD(STACK[0x3810]) = STACK[0x3B00];
  LODWORD(STACK[0x3858]) = STACK[0x33A8];
  LODWORD(STACK[0x32E8]) = STACK[0x2630];
  STACK[0x3318] = LODWORD(STACK[0x3D10]);
  LODWORD(STACK[0x36A0]) = STACK[0x128C];
  LODWORD(STACK[0x3980]) = v2;
  return v7(a1, v8);
}

uint64_t sub_100D65BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x910] = v8;
  LODWORD(STACK[0x844]) = STACK[0x8D4];
  return (*(v6 + 8 * v7))(a1, a2, a3, a4, a5, a6, 4151854225);
}

uint64_t sub_100D65C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, unsigned int a62)
{
  STACK[0x32D0] = 0;
  v64 = (v62 ^ 0x4FE1) - 354;
  LODWORD(STACK[0x3D68]) = v64 ^ 0x4AD1;
  v65 = *(v63 + 8 * (((v64 ^ 0x3DB6) * (STACK[0x3D30] & 1)) ^ v62 ^ 0x4FE1));
  LODWORD(STACK[0x33E8]) = 1;
  STACK[0x3D48] = STACK[0x3D58];
  LODWORD(STACK[0x3AE0]) = STACK[0x12AC];
  v66 = STACK[0x39C0];
  STACK[0x3998] = STACK[0x3D60];
  STACK[0x39E8] = STACK[0x3D88];
  v67 = STACK[0x16A8];
  v68 = STACK[0x29B0];
  STACK[0x36D0] = STACK[0x16A8];
  STACK[0x37A8] = STACK[0x3398];
  STACK[0x3860] = STACK[0x16A0];
  STACK[0x3760] = v68;
  LODWORD(STACK[0x39A0]) = STACK[0x3E40];
  LODWORD(STACK[0x36B8]) = STACK[0x366C];
  LODWORD(STACK[0x3B18]) = STACK[0x39A8];
  LODWORD(STACK[0x3698]) = STACK[0x3700];
  LODWORD(STACK[0x38B8]) = STACK[0x2010];
  LODWORD(STACK[0x3550]) = STACK[0x37B8];
  LODWORD(STACK[0x3948]) = STACK[0x3D20];
  v69 = STACK[0x33A8];
  LODWORD(STACK[0x38C8]) = STACK[0x31D0];
  LODWORD(STACK[0x33C0]) = STACK[0x2A48];
  LODWORD(STACK[0x3958]) = v66;
  LODWORD(STACK[0x3988]) = STACK[0x3D90];
  LODWORD(STACK[0x3858]) = v69;
  LODWORD(STACK[0x32E8]) = STACK[0x2630];
  LODWORD(STACK[0x36A0]) = STACK[0x128C];
  LODWORD(STACK[0x3980]) = STACK[0x3D70];
  return v65(a1, v67, a3, a4, a5, v68, a62);
}

uint64_t sub_100D6640C@<X0>(int a1@<W4>, unint64_t a2@<X7>, char a3@<W8>)
{
  LODWORD(STACK[0x3D88]) = 0;
  LODWORD(STACK[0x3D60]) = 0;
  v5 = *(v4 + 8 * (((((a1 + 8273) | 0x2001) + ((a1 - 1998) ^ 0xFFFFFB09)) * (a3 & 1)) ^ a1));
  LODWORD(STACK[0x3D68]) = 3;
  STACK[0x3198] = a2;
  LODWORD(STACK[0x30D0]) = STACK[0x3850];
  LODWORD(STACK[0x31B0]) = v3;
  LODWORD(STACK[0x3E18]) = STACK[0x3700];
  return v5();
}

uint64_t sub_100D664E0()
{
  LODWORD(STACK[0x3E20]) = v1 + 3;
  v3 = STACK[0x3DD0];
  v4 = *(STACK[0x3DD0] + v1 + 3);
  LODWORD(STACK[0x3DC0]) = v1 + 14;
  LODWORD(STACK[0x3E00]) = v1 + 2;
  v5 = *(v3 + v1 + 2);
  v6 = *(v3 + v1);
  v7 = STACK[0x3528];
  v8 = *(STACK[0x3528] + *(v3 + v1 + 14));
  LODWORD(STACK[0x3E18]) = v1 + 8;
  v9 = *(v3 + v1 + 8);
  LODWORD(STACK[0x3E10]) = v1 + 12;
  LODWORD(v4) = *(v7 + v4);
  v10 = *(v3 + v1 + 12);
  LODWORD(v6) = *(v7 + v6);
  LODWORD(v5) = *(v7 + v5);
  LODWORD(STACK[0x3DF0]) = v1 + 6;
  LODWORD(v9) = *(v7 + v9);
  LODWORD(v10) = *(v7 + v10);
  v11 = v8 << LODWORD(STACK[0x3A78]);
  LODWORD(STACK[0x3DC8]) = v1;
  LODWORD(STACK[0x3DF8]) = v1 + 15;
  v12 = *(v7 + *(v3 + v1 + 15));
  LODWORD(STACK[0x3E08]) = v1 + 5;
  v13 = *(v3 + v1 + 5);
  LODWORD(v4) = v4 | (v5 << 8);
  LODWORD(v5) = *(v7 + *(v3 + v1 + 6));
  LODWORD(STACK[0x3DB8]) = v1 + 10;
  v14 = *(v7 + v13);
  LODWORD(STACK[0x3DE8]) = v1 + 4;
  v15 = v11 | (v10 << 24);
  LODWORD(v10) = (v9 << 24) | (*(v7 + *(v3 + v1 + 10)) << 8);
  LODWORD(STACK[0x3DE0]) = v1 + 11;
  v16 = *(v3 + v1 + 4);
  LODWORD(v4) = v4 | (v6 << 24);
  LODWORD(v6) = *(v7 + *(v3 + v1 + 11));
  LODWORD(STACK[0x3DA8]) = v1 + 1;
  v17 = v15 | v12;
  v18 = *(v7 + v16);
  LODWORD(STACK[0x3DA0]) = v1 + 13;
  v19 = *(v3 + v1 + 13);
  LODWORD(v6) = v10 | v6;
  LODWORD(v10) = *(v7 + *(v3 + v1 + 1));
  LODWORD(STACK[0x3DB0]) = v1 + 9;
  v20 = (v5 << 8) | (v14 << 16) | (v18 << 24);
  v21 = *(v3 + v1 + 9);
  LODWORD(v19) = *(v7 + v19);
  LODWORD(STACK[0x3DD8]) = v1 + 7;
  LODWORD(v5) = v4 | (v10 << 16);
  v22 = STACK[0x3908];
  LODWORD(v3) = v20 | *(v7 + *(v3 + v1 + 7));
  LODWORD(STACK[0x3D90]) = v3;
  LODWORD(STACK[0x3D78]) = v2 ^ (2 * (v2 & v22));
  v23 = v17 | (v19 << 16);
  v24 = v6 | (*(v7 + v21) << 16);
  LODWORD(v7) = STACK[0x3920];
  LODWORD(STACK[0x3D98]) = v5;
  LODWORD(v4) = v5 ^ (2 * (v5 & v7));
  v25 = STACK[0x38A0];
  LODWORD(v16) = STACK[0x38F8];
  v26 = STACK[0x3D58];
  LODWORD(v6) = v3 & v7;
  v27 = STACK[0x3D68];
  LODWORD(v6) = v3 ^ (2 * v6);
  v28 = (v6 & STACK[0x38C0]) << STACK[0x3D68];
  LODWORD(STACK[0x38F8]) = STACK[0x38F8];
  LODWORD(v21) = ((v4 & v25) << v27) | ((v4 & v16) >> v26);
  LODWORD(STACK[0x3D88]) = v24;
  LODWORD(v4) = v24 ^ (2 * (v24 & v22));
  STACK[0x38A0] = v25;
  v29 = (v4 & v25) << STACK[0x3D60];
  v30 = ((v6 & v16) >> v26) ^ v28;
  v31 = (v4 & STACK[0x38D0]) >> STACK[0x3D70];
  LODWORD(STACK[0x3D80]) = v23;
  LODWORD(v19) = v29 | v31;
  LODWORD(v6) = (((v23 ^ (2 * (v23 & v22))) & v16) >> v26) | (((v23 ^ (2 * (v23 & v22))) & v25) << v27);
  LODWORD(v31) = LODWORD(STACK[0x3D40]) ^ LODWORD(STACK[0x38D8]);
  v32 = v31 ^ LODWORD(STACK[0x3CE0]) ^ v21;
  v33 = STACK[0x3A88];
  v34 = v31 ^ LODWORD(STACK[0x3CD8]);
  v35 = v34 ^ v19;
  v36 = LODWORD(STACK[0x3CD0]) ^ v6;
  v37 = v31 ^ LODWORD(STACK[0x3CC8]) ^ v30;
  v38 = (LODWORD(STACK[0x3A70]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v32)), 8)) ^ __ROR4__(*(STACK[0x3A88] + 4 * (v34 ^ v19)), 24) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v36)), 16) ^ *(STACK[0x3A88] + ((v37 >> 22) & 0x3FC));
  v39 = (LODWORD(STACK[0x3A68]) ^ __ROR4__(*(STACK[0x3A88] + 4 * (LODWORD(STACK[0x3CD0]) ^ v6)), 24)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v37)), 8) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v32)), 16) ^ *(STACK[0x3A88] + ((v35 >> 22) & 0x3FC));
  v40 = (LODWORD(STACK[0x3CC0]) ^ __ROR4__(*(STACK[0x3A88] + 4 * v37), 24)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v35)), 16) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v36)), 8) ^ *(STACK[0x3A88] + ((v32 >> 22) & 0x3FC));
  v41 = (LODWORD(STACK[0x3CB8]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v35)), 8)) ^ *(STACK[0x3A88] + ((v36 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * v32), 24) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v37)), 16);
  v42 = (LODWORD(STACK[0x3CB0]) ^ *(STACK[0x3A88] + ((v39 >> 22) & 0x3FC))) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v40)), 16) ^ __ROR4__(*(STACK[0x3A88] + 4 * v41), 24) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v38)), 8);
  v43 = (LODWORD(STACK[0x3CA8]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v39)), 8)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v38)), 16) ^ __ROR4__(*(STACK[0x3A88] + 4 * v40), 24) ^ *(STACK[0x3A88] + ((v41 >> 22) & 0x3FC));
  v44 = (LODWORD(STACK[0x3CA0]) ^ *(STACK[0x3A88] + ((v38 >> 22) & 0x3FC))) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v41)), 16) ^ __ROR4__(*(STACK[0x3A88] + 4 * v39), 24) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v40)), 8);
  v45 = (LODWORD(STACK[0x3C98]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v41)), 8)) ^ __ROR4__(*(STACK[0x3A88] + 4 * v38), 24) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v39)), 16) ^ *(STACK[0x3A88] + ((v40 >> 22) & 0x3FC));
  v46 = (LODWORD(STACK[0x3C68]) ^ *(STACK[0x3A88] + ((v42 >> 22) & 0x3FC))) ^ __ROR4__(*(STACK[0x3A88] + 4 * v43), 24) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v44)), 8) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v45)), 16);
  v47 = (LODWORD(STACK[0x3C90]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v44)), 16)) ^ __ROR4__(*(STACK[0x3A88] + 4 * v45), 24) ^ *(STACK[0x3A88] + ((v43 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v42)), 8);
  v48 = (v45 >> 22) & 0x3FC;
  v49 = (LODWORD(STACK[0x3C88]) ^ __ROR4__(*(STACK[0x3A88] + 4 * v42), 24)) ^ *(STACK[0x3A88] + ((v44 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v43)), 16) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v45)), 8);
  v50 = (LODWORD(STACK[0x3A60]) ^ *(STACK[0x3A88] + v48)) ^ __ROR4__(*(STACK[0x3A88] + 4 * v44), 24) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v42)), 16) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v43)), 8);
  v51 = (LODWORD(STACK[0x3C80]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v46)), 16)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v47)), 8) ^ *(STACK[0x3A88] + ((v50 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * v49), 24);
  v52 = (LODWORD(STACK[0x3C78]) ^ *(STACK[0x3A88] + ((v46 >> 22) & 0x3FC))) ^ __ROR4__(*(STACK[0x3A88] + 4 * v47), 24) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v49)), 8) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v50)), 16);
  v53 = (LODWORD(STACK[0x3A58]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v47)), 16)) ^ __ROR4__(*(STACK[0x3A88] + 4 * v46), 24) ^ *(STACK[0x3A88] + ((v49 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v50)), 8);
  v54 = (LODWORD(STACK[0x3C70]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v49)), 16)) ^ *(STACK[0x3A88] + ((v47 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * v50), 24) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v46)), 8);
  v55 = (LODWORD(STACK[0x3A50]) ^ *(STACK[0x3A88] + ((v54 >> 22) & 0x3FC))) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v52)), 8) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v53)), 16) ^ __ROR4__(*(STACK[0x3A88] + 4 * v51), 24);
  v56 = (LODWORD(STACK[0x3A48]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v51)), 8)) ^ __ROR4__(*(STACK[0x3A88] + 4 * v52), 24) ^ *(STACK[0x3A88] + ((v53 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v54)), 16);
  LODWORD(v46) = *(STACK[0x3A88] + 4 * v53);
  v57 = (LODWORD(STACK[0x3A40]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v53)), 8)) ^ *(STACK[0x3A88] + ((v52 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v51)), 16) ^ __ROR4__(*(STACK[0x3A88] + 4 * v54), 24);
  v58 = (LODWORD(STACK[0x3C60]) ^ __ROR4__(v46, 24)) ^ *(STACK[0x3A88] + ((v51 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v52)), 16) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v54)), 8);
  v59 = (LODWORD(STACK[0x3A38]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v58)), 16)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v56)), 8) ^ *(STACK[0x3A88] + ((v57 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * v55), 24);
  v60 = (LODWORD(STACK[0x3C58]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v57)), 8)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v56)), 16) ^ *(STACK[0x3A88] + ((v55 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * v58), 24);
  v61 = (LODWORD(STACK[0x3A30]) ^ __ROR4__(*(STACK[0x3A88] + 4 * v57), 24)) ^ *(STACK[0x3A88] + ((v56 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v58)), 8) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v55)), 16);
  LODWORD(v58) = LODWORD(STACK[0x3C50]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v55)), 8) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v57)), 16) ^ *(STACK[0x3A88] + ((v58 >> 22) & 0x3FC));
  v63 = __ROR4__(*(STACK[0x3A88] + 4 * v56), 24);
  v62 = v58 ^ v63;
  v64 = (LODWORD(STACK[0x3A28]) ^ __ROR4__(*(STACK[0x3A88] + 4 * (v58 ^ v63)), 24)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v61)), 16) ^ *(STACK[0x3A88] + ((v60 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v59)), 8);
  LODWORD(v56) = *(STACK[0x3A88] + 4 * v60);
  v65 = (LODWORD(STACK[0x3C28]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v62)), 8)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v60)), 16) ^ *(STACK[0x3A88] + ((v61 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * v59), 24);
  v66 = LODWORD(STACK[0x3C30]) ^ *(STACK[0x3A88] + ((v59 >> 22) & 0x3FC)) ^ (v56 << 8) ^ BYTE3(v56) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v62)), 16) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v61)), 8);
  v67 = (LODWORD(STACK[0x3C20]) ^ __ROR4__(*(STACK[0x3A88] + 4 * v61), 24)) ^ *(STACK[0x3A88] + ((v62 >> 22) & 0x3FC)) ^ (*(v33 + 4 * BYTE1(v59)) << 16) ^ HIWORD(*(v33 + 4 * BYTE1(v59))) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v60)), 8);
  v68 = (LODWORD(STACK[0x3C18]) ^ __ROR4__(*(STACK[0x3A88] + 4 * v66), 24)) ^ *(STACK[0x3A88] + ((v65 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v64)), 16) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v67)), 8);
  v69 = (LODWORD(STACK[0x3C08]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v65)), 8)) ^ *(STACK[0x3A88] + ((v66 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * v64), 24) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v67)), 16);
  v70 = (LODWORD(STACK[0x3C10]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v66)), 8)) ^ __ROR4__(*(STACK[0x3A88] + 4 * v67), 24) ^ *(STACK[0x3A88] + ((v64 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v65)), 16);
  LODWORD(v65) = *(STACK[0x3A88] + 4 * v65);
  LODWORD(v64) = LODWORD(STACK[0x3A20]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v64)), 8);
  v72 = __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v66)), 16);
  v71 = v64 ^ (v65 << 8) ^ BYTE3(v65) ^ *(STACK[0x3A88] + ((v67 >> 22) & 0x3FC)) ^ v72;
  LODWORD(v61) = LODWORD(STACK[0x3A18]) ^ __ROR4__(*(v33 + 4 * (v64 ^ BYTE3(v65) ^ *(v33 + ((v67 >> 22) & 0x3FC)) ^ v72)), 24) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v68)), 16) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v69)), 8);
  LODWORD(v64) = LODWORD(STACK[0x3A10]) ^ __ROR4__(*(STACK[0x3A88] + 4 * v70), 24) ^ *(STACK[0x3A88] + ((v69 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v68)), 8);
  LODWORD(v65) = LODWORD(STACK[0x3A08]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v69)), 16) ^ __ROR4__(*(STACK[0x3A88] + 4 * v68), 24) ^ *(STACK[0x3A88] + ((v71 >> 22) & 0x3FC));
  LODWORD(v60) = v30 + v21;
  v73 = LODWORD(STACK[0x39E0]) ^ STACK[0x3D38] ^ v30;
  v74 = LODWORD(STACK[0x3D30]) ^ v21;
  v75 = LODWORD(STACK[0x3C00]) ^ __ROR4__(*(STACK[0x3A88] + 4 * v69), 24) ^ *(STACK[0x3A88] + ((v68 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v71)), 8);
  LODWORD(v67) = LODWORD(STACK[0x3BF0]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v73)), 16) ^ __ROR4__(*(STACK[0x3A88] + 4 * (LODWORD(STACK[0x3D30]) ^ v21)), 24);
  LODWORD(v21) = v19 ^ (587327944 - v60);
  v76 = LODWORD(STACK[0x39D8]) ^ STACK[0x3D28] ^ v19;
  LODWORD(v68) = v21 - v6;
  v77 = LODWORD(STACK[0x3D20]) ^ v6;
  v78 = v67 ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v76)), 8) ^ *(STACK[0x3A88] + ((v77 >> 22) & 0x3FC));
  v79 = (LODWORD(STACK[0x3BE8]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v77)), 16)) ^ *(STACK[0x3A88] + ((v73 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v74)), 8) ^ __ROR4__(*(STACK[0x3A88] + 4 * v76), 24);
  v80 = v65 ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v70)), 8);
  v81 = (LODWORD(STACK[0x3BE0]) ^ __ROR4__(*(STACK[0x3A88] + 4 * (LOBYTE(STACK[0x3D20]) ^ v6)), 24)) ^ *(STACK[0x3A88] + ((v76 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v73)), 8) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v74)), 16);
  v82 = v75 ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v70)), 16);
  LODWORD(v65) = LODWORD(STACK[0x3BD8]) ^ __ROR4__(*(STACK[0x3A88] + 4 * v73), 24) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v76)), 16);
  v83 = v64 ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v71)), 16);
  v84 = v65 ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v77)), 8) ^ *(STACK[0x3A88] + ((v74 >> 22) & 0x3FC));
  v85 = (LODWORD(STACK[0x3BD0]) ^ __ROR4__(*(STACK[0x3A88] + 4 * v78), 24)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v79)), 8) ^ *(STACK[0x3A88] + ((v81 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v84)), 16);
  v86 = (LODWORD(STACK[0x3BC8]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v81)), 8)) ^ *(STACK[0x3A88] + ((v78 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * v84), 24) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v79)), 16);
  v87 = (LODWORD(STACK[0x3BC0]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v84)), 8)) ^ *(STACK[0x3A88] + ((v79 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v78)), 16) ^ __ROR4__(*(STACK[0x3A88] + 4 * v81), 24);
  v88 = v61 ^ *(STACK[0x3A88] + ((v70 >> 22) & 0x3FC));
  v89 = (LODWORD(STACK[0x3BB8]) ^ *(STACK[0x3A88] + ((v84 >> 22) & 0x3FC))) ^ __ROR4__(*(STACK[0x3A88] + 4 * v79), 24) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v78)), 8) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v81)), 16);
  v90 = (LODWORD(STACK[0x3BB0]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v85)), 8)) ^ *(STACK[0x3A88] + ((v86 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v87)), 16) ^ __ROR4__(*(STACK[0x3A88] + 4 * v89), 24);
  v91 = (LODWORD(STACK[0x3BA8]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v86)), 16)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v89)), 8) ^ *(STACK[0x3A88] + ((v87 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * v85), 24);
  v92 = (LODWORD(STACK[0x3BA0]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v85)), 16)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v86)), 8) ^ __ROR4__(*(STACK[0x3A88] + 4 * v87), 24) ^ *(STACK[0x3A88] + ((v89 >> 22) & 0x3FC));
  LODWORD(v89) = *(STACK[0x3A88] + ((v85 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v87)), 8) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v89)), 16) ^ __ROR4__(*(STACK[0x3A88] + 4 * v86), 24);
  LODWORD(v87) = (v68 - 1671329824) ^ 0x8ADFD703;
  v93 = STACK[0x35D8];
  v94 = LODWORD(STACK[0x3B98]) ^ (v89 + LODWORD(STACK[0x3D18]));
  v95 = (LODWORD(STACK[0x3B90]) ^ __ROR4__(*(STACK[0x3A88] + 4 * v90), 24)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v91)), 8) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v92)), 16) ^ *(STACK[0x3A88] + ((v94 >> 22) & 0x3FC));
  LODWORD(v85) = LODWORD(STACK[0x3B88]) ^ __ROR4__(*(STACK[0x3A88] + 4 * v94), 24) ^ *(STACK[0x3A88] + ((v91 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v90)), 16) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v92)), 8);
  v96 = (LODWORD(STACK[0x3B80]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v94)), 8)) ^ __ROR4__(*(STACK[0x3A88] + 4 * v92), 24) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v91)), 16) ^ *(STACK[0x3A88] + ((v90 >> 22) & 0x3FC));
  v97 = (LODWORD(STACK[0x3B78]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v90)), 8)) ^ __ROR4__(*(STACK[0x3A88] + 4 * v91), 24) ^ *(STACK[0x3A88] + ((v92 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v94)), 16);
  LODWORD(v90) = *(v33 + ((v96 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v95)), 8) ^ HIWORD(*(v33 + 4 * BYTE1(v85))) ^ (*(v33 + 4 * BYTE1(v85)) << 16) ^ __ROR4__(*(STACK[0x3A88] + 4 * v97), 24);
  v98 = (LODWORD(STACK[0x3B68]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v97)), 8)) ^ *(STACK[0x3A88] + 4 * BYTE3(v85)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v96)), 16) ^ __ROR4__(*(STACK[0x3A88] + 4 * v95), 24);
  v99 = (LODWORD(STACK[0x3B60]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v95)), 16)) ^ *(STACK[0x3A88] + ((v97 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * v85), 24) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v96)), 8);
  v100 = (LODWORD(STACK[0x3B58]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v97)), 16)) ^ __ROR4__(*(STACK[0x3A88] + 4 * v96), 24) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v85)), 8) ^ *(STACK[0x3A88] + ((v95 >> 22) & 0x3FC));
  v101 = LODWORD(STACK[0x3B70]) ^ (v90 + LODWORD(STACK[0x3D10]));
  v102 = (LODWORD(STACK[0x3B50]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v100)), 16)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v101)), 8) ^ __ROR4__(*(STACK[0x3A88] + 4 * v98), 24) ^ *(STACK[0x3A88] + ((v99 >> 22) & 0x3FC));
  v103 = (LODWORD(STACK[0x3B48]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v98)), 16)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v100)), 8) ^ *(STACK[0x3A88] + ((v101 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * v99), 24);
  LODWORD(v86) = *(STACK[0x3A88] + 4 * v101);
  v104 = (LODWORD(STACK[0x3B40]) ^ *(STACK[0x3A88] + ((v98 >> 22) & 0x3FC))) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v99)), 8) ^ __ROR4__(*(STACK[0x3A88] + 4 * v100), 24) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v101)), 16);
  v105 = (LODWORD(STACK[0x3B30]) ^ __ROR4__(v86, 24)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v99)), 16) ^ *(STACK[0x3A88] + ((v100 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v98)), 8);
  v106 = (LODWORD(STACK[0x3B28]) ^ *(STACK[0x3A88] + ((v103 >> 22) & 0x3FC))) ^ __ROR4__(*(STACK[0x3A88] + 4 * v102), 24) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v105)), 8) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v104)), 16);
  v107 = (LODWORD(STACK[0x3B20]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v102)), 8)) ^ *(STACK[0x3A88] + ((v104 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v103)), 16) ^ __ROR4__(*(STACK[0x3A88] + 4 * v105), 24);
  v108 = (LODWORD(STACK[0x3B18]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v103)), 8)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v105)), 16) ^ __ROR4__(*(STACK[0x3A88] + 4 * v104), 24) ^ *(STACK[0x3A88] + ((v102 >> 22) & 0x3FC));
  v109 = (LODWORD(STACK[0x3B10]) ^ __ROR4__(*(STACK[0x3A88] + 4 * v103), 24)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v104)), 8) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v102)), 16) ^ *(STACK[0x3A88] + ((v105 >> 22) & 0x3FC));
  v110 = (LODWORD(STACK[0x3B08]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v107)), 8)) ^ *(STACK[0x3A88] + ((v109 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v108)), 16) ^ __ROR4__(*(STACK[0x3A88] + 4 * v106), 24);
  v111 = (LODWORD(STACK[0x3B00]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v108)), 8)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v106)), 16) ^ __ROR4__(*(STACK[0x3A88] + 4 * v109), 24) ^ *(STACK[0x3A88] + ((v107 >> 22) & 0x3FC));
  v112 = (LODWORD(STACK[0x3AF8]) ^ *(STACK[0x3A88] + ((v108 >> 22) & 0x3FC))) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v109)), 16) ^ __ROR4__(*(STACK[0x3A88] + 4 * v107), 24) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v106)), 8);
  LODWORD(v108) = LODWORD(STACK[0x3AF0]) ^ *(STACK[0x3A88] + ((v106 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * v108), 24) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v107)), 16);
  LODWORD(v107) = LODWORD(STACK[0x3BF8]) ^ __ROR4__(*(STACK[0x35D8] + ((v80 >> 22) & 0x3FC)), 8) ^ *(STACK[0x35D8] + 4 * v82) ^ __ROR4__(*(STACK[0x35D8] + 4 * BYTE2(v88)), 16) ^ __ROR4__(*(STACK[0x35D8] + 4 * BYTE1(v83)), 24);
  v113 = v108 ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v109)), 8);
  v114 = LODWORD(STACK[0x3A04]) ^ v87 ^ __ROR4__(*(STACK[0x35D8] + 4 * BYTE1(v88)), 24) ^ *(STACK[0x35D8] + 4 * v83) ^ __ROR4__(*(STACK[0x35D8] + 4 * BYTE2(v80)), 16) ^ __ROR4__(*(STACK[0x35D8] + ((v82 >> 22) & 0x3FC)), 8);
  v115 = (LODWORD(STACK[0x3AE8]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v110)), 16)) ^ *(STACK[0x3A88] + ((v112 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v113)), 8) ^ __ROR4__(*(STACK[0x3A88] + 4 * v111), 24);
  v116 = (LODWORD(STACK[0x3AE0]) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v111)), 8)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v112)), 16) ^ *(STACK[0x3A88] + ((v110 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * v113), 24);
  v117 = (LODWORD(STACK[0x3AD8]) ^ *(STACK[0x3A88] + ((v111 >> 22) & 0x3FC))) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v112)), 8) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v113)), 16) ^ __ROR4__(*(STACK[0x3A88] + 4 * v110), 24);
  v118 = (LODWORD(STACK[0x3AC8]) ^ __ROR4__(*(STACK[0x3A88] + 4 * v112), 24)) ^ *(STACK[0x3A88] + ((v113 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v110)), 8) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE1(v111)), 16);
  LODWORD(v96) = LODWORD(STACK[0x3AAC]) ^ __ROR4__(*(STACK[0x35D8] + 4 * BYTE1(v118)), 24) ^ *(STACK[0x35D8] + 4 * v116);
  LODWORD(v112) = LODWORD(STACK[0x3AA0]) ^ __ROR4__(*(STACK[0x35D8] + 4 * BYTE1(v116)), 24) ^ *(STACK[0x35D8] + 4 * v117) ^ __ROR4__(*(STACK[0x35D8] + 4 * BYTE2(v118)), 16) ^ __ROR4__(*(STACK[0x35D8] + ((v115 >> 22) & 0x3FC)), 8);
  LODWORD(v25) = STACK[0x3D08];
  LODWORD(v113) = (v112 ^ LODWORD(STACK[0x3D08])) % 0x101;
  LODWORD(v26) = LODWORD(STACK[0x3A98]) ^ __ROR4__(*(STACK[0x35D8] + 4 * BYTE2(v117)), 16) ^ __ROR4__(*(STACK[0x35D8] + ((v116 >> 22) & 0x3FC)), 8) ^ __ROR4__(*(STACK[0x35D8] + 4 * BYTE1(v115)), 24) ^ *(STACK[0x35D8] + 4 * v118);
  v119 = STACK[0x39D0];
  LODWORD(v104) = *(STACK[0x39D0] + 4 * (v107 % 0x101)) + ((v107 % 0x101) ^ 0x10279B1A);
  LODWORD(v85) = LODWORD(STACK[0x39F0]) ^ __ROR4__(*(STACK[0x35D8] + 4 * BYTE1(v80)), 24) ^ *(STACK[0x35D8] + 4 * v88) ^ __ROR4__(*(STACK[0x35D8] + ((v83 >> 22) & 0x3FC)), 8);
  v120 = __ROR4__(*(STACK[0x35D8] + 4 * BYTE2(v82)), 16);
  LODWORD(STACK[0x3D50]) = v85 ^ v120;
  LODWORD(v68) = STACK[0x3CF8];
  LODWORD(v85) = v85 ^ v120 ^ LODWORD(STACK[0x3CF8]);
  LODWORD(v116) = LODWORD(STACK[0x3A80]) ^ __ROR4__(*(v93 + 4 * BYTE2(v116)), 16) ^ __ROR4__(*(v93 + 4 * BYTE1(v117)), 24) ^ *(v93 + 4 * v115) ^ __ROR4__(*(v93 + ((v118 >> 22) & 0x3FC)), 8);
  LODWORD(v118) = v116 ^ LODWORD(STACK[0x3CF0]);
  LODWORD(v33) = LODWORD(STACK[0x39E8]) ^ *(v93 + 4 * v80) ^ __ROR4__(*(v93 + 4 * BYTE2(v83)), 16);
  LODWORD(v80) = v104 ^ 0x1B6A8310;
  LODWORD(v115) = (((v113 ^ 0x10279B1A) + *(v119 + 4 * v113)) ^ 0x1B6A8310) + (v96 ^ __ROR4__(*(v93 + 4 * BYTE2(v115)), 16) ^ __ROR4__(*(v93 + ((v117 >> 22) & 0x3FC)), 8)) - (v104 ^ 0x1B6A8310);
  LODWORD(v82) = v33 ^ __ROR4__(*(v93 + 4 * BYTE1(v82)), 24) ^ __ROR4__(*(v93 + ((v88 >> 22) & 0x3FC)), 8);
  LODWORD(v83) = v85 ^ v112 ^ v26 ^ (-1583027987 * (v114 ^ LODWORD(STACK[0x3D00]))) ^ (-1583027987 * (v115 ^ v87));
  LODWORD(v110) = (*(v119 + 4 * ((v87 ^ LODWORD(STACK[0x3D00])) % 0x101)) + (((v87 ^ LODWORD(STACK[0x3D00])) % 0x101) ^ 0x10279B1A)) ^ 0x1B6A8310;
  LODWORD(v117) = v26 + ((*(v119 + 4 * (v82 % 0x101)) + ((v82 % 0x101) ^ 0x10279B1A)) ^ 0xE4957CEF) + (((((v115 ^ v114) % 0x101) ^ 0x10279B1A) + *(v119 + 4 * ((v115 ^ v114) % 0x101))) ^ 0x1B6A8310) - v110 + ((((v118 % 0x101) ^ 0x10279B1A) + *(v119 + 4 * (v118 % 0x101))) ^ 0x1B6A8310) + 1269761133 * ((v87 ^ v25) - (v107 ^ v87 ^ v83)) + 1;
  LODWORD(v33) = v115 + ((*(v119 + 4 * ((v85 ^ v87) % 0x101)) + (((v85 ^ v87) % 0x101) ^ 0x10279B1A)) ^ 0xE4957CEF);
  LODWORD(v112) = (((v117 ^ v87) % 0x101) ^ 0x10279B1A) + *(v119 + 4 * ((v117 ^ v87) % 0x101));
  LODWORD(v88) = (v83 ^ v25) % 0x101;
  v121 = STACK[0x38C0];
  v122 = STACK[0x3D68];
  LODWORD(v25) = STACK[0x38F8];
  v123 = STACK[0x3D58];
  LODWORD(v85) = v33 + (v112 ^ 0x1B6A8310) + 1;
  LODWORD(v112) = (v85 ^ v114) % 0x101;
  LODWORD(v107) = v116 ^ (((STACK[0x3D78] & LODWORD(STACK[0x38C0])) << STACK[0x3D68]) + ((STACK[0x3D78] & LODWORD(STACK[0x38F8])) >> STACK[0x3D58]));
  LODWORD(v33) = *(v119 + 4 * v88);
  LODWORD(v113) = *(v119 + 4 * v112);
  v124 = STACK[0x3D48];
  *(v124 + LODWORD(STACK[0x3DC0])) = BYTE1(v107);
  *(v124 + LODWORD(STACK[0x3DA0])) = BYTE2(v107);
  LODWORD(v27) = STACK[0x3920];
  v125 = STACK[0x38D0];
  v126 = STACK[0x38A0];
  v127 = STACK[0x3D60];
  LODWORD(v104) = v83 ^ ((((LODWORD(STACK[0x3E28]) ^ (2 * (STACK[0x3E28] & v27))) & STACK[0x38D0]) >> v123) + (((LODWORD(STACK[0x3E28]) ^ (2 * (STACK[0x3E28] & v27))) & STACK[0x38A0]) << STACK[0x3D60]));
  *(v124 + LODWORD(STACK[0x3DA8])) = BYTE2(v104);
  v128 = LODWORD(STACK[0x3E30]) ^ (2 * (LODWORD(STACK[0x3E30]) & v27));
  LODWORD(v82) = v118 ^ v82;
  LODWORD(v112) = v80 + v110 + (((v88 ^ 0x10279B1A) + v33) ^ 0xE4957CEF) + (v82 ^ v117) + (((v112 ^ 0x10279B1A) + v113) ^ 0xE4957CEF);
  v129 = STACK[0x3D70];
  LODWORD(v112) = v112 + 2;
  LODWORD(v33) = v82 ^ (((v128 & v126) << v127) + ((v128 & v25) >> STACK[0x3D70])) ^ (v82 >> 7) ^ v112;
  *(v124 + LODWORD(STACK[0x3DB8])) = BYTE1(v33);
  *(v124 + LODWORD(STACK[0x3E00])) = BYTE1(v104);
  v130 = LODWORD(STACK[0x3E38]) ^ (2 * (LODWORD(STACK[0x3E38]) & v27));
  LODWORD(v112) = (v85 + 1118302219 * ((v112 ^ v68) - LODWORD(STACK[0x3D50]))) ^ (((v130 & v121) << v122) + ((v130 & v125) >> v129));
  *(v124 + LODWORD(STACK[0x3DF0])) = BYTE1(v112);
  *(v124 + LODWORD(STACK[0x3DB0])) = BYTE2(v33);
  *(v124 + LODWORD(STACK[0x3DE0])) = v33;
  *(v124 + LODWORD(STACK[0x3E18])) = BYTE3(v33);
  *(v124 + LODWORD(STACK[0x3DF8])) = v107;
  *(v124 + LODWORD(STACK[0x3E10])) = BYTE3(v107);
  *(v124 + LODWORD(STACK[0x3DE8])) = BYTE3(v112);
  *(v124 + LODWORD(STACK[0x3E20])) = v104;
  LODWORD(v119) = STACK[0x3DC8];
  *(v124 + v119) = BYTE3(v104);
  v131 = (v119 + 16) >= LODWORD(STACK[0x4E00]);
  *(v124 + LODWORD(STACK[0x3DD8])) = v112;
  *(v124 + LODWORD(STACK[0x3E08])) = BYTE2(v112);
  v132 = v131;
  v133 = (112 * v132) ^ LODWORD(STACK[0x3CE8]);
  LODWORD(STACK[0x3E28]) = STACK[0x3D98];
  LODWORD(STACK[0x3E30]) = STACK[0x3D88];
  v134 = *(v0 + 8 * v133);
  LODWORD(STACK[0x3E38]) = STACK[0x3D90];
  return v134();
}

uint64_t sub_100D67D14@<X0>(int a1@<W0>, unint64_t a2@<X3>, char a3@<W5>, uint64_t a4@<X8>)
{
  v10 = v7;
  v11 = v5 + v7;
  v12 = *(a4 + (((v11 & 0xFFFFFFF8) + 2050767130) & v4));
  v13 = (v12 + __ROR8__(v11 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x38C8B16AE7056877;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (v17 + v16 - ((v6 ^ 0x254B7F4B6A247C1FLL) & (2 * (v17 + v16))) + 0x12A5BFA5B51207F9) ^ 0xF7250ED839D7E2A8;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0xE1A1FD5BD155F97ALL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0xDA604B0C03A2BF99;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0xFA35E2CDCB3E31C7;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (v26 + v25 - ((2 * (v26 + v25)) & 0x7630068C1246B14ELL) - 0x44E7FCB9F6DCA759) ^ 0x69E80FA029C68B09;
  LODWORD(v11) = -941754499 * ((((__ROR8__(v27, 8) + (v27 ^ __ROR8__(v25, 61))) ^ 0xF4730B31AE70757BLL) >> (a3 & 0x38)) ^ *v11);
  v28 = ((v11 ^ v9) + v10 + (((v11 ^ v9) + v10) >> 16)) >> 8;
  v29 = (v10 + 1431113942 + (v11 ^ v9) - v28 + (((v11 ^ v9) + v10) >> 16)) ^ v11;
  return (*(v8 + 8 * ((29 * (v10 + 1 < a2)) ^ v6)))((v10 - 1431926677 + (v11 ^ v9) - v28 + (((v11 ^ v9) + v10) >> 16)) ^ a1 ^ (v10 - 1431926677 + v29 - ((v29 + v10 + ((v29 + v10) >> 16)) >> 8) + ((v29 + v10) >> 16)));
}

uint64_t sub_100D67F88(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, int a8)
{
  v16 = (STACK[0x3D38] << 24) | (STACK[0x3D30] << 8) | STACK[0x3D48];
  v17 = (STACK[0x3D10] << 24) | (STACK[0x3CE8] << 8) | STACK[0x3CF0];
  STACK[0x3AD8] = STACK[0x3D28] << 16;
  LODWORD(STACK[0x3930]) = v14 >> 8;
  STACK[0x3880] = v15 >> 8;
  STACK[0x38A0] = a6 >> 16;
  STACK[0x3838] = a3 >> 8;
  STACK[0x3848] = v13 >> 16;
  STACK[0x23B0] = (v8 << 24);
  STACK[0x32B8] = a7 >> 16;
  STACK[0x3870] = v16 | (STACK[0x3D58] << 16);
  LODWORD(STACK[0x2158]) = v17 | (STACK[0x3D20] << 16);
  v18 = LODWORD(STACK[0x38F8]) == LODWORD(STACK[0x37F8]);
  LODWORD(STACK[0x3760]) = (v10 << 24) | (a8 << 16);
  v19 = v18;
  STACK[0x3060] = HIBYTE(LODWORD(STACK[0x3CE0]));
  LODWORD(STACK[0x3E38]) = v9 - 1048449475;
  v20 = *(v12 + 8 * (((v9 + 10024) * v19) ^ v9));
  STACK[0x30A0] = STACK[0x30A8];
  STACK[0x3850] = (v11 << 24) | (STACK[0x21E8] << 16);
  return v20();
}

uint64_t sub_100D7D344()
{
  LODWORD(STACK[0x3D20]) = 0;
  v2 = *(v1 + 8 * (v0 - 16828));
  LODWORD(STACK[0x2BB0]) = 12;
  LODWORD(STACK[0x3D98]) = 2;
  v3 = STACK[0x3430];
  STACK[0x3D60] = STACK[0x3430];
  v4 = STACK[0x2618];
  STACK[0x3D88] = STACK[0x2618];
  STACK[0x3B20] = v3;
  STACK[0x3CF0] = v4;
  STACK[0x3650] = LODWORD(STACK[0x3AD8]);
  LODWORD(STACK[0x3AE0]) = STACK[0x39F0];
  v5 = STACK[0x3318];
  LODWORD(STACK[0x3E40]) = STACK[0x3318];
  LODWORD(STACK[0x3688]) = STACK[0x32E0];
  STACK[0x3540] = LODWORD(STACK[0x32D8]);
  v6 = STACK[0x39C0];
  LODWORD(STACK[0x3710]) = STACK[0x39C0];
  LODWORD(STACK[0x3D90]) = v6;
  LODWORD(STACK[0x3CE8]) = v5;
  LODWORD(STACK[0x3810]) = STACK[0x3D80];
  LODWORD(STACK[0x1188]) = STACK[0x3A28];
  LODWORD(STACK[0x3268]) = v6;
  LODWORD(STACK[0x3D70]) = v5;
  return v2(v0);
}

uint64_t sub_100D7D4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, _DWORD *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, unint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x12A0] = 0;
  v66 = STACK[0x3AF0] - 9799;
  *a24 = 0;
  v67 = *(v65 + 8 * v66);
  STACK[0x3D40] = STACK[0x1848];
  STACK[0x3D78] = STACK[0x1840];
  STACK[0x3B20] = STACK[0x1A88];
  STACK[0x3B18] = STACK[0x1A80];
  STACK[0x3790] = STACK[0x3980];
  LODWORD(STACK[0x3CF0]) = STACK[0x2238];
  LODWORD(STACK[0x3D48]) = STACK[0x1A90];
  LODWORD(STACK[0x3CE8]) = STACK[0x28CC];
  LODWORD(STACK[0x39A8]) = STACK[0x1AA8];
  LODWORD(STACK[0x3B00]) = STACK[0x32E8];
  LODWORD(STACK[0x1954]) = STACK[0x2B70];
  LODWORD(STACK[0x3D58]) = STACK[0x2038];
  STACK[0x3D90] = LODWORD(STACK[0x3830]);
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  LODWORD(STACK[0x3AE8]) = STACK[0x2500];
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x3AE0]) = STACK[0x21F4];
  LODWORD(STACK[0x1AD0]) = STACK[0x32D0];
  LODWORD(STACK[0x39E8]) = STACK[0x1BC8];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  LODWORD(STACK[0x2B98]) = STACK[0x3318];
  v68 = LODWORD(STACK[0x3438]);
  STACK[0x33C0] = v68;
  STACK[0x21F8] = v68;
  LODWORD(STACK[0x1C90]) = STACK[0x32D8];
  LODWORD(STACK[0x2B78]) = 1;
  LODWORD(STACK[0x1958]) = 2;
  v69 = STACK[0x448];
  STACK[0x10C8] = STACK[0x448];
  v70 = STACK[0x4A8];
  STACK[0x948] = STACK[0x4A8];
  STACK[0x488] = a65;
  STACK[0x970] = a60;
  STACK[0x940] = STACK[0x10B0];
  STACK[0x10C0] = v69;
  STACK[0x1278] = v70;
  STACK[0x980] = a24;
  LODWORD(STACK[0x20AC]) = STACK[0x23B0];
  LODWORD(STACK[0x424]) = STACK[0x1A78];
  v71 = STACK[0x32E0];
  LODWORD(STACK[0x3798]) = STACK[0x32E0];
  LODWORD(STACK[0x1C30]) = v71;
  HIDWORD(a35) = v71;
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v67(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59);
}

uint64_t sub_100D7D668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, int a57)
{
  *(v65 - 236) = a6;
  *(v65 - 224) = a5;
  v67 = (v58 + v59) >> 16;
  v68 = (v58 + v59 - v67) >> 8;
  v69 = v58 + v57 + v68;
  v70 = (v69 - v67) >> 14;
  v71 = v58 + v68 + v70;
  v72 = (v69 + v70 - v67) >> 6;
  v73 = (v71 + v62 - v72 - v67) >> 13;
  v74 = v58 + ((v71 + v62 - v73 - v72 - v67) >> 4);
  v75 = v74 - ((v64 + v74 + v70 + v68 - v73 - v72 - v67 - v63) >> (LODWORD(STACK[0x364]) + 66)) + v70 + v68;
  v76 = (v75 + a7 - v73 - v72 - v67) >> 6;
  v77 = v75 + v61;
  v78 = (v75 + v61 - v76 - v73 - v72 - v67) >> 15;
  v79 = v75 + v78;
  v80 = v77 + v78;
  v81 = (v80 - v76 - v73 - v72 - v67) >> 3;
  v82 = v80 - v81 - v76 - v73 - v72 - v67 + 1755257154;
  v83 = v82 >> 9;
  v84 = v82 - (v82 >> 9);
  v85 = v79 + (v84 >> 6);
  v86 = (v84 >> 6) + v84 + 1564225671;
  v87 = v86 >> 15;
  v88 = (v86 >> 15) + v86;
  v89 = v85 + v87 + (v88 >> 8);
  v90 = v64 + v89 + (((v88 >> 8) + v88 - 45917739 - (((v88 >> 8) + v88 - 45917739) >> 11)) >> 6) - v81 - v76 - v73 - v72 - v67 - (((v88 >> 8) + v88 - 45917739) >> 11) - v83 - a3;
  v91 = (v90 ^ 0x53A041CE) + ((v90 ^ 0x53A041CE) >> 8) - (((v90 ^ 0x53A041CE) + ((v90 ^ 0x53A041CE) >> 8)) >> 5);
  LODWORD(STACK[0x388]) = a57 + LODWORD(STACK[0x290]);
  v92 = v91 - 49524101 - ((v91 - 49524101) >> 14) + ((v91 - 49524101 - ((v91 - 49524101) >> 14)) >> 2);
  v93 = STACK[0x318];
  *(v65 - 240) = (((LODWORD(STACK[0x368]) ^ LODWORD(STACK[0x318])) ^ LODWORD(STACK[0x39C])) >> 2) & 0x3BACB795;
  v94 = v64 + v71 - v72 - v67 - v60;
  LODWORD(STACK[0x384]) = (v93 >> 2) & 0x3BACB795;
  v95 = v64 + v75 - v76 - v73 - v72 - v67 - v63;
  v96 = v64 + v79 - v81 - v76 - v73 - v72 - v67 - *(v65 - 200);
  v97 = LODWORD(STACK[0x364]);
  STACK[0x210] = v94;
  STACK[0x290] = v90;
  HIDWORD(v104) = (v96 ^ v94 ^ v90) >> 2;
  *(v65 - 232) = v91;
  LODWORD(v104) = ((v64 + v89 - v81 - v76 - v73 - v72 - v67 - v83 - v66) ^ v95 ^ v92) >> 2;
  v98 = LODWORD(STACK[0x394]) ^ *(v65 - 244) ^ 0xC7F3C966;
  v99 = LODWORD(STACK[0x398]) ^ 0x15FEFC9Bu;
  v100 = *(v65 - 248) ^ LODWORD(STACK[0x398]);
  v101 = STACK[0x314];
  *(v65 - 256) = v100;
  LODWORD(STACK[0x398]) = ((v101 ^ v100) >> 2) & 0x3BACB795;
  v102 = *(*(v65 - 184) + 8 * v97);
  LODWORD(STACK[0x394]) = (v101 >> 2) & 0x3BACB795;
  *(v65 - 200) = v98;
  HIDWORD(a44) = (v98 >> 2) & 0x3BACB795;
  return v102(v97, v99, 0x839AC2F1169E83D9, 0x2426A2745C446A63, v91, v92, 3711721862, 2792266831, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, v104, a46, v96, a48);
}

uint64_t sub_100D7DD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, _OWORD *a7)
{
  v10 = v7 + (v8 ^ 0xFFFFFFFFFFFFE858) * a1;
  v11 = *(v10 - 12);
  *(a7 - 1) = *(v10 - 28);
  *a7 = v11;
  v12 = a6 == a1;
  v13 = a1 + 8;
  v14 = v12;
  return (*(v9 + 8 * ((20285 * v14) ^ a5)))(v13);
}

uint64_t sub_100D7DD90@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x3D68]) = 0;
  LODWORD(STACK[0x3AF0]) = 0;
  LODWORD(STACK[0x3A28]) = 0;
  LODWORD(STACK[0x3840]) = 0;
  LODWORD(STACK[0x3848]) = 0;
  LODWORD(STACK[0x3D38]) = 0;
  LODWORD(STACK[0x3D20]) = 0;
  LODWORD(STACK[0x3AA0]) = 0;
  LODWORD(STACK[0x3850]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  LODWORD(STACK[0x3AD8]) = 0;
  LODWORD(STACK[0x3858]) = 0;
  LODWORD(STACK[0x3860]) = 0;
  LODWORD(STACK[0x3D28]) = 0;
  LODWORD(STACK[0x3AE0]) = 0;
  LODWORD(STACK[0x38B0]) = 0;
  LODWORD(STACK[0x3D60]) = 0;
  LODWORD(STACK[0x3AE8]) = 0;
  LODWORD(STACK[0x38B8]) = 0;
  v4 = (v2 - 450501995) & 0x1ADA5EFF;
  v5 = STACK[0x3948];
  v6 = STACK[0x3B18];
  v7 = STACK[0x3B18] >> (v2 + 15);
  v8 = *(v3 + 8 * v2);
  STACK[0x3D98] = v4;
  STACK[0x2D58] = HIDWORD(v6);
  STACK[0x2DB0] = v6 >> 40;
  STACK[0x2D00] = v5;
  STACK[0x3468] = v5 >> 16;
  STACK[0x34E8] = HIBYTE(v5);
  STACK[0x30B0] = a1;
  STACK[0x3BA0] = HIWORD(v6);
  STACK[0x3460] = v6 >> 8;
  STACK[0x2DB8] = v6 >> 16;
  STACK[0x2C68] = v6;
  STACK[0x2D50] = HIDWORD(v5);
  STACK[0x3568] = v5 >> 24;
  STACK[0x2F98] = v7;
  STACK[0x24D0] = v1;
  STACK[0x2870] = STACK[0x3950];
  STACK[0x2D28] = HIWORD(v5);
  LODWORD(STACK[0x3E40]) = 1;
  LODWORD(STACK[0x3D90]) = 1;
  LODWORD(STACK[0x3D88]) = 1;
  LODWORD(STACK[0x3B00]) = 1;
  LODWORD(STACK[0x3B18]) = 1;
  LODWORD(STACK[0x3980]) = 1;
  LODWORD(STACK[0x3988]) = 1;
  LODWORD(STACK[0x3E18]) = 1;
  LODWORD(STACK[0x3B08]) = 1;
  LODWORD(STACK[0x3998]) = 1;
  LODWORD(STACK[0x39A0]) = 1;
  LODWORD(STACK[0x3D80]) = 1;
  LODWORD(STACK[0x3D30]) = 1;
  LODWORD(STACK[0x3B20]) = 1;
  LODWORD(STACK[0x3828]) = 1;
  LODWORD(STACK[0x39E8]) = 1;
  LODWORD(STACK[0x3D78]) = 1;
  LODWORD(STACK[0x3830]) = 1;
  LODWORD(STACK[0x3CF0]) = 1;
  LODWORD(STACK[0x39F0]) = 1;
  LODWORD(STACK[0x3D50]) = 1;
  LODWORD(STACK[0x3838]) = 1;
  return v8();
}

uint64_t sub_100D7DEF0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = STACK[0x3C38];
  v6 = *(STACK[0x3C38] + 5) + 11;
  v7 = STACK[0x3C48];
  v8 = *(STACK[0x3C48] + 14);
  v9 = *(STACK[0x3C38] + 10) << 16;
  v10 = *(STACK[0x3C48] + 18);
  LODWORD(STACK[0x3D68]) = (a4 + 24040) ^ 0x63A8;
  v11 = STACK[0x3C40];
  v12 = *(STACK[0x3C40] + 55);
  v13 = *(&off_101353600 + (a4 ^ 0x16FE));
  v14 = v13 + 807;
  v15 = (*(v13 + 807 + (v6 ^ 0x60)) - (v6 ^ 0xDA)) ^ 0xD4;
  v16 = (*(v13 + 807 + ((((v8 & 0xB) << (((a4 - 24) ^ 0xA8) + 126)) + (v8 ^ 0xB)) ^ 0x60)) - ((((v8 & 0xB) << (((a4 - 24) ^ 0xA8) + 126)) + (v8 ^ 0xB)) ^ 0xFFFFFFDA)) ^ 0xFFFFFFD4;
  v17 = v9 & 0xFFFFFFFFFFFF00FFLL | (((v15 >> 5) | (8 * v15)) << 8);
  v18 = (*(v7 + 36) << 24) | (v10 << 32);
  v19 = v13 + 15;
  v20 = *(v13 + 15 + ((*(STACK[0x3C40] + 49) + 28) ^ 0x63));
  LOBYTE(v10) = (v16 >> 5) | (8 * v16);
  v21 = v17 | v18 | (v12 << 40);
  v22 = (((2 * v5[72]) & 0xEF) + (v5[72] ^ 0xF7));
  v23 = (v22 ^ -v22 ^ (127 - ((((2 * v5[72]) & 0xEF) + (v5[72] ^ 0xF7)) ^ 0x7Fu))) + 127;
  v24 = (v11[104] << 8) | (*(v7 + 76) << 24) | (v11[45] << 32) | *(v7 + 51) | (v11[81] << 16) | ((29 * (v20 ^ (v20 >> 4) ^ 0xB8)) << 40);
  v25 = v13 + ((19 * v5[37]) ^ 0xD4);
  v26 = v13 + 274;
  v27 = (v24 | (*(STACK[0x3C40] + 52) << 48)) + ((v23 ^ 0xD8 ^ *(v26 + (v23 ^ 0x6E))) << 56);
  v28 = *(STACK[0x3C40] + 114) + 11;
  v29 = *(v19 + ((*(STACK[0x3C40] + 56) + 28) ^ 0x63));
  v30 = (v11[28] | (v11[95] << 8) | (v11[75] << 16)) ^ (v11[36] << (v12 & 0x18) << (v12 & 0x18 ^ 0x18));
  HIDWORD(v31) = *(STACK[0x3C40] + 114) + 11;
  LODWORD(v31) = HIDWORD(v31);
  v32 = (29 * ((v29 & 4 | 0x42) ^ v29 & 0xFB ^ ((((v29 & 4 | 0x42) ^ v29 & 0xFB) & 0xF0) >> 4) ^ 0xFE)) | (*(STACK[0x3C40] + 19) << 8);
  v33 = *(v7 + 84);
  v34 = (((((v31 >> 6) & 0x74000001 ^ 0x39098254) >> 26) | (((v31 >> 6) & 0x74000001 ^ 0x39098254) << 6)) ^ 0x42609516) + (((v28 & 0xA2 ^ -(v28 & 0xA2) ^ ((v28 & 0xA2 ^ 0x3DE39B75) + 1038326645 - 2 * (v28 & 0xA2 ^ 0x3DE39B75))) + 1038326645) ^ 0x3DE39B55u);
  v35 = *(v14 + (v34 ^ 0x58)) - (v34 ^ 0xE2);
  v36 = v27 ^ v33;
  v37 = ((v11[50] << 48) | (v11[66] << 40)) ^ (v11[47] | (v5[46] << 16) | (v11[51] << 24) | (v11[48] << 8) | (((((*(v25 + 544) >> 3) | (32 * *(v25 + 544))) ^ (16 * *(v25 + 544)) & 0x50) ^ 0x22u) << 32)) ^ v27 ^ v33 ^ (v11[33] << 56);
  v38 = *(STACK[0x3C40] + 29) << 32;
  v39 = v5[7];
  v40 = (v11[117] << 48) | ((((v35 ^ 0xD4) >> 5) | (8 * (v35 ^ 0xD4))) << 40) | v38 | (v11[35] << 24) | v32 | (v11[8] << 16) | (v11[16] << 56);
  v41 = v21 | v39;
  v42 = ((v11[110] << 48) | (v11[3] << 40) | (v11[22] << 56) | (v11[12] << 32)) ^ v30;
  *(&v43 + 1) = v30;
  *&v43 = v42;
  v44 = __ROR8__((v43 >> 24) ^ 0xAAA707798F0A61ELL, 40);
  v45 = (*(STACK[0x3C40] + 10) << 56) | (v10 << 48) | v41;
  v46 = (v44 ^ 0x6F155854B17D01E0) & (v37 ^ 0xDAAC02F80508353ELL);
  v47 = v37 ^ 0x2553FD07FAF7CAC1;
  v48 = v38 & 0x200000000;
  v49 = v47 & (v36 ^ 0xE1420F03D6B598AALL);
  v50 = v45 ^ v40;
  v51 = (v48 & v42) == 0;
  v52 = v42 ^ 0x28F086A000745B9ELL;
  v53 = v40 & 0xFFFFFFFDFFFFFFFFLL;
  if (!v51)
  {
    v48 = -v48;
  }

  v54 = v53 ^ (v48 + v52);
  v55 = v54 & (v44 ^ 0x90EAA7AB4E82FE1FLL) ^ v47;
  v56 = v50 ^ v49;
  v57 = (v50 ^ 0x577BEDF424D0B777) & (v36 ^ 0x1EBDF0FC294A6755) ^ v54;
  v58 = (v50 ^ 0xA884120BDB2F4888) & ~v54;
  v59 = v36 ^ v46 ^ 0x3FAF59AE2A1B0838 ^ v56;
  v60 = ((v55 ^ 0x2F1DDEDDB4E871E7 | 0x3BB96F6B29EDBC09) - (v55 ^ 0x14A4B1B69D05CDEELL)) ^ 0xC4469094D61243F6;
  v61 = v56 ^ 0x226E8C50B53CDE22 ^ v57;
  if (*(STACK[0x3C40] + 114) == 0xF5)
  {
    v60 = -1;
  }

  v62 = v60 & (v55 ^ 0x2F1DDEDDB4E871E7);
  v63 = v44 ^ v58 ^ v55 ^ 0xD5BCEAB89D1A60ALL;
  v64 = v57 ^ 0x80767966D7909204;
  v65 = (v57 ^ 0x80767966D7909204) >> 7;
  v66 = v61 ^ __ROR8__(v61, 19) ^ (v61 >> 28);
  v67 = v59 ^ __ROR8__(v59, 61) ^ (v59 >> 39) ^ (v59 << 25);
  v68 = v64 ^ (v64 << 23) ^ (v65 ^ (v64 >> 41) | (v64 << 57));
  v69 = (v66 & 0x107DFAF52BB3954FLL ^ (v61 << 36) & 0x107DFAF000000000 | v66 & 0xEF82050AD44C6AB0 ^ (v61 << 36) & 0xEF82050000000000) ^ v68;
  v70 = v62 ^ __ROR8__(v62, 1) ^ (v62 >> 6) ^ (v62 << 58);
  v71 = v70 ^ v67;
  v72 = v63 ^ __ROR8__(v63, 10) ^ __ROR8__(v63, 17);
  v73 = v68 ^ v72;
  v74 = v72 | ~(v70 ^ v67);
  v75 = v70 ^ v67 ^ ~v72;
  v76 = v70 & ~v67 ^ v69;
  v77 = v76 ^ v67 ^ (v74 + v75 - 2 * v75);
  v78 = v77 - 0x4D381BEE23278721 - ((2 * v77) & 0x658FC823B9B0F1BELL);
  v79 = v71 ^ (__ROR8__(__ROR8__(v72, 54) ^ 0x4F586497339A98B5, 10) ^ 0xD2AC29E6DA331959) & v73;
  v80 = (__ROR8__(__ROR8__(v73, 6) ^ 0x827241387C5496D5, 58) ^ 0x636FB1E0EADA4A9FLL) & v69 ^ v72 ^ v79;
  v81 = (v78 >> 16) & 0xFFFFFF800000 ^ __ROR8__(v78 ^ __ROR8__(v78, 61), 41);
  v82 = v78 << (v80 & 0x19) << (v80 & 0x19 ^ 0x19);
  v83 = __ROR8__(v81 ^ 0xB98FF037513598AALL, 23) ^ 0x6B3155731FE06EA2;
  v84 = v83 & 0x10000000000;
  if ((v83 & 0x10000000000 & v82) != 0)
  {
    v84 = -v84;
  }

  v51 = (v8 & 0xB) == 0;
  v85 = (__ROR8__(__ROR8__(v69, 33) ^ 0x9A2C573B3F94E2F1, 31) ^ 0x80D63A1CCBA75189) & v67 ^ v73;
  v86 = v76 ^ 0x60FE4233828F9CD7 ^ v85;
  v87 = __ROR8__(__ROR8__(v79, 43) ^ 0x82122B9F681AF500, 21) ^ 0x1327F4761A5E7555;
  v88 = v87 ^ __ROR8__(v87, 1) ^ (v87 >> 6) ^ (v87 << 58);
  v89 = v85 ^ 0xC011A0C5A9A651FDLL ^ __ROR8__(v85 ^ 0xC011A0C5A9A651FDLL, 7) ^ ((v85 ^ 0xC011A0C5A9A651FDLL) >> 41) ^ ((v85 ^ 0xC011A0C5A9A651FDLL) << 23);
  v90 = v86 ^ __ROR8__(v86, 19) ^ (v86 >> 28) ^ (v86 << 36) ^ v89;
  v91 = v80 ^ 0xF56C8D768DBE09C0 ^ __ROR8__(v80 ^ 0xF56C8D768DBE09C0, 10) ^ ((v80 ^ 0xF56C8D768DBE09C0) >> 17) ^ ((v80 ^ 0xF56C8D768DBE09C0) << 47);
  v92 = v89 ^ v91;
  v93 = (v84 + v82) ^ v83 & 0xFFFFFEFFFFFFFFFFLL;
  v94 = v93 ^ v88;
  v95 = v91 & ~(v93 ^ v88);
  v96 = v88 & ~v93 ^ v90;
  v97 = v89 & ~v91;
  v98 = __ROR8__(__ROR8__((v93 & ~v90 ^ v89 ^ v91) & 0xA2C15A474059D794, 45) ^ 0x47E167049EC05CFCLL, 19) ^ 0xB9F88FC2CE093D8 | (v93 & ~v90 ^ v89 ^ v91) & 0x5D3EA5B8BFA6286BLL;
  v99 = v94 ^ v97;
  v100 = v91 ^ 0xA8835A255A0C3308 ^ v90 & ~v92;
  v101 = v95 + v93 - 2 * (v95 & v93);
  v102 = v96 ^ 0x57004D1FACBBE423 ^ v98;
  v103 = v101 ^ v96;
  v104 = v102 ^ __ROR8__(v102, 19) ^ (v102 >> 28);
  v105 = ((v103 ^ 0x9000E2BDD87911ECLL ^ v104) + (v103 ^ 0x9000E2BDD87911ECLL) - 2 * ((v103 ^ 0x9000E2BDD87911ECLL ^ v104) & (v103 ^ 0x9000E2BDD87911ECLL))) ^ v103 ^ 0x9000E2BDD87911ECLL ^ v104;
  v106 = (8 * v105) ^ ((v103 ^ 0x9000E2BDD87911ECLL) >> 39);
  v107 = v100 ^ v99;
  v108 = v107 ^ __ROR8__(v107, 10) ^ (v107 >> 17);
  v109 = v108 ^ (v107 << 47);
  v110 = (v106 ^ __ROR8__(__ROR8__((((2 * (0xB0C7791D0FCE49DDLL - v106)) & 0x9E710DC5E0636C46) + ((0xB0C7791D0FCE49DDLL - v106) ^ 0x4F3886E2F031B623)) ^ ((v106 ^ v105) + v105 - 2 * (v106 ^ v105)), 50) ^ 0x6BF6C5B3A32373AFLL, 14) ^ 0xCEBDAFDB16CE8C8DLL) + v105;
  v111 = (v103 >> 61) ^ 4;
  v112 = v105 << (v39 & 0x19) << (v39 & 0x19 ^ 0x19);
  v113 = v99 ^ 0xE0B5FD8498E69A8FLL ^ __ROR8__(v99 ^ 0xE0B5FD8498E69A8FLL, 1) ^ ((v99 ^ 0xE0B5FD8498E69A8FLL) >> 6) ^ ((v99 ^ 0xE0B5FD8498E69A8FLL) << 58);
  v114 = v110 ^ -v110 ^ (v111 - (v110 ^ v111));
  if (v51)
  {
    v115 = -1;
  }

  else
  {
    v115 = v109;
  }

  v116 = v98 ^ 0xA56DF59961F9EB29;
  v117 = (v114 + v111) ^ v112;
  *(&v118 + 1) = v116 ^ (v116 >> 7);
  *&v118 = v116;
  v119 = v117 ^ v113;
  v120 = __ROR8__(__ROR8__(v116, 4) & 0xF000000000000007 ^ (v118 >> 61) ^ 0xB94F00F6FA6CEC82, 3) ^ __ROR8__(v116, 41);
  v121 = v113 & ~v117;
  v122 = v104 ^ (v102 << 36) ^ v120;
  v123 = v120 ^ v109;
  v124 = v117 & (v122 ^ 0xA8D61FE120B2626FLL);
  v125 = v121 ^ v122;
  v126 = v125 ^ v117 ^ (v119 ^ v115) & v109;
  v127 = v124 ^ v123 ^ 0x5729E01EDF4D9D90;
  v128 = (v122 ^ 0x5729E01EDF4D9D90) & (v123 ^ 0xA8D61FE120B2626FLL);
  v129 = v119 ^ (v123 ^ 0x5729E01EDF4D9D90) & ~v109;
  v130 = v126 ^ 0x47D68F68B961EF8BLL;
  v131 = v127 & 0xFFFFFFFFFFFFDFFFLL ^ v125 ^ (v127 & 0x2000 | 0xB075637FF86EDED1);
  v132 = (v126 ^ 0x47D68F68B961EF8BuLL) >> 61;
  v133 = (0xC000000000000000 - (v126 ^ 0x87D68F68B961EF8BLL)) ^ -(v126 ^ 0x47D68F68B961EF8BLL);
  v134 = v128 ^ v109 ^ v129;
  v135 = ((v130 >> 39) | 0x8000000000000000) ^ (v130 << 25) ^ (v132 + v130 - 2 * (v132 & v130)) ^ (8 * ((v133 ^ -v133 ^ (v130 - (v133 ^ v130))) + v130));
  v136 = v134 - 0x1C0A3217A913CE0CLL - ((2 * v134) & 0xC7EB9BD0ADD863E8);
  v137 = v136 >> (v108 & 0xA) >> (v108 & 0xA ^ 0xA);
  *(&v118 + 1) = v131;
  *&v118 = v131 ^ 0x5729E01EDF4D9D90;
  v138 = v127 ^ 0xFE1A666B801A7B6BLL;
  v139 = v136 << 47;
  v140 = ((v129 ^ 0xB5E1BAB0C0767A80) >> (v104 & 6) >> (v104 & 6 ^ 6)) ^ (v129 << 58) ^ ((v129 ^ 0xB5E1BAB0C0767A80 ^ ((v129 ^ 0xB5E1BAB0C0767A80) >> 1) | (v129 << 63)) + ((v129 ^ 0xB5E1BAB0C0767A80) & (v129 << 63))) ^ v135;
  v141 = v138 ^ __ROR8__(v138, 7) ^ (v138 >> 41) ^ (v138 << 23);
  v142 = v141 ^ v131 ^ 0x5729E01EDF4D9D90 ^ (v118 >> 19) ^ ((v131 ^ 0x5729E01EDF4D9D90) >> 28) ^ ((v131 ^ 0x5729E01EDF4D9D90) << 36);
  v143 = v137 ^ v136 ^ ((v136 >> 17) | (v136 << 54));
  v144 = v143 ^ -v143 ^ (v139 - (v143 ^ v139));
  v145 = (v144 ^ v139) + 2 * (v144 & v139);
  *&v118 = __ROR8__(v145 ^ v141 ^ (v135 ^ 0x8000000000000000) & (v142 ^ 0x4C4DFFFFFFFFFFFFLL), 4);
  v146 = (v140 ^ 0x8000000000000000) & (v135 ^ 0x7FFFFFFFFFFFFFFFLL) ^ v142 ^ 0xB3B2000000000000;
  v147 = (v142 ^ 0xB3B2000000000000) & ~(v145 ^ v141);
  v148 = v141 & ~v145 ^ v140 ^ 0x8000000000000000;
  v149 = (((v118 ^ 0xEC001FBDD4A63C36) >> 60) - 4 * ((v118 ^ 0xEC001FBDD4A63C36) >> 61) - 0x3FFE0422B59C3C92) ^ (16 * (v118 ^ 0xEC001FBDD4A63C36));
  v150 = v135 ^ v145 & (v140 ^ 0x7FFFFFFFFFFFFFFFLL) ^ v146 ^ 0xB1B470D1354D2C47;
  v151 = v145 ^ 0x534E65AA943B8652 ^ v147 ^ v148;
  *(&v118 + 1) = v148;
  *&v118 = v148 ^ 0xB42A0101DA2E0940;
  v152 = v150 ^ __ROR8__(v150, 61) ^ (v150 >> 39) ^ (v150 << 25);
  v153 = v148 ^ 0xB42A0101DA2E0940 ^ (v148 << 58) ^ (v118 >> 1) ^ __ROR8__(__ROR8__(v148, 61) & 0xFFFFFFFFFFFFFE07 ^ 0xA150080ED1704A05, 9);
  v154 = v153 ^ v152;
  v155 = v149 ^ 0xFC0FD342612AEF56 ^ __ROR8__(v149 ^ 0xFC0FD342612AEF56, 7) ^ ((v149 ^ 0xFC0FD342612AEF56) >> 41) ^ ((v149 ^ 0xFC0FD342612AEF56) << 23);
  v156 = v151 ^ (v151 << 47) ^ (v151 >> 10) ^ ((v151 >> 17) | (v151 << 54));
  v157 = v146 ^ 0x77B2656CE098F723 ^ v149 ^ __ROR8__(v146 ^ 0x77B2656CE098F723 ^ v149, 19) ^ ((v146 ^ 0x77B2656CE098F723 ^ v149) >> 28) ^ ((v146 ^ 0x77B2656CE098F723 ^ v149) << 36) ^ v155;
  *&v118 = __ROR8__(v157, 28);
  v158 = v157 & ~(v155 ^ v156);
  v159 = v157 ^ v153 & ~v152;
  v160 = v152 ^ 0x757ECFD29D953023 ^ v156 & ~(v153 ^ v152) ^ v159;
  v161 = (__ROR8__(v118 ^ 0xE76B48E811485828, 36) ^ 0x7EEB7A7D71894B71) & v152 ^ v155 ^ v156;
  v162 = v159 ^ 0xA3F147030A5D2225 ^ v161;
  v163 = v155 & ~v156 ^ v154;
  v161 ^= 0x29FF9B2D20B28786uLL;
  v164 = (((v158 ^ v156 ^ v163) - (v158 ^ v156 ^ v163 ^ 0xC76FDFB12E63C7F9)) ^ 0xFFFFFFFFFFFFFFFELL) + (v158 ^ v156 ^ v163);
  v165 = v164 << 47;
  v166 = ((v162 ^ (v162 >> 19)) + (v162 << 45) - 2 * ((v162 << 45) & v162)) ^ (v162 >> 28);
  v167 = v166 ^ (v162 << 36);
  v5[7] = v162 ^ (v162 >> 19) ^ (v162 >> 28);
  v168 = ((v164 >> 17) ^ (v164 >> 10) | (v164 << 54)) ^ v164;
  v11[55] = BYTE5(v167);
  v169 = (v161 >> 41) | (v161 << 57);
  v5[5] = (v162 ^ (v162 >> 19) ^ (v162 >> 28)) >> 8;
  v170 = v161 ^ (v161 << 23) ^ (v161 >> 7);
  *(v7 + 14) = BYTE6(v167);
  v171 = v168 & 0x3E5BCB06EB6B3D26 ^ v165 & 0x3E5B800000000000 | v168 & 0xC1A434F91494C2D9 ^ v165 & 0xC1A4000000000000;
  v11[10] = HIBYTE(v167);
  v5[10] = (v162 ^ (v162 >> 19) ^ (v162 >> 28)) >> 16;
  *(v7 + 18) = BYTE4(v167);
  v172 = v160 ^ __ROR8__(v160, 61) ^ (v160 >> 39);
  *(&v118 + 1) = v163;
  *&v118 = v163 ^ 0x4ECCF2CB23C9FAB2;
  v173 = v172 ^ (v160 << 25);
  *(v7 + 36) = BYTE3(v166);
  v11[45] = BYTE4(v173);
  v11[81] = BYTE2(v172);
  *(v7 + 76) = (v172 ^ (v160 << 25)) >> 24;
  v174 = (v118 >> 1) ^ v163 ^ 0x4ECCF2CB23C9FAB2 ^ ((v163 ^ 0x4ECCF2CB23C9FAB2) >> 6);
  *(v7 + 51) = v172;
  v11[49] = BYTE5(v173);
  v11[104] = BYTE1(v172);
  LODWORD(v172) = *(v19 + ((BYTE6(v173) + 28) ^ 0x63));
  v5[72] = HIBYTE(v173);
  v11[52] = 29 * (v172 ^ (v172 >> 4) ^ 0xB8);
  LOBYTE(v173) = *(v14 + ((((v118 >> 1) ^ v163 ^ 0xB2 ^ ((v163 ^ 0x4ECCF2CB23C9FAB2) >> 6)) + 11) ^ 0x60));
  v11[48] = BYTE1(v174);
  v5[46] = BYTE2(v174);
  v11[51] = ((v118 >> 1) ^ v163 ^ 0x23C9FAB2 ^ ((v163 ^ 0x4ECCF2CB23C9FAB2) >> 6)) >> 24;
  LOBYTE(v166) = (v173 - ((((v118 >> 1) ^ v163 ^ 0xB2 ^ ((v163 ^ 0x4ECCF2CB23C9FAB2) >> 6)) + 11) ^ 0xDA)) ^ 0xD4;
  v11[66] = BYTE5(v174);
  v11[50] = BYTE6(v174);
  v11[47] = (v166 >> 5) | (8 * v166);
  v5[37] = BYTE4(v174);
  v175 = *(v19 + ((((v174 ^ ((v163 ^ 0x4ECCF2CB23C9FAB2) << 58)) >> 56) + 28) ^ 0x63));
  if ((v175 & 4) != 0)
  {
    v176 = -4;
  }

  else
  {
    v176 = 4;
  }

  v11[28] = v171;
  v11[33] = 29 * ((v176 + (v175 ^ 0x42)) ^ (v175 >> 4) ^ 0xFE);
  v177 = *(v26 + ((BYTE1(v171) - 9) ^ 0x11));
  v11[75] = BYTE2(v171);
  v178 = v170 ^ v169;
  v11[95] = v177 ^ (BYTE1(v171) - 9) ^ 0xA7;
  v11[36] = *(v26 + (((((BYTE3(v171) - 9) - ((BYTE3(v171) - 9) ^ 0x7F)) ^ 0xFFFFFFFE) + (BYTE3(v171) - 9)) ^ 0x6ELL)) ^ (((BYTE3(v171) - 9 - ((BYTE3(v171) - 9) ^ 0x7F)) ^ 0xFE) + BYTE3(v171) - 9) ^ 0xD8;
  v179 = *(v14 + ((BYTE4(v171) + 11) ^ 0x60)) - ((BYTE4(v171) + 11) ^ 0xDA);
  v11[3] = BYTE5(v171);
  v11[110] = BYTE6(v171);
  v180 = v179 ^ 0xD4;
  if ((((v170 ^ v169) + 11) & 0x40) != 0)
  {
    v181 = -64;
  }

  else
  {
    v181 = 64;
  }

  v11[12] = (v180 >> 5) | (8 * v180);
  v11[22] = HIBYTE(v171);
  LODWORD(v182) = __ROR4__((v181 + (((v170 ^ v169) + 11) ^ 0x38)) ^ 0xFDC752AB, 19) ^ 0xEA557FB8;
  HIDWORD(v182) = v182;
  v183 = (*(v14 + ((v182 >> 13) ^ 0x18)) ^ 0x80) - (((v170 ^ v169) + 11) ^ 0xDA);
  v11[114] = v178 >> (BYTE1(v171) & 0x28) >> (BYTE1(v171) & 0x28 ^ 0x28u);
  v11[117] = BYTE6(v170);
  STACK[0x3D10] = ((v167 - (v167 ^ 0xD62C6898F853D4B7)) ^ 0xFFFFFFFFFFFFFFFELL) + v167;
  v11[29] = BYTE4(v170);
  v11[35] = BYTE3(v170);
  v11[16] = HIBYTE(v178);
  v11[8] = BYTE2(v178);
  v11[56] = ((v183 ^ 0x54) >> 5) | (8 * (v183 ^ 0x54));
  v11[19] = BYTE1(v178);
  *(v7 + 84) = v33 + 1;
  v184 = (7 * (STACK[0x3E18] & 1)) ^ a4;
  LODWORD(STACK[0x3E40]) = STACK[0x3D98];
  return (*(v4 + 8 * v184))();
}

uint64_t sub_100D7F0B0()
{
  v4 = STACK[0x3D18];
  v4[198] = BYTE1(v2);
  v4[197] = v2 >> ((v0 + 60) ^ 0x4F);
  v4[199] = v2;
  v5 = v1 < LODWORD(STACK[0x3E18]);
  v4[196] = HIBYTE(v2);
  return (*(v3 + 8 * ((26206 * v5) ^ v0)))();
}

uint64_t sub_100D7F15C@<X0>(int a1@<W8>)
{
  v6 = v1;
  v7 = 1917435887 * ((~((v5 - 216) | 0x4FC3DA9557A3C5F0) + ((v5 - 216) & 0x4FC3DA9557A3C5F0)) ^ 0x653749944EE76109);
  v8 = a1 - 318702008 + v7;
  *(v5 - 216) = v8 - 21;
  *(v5 - 192) = v8;
  STACK[0x790] = v6;
  *(v5 - 208) = v6 + v7;
  *(v5 - 172) = v7;
  *(v5 - 184) = v3 ^ v7;
  *(v5 - 200) = 1988851091 - v7 + a1;
  *(v5 - 196) = v7 ^ (a1 - 318702008) ^ 0xE4E;
  v9 = (*(v2 + 8 * (v4 + a1 + 48)))(v5 - 216);
  return (*(v2 + 8 * *(v5 - 176)))(v9);
}

uint64_t sub_100D7F220()
{
  v2 = *(*STACK[0x3E40] + ((*v0 & ((STACK[0x4060] & 0xFFFFFFF8) - 1831847764)) & 0xFFFFFFFFFFFFFFF8));
  v3 = __ROR8__(STACK[0x4060] & 0xFFFFFFFFFFFFFFF8, 8);
  v4 = (((2 * (v3 + v2)) & 0xA918D17DEAA86B88) - (v3 + v2) - 0x548C68BEF55435C5) ^ 0x69DCA9EB355A72DFLL;
  v5 = v4 ^ __ROR8__(v2, 61);
  v6 = (__ROR8__(v4, 8) + v5) ^ 0x65F254DD188DB4FCLL;
  v7 = __ROR8__(v6, 8);
  v8 = v6 ^ __ROR8__(v5, 61);
  v9 = (((2 * (v7 + v8)) & 0xEAD3C9C5C5F67A08) - (v7 + v8) - 0x7569E4E2E2FB3D05) ^ 0xE5665D8B7C1DD076;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0xA1B29DC5D776132BLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (v13 + v12 - ((2 * (v13 + v12)) & 0x1AE078FBD733DA90) + 0xD703C7DEB99ED48) ^ 0xE2741C3C1E7CA5A4;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xD8C7B31FCA19D9DELL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0x5455012E8AB1C38FLL;
  LOBYTE(v17) = (((__ROR8__(v18, 8) + (v18 ^ __ROR8__(v17, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> (8 * (STACK[0x4060] & 7u))) ^ LOBYTE(STACK[0x3F17]);
  LOBYTE(v17) = (((v17 ^ 0x9F) + 125) ^ ((v17 ^ 0x3D) - 33) ^ ((v17 ^ 0xA2) + 66)) + 95;
  v19 = STACK[0x37D0] + (v17 - 44 * ((187 * v17) >> 13));
  STACK[0x4068] = v19;
  v20 = *(v1 + 8 * (STACK[0x3C28] + 18394));
  STACK[0x3F18] = v19;
  STACK[0x3F08] = v20;
  return (*(v1 + 8 * (LODWORD(STACK[0x28B4]) ^ 0x36E8)))();
}

uint64_t sub_100D7F468()
{
  v2 = 920 * (v0 ^ 0x3EA1);
  v3 = STACK[0x3888];
  LODWORD(STACK[0x39A0]) = LODWORD(STACK[0x3888]) - 370204972;
  v4 = STACK[0x37F0];
  LODWORD(STACK[0x3998]) = 1384109214 - LODWORD(STACK[0x37F0]);
  v5 = STACK[0x37C0];
  LODWORD(STACK[0x3A28]) = -1792198341 - LODWORD(STACK[0x37C0]);
  v6 = STACK[0x37E8];
  LODWORD(STACK[0x3960]) = ((v0 - 10184) ^ 0xE5FB14BD) + LODWORD(STACK[0x37E8]);
  LODWORD(STACK[0x3818]) = v2;
  v7 = STACK[0x3890];
  LODWORD(STACK[0x3980]) = (v2 ^ 0x362EBFA6) - LODWORD(STACK[0x3890]);
  v8 = STACK[0x37C8];
  STACK[0x3900] = (-2079398906 - LODWORD(STACK[0x37C8]));
  v9 = v6 - (v4 - 527623131);
  v10 = STACK[0x37D8];
  LODWORD(STACK[0x3988]) = LODWORD(STACK[0x37D8]) - 2059861977;
  v11 = v8 + 1524381730;
  v12 = (v10 ^ 0x3238492B) + v4 - 527623131;
  LODWORD(STACK[0x39E8]) = v11 - v3 - 653668755;
  v13 = STACK[0x3948];
  LODWORD(STACK[0x39F0]) = STACK[0x3948] + 270711807;
  v14 = v4 ^ v5 ^ (v9 + 1524381730);
  LODWORD(STACK[0x3AD8]) = v3 + (v7 ^ 0x3238492B) + 1952197590;
  LODWORD(STACK[0x3B08]) = v14 - 782001963;
  LODWORD(STACK[0x3AE8]) = 121002203 - v12;
  LODWORD(STACK[0x3AA0]) = 1016803275 - v9;
  LODWORD(STACK[0x3AF0]) = v4 + 1952086643;
  v15 = v14 + v9 + 1524381730 + v12;
  v16 = (v11 - v3 + 527623131) ^ v3 ^ v13;
  v17 = LODWORD(STACK[0x37F8]) != 0;
  LODWORD(STACK[0x3AE0]) = -1423352008 - v3;
  LODWORD(STACK[0x3B00]) = -1971506108 - v16;
  v18 = (v3 - 1505480198 - (v16 + (v7 ^ 0x3238492B) + v11)) ^ ((v7 ^ 0x3238492Bu) + v11);
  return (*(v1 + 8 * (v0 ^ ((4 * v17) | (8 * v17)))))(v18, (v15 - 2030235020), v18 ^ (v11 - v3 - 318066722));
}

uint64_t sub_100D7F6C4@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x39F0]) = 0;
  LODWORD(STACK[0x3848]) = 0;
  LODWORD(STACK[0x3850]) = 0;
  LODWORD(STACK[0x3D50]) = 0;
  LODWORD(STACK[0x3838]) = 0;
  LODWORD(STACK[0x3840]) = 0;
  LODWORD(STACK[0x3820]) = 0;
  STACK[0x3708] = (LODWORD(STACK[0x2B08]) - v2) ^ 0xFFFFFFD6;
  STACK[0x3B18] = v2 >> (((a1 + 118) & 0xDEu) + 106);
  v3 = *(v1 + 8 * a1);
  LODWORD(STACK[0x3D30]) = 1;
  LODWORD(STACK[0x3B20]) = 1;
  LODWORD(STACK[0x3A28]) = 1;
  LODWORD(STACK[0x3AA0]) = 1;
  LODWORD(STACK[0x3D88]) = 1;
  LODWORD(STACK[0x38B0]) = 1;
  LODWORD(STACK[0x3CF0]) = 1;
  LODWORD(STACK[0x3AE0]) = 1;
  LODWORD(STACK[0x3D90]) = 1;
  LODWORD(STACK[0x38B8]) = 1;
  LODWORD(STACK[0x3AE8]) = 1;
  LODWORD(STACK[0x3E18]) = 1;
  LODWORD(STACK[0x3D38]) = 1;
  LODWORD(STACK[0x3D20]) = 1;
  LODWORD(STACK[0x3AF0]) = 1;
  LODWORD(STACK[0x3980]) = 1;
  LODWORD(STACK[0x3E40]) = 1;
  LODWORD(STACK[0x3800]) = 1;
  LODWORD(STACK[0x3988]) = 1;
  LODWORD(STACK[0x3D78]) = 1;
  LODWORD(STACK[0x3808]) = 1;
  LODWORD(STACK[0x3D28]) = 1;
  LODWORD(STACK[0x3B00]) = 1;
  LODWORD(STACK[0x3998]) = 1;
  LODWORD(STACK[0x3810]) = 1;
  LODWORD(STACK[0x3D58]) = 1;
  LODWORD(STACK[0x39A0]) = 1;
  LODWORD(STACK[0x3818]) = 1;
  LODWORD(STACK[0x3828]) = 1;
  LODWORD(STACK[0x3B08]) = 1;
  LODWORD(STACK[0x39E8]) = 1;
  LODWORD(STACK[0x3830]) = 1;
  LODWORD(STACK[0x3D60]) = 1;
  LODWORD(STACK[0x3AD8]) = 1;
  LODWORD(STACK[0x3858]) = 1;
  LODWORD(STACK[0x3860]) = 1;
  LODWORD(STACK[0x3D70]) = 1;
  return v3();
}

uint64_t sub_100D7F8B4@<X0>(unsigned int a1@<W8>)
{
  STACK[0x3CB8] = a1;
  v2 = STACK[0x3D60];
  v3 = (846 * (LODWORD(STACK[0x3D60]) ^ 0x59C3)) ^ 0x10E1;
  v4 = LODWORD(STACK[0x3D80]) - 16959;
  LODWORD(STACK[0x3D78]) = v3;
  v5 = v3 + v4;
  v6 = STACK[0x70FC];
  LODWORD(STACK[0x3BF8]) = v5;
  return (*(v1 + 8 * ((56 * (v6 < v5)) ^ v2)))();
}

uint64_t sub_100D7FC38@<X0>(char a1@<W3>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v8 = *(v7 + a3);
  v9 = v8 + 2 * a1;
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  *(v7 + a3) = v10 ^ v8;
  return (*(v6 + 8 * (((2 * (v3 + a3 != a2)) | (16 * (v3 + a3 != a2))) ^ v5)))();
}

uint64_t sub_100D7FD24(uint64_t a1, int a2)
{
  *v3 = a2;
  LODWORD(STACK[0x39A8]) += (v2 - 1507128190) & 0x59D4DD7F ^ 0x1D6F;
  return (*(v4 + 8 * v2))();
}

uint64_t sub_100D7FD60()
{
  v3 = STACK[0x3850] < LODWORD(STACK[0x3E18]);
  *(STACK[0x3B38] + 1821) = bswap32(v0);
  return (*(v2 + 8 * ((v3 * (((v1 - 17738) | 0x2080) - 8434)) ^ v1)))();
}

uint64_t sub_100D80068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  v5 = *(v4 + 8 * (v3 - 10147));
  LODWORD(STACK[0x3CF0]) = 62;
  LODWORD(STACK[0x3D88]) = 2;
  v6 = STACK[0x4A8];
  STACK[0x3D40] = STACK[0x4A8];
  v7 = STACK[0x1BE8];
  STACK[0x3D78] = STACK[0x1BE8];
  STACK[0x3B20] = v6;
  STACK[0x3B18] = v7;
  STACK[0x3818] = LODWORD(STACK[0x3988]);
  LODWORD(STACK[0x1204]) = STACK[0x39A0];
  LODWORD(STACK[0x2134]) = STACK[0x36B8];
  v8 = STACK[0x3820];
  LODWORD(STACK[0x3688]) = STACK[0x2B30];
  LODWORD(STACK[0x3858]) = STACK[0x2B40];
  LODWORD(STACK[0x3B00]) = STACK[0x2B88];
  LODWORD(STACK[0x1954]) = v8;
  LODWORD(STACK[0x1A78]) = STACK[0x3268];
  LODWORD(STACK[0x3AE8]) = STACK[0x3998];
  LODWORD(STACK[0x3AE0]) = STACK[0x2B60];
  LODWORD(STACK[0x3810]) = STACK[0x2B28];
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v5(a1, v3, a3, v8);
}

uint64_t sub_100D801E0()
{
  v2 = *(*STACK[0x3E40] + (STACK[0x15A8] & *v0));
  v3 = (v2 + STACK[0x15A0]) ^ 0xC2AF3EAA3FF1B8E4;
  v4 = v3 ^ __ROR8__(v2, 61);
  v5 = (__ROR8__(v3, 8) + v4) ^ 0x65F254DD188DB4FCLL;
  v6 = v5 ^ __ROR8__(v4, 61);
  v7 = (__ROR8__(v5, 8) + v6) ^ 0x6FF046966119128DLL;
  v8 = v7 ^ __ROR8__(v6, 61);
  v9 = (__ROR8__(v7, 8) + v8) ^ 0xA1B29DC5D776132BLL;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0xEF042041F5E548ECLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xD8C7B31FCA19D9DELL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (v15 + v14 - ((2 * (v15 + v14)) & 0x4F4ABACD6230C02ALL) + 0x27A55D66B1186015) ^ 0x73F05C483BA9A39ALL;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (LOBYTE(STACK[0x3F17]) ^ (STACK[0x6C20] - ((2 * STACK[0x6C20]) & 0xA4) - 46)) ^ 0xD2u ^ (((v18 + v17 - ((2 * (v18 + v17)) & 0x63122D794671742ALL) - 0x4E76E9435CC745EBLL) ^ 0xDEC67600AD3AE4F5) >> STACK[0x1338]);
  v20 = STACK[0x4EA0];
  LOBYTE(v19) = *(v20 + v19) ^ (2 * (STACK[0x4E9D] & *(v20 + v19)));
  LOBYTE(v19) = ((v19 & LOBYTE(STACK[0x4E9E])) >> STACK[0x5350]) | (v19 << STACK[0x5338]);
  STACK[0x40E8] = STACK[0x6C20] >> 8;
  STACK[0x40F0] = STACK[0x6C30] >> 16;
  LOBYTE(v20) = *(v20 + LOBYTE(STACK[0x40E0])) ^ (2 * (STACK[0x4E9F] & *(v20 + LOBYTE(STACK[0x40E0]))));
  v21 = v20;
  v22 = v20 & LOBYTE(STACK[0x4E9C]);
  v23 = v21 << STACK[0x5320];
  LOBYTE(STACK[0x40FE]) = v23;
  *(STACK[0x3D18] + 1826) = v23 ^ (v22 >> STACK[0x5328]) ^ LODWORD(STACK[0x52C0]) ^ v19;
  v24 = *(v1 + 8 * (LODWORD(STACK[0x3A10]) + 10826));
  STACK[0x3F18] = STACK[0x1880];
  STACK[0x3F08] = v24;
  return (*(v1 + 8 * (LODWORD(STACK[0x27FC]) + 9551)))();
}

uint64_t sub_100D80478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  v5 = *(v4 + 8 * (v3 - 10147));
  LODWORD(STACK[0x3CF0]) = 28;
  LODWORD(STACK[0x3D88]) = 2;
  v6 = STACK[0x438];
  STACK[0x3D40] = STACK[0x438];
  v7 = STACK[0x2618];
  STACK[0x3D78] = STACK[0x2618];
  STACK[0x3B20] = v6;
  STACK[0x3B18] = v7;
  STACK[0x3818] = LODWORD(STACK[0x3988]);
  LODWORD(STACK[0x1204]) = STACK[0x39A0];
  LODWORD(STACK[0x2134]) = STACK[0x36B8];
  v8 = STACK[0x3820];
  LODWORD(STACK[0x3688]) = STACK[0x2B30];
  LODWORD(STACK[0x3858]) = STACK[0x2B40];
  LODWORD(STACK[0x3B00]) = STACK[0x2B88];
  LODWORD(STACK[0x1954]) = STACK[0x2B70];
  LODWORD(STACK[0x1A78]) = STACK[0x3268];
  LODWORD(STACK[0x3AE8]) = STACK[0x3998];
  LODWORD(STACK[0x3AE0]) = v8;
  LODWORD(STACK[0x3810]) = STACK[0x2B28];
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v5(a1, v3, a3, v8);
}

uint64_t sub_100D807F8()
{
  v2 = STACK[0x3B38];
  v3 = STACK[0x3670];
  v4 = *(STACK[0x3670] + 4 * (*(STACK[0x3B38] + 518) ^ 0xBDLL));
  v5 = *(STACK[0x3670] + 4 * (*(STACK[0x3B38] + 517) ^ 0xFLL));
  v6 = STACK[0x35C0];
  v7 = *STACK[0x35C0];
  v8 = *(STACK[0x3670] + 4 * (*(STACK[0x3B38] + 516) ^ 0xBLL));
  LODWORD(STACK[0x3D68]) = v0 ^ 0x5B61;
  v9 = STACK[0x3598];
  v10 = STACK[0x3678];
  v11 = *(STACK[0x3678] + 4 * (v2[1751] ^ 0x6ALL));
  v12 = *(STACK[0x3678] + 4 * (v2[1750] ^ 0x68));
  v13 = *(STACK[0x3678] + 4 * (v2[1749] ^ 0x2ALL));
  v14 = v13 ^ (16 * (v13 ^ 0xD607A034)) ^ (2 * (v13 ^ 0xD607A034)) ^ 0x1A15B9F6;
  v15 = *(STACK[0x3678] + 4 * (*STACK[0x3598] ^ 0x2ELL));
  v16 = v5 ^ ((v5 ^ ((v0 ^ 0x5B61u) - 41383292)) >> 2) ^ ((v5 ^ ((v0 ^ 0x5B61u) - 41383292)) >> 1) ^ __ROR4__(v4 ^ 0x3AA14AA9 ^ ((v4 ^ 0xFD88CD19) >> 2) ^ ((v4 ^ 0xFD88CD19) >> 1), 8) ^ __ROR4__(v8 ^ ((v8 ^ 0xFD88CD19) >> 2) ^ ((v8 ^ 0xFD88CD19) >> 1) ^ 0x905E3CCF, 24) ^ __ROR4__(*(v3 + 4 * (v7 ^ 0x2D)) ^ ((*(v3 + 4 * (v7 ^ 0x2D)) ^ 0xFD88CD19) >> 2) ^ ((*(v3 + 4 * (v7 ^ 0x2D)) ^ 0xFD88CD19) >> 1) ^ 0xC0E26BF1, 16) ^ 0x4C07021F;
  v17 = v12 ^ (16 * (v12 ^ 0xD607A034)) ^ (2 * (v12 ^ 0xD607A034)) ^ __ROR4__(v11 ^ (16 * (v11 ^ 0xD607A034)) ^ (2 * (v11 ^ 0xD607A034)) ^ 0x4A45ADE3, 8) ^ (v14 << 8) ^ HIBYTE(v14) ^ __ROR4__(v15 ^ (16 * (v15 ^ 0xD607A034)) ^ (2 * (v15 ^ 0xD607A034)) ^ 0x4F10B8B7, 16) ^ 0xE0C72D43;
  *v6 = HIBYTE(v16);
  *v9 = HIBYTE(v17);
  v2[516] = BYTE2(v16);
  v2[1749] = BYTE2(v17);
  v2[517] = BYTE1(v16);
  v2[1750] = BYTE1(v17);
  v2[518] = v16;
  v2[1751] = v17;
  v18 = *(v3 + 4 * (v2[522] ^ 0x9ELL));
  v19 = *(v3 + 4 * (v2[521] ^ 0x91));
  v20 = *(v3 + 4 * (v2[520] ^ 0x94));
  v21 = *(v3 + 4 * (v2[519] ^ 0x2DLL));
  v22 = *(v10 + 4 * (v2[1755] ^ 0x47));
  v23 = *(v10 + 4 * (v2[1754] ^ 0xFCLL));
  LODWORD(v7) = *(v10 + 4 * (v2[1753] ^ 0x73));
  v24 = *(v10 + 4 * (v2[1752] ^ 0xB4));
  v25 = v24 ^ 0xBB2C17BA ^ (16 * (v24 ^ 0xD607A034)) ^ (2 * (v24 ^ 0xD607A034));
  v26 = v19 ^ 0xBC83FF5E ^ ((v19 ^ 0xFD88CD19) >> 2) ^ ((v19 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v18 ^ 0x81526CF3 ^ ((v18 ^ 0xFD88CD19) >> 2) ^ ((v18 ^ 0xFD88CD19) >> 1), 8) ^ __ROR4__(v20 ^ ((v20 ^ 0xFD88CD19) >> 2) ^ ((v20 ^ 0xFD88CD19) >> 1) ^ 0x57CC8E3A, 24) ^ __ROR4__(v21 ^ ((v21 ^ 0xFD88CD19) >> 2) ^ ((v21 ^ 0xFD88CD19) >> 1) ^ 0xC0E26BF1, 16);
  v2[519] = HIBYTE(v26);
  LODWORD(v7) = v23 ^ (16 * (v23 ^ 0xD607A034)) ^ (2 * (v23 ^ 0xD607A034)) ^ __ROR4__(v22 ^ 0x4823E47A ^ (16 * (v22 ^ 0xD607A034)) ^ (2 * (v22 ^ 0xD607A034)), 8) ^ __ROR4__(v7 ^ 0xE11AEA34 ^ (16 * (v7 ^ 0xD607A034)) ^ (2 * (v7 ^ 0xD607A034)), 24) ^ (v25 << 16) ^ 0x4176012D;
  v27 = v7 ^ HIWORD(v25);
  v2[1752] = BYTE3(v7);
  v2[520] = BYTE2(v26);
  v2[1753] = BYTE2(v7);
  v2[521] = BYTE1(v26);
  v2[1754] = BYTE1(v27);
  v2[522] = v26;
  v2[1755] = v27;
  v28 = *(v3 + 4 * (v2[526] ^ 0xD4));
  v29 = *(v3 + 4 * (v2[525] ^ 0xC6));
  v30 = *(v3 + 4 * (v2[524] ^ 0x96));
  LODWORD(v7) = *(v3 + 4 * (v2[523] ^ 0xBBLL));
  v31 = *(v10 + 4 * (v2[1759] ^ 0xE5));
  v32 = *(v10 + 4 * (v2[1758] ^ 0x89));
  v33 = *(v10 + 4 * (v2[1757] ^ 3));
  v34 = *(v10 + 4 * (v2[1756] ^ 0xDFLL));
  v35 = v29 ^ 0x8D17071C ^ ((v29 ^ 0xFD88CD19) >> 2) ^ ((v29 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v28 ^ ((v28 ^ 0xFD88CD19) >> 2) ^ ((v28 ^ 0xFD88CD19) >> 1) ^ 0x925F6337, 8) ^ __ROR4__(v30 ^ ((v30 ^ 0xFD88CD19) >> 2) ^ ((v30 ^ 0xFD88CD19) >> 1) ^ 0x39E01152, 24) ^ __ROR4__(v7 ^ 0x88D4EB11 ^ ((v7 ^ 0xFD88CD19) >> 2) ^ ((v7 ^ 0xFD88CD19) >> 1), 16);
  v2[523] = HIBYTE(v35);
  v36 = v32 ^ (16 * (v32 ^ 0xD607A034)) ^ (2 * (v32 ^ 0xD607A034)) ^ __ROR4__(v31 ^ (16 * (v31 ^ 0xD607A034)) ^ (2 * (v31 ^ 0xD607A034)) ^ 0xEA2946FA, 8) ^ __ROR4__(v33 ^ (16 * (v33 ^ 0xD607A034)) ^ (2 * (v33 ^ 0xD607A034)) ^ 0x4D76F12E, 24) ^ __ROR4__(v34 ^ (16 * (v34 ^ 0xD607A034)) ^ (2 * (v34 ^ 0xD607A034)) ^ 0x169DCBD7, 16) ^ 0xED5E5B26;
  v2[1756] = HIBYTE(v36);
  v2[524] = BYTE2(v35);
  v2[1757] = BYTE2(v36);
  v2[525] = BYTE1(v35);
  v2[1758] = BYTE1(v36);
  v2[526] = v35;
  v2[1759] = v36;
  v37 = *(v10 + 4 * (v2[1763] ^ 0x53));
  v38 = *(v10 + 4 * (v2[1762] ^ 0x62));
  v39 = *(v3 + 4 * (v2[527] ^ 0x81));
  v40 = *(v3 + 4 * (v2[529] ^ 0xE2));
  v41 = *(v3 + 4 * (v2[530] ^ 0x4BLL));
  v42 = *(v3 + 4 * (v2[528] ^ 0x67));
  LODWORD(v7) = *(v10 + 4 * (v2[1761] ^ 0x58));
  v43 = *(v10 + 4 * (v2[1760] ^ 0xF1));
  v44 = v40 ^ 0xB387CF4A ^ ((v40 ^ 0xFD88CD19) >> 2) ^ ((v40 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v39 ^ ((v39 ^ 0xFD88CD19) >> 2) ^ ((v39 ^ 0xFD88CD19) >> 1) ^ 0xCDE7041D, 16) ^ __ROR4__(v41 ^ ((v41 ^ 0xFD88CD19) >> 2) ^ ((v41 ^ 0xFD88CD19) >> 1) ^ 0x55CDD1C2, 8) ^ __ROR4__(v42 ^ 0xD3EF6435 ^ ((v42 ^ 0xFD88CD19) >> 2) ^ ((v42 ^ 0xFD88CD19) >> 1), 24);
  v45 = v38 ^ (16 * (v38 ^ 0xD607A034)) ^ (2 * (v38 ^ 0xD607A034)) ^ __ROR4__(v37 ^ (16 * (v37 ^ 0xD607A034)) ^ (2 * (v37 ^ 0xD607A034)) ^ 0x4932E03E, 8) ^ __ROR4__(v7 ^ (16 * (v7 ^ 0xD607A034)) ^ (2 * (v7 ^ 0xD607A034)) ^ 0x1CFB224C, 24) ^ __ROR4__(v43 ^ 0xEB3842BE ^ (16 * (v43 ^ 0xD607A034)) ^ (2 * (v43 ^ 0xD607A034)), 16) ^ 0xE04FAF61;
  v2[527] = HIBYTE(v44);
  v2[1760] = HIBYTE(v45);
  v2[528] = BYTE2(v44);
  v2[1761] = BYTE2(v45);
  v2[529] = BYTE1(v44);
  v2[1762] = BYTE1(v45);
  v2[530] = v44;
  v2[1763] = v45;
  v46 = *(v3 + 4 * (v2[534] ^ 0x45));
  v47 = *(v3 + 4 * (v2[533] ^ 0xE9));
  LODWORD(v7) = *(v3 + 4 * (v2[532] ^ 0xC2));
  v48 = *(v3 + 4 * (v2[531] ^ 0x49));
  v49 = *(v10 + 4 * (v2[1767] ^ 0x7CLL));
  v50 = *(v10 + 4 * (v2[1766] ^ 0x3ELL));
  v51 = *(v10 + 4 * (v2[1765] ^ 0xF1));
  v52 = *(v10 + 4 * (v2[1764] ^ 0x4DLL));
  v53 = v47 ^ ((v47 ^ 0xFD88CD19) >> 2) ^ ((v47 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v46 ^ ((v46 ^ 0xFD88CD19) >> 2) ^ ((v46 ^ 0xFD88CD19) >> 1) ^ 0x5F0A0DDB, 8) ^ __ROR4__(v7 ^ ((v7 ^ 0xFD88CD19) >> 2) ^ ((v7 ^ 0xFD88CD19) >> 1) ^ 0x514E39CC, 24) ^ __ROR4__(v48 ^ 0x3BE14EAA ^ ((v48 ^ 0xFD88CD19) >> 2) ^ ((v48 ^ 0xFD88CD19) >> 1), 16) ^ 0x520F6237;
  v54 = v50 ^ 0x1B04BDB2 ^ (16 * (v50 ^ 0xD607A034)) ^ (2 * (v50 ^ 0xD607A034)) ^ __ROR4__(v49 ^ 0xE1D62907 ^ (16 * (v49 ^ 0xD607A034)) ^ (2 * (v49 ^ 0xD607A034)), 8) ^ __ROR4__(v51 ^ 0xEB3842BE ^ (16 * (v51 ^ 0xD607A034)) ^ (2 * (v51 ^ 0xD607A034)), 24);
  v55 = __ROR4__(v52 ^ (16 * (v52 ^ 0xD607A034)) ^ (2 * (v52 ^ 0xD607A034)) ^ 0x48AB6658, 16);
  v2[531] = HIBYTE(v53);
  v2[1764] = (HIWORD(v54) ^ HIWORD(v55)) >> 8;
  v2[532] = BYTE2(v53);
  v2[1765] = BYTE2(v54) ^ BYTE2(v55);
  v2[533] = BYTE1(v53);
  v2[1766] = (v54 ^ v55) >> 8;
  v2[534] = v53;
  v2[1767] = v54 ^ v55;
  v56 = *(v3 + 4 * (v2[538] ^ 0x50));
  v57 = *(v3 + 4 * (v2[537] ^ 0xFDLL));
  v58 = *(v3 + 4 * (v2[536] ^ 0x85));
  v59 = *(v3 + 4 * (v2[535] ^ 0x97));
  v60 = *(v10 + 4 * (v2[1771] ^ 0xF7));
  LODWORD(v7) = *(v10 + 4 * (v2[1770] ^ 0xFBLL));
  v61 = *(v10 + 4 * (v2[1769] ^ 0xE2));
  v62 = *(v10 + 4 * (v2[1768] ^ 0xC2));
  v63 = v57 ^ 0xFF32A7A4 ^ ((v57 ^ 0xFD88CD19) >> 2) ^ ((v57 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v56 ^ ((v56 ^ 0xFD88CD19) >> 2) ^ ((v56 ^ 0xFD88CD19) >> 1) ^ 0xC52187FC, 8) ^ __ROR4__(v58 ^ ((v58 ^ 0xFD88CD19) >> 2) ^ ((v58 ^ 0xFD88CD19) >> 1) ^ 0x11BE3ACD, 24) ^ __ROR4__(v59 ^ ((v59 ^ 0xFD88CD19) >> 2) ^ ((v59 ^ 0xFD88CD19) >> 1) ^ 0xEF65EE6, 16);
  v64 = v7 ^ (16 * (v7 ^ 0xD607A034)) ^ (2 * (v7 ^ 0xD607A034)) ^ __ROR4__(v60 ^ 0x14BFC35F ^ (16 * (v60 ^ 0xD607A034)) ^ (2 * (v60 ^ 0xD607A034)), 8) ^ __ROR4__(v61 ^ (16 * (v61 ^ 0xD607A034)) ^ (2 * (v61 ^ 0xD607A034)) ^ 0x40EF874B, 24) ^ __ROR4__(v62 ^ 0xE8C78D41 ^ (16 * (v62 ^ 0xD607A034)) ^ (2 * (v62 ^ 0xD607A034)), 16) ^ 0xEBB0C09C;
  v2[535] = HIBYTE(v63);
  v2[1768] = HIBYTE(v64);
  v2[536] = BYTE2(v63);
  v2[1769] = BYTE2(v64);
  v2[537] = BYTE1(v63);
  v2[1770] = BYTE1(v64);
  v2[538] = v63;
  v2[1771] = v64;
  v65 = *(v3 + 4 * (v2[542] ^ 0x7FLL));
  v66 = *(v3 + 4 * (v2[541] ^ 0x87));
  v67 = *(v3 + 4 * (v2[540] ^ 0x54));
  v68 = *(v3 + 4 * (v2[539] ^ 0x3ALL));
  v69 = *(v10 + 4 * (v2[1775] ^ 0x19));
  v70 = *(v10 + 4 * (v2[1774] ^ 0xC5));
  v71 = *(v10 + 4 * (v2[1773] ^ 0xADLL));
  LODWORD(v7) = *(v10 + 4 * (v2[1772] ^ 0x41));
  v72 = v66 ^ ((v66 ^ 0xFD88CD19) >> 2) ^ ((v66 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v65 ^ 0x1A39E2D7 ^ ((v65 ^ 0xFD88CD19) >> 2) ^ ((v65 ^ 0xFD88CD19) >> 1), 8) ^ __ROR4__(v67 ^ 0x1978B92C ^ ((v67 ^ 0xFD88CD19) >> 2) ^ ((v67 ^ 0xFD88CD19) >> 1), 24) ^ __ROR4__(v68 ^ 0x34E57EBE ^ ((v68 ^ 0xFD88CD19) >> 2) ^ ((v68 ^ 0xFD88CD19) >> 1), 16) ^ 0x7F92A5A5;
  v73 = v70 ^ (16 * (v70 ^ 0xD607A034)) ^ (2 * (v70 ^ 0xD607A034)) ^ __ROR4__(v69 ^ (16 * (v69 ^ 0xD607A034)) ^ (2 * (v69 ^ 0xD607A034)) ^ 0x19EA7609, 8) ^ __ROR4__(v71 ^ 0x1073506D ^ (16 * (v71 ^ 0xD607A034)) ^ (2 * (v71 ^ 0xD607A034)), 24) ^ __ROR4__(v7 ^ (16 * (v7 ^ 0xD607A034)) ^ (2 * (v7 ^ 0xD607A034)) ^ 0xB7A4659B, 16) ^ 0x42014CF0;
  v2[539] = HIBYTE(v72);
  v2[1772] = HIBYTE(v73);
  v2[540] = BYTE2(v72);
  v2[1773] = BYTE2(v73);
  v2[541] = BYTE1(v72);
  v2[1774] = BYTE1(v73);
  v2[542] = v72;
  v2[1775] = v73;
  v74 = *(v3 + 4 * ~v2[546]);
  v75 = *(v3 + 4 * (v2[545] ^ 0x54));
  v76 = *(v3 + 4 * (v2[544] ^ 0xDDLL));
  v77 = (v76 ^ -v76 ^ (-41366247 - (v76 ^ 0xFD88CD19))) - 41366247;
  v78 = *(v3 + 4 * (v2[543] ^ 0x49));
  v79 = *(v10 + 4 * (v2[1779] ^ 0x52));
  v80 = *(v10 + 4 * (v2[1778] ^ 0x6BLL));
  LODWORD(v7) = *(v10 + 4 * (v2[1777] ^ 0xF5));
  v81 = *(v10 + 4 * (v2[1776] ^ 0x75));
  v82 = v75 ^ 0x1978B92C ^ ((v75 ^ 0xFD88CD19) >> 2) ^ ((v75 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v74 ^ 0x911E38CC ^ ((v74 ^ 0xFD88CD19) >> 2) ^ ((v74 ^ 0xFD88CD19) >> 1), 8) ^ __ROR4__(v78 ^ 0x3BE14EAA ^ ((v78 ^ 0xFD88CD19) >> 2) ^ ((v78 ^ 0xFD88CD19) >> 1), 16) ^ __ROR4__(v77 ^ (v77 >> 2) ^ (v77 >> 1) ^ 0xE0739C3B, 24);
  v2[543] = HIBYTE(v82);
  v83 = v80 ^ 0x1F04EDB3 ^ (16 * (v80 ^ 0xD607A034)) ^ (2 * (v80 ^ 0xD607A034)) ^ __ROR4__(v79 ^ 0x1C73A06E ^ (16 * (v79 ^ 0xD607A034)) ^ (2 * (v79 ^ 0xD607A034)), 8) ^ __ROR4__(v7 ^ (16 * (v7 ^ 0xD607A034)) ^ (2 * (v7 ^ 0xD607A034)) ^ 0xBE3D43FF, 24);
  v84 = __ROR4__(v81 ^ (16 * (v81 ^ 0xD607A034)) ^ (2 * (v81 ^ 0xD607A034)) ^ 0x1E9D6BD5, 16);
  v2[1776] = (HIWORD(v83) ^ HIWORD(v84)) >> 8;
  v2[544] = BYTE2(v82);
  v2[1777] = BYTE2(v83) ^ BYTE2(v84);
  v2[545] = BYTE1(v82);
  v2[1778] = (v83 ^ v84) >> 8;
  v2[546] = v82;
  v2[1779] = v83 ^ v84;
  v85 = *(v3 + 4 * (v2[547] ^ 0x1ALL));
  v86 = *(v3 + 4 * (v2[548] ^ 0x47));
  v87 = *(v3 + 4 * (v2[549] ^ 0x11));
  v88 = *(v3 + 4 * (v2[550] ^ 0x41));
  v89 = *(v10 + 4 * (v2[1783] ^ 0x8FLL));
  v90 = *(v10 + 4 * (v2[1782] ^ 0x6BLL));
  v91 = *(v10 + 4 * (v2[1781] ^ 0x9ALL));
  v92 = *(v10 + 4 * (v2[1780] ^ 0x97));
  v93 = v87 ^ ((v87 ^ 0xFD88CD19) >> 2) ^ ((v87 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v85 ^ ((v85 ^ 0xFD88CD19) >> 2) ^ ((v85 ^ 0xFD88CD19) >> 1) ^ 0xD62C8838, 16) ^ __ROR4__(v86 ^ 0x312692B3 ^ ((v86 ^ 0xFD88CD19) >> 2) ^ ((v86 ^ 0xFD88CD19) >> 1), 24) ^ __ROR4__(v88 ^ ((v88 ^ 0xFD88CD19) >> 2) ^ ((v88 ^ 0xFD88CD19) >> 1) ^ 0x8353330B, 8) ^ 0x37A42545;
  v94 = v90 ^ 0x1F04EDB3 ^ (16 * (v90 ^ 0xD607A034)) ^ (2 * (v90 ^ 0xD607A034)) ^ __ROR4__(v89 ^ 0x12D9DAC7 ^ (16 * (v89 ^ 0xD607A034)) ^ (2 * (v89 ^ 0xD607A034)), 8) ^ __ROR4__(v91 ^ (16 * (v91 ^ 0xD607A034)) ^ (2 * (v91 ^ 0xD607A034)) ^ 0x46899ED3, 24) ^ __ROR4__(v92 ^ 0xECC7DD40 ^ (16 * (v92 ^ 0xD607A034)) ^ (2 * (v92 ^ 0xD607A034)), 16);
  v2[547] = HIBYTE(v93);
  v2[1780] = HIBYTE(v94);
  v2[548] = BYTE2(v93);
  v2[1781] = BYTE2(v94);
  v2[549] = BYTE1(v93);
  v2[1782] = BYTE1(v94);
  v2[550] = v93;
  v2[1783] = v94;
  v95 = *(v3 + 4 * (v2[554] ^ 0x4BLL));
  v96 = *(v3 + 4 * (v2[553] ^ 0x68));
  LODWORD(v7) = *(v3 + 4 * (v2[552] ^ 0x9ELL));
  v97 = *(v3 + 4 * (v2[551] ^ 0x3ELL));
  v98 = *(v10 + 4 * (v2[1787] ^ 0xAELL));
  v99 = *(v10 + 4 * (v2[1786] ^ 0x56));
  v100 = *(v10 + 4 * (v2[1785] ^ 0xC9));
  v101 = *(v10 + 4 * (v2[1784] ^ 0x78));
  v102 = v96 ^ 0xEE3EF798 ^ ((v96 ^ 0xFD88CD19) >> 2) ^ ((v96 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v95 ^ ((v95 ^ 0xFD88CD19) >> 2) ^ ((v95 ^ 0xFD88CD19) >> 1) ^ 0x55CDD1C2, 8) ^ __ROR4__(v7 ^ 0x81526CF3 ^ ((v7 ^ 0xFD88CD19) >> 2) ^ ((v7 ^ 0xFD88CD19) >> 1), 24) ^ __ROR4__(v97 ^ ((v97 ^ 0xFD88CD19) >> 2) ^ ((v97 ^ 0xFD88CD19) >> 1) ^ 0xE8BC406E, 16);
  v103 = v99 ^ 0x4976A12F ^ (16 * (v99 ^ 0xD607A034)) ^ (2 * (v99 ^ 0xD607A034)) ^ __ROR4__(v98 ^ (16 * (v98 ^ 0xD607A034)) ^ (2 * (v98 ^ 0xD607A034)) ^ 0xEFB0909D, 8) ^ __ROR4__(v100 ^ 0xBD0E4F33 ^ (16 * (v100 ^ 0xD607A034)) ^ (2 * (v100 ^ 0xD607A034)), 24) ^ __ROR4__(v101 ^ (16 * (v101 ^ 0xD607A034)) ^ (2 * (v101 ^ 0xD607A034)) ^ 0xB4D32846, 16);
  v2[551] = HIBYTE(v102);
  v2[1784] = HIBYTE(v103);
  v2[552] = BYTE2(v102);
  v2[1785] = BYTE2(v103);
  v2[553] = BYTE1(v102);
  v2[1786] = BYTE1(v103);
  v2[554] = v102;
  v2[1787] = v103;
  v104 = v2[1790];
  v105 = *(v10 + 4 * (v2[1788] ^ 0x72));
  v106 = *(v10 + 4 * (v2[1789] ^ 0x38));
  LODWORD(v7) = v106 ^ (16 * (v106 ^ 0xD607A034)) ^ (2 * (v106 ^ 0xD607A034));
  STACK[0x36E8] = v104;
  v107 = *(v10 + 4 * (v104 ^ 0x40));
  v108 = *(v10 + 4 * (v2[1791] ^ 0x1BLL));
  v109 = *(v3 + 4 * (v2[555] ^ 0xF1));
  v110 = *(v3 + 4 * (v2[557] ^ 0xABLL));
  v111 = *(v3 + 4 * (v2[558] ^ 0x6DLL));
  v112 = v111 ^ 0x57186FC ^ ((v111 ^ 0xFD88CD19) >> 2) ^ ((v111 ^ 0xFD88CD19) >> 1);
  v113 = *(v3 + 4 * (v2[556] ^ 0x80));
  v114 = v110 ^ ((v110 ^ 0xFD88CD19) >> 2) ^ ((v110 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v109 ^ ((v109 ^ 0xFD88CD19) >> 2) ^ ((v109 ^ 0xFD88CD19) >> 1) ^ 0x9BD9E4D5, 16) ^ __ROR4__(v112, 8) ^ __ROR4__(v113 ^ 0xFAF14BA9 ^ ((v113 ^ 0xFD88CD19) >> 2) ^ ((v113 ^ 0xFD88CD19) >> 1), 24) ^ 0xF9B01052;
  v115 = v107 ^ (16 * (v107 ^ 0xD607A034)) ^ (2 * (v107 ^ 0xD607A034)) ^ __ROR4__(v105 ^ (16 * (v105 ^ 0xD607A034)) ^ (2 * (v105 ^ 0xD607A034)) ^ 0xB45BAA64, 16) ^ __ROR4__(v7 ^ 0xE4833C53, 24) ^ __ROR4__(v108 ^ (16 * (v108 ^ 0xD607A034)) ^ (2 * (v108 ^ 0xD607A034)) ^ 0xB368F6A9, 8) ^ 0xE2E525CB;
  v2[555] = HIBYTE(v114);
  v2[1788] = HIBYTE(v115);
  v2[556] = BYTE2(v114);
  v2[1789] = BYTE2(v115);
  v2[557] = BYTE1(v114);
  v2[1790] = BYTE1(v115);
  v2[558] = v114;
  v2[1791] = v115;
  v116 = *(v3 + 4 * (v2[562] ^ 0x5DLL));
  v117 = *(v3 + 4 * (v2[561] ^ 0x6ELL));
  v118 = *(v3 + 4 * (v2[560] ^ 0x24));
  v119 = *(v3 + 4 * (v2[559] ^ 0x78));
  v120 = *(v10 + 4 * (v2[1795] ^ 0xA0));
  v121 = *(v10 + 4 * (v2[1794] ^ 0xF8));
  LODWORD(v7) = *(v10 + 4 * (v2[1793] ^ 0x8ALL));
  v122 = *(v10 + 4 * (v2[1792] ^ 0x25));
  v123 = v117 ^ ((v117 ^ 0xFD88CD19) >> 2) ^ ((v117 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v116 ^ 0x96DC8B39 ^ ((v116 ^ 0xFD88CD19) >> 2) ^ ((v116 ^ 0xFD88CD19) >> 1), 8) ^ __ROR4__(v118 ^ 0x4F4659E4 ^ ((v118 ^ 0xFD88CD19) >> 2) ^ ((v118 ^ 0xFD88CD19) >> 1), 24) ^ __ROR4__(v119 ^ ((v119 ^ 0xFD88CD19) >> 2) ^ ((v119 ^ 0xFD88CD19) >> 1) ^ 0x9F5A0CDB, 16) ^ 0x5C4B5620;
  v2[559] = HIBYTE(v123);
  v124 = v121 ^ (16 * (v121 ^ 0xD607A034)) ^ (2 * (v121 ^ 0xD607A034)) ^ __ROR4__(v120 ^ 0xBA3D13FE ^ (16 * (v120 ^ 0xD607A034)) ^ (2 * (v120 ^ 0xD607A034)), 8) ^ __ROR4__(v7 ^ (16 * (v7 ^ 0xD607A034)) ^ (2 * (v7 ^ 0xD607A034)) ^ 0x129D9BD6, 24);
  v125 = __ROR4__(v122 ^ 0x1AD97AC5 ^ (16 * (v122 ^ 0xD607A034)) ^ (2 * (v122 ^ 0xD607A034)), 16);
  BYTE1(v122) = BYTE1(v124) ^ BYTE1(v125);
  v126 = v124 ^ v125 ^ 0x1473006C;
  v2[1792] = HIBYTE(v126);
  v2[560] = BYTE2(v123);
  v2[1793] = BYTE2(v126);
  v2[561] = BYTE1(v123);
  v2[1794] = BYTE1(v122);
  v2[562] = v123;
  v2[1795] = v126;
  v127 = v2[1796];
  v128 = v2[1798];
  v129 = *(v3 + 4 * (v2[566] ^ 0x36));
  v130 = *(v3 + 4 * (((v2[565] << 8) ^ 0xDB00) >> 8));
  LODWORD(v7) = *(v3 + (((((v2[565] << 8) | (v2[564] << 16)) ^ 0x24DB00) >> 14) & 0x3FC));
  v131 = *(v3 + 4 * (v2[563] ^ 0x31));
  v132 = *(v10 + 4 * (v2[1799] ^ 0x32));
  v133 = *(v10 + 4 * (v2[1797] ^ 0x74));
  STACK[0x3298] = v127;
  LODWORD(v127) = *(v10 + 4 * (v127 ^ 0xC));
  v134 = v130 ^ 0xAF8EF09A ^ ((v130 ^ 0xFD88CD19) >> 2) ^ ((v130 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v129 ^ ((v129 ^ 0xFD88CD19) >> 2) ^ ((v129 ^ 0xFD88CD19) >> 1) ^ 0x500E3DCF, 8) ^ __ROR4__(v7 ^ 0x4F4659E4 ^ ((v7 ^ 0xFD88CD19) >> 2) ^ ((v7 ^ 0xFD88CD19) >> 1), 24) ^ __ROR4__(v131 ^ ((v131 ^ 0xFD88CD19) >> 2) ^ ((v131 ^ 0xFD88CD19) >> 1) ^ 0xD56DD3C3, 16);
  LODWORD(v128) = *(v10 + 4 * (v128 ^ 0x6E)) ^ (16 * (*(v10 + 4 * (v128 ^ 0x6E)) ^ 0xD607A034)) ^ (2 * (*(v10 + 4 * (v128 ^ 0x6E)) ^ 0xD607A034)) ^ __ROR4__(v132 ^ (16 * (v132 ^ 0xD607A034)) ^ (2 * (v132 ^ 0xD607A034)) ^ 0xE40BBE71, 8) ^ __ROR4__(v133 ^ 0x4BDC2B85 ^ (16 * (v133 ^ 0xD607A034)) ^ (2 * (v133 ^ 0xD607A034)), 24) ^ __ROR4__(v127 ^ (16 * (v127 ^ 0xD607A034)) ^ (2 * (v127 ^ 0xD607A034)) ^ 0x4DBA321D, 16) ^ 0x1F40ACA2;
  v2[563] = HIBYTE(v134);
  v2[1796] = BYTE3(v128);
  v2[564] = BYTE2(v134);
  v2[1797] = BYTE2(v128);
  v2[565] = BYTE1(v134);
  v2[1798] = BYTE1(v128);
  v2[566] = v134;
  v2[1799] = v128;
  v135 = *(v3 + 4 * (v2[570] ^ 0x1FLL));
  v136 = *(v3 + 4 * (v2[569] ^ 0x7FLL));
  LODWORD(v7) = *(v3 + 4 * (v2[568] ^ 0xBBLL));
  v137 = *(v3 + 4 * (v2[567] ^ 0x98));
  v138 = *(v10 + 4 * (v2[1803] ^ 0x6BLL));
  v139 = *(v10 + 4 * (v2[1801] ^ 0x7ELL));
  v140 = *(v10 + 4 * (v2[1800] ^ 0xBALL));
  LODWORD(v128) = *(v10 + 4 * (v2[1802] ^ 0x94));
  v141 = v136 ^ 0x1A39E2D7 ^ ((v136 ^ 0xFD88CD19) >> 2) ^ ((v136 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v135 ^ ((v135 ^ 0xFD88CD19) >> 2) ^ ((v135 ^ 0xFD88CD19) >> 1) ^ 0x3D63F95C, 8) ^ __ROR4__(v7 ^ 0x88D4EB11 ^ ((v7 ^ 0xFD88CD19) >> 2) ^ ((v7 ^ 0xFD88CD19) >> 1), 24) ^ __ROR4__(v137 ^ ((v137 ^ 0xFD88CD19) >> 2) ^ ((v137 ^ 0xFD88CD19) >> 1) ^ 0x3327CD4B, 16);
  LODWORD(v128) = v128 ^ (16 * (v128 ^ 0xD607A034)) ^ (2 * (v128 ^ 0xD607A034)) ^ __ROR4__(v138 ^ 0x1F04EDB3 ^ (16 * (v138 ^ 0xD607A034)) ^ (2 * (v138 ^ 0xD607A034)), 8) ^ __ROR4__(v139 ^ (16 * (v139 ^ 0xD607A034)) ^ (2 * (v139 ^ 0xD607A034)) ^ 0x4B54A9A7, 24) ^ __ROR4__(v140 ^ 0xEEA194D9 ^ (16 * (v140 ^ 0xD607A034)) ^ (2 * (v140 ^ 0xD607A034)), 16) ^ 0x13041DB0;
  v2[567] = HIBYTE(v141);
  v2[1800] = BYTE3(v128);
  v2[568] = BYTE2(v141);
  v2[1801] = BYTE2(v128);
  v2[569] = BYTE1(v141);
  v2[1802] = BYTE1(v128);
  v2[570] = v141;
  v2[1803] = v128;
  LODWORD(v128) = *(v10 + 4 * (v2[1806] ^ 0xB1));
  v142 = *(v10 + 4 * (v2[1807] ^ 8));
  LODWORD(v7) = *(v10 + 4 * (v2[1805] ^ 0x6CLL));
  v143 = *(v3 + 4 * (v2[571] ^ 0x65));
  v144 = *(v3 + 4 * (v2[574] ^ 0x79));
  v145 = *(v3 + 4 * (v2[572] ^ 0xDFLL));
  LODWORD(v127) = *(v3 + 4 * ~v2[573]);
  v146 = v7 ^ (16 * (v7 ^ 0xD607A034)) ^ (2 * (v7 ^ 0xD607A034));
  LODWORD(v7) = *(v10 + 4 * (v2[1804] ^ 0x26));
  v147 = v127 ^ 0x911E38CC ^ ((v127 ^ 0xFD88CD19) >> 2) ^ ((v127 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v143 ^ 0xBDC3FB5D ^ ((v143 ^ 0xFD88CD19) >> 2) ^ ((v143 ^ 0xFD88CD19) >> 1), 16) ^ __ROR4__(v144 ^ ((v144 ^ 0xFD88CD19) >> 2) ^ ((v144 ^ 0xFD88CD19) >> 1) ^ 0xA84C436F, 8) ^ __ROR4__(v145 ^ ((v145 ^ 0xFD88CD19) >> 2) ^ ((v145 ^ 0xFD88CD19) >> 1) ^ 0x73D7CE4A, 24);
  LODWORD(v128) = v128 ^ (16 * (v128 ^ 0xD607A034)) ^ (2 * (v128 ^ 0xD607A034)) ^ __ROR4__(v142 ^ 0x18BF335C ^ (16 * (v142 ^ 0xD607A034)) ^ (2 * (v142 ^ 0xD607A034)), 8) ^ __ROR4__(v146 ^ 0xB5C22C02, 24) ^ __ROR4__(v7 ^ 0xE51ABA35 ^ (16 * (v7 ^ 0xD607A034)) ^ (2 * (v7 ^ 0xD607A034)), 16) ^ 0xBB6856AB;
  v2[571] = HIBYTE(v147);
  v2[1804] = BYTE3(v128);
  v2[572] = BYTE2(v147);
  v2[1805] = BYTE2(v128);
  v2[573] = BYTE1(v147);
  v2[1806] = BYTE1(v128);
  v2[574] = v147;
  v2[1807] = v128;
  v148 = v2[575];
  v149 = v2[576];
  LODWORD(v7) = *(v3 + 4 * (v2[578] ^ 0x18));
  v150 = *(v3 + 4 * (v2[577] ^ 0xB7));
  STACK[0x3940] = v149;
  v151 = *(v3 + 4 * (v149 ^ 0x97));
  v2[575] = (v150 ^ 0xEC3FA860 ^ ((v150 ^ 0xFD88CD19) >> 2) ^ ((v150 ^ 0xFD88CD19) >> 1) ^ __ROR4__(v7 ^ 0xB8001750 ^ ((v7 ^ 0xFD88CD19) >> 2) ^ ((v7 ^ 0xFD88CD19) >> 1), 8) ^ __ROR4__(v151 ^ ((v151 ^ 0xFD88CD19) >> 2) ^ ((v151 ^ 0xFD88CD19) >> 1) ^ 0xEF65EE6, 24) ^ __ROR4__(*(v3 + 4 * (v148 ^ 0x16)) ^ ((*(v3 + 4 * (v148 ^ 0x16)) ^ 0xFD88CD19) >> 2) ^ ((*(v3 + 4 * (v148 ^ 0x16)) ^ 0xFD88CD19) >> 1) ^ 0xB2C7CB49, 16)) >> 24;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_100D82168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 8 * (LODWORD(STACK[0x3D68]) - 10702));
  STACK[0x36D0] = STACK[0x16A8];
  STACK[0x37A8] = STACK[0x3398];
  STACK[0x3860] = STACK[0x16A0];
  STACK[0x3760] = STACK[0x29B0];
  v7 = STACK[0x1208];
  LODWORD(STACK[0x36B8]) = STACK[0x366C];
  LODWORD(STACK[0x33E8]) = STACK[0x3688];
  LODWORD(STACK[0x3B18]) = STACK[0x39A8];
  LODWORD(STACK[0x3698]) = STACK[0x3700];
  LODWORD(STACK[0x3550]) = STACK[0x37B8];
  LODWORD(STACK[0x38C8]) = STACK[0x31D0];
  LODWORD(STACK[0x33C0]) = STACK[0x2A48];
  LODWORD(STACK[0x3858]) = STACK[0x33A8];
  LODWORD(STACK[0x3958]) = STACK[0x32C8];
  LODWORD(STACK[0x32E8]) = STACK[0x2630];
  LODWORD(STACK[0x36A0]) = STACK[0x128C];
  return v6(a1, a2, a3, a4, a5, v7);
}

uint64_t sub_100D82214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unint64_t a8)
{
  LODWORD(STACK[0x3E18]) = 0;
  LODWORD(STACK[0x3D78]) = 0;
  LODWORD(STACK[0x3D50]) = 0;
  LODWORD(STACK[0x3D40]) = 0;
  LODWORD(STACK[0x3D38]) = 0;
  LODWORD(STACK[0x3D30]) = 0;
  v11 = v9 - 18444;
  v12 = (v11 + 15898) | 0x8A;
  LODWORD(STACK[0x3D68]) = v12;
  v13 = *(v10 + 8 * (((v8 == (v12 ^ 0x52B6)) * ((v11 + 5212) ^ 0x4ABE)) ^ v11));
  LODWORD(STACK[0x3D98]) = 1;
  LODWORD(STACK[0x2BB0]) = 41;
  STACK[0x3D58] = STACK[0x3D8];
  STACK[0x3D60] = STACK[0x3998];
  STACK[0x3D88] = STACK[0x39E8];
  STACK[0x16A8] = STACK[0x36D0];
  STACK[0x3398] = STACK[0x37A8];
  STACK[0x16A0] = STACK[0x3860];
  STACK[0x29B0] = STACK[0x3760];
  STACK[0x480] = STACK[0x2B88];
  STACK[0x10F0] = STACK[0x3290];
  STACK[0x470] = a8;
  v14 = STACK[0x32D8];
  LODWORD(STACK[0x3AE0]) = STACK[0x32D8];
  LODWORD(STACK[0x3E40]) = STACK[0x39A0];
  LODWORD(STACK[0x268C]) = a7;
  LODWORD(STACK[0x366C]) = STACK[0x36B8];
  LODWORD(STACK[0x3688]) = STACK[0x32E0];
  LODWORD(STACK[0x39A8]) = STACK[0x3B18];
  STACK[0x3700] = LODWORD(STACK[0x3698]);
  LODWORD(STACK[0x2010]) = STACK[0x38B8];
  STACK[0x37B8] = LODWORD(STACK[0x3550]);
  LODWORD(STACK[0x3D20]) = STACK[0x3948];
  LODWORD(STACK[0x3710]) = STACK[0x3808];
  LODWORD(STACK[0x31D0]) = STACK[0x38C8];
  LODWORD(STACK[0x2A48]) = STACK[0x33C0];
  LODWORD(STACK[0x3D90]) = STACK[0x3988];
  STACK[0x33A8] = LODWORD(STACK[0x3858]);
  LODWORD(STACK[0x3268]) = v14;
  LODWORD(STACK[0x2630]) = STACK[0x32E8];
  STACK[0x2228] = LODWORD(STACK[0x2B80]);
  LODWORD(STACK[0x128C]) = STACK[0x36A0];
  LODWORD(STACK[0x3D70]) = STACK[0x3980];
  return v13();
}

uint64_t sub_100D82390(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v10 = *v6 + a1 + (v7 + *(a2 + 4) * v8);
  *v5 = v10;
  return (*(v9 + 8 * (((a3 + 1 != LODWORD(STACK[0x3E40])) * (a5 - 1108367196)) ^ a4)))(HIDWORD(v10), a2 + 4);
}

uint64_t sub_100D8244C(uint64_t a1, int a2)
{
  *STACK[0x3DA8] ^= 0x80u;
  *(STACK[0x3D18] + 393) = v2 ^ (a2 + 82) ^ 0xA1;
  return (*(v3 + 8 * a2))();
}

uint64_t sub_100D824F8(int a1)
{
  LOBYTE(STACK[0x71E7]) = v1;
  LODWORD(STACK[0x71E8]) = a1 ^ 0x140487;
  LODWORD(STACK[0x71EC]) = (LODWORD(STACK[0x71E0]) << ((v2 + 69) ^ 0x57)) & 0x4DE1DE78;
  return (*(v3 + 8 * (v2 + 2382)))();
}

uint64_t sub_100D826BC()
{
  STACK[0x3940] = *(v2 + LODWORD(STACK[0x3E18]));
  LODWORD(STACK[0x3E18]) = v0 + 25;
  v5 = *(v4 + 8 * (((((v1 == 25) ^ (v3 + 19)) & 1) * (((v3 - 1653724923) & 0x6291F69E) - 20665)) ^ v3));
  STACK[0x3850] = 25;
  return v5();
}

uint64_t sub_100D8275C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  v5 = *(v4 + 8 * (v3 - 14599));
  LODWORD(STACK[0x3CF0]) = 21;
  LODWORD(STACK[0x3D88]) = 2;
  v6 = v3;
  v7 = STACK[0x3E0];
  STACK[0x3D40] = STACK[0x3E0];
  v8 = STACK[0x2618];
  STACK[0x3D78] = STACK[0x2618];
  STACK[0x3B20] = v7;
  STACK[0x3B18] = v8;
  STACK[0x3818] = LODWORD(STACK[0x3988]);
  LODWORD(STACK[0x1204]) = STACK[0x39A0];
  LODWORD(STACK[0x2134]) = STACK[0x36B8];
  v9 = STACK[0x3820];
  LODWORD(STACK[0x3688]) = STACK[0x2B30];
  LODWORD(STACK[0x3858]) = STACK[0x2B40];
  LODWORD(STACK[0x3B00]) = v9;
  LODWORD(STACK[0x1954]) = STACK[0x2B70];
  LODWORD(STACK[0x1A78]) = STACK[0x3268];
  LODWORD(STACK[0x3AE8]) = STACK[0x3998];
  LODWORD(STACK[0x3AE0]) = STACK[0x2B60];
  LODWORD(STACK[0x3810]) = STACK[0x2B28];
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v5(a1, v6, a3, v9);
}

uint64_t sub_100D82838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W8>)
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  v4 = (a3 - 15464) | 0x4420;
  v5 = *(v3 + 8 * ((LODWORD(STACK[0x880]) ^ (v4 + 72 + v4 + 1)) & 1 ^ v4));
  v6 = v4 ^ 0x66Cu;
  LODWORD(STACK[0x3CF0]) = 18;
  LODWORD(STACK[0x3D88]) = 2;
  v7 = STACK[0x438];
  STACK[0x3D40] = STACK[0x438];
  v8 = STACK[0x2618];
  STACK[0x3D78] = STACK[0x2618];
  STACK[0x3B20] = v7;
  STACK[0x3B18] = v8;
  STACK[0x3818] = LODWORD(STACK[0x3988]);
  LODWORD(STACK[0x1204]) = STACK[0x39A0];
  LODWORD(STACK[0x2134]) = STACK[0x36B8];
  v9 = STACK[0x3820];
  LODWORD(STACK[0x3688]) = STACK[0x2B30];
  LODWORD(STACK[0x3858]) = STACK[0x2B40];
  LODWORD(STACK[0x3B00]) = STACK[0x2B88];
  LODWORD(STACK[0x1954]) = STACK[0x2B70];
  LODWORD(STACK[0x1A78]) = STACK[0x3268];
  LODWORD(STACK[0x3AE8]) = STACK[0x3998];
  LODWORD(STACK[0x3AE0]) = v9;
  LODWORD(STACK[0x3810]) = STACK[0x2B28];
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v5(a1, v6, a2, v9);
}

uint64_t sub_100D82944()
{
  v2 = *(*STACK[0x3E40] + (STACK[0x1468] & *v0));
  v3 = (v2 + STACK[0x1460]) ^ 0xC2AF3EAA3FF1B8E4;
  v4 = v3 ^ __ROR8__(v2, 61);
  v5 = __ROR8__(v3, 8);
  v6 = (((2 * (v5 + v4)) & 0xF61EADBCE5C72632) - (v5 + v4) + 0x4F0A9218D1C6CE6) ^ 0x6102FDFC9591D81ALL;
  v7 = v6 ^ __ROR8__(v4, 61);
  v8 = (__ROR8__(v6, 8) + v7) ^ 0x6FF046966119128DLL;
  v9 = __ROR8__(v8, 8);
  v10 = v8 ^ __ROR8__(v7, 61);
  v11 = (0x9F7F159BEE11603BLL - ((v9 + v10) | 0x9F7F159BEE11603BLL) + ((v9 + v10) | 0x6080EA6411EE9FC4)) ^ 0xC13277A1C6988CEFLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xEF042041F5E548ECLL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xD8C7B31FCA19D9DELL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x5455012E8AB1C38FLL;
  v18 = LOBYTE(STACK[0x3F17]) ^ (LOBYTE(STACK[0x459B]) - ((2 * LOBYTE(STACK[0x459B])) & 0x7C) + 62) ^ (((__ROR8__(v17, 8) + (v17 ^ __ROR8__(v16, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> STACK[0x13E8]) ^ 0x3E;
  v19 = STACK[0x6C20] >> 24;
  v20 = STACK[0x4EA0];
  v21 = *(v20 + v18) ^ (2 * (STACK[0x4E9D] & *(v20 + v18)));
  v22 = v21 << STACK[0x5320];
  v23 = (v21 & STACK[0x4E9E]) >> STACK[0x5328];
  LOBYTE(STACK[0x459D]) = v23;
  LOBYTE(v23) = v23 | v22;
  LODWORD(v20) = *(v20 + LOBYTE(STACK[0x4590]));
  v24 = v20 ^ (2 * (LOBYTE(STACK[0x4E9F]) & v20));
  LOBYTE(STACK[0x459E]) = v24;
  v25 = (LOBYTE(STACK[0x4E9C]) & v24) >> STACK[0x5350];
  LOBYTE(STACK[0x459F]) = v25;
  STACK[0x45A0] = LODWORD(STACK[0x6C34]);
  LOBYTE(v24) = (v24 << STACK[0x5338]) | v25;
  LOBYTE(STACK[0x45AC]) = v19;
  *(STACK[0x3D18] + 1804) = v24 ^ LODWORD(STACK[0x52C0]) ^ v23;
  v26 = *(v1 + 8 * (LODWORD(STACK[0x23AC]) ^ 0x4202));
  STACK[0x3F18] = STACK[0x1860];
  STACK[0x3F08] = v26;
  return (*(v1 + 8 * (LODWORD(STACK[0x232C]) + 10513)))();
}

uint64_t sub_100D82C08(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v17 = a1 - v10;
  v18 = (((a7 - 17243) | 0x4818) ^ 0xC0DF2CBA) + v10;
  v19 = v12 + v10 + a3;
  v20 = v18 ^ v17;
  v21 = v7 - v14;
  v22 = v15 + v14 + v8;
  v23 = v22 + v15 + v14;
  v24 = v21 ^ (v14 - 1059109214);
  v25 = v22 ^ (v14 - 1059109214);
  v26 = v18 ^ v19;
  LODWORD(STACK[0x3CF0]) = a7 - 11973;
  v27 = v22 - v24 + 479235322 + a7 - 11973;
  v28 = v26 + v19 + v12 + v10;
  v26 += 1595603960;
  v29 = v19 - v20 + 479249296;
  v30 = v25 + v23;
  v25 += 1595603960;
  v31 = v24 + v25;
  v32 = v25 - v30;
  v33 = (v26 + v20 - 1182349367) ^ (v26 - v28);
  v34 = v28 + 1926668679 - (v26 - v28);
  v35 = v34 ^ (v26 - v28);
  v36 = (((v26 + v20) ^ v29) + 230368067) ^ v33;
  v33 += 900376201;
  v37 = v36 + v34;
  LODWORD(STACK[0x3D98]) = v37 + v13;
  v38 = v36 + (v35 ^ 0xCB205F0);
  LODWORD(STACK[0x3E18]) = ((((((v31 - 1182349367) ^ v32) + 900376201) ^ v9) - (((v31 - 1182349367) ^ v32) + 900376201)) ^ ((v9 ^ 0xCB205F0 ^ (v30 + 1926668679 - v32) ^ v32) - ((v30 + 1926668679 - v32) ^ v32 ^ 0xCB205F0)) ^ ((v9 ^ 0xCB205F0 ^ v35 ^ v13 ^ v33) - (v35 ^ v13 ^ v33 ^ 0xCB205F0))) - ((((v27 ^ v31) + 230368067) ^ (v31 - 1182349367) ^ v32) + v30 + 1926668679 - v32);
  return (*(v11 + 8 * (a7 ^ (7318 * (v16 == 79)))))(((v35 ^ 0x404AA53D) - (v37 - 328284377 - (v38 + v33)) + ((v38 - (v35 ^ 0x404AA53D)) ^ 0x79D6E31)) ^ (v38 + v33 + (v35 ^ 0x404AA53Du) + 688378577), 1703490123, ((v38 - (v35 ^ 0x404AA53D)) ^ 0x79D6E31u) + 1703490123);
}

uint64_t sub_100D82F9C(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8)
{
  v15 = *(STACK[0x3DC0] + 4 * ((v8 ^ v12) & a5 ^ a1) + a8) ^ a7;
  *(STACK[0x3AD0] + 4 * v8) = v11 ^ v15 ^ (v15 >> 5) ^ (v15 >> 3) ^ v13;
  return (*(v10 + 8 * (((v9 == 0) * v14) ^ LODWORD(STACK[0x3364]))))();
}

uint64_t sub_100D83054@<X0>(int a1@<W3>, int a2@<W8>)
{
  v8 = v5 | (LODWORD(STACK[0x3D88]) << 24);
  v9 = *STACK[0x5360];
  STACK[0x2788] = v9;
  v10 = STACK[0x52D8];
  v11 = (v9 << 24) ^ (2 * ((v9 << 24) & STACK[0x52D8]));
  v12 = v4 ^ 0x490000u;
  v13 = STACK[0x3660];
  HIDWORD(v14) = *(STACK[0x3660] + 4 * BYTE2(v12));
  LODWORD(v14) = HIDWORD(v14);
  v15 = (v14 >> 8) ^ __ROR4__(*(STACK[0x3660] + 4 * BYTE1(v12)), 16);
  LODWORD(v9) = *(STACK[0x3660] + 4 * v6);
  STACK[0x17D0] = v12;
  LODWORD(v9) = *(v13 + ((v12 >> 22) & 0x3FC)) ^ __ROR4__(v9, 24);
  v16 = (*STACK[0x5370] << 24) ^ (2 * ((*STACK[0x5370] << 24) & v10));
  v17 = v3 + v2 + v8;
  LODWORD(STACK[0x17DC]) = v17;
  v18 = a2 ^ 0x49000049;
  LODWORD(STACK[0x195C]) = a2 ^ 0x49000049;
  LODWORD(STACK[0x1834]) = a1 ^ 0x49490000;
  v19 = STACK[0x52CC];
  LODWORD(STACK[0x3948]) = v11;
  v20 = (v11 & v19) << STACK[0x5338];
  v21 = STACK[0x5338];
  v22 = STACK[0x52C8];
  v23 = STACK[0x5328];
  v24 = v9 ^ v17 ^ v15;
  LODWORD(STACK[0x3CA8]) = v24;
  LODWORD(v20) = v24 ^ LODWORD(STACK[0x64A8]) ^ v20 ^ ((v11 & v22) >> v23);
  v25 = LODWORD(STACK[0x64AC]) ^ v18;
  v26 = STACK[0x52A4];
  v27 = v20 ^ v25 ^ a1 ^ 0x49490000 ^ LODWORD(STACK[0x52A4]);
  v28 = STACK[0x537C];
  v29 = LODWORD(STACK[0x537C]) ^ v12;
  LODWORD(STACK[0x3CA0]) = v29;
  LODWORD(STACK[0x3BD0]) = v28;
  LODWORD(v12) = STACK[0x52BC];
  v30 = v27 ^ v29 ^ LODWORD(STACK[0x52BC]);
  LODWORD(v9) = v27;
  LODWORD(STACK[0x3D78]) = v27;
  v31 = *(v13 + 4 * BYTE1(v30));
  LODWORD(STACK[0x3D90]) = v20 ^ 0xDD708398;
  v32 = v20 ^ 0xDD708398 ^ __ROR4__(v31, 16) ^ __ROR4__(*(v13 + 4 * v30), 24);
  LODWORD(v14) = __ROR4__(*(v13 + 4 * BYTE2(v30)), 8);
  v33 = v20 ^ v25;
  LODWORD(STACK[0x3E38]) = v20 ^ v25;
  v34 = STACK[0x52AC];
  LODWORD(STACK[0x3AD8]) = v16;
  v35 = STACK[0x5320];
  v36 = STACK[0x52A8];
  v37 = v16 & STACK[0x52A8];
  STACK[0x3AE0] = v37;
  v38 = v30;
  STACK[0x3D70] = v30;
  LODWORD(v37) = v32 ^ v14 ^ *(v13 + ((v30 >> 22) & 0x3FC)) ^ (v37 >> v23) ^ ((v16 & v34) << v35);
  v39 = STACK[0x52C0];
  v40 = LODWORD(STACK[0x52C0]) ^ v33 ^ v37;
  LODWORD(v30) = v37;
  LODWORD(STACK[0x3D80]) = v37;
  LODWORD(v20) = v40 ^ v9;
  LODWORD(v37) = v40 ^ v9 ^ v26;
  LODWORD(STACK[0x3D88]) = v37;
  LODWORD(v37) = v37 ^ v38;
  v41 = v37 ^ v28;
  v42 = v30 ^ __ROR4__(*(v13 + 4 * BYTE2(v41)), 8) ^ __ROR4__(*(v13 + 4 * BYTE1(v41)), 16);
  v43 = v41;
  STACK[0x3CC0] = v41;
  LODWORD(v14) = __ROR4__(*(v13 + 4 * (v37 ^ v28)), 24);
  v44 = v10;
  v45 = (*STACK[0x5388] << 24) ^ (2 * ((*STACK[0x5388] << 24) & v10));
  LODWORD(v41) = *STACK[0x5380] << 24;
  LODWORD(STACK[0x3AA0]) = v41;
  v46 = STACK[0x52B8];
  v47 = STACK[0x5350];
  v48 = v42 ^ v14 ^ ((((v41 ^ (2 * (v41 & v46))) & v34) << v21) | (((v41 ^ (2 * (v41 & v46))) & v36) >> STACK[0x5350])) ^ *(v13 + ((v43 >> 22) & 0x3FC));
  v49 = v40 ^ v12;
  LODWORD(STACK[0x3D10]) = v49;
  v50 = v26 ^ v49 ^ v48;
  LODWORD(STACK[0x3E18]) = v48;
  v51 = v37 ^ v20 ^ v50 ^ v12;
  STACK[0x3D68] = v51;
  LODWORD(STACK[0x3D20]) = v50 ^ v12;
  v52 = v48 ^ __ROR4__(*(v13 + 4 * BYTE2(v51)), 8) ^ *(v13 + ((v51 >> 22) & 0x3FC));
  LODWORD(v14) = __ROR4__(*(v13 + 4 * (v37 ^ v20 ^ v50 ^ v12)), 24);
  LODWORD(STACK[0x3A28]) = v45;
  LODWORD(v41) = v52 ^ v14 ^ (((v45 & v36) >> v47) + ((v45 & v34) << v35)) ^ __ROR4__(*(v13 + 4 * BYTE1(v51)), 16);
  v53 = (*STACK[0x5390] << 24) ^ (2 * ((*STACK[0x5390] << 24) & v10));
  v54 = v39 ^ v50 ^ v12 ^ v41;
  LODWORD(STACK[0x3CE8]) = v41;
  v55 = v54 ^ v37;
  LODWORD(v37) = v41 ^ __ROR4__(*(v13 + 4 * BYTE2(v55)), 8);
  LODWORD(v14) = __ROR4__(*(v13 + 4 * v55), 24);
  v56 = v53 & v36;
  v57 = v36;
  STACK[0x3A68] = v56;
  v58 = v53 & v19;
  STACK[0x3A60] = v58;
  v59 = v37 ^ v14 ^ *(v13 + ((v55 >> 22) & 0x3FC)) ^ (v58 << v21) ^ (v56 >> v23) ^ __ROR4__(*(v13 + 4 * BYTE1(v55)), 16);
  LODWORD(v20) = v50 ^ v20;
  LODWORD(STACK[0x3C10]) = v20;
  LODWORD(STACK[0x3CD0]) = v54 ^ v20;
  LODWORD(STACK[0x3C00]) = v54 ^ v12;
  LODWORD(v37) = v39 ^ v54 ^ v12 ^ v59;
  LODWORD(STACK[0x3C90]) = v59;
  LODWORD(v20) = v37 ^ v54 ^ v20;
  LODWORD(STACK[0x3CD8]) = v20;
  LODWORD(v20) = v20 ^ v39;
  v60 = v20 ^ v55;
  STACK[0x3CC8] = v55;
  v61 = v59 ^ __ROR4__(*(v13 + 4 * (v20 ^ v55)), 24) ^ *(v13 + ((v60 >> 22) & 0x3FC));
  LODWORD(v14) = __ROR4__(*(v13 + 4 * BYTE1(v60)), 16);
  v62 = *STACK[0x5398] << 24;
  LODWORD(STACK[0x39A8]) = v62;
  v63 = v46;
  LODWORD(STACK[0x3988]) = v46;
  v64 = v22;
  STACK[0x3CB8] = v60;
  v65 = v61 ^ v14 ^ ((((v62 ^ (2 * (v62 & v46))) & v22) >> v47) | (((v62 ^ (2 * (v62 & v46))) & v19) << v21)) ^ __ROR4__(*(v13 + 4 * BYTE2(v60)), 8);
  v66 = (*STACK[0x53A8] << 24) ^ (2 * ((*STACK[0x53A8] << 24) & v10));
  LODWORD(v37) = v12 ^ v37;
  LODWORD(STACK[0x3BD8]) = v37;
  LODWORD(v37) = v26 ^ v37 ^ v65;
  LODWORD(STACK[0x3CF0]) = v65;
  LODWORD(STACK[0x3C08]) = v37 ^ v20;
  v67 = STACK[0x53A4];
  LODWORD(STACK[0x3958]) = STACK[0x53A4];
  v68 = v67 ^ v60 ^ v37 ^ v20;
  v69 = v65 ^ __ROR4__(*(v13 + 4 * (v67 ^ v20 ^ v55 ^ v37 ^ v20)), 24);
  LODWORD(v14) = __ROR4__(*(v13 + 4 * BYTE1(v68)), 16);
  v70 = v66 & v34;
  STACK[0x39E8] = v70;
  v71 = v66 & v22;
  STACK[0x39F0] = v71;
  v72 = v69 ^ v14 ^ *(v13 + ((v68 >> 22) & 0x3FC)) ^ ((v71 >> v23) + (v70 << v21));
  STACK[0x3B70] = v68;
  v73 = v72 ^ __ROR4__(*(v13 + 4 * BYTE2(v68)), 8);
  v74 = v73 ^ v20;
  v75 = v37 ^ v55 ^ v73 ^ v20;
  LODWORD(v14) = __ROR4__(*(v13 + 4 * BYTE2(v75)), 8);
  LODWORD(v55) = v73;
  LODWORD(STACK[0x3BB8]) = v73;
  v76 = *(v13 + ((v75 >> 22) & 0x3FC));
  STACK[0x3BE8] = v75;
  v77 = v73 ^ v14 ^ v76;
  LODWORD(v14) = __ROR4__(*(v13 + 4 * BYTE1(v75)), 16);
  LODWORD(v70) = *STACK[0x53B0] << 24;
  LODWORD(STACK[0x39C0]) = v70;
  LODWORD(STACK[0x3950]) = v44;
  LODWORD(v75) = v77 ^ v14 ^ (((v22 & (v70 ^ (2 * (v44 & v70)))) >> v23) + (((v70 ^ (2 * (v44 & v70))) & v34) << v35)) ^ __ROR4__(*(v13 + 4 * v75), 24);
  v78 = (*STACK[0x53B8] << 24) ^ (2 * ((*STACK[0x53B8] << 24) & v63));
  LODWORD(v37) = v37 ^ v12;
  LODWORD(STACK[0x3B88]) = v37;
  LODWORD(v37) = v39 ^ v37 ^ v55;
  LOBYTE(v22) = v47;
  v79 = (v78 & v57) >> v47;
  STACK[0x3998] = v79;
  v80 = (v78 & v34) << v35;
  STACK[0x39A0] = v80;
  LODWORD(STACK[0x3BA8]) = v37 ^ v12;
  LODWORD(STACK[0x3BB0]) = v75;
  v81 = v75 ^ v39 ^ v37 ^ v12;
  v82 = v67 ^ v81 ^ v68;
  STACK[0x3B98] = v82;
  STACK[0x3AE8] = v82 >> 24;
  LODWORD(v82) = v75 ^ __ROR4__(*(v13 + 4 * BYTE1(v82)), 16) ^ *(v13 + 4 * (v82 >> 24)) ^ (v79 + v80) ^ __ROR4__(*(v13 + 4 * (v67 ^ v81 ^ v68)), 24) ^ __ROR4__(*(v13 + 4 * BYTE2(v82)), 8);
  LODWORD(v79) = (*STACK[0x53C0] << 24) ^ (2 * ((*STACK[0x53C0] << 24) & v44));
  LODWORD(v37) = v75 ^ v39 ^ v37;
  LODWORD(STACK[0x3E40]) = v37;
  v83 = v12;
  LODWORD(STACK[0x3B18]) = v12 ^ v74;
  v84 = v81 ^ v12 ^ v74;
  LODWORD(STACK[0x3B68]) = v84 ^ v26;
  LODWORD(v80) = v12 ^ v84 ^ v26;
  LODWORD(STACK[0x3BA0]) = v80;
  LODWORD(v37) = v82 ^ v37;
  LODWORD(STACK[0x3B60]) = v37;
  LODWORD(STACK[0x3B90]) = v82;
  v85 = v81 ^ v68 ^ v80 ^ v37;
  LODWORD(v80) = *(v13 + ((v85 >> 22) & 0x3FC)) ^ __ROR4__(*(v13 + 4 * BYTE1(v85)), 16) ^ __ROR4__(*(v13 + 4 * BYTE2(v85)), 8);
  v86 = v85;
  STACK[0x3930] = v85;
  LODWORD(v14) = __ROR4__(*(v13 + 4 * v85), 24);
  v87 = v79 & v57;
  STACK[0x3980] = v87;
  LODWORD(v68) = v57;
  v88 = v79 & v19;
  STACK[0x3960] = v88;
  LODWORD(v79) = v80 ^ v14 ^ ((v88 << v21) | (v87 >> v47));
  LODWORD(v87) = v79 ^ v82;
  v89 = v79 ^ v82 ^ v12;
  v90 = STACK[0x33D8];
  LODWORD(v85) = *(STACK[0x33D8] + 4 * BYTE2(v89));
  LODWORD(v80) = *(STACK[0x33D8] + ((v89 >> 22) & 0x3FC));
  LODWORD(STACK[0x3848]) = 0;
  STACK[0x38B0] = v89;
  LODWORD(STACK[0x3928]) = v80 ^ __ROR4__(v85, 24) ^ __ROR4__(*(v90 + 4 * BYTE1(v89)), 16) ^ __ROR4__(*(v90 + 4 * v89), 8);
  v91 = v79 ^ LODWORD(STACK[0x3E40]);
  STACK[0x38A0] = v91;
  LODWORD(v89) = *(v90 + ((v91 >> 22) & 0x3FC)) ^ __ROR4__(*(v90 + 4 * BYTE2(v91)), 24) ^ __ROR4__(*(v90 + 4 * BYTE1(v91)), 16);
  v92 = v84 ^ v87;
  v93 = v92 ^ v86 ^ v26;
  v94 = *(v90 + 4 * v91);
  LODWORD(v87) = *(v90 + ((v93 >> 22) & 0x3FC));
  LODWORD(v91) = *(v90 + 4 * BYTE2(v93));
  LODWORD(STACK[0x38D0]) = v89 ^ __ROR4__(v94, 8);
  LODWORD(STACK[0x38D8]) = v87 ^ __ROR4__(v91, 24) ^ __ROR4__(*(v90 + 4 * BYTE1(v93)), 16) ^ __ROR4__(*(v90 + 4 * v93), 8);
  v95 = v34;
  LODWORD(v47) = v68;
  LODWORD(v87) = LODWORD(STACK[0x3CA8]) ^ v83 ^ (((v68 & STACK[0x3948]) >> v23) + ((v34 & STACK[0x3948]) << v35));
  LODWORD(STACK[0x3940]) = v87;
  LODWORD(v89) = ((v19 & STACK[0x3AD8]) << v21) + (STACK[0x3AE0] >> v22);
  LODWORD(v93) = v39 ^ LODWORD(STACK[0x195C]) ^ v87;
  LODWORD(STACK[0x3948]) = v93;
  LODWORD(v93) = v26 ^ v93;
  v96 = v26;
  LODWORD(v68) = STACK[0x1834];
  LODWORD(STACK[0x3938]) = v93 ^ LODWORD(STACK[0x1834]);
  v97 = v13;
  v98 = v93 ^ v68 ^ LODWORD(STACK[0x3CA0]);
  LODWORD(v80) = v87 ^ v89 ^ *(v13 + ((v98 >> 22) & 0x3FC)) ^ __ROR4__(*(v13 + 4 * ((v93 ^ v68 ^ LODWORD(STACK[0x3CA0])) >> 16)), 8) ^ __ROR4__(*(v13 + 4 * ((v93 ^ v68 ^ LOWORD(STACK[0x3CA0])) >> 8)), 16) ^ __ROR4__(*(v13 + 4 * (v93 ^ v68 ^ LODWORD(STACK[0x3CA0]))), 24);
  LODWORD(STACK[0x3900]) = v80;
  v99 = STACK[0x3950];
  LODWORD(v89) = LODWORD(STACK[0x3AA0]) ^ (2 * (STACK[0x3950] & LODWORD(STACK[0x3AA0])));
  v100 = v19;
  v101 = (v89 & v19) << v21;
  LOBYTE(v19) = v21;
  STACK[0x3818] = v21;
  LODWORD(v90) = v64;
  LODWORD(v89) = ((v64 & v89) >> v23) | v101;
  LODWORD(v101) = v80 ^ v68;
  LODWORD(v13) = v98;
  STACK[0x37D8] = v98;
  v102 = v83 ^ v98 ^ v80 ^ v68;
  LODWORD(v89) = v80 ^ __ROR4__(*(v97 + 4 * BYTE2(v102)), 8) ^ *(v97 + ((v102 >> 22) & 0x3FC)) ^ v89 ^ __ROR4__(*(v97 + 4 * BYTE1(v102)), 16);
  LODWORD(v68) = v83 ^ v98 ^ v80 ^ v68;
  STACK[0x38F8] = v102;
  LODWORD(v87) = v89 ^ __ROR4__(*(v97 + 4 * v68), 24);
  LODWORD(v102) = v39;
  LODWORD(v89) = v101 ^ v39;
  LODWORD(v80) = v93 ^ v80;
  LODWORD(v98) = v101 ^ v39 ^ v83;
  LODWORD(STACK[0x3908]) = v98;
  LODWORD(v93) = v87 ^ v80;
  LODWORD(v75) = v80;
  LODWORD(STACK[0x3820]) = v80;
  LODWORD(v80) = v87;
  LODWORD(STACK[0x3890]) = v87;
  LODWORD(STACK[0x3920]) = v93 ^ v26;
  LODWORD(v101) = v93 ^ v26 ^ v98;
  v103 = STACK[0x3958];
  v104 = LODWORD(STACK[0x3958]) ^ v68 ^ v101 ^ v39;
  v105 = v101 ^ v39;
  LODWORD(STACK[0x38C8]) = v105;
  STACK[0x3CA8] = v104;
  LODWORD(v87) = *(v97 + ((v104 >> 22) & 0x3FC)) ^ __ROR4__(*(v97 + 4 * v104), 24) ^ (((v90 & STACK[0x3A28]) >> v22) + ((v100 & STACK[0x3A28]) << v19)) ^ __ROR4__(*(v97 + 4 * BYTE1(v104)), 16) ^ __ROR4__(*(v97 + 4 * BYTE2(v104)), 8);
  LODWORD(v89) = v89 ^ v13 ^ v101;
  LODWORD(v68) = STACK[0x3BD0];
  LODWORD(STACK[0x3A28]) = v87 ^ v80;
  LODWORD(v93) = v68 ^ v93 ^ v87 ^ v80;
  LODWORD(STACK[0x3AA0]) = v93;
  v106 = v93 ^ v105 ^ v89;
  v107 = v93 ^ v105;
  LODWORD(STACK[0x3838]) = v107;
  STACK[0x3CA0] = v106;
  LODWORD(v98) = v87 ^ v80 ^ __ROR4__(*(v97 + 4 * BYTE2(v106)), 8) ^ __ROR4__(*(v97 + 4 * BYTE1(v106)), 16) ^ (STACK[0x3A68] >> v22) ^ (STACK[0x3A60] << v35) ^ *(v97 + ((v106 >> 22) & 0x3FC)) ^ __ROR4__(*(v97 + 4 * v106), 24);
  LODWORD(STACK[0x3888]) = v98;
  LODWORD(v93) = LODWORD(STACK[0x39A8]) ^ (2 * (v99 & STACK[0x39A8]));
  LODWORD(STACK[0x39A8]) = v87 ^ v75;
  LODWORD(v80) = v98 ^ v87 ^ v75;
  LODWORD(v89) = v80 ^ v89;
  LODWORD(v75) = v80;
  LODWORD(STACK[0x3880]) = v80;
  v108 = v103 ^ v89;
  LODWORD(v106) = v103;
  LODWORD(v101) = v98 ^ __ROR4__(*(v97 + 4 * BYTE2(v108)), 8) ^ *(v97 + ((v108 >> 22) & 0x3FC));
  STACK[0x3A60] = v108;
  LODWORD(v13) = v95;
  LODWORD(v98) = v101 ^ __ROR4__(*(v97 + 4 * BYTE1(v108)), 16) ^ (((v95 & v93) << v35) + ((v93 & v90) >> v23)) ^ __ROR4__(*(v97 + 4 * (v103 ^ v89)), 24);
  LODWORD(STACK[0x3878]) = v98;
  LODWORD(v108) = v75 ^ v102 ^ v83;
  LODWORD(STACK[0x3860]) = v108;
  LODWORD(v93) = v96 ^ v108 ^ v98;
  LODWORD(v87) = v75 ^ v102 ^ v107 ^ v93;
  v109 = STACK[0x39E8] << v35;
  v110 = v83;
  v111 = v83 ^ v89 ^ v87;
  v112 = v87;
  LODWORD(STACK[0x3858]) = v87;
  LODWORD(v89) = *(v97 + ((v111 >> 22) & 0x3FC)) ^ v98 ^ ((STACK[0x39F0] >> v22) + v109) ^ __ROR4__(*(v97 + 4 * BYTE2(v111)), 8) ^ __ROR4__(*(v97 + 4 * v111), 24);
  STACK[0x39E8] = v111;
  LODWORD(v87) = v89 ^ __ROR4__(*(v97 + 4 * BYTE1(v111)), 16);
  LODWORD(v104) = STACK[0x3988];
  LOBYTE(v95) = v22;
  LODWORD(v89) = (((LODWORD(STACK[0x39C0]) ^ (2 * (v104 & STACK[0x39C0]))) & v47) >> v22) ^ (((LODWORD(STACK[0x39C0]) ^ (2 * (v104 & STACK[0x39C0]))) & v100) << v35);
  LODWORD(STACK[0x3850]) = v93 ^ v110;
  LODWORD(v75) = v87;
  LODWORD(STACK[0x3840]) = v87;
  LODWORD(v87) = v87 ^ v102;
  LODWORD(v109) = v112 ^ v93 ^ v110 ^ v96 ^ v87;
  v113 = v109 ^ v111 ^ v68;
  LODWORD(v89) = *(v97 + ((v113 >> 22) & 0x3FC)) ^ v75 ^ v89 ^ __ROR4__(*(v97 + 4 * BYTE2(v113)), 8) ^ __ROR4__(*(v97 + 4 * v113), 24);
  STACK[0x39C0] = v113;
  LODWORD(v98) = v89 ^ __ROR4__(*(v97 + 4 * BYTE1(v113)), 16);
  LODWORD(STACK[0x3870]) = v98;
  LODWORD(v93) = v87 ^ v93;
  LODWORD(STACK[0x3830]) = v93;
  LODWORD(v89) = STACK[0x3998] ^ STACK[0x39A0];
  LODWORD(STACK[0x39A0]) = v109 ^ v110;
  LODWORD(v93) = v96 ^ v93 ^ v98;
  LODWORD(v75) = v106 ^ v113;
  LODWORD(v109) = v93 ^ v109 ^ v110;
  LODWORD(STACK[0x3A68]) = v109 ^ v102;
  v114 = v109 ^ v102 ^ v106 ^ v113;
  STACK[0x39F0] = v114;
  LODWORD(v98) = v89 ^ v98 ^ __ROR4__(*(v97 + 4 * (v109 ^ v102 ^ v75)), 24) ^ __ROR4__(*(v97 + 4 * BYTE2(v114)), 8) ^ __ROR4__(*(v97 + 4 * BYTE1(v114)), 16) ^ *(v97 + ((v114 >> 22) & 0x3FC));
  LODWORD(v89) = (STACK[0x3980] >> v23) + (STACK[0x3960] << v35);
  LODWORD(v93) = v93 ^ v110;
  LODWORD(STACK[0x3980]) = v93;
  LODWORD(STACK[0x38B8]) = v102;
  LODWORD(STACK[0x3998]) = v98;
  LODWORD(v93) = v102 ^ v93 ^ v98;
  LODWORD(STACK[0x38C0]) = v96;
  v115 = v102 ^ v75 ^ v93 ^ v96;
  LODWORD(STACK[0x3958]) = v93 ^ v96;
  LODWORD(v89) = *(v97 + ((v115 >> 22) & 0x3FC)) ^ v98 ^ v89 ^ __ROR4__(*(v97 + 4 * BYTE1(v115)), 16) ^ __ROR4__(*(v97 + 4 * v115), 24);
  LODWORD(v106) = v115;
  STACK[0x3808] = v115;
  LODWORD(v89) = v89 ^ __ROR4__(*(v97 + 4 * BYTE2(v115)), 8);
  v116 = STACK[0x33D8];
  LODWORD(v75) = *(STACK[0x33D8] + ((v92 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x33D8] + 4 * BYTE1(v92)), 16) ^ __ROR4__(*(STACK[0x33D8] + 4 * BYTE2(v92)), 24);
  LODWORD(v114) = *(STACK[0x33D8] + 4 * v92);
  LODWORD(STACK[0x37F0]) = v93 ^ v110;
  LODWORD(v109) = v93 ^ v110 ^ v109 ^ v93 ^ v96 ^ v89 ^ v96;
  v117 = v109 ^ v106 ^ v68;
  LODWORD(v68) = *(v116 + 4 * (v109 ^ v106 ^ v68));
  LODWORD(STACK[0x37F8]) = v75 ^ __ROR4__(v114, 8);
  LODWORD(STACK[0x3960]) = *(v116 + ((v117 >> 22) & 0x3FC)) ^ __ROR4__(v68, 8) ^ __ROR4__(*(v116 + 4 * BYTE1(v117)), 16) ^ __ROR4__(*(v116 + 4 * BYTE2(v117)), 24);
  v118 = v89 ^ v96 ^ v93;
  STACK[0x3AD8] = v118;
  LODWORD(v114) = *(v116 + 4 * BYTE1(v118));
  LODWORD(v93) = *(v116 + 4 * BYTE2(v118));
  STACK[0x3AE0] = v118 >> 24;
  LODWORD(STACK[0x37B8]) = *(v116 + 4 * (v118 >> 24)) ^ __ROR4__(v114, 16) ^ __ROR4__(v93, 24) ^ __ROR4__(*(v116 + 4 * v118), 8);
  LODWORD(v93) = *(v116 + (((v110 ^ v109) >> 22) & 0x3FC)) ^ __ROR4__(*(v116 + 4 * ((v110 ^ v109) >> 8)), 16) ^ __ROR4__(*(v116 + 4 * ((v110 ^ v109) >> 16)), 24);
  LODWORD(v114) = *(v116 + 4 * (v110 ^ v109));
  v119 = v110 ^ v89;
  LODWORD(v75) = *(v116 + 4 * BYTE2(v119));
  LODWORD(v109) = *(v116 + ((v119 >> 22) & 0x3FC));
  LODWORD(STACK[0x37A0]) = v93 ^ __ROR4__(v114, 8);
  LODWORD(STACK[0x37C0]) = v109 ^ __ROR4__(v75, 24) ^ __ROR4__(*(v116 + 4 * BYTE1(v119)), 16) ^ __ROR4__(*(v116 + 4 * v119), 8);
  LODWORD(v75) = (LODWORD(STACK[0x3D98]) - 202894642) & 0xC17FBFD;
  LODWORD(STACK[0x3810]) = LODWORD(STACK[0x68DC]) ^ LODWORD(STACK[0x3D78]);
  LODWORD(STACK[0x3D10]) ^= LODWORD(STACK[0x68EC]);
  LODWORD(v114) = LODWORD(STACK[0x68F8]) ^ LODWORD(STACK[0x3C10]);
  LODWORD(STACK[0x3798]) = LODWORD(STACK[0x6900]) ^ LODWORD(STACK[0x3C00]);
  LODWORD(STACK[0x37C8]) = LODWORD(STACK[0x6904]) ^ LODWORD(STACK[0x3BD8]);
  LODWORD(v119) = LODWORD(STACK[0x690C]) ^ STACK[0x3CB8];
  LODWORD(STACK[0x37A8]) = v119;
  LODWORD(v109) = (v119 - v114) ^ 0xBFF1F7AD;
  LODWORD(STACK[0x3738]) = v109;
  LODWORD(STACK[0x3D78]) = LODWORD(STACK[0x6948]) ^ LODWORD(STACK[0x3D90]);
  LODWORD(v119) = v109 ^ (2 * (v104 & v109));
  LODWORD(v93) = v109 ^ (2 * (v99 & v109));
  LODWORD(v118) = v90;
  v120 = v119 & v90;
  v121 = v119 & v100;
  v122 = v47 & v119;
  v123 = v13 & v119;
  v124 = v93 & v13;
  v125 = v93 & v118;
  v126 = v100 & v93;
  v127 = v47 & v93;
  LOBYTE(v93) = v35;
  v128 = v121 << v35;
  v129 = v120 >> v22;
  LODWORD(STACK[0x3828]) = ((v120 >> v22) + v128) ^ STACK[0x3D70] ^ LODWORD(STACK[0x68E4]);
  LODWORD(STACK[0x3D90]) = LODWORD(STACK[0x3D80]) ^ LODWORD(STACK[0x68E8]);
  v130 = LODWORD(STACK[0x694C]) ^ LODWORD(STACK[0x3D88]);
  v131 = v126 << v93;
  v132 = v126 << STACK[0x3818];
  v133 = v121 << STACK[0x3818];
  v134 = v124 << STACK[0x3818];
  v135 = v123 << STACK[0x3818];
  v136 = v123 << v93;
  v137 = v124 << v93;
  v138 = v133;
  LODWORD(STACK[0x36F8]) = LODWORD(STACK[0x68F0]) ^ STACK[0x3CC0] ^ (v133 + v129);
  v139 = LODWORD(STACK[0x68F4]) ^ LODWORD(STACK[0x3D20]);
  STACK[0x3988] = v127 >> v95;
  LODWORD(STACK[0x36F0]) = v139 ^ ((v127 >> v95) + (v126 << v93));
  LODWORD(v124) = v120 >> v23;
  LODWORD(STACK[0x3548]) = (v135 + v124) ^ v114;
  v140 = v127 >> v23;
  LOBYTE(v93) = v23;
  LODWORD(STACK[0x3C10]) = (v132 | (v127 >> v23)) ^ STACK[0x3D68] ^ LODWORD(STACK[0x68FC]);
  LODWORD(v114) = LODWORD(STACK[0x3CE8]) ^ LODWORD(STACK[0x6950]);
  STACK[0x3790] = v136;
  LODWORD(STACK[0x3538]) = v130 ^ (v136 + v129);
  LODWORD(STACK[0x3BD0]) = (v136 + v129) ^ v114;
  LODWORD(v127) = LODWORD(STACK[0x3CD0]) ^ LODWORD(STACK[0x6954]);
  LODWORD(STACK[0x3D20]) = LODWORD(STACK[0x3C90]) ^ LODWORD(STACK[0x6958]);
  LODWORD(STACK[0x36E8]) = (v129 | v135) ^ LODWORD(STACK[0x3CD8]) ^ LODWORD(STACK[0x6908]);
  v141 = v125 >> v23;
  LODWORD(STACK[0x3D68]) = v132 ^ v141;
  LODWORD(STACK[0x3D80]) = LODWORD(STACK[0x6918]) ^ v132 ^ v141 ^ LODWORD(STACK[0x3B88]);
  v142 = v122 >> v95;
  v143 = v136 | (v122 >> v95);
  LODWORD(STACK[0x3530]) = LODWORD(STACK[0x691C]) ^ v143 ^ LODWORD(STACK[0x3C08]);
  LODWORD(STACK[0x3C08]) = LODWORD(STACK[0x6920]) ^ (v132 | v141) ^ STACK[0x3B70];
  v144 = v136 ^ (v122 >> v95);
  LODWORD(STACK[0x36E0]) = v144 ^ v127;
  LODWORD(STACK[0x3528]) = v144 ^ LODWORD(STACK[0x695C]) ^ LODWORD(STACK[0x3BB8]);
  LODWORD(STACK[0x3C00]) = (v137 + v140) ^ LODWORD(STACK[0x6924]) ^ LODWORD(STACK[0x3BA8]);
  v145 = v133 ^ v129;
  LODWORD(STACK[0x3BB8]) = v133 ^ v129 ^ LODWORD(STACK[0x6928]) ^ LODWORD(STACK[0x3B18]);
  v146 = v125 >> v95;
  LODWORD(STACK[0x3BE8]) = LODWORD(STACK[0x692C]) ^ ((v125 >> v95) + v137) ^ STACK[0x3BE8];
  v147 = v122 >> v93;
  v148 = STACK[0x17D0];
  LODWORD(STACK[0x36D8]) = LODWORD(STACK[0x68D8]) ^ STACK[0x17D0] ^ (v131 + v141);
  LODWORD(STACK[0x3E40]) ^= (v131 + v141) ^ LODWORD(STACK[0x6930]);
  LODWORD(v133) = v133 + (v122 >> v95);
  LODWORD(v122) = v138;
  STACK[0x3950] = v138;
  LODWORD(STACK[0x3818]) = v133 ^ LODWORD(STACK[0x6934]) ^ STACK[0x3B98];
  LODWORD(STACK[0x3810]) ^= v140 + v131;
  LODWORD(v114) = LODWORD(STACK[0x3B68]) ^ v129 ^ v135 ^ LODWORD(STACK[0x6938]);
  LODWORD(v136) = STACK[0x3B60];
  LODWORD(STACK[0x3BD8]) = (v140 + v131) ^ LODWORD(STACK[0x6960]) ^ LODWORD(STACK[0x3B60]);
  LODWORD(STACK[0x36D0]) = v136 ^ v114;
  LODWORD(STACK[0x3510]) = v143 ^ LODWORD(STACK[0x693C]) ^ bswap32(STACK[0x3928]);
  LODWORD(STACK[0x36C8]) = v131 ^ v141 ^ LODWORD(STACK[0x6940]) ^ bswap32(STACK[0x38D0]);
  LODWORD(STACK[0x3508]) = (v147 + v135) ^ LODWORD(STACK[0x6944]) ^ bswap32(STACK[0x38D8]);
  LODWORD(v138) = STACK[0x1834];
  STACK[0x34F8] = v133 ^ LODWORD(STACK[0x1834]) ^ LODWORD(STACK[0x6968]);
  LODWORD(STACK[0x3BA8]) = (v147 + v122) ^ LODWORD(STACK[0x696C]) ^ v110 ^ LODWORD(STACK[0x3BB0]);
  LODWORD(STACK[0x3800]) = LODWORD(STACK[0x3D78]) ^ v135 ^ v142;
  LODWORD(STACK[0x34F0]) = LODWORD(STACK[0x6970]) ^ v135 ^ v142 ^ bswap32(STACK[0x37F8]);
  LODWORD(STACK[0x37F8]) = (v132 | v141) ^ LODWORD(STACK[0x6A0C]) ^ STACK[0x3930];
  LODWORD(v133) = v137;
  STACK[0x3CD0] = (v137 | v141) ^ LODWORD(STACK[0x195C]) ^ LODWORD(STACK[0x6964]);
  LODWORD(STACK[0x37E8]) = (v137 | v141) ^ LODWORD(STACK[0x6A10]) ^ LODWORD(STACK[0x3B90]);
  LODWORD(STACK[0x3D70]) = (v135 + v142) ^ LODWORD(STACK[0x6A14]) ^ LODWORD(STACK[0x3BA0]);
  LODWORD(STACK[0x36C0]) = v134 ^ v141 ^ LODWORD(STACK[0x6A18]) ^ v110 ^ LODWORD(STACK[0x3CF0]);
  LODWORD(STACK[0x3D78]) = (v135 + v142) ^ STACK[0x3CC8] ^ LODWORD(STACK[0x6A1C]);
  LODWORD(STACK[0x36B8]) = v110 ^ LODWORD(STACK[0x3E18]) ^ v137 ^ v140 ^ LODWORD(STACK[0x6A20]);
  LODWORD(STACK[0x36B0]) = v129 ^ v135 ^ LODWORD(STACK[0x3E38]) ^ LODWORD(STACK[0x6A28]);
  LODWORD(STACK[0x36A0]) = LODWORD(STACK[0x3798]) ^ (v132 + v141);
  STACK[0x3650] = (v132 + v141) ^ v148 ^ LODWORD(STACK[0x6A08]);
  v149 = LODWORD(STACK[0x3938]) ^ LODWORD(STACK[0x69FC]);
  LODWORD(STACK[0x3BB0]) = LODWORD(STACK[0x3948]) ^ LODWORD(STACK[0x6A00]);
  LODWORD(STACK[0x3E18]) = LODWORD(STACK[0x3940]) ^ LODWORD(STACK[0x6A04]);
  LODWORD(v122) = v124;
  STACK[0x34E0] = STACK[0x37D8] ^ LODWORD(STACK[0x68E0]) ^ LODWORD(STACK[0x64B0]) ^ (v135 | v124);
  LODWORD(STACK[0x3E38]) = LODWORD(STACK[0x3900]) ^ LODWORD(STACK[0x69F4]);
  LODWORD(STACK[0x3CF0]) = LODWORD(STACK[0x3820]) ^ LODWORD(STACK[0x69F8]);
  LODWORD(v137) = v147;
  STACK[0x3628] = STACK[0x38F8] ^ LODWORD(STACK[0x69EC]) ^ (v147 | v135);
  LODWORD(STACK[0x3C90]) = LODWORD(STACK[0x3908]) ^ LODWORD(STACK[0x69F0]);
  STACK[0x34D8] = v146 ^ v131 ^ LODWORD(STACK[0x3890]) ^ LODWORD(STACK[0x69E8]);
  LODWORD(v127) = LODWORD(STACK[0x3920]) ^ LODWORD(STACK[0x6A30]);
  LODWORD(STACK[0x3618]) = LODWORD(STACK[0x68D4]) ^ v138 ^ (v134 | v141);
  LODWORD(v148) = LODWORD(STACK[0x38C8]) ^ v110;
  STACK[0x37D8] = v148 ^ LODWORD(STACK[0x69E4]) ^ (v134 | v141);
  STACK[0x3610] = LODWORD(STACK[0x3A28]) ^ LODWORD(STACK[0x69DC]) ^ v110 ^ (v140 + v134);
  STACK[0x3440] = LODWORD(STACK[0x3838]) ^ LODWORD(STACK[0x69D4]) ^ (v129 | v128);
  LODWORD(STACK[0x3CE8]) = LODWORD(STACK[0x39A8]) ^ LODWORD(STACK[0x69D8]);
  LODWORD(STACK[0x3608]) = LODWORD(STACK[0x3D10]) ^ v132 ^ v140;
  STACK[0x3CD8] = STACK[0x3CA0] ^ LODWORD(STACK[0x69D0]) ^ v132 ^ v140;
  v150 = STACK[0x3790];
  STACK[0x35F0] = LODWORD(STACK[0x3888]) ^ LODWORD(STACK[0x69CC]) ^ v110 ^ (STACK[0x3790] | v129);
  LODWORD(v147) = STACK[0x17DC];
  LODWORD(v13) = LODWORD(STACK[0x68D0]) ^ LODWORD(STACK[0x17DC]) ^ (v128 | v122);
  STACK[0x3438] = LODWORD(STACK[0x3860]) ^ LODWORD(STACK[0x69C8]) ^ (v128 | v122);
  v151 = STACK[0x3988];
  STACK[0x3D10] = v148 ^ LODWORD(STACK[0x3AA0]) ^ LODWORD(STACK[0x3880]) ^ LODWORD(STACK[0x69C4]) ^ (STACK[0x3988] + v134);
  STACK[0x3788] = STACK[0x3A60] ^ LODWORD(STACK[0x69C0]) ^ (v146 | v134);
  LODWORD(v114) = v137 ^ v128;
  STACK[0x3CC8] = LODWORD(STACK[0x3878]) ^ v137 ^ v128 ^ LODWORD(STACK[0x6A34]);
  STACK[0x3428] = v149 ^ (v133 | v140);
  STACK[0x3D88] = LODWORD(STACK[0x3850]) ^ (v133 | v140) ^ LODWORD(STACK[0x69BC]);
  STACK[0x35E8] = LODWORD(STACK[0x3BB0]) ^ v145;
  STACK[0x35E0] = LODWORD(STACK[0x3858]) ^ v145 ^ LODWORD(STACK[0x69B8]);
  STACK[0x3838] = LODWORD(STACK[0x3840]) ^ (v135 | v142) ^ LODWORD(STACK[0x69B0]) ^ v110;
  v152 = v131 ^ v141 ^ LODWORD(STACK[0x3D20]);
  LODWORD(STACK[0x35A0]) = v152;
  STACK[0x3D20] = STACK[0x39E8] ^ v131 ^ v141 ^ LODWORD(STACK[0x69B4]);
  v153 = v129 ^ v128;
  LODWORD(STACK[0x3320]) = v129 ^ v128;
  LODWORD(v126) = v142 + v128;
  LODWORD(v128) = (v142 + v128) ^ LODWORD(STACK[0x37A8]);
  LODWORD(STACK[0x3570]) = v126 ^ LODWORD(STACK[0x195C]) ^ LODWORD(STACK[0x6A2C]);
  STACK[0x3420] = v127 ^ v126;
  STACK[0x3778] = LODWORD(STACK[0x3830]) ^ v126 ^ LODWORD(STACK[0x69AC]);
  STACK[0x33E8] = (v141 + v134) ^ v147 ^ LODWORD(STACK[0x6974]);
  STACK[0x3568] = LODWORD(STACK[0x39A0]) ^ (v141 + v134) ^ LODWORD(STACK[0x69A8]);
  STACK[0x3768] = STACK[0x39C0] ^ (v151 + v133) ^ LODWORD(STACK[0x69A4]);
  STACK[0x3760] = STACK[0x3950] ^ v122 ^ LODWORD(STACK[0x6A38]) ^ LODWORD(STACK[0x3870]);
  LODWORD(v127) = v134 ^ LODWORD(STACK[0x3D90]) ^ v110 ^ v140;
  LODWORD(STACK[0x3558]) = v127;
  LODWORD(v133) = LODWORD(STACK[0x37C8]) ^ v131 ^ v140;
  LODWORD(STACK[0x3550]) = v133;
  STACK[0x3CE8] = LODWORD(STACK[0x3CE8]) ^ (v140 | v134);
  STACK[0x3D90] = LODWORD(STACK[0x3980]) ^ (v140 | v134) ^ LODWORD(STACK[0x69A0]);
  LODWORD(v126) = v151 | v131;
  STACK[0x3398] = STACK[0x39F0] ^ (v151 | v132) ^ LODWORD(STACK[0x699C]);
  STACK[0x3390] = LODWORD(STACK[0x3998]) ^ (v150 + v122) ^ LODWORD(STACK[0x6998]) ^ v110;
  STACK[0x3378] = LODWORD(STACK[0x37F0]) ^ (v146 | v132) ^ LODWORD(STACK[0x6994]);
  STACK[0x3CF0] = LODWORD(STACK[0x3CF0]) ^ v114;
  STACK[0x3370] = STACK[0x3808] ^ v114 ^ LODWORD(STACK[0x6990]);
  LODWORD(v151) = v137 ^ v150 ^ LODWORD(STACK[0x6988]);
  LODWORD(v122) = STACK[0x3A68];
  STACK[0x3368] = LODWORD(STACK[0x3A68]) ^ v153 ^ LODWORD(STACK[0x6A3C]);
  STACK[0x3358] = LODWORD(STACK[0x3958]) ^ v122 ^ v151;
  STACK[0x37C8] = LODWORD(STACK[0x3C90]) ^ (v146 + v134);
  STACK[0x37C0] = bswap32(STACK[0x37C0]) ^ (v146 + v134) ^ LODWORD(STACK[0x6984]);
  STACK[0x3348] = LODWORD(STACK[0x3E18]) ^ (v150 + v142);
  STACK[0x37A8] = bswap32(STACK[0x37B8]) ^ (v150 + v142) ^ LODWORD(STACK[0x697C]);
  STACK[0x3308] = bswap32(STACK[0x37A0]) ^ LODWORD(STACK[0x3D68]) ^ LODWORD(STACK[0x6980]);
  STACK[0x3340] = LODWORD(STACK[0x3E38]) ^ v126;
  STACK[0x3330] = bswap32(STACK[0x3960]) ^ v126 ^ LODWORD(STACK[0x6978]);
  LODWORD(STACK[0x3328]) = v13;
  v154 = v128;
  LODWORD(v142) = STACK[0x3618];
  LODWORD(v134) = STACK[0x3548];
  LODWORD(v126) = v128 ^ v13 ^ LODWORD(STACK[0x3618]) ^ LODWORD(STACK[0x3800]) ^ LODWORD(STACK[0x3548]);
  LODWORD(STACK[0x3B98]) = v126;
  LODWORD(v114) = v126 ^ LODWORD(STACK[0x36D8]) ^ LODWORD(STACK[0x3828]) ^ v133 ^ LODWORD(STACK[0x3810]);
  LODWORD(v126) = v127 ^ LODWORD(STACK[0x3608]);
  LODWORD(STACK[0x3B90]) = v126;
  LODWORD(v114) = v114 ^ v126 ^ LODWORD(STACK[0x36A0]);
  LODWORD(v126) = LODWORD(STACK[0x3538]) ^ 0x53B7D9EB;
  LODWORD(v122) = LODWORD(STACK[0x3C10]) ^ 0xB491F49;
  LODWORD(STACK[0x3E38]) = v122;
  LODWORD(v141) = STACK[0x3D80];
  LODWORD(v147) = STACK[0x3C08];
  LODWORD(v148) = STACK[0x3530];
  LODWORD(v126) = LODWORD(STACK[0x3530]) ^ v126 ^ LODWORD(STACK[0x36F8]);
  LODWORD(STACK[0x3E18]) = v126;
  LODWORD(v151) = STACK[0x36F0];
  LODWORD(v133) = STACK[0x36E0];
  LODWORD(v138) = STACK[0x36E8];
  LODWORD(v114) = v114 ^ v141 ^ v147 ^ v126 ^ LODWORD(STACK[0x36F0]) ^ v122 ^ LODWORD(STACK[0x36E0]) ^ v152 ^ LODWORD(STACK[0x36E8]);
  LODWORD(v137) = LODWORD(STACK[0x3510]) ^ 0x1388D7A5;
  LODWORD(STACK[0x3BB0]) = v137;
  LODWORD(v150) = LODWORD(STACK[0x3BA8]) ^ 0xE2637DFD;
  LODWORD(STACK[0x3D68]) = v150;
  LODWORD(v128) = STACK[0x3BD0];
  v155 = STACK[0x3528];
  LODWORD(STACK[0x3A68]) = LODWORD(STACK[0x3528]) ^ LODWORD(STACK[0x3BD0]);
  v156 = STACK[0x3C00];
  LODWORD(v126) = LODWORD(STACK[0x3BB8]) ^ LODWORD(STACK[0x3BE8]);
  LODWORD(STACK[0x3C90]) = v126;
  LODWORD(v132) = STACK[0x3E40];
  LODWORD(v127) = STACK[0x3818];
  LODWORD(v122) = STACK[0x3BD8];
  LODWORD(v146) = STACK[0x36D0];
  LODWORD(v129) = STACK[0x36C8];
  LODWORD(v131) = STACK[0x3508];
  LODWORD(v114) = v114 ^ v155 ^ v128 ^ v156 ^ v126 ^ LODWORD(STACK[0x3E40]) ^ LODWORD(STACK[0x3818]) ^ LODWORD(STACK[0x3BD8]) ^ LODWORD(STACK[0x36D0]) ^ LODWORD(STACK[0x36C8]) ^ v137 ^ LODWORD(STACK[0x3508]) ^ v150;
  LODWORD(v150) = STACK[0x34F0];
  LODWORD(v140) = STACK[0x37F8];
  LODWORD(v135) = STACK[0x3D70];
  LODWORD(STACK[0x3BA0]) = v114 ^ LODWORD(STACK[0x34F0]) ^ LODWORD(STACK[0x37F8]) ^ LODWORD(STACK[0x37E8]) ^ LODWORD(STACK[0x3D70]) ^ LODWORD(STACK[0x3D78]) ^ LODWORD(STACK[0x36C0]) ^ LODWORD(STACK[0x36B0]) ^ LODWORD(STACK[0x3570]) ^ LODWORD(STACK[0x36B8]);
  v157 = STACK[0x34F8];
  LODWORD(STACK[0x3310]) = v154;
  LODWORD(v114) = STACK[0x3568] ^ v148 ^ (v154 - v157 + STACK[0x3D90] + 286108618 + v150);
  LODWORD(v148) = v13 ^ LODWORD(STACK[0x3738]) ^ v154 ^ v142 ^ LODWORD(STACK[0x36D8]) ^ LODWORD(STACK[0x3800]) ^ v134 ^ LODWORD(STACK[0x3828]) ^ LODWORD(STACK[0x3550]) ^ LODWORD(STACK[0x3810]) ^ LODWORD(STACK[0x3558]) ^ LODWORD(STACK[0x3608]) ^ LODWORD(STACK[0x36A0]) ^ v141 ^ v147 ^ LODWORD(STACK[0x3E18]) ^ v128 ^ v151 ^ LODWORD(STACK[0x3E38]) ^ v133 ^ LODWORD(STACK[0x35A0]) ^ v138 ^ v155 ^ v156 ^ LODWORD(STACK[0x3C90]) ^ v132 ^ v127 ^ v122 ^ v146 ^ v129 ^ LODWORD(STACK[0x3BB0]) ^ v131 ^ STACK[0x3CD0];
  v158 = STACK[0x3428];
  LODWORD(v126) = v148 ^ v157 ^ LODWORD(STACK[0x3D68]) ^ STACK[0x33E8] ^ v150 ^ STACK[0x3428] ^ STACK[0x35E8];
  v159 = STACK[0x3CA8] ^ LODWORD(STACK[0x69E0]) ^ LODWORD(STACK[0x3320]);
  v160 = STACK[0x3348];
  v161 = STACK[0x3D78];
  LODWORD(v128) = STACK[0x36B8];
  v162 = STACK[0x34E0];
  v163 = STACK[0x3340];
  v164 = STACK[0x3CF0];
  v165 = STACK[0x3420];
  LODWORD(v148) = STACK[0x3348] ^ STACK[0x3650] ^ v140 ^ LODWORD(STACK[0x37E8]) ^ v135 ^ LODWORD(STACK[0x3D78]) ^ LODWORD(STACK[0x36C0]) ^ LODWORD(STACK[0x36B0]) ^ LODWORD(STACK[0x3570]) ^ LODWORD(STACK[0x36B8]) ^ STACK[0x34E0] ^ STACK[0x3340] ^ STACK[0x3CF0] ^ STACK[0x3628] ^ STACK[0x37C8] ^ STACK[0x34D8] ^ STACK[0x3420] ^ STACK[0x37D8] ^ v159;
  STACK[0x3300] = v159;
  v166 = STACK[0x3CE8];
  v167 = STACK[0x3438];
  v168 = STACK[0x3778];
  v169 = STACK[0x3768];
  v170 = STACK[0x3398];
  v171 = STACK[0x3390];
  v172 = STACK[0x3378];
  v173 = STACK[0x3370];
  v174 = STACK[0x37C0];
  v175 = STACK[0x37A8];
  v176 = STACK[0x3358];
  v177 = STACK[0x3308];
  v178 = STACK[0x3330];
  LODWORD(v151) = STACK[0x3BA0];
  LODWORD(STACK[0x3C90]) = v126 ^ v148 ^ STACK[0x3610] ^ STACK[0x3440] ^ STACK[0x3CE8] ^ STACK[0x3CD8] ^ STACK[0x35F0] ^ STACK[0x3438] ^ STACK[0x3D10] ^ STACK[0x3788] ^ STACK[0x3CC8] ^ STACK[0x3D88] ^ STACK[0x35E0] ^ STACK[0x3838] ^ STACK[0x3D20] ^ STACK[0x3778] ^ STACK[0x3568] ^ STACK[0x3768] ^ STACK[0x3760] ^ STACK[0x3D90] ^ STACK[0x3368] ^ STACK[0x3398] ^ STACK[0x3390] ^ STACK[0x3378] ^ STACK[0x3370] ^ STACK[0x37C0] ^ STACK[0x37A8] ^ STACK[0x3358] ^ STACK[0x3308] ^ LODWORD(STACK[0x3BA0]) ^ STACK[0x3330];
  LODWORD(v114) = (((v114 + LODWORD(STACK[0x36E8])) ^ LODWORD(STACK[0x3810])) + v159) ^ v161;
  LODWORD(STACK[0x3E18]) = v151 ^ 0x29698D22;
  LODWORD(v114) = v178 ^ v128 ^ (v162 - v164 + (v166 ^ v160 ^ (v114 - (v158 + v163 + v165 + v169) + (v151 ^ 0x29698D22))));
  LODWORD(v169) = STACK[0x36A0];
  LODWORD(v160) = STACK[0x3608];
  LODWORD(v159) = STACK[0x3BD8];
  LODWORD(v162) = STACK[0x36B0];
  LODWORD(v164) = STACK[0x3570];
  LODWORD(v178) = STACK[0x3BD0];
  LODWORD(v163) = STACK[0x3538];
  v179 = STACK[0x3CD0];
  v180 = STACK[0x3788];
  v181 = STACK[0x3760];
  LODWORD(v128) = STACK[0x3548];
  LODWORD(v114) = (((((((LODWORD(STACK[0x36D0]) - LODWORD(STACK[0x3E40]) - STACK[0x3CD0] + STACK[0x35E8] + STACK[0x3628] - STACK[0x3610] - STACK[0x3788] + v173 + (v177 ^ LODWORD(STACK[0x3BE8]) ^ (v172 + LODWORD(STACK[0x3538]) - v176 + ((LODWORD(STACK[0x3BD0]) + LODWORD(STACK[0x3550]) + (LODWORD(STACK[0x3800]) ^ LODWORD(STACK[0x3738]) ^ LODWORD(STACK[0x3C10]) ^ STACK[0x37D8] ^ v170 ^ (v167 - LODWORD(STACK[0x3C08]) + (LODWORD(STACK[0x3570]) ^ LODWORD(STACK[0x36F0]) ^ (LODWORD(STACK[0x36A0]) + LODWORD(STACK[0x3618]) - LODWORD(STACK[0x3608]) - LODWORD(STACK[0x3BD8]) - LODWORD(STACK[0x3D70]) + LODWORD(STACK[0x36B0]) + v168 - v175 + v114))))) ^ LODWORD(STACK[0x3828]))))) ^ STACK[0x3760]) + LODWORD(STACK[0x3548])) ^ v171) + v174) ^ LODWORD(STACK[0x37F8])) + STACK[0x33E8]) ^ STACK[0x3D88];
  LODWORD(v168) = STACK[0x36D8];
  LODWORD(v170) = STACK[0x3BB8];
  LODWORD(v173) = STACK[0x36C0];
  LODWORD(v176) = STACK[0x3BA8];
  v182 = STACK[0x3CD8];
  v183 = STACK[0x3368];
  LODWORD(v172) = STACK[0x3508];
  v184 = STACK[0x34D8];
  LODWORD(v171) = STACK[0x3510];
  LODWORD(v126) = (STACK[0x3650] ^ LODWORD(STACK[0x3818]) ^ ((((((((STACK[0x3838] ^ STACK[0x37C8] ^ (v114 + STACK[0x3D10] + LODWORD(STACK[0x36D8]) - LODWORD(STACK[0x3C00]) + LODWORD(STACK[0x3BB8]))) + LODWORD(STACK[0x35A0]) - LODWORD(STACK[0x36F8]) - LODWORD(STACK[0x36C0])) ^ LODWORD(STACK[0x3BA8])) + STACK[0x3CD8] - STACK[0x35F0]) ^ LODWORD(STACK[0x36C8])) - STACK[0x3368]) ^ STACK[0x35E0]) + LODWORD(STACK[0x3558]) - LODWORD(STACK[0x3D80]) + LODWORD(STACK[0x36E0]) + LODWORD(STACK[0x3508]) - STACK[0x34D8])) + LODWORD(STACK[0x3510]) - STACK[0x3D20];
  LODWORD(v148) = STACK[0x33E8] - 634575292;
  LODWORD(STACK[0x3AA0]) = LODWORD(STACK[0x36A0]) - 1936990730;
  LODWORD(v151) = v176 - 702700186;
  LODWORD(v176) = (v169 - 1936990730) ^ 0xBE2A5BD7 ^ v159;
  LODWORD(STACK[0x3A28]) = v176;
  LODWORD(STACK[0x3950]) = v151 ^ v176;
  LODWORD(v176) = LODWORD(STACK[0x3310]) - 799803304 + (v151 ^ v176);
  LODWORD(STACK[0x3980]) = v176;
  LODWORD(v151) = v176 + v180 - 622318027;
  LODWORD(STACK[0x3E38]) = v151;
  LODWORD(STACK[0x39A0]) = v151 ^ v148;
  LODWORD(v176) = v162 - 1016232923 + (v151 ^ v148);
  LODWORD(STACK[0x3B68]) = v176;
  LODWORD(v180) = v176 + 2110711524 + v177;
  LODWORD(STACK[0x3BB0]) = v180;
  LODWORD(v176) = LODWORD(STACK[0x3530]) ^ 0x8EC610C8;
  LODWORD(v180) = v170 + 61434676 + v180;
  LODWORD(STACK[0x3998]) = v180;
  LODWORD(v151) = STACK[0x3428] ^ 0xEB62A78E;
  LODWORD(STACK[0x32C0]) = v176;
  LODWORD(v176) = v180 + v176;
  LODWORD(STACK[0x3B70]) = v176;
  LODWORD(v151) = v151 ^ v176;
  LODWORD(STACK[0x3900]) = v151;
  LODWORD(STACK[0x32B8]) = v179 ^ 0xCD600ADF;
  LODWORD(v151) = v151 + (v179 ^ 0xCD600ADF);
  LODWORD(STACK[0x3B88]) = v151;
  LODWORD(v176) = v151 ^ (v184 + 1166338050);
  LODWORD(STACK[0x39A8]) = v176;
  LODWORD(v148) = v172 ^ 0xC69ECE0F ^ v176;
  LODWORD(STACK[0x39E8]) = v148;
  LODWORD(STACK[0x32B0]) = v182 ^ 0xF2D747BF;
  LODWORD(v148) = (v182 ^ 0xF2D747BF) - v148;
  LODWORD(STACK[0x3B60]) = v148;
  LODWORD(v148) = v148 ^ (v164 - 966060071);
  LODWORD(STACK[0x3958]) = v148;
  LODWORD(v151) = v178 + 1866644538 + v148;
  LODWORD(STACK[0x39F0]) = v151;
  LODWORD(v114) = STACK[0x34F8] - 1134205061 + v151;
  LODWORD(STACK[0x3B18]) = v114;
  LODWORD(v151) = STACK[0x3358] - v114 + 1008389998;
  LODWORD(STACK[0x3930]) = v151;
  LODWORD(v114) = STACK[0x3340] + 1607661390;
  LODWORD(v151) = v168 ^ 0x6E74E90D ^ v151;
  LODWORD(STACK[0x39C0]) = v151;
  LODWORD(v148) = v171 - 615260600 + v151;
  LODWORD(STACK[0x38F8]) = v148;
  LODWORD(v151) = v148 ^ v114;
  LODWORD(STACK[0x3988]) = v148 ^ v114;
  LODWORD(v114) = STACK[0x3D90] ^ 0xC590B8F2;
  LODWORD(STACK[0x32A8]) = v114;
  LODWORD(v114) = v114 - v151;
  LODWORD(STACK[0x3890]) = v114;
  LODWORD(v148) = v160 - v114 + 450971133;
  LODWORD(STACK[0x38D0]) = v148;
  LODWORD(v148) = v148 ^ (v128 - 415817292);
  LODWORD(STACK[0x3920]) = v148;
  LODWORD(v176) = LODWORD(STACK[0x3E18]) - v148 + 1178893165;
  LODWORD(STACK[0x3870]) = v176;
  LODWORD(v114) = LODWORD(STACK[0x3C90]) ^ 0x30DE2860;
  LODWORD(v148) = STACK[0x3438] ^ 0xBD05D69B ^ v176;
  LODWORD(STACK[0x3860]) = v148;
  LODWORD(v148) = v114 - v148;
  LODWORD(STACK[0x3960]) = v148;
  LODWORD(v170) = STACK[0x3328];
  LODWORD(v114) = LODWORD(STACK[0x3328]) - 1853312499 + v148;
  LODWORD(STACK[0x3940]) = v114;
  LODWORD(v148) = v163 - v114 - 1701898394;
  LODWORD(STACK[0x3858]) = v148;
  LODWORD(v148) = LODWORD(STACK[0x36E8]) - v148 - 212462604;
  LODWORD(STACK[0x3880]) = v148;
  LODWORD(v148) = STACK[0x3838] - v148 - 455783085;
  LODWORD(STACK[0x38C8]) = v148;
  LODWORD(v114) = LODWORD(STACK[0x3738]) - 338784940 + v148;
  LODWORD(STACK[0x3850]) = v114;
  LODWORD(v184) = v181 - v114 - 1922276785;
  LODWORD(STACK[0x3938]) = v184;
  LODWORD(v151) = STACK[0x3CE8] ^ 0x48434FF2;
  LODWORD(v148) = LODWORD(STACK[0x3D70]) ^ 0x92DE5423;
  LODWORD(STACK[0x32A0]) = v151;
  LODWORD(v151) = v151 - v184;
  LODWORD(STACK[0x3948]) = v151;
  LODWORD(v114) = v151 ^ (v173 - 865458070);
  LODWORD(STACK[0x3820]) = v114;
  LODWORD(STACK[0x3298]) = v148;
  LODWORD(v114) = v148 - v114;
  LODWORD(STACK[0x3878]) = v114;
  LODWORD(v176) = LODWORD(STACK[0x3C10]) - v114 - 1678671059;
  LODWORD(STACK[0x3928]) = v176;
  LODWORD(v114) = STACK[0x37D8] - 397628167;
  LODWORD(v151) = LODWORD(STACK[0x3550]) + 507469066;
  LODWORD(STACK[0x3908]) = v151;
  LODWORD(STACK[0x3A60]) = v176 ^ v114;
  LODWORD(v164) = v183 + 1858266826 + (v176 ^ v114) - v151;
  LODWORD(STACK[0x3808]) = v164;
  LODWORD(v148) = STACK[0x37C8] + 2060186579;
  LODWORD(v151) = LODWORD(STACK[0x36F8]) - 2082012340;
  LODWORD(v114) = LODWORD(STACK[0x3818]) - 1286782229;
  LODWORD(v184) = STACK[0x3CF0] ^ 0xE70821EE;
  v185 = STACK[0x3CC8];
  LODWORD(v176) = LODWORD(STACK[0x3D80]) ^ 0xE7D0AD5B;
  LODWORD(STACK[0x3290]) = v184;
  LODWORD(v184) = v164 + v184;
  LODWORD(STACK[0x37B8]) = v184;
  LODWORD(STACK[0x3288]) = v185 ^ 0x9FED741D;
  LODWORD(v184) = (v185 ^ 0x9FED741D) - v184;
  LODWORD(STACK[0x37F0]) = v184;
  LODWORD(v172) = v114 - v184 + 2292;
  LODWORD(STACK[0x3840]) = v172;
  LODWORD(v114) = LODWORD(STACK[0x3C08]) ^ 0x82B7018;
  LODWORD(STACK[0x3280]) = v176;
  LODWORD(v176) = v172 + v176;
  LODWORD(STACK[0x3888]) = v176;
  LODWORD(v171) = v114 ^ v176;
  LODWORD(v176) = v114 ^ v176 ^ v148;
  LODWORD(STACK[0x3798]) = v176;
  LODWORD(v114) = STACK[0x3628] + 1806654535 + v176;
  LODWORD(STACK[0x38D8]) = v114;
  LODWORD(v148) = v114 ^ v151;
  LODWORD(STACK[0x3688]) = v114 ^ v151;
  v186 = STACK[0x3440];
  LODWORD(v151) = STACK[0x3440] - v148 + 219762247;
  LODWORD(STACK[0x3790]) = v151;
  LODWORD(v176) = LODWORD(STACK[0x3810]) - v151 - 888535926;
  LODWORD(STACK[0x3700]) = v176;
  LODWORD(v176) = v176 ^ (STACK[0x3610] + 1831229054);
  LODWORD(STACK[0x3830]) = v176;
  LODWORD(v181) = STACK[0x3348] + 305769664 + v176;
  LODWORD(v148) = STACK[0x35E0] - v181;
  LODWORD(STACK[0x3480]) = v181;
  LODWORD(v172) = v148 + 829238455;
  LODWORD(STACK[0x3730]) = v148 + 829238455;
  LODWORD(v177) = (v126 ^ v170) + v186 + v185 + LODWORD(STACK[0x3528]);
  LODWORD(v126) = LODWORD(STACK[0x36B8]) - 949893520;
  LODWORD(v148) = LODWORD(STACK[0x3528]) - 1260823981;
  LODWORD(v151) = LODWORD(STACK[0x36D0]) + 439827960;
  LODWORD(v176) = STACK[0x3378] + 1125580368;
  LODWORD(v186) = LODWORD(STACK[0x3828]) ^ 0xDEA529AA;
  LODWORD(STACK[0x3278]) = v186;
  LODWORD(v186) = v186 - v172;
  LODWORD(STACK[0x3750]) = v186;
  LODWORD(STACK[0x3D68]) = v186 ^ v151;
  LODWORD(v186) = LODWORD(STACK[0x37F8]) - 264622561 + (v186 ^ v151);
  LODWORD(STACK[0x366C]) = v186;
  LODWORD(v170) = v186 ^ v126;
  LODWORD(v151) = v186 ^ v126 ^ v176;
  LODWORD(STACK[0x3710]) = v151;
  LODWORD(v186) = STACK[0x35E8] - 251893729 - v151;
  LODWORD(STACK[0x37A0]) = v186;
  LODWORD(v173) = v186 ^ v148;
  LODWORD(v151) = STACK[0x3390] - 27477507 + (v186 ^ v148);
  LODWORD(STACK[0x3520]) = v151;
  LODWORD(v186) = STACK[0x3D20] ^ 0x6BC839CD;
  LODWORD(v126) = STACK[0x37C0] + 906950773;
  LODWORD(STACK[0x3270]) = v186;
  LODWORD(v169) = v186 - v151;
  LODWORD(v148) = v126 + v186 - v151;
  LODWORD(STACK[0x351C]) = v148;
  LODWORD(v148) = STACK[0x3568] - 2143511645 + v148;
  LODWORD(STACK[0x34A8]) = v148;
  LODWORD(v186) = LODWORD(STACK[0x3BE8]) - 1180797909 + v148;
  LODWORD(STACK[0x3698]) = v186;
  LODWORD(v168) = v186 ^ 0x3453A9CC;
  LODWORD(v186) = LODWORD(STACK[0x3D78]) ^ 0x5B8686E3;
  LODWORD(v159) = STACK[0x37E8];
  LODWORD(v126) = STACK[0x3778] + 828879072;
  LODWORD(STACK[0x3268]) = v186;
  LODWORD(v178) = v186 - v168;
  LODWORD(STACK[0x3260]) = v159 ^ 0x5AE14481;
  LODWORD(v186) = (v159 ^ 0x5AE14481) - (v186 - v168);
  LODWORD(STACK[0x3708]) = v186;
  LODWORD(STACK[0x3620]) = v126 + v186;
  LODWORD(v160) = STACK[0x3768] - 450174757 + v126 + v186;
  LODWORD(v186) = LODWORD(STACK[0x3E40]) ^ 0x2DE2A039;
  LODWORD(v162) = v160 ^ (STACK[0x3330] + 717398214);
  LODWORD(v126) = LODWORD(STACK[0x3C00]) - 1329863090;
  LODWORD(STACK[0x3258]) = v186;
  LODWORD(v174) = v162 + v186;
  LODWORD(v185) = v126 + v162 + v186;
  LODWORD(v126) = STACK[0x3650] + 919011704 + v185 + 2609;
  LODWORD(STACK[0x34D4]) = v126;
  LODWORD(v164) = LODWORD(STACK[0x36F0]) - v126 + 112118966;
  LODWORD(v126) = LODWORD(STACK[0x3800]) + 204023420;
  LODWORD(v186) = STACK[0x3398] ^ 0x699D65A6 ^ v164;
  LODWORD(STACK[0x34E8]) = v186;
  LODWORD(STACK[0x3470]) = v186 ^ v126;
  LODWORD(v182) = STACK[0x3370] + 1310806802 + (v186 ^ v126);
  LODWORD(v186) = LODWORD(STACK[0x3558]) ^ 0x9C028F65;
  LODWORD(STACK[0x3250]) = v186;
  LODWORD(v163) = v182 ^ v186;
  LODWORD(v183) = STACK[0x3300] - (v182 ^ v186) + 2124056480;
  LODWORD(v186) = STACK[0x3D10] ^ 0xAC7364C0;
  LODWORD(v126) = STACK[0x3D88] ^ 0x6AF9E870;
  LODWORD(STACK[0x3230]) = v126;
  LODWORD(v184) = v183 + v126;
  LODWORD(STACK[0x3248]) = v186;
  LODWORD(v172) = (v183 + v126) ^ v186;
  LODWORD(v179) = LODWORD(STACK[0x35A0]) - v172 + 2027373768;
  LODWORD(v148) = STACK[0x34E0] - v179 + 717261507;
  LODWORD(v126) = LODWORD(STACK[0x3618]) - 1379062111;
  LODWORD(STACK[0x32E0]) = v177 ^ v159;
  LODWORD(v128) = v148 ^ v126;
  LODWORD(v186) = STACK[0x3420] + 1325706037 + (v148 ^ v126);
  LODWORD(STACK[0x3490]) = v186;
  LODWORD(v126) = v177 ^ v159 ^ 0xDEC71007 ^ v186;
  LODWORD(v177) = LODWORD(STACK[0x36E0]) - 1462009810 + v126;
  LODWORD(v186) = v177 ^ (LODWORD(STACK[0x34F0]) - 112815028);
  LODWORD(v176) = STACK[0x35F0] - 850775007 + v186;
  LODWORD(STACK[0x3540]) = v171 - v181;
  LODWORD(v151) = LODWORD(STACK[0x3900]) - (v171 - v181);
  LODWORD(STACK[0x34A0]) = v151;
  LODWORD(STACK[0x3758]) = v174 - v151;
  LODWORD(v159) = LODWORD(STACK[0x36C8]) - 1719050417 + v176;
  LODWORD(v181) = v159 - (v174 - v151);
  LODWORD(STACK[0x3600]) = v181;
  LODWORD(v151) = v181 + LODWORD(STACK[0x3950]);
  LODWORD(STACK[0x3460]) = v151;
  LODWORD(v169) = v151 ^ v169;
  LODWORD(STACK[0x3718]) = v169;
  LODWORD(v169) = v169 + LODWORD(STACK[0x3860]);
  LODWORD(STACK[0x3860]) = v169;
  LODWORD(v151) = v169 ^ LODWORD(STACK[0x3870]);
  LODWORD(STACK[0x3900]) = v151;
  LODWORD(v151) = v173 - v151;
  LODWORD(STACK[0x3498]) = v151;
  LODWORD(v148) = v151 ^ v148;
  LODWORD(STACK[0x3950]) = v148;
  LODWORD(v151) = LODWORD(STACK[0x3688]) - v148;
  LODWORD(STACK[0x3688]) = v151;
  LODWORD(v151) = v151 ^ LODWORD(STACK[0x3890]);
  LODWORD(STACK[0x3500]) = v151;
  LODWORD(v151) = v151 ^ LODWORD(STACK[0x3858]);
  LODWORD(STACK[0x3488]) = v151;
  LODWORD(v148) = LODWORD(STACK[0x3820]) - v151;
  LODWORD(STACK[0x3820]) = v148;
  LODWORD(v148) = v148 ^ v178;
  LODWORD(STACK[0x34B8]) = v148;
  LODWORD(STACK[0x3468]) = v170 - v148;
  LODWORD(v148) = v170 - v148 + LODWORD(STACK[0x3850]);
  LODWORD(STACK[0x3478]) = v148;
  LODWORD(v148) = v185 - v148;
  LODWORD(STACK[0x3858]) = v148;
  LODWORD(v148) = v186 - v148;
  LODWORD(STACK[0x3890]) = v148;
  LODWORD(v186) = v148 + LODWORD(STACK[0x3980]);
  LODWORD(STACK[0x3638]) = v186;
  LODWORD(STACK[0x3588]) = v186 + v164;
  LODWORD(v186) = LODWORD(STACK[0x3700]) - (v186 + v164);
  LODWORD(STACK[0x3870]) = v186;
  LODWORD(STACK[0x33F8]) = v186 + v182;
  LODWORD(v186) = v186 + v182 + LODWORD(STACK[0x38F8]);
  LODWORD(STACK[0x38F8]) = v186;
  LODWORD(v186) = v186 ^ v184;
  LODWORD(STACK[0x3700]) = v186;
  LODWORD(STACK[0x3980]) = v162 - v186;
  LODWORD(v148) = v162 - v186 + LODWORD(STACK[0x39A0]);
  LODWORD(STACK[0x3850]) = v148;
  LODWORD(v186) = LODWORD(STACK[0x37B8]) - v148;
  LODWORD(STACK[0x33D0]) = v186;
  LODWORD(v126) = v126 - v186;
  LODWORD(STACK[0x39A0]) = v126;
  LODWORD(v126) = v126 + LODWORD(STACK[0x3930]);
  LODWORD(STACK[0x3450]) = v126;
  LODWORD(v126) = v126 + LODWORD(STACK[0x37F0]);
  LODWORD(STACK[0x33C8]) = v126;
  LODWORD(v126) = v126 + LODWORD(STACK[0x3880]);
  LODWORD(STACK[0x37F0]) = v126;
  LODWORD(v126) = LODWORD(STACK[0x3798]) - v126;
  LODWORD(STACK[0x33C0]) = v126;
  LODWORD(v186) = v126 ^ LODWORD(STACK[0x3790]);
  LODWORD(STACK[0x3880]) = v186;
  LODWORD(v186) = v168 - v186;
  LODWORD(STACK[0x3418]) = v186;
  LODWORD(STACK[0x3798]) = v186 ^ v172;
  LODWORD(v126) = (v186 ^ v172) + LODWORD(STACK[0x3808]);
  LODWORD(STACK[0x3930]) = v126;
  LODWORD(v126) = LODWORD(STACK[0x3878]) - v126;
  LODWORD(STACK[0x33E4]) = v126;
  LODWORD(v126) = v126 + LODWORD(STACK[0x3998]);
  LODWORD(STACK[0x3458]) = v126;
  LODWORD(v178) = v126 ^ LODWORD(STACK[0x3958]);
  LODWORD(v126) = v178 ^ LODWORD(STACK[0x3920]);
  LODWORD(STACK[0x33F0]) = v126;
  LODWORD(v126) = LODWORD(STACK[0x3520]) - v126;
  LODWORD(STACK[0x3920]) = v126;
  LODWORD(v126) = LODWORD(STACK[0x38C8]) - v126;
  LODWORD(STACK[0x3958]) = v126;
  LODWORD(v186) = LODWORD(STACK[0x34A8]) - v126;
  LODWORD(STACK[0x3998]) = v186;
  LODWORD(v126) = LODWORD(STACK[0x366C]) - v186;
  LODWORD(STACK[0x3808]) = v126;
  LODWORD(v186) = v126 ^ LODWORD(STACK[0x351C]);
  LODWORD(STACK[0x38C8]) = v186;
  LODWORD(STACK[0x37B8]) = v186 + v160;
  LODWORD(v186) = v186 + v160 + LODWORD(STACK[0x3A28]);
  LODWORD(STACK[0x366C]) = v186;
  LODWORD(STACK[0x3878]) = v186 ^ v183;
  LODWORD(v126) = (v186 ^ v183) + LODWORD(STACK[0x39A8]);
  LODWORD(STACK[0x3520]) = v126;
  LODWORD(v160) = v126 + LODWORD(STACK[0x3AA0]);
  LODWORD(v183) = v160 + v179;
  LODWORD(v186) = (v160 + v179) ^ LODWORD(STACK[0x3840]);
  LODWORD(STACK[0x351C]) = v186;
  LODWORD(STACK[0x39A8]) = v163 - v186;
  LODWORD(v126) = (v163 - v186) ^ LODWORD(STACK[0x3710]);
  LODWORD(STACK[0x3710]) = v126;
  LODWORD(v126) = LODWORD(STACK[0x3730]) - v126;
  LODWORD(STACK[0x3A28]) = v126;
  LODWORD(v168) = v126 ^ LODWORD(STACK[0x39E8]);
  LODWORD(v164) = LODWORD(STACK[0x3940]) - v168;
  LODWORD(v126) = LODWORD(STACK[0x3470]) - v164;
  LODWORD(STACK[0x3940]) = v126;
  LODWORD(v126) = LODWORD(STACK[0x3750]) - v126;
  LODWORD(STACK[0x3750]) = v126;
  LODWORD(v126) = v126 - LODWORD(STACK[0x3D68]) + v128;
  LODWORD(STACK[0x3730]) = v126;
  LODWORD(v128) = STACK[0x37A8] ^ 0xD35AD2D9 ^ v159;
  LODWORD(v126) = v126 ^ LODWORD(STACK[0x3698]);
  LODWORD(STACK[0x39E8]) = v126;
  LODWORD(v179) = v126 ^ LODWORD(STACK[0x3830]);
  LODWORD(v169) = v179 ^ LODWORD(STACK[0x3B68]);
  LODWORD(v172) = v169 ^ LODWORD(STACK[0x3988]);
  LODWORD(v126) = LODWORD(STACK[0x39F0]) - v172;
  LODWORD(STACK[0x3B68]) = v126;
  LODWORD(v174) = LODWORD(STACK[0x39C0]) - v126;
  LODWORD(v126) = v174 + LODWORD(STACK[0x38D0]);
  LODWORD(STACK[0x38D0]) = v126;
  LODWORD(v181) = v126 + LODWORD(STACK[0x34D4]);
  LODWORD(STACK[0x39F0]) = v181 + v176;
  LODWORD(v126) = (v181 + v176) ^ v177;
  LODWORD(STACK[0x3988]) = v126;
  LODWORD(v151) = v126 ^ LODWORD(STACK[0x3E38]);
  LODWORD(v148) = v151 + LODWORD(STACK[0x3620]);
  LODWORD(v170) = LODWORD(STACK[0x37A0]) - v148;
  LODWORD(v159) = v170 ^ LODWORD(STACK[0x3938]);
  LODWORD(v185) = v159 ^ LODWORD(STACK[0x3708]);
  LODWORD(v176) = v185 ^ LODWORD(STACK[0x34E8]);
  LODWORD(v126) = v176 + LODWORD(STACK[0x3960]);
  LODWORD(STACK[0x39C0]) = v126;
  LODWORD(v162) = v126 ^ LODWORD(STACK[0x3888]);
  LODWORD(v163) = v162 + LODWORD(STACK[0x3908]);
  LODWORD(v177) = v163 + LODWORD(STACK[0x3948]);
  LODWORD(v182) = LODWORD(STACK[0x3928]) - v177;
  LODWORD(v126) = v182 ^ LODWORD(STACK[0x3B70]);
  LODWORD(v186) = v126 + LODWORD(STACK[0x3BB0]);
  LODWORD(v173) = LODWORD(STACK[0x3B60]) - v186;
  LODWORD(v186) = v128 - (v186 ^ v178);
  LODWORD(v128) = v173 + LODWORD(STACK[0x3B18]);
  LODWORD(v178) = v128 + LODWORD(STACK[0x38D8]);
  LODWORD(v184) = LODWORD(STACK[0x3B88]) - v178;
  LODWORD(v171) = LODWORD(STACK[0x3490]) - v184;
  LODWORD(STACK[0x3BB0]) = v171;
  v187 = (v186 - v171) ^ LODWORD(STACK[0x3460]);
  STACK[0x3928] = v187;
  v188 = (v187 + LODWORD(STACK[0x3820]));
  STACK[0x3820] = v188;
  LODWORD(v188) = LODWORD(STACK[0x33D0]) - (v188 ^ v126);
  LODWORD(STACK[0x3AA0]) = v188;
  v189 = ((v188 + v160) ^ LODWORD(STACK[0x3900])) + v164;
  STACK[0x1C88] = v189;
  LODWORD(v189) = v168 - v189;
  LODWORD(STACK[0x20E8]) = v189;
  v190 = (v189 + v148);
  STACK[0x2238] = v190;
  v191 = (LODWORD(STACK[0x3480]) - v190) ^ v172;
  LODWORD(v190) = v151 - LODWORD(STACK[0x33F8]);
  STACK[0x3840] = v191;
  LODWORD(v191) = LODWORD(STACK[0x33C8]) - v191;
  LODWORD(STACK[0x28CC]) = v191;
  v192 = (v191 + LODWORD(STACK[0x33C0]));
  STACK[0x3900] = v192;
  LODWORD(v190) = v190 - v192;
  LODWORD(STACK[0x3790]) = v190;
  v193 = v176 - ((LODWORD(STACK[0x3958]) - v190) ^ v179);
  STACK[0x3318] = v193;
  v194 = (LODWORD(STACK[0x34A0]) - v193) ^ v169;
  STACK[0x1BC0] = v194;
  LODWORD(v194) = LODWORD(STACK[0x3468]) - v194;
  LODWORD(STACK[0x1BE0]) = v194;
  LODWORD(v194) = v194 ^ v162;
  LODWORD(STACK[0x2144]) = v194;
  LODWORD(v192) = (v194 ^ v183) + LODWORD(STACK[0x33E4]);
  LODWORD(v194) = v170 + LODWORD(STACK[0x351C]);
  LODWORD(STACK[0x3958]) = v192;
  LODWORD(v194) = LODWORD(STACK[0x3450]) - ((v194 + v192) ^ v185);
  LODWORD(STACK[0x268C]) = v194;
  v195 = (v194 + LODWORD(STACK[0x3478]));
  STACK[0x3E38] = v195;
  v196 = (v195 + LODWORD(STACK[0x3488])) ^ LODWORD(STACK[0x3498]);
  LODWORD(v195) = v159 ^ LODWORD(STACK[0x3418]);
  LODWORD(v192) = v182 - LODWORD(STACK[0x3710]);
  STACK[0x1B60] = v196;
  v197 = (v184 - v196);
  STACK[0x2100] = v197;
  v198 = (v197 + LODWORD(STACK[0x3540]));
  STACK[0x1B40] = v198;
  LODWORD(v195) = v195 ^ v198;
  LODWORD(STACK[0x3830]) = v195;
  LODWORD(v195) = v195 ^ v174;
  LODWORD(STACK[0x20F0]) = v195;
  LODWORD(v195) = v195 ^ LODWORD(STACK[0x33F0]);
  LODWORD(STACK[0x2924]) = v195;
  LODWORD(v195) = v181 - v195;
  LODWORD(STACK[0x2704]) = v195;
  LODWORD(v195) = v192 - v195;
  STACK[0x3698] = (v195 + LODWORD(STACK[0x3750]));
  LODWORD(v198) = v195 + LODWORD(STACK[0x3D68]);
  LODWORD(v195) = LODWORD(STACK[0x3500]) - LODWORD(STACK[0x3600]) - LODWORD(STACK[0x34B8]) - LODWORD(STACK[0x3798]) + LODWORD(STACK[0x3458]) + LODWORD(STACK[0x3730]) + v173;
  LODWORD(v192) = LODWORD(STACK[0x3520]) + LODWORD(STACK[0x366C]) + v177;
  LODWORD(STACK[0x2234]) = v198;
  LODWORD(v198) = LODWORD(STACK[0x3988]) - v198;
  LODWORD(STACK[0x1B5C]) = v198;
  LODWORD(v198) = v198 ^ v163;
  LODWORD(STACK[0x2428]) = v198;
  LODWORD(v195) = v195 + v198;
  LODWORD(STACK[0x1BE4]) = v195;
  LODWORD(v195) = v195 ^ LODWORD(STACK[0x38D0]);
  LODWORD(STACK[0x2424]) = v195;
  LODWORD(v195) = v195 + LODWORD(STACK[0x37F0]);
  LODWORD(STACK[0x20B8]) = v195;
  v199 = v192 - (v195 ^ LODWORD(STACK[0x3940]));
  LODWORD(v195) = LODWORD(STACK[0x3588]) ^ LODWORD(STACK[0x3688]) ^ LODWORD(STACK[0x3700]);
  LODWORD(v192) = LODWORD(STACK[0x3718]) + LODWORD(STACK[0x3A60]) + LODWORD(STACK[0x39A8]) + v162 - v128 - v178;
  LODWORD(v198) = LODWORD(STACK[0x37B8]) - LODWORD(STACK[0x3638]);
  STACK[0x2370] = v199;
  v200 = v199 ^ LODWORD(STACK[0x39E8]);
  STACK[0x2148] = v200;
  LODWORD(v200) = LODWORD(STACK[0x3858]) - v200;
  LODWORD(STACK[0x1C98]) = v200;
  LODWORD(v195) = v195 ^ v200;
  LODWORD(STACK[0x21F4]) = v195;
  v201 = (v192 - v195);
  STACK[0x33C0] = v201;
  LODWORD(v201) = LODWORD(STACK[0x3860]) - ((v198 - v201) ^ LODWORD(STACK[0x39C0]));
  LODWORD(STACK[0x3B18]) = v201;
  v202 = v201 ^ LODWORD(STACK[0x3808]);
  STACK[0x2228] = v202;
  v203 = LODWORD(STACK[0x38F8]) - (v202 ^ LODWORD(STACK[0x3850]));
  STACK[0x2038] = v203;
  LODWORD(v203) = LODWORD(STACK[0x3B68]) - v203;
  LODWORD(STACK[0x3710]) = v203;
  v204 = (LODWORD(STACK[0x39F0]) - v203);
  STACK[0x3798] = v204;
  v205 = v204 ^ LODWORD(STACK[0x3758]);
  STACK[0x2138] = v205;
  LODWORD(v205) = LODWORD(STACK[0x3870]) - v205;
  LODWORD(STACK[0x3A60]) = v205;
  LODWORD(v205) = (LODWORD(STACK[0x3880]) - v205) ^ LODWORD(STACK[0x38C8]);
  LODWORD(STACK[0x2134]) = v205;
  v206 = v205 ^ LODWORD(STACK[0x3920]);
  STACK[0x23B0] = v206;
  v207 = v206 ^ LODWORD(STACK[0x3BB0]);
  STACK[0x21F8] = v207;
  v208 = ((v207 ^ LODWORD(STACK[0x3878])) + LODWORD(STACK[0x3890])) ^ LODWORD(STACK[0x3950]);
  LODWORD(v207) = LODWORD(STACK[0x3930]) ^ LODWORD(STACK[0x39A0]);
  STACK[0x22D8] = v208;
  LODWORD(STACK[0x20A0]) = LODWORD(STACK[0x3980]) - (v207 ^ v208) + LODWORD(STACK[0x3998]);
  STACK[0x2630] = LODWORD(STACK[0x3D40]) ^ 0x49u;
  STACK[0x2828] = LODWORD(STACK[0x3D38]) ^ 0x49u;
  STACK[0x2668] = LODWORD(STACK[0x3D48]) ^ 0x49u;
  STACK[0x3BB0] = LODWORD(STACK[0x3D30]) ^ 0x49u;
  STACK[0x2198] = LODWORD(STACK[0x3D58]) ^ 0x49u;
  STACK[0x3718] = LODWORD(STACK[0x3D28]) ^ 0x49u;
  LODWORD(v207) = LODWORD(STACK[0x3D60]) ^ 0x49;
  LODWORD(v200) = STACK[0x63A4];
  STACK[0x21E0] = LODWORD(STACK[0x63A4]) ^ LODWORD(STACK[0x3D50]) ^ 0x49u;
  STACK[0x2648] = v200 ^ v207;
  LODWORD(v172) = STACK[0x3828];
  LODWORD(v162) = STACK[0x36D8];
  LODWORD(v185) = STACK[0x36F8];
  LODWORD(v170) = STACK[0x3C10];
  LODWORD(v179) = STACK[0x36E0];
  LODWORD(v159) = STACK[0x36E8];
  LODWORD(v168) = STACK[0x3C08];
  LODWORD(v192) = STACK[0x3A68];
  LODWORD(v169) = STACK[0x3BE8];
  LODWORD(v177) = STACK[0x3D70];
  LODWORD(v178) = STACK[0x36C0];
  LODWORD(v174) = STACK[0x36B8];
  LODWORD(v207) = LODWORD(STACK[0x3828]) ^ LODWORD(STACK[0x36D8]) ^ LODWORD(STACK[0x3B90]) ^ LODWORD(STACK[0x36F8]) ^ LODWORD(STACK[0x3C10]) ^ LODWORD(STACK[0x36E0]) ^ LODWORD(STACK[0x36E8]) ^ LODWORD(STACK[0x3C08]) ^ LODWORD(STACK[0x3A68]) ^ LODWORD(STACK[0x3BE8]) ^ LODWORD(STACK[0x3E40]) ^ LODWORD(STACK[0x3818]) ^ LODWORD(STACK[0x3BD8]) ^ LODWORD(STACK[0x37F8]) ^ LODWORD(STACK[0x37E8]) ^ LODWORD(STACK[0x3D70]) ^ LODWORD(STACK[0x36C0]) ^ LODWORD(STACK[0x36B8]);
  LODWORD(v128) = STACK[0x3810];
  LODWORD(v171) = STACK[0x3550];
  LODWORD(v163) = STACK[0x36A0];
  LODWORD(v164) = STACK[0x3538];
  LODWORD(v208) = LODWORD(STACK[0x3B98]) ^ LODWORD(STACK[0x3550]) ^ LODWORD(STACK[0x3810]) ^ LODWORD(STACK[0x36A0]) ^ LODWORD(STACK[0x3538]) ^ LODWORD(STACK[0x3D80]);
  LODWORD(v182) = STACK[0x36F0];
  LODWORD(v160) = STACK[0x3530];
  LODWORD(v181) = STACK[0x38C0];
  LODWORD(v176) = LODWORD(STACK[0x38C0]) ^ LODWORD(STACK[0x3D80]);
  LODWORD(v200) = LODWORD(STACK[0x38C0]) ^ LODWORD(STACK[0x3618]);
  LODWORD(v173) = LODWORD(STACK[0x38C0]) ^ LODWORD(STACK[0x3328]);
  LODWORD(STACK[0x32D8]) = v173;
  LODWORD(v184) = v181 ^ LODWORD(STACK[0x3608]);
  LODWORD(STACK[0x3228]) = v200;
  LODWORD(STACK[0x3B90]) = v184;
  LODWORD(v200) = v200 ^ v173 ^ v184;
  LODWORD(v173) = STACK[0x38B8];
  LODWORD(v184) = LODWORD(STACK[0x38B8]) ^ LODWORD(STACK[0x3800]);
  LODWORD(STACK[0x3B88]) = v184;
  LODWORD(v183) = STACK[0x3570];
  LODWORD(STACK[0x32D0]) = v173 ^ LODWORD(STACK[0x3570]);
  LODWORD(STACK[0x3B70]) = v173 ^ v128;
  LODWORD(v162) = v181 ^ v162;
  LODWORD(v200) = v200 ^ v184 ^ v173 ^ v183 ^ v173 ^ v128 ^ v162;
  LODWORD(v184) = v181 ^ LODWORD(STACK[0x3558]);
  LODWORD(STACK[0x3B68]) = v184;
  LODWORD(v128) = STACK[0x36B0];
  LODWORD(STACK[0x3B60]) = v181 ^ LODWORD(STACK[0x36B0]);
  LODWORD(STACK[0x3998]) = v181 ^ v182;
  LODWORD(v200) = v200 ^ v184 ^ v181 ^ v128 ^ v181 ^ v182;
  LODWORD(v184) = v181 ^ LODWORD(STACK[0x3548]);
  LODWORD(STACK[0x3988]) = v184;
  LODWORD(STACK[0x3980]) = v181 ^ v172;
  LODWORD(STACK[0x3960]) = v173 ^ v185;
  LODWORD(STACK[0x3950]) = v181 ^ v164;
  LODWORD(STACK[0x3948]) = v181 ^ v163;
  LODWORD(STACK[0x31E8]) = v173 ^ v170;
  LODWORD(STACK[0x3940]) = v181 ^ v174;
  LODWORD(v200) = v200 ^ v184 ^ v181 ^ v172 ^ v173 ^ v185 ^ v181 ^ v164 ^ v181 ^ v163 ^ v173 ^ v170 ^ v181 ^ v174;
  LODWORD(v170) = STACK[0x35A0];
  LODWORD(STACK[0x3D60]) = v181 ^ LODWORD(STACK[0x35A0]);
  LODWORD(STACK[0x3D68]) = v176;
  LODWORD(STACK[0x37A0]) = v173 ^ v179;
  LODWORD(STACK[0x3D58]) = v181 ^ v178;
  LODWORD(v185) = STACK[0x3C00];
  LODWORD(STACK[0x3938]) = v173 ^ LODWORD(STACK[0x3C00]);
  LODWORD(v172) = v181 ^ LODWORD(STACK[0x3310]);
  LODWORD(STACK[0x3D50]) = v173 ^ v171;
  LODWORD(STACK[0x3930]) = v173 ^ v168;
  LODWORD(STACK[0x3D48]) = v172;
  LODWORD(STACK[0x3920]) = v173 ^ v169;
  LODWORD(v200) = v200 ^ v181 ^ v170 ^ v176 ^ v173 ^ v179 ^ v192 ^ v181 ^ v178 ^ v173 ^ v185 ^ v173 ^ v171 ^ v173 ^ v168 ^ v172 ^ v173 ^ v169;
  LODWORD(v208) = v208 ^ v160 ^ v182 ^ v170 ^ v185;
  LODWORD(v185) = STACK[0x3BB8];
  LODWORD(v192) = STACK[0x3BA8];
  LODWORD(v208) = v208 ^ LODWORD(STACK[0x3BB8]) ^ LODWORD(STACK[0x3BA8]) ^ LODWORD(STACK[0x3D78]);
  LODWORD(v176) = v173 ^ LODWORD(STACK[0x3D78]);
  LODWORD(STACK[0x3D40]) = v176;
  LODWORD(STACK[0x3D38]) = v173 ^ v159;
  LODWORD(v200) = v200 ^ v173 ^ v159 ^ v176;
  LODWORD(v176) = LODWORD(STACK[0x3738]) ^ ((STACK[0x52DC] & LODWORD(STACK[0x3738])) >> 1);
  LODWORD(v172) = ((v176 & STACK[0x5270]) >> STACK[0x53F0]) ^ ((v176 & STACK[0x526C]) << STACK[0x53F8]);
  LODWORD(v170) = STACK[0x36D0];
  LODWORD(v208) = v208 ^ v128 ^ v183 ^ LODWORD(STACK[0x36D0]);
  LODWORD(v128) = v173 ^ LODWORD(STACK[0x3E40]);
  v209 = v181 ^ v177;
  LODWORD(STACK[0x3908]) = v173 ^ v185;
  v210 = v173 ^ v192;
  STACK[0x3700] = v210;
  LODWORD(STACK[0x39A8]) = v173 ^ v160;
  LODWORD(STACK[0x3D30]) = v128;
  LODWORD(v200) = v200 ^ v173 ^ v185 ^ v210 ^ v173 ^ v160 ^ v128;
  LODWORD(v210) = v181 ^ LODWORD(STACK[0x3818]);
  LODWORD(STACK[0x3D28]) = v210;
  STACK[0x3D80] = v209;
  LODWORD(v200) = v200 ^ v210 ^ v209;
  LODWORD(v210) = v173 ^ LODWORD(STACK[0x37E8]);
  LODWORD(STACK[0x32C8]) = v210;
  LODWORD(v200) = v200 ^ v210;
  LODWORD(v210) = v173 ^ LODWORD(STACK[0x3BD8]);
  LODWORD(STACK[0x38F8]) = v210;
  LODWORD(v200) = v200 ^ v210;
  LODWORD(v210) = v181 ^ LODWORD(STACK[0x37F8]);
  LODWORD(STACK[0x38D8]) = v210;
  LODWORD(STACK[0x38D0]) = v173 ^ v170;
  LODWORD(v209) = v200 ^ v210 ^ v173 ^ v170;
  LODWORD(STACK[0x3808]) = v207 ^ 0x7C8F64B0;
  LODWORD(STACK[0x31D8]) = v208 ^ 0x7C8F64B0;
  LODWORD(STACK[0x31D0]) = 1517910463 * ((v207 ^ 0x7C8F64B0 ^ v209) - (v208 ^ 0x7C8F64B0));
  LODWORD(STACK[0x38C8]) = v209;
  LODWORD(STACK[0x31C8]) = 385816111 * (v209 - (v208 ^ v207));
  STACK[0x3E40] = *(v7 + 8 * SLODWORD(STACK[0x3D98]));
  STACK[0x26C8] = LODWORD(STACK[0x3C18]) ^ v75 ^ 4;
  v211 = STACK[0x3CC0] >> 8;
  v212 = STACK[0x3CB8] >> 16;
  STACK[0x26D8] = STACK[0x3AD8] >> 8;
  LODWORD(STACK[0x3688]) = STACK[0x3A60];
  LODWORD(STACK[0x20AC]) = LODWORD(STACK[0x20A0]) + LODWORD(STACK[0x3A28]);
  LODWORD(STACK[0x31C0]) = LODWORD(STACK[0x3C90]) ^ 0x807CE1D8;
  v213 = STACK[0x3CD0];
  STACK[0x31B8] = BYTE1(STACK[0x3CD0]);
  STACK[0x31B0] = BYTE2(v213);
  STACK[0x31A8] = v213 >> 24;
  STACK[0x31A0] = v213;
  v214 = STACK[0x3D90];
  STACK[0x3198] = STACK[0x3D90] >> 24;
  STACK[0x3190] = BYTE2(v214);
  STACK[0x3188] = BYTE1(v214);
  STACK[0x3180] = v214;
  v215 = STACK[0x3D20];
  STACK[0x3178] = STACK[0x3D20] >> 24;
  STACK[0x3170] = BYTE2(v215);
  STACK[0x3168] = BYTE1(v215);
  STACK[0x3160] = v215;
  v216 = STACK[0x3D10];
  STACK[0x3158] = BYTE2(STACK[0x3D10]);
  STACK[0x3150] = BYTE1(v216);
  STACK[0x3148] = v216;
  STACK[0x3140] = v216 >> 24;
  v217 = STACK[0x3CE8];
  STACK[0x3138] = BYTE1(STACK[0x3CE8]);
  STACK[0x3130] = v217 >> 24;
  STACK[0x3128] = v217;
  STACK[0x3120] = BYTE2(v217);
  v218 = STACK[0x3CF0];
  STACK[0x3118] = STACK[0x3CF0] >> 24;
  STACK[0x3110] = BYTE1(v218);
  STACK[0x3108] = v218;
  STACK[0x3100] = BYTE2(v218);
  LODWORD(STACK[0x3B98]) = v181 ^ LODWORD(STACK[0x3510]);
  LODWORD(STACK[0x3D20]) = v181 ^ LODWORD(STACK[0x36C8]);
  LODWORD(STACK[0x38C0]) = v173 ^ LODWORD(STACK[0x3BD0]);
  STACK[0x37B8] = v173 ^ LODWORD(STACK[0x3528]);
  LODWORD(STACK[0x3D10]) = v173 ^ LODWORD(STACK[0x34F0]);
  LODWORD(STACK[0x38B8]) = v173 ^ LODWORD(STACK[0x3508]);
  LODWORD(v200) = STACK[0x3320];
  LODWORD(STACK[0x30F8]) = LODWORD(STACK[0x6A40]) ^ LODWORD(STACK[0x3320]) ^ LODWORD(STACK[0x32D8]);
  LODWORD(v192) = LODWORD(STACK[0x6A48]) ^ v200;
  LODWORD(STACK[0x31F0]) = v162;
  LODWORD(STACK[0x30F0]) = v192 ^ v162;
  LODWORD(STACK[0x30E8]) = LODWORD(STACK[0x64B8]) ^ v200 ^ LODWORD(STACK[0x32D0]);
  LODWORD(STACK[0x30E0]) = LODWORD(STACK[0x64C0]) ^ v200;
  LODWORD(STACK[0x30D8]) = LODWORD(STACK[0x64C8]) ^ v200;
  LODWORD(STACK[0x30D0]) = LODWORD(STACK[0x6A58]) ^ v200;
  LODWORD(STACK[0x30C8]) = LODWORD(STACK[0x6A60]) ^ v200;
  LODWORD(STACK[0x30C0]) = LODWORD(STACK[0x6A68]) ^ v200;
  LODWORD(STACK[0x30B8]) = LODWORD(STACK[0x64D8]) ^ v200;
  LODWORD(STACK[0x30B0]) = LODWORD(STACK[0x64E8]) ^ v200;
  LODWORD(STACK[0x30A8]) = LODWORD(STACK[0x6A78]) ^ v200;
  v219 = STACK[0x3D88];
  STACK[0x30A0] = BYTE1(STACK[0x3D88]);
  STACK[0x3098] = BYTE2(v219);
  STACK[0x3090] = v219;
  STACK[0x3088] = v219 >> 24;
  v220 = STACK[0x3CC8];
  STACK[0x3080] = STACK[0x3CC8] >> 24;
  STACK[0x3078] = BYTE2(v220);
  STACK[0x3070] = BYTE1(v220);
  STACK[0x3068] = v220;
  v221 = STACK[0x3CD8];
  STACK[0x3060] = BYTE1(STACK[0x3CD8]);
  STACK[0x3058] = v221 >> 24;
  STACK[0x3050] = v221;
  STACK[0x3048] = BYTE2(v221);
  LODWORD(STACK[0x3040]) = LODWORD(STACK[0x6A88]) ^ v200;
  LODWORD(STACK[0x3038]) = LODWORD(STACK[0x6A90]) ^ v200;
  LODWORD(STACK[0x3030]) = -344342441 * LODWORD(STACK[0x32E0]);
  LODWORD(STACK[0x3028]) = LODWORD(STACK[0x64F8]) ^ v200;
  LODWORD(STACK[0x3020]) = LODWORD(STACK[0x6500]) ^ v200;
  LODWORD(STACK[0x3018]) = LODWORD(STACK[0x6A98]) ^ v200;
  LODWORD(STACK[0x3010]) = LODWORD(STACK[0x6510]) ^ v200;
  LODWORD(STACK[0x3008]) = LODWORD(STACK[0x6910]) ^ v200;
  LODWORD(STACK[0x3000]) = LODWORD(STACK[0x6AA8]) ^ v200;
  LODWORD(STACK[0x2FF8]) = LODWORD(STACK[0x6520]) ^ v200;
  LODWORD(STACK[0x2FF0]) = LODWORD(STACK[0x6AB8]) ^ v200;
  LODWORD(STACK[0x2FE8]) = LODWORD(STACK[0x6AC0]) ^ v200;
  LODWORD(STACK[0x2FE0]) = LODWORD(STACK[0x6AC8]) ^ v200;
  LODWORD(STACK[0x2FD8]) = LODWORD(STACK[0x6538]) ^ v200;
  LODWORD(STACK[0x2FD0]) = LODWORD(STACK[0x6540]) ^ v200;
  LODWORD(STACK[0x2FC8]) = LODWORD(STACK[0x6AD0]) ^ v200;
  LODWORD(STACK[0x2FC0]) = LODWORD(STACK[0x6548]) ^ v200;
  LODWORD(STACK[0x2FB8]) = LODWORD(STACK[0x6AD8]) ^ v200;
  LODWORD(STACK[0x2FB0]) = LODWORD(STACK[0x6550]) ^ v200;
  LODWORD(STACK[0x2FA8]) = LODWORD(STACK[0x6568]) ^ v172;
  LODWORD(STACK[0x2FA0]) = LODWORD(STACK[0x6570]) ^ v172;
  LODWORD(STACK[0x2F98]) = LODWORD(STACK[0x6580]) ^ v172;
  LODWORD(STACK[0x2F90]) = LODWORD(STACK[0x6598]) ^ v172;
  LODWORD(STACK[0x2F88]) = LODWORD(STACK[0x65A0]) ^ v172;
  LODWORD(STACK[0x2F80]) = LODWORD(STACK[0x65A8]) ^ v172;
  LODWORD(STACK[0x2F78]) = LODWORD(STACK[0x65B8]) ^ v172;
  LODWORD(STACK[0x2F70]) = LODWORD(STACK[0x65C8]) ^ v172;
  LODWORD(STACK[0x2F68]) = LODWORD(STACK[0x65D8]) ^ v172;
  LODWORD(STACK[0x2F60]) = LODWORD(STACK[0x65E0]) ^ v172;
  LODWORD(STACK[0x2F58]) = LODWORD(STACK[0x65E8]) ^ v172;
  LODWORD(STACK[0x2F50]) = LODWORD(STACK[0x65F0]) ^ v172;
  LODWORD(STACK[0x2F48]) = LODWORD(STACK[0x6600]) ^ v172;
  LODWORD(STACK[0x2F40]) = LODWORD(STACK[0x6620]) ^ v172;
  LODWORD(STACK[0x2F38]) = LODWORD(STACK[0x6638]) ^ v172;
  LODWORD(STACK[0x2F30]) = LODWORD(STACK[0x6640]) ^ v172;
  LODWORD(STACK[0x2F28]) = LODWORD(STACK[0x6650]) ^ v172;
  LODWORD(v192) = STACK[0x6660];
  LODWORD(STACK[0x31E0]) = v172;
  LODWORD(STACK[0x2F20]) = v192 ^ v172;
  STACK[0x2480] = STACK[0x38B0];
  v222 = STACK[0x38A0];
  STACK[0x2470] = STACK[0x38A0] >> 8;
  STACK[0x2520] = STACK[0x3B00];
  STACK[0x25A8] = STACK[0x3B20];
  STACK[0x2910] = STACK[0x3AE0];
  STACK[0x23A0] = v211;
  STACK[0x26E0] = STACK[0x3AF0];
  STACK[0x2288] = STACK[0x3BF0];
  STACK[0x28E8] = STACK[0x3C70];
  STACK[0x2850] = v212;
  STACK[0x23B8] = STACK[0x3BF8];
  STACK[0x27E0] = STACK[0x3B08];
  STACK[0x2548] = STACK[0x3AE8];
  STACK[0x25E8] = STACK[0x3CA0];
  STACK[0x2830] = v222;
  STACK[0x2918] = STACK[0x3C80];
  STACK[0x2430] = STACK[0x3C60];
  STACK[0x2858] = STACK[0x3C78];
  STACK[0x2488] = STACK[0x3CA8];
  LODWORD(STACK[0x2F18]) = STACK[0x6A54];
  LODWORD(STACK[0x1EAC]) = LOBYTE(STACK[0x6D46]);
  STACK[0x1FF0] = LOBYTE(STACK[0x6D47]);
  STACK[0x2380] = LOBYTE(STACK[0x6D48]);
  STACK[0x3C60] = LOBYTE(STACK[0x6D56]);
  LODWORD(STACK[0x1EA4]) = LOBYTE(STACK[0x6D5B]);
  STACK[0x26C0] = LOBYTE(STACK[0x6D5C]);
  STACK[0x2390] = LOBYTE(STACK[0x6D5F]);
  STACK[0x2770] = LOBYTE(STACK[0x6D6F]);
  STACK[0x27F0] = LOBYTE(STACK[0x6D76]);
  LODWORD(STACK[0x1FC4]) = LOBYTE(STACK[0x6D79]);
  LODWORD(STACK[0x1F58]) = LOBYTE(STACK[0x6D7A]);
  STACK[0x1F60] = LOBYTE(STACK[0x6D8B]);
  LODWORD(STACK[0x1E98]) = LOBYTE(STACK[0x6D8D]);
  LODWORD(STACK[0x21D4]) = LOBYTE(STACK[0x6D8E]);
  STACK[0x2280] = LOBYTE(STACK[0x6D90]);
  LODWORD(STACK[0x1EA8]) = LOBYTE(STACK[0x6D93]);
  STACK[0x2540] = LOBYTE(STACK[0x6D94]);
  LODWORD(STACK[0x1E9C]) = LOBYTE(STACK[0x6D95]);
  STACK[0x26A8] = LOBYTE(STACK[0x6D98]);
  STACK[0x2348] = LOBYTE(STACK[0x6DA1]);
  LODWORD(STACK[0x1FC0]) = LOBYTE(STACK[0x6DA2]);
  STACK[0x2768] = LOBYTE(STACK[0x6DA9]);
  STACK[0x2350] = LOBYTE(STACK[0x6DAA]);
  STACK[0x1E88] = LOBYTE(STACK[0x6DAB]);
  LODWORD(STACK[0x1EA0]) = LOBYTE(STACK[0x6DAE]);
  STACK[0x25C8] = LOBYTE(STACK[0x6DB0]);
  STACK[0x25C0] = LOBYTE(STACK[0x6DB1]);
  LODWORD(STACK[0x1FB8]) = LOBYTE(STACK[0x6DB4]);
  STACK[0x2000] = LOBYTE(STACK[0x6DC4]);
  STACK[0x2588] = LOBYTE(STACK[0x6DC8]);
  STACK[0x2860] = LOBYTE(STACK[0x6DCA]);
  LODWORD(STACK[0x1FB4]) = LOBYTE(STACK[0x6DCC]);
  STACK[0x28A0] = LOBYTE(STACK[0x6DD1]);
  STACK[0x2550] = LOBYTE(STACK[0x6DD4]);
  LODWORD(STACK[0x1FB0]) = LOBYTE(STACK[0x6DD6]);
  LODWORD(STACK[0x2168]) = LOBYTE(STACK[0x6DD7]);
  LODWORD(STACK[0x1E84]) = LOBYTE(STACK[0x6DE1]);
  STACK[0x2610] = LOBYTE(STACK[0x6DE3]);
  STACK[0x2478] = LOBYTE(STACK[0x6DE4]);
  STACK[0x2440] = LOBYTE(STACK[0x6DE9]);
  LODWORD(STACK[0x1E7C]) = LOBYTE(STACK[0x6DF1]);
  LODWORD(STACK[0x1E78]) = LOBYTE(STACK[0x6DFB]);
  STACK[0x25B8] = LOBYTE(STACK[0x6DFE]);
  STACK[0x22E8] = LOBYTE(STACK[0x6E00]);
  LODWORD(STACK[0x1F48]) = LOBYTE(STACK[0x6E0B]);
  STACK[0x2990] = LOBYTE(STACK[0x6E0D]);
  LODWORD(STACK[0x1E74]) = LOBYTE(STACK[0x6E0E]);
  STACK[0x1E68] = LOBYTE(STACK[0x6E13]);
  STACK[0x24C0] = LOBYTE(STACK[0x6E18]);
  LODWORD(STACK[0x1E5C]) = LOBYTE(STACK[0x6E1A]);
  LODWORD(STACK[0x1D2C]) = LOBYTE(STACK[0x6E1D]);
  LODWORD(STACK[0x1EEC]) = LOBYTE(STACK[0x6E20]);
  STACK[0x2020] = LOBYTE(STACK[0x6E24]);
  LODWORD(STACK[0x1D34]) = LOBYTE(STACK[0x6E25]);
  LODWORD(STACK[0x1D30]) = LOBYTE(STACK[0x6E29]);
  LODWORD(STACK[0x1F10]) = LOBYTE(STACK[0x6E2D]);
  STACK[0x1EE0] = LOBYTE(STACK[0x6E3F]);
  STACK[0x21A0] = LOBYTE(STACK[0x6E44]);
  LODWORD(STACK[0x1D64]) = LOBYTE(STACK[0x6E45]);
  STACK[0x27D0] = LOBYTE(STACK[0x6E46]);
  LODWORD(STACK[0x1D60]) = LOBYTE(STACK[0x6E4A]);
  STACK[0x1F00] = LOBYTE(STACK[0x6E4B]);
  LODWORD(STACK[0x1D5C]) = LOBYTE(STACK[0x6E4E]);
  STACK[0x1EF8] = LOBYTE(STACK[0x6E51]);
  LODWORD(STACK[0x1D3C]) = LOBYTE(STACK[0x6E59]);
  STACK[0x1F90] = LOBYTE(STACK[0x6E5A]);
  STACK[0x2008] = LOBYTE(STACK[0x6E60]);
  STACK[0x2200] = LOBYTE(STACK[0x6E62]);
  LODWORD(STACK[0x1D38]) = LOBYTE(STACK[0x6E68]);
  STACK[0x3CA8] = LOBYTE(STACK[0x6E6C]);
  STACK[0x28A8] = LOBYTE(STACK[0x6E6D]);
  LODWORD(STACK[0x1F18]) = LOBYTE(STACK[0x6E6F]);
  STACK[0x1C78] = LOBYTE(STACK[0x6E7B]);
  LODWORD(STACK[0x1DB8]) = LOBYTE(STACK[0x6E7E]);
  STACK[0x28D8] = LOBYTE(STACK[0x6E89]);
  STACK[0x27B8] = LOBYTE(STACK[0x6E8A]);
  LODWORD(STACK[0x1D58]) = LOBYTE(STACK[0x6E8B]);
  STACK[0x2840] = LOBYTE(STACK[0x6E8C]);
  LODWORD(STACK[0x2178]) = LOBYTE(STACK[0x6E97]);
  LODWORD(STACK[0x1DE4]) = LOBYTE(STACK[0x6E99]);
  STACK[0x24D8] = LOBYTE(STACK[0x6EAA]);
  LODWORD(STACK[0x1DE8]) = LOBYTE(STACK[0x6EAC]);
  STACK[0x2010] = LOBYTE(STACK[0x6EAD]);
  STACK[0x24E8] = LOBYTE(STACK[0x6EAE]);
  STACK[0x24B0] = LOBYTE(STACK[0x6EB1]);
  LODWORD(STACK[0x1DBC]) = LOBYTE(STACK[0x6EB4]);
  STACK[0x2538] = LOBYTE(STACK[0x6EBF]);
  STACK[0x2220] = LOBYTE(STACK[0x6EC0]);
  LODWORD(STACK[0x1F8C]) = LOBYTE(STACK[0x6EC3]);
  STACK[0x26E8] = LOBYTE(STACK[0x6EC4]);
  LODWORD(STACK[0x1F1C]) = LOBYTE(STACK[0x6ECB]);
  LODWORD(STACK[0x1F24]) = LOBYTE(STACK[0x6ECE]);
  STACK[0x1D98] = LOBYTE(STACK[0x6ED6]);
  LODWORD(STACK[0x1DFC]) = LOBYTE(STACK[0x6EDA]);
  STACK[0x1DA0] = LOBYTE(STACK[0x6EDB]);
  LODWORD(STACK[0x1E24]) = LOBYTE(STACK[0x6EDC]);
  STACK[0x1DF0] = LOBYTE(STACK[0x6EE0]);
  LODWORD(STACK[0x1F20]) = LOBYTE(STACK[0x6EE1]);
  STACK[0x2468] = LOBYTE(STACK[0x6EEB]);
  LODWORD(STACK[0x21D0]) = LOBYTE(STACK[0x6EED]);
  STACK[0x1E08] = LOBYTE(STACK[0x6EF0]);
  STACK[0x2738] = LOBYTE(STACK[0x6EF1]);
  STACK[0x21E8] = LOBYTE(STACK[0x6EF4]);
  LODWORD(STACK[0x1E14]) = LOBYTE(STACK[0x6EF6]);
  STACK[0x1DC8] = LOBYTE(STACK[0x6F03]);
  STACK[0x2158] = LOBYTE(STACK[0x6F05]);
  STACK[0x1C90] = LOBYTE(STACK[0x6F09]);
  LODWORD(STACK[0x1DEC]) = LOBYTE(STACK[0x6F0A]);
  LODWORD(STACK[0x1FA0]) = LOBYTE(STACK[0x6F0E]);
  STACK[0x2518] = LOBYTE(STACK[0x6F13]);
  LODWORD(STACK[0x1E2C]) = LOBYTE(STACK[0x6F1D]);
  LODWORD(STACK[0x1F2C]) = LOBYTE(STACK[0x6F1F]);
  LODWORD(STACK[0x1E34]) = LOBYTE(STACK[0x6F21]);
  STACK[0x1E38] = LOBYTE(STACK[0x6F29]);
  LODWORD(STACK[0x1F44]) = LOBYTE(STACK[0x6F33]);
  LODWORD(STACK[0x1E28]) = LOBYTE(STACK[0x6F35]);
  LODWORD(STACK[0x1E30]) = LOBYTE(STACK[0x6F40]);
  LODWORD(STACK[0x1E48]) = LOBYTE(STACK[0x6F46]);
  LODWORD(STACK[0x1FA4]) = LOBYTE(STACK[0x6F4A]);
  STACK[0x26F8] = LOBYTE(STACK[0x6F4B]);
  STACK[0x25B0] = LOBYTE(STACK[0x6F4E]);
  STACK[0x24D0] = LOBYTE(STACK[0x6F52]);
  LODWORD(STACK[0x1F14]) = LOBYTE(STACK[0x6F62]);
  LODWORD(STACK[0x1D54]) = LOBYTE(STACK[0x6F64]);
  LODWORD(STACK[0x1D40]) = LOBYTE(STACK[0x6F65]);
  STACK[0x1D48] = LOBYTE(STACK[0x6F67]);
  STACK[0x2600] = LOBYTE(STACK[0x6F6B]);
  STACK[0x2498] = LOBYTE(STACK[0x6F6D]);
  LODWORD(STACK[0x1EF4]) = LOBYTE(STACK[0x6F7A]);
  STACK[0x2608] = LOBYTE(STACK[0x6F7C]);
  LODWORD(STACK[0x1F74]) = LOBYTE(STACK[0x6F7F]);
  STACK[0x2820] = LOBYTE(STACK[0x6FDD]);
  STACK[0x2878] = LOBYTE(STACK[0x6FDE]);
  STACK[0x1CA8] = LOBYTE(STACK[0x6FE4]);
  STACK[0x2450] = LOBYTE(STACK[0x6FE5]);
  LODWORD(STACK[0x1C9C]) = LOBYTE(STACK[0x6FE6]);
  STACK[0x1CB8] = LOBYTE(STACK[0x6FCE]);
  STACK[0x28D0] = LOBYTE(STACK[0x6FD0]);
  STACK[0x2460] = LOBYTE(STACK[0x6FD5]);
  LODWORD(STACK[0x1CCC]) = LOBYTE(STACK[0x6FD6]);
  LODWORD(STACK[0x1CB4]) = LOBYTE(STACK[0x6FD8]);
  STACK[0x1CA0] = LOBYTE(STACK[0x6FDA]);
  STACK[0x1EB0] = LOBYTE(STACK[0x6FC7]);
  STACK[0x21B0] = LOBYTE(STACK[0x6FC8]);
  STACK[0x27B0] = LOBYTE(STACK[0x6FC9]);
  STACK[0x2730] = LOBYTE(STACK[0x6FCB]);
  STACK[0x2598] = LOBYTE(STACK[0x6FCC]);
  STACK[0x1CC0] = LOBYTE(STACK[0x6FCD]);
  STACK[0x3CA0] = LOBYTE(STACK[0x6FB6]);
  LODWORD(STACK[0x1ECC]) = LOBYTE(STACK[0x6FBA]);
  STACK[0x1EB8] = LOBYTE(STACK[0x6FBE]);
  STACK[0x1CD0] = LOBYTE(STACK[0x6FC1]);
  LODWORD(STACK[0x1F70]) = LOBYTE(STACK[0x6FC2]);
  STACK[0x2870] = LOBYTE(STACK[0x6FC3]);
  STACK[0x2458] = LOBYTE(STACK[0x6FA8]);
  STACK[0x25D0] = LOBYTE(STACK[0x6FAD]);
  STACK[0x1C80] = LOBYTE(STACK[0x6FAE]);
  LODWORD(STACK[0x1ED4]) = LOBYTE(STACK[0x6FB2]);
  LODWORD(STACK[0x1CE0]) = LOBYTE(STACK[0x6FB3]);
  STACK[0x1CD8] = LOBYTE(STACK[0x6FB4]);
  STACK[0x2778] = LOBYTE(STACK[0x6F9B]);
  LODWORD(STACK[0x1FE4]) = LOBYTE(STACK[0x6F9C]);
  LODWORD(STACK[0x1ED0]) = LOBYTE(STACK[0x6F9E]);
  LODWORD(STACK[0x1D08]) = LOBYTE(STACK[0x6F9F]);
  STACK[0x1EC0] = LOBYTE(STACK[0x6FA0]);
  LODWORD(STACK[0x1ED8]) = LOBYTE(STACK[0x6FA6]);
  STACK[0x1CF8] = LOBYTE(STACK[0x6F94]);
  LODWORD(STACK[0x1EDC]) = LOBYTE(STACK[0x6F95]);
  LODWORD(STACK[0x1FE8]) = LOBYTE(STACK[0x6F96]);
  STACK[0x1CF0] = LOBYTE(STACK[0x6F98]);
  LODWORD(STACK[0x1CE4]) = LOBYTE(STACK[0x6F99]);
  LODWORD(STACK[0x1CE8]) = LOBYTE(STACK[0x6F9A]);
  LODWORD(STACK[0x1D28]) = LOBYTE(STACK[0x6F87]);
  LODWORD(STACK[0x1D0C]) = LOBYTE(STACK[0x6F88]);
  STACK[0x1D00] = LOBYTE(STACK[0x6F8B]);
  STACK[0x2800] = LOBYTE(STACK[0x6F8E]);
  LODWORD(STACK[0x1CEC]) = LOBYTE(STACK[0x6F8F]);
  STACK[0x2308] = LOBYTE(STACK[0x6F92]);
  STACK[0x1FF8] = LOBYTE(STACK[0x6F80]);
  v223 = STACK[0x34F8];
  STACK[0x32E8] = STACK[0x34F8] >> 24;
  LODWORD(STACK[0x1D1C]) = LOBYTE(STACK[0x6F83]);
  LODWORD(STACK[0x1D10]) = LOBYTE(STACK[0x6F85]);
  STACK[0x2F10] = BYTE1(v223);
  v224 = STACK[0x3650];
  STACK[0x2F08] = STACK[0x3650] >> 24;
  STACK[0x2798] = LOBYTE(STACK[0x6F6F]);
  STACK[0x2848] = LOBYTE(STACK[0x6F70]);
  STACK[0x2F00] = BYTE1(v224);
  v225 = STACK[0x35E8];
  STACK[0x2EF8] = STACK[0x35E8] >> 24;
  LODWORD(STACK[0x1D18]) = LOBYTE(STACK[0x6F71]);
  LODWORD(STACK[0x1D14]) = LOBYTE(STACK[0x6F72]);
  STACK[0x2EF0] = BYTE2(v225);
  v226 = STACK[0x3428];
  STACK[0x2EE8] = STACK[0x3428] >> 24;
  STACK[0x23E8] = LOBYTE(STACK[0x6F68]);
  STACK[0x2728] = LOBYTE(STACK[0x6F69]);
  v227 = STACK[0x34E0];
  STACK[0x2EE0] = STACK[0x34E0] >> 24;
  STACK[0x2ED8] = STACK[0x37C8] >> 24;
  LODWORD(STACK[0x1E58]) = LOBYTE(STACK[0x6F53]);
  STACK[0x1E50] = LOBYTE(STACK[0x6F57]);
  v228 = STACK[0x3628];
  STACK[0x2ED0] = BYTE1(STACK[0x3628]);
  STACK[0x2EC8] = v228 >> 24;
  LODWORD(STACK[0x1F38]) = LOBYTE(STACK[0x6F59]);
  STACK[0x2888] = LOBYTE(STACK[0x6F61]);
  STACK[0x2EC0] = BYTE2(v228);
  v229 = STACK[0x34D8];
  STACK[0x2EB8] = BYTE1(STACK[0x34D8]);
  LODWORD(STACK[0x1E60]) = LOBYTE(STACK[0x6F4C]);
  STACK[0x21B8] = LOBYTE(STACK[0x6F4D]);
  STACK[0x2EB0] = BYTE2(v229);
  STACK[0x2EA8] = v229 >> 24;
  STACK[0x27C0] = LOBYTE(STACK[0x6F39]);
  LODWORD(STACK[0x1F30]) = LOBYTE(STACK[0x6F3B]);
  v230 = STACK[0x3420];
  STACK[0x2EA0] = STACK[0x3420] >> 24;
  STACK[0x2E98] = STACK[0x37D8] >> 24;
  STACK[0x2118] = LOBYTE(STACK[0x6F3C]);
  LODWORD(STACK[0x1F40]) = LOBYTE(STACK[0x6F3E]);
  v231 = STACK[0x3610];
  STACK[0x2E90] = STACK[0x3610] >> 24;
  v232 = STACK[0x3438];
  STACK[0x2E88] = BYTE1(STACK[0x3438]);
  STACK[0x1E00] = LOBYTE(STACK[0x6F2E]);
  STACK[0x2808] = LOBYTE(STACK[0x6F2F]);
  v233 = STACK[0x3788];
  STACK[0x2E80] = BYTE1(STACK[0x3788]);
  STACK[0x2E78] = v233 >> 24;
  LODWORD(STACK[0x1F3C]) = LOBYTE(STACK[0x6F14]);
  LODWORD(STACK[0x1E4C]) = LOBYTE(STACK[0x6F17]);
  STACK[0x2E70] = BYTE2(v233);
  v234 = STACK[0x35E0];
  STACK[0x2E68] = STACK[0x35E0] >> 24;
  STACK[0x1E40] = LOBYTE(STACK[0x6F18]);
  STACK[0x27E8] = LOBYTE(STACK[0x6F1B]);
  v235 = STACK[0x3838];
  STACK[0x2E60] = BYTE2(STACK[0x3838]);
  STACK[0x2E58] = BYTE1(v235);
  STACK[0x1DD8] = LOBYTE(STACK[0x6F0C]);
  STACK[0x2530] = LOBYTE(STACK[0x6F0D]);
  STACK[0x2E50] = v235 >> 24;
  v236 = STACK[0x3568];
  STACK[0x2E48] = BYTE1(STACK[0x3568]);
  STACK[0x2580] = LOBYTE(STACK[0x6EFC]);
  LODWORD(STACK[0x1F34]) = LOBYTE(STACK[0x6EFD]);
  v237 = STACK[0x3768];
  STACK[0x2E40] = BYTE1(STACK[0x3768]);
  v238 = STACK[0x3398];
  STACK[0x2E38] = STACK[0x3398] >> 24;
  STACK[0x2570] = LOBYTE(STACK[0x6F00]);
  LODWORD(STACK[0x1FEC]) = LOBYTE(STACK[0x6F02]);
  v239 = STACK[0x3390];
  STACK[0x2E30] = BYTE1(STACK[0x3390]);
  v240 = STACK[0x3378];
  STACK[0x2E28] = BYTE1(STACK[0x3378]);
  STACK[0x1C70] = LOBYTE(STACK[0x6EF2]);
  STACK[0x3BF0] = LOBYTE(STACK[0x6EF3]);
  v241 = STACK[0x3370];
  STACK[0x2E20] = BYTE1(STACK[0x3370]);
  v242 = STACK[0x3330];
  STACK[0x2E18] = BYTE2(STACK[0x3330]);
  LODWORD(STACK[0x1D88]) = LOBYTE(STACK[0x6EE2]);
  STACK[0x1E18] = LOBYTE(STACK[0x6EE4]);
  v243 = STACK[0x3760];
  STACK[0x2E10] = STACK[0x3760] >> 24;
  STACK[0x2E08] = BYTE1(v243);
  STACK[0x2018] = LOBYTE(STACK[0x6EE6]);
  STACK[0x25E0] = LOBYTE(STACK[0x6EE8]);
  STACK[0x2E00] = BYTE2(v243);
  STACK[0x2DF8] = BYTE2(v236);
  LODWORD(STACK[0x1F9C]) = LOBYTE(STACK[0x6EDE]);
  LODWORD(STACK[0x1DD4]) = LOBYTE(STACK[0x6EDF]);
  STACK[0x2DF0] = v236 >> 24;
  v244 = STACK[0x3440];
  STACK[0x2DE8] = STACK[0x3440] >> 24;
  LODWORD(STACK[0x1F28]) = LOBYTE(STACK[0x6ED2]);
  STACK[0x2310] = LOBYTE(STACK[0x6ED3]);
  STACK[0x2DE0] = BYTE2(v244);
  STACK[0x2DD8] = BYTE1(v244);
  STACK[0x3C80] = LOBYTE(STACK[0x6ED4]);
  LODWORD(STACK[0x1E20]) = LOBYTE(STACK[0x6ED5]);
  STACK[0x2DD0] = BYTE1(v242);
  STACK[0x2DC8] = v241 >> 24;
  STACK[0x2528] = LOBYTE(STACK[0x6EC8]);
  STACK[0x1C68] = LOBYTE(STACK[0x6ECA]);
  STACK[0x2DC0] = BYTE2(v241);
  STACK[0x2DB8] = v240 >> 24;
  STACK[0x1D68] = LOBYTE(STACK[0x6EB5]);
  STACK[0x1D78] = LOBYTE(STACK[0x6EB7]);
  STACK[0x2DB0] = BYTE2(v240);
  STACK[0x2DA8] = BYTE2(v239);
  STACK[0x2448] = LOBYTE(STACK[0x6EB8]);
  STACK[0x2838] = LOBYTE(STACK[0x6EB9]);
  STACK[0x2DA0] = v239 >> 24;
  STACK[0x2D98] = BYTE1(v238);
  LODWORD(STACK[0x1F7C]) = LOBYTE(STACK[0x6EAF]);
  LODWORD(STACK[0x1D74]) = LOBYTE(STACK[0x6EB0]);
  STACK[0x2D90] = BYTE2(v238);
  v245 = STACK[0x3368];
  STACK[0x2D88] = BYTE1(STACK[0x3368]);
  STACK[0x25A0] = LOBYTE(STACK[0x6E9E]);
  STACK[0x21A8] = LOBYTE(STACK[0x6EA4]);
  STACK[0x2D80] = BYTE2(v245);
  STACK[0x2D78] = v245 >> 24;
  STACK[0x1D90] = LOBYTE(STACK[0x6EA8]);
  STACK[0x1DC0] = LOBYTE(STACK[0x6EA9]);
  STACK[0x2D70] = BYTE2(v234);
  STACK[0x2D68] = BYTE1(v234);
  LODWORD(STACK[0x1DB0]) = LOBYTE(STACK[0x6E90]);
  STACK[0x1D80] = LOBYTE(STACK[0x6E94]);
  STACK[0x2D60] = v232 >> 24;
  STACK[0x2D58] = BYTE2(v232);
  LODWORD(STACK[0x1F78]) = LOBYTE(STACK[0x6E82]);
  LODWORD(STACK[0x1DAC]) = LOBYTE(STACK[0x6E84]);
  v246 = STACK[0x35F0];
  STACK[0x2D50] = STACK[0x35F0] >> 24;
  STACK[0x2D48] = BYTE1(v246);
  LODWORD(STACK[0x1DB4]) = LOBYTE(STACK[0x6E87]);
  STACK[0x2930] = LOBYTE(STACK[0x6E88]);
  STACK[0x2D40] = v228;
  STACK[0x2D38] = BYTE2(v246);
  STACK[0x2D30] = BYTE1(v231);
  STACK[0x2388] = LOBYTE(STACK[0x6E70]);
  LODWORD(STACK[0x1F08]) = LOBYTE(STACK[0x6E73]);
  STACK[0x2D28] = v229;
  STACK[0x2D20] = v233;
  STACK[0x2D18] = BYTE2(v231);
  v247 = STACK[0x3300];
  STACK[0x2D10] = STACK[0x3300] >> 24;
  STACK[0x2758] = LOBYTE(STACK[0x6E63]);
  LODWORD(STACK[0x1D44]) = LOBYTE(STACK[0x6E65]);
  STACK[0x2D08] = v235;
  v248 = STACK[0x3358];
  STACK[0x2D00] = STACK[0x3358];
  STACK[0x2CF8] = BYTE1(v247);
  STACK[0x2CF0] = BYTE2(v247);
  STACK[0x26D0] = LOBYTE(STACK[0x6E53]);
  LODWORD(STACK[0x1D8C]) = LOBYTE(STACK[0x6E57]);
  STACK[0x2CE8] = v243;
  STACK[0x2CE0] = v236;
  v249 = STACK[0x3340];
  STACK[0x2CD8] = STACK[0x3340] >> 24;
  STACK[0x2CD0] = BYTE1(v249);
  STACK[0x1F80] = LOBYTE(STACK[0x6E47]);
  STACK[0x3C90] = LOBYTE(STACK[0x6E49]);
  STACK[0x2CC8] = v244;
  STACK[0x2CC0] = v242;
  STACK[0x2CB8] = BYTE2(v249);
  STACK[0x2CB0] = BYTE1(v227);
  LODWORD(STACK[0x1F0C]) = LOBYTE(STACK[0x6E33]);
  LODWORD(STACK[0x1EF0]) = LOBYTE(STACK[0x6E38]);
  STACK[0x2CA8] = v241;
  STACK[0x2CA0] = v240;
  STACK[0x2C98] = BYTE2(v227);
  STACK[0x2C90] = BYTE2(v226);
  STACK[0x1D20] = LOBYTE(STACK[0x6E22]);
  STACK[0x2940] = LOBYTE(STACK[0x6E23]);
  STACK[0x2C88] = v239;
  STACK[0x2C80] = v238;
  STACK[0x2C78] = BYTE1(v226);
  STACK[0x2C70] = BYTE1(v225);
  LODWORD(STACK[0x1E64]) = LOBYTE(STACK[0x6E14]);
  STACK[0x2120] = LOBYTE(STACK[0x6E15]);
  STACK[0x2C68] = v245;
  STACK[0x2C60] = v234;
  v250 = STACK[0x3348];
  STACK[0x2C58] = BYTE2(STACK[0x3348]);
  STACK[0x2C50] = BYTE1(v250);
  STACK[0x27A8] = LOBYTE(STACK[0x6E02]);
  STACK[0x27D8] = LOBYTE(STACK[0x6E04]);
  STACK[0x2C48] = v232;
  STACK[0x2C40] = v246;
  STACK[0x2C38] = v250 >> 24;
  v251 = STACK[0x33E8];
  STACK[0x2C30] = BYTE2(STACK[0x33E8]);
  STACK[0x1FA8] = LOBYTE(STACK[0x6DEC]);
  LODWORD(STACK[0x1F50]) = LOBYTE(STACK[0x6DF0]);
  STACK[0x2C28] = v231;
  STACK[0x2C20] = v247;
  STACK[0x2C18] = BYTE1(v251);
  STACK[0x2C10] = v251 >> 24;
  STACK[0x3C70] = LOBYTE(STACK[0x6DDB]);
  STACK[0x21D8] = LOBYTE(STACK[0x6DDE]);
  STACK[0x2C08] = v249;
  STACK[0x2C00] = v227;
  STACK[0x2BF8] = v242 >> 24;
  STACK[0x2BF0] = BYTE2(v248);
  LODWORD(STACK[0x1F4C]) = LOBYTE(STACK[0x6DCF]);
  LODWORD(STACK[0x1FBC]) = LOBYTE(STACK[0x6DD0]);
  STACK[0x2BE8] = v226;
  STACK[0x2BE0] = v225;
  STACK[0x2BD8] = BYTE1(v248);
  STACK[0x2BD0] = v248 >> 24;
  LODWORD(STACK[0x1F54]) = LOBYTE(STACK[0x6DB6]);
  STACK[0x26B8] = LOBYTE(STACK[0x6DC2]);
  STACK[0x2BC8] = v250;
  STACK[0x2BC0] = v251;
  v252 = STACK[0x3308];
  STACK[0x2BB8] = STACK[0x3308] >> 24;
  STACK[0x2BB0] = BYTE1(v252);
  STACK[0x3730] = LOBYTE(STACK[0x6DAC]);
  STACK[0x2BA8] = v252;
  STACK[0x2BA0] = BYTE2(v252);
  STACK[0x2868] = LOBYTE(STACK[0x6D9B]);
  v253 = STACK[0x37C0];
  STACK[0x2B98] = BYTE1(STACK[0x37C0]);
  STACK[0x2B90] = v253;
  STACK[0x2780] = LOBYTE(STACK[0x6D9E]);
  STACK[0x2B88] = BYTE2(v253);
  STACK[0x2B80] = v253 >> 24;
  STACK[0x2718] = LOBYTE(STACK[0x6D91]);
  STACK[0x2B78] = BYTE2(v237);
  STACK[0x2B70] = v237;
  STACK[0x1FC8] = LOBYTE(STACK[0x6D92]);
  STACK[0x2B68] = v237 >> 24;
  v254 = STACK[0x3778];
  STACK[0x2B60] = BYTE2(STACK[0x3778]);
  LODWORD(STACK[0x1FD4]) = LOBYTE(STACK[0x6D7C]);
  STACK[0x2B58] = BYTE1(v254);
  STACK[0x2B50] = v254;
  STACK[0x1E90] = LOBYTE(STACK[0x6D88]);
  STACK[0x2B48] = v254 >> 24;
  STACK[0x2B40] = BYTE1(v230);
  LODWORD(STACK[0x2170]) = LOBYTE(STACK[0x6D67]);
  STACK[0x2B38] = v230;
  STACK[0x2B30] = BYTE2(v230);
  LODWORD(STACK[0x1F5C]) = LOBYTE(STACK[0x6D6B]);
  STACK[0x2B28] = v223;
  STACK[0x2B20] = BYTE2(v223);
  LODWORD(STACK[0x1E80]) = LOBYTE(STACK[0x6D4A]);
  STACK[0x2B18] = BYTE2(v224);
  STACK[0x2B10] = v224;
  STACK[0x2340] = LOBYTE(STACK[0x6D4F]);
  LODWORD(STACK[0x2278]) = LOBYTE(STACK[0x6D50]);
  v255 = STACK[0x37C8];
  STACK[0x2B08] = BYTE2(STACK[0x37C8]);
  STACK[0x2790] = LOBYTE(STACK[0x6BE7]);
  LODWORD(STACK[0x1F6C]) = LOBYTE(STACK[0x6D41]);
  STACK[0x2490] = LOBYTE(STACK[0x6D42]);
  STACK[0x2268] = LOBYTE(STACK[0x6D43]);
  STACK[0x2438] = LOBYTE(STACK[0x6D45]);
  STACK[0x2B00] = v255;
  LODWORD(STACK[0x2AF8]) = -30040835 * LODWORD(STACK[0x3E18]);
  LODWORD(STACK[0x2AF0]) = STACK[0x6AA4];
  STACK[0x3C78] = LOBYTE(STACK[0x6BE0]);
  STACK[0x25F0] = LOBYTE(STACK[0x6BE1]);
  STACK[0x2880] = LOBYTE(STACK[0x6BE3]);
  STACK[0x2AE8] = BYTE1(v255);
  v256 = STACK[0x37D8];
  STACK[0x2AE0] = BYTE2(STACK[0x37D8]);
  STACK[0x2AD8] = v256;
  STACK[0x2AD0] = BYTE1(v256);
  v257 = STACK[0x37A8];
  STACK[0x2AC8] = BYTE1(STACK[0x37A8]);
  STACK[0x2AC0] = v257;
  STACK[0x2AB8] = BYTE2(v257);
  STACK[0x2AB0] = v257 >> 24;
  LODWORD(STACK[0x2AA8]) = LODWORD(STACK[0x3B98]) ^ LODWORD(STACK[0x32C8]);
  STACK[0x3C18] = STACK[0x2648];
  STACK[0x3708] = STACK[0x3BB0];
  STACK[0x3CC8] = STACK[0x2640];
  STACK[0x3CD0] = STACK[0x2198];
  STACK[0x3BF8] = STACK[0x21E0];
  STACK[0x3CD8] = STACK[0x2740];
  STACK[0x3600] = STACK[0x2668];
  STACK[0x3D78] = STACK[0x2670];
  LODWORD(STACK[0x3638]) = STACK[0x26C8];
  return (STACK[0x3E40])();
}

uint64_t sub_100D878A8(uint64_t a1, int a2)
{
  v4 = *(v2 + 8 * ((199 * (LODWORD(STACK[0x3E40]) <= v3)) ^ a2));
  STACK[0x39C0] = v3;
  return v4(a2 ^ 0x3596u);
}

uint64_t sub_100D87940()
{
  v4 = STACK[0x3D18];
  STACK[0x3D98] = v3;
  v5 = v4 + v3;
  STACK[0x3D70] = v4 + v3;
  LODWORD(v4) = *(v4 + v3 + 1785) << 8;
  v6 = *(v5 + 1789);
  STACK[0x30D8] = v6;
  v7 = (LODWORD(STACK[0x3E18]) + 116502584) & 0xF90DF2FE;
  LODWORD(v6) = (v6 << 8) | (*(v5 + 1788) << 16);
  v8 = *(v5 + 1793);
  STACK[0x3CD0] = v7;
  v9 = v5 + v7;
  STACK[0x3D80] = v9;
  LODWORD(v9) = *(v9 - 3036);
  v10 = *(v5 + 1787);
  STACK[0x2940] = v10;
  LODWORD(v6) = v6 | (v10 << 24) | *(v5 + 1790);
  LODWORD(v4) = (v4 | (*(v5 + 1784) << 16) | *(v5 + 1786)) ^ v2;
  v11 = v4 ^ (*(v5 + 1783) << 24);
  LODWORD(v9) = v9 | (v8 << 8) | (*(v5 + 1791) << 24) | (*(v5 + 1792) << 16);
  v12 = v6 ^ LODWORD(STACK[0x2C20]);
  v13 = *(STACK[0x3A90] + BYTE2(v11));
  LODWORD(v6) = *(STACK[0x3A90] + (v11 >> 24));
  v14 = *(STACK[0x3A90] + BYTE1(v12));
  v15 = *(STACK[0x3A90] + BYTE2(v12));
  v16 = bswap32(*(v5 + 1795)) ^ v0;
  v17 = *(STACK[0x3A90] + v12);
  v18 = v9 ^ LODWORD(STACK[0x268C]);
  v19 = *(STACK[0x3A90] + (v12 >> 24));
  v20 = *(STACK[0x3A90] + BYTE2(v18));
  v21 = *(STACK[0x3A90] + v16) | (*(STACK[0x3A90] + BYTE1(v16)) << 8) | (*(STACK[0x3A90] + BYTE2(v16)) << 16);
  v22 = *(STACK[0x3A90] + (v16 >> 24));
  v23 = *(STACK[0x3A90] + (v9 ^ LOBYTE(STACK[0x268C])));
  v24 = STACK[0x3D28];
  v25 = LODWORD(STACK[0x3D28]) ^ LODWORD(STACK[0x3838]) ^ LODWORD(STACK[0x3548]) ^ v16;
  v26 = *(STACK[0x3A90] + BYTE1(v18));
  v27 = LODWORD(STACK[0x1BE4]) ^ LODWORD(STACK[0x3D28]) ^ LODWORD(STACK[0x3538]) ^ v12;
  LODWORD(v9) = *(STACK[0x3A90] + (v18 >> 24));
  v28 = STACK[0x1B60] ^ LODWORD(STACK[0x3D28]) ^ LODWORD(STACK[0x3530]) ^ v11;
  v29 = STACK[0x3AC0];
  LODWORD(v11) = *(STACK[0x3AC0] + 4 * BYTE1(v25));
  LODWORD(v5) = *(STACK[0x3A90] + v4) | (*(STACK[0x3A90] + BYTE1(v4)) << 8);
  LODWORD(v16) = LODWORD(STACK[0x37F8]) ^ LODWORD(STACK[0x3D28]) ^ LODWORD(STACK[0x3528]);
  LODWORD(v12) = *(STACK[0x3AC0] + 4 * BYTE1(v27));
  v30 = v17 | (v14 << 8);
  v31 = *(STACK[0x3AC0] + 4 * BYTE2(v27));
  v32 = *(STACK[0x3AC0] + 4 * v25);
  LODWORD(v4) = v21 | (v22 << 24);
  v33 = v16 ^ v18;
  v34 = *(STACK[0x3AC0] + 4 * (v16 ^ v18));
  v35 = v5 | (v13 << 16);
  LODWORD(v16) = *(STACK[0x3AC0] + 4 * BYTE1(v33));
  LODWORD(v5) = *(STACK[0x3AC0] + 4 * BYTE1(v28));
  v36 = v30 | (v15 << 16);
  LODWORD(v18) = *(STACK[0x3AC0] + 4 * v28);
  LODWORD(v6) = v35 | (v6 << 24);
  v37 = *(STACK[0x3AC0] + ((v27 >> 22) & 0x3FC));
  v38 = *(STACK[0x3AC0] + 4 * BYTE2(v28));
  v39 = v36 | (v19 << 24);
  v40 = *(STACK[0x3AC0] + ((v25 >> 22) & 0x3FC));
  v41 = v33 >> 22;
  v42 = v23 | (v20 << 16);
  STACK[0x3C80] = v33;
  STACK[0x3CA8] = v25;
  v43 = *(v29 + 4 * BYTE2(v25));
  v44 = LODWORD(STACK[0x3818]) ^ v24 ^ __ROR4__(v31, 8);
  STACK[0x3C98] = v27;
  LODWORD(v25) = *(v29 + 4 * v27);
  LODWORD(v33) = *(v29 + 4 * BYTE2(v33));
  STACK[0x3C90] = v28;
  LODWORD(v41) = *(v29 + (v41 & 0x3FC));
  v45 = v44 ^ __ROR4__(v32, 24) ^ __ROR4__(v16, 16) ^ (*(v29 + ((v28 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x57E8])) ^ LODWORD(STACK[0x52C0]);
  LODWORD(v12) = v24 ^ LODWORD(STACK[0x3CF0]) ^ __ROR4__(v12, 16);
  v46 = STACK[0x5720];
  v47 = STACK[0x52C0];
  STACK[0x3C10] = v26;
  v48 = v40 ^ v47 ^ v46;
  v49 = STACK[0x571C];
  LODWORD(STACK[0x3C70]) = v34;
  LODWORD(v12) = v12 ^ __ROR4__(v34, 24) ^ (v38 >> 8);
  v50 = v48 ^ v49;
  LODWORD(v9) = v42 | (v26 << 8) | (v9 << 24);
  LODWORD(v11) = LODWORD(STACK[0x37F0]) ^ v24 ^ __ROR4__(v11, 16) ^ __ROR4__(v18, 24) ^ v37;
  LODWORD(v18) = LODWORD(STACK[0x20E8]) ^ v24 ^ __ROR4__(v5, 16) ^ v41 ^ __ROR4__(v43, 8) ^ __ROR4__(v25, 24);
  v51 = v11 ^ __ROR4__(v33, 8) ^ LODWORD(STACK[0x57F0]);
  v52 = *(v29 + 4 * BYTE1(v51));
  v53 = v12 ^ (v38 << 24) ^ v50;
  v54 = v18 ^ LODWORD(STACK[0x57EC]);
  LODWORD(v11) = *(v29 + 4 * BYTE2(v51));
  v55 = ((v12 ^ v50) >> 8);
  LODWORD(v16) = *(v29 + 4 * v45);
  v56 = *(v29 + ((v45 >> 22) & 0x3FC));
  v57 = *(v29 + 4 * (v12 ^ v50));
  LODWORD(v41) = *(v29 + 4 * BYTE2(v45));
  LODWORD(v55) = LODWORD(STACK[0x3B20]) ^ v24 ^ __ROR4__(*(v29 + 4 * v55), 16) ^ *(v29 + ((v51 >> 22) & 0x3FC));
  STACK[0x3C60] = v45;
  LODWORD(v12) = *(v29 + 4 * BYTE1(v45));
  LODWORD(v51) = *(v29 + 4 * v51);
  LODWORD(v33) = *(v29 + 4 * BYTE2(v53));
  LODWORD(v55) = v55 ^ __ROR4__(v16, 24) ^ __ROR4__(*(v29 + 4 * BYTE2(v54)), 8);
  v58 = LODWORD(STACK[0x37D8]) ^ v24 ^ __ROR4__(v52, 16) ^ *(v29 + ((v53 >> 22) & 0x3FC));
  STACK[0x3C00] = v54;
  v59 = v58 ^ __ROR4__(v41, 8) ^ __ROR4__(*(v29 + 4 * v54), 24) ^ LODWORD(STACK[0x57F8]);
  v60 = LODWORD(STACK[0x3CC0]) ^ v24 ^ __ROR4__(v11, 8) ^ __ROR4__(v57, 24) ^ v56 ^ __ROR4__(*(v29 + 4 * BYTE1(v54)), 16) ^ LODWORD(STACK[0x567C]) ^ v47;
  v61 = v55 ^ LODWORD(STACK[0x57F4]);
  LODWORD(v11) = *(v29 + 4 * BYTE1(v60));
  v62 = *(v29 + 4 * v60);
  v63 = STACK[0x33C0] ^ v24 ^ *(v29 + ((v54 >> 22) & 0x3FC)) ^ __ROR4__(v12, 16) ^ __ROR4__(v33, 8) ^ __ROR4__(v51, 24) ^ LODWORD(STACK[0x57FC]);
  HIDWORD(v64) = *(v29 + 4 * BYTE1(v61));
  LODWORD(v64) = HIDWORD(v64);
  v65 = (v64 >> 16) ^ __ROR4__(*(v29 + 4 * BYTE2(v60)), 8) ^ *(v29 + ((v59 >> 22) & 0x3FC)) ^ __ROR4__(*(v29 + 4 * v63), 24);
  v66 = LODWORD(STACK[0x3720]) ^ v24 ^ __ROR4__(*(v29 + 4 * v59), 24) ^ __ROR4__(*(v29 + 4 * BYTE2(v61)), 8) ^ __ROR4__(*(v29 + 4 * BYTE1(v63)), 16) ^ *(v29 + ((v60 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x5800]);
  v67 = STACK[0x1FD8] ^ v24 ^ __ROR4__(*(v29 + 4 * BYTE1(v59)), 16) ^ __ROR4__(v62, 24) ^ *(v29 + ((v61 >> 22) & 0x3FC)) ^ __ROR4__(*(v29 + 4 * BYTE2(v63)), 8) ^ LODWORD(STACK[0x5808]);
  v68 = STACK[0x23B0] ^ v24 ^ LODWORD(STACK[0x5804]) ^ (v65 + LODWORD(STACK[0x36D8]));
  v69 = LODWORD(STACK[0x37C8]) ^ v24 ^ *(v29 + ((v63 >> 22) & 0x3FC)) ^ __ROR4__(v11, 16) ^ __ROR4__(*(v29 + 4 * BYTE2(v59)), 8) ^ __ROR4__(*(v29 + 4 * (v55 ^ LOBYTE(STACK[0x57F4]))), 24) ^ LODWORD(STACK[0x580C]);
  LODWORD(v11) = *(v29 + 4 * BYTE2(v67));
  LODWORD(v61) = *(v29 + 4 * BYTE2(v66));
  v70 = v69 >> 22;
  v71 = *(v29 + 4 * BYTE1(v67));
  LODWORD(v63) = STACK[0x2238] ^ v24 ^ __ROR4__(*(v29 + 4 * v69), 24) ^ *(v29 + ((v68 >> 22) & 0x3FC));
  v72 = *(v29 + ((v66 >> 22) & 0x3FC));
  v73 = LODWORD(STACK[0x3AE8]) ^ v24 ^ __ROR4__(*(v29 + 4 * BYTE1(v68)), 16) ^ *(v29 + ((v67 >> 22) & 0x3FC)) ^ __ROR4__(*(v29 + 4 * v66), 24) ^ __ROR4__(*(v29 + 4 * BYTE2(v69)), 8);
  LODWORD(v66) = *(v29 + 4 * BYTE1(v66));
  LODWORD(v59) = *(v29 + 4 * v68);
  LODWORD(v68) = *(v29 + 4 * BYTE2(v68));
  LODWORD(v69) = *(v29 + 4 * BYTE1(v69));
  STACK[0x3BC0] = v67;
  LODWORD(v61) = v63 ^ __ROR4__(v61, 8) ^ __ROR4__(v71, 16);
  v74 = v73 ^ LODWORD(STACK[0x5810]);
  LODWORD(v11) = LODWORD(STACK[0x3718]) ^ v24 ^ __ROR4__(v11, 8) ^ (v69 << 16) ^ WORD1(v69) ^ v72;
  v75 = v61 ^ LODWORD(STACK[0x5814]);
  LODWORD(v66) = LODWORD(STACK[0x3710]) ^ v24 ^ *(v29 + (v70 & 0x3FC)) ^ __ROR4__(v66, 16);
  v76 = v11 ^ __ROR4__(v59, 24) ^ LODWORD(STACK[0x5818]);
  v77 = v66 ^ __ROR4__(v68, 8) ^ __ROR4__(*(v29 + 4 * v67), 24) ^ LODWORD(STACK[0x581C]);
  LODWORD(v11) = *(v29 + 4 * BYTE1(v75));
  LODWORD(v66) = *(v29 + 4 * BYTE2(v75));
  LODWORD(v61) = *(v29 + 4 * v76);
  LODWORD(v68) = *(v29 + 4 * BYTE1(v74));
  LODWORD(STACK[0x3B88]) = v61;
  HIDWORD(v64) = v61;
  LODWORD(v64) = v61;
  LODWORD(v61) = *(v29 + 4 * BYTE1(v76));
  LODWORD(v11) = (v64 >> 24) ^ __ROR4__(v11, 16) ^ __ROR4__(*(v29 + 4 * BYTE2(v77)), 8) ^ *(v29 + ((v74 >> 22) & 0x3FC));
  v78 = v75;
  LODWORD(v66) = v24 ^ LODWORD(STACK[0x3CE8]) ^ __ROR4__(v66, 8) ^ *(v29 + ((v77 >> 22) & 0x3FC));
  STACK[0x3B90] = v75;
  LODWORD(v66) = v66 ^ __ROR4__(v61, 16) ^ __ROR4__(*(v29 + 4 * v74), 24);
  v79 = STACK[0x3850] ^ v24 ^ __ROR4__(v68, 16) ^ *(v29 + ((v75 >> 22) & 0x3FC)) ^ __ROR4__(*(v29 + 4 * BYTE2(v76)), 8) ^ __ROR4__(*(v29 + 4 * v77), 24) ^ LODWORD(STACK[0x5824]);
  LODWORD(v69) = STACK[0x22D8] ^ v24 ^ LODWORD(STACK[0x5828]);
  LODWORD(v68) = LODWORD(STACK[0x2704]) ^ v24 ^ __ROR4__(*(v29 + 4 * v78), 24);
  STACK[0x3BF0] = v77;
  LODWORD(v68) = v68 ^ __ROR4__(*(v29 + 4 * BYTE1(v77)), 16);
  STACK[0x3BE8] = v74;
  LODWORD(v64) = __ROR4__(*(v29 + 4 * BYTE2(v74)), 8);
  LODWORD(v61) = STACK[0x5820];
  LODWORD(STACK[0x3D58]) = v47;
  v80 = v66 ^ v61 ^ v47;
  STACK[0x3B80] = v76;
  v81 = v69 ^ (LODWORD(STACK[0x3640]) + v11);
  v82 = v68 ^ v64 ^ *(v29 + ((v76 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x582C]);
  v83 = LODWORD(STACK[0x3AF0]) ^ v24 ^ __ROR4__(*(v29 + 4 * BYTE1(v80)), 16) ^ __ROR4__(*(v29 + 4 * v79), 24) ^ __ROR4__(*(v29 + 4 * BYTE2(v81)), 8) ^ *(v29 + ((v82 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x5830]);
  LODWORD(v66) = LODWORD(STACK[0x3708]) ^ v24 ^ *(v29 + ((v80 >> 22) & 0x3FC)) ^ __ROR4__(*(v29 + 4 * v81), 24) ^ __ROR4__(*(v29 + 4 * BYTE1(v82)), 16) ^ __ROR4__(*(v29 + 4 * BYTE2(v79)), 8);
  LODWORD(v69) = LODWORD(STACK[0x3B18]) ^ v24 ^ __ROR4__(*(v29 + 4 * (v68 ^ v64 ^ *(v29 + ((v76 >> 22) & 0x3FC)) ^ LOBYTE(STACK[0x582C]))), 24) ^ __ROR4__(*(v29 + 4 * BYTE2(v80)), 8) ^ *(v29 + ((v81 >> 22) & 0x3FC)) ^ __ROR4__(*(v29 + 4 * BYTE1(v79)), 16);
  LODWORD(v81) = LODWORD(STACK[0x3788]) ^ v24 ^ __ROR4__(*(v29 + 4 * BYTE1(v81)), 16);
  v84 = v69 ^ LODWORD(STACK[0x5838]);
  STACK[0x3B98] = v82;
  LODWORD(v69) = v81 ^ __ROR4__(*(v29 + 4 * BYTE2(v82)), 8);
  v85 = v66 ^ LODWORD(STACK[0x5834]);
  STACK[0x3BB8] = v80;
  LODWORD(v64) = __ROR4__(*(v29 + 4 * v80), 24);
  STACK[0x3B78] = v79;
  v86 = v69 ^ v64 ^ *(v29 + ((v79 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x583C]);
  v87 = LODWORD(STACK[0x3700]) ^ v24 ^ __ROR4__(*(v29 + 4 * v83), 24) ^ *(v29 + ((v84 >> 22) & 0x3FC)) ^ __ROR4__(*(v29 + 4 * BYTE2(v85)), 8) ^ __ROR4__(*(v29 + 4 * BYTE1(v86)), 16) ^ LODWORD(STACK[0x5784]) ^ LODWORD(STACK[0x5788]);
  v88 = LODWORD(STACK[0x20F0]) ^ v24 ^ __ROR4__(*(v29 + 4 * v86), 24) ^ __ROR4__(*(v29 + 4 * BYTE2(v84)), 8) ^ __ROR4__(*(v29 + 4 * BYTE1(v85)), 16) ^ *(v29 + ((v83 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x5840]);
  LODWORD(v66) = LODWORD(STACK[0x36F8]) ^ v24 ^ *(v29 + ((v85 >> 22) & 0x3FC));
  LODWORD(v68) = *(v29 + 4 * v84);
  LODWORD(v69) = *(v29 + 4 * BYTE2(v86));
  LODWORD(STACK[0x3BF8]) = v68;
  LODWORD(v66) = v66 ^ __ROR4__(v68, 24) ^ __ROR4__(v69, 8) ^ __ROR4__(*(v29 + 4 * BYTE1(v83)), 16);
  STACK[0x3B08] = v83;
  LODWORD(v69) = LODWORD(STACK[0x3778]) ^ v24 ^ __ROR4__(*(v29 + 4 * BYTE2(v83)), 8);
  v89 = v66 ^ LODWORD(STACK[0x5844]);
  STACK[0x3AE0] = v84;
  LODWORD(v64) = __ROR4__(*(v29 + 4 * BYTE1(v84)), 16);
  STACK[0x3AA0] = v86;
  v90 = v69 ^ v64 ^ *(v29 + ((v86 >> 22) & 0x3FC)) ^ __ROR4__(*(v29 + 4 * v85), 24) ^ LODWORD(STACK[0x5848]);
  LODWORD(v69) = STACK[0x3798] ^ v24 ^ __ROR4__(*(v29 + 4 * v87), 24);
  LODWORD(v61) = *(v29 + 4 * BYTE1(v88));
  LODWORD(v68) = *(v29 + ((v89 >> 22) & 0x3FC));
  LODWORD(STACK[0x2924]) = v61;
  v91 = v69 ^ __ROR4__(v61, 16) ^ v68 ^ __ROR4__(*(v29 + 4 * BYTE2(v90)), 8) ^ LODWORD(STACK[0x584C]);
  LODWORD(v69) = LODWORD(STACK[0x3738]) ^ v24 ^ __ROR4__(*(v29 + 4 * BYTE1(v90)), 16) ^ *(v29 + ((v87 >> 22) & 0x3FC)) ^ __ROR4__(*(v29 + 4 * v88), 24);
  LODWORD(v68) = *(v29 + 4 * BYTE2(v89));
  LODWORD(STACK[0x3800]) = v68;
  v92 = v69 ^ __ROR4__(v68, 8) ^ LODWORD(STACK[0x5850]);
  LODWORD(v68) = STACK[0x2148] ^ v24 ^ *(v29 + ((v88 >> 22) & 0x3FC)) ^ __ROR4__(*(v29 + 4 * BYTE1(v89)), 16) ^ __ROR4__(*(v29 + 4 * v90), 24) ^ __ROR4__(*(v29 + 4 * BYTE2(v87)), 8);
  LODWORD(v90) = LODWORD(STACK[0x3D10]) ^ v24 ^ *(v29 + ((v90 >> 22) & 0x3FC));
  STACK[0x3BD0] = v87;
  LODWORD(v90) = v90 ^ __ROR4__(*(v29 + 4 * BYTE1(v87)), 16) ^ __ROR4__(*(v29 + 4 * v89), 24);
  STACK[0x3B48] = v88;
  v93 = v90 ^ __ROR4__(*(v29 + 4 * BYTE2(v88)), 8) ^ LODWORD(STACK[0x5854]) ^ v47;
  LODWORD(v61) = LODWORD(STACK[0x5868]) ^ 0x7285F60E;
  LODWORD(v90) = v24 ^ LODWORD(STACK[0x3C18]) ^ LODWORD(STACK[0x3C20]) ^ LODWORD(STACK[0x3510]);
  LODWORD(v69) = LODWORD(STACK[0x3828]) ^ LODWORD(STACK[0x3440]) ^ v24 ^ LODWORD(STACK[0x3500]);
  LODWORD(v89) = LODWORD(STACK[0x3CD8]) ^ LODWORD(STACK[0x3C08]) ^ v24 ^ LODWORD(STACK[0x34F8]);
  v94 = v68 ^ LODWORD(STACK[0x56CC]);
  LODWORD(v88) = v24 ^ LODWORD(STACK[0x3CB8]) ^ *(v29 + ((v92 >> 22) & 0x3FC));
  v95 = LODWORD(STACK[0x3628]) ^ LODWORD(STACK[0x34D4]) ^ v39;
  v96 = LODWORD(STACK[0x3618]) ^ STACK[0x3880] ^ v9;
  LODWORD(v25) = STACK[0x2428];
  LODWORD(v9) = STACK[0x5294];
  v97 = LODWORD(STACK[0x2428]) ^ LODWORD(STACK[0x3BE0]) ^ LODWORD(STACK[0x34F0]) ^ LODWORD(STACK[0x5294]) ^ v4;
  v98 = LODWORD(STACK[0x3610]) ^ LODWORD(STACK[0x1BE0]) ^ v6;
  v99 = STACK[0x3AB8];
  v100 = LODWORD(STACK[0x2428]) ^ LODWORD(STACK[0x3930]) ^ __ROR4__(*(STACK[0x3AB8] + 4 * BYTE2(v98)), 8) ^ *(STACK[0x3AB8] + ((v97 >> 22) & 0x3FC));
  LODWORD(v83) = *(v29 + 4 * v91);
  LODWORD(v4) = *(v29 + 4 * BYTE2(v94));
  LODWORD(v6) = LODWORD(STACK[0x3768]) ^ v24;
  LODWORD(STACK[0x3988]) = v83;
  LODWORD(v6) = v6 ^ __ROR4__(v83, 24) ^ __ROR4__(v4, 8);
  LODWORD(v4) = *(v29 + ((v93 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x5858]);
  LODWORD(v83) = v100 ^ __ROR4__(*(v99 + 4 * BYTE1(v95)), 16) ^ __ROR4__(*(v99 + 4 * v96), 24);
  v101 = v88 ^ __ROR4__(*(v29 + 4 * BYTE1(v93)), 16);
  v102 = v83 ^ LODWORD(STACK[0x58A8]);
  LODWORD(v83) = *(v29 + 4 * BYTE1(v94));
  LODWORD(v84) = v25 ^ STACK[0x1B40] ^ __ROR4__(*(v99 + 4 * BYTE1(v96)), 16);
  HIDWORD(v64) = *(v29 + 4 * v92);
  LODWORD(v64) = HIDWORD(v64);
  LODWORD(v86) = v64 >> 24;
  LODWORD(v88) = LODWORD(STACK[0x1C98]) ^ v24;
  LODWORD(STACK[0x351C]) = v86;
  LODWORD(v88) = v88 ^ v86 ^ __ROR4__(v83, 16);
  LODWORD(v86) = LODWORD(STACK[0x3750]) ^ v24 ^ *(v29 + ((v94 >> 22) & 0x3FC));
  v103 = v84 ^ __ROR4__(*(v99 + 4 * v97), 24) ^ __ROR4__(*(v99 + 4 * BYTE2(v95)), 8) ^ *(v99 + ((v98 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x58AC]);
  v104 = v25 ^ LODWORD(STACK[0x3AD8]) ^ LODWORD(STACK[0x34E8]) ^ __ROR4__(*(v99 + 4 * v95), 24) ^ __ROR4__(*(v99 + 4 * BYTE1(v98)), 16) ^ __ROR4__(*(v99 + 4 * BYTE2(v97)), 8) ^ v9 ^ *(v99 + ((v96 >> 22) & 0x3FC));
  STACK[0x3B60] = v96;
  LODWORD(v83) = v25 ^ LODWORD(STACK[0x3BA8]) ^ LODWORD(STACK[0x34E0]) ^ __ROR4__(*(v99 + 4 * BYTE2(v96)), 8);
  STACK[0x36B8] = v97;
  LODWORD(v84) = *(v99 + 4 * BYTE1(v97));
  STACK[0x36C8] = v95;
  LODWORD(v84) = v83 ^ __ROR4__(v84, 16) ^ *(v99 + ((v95 >> 22) & 0x3FC));
  LODWORD(v83) = v6 ^ __ROR4__(*(v29 + 4 * BYTE1(v92)), 16);
  STACK[0x3B70] = v98;
  v105 = v84 ^ __ROR4__(*(v99 + 4 * v98), 24) ^ v9;
  v106 = LODWORD(STACK[0x3608]) ^ STACK[0x21F8] ^ __ROR4__(*(v99 + 4 * BYTE2(v104)), 8) ^ __ROR4__(*(v99 + 4 * BYTE1(v102)), 16) ^ __ROR4__(*(v99 + 4 * v103), 24) ^ *(v99 + ((v105 >> 22) & 0x3FC));
  LODWORD(v84) = v86 ^ __ROR4__(*(v29 + 4 * v93), 24);
  LODWORD(v98) = LODWORD(STACK[0x36D0]) ^ __ROR4__(*(v99 + 4 * BYTE2(v102)), 8) ^ *(v99 + ((v104 >> 22) & 0x3FC)) ^ __ROR4__(*(v99 + 4 * v105), 24) ^ __ROR4__(*(v99 + 4 * BYTE1(v103)), 16);
  LODWORD(v86) = v101 ^ __ROR4__(*(v29 + 4 * v94), 24);
  LODWORD(v94) = v88 ^ *(v29 + ((v91 >> 22) & 0x3FC));
  v107 = v25 ^ LODWORD(STACK[0x39F0]) ^ LODWORD(STACK[0x34D8]) ^ *(v99 + ((v103 >> 22) & 0x3FC)) ^ __ROR4__(*(v99 + 4 * BYTE2(v105)), 8) ^ __ROR4__(*(v99 + 4 * v102), 24);
  STACK[0x3BB0] = v93;
  LODWORD(v88) = v94 ^ __ROR4__(*(v29 + 4 * BYTE2(v93)), 8);
  LODWORD(v94) = *(v99 + 4 * BYTE1(v104));
  STACK[0x3658] = v103;
  v108 = v107 ^ __ROR4__(v94, 16);
  LODWORD(v94) = LODWORD(STACK[0x3600]) ^ LODWORD(STACK[0x28CC]) ^ __ROR4__(*(v99 + 4 * BYTE2(v103)), 8) ^ __ROR4__(*(v99 + 4 * BYTE1(v105)), 16);
  STACK[0x39E8] = v104;
  LODWORD(v64) = __ROR4__(*(v99 + 4 * v104), 24);
  v109 = v83 ^ v4;
  STACK[0x3688] = v102;
  v110 = v94 ^ v64 ^ *(v99 + ((v102 >> 22) & 0x3FC));
  LODWORD(v93) = STACK[0x5280];
  v111 = v108 ^ LODWORD(STACK[0x5280]);
  v112 = v98 ^ LODWORD(STACK[0x5280]);
  v113 = (LODWORD(STACK[0x35F0]) ^ LODWORD(STACK[0x3958])) ^ *(v99 + ((v111 >> 22) & 0x3FC)) ^ __ROR4__(*(v99 + 4 * (v94 ^ v64 ^ *(v99 + ((v102 >> 22) & 0x3FC)))), 24) ^ __ROR4__(*(v99 + 4 * BYTE1(v112)), 16) ^ __ROR4__(*(v99 + 4 * BYTE2(v106)), 8);
  LODWORD(v83) = v84 ^ __ROR4__(*(v29 + 4 * BYTE1(v91)), 16);
  LODWORD(v84) = LODWORD(STACK[0x36E8]) ^ LODWORD(STACK[0x39C0]) ^ v25 ^ LODWORD(STACK[0x36F0]) ^ LODWORD(STACK[0x34A8]) ^ __ROR4__(*(v99 + 4 * BYTE1(v110)), 16);
  STACK[0x3A68] = v91;
  LODWORD(v86) = v86 ^ __ROR4__(*(v29 + 4 * BYTE2(v91)), 8);
  v114 = v88 ^ LODWORD(STACK[0x585C]);
  v115 = v84 ^ __ROR4__(*(v99 + 4 * v111), 24) ^ __ROR4__(*(v99 + 4 * BYTE2(v112)), 8) ^ *(v99 + ((v106 >> 22) & 0x3FC)) ^ v93;
  LODWORD(v84) = LODWORD(STACK[0x35E8]) ^ STACK[0x3E40] ^ __ROR4__(*(v99 + 4 * (v98 ^ v93)), 24) ^ *(v99 + ((v110 >> 22) & 0x3FC));
  STACK[0x3BD8] = v92;
  LODWORD(v83) = v83 ^ __ROR4__(*(v29 + 4 * BYTE2(v92)), 8);
  LODWORD(v98) = v84 ^ __ROR4__(*(v99 + 4 * BYTE1(v106)), 16);
  LODWORD(v84) = v25 ^ LODWORD(STACK[0x39A0]) ^ LODWORD(STACK[0x34A0]) ^ __ROR4__(*(v99 + 4 * BYTE2(v110)), 8);
  STACK[0x33B0] = v112;
  v116 = v84 ^ *(v99 + ((v112 >> 22) & 0x3FC)) ^ __ROR4__(*(v99 + 4 * BYTE1(v111)), 16) ^ __ROR4__(*(v99 + 4 * v106), 24) ^ v93;
  LODWORD(v106) = LODWORD(STACK[0x35E0]) ^ LODWORD(STACK[0x2424]) ^ __ROR4__(*(v99 + 4 * v113), 24) ^ *(v99 + ((v115 >> 22) & 0x3FC)) ^ __ROR4__(*(v99 + 4 * BYTE2(v116)), 8);
  LODWORD(v111) = *(v99 + 4 * BYTE2(v111));
  LODWORD(STACK[0x2234]) = v111;
  v117 = v98 ^ __ROR4__(v111, 8);
  v118 = v106 ^ __ROR4__(*(v99 + 4 * BYTE1(v117)), 16);
  LODWORD(v111) = v25 ^ LODWORD(STACK[0x3960]) ^ LODWORD(STACK[0x3480]) ^ *(v99 + ((v117 >> 22) & 0x3FC)) ^ __ROR4__(*(v99 + 4 * BYTE2(v113)), 8) ^ __ROR4__(*(v99 + 4 * v116), 24) ^ __ROR4__(*(v99 + 4 * BYTE1(v115)), 16);
  v119 = v86 ^ v61;
  v120 = v83 ^ LODWORD(STACK[0x5860]);
  v121 = v25 ^ STACK[0x3980] ^ __ROR4__(*(v99 + 4 * BYTE1(v113)), 16) ^ __ROR4__(*(v99 + 4 * v115), 24) ^ *(v99 + ((v116 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x590C]) ^ __ROR4__(*(v99 + 4 * BYTE2(v117)), 8);
  LODWORD(v113) = v25 ^ LODWORD(STACK[0x3998]) ^ LODWORD(STACK[0x3478]) ^ *(v99 + ((v113 >> 22) & 0x3FC)) ^ __ROR4__(*(v99 + 4 * BYTE2(v115)), 8);
  STACK[0x33B8] = v117;
  v122 = v111 ^ v9;
  LODWORD(v111) = v69 ^ __ROR4__(*(v29 + 4 * BYTE2(v109)), 8);
  v123 = v113 ^ __ROR4__(*(v99 + 4 * v117), 24) ^ __ROR4__(*(v99 + 4 * BYTE1(v116)), 16) ^ v9;
  LODWORD(v113) = v25 ^ LODWORD(STACK[0x32D0]) ^ __ROR4__(*(v99 + 4 * v118), 24) ^ *(v99 + ((v121 >> 22) & 0x3FC)) ^ __ROR4__(*(v99 + 4 * BYTE2(v122)), 8) ^ LODWORD(STACK[0x5914]) ^ __ROR4__(*(v99 + 4 * BYTE1(v123)), 16);
  v124 = LODWORD(STACK[0x35A0]) ^ STACK[0x3620] ^ *(v99 + ((v118 >> 22) & 0x3FC)) ^ __ROR4__(*(v99 + 4 * v123), 24) ^ __ROR4__(*(v99 + 4 * BYTE1(v122)), 16) ^ __ROR4__(*(v99 + 4 * BYTE2(v121)), 8);
  LODWORD(v115) = LODWORD(STACK[0x3CE0]) ^ LODWORD(STACK[0x3C88]) ^ LODWORD(STACK[0x3508]) ^ __ROR4__(*(v29 + 4 * BYTE2(v114)), 8) ^ __ROR4__(*(v29 + 4 * v120), 24);
  LODWORD(v86) = v25 ^ LODWORD(STACK[0x3950]) ^ LODWORD(STACK[0x3470]) ^ *(v99 + ((v123 >> 22) & 0x3FC)) ^ __ROR4__(*(v99 + 4 * BYTE2(v118)), 8) ^ __ROR4__(*(v99 + 4 * BYTE1(v121)), 16);
  LODWORD(v116) = *(v99 + 4 * v122);
  STACK[0x3390] = v122;
  STACK[0x3398] = v118;
  LODWORD(v86) = v86 ^ __ROR4__(v116, 24);
  LODWORD(v116) = v111 ^ __ROR4__(*(v29 + 4 * BYTE1(v120)), 16);
  LODWORD(v94) = *(v29 + 4 * BYTE1(v119));
  LODWORD(v123) = *(v99 + ((v122 >> 22) & 0x3FC)) ^ __ROR4__(*(v99 + 4 * BYTE1(v118)), 16) ^ __ROR4__(*(v99 + 4 * BYTE2(v123)), 8);
  LODWORD(v111) = *(v29 + 4 * v114);
  LODWORD(STACK[0x31B0]) = v94;
  LODWORD(v111) = v89 ^ __ROR4__(v94, 16) ^ __ROR4__(v111, 24);
  v125 = LODWORD(STACK[0x3590]) ^ STACK[0x38B8] ^ ((v123 ^ __ROR4__(*(v99 + 4 * v121), 24)) + LODWORD(STACK[0x36C0]));
  v126 = v86 ^ v93;
  LODWORD(v117) = LODWORD(STACK[0x3760]) ^ __ROR4__(*(v99 + 4 * BYTE2(v125)), 8) ^ __ROR4__(*(v99 + 4 * v124), 24) ^ __ROR4__(*(v99 + 4 * BYTE1(v126)), 16) ^ *(v99 + 4 * BYTE3(v113));
  v127 = (LODWORD(STACK[0x3570]) ^ LODWORD(STACK[0x2158])) ^ *(v99 + ((v124 >> 22) & 0x3FC)) ^ __ROR4__(*(v99 + 4 * (v86 ^ v93)), 24) ^ __ROR4__(*(v99 + 4 * BYTE1(v125)), 16) ^ __ROR4__(*(v99 + 4 * BYTE2(v113)), 8);
  LODWORD(v89) = v90 ^ *(v29 + ((v120 >> 22) & 0x3FC)) ^ __ROR4__(*(v29 + 4 * v109), 24);
  v128 = LODWORD(STACK[0x3568]) ^ STACK[0x3540] ^ __ROR4__(*(v99 + 4 * BYTE1(v124)), 16) ^ __ROR4__(*(v99 + 4 * v113), 24) ^ __ROR4__(*(v99 + 4 * BYTE2(v126)), 8) ^ *(v99 + ((v125 >> 22) & 0x3FC));
  LODWORD(v90) = v25 ^ LODWORD(STACK[0x3948]) ^ *(v99 + ((v126 >> 22) & 0x3FC)) ^ __ROR4__(*(v99 + 4 * BYTE2(v124)), 8);
  LODWORD(v123) = v115 ^ *(v29 + ((v119 >> 22) & 0x3FC));
  LODWORD(v113) = *(v99 + 4 * BYTE1(v113));
  STACK[0x39A8] = v125;
  LODWORD(v115) = v116 ^ __ROR4__(*(v29 + 4 * v119), 24);
  v129 = v90 ^ __ROR4__(*(v99 + 4 * v125), 24) ^ __ROR4__(v113, 16) ^ v9;
  LODWORD(v113) = *(v99 + 4 * v128);
  LODWORD(v90) = STACK[0x594C];
  STACK[0x3900] = v129;
  v130 = v129 ^ v90;
  LODWORD(v113) = v25 ^ LODWORD(STACK[0x3928]) ^ LODWORD(STACK[0x3460]) ^ *(v99 + ((v130 >> 22) & 0x3FC)) ^ __ROR4__(v113, 24);
  LODWORD(STACK[0x3B00]) = v117;
  v131 = v117 ^ LODWORD(STACK[0x3588]);
  LODWORD(v129) = v111 ^ *(v29 + ((v109 >> 22) & 0x3FC));
  LODWORD(v113) = v113 ^ __ROR4__(*(v99 + 4 * BYTE1(v131)), 16) ^ __ROR4__(*(v99 + 4 * BYTE2(v127)), 8);
  LODWORD(v111) = v25 ^ LODWORD(STACK[0x3908]) ^ LODWORD(STACK[0x3458]) ^ __ROR4__(*(v99 + 4 * BYTE1(v127)), 16) ^ *(v99 + ((v128 >> 22) & 0x3FC)) ^ __ROR4__(*(v99 + 4 * (v117 ^ LOBYTE(STACK[0x3588]))), 24) ^ __ROR4__(*(v99 + 4 * BYTE2(v130)), 8);
  v132 = LODWORD(STACK[0x3558]) ^ STACK[0x1C88] ^ __ROR4__(*(v99 + 4 * v127), 24) ^ __ROR4__(*(v99 + 4 * BYTE1(v130)), 16) ^ *(v99 + ((v131 >> 22) & 0x3FC)) ^ __ROR4__(*(v99 + 4 * BYTE2(v128)), 8);
  LODWORD(v131) = v25 ^ LODWORD(STACK[0x3920]) ^ LODWORD(STACK[0x3450]) ^ __ROR4__(*(v99 + 4 * BYTE2(v131)), 8);
  STACK[0x3378] = v127;
  LODWORD(v126) = *(v99 + ((v127 >> 22) & 0x3FC));
  STACK[0x3370] = v130;
  LODWORD(v131) = v131 ^ __ROR4__(*(v99 + 4 * v130), 24) ^ v126;
  STACK[0x3940] = v109;
  LODWORD(STACK[0x3E38]) = v123 ^ __ROR4__(*(v29 + 4 * BYTE1(v109)), 16);
  LODWORD(v64) = __ROR4__(*(v99 + 4 * BYTE1(v128)), 16);
  v133 = v131 ^ v64 ^ v9;
  v134 = v113 ^ v9;
  v135 = v111 ^ v9;
  v136 = v25 ^ STACK[0x1BC0] ^ __ROR4__(*(v99 + 4 * (v131 ^ v64 ^ v9)), 24) ^ __ROR4__(*(v99 + 4 * BYTE1(v134)), 16) ^ *(v99 + ((v132 >> 22) & 0x3FC)) ^ __ROR4__(*(v99 + 4 * BYTE2(v135)), 8);
  v137 = v25 ^ LODWORD(STACK[0x38D8]) ^ LODWORD(STACK[0x3438]) ^ __ROR4__(*(v99 + 4 * v132), 24) ^ __ROR4__(*(v99 + 4 * BYTE1(v133)), 16) ^ __ROR4__(*(v99 + 4 * BYTE2(v134)), 8) ^ *(v99 + ((v135 >> 22) & 0x3FC)) ^ v93;
  v138 = LODWORD(STACK[0x3550]) ^ STACK[0x37E8] ^ *(v99 + ((v133 >> 22) & 0x3FC)) ^ __ROR4__(*(v99 + 4 * (v113 ^ v9)), 24) ^ __ROR4__(*(v99 + 4 * BYTE2(v132)), 8) ^ __ROR4__(*(v99 + 4 * BYTE1(v135)), 16);
  STACK[0x3358] = v135;
  LODWORD(v113) = *(v99 + 4 * (v111 ^ v9));
  STACK[0x3808] = v134;
  LODWORD(v113) = v25 ^ LODWORD(STACK[0x38F8]) ^ LODWORD(STACK[0x3428]) ^ __ROR4__(v113, 24) ^ *(v99 + ((v134 >> 22) & 0x3FC));
  LODWORD(STACK[0x3D90]) = v129 ^ __ROR4__(*(v29 + 4 * BYTE2(v120)), 8);
  LODWORD(v120) = *(v99 + 4 * BYTE1(v132));
  STACK[0x3368] = v133;
  v139 = v113 ^ __ROR4__(*(v99 + 4 * BYTE2(v133)), 8) ^ __ROR4__(v120, 16) ^ v93;
  LODWORD(v120) = v25 ^ LODWORD(STACK[0x3878]) ^ LODWORD(STACK[0x3420]) ^ *(v99 + ((v137 >> 22) & 0x3FC)) ^ __ROR4__(*(v99 + 4 * BYTE2(v139)), 8);
  STACK[0x38A0] = v119;
  LODWORD(v113) = v89 ^ __ROR4__(*(v29 + 4 * BYTE2(v119)), 8);
  LODWORD(v120) = v120 ^ __ROR4__(*(v99 + 4 * BYTE1(v138)), 16);
  LODWORD(v111) = STACK[0x5964];
  STACK[0x37B8] = v136;
  v140 = v136 ^ v111;
  LODWORD(v120) = v120 ^ __ROR4__(*(v99 + 4 * (v136 ^ v111)), 24);
  LODWORD(v111) = v25 ^ LODWORD(STACK[0x38D0]) ^ LODWORD(STACK[0x3418]) ^ __ROR4__(*(v99 + 4 * BYTE2(v138)), 8) ^ *(v99 + ((v139 >> 22) & 0x3FC)) ^ __ROR4__(*(v99 + 4 * v137), 24);
  LODWORD(v64) = __ROR4__(*(v99 + 4 * BYTE1(v140)), 16);
  LODWORD(v131) = *(v29 + ((v114 >> 22) & 0x3FC));
  LODWORD(v129) = STACK[0x52A4];
  LODWORD(STACK[0x3D30]) = STACK[0x52A4];
  v141 = v115 ^ v131 ^ v129;
  v142 = v120 ^ v9;
  v143 = v111 ^ v64 ^ v9;
  LODWORD(v120) = v25 ^ LODWORD(STACK[0x38C8]) ^ LODWORD(STACK[0x33F8]) ^ __ROR4__(*(v99 + 4 * BYTE2(v140)), 8) ^ *(v99 + ((v138 >> 22) & 0x3FC)) ^ __ROR4__(*(v99 + 4 * BYTE1(v137)), 16) ^ __ROR4__(*(v99 + 4 * v139), 24);
  LODWORD(v111) = v25 ^ LODWORD(STACK[0x38C0]) ^ LODWORD(STACK[0x33F0]) ^ __ROR4__(*(v99 + 4 * v138), 24);
  STACK[0x3348] = v137;
  LODWORD(v64) = __ROR4__(*(v99 + 4 * BYTE2(v137)), 8);
  STACK[0x3A60] = v114;
  LODWORD(STACK[0x3D88]) = v113 ^ (*(v29 + 4 * BYTE1(v114)) << 16) ^ HIWORD(*(v29 + 4 * BYTE1(v114)));
  STACK[0x3848] = v140;
  v144 = v120 ^ v93;
  LODWORD(v113) = v111 ^ v64 ^ *(v99 + ((v140 >> 22) & 0x3FC)) ^ __ROR4__(*(v99 + 4 * BYTE1(v139)), 16);
  LODWORD(v111) = v25 ^ LODWORD(STACK[0x36B0]) ^ LODWORD(STACK[0x33E8]) ^ __ROR4__(*(v99 + 4 * BYTE2(v144)), 8) ^ __ROR4__(*(v99 + 4 * v142), 24);
  LODWORD(v140) = *(v99 + 4 * v143);
  LODWORD(v120) = *(v99 + 4 * BYTE1(v142));
  LODWORD(v131) = v25 ^ LODWORD(STACK[0x36A0]);
  LODWORD(STACK[0x3328]) = v140;
  LODWORD(v138) = v131 ^ __ROR4__(v140, 24) ^ __ROR4__(v120, 16);
  LODWORD(v120) = *(v99 + ((v144 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x5994]);
  v145 = v113 ^ v93;
  LODWORD(v131) = v25 ^ LODWORD(STACK[0x20AC]) ^ __ROR4__(*(v99 + 4 * BYTE1(v143)), 16) ^ *(v99 + ((v145 >> 22) & 0x3FC));
  LODWORD(v140) = v25 ^ LODWORD(STACK[0x3698]) ^ LODWORD(STACK[0x33E4]) ^ __ROR4__(*(v99 + 4 * BYTE2(v143)), 8);
  STACK[0x3338] = v143;
  LODWORD(v137) = *(v99 + ((v142 >> 22) & 0x3FC));
  LODWORD(v132) = *(v99 + ((v143 >> 22) & 0x3FC)) ^ v93;
  LODWORD(STACK[0x3D60]) = v120 ^ v93;
  LODWORD(STACK[0x3D68]) = v137 ^ v93;
  LODWORD(v120) = *STACK[0x59A8] ^ __ROR4__(*STACK[0x59A0], 24) ^ __ROR4__(*STACK[0x59B0], 16) ^ __ROR4__(*STACK[0x59B8], 8);
  LODWORD(v93) = v140 ^ __ROR4__(*(v99 + 4 * v145), 24);
  LODWORD(v133) = *STACK[0x59C0] ^ __ROR4__(*STACK[0x59C8], 24) ^ __ROR4__(*STACK[0x59D8], 16);
  STACK[0x3340] = v142;
  LODWORD(v25) = v131 ^ __ROR4__(*(v99 + 4 * BYTE2(v142)), 8);
  LODWORD(v109) = v111 ^ __ROR4__(*(v99 + 4 * BYTE1(v145)), 16);
  LODWORD(v103) = *STACK[0x59E0] ^ __ROR4__(*STACK[0x59E8], 24) ^ __ROR4__(*STACK[0x59F0], 16) ^ __ROR4__(*STACK[0x59F8], 8);
  LODWORD(v139) = *STACK[0x5A00] ^ __ROR4__(*STACK[0x5A08], 24) ^ __ROR4__(*STACK[0x5A10], 8) ^ __ROR4__(*STACK[0x5A18], 16);
  LODWORD(v114) = v138 ^ __ROR4__(*(v99 + 4 * BYTE2(v145)), 8);
  LODWORD(v145) = bswap32(v120);
  LODWORD(v102) = STACK[0x52B8];
  LODWORD(v137) = STACK[0x52CC];
  v146 = STACK[0x5338];
  LODWORD(v115) = STACK[0x52A8];
  v147 = STACK[0x5328];
  LODWORD(STACK[0x3D50]) = ((STACK[0x52A8] & (v145 ^ (2 * (STACK[0x52B8] & v145)))) >> STACK[0x5328]) ^ (((v145 ^ (2 * (STACK[0x52B8] & v145))) & STACK[0x52CC]) << STACK[0x5338]);
  LODWORD(v9) = STACK[0x5264];
  LODWORD(v142) = STACK[0x5284];
  v148 = STACK[0x53E8];
  LODWORD(v119) = STACK[0x5290];
  v149 = STACK[0x53D8];
  LODWORD(STACK[0x3D78]) = ((STACK[0x5290] & (v145 ^ ((STACK[0x5264] & v145) >> 1))) >> STACK[0x53D8]) | ((STACK[0x5284] & (v145 ^ ((STACK[0x5264] & v145) >> 1))) << STACK[0x53E8]);
  LODWORD(v112) = *STACK[0x59D0];
  LODWORD(STACK[0x3488]) = v133;
  LODWORD(v145) = bswap32(v133 ^ __ROR4__(v112, 8));
  LODWORD(v120) = v145 ^ (2 * (v102 & v145));
  LODWORD(v112) = STACK[0x52DC];
  v150 = STACK[0x53F8];
  LODWORD(STACK[0x20B0]) = (((v145 ^ ((STACK[0x52DC] & v145) >> 1)) & v142) << STACK[0x53F8]) + (((v145 ^ ((STACK[0x52DC] & v145) >> 1)) & v119) >> v149);
  LODWORD(v145) = bswap32(v103);
  v151 = v120 & v137;
  v152 = v120 & STACK[0x52C8];
  LODWORD(v120) = STACK[0x52AC];
  LODWORD(v93) = v93 ^ __ROR4__(*(v99 + 4 * BYTE1(v144)), 16);
  LODWORD(v103) = (((v145 ^ (2 * (v102 & v145))) & STACK[0x52AC]) << v146) | (((v145 ^ (2 * (v102 & v145))) & STACK[0x52C8]) >> v147);
  LODWORD(v64) = __ROR4__(*(v99 + 4 * v144), 24);
  LODWORD(v137) = STACK[0x526C];
  v153 = v109 ^ v132;
  LODWORD(v146) = (((v145 ^ ((v9 & v145) >> 1)) & STACK[0x526C]) << v150) ^ (((v145 ^ ((v9 & v145) >> 1)) & v119) >> v149);
  v154 = STACK[0x5320];
  v155 = v151 << STACK[0x5320];
  LODWORD(STACK[0x3490]) = v139;
  LODWORD(v9) = bswap32(v139);
  v156 = v114 ^ LODWORD(STACK[0x3D60]);
  LODWORD(v109) = (((v9 ^ (2 * (v102 & v9))) & v115) >> v147) + (((v9 ^ (2 * (v102 & v9))) & v120) << v154);
  LODWORD(v154) = v9 ^ ((v112 & v9) >> 1);
  v157 = v93 ^ LODWORD(STACK[0x3D68]);
  v158 = v25 ^ v64 ^ LODWORD(STACK[0x5998]);
  v159 = ((v154 & v119) >> v149) ^ ((v154 & v137) << v148);
  LODWORD(v112) = STACK[0x3D58];
  v160 = (LODWORD(STACK[0x3D90]) ^ LODWORD(STACK[0x3D58]));
  STACK[0x3860] = v155;
  LODWORD(v149) = (v152 >> v147) ^ v155;
  LODWORD(v120) = *(v29 + 4 * BYTE1(v160));
  LODWORD(v150) = *(v29 + 4 * BYTE2(v141));
  LODWORD(STACK[0x3D38]) = v149;
  LODWORD(v120) = v149 ^ __ROR4__(v120, 16);
  LODWORD(v64) = __ROR4__(v150, 8);
  LODWORD(v114) = STACK[0x3D30];
  v161 = (LODWORD(STACK[0x3E38]) ^ LODWORD(STACK[0x3D30]));
  STACK[0x2370] = v161;
  v162 = LODWORD(STACK[0x3638]) ^ v161;
  LODWORD(v149) = *(v29 + ((v162 >> 22) & 0x3FC));
  v163 = LODWORD(STACK[0x3D88]) ^ v112;
  LODWORD(v161) = *(v29 + 4 * (LODWORD(STACK[0x3D88]) ^ v112));
  LODWORD(STACK[0x3830]) = v149;
  v164 = v120 ^ v64 ^ v149 ^ __ROR4__(v161, 24);
  v165 = v103 ^ __ROR4__(*(v29 + 4 * BYTE1(v163)), 16) ^ *(v29 + ((v141 >> 22) & 0x3FC)) ^ __ROR4__(*(v29 + 4 * BYTE2(v160)), 8) ^ __ROR4__(*(v29 + 4 * v162), 24);
  LODWORD(v120) = *(v29 + ((v163 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x3D50]) ^ __ROR4__(*(v29 + 4 * BYTE1(v141)), 16) ^ __ROR4__(*(v29 + 4 * BYTE2(v162)), 8);
  STACK[0x3870] = v163;
  LODWORD(v161) = *(v29 + 4 * BYTE2(v163));
  STACK[0x33D0] = v162;
  LODWORD(v149) = *(v29 + 4 * BYTE1(v162));
  LODWORD(v163) = *(v29 + ((v160 >> 22) & 0x3FC));
  HIDWORD(v64) = v161;
  LODWORD(v64) = v161;
  LODWORD(v161) = v64 >> 8;
  LODWORD(STACK[0x366C]) = v161;
  v166 = v120 ^ __ROR4__(*(v29 + 4 * v160), 24);
  STACK[0x3330] = v141;
  v167 = STACK[0x3AD0];
  HIDWORD(v64) = *(STACK[0x3AD0] + 4 * BYTE2(v164));
  LODWORD(v64) = HIDWORD(v64);
  v168 = v161 ^ v109 ^ __ROR4__(v149, 16) ^ v163 ^ __ROR4__(*(v29 + 4 * v141), 24);
  v169 = (v64 >> 16) ^ __ROR4__(*(STACK[0x3AD0] + ((v166 >> 22) & 0x3FC)), 8) ^ __ROR4__(*(STACK[0x3AD0] + 4 * BYTE1(v165)), 24) ^ *(STACK[0x3AD0] + 4 * v168);
  HIDWORD(v64) = *(STACK[0x3AD0] + 4 * BYTE2(v168));
  LODWORD(v64) = HIDWORD(v64);
  LODWORD(v162) = (*(v167 + 4 * BYTE2(v165)) << 16) ^ (*(v167 + ((v164 >> 22) & 0x3FC)) >> 8) ^ HIWORD(*(v167 + 4 * BYTE2(v165))) ^ __ROR4__(*(STACK[0x3AD0] + 4 * BYTE1(v168)), 24) ^ *(STACK[0x3AD0] + 4 * v166);
  LODWORD(v120) = (v64 >> 16) ^ (*(STACK[0x3AD0] + ((v165 >> 22) & 0x3FC)) >> 8);
  LODWORD(v161) = *(STACK[0x3AD0] + 4 * BYTE1(v166));
  STACK[0x3650] = v166;
  LODWORD(v161) = v120 ^ __ROR4__(v161, 24);
  HIDWORD(v64) = *(v167 + 4 * BYTE2(v166));
  LODWORD(v64) = HIDWORD(v64);
  LODWORD(v168) = (v64 >> 16) ^ (*(v167 + ((v168 >> 22) & 0x3FC)) >> 8);
  LODWORD(v120) = *(v99 + ((v157 >> 22) & 0x3FC));
  LODWORD(v149) = *(v99 + 4 * BYTE2(v153));
  STACK[0x3820] = v159;
  v170 = v120 ^ v159 ^ __ROR4__(v149, 8) ^ __ROR4__(*(v99 + 4 * BYTE1(v156)), 16) ^ __ROR4__(*(v99 + 4 * v158), 24);
  LODWORD(v120) = *(v99 + ((v158 >> 22) & 0x3FC)) ^ v146;
  LODWORD(v149) = *(v99 + 4 * BYTE2(v156));
  LODWORD(v163) = *(v99 + 4 * BYTE1(v153));
  LODWORD(v146) = *(v99 + 4 * BYTE2(v157));
  LODWORD(STACK[0x3310]) = v163;
  LODWORD(v120) = v120 ^ __ROR4__(v163, 16) ^ __ROR4__(v146, 8);
  LODWORD(v149) = LODWORD(STACK[0x3D78]) ^ __ROR4__(v149, 8) ^ *(v99 + ((v153 >> 22) & 0x3FC)) ^ __ROR4__(*(v99 + 4 * BYTE1(v158)), 16);
  LODWORD(v166) = v161 ^ *(v167 + 4 * v164);
  LODWORD(v163) = *(v167 + 4 * BYTE1(v164));
  LODWORD(v161) = *(v99 + ((v156 >> 22) & 0x3FC)) ^ LODWORD(STACK[0x20B0]) ^ __ROR4__(*(v99 + 4 * BYTE2(v158)), 8) ^ __ROR4__(*(v99 + 4 * BYTE1(v157)), 16);
  LODWORD(STACK[0x3318]) = v163;
  LODWORD(v93) = v168 ^ __ROR4__(v163, 24) ^ *(v167 + 4 * v165);
  LODWORD(v146) = *(v99 + 4 * v157);
  STACK[0x3320] = v153;
  v171 = v161 ^ __ROR4__(*(v99 + 4 * v153), 24);
  LODWORD(STACK[0x3308]) = v146;
  v172 = v149 ^ __ROR4__(v146, 24);
  v173 = STACK[0x3AB0];
  HIDWORD(v64) = *(STACK[0x3AB0] + 4 * BYTE2(v171));
  LODWORD(v64) = HIDWORD(v64);
  LODWORD(v161) = (v64 >> 16) ^ __ROR4__(*(STACK[0x3AB0] + ((v172 >> 22) & 0x3FC)), 8);
  HIDWORD(v64) = *(v99 + 4 * v156);
  LODWORD(v64) = HIDWORD(v64);
  LODWORD(v168) = v64 >> 24;
  LODWORD(STACK[0x1B5C]) = v168;
  v174 = v120 ^ v168;
  v175 = v161 ^ *(v173 + 4 * v170) ^ (*(v173 + 4 * BYTE1(v174)) << 8);
  v176 = *(v173 + 4 * BYTE1(v170));
  LODWORD(v161) = *(v173 + ((v171 >> 22) & 0x3FC));
  HIDWORD(v64) = *(v173 + 4 * BYTE2(v174));
  LODWORD(v64) = HIDWORD(v64);
  v177 = (v64 >> 16);
  STACK[0x33A8] = v176;
  STACK[0x3CC8] = v177;
  v178 = v177 ^ (v176 << 8) ^ __ROR4__(v161, 8) ^ *(v173 + 4 * v172);
  HIDWORD(v64) = *(v173 + 4 * BYTE2(v170));
  LODWORD(v64) = HIDWORD(v64);
  LODWORD(v161) = (v64 >> 16) ^ __ROR4__(*(v173 + ((v174 >> 22) & 0x3FC)), 8);
  HIDWORD(v64) = *(v173 + 4 * BYTE2(v172));
  LODWORD(v64) = HIDWORD(v64);
  v179 = v161 ^ __ROR4__(*(v173 + 4 * BYTE1(v172)), 24) ^ *(v173 + 4 * v171);
  v180 = STACK[0x3A70];
  LODWORD(v176) = (v64 >> 16) ^ __ROR4__(*(v173 + ((v170 >> 22) & 0x3FC)), 8) ^ *(v173 + 4 * v174);
  LODWORD(v174) = (v169 & 0xFF00FF) + (*(STACK[0x3A70] + BYTE1(v175)) << 8);
  v181 = (v162 & 0xFF00FF) + (*(v180 + BYTE1(v178)) << 8) + (*(v180 + (v178 >> 24)) << 24);
  LODWORD(v178) = (v166 & 0xFF00FF) + (*(STACK[0x3A70] + BYTE1(v179)) << 8);
  STACK[0x33C8] = v171;
  v182 = v176 ^ __ROR4__(*(v173 + 4 * BYTE1(v171)), 24);
  LODWORD(v176) = *(v180 + BYTE1(v182));
  STACK[0x2100] = v179;
  v183 = STACK[0x3A88];
  v184 = v178 + (*(v180 + (v179 >> 24)) << 24);
  v185 = (v93 & 0xFF00FF) + (v176 << 8);
  LODWORD(v176) = *(STACK[0x3A88] + ((v184 >> 22) & 0x3FC)) ^ __ROR4__(*(STACK[0x3A88] + 4 * BYTE2(v181)), 8);
  v186 = *(v180 + (v175 >> 24));
  STACK[0x35D0] = v186;
  v187 = (v174 + (v186 << 24));
  LODWORD(v182) = *(v180 + (v182 >> 24));
  LODWORD(v109) = *(v183 + 4 * BYTE1(v187));
  LODWORD(STACK[0x3388]) = v93;
  LODWORD(v186) = *(v183 + 4 * v93);
  HIDWORD(v64) = v109;
  LODWORD(v64) = v109;
  v188 = (v64 >> 16);
  STACK[0x3840] = v188;
  v189 = v176 ^ v188 ^ __ROR4__(v186, 24);
  STACK[0x3D88] = v185;
  v190 = (v185 + (v182 << 24));
  LODWORD(v182) = *(v183 + ((v181 >> 22) & 0x3FC)) ^ __ROR4__(*(v183 + 4 * BYTE1(v190)), 16) ^ __ROR4__(*(v183 + 4 * BYTE2(v187)), 8);
  LODWORD(v188) = *(v183 + ((v190 >> 22) & 0x3FC));
  STACK[0x3E38] = v169;
  LODWORD(v176) = *(v183 + 4 * v169);
  LODWORD(v175) = *(v183 + 4 * BYTE2(v184));
  LODWORD(v186) = *(v183 + 4 * BYTE1(v181));
  LODWORD(STACK[0x3888]) = v188;
  v191 = __PAIR64__(v175, __ROR4__(v176, 24));
  LODWORD(v176) = v188 ^ v191;
  LODWORD(v191) = v175;
  LODWORD(v188) = v191 >> 8;
  LODWORD(STACK[0x3D90]) = v188;
  LODWORD(v187) = *(v183 + ((v187 >> 22) & 0x3FC)) ^ __ROR4__(*(v183 + 4 * BYTE2(v190)), 8) ^ __ROR4__(*(v183 + 4 * BYTE1(v184)), 16);
  LODWORD(v184) = v182 ^ __ROR4__(*(v183 + 4 * v166), 24);
  LODWORD(v182) = v187 ^ __ROR4__(*(v183 + 4 * v162), 24);
  v192 = v184 ^ LODWORD(STACK[0x5A28]);
  v193 = v182 ^ LODWORD(STACK[0x5A24]);
  v194 = v176 ^ v188 ^ __ROR4__(v186, 16) ^ LODWORD(STACK[0x5A34]);
  v195 = (*(v183 + ((v192 >> 22) & 0x3FC)) ^ __ROR4__(*(v183 + 4 * BYTE2(v193)), 8));
  LODWORD(v184) = STACK[0x5A30];
  STACK[0x3D78] = v189;
  v196 = v184 ^ v189;
  v197 = *(v183 + 4 * BYTE1(v194));
  LODWORD(v176) = *(v183 + ((v196 >> 22) & 0x3FC)) ^ __ROR4__(*(v183 + 4 * BYTE2(v192)), 8);
  LODWORD(v186) = *(v183 + 4 * v196);
  STACK[0x3D68] = v195;
  STACK[0x38B0] = v197;
  v198 = v195 ^ __ROR4__(v197, 16) ^ __ROR4__(v186, 24);
  LODWORD(v166) = v176 ^ __ROR4__(*(v183 + 4 * BYTE1(v193)), 16) ^ __ROR4__(*(v183 + 4 * v194), 24);
  v199 = *(v183 + 4 * BYTE2(v196));
  LODWORD(v176) = *(v183 + ((v194 >> 22) & 0x3FC));
  LODWORD(v186) = *(v183 + 4 * BYTE1(v192));
  STACK[0x3890] = v199;
  v200 = v176 ^ __ROR4__(v199, 8) ^ __ROR4__(v186, 16) ^ (*(v183 + 4 * v193) << 8) ^ HIBYTE(*(v183 + 4 * v193));
  LODWORD(v176) = *(v183 + 4 * BYTE2(v194));
  LODWORD(v193) = *(v183 + ((v193 >> 22) & 0x3FC));
  LODWORD(v196) = *(v183 + 4 * BYTE1(v196));
  LODWORD(v192) = *(v183 + 4 * v192);
  *(STACK[0x3D80] - 3422) = v166;
  v201 = STACK[0x3D70];
  v201[1411] = BYTE1(v200);
  v201[1401] = BYTE3(v198);
  LODWORD(v196) = v193 ^ __ROR4__(v176, 8) ^ __ROR4__(v196, 16);
  LODWORD(v191) = __ROR4__(v192, 24);
  v202 = v196 ^ v191;
  v201[1399] = BYTE1(v202);
  v201[1397] = (v196 ^ v191) >> 24;
  v201[1405] = BYTE3(v166);
  v201[1406] = BYTE2(v166);
  v201[1407] = BYTE1(v166);
  v201[1409] = BYTE3(v200);
  STACK[0x3D40] = v198 >> 8;
  v201[1403] = BYTE1(v198);
  v201[1400] = v196 ^ v191;
  v201[1412] = v200;
  v201[1404] = v198;
  STACK[0x2198] = v198 >> 16;
  v201[1402] = BYTE2(v198);
  STACK[0x3D50] = v200 >> 16;
  v201[1410] = BYTE2(v200);
  STACK[0x3D60] = v202 >> 16;
  v201[1398] = BYTE2(v202);
  LODWORD(v196) = STACK[0x3D98] > 0x3F;
  LODWORD(STACK[0x268C]) = v112 ^ v166;
  LODWORD(STACK[0x2C20]) = v114 ^ v198;
  return (*(v1 + 8 * ((106 * v196) ^ LODWORD(STACK[0x3E18]))))();
}

uint64_t sub_100D89E84()
{
  v2 = *(v0 + 8 * (v1 + 204));
  LODWORD(STACK[0x3D40]) = 128;
  LODWORD(STACK[0x3D48]) = STACK[0x35A0];
  return v2(LODWORD(STACK[0x3D70]));
}

uint64_t sub_100D8A0C0@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W5>, unsigned int a4@<W7>, int a5@<W8>)
{
  LODWORD(STACK[0x3BC0]) = LODWORD(STACK[0x3CA0]) ^ __ROR4__(STACK[0x3BC0], 8);
  v19 = v8 ^ STACK[0x3CC0];
  LODWORD(STACK[0x3BB8]) ^= LODWORD(STACK[0x3628]) ^ LODWORD(STACK[0x38C0]) ^ __ROR4__(STACK[0x38A0], 16);
  LODWORD(STACK[0x3BB0]) ^= __ROR4__(STACK[0x3878], 8);
  LODWORD(STACK[0x3CC0]) = v5 ^ LODWORD(STACK[0x3CA8]) ^ LODWORD(STACK[0x3620]);
  STACK[0x3878] = STACK[0x3900] ^ v11 ^ v9;
  v20 = LODWORD(STACK[0x38D8]) ^ v6;
  STACK[0x38A0] = LODWORD(STACK[0x38D0]) ^ LODWORD(STACK[0x3630]) ^ v16;
  STACK[0x38C0] = v13 ^ a3 ^ v10;
  STACK[0x38D0] = LODWORD(STACK[0x3638]) ^ STACK[0x3828];
  v21 = LODWORD(STACK[0x38C8]) ^ v15;
  STACK[0x3900] = LODWORD(STACK[0x366C]) ^ v14 ^ a1;
  v22 = a2 ^ a5;
  LODWORD(STACK[0x1744]) = LOBYTE(STACK[0x50F5]) - LODWORD(STACK[0x3D40]);
  LODWORD(STACK[0x177C]) = HIDWORD(STACK[0x3CD0]) ^ LOBYTE(STACK[0x512A]) ^ LOBYTE(STACK[0x50BD]) ^ 0x7B;
  v23 = STACK[0x3D98];
  v24 = STACK[0x3D58];
  v25 = LODWORD(STACK[0x6734]) ^ (STACK[0x3D58] + STACK[0x3D98]);
  v26 = STACK[0x3BF8];
  LODWORD(STACK[0x3CD0]) = LODWORD(STACK[0x3BF8]) ^ LODWORD(STACK[0x3CC8]) ^ LODWORD(STACK[0x6748]);
  v27 = STACK[0x3C80];
  LODWORD(STACK[0x3CA0]) = (STACK[0x3C80] + STACK[0x3D78]) ^ LODWORD(STACK[0x3CB8]) ^ LODWORD(STACK[0x6760]);
  LODWORD(STACK[0x3CA8]) = v23 ^ LODWORD(STACK[0x3CB0]) ^ STACK[0x3D88] ^ LODWORD(STACK[0x3640]);
  LODWORD(STACK[0x3CB0]) = v19 ^ LODWORD(STACK[0x678C]);
  LODWORD(STACK[0x3CB8]) = STACK[0x3D90] ^ LODWORD(STACK[0x3960]) ^ v7 ^ LODWORD(STACK[0x38F8]);
  LODWORD(STACK[0x38F8]) = LODWORD(STACK[0x37D8]) ^ v17 ^ LODWORD(STACK[0x67CC]);
  v28 = LODWORD(STACK[0x3AA0]) ^ 0xA6EF0179 ^ (STACK[0x3D70] + v24) ^ LODWORD(STACK[0x6758]);
  LODWORD(v23) = STACK[0x52BC];
  LODWORD(STACK[0x38D8]) = LODWORD(STACK[0x3C98]) ^ 0xA6EF0179 ^ LODWORD(STACK[0x3C20]) ^ LODWORD(STACK[0x6750]) ^ LODWORD(STACK[0x52BC]);
  LODWORD(STACK[0x3C98]) = v28 ^ v23;
  LODWORD(STACK[0x3CC8]) = v25 ^ LODWORD(STACK[0x7008]);
  LODWORD(STACK[0x38C8]) = LODWORD(STACK[0x7060]) ^ LODWORD(STACK[0x37F8]);
  STACK[0x3D40] = STACK[0x38B0] ^ LODWORD(STACK[0x3C60]) ^ LODWORD(STACK[0x67E4]);
  STACK[0x37D8] = LODWORD(STACK[0x3888]) ^ v18 ^ LODWORD(STACK[0x36C0]);
  STACK[0x37F8] = LODWORD(STACK[0x3890]) ^ v26 ^ LODWORD(STACK[0x36D0]);
  STACK[0x3960] = (LODWORD(STACK[0x3880]) ^ LODWORD(STACK[0x3C78])) ^ LODWORD(STACK[0x36C8]);
  STACK[0x3AA0] = (LODWORD(STACK[0x3870]) ^ LODWORD(STACK[0x3C08])) ^ LODWORD(STACK[0x36A0]);
  STACK[0x3828] = (LODWORD(STACK[0x3830]) ^ LODWORD(STACK[0x3C00])) ^ LODWORD(STACK[0x36B8]);
  STACK[0x3830] = v7 ^ v27 ^ v20;
  STACK[0x3870] = LODWORD(STACK[0x37F0]) ^ v17 ^ LODWORD(STACK[0x36B0]);
  STACK[0x3880] = (LODWORD(STACK[0x37C8]) ^ LODWORD(STACK[0x3C10])) ^ LODWORD(STACK[0x3688]);
  STACK[0x3888] = (LODWORD(STACK[0x37A0]) ^ LODWORD(STACK[0x3C68])) ^ LODWORD(STACK[0x3658]);
  STACK[0x3890] = v21 ^ (LODWORD(STACK[0x3650]) ^ LODWORD(STACK[0x3CF0]));
  STACK[0x38B8] = bswap32(STACK[0x36D8]) ^ v22;
  STACK[0x38B0] = LODWORD(STACK[0x36F0]) ^ bswap32(STACK[0x36E8]);
  STACK[0x3080] = STACK[0x3E18] >> 8;
  v29 = STACK[0x3D68];
  v30 = *(v12 + 8 * ((6304 * (a4 < a4 + 444903844)) ^ (a4 - 1528133422)));
  LODWORD(STACK[0x37F0]) = bswap32(STACK[0x36E0]);
  LODWORD(STACK[0x37C8]) = STACK[0x3E38] | v29;
  return v30();
}

uint64_t sub_100D8A858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = a6 == a4;
  v13 = a4 + 1;
  v14 = v12;
  return (*(v11 + 8 * (((((a8 ^ v10) * v8) ^ v9) * v14) ^ a8)))(a1, a2, a3, v13);
}

uint64_t sub_100D8A8CC@<X0>(unsigned int a1@<W8>)
{
  v4 = a1 >= LODWORD(STACK[0x3E18]);
  *(STACK[0x3B38] + 1997) = bswap32(v2);
  v5 = v4;
  return (*(v3 + 8 * ((v5 * ((v1 + 119980070) & 0xF8D93FFF ^ (v1 - 1446492748) & 0x5637EEF7 ^ 0x57BC)) | v1)))();
}

uint64_t sub_100D8AA20()
{
  v4 = *(v2 + 8 * (((LODWORD(STACK[0x3D20]) == ((v1 - 16835) | 0x4103) - 18208) * ((v1 - 2971) ^ 0x3CA5)) ^ (v1 + 9609)));
  LODWORD(STACK[0x3948]) = 2;
  STACK[0x3998] = STACK[0x3D60];
  STACK[0x39E8] = STACK[0x3D88];
  LODWORD(STACK[0x39A0]) = STACK[0x3E40];
  LODWORD(STACK[0x39A8]) = STACK[0x3B18];
  LODWORD(STACK[0x38B8]) = STACK[0x2010];
  STACK[0x3540] = v3;
  LODWORD(STACK[0x3710]) = STACK[0x3B08];
  LODWORD(STACK[0x2424]) = STACK[0x3D28];
  LODWORD(STACK[0x31E8]) = STACK[0x3AE8];
  LODWORD(STACK[0x351C]) = STACK[0x3AD8];
  LODWORD(STACK[0x3988]) = STACK[0x3D90];
  LODWORD(STACK[0x2500]) = STACK[0x3AF0];
  LODWORD(STACK[0x3810]) = STACK[0x3B00];
  STACK[0x39C0] = LODWORD(STACK[0x3958]);
  STACK[0x3318] = LODWORD(STACK[0x3D10]);
  LODWORD(STACK[0x3980]) = v0;
  return v4();
}

uint64_t sub_100D8AAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  LODWORD(STACK[0x3D98]) = 0;
  STACK[0x3B08] = a6 >> ((v6 - 24) & 0xFE ^ 0xBE);
  v8 = *(v7 + 8 * v6);
  LODWORD(STACK[0x3D78]) = 1;
  LODWORD(STACK[0x3D70]) = 1;
  LODWORD(STACK[0x3E18]) = 1;
  LODWORD(STACK[0x3D88]) = 1;
  LODWORD(STACK[0x3D50]) = 1;
  LODWORD(STACK[0x3D80]) = 1;
  LODWORD(STACK[0x117C]) = a6;
  return v8();
}

uint64_t sub_100D8AB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (v6 + 16236) | 0x290;
  LODWORD(STACK[0x3B08]) = v8;
  v9 = LODWORD(STACK[0x2C20]) == v8 - 21094;
  if (LODWORD(STACK[0x2C20]) == v8 - 21094)
  {
    v10 = STACK[0x3E0];
  }

  else
  {
    v10 = STACK[0x34C0];
  }

  v11 = STACK[0x4A0];
  if (LODWORD(STACK[0x2C20]) == v8 - 21094)
  {
    v11 = STACK[0x3400];
  }

  STACK[0x3AD8] = v11;
  v12 = STACK[0x37B8];
  v13 = STACK[0x32E8];
  if (v9)
  {
    LODWORD(v12) = STACK[0x32E8];
  }

  LODWORD(STACK[0x3298]) = v12;
  v14 = STACK[0x3E18];
  if (v9)
  {
    v15 = v13;
  }

  else
  {
    v15 = STACK[0x3E18];
  }

  LODWORD(STACK[0x3B00]) = v15;
  if (v9)
  {
    v16 = 57;
  }

  else
  {
    v16 = 58;
  }

  LODWORD(STACK[0x3980]) = v16;
  if (v9)
  {
    v17 = 1;
  }

  else
  {
    v17 = STACK[0x3930];
  }

  LODWORD(STACK[0x3290]) = v17;
  v18 = STACK[0x21F4];
  if (v9)
  {
    v18 = v14;
  }

  LODWORD(STACK[0x3AE0]) = v18;
  v19 = *(v7 + 8 * v6);
  STACK[0x32E0] = v10;
  STACK[0x3D50] = v10;
  STACK[0x32D8] = STACK[0x2618];
  v20 = STACK[0x3318];
  LODWORD(STACK[0x3278]) = STACK[0x3318];
  LODWORD(STACK[0x3270]) = STACK[0x2B20];
  LODWORD(STACK[0x39A8]) = STACK[0x1AA8];
  LODWORD(STACK[0x3280]) = STACK[0x1954];
  LODWORD(STACK[0x3258]) = STACK[0x2424];
  LODWORD(STACK[0x32D0]) = STACK[0x3830];
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  LODWORD(STACK[0x3288]) = STACK[0x1A78];
  LODWORD(STACK[0x3AE8]) = STACK[0x2500];
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x3260]) = STACK[0x3810];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  return v19(a1, a2, a3, a4, a5, a6, v20);
}

uint64_t sub_100D8AC64()
{
  v3 = STACK[0x810];
  *(v1 + 4 * (((((LODWORD(STACK[0x810]) ^ 0x476A6A8B) - 1585839711) ^ LODWORD(STACK[0x810]) ^ ((LODWORD(STACK[0x810]) ^ 0x6CAACC65) - 1967478961) ^ ((LODWORD(STACK[0x810]) ^ 0xFFFFDF9F) + 435139765) ^ ((LODWORD(STACK[0x810]) ^ 0xCDD0EDA5) + 734037647)) >> 2) ^ 0x67BE535)) = v0;
  LODWORD(STACK[0x810]) = v3 + 4;
  v4 = (~(v3 - 435131600) + 64) >> 32;
  return (*(v2 + 8 * (((16 * v4) | (v4 << 7)) ^ 0x1C3F)))(19298, LODWORD(STACK[0x6CC]), 207, 480320282, 2391196372, 2863815762, 780);
}

uint64_t sub_100D8AE4C()
{
  LODWORD(STACK[0x4310]) = STACK[0x430C];
  LODWORD(STACK[0x4314]) = STACK[0x4308];
  LODWORD(STACK[0x4318]) = STACK[0x4304];
  LODWORD(STACK[0x431C]) = STACK[0x4300];
  v1 = STACK[0x42F8];
  STACK[0x4320] = STACK[0x42F8];
  v2 = STACK[0x42F4];
  LODWORD(STACK[0x432C]) = STACK[0x42F4];
  LODWORD(STACK[0x4330]) = (v2 + 805412060) & 0xCFFE77FF;
  LODWORD(STACK[0x4334]) = v2 + 8107;
  v3 = STACK[0x37D0] + v1;
  STACK[0x4338] = v3;
  v4 = *(v0 + 8 * (v2 ^ 0x29B2));
  STACK[0x3F18] = v3;
  STACK[0x3F08] = v4;
  return (*(v0 + 8 * (v2 + 10340)))();
}

uint64_t sub_100D8AF8C@<X0>(unsigned int a1@<W8>)
{
  LODWORD(STACK[0x3D28]) = 0;
  v3 = STACK[0x3B38];
  v4 = STACK[0x3D30];
  v3[1892] = STACK[0x3D30];
  v5 = v4 >> ((v1 + 111) ^ 0x79);
  v3[1891] = BYTE1(v4);
  if ((v5 + 101) | v5)
  {
    v6 = a1 >= LODWORD(STACK[0x3E18]);
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  STACK[0x36E0] = HIWORD(v4);
  v3[1890] = BYTE2(v4);
  LODWORD(STACK[0x3988]) = v5;
  v3[1889] = v5;
  return (*(v2 + 8 * ((v7 * ((2 * v1) ^ 0xD5E0)) | v1)))();
}

uint64_t sub_100D8B048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W8>)
{
  LODWORD(STACK[0x3290]) = 0;
  LODWORD(STACK[0x3298]) = 0;
  LODWORD(STACK[0x3D68]) = 0;
  LODWORD(STACK[0x3AD8]) = 0;
  LODWORD(STACK[0x3D50]) = 0;
  *(STACK[0x1AB8] + 3440) |= 0x80000000;
  *STACK[0x3968] |= ((a6 - 7585) | 0x6000) - 27362;
  v7 = *(v6 + 8 * a6);
  LODWORD(STACK[0x3D60]) = 8;
  STACK[0x3790] = STACK[0x3980];
  LODWORD(STACK[0x1698]) = STACK[0x3700];
  LODWORD(STACK[0x1C28]) = STACK[0x32E8];
  v8 = LODWORD(STACK[0x3548]);
  v9 = LODWORD(STACK[0x3830]);
  LODWORD(STACK[0x3E18]) = STACK[0x31D0];
  LODWORD(STACK[0x1C30]) = STACK[0x32E0];
  LODWORD(STACK[0x3268]) = STACK[0x1A78];
  LODWORD(STACK[0x1BA0]) = STACK[0x2B90];
  v10 = LODWORD(STACK[0x3438]);
  STACK[0x33C0] = v10;
  LODWORD(STACK[0x1AD0]) = v10;
  LODWORD(STACK[0x36B8]) = v10;
  LODWORD(STACK[0x1B50]) = STACK[0x221C];
  LODWORD(STACK[0x1C90]) = STACK[0x32D8];
  LODWORD(STACK[0x3310]) = STACK[0x35FC];
  LODWORD(STACK[0x3308]) = STACK[0x3970];
  LODWORD(STACK[0x3300]) = STACK[0x35F8];
  return v7(a1, a2, v9, a3, a4, a5, v8);
}

uint64_t sub_100D8B140()
{
  LODWORD(STACK[0x3D78]) = 0;
  LODWORD(STACK[0x3850]) = 0;
  LODWORD(STACK[0x3840]) = 0;
  LODWORD(STACK[0x32A8]) = 0;
  LODWORD(STACK[0x3248]) = 0;
  LODWORD(STACK[0x2B98]) = 0;
  LODWORD(STACK[0x2BA0]) = 0;
  LODWORD(STACK[0x3250]) = 0;
  LODWORD(STACK[0x2BA8]) = 0;
  LODWORD(STACK[0x32B0]) = 0;
  LODWORD(STACK[0x3258]) = 0;
  LODWORD(STACK[0x2BD0]) = 0;
  LODWORD(STACK[0x2BD8]) = 0;
  LODWORD(STACK[0x3260]) = 0;
  LODWORD(STACK[0x2BE0]) = 0;
  LODWORD(STACK[0x2BE8]) = 0;
  LODWORD(STACK[0x3848]) = 0;
  LODWORD(STACK[0x32B8]) = 0;
  LODWORD(STACK[0x3270]) = 0;
  LODWORD(STACK[0x2BF0]) = 0;
  LODWORD(STACK[0x2BF8]) = 0;
  LODWORD(STACK[0x3278]) = 0;
  LODWORD(STACK[0x2C00]) = 0;
  LODWORD(STACK[0x2C08]) = 0;
  LODWORD(STACK[0x3818]) = 0;
  LODWORD(STACK[0x3280]) = 0;
  LODWORD(STACK[0x2C10]) = 0;
  LODWORD(STACK[0x2F60]) = 0;
  LODWORD(STACK[0x3288]) = 0;
  LODWORD(STACK[0x3228]) = 0;
  LODWORD(STACK[0x3230]) = 0;
  LODWORD(STACK[0x2BC8]) = 0;
  v3 = (v0 - 3636) | 0x500E;
  LODWORD(STACK[0x3D68]) = v3;
  v4 = *(v1 + 8 * (((LODWORD(STACK[0x2C20]) != (v3 ^ 0x52AD)) * (v0 ^ 0x1139)) ^ v0));
  v5 = v0 ^ 0x425Au;
  LODWORD(STACK[0x3B08]) = STACK[0x3710];
  v6 = STACK[0x3540];
  LODWORD(STACK[0x3E18]) = STACK[0x3540];
  LODWORD(STACK[0x3D40]) = v6;
  LODWORD(STACK[0x3808]) = v6;
  LODWORD(STACK[0x32D8]) = v6;
  LODWORD(STACK[0x3AF0]) = v2;
  LODWORD(STACK[0x3860]) = v2;
  LODWORD(v6) = STACK[0x3810];
  LODWORD(STACK[0x3B00]) = STACK[0x3810];
  LODWORD(STACK[0x3D80]) = v6;
  LODWORD(STACK[0x2C20]) = 50;
  LODWORD(STACK[0x3AD8]) = 32;
  STACK[0x3D58] = STACK[0x2618];
  STACK[0x3D50] = STACK[0x2260];
  LODWORD(STACK[0x3B18]) = STACK[0x39A8];
  LODWORD(STACK[0x3D28]) = STACK[0x2424];
  LODWORD(STACK[0x3AE8]) = STACK[0x31E8];
  LODWORD(STACK[0x3D10]) = STACK[0x3318];
  LODWORD(STACK[0x3310]) = STACK[0x3774];
  LODWORD(STACK[0x3308]) = STACK[0x36A8];
  LODWORD(STACK[0x3300]) = STACK[0x3DD8];
  LODWORD(STACK[0x3820]) = 1;
  LODWORD(STACK[0x3290]) = 1;
  LODWORD(STACK[0x3830]) = 1;
  LODWORD(STACK[0x3298]) = 1;
  LODWORD(STACK[0x32A0]) = 1;
  LODWORD(STACK[0x39F0]) = STACK[0x3AE0];
  LODWORD(STACK[0x32E0]) = STACK[0x3688];
  LODWORD(STACK[0x3A28]) = STACK[0x1188];
  return v4(v5);
}

uint64_t sub_100D8B5D4(uint64_t a1)
{
  STACK[0x770] = v4;
  STACK[0x790] = v3;
  return (*(v2 + 8 * (((a1 == 0) * (v5 - v1 - 2893)) ^ (v5 - 503364552))))();
}

uint64_t sub_100D8B750@<X0>(int a1@<W5>, int a2@<W8>)
{
  LODWORD(STACK[0x36C0]) = 0;
  v5 = STACK[0x39E8] ^ a2 ^ LODWORD(STACK[0x3980]);
  v6 = STACK[0x3D78] ^ STACK[0x3998];
  LODWORD(STACK[0x2B18]) = STACK[0x39A0] ^ STACK[0x39A8];
  LODWORD(STACK[0x2B28]) = STACK[0x3960] ^ STACK[0x38C8];
  LODWORD(STACK[0x2B20]) = STACK[0x3878] | STACK[0x3700];
  v7 = STACK[0x36F0];
  v8 = STACK[0x3D70];
  if (STACK[0x36F0])
  {
    v8 = STACK[0x3CC8];
  }

  v9 = STACK[0x3D20];
  if (v7)
  {
    v9 = STACK[0x3D38];
  }

  v10 = STACK[0x2AF0];
  if (v7)
  {
    v10 = STACK[0x2AE8];
    v11 = STACK[0x3AE8];
  }

  else
  {
    v11 = STACK[0x3B00];
  }

  if (v7)
  {
    v12 = STACK[0x3CE8];
  }

  else
  {
    v12 = STACK[0x3D28];
  }

  if (v7)
  {
    v13 = v5;
  }

  else
  {
    v13 = STACK[0x3CF0];
  }

  if (v7)
  {
    v5 = STACK[0x3D28];
  }

  LODWORD(STACK[0x2B10]) = a1;
  LODWORD(STACK[0x3D78]) = (((a1 + 9304) | 0xE07) - 1566187643) ^ v7;
  v14 = (v7 & 2) == 0;
  v15 = STACK[0x2AB8];
  if ((v7 & 2) != 0)
  {
    v16 = STACK[0x2AB8];
  }

  else
  {
    v16 = v9;
  }

  LODWORD(STACK[0x3D20]) = v16;
  if ((v7 & 2) != 0)
  {
    v17 = v9;
  }

  else
  {
    v17 = v15;
  }

  LODWORD(STACK[0x3CF0]) = v17;
  if ((v7 & 2) != 0)
  {
    v18 = STACK[0x2AC8];
  }

  else
  {
    v18 = STACK[0x2AD8];
  }

  LODWORD(STACK[0x3D28]) = v18;
  if ((v7 & 2) != 0)
  {
    v19 = STACK[0x2AD0];
  }

  else
  {
    v19 = STACK[0x2AC0];
  }

  LODWORD(STACK[0x2AC8]) = v19;
  v20 = STACK[0x2AE0];
  if ((v7 & 2) != 0)
  {
    v21 = v8;
  }

  else
  {
    v21 = STACK[0x2AE0];
  }

  LODWORD(STACK[0x2AF0]) = v21;
  if ((v7 & 2) != 0)
  {
    v22 = v20;
  }

  else
  {
    v22 = v8;
  }

  if ((v7 & 2) != 0)
  {
    v23 = STACK[0x3D68];
  }

  else
  {
    v23 = STACK[0x3B20];
  }

  LODWORD(STACK[0x2AD8]) = v23;
  if (v14)
  {
    v24 = STACK[0x3B18];
  }

  else
  {
    v24 = STACK[0x3D60];
  }

  LODWORD(STACK[0x2AB8]) = v24;
  v25 = STACK[0x3940];
  v26 = STACK[0x38B0];
  if (v14)
  {
    v27 = STACK[0x3940];
  }

  else
  {
    v27 = STACK[0x38B0];
  }

  LODWORD(STACK[0x2A90]) = v27;
  if (v14)
  {
    v28 = v26;
  }

  else
  {
    v28 = v25;
  }

  LODWORD(STACK[0x2AA0]) = v28;
  if (v14)
  {
    v29 = STACK[0x3AF0];
  }

  else
  {
    v29 = STACK[0x3AE0];
  }

  LODWORD(STACK[0x183C]) = v29;
  if (v14)
  {
    v30 = STACK[0x3B08];
  }

  else
  {
    v30 = STACK[0x3CD0];
  }

  LODWORD(STACK[0x2AB0]) = v30;
  if (v14)
  {
    v31 = v5;
  }

  else
  {
    v31 = v2;
  }

  LODWORD(STACK[0x2AA8]) = v31;
  if (v14)
  {
    v32 = v2;
  }

  else
  {
    v32 = v5;
  }

  LODWORD(STACK[0x2AE0]) = v32;
  v33 = STACK[0x3858];
  if (v14)
  {
    v33 = STACK[0x2B00];
  }

  LODWORD(STACK[0x36F0]) = v33;
  if (v14)
  {
    v34 = v4;
  }

  else
  {
    v34 = STACK[0x36E0];
  }

  LODWORD(STACK[0x2AE8]) = v34;
  if (v14)
  {
    v35 = v12;
  }

  else
  {
    v35 = v13;
  }

  LODWORD(STACK[0x2AC0]) = v35;
  if (v14)
  {
    v36 = v13;
  }

  else
  {
    v36 = v12;
  }

  LODWORD(STACK[0x2AD0]) = v36;
  v37 = STACK[0x36F8];
  v38 = STACK[0x2AF8];
  if (v14)
  {
    v39 = STACK[0x2AF8];
  }

  else
  {
    v39 = STACK[0x36F8];
  }

  LODWORD(STACK[0x36E0]) = v39;
  if (v14)
  {
    v40 = v37;
  }

  else
  {
    v40 = v38;
  }

  LODWORD(STACK[0x36E8]) = v40;
  if (v14)
  {
    v41 = STACK[0x36B8];
  }

  else
  {
    v41 = STACK[0x38B8];
  }

  LODWORD(STACK[0x2A98]) = v41;
  if (v14)
  {
    v42 = STACK[0x1954];
  }

  else
  {
    v42 = STACK[0x2B08];
  }

  LODWORD(STACK[0x1954]) = v42;
  v43 = STACK[0x918];
  if (v14)
  {
    v43 = STACK[0x908];
  }

  LODWORD(STACK[0x36F8]) = v43;
  v44 = STACK[0x910];
  if (!v14)
  {
    v44 = STACK[0x900];
  }

  LODWORD(STACK[0x3700]) = v44;
  if (v14)
  {
    v45 = v10;
  }

  else
  {
    v45 = v11;
  }

  LODWORD(STACK[0x2B08]) = v45;
  if (v14)
  {
    v46 = v11;
  }

  else
  {
    v46 = v10;
  }

  LODWORD(STACK[0x2B00]) = v46;
  v47 = v17 ^ LODWORD(STACK[0x3D30]) ^ v18 ^ v16;
  v48 = STACK[0x38D8];
  LODWORD(STACK[0x38C8]) = v21 ^ LODWORD(STACK[0x38D8]);
  v49 = STACK[0x3880];
  v50 = LODWORD(STACK[0x3750]) ^ LODWORD(STACK[0x3880]);
  LODWORD(STACK[0x3AE8]) = v36 ^ v48;
  LODWORD(STACK[0x38B8]) = v50;
  v51 = v47 ^ v21 ^ v48 ^ v36 ^ v48 ^ v50;
  v52 = LODWORD(STACK[0x3788]) ^ v49;
  LODWORD(STACK[0x39F0]) = v24 ^ v48;
  LODWORD(STACK[0x38B0]) = v22 ^ v48;
  LODWORD(STACK[0x3CE8]) = v52;
  v53 = v22 ^ v48 ^ v24 ^ v48 ^ v52;
  v54 = LODWORD(STACK[0x37A8]) ^ v49;
  LODWORD(STACK[0x3CD0]) = v54;
  v55 = v51 ^ v53 ^ v54;
  v56 = LODWORD(STACK[0x3798]) ^ v48;
  LODWORD(STACK[0x39A8]) = v23 ^ v49;
  LODWORD(STACK[0x3878]) = v19 ^ v49;
  LODWORD(STACK[0x3CC8]) = v56;
  LODWORD(STACK[0x3B20]) = v34 ^ v49;
  LODWORD(STACK[0x39A0]) = v32 ^ v49;
  LODWORD(STACK[0x3998]) = v35 ^ v48;
  v57 = v55 ^ v23 ^ v49 ^ v19 ^ v49 ^ v56 ^ v34 ^ v49 ^ v32 ^ v49 ^ v35 ^ v48;
  v58 = LODWORD(STACK[0x3808]) ^ v48;
  LODWORD(STACK[0x3B18]) = v30 ^ v49;
  LODWORD(STACK[0x3940]) = v58;
  LODWORD(STACK[0x3980]) = v27 ^ v48;
  v59 = v30 ^ v49 ^ v58 ^ v27 ^ v48;
  v60 = LODWORD(STACK[0x3800]) ^ v48;
  v61 = LODWORD(STACK[0x3820]) ^ v48;
  LODWORD(STACK[0x3B08]) = v61;
  v62 = v59 ^ v60 ^ v61;
  v63 = LODWORD(STACK[0x3830]) ^ v49;
  LODWORD(STACK[0x3B00]) = v63;
  LODWORD(STACK[0x3AF0]) = v28 ^ v48;
  v64 = v57 ^ v62 ^ v63 ^ v28 ^ v48;
  v65 = LODWORD(STACK[0x3840]) ^ v48;
  LODWORD(STACK[0x3AE0]) = v65;
  LODWORD(STACK[0x3D38]) = v31 ^ v49;
  LODWORD(STACK[0x3AD8]) = v29 ^ v49;
  v66 = v65 ^ v31 ^ v49 ^ v29 ^ v49;
  v67 = LODWORD(STACK[0x36F0]) ^ v49;
  LODWORD(STACK[0x3D60]) = v67;
  v68 = v66 ^ v67 ^ v41 ^ v48;
  v69 = LODWORD(STACK[0x3828]) ^ v48;
  LODWORD(STACK[0x39E8]) = v69;
  v70 = v64 ^ v68 ^ v69;
  if (v14)
  {
    v71 = STACK[0x3D40];
  }

  else
  {
    v71 = STACK[0x3850];
  }

  v72 = v71 ^ v48;
  v73 = LODWORD(STACK[0x3988]) ^ v48;
  v74 = v48;
  v75 = LODWORD(STACK[0x36E8]) ^ v49;
  v76 = STACK[0x36E0];
  LODWORD(STACK[0x3858]) = v75;
  LODWORD(STACK[0x3D68]) = v42 ^ v49;
  v77 = LODWORD(STACK[0x3818]) ^ v49;
  LODWORD(STACK[0x3988]) = v77;
  LODWORD(STACK[0x3D70]) = v73;
  v78 = v75 ^ v76 ^ v49 ^ v42 ^ v49 ^ v77 ^ v73 ^ v72;
  v79 = LODWORD(STACK[0x36F8]) ^ v49;
  LODWORD(STACK[0x3960]) = v79;
  v80 = STACK[0x2BF0];
  LODWORD(STACK[0x2AF8]) = v70 ^ v78 ^ v79 ^ LODWORD(STACK[0x2BF0]) ^ v74 ^ LODWORD(STACK[0x3700]) ^ v49;
  v81 = STACK[0x3D18];
  v82 = STACK[0x2698];
  v83 = v81[408] ^ 0xD5 ^ *(v82 + (v81[408] ^ 0x69)) | ((v81[405] ^ 0x8D ^ *(v82 + (v81[405] ^ 0xF8))) << 24) | ((v81[406] ^ 0x6E ^ *(v82 + (v81[406] ^ 0x85))) << 16) | ((v81[407] ^ *(v82 + (v81[407] ^ 0xD9)) ^ 0xF8) << 8);
  v84 = v83 ^ 0x87 ^ (((v83 ^ 0x87u) & STACK[0x3920]) >> 1);
  v85 = STACK[0x38F8];
  v86 = STACK[0x38C0];
  v87 = STACK[0x3D88];
  v88 = STACK[0x3D80];
  v89 = STACK[0x38A0];
  LODWORD(STACK[0x36B8]) = ((v84 & STACK[0x38A0]) << STACK[0x3D80]) | ((v84 & STACK[0x38F8]) >> STACK[0x3D88]);
  v90 = STACK[0x38D0];
  v91 = STACK[0x3D98];
  v92 = STACK[0x3D90];
  LODWORD(STACK[0x3800]) ^= LODWORD(STACK[0x3D28]) ^ LODWORD(STACK[0x3CF0]) ^ LODWORD(STACK[0x3D20]) ^ v22 ^ LODWORD(STACK[0x3750]) ^ LODWORD(STACK[0x3788]) ^ LODWORD(STACK[0x3798]) ^ LODWORD(STACK[0x2AB8]) ^ LODWORD(STACK[0x2A90]) ^ LODWORD(STACK[0x37A8]) ^ LODWORD(STACK[0x183C]) ^ LODWORD(STACK[0x2AD0]) ^ LODWORD(STACK[0x36F0]) ^ LODWORD(STACK[0x3820]) ^ LODWORD(STACK[0x36E0]) ^ LODWORD(STACK[0x3818]) ^ v80 ^ LODWORD(STACK[0x3D48]);
  LODWORD(STACK[0x3D40]) ^= LODWORD(STACK[0x3D30]) ^ LODWORD(STACK[0x2AC8]) ^ LODWORD(STACK[0x2AF0]) ^ LODWORD(STACK[0x2AD8]) ^ LODWORD(STACK[0x2AB0]) ^ LODWORD(STACK[0x2AA0]) ^ LODWORD(STACK[0x3840]) ^ LODWORD(STACK[0x3808]) ^ LODWORD(STACK[0x3830]) ^ LODWORD(STACK[0x2AC0]) ^ LODWORD(STACK[0x2AE0]) ^ LODWORD(STACK[0x2AA8]) ^ LODWORD(STACK[0x2AE8]) ^ LODWORD(STACK[0x3828]) ^ LODWORD(STACK[0x36E8]) ^ LODWORD(STACK[0x2A98]) ^ LODWORD(STACK[0x3850]) ^ LODWORD(STACK[0x1954]) ^ LODWORD(STACK[0x3700]) ^ LODWORD(STACK[0x36F8]) ^ 0x3826B33A;
  v93 = STACK[0x32D0];
  LODWORD(STACK[0x3840]) = STACK[0x32D0] + ((STACK[0x32C8] & v85) >> v87);
  LODWORD(STACK[0x3830]) = v93 + STACK[0x32C0];
  v94 = (STACK[0x32B0] & v90) >> v92;
  LODWORD(STACK[0x3828]) = v94 + (STACK[0x32A8] << v88);
  LODWORD(STACK[0x3820]) = v94 + STACK[0x32B8];
  LODWORD(STACK[0x37A8]) = (STACK[0x36D0] >> v87) ^ STACK[0x32E8];
  LODWORD(STACK[0x3818]) = (STACK[0x32D8] >> v87) + STACK[0x3340];
  LODWORD(STACK[0x3798]) = STACK[0x32E0] ^ (STACK[0x3348] >> v92);
  LODWORD(STACK[0x3808]) = (STACK[0x3428] << v88) + STACK[0x33E8];
  v95 = STACK[0x3550];
  LODWORD(STACK[0x3788]) = STACK[0x3550] | (STACK[0x34F0] << v91);
  LODWORD(STACK[0x3750]) = v95 ^ STACK[0x3438];
  LODWORD(STACK[0x36F0]) = (STACK[0x3570] >> v92) ^ STACK[0x3258];
  v96 = STACK[0x36C8];
  LODWORD(STACK[0x3700]) = STACK[0x35A0] ^ STACK[0x36C8];
  LODWORD(STACK[0x2BF0]) = v6 ^ v96 ^ (STACK[0x3260] >> v92);
  v97 = STACK[0x2BE8] & v89;
  LODWORD(STACK[0x36F8]) = (v97 << v91) | STACK[0x2BE0];
  LODWORD(STACK[0x2BE8]) = (STACK[0x3650] >> v92) ^ v6 ^ ((STACK[0x3D50] & v86) << v91);
  LODWORD(STACK[0x2BE0]) = (v97 << v88) ^ (STACK[0x3230] >> v87) ^ v6;
  LODWORD(STACK[0x36E8]) = (STACK[0x3268] >> v87) + ((v89 & STACK[0x3270]) << v88);
  v98 = (STACK[0x2BD0] >> v87) | (STACK[0x3228] << v88);
  LODWORD(STACK[0x36E0]) = (STACK[0x3278] >> v92) | (STACK[0x3280] << v91);
  LODWORD(STACK[0x3E38]) = (STACK[0x3248] >> v92) + STACK[0x3E38];
  LODWORD(STACK[0x36D0]) = ((STACK[0x3288] & v89) << v91) + ((STACK[0x3288] & v85) >> v92);
  v99 = (STACK[0x3250] & v86) << v88;
  v100 = STACK[0x3250] & v90;
  LODWORD(STACK[0x2BD0]) = (v100 >> v92) ^ v99 ^ v6;
  LODWORD(STACK[0x36C8]) = (STACK[0x2B78] << v91) ^ STACK[0x2BC8];
  LODWORD(STACK[0x2BC8]) = STACK[0x2B80] ^ v6 ^ ((v85 & STACK[0x2F60]) >> v87);
  LODWORD(STACK[0x35A0]) = ((STACK[0x3D58] & v90) >> v92) | STACK[0x2BF8];
  LODWORD(STACK[0x3570]) = STACK[0x2BD8] | (STACK[0x2BB8] << v88);
  LODWORD(STACK[0x3650]) = (STACK[0x2B60] >> v87) + (STACK[0x2B68] << v91);
  LODWORD(STACK[0x3550]) = (STACK[0x2B48] >> v92) | STACK[0x2BC0];
  LODWORD(STACK[0x3438]) = STACK[0x2B98] | (STACK[0x3290] >> v87);
  LODWORD(STACK[0x34F0]) = STACK[0x2B58] + (STACK[0x2B50] >> v87);
  LODWORD(v89) = (STACK[0x3298] << v91) | ((v85 & STACK[0x32A0]) >> v87);
  v101 = (STACK[0x2BA0] & v90) >> v92;
  LODWORD(STACK[0x2BC0]) = ((STACK[0x2BA0] & v86) << v88) ^ v6 ^ v101;
  LODWORD(v88) = (STACK[0x2BB0] << v88) + v101;
  v102 = (STACK[0x2B70] >> v92) | STACK[0x2B40];
  LODWORD(v92) = STACK[0x2B88] + STACK[0x2B40];
  LODWORD(v101) = (STACK[0x2B90] << v91) | ((v85 & STACK[0x2BA8]) >> v87);
  LODWORD(v91) = LODWORD(STACK[0x3D40]) ^ LODWORD(STACK[0x3800]) ^ 0x3826B33A;
  v103 = STACK[0x38D8];
  LODWORD(v97) = LODWORD(STACK[0x3D48]) ^ LODWORD(STACK[0x38D8]);
  LODWORD(STACK[0x3850]) = v97;
  LODWORD(v97) = LODWORD(STACK[0x2AF8]) ^ v97;
  LODWORD(STACK[0x2BB8]) = v91 ^ LODWORD(STACK[0x36F0]) ^ v6 ^ v97;
  LODWORD(STACK[0x2BB0]) = v91 ^ v6 ^ v98 ^ v97;
  LODWORD(STACK[0x3D58]) = LODWORD(STACK[0x2B30]) ^ v49;
  LODWORD(STACK[0x3D40]) = LODWORD(STACK[0x2B08]) ^ v103;
  LODWORD(STACK[0x3D50]) = LODWORD(STACK[0x2B00]) ^ v103;
  LODWORD(STACK[0x3D48]) = LODWORD(STACK[0x2B38]) ^ v49;
  LODWORD(STACK[0x2BA8]) = LODWORD(STACK[0x37A8]) ^ v6;
  LODWORD(STACK[0x2BA0]) = LODWORD(STACK[0x3798]) ^ v6;
  LODWORD(STACK[0x2B98]) = LODWORD(STACK[0x2B18]) ^ v6;
  LODWORD(STACK[0x2B90]) = v6 ^ LODWORD(STACK[0x3788]);
  LODWORD(STACK[0x2B88]) = LODWORD(STACK[0x3750]) ^ v6;
  LODWORD(STACK[0x2B80]) = v6 ^ STACK[0x3838];
  LODWORD(STACK[0x2B78]) = LODWORD(STACK[0x3700]) ^ v6;
  LODWORD(STACK[0x2B70]) = v6 ^ LODWORD(STACK[0x36F8]);
  LODWORD(STACK[0x2B68]) = LODWORD(STACK[0x2B28]) ^ v6;
  LODWORD(STACK[0x2B60]) = v6 ^ LODWORD(STACK[0x36E0]);
  STACK[0x2BD8] = v99;
  LODWORD(STACK[0x2B58]) = LODWORD(STACK[0x36C8]) ^ v6;
  LODWORD(STACK[0x2B50]) = v6 ^ LODWORD(STACK[0x35A0]);
  LODWORD(STACK[0x2B48]) = v6 ^ LODWORD(STACK[0x3570]);
  LODWORD(STACK[0x2B40]) = v6 ^ LODWORD(STACK[0x3550]);
  LODWORD(STACK[0x2B38]) = v6 ^ LODWORD(STACK[0x3438]);
  LODWORD(STACK[0x2B30]) = v6 ^ v89;
  LODWORD(STACK[0x2B28]) = v6 ^ v102;
  LODWORD(STACK[0x2B20]) ^= v6;
  LODWORD(STACK[0x2B18]) = v6 ^ v101;
  v104 = *(v3 + 8 * SLODWORD(STACK[0x2B10]));
  LODWORD(STACK[0x2B10]) = v6 ^ LODWORD(STACK[0x3840]);
  LODWORD(STACK[0x2B08]) = v6 ^ LODWORD(STACK[0x3830]);
  LODWORD(STACK[0x2B00]) = v6 ^ LODWORD(STACK[0x3828]);
  LODWORD(STACK[0x2AF8]) = v6 ^ LODWORD(STACK[0x3820]);
  LODWORD(STACK[0x2AF0]) = v6 ^ LODWORD(STACK[0x3848]);
  LODWORD(STACK[0x2AE8]) = v6 ^ LODWORD(STACK[0x3818]);
  LODWORD(STACK[0x2AE0]) = v6 ^ LODWORD(STACK[0x3808]);
  LODWORD(STACK[0x2AD8]) = v6 ^ LODWORD(STACK[0x36E8]);
  LODWORD(STACK[0x2AD0]) = v6 ^ LODWORD(STACK[0x3E38]);
  LODWORD(STACK[0x2AC8]) = v6 ^ ((v100 >> v87) + v99);
  LODWORD(STACK[0x2AC0]) = v6 ^ LODWORD(STACK[0x36D0]);
  LODWORD(STACK[0x2AB8]) = v6 ^ LODWORD(STACK[0x3650]);
  LODWORD(STACK[0x2AB0]) = v6 ^ LODWORD(STACK[0x34F0]);
  LODWORD(STACK[0x2AA8]) = v6 ^ v88;
  LODWORD(STACK[0x2BF8]) = v6;
  LODWORD(STACK[0x2AA0]) = v6 ^ v92;
  STACK[0x2A98] = STACK[0x3EC8];
  STACK[0x2A90] = STACK[0x3E60];
  LODWORD(v101) = STACK[0x3D78];
  LODWORD(STACK[0x3848]) = STACK[0x3D78];
  LODWORD(STACK[0x3840]) = v101;
  return v104();
}

uint64_t sub_100D8C490()
{
  v4 = STACK[0x858];
  v5 = STACK[0x278];
  *(v3 - 216) = STACK[0x278];
  *(v3 - 184) = v5 + 1350535117 + v2 + v0 + 35;
  *(v3 - 192) = v4 + v5;
  *(v3 - 200) = v5;
  *(v3 - 196) = (v2 + v0 + 1350535117) ^ v5;
  *(v3 - 208) = ((v2 + v0) ^ 0x507F8893) - v5;
  *(v3 - 204) = v5 + 948130785 + v2;
  v6 = (*(v1 + 8 * (v2 ^ 0x1E01726D)))(v3 - 216);
  return (*(v1 + 8 * *(v3 - 180)))(v6);
}

uint64_t sub_100D8C524@<X0>(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 ^ 0x5BD0)))(a1);
  *(STACK[0x1618] + 24) = 0;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_100D8C558()
{
  LODWORD(STACK[0x3D20]) = 0;
  v2 = *(v1 + 8 * (v0 - 16828));
  LODWORD(STACK[0x2BB0]) = 34;
  LODWORD(STACK[0x3D98]) = 2;
  v3 = STACK[0x3430];
  STACK[0x3D60] = STACK[0x3430];
  v4 = STACK[0x2618];
  STACK[0x3D88] = STACK[0x2618];
  STACK[0x3B20] = v3;
  STACK[0x3CF0] = v4;
  STACK[0x3650] = LODWORD(STACK[0x3AD8]);
  LODWORD(STACK[0x3AE0]) = STACK[0x39F0];
  v5 = STACK[0x3318];
  LODWORD(STACK[0x3E40]) = STACK[0x3318];
  LODWORD(STACK[0x3688]) = STACK[0x32E0];
  STACK[0x3540] = LODWORD(STACK[0x32D8]);
  v6 = STACK[0x39C0];
  LODWORD(STACK[0x3710]) = STACK[0x39C0];
  LODWORD(STACK[0x3D90]) = v6;
  LODWORD(STACK[0x3CE8]) = v5;
  LODWORD(STACK[0x3810]) = STACK[0x3D80];
  LODWORD(STACK[0x1188]) = STACK[0x3A28];
  LODWORD(STACK[0x3268]) = v6;
  LODWORD(STACK[0x3D70]) = v5;
  return v2(v0);
}

uint64_t sub_100D8C600(int a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, char a8)
{
  v14 = (a4 + v13) & 0xFFFFFFF8;
  v15 = __ROR8__((a4 + v13) & 0xFFFFFFFFFFFFFFF8, 8);
  v16 = *(v8 + (a5 & ((v14 ^ 0x8ABB2195) + 83319472 + ((2 * v14) | (LODWORD(STACK[0x3D98]) - 7261) ^ 0xEA898A94))));
  v17 = (v16 + v15) ^ 0xB88801D4E1C76353;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x38C8B16AE7056877;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (v21 + v20 - ((2 * (v21 + v20)) & 0x1097BE0C7EE8FE12) + 0x84BDF063F747F09) ^ 0xEDCB6E7BB3B19A58;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0xE1A1FD5BD155F97ALL;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = __ROR8__((((2 * (v26 + v25)) & 0x1F7D2697964070E8) - (v26 + v25) + 0x70416CB434DFC78BLL) ^ 0xAA2127B8377D7812, 8);
  v28 = (((2 * (v26 + v25)) & 0x1F7D2697964070E8) - (v26 + v25) + 0x70416CB434DFC78BLL) ^ 0xAA2127B8377D7812 ^ __ROR8__(v25, 61);
  v29 = (((2 * (v27 + v28)) & 0xE24CFD1D84CF120ELL) - (v27 + v28) + 0xED981713D9876F8) ^ 0xF4EC63BCF6A6473FLL;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = *(v8 + (v10 & ((v14 ^ 0x760CA1D4) + 70227782 + ((2 * v14) & 0xEC1943A0)) & 0xFFFFFFF8));
  v33 = (v31 + v30 - ((2 * (v31 + v30)) & 0x398FA5A5D46A5BE4) - 0x63382D2D15CAD20ELL) ^ 0x4E37DE34CAD0FE5CLL;
  v34 = v33 ^ __ROR8__(v30, 61);
  v35 = (((2 * (v32 + v15)) & 0x98562CD6F582EC0ALL) - (v32 + v15) + 0x33D4E994853E89FALL) ^ 0x8B5CE84064F9EAA9;
  v36 = __ROR8__(v33, 8);
  v37 = v35 ^ __ROR8__(v32, 61);
  v38 = (__ROR8__(v35, 8) + v37) ^ 0x38C8B16AE7056877;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0xE580B17D8CC5E551;
  v41 = v40 ^ __ROR8__(v39, 61);
  LOBYTE(v39) = *(a4 + v13);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0xE1A1FD5BD155F97ALL;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0xDA604B0C03A2BF99;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0xFA35E2CDCB3E31C7;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0xD2F00CE620E5D3AELL;
  LOBYTE(v48) = (v13 - ((2 * v13) & 0x74) + 58) ^ v39 ^ 0x3A ^ (((__ROR8__(v48, 8) + (v48 ^ __ROR8__(v47, 61))) ^ 0xF4730B31AE70757BLL) >> (a8 & 0x38));
  v49 = *(STACK[0x3530] + 4 * ((v48 ^ HIBYTE(v9)) ^ 0x67u)) ^ a2;
  v50 = *(STACK[0x3530] + 4 * ((v48 ^ ((*(STACK[0x3530] + 4 * ((v39 ^ v13 ^ BYTE2(v49) ^ (((a6 - ((v36 + v34) | a6) + ((v36 + v34) | 0xE2C6D2846003B0DALL)) ^ 0x16B5D9B5CE73C5A1) >> (a8 & 0x38))) ^ 0xA2u)) ^ v11) >> 8)) ^ 9u)) ^ a1;
  HIDWORD(v31) = *(STACK[0x3530] + 4 * (v50 ^ v48 ^ 0x21)) ^ v9;
  LODWORD(v31) = HIDWORD(v31);
  return (*(v12 + 8 * ((13202 * (STACK[0x1180] + v13 == 17)) ^ a7)))((v31 >> 24) ^ v50, (v31 >> 24) ^ v49);
}

uint64_t sub_100D8CA78(uint64_t a1, int a2, uint64_t a3, int a4, unint64_t a5)
{
  v13 = v11;
  v14 = (LODWORD(STACK[0x3D90]) - 15473) | 0x4218;
  v15 = STACK[0x3DA0] + a5;
  v17 = bswap32(*(v15 + 71));
  LODWORD(STACK[0x3E38]) = v14;
  v18 = STACK[0x3D40];
  v19 = *(STACK[0x3D40] + 4 * (v11 ^ (v14 - 21037)));
  v20 = *(STACK[0x3D40] + 4 * (BYTE2(v11) ^ 0x59u));
  v21 = *(STACK[0x3D40] + 4 * (BYTE1(v11) ^ 0x35u)) ^ 0xFBEF1DBD;
  v22 = *(STACK[0x3D40] + 4 * (HIBYTE(v11) ^ 0xE1));
  v23 = v21 ^ v17 ^ (8 * v21) ^ (16 * v21) ^ __ROR4__(v19 ^ 0x19E2E7D2 ^ (16 * (v19 ^ 0xFBEF1DBD)) ^ (8 * (v19 ^ 0xFBEF1DBD)), 8) ^ __ROR4__(v20 ^ 0x87BC9559 ^ (16 * (v20 ^ 0xFBEF1DBD)) ^ (8 * (v20 ^ 0xFBEF1DBD)), 24) ^ __ROR4__(v22 ^ (16 * (v22 ^ 0xFBEF1DBD)) ^ (8 * (v22 ^ 0xFBEF1DBD)) ^ 0x8B0F710E, 16);
  v24 = (STACK[0x3E10] + a5);
  v25 = a5;
  STACK[0x3D88] = a5;
  v24[257] = v23 ^ 0x119E263D;
  v26 = v24;
  v27 = STACK[0x3E40];
  v28 = *(STACK[0x3E40] + 4 * (v12 ^ 0x64u)) - 150430535;
  v29 = *(STACK[0x3E40] + 4 * (BYTE1(v12) ^ 0x78u)) - 150430535;
  v30 = *(STACK[0x3E40] + 4 * ~HIWORD(v12)) - 150430535;
  v31 = *(STACK[0x3E40] + 4 * (HIBYTE(v12) ^ 0x2F)) - 150430535;
  v32 = v29 ^ bswap32(*v15) ^ (v29 >> 4) ^ (v29 >> 1) ^ __ROR4__(v28 ^ 0x4EB5ED2C ^ (v28 >> 4) ^ (v28 >> 1), 8) ^ __ROR4__(v30 ^ (v30 >> 4) ^ (v30 >> 1) ^ 0xCD22947F, 24);
  v33 = __ROR4__(v31 ^ 0xE6267692 ^ (v31 >> 4) ^ (v31 >> 1), 16);
  v34 = STACK[0x3DC0];
  v35 = v34 + 360556;
  *v26 = v32 ^ v33 ^ 0xC426F6C2;
  v36 = *(v34 + 360556 + 4 * (v23 ^ 0xA5u));
  v37 = *(v34 + 360556 + 4 * (BYTE1(v23) ^ 0x8Cu)) ^ 0x3E300803;
  v38 = *(v34 + 360556 + 4 * (BYTE2(v23) ^ 0x7Au));
  v39 = *(v34 + 360556 + 4 * (HIBYTE(v23) ^ 0xF9));
  v40 = v34 + 198236;
  v41 = *(v34 + 198236 + 4 * ((v32 ^ v33) ^ 1u)) ^ 0x865049FD;
  v42 = v39 ^ ((v39 ^ 0x3E300803u) >> 5) ^ ((v39 ^ 0x3E300803u) >> 4) ^ 0x84E6BAA1;
  v43 = *(v40 + 4 * (((v32 ^ v33) >> 8) ^ 0x3Cu)) ^ __ROR4__(v41, 8);
  v44 = v37 ^ (v37 >> 5) ^ (v37 >> 4) ^ __ROR4__(v36 ^ ((v36 ^ 0x3E300803u) >> 5) ^ ((v36 ^ 0x3E300803u) >> 4) ^ 0x64E6BE21, 8);
  v45 = *(v40 + 4 * (((v32 ^ v33) >> 16) ^ 0x76u));
  v46 = *(v40 + 4 * (((v32 ^ v33) >> 24) ^ 0x2C));
  STACK[0x3420] = v42;
  v47 = v44 ^ __ROR4__(v38 ^ ((v38 ^ 0x3E300803u) >> 5) ^ ((v38 ^ 0x3E300803u) >> 4) ^ 0x9CE6BA01, 24) ^ __ROR4__(v42, 16);
  v48 = v43 ^ __ROR4__(v45 ^ 0xE9D04BB0, 24);
  v49 = a4 ^ v13 ^ v47;
  v50 = v48 ^ __ROR4__(v46 ^ 0xC5D04951, 16);
  v51 = v50 ^ 0x90D049D9;
  v52 = v50 ^ 0x90D049D9 ^ v12;
  v53 = v50 ^ 0xAE06FD4B ^ v49;
  v54 = v49 ^ 0x3ED6B492;
  LODWORD(STACK[0x3BA8]) = v12;
  v55 = v52 - v12;
  LODWORD(STACK[0x3BB0]) = v13;
  v56 = v13 - 1541807829;
  v57 = v6 - 1846982806;
  v58 = (((v51 ^ a2) - a2) ^ v55 ^ (v53 - v54)) - v9;
  v59 = (STACK[0x3CF8] + v25);
  v59[3484] = (v47 ^ 0x3ED6B492) + v8;
  v60 = a4 + v13 - 1541807829;
  v59[1875] = v58;
  v61 = *(v18 + 4 * ((a4 + v13 + 43) ^ 0xBDu));
  v62 = *(v18 + 4 * (BYTE1(v60) ^ 0xADu)) ^ 0xFBEF1DBD;
  v63 = *(v18 + 4 * (BYTE2(v60) ^ 0x5Cu));
  LODWORD(v25) = v63 ^ 0xFBEF1DBD;
  v64 = v63 ^ 0x5540345 ^ (16 * (v63 ^ 0xFBEF1DBD));
  v65 = *(v18 + 4 * (HIBYTE(v60) ^ 0x90));
  v66 = v62 ^ bswap32(*(v15 + 75)) ^ (8 * v62) ^ (16 * v62) ^ __ROR4__(v61 ^ (16 * (v61 ^ 0xFBEF1DBD)) ^ (8 * (v61 ^ 0xFBEF1DBD)) ^ 0x7E4875A, 8) ^ __ROR4__(v64 ^ (8 * v25), 24) ^ __ROR4__(v65 ^ 0xAB05708E ^ (16 * (v65 ^ 0xFBEF1DBD)) ^ (8 * (v65 ^ 0xFBEF1DBD)), 16);
  v67 = v57 + a2;
  STACK[0x3D98] = v26;
  v26[258] = v66 ^ 0x70E06CB3;
  v68 = *(v27 + 4 * ((v57 + a2) ^ 0xBCu)) - 150430535;
  v69 = *(v27 + 4 * (((v57 + a2) >> 8) ^ 0xACu)) - 150430535;
  v70 = *(v27 + 4 * (((v57 + a2) >> 16) ^ 0xBu)) - 150430535;
  LODWORD(v42) = *(v27 + 4 * (((v57 + a2) >> 24) ^ 0x8A)) - 150430535;
  LODWORD(v25) = v69 ^ bswap32(*(v15 + 4)) ^ (v69 >> 1) ^ (v69 >> 4) ^ __ROR4__(v68 ^ 0xB649CCB8 ^ (v68 >> 4) ^ (v68 >> 1), 8) ^ __ROR4__(v70 ^ (v70 >> 4) ^ (v70 >> 1) ^ 0x5553E2EA, 24) ^ __ROR4__(v42 ^ (v42 >> 4) ^ (v42 >> 1) ^ 0x2C430882, 16);
  v26[1] = v25 ^ 0xD0484C48;
  v71 = *(v35 + 4 * (v66 ^ 0x24u));
  LODWORD(v42) = *(v35 + 4 * (BYTE1(v66) ^ 0x68u)) ^ 0x3E300803;
  v72 = (v57 + a2) ^ 0xC1CD4CA5;
  v73 = v57 + a2 + v57;
  v74 = v7 - a2;
  v75 = v9 ^ (v7 - a2);
  v76 = v71 ^ 0x3E300803;
  v77 = v75 ^ v57;
  v78 = v60 + v56;
  v79 = v5 - a4;
  v80 = v56 ^ v8 ^ (v5 - a4);
  v81 = v71 ^ ((v71 ^ 0x3E300803u) >> 5);
  v82 = *(v35 + 4 * (BYTE2(v66) ^ 0x25u));
  v83 = v81 ^ (v76 >> 4);
  v84 = v82 ^ ((v82 ^ 0x3E300803u) >> 5) ^ ((v82 ^ 0x3E300803u) >> 4);
  v85 = *(v35 + 4 * (HIBYTE(v66) ^ 0x38));
  v86 = *(v40 + 4 * (v25 ^ 2u)) ^ 0xD0D04BD8;
  v87 = *(v40 + 4 * (BYTE1(v25) ^ 0xC2u));
  LODWORD(STACK[0x3BA0]) = v25 ^ 0xD0484C48;
  LODWORD(v42) = v42 ^ (v42 >> 5) ^ (v42 >> 4) ^ __ROR4__(v83 ^ 0x7AE6BEA9, 8);
  v88 = *(v40 + 4 * (((v25 ^ 0xD0484C48) >> 16) ^ 0x5Au));
  LODWORD(STACK[0x3B98]) = v84 ^ 0xDEE6B919;
  LODWORD(v42) = v42 ^ __ROR4__(v84 ^ 0xDEE6B919, 24) ^ __ROR4__(v85 ^ ((v85 ^ 0x3E300803u) >> 5) ^ ((v85 ^ 0x3E300803u) >> 4) ^ 0xC4E6B5A0, 16);
  v89 = v87 ^ __ROR4__(v86, 8);
  v90 = *(v40 + 4 * (BYTE3(v25) ^ 0xBA)) ^ 0x80D04B58;
  v91 = v89 ^ __ROR4__(v88 ^ 0xF8D04B98, 24);
  LODWORD(STACK[0x3B18]) = v90;
  v92 = __ROR4__(v90, 16);
  v93 = v60 ^ 0xC1CD4CA5 ^ v78 ^ v42;
  LODWORD(v42) = (v42 ^ 0x62D6BB03) + v80;
  v94 = (((v91 ^ v92 ^ 0x3AD048C9 ^ v73) - v73) ^ ((v91 ^ v92 ^ 0x3AD048C9 ^ v72) - v72) ^ ((v91 ^ v92 ^ 0x5806F3CA ^ v93) - (v93 ^ 0x62D6BB03))) - v77;
  v95 = v80 - v78;
  v96 = v78 + (v60 ^ 0xC1CD4CA5);
  v97 = v77 - v73;
  v60 ^= 0xF0A1609F;
  v98 = v96 - v60;
  v67 ^= 0xF0A1609F;
  v99 = v60 - v95;
  v100 = v95 ^ (v96 - v60);
  v59[3485] = v94;
  v101 = v72 + v73 - v67;
  v59[1876] = v42;
  v102 = v67 - v97;
  v103 = *(v15 + 82);
  v104 = *(v18 + 4 * ((v95 ^ v98) ^ 0x82u));
  LODWORD(v42) = (*(v15 + 79) << 24) | (*(v15 + 80) << 16) | (*(v15 + 81) << 8);
  v105 = *(v18 + 4 * (BYTE1(v100) ^ 0x94u)) ^ 0xFBEF1DBD;
  v106 = *(v18 + 4 * (BYTE2(v100) ^ 0x36u));
  STACK[0x3538] = v103;
  v107 = *(v18 + 4 * (BYTE3(v100) ^ 0xB4));
  v108 = v107 ^ (16 * (v107 ^ 0xFBEF1DBD)) ^ (8 * (v107 ^ 0xFBEF1DBD)) ^ 0xC4785A48;
  v109 = v105 ^ (v42 | v103) ^ (8 * v105) ^ (16 * v105) ^ __ROR4__(v104 ^ (16 * (v104 ^ 0xFBEF1DBD)) ^ (8 * (v104 ^ 0xFBEF1DBD)) ^ 0x729E8D24, 8) ^ __ROR4__(v106 ^ 0xC4C87E4F ^ (16 * (v106 ^ 0xFBEF1DBD)) ^ (8 * (v106 ^ 0xFBEF1DBD)), 24) ^ HIWORD(v108);
  v110 = v101 ^ v97;
  v111 = v109 ^ (v108 << 16);
  v112 = STACK[0x3D98];
  v112[259] = v111 ^ 0x8D70D0A9;
  v113 = *(v27 + 4 * (BYTE2(v110) ^ 0x56)) - 150430535;
  LODWORD(v42) = *(v27 + 4 * (v110 ^ 0x85u)) - 150430535;
  v114 = *(v27 + 4 * (BYTE1(v110) ^ 0xCELL)) - 150430535;
  v115 = *(v27 + 4 * (BYTE3(v110) ^ 0x7A)) - 150430535;
  v116 = v114 ^ bswap32(*(v15 + 8)) ^ (v114 >> 1) ^ (v114 >> 4) ^ __ROR4__(v42 ^ 0x977A7310 ^ (v42 >> 4) ^ (v42 >> 1), 8) ^ __ROR4__(v113 ^ (v113 >> 4) ^ (v113 >> 1) ^ 0x2B875224, 24) ^ __ROR4__(v115 ^ 0xDE887453 ^ (v115 >> 4) ^ (v115 >> 1), 16);
  v112[2] = v116 ^ 0x3FE9E8AE;
  LODWORD(v42) = *(v35 + 4 * (v109 ^ 0xA7u));
  v117 = *(v35 + 4 * (BYTE1(v109) ^ 0x4Fu)) ^ 0x3E300803;
  LODWORD(STACK[0x3B88]) = v111 ^ 0x8D70D0A9;
  v118 = *(v35 + 4 * (((v111 ^ 0x8D70D0A9) >> 16) ^ 0x80u));
  v119 = v117 ^ (v117 >> 5) ^ (v117 >> 4);
  v120 = v74 + 633376688;
  LODWORD(v103) = v98;
  v121 = v98 ^ (v79 + 633376688);
  v122 = v101 ^ v120;
  v123 = *(v40 + 4 * (BYTE1(v116) ^ 0xCAu)) ^ __ROR4__(*(v40 + 4 * (v116 ^ 0xCAu)) ^ 0x9BD04B60, 8) ^ __ROR4__(*(v40 + 4 * (BYTE2(v116) ^ 0xBAu)) ^ 0xEE504BBC, 24);
  LODWORD(v42) = v119 ^ __ROR4__(v42 ^ 0x48E6B3F0 ^ ((v42 ^ 0x3E300803) >> 5) ^ ((v42 ^ 0x3E300803) >> 4), 8) ^ __ROR4__(v118 ^ ((v118 ^ 0x3E300803u) >> 5) ^ ((v118 ^ 0x3E300803u) >> 4) ^ 0x54E6BF61, 24) ^ __ROR4__(*(v35 + 4 * (HIBYTE(v111) ^ 0xC2)) ^ ((*(v35 + 4 * (HIBYTE(v111) ^ 0xC2)) ^ 0x3E300803u) >> 5) ^ ((*(v35 + 4 * (HIBYTE(v111) ^ 0xC2)) ^ 0x3E300803u) >> 4) ^ 0xCAE6B5E8, 16);
  v124 = __ROR4__(*(v40 + 4 * (HIBYTE(v116) ^ 0x8B)) ^ 0x53D04821, 16);
  v125 = ((v123 ^ v124 ^ 0x34D04A78 ^ v102) - v102) ^ ((v123 ^ v124 ^ 0x34D04A78 ^ v101) - v101) ^ ((v123 ^ v124 ^ 0x6006FC12 ^ v99 ^ v98 ^ v42) - (v99 ^ v98 ^ v42 ^ 0x54D6B66A));
  v126 = v99 + 1449863632;
  v127 = v121 - (v99 + 1449863632);
  v102 += 1449863632;
  v59[1877] = (v42 ^ 0x54D6B66A) + v100;
  v59[3486] = v125 - v110;
  LODWORD(v42) = *(v18 + 4 * ((v127 - 115) ^ 0x2Bu));
  v128 = *(v18 + 4 * (((v127 + 387700109) >> 16) ^ 0x28u));
  v129 = *(v18 + 4 * (((v127 - 10867) >> 8) ^ 0xE0u)) ^ 0xFBEF1DBD;
  v130 = v128 ^ (16 * (v128 ^ 0xFBEF1DBD)) ^ (8 * (v128 ^ 0xFBEF1DBD));
  v131 = *(v18 + 4 * (((v127 + 387700109) >> 24) ^ 0x38));
  v132 = v122 - v102;
  v133 = v129 ^ bswap32(*(v15 + 83)) ^ (8 * v129) ^ (16 * v129) ^ __ROR4__(v42 ^ (16 * (v42 ^ 0xFBEF1DBD)) ^ (8 * (v42 ^ 0xFBEF1DBD)) ^ 0xC2C99E67, 8) ^ __ROR4__(v130 ^ 0xEC70DBA8, 24) ^ __ROR4__(v131 ^ (16 * (v131 ^ 0xFBEF1DBD)) ^ (8 * (v131 ^ 0xFBEF1DBD)) ^ 0xB5031006, 16);
  v134 = v122 - v102 + 387700109;
  v112[260] = v133 ^ 0x95775009;
  LODWORD(v42) = *(v27 + 4 * ((v122 - v102 - 115) ^ 0x91u)) - 150430535;
  v135 = *(v27 + 4 * (BYTE2(v134) ^ 0x21u)) - 150430535;
  v136 = *(v27 + 4 * (BYTE1(v134) ^ 0xDDu)) - 150430535;
  LODWORD(v42) = v136 ^ bswap32(*(v15 + 12)) ^ (v136 >> 1) ^ (v136 >> 4) ^ __ROR4__(v42 ^ (v42 >> 4) ^ (v42 >> 1) ^ 0x775362BA, 8);
  v137 = *(v27 + 4 * (HIBYTE(v134) ^ 0xBB)) - 150430535;
  LODWORD(v15) = v42 ^ __ROR4__(v135 ^ 0xA36FFB65 ^ (v135 >> 4) ^ (v135 >> 1), 24) ^ __ROR4__(v137 ^ 0xADAFC37E ^ (v137 >> 4) ^ (v137 >> 1), 16);
  v112[3] = v15 ^ 0x7D643FFF;
  v138 = *(v35 + 4 * (v133 ^ 7u));
  LODWORD(v42) = *(v35 + 4 * (BYTE2(v133) ^ 0xC5u));
  v139 = *(v35 + 4 * (HIBYTE(v133) ^ 0x22)) ^ ((*(v35 + 4 * (HIBYTE(v133) ^ 0x22)) ^ 0x3E300803u) >> 5) ^ ((*(v35 + 4 * (HIBYTE(v133) ^ 0x22)) ^ 0x3E300803u) >> 4);
  v140 = *(v35 + 4 * (BYTE1(v133) ^ 0x79u)) ^ 0x3E300803;
  LODWORD(v42) = v140 ^ (v140 >> 5) ^ (v140 >> 4) ^ __ROR4__(v138 ^ 0x48E6B3F0 ^ ((v138 ^ 0x3E300803u) >> 5) ^ ((v138 ^ 0x3E300803u) >> 4), 8) ^ __ROR4__(v42 ^ ((v42 ^ 0x3E300803) >> 5) ^ ((v42 ^ 0x3E300803) >> 4) ^ 0x30E6BDD1, 24);
  v141 = *(v40 + 4 * (BYTE1(v15) ^ 0x27u)) ^ __ROR4__(*(v40 + 4 * (v15 ^ 0x6Eu)) ^ 0xB5048B5, 8) ^ __ROR4__(*(v40 + 4 * (BYTE2(v15) ^ 0x6Fu)) ^ 0x72504ADC, 24);
  LODWORD(STACK[0x3B78]) = v15 ^ 0x7D643FFF;
  v142 = v141 ^ __ROR4__(*(v40 + 4 * (((v15 ^ 0x7D643FFF) >> 24) ^ 0xAB)) ^ 0x6250485D, 16);
  STACK[0x3568] = v100;
  v143 = v100 + v121;
  LODWORD(v42) = v42 ^ __ROR4__(v139 ^ 0x3AE6BDA9, 16);
  STACK[0x3B90] = v110;
  v144 = v122 + v110;
  v145 = v144 ^ v101;
  v146 = v132 + v144;
  v147 = (((v143 ^ v103) + 2041459064 + v126) ^ ((v143 ^ v103) + 2041459064) ^ v142 ^ 0x6506F22B ^ v42) - (((v143 ^ v103) + 2041459064 + v126) ^ ((v143 ^ v103) + 2041459064) ^ v142 ^ 0x5DD04A90);
  LODWORD(v42) = v42 ^ 0x38D6B8BB;
  v148 = v42 ^ (v145 + 2041459064);
  STACK[0x3D98] = v148;
  LODWORD(v42) = (((v42 ^ (v145 + 2041459064 + v102)) - (v145 + 2041459064 + v102)) ^ (v148 - (v145 + 2041459064)) ^ v147) - v146;
  v59[1878] = (v142 ^ 0x5DD04A90) + v127 + v143;
  LODWORD(STACK[0x3B80]) = v134;
  v149 = STACK[0x3E18];
  v150 = STACK[0x3E18] + 4;
  v59[3487] = v42;
  v151 = *(v10 + 8 * ((491 * (v149 > 0xB)) ^ LODWORD(STACK[0x3D90])));
  STACK[0x3E18] = v150;
  return v151();
}

uint64_t sub_100D8DE30()
{
  v4 = STACK[0x3D18];
  *(v4 + 102) = bswap32(v2) >> 16;
  *(v4 + 100) = v2 >> ((v0 + 121) ^ 7);
  v5 = LODWORD(STACK[0x3E18]) > v1;
  *(v4 + 101) = BYTE2(v2);
  return (*(v3 + 8 * (v5 ^ v0)))();
}

uint64_t sub_100D8DE90()
{
  v2 = *(v1 + 8 * v0);
  v3 = STACK[0x3E38];
  LODWORD(STACK[0x3D88]) = STACK[0x3E38];
  LODWORD(STACK[0x3D38]) = v3;
  return v2();
}

uint64_t sub_100D8DEB4()
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  v2 = *(v1 + 8 * (v0 - 22266));
  LODWORD(STACK[0x3CF0]) = 37;
  LODWORD(STACK[0x3D88]) = 2;
  v3 = STACK[0x3E0];
  STACK[0x3D40] = STACK[0x3E0];
  v4 = STACK[0x2618];
  STACK[0x3D78] = STACK[0x2618];
  STACK[0x3B20] = v3;
  STACK[0x3B18] = v4;
  STACK[0x3818] = LODWORD(STACK[0x3988]);
  LODWORD(STACK[0x1204]) = STACK[0x39A0];
  LODWORD(STACK[0x2134]) = STACK[0x36B8];
  v5 = STACK[0x3820];
  LODWORD(STACK[0x3688]) = STACK[0x2B30];
  LODWORD(STACK[0x3858]) = STACK[0x2B40];
  LODWORD(STACK[0x3B00]) = v5;
  LODWORD(STACK[0x1954]) = STACK[0x2B70];
  LODWORD(STACK[0x1A78]) = STACK[0x3268];
  LODWORD(STACK[0x3AE8]) = STACK[0x3998];
  LODWORD(STACK[0x3AE0]) = STACK[0x2B60];
  LODWORD(STACK[0x3810]) = STACK[0x2B28];
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v2();
}

uint64_t sub_100D8E040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, int a5@<W8>)
{
  LODWORD(STACK[0x2AC8]) = 0;
  LODWORD(STACK[0x2AB0]) = 0;
  LODWORD(STACK[0x2AA8]) = 0;
  LODWORD(STACK[0x2AF0]) = 0;
  LODWORD(STACK[0x2B00]) = 0;
  LODWORD(STACK[0x2AE8]) = 0;
  LODWORD(STACK[0x2AE0]) = 0;
  LODWORD(STACK[0x2B18]) = 0;
  LODWORD(STACK[0x2AC0]) = 0;
  LODWORD(STACK[0x8F0]) = 0;
  LODWORD(STACK[0x868]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x870]) = 0;
  LODWORD(STACK[0x878]) = 0;
  LODWORD(STACK[0x2B10]) = 0;
  LODWORD(STACK[0x2AD0]) = 0;
  LODWORD(STACK[0x880]) = 0;
  LODWORD(STACK[0x888]) = 0;
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x890]) = 0;
  LODWORD(STACK[0x898]) = 0;
  LODWORD(STACK[0x2AD8]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8A0]) = 0;
  LODWORD(STACK[0x8A8]) = 0;
  LODWORD(STACK[0x910]) = 0;
  LODWORD(STACK[0x8B0]) = 0;
  LODWORD(STACK[0x8B8]) = 0;
  v6 = (a5 + 9356) | 0x28Au;
  v7 = *(v5 + 8 * ((1579 * (LODWORD(STACK[0x2C20]) == v6 - 21115)) ^ a5));
  LODWORD(STACK[0x2BB0]) = STACK[0x2238];
  LODWORD(STACK[0x39A8]) = STACK[0x1AA8];
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  v8 = STACK[0x21F4];
  LODWORD(STACK[0x3438]) = STACK[0x21F4];
  LODWORD(STACK[0x2B60]) = v8;
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  v9 = STACK[0x1954];
  LODWORD(STACK[0x2B70]) = STACK[0x1954];
  LODWORD(STACK[0x3280]) = v9;
  v10 = STACK[0x32E8];
  LODWORD(STACK[0x3298]) = STACK[0x32E8];
  LODWORD(STACK[0x3B00]) = v10;
  LODWORD(STACK[0x3290]) = v10;
  v11 = LODWORD(STACK[0x3830]);
  STACK[0x3D90] = v11;
  LODWORD(STACK[0x32D0]) = v11;
  v12 = STACK[0x1A78];
  LODWORD(STACK[0x3268]) = STACK[0x1A78];
  LODWORD(STACK[0x3288]) = v12;
  v13 = STACK[0x2500];
  LODWORD(STACK[0x2B40]) = STACK[0x2500];
  LODWORD(STACK[0x3998]) = v13;
  LODWORD(STACK[0x3AE8]) = v13;
  v14 = STACK[0x3E18];
  LODWORD(STACK[0x2B88]) = STACK[0x3E18];
  LODWORD(STACK[0x3AE0]) = v14;
  v15 = STACK[0x3810];
  LODWORD(STACK[0x2B28]) = STACK[0x3810];
  LODWORD(STACK[0x3260]) = v15;
  v16 = STACK[0x3318];
  LODWORD(STACK[0x2B98]) = STACK[0x3318];
  LODWORD(STACK[0x3278]) = v16;
  v17 = v16;
  LODWORD(STACK[0x2C20]) = 35;
  LODWORD(STACK[0x3988]) = 22;
  v18 = STACK[0x438];
  STACK[0x3D78] = STACK[0x2928];
  LODWORD(STACK[0x3D30]) = 1;
  LODWORD(STACK[0x3D38]) = 1;
  LODWORD(STACK[0x3D58]) = 1;
  LODWORD(STACK[0x3D28]) = 1;
  LODWORD(STACK[0x3D70]) = 1;
  LODWORD(STACK[0x2B80]) = 1;
  LODWORD(STACK[0x3B18]) = 1;
  LODWORD(STACK[0x3D40]) = 1;
  LODWORD(STACK[0x3D20]) = 1;
  LODWORD(STACK[0x32C8]) = 1;
  LODWORD(STACK[0x32A0]) = 1;
  LODWORD(STACK[0x32A8]) = 1;
  LODWORD(STACK[0x3B20]) = 1;
  LODWORD(STACK[0x32B0]) = 1;
  LODWORD(STACK[0x32B8]) = 1;
  LODWORD(STACK[0x918]) = 1;
  LODWORD(STACK[0x3CF0]) = 1;
  LODWORD(STACK[0x32C0]) = 1;
  LODWORD(STACK[0x800]) = 1;
  LODWORD(STACK[0x8C0]) = 1;
  LODWORD(STACK[0x808]) = 1;
  LODWORD(STACK[0x810]) = 1;
  LODWORD(STACK[0x2AF8]) = 1;
  LODWORD(STACK[0x2A90]) = 1;
  LODWORD(STACK[0x8C8]) = 1;
  LODWORD(STACK[0x818]) = 1;
  LODWORD(STACK[0x820]) = 1;
  LODWORD(STACK[0x8D0]) = 1;
  LODWORD(STACK[0x828]) = 1;
  LODWORD(STACK[0x830]) = 1;
  LODWORD(STACK[0x2A98]) = 1;
  LODWORD(STACK[0x8D8]) = 1;
  LODWORD(STACK[0x7F8]) = 1;
  LODWORD(STACK[0x838]) = 1;
  LODWORD(STACK[0x2B08]) = 1;
  LODWORD(STACK[0x2AA0]) = 1;
  LODWORD(STACK[0x8E0]) = 1;
  LODWORD(STACK[0x840]) = 1;
  LODWORD(STACK[0x848]) = 1;
  LODWORD(STACK[0x8E8]) = 1;
  LODWORD(STACK[0x850]) = 1;
  LODWORD(STACK[0x858]) = 1;
  LODWORD(STACK[0x860]) = 1;
  LODWORD(STACK[0x39A0]) = STACK[0x1204];
  LODWORD(STACK[0x3D48]) = STACK[0x1A90];
  LODWORD(STACK[0x3CE8]) = STACK[0x28CC];
  LODWORD(STACK[0x36B8]) = STACK[0x2134];
  LODWORD(STACK[0x2B30]) = STACK[0x3688];
  LODWORD(STACK[0x39E8]) = STACK[0x1BC8];
  STACK[0x3AF0] = v6;
  LODWORD(STACK[0x3B08]) = v6;
  v19 = STACK[0x3E0];
  STACK[0x32E0] = STACK[0x3E0];
  STACK[0x3D50] = v19;
  STACK[0x3AD8] = v19;
  STACK[0x32D8] = STACK[0x2618];
  LODWORD(STACK[0x3270]) = STACK[0x2B20];
  LODWORD(STACK[0x3980]) = 35;
  LODWORD(STACK[0x3258]) = STACK[0x2424];
  return v7(a1, 0, a2, v18, a3, a4, v17);
}

uint64_t sub_100D8E2FC()
{
  v3 = STACK[0x3D18];
  v4 = STACK[0x3D50];
  v3[11] = STACK[0x3D50];
  v3[9] = BYTE2(v4);
  v3[10] = BYTE1(v4);
  v5 = LODWORD(STACK[0x3E18]) <= v0;
  v6 = v4 >> ((v1 - 17) ^ 0xA0);
  LODWORD(STACK[0x3998]) = v6;
  v3[8] = v6;
  return (*(v2 + 8 * ((v5 * (v1 - 21934)) ^ v1)))();
}

uint64_t sub_100D8E360@<X0>(int a1@<W8>)
{
  v4 = v2 >> (((a1 - 52) & 0x7E) - 58);
  v5 = STACK[0x3D18];
  v5[26] = BYTE1(v2);
  LODWORD(STACK[0x39E0]) = v4;
  v5[24] = v4;
  v6 = LODWORD(STACK[0x3E18]) > v1;
  v5[25] = BYTE2(v2);
  v7 = v6;
  v5[27] = v2;
  return (*(v3 + 8 * ((20851 * v7) ^ a1)))();
}

uint64_t sub_100D8E3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v14 = (((a5 ^ 0x4870) - 7551) | 0x5286) ^ 0x529E;
  if (v11 >= v9)
  {
    v15 = v8;
  }

  else
  {
    v15 = v7;
  }

  v16 = v10 == v14;
  if (v10 == v14)
  {
    v17 = STACK[0x468];
  }

  else
  {
    v17 = STACK[0x10F8];
  }

  v18 = STACK[0x10D8];
  if (v10 == v14)
  {
    v18 = STACK[0x10F8];
  }

  STACK[0x3D88] = v18;
  if (v10 == v14)
  {
    v19 = a7;
  }

  else
  {
    v19 = STACK[0x37A0];
  }

  if (v16)
  {
    v20 = 3;
  }

  else
  {
    v20 = 5;
  }

  LODWORD(STACK[0x3D20]) = v20;
  v21 = STACK[0x3D38];
  if (v16)
  {
    v21 = v15;
  }

  LODWORD(STACK[0x1A70]) = v21;
  if (v16)
  {
    v22 = a7;
  }

  else
  {
    v22 = v15;
  }

  LODWORD(STACK[0x31D0]) = v22;
  v23 = *(v12 + 8 * (a5 ^ 0x4870));
  LODWORD(STACK[0x3D98]) = 2;
  STACK[0x3D60] = v17;
  STACK[0x11F0] = STACK[0x3B08];
  STACK[0x1208] = STACK[0x3D10];
  LODWORD(STACK[0x3688]) = STACK[0x32E0];
  STACK[0x11F8] = v13;
  STACK[0x3620] = LODWORD(STACK[0x3D28]);
  STACK[0x39C0] = v15;
  LODWORD(STACK[0x3D90]) = v15;
  LODWORD(STACK[0x3E40]) = v19;
  LODWORD(STACK[0x3D70]) = v19;
  return v23();
}

uint64_t sub_100D8E6E0()
{
  v1 = LODWORD(STACK[0x3D48]) - 8422;
  LODWORD(STACK[0x3D40]) = *STACK[0x3D80];
  return (*(v0 + 8 * v1))();
}

uint64_t sub_100D8E704()
{
  v2 = *(*STACK[0x3E40] + ((*v0 & ((STACK[0x42A8] & 0xFFFFFFF8 | LODWORD(STACK[0x42A0]) ^ 0x4567E7AE) - 1831847764 + (STACK[0x42A8] & 0x4567B130 | 0xBA984ECA) + 1)) & 0xFFFFFFFFFFFFFFF8));
  v3 = __ROR8__(STACK[0x42A8] & 0xFFFFFFFFFFFFFFF8, 8);
  v4 = (((2 * (v2 + v3)) & 0x16568A3844BB2388) - (v2 + v3) - 0xB2B451C225D91C5) ^ 0x367B8449E253D6DFLL;
  v5 = v4 ^ __ROR8__(v2, 61);
  v6 = (__ROR8__(v4, 8) + v5) ^ 0x65F254DD188DB4FCLL;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = __ROR8__(v6, 8);
  v9 = (0x54A0F56A69806FC7 - ((v8 + v7) | 0x54A0F56A69806FC7) + ((v8 + v7) | 0xAB5F0A95967F9038)) ^ 0xC4AF4C03F76682B5;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0xA1B29DC5D776132BLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xEF042041F5E548ECLL;
  v14 = __ROR8__(v13, 8);
  v15 = v13 ^ __ROR8__(v12, 61);
  v16 = (v14 + v15) ^ 0xD8C7B31FCA19D9DELL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((2 * (v18 + v17)) | 0xDE36CD6219FA5ABELL) - (v18 + v17) + 0x10E4994EF302D2A1) ^ 0xBB4E679F864CEED0;
  LODWORD(v17) = 1901666271 * ((((__ROR8__(v19, 8) + (v19 ^ __ROR8__(v17, 61))) ^ 0x6F4F60BC0E025EE0) >> (8 * (STACK[0x42A8] & 7u))) ^ LOBYTE(STACK[0x3F17]));
  v20 = STACK[0x4290];
  v21 = (v17 ^ LODWORD(STACK[0x4288])) + v20 - (((v17 ^ LODWORD(STACK[0x4288])) + v20) >> 16);
  v22 = v21 - (v21 >> 8);
  LODWORD(v19) = STACK[0x4280];
  LODWORD(v14) = v22 + 1967795678;
  v23 = STACK[0x428C];
  v24 = v22 - 359375940;
  v25 = STACK[0x4284];
  LODWORD(v17) = (v24 ^ v17) + v20 - (((v24 ^ v17) + v20) >> 16);
  LODWORD(v17) = v17 - (v17 >> 8);
  LODWORD(STACK[0x42B0]) = v17;
  v26 = v17 ^ v19 ^ v22;
  LODWORD(STACK[0x42B4]) = v26;
  LODWORD(v19) = (v17 + 1967795678) ^ v23 ^ v14;
  LODWORD(STACK[0x42B8]) = v19;
  ++v20;
  LODWORD(v17) = v17 - 359375940;
  LODWORD(v14) = v17 ^ v25 ^ v24;
  LODWORD(STACK[0x42BC]) = v14;
  v27 = *(v1 + 8 * (LODWORD(STACK[0x42A4]) ^ (8 * (v20 == STACK[0x6CB0]))));
  LODWORD(STACK[0x4264]) = STACK[0x429C];
  STACK[0x4268] = v20;
  LODWORD(STACK[0x4270]) = v19;
  LODWORD(STACK[0x4274]) = v17;
  LODWORD(STACK[0x4278]) = v14;
  LODWORD(STACK[0x427C]) = v26;
  return v27();
}

uint64_t sub_100D8EA04(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = v10 ^ (2 * (v10 & STACK[0x3908]));
  v12 = v10 ^ ((v10 & STACK[0x3618]) >> 1);
  v13 = v12 << STACK[0x3E30];
  *(STACK[0x3A90] + ((((v11 & STACK[0x3E40]) >> STACK[0x3D58]) | (v11 << STACK[0x3D60])) ^ LODWORD(STACK[0x38D8]))) = (((v12 & v9) >> v6) + v13) ^ LODWORD(STACK[0x35F0]);
  LODWORD(v11) = ((*(STACK[0x35E0] + 4 * v10) & STACK[0x3608]) >> a3) ^ *(STACK[0x35E0] + 4 * v10);
  LODWORD(v12) = ((((v12 & STACK[0x3628]) >> v6) + v13) ^ LODWORD(STACK[0x34F8]));
  *(STACK[0x3AB8] + 4 * v12) = (((v11 & v9) >> STACK[0x3E20]) + ((v11 & STACK[0x3508]) << STACK[0x3E28])) ^ LODWORD(STACK[0x3328]);
  *(STACK[0x3AB0] + 4 * v12) = *(STACK[0x3738] + v10) ^ LODWORD(STACK[0x3320]);
  return (*(v8 + 8 * (((v10 == 255) * a6) ^ v7)))();
}

uint64_t sub_100D8EB04@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 - 8943));
  LODWORD(STACK[0x3860]) = v1;
  return v3();
}

uint64_t sub_100D8EB24(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  if (a3 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = a3;
  }

  return (*(v5 + 8 * ((v6 < (a4 ^ 0x42E) + (a4 ^ 0x715Bu) - 30081) | a4)))();
}

uint64_t sub_100D8EB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  STACK[0x3840] = v5 >> 5;
  v8 = LODWORD(STACK[0x3E18]) != 0;
  STACK[0x39F0] = (((v6 - 23545) | 0x3E0) ^ 0x1BC8) - (v5 & 0x1F);
  return (*(v7 + 8 * ((2 * v8) | (8 * v8) | v6)))(a1, a2, a3, a4, a5, 0);
}

uint64_t sub_100D8EBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  STACK[0x3878] = *(v10 + LODWORD(STACK[0x3798]));
  LODWORD(STACK[0x3798]) = a7 + 20;
  v11 = *(v8 + 8 * (((v9 != ((v7 - 13281) | 0x450) - 18012) * (v7 - 30191)) ^ v7));
  LODWORD(STACK[0x3D58]) = 20;
  STACK[0x38B0] = 128;
  return v11(a1, a2, 0);
}

uint64_t sub_100D8EC58()
{
  v6 = LOBYTE(STACK[0x4E9D]);
  v7 = *STACK[0x63A8] ^ (2 * (v6 & *STACK[0x63A8]));
  v8 = LOBYTE(STACK[0x4E9F]);
  v9 = *STACK[0x63C8] ^ (2 * (v8 & *STACK[0x63C8]));
  v10 = *STACK[0x63D0] ^ (2 * (v6 & *STACK[0x63D0]));
  v11 = *STACK[0x63D8] ^ (2 * (v6 & *STACK[0x63D8]));
  v12 = *STACK[0x63E0] ^ (2 * (v8 & *STACK[0x63E0]));
  STACK[0x3D80] = *STACK[0x63E8] ^ (2 * (v6 & *STACK[0x63E8]));
  STACK[0x3D70] = *STACK[0x63F0] ^ (2 * (v8 & *STACK[0x63F0]));
  STACK[0x3D68] = *STACK[0x63F8] ^ (2 * (v6 & *STACK[0x63F8]));
  STACK[0x3D48] = *STACK[0x6400] ^ (2 * (v8 & *STACK[0x6400]));
  STACK[0x3D40] = *STACK[0x6408] ^ (2 * (v6 & *STACK[0x6408]));
  STACK[0x3D38] = *STACK[0x6410] ^ (2 * (v8 & *STACK[0x6410]));
  STACK[0x3D30] = *STACK[0x6420] ^ (2 * (v8 & *STACK[0x6420]));
  STACK[0x3D28] = *STACK[0x6428] ^ (2 * (v8 & *STACK[0x6428]));
  v13 = *STACK[0x6438] ^ (2 * (v6 & *STACK[0x6438]));
  STACK[0x3D98] = *STACK[0x6430] ^ (2 * (v8 & *STACK[0x6430]));
  STACK[0x3D20] = *STACK[0x6440] ^ (2 * (v6 & *STACK[0x6440]));
  STACK[0x3D10] = *STACK[0x6448] ^ (2 * (v8 & *STACK[0x6448]));
  STACK[0x3E18] = *STACK[0x6450] ^ (2 * (v6 & *STACK[0x6450]));
  STACK[0x3CF0] = *STACK[0x6460] ^ (2 * (v6 & *STACK[0x6460]));
  STACK[0x3CE8] = *STACK[0x6468] ^ (2 * (v6 & *STACK[0x6468]));
  STACK[0x3CE0] = *STACK[0x6470] ^ (2 * (v8 & *STACK[0x6470]));
  STACK[0x3CD8] = *STACK[0x6478] ^ (2 * (v8 & *STACK[0x6478]));
  STACK[0x3CD0] = *STACK[0x6488] ^ (2 * (v6 & *STACK[0x6488]));
  STACK[0x3D90] = *STACK[0x6490] ^ (2 * (v8 & *STACK[0x6490]));
  STACK[0x3CC8] = *STACK[0x6498] ^ (2 * (v6 & *STACK[0x6498]));
  v14 = LODWORD(STACK[0x3D78]);
  v15 = STACK[0x4EA0];
  STACK[0x3D78] = *(STACK[0x4EA0] + (v14 >> 24)) ^ (2 * (v8 & *(STACK[0x4EA0] + (v14 >> 24))));
  v16 = LODWORD(STACK[0x3D88]);
  STACK[0x3D88] = *(v15 + (v16 >> 24)) ^ (2 * (v6 & *(v15 + (v16 >> 24))));
  STACK[0x3CC0] = *(v15 + BYTE2(v16)) ^ (2 * (v8 & *(v15 + BYTE2(v16))));
  v17 = *(v15 + BYTE1(v16));
  STACK[0x3CB8] = *(v15 + BYTE1(v14)) ^ (2 * (v6 & *(v15 + BYTE1(v14))));
  STACK[0x3CA8] = v17 ^ (2 * (v8 & v17));
  STACK[0x3CA0] = *(v15 + v16) ^ (2 * (v6 & *(v15 + v16)));
  v18 = *(v15 + (v4 >> 24));
  STACK[0x3C90] = v18 ^ (2 * (v6 & v18));
  v19 = LODWORD(STACK[0x3E38]);
  STACK[0x3E38] = *(v15 + (v19 >> 24)) ^ (2 * (v8 & *(v15 + (v19 >> 24))));
  STACK[0x3C60] = *(v15 + BYTE2(v4)) ^ (2 * (v6 & *(v15 + BYTE2(v4))));
  STACK[0x3C10] = *(v15 + BYTE2(v19)) ^ (2 * (v8 & *(v15 + BYTE2(v19))));
  STACK[0x3C08] = *(v15 + BYTE1(v19)) ^ (2 * (v8 & *(v15 + BYTE1(v19))));
  LODWORD(v19) = *(v15 + v19);
  STACK[0x3C00] = *(v15 + v4) ^ (2 * (v8 & *(v15 + v4)));
  STACK[0x3BF8] = v19 ^ (2 * (v6 & v19));
  v20 = BYTE1(v3);
  LODWORD(v19) = *(v15 + (v3 >> 24));
  v21 = *(v15 + (v2 >> 24));
  STACK[0x3BE8] = v19 ^ (2 * (v8 & v19));
  STACK[0x3BF0] = v21 ^ (2 * (v6 & v21));
  STACK[0x3BD8] = *(v15 + BYTE2(v3)) ^ (2 * (v6 & *(v15 + BYTE2(v3))));
  STACK[0x3BD0] = *(v15 + BYTE2(v2)) ^ (2 * (v8 & *(v15 + BYTE2(v2))));
  STACK[0x3BC0] = *(v15 + v3) ^ (2 * (v6 & *(v15 + v3)));
  STACK[0x3B60] = *(v15 + BYTE1(v2)) ^ (2 * (v8 & *(v15 + BYTE1(v2))));
  STACK[0x3BB0] = *(v15 + v2) ^ (2 * (v8 & *(v15 + v2)));
  v22 = v5;
  v23 = v5 >> 24;
  STACK[0x3C80] = v23;
  STACK[0x3B98] = *(v15 + v23) ^ (2 * (v6 & *(v15 + v23)));
  STACK[0x3BA0] = v1;
  LODWORD(v23) = *(v15 + (v1 >> 24));
  LODWORD(v19) = *(v15 + BYTE2(v5));
  STACK[0x3B90] = v23 ^ (2 * (v8 & v23));
  STACK[0x3B88] = v19 ^ (2 * (v6 & v19));
  STACK[0x3B70] = *(v15 + BYTE2(v1)) ^ (2 * (v8 & *(v15 + BYTE2(v1))));
  STACK[0x3BA8] = *(v15 + BYTE1(v5)) ^ (2 * (v6 & *(v15 + BYTE1(v5))));
  LODWORD(v23) = *STACK[0x63B0];
  STACK[0x23D0] = v8 & v23;
  v24 = LOBYTE(STACK[0x4E9E]);
  v25 = STACK[0x5338];
  v26 = STACK[0x5350];
  LODWORD(v19) = (((v23 ^ (2 * (v8 & v23))) & v24) >> STACK[0x5350]) + ((v23 ^ (2 * (v8 & v23))) << STACK[0x5338]);
  v27 = LOBYTE(STACK[0x4E9C]);
  v28 = STACK[0x5328];
  v29 = STACK[0x5320];
  v30 = v7 << STACK[0x5320];
  STACK[0x3C70] = v30;
  v31 = STACK[0x52A4];
  STACK[0x2670] = LODWORD(STACK[0x52A4]) ^ (((v7 & v27) >> v28) + v30) ^ v19;
  LODWORD(v19) = *STACK[0x63B8];
  v32 = v8 & v19;
  STACK[0x2108] = v32;
  v33 = v19 ^ (2 * v32);
  STACK[0x20F8] = v33;
  LODWORD(v32) = *STACK[0x63C0];
  STACK[0x23C8] = 2 * (v6 & v32);
  LODWORD(STACK[0x3D60]) = (((((2 * (v6 & v32)) ^ v32) & v24) >> v26) | (((2 * (v6 & v32)) ^ v32) << v25)) ^ (((v33 & v27) >> v28) | (v33 << v29));
  v34 = STACK[0x63A4];
  LODWORD(STACK[0x3D58]) = LODWORD(STACK[0x63A4]) ^ (v9 << v25) ^ ((v9 & v24) >> v26) ^ (((v10 & v27) >> v28) + (v10 << v29));
  v35 = v12 & v27;
  STACK[0x3BB8] = v35;
  STACK[0x3640] = ((v11 & v24) >> v26) ^ (v11 << v25) ^ (v12 << v29) ^ (v35 >> v28) ^ v31;
  v36 = STACK[0x3D80];
  v37 = STACK[0x3D70];
  STACK[0x3D80] = v37 & v27;
  LODWORD(STACK[0x3D50]) = (((v37 & v27) >> v26) | (v37 << v25)) ^ ((v36 << v29) | ((v36 & v24) >> v28));
  LODWORD(STACK[0x3B68]) = ((STACK[0x3D68] & v27) >> v26) | (STACK[0x3D68] << v29);
  LODWORD(STACK[0x3D70]) = ((STACK[0x3D48] & v24) >> v28) ^ (STACK[0x3D48] << v25);
  v38 = STACK[0x3D40];
  v39 = STACK[0x3D38];
  v40 = (v39 & v24) >> v28;
  STACK[0x3C78] = v40;
  STACK[0x2640] = v31 ^ (((v38 & v27) >> v26) + (v38 << v25)) ^ (v40 | (v39 << v29));
  LODWORD(v38) = *STACK[0x6418];
  STACK[0x2748] = v6 & v38;
  LODWORD(STACK[0x3D48]) = v34 ^ ((((v38 ^ (2 * (v6 & v38))) & v27) >> v28) + ((v38 ^ (2 * (v6 & v38))) << v25)) ^ (((STACK[0x3D30] & v24) >> v26) + (STACK[0x3D30] << v29));
  v41 = STACK[0x3D28];
  STACK[0x3D68] = v41 & v24;
  STACK[0x2110] = v13;
  v42 = v13 & v27;
  v43 = v13 << v25;
  STACK[0x2180] = v42;
  STACK[0x2190] = v43;
  LODWORD(STACK[0x3D40]) = ((v42 >> v28) | v43) ^ (((v41 & v24) >> v26) | (v41 << v29));
  LODWORD(STACK[0x3D28]) = ((STACK[0x3D20] & v27) >> v28) | (STACK[0x3D20] << v29);
  STACK[0x2590] = v31 ^ (STACK[0x3D10] << v29) ^ ((STACK[0x3D10] & v27) >> v28);
  v44 = STACK[0x3CF0];
  v45 = *STACK[0x6458];
  STACK[0x2578] = v45;
  LODWORD(STACK[0x3C18]) = v34 ^ (((v44 & v24) >> v26) + (v44 << v29)) ^ (((v27 & (v45 ^ (2 * (v8 & v45)))) >> v28) | ((v45 ^ (2 * (v8 & v45))) << v25));
  v46 = STACK[0x3CE8];
  STACK[0x3D20] = v46 & v24;
  LODWORD(STACK[0x3D38]) = ((v46 & v24) >> v26) ^ (v46 << v29);
  v47 = ((STACK[0x3CE0] & v27) >> v28) | (STACK[0x3CE0] << v25);
  v48 = STACK[0x3CD8];
  LODWORD(v39) = *STACK[0x6480];
  v49 = 2 * (v6 & v39);
  STACK[0x20B0] = v49;
  STACK[0x3D10] = v49 ^ v39;
  STACK[0x3B78] = v31 ^ (((v48 & v27) >> v28) + (v48 << v29)) ^ ((((2 * (v6 & v39)) ^ v39) << v25) + ((v24 & ((2 * (v6 & v39)) ^ v39)) >> v26));
  LODWORD(STACK[0x3D30]) = ((v24 & STACK[0x3CD0]) >> v28) + (STACK[0x3CD0] << v25);
  LODWORD(v48) = *STACK[0x64A0];
  STACK[0x23C0] = 2 * (v8 & v48);
  STACK[0x3630] = v31 ^ (((((2 * (v8 & v48)) ^ v48) & v24) >> v28) + (((2 * (v8 & v48)) ^ v48) << v25)) ^ ((v27 & STACK[0x3CC8]) >> v26) ^ (STACK[0x3CC8] << v29);
  LODWORD(STACK[0x3D88]) = ((STACK[0x3D78] & v27) >> v28) ^ (STACK[0x3D78] << v29) ^ (STACK[0x3D88] << v25) ^ ((STACK[0x3D88] & v24) >> v26) ^ v31;
  LODWORD(v48) = *(v15 + BYTE2(v14));
  STACK[0x28F0] = 2 * (v6 & v48);
  STACK[0x2890] = ((((2 * (v6 & v48)) ^ v48) & v27) >> v26) ^ (((2 * (v6 & v48)) ^ v48) << v25) ^ (STACK[0x3CC0] << v29) ^ ((STACK[0x3CC0] & v24) >> v28) ^ v31;
  LODWORD(STACK[0x3D78]) = v31 ^ (STACK[0x3CB8] << v25) ^ ((STACK[0x3CB8] & v24) >> v26) ^ (((STACK[0x3CA8] & v27) >> v28) + (STACK[0x3CA8] << v29));
  LODWORD(v48) = *(v15 + v14);
  STACK[0x3C88] = v8 & v48;
  STACK[0x26A0] = (((v48 ^ (2 * (v8 & v48))) & v27) >> v28) ^ ((v48 ^ (2 * (v8 & v48))) << v29) ^ (STACK[0x3CA0] << v25) ^ ((STACK[0x3CA0] & v24) >> v26) ^ v31;
  LODWORD(STACK[0x3E38]) = v34 ^ (((STACK[0x3E38] & v24) >> v28) | (STACK[0x3E38] << v29)) ^ ((v27 & STACK[0x3C90]) >> v26) ^ (STACK[0x3C90] << v25);
  LODWORD(STACK[0x3CF0]) = v31 ^ (STACK[0x3C60] << v29) ^ ((STACK[0x3C60] & v24) >> v28) ^ (((STACK[0x3C10] & v27) >> v26) + (STACK[0x3C10] << v25));
  LODWORD(v48) = *(v15 + BYTE1(v4));
  STACK[0x23D8] = v6 & v48;
  LODWORD(STACK[0x3CE8]) = ((v27 & (v48 ^ (2 * (v6 & v48)))) >> v26) ^ ((v48 ^ (2 * (v6 & v48))) << v29) ^ v31 ^ (((STACK[0x3C08] & v24) >> v28) | (STACK[0x3C08] << v25));
  LODWORD(STACK[0x3CE0]) = ((STACK[0x3C00] & v24) >> v28) ^ (STACK[0x3C00] << v29) ^ (((STACK[0x3BF8] & v27) >> v26) | (STACK[0x3BF8] << v25)) ^ v34;
  LODWORD(STACK[0x3CD8]) = v34 ^ (((STACK[0x3BE8] & v24) >> v26) + (STACK[0x3BE8] << v25)) ^ (((v27 & STACK[0x3BF0]) >> v28) | (STACK[0x3BF0] << v29));
  v50 = ((STACK[0x3BD0] & v24) >> v28) + (STACK[0x3BD0] << v29);
  STACK[0x27A0] = (v6 & *(v15 + v20));
  STACK[0x3BF8] = (STACK[0x3B90] & v27) >> v28;
  v51 = ((STACK[0x3B70] & v24) >> v28) | (STACK[0x3B70] << v29);
  LODWORD(v49) = LODWORD(STACK[0x3B68]) ^ v34;
  v52 = STACK[0x3D98];
  STACK[0x3BF0] = v52 << v25;
  LODWORD(v39) = (((v24 & v52) >> v26) + (v52 << v25)) ^ v34;
  STACK[0x3B20] = v51;
  v53 = STACK[0x3BA0];
  STACK[0x2998] = 2 * (v8 & *(v15 + BYTE1(STACK[0x3BA0])));
  STACK[0x3720] = LODWORD(STACK[0x3D40]) ^ v31;
  STACK[0x3C60] = v47;
  STACK[0x3BC0] = LODWORD(STACK[0x3D38]) ^ v47 ^ v31;
  v54 = LODWORD(STACK[0x3D30]) ^ v31;
  STACK[0x3B00] = (STACK[0x3BA8] & v27) >> v28;
  LOBYTE(v34) = *(v15 + v22) ^ (2 * (v6 & *(v15 + v22)));
  v55 = STACK[0x3E18];
  v56 = (v55 & v24) >> v26;
  v57 = STACK[0x3D90];
  v58 = (v34 & v24);
  v59 = v34 << v29;
  v60 = v57 << v29;
  v61 = (*(v15 + v53) ^ (2 * (v8 & *(v15 + v53))));
  v62 = (v58 >> v26) ^ v59 ^ (((v61 & v27) >> v28) | (v61 << v25)) ^ LODWORD(STACK[0x52C0]);
  STACK[0x2678] = v50;
  STACK[0x24A0] = STACK[0x3BB8];
  STACK[0x25D8] = STACK[0x3D80];
  LODWORD(STACK[0x3D40]) = v49;
  LODWORD(STACK[0x3D30]) = LODWORD(STACK[0x3D70]) ^ v49;
  STACK[0x23F0] = STACK[0x3D68];
  LODWORD(STACK[0x3D38]) = v39;
  LODWORD(STACK[0x3D28]) ^= v39;
  STACK[0x3AF0] = v56;
  STACK[0x2740] = v56 ^ (v55 << v25) ^ STACK[0x2590];
  STACK[0x2028] = STACK[0x3D20];
  STACK[0x1C60] = HIDWORD(STACK[0x6C30]);
  STACK[0x2568] = STACK[0x3D10];
  STACK[0x3B08] = v60;
  STACK[0x23E0] = v54;
  STACK[0x3CE0] = (((v57 & v27) >> v26) | v60) ^ v54;
  STACK[0x24C8] = STACK[0x3B60];
  STACK[0x2560] = v62;
  return (*(v0 + 8 * SLODWORD(STACK[0x3E40])))();
}

uint64_t sub_100D8FA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, int a5@<W8>)
{
  LODWORD(STACK[0x3D30]) = 0;
  LODWORD(STACK[0x2AC8]) = 0;
  LODWORD(STACK[0x2AB0]) = 0;
  LODWORD(STACK[0x3D38]) = 0;
  LODWORD(STACK[0x2AA8]) = 0;
  LODWORD(STACK[0x2AF0]) = 0;
  LODWORD(STACK[0x2B00]) = 0;
  LODWORD(STACK[0x3D28]) = 0;
  LODWORD(STACK[0x2AE0]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x2B80]) = 0;
  LODWORD(STACK[0x3B18]) = 0;
  LODWORD(STACK[0x3D40]) = 0;
  LODWORD(STACK[0x3D20]) = 0;
  LODWORD(STACK[0x32C8]) = 0;
  LODWORD(STACK[0x32A0]) = 0;
  LODWORD(STACK[0x32A8]) = 0;
  LODWORD(STACK[0x3B20]) = 0;
  LODWORD(STACK[0x32B0]) = 0;
  LODWORD(STACK[0x32B8]) = 0;
  LODWORD(STACK[0x918]) = 0;
  LODWORD(STACK[0x3CF0]) = 0;
  LODWORD(STACK[0x32C0]) = 0;
  LODWORD(STACK[0x800]) = 0;
  LODWORD(STACK[0x8C0]) = 0;
  LODWORD(STACK[0x808]) = 0;
  LODWORD(STACK[0x810]) = 0;
  LODWORD(STACK[0x2AF8]) = 0;
  LODWORD(STACK[0x2A90]) = 0;
  LODWORD(STACK[0x8C8]) = 0;
  LODWORD(STACK[0x818]) = 0;
  LODWORD(STACK[0x820]) = 0;
  LODWORD(STACK[0x8D0]) = 0;
  LODWORD(STACK[0x828]) = 0;
  LODWORD(STACK[0x830]) = 0;
  LODWORD(STACK[0x2A98]) = 0;
  LODWORD(STACK[0x8D8]) = 0;
  LODWORD(STACK[0x7F8]) = 0;
  LODWORD(STACK[0x838]) = 0;
  LODWORD(STACK[0x2B18]) = 0;
  LODWORD(STACK[0x2B08]) = 0;
  LODWORD(STACK[0x2AA0]) = 0;
  LODWORD(STACK[0x8E0]) = 0;
  LODWORD(STACK[0x840]) = 0;
  LODWORD(STACK[0x848]) = 0;
  LODWORD(STACK[0x8E8]) = 0;
  LODWORD(STACK[0x850]) = 0;
  LODWORD(STACK[0x858]) = 0;
  LODWORD(STACK[0x2AC0]) = 0;
  LODWORD(STACK[0x8F0]) = 0;
  LODWORD(STACK[0x860]) = 0;
  LODWORD(STACK[0x868]) = 0;
  LODWORD(STACK[0x8F8]) = 0;
  LODWORD(STACK[0x870]) = 0;
  LODWORD(STACK[0x878]) = 0;
  LODWORD(STACK[0x2B10]) = 0;
  LODWORD(STACK[0x2AD0]) = 0;
  LODWORD(STACK[0x880]) = 0;
  LODWORD(STACK[0x888]) = 0;
  LODWORD(STACK[0x900]) = 0;
  LODWORD(STACK[0x890]) = 0;
  LODWORD(STACK[0x898]) = 0;
  LODWORD(STACK[0x2AD8]) = 0;
  LODWORD(STACK[0x908]) = 0;
  LODWORD(STACK[0x8A0]) = 0;
  LODWORD(STACK[0x8A8]) = 0;
  LODWORD(STACK[0x910]) = 0;
  LODWORD(STACK[0x8B0]) = 0;
  LODWORD(STACK[0x8B8]) = 0;
  STACK[0x3840] = 0;
  v6 = STACK[0x2238] == 76;
  v7 = a5 ^ 0x2AE5;
  v8 = (v7 - 4104) | 0x509E;
  LODWORD(STACK[0x3B08]) = v8;
  v9 = v8 + (v7 ^ 0xFFFFA658);
  v10 = !v6;
  STACK[0x3AF0] = v7 ^ 0x4096u;
  v11 = *(v5 + 8 * ((v9 * v10) ^ v7));
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  v12 = STACK[0x1954];
  LODWORD(STACK[0x2B70]) = STACK[0x1954];
  LODWORD(STACK[0x3438]) = v12;
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  v13 = STACK[0x1C28];
  LODWORD(STACK[0x2B88]) = STACK[0x1C28];
  LODWORD(STACK[0x3B00]) = v13;
  v14 = STACK[0x32E8];
  LODWORD(STACK[0x3268]) = STACK[0x32E8];
  LODWORD(STACK[0x3488]) = v14;
  LODWORD(STACK[0x3280]) = v14;
  LODWORD(STACK[0x3290]) = v14;
  v15 = STACK[0x1A78];
  LODWORD(STACK[0x3298]) = STACK[0x1A78];
  LODWORD(STACK[0x3288]) = v15;
  v16 = STACK[0x2500];
  LODWORD(STACK[0x2B40]) = STACK[0x2500];
  LODWORD(STACK[0x3998]) = v16;
  LODWORD(STACK[0x3AE8]) = v16;
  v17 = STACK[0x21F4];
  LODWORD(STACK[0x2B60]) = STACK[0x21F4];
  LODWORD(STACK[0x3AE0]) = v17;
  v18 = STACK[0x3810];
  LODWORD(STACK[0x2B28]) = STACK[0x3810];
  LODWORD(STACK[0x3260]) = v18;
  v19 = STACK[0x3318];
  LODWORD(STACK[0x2B98]) = STACK[0x3318];
  LODWORD(STACK[0x3980]) = 108;
  LODWORD(STACK[0x2BB0]) = 77;
  LODWORD(STACK[0x3988]) = 75;
  LODWORD(STACK[0x3D58]) = 1;
  v20 = STACK[0x4A8];
  v21 = STACK[0x2928];
  STACK[0x3D78] = STACK[0x2928];
  LODWORD(STACK[0x2AE8]) = 1;
  LODWORD(STACK[0x39A0]) = STACK[0x1204];
  v22 = STACK[0x1A90];
  LODWORD(STACK[0x3D48]) = STACK[0x1A90];
  LODWORD(STACK[0x3CE8]) = STACK[0x28CC];
  LODWORD(STACK[0x36B8]) = STACK[0x2134];
  LODWORD(STACK[0x2B30]) = STACK[0x3688];
  v23 = STACK[0x1BC8];
  LODWORD(STACK[0x39E8]) = STACK[0x1BC8];
  STACK[0x32E0] = v21;
  STACK[0x3D50] = STACK[0x448];
  STACK[0x3AD8] = v20;
  STACK[0x32D8] = STACK[0x1BE8];
  LODWORD(STACK[0x3278]) = v23;
  LODWORD(STACK[0x3270]) = STACK[0x2B20];
  LODWORD(STACK[0x3258]) = v22;
  LODWORD(STACK[0x32D0]) = STACK[0x3D90];
  return v11(a1, 0, a2, v20, a3, a4, v19);
}

uint64_t sub_100D8FCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x3B08]) = v6 + 1328;
  v8 = *(v7 + 8 * ((166 * (LODWORD(STACK[0x2C20]) == ((v6 - 3310) | 0x121E) - 21114)) ^ v6));
  LODWORD(STACK[0x3980]) = 38;
  v9 = STACK[0x3E0];
  STACK[0x32E0] = STACK[0x3E0];
  STACK[0x3D50] = v9;
  STACK[0x3AD8] = v9;
  STACK[0x32D8] = STACK[0x2618];
  v10 = STACK[0x3318];
  LODWORD(STACK[0x3278]) = STACK[0x3318];
  v11 = STACK[0x32E8];
  LODWORD(STACK[0x3298]) = STACK[0x32E8];
  LODWORD(STACK[0x3270]) = STACK[0x2B20];
  LODWORD(STACK[0x39A8]) = STACK[0x1AA8];
  LODWORD(STACK[0x3B00]) = v11;
  LODWORD(STACK[0x3280]) = STACK[0x1954];
  LODWORD(STACK[0x3290]) = v11;
  LODWORD(STACK[0x3258]) = STACK[0x2424];
  LODWORD(STACK[0x32D0]) = STACK[0x3830];
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  LODWORD(STACK[0x3288]) = STACK[0x1A78];
  LODWORD(STACK[0x3AE8]) = STACK[0x2500];
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x3AE0]) = STACK[0x3E18];
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x3260]) = STACK[0x3810];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  return v8(a1, a2, a3, a4, a5, a6, v10);
}

uint64_t sub_100D8FEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  LODWORD(STACK[0x3E18]) = LODWORD(STACK[0x1188]) != 0;
  LODWORD(STACK[0x3D68]) = v25 ^ 0x7AC8;
  v27 = *(v26 + 8 * v25);
  LODWORD(STACK[0x3AE0]) = a5;
  LODWORD(STACK[0x49C]) = a2;
  STACK[0x480] = STACK[0x2B88];
  STACK[0x10F0] = STACK[0x3290];
  STACK[0x470] = a8;
  LODWORD(STACK[0x2BB0]) = v24;
  LODWORD(STACK[0x268C]) = a7;
  LODWORD(STACK[0x3268]) = STACK[0x32D8];
  STACK[0x2228] = LODWORD(STACK[0x2B80]);
  LODWORD(STACK[0x3710]) = STACK[0x3808];
  return v27(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_100D8FF30(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(v5 + 8 * ((((((v4 - 669) | 0x4092) ^ 0xFFFFB54D) + v4 + 918) * (a3 == v3)) ^ v4));
  LODWORD(STACK[0x3D98]) = 1;
  return v6();
}

uint64_t sub_100D8FFE4()
{
  v2 = *(*STACK[0x3E40] + (STACK[0x15B8] & *v0));
  v3 = (v2 + STACK[0x15B0] - ((2 * (v2 + STACK[0x15B0])) & 0x93863860B5ECF0AALL) - 0x363CE3CFA50987ABLL) ^ 0xB6C229A6507C0B1;
  v4 = v3 ^ __ROR8__(v2, 61);
  v5 = (__ROR8__(v3, 8) + v4) ^ 0x65F254DD188DB4FCLL;
  v6 = v5 ^ __ROR8__(v4, 61);
  v7 = (__ROR8__(v5, 8) + v6) ^ 0x6FF046966119128DLL;
  v8 = v7 ^ __ROR8__(v6, 61);
  v9 = (__ROR8__(v7, 8) + v8) ^ 0xA1B29DC5D776132BLL;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0xEF042041F5E548ECLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xD8C7B31FCA19D9DELL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (0xBA349CA83083A4F1 - ((v15 + v14) | 0xBA349CA83083A4F1) + ((v15 + v14) | 0x45CB6357CF7C5B0ELL)) ^ 0x119E627945CD9881;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = STACK[0x6C20];
  v20 = STACK[0x6C20];
  v21 = STACK[0x4EA0];
  LOBYTE(v17) = *(STACK[0x4EA0] + ((LOBYTE(STACK[0x3F17]) ^ (~(2 * BYTE3(v19)) + BYTE3(v19) + 0x80) ^ (((((v18 + v17) & 0xE93811F41E4A7C5FLL ^ 0x891811801A000858) + ((v18 + v17) ^ 0x70A2E87CE44AF4A7) - (((v18 + v17) ^ 0x70A2E87CE44AF4A7) & 0xE93811F41E4A7C5FLL)) ^ 0xF6D59934F402D618) >> STACK[0x1340])) ^ 0x7Fu));
  LOBYTE(v17) = v17 ^ (2 * (LOBYTE(STACK[0x4E9D]) & v17));
  v22 = v17 << STACK[0x5320];
  STACK[0x4810] = v22;
  LOBYTE(v17) = ((v17 & LOBYTE(STACK[0x4E9C])) >> STACK[0x5350]) + v22;
  LODWORD(v21) = *(v21 + LOBYTE(STACK[0x4800]));
  v23 = v21 ^ (2 * (LOBYTE(STACK[0x4E9F]) & v21));
  LOBYTE(v23) = ((v23 & LOBYTE(STACK[0x4E9E])) >> STACK[0x5328]) + (v23 << STACK[0x5338]);
  LOBYTE(STACK[0x481E]) = v23;
  LOBYTE(STACK[0x481F]) = BYTE4(v19);
  STACK[0x4820] = STACK[0x6C30] >> 40;
  *(STACK[0x3D18] + 1845) = v23 ^ LODWORD(STACK[0x52C0]) ^ v17;
  LOBYTE(STACK[0x482F]) = BYTE5(v20);
  v24 = *(v1 + 8 * (LODWORD(STACK[0x3B30]) ^ 0x286F));
  STACK[0x3F18] = STACK[0x1910];
  STACK[0x3F08] = v24;
  return (*(v1 + 8 * (LODWORD(STACK[0x3E08]) ^ 0x2EC5)))();
}

uint64_t sub_100D902E4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, unint64_t a59)
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  LODWORD(STACK[0x3B08]) = a1 + 13984;
  v60 = *(v59 + 8 * (((((a1 - 6514) | 0x5012) ^ 0x5764) * ((STACK[0x8B0] & 1) == 0)) ^ a1));
  LODWORD(STACK[0x3980]) = 3;
  LODWORD(STACK[0x3CF0]) = 7;
  LODWORD(STACK[0x3D88]) = 2;
  v61 = STACK[0x3CF8];
  STACK[0x32E0] = STACK[0x3CF8];
  STACK[0x3D50] = v61;
  STACK[0x3AD8] = a59;
  v62 = STACK[0x2618];
  STACK[0x32D8] = STACK[0x2618];
  STACK[0x3818] = LODWORD(STACK[0x3988]);
  LODWORD(STACK[0x1204]) = STACK[0x39A0];
  LODWORD(STACK[0x3278]) = STACK[0x2B98];
  LODWORD(STACK[0x1A90]) = STACK[0x3D48];
  LODWORD(STACK[0x3298]) = STACK[0x39A8];
  LODWORD(STACK[0x28CC]) = STACK[0x3CE8];
  LODWORD(STACK[0x3270]) = STACK[0x2B20];
  LODWORD(STACK[0x2134]) = STACK[0x36B8];
  LODWORD(STACK[0x3688]) = STACK[0x2B30];
  LODWORD(STACK[0x3858]) = STACK[0x2B40];
  LODWORD(STACK[0x3B00]) = STACK[0x2B88];
  LODWORD(v61) = STACK[0x3268];
  LODWORD(STACK[0x3288]) = STACK[0x3268];
  LODWORD(STACK[0x3AE8]) = STACK[0x3998];
  LODWORD(STACK[0x3AE0]) = STACK[0x2B60];
  LODWORD(STACK[0x3260]) = STACK[0x2B28];
  LODWORD(STACK[0x1954]) = STACK[0x2B70];
  LODWORD(STACK[0x1A78]) = v61;
  v63 = STACK[0x3820];
  LODWORD(STACK[0x3280]) = STACK[0x3820];
  LODWORD(STACK[0x3290]) = STACK[0x2100];
  LODWORD(STACK[0x3258]) = STACK[0x2424];
  LODWORD(STACK[0x32D0]) = STACK[0x3D90];
  LODWORD(STACK[0x1BC8]) = STACK[0x39E8];
  v64 = STACK[0x1160];
  STACK[0x3D40] = STACK[0x1160];
  STACK[0x3D78] = v62;
  STACK[0x3B20] = v64;
  STACK[0x3B18] = v62;
  LODWORD(STACK[0x3810]) = v63;
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v60();
}

uint64_t sub_100D90484@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W8>)
{
  *v5 = a2 | (*(a1 + (a3 ^ 0xFFFFFFFC) + v3) << 24);
  LODWORD(STACK[0x39A8]) += ((((2 * v4) ^ 0x7BB6) + 3743) | 0x100) ^ 0x2D0C;
  return (*(v6 + 8 * (v4 ^ (27239 * (a3 + 4 < v3)))))();
}

uint64_t sub_100D904E0()
{
  STACK[0x3CD0] = *(v2 + LODWORD(STACK[0x3E18]));
  LODWORD(STACK[0x3E18]) = v0 + 4;
  v5 = *(v4 + 8 * (((v1 == ((v3 - 5128) ^ 0x586B)) * ((v3 - 6617) ^ 0x5256)) ^ v3));
  STACK[0x3850] = 4;
  return v5();
}

uint64_t sub_100D905CC(uint64_t result)
{
  if ((v1 ^ 0xF5DD9DDF) + ((2 * v1) & 0xEBBB3BBE) == -170025505)
  {
    v2 = -143113071;
  }

  else
  {
    v2 = -143113091;
  }

  *(result + 28) = v2;
  return result;
}

uint64_t sub_100D9063C()
{
  v1 = LODWORD(STACK[0x3B10]) + 13850;
  STACK[0x3DC8] = 30 * (v1 ^ 0x64A3u);
  LODWORD(STACK[0x3978]) = v1 + 4093;
  v2 = (*(v0 + 8 * (v1 + 5596)))(STACK[0x3B58]);
  STACK[0x3EA0] = v2;
  v3 = LODWORD(STACK[0x3978]) ^ 0x24C9 ^ STACK[0x3DC8];
  LODWORD(STACK[0x3868]) = v1;
  return (*(v0 + 8 * (((v2 == 0) * v3) | v1)))();
}

uint64_t sub_100D906C0()
{
  STACK[0x8E8] = 0;
  STACK[0x818] = 0;
  LODWORD(STACK[0xA20]) = -769884012;
  return (*(v0 + 8 * (v1 + v1 - 1021 + 3823)))(503385689);
}

uint64_t sub_100D90790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = LODWORD(STACK[0x3E18]) > v4;
  *(STACK[0x3D18] + 44) = bswap32(STACK[0x3D90]);
  return (*(v6 + 8 * ((v7 * (v5 - 4373)) ^ v5)))(a1, a2, a3, a4, 0);
}

uint64_t sub_100D9087C()
{
  LODWORD(STACK[0x3760]) = 0;
  LODWORD(STACK[0x3B08]) = 0;
  LODWORD(STACK[0x3AE8]) = 0;
  v2 = STACK[0x3D50];
  LODWORD(STACK[0x35AC]) = LODWORD(STACK[0x3D50]) - 10098;
  v3 = *(v0 + 8 * v2);
  LODWORD(STACK[0x3CC8]) = v1;
  LODWORD(STACK[0x1958]) = STACK[0x3B00];
  LODWORD(STACK[0x32E0]) = STACK[0x1C30];
  LODWORD(STACK[0x3438]) = v1;
  LODWORD(STACK[0x32D0]) = STACK[0x1AD0];
  LODWORD(STACK[0x221C]) = STACK[0x1B50];
  LODWORD(STACK[0x35FC]) = STACK[0x3310];
  LODWORD(STACK[0x3970]) = STACK[0x3308];
  LODWORD(STACK[0x35F8]) = STACK[0x3300];
  return v3();
}

uint64_t sub_100D908E4(unsigned int a1)
{
  STACK[0x1C48] = STACK[0x3D28] >> 1;
  STACK[0x1AD8] = HIWORD(a1);
  v5 = *(v4 + 8 * (v3 + 14850));
  STACK[0x3D48] = STACK[0x36A0];
  STACK[0x3D60] = STACK[0x1848];
  STACK[0x3D88] = STACK[0x1840];
  STACK[0x3B20] = STACK[0x1A88];
  STACK[0x3CF0] = STACK[0x1A80];
  STACK[0x38B0] = STACK[0x3D90];
  STACK[0x2390] = STACK[0x3270];
  STACK[0x3788] = STACK[0x3D68];
  STACK[0x3488] = STACK[0x38B8];
  STACK[0x2380] = STACK[0x3278];
  STACK[0x12D0] = STACK[0x3D98];
  STACK[0x2318] = STACK[0x2A88];
  STACK[0x3388] = STACK[0x3A28];
  STACK[0x3800] = v2;
  STACK[0x12C8] = STACK[0x3948];
  STACK[0x12C0] = STACK[0x3D78];
  STACK[0x3940] = STACK[0x3D70];
  STACK[0x2388] = STACK[0x3280];
  STACK[0x1228] = STACK[0x3D58];
  STACK[0x20B8] = STACK[0x2A50];
  STACK[0x2C28] = STACK[0x3D80];
  STACK[0x2800] = STACK[0x3288];
  STACK[0x2398] = STACK[0x37A8];
  STACK[0x12D8] = STACK[0x2B38];
  STACK[0x1138] = v1;
  LODWORD(STACK[0x3AE0]) = STACK[0x12AC];
  LODWORD(STACK[0x3E40]) = STACK[0x38C8];
  LODWORD(STACK[0x28CC]) = STACK[0x3CE8];
  LODWORD(STACK[0x2134]) = STACK[0x36B8];
  LODWORD(STACK[0x3688]) = STACK[0x2B30];
  LODWORD(STACK[0x3D20]) = STACK[0x2038];
  LODWORD(STACK[0x2B90]) = STACK[0x39C0];
  LODWORD(STACK[0x2A48]) = STACK[0x2B48];
  LODWORD(STACK[0x3D90]) = STACK[0x12B4];
  LODWORD(STACK[0x2500]) = STACK[0x2B40];
  LODWORD(STACK[0x1C20]) = STACK[0x2B58];
  LODWORD(STACK[0x3CE8]) = STACK[0x3698];
  STACK[0x3420] = LODWORD(STACK[0x2B78]);
  LODWORD(STACK[0x3810]) = STACK[0x2B28];
  LODWORD(STACK[0x2630]) = STACK[0x2B50];
  STACK[0x2228] = LODWORD(STACK[0x2B68]);
  STACK[0x3318] = LODWORD(STACK[0x2B98]);
  LODWORD(STACK[0x3D70]) = STACK[0x2158];
  return v5();
}

uint64_t sub_100D90A80()
{
  v6 = STACK[0x42C0];
  LODWORD(STACK[0x42C4]) = STACK[0x42C0];
  LOBYTE(STACK[0x42CB]) = v0;
  v7 = (v2 + v4) >> 16;
  v8 = (v2 + v4 - v7) >> 8;
  v9 = v2 + v3;
  v10 = (v2 + v3 - v8 - v7) >> 15;
  v11 = (v9 + v10 - v8 - v7) >> 2;
  v12 = (v10 - v8 - v7 + v1 + v2 + v11 + ((v2 + v1 + v10 + v11 - v8 - v7) >> 14) - ((v2 + v1 + v10 + v11 + ((v2 + v1 + v10 + v11 - v8 - v7) >> 14) - v8 - v7) >> 3)) ^ 0xCFB953FC;
  v13 = (v12 - (v12 >> 13) + ((v12 - (v12 >> 13)) >> 6)) ^ 0xD880AAB3;
  v14 = v13 - (v13 >> 13) - ((v13 - (v13 >> 13)) >> 2) + 2119764986;
  LODWORD(STACK[0x42CC]) = v14 - (v14 >> 12) - ((v14 - (v14 >> 12)) >> 5);
  STACK[0x3F18] = STACK[0x1B98];
  STACK[0x3F08] = *(v5 + 8 * (v6 ^ 0x140E));
  return (*(v5 + 8 * (v6 + 3076)))();
}

uint64_t sub_100D92A28@<X0>(int a1@<W2>, int a2@<W4>, int a3@<W5>, int a4@<W6>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, int a58)
{
  v70 = (v61 + v67) >> 16;
  v71 = (v61 + v67 - v70) >> 8;
  v72 = v61 + v66 + v71;
  v73 = (v72 - v70) >> 14;
  v74 = v61 + v71 + v73;
  v75 = (v72 + v73 - v70) >> 6;
  v76 = *(v68 - 232);
  v77 = (v76 + v74 - v75 - v70 - v69) ^ v60;
  v78 = v74 + a5;
  v79 = (v74 + a5 - v75 - v70) >> 13;
  v80 = v74 + ((v78 - v79 - v75 - v70) >> 4);
  v81 = (v76 + v80 - v79 - v75 - v70 - v64) ^ a2;
  v82 = (v80 + v63 - v79 - v75 - v70) >> 8;
  v83 = (v80 + v63 - v82 - v79 - v75 - v70) >> 6;
  v84 = v76 + v80 - v83 - v82 - v79 - v75 - v70 - a1;
  v85 = v80 + a4;
  v86 = (v80 + a4 - v83 - v82 - v79 - v75 - v70) >> 15;
  v87 = v80 + v86;
  v88 = v85 + v86 - v83 - v82 - v79 - v75 - v70;
  v89 = v88 >> 3;
  v90 = v77 ^ (v76 + v87 - (v88 >> 3) - v83 - v82 - v79 - v75 - v70 - v62);
  v91 = v88 - (v88 >> 3) + 1755257154;
  v92 = v91 >> 9;
  v93 = v91 - (v91 >> 9);
  v94 = v87 + (v93 >> 6);
  v95 = v81 ^ (v76 + v94 - v89 - v83 - v82 - v79 - v75 - v70 - v92 - a3);
  v96 = (v93 >> 6) + v93 + 1564225671;
  v97 = v96 >> 15;
  v98 = (v96 >> 15) + v96;
  v99 = v94 + v97 + (v98 >> 8);
  v100 = v76 + v99 - v89 - v83 - v82 - v79 - v75 - v70 - v92 - v59;
  v101 = v76 + v99 + (((v98 >> 8) + v98 - 45917739 - (((v98 >> 8) + v98 - 45917739) >> 11)) >> 6) - v89 - v83 - v82 - v79 - v75 - v70 - (((v98 >> 8) + v98 - 45917739) >> 11) - v92 - v65;
  v102 = v90 ^ v101;
  v103 = (v101 ^ 0x53A041CE) + ((v101 ^ 0x53A041CEu) >> 8) - (((v101 ^ 0x53A041CE) + ((v101 ^ 0x53A041CEu) >> 8)) >> 5);
  v104 = v95 ^ v103;
  v105 = v102 & 0xFE ^ 0xAE;
  v106 = v84 ^ v58 ^ v100 ^ (v103 - 49524101 - ((v103 - 49524101) >> 14) + ((v103 - 49524101 - ((v103 - 49524101) >> 14)) >> 2));
  v107 = v102 ^ 0x9FE2E1AF;
  HIDWORD(a43) = 16843009 * v105;
  v108 = (v102 & 0xFFFFFF01 | (2 * (((16843009 * v105) >> 1) & 0x7F))) ^ 0x9FE2E101;
  v109 = LODWORD(STACK[0x29C]) + 299688057 * ((v102 ^ 0x9FE2E1AF) - v108);
  v110 = *(v68 - 192);
  v111 = *(v110 + 8 * (0xCF892069 % LODWORD(STACK[0x384])));
  v112 = STACK[0x388];
  v113 = *(v110 + 8 * (((((v111 ^ 0xC90448815E085E25) - 0x36258AB53DED670DLL) ^ ((v111 ^ 0x2E6BF214AD0E3E87) + 0x2EB5CFDF3114F851) ^ ((v111 ^ 0x77FF2A056396F032) + 0x772117CEFF8C36E6)) + 0x6FB152A5A5498949) % STACK[0x388]));
  LODWORD(v159) = -223883027 * (v104 ^ LODWORD(STACK[0x39C])) + 1750992076;
  v114 = ((v113 ^ 0x481256267A4E83CFLL) + 0x7CC937A53E07970ALL) ^ ((v113 ^ 0xBFDF01BD22767D4BLL) - 0x74FB9FC199C09672) ^ ((v113 ^ 0x675DC70BC8A86E14) + 0x5386A6888CE17AD3);
  v115 = -(v106 & 7 ^ 7) & 7;
  v116 = (((a56 ^ 0xC105DC0DB14D4EE4) + 0x55A246DC0CA86FF2) ^ ((a56 ^ 0xE340831983D3A6B8) + 0x77E719C83E3687AELL) ^ ((a56 ^ 0x22455F144FE9A3D9) - 0x491D3A3A0DF37D33)) + 0x6B58652E8785D682;
  if ((v106 & 7) == 7)
  {
    v117 = 0;
  }

  else
  {
    v117 = 255;
  }

  v118 = v117 << v115;
  v119 = v114 + 0x5BB40EED60D356A1;
  if ((v106 & 7) == 7)
  {
    v120 = 0;
  }

  else
  {
    v120 = ~v118;
  }

  *(v68 - 208) = v120;
  v121 = v119 < 0x48184113;
  v122 = v116 < 0x48184113;
  v123 = v119 >= v116;
  LODWORD(STACK[0x358]) = v104;
  v124 = 16843009 * (v104 ^ 0xD0 ^ ((v104 ^ 0xBFD0) >> 8) ^ ((v104 ^ 0xA3B2BFD0) >> 16) ^ HIBYTE(v104) ^ 0xF3);
  HIDWORD(v158) = 16843009 * (((v102 ^ 0xB706C798) >> 16) ^ HIBYTE(v102) ^ v102 ^ 0x98 ^ ((v102 ^ 0xC798) >> 8) ^ 0xCA);
  LODWORD(STACK[0x348]) = v124;
  v125 = HIDWORD(v158) ^ 0x2D2D2D2D ^ v124;
  v126 = STACK[0x21C];
  v127 = STACK[0x2C4];
  LODWORD(STACK[0x2B8]) = v105;
  HIDWORD(v160) = 840928341 * (v127 - v105);
  v128 = STACK[0x2E0];
  v129 = *(v68 - 200);
  v130 = *(&off_101353600 + (v129 - 10410));
  LODWORD(STACK[0x29C]) = (LODWORD(STACK[0x2E0]) | STACK[0x2D8] & 0x800000) ^ STACK[0x2D8] & 0xFF7FFFFF;
  v130 -= 12;
  v131 = *(*(&off_101353600 + (v129 ^ 0x2807)) + LODWORD(STACK[0x2E4]) - 3) + 754907044;
  *(v68 - 236) = (2 * v131) ^ (32 * v131) ^ __ROR4__(__ROR4__(v131, 9) ^ 0x1C53ECB5, 23) ^ 0x19BBB015;
  v132 = v106 & 7 ^ 7;
  LODWORD(STACK[0x2AC]) = v125;
  LODWORD(v160) = 1061106417 * (v125 - v126);
  v133 = *(&off_101353600 + (v129 ^ 0x29E1)) - 8;
  v134 = *&v133[4 * v128];
  HIDWORD(v157) = v134 ^ 0xF11D3470;
  LODWORD(v158) = v134 ^ 0xEE2CB8F;
  LODWORD(STACK[0x2D8]) = v115;
  LODWORD(a49) = *&v133[4 * v115] ^ 0xEE2CB8F;
  v135 = v107 % 0x101;
  v136 = (v132 | v106 & 0xFFFFFFF8) ^ 0x9FE2E1A8;
  v137 = *(v130 + 4 * (v107 % 0x101)) ^ 0x7E3363F9;
  HIDWORD(v156) = 1828716544 * v118;
  *(v68 - 224) = 16843009 * v118;
  v138 = ((16843009 * v127) & 0xFE | LODWORD(STACK[0x354])) ^ 0x7D6AC401;
  v139 = *(v68 - 244) ^ 0x7D6AC42B;
  v140 = *&v133[4 * (v139 % 0x101)];
  LODWORD(v133) = *(v130 + 4 * (v138 % 0x101)) ^ (a58 - ((2 * a58) & 0x13081A5E) + 159649071);
  v141 = v133 - ((2 * v133) & 0x96998BDC) + 1263322606;
  v142 = v109 + v137;
  LODWORD(a47) = v128 - LODWORD(STACK[0x380]) + LODWORD(STACK[0x2BC]);
  LODWORD(STACK[0x354]) = LODWORD(STACK[0x2BC]) | v128;
  v143 = *(&off_101353600 + (v129 ^ 0x2F3A));
  LODWORD(v130) = *(v143 + 4 * (v108 % 0x101));
  v144 = v142 + (v130 ^ 0x5F439F3C);
  LODWORD(a46) = v130 ^ 0xA0BC60C3;
  v146 = v122 ^ v121;
  v147 = !v123;
  if (!v146)
  {
    v122 = v147;
  }

  v145 = ((a56 ^ 0x2B3B06DBF3491B4) - 0x69EBD543FD2E4F5ELL) ^ ((a56 ^ 0xABC6D95C08020A22) + 0x3F61438DB5E72B38) ^ ((a56 ^ 0xA9756931CA41D013) + 0x3DD2F3E077A4F107);
  v148 = (((v114 - v145 - 0xFA4564126B27FE1) % v112) ^ 0x13FDFF4CFD3E77FDLL) - 0x12489A0414040444 + ((2 * ((v114 - v145 - 0xFA4564126B27FE1) % v112)) & 0x3A7CEFFA);
  if (v122)
  {
    v149 = v114 + 32868679;
  }

  else
  {
    v149 = v148;
  }

  v150 = ((2 * (v149 ^ 0xB01C26BA)) ^ 0x4DB355FA) & (v149 ^ 0xB01C26BA) ^ (2 * (v149 ^ 0xB01C26BA)) & 0xA6D9AAFC;
  v151 = ((4 * (v150 ^ 0xA248AA05)) ^ 0x9B66ABF4) & (v150 ^ 0xA248AA05) ^ (4 * (v150 ^ 0xA248AA05)) & 0xA6D9AAFC;
  v152 = ((16 * (v151 ^ 0x24990009)) ^ 0x6D9AAFD0) & (v151 ^ 0x24990009) ^ (16 * (v151 ^ 0x24990009)) & 0xA6D9AAF0 ^ 0x8241002D;
  *(v68 - 232) = v106;
  v153 = v106 ^ 0x9FE2E1AF ^ LODWORD(STACK[0x2D4]) ^ ((v106 ^ 0x9FE2E1AF) << 8);
  LODWORD(v156) = LODWORD(STACK[0x2B0]) - (v106 ^ 0x9FE2E1AF);
  LODWORD(STACK[0x2BC]) = v140 ^ 0xCDE69F48 ^ v141;
  LODWORD(STACK[0x35C]) = v102;
  HIDWORD(a48) = v102 & *(v68 - 208);
  LODWORD(a44) = 1076116647 * v127;
  HIDWORD(v155) = *(v143 + 4 * v135);
  LODWORD(STACK[0x2DC]) = v132;
  LODWORD(STACK[0x2C4]) = *(v143 + 4 * v132) ^ 0x5F439F3C;
  LODWORD(STACK[0x2D4]) = 16843009 * v127;
  *(v68 - 208) = v136;
  LODWORD(STACK[0x314]) = v153 ^ v136 ^ (v136 << 8);
  LODWORD(STACK[0x34C]) = v144 + 1;
  HIDWORD(v159) = 1651163703 * v139;
  HIDWORD(a37) = -335215851 * LODWORD(STACK[0x2E4]);
  LODWORD(v155) = -172302753 * v126;
  LODWORD(v157) = 615871463 * (v138 - v139);
  return (*(*(v68 - 184) + 8 * v129))(0x54A24A9B57FF14C7, 0xA288F06304338CB5, ((v152 << 8) ^ 0xD9AA0000) & v152, 0x79473F77934FCF95, 0xEC10852B5BED5900, LODWORD(STACK[0x394]) ^ 0x718D12ECu, 0x7D5BAEB1B39D26ELL, 1598267196, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, v155, v156, v157, v158, v159, a43, a44, a45, a46, a47, a48, a49, v160);
}