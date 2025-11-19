uint64_t sub_100306954@<X0>(uint64_t a1@<X0>, char a2@<W2>, int a3@<W8>)
{
  v9 = v8 - 1;
  *(a1 + v9 + a3) = *(v3 + v9) ^ *(v4 + (v9 & 0xF)) ^ *((v9 & 0xF) + v5 + 2) ^ *(v6 + (v9 & 0xF)) ^ ((v9 & 0xF) * (-100 * (a2 ^ 0x55) + 53)) ^ 0xF;
  return (*(STACK[0x57D8] + 8 * (((4 * (v9 == 0)) | (32 * (v9 == 0))) ^ v7)))();
}

uint64_t sub_1003069CC(uint64_t a1)
{
  v4 = *(STACK[0x57D8] + 8 * v1);
  v5 = *v2;
  v6 = a1 - 0x2B2E1B6EEEC4DBD4;
  v7 = STACK[0x4C78];
  v8 = STACK[0x4C70];
  v9 = STACK[0x4CA8];
  *(v5 + v6) = (83 * (v6 & 0xF)) ^ HIBYTE(v3) ^ *(STACK[0x4C78] + (v6 & 0xF)) ^ *((v6 & 0xF) + STACK[0x4C70] + 4) ^ *(STACK[0x4CA8] + (v6 & 0xF)) ^ 0x59;
  *(v5 + v6 + 1) = (83 * ((v6 + 1) & 0xF)) ^ BYTE2(v3) ^ *(v7 + ((v6 + 1) & 0xF)) ^ *(((v6 + 1) & 0xF) + v8 + 4) ^ *(v9 + ((v6 + 1) & 0xF)) ^ 0xE8;
  *(v5 + v6 + 2) = (83 * ((v6 + 2) & 0xF)) ^ BYTE1(v3) ^ *(v7 + ((v6 + 2) & 0xF)) ^ *(((v6 + 2) & 0xF) + v8 + 4) ^ *(v9 + ((v6 + 2) & 0xF)) ^ 0x8C;
  *(v5 + v6 + 3) = v3 ^ (83 * ((v6 + 3) & 0xF)) ^ *(v7 + ((v6 + 3) & 0xF)) ^ *(((v6 + 3) & 0xF) + v8 + 4) ^ *(v9 + ((v6 + 3) & 0xF)) ^ 0x39;
  return v4();
}

uint64_t sub_100306AE0@<X0>(unsigned int a1@<W4>, int a2@<W8>)
{
  v9 = *(STACK[0x57C0] + a2 * v7 + 8698028 - 5816 * (((((a2 * v7 + 8698028) >> 3) * v6) >> 32) >> 7));
  v10 = (((v9 ^ 0x57C1F7CA) - 1472329674) ^ ((v9 ^ 0x91ED2B8B) + 1846727797) ^ ((v9 ^ 0xC62CDC86) + 970138490)) * v8 + 20176489;
  v11 = *(v2 + 4 * (v10 - (((v10 * v5) >> 32) >> 12) * v4));
  HIDWORD(v12) = 77488 * (((HIBYTE(v11) ^ 0x78F68DA6) - 1947142958) ^ ((HIBYTE(v11) ^ 0x4F06BA47) - 1140800719) ^ ((HIBYTE(v11) ^ 0x37F03789) - 990490881)) + 1318450704;
  LODWORD(v12) = HIDWORD(v12);
  v13 = (((v11 ^ 0x693DD102) - 1735738969) ^ ((v11 ^ 0x2EEFDDDC) - 547834503) ^ ((v11 ^ 0x47D20C54) - 1234869007)) * v7 + 934207132;
  v14 = *(STACK[0x57C0] + (BYTE1(v11) ^ 0xB6) * v7 + 6213569 - 5816 * (((11815591 * ((BYTE1(v11) ^ 0xB6u) * v7 + 6213569)) >> 32) >> 4));
  v15 = *(STACK[0x57C0] + (BYTE2(v11) ^ 0x4F) * v7 + 6213569 - 5816 * (((11815591 * ((BYTE2(v11) ^ 0x4Fu) * v7 + 6213569)) >> 32) >> 4)) << 8;
  v16 = (v15 ^ 0x1445) & (v14 ^ 0x1F30);
  v17 = *(STACK[0x57C0] + v13 - 5816 * ((((v13 >> 3) * v6) >> 32) >> 7));
  v18 = ((v15 | 0xFFFF3FFF) & ((*(STACK[0x57C0] + (v12 >> 4) - 5816 * (((((v12 >> 4) >> 3) * v6) >> 32) >> 7)) << 16) ^ 0x57CC4000) | v15 & 0xFFFFBFFF) ^ 0xBC000;
  HIDWORD(v12) = (v16 | v14 & 0xBA) ^ 0x13C7;
  LODWORD(v12) = v18;
  HIDWORD(v12) = v12 >> 13;
  LODWORD(v12) = HIDWORD(v12);
  *(v2 + 4 * (v3 + a2 * v8 - ((((v3 + a2 * v8) * v5) >> 32) >> 12) * v4)) = ((((v12 >> 18) << 7) ^ 0x8D2C6AA5) & (v17 ^ 0xFFFFFF68) | v17 & 0x5A) ^ 0xE563DC6D;
  return (*(STACK[0x57D8] + 8 * ((433 * (a2 != 255)) ^ a1)))();
}

uint64_t sub_100306E18()
{
  LODWORD(STACK[0x6714]) = v1;
  v2 = STACK[0x57D8];
  STACK[0x9AC0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v2 + 8 * (((504 * (v0 ^ 0x66C)) ^ 0x3DFA) + v0)))(15115, 4404, 0x683CBC57EAB92A3ELL, 22622);
}

uint64_t sub_100306E88()
{
  v3 = *(v1 + 2904);
  v4 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v3 & 0xFFFFFFF8) - 1831847764)) & 0xFFFFFFFFFFFFFFF8));
  v5 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v6 = (((2 * (v4 + v5)) & 0x8D392A8D27AF7BC0) - (v4 + v5) - 0x469C954693D7BDE1) ^ 0x7BCC541353D9FAFBLL;
  v7 = v6 ^ __ROR8__(v4, 61);
  v8 = __ROR8__(v6, 8);
  v9 = (v8 + v7 - ((2 * (v8 + v7)) & 0x721667981397D064) - 0x46F4CC33F63417CELL) ^ 0xDCF9671111465CCELL;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0x6FF046966119128DLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (v13 + v12 - ((2 * (v13 + v12)) & 0x473695C14215238) - 0x7DC64B51F5EF56E4) ^ 0x238B296BDD66BA37;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (0x49E5FF58523A9B7DLL - ((v16 + v15) | 0x49E5FF58523A9B7DLL) + ((v16 + v15) | 0xB61A00A7ADC56482)) ^ 0x591E20E658202C6ELL;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xD8C7B31FCA19D9DELL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x5455012E8AB1C38FLL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  LODWORD(v3) = 3903 * ((((v23 + v22 - ((2 * (v23 + v22)) & 0x2AE086A62820B656) + 0x1570435314105B2BLL) ^ 0x7A3F23EF1A1205CBuLL) >> (8 * (v3 & 7u))) ^ *(v1 + 295)) + 4008381;
  v24 = *(v1 + 4000);
  *(v24 + 37135) = *(*(v1 + 4008) + v3 - 5896 * (((1456909 * v3) >> 32) >> 1));
  *(v24 + 36138) = *(v1 + 2797);
  v25 = *(v1 + 3984);
  *(v1 + 296) = v25;
  v26 = STACK[0x57D8];
  v27 = *(STACK[0x57D8] + 8 * (v0 + 9087));
  *(v1 + 2912) = v25;
  *(v1 + 280) = v27;
  return (*(v26 + 8 * (v2 + 20570)))();
}

uint64_t sub_10030712C()
{
  LODWORD(STACK[0x1D4C8]) = (v0 - 1723134182) ^ (1917435887 * (((((v1 - 240) | 0x4292E648) ^ 0xFFFFFFFE) - (~(v1 - 240) | 0xBD6D19B7)) ^ 0x5BD642B1));
  STACK[0x1D4C0] = 0;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 8767)))(v1 - 240);
  return (*(v2 + 8 * ((10890 * (*STACK[0x4678] > ((v0 - 622682342) & 0x251D7EFF ^ (v0 + 7706)))) ^ v0)))(v3);
}

uint64_t sub_1003071F4()
{
  v0 = STACK[0x3C30];
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (LODWORD(STACK[0x3C30]) ^ 0x57DC)))(101);
  STACK[0x5CA8] = v2;
  return (*(v1 + 8 * ((1997 * (v2 != 0)) ^ v0)))();
}

uint64_t sub_10030730C()
{
  STACK[0xEDB0] = v1;
  v2 = STACK[0xABA8];
  STACK[0xEDB8] = STACK[0xABA8];
  return (*(STACK[0x57D8] + 8 * (((v1 - v2 > (((v0 + 13624) | 0x1010u) ^ 0x585FuLL)) * (((v0 - 4822) | 0x42) ^ 0x20E9)) ^ v0)))();
}

uint64_t sub_10030737C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v9 = v5 - 1;
  v10 = *(*v7 + ((*v8 & (((a4 + v9) & 0x7B585D70) + ((a4 + v9) & 0x84A7A288 | 0x7B585D71) - 18621527)) & 0xFFFFFFFFFFFFFFF8));
  v11 = (__ROR8__((a4 + v9) & 0xFFFFFFFFFFFFFFF8, 8) + v10) ^ 0xB88801D4E1C76353;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0x38C8B16AE7056877;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ a3;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xE1A1FD5BD155F97ALL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = __ROR8__((0x86F7957309618887 - ((v19 + v18) ^ 0x30E6A7C3CC7171B1 | 0x86F7957309618887) + ((v19 + v18) ^ 0x30E6A7C3CC7171B1 | 0x79086A8CF69E7778)) ^ 0x938E8643394DB950, 8);
  v21 = (0x86F7957309618887 - ((v19 + v18) ^ 0x30E6A7C3CC7171B1 | 0x86F7957309618887) + ((v19 + v18) ^ 0x30E6A7C3CC7171B1 | 0x79086A8CF69E7778)) ^ 0x938E8643394DB950 ^ __ROR8__(v18, 61);
  v22 = v20 + v21;
  v23 = __ROR8__((v4 + v9) & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = (0x1C64917143BAF700 - v23) & 0xF6826ECDA1D0562ALL | (v23 + 0x39B6E8EBC4508FFLL) & 0x97D91325E2FA9D5;
  v25 = v24 ^ 0xF3E44CA568024087;
  v24 ^= 0xEF3F38D08A2A0778;
  v26 = (v22 - ((2 * v22) & 0xEE058D49EDF5B830) + 0x7702C6A4F6FADC18) ^ 0x8D3724693DC4EDDFLL;
  v27 = (__ROR8__(v25, 8) + v24) ^ a2;
  v28 = v27 ^ __ROR8__(v24, 61);
  v29 = __ROR8__(v27, 8);
  v30 = v26 ^ __ROR8__(v21, 61);
  v31 = __ROR8__(v26, 8);
  v32 = (((2 * (v29 + v28)) & 0x8C81A16701E7D6ECLL) - (v29 + v28) + 0x39BF2F4C7F0C1489) ^ 0x29874B795DC1031BLL;
  v33 = v32 ^ __ROR8__(v28, 61);
  v34 = __ROR8__(v32, 8);
  v35 = v34 + v33 - ((2 * (v34 + v33)) & 0x5CD8320173BFF7EALL);
  v36 = (0xB8BBB3EF843DB226 - ((v31 + v30) | 0xB8BBB3EF843DB226) + ((v31 + v30) | 0x47444C107BC24DD9)) ^ 0x95B440F65B279E77;
  v37 = __ROR8__(v36, 8) + (v36 ^ __ROR8__(v30, 61));
  v38 = (v35 + 0x2E6C1900B9DFFBF5) ^ 0x919ADB1B98D1B4C2 ^ __ROR8__(v33, 61);
  v39 = (__ROR8__((v35 + 0x2E6C1900B9DFFBF5) ^ 0x919ADB1B98D1B4C2, 8) + v38) ^ a1;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (0x1AFEA2E3AFF12E31 - ((v41 + v40) | 0x1AFEA2E3AFF12E31) + ((v41 + v40) | 0xE5015D1C500ED1CELL)) ^ 0xE0FC783D53BBB824;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x7B5626353E243BAALL;
  *(v4 + v9) = (((((2 * v37) | 0xADDD0E4F2006B2D8) - v37 - 0x56EE87279003596CLL) ^ 0xA29D8C163E732C17) >> (8 * ((a4 + v9) & 7))) ^ (((__ROR8__(v44, 8) + (v44 ^ __ROR8__(v43, 61))) ^ 0xAF1BD4ED8A66164BLL) >> (8 * ((v4 + v9) & 7))) ^ *(a4 + v9);
  return (*(STACK[0x57D8] + 8 * ((122 * (v9 != 0)) ^ v6)))();
}

uint64_t sub_10030778C(uint64_t a1, int a2)
{
  v6 = STACK[0x5760];
  *(v3 + 4 * (LODWORD(STACK[0x5760]) * a2 + 973299662 - ((((LODWORD(STACK[0x5760]) * a2 + 973299662) * v5) >> 32) >> 12) * v4)) = *(v3 + 4 * (LODWORD(STACK[0x5760]) * a2 + 959083149 - ((((LODWORD(STACK[0x5760]) * a2 + 959083149) * v5) >> 32) >> 12) * v4));
  LODWORD(STACK[0x5760]) = ++v6;
  return (*(STACK[0x57D8] + 8 * (((v6 != 49373825) | (4 * (v6 != 49373825))) ^ v2)))();
}

uint64_t sub_100307874()
{
  v0 = STACK[0x66E0];
  v1 = STACK[0x57D8];
  STACK[0xD0E0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2518]));
  return (*(v1 + 8 * (LODWORD(STACK[0x2500]) ^ (8678 * (LODWORD(STACK[0x2514]) == LODWORD(STACK[0x2510]))))))(v0);
}

uint64_t sub_10030794C(uint64_t a1, uint64_t a2, int a3, unsigned __int8 a4, int a5, int a6, int a7, int a8)
{
  v23 = LODWORD(STACK[0x5640]) - 15154;
  LODWORD(STACK[0x5640]) = STACK[0x38A0] & (LODWORD(STACK[0x5138]) ^ 0x8F41720C);
  LODWORD(STACK[0x5368]) &= v12 ^ 0x90875594;
  LODWORD(STACK[0x53B8]) = STACK[0x5390] & (v18 ^ 0x46AAC29F);
  LODWORD(STACK[0x5390]) = v14 & (LODWORD(STACK[0x5380]) ^ 0xAE649D89);
  LODWORD(STACK[0x5530]) = a7 & (v19 ^ 0x80EB46FE);
  LODWORD(STACK[0x5380]) = STACK[0x53B0] & (v9 ^ 0x27B67FDB);
  LODWORD(STACK[0x38A0]) = STACK[0x5410] & (v22 ^ 0xFDE37281);
  LODWORD(STACK[0x5520]) = STACK[0x54D0] & (v17 ^ 0x523771C3);
  LODWORD(STACK[0x37E8]) = STACK[0x5500] & (v15 ^ 0xAF26A901);
  LODWORD(STACK[0x53B0]) = STACK[0x54F0] & (a8 ^ 0xE2F0D9C9);
  LODWORD(STACK[0x3750]) = STACK[0x5400] & (LODWORD(STACK[0x5408]) ^ 0x420F79DE);
  LODWORD(STACK[0x5500]) = STACK[0x53D8] & (v12 ^ 0xB6491CF1);
  LODWORD(STACK[0x3470]) &= a6 ^ 0x7DA25D69;
  LODWORD(STACK[0x54D0]) = v13 & (a5 ^ 0x8DCBA5EC);
  LODWORD(STACK[0x5138]) = LODWORD(STACK[0x53D0]);
  LODWORD(STACK[0x53D0]) = v20 & (a4 ^ 0xC88B5179);
  LODWORD(STACK[0x54F0]) = v21 & (a3 ^ 0xC7DA8752);
  LODWORD(STACK[0x3460]) = v8 & (v16 ^ 0x7F019616);
  LODWORD(STACK[0x53A8]) = v11 & (v10 ^ 0x1D5F31DD);
  return (*(STACK[0x57D8] + 8 * v23))(a1, STACK[0x5760]);
}

uint64_t sub_100307C44(int a1, unsigned __int8 a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  v12 = a2;
  v13 = (1 << a2) - ((2 << a2) & 0xB4);
  v14 = a2 + ((a1 - 119) ^ 0xB3);
  v15 = *(a4 + 4 * v10);
  LOBYTE(v12) = *(&STACK[0x320] + v11 + 2361 * v12 - 2696 * (((25489421 * (v11 + 2361 * v12)) >> 32) >> 4));
  v16 = v12 & 0xA2 | 1;
  v17 = STACK[0x2F8];
  v18 = v15 ^ v12 ^ (2 * ((v12 ^ 0x20) & (2 * ((v12 ^ 0x20) & (2 * ((v12 ^ 0x20) & (2 * ((v12 ^ 0x20) & (2 * ((v12 ^ 0x20) & (2 * (v12 & (2 * v16) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ 0xA;
  if ((v9 ^ a3 ^ a8 ^ (v13 - 38) ^ ((v13 - 38) ^ 0x64) & a5) == 0xE2)
  {
    v18 = v15 ^ 0xA8;
  }

  *(a4 + 4 * v10) = v18 ^ (v8 - 65);
  return (*(v17 + 8 * ((111 * ((v14 & 0xF8) == 0)) ^ a1)))();
}

uint64_t sub_100307D60(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x38D8]) = 0;
  LODWORD(STACK[0x38E8]) = 0;
  LODWORD(STACK[0x38F0]) = 0;
  LODWORD(STACK[0x38E0]) = 0;
  LODWORD(STACK[0x3660]) = 0;
  LODWORD(STACK[0x38D0]) = 0;
  LODWORD(STACK[0x3688]) = 0;
  LODWORD(STACK[0x38B8]) = 0;
  LODWORD(STACK[0x3680]) = 0;
  LODWORD(STACK[0x38C0]) = 0;
  LODWORD(STACK[0x3658]) = 0;
  LODWORD(STACK[0x3678]) = 0;
  LODWORD(STACK[0x3670]) = 0;
  LODWORD(STACK[0x3668]) = 0;
  LODWORD(STACK[0x38B0]) = 0;
  LODWORD(STACK[0x38C8]) = 0;
  v14 = (LODWORD(STACK[0x35B0]) << 40) | (v9 << 56) | (STACK[0x3A98] << 48);
  v15 = STACK[0x3830];
  v16 = *(STACK[0x3830] + 1) ^ 0xB8;
  STACK[0x3AB8] ^= (v10 | (STACK[0x3828] << 24) | (LODWORD(STACK[0x39D0]) << 40) | (a5 << 48) | (v7 << 8) | (v8 << 16) | (STACK[0x3888] << 56)) ^ (a6 << 32);
  v17 = 4647 * (v15[3] ^ 0xB8) + 9544938;
  v18 = (STACK[0x3A90] << 48) | (v11 << 56) | (v6 << 40) | (a1 << 32);
  v19 = 4647 * ((v15[6] + 111) ^ 0x36) + 17937420;
  LOBYTE(v19) = *(v12 + v19 - 6784 * (((1266205 * v19) >> 32) >> 1)) ^ 0xE;
  v20 = 4647 * (v15[12] ^ 0x9A) + 25186740;
  v21 = v15[7] | (v15[4] << 24) | ((((*(v12 + 4647 * v16 + 9544938 - 6784 * (((1266205 * (4647 * v16 + 9544938)) >> 32) >> 1)) - 87) ^ 0xFB) + 85) << 48) | (v15[2] << 40) | (*v15 << 56) | (v15[5] << 16) | (((v19 >> 3) | (32 * v19)) << 8);
  v22 = v15[15] | (v15[9] << 48) | (v15[11] << 32) | (v15[8] << 56) | (v15[13] << 16) & 0xFFFFFFFF00FFFFFFLL | (v15[14] << 8) | (((*(v12 + v20 - 6784 * (((1266205 * v20) >> 32) >> 1)) ^ 0xC3) + 85) << 24);
  v23 = (v18 & 0xFFFFFFFF0000FF00 | (STACK[0x35F8] << 24) | (STACK[0x3640] << 16) | STACK[0x3650]) + (STACK[0x3648] << 8);
  v24 = STACK[0x35A0] ^ (v21 | ((((*(v12 + v17 - 6784 * (((1266205 * v17) >> 32) >> 1)) - 87) ^ 0xFB) + 85) << 32));
  v25 = v15[10];
  STACK[0x3A58] = (v14 & 0xFFFFFFFF000000FFLL | (STACK[0x3608] << 8) | (STACK[0x3600] << 16) & 0xFFFFFFFF00FFFFFFLL | (STACK[0x35F0] << 24) | STACK[0x3610] | (a3 << 32)) ^ v24;
  STACK[0x3A50] = v23 ^ STACK[0x35A8] ^ (v25 << 40) ^ v22;
  LODWORD(STACK[0x38F8]) = 1;
  return (*(v13 + 8 * SLODWORD(STACK[0x3AA0])))();
}

uint64_t sub_1003080C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W8>)
{
  v7 = *(STACK[0x5730] + 8);
  LODWORD(STACK[0x5700]) = *v7;
  v8 = (a5 - 79441144) & 0x4BC5FBE;
  STACK[0x5780] = v8;
  LODWORD(STACK[0x56F0]) = ((v7 & 0xFFFFFFF8) - 133471211 + v8 + 2200) & 0xFFFFFFF8;
  STACK[0x56E0] = __ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x56D0] = 8 * (v7 & 7);
  STACK[0x56C0] = v6 - 1;
  STACK[0x5680] = v5;
  STACK[0x5670] = LODWORD(STACK[0x5710]);
  v9 = *(STACK[0x57D8] + 8 * a5);
  STACK[0x5660] = 4 * v6;
  return v9(a1, 0x52F1884918D8D6A2, a2, a3, a4, a3, 0x8A47714CF38C4783);
}

void *sub_1003084F8()
{
  v3 = STACK[0x51B8] ^ 0x6969;
  v4 = STACK[0x51B8] - 21869;
  v5 = STACK[0x7ED8];
  STACK[0xA6C8] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v5 + (v2 ^ 0x31u) - ((v3 - 11863) ^ v4);
  STACK[0xBEA0] = v1;
  STACK[0xBDD8] = v0;
  STACK[0xBB40] = 0x55A8D952E5D4689ELL;
  STACK[0x98B0] = 0;
  return (*(STACK[0x57D8] + 8 * (v4 ^ 0x16C7)))(&STACK[0x98B0]);
}

uint64_t sub_1003085B0()
{
  *STACK[0x9798] = 0;
  *STACK[0x6130] = -769884012;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100308650()
{
  v2 = STACK[0x51B8];
  v3 = STACK[0x51B8] - 19044;
  *(v0 + 600) = STACK[0x8610];
  *(v0 + 592) = v2 - 711523751 * ((v1 - 240) ^ 0x301A21D1) + 4438;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v2 + 9156)))(v1 - 240);
  return (*(v4 + 8 * v3))(v5);
}

uint64_t sub_100308788(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x4850]) = LODWORD(STACK[0x55D0]) | LODWORD(STACK[0x53F8]);
  v9 = v6 & 0x82 ^ 0x57;
  v10 = v8 & 0xF8 ^ 0x8A;
  v11 = (((v6 ^ (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & 0x26 ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9))) ^ 0x82) << 16) | (((v8 ^ (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * ((v8 ^ 0x64) & (2 * v10) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10))) ^ 0xF8) << 8);
  v12 = v5 & 0x96 ^ 0x59;
  v13 = ((v5 ^ (2 * ((v5 ^ 0x64) & (2 * ((v5 ^ 0x64) & (2 * ((v5 ^ 0x64) & (2 * ((v5 ^ 0x64) & (2 * ((v5 ^ 0x64) & (2 * (v12 ^ v5 & 0x32)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12))) ^ 0x388A3A) & ~v11 | v11 & 0xC77500;
  v14 = (a3 & 0xFFFFFFE4 | 0x18) ^ a3 & 0xF0;
  LODWORD(STACK[0x51B0]) = a3 ^ (2 * ((a3 ^ 0x64) & (2 * ((a3 ^ 0x64) & (2 * ((a3 ^ 0x64) & (2 * ((a3 ^ 0x64) & (2 * ((a3 ^ 0x64) & (2 * v14) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14));
  v15 = STACK[0x5400];
  v16 = STACK[0x5400] & 0xE6 ^ 0x81;
  v13 <<= 8;
  LODWORD(STACK[0x5168]) = v13 ^ 0xC6E553FF;
  LODWORD(STACK[0x55D0]) = v13 & 0x65D46E00;
  v17 = STACK[0x50D8];
  v18 = STACK[0x50D8] & 0x54 ^ 0x78;
  v19 = (((v17 ^ (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * v18) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0x54) << 8) | (((v15 ^ (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * (v15 & (2 * v16) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ 0xE6) << 16);
  v20 = STACK[0x5270];
  LOBYTE(v14) = STACK[0x5270] & 0x20 ^ 0x26;
  v21 = ((v20 ^ (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x44) & (2 * v14) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14))) ^ 0x18EE49) & ~v19 | v19 & 0xE71100;
  v22 = STACK[0x53B8];
  LOBYTE(v19) = STACK[0x53B8] & 2 ^ 0x97;
  v23 = STACK[0x53C8];
  LOBYTE(v14) = STACK[0x53C8] & 0xA0 ^ 0x66;
  v24 = (((v23 ^ (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x44) & (2 * v14) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14))) ^ 0xA0) << 8) | (((v22 ^ (2 * ((v22 ^ 0x64) & (2 * ((v22 ^ 0x64) & (2 * ((v22 ^ 0x64) & (2 * ((v22 ^ 0x64) & (2 * ((v22 ^ 0x64) & (2 * ((v22 ^ 0x64) & 0x26 ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 2) << 16);
  v25 = STACK[0x51F8];
  v26 = v7 & 0xE2 ^ 0xFFFFFF87;
  LODWORD(STACK[0x51F8]) = v7 ^ (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x44) & (2 * ((v7 ^ 0x44) & 6 ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26));
  v27 = (((v25 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v25 ^ 0x24)) & 0x58 ^ 0x2C) & (v25 ^ 0x24))) ^ 0x2C) & (v25 ^ 0x24))) ^ 0x2C) & (v25 ^ 0x24))) ^ 0x2C) & (v25 ^ 0x64)))) ^ 0x69B369) & ~v24 | v24 & 0x964C00) << 8;
  LODWORD(STACK[0x50D8]) = v27 ^ 0x124000FF;
  LODWORD(STACK[0x5078]) = v27 & 0xCD2DFA00;
  LOBYTE(v26) = v4 & 0xAE ^ 0xE5;
  v28 = STACK[0x5098];
  v29 = STACK[0x5098] & 0xDC ^ 0xBC;
  v30 = ((v28 ^ (2 * ((v28 ^ 0x64) & (2 * ((v28 ^ 0x64) & (2 * ((v28 ^ 0x64) & (2 * ((v28 ^ 0x64) & (2 * v29) ^ v29)) ^ v29)) ^ v29)) ^ v29))) ^ 0xDC) << 8;
  v31 = v30 & 0xC500;
  v32 = v30 & 0xFF00FFFF | (((v4 ^ (2 * ((v4 ^ 0x64) & (2 * ((v4 ^ 0x64) & (2 * ((v4 ^ 0x64) & (2 * ((v4 ^ 0x64) & (2 * ((v4 ^ 0x44) & (2 * (v26 ^ v4 & 0xA)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26))) ^ 0xAE) << 16);
  v33 = STACK[0x53C0];
  v34 = STACK[0x53C0] & 0x1A ^ 0x1B;
  v35 = (v33 ^ 0x64) & (2 * ((v33 ^ 0x64) & (2 * ((v33 ^ 0x64) & (2 * ((v33 ^ 0x64) & (2 * ((v33 ^ 0x64) & (2 * ((v33 ^ 0x64) & (2 * v34) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34;
  LODWORD(STACK[0x5098]) = (v21 << 8) ^ 0x260186FF;
  LODWORD(STACK[0x53F8]) = (v21 << 8) & 0xC9125900;
  v36 = STACK[0x5050];
  v37 = STACK[0x5050] & 0xF6 ^ 0xFFFFFF89;
  LODWORD(STACK[0x5050]) = v36 ^ (2 * ((v36 ^ 0x64) & (2 * ((v36 ^ 0x64) & (2 * ((v36 ^ 0x64) & (2 * ((v36 ^ 0x64) & (2 * ((v36 ^ 0x64) & (2 * ((v36 ^ 0x64) & (2 * v37) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37));
  v38 = STACK[0x4F50];
  LOBYTE(v37) = STACK[0x4F50] & 0x98 ^ 0xDA;
  LODWORD(STACK[0x4F50]) = ((v38 ^ (2 * ((v38 ^ 0x64) & (2 * ((v38 ^ 0x64) & (2 * ((v38 ^ 0x64) & (2 * ((v38 ^ 0x64) & (2 * ((v38 ^ 0x64) & (2 * v37) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37))) ^ 0xFF3AC8) & ~v32 | v31;
  v39 = STACK[0x4F58];
  LOBYTE(v26) = STACK[0x4F58] & 0x56 ^ 0x79;
  v40 = STACK[0x5148];
  LOBYTE(v25) = STACK[0x5148] & 0x58 ^ 0xFA;
  v41 = (((v39 ^ (2 * ((v39 ^ 0x64) & (2 * ((v39 ^ 0x64) & (2 * ((v39 ^ 0x64) & (2 * ((v39 ^ 0x64) & (2 * ((v39 ^ 0x64) & (2 * (v26 ^ v39 & 0x32)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26))) ^ 0x56) << 16) | (((v40 ^ (2 * ((v40 ^ 0x64) & (2 * ((v40 ^ 0x64) & (2 * ((v40 ^ 0x64) & (2 * ((v40 ^ 0x64) & (2 * ((v40 ^ 0x64) & (2 * v25) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25))) ^ 0x58) << 8);
  v42 = STACK[0x5298];
  LOBYTE(v26) = STACK[0x5298] & 0x4A ^ 0xF3;
  v43 = ((v42 ^ (2 * ((v42 ^ 0x64) & (2 * ((v42 ^ 0x64) & (2 * ((v42 ^ 0x64) & (2 * ((v42 ^ 0x64) & (2 * ((v42 ^ 0x64) & (2 * ((v42 ^ 0x64) & 0x2E ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26))) ^ 0xF95A5F) & (v41 ^ 0xFDFFFF) | v41 & 0x6A500;
  v44 = STACK[0x55A0];
  v45 = STACK[0x55A0] & 0xE2 ^ 0xFFFFFF87;
  LODWORD(STACK[0x4F48]) = v44 ^ (2 * ((v44 ^ 0x64) & (2 * ((v44 ^ 0x64) & (2 * ((v44 ^ 0x64) & (2 * ((v44 ^ 0x64) & (2 * ((v44 ^ 0x44) & (2 * ((v44 ^ 0x44) & 6 ^ v45)) ^ v45)) ^ v45)) ^ v45)) ^ v45)) ^ v45));
  v43 <<= 8;
  LODWORD(STACK[0x4F58]) = v43 ^ 0x425AAFF;
  LODWORD(STACK[0x55A0]) = v43 & 0xBB924400;
  v46 = v33 & 0xB8 ^ 0x6A;
  LODWORD(STACK[0x4F00]) = v33 ^ (2 * v35);
  LODWORD(STACK[0x5148]) = v33 ^ (2 * ((v33 ^ 0x64) & (2 * ((v33 ^ 0x64) & (2 * ((v33 ^ 0x64) & (2 * ((v33 ^ 0x64) & (2 * ((v33 ^ 0x64) & (2 * v46) ^ v46)) ^ v46)) ^ v46)) ^ v46)) ^ v46));
  LOBYTE(v46) = *STACK[0x54A0];
  LOBYTE(v44) = v46 & 0x60 ^ 0x46;
  LOBYTE(v26) = *STACK[0x5500];
  LOBYTE(v25) = (v26 & 0xE4 | 0x13) ^ v26 & 0xEE;
  v47 = (((v46 ^ (2 * ((v46 ^ 0x64) & (2 * ((v46 ^ 0x64) & (2 * ((v46 ^ 0x64) & (2 * ((v46 ^ 0x64) & (2 * ((v46 ^ 0x44) & (2 * v44) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44))) ^ 0x60) << 16) | (((v26 ^ (2 * ((v26 ^ 0x64) & (2 * ((v26 ^ 0x64) & (2 * ((v26 ^ 0x64) & (2 * ((v26 ^ 0x64) & (2 * ((v26 ^ 0x64) & (2 * ((v26 ^ 0x64) & (2 * v25) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25))) ^ 0xA) << 8);
  LOBYTE(v44) = *STACK[0x56D0];
  LOBYTE(v26) = v44 & 0xAC ^ 0xE4;
  v48 = (((v44 ^ (2 * ((v44 ^ 0x64) & (2 * ((v44 ^ 0x64) & (2 * ((v44 ^ 0x64) & (2 * ((v44 ^ 0x64) & (2 * v26) ^ v26)) ^ v26)) ^ v26)) ^ v26))) ^ 0xD71536) & ~v47 | v47 & 0x28EA00) << 8;
  LODWORD(STACK[0x4F08]) = v48 ^ 0x200840FF;
  LODWORD(STACK[0x4EC8]) = v48 & 0x88F23D00;
  LOBYTE(v48) = *STACK[0x5028];
  LOBYTE(v44) = v48 & 0x8A ^ 0xD3;
  LOBYTE(v26) = *STACK[0x4B28];
  LOBYTE(v32) = v26 & 0x28 ^ 0xA2;
  v49 = (((v26 ^ (2 * ((v26 ^ 0x64) & (2 * ((v26 ^ 0x64) & (2 * ((v26 ^ 0x64) & (2 * ((v26 ^ 0x64) & (2 * ((v26 ^ 0x44) & (2 * v32) | v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32))) ^ 0x28) << 8) | (((v48 ^ (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & 0x2E ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44))) ^ 0x8A) << 16);
  LOBYTE(v26) = *STACK[0x4F10];
  LOBYTE(v25) = v26 & 0xB4 ^ 0xE8;
  v50 = ((v26 ^ (2 * ((v26 ^ 0x64) & (2 * ((v26 ^ 0x64) & (2 * ((v26 ^ 0x64) & (2 * ((v26 ^ 0x64) & (2 * v25) ^ v25)) ^ v25)) ^ v25)) ^ v25))) ^ 0xC0482D) & ~v49 | v49 & 0x3FB700;
  v51 = *STACK[0x5138];
  v52 = v51 & 0x66666666 ^ 0xFFFFFFC1;
  LODWORD(STACK[0x4EC0]) = v51 ^ (2 * ((v51 ^ 0x64) & (2 * ((v51 ^ 0x64) & (2 * ((v51 ^ 0x64) & (2 * ((v51 ^ 0x64) & (2 * ((v51 ^ 0x44444444) & (2 * (v52 ^ v51 & 2)) ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52));
  v50 <<= 8;
  LODWORD(STACK[0x4EF8]) = v50 ^ 0x28620FF;
  LODWORD(STACK[0x53C0]) = v50 & 0xBD39DE00;
  LOBYTE(v50) = v23 & 0xC0 | 0x36;
  LOBYTE(v51) = *STACK[0x4FD8];
  LOBYTE(v52) = v51 & 0xEC ^ 4;
  v53 = (((v23 ^ (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & 0x2C ^ v50)) ^ v50)) ^ v50)) ^ v50)) ^ v50))) ^ 0xC0) << 16) | (((v51 ^ (2 * ((v51 ^ 0x64) & (2 * ((v51 ^ 0x64) & (2 * ((v51 ^ 0x64) & (2 * ((v51 ^ 0x64) & (2 * ((v51 ^ 0x64) & (2 * v52) ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52))) ^ 0xEC) << 8);
  LOBYTE(v51) = *STACK[0x53A0];
  LOBYTE(v52) = v51 & 0xB0 ^ 0xEE;
  v54 = ((v51 ^ (2 * ((v51 ^ 0x64) & (2 * ((v51 ^ 0x64) & (2 * ((v51 ^ 0x64) & (2 * ((v51 ^ 0x64) & (2 * ((v51 ^ 0x64) & (2 * v52) ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52))) ^ 0xAB42C0) & ~v53 | v53 & 0x54BD00;
  LOBYTE(v51) = *STACK[0x5720];
  LOBYTE(v52) = v51 & 0xD0 ^ 0x3E;
  LOBYTE(v32) = v51 ^ (2 * ((v51 ^ 0x64) & (2 * ((v51 ^ 0x64) & (2 * ((v51 ^ 0x64) & (2 * ((v51 ^ 0x64) & (2 * ((v51 ^ 0x64) & (2 * v52) ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52));
  v54 <<= 8;
  LODWORD(STACK[0x4ED0]) = v54 ^ 0x40A502FF;
  LODWORD(STACK[0x4EA8]) = v54 & 0xBF18AD00;
  v55 = *STACK[0x4F40];
  v56 = v55 & 0x4A ^ 0xFFFFFFF3;
  LODWORD(STACK[0x4EB8]) = v55 ^ (2 * ((v55 ^ 0x64) & (2 * ((v55 ^ 0x64) & (2 * ((v55 ^ 0x64) & (2 * ((v55 ^ 0x64) & (2 * ((v55 ^ 0x64) & (2 * ((v55 ^ 0x64) & 0x2E ^ v56)) ^ v56)) ^ v56)) ^ v56)) ^ v56)) ^ v56));
  LOBYTE(v55) = *STACK[0x5308];
  LOBYTE(v56) = v55 & 0x78 ^ 0x4A;
  LOBYTE(v31) = *STACK[0x5040];
  LOBYTE(v40) = v31 & 0xC4 | 0x30;
  v57 = (((v31 ^ (2 * ((v31 ^ 0x64) & (2 * ((v31 ^ 0x64) & (2 * ((v31 ^ 0x64) & (2 * ((v31 ^ 0x64) & (2 * v40) ^ v40)) ^ v40)) ^ v40)) ^ v40))) ^ 0xC4) << 8) | (((v55 ^ (2 * ((v55 ^ 0x64) & (2 * ((v55 ^ 0x64) & (2 * ((v55 ^ 0x64) & (2 * ((v55 ^ 0x64) & (2 * ((v55 ^ 0x64) & (2 * v56) ^ v56)) ^ v56)) ^ v56)) ^ v56)) ^ v56))) ^ 0x78) << 16);
  LOBYTE(v55) = *STACK[0x5228];
  LOBYTE(v31) = v55 & 0xE0 ^ 0x86;
  v58 = ((v55 ^ (2 * ((v55 ^ 0x64) & (2 * ((v55 ^ 0x64) & (2 * ((v55 ^ 0x64) & (2 * ((v55 ^ 0x64) & (2 * ((v55 ^ 0x44) & (2 * v31) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31))) ^ 0x31C338) & ~v57 | v57 & 0xCE3C00;
  v59 = *STACK[0x5290];
  v60 = v59 & 0x74 ^ 0x48;
  LODWORD(STACK[0x4EA0]) = v59 ^ (2 * ((v59 ^ 0x64) & (2 * ((v59 ^ 0x64) & (2 * ((v59 ^ 0x64) & (2 * ((v59 ^ 0x64) & (2 * v60) ^ v60)) ^ v60)) ^ v60)) ^ v60));
  LOBYTE(v59) = *STACK[0x4FB0];
  LOBYTE(v60) = v59 & 0xF2 ^ 0x8F;
  LOBYTE(v21) = v59 ^ (2 * ((v59 ^ 0x64) & (2 * ((v59 ^ 0x64) & (2 * ((v59 ^ 0x64) & (2 * ((v59 ^ 0x64) & (2 * ((v59 ^ 0x64) & (2 * (v60 ^ v59 & 0x16)) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60));
  v58 <<= 8;
  LODWORD(STACK[0x4E98]) = v58 ^ 0x8A2825FF;
  LODWORD(STACK[0x53C8]) = v58 & 0x7454CA00;
  LOBYTE(v58) = *STACK[0x5100];
  LOBYTE(v60) = v58 & 0xBE ^ 0x6D;
  LOBYTE(v58) = v58 ^ (2 * ((v58 ^ 0x64) & (2 * ((v58 ^ 0x64) & (2 * ((v58 ^ 0x64) & (2 * ((v58 ^ 0x64) & (2 * ((v58 ^ 0x64) & (2 * (v60 ^ v58 & 0x1A)) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ 0xBE;
  LOBYTE(v59) = *STACK[0x4AF8];
  LOBYTE(v60) = v59 & 0x50 ^ 0x7E;
  v61 = (v58 << 16) | (v21 << 8);
  v62 = ((v61 ^ 0xD05FF) & ((v59 ^ (2 * ((v59 ^ 0x64) & (2 * ((v59 ^ 0x64) & (2 * ((v59 ^ 0x64) & (2 * ((v59 ^ 0x64) & (2 * ((v59 ^ 0x64) & (2 * v60) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60))) ^ 0xD9797) | v61 & 0xF26800) << 8;
  LODWORD(STACK[0x4E90]) = v62 ^ 0xB00838FF;
  LODWORD(STACK[0x4E88]) = v62 & 0x4A82C100;
  v63 = *STACK[0x5740];
  v64 = v63 & 0x22222222 ^ 0xFFFFFFA7;
  LODWORD(STACK[0x4E80]) = v63 ^ (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x44) & (2 * ((v63 ^ 0x44) & 6 ^ v64)) ^ v64)) ^ v64)) ^ v64)) ^ v64)) ^ v64));
  LOBYTE(v63) = *STACK[0x5680];
  LOBYTE(v48) = v63 & 0xB4 ^ 0x68;
  LOBYTE(v64) = *STACK[0x5750];
  LOBYTE(v60) = v64 & 0x5A ^ 0x7B;
  v65 = (((v63 ^ (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x64) & (2 * v48) ^ v48)) ^ v48)) ^ v48)) ^ v48))) ^ 0xB4) << 16) | (((v64 ^ (2 * ((v64 ^ 0x64) & (2 * ((v64 ^ 0x64) & (2 * ((v64 ^ 0x64) & (2 * ((v64 ^ 0x64) & (2 * ((v64 ^ 0x64) & (2 * ((v64 ^ 0x64) & 0x3E ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60))) ^ 0x5A) << 8);
  LOBYTE(v64) = *STACK[0x4F80];
  LOBYTE(v23) = v64 & 0x4E ^ 0xF5;
  LOBYTE(v35) = v64 ^ 0x64;
  v66 = (((v64 ^ (2 * (v35 & (2 * (v35 & (2 * (v35 & (2 * (v35 & (2 * (v35 & (2 * (v23 ^ v64 & 0xAA)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23))) ^ 0xE32B95) & ~v65 | v65 & 0x1CD400) << 8;
  LODWORD(STACK[0x4E78]) = v66 ^ 0xC8420FF;
  LODWORD(STACK[0x5298]) = v66 & 0xD3519F00;
  LOBYTE(v66) = *STACK[0x5370];
  LOBYTE(v65) = v66 & 0x3C ^ 0x2C;
  v67 = (((v66 ^ (2 * ((v66 ^ 0x64) & (2 * ((v66 ^ 0x64) & (2 * ((v66 ^ 0x64) & (2 * ((v66 ^ 0x64) & (2 * v65) ^ v65)) ^ v65)) ^ v65)) ^ v65))) ^ 0x3C) << 8) | (v32 << 16);
  v68 = (v67 ^ 0xF81FF) & (v21 ^ 0x1F81B0) | v67 & 0xE07E00;
  LOBYTE(v67) = v22 & 0xB4 ^ 0xE8;
  v69 = *STACK[0x5278];
  v70 = v69 & 0xB0 ^ 0xEE;
  v71 = (((v22 ^ (2 * ((v22 ^ 0x64) & (2 * ((v22 ^ 0x64) & (2 * ((v22 ^ 0x64) & (2 * ((v22 ^ 0x64) & (2 * v67) ^ v67)) ^ v67)) ^ v67)) ^ v67))) ^ 0xB4) << 16) | (((v69 ^ (2 * ((v69 ^ 0x64) & (2 * ((v69 ^ 0x64) & (2 * ((v69 ^ 0x64) & (2 * ((v69 ^ 0x64) & (2 * ((v69 ^ 0x64) & (2 * v70) ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ v70))) ^ 0xB0) << 8);
  v72 = *STACK[0x52A0];
  LOBYTE(v67) = v72 & 0xF4 | 8;
  v73 = (((v72 ^ (2 * ((v72 ^ 0x64) & (2 * ((v72 ^ 0x64) & (2 * ((v72 ^ 0x64) & (2 * ((v72 ^ 0x64) & (2 * ((v72 ^ 0x64) & (2 * v67) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67))) ^ 0xE18646) & ~v71 | v71 & 0x1E7900) << 8;
  LODWORD(STACK[0x4E70]) = v73 ^ 0x122049FF;
  LODWORD(STACK[0x4E60]) = v73 & 0x2CDB1600;
  LOBYTE(v73) = *STACK[0x5440];
  LOBYTE(v45) = v73 & 0xFC ^ 0xC;
  v74 = *STACK[0x5018];
  LOBYTE(v67) = v74 & 0x22 ^ 0x27;
  LOBYTE(v45) = v73 ^ (2 * ((v73 ^ 0x64) & (2 * ((v73 ^ 0x64) & (2 * ((v73 ^ 0x64) & (2 * ((v73 ^ 0x64) & (2 * ((v73 ^ 0x64) & (2 * v45) ^ v45)) ^ v45)) ^ v45)) ^ v45)) ^ v45));
  v75 = (v74 ^ (2 * ((v74 ^ 0x64) & (2 * ((v74 ^ 0x64) & (2 * ((v74 ^ 0x64) & (2 * ((v74 ^ 0x64) & (2 * ((v74 ^ 0x44) & (2 * ((v74 ^ 0x44) & 6 ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67)));
  v76 = (v75 << 8) & 0xFE00 | ((v45 ^ 0xFC) << 16);
  v77 = v76 & 0x6BEC00;
  v78 = v76 & 0xFFFFFEFF | ((v75 & 1) << 8);
  LOBYTE(v76) = v15 & 0xB2 ^ 0x6F;
  LODWORD(STACK[0x4E68]) = (v68 << 8) ^ 0x207C99FF;
  LODWORD(STACK[0x53B8]) = (v68 << 8) & 0x1E832600;
  LOBYTE(v33) = *STACK[0x5600];
  LOBYTE(v52) = v33 & 0x6C ^ 0xC4;
  v79 = v20 & 0x58 ^ 0x7A;
  v80 = (((v15 ^ (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * (v76 ^ v15 & 0x16)) ^ v76)) ^ v76)) ^ v76)) ^ v76)) ^ v76))) ^ 0xB2) << 16) | (((v33 ^ (2 * ((v33 ^ 0x64) & (2 * ((v33 ^ 0x64) & (2 * ((v33 ^ 0x64) & (2 * ((v33 ^ 0x64) & (2 * v52) ^ v52)) ^ v52)) ^ v52)) ^ v52))) ^ 0x6C) << 8);
  LODWORD(STACK[0x4E28]) = (((v78 ^ 0x9411FF) & ((v20 ^ (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x64) & (2 * v79) ^ v79)) ^ v79)) ^ v79)) ^ v79)) ^ v79))) ^ 0x941383) | v77) << 8) & 0xCD0A0C00;
  v81 = ((LODWORD(STACK[0x5148]) ^ 0xF3B316) & ~v80 | v80 & 0xC4C00) << 8;
  v82 = v81 ^ 0x84C40FFu;
  LODWORD(STACK[0x5148]) = v81 & 0xC7A13100;
  LOBYTE(v81) = *STACK[0x5130];
  LOBYTE(v78) = v81 & 0x38 ^ 0x2A;
  LOBYTE(v23) = *STACK[0x4AB0];
  v83 = v23 & 0xC6 | 0x31;
  v84 = (((v81 ^ (2 * ((v81 ^ 0x64) & (2 * ((v81 ^ 0x64) & (2 * ((v81 ^ 0x64) & (2 * ((v81 ^ 0x64) & (2 * ((v81 ^ 0x64) & (2 * v78) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78))) ^ 0x38) << 16) | (((v23 ^ (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & 0x22 ^ v83)) ^ v83)) ^ v83)) ^ v83)) ^ v83)) ^ v83))) ^ 0xC6) << 8);
  LOBYTE(v78) = *STACK[0x5470];
  LOBYTE(v23) = v78 & 0x32 ^ 0xAF;
  v85 = ((v78 ^ (2 * ((v78 ^ 0x64) & (2 * ((v78 ^ 0x64) & (2 * ((v78 ^ 0x64) & (2 * ((v78 ^ 0x64) & (2 * ((v78 ^ 0x64) & (2 * (v23 ^ v78 & 0x16)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23))) ^ 0x3D45E8) & ~v84 | v84 & 0xC2BA00;
  LOBYTE(v78) = *STACK[0x5610];
  LOBYTE(v48) = v78 & 0x4E ^ 0xF5;
  LOBYTE(v21) = v78 ^ (2 * ((v78 ^ 0x64) & (2 * ((v78 ^ 0x64) & (2 * ((v78 ^ 0x64) & (2 * ((v78 ^ 0x64) & (2 * ((v78 ^ 0x64) & (2 * (v48 ^ v78 & 0xAA)) ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48));
  LODWORD(STACK[0x4E20]) = (v85 << 8) & 0x402C1C00;
  LOBYTE(v85) = *STACK[0x5730];
  LOBYTE(v78) = v85 & 0x98 ^ 0xDA;
  v86 = *STACK[0x5580];
  LOBYTE(v23) = v86 & 0x48 ^ 0x72;
  v87 = (((v86 ^ (2 * ((v86 ^ 0x64) & (2 * ((v86 ^ 0x64) & (2 * ((v86 ^ 0x64) & (2 * ((v86 ^ 0x64) & (2 * ((v86 ^ 0x64) & (2 * v23) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23))) ^ 0x48) << 8) | (((v85 ^ (2 * ((v85 ^ 0x64) & (2 * ((v85 ^ 0x64) & (2 * ((v85 ^ 0x64) & (2 * ((v85 ^ 0x64) & (2 * ((v85 ^ 0x64) & (2 * v78) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78))) ^ 0x98) << 16);
  LOBYTE(v85) = *STACK[0x5590];
  LOBYTE(v78) = v85 & 0x5A ^ 0xFB;
  LODWORD(STACK[0x4E00]) = (LODWORD(STACK[0x4F50]) << 8) & 0xE98E4E00;
  LODWORD(STACK[0x51F8]) = ((((v85 ^ (2 * ((v85 ^ 0x64) & (2 * ((v85 ^ 0x64) & (2 * ((v85 ^ 0x64) & (2 * ((v85 ^ 0x64) & (2 * ((v85 ^ 0x64) & (2 * ((v85 ^ 0x64) & 0x3E ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78))) ^ 0x2810C4) & ~v87 | v87 & 0xD7EF00) << 8) & 0xE487C00;
  return (*(STACK[0x57D8] + 8 * v3))(12056367, v82, v21);
}

uint64_t sub_10030A2D0(int a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4.n128_u64[0] = 0xF0F0F0F0F0F0F0FLL;
  v4.n128_u64[1] = 0xF0F0F0F0F0F0F0FLL;
  v5.n128_u64[0] = 0x1E1E1E1E1E1E1E1ELL;
  v5.n128_u64[1] = 0x1E1E1E1E1E1E1E1ELL;
  return (*(STACK[0x57D8] + 8 * (((a1 + 1794108893) & 0x950FF8D7) - 6203)))(a2, a3, a4, v4, v5);
}

uint64_t sub_10030A32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = *(STACK[0x5358] + (STACK[0x53E8] & STACK[0x53F8]));
  v12 = (v11 + STACK[0x5360]) ^ 0xB88801D4E1C76353;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((2 * ((v14 + v13) ^ 0xF4DD124ADA908EF1)) & 0xDC18B49A9C7EEALL) - ((v14 + v13) ^ 0xF4DD124ADA908EF1) + 0x7F91F3A5B2B1C08ALL) ^ 0xB38450858F24260CLL;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xE580B17D8CC5E551;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = __ROR8__((((2 * (v19 + v18)) & 0x4A20A2F81FD6AE0ELL) - (v19 + v18) + 0x5AEFAE83F014A8F8) ^ 0xBB4E53D821415182, 8);
  v21 = (((2 * (v19 + v18)) & 0x4A20A2F81FD6AE0ELL) - (v19 + v18) + 0x5AEFAE83F014A8F8) ^ 0xBB4E53D821415182 ^ __ROR8__(v18, 61);
  v22 = (v20 + v21 - ((2 * (v20 + v21)) & 0x8DEF07D549AA074CLL) + 0x46F783EAA4D503A6) ^ 0x9C97C8E6A777BC3FLL;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((2 * ((v24 + v23) ^ 0x9BEDE3A0DF8C5AACLL)) | 0xC4FB4D0C33759668) - ((v24 + v23) ^ 0x9BEDE3A0DF8C5AACLL) - 0x627DA68619BACB34) ^ 0x3A5A7EB0D08A05FLL;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0xD2F00CE620E5D3AELL;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = ((v29 + v28) | 0x9BA5617F0B1C7F93) - ((v29 + v28) | 0x645A9E80F4E3806CLL);
  v31 = *(STACK[0x5450] + (a4 & ((STACK[0x5440] ^ 0x8007384F) - 97189685 + (v9 & 0xE7090))));
  v32 = (v31 + STACK[0x56E0]) ^ 0xB88801D4E1C76353;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((2 * (v34 + v33)) & 0xA102DAAFA3A93A32) - (v34 + v33) - 0x50816D57D1D49D1ALL) ^ 0x97B623C2C92E0A91;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((v37 + v36) | 0xECA5FFAFBFC08730) - ((v37 + v36) | 0x135A0050403F78CFLL) + 0x135A0050403F78CFLL) ^ 0x9254ED233056261;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v10;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (((2 * (v42 + v41)) | 0x322D50411C91EF7CLL) - (v42 + v41) - 0x1916A8208E48F7BELL) ^ 0xC376E32C8DEA4827;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0xFA35E2CDCB3E31C7;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0xD2F00CE620E5D3AELL;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = __ROR8__(v47, 8);
  v50 = ((2 * (v49 + v48)) | 0x3924441D4C80AC92) - (v49 + v48);
  v51 = *(STACK[0x5620] + (STACK[0x5460] & v7));
  v52 = v51 + STACK[0x56F0];
  STACK[0x50F8] = v52;
  v53 = __ROR8__(v51, 61);
  STACK[0x50F0] = v53;
  v54 = (((2 * v52) | 0xAC24AEADFC13AED2) - v52 + 0x29EDA8A901F62897) ^ 0x6E9A56821FCEB43ALL ^ v53;
  v55 = (__ROR8__((((2 * v52) | 0xAC24AEADFC13AED2) - v52 + 0x29EDA8A901F62897) ^ 0x6E9A56821FCEB43ALL, 8) + v54) ^ 0x38C8B16AE7056877;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = __ROR8__(v55, 8);
  v58 = __ROR8__((((2 * (v57 + v56)) & 0xD806B07D37B5AC0ELL) - (v57 + v56) + 0x13FCA7C1642529F8) ^ 0xF67C16BCE8E0CCA9, 8);
  v59 = (((2 * (v57 + v56)) & 0xD806B07D37B5AC0ELL) - (v57 + v56) + 0x13FCA7C1642529F8) ^ 0xF67C16BCE8E0CCA9 ^ __ROR8__(v56, 61);
  v60 = (((2 * (v58 + v59)) | 0xED903399645A4B18) - (v58 + v59) + 0x937E6334DD2DA74) ^ 0x1769E4976378DCF6;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ 0xDA604B0C03A2BF99;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = __ROR8__(v62, 8);
  v65 = (((v64 + v63) | 0xC6F10D0CB00A442ELL) - ((v64 + v63) | 0x390EF2F34FF5BBD1) + 0x390EF2F34FF5BBD1) ^ 0x3CC4EFC17B3475E9;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0xD2F00CE620E5D3AELL;
  v68 = __ROR8__(v67, 8) + (v67 ^ __ROR8__(v66, 61));
  v69 = *STACK[0x51E8];
  v70 = (STACK[0x54B0] + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  STACK[0x53F8] = v69;
  STACK[0x5328] = v70;
  v71 = *(STACK[0x54C0] + (v69 & v70));
  v72 = v71 + STACK[0x5600];
  STACK[0x50E8] = v72;
  v73 = __ROR8__(v71, 61);
  v74 = (v72 - ((2 * v72) & 0x8168239639E7EF6CLL) + 0x40B411CB1CF3F7B6) ^ 0xF83C101FFD3494E5;
  STACK[0x50E0] = v73;
  v75 = v74 ^ v73;
  v76 = __ROR8__(v74, 8);
  v77 = (((2 * (v76 + v75)) & 0xC0C47ECE4D8266D8) - (v76 + v75) + 0x1F9DC098D93ECC93) ^ 0x275571F23E3BA4E4;
  v78 = v77 ^ __ROR8__(v75, 61);
  v79 = __ROR8__(v77, 8);
  v80 = (((2 * (v79 + v78)) | 0xD5C1EE35C3648466) - (v79 + v78) + 0x151F08E51E4DBDCDLL) ^ 0xF6046676D77A762;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ v10;
  v83 = __ROR8__(v82, 8);
  v84 = v82 ^ __ROR8__(v81, 61);
  v85 = (v83 + v84) ^ 0xDA604B0C03A2BF99;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8);
  v88 = (((2 * (v87 + v86)) | 0xCB392092DF411528) - (v87 + v86) - 0x659C90496FA08A94) ^ 0x9FA97284A49EBB53;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = __ROR8__(v88, 8);
  v91 = (((2 * (v90 + v89)) | 0x56F456926BF01818) - (v90 + v89) - 0x2B7A2B4935F80C0CLL) ^ 0xF98A27AF151DDFA2;
  v92 = __ROR8__(v91, 8) + (v91 ^ __ROR8__(v89, 61));
  v93 = STACK[0x4FC0] + LODWORD(STACK[0x52E8]);
  v94 = *(v8 + (((v93 & 0xFFFFFFF8) + 2050767130) & a6 & 0xFFFFFFF8));
  v95 = __ROR8__(v93 & 0xFFFFFFFFFFFFFFF8, 8);
  v96 = (v94 + v95) ^ 0xB88801D4E1C76353;
  v97 = v96 ^ __ROR8__(v94, 61);
  v98 = __ROR8__(v96, 8);
  v99 = __ROR8__((((v6 + 960947835) ^ 0xE3F0359D774F454CLL) - (v98 + v97) + ((2 * (v98 + v97)) & 0x381F94C563EF1F90)) ^ 0xDB3884F7A90D1840, 8);
  v100 = (((v6 + 960947835) ^ 0xE3F0359D774F454CLL) - (v98 + v97) + ((2 * (v98 + v97)) & 0x381F94C563EF1F90)) ^ 0xDB3884F7A90D1840 ^ __ROR8__(v97, 61);
  v101 = (v99 + v100 - ((2 * (v99 + v100)) & 0xD0E424DADC642C24) - 0x178DED9291CDE9EELL) ^ 0xDF2A310E2F7F343;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = (__ROR8__(v101, 8) + v102) ^ v10;
  v104 = v103 ^ __ROR8__(v102, 61);
  v105 = (__ROR8__(v103, 8) + v104) ^ 0xDA604B0C03A2BF99;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = (__ROR8__(v105, 8) + v106) ^ 0xFA35E2CDCB3E31C7;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = (__ROR8__(v107, 8) + v108) ^ 0xD2F00CE620E5D3AELL;
  v110 = STACK[0x57A0];
  v111 = __ROR8__(v109, 8) + (v109 ^ __ROR8__(v108, 61));
  LODWORD(STACK[0x5368]) = LODWORD(STACK[0x57C0]) ^ (((v30 + 0x645A9E80F4E3806CLL) ^ 0x6FD66A4EA56C0AE8) >> STACK[0x57B0]);
  LODWORD(STACK[0x53A8]) = LODWORD(STACK[0x5790]) ^ (((v50 - 0x1C92220EA6405649) ^ 0xE8E1293F08302332) >> STACK[0x5780]);
  LODWORD(STACK[0x53A0]) = LODWORD(STACK[0x5670]) ^ ((v68 ^ 0xF4730B31AE70757BLL) >> STACK[0x5378]);
  LODWORD(STACK[0x5348]) = LODWORD(STACK[0x5740]) ^ ((v92 ^ 0xF4730B31AE70757BLL) >> STACK[0x5700]);
  LODWORD(v68) = *v93;
  v112 = *(v8 + (((v93 & 0xEC3937C0 | 0x13C6C83D) + 2050767130 + (v93 & 0x13C6C838 | 0xEC3937C3)) & a6 & 0xFFFFFFF8));
  v113 = (v112 + v95) ^ 0xB88801D4E1C76353;
  v114 = v113 ^ __ROR8__(v112, 61);
  v115 = (__ROR8__(v113, 8) + v114) ^ 0x38C8B16AE7056877;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ 0xE580B17D8CC5E551;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = __ROR8__(v117, 8);
  v120 = (v119 + v118 - ((2 * (v119 + v118)) & 0x234B5E5011B19EAALL) + 0x11A5AF2808D8CF55) ^ 0xF0045273D98D362FLL;
  v121 = v120 ^ __ROR8__(v118, 61);
  v122 = __ROR8__(v120, 8);
  v123 = (((2 * (v122 + v121)) | 0xF62CDDD87637FECLL) - (v122 + v121) + 0x784E99113C4E400ALL) ^ 0x5DD12DE2C013006FLL;
  v124 = v123 ^ __ROR8__(v121, 61);
  v125 = (__ROR8__(v123, 8) + v124) ^ 0xFA35E2CDCB3E31C7;
  v126 = __ROR8__(v125, 8);
  v127 = v125 ^ __ROR8__(v124, 61);
  v128 = ((v126 + v127) | 0x5D963AF679A7697CLL) - ((v126 + v127) | 0xA269C50986589683);
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) + 41;
  LOBYTE(v93) = 8 * (v93 & 7);
  HIDWORD(v122) = (((((2 * v111) | 0xFC1734C00CDEE1C2) - v111 + 0x1F4659FF9908F1FLL) ^ 0xA789151A81F059ALL) >> v93) ^ v68;
  LODWORD(v122) = ((((__ROR8__((v128 - 0x5D963AF679A7697DLL) ^ 0x8F6636105942BAD2, 8) + ((v128 - 0x5D963AF679A7697DLL) ^ 0x8F6636105942BAD2 ^ __ROR8__(v127, 61))) ^ 0xF4730B31AE70757BLL) >> v93) ^ v68) << 24;
  LODWORD(v127) = *(v110 + (((((v122 >> 29) - ((2 * (v122 >> 29)) & 8) - 124) ^ 0x37E1AF97) - 937537510) ^ ((((v122 >> 29) - ((2 * (v122 >> 29)) & 8) - 124) ^ 0xB513704C) + 1257017283) ^ ((((v122 >> 29) - ((2 * (v122 >> 29)) & 8) - 124) ^ 0x82F2DF44) + 2098012363)) + 1518);
  LODWORD(v68) = LODWORD(STACK[0x50A0]) - 72 * (((v127 ^ 0xB) + 15) ^ ((v127 ^ 1) + 69) ^ ((v127 ^ 0xC) + 10));
  LODWORD(v92) = v68 & 0xFFFFFFC9 ^ 0xFFFFFF8C;
  LODWORD(STACK[0x5390]) = v68 ^ (2 * ((v68 ^ 0x32) & (2 * ((v68 ^ 0x32) & (2 * ((v68 ^ 0x32) & (2 * ((v68 ^ 0x32) & (2 * ((v68 ^ 0x32) & (2 * ((v68 ^ 0x32) & (2 * v68) & 0x62 ^ v92)) ^ v92)) ^ v92)) ^ v92)) ^ v92)) ^ v92));
  v129 = *(STACK[0x57D8] + 8 * (v6 ^ (38 * (LODWORD(STACK[0x53D0]) == 41))));
  STACK[0x52F8] = 41;
  LODWORD(STACK[0x5398]) = 189;
  return v129();
}

uint64_t sub_10030B060(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x51D8]) = v9;
  v14 = v8 - 2092;
  LODWORD(STACK[0x5510]) = LODWORD(STACK[0x5780]) + LODWORD(STACK[0x5388]);
  LODWORD(STACK[0x5530]) = LODWORD(STACK[0x51C8]) ^ LODWORD(STACK[0x5120]);
  v15 = (v6 + v12 + ((v12 + v11 - ((v12 + v11) >> 16)) >> 8) - ((v12 + v11) >> 16) - v10) ^ 0x52CD2994;
  v16 = (v15 >> ((2 * v14) ^ 0x52)) + v15 + (((v15 >> ((2 * v14) ^ 0x52)) + v15) >> 5);
  v17 = v16 - 1901450374 + ((v16 - 1901450374) >> 11) - ((v16 - 1901450374 + ((v16 - 1901450374) >> 11)) >> 1);
  v18 = v17 + 220331226 - ((v17 + 220331226) >> 12) - ((v17 + 220331226 - ((v17 + 220331226) >> 12)) >> 8);
  v19 = (2 * v18) & 0x10000;
  v20 = (2 * v18) & (v13 - 0x10000);
  v21 = v18 + 1277474580;
  if ((v19 & v18) != 0)
  {
    v19 = -v19;
  }

  v22 = v19 + v18;
  v23 = v21 - (v21 >> 8) + ((v21 - (v21 >> 8)) >> 4);
  v24 = v23 - 1673258921 - ((v23 - 1673258921) >> 10) - ((v23 - 1673258921 - ((v23 - 1673258921) >> 10)) >> 6);
  v25 = v24 - 1911106311 - ((v24 - 1911106311) >> 14) - ((v24 - 1911106311 - ((v24 - 1911106311) >> 14)) >> 6);
  v26 = (v25 ^ 0xD6CA1380) - ((v25 ^ 0xD6CA1380) >> 9) + (((v25 ^ 0xD6CA1380) - ((v25 ^ 0xD6CA1380) >> 9)) >> 3);
  v27 = v26 - 1028100912 + ((v26 - 1028100912) >> 14) - ((v26 - 1028100912 + ((v26 - 1028100912) >> 14)) >> 3);
  v28 = v22 ^ v20;
  v29 = v27 - 1553481641 - ((v27 - 1553481641) >> 8) - ((v27 - 1553481641 - ((v27 - 1553481641) >> 8)) >> 2);
  v30 = v28 ^ v25 ^ v13 & (2 * v25) ^ v29 ^ v13 & (2 * v29);
  v31 = STACK[0x56F0];
  v32 = STACK[0x5740];
  LODWORD(STACK[0x5160]) = LODWORD(STACK[0x5740]) ^ LODWORD(STACK[0x56F0]);
  LODWORD(STACK[0x5388]) = a6;
  v33 = LODWORD(STACK[0x5750]) ^ LODWORD(STACK[0x56E0]);
  v34 = v32 ^ LODWORD(STACK[0x5460]) ^ v13 & (2 * a6) ^ ((v13 & (2 * (a6 ^ v32 ^ v31))) + 1936763246 - ((4 * (a6 ^ v32 ^ v31)) & 0x8261425C)) ^ v7 ^ v16 ^ v23 ^ v26 ^ v13 & (2 * (v23 ^ v16 ^ v26));
  LODWORD(STACK[0x51C8]) = v17;
  LODWORD(STACK[0x5158]) = v33;
  LODWORD(STACK[0x5170]) = v24;
  LODWORD(STACK[0x5168]) = v27;
  LODWORD(STACK[0x5150]) = 2 * (v24 ^ v17 ^ v33 ^ v27);
  v35 = LODWORD(STACK[0x5770]) ^ 0x12CFA59C ^ LODWORD(STACK[0x5730]) ^ v34;
  v36 = LODWORD(STACK[0x5770]) ^ LODWORD(STACK[0x54E0]) ^ a1 ^ v35 ^ v13 & (2 * v35) ^ (v30 - 2047154301 - ((2 * v30) & 0xBF5CF06));
  LODWORD(STACK[0x5460]) = v34 ^ 0x12CFA59C;
  LODWORD(STACK[0x5780]) = v36 & (v13 & (2 * (v34 ^ 0x12CFA59C)) ^ v34 ^ 0x12CFA59C);
  return (*(STACK[0x57D8] + 8 * v14))(v31 ^ 0xDECB3DA0, 0xE25D7BE61971FCFALL, (2 * v14) ^ 0x477Eu, 0xE3AFF5B99F2BED09);
}

uint64_t sub_10030B7A0(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  LODWORD(STACK[0x5500]) = LODWORD(STACK[0x5118]) + LODWORD(STACK[0x5168]);
  LODWORD(STACK[0x5790]) = LODWORD(STACK[0x5350]) ^ 0x4571 ^ (3 * ((v6 + 6697) ^ 0x529E));
  LODWORD(STACK[0x56C0]) = LODWORD(STACK[0x5170]) ^ LODWORD(STACK[0x51D8]);
  return (*(STACK[0x57D8] + 8 * (v6 + 6697)))(a1, v8, 1439462147, 2333017061, -1416043002, (LODWORD(STACK[0x5150]) + LODWORD(STACK[0x5100]) + LODWORD(STACK[0x5160]) + LODWORD(STACK[0x5148]) + LODWORD(STACK[0x51F8]) - 913817200), v5, a4 + a5 - ((a5 + a3) >> 16) + v7 + ((a5 + a3 - ((a5 + a3) >> 16)) >> 8) - 1);
}

uint64_t sub_10030B8E4()
{
  v2 = 2 * (v1 + ((v0 - 92) ^ 0xAC) + *(STACK[0x7400] + v1) + 94);
  *(STACK[0x8118] + ((LODWORD(STACK[0x4C24]) + 11 * v1) & 0x7F)) = (((2 * (v2 & 0x22 ^ 0x7A)) ^ 0x1B) + (v2 & 0xF7) - 77) ^ 0x7D;
  return (*(STACK[0x57D8] + 8 * (v0 - 19804)))();
}

uint64_t sub_10030B96C()
{
  LODWORD(STACK[0x5200]) = v2;
  LODWORD(STACK[0x3FC8]) = v1;
  v3 = *STACK[0x51F0];
  v4 = *STACK[0x51E8];
  v5 = *(v3 + (LODWORD(STACK[0x4380]) & v4));
  v6 = (v5 + STACK[0x4378]) ^ 0xB88801D4E1C76353;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = __ROR8__(v6, 8);
  v9 = (((2 * ((v8 + v7) ^ 0x99F97462C40D1EF8)) & 0xFBF2D1F6B23C71C0) - ((v8 + v7) ^ 0x99F97462C40D1EF8) + 0x2069704A6E1C71FLL) ^ 0xA337520C85E9B190;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0xE580B17D8CC5E551;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xE1A1FD5BD155F97ALL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xDA604B0C03A2BF99;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xFA35E2CDCB3E31C7;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xD2F00CE620E5D3AELL;
  STACK[0x5790] = __ROR8__(v19, 8);
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = *(v3 + (v4 & LODWORD(STACK[0x4408])));
  v22 = (v21 + STACK[0x4368]) ^ 0xB88801D4E1C76353;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x38C8B16AE7056877;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0xE580B17D8CC5E551;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0xE1A1FD5BD155F97ALL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xDA604B0C03A2BF99;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0xFA35E2CDCB3E31C7;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(v33) = (((__ROR8__(v34, 8) + (v34 ^ __ROR8__(v33, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x4360]);
  v35 = STACK[0x4948];
  LODWORD(v33) = *(STACK[0x57A0] + (((v35[11] ^ v33 ^ 0xC1 ^ LODWORD(STACK[0xC0C])) - 614172854) ^ ((v35[11] ^ v33 ^ 0x4655ED79) - 1180036536) ^ ((v35[11] ^ v33 ^ 0x62CE65BA) - 1657693563)) + 66869);
  v36 = STACK[0x57A0];
  LODWORD(STACK[0x47B0]) = -119;
  LODWORD(v33) = -119 - 85 * (((v33 ^ 0xFFFFFFB7) + 21) ^ ((v33 ^ 0x17) - 75) ^ ((v33 ^ 0xFFFFFFCA) + 106));
  v37 = v33 & 0x11 | 0xFFFFFFC4;
  LODWORD(STACK[0x57C0]) = v33 ^ (2 * ((v33 ^ 8) & (2 * ((v33 ^ 8) & (2 * ((v33 ^ 8) & (2 * ((v33 ^ 8) & (2 * ((v33 ^ 8) & (2 * (((2 * (v33 & 0x11)) | 0x11) & v33)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37));
  v38 = *(v3 + (LODWORD(STACK[0x4358]) & v4));
  v39 = (((2 * (v38 + STACK[0x4350])) | 0xE22442D67777BDE2) - (v38 + STACK[0x4350]) - 0x7112216B3BBBDEF1) ^ 0xC99A20BFDA7CBDA2;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x38C8B16AE7056877;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0xE580B17D8CC5E551;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = __ROR8__(v43, 8);
  v46 = __ROR8__((((2 * ((v45 + v44) ^ 0x27BAA5202FAB659ALL)) & 0x34F2F53B4E73516) - ((v45 + v44) ^ 0x27BAA5202FAB659ALL) + 0x7E586856258C6574) ^ 0xB843302DDB72F994, 8);
  v47 = (((2 * ((v45 + v44) ^ 0x27BAA5202FAB659ALL)) & 0x34F2F53B4E73516) - ((v45 + v44) ^ 0x27BAA5202FAB659ALL) + 0x7E586856258C6574) ^ 0xB843302DDB72F994 ^ __ROR8__(v44, 61);
  v48 = (((2 * (v46 + v47)) & 0x2213DC9B98D47314) - (v46 + v47) - 0x1109EE4DCC6A398BLL) ^ 0x34965ABE303779ECLL;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (((2 * (v50 + v49)) | 0xA1B44E3097917004) - (v50 + v49) + 0x2F25D8E7B43747FELL) ^ 0x2AEFC5D580F689C5;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (((2 * ((v53 + v52) ^ 0x168019C181CD3D02)) & 0x6AB16CD6ACD973F8) - ((v53 + v52) ^ 0x168019C181CD3D02) - 0x3558B66B566CB9FDLL) ^ 0xED75CB308BBA8AFLL;
  v55 = __ROR8__(v54, 8) + (v54 ^ __ROR8__(v52, 61));
  v56 = *(v3 + (LODWORD(STACK[0x4340]) & v4));
  v57 = (v56 + STACK[0x4350]) ^ 0xB88801D4E1C76353;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ 0x38C8B16AE7056877;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0xE580B17D8CC5E551;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ 0xE1A1FD5BD155F97ALL;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = __ROR8__(v63, 8);
  v66 = (0x7F00F11C7099AE58 - ((v65 + v64) | 0x7F00F11C7099AE58) + ((v65 + v64) | 0x80FF0EE38F6651A7)) ^ 0x5A9F45EF8CC4EE3ELL;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0xFA35E2CDCB3E31C7;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0xD2F00CE620E5D3AELL;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = __ROR8__(v70, 8);
  LODWORD(v70) = v35[9];
  LODWORD(v71) = (((((2 * (v72 + v71)) | 0xF5003851ABCA3D26) - (v72 + v71) + 0x57FE3D72A1AE16DLL) ^ 0xEF317197B956BE8) >> STACK[0x4348]) ^ v70;
  v73 = (((v71 ^ 0xFFFFFFC5) + 66) ^ (v71 - 123) ^ ((v71 ^ 0x2C) - 87)) - 83;
  v74 = v73 & 0xFFFFFFFD ^ 0x34;
  LODWORD(v55) = v71 ^ v73 ^ *(v36 + (((((((2 * v55) & 0xCF8677FBE9FBE87ELL) - v55 - 0x67C33BFDF4FDF440) ^ 0x6C4FCF33A5727EBBLL) >> STACK[0x4348]) ^ v70) ^ 0x1BF18)) ^ (2 * ((v73 ^ 0x14) & (2 * ((v73 ^ 0x14) & (2 * ((v73 ^ 0x14) & (2 * ((v73 ^ 0x14) & (2 * ((v73 ^ 0x14) & (2 * (v73 & (2 * v74) ^ v74)) ^ v74)) ^ v74)) ^ v74)) ^ v74)) ^ v74));
  LODWORD(v55) = -85 * (((v55 ^ 0x79) + 29) ^ ((v55 ^ 0x39) + 93) ^ ((v55 ^ 0x3C) + 90)) - 94;
  LODWORD(STACK[0x5520]) = ((v55 - ((2 * v55) & 0x1CA)) << 8) - 1471290112;
  v75 = v4;
  v76 = *(v3 + (LODWORD(STACK[0x4328]) & v4));
  v77 = (v76 + STACK[0x4320] - ((2 * (v76 + STACK[0x4320])) & 0x7C470238AFC9B848) + 0x3E23811C57E4DC24) ^ 0x86AB80C8B623BF77;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ 0x38C8B16AE7056877;
  v80 = __ROR8__(v79, 8);
  v81 = v79 ^ __ROR8__(v78, 61);
  v82 = (v80 + v81 - ((2 * (v80 + v81)) & 0xEC7C171DB293A4E4) - 0x9C1F47126B62D8ELL) ^ 0x13BEBAF3558C3723;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0xE1A1FD5BD155F97ALL;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ 0xDA604B0C03A2BF99;
  v87 = __ROR8__(v86, 8);
  v88 = v86 ^ __ROR8__(v85, 61);
  v89 = (v87 + v88 - ((2 * (v87 + v88)) & 0xF380E60CBEDE2900) - 0x63F8CF9A090EB80) ^ 0x3F591CB94512547;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = __ROR8__(v89, 8);
  STACK[0x5510] = (((2 * (v91 + v90)) | 0x824E1237AA0295A6) - (v91 + v90) + 0x3ED8F6E42AFEB52DLL) ^ 0x13D705FDF5E4997DLL ^ __ROR8__(v90, 61);
  v92 = *(v3 + (LODWORD(STACK[0x42B8]) & v4));
  v93 = (v92 + STACK[0x42B0]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v92, 61);
  v94 = __ROR8__((v92 + STACK[0x42B0]) ^ 0xB88801D4E1C76353, 8);
  v95 = (((2 * (v94 + v93)) & 0xE27C4BB025D79A56) - (v94 + v93) + 0xEC1DA27ED1432D4) ^ 0x36096B4D0A115AA3;
  v96 = v95 ^ __ROR8__(v93, 61);
  v97 = (__ROR8__(v95, 8) + v96) ^ 0xE580B17D8CC5E551;
  v98 = __ROR8__(v97, 8);
  v99 = v97 ^ __ROR8__(v96, 61);
  v100 = (((2 * (v98 + v99)) | 0x544616756F203214) - (v98 + v99) + 0x55DCF4C5486FE6F6) ^ 0x4B82F66166C5E070;
  v101 = v100 ^ __ROR8__(v99, 61);
  v102 = (__ROR8__(v100, 8) + v101) ^ 0xDA604B0C03A2BF99;
  v103 = v102 ^ __ROR8__(v101, 61);
  v104 = __ROR8__(v102, 8);
  v105 = (0xC0F97601EDC6F82 - ((v104 + v103) | 0xC0F97601EDC6F82) + ((v104 + v103) | 0xF3F0689FE123907DLL)) ^ 0x9C58A522A1DA1BALL;
  v106 = v105 ^ __ROR8__(v103, 61);
  v107 = (__ROR8__(v105, 8) + v106) ^ 0xD2F00CE620E5D3AELL;
  v108 = __ROR8__(v107, 8) + (v107 ^ __ROR8__(v106, 61));
  v109 = *(v3 + (v4 & STACK[0x40D8]));
  v110 = STACK[0x40D0];
  v111 = (((2 * (v109 + v110)) | 0x5A9CDC7BBD187ELL) - (v109 + v110) - 0x2D4E6E3DDE8C3FLL) ^ 0xB8A54FBADC19EF6CLL;
  v112 = v111 ^ __ROR8__(v109, 61);
  v113 = __ROR8__(v111, 8);
  v114 = (0x200908EF725F782ALL - ((v113 + v112) ^ 0x3418B3FD49D4DF1BLL | 0x200908EF725F782ALL) + ((v113 + v112) ^ 0x3418B3FD49D4DF1BLL | 0xDFF6F7108DA087D5)) ^ 0xD326F587237130B9;
  v115 = v114 ^ __ROR8__(v112, 61);
  v116 = __ROR8__(v114, 8);
  v117 = (((v116 + v115) ^ 0xE2AF3D0B72A487B7) - ((2 * ((v116 + v115) ^ 0xE2AF3D0B72A487B7)) & 0x6C0EE405DB10A012) + 0x36077202ED885009) ^ 0x3128FE7413E932EFLL;
  v118 = v117 ^ __ROR8__(v115, 61);
  v119 = (__ROR8__(v117, 8) + v118) ^ 0xE1A1FD5BD155F97ALL;
  v120 = v119 ^ __ROR8__(v118, 61);
  v121 = (__ROR8__(v119, 8) + v120) ^ 0xDA604B0C03A2BF99;
  v122 = v121 ^ __ROR8__(v120, 61);
  v123 = __ROR8__(v121, 8);
  v124 = (v123 + v122 - ((2 * (v123 + v122)) & 0x5E56706A89EB64ALL) + 0x2F2B383544F5B25) ^ 0xF8C7514E9F716AE2;
  v125 = v124 ^ __ROR8__(v122, 61);
  v126 = (__ROR8__(v124, 8) + v125) ^ 0xD2F00CE620E5D3AELL;
  v127 = *(v3 + (v75 & STACK[0x40D8]));
  v128 = (0x8D13DDE07CFC977ALL - ((v127 + v110) | 0x8D13DDE07CFC977ALL) + ((v127 + v110) | 0x72EC221F83036885)) ^ 0xCA6423CB62C40BD6;
  v129 = v128 ^ __ROR8__(v127, 61);
  v130 = (__ROR8__(v128, 8) + v129) ^ 0x38C8B16AE7056877;
  v131 = v130 ^ __ROR8__(v129, 61);
  v132 = (__ROR8__(v130, 8) + v131) ^ 0xE580B17D8CC5E551;
  v133 = v132 ^ __ROR8__(v131, 61);
  v134 = __ROR8__(v132, 8);
  v135 = (((2 * (v134 + v133)) | 0x34F2FCFC88BAC572) - (v134 + v133) - 0x1A797E7E445D62B9) ^ 0xFBD8832595089BC3;
  v136 = v135 ^ __ROR8__(v133, 61);
  v137 = __ROR8__(v135, 8);
  v138 = (0x1E00CD0DBA17199CLL - ((v137 + v136) | 0x1E00CD0DBA17199CLL) + ((v137 + v136) | 0xE1FF32F245E8E663)) ^ 0x3B9F79FE464A59FALL;
  v139 = v138 ^ __ROR8__(v136, 61);
  v140 = (__ROR8__(v138, 8) + v139) ^ 0xFA35E2CDCB3E31C7;
  v141 = __ROR8__(v140, 8);
  v142 = v140 ^ __ROR8__(v139, 61);
  v143 = ((((2 * v108) & 0x31C8160F5745DB7CLL) - v108 - 0x18E40B07ABA2EDBFLL) ^ 0x1368FFC9FA2D673ALL) >> STACK[0x42A8];
  LODWORD(v143) = ((v143 ^ v35[6] ^ 0x51) - 69) ^ ((v143 ^ v35[6] ^ 0xFFFFFFEF) + 5) ^ ((v143 ^ v35[6] ^ 0xFFFFFFBE) + 86);
  LODWORD(STACK[0x4E68]) = 105;
  LODWORD(v139) = 55 * v143 + 105;
  LODWORD(STACK[0x5500]) = v139;
  v144 = __ROR8__(v126, 8) + (v126 ^ __ROR8__(v125, 61));
  v145 = v139 & 0xFFFFFF87 ^ 0x52;
  v146 = (((v141 + v142) & 0xBBBB414AB91C15F6 ^ 0x1900410239141124) + ((v141 + v142) ^ 0xE6BF0CCC864AAED3) - (((v141 + v142) ^ 0xE6BF0CCC864AAED3) & 0xBBBB414AB91C15F6)) ^ 0x8FF441601FB3688BLL;
  LODWORD(v126) = v35[14];
  HIDWORD(v137) = ((v144 ^ 0xF4730B31AE70757BLL) >> STACK[0x40C8]) ^ v126;
  LODWORD(v137) = ((((__ROR8__(v146, 8) + (v146 ^ __ROR8__(v142, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x40C8]) ^ v126) << 24;
  LODWORD(STACK[0x54E0]) = v137 >> 27;
  LODWORD(STACK[0x54F0]) = (v139 ^ 0x62) & (2 * ((v139 ^ 0x62) & (2 * ((v139 ^ 0x62) & (2 * ((v139 ^ 0x62) & (2 * ((v139 ^ 0x62) & (2 * ((v139 ^ 0x62) & (2 * v139) & 0x46 ^ v145)) ^ v145)) ^ v145)) ^ v145)) ^ v145));
  v147 = *(v3 + (STACK[0x40C0] & v75));
  v148 = (v147 + STACK[0x40B8]) ^ 0xB88801D4E1C76353;
  v149 = v148 ^ __ROR8__(v147, 61);
  v150 = (__ROR8__(v148, 8) + v149) ^ 0x38C8B16AE7056877;
  v151 = v150 ^ __ROR8__(v149, 61);
  v152 = (__ROR8__(v150, 8) + v151) ^ 0xE580B17D8CC5E551;
  v153 = v152 ^ __ROR8__(v151, 61);
  v154 = (__ROR8__(v152, 8) + v153) ^ 0xE1A1FD5BD155F97ALL;
  v155 = v154 ^ __ROR8__(v153, 61);
  v156 = __ROR8__(v154, 8);
  v157 = (((2 * (v156 + v155)) | 0xB4543DC7E3E307CELL) - (v156 + v155) - 0x5A2A1EE3F1F183E7) ^ 0x804A55EFF2533C7ELL;
  v158 = v157 ^ __ROR8__(v155, 61);
  v159 = (__ROR8__(v157, 8) + v158) ^ 0xFA35E2CDCB3E31C7;
  v160 = v159 ^ __ROR8__(v158, 61);
  v161 = (__ROR8__(v159, 8) + v160) ^ 0xD2F00CE620E5D3AELL;
  v162 = v161 ^ __ROR8__(v160, 61);
  v163 = __ROR8__(v161, 8);
  v164 = ((v163 + v162 - ((2 * (v163 + v162)) & 0xA63000DAE27016BCLL) + 0x5318006D71380B5ELL) ^ 0xA76B0B5CDF487E25) >> STACK[0x40B0];
  LODWORD(STACK[0x54D0]) = 55 * (((v164 ^ v35[5] ^ 0xFFFFFFB7) - 72) ^ ((v164 ^ v35[5] ^ 0x77) + 120) ^ ((v164 ^ v35[5] ^ 0xFFFFFFC0) - 63));
  v165 = STACK[0x56E0];
  LODWORD(STACK[0x5780]) ^= STACK[0x5700];
  STACK[0x57B0] = (v165 - 349109235) & 0x14CEFD5E;
  STACK[0x47A8] = *(&off_101353600 + v165 - 21308) + (STACK[0x5670] << (((v165 + 13) & 0x5Eu) - 78));
  STACK[0x4938] = *(&off_101353600 + (v165 ^ 0x52E9)) + STACK[0x5620];
  LODWORD(STACK[0x5790]) = (((STACK[0x5790] + v20) ^ 0xF4730B31AE70757BLL) >> STACK[0x4370]) ^ v35[15];
  LODWORD(STACK[0x4848]) = -76;
  v166 = *(&off_101353600 + (v165 ^ 0x5517)) + 256 * STACK[0x5740];
  v167 = *(&off_101353600 + v165 - 20781) + 1024 * STACK[0x5710];
  v168 = *(&off_101353600 + (v165 ^ 0x5246)) + 1024 * STACK[0x56F0];
  LODWORD(v3) = LODWORD(STACK[0x4418]) == 0;
  LODWORD(STACK[0x5220]) = LODWORD(STACK[0x5780]) ^ 0xFFFFFFBD;
  STACK[0x5490] = (v166 - 8);
  STACK[0x4850] = (v167 - 12);
  STACK[0x4A78] = (v168 - 8);
  LODWORD(STACK[0x4F50]) = v0 ^ 0x78;
  LODWORD(STACK[0x4E34]) = -114;
  return (*(STACK[0x57D8] + 8 * (v165 | (4 * v3) | (16 * v3))))();
}

uint64_t sub_10030DE38()
{
  v1 = *(STACK[0x6FB8] + 24);
  STACK[0x9278] = v1;
  return (*(STACK[0x57D8] + 8 * (((v1 == 0) * (((v0 ^ 0x3D19) + 16443) ^ 0x5B15)) ^ v0)))();
}

uint64_t sub_10030DE88@<X0>(uint64_t a1@<X8>)
{
  *v4 = v3;
  *(v3 + 8) = *(a1 + v1);
  *(a1 + v1) = v3;
  return (*(STACK[0x57D8] + 8 * (v2 ^ 0x310F)))();
}

uint64_t sub_10030DEB8()
{
  v0 = STACK[0x51B8] - 22613;
  v1 = STACK[0x51B8] - 6803;
  v2 = STACK[0xE49C];
  LODWORD(STACK[0x7474]) = LODWORD(STACK[0xE498]) + 1;
  return (*(STACK[0x57D8] + 8 * ((31591 * (v2 == (v0 ^ 0xF7784490))) ^ v1)))();
}

uint64_t sub_10030DF5C()
{
  v7 = *(*(v5 + 4000) + v4 - 35072 * ((((v3 >> 6) * v1) >> 64) >> 1));
  *(*(v5 + 4008) + v6 % ((v2 + 1162617996) & 0xBAB3EFDB ^ 0x781B)) = (((v7 ^ 0x57) - 47) ^ ((v7 ^ 0x20) - 88) ^ ((v7 ^ 0x86) + 2)) - 91;
  return (*(STACK[0x57D8] + 8 * ((10837 * (v0 == 0)) ^ v2)))();
}

uint64_t sub_10030E00C()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  return (*(v1 + 8 * (v0 + 6816)))(v2);
}

uint64_t sub_10030E060()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  return (*(v1 + 8 * (v0 - 3233)))(v2);
}

uint64_t sub_10030E0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  LODWORD(STACK[0x5520]) = v5;
  LODWORD(STACK[0x5530]) = v4;
  LODWORD(STACK[0x5540]) = v6;
  LODWORD(STACK[0x5550]) = v3;
  LODWORD(STACK[0x5590]) = v8;
  LODWORD(STACK[0x5290]) = v9;
  STACK[0x5680] = v7;
  v10 = *(STACK[0x57D8] + 8 * a3);
  LODWORD(STACK[0x52B0]) = 189;
  LODWORD(STACK[0x54C0]) = 189;
  return v10(a1, a2, 81, 111520);
}

uint64_t sub_10030E26C@<X0>(char a1@<W0>, int a2@<W5>, unsigned int a3@<W6>, int a4@<W7>, int a5@<W8>)
{
  v20 = *(v13 + (a5 * v14 + 8698028) % (v5 - 19358));
  v21 = (a2 + (((v20 ^ v15) + v16) ^ ((v20 ^ v17) + a4) ^ ((v20 ^ a3) + v18)) * v14) % 0x2D70;
  if (v21 >> 3 >= 0x2D7)
  {
    v21 -= 5816;
  }

  v22 = *(v13 + v21);
  if (v22)
  {
    v23 = -118;
  }

  else
  {
    v23 = v11;
  }

  v24 = v23 ^ 0xA0;
  v25 = a1 ^ v23;
  if (((v22 ^ 0x3E) & 2) == 0)
  {
    v25 = v24;
  }

  if (((v22 ^ 0x3E) & 4) != 0)
  {
    v25 ^= v6 ^ 0xC7;
  }

  if (((v22 ^ 0x3E) & 8) == 0)
  {
    v25 ^= v7 ^ 0xC7;
  }

  if (((v22 ^ 0x3E) & 0x10) == 0)
  {
    v25 ^= v8 ^ 0xC7;
  }

  v26 = v9 ^ v25 ^ 0xC7;
  if (((v22 ^ 0x3E) & 0x20) != 0)
  {
    v26 = v25;
  }

  if ((v22 & 0x40) == 0)
  {
    v26 ^= v10 ^ 0xC7;
  }

  v27 = v22 < 0;
  v28 = *(v13 + 293) ^ 0xC7 ^ v26;
  if (v27)
  {
    v28 = v26;
  }

  *(v12 + 4 * ((a5 * v19 + 9469466) % 0x2A40u)) = v28 ^ 0x684FB6A0;
  return (*(STACK[0x57D8] + 8 * ((38 * (a5 == 255)) ^ v5)))();
}

uint64_t sub_10030E3DC@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v3 = (STACK[0x51B8] - 3618) | 0xC9;
  STACK[0xEAB8] = a2 + 500;
  STACK[0xEAC0] = STACK[0x9BF0] + v2;
  return (*(STACK[0x57D8] + 8 * (((((((v3 + 1906858475) & 0x8E575FD7) - 22140) ^ (v3 + 537104729) & 0xDFFC7BFF) + v2 < 0x13) * a1) ^ v3)))();
}

uint64_t sub_10030E628@<X0>(int a1@<W8>)
{
  v1 = STACK[0x5C98];
  LODWORD(STACK[0xE140]) = STACK[0xA4E4];
  return (*(STACK[0x57D8] + 8 * ((((((a1 & 0xB33371BB) - 1933686362) & 0x73417FFF) - 14629) * (v1 != 0)) ^ a1 & 0xB33371BB)))();
}

uint64_t sub_10030E690()
{
  v1 = STACK[0x9D08];
  v2 = STACK[0x5DD8];
  v3 = STACK[0xC538];
  v4 = STACK[0x75DC];
  v5 = STACK[0x51B8];
  v6 = STACK[0x51B8] + 847660746;
  v7 = 1379010179 * (((v0 - 240) & 0xDC52DBCD | ~((v0 - 240) | 0xDC52DBCD)) ^ 0x7FC1D5C);
  STACK[0x1D4C0] = STACK[0x6168];
  STACK[0x1D4E0] = v2;
  STACK[0x1D4D0] = v3;
  LODWORD(STACK[0x1D4E8]) = v7 - 467101311 + 1806817213 * v4;
  STACK[0x1D4D8] = v1;
  LODWORD(STACK[0x1D4C8]) = v6 ^ v7;
  v8 = STACK[0x57D8];
  v9 = (*(STACK[0x57D8] + 8 * (v5 ^ 0x243C)))(v0 - 240);
  return (*(v8 + 8 * (((LODWORD(STACK[0x1D4EC]) == 221187128) * LODWORD(STACK[0x135C])) ^ LODWORD(STACK[0x1360]))))(v9);
}

uint64_t sub_10030E880@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = STACK[0x6E60] == 0;
  v8 = 1534937323 * ((v6 + 0xE0E04C8B08222B2 - 2 * ((v6 - 240) & 0xE0E04C8B08223A2)) ^ 0xC3768C0A766CD8E5);
  *(a1 + 624) = a2 - 22613 + 1534937323 * ((v6 - 1333648718 - 2 * ((v6 - 240) & 0xB08223A2)) ^ 0x766CD8E5) - v2 + (v3 ^ 0x2B7C4CF);
  *(a1 + 612) = (a2 + 45575909) ^ (1534937323 * ((v6 - 1333648718 - 2 * ((v6 - 240) & 0xB08223A2)) ^ 0x766CD8E5));
  *(a1 + 592) = (((v5 != -143113071) ^ v4 ^ (a2 - 85)) | v7) & 1 ^ v8;
  *(a1 + 604) = 1534937323 * ((v6 - 1333648718 - 2 * ((v6 - 240) & 0xB08223A2)) ^ 0x766CD8E5) + a2 + 1451493860;
  *(a1 + 608) = 1534937323 * ((v6 - 1333648718 - 2 * ((v6 - 240) & 0xB08223A2)) ^ 0x766CD8E5);
  *(a1 + 616) = v8;
  *(a1 + 600) = ((a2 - 22613) ^ 0x2B7CACA) - 1534937323 * ((v6 - 1333648718 - 2 * ((v6 - 240) & 0xB08223A2)) ^ 0x766CD8E5);
  v9 = STACK[0x57D8];
  v10 = (*(STACK[0x57D8] + 8 * (a2 + 9182)))(v6 - 240);
  return (*(v9 + 8 * SLODWORD(STACK[0x1D4E4])))(v10);
}

uint64_t sub_10030EAAC@<X0>(int a1@<W0>, int a2@<W7>, int a3@<W8>)
{
  LODWORD(STACK[0x53E0]) = a2;
  LODWORD(STACK[0x52A0]) = a1;
  LODWORD(STACK[0x52D8]) = v5;
  v7 = ((*(v6 + v3) >> 7) | 0xFFFFFFFE) & ((*(v6 + v3) << ((a3 - 63) ^ 0x2B)) ^ 0xFFFFFFA1);
  LODWORD(STACK[0x5408]) = (((v7 ^ 0x21) - 125) ^ ((v7 ^ v4) + 102) ^ ((v7 ^ 0x74) - 40)) + 30;
  return (*(STACK[0x57D8] + 8 * a3))();
}

uint64_t sub_10030EB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (LODWORD(STACK[0xD6F4]) + v4);
  v7 = *(a3 + 3480);
  v8 = (v7 + v6);
  v9 = (v7 + v6) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(*STACK[0x51F0] + ((v9 - 103642729) & *STACK[0x51E8] & 0xFFFFFFFFFFFFFFF8));
  v11 = (v7 + (v6 + 1));
  *(a3 + 3592) = v11;
  *(a3 + 3605) = *v11;
  v12 = (v10 + __ROR8__(v9, 8)) ^ ((v3 ^ 0x5F92) - 0xBE9AEB660A21BEFLL);
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (v14 + v13 - ((2 * (v14 + v13)) & 0x8C90695FA1904088) - 0x39B7CB502F37DFBCLL) ^ 0xD37A7641EC384A0DLL;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x2275D4C73835399BLL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (((2 * (v19 + v18)) & 0xAD8D9D95CF45311ALL) - (v19 + v18) + 0x29393135185D6772) ^ 0xCC962B8636E05BAFLL;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (((2 * (v22 + v21)) | 0xF793CAF50691340ELL) - (v22 + v21) - 0x7BC9E57A83489A07) ^ 0xBC142C8C4F0D2D26;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0xA82620A559D2DA78;
  v26 = __ROR8__(v25, 8);
  v27 = v25 ^ __ROR8__(v24, 61);
  v28 = (v26 + v27) ^ 0x5F8DEC3EA3980A1BLL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  *(a3 + 3576) = v8;
  LOBYTE(v28) = *v8;
  *(a3 + 3591) = *v8;
  LOBYTE(v8) = (((v30 + v29) ^ 0xC1C3C8D2A4C54828) >> (8 * (v8 & 7u))) ^ v28;
  *(a3 + 3568) = v7;
  return (*(STACK[0x57D8] + 8 * ((11822 * ((((v8 ^ v5) + 126) ^ ((v8 ^ 0xA1) + 18) ^ ((v8 ^ 0x6C) - 35)) == 2)) ^ v3)))();
}

uint64_t sub_10030ED9C(uint64_t a1, uint64_t a2)
{
  STACK[0x5B00] = v3 + 2;
  v7 = *(v5 + (v6 & ((v4 & 0xFFFFFFF8 ^ 0xD4C239EA) - 829111421 + (((v4 & 0xFFFFFFF8) << ((v2 + 97) & 0xD7 ^ 0x56 ^ ((v2 + 56) | 0x56u))) | 0x567B8C29)) & 0xFFFFFFF8));
  v8 = (v7 + __ROR8__(v4 & 0xFFFFFFFFFFFFFFF8, 8)) ^ a2;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = __ROR8__(v8, 8);
  v11 = (((v10 + v9) | 0xCBEA3F7A670256B0) - ((v10 + v9) | 0x3415C08598FDA94FLL) + 0x3415C08598FDA94FLL) ^ 0xDED87D945BF23CF9;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0x2275D4C73835399BLL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xE5AF1AB32EBD3CDDLL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xC7DDC9F6CC45B721;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (((v19 + v18) | 0x264170A6B502AA5FLL) - ((v19 + v18) | 0xD9BE8F594AFD55A0) - 0x264170A6B502AA60) ^ 0x8E675003ECD07027;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (((2 * (v22 + v21)) | 0x6122A0A4BEF75D3ALL) - (v22 + v21) - 0x309150525F7BAE9DLL) ^ 0x6F1CBC6CFCE3A486;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (((((2 * (v25 + v24)) & 0xC47FFE5E7B8763B6) - (v25 + v24) - 0x623FFF2F3DC3B1DCLL) ^ 0x5C03C80266F9060CLL) >> (8 * (v4 & 7u))) ^ *(v3 + 1);
  return (*(STACK[0x57D8] + 8 * ((31524 * ((((v26 ^ 0xFA) + 126) ^ ((v26 ^ 0xC5) + 67) ^ ((v26 ^ 0x3F) - 71)) == 152)) ^ v2)))();
}

uint64_t sub_10030F0C8@<X0>(char a1@<W8>)
{
  v2 = STACK[0x5338];
  v3 = STACK[0x5338] << (a1 - 86);
  v4 = STACK[0x53E8] & 0xFFFFFFF8;
  LODWORD(STACK[0x5510]) = v3;
  LODWORD(STACK[0x5268]) = v4;
  v5 = *(STACK[0x5358] + (v4 & (((v2 + 1294837729) ^ 0x57DE9856) - 718276381 + ((v3 - 1705291838) & 0xAFBD30A0))));
  v6 = (((v5 + STACK[0x5360]) | 0x413BA1649AA775B8) - ((v5 + STACK[0x5360]) | 0xBEC45E9B65588A47) - 0x413BA1649AA775B9) ^ 0xF9B3A0B07B6016EBLL;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = (__ROR8__(v6, 8) + v7) ^ 0x38C8B16AE7056877;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0xE580B17D8CC5E551;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0xE1A1FD5BD155F97ALL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0xDA604B0C03A2BF99;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xFA35E2CDCB3E31C7;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(STACK[0x5368]) = LODWORD(STACK[0x57C0]) ^ (((__ROR8__(v18, 8) + (v18 ^ __ROR8__(v17, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x57B0]);
  v19 = (STACK[0x5440] + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  v20 = *STACK[0x51E8];
  STACK[0x5480] = v19;
  v21 = *(STACK[0x5450] + (v20 & v19));
  v22 = __ROR8__((v21 + STACK[0x56E0]) ^ 0xB88801D4E1C76353, 8);
  v23 = (v21 + STACK[0x56E0]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v21, 61);
  v24 = (v22 + v23) ^ 0x38C8B16AE7056877;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0xE580B17D8CC5E551;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0xE1A1FD5BD155F97ALL;
  v29 = __ROR8__(v28, 8);
  v30 = v28 ^ __ROR8__(v27, 61);
  v31 = (v29 + v30 - ((2 * (v29 + v30)) & 0xA125E19DE5B33624) + 0x5092F0CEF2D99B12) ^ (((v1 - 504403615) & 0x1E107F3Bu) - 691 - 0x750D443D0E84EDCCLL);
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0xFA35E2CDCB3E31C7;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(STACK[0x53A8]) = LODWORD(STACK[0x5790]) ^ (((__ROR8__(v35, 8) + (v35 ^ __ROR8__(v34, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5780]);
  v36 = STACK[0x4FC0] + LODWORD(STACK[0x52E8]);
  v37 = __ROR8__(v36 & 0xFFFFFFFFFFFFFFF8, 8);
  v38 = 8 * (v36 & 7);
  v39 = *v36 ^ 0xFFFFFFBD;
  v40 = *STACK[0x51F0];
  STACK[0x5460] = v20;
  STACK[0x5620] = v40;
  v41 = *(v40 + (v20 & ((v36 & 0xFFFFFFF8) + 2050767130) & 0xFFFFFFF8));
  STACK[0x56F0] = v37;
  STACK[0x5108] = v41 + v37;
  v42 = ((v41 + v37) | 0xAB45B37C105F4395) - ((v41 + v37) | 0x54BA4C83EFA0BC6ALL) + 0x54BA4C83EFA0BC6ALL;
  v43 = __ROR8__(v41, 61);
  v44 = v42 ^ 0x13CDB2A8F19820C6;
  STACK[0x5100] = v43;
  v45 = v42 ^ 0x13CDB2A8F19820C6 ^ v43;
  v46 = (__ROR8__(v44, 8) + v45) ^ 0x38C8B16AE7056877;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (((2 * (v48 + v47)) | 0xBA4ACDD81B2FD778) - (v48 + v47) + 0x22DA9913F2681444) ^ 0x38A5D79181520EEDLL;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0xE1A1FD5BD155F97ALL;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (((2 * (v53 + v52)) | 0xED75F99CE208414CLL) - (v53 + v52) + 0x94503318EFBDF5ALL) ^ 0x2CDAB7C272A69F3FLL;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0xFA35E2CDCB3E31C7;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = __ROR8__(v56, 8);
  v59 = (((2 * (v58 + v57)) & 0xBF674C5316254648) - (v58 + v57) + 0x204C59D674ED5CDBLL) ^ 0xF2BC553054088F75;
  v60 = __ROR8__(v59, 8);
  v61 = __ROR8__(v57, 61);
  STACK[0x5378] = v38;
  LODWORD(STACK[0x5670]) = v39;
  LODWORD(STACK[0x53A0]) = v39 ^ (((((2 * (v60 + (v59 ^ v61))) & 0x5166805E69697B10) - (v60 + (v59 ^ v61)) - 0x28B3402F34B4BD89) ^ 0x233FB4E1653B370CLL) >> v38);
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) + 38;
  v62 = *(STACK[0x57D8] + 8 * (v1 ^ ((8 * (LODWORD(STACK[0x53D0]) != 38)) | (16 * (LODWORD(STACK[0x53D0]) != 38)))));
  STACK[0x52F8] = 38;
  return v62(LODWORD(STACK[0x52A0]));
}

uint64_t sub_10030F6D8()
{
  v0 = STACK[0x1AC0];
  v1 = (275 * (LODWORD(STACK[0x1AC0]) ^ 0x373D)) ^ 0x5387;
  v2 = STACK[0xB620];
  LODWORD(STACK[0xEC70]) = STACK[0xB620];
  return (*(STACK[0x57D8] + 8 * (((v1 + 5282) * (v2 == -143113071)) ^ v0)))();
}

uint64_t sub_10030F904@<X0>(int a1@<W8>)
{
  v6 = STACK[0x57D8];
  STACK[0xC798] = *(STACK[0x57D8] + 8 * v4);
  LODWORD(STACK[0xEC74]) = a1;
  STACK[0xEC78] = v1;
  STACK[0xEC80] = v3;
  v7 = (*(v6 + 8 * (v5 ^ 0x1314)))(v2 ^ ((v5 - 28442) | 0x83) ^ 0xCCBB58Bu);
  STACK[0x9C70] = v7;
  return (*(v6 + 8 * ((108 * (((v5 - 1) ^ (v7 == 0)) & 1)) ^ v5)))();
}

void *sub_10030F9C4()
{
  v0 = STACK[0x57D8];
  v1 = LODWORD(STACK[0x1DFC]) + 1024;
  STACK[0xAE08] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1DFC]));
  return (*(v0 + 8 * (LODWORD(STACK[0x1DF8]) ^ v1)))(&STACK[0xA2B0]);
}

uint64_t sub_10030FA04()
{
  v3 = STACK[0x4DB0] ^ 0x38C8B16AE7056877 ^ STACK[0x4DB8];
  STACK[0x4980] = __ROR8__(STACK[0x4DB0] ^ 0x38C8B16AE7056877, 8) + v3;
  STACK[0x4988] = __ROR8__(v3, 61);
  v4 = *(STACK[0x4B90] + (v0 & STACK[0x4BA0]));
  v5 = v4 + STACK[0x4DD8];
  v6 = __ROR8__(v4, 61);
  STACK[0x4998] = v5;
  v5 ^= 0xB88801D4E1C76353;
  STACK[0x49A0] = v6;
  STACK[0x49C0] = __ROR8__(v5, 8) + (v5 ^ v6);
  STACK[0x49C8] = __ROR8__(v5 ^ v6, 61);
  LODWORD(v5) = LODWORD(STACK[0x4A60]) + 9546;
  STACK[0x49B8] = (v5 ^ 0x113) + 44798023;
  v7 = STACK[0x4FC0] + v1;
  LODWORD(STACK[0x4A58]) = *v7;
  v8 = ((v7 & 0xFFFFFFF8) + v2);
  STACK[0x4990] = v7 & 0xFFFFFFFFFFFFFFF8;
  v9 = __ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x4A50] = 8 * (v7 & 7);
  v10 = *STACK[0x51E8];
  v11 = *STACK[0x51F0];
  STACK[0x49D8] = v10;
  STACK[0x49A8] = v8 & 0xFFFFFFFFFFFFFFF8;
  STACK[0x49D0] = v11;
  v12 = *(v11 + (v10 & v8 & 0xFFFFFFF8));
  STACK[0x49B0] = v9;
  STACK[0x4A48] = v12;
  STACK[0x49E0] = v12 + v9;
  LODWORD(v7) = LODWORD(STACK[0x53D0]) != 18;
  LODWORD(STACK[0x5540]) = LODWORD(STACK[0x5008]) + 18;
  return (*(STACK[0x57D8] + 8 * (v5 ^ (55 * v7))))();
}

uint64_t sub_10030FB88()
{
  v1 = *(STACK[0x7AE0] - 0x683CBC57EAB92A3ELL);
  STACK[0xB110] = 0;
  LODWORD(STACK[0x8DE4]) = -769884012;
  STACK[0xB0D8] = 0;
  return (*(STACK[0x57D8] + 8 * (((v1 != 0x308E083E0C524CBELL) * (v0 - 22606)) ^ (v0 - 15936))))();
}

uint64_t sub_10030FC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x51B8];
  LODWORD(STACK[0xC410]) = 813006157;
  return (*(STACK[0x57D8] + 8 * (v7 - 13555)))(a1, 21553, 840133462, 2090271397, a5, 4294947640, a7, 1280);
}

uint64_t sub_10030FE10()
{
  v3 = *(v2 + 3064);
  v4 = *(v2 + 3076);
  v5 = *(v2 + 3099);
  v6 = *(v2 + 3100);
  v7 = *(v2 + 3104);
  v8 = *(v2 + 3124);
  LODWORD(STACK[0x57C0]) = *(v2 + 3160);
  return (*(STACK[0x57D8] + 8 * ((v1 - 275597699) ^ 0xEF931F20 ^ (((v1 - 275597699) < 0x8F8CB6A) * (v1 ^ 0x6A58)))))(v3, v0, v4, v8, v6, v5, v7);
}

uint64_t sub_10030FF30(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = v4 - v8 - a1;
  v13 = (~v6 + v4) > 0xF && (v4 - v5) > 0xF && v4 - v7 >= ((6 * (a4 ^ 0x4B14) + 1414792101) & 0xABABF795) - 21377 && v9 > 0xF;
  return (*(STACK[0x57D8] + 8 * (a4 ^ (2 * v13))))();
}

uint64_t sub_10030FFC4(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6)
{
  LODWORD(STACK[0x5318]) = LODWORD(STACK[0x5500]) | LODWORD(STACK[0x5530]);
  LODWORD(STACK[0x4400]) = LODWORD(STACK[0x54F0]) | LODWORD(STACK[0x5520]);
  LODWORD(STACK[0x4370]) = LODWORD(STACK[0x54E0]) | LODWORD(STACK[0x5400]);
  LODWORD(STACK[0x42A4]) = LODWORD(STACK[0x54C0]) | LODWORD(STACK[0x5510]);
  LODWORD(STACK[0x5500]) = a6 & (v11 ^ 0x996ED37E);
  LODWORD(STACK[0x5530]) = v18 & (v15 ^ 0x1D4BF9BB);
  LODWORD(STACK[0x54F0]) = STACK[0x53A0] & (v20 ^ 0x7D8B837D);
  LODWORD(STACK[0x5430]) = STACK[0x5388] & (LODWORD(STACK[0x5390]) ^ 0x51ADFF04);
  LODWORD(STACK[0x54E0]) = STACK[0x5378] & (a3 ^ 0xF7539705);
  LODWORD(STACK[0x5520]) = STACK[0x5368] & (v12 ^ 0x87C392BA);
  LODWORD(STACK[0x5400]) = STACK[0x5358] & (v17 ^ 0x510A50EC);
  LODWORD(STACK[0x53C8]) = a5 & (v16 ^ 0x3DC495F4);
  LODWORD(STACK[0x53A8]) = v13 & (a4 ^ 0x16EF61AA);
  LODWORD(STACK[0x5510]) = v19 & (v10 ^ 0xD104EE98);
  LODWORD(STACK[0x53A0]) = v6 & (v8 ^ 0x187A5B27);
  LODWORD(STACK[0x54C0]) = v14 & (v7 ^ 0x708575C9);
  return (*(STACK[0x57D8] + 8 * v9))(a1, STACK[0x5570], 32028458);
}

uint64_t sub_10031024C()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x241B)))();
  STACK[0x5FE0] = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_100310274(uint64_t a1, double a2, double a3, double a4, int8x16_t a5, int8x16_t a6)
{
  v11 = v8[-1];
  v12 = a1 + v9;
  *(v12 - 15) = vaddq_s8(vaddq_s8(*v8, a6), vmvnq_s8(vandq_s8(vaddq_s8(*v8, *v8), a5)));
  *(v12 - 31) = vaddq_s8(vaddq_s8(v11, a6), vmvnq_s8(vandq_s8(vaddq_s8(v11, v11), a5)));
  return (*(STACK[0x57D8] + 8 * (((v7 == 0) * v10) ^ v6)))();
}

uint64_t sub_1003102D8@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12 = a2 - 1;
  *(a3 + v12) = *(v7 + v12) ^ *(v4 + v12) ^ (v12 * v11) ^ (v12 * v10) ^ *(v8 + v12) ^ *(v9 + v12) ^ *(v6 + v12) ^ *(v3 + v12) ^ *(v5 + v12);
  return (*(STACK[0x57D8] + 8 * (((v12 == 0) * (a1 + 18432)) ^ a1)))();
}

uint64_t sub_10031039C()
{
  STACK[0xE1D0] = v1;
  v2 = STACK[0xB0D8];
  STACK[0xE1D8] = STACK[0xB0D8];
  return (*(STACK[0x57D8] + 8 * ((31786 * (v1 - v2 > ((2 * v0) ^ 0x618FuLL))) ^ v0)))();
}

uint64_t sub_100310464()
{
  v1 = *(STACK[0x9BF8] + 24);
  STACK[0x8A38] = v1;
  return (*(STACK[0x57D8] + 8 * ((((113 * (v0 ^ 0x335D) + 5859) ^ (3 * (v0 ^ 0x2E8A))) * (v1 != 0)) ^ v0)))();
}

uint64_t sub_1003104D4(int a1)
{
  v9 = *(STACK[0x57C0] + ((v1 - 3676) | 0x1100) + 8675225 + a1 * v7 - 5816 * (((((((v1 - 3676) | 0x1100u) + 8675225 + a1 * v7) >> 3) * v6) >> 32) >> 7));
  v10 = (((v9 ^ 0xFC86EDE8) + 58266136) ^ ((v9 ^ 0x19931A6F) - 429070959) ^ ((v9 ^ 0xE515F740) + 451545280)) * v8 + 31222147;
  v11 = *(v2 + 4 * (v10 - (((v10 * v5) >> 32) >> 12) * v4));
  v12 = (BYTE1(v11) ^ 0xB6) * v7 + 6213569 - 5816 * (((11815591 * ((BYTE1(v11) ^ 0xB6u) * v7 + 6213569)) >> 32) >> 4);
  v13 = v12 >> (BYTE1(v11) & 0x1F ^ 0x16) >> (BYTE1(v11) & 0x1F ^ 9);
  v14 = (((HIBYTE(v11) ^ 0x44814E42) - 469767863) ^ ((HIBYTE(v11) ^ 0xF242F922) + 1430019625) ^ ((HIBYTE(v11) ^ 0xB6C3B708) + 297603075)) * v7 + 1465266656;
  v15 = ((v12 ^ (v13 >> 1)) + (v13 & (2 * v12))) | (v13 << 31);
  v16 = (((v11 ^ 0xAA213086) + 1504102626) ^ ((v11 ^ 0xB75E6FC) - 118350180) ^ ((v11 ^ 0xA154D6F0) + 1389571736)) * v7 - 485715641;
  v17 = *(STACK[0x57C0] + (BYTE2(v11) ^ 0x4F) * v7 + 6213569 - 5816 * (((11815591 * ((BYTE2(v11) ^ 0x4Fu) * v7 + 6213569)) >> 32) >> 4)) << 8;
  v18 = *(STACK[0x57C0] + v15);
  v19 = (((v17 ^ 0xFF10C7) & ((*(STACK[0x57C0] + v14 - 5816 * ((((v14 >> 3) * v6) >> 32) >> 7)) << 16) ^ 0x2FD1C7) | v17 & 0x2E00) ^ 0x24DEF8) & (v18 ^ (v3 + 152));
  v20 = *(STACK[0x57C0] + v16 - 5816 * ((((v16 >> 3) * v6) >> 32) >> 7));
  *(v2 + 4 * (a1 * v8 + 9469466 - ((((a1 * v8 + 9469466) * v5) >> 32) >> 12) * v4)) = ((((v19 ^ v18 & 0xC0) << 8) ^ 0x486442EC) & (v20 ^ 0xFFFFFF28) | v20 & 0x13) ^ 0xEC220B65;
  return (*(STACK[0x57D8] + 8 * ((3964 * (a1 == 255)) ^ v1)))();
}

uint64_t sub_1003107DC()
{
  v0 = STACK[0x6DC0];
  *STACK[0x9E60] = *(STACK[0x6DC0] + 376);
  *STACK[0xC7A0] = *(v0 + 384);
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2758])))();
}

uint64_t sub_100310820()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x1673)))(96);
  *STACK[0x9960] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 - 1632661072) & 0xFF7FFF2F) + 1641022879)) ^ v0)))();
}

uint64_t sub_100310950@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v7 = STACK[0x5710];
  v8 = (STACK[0x5710] + v6);
  *(v7 + a1) = v2 - ((v2 << ((a2 + 56) ^ 2)) & 0x1E) + 15;
  v8[2] = BYTE1(v5) - ((v5 >> 7) & 0x1E) + 15;
  *(v7 + STACK[0x5630]) = v3 + (~(2 * v3) | 0xE1) + 16;
  *(v7 + STACK[0x5540]) = BYTE1(v4) - ((v4 >> 7) & 0x1E) + 15;
  v8[4] = HIBYTE(v4) - ((v4 >> 23) & 0x1E) + 15;
  *(v7 + STACK[0x5550]) = BYTE1(v2) - ((v2 >> 7) & 0x1E) + 15;
  v8[13] = (~(v3 >> 15) | 0xE1) + BYTE2(v3) + 16;
  *v8 = (~(v5 >> 23) | 0xE1) + HIBYTE(v5) + 16;
  v8[8] = HIBYTE(v2) - ((v2 >> 23) & 0x1E) + 15;
  *(v7 + STACK[0x5560]) = v4 + (~(2 * v4) | 0xE1) + 16;
  *(v7 + STACK[0x5650]) = v5 - 2 * (v5 & 0xF) + 15;
  *(v7 + STACK[0x5570]) = BYTE2(v2) - ((v2 >> 15) & 0x1E) + 15;
  *(v7 + STACK[0x5580]) = HIBYTE(v3) - ((v3 >> 23) & 0x1E) + 15;
  *(v7 + STACK[0x5590]) = BYTE2(v4) - ((v4 >> 15) & 0x1E) + 15;
  *(v7 + STACK[0x55A0]) = BYTE2(v5) - ((v5 >> 15) & 0x1E) + 15;
  *(v7 + STACK[0x55C0]) = (~(v3 >> 7) | 0xE1) + BYTE1(v3) + 16;
  return (*(STACK[0x57D8] + 8 * a2))();
}

uint64_t sub_100310B18()
{
  LODWORD(STACK[0x7CC0]) = LODWORD(STACK[0x7964]) + v0;
  v1 = STACK[0x57D8];
  STACK[0xADE8] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2484]));
  return (*(v1 + 8 * SLODWORD(STACK[0x247C])))();
}

uint64_t sub_100310B94@<X0>(unint64_t a1@<X0>, int a2@<W8>)
{
  LODWORD(STACK[0xE778]) = a2;
  LODWORD(STACK[0x71BC]) = v5;
  STACK[0xC1A8] = a1;
  v6 = a2 == v2;
  LOBYTE(STACK[0xE77F]) = v6;
  if (v3 == ((v4 + 21244) ^ 0xD21CD8C2))
  {
    v6 = 0;
  }

  return (*(STACK[0x57D8] + 8 * ((27286 * v6) ^ v4)))();
}

uint64_t sub_100310C04()
{
  v1 = *(STACK[0x5740] + ((((STACK[0x5670] & 0xAF080560) + (STACK[0x5670] | 0xAF080563) - 885771337) & STACK[0x5590]) & 0xFFFFFFFFFFFFFFF8));
  v2 = ((STACK[0x53B0] & 0x22068B56A9DDBC98) - STACK[0x5510] + 0x6EFCBA54AB1121B3) ^ 0xD674BB804AD642E0;
  v3 = v2 ^ STACK[0x53C0];
  v4 = __ROR8__(v2, 8);
  v5 = (((2 * (v4 + v3)) | 0xC851BA88E8DC82C6) - (v4 + v3) + 0x1BD722BB8B91BE9DLL) ^ 0xDCE06C2E936B2914;
  v6 = v5 ^ __ROR8__(v3, 61);
  v7 = (__ROR8__(v5, 8) + v6) ^ 0xE580B17D8CC5E551;
  v8 = __ROR8__(v7, 8);
  v9 = v7 ^ __ROR8__(v6, 61);
  v10 = (v8 + v9) ^ 0xE1A1FD5BD155F97ALL;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (0xCCEF9126DD4CB317 - ((v12 + v11) | 0xCCEF9126DD4CB317) + ((v12 + v11) | 0x33106ED922B34CE8)) ^ 0xE97025D52111F371;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * ((v15 + v14) ^ 0xE0FB5F7B897905A5)) | 0xC2B6DBD0FB746510) - ((v15 + v14) ^ 0xE0FB5F7B897905A5) + 0x1EA492178245CD78) ^ 0xFB95D05E3FFD06EALL;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (v18 + v17 - ((2 * (v18 + v17)) & 0x9C68564EC1CAE560) - 0x31CBD4D89F1A8D50) ^ 0x1CC427C14000A11ELL;
  v20 = __ROR8__(v19, 8) + (v19 ^ __ROR8__(v17, 61));
  v21 = (((2 * (v1 + STACK[0x56E0])) & 0x10C2F9F0717A1E2ALL) - (v1 + STACK[0x56E0]) + 0x779E8307C742F0EALL) ^ 0xCF1682D3268593B9;
  v22 = v21 ^ __ROR8__(v1, 61);
  v23 = (v20 ^ 0xF4730B31AE70757BLL) >> STACK[0x57B0];
  v24 = (__ROR8__(v21, 8) + v22) ^ 0x38C8B16AE7056877;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (0x2C63FDDB768D4E39 - ((v26 + v25) | 0x2C63FDDB768D4E39) + ((v26 + v25) | 0xD39C02248972B1C6)) ^ 0x361CB35905B75497;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (((2 * (v29 + v28)) & 0xB2A07E53A92F1FALL) - (v29 + v28) - 0x59503F29D4978FELL) ^ 0x1BCB0156B3E37E78;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (((2 * (v32 + v31)) & 0xA6132E146DA1B678) - (v32 + v31) + 0x2CF668F5C92F24C3) ^ 0xF69623F9CA8D9B5ALL ^ __ROR8__(v31, 61);
  v34 = (__ROR8__((((2 * (v32 + v31)) & 0xA6132E146DA1B678) - (v32 + v31) + 0x2CF668F5C92F24C3) ^ 0xF69623F9CA8D9B5ALL, 8) + v33) ^ 0xFA35E2CDCB3E31C7;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0xD2F00CE620E5D3AELL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = ((0x9DB98418A0E290CELL - ((v38 + v37) | 0x9DB98418A0E290CELL) + ((v38 + v37) | 0x62467BE75F1D6F31)) ^ 0x963570D6F16D1A4ALL) >> STACK[0x5480];
  v40 = *(STACK[0x5328] + (LODWORD(STACK[0x5218]) & ((STACK[0x5308] ^ 0x5F9EEDF) + 1950499006 + (STACK[0x5368] & 0xBF3DDB0) + 2429)));
  v41 = (0x71A3ED9A90BD29F2 - ((v40 + STACK[0x5700]) | 0x71A3ED9A90BD29F2) + ((v40 + STACK[0x5700]) | 0x8E5C12656F42D60DLL)) ^ 0x36D413B18E85B55ELL;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0x38C8B16AE7056877;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0xE580B17D8CC5E551;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (v47 + v46 - ((2 * (v47 + v46)) & 0x79211A1921F2A66ALL) - 0x436F72F36F06ACCBLL) ^ 0x5D31705741ACAA4FLL;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = __ROR8__(v48, 8);
  v51 = __ROR8__((v50 + v49 - ((2 * (v50 + v49)) & 0x28FD0F04B24EAEEELL) - 0x6B81787DA6D8A889) ^ 0x4E1ECC8E5A85E8EELL, 8);
  v52 = (v50 + v49 - ((2 * (v50 + v49)) & 0x28FD0F04B24EAEEELL) - 0x6B81787DA6D8A889) ^ 0x4E1ECC8E5A85E8EELL ^ __ROR8__(v49, 61);
  v53 = (v51 + v52) ^ 0xFA35E2CDCB3E31C7;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0xD2F00CE620E5D3AELL;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = __ROR8__(v55, 8);
  v58 = ((((2 * (v57 + v56)) | 0x36EC03C8C8674D12) - (v57 + v56) - 0x1B7601E46433A689) ^ 0xEF050AD5CA43D3F2) >> STACK[0x54B0];
  v59 = *(STACK[0x5320] + ((((STACK[0x54E0] & 0x9E2554A0) - 602479988 + (STACK[0x54E0] | 0x9E2554A5) + 489) & STACK[0x5550]) & 0xFFFFFFFFFFFFFFF8));
  v60 = (v59 + STACK[0x5300]) ^ 0xB88801D4E1C76353;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = __ROR8__(v60, 8);
  v63 = (0xA41A1DBF078EA5CLL - ((v62 + v61) | 0xA41A1DBF078EA5CLL) + ((v62 + v61) | 0xF5BE5E240F8715A3)) ^ 0xCD76EF4EE8827DD4;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = __ROR8__(v63, 8);
  LODWORD(v23) = v23 ^ LODWORD(STACK[0x57C0]);
  v66 = (0x746251A42DC38E08 - ((v65 + v64) | 0x746251A42DC38E08) + ((v65 + v64) | 0x8B9DAE5BD23C71F7)) ^ 0x6E1D1F265EF994A6;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (v68 + v67 - ((2 * (v68 + v67)) & 0x91DE2A98E6BD0BELL) + 0x48EF154C735E85FLL) ^ 0xE52F0C0F16601125;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = __ROR8__(v69, 8);
  v72 = (0x3B00899780F45BALL - ((v71 + v70) | 0x3B00899780F45BALL) + ((v71 + v70) | 0xFC4FF76687F0BA45)) ^ 0x262FBC6A845205DCLL;
  v73 = v72 ^ __ROR8__(v70, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ 0xFA35E2CDCB3E31C7;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = __ROR8__(v74, 8);
  v77 = (((2 * (v76 + v75)) & 0x35C83818987EF03ALL) - (v76 + v75) + 0x651BE3F3B3C087E2) ^ 0xB7EBEF159325544CLL;
  v78 = v77 ^ __ROR8__(v75, 61);
  v79 = __ROR8__(v77, 8);
  v80 = ((((2 * (v79 + v78)) | 0xEE6BCFF809F8380ELL) - (v79 + v78) - 0x7735E7FC04FC1C07) ^ 0x8346ECCDAA8C697CLL) >> STACK[0x52C0];
  v81 = (STACK[0x5200] - (STACK[0x51A0] & 0x4F8518009E546EC8) - 0x583D73FFB0D5C89CLL) ^ 0x1F4A8DD4AEED5437;
  v82 = v81 ^ STACK[0x51F8];
  v83 = (__ROR8__(v81, 8) + v82) ^ 0x38C8B16AE7056877;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ 0xE580B17D8CC5E551;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8);
  v88 = (((2 * (v87 + v86)) | 0x7E0107E6CC83224ALL) - (v87 + v86) - 0x3F0083F366419125) ^ 0xDEA17EA8B714685FLL;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0xDA604B0C03A2BF99;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = __ROR8__(v90, 8);
  v93 = (((2 * (v92 + v91)) & 0xA00ED7C52DA4D0B0) - (v92 + v91) - 0x50076BE296D26859) ^ 0x55CD76D0A213A660;
  v94 = v93 ^ __ROR8__(v91, 61);
  v95 = (__ROR8__(v93, 8) + v94) ^ 0xD2F00CE620E5D3AELL;
  v96 = ((__ROR8__(v95, 8) + (v95 ^ __ROR8__(v94, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5390];
  v97 = STACK[0x4EE8];
  v98 = ((v97 & 0x34AEB7E528A22A80 ^ 0x1084018420200200) + (v97 ^ 0x2C2AFE6B5ADA29A6) - ((v97 ^ 0x2C2AFE6B5ADA29A6) & 0x34AEB7E528A22A80)) ^ 0x204CF8E4957D6B51 ^ STACK[0x4EF0];
  v99 = (__ROR8__(((v97 & 0x34AEB7E528A22A80 ^ 0x1084018420200200) + (v97 ^ 0x2C2AFE6B5ADA29A6) - ((v97 ^ 0x2C2AFE6B5ADA29A6) & 0x34AEB7E528A22A80)) ^ 0x204CF8E4957D6B51, 8) + v98) ^ 0xE580B17D8CC5E551;
  v100 = v99 ^ __ROR8__(v98, 61);
  v101 = (__ROR8__(v99, 8) + v100) ^ 0xE1A1FD5BD155F97ALL;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = (__ROR8__(v101, 8) + v102) ^ 0xDA604B0C03A2BF99;
  v104 = v103 ^ __ROR8__(v102, 61);
  v105 = (__ROR8__(v103, 8) + v104) ^ 0xFA35E2CDCB3E31C7;
  v106 = __ROR8__(v105, 8);
  v107 = v105 ^ __ROR8__(v104, 61);
  v108 = (((2 * ((v106 + v107) ^ 0x5B5EA17DA23230E4)) | 0x758581E047B859EALL) - ((v106 + v107) ^ 0x5B5EA17DA23230E4) + 0x453D3F0FDC23D30BLL) ^ 0x336C6D6BA10BCFBFLL;
  v109 = v108 ^ __ROR8__(v107, 61);
  v110 = __ROR8__(v108, 8);
  v111 = ((v110 + v109 - ((2 * (v110 + v109)) & 0xEA799315F9538B1CLL) + 0x753CC98AFCA9C58ELL) ^ 0x814FC2BB52D9B0F5) >> STACK[0x52D0];
  v112 = *(STACK[0x5258] + ((((STACK[0x5250] ^ 0xF0F811E3) - 1992023998 + (STACK[0x5138] & 0xE1F023C0) + 1781) & STACK[0x5158]) & 0xFFFFFFFFFFFFFFF8));
  v113 = (((v112 + STACK[0x51A8]) | 0x13E0980B64BDEF1) - ((v112 + STACK[0x51A8]) | 0xFEC1F67F49B4210ELL) - 0x13E0980B64BDEF2) ^ 0xB9B60854578CBDA2;
  v114 = v113 ^ __ROR8__(v112, 61);
  v115 = __ROR8__(v113, 8);
  v116 = (((2 * (v115 + v114)) | 0x83BF8CF9AE2C0A3ALL) - (v115 + v114) + 0x3E20398328E9FAE3) ^ 0xF917771630136D6ALL;
  v117 = v116 ^ __ROR8__(v114, 61);
  v118 = __ROR8__(v116, 8);
  v119 = (v118 + v117 - ((2 * (v118 + v117)) & 0xA7B38D932BFD24F6) + 0x53D9C6C995FE927BLL) ^ 0xB65977B4193B772ALL;
  v120 = v119 ^ __ROR8__(v117, 61);
  v121 = (__ROR8__(v119, 8) + v120) ^ 0xE1A1FD5BD155F97ALL;
  v122 = v121 ^ __ROR8__(v120, 61);
  v123 = __ROR8__(v121, 8);
  v124 = (v123 + v122 - ((2 * (v123 + v122)) & 0xD3FAF665A1BE6C98) + 0x69FD7B32D0DF364CLL) ^ 0xB39D303ED37D89D5 ^ __ROR8__(v122, 61);
  v125 = (__ROR8__((v123 + v122 - ((2 * (v123 + v122)) & 0xD3FAF665A1BE6C98) + 0x69FD7B32D0DF364CLL) ^ 0xB39D303ED37D89D5, 8) + v124) ^ 0xFA35E2CDCB3E31C7;
  v126 = v125 ^ __ROR8__(v124, 61);
  v127 = __ROR8__(v125, 8);
  v128 = (v127 + v126 - ((2 * (v127 + v126)) & 0xD0A62B6E3F87886) - 0x797ACEA48E03C3BDLL) ^ 0x54753DBD5119EFEDLL;
  v129 = v128 ^ __ROR8__(v126, 61);
  v130 = __ROR8__(v128, 8);
  v131 = ((v130 + v129 - ((2 * (v130 + v129)) & 0xDBF9A85CFF255122) - 0x12032BD1806D576FLL) ^ 0x198FDF1FD1E2DDEALL) >> STACK[0x51B0];
  v132 = *(STACK[0x5110] + (STACK[0x5118] & ((STACK[0x5130] ^ 0x7E2A04FC) - 65919833 + (STACK[0x5128] & 0xFC5409F0) + 3957)));
  LODWORD(v129) = ((v39 ^ LODWORD(STACK[0x54A0]) ^ 0xFFFFFFB7) - 17) ^ ((v39 ^ LODWORD(STACK[0x54A0]) ^ 0xFFFFFF82) - 36) ^ ((v39 ^ LODWORD(STACK[0x54A0]) ^ 0x35) + 109);
  LODWORD(STACK[0x4FF0]) = LODWORD(STACK[0x56F0]) ^ v58;
  LODWORD(STACK[0x5460]) = LODWORD(STACK[0x52C8]) ^ v80;
  v133 = (v132 + STACK[0x5160]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v132, 61);
  v134 = __ROR8__((v132 + STACK[0x5160]) ^ 0xB88801D4E1C76353, 8);
  v135 = (v134 + v133 - ((2 * (v134 + v133)) & 0x373672A92AA5DED4) + 0x1B9B39549552EF6ALL) ^ 0x2353883E7257871DLL;
  v136 = v135 ^ __ROR8__(v133, 61);
  v137 = (__ROR8__(v135, 8) + v136) ^ 0xE580B17D8CC5E551;
  v138 = v137 ^ __ROR8__(v136, 61);
  v139 = __ROR8__(v137, 8);
  v140 = (((2 * (v139 + v138)) | 0x5A618AFE3091B2D6) - (v139 + v138) + 0x52CF3A80E7B72695) ^ 0x4C913824C91D2011;
  v141 = v140 ^ __ROR8__(v138, 61);
  v142 = __ROR8__(v140, 8);
  LODWORD(STACK[0x54C0]) = LODWORD(STACK[0x5398]) ^ v96;
  v143 = (((2 * (v142 + v141)) | 0x8838B747B3B49E60) - (v142 + v141) + 0x3BE3A45C2625B0D0) ^ 0x1E7C10AFDA78F0A9;
  v144 = v143 ^ __ROR8__(v141, 61);
  v145 = (__ROR8__(v143, 8) + v144) ^ 0xFA35E2CDCB3E31C7;
  v146 = v145 ^ __ROR8__(v144, 61);
  v147 = __ROR8__(v145, 8);
  v148 = (v147 + v146 - ((2 * (v147 + v146)) & 0x5109B880EB85AEFCLL) + 0x2884DC4075C2D77ELL) ^ 0xFA74D0A6552704D0;
  v149 = v148 ^ __ROR8__(v146, 61);
  v150 = __ROR8__(v148, 8);
  v151 = ((v150 + v149 - ((2 * (v150 + v149)) & 0xA9FBBEC63263FB4ELL) + 0x54FDDF631931FDA7) ^ 0xA08ED452B74188DCLL) >> STACK[0x5148];
  LODWORD(STACK[0x4F78]) = LODWORD(STACK[0x52F0]) ^ v111;
  LODWORD(STACK[0x5620]) = LODWORD(STACK[0x51C0]) ^ v131;
  v152 = STACK[0x4E88];
  v153 = ((v152 | 0xD793A3FA60C25EC0) - (v152 | 0x286C5C059F3DA13FLL) + 0x286C5C059F3DA13FLL) ^ 0x6F1BA22E81053D93 ^ STACK[0x4E90];
  v154 = (__ROR8__(((v152 | 0xD793A3FA60C25EC0) - (v152 | 0x286C5C059F3DA13FLL) + 0x286C5C059F3DA13FLL) ^ 0x6F1BA22E81053D93, 8) + v153) ^ 0x38C8B16AE7056877;
  v155 = v154 ^ __ROR8__(v153, 61);
  v156 = (__ROR8__(v154, 8) + v155) ^ 0xE580B17D8CC5E551;
  v157 = v156 ^ __ROR8__(v155, 61);
  v158 = __ROR8__(v156, 8);
  v159 = (v158 + v157 - ((2 * (v158 + v157)) & 0x7A5EC234E055CE0ELL) - 0x42D09EE58FD518F9) ^ 0x5C8E9C41A17F1E7DLL;
  v160 = v159 ^ __ROR8__(v157, 61);
  v161 = (__ROR8__(v159, 8) + v160) ^ 0xDA604B0C03A2BF99;
  v162 = v161 ^ __ROR8__(v160, 61);
  v163 = __ROR8__(v161, 8);
  v164 = (((2 * (v163 + v162)) | 0x51CAFDE3AED80548) - (v163 + v162) + 0x571A810E2893FD5CLL) ^ 0x52D09C3C1C523363;
  v165 = v164 ^ __ROR8__(v162, 61);
  v166 = (__ROR8__(v164, 8) + v165) ^ 0xD2F00CE620E5D3AELL;
  v167 = v166 ^ __ROR8__(v165, 61);
  v168 = __ROR8__(v166, 8);
  v169 = ((2 * (v168 + v167)) & 0x825829B0A8DB34DCLL) - (v168 + v167);
  v170 = *(STACK[0x5058] + ((((STACK[0x5048] ^ 0xEEECCD49) - 1957729327 + (STACK[0x4F08] & 0xDDD99A90)) & LODWORD(STACK[0x4E50])) & 0xFFFFFFFFFFFFFFF8));
  v171 = ((v169 - 0x412C14D8546D9A6FLL) ^ 0x4AA0E01605E210EALL) >> STACK[0x50C0];
  LODWORD(v169) = ((v151 ^ LODWORD(STACK[0x5150]) ^ 0x5B) + 10) ^ ((v151 ^ LODWORD(STACK[0x5150]) ^ 0x17) + 70) ^ ((v151 ^ LODWORD(STACK[0x5150]) ^ 0x4C) + 31);
  LODWORD(STACK[0x5560]) = LODWORD(STACK[0x50C8]) ^ v171;
  v172 = (v170 + STACK[0x5050]) ^ 0xB88801D4E1C76353;
  v173 = v172 ^ __ROR8__(v170, 61);
  v174 = __ROR8__(v172, 8);
  v175 = (v174 + v173 - ((2 * (v174 + v173)) & 0xFCB53475620C069ALL) - 0x1A565C54EF9FCB3) ^ 0xC6922B5056036B3ALL;
  v176 = v175 ^ __ROR8__(v173, 61);
  v177 = (__ROR8__(v175, 8) + v176) ^ 0xE580B17D8CC5E551;
  v178 = v177 ^ __ROR8__(v176, 61);
  v179 = __ROR8__(v177, 8);
  v180 = (((2 * (v179 + v178)) | 0xE4342A6A1A599DB8) - (v179 + v178) + 0xDE5EACAF2D33124) ^ 0x13BBE86EDC7937A6;
  v181 = v180 ^ __ROR8__(v178, 61);
  v182 = __ROR8__(v180, 8);
  v183 = (v182 + v181 - ((2 * (v182 + v181)) & 0xFD0932CC09723D8) + 0x7E84996604B91ECLL) ^ 0xDD88029A63E92E75;
  v184 = v183 ^ __ROR8__(v181, 61);
  v185 = (__ROR8__(v183, 8) + v184) ^ 0xFA35E2CDCB3E31C7;
  v186 = __ROR8__(v185, 8);
  v187 = v185 ^ __ROR8__(v184, 61);
  v188 = (v186 + v187) ^ 0xD2F00CE620E5D3AELL;
  v189 = v188 ^ __ROR8__(v187, 61);
  v190 = __ROR8__(v188, 8);
  v191 = *(STACK[0x4F58] + ((((STACK[0x4FD0] ^ 0x64CB595F) + 359718843 + (STACK[0x4B48] & 0xC996B2B0)) & STACK[0x4F50]) & 0xFFFFFFFFFFFFFFF8));
  LODWORD(STACK[0x5600]) = LODWORD(STACK[0x5040]) ^ (((v190 + v189) ^ 0xF4730B31AE70757BLL) >> STACK[0x5038]);
  v192 = (((2 * (v191 + STACK[0x4FC8])) & 0xB01B96D5CA445054) - (v191 + STACK[0x4FC8]) - 0x580DCB6AE522282BLL) ^ 0x1F7A3541FB1AB486;
  v193 = v192 ^ __ROR8__(v191, 61);
  v194 = __ROR8__(v192, 8);
  v195 = (v194 + v193 - ((2 * (v194 + v193)) & 0x31DE4709C8A852E2) + 0x18EF2384E4542971) ^ 0x202792EE03514106;
  v196 = v195 ^ __ROR8__(v193, 61);
  v197 = __ROR8__(v195, 8);
  v198 = (v197 + v196 - ((2 * (v197 + v196)) & 0x2975F86F6A8E4446) - 0x6B4503C84AB8DDDDLL) ^ 0x713A4D4A3982C772 ^ __ROR8__(v196, 61);
  v199 = (__ROR8__((v197 + v196 - ((2 * (v197 + v196)) & 0x2975F86F6A8E4446) - 0x6B4503C84AB8DDDDLL) ^ 0x713A4D4A3982C772, 8) + v198) ^ 0xE1A1FD5BD155F97ALL;
  v200 = v199 ^ __ROR8__(v198, 61);
  v201 = (__ROR8__(v199, 8) + v200) ^ 0xDA604B0C03A2BF99;
  v202 = v201 ^ __ROR8__(v200, 61);
  v203 = __ROR8__(v201, 8);
  v204 = __ROR8__((((2 * (v203 + v202)) & 0x53D331D48192F8E6) - (v203 + v202) + 0x56166715BF36838CLL) ^ 0xAC2385D87408B24BLL, 8);
  v205 = (((2 * (v203 + v202)) & 0x53D331D48192F8E6) - (v203 + v202) + 0x56166715BF36838CLL) ^ 0xAC2385D87408B24BLL ^ __ROR8__(v202, 61);
  v206 = (v204 + v205) ^ 0xD2F00CE620E5D3AELL;
  v207 = v206 ^ __ROR8__(v205, 61);
  v208 = __ROR8__(v206, 8);
  v209 = *(STACK[0x4B58] + ((((v0 ^ 0x6320FD41) + 387660761 + (STACK[0x4E38] & 0xC641FA80)) & STACK[0x4B88]) & 0xFFFFFFFFFFFFFFF8));
  LODWORD(STACK[0x5450]) = LODWORD(STACK[0x4F48]) ^ (((v208 + v207) ^ 0xF4730B31AE70757BLL) >> STACK[0x4F10]);
  v210 = (v209 + STACK[0x4EB8]) ^ 0xB88801D4E1C76353;
  v211 = v210 ^ __ROR8__(v209, 61);
  v212 = (__ROR8__(v210, 8) + v211) ^ 0x38C8B16AE7056877;
  v213 = v212 ^ __ROR8__(v211, 61);
  v214 = __ROR8__(v212, 8);
  v215 = __ROR8__((((2 * (v214 + v213)) & 0xA45911492E1E8710) - (v214 + v213) - 0x522C88A4970F4389) ^ 0x4853C626E4355926, 8);
  v216 = (((2 * (v214 + v213)) & 0xA45911492E1E8710) - (v214 + v213) - 0x522C88A4970F4389) ^ 0x4853C626E4355926 ^ __ROR8__(v213, 61);
  v217 = (((2 * (v215 + v216)) | 0x15778457767FE0B6) - (v215 + v216) + 0x75443DD444C00FA5) ^ 0x6B1A3F706A6A0921;
  v218 = v217 ^ __ROR8__(v216, 61);
  v219 = (__ROR8__(v217, 8) + v218) ^ 0xDA604B0C03A2BF99;
  v220 = v219 ^ __ROR8__(v218, 61);
  v221 = __ROR8__(v219, 8);
  v222 = (((2 * (v221 + v220)) & 0xAAB348768D00EDFELL) - (v221 + v220) + 0x2AA65BC4B97F8900) ^ 0xD093B9097241B8C7;
  v223 = v222 ^ __ROR8__(v220, 61);
  v224 = __ROR8__(v222, 8);
  v225 = (((2 * (v224 + v223)) & 0x93CFA7D82F9A5C4) - (v224 + v223) + 0x7B6182C13E832D1DLL) ^ 0xA9918E271E66FEB3;
  v226 = v225 ^ __ROR8__(v223, 61);
  v227 = __ROR8__(v225, 8);
  LODWORD(STACK[0x5120]) = LODWORD(STACK[0x4E80]) ^ (((((2 * (v227 + v226)) & 0xB5141031C6243288) - (v227 + v226) - 0x5A8A0818E3121945) ^ 0x5106FCD6B29D93C0) >> STACK[0x4EC8]);
  v228 = *(STACK[0x4B90] + (STACK[0x4BA0] & ((((STACK[0x4B50] & 0xB1240F0) + (STACK[0x4DC0] ^ 0x8589207A)) & 0xFFFFFFF8) - 189589344)));
  v229 = (((2 * (v228 + STACK[0x4DD8])) & 0xB8EC902ECE7CD864) - (v228 + STACK[0x4DD8]) + 0x2389B7E898C193CDLL) ^ 0x9B01B63C7906F09ELL;
  v230 = v229 ^ __ROR8__(v228, 61);
  v231 = (__ROR8__(v229, 8) + v230) ^ 0x38C8B16AE7056877;
  v232 = v231 ^ __ROR8__(v230, 61);
  v233 = (__ROR8__(v231, 8) + v232) ^ 0xE580B17D8CC5E551;
  v234 = v233 ^ __ROR8__(v232, 61);
  v235 = __ROR8__(v233, 8);
  v236 = (((2 * (v235 + v234)) & 0x726BDF717BFE820CLL) - (v235 + v234) + 0x46CA10474200BEF9) ^ 0xA76BED1C93554783;
  v237 = v236 ^ __ROR8__(v234, 61);
  v238 = (__ROR8__(v236, 8) + v237) ^ 0xDA604B0C03A2BF99;
  v239 = v238 ^ __ROR8__(v237, 61);
  v240 = (__ROR8__(v238, 8) + v239) ^ 0xFA35E2CDCB3E31C7;
  v241 = v240 ^ __ROR8__(v239, 61);
  v242 = __ROR8__(v240, 8);
  v243 = (((2 * (v242 + v241)) & 0x133CBD6782A739E6) - (v242 + v241) - 0x99E5EB3C1539CF4) ^ 0x2491ADAA1E49B0A2;
  v244 = v243 ^ __ROR8__(v241, 61);
  v245 = __ROR8__(v243, 8);
  LODWORD(v132) = STACK[0x4B40];
  LODWORD(v215) = STACK[0x4B98] & (289852911 * (((-1229717233 * STACK[0x4BA8]) ^ 0xE29051BB ^ (108 * (LODWORD(STACK[0x4B40]) ^ 0x18CF))) - ((1835532830 * STACK[0x4BA8]) & 0xC520EBE0 ^ 0xC520EBE6)) + 285208055);
  v246 = ((((2 * (v245 + v244)) & 0x17D7B6A612E66778) - (v245 + v244) - 0xBEBDB53097333BDLL) ^ 0x672F9D58FCB938uLL) >> STACK[0x4DD0];
  LODWORD(STACK[0x5230]) = (((v23 ^ 0xFFFFFFF5) - 124) ^ ((v23 ^ 0x4C) + 59) ^ ((v23 ^ 0xFFFFFFB9) - 48)) - 114;
  LODWORD(STACK[0x4F70]) = v129 - 71;
  LODWORD(STACK[0x5378]) = v169 - 42;
  v247 = *(STACK[0x4B80] + (v215 & 0xFFFFFFF8));
  v248 = (((2 * (v247 + STACK[0x4B78])) & 0x5681D5F331F9AEECLL) - (v247 + STACK[0x4B78]) - 0x2B40EAF998FCD777) ^ 0x6C3714D286C44BDALL;
  v249 = __ROR8__(v248, 8);
  v250 = v248 ^ __ROR8__(v247, 61);
  v251 = (((v249 + v250) | 0xA52C1D966A1F6888) - ((v249 + v250) | 0x5AD3E26995E09777) + 0x5AD3E26995E09777) ^ 0x9DE4ACFC8D1A00FFLL;
  v252 = __ROR8__(v251, 8);
  v253 = v251 ^ __ROR8__(v250, 61);
  v254 = (((2 * (v252 + v253)) & 0x9C2187A1EBEAE4B8) - (v252 + v253) + 0x31EF3C2F0A0A8DA3) ^ 0xD46F8D5286CF68F2;
  v255 = v254 ^ __ROR8__(v253, 61);
  v256 = (__ROR8__(v254, 8) + v255) ^ 0xE1A1FD5BD155F97ALL;
  v257 = v256 ^ __ROR8__(v255, 61);
  v258 = (__ROR8__(v256, 8) + v257) ^ 0xDA604B0C03A2BF99;
  v259 = __ROR8__(v258, 8);
  v260 = v258 ^ __ROR8__(v257, 61);
  v261 = (((2 * (v259 + v260)) & 0x6B48F14D3345D154) - (v259 + v260) - 0x35A478A699A2E8ABLL) ^ 0x306E6594AD632692;
  LODWORD(STACK[0x5358]) = LODWORD(STACK[0x4B60]) ^ v246;
  v262 = v261 ^ __ROR8__(v260, 61);
  v263 = (__ROR8__(v261, 8) + v262) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(STACK[0x5440]) = LODWORD(STACK[0x4B70]) ^ (((__ROR8__(v263, 8) + (v263 ^ __ROR8__(v262, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x4B68]);
  LODWORD(STACK[0x52E0]) = 229;
  LODWORD(STACK[0x5248]) = 133;
  return (*(STACK[0x57D8] + 8 * v132))(LODWORD(STACK[0x52A0]));
}

uint64_t sub_100312804()
{
  v0 = STACK[0x51B8] - 5657;
  STACK[0xAB50] = 0;
  v1 = STACK[0x57D8];
  v2 = STACK[0xFE4];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0xFE4]));
  return (*(v1 + 8 * ((v0 ^ 0x4967) + v2)))(0x308E083E0C524CBELL);
}

uint64_t sub_1003128D8@<X0>(int a1@<W8>)
{
  *(v6 + 2948) = v4;
  *(v6 + 2947) = v2;
  *(v6 + 2952) = v3;
  *(v6 + 2960) = v3;
  *(v6 + 2972) = v5 + 2;
  v7 = v1 - 683801607;
  v8 = v7 < 0x235AB6D6;
  v9 = v5 + 593147608 < v7;
  if (v8 != v5 + 593147608 < ((172 * (a1 ^ 0x5800)) ^ 0x235A8F1Eu))
  {
    v9 = v8;
  }

  return (*(STACK[0x57D8] + 8 * ((23469 * v9) ^ (a1 - 8135))))();
}

uint64_t sub_10031296C()
{
  v0 = STACK[0x1820];
  v1 = STACK[0x9140];
  v2 = *(STACK[0x9140] - 0x1883660EE814440ALL) - 769884012 + (((LODWORD(STACK[0x6D4C]) ^ 0xA1DEAA2B) + 1579242965) ^ (((3 * (LODWORD(STACK[0x1820]) ^ 0x3A96)) ^ LODWORD(STACK[0x6D4C]) ^ 0xF4A22A22) + 190680460) ^ ((LODWORD(STACK[0x6D4C]) ^ 0x876058CB) + ((3769 * (LODWORD(STACK[0x1820]) ^ 0x27E2)) ^ 0x789FFF63)));
  LODWORD(STACK[0xEBE8]) = v2;
  v3 = *(v1 - 0x1883660EE814440ELL) - 1290515245;
  v2 -= 1290515245;
  v4 = v2 < 0x305DC14F;
  v5 = v3 < v2;
  if (v3 < 0x305DC14F != v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = (STACK[0x9150] == 0) | v6;
  if (v7)
  {
    v8 = -143155721;
  }

  else
  {
    v8 = -143113071;
  }

  LODWORD(STACK[0xEBEC]) = v8;
  return (*(STACK[0x57D8] + 8 * (((v7 & 1) == 0) | (8 * ((v7 & 1) == 0)) | v0)))();
}

uint64_t sub_100312B7C()
{
  STACK[0xD410] = 0;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 | 0x4AA3)))(1032);
  STACK[0xD400] = v2;
  v3 = (*(v1 + 8 * (v0 ^ 0x4AA3)))(1028);
  STACK[0xD410] = v3;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  return (*(v1 + 8 * ((v5 * ((((v0 - 12564) | 0x2C18) - 1697395711) ^ 0x9AD3BF92)) ^ v0)))();
}

uint64_t sub_100312C24()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x51B8] - 20084;
  v2 = STACK[0x57D8];
  STACK[0x8580] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x1835 ^ (12904 * ((v0 + 1270274286) < 0x3052DA77)))))();
}

uint64_t sub_100312E64@<X0>(int a1@<W8>)
{
  v3 = 551690071 * ((0x922616760AB5C3ADLL - ((v2 - 240) | 0x922616760AB5C3ADLL) + STACK[0x2498]) ^ 0x1C44BB47BBA76F05);
  STACK[0x1D4E0] = v3 + 38;
  LODWORD(STACK[0x1D4D0]) = v3;
  LODWORD(STACK[0x1D4C8]) = ((a1 - 301804713) ^ 0x3BA) - v3;
  LODWORD(STACK[0x1D4C0]) = (a1 - 1079089617) ^ v3;
  STACK[0x1D4D8] = v1 - v3;
  LODWORD(STACK[0x1D4C4]) = (a1 - 301806180) ^ v3;
  LODWORD(STACK[0x1D4CC]) = a1 - 301804713 - v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (a1 ^ 0x2411)))(v2 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4D4])))(v5);
}

uint64_t sub_100313038@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>)
{
  v24 = *(a3 + 528) + 4 * a9;
  v25 = *(*v15 + ((*v10 & ((v24 & 0xFFFFFFF8 & v11) + (v24 & 0xFFFFFFF8 | ((v9 ^ v22) * a2) ^ v23) + v14)) & 0xFFFFFFFFFFFFFFF8));
  v26 = (__ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8) + v25) ^ a5;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (v12 - ((v28 + v27) | v12) + ((v28 + v27) | v13)) ^ v16;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = ((v17 & (2 * (v31 + v30))) - (v31 + v30) + v18) ^ v19;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v32, 8);
  v35 = ((v20 | (2 * (v34 + v33))) - (v34 + v33) + v21) ^ 0x866A9044AB870C1BLL ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(((v20 | (2 * (v34 + v33))) - (v34 + v33) + v21) ^ 0x866A9044AB870C1BLL, 8) + v35) ^ a6;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x52F1884918D8D6A2;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  *v24 = ((__ROR8__((((2 * (v40 + v39)) | 0x735A292E791F068) - (v40 + v39) + a7) ^ a8, 8) + ((((2 * (v40 + v39)) | 0x735A292E791F068) - (v40 + v39) + a7) ^ a8 ^ __ROR8__(v39, 61))) ^ a4) >> (8 * (v24 & 7u));
  return (*(STACK[0x57D8] + 8 * (v9 | (8 * (a9 + 1 <= a1)))))();
}

void *sub_1003132C0()
{
  v1 = STACK[0x57D8];
  STACK[0xC2A0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((((v0 - 1419102098) & 0x5495F36F) - 6939) ^ v0)))(&STACK[0xCA4C]);
}

uint64_t sub_1003133FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0x53F8]) ^= 0xA2A2A2A2;
  LODWORD(STACK[0x5710]) = LODWORD(STACK[0x5700]) ^ v5 ^ 0x5F133847;
  return (*(STACK[0x57D8] + 8 * a5))();
}

uint64_t sub_100313718()
{
  LODWORD(STACK[0xAE38]) = v2;
  STACK[0x6F48] = v1;
  v4 = (((LODWORD(STACK[0x5CFC]) ^ 0x7FDA4D06) - 2145012998) ^ ((LODWORD(STACK[0x5CFC]) ^ 0x34EC3216) - 887894550) ^ ((LODWORD(STACK[0x5CFC]) ^ 0x992AFF84) + 1725235324)) + 170128162 < 0x3807728E;
  v5 = 1534937323 * ((((2 * (v3 - 240)) | 0xC583FC81C528E5AALL) - (v3 - 240) - 0x62C1FE40E29472D5) ^ 0xAFB97682247A8992);
  LODWORD(STACK[0x1D4CC]) = 1534937323 * ((((2 * (v3 - 240)) | 0xC528E5AA) - (v3 - 240) + 493587755) ^ 0x247A8992) + 1451493860 + v0;
  STACK[0x1D4D8] = v5;
  LODWORD(STACK[0x1D4C8]) = ((v0 + 1603977129) & 0x5FDF0FC2) - 1534937323 * ((((2 * (v3 - 240)) | 0xC528E5AA) - (v3 - 240) + 493587755) ^ 0x247A8992);
  LODWORD(STACK[0x1D4D0]) = 1534937323 * ((((2 * (v3 - 240)) | 0xC528E5AA) - (v3 - 240) + 493587755) ^ 0x247A8992);
  LODWORD(STACK[0x1D4D4]) = (v0 + 1603977129) ^ (1534937323 * ((((2 * (v3 - 240)) | 0xC528E5AA) - (v3 - 240) + 493587755) ^ 0x247A8992));
  LODWORD(STACK[0x1D4E0]) = ((v0 + 1603977129) & 0x5FBF9F85) + 1534937323 * ((((2 * (v3 - 240)) | 0xC528E5AA) - (v3 - 240) + 493587755) ^ 0x247A8992);
  STACK[0x1D4C0] = ((((v2 ^ 0x77964597) - 2006336919) ^ ((v2 ^ 0xA9324B97) + 1456321641) ^ ((v2 ^ 0xCB88E94) - 213421716)) + 170128162 < 0x3807728E) ^ v4 ^ v5;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2462)))(v3 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4E4])))(v7);
}

uint64_t sub_1003138E8()
{
  v0 = STACK[0x5720];
  v1 = (STACK[0x5720] - 10763) | 0x4180;
  v2 = *STACK[0x51E8];
  STACK[0x5790] = *STACK[0x51F0];
  LODWORD(STACK[0x5780]) = (v1 - 27019) & v2;
  v3 = *(STACK[0x57D8] + 8 * v0);
  LODWORD(STACK[0x57B0]) = v1 - 14630;
  return v3();
}

uint64_t sub_100313A8C@<X0>(int a1@<W8>)
{
  if (a1 == v1)
  {
    v3 = STACK[0x97A8];
  }

  else
  {
    v3 = a1;
  }

  return (*(STACK[0x57D8] + 8 * (((v3 == -143113071) * (v2 ^ 0x6E73 ^ (v2 - 12136) ^ 0x3C34)) ^ v2)))(15115, 4404, 0x683CBC57EAB92A3ELL, 22622);
}

uint64_t sub_100313B00@<X0>(int a1@<W8>)
{
  STACK[0xCED0] = 0;
  LODWORD(STACK[0xB2FC]) = -769884012;
  v1 = STACK[0xA0C4];
  LODWORD(STACK[0xC728]) = STACK[0xA0C4];
  LODWORD(STACK[0x69D4]) = ((a1 + 1747766238 + (v1 ^ 0x97D2DBCC)) ^ ((v1 ^ 0x948C8275) + 1802730891) ^ ((v1 ^ 0xD142D92D) + 784148179)) - 769883960;
  STACK[0x9CF0] = STACK[0xA418];
  LODWORD(STACK[0x70CC]) = STACK[0xB6DC];
  STACK[0x6EA8] = STACK[0xB340];
  LODWORD(STACK[0x639C]) = STACK[0xABD4];
  STACK[0x9470] = &STACK[0xCED0];
  STACK[0xB730] = &STACK[0xB2FC];
  LOBYTE(STACK[0x8DC7]) = 0;
  LODWORD(STACK[0xA5CC]) = -1811297924;
  return (*(STACK[0x57D8] + 8 * (a1 - 11737)))(88);
}

uint64_t sub_100313CAC()
{
  v1 = *(STACK[0x57D8] + 8 * (STACK[0x51B8] - 9700));
  STACK[0x57B0] = v0;
  return v1(932050392, v0 - 1);
}

uint64_t sub_100313E50@<X0>(uint64_t a1@<X8>)
{
  v4 = STACK[0x51B8] + 1581;
  v5 = STACK[0xE5A0];
  v6 = 1978732275 * (v2 - v3) + 1688074336;
  v7 = ((v6 ^ 0xE0D7783) - 1787858915) ^ v6 ^ ((v6 ^ 0x58DE2C8E) - 1011078382) ^ ((v6 ^ 0x7D915D92) - 420259314) ^ ((v6 ^ 0x4FDFFEFF) - 725747359);
  *(v5 + 496) = 1312122761 * (((v7 ^ 0x3A92AC4A) - 42604461) ^ ((v7 ^ 0x9C7BA71E) + 1537008391) ^ ((v7 ^ 0xC274F334) + 93566765)) - 1640654138;
  v8 = *(v1 + (a1 & 0xFFFFFFFFD265232CLL)) & 0x7FFFFFFF ^ 0x11CBAE4E;
  *(v5 + 476) = v8 + 441179768 + 2 * ((v8 & 0x1A4BDE7C | 2) ^ (v8 | 0x7FFFFFFD)) + 8;
  return (*(STACK[0x57D8] + 8 * v4))();
}

uint64_t sub_100314024()
{
  *v3 = STACK[0x57C0];
  *v2 = (*(v4 + 96) ^ 0x72FBFDF) + ((2 * *(v4 + 96)) & 0xE5F7FBE) + (v0 ^ 0xFEFE6162);
  STACK[0x1D4C0] = *v1;
  LODWORD(STACK[0x1D4C8]) = (v0 - 1723121291) ^ (1917435887 * ((v5 + 398092567 - 2 * ((v5 - 240) & 0x17BA6A07)) ^ 0xF1013101));
  v6 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v0 + 21658)))(v5 - 240);
  v1[1] = *(v4 + 48);
  v1[2] = *(v4 + 56);
  STACK[0x1D4C8] = *v1;
  LODWORD(STACK[0x1D4C0]) = (v0 + 1717161114) ^ (1964904101 * ((v5 + 297118150 - 2 * ((v5 - 240) & 0x11B5AAB6)) ^ 0xEB974132));
  v7 = (*(v6 + 8 * (v0 + 21679)))(v5 - 240);
  return (*(v6 + 8 * v0))(v7);
}

uint64_t sub_1003141C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a2 + (v3 - 475043441);
  v6 = *(*STACK[0x51F0] + (*STACK[0x51E8] & ((((v5 & 0xFFFFFFF8 ^ 0x38949D28) - (v4 & (2 * (v5 & 0xFFFFFFF8)) ^ (v4 + 2))) & 0xFFFFFFF8) + 845620928)));
  v7 = __ROR8__(v5 & 0xFFFFFFFFFFFFFFF8, 8);
  v8 = (((2 * ((v6 + v7) ^ 0x284AAEB92943BF6)) & 0x139EC46DACAB75CALL) - ((v6 + v7) ^ 0x284AAEB92943BF6) - 0x9CF6236D655BAE6) ^ 0xA2666B2460428BLL;
  v9 = v8 ^ __ROR8__(v6, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0x153242EE3CF06A49;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0x2275D4C73835399BLL;
  v13 = __ROR8__(v12, 8);
  v14 = v12 ^ __ROR8__(v11, 61);
  v15 = (v13 + v14) ^ a1;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xC7DDC9F6CC45B721;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xA82620A559D2DA78;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x5F8DEC3EA3980A1BLL;
  *v5 = (((__ROR8__(v21, 8) + (v21 ^ __ROR8__(v20, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * (v5 & 7u))) ^ *(STACK[0x5F38] + (((v2 + 18254) | 0x13) ^ 0xE3AF32B2) + v3);
  return (*(STACK[0x57D8] + 8 * v2))();
}

uint64_t sub_100314394()
{
  STACK[0x6B40] = STACK[0x9A98];
  v1 = STACK[0x7ED8];
  v2 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x6478] = v2;
  STACK[0x7ED8] = v1 + 32;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x7513)))(v2, 0, 32);
  return (*(v3 + 8 * ((((4 * v0) ^ 0x2FDC) + 13669) ^ v0)))(v4);
}

uint64_t sub_10031440C(uint64_t a1)
{
  v3 = *(v1 + 2760);
  v4 = *(*STACK[0x51F0] + ((((((2 * (v3 & 0xFFFFFFF8)) & 0x77790700) + (v3 & 0xFFFFFFF8 ^ 0x3BBC8384)) & (*(v1 + 2756) - 10884)) + 1460909352) & *STACK[0x51E8]));
  v5 = (v4 + __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xC2AF3EAA3FF1B8E4;
  v6 = __ROR8__(v5, 8);
  v7 = v5 ^ __ROR8__(v4, 61);
  v8 = (v6 + v7) ^ 0x65F254DD188DB4FCLL;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0x6FF046966119128DLL;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0xA1B29DC5D776132BLL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ v2;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((2 * (v16 + v15)) | 0x6D274557619994FCLL) - (v16 + v15) + 0x496C5D544F333582) ^ 0x6E5411B47AD513A0;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (v19 + v18 - ((2 * (v19 + v18)) & 0x1B9A97A8059F1CC2) - 0x7232B42BFD30719FLL) ^ 0xD9984AFA887E4DEELL;
  v21 = __ROR8__(v20, 8);
  v22 = __ROR8__(v18, 61);
  v23 = (((((2 * (v21 + (v20 ^ v22))) | 0xCA26F744D4D9A8D8) - (v21 + (v20 ^ v22)) + 0x1AEC845D95932B94) ^ 0x8A5C1B1E646E8A8CLL) >> (8 * (v3 & 7u))) ^ *(v1 + 295);
  v24 = *(v1 + 2744);
  *(*(v1 + 4272) + ((LODWORD(STACK[0x4C24]) + 11 * v24) & 0x7F)) = (((2 * (v23 - v24 + 16 * v24)) & 0xF7) + (~(4 * (v23 - v24 + 16 * v24)) | 0x1F) - 6) ^ 0x1A;
  ++v24;
  LODWORD(v20) = *(v1 + 2752);
  v25 = *(STACK[0x57D8] + 8 * (((2 * (v24 == 112)) | (4 * (v24 == 112))) ^ v20));
  *(v1 + 2732) = v20;
  *(v1 + 2736) = v24;
  return v25(a1, 3118481781, 0x91364DCB68334DBLL, 0x24734B65A1E08459, 0x40C9CFEA3CC5CBE1, 0x448D6F6CA711D855, 0x67536EC0FB8B549DLL);
}

uint64_t sub_100314710@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *a2;
  v7 = STACK[0x57D8];
  STACK[0x6810] = *(STACK[0x57D8] + 8 * v4);
  STACK[0xBE08] = v2;
  STACK[0xC140] = 0;
  STACK[0xB0C8] = 0x8305A984834A17DDLL;
  STACK[0xBD88] = 0;
  v9 = v6 == a1 || v2 == 0;
  return (*(v7 + 8 * ((((v3 ^ 0x7F ^ v9) & 1) * v5) ^ v3)))();
}

uint64_t sub_100314910()
{
  v0 = STACK[0x51B8];
  v1 = 697 * (STACK[0x51B8] ^ 0x585B);
  v2 = STACK[0x8F78];
  *v2 = 0x1D8A118EDE6D14DLL;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 1414217035;
  *(v2 + 28) = 0x800000002;
  *(v2 + 36) = 1;
  *(v2 + 40) = 0;
  *(v2 + 48) = 2037742444;
  *(v2 + 56) = 0;
  *(v2 + 64) = 1768711563;
  *(v2 + 68) = 0x400000001;
  *(v2 + 76) = 2;
  v3 = STACK[0x57D8];
  STACK[0xBDD0] = *(STACK[0x57D8] + 8 * (v0 - 21505));
  return (*(v3 + 8 * ((v1 ^ 0x13D4) + v0 - 21505)))();
}

uint64_t sub_1003149DC()
{
  v0 = (3 * (STACK[0x51B8] ^ 0x7CD5)) ^ 0x78E7;
  v1 = STACK[0x51B8] + 2749;
  v2 = STACK[0xBB00];
  STACK[0xD438] = STACK[0xBB00];
  if (STACK[0x7F48])
  {
    v3 = STACK[0xB658] == 0x30BDFED8F32E6585;
  }

  else
  {
    v3 = 1;
  }

  v5 = !v3 && v2 != 0;
  if ((STACK[0x88EC] & 0xFFFFFFFB) == v0 - 5373)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return (*(STACK[0x57D8] + 8 * (((2 * v6) | (v6 << 6)) ^ v1)))();
}

uint64_t sub_100314A80()
{
  v1 = STACK[0x51B8] + 1533;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(v0);
  STACK[0x8CD8] = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100314D5C@<X0>(unsigned int a1@<W8>)
{
  v2 = (STACK[0x56F0] + v1);
  v3 = *v2;
  v4 = v2[1];
  v5 = (STACK[0x5670] + v1);
  *v5 = v3;
  v5[1] = v4;
  return (*(STACK[0x57D8] + 8 * ((17159 * (v1 + 32 == (a1 ^ 0x1D72))) ^ a1)))();
}

uint64_t sub_100314DB0()
{
  v4 = v0 + 1064672839;
  v5 = (v2 < v3) ^ (v4 < v3);
  v6 = v4 < v2;
  if (v5)
  {
    v6 = v2 < v3;
  }

  return (*(STACK[0x57D8] + 8 * (v1 + 8 * !v6)))();
}

uint64_t sub_1003155E4@<X0>(unsigned int a1@<W8>)
{
  v3 = *(v2 + 8);
  STACK[0x6200] = a1;
  return (*(STACK[0x57D8] + 8 * ((462 * (((v1 - 69) ^ (*(v3 + (a1 << 7) + 8) == 0x79296B4A625EDF44)) & 1)) ^ v1)))();
}

uint64_t sub_100315640()
{
  v0 = STACK[0x51B8] - 20081;
  v1 = STACK[0x57D8];
  STACK[0x8580] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1832)))();
}

uint64_t sub_1003156D0()
{
  v2 = *(STACK[0x57C0] + (49 * (*(v0 + (LODWORD(STACK[0x5260]) + 18)) ^ 0xBE) + 25578) % 0x480u) ^ 0x77u;
  LODWORD(STACK[0x5760]) = *(STACK[0x57C0] + (49 * (*(v0 + (LODWORD(STACK[0x5260]) + 17)) ^ 0x55) + 25578) % 0x480u) ^ 0x76;
  v3 = *(STACK[0x57D8] + 8 * v1);
  LODWORD(STACK[0x5388]) = 1;
  return v3(v2);
}

uint64_t sub_100315B24@<X0>(unsigned int a1@<W8>)
{
  v3 = STACK[0x3930];
  v4 = STACK[0x3920];
  *(v1 + 624) = STACK[0x3920] + LODWORD(STACK[0x3930]) - 36;
  *(v1 + 592) = v4;
  *(v1 + 612) = v3 ^ v4;
  *(v1 + 608) = v4;
  *(v1 + 600) = v3 - v4 - 3242;
  *(v1 + 616) = v4 + a1;
  v5 = STACK[0x51B8];
  *(v1 + 604) = v4 + 1451493860 + STACK[0x51B8];
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v5 + 9182)))(v2 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4E4])))(v7);
}

uint64_t sub_100315D44(uint64_t a1, int a2)
{
  v7 = STACK[0x57C0];
  v8 = *(STACK[0x57C0] + 4843 * ((((v3 ^ 0x16) - 17004) & (2 * v2)) + (v2 ^ 0x704u)) % 0x16B8);
  v9 = (((v8 ^ 0x169C85B2) - 379356594) ^ ((v8 ^ 0xB289746) - 187209542) ^ ((v8 ^ 0x1DB41233) - 498340403)) * a2 + 64488418;
  v10 = *(v4 + 4 * (v9 - (((v9 * v6) >> 32) >> 12) * v5));
  v11 = 4843 * (BYTE1(v10) ^ 0xB6) + 6213569 - 5816 * (((11815591 * (4843 * (BYTE1(v10) ^ 0xB6u) + 6213569)) >> 32) >> 4);
  v12 = *(STACK[0x57C0] + 4843 * (BYTE2(v10) ^ 0x4F) + 6213569 - 5816 * (((11815591 * (4843 * (BYTE2(v10) ^ 0x4Fu) + 6213569)) >> 32) >> 4));
  v13 = *(STACK[0x57C0] + (4843 * (((v10 ^ 0x337C9DB4) - 1860102846) ^ ((v10 ^ 0x47D46403) - 443945737) ^ ((v10 ^ 0x74A8F93Du) - 688557623)) + 1625915969) % 0x16B8);
  v14 = (*(v7 + v11) & 0x79 ^ 0x512396C7 ^ ((((*(v7 + (4843 * (((HIBYTE(v10) ^ 0x19A7E762) - 637024311) ^ ((HIBYTE(v10) ^ 0xB0314F4) - 928828321) ^ ((HIBYTE(v10) ^ 0x12A4F3FE) - 788212907)) + 705889984) % 0x16B8u) << 16) ^ 0x72FA846A) & (((v12 ^ 0xC7) << 8) ^ 0x76FFAFFF) | ((v12 ^ 0xC7) << 8) & 0x7B00) ^ 0x231E12EC) & (*(v7 + v11) ^ 0x7FFFFF20)) << (v12 & 8) << (v12 & 8 ^ 8);
  *(v4 + 4 * (6157 * v2 + 9469466 - ((((6157 * v2 + 9469466) * v6) >> 32) >> 12) * v5)) = v13 ^ 0x609E0DE8 ^ (v14 - ((2 * v14) & 0x11A3774A) + 147962789);
  return (*(STACK[0x57D8] + 8 * ((22 * (v2 == 255)) ^ v3)))();
}

void *sub_100316070()
{
  STACK[0xCB18] = v1;
  LODWORD(STACK[0x6924]) = STACK[0xA04C];
  LODWORD(STACK[0xC824]) = 0;
  STACK[0xC628] = 0;
  LODWORD(STACK[0x9C10]) = -769884012;
  STACK[0x6F40] = 0;
  return (*(STACK[0x57D8] + 8 * (((v0 ^ 0x33D0) - 6782) ^ v0)))(&STACK[0x6F40]);
}

uint64_t sub_100316198@<X0>(uint64_t a1@<X0>, int a2@<W3>, int a3@<W4>, uint64_t a4@<X5>, int a5@<W6>, char a6@<W7>, uint64_t a7@<X8>)
{
  v14 = v8 + a4 + (v9 + a3);
  *(a1 + v14) = *(v12 + ((v14 + v7) & 0xF)) ^ *(a7 + v14 + v7) ^ *(((v14 + v7) & 0xF) + v13 + 4) ^ *(v11 + ((v14 + v7) & 0xF)) ^ (((v14 + v7) & 0xF) * a6);
  return (*(STACK[0x57D8] + 8 * ((v9 + v10) ^ a2 ^ ((((v14 - (v9 + v10)) | ((v9 + v10) - v14)) >= 0) * a5))))();
}

uint64_t sub_100316274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v9 = (((2 * v7) | 0x118233150F522DAALL) - v7 + 0x773EE6757856E92BLL) ^ 0x3049185E666E7586 ^ v6;
  v10 = (__ROR8__((((2 * v7) | 0x118233150F522DAALL) - v7 + 0x773EE6757856E92BLL) ^ 0x3049185E666E7586, 8) + v9) ^ 0x38C8B16AE7056877;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (v12 + v11 - ((2 * (v12 + v11)) & 0x6976FA5197FDA14ELL) + 0x34BB7D28CBFED0A7) ^ 0xD13BCC55473B35F6;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xE1A1FD5BD155F97ALL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((2 * (v17 + v16)) & 0xEC16C22DA78CB4C8) - (v17 + v16) - 0x760B6116D3C65A65) ^ 0x5394D5E52F9B1A02;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) | 0xD5CFDED8DD9BA48ALL) - (v20 + v19) - 0x6AE7EF6C6ECDD245) ^ 0x90D20DA1A5F3E382;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0xD2F00CE620E5D3AELL;
  v24 = __ROR8__(v23, 8);
  v25 = __ROR8__(v22, 61);
  v26 = (((v24 + (v23 ^ v25)) & 0x5684A43A49333892 ^ 0x84A02841311000) + ((v24 + (v23 ^ v25)) ^ 0x5F7147171C82EA97) - (((v24 + (v23 ^ v25)) ^ 0x5F7147171C82EA97) & 0x5684A43A49333892)) ^ 0xFD86E81CFBC1A77ELL;
  v27 = *(STACK[0x5450] + (*STACK[0x51E8] & ((STACK[0x5440] ^ 0x35BE5914) + 1149100036 + (v8 & 0x6B7CB220))));
  v28 = __ROR8__((v27 + STACK[0x56E0]) ^ 0xB88801D4E1C76353, 8);
  v29 = (v27 + STACK[0x56E0]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v27, 61);
  v30 = (v28 + v29) ^ 0x38C8B16AE7056877;
  v31 = __ROR8__(v30, 8);
  v32 = v30 ^ __ROR8__(v29, 61);
  v33 = (((a6 ^ 0xF6D2A77F722ACEC7) & (2 * (v31 + v32))) - (v31 + v32) + 0x496AC4046EA8EAALL) ^ 0xE1161D3DCA2F6BFBLL;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0xE1A1FD5BD155F97ALL;
  LODWORD(STACK[0x5368]) = LODWORD(STACK[0x57C0]) ^ (v26 >> STACK[0x57B0]);
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xDA604B0C03A2BF99;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0xFA35E2CDCB3E31C7;
  v40 = __ROR8__(v39, 8);
  v41 = v39 ^ __ROR8__(v38, 61);
  v42 = (((2 * (v40 + v41)) & 0x31F230C0AA63C11ALL) - (v40 + v41) + 0x6706E79FAACE1F72) ^ 0xB5F6EB798A2BCCDCLL;
  LODWORD(STACK[0x53A8]) = LODWORD(STACK[0x5790]) ^ (((__ROR8__(v42, 8) + (v42 ^ __ROR8__(v41, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5780]);
  v43 = *(STACK[0x57D8] + 8 * a6);
  LODWORD(STACK[0x53A0]) = 61;
  STACK[0x52F8] = 37;
  return v43(LODWORD(STACK[0x52A0]));
}

uint64_t sub_1003166C4(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x51B8] ^ 0x7CE6;
  LODWORD(STACK[0x59EC]) = v2;
  return (*(STACK[0x57D8] + 8 * (((4 * (v2 == (v3 ^ 0xF7786021))) | (8 * (v2 == (v3 ^ 0xF7786021)))) ^ LODWORD(STACK[0x2794]))))(a1, a2, 0xF30ADCCD896F82F3, 1895650284, 2399317012, 3898232654, 0x6507BA46DC60ED0, 0x9C8651A6C7A7E5ALL);
}

uint64_t sub_100316770@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W3>, int a4@<W6>, uint64_t a5@<X8>)
{
  v9 = (((v6 ^ 0xA41F89FF) + 1541436929) ^ ((v6 ^ 0x7487FDE4) - 1955069412) ^ ((v6 ^ (a2 + 3328)) - 42267791)) + 694681316;
  v10 = a5 + (((v6 ^ 0xE87B32BB) + 394579269) ^ ((v6 ^ 0xCA707772) + 898599054) ^ (a3 + (v6 ^ 0xF017C55D) + 3737)) - 769884007;
  v11 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v10 & 0x92918038) + (v10 & 0x6D6E7FC0 | 0x9291803C) + 1732315483)) & 0xFFFFFFFFFFFFFFF8));
  v12 = (__ROR8__(v10 & 0xFFFFFFFFFFFFFFF8, 8) + v11) ^ v8;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0x153242EE3CF06A49;
  v15 = ((v5 ^ 0xDDC51149 ^ v9) + 1970402875) ^ v9 ^ ((v9 ^ 0x5E506FD) - 1387165868) ^ ((v9 ^ 0xF8E4F0C5) + 1347449196) ^ ((v9 ^ v7) - 549749164);
  v16 = v14 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v14, 8) + v16) ^ 0x2275D4C73835399BLL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ a1;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0xC7DDC9F6CC45B721;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0xA82620A559D2DA78;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (v25 + v24 - ((2 * (v25 + v24)) & 0x3F64C6032478A28) + 0x1FB26301923C514) ^ 0x5E76CA0EBABBCF0FLL;
  *v10 = (((__ROR8__(v26, 8) + (v26 ^ __ROR8__(v24, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * (v10 & 7u))) ^ *(STACK[0x5F38] + (v15 ^ a4));
  return (*(STACK[0x57D8] + 8 * ((2839 * (v15 == a4)) ^ v5)))();
}

uint64_t sub_100316AB8()
{
  v3 = STACK[0xBA34];
  v4 = STACK[0x6B80];
  v5 = 1089234077 * ((((2 * (v2 - 240)) | 0x56257CE6) - (v2 - 240) + 1424834957) ^ 0x4B4F620B);
  LOBYTE(STACK[0x1D4D4]) = 9 - -99 * ((((2 * (v2 + 16)) | 0xE6) - (v2 + 16) - 115) ^ 0xB);
  STACK[0x1D4E8] = v4;
  STACK[0x1D4F0] = v1;
  LODWORD(STACK[0x1D4E0]) = 1668369943 - v5 + (v0 + 1138191464) * v3;
  STACK[0x1D4C8] = 0;
  LODWORD(STACK[0x1D4C0]) = v5 + v0 + 5401;
  STACK[0x1D4D8] = 0;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v0 + 20287)))(v2 - 240);
  return (*(v6 + 8 * v0))(v7);
}

uint64_t sub_100316B84()
{
  v1 = STACK[0x57D8];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (((v0 ^ 0x4571) - 11530) ^ v0)))(0x308E083E0C524CBELL);
}

uint64_t sub_100316BF4()
{
  if (STACK[0x7280])
  {
    v1 = LODWORD(STACK[0xB654]) == ((v0 - 25669) ^ 0x62E0D85);
  }

  else
  {
    v1 = 1;
  }

  v2 = v1;
  return (*(STACK[0x57D8] + 8 * (((2 * (((v0 + 30) ^ v2) & 1)) & 0xFB | (4 * (((v0 + 30) ^ v2) & 1))) ^ v0)))();
}

uint64_t sub_100316C6C()
{
  v3 = STACK[0x2688];
  v4 = STACK[0x9C38];
  v5 = *(*(v0 + 2328) + 8);
  v6 = 1917435887 * ((((v2 - 240) | 0x71552BD0) - ((v2 - 240) & 0x71552BD0)) ^ 0x97EE70D6);
  LODWORD(STACK[0x1D4D4]) = v6 + LODWORD(STACK[0x2688]) + 2511;
  LODWORD(STACK[0x1D4D0]) = -1917435887 * ((((v2 - 240) | 0x71552BD0) - ((v2 - 240) & 0x71552BD0)) ^ 0x97EE70D6) + 1504951603 * v1 + ((v3 - 252) ^ 0x42DAF477);
  STACK[0x1D4C0] = v5;
  STACK[0x1D4D8] = v4;
  LODWORD(STACK[0x1D4CC]) = -1338408083 - v6;
  v7 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v3 ^ 0x13D8)))(v2 - 240);
  return (*(v7 + 8 * v3))(1004510456, -28347, 19557, 2009020912, 4294947877, 2788032262, 1506934781, 4294948129);
}

uint64_t sub_100316EC4(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0x51B8] - 20615;
  *(STACK[0xBE80] - 0x636BD8691D50D778) = -769883996;
  return (*(STACK[0x57D8] + 8 * (v2 ^ (v2 + 20615) ^ 0x4A95 ^ (16189 * ((v2 ^ 0x7A3F329Cu) < 0x45D6F0E4)))))(a1, a2, 2622178349);
}

uint64_t sub_100316FA0()
{
  v0 = 12 * (LODWORD(STACK[0x25E8]) ^ 0xB5);
  v1 = STACK[0x57D8];
  STACK[0xBDB0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x25E8]));
  return (*(v1 + 8 * (LODWORD(STACK[0x25E4]) ^ v0)))();
}

uint64_t sub_100317114(unint64_t a1)
{
  STACK[0xB490] = a1;
  v2 = STACK[0x57D8];
  v3 = *(v2 + 8 * ((((*(STACK[0x57D8] + 8 * (v1 + 9927)))(16) == 0) * ((((v1 - 525811068) & 0x1F56FDE7) + 8739) ^ 0x3895)) ^ v1));
  return v3();
}

uint64_t sub_10031750C()
{
  v0 = STACK[0x51B8] ^ 0x5A81;
  v1 = STACK[0x51B8] - 21748;
  v2 = STACK[0x57D8];
  STACK[0x7B40] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((v0 + 9508) ^ v1)))();
}

uint64_t sub_1003175E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x48E0]) = LODWORD(STACK[0x55A0]) | LODWORD(STACK[0x5720]);
  LODWORD(STACK[0x48D8]) = LODWORD(STACK[0x53B8]) | LODWORD(STACK[0x55E0]);
  LODWORD(STACK[0x46F8]) = v10 | LODWORD(STACK[0x53B0]);
  LODWORD(STACK[0x4700]) = a5 | LODWORD(STACK[0x51F8]);
  LODWORD(STACK[0x55E0]) = v9 & (v8 ^ 0x2BC94056);
  v11 = *(a3 + 4000);
  STACK[0x54C0] = v11 + 36333;
  v12 = *(v11 + 36333);
  v13 = *STACK[0x5480];
  v14 = *STACK[0x5570];
  v15 = v14 & (((a8 - 17) | 0xE0) + 60) ^ 0xA8;
  v16 = v13 & 0x7A ^ 0xCB;
  v17 = (((v14 ^ (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * v15) ^ v15)) ^ v15)) ^ v15)) ^ v15))) ^ 0x34) << 16) | (((v13 ^ (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * (v16 ^ v13 & 0x1E)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ 0x7A) << 8);
  v18 = v12 & 0xE8 ^ 0x82;
  v19 = ((v12 ^ (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x44) & (2 * v18) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0x782F0E) & ~v17 | v17 & 0x87D000;
  STACK[0x4EE8] = v11 + 38993;
  LOBYTE(v11) = *STACK[0x4B40];
  v20 = v11 & 0xCC ^ 0x34;
  v21 = *STACK[0x5560];
  v22 = v21 & 0xE ^ 0x15;
  LODWORD(v11) = ((v11 ^ (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0xCC) << 16;
  v23 = v21 ^ (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * (v22 ^ v21 & 0xAA)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ 0xE;
  v24 = v11 & 0xEA0000;
  LODWORD(v11) = v11 & 0xFFFF00FF | (v23 << 8);
  v25 = *STACK[0x4F20];
  v26 = v25 & 0x78 ^ 0xCA;
  v27 = (((v25 ^ (2 * ((v25 ^ 0x64) & (2 * ((v25 ^ 0x64) & (2 * ((v25 ^ 0x64) & (2 * ((v25 ^ 0x64) & (2 * ((v25 ^ 0x64) & (2 * v26) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26))) ^ 0x15FF6D) & ~v11 | v24) << 8;
  LOBYTE(v11) = *STACK[0x52C8];
  LODWORD(STACK[0x53B8]) = v27 ^ 0xC200A0FF;
  LODWORD(STACK[0x55A0]) = v27 & 0x2C3C4E00;
  LOBYTE(v17) = *STACK[0x54F0];
  v28 = *STACK[0x5138];
  LOBYTE(v27) = v28 & 0x3C ^ 0x2C;
  v29 = (v28 ^ 0x64) & (2 * ((v28 ^ 0x64) & (2 * ((v28 ^ 0x64) & (2 * ((v28 ^ 0x64) & (2 * v27) ^ v27)) ^ v27)) ^ v27)) ^ v27;
  LOBYTE(v27) = v17 & 0x30 ^ 0xAE;
  v30 = v11 & 0xD6 ^ 0x39;
  v31 = (v11 ^ (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * (v30 ^ v11 & 0x32)) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30)));
  LODWORD(v11) = (((v28 ^ (2 * v29)) ^ 0x3C) << 16) | (((v17 ^ (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * v27) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27))) ^ 0x30) << 8);
  v32 = ((v31 ^ 0x414E50) & ~v11 | v11 & 0xBEB100) << 8;
  LODWORD(STACK[0x5308]) = v32 ^ 0x4B168FF;
  LODWORD(STACK[0x53B0]) = v32 & 0xBA0C9100;
  LOBYTE(v32) = *STACK[0x50C0];
  v33 = v32 & 0x96 ^ 0xD9;
  LOBYTE(v27) = (v32 ^ 0x64) & (2 * ((v32 ^ 0x64) & (2 * ((v32 ^ 0x64) & (2 * ((v32 ^ 0x64) & (2 * ((v32 ^ 0x64) & (2 * (v33 ^ v32 & 0x32)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33;
  v34 = *STACK[0x5140];
  v35 = (v31 << 16) | (((v32 ^ (2 * v27)) ^ 0x96) << 8);
  LOBYTE(v27) = v34 & 0x6C ^ 0xC4;
  LODWORD(STACK[0x5720]) = (((v35 ^ 0x958FF) & ((v34 ^ (2 * ((v34 ^ 0x64) & (2 * ((v34 ^ 0x64) & (2 * ((v34 ^ 0x64) & (2 * ((v34 ^ 0x64) & (2 * v27) ^ v27)) ^ v27)) ^ v27)) ^ v27))) ^ 0xCB58B3) | v35 & 0x34A700) << 8) & 0xC08E0D00;
  LODWORD(STACK[0x5298]) = (v19 << 8) & 0xB52F3C00;
  return (*(STACK[0x57D8] + 8 * a8))();
}

uint64_t sub_100317CB8()
{
  STACK[0xC4D0] = &STACK[0x9EB0];
  LODWORD(STACK[0x7EBC]) = -1389924012;
  STACK[0x7910] = v1;
  *(v2 + 1160) = 0;
  *(v2 + 2768) = -597358460;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100317D4C@<X0>(uint64_t a1@<X8>)
{
  v8 = (v7 + v4);
  v9 = v8[1];
  v10 = (a1 + v4);
  *v10 = *v8;
  v10[1] = v9;
  return (*(STACK[0x57D8] + 8 * (((v2 + v4 + v6 == v1) * v5) ^ v3)))();
}

uint64_t sub_100317DCC@<X0>(__int16 a1@<W8>)
{
  v1 = STACK[0x51B8] - 22471;
  LOWORD(STACK[0xD56E]) = a1;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0x1350)))();
}

uint64_t sub_100317F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (LODWORD(STACK[0x5750]) << ((2 * v3) ^ 0x54));
  v5 = (LODWORD(STACK[0x5730]) + (LODWORD(STACK[0x5720]) << 16));
  LODWORD(STACK[0x57A0]) = LODWORD(STACK[0x57C0]) | (LODWORD(STACK[0x57A0]) << 8) | (LODWORD(STACK[0x5780]) << 24) | (LODWORD(STACK[0x5770]) << 16);
  return (*(STACK[0x57D8] + 8 * v3))(v4, a2, a3, v5, (2 * v3) ^ 0x9780u, 1420983330, (2 * v3) ^ 0xBD4Du, 4294967173);
}

uint64_t sub_10031815C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x50B0]) = LODWORD(STACK[0x5650]) + LODWORD(STACK[0x5640]);
  LODWORD(STACK[0x4FA8]) = LODWORD(STACK[0x55F0]) + LODWORD(STACK[0x5610]);
  LODWORD(STACK[0x4EA0]) = ((LODWORD(STACK[0x5660]) - 76) | ((((v9 - 76) << 8) | (v10 << 16) | (LODWORD(STACK[0x5680]) - 76)) << 8)) - 1275068416;
  LODWORD(STACK[0x4EF0]) = ((LODWORD(STACK[0x56C0]) - 76) | ((((LODWORD(STACK[0x5670]) - 76) << 8) | (LODWORD(STACK[0x5710]) << 16) | (LODWORD(STACK[0x5700]) - 76)) << 8)) - 1275068416;
  LODWORD(STACK[0x5600]) = ((((v8 - 76) << 8) | (LODWORD(STACK[0x57A0]) << 16) | (v7 - 76)) << 8) - 1275068416;
  LODWORD(STACK[0x55F0]) = (v6 - 76);
  v11 = STACK[0xDCB8];
  LODWORD(STACK[0x5780]) = *(STACK[0x5580] + 1169) - 76;
  LODWORD(STACK[0x5720]) = ((((v11[3376] - 76) << 8) | (v11[5720] << 16) | (*(STACK[0x56F0] + 1897) - 76)) << 8) - 1275068416;
  v12 = v11[4271];
  v13 = *(STACK[0x5730] + 1700);
  LODWORD(STACK[0x57C0]) = (*(STACK[0x56D0] + 1791) - 76);
  v14 = (v11[2610] - 76);
  STACK[0x5680] = (v11 + 4096);
  v15 = *(STACK[0x5770] + 2792);
  LODWORD(STACK[0x5710]) = (((v14 << 8) | (v13 << 16) | (v12 - 76)) << 8) - 1275068416;
  STACK[0x5650] = (v11 + 5447);
  LODWORD(STACK[0x5700]) = (v15 - 76);
  LODWORD(STACK[0x5610]) = (v11[592] - 76);
  STACK[0x57A0] = v11;
  LODWORD(STACK[0x56C0]) = (v11[2367] - 76);
  return (*(STACK[0x57D8] + 8 * a6))();
}

uint64_t sub_100318654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(STACK[0x9F8C]) = LODWORD(STACK[0x6CF0]) + v5;
  v6 = STACK[0x57D8];
  STACK[0xBE28] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1C78]));
  return (*(v6 + 8 * (STACK[0x51B8] - 15136)))(a1, a2, a3, a4, a5, 0xFDA8E32437622097);
}

uint64_t sub_100318908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x51B8];
  v8 = LODWORD(STACK[0xE3A4]);
  LODWORD(STACK[0x57C0]) = STACK[0xE3C4];
  return (*(STACK[0x57D8] + 8 * (v7 - 8441)))(a1, a2, a3, a4, a5, a6, a7, v8);
}

uint64_t sub_100318944()
{
  STACK[0xA410] = STACK[0x7008];
  v2 = &STACK[0x10120] + v0;
  STACK[0xB520] = &STACK[0x10120] + v0 + 40;
  STACK[0x85C8] = &STACK[0x10120] + v0 + 56;
  STACK[0xC388] = &STACK[0x10120] + v0 + 72;
  STACK[0x9D18] = &STACK[0x10120] + v0 + 95;
  STACK[0x99C0] = &STACK[0x10120] + v0 + 111;
  STACK[0x9210] = &STACK[0x10120] + v0 + 143;
  STACK[0xB160] = &STACK[0x10120] + v0 + 207;
  STACK[0x7ED8] = ((v1 + 1752140849) ^ 0x686FF542) + v0;
  v3 = STACK[0x45F0];
  v4 = STACK[0x2740] + *STACK[0x45F8] + *STACK[0x45F0];
  v5 = ((v4 ^ 0xF4ACC4746CF9B85CLL) + 0x1BCE566AB3ECF8AELL) ^ v4 ^ ((v4 ^ 0x94287CF1A4719E6CLL) + 0x7B4AEEEF7B64DE9ELL) ^ ((v4 ^ 0x47FBCFFFBDFFBCEFLL) - 0x5766A21E9D1503E1) ^ (((v1 - 23962) ^ v4 ^ 0x37E21A9B559D2F96) - 0x277F777A75779ADFLL);
  *STACK[0x45F8] = 784437427 * (((v5 ^ 0x9CDBFEC6B92E2276) + 0x3F613FEA3486C746) ^ ((v5 ^ 0x39501BBB70F7836ELL) - 0x6515256802A099A2) ^ ((v5 ^ 0xC3E8B43F04435746) + 0x6052751389EBB276)) - 0x6B05667177DF75EALL;
  STACK[0x8A88] = &STACK[0x10120] + v0;
  STACK[0x9DB8] = &STACK[0x10120] + v0;
  *v3 = 784437427 * (((v5 ^ 0x33AC98438324059DLL) - 0x75BA57E3AB2D9D8FLL) ^ ((v5 ^ 0xCDFAF0C7C2E3B0A3) + 0x7413C0981515D74FLL) ^ ((v5 ^ 0x983539C68C5D4360) + 0x21DC09995BAB248ELL)) + 0x69ED4BC1436CDF24;
  *(&STACK[0x10120] + v0 + 228) = 0x8000000000000;
  v6 = (&STACK[0x10120] + v0 + 260);
  STACK[0xCEB0] = &STACK[0x10120] + v0 + 228;
  *(v2 + 236) = 0;
  *(v2 + 244) = 128;
  *(v2 + 252) = 0x100000000000;
  *(v2 + 69) = 2048;
  *(v2 + 70) = 92545057;
  *(v2 + 71) = 1073809408;
  *(v2 + 72) = 33664;
  *(v2 + 146) = 5;
  STACK[0xA308] = &STACK[0x10120] + v0 + 292;
  v7 = STACK[0x7CF0];
  STACK[0xA578] = v6;
  STACK[0xB7D8] = v7;
  v8 = STACK[0x5C70];
  *v6 = 0x180C8040CLL;
  *(&STACK[0x10120] + v0 + 268) = 0x4011000006000000;
  STACK[0x5A10] = 0;
  STACK[0x6CC8] = 0;
  STACK[0x9B78] = 0;
  STACK[0xB468] = 0;
  LODWORD(STACK[0x9CBC]) = -769884012;
  STACK[0x67E0] = 0;
  LODWORD(STACK[0xBBB8]) = -769884012;
  STACK[0xB9E0] = 0;
  STACK[0x9548] = 0;
  LODWORD(STACK[0x62D4]) = -769884012;
  STACK[0xB7A0] = 0;
  LODWORD(STACK[0xC4EC]) = -769884012;
  STACK[0xAB98] = 0;
  STACK[0x9240] = 0;
  STACK[0xB6E0] = 0;
  LODWORD(STACK[0x6E34]) = -769884012;
  return (*(STACK[0x57D8] + 8 * (((4 * (v8 != 0x30BDFED8F32E6831)) | (16 * (v8 != 0x30BDFED8F32E6831))) ^ v1)))();
}

uint64_t sub_100318F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x54A0]) = 0;
  v12 = *(STACK[0x57D8] + 8 * (((v8 & 1) * (v9 ^ 0x7CF2 ^ ((v9 - 13365) | 0x40))) ^ (v9 - 10501)));
  v13 = *(&off_101353600 + v9 - 21441) - 12;
  v14 = *(&off_101353600 + (v9 ^ 0x5B96)) - 8;
  *(v11 - 152) = v10;
  LODWORD(STACK[0x5450]) = 1089328837;
  LODWORD(STACK[0x5390]) = -55253420;
  LODWORD(STACK[0x53B0]) = 1057837275;
  LODWORD(STACK[0x53A8]) = -858339514;
  LODWORD(STACK[0x5280]) = 27;
  LODWORD(STACK[0x5398]) = -1024062729;
  LODWORD(STACK[0x53A0]) = -1707239627;
  LODWORD(STACK[0x5750]) = 94;
  LODWORD(STACK[0x53E0]) = 184594542;
  LODWORD(STACK[0x54D0]) = -1901287315;
  LODWORD(STACK[0x5500]) = -1372522448;
  LODWORD(STACK[0x5460]) = -2112480293;
  LODWORD(STACK[0x5410]) = 1472924871;
  LODWORD(STACK[0x53B8]) = -1073790155;
  LODWORD(STACK[0x5420]) = 1697615221;
  LODWORD(STACK[0x5510]) = -574192496;
  LODWORD(STACK[0x5440]) = 755380463;
  LODWORD(STACK[0x5288]) = 217;
  LODWORD(STACK[0x5520]) = -1426142764;
  LODWORD(STACK[0x54B0]) = -1229321427;
  LODWORD(STACK[0x53E8]) = 1305884822;
  LODWORD(STACK[0x5650]) = 32;
  LODWORD(STACK[0x5490]) = -1877115921;
  LODWORD(STACK[0x53F8]) = 1268689362;
  LODWORD(STACK[0x5430]) = 109824402;
  LODWORD(STACK[0x5278]) = 48;
  LODWORD(STACK[0x53D8]) = -916812493;
  LODWORD(STACK[0x5400]) = -697695404;
  LODWORD(STACK[0x5480]) = -1804420536;
  LODWORD(STACK[0x5408]) = -1989843764;
  LODWORD(STACK[0x53F0]) = -925748198;
  LODWORD(STACK[0x53C8]) = 2027140805;
  LODWORD(STACK[0x53D0]) = -297466696;
  LODWORD(STACK[0x5270]) = 40;
  LODWORD(STACK[0x5268]) = 108;
  LODWORD(STACK[0x54E0]) = -1265697473;
  LODWORD(STACK[0x53C0]) = -2009696079;
  LODWORD(STACK[0x54F0]) = 405193911;
  LODWORD(STACK[0x5760]) = 1518845225;
  LODWORD(STACK[0x5640]) = a8;
  LODWORD(STACK[0x54C0]) = 1001312094;
  LODWORD(STACK[0x5470]) = -509396784;
  LODWORD(STACK[0x5380]) = -1941381382;
  LODWORD(STACK[0x5260]) = a8;
  STACK[0x57C0] = v14;
  return v12(2272673416, 4147977115, 3134388483, a4, 4094829982, v13, 108088138, (v9 - 13365) | 0x40u);
}

uint64_t sub_100319468()
{
  v1 = LODWORD(STACK[0x83C]) | 0xC09;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x2468)))(48);
  v4 = (LODWORD(STACK[0x840]) + v0);
  STACK[0xE470] = v4;
  *(STACK[0xA598] + 16 * v4) = v3;
  return (*(v2 + 8 * (((v3 == 0) * (v1 - 3165)) ^ LODWORD(STACK[0x844]))))();
}

uint64_t sub_10031950C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 5 * LODWORD(STACK[0x3B78]);
  v6 = STACK[0x62A8];
  v7 = STACK[0x57D8];
  v8 = STACK[0x3B7C];
  v9 = STACK[0xC7E8];
  STACK[0x5F68] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x3B7C]));
  return (*(v7 + 8 * (v8 - 12186 + v5)))(a1, v6, a3, a4, a5, STACK[0x57C0], 395, v9);
}

uint64_t sub_100319638@<X0>(unint64_t a1@<X8>)
{
  STACK[0xB0E8] = a1;
  LODWORD(STACK[0x8B34]) = v2;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0xB1076EC5 ^ (49757 * (v1 < 0x73493D04)))))();
}

uint64_t sub_1003196D0@<X0>(_BYTE *a1@<X0>, int a2@<W8>)
{
  a1[4] = 0;
  a1[5] = LOBYTE(STACK[0x70ED]) ^ 0x87;
  a1[6] = LOBYTE(STACK[0x70EE]) ^ (((2 * a2) ^ 0xBE) - 111);
  return (*(STACK[0x57D8] + 8 * a2))();
}

uint64_t sub_100319728()
{
  v0 = (STACK[0x51B8] - 1558) | 0x20B1;
  v1 = *(STACK[0xB110] + 24);
  STACK[0xA080] = v1;
  return (*(STACK[0x57D8] + 8 * (((v1 == 0) * ((((v0 + 1731987461) & 0x98C3DD5F) - 9952) ^ (4161 * (v0 ^ 0x72F2)))) ^ v0)))();
}

uint64_t sub_100319884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v2 + 9207)))(a2);
  STACK[0xC0F8] = 0;
  return (*(v3 + 8 * (v2 + 4016)))(a1);
}

uint64_t sub_100319964()
{
  v1 = STACK[0x11D0];
  v2 = ((((LODWORD(STACK[0x11D0]) - 8586) ^ 0x7D58F5A5) + (v0 ^ 0x82A7520D)) ^ ((v0 ^ 0x4F41BCF6) - 1329708278) ^ ((v0 ^ 0xEBD183E9 ^ LODWORD(STACK[0x1538])) + 338567431)) + 641150938;
  LODWORD(STACK[0x8CE4]) = v2;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x11CC])))(v2);
  STACK[0xBF30] = v4;
  return (*(v3 + 8 * (v1 ^ (8 * (v4 != 0)))))();
}

uint64_t sub_100319A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v18 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] += (v11 + 27367) ^ 0x736DLL;
  v19 = *v12;
  v20 = *v16 & 0xFFFFFFFFFFFFFFF8;
  v21 = *(*v12 + (v20 & ((v18 & 0xFFFFFFF8) + a6)));
  v22 = (v21 + __ROR8__(v18 & 0xFFFFFFFFFFFFFFF8, 8)) ^ v17;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ a5;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x2275D4C73835399BLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (0xA8539F8AF8CEFCF2 - ((v28 + v27) | 0xA8539F8AF8CEFCF2) + ((v28 + v27) | 0x57AC60750731030DLL)) ^ 0xB2037AC6298C3FD0;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v15;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (v33 + v32 - ((2 * (v33 + v32)) & 0xB11D9359AAF9E6CELL) - 0x277136532A830C99) ^ 0x70A8E9098CAE291FLL;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ a8;
  *v18 = (((__ROR8__(v36, 8) + (v36 ^ __ROR8__(v35, 61))) ^ v14) >> (8 * (v18 & 7u))) ^ 0x98;
  v37 = *(v19 + ((((v18 + 1) & 0x71430538 | 0x8EBCFAC1) + a6 + ((v18 + 1) & 0x8EBCFAC0 | 0x7143053F)) & v20));
  v38 = __ROR8__((v18 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v39 = (((2 * ((v37 + v38) ^ 0x86CB2FB7F531DFBLL)) & 0x8AD49BE83DEEC300) - ((v37 + v38) ^ 0x86CB2FB7F531DFBLL) + 0x3A95B20BE1089E7FLL) ^ 0xC6EF51B90105BFE3 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__((((2 * ((v37 + v38) ^ 0x86CB2FB7F531DFBLL)) & 0x8AD49BE83DEEC300) - ((v37 + v38) ^ 0x86CB2FB7F531DFBLL) + 0x3A95B20BE1089E7FLL) ^ 0xC6EF51B90105BFE3, 8) + v39) ^ a5;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (((2 * (v42 + v41)) | 0x97DBF38CCBF70BF8) - (v42 + v41) + 0x341206399A047A04) ^ 0xE9982D015DCEBC67;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (0x475E911748EF1FADLL - ((v45 + v44) | 0x475E911748EF1FADLL) + ((v45 + v44) | 0xB8A16EE8B710E052)) ^ 0x5D0E745B99ADDC8FLL;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ v15;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (v50 + v49 - ((2 * (v50 + v49)) & 0xCF1F282BE15F0DE6) - 0x18706BEA0F50790DLL) ^ 0x4FA9B4B0A97D5C8BLL;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (((2 * (v53 + v52)) & 0xE485FD2702B7F098) - (v53 + v52) - 0x7242FE93815BF84DLL) ^ 0xD230ED52DD3C0DA8;
  *(v18 + 1) = (((__ROR8__(v54, 8) + (v54 ^ __ROR8__(v52, 61))) ^ v14) >> (8 * ((v18 + 1) & 7))) ^ 0x32;
  v55 = *(*v12 + ((*v16 & (((v18 + 2) & 0xFFFFFFF8) + a6)) & 0xFFFFFFFFFFFFFFF8));
  v56 = __ROR8__((v18 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v57 = (v56 + v55 - ((2 * (v56 + v55)) & 0x44A4FDDF55E65FD6) - 0x5DAD8110550CD015) ^ 0x56442FA635AD138CLL;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ a5;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = __ROR8__(v59, 8);
  v62 = (((2 * (v61 + v60)) & 0xEF8BA7E74AA63D26) - (v61 + v60) - 0x77C5D3F3A5531E94) ^ 0xAA4FF8CB6299D8F7;
  v63 = v62 ^ __ROR8__(v60, 61);
  v64 = (__ROR8__(v62, 8) + v63) ^ a4;
  v65 = v64 ^ __ROR8__(v63, 61);
  v66 = __ROR8__(v64, 8);
  v67 = __ROR8__((((2 * (v66 + v65)) & 0xD2DA4ED3767ACDBALL) - (v66 + v65) - 0x696D2769BB3D66DELL) ^ 0x514F116088872E03, 8);
  v68 = (((2 * (v66 + v65)) & 0xD2DA4ED3767ACDBALL) - (v66 + v65) - 0x696D2769BB3D66DELL) ^ 0x514F116088872E03 ^ __ROR8__(v65, 61);
  v69 = (v67 + v68 - ((2 * (v67 + v68)) & 0x4F1D540D04815F94) + 0x278EAA068240AFCALL) ^ 0x8FA88AA3DB9275B2;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = __ROR8__(v69, 8);
  v72 = (v71 + v70 - ((2 * (v71 + v70)) & 0xAEDA7AF77B0F6BE8) - 0x2892C28442784A0CLL) ^ 0x88E0D1451E1FBFEFLL;
  v73 = v72 ^ __ROR8__(v70, 61);
  v74 = __ROR8__(v72, 8);
  *(v18 + 2) = (((v74 + v73 - ((2 * (v74 + v73)) & 0x64AE2B7051997DELL) - 0x7CDA8EA47D733411) ^ 0x42E6B989264983C7) >> (8 * ((v18 + 2) & 7))) ^ 0x22;
  v75 = *(*v12 + ((*v16 & (((v18 + 3) & 0xFFFFFFF8 ^ 0xBBC8B2EC) - 1248117627 + ((2 * ((v18 + 3) & 0xFFFFFFF8)) | 0x886E9A25))) & 0xFFFFFFFFFFFFFFF8));
  v76 = __ROR8__((v18 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x8548] = v18;
  v77 = (v75 + v76 - ((2 * (v75 + v76)) & 0xC58505610E5728DALL) + 0x62C282B0872B946DLL) ^ 0x96D4D3F91875A80ALL;
  v78 = v77 ^ __ROR8__(v75, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ a5;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = __ROR8__(v79, 8);
  v82 = (((2 * (v81 + v80)) | 0xCA05CB3DB2D6A704) - (v81 + v80) - 0x6502E59ED96B5382) ^ 0x47773159E15E6A19;
  v83 = v82 ^ __ROR8__(v80, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ a4;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = __ROR8__(v84, 8);
  v87 = (v86 + v85 - ((2 * (v86 + v85)) & 0xD49A44317D0C001ELL) - 0x15B2DDE74179FFF1) ^ 0x2D90EBEE72C3B72ELL;
  v88 = v87 ^ __ROR8__(v85, 61);
  v89 = (__ROR8__(v87, 8) + v88) ^ v13;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = __ROR8__(v89, 8);
  v92 = (v91 + v90 - ((2 * (v91 + v90)) & 0x2D98D167716EA5F2) + 0x16CC68B3B8B752F9) ^ 0x4941848D1B2F58E2;
  v93 = v92 ^ __ROR8__(v90, 61);
  v94 = __ROR8__(v92, 8);
  *(v18 + 3) = (((0x9F8FAF1E10138967 - ((v94 + v93) ^ 0xABC3E7B5E7702431 | 0x9F8FAF1E10138967) + ((v94 + v93) ^ 0xABC3E7B5E7702431 | 0x607050E1EFEC7698)) ^ 0xA707F86AC591A81) >> (8 * ((v18 + 3) & 7))) ^ 0x5F;
  v95 = STACK[0x8548];
  v96 = STACK[0x8548];
  v97 = *v16 & 0xFFFFFFFFFFFFFFF8;
  v98 = *(*v12 + ((((v95 + 4) & 0xA300C7B8) + ((v95 + 4) & 0x5CFF3840 | 0xA300C7BC) + 1456587226) & v97));
  v99 = __ROR8__((STACK[0x8548] + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v100 = __ROR8__((v99 + v98 - ((2 * (v99 + v98)) & 0xFCEDC6DDB29CF68CLL) - 0x1891C9126B184BALL) ^ 0xA60B22746104721, 8);
  v101 = (v99 + v98 - ((2 * (v99 + v98)) & 0xFCEDC6DDB29CF68CLL) - 0x1891C9126B184BALL) ^ 0xA60B22746104721 ^ __ROR8__(v98, 61);
  v102 = (0xF24B640BB62F3131 - ((v100 + v101) | 0xF24B640BB62F3131) + ((v100 + v101) | 0xDB49BF449D0CECELL)) ^ 0x1886D91A7520A487;
  v103 = v102 ^ __ROR8__(v101, 61);
  v104 = (__ROR8__(v102, 8) + v103) ^ 0x2275D4C73835399BLL;
  v105 = v104 ^ __ROR8__(v103, 61);
  v106 = __ROR8__(v104, 8);
  v107 = (v106 + v105 - ((2 * (v106 + v105)) & 0x489FE9ECE3C2026) - 0x7DBB00B098E1EFEDLL) ^ 0x67EBE5FC49A32CCELL;
  v108 = v107 ^ __ROR8__(v105, 61);
  v109 = (__ROR8__(v107, 8) + v108) ^ v15;
  v110 = v109 ^ __ROR8__(v108, 61);
  v111 = (__ROR8__(v109, 8) + v110) ^ v13;
  v112 = v111 ^ __ROR8__(v110, 61);
  v113 = (__ROR8__(v111, 8) + v112) ^ a8;
  *(v95 + 4) = (((__ROR8__(v113, 8) + (v113 ^ __ROR8__(v112, 61))) ^ v14) >> (8 * ((v95 + 4) & 7))) ^ 0xCE;
  v114 = *(*v12 + ((((v95 + 5) & 0xFFFFFFF8 ^ 0x608C1E96) + 1516152879 + ((2 * ((v95 + 5) & 0xFFFFFFF8)) | 0x3EE7C2D1)) & v97));
  STACK[0xB4A0] = v10;
  v115 = __ROR8__((v95 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v116 = (((2 * (v114 + v115)) & 0xBD67637DAD78B6ECLL) - (v114 + v115) - 0x5EB3B1BED6BC5B77) ^ 0x555A1F08B61D98EELL;
  v117 = v116 ^ __ROR8__(v114, 61);
  v118 = (__ROR8__(v116, 8) + v117) ^ a5;
  v119 = v118 ^ __ROR8__(v117, 61);
  v120 = __ROR8__(v118, 8);
  v121 = (v120 + v119 - ((2 * (v120 + v119)) & 0x4AE3CD2EE8B76C2ALL) - 0x5A8E19688BA449EBLL) ^ 0x870432504C6E8F8ELL;
  v122 = v121 ^ __ROR8__(v119, 61);
  v123 = (__ROR8__(v121, 8) + v122) ^ a4;
  v124 = v123 ^ __ROR8__(v122, 61);
  v125 = __ROR8__(v123, 8);
  v126 = (((2 * (v125 + v124)) | 0x7AA6E764FCF2EEB0) - (v125 + v124) + 0x42AC8C4D818688A8) ^ 0x7A8EBA44B23CC079 ^ __ROR8__(v124, 61);
  v127 = (__ROR8__((((2 * (v125 + v124)) | 0x7AA6E764FCF2EEB0) - (v125 + v124) + 0x42AC8C4D818688A8) ^ 0x7A8EBA44B23CC079, 8) + v126) ^ v13;
  v128 = v127 ^ __ROR8__(v126, 61);
  v129 = __ROR8__(v127, 8);
  v130 = (v129 + v128 - ((2 * (v129 + v128)) & 0x8AE0589F15948818) - 0x3A8FD3B07535BBF4) ^ 0x9AFDC07129524E17;
  v131 = v130 ^ __ROR8__(v128, 61);
  v132 = __ROR8__(v130, 8);
  *(v95 + 5) = (((((2 * (v132 + v131)) & 0x53862709C4497206) - (v132 + v131) - 0x29C31384E224B904) ^ 0x17FF24A9B91E0ED4) >> (8 * ((v95 + 5) & 7))) ^ 0xEF;
  v133 = *v16 & 0xFFFFFFFFFFFFFFF8;
  v134 = *(*v12 + ((((v96 + 6) & 0x5739CA18 | 0xA8C635E5) + a6 + ((v96 + 6) & 0xA8C635E0 | 0x5739CA1B)) & v133));
  LODWORD(STACK[0x694C]) = v9;
  v135 = (__ROR8__((v96 + 6) & 0xFFFFFFFFFFFFFFF8, 8) + v134) ^ v17;
  v136 = v135 ^ __ROR8__(v134, 61);
  v137 = __ROR8__(v135, 8);
  v138 = (v137 + v136 - ((2 * (v137 + v136)) & 0x5474EEBBA886D7CELL) + 0x2A3A775DD4436BE7) ^ 0x3F0835B3E8B301AELL;
  v139 = v138 ^ __ROR8__(v136, 61);
  v140 = __ROR8__(v138, 8);
  v141 = (((2 * (v140 + v139)) & 0xE24330B1BDDC4ACALL) - (v140 + v139) - 0x71219858DEEE2566) ^ 0xACABB3601924E301;
  v142 = v141 ^ __ROR8__(v139, 61);
  v143 = __ROR8__(v141, 8);
  v144 = (((2 * (v143 + v142)) & 0x688E4C2C3C7888D6) - (v143 + v142) + 0x4BB8D9E9E1C3BB94) ^ 0xAE17C35ACF7E8749;
  v145 = v144 ^ __ROR8__(v142, 61);
  v146 = (__ROR8__(v144, 8) + v145) ^ v15;
  v147 = __ROR8__(v146, 8);
  v148 = v146 ^ __ROR8__(v145, 61);
  v149 = (v147 + v148) ^ v13;
  v150 = v149 ^ __ROR8__(v148, 61);
  v151 = (__ROR8__(v149, 8) + v150) ^ a8;
  *(v96 + 6) = (((__ROR8__(v151, 8) + (v151 ^ __ROR8__(v150, 61))) ^ v14) >> (8 * ((v96 + 6) & 7))) ^ 0xAE;
  v152 = *(*v12 + ((((v96 + 7) & 0xFFFFFFF8) + a6) & v133));
  STACK[0x9880] = v8;
  v153 = __ROR8__((v96 + 7) & 0xFFFFFFFFFFFFFFF8, 8);
  v154 = (((2 * (v152 + v153)) & 0x99CD208ED778160ELL) - (v152 + v153) + 0x33196FB89443F4F8) ^ 0xC70F3EF10B1DC89FLL;
  v155 = v154 ^ __ROR8__(v152, 61);
  v156 = __ROR8__(v154, 8);
  v157 = __ROR8__((((2 * (v156 + v155)) & 0x79D6E1B146A66686) - (v156 + v155) - 0x3CEB70D8A3533344) ^ 0xD626CDC9605CA6F5, 8);
  v158 = (((2 * (v156 + v155)) & 0x79D6E1B146A66686) - (v156 + v155) - 0x3CEB70D8A3533344) ^ 0xD626CDC9605CA6F5 ^ __ROR8__(v155, 61);
  v159 = (((2 * (v157 + v158)) & 0x42F2FB91790E4876) - (v157 + v158) + 0x5E8682374378DBC4) ^ 0x7CF356F07B4DE25FLL;
  v160 = v159 ^ __ROR8__(v158, 61);
  v161 = __ROR8__(v159, 8);
  v162 = (v161 + v160 - ((2 * (v161 + v160)) & 0x9A1F55F4C012A28) - 0x7B2F055059FF6AECLL) ^ 0x617FE01C88BDA9C9;
  v163 = v162 ^ __ROR8__(v160, 61);
  v164 = (__ROR8__(v162, 8) + v163) ^ v15;
  v165 = v164 ^ __ROR8__(v163, 61);
  v166 = (__ROR8__(v164, 8) + v165) ^ v13;
  v167 = v166 ^ __ROR8__(v165, 61);
  v168 = (__ROR8__(v166, 8) + v167) ^ a8;
  *(v96 + 7) = (((__ROR8__(v168, 8) + (v168 ^ __ROR8__(v167, 61))) ^ v14) >> (8 * ((v96 + 7) & 7))) ^ 0xBD;
  v169 = STACK[0x8548];
  v170 = STACK[0x8548];
  v171 = *v12;
  v172 = *v16 & 0xFFFFFFFFFFFFFFF8;
  v173 = *(*v12 + ((((STACK[0x8548] + 8) & 0xFFFFFFF8) + a6) & v172));
  v174 = (__ROR8__((STACK[0x8548] + 8) & 0xFFFFFFFFFFFFFFF8, 8) + v173) ^ v17;
  v175 = v174 ^ __ROR8__(v173, 61);
  v176 = __ROR8__(v174, 8);
  v177 = (((2 * (v176 + v175)) | 0xEB6348E9AF219A0ALL) - (v176 + v175) + 0xA4E5B8B286F32FBLL) ^ 0xE083E69AEB60A74CLL;
  v178 = v177 ^ __ROR8__(v175, 61);
  v179 = (__ROR8__(v177, 8) + v178) ^ 0x2275D4C73835399BLL;
  v180 = v179 ^ __ROR8__(v178, 61);
  v181 = (__ROR8__(v179, 8) + v180) ^ a4;
  v182 = v181 ^ __ROR8__(v180, 61);
  v183 = __ROR8__(v181, 8);
  v184 = (((2 * ((v183 + v182) ^ 0xC1E521A11F523FB7)) | 0xB823B79DA2ADE42) - ((v183 + v182) ^ 0xC1E521A11F523FB7) - 0x5C11DBCED156F21) ^ 0x3F9F5EB3E02E7B7;
  v185 = v184 ^ __ROR8__(v182, 61);
  v186 = __ROR8__(v184, 8);
  v187 = (((v186 + v185) ^ 0xAFEACBA6607DE2A3) - ((2 * ((v186 + v185) ^ 0xAFEACBA6607DE2A3)) & 0xDE39AF0B09E49C58) - 0x10E3287A7B0DB1D4) ^ 0xE8D03C86BD5D76F7;
  v188 = v187 ^ __ROR8__(v185, 61);
  v189 = (__ROR8__(v187, 8) + v188) ^ a8;
  *(v169 + 8) = (((__ROR8__(v189, 8) + (v189 ^ __ROR8__(v188, 61))) ^ v14) >> (8 * ((v169 + 8) & 7))) ^ 0x58;
  v190 = *(v171 + ((((v169 + 9) & 0x2B67D2D0) - 831867195 + ((v169 + 9) & 0xD4982D28 | 0x2B67D2D2)) & v172));
  v191 = __ROR8__((v169 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v192 = (v190 + v191 - ((2 * (v190 + v191)) & 0xA7D937D430C3AF0ALL) - 0x2C136415E79E287BLL) ^ 0x27FACAA3873FEBE2;
  v193 = v192 ^ __ROR8__(v190, 61);
  v194 = __ROR8__(v192, 8);
  v195 = (v194 + v193 - ((2 * (v194 + v193)) & 0xC1F304B7DC122E02) + 0x60F9825BEE091701) ^ 0x75CBC0B5D2F97D48 ^ __ROR8__(v193, 61);
  v196 = (__ROR8__((v194 + v193 - ((2 * (v194 + v193)) & 0xC1F304B7DC122E02) + 0x60F9825BEE091701) ^ 0x75CBC0B5D2F97D48, 8) + v195) ^ 0x2275D4C73835399BLL;
  v197 = v196 ^ __ROR8__(v195, 61);
  v198 = (__ROR8__(v196, 8) + v197) ^ a4;
  v199 = v198 ^ __ROR8__(v197, 61);
  v200 = (__ROR8__(v198, 8) + v199) ^ v15;
  v201 = v200 ^ __ROR8__(v199, 61);
  v202 = __ROR8__(v200, 8);
  v203 = (v202 + v201 - ((2 * (v202 + v201)) & 0x209EEA51737FA5C6) - 0x6FB08AD746402D1DLL) ^ 0x3869558DE06D089BLL;
  v204 = v203 ^ __ROR8__(v201, 61);
  v205 = __ROR8__(v203, 8);
  v206 = (((2 * (v205 + v204)) | 0x13170DBD9241EC78) - (v205 + v204) + 0x7674792136DF09C4) ^ 0xD6066AE06AB8FC27;
  *(v169 + 9) = (((__ROR8__(v206, 8) + (v206 ^ __ROR8__(v204, 61))) ^ v14) >> (8 * ((v169 + 9) & 7))) ^ 0xDC;
  v207 = *v12;
  v208 = *v16 & 0xFFFFFFFFFFFFFFF8;
  v209 = *(*v12 + ((((v170 + 10) & 0xFFFFFFF8 ^ 0x4C655AE0) + 1178068088 + ((2 * ((v170 + 10) & 0xFFFFFFF8)) | 0x67354A3F)) & v208));
  v210 = (__ROR8__((v170 + 10) & 0xFFFFFFFFFFFFFFF8, 8) + v209) ^ v17;
  v211 = v210 ^ __ROR8__(v209, 61);
  v212 = (__ROR8__(v210, 8) + v211) ^ a5;
  v213 = v212 ^ __ROR8__(v211, 61);
  v214 = __ROR8__(v212, 8);
  v215 = __ROR8__((0x254BDBBE23813306 - ((v214 + v213) | 0x254BDBBE23813306) + ((v214 + v213) | 0xDAB42441DC7ECCF9)) ^ 0xF8C1F086E44BF562, 8);
  v216 = (0x254BDBBE23813306 - ((v214 + v213) | 0x254BDBBE23813306) + ((v214 + v213) | 0xDAB42441DC7ECCF9)) ^ 0xF8C1F086E44BF562 ^ __ROR8__(v213, 61);
  v217 = (((2 * (v215 + v216)) | 0x33943F1725C1D72CLL) - (v215 + v216) - 0x19CA1F8B92E0EB96) ^ 0xFC650538BC5DD74BLL;
  v218 = v217 ^ __ROR8__(v216, 61);
  v219 = __ROR8__(v217, 8);
  v220 = (((2 * (v219 + v218)) | 0xFFC2410A9623002ELL) - (v219 + v218) - 0x7FE120854B118017) ^ 0xB83CE97387543736;
  v221 = v220 ^ __ROR8__(v218, 61);
  v222 = __ROR8__(v220, 8);
  v223 = __ROR8__((((2 * (v222 + v221)) | 0x209FB7DDD8ACE1E6) - (v222 + v221) - 0x104FDBEEEC5670F3) ^ 0xB869FB4BB584AA8BLL, 8);
  v224 = (((2 * (v222 + v221)) | 0x209FB7DDD8ACE1E6) - (v222 + v221) - 0x104FDBEEEC5670F3) ^ 0xB869FB4BB584AA8BLL ^ __ROR8__(v221, 61);
  v225 = (((2 * (v223 + v224)) | 0x6F0305CD4F9DE5C0) - (v223 + v224) + 0x487E7D1958310D20) ^ 0xE80C6ED80456F8FBLL;
  *(v170 + 10) = (((__ROR8__(v225, 8) + (v225 ^ __ROR8__(v224, 61))) ^ v14) >> (8 * ((v170 + 10) & 7))) ^ 0x4E;
  v226 = *(v207 + ((((v170 + 11) & 0xFFFFFFF8 ^ 0x5F9828B1) - 1707450138 + ((2 * ((v170 + 11) & 0xFFFFFFF8)) & 0xBF305160)) & v208));
  STACK[0x5A18] = v18 + 16;
  v227 = __ROR8__((v170 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v228 = (v226 + v227 - ((2 * (v226 + v227)) & 0x4CFC2F78AC91635ALL) - 0x5981E843A9B74E53) ^ 0x526846F5C9168DCALL;
  v229 = v228 ^ __ROR8__(v226, 61);
  v230 = (__ROR8__(v228, 8) + v229) ^ a5;
  v231 = v230 ^ __ROR8__(v229, 61);
  v232 = __ROR8__(v230, 8);
  v233 = (((2 * (v232 + v231)) & 0xB9CF25E266A92956) - (v232 + v231) - 0x5CE792F1335494ACLL) ^ 0x816DB9C9F49E52CFLL;
  v234 = v233 ^ __ROR8__(v231, 61);
  v235 = (__ROR8__(v233, 8) + v234) ^ a4;
  v236 = v235 ^ __ROR8__(v234, 61);
  v237 = (__ROR8__(v235, 8) + v236) ^ v15;
  v238 = v237 ^ __ROR8__(v236, 61);
  v239 = (__ROR8__(v237, 8) + v238) ^ v13;
  v240 = v239 ^ __ROR8__(v238, 61);
  v241 = (__ROR8__(v239, 8) + v240) ^ a8;
  *(v170 + 11) = (((__ROR8__(v241, 8) + (v241 ^ __ROR8__(v240, 61))) ^ v14) >> (8 * ((v170 + 11) & 7))) ^ 0xC3;
  v242 = STACK[0x8548];
  v243 = STACK[0x8548];
  v244 = *v12;
  v245 = *v16 & 0xFFFFFFFFFFFFFFF8;
  v246 = *(*v12 + ((((STACK[0x8548] + 12) & 0xFFFFFFF8) + a6) & v245));
  v247 = __ROR8__((STACK[0x8548] + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v248 = (v247 + v246 - ((2 * (v247 + v246)) & 0x524FBDAB2B2DB602) + 0x2927DED59596DB01) ^ 0xDD318F9C0AC8E766;
  v249 = v248 ^ __ROR8__(v246, 61);
  v250 = (__ROR8__(v248, 8) + v249) ^ a5;
  v251 = v250 ^ __ROR8__(v249, 61);
  v252 = __ROR8__(v250, 8);
  v253 = (((2 * (v252 + v251)) & 0xF350BB00792488C4) - (v252 + v251) - 0x79A85D803C924463) ^ 0xA42276B8FB588206 ^ __ROR8__(v251, 61);
  v254 = (__ROR8__((((2 * (v252 + v251)) & 0xF350BB00792488C4) - (v252 + v251) - 0x79A85D803C924463) ^ 0xA42276B8FB588206, 8) + v253) ^ a4;
  v255 = v254 ^ __ROR8__(v253, 61);
  v256 = (__ROR8__(v254, 8) + v255) ^ v15;
  v257 = v256 ^ __ROR8__(v255, 61);
  v258 = __ROR8__(v256, 8);
  v259 = __ROR8__((((2 * (v258 + v257)) | 0x7AE7A3070508404ALL) - (v258 + v257) + 0x428C2E7C7D7BDFDBLL) ^ 0x1555F126DB56FA5DLL, 8);
  v260 = (((2 * (v258 + v257)) | 0x7AE7A3070508404ALL) - (v258 + v257) + 0x428C2E7C7D7BDFDBLL) ^ 0x1555F126DB56FA5DLL ^ __ROR8__(v257, 61);
  v261 = (v259 + v260) ^ a8;
  v262 = v261 ^ __ROR8__(v260, 61);
  v263 = __ROR8__(v261, 8);
  *(v242 + 12) = (((0x8E43B0CFC9A71CABLL - ((v263 + v262) | 0x8E43B0CFC9A71CABLL) + ((v263 + v262) | 0x71BC4F303658E354)) ^ 0xB07F87E2929DAB7CLL) >> (8 * ((v242 + 12) & 7))) ^ 0x70;
  v264 = *(v244 + ((a6 + ((v242 + 13) & 0x420A9418 | 0xBDF56BE1) + ((v242 + 13) & 0xBDF56BE0 | 0x420A941E) + 1) & v245));
  v265 = __ROR8__((v242 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v266 = (((2 * (v264 + v265)) & 0x5388EB5A52DB2A32) - (v264 + v265) + 0x563B8A52D6926AE6) ^ 0xA22DDB1B49CC5681;
  v267 = v266 ^ __ROR8__(v264, 61);
  v268 = __ROR8__(v266, 8);
  v269 = (((2 * ((v268 + v267) ^ 0x94512378A3E949F7)) & 0xF067EA6EAA5F6E14) - ((v268 + v267) ^ 0x94512378A3E949F7) + 0x7CC0AC8AAD048F5) ^ 0x86AF6B5E35C96B4BLL;
  v270 = v269 ^ __ROR8__(v267, 61);
  v271 = __ROR8__(v269, 8);
  v272 = __ROR8__((((2 * (v271 + v270)) | 0xB6C6B324A347CAD4) - (v271 + v270) - 0x5B63599251A3E56ALL) ^ 0x79168D556996DCF1, 8);
  v273 = (((2 * (v271 + v270)) | 0xB6C6B324A347CAD4) - (v271 + v270) - 0x5B63599251A3E56ALL) ^ 0x79168D556996DCF1 ^ __ROR8__(v270, 61);
  v274 = (((2 * (v272 + v273)) & 0x4D23C9C698080412) - (v272 + v273) + 0x596E1B1CB3FBFDF6) ^ 0xBCC101AF9D46C12BLL;
  v275 = v274 ^ __ROR8__(v273, 61);
  v276 = (__ROR8__(v274, 8) + v275) ^ v15;
  v277 = v276 ^ __ROR8__(v275, 61);
  v278 = (__ROR8__(v276, 8) + v277) ^ v13;
  v279 = __ROR8__(v278, 8);
  v280 = v278 ^ __ROR8__(v277, 61);
  v281 = (((2 * (v279 + v280)) | 0xCB8FF04BEBB296EALL) - (v279 + v280) - 0x65C7F825F5D94B75) ^ 0x3A4A141B5641416ELL;
  *(v242 + 13) = (((__ROR8__(v281, 8) + (v281 ^ __ROR8__(v280, 61))) ^ v14) >> (8 * ((v242 + 13) & 7))) ^ 0x6A;
  v282 = *v12;
  v283 = *v16 & 0xFFFFFFFFFFFFFFF8;
  v284 = *(*v12 + ((((v243 + 14) & 0xFFFFFFF8 ^ 0x550BD0C2) - 1530480427 + ((2 * ((v243 + 14) & 0xFFFFFFF8)) & 0xAA17A180)) & v283));
  v285 = __ROR8__((v243 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5BF8] = v18 + 40;
  v286 = (v285 + v284 - ((2 * (v285 + v284)) & 0x6671185A7582D3FELL) - 0x4CC773D2C53E9601) ^ 0x472EDD64A59F5598;
  v287 = v286 ^ __ROR8__(v284, 61);
  v288 = __ROR8__(v286, 8);
  v289 = (((2 * (v288 + v287)) | 0xB58439194897B868) - (v288 + v287) + 0x253DE3735BB423CCLL) ^ 0xCFF05E6298BBB67DLL;
  v290 = v289 ^ __ROR8__(v287, 61);
  v291 = (__ROR8__(v289, 8) + v290) ^ 0x2275D4C73835399BLL;
  v292 = v291 ^ __ROR8__(v290, 61);
  v293 = (__ROR8__(v291, 8) + v292) ^ a4;
  v294 = v293 ^ __ROR8__(v292, 61);
  v295 = (__ROR8__(v293, 8) + v294) ^ v15;
  v296 = v295 ^ __ROR8__(v294, 61);
  v297 = __ROR8__(v295, 8);
  v298 = (v297 + v296 - ((2 * (v297 + v296)) & 0x3868F4C29645D2AELL) + 0x1C347A614B22E957) ^ 0xB4125AC412F0332FLL;
  v299 = v298 ^ __ROR8__(v296, 61);
  v300 = (__ROR8__(v298, 8) + v299) ^ a8;
  v301 = v300 ^ __ROR8__(v299, 61);
  v302 = __ROR8__(v300, 8);
  *(v243 + 14) = (((((2 * (v302 + v301)) & 0xA2E93258BB2B8236) - (v302 + v301) + 0x2E8B66D3A26A3EE4) ^ 0xEF48AE0106AF76CCLL) >> (8 * ((v243 + 14) & 7))) ^ 0x5A;
  v303 = *(v282 + ((((v243 + 15) & 0xFFFFFFF8 ^ 0x6B041BC0) - 1899074089 + ((2 * ((v243 + 15) & 0xFFFFFFF8)) & 0xD6083780)) & v283));
  v304 = __ROR8__((v243 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v305 = __ROR8__((((2 * (v303 + v304)) | 0xEAD990C312D26D3CLL) - (v303 + v304) + 0xA93379E7696C962) ^ 0x17A992816370AF9, 8);
  v306 = (((2 * (v303 + v304)) | 0xEAD990C312D26D3CLL) - (v303 + v304) + 0xA93379E7696C962) ^ 0x17A992816370AF9 ^ __ROR8__(v303, 61);
  v307 = (((2 * (v305 + v306)) & 0x5D7E685045AB6E18) - (v305 + v306) - 0x2EBF342822D5B70DLL) ^ 0xC4728939E1DA22BALL;
  v308 = v307 ^ __ROR8__(v306, 61);
  v309 = (__ROR8__(v307, 8) + v308) ^ 0x2275D4C73835399BLL;
  v310 = v309 ^ __ROR8__(v308, 61);
  v311 = __ROR8__(v309, 8);
  v312 = (v311 + v310 - ((2 * (v311 + v310)) & 0x2C970FEDB41EF57ALL) - 0x69B4780925F08543) ^ 0x73E49D45F4B24660;
  v313 = v312 ^ __ROR8__(v310, 61);
  v314 = (__ROR8__(v312, 8) + v313) ^ v15;
  v315 = v314 ^ __ROR8__(v313, 61);
  v316 = (__ROR8__(v314, 8) + v315) ^ v13;
  v317 = v316 ^ __ROR8__(v315, 61);
  v318 = __ROR8__(v316, 8);
  v319 = (((2 * (v318 + v317)) & 0xABFFD5C925C6125CLL) - (v318 + v317) - 0x55FFEAE492E3092FLL) ^ 0xF58DF925CE84FCCALL;
  v320 = v319 ^ __ROR8__(v317, 61);
  v321 = __ROR8__(v319, 8);
  *(v243 + 15) = (((((2 * (v321 + v320)) & 0xF57ECBBA7561460) - (v321 + v320) - 0x7ABF65DD3AB0A31) ^ 0x3997C1708891BDE7) >> (8 * ((v243 + 15) & 7))) ^ 0x49;
  return (*(STACK[0x57D8] + 8 * (v11 + 3556)))();
}

uint64_t sub_10031B770()
{
  STACK[0x6180] = v0;
  LODWORD(STACK[0x800C]) = STACK[0x7364];
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x11D4])))();
}

uint64_t sub_10031B900()
{
  v0 = STACK[0x51B8] + 3863;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(STACK[0xB478]);
  STACK[0xB478] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10031B9AC@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x1D4C8]) = (v1 - 1723132795) ^ (1917435887 * ((v2 - 240) ^ 0xE6BB5B06));
  STACK[0x1D4C0] = a1;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x28B6)))(v2 - 240);
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_10031BA1C()
{
  v0 = (STACK[0x51B8] + 2218) | 0x16C7;
  v1 = STACK[0x51B8] - 16453;
  v2 = STACK[0xCB3C];
  STACK[0x7ED8] += (STACK[0x51B8] + 2218) ^ 0xFFFFFFFFFFFF9ED0;
  return (*(STACK[0x57D8] + 8 * ((28516 * (v2 == (v0 ^ 0xF7783356))) ^ v1)))(637896474);
}

uint64_t sub_10031BB94(unint64_t a1)
{
  v1 = STACK[0x51B8] - 1215;
  STACK[0x80B8] = a1;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_10031BBCC@<X0>(int a1@<W5>, unsigned int a2@<W8>)
{
  LODWORD(STACK[0x5440]) = v6;
  LODWORD(STACK[0x5450]) = v9;
  LODWORD(STACK[0x5208]) = v8;
  v10 = STACK[0x4DA0];
  v11 = HIBYTE(LODWORD(STACK[0x5170]));
  LODWORD(STACK[0x5750]) ^= 0xF14D6203 ^ ((STACK[0x5198] & 0xF14D6203 ^ 0xF14D6203) + (STACK[0x5198] & 0xF14D6203));
  LODWORD(STACK[0x54C0]) = v5 ^ 0xFFFFFFF0;
  LODWORD(STACK[0x5460]) = v4 ^ 0xF;
  LODWORD(STACK[0x4FF0]) = (v3 >> 24) ^ v7;
  LODWORD(STACK[0x52D0]) = ((((v3 >> 8) ^ 0x5F) + 67) ^ ((v3 >> 8) + 30) ^ (((((v10 - 1846489228) & 0x6E0F3BB7) - 86) ^ (v3 >> 8)) + 93)) - 127;
  v12 = STACK[0x56F0];
  LODWORD(STACK[0x5078]) = (((v11 ^ a1) + 2) ^ ((v11 ^ 0xFFFFFFD2) - 122) ^ ((v11 ^ 0xFFFFFF84) - 44)) + 23;
  LODWORD(STACK[0x54B0]) = LODWORD(STACK[0x5178]) ^ 0xB8;
  LODWORD(STACK[0x5600]) = LODWORD(STACK[0x5158]) ^ 0xFFFFFF93;
  LODWORD(STACK[0x5230]) = (((v2 ^ 0xFFFFFF8A) - 98) ^ ((v2 ^ 0xC) + 28) ^ ((v2 ^ 0xFFFFFF86) - 110)) - 19;
  LODWORD(STACK[0x53D0]) = v12 ^ 0x12E501EE;
  v13 = *(STACK[0x57D8] + 8 * v10);
  LODWORD(STACK[0x53E8]) = STACK[0x5550];
  LODWORD(STACK[0x53F8]) = STACK[0x55D0];
  LODWORD(STACK[0x5620]) = STACK[0x5500];
  LODWORD(STACK[0x5200]) = STACK[0x5560];
  LODWORD(STACK[0x53B0]) = STACK[0x55A0];
  LODWORD(STACK[0x5348]) = STACK[0x5360];
  LODWORD(STACK[0x5358]) = STACK[0x55E0];
  LODWORD(STACK[0x5378]) = STACK[0x5590];
  LODWORD(STACK[0x5320]) = HIWORD(a2) ^ 0x46;
  return v13();
}

uint64_t sub_10031BEF8(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, unsigned int a6)
{
  v10 = v9 + a3;
  v11 = (v6 < a6) ^ (v10 < v8);
  v12 = v6 > v10;
  if (v11)
  {
    v12 = v6 < a6;
  }

  return (*(STACK[0x57D8] + 8 * ((v12 * a4) ^ v7)))();
}

uint64_t sub_10031C03C@<X0>(unint64_t a1@<X8>)
{
  v3 = v1 ^ 0x1006;
  v4 = (v1 ^ 0x1006) + 5601;
  LODWORD(STACK[0x1D4C0]) = ((v1 ^ 0x1006) + 1717148634) ^ (1964904101 * ((2 * ((v2 - 240) & 0x78566EF0) - (v2 - 240) - 2018930419) ^ 0x7D8B7A89));
  STACK[0x1D4C8] = a1;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v3 + 9199)))(v2 - 240);
  return (*(v5 + 8 * v4))(v6);
}

uint64_t sub_10031C0D0@<X0>(int a1@<W1>, int a2@<W4>, int a3@<W8>)
{
  v6 = v5 + 3 * (v3 ^ 0x3AE2) + (((a3 ^ 0x6C445AB5) - 1816418997) ^ ((a3 ^ 0x6B638CF6) - 1801686262) ^ (((((v3 + 1164461120) | 0x849402) - 1890691323) ^ a3) + 717531433)) - 16;
  if (v4)
  {
    v7 = v6 >= 0xFFFFFFF0;
  }

  else
  {
    v7 = 1;
  }

  v9 = !v7 && a2 + 32 == a1;
  return (*(STACK[0x57D8] + 8 * ((7418 * v9) ^ v3)))();
}

uint64_t sub_10031C4F4@<X0>(int a1@<W8>)
{
  if (a1 == v1)
  {
    v3 = STACK[0xB6A8];
  }

  else
  {
    v3 = a1;
  }

  return (*(STACK[0x57D8] + 8 * ((1345 * (v3 == ((v2 - 1200501535) & 0x478E79D6 ^ 0xF7781A08 ^ ((v2 - 3283) | 0x204)))) ^ v2)))(15115, 4404, 0x683CBC57EAB92A3ELL, 22622);
}

uint64_t sub_10031C6E0@<X0>(int a1@<W8>)
{
  v3 = a1 ^ v1;
  if (v2 == (((a1 ^ 0x5857) - 14592) ^ 0xF7785BC7))
  {
    v4 = STACK[0xA220] == 0;
  }

  else
  {
    v4 = ~v3;
  }

  return (*(STACK[0x57D8] + 8 * (a1 ^ 0x4794 ^ ((4 * (v4 & 1 | (STACK[0x9550] == 0))) & 0xF7 | (8 * (v4 & 1u | (STACK[0x9550] == 0)))))))();
}

uint64_t sub_10031C81C@<X0>(uint64_t a1@<X8>)
{
  v4 = a1 - 1;
  *(v1 + v4) = v2 - 82 + *(v3 + v4) - 2 * (*(v3 + v4) & 0xF) + 106;
  return (*(STACK[0x57D8] + 8 * ((11 * (v4 == 0)) ^ v2)))();
}

uint64_t sub_10031C88C()
{
  STACK[0xB408] = 4;
  v3 = STACK[0x51B8];
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x2440)))(&STACK[0x1D1CD], &STACK[0xC93C], &STACK[0xB408], 0, 0);
  v6 = (~(v1 | 0xD01A76BDB054E7DLL) + (v1 & 0xD01A76BDB054E7DLL)) ^ 0x83630A5A6A17E2D5;
  *(v0 + 624) = 551690071 * v6 + v5;
  *(v0 + 608) = 551690071 * v6;
  *(v0 + 600) = v3 - 551690071 * v6 + 339892495;
  *(v0 + 604) = v3 - 551690071 * v6 + 339892487;
  *(v0 + 592) = (v3 - 1079089617) ^ (551690071 * v6);
  *(v0 + 616) = -551690071 * v6;
  *(v0 + 596) = LODWORD(STACK[0x38FC]) ^ (551690071 * v6);
  v7 = (*(v4 + 8 * (v3 ^ 0x2411)))(v2 - 240);
  return (*(v4 + 8 * *(v0 + 612)))(v7);
}

uint64_t sub_10031C9A0()
{
  STACK[0xCF30] = v2 - 16;
  *v4 = *(v1 + ((v3 - 118) ^ 0xFFFFA7A6) + v0);
  v4[1] = *(v1 + (v0 - 15));
  v4[2] = *(v1 + (v0 - 14));
  v4[3] = *(v1 + (v0 - 13));
  v4[4] = *(v1 + (v0 - 12));
  v4[5] = *(v1 + (v0 - 11));
  v4[6] = *(v1 + (v0 - 10));
  v4[7] = *(v1 + (v0 - 9));
  v4[8] = *(v1 + (v0 - 8));
  v4[9] = *(v1 + (v0 - 7));
  v4[10] = *(v1 + (v0 - 6));
  v4[11] = *(v1 + (v0 - 5));
  v4[12] = *(v1 + (v0 - 4));
  v4[13] = *(v1 + (v0 - 3));
  v4[14] = *(v1 + (v0 - 2));
  v4[15] = *(v1 + (v0 - 1));
  return (*(STACK[0x57D8] + 8 * v3))();
}

uint64_t sub_10031CA98()
{
  v1 = STACK[0xA888];
  STACK[0xC2E8] = STACK[0x61D8];
  STACK[0xBC08] = STACK[0x8900];
  STACK[0xA168] = STACK[0x8970];
  STACK[0x8E70] = STACK[0x88B0];
  v2 = STACK[0x8B48];
  STACK[0x79B8] = v1;
  STACK[0x9398] = v2;
  LODWORD(STACK[0xAD1C]) = -769884012;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v0 + 27285)))(192);
  STACK[0xA040] = v4;
  v5 = *(v3 + 8 * ((((((v0 + 17271) ^ (v4 == 0)) & 1) == 0) * (v0 - 4518)) ^ v0));
  STACK[0x57B0] = LODWORD(STACK[0x4C30]);
  return v5();
}

uint64_t sub_10031CC3C()
{
  v1 = STACK[0x6E48];
  STACK[0x8DD0] = STACK[0x6E48];
  v2 = STACK[0x5C58];
  LOWORD(STACK[0x992E]) = STACK[0x5C58];
  STACK[0x6918] = STACK[0x8F48];
  LODWORD(STACK[0x7524]) = v2;
  return (*(STACK[0x57D8] + 8 * (((*(v1 - 0x1883660EE814440ELL) - v2 == 2101965952) * (((v0 - 342659491) & 0x146CDE7E) + 9760)) ^ v0)))();
}

uint64_t sub_10031CCE4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v9 = a4 + a1;
  v10 = (v5 - 1) + v4 - (a4 + a1);
  v11 = (v5 - 1) & 0xF;
  v12 = v6 + v11 - (a4 + a1);
  v13 = v11 - v9;
  v15 = v10 >= 0x10 && v12 >= (((a2 + 4160) | 0x4806) ^ 0x5846uLL) && (v13 + v7 + 2) >= 0x10;
  v16 = ((v13 + v8 - a2) & ~(v13 + v8)) >> 63;
  if (!v15)
  {
    LODWORD(v16) = 1;
  }

  return (*(STACK[0x57D8] + 8 * (a2 ^ 0x78BB ^ (105 * v16))))();
}

uint64_t sub_10031CD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = (v10 + v8);
  *v11 = *(a5 + *(v10 + v8));
  v11[1] = *(a7 + *(v10 + v8 + 1));
  *(v10 + v8 + 2) = *(v9 + *(v10 + v8 + 2));
  v12 = ((v8 + 2) ^ 1) + 2 * (v8 & 1);
  *(v10 + v12) = *(a6 + *(v10 + v12));
  return (*(STACK[0x57D8] + 8 * (((v12 < 0x1AF) * ((v7 + 11676) ^ 0x44DF)) ^ v7)))();
}

uint64_t sub_10031CE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v8[24];
  v8[24] = v8[27];
  v8[27] = v9;
  v10 = v8[25];
  v8[25] = v8[26];
  v8[26] = v10;
  v11 = v8[28];
  v8[28] = v8[31];
  v8[31] = v11;
  v12 = v8[29];
  v8[29] = v8[30];
  v8[30] = v12;
  v13 = v8[32];
  v8[32] = v8[35];
  v8[35] = v13;
  v14 = v8[33];
  v8[33] = v8[34];
  v8[34] = v14;
  v15 = v8[36];
  v8[36] = v8[39];
  v8[39] = v15;
  v16 = v8[37];
  v8[37] = v8[38];
  v8[38] = v16;
  v17 = v8[40];
  v8[40] = v8[43];
  v8[43] = v17;
  v18 = v8[41];
  v8[41] = v8[42];
  v8[42] = v18;
  v19 = v8[44];
  v8[44] = v8[47];
  v8[47] = v19;
  v20 = v8[45];
  v8[45] = v8[46];
  v8[46] = v20;
  v21 = v8[48];
  v8[48] = v8[51];
  v8[51] = v21;
  v22 = v8[49];
  v8[49] = v8[50];
  v8[50] = v22;
  v23 = v8[52];
  v8[52] = v8[55];
  v8[55] = v23;
  v24 = v8[53];
  v8[53] = v8[54];
  v8[54] = v24;
  v25 = v8[56];
  v8[56] = v8[59];
  v8[59] = v25;
  v26 = v8[57];
  v8[57] = v8[58];
  v8[58] = v26;
  v27 = v8[60];
  v8[60] = v8[63];
  v8[63] = v27;
  v28 = v8[61];
  v8[61] = v8[62];
  v8[62] = v28;
  v29 = v8[64];
  v8[64] = v8[67];
  v8[67] = v29;
  v30 = v8[65];
  v8[65] = v8[66];
  v8[66] = v30;
  v31 = v8[68];
  v8[68] = v8[71];
  v8[71] = v31;
  v32 = v8[69];
  v8[69] = v8[70];
  v8[70] = v32;
  v33 = v8[72];
  v8[72] = v8[75];
  v8[75] = v33;
  v34 = v8[73];
  v8[73] = v8[74];
  v8[74] = v34;
  v35 = v8[76];
  v8[76] = v8[79];
  v8[79] = v35;
  v36 = v8[77];
  v8[77] = v8[78];
  v8[78] = v36;
  v37 = v8[80];
  v8[80] = v8[83];
  v8[83] = v37;
  v38 = v8[81];
  v8[81] = v8[82];
  v8[82] = v38;
  v39 = v8[84];
  v8[84] = v8[87];
  v8[87] = v39;
  v40 = v8[85];
  v8[85] = v8[86];
  v8[86] = v40;
  v41 = STACK[0x57D8];
  STACK[0xAD38] = *(STACK[0x57D8] + 8 * v7);
  return (*(v41 + 8 * (v7 - 9988 + 5 * (v7 ^ 0x13C3))))(a1, a2, a3, a4, a5, 92, a7, 4293522915);
}

uint64_t sub_10031D0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x66D8]) = v9;
  LODWORD(STACK[0xC224]) = -117057921;
  return (*(STACK[0x57D8] + 8 * (v8 + a8)))();
}

uint64_t sub_10031D1D4()
{
  v1 = STACK[0x57D8];
  STACK[0xC8E8] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((10264 * (v0 + 479397770 >= ((2 * v0) ^ 0xC0A4467F))) ^ (v0 + 3989))))();
}

uint64_t sub_10031D340()
{
  v8 = v5 ^ LODWORD(STACK[0x5790]);
  v9 = ((((2 * (v5 & v4)) ^ 0xFCF5ECE9) + 218421733) ^ (((2 * (v5 & v4)) ^ 0x87245782) + 1993695888) ^ (((2 * (v5 & v4)) ^ 0x7BD1BB6B) - 1977577881)) + (((v5 ^ v4 ^ 0xCA747383) - 1725180746) ^ ((v5 ^ v4 ^ 0x8EC8D302) - 577276875) ^ ((v5 ^ v4 ^ 0x44BCA081) + 400754616));
  v10 = ((v2 - v5) ^ 0x46EB7729) - 1107886112 + ((2 * (v2 - v5)) & 0x8DD6EE52);
  v11 = ((((-1208832793 * v9 - 866022898) ^ 0x37E4F254) - 259283461) ^ (-1208832793 * v9 - 866022898) ^ (((-1208832793 * v9 - 866022898) ^ 0xC8459C02) + 254462893) ^ (((-1208832793 * v9 - 866022898) ^ 0x38C6B9F8) - 5640617) ^ (((-1208832793 * v9 - 866022898) ^ 0xFFF77FFE) + 949495890)) >> 21;
  v12 = -1788397568 * v9 - 660310715;
  LODWORD(STACK[0x5580]) = v10;
  v13 = 434110464 * v10 - 148898082 + ((1905303759 * v10 - 1804853319) >> 11);
  v14 = (v12 ^ 0xAE647C43) & (2 * (v12 & 0xAE697001)) ^ v12 & 0xAE697001;
  v15 = ((2 * (v12 ^ 0xBAA69C43)) ^ 0x299FD900) & (v12 ^ 0xBAA69C43) ^ (2 * (v12 ^ 0xBAA69C43)) & 0x14CFE000;
  v16 = v15 ^ 0x14402000;
  v17 = (v15 ^ 0x8FC008) & (4 * v14) ^ v14;
  v18 = ((4 * v16) ^ 0x533FBBE0) & v16 ^ (4 * v16) & 0x14CFEEF8;
  v19 = (v18 ^ 0x100FAAE8) & (16 * v17) ^ v17;
  v20 = ((16 * (v18 ^ 0x4C04418)) ^ 0x4CFEEF80) & (v18 ^ 0x4C04418) ^ (16 * (v18 ^ 0x4C04418)) & 0x14CFEEF0;
  v21 = v19 ^ 0x14CFEEF8 ^ (v20 ^ 0x4CEEE78) & (v19 << 8);
  v22 = -1788397568 * v9 - 2029131776 + (v11 ^ 0x1C4 ^ -(v11 ^ 0x1C4) ^ (-1788397568 * v9 - 2029131776 + (v11 & 0x574 ^ 0xA0273430 ^ (v12 ^ (2 * ((v21 << 16) & 0x14CF0000 ^ v21 ^ ((v21 << 16) ^ 0x6EF80000) & (((v20 ^ 0x10010078) << 8) & 0x14CF0000 ^ 0x10010000 ^ (((v20 ^ 0x10010078) << 8) ^ 0x4FEE0000) & (v20 ^ 0x10010078)))) ^ 0xD1BE65C0) & (v11 ^ 0xFFFFFE3B)) + 1));
  v13 += 290;
  LODWORD(STACK[0x54D0]) = v8;
  v23 = (2056367704 * v8) | ((-1353566773 * v8) >> 29);
  v24 = -1187931008 * v0 + ((-2056101063 * v0) >> 25) - v23 + v13 - v22;
  v25 = (-975725005 * v23) >> 9;
  v26 = (1428064380 * v24) | ((-1790467553 * v24) >> 30);
  v27 = (427819008 * v23) | v25;
  v28 = (-1782841344 * v13) | ((-1016339089 * v13) >> 14);
  v29 = ((v26 ^ (-313720832 * v22 + ((-1468404403 * v22) >> 16))) - v28) ^ v27;
  v30 = 1285374977 * v27;
  v31 = (-1696595968 * v26) | ((-1026925353 * v26) >> 11);
  v32 = ((729944415 * v29) >> 2) - (v29 << 30);
  v33 = 1813923711 * v31;
  v34 = __PAIR64__(v25, v30) >> 7;
  v35 = -923803648 * v31;
  v36 = v32 - (v34 + v31) + (((-1906273411 * v28) >> ((127 * v31) & 5) >> ((127 * v31) & 5 ^ 5)) ^ (-402653184 * v28));
  v37 = ((-2021654528 * v32) | ((-2083442417 * v32) >> 9)) - 717407290 - 2 * (((-2021654528 * v32) | ((-2083442417 * v32) >> 9)) & 0x553D3BC7 ^ ((-2083442417 * v32) >> 9) & 1);
  v38 = v35 & 0xFFFFE000 | (v33 >> 19);
  v39 = (v37 ^ (v38 - 717407290 - 2 * (v38 & 0x553D3BC7 ^ (v33 >> 19) & 1))) + 2 * ((v37 ^ 0x553D3BC6) & v38);
  v40 = ((-1961994240 * v36) | ((-233741877 * v36) >> 21)) + 616285255 - 2 * (((-1961994240 * v36) | ((-233741877 * v36) >> 21)) & 0x24BBC45F ^ ((-233741877 * v36) >> 21) & 0x18);
  v41 = (751524389 * v39) & (v40 ^ 0x24BBC447);
  v42 = (751524389 * v39 + 616285255 - ((1503048778 * v39) & 0x4977888E)) ^ v40;
  v43 = (v38 ^ ((587202560 * v34) | ((1385460515 * v34) >> 8))) - (((v37 ^ 0x14AD11D0) - 346886608) ^ ((v37 ^ 0xDFE12A7F) + 538891649) ^ ((v37 ^ 0x1E710069) - 510722153)) - (((v40 ^ 0xFB59AA85) + 78009723) ^ ((v40 ^ 0x82734CBE) + 2106372930) ^ ((v40 ^ 0x5D91227C) - 1569792636)) + 101122035;
  v44 = (-760420079 * ((v42 ^ (2 * v41)) + 2 * (v42 & (2 * v41)))) ^ v43;
  LODWORD(STACK[0x54C0]) = v44;
  v45 = (((v44 - 1131627738) ^ 0xC7608CFE) + 1569453352) ^ (v44 - 1131627738) ^ (((v44 - 1131627738) ^ 0xC65855ED) + 1555246133) ^ (((v44 - 1131627738) ^ 0x9BD3A08B) + 20502867) ^ (((v44 - 1131627738) ^ 0xFFFFFFBE) + 1695843944);
  LODWORD(STACK[0x54A0]) = v40;
  v46 = v45 ^ 0x34B754F2 ^ v40;
  v47 = v43 - (((v45 ^ 0x94E5AFF) - 1039732237) ^ ((v45 ^ 0x3590C1DD) - 19371311) ^ ((v45 ^ 0x59CA1D04) - 1836927478)) - 1341407153;
  v48 = (((v45 ^ 0x1F7792E7) - 734053909) ^ ((v45 ^ 0x9ED7007B) + 1436527479) ^ ((v45 ^ 0xE4B414BA) + 805093304)) + (((v37 ^ 0x5D0879D1) - 1560836561) ^ ((v37 ^ 0x544A92A5) - 1414173349) ^ ((v37 ^ 0xDC7FD0B2) + 595603278));
  v49 = 1294586627 * v48 - 1644831416;
  v50 = (v49 ^ 0xFC6A3E45) & (2 * (v49 & 0xFE603C86)) ^ v49 & 0xFE603C86;
  v51 = ((2 * (v49 ^ 0x70AA274D)) ^ 0x1D943796) & (v49 ^ 0x70AA274D) ^ (2 * (v49 ^ 0x70AA274D)) & 0x8ECA1BCA;
  v52 = v51 ^ 0x824A0849;
  v53 = (v51 ^ 0x8801200) & (4 * v50) ^ v50;
  v54 = ((4 * v52) ^ 0x3B286F2C) & v52 ^ (4 * v52) & 0x8ECA1BC8;
  v55 = (v54 ^ 0xA080B03) & (16 * v53) ^ v53;
  v56 = ((16 * (v54 ^ 0x84C210C3)) ^ 0xECA1BCB0) & (v54 ^ 0x84C210C3) ^ (16 * (v54 ^ 0x84C210C3)) & 0x8ECA1BC0;
  v57 = v55 ^ 0x8ECA1BCB ^ (v56 ^ 0x8C801800) & (v55 << 8);
  v58 = v49 ^ (2 * ((v57 << 16) & 0xECA0000 ^ v57 ^ ((v57 << 16) ^ 0x1BCA0000) & (((v56 ^ 0x24A034B) << 8) & 0xECA0000 ^ 0x4C00000 ^ (((v56 ^ 0x24A034B) << 8) ^ 0x4A1B0000) & (v56 ^ 0x24A034B))));
  v59 = -1561734151 * (((v46 ^ 0x33157191) - 857043345) ^ ((v46 ^ 0xD2A88DEA) + 760705558) ^ ((v46 ^ 0x94A5EAE8) + 1801065752)) - 1051961957;
  v60 = (v58 >> 18) & 0x395A ^ 0x3C277FBD ^ ((v58 >> 18) ^ 0xFFFFC267) & ((1958789120 * v48 - 1965505296) ^ (((1958789120 * v48 - 1965505296) ^ 0xDFB60D3A) + 606910006) ^ (((1958789120 * v48 - 1965505296) ^ 0xE77FC39E) + 484800658) ^ (((1958789120 * v48 - 1965505296) ^ 0x431375AB) - 1198928219) ^ (((1958789120 * v48 - 1965505296) ^ 0x7FBFFFFF) - 2077932303) ^ 0x38420255);
  v61 = -738656256 * (((v46 ^ 0x8EAE1CFD) + 1901191939) ^ ((v46 ^ 0xB6048E89) + 1241215351) ^ ((v46 ^ 0x4DB284E7) - 1303545063)) + 1546231360;
  v62 = (2 * (v61 & 0xC1D10000)) & 0x81818181 ^ v61 & 0xC1D10000 ^ ((2 * (v61 & 0xC1D10000)) | 0x80) & (v61 ^ 0x285C4C87);
  v63 = ((2 * (v61 ^ 0x285C4C87)) ^ 0xD31A5286) & (v61 ^ 0x285C4C87) ^ (2 * (v61 ^ 0x285C4C87)) & 0xE98C0006;
  v64 = v63 ^ 0x28840041;
  v65 = (v63 ^ 0xC1092D05) & (4 * v62) ^ v62;
  v66 = (4 * v64) & 0xE98D2D44 ^ 0x49890843 ^ ((4 * v64) ^ 0xA634B51C) & v64;
  v67 = (16 * v65) & 0xE98D2D40 ^ v65 ^ ((16 * v65) ^ 0x1400) & v66;
  v68 = (16 * v66) & 0xE98D2D40 ^ 0x610D2907 ^ ((16 * v66) ^ 0x98D2D470) & v66;
  v69 = v67 ^ (v67 << 8) & 0xE98D2D00 ^ ((v67 << 8) ^ 0x54000) & v68 ^ 0xE9882807;
  v70 = (((v59 ^ 0x6ED10DF6) - 514406998) ^ v59 ^ ((v59 ^ 0x9126AE53) + 513893901) ^ ((v59 ^ 0x71607FFA) - 18368602) ^ ((v59 ^ 0xFEEFEBFF) + 1902650273)) >> 16;
  v71 = v70 & 0x838C ^ 0x5F917C7B ^ (v61 ^ (2 * ((v69 << 16) & 0x698D0000 ^ v69 ^ ((v69 << 16) ^ 0x2D470000) & ((v68 << 8) & 0x698D0000 ^ 0x60800000 ^ ((v68 << 8) ^ 0xD2D0000) & v68))) ^ 0x1F50473D) & (v70 ^ 0xFFFF8F87);
  LODWORD(STACK[0x55D0]) = v47;
  v72 = 1234853095 * v60;
  v73 = ((1719422848 * v47) | ((-746212029 - 1362298721 * v47) >> 25)) - 1025859200;
  v74 = -1507256163 * v73;
  v75 = -415760384 * v60;
  HIDWORD(v77) = ((254935040 * (((v45 ^ 0x5025) + 714177321) ^ ((v45 ^ 0x2C9C) + 651200402) ^ ((v45 ^ 0x69557A9F) - 1575104109))) | ((-117635175 * (((v45 ^ 0xFE6FA494) + 891752346) ^ ((v45 ^ 0xC52E49DE) + 241623764) ^ ((v45 ^ 0x5E556B6C) - 1793212318)) + 19975348) >> 15)) - v73 + v60 - v71 - 1721237504;
  LODWORD(v77) = -1740474417 * HIDWORD(v77);
  v76 = v77 >> 1;
  v78 = 329252864 * v73;
  v79 = -1675558561 * v76;
  v80 = -101715968 * v71 + ((-1505779969 * v71) >> 20);
  v81 = 736100352 * v76;
  v82 = v78 & 0xFFE00000 | (v74 >> 11);
  v83 = v80 ^ v82 ^ ((v75 & 0xFFF80000 | (v72 >> 13)) + v76);
  v84 = -1174405120 * v83 + ((-84916131 * v83) >> 7);
  v85 = v81 & 0xFFE00000 | (v79 >> 11);
  v86 = v85 ^ ((-521500336 * v80) | ((-32593771 * v80) >> 28));
  v87 = (1144504320 * v82) | ((-369815329 * v82) >> 18);
  v88 = (-2095667712 * v85) | ((-616461485 * v85) >> 23);
  v89 = v86 + v87 + v84 - 2 * v84;
  v90 = ((2 * ((1291845632 * v84) | ((326113613 * v84) >> 8))) & 0x63FF7FAE) + (((1291845632 * v84) | ((326113613 * v84) >> 8)) ^ 0x31FFBFD7);
  v91 = (44974080 * v89) | ((66063033 * v89) >> 18);
  v92 = -1778384896 * v87 + ((-1227159093 * v87) >> 7) - v88 + v91 + v90 - 838844375;
  v93 = ((v92 ^ (v88 + v91 + v90 - 377775279) ^ 0x4DF54797) - 1153104837) ^ ((v92 ^ (v88 + v91 + v90 - 377775279) ^ 0x113A207) - 140254805) ^ ((v92 ^ (v88 + v91 + v90 - 377775279) ^ 0x4CE6E590) - 1168726466);
  v94 = ((v93 + 225762862) ^ 0x7FC9ACF6) & (2 * ((v93 + 225762862) & 0x7FE9CC06)) ^ (v93 + 225762862) & 0x7FE9CC06;
  v95 = ((2 * ((v93 + 225762862) ^ 0xBC9BCFA)) ^ 0xE840E1F8) & ((v93 + 225762862) ^ 0xBC9BCFA) ^ (2 * ((v93 + 225762862) ^ 0xBC9BCFA)) & 0x742070FC;
  v96 = v95 ^ 0x14201004;
  v97 = (v95 ^ 0x60006038) & (4 * v94) ^ v94;
  v98 = ((4 * v96) ^ 0xD081C3F0) & v96 ^ (4 * v96) & 0x742070FC;
  v99 = (v98 ^ 0x500040E0) & (16 * v97) ^ v97;
  v100 = ((16 * (v98 ^ 0x2420300C)) ^ 0x42070FC0) & (v98 ^ 0x2420300C) ^ (16 * (v98 ^ 0x2420300C)) & 0x742070F0;
  v101 = v99 ^ 0x742070FC ^ (v100 ^ 0x4000003C) & (v99 << 8);
  v102 = (v93 + 225762862) ^ (2 * ((v101 << 16) & 0x74200000 ^ v101 ^ ((v101 << 16) ^ 0x70FC0000) & (((v100 ^ 0x3420703C) << 8) & 0x74200000 ^ 0x54000000 ^ (((v100 ^ 0x3420703C) << 8) ^ 0x20700000) & (v100 ^ 0x3420703C))));
  v103 = v90 - 138209664 + (((v102 ^ 0x4138A286) - 273286950) ^ ((v102 ^ 0x14AF5278) - 1172174808) ^ ((v102 ^ 0x227EDD00) - 1930197152)) + 817;
  v104 = v102 ^ v92;
  v105 = v91 + 1923173506 - v93 + 2378;
  v106 = 1985242211 * (((v102 ^ 0x4FD1F497) - 514019639) ^ ((v102 ^ 0x70139087) - 560018727) ^ ((v102 ^ 0x482B49EE) - 425323598)) - 735437702;
  v107 = (v106 ^ 0xEC5E07FA) & (2 * (v106 & 0xEE1857E0)) ^ v106 & 0xEE1857E0;
  v108 = ((2 * (v106 ^ 0x786E2B3A)) ^ 0x2CECF9B4) & (v106 ^ 0x786E2B3A) ^ (2 * (v106 ^ 0x786E2B3A)) & 0x96767CDA;
  v109 = v108 ^ 0x9212044A;
  v110 = (v108 ^ 0x607880) & (4 * v107) ^ v107;
  v111 = ((4 * v109) ^ 0x59D9F368) & v109 ^ (4 * v109) & 0x96767CD8;
  v112 = (v111 ^ 0x10507040) & (16 * v110) ^ v110;
  v113 = ((16 * (v111 ^ 0x86260C92)) ^ 0x6767CDA0) & (v111 ^ 0x86260C92) ^ (16 * (v111 ^ 0x86260C92)) & 0x96767CD0;
  v114 = v112 ^ 0x96767CDA ^ (v113 ^ 0x6664C5A) & (v112 << 8);
  v115 = v106 ^ (2 * ((v114 << 16) & 0x16760000 ^ v114 ^ ((v114 << 16) ^ 0x7CDA0000) & (((v113 ^ 0x9010305A) << 8) & 0x96760000 ^ (((v113 ^ 0x9010305A) << 8) ^ 0x767C0000) & (v113 ^ 0x9010305A) ^ 0x20000)));
  v116 = -926547968 * (((v102 ^ 0x3C3F) - 771725727) ^ ((v102 ^ 0x6762) + 413383998) ^ ((v102 ^ 0x76A3) + 331853053)) + 1360380254;
  v117 = (v116 ^ 0xD7DE81E3) & (2 * (v116 & 0x979E0002)) ^ v116 & 0x979E0002;
  v118 = ((2 * (v116 ^ 0xD1EE81E7)) ^ 0x8CE14088) & (v116 ^ 0xD1EE81E7) ^ (2 * (v116 ^ 0xD1EE81E7)) & 0x46700000;
  v119 = v118 ^ 0x42100005;
  v120 = (v118 ^ 0x4600005) & (4 * v117) ^ v117;
  v121 = ((4 * v119) ^ 0x19C2FD14) & v119 ^ (4 * v119) & 0x4670BF44;
  v122 = (v121 ^ 0x40BD01) & (16 * v120) ^ v120;
  v123 = ((16 * (v121 ^ 0x46300241)) ^ 0x670BF450) & (v121 ^ 0x46300241) ^ (16 * (v121 ^ 0x46300241)) & 0x4670BF40;
  v124 = v122 ^ 0x4670BF45 ^ (v123 ^ 0x4600B405) & (v122 << 8);
  v125 = (v124 << 16) & 0x46700000 ^ v124 ^ ((v124 << 16) ^ 0x3F450000) & (((v123 ^ 0x700B05) << 8) & 0x46700000 ^ 0x6400000 ^ (((v123 ^ 0x700B05) << 8) ^ 0x70BF0000) & (v123 ^ 0x700B05));
  LODWORD(STACK[0x5550]) = v103;
  LODWORD(STACK[0x5560]) = v104;
  LODWORD(STACK[0x5570]) = v105;
  v126 = 1617634516 * v103 + ((-669333195 * v103 - 874629042) >> 30) + 796451128;
  v127 = (70327008 * v105) | ((-2011068201 * v105) >> 27);
  v128 = ((v115 >> 15) & 0xF5F5 ^ 0x8F41DEAB ^ ((v115 >> 15) ^ 0xFFFE2B5E) & (v116 ^ (2 * v125) ^ 0x98BE4A22)) - v127;
  v129 = ((425493888 * (((v104 ^ 0x4CC3) + 1809622353) ^ ((v104 ^ 0x1790622) + 1655041970) ^ ((v104 ^ 0x90671F) - 145977715))) | ((1144174859 * (((v104 ^ 0x9F4780E3) + 379283825) ^ ((v104 ^ 0x90CBF40E) + 420945310) ^ ((v104 ^ 0x78655913) - 239488895)) - 1556016826) >> 25)) - 1601658112;
  v130 = v128 & v126;
  v131 = (v128 | v126) - v129;
  v132 = (168381632 * v129) | ((673719603 * v129) >> 26);
  v133 = -961819922 * (v131 + v130) + ((1666573687 * (v131 + v130)) >> 31);
  v134 = (318242816 * v127) | ((-1454472609 * v127) >> 13);
  v135 = 1885385241 * v133;
  HIDWORD(v77) = (v134 - 225577920 * v126 + ((1338652625 * v126) >> 26) - v133) ^ v132;
  LODWORD(v77) = -1713571191 * HIDWORD(v77);
  v136 = v77 >> 2;
  HIDWORD(v77) = v135;
  LODWORD(v77) = v135;
  v137 = v77 >> 31;
  v138 = 1211526135 * v137;
  v139 = ((1847722560 * v134) | ((-977762295 * v134) >> 26)) - v137;
  v140 = 1826090496 * v137;
  v141 = (1285667136 * v132) | ((2033354469 * v132) >> 26);
  v142 = (v136 ^ v139) - v141;
  v143 = 1043088639 * v142;
  v144 = 2139095040 * v142;
  v145 = v140 + (v138 >> 23);
  HIDWORD(v77) = v136;
  LODWORD(v77) = -1170698647 * v136;
  v146 = v77 >> 2;
  v147 = v144 & 0xFF800000 | (v143 >> 9);
  v148 = v147 ^ ((v145 ^ ((1272514296 * v141) | ((-914677537 * v141) >> 29))) - v146);
  v149 = (((v146 ^ v145) - v147 - 345111772) ^ 0x1D48DC8F) - v148;
  v150 = (((423182907 * v149 - 757419767) ^ 0x26C02C3A) + 199582413) ^ (423182907 * v149 - 757419767) ^ (((423182907 * v149 - 757419767) ^ 0xF3476180) - 563990665) ^ (((423182907 * v149 - 757419767) ^ 0xF982034D) - 727233092) ^ (((423182907 * v149 - 757419767) ^ 0xFEDFFFFE) - 738545399);
  v151 = v146 - (v150 ^ 0xD2DAB109);
  LODWORD(STACK[0x55E0]) = v150 ^ 0x84C55D3D;
  v152 = v150 ^ 0x84C55D3D ^ (v148 + 1444932660 - ((2 * v148) & 0xAC3FD868));
  v153 = v147 - 1987257671 + (((v150 ^ 0xA7CDCDB4) - 587763849) ^ ((v150 ^ 0x9F4599DB) - 461423846) ^ ((v150 ^ 0xEA52E566) - 1855436891));
  v154 = (v152 - ((2 * v152) & 0x102DCE6) + 8482419) ^ v151 ^ v153 ^ ((v153 ^ 0x2597A989) - 385566476) ^ ((v153 ^ 0x20E814B9) - 327481916) ^ ((v153 ^ 0x29ECA8CA) - 444614223) ^ ((v153 ^ 0x1FFFFB7F) - 747836922);
  LODWORD(STACK[0x5460]) = v151;
  LODWORD(STACK[0x5490]) = (v154 ^ 0x33ED80F6) + 1444932660 - 2 * ((v154 ^ 0x33ED80F6) & 0x561FEC3D ^ v154 & 9);
  v155 = ((316965120 * v153) | ((1779623041 * v153 + 978541307) >> 24)) + 1398471424;
  v156 = (-1337458688 * v151) | ((-1848814071 * v151) >> 13);
  LODWORD(STACK[0x55A0]) = v152;
  v157 = (772341760 * v152) | ((775237129 * v152) >> 16);
  v158 = (v156 ^ ((-2022440960 * v149) | ((-779984419 * v149) >> 14))) - v157 - v155;
  v159 = (495403008 * v155) | ((-812616163 * v155) >> 18);
  v160 = (1454466880 * v158) | ((559596957 * v158) >> 26);
  v161 = ((-1853882368 * v156) | ((1477864739 * v156) >> 9)) - v160;
  v162 = (-1952491840 * v157) | ((103710043 * v157) >> 26);
  v163 = (-1041013524 * v160) | ((1887230267 * v160) >> 30);
  v164 = (2144993280 * ((v161 ^ v159) - v162)) | ((568442861 * ((v161 ^ v159) - v162)) >> 15);
  v165 = (948677520 * v162) | ((-209143111 * v162) >> 28);
  v166 = (-261881856 * v163) | ((625884185 * v163) >> 14);
  v167 = (105332608 * v159 + ((906792575 * v159) >> 25) + v163 - v164) ^ v165;
  v168 = ((-1261297664 * v164) | ((758490769 * v164) >> 19)) + 1344550009 - 2 * (((-1261297664 * v164) | ((758490769 * v164) >> 19)) & 0x5024347B ^ ((758490769 * v164) >> 19) & 2);
  v169 = (-1379860480 * v167) | ((-2130072127 * v167) >> 16);
  v170 = v169 + 506230844 - 2 * (v169 & 0x1E2C783E ^ ((-2130072127 * v167) >> 16) & 2);
  v171 = v170 ^ 0xBA7C6B37 ^ (v166 - (v168 ^ 0x50243479) + 506230844 - ((2 * (v166 - (v168 ^ 0x50243479))) & 0x3C58F078));
  v172 = ((1364763648 * v165) | ((-573286871 * v165) >> 22)) - v166 + (v168 ^ 0xAFDBCB86) + (v170 ^ 0xE1D387C3) + 2;
  v173 = (v172 ^ 0x58EFFFFD) - 1087000576 + ((2 * v172) & 0xB1DFFFFA);
  v174 = (v173 ^ 0xE7DB0D7A) & (2 * (v173 & 0xE7DA5003)) ^ v173 & 0xE7DA5003;
  v175 = ((2 * (v173 ^ 0xE87F8D7E)) ^ 0x1F4BBAFA) & (v173 ^ 0xE87F8D7E) ^ (2 * (v173 ^ 0xE87F8D7E)) & 0xFA5DD7C;
  v176 = (v175 ^ 0xF018018) & (4 * v174) ^ v174;
  v177 = ((4 * (v175 ^ 0xA44505)) ^ 0x3E9775F4) & (v175 ^ 0xA44505) ^ (4 * (v175 ^ 0xA44505)) & 0xFA5DD7C;
  v178 = (v177 ^ 0xE855570) & (16 * v176) ^ v176;
  v179 = ((16 * (v177 ^ 0x1208809)) ^ 0xFA5DD7D0) & (v177 ^ 0x1208809) ^ (16 * (v177 ^ 0x1208809)) & 0xFA5DD70;
  v180 = v178 ^ 0xFA5DD7D ^ (v179 ^ 0xA05D500) & (v178 << 8);
  v181 = v173 ^ (-598862367 * v171) ^ (2 * ((v180 << 16) & 0xFA50000 ^ v180 ^ ((v180 << 16) ^ 0x5D7D0000) & (((v179 ^ 0x5A0082D) << 8) & 0xFA50000 ^ 0xA200000 ^ (((v179 ^ 0x5A0082D) << 8) ^ 0x25DD0000) & (v179 ^ 0x5A0082D))));
  v182 = (((v181 ^ 0xEA69A399) + 48637216) ^ ((v181 ^ 0x937CCC77) + 2079542002) ^ ((v181 ^ 0x9BCE8517) + 1933640594)) + 1651925122;
  v183 = ((v182 ^ 0xFFA63DE6) + 161906889) ^ v182 ^ ((v182 ^ 0x67142153) - 1860920194) ^ ((v182 ^ 0xE6BAA199) + 280632504) ^ ((v182 ^ 0x77F7FFFD) - 2114501932);
  v184 = (((v170 ^ 0x5E3AC265) - 1580909157) ^ ((v170 ^ 0x3C4C6512) - 1011639570) ^ ((v170 ^ 0x7C5ADF4B) - 2086330187)) + 2000810567 + (((v183 ^ 0x9283AD8A) + 1914653251) ^ ((v183 ^ 0x45143F46) - 1517758321) ^ ((v183 ^ 0xDE68D01D) + 1056192470));
  v185 = ((v184 ^ 0xF9EC770B) + 1147836370) ^ v184 ^ ((v184 ^ 0xD06D59DB) + 1844164866) ^ ((v184 ^ 0x1407C40E) - 1451154219) ^ ((v184 ^ 0x7FFFF5FB) - 1032252126);
  v186 = v173 + 629789686 + (((v183 ^ 0x1CF86532) - 60521733) ^ ((v183 ^ 0x45657EF0) - 1510368967) ^ ((v183 ^ 0x50625913) - 1325482276));
  v187 = (v186 ^ 0xDACC86EB) & (2 * (v186 & 0xD8ECD6F3)) ^ v186 & 0xD8ECD6F3;
  v188 = ((2 * (v186 ^ 0x4A14A3EB)) ^ 0x25F0EA30) & (v186 ^ 0x4A14A3EB) ^ (2 * (v186 ^ 0x4A14A3EB)) & 0x92F87518;
  v189 = (v188 ^ 0xF06010) & (4 * v187) ^ v187;
  v190 = ((4 * (v188 ^ 0x92081508)) ^ 0x4BE1D460) & (v188 ^ 0x92081508) ^ (4 * (v188 ^ 0x92081508)) & 0x92F87518;
  v191 = (v190 ^ 0x2E05408) & (16 * v189) ^ v189;
  v192 = ((16 * (v190 ^ 0x90182118)) ^ 0x2F875180) & (v190 ^ 0x90182118) ^ (16 * (v190 ^ 0x90182118)) & 0x92F87510;
  v193 = v191 ^ 0x92F87518 ^ (v192 ^ 0x2805118) & (v191 << 8);
  LODWORD(STACK[0x5450]) = v183 ^ 0x1F631837;
  v194 = v183 ^ 0x1F631837 ^ v168;
  v195 = v186 ^ (2 * ((v193 << 16) & 0x12F80000 ^ v193 ^ ((v193 << 16) ^ 0x75180000) & (((v192 ^ 0x90782418) << 8) & 0x12F80000 ^ 0x2880000 ^ (((v192 ^ 0x90782418) << 8) ^ 0x78750000) & (v192 ^ 0x90782418))));
  LODWORD(STACK[0x54F0]) = v194;
  v196 = v185 ^ v194 ^ v195;
  LODWORD(STACK[0x5530]) = v183;
  LODWORD(STACK[0x54E0]) = (((v185 ^ 0x9C73023F) - (v185 ^ 0x42791F25)) ^ 0xFFFFFFFC) + (v185 ^ 0x9C73023F);
  LODWORD(STACK[0x5510]) = v185 ^ 0xCAC8599;
  v197 = STACK[0x5780];
  LODWORD(STACK[0x5770]) = v6;
  LODWORD(STACK[0x55B0]) = v150;
  LODWORD(STACK[0x5480]) = v1 + 1435474688;
  LODWORD(STACK[0x5590]) = LODWORD(STACK[0x57C0]) ^ 0x4F;
  LODWORD(STACK[0x55C0]) = v7 + 397244520;
  LODWORD(STACK[0x5600]) = HIWORD(v3) ^ 0xC27BF31A;
  LODWORD(STACK[0x5540]) = v9 + 252331189;
  LODWORD(STACK[0x55F0]) = v195 ^ 0x40683783;
  LODWORD(STACK[0x5500]) = (((v183 ^ 0x75A1B37E) - 1791142729) ^ ((v183 ^ 0xC7ABAE68) + 657934753) ^ ((v183 ^ 0xBBF55FC7) + 1533655056)) + (((v196 ^ 0x82C63808) + 838694382) ^ ((v196 ^ 0xCA5B7A7A) + 2036348832) ^ ((v196 ^ 0x91700F0B) + 575357679)) + ((2 * ((v196 ^ 0x59ED4D79) & (v183 ^ 0x15A7638C) ^ v196 & 0x1C58215D)) ^ 0xCF6FFD4D) - 1413064118;
  v198 = *(STACK[0x57D8] + 8 * v197);
  LODWORD(STACK[0x5470]) = v48;
  LODWORD(STACK[0x54B0]) = v48 + 679858369;
  LODWORD(STACK[0x5520]) = HIBYTE(v45);
  LODWORD(STACK[0x5780]) = v102;
  return v198();
}

uint64_t sub_10031FADC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = v5 + 1547133626 < v4;
  if (v4 < a3 != (v5 + 1547133626) < 0xD7E410BF)
  {
    v6 = v4 < a3;
  }

  return (*(STACK[0x57D8] + 8 * ((107 * v6) ^ v3)))();
}

uint64_t sub_1003204A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0x51B8] - 4629;
  v7 = STACK[0x8260];
  v8 = STACK[0x57D8];
  v9 = STACK[0x2230];
  STACK[0xBF38] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2230]));
  return (*(v8 + 8 * (v6 ^ v9 ^ 0x5E41)))(a1, a2, a3, a4, a5, a6, v7);
}

uint64_t sub_100320560()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x6E89)))(v1);
  STACK[0x6558] = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_100320680@<X0>(int a1@<W8>)
{
  STACK[0xD910] = STACK[0xA8D0];
  STACK[0x8C60] = 0x1883660EE8144416;
  return (*(STACK[0x57D8] + 8 * (a1 ^ 0x155B)))();
}

uint64_t sub_1003208A4()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  return (*(v1 + 8 * (v0 - 15384)))(v2);
}

uint64_t sub_1003209E0()
{
  *(v2 + 3372) = STACK[0x4C30];
  *(v2 + 3368) = v0 - (v1 - 28010);
  return (*(STACK[0x57D8] + 8 * ((11983 * ((v1 - 1831095266) > 0xE66D3873)) ^ (((v1 - 17532) ^ 0x32AC) + v1 - 28010))))();
}

uint64_t sub_100320BC0()
{
  v4 = *(v0 + 8) + 4 * SLODWORD(STACK[0x5790]);
  v5 = *(*v2 + ((*v3 & ((((-502553375 * (v4 & 0xFFFFFFF8)) | 0x585C7517) + 1482454295 + ((-502553375 * (v4 & 0xFFFFFFF8)) | 0xA7A38AE9)) * (v1 - 1407681459) - 1187030156)) & 0xFFFFFFFFFFFFFFF8));
  v6 = (__ROR8__(v4 & 0xFFFFFFFFFFFFFFF8, 8) + v5) ^ 0xB057743BD1A8F5BCLL;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = __ROR8__(v6, 8);
  v9 = (v8 + v7 - ((2 * (v8 + v7)) & 0x7F6A80D3B6591986) + 0x3FB54069DB2C8CC3) ^ 0xB5F2312528A0CB40 ^ __ROR8__(v7, 61);
  v10 = (__ROR8__((v8 + v7 - ((2 * (v8 + v7)) & 0x7F6A80D3B6591986) + 0x3FB54069DB2C8CC3) ^ 0xB5F2312528A0CB40, 8) + v9) ^ 0xA26BE47A1A692F70;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0x1C031738E4A64104;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0x7D0ACAAAE9EC381DLL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x52F1884918D8D6A2;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (0x5C5CC65013FB2EBBLL - ((v18 + v17) | 0x5C5CC65013FB2EBBLL) + ((v18 + v17) | 0xA3A339AFEC04D144)) ^ 0xA8834BC11DF2EBEBLL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  LODWORD(v4) = (((((2 * (v21 + v20)) | 0x9FB74C61C17DAE34) - (v21 + v20) + 0x302459CF1F4128E6) ^ 0x5E652BD87722695ALL) >> (8 * (v4 & 7u))) ^ *v4;
  LODWORD(v4) = LODWORD(STACK[0xC7F8]) + LODWORD(STACK[0xC7F8]) * (LODWORD(STACK[0x5790]) - ((((v4 ^ 0x5D3C907B) - 1692715363) ^ ((v4 ^ 0xD922FC5A) + 520444606) ^ ((v4 ^ 0x841E6C21) + 1111083719)) == -970479896));
  *(v0 + 4) = (v4 ^ 0x57FE589E) - 303825034 + ((2 * v4) & 0xAFFCB13C);
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100320ED0(uint64_t a1)
{
  v1 = *(a1 + 3536);
  *(a1 + 3540) = v1;
  *(a1 + 3544) = (v1 - 10499) | 0x5831;
  v2 = *(STACK[0x4D10] + 24) + 16 * *(a1 + 3512) + 8;
  v3 = STACK[0x57D8];
  v4 = *(STACK[0x57D8] + 8 * (v1 ^ 0x56C1));
  *(a1 + 220) = 0;
  *(a1 + 200) = v4;
  *(a1 + 208) = v2;
  return (*(v3 + 8 * (v1 ^ 0x5035)))();
}

uint64_t sub_100320F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v9 + 8 * (v7 + 3366)))(v8, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_100321088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x6578];
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v9 + 8 * ((((v7 + 1292565299) | 0x10803618) - 1569398582) ^ v7)))(v8, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_100321128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = STACK[0x53A0];
  if (STACK[0x5780])
  {
    v7 = STACK[0x5350];
  }

  v8 = (STACK[0x5780] & 2) == 0;
  if ((STACK[0x5780] & 2) != 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = a4;
  }

  LODWORD(STACK[0x5590]) = v9;
  LODWORD(STACK[0x55D0]) = v6;
  LODWORD(STACK[0x5410]) = v7;
  if (v8)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  LODWORD(STACK[0x5210]) = v10;
  v11 = STACK[0x53A8];
  LODWORD(STACK[0x5240]) ^= LODWORD(STACK[0x53A8]);
  v12 = (v11 & 2) == 0;
  v13 = STACK[0x54F0];
  if (v12)
  {
    v13 = STACK[0x5470];
  }

  LODWORD(STACK[0x5400]) = v13;
  v14 = STACK[0x5430];
  if (!v12)
  {
    v14 = STACK[0x51E0];
  }

  LODWORD(STACK[0x5430]) = v14;
  return (*(STACK[0x57D8] + 8 * v4))(1433300841, 2114744238, a3, a4, 1439450844, 0, 1439462147, -1416043002);
}

uint64_t sub_10032127C()
{
  v2 = v1 + v0 + 2803;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * v2))();
  STACK[0x7EA8] = 0;
  return (*(v3 + 8 * (v0 ^ 0x663247AB ^ ((v0 < 0xD1D65223) * ((v0 ^ 0x66320BCC) - 7416)))))(v4);
}

uint64_t sub_10032139C@<X0>(unint64_t a1@<X8>)
{
  v5 = STACK[0x80C0] - 0x683CBC57EAB929D6;
  v6 = ((v3 - 3895) | 0x5000) + (*(STACK[0x80C0] - 0x683CBC57EAB929C6) ^ 0xFFFFD999) + ((2 * *(STACK[0x80C0] - 0x683CBC57EAB929C6)) & 0xFFFFB332) + 1010799344;
  v7 = 1964904101 * ((176039972 - ((v4 - 240) | 0xA7E2824) + ((v4 - 240) | 0xF581D7DB)) ^ 0xFA33C5F);
  LODWORD(STACK[0x1D4E0]) = -1964904101 * ((176039972 - ((v4 - 240) | 0xA7E2824) + ((v4 - 240) | 0xF581D7DB)) ^ 0xFA33C5F) + 1359630989 * *(STACK[0x80C0] - 0x683CBC57EAB929DALL) + 174975938;
  LODWORD(STACK[0x1D4CC]) = v6 ^ v7;
  STACK[0x1D4C0] = v1;
  STACK[0x1D4D8] = a1;
  STACK[0x1D4F8] = a1;
  LODWORD(STACK[0x1D4E8]) = v7 + v3 + 11466;
  STACK[0x1D4F0] = v5;
  LODWORD(STACK[0x1D4E4]) = (v2 ^ 0x436E935) + v7;
  LODWORD(STACK[0x1D4C8]) = v7 ^ 0x27126DD5;
  v8 = STACK[0x57D8];
  v9 = (*(STACK[0x57D8] + 8 * (v3 + 26965)))(v4 - 240);
  return (*(v8 + 8 * v3))(v9);
}

uint64_t sub_1003214F8()
{
  v2 = *(v0 + 728);
  v3 = *STACK[0x51F0];
  v4 = *STACK[0x51E8] & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v3 + (((v2 & 0x13A4D910) + (v2 & 0xEC5B26E8 | 0x13A4D910) + 2133548956) & v4));
  v6 = __ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8);
  v7 = (v6 + v5 - ((2 * (v6 + v5)) & 0x934C1FFE0F5CD7CLL) + 0x49A60FFF07AE6BELL) ^ 0xC6355E55CF8B5E5ALL;
  v8 = v7 ^ __ROR8__(v5, 61);
  v9 = (__ROR8__(v7, 8) + v8) ^ 0x65F254DD188DB4FCLL;
  v10 = __ROR8__(v9, 8);
  v11 = v9 ^ __ROR8__(v8, 61);
  v12 = (0xD83D5D59C54CC81 - ((v10 + v11) | 0xD83D5D59C54CC81) + ((v10 + v11) | 0xF27C2A2A63AB337ELL)) ^ 0x9D8C6CBC02B221F3;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((2 * (v14 + v13)) & 0xB58ABF662CEBA9A8) - (v14 + v13) - 0x5AC55FB31675D4D5) ^ 0x4883D893EFC3800;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ v1;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xD8C7B31FCA19D9DELL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x5455012E8AB1C38FLL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((2 * (v23 + v22)) | 0x346500869CB6C8A2) - (v23 + v22) - 0x1A3280434E5B6451) ^ 0x757DE0FF40593AB1;
  v25 = *(v3 + (((v2 & 0xFFFFFFF8 ^ 0xEAC85ECA) - 1475880478 + ((2 * (v2 & 0xFFFFFFF8)) & 0xD590BD90)) & v4));
  v26 = (v25 + v6) ^ 0xC2AF3EAA3FF1B8E4;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((2 * (v28 + v27)) & 0xC3C3A46F5293ABBCLL) - (v28 + v27) + 0x1E1E2DC856B62A21) ^ 0x7BEC79154E3B9EDDLL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (0xC50F104A3722131FLL - ((v31 + v30) | 0xC50F104A3722131FLL) + ((v31 + v30) | 0x3AF0EFB5C8DDECE0)) ^ 0x5500A923A9C4FE6DLL;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v32, 8);
  v35 = __ROR8__((((2 * (v34 + v33)) & 0x3EBB20FC9068EA0CLL) - (v34 + v33) - 0x1F5D907E48347507) ^ 0x4110F24460BD99D2, 8);
  v36 = (((2 * (v34 + v33)) & 0x3EBB20FC9068EA0CLL) - (v34 + v33) - 0x1F5D907E48347507) ^ 0x4110F24460BD99D2 ^ __ROR8__(v33, 61);
  v37 = (v35 + v36) ^ v1;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (((2 * (v39 + v38)) & 0xC37D6AED4BDCCCCELL) - (v39 + v38) - 0x61BEB576A5EE6668) ^ 0x4686F99690084046;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0x5455012E8AB1C38FLL;
  v43 = __PAIR64__((v24 >> (8 * (v2 & 7u))) ^ *(v0 + 295), ((((__ROR8__(v42, 8) + (v42 ^ __ROR8__(v41, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> (8 * (v2 & 7u))) ^ *(v0 + 295)) << 24) >> 27;
  v44 = 5621 * ((v43 >> 5) | (8 * v43)) + 32028458;
  *(STACK[0xDCB8] + 5477) = *(STACK[0xDCB8] + v44 - 6152 * (((89362129 * v44) >> 32) >> 7));
  v45 = STACK[0xDCA0];
  *(v0 + 736) = STACK[0xDCA0];
  v45 += 23;
  *(v0 + 744) = v45;
  *(v0 + 296) = v45;
  v46 = STACK[0x57D8];
  *(v0 + 280) = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4D68]) ^ 0x7310));
  return (*(v46 + 8 * (*(v0 + 3796) ^ 0x2346)))();
}

uint64_t sub_10032195C()
{
  v1 = STACK[0x51B8] - 5580;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(v0);
  STACK[0x95D8] = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1003219B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (v7 - 40912133) & LODWORD(STACK[0x1064]);
  v9 = STACK[0xDE40] + (STACK[0xDE48] << 7) + 85;
  v10 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v10 + 8 * (v7 - 1569404569 + v8 + 3370)))(v9, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_100321AB0()
{
  STACK[0xC1D8] = v1;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x3408)))(v1);
  STACK[0x93A0] = v3;
  return (*(v2 + 8 * (((v3 == 0) * (((v0 - 8246) | 0x1601) - 17929 + 12 * (v0 ^ 0x489A))) ^ v0)))();
}

uint64_t sub_100321C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x51B8];
  v8 = STACK[0x6E40];
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * (STACK[0x51B8] - 21264));
  return (*(v9 + 8 * ((v7 ^ 0x5750) + v7 - 21264)))(v8, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_100321CC4()
{
  v1 = STACK[0x51B8];
  STACK[0x7168] = (*(*STACK[0x51F0] + (*STACK[0x51E8] & 0x26C045C0)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x4F9BD9A24AD065A5) + 0x2B4FF308524167C1 * (((v0 ^ 0xB3EECA3CFF27C019) - 0xD889831E224805FLL) ^ ((v0 ^ 0xD1A44267CABF01B5) - 0x6FC2106AD7BC41F3) ^ ((v0 ^ 0xFA06785843479A0) + 0x4E39CA7766C8C61ALL)) - 0x6771826A43A60A36;
  return (*(STACK[0x57D8] + 8 * ((19348 * ((v1 + 362959085) > 0x9E562967)) ^ (v1 - 7928))))();
}

uint64_t sub_100321EB0()
{
  v0 = (STACK[0x51B8] - 22598) | 0x524;
  v1 = STACK[0x51B8] - 14298;
  STACK[0xC048] = STACK[0x7718] + LODWORD(STACK[0x85DC]);
  if (STACK[0x5D48])
  {
    v2 = STACK[0x7D20] == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  return (*(STACK[0x57D8] + 8 * ((v3 * (v0 ^ 0x58D)) ^ v1)))();
}

uint64_t sub_100321F84(uint64_t a1)
{
  *(a1 + 4364) = STACK[0x612C];
  v2 = *(STACK[0x57D8] + 8 * (v1 + 2066));
  *(a1 + 3380) = v1 + 4688;
  *(a1 + 3384) = 0;
  return v2();
}

uint64_t sub_100322148()
{
  v1 = *(STACK[0x9FF0] + 24);
  STACK[0x9828] = v1;
  return (*(STACK[0x57D8] + 8 * ((((((v0 - 809199462) ^ (v1 == 0)) & 1) == 0) * ((v0 - 809199462) ^ 0xCFC4DFE4)) ^ v0)))();
}

uint64_t sub_100322304@<X0>(int a1@<W0>, unsigned int a2@<W4>, int a3@<W5>, unsigned int a4@<W6>, uint64_t a5@<X8>)
{
  v9 = v6 > a4;
  *(a5 + v8) = 0;
  if (v9 == v8 + 1 > (v5 ^ a2))
  {
    v9 = v8 + a1 < v7;
  }

  return (*(STACK[0x57D8] + 8 * ((!v9 | (8 * !v9)) ^ a3)))();
}

uint64_t sub_100322354@<X0>(int a1@<W8>)
{
  *(v6 + 3356) = a1;
  *(v6 + 3352) = v1;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * (v4 ^ 0x1154)))(32);
  v9 = v2 ^ v5;
  *(v6 + 3360) = v9;
  *(v3 + 16 * v9) = v8;
  return (*(v7 + 8 * (((((v4 - 1) ^ (v8 == 0)) & 1) * (((v4 + 1492111882) & 0xA70FCCDB) - 2919)) ^ v4)))();
}

uint64_t sub_1003223F4()
{
  *(v0 + 248) = 0;
  *(v0 + 256) = -769884012;
  *v0 = 0x79CEC8CF5A6FCEBALL;
  v1 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x3A4C]));
  return (*(v1 + 8 * SLODWORD(STACK[0x3A44])))();
}

uint64_t sub_100322520@<X0>(int a1@<W8>)
{
  v1 = a1 | 0x1400;
  *STACK[0x77F0] = (*(STACK[0x68B0] + 12) ^ 0x6BF7C937) + ((v1 + 812220656) & 0xCF967A5F ^ 0xF57BAF88) + ((2 * *(STACK[0x68B0] + 12)) & 0xD7EF926E);
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100322598@<X0>(int a1@<W2>, int a2@<W8>)
{
  LODWORD(STACK[0x6D50]) = v2;
  LODWORD(STACK[0xD318]) = v3;
  LODWORD(STACK[0xD31C]) = a2;
  LODWORD(STACK[0x7154]) = STACK[0x57B0];
  return (*(STACK[0x57D8] + 8 * (((STACK[0x51B8] - 6081) * a1) ^ LODWORD(STACK[0x1610]))))();
}

uint64_t sub_100322760()
{
  v3 = (v2 + (((v1 - 5152) | 0x1422) ^ 0x682u) * v0) % 0x3282;
  v4 = STACK[0x8070];
  *(v4 + v3) = *(STACK[0x8070] + (12337 * (((*(v4 + v3) ^ 0x422D377C) - 1110259580) ^ ((*(v4 + v3) ^ 0xE24BC155) + 498351787) ^ ((*(v4 + v3) ^ 0xA066F69E) + 1603864930)) + 2257671) % 0x3282);
  return (*(STACK[0x57D8] + 8 * (v1 | (2 * (v0 == 255)))))();
}

uint64_t sub_100322844()
{
  LODWORD(STACK[0x9EDC]) = ((STACK[0x51B8] - 15104) ^ 0x1D52) + v0;
  v1 = STACK[0x57D8];
  STACK[0xADE8] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1C60]));
  return (*(v1 + 8 * SLODWORD(STACK[0x1C58])))();
}

uint64_t sub_1003228B8@<X0>(int a1@<W8>)
{
  v1 = LODWORD(STACK[0x52D8]) - 14554;
  v2 = a1 ^ (LODWORD(STACK[0x52D8]) - 1787) ^ 0x204BE961u;
  v3 = STACK[0x5550];
  if (STACK[0x5550])
  {
    v4 = STACK[0x53A8];
  }

  else
  {
    v4 = STACK[0x5118];
  }

  v5 = STACK[0x5128];
  v6 = STACK[0x5120];
  if (v3)
  {
    v7 = STACK[0x5120];
  }

  else
  {
    v7 = STACK[0x5128];
  }

  if (v3)
  {
    v6 = STACK[0x5118];
  }

  else
  {
    v5 = STACK[0x53A8];
  }

  if ((v3 & 2) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  LODWORD(STACK[0x5118]) = v8;
  if ((v3 & 2) == 0)
  {
    v4 = v7;
  }

  LODWORD(STACK[0x5128]) = v4;
  if ((v3 & 2) != 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  LODWORD(STACK[0x53A8]) = v9;
  if ((v3 & 2) != 0)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  LODWORD(STACK[0x5120]) = v10;
  v11 = *(STACK[0x57D8] + 8 * v1);
  LODWORD(STACK[0x52C8]) = STACK[0x50F8];
  LODWORD(STACK[0x52D0]) = STACK[0x5108];
  LODWORD(STACK[0x52E0]) = STACK[0x5100];
  LODWORD(STACK[0x52C0]) = STACK[0x5110];
  return v11(243, 4294967290, 4294967284, 4294967285, 200, 72, v2);
}

uint64_t sub_100322A28()
{
  STACK[0xA160] = v3;
  STACK[0xD798] = v4;
  STACK[0xD7A0] = v1;
  STACK[0xD7A8] = v7;
  LODWORD(STACK[0xD7B0]) = v6;
  LODWORD(STACK[0xD7B4]) = 1978732275 * v5;
  STACK[0xD7B8] = v2;
  v8 = STACK[0x7ED8];
  STACK[0x8880] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v8 + 16;
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v9 + 8 * (v0 - 1569404569 + ((v0 - 577029808) & 0x7FEFF7FF) + 3296)))();
}

uint64_t sub_100322C74()
{
  *(v2 + 3220) = v3;
  *(v2 + 3216) = v0;
  return (*(STACK[0x57D8] + 8 * (((((v3 - (v1 - 143113071)) | (v1 - 143113071 - v3)) >= 0) * ((v1 + 26204919) & 0xFE707D5E ^ 0x2503)) ^ (v1 + 13001 + ((v1 + 1977329577) & 0x8A245857)))))();
}

uint64_t sub_100322D00()
{
  v1 = *(STACK[0x88A0] + 24);
  STACK[0xB9F8] = v1;
  return (*(STACK[0x57D8] + 8 * (((v1 == 0) * (((v0 + 459008751) & 0x64A3EDEF) - 26932 + 11307 * (v0 ^ 0x47D2))) ^ v0)))();
}

uint64_t sub_100322DC4()
{
  v1 = STACK[0x89D0];
  v2 = STACK[0x57D8];
  STACK[0xD060] = *(STACK[0x57D8] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x1BA3)))(v1);
}

uint64_t sub_100322EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0xC018];
  STACK[0x5610] = STACK[0x77C0];
  return (*(STACK[0x57D8] + 8 * (((v6 == -2047832207) * (v6 + 12945)) ^ (v6 + 4214))))(a1, a2, a3, a4, v7, a6, 1172461588, 4294626975);
}

uint64_t sub_100323020()
{
  v1 = STACK[0x57D8];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((14194 * (v0 == -659039678)) ^ (v0 + 2870))))(0x308E083E0C524CBELL);
}

uint64_t sub_1003230F8@<X0>(uint64_t a1@<X4>, int a2@<W8>)
{
  v6 = *(STACK[0x5620] + 288) + 4 * v2;
  v7 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v6 & 0xFFFFFFF8 ^ 0x9355D90C) + 1689641823 + (((v6 & 0xFFFFFFF8) << ((a2 - 19) ^ 0x1Fu)) & (a2 ^ 0x26AB9521)))) & 0xFFFFFFFFFFFFFFF8));
  v8 = (__ROR8__(v6 & 0xFFFFFFFFFFFFFFF8, 8) + v7) ^ a1;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = __ROR8__(v8, 8);
  v11 = (((2 * (v10 + v9)) | 0x1790757DFE1B697ALL) - (v10 + v9) + 0x7437C54100F24B43) ^ 0x18F4BF20C81F33ELL;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ v3;
  v14 = __ROR8__(v13, 8);
  v15 = v13 ^ __ROR8__(v12, 61);
  v16 = (v14 + v15) ^ 0x1C031738E4A64104;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0x7D0ACAAAE9EC381DLL;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = __ROR8__((((2 * (v20 + v19)) | 0xA6CF0DE60F87C7A4) - (v20 + v19) + 0x2C98790CF83C1C2ELL) ^ 0x81960EBA1F1B3570, 8);
  v22 = (((2 * (v20 + v19)) | 0xA6CF0DE60F87C7A4) - (v20 + v19) + 0x2C98790CF83C1C2ELL) ^ 0x81960EBA1F1B3570 ^ __ROR8__(v19, 61);
  v23 = (v21 + v22) ^ 0xB20726EF1F63AAFLL;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  *v6 = (((0x2C29D94BEF4E9EA4 - ((v25 + v24) | 0x2C29D94BEF4E9EA4) + ((v25 + v24) | 0xD3D626B410B1615BLL)) ^ 0x4268AB5C872DDF1BLL) >> (8 * (v6 & 7u))) ^ v4;
  return (*(STACK[0x57D8] + 8 * (a2 | (4 * (v5 != 0)))))();
}

uint64_t sub_100323374()
{
  v0 = (STACK[0x51B8] - 275601565) & 0x106D3766;
  v1 = STACK[0x57D8];
  v2 = STACK[0x1844];
  STACK[0x9AC0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1844]));
  return (*(v1 + 8 * ((v0 ^ 0x3D5E) + v2)))(15115, 4404, 0x683CBC57EAB92A3ELL, 22622);
}

uint64_t sub_1003233E8()
{
  v0 = STACK[0x57D8];
  v1 = STACK[0x1F30];
  v2 = LODWORD(STACK[0x1F30]) ^ 0x5245;
  STACK[0x7CA8] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1F30]));
  return (*(v0 + 8 * ((v2 - 15602) ^ v1)))();
}

uint64_t sub_1003234E0()
{
  v1 = 11794 * (v0 ^ 0x53AE);
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 + 8218)))((((v1 + 569527251) & 0xDE0D5B3D ^ 0xD21C50F1) + ((v1 - 1307221043) & 0x4DEA6CDE)) ^ *STACK[0xC200]);
  STACK[0xE170] = v3;
  if (v3)
  {
    v4 = -143113071;
  }

  else
  {
    v4 = -143156080;
  }

  LODWORD(STACK[0xE17C]) = v4;
  return (*(v2 + 8 * (((v3 != 0) | (8 * (v3 != 0))) ^ v1)))();
}

uint64_t sub_100323688()
{
  v3 = STACK[0x51B8] + 2237;
  LODWORD(STACK[0xDA50]) = v0;
  LODWORD(STACK[0xDA4C]) = v2;
  *STACK[0xA300] = v1;
  return (*(STACK[0x57D8] + 8 * (((v3 ^ 0x611A) * (v1 != 103679699)) | LODWORD(STACK[0x1A4C]))))();
}

uint64_t sub_100323748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v14 = v9 - 1;
  v15 = a1 + v7 + v14;
  v16 = *(*v10 + ((*v12 & (a3 + (v15 & 0x2FC77830 | 0xD03887CB) + (v15 & 0xD03887C8 | 0x2FC77834) + 1)) & 0xFFFFFFFFFFFFFFF8));
  v17 = (__ROR8__(v15 & 0xFFFFFFFFFFFFFFF8, 8) + v16) ^ a4;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ a6;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ a2;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((2 * (v23 + v22)) | 0x2E21729ED8F71FAELL) - (v23 + v22) + 0x68EF46B093847029) ^ 0xF043D78F97F0DB4ALL;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ v13;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ a5;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  *v15 = (((__ROR8__((((2 * (v30 + v29)) | 0x644CCB24DA027EE0) - (v30 + v29) - 0x322665926D013F70) ^ 0x72EFAA7851C4F491, 8) + ((((2 * (v30 + v29)) | 0x644CCB24DA027EE0) - (v30 + v29) - 0x322665926D013F70) ^ 0x72EFAA7851C4F491 ^ __ROR8__(v29, 61))) ^ v11) >> (8 * (v15 & 7u))) ^ *(a7 + v14);
  return (*(STACK[0x57D8] + 8 * ((v14 != 0) | (2 * (v14 != 0)) | (v8 + 1030))))();
}

uint64_t sub_100323AA0()
{
  v1 = STACK[0xA560];
  v2 = STACK[0x64A0];
  STACK[0x6130] = STACK[0x9190];
  STACK[0x6F70] = v2;
  STACK[0x6218] = v1;
  return (*(STACK[0x57D8] + 8 * (((v1 == 0x683CBC57EAB92A3ELL) * ((118 * (v0 ^ 0x5F93)) ^ 0x18F5)) ^ v0)))();
}

uint64_t sub_100323B28@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *v2 = 5;
  *(v2 + 4) = *(a1 + 4);
  *(v2 + 5) = *(a1 + 5);
  return (*(STACK[0x57D8] + 8 * ((a2 + 15430) ^ a2)))();
}

uint64_t sub_100323B7C()
{
  STACK[0xCB00] = 0;
  LODWORD(STACK[0x7E7C]) = 0;
  v1 = STACK[0x57D8];
  STACK[0x9E28] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 7550) ^ v0)))();
}

uint64_t sub_100323C20()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  STACK[0x8148] = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100323C4C()
{
  v3 = *(v2 + 3064);
  v4 = *(v2 + 3076);
  v5 = *(v2 + 3080);
  v6 = *(v2 + 3099);
  v7 = *(v2 + 3104);
  v8 = *(v2 + 3124);
  LODWORD(STACK[0x57C0]) = *(v2 + 3160);
  return (*(STACK[0x57D8] + 8 * (v0 - 18019)))(v3, v5, v4, v8, v1, v6, v7);
}

uint64_t sub_100323CDC()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x8B66BAE2)))();
  STACK[0x98E0] = 0;
  return (*(v2 + 8 * (v1 ^ (v0 + 1569) ^ (6 * (v1 ^ 0x8B66C816)) ^ (29263 * (v1 >= 0xE6E631CC)))))(v3);
}

uint64_t sub_100323D50()
{
  v1 = STACK[0x57D8];
  STACK[0xD9E0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (((1194 * (v0 ^ 0x5F5)) ^ 0x3DF9) + v0)))();
}

uint64_t sub_100323EC0@<X0>(int a1@<W0>, char a2@<W2>, uint64_t a3@<X8>)
{
  v5 = v3 + *(v4 + 3976);
  v6 = *(v5 - 48);
  v5 -= 48;
  v7 = __ROR8__(v5 & 0xFFFFFFFFFFFFFFF8, 8);
  v8 = (a3 + 5603);
  v9 = ((v7 - 0x70824D863E123F43) | (v8 + 0x489F1AB03D627926)) - ((v7 - 0x70824D863E123F43) | 0xB760E54FC29D70B2) - 0x489F1AB03D628F4ELL;
  v10 = v9 ^ 0x9B18F1A7C473703BLL;
  v9 ^= 0xE0F56269CB1D75D7;
  v11 = __ROR8__(v10, 8);
  v12 = (((2 * (v11 + v9)) & 0x3017D82C0C583A34) - (v11 + v9) - 0x180BEC16062C1D1BLL) ^ 0xDD88771EE66C24BELL;
  v13 = v12 ^ __ROR8__(v9, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0xFBC18F8B9568C440;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = __ROR8__((v16 + v15 - ((2 * (v16 + v15)) & 0xFA362DF34060C8A4) + 0x7D1B16F9A0306452) ^ 0x37FED896C3A71D61, 8);
  v18 = (v16 + v15 - ((2 * (v16 + v15)) & 0xFA362DF34060C8A4) + 0x7D1B16F9A0306452) ^ 0x37FED896C3A71D61 ^ __ROR8__(v15, 61);
  v19 = (0xE22CBBA2137F831CLL - ((v17 + v18) | 0xE22CBBA2137F831CLL) + ((v17 + v18) | 0x1DD3445DEC807CE3)) ^ 0x35878F07675BFFF4;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = __ROR8__((0x885FD74F74F2DBF3 - ((v21 + v20) | 0x885FD74F74F2DBF3) + ((v21 + v20) | 0x77A028B08B0D240CLL)) ^ 0x80D2347678A3DFD0, 8);
  v23 = (0x885FD74F74F2DBF3 - ((v21 + v20) | 0x885FD74F74F2DBF3) + ((v21 + v20) | 0x77A028B08B0D240CLL)) ^ 0x80D2347678A3DFD0 ^ __ROR8__(v20, 61);
  v24 = (v22 + v23 - ((2 * (v22 + v23)) & 0xFE35B579FC4BA1D8) + 0x7F1ADABCFE25D0ECLL) ^ 0x99ADCD86650E60B1;
  *(*(v4 + 4272) + ((a2 + 11 * v3) & 0x7F)) = (2 * (((((__ROR8__(v24, 8) + (v24 ^ __ROR8__(v23, 61))) ^ 0x94AC86FF716F8E22) >> (8 * (v5 & 7u))) ^ v6) + 9 * v3)) & 0xF7 ^ 0xE3;
  *(v4 + 2644) = v8;
  v25 = *(STACK[0x57D8] + 8 * (a3 ^ 0x1663 ^ ((((v3 + 1 - a3) | (a3 - (v3 + 1))) >> 63) * a1)));
  *(v4 + 2648) = 68;
  return v25();
}

uint64_t sub_100324180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE **a6)
{
  LODWORD(STACK[0x4848]) = LODWORD(STACK[0x56F0]) | LODWORD(STACK[0x5720]);
  LODWORD(STACK[0x49E8]) = LODWORD(STACK[0x55A0]) + LODWORD(STACK[0x53B8]);
  LODWORD(STACK[0x4840]) = LODWORD(STACK[0x55B0]) | LODWORD(STACK[0x52B0]);
  LODWORD(STACK[0x49F0]) = v8 | v6;
  *a6[542] = 120;
  *a6[538] = 0x80;
  *a6[539] = -51;
  *a6[535] = 20;
  *a6[537] = 61;
  *a6[541] = 52;
  *a6[540] = 64;
  *a6[536] = -46;
  return (*(STACK[0x57D8] + 8 * ((14506 * (v7 < 0x96722C66)) ^ (v7 - 941754881))))();
}

uint64_t sub_100324358(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x953C];
  v6 = STACK[0x6DB0];
  v7 = STACK[0x7BAC];
  STACK[0x81B0] = STACK[0x8228];
  LODWORD(STACK[0x9DAC]) = v5;
  *(a4 + 2952) = 126;
  STACK[0x60C8] = v6;
  LODWORD(STACK[0x803C]) = v7;
  STACK[0x8A48] = &STACK[0x972C];
  STACK[0xC910] = &STACK[0x5DB0];
  STACK[0x6830] = a1;
  LODWORD(STACK[0x9E18]) = 1593041221;
  return (*(STACK[0x57D8] + 8 * (v4 ^ 0x6F3C)))();
}

uint64_t sub_100324444()
{
  STACK[0x1D4C8] = 0;
  LODWORD(STACK[0x1D4C0]) = (v0 + 1717160535) ^ (1964904101 * ((((2 * (v1 - 240)) | 0x2FFA9768) - (v1 - 240) - 402475956) ^ 0xEDDFA030));
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 21100)))(v1 - 240);
  return (*(v2 + 8 * (((*STACK[0x4488] == 0) * (((v0 - 657575418) & 0x2731FC76) - 22553)) ^ v0)))(v3);
}

uint64_t sub_100324548@<X0>(unsigned int a1@<W0>, unsigned int a2@<W8>)
{
  *(v4 + 20) = v2 + (a1 >> 29);
  v6 = *(STACK[0x57D8] + 8 * ((((a2 >> (10 * (v3 ^ 0x59) + 13)) & (((v3 + 1966472897) & 0x8AC9FBBD) - 10342)) != 0) ^ v3));
  STACK[0x5660] = v5;
  STACK[0x5650] = v4;
  LODWORD(STACK[0x5580]) = a1;
  return v6();
}

uint64_t sub_1003245C4(uint64_t a1)
{
  v2 = *(STACK[0xCC20] - 0x683CBC57EAB92A3ELL);
  STACK[0xBB30] = 0;
  STACK[0x9660] = 0;
  return (*(STACK[0x57D8] + 8 * (((((v1 ^ 0x7137 ^ (v2 == a1)) & 1) == 0) * (((v1 - 9057) | 0x49) ^ 0x6AC)) ^ v1)))();
}

uint64_t sub_100324658@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 0x683CBC57EAB92A36);
  STACK[0x9178] = 0;
  STACK[0xA4F8] = 0;
  return (*(STACK[0x57D8] + 8 * (((12 * ((v1 + 1455978505) & 0xA93747DF ^ 0x48B) - 10907) * (v2 == 0x308E083E0C524CBELL)) ^ v1)))();
}

uint64_t sub_1003246E8()
{
  v1 = STACK[0x57D8];
  STACK[0xBA70] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x69A7 ^ ((v0 + 1248) | 0x2812))))();
}

uint64_t sub_10032474C()
{
  STACK[0x57B0] = &STACK[0x10120] + v0;
  v2 = STACK[0x57D8];
  LODWORD(STACK[0x57C0]) = (*(STACK[0x57D8] + 8 * (v1 ^ 0x56B3621A)))(0);
  return (*(v2 + 8 * ((((v1 + 1097765068) & 0x67DE7FEA ^ 0xA94CC21D) + v1) ^ (7921 * (v1 < 0xE78E134B)))))();
}

uint64_t sub_1003247EC()
{
  LODWORD(STACK[0xC3B8]) = *(v0 - 0x30BDFED8F32E6559);
  v2 = STACK[0x57D8];
  STACK[0xBCF8] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x1F49 ^ (9854 * (v1 + ((v1 + 654) | 0x4001) == -1965164124)))))();
}

uint64_t sub_1003248B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = STACK[0x51B8] - 3657;
  LODWORD(STACK[0xB74C]) = -1;
  return (*(STACK[0x57D8] + 8 * v5))(a1, a2, a3, a4, a5, STACK[0x57C0]);
}

uint64_t sub_100324904()
{
  v2 = STACK[0x8D40];
  *(v1 - 0x55A8D952E5D46836) = 16;
  *(v1 - 0x55A8D952E5D46837) = *(v2 - 0x79CEC8CF5A6FCEA3);
  *(v1 - 0x55A8D952E5D46838) = *(v2 - 0x79CEC8CF5A6FCEA4);
  *(v1 - 0x55A8D952E5D46839) = *(v2 - 0x79CEC8CF5A6FCEA5);
  *(v1 - 0x55A8D952E5D4683ALL) = *(v2 - 0x79CEC8CF5A6FCEA6);
  *(v1 - 0x55A8D952E5D4683BLL) = *(v2 - 0x79CEC8CF5A6FCEA7);
  *(v1 - 0x55A8D952E5D4683CLL) = *(v2 - 0x79CEC8CF5A6FCEA8);
  *(v1 - 0x55A8D952E5D4683DLL) = *(v2 - 0x79CEC8CF5A6FCEA9);
  *(v1 - 0x55A8D952E5D4683ELL) = *(v2 - 0x79CEC8CF5A6FCEAALL);
  *(v1 - 0x55A8D952E5D4683FLL) = *(v2 - 0x79CEC8CF5A6FCEABLL);
  *(v1 - 0x55A8D952E5D46840) = *(v2 - 0x79CEC8CF5A6FCEACLL);
  *(v1 - 0x55A8D952E5D46841) = *(v2 - 0x79CEC8CF5A6FCEADLL);
  *(v1 - 0x55A8D952E5D46842) = *(v2 - 0x79CEC8CF5A6FCEAELL);
  *(v1 - 0x55A8D952E5D46843) = *(v2 - 0x79CEC8CF5A6FCEAFLL);
  *(v1 - 0x55A8D952E5D46844) = *(v2 - 0x79CEC8CF5A6FCEB0);
  *(v1 - 0x55A8D952E5D46845) = *(v2 - 0x79CEC8CF5A6FCEB1);
  *(v1 - 0x55A8D952E5D46846) = *(v2 - 0x79CEC8CF5A6FCEB2);
  return (*(STACK[0x57D8] + 8 * ((38 * (((v0 + 34) ^ (*(v2 - 0x79CEC8CF5A6FCEB6) == 0)) & 1)) ^ v0)))();
}

uint64_t sub_100324BF0()
{
  STACK[0xCAD8] = 0;
  LODWORD(STACK[0x7AEC]) = v0;
  return (*(STACK[0x57D8] + 8 * (v1 - 17861 + ((v1 + 6334) | 0x4800))))(&STACK[0x7AEC], &STACK[0xCAD8]);
}

uint64_t sub_100324CC0()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x3ECF)))();
  *v0 = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100324CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x2EB0] & 0xB565FF;
  v4 = STACK[0x57D8];
  v5 = STACK[0x2EB4];
  STACK[0x65D8] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2EB4]));
  return (*(v4 + 8 * ((v3 - 20753) ^ v5)))(113, a2, a3, 108, 4294945851);
}

uint64_t sub_100324DE0()
{
  v1 = STACK[0x57D8];
  STACK[0xB2F0] = *(STACK[0x57D8] + 8 * (v0 - 8924));
  return (*(v1 + 8 * (v0 - 3061)))();
}

uint64_t sub_100324E9C@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, int a9@<W8>)
{
  v11 = *(STACK[0x57C0] + 4843 * a9 + 8698028 - 5816 * (((((4843 * a9 + 8698028) >> 3) * v10) >> 32) >> 7));
  v12 = *(STACK[0x57C0] + (4843 * (((v11 ^ 0x1D425B9) - 30680505) ^ ((v11 ^ 0x4070C0A6) - 1081131174) ^ ((v11 ^ 0x41A4E5D8u) - 1101325784)) + 10901593) % 0x16B8);
  if (v12)
  {
    a7 = -118;
  }

  v14 = a7 ^ 0x30;
  v15 = a1 ^ a7 ^ 0xF7;
  if ((v12 & 2) != 0)
  {
    v15 = v14;
  }

  if (((v12 ^ 0xFC) & 4) != 0)
  {
    v15 ^= a2 ^ 0xC7;
  }

  if (((v12 ^ 0xFC) & 8) == 0)
  {
    v15 ^= a3 ^ 0xC7;
  }

  if (((v12 ^ 0xFC) & 0x10) == 0)
  {
    v15 ^= a4 ^ 0xC7;
  }

  if (((v12 ^ 0xFC) & 0x20) == 0)
  {
    v15 ^= a5 ^ 0xC7;
  }

  v16 = a6 ^ v15 ^ 0xC7;
  if (((v12 ^ 0xFC) & 0x40) == 0)
  {
    v16 = v15;
  }

  v17 = v12 < 0;
  v18 = a8 ^ v16;
  if (v17)
  {
    v18 = v16;
  }

  *(STACK[0x57B0] + 4 * (((v9 ^ 0x5D38u) * a9 + 9469466) % 0x2A40)) = v18 ^ 0x684FB630;
  return (*(STACK[0x57D8] + 8 * ((9380 * (a9 == 255)) ^ v9)))();
}

uint64_t sub_100325190@<X0>(unint64_t a1@<X8>)
{
  STACK[0xCB40] = a1;
  LODWORD(STACK[0xAE38]) = v2;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100325490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x51B8] - 21281;
  *(STACK[0x4240] + 76) = STACK[0x7A24];
  v8 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v8 + 8 * (v7 ^ 0x171E)))(STACK[0x4228], a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_100325720@<X0>(int a1@<W0>, uint64_t a2@<X2>, int a3@<W6>, int a4@<W8>)
{
  v9 = *(v6 + v4) * (v5 ^ 0x8B0F5BB3);
  v10 = v4 + v8 + (v9 ^ v7) - (((v9 ^ v7) + a4) >> 16) + (((v9 ^ v7) + a4 - (((v9 ^ v7) + a4) >> 16)) >> 8);
  v11 = v4 + v8 + (v10 ^ v9) - (((v10 ^ v9) + a4) >> 16) + (((v10 ^ v9) + a4 - (((v10 ^ v9) + a4) >> 16)) >> 8);
  v12 = v10 ^ a1 ^ (2 * v10) & 0x6799FB3E ^ v11 ^ (2 * v11) & 0x6799FB3E;
  v13 = v4 + v8 + (v11 ^ v9) - (((v11 ^ v9) + a4) >> 16) + (((v11 ^ v9) + a4 - (((v11 ^ v9) + a4) >> 16)) >> 8);
  return (*(STACK[0x57D8] + 8 * (((v4 + a2 == 15) | (4 * (v4 + a2 == 15))) ^ a3)))((v12 ^ -v12 ^ (((2 * v13) & 0x6799FB3E ^ v13) - ((2 * v13) & 0x6799FB3E ^ v13 ^ v12))) + ((2 * v13) & 0x6799FB3E ^ v13));
}

uint64_t sub_100325948@<X0>(int a1@<W8>)
{
  v1 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = ((2 * LODWORD(STACK[0xB188])) & 0xEFFA89EE) - 8718472 + (LODWORD(STACK[0xB188]) ^ (3769 * (a1 ^ 0x13A9) - 134419295)) + 2082;
  STACK[0x6230] = v1;
  LODWORD(STACK[0x6974]) = 1780353390;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_1003259DC()
{
  v1 = STACK[0x51B8];
  v2 = STACK[0x51B8] - 18310;
  v3 = LOBYTE(STACK[0xDAF7]);
  STACK[0xB510] = v0;
  LODWORD(STACK[0xCB38]) = -769884012;
  return (*(STACK[0x57D8] + 8 * ((v3 * (v2 ^ 0x1331)) ^ (v1 - 11885))))();
}

uint64_t sub_100325A98()
{
  v4 = *(STACK[0x5740] + (((STACK[0x53E8] ^ 0x53F9A6A4) + 641897078 + (STACK[0x5150] & 0xA7F34D40)) & STACK[0x52D0] & 0xFFFFFFF8));
  v5 = (v4 + STACK[0x5620]) ^ 0xB88801D4E1C76353;
  v6 = v5 ^ __ROR8__(v4, 61);
  v7 = __ROR8__(v5, 8);
  v8 = (((2 * (v7 + v6)) & 0xBD37E7497C6A25FALL) - (v7 + v6) + 0x21640C5B41CAED02) ^ 0x19ACBD31A6CF8575;
  v9 = v8 ^ __ROR8__(v6, 61);
  v10 = __ROR8__(v8, 8);
  v11 = (((2 * (v10 + v9)) & 0x6B76682115416DB6) - (v10 + v9) + 0x4A44CBEF755F4924) ^ 0xAFC47A92F99AAC75;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xE1A1FD5BD155F97ALL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((v15 + v14) | 0x61D20F7A3D548FD3) - ((v15 + v14) | 0x9E2DF085C2AB702CLL) - 0x61D20F7A3D548FD4) ^ 0xBBB244763EF6304ALL;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = __ROR8__((((2 * (v18 + v17)) | 0x5ED44A2342CC3F2ALL) - (v18 + v17) + 0x5095DAEE5E99E06BLL) ^ 0x555FC7DC6A582E52, 8);
  v20 = (((2 * (v18 + v17)) | 0x5ED44A2342CC3F2ALL) - (v18 + v17) + 0x5095DAEE5E99E06BLL) ^ 0x555FC7DC6A582E52 ^ __ROR8__(v17, 61);
  v21 = (((2 * (v19 + v20)) | 0x56F220767BE47C52) - (v19 + v20) - 0x2B79103B3DF23E29) ^ 0xF9891CDD1D17ED87;
  v22 = __ROR8__(v21, 8) + (v21 ^ __ROR8__(v20, 61));
  v23 = (((2 * v3) | 0xF2FD3261894032B8) - v3 - 0x797E9930C4A0195CLL) ^ 0xC1F698E425677A0FLL ^ STACK[0x50D8];
  v24 = (__ROR8__((((2 * v3) | 0xF2FD3261894032B8) - v3 - 0x797E9930C4A0195CLL) ^ 0xC1F698E425677A0FLL, 8) + v23) ^ 0x38C8B16AE7056877;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0xE580B17D8CC5E551;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((2 * (v28 + v27)) & 0x2D4B327398949E52) - (v28 + v27) - 0x16A59939CC4A4F2ALL) ^ 0x8FB9B9DE2E049ACLL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  LODWORD(STACK[0x5378]) = LODWORD(STACK[0x57C0]) ^ ((v22 ^ 0xF4730B31AE70757BLL) >> STACK[0x57B0]);
  v32 = (((v31 + v30) | 0xF877E8728247B793) - ((v31 + v30) | 0x788178D7DB8486CLL) + 0x788178D7DB8486CLL) ^ 0x2217A37E81E5080ALL;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xFA35E2CDCB3E31C7;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v1;
  v37 = ((__ROR8__(v36, 8) + (v36 ^ __ROR8__(v35, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5670];
  v38 = *(STACK[0x56F0] + (LODWORD(STACK[0x5118]) & (((STACK[0x53B0] - 663730055) | 0x62EC4E2B) - ((663730054 - STACK[0x53B0]) & 0x62EC4E2A) - 1580470111)));
  LODWORD(STACK[0x5460]) = LODWORD(STACK[0x56E0]) ^ v37;
  v39 = (v38 + STACK[0x5440]) ^ 0xB88801D4E1C76353;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x38C8B16AE7056877;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (((2 * (v43 + v42)) | 0x233A4805497FA842) - (v43 + v42) + 0x6E62DBFD5B402BDFLL) ^ 0x741D957F287A3170 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__((((2 * (v43 + v42)) | 0x233A4805497FA842) - (v43 + v42) + 0x6E62DBFD5B402BDFLL) ^ 0x741D957F287A3170, 8) + v44) ^ 0xE1A1FD5BD155F97ALL;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0xDA604B0C03A2BF99;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0xFA35E2CDCB3E31C7;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ v1;
  LODWORD(STACK[0x52B0]) = LODWORD(STACK[0x5600]) ^ (((__ROR8__(v51, 8) + (v51 ^ __ROR8__(v50, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5450]);
  v52 = *(STACK[0x5250] + (v2 & ((((LODWORD(STACK[0x5168]) | 0x4FD820A5) + (STACK[0x5298] ^ 0x5813EFAD)) & 0xFFFFFFF8) - 766498616)));
  v53 = (((2 * ((v52 + STACK[0x52C0]) ^ 0xF27046A355CDF46ALL)) & 0x5126B8F72C35AB70) - ((v52 + STACK[0x52C0]) ^ 0xF27046A355CDF46ALL) + 0x576CA38469E52A47) ^ 0x1D94E4F3DDEFBD7ELL;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = __ROR8__(v53, 8);
  v56 = (((2 * (v55 + v54)) & 0x753004A8F01E0616) - (v55 + v54) + 0x4567FDAB87F0FCF4) ^ 0x7DAF4CC160F59483;
  v57 = v56 ^ __ROR8__(v54, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0xE580B17D8CC5E551;
  v59 = __ROR8__(v58, 8);
  v60 = v58 ^ __ROR8__(v57, 61);
  v61 = (((2 * (v59 + v60)) & 0x17473F3041FA3F7ELL) - (v59 + v60) - 0xBA39F9820FD1FC0) ^ 0x15FD9D3C0E57193ALL;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = __ROR8__(v61, 8);
  v64 = (((2 * (v63 + v62)) & 0xEB527FBD4917F804) - (v63 + v62) + 0xA56C0215B7403FDLL) ^ 0xD0368B2D58D6BC64;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ 0xFA35E2CDCB3E31C7;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ v1;
  v69 = STACK[0x50D0];
  v70 = *(STACK[0x5268] + (*STACK[0x51E8] & ((((STACK[0x5160] & 0xA8CC18C0) + (STACK[0x5260] ^ 0x54660C62)) & 0xFFFFFFF8) + 634793144)));
  v71 = __ROR8__((v70 + STACK[0x5288]) ^ 0xB88801D4E1C76353, 8);
  v72 = (v70 + STACK[0x5288]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v70, 61);
  v73 = (v71 + v72 + (STACK[0x50D0] ^ 0xBE7A9327329A0A6DLL) - ((2 * (v71 + v72)) & 0x7CF5264E65345128)) ^ 0x86B2224DD59F40E3;
  v74 = __ROR8__(v73, 8);
  LODWORD(STACK[0x5020]) = LODWORD(STACK[0x5348]) ^ (((__ROR8__(v68, 8) + (v68 ^ __ROR8__(v67, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5328]);
  v75 = v73 ^ __ROR8__(v72, 61);
  v76 = __ROR8__((v74 + v75) ^ 0xE580B17D8CC5E551, 8);
  v77 = (v74 + v75) ^ 0xE580B17D8CC5E551 ^ __ROR8__(v75, 61);
  v78 = (((v76 + v77) | 0x4DDE058F011A2A04) - ((v76 + v77) | 0xB221FA70FEE5D5FBLL) - 0x4DDE058F011A2A05) ^ 0xAC7FF8D4D04FD37ELL;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ 0xDA604B0C03A2BF99;
  v81 = __ROR8__(v80, 8);
  v82 = v80 ^ __ROR8__(v79, 61);
  v83 = (((v81 + v82) | 0x814922DA3EAFCC3CLL) - ((v81 + v82) | 0x7EB6DD25C15033C3) + 0x7EB6DD25C15033C3) ^ 0x7B7CC017F591FDFBLL;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ v1;
  v86 = __ROR8__(v85, 8) + (v85 ^ __ROR8__(v84, 61));
  LODWORD(STACK[0x54B0]) = v0 ^ ((((v86 | 0xCE3F7781580AC671) - (v86 | 0x31C0887EA7F5398ELL) + 0x31C0887EA7F5398ELL) ^ 0x3A4C7CB0F67AB30ALL) >> STACK[0x5358]) ^ 0x7F;
  v87 = *(STACK[0x57D8] + 8 * v69);
  LODWORD(STACK[0x52F0]) = 111;
  LODWORD(STACK[0x5220]) = 189;
  STACK[0x52F8] = 56;
  LODWORD(STACK[0x52A8]) = 238;
  LODWORD(STACK[0x5338]) = 57;
  return v87();
}

uint64_t sub_100326664()
{
  STACK[0xC168] = v0 + STACK[0x4D58];
  v2 = STACK[0x57D8];
  STACK[0x6360] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x4B8A ^ (v1 - 1469425022) & 0x5795FF75)))();
}

uint64_t sub_100326764(uint64_t a1, int a2)
{
  v5 = (LODWORD(STACK[0xD5A4]) + v2);
  v6 = *(v4 + 2880);
  v7 = *(*STACK[0x51F0] + (((v3 ^ 0x39CF) * a2 - 103647775 + ((v6 + v5) & 0xB2E35830 | 0x4D1CA7CD) + ((v6 + v5) & 0x4D1CA7C8 | 0xB2E35832)) & *STACK[0x51E8] & 0xFFFFFFF8));
  v8 = __ROR8__((v6 + v5) & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = __ROR8__((v7 + v8) ^ 0xF41651499F5E3C67, 8);
  v10 = (v7 + v8) ^ 0xF41651499F5E3C67 ^ __ROR8__(v7, 61);
  v11 = (((2 * (v9 + v10)) | 0x24B101F085FBB326) - (v9 + v10) + 0x6DA77F07BD02266DLL) ^ 0x876AC2167E0DB3DALL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (0xF5B27A6069F9E34CLL - ((v13 + v12) | 0xF5B27A6069F9E34CLL) + ((v13 + v12) | 0xA4D859F96061CB3)) ^ 0x28385158AE332528;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((2 * (v16 + v15)) & 0x962541E8441169ECLL) - (v16 + v15) + 0x34ED5F0BDDF74B09) ^ 0xD14245B8F34A77D4;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xC7DDC9F6CC45B721;
  v20 = __ROR8__(v19, 8);
  v21 = v19 ^ __ROR8__(v18, 61);
  v22 = (((2 * (v20 + v21)) & 0x3AAE5FBE27FEE8E4) - (v20 + v21) - 0x1D572FDF13FF7473) ^ 0x4A8EF085B5D251F5;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (v24 + v23 - ((2 * (v24 + v23)) & 0x95234227F868F508) + 0x4A91A113FC347A84) ^ 0x151C4D2D5FAC709FLL;
  LOBYTE(v23) = (((__ROR8__(v25, 8) + (v25 ^ __ROR8__(v23, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * ((v6 + v5) & 7))) ^ *(v6 + v5);
  v26 = (v6 + (v5 + 1));
  *(v4 + 2976) = v26;
  *(v4 + 2991) = *v26;
  return (*(STACK[0x57D8] + 8 * ((38 * ((((v23 ^ 0xD0) - 56) ^ ((v23 ^ 0xD9) - 49) ^ ((v23 ^ 9) + 31)) == 105)) ^ v3)))();
}

uint64_t sub_100326AC4()
{
  v1 = STACK[0xE358];
  v2 = LODWORD(STACK[0xE364]);
  v3 = LODWORD(STACK[0xE368]);
  v4 = LOBYTE(STACK[0xE37B]);
  v5 = LODWORD(STACK[0xE37C]);
  v6 = LODWORD(STACK[0xE380]);
  v7 = LODWORD(STACK[0xE394]);
  LODWORD(STACK[0x57C0]) = STACK[0xE3B8];
  return (*(STACK[0x57D8] + 8 * v0))(v1, v3, v2, v7, v5, v4, v6);
}

uint64_t sub_100326CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x5670] = *(v9 + v7 - 8);
  v23 = (v11 - 1472) | v15;
  v24.i64[0] = v9 + v7 - 3;
  v24.i64[1] = v10 + v7 + v23;
  *&STACK[0x5660] = v24;
  v25.i64[0] = v9 + v7 - 1;
  v25.i64[1] = v9 + v7 - 2;
  v26.i64[0] = v9 + v7 - 5;
  v26.i64[1] = v9 + v7 - 6;
  v27.i64[0] = v9 + v7 - 7;
  v27.i64[1] = v9 + v7 - 8;
  v28.i64[0] = a4 + v7;
  v28.i64[1] = a3 + v7;
  v29 = vandq_s8(v27, v18);
  v30 = vandq_s8(v26, v18);
  v31 = vandq_s8(v25, v18);
  v32 = vandq_s8(v24, v18);
  v33.i64[0] = a2 + v7;
  v33.i64[1] = a1 + v7;
  v34 = vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL);
  v35 = vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL);
  v36 = vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL);
  v37 = vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL);
  v38 = v22;
  v39 = v20;
  v40 = v21;
  v41 = v19;
  v42 = vaddq_s64(vsubq_s64(v37, vandq_s8(vaddq_s64(vaddq_s64(v37, v37), *&STACK[0x55E0]), *&STACK[0x55D0])), *&STACK[0x55C0]);
  v43 = vaddq_s64(vsubq_s64(v36, vandq_s8(vaddq_s64(vaddq_s64(v36, v36), *&STACK[0x55E0]), *&STACK[0x55D0])), *&STACK[0x55C0]);
  v44 = vaddq_s64(vsubq_s64(v35, vandq_s8(vaddq_s64(vaddq_s64(v35, v35), *&STACK[0x55E0]), *&STACK[0x55D0])), *&STACK[0x55C0]);
  v45 = vaddq_s64(vsubq_s64(v34, vandq_s8(vaddq_s64(vaddq_s64(v34, v34), *&STACK[0x55E0]), *&STACK[0x55D0])), *&STACK[0x55C0]);
  v46 = veorq_s8(v45, *&STACK[0x55B0]);
  v47 = veorq_s8(v44, *&STACK[0x55B0]);
  v48 = veorq_s8(v43, *&STACK[0x55B0]);
  v49 = veorq_s8(v42, *&STACK[0x55B0]);
  v50 = veorq_s8(v42, *&STACK[0x55A0]);
  v51 = veorq_s8(v43, *&STACK[0x55A0]);
  v52 = veorq_s8(v44, *&STACK[0x55A0]);
  v53 = veorq_s8(v45, *&STACK[0x55A0]);
  v54 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v50), *&STACK[0x5650]);
  v55 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v51), *&STACK[0x5650]);
  v56 = vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL);
  v57 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v52), *&STACK[0x5650]);
  v58 = vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL);
  v59 = vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL);
  v60 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v61 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v53), *&STACK[0x5650]);
  v62 = veorq_s8(v61, v60);
  v63 = veorq_s8(v57, v59);
  v64 = veorq_s8(v55, v58);
  v65 = veorq_s8(v54, v56);
  v66 = vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL);
  v67 = vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL);
  v68 = vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v65);
  v70 = veorq_s8(vaddq_s64(v66, v62), *&STACK[0x5640]);
  v71 = veorq_s8(vaddq_s64(v67, v63), *&STACK[0x5640]);
  v72 = veorq_s8(vaddq_s64(v68, v64), *&STACK[0x5640]);
  v73 = veorq_s8(v69, *&STACK[0x5640]);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v73, v73), *&STACK[0x5630]), v73), *&STACK[0x5620]), *&STACK[0x5610]);
  v75 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v72, v72), *&STACK[0x5630]), v72), *&STACK[0x5620]), *&STACK[0x5610]);
  v76 = vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL);
  v77 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v71, v71), *&STACK[0x5630]), v71), *&STACK[0x5620]), *&STACK[0x5610]);
  v78 = vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL);
  v79 = vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL);
  v80 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v70, v70), *&STACK[0x5630]), v70), *&STACK[0x5620]), *&STACK[0x5610]);
  v82 = veorq_s8(v81, v80);
  v83 = veorq_s8(v77, v79);
  v84 = veorq_s8(v75, v78);
  v85 = veorq_s8(v74, v76);
  v86 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v87 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v88 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v85);
  v90 = veorq_s8(vaddq_s64(v86, v82), *&STACK[0x46A0]);
  v91 = veorq_s8(vaddq_s64(v87, v83), *&STACK[0x46A0]);
  v92 = veorq_s8(vaddq_s64(v88, v84), *&STACK[0x46A0]);
  v93 = vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL);
  v94 = vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL);
  v95 = veorq_s8(v89, *&STACK[0x46A0]);
  v96 = vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL);
  v97 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v98 = veorq_s8(v92, v96);
  v99 = veorq_s8(v91, v94);
  v100 = veorq_s8(v90, v93);
  v101 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v103 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v100);
  v105 = veorq_s8(vaddq_s64(v101, v97), *&STACK[0x5600]);
  v106 = veorq_s8(vaddq_s64(v102, v98), *&STACK[0x5600]);
  v107 = veorq_s8(vaddq_s64(v103, v99), *&STACK[0x5600]);
  v108 = vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL);
  v109 = vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL);
  v110 = vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL);
  v111 = veorq_s8(v104, *&STACK[0x5600]);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v113 = veorq_s8(v107, v110);
  v114 = veorq_s8(v106, v109);
  v115 = veorq_s8(v105, v108);
  v116 = vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL);
  v117 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v115);
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v114);
  v120 = vaddq_s64(v117, v113);
  v121 = vaddq_s64(v116, v112);
  v122 = vsubq_s64(vorrq_s8(vaddq_s64(v120, v120), *&STACK[0x55F0]), v120);
  v123 = vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v119, v119), *&STACK[0x55F0]), v119), v41), *&STACK[0x5720]);
  v125 = vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL);
  v127 = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v118, v118), *&STACK[0x55F0]), v118), v41), *&STACK[0x5720]);
  v129 = veorq_s8(v128, v127);
  v130 = veorq_s8(v124, v126);
  v131 = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  v132 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v133 = vandq_s8(v33, v18);
  v134 = vandq_s8(v28, v18);
  v135 = vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL);
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), *&STACK[0x45D0]);
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), *&STACK[0x45D0]);
  v138 = veorq_s8(v137, v38);
  v139 = vaddq_s64(v132, v130);
  v140 = veorq_s8(v136, v38);
  v141 = veorq_s8(v136, v17);
  v142 = veorq_s8(v137, v17);
  v143 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v144 = vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL);
  v145 = vaddq_s64(v143, v141);
  v146 = vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL);
  v147 = vaddq_s64(v144, v142);
  v148 = vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL);
  v149 = vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL);
  v150 = veorq_s8(v145, *&STACK[0x4690]);
  v151 = veorq_s8(v147, *&STACK[0x4690]);
  v152 = vaddq_s64(v131, v129);
  v153 = veorq_s8(v151, v148);
  v154 = veorq_s8(v150, v146);
  v155 = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v156 = veorq_s8(v152, *&STACK[0x5730]);
  v157 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v154);
  v158 = vaddq_s64(v155, v153);
  v159 = veorq_s8(v158, v39);
  v160 = veorq_s8(v139, *&STACK[0x5730]);
  v161 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v158, *&STACK[0x57B0]), v40), v159), vandq_s8(v159, *&STACK[0x57B0]));
  v162 = veorq_s8(v157, v39);
  v163 = veorq_s8(v160, v135);
  v164 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v157, *&STACK[0x57B0]), v40), v162), vandq_s8(v162, *&STACK[0x57B0]));
  v165 = vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL);
  v166 = vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL);
  v167 = vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL);
  v168 = veorq_s8(v164, *&STACK[0x5770]);
  v169 = veorq_s8(v161, *&STACK[0x5770]);
  v170 = veorq_s8(v169, v166);
  v171 = veorq_s8(v168, v165);
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), veorq_s8(v156, v149));
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170), *&STACK[0x46D0]);
  v174 = vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL);
  v175 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v171), *&STACK[0x46D0]);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v177 = veorq_s8(v173, v174);
  v178 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176), *&STACK[0x5760]);
  v179 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v177), *&STACK[0x5760]);
  v180 = vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL);
  v181 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v182 = veorq_s8(v178, v180);
  v183 = vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL);
  v184 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v182);
  v185 = vaddq_s64(v183, v181);
  v186 = vaddq_s64(v167, v163);
  v187 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v184, *&STACK[0x5780]), vorrq_s8(v184, *&STACK[0x57C0])), *&STACK[0x57C0]), *&STACK[0x5750]);
  v188 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v185, *&STACK[0x5780]), vorrq_s8(v185, *&STACK[0x57C0])), *&STACK[0x57C0]), *&STACK[0x5750]);
  v189 = veorq_s8(v186, *&STACK[0x56F0]);
  v190 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v191 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v192 = vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL);
  v193 = veorq_s8(v172, *&STACK[0x56F0]);
  v194 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v191);
  v195 = vsubq_s64(vorrq_s8(vaddq_s64(v193, v193), *&STACK[0x56E0]), v193);
  v196 = vaddq_s64(v192, v190);
  v197 = vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL);
  v198 = vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL);
  v199 = veorq_s8(v196, *&STACK[0x4BB0]);
  v200 = veorq_s8(v194, *&STACK[0x4BB0]);
  v201 = vsubq_s64(vorrq_s8(vaddq_s64(v189, v189), *&STACK[0x56E0]), v189);
  v189.i64[0] = a5 + v7;
  v202 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), veorq_s8(v199, v197));
  v197.i64[0] = a7 + v7;
  v197.i64[1] = a6 + v7;
  v189.i64[1] = v8 + v7 + v23;
  v203 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), veorq_s8(v200, v198));
  v204 = vsubq_s64(vandq_s8(vaddq_s64(v202, v202), *&STACK[0x5740]), v202);
  v205 = vdupq_n_s64(v16);
  v206 = veorq_s8(vaddq_s64(v122, v41), *&STACK[0x5720]);
  v207 = veorq_s8(v206, v125);
  v208 = vaddq_s64(v201, *&STACK[0x5710]);
  v209 = vshlq_u64(veorq_s8(vaddq_s64(v204, *&STACK[0x5790]), *&STACK[0x57A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v205)));
  v210 = vandq_s8(v197, v18);
  v211 = vandq_s8(v189, v18);
  v273.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v195, *&STACK[0x5710]), *&STACK[0x5700]), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v205))), vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v203, v203), *&STACK[0x5740]), v203), *&STACK[0x5790]), *&STACK[0x57A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), v205))));
  v273.val[2] = veorq_s8(vshlq_u64(veorq_s8(v208, *&STACK[0x5700]), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v205))), v209);
  v212 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL), *&STACK[0x45D0]);
  v213 = veorq_s8(v212, v38);
  v214 = vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL);
  v215 = vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL);
  v216 = veorq_s8(v212, v17);
  v217 = veorq_s8(vaddq_s64(v214, v216), *&STACK[0x4690]);
  v218 = veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL));
  v219 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v218);
  v220 = veorq_s8(v219, v39);
  v221 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL), v207), *&STACK[0x5730]);
  v222 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v219, *&STACK[0x57B0]), v40), v220), vandq_s8(v220, *&STACK[0x57B0])), *&STACK[0x5770]);
  v223 = veorq_s8(v221, v215);
  v224 = veorq_s8(v222, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL));
  v225 = vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL);
  v226 = vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL);
  v227 = veorq_s8(vaddq_s64(v225, v224), *&STACK[0x46D0]);
  v228 = veorq_s8(v227, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL));
  v229 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL), v228), *&STACK[0x5760]);
  v230 = veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL));
  v231 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v230);
  v232 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v231, *&STACK[0x5780]), vorrq_s8(v231, *&STACK[0x57C0])), *&STACK[0x57C0]), *&STACK[0x5750]);
  v233 = veorq_s8(vaddq_s64(v226, v223), *&STACK[0x56F0]);
  v234 = veorq_s8(v232, vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL));
  v235 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), v234), *&STACK[0x4BB0]);
  v236 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL), veorq_s8(v235, vsraq_n_u64(vshlq_n_s64(v234, 3uLL), v234, 0x3DuLL)));
  v237 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), *&STACK[0x45D0]);
  v273.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v233, v233), *&STACK[0x56E0]), v233), *&STACK[0x5710]), *&STACK[0x5700]), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), v205))), vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v236, v236), *&STACK[0x5740]), v236), *&STACK[0x5790]), *&STACK[0x57A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v197, 3uLL), v205))));
  v238 = veorq_s8(v237, v38);
  v239 = veorq_s8(v237, v17);
  v240 = vsraq_n_u64(vshlq_n_s64(v238, 0x38uLL), v238, 8uLL);
  v241 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v121, v121), *&STACK[0x55F0]), v121), v41);
  v242 = veorq_s8(vaddq_s64(v240, v239), *&STACK[0x4690]);
  v243 = veorq_s8(v242, vsraq_n_u64(vshlq_n_s64(v239, 3uLL), v239, 0x3DuLL));
  v244 = veorq_s8(v241, *&STACK[0x5720]);
  v245 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL), v243);
  v246 = veorq_s8(v245, v39);
  v247 = veorq_s8(v244, v123);
  v248 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v245, *&STACK[0x57B0]), v40), v246), vandq_s8(v246, *&STACK[0x57B0]));
  v249 = vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL);
  v250 = vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL);
  v251 = vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL);
  v252 = veorq_s8(v248, *&STACK[0x5770]);
  v253 = veorq_s8(v252, v250);
  v254 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL), v253), *&STACK[0x46D0]);
  v255 = veorq_s8(vaddq_s64(v249, v247), *&STACK[0x5730]);
  v256 = veorq_s8(v254, vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL));
  v257 = vsraq_n_u64(vshlq_n_s64(v254, 0x38uLL), v254, 8uLL);
  v258 = veorq_s8(v255, v251);
  v259 = vaddq_s64(v257, v256);
  v260 = vsraq_n_u64(vshlq_n_s64(v256, 3uLL), v256, 0x3DuLL);
  v261 = veorq_s8(v259, *&STACK[0x5760]);
  v262 = vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL);
  v263 = veorq_s8(v261, v260);
  v264 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261, 0x38uLL), v261, 8uLL), v263);
  v265 = vsraq_n_u64(vshlq_n_s64(v263, 3uLL), v263, 0x3DuLL);
  v266 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v264, *&STACK[0x5780]), vorrq_s8(v264, *&STACK[0x57C0])), *&STACK[0x57C0]), *&STACK[0x5750]);
  v267 = vaddq_s64(v262, v258);
  v268 = veorq_s8(v266, v265);
  v269 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL), v268), *&STACK[0x4BB0]);
  v270 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v269, 0x38uLL), v269, 8uLL), veorq_s8(v269, vsraq_n_u64(vshlq_n_s64(v268, 3uLL), v268, 0x3DuLL)));
  v271 = veorq_s8(v267, *&STACK[0x56F0]);
  v273.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v271, v271), *&STACK[0x56E0]), v271), *&STACK[0x5710]), *&STACK[0x5700]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5660], 3uLL), v205))), vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v270, v270), *&STACK[0x5740]), v270), *&STACK[0x5790]), *&STACK[0x57A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v189, 3uLL), v205))));
  *(a1 + v7) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v273, v14[26])), STACK[0x5670]);
  return (*(STACK[0x57D8] + 8 * (((v12 == 0) * v13) ^ v11)))(a1 - 8, a2 - 8, a3 - 8, a4 - 8, a5 - 8, a6 - 8, a7 - 8);
}

void *sub_1003277F0()
{
  STACK[0x7430] = v1;
  LODWORD(STACK[0xBC84]) = STACK[0x903C];
  STACK[0xBF60] = 0;
  LODWORD(STACK[0x885C]) = -769884012;
  STACK[0xA1A0] = 0;
  return (*(STACK[0x57D8] + 8 * (((v0 + 1564341977) & 0xA2C2377F ^ 0x2077) + v0)))(&STACK[0xA1A0]);
}

uint64_t sub_1003278C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v17 = *(v12 + 8);
  v18 = STACK[0x5770];
  v19 = *(a7 + ((((v17 + STACK[0x5770]) & 0xFFFFFFF8) + v11) & a8));
  v20 = v9 >> ((v10 + 58) ^ 0xA3u);
  v21 = (11307 * (v10 ^ 0x3E4Bu)) ^ 0xB057743BD1A8ADEALL ^ (__ROR8__((v17 + STACK[0x5770]) & 0xFFFFFFFFFFFFFFF8, 8) + v19);
  v22 = __ROR8__(v21, 8);
  v23 = v21 ^ __ROR8__(v19, 61);
  v24 = (v22 + v23) ^ 0x8A47714CF38C4783;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((2 * (v26 + v25)) | 0xED3649B7D9F104F2) - (v26 + v25) - 0x769B24DBECF88279) ^ 0xD4F0C0A1F691AD09;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (((2 * (v29 + v28)) & 0xE4CAD27ADA67453ELL) - (v29 + v28) - 0x7265693D6D33A2A0) ^ 0x919981FA766A1C64;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v14;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (0x1D74A333EC519AFBLL - ((v34 + v33) | 0x1D74A333EC519AFBLL) + ((v34 + v33) | 0xE28B5CCC13AE6504)) ^ 0xB07AD4850B76B3A6;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ v8;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = ((((v39 + v38 - ((2 * (v39 + v38)) & 0xFB5F7AB443649E48) + 0x7DAFBD5A21B24F24) ^ 0xEC1130B2B62EF164) >> (8 * ((v17 + v18) & 7))) ^ *(v17 + v18)) + v20;
  v41 = v17 + 4 * STACK[0x5780];
  v42 = *(a7 + (((v41 & 0xFFFFFFF8 ^ 0xC9A541A) + 77992070 + ((2 * (v41 & 0xFFFFFFF8)) | 0xE6CB57CB)) & a8));
  v43 = (__ROR8__(v41 & 0xFFFFFFFFFFFFFFF8, 8) + v42) ^ v15;
  v44 = __ROR8__(v43, 8);
  v45 = v43 ^ __ROR8__(v42, 61);
  v46 = (v44 + v45) ^ 0x8A47714CF38C4783;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (v48 + v47 - ((2 * (v48 + v47)) & 0xE201A5766FF61902) - 0xEFF2D44C804F37FLL) ^ 0x536B36C12D9223F1;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ v16;
  v52 = __ROR8__(v51, 8);
  v53 = v51 ^ __ROR8__(v50, 61);
  v54 = (0x1A7DC3847439610CLL - ((v52 + v53) | 0x1A7DC3847439610CLL) + ((v52 + v53) | 0xE5823C7B8BC69EF3)) ^ 0x9888F6D1622AA6EELL;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = __ROR8__(v54, 8);
  v57 = __ROR8__((0xF419FFEF904040AELL - ((v56 + v55) | 0xF419FFEF904040AELL) + ((v56 + v55) | 0xBE600106FBFBF51)) ^ 0x59178859776769F3, 8);
  v58 = (0xF419FFEF904040AELL - ((v56 + v55) | 0xF419FFEF904040AELL) + ((v56 + v55) | 0xBE600106FBFBF51)) ^ 0x59178859776769F3 ^ __ROR8__(v55, 61);
  v59 = (v57 + v58) ^ v8;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = __ROR8__(v59, 8);
  *v41 = v40 ^ (((v61 + v60 - ((2 * (v61 + v60)) & 0x5DDAD40FE1ABFB7CLL) - 0x511295F80F2A0242) ^ 0x3F53E7EF674943FELL) >> (8 * (v41 & 7u)));
  v62 = *(v12 + 8) + v18;
  v63 = *(*STACK[0x51F0] + (((((v62 & 0xFFFFFFF8 ^ 0x4C44C94C) - ((2 * (v62 & 0xFFFFFFF8)) & 0x98899290 ^ 0x9889929A)) & 0xFFFFFFF8) + 1146127800) & *STACK[0x51E8]));
  v64 = (__ROR8__(v62 & 0xFFFFFFFFFFFFFFF8, 8) + v63) ^ v15;
  v65 = __ROR8__(v64, 8);
  v66 = v64 ^ __ROR8__(v63, 61);
  v67 = (((2 * (v65 + v66)) & 0xE9607052237DD5EELL) - (v65 + v66) - 0x74B0382911BEEAF8) ^ 0x108B69A1DCD528BLL;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ 0xA26BE47A1A692F70;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ v16;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ v14;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = __ROR8__(v73, 8);
  v76 = (v75 + v74 - ((2 * (v75 + v74)) & 0xDAABE63C599C8E44) + 0x6D55F31E2CCE4722) ^ 0x3FA47B5734169180;
  v77 = v76 ^ __ROR8__(v74, 61);
  v78 = __ROR8__(v76, 8);
  v79 = (v78 + v77 - ((2 * (v78 + v77)) & 0xCDADADAA78038EECLL) - 0x1929292AC3FE388ALL) ^ 0xEDF6A4BBCDF7FDD9;
  *v62 = HIDWORD(v40) ^ (((__ROR8__(v79, 8) + (v79 ^ __ROR8__(v77, 61))) ^ 0x91BE8DE8979CBE40) >> (8 * (v62 & 7u)));
  return (*(STACK[0x57D8] + 8 * (v10 ^ (25417 * (LODWORD(STACK[0x57A0]) + 1 == v13)))))();
}

uint64_t sub_1003280D0()
{
  v0 = STACK[0x51B8] + 8563;
  v1 = STACK[0x51B8] - 20747;
  v2 = STACK[0xB658] - 0x30BDFED8F32E6575;
  v3 = STACK[0x6250];
  v4 = STACK[0xE040];
  v5 = STACK[0x57D8];
  STACK[0x9D20] = *(STACK[0x57D8] + 8 * v1);
  return (*(v5 + 8 * (v0 ^ v1 ^ 0x59FC)))(&STACK[0xD760], v2, v3, v4);
}

uint64_t sub_100328300()
{
  v1 = STACK[0x9DF0];
  LODWORD(STACK[0x9E4C]) = STACK[0x9DC4];
  v2 = STACK[0x7B30];
  LODWORD(STACK[0xC454]) = STACK[0x6DD4];
  v3 = STACK[0x96F8];
  STACK[0x6240] = STACK[0x96F8];
  LODWORD(STACK[0x82A4]) = STACK[0x8814];
  STACK[0x7048] = STACK[0xCDA0];
  STACK[0xC020] = STACK[0x5888];
  LOBYTE(STACK[0x88CB]) = STACK[0xADC7];
  STACK[0xA370] = v1;
  STACK[0xAB10] = v2;
  STACK[0x9EB0] = 0x2369327399A66D95;
  if (v1)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = v4 || v3 == 0;
  return (*(STACK[0x57D8] + 8 * ((v6 * ((v0 ^ 0x4DE) - 5382)) ^ v0)))();
}

uint64_t sub_100328480@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X6>, uint64_t a8@<X7>, unsigned int a9@<W8>)
{
  v23 = v20 + a6 + a9;
  v24 = *(*a7 + ((*a2 & ((v23 & 0xFFFFFFF8) + 2050767130)) & 0xFFFFFFFFFFFFFFF8));
  v25 = ((v9 - 7584) | 0x4012u) ^ v11 ^ (__ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8) + v24);
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (v27 + v26 - (v13 & (2 * (v27 + v26))) + v14) ^ v15;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ a1;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ a3;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = ((v16 & (2 * (v34 + v33))) - (v34 + v33) + v17) ^ v18;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v35, 8);
  v38 = ((a5 & (2 * (v37 + v36))) - (v37 + v36) + a8) ^ v12;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0xD2F00CE620E5D3AELL;
  LOBYTE(v40) = (((__ROR8__(v40, 8) + (v40 ^ __ROR8__(v39, 61))) ^ v22) >> (8 * (v23 & 7u))) ^ *(v19 + a9);
  v41 = LODWORD(STACK[0x5420]) > a4;
  *v23 = v40;
  LODWORD(v23) = a9 + 1 + v21;
  LODWORD(v40) = v41 ^ (v23 < v21);
  v42 = v10 > v23;
  if (v40)
  {
    v42 = v41;
  }

  return (*(STACK[0x57D8] + 8 * ((974 * v42) ^ v9)))();
}

uint64_t sub_100328658()
{
  v2 = STACK[0x51B8];
  v3 = 0xF40260A271B5317BLL * (v0 - v1) + 0x7799BCEC28CDBD44;
  v4 = ((v3 ^ 0xECE73CC6FEB83F43) + 0x64817FD5298A7DF9) ^ v3 ^ ((v3 ^ 0xD51256CEAB6D832FLL) + 0x5D7415DD7C5FC195) ^ ((v3 ^ 0xF1950B1FCAF7FE43) + 0x79F3480C1DC5BCF9) ^ ((v3 ^ 0xBFF9DDFBB7EFFF6BLL) + 0x379F9EE860DDBDD1);
  STACK[0x82B8] = (((v4 ^ 0x97C79FDB9A431972) - 0x66BA35FE01E6C709) ^ ((v4 ^ 0x1DCAE3548ED4144) + 0xF5EFBEF2CB760C1) ^ ((v4 ^ 0xE1828D02FA63E572) - 0x10FF272761C63B09)) - 0x4A17775441C61235;
  return (*(STACK[0x57D8] + 8 * (v2 - 12739)))();
}

uint64_t sub_1003288BC@<X0>(uint64_t a1@<X8>)
{
  v5 = *(a1 + v1 + 16);
  v6 = v4 + v1;
  *(v6 + 24) = *(a1 + v1);
  *(v6 + 40) = v5;
  return (*(STACK[0x57D8] + 8 * (((v1 == 32) * (v2 ^ v3)) ^ v2)))();
}

uint64_t sub_100328918@<X0>(int a1@<W8>)
{
  STACK[0x5EA8] = STACK[0x6228];
  LODWORD(STACK[0xB75C]) = 1236578433;
  return (*(STACK[0x57D8] + 8 * (a1 + 2448)))();
}

uint64_t sub_100328958@<X0>(char a1@<W2>, char a2@<W4>, char a3@<W6>, char a4@<W7>, char a5@<W8>)
{
  *STACK[0x5780] = STACK[0x5560];
  v13 = STACK[0x53F8];
  v13[2737] = STACK[0x5550];
  v14 = STACK[0x5580];
  v15 = STACK[0x5580] ^ 0x7AEDA630;
  v13[2738] = STACK[0x5540];
  v13[2739] = v6;
  v13[2740] = a1;
  v13[2741] = a2;
  v13[2742] = v5;
  v13[2743] = a3;
  v13[2744] = v7;
  v13[2745] = a4;
  v13[2746] = v10;
  v13[2747] = v9;
  v13[2748] = v12;
  v13[2749] = v11;
  v13[2750] = v8;
  v16 = v13[11035];
  v17 = v13[11025];
  v18 = STACK[0x5650];
  STACK[0x56C0] = *(STACK[0x5650] + v13[11039]);
  v19 = v13[11027];
  STACK[0x5720] = *(STACK[0x5660] + v13[11026]);
  STACK[0x5780] = *(STACK[0x5670] + v17);
  STACK[0x56D0] = *(v18 + v19);
  v20 = STACK[0x5640];
  STACK[0x56F0] = *(STACK[0x5640] + v13[11036]);
  v21 = *(v20 + v13[11024]);
  v22 = *(v18 + v16);
  v23 = vdupq_n_s8(STACK[0x5750]);
  v24 = vdupq_n_s32(STACK[0x57A0]);
  v13[2751] = a5;
  return (*(STACK[0x57D8] + 8 * (v14 ^ 0x7AEDD208 ^ ((v14 < 0xF334EEF7) * (v15 + 11980)))))(STACK[0x5730], v22, v21, v23, v24, vdupq_n_s8(STACK[0x5710]), vnegq_s32(vdupq_n_s32(STACK[0x5790])), vdupq_n_s32(STACK[0x5740]));
}

uint64_t sub_100328B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = *(STACK[0x53F8] + (LODWORD(STACK[0x5210]) & ((((STACK[0x5150] & 0xA6ABF330) + (STACK[0x53E8] ^ 0xD355F99A)) & 0xFFFFFFF8) - 1494859904)));
  v10 = (v9 + STACK[0x5620]) ^ 0xB88801D4E1C76353;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0x38C8B16AE7056877;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((v14 + v13) | 0xC6C3AB09967A3271) - ((v14 + v13) | 0x393C54F66985CD8ELL) + 0x393C54F66985CD8ELL) ^ 0x23431A741ABFD720;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xE1A1FD5BD155F97ALL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xDA604B0C03A2BF99;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (v21 + v20 - ((2 * (v21 + v20)) & 0x2853273CC7FDFD10) + 0x1429939E63FEFE88) ^ 0xEE1C7153A8C0CF4FLL;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((2 * (v24 + v23)) | 0x56D9B822C2756688) - (v24 + v23) - 0x2B6CDC11613AB344) ^ 0xF99CD0F741DF60EALL;
  LODWORD(STACK[0x5378]) = LODWORD(STACK[0x57C0]) ^ (((__ROR8__(v25, 8) + (v25 ^ __ROR8__(v23, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x57B0]);
  v26 = ((a4 | 0x132AF214883843E8) - (a4 | 0xECD50DEB77C7BC17) - 0x132AF214883843E9) ^ 0x2BE2437E6F3D2B9FLL ^ v7;
  v27 = __ROR8__(((a4 | 0x132AF214883843E8) - (a4 | 0xECD50DEB77C7BC17) - 0x132AF214883843E9) ^ 0x2BE2437E6F3D2B9FLL, 8);
  v28 = (((2 * (v27 + v26)) & 0x5783AC131F03D3ELL) - (v27 + v26) - 0x2BC1D6098F81EA0) ^ 0x18C353E2EBC20431;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xE1A1FD5BD155F97ALL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0xDA604B0C03A2BF99;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xFA35E2CDCB3E31C7;
  v35 = __ROR8__(v34, 8);
  v36 = v34 ^ __ROR8__(v33, 61);
  v37 = (v35 + v36 - ((2 * (v35 + v36)) & 0xA510367F34993BE4) + 0x52881B3F9A4C9DF2) ^ 0x807817D9BAA94E5CLL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = *(STACK[0x56F0] + ((((STACK[0x53B0] & 0x6B68830) + (STACK[0x53B0] | 0x6B68837) + 1938141411) & STACK[0x5190]) & 0xFFFFFFFFFFFFFFF8));
  LODWORD(STACK[0x5460]) = LODWORD(STACK[0x56E0]) ^ (((((2 * (v39 + v38)) | 0x43527C11A8F13444) - (v39 + v38) + 0x5E56C1F72B8765DELL) ^ 0x55DA35397A08EF59) >> STACK[0x5670]);
  v41 = (((2 * (v40 + STACK[0x5440])) | 0xD74467FEB999062) - (v40 + STACK[0x5440]) + 0x7945DCC00A3337CFLL) ^ 0x3E3222EB140BAB62;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (((v43 + v42) | 0xFB61CE32C4992EA9) - ((v43 + v42) | 0x49E31CD3B66D156) + 0x49E31CD3B66D156) ^ 0xC3A97F58239C46DELL;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (((2 * (v46 + v45)) | 0xFDB470C08135DEE2) - (v46 + v45) - 0x7EDA3860409AEF71) ^ 0x9B5A891DCC5F0A20;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0xE1A1FD5BD155F97ALL;
  v50 = __ROR8__(v49, 8);
  v51 = v49 ^ __ROR8__(v48, 61);
  v52 = (v50 + v51) ^ 0xDA604B0C03A2BF99;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0xFA35E2CDCB3E31C7;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(STACK[0x52B0]) = LODWORD(STACK[0x5600]) ^ (((__ROR8__(v56, 8) + (v56 ^ __ROR8__(v55, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5450]);
  v57 = *(STACK[0x5250] + (v8 & ((STACK[0x5298] & 0x7C197C78) + (STACK[0x5298] | 0x7C197C78) - 31277920)));
  v58 = (((2 * (v57 + STACK[0x52C0])) | 0x64C7F3009A356A28) - (v57 + STACK[0x52C0]) - 0x3263F9804D1AB514) ^ 0x8AEBF854ACDDD647;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0x38C8B16AE7056877;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = __ROR8__(v60, 8);
  v63 = (((2 * (v62 + v61)) | 0xD28DAAA69E38604ALL) - (v62 + v61) - 0x6946D5534F1C3025) ^ 0x8CC6642EC3D9D574;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = __ROR8__(v63, 8);
  v66 = (((2 * (v65 + v64)) & 0x1376CA3FAD568E0ELL) - (v65 + v64) + 0x76449AE02954B8F8) ^ 0x97E567BBF8014182;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (v68 + v67 - ((2 * (v68 + v67)) & 0x69A5ACA1C72A0C72) + 0x34D2D650E3950639) ^ 0xEEB29D5CE037B9A0;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ 0xFA35E2CDCB3E31C7;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0xD2F00CE620E5D3AELL;
  v74 = (a6 - 5319) | 0x4008;
  v75 = *STACK[0x51E8];
  v76 = STACK[0x5268];
  v77 = *(STACK[0x5268] + (((STACK[0x5260] ^ 0x5D0646F4) + 490074660 + ((((v74 - 16480) | 0x2C0) ^ 0xBA0CAF19) & STACK[0x5160])) & v75));
  v78 = __ROR8__((v77 + STACK[0x5288]) ^ 0xB88801D4E1C76353, 8);
  v79 = (v77 + STACK[0x5288]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v77, 61);
  v80 = (((2 * (v78 + v79)) | 0xCCB0B5A7907AD82CLL) - (v78 + v79) + 0x19A7A52C37C293EALL) ^ 0xDE90EBB92F380461;
  v81 = __ROR8__(v80, 8);
  v82 = v80 ^ __ROR8__(v79, 61);
  v83 = (((v81 + v82) ^ 0x4AAB405FD021D040) - ((2 * ((v81 + v82) ^ 0x4AAB405FD021D040)) & 0x7E4DF599CC2F6888) - 0x40D9053319E84BBCLL) ^ 0x100D0BEEBAF38155;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ 0xE1A1FD5BD155F97ALL;
  v86 = __ROR8__(v85, 8);
  v87 = v85 ^ __ROR8__(v84, 61);
  v88 = (v86 + v87 - ((2 * (v86 + v87)) & 0xC15CAFAE6C761432) + 0x60AE57D7363B0A19) ^ 0xBACE1CDB3599B580;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0xFA35E2CDCB3E31C7;
  LODWORD(STACK[0x5020]) = LODWORD(STACK[0x5348]) ^ (((__ROR8__(v73, 8) + (v73 ^ __ROR8__(v72, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5328]);
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = (__ROR8__(v90, 8) + v91) ^ 0xD2F00CE620E5D3AELL;
  v93 = __ROR8__(v92, 8);
  v94 = __ROR8__(v91, 61);
  LODWORD(STACK[0x54B0]) = v6 ^ (((v93 + (v92 ^ v94) - ((2 * (v93 + (v92 ^ v94))) & 0x951E242B057C5D9CLL) - 0x3570EDEA7D41D132) ^ 0x3EFC19242CCE5BB5) >> STACK[0x5358]) ^ 0x7F;
  v95 = STACK[0x4FC0] + LODWORD(STACK[0x52E8]);
  LODWORD(v93) = *v95;
  LODWORD(v86) = v95 & 0xFFFFFFF8;
  v96 = 2 * (v95 & 0xFFFFFFF8);
  v97 = *(v76 + (((v95 & 0xFFFFFFF8 ^ 0x7EF23BA4) - 79037066 + (v96 & 0xFDE47740)) & v75 & 0xFFFFFFF8));
  v98 = __ROR8__(v95 & 0xFFFFFFFFFFFFFFF8, 8);
  v99 = (((v97 + v98) | 0x3381E7DBF7DDF2F9) - ((v97 + v98) | 0xCC7E182408220D06) - 0x3381E7DBF7DDF2FALL) ^ 0x8B09E60F161A91AALL;
  v100 = v99 ^ __ROR8__(v97, 61);
  v101 = (__ROR8__(v99, 8) + v100) ^ 0x38C8B16AE7056877;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = (__ROR8__(v101, 8) + v102) ^ 0xE580B17D8CC5E551;
  v104 = v103 ^ __ROR8__(v102, 61);
  v105 = (__ROR8__(v103, 8) + v104) ^ 0xE1A1FD5BD155F97ALL;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = __ROR8__(v105, 8);
  v108 = (((v107 + v106) | 0xD9AB8243D465275DLL) - ((v107 + v106) | 0x26547DBC2B9AD8A2) + 0x26547DBC2B9AD8A2) ^ 0x3CBC94FD7C798C4;
  v109 = v108 ^ __ROR8__(v106, 61);
  v110 = __ROR8__(v108, 8);
  v111 = (((2 * (v110 + v109)) & 0x6DE654468A46CDB0) - (v110 + v109) + 0x490CD5DCBADC9927) ^ 0xB339371171E2A8E0;
  v112 = v111 ^ __ROR8__(v109, 61);
  v113 = (__ROR8__(v111, 8) + v112) ^ 0xD2F00CE620E5D3AELL;
  v114 = v113 ^ __ROR8__(v112, 61);
  v115 = __ROR8__(v113, 8);
  LOBYTE(v95) = 8 * (v95 & 7);
  LODWORD(v114) = (((((v115 + v114) ^ 0xF70EC0705D22736FLL | 0xFB4FE5FC87829E4FLL) - ((v115 + v114) ^ 0xF70EC0705D22736FLL | 0x4B01A03787D61B0) + 0x4B01A03787D61B0) ^ 0xF8322EBD74D0985BLL) >> v95) ^ v93;
  v116 = v114 ^ ((v114 ^ 0xF) - 17) ^ ((v114 ^ 0x11111111) - 15) ^ 0x1E;
  v117 = *(*STACK[0x51F0] + ((((v86 ^ 0xA98651A7) + 599952066 + (v96 | 0xACF35CB1)) & v75) & 0xFFFFFFFFFFFFFFF8));
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) + 57;
  v118 = (v117 + v98) ^ 0xB88801D4E1C76353;
  v119 = v118 ^ __ROR8__(v117, 61);
  v120 = __ROR8__(v118, 8);
  v121 = (((2 * (v120 + v119)) | 0xF13DE6DCC8A4F51CLL) - (v120 + v119) - 0x789EF36E64527A8ELL) ^ 0x40564204835712F9;
  v122 = v121 ^ __ROR8__(v119, 61);
  v123 = __ROR8__(v121, 8);
  v124 = (((2 * ((v123 + v122) ^ 0x936D700BADB4EA16)) & 0x68337671B37B85F6) - ((v123 + v122) ^ 0x936D700BADB4EA16) + 0x4BE644C726423D04) ^ 0x3D0B85B107333243;
  v125 = v124 ^ __ROR8__(v122, 61);
  v126 = (__ROR8__(v124, 8) + v125) ^ 0xE1A1FD5BD155F97ALL;
  v127 = v126 ^ __ROR8__(v125, 61);
  v128 = __ROR8__(v126, 8);
  v129 = __ROR8__((((v128 + v127) | 0xE7C5255D284056AELL) - ((v128 + v127) | 0x183ADAA2D7BFA951) + 0x183ADAA2D7BFA951) ^ 0x3DA56E512BE2E937, 8);
  v130 = (((v128 + v127) | 0xE7C5255D284056AELL) - ((v128 + v127) | 0x183ADAA2D7BFA951) + 0x183ADAA2D7BFA951) ^ 0x3DA56E512BE2E937 ^ __ROR8__(v127, 61);
  v131 = (v129 + v130) ^ 0xFA35E2CDCB3E31C7;
  v132 = v131 ^ __ROR8__(v130, 61);
  v133 = (__ROR8__(v131, 8) + v132) ^ 0xD2F00CE620E5D3AELL;
  v134 = v133 ^ __ROR8__(v132, 61);
  v135 = __ROR8__(v133, 8);
  HIDWORD(v135) = (((((2 * (v135 + v134)) | 0x56B9154D28CE9D60) - (v135 + v134) - 0x2B5C8AA694674EB0) ^ 0xDF2F81973A173BCBLL) >> v95) ^ v93;
  LODWORD(v135) = 922746880 * v116 + 1912602624;
  LODWORD(v134) = (v135 >> 25) - ((2 * (v135 >> 25)) & 0x2C) + 22;
  LODWORD(v133) = LODWORD(STACK[0x53D0]) != 57;
  LODWORD(v134) = *(((((v134 & 0x80) != 0) | (2 * v134)) ^ 0x36u) + 123914 + STACK[0x57A0] + 3591);
  LOBYTE(v134) = ((v134 >> 2) & 6 | 0xA9) ^ v134;
  LODWORD(v134) = *((((((v134 ^ 0xB6) + 122) ^ ((v134 ^ 0xC0) + 16) ^ ((v134 ^ 0x77) - 71)) + 36) ^ 0xAu) + 160706 + STACK[0x57A0] + 2126);
  LODWORD(v134) = 70 - 85 * (((((v134 >> 1) | (v134 << 7)) ^ 0xFFFFFFC3) + 56) ^ ((((v134 >> 1) | (v134 << 7)) ^ 0xFFFFFF90) + 101) ^ ((((v134 >> 1) | (v134 << 7)) ^ 5) - 14));
  LODWORD(v93) = v134 & 0x69 ^ 0x48;
  LODWORD(STACK[0x52A8]) = v134 ^ (2 * ((v134 ^ 0x58) & (2 * ((v134 ^ 0x58) & (2 * ((v134 ^ 0x58) & (2 * ((v134 ^ 0x58) & (2 * (v134 & (2 * (v134 & (2 * v134) & 0x32 ^ v93)) ^ v93)) ^ v93)) ^ v93)) ^ v93)) ^ v93)) ^ 7;
  LODWORD(STACK[0x52F0]) = 111;
  LODWORD(STACK[0x5220]) = 61;
  v136 = *(STACK[0x57D8] + 8 * (v74 ^ ((4 * v133) | (32 * v133))));
  LODWORD(STACK[0x5338]) = 57;
  STACK[0x52F8] = 57;
  return v136(a1, LODWORD(STACK[0x52E0]), 2096171930, 244);
}

uint64_t sub_100329CDC()
{
  STACK[0xAA08] = 0x79296B4A625EDF44;
  STACK[0x77E0] = 0;
  LODWORD(STACK[0x8AAC]) = -769884012;
  STACK[0x5B80] = 0;
  LODWORD(STACK[0x8DE0]) = -769884012;
  STACK[0xAE68] = 0;
  LODWORD(STACK[0x6DA4]) = -769884012;
  STACK[0x93F0] = 0;
  LODWORD(STACK[0x5C7C]) = -769884012;
  STACK[0x95B0] = 0;
  LODWORD(STACK[0x6438]) = 0;
  STACK[0xAFC8] = 0xD38CBDD3ACAFF84ALL;
  LODWORD(STACK[0xAC68]) = -769884012;
  LODWORD(STACK[0x7AF0]) = -769884012;
  STACK[0xCCC8] = STACK[0x5DA0];
  STACK[0x9830] = &STACK[0xAA08];
  LODWORD(STACK[0x8724]) = -2038094691;
  return (*(STACK[0x57D8] + 8 * v0))();
}

void *sub_100329E14()
{
  v1 = *STACK[0x44F0];
  v2 = STACK[0x7ED8];
  v3 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0xB5E8] = v3;
  STACK[0x9F10] = v3;
  STACK[0xACE0] = (v3 + 32);
  STACK[0xB128] = (v3 + 48);
  STACK[0x7ED8] = (v0 + 11889) + v2 - 12479;
  STACK[0x58B0] = v1;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x7E95)))();
  STACK[0xCDA8] = 0;
  return (*(v4 + 8 * (v0 + 4448)))(&STACK[0xCDA8], v5);
}

uint64_t sub_100329ED0()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 21385)))();
  STACK[0x9810] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100329F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = a4[24];
  a4[24] = a4[27];
  a4[27] = v5;
  v6 = a4[25];
  a4[25] = a4[26];
  a4[26] = v6;
  v7 = a4[28];
  a4[28] = a4[31];
  a4[31] = v7;
  v8 = a4[29];
  a4[29] = a4[30];
  a4[30] = v8;
  v9 = a4[32];
  a4[32] = a4[35];
  a4[35] = v9;
  v10 = a4[33];
  a4[33] = a4[34];
  a4[34] = v10;
  v11 = a4[36];
  a4[36] = a4[39];
  a4[39] = v11;
  v12 = a4[37];
  a4[37] = a4[38];
  a4[38] = v12;
  v13 = a4[40];
  a4[40] = a4[43];
  a4[43] = v13;
  v14 = a4[41];
  a4[41] = a4[42];
  a4[42] = v14;
  v15 = a4[44];
  a4[44] = a4[47];
  a4[47] = v15;
  v16 = a4[45];
  a4[45] = a4[46];
  a4[46] = v16;
  v17 = a4[48];
  a4[48] = a4[51];
  a4[51] = v17;
  v18 = a4[49];
  a4[49] = a4[50];
  a4[50] = v18;
  v19 = a4[52];
  a4[52] = a4[55];
  a4[55] = v19;
  v20 = a4[53];
  a4[53] = a4[54];
  a4[54] = v20;
  v21 = a4[56];
  a4[56] = a4[59];
  a4[59] = v21;
  v22 = a4[57];
  a4[57] = a4[58];
  a4[58] = v22;
  v23 = a4[60];
  a4[60] = a4[63];
  a4[63] = v23;
  v24 = a4[61];
  a4[61] = a4[62];
  a4[62] = v24;
  v25 = a4[64];
  a4[64] = a4[67];
  a4[67] = v25;
  v26 = a4[65];
  a4[65] = a4[66];
  a4[66] = v26;
  v27 = a4[68];
  a4[68] = a4[71];
  a4[71] = v27;
  v28 = a4[69];
  a4[69] = a4[70];
  a4[70] = v28;
  v29 = a4[72];
  a4[72] = a4[75];
  a4[75] = v29;
  v30 = a4[73];
  a4[73] = a4[74];
  a4[74] = v30;
  v31 = a4[76];
  a4[76] = a4[79];
  a4[79] = v31;
  v32 = a4[77];
  a4[77] = a4[78];
  a4[78] = v32;
  v33 = a4[80];
  a4[80] = a4[83];
  a4[83] = v33;
  v34 = a4[81];
  a4[81] = a4[82];
  a4[82] = v34;
  v35 = a4[84];
  a4[84] = a4[87];
  a4[87] = v35;
  v36 = a4[85];
  a4[85] = a4[86];
  a4[86] = v36;
  v37 = STACK[0x57D8];
  STACK[0x8C70] = *(STACK[0x57D8] + 8 * v4);
  return (*(v37 + 8 * (((v4 + 23785) ^ 0x1986) + v4)))(a1, a2, a3, 2625273121);
}

uint64_t sub_10032A1D0(unint64_t a1, unint64_t a2)
{
  v4 = *(STACK[0x57D8] + 8 * ((((v2 ^ 0x5AD3AC49uLL) < 8) * (((v3 + 1860180458) & 0x911FFFBE) - 29466)) | v3));
  STACK[0x5740] = a1;
  STACK[0x5730] = a2;
  return v4();
}

uint64_t sub_10032A330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (v8 - 2106881000) & 0x7D940FDF;
  v11 = *(a8 + 4) - 1172467032 + 129 * (v10 ^ 0x70B);
  v13 = v11 + 3251;
  v12 = v11 + 3251 < 0;
  v14 = -3251 - v11;
  if (!v12)
  {
    v14 = v13;
  }

  LODWORD(STACK[0xAA64]) = v14;
  v15 = *(a2 + 4) + v9;
  if (v15 < 0)
  {
    v15 = -v15;
  }

  LODWORD(STACK[0xC8D4]) = v15;
  v16 = STACK[0x57D8];
  STACK[0xB738] = *(STACK[0x57D8] + 8 * v10);
  return (*(v16 + 8 * (v10 + 11735)))();
}

uint64_t sub_10032A3C4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if ((v5 + 1) <= 2)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v5 - 2 - 3 * ((((v5 - 2) * a4) >> 32) >> 1);
  }

  return (*(STACK[0x57D8] + 8 * (((4 * (v6 != 0)) | (8 * (v6 != 0))) ^ v4)))();
}

uint64_t sub_10032A514()
{
  v1 = STACK[0x51B8];
  v2 = STACK[0xC628];
  v3 = 1534937323 * ((2 * ((v0 - 240) & 0x100333C030E197D8) - (v0 - 240) + 0x6FFCCC3FCF1E6825) ^ 0xA28444FD09F09362);
  LODWORD(STACK[0x1D4C8]) = STACK[0x51B8] - 1292921496 - 1534937323 * ((2 * ((v0 - 240) & 0x30E197D8) - (v0 - 240) - 820090843) ^ 0x9F09362) - 2875;
  LODWORD(STACK[0x1D4D4]) = (v1 - 1292921496) ^ (1534937323 * ((2 * ((v0 - 240) & 0x30E197D8) - (v0 - 240) - 820090843) ^ 0x9F09362));
  LODWORD(STACK[0x1D4CC]) = 1534937323 * ((2 * ((v0 - 240) & 0x30E197D8) - (v0 - 240) - 820090843) ^ 0x9F09362) + 1451493860 + v1;
  STACK[0x1D4C0] = v3;
  LODWORD(STACK[0x1D4E0]) = 1534937323 * ((2 * ((v0 - 240) & 0x30E197D8) - (v0 - 240) - 820090843) ^ 0x9F09362) + v1 - 1292921496 + 22;
  LODWORD(STACK[0x1D4D0]) = 1534937323 * ((2 * ((v0 - 240) & 0x30E197D8) - (v0 - 240) - 820090843) ^ 0x9F09362);
  STACK[0x1D4D8] = v2 + v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x2462)))(v0 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4E4])))(v5);
}

uint64_t sub_10032A6D8()
{
  v1 = v0 - 6727;
  v2 = *(STACK[0x57D8] + 8 * (v1 ^ 0x5445 ^ (31 * (v1 ^ 0xF8B))));
  STACK[0xCB60] = *(STACK[0x57D8] + 8 * v1);
  return v2();
}

uint64_t sub_10032A7D4()
{
  v0 = STACK[0x51B8];
  v1 = LODWORD(STACK[0xA4D4]) - ((2 * LODWORD(STACK[0xA4D4])) & 0xFFFFC0CE) + 24679;
  v2 = STACK[0x7180];
  v3 = ((2 * LODWORD(STACK[0xCFA0])) & 0x6D77EBDC) + (LODWORD(STACK[0xCFA0]) ^ 0xB6BBF5EE) + 1229195794;
  *(v2 + v3) = BYTE1(v1) ^ 0x60;
  *(v2 + v3 + 1) = v1 ^ 0x67;
  return (*(STACK[0x57D8] + 8 * (v0 - 7521)))();
}

uint64_t sub_10032A998()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  STACK[0xC510] = 0;
  return (*(v1 + 8 * (v0 - 18163)))(v2);
}

uint64_t sub_10032A9D4(uint64_t a1, int a2)
{
  v7 = *(STACK[0x57C0] + ((((v2 + 408167418) & 0xE7ABFFF7) - 23814) * v6 + 8698028) % 0x16B8);
  v8 = (((v7 ^ 0xDE29988E) + 567699314) ^ ((v7 ^ 0xD95BCE6F) + 648294801) ^ ((v7 ^ 0x7725626) - 124933670)) * a2 + 37545386;
  v9 = *(v3 + 4 * (v8 - (((v8 * v5) >> 32) >> 12) * v4));
  v10 = (v9 ^ 0x684FB68A) >> (v7 & 0x10) >> (v7 & 0x10 ^ 0x10);
  v11 = *(STACK[0x57C0] + 4843 * v10 + 6213569 - 5816 * (((11815591 * (4843 * v10 + 6213569)) >> 32) >> 4)) << 8;
  v12 = *(STACK[0x57C0] + 4843 * (BYTE1(v9) ^ 0xB6) + 6213569 - 5816 * (((11815591 * (4843 * (BYTE1(v9) ^ 0xB6u) + 6213569)) >> 32) >> 4));
  v13 = (((v11 ^ 0xFF1805) & ((*(STACK[0x57C0] + (4843 * (((HIBYTE(v9) ^ 0x65206B) + 151440009) ^ ((HIBYTE(v9) ^ 0xDBE9517D) - 762659937) ^ ((HIBYTE(v9) ^ 0xDB8C717E) - 756048994)) + 1529391421) % 0x16B8) << 16) ^ 0x119C05) | v11 & 0x6300) ^ 0xEE22C9) & (v12 ^ 0xFFFF2B);
  v14 = *(STACK[0x57C0] + (4843 * (((v9 ^ 0xEC6B7E1B) + 711957172) ^ ((v9 ^ 0xC1DA3FFE) + 132045655) ^ ((v9 ^ 0x2DB1416F) - 340417080)) - 506008160) % 0x16B8);
  *(v3 + 4 * (6157 * v6 + 9469466 - ((((6157 * v6 + 9469466) * v5) >> 32) >> 12) * v4)) = ((((v13 ^ v12 & 0x33333333) << 8) ^ 0x40848021) & (v14 ^ 0xFFFFFF64) | v14 & 0xDE) ^ 0x1036F96D;
  return (*(STACK[0x57D8] + 8 * ((9230 * (v6 == 255)) ^ v2)))();
}

uint64_t sub_10032AE80(uint64_t a1, int a2, uint64_t a3, unsigned int a4, int a5)
{
  LODWORD(STACK[0x5440]) = LODWORD(STACK[0x5138]) ^ LODWORD(STACK[0x5740]);
  v8 = LODWORD(STACK[0x5780]) ^ LODWORD(STACK[0x5140]) ^ (LODWORD(STACK[0x4F70]) - LODWORD(STACK[0x4F98]));
  LODWORD(STACK[0x4FB0]) ^= LODWORD(STACK[0x5158]) ^ a5;
  LODWORD(STACK[0x5158]) = v8 + LODWORD(STACK[0x4F68]);
  LODWORD(STACK[0x4F98]) = LODWORD(STACK[0x5008]) + LODWORD(STACK[0x4F60]) + LODWORD(STACK[0x4F50]) + 2108308074;
  LODWORD(STACK[0x5140]) = LODWORD(STACK[0x5730]) ^ LODWORD(STACK[0x4F58]) ^ v6 ^ 0x3A1C6CF5;
  v9 = v5 - 0x34DE769589026576 + ((v5 - 0x34DE769589026576) >> 25) + ((v5 - 0x34DE769589026576 + ((v5 - 0x34DE769589026576) >> 25)) >> 8);
  v10 = v9 - (v9 >> 8);
  v11 = v10 - 0x4040C6609ECBF635 - ((v10 - 0x4040C6609ECBF635) >> 25) - ((v10 - 0x4040C6609ECBF635 - ((v10 - 0x4040C6609ECBF635) >> 25)) >> 8);
  v12 = v11 + (v11 >> 2) - 0x36B1108E5B00ADA0 + ((v11 + (v11 >> 2) - 0x36B1108E5B00ADA0) >> 30) - ((v11 + (v11 >> 2) - 0x36B1108E5B00ADA0 + ((v11 + (v11 >> 2) - 0x36B1108E5B00ADA0) >> 30)) >> 12);
  v13 = v12 - (v12 >> 1);
  v14 = (v13 ^ 0xB25FB59D26997D96) - ((v13 ^ 0xB25FB59D26997D96) >> 31) - (((v13 ^ 0xB25FB59D26997D96) - ((v13 ^ 0xB25FB59D26997D96) >> 31)) >> 8);
  v15 = v14 - (v14 >> 7);
  v16 = (v15 >> 2) & 0x3EF7FEED ^ v15;
  v17 = v15 - 0x19DC051D01D69267 + ((v15 - 0x19DC051D01D69267) >> 29) - ((v15 - 0x19DC051D01D69267 + ((v15 - 0x19DC051D01D69267) >> 29)) >> 14);
  v18 = ((v17 + (v17 >> 4)) ^ 0x3A322E7CCE6CFF14) - (((v17 + (v17 >> 4)) ^ 0x3A322E7CCE6CFF14) >> 29) - ((((v17 + (v17 >> 4)) ^ 0x3A322E7CCE6CFF14) - (((v17 + (v17 >> 4)) ^ 0x3A322E7CCE6CFF14) >> 29)) >> 14);
  v19 = v18 + (v18 >> 3);
  v20 = v19 - 0x35D9DC8D7EB6A3C4 - ((v19 - 0x35D9DC8D7EB6A3C4) >> 28) - ((v19 - 0x35D9DC8D7EB6A3C4 - ((v19 - 0x35D9DC8D7EB6A3C4) >> 28)) >> 10);
  v21 = v20 - (v20 >> 7);
  v22 = v10 ^ v7 ^ (v10 >> 2) & 0x3EF7FEED ^ v16 ^ v21 ^ (v21 >> 2) & 0x3EF7FEED;
  v23 = v21 + 0x7A539C9371536F6BLL + ((v21 + 0x7A539C9371536F6BLL) >> 31) + ((v21 + 0x7A539C9371536F6BLL + ((v21 + 0x7A539C9371536F6BLL) >> 31)) >> 8);
  v24 = ((v23 - (v23 >> 4)) ^ 0xE70727249ABD292DLL) + (((v23 - (v23 >> 4)) ^ 0xE70727249ABD292DLL) >> 28) + ((((v23 - (v23 >> 4)) ^ 0xE70727249ABD292DLL) + (((v23 - (v23 >> 4)) ^ 0xE70727249ABD292DLL) >> 28)) >> 14);
  LODWORD(STACK[0x5780]) = v19 ^ v13 ^ a2 ^ ((v19 ^ v13) >> 2) & 0x3EF7FEED ^ ((v24 - (v24 >> 3)) >> 2) & 0x3EF7FEED ^ (v24 - (v24 >> 3));
  if (((*(STACK[0x57C0] + ((*(STACK[0x57C0] + ((*(STACK[0x57C0] + (*(STACK[0x57C0] + 14) & 0xF ^ 8)) + 4) & 0xF)) + 11) & 0xF)) + 14) & 0xE) != 0)
  {
    v25 = (*(STACK[0x57C0] + ((*(STACK[0x57C0] + ((*(STACK[0x57C0] + (*(STACK[0x57C0] + 14) & 0xF ^ 8)) + 4) & 0xF)) + 11) & 0xF)) + 14) & 0xF;
  }

  else
  {
    v25 = 1;
  }

  v26 = *(STACK[0x57D8] + 8 * a4);
  STACK[0x5710] = v25;
  return v26(v22, ((a4 + 2126956777) & 0xD57FBCFF) + 2131534398);
}

uint64_t sub_10032B1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v8 = a5 + 656797553 < v7;
  if (v7 < 0x521E0611 != (a5 + 656797553) < 0x521E0611)
  {
    v8 = v7 < 0x521E0611;
  }

  return (*(STACK[0x57D8] + 8 * ((19 * !v8) ^ a7)))();
}

uint64_t sub_10032BC1C@<X0>(uint64_t a1@<X8>)
{
  v7 = -a1 - v6;
  v8 = v7 + 16;
  v9 = (v5 - v6) > 0xF && (v7 + 16 + v2) > 0xF;
  v10 = v7 + v1 + 17;
  v13 = v9 && v10 >= (((v4 - 14151) | 0x1800) ^ 0x5846uLL) && (v8 + v3) > 0xF;
  return (*(STACK[0x57D8] + 8 * ((47 * v13) ^ v4)))();
}

uint64_t sub_10032BC88()
{
  if (STACK[0x5B00])
  {
    v0 = LODWORD(STACK[0x826C]) == (((LODWORD(STACK[0x319C]) - 6731) | 0x1840) ^ 0xFFFF816E) + ((LODWORD(STACK[0x319C]) - 14305) | 0x448);
  }

  else
  {
    v0 = 1;
  }

  v1 = v0;
  return (*(STACK[0x57D8] + 8 * ((229 * v1) ^ LODWORD(STACK[0x319C]))))();
}

uint64_t sub_10032BD2C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  LODWORD(STACK[0x5710]) = v5;
  LODWORD(STACK[0x5640]) = v3;
  STACK[0x5730] = a3;
  return (*(STACK[0x57D8] + 8 * ((v4 - 16497) ^ (8 * (((v4 - 115) ^ (a2 < (((v4 + 2053769105) & 0x8595B7FD) - 6117))) & 1)))))(a2, 97, STACK[0x5790], 0x91BE8DE8979CBE40, 0xB057743BD1A8F5BCLL, 0x7D0ACAAAE9EC381DLL, 0x7C652EB68C3707CCLL, 0x88BAA327823EC29BLL);
}

uint64_t sub_10032BEB0()
{
  if (*(v2 + 24))
  {
    v3 = *(v2 + 16) == ((v0 - 21095) | 0x1000) - 4730;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  v5 = *(STACK[0x57D8] + 8 * ((486 * v4) ^ v0));
  *(v1 + 3336) = v0 + 4086;
  *(v1 + 3340) = 531439761;
  return v5(&STACK[0xEED0]);
}

uint64_t sub_10032BF4C@<X0>(uint64_t a1@<X8>)
{
  v4 = v3 + a1;
  v5 = v3 + a1 + 9;
  v6 = __ROR8__(v5 & 0xFFFFFFFFFFFFFFF8, 8);
  v7 = -2 - (((0x1F49ABE1B6CA29CLL - v6) | 0xF5F3C9C2DF4A4713) + ((v6 + 0x4E0B6541E4935D63) | 0xA0C363D20B5B8ECLL));
  v8 = v7 ^ 0x1A4B9753FB7EF797;
  v7 ^= 0x6A10BD5CDFE41C8DuLL;
  v9 = __ROR8__(v8, 8);
  v10 = (((v9 + v7) & 0x847E9FEAF02D976 ^ 0x42600A02020150) + ((v9 + v7) ^ 0x1DB58BF5AD51D82ELL) - (((v9 + v7) ^ 0x1DB58BF5AD51D82ELL) & 0x847E9FEAF02D976)) ^ 0xA89F09F2FBC20B7;
  v11 = v10 ^ __ROR8__(v7, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0x1C02DF5B258263EDLL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((2 * (v14 + v13)) & 0x97A272994B3412E8) - (v14 + v13) + 0x342EC6B35A65F68BLL) ^ 0x65D281CD69BBB6B8;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = __ROR8__(v15, 8);
  v18 = __ROR8__((((2 * ((v17 + v16) ^ 0x733519A723181E1ELL)) | 0x19FC166E6E50C56CLL) - ((v17 + v16) ^ 0x733519A723181E1ELL) + 0x7301F4C8C8D79D4ALL) ^ 0xDD871B5A503C70A3, 8);
  v19 = (((2 * ((v17 + v16) ^ 0x733519A723181E1ELL)) | 0x19FC166E6E50C56CLL) - ((v17 + v16) ^ 0x733519A723181E1ELL) + 0x7301F4C8C8D79D4ALL) ^ 0xDD871B5A503C70A3 ^ __ROR8__(v16, 61);
  v20 = (v18 + v19 - ((2 * (v18 + v19)) & 0xCFCFF1427020737CLL) + 0x67E7F8A1381039BELL) ^ 0xC67E010F679753FBLL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0xB2823E14A03C0367;
  v23 = v3 - 1;
  *(v4 + 9) = (((__ROR8__(v22, 8) + (v22 ^ __ROR8__(v21, 61))) ^ 0x69517CAD07781183) >> (8 * (v5 & 7u))) ^ *(v1 + v23);
  return (*(STACK[0x57D8] + 8 * (((8 * (v23 != 0)) | (16 * (v23 != 0))) ^ v2)))();
}

uint64_t sub_10032C1D4()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  return (*(v1 + 8 * (v0 - 18093)))(v2);
}

uint64_t sub_10032C2C8(int a1)
{
  LODWORD(STACK[0x5680]) = v2;
  STACK[0x56D0] = v1;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_10032C344(int a1, uint64_t a2, int a3)
{
  v8 = (a1 << 16) | (v7 << 24) | (v6 << 8);
  v9 = (v8 ^ (((v4 - 742090394) & 0x2C3B7F56) - 272652375)) & ((v5 - (a3 & (2 * v5)) - 48889507) ^ 0x96BDF74A) ^ v8 & 0x94540900;
  *v3 = (((v9 ^ 0x5A49CC0E) + 1399548921) ^ ((v9 ^ 0xE2918B9C) - 340579221) ^ ((v9 ^ 0xD373B185) - 632220044)) - 1796279633;
  return (*(STACK[0x57D8] + 8 * v4))();
}

uint64_t sub_10032C428()
{
  v2 = (v0 - 1972902181) & 0x7597F7EE;
  v3 = v0 - 20866;
  LODWORD(STACK[0x837C]) = v1;
  v4 = STACK[0x57D8];
  STACK[0x9AC0] = *(STACK[0x57D8] + 8 * v3);
  return (*(v4 + 8 * ((v2 ^ 0x3D56) + v3)))(15115, 4404, 0x683CBC57EAB92A3ELL, 22622);
}

uint64_t sub_10032C4A8()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  return (*(v1 + 8 * (v0 - 5256)))(v2);
}

uint64_t sub_10032C514()
{
  v2 = v0 + 2037;
  if (*STACK[0x8EF8])
  {
    v3 = v1;
  }

  else
  {
    v3 = -143155721;
  }

  LODWORD(STACK[0xAD04]) = v3;
  return (*(STACK[0x57D8] + 8 * (((v3 == -143113071) * (((2 * v2) ^ 0x709E) + 7428)) ^ v2)))();
}

uint64_t sub_10032C6EC()
{
  v5 = v3[497];
  v6 = *(v5 + 7);
  v5 += 7;
  v7 = __ROR8__(v5 & 0xFFFFFFFFFFFFFFF8, 8);
  v8 = ((0x70824D863E123F42 - v7) & 0xA6B2246C6AECCA66) + v7 - 0x70824D863E123F43 - ((v7 - 0x70824D863E123F43) & 0xA6B2246C6AECCA66);
  v9 = v8 ^ 0x7535CF7B93FD3510;
  v8 ^= 0xED85CB59C9330FCuLL;
  v10 = (__ROR8__(v9, 8) + v8) ^ 0x3A7C64F71FBFC65BLL;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0xFBC18F8B9568C440;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0x4AE5CE6F63977933;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x2854CB5A8BDB8317;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xF7721CC6F3AEFBDCLL;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0xE6B7173A9B2BB05DLL;
  LODWORD(v5) = v4 + ((((__ROR8__(v20, 8) + (v20 ^ __ROR8__(v19, 61))) ^ 0x94AC86FF716F8E22) >> (8 * (v5 & 7u))) ^ v6) * v2;
  v21 = v3[501];
  STACK[0x57C0] = v21;
  *(v3[500] + 37384) = *(v21 + v5 - 5896 * (((1456909 * v5) >> 32) >> 1));
  v22 = v3[496];
  v23 = *(v22 + 2);
  v24 = *(v22 + 1);
  v25 = *v22;
  LODWORD(v19) = *STACK[0x51E8];
  LODWORD(STACK[0x57A0]) = v19;
  v26 = *STACK[0x51F0];
  v27 = *(v26 + (v19 & 0xFFFFFFF8 & ((v22 & 0xFFFFFFF8) + 2050767130)));
  v28 = __ROR8__(v22 & 0xFFFFFFFFFFFFFFF8, 8);
  v29 = (((v27 + v28) & 0x3F18500EDA79F4A1 ^ 0x3F1000065A182001) + ((v27 + v28) ^ 0xC08957A8A161DFB2) - (((v27 + v28) ^ 0xC08957A8A161DFB2) & 0x3F18500EDA79F4A1)) ^ 0x471906729ADF4840 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__((((v27 + v28) & 0x3F18500EDA79F4A1 ^ 0x3F1000065A182001) + ((v27 + v28) ^ 0xC08957A8A161DFB2) - (((v27 + v28) ^ 0xC08957A8A161DFB2) & 0x3F18500EDA79F4A1)) ^ 0x471906729ADF4840, 8) + v29) ^ 0x38C8B16AE7056877;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = __ROR8__((((2 * ((v32 + v31) ^ 0x41EA03635B37C6C3)) | 0x6F5DCE36E68B60C4) - ((v32 + v31) ^ 0x41EA03635B37C6C3) + 0x485118E48CBA4F9ELL) ^ 0x13C45505A4B793F0, 8);
  v34 = (((2 * ((v32 + v31) ^ 0x41EA03635B37C6C3)) | 0x6F5DCE36E68B60C4) - ((v32 + v31) ^ 0x41EA03635B37C6C3) + 0x485118E48CBA4F9ELL) ^ 0x13C45505A4B793F0 ^ __ROR8__(v31, 61);
  v35 = (v33 + v34) ^ 0xE1A1FD5BD155F97ALL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xDA604B0C03A2BF99;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (((2 * (v39 + v38)) | 0xCE6E85A5E790E54ELL) - (v39 + v38) - 0x673742D2F3C872A7) ^ 0x9D02A01F38F64360;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0xD2F00CE620E5D3AELL;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v42, 8);
  LODWORD(v42) = *(v22 + 3);
  v45 = *(v26 + (v19 & 0xFFFFFFF8 & (((v22 + 1) & 0xFFFFFFF8 ^ 0x70E5F564) - 350083047 + ((2 * ((v22 + 1) & 0xFFFFFFF8)) | 0x1E341537) + 1638)));
  v46 = v25 ^ 0x7A ^ (((((2 * (v44 + v43)) | 0x863B3C06CAD8B656) - (v44 + v43) - 0x431D9E03656C5B2BLL) ^ 0xB76E9532CB1C2E50) >> (8 * (v22 & 7u)));
  v47 = __ROR8__((v22 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v48 = (((2 * (v45 + v47)) & 0x2DEEA03168D82718) - (v45 + v47) - 0x16F75018B46C138DLL) ^ 0x5180AE33AA548F20;
  v49 = v48 ^ __ROR8__(v45, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0x38C8B16AE7056877;
  v51 = __ROR8__(v50, 8);
  v52 = v50 ^ __ROR8__(v49, 61);
  v53 = (v51 + v52) ^ 0xE580B17D8CC5E551;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0xE1A1FD5BD155F97ALL;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0xDA604B0C03A2BF99;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ 0xFA35E2CDCB3E31C7;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = __ROR8__(v59, 8);
  v62 = (0xFF027C9087A440BLL - ((v61 + v60) | 0xFF027C9087A440BLL) + ((v61 + v60) | 0xF00FD836F785BBF4)) ^ 0x22FFD4D0D760685ALL;
  LODWORD(STACK[0x5750]) = *(v22 + 5);
  LODWORD(STACK[0x5760]) = v24 ^ 0xB4 ^ (((__ROR8__(v62, 8) + (v62 ^ __ROR8__(v60, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * ((v22 + 1) & 7)));
  LODWORD(v21) = v4 + v46 * v2;
  LODWORD(STACK[0x57B0]) = *(v22 + 7);
  v63 = *(v26 + (v19 & 0xFFFFFFF8 & (((v22 + 2) & 0xFFFFFFF8) + 2050767130)));
  v64 = __ROR8__((v22 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v65 = (0x285FB7295E31CB25 - ((v63 + v64) | 0x285FB7295E31CB25) + ((v63 + v64) | 0xD7A048D6A1CE34DALL)) ^ 0x6F28490240095789;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (v67 + v66 - ((2 * (v67 + v66)) & 0x8BB652AEB4C95D18) + 0x45DB29575A64AE8CLL) ^ 0x7D13983DBD61C6FBLL;
  v69 = v68 ^ __ROR8__(v66, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0xE580B17D8CC5E551;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (v72 + v71 - ((2 * (v72 + v71)) & 0xE7112F09AA1EDBA8) + 0x73889784D50F6DD4) ^ 0x92296ADF045A94AELL;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = __ROR8__(v73, 8);
  v76 = (((2 * (v75 + v74)) | 0xBAB1040373D5263CLL) - (v75 + v74) + 0x22A77DFE46156CE2) ^ 0x738C90DBA482C87 ^ __ROR8__(v74, 61);
  v77 = (__ROR8__((((2 * (v75 + v74)) | 0xBAB1040373D5263CLL) - (v75 + v74) + 0x22A77DFE46156CE2) ^ 0x738C90DBA482C87, 8) + v76) ^ 0xFA35E2CDCB3E31C7;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = __ROR8__(v77, 8);
  v80 = (((2 * (v79 + v78)) | 0x949E16DB0D88E484) - (v79 + v78) - 0x4A4F0B6D86C47242) ^ 0x98BF078BA621A1ECLL;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = __ROR8__(v80, 8);
  LODWORD(STACK[0x5780]) = v23 ^ 0x11 ^ (((((2 * (v82 + v81)) & 0x4C5343DC32F3037CLL) - (v82 + v81) - 0x2629A1EE197981BFLL) ^ 0x2DA5552048F60B3ALL) >> (8 * ((v22 + 2) & 7)));
  v83 = *(v26 + (v19 & 0xFFFFFFF8 & (-1244136267 * (((855249309 * ((v22 + 3) & 0xFFFFFFF8)) | 0x61FB49CD) + ((855249309 * ((v22 + 3) & 0xFFFFFFF8)) & 0x61FB49C8)) - 356499671)));
  v84 = __ROR8__((v22 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v85 = (((2 * ((v83 + v84) ^ 0x7C18129355B3065CLL)) & 0xCD22A5A2597238E6) - ((v83 + v84) ^ 0x7C18129355B3065CLL) + 0x196EAD2ED346E38CLL) ^ 0xDDFEBE6967328683;
  v86 = v85 ^ __ROR8__(v83, 61);
  v87 = (__ROR8__(v85, 8) + v86) ^ 0x38C8B16AE7056877;
  v88 = v87 ^ __ROR8__(v86, 61);
  v89 = (__ROR8__(v87, 8) + v88) ^ 0xE580B17D8CC5E551;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ 0xE1A1FD5BD155F97ALL;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = (__ROR8__(v91, 8) + v92) ^ 0xDA604B0C03A2BF99;
  v94 = __ROR8__(v93, 8);
  v95 = v93 ^ __ROR8__(v92, 61);
  v96 = (v94 + v95) ^ 0xFA35E2CDCB3E31C7;
  v97 = v96 ^ __ROR8__(v95, 61);
  v98 = __ROR8__(v96, 8);
  v99 = (((2 * (v98 + v97)) | 0xC5E14D355C45A944) - (v98 + v97) - 0x62F0A69AAE22D4A2) ^ 0xB000AA7C8EC7070CLL;
  LODWORD(STACK[0x5770]) = v42 ^ (((__ROR8__(v99, 8) + (v99 ^ __ROR8__(v97, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * ((v22 + 3) & 7)));
  LODWORD(STACK[0x5710]) = *(v22 + 8);
  v100 = *(v26 + (v19 & 0xFFFFFFF8 & (((v22 + 4) & 0xCD06FA90 | 0x32F9056F) + 2050767130 + ((v22 + 4) & 0x32F90568 | 0xCD06FA90) + 1)));
  v101 = __ROR8__((v22 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v102 = (((2 * (v100 + v101)) & 0xBF1AD1C6FA194CD2) - (v100 + v101) - 0x5F8D68E37D0CA66ALL) ^ 0x18FA96C863343AC5;
  v103 = v102 ^ __ROR8__(v100, 61);
  v104 = __ROR8__(v102, 8);
  v105 = (v104 + v103 - ((2 * (v104 + v103)) & 0x245CDE95C1DAB894) - 0x6DD190B51F12A3B6) ^ 0xAAE6DE2007E8343DLL;
  v106 = v105 ^ __ROR8__(v103, 61);
  v107 = (__ROR8__(v105, 8) + v106) ^ 0xE580B17D8CC5E551;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = __ROR8__(v107, 8);
  v110 = (((2 * (v109 + v108)) & 0x90D3EC8F8290EBE8) - (v109 + v108) - 0x4869F647C14875F5) ^ 0x5637F4E3EFE27371;
  v111 = v110 ^ __ROR8__(v108, 61);
  v112 = (__ROR8__(v110, 8) + v111) ^ 0xDA604B0C03A2BF99;
  v113 = __ROR8__(v112, 8);
  v114 = v112 ^ __ROR8__(v111, 61);
  v115 = (0x7CF2B55506A3292DLL - ((v113 + v114) | 0x7CF2B55506A3292DLL) + ((v113 + v114) | 0x830D4AAAF95CD6D2)) ^ 0x7938A8673262E715;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = __ROR8__(v115, 8);
  v118 = (((2 * (v117 + v116)) | 0x1ED55F9CBDC41F34) - (v117 + v116) + 0x70955031A11DF066) ^ 0x5D9AA3287E07DC34;
  v119 = v118 ^ __ROR8__(v116, 61);
  v120 = __ROR8__(v118, 8);
  LODWORD(STACK[0x5790]) = *(v22 + 4) ^ 0x11 ^ (((v120 + v119 - ((2 * (v120 + v119)) & 0x10BECA6E5FF5996ELL) + 0x85F65372FFACCB7) ^ 0xFC2C6E06818AB9CCLL) >> (8 * ((v22 + 4) & 7)));
  LODWORD(v113) = *(v22 + 11);
  LODWORD(STACK[0x5740]) = v21 - 5896 * (((1456909 * v21) >> 32) >> 1);
  LODWORD(STACK[0x5730]) = *(v22 + 10);
  v121 = *(v26 + (v19 & 0xFFFFFFF8 & (((v22 + 5) & 0xFFFFFFF8) + 2050767130)));
  v122 = __ROR8__((v22 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v123 = (0xA122D6A91E30C887 - ((v121 + v122) | 0xA122D6A91E30C887) + ((v121 + v122) | 0x5EDD2956E1CF3778)) ^ 0xE65528820008542BLL;
  v124 = v123 ^ __ROR8__(v121, 61);
  v125 = __ROR8__(v123, 8);
  v126 = (((2 * (v125 + v124)) | 0xBCCF1169DF21B1B2) - (v125 + v124) + 0x2198774B106F2727) ^ 0xE6AF39DE0895B0AELL;
  v127 = v126 ^ __ROR8__(v124, 61);
  v128 = __ROR8__(v126, 8);
  v129 = __ROR8__((((2 * (v128 + v127)) | 0x6E0E1861AA513A0CLL) - (v128 + v127) + 0x48F8F3CF2AD762FALL) ^ 0x5287BD4D59ED7857, 8);
  v130 = (((2 * (v128 + v127)) | 0x6E0E1861AA513A0CLL) - (v128 + v127) + 0x48F8F3CF2AD762FALL) ^ 0x5287BD4D59ED7857 ^ __ROR8__(v127, 61);
  v131 = (((2 * (v129 + v130)) | 0x6E9A023B78D3A276) - (v129 + v130) - 0x374D011DBC69D13BLL) ^ 0xD6ECFC466D3C2841;
  v132 = v131 ^ __ROR8__(v130, 61);
  v133 = __ROR8__(v131, 8);
  v134 = (v133 + v132 - ((2 * (v133 + v132)) & 0xB3794578FD147E50) - 0x26435D438175C0D8) ^ 0x3DCE9B07D2880B1;
  v135 = v134 ^ __ROR8__(v132, 61);
  v136 = __ROR8__(v134, 8);
  v137 = (((2 * (v136 + v135)) | 0x19176C4201E4D87CLL) - (v136 + v135) + 0x737449DEFF0D93C2) ^ 0x76BE54ECCBCC5DF9;
  v138 = v137 ^ __ROR8__(v135, 61);
  v139 = (__ROR8__(v137, 8) + v138) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(v129) = *(v22 + 6);
  v140 = *(v26 + (v19 & 0xFFFFFFF8 & (((v22 + 6) & 0xFFFFFFF8) + 2050767130)));
  v141 = __ROR8__((v22 + 6) & 0xFFFFFFFFFFFFFFF8, 8);
  LODWORD(STACK[0x5720]) = LODWORD(STACK[0x5750]) ^ (((__ROR8__(v139, 8) + (v139 ^ __ROR8__(v138, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * ((v22 + 5) & 7)));
  v142 = (v140 + v141 - ((2 * (v140 + v141)) & 0x2D8C913D5112DF0) + 0x16C6489EA8896F8) ^ 0xB9E4655D0B4FF5ABLL;
  v143 = v142 ^ __ROR8__(v140, 61);
  v144 = (__ROR8__(v142, 8) + v143) ^ 0x38C8B16AE7056877;
  v145 = v144 ^ __ROR8__(v143, 61);
  v146 = (__ROR8__(v144, 8) + v145) ^ 0xE580B17D8CC5E551;
  v147 = v146 ^ __ROR8__(v145, 61);
  v148 = (__ROR8__(v146, 8) + v147) ^ 0xE1A1FD5BD155F97ALL;
  v149 = v148 ^ __ROR8__(v147, 61);
  v150 = (__ROR8__(v148, 8) + v149) ^ 0xDA604B0C03A2BF99;
  v151 = v150 ^ __ROR8__(v149, 61);
  v152 = (__ROR8__(v150, 8) + v151) ^ 0xFA35E2CDCB3E31C7;
  v153 = __ROR8__(v152, 8);
  v154 = v152 ^ __ROR8__(v151, 61);
  LODWORD(STACK[0x5750]) = v129 ^ 0x68 ^ (((__ROR8__((v153 + v154) ^ 0xD2F00CE620E5D3AELL, 8) + ((v153 + v154) ^ 0xD2F00CE620E5D3AELL ^ __ROR8__(v154, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * ((v22 + 6) & 7)));
  v155 = *(v26 + (v19 & 0xFFFFFFF8 & (((v22 + 11) & 0xFFFFFFF8 ^ 0x76F9CEBC) + 54684254 + ((2 * ((v22 + 11) & 0xFFFFFFF8)) & 0xEDF39D70))));
  v156 = (v155 + __ROR8__((v22 + 11) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v157 = v156 ^ __ROR8__(v155, 61);
  v158 = __ROR8__(v156, 8);
  v159 = (v158 + v157 - ((2 * (v158 + v157)) & 0xBB9169FC82F75C60) + 0x5DC8B4FE417BAE30) ^ 0x65000594A67EC647;
  v160 = v159 ^ __ROR8__(v157, 61);
  v161 = (__ROR8__(v159, 8) + v160) ^ 0xE580B17D8CC5E551;
  v162 = __ROR8__(v161, 8);
  v163 = v161 ^ __ROR8__(v160, 61);
  v164 = (v162 + v163) ^ 0xE1A1FD5BD155F97ALL;
  v165 = v164 ^ __ROR8__(v163, 61);
  v166 = __ROR8__(v164, 8);
  v167 = (0xD3DF0A1BA79BA9B5 - ((v166 + v165) | 0xD3DF0A1BA79BA9B5) + ((v166 + v165) | 0x2C20F5E45864564ALL)) ^ 0xF640BEE85BC6E9D3;
  v168 = v167 ^ __ROR8__(v165, 61);
  v169 = __ROR8__(v167, 8);
  v170 = (((2 * (v169 + v168)) | 0xB5536FAD4E36EB04) - (v169 + v168) - 0x5AA9B7D6A71B7582) ^ 0xA09C551B6C254445;
  v171 = v170 ^ __ROR8__(v168, 61);
  v172 = __ROR8__(v170, 8);
  v173 = (0x60FA34B0DAC595BFLL - ((v172 + v171) | 0x60FA34B0DAC595BFLL) + ((v172 + v171) | 0x9F05CB4F253A6A40)) ^ 0x4DF5C7A905DFB9EELL;
  LODWORD(v171) = v113 ^ (((__ROR8__(v173, 8) + (v173 ^ __ROR8__(v171, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * ((v22 + 11) & 7)));
  LODWORD(v113) = LODWORD(STACK[0x5760]) * v2 + 4008381 - 5896 * (((1456909 * (LODWORD(STACK[0x5760]) * v2 + 4008381)) >> 32) >> 1);
  v174 = *(v26 + (v19 & 0xFFFFFFF8 & (((v22 + 8) & 0xFFFFFFF8) + 2050767130)));
  v175 = __ROR8__((v22 + 8) & 0xFFFFFFFFFFFFFFF8, 8);
  v176 = __ROR8__((((2 * (v174 + v175)) & 0xCE315B4C9C32203CLL) - (v174 + v175) - 0x6718ADA64E19101FLL) ^ 0x206F538D50218CB2, 8);
  v177 = (((2 * (v174 + v175)) & 0xCE315B4C9C32203CLL) - (v174 + v175) - 0x6718ADA64E19101FLL) ^ 0x206F538D50218CB2 ^ __ROR8__(v174, 61);
  v178 = (v176 + v177 - ((2 * (v176 + v177)) & 0x6EC9E3D4EF708F96) + 0x3764F1EA77B847CBLL) ^ 0xFAC408090BD2FBCLL;
  LODWORD(v151) = *(v22 + 12);
  v179 = v178 ^ __ROR8__(v177, 61);
  v180 = (__ROR8__(v178, 8) + v179) ^ 0xE580B17D8CC5E551;
  v181 = v180 ^ __ROR8__(v179, 61);
  v182 = (__ROR8__(v180, 8) + v181) ^ 0xE1A1FD5BD155F97ALL;
  v183 = v182 ^ __ROR8__(v181, 61);
  v184 = (__ROR8__(v182, 8) + v183) ^ 0xDA604B0C03A2BF99;
  v185 = v184 ^ __ROR8__(v183, 61);
  v186 = (__ROR8__(v184, 8) + v185) ^ 0xFA35E2CDCB3E31C7;
  v187 = v186 ^ __ROR8__(v185, 61);
  v188 = (__ROR8__(v186, 8) + v187) ^ 0xD2F00CE620E5D3AELL;
  v189 = LODWORD(STACK[0x5710]) ^ 0x11 ^ (((__ROR8__(v188, 8) + (v188 ^ __ROR8__(v187, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * ((v22 + 8) & 7)));
  LODWORD(STACK[0x5780]) = LODWORD(STACK[0x5780]) * v2 + 4008381 - 5896 * (((1456909 * (LODWORD(STACK[0x5780]) * v2 + 4008381)) >> 32) >> 1);
  LODWORD(STACK[0x5760]) = (v171 ^ 0x60) * v2 + 4008381 - 5896 * (((1456909 * ((v171 ^ 0x60) * v2 + 4008381)) >> 32) >> 1);
  v190 = *(v26 + (v19 & 0xFFFFFFF8 & (((v22 + 10) & 0xFFFFFFF8) + ((524335022 - ((v22 + 10) & 0xFFFFFFF8)) | 0xAC45F32C) + ((((v22 + 10) & 0xFFFFFFF8) + 1623148625) | 0xAC45F32C) - 839498257)));
  v191 = (v190 + __ROR8__((v22 + 10) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v192 = v191 ^ __ROR8__(v190, 61);
  v193 = __ROR8__(v191, 8);
  v194 = (((2 * (v193 + v192)) | 0x70F837EE0071C18) - (v193 + v192) - 0x387C1BF70038E0CLL) ^ 0x3B4F70D59706E67BLL;
  v195 = v194 ^ __ROR8__(v192, 61);
  v196 = __ROR8__(v194, 8);
  v197 = (((2 * (v196 + v195)) & 0xEEC741E927DFC404) - (v196 + v195) + 0x89C5F0B6C101DFDLL) ^ 0xED1CEE76E0D5F8ACLL;
  v198 = v197 ^ __ROR8__(v195, 61);
  v199 = (__ROR8__(v197, 8) + v198) ^ 0xE1A1FD5BD155F97ALL;
  v200 = __ROR8__(v199, 8);
  v201 = v199 ^ __ROR8__(v198, 61);
  v202 = (v200 + v201) ^ 0xDA604B0C03A2BF99;
  v203 = v202 ^ __ROR8__(v201, 61);
  v204 = __ROR8__(v202, 8);
  v205 = (v204 + v203 - ((2 * (v204 + v203)) & 0x6557C43BE318F44ALL) - 0x4D541DE20E7385DBLL) ^ 0x489E00D03AB24BE2;
  v206 = v205 ^ __ROR8__(v203, 61);
  v207 = (__ROR8__(v205, 8) + v206) ^ 0xD2F00CE620E5D3AELL;
  v208 = *(v26 + (LODWORD(STACK[0x57A0]) & (((((2 * ((v22 + 12) & 0xFFFFFFF8)) | 0x2A6DEA15) + ((v22 + 12) & 0xFFFFFFF8 ^ 0xEAC90AF5)) & 0xFFFFFFF8) + 1694843920)));
  LODWORD(STACK[0x57A0]) = LODWORD(STACK[0x5730]) ^ 0x12 ^ (((__ROR8__(v207, 8) + (v207 ^ __ROR8__(v206, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * ((v22 + 10) & 7)));
  v209 = __ROR8__((v22 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v210 = (v208 + v209 - ((2 * (v208 + v209)) & 0xC5E554455B44E344) - 0x1D0D55DD525D8E5ELL) ^ 0x5A7AABF64C6512F1;
  v211 = v210 ^ __ROR8__(v208, 61);
  v212 = __ROR8__(v210, 8);
  v213 = __ROR8__((((2 * (v212 + v211)) | 0xE417CA9D2DB1BF6CLL) - (v212 + v211) + 0xDF41AB16927204ALL) ^ 0xCAC3542471DDB7C1, 8);
  v214 = (((2 * (v212 + v211)) | 0xE417CA9D2DB1BF6CLL) - (v212 + v211) + 0xDF41AB16927204ALL) ^ 0xCAC3542471DDB7C1 ^ __ROR8__(v211, 61);
  v215 = (v213 + v214 - ((2 * (v213 + v214)) & 0xEA70E60A69F29C18) + 0x7538730534F94E0CLL) ^ 0x90B8C278B83CAB5DLL;
  v216 = v215 ^ __ROR8__(v214, 61);
  v217 = (__ROR8__(v215, 8) + v216) ^ 0xE1A1FD5BD155F97ALL;
  v218 = v217 ^ __ROR8__(v216, 61);
  v219 = __ROR8__(v217, 8);
  v220 = (((2 * (v219 + v218)) | 0xF9B0B4C8E3DC2034) - (v219 + v218) + 0x327A59B8E11EFE6) ^ 0x26B81168724CAF83;
  v221 = v220 ^ __ROR8__(v218, 61);
  v222 = __ROR8__(v220, 8);
  v223 = (((2 * (v222 + v221)) & 0x2BFD60CD4BEEF9E0) - (v222 + v221) - 0x15FEB066A5F77CF1) ^ 0x1034AD549136B2C8;
  v224 = v223 ^ __ROR8__(v221, 61);
  v225 = (__ROR8__(v223, 8) + v224) ^ 0xD2F00CE620E5D3AELL;
  v226 = v225 ^ __ROR8__(v224, 61);
  v227 = __ROR8__(v225, 8);
  LODWORD(STACK[0x5730]) = v151 ^ 0x66 ^ (((v227 + v226 - ((2 * (v227 + v226)) & 0x64E97059D8BA2E7ELL) + 0x3274B82CEC5D173FLL) ^ 0xC607B31D422D6244) >> (8 * ((v22 + 12) & 7)));
  v228 = *(v26 + (v19 & 0xFFFFFFF8 & (((v22 + 7) & 0xFFFFFFF8 ^ 0xBAACE1FC) - 1081125090 + ((2 * ((v22 + 7) & 0xFFFFFFF8)) & 0x7559C3F0))));
  v229 = (v228 + __ROR8__((v22 + 7) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v230 = v229 ^ __ROR8__(v228, 61);
  v231 = __ROR8__(v229, 8);
  v232 = (v231 + v230 - ((2 * (v231 + v230)) & 0x782E2D3E9B8F7100) + 0x3C17169F4DC7B880) ^ 0x4DFA7F5AAC2D0F7;
  v233 = v232 ^ __ROR8__(v230, 61);
  v234 = (__ROR8__(v232, 8) + v233) ^ 0xE580B17D8CC5E551;
  v235 = v234 ^ __ROR8__(v233, 61);
  v236 = (__ROR8__(v234, 8) + v235) ^ 0xE1A1FD5BD155F97ALL;
  v237 = __ROR8__(v236, 8);
  v238 = v236 ^ __ROR8__(v235, 61);
  v239 = (v237 + v238) ^ 0xDA604B0C03A2BF99;
  v240 = v239 ^ __ROR8__(v238, 61);
  v241 = (__ROR8__(v239, 8) + v240) ^ 0xFA35E2CDCB3E31C7;
  v242 = v241 ^ __ROR8__(v240, 61);
  v243 = __ROR8__(v241, 8);
  v244 = (0x11D291B86A8A1A11 - ((v243 + v242) | 0x11D291B86A8A1A11) + ((v243 + v242) | 0xEE2D6E479575E5EELL)) ^ 0x3CDD62A1B5903640;
  LODWORD(v241) = *(v22 + 9);
  v245 = *(v26 + (v19 & 0xFFFFFFF8 & (((v22 + 9) & 0xFFFFFFF8) + 2050767130)));
  LODWORD(STACK[0x5710]) = LODWORD(STACK[0x57B0]) ^ 0x77 ^ (((__ROR8__(v244, 8) + (v244 ^ __ROR8__(v242, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * ((v22 + 7) & 7)));
  v246 = (v245 + __ROR8__((v22 + 9) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v247 = v246 ^ __ROR8__(v245, 61);
  v248 = (__ROR8__(v246, 8) + v247) ^ 0x38C8B16AE7056877;
  v249 = __ROR8__(v248, 8);
  v250 = v248 ^ __ROR8__(v247, 61);
  v251 = (v249 + v250) ^ 0xE580B17D8CC5E551;
  v252 = v251 ^ __ROR8__(v250, 61);
  v253 = __ROR8__(v251, 8);
  v254 = (((2 * (v253 + v252)) & 0x8BB58ABA3EC6B902) - (v253 + v252) - 0x45DAC55D1F635C82) ^ 0x5B84C7F931C95A04;
  v255 = v254 ^ __ROR8__(v252, 61);
  v256 = (__ROR8__(v254, 8) + v255) ^ 0xDA604B0C03A2BF99;
  v257 = v256 ^ __ROR8__(v255, 61);
  v258 = __ROR8__(v256, 8);
  v259 = (v258 + v257 - ((2 * (v258 + v257)) & 0x18F5A81EF2F4D35CLL) + 0xC7AD40F797A69AELL) ^ 0xF64F36C2B2445869;
  v260 = v259 ^ __ROR8__(v257, 61);
  v261 = __ROR8__(v259, 8);
  v262 = (((2 * (v261 + v260)) & 0x1D35C5EE7507BA52) - (v261 + v260) + 0x71651D08C57C22D6) ^ 0xA39511EEE599F178;
  LODWORD(v262) = v241 ^ 0x2E ^ (((__ROR8__(v262, 8) + (v262 ^ __ROR8__(v260, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * ((v22 + 9) & 7)));
  LODWORD(v129) = (LODWORD(STACK[0x5770]) ^ 0xFC) * v2 + 4008381;
  v263 = *(STACK[0x57C0] + LODWORD(STACK[0x5740]));
  LODWORD(v245) = (LODWORD(STACK[0x5720]) ^ 0x38) * v2 + 4008381;
  LODWORD(v119) = *(STACK[0x57C0] + v113);
  v264 = STACK[0x57C0];
  v265 = v22;
  v266 = *(v26 + (v19 & 0xFFFFFFF8 & (((v22 + 13) & 0xBE7CFC38) + ((v22 + 13) & 0x418303C0 | 0xBE7CFC3B) - 1145094945)));
  v267 = __ROR8__((v22 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v268 = (((2 * (v266 + v267)) & 0x7178144F5C3E4AEALL) - (v266 + v267) - 0x38BC0A27AE1F2576) ^ 0x7FCBF40CB027B9D9;
  v269 = v268 ^ __ROR8__(v266, 61);
  v270 = (__ROR8__(v268, 8) + v269) ^ 0x38C8B16AE7056877;
  v271 = v270 ^ __ROR8__(v269, 61);
  v272 = __ROR8__(v270, 8);
  v273 = (((2 * (v272 + v271)) & 0xC14C222087FD4A6ELL) - (v272 + v271) + 0x1F59EEEFBC015AC8) ^ 0xFAD95F9230C4BF99;
  v274 = v273 ^ __ROR8__(v271, 61);
  v275 = (__ROR8__(v273, 8) + v274) ^ 0xE1A1FD5BD155F97ALL;
  v276 = __ROR8__(v275, 8);
  v277 = v275 ^ __ROR8__(v274, 61);
  v278 = (0x55E513702A9B2BE0 - ((v276 + v277) | 0x55E513702A9B2BE0) + ((v276 + v277) | 0xAA1AEC8FD564D41FLL)) ^ 0x707AA783D6C66B86;
  v279 = v278 ^ __ROR8__(v277, 61);
  v280 = (__ROR8__(v278, 8) + v279) ^ 0xFA35E2CDCB3E31C7;
  v281 = v280 ^ __ROR8__(v279, 61);
  v282 = (__ROR8__(v280, 8) + v281) ^ 0xD2F00CE620E5D3AELL;
  v283 = v282 ^ __ROR8__(v281, 61);
  v284 = __ROR8__(v282, 8);
  LODWORD(v139) = *(v22 + 13) ^ 0x5B ^ (((0x40AE402AAAF0C88CLL - ((v284 + v283) | 0x40AE402AAAF0C88CLL) + ((v284 + v283) | 0xBF51BFD5550F3773)) ^ 0x4B22B4E4FB7F4208) >> (8 * ((v22 + 13) & 7)));
  v285 = *(v22 + 14);
  v22 += 14;
  LODWORD(v259) = v285;
  LODWORD(STACK[0x57B0]) = v189 * v2 + 4008381 - 5896 * (((1456909 * (v189 * v2 + 4008381)) >> 32) >> 1);
  LOBYTE(v276) = *(v264 + v262 * v2 + 4008381 - 5896 * (((1456909 * (v262 * v2 + 4008381)) >> 32) >> 1));
  LODWORD(v19) = v245 - 5896 * (((1456909 * v245) >> 32) >> 1);
  v286 = *STACK[0x51F0];
  LODWORD(v245) = *STACK[0x51E8] & 0xFFFFFFF8;
  v287 = *(v286 + (v245 & ((v22 & 0xFA04C568) + (v22 & 0x5FB3A90 | 0xFA04C56D) - 2143849555)));
  v288 = (v287 + __ROR8__(v22 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v289 = __ROR8__(v288, 8);
  v290 = v288 ^ __ROR8__(v287, 61);
  v291 = (v289 + v290) ^ 0x38C8B16AE7056877;
  v292 = v291 ^ __ROR8__(v290, 61);
  v293 = (__ROR8__(v291, 8) + v292) ^ 0xE580B17D8CC5E551;
  v294 = v293 ^ __ROR8__(v292, 61);
  v295 = (__ROR8__(v293, 8) + v294) ^ 0xE1A1FD5BD155F97ALL;
  v296 = v295 ^ __ROR8__(v294, 61);
  v297 = (__ROR8__(v295, 8) + v296) ^ 0xDA604B0C03A2BF99;
  v298 = v297 ^ __ROR8__(v296, 61);
  v299 = __ROR8__(v297, 8);
  v300 = (v299 + v298 - ((2 * (v299 + v298)) & 0xF014ABDD4B745142) - 0x7F5AA115A45D75FLL) ^ 0x23FB7236E841966;
  v301 = v300 ^ __ROR8__(v298, 61);
  v302 = (__ROR8__(v300, 8) + v301) ^ 0xD2F00CE620E5D3AELL;
  v303 = v302 ^ __ROR8__(v301, 61);
  v304 = __ROR8__(v302, 8);
  v305 = *(v265 + 15);
  v265 += 15;
  LODWORD(v300) = v139 * v2 + 4008381;
  LODWORD(v259) = v259 ^ 0xBB ^ (((v304 + v303 - ((2 * (v304 + v303)) & 0xE9AF70D7A0C0EB0) + 0x74D7B86BD060758) ^ 0xF33E70B713767223) >> (8 * (v22 & 7u)));
  v306 = STACK[0xFE78];
  v307 = *(v286 + (v245 & ((v265 & 0xFFFFFFF8) + 2050767130)));
  v308 = __ROR8__(v265 & 0xFFFFFFFFFFFFFFF8, 8);
  LODWORD(v51) = v300 - 5896 * (((1456909 * v300) >> 32) >> 1);
  v309 = (((2 * (v307 + v308)) | 0x51D4B5AFA6D1F0F8) - (v307 + v308) + 0x5715A5282C970784) ^ 0x10625B0332AF9B2FLL;
  v310 = v309 ^ __ROR8__(v307, 61);
  v311 = (__ROR8__(v309, 8) + v310) ^ 0x38C8B16AE7056877;
  v312 = v311 ^ __ROR8__(v310, 61);
  v313 = __ROR8__(v311, 8);
  v314 = (((2 * (v313 + v312)) & 0xCD9E81D93B6BD604) - (v313 + v312) + 0x1930BF13624A14FDLL) ^ 0xFCB00E6EEE8FF1ACLL;
  v315 = v314 ^ __ROR8__(v312, 61);
  v316 = (__ROR8__(v314, 8) + v315) ^ 0xE1A1FD5BD155F97ALL;
  v317 = v316 ^ __ROR8__(v315, 61);
  v318 = (__ROR8__(v316, 8) + v317) ^ 0xDA604B0C03A2BF99;
  v319 = v318 ^ __ROR8__(v317, 61);
  v320 = (__ROR8__(v318, 8) + v319) ^ 0xFA35E2CDCB3E31C7;
  v321 = __ROR8__(v320, 8);
  v322 = v320 ^ __ROR8__(v319, 61);
  v323 = (v321 + v322) ^ 0xD2F00CE620E5D3AELL;
  v324 = v323 ^ __ROR8__(v322, 61);
  v325 = __ROR8__(v323, 8);
  LODWORD(v324) = v305 ^ (((v325 + v324 - ((2 * (v325 + v324)) & 0x33CFA72A5494DE06) - 0x66182C6AD5B590FDLL) ^ 0x6D94D8A4843A1A78) >> (8 * (v265 & 7u)));
  LODWORD(v303) = LODWORD(STACK[0x5750]) * v2 + 4008381 - 5896 * (((1456909 * (LODWORD(STACK[0x5750]) * v2 + 4008381)) >> 32) >> 1);
  LODWORD(v265) = LODWORD(STACK[0x5790]) * v2 + 4008381 - 5896 * (((1456909 * (LODWORD(STACK[0x5790]) * v2 + 4008381)) >> 32) >> 1);
  LODWORD(v259) = *(STACK[0xFE78] + v259 * v2 + 4008381 - 5896 * (((1456909 * (v259 * v2 + 4008381)) >> 32) >> 1));
  HIDWORD(v325) = v259 ^ 4;
  LODWORD(v325) = (v259 << 24) - 469762048;
  v326 = ((v325 >> 27) >> 5) | (8 * (v325 >> 27));
  LODWORD(v297) = v263 & 0x20 ^ 0xFFFFFFA6;
  LOBYTE(v19) = *(STACK[0xFE78] + v19);
  LOBYTE(STACK[0xF9AB]) = v19;
  LODWORD(STACK[0x57C0]) = v326;
  LODWORD(v300) = v263 ^ (2 * ((v263 ^ 0x64) & (2 * ((v263 ^ 0x64) & (2 * ((v263 ^ 0x64) & (2 * ((v263 ^ 0x64) & (2 * ((v263 ^ 0x44444444) & (2 * v297) ^ v297)) ^ v297)) ^ v297)) ^ v297)) ^ v297)) ^ (v326 - ((2 * v326) & 0x64) + 50) ^ 0x12;
  LOBYTE(v297) = v19 & 0xE4 | 3;
  LOBYTE(v323) = v297 ^ v19 & 0xE;
  LOBYTE(v19) = (v19 ^ 0x64) & (2 * ((v19 ^ 0x64) & (2 * ((v19 ^ 0x64) & (2 * ((v19 ^ 0x64) & (2 * ((v19 ^ 0x64) & (2 * (v19 & (2 * v297) ^ v323)) ^ v323)) ^ v323)) ^ v323)) ^ v323));
  LOBYTE(v297) = v276 & 0x90 ^ 0xDE;
  LOBYTE(v283) = *(v306 + v129 - 5896 * (((1456909 * v129) >> 32) >> 1));
  LOBYTE(STACK[0xF9AC]) = 2 * (v297 ^ v323 ^ (v276 ^ 0x64) & (2 * ((v276 ^ 0x64) & (2 * ((v276 ^ 0x64) & (2 * ((v276 ^ 0x64) & (2 * ((v276 ^ 0x64) & (2 * v297) ^ v297)) ^ v297)) ^ v297)) ^ v297)) ^ v19);
  LOBYTE(v19) = v283 & 0x8E ^ 0x55;
  LOBYTE(v62) = *(v306 + LODWORD(STACK[0x5760]));
  LOBYTE(v302) = v62 & 0x6A ^ 0xC3;
  LOBYTE(v302) = v62 ^ v283 ^ (2 * (v302 ^ v19 ^ (v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x44) & (2 * ((v62 ^ 0x44) & 0xE ^ v302)) ^ v302)) ^ v302)) ^ v302)) ^ v302)) ^ (v283 ^ 0x64) & (2 * ((v283 ^ 0x64) & (2 * ((v283 ^ 0x64) & (2 * ((v283 ^ 0x64) & (2 * ((v283 ^ 0x64) & (2 * (v19 ^ v283 & 0xAA)) ^ v19)) ^ v19)) ^ v19)) ^ v19))));
  LODWORD(v323) = (v324 ^ 0x80) * v2 + 4008381 - 5896 * (((1456909 * ((v324 ^ 0x80) * v2 + 4008381)) >> 32) >> 1);
  LODWORD(v19) = LODWORD(STACK[0x5730]) * v2 + 4008381;
  LODWORD(v283) = LODWORD(STACK[0x57A0]) * v2 + 4008381 - 5896 * (((1456909 * (LODWORD(STACK[0x57A0]) * v2 + 4008381)) >> 32) >> 1);
  LODWORD(v20) = v119 & 8 | 0xFFFFFF92;
  LODWORD(v213) = *(v306 + v303);
  LODWORD(v324) = v213 & 0x3E ^ 0xFFFFFFAD;
  v327 = *(v306 + LODWORD(STACK[0x5780]));
  LODWORD(v119) = v119 ^ (2 * ((v119 ^ 0x64) & (2 * ((v119 ^ 0x64) & (2 * ((v119 ^ 0x64) & (2 * ((v119 ^ 0x64) & (2 * ((v119 ^ 0x64) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ (v300 + (~(2 * v300) | 0xFFFFFFD3) + 23) ^ 0x1E;
  v328 = v213 ^ (2 * ((v213 ^ 0x64) & (2 * ((v213 ^ 0x64) & (2 * ((v213 ^ 0x64) & (2 * ((v213 ^ 0x64) & (2 * ((v213 ^ 0x64) & (2 * (v324 ^ v213 & 0x1A)) ^ v324)) ^ v324)) ^ v324)) ^ v324)) ^ v324)) ^ (v119 - ((2 * v119) & 0x44) - 94);
  LOBYTE(v20) = v327 & 0xD6 ^ 0x39;
  LOBYTE(v213) = v62 & 0xB0 ^ 0x6E;
  LOBYTE(v324) = v327 ^ v62 ^ (2 * ((v327 ^ 0x64) & (2 * ((v327 ^ 0x64) & (2 * ((v327 ^ 0x64) & (2 * ((v327 ^ 0x64) & (2 * ((v327 ^ 0x64) & (2 * (v20 ^ v327 & 0x32)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20 ^ v213 ^ (v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & (2 * v213) ^ v213)) ^ v213)) ^ v213)) ^ v213))));
  LODWORD(v20) = *(v306 + LODWORD(STACK[0x5710]) * v2 + 4008381 - 5896 * (((1456909 * (LODWORD(STACK[0x5710]) * v2 + 4008381)) >> 32) >> 1));
  LOBYTE(v326) = v324 ^ 0x66;
  v329 = *(v306 + v265);
  LODWORD(v324) = v329 & 6 | 0xFFFFFF91;
  v330 = v20 ^ 0x64;
  LODWORD(STACK[0x57A0]) = v20 & 0x3C ^ 0x2C ^ v330 & (2 * (v330 & (2 * (v330 & (2 * (v330 & (2 * (v20 & 0x3C ^ 0x2C)) ^ v20 & 0x3C ^ 0x2C)) ^ v20 & 0x3C ^ 0x2C)) ^ v20 & 0x3C ^ 0x2C)) ^ v324 ^ (v329 ^ 0x64) & (2 * ((v329 ^ 0x64) & (2 * ((v329 ^ 0x64) & (2 * ((v329 ^ 0x64) & (2 * ((v329 ^ 0x64) & (2 * (((4 * (((v329 & 6) >> 1) & 3)) | 0x62) & (v329 ^ 0x64) ^ v324)) ^ v324)) ^ v324)) ^ v324)) ^ v324));
  LOBYTE(v265) = v276 & 0xC ^ 0x14;
  LOBYTE(v265) = (v276 ^ 0x64) & (2 * ((v276 ^ 0x64) & (2 * ((v276 ^ 0x64) & (2 * ((v276 ^ 0x64) & (2 * v265) ^ v265)) ^ v265)) ^ v265)) ^ v265;
  LOBYTE(STACK[0xF9AA]) = v276;
  v331 = (v326 - ((2 * v326) & 0x68) + 52) ^ v276;
  LOBYTE(v276) = *(v306 + v283);
  LOBYTE(v324) = v331 ^ (2 * v265);
  LOBYTE(v265) = v276 & 0xEC ^ 4;
  LOBYTE(v213) = ((v324 ^ 0x38) - ((2 * (v324 ^ 0x38)) & 0x28) - 108) ^ v276 ^ (2 * ((v276 ^ 0x64) & (2 * ((v276 ^ 0x64) & (2 * ((v276 ^ 0x64) & (2 * ((v276 ^ 0x64) & (2 * ((v276 ^ 0x64) & (2 * v265) ^ v265)) ^ v265)) ^ v265)) ^ v265)) ^ v265));
  LOBYTE(v265) = *(v306 + LODWORD(STACK[0x57B0]));
  v332 = *(v306 + v51);
  LOBYTE(v19) = *(v306 + v19 - 5896 * (((1456909 * v19) >> 32) >> 1));
  LODWORD(v323) = *(v306 + v323);
  LODWORD(v51) = v323 & 0x48 ^ 0xFFFFFFF2;
  LODWORD(STACK[0x57B0]) = (v323 ^ 0x64) & (2 * ((v323 ^ 0x64) & (2 * ((v323 ^ 0x64) & (2 * ((v323 ^ 0x64) & (2 * ((v323 ^ 0x64) & (2 * v51) ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51;
  LODWORD(STACK[0x5790]) = (v328 ^ 0xFFFFFF9C) + ~(2 * ((v328 ^ 0xFFFFFF9C) & v0 ^ v328 & 3));
  v333 = (v62 & v1 | 0x12) ^ v62 & 0xEC;
  LOBYTE(STACK[0xF9AE]) = v213 ^ 0x78;
  LOBYTE(v51) = v62 ^ (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & (2 * v333) ^ v333)) ^ v333)) ^ v333)) ^ v333)) ^ v333)) ^ ((v213 ^ 0x78) + ~(2 * (v213 & 2 ^ (v213 ^ 0x78) & 0x1F)) - 98);
  LOBYTE(v189) = v265 & 0x58 ^ 0xFA;
  LOBYTE(v321) = v323 & 0x34 ^ 0xA8;
  LOBYTE(v303) = v323 ^ v265 ^ v324 ^ (2 * ((v265 ^ 0x64) & (2 * ((v265 ^ 0x64) & (2 * ((v265 ^ 0x64) & (2 * ((v265 ^ 0x64) & (2 * ((v265 ^ 0x64) & (2 * v189) ^ v189)) ^ v189)) ^ v189)) ^ v189)) ^ v189 ^ v321 ^ (v323 ^ 0x64) & (2 * ((v323 ^ 0x64) & (2 * ((v323 ^ 0x64) & (2 * ((v323 ^ 0x64) & (2 * v321) ^ v321)) ^ v321)) ^ v321))));
  LOBYTE(v265) = v19 & 0xC2 ^ 0x37;
  v334 = ((v302 ^ 0xE4) + ~(2 * ((v302 ^ 0xE4) & 0x3F ^ v302 & 3)) - 67) ^ v19 ^ (2 * ((v19 ^ 0x64) & (2 * ((v19 ^ 0x64) & (2 * ((v19 ^ 0x64) & (2 * ((v19 ^ 0x64) & (2 * ((v19 ^ 0x64) & (2 * ((v19 ^ 0x64) & 0x26 ^ v265)) ^ v265)) ^ v265)) ^ v265)) ^ v265)) ^ v265));
  LOBYTE(v265) = v332 & 0x14 ^ 0x98;
  LOBYTE(v265) = v332 ^ (2 * ((v332 ^ 0x64) & (2 * ((v332 ^ 0x64) & (2 * ((v332 ^ 0x64) & (2 * ((v332 ^ 0x64) & (2 * v265) ^ v265)) ^ v265)) ^ v265)) ^ v265)) ^ ((v302 ^ 0xE4) - 2 * ((v302 ^ 0xE4) & 0x33 ^ v302 & 1) - 78);
  v335 = v62 & 0x58 ^ 0xFA;
  LOBYTE(v19) = v20 & 0x52 ^ 0x7F;
  LOBYTE(v62) = v20 ^ v62 ^ (2 * (v19 ^ v335 ^ v330 & (2 * (v330 & (2 * (v330 & (2 * (v330 & (2 * (v330 & (2 * (v330 & 0x36 ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ (v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & (2 * v335) ^ v335)) ^ v335)) ^ v335)) ^ v335))));
  v336 = v51 ^ v300 ^ 0x95;
  LOBYTE(STACK[0xF9AF]) = v336 ^ v302;
  LOBYTE(v19) = v336 ^ v302 ^ 0x36;
  LOBYTE(v302) = v336 ^ v328;
  v337 = v265 ^ v119;
  v338 = v324 ^ LODWORD(STACK[0x57C0]);
  LOBYTE(v324) = v276 & 0x56 ^ 0x79;
  LOBYTE(v283) = v19 ^ v265 ^ ((v62 ^ 0xA) - 2 * ((v62 ^ 0xA) & 0x57 ^ v62 & 5) - 46) ^ 0x8E;
  LOBYTE(v324) = (v326 - ((2 * v326) & 0xF0) + 120) ^ v276 ^ (2 * ((v276 ^ 0x64) & (2 * ((v276 ^ 0x64) & (2 * ((v276 ^ 0x64) & (2 * ((v276 ^ 0x64) & (2 * ((v276 ^ 0x64) & (2 * (v324 ^ v276 & 0x32)) ^ v324)) ^ v324)) ^ v324)) ^ v324)) ^ v324));
  LOBYTE(v265) = v20 ^ v329 ^ (2 * LOBYTE(STACK[0x57A0])) ^ v334 ^ v283;
  LOBYTE(STACK[0xF9B2]) = (((v265 ^ 0x17) - 14) ^ ((v265 ^ 0x9C) + 123) ^ ((v265 ^ 0xE7) + 2)) - 111;
  LOBYTE(STACK[0xF9B0]) = v338;
  LOBYTE(STACK[0xF9B3]) = (LODWORD(STACK[0x5790]) - 55) ^ v323 ^ v338 ^ (2 * LOBYTE(STACK[0x57B0])) ^ 0x51;
  LOBYTE(STACK[0xF9B4]) = v51 ^ v337 ^ 0x5D;
  LOBYTE(STACK[0xF9AD]) = v213;
  LOBYTE(STACK[0xF9B1]) = v324;
  v339 = v324 ^ v51 ^ v300;
  LOBYTE(v324) = ((v19 ^ v326 ^ 0x33) - 51) ^ ((v19 ^ v326 ^ 0xA3) + 93) ^ ((v19 ^ v326 ^ 0x42) - 66);
  LOBYTE(v297) = v324 - 18;
  *(STACK[0xFE70] + 36221) = v324 - 18;
  LOBYTE(STACK[0xF9B7]) = (((v213 ^ v62 ^ 0xB8) + 107) ^ ((v213 ^ v62 ^ 0x16) - 59) ^ ((v213 ^ v62 ^ 0xDC) + 15)) + 123;
  LOBYTE(v324) = (v324 - 18) & 0xA6 ^ ((17 - v324) & 0xE4 | 0x13);
  LOBYTE(STACK[0xF9B9]) = v297 ^ 0x64;
  LOBYTE(STACK[0xF9B6]) = v297;
  LOBYTE(v324) = v297 ^ v302 ^ (2 * ((v297 ^ 0x64) & (2 * ((v297 ^ 0x64) & (2 * ((v297 ^ 0x64) & (2 * ((v297 ^ 0x64) & (2 * ((v297 ^ 0x64) & (2 * ((v297 ^ 0x64) & (2 * v324) ^ v324)) ^ v324)) ^ v324)) ^ v324)) ^ v324)) ^ v324));
  LOBYTE(STACK[0xF9BA]) = (((v324 ^ 0xF) - 39) ^ ((v324 ^ 0x59) - 113) ^ ((v324 ^ 0x88) + 96)) + 18;
  LOBYTE(STACK[0xF9B5]) = v339;
  LOBYTE(STACK[0xF9BB]) = (((v339 ^ v303 ^ 0x8A) - 54) ^ ((v339 ^ v303 ^ 0x64) + 40) ^ ((v339 ^ v303 ^ 1) + 67)) + 111;
  v340 = (v334 ^ 0x7E) + (v303 ^ 0x54) + ((2 * ((v303 ^ 0x71) & (v334 ^ 0x7E) ^ v334 & 0x25)) ^ 0xB7) + 1;
  LOBYTE(STACK[0xF9BC]) = (((v337 ^ v302 ^ 8 ^ v19 ^ 0x5C) - 92) ^ ((v337 ^ v302 ^ 8 ^ v19 ^ 0xD9) + 39) ^ ((v337 ^ v302 ^ 8 ^ v19 ^ 0x65) - 101)) - 4;
  LOBYTE(STACK[0xF9BD]) = (((LOBYTE(STACK[0xF9B3]) ^ v283 ^ 0xC8) + 56) ^ ((LOBYTE(STACK[0xF9B3]) ^ v283 ^ 0x6A) - 106) ^ ((LOBYTE(STACK[0xF9B3]) ^ v283 ^ 0x63) - 99)) - 35;
  LOBYTE(v283) = v20 & 0xA0 ^ 0xE6;
  LOBYTE(v283) = v20 ^ (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x44) & (2 * v283) ^ v283)) ^ v283)) ^ v283)) ^ v283)) ^ v283)) ^ v337;
  LOBYTE(STACK[0xF9B8]) = v337 ^ v302 ^ 8;
  LOBYTE(STACK[0xF9BE]) = (((v283 ^ 0xBE) - 73) ^ ((v283 ^ 0xD6) - 33) ^ ((v283 ^ 0x6E) + 103)) + 13;
  v341 = v337 ^ v302 ^ 8 ^ (v340 - ((2 * v340) & 0xE7) + 115);
  LOBYTE(v283) = ((v341 ^ 0x62) - 98) ^ ((v341 ^ 0xB2) + 78) ^ ((v341 ^ 0x91) + 111);
  v342 = STACK[0xF9A0];
  LODWORD(STACK[0xF9A4]) = STACK[0xF9A0];
  LOBYTE(STACK[0xF9BF]) = v283 + 93;
  v343 = STACK[0xFE60] + 35;
  STACK[0xF9C0] = v343;
  STACK[0xEFF8] = v343;
  v344 = STACK[0x57D8];
  STACK[0xEFE8] = *(STACK[0x57D8] + 8 * (v342 + 7126));
  return (*(v344 + 8 * (v342 + 6987)))();
}

uint64_t sub_10032F2D4()
{
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x46D9)))(v1 - 0x308E083E0C524CBELL);
  *v0 = 0x308E083E0C524CBELL;
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_10032F354()
{
  v0 = (STACK[0x51B8] + 2002) | 0x1400;
  v1 = STACK[0x51B8] - 20209;
  STACK[0x7ED8] -= 80;
  return (*(STACK[0x57D8] + 8 * ((22836 * (LODWORD(STACK[0x625C]) == (v0 ^ 0xF77830B9))) ^ v1)))();
}

uint64_t sub_10032F40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x57B0] = STACK[0x62A8];
  STACK[0x57A0] = STACK[0x6CF8];
  v4 = STACK[0xBD78];
  STACK[0x5790] = STACK[0xC738];
  return (*(STACK[0x57D8] + 8 * v3))(a1, v4, a3, STACK[0x7330], STACK[0x6DF8]);
}

uint64_t sub_10032F530()
{
  v0 = STACK[0x57D8];
  v1 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(STACK[0x84D8]);
  return (*(v0 + 8 * SLODWORD(STACK[0x26B4])))(v1);
}

uint64_t sub_10032F5E8@<X0>(int a1@<W8>)
{
  v1 = STACK[0x51B8] - 20659;
  LODWORD(STACK[0x61C4]) = a1;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0x6133 ^ LODWORD(STACK[0x4154]))))();
}

uint64_t sub_10032F62C@<X0>(int a1@<W8>)
{
  v3 = *(STACK[0x57D8] + 8 * a1);
  *v1 = (HIBYTE(v2) ^ 0xD2) - 2 * ((HIBYTE(v2) ^ 0xD2) & 7) - 121;
  v1[1] = (BYTE6(v2) ^ 0xE6) - 2 * ((BYTE6(v2) ^ 0xE6) & 7) - 121;
  v1[2] = (BYTE5(v2) ^ 0xC6) - 2 * ((BYTE5(v2) ^ 0xC6) & 7) - 121;
  v1[3] = (BYTE4(v2) ^ 4) + (~(2 * (BYTE4(v2) ^ 4)) | 0xF1) - 120;
  v1[4] = (BYTE3(v2) ^ 0xAE) - 2 * ((BYTE3(v2) ^ 0xAE) & 7) - 121;
  v1[5] = (BYTE2(v2) ^ 0x69) + (~(2 * (BYTE2(v2) ^ 0x69)) | 0xF1) - 120;
  v1[6] = (BYTE1(v2) ^ 6) - 2 * ((BYTE1(v2) ^ 6) & 0xF ^ BYTE1(v2) & 8) - 121;
  v1[7] = v2 ^ 0x54;
  return v3();
}

uint64_t sub_10032F718()
{
  v2 = LOBYTE(STACK[0xEB57]);
  LODWORD(STACK[0xEB50]) = v0;
  return (*(STACK[0x57D8] + 8 * ((17394 * ((((v2 - v1) | (v1 - v2)) & 0x80) == 0)) ^ (v1 + 13092))))();
}

uint64_t sub_10032F7EC()
{
  v3 = STACK[0x2914];
  v4 = LODWORD(STACK[0x2914]) + 11333;
  *(v0 + 600) = LODWORD(STACK[0x2914]) - 289235981 * ((v1 & 0xD647F6CA | ~(v1 | 0xD647F6CA)) ^ 0xAE3AD90A) + 10132;
  v5 = STACK[0x4488];
  *(v0 + 592) = STACK[0x4488];
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v3 + 20555)))(v2 - 240);
  v9 = *(v0 + 604) != v3 - 11281 || *v5 == 0;
  return (*(v6 + 8 * ((v9 * (v4 ^ 0x6DD)) ^ v3)))(v7);
}

uint64_t sub_10032F894(int a1)
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xBE4C];
  LODWORD(STACK[0x9094]) = a1 + 112;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_10032FAB0()
{
  v2 = *(v0 + 432);
  v3 = *(v0 + 428);
  v4 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & (((v3 - 22622) & v2 & 0xF4AEB648) + ((v3 - 22622) & v2 | 0xF4AEB64B) - 1641971103)) & 0xFFFFFFFFFFFFFFF8));
  v5 = (__ROR8__((v3 - 22622) & v2, 8) + v4) ^ 0xC2AF3EAA3FF1B8E4;
  v6 = v5 ^ __ROR8__(v4, 61);
  v7 = __ROR8__(v5, 8);
  v8 = (((2 * ((v7 + v6) ^ 0x18798EA25AADDE62)) & 0x6A2C59B98422C65ALL) - ((v7 + v6) ^ 0x18798EA25AADDE62) + 0x4AE9D3233DEE9CD2) ^ 0x3762095C7FCEF64CLL;
  v9 = v8 ^ __ROR8__(v6, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0x6FF046966119128DLL;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (((2 * (v12 + v11)) & 0xA40E7C74A26EF9EELL) - (v12 + v11) - 0x52073E3A51377CF8) ^ 0xC4A5C0079BE9023;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ v1;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (0xFD911AEEB5D86621 - ((v17 + v16) | 0xFD911AEEB5D86621) + ((v17 + v16) | 0x26EE5114A2799DELL)) ^ 0xDAA9560E803E4000;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x5455012E8AB1C38FLL;
  v21 = __ROR8__(v20, 8);
  v22 = __ROR8__(v19, 61);
  v23 = (((v21 + (v20 ^ v22) - ((2 * (v21 + (v20 ^ v22))) & 0xDBF26D308525DDE8) - 0x1206C967BD6D110CLL) ^ 0x82B656244C90B014) >> (8 * (v2 & 7u))) ^ *(v0 + 295);
  v24 = *(v0 + 416);
  *(*(v0 + 3768) + ((LODWORD(STACK[0x4C24]) + 11 * v24) & 0x7F)) = (((2 * (v23 - v24 + 16 * v24)) & 0xF7) - ((4 * (v23 - v24 + 16 * v24)) & 0xC8) - 28) ^ 0x3B;
  v25 = v24 + 1;
  LODWORD(v20) = *(v0 + 424);
  v26 = *(STACK[0x57D8] + 8 * ((113 * (v24 != 111)) ^ v20));
  *(v0 + 404) = v20;
  *(v0 + 408) = v25;
  return v26();
}

uint64_t sub_10032FDA4()
{
  v0 = STACK[0x51B8] ^ 0x853;
  STACK[0x77C0] = STACK[0x77A8] + 24;
  v1 = STACK[0x7ED8];
  STACK[0xA910] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v1 + 256;
  LODWORD(STACK[0x96DC]) = 0;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10032FE08(uint64_t a1, uint64_t a2, int a3)
{
  v3 = STACK[0x49E0] ^ 0xB88801D4E1C76353 ^ STACK[0x3458];
  STACK[0x5080] = __ROR8__(STACK[0x49E0] ^ 0xB88801D4E1C76353, 8) + v3;
  STACK[0x5098] = __ROR8__(v3, 61);
  LODWORD(STACK[0x55D0]) = 271 * (a3 ^ 0x4C66);
  v4 = STACK[0x4FC0] + LODWORD(STACK[0x52E8]);
  v5 = *v4;
  LODWORD(v3) = *STACK[0x51E8];
  STACK[0x50F0] = *STACK[0x51F0];
  LODWORD(STACK[0x50E8]) = v3 & 0xFFFFFFF8;
  STACK[0x50F8] = v4 & 0xFFFFFFFFFFFFFFF8;
  STACK[0x5100] = __ROR8__(v4 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5110] = 8 * (v4 & 7);
  LODWORD(STACK[0x5108]) = v5 ^ 0xFFFFFFCA;
  LODWORD(v4) = LODWORD(STACK[0x53D0]) != 34;
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) + 34;
  return (*(STACK[0x57D8] + 8 * (a3 ^ (v4 | (2 * v4)))))();
}

uint64_t sub_10033002C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xA6BC]) = v1 + 519824 + ((a1 + 184728681) & 0xF4FCF6CD) + 227;
  if (STACK[0x5D48])
  {
    v2 = STACK[0x7D20] == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  return (*(STACK[0x57D8] + 8 * ((v3 * (((a1 - 23604) | 0x415) ^ 0x51B)) ^ a1)))();
}

uint64_t sub_1003300B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v12 = (v8 ^ (2 * (((2 * (((v10 - 23) | LOBYTE(STACK[0x1B74])) ^ 0xD4) + v9) ^ v8) & (2 * (v8 & 0xF6)) | v8 & 0xF6))) & 0xF;
  v13 = (((v12 ^ 0x9F284EC8) - 1164695) ^ ((v12 ^ 2) + 2062125219) ^ ((v12 ^ 0x52BFD4CC) + 846831725)) - 853903313;
  v14 = 12337 * v13 + 206496429 - 12930 * (((((12337 * v13 + 206496429) >> 1) * a8) >> 32) >> 12);
  *(STACK[0x8070] + v14) ^= *(v11 + (v8 - 520846602));
  return (*(STACK[0x57D8] + 8 * (v10 ^ ((v13 != 769715429) << 6))))();
}

uint64_t sub_1003301B8(unint64_t a1)
{
  v3 = STACK[0x57D8];
  STACK[0x78A8] = *(STACK[0x57D8] + 8 * v1);
  STACK[0xD610] = a1;
  *(a1 + 416) = 0;
  *(a1 + 424) = -769884012;
  *(a1 + 12) = -769884012;
  *(a1 + 16) = 0;
  *(a1 + 24) = -769884012;
  *(a1 + 60) = -769884012;
  *(a1 + 96) = -769884012;
  STACK[0xCF38] = *(v3 + 8 * (v2 - 19792));
  return (*(v3 + 8 * ((v2 - 14934) ^ (v2 - 19792))))();
}

uint64_t sub_10033025C(uint64_t a1)
{
  v2 = STACK[0x57D8];
  STACK[0xCFB8] = *(STACK[0x57D8] + 8 * (v1 - 19903));
  return (*(v2 + 8 * ((v1 ^ 0x505F) + v1 - 19903)))(a1, 16390, -22613, 22798, 4294961082, 186);
}

uint64_t sub_1003302C0@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W6>, int a7@<W7>, unint64_t *a8@<X8>)
{
  STACK[0x9128] = v24;
  STACK[0xE588] = v25;
  v27 = *(*STACK[0x51F0] + (*STACK[0x51E8] & 0x2D5887C)) & 0x7FFFFFFF ^ 0x39E8D924;
  v28 = v19 - v27;
  v29 = (((v9 + 1978732275 * v28) ^ a5) + a4) ^ (v9 + 1978732275 * v28) ^ (((v9 + 1978732275 * v28) ^ a3) + a2) ^ (((v9 + 1978732275 * v28) ^ a1) + v14) ^ (((v9 + 1978732275 * v28) ^ v13) + v22);
  v30 = (((v29 ^ v16) + v12) ^ ((v29 ^ a7) + v15) ^ ((v29 ^ v26) + LODWORD(STACK[0x5710]))) + v23;
  v31 = v18 + (LODWORD(STACK[0x57C0]) - v27) * ((v8 - 2131636278) & 0x7F0E3FDF ^ 0x75F128AF);
  v32 = ((v31 ^ v17) + LODWORD(STACK[0x5790])) ^ v31 ^ ((v31 ^ a6) + LODWORD(STACK[0x5700])) ^ ((v31 ^ LODWORD(STACK[0x5720])) + LODWORD(STACK[0x5730])) ^ ((v31 ^ LODWORD(STACK[0x5740])) + LODWORD(STACK[0x5750]));
  v33 = (((v32 ^ LODWORD(STACK[0x5760])) + v11) ^ ((v32 ^ LODWORD(STACK[0x5770])) + v10) ^ ((v32 ^ LODWORD(STACK[0x5780])) + LODWORD(STACK[0x57A0]))) + LODWORD(STACK[0x57B0]);
  v34 = *a8;
  v35 = STACK[0x57D8];
  STACK[0x9EA8] = *(STACK[0x57D8] + 8 * v21);
  STACK[0xE580] = v20;
  LODWORD(STACK[0xE594]) = v30;
  STACK[0x63F0] = v34;
  v36 = STACK[0x7ED8];
  STACK[0xA4A8] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v36 + 16;
  STACK[0x8910] = 0;
  return (*(v35 + 8 * ((31831 * (v33 == 732939889)) ^ v8)))();
}

uint64_t sub_1003305DC()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 11177)))(*STACK[0xC200] ^ 0xD21C8094);
  STACK[0xE190] = v3;
  if (v3)
  {
    v4 = -143113071;
  }

  else
  {
    v4 = v1;
  }

  LODWORD(STACK[0xE19C]) = v4;
  return (*(v2 + 8 * ((79 * (v3 != 0)) ^ v0)))();
}

uint64_t sub_100330704(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0xAE80];
  v4 = STACK[0x7ED8];
  STACK[0x81C8] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v4 + 16;
  STACK[0xB328] = v3;
  STACK[0x95D8] = 0;
  STACK[0x6110] = 0;
  LODWORD(STACK[0x7364]) = 2101965948;
  v5 = STACK[0x57D8];
  STACK[0xC1C0] = *(STACK[0x57D8] + 8 * v2);
  return (*(v5 + 8 * ((((v2 + 6982) | 4) ^ 0x2E2C) + v2)))(4294960487, a2, 12942, 30467, 15506, 2193001348, 2147336180, 0x5FFBEFAF3FFEDFFBLL);
}

uint64_t sub_1003307F4()
{
  v1 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((13848 * ((v0 ^ 0xB289A8C5) + v0 == -1209465788)) ^ (v0 + 4253))))();
}

uint64_t sub_1003308A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x5338]) = LODWORD(STACK[0x5030]) ^ LODWORD(STACK[0x5120]);
  LODWORD(STACK[0x5118]) = LODWORD(STACK[0x5028]) ^ LODWORD(STACK[0x5308]);
  LODWORD(STACK[0x4FB0]) = LODWORD(STACK[0x5020]) ^ LODWORD(STACK[0x5290]);
  LODWORD(STACK[0x5088]) ^= LODWORD(STACK[0x5740]) ^ LODWORD(STACK[0x55C0]);
  LODWORD(STACK[0x5120]) = LODWORD(STACK[0x5780]) - LODWORD(STACK[0x5790]) + LODWORD(STACK[0x5008]);
  v9 = ((v7 + 0x27A635347FE778DALL - ((v7 + 0x27A635347FE778DALL) >> 31)) >> ((v8 - 16) ^ 0x71u)) + v7 + 0x27A635347FE778DALL - ((v7 + 0x27A635347FE778DALL) >> 31);
  v10 = v9 + (v9 >> 3);
  v11 = a6 & (v10 >> 1) ^ v10;
  v12 = v10 + 0x4CB1C6F61CAE673DLL + ((v10 + 0x4CB1C6F61CAE673DLL) >> 31) - ((v10 + 0x4CB1C6F61CAE673DLL + ((v10 + 0x4CB1C6F61CAE673DLL) >> 31)) >> 14);
  v13 = ((v12 - (v12 >> 7)) ^ 0x9A3624053EF3EC5) - (((v12 - (v12 >> 7)) ^ 0x9A3624053EF3EC5) >> 26) + ((((v12 - (v12 >> 7)) ^ 0x9A3624053EF3EC5) - (((v12 - (v12 >> 7)) ^ 0x9A3624053EF3EC5) >> 26)) >> 8);
  v14 = v13 - (v13 >> 5);
  v15 = (v14 ^ 0x584C78C8901BFFC8) + ((v14 ^ 0x584C78C8901BFFC8) >> 31) - (((v14 ^ 0x584C78C8901BFFC8) + ((v14 ^ 0x584C78C8901BFFC8) >> 31)) >> 14);
  v16 = v15 + (v15 >> 1);
  v17 = v16 + 0x421B29D8C76E291ELL + ((v16 + 0x421B29D8C76E291ELL) >> 30) - ((v16 + 0x421B29D8C76E291ELL + ((v16 + 0x421B29D8C76E291ELL) >> 30)) >> 9);
  v18 = v17 + (v17 >> 5) + 0x5602C15D51E29C81 + ((v17 + (v17 >> 5) + 0x5602C15D51E29C81) >> 29) - ((v17 + (v17 >> 5) + 0x5602C15D51E29C81 + ((v17 + (v17 >> 5) + 0x5602C15D51E29C81) >> 29)) >> 10);
  v19 = v18 + (v18 >> 6);
  LODWORD(v14) = v19 ^ v14;
  v20 = v19 + 0xC4AB56C156A2DA6 - ((v19 + 0xC4AB56C156A2DA6) >> 24) - ((v19 + 0xC4AB56C156A2DA6 - ((v19 + 0xC4AB56C156A2DA6) >> 24)) >> 12);
  v21 = v20 - (v20 >> 1);
  v22 = v11 ^ a4 ^ v16 ^ a6 & (v16 >> 1) ^ v21 ^ a6 & (v21 >> 1);
  v23 = v21 - 0x7AB33688201CF9EFLL - ((v21 - 0x7AB33688201CF9EFLL) >> 30) - ((v21 - 0x7AB33688201CF9EFLL - ((v21 - 0x7AB33688201CF9EFLL) >> 30)) >> 13);
  v24 = v23 - (v23 >> 7) + 0x34310AA9788D5DE9 + ((v23 - (v23 >> 7) + 0x34310AA9788D5DE9) >> 24) + ((v23 - (v23 >> 7) + 0x34310AA9788D5DE9 + ((v23 - (v23 >> 7) + 0x34310AA9788D5DE9) >> 24)) >> 14);
  return (*(STACK[0x57D8] + 8 * v8))(160222512, (v8 + 2137409424), a3, a4, v22, a6, v14 ^ (v24 - (v24 >> 3)) ^ v6 ^ a6 & ((v14 ^ (v24 - (v24 >> 3))) >> 1), 3956742921);
}

uint64_t sub_100330C78(uint64_t a1)
{
  v2 = STACK[0xB750];
  STACK[0x9740] = STACK[0xB750];
  LODWORD(STACK[0x78EC]) = ((((LODWORD(STACK[0x64FC]) ^ 0x6965EA15) - 1768286741) ^ ((LODWORD(STACK[0x64FC]) ^ 0xBF034DC1) + 1090302527) ^ ((LODWORD(STACK[0x64FC]) ^ 0x47A2740) + (v1 ^ 0xFB85CDDE))) - 769883997) & 0xFFFFFFF0 ^ 0xD21C8094;
  STACK[0x7ED0] = v2;
  STACK[0xC880] = 0x78C64FD7560CCEAFLL;
  LODWORD(STACK[0xCD80]) = 606011633;
  return (*(STACK[0x57D8] + 8 * v1))(a1, 272629776, 410912332, 1543499262, 2265206393, 3965507692, 4221484704, 0x1B3EC18598D49E09);
}

uint64_t sub_100330F54()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 + 10025)))();
  **(v0 + 56) = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10033114C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v9 = -v5 - 0x4884020008050320 - v8;
  v10 = (((a2 + 14577) | 0x52u) ^ 0x5859) & (a1 + v7 + a3);
  v12 = (v9 + v6 - a1 - 1) >= 0x10 && (v9 + a4 - a1 - v7 + v10) >= 0x10 && (v9 + v4 - a1 - v7 + v10 + 4) >= 0x10;
  v13 = v9 + STACK[0x4CA8] - a1 - v7 + v10;
  v15 = !v12 || v13 < ((3 * (a2 ^ 0x3DD8u)) ^ 0x6871uLL);
  return (*(STACK[0x57D8] + 8 * ((54 * v15) ^ a2)))();
}

uint64_t sub_100331380()
{
  v1 = STACK[0x51B8];
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(v0);
  return (*(v2 + 8 * (v1 - 18684)))(v3);
}

uint64_t sub_10033145C@<X0>(_DWORD *a1@<X8>)
{
  v2 = STACK[0x51B8] - 22176;
  *a1 = v1;
  return (*(STACK[0x57D8] + 8 * (v2 ^ 0x4096)))();
}

uint64_t sub_1003314D4()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xC1A4];
  LODWORD(STACK[0x9094]) = -32197455;
  return (*(STACK[0x57D8] + 8 * (v0 ^ 0x9F182942 ^ (5464 * (v0 > 0x496E5E40)))))();
}

uint64_t sub_10033157C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x50E8]) = LODWORD(STACK[0x5338]) ^ 0xD2A01AFD;
  LODWORD(STACK[0x5710]) = LODWORD(STACK[0x5398]) - LODWORD(STACK[0x53A0]);
  LODWORD(STACK[0x5500]) = LODWORD(STACK[0x5540]) + 794670899 + a1 - 24;
  LODWORD(STACK[0x55B0]) = LODWORD(STACK[0x5300]) + LODWORD(STACK[0x55B0]) - 1786632384;
  LODWORD(STACK[0x5410]) = LODWORD(STACK[0x53D0]) + LODWORD(STACK[0x54D0]) - 1643997199;
  LODWORD(STACK[0x5408]) = LODWORD(STACK[0x5440]) - LODWORD(STACK[0x55F0]);
  LODWORD(STACK[0x54B0]) = LODWORD(STACK[0x5550]) ^ 0xE00F10B3;
  v1 = LODWORD(STACK[0x54A0]) ^ LODWORD(STACK[0x5400]);
  LODWORD(STACK[0x55F0]) = v1;
  LODWORD(STACK[0x54D0]) = v1 ^ 0x880F6744;
  return (*(STACK[0x57D8] + 8 * a1))(3238856453, 0);
}

uint64_t sub_1003318E4()
{
  v1 = STACK[0xCB30];
  STACK[0xE738] = STACK[0xCB30];
  v2 = STACK[0x7AB8];
  v3 = *(v1 - 0x1883660EE814440ALL) + LODWORD(STACK[0x6AF4]);
  v4 = *(v1 - 0x1883660EE814440ELL);
  LODWORD(STACK[0xE744]) = v3 - 2101965948 + (v0 ^ 0x218D) - 1393;
  v3 -= 6313430;
  v5 = v3 < 0xFA329322;
  v6 = v4 + 2095652518 < v3;
  if (v5 != (v4 + 2095652518) < 0xFA329322)
  {
    v6 = v5;
  }

  v7 = v2 == 0 || v6;
  if (v7)
  {
    v8 = -143155721;
  }

  else
  {
    v8 = -143113071;
  }

  LODWORD(STACK[0xE748]) = v8;
  return (*(STACK[0x57D8] + 8 * ((v7 * (((v0 + 15301) | 0x714) - 26076)) ^ v0)))();
}

uint64_t sub_100331B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0xAF90] = STACK[0xBDF8];
  LODWORD(STACK[0x88FC]) = -1717179058;
  return (*(STACK[0x57D8] + 8 * v3))(113, a2, a3, 108);
}

uint64_t sub_100331B84()
{
  v1 = *(STACK[0x75E0] + 24);
  STACK[0xBF50] = v1;
  return (*(STACK[0x57D8] + 8 * (((v1 == 0) * ((((v0 + 1632390071) & 0x9EB39BFF) + 181) ^ (v0 - 6033))) ^ v0)))();
}

uint64_t sub_100331BF0()
{
  v0 = (STACK[0x51B8] - 946543191) & 0x386AD7EF;
  v1 = STACK[0x51B8] - 19599;
  STACK[0x9DD0] = STACK[0x7968] + SLODWORD(STACK[0xB10C]);
  v2 = STACK[0x57D8];
  STACK[0x7DD8] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 + v0 - 3855)))();
}

uint64_t sub_100331C74()
{
  v0 = STACK[0x51B8] - 1374;
  v1 = *(STACK[0x57D8] + 8 * v0);
  LODWORD(STACK[0x4E08]) = v0;
  return v1();
}

uint64_t sub_100331D0C()
{
  v3 = v1 | 0x100;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * ((v1 | 0x100) + 19149)))(v0 - 0x4322B87CA9B2587);
  *v2 = 0x4322B87CA9B2587;
  return (*(v4 + 8 * v3))(v5);
}

uint64_t sub_100331E10(char a1, char a2, char a3, char a4, int a5, uint64_t a6, int a7, uint64_t a8)
{
  v19 = (a5 ^ 0xC73147D4) & (2 * (a5 & 0x57A567D9)) ^ a5 & 0x57A567D9;
  v20 = ((2 * (a5 ^ 0xC433C9D4)) ^ 0x272D5C1A) & (a5 ^ 0xC433C9D4) ^ (2 * (a5 ^ 0xC433C9D4)) & v8;
  v21 = a5 ^ (2 * (((4 * (v20 ^ 0x1092A205)) ^ 0x4E5AB830) & (v20 ^ 0x1092A205) & (16 * ((v20 ^ 0x3040C08) & (4 * v19) ^ v19)) ^ (v20 ^ 0x3040C08) & (4 * v19) ^ v19));
  v22 = (v21 ^ 0xD3AD67D9) & STACK[0x57C0] ^ v21 & 0x8DC68E79;
  v23 = *(STACK[0x57A0] + (((v22 >> 5) | (8 * (v22 & 0x1F))) ^ 0x1ECCLL));
  v24 = ((((((v23 >> 2) & 0x3E | (v23 << 6)) ^ a7) - 99) ^ ((((v23 >> 2) & 0x3E | (v23 << 6)) ^ 0x45) + 88) ^ ((((v23 >> 2) & 0x3E | (v23 << 6)) ^ 0xFFFFFF97) - 122)) + 121) ^ (a5 - 39);
  v25 = *(STACK[0x4FF8] + v10) ^ (2 * (LODWORD(STACK[0x5790]) ^ (*(STACK[0x4FF8] + v10) ^ 0x49) & STACK[0x57B0] ^ 0x70));
  v26 = (v24 & v18) >> v15;
  v27 = ((a2 ^ (v25 ^ 0xC7) & a1 ^ 2) >> v14) - 2 * (((a2 ^ (v25 ^ 0xC7) & a1 ^ 2) >> v14) & 0x3F) - 65;
  v28 = ((v27 ^ 0xF) - 15) ^ ((v27 ^ 0x41) - 65);
  v29 = (v27 ^ 0xFFFFFFF1) + 15;
  v30 = ((a6 + v24 - ((2 * v24) & 0x11ELL)) ^ a6) << v12 << v13;
  v31 = (((((v25 ^ v16) << a3) ^ 0x5B) + 107) ^ ((((v25 ^ v16) << a3) ^ a7) - 64) ^ ((((v25 ^ v16) << a3) ^ v16) - 27)) + (v28 ^ v29) - 46;
  LOBYTE(v25) = v31 & 0xBF ^ 0x82;
  LOBYTE(v31) = a4 ^ v31 ^ (2 * ((v31 ^ 0x3A) & (2 * ((v31 ^ 0x3A) & (2 * ((v31 ^ 0x3A) & (2 * ((v31 ^ 0x3A) & (2 * ((v31 ^ 0x3A) & (2 * ((v31 ^ 0x3A) & (2 * v25) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25));
  LOBYTE(v31) = 55 * (((v31 ^ 0xBE) - 47) ^ ((v31 ^ 0x25) + 76) ^ ((v31 ^ a7) - 31)) - 37;
  v32 = (v30 ^ v11 ^ (v26 - ((2 * v26) & 0x38) + 28)) ^ 0x1C;
  LOBYTE(v31) = v31 ^ (2 * (v31 & (2 * (v31 & (2 * (((2 * ((v17 | (2 * ((v17 | (2 * (((2 * (v31 & 1)) | 1) & v31))) & v31))) & v31)) ^ 0x66) & v31 ^ v31 & 0x67 ^ 0x73)) ^ v31 & 0x67 ^ 0x73)) ^ v31 & 0x67 ^ 0x73));
  LOBYTE(v31) = v31 ^ *(STACK[0x57A0] + (v31 ^ 0xA3u) + 49792);
  LOBYTE(v31) = (((v31 ^ 0x87) + 105) ^ ((v31 ^ 0x45) - 85) ^ ((v31 ^ 5) - 21)) + 11;
  v33 = v31 & 0x81 ^ 0x21;
  LOBYTE(v28) = v31 ^ 0x3E;
  *(a8 + (7 * v32 - 260 * (((14119 * v32) >> 16) >> 3))) = v31 ^ (2 * (v28 & (2 * (v28 & (2 * (v28 & (2 * (v28 & (2 * (v28 & (2 * (((2 * v31) ^ 0x3E) & v28 ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ 0x64;
  return (*(STACK[0x57D8] + 8 * ((77 * (v10 != 255)) ^ v9)))();
}

uint64_t sub_100332250@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x1D4C0]) = (v1 + 1717148634) ^ (1964904101 * ((-1587006523 - ((v2 - 240) | 0xA16833C5) + ((v2 - 240) | 0x5E97CC3A)) ^ 0xA4B527BE));
  STACK[0x1D4C8] = a1;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x2413)))(v2 - 240);
  return (*(v3 + 8 * (v1 + 3359)))(v4);
}

uint64_t sub_100332398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x4A38]) = v5;
  LODWORD(STACK[0x5630]) = v5 ^ 0x7FAC9546;
  return (*(STACK[0x57D8] + 8 * (v4 - 5250)))(a1, a2, a3, a4, 10496);
}

void *sub_1003323EC()
{
  v0 = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1730]));
  v1 = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x172C]) ^ (LODWORD(STACK[0x1728]) | 0xC6)));
  LODWORD(STACK[0x7F60]) = LODWORD(STACK[0xA334]) - 1769667824;
  STACK[0x8660] = v0;
  return v1(&STACK[0x7F60]);
}

uint64_t sub_100332590()
{
  if (STACK[0xAF60])
  {
    v1 = LODWORD(STACK[0x9C68]) == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = v1;
  return (*(STACK[0x57D8] + 8 * ((v2 * (((v0 - 26461) ^ 0x7F40) - 28144)) ^ v0)))();
}

uint64_t sub_1003325E4()
{
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x6629)))(32);
  v5 = (v0 - 1882634842);
  *(v2 + 3376) = v5;
  *(STACK[0xA598] + 16 * v5) = v4;
  return (*(v3 + 8 * (((((806 * (v1 ^ 0x1A1A) - 8342) | 0x401) ^ 0xC0C) * (v4 == 0)) ^ v1)))();
}

uint64_t sub_1003327F4()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))(STACK[0x57C0]);
  return (*(v1 + 8 * (v0 - 12480)))(v2);
}

uint64_t sub_100332828@<X0>(uint64_t a1@<X8>)
{
  v3 = STACK[0x3728];
  v4 = LODWORD(STACK[0x3728]) < 0xF6F08480;
  *(v1 - 152) = a1;
  LODWORD(STACK[0x56C0]) = v4;
  LODWORD(STACK[0x56D0]) = (v2 - 98370063) & 0x5DCF973;
  v5 = (v2 + 3843) | 0x420A;
  v6 = STACK[0x3B40];
  LODWORD(STACK[0x5680]) = v5;
  if (LODWORD(STACK[0x56C0]) != v6 > v5 + 151980148)
  {
    v7 = STACK[0x56C0];
  }

  else
  {
    v7 = v3 > v6 - 152009600;
  }

  return (*(STACK[0x57D8] + 8 * ((v7 * (LODWORD(STACK[0x56D0]) - 5480)) ^ v2)))();
}

uint64_t sub_10033295C()
{
  v4 = (v0 - 20566) | 0x5100;
  v5 = v0 + 4594;
  *(v1 + 600) = (v0 - 1723133771) ^ (1917435887 * (v2 ^ 0xE6BB5B06));
  *(v1 + 592) = 0;
  v6 = v0 ^ 0x2466;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * v6))(v3 - 240);
  v10 = *STACK[0x4678] == v4 - 22784 && *STACK[0x4630] != 0;
  return (*(v7 + 8 * ((223 * v10) ^ v5)))(v8);
}

uint64_t sub_100332A8C(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x5208]) = STACK[0x51C8] & 0x37818C77;
  LODWORD(STACK[0x51B0]) = LODWORD(STACK[0x5198]) + LODWORD(STACK[0x51A0]);
  v13 = (v11 + a1) >> 16;
  v14 = v7 - ((v11 + v9 - ((v11 + v9 - ((v11 + a1 - v13) >> 8) - v13) >> 15) - ((v11 + a1 - v13) >> 8) - v13) >> 1) - ((v11 + v9 - ((v11 + a1 - v13) >> 8) - v13) >> 15) + v11 - ((v11 + a1 - v13) >> 8) - v13 + v8;
  v15 = (v14 ^ 0x532879D) - ((v14 ^ 0x532879D) >> 12) - (((v14 ^ 0x532879D) - ((v14 ^ 0x532879D) >> 12)) >> 3);
  v16 = (((v12 ^ 0x2F9D) - 1248296372) ^ v15) - ((((v12 ^ 0x2F9D) - 1248296372) ^ v15) >> 12);
  v17 = ((v16 >> 5) ^ v16) + 2 * ((v16 >> 5) & v16);
  v18 = v17 ^ v6 ^ a6 & (2 * v17);
  v19 = v17 - 703006089 - ((v17 - 703006089) >> 12) + ((v17 - 703006089 - ((v17 - 703006089) >> 12)) >> 4);
  v20 = (v19 ^ 0x23D5A77A) + ((v19 ^ 0x23D5A77A) >> 13) + (((v19 ^ 0x23D5A77A) + ((v19 ^ 0x23D5A77A) >> 13)) >> 1);
  v21 = v20 - 1713108986 - ((v20 - 1713108986) >> 14) + ((v20 - 1713108986 - ((v20 - 1713108986) >> 14)) >> 5);
  v22 = a6 & (2 * v21) ^ v21;
  LODWORD(STACK[0x51C8]) = v18;
  LODWORD(STACK[0x5198]) = v22;
  LODWORD(STACK[0x54A0]) = v22 & v18;
  v23 = (v21 ^ 0xAD9C4459) - ((v21 ^ 0xAD9C4459) >> 12) - (((v21 ^ 0xAD9C4459) - ((v21 ^ 0xAD9C4459) >> 12)) >> 2);
  v24 = v23 + 1278014022 - ((v23 + 1278014022) >> 10) - ((v23 + 1278014022 - ((v23 + 1278014022) >> 10)) >> 6);
  v25 = v24 - 642588001 + ((v24 - 642588001) >> 11) - ((v24 - 642588001 + ((v24 - 642588001) >> 11)) >> 5);
  LODWORD(STACK[0x51A8]) = v25;
  LODWORD(STACK[0x51A0]) = 2 * v25;
  v26 = STACK[0x5640];
  v27 = LODWORD(STACK[0x5720]) ^ LODWORD(STACK[0x5640]);
  v28 = a6 & (2 * (v27 ^ LODWORD(STACK[0x5700])));
  v29 = a6 & (2 * v26) ^ v26;
  v30 = a6 & (2 * (LODWORD(STACK[0x5740]) ^ v26 ^ LODWORD(STACK[0x5710]))) ^ LODWORD(STACK[0x5740]) ^ v26 ^ LODWORD(STACK[0x5780]) ^ a4 ^ v15 ^ v20 ^ v24 ^ a6 & (2 * (v20 ^ v15 ^ v24));
  v31 = STACK[0x5590];
  v32 = LODWORD(STACK[0x5570]) ^ LODWORD(STACK[0x5590]) ^ LODWORD(STACK[0x5730]);
  LODWORD(STACK[0x5190]) = v30;
  LODWORD(STACK[0x5188]) = -v30;
  LODWORD(STACK[0x56F0]) = v32;
  LODWORD(STACK[0x5780]) = 2 * v32;
  v33 = LODWORD(STACK[0x5248]) ^ 0x4DC78B3C ^ v27;
  LODWORD(STACK[0x5180]) = 2 * v31;
  LODWORD(STACK[0x57A0]) = v29;
  LODWORD(STACK[0x54B0]) = v33 ^ v29 ^ v28 ^ v10 ^ v14 ^ v19 ^ v23 ^ a6 & (2 * (v19 ^ v14 ^ v23));
  return (*(STACK[0x57D8] + 8 * v12))();
}

uint64_t sub_10033323C@<X0>(int a1@<W8>)
{
  v1 = STACK[0x86B8];
  *(v1 + 318) = 0xF0F0F0F0F0F0F0FLL;
  *(v1 + 326) = 0xF0F0F0F0F0F0F0FLL;
  return (*(STACK[0x57D8] + 8 * a1))(3203135744, 4151046108, 2075523054, 6992);
}

uint64_t sub_10033329C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = (*((v9 ^ 0x2Au) + STACK[0x5490] + 11810) ^ 0x19) * v8;
  *(STACK[0x8070] + a8 + (v12 + 6968) * v9 - (((((a8 + (v12 + 6968) * v9) >> 1) * v10) >> 32) >> 12) * v11) = *STACK[0x8070] ^ 0xB7 ^ *(STACK[0x8070] + v13 - (((1328683 * v13) >> 32) >> 2) * v11);
  return (*(STACK[0x57D8] + 8 * ((8198 * (v9 == 255)) ^ v12)))();
}

uint64_t sub_100333340@<X0>(int a1@<W8>)
{
  v1 = *(STACK[0x4D10] + 8) + (LODWORD(STACK[0x89EC]) << 7);
  STACK[0x8180] = v1;
  return (*(STACK[0x57D8] + 8 * ((*(v1 + 8) == 0x79296B4A625EDF44) ^ a1)))();
}

uint64_t sub_10033344C@<X0>(int a1@<W8>)
{
  v4 = v1 & 0x7FFFFFFF;
  v5 = v3 + v2 + (v4 ^ 0x5A47C858);
  v6 = (v4 ^ 0xA5B837A7) + 1;
  v7 = v6 ^ v5;
  v8 = v6 ^ v5 ^ 0xD682C5D2;
  v9 = (v6 ^ v5) & (2 * (v6 & v5)) ^ v6 & v5;
  v10 = ((2 * v8) ^ 0xAD058BA4) & v8 ^ (2 * v8) & 0xD682C5D2;
  v11 = (v10 ^ 0x84008182) & (4 * v9) ^ v9;
  v12 = ((4 * (v10 ^ 0x52824452)) ^ 0x5A0B1748) & (v10 ^ 0x52824452) ^ (4 * (v10 ^ 0x52824452)) & 0xD682C5D0;
  v13 = (v12 ^ 0x52020540) & (16 * v11) ^ v11;
  v14 = ((16 * (v12 ^ 0x8480C092)) ^ 0x682C5D20) & (v12 ^ 0x8480C092) ^ (16 * (v12 ^ 0x8480C092)) & 0xD682C5D0;
  v15 = v13 ^ 0xD682C5D2 ^ (v14 ^ 0x40004500) & (v13 << 8);
  v16 = v7 ^ (2 * ((v15 << 16) & 0x56820000 ^ v15 ^ ((v15 << 16) ^ 0x45D20000) & (((v14 ^ 0x968280D2) << 8) & 0x56820000 ^ 0x54020000 ^ (((v14 ^ 0x968280D2) << 8) ^ 0x82C50000) & (v14 ^ 0x968280D2))));
  v18 = v16 == 604081060 || ((3 * (a1 ^ 0x3FFF) - 22599) & v16) != 4;
  return (*(STACK[0x57D8] + 8 * ((v18 * ((a1 + 3662) ^ 0x3171)) ^ a1)))();
}

uint64_t sub_1003336B0@<X0>(int a1@<W8>)
{
  STACK[0x77A0] = STACK[0x7A40];
  STACK[0x9170] = 0;
  LODWORD(STACK[0xC554]) = 2101965948;
  STACK[0xA790] = 0;
  STACK[0xCBC0] = &STACK[0xA790];
  LODWORD(STACK[0x94E4]) = 1169041403;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_100333790()
{
  v1 = STACK[0x57D8];
  STACK[0xB2F0] = *(STACK[0x57D8] + 8 * (v0 - 30623));
  return (*(v1 + 8 * (v0 - 24747)))();
}

uint64_t sub_100333B34(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v14 = v8 | 0x30;
  LODWORD(STACK[0x5780]) = v14;
  v15 = (v14 + 1520830461) & 0xA559F7DD;
  LODWORD(STACK[0x57B0]) = v15;
  v16 = (*(v10 + (LODWORD(STACK[0x4980]) ^ 0x63u) + 13086) - ((v15 - 6) ^ LODWORD(STACK[0x4980]))) ^ 0xFFFFFFE3;
  v17 = *(v10 + (LODWORD(STACK[0x4998]) ^ 0xD4u) + 23646);
  v18 = (*(v10 + (LODWORD(STACK[0x4988]) ^ 0xC6u) + 3847) - 92) ^ 0xFFFFFF89;
  v19 = v17 ^ ((v17 ^ 0x30) >> 5) ^ ((v17 ^ 0x30) >> 3) ^ 0xFFFFFFFE;
  v20 = v19 ^ (2 * (v19 & a8));
  v21 = LODWORD(STACK[0x49A8]) ^ 0x3D ^ *(v10 + (LODWORD(STACK[0x49A8]) ^ 0xEBu) + 17458);
  v22 = v21 ^ (2 * (v21 & a8));
  v23 = *(v10 + (LODWORD(STACK[0x49B0]) ^ 0x4Cu) + 7183) ^ 0xFFFFFFFC;
  v24 = v23 ^ (2 * (v23 & a8));
  v25 = v10 + (LODWORD(STACK[0x49B8]) ^ 0xB5u);
  v26 = *(v10 + (LODWORD(STACK[0x49A0]) ^ 0x34u) + 16689);
  v27 = v10 + (LODWORD(STACK[0x4B28]) ^ 0xD5u);
  v28 = ((v26 >> 7) | (2 * v26)) ^ 0x7B ^ (2 * ((((v26 >> 7) | (2 * v26)) ^ 0x7B) & a8));
  LOBYTE(v26) = (*(v10 + (LODWORD(STACK[0x49C8]) ^ 6u) + 23390) - 25) ^ 0x41;
  LODWORD(v25) = *(v25 + 3335) ^ (16 * *(v25 + 3335)) ^ 0xFFFFFFC4;
  v29 = STACK[0x5770];
  v31 = STACK[0x5760];
  LODWORD(STACK[0x5720]) = ((((v18 ^ (2 * (v18 & a8))) & STACK[0x5770]) >> v11) | ((v18 ^ (2 * (v18 & a8))) << v12)) ^ LODWORD(STACK[0x5760]);
  LODWORD(STACK[0x56D0]) = (v20 << v12) ^ a6 ^ ((v20 & v29) >> v11);
  v32 = (v26 ^ (2 * (v26 & a8)));
  v34 = (-43 * *(v27 + 14629)) ^ 7;
  v35 = (((v25 ^ (2 * (v25 & a8))) & v9) >> v11) + ((v25 ^ (2 * (v25 & a8))) << v12);
  v36 = (((v32 & v29) >> v11) ^ v31) + (v32 << v12) - 2 * ((((v32 & v29) >> v11) ^ v31) & (v32 << v12));
  v37 = (v24 & v29) >> v11;
  v38 = (((v28 & v9) >> v11) | (v28 << v12)) ^ v31;
  LOBYTE(v28) = ((((v16 ^ (2 * (v16 & a8))) & v9) >> v11) + ((v16 ^ (2 * (v16 & a8))) << v12)) ^ a6;
  v39 = v34 ^ (2 * (v34 & STACK[0x5750]));
  v40 = v24 << v12;
  v41 = (*(v10 + (LODWORD(STACK[0x4B20]) ^ 0x17u) + 6927) + 44) ^ 0x7E;
  v42 = (LODWORD(STACK[0x4B10]) ^ 0xFFFFFF8C) + LODWORD(STACK[0x4B10]) + *(v10 + (LODWORD(STACK[0x4B10]) ^ 0x28u) + 512);
  LODWORD(v25) = LODWORD(STACK[0x4B18]) ^ 0xFFFFFFDE ^ *(v10 + (LODWORD(STACK[0x4B18]) ^ 0x6Fu) + 7695);
  LODWORD(v25) = v25 ^ (2 * (v25 & LODWORD(STACK[0x5750])));
  LODWORD(STACK[0x5730]) = ((((v41 ^ (2 * (v41 & LOBYTE(STACK[0x5750])))) & v9) >> v11) | ((v41 ^ (2 * (v41 & STACK[0x5750]))) << v12)) ^ v31;
  v43 = (v42 - 127) ^ 0xFFFFFFA2 ^ (2 * (((v42 - 127) ^ 0xFFFFFFA2) & STACK[0x5750]));
  LODWORD(v27) = STACK[0x5750] & 0x5FEF2D9D;
  v44 = (v43 & v29) >> v11;
  v45 = v10;
  v46 = *(v10 + (LODWORD(STACK[0x4B08]) ^ 0x86u) + 17716) + 28;
  v47 = v43 << v12;
  LOBYTE(v41) = (v25 << v12) ^ v31 ^ ((v25 & v9) >> v11);
  v48 = ((((v22 & v9) >> v11) + (v22 << v12)) ^ v31) << 24;
  v49 = (v46 ^ 0xFFFFFFB6) & STACK[0x5750];
  LODWORD(STACK[0x56F0]) = (v44 | v47) ^ a6;
  v50 = *(v45 + (LODWORD(STACK[0x4B00]) ^ 0xDCu) + 9491);
  v51 = v35 ^ a6;
  v52 = v36;
  v53 = (((v46 ^ 0xB6 ^ (2 * v49)) & v29) >> v11) + ((v46 ^ 0xFFFFFFB6 ^ (2 * v49)) << v12);
  LOBYTE(v46) = (((v39 & v29) >> v11) | (v39 << v12)) ^ a6;
  v54 = ((v50 >> 5) | (8 * v50)) ^ 0xFFFFFFC0 ^ (2 * ((((v50 >> 5) | (8 * v50)) ^ 0xFFFFFFC0) & STACK[0x5750]));
  v55 = (*(v45 + (LODWORD(STACK[0x4990]) ^ 6u) + 20032) + (LODWORD(STACK[0x4990]) ^ 0x55)) ^ 0x73;
  v56 = __ROR4__(__ROR4__(v27, 15) ^ 0xEDCB7D86, 16);
  v57 = v53 ^ a6;
  v58 = v55 ^ (2 * (v55 & STACK[0x5750]));
  v59 = v45 + (LODWORD(STACK[0x4AF8]) ^ 0xADu);
  LOBYTE(v45) = v40 ^ a6 ^ v37;
  v60 = v48 & 0xFF000000 | (LODWORD(STACK[0x56D0]) << 16) | (LODWORD(STACK[0x5720]) << 8) | v28;
  v61 = *(v13 + 4 * v46);
  v62 = (v51 << 56) | (v52 << 48) | (v45 << 32) | (v38 << 40);
  LODWORD(v51) = (((*(v59 + 5132) ^ 0xD7 ^ (2 * ((*(v59 + 5132) ^ 0xD7) & STACK[0x5750]))) & v9) >> v11) + ((*(v59 + 5132) ^ 0xFFFFFFD7 ^ (2 * ((*(v59 + 5132) ^ 0xFFFFFFD7) & STACK[0x5750]))) << v12);
  v63 = (v41 << 16) | (LODWORD(STACK[0x56F0]) << 24) | v46 | (LODWORD(STACK[0x5730]) << 8);
  STACK[0x5730] = v57;
  v64 = *(v13 + 4 * v28);
  v65 = STACK[0x4E90];
  LOBYTE(v28) = (((v58 & v29) >> v11) | (v58 << v12)) ^ v31;
  LODWORD(v59) = *(v13 + 4 * BYTE2(v60));
  v66 = STACK[0x5740];
  v67 = ((a4 & (v56 ^ 0xA269C056)) << v12) ^ LODWORD(STACK[0x5740]) ^ ((v9 & (v56 ^ 0xA269C056)) >> v11);
  HIDWORD(v68) = *(v13 + ((v60 >> 22) & 0x3FC));
  LODWORD(v68) = HIDWORD(v68);
  v69 = (((((v54 & v9) >> v11) | (v54 << v12)) ^ v31) << 40) | (v28 << 48);
  v70 = *(v13 + 4 * BYTE1(v60));
  v71 = STACK[0x5770];
  v72 = v69 | ((v51 ^ LODWORD(STACK[0x5740])) << 56);
  v73 = (v62 | (v68 >> 16) ^ __ROR4__(v64, 8) ^ v70 ^ __ROR4__(v59, 24)) ^ (((a4 & (v65 & 0xCB476EAA ^ 0x65A3B755)) << v12) ^ v31 ^ ((STACK[0x5770] & (v65 & 0xCB476EAA ^ 0x65A3B755)) >> v11) | (v67 << 32));
  v74 = *(v13 + ((v63 >> 22) & 0x3FC));
  v76 = v73 ^ (v73 << 24);
  HIDWORD(v68) = *(v13 + 4 * BYTE2(v63));
  LODWORD(v68) = HIDWORD(v68);
  v77 = v68 >> 24;
  v78 = *(v13 + 4 * BYTE1(v63));
  v79 = STACK[0x4E90] & 0x7968A518 ^ 0xBCB4528C;
  LODWORD(v69) = v9 & v79;
  v80 = STACK[0x4E90] & 0x19BA37A8 ^ LODWORD(STACK[0x5770]) ^ 0x11222428;
  v81 = a4 & v79;
  v82 = v69 >> v11;
  if (!v12)
  {
    v80 = STACK[0x4AF0];
  }

  v75 = (v63 | (v57 << 32) | v72) ^ ((((v71 & (v65 & 0x3410E036 ^ 0x9A08701B)) >> v11) | ((a4 & (v65 & 0x3410E036 ^ 0x9A08701B)) << v12)) ^ v31 | (((((v9 & (v65 & 0x52E7A618 ^ 0xA973D30C)) >> v11) + ((a4 & (v65 & 0x52E7A618 ^ 0xA973D30C)) << v12)) ^ v66) << 32));
  v83 = v76 ^ (((a4 & (v65 & 0x2D686E30 ^ 0x96B43718)) << v12) ^ v66 ^ ((v9 & (v65 & 0x2D686E30 ^ 0x96B43718)) >> v11) | ((((a4 & (v65 & STACK[0x1854] ^ 0x27735AA4)) << v12) ^ v31 ^ ((v71 & (v65 & STACK[0x1854] ^ 0x27735AA4u)) >> v11)) << 32)) ^ (v76 >> 16) ^ v75 ^ (v75 >> 24);
  v84 = (v77 ^ __ROR4__(v61, 8) ^ v78 ^ __ROR4__(v74, 16) | (STACK[0x5730] << 32) | v72) ^ ((((v80 & (STACK[0x4E90] & 0x19BA37A8 ^ 0xCDD1BD4u)) >> v11) + ((a4 & (STACK[0x4E90] & 0x19BA37A8 ^ 0xCDD1BD4)) << v12)) ^ v66 | (((v81 << v12) ^ v31 ^ v82) << 32));
  v85 = v83 ^ (((a4 & (v65 & 0xC697083E ^ 0xE34B841F)) << v12) ^ v66 ^ ((v71 & (v65 & 0xC697083E ^ 0xE34B841F)) >> v11) | (((((v9 & (v65 & 0x81E6010C ^ 0x40F30086)) >> v11) | ((a4 & (v65 & 0x81E6010C ^ 0x40F30086)) << v12)) ^ v31) << 32));
  HIDWORD(v86) = *(v13 + 4 * ((v76 ^ ((a4 & (v65 & 0x2D686E30 ^ 0x96B43718)) << v12) ^ v66 ^ ((v9 & (v65 & 0x2D686E30 ^ 0x96B43718)) >> v11) ^ (v76 >> 16) ^ v75 ^ (v75 >> 24)) >> 16));
  LODWORD(v86) = HIDWORD(v86);
  v87 = v84 ^ (v84 << 24) ^ ((((v71 & (v65 & 0xBB96A346 ^ 0xDDCB51A3)) >> v11) + ((a4 & (v65 & 0xBB96A346 ^ 0xDDCB51A3)) << v12)) ^ v66 | (((((v9 & (v65 & 0x8BDF4B74 ^ 0x45EFA5BA)) >> v11) | ((a4 & (v65 & 0x8BDF4B74 ^ 0x45EFA5BA)) << v12)) ^ v31) << 32)) ^ ((v84 ^ (v84 << 24)) >> 16) ^ v85 ^ (v85 >> 24);
  v88 = (v83 & 0xFFFFFFFF00000000 | (v86 >> 24) ^ __ROR4__(*(v13 + 4 * ((v76 ^ ((a4 & (v65 & 0x2D686E30 ^ 0x96B43718)) << v12) ^ v66 ^ ((v9 & (v65 & 0x2D686E30 ^ 0x96B43718)) >> v11) ^ (v76 >> 16) ^ v75 ^ (v75 >> 24)) >> 24)), 16) ^ __ROR4__(*(v13 + 4 * (v76 ^ ((a4 & (v65 & 0x30 ^ 0x18)) << v12) ^ v66 ^ ((v9 & (v65 & 0x2D686E30 ^ 0x96B43718)) >> v11) ^ BYTE2(v76) ^ v75 ^ BYTE3(v75))), 8) ^ *(v13 + 4 * BYTE1(v83))) ^ (((a4 & (v65 & 0xA4C06746 ^ 0xD26033A3)) << v12) ^ v66 ^ ((v71 & (v65 & 0xA4C06746 ^ 0xD26033A3)) >> v11) | ((((a4 & (v65 & 0x88687404 ^ 0x44343A02)) << v12) ^ v31 ^ ((v9 & (v65 & 0x88687404 ^ 0x44343A02)) >> v11)) << 32));
  v89 = v87 ^ ((((v9 & (v65 & 0x87E78948 ^ 0xC3F3C4A4)) >> v11) + ((a4 & (v65 & 0x87E78948 ^ 0xC3F3C4A4)) << v12)) ^ v66 | (((((v71 & (v65 & 0xC0CA3702 ^ 0x60651B81)) >> v11) | ((a4 & (v65 & 0xC0CA3702 ^ 0x60651B81)) << v12)) ^ v31) << 32));
  v90 = v88 ^ (v88 << 24) ^ ((((v9 & (v65 & 0x28A677EE ^ 0x94533BF7)) >> v11) + ((a4 & (v65 & 0x28A677EE ^ 0x94533BF7)) << v12)) ^ v31 | (((((v71 & (v65 & 0xC16F540 ^ 0x860B7AA0)) >> v11) + ((a4 & (v65 & 0xC16F540 ^ 0x860B7AA0)) << v12)) ^ v66) << 32)) ^ ((v88 ^ (v88 << 24)) >> 16) ^ v89 ^ (v89 >> 24);
  v91 = (v87 & 0xFFFFFFFF00000000 | (*(v13 + 4 * BYTE1(v87)) ^ __ROR4__(*(v13 + 4 * v87), 8)) ^ __ROR4__(*(v13 + 4 * BYTE2(v87)), 24) ^ __ROR4__(*(v13 + 4 * BYTE3(v87)), 16)) ^ ((((v71 & (v65 & 0x8AA55F82 ^ 0xC552AFC1)) >> v11) + ((a4 & (v65 & 0x8AA55F82 ^ 0xC552AFC1)) << v12)) ^ v66 | ((((a4 & (v65 & 0x2C657F1E ^ 0x9632BF8F)) << v12) ^ v31 ^ ((v9 & (v65 & 0x2C657F1E ^ 0x9632BF8F)) >> v11)) << 32));
  v92 = v91 ^ (v91 << 24);
  v93 = v90 ^ ((((v71 & (v65 & 0x7FCEB7C4 ^ 0x3FE75BE2u)) >> v11) + ((a4 & (v65 & 0x7FCEB7C4 ^ 0x3FE75BE2)) << v12)) ^ v31 | ((((a4 & (v65 & 0x7F522CF4 ^ 0x3FA9167A)) << v12) ^ v66 ^ ((v9 & (v65 & 0x7F522CF4 ^ 0x3FA9167Au)) >> v11)) << 32));
  HIDWORD(v86) = *(v13 + 4 * v90);
  LODWORD(v86) = HIDWORD(v86);
  LODWORD(v83) = v65 & 0x30999422 ^ 0x984CCA11;
  LODWORD(v91) = (v9 & v83) >> v11;
  v94 = v92 ^ (((a4 & (v65 & 0x359C6B20 ^ 0x1ACE3590)) << v12) ^ v31 ^ ((v71 & (v65 & 0x359C6B20 ^ 0x1ACE3590u)) >> v11) | (((((v9 & (v65 & 0x45D34E9A ^ 0x22E9A74Du)) >> v11) | ((a4 & (v65 & 0x45D34E9A ^ 0x22E9A74D)) << v12)) ^ v66) << 32)) ^ (v92 >> 16) ^ v93 ^ (v93 >> 24);
  v95 = (v90 & 0xFFFFFFFF00000000 | (v86 >> 8) ^ __ROR4__(*(v13 + 4 * BYTE2(v90)), 24) ^ *(v13 + 4 * BYTE1(v90)) ^ __ROR4__(*(v13 + 4 * BYTE3(v90)), 16)) ^ ((v91 | ((a4 & v83) << v12)) ^ v66 | (((((v71 & (v65 & 0x1FF17D9Au ^ LODWORD(STACK[0x1858]))) >> v11) + ((a4 & (v65 & 0x1FF17D9A ^ LODWORD(STACK[0x1858]))) << v12)) ^ v31) << 32));
  v96 = v94 ^ ((((v71 & (v65 & 0x13858798 ^ 0x9C2C3CCu)) >> v11) | ((a4 & (v65 & 0x13858798 ^ 0x9C2C3CC)) << v12)) ^ v66 | (((((v9 & (v65 & 0x57E4056E ^ 0xABF202B7)) >> v11) | ((a4 & (v65 & 0x57E4056E ^ 0xABF202B7)) << v12)) ^ v31) << 32));
  HIDWORD(v86) = *(v13 + 4 * BYTE2(v94));
  LODWORD(v86) = HIDWORD(v86);
  v97 = v95 ^ (v95 << 24) ^ ((((v71 & (v65 & 0x92E706D8 ^ 0x4973836C)) >> v11) | ((a4 & (v65 & 0x92E706D8 ^ 0x4973836C)) << v12)) ^ v31 | (((((v9 & (v65 & 0x8952D6D2 ^ 0xC4A96B69)) >> v11) | ((a4 & (v65 & 0x8952D6D2 ^ 0xC4A96B69)) << v12)) ^ v66) << 32)) ^ ((v95 ^ (v95 << 24)) >> 16) ^ v96 ^ (v96 >> 24);
  v98 = (v94 & 0xFFFFFFFF00000000 | (v86 >> 24) ^ __ROR4__(*(v13 + 4 * v94), 8) ^ *(v13 + 4 * BYTE1(v94)) ^ __ROR4__(*(v13 + 4 * BYTE3(v94)), 16)) ^ ((((v9 & (v65 & 0x17DDB370 ^ 0xBEED9B8u)) >> v11) | ((a4 & (v65 & 0x17DDB370 ^ 0xBEED9B8)) << v12)) ^ v31 | ((((a4 & (v65 & 0x3E461B3A ^ 0x9F230D9D)) << v12) ^ v66 ^ ((v71 & (v65 & 0x3E461B3A ^ 0x9F230D9D)) >> v11)) << 32));
  LODWORD(v95) = *(v13 + 4 * (v97 >> (v91 & 0x10) >> (v91 & 0x10 ^ 0x10)));
  v99 = v97 ^ (((a4 & (v65 & 0x2192BAE0 ^ 0x90C95D70)) << v12) ^ v66 ^ ((v71 & (v65 & 0x2192BAE0 ^ 0x90C95D70)) >> v11) | (((((v9 & (v65 & 0xCE5F0A66 ^ 0x672F8533)) >> v11) + ((a4 & (v65 & 0xCE5F0A66 ^ 0x672F8533)) << v12)) ^ v31) << 32));
  v100 = v98 ^ (v98 << 24) ^ (((a4 & (v65 & 0xC0130F0E ^ 0x60098787)) << v12) ^ v31 ^ ((v71 & (v65 & 0xC0130F0E ^ 0x60098787)) >> v11) | (((((v9 & (v65 & 0x2BD0A844 ^ 0x95E85422)) >> v11) + ((a4 & (v65 & 0x2BD0A844 ^ 0x95E85422)) << v12)) ^ v66) << 32)) ^ ((v98 ^ (v98 << 24)) >> 16) ^ v99 ^ (v99 >> 24);
  v101 = 131586 * LODWORD(STACK[0x4AC0]);
  v102 = (v97 & 0xFFFFFFFF00000000 | (*(v13 + 4 * BYTE1(v97)) ^ __ROR4__(v95, 24)) ^ __ROR4__(*(v13 + 4 * v97), 8) ^ __ROR4__(*(v13 + 4 * BYTE3(v97)), 16)) ^ ((((v71 & (v65 & 0x52F31380 ^ 0x297989C0u)) >> v11) + ((a4 & (v65 & 0x52F31380 ^ 0x297989C0)) << v12)) ^ v66 | (((((v9 & (v65 & 0x4B3D17A4 ^ 0x259E8BD2u)) >> v11) | ((a4 & (v65 & 0x4B3D17A4 ^ 0x259E8BD2)) << v12)) ^ v31) << 32));
  v103 = v100 & 0xFFFFFFFF00000000;
  v104 = *(v13 + 4 * v100);
  v105 = ((a4 & (v65 & 0x35E62FD4 ^ 0x9AF317EA)) << v12) ^ v66 ^ ((v9 & (v65 & 0x35E62FD4 ^ 0x9AF317EA)) >> v11) | (((((v71 & (v65 & 0x83C54750 ^ 0xC1E2A3A8)) >> v11) + ((a4 & (v65 & 0x83C54750 ^ 0xC1E2A3A8)) << v12)) ^ v31) << 32);
  LODWORD(v75) = *(v13 + 4 * BYTE3(v100));
  v106 = *(v13 + 4 * BYTE2(v100));
  v107 = *(v13 + 4 * BYTE1(v100));
  v108 = v102 ^ (v102 << 24) ^ ((((v9 & (v101 & 0x1B9066 ^ 0xDC833u)) >> v11) | ((a4 & (v101 & 0x1B9066 ^ 0xDC833)) << v12)) ^ v66 | ((((a4 & (v65 & 0xE93E4A4A ^ 0xF49F2525)) << v12) ^ v31 ^ ((v71 & (v65 & 0xE93E4A4A ^ 0xF49F2525)) >> v11)) << 32)) ^ ((v102 ^ (v102 << 24)) >> 16) ^ v100 ^ v105 ^ ((v100 ^ v105) >> 24);
  HIDWORD(v86) = v75;
  LODWORD(v86) = v75;
  v109 = *(v13 + 4 * v108);
  v110 = (v103 | (v86 >> 16) ^ __ROR4__(v104, 8) ^ v107 ^ __ROR4__(v106, 24)) ^ ((((v9 & (v65 & 0x4994C146 ^ 0x24CA60A3u)) >> v11) + ((a4 & (v65 & 0x4994C146 ^ 0x24CA60A3)) << v12)) ^ v31 | (((((v71 & (v65 & STACK[0x185C] ^ 0x10D043Cu)) >> v11) + ((a4 & (v65 & STACK[0x185C] ^ 0x10D043C)) << v12)) ^ v66) << 32));
  v111 = *(v13 + 4 * BYTE3(v108));
  v112 = v108 ^ (((a4 & (v65 & 0x6C2421D4 ^ 0x361210EA)) << v12) ^ v66 ^ ((v71 & (v65 & 0x6C2421D4 ^ 0x361210EAu)) >> v11) | ((((a4 & (v65 & 0xEE4A47AE ^ 0x772523D7)) << v12) ^ v31 ^ ((v9 & (v65 & 0xEE4A47AE ^ 0x772523D7)) >> v11)) << 32));
  v113 = v108 & 0xFFFFFFFF00000000;
  v114 = *(v13 + 4 * BYTE1(v108));
  HIDWORD(v86) = *(v13 + 4 * BYTE2(v108));
  LODWORD(v86) = HIDWORD(v86);
  v115 = v110 ^ (v110 << 24) ^ ((((v9 & (v65 & 0x7202D48 ^ 0x39016A4u)) >> v11) + ((a4 & (v65 & 0x7202D48 ^ 0x39016A4)) << v12)) ^ v66 | ((((a4 & (v65 & 0x6BDAE706 ^ 0x35ED7383)) << v12) ^ v31 ^ ((v71 & (v65 & 0x6BDAE706 ^ 0x35ED7383u)) >> v11)) << 32)) ^ ((v110 ^ (v110 << 24)) >> 16) ^ v112 ^ (v112 >> 24);
  v116 = (v113 | (v86 >> 24) ^ __ROR4__(v109, 8) ^ v114 ^ __ROR4__(v111, 16)) ^ (((a4 & (v65 & 0x9FFE42C ^ 0x4FFF216)) << v12) ^ v31 ^ ((v71 & (v65 & 0x9FFE42C ^ 0x4FFF216u)) >> v11) | ((((a4 & (v65 & STACK[0x1860] ^ 0xB591985D)) << v12) ^ v66 ^ ((v9 & (v65 & STACK[0x1860] ^ 0xB591985D)) >> v11)) << 32));
  HIDWORD(v86) = *(v13 + 4 * v115);
  LODWORD(v86) = HIDWORD(v86);
  v117 = v115 ^ ((((v71 & (v65 & 0x6ABD56F4 ^ 0xB55EAB7A)) >> v11) + ((a4 & (v65 & 0x6ABD56F4 ^ 0xB55EAB7A)) << v12)) ^ v31 | (((((v9 & (v65 & 0xBB5B5AB2 ^ 0x5DADAD59)) >> v11) + ((a4 & (v65 & 0xBB5B5AB2 ^ 0x5DADAD59)) << v12)) ^ v66) << 32));
  v118 = v115 & 0xFFFFFFFF00000000 | (v86 >> 8) ^ __ROR4__(*(v13 + 4 * BYTE2(v115)), 24) ^ *(v13 + 4 * BYTE1(v115)) ^ __ROR4__(*(v13 + 4 * BYTE3(v115)), 16);
  v119 = v116 ^ (v116 << 24) ^ ((((v9 & (v65 & 0xCDC2E1E0 ^ 0xE6E170F0)) >> v11) + ((a4 & (v65 & 0xCDC2E1E0 ^ 0xE6E170F0)) << v12)) ^ v31 | (((((v71 & (v65 & 0x885221CE ^ 0xC42910E7)) >> v11) | ((a4 & (v65 & 0x885221CE ^ 0xC42910E7)) << v12)) ^ v66) << 32)) ^ ((v116 ^ (v116 << 24)) >> 16) ^ v117 ^ (v117 >> 24);
  HIDWORD(v86) = (LODWORD(STACK[0x5750]) >> 2) & 0x28E0098;
  LODWORD(v86) = HIDWORD(v86);
  v120 = v118 ^ ((((v71 & (v65 & 0xA8CE4AFA ^ 0x5467257D)) >> v11) + ((a4 & (v65 & 0xA8CE4AFA ^ 0x5467257D)) << v12)) ^ v66 | ((((a4 & (v65 & 0xFFFF377C ^ 0x7FFF9BBE)) << v12) ^ v31 ^ ((v9 & (v65 & 0xFFFF377C ^ 0x7FFF9BBE)) >> v11)) << 32));
  v121 = v119 ^ ((((v9 & ((2 * (v86 >> 30)) ^ 0xA380260)) >> v11) + ((a4 & ((2 * (v86 >> 30)) ^ 0xA380260)) << v12)) ^ v31 | ((((a4 & (v65 & 0xCD0CA190 ^ 0x668650C8)) << v12) ^ v66 ^ ((v71 & (v65 & 0xCD0CA190 ^ 0x668650C8)) >> v11)) << 32));
  v122 = v120 ^ (v120 << 24) ^ ((((v9 & (v65 & 0x1FFD74AA ^ 0x8FFEBA55)) >> v11) + ((a4 & (v65 & 0x1FFD74AA ^ 0x8FFEBA55)) << v12)) ^ v31 | (((((v71 & (v65 & 0x4EDE11C0 ^ 0xA76F08E0)) >> v11) | ((a4 & (v65 & 0x4EDE11C0 ^ 0xA76F08E0)) << v12)) ^ v66) << 32)) ^ ((v120 ^ (v120 << 24)) >> 16) ^ v121 ^ (v121 >> 24);
  v123 = (v119 & 0xFFFFFFFF00000000 | (*(v13 + 4 * BYTE1(v119)) ^ __ROR4__(*(v13 + 4 * BYTE2(v119)), 24)) ^ __ROR4__(*(v13 + 4 * BYTE3(v119)), 16) ^ __ROR4__(*(v13 + 4 * v119), 8)) ^ ((((v9 & (v65 & 0xD0BD739E ^ 0xE85EB9CF)) >> v11) + ((a4 & (v65 & 0xD0BD739E ^ 0xE85EB9CF)) << v12)) ^ v66 | (((((v71 & (v65 & 0x8199AC7E ^ 0xC0CCD63F)) >> v11) + ((a4 & (v65 & 0x8199AC7E ^ 0xC0CCD63F)) << v12)) ^ v31) << 32));
  v124 = v122 ^ ((((v71 & (v65 & 0xCFE021C0 ^ 0x67F010E0)) >> v11) | ((a4 & (v65 & 0xCFE021C0 ^ 0x67F010E0)) << v12)) ^ v31 | (((((v9 & (v65 & 0x3325347A ^ 0x99929A3D)) >> v11) + ((a4 & (v65 & 0x3325347A ^ 0x99929A3D)) << v12)) ^ v66) << 32));
  v125 = v123 ^ (v123 << 24) ^ (((a4 & ((v65 & 0x44044844 | 0x33C2363A) ^ v65 & 0x23802430)) << v12) ^ v31 ^ ((v71 & ((v65 & 0x44044844 | 0x33C2363A) ^ v65 & 0x23802430u)) >> v11) | (((((v9 & (v65 & 0x4ECA4448 ^ 0x27652224u)) >> v11) + ((a4 & (v65 & 0x4ECA4448 ^ 0x27652224)) << v12)) ^ v66) << 32)) ^ ((v123 ^ (v123 << 24)) >> 16) ^ v124 ^ (v124 >> 24);
  v126 = (v122 & 0xFFFFFFFF00000000 | (*(v13 + 4 * BYTE1(v122)) ^ __ROR4__(*(v13 + 4 * BYTE2(v122)), 24)) ^ __ROR4__(*(v13 + 4 * v122), 8) ^ __ROR4__(*(v13 + 4 * BYTE3(v122)), 16)) ^ ((((v9 & (v65 & 0xEEC53D58 ^ 0xF7629EAC)) >> v11) | ((a4 & (v65 & 0xEEC53D58 ^ 0xF7629EAC)) << v12)) ^ v31 | ((((a4 & (v65 & 0x22AEBCA2 ^ 0x11575E51)) << v12) ^ v66 ^ ((v71 & (v65 & 0x22AEBCA2 ^ 0x11575E51u)) >> v11)) << 32));
  v127 = ((a4 & (v65 & 0x695D20A2 ^ 0xB4AE9051)) << v12) ^ v66 ^ ((v9 & (v65 & 0x695D20A2 ^ 0xB4AE9051)) >> v11) | (((((v71 & (v65 & 0x82676768 ^ 0xC133B3B4)) >> v11) + ((a4 & (v65 & 0x82676768 ^ 0xC133B3B4)) << v12)) ^ v31) << 32);
  v128 = v126 ^ (v126 << 24) ^ ((((v9 & (v65 & 0x23AF606A ^ 0x91D7B035)) >> v11) | ((a4 & (v65 & 0x23AF606A ^ 0x91D7B035)) << v12)) ^ v31 | ((((a4 & (v65 & 0x9502E59E ^ 0xCA8172CF)) << v12) ^ v66 ^ ((v71 & (v65 & 0x9502E59E ^ 0xCA8172CF)) >> v11)) << 32)) ^ ((v126 ^ (v126 << 24)) >> 16) ^ v125 ^ v127 ^ ((v125 ^ v127) >> 24);
  v129 = (v125 & 0xFFFFFFFF00000000 | (*(v13 + 4 * BYTE1(v125)) ^ __ROR4__(*(v13 + 4 * BYTE2(v125)), 24)) ^ __ROR4__(*(v13 + 4 * BYTE3(v125)), 16) ^ __ROR4__(*(v13 + 4 * v125), 8)) ^ ((((v71 & (v65 & 0xF936166C ^ 0xFC9B0B36)) >> v11) + ((a4 & (v65 & 0xF936166C ^ 0xFC9B0B36)) << v12)) ^ v66 | ((((a4 & (v65 & 0x92D3AE12 ^ 0xC969D709)) << v12) ^ v31 ^ ((v9 & (v65 & 0x92D3AE12 ^ 0xC969D709)) >> v11)) << 32));
  v130 = ((a4 & (v65 & 0x5F07B3E0 ^ LODWORD(STACK[0x1864]))) << v12) ^ v31 ^ ((v71 & (v65 & 0x5F07B3E0u ^ LODWORD(STACK[0x1864]))) >> v11) | ((((a4 & (v65 & 0xB9ACAFDC ^ 0x5CD657EE)) << v12) ^ v66 ^ ((v9 & (v65 & 0xB9ACAFDC ^ 0x5CD657EE)) >> v11)) << 32);
  v131 = v129 ^ (v129 << 24) ^ (((a4 & (v65 & 0xE26D3F94 ^ 0x71369FCA)) << v12) ^ v66 ^ ((v9 & (v65 & 0xE26D3F94 ^ 0x71369FCA)) >> v11) | (((((v71 & (v65 & 0xAD95806E ^ 0xD6CAC037)) >> v11) | ((a4 & (v65 & 0xAD95806E ^ 0xD6CAC037)) << v12)) ^ v31) << 32)) ^ ((v129 ^ (v129 << 24)) >> 16) ^ v128 ^ v130 ^ ((v128 ^ v130) >> 24);
  HIDWORD(v86) = *(v13 + 4 * v128);
  LODWORD(v86) = HIDWORD(v86);
  v132 = (v128 & 0xFFFFFFFF00000000 | (v86 >> 8) ^ __ROR4__(*(v13 + 4 * BYTE3(v128)), 16) ^ *(v13 + 4 * BYTE1(v128)) ^ __ROR4__(*(v13 + 4 * BYTE2(v128)), 24)) ^ (((a4 & (v65 & 0xA424B7A2 ^ 0xD2125BD1)) << v12) ^ v31 ^ ((v9 & (v65 & 0xA424B7A2 ^ 0xD2125BD1)) >> v11) | (((((v71 & (v65 & 0xE6084DA8 ^ 0xF30426D4)) >> v11) + ((a4 & (v65 & 0xE6084DA8 ^ 0xF30426D4)) << v12)) ^ v66) << 32));
  LODWORD(v128) = *(v13 + 4 * BYTE3(v131));
  v133 = v131 ^ (((a4 & (v65 & 0xF93F54D2 ^ 0x7C9FAA69)) << v12) ^ v31 ^ ((v71 & (v65 & 0xF93F54D2 ^ 0x7C9FAA69)) >> v11) | (((((v9 & (v65 & STACK[0x1868] ^ 0x548564Fu)) >> v11) + ((a4 & (v65 & STACK[0x1868] ^ 0x548564F)) << v12)) ^ v66) << 32));
  v134 = *(v13 + 4 * BYTE2(v131));
  LODWORD(v130) = *(v13 + 4 * BYTE1(v131)) ^ __ROR4__(*(v13 + 4 * v131), 8);
  v135 = v131 & 0xFFFFFFFF00000000;
  v136 = v132 ^ (v132 << 24) ^ ((((v71 & (v65 & 0xED13ED9A ^ 0x7689F6CD)) >> v11) + ((a4 & (v65 & 0xED13ED9A ^ 0x7689F6CD)) << v12)) ^ v66 | (((((v9 & (v65 & 0x9B8F1C6C ^ 0x4DC78E36)) >> v11) | ((a4 & (v65 & 0x9B8F1C6C ^ 0x4DC78E36)) << v12)) ^ v31) << 32)) ^ ((v132 ^ (v132 << 24)) >> 16) ^ v133 ^ (v133 >> 24);
  v137 = (v135 | v130 ^ __ROR4__(v128, 16) ^ __ROR4__(v134, 24)) ^ ((((v71 & (v65 & 0x96118BFC ^ 0x4B08C5FE)) >> v11) + ((a4 & (v65 & 0x96118BFC ^ 0x4B08C5FE)) << v12)) ^ v31 | (((((v9 & (v65 & 0x8618C748 ^ 0xC30C63A4)) >> v11) | ((a4 & (v65 & 0x8618C748 ^ 0xC30C63A4)) << v12)) ^ v66) << 32));
  v138 = v136 ^ ((((v9 & (v65 & 0xA831E2C ^ 0x85418F16)) >> v11) + ((a4 & (v65 & 0xA831E2C ^ 0x85418F16)) << v12)) ^ v66 | (((((v71 & (v65 & STACK[0x186C] ^ 0x4890E436u)) >> v11) | ((a4 & (v65 & STACK[0x186C] ^ 0x4890E436)) << v12)) ^ v31) << 32));
  v139 = v137 ^ (v137 << 24) ^ ((((v71 & (v65 & 0xCC2B242 ^ 0x86615921)) >> v11) + ((a4 & (v65 & 0xCC2B242 ^ 0x86615921)) << v12)) ^ v66 | (((((v9 & (v65 & 0x94922FDC ^ 0xCA4917EE)) >> v11) | ((a4 & (v65 & 0x94922FDC ^ 0xCA4917EE)) << v12)) ^ v31) << 32)) ^ ((v137 ^ (v137 << 24)) >> 16) ^ v138 ^ (v138 >> 24);
  v140 = (v136 & 0xFFFFFFFF00000000 | (*(v13 + 4 * ((v132 ^ (((v71 & (v65 & 0xED13ED9A ^ 0x7689F6CD)) >> v11) + ((a4 & (v65 & 0xED9A ^ 0xF6CD)) << v12)) ^ v66 ^ ((v132 ^ (v132 << 24)) >> 16) ^ v133 ^ (v133 >> 24)) >> 8)) ^ __ROR4__(*(v13 + 4 * (v132 ^ (((v71 & (v65 & 0xED13ED9A ^ 0x7689F6CD)) >> v11) + ((a4 & (v65 & 0x9A ^ 0xCD)) << v12)) ^ v66 ^ ((v132 ^ (v132 << 24)) >> 16) ^ v133 ^ BYTE3(v133))), 8)) ^ __ROR4__(*(v13 + 4 * ((v132 ^ (v132 << 24) ^ (((v71 & (v65 & 0xED13ED9A ^ 0x7689F6CD)) >> v11) + ((a4 & (v65 & 0xED13ED9A ^ 0x7689F6CD)) << v12)) ^ v66 ^ ((v132 ^ (v132 << 24)) >> 16) ^ v133 ^ (v133 >> 24)) >> 16)), 24) ^ __ROR4__(*(v13 + 4 * BYTE3(v136)), 16)) ^ ((((v9 & (v65 & 0x2CC5499A ^ 0x9662A4CD)) >> v11) | ((a4 & (v65 & 0x2CC5499A ^ 0x9662A4CD)) << v12)) ^ v66 | (((((v71 & (v65 & STACK[0x1870] ^ 0x3DCDBFFAu)) >> v11) | ((a4 & (v65 & STACK[0x1870] ^ 0x3DCDBFFA)) << v12)) ^ v31) << 32));
  v141 = v139 ^ ((((v71 & (v65 & 0xA8DBB4C2 ^ 0x546DDA61)) >> v11) + ((a4 & (v65 & 0xA8DBB4C2 ^ 0x546DDA61)) << v12)) ^ v66 | (((((v9 & (v65 & 0xEE5F0498 ^ 0xF72F824C)) >> v11) + ((a4 & (v65 & 0xEE5F0498 ^ 0xF72F824C)) << v12)) ^ v31) << 32));
  v142 = v140 ^ (v140 << 24) ^ ((((v9 & (v65 & 0x8976AC28 ^ 0xC4BB5614)) >> v11) | ((a4 & (v65 & 0x8976AC28 ^ 0xC4BB5614)) << v12)) ^ v66 | ((((a4 & (v65 & 0x716801FE ^ 0xB8B400FF)) << v12) ^ v31 ^ ((v71 & (v65 & 0x716801FE ^ 0xB8B400FF)) >> v11)) << 32)) ^ ((v140 ^ (v140 << 24)) >> 16) ^ v141 ^ (v141 >> 24);
  v143 = (v139 & 0xFFFFFFFF00000000 | (*(v13 + 4 * BYTE1(v139)) ^ __ROR4__(*(v13 + 4 * BYTE3(v139)), 16)) ^ __ROR4__(*(v13 + 4 * v139), 8) ^ __ROR4__(*(v13 + 4 * BYTE2(v139)), 24)) ^ (((a4 & (v65 & 0xF86F466E ^ 0x7C37A337)) << v12) ^ v31 ^ ((v9 & (v65 & 0xF86F466E ^ 0x7C37A337)) >> v11) | (((((v71 & (v65 & 0xF16850D8 ^ 0xF8B4286C)) >> v11) + ((a4 & (v65 & 0xF16850D8 ^ 0xF8B4286C)) << v12)) ^ v66) << 32));
  LODWORD(v113) = *(v13 + 4 * BYTE2(v142));
  v144 = *(v13 + 4 * BYTE1(v142));
  v145 = v142 ^ ((((v71 & (v65 & 0xED31A60E ^ 0x7698D307)) >> v11) + ((a4 & (v65 & 0xED31A60E ^ 0x7698D307)) << v12)) ^ v66 | (((((v9 & (v65 & 0x61BB6026 ^ 0xB0DDB013)) >> v11) + ((a4 & (v65 & 0x61BB6026 ^ 0xB0DDB013)) << v12)) ^ v31) << 32));
  LODWORD(v133) = *(v13 + 4 * v142);
  v146 = v143 ^ (v143 << 24) ^ (((a4 & (v65 & 0x56AE47DE ^ 0xAB5723EF)) << v12) ^ v66 ^ ((v71 & (v65 & 0x56AE47DE ^ 0xAB5723EF)) >> v11) | ((((a4 & (v65 & 0xA29771C6 ^ 0x514BB8E3)) << v12) ^ v31 ^ ((v9 & (v65 & 0xA29771C6 ^ 0x514BB8E3)) >> v11)) << 32)) ^ ((v143 ^ (v143 << 24)) >> 16) ^ v145 ^ (v145 >> 24);
  v147 = v142 & 0xFFFFFFFF00000000;
  v148 = *(v13 + 4 * BYTE3(v142));
  LODWORD(STACK[0x5730]) = v142 ^ (((v71 & (v65 & 0xED31A60E ^ 0x7698D307)) >> v11) + ((a4 & (v65 & 0xED31A60E ^ 0x7698D307)) << v12)) ^ v66 ^ (((v9 & (v65 & 0xD61FF4E8 ^ 0x6B0FFA74)) >> v11) | ((a4 & (v65 & 0xD61FF4E8 ^ 0x6B0FFA74)) << v12)) ^ v146;
  v149 = v146 & 0xFFFFFFFF00000000;
  v150 = (v147 | v144 ^ __ROR4__(v113, 24) ^ __ROR4__(v133, 8) ^ __ROR4__(v148, 16)) ^ ((((v9 & (v65 & 0x3180E61E ^ 0x18C0730Fu)) >> v11) | ((a4 & (v65 & 0x3180E61E ^ 0x18C0730F)) << v12)) ^ v66 | ((((a4 & (v65 & 0x2AD8C7AA ^ 0x956C63D5)) << v12) ^ v31 ^ ((v71 & (v65 & 0x2AD8C7AA ^ 0x956C63D5)) >> v11)) << 32));
  v151 = v146 ^ (((a4 & (v65 & 0x550789C2 ^ 0xAA83C4E1)) << v12) ^ v31 ^ ((v9 & (v65 & 0x550789C2 ^ 0xAA83C4E1)) >> v11) | (((((v71 & (v65 & 0x77E52C80 ^ 0xBBF29640)) >> v11) + ((a4 & (v65 & 0x77E52C80 ^ 0xBBF29640)) << v12)) ^ v66) << 32));
  v152 = v150 ^ (v150 << 24) ^ ((((v71 & (v65 & 0xAC647B94 ^ 0xD6323DCA)) >> v11) | ((a4 & (v65 & 0xAC647B94 ^ 0xD6323DCA)) << v12)) ^ v66 | (((((v9 & (v65 & 0x696E084A ^ 0x34B70425u)) >> v11) + ((a4 & (v65 & 0x696E084A ^ 0x34B70425)) << v12)) ^ v31) << 32)) ^ ((v150 ^ (v150 << 24)) >> 16) ^ v151 ^ (v151 >> 24);
  HIDWORD(v86) = *(v13 + 4 * BYTE2(v146));
  LODWORD(v86) = HIDWORD(v86);
  v153 = (v86 >> 24) ^ __ROR4__(*(v13 + 4 * v146), 8) ^ *(v13 + 4 * BYTE1(v146)) ^ __ROR4__(*(v13 + 4 * BYTE3(v146)), 16);
  LODWORD(v146) = *(v13 + 4 * v152);
  v154 = *(v13 + 4 * BYTE2(v152));
  LODWORD(STACK[0x5720]) = v151 ^ (((v9 & (v65 & 0xF99080F2 ^ 0xFCC84079)) >> v11) | ((a4 & (v65 & 0xF99080F2 ^ 0xFCC84079)) << v12)) ^ v152;
  v155 = (v149 | v153) ^ (((a4 & (v65 & 0x237E2BBE ^ 0x11BF15DF)) << v12) ^ v31 ^ ((v71 & (v65 & 0x237E2BBE ^ 0x11BF15DFu)) >> v11) | ((((a4 & (v65 & 0xDE3D7B92 ^ 0x6F1EBDC9)) << v12) ^ v66 ^ ((v9 & (v65 & 0xDE3D7B92 ^ 0x6F1EBDC9)) >> v11)) << 32));
  v156 = v31;
  v157 = v152 ^ ((((v71 & (v65 & 0xF52D802A ^ 0x7A96C015)) >> v11) | ((a4 & (v65 & 0xF52D802A ^ 0x7A96C015)) << v12)) ^ v31 | (((((v9 & (v65 & 0xF0599BA2 ^ 0x782CCDD1)) >> v11) | ((a4 & (v65 & 0xF0599BA2 ^ 0x782CCDD1)) << v12)) ^ v66) << 32));
  HIDWORD(v86) = v154;
  LODWORD(v86) = v154;
  LODWORD(v135) = v65 & 0xA33DED4 ^ 0x519EF6A;
  v158 = v155 ^ (v155 << 24) ^ ((((v9 & (v65 & 0x5D6C64BA ^ 0x2EB6325Du)) >> v11) + ((a4 & (v65 & 0x5D6C64BA ^ 0x2EB6325D)) << v12)) ^ v66 | (((((v71 & (v65 & 0x2667289C ^ 0x9333944E)) >> v11) + ((a4 & (v65 & 0x2667289C ^ 0x9333944E)) << v12)) ^ v31) << 32)) ^ ((v155 ^ (v155 << 24)) >> 16) ^ v157 ^ (v157 >> 24);
  v159 = v152 & 0xFFFFFFFF00000000 | (v86 >> 24) ^ __ROR4__(v146, 8) ^ *(v13 + 4 * BYTE1(v152)) ^ __ROR4__(*(v13 + 4 * BYTE3(v152)), 16);
  HIDWORD(v86) = (v71 & v135) >> v11;
  LODWORD(v86) = HIDWORD(v86);
  v160 = v65 & 0x257F569E ^ 0x92BFAB4F;
  LODWORD(STACK[0x56F0]) = v152 ^ (((v71 & (v65 & 0xF52D802A ^ 0x7A96C015)) >> v11) | ((a4 & (v65 & 0xF52D802A ^ 0x7A96C015)) << v12)) ^ v31 ^ (((v71 & (v65 & 0xF61DECF8 ^ 0x7B0EF67C)) >> v11) + ((a4 & (v65 & 0xF61DECF8 ^ 0x7B0EF67C)) << v12)) ^ v158;
  LODWORD(v153) = *(v13 + 4 * v158);
  v161 = v66;
  v162 = v158 ^ (((a4 & (v65 & 0xCD96DD40 ^ 0x66CB6EA0)) << v12) ^ v66 ^ ((v71 & (v65 & 0xCD96DD40 ^ 0x66CB6EA0)) >> v11) | (((((v9 & (v65 & 0xF37F26F6 ^ 0xF9BF937B)) >> v11) + ((a4 & (v65 & 0xF37F26F6 ^ 0xF9BF937B)) << v12)) ^ v31) << 32));
  *(&v163 + 1) = v159 ^ ((((v9 & (v65 & 0xEE44B1A ^ 0x8772258D)) >> v11) | ((a4 & (v65 & 0xEE44B1A ^ 0x8772258D)) << v12)) ^ v31 | ((LODWORD(STACK[0x4E50]) ^ 0xD7D7D7D6 ^ ((((a4 & v135) << v12) ^ (2 * (v86 >> 1))) & 0xFFFFFFFE | (((v86 >> 1) & 0x80000000) == 0))) << 32));
  *&v163 = *(&v163 + 1) ^ (*(&v163 + 1) << 24);
  LODWORD(v157) = (v71 & v160) >> v11;
  v164 = (v163 >> 20) ^ 0xD0F0E3B09B743800 ^ __ROR8__(v163, 36) & 0xFFFFF0000FFFFFFFLL;
  LODWORD(v159) = (a4 & v160) << v12;
  v165 = v65 & 0xC85D8104 ^ 0xE42EC082;
  v166 = v71 & v165;
  v167 = (v157 + v159) ^ v31;
  LODWORD(v157) = (a4 & v165) << v12;
  v168 = v162 << 29;
  v169 = (v167 | (((((v9 & (v65 & 0xC220AE38 ^ 0xE110571C)) >> v11) | ((a4 & (v65 & 0xC220AE38 ^ 0xE110571C)) << v12)) ^ v66) << 32)) ^ v162 ^ (v162 >> 24) ^ (v164 << 20) ^ 0x3B09B743800D0F0ELL;
  v170 = v169 ^ (v164 >> 44);
  LODWORD(v113) = v166 >> v11;
  LODWORD(v164) = *(v13 + 4 * BYTE1(v158));
  *&v163 = __ROR8__(v168, 33);
  v171 = v163;
  LODWORD(STACK[0x56C0]) = (v163 >> 60) ^ (v113 | v157);
  LODWORD(v168) = (v65 & 0xE167C2AE) - (STACK[0x4A08] & 0xC047800C) - 256646825;
  v172 = (v158 & 0xFFFFFFFF00000000 | v164 ^ __ROR4__(v153, 8) ^ __ROR4__(*(v13 + 4 * BYTE2(v158)), 24) ^ __ROR4__(*(v13 + 4 * BYTE3(v158)), 16)) ^ ((((v71 & (v65 & 0x4110A9CE ^ 0x208854E7u)) >> v11) + ((a4 & (v65 & 0x4110A9CE ^ 0x208854E7)) << v12)) ^ v31 | (((((v9 & (v65 & 0xC7661B96 ^ 0xE3B30DCB)) >> v11) | ((a4 & (v65 & 0xC7661B96 ^ 0xE3B30DCB)) << v12)) ^ v66) << 32));
  v173 = v170 ^ ((((v71 & v168) >> v11) | ((a4 & v168) << v12)) ^ v31 | (((((v9 & (v101 & 0xE79BC6 ^ 0x80F3CDE3)) >> v11) + ((a4 & (v101 & 0xE79BC6 ^ 0x80F3CDE3)) << v12)) ^ v66) << 32));
  v174 = *(v13 + 4 * BYTE2(v170));
  v175 = *(v13 + 4 * v170);
  v176 = *(v13 + 4 * BYTE3(v169));
  STACK[0x56D0] = v170;
  DWORD1(v163) = v175;
  LODWORD(v163) = v175;
  v177 = v172 ^ (v172 << 24) ^ (((a4 & (v65 & 0xE30080BC ^ 0xF180405E)) << v12) ^ v31 ^ ((v71 & (v65 & 0xE30080BC ^ 0xF180405E)) >> v11) | (((((v9 & (v65 & 0x7CB67004 ^ 0xBE5B3802)) >> v11) + ((a4 & (v65 & 0x7CB67004 ^ 0xBE5B3802)) << v12)) ^ v66) << 32)) ^ ((v172 ^ (v172 << 24)) >> 16) ^ v173 ^ (v173 >> 24);
  LODWORD(v75) = v71;
  v178 = (v170 & 0xFFFFFFFF00000000 | (v163 >> 8) ^ __ROR4__(v174, 24) ^ *(v13 + 4 * BYTE1(v170)) ^ __ROR4__(v176, 16)) ^ ((((v9 & (v65 & 0x3B1C382C ^ 0x1D8E1C16u)) >> v11) | ((a4 & (v65 & 0x3B1C382C ^ 0x1D8E1C16)) << v12)) ^ v66 | (((((v71 & (v65 & 0x5D9F1102 ^ 0x2ECF8881u)) >> v11) | ((a4 & (v65 & 0x5D9F1102 ^ 0x2ECF8881)) << v12)) ^ v31) << 32));
  v179 = v177 ^ ((((v9 & (v65 & 0x34DC46DC ^ 0x1A6E236Eu)) >> v11) | ((a4 & (v65 & 0x34DC46DC ^ 0x1A6E236E)) << v12)) ^ v66 | (((((v71 & (v65 & 0xC93AAD2C ^ 0xE49D5696)) >> v11) | ((a4 & (v65 & 0xC93AAD2C ^ 0xE49D5696)) << v12)) ^ v31) << 32));
  v180 = v178 ^ (v178 << 24) ^ ((((v9 & (v65 & 0x56919BCE ^ 0xAB48CDE7)) >> v11) + ((a4 & (v65 & 0x56919BCE ^ 0xAB48CDE7)) << v12)) ^ v66 | (((((v71 & (v65 & 0x8494B404 ^ 0xC24A5A02)) >> v11) | ((a4 & (v65 & 0x8494B404 ^ 0xC24A5A02)) << v12)) ^ v31) << 32)) ^ ((v178 ^ (v178 << 24)) >> 16) ^ v179 ^ (v179 >> 24);
  DWORD1(v163) = *(v13 + 4 * BYTE3(v177));
  LODWORD(v163) = DWORD1(v163);
  v181 = (v177 & 0xFFFFFFFF00000000 | (v163 >> 16) ^ __ROR4__(*(v13 + 4 * v177), 8) ^ *(v13 + 4 * BYTE1(v177)) ^ __ROR4__(*(v13 + 4 * BYTE2(v177)), 24)) ^ ((((v9 & (v65 & 0xFFE18050 ^ 0x7FF0C028)) >> v11) + ((a4 & (v65 & 0xFFE18050 ^ 0x7FF0C028)) << v12)) ^ v66 | (((((v71 & (v65 & 0xA9B0D214 ^ 0x54D8690A)) >> v11) | ((a4 & (v65 & 0xA9B0D214 ^ 0x54D8690A)) << v12)) ^ v31) << 32));
  v182 = v180 ^ ((((v9 & (v65 & 0x5C2C413A ^ 0xAE16209D)) >> v11) + ((a4 & (v65 & 0x5C2C413A ^ 0xAE16209D)) << v12)) ^ v66 | ((((a4 & (v65 & 0x3F483D48 ^ 0x1FA41EA4)) << v12) ^ v31 ^ ((v71 & (v65 & 0x3F483D48 ^ 0x1FA41EA4u)) >> v11)) << 32));
  v183 = v181 ^ (v181 << 24) ^ ((((v9 & (v65 & 0x3D752C10 ^ 0x1EBA9608u)) >> v11) + ((a4 & (v65 & 0x3D752C10 ^ 0x1EBA9608)) << v12)) ^ v66 | ((((a4 & (v65 & 0x8A90AB72 ^ 0x454855B9)) << v12) ^ v31 ^ ((v71 & (v65 & 0x8A90AB72 ^ 0x454855B9)) >> v11)) << 32)) ^ ((v181 ^ (v181 << 24)) >> 16) ^ v182 ^ (v182 >> 24);
  v184 = (v180 & 0xFFFFFFFF00000000 | (*(v13 + 4 * BYTE1(v180)) ^ __ROR4__(*(v13 + 4 * v180), 8)) ^ __ROR4__(*(v13 + 4 * BYTE3(v180)), 16) ^ __ROR4__(*(v13 + 4 * BYTE2(v180)), 24)) ^ ((((v9 & (v65 & 0x6A009006 ^ 0x35004803u)) >> v11) + ((a4 & (v65 & 0x6A009006 ^ 0x35004803)) << v12)) ^ v66 | (((((v71 & (v65 & 0x81B5B98C ^ 0xC0DADCC6)) >> v11) + ((a4 & (v65 & 0x81B5B98C ^ 0xC0DADCC6)) << v12)) ^ v31) << 32));
  LODWORD(v170) = a4;
  v185 = *(v13 + 4 * v183);
  v186 = v183 ^ ((((v71 & (v65 & 0xC10E00F0 ^ 0xE0870078)) >> v11) + ((a4 & (v65 & 0xC10E00F0 ^ 0xE0870078)) << v12)) ^ v31 | (((((v9 & (v65 & 0x1B8C69F6 ^ 0xDC634FBu)) >> v11) | ((a4 & (v65 & 0x1B8C69F6 ^ 0xDC634FB)) << v12)) ^ v66) << 32));
  DWORD1(v163) = *(v13 + 4 * BYTE2(v183));
  LODWORD(v163) = DWORD1(v163);
  STACK[0x5680] = v186;
  v187 = v184 ^ (v184 << 24) ^ (((a4 & (v65 & 0xE4E0A744 ^ 0x727053A2)) << v12) ^ v66 ^ ((v71 & (v65 & 0xE4E0A744 ^ 0x727053A2)) >> v11) | ((((a4 & (v65 & 0x5059A0EE ^ 0x282CD077)) << v12) ^ v31 ^ ((v9 & (v65 & 0x5059A0EE ^ 0x282CD077u)) >> v11)) << 32)) ^ ((v184 ^ (v184 << 24)) >> 16) ^ v186 ^ (v186 >> 24);
  v188 = (v183 & 0xFFFFFFFF00000000 | (v163 >> 24) ^ __ROR4__(v185, 8) ^ *(v13 + 4 * BYTE1(v183)) ^ __ROR4__(*(v13 + 4 * BYTE3(v183)), 16)) ^ ((((v9 & (v65 & 0x7DD95C6 ^ 0x3EECAE3u)) >> v11) + ((a4 & (v65 & 0x7DD95C6 ^ 0x3EECAE3)) << v12)) ^ v66 | (((((v71 & (v65 & 0xFF54754C ^ 0x7FAA3AA6)) >> v11) | ((a4 & (v65 & 0xFF54754C ^ 0x7FAA3AA6)) << v12)) ^ v31) << 32));
  v189 = *(v13 + 4 * BYTE3(v187));
  LODWORD(v186) = *(v13 + 4 * BYTE2(v187));
  v190 = v187 ^ (((a4 & (v65 & 0xCDC5A56A ^ 0x66E2D2B5)) << v12) ^ v31 ^ ((v9 & (v65 & 0xCDC5A56A ^ 0x66E2D2B5)) >> v11) | (((((v71 & (v65 & 0xF7A0FC36 ^ 0x7BD07E1B)) >> v11) + ((a4 & (v65 & 0xF7A0FC36 ^ 0x7BD07E1B)) << v12)) ^ v66) << 32));
  v191 = *(v13 + 4 * v187);
  LODWORD(v173) = *(v13 + 4 * BYTE1(v187));
  STACK[0x5670] = v187;
  DWORD1(v163) = v186;
  LODWORD(v163) = v186;
  v192 = v188 ^ (v188 << 24) ^ ((((v71 & (v65 & 0x79D277E4 ^ 0x3CE93BF2u)) >> v11) | ((a4 & (v65 & 0x79D277E4 ^ 0x3CE93BF2)) << v12)) ^ v31 | (((((v9 & (v65 & 0x9B452FC2 ^ 0x4DA297E1)) >> v11) + ((a4 & (v65 & 0x9B452FC2 ^ 0x4DA297E1)) << v12)) ^ v161) << 32)) ^ ((v188 ^ (v188 << 24)) >> 16) ^ v190 ^ (v190 >> 24);
  LODWORD(v168) = (v163 >> 24) ^ __ROR4__(v189, 16) ^ v173;
  v193 = ((v71 & (v65 & 0x434062DE ^ 0x21A0316Fu)) >> v11) ^ ((a4 & (v65 & 0x434062DE ^ 0x21A0316F)) << v12) ^ v190 ^ v192;
  v194 = (v187 & 0xFFFFFFFF00000000 | v168 ^ __ROR4__(v191, 8)) ^ ((((v71 & (v65 & 0x8F35766C ^ LODWORD(STACK[0x1874]))) >> LODWORD(STACK[0x5790])) + ((a4 & (v65 & 0x8F35766C ^ LODWORD(STACK[0x1874]))) << v12)) ^ v31 | ((((a4 & (v65 & 0x669123CA ^ 0xB34891E5)) << v12) ^ v161 ^ ((v9 & (v65 & 0x669123CA ^ 0xB34891E5)) >> LODWORD(STACK[0x5790]))) << 32));
  v195 = v192 ^ ((((v9 & (v65 & 0xFDBD454E ^ 0xFEDEA2A7)) >> LODWORD(STACK[0x5790])) + ((a4 & (v65 & 0xFDBD454E ^ 0xFEDEA2A7)) << LODWORD(STACK[0x57A0]))) ^ v31 | (((((v71 & (v65 & 0x6A63AE7E ^ 0x3531D73Fu)) >> LODWORD(STACK[0x5790])) | ((a4 & (v65 & 0x6A63AE7E ^ 0x3531D73F)) << LODWORD(STACK[0x57A0]))) ^ v161) << 32));
  v196 = v194 ^ (v194 << 24) ^ ((((v71 & (v65 & 0xAF1621DC ^ 0xD78B10EE)) >> LODWORD(STACK[0x5790])) | ((a4 & (v65 & 0xAF1621DC ^ 0xD78B10EE)) << LODWORD(STACK[0x57A0]))) ^ v156 | (((((v9 & (v65 & 0xC98E2DA4 ^ 0x64C716D2)) >> LODWORD(STACK[0x5790])) | ((a4 & (v65 & 0xC98E2DA4 ^ 0x64C716D2)) << LODWORD(STACK[0x57A0]))) ^ v161) << 32)) ^ ((v194 ^ (v194 << 24)) >> 16) ^ v195 ^ (v195 >> 24);
  LOBYTE(v191) = v195 ^ (((v9 & (v65 & 0x3B0AAD68 ^ 0x1D8556B4u)) >> LODWORD(STACK[0x5790])) + ((a4 & (v65 & 0x3B0AAD68 ^ 0x1D8556B4)) << LODWORD(STACK[0x57A0]))) ^ v194 ^ (((v71 & (v65 & 0xAF1621DC ^ 0xD78B10EE)) >> LODWORD(STACK[0x5790])) | ((a4 & (v65 & 0xDC ^ 0xEE)) << LODWORD(STACK[0x57A0]))) ^ v156 ^ ((v194 ^ (v194 << 24)) >> 16) ^ v195 ^ BYTE3(v195);
  v197 = (v192 & 0xFFFFFFFF00000000 | (*(v13 + 4 * BYTE1(v192)) ^ __ROR4__(*(v13 + 4 * v192), 8)) ^ __ROR4__(*(v13 + 4 * BYTE2(v192)), 24) ^ __ROR4__(*(v13 + 4 * BYTE3(v192)), 16)) ^ ((((v71 & (v65 & 0x42B05718 ^ 0xA1582B8C)) >> LODWORD(STACK[0x5790])) + ((a4 & (v65 & 0x42B05718 ^ 0xA1582B8C)) << LODWORD(STACK[0x57A0]))) ^ v156 | ((((a4 & (v65 & 0x7FDDE410 ^ 0xBFEEF208)) << LODWORD(STACK[0x57A0])) ^ v161 ^ ((v9 & (v65 & 0x7FDDE410 ^ 0xBFEEF208)) >> LODWORD(STACK[0x5790]))) << 32));
  v198 = v196 ^ (((a4 & (v65 & 0xAEB8B296 ^ 0x575C594B)) << LODWORD(STACK[0x57A0])) ^ v161 ^ ((v9 & (v65 & 0xAEB8B296 ^ 0x575C594B)) >> LODWORD(STACK[0x5790])) | (((((v71 & (v65 & 0xF3DBC3DA ^ 0xF9EDE1ED)) >> LODWORD(STACK[0x5790])) + ((a4 & (v65 & 0xF3DBC3DA ^ 0xF9EDE1ED)) << LODWORD(STACK[0x57A0]))) ^ v156) << 32));
  v199 = v197 ^ (v197 << 24) ^ (((a4 & (v65 & 0x7CDB8E6C ^ 0xBE6DC736)) << LODWORD(STACK[0x57A0])) ^ v156 ^ ((v71 & (v65 & 0x7CDB8E6C ^ 0xBE6DC736)) >> LODWORD(STACK[0x5790])) | (((((v9 & (v65 & 0xC732D3C0 ^ 0x639969E0)) >> LODWORD(STACK[0x5790])) + ((a4 & (v65 & 0xC732D3C0 ^ 0x639969E0)) << LODWORD(STACK[0x57A0]))) ^ v161) << 32)) ^ ((v197 ^ (v197 << 24)) >> 16) ^ v198 ^ (v198 >> 24);
  LOBYTE(v169) = ((v9 & (v65 & 0xAD6645B2 ^ 0xD6B322D9)) >> LODWORD(STACK[0x5790])) ^ ((a4 & (v65 & 0xAD6645B2 ^ 0xD6B322D9)) << LODWORD(STACK[0x57A0])) ^ v198 ^ v197 ^ ((a4 & (v65 & 0x6C ^ 0x36)) << LODWORD(STACK[0x57A0])) ^ v156 ^ ((v71 & (v65 & 0x7CDB8E6C ^ 0xBE6DC736)) >> LODWORD(STACK[0x5790])) ^ ((v197 ^ (v197 << 24)) >> 16) ^ v198 ^ BYTE3(v198);
  LODWORD(v186) = *(v13 + 4 * ((v194 ^ (((v71 & (v65 & 0xAF1621DC ^ 0xD78B10EE)) >> LODWORD(STACK[0x5790])) | ((a4 & (v65 & 0x21DC ^ 0x10EE)) << LODWORD(STACK[0x57A0]))) ^ v156 ^ ((v194 ^ (v194 << 24)) >> 16) ^ v195 ^ (v195 >> 24)) >> 8)) ^ __ROR4__(*(v13 + 4 * (v194 ^ (((v71 & (v65 & 0xAF1621DC ^ 0xD78B10EE)) >> LODWORD(STACK[0x5790])) | ((a4 & (v65 & 0xDC ^ 0xEE)) << LODWORD(STACK[0x57A0]))) ^ v156 ^ ((v194 ^ (v194 << 24)) >> 16) ^ v195 ^ BYTE3(v195))), 8) ^ __ROR4__(*(v13 + 4 * ((v194 ^ (v194 << 24) ^ (((v71 & (v65 & 0xAF1621DC ^ 0xD78B10EE)) >> LODWORD(STACK[0x5790])) | ((a4 & (v65 & 0xAF1621DC ^ 0xD78B10EE)) << LODWORD(STACK[0x57A0]))) ^ v156 ^ ((v194 ^ (v194 << 24)) >> 16) ^ v195 ^ (v195 >> 24)) >> 16)), 24);
  LODWORD(v163) = __ROR4__(*(v13 + 4 * ((v194 ^ (v194 << 24) ^ (((v71 & (v65 & 0xAF1621DC ^ 0xD78B10EE)) >> LODWORD(STACK[0x5790])) | ((a4 & (v65 & 0xAF1621DC ^ 0xD78B10EE)) << LODWORD(STACK[0x57A0]))) ^ v156 ^ ((v194 ^ (v194 << 24)) >> 16) ^ v195 ^ (v195 >> 24)) >> 24)), 16);
  v200 = (((v9 & (v65 & 0xE9A68BA8 ^ 0xF4D345D4)) >> LODWORD(STACK[0x5790])) | ((v170 & (v65 & 0xE9A68BA8 ^ 0xF4D345D4)) << LODWORD(STACK[0x57A0]))) ^ v161 | (((((v71 & (v65 & 0x796ED788 ^ 0x3CB76BC4u)) >> LODWORD(STACK[0x5790])) + ((v170 & (v65 & 0x796ED788 ^ 0x3CB76BC4)) << LODWORD(STACK[0x57A0]))) ^ v156) << 32);
  v201 = (v196 & 0xFFFFFFFF00000000 | v186 ^ v163) ^ v200 ^ (((v196 & 0xFFFFFFFF00000000 | v186 ^ v163) ^ v200) << 24);
  v202 = v199 ^ ((((v71 & (v65 & 0x7714F95E ^ 0x3B8A7CAFu)) >> LODWORD(STACK[0x5790])) | ((a4 & (v65 & 0x7714F95E ^ 0x3B8A7CAF)) << LODWORD(STACK[0x57A0]))) ^ v161 | (((((v9 & (v65 & STACK[0x1878] ^ 0x55763805u)) >> LODWORD(STACK[0x5790])) + ((a4 & (v65 & STACK[0x1878] ^ 0x55763805)) << LODWORD(STACK[0x57A0]))) ^ v156) << 32));
  DWORD1(v163) = *(v13 + 4 * ((v197 ^ (v197 << 24) ^ ((a4 & (v65 & 0x7CDB8E6C ^ 0xBE6DC736)) << LODWORD(STACK[0x57A0])) ^ v156 ^ ((v71 & (v65 & 0x7CDB8E6C ^ 0xBE6DC736)) >> LODWORD(STACK[0x5790])) ^ ((v197 ^ (v197 << 24)) >> 16) ^ v198 ^ (v198 >> 24)) >> 16));
  LODWORD(v163) = DWORD1(v163);
  v203 = v201 ^ ((((v9 & (v65 & 0x13358CD8 ^ 0x899AC66C)) >> LODWORD(STACK[0x5790])) | ((a4 & (v65 & 0x13358CD8 ^ 0x899AC66C)) << LODWORD(STACK[0x57A0]))) ^ v156 | (((((v71 & (v65 & 0x62443C48 ^ 0x31221E24u)) >> LODWORD(STACK[0x5790])) | ((a4 & (v65 & 0x62443C48 ^ 0x31221E24)) << LODWORD(STACK[0x57A0]))) ^ v161) << 32)) ^ (v201 >> 16) ^ v202 ^ (v202 >> 24);
  LODWORD(v201) = ((v9 & (v65 & 0xEC10901C ^ 0xF608480E)) >> LODWORD(STACK[0x5790])) + ((a4 & (v65 & 0xEC10901C ^ 0xF608480E)) << LODWORD(STACK[0x57A0]));
  v204 = v199 & 0xFFFFFFFF00000000 | (v163 >> 24) ^ __ROR4__(*(v13 + 4 * (v197 ^ ((a4 & (v65 & 0x6C ^ 0x36)) << LODWORD(STACK[0x57A0])) ^ v156 ^ ((v71 & (v65 & 0x7CDB8E6C ^ 0xBE6DC736)) >> LODWORD(STACK[0x5790])) ^ ((v197 ^ (v197 << 24)) >> 16) ^ v198 ^ BYTE3(v198))), 8) ^ *(v13 + 4 * ((v197 ^ ((a4 & (v65 & 0x8E6C ^ 0xC736)) << LODWORD(STACK[0x57A0])) ^ v156 ^ ((v71 & (v65 & 0x7CDB8E6C ^ 0xBE6DC736)) >> LODWORD(STACK[0x5790])) ^ ((v197 ^ (v197 << 24)) >> 16) ^ v198 ^ (v198 >> 24)) >> 8)) ^ __ROR4__(*(v13 + 4 * ((v197 ^ (v197 << 24) ^ ((a4 & (v65 & 0x7CDB8E6C ^ 0xBE6DC736)) << LODWORD(STACK[0x57A0])) ^ v156 ^ ((v71 & (v65 & 0x7CDB8E6C ^ 0xBE6DC736)) >> LODWORD(STACK[0x5790])) ^ ((v197 ^ (v197 << 24)) >> 16) ^ v198 ^ (v198 >> 24)) >> 24)), 16);
  v205 = ((a4 & (v65 & 0x2A00E5AC ^ 0x950072D6)) << LODWORD(STACK[0x57A0])) ^ v156 ^ ((v71 & (v65 & 0x2A00E5AC ^ 0x950072D6)) >> LODWORD(STACK[0x5790]));
  LODWORD(v173) = v65 & 0xE51152A6 ^ 0xF288A953;
  v206 = (((v9 & (v65 & 0x172A581C ^ 0x8B952C0E)) >> LODWORD(STACK[0x5790])) + ((a4 & (v65 & 0x172A581C ^ 0x8B952C0E)) << LODWORD(STACK[0x57A0]))) ^ v161;
  v207 = (((v75 & (v65 & 0x14204AB2 ^ 0x8A102559)) >> LODWORD(STACK[0x5790])) | ((a4 & (v65 & 0x14204AB2 ^ 0x8A102559)) << LODWORD(STACK[0x57A0]))) ^ v161;
  LODWORD(v195) = (v9 & v173) >> LODWORD(STACK[0x5790]);
  LODWORD(STACK[0x5660]) = v202 ^ v201;
  v208 = v204 ^ (v206 | (v205 << 32));
  v209 = ((v170 & v173) << LODWORD(STACK[0x57A0])) ^ v156 ^ v195 | (v207 << 32);
  LODWORD(v207) = v203 ^ v209;
  DWORD1(v163) = *(v13 + 4 * v203);
  LODWORD(v163) = DWORD1(v163);
  v210 = v208 ^ (v208 << 24) ^ (((v170 & (v65 & 0x30E987D2 ^ 0x9874C3E9)) << LODWORD(STACK[0x57A0])) ^ v156 ^ ((v9 & (v65 & 0x30E987D2 ^ 0x9874C3E9)) >> LODWORD(STACK[0x5790])) | ((((v170 & (v65 & 0xC6B521DE ^ 0x635A90EF)) << LODWORD(STACK[0x57A0])) ^ v161 ^ ((v75 & (v65 & 0xC6B521DE ^ 0x635A90EF)) >> LODWORD(STACK[0x5790]))) << 32)) ^ ((v208 ^ (v208 << 24)) >> 16) ^ v203 ^ v209 ^ ((v203 ^ v209) >> 24);
  v211 = (v203 & 0xFFFFFFFF00000000 | (v163 >> 8) ^ __ROR4__(*(v13 + 4 * BYTE2(v203)), 24) ^ *(v13 + 4 * BYTE1(v203)) ^ __ROR4__(*(v13 + 4 * BYTE3(v203)), 16)) ^ ((((v75 & (v65 & 0x2F5E3C34 ^ 0x17AF1E1A)) >> LODWORD(STACK[0x5790])) + ((v170 & (v65 & 0x2F5E3C34 ^ 0x17AF1E1A)) << LODWORD(STACK[0x57A0]))) ^ v161 | ((((v170 & (v65 & 0xD1F168EA ^ 0xE8F8B475)) << LODWORD(STACK[0x57A0])) ^ v156 ^ ((v9 & (v65 & 0xD1F168EA ^ 0xE8F8B475)) >> LODWORD(STACK[0x5790]))) << 32));
  v212 = v210 ^ (((v170 & (v65 & 0xD2952176 ^ 0xE94A90BB)) << LODWORD(STACK[0x57A0])) ^ v156 ^ ((v75 & (v65 & 0xD2952176 ^ 0xE94A90BB)) >> LODWORD(STACK[0x5790])) | (((((v9 & ((v65 & 0x42220010 | 0xA1DDE00F) ^ v65 & 0x199C00E)) >> LODWORD(STACK[0x5790])) + ((v170 & ((v65 & 0x42220010 | 0xA1DDE00F) ^ v65 & 0x199C00E)) << LODWORD(STACK[0x57A0]))) ^ v161) << 32));
  v213 = v211 ^ (v211 << 24) ^ ((((v75 & (v65 & 0x6922E20E ^ 0x34917107)) >> LODWORD(STACK[0x5790])) + ((v170 & (v65 & 0x6922E20E ^ 0x34917107)) << LODWORD(STACK[0x57A0]))) ^ v156 | (((((v9 & (v65 & 0x86BCFF0C ^ 0x435E7F86)) >> LODWORD(STACK[0x5790])) + ((v170 & (v65 & 0x86BCFF0C ^ 0x435E7F86)) << LODWORD(STACK[0x57A0]))) ^ v161) << 32)) ^ ((v211 ^ (v211 << 24)) >> 16) ^ v212 ^ (v212 >> 24);
  LODWORD(v204) = STACK[0x57A0];
  v214 = (v210 & 0xFFFFFFFF00000000 | (*(v13 + 4 * BYTE1(v210)) ^ __ROR4__(*(v13 + 4 * v210), 8)) ^ __ROR4__(*(v13 + 4 * BYTE2(v210)), 24) ^ __ROR4__(*(v13 + 4 * BYTE3(v210)), 16)) ^ (((v170 & (v65 & 0xC1DAE4AA ^ 0x60ED7255)) << LODWORD(STACK[0x57A0])) ^ v161 ^ ((v9 & (v65 & 0xC1DAE4AA ^ 0x60ED7255)) >> LODWORD(STACK[0x5790])) | (((((v75 & (v65 & STACK[0x187C] ^ 0xF98D0BE4)) >> LODWORD(STACK[0x5790])) + ((v170 & (v65 & STACK[0x187C] ^ 0xF98D0BE4)) << LODWORD(STACK[0x57A0]))) ^ v156) << 32));
  v215 = (((v75 & (v65 & 0xE5B7D5C0 ^ 0x72DBEAE0)) >> LODWORD(STACK[0x5790])) + ((v170 & (v65 & 0xE5B7D5C0 ^ 0x72DBEAE0)) << v204)) ^ v156 | (((((v9 & (v65 & 0xD298AB12 ^ 0x694C5589)) >> LODWORD(STACK[0x5790])) | ((v170 & (v65 & 0xD298AB12 ^ 0x694C5589)) << v204)) ^ v161) << 32);
  v216 = v214 ^ (v214 << 24) ^ (((v9 & (v65 & 0x61A8B4DA ^ 0xB0D45A6D)) >> LODWORD(STACK[0x5790])) + ((v170 & (v65 & 0x61A8B4DA ^ 0xB0D45A6D)) << LODWORD(STACK[0x57A0]))) ^ v161 ^ ((v214 ^ (v214 << 24)) >> 16) ^ v213 ^ v215 ^ ((v213 ^ v215) >> 24);
  v217 = (v193 << 24) | (v191 << 16) | (v169 << 8);
  LODWORD(v169) = (((v9 & (v65 & 0xE62CEE3E ^ 0xF316771F)) >> LODWORD(STACK[0x5790])) | ((v170 & (v65 & 0xE62CEE3E ^ 0xF316771F)) << LODWORD(STACK[0x57A0]))) ^ v156 ^ __ROR4__(*(v13 + 4 * BYTE2(v213)), 24) ^ (*(v13 + 4 * v213) >> 8) ^ *(v13 + 4 * BYTE1(v213)) ^ __ROR4__(*(v13 + 4 * BYTE3(v213)), 16);
  LODWORD(STACK[0x56F0]) = ((v207 ^ (((v9 & (v65 & 0x1FA28746 ^ 0x8FD143A3)) >> LODWORD(STACK[0x5790])) | ((v170 & (v65 & 0x1FA28746 ^ 0x8FD143A3)) << LODWORD(STACK[0x57A0]))) ^ v210) << 24) | ((v210 ^ ((v170 & (v65 & 0x76 ^ 0xBB)) << LODWORD(STACK[0x57A0])) ^ v156 ^ ((v75 & (v65 & 0xD2952176 ^ 0xE94A90BB)) >> LODWORD(STACK[0x5790])) ^ (((v9 & (v65 & 0xF7AF81A2 ^ 0xFBD7C0D1)) >> LODWORD(STACK[0x5790])) + ((v170 & (v65 & 0xA2 ^ 0xD1)) << LODWORD(STACK[0x57A0]))) ^ v213) << 16) | ((((v75 & (v65 & 0xDE501A16 ^ 0xEF280D0B)) >> LODWORD(STACK[0x5790])) ^ ((v170 & (v65 & 0x16 ^ 0xB)) << v204) ^ v213 ^ (((v75 & (v65 & 0xE5B7D5C0 ^ 0x72DBEAE0)) >> LODWORD(STACK[0x5790])) + ((v170 & (v65 & 0xC0 ^ 0xE0)) << v204)) ^ v156 ^ v216) << 8) | (v169 ^ (((v9 & (v65 & 0xD8EBF6D0 ^ 0xEC75FB68)) >> LODWORD(STACK[0x5790])) + ((v170 & (v65 & 0xD0 ^ 0x68)) << v204)) ^ v161 ^ (((v75 & (v65 & 0x844BA1E0 ^ 0x4225D0F0)) >> LODWORD(STACK[0x5790])) | ((v170 & (v65 & 0xE0 ^ 0xF0)) << v204)) ^ BYTE2(v169) ^ BYTE3(v216) ^ ((((v170 & (v65 & 0xD8B839DA ^ 0xEC5C1CED)) << v204) ^ v161 ^ ((v75 & (v65 & 0xD8B839DA ^ 0xEC5C1CED)) >> LODWORD(STACK[0x5790]))) >> 24));
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x5780])))(v217, v65 & 0x3DA992E ^ 0x81ED4C97, LODWORD(STACK[0x56C0]) ^ (16 * v171));
}

uint64_t sub_1003379BC@<X0>(__int16 a1@<W8>)
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x1819u)))((a1 - 10018));
  STACK[0xA1E8] = v3;
  return (*(v2 + 8 * (((v3 != 0) * (((v1 - 2068768712) & 0x34EDBF6) - 22550)) | v1)))();
}

uint64_t sub_100337A8C()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  STACK[0xB7A0] = 0;
  return (*(v1 + 8 * (v0 + 2572)))(v2);
}

uint64_t sub_100337AC0()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xB2A4];
  LODWORD(STACK[0x9094]) = -32197410;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100337B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x51B8] - 11031;
  v8 = STACK[0x51B8] - 21373;
  v9 = STACK[0x6DC0];
  *(v9 + 60) = STACK[0x7450];
  v10 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v8);
  return (*(v10 + 8 * (v7 + v8 - 7628)))(v9 + 64, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_100337BE0()
{
  v1 = LODWORD(STACK[0x5230]) - LODWORD(STACK[0x5250]);
  LODWORD(STACK[0x5560]) = LODWORD(STACK[0x51D8]) ^ LODWORD(STACK[0x51F8]);
  v2 = STACK[0x5780];
  if (STACK[0x5780])
  {
    v3 = STACK[0x5290];
  }

  else
  {
    v3 = STACK[0x5378];
  }

  if (v2)
  {
    v4 = STACK[0x5288];
  }

  else
  {
    v4 = STACK[0x5278];
  }

  if (v2)
  {
    v5 = STACK[0x5260];
  }

  else
  {
    v5 = STACK[0x5550];
  }

  if (v2)
  {
    v6 = STACK[0x5270];
  }

  else
  {
    v6 = STACK[0x5258];
  }

  if (v2)
  {
    v7 = STACK[0x5630];
  }

  else
  {
    v7 = STACK[0x5348];
  }

  v8 = STACK[0x52A0];
  if (v2)
  {
    v8 = STACK[0x5670];
  }

  v9 = (STACK[0x5780] & 2) == 0;
  v10 = STACK[0x5540];
  if ((STACK[0x5780] & 2) != 0)
  {
    v10 = STACK[0x5530];
  }

  LODWORD(STACK[0x5530]) = v10;
  v11 = STACK[0x5268];
  if (v9)
  {
    v12 = v4;
  }

  else
  {
    v12 = STACK[0x5268];
  }

  LODWORD(STACK[0x5348]) = v12;
  if (v9)
  {
    v13 = v11;
  }

  else
  {
    v13 = v4;
  }

  LODWORD(STACK[0x5250]) = v13;
  v14 = STACK[0x5520];
  if (v9)
  {
    v14 = STACK[0x5510];
  }

  LODWORD(STACK[0x5510]) = v14;
  v15 = STACK[0x5470];
  if (v9)
  {
    v15 = STACK[0x5460];
  }

  LODWORD(STACK[0x5540]) = v15;
  v16 = STACK[0x5500];
  if (!v9)
  {
    v16 = STACK[0x54D0];
  }

  LODWORD(STACK[0x5520]) = v16;
  v17 = STACK[0x54F0];
  if (!v9)
  {
    v17 = STACK[0x54E0];
  }

  LODWORD(STACK[0x5550]) = v17;
  v18 = STACK[0x54C0];
  if (v9)
  {
    v18 = STACK[0x54B0];
  }

  LODWORD(STACK[0x54E0]) = v18;
  LODWORD(STACK[0x5378]) = LODWORD(STACK[0x5130]) + 2070821617;
  v19 = STACK[0x5680];
  LODWORD(STACK[0x5278]) = v3;
  if (v9)
  {
    v19 = v3;
  }

  LODWORD(STACK[0x5500]) = v19;
  v20 = STACK[0x5730];
  LODWORD(STACK[0x57B0]) = v5;
  if (v9)
  {
    v20 = v5;
  }

  LODWORD(STACK[0x5670]) = v20;
  v21 = STACK[0x5590];
  LODWORD(STACK[0x5270]) = v6;
  if (!v9)
  {
    v21 = v6;
  }

  LODWORD(STACK[0x5630]) = v21;
  LODWORD(STACK[0x54B0]) = v7;
  LODWORD(STACK[0x5268]) = v8;
  if (v9)
  {
    v22 = v7;
  }

  else
  {
    v22 = v8;
  }

  LODWORD(STACK[0x5460]) = v22;
  v23 = STACK[0x53A8];
  if (STACK[0x53A8])
  {
    v24 = STACK[0x51D0];
  }

  else
  {
    v24 = STACK[0x51E0];
  }

  if (v23)
  {
    v25 = STACK[0x51C8];
  }

  else
  {
    v25 = STACK[0x51C0];
  }

  if (v23)
  {
    v26 = STACK[0x5160];
  }

  else
  {
    v26 = STACK[0x5170];
  }

  if (v23)
  {
    v27 = STACK[0x5168];
  }

  else
  {
    v27 = STACK[0x5158];
  }

  if (v23)
  {
    v28 = STACK[0x5228];
  }

  else
  {
    v28 = STACK[0x5150];
  }

  v29 = LODWORD(STACK[0x51B0]) ^ LODWORD(STACK[0x5248]) ^ v1 ^ 0x6947029F;
  if (v23)
  {
    v30 = STACK[0x5148];
  }

  else
  {
    v30 = v29;
  }

  if (v23)
  {
    v31 = v29;
  }

  else
  {
    v31 = STACK[0x5140];
  }

  v32 = STACK[0x53F8];
  if ((v23 & 2) == 0)
  {
    v32 = STACK[0x5138];
  }

  LODWORD(STACK[0x52A0]) = v32;
  v33 = *(STACK[0x57D8] + 8 * v0);
  LODWORD(STACK[0x54F0]) = v24;
  LODWORD(STACK[0x5470]) = v25;
  if ((v23 & 2) != 0)
  {
    v34 = v25;
  }

  else
  {
    v34 = v24;
  }

  LODWORD(STACK[0x54C0]) = v34;
  LODWORD(STACK[0x57A0]) = v26;
  LODWORD(STACK[0x51F8]) = v27;
  if ((v23 & 2) != 0)
  {
    v35 = v27;
  }

  else
  {
    v35 = v26;
  }

  LODWORD(STACK[0x54D0]) = v35;
  v36 = STACK[0x5400];
  LODWORD(STACK[0x51D8]) = v28;
  if ((v23 & 2) != 0)
  {
    v36 = v28;
  }

  LODWORD(STACK[0x5288]) = v36;
  v37 = STACK[0x5430];
  LODWORD(STACK[0x51E0]) = v31;
  if ((v23 & 2) == 0)
  {
    v37 = v31;
  }

  LODWORD(STACK[0x5290]) = v37;
  v38 = STACK[0xD680];
  v39 = STACK[0x5570];
  LODWORD(STACK[0x5230]) = v30;
  if ((v23 & 2) == 0)
  {
    v39 = v30;
  }

  LODWORD(STACK[0x53F8]) = v39;
  return v33(v38);
}

uint64_t sub_1003381E8()
{
  v1 = STACK[0x57D8];
  STACK[0x65D8] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (((v0 - 1590727070) & 0x5ED0EFFB ^ 0x526A) + v0)))();
}

uint64_t sub_100338324@<X0>(unint64_t a1@<X8>)
{
  v3 = v1 - 13111;
  STACK[0x1D4C8] = a1;
  LODWORD(STACK[0x1D4C0]) = (v1 + 1717148634) ^ (1964904101 * ((((v2 - 240) | 0x34C81AAA) - (v2 - 240) + ((v2 - 240) & 0xCB37E550)) ^ 0xCEEAF12E));
  v4 = v1 ^ 0x2413;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * v4))(v2 - 240);
  return (*(v5 + 8 * v3))(v6);
}

uint64_t sub_10033841C()
{
  v1 = STACK[0x57D8];
  STACK[0x7E68] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 175045475) ^ 0xA6ECF2E) + v0)))();
}

uint64_t sub_100338498()
{
  v1 = STACK[0xACD8];
  v2 = *STACK[0xACD8];
  *(v2 - 0x2369327399A66D7DLL) = STACK[0x5AA4];
  *(v2 - 0x2369327399A66D75) = STACK[0x73D0];
  v3 = *v1;
  STACK[0x9468] = v2 - 0x2369327399A66D6DLL;
  LODWORD(STACK[0x83DC]) = 0;
  STACK[0x7810] = v3;
  STACK[0x8000] = 0;
  STACK[0x57C0] = &STACK[0x83DC];
  STACK[0x5FC0] = &STACK[0x83DC];
  LODWORD(STACK[0xA12C]) = 2101965964;
  LODWORD(STACK[0xC0DC]) = -2013569082;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1003386F4(uint64_t a1, unsigned int a2, unsigned int a3, int a4, int a5, unsigned int a6, int a7, int a8)
{
  v14 = a1 + 16 * (((v8 + a8) ^ v11) + v10 + ((v10 < a2) << 32)) + v12;
  *v14 = 0;
  *(v14 + 8) = a4;
  *(v14 + 12) = a4;
  v15 = v10 + a5 < *v13 + a3;
  if (v10 + a5 < a3 != *v13 > a6)
  {
    v15 = *v13 > a6;
  }

  return (*(STACK[0x57D8] + 8 * ((v15 * a7) ^ v9)))();
}

uint64_t sub_1003387EC()
{
  v0 = STACK[0x51B8] - 22085;
  LODWORD(STACK[0xB7B0]) = LODWORD(STACK[0x66EC]) << (STACK[0x51B8] - 82);
  v1 = STACK[0x57D8];
  STACK[0x9078] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x174D)))();
}

uint64_t sub_10033893C()
{
  STACK[0x9EC0] = &STACK[0xB624];
  LODWORD(STACK[0x9E1C]) = -1819889897;
  return (*(STACK[0x57D8] + 8 * (v0 - 16846)))();
}

uint64_t sub_100338A3C@<X0>(uint64_t a1@<X5>, uint64_t a2@<X6>, _DWORD *a3@<X7>, uint64_t a4@<X8>)
{
  v19 = a4 + v5;
  v20 = v9 + v5;
  v21 = *a3 & 0xFFFFFFF8;
  v22 = *(*v18 + (v21 & ((v19 & 0xFFFFFFF8 ^ v8) + 1591636059 + (((v19 & 0xFFFFFFF8) << ((v4 ^ 0x7E) + 62)) & 0x9310))));
  v23 = (__ROR8__(v19 & 0xFFFFFFFFFFFFFFF8, 8) + v22) ^ v11;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ v14;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ a2;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v15;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ a1;
  v32 = __ROR8__(v31, 8);
  v33 = v31 ^ __ROR8__(v30, 61);
  v34 = (v32 + v33) ^ v12;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (v36 + v35 - ((2 * (v36 + v35)) & 0x9CA6B68798F65AAALL) - 0x31ACA4BC3384D2ABLL) ^ 0x8E9A94A9F0BEE6B4;
  v38 = *(*v18 + (v21 & (1426692983 * (((786128014 * (v20 & 0xFFFFFFF8)) & 0xCCA46450) + ((393064007 * (v20 & 0xFFFFFFF8)) ^ 0x6652322A)) - 724567453)));
  v39 = (v38 + __ROR8__(v20 & 0xFFFFFFFFFFFFFFF8, 8)) ^ v11;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ v14;
  v42 = __ROR8__(v37, 8) + (v37 ^ __ROR8__(v35, 61));
  v43 = v41 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v41, 8);
  v45 = (v16 - ((v44 + v43) | v16) + ((v44 + v43) | 0x982955B4B5CDBCECLL)) ^ 0x6DDBAB67BD679E94;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ v15;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (v49 + v48 - ((2 * (v49 + v48)) & 0x8B093254A3457214) - 0x3A7B66D5AE5D46F6) ^ 0x3D03DC74D9B23306;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = __ROR8__(v50, 8);
  v53 = (v52 + v51 - ((2 * (v52 + v51)) & 0xDBE9B08727651E5CLL) - 0x120B27BC6C4D70D2) ^ 0xC987932632520B77;
  v54 = v53 ^ __ROR8__(v51, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ v13;
  v56 = v5 + 1;
  *v20 = (((__ROR8__(v55, 8) + (v55 ^ __ROR8__(v54, 61))) ^ v17) >> (8 * (v20 & 7u))) ^ (((((2 * v42) | 0x72B64FBF6DD1C9CALL) - v42 + 0x46A4D82049171B1BLL) ^ 0xD6387BF1533F3623) >> (8 * (v19 & 7u))) ^ *v19;
  v57 = v56 + v10 < v6;
  if (v6 < v10 != v56 > 0x6585B56F)
  {
    v57 = v6 < v10;
  }

  return (*(STACK[0x57D8] + 8 * ((v57 * v7) ^ v4)))();
}

uint64_t sub_100338D68(int a1)
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xBE4C];
  LODWORD(STACK[0x9094]) = a1 + 7;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100338DB8(uint64_t a1)
{
  v2 = STACK[0x9EF0];
  STACK[0xAD20] = STACK[0x9EF0];
  STACK[0x7B38] = STACK[0xBF78];
  LODWORD(STACK[0x7D4C]) = (((v1 - 928083125) | 1) + (((LODWORD(STACK[0x9E4C]) ^ 0xED185848) + 317171640) ^ ((LODWORD(STACK[0x9E4C]) ^ 0x12CFCBD8) - 315608024) ^ ((LODWORD(STACK[0x9E4C]) ^ 0x2DCB1304) - 768283396)) - 769892206) & 0xFFFFFFF0 ^ 0xD21C8094;
  STACK[0x7ED0] = v2;
  STACK[0xC880] = 0xD591CB0B189BA27FLL;
  LODWORD(STACK[0xCD80]) = -1008958186;
  return (*(STACK[0x57D8] + 8 * ((16210 * (v1 < 0x10C4EEA4)) ^ (v1 - 928085927))))(a1, 272629776, 410912332, 1543499262, 2265206393, 3965507692, 4221484704, 0x1B3EC18598D49E09);
}

uint64_t sub_100338FA0()
{
  v0 = STACK[0x51B8] ^ 0x4DB9;
  v1 = STACK[0x51B8] - 19580;
  STACK[0x71F0] = STACK[0x6750] + SLODWORD(STACK[0x7D0C]);
  v2 = STACK[0x57D8];
  STACK[0x7DD8] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((v0 + 910) ^ v1)))();
}

uint64_t sub_100339064()
{
  v1 = STACK[0x57D8];
  STACK[0xB2F0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 + 5847)))();
}

uint64_t sub_100339104@<X0>(int a1@<W8>)
{
  v1 = STACK[0x4144] & 0x48736CE9;
  LODWORD(STACK[0x8FA0]) = a1;
  if (SLODWORD(STACK[0xAC6C]) >= SLODWORD(STACK[0x6C5C]))
  {
    v2 = STACK[0x6C5C];
  }

  else
  {
    v2 = STACK[0xAC6C];
  }

  return (*(STACK[0x57D8] + 8 * (((v2 > (STACK[0x51B8] - 22614)) * (v1 - 9157)) ^ LODWORD(STACK[0x4140]))))();
}

uint64_t sub_100339214(int a1)
{
  v3 = *(STACK[0x57D8] + 8 * a1);
  LODWORD(STACK[0x5720]) = 253;
  LODWORD(STACK[0x56D0]) = 252;
  LODWORD(STACK[0x5750]) = v1 - 8;
  return v3(117, 159, v2 + (v1 - 5), 126);
}

uint64_t sub_10033930C()
{
  v2 = LODWORD(STACK[0x7490]);
  v3 = 1534937323 * ((~((v1 - 240) | 0x561D3D1F2394DD5DLL) + ((v1 - 240) & 0x561D3D1F2394DD5DLL)) ^ 0x649A4A221A85D9E5);
  LODWORD(STACK[0x1D4CC]) = v3 + v0 + 1451493860;
  STACK[0x1D4D8] = v2 + v3;
  LODWORD(STACK[0x1D4D4]) = (v0 + 613610478) ^ v3;
  LODWORD(STACK[0x1D4E0]) = v3 + v0 + 613610478 + 22;
  LODWORD(STACK[0x1D4C8]) = ((v0 + 613610478) ^ 0xDB8) - v3;
  STACK[0x1D4C0] = v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 + 9182)))(v1 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4E4])))(v5);
}

uint64_t sub_1003393F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = (v8 ^ v13) + a3;
  *(v10 + v14) = *(a2 + v14) ^ *(v11 + (v14 & 0xF)) ^ *((v14 & 0xF) + v12 + 3) ^ *((v14 & 0xF) + a1 + 4) ^ v14 & 0xF ^ 0xF;
  return (*(STACK[0x57D8] + 8 * (((v14 == 0) * a8) ^ v9)))();
}

uint64_t sub_1003394A8()
{
  v4 = v2 + v1 - 414525631 < (v2 + 1553847058);
  if ((v2 + v1 - 414525631) < 0x5C9DD30E != v0 > ((v3 - 1630359786) & 0x612D7EFFu) - 1553878503)
  {
    v4 = v0 > ((v3 - 1630359786) & 0x612D7EFFu) - 1553878503;
  }

  return (*(STACK[0x57D8] + 8 * ((23 * v4) ^ v3)))();
}

uint64_t sub_100339618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v8 + 8 * (v7 + 3281)))(a1, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1003397F0@<X0>(__int16 a1@<W8>)
{
  v1 = STACK[0x51B8] - 3485;
  v2 = STACK[0x51B8] - 22408;
  LOWORD(STACK[0xD6DC]) = a1;
  return (*(STACK[0x57D8] + 8 * ((v1 ^ 0x59A8) + v2)))();
}

uint64_t sub_10033987C()
{
  v1[293] = -25;
  v1[1288] = 45;
  *STACK[0x5730] = -84;
  v1[2239] = 44;
  v1[315] = 96;
  LODWORD(STACK[0x57A0]) = 878543760;
  v1[3212] = 7;
  v1[1266] = -41;
  *STACK[0x5740] = 4;
  return (*(STACK[0x57D8] + 8 * v0))(1109954829, 1109954829, 2132980230, 2132980230, 1747384064, 1747384064);
}

uint64_t sub_10033997C()
{
  v2 = *(STACK[0x7C08] + 476) ^ 0x5DE45C72 ^ *(*STACK[0x51F0] + (*STACK[0x51E8] & 0xD265232C)) & 0x7FFFFFFFu;
  v3 = 1534937323 * ((~(v1 - 240) & 0x91D9377D3553F46ALL | (v1 - 240) & 0x6E26C882CAAC0B95) ^ 0x5CA1BFBFF3BD0F2DLL);
  LODWORD(STACK[0x1D4D4]) = (v0 + 317629820) ^ v3;
  LODWORD(STACK[0x1D4C8]) = 317629820 - v3 + v0 + 1292;
  STACK[0x57C0] = v2;
  STACK[0x1D4D8] = v2 + v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  LODWORD(STACK[0x1D4CC]) = v3 + v0 + 1451516474;
  LODWORD(STACK[0x1D4E0]) = (v0 ^ 0x12EEBA95) + v3;
  STACK[0x1D4C0] = v3 ^ 0x4C2FF23C;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 + 31796)))(v1 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4E4])))(v5);
}

uint64_t sub_100339AAC()
{
  LODWORD(STACK[0x6008]) = v1;
  v2 = STACK[0x57D8];
  STACK[0x9AC0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x20A5 ^ ((v0 - 975) | 0x3420))))();
}

uint64_t sub_100339B6C()
{
  v0 = STACK[0x363C];
  v1 = STACK[0xC4EC];
  LODWORD(STACK[0x8E8C]) = STACK[0xC4EC];
  STACK[0x6A80] = STACK[0xB7A0];
  v2 = (((v1 >> 4) ^ 0xACC7E193) + ((v0 - 2196) ^ 0x6DE8A368)) ^ (((v1 >> 4) ^ 0xD0C9D170) + 300338143) ^ (((v1 >> 4) ^ 0x712FF8EA) + ((2 * v0) ^ 0xB0002391));
  v3 = *STACK[0x45F8];
  v4 = *STACK[0x45F0];
  v5 = v2 + 613993831 + ((((13 * (v4 + v3) + 7) & 0xB ^ 0x4D4F1685) + 1004023485) ^ (((13 * (v4 + v3) + 7) & 0xB ^ 0x94221B2D) - 491445483) ^ (((13 * (v4 + v3) + 7) & 0xB ^ 0xD96D0DAB) - 1342556781));
  v6 = (v5 ^ 0x9CDCB7A6) & (2 * (v5 & 0x98C127B7)) ^ v5 & 0x98C127B7;
  v7 = ((2 * (v5 ^ 0x8DDEF0AC)) ^ 0x2A3FAE36) & (v5 ^ 0x8DDEF0AC) ^ (2 * (v5 ^ 0x8DDEF0AC)) & 0x151FD71A;
  v8 = v7 ^ 0x15005109;
  v9 = (v7 ^ 0xD8610) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x547F5C6C) & v8 ^ (4 * v8) & 0x151FD718;
  v11 = (v10 ^ 0x141F5400) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x1008313)) ^ 0x51FD71B0) & (v10 ^ 0x1008313) ^ (16 * (v10 ^ 0x1008313)) & 0x151FD710;
  v13 = v11 ^ 0x151FD71B ^ (v12 ^ 0x111D5100) & (v11 << 8);
  LODWORD(STACK[0x9E74]) = (16 * v5) ^ (32 * ((v13 << 16) & 0x51F0000 ^ v13 ^ ((v13 << 16) ^ 0x71B0000) & (((v12 ^ 0x402860B) << 8) & 0x51F0000 ^ (((v12 ^ 0x402860B) << 8) ^ 0x7D70000) & (v12 ^ 0x402860B) ^ 0x80000))) ^ 0x8C889810;
  v14 = (19 * ((v4 - v3) ^ 0x10)) & 0x17;
  if (v14 == 1)
  {
    v14 = 0;
  }

  LODWORD(STACK[0x697C]) = v14;
  STACK[0x76C0] = 0;
  LODWORD(STACK[0xC414]) = -769884012;
  return (*(STACK[0x57D8] + 8 * ((509 * (STACK[0x5C70] != 0x30BDFED8F32E6831)) ^ v0)))();
}

uint64_t sub_100339EC8()
{
  LODWORD(STACK[0x6FC4]) = 1634976021;
  STACK[0xBB68] = 4;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 9152)))(&STACK[0x1D1CD], &STACK[0x6F14], &STACK[0xBB68], 0, 0);
  v4 = 551690071 * ((((v1 - 240) ^ 0x2188320120000818) & 0x2FAA32D563628D1ALL | ((v1 - 240) ^ 0xC0450C0A0C1060A4) & 0xD055CD2A9C9D72E5) ^ 0x90506CC562FD3BEBLL);
  STACK[0x1D4E0] = v4;
  LODWORD(STACK[0x1D4C4]) = v4 ^ (v0 + 806215950) ^ 0xDAA;
  LODWORD(STACK[0x1D4C8]) = ((v0 + 806215950) ^ 0x6B) - v4;
  LODWORD(STACK[0x1D4C0]) = (v0 - 1079089617) ^ v4;
  LODWORD(STACK[0x1D4D0]) = v4;
  STACK[0x1D4D8] = v3 - v4;
  LODWORD(STACK[0x1D4CC]) = v0 + 806215950 - v4;
  v5 = (*(v2 + 8 * (v0 ^ 0x2411)))(v1 - 240);
  return (*(v2 + 8 * SLODWORD(STACK[0x1D4D4])))(v5);
}

uint64_t sub_10033A134()
{
  v8 = *(STACK[0x57D8] + 8 * (((v1 - 124617450) & 0xEC655B76) + 2734));
  STACK[0x5420] = v0 & 0xFFFFFFF0;
  *&STACK[0x56D0] = v7;
  *&STACK[0x5590] = v3;
  *&STACK[0x56C0] = v5;
  *&STACK[0x5430] = v6;
  *&STACK[0x5680] = v4;
  return v8(v2);
}

uint64_t sub_10033A214()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x7F04];
  LODWORD(STACK[0x9094]) = -32197457;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10033A330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = *(v6 + ((((v3 + a2) & 0xFFFFFFF8 ^ 0xFB3BECC1) - 23683882 + ((2 * ((v3 + a2) & 0xFFFFFFF8)) & 0xF677D980)) & v7));
  v18 = __ROR8__((v3 + a2) & 0xFFFFFFFFFFFFFFF8, 8);
  v19 = (v18 + v17 - ((v2 + 0x336ACAA5BB6C5710) & (2 * (v18 + v17))) - 0x664A9AAD2249A605) ^ 0x6DA3341B42E8659CLL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (0x2D8F3BE9BC8F9EDFLL - ((v21 + v20) | 0x2D8F3BE9BC8F9EDFLL) + ((v21 + v20) | 0xD270C41643706120)) ^ 0xC74286F87F800B69;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ v16;
  v25 = __ROR8__(v24, 8);
  v26 = v24 ^ __ROR8__(v23, 61);
  v27 = (v25 + v26) ^ 0xE5AF1AB32EBD3CDDLL;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = *(v6 + ((((v3 + a2 + 1) & 0xFFFFFFF8 ^ 0xEFE344CA) + 166675661 + ((2 * ((v3 + a2 + 1) & 0xFFFFFFF8)) & 0xDFC68990)) & v7));
  v30 = (__ROR8__((v3 + a2 + 1) & 0xFFFFFFFFFFFFFFF8, 8) + v29) ^ v10;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (__ROR8__(v27, 8) + v28) ^ 0xC7DDC9F6CC45B721;
  v34 = (0xD5815877FCE6B008 - ((v32 + v31) | 0xD5815877FCE6B008) + ((v32 + v31) | 0x2A7EA78803194FF7)) ^ 0x3F4CE5663FE925BELL;
  v35 = v33 ^ __ROR8__(v28, 61);
  v36 = v34 ^ __ROR8__(v31, 61);
  v37 = (__ROR8__(v34, 8) + v36) ^ v16;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0xE5AF1AB32EBD3CDDLL;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (__ROR8__(v33, 8) + v35) ^ a1;
  v43 = (0xA9CF89E49FDCABBCLL - ((v41 + v40) | 0xA9CF89E49FDCABBCLL) + ((v41 + v40) | 0x5630761B60235443)) ^ 0x91EDBFEDAC66E362;
  v44 = v42 ^ __ROR8__(v35, 61);
  v45 = v43 ^ __ROR8__(v40, 61);
  v46 = __ROR8__(v43, 8) + v45;
  v47 = *(v6 + ((1034213387 * (((-1746340957 * ((v3 + a2 + 2) & 0xFFFFFFF8)) & 0x403016B8) + ((-1746340957 * ((v3 + a2 + 2) & 0xFFFFFFF8)) | 0x403016BE)) - 858177683) & v8));
  v48 = __ROR8__((v3 + a2 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v49 = (((2 * (v48 + v47)) | 0xD622743678F1C280) - (v48 + v47) - 0x6B113A1B3C78E140) ^ 0x9F076B52A326DD27;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (v46 - ((2 * v46) & 0xCE22E1586F737E02) + 0x671170AC37B9BF01) ^ 0xCF3750096E6B6579;
  v52 = __ROR8__(v49, 8);
  v53 = (__ROR8__(v42, 8) + v44) ^ v15;
  v54 = (((2 * (v52 + v50)) | 0xB58FE52E340981DCLL) - (v52 + v50) + 0x25380D68E5FB3F12) ^ 0xCFF5B07926F4AAA7;
  v55 = v54 ^ __ROR8__(v50, 61);
  v56 = __ROR8__(v54, 8);
  v57 = v51 ^ __ROR8__(v45, 61);
  v58 = ((2 * (v56 + v55)) & 0x15FB096D3C52CA8) - (v56 + v55) + 0x7F5027B4961D69ABLL;
  v59 = __ROR8__(v51, 8);
  v60 = v58 ^ 0x5D25F373AE285030 ^ __ROR8__(v55, 61);
  v61 = __ROR8__(v58 ^ 0x5D25F373AE285030, 8) + v60;
  v62 = v53 ^ __ROR8__(v44, 61);
  v63 = *(v6 + ((((v3 + a2 + 3) & 0xFFFFFFF8) - 103642732) & v8));
  v64 = (v63 + __ROR8__((v3 + a2 + 3) & 0xFFFFFFFFFFFFFFF8, 8)) ^ v10;
  v65 = ((v61 & v13 ^ 0x610855D11401826) + (v61 ^ 0xE1A31A22E03F65D9) - ((v61 ^ 0xE1A31A22E03F65D9) & v13)) ^ 0x22BC8FEC1FDB053BLL;
  v66 = v64 ^ __ROR8__(v63, 61);
  v67 = (__ROR8__(v64, 8) + v66) ^ 0x153242EE3CF06A49;
  v68 = v65 ^ __ROR8__(v60, 61);
  v69 = v67 ^ __ROR8__(v66, 61);
  v70 = __ROR8__(v65, 8);
  v71 = (__ROR8__(v67, 8) + v69) ^ v16;
  v72 = v71 ^ __ROR8__(v69, 61);
  v73 = __ROR8__(v71, 8);
  v74 = (v73 + v72 - ((2 * (v73 + v72)) & 0xEAF389E1B8A5A522) - 0xA863B0F23AD2D6FLL) ^ 0x10D6DE43F2EFEE4CLL;
  v75 = __ROR8__(v74, 8);
  v76 = (v59 + v57) ^ v15;
  v77 = v76 ^ __ROR8__(v57, 61);
  v78 = v74 ^ __ROR8__(v72, 61);
  v79 = (((2 * (v70 + v68)) | 0xE21236CAAE7A624CLL) - (v70 + v68) - 0x71091B65573D3126) ^ 0xB6D4D2939B788607;
  v80 = v79 ^ __ROR8__(v68, 61);
  v81 = (((2 * (v75 + v78)) | 0x37A6886A654DFA98) - (v75 + v78) - 0x1BD3443532A6FD4CLL) ^ 0xDC0E8DC3FEE34A6DLL ^ __ROR8__(v78, 61);
  v82 = (((__ROR8__(v53, 8) + v62) ^ v12) >> (v9 & 0x38)) ^ *(v3 + a2);
  v83 = (STACK[0x57C0] + a2);
  LODWORD(v62) = (((__ROR8__(v76, 8) + v77) ^ v12) >> ((v9 + 8) & 0x38)) ^ *v83;
  v84 = (__ROR8__((((2 * (v75 + v78)) | 0x37A6886A654DFA98) - (v75 + v78) - 0x1BD3443532A6FD4CLL) ^ 0xDC0E8DC3FEE34A6DLL, 8) + v81) ^ a1;
  v85 = v84 ^ __ROR8__(v81, 61);
  v86 = (__ROR8__(v79, 8) + v80) ^ a1;
  v87 = (__ROR8__(v84, 8) + v85) ^ v15;
  v88 = v86 ^ __ROR8__(v80, 61);
  v89 = (__ROR8__(v86, 8) + v88) ^ v15;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = __ROR8__(v89, 8);
  LODWORD(v76) = (((__ROR8__(v87, 8) + (v87 ^ __ROR8__(v85, 61))) ^ v12) >> ((v9 + 24) & 0x38)) ^ v83[2];
  LODWORD(v87) = (a2 + 1261123099) ^ 0x328DE344;
  LODWORD(v89) = (2 * ((a2 + 1261123099) & 0x34D4C9E5)) & v87 ^ (a2 + 1261123099) & 0x34D4C9E5 ^ ((2 * ((a2 + 1261123099) & 0x34D4C9E5)) & 0x90280 | 0x6400021);
  LODWORD(v87) = (2 * v87) & v14 ^ 0x82492AA1 ^ ((2 * v87) ^ 0xCB25542) & v87;
  LODWORD(v89) = (4 * v89) & v14 ^ v89 ^ ((4 * v89) ^ 0x19000084) & v87;
  LODWORD(v87) = (4 * v87) & v14 ^ 0x86190021 ^ ((4 * v87) ^ 0x1964AA84) & v87;
  LODWORD(v83) = (((((2 * ((v91 + v90) ^ 0x6F18F2E93F1DB8D0)) | 0xD4D76AEF954414B2) - ((v91 + v90) ^ 0x6F18F2E93F1DB8D0) - 0x6A6BB577CAA20A59) ^ 0xC4B08F4C517AFAA1) >> ((v9 + 16) & 0x38)) ^ v83[1];
  LODWORD(v90) = (16 * v89) & v14 ^ v89 ^ ((16 * v89) ^ 0x64000A10) & v87;
  LODWORD(v83) = (v76 << 24) | (v83 << 16);
  LODWORD(v76) = (16 * v87) & v14 ^ 0x824900A1 ^ ((16 * v87) ^ 0x6592AA10) & v87;
  LODWORD(v90) = (v90 << 8) & (v14 - 160) ^ v90 ^ ((v90 << 8) ^ 0x400AA100) & v76;
  *(v4 + 4 * ((((a2 + 1261123099) ^ (2 * ((v90 << 16) & v11 ^ v90 ^ ((v90 << 16) ^ 0x2AA10000) & ((v76 << 8) & v11 ^ 0x6510000 ^ ((v76 << 8) ^ 0x592A0000) & v76)))) >> 2) ^ 0x2D11A729)) = (v83 | v82 | (v62 << 8)) - 951885462 - 2 * ((v83 | v82 | (v62 << 8)) & 0x4743616F ^ v82 & 5);
  return (*(STACK[0x57D8] + 8 * ((((a2 + 4) < 0x40) | (8 * ((a2 + 4) < 0x40))) ^ v5)))();
}

uint64_t sub_10033AC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v8 + 8 * ((((v7 + 1476988297) | 0x5822418) - 1569398728) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_10033ADC4()
{
  if (LODWORD(STACK[0xBE4C]) == -769884010)
  {
    v1 = v0;
  }

  else
  {
    v1 = 0;
  }

  return (*(STACK[0x57D8] + 8 * ((v1 * ((STACK[0x51B8] - 18310) ^ 0x189E)) ^ (STACK[0x51B8] - 588))))();
}

uint64_t sub_10033AE44()
{
  v7 = __ROR8__(v1 & 0xFFFFFFFFFFFFFFF8, 8) - 0x67659A219E1678C8;
  v8 = __ROR8__(v7 ^ 0xAF44247A204C829CLL, 8);
  v7 ^= 0x6B970A892F00BB58uLL;
  v9 = (v8 + v7) ^ 0x767CBF12CE87AC7DLL;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (((v11 + v10) | 0x8C235F4F670E3277) - ((v11 + v10) | 0x73DCA0B098F1CD88) + 0x73DCA0B098F1CD88) ^ 0x314FBB768167C1A8;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0x1A1C4C99A6B3D690;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x58EFACCBC8D7665BLL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xF30ADCCD896F82F3;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((v20 + v19) | 0xC45DDF3BC035B8D4) - ((v20 + v19) | 0x3BA220C43FCA472BLL) + 0x3BA220C43FCA472BLL) ^ 0x40346DDF9676F8EDLL;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = __ROR8__(v21, 8);
  v24 = __ROR8__(v0 & 0xFFFFFFFFFFFFFFF8, 8) - 0x67659A219E1678C8;
  v25 = __ROR8__(v24 ^ 0xAF44247A204C829CLL, 8);
  v24 ^= 0x6B970A892F00BB58uLL;
  v26 = (v25 + v24 - ((2 * (v25 + v24)) & 0x982EBCF4F8E4EAE4) + 0x4C175E7A7C727572) ^ 0x3A6BE168B2F5D90FLL;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0xBD6CE439E669F3DFLL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((v30 + v29) | 0xFD53D274DB2D06F7) - ((v30 + v29) | 0x2AC2D8B24D2F908) + 0x2AC2D8B24D2F908) ^ 0xE74F9EED7D9ED067;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x58EFACCBC8D7665BLL;
  v34 = __ROR8__(v33, 8);
  v35 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v36 = v33 ^ __ROR8__(v32, 61);
  v37 = -2 - (((0x67659A219E1678C7 - v35) | 0x170F0382A71A5D9) + ((v35 + 0x9A65DE61E98738) | 0xFE8F0FC7D58E5A26));
  v38 = __ROR8__(v37 ^ 0xAE34D4420A3D2745, 8);
  v37 ^= 0x6AE7FAB105711E81uLL;
  v39 = (v38 + v37) ^ 0x767CBF12CE87AC7DLL;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (v34 + v36) ^ 0xF30ADCCD896F82F3;
  v43 = v42 ^ __ROR8__(v36, 61);
  v44 = (v41 + v40 - ((2 * (v41 + v40)) & 0x23C9702A2EDEBB10) + 0x11E4B815176F5D88) ^ 0xAC885C2CF106AE57;
  v45 = v44 ^ __ROR8__(v40, 61);
  v46 = __ROR8__(v44, 8);
  v47 = ((v23 + v22) | 0x81603B14331C735BLL) - ((v23 + v22) | 0x7E9FC4EBCCE38CA4);
  v48 = (__ROR8__(v42, 8) + v43) ^ 0x8469B2E456434039;
  v49 = (((v46 + v45) | 0xCF8282744D7FB1C1) - ((v46 + v45) | 0x307D7D8BB2804E3ELL) + 0x307D7D8BB2804E3ELL) ^ 0xD59ECEEDEBCC6751;
  v50 = v49 ^ __ROR8__(v45, 61);
  v51 = __ROR8__(v48, 8) + (v48 ^ __ROR8__(v43, 61));
  v52 = __ROR8__(v4 & 0xFFFFFFFFFFFFFFF8, 8) - 0x67659A219E1678C8;
  v53 = __ROR8__(v52 ^ 0xAF44247A204C829CLL, 8);
  v52 ^= 0x6B970A892F00BB58uLL;
  v54 = v53 + v52 - ((2 * (v53 + v52)) & 0x29A474945A793C12);
  v55 = (__ROR8__(v49, 8) + v50) ^ 0x58EFACCBC8D7665BLL;
  v56 = v55 ^ __ROR8__(v50, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0xF30ADCCD896F82F3;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  v60 = (v54 + 0x14D23A4A2D3C9E09) ^ 0x62AE8558E3BB3274 ^ __ROR8__(v52, 61);
  v61 = (__ROR8__((v54 + 0x14D23A4A2D3C9E09) ^ 0x62AE8558E3BB3274, 8) + v60) ^ 0xBD6CE439E669F3DFLL;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = __ROR8__(v61, 8);
  v64 = ((v51 ^ 0x9C8651A6C7A7E5ALL) >> (8 * (v0 & 7u))) ^ LODWORD(STACK[0x5710]);
  v65 = (((2 * (v63 + v62)) | 0x812392A6C1B90CDELL) - (v63 + v62) + 0x3F6E36AC9F237991) ^ 0xDA8D85CAC66F50FFLL;
  v66 = v65 ^ __ROR8__(v62, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0x58EFACCBC8D7665BLL;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = __ROR8__(v67, 8);
  v70 = (v59 + v58 - ((2 * (v59 + v58)) & 0xE8223AA1B678E960) - 0xBEEE2AF24C38B50) ^ 0x7078AFB48D7F3489;
  v71 = (((2 * (v69 + v68)) & 0xC2A228BDDE2ACE14) - (v69 + v68) - 0x6151145EEF15670BLL) ^ 0x6DA4376C99851A06;
  v72 = v71 ^ __ROR8__(v68, 61);
  v73 = __ROR8__(v71, 8);
  v74 = ((__ROR8__(v70, 8) + (v70 ^ __ROR8__(v58, 61))) ^ 0x9C8651A6C7A7E5ALL) >> (8 * (v3 & 7u));
  v75 = (v73 + v72 - ((2 * (v73 + v72)) & 0xFC6A58D1D6218F00) - 0x1CAD39714EF3880) ^ 0x7A5C9E8CBD5387B9;
  v76 = v75 ^ __ROR8__(v72, 61);
  v77 = __ROR8__(v75, 8);
  v78 = v74 ^ LODWORD(STACK[0x5720]);
  v79 = __ROR8__(v5 & 0xFFFFFFFFFFFFFFF8, 8);
  v80 = (v77 + v76) ^ 0x9C8651A6C7A7E5ALL;
  v81 = ((2 * (v79 - 0x67659A219E1678C8)) | 0xCFF3BFA97CC152B0) - (v79 - 0x67659A219E1678C8) + 0x1806202B419F56A8;
  v82 = __ROR8__(v81 ^ 0x48BDFBAE9E2C2BC4, 8);
  v83 = (v80 >> (8 * (v4 & 7u))) ^ LODWORD(STACK[0x5730]);
  v81 ^= 0x8C6ED55D91601200;
  v84 = __ROR8__((((2 * (v82 + v81)) | 0x7CD5E468B86B424ELL) - (v82 + v81) - 0x3E6AF2345C35A127) ^ 0x48164D2692B20D5ALL, 8);
  v85 = (((2 * (v82 + v81)) | 0x7CD5E468B86B424ELL) - (v82 + v81) - 0x3E6AF2345C35A127) ^ 0x48164D2692B20D5ALL ^ __ROR8__(v81, 61);
  v86 = (((2 * (v84 + v85)) & 0x109CAB3F75BB4A94) - (v84 + v85) - 0x84E559FBADDA54BLL) ^ 0x4ADD4E59A34BA96ALL;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ 0x1A1C4C99A6B3D690;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = __ROR8__(v88, 8);
  v91 = (((2 * (v90 + v89)) | 0xDA4973B5B002FE62) - (v90 + v89) - 0x6D24B9DAD8017F31) ^ 0x35CB151110D6196ALL;
  v92 = v91 ^ __ROR8__(v89, 61);
  v93 = __ROR8__(v91, 8);
  v94 = (((2 * (v93 + v92)) | 0xC1840791127AC38CLL) - (v93 + v92) - 0x60C203C8893D61C6) ^ 0x93C8DF050052E335;
  v95 = v94 ^ __ROR8__(v92, 61);
  v96 = (__ROR8__(v94, 8) + v95) ^ 0x8469B2E456434039;
  v97 = ((__ROR8__(v96, 8) + (v96 ^ __ROR8__(v95, 61))) ^ 0x9C8651A6C7A7E5ALL) >> (8 * (v5 & 7u));
  v98 = __ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8);
  v99 = ((v98 - 0x67659A219E1678C8) & 0x696A138A1A08B0CBLL ^ 0x2222000018083041) + ((v98 - 0x67659A219E1678C8) ^ 0xCD5CDF8F4294859ELL) - (((v98 - 0x67659A219E1678C8) ^ 0xCD5CDF8F4294859ELL) & 0x696A138A1A08B0CBLL);
  v100 = v99 ^ 0x972E87F78D0B7C9;
  v99 ^= 0xCDA1C68C779C8E0DLL;
  v101 = (__ROR8__(v100, 8) + v99) ^ 0x767CBF12CE87AC7DLL;
  v102 = v101 ^ __ROR8__(v99, 61);
  v103 = (__ROR8__(v101, 8) + v102) ^ 0xBD6CE439E669F3DFLL;
  v104 = v103 ^ __ROR8__(v102, 61);
  v105 = __ROR8__(v103, 8);
  v106 = __ROR8__((((v105 + v104) | 0x8460F71655D6231BLL) - ((v105 + v104) | 0x7B9F08E9AA29DCE4) + 0x7B9F08E9AA29DCE4) ^ 0x9E7CBB8FF365F58BLL, 8);
  v107 = (((v105 + v104) | 0x8460F71655D6231BLL) - ((v105 + v104) | 0x7B9F08E9AA29DCE4) + 0x7B9F08E9AA29DCE4) ^ 0x9E7CBB8FF365F58BLL ^ __ROR8__(v104, 61);
  v108 = (((2 * ((v106 + v107) ^ 0x4A3987AF9655D101)) | 0xA843056686C94876) - ((v106 + v107) ^ 0x4A3987AF9655D101) + 0x2BDE7D4CBC9B5BC5) ^ 0xC6F7A9D71DE61361;
  v109 = v108 ^ __ROR8__(v107, 61);
  v110 = (__ROR8__(v108, 8) + v109) ^ 0xF30ADCCD896F82F3;
  v111 = v110 ^ __ROR8__(v109, 61);
  v112 = __ROR8__(v110, 8);
  v113 = (((2 * (v112 + v111)) | 0x2083C420B61AFF82) - (v112 + v111) - 0x1041E2105B0D7FC1) ^ 0x942850F40D4E3FF8;
  v114 = v113 ^ __ROR8__(v111, 61);
  v115 = __ROR8__(v113, 8);
  LOBYTE(v114) = (((((2 * (v115 + v114)) | 0xE9794F2B00955EC6) - (v115 + v114) + 0xB43586A7FB5509DLL) ^ 0xFD74C28FEC30D139) >> (8 * (v2 & 7u))) ^ LODWORD(STACK[0x5750]);
  v116 = __ROR8__(STACK[0x5760] & 0xFFFFFFFFFFFFFFF8, 8);
  v117 = v116 - ((2 * v116 + 0x3134CBBCC3D30E70) & 0xB2CED8C8934D0CD4) + 0x7601D242AB900DA2;
  v118 = v117 ^ 0x7223481E69EA04F6;
  v117 ^= 0xB6F066ED66A63D32;
  v119 = (__ROR8__(v118, 8) + v117) ^ 0x767CBF12CE87AC7DLL;
  v120 = v119 ^ __ROR8__(v117, 61);
  v121 = (__ROR8__(v119, 8) + v120) ^ 0xBD6CE439E669F3DFLL;
  v122 = v121 ^ __ROR8__(v120, 61);
  v123 = (__ROR8__(v121, 8) + v122) ^ 0x1A1C4C99A6B3D690;
  v124 = v123 ^ __ROR8__(v122, 61);
  v125 = (__ROR8__(v123, 8) + v124) ^ 0x58EFACCBC8D7665BLL;
  v126 = v125 ^ __ROR8__(v124, 61);
  v127 = (__ROR8__(v125, 8) + v126) ^ 0xF30ADCCD896F82F3;
  v128 = __ROR8__(v127, 8);
  v129 = v127 ^ __ROR8__(v126, 61);
  v130 = (((v128 + v129) | 0x9AC9A9B10C5E1E6) - ((v128 + v129) | 0xF6536564EF3A1E19) - 0x9AC9A9B10C5E1E7) ^ 0x8DC5287F4686A1DFLL;
  LODWORD(v129) = (((__ROR8__(v130, 8) + (v130 ^ __ROR8__(v129, 61))) ^ 0x9C8651A6C7A7E5ALL) >> (8 * (STACK[0x5760] & 7u))) ^ LODWORD(STACK[0x5770]);
  v131 = __ROR8__(STACK[0x5780] & 0xFFFFFFFFFFFFFFF8, 8);
  v132 = ((v131 - 0x67659A219E1678C8) | 0xB424465303BD92B3) - ((v131 - 0x67659A219E1678C8) | 0x4BDBB9ACFC426D4CLL) + 0x4BDBB9ACFC426D4CLL;
  v133 = v132 ^ 0x1B60622923F1102FLL;
  v132 ^= 0xDFB34CDA2CBD29EBLL;
  v134 = (__ROR8__(v133, 8) + v132) ^ 0x767CBF12CE87AC7DLL;
  v135 = v134 ^ __ROR8__(v132, 61);
  v136 = (__ROR8__(v134, 8) + v135) ^ 0xBD6CE439E669F3DFLL;
  v137 = __ROR8__(v136, 8);
  v138 = v136 ^ __ROR8__(v135, 61);
  v139 = (((v137 + v138) | 0xE2C801901AF40CD2) - ((v137 + v138) | 0x1D37FE6FE50BF32DLL) + 0x1D37FE6FE50BF32DLL) ^ 0xF8D44D09BC47DA42;
  v140 = v139 ^ __ROR8__(v138, 61);
  v141 = __ROR8__(v139, 8);
  v142 = (((2 * (v141 + v140)) & 0x9FE6A892C1F8F6B8) - (v141 + v140) - 0x4FF3544960FC7B5DLL) ^ 0xE8E3077D57D4E2F8;
  v143 = v142 ^ __ROR8__(v140, 61);
  v144 = __ROR8__(v142, 8);
  v145 = (((2 * ((v144 + v143) ^ 0x3EFE3B4E7906FD16)) & 0x56DD63E626080B08) - ((v144 + v143) ^ 0x3EFE3B4E7906FD16) - 0x2B6EB1F313040585) ^ 0x1965A98F1C92859ELL;
  v146 = v145 ^ __ROR8__(v143, 61);
  v147 = (__ROR8__(v145, 8) + v146) ^ 0x8469B2E456434039;
  v148 = ((__ROR8__(v147, 8) + (v147 ^ __ROR8__(v146, 61))) ^ 0x9C8651A6C7A7E5ALL) >> (8 * (STACK[0x5780] & 7u));
  v149 = (v64 << 48) | (((((v47 + 0x7E9FC4EBCCE38CA4) ^ 0x88A85E0E5F660D01) >> (8 * (v1 & 7u))) ^ LODWORD(STACK[0x5700])) << 56) | (v78 << 40) | (v83 << 32) | ((v97 ^ LODWORD(STACK[0x5740])) << 24) | (v114 << 16);
  v150 = ((v149 & 0x46E4CC5235C30000 | ((v129 << 8) ^ 0xB91B33ADCA3C1025) & ~v149) ^ 0xC5EA55535CAF4207) & (v148 ^ ~LODWORD(STACK[0x5790]) | 0xFFFFFFFFFFFFFF00) ^ ((v148 ^ LODWORD(STACK[0x5790])) & 0xDDLL | 0x820A8901296C0100);
  v151 = *(*STACK[0x51F0] + (*STACK[0x51E8] & 0xE5BC4600));
  LODWORD(v150) = ((STACK[0x57A0] & 0x7FFFFFFFFFFFFFFFLL ^ 0x7E6DCFB6A9091645) - 0x7B3251E33DD2BB05 + (((v150 ^ 0x693E2014CB3905DLL) - 0x7CA5A3E231618784) ^ ((v150 ^ 0xD924E2CB85961299) + 0x5CED5CD707BBFAC0) ^ ((v150 ^ 0x214CEF3576DAD1E6) - 0x5B7AAED60B08C63FLL)) - (v151 & 0x7FFFFFFFFFFFFFFFLL ^ 0x7E6DCFB6A9091645)) > 0x7FFFFFFFD0686AACLL;
  v152 = ((v151 & 0x7FFFFFFFFFFFFFFFLL ^ 0x8192304956F6E9BALL) - (v151 & 0x5ED232D792CB26ACLL ^ 0x8092304112C220A8) + (~(2 * v151) & 2) + (v151 & 0x7FFFFFFFFFFFFFFFLL ^ 0x7E6DCFB6A9091644 ^ v151 & 0x5ED232D792CB26ACLL ^ 0x8092304112C220A8) + 1) > 0x7FFFFFFFD0686AACLL;
  v153 = STACK[0xDF8];
  LODWORD(STACK[0x1D4CC]) = STACK[0xDF8] + 1451493860 + STACK[0x51B8];
  LODWORD(v151) = STACK[0xE04];
  LODWORD(STACK[0x1D4C8]) = LODWORD(STACK[0xE04]) - v153 - 1824;
  LODWORD(STACK[0x1D4D4]) = v151 ^ v153;
  STACK[0x1D4D8] = (v150 ^ v152) + v153;
  LODWORD(STACK[0x1D4E0]) = v153 + LODWORD(STACK[0xE00]);
  LODWORD(STACK[0x1D4D0]) = v153;
  STACK[0x1D4C0] = v153;
  v154 = STACK[0x57D8];
  v155 = (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x57B0])))(v6 - 240);
  return (*(v154 + 8 * SLODWORD(STACK[0x1D4E4])))(v155);
}

uint64_t sub_10033BFA0(int a1, int a2, unsigned int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x3458]) = LODWORD(STACK[0x54D0]) | LODWORD(STACK[0x54E0]);
  LODWORD(STACK[0x5360]) = LODWORD(STACK[0x5440]) | LODWORD(STACK[0x5358]);
  LODWORD(STACK[0x5358]) = LODWORD(STACK[0x3448]) | LODWORD(STACK[0x37E8]);
  LODWORD(STACK[0x33D8]) = STACK[0x54C0] & (v17 ^ 0xFF8A126);
  LODWORD(STACK[0x37E8]) = STACK[0x5520] & (LODWORD(STACK[0x54F0]) ^ 0xEC7662F2);
  LODWORD(STACK[0x33A0]) = v16 & (a1 ^ 0x30333251);
  LODWORD(STACK[0x33D0]) = STACK[0x5640] & (a5 ^ 0x7D617FC1);
  LODWORD(STACK[0x3398]) = v15 & (a2 ^ 0x340C6530);
  v18 = LODWORD(STACK[0x5430]) ^ 0xE97FEFFC;
  LODWORD(STACK[0x5640]) = a3 ^ 0x769BB2FF;
  LODWORD(STACK[0x33E0]) = v18 ^ a3 ^ 0x769BB2FF;
  LODWORD(STACK[0x3390]) = a8 & (v12 ^ 0x71FF8FF1);
  LODWORD(STACK[0x33C8]) = v14 & (v10 ^ 0x8F989E59);
  LODWORD(STACK[0x3388]) = v13 & (v9 ^ 0x8D78BDAC);
  LODWORD(STACK[0x3408]) = v11 & (v8 ^ 0x4A3E3B8F);
  return (*(STACK[0x57D8] + 8 * ((12436 * (a3 < 0xC6DDBDEF)) ^ (a3 - 1989901000))))(STACK[0x56D0]);
}

uint64_t sub_10033C16C@<X0>(uint64_t a1@<X1>, unsigned int a2@<W5>, uint64_t a3@<X7>, int a4@<W8>)
{
  v12 = STACK[0x4CB0];
  v13 = v4 + (v7 - 637399090);
  v14 = *(*v10 + (*v11 & (((LODWORD(STACK[0x4CB0]) - 4300) | 0x4270) - 17022) & ((v13 & 0xFFFFFFF8) + 2050767130)));
  v15 = (__ROR8__(v13 & 0xFFFFFFFFFFFFFFF8, 8) + v14) ^ a3;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ a1;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (((2 * (v19 + v18)) & 0x2E513AFB2411603ALL) - (v19 + v18) + 0x68D762826DF74FE2) ^ 0x8D57D3FFE132AAB3;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0xE1A1FD5BD155F97ALL;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0xDA604B0C03A2BF99;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ v8;
  v27 = __ROR8__(v26, 8);
  v28 = v26 ^ __ROR8__(v25, 61);
  v29 = (v27 + v28) ^ v9;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  *(v5 + (a4 + v7 + 1647729461)) = *v13 ^ (((((2 * (v31 + v30)) | 0xEABB963E3B732548) - (v31 + v30) - 0x755DCB1F1DB992A4) ^ 0x812EC02EB3C9E7DFLL) >> (8 * (v13 & 7u))) ^ 0xF;
  v32 = v7 - 127082915 < v6;
  if (v6 < a2 != v7 - 127082915 < a2)
  {
    v32 = v6 < a2;
  }

  return (*(STACK[0x57D8] + 8 * ((17092 * v32) ^ v12)))();
}

uint64_t sub_10033C34C@<X0>(unint64_t a1@<X8>)
{
  STACK[0xEB08] = v3;
  STACK[0xEB10] = a1;
  return (*(STACK[0x57D8] + 8 * (((((v2 + 1) ^ (v1 < 0xB)) & 1) * ((v2 - 10495) ^ 0x497)) ^ v2)))();
}

uint64_t sub_10033C408(uint64_t a1)
{
  v4 = *(a1 + v1) - *(v2 + v1);
  v5 = ((v4 << ((v3 - 102) & 0xFB ^ 0x92)) & 0xAA5C8FFA) + (v4 ^ 0x552E47FD);
  return (*(STACK[0x57D8] + 8 * ((30230 * ((((v5 - v3) | (v3 - v5)) & 0x80000000) == 0)) ^ (v3 - 1429105856 + ((v3 - 1429079995) | 0x2438)))))();
}

uint64_t sub_10033C750@<X0>(unint64_t a1@<X8>)
{
  STACK[0x7E28] = v5;
  STACK[0x7668] = v1;
  LODWORD(STACK[0x6CA4]) = v2;
  STACK[0x9298] = a1;
  STACK[0x7138] = 0;
  LODWORD(STACK[0xB81C]) = 0;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v4 ^ 0x4C73)))(v3 ^ 0xD21C8094);
  STACK[0xB048] = v7;
  return (*(v6 + 8 * (((v7 == 0) * (((6 * (v4 ^ 0x346F) + 10056) | 0x1842) - 22593)) ^ v4)))();
}

uint64_t sub_10033C800(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v17 = *(v14 + ((4 * (a1 ^ 0x7B7F)) ^ 0x84E8B8) + v8 * v16 - (((((((4 * (a1 ^ 0x7B7F)) ^ 0x84E8B8) + v8 * v16) >> 3) * v15) >> 32) >> 7) * v11);
  v18 = (((v17 ^ 0x4AB147B7) - 1253132215) ^ ((v17 ^ 0x222FD6EE) - 573560558) ^ ((v17 ^ 0x689E919E) - 1755222430)) * v16 + 2203565;
  *(a8 + 4 * (v9 + v8 * v10 - ((((v9 + v8 * v10) * v13) >> 32) >> 12) * v12)) = *(v14 + v18 - ((((v18 >> 3) * v15) >> 32) >> 7) * v11) ^ a7;
  return (*(STACK[0x57D8] + 8 * ((7688 * (v8 == 255)) ^ a1)))();
}

uint64_t sub_10033C8E0()
{
  v0 = LODWORD(STACK[0x51A0]) + LODWORD(STACK[0x5198]);
  v1 = STACK[0x55A0];
  if (STACK[0x55A0])
  {
    v2 = STACK[0x5420];
  }

  else
  {
    v2 = STACK[0x5430];
  }

  v3 = STACK[0x5410];
  if (v1)
  {
    v3 = STACK[0x55F0];
  }

  v4 = STACK[0x53F0];
  if ((v1 & 1) == 0)
  {
    v4 = STACK[0x5630];
  }

  v5 = STACK[0x53A8];
  if (v1)
  {
    v5 = STACK[0x53A0];
  }

  LODWORD(STACK[0x5790]) = v5;
  if (v1)
  {
    v6 = STACK[0x5398];
  }

  else
  {
    v6 = STACK[0x5390];
  }

  if (v1)
  {
    v7 = STACK[0x5380];
  }

  else
  {
    v7 = STACK[0x53E0];
  }

  if (v1)
  {
    v8 = STACK[0x53B8];
  }

  else
  {
    v8 = STACK[0x5348];
  }

  v9 = STACK[0x53B0];
  if ((v1 & 1) == 0)
  {
    v9 = STACK[0x53C0];
  }

  v10 = (v1 & 2) == 0;
  v11 = STACK[0x55D0];
  if (!v10)
  {
    v11 = STACK[0x55C0];
  }

  LODWORD(STACK[0x5430]) = v11;
  v12 = STACK[0x5560];
  if (v10)
  {
    v12 = STACK[0x5550];
  }

  LODWORD(STACK[0x5420]) = v12;
  v13 = STACK[0x5540];
  if (!v10)
  {
    v13 = STACK[0x5520];
  }

  LODWORD(STACK[0x5410]) = v13;
  v14 = STACK[0x5510];
  if (v10)
  {
    v14 = STACK[0x5500];
  }

  LODWORD(STACK[0x5500]) = v14;
  v15 = STACK[0x54F0];
  if (v10)
  {
    v15 = STACK[0x5408];
  }

  LODWORD(STACK[0x5520]) = v15;
  v16 = STACK[0x5400];
  if (v10)
  {
    v16 = STACK[0x53F8];
  }

  LODWORD(STACK[0x4F60]) = v16;
  v17 = STACK[0x57B0];
  v18 = STACK[0x57B0] + 6591;
  v19 = LODWORD(STACK[0x5570]) ^ 0x9A6BAAA9 ^ (v0 - 1954420353 + v18);
  v20 = STACK[0x56D0];
  LODWORD(STACK[0x55D0]) = v2;
  if (v10)
  {
    v20 = v2;
  }

  LODWORD(STACK[0x4F68]) = v20;
  LODWORD(STACK[0x5048]) = v3;
  LODWORD(STACK[0x4FE8]) = v4;
  if (v10)
  {
    v21 = v3;
  }

  else
  {
    v21 = v4;
  }

  LODWORD(STACK[0x54F0]) = v21;
  v22 = STACK[0x5770];
  if (!v10)
  {
    v22 = STACK[0x5740];
  }

  LODWORD(STACK[0x53E0]) = v22;
  LODWORD(STACK[0x55F0]) = v6;
  LODWORD(STACK[0x53A8]) = v7;
  if (v10)
  {
    v23 = v7;
  }

  else
  {
    v23 = v6;
  }

  LODWORD(STACK[0x53B8]) = v23;
  v24 = STACK[0x56C0];
  if (v10)
  {
    v24 = STACK[0x5680];
  }

  LODWORD(STACK[0x55C0]) = v24;
  LODWORD(STACK[0x5630]) = v8;
  LODWORD(STACK[0x5540]) = v9;
  if (v10)
  {
    v25 = v9;
  }

  else
  {
    v25 = v8;
  }

  LODWORD(STACK[0x5400]) = v25;
  v26 = STACK[0x5610];
  if ((STACK[0x5610] & 1) == 0)
  {
    v19 = STACK[0x5280];
  }

  LODWORD(STACK[0x5560]) = v19;
  if (v26)
  {
    v27 = STACK[0x5278];
  }

  else
  {
    v27 = STACK[0x52F0];
  }

  if (v26)
  {
    v28 = STACK[0x5270];
  }

  else
  {
    v28 = STACK[0x5268];
  }

  if (v26)
  {
    v29 = STACK[0x5260];
  }

  else
  {
    v29 = STACK[0x5228];
  }

  if (v26)
  {
    v30 = STACK[0x5210];
  }

  else
  {
    v30 = STACK[0x5250];
  }

  if (v26)
  {
    v31 = STACK[0x51E0];
  }

  else
  {
    v31 = STACK[0x5208];
  }

  if (v26)
  {
    v32 = STACK[0x5200];
  }

  else
  {
    v32 = STACK[0x51F8];
  }

  if (v26)
  {
    v33 = STACK[0x51C8];
  }

  else
  {
    v33 = STACK[0x51D0];
  }

  if (v26)
  {
    v34 = STACK[0x51D8];
  }

  else
  {
    v34 = STACK[0x51C0];
  }

  if (v26)
  {
    v35 = STACK[0x51A8];
  }

  else
  {
    v35 = STACK[0x51B0];
  }

  v36 = (v26 & 2) == 0;
  STACK[0x57A0] = STACK[0xD3F0] - 0x309E3E9C99932E38;
  v37 = *(STACK[0x57D8] + 8 * v17);
  STACK[0x57C0] = (v18 - 274738639) & 0x10602DF8;
  LODWORD(STACK[0x5210]) = v27;
  LODWORD(STACK[0x5200]) = v28;
  if ((v26 & 2) != 0)
  {
    v38 = v28;
  }

  else
  {
    v38 = v27;
  }

  LODWORD(STACK[0x5280]) = v38;
  LODWORD(STACK[0x5398]) = v29;
  LODWORD(STACK[0x5390]) = v30;
  if (v36)
  {
    v39 = v30;
  }

  else
  {
    v39 = v29;
  }

  LODWORD(STACK[0x5278]) = v39;
  LODWORD(STACK[0x51F8]) = v31;
  LODWORD(STACK[0x51E0]) = v32;
  if (v36)
  {
    v40 = v32;
  }

  else
  {
    v40 = v31;
  }

  LODWORD(STACK[0x5270]) = v40;
  LODWORD(STACK[0x5550]) = v33;
  LODWORD(STACK[0x5510]) = v34;
  if (v36)
  {
    v41 = v33;
  }

  else
  {
    v41 = v34;
  }

  LODWORD(STACK[0x5268]) = v41;
  v42 = STACK[0x53E8];
  LODWORD(STACK[0x51D8]) = v35;
  if (v36)
  {
    v42 = v35;
  }

  LODWORD(STACK[0x5228]) = v42;
  STACK[0x57B0] = STACK[0xD3E8];
  return v37();
}

uint64_t sub_10033CF88()
{
  v0 = (STACK[0x51B8] - 21393) | 0x112A;
  v1 = STACK[0x51B8] - 19576;
  STACK[0xAE30] = STACK[0xACC8] + SLODWORD(STACK[0xC55C]);
  v2 = STACK[0x57D8];
  STACK[0x7DD8] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x1326) + v1)))();
}

uint64_t sub_10033D178()
{
  v1 = STACK[0x51B8] - 14247;
  LODWORD(STACK[0xA96C]) = v0;
  v2 = SLOWORD(STACK[0xD56E]);
  STACK[0x7B70] = STACK[0xD570];
  return (*(STACK[0x57D8] + 8 * ((121 * (v2 == -2993)) ^ v1)))();
}

uint64_t sub_10033D23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  LODWORD(STACK[0x5340]) = v13;
  STACK[0x5278] = a7;
  STACK[0x56C0] = v10;
  STACK[0x5680] = v12;
  v14 = STACK[0x4DF0];
  LODWORD(STACK[0x51E0]) = LODWORD(STACK[0x5700]) ^ v11;
  LODWORD(STACK[0x52E0]) = LODWORD(STACK[0x5580]) - ((LODWORD(STACK[0x5580]) << ((v14 ^ 0xD1) - 71)) & 0xFFFFFFCA) - 27;
  v15 = ((2 * (v7 - v8)) & 0x7F8FBFF2) + ((v7 - v8) ^ 0x3FC7DFF9) != ((v14 - 743) ^ 0x3FC7CA4B);
  v16 = *(STACK[0x57D8] + 8 * ((v15 | (4 * v15)) ^ v14));
  LODWORD(STACK[0x4F98]) = 241;
  LODWORD(STACK[0x5470]) = 5;
  v17 = STACK[0x5540];
  LODWORD(STACK[0x5228]) = STACK[0x5540];
  STACK[0x52F8] = v9;
  LODWORD(STACK[0x52E8]) = v17;
  return v16(a1, a2, LODWORD(STACK[0x53E8]), a4, 4294967200);
}

uint64_t sub_10033D3CC()
{
  v4 = STACK[0x51B8];
  v5 = STACK[0x51B8] - 22613;
  v6 = 1534937323 * ((((v3 - 240) | 0x6A6168A5185DE5FLL) - (v3 - 240) + ((v3 - 240) & 0xF959E975AE7A21A0)) ^ 0xCBDE9E48976B2518);
  *(v2 + 616) = STACK[0x9488] + v6;
  *(v2 + 608) = v5 + v6 - v1;
  *(v2 + 592) = v6;
  *(v2 + 624) = (v5 ^ 0xB31FB9B6) + v6;
  *(v2 + 600) = (v0 ^ 0xB31FB4C9) - v6;
  *(v2 + 612) = v6 ^ v5 ^ 0xB31FB947;
  *(v2 + 604) = v6 + 1451493860 + v4;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * (v4 + 9182)))(v3 - 240);
  return (*(v7 + 8 * *(v2 + 628)))(v8);
}

uint64_t sub_10033D4C4@<X0>(int a1@<W8>)
{
  v3 = STACK[0x3A28];
  STACK[0x1D4D8] = STACK[0x3A28] + 56;
  STACK[0x1D4C0] = v1 ^ v3;
  LODWORD(STACK[0x1D4E0]) = (a1 ^ 0x6FB220E6) + v3;
  LODWORD(STACK[0x1D4D4]) = (a1 + 1873944812) ^ v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  v4 = STACK[0x51B8];
  LODWORD(STACK[0x1D4CC]) = v3 + 1451493860 + STACK[0x51B8];
  LODWORD(STACK[0x1D4C8]) = 1873944806 - v3 + a1 + 4077;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v4 + 9182)))(v2 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4E4])))(v6);
}

uint64_t sub_10033D660()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(v0);
  return (*(v1 + 8 * SLODWORD(STACK[0x3ADC])))(v2);
}

uint64_t sub_10033D790()
{
  v1 = STACK[0x51B8] - 16042;
  v2 = STACK[0x5C68];
  *(v2 - 0x79CEC8CF5A6FCE4ELL) = 0;
  *(v2 - 0x79CEC8CF5A6FCE46) = -769884012;
  *(v2 - 0x79CEC8CF5A6FCE4ALL) = -769884012;
  STACK[0xD9A8] = v0;
  *(v2 - 0x79CEC8CF5A6FCE52) = 0;
  LODWORD(STACK[0x8F90]) = -143113071;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_10033D914()
{
  v2 = v0 - 15314;
  v3 = (v0 - 2032464048) & 0x79249BBA;
  v4 = (v0 - 15314) ^ 0x1FA5;
  v5 = STACK[0xBBD8];
  STACK[0xEA20] = v1;
  STACK[0xEA28] = v5;
  return (*(STACK[0x57D8] + 8 * (((v1 - v5 > v3 - 169) * (v4 + 27983)) ^ v2)))();
}

uint64_t sub_10033D990()
{
  v4 = STACK[0x51B8];
  v5 = STACK[0x51B8] - 22614;
  v6 = STACK[0x8EB8];
  v7 = 1534937323 * ((-2 - ((~v1 | 0x4E8EE4E12FAA00EBLL) + (v1 | 0xB1711B1ED055FF14))) ^ 0x83F66C23E944FBACLL);
  *(v2 + 608) = v7;
  *(v2 + 612) = (v4 + 1438540176) ^ v7;
  *(v2 + 592) = v6 ^ v7;
  *(v2 + 600) = 1438561809 - v7 + v5;
  *(v2 + 624) = (v5 ^ 0x55BEA60F) + v7;
  *(v2 + 604) = v7 + 1451493860 + v4;
  *(v2 + 616) = v7;
  v8 = v4 ^ v0;
  v9 = STACK[0x57D8];
  v10 = (*(STACK[0x57D8] + 8 * v8))(v3 - 240);
  return (*(v9 + 8 * *(v2 + 628)))(v10);
}

uint64_t sub_10033DAEC()
{
  v2 = (STACK[0x56D0] + v0);
  *v2 = 0u;
  v2[1] = 0u;
  return (*(STACK[0x57D8] + 8 * ((60 * (v0 - 20808 + (v1 + 20) == 416)) ^ v1)))();
}

uint64_t sub_10033DC74(int a1, int a2, int a3, int a4, unsigned int a5, unsigned int a6, int a7)
{
  v12 = v8 < a6;
  *(v7 + v10) = 0;
  if (v12 == ((a2 | a7) ^ v11) + v10 > a5)
  {
    v12 = v10 + a4 < v9;
  }

  return (*(STACK[0x57D8] + 8 * ((!v12 * a3) ^ a1)))();
}

uint64_t sub_10033DD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, unint64_t a7@<X7>, uint64_t a8@<X8>)
{
  *&STACK[0x56C0] = *(a8 + v20 - 16);
  v24.i64[0] = v15 + v20;
  v24.i64[1] = v14 + v20;
  v25 = v24;
  v24.i64[0] = v17 + v20;
  v24.i64[1] = v16 + v20;
  v26 = v24;
  v24.i64[0] = v19 + v20;
  v24.i64[1] = v18 + v20;
  v27 = v24;
  *&STACK[0x54D0] = v24;
  v24.i64[0] = a8 + v20 - 13;
  v24.i64[1] = a8 + v20 - 14;
  v28 = v24;
  *&STACK[0x5650] = v24;
  v24.i64[0] = a8 + v20 - 11;
  v24.i64[1] = a8 + v20 - 12;
  v29 = v24;
  *&STACK[0x5670] = v24;
  v24.i64[0] = a8 + v20 - 9;
  v24.i64[1] = a8 + v20 - 10;
  v30 = v24;
  *&STACK[0x5680] = v24;
  v24.i64[0] = a8 + v20 - 5;
  v24.i64[1] = a8 + v20 - 6;
  v31 = v24;
  *&STACK[0x5560] = v24;
  v24.i64[0] = a8 + v20 - 3;
  v24.i64[1] = a8 + v20 - 4;
  v32 = v24;
  *&STACK[0x5550] = v24;
  v24.i64[0] = a8 + v20 - 1;
  v24.i64[1] = a8 + v20 - 2;
  v33 = v24;
  *&STACK[0x5590] = v24;
  v24.i64[0] = a8 + v20 - 15;
  v24.i64[1] = a8 + v20 - 16;
  v34 = v24;
  *&STACK[0x5660] = v24;
  v35 = v20 + (a6 ^ 0xFFFFFFFFFFFFDCBDLL);
  v24.i64[0] = a8 + v20 - 7;
  v24.i64[1] = a8 + v35;
  *&STACK[0x55A0] = v24;
  v36 = vandq_s8(v24, *&STACK[0x4D70]);
  v37 = vandq_s8(v33, *&STACK[0x4D70]);
  v38 = vandq_s8(v32, *&STACK[0x4D70]);
  v39 = vandq_s8(v31, *&STACK[0x4D70]);
  v40 = vandq_s8(v30, *&STACK[0x4D70]);
  v41 = vandq_s8(v29, *&STACK[0x4D70]);
  v42 = vandq_s8(v28, *&STACK[0x4D70]);
  v43 = vandq_s8(v34, *&STACK[0x4D70]);
  v44 = *&STACK[0x4D70];
  v45 = *&STACK[0x46B0];
  v46 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), *&STACK[0x46B0]), v21);
  v47 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), *&STACK[0x46B0]), v21);
  v48 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), *&STACK[0x46B0]), v21);
  v49 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), *&STACK[0x46B0]), v21);
  v50 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), *&STACK[0x46B0]), v21);
  v51 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), *&STACK[0x46B0]), v21);
  v52 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), *&STACK[0x46B0]), v21);
  v53 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL), *&STACK[0x46B0]), v21);
  v54 = veorq_s8(v53, v22);
  v55 = veorq_s8(v52, v22);
  v56 = veorq_s8(v51, v22);
  v57 = veorq_s8(v50, v22);
  v58 = veorq_s8(v49, v22);
  v59 = veorq_s8(v48, v22);
  v60 = veorq_s8(v47, v22);
  v61 = veorq_s8(v46, *&STACK[0x56F0]);
  v62 = veorq_s8(v46, v23);
  v63 = veorq_s8(v47, v23);
  v64 = veorq_s8(v48, v23);
  v65 = veorq_s8(v49, v23);
  v66 = veorq_s8(v50, v23);
  v67 = veorq_s8(v51, v23);
  v68 = veorq_s8(v52, v23);
  v69 = veorq_s8(v53, v23);
  v70 = vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL);
  v71 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v72 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v73 = vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL);
  v74 = vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL);
  v75 = vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL);
  v76 = vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v69);
  v78 = vaddq_s64(v74, v66);
  v79 = vaddq_s64(v70, v62);
  v80 = vdupq_n_s64(0x9D63C3648794ABC0);
  v81 = veorq_s8(v79, v80);
  v82 = veorq_s8(vaddq_s64(v71, v63), v80);
  v83 = veorq_s8(vaddq_s64(v72, v64), v80);
  v84 = veorq_s8(vaddq_s64(v73, v65), v80);
  v85 = veorq_s8(v78, v80);
  v86 = veorq_s8(vaddq_s64(v75, v67), v80);
  v87 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v88 = vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL);
  v89 = vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL);
  v90 = veorq_s8(vaddq_s64(v76, v68), v80);
  v91 = vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL);
  v92 = veorq_s8(v77, v80);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v94 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v95 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v96 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v97 = veorq_s8(v84, v91);
  v98 = veorq_s8(v83, v89);
  v99 = veorq_s8(v82, v88);
  v100 = veorq_s8(v81, v87);
  v101 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v103 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v104 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v100);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v99);
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v98);
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v97);
  v109 = vaddq_s64(v104, v96);
  v110 = vaddq_s64(v103, v95);
  v111 = vaddq_s64(v102, v94);
  v112 = vaddq_s64(v101, v93);
  v113 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v105, v105), *&STACK[0x5620]), v105), *&STACK[0x55C0]);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v112, v112), *&STACK[0x5620]), v112), *&STACK[0x55C0]), *&STACK[0x5630]);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v111, v111), *&STACK[0x5620]), v111), *&STACK[0x55C0]), *&STACK[0x5630]);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v110, v110), *&STACK[0x5620]), v110), *&STACK[0x55C0]), *&STACK[0x5630]);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v109, v109), *&STACK[0x5620]), v109), *&STACK[0x55C0]), *&STACK[0x5630]);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v108, v108), *&STACK[0x5620]), v108), *&STACK[0x55C0]), *&STACK[0x5630]);
  v119 = vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v107, v107), *&STACK[0x5620]), v107), *&STACK[0x55C0]), *&STACK[0x5630]);
  v121 = vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL);
  v122 = vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL);
  v123 = vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v106, v106), *&STACK[0x5620]), v106), *&STACK[0x55C0]), *&STACK[0x5630]);
  v125 = vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL);
  v126 = veorq_s8(v113, *&STACK[0x5630]);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v128 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v129 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v130 = veorq_s8(v118, v125);
  v131 = veorq_s8(v117, v123);
  v132 = veorq_s8(v116, v122);
  v133 = veorq_s8(v115, v121);
  v134 = veorq_s8(v114, v119);
  v135 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v136 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v137 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v139 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v134);
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v132);
  v142 = vaddq_s64(v137, v130);
  v143 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127), *&STACK[0x46A0]);
  v144 = veorq_s8(vaddq_s64(v135, v128), *&STACK[0x46A0]);
  v145 = veorq_s8(vaddq_s64(v136, v129), *&STACK[0x46A0]);
  v146 = veorq_s8(v142, *&STACK[0x46A0]);
  v147 = veorq_s8(vaddq_s64(v138, v131), *&STACK[0x46A0]);
  v148 = veorq_s8(v141, *&STACK[0x46A0]);
  v149 = vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL);
  v150 = vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL);
  v151 = veorq_s8(vaddq_s64(v139, v133), *&STACK[0x46A0]);
  v152 = veorq_s8(v140, *&STACK[0x46A0]);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v154 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v155 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v156 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v157 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v158 = veorq_s8(v145, v150);
  v159 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v160 = veorq_s8(v143, v149);
  v161 = vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL);
  v162 = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v163 = vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL);
  v164 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v165 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v160);
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v159);
  v168 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v158);
  v169 = vaddq_s64(v165, v157);
  v170 = vaddq_s64(v164, v156);
  v171 = vaddq_s64(v163, v155);
  v172 = vaddq_s64(v162, v154);
  v173 = vaddq_s64(v161, v153);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v166, *&STACK[0x55F0]), vorrq_s8(v166, *&STACK[0x55B0])), *&STACK[0x55B0]), *&STACK[0x5640]);
  v175 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v167, *&STACK[0x55F0]), vorrq_s8(v167, *&STACK[0x55B0])), *&STACK[0x55B0]), *&STACK[0x5640]);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v168, *&STACK[0x55F0]), vorrq_s8(v168, *&STACK[0x55B0])), *&STACK[0x55B0]), *&STACK[0x5640]);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v169, *&STACK[0x55F0]), vorrq_s8(v169, *&STACK[0x55B0])), *&STACK[0x55B0]), *&STACK[0x5640]);
  v178 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v170, *&STACK[0x55F0]), vorrq_s8(v170, *&STACK[0x55B0])), *&STACK[0x55B0]), *&STACK[0x5640]);
  v179 = vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL);
  v180 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v171, *&STACK[0x55F0]), vorrq_s8(v171, *&STACK[0x55B0])), *&STACK[0x55B0]), *&STACK[0x5640]);
  v181 = vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL);
  v182 = vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL);
  v183 = vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL);
  v184 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v172, *&STACK[0x55F0]), vorrq_s8(v172, *&STACK[0x55B0])), *&STACK[0x55B0]), *&STACK[0x5640]);
  v185 = vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL);
  v186 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v173, *&STACK[0x55F0]), vorrq_s8(v173, *&STACK[0x55B0])), *&STACK[0x55B0]), *&STACK[0x5640]);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v188 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v189 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v190 = veorq_s8(v178, v185);
  *&STACK[0x5580] = veorq_s8(v177, v183);
  v191 = veorq_s8(v176, v182);
  v192 = veorq_s8(v175, v181);
  v193 = veorq_s8(v174, v179);
  *&STACK[0x5570] = vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL);
  *&STACK[0x5510] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v193);
  *&STACK[0x5520] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v192);
  *&STACK[0x5540] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v191);
  *&STACK[0x54E0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v188);
  v194 = vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL);
  *&STACK[0x54F0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187);
  v195 = vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL);
  v196 = vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL);
  v197 = *&STACK[0x45C0];
  v198 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v189), *&STACK[0x45C0]);
  *&STACK[0x5530] = vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL);
  v199 = vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL);
  v200 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v190), v197);
  *&STACK[0x5500] = vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL);
  v201 = veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v202 = veorq_s8(v198, v196);
  v203 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v202);
  v204 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v201);
  v205 = *&STACK[0x55E0];
  v206 = veorq_s8(vaddq_s64(vsubq_s64(v203, vandq_s8(vaddq_s64(v203, v203), *&STACK[0x56E0])), *&STACK[0x56D0]), *&STACK[0x55E0]);
  v207 = vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL);
  v208 = veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL));
  v209 = vandq_s8(v27, v44);
  v210 = v25;
  v211 = vandq_s8(v25, v44);
  v212 = vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL);
  v213 = v26;
  v214 = vandq_s8(v26, v44);
  v215 = vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL);
  v216 = vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL);
  v217.i64[0] = v13 + v20;
  v217.i64[1] = v12 + v35;
  v218 = vandq_s8(v217, v44);
  v219 = vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL);
  v220 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v45);
  v221 = *&STACK[0x45A0];
  v222 = veorq_s8(v220, *&STACK[0x45A0]);
  v223 = vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL);
  v224 = vaddq_s64(v212, v45);
  v225 = veorq_s8(v224, *&STACK[0x45A0]);
  v226 = vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL);
  v227 = veorq_s8(vaddq_s64(vsubq_s64(v204, vandq_s8(vaddq_s64(v204, v204), *&STACK[0x56E0])), *&STACK[0x56D0]), *&STACK[0x55E0]);
  v228 = veorq_s8(v227, v207);
  v229 = vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL);
  v230 = *&STACK[0x4660];
  v231 = veorq_s8(v224, *&STACK[0x4660]);
  v232 = vaddq_s64(v226, v231);
  v233 = vaddq_s64(v229, v228);
  v234 = veorq_s8(v220, *&STACK[0x4660]);
  v235 = vaddq_s64(v223, v234);
  v236 = vaddq_s64(v215, v208);
  v237 = vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL);
  v238 = vsraq_n_u64(vshlq_n_s64(v234, 3uLL), v234, 0x3DuLL);
  v239 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v235, *&STACK[0x5750]), vorrq_s8(v235, *&STACK[0x5790])), *&STACK[0x5790]), *&STACK[0x5730]);
  v240 = veorq_s8(v239, v238);
  v241 = vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL);
  v242 = *&STACK[0x55D0];
  v243 = *&STACK[0x54B0];
  v244 = vsubq_s64(vorrq_s8(v233, *&STACK[0x55D0]), vorrq_s8(v233, *&STACK[0x54B0]));
  v245 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v232, *&STACK[0x5750]), vorrq_s8(v232, *&STACK[0x5790])), *&STACK[0x5790]), *&STACK[0x5730]);
  v246 = veorq_s8(v245, v237);
  v247 = vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL);
  v248 = vaddq_s64(v241, v240);
  v249 = vaddq_s64(v247, v246);
  v250 = vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL);
  v251 = vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL);
  v252 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v249, v249), *&STACK[0x5700]), v249), *&STACK[0x5740]), *&STACK[0x5780]);
  v253 = veorq_s8(v252, v251);
  v254 = vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL);
  v255 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v248, v248), *&STACK[0x5700]), v248), *&STACK[0x5740]), *&STACK[0x5780]);
  v256 = veorq_s8(v255, v250);
  v257 = vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL);
  v258 = vaddq_s64(v254, v253);
  v259 = vaddq_s64(v257, v256);
  v260 = vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL);
  v261 = vsraq_n_u64(vshlq_n_s64(v256, 3uLL), v256, 0x3DuLL);
  v262 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v259, v259), *&STACK[0x5770]), v259), *&STACK[0x57C0]), *&STACK[0x57B0]);
  v263 = veorq_s8(v262, v261);
  v264 = vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL);
  v265 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v258, v258), *&STACK[0x5770]), v258), *&STACK[0x57C0]), *&STACK[0x57B0]);
  v266 = veorq_s8(v265, v260);
  v267 = vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL);
  v268 = vaddq_s64(v264, v263);
  v269 = vsraq_n_u64(vshlq_n_s64(v263, 3uLL), v263, 0x3DuLL);
  v270 = vdupq_n_s64(a7);
  v271 = veorq_s8(vaddq_s64(v267, v266), v270);
  v272 = veorq_s8(v271, vsraq_n_u64(vshlq_n_s64(v266, 3uLL), v266, 0x3DuLL));
  v273 = vsraq_n_u64(vshlq_n_s64(v271, 0x38uLL), v271, 8uLL);
  v274 = veorq_s8(v268, v270);
  v275 = veorq_s8(v274, v269);
  v276 = vaddq_s64(v273, v272);
  v277 = vsraq_n_u64(vshlq_n_s64(v272, 3uLL), v272, 0x3DuLL);
  v278 = vsraq_n_u64(vshlq_n_s64(v275, 3uLL), v275, 0x3DuLL);
  v279 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274, 0x38uLL), v274, 8uLL), v275), v197);
  v280 = veorq_s8(v279, v278);
  v281 = vsraq_n_u64(vshlq_n_s64(v279, 0x38uLL), v279, 8uLL);
  v282 = veorq_s8(v276, v197);
  v283 = veorq_s8(v282, v277);
  v284 = vaddq_s64(v281, v280);
  v285 = *&STACK[0x5720];
  v286 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v282, 0x38uLL), v282, 8uLL), v283);
  v287 = vsraq_n_u64(vshlq_n_s64(v280, 3uLL), v280, 0x3DuLL);
  v288 = vsraq_n_u64(vshlq_n_s64(v283, 3uLL), v283, 0x3DuLL);
  v289 = *&STACK[0x5710];
  v290 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v286, v286), *&STACK[0x5720]), v286), *&STACK[0x5710]), *&STACK[0x57A0]);
  v291 = veorq_s8(v290, v288);
  v292 = vsraq_n_u64(vshlq_n_s64(v290, 0x38uLL), v290, 8uLL);
  v293 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v284, v284), *&STACK[0x5720]), v284), *&STACK[0x5710]), *&STACK[0x57A0]);
  v294 = vdupq_n_s64(0x38uLL);
  v295 = vdupq_n_s64(0x5FC4102E9580487DuLL);
  v296 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v293, 0x38uLL), v293, 8uLL), veorq_s8(v293, v287)), v295), vnegq_s64(vandq_s8(vshlq_n_s64(v213, 3uLL), v294)));
  v297 = veorq_s8(*&STACK[0x54E0], v197);
  v298 = vaddq_s64(v216, v45);
  v471.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v292, v291), v295), vnegq_s64(vandq_s8(vshlq_n_s64(v210, 3uLL), v294))), vshlq_u64(veorq_s8(vaddq_s64(v244, *&STACK[0x54B0]), *&STACK[0x5760]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5560], 3uLL), v294))));
  v471.val[1] = veorq_s8(v296, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v236, *&STACK[0x55D0]), vorrq_s8(v236, *&STACK[0x54B0])), *&STACK[0x54B0]), *&STACK[0x5760]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5550], 3uLL), v294))));
  v299 = veorq_s8(v298, *&STACK[0x45A0]);
  v300 = veorq_s8(v297, v195);
  v301 = veorq_s8(v298, *&STACK[0x4660]);
  v302 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v299, 0x38uLL), v299, 8uLL), v301);
  v303 = vsraq_n_u64(vshlq_n_s64(v297, 0x38uLL), v297, 8uLL);
  v304 = vsraq_n_u64(vshlq_n_s64(v300, 3uLL), v300, 0x3DuLL);
  v305 = vaddq_s64(v303, v300);
  v306 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v302, *&STACK[0x5750]), vorrq_s8(v302, *&STACK[0x5790])), *&STACK[0x5790]), *&STACK[0x5730]);
  v307 = veorq_s8(v306, vsraq_n_u64(vshlq_n_s64(v301, 3uLL), v301, 0x3DuLL));
  v308 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v306, 0x38uLL), v306, 8uLL), v307);
  v309 = *&STACK[0x5700];
  v310 = *&STACK[0x56E0];
  v311 = *&STACK[0x5740];
  v312 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v308, v308), *&STACK[0x5700]), v308), *&STACK[0x5740]), *&STACK[0x5780]);
  v313 = veorq_s8(v312, vsraq_n_u64(vshlq_n_s64(v307, 3uLL), v307, 0x3DuLL));
  v314 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v312, 0x38uLL), v312, 8uLL), v313);
  v315 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v314, v314), *&STACK[0x5770]), v314), *&STACK[0x57C0]), *&STACK[0x57B0]);
  v316 = *&STACK[0x56D0];
  v317 = vaddq_s64(vsubq_s64(v305, vandq_s8(vaddq_s64(v305, v305), *&STACK[0x56E0])), *&STACK[0x56D0]);
  v318 = veorq_s8(v315, vsraq_n_u64(vshlq_n_s64(v313, 3uLL), v313, 0x3DuLL));
  v319 = v270;
  *&STACK[0x54C0] = v270;
  v320 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v315, 0x38uLL), v315, 8uLL), v318), v270);
  v321 = veorq_s8(v317, v205);
  v322 = veorq_s8(v320, vsraq_n_u64(vshlq_n_s64(v318, 3uLL), v318, 0x3DuLL));
  v323 = vsraq_n_u64(vshlq_n_s64(v320, 0x38uLL), v320, 8uLL);
  v324 = veorq_s8(v321, v304);
  v325 = vsraq_n_u64(vshlq_n_s64(v322, 3uLL), v322, 0x3DuLL);
  v326 = veorq_s8(vaddq_s64(v323, v322), v197);
  v327 = vsraq_n_u64(vshlq_n_s64(v321, 0x38uLL), v321, 8uLL);
  v328 = veorq_s8(v326, v325);
  v329 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v326, 0x38uLL), v326, 8uLL), v328);
  v330 = vsraq_n_u64(vshlq_n_s64(v328, 3uLL), v328, 0x3DuLL);
  v331 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v329, v329), v285), v329), v289), *&STACK[0x57A0]);
  v332 = vaddq_s64(v327, v324);
  v333 = veorq_s8(v331, v330);
  v334 = vsraq_n_u64(vshlq_n_s64(v331, 0x38uLL), v331, 8uLL);
  v335 = v242;
  v336 = vsubq_s64(vorrq_s8(v332, v242), vorrq_s8(v332, v243));
  v337 = vshlq_u64(veorq_s8(vaddq_s64(v334, v333), v295), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x54D0], 3uLL), v294)));
  v338 = vaddq_s64(v219, v45);
  v471.val[0] = veorq_s8(v337, vshlq_u64(veorq_s8(vaddq_s64(v336, v243), *&STACK[0x5760]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5590], 3uLL), v294))));
  v339 = veorq_s8(v338, v221);
  v340 = veorq_s8(*&STACK[0x54F0], v197);
  v341 = veorq_s8(v338, v230);
  v342 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v339, 0x38uLL), v339, 8uLL), v341);
  v343 = veorq_s8(v340, v194);
  v344 = vsraq_n_u64(vshlq_n_s64(v341, 3uLL), v341, 0x3DuLL);
  v345 = vsraq_n_u64(vshlq_n_s64(v340, 0x38uLL), v340, 8uLL);
  v346 = vsraq_n_u64(vshlq_n_s64(v343, 3uLL), v343, 0x3DuLL);
  v347 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v342, *&STACK[0x5750]), vorrq_s8(v342, *&STACK[0x5790])), *&STACK[0x5790]), *&STACK[0x5730]);
  v348 = veorq_s8(v347, v344);
  v349 = vaddq_s64(v345, v343);
  v350 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v347, 0x38uLL), v347, 8uLL), v348);
  v351 = vsubq_s64(v349, vandq_s8(vaddq_s64(v349, v349), v310));
  v352 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v350, v350), v309), v350), v311), *&STACK[0x5780]);
  v353 = v316;
  v354 = veorq_s8(v352, vsraq_n_u64(vshlq_n_s64(v348, 3uLL), v348, 0x3DuLL));
  v355 = veorq_s8(vaddq_s64(v351, v316), v205);
  v356 = v205;
  v357 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v352, 0x38uLL), v352, 8uLL), v354);
  v358 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v357, v357), *&STACK[0x5770]), v357), *&STACK[0x57C0]), *&STACK[0x57B0]);
  v359 = veorq_s8(v358, vsraq_n_u64(vshlq_n_s64(v354, 3uLL), v354, 0x3DuLL));
  v354.i64[0] = a2 + v20;
  v360 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v355, 0x38uLL), v355, 8uLL), veorq_s8(v355, v346));
  v361 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v358, 0x38uLL), v358, 8uLL), v359), v319);
  v362 = veorq_s8(v361, vsraq_n_u64(vshlq_n_s64(v359, 3uLL), v359, 0x3DuLL));
  v363 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v361, 0x38uLL), v361, 8uLL), v362), v197);
  v364 = veorq_s8(v363, vsraq_n_u64(vshlq_n_s64(v362, 3uLL), v362, 0x3DuLL));
  v365 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v363, 0x38uLL), v363, 8uLL), v364);
  v359.i64[0] = a4 + v20;
  v359.i64[1] = a3 + v20;
  v366 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v365, v365), v285), v365), v289), *&STACK[0x57A0]);
  v367 = veorq_s8(v366, vsraq_n_u64(vshlq_n_s64(v364, 3uLL), v364, 0x3DuLL));
  v368 = vsraq_n_u64(vshlq_n_s64(v366, 0x38uLL), v366, 8uLL);
  v364.i64[0] = v8 + v20;
  v369 = (STACK[0x54A0] + v20);
  v354.i64[1] = v369;
  v364.i64[1] = a5 + v20;
  v370 = veorq_s8(*&STACK[0x5520], v197);
  v371 = veorq_s8(*&STACK[0x5510], v197);
  v372 = veorq_s8(v371, *&STACK[0x5500]);
  v373 = veorq_s8(v370, v199);
  v471.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v368, v367), v295), vnegq_s64(vandq_s8(vshlq_n_s64(v217, 3uLL), v294))), vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v360, v335), vorrq_s8(v360, v243)), v243), *&STACK[0x5760]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x55A0], 3uLL), v294))));
  v374 = vandq_s8(v359, *&STACK[0x4D70]);
  v375 = vandq_s8(v354, *&STACK[0x4D70]);
  v376 = vsraq_n_u64(vshlq_n_s64(v371, 0x38uLL), v371, 8uLL);
  v377 = vsraq_n_u64(vshlq_n_s64(v374, 0x38uLL), v374, 8uLL);
  v378 = vandq_s8(v364, *&STACK[0x4D70]);
  v379 = vsraq_n_u64(vshlq_n_s64(v373, 3uLL), v373, 0x3DuLL);
  v380 = vaddq_s64(v377, v45);
  v381 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v370, 0x38uLL), v370, 8uLL), v373);
  v382 = *&STACK[0x5750];
  v383 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v375, 0x38uLL), v375, 8uLL), v45);
  *&STACK[0x5590] = xmmword_101237190;
  *&STACK[0x55A0] = vqtbl4q_s8(v471, xmmword_101237190);
  v471.val[0] = veorq_s8(v383, v221);
  v471.val[1] = veorq_s8(v380, v221);
  v471.val[2] = vsraq_n_u64(vshlq_n_s64(v471.val[1], 0x38uLL), v471.val[1], 8uLL);
  v471.val[1] = vsraq_n_u64(vshlq_n_s64(v471.val[0], 0x38uLL), v471.val[0], 8uLL);
  v471.val[0] = vsraq_n_u64(vshlq_n_s64(v372, 3uLL), v372, 0x3DuLL);
  v471.val[3] = vaddq_s64(v376, v372);
  v384 = veorq_s8(v380, v230);
  v385 = veorq_s8(v383, v230);
  v471.val[1] = vaddq_s64(v471.val[1], v385);
  v471.val[2] = vaddq_s64(v471.val[2], v384);
  v386 = vsraq_n_u64(vshlq_n_s64(v385, 3uLL), v385, 0x3DuLL);
  v471.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v471.val[1], v382), vorrq_s8(v471.val[1], *&STACK[0x5790])), *&STACK[0x5790]), *&STACK[0x5730]);
  v471.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v471.val[2], v382), vorrq_s8(v471.val[2], *&STACK[0x5790])), *&STACK[0x5790]), *&STACK[0x5730]);
  v387 = veorq_s8(v471.val[2], vsraq_n_u64(vshlq_n_s64(v384, 3uLL), v384, 0x3DuLL));
  v388 = veorq_s8(v471.val[1], v386);
  v471.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v471.val[1], 0x38uLL), v471.val[1], 8uLL), v388);
  v471.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v471.val[2], 0x38uLL), v471.val[2], 8uLL), v387);
  v471.val[3] = veorq_s8(vaddq_s64(vsubq_s64(v471.val[3], vandq_s8(vaddq_s64(v471.val[3], v471.val[3]), v310)), v353), v356);
  v471.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v471.val[2], v471.val[2]), v309), v471.val[2]), *&STACK[0x5740]), *&STACK[0x5780]);
  v471.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v471.val[1], v471.val[1]), v309), v471.val[1]), *&STACK[0x5740]), *&STACK[0x5780]);
  v389 = vsraq_n_u64(vshlq_n_s64(v387, 3uLL), v387, 0x3DuLL);
  v390 = veorq_s8(vaddq_s64(vsubq_s64(v381, vandq_s8(vaddq_s64(v381, v381), v310)), v353), v356);
  v391 = veorq_s8(v471.val[1], vsraq_n_u64(vshlq_n_s64(v388, 3uLL), v388, 0x3DuLL));
  v392 = veorq_s8(v471.val[2], v389);
  v393 = veorq_s8(v390, v379);
  v394 = vsraq_n_u64(vshlq_n_s64(v471.val[1], 0x38uLL), v471.val[1], 8uLL);
  v471.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v471.val[2], 0x38uLL), v471.val[2], 8uLL), v392);
  v471.val[2] = vsraq_n_u64(vshlq_n_s64(v390, 0x38uLL), v390, 8uLL);
  v395 = vaddq_s64(v394, v391);
  v471.val[0] = veorq_s8(v471.val[3], v471.val[0]);
  v396 = vsraq_n_u64(vshlq_n_s64(v391, 3uLL), v391, 0x3DuLL);
  v397 = vsraq_n_u64(vshlq_n_s64(v471.val[3], 0x38uLL), v471.val[3], 8uLL);
  v471.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v471.val[1], v471.val[1]), *&STACK[0x5770]), v471.val[1]), *&STACK[0x57C0]), *&STACK[0x57B0]);
  v471.val[3] = veorq_s8(v471.val[1], vsraq_n_u64(vshlq_n_s64(v392, 3uLL), v392, 0x3DuLL));
  v471.val[0] = vaddq_s64(v397, v471.val[0]);
  v398 = vsraq_n_u64(vshlq_n_s64(v471.val[1], 0x38uLL), v471.val[1], 8uLL);
  v471.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v395, v395), *&STACK[0x5770]), v395), *&STACK[0x57C0]), *&STACK[0x57B0]);
  v399 = veorq_s8(v471.val[1], v396);
  v471.val[2] = vaddq_s64(v471.val[2], v393);
  v400 = vsraq_n_u64(vshlq_n_s64(v471.val[1], 0x38uLL), v471.val[1], 8uLL);
  v471.val[1] = veorq_s8(vaddq_s64(v398, v471.val[3]), *&STACK[0x54C0]);
  v401 = vsraq_n_u64(vshlq_n_s64(v471.val[3], 3uLL), v471.val[3], 0x3DuLL);
  v402 = veorq_s8(vaddq_s64(v400, v399), *&STACK[0x54C0]);
  v471.val[3] = veorq_s8(v402, vsraq_n_u64(vshlq_n_s64(v399, 3uLL), v399, 0x3DuLL));
  v403 = veorq_s8(v471.val[1], v401);
  v404 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v402, 0x38uLL), v402, 8uLL), v471.val[3]), *&STACK[0x45C0]);
  v471.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v471.val[1], 0x38uLL), v471.val[1], 8uLL), v403), *&STACK[0x45C0]);
  v405 = vsraq_n_u64(vshlq_n_s64(v471.val[3], 3uLL), v471.val[3], 0x3DuLL);
  v471.val[3] = veorq_s8(v471.val[1], vsraq_n_u64(vshlq_n_s64(v403, 3uLL), v403, 0x3DuLL));
  v406 = veorq_s8(v404, v405);
  v407 = vsraq_n_u64(vshlq_n_s64(v471.val[1], 0x38uLL), v471.val[1], 8uLL);
  v471.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404, 0x38uLL), v404, 8uLL), v406);
  v408 = vaddq_s64(v407, v471.val[3]);
  v409 = vsraq_n_u64(vshlq_n_s64(v471.val[3], 3uLL), v471.val[3], 0x3DuLL);
  v410 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v408, v408), v285), v408), v289), *&STACK[0x57A0]);
  v471.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v471.val[1], v471.val[1]), v285), v471.val[1]), v289), *&STACK[0x57A0]);
  v411 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v378, 0x38uLL), v378, 8uLL), v45);
  v471.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v471.val[1], 0x38uLL), v471.val[1], 8uLL), veorq_s8(v471.val[1], vsraq_n_u64(vshlq_n_s64(v406, 3uLL), v406, 0x3DuLL))), v295), vnegq_s64(vandq_s8(vshlq_n_s64(v354, 3uLL), v294))), vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v471.val[0], v335), vorrq_s8(v471.val[0], v243)), v243), *&STACK[0x5760]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5660], 3uLL), v294))));
  v471.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v410, 0x38uLL), v410, 8uLL), veorq_s8(v410, v409)), v295), vnegq_s64(vandq_s8(vshlq_n_s64(v359, 3uLL), v294))), vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v471.val[2], v335), vorrq_s8(v471.val[2], v243)), v243), *&STACK[0x5760]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5650], 3uLL), v294))));
  v412 = veorq_s8(v411, *&STACK[0x45A0]);
  v413 = veorq_s8(v411, v230);
  v414 = vsraq_n_u64(vshlq_n_s64(v412, 0x38uLL), v412, 8uLL);
  v415 = veorq_s8(*&STACK[0x5540], *&STACK[0x45C0]);
  v416 = vaddq_s64(v414, v413);
  v417 = veorq_s8(v415, *&STACK[0x5530]);
  v418 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v416, v382), vorrq_s8(v416, *&STACK[0x5790])), *&STACK[0x5790]), *&STACK[0x5730]);
  v419 = veorq_s8(v418, vsraq_n_u64(vshlq_n_s64(v413, 3uLL), v413, 0x3DuLL));
  v420 = vsraq_n_u64(vshlq_n_s64(v415, 0x38uLL), v415, 8uLL);
  v421 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v418, 0x38uLL), v418, 8uLL), v419);
  v422 = vaddq_s64(v420, v417);
  v423 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v421, v421), v309), v421), *&STACK[0x5740]), *&STACK[0x5780]);
  v424 = veorq_s8(v423, vsraq_n_u64(vshlq_n_s64(v419, 3uLL), v419, 0x3DuLL));
  v425 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v423, 0x38uLL), v423, 8uLL), v424);
  v426 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v425, v425), *&STACK[0x5770]), v425), *&STACK[0x57C0]), *&STACK[0x57B0]);
  v427 = veorq_s8(v426, vsraq_n_u64(vshlq_n_s64(v424, 3uLL), v424, 0x3DuLL));
  v428 = veorq_s8(vaddq_s64(vsubq_s64(v422, vandq_s8(vaddq_s64(v422, v422), v310)), *&STACK[0x56D0]), v356);
  v429 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v426, 0x38uLL), v426, 8uLL), v427), *&STACK[0x54C0]);
  v430 = veorq_s8(v428, vsraq_n_u64(vshlq_n_s64(v417, 3uLL), v417, 0x3DuLL));
  v431 = veorq_s8(v429, vsraq_n_u64(vshlq_n_s64(v427, 3uLL), v427, 0x3DuLL));
  v432 = vsraq_n_u64(vshlq_n_s64(v429, 0x38uLL), v429, 8uLL);
  v433 = vsraq_n_u64(vshlq_n_s64(v428, 0x38uLL), v428, 8uLL);
  v434 = veorq_s8(vaddq_s64(v432, v431), *&STACK[0x45C0]);
  v435 = veorq_s8(v434, vsraq_n_u64(vshlq_n_s64(v431, 3uLL), v431, 0x3DuLL));
  v436 = vaddq_s64(v433, v430);
  v437 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v434, 0x38uLL), v434, 8uLL), v435);
  v438 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v437, v437), v285), v437), v289), *&STACK[0x57A0]);
  v439 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v436, v335), vorrq_s8(v436, v243)), v243), *&STACK[0x5760]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5670], 3uLL), v294)));
  v436.i64[0] = v11 + v20;
  v436.i64[1] = v10 + v20;
  v471.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v438, 0x38uLL), v438, 8uLL), veorq_s8(v438, vsraq_n_u64(vshlq_n_s64(v435, 3uLL), v435, 0x3DuLL))), v295), vnegq_s64(vandq_s8(vshlq_n_s64(v364, 3uLL), v294))), v439);
  v440 = vandq_s8(v436, *&STACK[0x4D70]);
  v441 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v440, 0x38uLL), v440, 8uLL), v45);
  v442 = veorq_s8(v441, *&STACK[0x45A0]);
  v443 = veorq_s8(v441, v230);
  v444 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v442, 0x38uLL), v442, 8uLL), v443);
  v445 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v444, v382), vorrq_s8(v444, *&STACK[0x5790])), *&STACK[0x5790]), *&STACK[0x5730]);
  v446 = vsraq_n_u64(vshlq_n_s64(v443, 3uLL), v443, 0x3DuLL);
  v447 = veorq_s8(vaddq_s64(*&STACK[0x5570], *&STACK[0x5580]), *&STACK[0x45C0]);
  v448 = veorq_s8(v445, v446);
  v449 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v445, 0x38uLL), v445, 8uLL), v448);
  v450 = veorq_s8(v447, vsraq_n_u64(vshlq_n_s64(*&STACK[0x5580], 3uLL), *&STACK[0x5580], 0x3DuLL));
  v451 = vsraq_n_u64(vshlq_n_s64(v448, 3uLL), v448, 0x3DuLL);
  v452 = vsraq_n_u64(vshlq_n_s64(v447, 0x38uLL), v447, 8uLL);
  v453 = vsraq_n_u64(vshlq_n_s64(v450, 3uLL), v450, 0x3DuLL);
  v454 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v449, v449), v309), v449), *&STACK[0x5740]), *&STACK[0x5780]);
  v455 = veorq_s8(v454, v451);
  v456 = vaddq_s64(v452, v450);
  v457 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v454, 0x38uLL), v454, 8uLL), v455);
  v458 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v457, v457), *&STACK[0x5770]), v457), *&STACK[0x57C0]), *&STACK[0x57B0]);
  v459 = veorq_s8(v458, vsraq_n_u64(vshlq_n_s64(v455, 3uLL), v455, 0x3DuLL));
  v460 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v458, 0x38uLL), v458, 8uLL), v459), *&STACK[0x54C0]);
  v461 = veorq_s8(v460, vsraq_n_u64(vshlq_n_s64(v459, 3uLL), v459, 0x3DuLL));
  v462 = veorq_s8(vaddq_s64(vsubq_s64(v456, vandq_s8(vaddq_s64(v456, v456), v310)), *&STACK[0x56D0]), v356);
  v463 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v460, 0x38uLL), v460, 8uLL), v461), *&STACK[0x45C0]);
  v464 = veorq_s8(v463, vsraq_n_u64(vshlq_n_s64(v461, 3uLL), v461, 0x3DuLL));
  v465 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v463, 0x38uLL), v463, 8uLL), v464);
  v466 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v462, 0x38uLL), v462, 8uLL), veorq_s8(v462, v453));
  v467 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v465, v465), v285), v465), v289), *&STACK[0x57A0]);
  v471.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v467, 0x38uLL), v467, 8uLL), veorq_s8(v467, vsraq_n_u64(vshlq_n_s64(v464, 3uLL), v464, 0x3DuLL))), v295), vnegq_s64(vandq_s8(vshlq_n_s64(v436, 3uLL), v294))), vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v466, v335), vorrq_s8(v466, v243)), v243), *&STACK[0x5760]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5680], 3uLL), v294))));
  v468 = *&STACK[0x55A0];
  v468.i64[1] = vqtbl4q_s8(v471, *&STACK[0x5590]).u64[0];
  v469 = vrev64q_s8(v468);
  *v369 = veorq_s8(vextq_s8(v469, v469, 8uLL), *&STACK[0x56C0]);
  return (*(STACK[0x57D8] + 8 * ((432 * (a1 == v20)) ^ v9)))();
}

uint64_t sub_10033F37C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x5540]) = v6;
  if (a6 == ((3791 * (v8 ^ 0x1115)) ^ 0x68B8A7EC))
  {
    v9 = 25;
  }

  else
  {
    v9 = -103;
  }

  LODWORD(STACK[0x5380]) = v9;
  v10 = *(STACK[0x57D8] + 8 * v8);
  STACK[0x5308] = 27;
  LODWORD(STACK[0x51F8]) = 202;
  LODWORD(STACK[0x5368]) = 66;
  LODWORD(STACK[0x54D0]) = 59;
  LODWORD(STACK[0x5520]) = STACK[0x5440];
  LODWORD(STACK[0x5550]) = a3;
  LODWORD(STACK[0x55D0]) = v7;
  LODWORD(STACK[0x5590]) = STACK[0x5378];
  LODWORD(STACK[0x5530]) = STACK[0x5450];
  LODWORD(STACK[0x54E0]) = STACK[0x54C0];
  return v10(a1, 354021940);
}

uint64_t sub_10033F4CC()
{
  v3 = STACK[0x51B8] + 1097;
  v4 = v1 & 0x13F614F0;
  v5 = (v2 - 0x60D8BD335323757) ^ (((v2 - 0x60D8BD335323757) ^ 0xAEE7D519CC92D73FLL) + 0x352BFDD8DE063337) ^ (((v2 - 0x60D8BD335323757) ^ 0x523A23B8CACE3C7) - 0x6110750561C7F831) ^ (((v2 - 0x60D8BD335323757) ^ 0x3ED3F7FD79EFFFEDLL) - 0x5AE020C39484E41BLL) ^ *(v0 + v4) & 0x7FFFFFFFFFFFFFFFLL ^ (((STACK[0x51B8] - 517) ^ 0x6AE87F20C62E62BALL) + ((v2 - 0x60D8BD335323757) ^ 0xF12457E1D4BAD0E3)) ^ 0x5654B67AA5559A50;
  *(STACK[0xE5A0] + 448) = v5;
  return (*(STACK[0x57D8] + 8 * ((35 * (v5 != (*(v0 + v4) & 0x7FFFFFFFFFFFFFFFLL ^ 0x32676144483E81A6) - 0x108D76B35876A488 - 2 * ((*(v0 + v4) & 0x7FFFFFFFFFFFFFFFLL ^ 0x32676144483E81A6) & 0x6F72894CA7895B70 | *(v0 + v4) & 8))) ^ v3)))();
}

uint64_t sub_10033F67C@<X0>(unsigned int a1@<W8>)
{
  STACK[0xD5D8] = *(v2 + 728) + a1;
  v3 = STACK[0x57D8];
  STACK[0xD018] = *(STACK[0x57D8] + 8 * v1);
  return (*(v3 + 8 * ((((v1 + 93932002) | 0x28600408) - 771302160) | v1)))();
}

uint64_t sub_10033F7E0@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v6 = *(*(a1 + 4000) + 4 * (v4 % (v5 ^ 0x1695u)));
  *(*(a1 + 4008) + v3 - 5896 * ((((v3 >> 3) * v2) >> 64) >> 4)) = (((v6 ^ 0x9C) + 79) ^ ((v6 ^ 0x76) - 91) ^ ((v6 ^ 0x1B) - 54)) - 8;
  return (*(STACK[0x57D8] + 8 * ((402 * (a2 != 0)) ^ v5)))();
}

uint64_t sub_10033F8BC()
{
  *(v0 + 197) = 1978581539;
  STACK[0xC3F8] = 4;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 + 9152)))(&STACK[0x1D1CD], &STACK[0x82CC], &STACK[0xC3F8], 0, 0);
  v5 = STACK[0x3648];
  LODWORD(STACK[0x1D4C8]) = ((v1 - 879715805) ^ 0x6C) - 551690071 * STACK[0x3648];
  LODWORD(STACK[0x1D4D0]) = 551690071 * v5;
  LODWORD(STACK[0x1D4C4]) = (551690071 * v5) ^ (v1 - 879715805) ^ 0xE42;
  STACK[0x1D4E0] = 551690071 * v5 + v4;
  LODWORD(STACK[0x1D4CC]) = v1 - 879715805 - 551690071 * v5;
  LODWORD(STACK[0x1D4C0]) = (v1 - 1079089617) ^ (551690071 * v5);
  STACK[0x1D4D8] = -551690071 * v5;
  v6 = (*(v3 + 8 * (v1 ^ 0x2411)))(v2 - 240);
  return (*(v3 + 8 * SLODWORD(STACK[0x1D4D4])))(v6);
}

uint64_t sub_10033F9C4()
{
  LODWORD(STACK[0x53E0]) = 0;
  v1 = STACK[0x5208] & STACK[0x5220];
  v2 = *STACK[0x51E8] & 0xFFFFFFF8;
  LODWORD(STACK[0x55A0]) = v2;
  v3 = STACK[0x50F8];
  v4 = v2 & (STACK[0x50F8] + 2050767130);
  v5 = *STACK[0x51F0];
  STACK[0x5590] = v5;
  v6 = *(v5 + v4);
  v7 = STACK[0x5100];
  v8 = (v6 + STACK[0x5100]) ^ 0xB88801D4E1C76353;
  v9 = v8 ^ __ROR8__(v6, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0x38C8B16AE7056877;
  v11 = __ROR8__(v10, 8);
  v12 = v10 ^ __ROR8__(v9, 61);
  v13 = (((v11 + v12) | 0xAD48C39CCEB71AC4) - ((v11 + v12) | 0x52B73C633148E53BLL) + 0x52B73C633148E53BLL) ^ 0x48C872E14272FF95;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) | 0x6DAC946FC8D1ACC6) - (v15 + v14) - 0x36D64A37E468D663) ^ 0xD777B76C353D2F19;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xDA604B0C03A2BF99;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = __ROR8__((v20 + v19 - ((2 * (v20 + v19)) & 0x33BCF8E635C2D456) - 0x6621838CE51E95D5) ^ 0x63EB9EBED1DF5BECLL, 8);
  v22 = (v20 + v19 - ((2 * (v20 + v19)) & 0x33BCF8E635C2D456) - 0x6621838CE51E95D5) ^ 0x63EB9EBED1DF5BECLL ^ __ROR8__(v19, 61);
  v23 = (((v21 + v22) | 0x9410F5EE38DCF722) - ((v21 + v22) | 0x6BEF0A11C72308DDLL) + 0x6BEF0A11C72308DDLL) ^ 0x46E0F9081839248CLL;
  v24 = v0 == (((__ROR8__(v23, 8) + (v23 ^ __ROR8__(v22, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5110]);
  v25 = (((2 * (STACK[0x3018] + STACK[0x5580])) | 0xC4426E8078CA9EE4) - (STACK[0x3018] + STACK[0x5580]) - 0x622137403C654F72) ^ 0xDAA93694DDA22C21;
  v26 = v25 ^ __ROR8__(STACK[0x3018], 61);
  v27 = __ROR8__(v25, 8);
  v28 = (v27 + v26 - ((2 * (v27 + v26)) & 0xBD900C7F8BA6618ELL) + 0x5EC8063FC5D330C7) ^ 0x6600B75522D658B0;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v29)) | 0xA6A0D579CA95956CLL) - (v30 + v29) + 0x2CAF95431AB5354ALL) ^ 0x36D0DBC1698F2FE7;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0xE1A1FD5BD155F97ALL;
  v34 = __ROR8__(v33, 8);
  v35 = v33 ^ __ROR8__(v32, 61);
  v36 = (v34 + v35) ^ 0xDA604B0C03A2BF99;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0xFA35E2CDCB3E31C7;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = ((__ROR8__((v40 + v39 - ((2 * (v40 + v39)) & 0xF27501744FACB5B8) - 0x6C57F45D829A524) ^ 0x2BCA8C5C07338972, 8) + ((v40 + v39 - ((2 * (v40 + v39)) & 0xF27501744FACB5B8) - 0x6C57F45D829A524) ^ 0x2BCA8C5C07338972 ^ __ROR8__(v39, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x57B0];
  LODWORD(STACK[0x5580]) = ((v41 ^ LODWORD(STACK[0x57C0]) ^ 0x28) - 104) ^ ((v41 ^ LODWORD(STACK[0x57C0])) - 64) ^ ((v41 ^ LODWORD(STACK[0x57C0]) ^ 0xFFFFFFA8) + 24);
  v42 = (STACK[0x2FC0] + STACK[0x56E0]) ^ 0xB88801D4E1C76353;
  v43 = v42 ^ __ROR8__(STACK[0x2FC0], 61);
  v44 = __ROR8__(v42, 8);
  v45 = (((2 * (v44 + v43)) | 0x7D27094F214059F6) - (v44 + v43) - 0x3E9384A790A02CFBLL) ^ 0x65B35CD77A5448CLL ^ __ROR8__(v43, 61);
  v46 = (__ROR8__((((2 * (v44 + v43)) | 0x7D27094F214059F6) - (v44 + v43) - 0x3E9384A790A02CFBLL) ^ 0x65B35CD77A5448CLL, 8) + v45) ^ 0xE580B17D8CC5E551;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0xE1A1FD5BD155F97ALL;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0xDA604B0C03A2BF99;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = __ROR8__(v50, 8);
  v53 = (((2 * (v52 + v51)) & 0xB1D704F947BFF108) - (v52 + v51) + 0x27147D835C20077BLL) ^ 0xDD219F4E971E36BCLL;
  v54 = v53 ^ __ROR8__(v51, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0xD2F00CE620E5D3AELL;
  v56 = ((__ROR8__(v55, 8) + (v55 ^ __ROR8__(v54, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5480];
  LODWORD(STACK[0x56E0]) = ((v56 ^ LODWORD(STACK[0x54A0]) ^ 0xFFFFFF8C) - 91) ^ ((v56 ^ LODWORD(STACK[0x54A0]) ^ 0xFFFFFFEC) - 59) ^ ((v56 ^ LODWORD(STACK[0x54A0]) ^ 0x60) + 73);
  v57 = (STACK[0x5010] - (STACK[0x4FD8] & 0x2783C772349678DCLL) - 0x6C3E1C46E5B4C392) ^ 0x2B49E26DFB8C5F3DLL;
  v58 = v57 ^ STACK[0x5018];
  v59 = (__ROR8__(v57, 8) + v58) ^ 0x38C8B16AE7056877;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0xE580B17D8CC5E551;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ 0xE1A1FD5BD155F97ALL;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ 0xDA604B0C03A2BF99;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0xFA35E2CDCB3E31C7;
  v68 = __ROR8__(v67, 8);
  v69 = v67 ^ __ROR8__(v66, 61);
  v70 = (((2 * (v68 + v69)) | 0xF6E8294945C162BELL) - (v68 + v69) - 0x7B7414A4A2E0B15FLL) ^ 0xA9841842820562F1;
  STACK[0x5560] = __ROR8__(v70, 8) + (v70 ^ __ROR8__(v69, 61));
  v71 = (STACK[0x2FC8] + STACK[0x5300] - ((2 * (STACK[0x2FC8] + STACK[0x5300])) & 0xD379E8B2A80E744ELL) - 0x16430BA6ABF8C5D9) ^ 0x5134F58DB5C05974;
  v72 = v71 ^ __ROR8__(STACK[0x2FC8], 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0x38C8B16AE7056877;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = __ROR8__(v73, 8);
  v76 = (v75 + v74 - ((2 * (v75 + v74)) & 0x96222F50A8CAA0E2) - 0x34EEE857AB9AAF8FLL) ^ 0x2E91A6D5D8A0B520 ^ __ROR8__(v74, 61);
  v77 = (__ROR8__((v75 + v74 - ((2 * (v75 + v74)) & 0x96222F50A8CAA0E2) - 0x34EEE857AB9AAF8FLL) ^ 0x2E91A6D5D8A0B520, 8) + v76) ^ 0xE1A1FD5BD155F97ALL;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = __ROR8__(v77, 8);
  v80 = (((2 * ((v79 + v78) ^ 0x834D3E64795DF75ALL)) | 0xAD37E609EA90FAECLL) - ((v79 + v78) ^ 0x834D3E64795DF75ALL) - 0x569BF304F5487D76) ^ 0xFB6866C8FB735B5;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0xFA35E2CDCB3E31C7;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = __ROR8__(v82, 8);
  v85 = (((2 * (v84 + v83)) & 0xBF7393006A0AF7FALL) - (v84 + v83) + 0x2046367FCAFA8402) ^ 0xF2B63A99EA1F57ACLL;
  STACK[0x5550] = __ROR8__(v85, 8) + (v85 ^ __ROR8__(v83, 61));
  v86 = (STACK[0x2FD0] + STACK[0x5360]) ^ 0xB88801D4E1C76353;
  v87 = v86 ^ __ROR8__(STACK[0x2FD0], 61);
  v88 = __ROR8__(v86, 8);
  v89 = (((2 * (v88 + v87)) | 0xCCBD0905875C638) - (v88 + v87) + 0x799A17B7D3C51CE4) ^ 0xBEAD5922CB3F8B6BLL;
  v90 = v89 ^ __ROR8__(v87, 61);
  v91 = __ROR8__(v89, 8);
  v92 = (((2 * (v91 + v90)) & 0x995DC6ADC661F078) - (v91 + v90) - 0x4CAEE356E330F83DLL) ^ 0x56D1ADD4900AE292;
  v93 = v92 ^ __ROR8__(v90, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ 0xE1A1FD5BD155F97ALL;
  v95 = __ROR8__(v94, 8);
  v96 = v94 ^ __ROR8__(v93, 61);
  v97 = (v95 + v96) ^ 0xDA604B0C03A2BF99;
  v98 = v97 ^ __ROR8__(v96, 61);
  v99 = __ROR8__(v97, 8);
  v100 = (((2 * (v99 + v98)) & 0xD2A831BAEA2C93C2) - (v99 + v98) + 0x16ABE7228AE9B61ELL) ^ 0xEC9E05EF41D787D9;
  v101 = v100 ^ __ROR8__(v98, 61);
  v102 = (__ROR8__(v100, 8) + v101) ^ 0xD2F00CE620E5D3AELL;
  STACK[0x5530] = __ROR8__(v102, 8) + (v102 ^ __ROR8__(v101, 61));
  v103 = (STACK[0x2FD8] + STACK[0x5338] - ((2 * (STACK[0x2FD8] + STACK[0x5338])) & 0xFBD85B4180518E1ALL) - 0x213D25F3FD738F3) ^ 0x45642C7421EFA45ELL;
  v104 = v103 ^ __ROR8__(STACK[0x2FD8], 61);
  v105 = __ROR8__(v103, 8);
  v106 = (((2 * (v105 + v104)) | 0x10C0150FB1067028) - (v105 + v104) - 0x8600A87D8833814) ^ 0x30A8BBED3F865063;
  v107 = v106 ^ __ROR8__(v104, 61);
  v108 = __ROR8__(v106, 8);
  v109 = (((v108 + v107) & 0xEB9B877D965068E9 ^ 0xE3180328100008E9) + ((v108 + v107) ^ 0x1CA38C57EE7A7502) - (((v108 + v107) ^ 0x1CA38C57EE7A7502) & 0xEB9B877D965068E9)) ^ 0x12B8BA57F4EFF8BALL;
  v110 = v109 ^ __ROR8__(v107, 61);
  v111 = (__ROR8__(v109, 8) + v110) ^ 0xE1A1FD5BD155F97ALL;
  v112 = v111 ^ __ROR8__(v110, 61);
  v113 = __ROR8__(v111, 8);
  v114 = (((v113 + v112) | 0x60FE894367DB54B6) - ((v113 + v112) | 0x9F0176BC9824AB49) - 0x60FE894367DB54B7) ^ 0xBA9EC24F6479EB2FLL ^ __ROR8__(v112, 61);
  v115 = (__ROR8__((((v113 + v112) | 0x60FE894367DB54B6) - ((v113 + v112) | 0x9F0176BC9824AB49) - 0x60FE894367DB54B7) ^ 0xBA9EC24F6479EB2FLL, 8) + v114) ^ 0xFA35E2CDCB3E31C7;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = __ROR8__(v115, 8);
  v118 = (((2 * (v117 + v116)) & 0x9808CB91F81E3AF2) - (v117 + v116) - 0x4C0465C8FC0F1D7ALL) ^ 0x610B96D123153128;
  v119 = v118 ^ __ROR8__(v116, 61);
  v120 = __ROR8__(v118, 8);
  STACK[0x5520] = ((2 * (v120 + v119)) | 0x29FF351F92AD135CLL) - (v120 + v119);
  v121 = (STACK[0x2FE0] + STACK[0x51A8]) ^ 0xB88801D4E1C76353;
  v122 = v121 ^ __ROR8__(STACK[0x2FE0], 61);
  v123 = __ROR8__(v121, 8);
  v124 = (((v123 + v122) | 0xD330368E28C863FDLL) - ((v123 + v122) | 0x2CCFC971D7379C02) + 0x2CCFC971D7379C02) ^ 0xEBF887E4CFCD0B8ALL ^ __ROR8__(v122, 61);
  v125 = (__ROR8__((((v123 + v122) | 0xD330368E28C863FDLL) - ((v123 + v122) | 0x2CCFC971D7379C02) + 0x2CCFC971D7379C02) ^ 0xEBF887E4CFCD0B8ALL, 8) + v124) ^ 0xE580B17D8CC5E551;
  v126 = v125 ^ __ROR8__(v124, 61);
  v127 = __ROR8__(v125, 8);
  v128 = (((2 * ((v127 + v126) ^ 0xA8FEDE4AC88E313ELL)) | 0x20FBBCAD87F66934) - ((v127 + v126) ^ 0xA8FEDE4AC88E313ELL) - 0x107DDE56C3FB349ALL) ^ 0x5922FD47DA20FCDELL;
  v129 = v128 ^ __ROR8__(v126, 61);
  v130 = (__ROR8__(v128, 8) + v129) ^ 0xDA604B0C03A2BF99;
  v131 = v130 ^ __ROR8__(v129, 61);
  v132 = (__ROR8__(v130, 8) + v131) ^ 0xFA35E2CDCB3E31C7;
  v133 = v132 ^ __ROR8__(v131, 61);
  v134 = (__ROR8__(v132, 8) + v133) ^ 0xD2F00CE620E5D3AELL;
  v135 = v134 ^ __ROR8__(v133, 61);
  v136 = __ROR8__(v134, 8);
  STACK[0x5500] = ((2 * (v136 + v135)) | 0x3109AA8E2F014C70) - (v136 + v135);
  v137 = (STACK[0x3010] + STACK[0x5160]) ^ 0xB88801D4E1C76353;
  v138 = v137 ^ __ROR8__(STACK[0x3010], 61);
  v139 = (__ROR8__(v137, 8) + v138) ^ 0x38C8B16AE7056877;
  v140 = __ROR8__(v139, 8);
  v141 = v139 ^ __ROR8__(v138, 61);
  v142 = (v140 + v141) ^ 0xE580B17D8CC5E551;
  v143 = v142 ^ __ROR8__(v141, 61);
  v144 = (__ROR8__(v142, 8) + v143) ^ 0xE1A1FD5BD155F97ALL;
  v145 = v144 ^ __ROR8__(v143, 61);
  v146 = (__ROR8__(v144, 8) + v145) ^ 0xDA604B0C03A2BF99;
  v147 = v146 ^ __ROR8__(v145, 61);
  v148 = (__ROR8__(v146, 8) + v147) ^ 0xFA35E2CDCB3E31C7;
  v149 = v148 ^ __ROR8__(v147, 61);
  v150 = __ROR8__(v148, 8);
  v151 = (((2 * (v150 + v149)) & 0x7133309E8E616E60) - (v150 + v149) - 0x3899984F4730B731) ^ 0x15966B56982A9B61;
  v152 = v151 ^ __ROR8__(v149, 61);
  v153 = __ROR8__(v151, 8);
  v154 = ((v153 + v152 - ((2 * (v153 + v152)) & 0x620BC3FA0B129E20) + 0x3105E1FD05894F10) ^ 0xC576EACCABF93A6BLL) >> STACK[0x5148];
  LODWORD(STACK[0x54F0]) = ((v154 ^ LODWORD(STACK[0x5150]) ^ 0x3C) + 13) ^ ((v154 ^ LODWORD(STACK[0x5150]) ^ 0x43) + 116) ^ ((v154 ^ LODWORD(STACK[0x5150]) ^ 0x7F) + 80);
  v155 = (STACK[0x2FE8] + STACK[0x50D0]) ^ 0xB88801D4E1C76353 ^ __ROR8__(STACK[0x2FE8], 61);
  v156 = (__ROR8__((STACK[0x2FE8] + STACK[0x50D0]) ^ 0xB88801D4E1C76353, 8) + v155) ^ 0x38C8B16AE7056877;
  v157 = v156 ^ __ROR8__(v155, 61);
  v158 = __ROR8__(v156, 8);
  v159 = (((2 * (v158 + v157)) & 0xA44DD8B73BB52F10) - (v158 + v157) + 0x2DD913A462256877) ^ 0xC859A2D9EEE08D26;
  v160 = v159 ^ __ROR8__(v157, 61);
  v161 = (__ROR8__(v159, 8) + v160) ^ 0xE1A1FD5BD155F97ALL;
  v162 = v161 ^ __ROR8__(v160, 61);
  v163 = (__ROR8__(v161, 8) + v162) ^ 0xDA604B0C03A2BF99;
  v164 = v163 ^ __ROR8__(v162, 61);
  v165 = (__ROR8__(v163, 8) + v164) ^ 0xFA35E2CDCB3E31C7;
  v166 = v165 ^ __ROR8__(v164, 61);
  v167 = (__ROR8__(v165, 8) + v166) ^ 0xD2F00CE620E5D3AELL;
  STACK[0x54D0] = __ROR8__(v167, 8) + (v167 ^ __ROR8__(v166, 61));
  v168 = (STACK[0x3008] + STACK[0x5050]) ^ 0xB88801D4E1C76353;
  v169 = v168 ^ __ROR8__(STACK[0x3008], 61);
  v170 = __ROR8__(v168, 8);
  v171 = (((2 * (v170 + v169)) | 0x59D2415142A8A21ALL) - (v170 + v169) - 0x2CE920A8A154510DLL) ^ 0x142191C24651397ALL;
  v172 = v171 ^ __ROR8__(v169, 61);
  v173 = (__ROR8__(v171, 8) + v172) ^ 0xE580B17D8CC5E551;
  v174 = v173 ^ __ROR8__(v172, 61);
  v175 = __ROR8__(v173, 8);
  v176 = (((v175 + v174) | 0xEB3AA82DF6335AC1) - ((v175 + v174) | 0x14C557D209CCA53ELL) + 0x14C557D209CCA53ELL) ^ 0xA9B55762766A3BBLL;
  v177 = v176 ^ __ROR8__(v174, 61);
  v178 = (__ROR8__(v176, 8) + v177) ^ 0xDA604B0C03A2BF99;
  v179 = __ROR8__(v178, 8);
  v180 = v178 ^ __ROR8__(v177, 61);
  v181 = (((2 * (v179 + v180)) & 0x9133820ED7532972) - (v179 + v180) - 0x4899C1076BA994BALL) ^ 0x4D53DC355F685A81;
  v182 = v181 ^ __ROR8__(v180, 61);
  v183 = (__ROR8__(v181, 8) + v182) ^ 0xD2F00CE620E5D3AELL;
  v184 = v183 ^ __ROR8__(v182, 61);
  v185 = __ROR8__(v183, 8);
  STACK[0x5410] = ((2 * (v185 + v184)) | 0x5F35BB58529D032) - (v185 + v184);
  v186 = (STACK[0x4DE8] - (STACK[0x4B00] & 0xAA36827E2CBDFC46) - 0x2AE4BEC0E9A101DDLL) ^ 0x6D9340EBF7999D70;
  v187 = v186 ^ STACK[0x4DE0];
  v188 = __ROR8__(v186, 8);
  v189 = (((v188 + v187) | 0xFACB6B69B7E83874) - ((v188 + v187) | 0x53494964817C78BLL) + 0x53494964817C78BLL) ^ 0xC203DA0350ED5003;
  v190 = v189 ^ __ROR8__(v187, 61);
  v191 = (__ROR8__(v189, 8) + v190) ^ 0xE580B17D8CC5E551;
  v192 = v191 ^ __ROR8__(v190, 61);
  v193 = (__ROR8__(v191, 8) + v192) ^ 0xE1A1FD5BD155F97ALL;
  v194 = __ROR8__(v193, 8);
  v195 = v193 ^ __ROR8__(v192, 61);
  v196 = (v194 + v195) ^ 0xDA604B0C03A2BF99;
  v197 = v196 ^ __ROR8__(v195, 61);
  v198 = (__ROR8__(v196, 8) + v197) ^ 0xFA35E2CDCB3E31C7;
  v199 = v198 ^ __ROR8__(v197, 61);
  v200 = __ROR8__(v198, 8);
  STACK[0x53E8] = __ROR8__((v200 + v199 - ((2 * (v200 + v199)) & 0x61EB2A8FCE31D82) + 0x30F59547E718EC1) ^ 0xD1FF55B25E945D6FLL, 8) + ((v200 + v199 - ((2 * (v200 + v199)) & 0x61EB2A8FCE31D82) + 0x30F59547E718EC1) ^ 0xD1FF55B25E945D6FLL ^ __ROR8__(v199, 61));
  v201 = (STACK[0x2FF0] + STACK[0x4EB8] - ((2 * (STACK[0x2FF0] + STACK[0x4EB8])) & 0x7D05E66F0FA95346) + 0x3E82F33787D4A9A3) ^ 0x860AF2E36613CAF0;
  v202 = v201 ^ __ROR8__(STACK[0x2FF0], 61);
  v203 = __ROR8__(v201, 8);
  v204 = (v203 + v202 - ((2 * (v203 + v202)) & 0xD32505E342F9F4E4) + 0x699282F1A17CFA72) ^ 0x515A339B46799205;
  v205 = v204 ^ __ROR8__(v202, 61);
  v206 = (__ROR8__(v204, 8) + v205) ^ 0xE580B17D8CC5E551;
  v207 = v206 ^ __ROR8__(v205, 61);
  v208 = __ROR8__(v206, 8);
  v209 = __ROR8__((((2 * (v208 + v207)) | 0xB49034DC8716D73CLL) - (v208 + v207) + 0x25B7E591BC749462) ^ 0x3BE9E73592DE92E4, 8);
  v210 = (((2 * (v208 + v207)) | 0xB49034DC8716D73CLL) - (v208 + v207) + 0x25B7E591BC749462) ^ 0x3BE9E73592DE92E4 ^ __ROR8__(v207, 61);
  v211 = (((2 * ((v209 + v210) ^ 0x7E2B376B8C66F5B9)) | 0x3DA47059E2BAB674) - ((v209 + v210) ^ 0x7E2B376B8C66F5B9) + 0x612DC7D30EA2A4C6) ^ 0x3A99444B7E99111ALL;
  v212 = v211 ^ __ROR8__(v210, 61);
  v213 = (__ROR8__(v211, 8) + v212) ^ 0xFA35E2CDCB3E31C7;
  v214 = v213 ^ __ROR8__(v212, 61);
  v215 = (__ROR8__(v213, 8) + v214) ^ 0xD2F00CE620E5D3AELL;
  STACK[0x53D0] = __ROR8__(v215, 8) + (v215 ^ __ROR8__(v214, 61));
  v216 = (((2 * (STACK[0x2FF8] + STACK[0x4DD8])) & 0xBCDAC742CAC1475ELL) - (STACK[0x2FF8] + STACK[0x4DD8]) + 0x21929C5E9A9F5C50) ^ 0x991A9D8A7B583F03;
  v217 = v216 ^ __ROR8__(STACK[0x2FF8], 61);
  v218 = __ROR8__(v216, 8);
  v219 = __ROR8__((v218 + v217 - ((2 * (v218 + v217)) & 0x84D2557CEBCE2D72) + 0x42692ABE75E716B9) ^ 0x7AA19BD492E27ECELL, 8);
  v220 = (v218 + v217 - ((2 * (v218 + v217)) & 0x84D2557CEBCE2D72) + 0x42692ABE75E716B9) ^ 0x7AA19BD492E27ECELL ^ __ROR8__(v217, 61);
  v221 = (((2 * (v219 + v220)) | 0x1D9EEBD24B7F9F4) - (v219 + v220) + 0x7F1308A16DA40306) ^ 0x656C46231E9E19ABLL;
  v222 = v221 ^ __ROR8__(v220, 61);
  v223 = (__ROR8__(v221, 8) + v222) ^ 0xE1A1FD5BD155F97ALL;
  v224 = v223 ^ __ROR8__(v222, 61);
  v225 = __ROR8__(v223, 8);
  v226 = (((v225 + v224) | 0x5081F17E714F3C42) - ((v225 + v224) | 0xAF7E0E818EB0C3BDLL) - 0x5081F17E714F3C43) ^ 0x8AE1BA7272ED83DBLL;
  v227 = v226 ^ __ROR8__(v224, 61);
  v228 = (__ROR8__(v226, 8) + v227) ^ 0xFA35E2CDCB3E31C7;
  v229 = v228 ^ __ROR8__(v227, 61);
  v230 = (__ROR8__(v228, 8) + v229) ^ 0xD2F00CE620E5D3AELL;
  STACK[0x5380] = __ROR8__(v230, 8) + (v230 ^ __ROR8__(v229, 61));
  v231 = (((2 * (STACK[0x3000] + STACK[0x4B78])) | 0xBAFEFBB1C8F0C0BALL) - (STACK[0x3000] + STACK[0x4B78]) - 0x5D7F7DD8E478605DLL) ^ 0xE5F77C0C05BF030ELL;
  v232 = v231 ^ __ROR8__(STACK[0x3000], 61);
  v233 = (__ROR8__(v231, 8) + v232) ^ 0x38C8B16AE7056877;
  v234 = v233 ^ __ROR8__(v232, 61);
  v235 = (__ROR8__(v233, 8) + v234) ^ 0xE580B17D8CC5E551;
  v236 = v235 ^ __ROR8__(v234, 61);
  v237 = (__ROR8__(v235, 8) + v236) ^ 0xE1A1FD5BD155F97ALL;
  v238 = v237 ^ __ROR8__(v236, 61);
  v239 = __ROR8__(v237, 8);
  v240 = (((2 * (v239 + v238)) | 0xA148DC7BB1D0DB66) - (v239 + v238) - 0x50A46E3DD8E86DB3) ^ 0x8AC42531DB4AD22ALL;
  v241 = v240 ^ __ROR8__(v238, 61);
  v242 = __ROR8__(v240, 8);
  v243 = __ROR8__((((2 * (v242 + v241)) & 0x9D8E679B8A09AEEELL) - (v242 + v241) + 0x3138CC323AFB2888) ^ 0xCB0D2EFFF1C5194FLL, 8);
  v244 = (((2 * (v242 + v241)) & 0x9D8E679B8A09AEEELL) - (v242 + v241) + 0x3138CC323AFB2888) ^ 0xCB0D2EFFF1C5194FLL ^ __ROR8__(v241, 61);
  v245 = (STACK[0x32D8] + STACK[0x4B20]) ^ 0xB88801D4E1C76353;
  v246 = v245 ^ __ROR8__(STACK[0x32D8], 61);
  v247 = (__ROR8__(v245, 8) + v246) ^ 0x38C8B16AE7056877;
  v248 = v247 ^ __ROR8__(v246, 61);
  v249 = (__ROR8__(v247, 8) + v248) ^ 0xE580B17D8CC5E551;
  v250 = v249 ^ __ROR8__(v248, 61);
  v251 = __ROR8__(v249, 8);
  v252 = (v251 + v250 - ((2 * (v251 + v250)) & 0xFA38113942B58694) - 0x2E3F7635EA53CB6) ^ 0x1CBDF5C7700F3A30;
  v253 = v252 ^ __ROR8__(v250, 61);
  v254 = (__ROR8__(v252, 8) + v253) ^ 0xDA604B0C03A2BF99;
  v255 = v254 ^ __ROR8__(v253, 61);
  v256 = __ROR8__(v254, 8);
  v257 = (v243 + v244 - ((2 * (v243 + v244)) & 0xD39CD68C5B7D31DCLL) + 0x69CE6B462DBE98EELL) ^ 0xBB3E67A00D5B4B40;
  v258 = (((v256 + v255) | 0x3DFA3F2BFC1586ACLL) - ((v256 + v255) | 0xC205C0D403EA7953) - 0x3DFA3F2BFC1586ADLL) ^ 0xC7CFDDE6372BB76BLL;
  v259 = v258 ^ __ROR8__(v255, 61);
  v260 = __ROR8__(v258, 8);
  v261 = (((2 * (v260 + v259)) & 0x1E594705F0CAEBCELL) - (v260 + v259) - 0xF2CA382F86575E8) ^ 0x2223509B277F59B6;
  v262 = v261 ^ __ROR8__(v259, 61);
  v263 = __ROR8__(v261, 8);
  v264 = __ROR8__(v257, 8) + (v257 ^ __ROR8__(v244, 61));
  v265 = ((((v263 + v262) | 0x9763B6EE680E0732) - ((v263 + v262) | 0x689C491197F1F8CDLL) + 0x689C491197F1F8CDLL) ^ 0x6310BDDFC67E7249) >> STACK[0x4B28];
  v266 = ((v265 ^ LODWORD(STACK[0x4B30]) ^ 0x4C) - 18) ^ ((v265 ^ LODWORD(STACK[0x4B30]) ^ 0xFFFFFFBA) + 28) ^ ((v265 ^ LODWORD(STACK[0x4B30]) ^ 0xFFFFFFF6) + 88);
  v267 = (STACK[0x52A8] - (STACK[0x5290] & 0xC4541DB9695D14E6) - 0x1DD5F1234B51758DLL) ^ 0x7AABFA1386B6F22;
  v268 = v267 ^ STACK[0x55E0];
  v269 = __ROR8__(v267, 8);
  v270 = (((2 * (v269 + v268)) & 0x898D002B823F1E16) - (v269 + v268) + 0x3B397FEA3EE070F4) ^ 0xDA9882B1EFB5898ELL;
  v271 = v270 ^ __ROR8__(v268, 61);
  v272 = (__ROR8__(v270, 8) + v271) ^ 0xDA604B0C03A2BF99;
  v273 = __ROR8__(v272, 8);
  v274 = v272 ^ __ROR8__(v271, 61);
  v275 = (v273 + v274) ^ 0xFA35E2CDCB3E31C7;
  v276 = v275 ^ __ROR8__(v274, 61);
  v277 = (__ROR8__(v275, 8) + v276) ^ 0xD2F00CE620E5D3AELL;
  v278 = (STACK[0x32E0] + STACK[0x49B0]) ^ 0xB88801D4E1C76353 ^ __ROR8__(STACK[0x32E0], 61);
  v279 = __ROR8__((STACK[0x32E0] + STACK[0x49B0]) ^ 0xB88801D4E1C76353, 8);
  v280 = (((2 * (v279 + v278)) & 0x6C1665A388360BBELL) - (v279 + v278) - 0x360B32D1C41B05E0) ^ 0xF13C7C44DCE19257;
  v281 = v280 ^ __ROR8__(v278, 61);
  v282 = __ROR8__(v277, 8) + (v277 ^ __ROR8__(v276, 61));
  v283 = (__ROR8__(v280, 8) + v281) ^ 0xE580B17D8CC5E551;
  v284 = v283 ^ __ROR8__(v281, 61);
  v285 = (__ROR8__(v283, 8) + v284) ^ 0xE1A1FD5BD155F97ALL;
  v286 = v285 ^ __ROR8__(v284, 61);
  v287 = __ROR8__(v285, 8);
  v288 = (((2 * (v287 + v286)) | 0xD0B63119B193DE1ALL) - (v287 + v286) + 0x17A4E773273610F3) ^ 0x323B5380DB6B5094;
  v289 = v288 ^ __ROR8__(v286, 61);
  v290 = (__ROR8__(v288, 8) + v289) ^ 0xFA35E2CDCB3E31C7;
  v291 = v290 ^ __ROR8__(v289, 61);
  v292 = __ROR8__(v290, 8);
  v293 = (((2 * (v292 + v291)) & 0x56E369CCA09F7D60) - (v292 + v291) + 0x548E4B19AFB0414FLL) ^ 0x867E47FF8F5592E1;
  v294 = v293 ^ __ROR8__(v291, 61);
  v295 = __ROR8__(v293, 8);
  v296 = ((((v282 ^ 0xF4730B31AE70757BLL) >> STACK[0x4AB0]) ^ LODWORD(STACK[0x4AB8]) ^ 0x2B) - 118) ^ ((((v282 ^ 0xF4730B31AE70757BLL) >> STACK[0x4AB0]) ^ LODWORD(STACK[0x4AB8]) ^ 0x74) - 41) ^ ((((v282 ^ 0xF4730B31AE70757BLL) >> STACK[0x4AB0]) ^ LODWORD(STACK[0x4AB8]) ^ 0x5F) - 2);
  v297 = ((((2 * (v295 + v294)) | 0x91B2F8C7D03D9358) - (v295 + v294) + 0x3726839C17E13654) ^ 0x3CAA7752466EBCD7) >> STACK[0x4A50];
  v298 = ((v297 ^ LODWORD(STACK[0x4A58]) ^ 0xFFFFFF94) - 33) ^ ((v297 ^ LODWORD(STACK[0x4A58]) ^ 0xFFFFFFF0) - 69) ^ ((v297 ^ LODWORD(STACK[0x4A58]) ^ 0x64) + 47);
  v299 = (STACK[0x32E8] + STACK[0x3B40]) ^ 0xB88801D4E1C76353;
  v300 = v299 ^ __ROR8__(STACK[0x32E8], 61);
  v301 = (__ROR8__(v299, 8) + v300) ^ 0x38C8B16AE7056877;
  v302 = v301 ^ __ROR8__(v300, 61);
  v303 = __ROR8__(v301, 8);
  v304 = (((v303 + v302) | 0xEFA218A1D0ADC30CLL) - ((v303 + v302) | 0x105DE75E2F523CF3) + 0x105DE75E2F523CF3) ^ 0xA22A9DC5C68265DLL;
  v305 = v304 ^ __ROR8__(v302, 61);
  v306 = (__ROR8__(v304, 8) + v305) ^ 0xE1A1FD5BD155F97ALL;
  v307 = v306 ^ __ROR8__(v305, 61);
  v308 = (__ROR8__(v306, 8) + v307) ^ 0xDA604B0C03A2BF99;
  v309 = v308 ^ __ROR8__(v307, 61);
  v310 = __ROR8__(v308, 8);
  v311 = (((v310 + v309) | 0x7987C8F8C0C88152) - ((v310 + v309) | 0x867837073F377EADLL) - 0x7987C8F8C0C88153) ^ 0x83B22A350BF6B095;
  v312 = v311 ^ __ROR8__(v309, 61);
  v313 = (__ROR8__(v311, 8) + v312) ^ 0xD2F00CE620E5D3AELL;
  v314 = v313 ^ __ROR8__(v312, 61);
  v315 = __ROR8__(v313, 8);
  LODWORD(v313) = (((((2 * (v315 + v314)) | 0xF1AD53B45E211EF8) - (v315 + v314) + 0x7295625D0EF7084) ^ 0xCA5A2EB8160FA07) >> STACK[0x3B10]) ^ LODWORD(STACK[0x3B1C]);
  v316 = ((v313 ^ 0xFFFFFFF8) + 61) ^ ((v313 ^ 0xFFFFFFF6) + 51) ^ ((v313 ^ 0xE) - 53);
  v317 = (((STACK[0x32F8] + STACK[0x4FE0]) | 0x594730BA335E1D3ELL) - ((STACK[0x32F8] + STACK[0x4FE0]) | 0xA6B8CF45CCA1E2C1) - 0x594730BA335E1D3FLL) ^ 0xE1CF316ED2997E6DLL;
  v318 = v317 ^ __ROR8__(STACK[0x32F8], 61);
  v319 = __ROR8__(v317, 8);
  v320 = (v319 + v318 - ((2 * (v319 + v318)) & 0x90DE523894EB31D6) - 0x3790D6E3B58A6715) ^ 0xF0A79876AD70F09CLL ^ __ROR8__(v318, 61);
  v321 = (__ROR8__((v319 + v318 - ((2 * (v319 + v318)) & 0x90DE523894EB31D6) - 0x3790D6E3B58A6715) ^ 0xF0A79876AD70F09CLL, 8) + v320) ^ 0xE580B17D8CC5E551;
  v322 = v321 ^ __ROR8__(v320, 61);
  v323 = (__ROR8__(v321, 8) + v322) ^ 0xE1A1FD5BD155F97ALL;
  v324 = v323 ^ __ROR8__(v322, 61);
  v325 = (__ROR8__(v323, 8) + v324) ^ 0xDA604B0C03A2BF99;
  v326 = v325 ^ __ROR8__(v324, 61);
  v327 = __ROR8__(v325, 8);
  v328 = v327 + v326 - ((2 * (v327 + v326)) & 0xFFFCA0A6AA08AF3ALL);
  v329 = STACK[0x52B0];
  v330 = ((v329 | 0x8EB433BF99477DEDLL) - (v329 | 0x714BCC4066B88212) + 0x714BCC4066B88212) ^ 0xB67C82D57E42159ALL ^ STACK[0x5328];
  v331 = (__ROR8__(((v329 | 0x8EB433BF99477DEDLL) - (v329 | 0x714BCC4066B88212) + 0x714BCC4066B88212) ^ 0xB67C82D57E42159ALL, 8) + v330) ^ 0xE580B17D8CC5E551;
  v332 = v331 ^ __ROR8__(v330, 61);
  v333 = (__ROR8__(v331, 8) + v332) ^ 0xE1A1FD5BD155F97ALL;
  v334 = __ROR8__(v333, 8);
  v335 = v333 ^ __ROR8__(v332, 61);
  v336 = (v334 + v335) ^ 0xDA604B0C03A2BF99;
  v337 = v336 ^ __ROR8__(v335, 61);
  v338 = __ROR8__(v336, 8);
  v339 = (((2 * (v338 + v337)) & 0x772949C58074C3F0) - (v338 + v337) - 0x3B94A4E2C03A61F9) ^ 0x3E5EB9D0F4FBAFC0;
  v340 = v339 ^ __ROR8__(v337, 61);
  v341 = __ROR8__(v339, 8);
  v342 = (((2 * (STACK[0x32F0] + STACK[0x5090])) | 0xF248B5ECC2CB9094) - (STACK[0x32F0] + STACK[0x5090]) - 0x79245AF66165C84ALL) ^ 0xC1AC5B2280A2AB19;
  v343 = v342 ^ __ROR8__(STACK[0x32F0], 61);
  v344 = __ROR8__(v342, 8);
  v345 = (((v344 + v343) | 0x87B5161B2ACD7BBLL) - ((v344 + v343) | 0xF784AE9E4D532844) - 0x87B5161B2ACD7BCLL) ^ 0x30B3E00B55A9BFCCLL;
  v346 = v345 ^ __ROR8__(v343, 61);
  v347 = (__ROR8__(v345, 8) + v346) ^ 0xE580B17D8CC5E551;
  v348 = v347 ^ __ROR8__(v346, 61);
  v349 = __ROR8__(v347, 8);
  v350 = (v328 + 0x7FFE50535504579DLL) ^ 0x85CBB29E9E3A665ALL;
  v351 = v350 ^ __ROR8__(v326, 61);
  v352 = (__ROR8__(v350, 8) + v351) ^ 0xD2F00CE620E5D3AELL;
  v353 = v352 ^ __ROR8__(v351, 61);
  v354 = (((2 * (v341 + v340)) | 0x666DDA15B32CA312) - (v341 + v340) - 0x3336ED0AD9965189) ^ 0xE1C6E1ECF9738227;
  v355 = (((v349 + v348) | 0x6AD6C0AA187CE5) - ((v349 + v348) | 0xFF95293F55E7831ALL) - 0x6AD6C0AA187CE6) ^ 0xE1CB2B9B7B4D859FLL;
  v356 = v355 ^ __ROR8__(v348, 61);
  v357 = (__ROR8__(v355, 8) + v356) ^ 0xDA604B0C03A2BF99;
  v358 = v357 ^ __ROR8__(v356, 61);
  v359 = __ROR8__(v357, 8);
  v360 = __ROR8__(v354, 8) + (v354 ^ __ROR8__(v340, 61));
  v361 = (v359 + v358 - ((2 * (v359 + v358)) & 0x214569460F7DAD0ELL) - 0x6F5D4B5CF8412979) ^ 0x6A97566ECC80E740;
  v362 = v361 ^ __ROR8__(v358, 61);
  v363 = __ROR8__(v361, 8);
  v364 = __ROR8__(v352, 8) + v353;
  v365 = v360 - ((2 * v360) & 0x99A0A25A745A649CLL);
  v366 = ((v363 + v362) | 0x91D5FB5E69C0849ELL) - ((v363 + v362) | 0x6E2A04A1963F7B61);
  v367 = STACK[0x5740];
  LODWORD(STACK[0x5700]) = 2 * STACK[0x5740];
  v368 = *(STACK[0x53A0] + (STACK[0x5348] & (((((2 * v367) & 0x51411560) + (v367 ^ 0x28A08AB2)) & 0xFFFFFFF8) + 1369157224)));
  v369 = (v368 + STACK[0x5780]) ^ 0xB88801D4E1C76353;
  v370 = v369 ^ __ROR8__(v368, 61);
  v371 = __ROR8__(v369, 8);
  v372 = (v371 + v370 - ((2 * (v371 + v370)) & 0xE1982E5BFE851ADALL) + 0x70CC172DFF428D6DLL) ^ 0x4804A6471847E51ALL;
  v373 = v372 ^ __ROR8__(v370, 61);
  v374 = __ROR8__(v372, 8);
  v375 = *(STACK[0x5250] + v1);
  v376 = (v374 + v373 - ((2 * (v374 + v373)) & 0x620B700CD5ADED9ALL) + 0x3105B8066AD6F6CDLL) ^ 0xD485097BE613139CLL;
  v377 = v376 ^ __ROR8__(v373, 61);
  v378 = __ROR8__(v376, 8);
  v379 = (v375 + STACK[0x5258] - ((2 * (v375 + STACK[0x5258])) & 0xBFCA0A1ED38ECE88) + 0x5FE5050F69C76744) ^ 0xE76D04DB88000417;
  v380 = v379 ^ __ROR8__(v375, 61);
  v381 = __ROR8__(v379, 8);
  v382 = (((v381 + v380) | 0x71F0B35E6F2D905DLL) - ((v381 + v380) | 0x8E0F4CA190D26FA2) - 0x71F0B35E6F2D905ELL) ^ 0x493802348828F82ALL;
  v383 = v382 ^ __ROR8__(v380, 61);
  v384 = (__ROR8__(v382, 8) + v383) ^ 0xE580B17D8CC5E551;
  v385 = v384 ^ __ROR8__(v383, 61);
  v386 = (__ROR8__(v384, 8) + v385) ^ 0xE1A1FD5BD155F97ALL;
  v387 = v386 ^ __ROR8__(v385, 61);
  v388 = __ROR8__(v386, 8);
  v389 = (v378 + v377 - ((2 * (v378 + v377)) & 0x1302CFF04C82E82) - 0x7F67E9807D9BE8BFLL) ^ 0x6139EB245331EE3BLL;
  v390 = v389 ^ __ROR8__(v377, 61);
  v391 = (__ROR8__(v389, 8) + v390) ^ 0xDA604B0C03A2BF99;
  v392 = v391 ^ __ROR8__(v390, 61);
  v393 = __ROR8__(v391, 8);
  v394 = (((v388 + v387) ^ 0x912750D520EB0B79 | 0xE9BB4980B5AB0CEBLL) - ((v388 + v387) ^ 0x912750D520EB0B79 | 0x1644B67F4A54F314) + 0x1644B67F4A54F314) ^ 0xA2FC525996E2B80BLL;
  v395 = v394 ^ __ROR8__(v387, 61);
  v396 = __ROR8__(v394, 8);
  v397 = (((2 * (v396 + v395)) & 0x26BAA85214420706) - (v396 + v395) + 0x6CA2ABD6F5DEFC7CLL) ^ 0x9697491B3EE0CDBBLL;
  v398 = v397 ^ __ROR8__(v395, 61);
  v399 = __ROR8__(v397, 8);
  v400 = (((2 * (v393 + v392)) & 0xCEF1F30E034026D8) - (v393 + v392) + 0x18870678FE5FEC93) ^ 0xE2B2E4B53561DD54;
  v401 = v400 ^ __ROR8__(v392, 61);
  v402 = (__ROR8__(v400, 8) + v401) ^ 0xD2F00CE620E5D3AELL;
  v403 = (((2 * (v399 + v398)) | 0x2BAAFD0A21A0E53ALL) - (v399 + v398) + 0x6A2A817AEF2F8D63) ^ 0x472572633035A133;
  v404 = *(STACK[0x5298] + (LODWORD(STACK[0x5140]) & (STACK[0x5168] + 2050767130)));
  v405 = __ROR8__((v366 + 0x6E2A04A1963F7B61) ^ 0x4325F7B849255730, 8) + ((v366 + 0x6E2A04A1963F7B61) ^ 0x4325F7B849255730 ^ __ROR8__(v362, 61));
  v406 = (v404 + STACK[0x5158]) ^ 0xB88801D4E1C76353;
  v407 = v406 ^ __ROR8__(v404, 61);
  v408 = (__ROR8__(v406, 8) + v407) ^ 0x38C8B16AE7056877;
  v409 = v408 ^ __ROR8__(v407, 61);
  v410 = v405 - ((2 * v405) & 0xD3CA7EEF5BD1BEECLL);
  v411 = (__ROR8__(v408, 8) + v409) ^ 0xE580B17D8CC5E551;
  v412 = v411 ^ __ROR8__(v409, 61);
  v413 = __ROR8__(v402, 8) + (v402 ^ __ROR8__(v401, 61));
  v414 = (__ROR8__(v411, 8) + v412) ^ 0xE1A1FD5BD155F97ALL;
  v415 = v414 ^ __ROR8__(v412, 61);
  v416 = __ROR8__(v414, 8);
  v417 = __ROR8__(v403, 8) + (v403 ^ __ROR8__(v398, 61));
  v418 = (((v416 + v415) | 0xD6DDFBBB108BA55ELL) - ((v416 + v415) | 0x29220444EF745AA1) + 0x29220444EF745AA1) ^ 0xCBDB0B713291AC7;
  v419 = v418 ^ __ROR8__(v415, 61);
  v420 = (__ROR8__(v418, 8) + v419) ^ 0xFA35E2CDCB3E31C7;
  v421 = v420 ^ __ROR8__(v419, 61);
  v422 = __ROR8__(v420, 8);
  v423 = (v422 + v421 - ((2 * (v422 + v421)) & 0x2A761ABBB606BEB6) + 0x153B0D5DDB035F5BLL) ^ 0xC7CB01BBFBE68CF5;
  v424 = __ROR8__(v423, 8) + (v423 ^ __ROR8__(v421, 61));
  v425 = *(STACK[0x5298] + (LODWORD(STACK[0x5130]) & STACK[0x5440]));
  v426 = (((v425 + STACK[0x54C0]) | 0x513BE2B23231F014) - ((v425 + STACK[0x54C0]) | 0xAEC41D4DCDCE0FEBLL) - 0x513BE2B23231F015) ^ 0xE9B3E366D3F69347;
  v427 = v426 ^ __ROR8__(v425, 61);
  v428 = __ROR8__(v426, 8);
  v429 = (((v428 + v427) | 0xE154BDCAA56587A4) - ((v428 + v427) | 0x1EAB42355A9A785BLL) + 0x1EAB42355A9A785BLL) ^ 0xD99C0CA04260EFD3;
  v430 = v429 ^ __ROR8__(v427, 61);
  v431 = __ROR8__(v429, 8);
  v432 = (((2 * (v431 + v430)) | 0x88E5FA5A2389C350) - (v431 + v430) + 0x3B8D02D2EE3B1E58) ^ 0x21F24C509D0104F9;
  v433 = v432 ^ __ROR8__(v430, 61);
  v434 = (__ROR8__(v432, 8) + v433) ^ 0xE1A1FD5BD155F97ALL;
  v435 = v434 ^ __ROR8__(v433, 61);
  v436 = __ROR8__(v434, 8);
  v437 = (v424 | 0xD57D5878D4D60239) - (v424 | 0x2A82A7872B29FDC6);
  v438 = (v436 + v435 - ((2 * (v436 + v435)) & 0x1C00546A397FD9D0) + 0xE002A351CBFECE8) ^ 0xD46061391F1D5371;
  v439 = v438 ^ __ROR8__(v435, 61);
  v440 = __ROR8__(v438, 8);
  v441 = (((v440 + v439) | 0xE651872751BFD1EFLL) - ((v440 + v439) | 0x19AE78D8AE402E10) + 0x19AE78D8AE402E10) ^ 0x1C6465EA9A81E028;
  v442 = v441 ^ __ROR8__(v439, 61);
  v443 = (__ROR8__(v441, 8) + v442) ^ 0xD2F00CE620E5D3AELL;
  v444 = *(STACK[0x5118] + (LODWORD(STACK[0x5188]) & ((STACK[0x5358] ^ 0xA22FC399) - 670272127 + ((2 * STACK[0x5358]) & 0x445F8730))));
  v445 = __ROR8__(v443, 8) + (v443 ^ __ROR8__(v442, 61));
  v446 = (v444 + STACK[0x5200]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v444, 61);
  v447 = __ROR8__((v444 + STACK[0x5200]) ^ 0xB88801D4E1C76353, 8);
  v448 = (((2 * (v447 + v446)) | 0x60F37C5C605960D2) - (v447 + v446) + 0x4F8641D1CFD34F97) ^ 0x88B10F44D729D81ELL;
  v449 = v448 ^ __ROR8__(v446, 61);
  v450 = __ROR8__(v448, 8);
  v451 = (((2 * (v450 + v449)) & 0xD04915CE5D1A15C0) - (v450 + v449) - 0x68248AE72E8D0AE1) ^ 0x725BC4655DB7104ELL;
  v452 = v451 ^ __ROR8__(v449, 61);
  v453 = __ROR8__(v451, 8);
  v454 = (v453 + v452 - ((2 * (v453 + v452)) & 0x54F169F43FE1E6DALL) + 0x2A78B4FA1FF0F36DLL) ^ 0xCBD949A1CEA50A17;
  v455 = v454 ^ __ROR8__(v452, 61);
  v456 = (__ROR8__(v454, 8) + v455) ^ 0xDA604B0C03A2BF99;
  v457 = v456 ^ __ROR8__(v455, 61);
  v458 = __ROR8__(v456, 8);
  v459 = STACK[0x55D0];
  v460 = *(STACK[0x5590] + (LODWORD(STACK[0x55A0]) & (((2 * v3) & 0x74AA6650) - 1075378707 + (((LODWORD(STACK[0x55D0]) ^ 0x2B3FDA6E) - 1894410582) ^ v3))));
  v461 = __ROR8__((((2 * (v458 + v457)) & 0x7A2FB1BB5D7303C4) - (v458 + v457) - 0x3D17D8DDAEB981E3) ^ 0x38DDC5EF9A784FDALL, 8);
  v462 = (((2 * (v458 + v457)) & 0x7A2FB1BB5D7303C4) - (v458 + v457) - 0x3D17D8DDAEB981E3) ^ 0x38DDC5EF9A784FDALL ^ __ROR8__(v457, 61);
  v463 = (((2 * (v460 + v7)) & 0xF7F253FA0BB4546) - (v460 + v7) + 0x78406D602FA25D5CLL) ^ 0xC0C86CB4CE653E0FLL;
  v464 = v463 ^ __ROR8__(v460, 61);
  v465 = (__ROR8__(v463, 8) + v464) ^ 0x38C8B16AE7056877;
  v466 = v465 ^ __ROR8__(v464, 61);
  v467 = __ROR8__(v465, 8) + v466;
  v468 = (v467 - ((2 * v467) & 0x1663C25819C87048) - 0x74CE1ED3F31BC7DCLL) ^ 0x6EB150518021DD75;
  v469 = v468 ^ __ROR8__(v466, 61);
  v470 = __ROR8__(v468, 8);
  v471 = __ROR8__((v461 + v462) ^ 0xD2F00CE620E5D3AELL, 8) + ((v461 + v462) ^ 0xD2F00CE620E5D3AELL ^ __ROR8__(v462, 61));
  v472 = (((v470 + v469) | 0x3481DE5C201BA265) - ((v470 + v469) | 0xCB7E21A3DFE45D9ALL) - 0x3481DE5C201BA266) ^ 0xD5202307F14E5B1FLL;
  v473 = v472 ^ __ROR8__(v469, 61);
  v474 = __ROR8__(v472, 8);
  v475 = (((2 * (v474 + v473)) & 0xFF764AA2BF8F3634) - (v474 + v473) + 0x44DAAEA03864E5) ^ 0xDA2491A2A39ADB7CLL;
  v476 = v475 ^ __ROR8__(v473, 61);
  v477 = (__ROR8__(v475, 8) + v476) ^ 0xFA35E2CDCB3E31C7;
  v478 = v477 ^ __ROR8__(v476, 61);
  v479 = (__ROR8__(v477, 8) + v478) ^ 0xD2F00CE620E5D3AELL;
  v480 = v479 ^ __ROR8__(v478, 61);
  v481 = __ROR8__(v479, 8);
  v482 = ((2 * (v471 ^ 0x63BBB17243C732E3)) | 0x2E3049F999A936A6) - (v471 ^ 0x63BBB17243C732E3);
  v483 = v481 + v480;
  v484 = v24;
  LODWORD(STACK[0x5230]) = LODWORD(STACK[0x5580]) + 69;
  LODWORD(STACK[0x4F70]) = LODWORD(STACK[0x56E0]) - 22;
  LODWORD(STACK[0x4FF0]) = LODWORD(STACK[0x56F0]) ^ ((STACK[0x5560] ^ 0xF4730B31AE70757BLL) >> STACK[0x54B0]);
  LODWORD(STACK[0x54E0]) = LODWORD(STACK[0x5398]) ^ ((STACK[0x5530] ^ 0xF4730B31AE70757BLL) >> STACK[0x5390]);
  LODWORD(STACK[0x4F78]) = LODWORD(STACK[0x52F0]) ^ (((STACK[0x5520] - 0x14FF9A8FC95689AELL) ^ 0xE08C91BE6726FCD5) >> STACK[0x52D0]);
  LODWORD(STACK[0x5590]) = LODWORD(STACK[0x54F0]) - 8;
  LODWORD(STACK[0x5560]) = LODWORD(STACK[0x50C8]) ^ ((STACK[0x54D0] ^ 0xF4730B31AE70757BLL) >> STACK[0x50C0]);
  LODWORD(STACK[0x5530]) = LODWORD(STACK[0x4F48]) ^ ((STACK[0x53E8] ^ 0xF4730B31AE70757BLL) >> STACK[0x4F10]);
  LODWORD(STACK[0x5120]) = LODWORD(STACK[0x4E80]) ^ ((STACK[0x53D0] ^ 0xF4730B31AE70757BLL) >> STACK[0x4EC8]);
  LODWORD(STACK[0x5520]) = LODWORD(STACK[0x4B70]) ^ ((v264 ^ 0xF4730B31AE70757BLL) >> STACK[0x4B68]);
  LODWORD(STACK[0x5248]) = v266 + 99;
  LODWORD(STACK[0x55D0]) = v296 - 42;
  LODWORD(STACK[0x5550]) = v298 - 36;
  LODWORD(STACK[0x4F98]) = v316 - 84;
  LODWORD(STACK[0x5310]) = LODWORD(STACK[0x5408]) ^ ((v364 ^ 0xF4730B31AE70757BLL) >> STACK[0x53A8]);
  LODWORD(STACK[0x5270]) = LODWORD(STACK[0x4AC8]) ^ (((v365 + 0x4CD0512D3A2D324ELL) ^ 0xB8A35A1C945D4735) >> STACK[0x4A68]);
  LODWORD(STACK[0x55A0]) = LODWORD(STACK[0x5790]) ^ (((v410 - 0x161AC0885217208ALL) ^ 0x1D9634460398AA0DLL) >> STACK[0x5088]);
  LODWORD(STACK[0x54F0]) = LODWORD(STACK[0x5670]) ^ ((v413 ^ 0xF4730B31AE70757BLL) >> STACK[0x53F8]);
  LODWORD(STACK[0x5370]) = LODWORD(STACK[0x5288]) ^ ((v417 ^ 0xF4730B31AE70757BLL) >> STACK[0x5260]);
  LODWORD(STACK[0x5320]) = LODWORD(STACK[0x5210]) ^ (((v437 + 0x2A82A7872B29FDC6) ^ 0x210E53497AA67742) >> STACK[0x5178]);
  LODWORD(STACK[0x5380]) = LODWORD(STACK[0x5620]) ^ ((v445 ^ 0xF4730B31AE70757BLL) >> STACK[0x5600]);
  LODWORD(STACK[0x54D0]) = LODWORD(STACK[0x51A0]) ^ (((v482 - 0x171824FCCCD49B53) ^ 0x80D09EBF2163DCCBLL) >> STACK[0x5190]);
  LODWORD(STACK[0x51F8]) = LODWORD(STACK[0x5108]) ^ ((v483 ^ 0xF4730B31AE70757BLL) >> STACK[0x5110]);
  v485 = *(STACK[0x57D8] + 8 * ((506 * v484) ^ v459));
  STACK[0x52F8] = 34;
  LODWORD(STACK[0x5368]) = 194;
  return v485(LODWORD(STACK[0x52A0]), 354021940);
}

uint64_t sub_10034283C()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 20994)))();
  STACK[0x5BE0] = 0;
  return (*(v1 + 8 * v0))(v2);
}