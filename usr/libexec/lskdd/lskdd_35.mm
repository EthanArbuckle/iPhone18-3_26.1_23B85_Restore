uint64_t sub_100A73E60()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * ((v0 ^ 0xE90) + 9607)))();
  STACK[0x7820] = 0;
  return (*(v1 + 8 * (v0 ^ 0xE90)))(v2);
}

uint64_t sub_100A73ED8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *a5 = *v5;
  a2[113] = v5[1];
  a2[114] = v5[2];
  a2[115] = v5[3];
  a2[116] = v5[4];
  a2[117] = v5[5];
  a2[118] = v5[6];
  a2[119] = v5[7];
  a2[120] = v5[8];
  a2[121] = v5[9];
  a2[122] = v5[10];
  a2[123] = v5[11];
  a2[124] = v5[12];
  a2[125] = v5[13];
  a2[126] = v5[14];
  a2[127] = v5[15];
  return (*(v7 + 8 * ((((v6 ^ 0xA1D2C469) == 1361071760) * ((v6 ^ 0xA1D2C469) + 1580031527)) ^ ((v6 ^ 0xA1D2C469) + 1580022743))))();
}

uint64_t sub_100A74584()
{
  *(v4 + 1667) = v2;
  LODWORD(STACK[0x1DAC]) = v0;
  if (v2)
  {
    v6 = 1;
  }

  else
  {
    v6 = v0 >= v1 + ((v3 - 27939436) & 0x1AA1E9Fu) - 1167;
  }

  v7 = v6;
  return (*(v5 + 8 * ((55 * v7) ^ v3)))();
}

uint64_t sub_100A773DC@<X0>(int a1@<W0>, int a2@<W6>, int a3@<W8>)
{
  LODWORD(STACK[0x3558]) = 0;
  v5 = STACK[0x3AD0] ^ STACK[0x37D0];
  v6 = STACK[0x3AE8] ^ STACK[0x35A8];
  STACK[0x39C8] = 2414 * (a3 ^ 0x21FAu);
  v7 = STACK[0x3AE0];
  v8 = STACK[0x3578] ^ (v6 >> 8);
  v9 = BYTE4(v5) ^ 0x9A ^ LODWORD(STACK[0x3540]);
  v10 = (LODWORD(STACK[0x3538]) ^ HIDWORD(v6));
  v11 = *(STACK[0x3AE0] + 4647 * (BYTE6(v5) ^ 0xB8) + 9544938 - (((1266205 * (4647 * (BYTE6(v5) ^ 0xB8u) + 9544938)) >> 32) >> 1) * a1) - 87;
  STACK[0x39A0] = v8;
  LODWORD(STACK[0x3368]) = v3;
  v12 = 4647 * v9 + 25186740;
  v13 = 4647 * ((v8 + 111) ^ 0x1C) + 4767822;
  v14 = STACK[0x3568] ^ v5;
  v15 = v12 - (((1266205 * v12) >> 32) >> 1) * a1;
  v16 = (v6 >> ((110 * (a3 ^ 0xFA)) ^ 0x32u)) ^ LODWORD(STACK[0x35D0]);
  v17 = STACK[0x3570] ^ (v5 >> 16);
  v18 = STACK[0x35D8] ^ (v6 >> 16);
  v19 = (*(v7 + v15) ^ 0xFFFFFFC3) + 85;
  v20 = STACK[0x35C8] ^ v6;
  v21 = STACK[0x3550] ^ (v5 >> 24);
  v22 = STACK[0x3588];
  v23 = ((v11 ^ 0xFFFFFFFB) + 85) ^ LODWORD(STACK[0x3548]);
  v24 = *(v7 + v13 - 6784 * (((1266205 * v13) >> 32) >> 1)) ^ 0xFFFFFFE3;
  LODWORD(STACK[0x3498]) = (v24 >> 3) | (32 * v24);
  v25 = *(v4 + 8 * a3);
  LODWORD(STACK[0x39D0]) = 1;
  STACK[0x3A48] = v17;
  LODWORD(STACK[0x33C0]) = v17;
  STACK[0x3AA0] = v22 ^ (v6 >> 24);
  STACK[0x3A68] = v21;
  LODWORD(STACK[0x3A70]) = v19;
  STACK[0x3AA8] = v10;
  LODWORD(STACK[0x39E0]) = v16;
  STACK[0x3A78] = v18;
  LODWORD(STACK[0x37D8]) = 1;
  STACK[0x3AD0] = STACK[0x3A90];
  STACK[0x3AC8] = v20;
  STACK[0x3A50] = v14;
  STACK[0x3A80] = a2 ^ HIBYTE(v5);
  STACK[0x39D8] = v3 ^ (v5 >> 40);
  STACK[0x3A58] = v23;
  return v25();
}

uint64_t sub_100A7761C()
{
  v2 = 16843009 * *(v1 - 140);
  v3 = *(v1 - 252);
  *(v1 - 136) = v2;
  LODWORD(STACK[0x2C0]) = v3 ^ v2;
  v4 = LODWORD(STACK[0x37C]) ^ LODWORD(STACK[0x434]) ^ LODWORD(STACK[0x360]) ^ (LODWORD(STACK[0x404]) - LODWORD(STACK[0x430]));
  LODWORD(STACK[0x434]) = LODWORD(STACK[0x43C]) - (LODWORD(STACK[0x27C]) ^ LODWORD(STACK[0x254]) ^ (LODWORD(STACK[0x238]) + 1514215609));
  LODWORD(STACK[0x244]) = LODWORD(STACK[0x44C]) ^ 0xEEB80CD8;
  LODWORD(STACK[0x430]) = LODWORD(STACK[0x438]) ^ 0x82F1F0BF;
  LODWORD(STACK[0x404]) = *(v1 - 248) ^ 0x7C8001F;
  LODWORD(STACK[0x43C]) = *(v1 - 256) ^ 0xF6BBB594;
  LODWORD(STACK[0x3D0]) = v4 + LODWORD(STACK[0x248]);
  *(v1 - 252) = LODWORD(STACK[0x240]) + *(v1 - 240);
  v5 = *(v1 - 128) ^ LODWORD(STACK[0x3F8]) ^ LODWORD(STACK[0x218]) ^ LODWORD(STACK[0x24C]) ^ LODWORD(STACK[0x408]);
  LODWORD(STACK[0x27C]) = LODWORD(STACK[0x21C]) + LODWORD(STACK[0x234]);
  LODWORD(STACK[0x248]) = v5;
  *(v1 - 240) = v5 ^ 0x79E1DAEA;
  return (*(*(v1 - 120) + 8 * v0))((v0 - 4549) ^ 0x1B98A9D2u, 0x992F57C3CFB18DA7);
}

uint64_t sub_100A77828()
{
  v3 = *(v1 + 720);
  v4 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v3 & 0xFFFFFFF8) - 1831847764)) & 0xFFFFFFFFFFFFFFF8));
  v5 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v6 = (0x553B2782D729ECAFLL - ((v5 + v4) | 0x553B2782D729ECAFLL) + ((v5 + v4) | 0xAAC4D87D28D61350)) ^ 0x686BE6D71727ABB4;
  v7 = v6 ^ __ROR8__(v4, 61);
  v8 = (__ROR8__(v6, 8) + v7) ^ 0x65F254DD188DB4FCLL;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0x6FF046966119128DLL;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0xA1B29DC5D776132BLL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ v2;
  v15 = __ROR8__(v14, 8);
  v16 = v14 ^ __ROR8__(v13, 61);
  v17 = (v15 + v16) ^ 0xD8C7B31FCA19D9DELL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (((2 * (v19 + v18)) & 0x2AB50D6A9E3376FALL) - (v19 + v18) - 0x155A86B54F19BB7ELL) ^ 0xBEF078643A57870DLL;
  v21 = 5621 * ((((__ROR8__(v20, 8) + (v20 ^ __ROR8__(v18, 61))) ^ 0x6F4F60BC0E025EE0) >> (8 * (v3 & 7u))) ^ *(v1 + 295)) + 32028458;
  *(STACK[0xDCB8] + 1138) = *(STACK[0xDCB8] + v21 - 6152 * (((89362129 * v21) >> 32) >> 7));
  v22 = *(v1 + 712) + 25;
  *(v1 + 728) = v22;
  *(v1 + 296) = v22;
  v23 = STACK[0x57D8];
  *(v1 + 280) = *(STACK[0x57D8] + 8 * (v0 + 8983));
  return (*(v23 + 8 * (*(v1 + 3780) + 8890)))();
}

uint64_t sub_100A77A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v8 = STACK[0x5790];
  v9 = *(STACK[0xFE78] + a5 % (LODWORD(STACK[0x5790]) - 6336));
  v10 = *(STACK[0xFE70] + 4 * ((2717 * (v9 | ((v9 < 0x1C) << 8)) + 18741866) % 0x2240));
  v11 = 3903 * (((v10 ^ 0xAC8E21A5) - 1427128326) ^ ((v10 ^ 0x59965751) + 1610074382) ^ ((v10 ^ 0xF5187605) - 210114470)) - 1242895637;
  v12 = 3903 * (((HIBYTE(v10) ^ 0xDD4ED18C) + 860548330) ^ ((HIBYTE(v10) ^ 0x8CB7FB0) - 422624554) ^ ((HIBYTE(v10) ^ 0xD585AE70) + 998347542)) + 765240935;
  LOBYTE(v10) = *(STACK[0xFE78] + 3903 * (BYTE1(v10) ^ a6) + 4008381 - 5896 * (((1456909 * (3903 * (BYTE1(v10) ^ a6) + 4008381)) >> 32) >> 1));
  v13 = *(STACK[0xFE78] + 3903 * (BYTE2(v10) ^ 0xC5) + 4008381 - 5896 * (((1456909 * (3903 * (BYTE2(v10) ^ 0xC5u) + 4008381)) >> 32) >> 1));
  v14 = *(STACK[0xFE78] + v12 % 0x1708);
  LOBYTE(v11) = *(STACK[0xFE78] + v11 % 0x1708);
  v15 = v13 & 0x6A ^ 0xC3;
  v16 = v14 & 0xF4 | 8;
  v17 = v10 & 0x42 ^ 0x77;
  v18 = (((v13 ^ (2 * ((v13 ^ a6) & (2 * ((v13 ^ a6) & (2 * ((v13 ^ a6) & (2 * ((v13 ^ a6) & (2 * ((v13 ^ 0x44) & (2 * ((v13 ^ 0x44) & 0xE ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15))) ^ 0x6A) << 8) | (((v14 ^ (2 * ((v14 ^ a6) & (2 * ((v14 ^ a6) & (2 * ((v14 ^ a6) & (2 * ((v14 ^ a6) & (2 * ((v14 ^ a6) & (2 * v16) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ 0xF4) << 16);
  v19 = v11 & 0xA0 ^ 0x66;
  LOBYTE(v11) = v11 ^ (2 * ((v11 ^ a6) & (2 * ((v11 ^ a6) & (2 * ((v11 ^ a6) & (2 * ((v11 ^ a6) & (2 * ((v11 ^ 0x44) & (2 * v19) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19));
  *(STACK[0xFE70] + 4 * (v6 % 0x2240)) = ((((((v10 ^ (2 * ((v10 ^ a6) & (2 * ((v10 ^ a6) & (2 * ((v10 ^ a6) & (2 * ((v10 ^ a6) & (2 * ((v10 ^ a6) & (2 * ((v10 ^ a6) & 0x26 ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0x18DD49) & ~v18 | v18 & 0xE72200) << 8) ^ 0xC818E4D6) & (v11 ^ 0xFFFFFF77) | v11 & 0x29) ^ 0x9C008B07;
  return (*(STACK[0x57D8] + 8 * ((23 * (v7 == 0)) ^ v8)))();
}

uint64_t sub_100A77E74@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v5 = (((v2 ^ 0x42AF3019) - 1118777369) ^ ((v2 ^ 0x391BB3F0) - 958116848) ^ ((v2 ^ 0x38079CE3) - 940023011)) - 911277758 + (((a1 ^ 0xA827F697) + 1473775977) ^ ((a1 ^ 0x8980ABA) - 144181946) ^ (((v3 + 854807364) ^ 0x2E0094D5) + (a1 ^ 0xE30CE327)));
  *(v4 - 120) = v5 ^ ((v5 ^ 0x327416C2) - 1883035116) ^ ((v5 ^ 0x274AF657) - 1694643577) ^ ((v5 ^ 0x6888DC04) - 717233962) ^ ((v5 ^ 0x3FFEFFBF) - 2109095057) ^ 0x1FBDC24;
  return (*(a2 + 8 * v3))();
}

uint64_t sub_100A77FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  v13 = v9 - 143113071;
  if (!v10)
  {
    v13 = -143113071 - a8 + v8;
  }

  LODWORD(STACK[0x10B0]) = v13;
  return (*(v12 + 8 * (a8 ^ 0x3A83 ^ ((v13 != ((v11 + a8 - 1) ^ 0x76E7869D)) * (a8 ^ (v11 + 1) ^ (v11 + 12))))))(a1, a2, a3, a4, a5, a6, a7, 2174730764);
}

uint64_t sub_100A78050(int a1)
{
  LODWORD(STACK[0x860]) = v5;
  LODWORD(STACK[0x90C]) = v2;
  LODWORD(STACK[0x8FC]) = v4;
  LODWORD(STACK[0x7D4]) = v1;
  LODWORD(STACK[0x824]) = a1;
  LODWORD(STACK[0x810]) = v7 + 80;
  v8 = (((a1 ^ 0x39488D58) - 961056088) ^ ((a1 ^ 0xE91710EA) + 384364310) ^ ((a1 ^ 0xBDAEA08A) + 1112629110)) + 103379927 + (((((v3 ^ 0x2C2AC24C) - 765147397) & 0x1F714FDD ^ *(STACK[0x720] + 88) ^ 0x18F7B92A) - 116832115) ^ ((*(STACK[0x720] + 88) ^ 0xDC9A271E) + 593877218) ^ ((*(STACK[0x720] + 88) ^ 0xB79DAD55) + 1214403243));
  v9 = (v8 ^ 0xC530C45C) & (2 * (v8 & 0xD5B90699)) ^ v8 & 0xD5B90699;
  v10 = ((2 * (v8 ^ 0xEC52C47C)) ^ 0x73D785CA) & (v8 ^ 0xEC52C47C) ^ (2 * (v8 ^ 0xEC52C47C)) & 0x39EBC2E4;
  v11 = v10 ^ 0x8284225;
  v12 = (v10 ^ 0x31C000C0) & (4 * v9) ^ v9;
  v13 = ((4 * v11) ^ 0xE7AF0B94) & v11 ^ (4 * v11) & 0x39EBC2E4;
  v14 = (v13 ^ 0x21AB0280) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0x1840C061)) ^ 0x9EBC2E50) & (v13 ^ 0x1840C061) ^ (16 * (v13 ^ 0x1840C061)) & 0x39EBC2E0;
  v16 = v14 ^ 0x39EBC2E5 ^ (v15 ^ 0x18A80200) & (v14 << 8);
  *(STACK[0x720] + 88) = v8 ^ (2 * ((v16 << 16) & 0x39EB0000 ^ v16 ^ ((v16 << 16) ^ 0x42E50000) & (((v15 ^ 0x2143C0A5) << 8) & 0x39EB0000 ^ 0x10290000 ^ (((v15 ^ 0x2143C0A5) << 8) ^ 0x6BC20000) & (v15 ^ 0x2143C0A5)))) ^ 0xCA5DBE6B;
  return (*(v6 + 8 * ((12049 * ((v3 ^ 0x2C2AC24C) == 1345515434)) ^ ((v3 ^ 0x2C2AC24C) - 741006502))))(435131604);
}

uint64_t sub_100A78328@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>)
{
  v24 = *(v13 + (v11 & (((v23 + v12) & 0xFFFFFFF8) - 103642729) & 0xFFFFFFFFFFFFFFF8));
  v25 = (__ROR8__((v23 + v12) & 0xFFFFFFFFFFFFFFF8, 8) + v24) ^ v14;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = ((((a9 + a1) ^ v17) & (2 * (v27 + v26))) - (v27 + v26) + a4) ^ a5;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v21;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v22 - ((v32 + v31) | v22) + ((v32 + v31) | a6)) ^ a7;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (a2 - ((v35 + v34) | a2) + ((v35 + v34) | a8)) ^ v15;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v16;
  v39 = __ROR8__(v38, 8);
  v40 = v38 ^ __ROR8__(v37, 61);
  *(v23 + v12) = (((__ROR8__((v39 + v40) ^ v18, 8) + ((v39 + v40) ^ v18 ^ __ROR8__(v40, 61))) ^ v20) >> (8 * ((v23 + v12) & 7))) ^ *(v9 + v10);
  return (*(a3 + 8 * ((15313 * (v10 + 1 == v19)) ^ a9)))(7374);
}

uint64_t sub_100A7843C@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X4>, uint64_t a4@<X7>, int a5@<W8>)
{
  v17 = a3 & 0x49BF8857 ^ 0x49B10810 ^ (a1 ^ 0x244EB56F) & (a3 ^ v14) | a3 & 0xF5DE01B7 ^ 0x900E0087 ^ (a3 ^ 0x920EC2C7) & (a4 ^ 0x982F3C8F);
  v18 = *(v6 + 4 * (*(v7 + (a5 + v13)) - 70));
  v19 = *(v8 + 4 * (a5 + v13)) + v17 + (((a2 ^ 0x49302201) - 1227891201) ^ ((a2 ^ 0xAB75DED2) + 1418338606) ^ ((a2 ^ 0x8FB4C1EB) + 1883979285)) - 1645729113 + (((v18 ^ 0xD2FB4977) + 755283593) ^ ((v18 ^ 0xF788C438) + 142031816) ^ ((v18 ^ 0xE230EC25) + 500110299));
  v20 = (v19 ^ 0x2EFB5126) & (2 * (v19 & 0x4CF31987)) ^ v19 & 0x4CF31987;
  v21 = ((2 * (v19 ^ 0x2F596220)) ^ 0xC754F74E) & (v19 ^ 0x2F596220) ^ (2 * (v19 ^ 0x2F596220)) & 0x63AA7BA6;
  v22 = v21 ^ 0x20AA08A1;
  v23 = (v21 ^ 0x43006204) & (4 * v20) ^ v20;
  v24 = ((4 * v22) ^ 0x8EA9EE9C) & v22 ^ (4 * v22) & 0x63AA7BA4;
  v25 = (v24 ^ 0x2A86A80) & (16 * v23) ^ v23;
  v26 = ((16 * (v24 ^ 0x61021123)) ^ 0x3AA7BA70) & (v24 ^ 0x61021123) ^ (16 * (v24 ^ 0x61021123)) & 0x63AA7BA0;
  v27 = v25 ^ 0x63AA7BA7 ^ (v26 ^ 0x22A23A00) & (v25 << 8);
  v28 = (v27 << 16) & 0x63AA0000 ^ v27 ^ ((v27 << 16) ^ 0x7BA70000) & (((v26 ^ 0x41084187) << 8) & 0x63AA0000 ^ 0x41800000 ^ (((v26 ^ 0x41084187) << 8) ^ 0x2A7B0000) & (v26 ^ 0x41084187));
  v29 = *(v9 + (a5 + v13));
  v30 = (v29 + 99500443) & 0x217 ^ 0x15FA8734 ^ ((v29 + 99500443) ^ (v10 + 996)) & (2 * ((v29 + 99500443) & 0x217));
  v31 = ((2 * ((v29 + 99500443) ^ v10)) ^ 0x2A050A68) & ((v29 + 99500443) ^ v10) ^ (2 * ((v29 + 99500443) ^ v10)) & STACK[0x75C];
  v32 = (((a1 ^ 0xC2B429CA) + 1028380214) ^ ((a1 ^ 0x2AB87022) - 716730402) ^ ((a1 ^ 0x85FD64D0) + 2046991152)) - 1847926456 + (((v19 ^ (2 * v28) ^ 0x4CE3EEC9) << (((v29 - 101) ^ ~(2 * (v31 & 0xAA ^ v30 ^ ((4 * v30) ^ 0x3A) & v31))) & 0x1E) << (((v29 - 101) & 1) == 0)) | ((v19 ^ (2 * v28) ^ 0x4CE3EEC9) >> (v12 - v29)));
  return (*(v11 + 8 * ((27266 * ((a5 + 1 + v13) < 0x20)) ^ v5)))(v32 ^ ((v32 ^ 0x427FEC5C) - 1637238860) ^ ((v32 ^ 0xB3DD5F1F) + 1875576049) ^ ((v32 ^ 0x2DB5A8AC) - 240913596) ^ ((v32 ^ 0xFFFEBFFF) + 602465297) ^ 0x4E189928, a1, a3, 602465297, a4, ((4 * v30) ^ 0xDA33FC3A) & v31, a3, a1);
}

uint64_t sub_100A78C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double *a6@<X5>, int a7@<W6>, uint64_t a8@<X8>, double a9@<D0>)
{
  *(a6 - 1) = a9;
  *a6 = a9;
  return (*(a8 + 8 * (((a5 == 0) * a7) ^ v9)))(a1, a2, a3, a4, a5 - 16, a6 + 2);
}

uint64_t sub_100A78E08@<X0>(char a1@<W8>)
{
  *STACK[0x450] = v4;
  v8 = (((v3 >> (11 - a1)) ^ v3) << 7) & 0x9D2C5680 ^ (v3 >> (11 - a1)) ^ v3;
  STACK[0x460] = (v8 << 15) & 0xEFC60000 ^ v8 ^ (((v8 << 15) & 0xEFC60000 ^ v8) >> 18) | 0xB9A7D9C9;
  *(v7 - 248) = -1457005198;
  *(v7 - 244) = v2 - 1366316126 + v1;
  LODWORD(STACK[0xED4]) = *STACK[0x440] - 631038935;
  v9 = 551690071 * ((~(v7 - 240) & 0x8E36BB0614194D7DLL | (v7 - 240) & 0x71C944F9EBE6B282) ^ 0xFFABE9C85AF41E2ALL);
  *(v5 + 1072) = v9 + v4;
  *(v5 + 1064) = -551690071 * ((~(v7 - 240) & 0x8E36BB0614194D7DLL | (v7 - 240) & 0x71C944F9EBE6B282) ^ 0xFFABE9C85AF41E2ALL);
  *(v7 - 236) = v9 ^ (v2 + 719771562) ^ 0xE15;
  *(v7 - 232) = ((v2 + 719771562) & 0xBC969DB4) - v9;
  *(v7 - 228) = v2 + 719771562 - v9;
  *(v7 - 224) = v9;
  *(v7 - 240) = (v2 + 1041169529) ^ v9;
  v10 = (*(v6 + 8 * (v2 + 2120268347)))(v7 - 240);
  return (*(v6 + 8 * *(v7 - 220)))(v10);
}

uint64_t sub_100A78F68()
{
  *v2 = (v4 ^ v1) * (v1 + 17);
  *(v2 - 1) = (v1 ^ 0xBB) * (v1 + 18);
  return (*(v5 + 8 * (((v3 == 0) | (2 * (v3 == 0))) ^ v0)))();
}

uint64_t sub_100A795C0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v10 = STACK[0x640] + 4 * ((v6 + 551 * v4) % 0x1D48u);
  v11 = *v9;
  v12 = *STACK[0x660];
  v13 = (v10 + *(v12 + (v11 & STACK[0x658])) + 673210726);
  v14 = *v7 ^ v8;
  v15 = (((((v5 - 992399177) & 0x3B26BFC3u) - 11606) * v4 % 0xA88) ^ 0xFFE7EFDCFFBEFBAFLL) + STACK[0x638] + ((2 * ((((v5 - 992399177) & 0x3B26BFC3u) - 11606) * v4 % 0xA88)) & 0x175E);
  v16 = (v15 + 4260945 + *(v12 + (v11 & STACK[0x648])) + a4);
  *(v15 - 0x458B393938DC15C4) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v16 & v14)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v13 & v14)) ^ *(v10 - 0x34EE34220E8AC3B8) ^ (-81 * v10) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v13 + 2) & v14)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v16 + 2) & v14)) ^ (76 * (v15 + 81)) ^ 0xB9;
  return (*(STACK[0x668] + 8 * ((193 * (v4 != 255)) ^ v5)))();
}

uint64_t sub_100A797AC(uint64_t a1, uint64_t a2, int a3)
{
  v6 = 5713;
  if (a3 == ((v3 + 277750095) & 0xEF71CF7C) - 19828)
  {
    v6 = 1066;
  }

  return (*(v4 + 8 * ((19 * (*(v5 + v6) == 104)) | v3)))();
}

uint64_t sub_100A79808@<X0>(int a1@<W1>, char a2@<W2>, unsigned int a3@<W3>, int a4@<W4>, char a5@<W5>, uint64_t a6@<X8>, int8x16_t a7@<Q0>, int8x16_t a8@<Q1>, int8x16_t a9@<Q2>, int8x16_t a10@<Q3>, int8x16_t a11@<Q4>, int32x4_t a12@<Q5>, int8x16_t a13@<Q6>, int32x4_t a14@<Q7>)
{
  v43 = ((((v17 + 1) << v20) & v21) + ((v17 + 1) ^ a1)) * v15;
  v44 = (((v18 + 4) & v21) + ((v17 + 2) ^ a1)) * v15;
  v45 = (((v18 + 6) & v21) + ((v17 + 3) ^ a1)) * v15;
  v46.i32[0] = ((((((v18 & v21) + (v17 ^ a1)) * v15) ^ v16) - (a2 & (2 * ((((v18 & v21) + (v17 ^ a1)) * v15) ^ v16))) + 105) ^ a5);
  v46.i32[1] = (((v43 ^ v16) - (a2 & (2 * (v43 ^ v16))) + 105) ^ a5);
  v47 = *(v14 + 8 * a4);
  v46.i32[2] = (((v44 ^ v16) - (a2 & (2 * (v44 ^ v16))) + 105) ^ a5);
  v48.i32[0] = *(v47 + 4 * (v46.i32[0] ^ a3));
  v48.i32[1] = *(v47 + 4 * (v46.i32[1] ^ a3));
  v48.i32[2] = *(v47 + 4 * (v46.i32[2] ^ a3));
  v48.i32[3] = *(v47 + 4 * ((((v45 ^ v16) - (a2 & (2 * (v45 ^ v16))) + 105) ^ a5) ^ a3));
  v46.i32[3] = (((v45 ^ v16) - (a2 & (2 * (v45 ^ v16))) + 105) ^ a5);
  v49 = veorq_s8(veorq_s8(veorq_s8(a7, v48), a8), v46);
  v50 = vandq_s8(v49, a9);
  v51 = vandq_s8(v49, a10);
  v52 = vaddq_s32(vaddq_s32(veorq_s8(veorq_s8(vaddq_s32(veorq_s8(v51, v29), v30), vaddq_s32(veorq_s8(v51, v31), v32)), vaddq_s32(veorq_s8(v51, v33), v34)), veorq_s8(veorq_s8(vaddq_s32(veorq_s8(v50, a11), a12), vaddq_s32(veorq_s8(v50, a13), a14)), vaddq_s32(veorq_s8(v50, v27), v28))), v35);
  v53 = veorq_s8(veorq_s8(veorq_s8(v52, vaddq_s32(veorq_s8(v52, v36), v37)), veorq_s8(vaddq_s32(veorq_s8(v52, v38), v39), vaddq_s32(veorq_s8(v52, v40), v41))), veorq_s8(vaddq_s32(veorq_s8(v52, v42), v25), v26));
  *(*(v23 - 200) + 4 * (((v18 & v21) + (v17 ^ a1)) * v15)) = v53.i32[0];
  *(a6 + 4 * (v43 & 0xFC)) = v53.i32[1];
  *(a6 + 4 * v44) = v53.i32[2];
  *(a6 + 4 * (v45 & 0xFE)) = v53.i32[3];
  return (*(v24 + 8 * ((26995 * (v19 == 0)) ^ v22)))();
}

uint64_t sub_100A79B00()
{
  LODWORD(STACK[0x1B4C]) = 37;
  v2 = (*(v1 + 8 * (v0 ^ 0x375B)))();
  v3 = (*(v1 + 8 * (v0 ^ 0x36F2)))(v2, LODWORD(STACK[0x1550]), &STACK[0x1B4C]);
  return (*(v1 + 8 * v0))(v3);
}

uint64_t sub_100A79C84@<X0>(int a1@<W8>)
{
  v5 = 469 * (*(v3 + (311 * v2 + 79140162) % ((a1 + 5138) ^ 0x48F6u)) ^ 0xEC) + 260295;
  v6 = v5 - 1888 * ((2274877 * v5) >> 32);
  v7 = v6 - 944;
  v8 = 311 * v2 + 79248390;
  v9 = v2 + 1;
  if (v6 < 0x3B0)
  {
    v7 = v6;
  }

  *(v3 + v8 % 0x3C2) = *(v4 + v7) ^ 0x9C;
  return (*(STACK[0x6D8] + 8 * ((27258 * (v9 == v1 + 16)) ^ a1)))();
}

uint64_t sub_100A79D58(uint64_t a1, int a2, char a3, char a4, unint64_t a5)
{
  v16 = STACK[0x57D8];
  STACK[0x97E0] = *(STACK[0x57D8] + 8 * v5);
  v17 = v9 + v6;
  STACK[0x7ED8] = v6 + 16;
  STACK[0x7C70] = a5;
  *v17 = a1;
  *(v17 + 8) = 0;
  v18 = *(v7 + 8 * (v14 ^ a2));
  v19 = *v18;
  v8[207] = **v18 ^ a4;
  v8[208] = v19[1] ^ (v14 + v10);
  v8[209] = v19[2] ^ a4;
  v8[210] = v19[3] ^ a4;
  v8[211] = v19[4] ^ (((v14 + v12) | a3) - 84);
  v8[212] = v19[5] ^ a4;
  v8[213] = v19[6] ^ a4;
  v8[214] = v19[7] ^ a4;
  v8[215] = v19[8] ^ a4;
  v8[216] = v19[9] ^ a4;
  v8[217] = v19[10] ^ a4;
  v8[218] = v19[11] ^ a4;
  v8[219] = v19[12] ^ a4;
  v8[220] = v19[13] ^ a4;
  v8[221] = v19[14] ^ a4;
  v8[222] = v19[15] ^ a4;
  v8[223] = v19[16] ^ a4;
  v8[224] = v19[17] ^ a4;
  v8[225] = v19[18] ^ a4;
  v8[226] = v19[19] ^ a4;
  v8[227] = v19[20] ^ a4;
  v8[228] = v19[21] ^ a4;
  v8[229] = v19[22] ^ a4;
  v8[230] = v19[23] ^ a4;
  v8[231] = v19[24] ^ a4;
  v8[232] = v19[25] ^ a4;
  v20 = *v18;
  v8[233] = v20[26] ^ a4;
  v8[234] = v20[27] ^ a4;
  v8[235] = v20[28] ^ a4;
  v21 = (*(v16 + 8 * (v14 ^ v11)))(0, &STACK[0x1D21B], &STACK[0x7C70]);
  *v13 = v21;
  if (v21)
  {
    v22 = STACK[0x7C70] == 1;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  return (*(v16 + 8 * ((v23 * v15) ^ v14)))();
}

uint64_t sub_100A7AA38(int a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v8 = v4 + v5 < a3;
  if (a3 < a4 != v4 + v5 < v7)
  {
    v8 = a3 < a4;
  }

  return (*(STACK[0x6D8] + 8 * ((v8 * v6) ^ a1)))();
}

uint64_t sub_100A7B01C()
{
  if (v0)
  {
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  LODWORD(STACK[0xCC98]) = v1;
  return (*(STACK[0x57D8] + 8 * (((STACK[0x51B8] - 1647) * v2) ^ LODWORD(STACK[0x254C]))))();
}

uint64_t sub_100A7B050@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W8>)
{
  v10 = *(STACK[0x57D8] + 8 * (a1 - 19708));
  LODWORD(STACK[0x5210]) = 3;
  LODWORD(STACK[0x52E0]) = STACK[0x2AFC];
  LODWORD(STACK[0x52D8]) = STACK[0x2B14];
  LODWORD(STACK[0x52E8]) = STACK[0x2AF8];
  LODWORD(STACK[0x49E8]) = STACK[0x5338];
  LODWORD(STACK[0x49E0]) = STACK[0x5540];
  LODWORD(STACK[0x49D8]) = STACK[0x5308];
  LODWORD(STACK[0x49D0]) = v4;
  LODWORD(STACK[0x49C8]) = STACK[0x52F8];
  LODWORD(STACK[0x49C0]) = STACK[0x54D0];
  LODWORD(STACK[0x49B8]) = STACK[0x5398];
  LODWORD(STACK[0x49B0]) = STACK[0x5310];
  LODWORD(STACK[0x49A8]) = STACK[0x52F0];
  LODWORD(STACK[0x49A0]) = STACK[0x5580];
  LODWORD(STACK[0x4998]) = STACK[0x5770];
  LODWORD(STACK[0x4990]) = STACK[0x5530];
  LODWORD(STACK[0x4988]) = STACK[0x5520];
  LODWORD(STACK[0x4980]) = STACK[0x54C0];
  LODWORD(STACK[0x4978]) = STACK[0x5680];
  LODWORD(STACK[0x4970]) = STACK[0x5350];
  LODWORD(STACK[0x4968]) = STACK[0x53B8];
  LODWORD(STACK[0x4960]) = STACK[0x55A0];
  LODWORD(STACK[0x4958]) = STACK[0x53A8];
  LODWORD(STACK[0x4950]) = STACK[0x5790];
  LODWORD(STACK[0x4948]) = STACK[0x55E0];
  LODWORD(STACK[0x4940]) = STACK[0x5760];
  LODWORD(STACK[0x4938]) = STACK[0x5300];
  LODWORD(STACK[0x4930]) = STACK[0x5730];
  LODWORD(STACK[0x4928]) = STACK[0x5630];
  LODWORD(STACK[0x4920]) = STACK[0x53E8];
  LODWORD(STACK[0x4918]) = STACK[0x5440];
  LODWORD(STACK[0x4910]) = STACK[0x54A0];
  LODWORD(STACK[0x4908]) = STACK[0x54B0];
  LODWORD(STACK[0x4900]) = STACK[0x53F8];
  LODWORD(STACK[0x48F8]) = STACK[0x5640];
  LODWORD(STACK[0x48F0]) = STACK[0x5370];
  LODWORD(STACK[0x48E8]) = STACK[0x55D0];
  LODWORD(STACK[0x48E0]) = STACK[0x57A0];
  LODWORD(STACK[0x48D8]) = v7;
  LODWORD(STACK[0x48D0]) = STACK[0x5660];
  LODWORD(STACK[0x48C8]) = STACK[0x53E0];
  LODWORD(STACK[0x48C0]) = STACK[0x53C0];
  LODWORD(STACK[0x48B8]) = STACK[0x5590];
  LODWORD(STACK[0x48B0]) = STACK[0x5460];
  LODWORD(STACK[0x48A8]) = STACK[0x53A0];
  LODWORD(STACK[0x48A0]) = v5;
  LODWORD(STACK[0x4898]) = STACK[0x57C0];
  LODWORD(STACK[0x4890]) = STACK[0x55C0];
  LODWORD(STACK[0x4888]) = STACK[0x5390];
  LODWORD(STACK[0x4880]) = STACK[0x5620];
  LODWORD(STACK[0x4878]) = STACK[0x53C8];
  LODWORD(STACK[0x4870]) = STACK[0x55F0];
  LODWORD(STACK[0x4868]) = STACK[0x5360];
  LODWORD(STACK[0x4860]) = STACK[0x5358];
  LODWORD(STACK[0x4858]) = STACK[0x5720];
  LODWORD(STACK[0x4850]) = STACK[0x5740];
  LODWORD(STACK[0x4848]) = STACK[0x5650];
  LODWORD(STACK[0x4840]) = STACK[0x5560];
  LODWORD(STACK[0x4838]) = STACK[0x5500];
  LODWORD(STACK[0x4830]) = STACK[0x5510];
  LODWORD(STACK[0x4828]) = STACK[0x55B0];
  LODWORD(STACK[0x4820]) = v6;
  LODWORD(STACK[0x4818]) = STACK[0x5570];
  LODWORD(STACK[0x4810]) = v3;
  LODWORD(STACK[0x4808]) = STACK[0x5328];
  LODWORD(STACK[0x4800]) = STACK[0x5368];
  LODWORD(STACK[0x47F8]) = STACK[0x5450];
  LODWORD(STACK[0x47F0]) = STACK[0x53D0];
  LODWORD(STACK[0x47E8]) = STACK[0x5400];
  LODWORD(STACK[0x47E0]) = a3;
  LODWORD(STACK[0x47D8]) = STACK[0x5340];
  LODWORD(STACK[0x47D0]) = STACK[0x56E0];
  LODWORD(STACK[0x47C8]) = STACK[0x56F0];
  LODWORD(STACK[0x47C0]) = STACK[0x5710];
  LODWORD(STACK[0x47B8]) = STACK[0x5610];
  LODWORD(STACK[0x47B0]) = STACK[0x54F0];
  LODWORD(STACK[0x47A8]) = STACK[0x5550];
  LODWORD(STACK[0x47A0]) = STACK[0x5420];
  LODWORD(STACK[0x4798]) = STACK[0x5388];
  LODWORD(STACK[0x4790]) = STACK[0x5750];
  LODWORD(STACK[0x4788]) = v8;
  LODWORD(STACK[0x4780]) = STACK[0x53D8];
  LODWORD(STACK[0x4778]) = STACK[0x5348];
  LODWORD(STACK[0x4770]) = STACK[0x5330];
  LODWORD(STACK[0x4768]) = STACK[0x53F0];
  LODWORD(STACK[0x4760]) = STACK[0x5318];
  LODWORD(STACK[0x4758]) = STACK[0x56D0];
  LODWORD(STACK[0x4750]) = STACK[0x5600];
  LODWORD(STACK[0x4748]) = v9;
  LODWORD(STACK[0x4740]) = STACK[0x5408];
  LODWORD(STACK[0x4738]) = STACK[0x56C0];
  LODWORD(STACK[0x4730]) = STACK[0x5780];
  LODWORD(STACK[0x4728]) = STACK[0x5380];
  LODWORD(STACK[0x4720]) = STACK[0x5320];
  LODWORD(STACK[0x4718]) = a2;
  LODWORD(STACK[0x4710]) = STACK[0x5378];
  LODWORD(STACK[0x4708]) = STACK[0x53B0];
  LODWORD(STACK[0x4700]) = STACK[0x5670];
  LODWORD(STACK[0x46F8]) = STACK[0x54E0];
  LODWORD(STACK[0x46F0]) = STACK[0x5430];
  LODWORD(STACK[0x52D0]) = STACK[0x2B00];
  return v10();
}

uint64_t sub_100A7B800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24, char a25, char a26, char a27, char a28, char a29, char a30, char a31, char a32)
{
  v35 = **(v33 + 8 * (v32 + 448));
  a15 = *v35 ^ 0x32;
  a16 = v35[1] ^ 0x32;
  a17 = v35[2] ^ 0x32;
  a18 = v35[3] ^ 0x32;
  a19 = v35[4] ^ 0x32;
  a20 = (v32 + 76) ^ 0x47 ^ v35[5];
  a21 = (v32 - 41) ^ 0x32 ^ v35[6];
  a22 = v35[7] ^ 0x32;
  a23 = v35[8] ^ 0x32;
  a24 = v35[9] ^ 0x32;
  a25 = v35[10] ^ 0x32;
  a26 = v35[11] ^ 0x32;
  a27 = v35[12] ^ 0x32;
  a28 = v35[13] ^ 0x32;
  a29 = v35[14] ^ 0x32;
  a30 = v35[15] ^ 0x32;
  a31 = v35[16] ^ 0x32;
  a32 = v35[17] ^ 0x32;
  v36 = (*(v34 + 8 * (v32 + 31783)))(&a15);
  return (*(v34 + 8 * ((29 * (v36 == 0)) ^ (v32 + 14278))))(v36, v37, v38, v39, v40, v41, v42);
}

uint64_t sub_100A7B9FC()
{
  LODWORD(STACK[0x76EC]) = v1;
  v2 = STACK[0x57D8];
  STACK[0x9600] = *(STACK[0x57D8] + 8 * v0);
  return (*(v2 + 8 * (v0 + 15098 + 3 * (v0 ^ 0x3ED))))();
}

uint64_t sub_100A7BB88()
{
  v2 = STACK[0x748];
  v3 = *(v0 + 1968);
  v4 = 410706167 * ((((v1 - 240) | 0xE30EACB5) + (~(v1 - 240) | 0x1CF1534A)) ^ 0x78D180E2);
  STACK[0x25D8] = STACK[0x1530];
  *(v1 - 236) = v4 ^ 0x62BA944D;
  *(v1 - 224) = v4 + 5185;
  STACK[0x25E8] = v3;
  STACK[0x25F0] = v2;
  *(v1 - 220) = v4 ^ 0x124FB208;
  v5 = STACK[0x540];
  v6 = (*(STACK[0x540] + 254320))(v1 - 240);
  v7 = *(v1 - 240);
  LODWORD(STACK[0x1D50]) = v7;
  return (*(v5 + 8 * ((14976 * (v7 == -143113071)) ^ 0x1C85)))(v6);
}

uint64_t sub_100A7BCA4(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0xEF8]) = v3;
  STACK[0xC38] = STACK[0x15E8];
  STACK[0x11B8] = *(v4 + 8 * a3);
  return (*(v4 + 8 * ((a3 ^ 0x5FC) + a3)))(a1, a2, 2120264440, 0x308E083E0C524CBELL);
}

uint64_t sub_100A7BDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = 1534937323 * ((0x485D143ABD1CBAF1 - ((v11 - 240) | 0x485D143ABD1CBAF1) + ((v11 - 240) | 0xB7A2EBC542E3450ELL)) ^ 0x7ADA6307840DBE49);
  *(v11 - 232) = ((v9 - 2016633495) ^ 0x1017) - v12;
  *(v11 - 228) = v12 + v9 - 723214290;
  STACK[0x25E8] = v12;
  *(v11 - 208) = ((v9 - 2016633495) ^ 0x5C) + v12;
  STACK[0x25D0] = v8 ^ v12;
  *(v11 - 224) = v12;
  *(v11 - 220) = (v9 - 2016633495) ^ v12;
  v13 = (*(v10 + 8 * (v9 ^ (a8 - 980))))(v11 - 240);
  return (*(v10 + 8 * *(v11 - 204)))(v13);
}

uint64_t sub_100A7BE98(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  STACK[0xF10] = v5 + v6;
  STACK[0x1520] = v4;
  return (*(v9 + 8 * (((((v8 - 2147163454) | 0x19AC200) - 54494175 + ((v8 - 1247823501) & 0xCBFFEB4E)) * (a4 == v7)) ^ v8)))();
}

uint64_t sub_100A7BF1C@<X0>(int a1@<W8>)
{
  v6 = *(v2 + 8 * ((((2 * ((v1 + 1223599154) & 0xB7117F0B ^ 0x7CE2)) ^ 0x603B) * (STACK[0x3D70] & 1)) ^ v1));
  STACK[0x1848] = STACK[0x3D40];
  STACK[0x1840] = STACK[0x3D78];
  STACK[0x1A88] = STACK[0x3B20];
  STACK[0x1A80] = STACK[0x3B18];
  STACK[0x2238] = LODWORD(STACK[0x3CF0]);
  LODWORD(STACK[0x1A90]) = STACK[0x3D48];
  LODWORD(STACK[0x28CC]) = STACK[0x3CE8];
  LODWORD(STACK[0x1AA8]) = STACK[0x39A8];
  LODWORD(STACK[0x32E8]) = STACK[0x3B00];
  STACK[0x2038] = LODWORD(STACK[0x3D58]);
  LODWORD(STACK[0x3830]) = STACK[0x3D90];
  LODWORD(STACK[0x2A48]) = STACK[0x2B48];
  LODWORD(STACK[0x12B4]) = v3;
  LODWORD(STACK[0x2500]) = STACK[0x3AE8];
  LODWORD(STACK[0x1C20]) = STACK[0x2B58];
  STACK[0x3698] = v5;
  STACK[0x3420] = LODWORD(STACK[0x2B78]);
  LODWORD(STACK[0x21F4]) = STACK[0x3AE0];
  LODWORD(STACK[0x1BA0]) = STACK[0x2B90];
  LODWORD(STACK[0x1BC8]) = STACK[0x39E8];
  LODWORD(STACK[0x3488]) = v4;
  LODWORD(STACK[0x2630]) = STACK[0x2B50];
  STACK[0x2228] = LODWORD(STACK[0x2B68]);
  STACK[0x3318] = LODWORD(STACK[0x2B98]);
  LODWORD(STACK[0x2158]) = a1;
  LODWORD(STACK[0x1B50]) = STACK[0x3D38];
  LODWORD(STACK[0x3E18]) = STACK[0x36B8];
  LODWORD(STACK[0x3310]) = STACK[0x3D30];
  LODWORD(STACK[0x3308]) = STACK[0x3D28];
  LODWORD(STACK[0x3300]) = STACK[0x3D20];
  return v6();
}

uint64_t sub_100A7C35C@<X0>(int a1@<W7>, int a2@<W8>)
{
  v5 = *(&STACK[0x320] + (v2 + 2361 * a1) % 0xA88u);
  v6 = *(&STACK[0xDE0] + (825 * (v5 | ((v5 < 0x60) << 8)) + 1401675) % 0x1940);
  v7 = *(&STACK[0x320] + (2361 * (((BYTE2(v6) ^ 0x57483EF1) - 1725156695) ^ ((BYTE2(v6) ^ 0x8018EEE6) + 1316807360) ^ ((BYTE2(v6) ^ 0xD750D077) + 422894639)) - 2022068969) % 0xA88);
  v8 = *(&STACK[0x320] + (2361 * (((HIBYTE(v6) ^ 0xEE633287) + 2082317976) ^ ((HIBYTE(v6) ^ 0x7A455604) - 398736875) ^ ((HIBYTE(v6) ^ 0x942664FF) + 106492144)) - 288911684) % 0xA88);
  v9 = *(&STACK[0x320] + (2361 * (((BYTE1(v6) ^ 0xC6D310B8) - 1249579133) ^ ((BYTE1(v6) ^ 0x65C8CC49) + 379532148) ^ ((BYTE1(v6) ^ 0xA31BDC42) - 800316551)) + 966438983) % 0xA88);
  v10 = v8 & 0x44 ^ 0xD2;
  v11 = v7 & 0xEC ^ 0x26;
  v12 = *(&STACK[0x320] + (2361 * (((v6 ^ 0x35C9CC90) + 1113396032) ^ ((v6 ^ 0xAB7A3EB3) - 588324579) ^ ((v6 ^ 0x9EB3F2CA) - 383308442)) + 607074866) % 0xA88);
  v13 = v7 ^ (2 * ((v7 ^ 0x20) & (2 * ((v7 ^ 0x20) & (2 * ((v7 ^ 0x20) & (2 * ((v7 ^ 0x20) & (2 * ((v7 ^ 0x20) & (2 * v11) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11));
  v14 = (v9 & 0xA0 | 0x52) ^ v9 & 0xE4;
  v15 = v9 ^ (2 * ((v9 ^ 0x20) & (2 * ((v9 ^ 0x20) & (2 * ((v9 ^ 0x20) & (2 * ((v9 ^ 0x20) & (2 * (v9 & (2 * v14) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14));
  v16 = ((v13 << 8) ^ 0xFF539F) & (((v8 ^ (2 * ((v8 ^ 0x20) & (2 * ((v8 ^ 0x20) & (2 * ((v8 ^ 0x20) & (2 * ((v8 ^ 0x20) & (2 * ((v8 ^ 0x20) & 0x24 ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10))) << 16) ^ 0x24BC8F) | (v13 << 8) & 0x4300;
  v17 = (v12 & 0xA0 | 0x52) ^ v12 & 0xE4;
  v18 = v12 ^ (2 * ((v12 ^ 0x20) & (2 * ((v12 ^ 0x20) & (2 * ((v12 ^ 0x20) & (2 * ((v12 ^ 0x20) & (2 * (v12 & (2 * v17) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17));
  *(&STACK[0xDE0] + (v3 + 825 * a1) % 0x1940u) = (((((v16 ^ 0x990D60) & (v15 ^ 0xFFFFAB) ^ (v15 & 0x10 | 0x40A00)) << 8) ^ 0x3470DE56) & (v18 ^ 0xFFFFFF93) | v18 & 0xA9) ^ 0xB5EB82BF;
  return (*(v4 + 8 * ((117 * (2 * (a1 & 1) + (a1 ^ 1u) < 0x100)) ^ a2)))(0);
}

uint64_t sub_100A7C8D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = STACK[0x640] + 4 * ((551 * v8 + a8) % 0x1D48u);
  v14 = STACK[0x640] + 4 * ((551 * v8 + (v12 ^ 0x1C19E7u)) % 0x1D48);
  v15 = *(*STACK[0x660] + (*v11 & STACK[0x658]));
  v16 = *v9 ^ v10;
  *(v14 - 0x34EE34220E8AC3B8) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v14 + v15 + 673210726) & v16)) ^ *(v13 - 0x34EE34220E8AC3B8) ^ (-1962600273 * v14) ^ (-1962600273 * v13) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v14 + v15 + a4) & v16)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v13 + v15 + 673210726) & v16)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v13 + v15 + a4) & v16));
  return (*(STACK[0x668] + 8 * ((26718 * (v8 == 255)) ^ v12)))();
}

uint64_t sub_100A7CAA0(unsigned int a1, int a2, uint64_t a3, int a4, unsigned int a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x6C8]) = v8;
  LODWORD(STACK[0x6B0]) = a5;
  LODWORD(STACK[0x6B8]) = a1;
  LODWORD(STACK[0x6C0]) = v10;
  v16 = *(v12 + 4 * (a5 - a5 / 0x113 * a7)) ^ LODWORD(STACK[0x670]);
  v17 = *(v12 + 4 * (204 * v10 - 22900 - ((((((204 * v10 - 22900) & 0xFFFCu) * a2) >> 16) + (((204 * v10 - 22900 - ((((204 * v10 - 22900) & 0xFFFCu) * a2) >> 16)) & 0xFFFE) >> 1)) >> 8) * a7));
  v19 = __PAIR64__(v17, __ROR4__(v16, 18));
  v18 = (v16 >> 3) ^ __ROR4__(v16, 7) ^ v19;
  v20 = (56481 * ((204 * v10 - 20248) & 0xFFFCu)) >> 16;
  v21 = *(v12 + 4 * (204 * v10 - 20248 - ((v20 + (((204 * v10 - 20248 - v20) & 0xFFFE) >> 1)) >> 8) * a7));
  LODWORD(v19) = v17;
  v22 = v19 >> 7;
  v23 = *(v12 + 4 * (a1 - a1 / 0x113 * a7)) ^ 0x5AE88FAE;
  HIDWORD(v19) = v23;
  LODWORD(v19) = v23;
  v24 = v19 >> 19;
  HIDWORD(v19) = v21;
  LODWORD(v19) = v21;
  v25 = v24 ^ (v23 >> 10) ^ __ROR4__(v23, 17);
  v26 = STACK[0x6D0];
  LODWORD(STACK[0x680]) = LODWORD(STACK[0x6D0]) ^ (v11 + 324439656);
  v27 = ((v18 ^ v13) - v13) ^ ((v18 ^ v14) - v14);
  v28 = (v8 ^ 0x4AD92E49) + 1105479555;
  LODWORD(STACK[0x6A8]) = v28;
  LODWORD(STACK[0x6A0]) = v26 ^ 0x1DD22902;
  v29 = (v26 ^ 0x670D10BD) + ((v11 + 324439656) ^ a4);
  LODWORD(STACK[0x6D0]) = v29;
  v30 = (v26 + a4) ^ v28;
  LODWORD(STACK[0x690]) = v30;
  v31 = v29 ^ v26 ^ 0x1DD22902;
  v32 = (v19 >> 17) ^ (v21 >> 10) ^ __ROR4__(v21, 19);
  v33 = v31 ^ v25;
  v34 = (v15 ^ 0x4AD92E49) + 1105479555;
  v35 = ((v17 >> 3) ^ -(v17 >> 3) ^ (v22 - (v22 ^ (v17 >> 3)))) + v22;
  v36 = (v9 ^ ((v9 ^ 0x73E43B59) - 1791867215) ^ ((v9 ^ 0xEAE7F88A) + 204572004) ^ (v14 - ((2 * v14) & 0x85F1F2F0) + 1123613048) ^ ((v9 ^ 0x1FD59E2A) - 117185596) ^ ((v9 ^ 0x9FFFDFEF) + 2032771591) ^ 0x5BD17B6E) + (v13 ^ 0x670D10BD);
  v37 = (v9 - 422150678 + v13) ^ v34;
  LODWORD(STACK[0x688]) = v37;
  v38 = v13 ^ 0x1DD22902;
  LODWORD(v19) = __ROR4__(v17, 18);
  v39 = *(STACK[0x518] + 4 * (204 * v10 + 27540 - 275 * ((((56481 * ((204 * v10 + 27540) & 0xFFFCu)) >> 16) + (((204 * v10 + 27540 - ((56481 * ((204 * v10 + 27540) & 0xFFFCu)) >> 16)) & 0xFFFE) >> 1)) >> 8)));
  LODWORD(STACK[0x698]) = v36;
  v40 = (v8 ^ 0x4AD92E49) - v15 + v39 + *(STACK[0x518] + 4 * (204 * v10 + 29376 - 275 * ((((56481 * ((204 * v10 + 29376) & 0xFFFCu)) >> 16) + (((204 * v10 + 29376 - ((56481 * ((204 * v10 + 29376) & 0xFFFCu)) >> 16)) & 0xFFFE) >> 1)) >> 8))) + v25 - 138757679 + (v27 ^ ((LODWORD(STACK[0x680]) ^ v35 ^ v19 ^ v18) - (LODWORD(STACK[0x680]) ^ v35 ^ v19)));
  *(STACK[0x518] + 4 * (204 * v10 + 30804 - 275 * ((((56481 * ((204 * v10 + 30804) & 0xFFFCu)) >> 16) + (((204 * v10 + 30804 - ((56481 * ((204 * v10 + 30804) & 0xFFFCu)) >> 16)) & 0xFFFE) >> 1)) >> 8))) = v40 + 622118617;
  v41 = LODWORD(STACK[0x6C8]) - v34 + *(STACK[0x518] + 4 * (204 * v10 + 13260 - 275 * ((((56481 * ((204 * v10 + 13260) & 0xFFFCu)) >> 16) + (((204 * v10 + 13260 - ((56481 * ((204 * v10 + 13260) & 0xFFFCu)) >> 16)) & 0xFFFE) >> 1)) >> 8))) + *(STACK[0x518] + 4 * (204 * v10 + 15096 - 275 * ((((56481 * ((204 * v10 + 15096) & 0xFFFCu)) >> 16) + (((204 * v10 + 15096 - ((56481 * ((204 * v10 + 15096) & 0xFFFCu)) >> 16)) & 0xFFFE) >> 1)) >> 8))) + (v35 ^ v19) - 145283232 + (((v38 ^ v32) - v38) ^ ((v32 ^ v36) - v36) ^ ((v33 ^ v32) - v33));
  v42 = v30 - 931551037 + v41;
  v43 = v40 - v37 + 786267805;
  v44 = (((v42 >> 12) + 67) & 0x1F ^ (28 - (v42 >> 12))) * ((v42 >> 12) + 67);
  v45 = *(STACK[0x6E0] + (31 * (v42 & 0xF) + 2077 - (((1089 * (31 * (v42 & 0xF) + 2077)) >> 16) >> 4) * v7));
  v46 = (v43 & 0x43 ^ 0x43) + (v43 & 0x43) + ((v43 >> 20) & 0xF);
  v47 = *(STACK[0x6E0] + (v44 - (((1089 * v44) >> 16) >> 4) * v7));
  v48 = *(STACK[0x6E0] + (31 * v46 - (((33759 * v46) >> 16) >> 4) * v7));
  v49 = ((*(STACK[0x6E0] + (31 * (HIBYTE(v43) & 0xF) + 2077 - (((1089 * (31 * (HIBYTE(v43) & 0xF) + 2077)) >> 16) >> 4) * v7)) ^ 0xF2) << 8) ^ ((*(STACK[0x6E0] + (31 * (v43 >> 28) + 2077 - (((1089 * (31 * (v43 >> 28) + 2077)) >> 16) >> 4) * v7)) ^ 0xF2) << 12);
  v50 = ((*(STACK[0x6E0] + (31 * (HIBYTE(v42) & 0xF) + 2077 - (((1089 * (31 * (HIBYTE(v42) & 0xF) + 2077)) >> 16) >> 4) * v7)) ^ 0xF2) << 8) ^ (*(STACK[0x6E0] + (31 * (v42 >> 28) + 2077 - (((1089 * (31 * (v42 >> 28) + 2077)) >> 16) >> 4) * v7)) << 12);
  v51 = v45 ^ 0x8BDEC279;
  v52 = ((v50 ^ 0x308DFF) & (*(STACK[0x6E0] + (31 * (BYTE2(v42) & 0xF) + 2077 - (((1089 * (31 * (HIWORD(v42) & 0xF) + 2077)) >> 16) >> 4) * v7)) ^ 0x35ADA3) | v50 & 0xA5200) << 8;
  v53 = ((*(STACK[0x6E0] + (31 * (BYTE2(v43) & 0xF) + 2077 - (((1089 * (31 * (HIWORD(v43) & 0xF) + 2077)) >> 16) >> 4) * v7)) ^ 0x6E6D4F03) & ~v49 | v49 & STACK[0x508]) ^ 0x6E6D4FF1 ^ (17 * (((v48 ^ 0xDA5F767B) + 631277957) ^ ((v48 ^ 0x4F12801F) - 1326612511) ^ ((v48 ^ 0x954DF696) + 1790052714)) - (((v48 ^ 0xE9092834) + 385275852) ^ ((v48 ^ 0x4D6A9E6D) - 1298833005) ^ ((v48 ^ 0xA463B6AB) + 1536969045)) + 3872);
  v54 = v52 ^ ((*(STACK[0x6E0] + (31 * ((v42 >> 20) & 0xF) + 2077 - (((1089 * (31 * ((v42 >> 20) & 0xF) + 2077)) >> 16) >> 4) * v7)) ^ 0xF2) << 12);
  v55 = v45 & 0xF;
  v56 = *(STACK[0x6E0] + (31 * (v43 & 0xF) + 2077 - (((1089 * (31 * (v43 & 0xF) + 2077)) >> 16) >> 4) * v7));
  v57 = (((*(STACK[0x6E0] + (31 * ((v43 >> 8) & 0xF) + 2077 - (((1089 * (31 * ((v43 >> 8) & 0xF) + 2077)) >> 16) >> 4) * v7)) ^ 0xF2) << 8) | (v53 << 16)) ^ ((*(STACK[0x6E0] + (31 * (v43 >> 12) + 2077 - (((1089 * (31 * (v43 >> 12) + 2077)) >> 16) >> 4) * v7)) ^ 0xF2) << 12);
  v58 = (((v54 ^ 0x5200FF) & (*(STACK[0x6E0] + (31 * ((v42 >> 8) & 0xF) + 2077 - (((1089 * (31 * ((v42 >> 8) & 0xF) + 2077)) >> 16) >> 4) * v7)) ^ 0x574056) | v54 & 0xA8BF00) << 8) ^ 0xFF51A400;
  v59 = (v56 ^ 0x8546F440) & ~v57 | v57 & 0x7AB90B00;
  v60 = v55 & 0xFFFFFF0F | (16 * (v56 & 0xF));
  v61 = v58 ^ (v47 << 12);
  LOBYTE(v47) = *(STACK[0x6E0] + (31 * (v43 >> 4) + 2077 - (((1089 * (31 * (v43 >> 4) + 2077)) >> 16) >> 4) * v7)) ^ 0x8C ^ (((v59 >> 4) ^ 0x4B) + 126 - ((2 * ((v59 >> 4) ^ 0x4B)) & 0xFC));
  LOWORD(v49) = 31 * (v60 ^ 0x22);
  v62 = LODWORD(STACK[0x678]) ^ 0xF61DB7D9 ^ *(STACK[0x6E0] + (v49 - ((270041 * (v60 ^ 0x22) + 23223526) >> 23) * v7 + 2666));
  v63 = ((v61 ^ 0xFFF1FFFF) & v51 | v61 & 0x74213D00) ^ (16 * (*(31 * (v42 >> 4) + STACK[0x6E0] + 151) ^ 0xF2));
  v64 = 31 * v62;
  v65 = v63 ^ 0x8BDFE28B;
  v66 = ((v63 ^ 0x8B) >> 4) & 0xF | (16 * (v47 & 0xF));
  v67 = *(STACK[0x6E0] + (31 * (*(STACK[0x6E0] + (v49 + 21855 - (v49 + 21855) / 0x3C3u * v7)) ^ (*(STACK[0x6E0] + (31 * v62 + 21855) % 0x3C3) >> 4) ^ 0xFD) + 2666) % 0x3C3u);
  LOWORD(v49) = 31 * v66;
  v68 = *(STACK[0x6E0] + (31 * v66 - 963 * ((270041 * v66 + 23223526) >> 23) + 2666));
  *(STACK[0x518] + 4 * (204 * v10 + 16524 - 275 * ((((56481 * ((204 * v10 + 16524) & 0xFFFCu)) >> 16) + (((204 * v10 + 16524 - ((56481 * ((204 * v10 + 16524) & 0xFFFCu)) >> 16)) & 0xFFFE) >> 1)) >> 8))) = v41;
  v69 = 31 * (v68 ^ 0x43F0DC0B ^ (16 * (v67 ^ 0xF2) + 1139858443 - ((32 * (v67 ^ 0xF2)) & 0xFFFFF9FF) + 238));
  v70 = v61 ^ 0xF2000;
  v71 = v47 & 0xF0 | (v65 >> 8) & 0xF;
  v72 = *(STACK[0x6E0] + (31 * (*(STACK[0x6E0] + (v49 + 21855) % 0x3C3u) ^ (*(STACK[0x6E0] + (v69 + 21855) % 0x3C3) >> 4) ^ 0xFD) + 2666) % 0x3C3u) ^ 0xF2;
  v73 = 31 * (*(STACK[0x6E0] + (31 * v71 - 963 * ((270041 * v71 + 23223526) >> 23) + 2666)) ^ 0xCB827143 ^ (16 * v72 - 880643773 - ((32 * v72) & 0x360) + 110));
  v74 = (v64 + 2666) % 0x3C3u;
  v75 = v69 + 2666;
  v76 = (v57 >> 8) & 0xF0 | (v70 >> 12);
  v77 = *(STACK[0x6E0] + (31 * (*(STACK[0x6E0] + (31 * v71 + 21855) % 0x3C3u) ^ (*(STACK[0x6E0] + (v73 + 21855) % 0x3C3) >> 4) ^ 0xFD) + 2666) % 0x3C3u) ^ 0xF2;
  v78 = *(STACK[0x6E0] + (31 * v76 + 21855) % 0x3C3u);
  v79 = 31 * (*(STACK[0x6E0] + (31 * v76 - 963 * ((270041 * v76 + 23223526) >> 23) + 2666)) ^ 0xA9585081 ^ (16 * v77 - 1453830029 - 32 * (v77 & 7)));
  LOBYTE(v76) = *(STACK[0x6E0] + v75 % 0x3C3);
  v80 = *(STACK[0x6E0] + (31 * (v78 ^ (*(STACK[0x6E0] + (v79 + 21855) % 0x3C3) >> 4) ^ 0xFD) + 2666) % 0x3C3u);
  v81 = (v57 >> 12) & 0xF0 | HIWORD(v70) & 0xF;
  LOWORD(v71) = *(STACK[0x6E0] + (31 * v81 + 21855) % 0x3C3u);
  v82 = 31 * (*(STACK[0x6E0] + (31 * v81 - 963 * ((270041 * v81 + 23223526) >> 23) + 2666)) ^ 0xBBEF2341 ^ (16 * (v80 ^ 0xF2) - 1141955775 - ((32 * (v80 ^ 0xF2)) & 0x760) + 114));
  v83 = v73 + 2666;
  v84 = v53 & 0xF0 | (v58 >> 20) & 0xF;
  v85 = *(STACK[0x6E0] + (31 * (v71 ^ (*(STACK[0x6E0] + (v82 + 21855) % 0x3C3) >> 4) ^ 0xFD) + 2666) % 0x3C3u) ^ 0xF2;
  v86 = *(STACK[0x6E0] + (31 * v84 - 963 * ((270041 * v84 + 23223526) >> 23) + 2666)) ^ 0xBF3B9EEF ^ (16 * v85 - 1086611939 - ((32 * v85) & 0xFFFFFC3F));
  LOWORD(v71) = 31 * v84 + 21855;
  v87 = v83 % 0x3C3;
  v88 = 31 * v86;
  v89 = (v53 >> 4) & 0xF0 | HIBYTE(v58) & 0xF;
  v90 = *(STACK[0x6E0] + (31 * (*(STACK[0x6E0] + v71 % 0x3C3u) ^ (*(STACK[0x6E0] + (31 * v86 + 21855) % 0x3C3) >> 4) ^ 0xFD) + 2666) % 0x3C3u) ^ 0xF2;
  v91 = 31 * v89 + 21855 - 963 * ((8711 * (31 * v89 + 21855)) >> 23);
  v92 = (v91 & 0x56 ^ 0x56) + (v91 & 0x56);
  v93 = *(STACK[0x6E0] + (31 * v89 - 963 * ((270041 * v89 + 23223526) >> 23) + 2666)) ^ 0x9F9347E8 ^ (16 * v90 - 1617737958 - ((32 * v90) & 0xE20));
  LOWORD(v90) = (31 * (*(STACK[0x6E0] + (31 * v89 + 21855) % 0x3C3u) ^ (*(STACK[0x6E0] + (31 * v93 + 21855) % 0x3C3) >> 4) ^ 0xFD) + 2666) % 0x3C3u;
  LOBYTE(v89) = *(STACK[0x6E0] + v74);
  LOWORD(v55) = v55 & 0xFF0F | (16 * (v89 & 0xF));
  LOBYTE(v57) = *(STACK[0x6E0] + v87);
  v94 = *(STACK[0x6E0] + v90) ^ 0xF2;
  LOBYTE(v87) = *(STACK[0x6E0] + (v79 + 2666) % 0x3C3);
  v95 = *(STACK[0x6E0] + (31 * ((((((16 * v76) ^ 0x20) - ((32 * v76) & 0x80) + 69) ^ v89) & 0xF0 | (v65 >> 4)) ^ 0xB0) + 10881) % 0x3C3u) ^ 0xF2;
  LOWORD(v74) = (31 * ((((((16 * v57) ^ 0x20) - ((32 * v57) & 0xBF) - 46) ^ v76) & 0xF0 | (v65 >> 8) & 0xF) ^ 0x20) + 10881) % 0x3C3u;
  v96 = (31 * (*(STACK[0x6E0] + (31 * ((v53 >> 8) & 0xF0 | (v58 >> 28)) + 1703) % 0x3C3u) ^ 0x4FCA54AF ^ (16 * v94 + 1338659933 - ((32 * v94) & 0x8A0u))) + 2666) % 0x3C3;
  LOBYTE(v91) = *(STACK[0x6E0] + (v82 + 2666) % 0x3C3);
  LOBYTE(v79) = *(STACK[0x6E0] + (v88 + 2666) % 0x3C3u);
  LOBYTE(v53) = *(STACK[0x6E0] + 31 * (v92 + v93) % 0x3C3);
  v97 = ((((16 * v79) ^ 0x20) - ((2 * ((16 * v79) ^ 0x20)) & 0x40) + 43) ^ v91) & 0xF0 | (v58 >> 20) & 0xF;
  v98 = ((2 * v97) & 0xBE ^ 0xA0) + (v97 ^ 0x18F);
  LOWORD(v98) = 31 * v98 - 963 * (((270041 * v98) >> 16) >> 7);
  LOBYTE(v89) = (((16 * v53) ^ 0x20) - ((2 * ((16 * v53) ^ 0x20)) & 0x40) - 91) ^ v79;
  v99 = STACK[0x518];
  v100 = (*(STACK[0x6E0] + (31 * (v55 ^ 0x22) + 10881) % 0x3C3u) | ((*(STACK[0x6E0] + v74) ^ 0xF2) << 8)) ^ (*(STACK[0x6E0] + (31 * ((((((16 * v87) ^ 0x20) - ((32 * v87) & 0xBF) - 37) ^ v57) & 0xF0 | (v70 >> 12)) ^ 0x20) + 10881) % 0x3C3u) << 12) ^ (16 * v95 - ((32 * v95) & 0x1D20) + 240967324) ^ ((*(STACK[0x6E0] + (31 * ((((((16 * v91) ^ 0x20) - 32 * (v91 & 1) + 25) ^ v87) & 0xF0 | BYTE2(v70) & 0xF) ^ 0xE0) + 10881) % 0x3C3u) ^ 0xF2) << 16) ^ 0xE53FE6E ^ ((*(STACK[0x6E0] + v98) ^ 0xF2u) << ((v98 & 0x14 ^ 0x14) + (v98 & 0x14u)));
  v101 = v100 ^ ((*(STACK[0x6E0] + (31 * ((v89 & 0xF0 | HIBYTE(v58) & 0xF) ^ 0x50) + 10881) % 0x3C3u) ^ 0xF2) << 24);
  v102 = ((*(STACK[0x6E0] + (31 * (HIBYTE(v101) & 0xF) + 18941) % 0x3C3u) ^ 0xF2) << 8) ^ (*(STACK[0x6E0] + (31 * ((v101 ^ ((*(STACK[0x6E0] + (31 * (((-16 - 16 * (*(STACK[0x6E0] + v96) ^ 2)) ^ v53) & 0xF0 | (v58 >> 28)) + 10881) % 0x3C3u) ^ 2u) << 28)) >> 28) + 18941) % 0x3C3u) << 12);
  LOBYTE(v89) = ((31 * ((v100 >> 8) & 0xF) + 18941) % 0x3C3u) & 4;
  v103 = ((((v102 ^ 0xC0C3FF) & (*(STACK[0x6E0] + (31 * (BYTE2(v100) & 0xF) + 18941) % 0x3C3u) ^ 0xC4E3FB)) + (v102 & 0xB1C00)) << 8) ^ ((*(STACK[0x6E0] + ((((((v100 >> 20) & 0xF) + 611) | (-612 - ((v100 >> 20) & 0xF))) & 0xB895 ^ 0xB88A) * (((v100 >> 20) & 0xF) + 611)) % 0x3C3u) ^ 0xF2) << 12);
  v104 = *(STACK[0x6E0] + (31 * (v100 >> 12) + 18941) % 0x3C3u);
  v105 = (v103 | 0xFF) & (*(STACK[0x6E0] + (31 * ((v100 >> 8) & 0xF) + 18941) % 0x3C3u) ^ 0xC10013) | v103 & 0x3EFF00;
  *(STACK[0x518] + 4 * (204 * v10 + 3264 - 275 * ((((56481 * ((204 * v10 + 3264) & 0xFFFCu)) >> 16) + (((204 * v10 + 3264 - ((56481 * ((204 * v10 + 3264) & 0xFFFCu)) >> 16)) & 0xFFFE) >> 1)) >> 8))) = (LODWORD(STACK[0x688]) - 1823987411) ^ (v38 - 96699367) ^ (16 * (*(STACK[0x6E0] + (31 * (v100 >> ((v89 ^ 4) + v89)) + 18941) % 0x3C3u) ^ 0xF2)) ^ 0xA92752E5 ^ (((v105 << 8) ^ (v104 << 12) ^ 0x10C91CFF) & (*(STACK[0x6E0] + (31 * (v100 & 0xF) + 18941) % 0x3C3u) ^ 0x93CF1CB9) | ((v105 << 8) ^ (v104 << 12)) & 0x6C30E300);
  v106 = STACK[0x6B8];
  v107 = LODWORD(STACK[0x690]) + 1709204734 + (LODWORD(STACK[0x6D0]) ^ 0x6602A902) + (LODWORD(STACK[0x6D0]) ^ 0x6602A902);
  *(v99 + 4 * (204 * v10 - 19840 - 275 * ((((56481 * ((204 * v10 - 19840) & 0xFFFCu)) >> 16) + (((204 * v10 - 19840 - ((56481 * ((204 * v10 - 19840) & 0xFFFCu)) >> 16)) & 0xFFFE) >> 1)) >> 8))) = v42 ^ (LODWORD(STACK[0x690]) - 1823987411) ^ (LODWORD(STACK[0x6A0]) - 96699367);
  v108 = STACK[0x6C0];
  LODWORD(STACK[0x6D0]) = v107;
  return (*(STACK[0x6D8] + 8 * ((55 * (v108 == 47)) ^ LODWORD(STACK[0x5A8]))))((v106 + 204));
}

uint64_t sub_100A7E0C8(int a1, int a2)
{
  v5 = *(&STACK[0x320] + (v2 + ((a2 ^ 0x3E4Au) - 24585) * a1) % 0xA88);
  v6 = *(&STACK[0xDE0] + (825 * (v5 | ((v5 < 0x60) << 8)) + 767250) % 0x1940);
  v7 = *(&STACK[0x320] + (2361 * (((HIBYTE(v6) ^ 0x8BE94A59) + 70393457) ^ ((HIBYTE(v6) ^ 0xCE480D7F) + 1100175703) ^ ((HIBYTE(v6) ^ 0x45A1475A) - 897969292)) + 1113694939) % 0xA88);
  LOBYTE(v5) = *(&STACK[0x320] + (2361 * (((BYTE2(v6) ^ 0x36DA6B9) + 79730782) ^ ((BYTE2(v6) ^ 0x8F31B911) - 2003007498) ^ ((BYTE2(v6) ^ 0x8C5C1FC8) - 1947131603)) + 862508900) % 0xA88);
  v8 = *(&STACK[0x320] + 2361 * ((((((8 * v6) & 0x7F800 ^ 0x564DB30E) + 186003598) ^ (((8 * v6) & 0x7F800 ^ 0x5656665E) + 185460190) ^ (((8 * v6) & 0x7F800 ^ 0x1E4D50) + 1564856020)) - 1563808644) >> 11) % 0xA88);
  v9 = (v5 ^ (2 * (((2 * (v5 ^ 0x20)) & 0x40 ^ 0x60) & (v5 ^ 0x20)))) << 8;
  v10 = *(&STACK[0x320] + (2361 * (((v6 ^ 0x5F02BF6F) - 1575846215) ^ ((v6 ^ 0x73CE5FF8) - 1898013136) ^ ((v6 ^ 0x2CCCE07Eu) - 774102614)) + 279458298) % 0xA88);
  LOBYTE(v6) = (v10 & 0xA0 | 0xE) ^ v10 & 0x1C;
  v11 = v10 ^ (2 * ((v10 ^ 0x20) & (2 * ((v10 ^ 0x20) & (2 * ((v10 ^ 0x20) & (2 * ((v10 ^ 0x20) & (2 * ((v10 ^ 0x20) & (2 * v6) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6));
  *(&STACK[0xDE0] + (v3 + 825 * a1) % 0x1940u) = ((v11 ^ 0xFFFFFF43) & (((((((((v7 ^ 0x20) & (2 * ((v7 ^ 0x20) & (2 * ((v7 ^ 0x20) & (2 * (v7 & 0xFFFFFFA0)) | v7 & 0xFFFFFFA0)) ^ v7 & 0xFFFFFFA0)) ^ (v7 & 0xFFFFFFA0 | 0x40)) << 17) ^ (v7 << 16) ^ 0xF860A1) & (v9 | 0xFF00A1) | v9 & 0xFFFF9FFF) ^ 0x5D2596) & ((v8 ^ (2 * ((v8 ^ 0x20) & (2 * ((v8 ^ 0x20) & (2 * ((v8 ^ 0x20) & (2 * (v8 & 0xA0)) | v8 & 0xA0)) ^ v8 & 0xA0)) ^ (v8 & 0xA0 | 0x40)))) ^ 0xFFFF17) ^ ((v8 ^ (2 * ((v8 ^ 0x20) & (2 * ((v8 ^ 0x20) & (2 * ((v8 ^ 0x20) & (2 * (v8 & 0xA0)) | v8 & 0xA0)) ^ v8 & 0xA0)) ^ (v8 & 0xA0 | 0x40)))) & 0xC8 | 0x222800)) << 8) ^ 0xCBBA10E3) | v11 & 0x1C) ^ 0x10379416;
  return (*(v4 + 8 * ((15946 * (a1 == 255)) ^ a2)))();
}

uint64_t sub_100A7E498@<X0>(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, char a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v24 = 311 * v10 + 1524461284 - (((((311 * v10 + 1524461284) >> 1) * v12) >> 32) >> 8) * v20;
  *(v19 + v24) ^= *(a1 + (a9 + v10));
  v25 = ((((v10 ^ 2) + 10) ^ (4 - v10)) ^ ((v10 ^ 0xFD) + 7)) & 0xF;
  v26 = v16 + (((v25 ^ 0x69DAA808) - 1367870628) ^ (v25 + a7) ^ ((v25 ^ a8) + v13)) * v14;
  v27 = *(v15 + v26 - (((v26 * v18) >> 32) >> 7) * a2);
  v28 = 311 * v10 + v11 - (311 * v10 + v11) / 0x3C2u * v20;
  *(v19 + v28) ^= v27 ^ a4 ^ ((v23 ^ (v27 >> 4) | a3) - ((2 * (v23 ^ (v27 >> 4))) & 0x10) - 8);
  v29 = v10 + a5 < v21;
  if (v21 < v17 != v10 + a5 < v22)
  {
    v29 = v21 < v17;
  }

  return (*(STACK[0x6D8] + 8 * ((v29 * a6) ^ v9)))();
}

uint64_t sub_100A7E9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  STACK[0x3638] = a5;
  STACK[0x3A48] = a5 ^ 0xD17706638CA73F56;
  STACK[0x3630] = a6;
  STACK[0x39E0] = a6 ^ ((v6 + 2161) + 0x65824E35D5969E60);
  STACK[0x39D8] = STACK[0x3B08];
  v11 = *(v10 + 8 * v6);
  STACK[0x3AB0] = v8;
  STACK[0x3610] = v7;
  STACK[0x3648] = v9;
  return v11();
}

uint64_t sub_100A7EA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v51 = (*(v50 + 8 * (v48 ^ 0x6A83)))(1032);
  v52 = *(v49 - 192);
  *(v49 - 212) = v48 + 8450;
  return (*(v52 + 8 * (((v51 == 0) * (v48 + 6498 + v48 + 8450 - 23646)) ^ v48)))(a48);
}

uint64_t sub_100A7EAC0()
{
  v0 = STACK[0x51B8] ^ 0x4757;
  v1 = STACK[0x57D8];
  v2 = STACK[0x2760];
  STACK[0xB200] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2760]));
  return (*(v1 + 8 * (v0 ^ v2 ^ 0x54BD)))(&STACK[0x978C]);
}

uint64_t sub_100A7ECC0(uint64_t a1, _DWORD *a2)
{
  *a2 = v2 + ((((STACK[0x470] - v2) | (v2 - STACK[0x470])) >> 31) ^ 0x7FFFFFFF) + 1;
  v4 = (*(v3 + 8 * (v2 + 31821)))(STACK[0x1508]);
  STACK[0x1508] = 0;
  return (*(v3 + 8 * (v2 + 2120242972 + ((v2 + 360972) | 0x819A4000) - 2172)))(v4);
}

uint64_t sub_100A7EDAC()
{
  STACK[0x37A8] = 0;
  LODWORD(STACK[0x39E8]) = 0;
  LODWORD(STACK[0x39A0]) = 0;
  return (*(v1 + 8 * (((LODWORD(STACK[0x36D0]) < 0x10) * ((v0 - 7111) ^ 0x50AE)) ^ v0)))();
}

uint64_t sub_100A7EDE8()
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  v2 = *(v1 + 8 * (((v0 - 13492 + 470 * (v0 ^ 0x1E29)) * (STACK[0x868] & 1)) ^ v0));
  LODWORD(STACK[0x3CF0]) = 25;
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

uint64_t sub_100A7EEF4()
{
  STACK[0x11F0] = 0;
  LODWORD(STACK[0x1A88]) = -769884012;
  STACK[0xD90] = 0x683CBC57EAB92A3ELL;
  LODWORD(STACK[0xC6C]) = -143113071;
  STACK[0x7C0] = v0 + 4;
  v5 = (((v2 + 1848658779) ^ 0xC6FB91EE) + 1463035215) ^ (v2 + 1848658779) ^ (((v2 + 1848658779) ^ 0xE8E6CB1C) + 2032762813) ^ (((v2 + 1848658779) ^ 0x7FDBCFFF) - 300647584) ^ (((v2 + 1848658779) ^ 0x3FF6DE52) - 1371971869 + 772 * ((v1 - 939536458) & 0xB99FD73C ^ (v3 - 4)));
  LODWORD(STACK[0x16B0]) = v5 ^ 0xBC2CCBCB;
  STACK[0xF58] = v5 ^ 0x6E304B5F;
  v6 = (*(v4 + 8 * (v1 ^ 0x6727)))();
  STACK[0x13E0] = v6;
  return (*(v4 + 8 * ((97 * (v6 != 0)) ^ v1)))();
}

uint64_t sub_100A7F194()
{
  v3 = (*(v1 + 8 * (v0 ^ 0x2C0D)))(1032);
  *(v2 - 224) = v0 ^ 0x4588;
  return (*(v1 + 8 * (((v3 == 0) * (v0 ^ 0x411F ^ (7 * (v0 ^ 0x5462)))) ^ v0)))(0);
}

uint64_t sub_100A7F32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57)
{
  (*(v58 + 8 * (a57 + 21713)))(STACK[0x2A8]);
  (*(v58 + 8 * (a57 + 21713)))(v57);
  return (*(v58 + 8 * (a57 + 8)))(a10);
}

uint64_t sub_100A7F36C@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 3198;
  v6 = 1917435887 * ((((v4 - 240) | 0x2F4E346B38C40DC5) - (v4 - 240) + ((v4 - 240) & 0xD0B1CB94C73BF238)) ^ 0xFA455895DE7F56C3);
  *(v4 - 228) = v1 - 3198 - v6 - 1094305159;
  *(v2 + 1040) = a1 - v6 - ((a1 << ((v1 + 100) ^ 0xD0u)) & 0xAF7C07E1364426CELL) - 0x2841FC0F64DDEC99;
  v7 = (*(v3 + 8 * ((v1 - 3198) ^ 0x6540)))(v4 - 240);
  return (*(v3 + 8 * v5))(v7);
}

uint64_t sub_100A7F448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  STACK[0x1A38] = 0;
  STACK[0x1B20] = 0;
  *(v3 + 688) = 0;
  return (*(v4 + 8 * (((((a2 == a1) ^ (v2 + 48)) & 1) * (((v2 - 1768090953) & 0x6962BF67) - 6475)) ^ v2)))();
}

uint64_t sub_100A7F4EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, unint64_t a62)
{
  STACK[0x12A0] = 0;
  LODWORD(STACK[0x2B90]) = 0;
  LODWORD(STACK[0x3B08]) = a4 ^ 0x4976;
  v63 = *(v62 + 8 * ((22 * (LODWORD(STACK[0x1BA0]) == (a4 ^ 0x4976) - 21150)) | a4));
  LODWORD(STACK[0x3980]) = 3;
  STACK[0x3808] = 7;
  v64 = STACK[0x3CF8];
  STACK[0x32E0] = STACK[0x3CF8];
  STACK[0x3D50] = v64;
  STACK[0x3AD8] = a62;
  STACK[0x32D8] = STACK[0x2618];
  v65 = STACK[0x3318];
  LODWORD(STACK[0x3278]) = STACK[0x3318];
  LODWORD(v64) = STACK[0x1AA8];
  LODWORD(STACK[0x3298]) = STACK[0x1AA8];
  LODWORD(STACK[0x3270]) = STACK[0x2B20];
  LODWORD(STACK[0x39A8]) = v64;
  v66 = STACK[0x32E8];
  LODWORD(STACK[0x3B00]) = STACK[0x32E8];
  v67 = STACK[0x2630];
  LODWORD(STACK[0x3280]) = STACK[0x2630];
  LODWORD(STACK[0x3290]) = STACK[0x2100];
  LODWORD(STACK[0x3258]) = STACK[0x2424];
  LODWORD(STACK[0x32D0]) = STACK[0x3830];
  v68 = STACK[0x3E18];
  LODWORD(STACK[0x2B48]) = STACK[0x3E18];
  LODWORD(STACK[0x3288]) = v68;
  LODWORD(STACK[0x3AE8]) = STACK[0x2500];
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x3AE0]) = STACK[0x21F4];
  LODWORD(STACK[0x3260]) = STACK[0x3810];
  LODWORD(STACK[0x1C28]) = v66;
  LODWORD(STACK[0x2A48]) = v68;
  LODWORD(STACK[0x1A78]) = v68;
  LODWORD(STACK[0x2B50]) = v67;
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  v69 = STACK[0x23B0];
  LODWORD(STACK[0x1954]) = v67;
  LODWORD(STACK[0x183C]) = v69;
  return v63(v65, a1, a2, a3, 10, v69, v65);
}

uint64_t sub_100A7F65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v8 - 112) = a6;
  *(v8 - 100) = (v6 + 1123713167) & 0xBD055873;
  v9 = *(v7 + 8 * ((((((*(v7 + 8 * (v6 ^ 0x44AB)))(1028) == 0) ^ (v6 - 113)) & 1) * ((132 * (v6 ^ 0x3F2B)) ^ 0x3F50)) ^ v6));
  return v9(0, 4294924411);
}

uint64_t sub_100A7F718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = STACK[0x630];
  v12 = (((1645 * a8 + 2113825) % 0xA88u) ^ 0x3BDF7EFEB77E89E3) + STACK[0x638] + (((LODWORD(STACK[0x630]) - 505676041) & 0x1E23EEDF ^ 0x5D03) & (2 * ((1645 * a8 + 2113825) % 0xA88u)));
  v13 = *(v12 + 0x7E7D37A50F645C08);
  v14 = *STACK[0x650];
  LODWORD(v12) = v12 + 1216443933;
  v15 = *STACK[0x660];
  v16 = v12 + *(v15 + (v14 & STACK[0x648]));
  v17 = 76 * v12;
  v18 = *v8 ^ v10;
  v19 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v16 - 963544004) & v18)) ^ v13 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v16 - 963544002) & v18)) ^ v17 & 0xFC;
  v20 = STACK[0x640] + 4 * ((551 * (((v19 ^ 0x78686ACD) - 1576194563) ^ ((v19 ^ 0x45FB43B0) - 1617034110) ^ ((v19 ^ 0x3D93290Du) - 403280323)) - 268052182) % 0x1D48);
  v21 = *(v15 + (v14 & STACK[0x658]));
  v22 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v20 + v21 + 673210726) & v18)) ^ *(v20 - 0x34EE34220E8AC3B8) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v20 + v21 + v9) & v18));
  v23 = (v22 ^ (-1962600273 * v20)) >> 24;
  v24 = ((v22 ^ (333999 * v20)) >> 16) ^ 0x25;
  LOWORD(v20) = v22 ^ (6319 * v20);
  v25 = 1645 * (((v23 ^ 0xBDC1F48) - 1626079584) ^ ((v23 ^ 0x9995D556) + 224015490) ^ ((v23 ^ 0x9249CABD) + 109456235)) - 999815899;
  v26 = 1645 * v24 + 3391990 - 2696 * (((12744711 * (1645 * v24 + 3391990)) >> 32) >> 3);
  v27 = 1645 * (((v20 ^ 0xE03740EC) + 190319491) ^ ((v20 ^ 0x20FBF8AF) - 879447102) ^ ((v20 ^ 0xC0CCB88A) + 732165093)) + 638229358;
  v28 = 1645 * (BYTE1(v20) ^ 0x79) + 3391990 - 2696 * (((12744711 * (1645 * (BYTE1(v20) ^ 0x79u) + 3391990)) >> 32) >> 3);
  v29 = ((v25 % 0xA88) ^ 0xFE3BFF7FF6CFFEDALL) + STACK[0x638] + ((2 * (v25 % 0xA88)) & 0x1DB4);
  v30 = (v26 ^ 0xF7EF9FFC71F4BF9CLL) + STACK[0x638] + ((2 * v26) & 0x1F38);
  v31 = ((v27 % 0xA88) ^ 0x49EBBFBFDBF78FFFLL) + 2 * (v27 % 0xA88) + STACK[0x638];
  v32 = (v28 ^ 0xBF7BB5FEEBCD7FBFLL) + STACK[0x638] + ((2 * v28) & 0x1F7E);
  v33 = *(v15 + (v14 & 0xC6917C3C));
  v34 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v30 - 1911865244 + v33 - 963544004) & v18)) ^ *(v30 - 0x3D92E958AB11D9B1) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v30 - 1911865244 + v33 - 963544002) & v18)) ^ (76 * (v30 + 100));
  LODWORD(v30) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v32 + 338853953 + v33 - 963544004) & v18)) ^ *(v32 - 0x51EFF5B24EA99D4) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v32 + 338853953 + v33 - 963544002) & v18)) ^ (76 * (v32 + 65));
  v35 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v31 + 604532737 + v33 - 963544004) & v18)) ^ *(v31 + 0x7070F6E3EAEB55ECLL) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v31 + 604532737 + v33 - 963544002) & v18)) ^ (76 * (v31 + 1));
  v36 = STACK[0x640] + 4 * ((551 * a8 + 710790) % 0x1D48u);
  *(v36 - 0x34EE34220E8AC3B8) = (-1962600273 * v36) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v21 + v36 + 673210726) & v18)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v21 + v36 + v9) & v18)) ^ 0x219068BB ^ (((((((((*((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v29 + 154140966 + v33 - 963544004) & v18)) ^ *(v29 - 0x43DF48DC2FED18EFLL) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v29 + 154140966 + v33 - 963544002) & v18)) ^ (76 * (v29 + 38))) << 16) ^ 0xC97B3C) & ((v34 << 8) ^ 0xFF0B3C) | (v34 << 8) & 0x8400) ^ 0x4BA6A0) & (v30 ^ 0xFFFF8C) ^ v30 & 0x63) << 8) ^ 0x7068ED32) & (v35 ^ 0xFFFFFF02) | v35 & 0xCD);
  return (*(STACK[0x668] + 8 * ((445 * (a8 == 255)) ^ v11)))();
}

uint64_t sub_100A7FD54(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, unsigned int a6, int a7, int a8)
{
  v15 = *(v13 + 4 * (a7 + v11 * a4 - ((((a7 + v11 * a4) >> 6) * a5) >> 32) * a8));
  *(v12 + ((a6 - 18311) ^ (v10 - 3302)) + v11 * v8 - ((((((a6 - 18311) ^ (v10 - 3302)) + v11 * v8) * v9) >> 32) >> 9) * a3) = (((v15 ^ 0x9E) + 125) ^ ((v15 ^ 0x7B) - 102) ^ ((v15 ^ 0xC) - 17)) + 84;
  return (*(v14 + 8 * ((10856 * (v11 == 255)) ^ a6)))();
}

uint64_t sub_100A7FF00@<X0>(int a1@<W3>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7)
{
  if (a7 < 0x1AC31582 != (a1 + 448992706) < 0x1AC31582)
  {
    v9 = (a1 + 448992706) < 0x1AC31582;
  }

  else
  {
    v9 = a1 + 448992706 > a7;
  }

  return (*(a2 + 8 * ((v9 * ((v7 + v8 + 997712987) & 0xC48857F7 ^ 0x56DF)) ^ a6)))();
}

uint64_t sub_100A7FF74@<X0>(int a1@<W1>, unsigned int a2@<W2>, unsigned int a3@<W3>, int a4@<W4>, int a5@<W5>, _DWORD *a6@<X6>, int a7@<W8>)
{
  v13 = ((16 * v9) | ((v9 < ((v10 + a7 + 488) ^ (a4 + 473))) << 36)) + v8;
  *v13 = 0;
  *(v13 + 8) = a5;
  *(v13 + 12) = a5;
  v14 = v9 + a1 < *a6 + a3;
  if (v9 + a1 < a3 != *a6 > a2)
  {
    v14 = *a6 > a2;
  }

  return (*(v11 + 8 * ((!v14 * v12) ^ v7)))();
}

uint64_t sub_100A80C90(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v25 = ((v14 ^ v16 ^ v10 & v13) + v24 - ((2 * (v14 ^ v16 ^ v10 & v13)) & 0x10)) ^ v19;
  v26 = a2 ^ ((v25 ^ v15) + a1) ^ *(*(v18 + 8 * v9) + 4 * (v25 ^ 0x93u) - 12);
  v27 = a5 ^ ((v26 ^ a3) + v21 - 2 * ((v26 ^ a3) & v20 ^ v26 & a4));
  *(*(v23 - 184) + 4 * (v10 & v13)) = a8 ^ (v27 - (a6 & (2 * v27)) + a7);
  return (*(v22 + 8 * ((((v12 | v11) >> 31) * v17) ^ v8)))();
}

uint64_t sub_100A81020()
{
  STACK[0x600] = v1 + 112;
  STACK[0x610] = v1 + 132;
  v4 = STACK[0x770];
  *(v3 - 208) = (LODWORD(STACK[0x770]) - 1723112053) ^ (1917435887 * ((~((v3 - 216) | 0x67942360) + ((v3 - 216) & 0x67942360)) ^ 0x7ED08799));
  *(v3 - 216) = STACK[0x2B8];
  v5 = (*(v0 + 8 * (v4 ^ 0x7FB0)))(v3 - 216);
  *(v1 + 64) = 0;
  *(v1 + 88) = -1373381432;
  *(v1 + 72) = 179576377;
  *(v1 + 76) = -2109958479;
  *(v1 + 80) = -179576378;
  *(v1 + 84) = 2109958478;
  STACK[0x6D0] = 8 * v1;
  *(v1 + 104) = 0x200000014;
  v6 = *(v0 + 8 * ((v4 + 14087) ^ 0x2CF | v4));
  STACK[0x710] = v1;
  STACK[0x740] = v2;
  return v6(v5);
}

uint64_t sub_100A811F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, uint64_t a12, uint64_t a13)
{
  a11 = v16 - 289235981 * (&a11 ^ 0x8782D03F) + 7750;
  a12 = v13;
  a13 = v14;
  v17 = (*(v15 + 8 * (v16 ^ 0x46E4)))(&a11);
  return (*(v15 + 8 * v16))(v17);
}

uint64_t sub_100A813A0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, int a8)
{
  LODWORD(STACK[0x3B10]) |= LODWORD(STACK[0x5138]);
  v19 = a8 & 0xD4 ^ 0x10;
  LODWORD(STACK[0x5138]) = a8 ^ (2 * ((a8 ^ 0x34) & (2 * ((a8 ^ 0x34) & (2 * ((a8 ^ 0x34) & (2 * ((a8 ^ 0x34) & (2 * v19) | v19)) ^ v19)) ^ v19)) ^ v19));
  LOBYTE(v19) = v17 & 0x5A ^ 0x53;
  v20 = v9 & 0xB4 | 0xB;
  v21 = v20 ^ v9 & 0x7E;
  v22 = v9 ^ (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * v20) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21));
  v23 = v13 & 0x7E ^ 0xE5;
  v24 = (v22 ^ v12) << 8;
  v25 = (((v13 ^ (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * (v23 ^ v13 & 0xA)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23))) ^ 0xFFFC49) & ~(v24 & 0xFF00FFFF | (((v17 ^ (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * (v19 ^ v17 & 0x2E)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0x5A) << 16)) | v24 & 0x300) << 8;
  LODWORD(STACK[0x38A0]) = v25 ^ 0x140FF;
  LODWORD(STACK[0x5360]) = v25 & 0x70BE8D00;
  v26 = a2 & 0x2A ^ 0xDB;
  v27 = STACK[0x5358];
  LOBYTE(v24) = STACK[0x5358] & 0x24 | 0x58;
  v28 = (v27 ^ (2 * ((v27 ^ 0x34) & (2 * ((v27 ^ 0x34) & (2 * ((v27 ^ 0x34) & (2 * ((v27 ^ 0x34) & (2 * v24) ^ v24)) ^ v24)) ^ v24)) ^ v24)));
  LODWORD(STACK[0x3460]) = v28;
  v29 = (v28 << 8) & 0xFF00FFFF | (((a2 ^ (2 * ((a2 ^ 0x34) & (2 * ((a2 ^ 0x34) & (2 * ((a2 ^ 0x34) & (2 * ((a2 ^ 0x34) & (2 * ((a2 ^ 0x34) & (2 * ((a2 ^ 0x34) & 0x1E ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26))) ^ 0x2A) << 16);
  v30 = STACK[0x5368];
  LOBYTE(v25) = STACK[0x5368] & 0x20 | 0xDE;
  v31 = STACK[0x5370] & 0x54 ^ 0xFFFFFFD0;
  LODWORD(STACK[0x5358]) = LODWORD(STACK[0x5370]) ^ (2 * ((LODWORD(STACK[0x5370]) ^ 0x34) & (2 * ((LODWORD(STACK[0x5370]) ^ 0x34) & (2 * ((LODWORD(STACK[0x5370]) ^ 0x34) & (2 * ((LODWORD(STACK[0x5370]) ^ 0x34) & (2 * v31) | v31)) ^ v31)) ^ v31)) ^ v31));
  v32 = (((v30 ^ (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * v25) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25))) ^ 0xA34976) & ~v29 | v29 & 0x5CB600) << 8;
  LODWORD(STACK[0x5368]) = v32 ^ 0x108201FF;
  LODWORD(STACK[0x5370]) = v32 & 0x6F78AA00;
  v33 = STACK[0x5398];
  v34 = STACK[0x5398] & 0x9A ^ 0x33;
  v35 = (v33 ^ 0x34) & (2 * ((v33 ^ 0x34) & (2 * ((v33 ^ 0x34) & (2 * ((v33 ^ 0x34) & (2 * ((v33 ^ 0x34) & (2 * (v34 ^ v33 & 0x2E)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34;
  v36 = STACK[0x5378];
  v37 = STACK[0x5378] & 0x8C ^ 0x2C;
  v38 = STACK[0x5380];
  v39 = STACK[0x5380] & 2 ^ 0xEF;
  v41 = (((v36 ^ (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & (2 * v37) ^ v37)) ^ v37)) ^ v37)) ^ v37))) ^ 0x8C) << 16) | (((v38 ^ (2 * ((v38 ^ 0x34) & (2 * ((v38 ^ 0x34) & (2 * ((v38 ^ 0x34) & (2 * ((v38 ^ 0x34) & (2 * ((v38 ^ 0x34) & (2 * ((v38 ^ 0x34) & 0x36 ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39))) ^ 2) << 8);
  v42 = STACK[0x5390];
  v43 = STACK[0x5390] & 0x46 ^ 0xC9;
  v44 = ((v42 ^ (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * (v43 ^ v42 & 0x32)) ^ v43)) ^ v43)) ^ v43)) ^ v43)) ^ v43))) ^ 0x8555AF) & ~v41 | v41 & 0x7AAA00;
  v45 = STACK[0x5398] & 0x18 ^ 0xFFFFFFF2;
  LODWORD(STACK[0x3470]) = LODWORD(STACK[0x5398]) ^ (2 * v35);
  LODWORD(STACK[0x5378]) = v33 ^ (2 * ((v33 ^ 0x34) & (2 * ((v33 ^ 0x34) & (2 * ((v33 ^ 0x34) & (2 * ((v33 ^ 0x34) & (2 * ((v33 ^ 0x34) & (2 * v45) ^ v45)) ^ v45)) ^ v45)) ^ v45)) ^ v45));
  LODWORD(STACK[0x5390]) = (v44 << 8) ^ 0x42AA02FF;
  LODWORD(STACK[0x5398]) = (v44 << 8) & 0xB9553D00;
  v46 = STACK[0x53B8];
  LOBYTE(v35) = STACK[0x53B8] & 0xEC ^ 0xBC;
  LOBYTE(v45) = v8 & 0x88 ^ 0xAA;
  v47 = STACK[0x53C0];
  v48 = STACK[0x53C0] & 0x6E ^ 0x7D;
  LODWORD(STACK[0x5380]) = v47 ^ (2 * ((v47 ^ 0x34) & (2 * ((v47 ^ 0x34) & (2 * ((v47 ^ 0x34) & (2 * ((v47 ^ 0x34) & (2 * ((v47 ^ 0x34) & (2 * (v48 ^ v47 & 0x1A)) ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48));
  v49 = (((v46 ^ (2 * ((v46 ^ 0x34) & (2 * ((v46 ^ 0x34) & (2 * ((v46 ^ 0x34) & (2 * ((v46 ^ 0x34) & (2 * v35) ^ v35)) ^ v35)) ^ v35)) ^ v35))) ^ 0xEC) << 16) | (((v8 ^ (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * v45) | v45)) ^ v45)) ^ v45)) ^ v45)) ^ v45))) ^ 0x88) << 8);
  v50 = v18 & 0x68 ^ 0x7A;
  LODWORD(STACK[0x53B8]) = ((v18 ^ (2 * ((v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & (2 * v50) ^ v50)) ^ v50)) ^ v50)) ^ v50)) ^ v50))) ^ 0xCB75AF) & ~v49 | v49 & 0x348A00;
  v51 = v11 & 0x9A ^ 0x33;
  LOBYTE(v36) = v15 & 0x7E ^ 0xE5;
  v52 = (((v11 ^ (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * (v51 ^ v11 & 0x2E)) ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51))) ^ 0x9A) << 8) | (((v15 ^ (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * (v36 ^ v15 & 0xA)) ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36))) ^ 0x7E) << 16);
  LOBYTE(v36) = v16 & 0x16 ^ 0xF1;
  LODWORD(STACK[0x37E8]) = ((v16 ^ (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * (v36 ^ v16 & 0x22)) ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36))) ^ 0xA385AE) & (v52 ^ 0xB3B5FF) | v52 & 0x5C7A00;
  LODWORD(STACK[0x3750]) = v10 ^ (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * (v10 & 0xB4)) ^ v10 & 0xB4)) ^ v10 & 0xB4)) ^ v10 & 0xB4)) ^ (v10 & 0xB4 | 0x40)));
  v53 = STACK[0x5388];
  LOBYTE(v52) = STACK[0x5388] & 0x90 ^ 0xB6;
  LOBYTE(v52) = v53 ^ (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * v52) ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52));
  v54 = STACK[0x53A0];
  LOBYTE(v36) = STACK[0x53A0] & 0x5C ^ 0x54;
  v55 = STACK[0x53A8];
  v56 = STACK[0x53A8] & 0xF2 ^ 0x27;
  v57 = (((v54 ^ (2 * ((v54 ^ 0x34) & (2 * ((v54 ^ 0x34) & (2 * ((v54 ^ 0x34) & (2 * ((v54 ^ 0x34) & (2 * v36) ^ v36)) ^ v36)) ^ v36)) ^ v36))) ^ 0x5C) << 16) | (((v55 ^ (2 * ((v55 ^ 0x34) & (2 * ((v55 ^ 0x34) & (2 * ((v55 ^ 0x34) & (2 * ((v55 ^ 0x34) & (2 * ((v55 ^ 0x34) & (2 * (v56 ^ v55 & 6)) ^ v56)) ^ v56)) ^ v56)) ^ v56)) ^ v56))) ^ 0xF2) << 8);
  v58 = (v52 ^ 0xD828DD) & ~v57 | v57 & 0x27D700;
  v59 = STACK[0x53B0];
  v60 = STACK[0x53B0] & 0xF0 ^ 0x26;
  LODWORD(STACK[0x53A8]) = v59 ^ (2 * ((v59 ^ 0x34) & (2 * ((v59 ^ 0x34) & (2 * ((v59 ^ 0x34) & (2 * ((v59 ^ 0x34) & (2 * ((v59 ^ 0x34) & (2 * v60) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60));
  v58 <<= 8;
  LODWORD(STACK[0x53B0]) = v58 ^ 0x279632FF;
  LODWORD(STACK[0x53C0]) = v58 & 0xD8498000;
  v61 = STACK[0x53C8];
  LOBYTE(v59) = STACK[0x53C8] & 0xEC ^ 0xBC;
  v62 = STACK[0x53D0];
  v63 = STACK[0x53D0] & 0xFA ^ 0x23;
  LODWORD(STACK[0x53D0]) = v62 ^ (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * (v63 ^ v62 & 0xE)) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63));
  v64 = STACK[0x53D8];
  LOBYTE(v63) = STACK[0x53D8] & 0xC0 | 0xE;
  v65 = STACK[0x53E0];
  LOBYTE(v60) = STACK[0x53E0] & 0x18 ^ 0x72;
  v66 = (((v64 ^ (2 * ((v64 ^ 0x34) & (2 * ((v64 ^ 0x34) & (2 * ((v64 ^ 0x34) & (2 * ((v64 ^ 0x34) & (2 * ((v64 ^ 0x34) & 0x1C ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63))) ^ 0xC0) << 16) | (((v65 ^ (2 * ((v65 ^ 0x34) & (2 * ((v65 ^ 0x34) & (2 * ((v65 ^ 0x34) & (2 * ((v65 ^ 0x34) & (2 * ((v65 ^ 0x34) & (2 * v60) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60))) ^ 0x18) << 8);
  LODWORD(STACK[0x53E0]) = ((v61 ^ (2 * ((v61 ^ 0x34) & (2 * ((v61 ^ 0x34) & (2 * ((v61 ^ 0x34) & (2 * ((v61 ^ 0x34) & (2 * v59) ^ v59)) ^ v59)) ^ v59)) ^ v59))) ^ 0xD55293) & ~v66 | v66 & 0x2AAD00;
  v67 = STACK[0x5400];
  LOBYTE(v66) = STACK[0x5400] & 0x1A ^ 0x73;
  v68 = STACK[0x5408];
  LOBYTE(v61) = STACK[0x5408] & 0xCE ^ 0x8D;
  v69 = (((v67 ^ (2 * ((v67 ^ 0x34) & (2 * ((v67 ^ 0x34) & (2 * ((v67 ^ 0x34) & (2 * ((v67 ^ 0x34) & (2 * ((v67 ^ 0x34) & (2 * (v66 ^ v67 & 0x2E)) ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ v66))) ^ 0x1A) << 16) | (((v68 ^ (2 * ((v68 ^ 0x34) & (2 * ((v68 ^ 0x34) & (2 * ((v68 ^ 0x34) & (2 * ((v68 ^ 0x34) & (2 * ((v68 ^ 0x34) & (2 * (v61 ^ v68 & 0x3A)) ^ v61)) ^ v61)) ^ v61)) ^ v61)) ^ v61))) ^ 0xCE) << 8);
  v70 = STACK[0x5410];
  LOBYTE(v60) = STACK[0x5410] & 0x78 ^ 0x62;
  v71 = ((v70 ^ (2 * ((v70 ^ 0x34) & (2 * ((v70 ^ 0x34) & (2 * ((v70 ^ 0x34) & (2 * ((v70 ^ 0x34) & (2 * ((v70 ^ 0x34) & (2 * v60) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60))) ^ 0xCA01AE) & ~v69 | v69 & 0x35FE00;
  v72 = STACK[0x5420];
  LOBYTE(v60) = STACK[0x5420] & 0x82 ^ 0xAF;
  v73 = STACK[0x5430];
  LOBYTE(v70) = STACK[0x5430] & 0x5E ^ 0xD5;
  v74 = (((v72 ^ (2 * ((v72 ^ 0x34) & (2 * ((v72 ^ 0x34) & (2 * ((v72 ^ 0x34) & (2 * ((v72 ^ 0x34) & (2 * ((v72 ^ 0x34) & (2 * ((v72 ^ 0x34) & 0x36 ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60))) ^ 0x82) << 16) | (((v73 ^ (2 * ((v73 ^ 0x34) & (2 * ((v73 ^ 0x34) & (2 * ((v73 ^ 0x34) & (2 * ((v73 ^ 0x34) & (2 * ((v73 ^ 0x34) & (2 * (v70 ^ v73 & 0xAA)) ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ v70))) ^ 0x5E) << 8);
  v75 = STACK[0x5440];
  LOBYTE(v62) = STACK[0x5440] & 0xF6 ^ 0xA1;
  v76 = (((v75 ^ (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * (v75 & (2 * v62) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62))) ^ 0x832BC7) & ~v74 | v74 & 0x7CD400) << 8;
  LODWORD(STACK[0x5410]) = v76 ^ 0x7CC042FF;
  LODWORD(STACK[0x5420]) = v76 & 0x21C8D00;
  v71 <<= 8;
  LODWORD(STACK[0x54D0]) = v71 ^ 0x103621FF;
  LODWORD(STACK[0x5440]) = v71 & 0xADC88E00;
  v77 = STACK[0x54E0];
  LOBYTE(v76) = STACK[0x54E0] & 0xC8 ^ 0x8A;
  v78 = STACK[0x54F0];
  LOBYTE(v68) = STACK[0x54F0] & 0x6A ^ 0xFB;
  v79 = (((v78 ^ (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & 0x1E ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ v68))) ^ 0x6A) << 8) | (((v77 ^ (2 * ((v77 ^ 0x34) & (2 * ((v77 ^ 0x34) & (2 * ((v77 ^ 0x34) & (2 * ((v77 ^ 0x34) & (2 * ((v77 ^ 0x34) & (2 * v76) | v76)) ^ v76)) ^ v76)) ^ v76)) ^ v76))) ^ 0xC8) << 16);
  v80 = STACK[0x5500];
  LOBYTE(v71) = STACK[0x5500] & 0xB4 | 3;
  v81 = v71 ^ STACK[0x5500] & 0xE;
  v82 = (((v80 ^ (2 * ((v80 ^ 0x34) & (2 * ((v80 ^ 0x34) & (2 * ((v80 ^ 0x34) & (2 * ((v80 ^ 0x34) & (2 * ((v80 ^ 0x34) & (2 * (v80 & (2 * v71) ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ v81))) ^ 0x6DD195) & ~v79 | v79 & 0x922E00) << 8;
  LODWORD(STACK[0x5500]) = v82 ^ 0x822680FF;
  LODWORD(STACK[0x5510]) = v82 & 0x50D95600;
  v83 = STACK[0x5520];
  LOBYTE(v82) = STACK[0x5520] & 0xFC ^ 0x24;
  v84 = STACK[0x5530];
  LOBYTE(v79) = STACK[0x5530] & 0x94 ^ 0xB0;
  v85 = (((v84 ^ (2 * ((v84 ^ 0x34) & (2 * ((v84 ^ 0x34) & (2 * ((v84 ^ 0x34) & (2 * ((v84 ^ 0x34) & (2 * v79) ^ v79)) ^ v79)) ^ v79)) ^ v79))) ^ 0x94) << 8) | (((v83 ^ (2 * ((v83 ^ 0x34) & (2 * ((v83 ^ 0x34) & (2 * ((v83 ^ 0x34) & (2 * ((v83 ^ 0x34) & (2 * ((v83 ^ 0x34) & (2 * v82) ^ v82)) ^ v82)) ^ v82)) ^ v82)) ^ v82))) ^ 0xFC) << 16);
  v86 = STACK[0x5540];
  LOBYTE(v82) = STACK[0x5540] & 0x88 ^ 0xAA;
  v87 = ((v86 ^ (2 * ((v86 ^ 0x34) & (2 * ((v86 ^ 0x34) & (2 * ((v86 ^ 0x34) & (2 * ((v86 ^ 0x34) & (2 * ((v86 ^ 0x34) & (2 * v82) | v82)) ^ v82)) ^ v82)) ^ v82)) ^ v82))) ^ 0xBB9AD3) & ~v85 | v85 & 0x446500;
  v88 = STACK[0x5600];
  LOBYTE(v85) = STACK[0x5600] & 0xA2 ^ 0x1F;
  LOBYTE(v84) = v88 ^ (2 * ((v88 ^ 0x34) & (2 * ((v88 ^ 0x34) & (2 * ((v88 ^ 0x34) & (2 * ((v88 ^ 0x34) & (2 * ((v88 ^ 0x34) & (2 * ((v88 ^ 0x34) & 0x16 ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ v85));
  v87 <<= 8;
  LODWORD(STACK[0x54F0]) = v87 ^ 0x406080FF;
  LODWORD(STACK[0x54C0]) = v87 & 0x1D0F2600;
  v89 = STACK[0x5610];
  LODWORD(STACK[0x5408]) = v89 ^ (2 * ((v89 ^ 0x34) & (2 * ((v89 ^ 0x34) & (2 * ((v89 ^ 0x34) & (2 * ((v89 ^ 0x34) & (2 * ((v89 ^ 0x34) & (2 * ((v89 ^ 0x34) & (2 * (v89 | 0xFFFFFFD9)) & 0xFFFFFFDF ^ (v89 | 0xFFFFFFD9))) ^ (v89 | 0xFFFFFFD9))) ^ (v89 | 0xFFFFFFD9))) ^ (v89 | 0xFFFFFFD9))) ^ (v89 | 0xFFFFFFD9))) ^ (v89 | 0xFFFFFFD9)));
  LOBYTE(v87) = a7 & 0xF6 ^ 0x21;
  v90 = (((v14 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v14 ^ 0x34)) & 0x38 ^ 0x1C) & (v14 ^ 0x34))) ^ 0x1C) & (v14 ^ 0x34))) ^ 0x1C) & (v14 ^ 0x34))) ^ 0x5C) & (v14 ^ 0x34)))) ^ 0xDC) << 16) | (((a7 ^ (2 * ((a7 ^ 0x34) & (2 * ((a7 ^ 0x34) & (2 * ((a7 ^ 0x34) & (2 * ((a7 ^ 0x34) & (2 * ((a7 ^ 0x34) & (2 * (a7 & (2 * v87) ^ v87)) ^ v87)) ^ v87)) ^ v87)) ^ v87)) ^ v87))) ^ 0xF6) << 8);
  LOBYTE(v59) = a6 & 0x1A ^ 0x73;
  v91 = (((a6 ^ (2 * ((a6 ^ 0x34) & (2 * ((a6 ^ 0x34) & (2 * ((a6 ^ 0x34) & (2 * ((a6 ^ 0x34) & (2 * ((a6 ^ 0x34) & (2 * (v59 ^ a6 & 0x2E)) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59))) ^ 0xB055EE) & ~v90 | v90 & 0x4FAA00) << 8;
  LODWORD(STACK[0x5400]) = v91 ^ 0x420A09FF;
  LODWORD(STACK[0x53C8]) = v91 & 0xBDF08600;
  LOBYTE(v91) = a5 & 0x16 ^ 0xF1;
  v92 = (LODWORD(STACK[0x3460]) << 16) | (((a5 ^ (2 * ((a5 ^ 0x34) & (2 * ((a5 ^ 0x34) & (2 * ((a5 ^ 0x34) & (2 * ((a5 ^ 0x34) & (2 * ((a5 ^ 0x34) & (2 * (v91 ^ a5 & 0x22)) ^ v91)) ^ v91)) ^ v91)) ^ v91)) ^ v91))) ^ 0x16) << 8);
  v93 = ((v92 ^ 0x79FF) & (LODWORD(STACK[0x3470]) ^ 0x207998) | v92 & 0xDF8600) << 8;
  LODWORD(STACK[0x53D8]) = v93 ^ 0x92001CFF;
  LODWORD(STACK[0x5610]) = v93 & 0x49B6E300;
  v94 = STACK[0x5790];
  LOBYTE(v93) = *(STACK[0x5790] + 228);
  LOBYTE(v92) = v93 & 0x5A ^ 0x53;
  v95 = STACK[0x57C0];
  LOBYTE(v85) = *(STACK[0x57C0] + 1821);
  LOBYTE(v89) = v85 & 0x6A ^ 0x7B;
  v96 = (((v85 ^ (2 * ((v85 ^ 0x34) & (2 * ((v85 ^ 0x34) & (2 * ((v85 ^ 0x34) & (2 * ((v85 ^ 0x34) & (2 * ((v85 ^ 0x34) & (2 * ((v85 ^ 0x34) & 0x1E ^ v89)) ^ v89)) ^ v89)) ^ v89)) ^ v89)) ^ v89))) ^ 0x6A) << 8) | (((v93 ^ (2 * ((v93 ^ 0x34) & (2 * ((v93 ^ 0x34) & (2 * ((v93 ^ 0x34) & (2 * ((v93 ^ 0x34) & (2 * ((v93 ^ 0x34) & (2 * (v92 ^ v93 & 0x2E)) ^ v92)) ^ v92)) ^ v92)) ^ v92)) ^ v92))) ^ 0x5A) << 16);
  LOBYTE(v93) = *(STACK[0x5308] + 1548);
  LOBYTE(v85) = v93 & 0x78 ^ 0xE2;
  v97 = ((v93 ^ (2 * ((v93 ^ 0x34) & (2 * ((v93 ^ 0x34) & (2 * ((v93 ^ 0x34) & (2 * ((v93 ^ 0x34) & (2 * ((v93 ^ 0x34) & (2 * v85) ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ v85))) ^ 0x329717) & ~v96 | v96 & 0xCD6800;
  LOBYTE(v96) = *(STACK[0x5308] + 1381);
  LOBYTE(v85) = v96 & 0x70 ^ 0xE6;
  v98 = v96 ^ (2 * ((v96 ^ 0x34) & (2 * ((v96 ^ 0x34) & (2 * ((v96 ^ 0x34) & (2 * ((v96 ^ 0x34) & (2 * ((v96 ^ 0x34) & (2 * v85) ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ v85));
  LODWORD(STACK[0x3470]) = (v97 << 8) ^ 0x4D2010FF;
  LODWORD(STACK[0x53A0]) = (v97 << 8) & 0x825DA200;
  LOBYTE(v96) = *(STACK[0x55F0] + 1662);
  LOBYTE(v85) = v96 & 0x90 ^ 0xB6;
  LOBYTE(v76) = *(STACK[0x56C0] + 1457);
  LOBYTE(v88) = v76 & 0x76 ^ 0x61;
  v99 = (((v96 ^ (2 * ((v96 ^ 0x34) & (2 * ((v96 ^ 0x34) & (2 * ((v96 ^ 0x34) & (2 * ((v96 ^ 0x34) & (2 * ((v96 ^ 0x34) & (2 * v85) ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ v85))) ^ 0x90) << 16) | (((v76 ^ (2 * ((v76 ^ 0x34) & (2 * ((v76 ^ 0x34) & (2 * ((v76 ^ 0x34) & (2 * ((v76 ^ 0x34) & (2 * ((v76 ^ 0x34) & (2 * (v88 ^ v76 & 2)) ^ v88)) ^ v88)) ^ v88)) ^ v88)) ^ v88))) ^ 0x76) << 8);
  v100 = STACK[0x5700];
  LOBYTE(v85) = *(STACK[0x5700] + 1434);
  LOBYTE(v76) = v85 & 0xCC ^ 0xC;
  v101 = ((v85 ^ (2 * ((v85 ^ 0x34) & (2 * ((v85 ^ 0x34) & (2 * ((v85 ^ 0x34) & (2 * ((v85 ^ 0x34) & (2 * v76) ^ v76)) ^ v76)) ^ v76)) ^ v76))) ^ 0xBC9410) & ~v99 | v99 & 0x436B00;
  v102 = STACK[0x55E0];
  LOBYTE(v85) = *(STACK[0x55E0] + 926);
  LOBYTE(v76) = v85 & 0x2E ^ 0xDD;
  v103 = v85 ^ (2 * ((v85 ^ 0x34) & (2 * ((v85 ^ 0x34) & (2 * ((v85 ^ 0x34) & (2 * ((v85 ^ 0x34) & (2 * ((v85 ^ 0x34) & (2 * (v76 ^ v85 & 0x1A)) ^ v76)) ^ v76)) ^ v76)) ^ v76)) ^ v76));
  LODWORD(STACK[0x54E0]) = (v101 << 8) & 0x72345A00;
  LOBYTE(v101) = *(STACK[0x5740] + 3634);
  LOBYTE(v85) = v101 & 0x12 ^ 0x77;
  v104 = STACK[0x5770];
  LOBYTE(v76) = *(STACK[0x5770] + 2534);
  LOBYTE(v88) = v76 & 0xF0 ^ 0xA6;
  v105 = (((v76 ^ (2 * ((v76 ^ 0x34) & (2 * ((v76 ^ 0x34) & (2 * ((v76 ^ 0x34) & (2 * ((v76 ^ 0x34) & (2 * ((v76 ^ 0x34) & (2 * v88) ^ v88)) ^ v88)) ^ v88)) ^ v88)) ^ v88))) ^ 0xF0) << 8) | (((v101 ^ (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * (v85 ^ v101 & 0x26)) ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ v85))) ^ 0x12) << 16);
  v106 = *(v95 + 61);
  v107 = v106 & 0xFFFFFFE4 ^ 0x38;
  v108 = v106 ^ (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * v107) ^ v107)) ^ v107)) ^ v107)) ^ v107));
  LOBYTE(v106) = *(STACK[0x57A0] + 2610);
  LOBYTE(v107) = v106 & 0x68 ^ 0x7A;
  LODWORD(STACK[0x5388]) = ((((v106 ^ (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * v107) ^ v107)) ^ v107)) ^ v107)) ^ v107)) ^ v107))) ^ 0xA6A36E) & ~v105 | v105 & 0x595C00) << 8) & 0x3774AE00;
  LOBYTE(v106) = *(STACK[0x54A0] + 3361);
  LOBYTE(v105) = v106 & 0x7C ^ 0xE4;
  LOBYTE(v106) = v106 ^ (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * v105) ^ v105)) ^ v105)) ^ v105)) ^ v105));
  LOBYTE(v105) = *(v100 + 3983);
  LOBYTE(v107) = v105 & 0xF2 ^ 0xA7;
  LOBYTE(v88) = *(STACK[0x5760] + 509);
  LOBYTE(v48) = v88 & 0x68 ^ 0xFA;
  v109 = (((v88 ^ (2 * ((v88 ^ 0x34) & (2 * ((v88 ^ 0x34) & (2 * ((v88 ^ 0x34) & (2 * ((v88 ^ 0x34) & (2 * ((v88 ^ 0x34) & (2 * v48) ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48))) ^ 0x68) << 8) | (((v105 ^ (2 * ((v105 ^ 0x34) & (2 * ((v105 ^ 0x34) & (2 * ((v105 ^ 0x34) & (2 * ((v105 ^ 0x34) & (2 * ((v105 ^ 0x34) & (2 * (v107 ^ v105 & 6)) ^ v107)) ^ v107)) ^ v107)) ^ v107)) ^ v107))) ^ 0xF2) << 16);
  LOBYTE(v105) = *(STACK[0x52F8] + 691);
  LOBYTE(v88) = v105 & 0x84 | 0x28;
  LOBYTE(v105) = v105 ^ (2 * ((v105 ^ 0x34) & (2 * ((v105 ^ 0x34) & (2 * ((v105 ^ 0x34) & (2 * ((v105 ^ 0x34) & (2 * ((v105 ^ 0x34) & (2 * v88) ^ v88)) ^ v88)) ^ v88)) ^ v88)) ^ v88));
  LODWORD(STACK[0x5600]) = (((v106 ^ 0xE354F7) & ~v109 | v109 & 0x1CAB00) << 8) & 0x38257800;
  LOBYTE(v109) = *(v102 + 2519);
  LOBYTE(v68) = v109 & 0xB0 | 6;
  LOBYTE(v88) = *(v104 + 3596);
  LOBYTE(v48) = (v88 & 0xB4 | 0x41) ^ v88 & 0x82;
  v110 = (((v109 ^ (2 * ((v109 ^ 0x34) & (2 * ((v109 ^ 0x34) & (2 * ((v109 ^ 0x34) & (2 * ((v109 ^ 0x34) & (2 * ((v109 ^ 0x34) & (2 * v68) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ v68))) ^ 0xB0) << 16) | (((v88 ^ (2 * ((v88 ^ 0x34) & (2 * ((v88 ^ 0x34) & (2 * ((v88 ^ 0x34) & (2 * ((v88 ^ 0x34) & (2 * ((v88 ^ 0x34) & (2 * (v88 & (2 * v48) ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48))) ^ 0x36) << 8);
  LOBYTE(v68) = *(STACK[0x5710] + 1571);
  v111 = ((v68 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v68 ^ 0x34)) & 0x28 ^ 0x1C) & (v68 ^ 0x34))) ^ 0x1C) & (v68 ^ 0x34))) ^ 0x1C) & (v68 ^ 0x34))) ^ 0x5C) & (v68 ^ 0x34)))) ^ 0x5DE146) & ~v110 | v110 & 0xA21E00;
  LOBYTE(v106) = *(v104 + 3505);
  LOBYTE(v110) = v106 & 0x1C ^ 0xF4;
  LOBYTE(v68) = *(v94 + 281);
  LOBYTE(v100) = v68 & 0xE6 ^ 0xB9;
  v112 = (((v106 ^ (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * v110) ^ v110)) ^ v110)) ^ v110)) ^ v110))) ^ 0x1C) << 16) | (((v68 ^ (2 * ((v68 ^ 0x34) & (2 * ((v68 ^ 0x34) & (2 * ((v68 ^ 0x34) & (2 * ((v68 ^ 0x34) & (2 * ((v68 ^ 0x34) & (2 * (v100 ^ v68 & 0x12)) ^ v100)) ^ v100)) ^ v100)) ^ v100)) ^ v100))) ^ 0xE6) << 8);
  LOBYTE(v110) = *(v95 + 941);
  LOBYTE(v68) = v110 & 0x1E ^ 0x75;
  LODWORD(STACK[0x5430]) = ((((v110 ^ (2 * ((v110 ^ 0x34) & (2 * ((v110 ^ 0x34) & (2 * ((v110 ^ 0x34) & (2 * ((v110 ^ 0x34) & (2 * ((v110 ^ 0x34) & (2 * (v68 ^ v110 & 0xAA)) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ v68))) ^ 0xB5C819) & ~v112 | v112 & 0x4A3700) << 8) & 0xE2A0CE00;
  LODWORD(STACK[0x5378]) = (LODWORD(STACK[0x53B8]) << 8) & 0x519B6200;
  v113 = LODWORD(STACK[0x37E8]) << 8;
  LODWORD(STACK[0x5540]) = v113 & 0x7F14B900;
  LODWORD(STACK[0x53E0]) <<= 8;
  LODWORD(STACK[0x5358]) = (v111 << 8) & 0x80FE6900;
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x5640])))((LODWORD(STACK[0x5640]) + 18067640), 255, v105, v108, v103, v98, v113 ^ 0x6A46FFu, v84);
}

uint64_t sub_100A831D0(uint64_t a1, int a2)
{
  v6 = v4 < v2;
  if (v6 == (((a2 + 1334) | 0x240u) ^ 0x2E50uLL) + v3 > 0xFFFFFFFF15FD3540)
  {
    v6 = ((a2 - 2836) ^ (v2 + 1608)) + v3 < v4;
  }

  return (*(v5 + 8 * ((63 * v6) ^ a2)))();
}

uint64_t sub_100A8323C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, int a58, int a59, int a60, int a61, int a62)
{
  v69 = *(v67 - 136);
  v68 = *(v67 - 132);
  LODWORD(STACK[0x244]) = (((a6 ^ (2 * (a6 & v69))) & HIDWORD(a40)) >> SBYTE4(a47)) + (((a6 ^ (2 * (a6 & v69))) & v65) << v68);
  v70 = v64 ^ (2 * (v64 & a49));
  v71 = LODWORD(STACK[0x280]);
  v72 = STACK[0x360];
  LODWORD(STACK[0x23C]) = ((v70 & v71) << a48) ^ ((v70 & STACK[0x360]) >> SBYTE4(a49));
  LODWORD(STACK[0x240]) = (((v62 ^ (2 * (v62 & a49))) & v72) >> SBYTE4(a49)) | (((v62 ^ (2 * (v62 & a49))) & v71) << a48);
  v73 = ((v63 & v69) << ((a57 - 97) ^ 0x9F)) ^ v63;
  LODWORD(STACK[0x238]) = ((v73 & HIDWORD(a40)) >> SBYTE4(a47)) + ((v73 & v65) << v68);
  if ((STACK[0x2BC] & 1) == 0)
  {
    a61 = STACK[0x2C0];
    a62 = a60;
  }

  if ((STACK[0x2BC] & 2) != 0)
  {
    v76 = a62;
  }

  else
  {
    v76 = a61;
  }

  LODWORD(STACK[0x2C0]) = v76;
  return (*(v66 + 8 * a57))(v68, v71, a1, a2, a49, a3, a4, a5, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51);
}

uint64_t sub_100A833B4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  *(v59 - 224) = vdupq_n_s32(v54);
  v65 = vdupq_n_s32(a2);
  v63 = vdupq_n_s32(v58 ^ v57);
  v64 = vdupq_n_s32(v56);
  v61 = vdupq_n_s32(0x9DB75AF0);
  v62 = vdupq_n_s32(0x6ECC9F5Au);
  return (*(*(v59 - 184) + 8 * v55))(0, (v55 - 1239465530), 643898388, a4, 92, 37, a7, 1004793274, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, v61.i64[0], v61.i64[1], v62.i64[0], v62.i64[1], v63.i64[0], v63.i64[1], v64.i64[0], v64.i64[1], a53, a54, v65.i64[0], v65.i64[1]);
}

uint64_t sub_100A83598@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xB44]) = -769884012;
  STACK[0xF20] = 0;
  if (STACK[0x1880])
  {
    v2 = 0;
  }

  else
  {
    v2 = LODWORD(STACK[0x5A4]) == ((a1 + 10674) | 0x5A1) - 769904465;
  }

  v3 = !v2;
  return (*(v1 + 8 * ((v3 * ((a1 - 2120244870) ^ 0x819FC204)) ^ a1)))();
}

uint64_t sub_100A83638()
{
  v3 = (v0 - 10741) | 0x8C0;
  *(v2 - 144) = v3 - 668;
  v4 = (*(v1 + 8 * (v0 ^ 0x41F7)))(1032);
  *(v2 - 224) = v4;
  return (*(v1 + 8 * (((v4 == 0) * (v3 - 6356)) ^ v0)))();
}

uint64_t sub_100A864A4@<X0>(int a1@<W0>, unsigned int a2@<W1>, char a3@<W2>, char a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  if (v13)
  {
    v26 = a3;
  }

  else
  {
    v26 = v22;
  }

  v27 = (v26 ^ v16) * v11;
  v28 = (((v22 ^ 0xF625BB17) + 165299433) ^ ((v22 ^ 0xA4A74185) + a1) ^ ((v22 ^ 0x68998A04) - 1754892804)) - 1828902338;
  v29 = (v28 ^ 0xA75E6418) & (2 * (v28 & 0xA71E4659)) ^ v28 & 0xA71E4659;
  v30 = ((2 * (v28 ^ 0xAD6AE838)) ^ 0x14E95CC2) & (v28 ^ 0xAD6AE838) ^ (2 * (v28 ^ 0xAD6AE838)) & a9;
  v31 = v30 ^ 0xA14A221;
  v32 = (v30 ^ 0x600840) & (4 * v29) ^ v29;
  v33 = ((4 * v31) ^ 0x29D2B984) & v31 ^ (4 * v31) & a9;
  v34 = (v33 ^ 0x850A800) & (16 * v32) ^ v32;
  v35 = ((16 * (v33 ^ 0x2240661)) ^ 0xA74AE610) & (v33 ^ 0x2240661) ^ (16 * (v33 ^ 0x2240661)) & a9;
  v36 = v34 ^ (a9 + 1) ^ (v35 ^ 0x240A600) & (v34 << 8);
  v37 = v28 ^ (2 * ((v36 << 16) & v14 ^ v36 ^ ((v36 << 16) ^ 0x2E610000) & (((v35 ^ 0x8340861) << 8) & v14 ^ 0xA500000 ^ (((v35 ^ 0x8340861) << 8) ^ 0x74AE0000) & (v35 ^ 0x8340861))));
  v38 = (a4 ^ a3 ^ v12 ^ v27);
  *(v17 + 4 * v27) = v25 ^ ((v38 ^ 0x14) + v9 + (v38 ^ 0x14 ^ -(v38 ^ 0x14) ^ (v9 - (v38 ^ (v9 + 12))))) ^ v20 ^ *(*(v15 + 8 * v23) + 4 * (v38 ^ 0xD9u) - 4);
  return (*(*(v24 - 184) + 8 * ((((((v37 ^ a5) + a6) ^ ((v37 ^ a7) + a8) ^ ((v37 ^ a2) + v18)) + 974876822 < v19) * v21) ^ v10)))();
}

uint64_t sub_100A8672C@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W7>, uint64_t a5@<X8>)
{
  v20 = *(v16 + 4 * ((439 * (v5 ^ 0x1D5Bu) + a5) & (v14 + v7 - 2)));
  v21 = *(v16 + 4 * (v7 + v14 - 15));
  HIDWORD(v23) = v21 ^ 0x6A;
  LODWORD(v23) = v21 ^ (v15 - 106);
  v22 = v23 >> 7;
  HIDWORD(v23) = v21 ^ v11;
  LODWORD(v23) = v21 ^ v6;
  v24 = v23 >> 18;
  HIDWORD(v23) = v20 ^ 0x1616A;
  LODWORD(v23) = v20 ^ a2;
  v25 = v23 >> 17;
  HIDWORD(v23) = v20 ^ v11;
  LODWORD(v23) = v20 ^ v6;
  v26 = v24 ^ (v21 >> 3) ^ v22;
  v27 = *(v16 + 4 * (v7 + v14 - 16));
  v28 = (v23 >> 19) ^ (v20 >> 10) ^ v25;
  v29 = (*(v16 + 4 * (v7 + v14 - 7)) ^ v15) + (((v27 ^ 0x9A59F4DF) + a3) ^ ((v27 ^ 0x5B6AC2A2) - 1533723298) ^ ((v27 ^ v13) - 108025623)) + (((v26 ^ 0x2AAFB89A) + v9) ^ ((v26 ^ 0x27C3C85) + v19) ^ ((v26 ^ a4) - 1833193470)) + 1744320991 + (((v28 ^ 0x8EB150CF) + a1) ^ ((v28 ^ 0x77BD657) - 866860878) ^ ((v28 ^ v10) + 1121206439));
  *(v16 + 4 * (v7 + v14)) = v29 ^ ((v29 ^ v17) + 2047464613) ^ ((v29 ^ 0xF31E65DB) + v12) ^ ((v29 ^ 0xCF17317F) + 382934100) ^ ((v29 ^ v8) + 1614500564) ^ 0xE178B3B9;
  return (*(v18 + 8 * (v5 | (16 * ((v7 + 1 + v14) > 0x3F)))))();
}

uint64_t sub_100A86954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  v5 = *(v4 + 8 * (v3 - 12618));
  LODWORD(STACK[0x3CF0]) = 52;
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

uint64_t sub_100A86B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x3B08]) = (v6 & 0xC5B6BB7F) + 10031;
  v8 = *(v7 + 8 * ((231 * (LODWORD(STACK[0x2C20]) == (v6 & 0xC5B6BB7F) - 32226 + 30 * (v6 & 0xC5B6BB7F ^ 0x29AE))) ^ v6 & 0xC5B6BB7F));
  LODWORD(STACK[0x3980]) = 44;
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

uint64_t sub_100A86F40()
{
  v1 = *(v0 - 100);
  v2 = v1 + 19313;
  v3 = *(v0 - 96);
  v4 = (*(v3 + 8 * (v1 ^ 0x63A8)))(1032);
  return (*(v3 + 8 * ((2004 * (v4 == 0)) ^ v2)))(0, 4294924411);
}

uint64_t sub_100A86FB4@<X0>(int a1@<W3>, int a2@<W4>, unsigned int a3@<W6>, int a4@<W8>)
{
  v7 = v5 < a3;
  if (v7 == a1 + a4 < a3)
  {
    v7 = v5 > a1 + a4;
  }

  return (*(*(v6 - 224) + 8 * ((v7 * v4) ^ a2)))();
}

uint64_t sub_100A87568@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W8>)
{
  LODWORD(STACK[0x294]) = v7;
  LODWORD(STACK[0x280]) = a3;
  LODWORD(STACK[0x268]) = a2;
  LODWORD(STACK[0x2C8]) = v16;
  LODWORD(STACK[0x258]) = v7 + v8;
  LODWORD(STACK[0x270]) = 187920;
  v18 = *(v9 + a6 * v11 + 187272 - (((((a6 * v11 + 187272) * v6) >> 32) + ((a6 * v11 + 187272 - (((a6 * v11 + 187272) * v6) >> 32)) >> 1)) >> 9) * a4);
  LODWORD(STACK[0x2B0]) = 188568;
  v19 = LODWORD(STACK[0x2C4]) ^ *(v9 + a6 * v11 + 187920 - (((((a6 * v11 + 187920) * v6) >> 32) + ((a6 * v11 + 187920 - (((a6 * v11 + 187920) * v6) >> 32)) >> 1)) >> 9) * a4);
  v20 = *(v9 + a6 * v11 + 188568 - (((((a6 * v11 + 188568) * v6) >> 32) + ((a6 * v11 + 188568 - (((a6 * v11 + 188568) * v6) >> 32)) >> 1)) >> 9) * a4);
  LODWORD(STACK[0x290]) = 189216;
  v21 = v18 ^ 5;
  v22 = v14 + v12;
  v23 = *(v9 + a6 * v11 + 189216 - (((((a6 * v11 + 189216) * v6) >> 32) + ((a6 * v11 + 189216 - (((a6 * v11 + 189216) * v6) >> 32)) >> 1)) >> 9) * a4) ^ 0xB03DD705;
  if (v10 >= 0xB)
  {
    v24 = v16 - 268;
  }

  else
  {
    v24 = v16;
  }

  v25 = 648 * ((v24 & 0x178 ^ 0x379) + (v24 & 0x178) + a6);
  LODWORD(STACK[0x288]) = a6 ^ 1;
  v26 = *(&STACK[0x2E0] + v25 - v25 / 0x3D7 * a4);
  v27 = (v21 << 24) | ((v19 ^ 0xF9) << 16);
  v28 = 2 * (a6 & 1) + (a6 ^ 1);
  v29 = 648 * v28;
  LODWORD(STACK[0x260]) = v28;
  v30 = v15;
  v31 = *(&STACK[0x2E0] + v29 + 576072 - (v29 + 576072) / 0x3D7u * a4);
  LODWORD(STACK[0x298]) = 576720;
  v32 = (v26 ^ 0x6Cu) << (((v20 & 0x5B ^ 1) + (v20 & 0x5B ^ 0x5A)) ^ 0x43u);
  v33 = *(&STACK[0x2E0] + v29 + 576720 - (v29 + 576720) / 0x3D7u * a4);
  v34 = v23 & ~(v27 | ((v20 ^ 5) << 8)) | (v27 | ((v20 ^ 5) << 8)) & 0x4FC22800;
  LODWORD(STACK[0x278]) = 1296;
  v35 = 648 * ((((715 - v14) ^ v22) & 0x379) + v28) + 1296;
  v36 = v34 ^ v22;
  v37 = (((v31 ^ 0x6C) << 16) | ((v33 ^ 0x6C) << 8)) ^ v32;
  v38 = v13 ^ 0xBB53E168 ^ *(&STACK[0x2E0] + v35 - v35 / 0x3D7 * a4);
  v39 = STACK[0x2D8];
  *(STACK[0x2D8] + 4 * v24) = v36 ^ 0x80C9F425;
  v40 = v22 ^ v15;
  v41 = a5 - v22;
  v42 = v36 ^ 0xB03DD700;
  LODWORD(v32) = v37 - 1152130812 - 2 * (v37 & 0x3B53E11D ^ v32 & 0x19);
  LODWORD(STACK[0x250]) = v10;
  v43 = 25 * v10;
  v44 = v36 ^ 0xB03DD700 ^ a1;
  v45 = v14 - 1413946331;
  v47 = (v36 ^ 0xB03DD700 ^ v13) - v13;
  v48 = 25 * v10 + 5050 - (25 * v10 + 5050) / 0x10Cu * v17;
  LODWORD(v32) = v38 ^ v32;
  v49 = 25 * v10 + 1625 - (25 * v10 + 1625) / 0x10Cu * v17;
  *(v39 + 4 * (25 * v10 + 3350 - (25 * v10 + 3350) / 0x10Cu * v17)) = v32;
  LODWORD(STACK[0x2A4]) = 189864;
  LODWORD(STACK[0x2B8]) = v30;
  v50 = v30 - 723913855;
  v52 = *(&STACK[0x2E0] + v29 + 189216 - (v29 + 189216) / 0x3D7u * a4);
  *(v39 + 4 * v49) = a5 + 713983293 + v32;
  v53 = *(&STACK[0x2E0] + v29 + 189864 - (v29 + 189864) / 0x3D7u * a4);
  LODWORD(STACK[0x2A8]) = 190512;
  v54 = ((v52 ^ 5) << 24) | ((v53 ^ 5) << 16);
  v55 = (v42 ^ v40 ^ v32) - (v40 ^ v32) + v47 - 2 * (((v42 ^ v40 ^ v32) - (v40 ^ v32)) & v47);
  v56 = v30 + 1828897137;
  v57 = *(&STACK[0x2E0] + v29 + 190512 - (v29 + 190512) / 0x3D7u * a4) ^ 5;
  v58 = (*(&STACK[0x2E0] + (648 * v28 + 191160) % 0x3D7u) ^ 0x5BA120E2) & ~(v54 | (v57 << 8)) | (v54 | (v57 << 8)) & 0xA45EDF00;
  v59 = (v55 ^ (v44 - a1)) - LODWORD(STACK[0x294]);
  if (v10 >= 0xA)
  {
    v60 = -243;
  }

  else
  {
    v60 = 25;
  }

  v61 = v60 + LODWORD(STACK[0x2C8]);
  LODWORD(STACK[0x294]) = 578016;
  *(v39 + 4 * v48) = v59 - 1739781678;
  v62 = (v29 + 578016) % 0x3D7u;
  LODWORD(STACK[0x28C]) = 578664;
  v63 = v29 + 578664;
  v64 = v58 ^ v56;
  *(v39 + 4 * v61) = v58 ^ v56 ^ 0x6B5503C2;
  v65 = (v29 + 578664) / 0x3D7u;
  v66 = v29 + 579312;
  v67 = (v66 + 648) % 0x3D7;
  v68 = LODWORD(STACK[0x258]) - v13;
  v69 = ((*(&STACK[0x2E0] + v62) ^ 0x6C) << 24) | ((*(&STACK[0x2E0] + v63 - 983 * v65) ^ 0x6C) << 16);
  v70 = v68 ^ (v13 - 1880912143);
  v71 = (a1 - 723913855) ^ v68;
  v72 = *(&STACK[0x2E0] + v66 % 0x3D7);
  v73 = ((*(&STACK[0x2E0] + v67) ^ 0x1B87F794) & ~(v69 | ((v72 ^ 0x6C) << 8)) | (v69 | ((v72 ^ 0x6C) << 8)) & 0xE4780800) ^ 0x1B87F7F8;
  v74 = v41 ^ v45 ^ v56;
  v75 = (v41 ^ v45) + v56;
  v76 = (a1 - 723913855) ^ (v13 - 1880912143);
  v64 ^= 0x5BA120E7u;
  v77 = v73 ^ (a1 + 1828897137);
  v78 = v73 - (a1 + 1828897137);
  v79 = a1 - 25420250 + LODWORD(STACK[0x280]);
  v80 = a1 + 1828897137 + v70;
  v81 = (LODWORD(STACK[0x260]) ^ 1) + 2 * (STACK[0x288] & 1);
  LODWORD(STACK[0x280]) = v81;
  *(v39 + 4 * ((v43 + 3375) % 0x10Cu)) = v77;
  LODWORD(STACK[0x288]) = v81 + 8;
  v82 = 648 * (v81 + 8);
  v83 = ((*(&STACK[0x2E0] + (648 * v28 + 191808) % 0x3D7u) ^ 5) << 24) | ((*(&STACK[0x2E0] + (648 * v28 + 192456) % 0x3D7u) ^ 5) << 16) | ((*(&STACK[0x2E0] + (v82 + 187272) % 0x3D7u) ^ 5) << 8);
  v84 = ((v77 ^ v70) - v70) ^ v78 ^ ((v77 ^ v74 ^ v64) - (v74 ^ v64));
  v85 = STACK[0x2B8];
  v86 = LODWORD(STACK[0x268]) - 25420250 + LODWORD(STACK[0x2B8]) - v75;
  v87 = v79 - v80;
  v88 = v79 - v80 + v76;
  v89 = v86 + (v50 ^ v45);
  v90 = 713983293 - v71 + v84;
  v91 = (*(&STACK[0x2E0] + (v82 + LODWORD(STACK[0x270])) % 0x3D7u) ^ 0x9EEC398) & ~v83;
  v92 = STACK[0x250];
  *(v39 + 4 * ((v43 + 5075) % 0x10Cu)) = (v41 ^ v50) - 1206947900 + v64;
  if (v92 >= 9)
  {
    v93 = -218;
  }

  else
  {
    v93 = 50;
  }

  v94 = v93 + LODWORD(STACK[0x2C8]);
  *(v39 + 4 * ((v43 + 1650) % 0x10Cu)) = v90;
  v95 = (v91 | v83 & 0xF6113C00) ^ v89;
  v96 = *(&STACK[0x2E0] + (v82 + 574776) % 0x3D7u) << 24;
  *(v39 + 4 * v94) = v95 ^ 0x391AE0B8;
  v97 = v96 | ((*(&STACK[0x2E0] + (v82 + 575424) % (((2146908220 - v82) & 0x4441FF34 | (v82 + 575424) & 0x4441FF30u) - 1145174877)) ^ 0x6C) << 16) | ((*(&STACK[0x2E0] + (v82 + 576072) % 0x3D7u) ^ 0x6C) << 8);
  v98 = v43;
  v99 = (v97 ^ 0x3FFFFFF) & (*(&STACK[0x2E0] + (v82 + LODWORD(STACK[0x298])) % 0x3D7u) ^ 0x656CE990) | v97 & 0x9A931600;
  LOWORD(v97) = (v43 + 1675) % 0x10Cu;
  v100 = v88 ^ 0x6D6CE9FC ^ v99;
  v101 = a1 + 462842934 + (v80 ^ 0xACA597FC);
  v102 = (v82 + LODWORD(STACK[0x2B0])) % 0x3D7u;
  *(v39 + 4 * ((v43 + 3400) % 0x10Cu)) = v100;
  v103 = (v43 + 5100) % 0x10Cu;
  v104 = v82 + LODWORD(STACK[0x290]);
  *(v39 + 4 * v103) = v89 - 1206947900 + v100;
  v105 = v75 ^ 0xACA597FC;
  v106 = v85 + 462842934 + (v75 ^ 0xACA597FC);
  v107 = STACK[0x2D0];
  v108 = (v82 + LODWORD(STACK[0x2A4])) % 0x3D7u;
  v109 = ((*(&STACK[0x2E0] + v102) ^ 5) << 24) | ((*(&STACK[0x2E0] + v104 % 0x3D7) ^ 5) << 16);
  v110 = *(&STACK[0x2E0] + (v82 + LODWORD(STACK[0x2A8])) % 0x3D7u) ^ 0xADDFBD2E;
  v111 = v82 + LODWORD(STACK[0x294]);
  *(v39 + 4 * v97) = 713983293 - v88 + (((v95 ^ 0x9EEC39D ^ v101) - v101) ^ ((v95 ^ 0x9EEC39D ^ v80 ^ 0xACA597FC) - (v80 ^ 0xACA597FC)) ^ ((v95 ^ 0x9EEC39D ^ v106 ^ v105 ^ v100) - (v106 ^ v105 ^ v100)));
  v112 = v110 & ~(v109 | ((*(&STACK[0x2E0] + v108) ^ 5) << 8)) | (v109 | ((*(&STACK[0x2E0] + v108) ^ 5) << 8)) & 0x52204200;
  v113 = (v80 ^ 0xACA597FC) + 123185218;
  v114 = v88 - v113;
  v115 = (v88 - v113) ^ v101;
  v116 = v87 - v115 + 360176935;
  v117 = ((*(&STACK[0x2E0] + v111 % 0x3D7) ^ 0x6C) << 16) | ((*(&STACK[0x2E0] + (v82 + LODWORD(STACK[0x28C])) % 0x3D7u) ^ 0x6C) << 8) | ((*(&STACK[0x2E0] + (v82 + 577368) % 0x3D7u) ^ 0x6C) << 24);
  v118 = *(&STACK[0x2E0] + (v82 + 579312) % 0x3D7u) ^ 0xEFE6A4F0;
  if (v92 >= 8)
  {
    v119 = -193;
  }

  else
  {
    v119 = 75;
  }

  v120 = v112 ^ (v86 - ((v89 - v105 - 123185218) ^ v106) + 360176935);
  *(v39 + 4 * (v119 + LODWORD(STACK[0x2C8]))) = v120 ^ 0x9D2B9E0E;
  v121 = v116 ^ 0xEFE6A49C ^ (v118 & ~v117 | v117 & 0x10195B00);
  *(v39 + 4 * ((v98 + 3425) % 0x10Cu)) = v121;
  *(v39 + 4 * ((v98 + 5125) % 0x10Cu)) = v89 - v105 + 91393123 + v121;
  v122 = (v114 + 1421526241) ^ v115;
  *(v39 + 4 * ((v98 + 1700) % 0x10Cu)) = (((v120 ^ 0xADDFBD2B ^ v122 ^ v113) - (v122 ^ v113)) ^ ((v120 ^ 0xADDFBD2B ^ v122) - v122) ^ ((v120 ^ 0xADDFBD2B ^ v121 ^ (v105 + 123185218)) - (v121 ^ (v105 + 123185218)))) - v114 - 707542948;
  v123 = (v114 + 1421526241 - (v116 ^ v122)) ^ v122 ^ 0x2EADE68C;
  return (*(v107 + 8 * ((86 * (v92 < 0xC)) ^ LODWORD(STACK[0x248]))))((v123 ^ ((v122 ^ 0x2EADE68C) - 1057696360) ^ -(v123 ^ ((v122 ^ 0x2EADE68C) - 1057696360)) ^ (1474433825 - (v123 ^ ((v122 ^ 0x2EADE68C) - 1057696360) ^ 0x57E21321u))) + 1474433825);
}

uint64_t sub_100A88578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = STACK[0x540];
  STACK[0xF08] = *(STACK[0x540] + 8 * (a8 + 2120239681));
  return (*(v8 + 8 * (((a8 + 2120252660) ^ 0x2F80) + a8 + 2120239681)))(a1, a2, a3, 0x308E083E0C524CBELL);
}

uint64_t sub_100A88648@<X0>(int a1@<W8>)
{
  v4 = (*v1 << 24) | (v1[1] << 16) | (v1[2] << 8);
  v6 = (((v1[3] + 1303687285 + ((2 * v1[3]) & 0xE8 ^ ((a1 ^ 0xAD16D025) + 1391017648))) ^ 0x890774B4) & (v4 ^ 0xD5F3FFFF) ^ v4 & 0x3B4C3B00) == 0xC4B3C4C1 && v2 > 7;
  return (*(v3 + 8 * ((15613 * v6) ^ a1)))();
}

uint64_t sub_100A89908(char a1, int a2, char a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  LODWORD(STACK[0x3370]) = 0;
  LODWORD(STACK[0x3A90]) = STACK[0x39B8] ^ LODWORD(STACK[0x32F8]);
  LODWORD(STACK[0x3A80]) = v10 ^ LODWORD(STACK[0x3318]);
  v16 = LODWORD(STACK[0x3338]) ^ v8;
  LODWORD(STACK[0x3A70]) = v13 ^ LODWORD(STACK[0x32E8]);
  v17 = (v7 - 1580);
  v18 = a1 ^ LODWORD(STACK[0x3320]);
  v19 = LODWORD(STACK[0x3480]) ^ 0xFE;
  STACK[0x3A58] = v17;
  LODWORD(STACK[0x3A50]) = v17 ^ 0x3FD4;
  LODWORD(STACK[0x3A68]) = v9 ^ LODWORD(STACK[0x3328]);
  v20 = a4 ^ LODWORD(STACK[0x3350]);
  v21 = (v16 ^ 0xC4) * v15 + 14331348 - (((1266205 * ((v16 ^ 0xC4u) * v15 + 14331348)) >> 32) >> 1) * a2;
  v22 = *(v14 + (((v17 ^ 0x3FD4) - 25506) * v19 + 13123128 - ((81037119 * ((((v17 ^ 0x3FD4) - 25506) * v19 + 13123128) >> 7)) >> 32) * a2)) - 71;
  v23 = LODWORD(STACK[0x3448]) ^ 0xC4;
  v24 = a7 ^ LODWORD(STACK[0x32F0]);
  v25 = *(v14 + v21) + 117;
  LOBYTE(v21) = a3 ^ LODWORD(STACK[0x3330]);
  v26 = v11 ^ LODWORD(STACK[0x3360]);
  v27 = LODWORD(STACK[0x38C0]) + 111;
  v28 = STACK[0x3A78] ^ LODWORD(STACK[0x3340]);
  v29 = (LODWORD(STACK[0x3498]) >> 1) | (LODWORD(STACK[0x3498]) << 7);
  v30 = ((LODWORD(STACK[0x3358]) ^ v12) ^ 0xB8) * v15 + 9544938 - 6784 * (((1266205 * (((LODWORD(STACK[0x3358]) ^ v12) ^ 0xB8u) * v15 + 9544938)) >> 32) >> 1);
  LODWORD(STACK[0x3350]) = (v22 ^ (v22 << 6) ^ (4 * v22) ^ 0xFFFFFFFE) + 26;
  LOBYTE(v22) = STACK[0x3AA0] ^ LODWORD(STACK[0x32E0]);
  v31 = *(v14 + v23 * v15 + 14331348 - 6784 * (((1266205 * (v23 * v15 + 14331348)) >> 32) >> 1)) + 117;
  v32 = *(v14 + v30) - 87;
  LOBYTE(v30) = STACK[0x3AA8] ^ LODWORD(STACK[0x3308]);
  v33 = LODWORD(STACK[0x39E0]) ^ LODWORD(STACK[0x3300]);
  v34 = (v25 ^ 0x12 ^ (v25 >> 2) & 0x12) + 26;
  v35 = *(v14 + (v27 ^ 0x1C) * v15 + 4767822 - 6784 * (((1266205 * ((v27 ^ 0x1Cu) * v15 + 4767822)) >> 32) >> 1));
  v36 = LODWORD(STACK[0x38C8]) ^ 0xB8;
  v37 = STACK[0x3AC8] ^ LODWORD(STACK[0x3310]);
  v38 = (v32 ^ 0xFB) + 85;
  v39 = LODWORD(STACK[0x38D0]) + 111;
  v40 = (LODWORD(STACK[0x38B0]) >> 1) | (LODWORD(STACK[0x38B0]) << 7);
  v41 = STACK[0x38B8];
  LODWORD(STACK[0x3A28]) = ((v35 ^ 0xE3) >> 3) | (32 * (v35 ^ 0xFFFFFFE3));
  v42 = (((v41 >> 1) | (v41 << 7)) ^ 0x40) * v15 + 15539568;
  v43 = STACK[0x3AC0];
  v44 = *(STACK[0x3AE0] + v42 - 6784 * (((1266205 * v42) >> 32) >> 1));
  LODWORD(STACK[0x3360]) = 97 * (*(STACK[0x3AE0] + (v29 ^ 0x40) * v15 + 15539568 - 6784 * (((1266205 * ((v29 ^ 0x40u) * v15 + 15539568)) >> 32) >> 1)) ^ 0xFFFFFFA2);
  v45 = *(STACK[0x3AE0] + v36 * v15 + 9544938 - 6784 * (((1266205 * (v36 * v15 + 9544938)) >> 32) >> 1)) - 87;
  v46 = (v40 ^ 0x40) * v15 + 15539568;
  v47 = STACK[0x3AE0];
  LODWORD(STACK[0x3358]) = (v31 ^ 0x12 ^ (v31 >> 2) & 0x12) + 26;
  v48 = *(v47 + (v39 ^ 0x1C) * v15 + 4767822 - 6784 * (((1266205 * ((v39 ^ 0x1Cu) * v15 + 4767822)) >> 32) >> 1)) ^ 0xFFFFFFE3;
  v49 = *(v47 + v46 - 6784 * (((1266205 * v46) >> 32) >> 1));
  v50 = STACK[0x3AF0];
  *(v50 + 14) = v26;
  *v50 = v18;
  *(v50 + 4) = v34;
  LODWORD(STACK[0x3A38]) = 97 * (v44 ^ 0xFFFFFFA2);
  *(v50 + 11) = v30;
  *(v50 + 10) = v24;
  *(v50 + 8) = v38;
  LODWORD(STACK[0x3A40]) = (v48 >> 3) | (32 * v48);
  *(v50 + 2) = STACK[0x3A80];
  *(v50 + 9) = v33;
  LODWORD(STACK[0x3A30]) = (v45 ^ 0xFFFFFFFB) + 85;
  *(v50 + 7) = v20;
  *(v50 + 15) = v37;
  *(v50 + 3) = STACK[0x3A70];
  *(v50 + 1) = v21;
  *(v50 + 13) = v28;
  *(v50 + 6) = STACK[0x3A90];
  *(v50 + 12) = v22;
  *(v50 + 5) = STACK[0x3A68];
  v51 = *(v50 + 16);
  v50 += 16;
  LODWORD(STACK[0x3A20]) = 97 * (v49 ^ 0xFFFFFFA2);
  STACK[0x3AF0] = v50;
  v52 = *(v50 + 12);
  v53 = *(v50 + 8) << 56;
  v54 = *(v50 + 9);
  v55 = *(v50 + 10);
  v56 = *(v50 + 14);
  v57 = *(v50 + 15);
  v58 = *(v50 + 13);
  v59 = *(v50 + 11);
  v60 = STACK[0x33B8] > STACK[0x37C8] + 16;
  STACK[0x37C0] += 16;
  v61 = *(v43 + 8 * (v7 ^ ((2 * v60) | (4 * v60))));
  LODWORD(STACK[0x3338]) = STACK[0x33B0];
  LODWORD(STACK[0x3888]) = STACK[0x39F8];
  LODWORD(STACK[0x3328]) = STACK[0x33C0];
  LODWORD(STACK[0x3880]) = STACK[0x38D8];
  LODWORD(STACK[0x3868]) = STACK[0x3A10];
  LODWORD(STACK[0x3878]) = STACK[0x3A18];
  LODWORD(STACK[0x38A8]) = STACK[0x38E8];
  LODWORD(STACK[0x38A0]) = STACK[0x3A00];
  LODWORD(STACK[0x3870]) = STACK[0x3A08];
  LODWORD(STACK[0x3340]) = STACK[0x3468];
  LODWORD(STACK[0x3318]) = STACK[0x33A0];
  STACK[0x3A88] = (v53 | (v52 << 24) | (v55 << 40) | v57 | (v56 << 8) | (v58 << 16)) ^ (v54 << 48) ^ (v59 << 32);
  LODWORD(STACK[0x3890]) = STACK[0x39F0];
  LODWORD(STACK[0x3330]) = STACK[0x3460];
  LODWORD(STACK[0x3308]) = STACK[0x3478];
  LODWORD(STACK[0x32F8]) = STACK[0x3470];
  LODWORD(STACK[0x3310]) = STACK[0x3458];
  LODWORD(STACK[0x3898]) = STACK[0x39E8];
  LODWORD(STACK[0x32E8]) = STACK[0x3490];
  LODWORD(STACK[0x32F0]) = STACK[0x3450];
  LODWORD(STACK[0x3320]) = STACK[0x33A8];
  LODWORD(STACK[0x3300]) = STACK[0x34A0];
  LODWORD(STACK[0x3860]) = STACK[0x38F0];
  STACK[0x3A90] = bswap64(v51);
  LODWORD(STACK[0x32E0]) = STACK[0x3488];
  LODWORD(STACK[0x3858]) = STACK[0x38E0];
  return v61(STACK[0x3580], STACK[0x35D8], 14331348, STACK[0x3578]);
}

uint64_t sub_100A8A358()
{
  v2 = *(*STACK[0x51F0] + (*STACK[0x51E8] & 0xDF49AC04));
  v3 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v2 ^ 0xDF49AC05) & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v2 ^ 0xDF49AC05;
  v4 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v3 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v3;
  v5 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v4 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v4;
  v6 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v5 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v5;
  v7 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v6 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v6;
  v8 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v7 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v7;
  v9 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v8 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v8;
  LODWORD(v9) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v9 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v9;
  STACK[0xEF60] = 0;
  STACK[0xEF68] = v0;
  v10 = 16777619 * ((-548819963 * v9 + 7) ^ (-548819963 * v9)) % 7;
  v11 = *(&STACK[0xEF60] | v10);
  *(&STACK[0xEF60] | v10) = 0;
  LOBYTE(STACK[0xEF67]) = v11;
  v12 = 16777619 * ((-548819963 * v9 + 6) ^ (-548819963 * v9)) % 6;
  v13 = *(&STACK[0xEF60] | v12);
  *(&STACK[0xEF60] | v12) = STACK[0xEF66];
  LOBYTE(STACK[0xEF66]) = v13;
  v14 = 16777619 * ((-548819963 * v9 + 5) ^ (-548819963 * v9)) % 5;
  v15 = *(&STACK[0xEF60] | v14);
  *(&STACK[0xEF60] | v14) = STACK[0xEF65];
  LOBYTE(STACK[0xEF65]) = v15;
  v16 = STACK[0xEF60];
  LOBYTE(STACK[0xEF60]) = STACK[0xEF64];
  LOBYTE(STACK[0xEF64]) = v16;
  v17 = 16777619 * ((-548819963 * v9 + 3) ^ (-548819963 * v9)) % 3;
  v18 = *(&STACK[0xEF60] | v17);
  *(&STACK[0xEF60] | v17) = STACK[0xEF63];
  LOBYTE(STACK[0xEF63]) = v18;
  v19 = STACK[0xEF61];
  LOBYTE(STACK[0xEF62]) = STACK[0xEF60];
  LOWORD(STACK[0xEF60]) = v19;
  v20 = vdup_n_s32(-548819963 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = -548819963 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xEF60] = vmla_s32(v22, STACK[0xEF60], vdup_n_s32(0x1000193u));
  STACK[0xEF68] ^= STACK[0xEF60];
  STACK[0xEF68] = vmul_s32(vsub_s32(STACK[0xEF68], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xEF6A];
  LOWORD(STACK[0xEF69]) = STACK[0xEF68];
  LOBYTE(STACK[0xEF68]) = v23;
  v24 = (&STACK[0xEF68] | v17);
  v25 = *v24;
  *v24 = STACK[0xEF6B];
  LOBYTE(STACK[0xEF6B]) = v25;
  LOBYTE(v24) = STACK[0xEF68];
  LOBYTE(STACK[0xEF68]) = STACK[0xEF6C];
  LOBYTE(STACK[0xEF6C]) = v24;
  v26 = (&STACK[0xEF68] | v14);
  LOBYTE(v24) = *v26;
  *v26 = STACK[0xEF6D];
  LOBYTE(STACK[0xEF6D]) = v24;
  v27 = (&STACK[0xEF68] | v12);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xEF6E];
  LOBYTE(STACK[0xEF6E]) = v26;
  v28 = (&STACK[0xEF68] | v10);
  v29 = *v28;
  *v28 = STACK[0xEF6F];
  LOBYTE(STACK[0xEF6F]) = v29;
  v30 = STACK[0xEF68];
  v31 = (-548819963 * STACK[0xEF68]) ^ v9;
  for (i = 1; i != 4; ++i)
  {
    v33 = 16777619 * ((v31 + i) ^ v31) % i;
    v34 = *(v30 + 8 * v33) ^ *(v30 + 8 * i);
    *(v30 + 8 * i) = v34;
    v35 = *(v30 + 8 * v33) ^ v34;
    *(v30 + 8 * v33) = v35;
    *(v30 + 8 * i) ^= v35;
  }

  v36 = 0;
  v37 = xmmword_1012370F0;
  v38 = xmmword_101237100;
  v39 = xmmword_101237110;
  v40 = xmmword_101237120;
  v41 = vdupq_n_s32(v31);
  v42.i64[0] = 0x9B009B009B009BLL;
  v42.i64[1] = 0x9B009B009B009BLL;
  v43.i64[0] = 0x1000000010;
  v43.i64[1] = 0x1000000010;
  do
  {
    v44 = *(v30 + v36);
    v45 = vmovl_high_u8(v44);
    v46 = vmovl_u8(*v44.i8);
    v48.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v39, v41), vsubq_s32(v39, v41)), v41), vmull_high_u16(v46, v42));
    v48.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v38, v41), vsubq_s32(v38, v41)), v41), vmull_u16(*v45.i8, 0x9B009B009B009BLL));
    v48.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v40, v41), vsubq_s32(v40, v41)), v41), vmull_u16(*v46.i8, 0x9B009B009B009BLL));
    v48.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v37, v41), vsubq_s32(v37, v41)), v41), vmull_high_u16(v45, v42));
    *(v30 + v36) = vqtbl4q_s8(v48, xmmword_101237130);
    v36 += 16;
    v40 = vaddq_s32(v40, v43);
    v39 = vaddq_s32(v39, v43);
    v38 = vaddq_s32(v38, v43);
    v37 = vaddq_s32(v37, v43);
  }

  while (v36 != 32);
  *STACK[0x4630] = STACK[0xEF68];
  return (*(STACK[0x57D8] + 8 * v1))(v37, v38, v39, v40);
}

uint64_t sub_100A8A8F4()
{
  v0 = STACK[0x7A68];
  v1 = STACK[0x57D8];
  v2 = STACK[0xC38];
  STACK[0xD020] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0xC38]));
  return (*(v1 + 8 * (v2 ^ 0x53DE ^ LODWORD(STACK[0xC34]))))(0xA729B82E8022AE18, 0x5E4E7696E37EBB4ALL, v0, 511644426);
}

uint64_t sub_100A8A96C(uint64_t a1)
{
  v2 = *(STACK[0xA3C8] - 0x683CBC57EAB92A3ELL);
  STACK[0xBEE8] = 0;
  STACK[0x8F70] = 0;
  return (*(STACK[0x57D8] + 8 * (((((107 * (v1 ^ 0x13)) ^ (v2 == a1)) & 1) * (((v1 ^ 0x5513) + 22611) ^ 0x5812)) ^ v1)))();
}

uint64_t sub_100A8A9F4()
{
  LODWORD(STACK[0x9B4]) = v0;
  v4 = STACK[0x1B88];
  v5 = 1534937323 * ((v3 + 0x40F4B172F9D0C4C3 - 2 * ((v3 - 240) & 0x40F4B172F9D0C5B3)) ^ 0x8D8C39B03F3E3EF4);
  STACK[0x25D0] = v5;
  *(v3 - 224) = 1534937323 * ((v3 - 103758653 - 2 * ((v3 - 240) & 0xF9D0C5B3)) ^ 0x3F3E3EF4);
  *(v3 - 220) = (1534937323 * ((v3 - 103758653 - 2 * ((v3 - 240) & 0xF9D0C5B3)) ^ 0x3F3E3EF4)) ^ (v1 - 2120236532) ^ 0x949EEB53;
  *(v3 - 232) = ((v1 - 2120236532) | 0x949EE60C) - 1534937323 * ((v3 - 103758653 - 2 * ((v3 - 240) & 0xF9D0C5B3)) ^ 0x3F3E3EF4);
  *(v3 - 228) = 1534937323 * ((v3 - 103758653 - 2 * ((v3 - 240) & 0xF9D0C5B3)) ^ 0x3F3E3EF4) + 1451516474;
  STACK[0x25E8] = v4 + v5;
  *(v3 - 208) = ((v1 - 2120236532) ^ 0x949EEB6F) + 1534937323 * ((v3 - 103758653 - 2 * ((v3 - 240) & 0xF9D0C5B3)) ^ 0x3F3E3EF4);
  v6 = (*(v2 + 254368))(v3 - 240);
  return (*(v2 + 8 * *(v3 - 204)))(v6);
}

uint64_t sub_100A8AB28@<X0>(int a1@<W8>)
{
  v2 = STACK[0xB740];
  LODWORD(STACK[0xDB50]) = STACK[0xB740];
  v4 = v2 == v1 && LODWORD(STACK[0x5A0C]) > (a1 ^ 0x5855u);
  return (*(STACK[0x57D8] + 8 * ((12265 * v4) ^ (a1 - 21850))))();
}

uint64_t sub_100A8AB94()
{
  v1 = STACK[0x51B8];
  LODWORD(STACK[0x86F0]) = v0;
  v2 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = v0;
  STACK[0x6230] = v2;
  LODWORD(STACK[0x6974]) = -591070276;
  return (*(STACK[0x57D8] + 8 * (v1 - 17575)))();
}

uint64_t sub_100A8AC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x35A8] = v5;
  STACK[0x37D0] = v8;
  v9 = *(v7 + 8 * SLODWORD(STACK[0x3AD8]));
  STACK[0x3AA8] = v6;
  STACK[0x3AA0] = v4;
  return v9(a1, a2, a3, a4, v4);
}

uint64_t sub_100A8AC7C()
{
  v2 = (*(v0 + 8 * (v1 + 17470)))(20);
  STACK[0x920] = v2;
  return (*(v0 + 8 * (((v2 != 0) * ((((v1 - 14280) | 0x48C0) - 6223) ^ 0x30B7)) ^ v1)))();
}

uint64_t sub_100A8ACE4(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v2 - 0x683CBC57EAB92A36) = a1 + v1;
  LODWORD(STACK[0x584]) = -143113071;
  return (*(STACK[0x540] + 8 * v3))();
}

uint64_t sub_100A8AD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = *(&STACK[0x320] + (v9 + (9 * (v8 ^ 0x4693u) - 13632) * a8) % 0xA88);
  v13 = *(&STACK[0xDE0] + (825 * (v12 | ((v12 < 0x60) << 8)) + 2460150) % 0x1940);
  v14 = *(&STACK[0x320] + (2361 * (((BYTE1(v13) ^ 0xE7B07E66) - 856261900) ^ ((BYTE1(v13) ^ 0x60EFBF39) + 1269414829) ^ ((BYTE1(v13) ^ 0x875FC1EC) - 1407597190)) - 411949998) % 0xA88);
  v15 = *(&STACK[0x320] + (2361 * (((HIBYTE(v13) ^ 0xA57AAB03) + 1352155279) ^ ((HIBYTE(v13) ^ 0x3F0DCB5D) - 890298159) ^ ((HIBYTE(v13) ^ 0x9A776022) + 1872071600)) + 1180460319) % 0xA88);
  LOBYTE(v13) = *(&STACK[0x320] + (2361 * (((v13 ^ 0x74890375) - 1811806629) ^ ((v13 ^ 0x513E61CA) - 1313512218) ^ ((v13 ^ 0x25B76256u) - 985897094)) + 503719858) % 0xA88);
  v16 = v15 & 0x26 ^ 0xC3;
  v17 = *(&STACK[0x320] + (2361 * (((BYTE2(v13) ^ 0xA209F31D) - 121972635) ^ ((BYTE2(v13) ^ 0x8F796718) - 708162462) ^ ((BYTE2(v13) ^ 0x2D709465) + 2009317149)) - 2117735113) % 0xA88);
  v18 = v17 & 0xE6 ^ 0xA3;
  v19 = v15 ^ (2 * ((v15 ^ 0x20) & (2 * ((v15 ^ 0x20) & (2 * ((v15 ^ 0x20) & (2 * ((v15 ^ 0x20) & (2 * (v16 ^ v15 & 6)) ^ v16)) ^ v16)) ^ v16)) ^ v16));
  v20 = (v14 & 0xA0 | 0x52) ^ v14 & 0xE4;
  v21 = (v17 ^ (2 * ((v17 ^ 0x20) & (2 * ((v17 ^ 0x20) & (2 * ((v17 ^ 0x20) & (2 * ((v17 ^ 0x20) & (2 * ((v17 ^ 0x20) & (2 * (v17 & (2 * v18) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) << 8;
  v22 = v14 ^ (2 * ((v14 ^ 0x20) & (2 * ((v14 ^ 0x20) & (2 * ((v14 ^ 0x20) & (2 * ((v14 ^ 0x20) & (2 * (v14 & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20));
  v23 = (v21 ^ 0xFF096F) & ((v19 << 16) ^ 0x3AAF6F) | v21 & 0x5000;
  LOBYTE(v21) = (v13 & 0xA0 | 0x58) ^ v13 & 0xF0;
  LOBYTE(v13) = v13 ^ (2 * ((v13 ^ 0x20) & (2 * ((v13 ^ 0x20) & (2 * ((v13 ^ 0x20) & (2 * ((v13 ^ 0x20) & (2 * ((v13 ^ 0x20) & (2 * v21) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21));
  *(&STACK[0xDE0] + (v10 + 825 * a8) % 0x1940u) = (((((v23 ^ 0x404269) & (v22 ^ 0xFFFF2A) ^ v22 & 0xF9) << 8) ^ 0x59F01DFD) & (v13 ^ 0xFFFFFFAF) | v13 & 2) ^ 0x793DE814;
  return (*(v11 + 8 * ((14036 * (a8 == 255)) ^ v8)))();
}

uint64_t sub_100A8B160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  *(a25 + 24) = 1;
  *(a25 + 8) = 0;
  *(a25 + 16) = 0;
  *a25 = a1;
  return (*(v27 + 8 * (((((v25 + 149) | 0x4004) ^ 0x6403) * ((v26 ^ 0x771F5CFBBFF5FFFBLL) - 0x771F5CFBBFF5FFFCLL + ((2 * v26) & 0xEE3EB9F77FEBFFF6) != 0)) ^ v25)))(12034, a2, 0x1EF2BFD8ALL, 0xD5CB96EBF795FEC5, 0x2A346914086A013BLL, 7986, 12035, 2903934913);
}

uint64_t sub_100A8B24C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, unint64_t a4@<X8>)
{
  LODWORD(STACK[0x39D8]) = v5;
  STACK[0x3A38] = a4;
  v8 = STACK[0x3990];
  v9 = STACK[0x3988];
  v10 = STACK[0x3A00];
  v11 = STACK[0x39E8];
  LODWORD(STACK[0x36E0]) = v7;
  return (*(STACK[0x3AC0] + 8 * v4))(v6, v11, v10, a1, a2, a3, v9, v8);
}

uint64_t sub_100A8B294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v10 = (1645 * a8 + 2113825) % ((LODWORD(STACK[0x630]) ^ 0x41FDu) - 21655);
  v11 = STACK[0x638];
  v12 = (v10 ^ 0xEA47FDF7FA5FFB7DLL) + STACK[0x638] + ((2 * v10) & 0x16FA);
  v13 = *(v12 - 0x2FEB4754337D1592);
  v14 = *STACK[0x650];
  v15 = *STACK[0x660];
  v16 = *(v15 + (v14 & STACK[0x648]));
  LODWORD(STACK[0x628]) = v16;
  v17 = *v8 ^ v9;
  LODWORD(v12) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v12 + 94372995 + v16 - 963544004) & v17)) ^ v13 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v12 + 94372995 + v16 - 963544002) & v17)) ^ (76 * (v12 - 125));
  v18 = STACK[0x640] + 4 * ((551 * (((v12 ^ 0x450ADCD2) + 1322344618) ^ ((v12 ^ 0x3637A9AF) + 1038882261) ^ ((v12 ^ 0x733D750D) + 2028390775)) + 2049034218) % 0x1D48);
  v19 = STACK[0x658];
  v20 = *(v15 + (v14 & STACK[0x658]));
  LODWORD(v12) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v18 + v20 + 673210726) & v17)) ^ *(v18 - 0x34EE34220E8AC3B8) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v18 + v20 + 673210728) & v17));
  v21 = ((v12 ^ (6319 * v18)) >> 8) ^ 0x79;
  v22 = 1645 * (((((v12 ^ (-1962600273 * v18)) >> 24) ^ 0x88384309) + 1834523113) ^ ((((v12 ^ (-1962600273 * v18)) >> 24) ^ 0xA82521F) - 270366465) ^ ((((v12 ^ (-1962600273 * v18)) >> 24) ^ 0x82BA11B5) + 1742392149)) + 282673519;
  v23 = a7 + 551 * a8;
  v24 = 1645 * (((v12 ^ (333999 * v18)) >> 16) ^ 0x25) + 3391990;
  v25 = v24 - 2696 * (((12744711 * v24) >> 32) >> 3);
  LODWORD(v12) = (v12 ^ (-81 * v18));
  v26 = (v25 ^ 0xFACF9DA56BF2EEFELL) + v11 + ((2 * v25) & 0x1DFC);
  LODWORD(v12) = 1645 * (((v12 ^ 0x2F1B7363) - 46813349) ^ ((v12 ^ 0x755DDE1C) - 1485635034) ^ ((v12 ^ 0x5A46ADB6) - 2006421104)) + 1762789721;
  v27 = ((v22 % 0xA88) ^ 0xFFFFBDBFF88FB6E5) + v11 + ((2 * (v22 % 0xA88)) & 0xDCA);
  v28 = v14 & 0xC6917C3C;
  v29 = STACK[0x650];
  v30 = *(v15 + v28);
  LODWORD(v25) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v26 - 1811083006 + v30 - 963544004) & v17)) ^ *(v26 - 0x4072E701A5100913) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v26 - 1811083006 + v30 - 963544002) & v17)) ^ (76 * (v26 + 2));
  v31 = ((v12 % 0xA88) ^ 0x7FFF55EFA13BBDF7) + v11 + ((2 * (v12 % 0xA88)) & 0x1BEE);
  v32 = v31 + 1589920265;
  v33 = *(v31 + 0x3A5D60B425A727F4);
  LODWORD(v31) = (((*((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v27 + 124799259 + v30 - 963544004) & v17)) ^ *(v27 - 0x45A3071C31ACD0FALL) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v27 + 124799259 + v30 - 963544002) & v17)) ^ (76 * (v27 + 27))) << 16) ^ 0xCFC577) & ((v25 << 8) ^ 0xFF8577) | (v25 << 8) & 0x3A00;
  v34 = (((1645 * v21 + 3389294) % 0xA88u) ^ 0x5B4F9773EB5C7FEFLL) + v11 + ((2 * ((1645 * v21 + 3389294) % 0xA88u)) & 0x1FDE);
  LODWORD(v34) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v34 + 346259473 + v30 - 963544004) & v17)) ^ *(v34 + 0x5F0D1F2FDB8665FCLL) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v34 + 346259473 + v30 - 963544002) & v17)) ^ (76 * (v34 + 17));
  v35 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v32 + LODWORD(STACK[0x628]) - 963544004) & v17)) ^ v33 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v32 + LODWORD(STACK[0x628]) - 963544002) & v17)) ^ (76 * v32);
  v36 = v35 ^ 0xFFFFFF08;
  v37 = v35 & 0xFFFFFFC7;
  v38 = STACK[0x640] + 4 * (v23 % 0x1D48);
  LODWORD(v31) = ((((v31 ^ 0xA7E9A7) & (v34 ^ 0xFFFF80) ^ v34 & 0x2F) << 8) ^ 0x7892D638) & v36 | v37;
  LODWORD(v34) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v20 + v38 + 673210728) & v17)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v20 + v38 + 673210726) & v17)) ^ v31 & 0x883FED32;
  *(v38 - 0x34EE34220E8AC3B8) = (-1962600273 * v38) ^ 0xA32B5DF9 ^ v34;
  v39 = *(*STACK[0x660] + (*v29 & v19)) + v38;
  v40 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v39 + 673210728) & (qword_101362A48 ^ 0x21E69720))) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v39 + 673210726) & (qword_101362A48 ^ 0x21E69720)));
  v41 = (((v31 & 0x77C012CD ^ 0xF7DB2D75) - 761223544) ^ ((v31 & 0x77C012CD ^ 0x7E512B34) + 1529520327) ^ ((v31 & 0x77C012CD ^ 0xE90A0409) - 864972804)) - 2114463095 + (((v40 ^ v34 ^ 0x90763580) - 1047525106) ^ ((v40 ^ v34 ^ 0x706BC959) + 562951637) ^ ((v40 ^ v34 ^ 0xE013D8E9) - 1309285275));
  LODWORD(v31) = ((2 * (v41 ^ 0x87BC5EBE)) ^ 0xC331B880) & (v41 ^ 0x87BC5EBE) ^ (2 * (v41 ^ 0x87BC5EBE)) & 0x6198DC40;
  LODWORD(v34) = (v41 ^ 0xC7B45AFE) & (2 * (v41 & 0xE62482FE)) ^ v41 & 0xE62482FE;
  v42 = ((4 * (v31 ^ 0x20884440)) ^ 0x86637100) & (v31 ^ 0x20884440) ^ (4 * (v31 ^ 0x20884440)) & 0x6198DC40;
  LODWORD(v31) = (v42 ^ 0x5000) & (16 * ((v31 ^ 0x1101800) & (4 * v34) ^ v34)) ^ (v31 ^ 0x1101800) & (4 * v34) ^ v34;
  LODWORD(v34) = ((16 * (v42 ^ 0x61988C40)) ^ 0x198DC400) & (v42 ^ 0x61988C40) ^ (16 * (v42 ^ 0x61988C40)) & 0x6198DC40;
  LODWORD(v31) = v31 ^ 0x6198DC40 ^ (v34 ^ 0x188C400) & (v31 << 8);
  *(v38 - 0x34EE34220E8AC3B8) = v40 ^ (-1962600273 * v38) ^ v41 ^ (2 * ((v31 << 16) & 0x61980000 ^ v31 ^ ((v31 << 16) ^ 0x5C400000) & (((v34 ^ 0x60101840) << 8) & 0x61980000 ^ 0x61000000 ^ (((v34 ^ 0x60101840) << 8) ^ 0x18DC0000) & (v34 ^ 0x60101840)))) ^ 0x63043B7;
  return (*(STACK[0x668] + 8 * ((16893 * (a8 == 255)) ^ LODWORD(STACK[0x630]))))();
}

uint64_t sub_100A8BB30@<X0>(int a1@<W8>)
{
  v2 = *(v1 - 140);
  if (v2)
  {
    v3 = STACK[0x3A4];
  }

  else
  {
    v3 = *(v1 - 148);
  }

  v4 = STACK[0x3BC];
  if ((v2 & 1) == 0)
  {
    v4 = STACK[0x388];
  }

  v5 = (*(v1 - 140) & 2) == 0;
  v6 = STACK[0x400];
  if ((*(v1 - 140) & 2) != 0)
  {
    v6 = STACK[0x3C0];
  }

  LODWORD(STACK[0x348]) = v6;
  v7 = *(v1 - 236);
  if (v5)
  {
    v7 = STACK[0x3FC];
  }

  *(v1 - 236) = v7;
  v8 = STACK[0x444];
  if (!v5)
  {
    v8 = STACK[0x3F8];
  }

  LODWORD(STACK[0x400]) = v8;
  v9 = STACK[0x37C];
  if (v5)
  {
    v10 = STACK[0x37C];
  }

  else
  {
    v10 = v4;
  }

  LODWORD(STACK[0x3A4]) = v10;
  if (!v5)
  {
    v4 = v9;
  }

  LODWORD(STACK[0x310]) = v4;
  v11 = *(v1 - 252);
  LODWORD(STACK[0x368]) = v3;
  if (!v5)
  {
    v11 = v3;
  }

  LODWORD(STACK[0x300]) = v11;
  v12 = STACK[0x434];
  if (!v5)
  {
    v12 = STACK[0x414];
  }

  LODWORD(STACK[0x3BC]) = v12;
  v13 = (*(v1 - 144) & 2) == 0;
  v14 = STACK[0x2C0];
  if ((*(v1 - 144) & 2) == 0)
  {
    v14 = STACK[0x2A8];
  }

  LODWORD(STACK[0x2A0]) = v14;
  v15 = STACK[0x2A4];
  if (!v13)
  {
    v15 = STACK[0x29C];
  }

  LODWORD(STACK[0x2A8]) = v15;
  v16 = STACK[0x44C];
  if (v13)
  {
    v16 = *(v1 - 136);
  }

  LODWORD(STACK[0x290]) = v16;
  return (*(*(v1 - 120) + 8 * a1))(16482, 3219924798, 0xFFFFFFFFLL, 0xC65E3B8084B4F0C4, 0x66E65B1467F42D7, 0xA7356E1A928B3719, 0x36AA24BBB2617505);
}

uint64_t sub_100A8BDB4()
{
  v8 = 8 * ((v7 | ((v7 < ((v4 - 1294) | 0x40Au) + 1876458338) << 32)) + 0x63581B2E96ED52B7) - 0x1AC0D978362F6220;
  *(v1 + v8) = *(v5 + v8) ^ 0xD4D4D4D4D4D4D4D4;
  v9 = v7 + v2 < v0;
  if (v0 < v3 != v7 + v2 < v3)
  {
    v9 = v0 < v3;
  }

  return (*(*(v6 - 120) + 8 * (((32 * v9) | (v9 << 6)) ^ v4)))();
}

uint64_t sub_100A8C68C@<X0>(int a1@<W8>)
{
  v4 = STACK[0x3D18];
  *(STACK[0x3D18] + 187) = v1;
  v5 = v2 < LODWORD(STACK[0x3E18]);
  v4[186] = v1 >> ((a1 - 44) ^ 0x3A);
  v4[185] = BYTE2(v1);
  v4[184] = HIBYTE(v1);
  return (*(v3 + 8 * ((49 * v5) ^ a1)))();
}

uint64_t sub_100A8C6E4()
{
  v1 = STACK[0x3D78];
  LODWORD(STACK[0x38F8]) = LODWORD(STACK[0x3D88]) ^ LODWORD(STACK[0x3D90]);
  return (*(v0 + 8 * v1))();
}

uint64_t sub_100A8D10C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = -75026750 - 2009212831 * (LODWORD(STACK[0x32C]) ^ 0x5E9736E6);
  LODWORD(STACK[0x70C]) = -75026750 - 2009212831 * (LODWORD(STACK[0x330]) ^ 0x5E9736E6);
  LODWORD(STACK[0x708]) = v11;
  v12 = -75026750 - 2009212831 * (LODWORD(STACK[0x338]) ^ 0xFB8C1FD2);
  LODWORD(STACK[0x748]) = -75026750 - 2009212831 * (LODWORD(STACK[0x328]) ^ 0xFB8C1FD2);
  LODWORD(STACK[0x74C]) = v12;
  v13 = -75026750 - 2009212831 * (LODWORD(STACK[0x334]) ^ 0x5E9736E6);
  LODWORD(STACK[0x728]) = -75026750 - 2009212831 * (LODWORD(STACK[0x33C]) ^ 0x620BA361);
  LODWORD(STACK[0x710]) = v13;
  v14 = STACK[0x340];
  v15 = -75026750 - 2009212831 * (LODWORD(STACK[0x340]) ^ 0x620BA361);
  LODWORD(STACK[0x72C]) = -75026750 - 2009212831 * (LODWORD(STACK[0x344]) ^ 0x620BA361);
  LODWORD(STACK[0x730]) = v15;
  *(&STACK[0x6E8] + (((v14 & 0x1A ^ 0x1A) + (v14 & 0x1A)) | 8u)) = -75026750 - 2009212831 * (LODWORD(STACK[0x324]) ^ 0xFB8C1FD2);
  STACK[0x76C] = 0x75D36D574C831724;
  STACK[0x7BC] = 0xB3EB6736AC7C3B12;
  STACK[0x7F8] = 0xA5D986E42C468605;
  STACK[0x800] = 0x41DBE798B8B38CCBLL;
  STACK[0x808] = 0xC235C215D0F5D3C6;
  v16 = -75026750 - 2009212831 * (LODWORD(STACK[0x360]) ^ 0x66802756);
  LODWORD(STACK[0x6E8]) = (((a1 ^ 0x7C59) + 19985) ^ 0x883DB008) * (LODWORD(STACK[0x354]) ^ 0x66802756) - 75026750;
  LODWORD(STACK[0x6EC]) = v16;
  v17 = -75026750 - 2009212831 * (LODWORD(STACK[0x35C]) ^ 0x66802756);
  LODWORD(STACK[0x6F0]) = -75026750 - 2009212831 * (LODWORD(STACK[0x358]) ^ 0x66802756);
  LODWORD(STACK[0x6F4]) = v17;
  v18 = (1586968294 - (STACK[0x350] & 0x4000000)) ^ STACK[0x350] & 0xFBFFFFFF;
  v19 = -75026750 - 2009212831 * (LODWORD(STACK[0x34C]) ^ 0x5E9736E6);
  LODWORD(STACK[0x714]) = -75026750 - 2009212831 * (LODWORD(STACK[0x348]) ^ 0x5E9736E6);
  LODWORD(STACK[0x718]) = v19;
  v20 = -75026750 - 2009212831 * (LODWORD(STACK[0x384]) ^ 0x66802756);
  LODWORD(STACK[0x6F8]) = -75026750 - 2009212831 * (LODWORD(STACK[0x388]) ^ 0x66802756);
  v21 = LODWORD(STACK[0x380]) ^ 0xFB8C1FD2;
  v22 = LODWORD(STACK[0x368]) ^ 0xFB8C1FD2;
  LODWORD(STACK[0x6FC]) = v20;
  v23 = v22 + 1663319554;
  v24 = -75026750 - 2009212831 * (LODWORD(STACK[0x37C]) ^ 0xFB8C1FD2);
  LODWORD(STACK[0x754]) = -75026750 - 2009212831 * v21;
  LODWORD(STACK[0x758]) = v24;
  v25 = v18 + 1663319554;
  v26 = -75026750 - 2009212831 * (LODWORD(STACK[0x3A4]) ^ ((484164093 - v18) ^ (v18 + 1663319554)) & 0x620BA361);
  LODWORD(STACK[0x738]) = -75026750 - 2009212831 * (LODWORD(STACK[0x38C]) ^ 0x620BA361);
  LODWORD(STACK[0x73C]) = v26;
  v27 = (((((484164093 - v22) | (v22 + 1663319554)) & 0x52517A0D) - 735138567) | 0x62802250) ^ LODWORD(STACK[0x3B4]);
  v28 = -75026750 - 2009212831 * (LODWORD(STACK[0x370]) ^ 0xFB8C1FD2);
  LODWORD(STACK[0x75C]) = -2009212831 * v23;
  LODWORD(STACK[0x760]) = v28;
  STACK[0x7F0] = 0x4B2F630837F0F1BCLL;
  STACK[0x7E8] = 0xADF30BE8F34E8E18;
  v29 = LODWORD(STACK[0x3AC]) ^ 0x66802756;
  v30 = LODWORD(STACK[0x3B0]) ^ 0x5E9736E6;
  v31 = LODWORD(STACK[0x3BC]) ^ 0x620BA361;
  v32 = LODWORD(STACK[0x3A8]) ^ 0x620BA361;
  v33 = -75026750 - 2009212831 * (LODWORD(STACK[0x3A0]) ^ 0x5E9736E6);
  LODWORD(STACK[0x734]) = -75026750 - 2009212831 * (LODWORD(STACK[0x3B8]) ^ 0x620BA361);
  LODWORD(STACK[0x724]) = v33;
  v34 = LODWORD(STACK[0x39C]) ^ 0xFB8C1FD2;
  LODWORD(STACK[0x700]) = -75026750 - 2009212831 * v27;
  LODWORD(STACK[0x704]) = -75026750 - 2009212831 * v29;
  LODWORD(STACK[0x71C]) = -2009212831 * v25;
  LODWORD(STACK[0x720]) = -75026750 - 2009212831 * v30;
  LODWORD(STACK[0x77C]) = -1554292062;
  LODWORD(STACK[0x780]) = -562368087;
  LODWORD(STACK[0x740]) = -2009212831 * (v31 + 1663319554);
  LODWORD(STACK[0x744]) = -75026750 - 2009212831 * v32;
  LODWORD(STACK[0x7AC]) = -1503268972;
  LODWORD(STACK[0x7B0]) = 964149000;
  LODWORD(STACK[0x778]) = 697301852;
  LODWORD(STACK[0x774]) = 2072008592;
  LODWORD(STACK[0x764]) = -75026750 - 2009212831 * v34;
  LODWORD(STACK[0x768]) = -209370120;
  LODWORD(STACK[0x784]) = -857926165;
  LODWORD(STACK[0x788]) = -811342999;
  LODWORD(STACK[0x7B4]) = 1594714176;
  LODWORD(STACK[0x7B8]) = 719758475;
  LODWORD(STACK[0x7C4]) = 1898718875;
  LODWORD(STACK[0x7C8]) = 32983286;
  LODWORD(STACK[0x78C]) = 1196691168;
  LODWORD(STACK[0x790]) = -1854477178;
  LODWORD(STACK[0x7A8]) = 997233895;
  LODWORD(STACK[0x7A4]) = -1976790548;
  LODWORD(STACK[0x7D4]) = -530068155;
  LODWORD(STACK[0x7D8]) = 1247393695;
  LODWORD(STACK[0x7E0]) = -730225604;
  v35 = *(a11 + 8);
  LODWORD(STACK[0x7DC]) = -79446988;
  LODWORD(STACK[0x7CC]) = ((v31 + 1663319554) | (484164093 - v31)) & 0x41E8823A ^ 0xD3AE374A;
  LODWORD(STACK[0x7D0]) = -73438119;
  LODWORD(STACK[0x7A0]) = 2059472171;
  LODWORD(STACK[0x79C]) = -2008790396;
  LODWORD(STACK[0x7E4]) = -1663177892;
  LODWORD(STACK[0x794]) = -1014954315;
  LODWORD(STACK[0x798]) = -2041910960;
  return (*(STACK[0x6D8] + 8 * ((2 * (*(v35 - 0x308E083E0C524CBELL) != 0)) | (8 * (*(v35 - 0x308E083E0C524CBELL) != 0)) | a1)))();
}

uint64_t sub_100A8D60C(uint64_t a1, uint64_t a2)
{
  *(a2 + 88) = -2057643115;
  *(a2 + 104) = 4;
  return (*(v3 + 8 * ((11601 * (v2 < 0x1CFD5B13)) ^ (v2 + 498471301 + v2 + 498477581))))();
}

uint64_t sub_100A8D668@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15)
{
  v17 = *(v16 - 248);
  v18 = ((2 * (v17 ^ 0x61CB333F)) ^ 0xC4FD626C) & (v17 ^ 0x61CB333F) ^ (2 * (v17 ^ 0x61CB333F)) & 0xE27EB136;
  v19 = v18 ^ 0x22029112;
  v20 = (v18 ^ 0x207C8134) & (4 * (a6 & (v17 ^ 0x63A1332D) ^ a7)) ^ a6 & (v17 ^ 0x63A1332D) ^ a7;
  v21 = ((4 * v19) ^ 0x89FAC4D8) & v19 ^ (4 * v19) & 0xE27EB134;
  v22 = (v21 ^ 0x807A8010) & (16 * v20) ^ v20;
  v23 = ((16 * (v21 ^ 0x62043126)) ^ 0x27EB1360) & (v21 ^ 0x62043126) ^ (16 * (v21 ^ 0x62043126)) & 0xE27EB130;
  v24 = v22 ^ 0xE27EB136 ^ (v23 ^ 0x226A1100) & (v22 << 8);
  return (*(v15 + 8 * a1))(v17 ^ (2 * ((v24 << 16) & 0x627E0000 ^ v24 ^ ((v24 << 16) ^ 0x31360000) & (((v23 ^ 0xC014A016) << 8) & 0x627E0000 ^ 0x4E0000 ^ (((v23 ^ 0xC014A016) << 8) ^ 0x7EB10000) & (v23 ^ 0xC014A016)))) ^ a15 ^ *(v16 - 224), 2795149331, 121);
}

uint64_t sub_100A8D8D8()
{
  STACK[0x3AD8] = 0x2206A0EA0CFD85AALL;
  LODWORD(STACK[0x3AE8]) = v0 - 367;
  (*(v1 + 8 * (v0 ^ 0x46D1)))(STACK[0x3AF0]);
  v2 = *(v1 + 8 * v0);
  STACK[0x3AF0] = 0;
  return v2(10, 11, 13, 0, 945, 0);
}

uint64_t sub_100A8D96C()
{
  v1 = STACK[0x6330];
  v2 = STACK[0xC6C8];
  v3 = STACK[0x6BF8];
  STACK[0x70F8] = STACK[0x6BF8];
  STACK[0x8300] = v1;
  STACK[0x8D30] = v2;
  STACK[0x7280] = STACK[0x7F28];
  STACK[0x58F0] = 0;
  LODWORD(STACK[0xC534]) = 103679699;
  STACK[0x5A68] = 0;
  LODWORD(STACK[0xAFAC]) = 1251397511;
  STACK[0xB168] = 0;
  LODWORD(STACK[0x7880]) = 0;
  LODWORD(STACK[0x7A54]) = 103679699;
  if (v3)
  {
    v4 = v1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v9 = v4 || LODWORD(STACK[0xA774]) != 103679707 || v2 == 0 || STACK[0x8778] == 0 || STACK[0xA3E8] == 0;
  return (*(STACK[0x57D8] + 8 * ((((((v0 + 6823) ^ v9) & 1) == 0) * (v0 - 8231)) ^ v0)))();
}

uint64_t sub_100A8DA70(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = *(v10 + 1368);
  HIDWORD(v14) = *(v13 + (v9 + ((a2 + 12128) ^ 0x7BF7u) * v11) % 0x1808);
  LODWORD(v14) = a8 + (HIDWORD(v14) << 24);
  v15 = v8 + 5621 * ((((v14 >> 25) & 0x80) != 0) | (2 * (v14 >> 25)));
  LOBYTE(v15) = *(v13 + v15 - 6152 * (((89362129 * v15) >> 32) >> 7));
  *(*(v10 + 1360) + 4 * (v12 % 0x2240)) = (v15 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v15 ^ 0x34)) & 0x28 ^ 0x1C) & (v15 ^ 0x34))) ^ 0x1C) & (v15 ^ 0x34))) ^ 0x1C) & (v15 ^ 0x34))) ^ 0x5C) & (v15 ^ 0x34)))) ^ 0x42388F3A;
  return (*(STACK[0x57D8] + 8 * ((22852 * (v11 == 255)) ^ a2)))();
}

uint64_t sub_100A8DC84()
{
  LODWORD(STACK[0x6D0]) = 0;
  v0 = STACK[0x6A0];
  v1 = LODWORD(STACK[0x6A0]) - 13799;
  v2 = STACK[0x6D8];
  LODWORD(STACK[0x590]) = v1;
  v3 = *(v2 + 8 * v1);
  STACK[0x6B0] = 193131;
  STACK[0x6A8] = 193442;
  STACK[0x6C8] = 194064;
  STACK[0x6C0] = 194686;
  STACK[0x6B8] = 194997;
  STACK[0x628] = 195308;
  STACK[0x620] = 195619;
  STACK[0x618] = 195930;
  STACK[0x610] = 196241;
  LODWORD(STACK[0x570]) = v0 - 12945;
  LODWORD(STACK[0x588]) = (v0 - 12945) ^ 0xFBCB8542;
  STACK[0x6A0] = 1555;
  STACK[0x698] = 1866;
  STACK[0x690] = 2177;
  STACK[0x688] = 2488;
  STACK[0x680] = 3110;
  STACK[0x678] = 3421;
  STACK[0x608] = 4043;
  STACK[0x600] = 4354;
  STACK[0x5F8] = 4665;
  return v3(194375, 192198, LODWORD(STACK[0x660]), 0, 192509, 193753, 0x441FEEF80441FEFLL, 3732);
}

uint64_t sub_100A8DDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, int a24, int a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, int a40, int a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, int a53, int a54)
{
  LODWORD(STACK[0x2E0]) = LODWORD(STACK[0x378]) ^ 0x1A1A1A1A;
  *(v56 - 148) = LODWORD(STACK[0x358]) ^ ~(*(v56 - 148) & STACK[0x35C]);
  LODWORD(STACK[0x370]) = a54 ^ a23 ^ a25 ^ (a41 + LODWORD(STACK[0x370]) + a54);
  LODWORD(STACK[0x38C]) = a33 + (LODWORD(STACK[0x354]) ^ 0x66EAFED6);
  LODWORD(STACK[0x378]) = a39 - a53;
  return (*(v54 + 8 * v55))(a1, 0x11DFF50E4B00309DLL, 0x6AF28F6D7E46EF71);
}

uint64_t sub_100A8E040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v22 = a3 + a5;
  v23 = a3 - 1;
  v24 = v22 + v16 + a2;
  v25 = (__ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8) + a6) & 0xF9FFFFFFFFFFFFFFLL;
  v26 = v25 ^ a8;
  v27 = v25 ^ v8;
  v28 = __ROR8__(v26, 8);
  v29 = __ROR8__(((v9 | (2 * (v28 + v27))) - (v28 + v27) + v10) ^ v11, 8);
  v30 = ((v9 | (2 * (v28 + v27))) - (v28 + v27) + v10) ^ v11 ^ __ROR8__(v27, 61);
  v31 = (v29 + v30) ^ a7;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v21;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ v17;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ v20;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v19;
  v40 = __ROR8__(v39, 8) + (v39 ^ __ROR8__(v38, 61));
  *(a1 + v23) = (((v40 - (v12 & (2 * v40)) + v13) ^ v14) >> (8 * (v24 & 7u))) ^ *v24;
  return (*(v18 + 8 * (((v23 == 0) * a4) ^ v15)))();
}

uint64_t sub_100A8E188(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  STACK[0x4F40] = v8;
  LODWORD(STACK[0x4A70]) = v7 + v6;
  LODWORD(STACK[0x5790]) = a6 << 8;
  return (*(STACK[0x57D8] + 8 * a4))((a5 << 8), 19639896, 21613735);
}

uint64_t sub_100A8E264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v36 = STACK[0x200];
  (*(v35 + 8 * (LODWORD(STACK[0x200]) + 24961)))(STACK[0x208]);
  (*(v35 + 8 * (v36 ^ 0x669F)))(STACK[0x210]);
  return (*(v35 + 8 * v36))(a35);
}

uint64_t sub_100A8E2F0@<X0>(uint64_t a1@<X4>, unint64_t a2@<X6>, unint64_t a3@<X8>)
{
  v7 = v3;
  v8 = v3 ^ v4;
  STACK[0x3C30] = v8;
  LODWORD(STACK[0x3A78]) = v7;
  return (*(v6 + 8 * (((a2 >= ((v8 - 3598) ^ a3)) * v5) ^ v7)))(a1 + 535);
}

uint64_t sub_100A8E338@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = v3 - 14;
  v6 = (*(((2 * (a2 + 6)) & 0x7EDFEB6FF63FF7AALL) + ((a2 + 6) ^ 0x7F6FF5B7FB1FFBD5) + v2 - 0x7F6FF5B7FB1FFBD5) << 24) | (*(((2 * (a2 + 6)) & 0x7EDFEB6FF63FF7AALL) + ((a2 + 6) ^ 0x7F6FF5B7FB1FFBD5) + v2 - 0x7F6FF5B7FB1FFBD4) << 16) | (*(((2 * (a2 + 6)) & 0x7EDFEB6FF63FF7AALL) + ((a2 + 6) ^ 0x7F6FF5B7FB1FFBD5) + v2 - 0x7F6FF5B7FB1FFBD3) << 8);
  v7 = *(((2 * (a2 + 6)) & 0x7EDFEB6FF63FF7AALL) + ((a2 + 6) ^ 0x7F6FF5B7FB1FFBD5) + v2 - 0x7F6FF5B7FB1FFBD2);
  return (*(v4 + 8 * ((126 * ((((v7 - ((2 * v7) & 0x28) + 2093490452) ^ 0x5A0292DE) & (v6 ^ 0x2FFFFFFF) ^ v6 & 0xD9354C00 ^ 0x26CAB3CA) + a2 + 10 > a1)) ^ v5)))();
}

uint64_t sub_100A8E424()
{
  v2 = STACK[0x13B8];
  STACK[0x798] = STACK[0x13B8];
  return (*(v1 + 8 * (((v2 == 0) ^ (v0 + 85)) & 1 | v0)))();
}

uint64_t sub_100A8E490(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  LODWORD(STACK[0x6C0]) = v9;
  LODWORD(STACK[0x478]) = 0;
  STACK[0x470] = 0;
  LODWORD(STACK[0x628]) = v11;
  LODWORD(STACK[0x630]) = v11 - 790974043;
  v12 = STACK[0x7FC];
  v13 = STACK[0x80C];
  LODWORD(STACK[0x620]) = v11 - 790974043 - a3 - 31258;
  v14 = -1673081951 * v12 - 1663319554;
  v15 = (((-1673081951 * v13 + 928722640) ^ 0x8DAA4E9C) + 1158586292) ^ (-1673081951 * v13 + 928722640) ^ (((-1673081951 * v13 + 928722640) ^ 0xEB637420) + 600286480) ^ (((-1673081951 * v13 + 928722640) ^ 0x6EADEB92) - 1509344578) ^ (((-1673081951 * v13 + 928722640) ^ 0x3F3FFFFE) - 140824878);
  LODWORD(STACK[0x6A8]) = (8 * v14) ^ (4 * v14) ^ 0xF50DFD2E;
  v16 = (v14 >> 30) ^ (v14 >> 29);
  v17 = ((((v15 & 0xCB045C9A ^ 0xCFEE473C) - 995817128) ^ ((v15 & 0xCB045C9A ^ 0x955124A) + 35544098) ^ ((v15 & 0xCB045C9A ^ 0xEBF057C) + 99896088)) + (((v15 & 0xCB045C9A ^ 0xE1284F32) + 1417750945) ^ ((v15 & 0xCB045C9A ^ 0x657F7C79) - 791274772) ^ ((v15 & 0xCB045C9A ^ 0x87573FDB) + 855529802)) - 2046330981) | (((a2 + v8) & 0x2044118 ^ 0x2044118) + ((a2 + v8) & 0x2044118));
  v18 = v17 - 2 * (v17 & 0x244B23A7 ^ (((((v15 & 0x9A ^ 0x3C) + 88) ^ ((v15 & 0x9A ^ 0x4A) + 34)) ^ ((v15 & 0x9A ^ 0x7C) + 24)) + ((((v15 & 0x9A ^ 0x32) - 95) ^ ((v15 & 0x9A ^ 0x79) - 20)) ^ ((v15 & 0x9A ^ 0xDB) + 74)) - 101) & 1) + 608904102;
  LODWORD(STACK[0x658]) = (((v15 ^ 0x219D0801) + 1417672778) ^ ((v15 ^ 0x95EBCC29) - 536265630) ^ ((v15 ^ 0x832DEAF8) - 154199375)) - 1206520069 * (((v18 ^ 0x3259E354) - 844751700) ^ ((v18 ^ 0x31FA3813) - 838481939) ^ ((v18 ^ 0x27E8F8E1) - 669579489));
  v19 = (v14 >> 4) ^ 0x399429B3;
  v20 = (v14 >> 27) ^ (v14 >> 28) ^ (v14 >> 15) ^ (v14 >> 2) ^ (v14 >> 6) ^ (v14 >> 21) ^ (v14 >> 19) ^ (v14 >> 18) ^ (v14 >> 14) ^ (v14 >> 13) ^ (v14 >> 10) ^ (v14 >> 11) ^ (v14 >> 9) ^ (v14 >> 5) ^ v16 ^ v19;
  LODWORD(STACK[0x5E0]) = v20 ^ 0xB0E5EB82;
  LODWORD(STACK[0x5D8]) = (v20 >> 21) ^ (v20 >> 27) ^ 0x988F8A0C;
  v21 = (v14 >> 20) ^ (v14 >> 1) ^ (v14 >> 21) ^ (v14 >> 22) ^ (v14 >> 25) ^ (v14 >> 19) ^ (v14 >> 18) ^ HIWORD(v14) ^ (v14 >> 14) ^ (v14 >> 13) ^ (v14 >> 12) ^ (v14 >> 11) ^ (v14 >> 7) ^ (v14 >> 6);
  LODWORD(STACK[0x688]) = (v21 - ((2 * v21) & 0x73285366) + 966011315) ^ v19;
  v22 = (-1663319554 - 1673081951 * LODWORD(STACK[0x7F4])) ^ (v12 << 31);
  LODWORD(STACK[0x5C0]) = v14 << 14;
  LODWORD(STACK[0x5A8]) = v14 << 18;
  LODWORD(STACK[0x5D0]) = v14 << 19;
  v23 = (v14 << 11) ^ 0xB02FCB1D;
  v24 = (v14 << 7) ^ 0xE691809E;
  v25 = (v14 << 10) ^ 0x314641B2;
  LODWORD(STACK[0x5A0]) = v14 << 21;
  LODWORD(STACK[0x588]) = v14 << 26;
  LODWORD(STACK[0x570]) = v23;
  v26 = v10;
  v27 = (v14 << 13) ^ 0xEEB64B1F;
  LODWORD(STACK[0x578]) = v27;
  v28 = v22 ^ v14 ^ (v14 << 12) ^ (v14 << 25) ^ (v14 << 14) ^ (v14 << 16) ^ (v14 << 18) ^ (v14 << 19) ^ (v14 << 20) ^ (v14 << 21) ^ (v14 << 26) ^ v24 ^ v25 ^ v23 ^ (v14 << 13) ^ 0x67F80A31;
  LODWORD(STACK[0x560]) = v28 - ((2 * v28) & 0xB6D91DB8);
  v29 = HIBYTE(v14) ^ (v14 >> 17) ^ (v14 >> 8) ^ (v14 >> 25) ^ (v14 >> 22) ^ (v14 >> 21) ^ (v14 >> 19) ^ HIWORD(v14) ^ (v14 >> 14) ^ (v14 >> 12) ^ (v14 >> 11) ^ (v14 >> 10) ^ (v14 >> 9) ^ (v14 >> 7) ^ (v14 >> 6) ^ (v14 >> 5);
  LODWORD(STACK[0x568]) = v14 << 15;
  LODWORD(STACK[0x598]) = v14 << 22;
  LODWORD(STACK[0x580]) = v14 << 23;
  LODWORD(STACK[0x590]) = v14 << 27;
  v30 = v23 ^ v27 ^ LODWORD(STACK[0x6A8]) ^ (-1673081951 * LODWORD(STACK[0x7F8]) - 1663319554);
  v31 = v29 >> 21;
  LODWORD(STACK[0x670]) = v29 >> 21;
  v32 = (v14 << 24) ^ (v14 << 8) ^ (v14 << 25) ^ (v14 << 15) ^ (v14 << 18) ^ (v14 << 16) ^ (v14 << 20) ^ (v14 << 21) ^ (v14 << 22) ^ (v14 << 23) ^ (v14 << 26) ^ (v14 << 27) ^ v24 ^ v25 ^ v30 ^ v29 ^ v16 ^ (4 * (v29 ^ v16)) ^ (32 * (v29 ^ v16)) ^ ((v29 ^ v16) << 11);
  LODWORD(STACK[0x4E4]) = v32;
  LODWORD(STACK[0x668]) = v32 ^ (4 * v31) ^ 0x80F1E86F;
  v33 = STACK[0x658];
  v34 = (LODWORD(STACK[0x658]) - 1009673943);
  LODWORD(STACK[0x5C8]) = v34 >> 25;
  v35 = (v34 >> 30) ^ (v34 >> 29) ^ (v34 >> 25);
  LODWORD(STACK[0x6A0]) = v35;
  LODWORD(STACK[0x5B0]) = v34 >> 22;
  LODWORD(STACK[0x650]) = v26;
  LODWORD(STACK[0x690]) = v34 >> 8;
  v36 = (v34 >> 6) ^ 0x92188A4E;
  v37 = (v34 >> 4) ^ 0xA077C4BB;
  v38 = (v34 >> 31) ^ (v34 >> 26) ^ (v34 >> 3) ^ v35 ^ (v34 >> 22) ^ (v34 >> 18) ^ (v34 >> 19) ^ WORD1(v34) ^ (v34 >> 15) ^ (v34 >> 12) ^ (v34 >> 10) ^ (v34 >> 8) ^ (v34 >> 7) ^ v36 ^ v37;
  LODWORD(STACK[0x608]) = v34 << 17;
  v39 = (4 * v34) ^ (2 * v34);
  v40 = (v34 << 29) ^ (v34 << 6) ^ (v34 << 17) ^ v39;
  v41 = v40 - 2 * (v40 & 0x55BF4E7E ^ v39 & 0x10) - 708882834;
  v42 = v38 ^ 0xE3A16669;
  v43 = ((v41 ^ (4 * (v38 ^ 0xE3A16669)) ^ 0x9287EC1E) - ((2 * (v41 ^ (4 * (v38 ^ 0xE3A16669)) ^ 0x9287EC1E)) & 0x3D4100C6) + 513835107) ^ (32 * (v38 ^ 0xE3A16669)) ^ 0x276593E3;
  v44 = (v43 - ((2 * v43) & 0xC0B49C3E) + 1616530975) ^ ((v38 ^ 0xE3A16669) << 11) ^ 0x111EAE1F;
  v45 = (v38 >> 27) ^ (v38 >> 21);
  LODWORD(STACK[0x618]) = v45;
  v46 = v45 ^ 0x580384E4;
  v47 = (v44 - ((2 * v44) & 0xD5146E4E) - 360040665) ^ (4 * (v45 ^ 0x580384E4));
  LODWORD(STACK[0x524]) = v34 << 14;
  LODWORD(STACK[0x680]) = v34 << 16;
  LODWORD(STACK[0x660]) = v34 << 20;
  LODWORD(STACK[0x678]) = v34 << 25;
  LODWORD(STACK[0x558]) = v34 << 24;
  LODWORD(STACK[0x698]) = v34 << 22;
  v48 = (v34 << 10) ^ 0xA56C2E43;
  v49 = (8 * v34) ^ 0xB6529816;
  v50 = (v34 << 7) ^ 0xB319F04F;
  LODWORD(STACK[0x518]) = v50;
  LODWORD(STACK[0x4E8]) = v48;
  v51 = (v34 << 14) ^ v34 ^ (v34 << 16) ^ (v34 << 20) ^ (v34 << 22) ^ (v34 << 24) ^ (v34 << 25) ^ v49 ^ v50 ^ v48;
  v52 = (v34 << 13) ^ 0x32A77FC7;
  LODWORD(STACK[0x6B0]) = v52;
  LODWORD(STACK[0x600]) = v34 << 28;
  v53 = (v34 << 28) ^ 0x25A96027;
  LODWORD(STACK[0x514]) = v53;
  v54 = (v34 << 26) ^ 0xE3A2D757;
  LODWORD(STACK[0x6B8]) = v54;
  v55 = v52 ^ v54;
  v56 = v51 ^ v52 ^ v54 ^ v53 ^ v42 ^ v46 ^ (32 * v46) ^ ((v47 ^ 0x8A8422E3) - 2 * ((v47 ^ 0x8A8422E3) & 0x2873195F ^ v47 & 8) + 678631767);
  LODWORD(STACK[0x610]) = v56;
  v57 = (4 * v34) ^ 0x9245FE2C ^ v49;
  LODWORD(STACK[0x5B8]) = v57;
  LODWORD(STACK[0x658]) = 1009673942 - v33;
  v58 = (v34 >> (((v56 ^ 0xB7) & (v56 ^ 0xAA) ^ 0xDD) & 1) >> (((v56 ^ 0xB7) & (v56 ^ 0xAA) ^ 0xDD) & 0x1C)) ^ (v34 >> 28);
  STACK[0x5F8] = ((v58 & 4 ^ 4) + (v58 & 4)) | ((((((v56 & 0xF5 ^ 0x66) + 127) ^ ((v56 & 0xF5 ^ 0x8D) - 106)) ^ ((v56 & 0xF5 ^ 0xDE) - 57)) + ((((v56 & 0xF5 ^ 0xC4) + 74) ^ (114 - (v56 & 0xF5))) ^ ((v56 & 0xF5 ^ 0xFB) + 119)) - 124) * ((v34 & 0x16) + ((-42 - v33) & 0x16))) & 0xFE;
  v59 = (v34 >> 27) ^ (v34 >> 2) ^ (v34 >> 21) ^ (v34 >> 30) ^ (v34 >> 19) ^ (v34 >> 18) ^ (v34 >> 15) ^ (v34 >> 14) ^ (v34 >> 13) ^ (v34 >> 11) ^ (v34 >> 10) ^ (v34 >> 9) ^ v36 ^ v37;
  v60 = (v34 >> 5) ^ 0x2E0C0D3;
  v61 = v59 ^ v60 ^ v58;
  LODWORD(STACK[0x5E8]) = v61 ^ 0x8F133BD9;
  LODWORD(STACK[0x5F0]) = ((v61 ^ 0x308F8E26u) >> ((((v59 >> 27) & 0x55 ^ 0x33) & 0x11 | (v59 >> 27) & 0x55 & ((v59 >> 27) & 0x55 ^ 0xCC)) ^ 4)) ^ ((v59 >> 27) | 0x76487000);
  v62 = STACK[0x5B0];
  v63 = (v34 >> 11) ^ (v34 >> 20) ^ LODWORD(STACK[0x5B0]) ^ LODWORD(STACK[0x5C8]) ^ (v34 >> 21) ^ (v34 >> 19) ^ (v34 >> 18) ^ WORD1(v34) ^ (v34 >> 14) ^ (v34 >> 13) ^ (v34 >> 12) ^ (v34 >> 7);
  v64 = v63 ^ (v34 >> 1);
  v65 = v37 ^ v36 ^ v64;
  LODWORD(STACK[0x500]) = v65 ^ 0x48A85EB;
  LODWORD(STACK[0x504]) = (v64 >> 30) ^ (v65 >> 27) ^ ((v65 ^ 0x48A85EB) >> 21) ^ 0x1B03560F;
  v66 = BYTE3(v34) ^ (v34 >> 17) ^ LODWORD(STACK[0x6A0]) ^ v62 ^ (v34 >> 21) ^ (v34 >> 19) ^ WORD1(v34) ^ (v34 >> 14) ^ (v34 >> 12) ^ (v34 >> 11) ^ (v34 >> 10) ^ (v34 >> 9) ^ LODWORD(STACK[0x690]) ^ (v34 >> 7) ^ v36 ^ v60;
  v67 = (-1673081951 * LODWORD(STACK[0x808]) - 1663319554) ^ (v34 << 8) ^ (v34 << 15) ^ (v34 << 7);
  v68 = (v67 - ((2 * v67) & 0xB41040E0) - 637001616) ^ (4 * (v66 ^ 0xF7F7EDFE)) ^ 0x4636BDFC;
  v69 = STACK[0x660];
  LODWORD(STACK[0x4D8]) = v34 << 21;
  LODWORD(STACK[0x6A0]) = v34 << 18;
  v70 = (v34 << 18) ^ LODWORD(STACK[0x680]) ^ v69 ^ (v34 << 21);
  LODWORD(STACK[0x5C8]) = v34 << 23;
  v71 = v70 ^ (v34 << 22) ^ (v34 << 23) ^ LODWORD(STACK[0x558]);
  v72 = (v34 << 11) ^ 0xF36621C6;
  LODWORD(STACK[0x690]) = v72;
  v73 = v71 ^ LODWORD(STACK[0x678]) ^ v48 ^ v72;
  v74 = (v34 << 27) ^ 0x8886F5A4;
  LODWORD(STACK[0x5B0]) = v74;
  v75 = v73 ^ v55 ^ v74 ^ v57 ^ v66 ^ 0xF7F7EDFE ^ ((v66 ^ 0xF7F7EDFE) << 11) ^ (32 * (v66 ^ 0xF7F7EDFE));
  LODWORD(STACK[0x4FC]) = v66 >> 21;
  v76 = (v66 >> 21) ^ 0x80EA590A;
  LODWORD(STACK[0x558]) = v76;
  v77 = v75 ^ (4 * v76) ^ (32 * v76) ^ (v76 << 11) ^ (v68 - ((2 * v68) & 0x4BBEC826) + 635397139);
  v78 = STACK[0x670];
  v79 = STACK[0x668];
  v80 = LODWORD(STACK[0x668]) ^ LODWORD(STACK[0x670]);
  LODWORD(STACK[0x538]) = v80;
  v80 ^= 0x92AA89CA;
  LODWORD(STACK[0x548]) = v80;
  v81 = (32 * v78) ^ (v78 << 11) ^ v80;
  v82 = v81 ^ 0xE1A48A9B;
  v83 = (4 * (v81 ^ 0xE1A48A9B)) ^ 0x1DC317FF;
  LODWORD(STACK[0x540]) = v83;
  v84 = v81 ^ 0x6E18DDA5;
  v85 = v81 ^ ((v81 ^ 0xE1A48A9B) << 6) ^ v83 ^ 0xA23F5922 ^ (v84 << (-23 * ((v63 & 0x59 ^ 0x59) + (v63 & 0x59))));
  v86 = STACK[0x4E4];
  v87 = (((v79 >> 31) | 0x2D2680E6) + 18) ^ (LODWORD(STACK[0x4E4]) >> 26) ^ 0x2D2680E6;
  v88 = (LODWORD(STACK[0x4E4]) >> 30) - 415734672;
  LODWORD(STACK[0x508]) = v88;
  v89 = ((v87 - ((2 * v87) & 0xFFFFFFE3) - 415734671) ^ v88) - 2 * (((v87 - ((2 * v87) & 0xFFFFFFE3) - 415734671) ^ v88) & 0x13F2ABDC ^ (v87 - ((2 * v87) & 0xFFFFFFE3) - 415734671) & 8);
  v90 = (8 * (v81 ^ 0xE1A48A9B)) ^ 0x840FE5EC;
  LODWORD(STACK[0x534]) = v90;
  v91 = (v85 - ((2 * v85) & 0xF3DAB838) - 101884900) ^ v90;
  v92 = ((v81 ^ 0xE1A48A9B) << 10) ^ 0x922C7EA3;
  LODWORD(STACK[0x528]) = v92;
  v93 = ((v91 - ((2 * v91) & 0xC6E10D46) + 1668318883) ^ v92) - 2 * (((v91 - ((2 * v91) & 0xC6E10D46) + 1668318883) ^ v92) & 0x45A93637 ^ (v91 - ((2 * v91) & 0xC6E10D46) + 1668318883) & 4);
  v94 = (v86 >> 29) ^ 0xD3F2ABD7;
  LODWORD(STACK[0x4E0]) = v94;
  v95 = ((v89 - 739071020) ^ v94) - ((2 * ((v89 - 739071020) ^ v94)) & 0x1533074);
  v96 = (v86 >> 22) ^ 0x40A999CB;
  LODWORD(STACK[0x4B0]) = v96;
  v97 = ((v95 + 1084856378) ^ v96) - ((2 * ((v95 + 1084856378) ^ v96)) & 0x5234156E);
  v98 = (v86 >> 25) ^ 0xA91A0A89;
  LODWORD(STACK[0x4AC]) = v98;
  v99 = ((v97 - 1457911113) ^ v98) - ((2 * ((v97 - 1457911113) ^ v98)) & 0x1C6C6D3C);
  v100 = ((v81 ^ 0xE1A48A9B) << 7) ^ 0x9B82A933;
  v101 = (v93 + 1168717363) ^ v100;
  LODWORD(STACK[0x4B4]) = v100;
  v102 = (v81 ^ 0xE1A48A9B) << 13;
  LODWORD(STACK[0x510]) = v102;
  v103 = v102 ^ 0x6CFD14E4;
  v104 = ((v101 - ((2 * v101) & 0xCC35A9C8) - 434449180) ^ v102 ^ 0x6CFD14E4) - 2 * (((v101 - ((2 * v101) & 0xCC35A9C8) - 434449180) ^ v102 ^ 0x6CFD14E4) & 0x787D525F ^ (v101 - ((2 * v101) & 0xCC35A9C8) - 434449180) & 0x13);
  v105 = (v81 >> 19) ^ 0x4E363B5D;
  v106 = (v81 >> 6) ^ (v81 >> 7) ^ 0xE794DE13;
  LODWORD(STACK[0x4F8]) = v106;
  v107 = v79 ^ ~v78;
  v108 = (v81 >> 18) ^ 0xBE85631A;
  v109 = HIWORD(v81) ^ 0x38B046EC;
  v110 = (((v99 + 1312175774) ^ v105) - ((2 * ((v99 + 1312175774) ^ v105)) & 0x7D0AF138) - 1098549092) ^ v108;
  v111 = (((v81 >> 15) ^ (v81 >> 3) ^ 0xDC3C785) - 2 * (((v81 >> 15) ^ (v81 >> 3) ^ 0xDC3C785) & 0x18B028F6 ^ ((v81 >> 15) ^ (v81 >> 3)) & 2) + 951068916) ^ v109 ^ v110;
  v112 = (v81 >> 12) ^ 0xB52F6753;
  v113 = (v111 - ((2 * v111) & 0x6A530DBC) - 1255569698) ^ v112;
  v114 = (v81 >> 10) ^ 0xC8538F32;
  LODWORD(STACK[0x4C0]) = v114;
  v115 = (v113 - ((2 * v113) & 0x9090120A) - 934803195) ^ v114;
  v116 = v115 - ((2 * v115) & 0x714865C8);
  v117 = v106 ^ (v81 >> 8) ^ 0x38CA2A39;
  LODWORD(STACK[0x4BC]) = v117;
  v118 = (v81 >> 4) ^ 0xC1858C80;
  v119 = v117 ^ v118 ^ (v116 + 950285028);
  v120 = ((v107 << 29) - ((v107 & 1) << 30) + 981234446) ^ ((v81 ^ 0xE1A48A9B) << 17) ^ 0x9400730E;
  LODWORD(STACK[0x670]) = v119 ^ 0xFAAB5F95;
  v121 = (v120 - ((2 * v120) & 0xA1180000) + 1351404684) ^ (4 * (v119 ^ 0xFAAB5F95)) ^ 0x3C7384C8;
  LODWORD(STACK[0x4F0]) = v121 - ((2 * v121) & 0x5F9FE5DE) - 1345326353;
  LODWORD(STACK[0x668]) = (v119 >> 27) ^ (v119 >> 21) ^ 0x6B71E458;
  v122 = v84 << (-45 * (((v110 & 0x37 ^ 0x37) + (v110 & 0x37)) ^ ((STACK[0x658] & 0xB9) + (v34 & 0xB9))));
  LODWORD(v122) = v81 ^ 0xE1A48A9B ^ ((v107 << 31) | 0x4F8B95A2) ^ ((v81 ^ 0xE1A48A9B) << 19) ^ ((v81 ^ 0xE1A48A9B) << 7) ^ 0x9B82A933 ^ (((v122 - ((2 * v122) & 0xE5F20F4C) + 1928923046) ^ ((v81 ^ 0xE1A48A9B) << 12) ^ 0xB78AE7A6) - 2 * (((v122 - ((2 * v122) & 0xE5F20F4C) + 1928923046) ^ ((v81 ^ 0xE1A48A9B) << 12) ^ 0xB78AE7A6) & 0x3C6EF4BF ^ (v122 - ((2 * v122) & 0xE5F20F4C) + 1928923046) & 0x10) + 1013904559);
  v123 = ((v81 ^ 0xE1A48A9B) << 11) ^ 0x8522F41E;
  LODWORD(STACK[0x4B8]) = v123;
  LODWORD(v122) = v122 + 1738212382 + (~(2 * v122) | 0x30C9F7C3) + 1;
  v124 = ((v122 ^ v123) - ((2 * (v122 ^ v123)) & 0xCC35A9C8) - 434449180) ^ v103;
  LODWORD(STACK[0x4D4]) = v104 + 2021478988;
  v125 = v124 - 2 * (v124 & 0x787D524D ^ v122 & 1) + 2021478988;
  v126 = ((v81 ^ 0xE1A48A9B) << 16) ^ 0x21370D8E;
  LODWORD(STACK[0x4C8]) = v126;
  v127 = ((v81 ^ 0xE1A48A9B) << 20) ^ 0x3786B9E9;
  LODWORD(STACK[0x658]) = v127;
  LODWORD(v122) = (v81 ^ 0xE1A48A9B) << 14;
  LODWORD(STACK[0x4C4]) = v122;
  v128 = v126 ^ ((v81 ^ 0xE1A48A9B) << 18);
  v129 = (v128 ^ v122 ^ v127 ^ 0x325662B ^ v125) - ((2 * (v128 ^ v122 ^ v127 ^ 0x325662B ^ v125)) & 0xAF043DBC);
  LODWORD(v122) = ((v81 ^ 0xE1A48A9B) << 21) ^ 0x30421EDE;
  LODWORD(STACK[0x4A8]) = v122;
  v130 = ((v81 ^ 0xE1A48A9B) << 25) ^ 0x18593A57;
  v131 = ((v129 - 679338274) ^ v122) - ((2 * ((v129 - 679338274) ^ v122)) & 0xC8B274AE) + 1683569239;
  LODWORD(STACK[0x550]) = v130;
  LODWORD(STACK[0x4A4]) = (v131 ^ v130) - 2 * ((v131 ^ v130) & 0x2EBF872E ^ v131 & 8);
  v132 = (((v81 >> 20) ^ (v81 >> 13) ^ 0x37627) - ((2 * ((v81 >> 20) ^ (v81 >> 13) ^ 0x37627)) & 0xA9AF8) + 1689603452) ^ (v81 >> 1);
  v133 = STACK[0x4B0];
  v134 = ((v132 ^ 0x53B923AE) - 2 * ((v132 ^ 0x53B923AE) & 0x40A9983B ^ v132 & 1) + 1084856378) ^ LODWORD(STACK[0x4B0]);
  v135 = STACK[0x4AC];
  v136 = (v134 - ((2 * v134) & 0x5234156E) - 1457911113) ^ LODWORD(STACK[0x4AC]);
  v137 = (v81 >> 21) ^ 0xD27F0353;
  v138 = (v136 - ((2 * v136) & 0xA4FE0046) - 763428829) ^ v137;
  v139 = (v138 - ((2 * v138) & 0x9C6C6D3C) + 1312175774) ^ v105;
  v140 = (v139 - ((2 * v139) & 0x7D0AF138) - 1098549092) ^ v108;
  v141 = (v140 - ((2 * v140) & 0x716051E8) + 951068916) ^ v109;
  LODWORD(v122) = v141 - ((2 * v141) & 0xC77EEFD4);
  v142 = (v81 >> 14) ^ 0xE3BECF89;
  v143 = v81 >> 11;
  LODWORD(v122) = LODWORD(STACK[0x4F8]) ^ (v81 >> 11) ^ v112 ^ v118 ^ (((v122 - 473991190) ^ v142) - ((2 * ((v122 - 473991190) ^ v142)) & 0x6A530DBC) - 1255569698);
  LODWORD(STACK[0x4F8]) = v122 ^ 0x4BCE5671;
  LODWORD(STACK[0x4F4]) = ((v86 >> 31) | 0xF6E1602E) ^ ((v122 ^ 0xAC1F5BEF) >> 27) ^ ((v122 ^ 0xAC1F5BEF) >> 21);
  LODWORD(v122) = ((v81 ^ 0xE1A48A9B) << 8) ^ ((v81 ^ 0xE1A48A9B) << 15) ^ 0x97C83E00;
  v144 = (((v81 >> 17) ^ HIBYTE(v86) ^ 0x3770) - 2 * (((v81 >> 17) ^ HIBYTE(v86) ^ 0x3770) & 0x527E ^ ((v81 >> 17) ^ HIBYTE(v86)) & 6) + 770691704) ^ (v81 >> 9) ^ 0x2DD8DE16;
  v145 = (v144 - ((2 * v144) & 0xEB9B702) + 123526017) ^ (v81 >> 5) ^ 0x42C1D6C;
  v146 = ((v145 - ((2 * v145) & 0x4E70C8E2) - 415734671) ^ LODWORD(STACK[0x508])) - 2 * (((v145 - ((2 * v145) & 0x4E70C8E2) - 415734671) ^ LODWORD(STACK[0x508])) & 0x53F2ABDC ^ (v145 - ((2 * v145) & 0x4E70C8E2) - 415734671) & 8) - 739071020;
  v147 = ((v146 ^ LODWORD(STACK[0x4E0])) - 2 * ((v146 ^ LODWORD(STACK[0x4E0])) & 0x291A0ABF ^ v146 & 8) - 1457911113) ^ v135;
  v148 = (v147 - ((2 * v147) & 0x81533074) + 1084856378) ^ v133;
  v149 = (v148 - ((2 * v148) & 0xA4FE0046) - 763428829) ^ v137;
  v150 = (v149 - ((2 * v149) & 0x9C6C6D3C) + 1312175774) ^ v105;
  v151 = (v150 - ((2 * v150) & 0x716051E8) + 951068916) ^ v109;
  v152 = (v151 - ((2 * v151) & 0xC77EEFD4) - 473991190) ^ v142;
  v153 = (v152 - ((2 * v152) & 0x6A530DBC) - 1255569698) ^ v112;
  v154 = v143 ^ 0xC0EB032B ^ (v153 - ((2 * v153) & 0x81CD8060) - 1058619344);
  v155 = (v154 - ((2 * v154) & 0x9090120A) - 934803195) ^ LODWORD(STACK[0x4C0]);
  v156 = LODWORD(STACK[0x4BC]) ^ (v155 - ((2 * v155) & 0x714865C8) + 950285028);
  v157 = (LODWORD(STACK[0x538]) << 27) ^ (v82 << 23);
  LODWORD(STACK[0x4A0]) = v82 << 24;
  v158 = v157 ^ (v82 << 24) ^ v130 ^ 0x2BF87FB6 ^ (v122 - ((2 * v122) & 0x2D428A00) - 1767815711);
  v159 = (v158 - ((2 * v158) & 0x8B526C66) + 1168717363) ^ LODWORD(STACK[0x4B4]);
  v160 = (v159 - ((2 * v159) & 0x4664960E) + 590498567) ^ LODWORD(STACK[0x540]);
  v161 = (v160 - ((2 * v160) & 0xF3DAB838) - 101884900) ^ LODWORD(STACK[0x534]);
  v162 = (v161 - ((2 * v161) & 0xC6E10D46) + 1668318883) ^ LODWORD(STACK[0x528]);
  v163 = v128 ^ LODWORD(STACK[0x510]) ^ LODWORD(STACK[0x4B8]) ^ 0xA016CD8E ^ (v162 - ((2 * v162) & 0xCF36083C) + 1738212382);
  v164 = (v163 - ((2 * v163) & 0x88CD73D2) + 1147582953) ^ LODWORD(STACK[0x658]);
  v165 = (v164 - ((2 * v164) & 0xAF043DBC) - 679338274) ^ LODWORD(STACK[0x4A8]);
  LODWORD(v122) = (v82 << 22) ^ 0x314543EC;
  LODWORD(STACK[0x49C]) = v122;
  v166 = (v165 - ((2 * v165) & 0xFD8A87D8) - 20626452) ^ v122;
  LODWORD(STACK[0x4B0]) = LODWORD(STACK[0x4A4]) + 784303910;
  v167 = LODWORD(STACK[0x560]) - 613642532;
  LODWORD(v122) = (v14 << 28) ^ 0xDB6C8EDC;
  LODWORD(STACK[0x4AC]) = v122;
  LODWORD(v122) = v122 ^ LODWORD(STACK[0x688]) ^ v167;
  v168 = (LODWORD(STACK[0x688]) >> 27) ^ (v14 >> 31) ^ (LODWORD(STACK[0x688]) >> 21);
  LODWORD(v122) = v122 ^ (4 * LODWORD(STACK[0x688])) ^ (32 * LODWORD(STACK[0x688])) ^ (LODWORD(STACK[0x688]) << 11) ^ v168 ^ (4 * v168) ^ (32 * v168) ^ (v168 << 11);
  LODWORD(STACK[0x540]) = v82 << 26;
  v169 = (v82 << 26) ^ 0xD6BF8726;
  LODWORD(STACK[0x4A8]) = v169;
  v170 = v122 ^ v169 ^ (v166 - ((2 * v166) & 0x5D7F0E4C) + 784303910) ^ (4 * v156) ^ (32 * v156) ^ 0x45D3A8B8;
  v171 = v156 ^ 0x1180C3EE ^ (v170 - ((2 * v170) & 0xEEE09E60) - 143634640);
  v172 = (v156 >> 21) ^ 0xB2D28FE4;
  v173 = (v171 ^ -v171 ^ (((v156 << 11) ^ 0x8466F000) - (v171 ^ (v156 << 11) ^ 0x8466F000))) + ((v156 << 11) ^ 0x8466F000);
  LODWORD(STACK[0x494]) = 4 * v172;
  v174 = v77 ^ LODWORD(STACK[0x558]);
  v175 = v174 ^ 0xE83BA5A2;
  LODWORD(STACK[0x688]) = (8 * (v174 ^ 0xE83BA5A2)) ^ (4 * (v174 ^ 0xE83BA5A2)) ^ 0xF9D0D8A6;
  LODWORD(STACK[0x560]) = 32 * (v174 ^ 0xE83BA5A2);
  LOBYTE(v171) = (32 * (v174 ^ 0xA2)) & 0xA0;
  LOBYTE(v156) = ((4 * ((v156 >> 21) ^ 0xE4)) & 8 ^ 0x7D ^ (((8 * ((v172 >> 1) & 3)) | 0x24) & ((4 * ((v156 >> 21) ^ 0xE4)) & 0x18 ^ 0x34) | 0x42)) & ((((v171 ^ 0xD4) + 1) ^ ((v171 ^ 0x83) + 88) ^ ((v171 ^ 0xE8) + 61)) + (((v171 ^ 0x7F) + 47) ^ ((v171 ^ 5) + 85) ^ ((v171 ^ 0x7A) + 44)) + 66) ^ 0xF4;
  LODWORD(STACK[0x558]) = v174 ^ 0x3965F182;
  v176 = ((v174 ^ 0x3965F182) >> (v156 & 0x54 ^ 0x54) >> (v156 & 0xAB ^ 0xA0)) ^ (v77 >> 28) ^ 0xB;
  v177 = (v176 - 1701112000 + (~(2 * v176) | 0xFFFFFF81)) ^ (v77 >> 15);
  v178 = (v77 >> 19) ^ 0xBB1FF76D;
  v179 = ((v177 ^ 0x9A9A6420) - 2 * ((v177 ^ 0x9A9A6420) & 0x3B1FE05D ^ v177 & 1) - 1155538852) ^ v178;
  v180 = (v77 >> 21) ^ 0x7802D503;
  v181 = (v77 >> 14) ^ 0x9DFBD39C;
  v182 = (v77 >> 13) ^ 0x27330715;
  v183 = (v77 >> 30) ^ (v77 >> 29);
  LODWORD(STACK[0x488]) = v183;
  v184 = (v77 >> 11) ^ 0xC22F1613;
  v185 = v183 | 0x98D4E198;
  v186 = (v174 >> 10) ^ 0x1A06BF8;
  LODWORD(STACK[0x4A4]) = v186;
  v187 = v180 ^ (v77 >> 18) ^ v181 ^ v182 ^ v184 ^ v185 ^ v186;
  v188 = (v174 >> 9) ^ 0x766C5CCA;
  LODWORD(STACK[0x48C]) = v188;
  v189 = (v174 >> 5) ^ 0x1B0147B2;
  LODWORD(STACK[0x498]) = v189;
  v190 = (v174 >> 6) ^ 0x242D590D;
  v191 = v187 ^ v188 ^ v190 ^ v189 ^ (v179 - ((2 * v179) & 0x7005A19E) + 2013450447);
  v192 = (v174 >> 4) ^ 0x3965F18;
  v193 = v192 ^ -v192 ^ ((((v191 ^ 0x8F7E0A74) - 538537679) ^ ((v191 ^ 0xBB4E4267) - 338241244) ^ ((v191 ^ 0x9DCF2480) - 849887291)) - (((v191 ^ v192 ^ 0xCF601AE9) + 610853742) ^ ((v191 ^ v192 ^ 0xE6EAFD63) + 232916200) ^ ((v191 ^ v192 ^ 0x80758B19) + 1803383454)) + 1234148672);
  v194 = (((v191 ^ 0x8567197C) - 704675271) ^ ((v191 ^ 0x7E877AF) + 1467018476) ^ ((v191 ^ 0x2B700240) + 2078841093)) + 39593571 + (((v193 ^ 0xDFFB4110) - 608132907) ^ ((v193 ^ 0x6FB2D344) + 1804153473) ^ ((v193 ^ 0xB0499254) - 1267567727));
  v195 = (v194 >> 30) ^ 0xC8481371;
  v196 = v194 ^ ((v174 ^ 0xE83BA5A2) >> 2);
  LODWORD(STACK[0x534]) = v196 ^ 0x18A3986C;
  LODWORD(STACK[0x538]) = v195 ^ (v196 >> 27) ^ (v196 >> 21);
  v197 = ((v174 ^ 0xE83BA5A2) << 11) ^ 0x704FF3AB;
  v198 = ((v174 ^ 0xE83BA5A2) << 7) ^ 0x224137D1;
  v199 = ((v174 ^ 0xE83BA5A2) << 10) ^ 0x9323CD91;
  LODWORD(STACK[0x510]) = v197;
  v200 = ((v174 ^ 0xE83BA5A2) << 14) ^ 0x39E88090;
  LODWORD(STACK[0x528]) = v200;
  v201 = ((v174 ^ 0xE83BA5A2) << 13) ^ 0xB0A5E1CE;
  v202 = ((v174 ^ 0xE83BA5A2) << 16) ^ 0xF065F2ED;
  LODWORD(STACK[0x508]) = v201;
  v203 = v175 ^ (v175 << 12) ^ v198 ^ v199 ^ v197 ^ v201 ^ v200 ^ v202;
  LODWORD(STACK[0x4E4]) = v203;
  v204 = (v174 ^ 0xE83BA5A2) << 18;
  v205 = v203 & 0x40000000;
  if ((v203 & 0x40000000 & (v204 ^ 0x40000000)) != 0)
  {
    v205 = -v205;
  }

  LODWORD(STACK[0x4E0]) = v205 + (v204 ^ 0x50800000);
  v206 = (v77 >> 22) ^ (v77 >> 25) ^ 0xD43F831F;
  v207 = v206 ^ (v77 >> 20) ^ (v175 >> 7) ^ (v175 >> 1) ^ 0xBD321C85;
  v208 = (v207 - ((2 * v207) & 0xF005A19E) + 2013450447) ^ v180;
  v209 = v182 ^ v184 ^ v190 ^ v192;
  v210 = HIWORD(v77) ^ 0x3A6C00AF;
  v211 = v181 ^ (v77 >> 12);
  v212 = v211 ^ (v77 >> 18) ^ v178 ^ v210 ^ v209 ^ (v208 - ((2 * v208) & 0x763FC0B8) - 1155538852);
  LODWORD(STACK[0x4C0]) = v212 ^ 0x19763FDF;
  v213 = ((v77 >> 31) - 1014777264) ^ ((v212 ^ 0x120F4A6Du) >> 27) ^ ((v212 ^ 0x120F4A6Du) >> 21);
  LOBYTE(v209) = v213 & 1 ^ 0xCD ^ (v213 & 5 ^ 0xF4) & (v213 & 5 | 0xFA);
  LODWORD(STACK[0x4B8]) = v213 ^ 0xACC86D1C;
  LODWORD(STACK[0x4BC]) = (v213 ^ 0xC383B9FD) << (v209 & 1) << (v209 & 0x3C ^ 0x38);
  v214 = STACK[0x4D8];
  LODWORD(STACK[0x4B4]) = LODWORD(STACK[0x4D8]) - (STACK[0x698] & 0x6BC00000) - 1241777327;
  v215 = v206 ^ HIBYTE(v77) ^ (v77 >> 17) ^ (v77 >> 11) ^ (v174 >> 7) ^ LODWORD(STACK[0x488]) ^ (v175 >> 8) ^ 0xD48B799E;
  v216 = (v215 - ((2 * v215) & 0x7005A19E) + 2013450447) ^ v180;
  v217 = (v216 - ((2 * v216) & 0x763FC0B8) - 1155538852) ^ v178;
  v218 = (v217 + 980203809 + (~(2 * v217) | 0x8B268DBF)) ^ v210;
  v219 = v211 ^ LODWORD(STACK[0x4A4]) ^ LODWORD(STACK[0x48C]) ^ v190 ^ LODWORD(STACK[0x498]) ^ (v218 - ((2 * v218) & 0x3BF26B44) - 1644612190);
  v220 = v219 ^ 0x61471D74;
  LODWORD(STACK[0x498]) = (v219 >> 21) ^ 0x44FFC714;
  v221 = LODWORD(STACK[0x524]) ^ LODWORD(STACK[0x680]) ^ LODWORD(STACK[0x6A0]);
  LODWORD(STACK[0x4A4]) = v34 << 19;
  v222 = v34 ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x804])) ^ (v34 << 31) ^ (v34 << 12) ^ v221 ^ (v34 << 19) ^ LODWORD(STACK[0x660]) ^ v214 ^ LODWORD(STACK[0x678]) ^ LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x4E8]) ^ LODWORD(STACK[0x690]) ^ LODWORD(STACK[0x6B0]) ^ LODWORD(STACK[0x6B8]) ^ LODWORD(STACK[0x514]) ^ LODWORD(STACK[0x500]) ^ (4 * LODWORD(STACK[0x500])) ^ (32 * LODWORD(STACK[0x500])) ^ (LODWORD(STACK[0x500]) << 11) ^ LODWORD(STACK[0x504]) ^ (4 * LODWORD(STACK[0x504])) ^ (32 * LODWORD(STACK[0x504])) ^ (LODWORD(STACK[0x504]) << 11);
  LODWORD(STACK[0x504]) = v175 << 25;
  v223 = (v175 << 20) ^ 0xD6ACCAF6;
  LODWORD(STACK[0x500]) = v223;
  v224 = v222 ^ (v175 << 15) ^ (v175 << 8) ^ (v175 << 24) ^ (v175 << 25) ^ v204 ^ v198 ^ v199 ^ v197 ^ v201 ^ v202 ^ v223;
  v225 = (v175 << 21) ^ 0x1C2B080A;
  LODWORD(STACK[0x680]) = v225;
  v226 = (v175 << 22) ^ 0xF736D332;
  LODWORD(STACK[0x524]) = v226;
  v227 = (v175 << 26) ^ 0xC05A1F9;
  LODWORD(STACK[0x678]) = v227;
  v228 = (v175 << 23) ^ 0xE6EFA311;
  LODWORD(STACK[0x514]) = v228;
  v229 = (v175 << 27) ^ 0xEB865FF8;
  LODWORD(STACK[0x518]) = v229;
  LODWORD(STACK[0x660]) = v224 ^ v226 ^ v225 ^ v228 ^ v227 ^ v229 ^ LODWORD(STACK[0x688]) ^ v220 ^ (4 * v220) ^ (32 * v220) ^ (v220 << 11);
  v230 = (32 * v172) ^ (v172 << 11) ^ v173;
  v231 = v230 ^ v172;
  v232 = v230 ^ v172 ^ LODWORD(STACK[0x494]);
  v233 = v232 ^ 0xF7131B23;
  v234 = (v173 >> 28) ^ (v173 >> 27) ^ (v173 >> 30);
  v235 = (v234 - 1136600550 - 2 * v234 + 3973) ^ (v230 >> 18);
  v236 = (v235 ^ 0xBC40DA1A) - 2 * ((v235 ^ 0xBC40DA1A) & 0x6EE51A8C ^ v235 & 4) - 286975352;
  LOBYTE(v235) = STACK[0x4FC] & 0xF9;
  v237 = ((v235 ^ 0x6B) + 40) ^ ((v235 ^ 0xD2) - 97) ^ ((v235 ^ 0x38) + 117);
  v238 = ((v235 ^ 4) - 118) ^ ((v235 ^ 0x1B) - 105) ^ ((v235 ^ 0x67) - 21);
  LODWORD(STACK[0x4E8]) = (v174 << 31) | 0x726F6699;
  LOBYTE(v235) = v174 & 0xCB;
  v239 = (v173 >> 29) ^ 0xBD069055;
  v240 = (v230 >> 13) ^ (v230 >> 15) ^ v239 ^ ((v232 ^ 0xC3545B0C) >> 4) ^ ((v232 ^ 0xC3545B0C) >> 10) ^ 0x54B4E7BD ^ v236;
  v241 = (v230 >> 14) ^ 0x18330A02;
  v242 = (v230 >> 21) ^ 0xF7E18389;
  v243 = (v232 >> 9) ^ 0xCAA3DBE7;
  v244 = (v232 >> 6) ^ 0x76A743D2;
  v245 = (v232 ^ 0xC3545B0C) >> 11;
  v246 = (v232 >> 5) ^ 0xFA97320B;
  v247 = (v232 ^ 0xC3545B0C) >> 2;
  v248 = v244 ^ v243 ^ (v230 >> 19) ^ v242 ^ v241 ^ v245 ^ v246 ^ v247 ^ (v240 - ((2 * v240) & 0x6FC30BF2) - 136215047);
  v249 = (v248 ^ 0x44A2440E) << ((v238 + v237 + 60 + (v247 & 0x88 ^ 0x33 ^ (v247 & 0x89 ^ 0xBB) & (v247 & 0x89 ^ 0xFE))) * (((((v235 ^ 0x26) + 99) ^ ((v235 ^ 0x79) + 62) ^ ((v235 ^ 0xDD) - 102)) + (((v235 ^ 0xEB) + 125) ^ ((v235 ^ 0x9C) + 12) ^ ((v235 ^ 0x3E) - 86)) + 90) & 0xC5));
  v250 = v248 ^ 0xB27AD4D4;
  v251 = (v248 >> 27) ^ (v248 >> 21) ^ 0xDBBBE9D9;
  v252 = ((v232 ^ 0xF7131B23) << 11) ^ 0x4D83A3D7 ^ ((v232 ^ 0xF7131B23) << 13) ^ 0x1F304A8 ^ ((v232 ^ 0xF7131B23) << 18) ^ 0x579CAE72 ^ ((v232 ^ 0xF7131B23) << 21) ^ 0x6ED5C6AC ^ ((v232 ^ 0xF7131B23) << 22) ^ 0xB483F413 ^ ((v232 ^ 0xF7131B23) << 23) ^ 0xD6DA5782 ^ ((v232 ^ 0xF7131B23) << 26) ^ 0x405BFB06 ^ ((v232 ^ 0xF7131B23) << 27) ^ 0x4489EEA4 ^ (8 * (v232 ^ 0xF7131B23)) ^ (4 * (v232 ^ 0xF7131B23)) ^ 0xE16AA213;
  v253 = LODWORD(STACK[0x4C4]) ^ LODWORD(STACK[0x4C8]) ^ LODWORD(STACK[0x658]) ^ LODWORD(STACK[0x49C]) ^ LODWORD(STACK[0x4D4]) ^ (32 * LODWORD(STACK[0x670])) ^ (LODWORD(STACK[0x670]) << 11) ^ (4 * LODWORD(STACK[0x668])) ^ (32 * LODWORD(STACK[0x668])) ^ (LODWORD(STACK[0x668]) << 11) ^ LODWORD(STACK[0x4F0]) ^ (v231 << 30) ^ ((v232 ^ 0xF7131B23) << 14) ^ (32 * (v232 ^ 0xF7131B23)) ^ ((v232 ^ 0xF7131B23) << 17) ^ ((v232 ^ 0xF7131B23) << 19) ^ (16 * (v232 ^ 0xF7131B23)) ^ ((v232 ^ 0xF7131B23) << 28) ^ v252;
  LODWORD(STACK[0x4FC]) = v250;
  LODWORD(STACK[0x4D8]) = v251;
  LODWORD(v249) = v253 ^ (32 * v250) ^ (v250 << 11) ^ (4 * v251) ^ (32 * v251) ^ (v251 << 11) ^ (v249 - ((2 * v249) & 0x50F226BE) - 1468460193) ^ 0x5929B56;
  LODWORD(STACK[0x4F0]) = (LODWORD(STACK[0x4A0]) ^ 0x160F9B57 ^ (v249 - ((2 * v249) & 0x501F36AE) + 672111447)) + 1683569239 - 2 * ((LODWORD(STACK[0x4A0]) ^ 0x160F9B57 ^ (v249 - ((2 * v249) & 0x501F36AE) + 672111447)) & 0x64593A5F ^ (v249 - ((2 * v249) & 0x501F36AE) + 672111447) & 8);
  LODWORD(v249) = (v173 >> 25) ^ HIBYTE(v173) ^ (v173 >> 30) ^ (v230 >> 17) ^ HIWORD(v230) ^ v239 ^ (v230 >> 19) ^ v242 ^ v241 ^ ((v173 >> 22) - ((v173 >> 21) & 0x3F2) - 136215047) ^ (v232 >> 12);
  v254 = (v249 ^ 0x213D6A25) & (v245 ^ 0x692C16A8) ^ v249 & 0x69228DC6;
  LODWORD(v249) = (((v245 ^ 0x6698DA3A) - 817004469) ^ ((v245 ^ 0xFB79E3D0) + 1387051425) ^ ((v245 ^ 0x9DEFA284) + 876280053)) + (((v249 ^ 0x320412D9) + 1708765912) ^ ((v249 ^ 0xBAC40E8B) - 317084026) ^ ((v249 ^ 0x2DFD7677) + 2048972410)) - ((((2 * v254) ^ 0xB1051B5D) + 1250798073) ^ (((2 * v254) ^ 0xBA4D04A3) + 1103476231) ^ (((2 * v254) ^ 0x49080FF6) - 1300185772)) + 487331683;
  v255 = v246 ^ v243 ^ (v232 >> 8) ^ (v232 >> 7) ^ (v232 >> 10) ^ v244 ^ v249;
  v256 = v255 ^ 0x262EE3AE;
  v257 = (v249 >> 30) ^ (v249 >> 27) ^ (v255 >> 21) ^ 0x2D1D5847;
  LODWORD(v249) = (16 * v14) ^ (32 * v14) ^ (v14 << 17) ^ (v14 << 30) ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x7F0])) ^ LODWORD(STACK[0x5A8]) ^ LODWORD(STACK[0x5D0]) ^ LODWORD(STACK[0x5A0]) ^ LODWORD(STACK[0x598]) ^ LODWORD(STACK[0x580]) ^ LODWORD(STACK[0x588]) ^ LODWORD(STACK[0x590]) ^ LODWORD(STACK[0x570]) ^ LODWORD(STACK[0x578]) ^ LODWORD(STACK[0x4AC]) ^ (LODWORD(STACK[0x5C0]) - (STACK[0x568] & 0x3FCD8000) + 535220123) ^ LODWORD(STACK[0x6A8]) ^ LODWORD(STACK[0x5E0]) ^ (4 * LODWORD(STACK[0x5E0])) ^ (32 * LODWORD(STACK[0x5E0])) ^ (LODWORD(STACK[0x5E0]) << 11) ^ LODWORD(STACK[0x5D8]) ^ (4 * LODWORD(STACK[0x5D8])) ^ (32 * LODWORD(STACK[0x5D8])) ^ (LODWORD(STACK[0x5D8]) << 11);
  v258 = LODWORD(STACK[0x548]) << 28;
  LODWORD(STACK[0x5C0]) = v258;
  v259 = v249 ^ v258 ^ LODWORD(STACK[0x4A8]) ^ LODWORD(STACK[0x4F8]) ^ (4 * LODWORD(STACK[0x4F8])) ^ (32 * LODWORD(STACK[0x4F8])) ^ (LODWORD(STACK[0x4F8]) << 11) ^ LODWORD(STACK[0x4F4]) ^ (4 * LODWORD(STACK[0x4F4])) ^ (32 * LODWORD(STACK[0x4F4])) ^ (LODWORD(STACK[0x4F4]) << 11) ^ LODWORD(STACK[0x4B0]) ^ (v233 << 8) ^ (v233 << 7) ^ (v233 << 10) ^ (v233 << 15) ^ (v233 << 16) ^ (v233 << 20) ^ (v233 << 24) ^ (v233 << 25) ^ v252 ^ v256 ^ (4 * v256) ^ (32 * v256) ^ (v256 << 11);
  LODWORD(STACK[0x590]) = v257 ^ (4 * v257) ^ (32 * v257) ^ (v257 << 11);
  v260 = LODWORD(STACK[0x660]) ^ (4 * LODWORD(STACK[0x498])) ^ (32 * LODWORD(STACK[0x498])) ^ (LODWORD(STACK[0x498]) << 11);
  v261 = STACK[0x498];
  v262 = (v260 >> 30) ^ 0x45ED1A62 ^ (v260 >> 29) ^ 0x266C65D3;
  LODWORD(STACK[0x4F4]) = v262;
  v263 = (v260 >> 25) ^ 0x1D4EB65F;
  LODWORD(v249) = (v260 >> 22) ^ 0x52186AED;
  LODWORD(STACK[0x4D4]) = v249;
  v264 = (v260 >> 31) ^ (v260 >> 26) ^ (v260 >> 15) ^ v262 ^ v263 ^ v249;
  LODWORD(v249) = (v260 >> 19) ^ 0x92DA2D37;
  LODWORD(STACK[0x4C8]) = v249;
  v265 = (v260 >> 12) ^ 0xAB6E6DE;
  v266 = HIWORD(v260) ^ 0xF073E0C9;
  v267 = v249 ^ (v260 >> 18) ^ 0x76B1C80B;
  v268 = v260 ^ v261;
  v269 = v260 ^ v261 ^ 0x8B80865;
  LODWORD(v249) = ((v260 ^ v261) >> 8) ^ 0xDF49C007;
  LODWORD(STACK[0x4C4]) = v249;
  v270 = ((v260 ^ v261) >> 6) ^ 0x2429D879;
  v271 = ((v260 ^ v261) >> 7) ^ 0x137ACF66;
  v272 = ((v260 ^ v261) >> 4) ^ 0x538D8628;
  v273 = v264 ^ v267 ^ v266 ^ v265 ^ (v269 >> 3) ^ (v269 >> 10) ^ v249 ^ v271 ^ v270 ^ v272;
  v274 = v273 ^ 0x1419AB25;
  v275 = v273 >> 27;
  v276 = (v273 >> 27) ^ 0x1C;
  v277 = v276 ^ (v273 >> 21) ^ 0x27D65B78;
  v278 = (v269 << 7) ^ 0xFA6666BC;
  LODWORD(STACK[0x578]) = v278;
  v279 = (8 * v269) ^ 0x7FA585CE;
  LODWORD(STACK[0x548]) = v279;
  v281 = (4 * v269) ^ 0xA7307F5F;
  LODWORD(STACK[0x568]) = v281;
  LODWORD(STACK[0x580]) = v269 << 13;
  v282 = (v269 << 13) ^ 0x5EEE6C97;
  LODWORD(STACK[0x5E0]) = v282;
  v283 = (v269 << 16) ^ 0x6A24EFC1;
  LODWORD(STACK[0x570]) = v283;
  LODWORD(v249) = (v269 << 14) ^ 0x249F5FB7;
  LODWORD(STACK[0x5D8]) = v249;
  LODWORD(STACK[0x588]) = (v269 << 10) ^ 0x93F523C2;
  v284 = (v269 << 10) ^ v281;
  LOBYTE(v281) = a8;
  v285 = v269 ^ (2 * v269) ^ (v269 << 6) ^ (v269 << 17) ^ (v269 << 29) ^ v284 ^ v279 ^ v278 ^ v282 ^ v249 ^ v283;
  LODWORD(v249) = (v269 << 25) ^ 0xF50EAE60;
  LODWORD(STACK[0x6A8]) = v249;
  v286 = (v269 << 24) ^ 0xDCA718A7;
  v287 = (v269 << 20) ^ 0xB6AD081;
  LODWORD(STACK[0x660]) = v287;
  v288 = (v269 << 22) ^ 0xE48B18EF;
  LODWORD(STACK[0x4F8]) = v288;
  v289 = (v269 << 26) | 0x272FC93;
  LODWORD(STACK[0x658]) = v289;
  v290 = (v269 << 28) ^ 0xB4C13C00;
  LODWORD(STACK[0x5D0]) = v290;
  v291 = v285 ^ v287 ^ v288 ^ v286 ^ v249 ^ v289 ^ v290 ^ v274 ^ (v274 << 11) ^ (32 * v274) ^ (4 * v274) ^ v277 ^ (4 * v277) ^ (32 * v277);
  v277 <<= 11;
  v292 = ((v277 ^ 0xD80D036) - 1405625661) ^ ((v277 ^ 0xEAA41BF4) + 1259540737) ^ ((v277 ^ 0x55DD53C2) - 194356937);
  v293 = 2 * ((v291 ^ 0x2AD6270) & (v277 ^ 0x7153BE78) ^ v291 & 0x43AA2678);
  LODWORD(STACK[0x598]) = v292 + (((v291 ^ 0x301A06C5) - 99847879) ^ ((v291 ^ 0x5BCED73D) - 1848074047) ^ ((v291 ^ 0xF939B20C) + 858768882)) - (((v293 ^ 0xCED23E27) - 417855689) ^ ((v293 ^ 0x32425AA8) + 461923258) ^ ((v293 ^ 0xF9C0206F) - 804644481)) - 1068443917;
  v294 = v268 ^ 0x1C5B846;
  v295 = v294 >> ((((v291 & 0xCF ^ 0xEE) + 36) ^ ((v291 & 0xCF ^ 6) - 52) ^ ((v291 & 0xCF ^ 0x2C) - 30)) + (((v291 & 0xCF ^ 0x68) - 23) ^ ((v291 & 0xCF ^ 0x4E) - 49) ^ ((v291 & 0xCF ^ 0x2D) - 82)) - 88);
  v296 = (v260 >> 22) ^ (v260 >> 20) ^ (v269 >> 1) ^ 0xABC6018B ^ (v295 - ((2 * v295) & 0x3673A168) - 1690709836);
  LODWORD(v249) = (v260 >> 21) ^ 0x33F46746;
  v297 = v249 ^ v263 ^ v267;
  v298 = (v260 >> 14) ^ 0x9C9C9FBD;
  v299 = v297 ^ v266 ^ v298 ^ v265;
  v300 = (v260 >> 11) ^ 0xC6DA1DB2;
  v301 = v299 ^ v300 ^ v271 ^ v270 ^ v272 ^ v296;
  LODWORD(STACK[0x5A8]) = (v296 >> 30) | 0xCD932AE8;
  LODWORD(STACK[0x5A0]) = (v301 ^ 0x3AD855AF) << (((v275 ^ 2) & (v275 ^ 0xFE) ^ v276) & 0xB ^ 1);
  v302 = v259 ^ 0xAF674226;
  v303 = v294 << (((((v259 & 0x34 ^ 0x1D) + 80) ^ ((v259 & 0x34 ^ 0xB) + 90)) ^ ((v259 & 0x34 ^ 0x32) + 97)) + ((((v259 & 0x34 ^ 0x2F) - 115) ^ ((v259 & 0x34 ^ 0x53) - 15)) ^ ((v259 & 0x34 ^ 0x6C) - 48)) - 84);
  v304 = v303 - ((2 * v303) & 0x44372770) + 572232632;
  LODWORD(v305) = ((v260 >> 11) | (v269 >> 10 << 31)) ^ __ROR4__(HIBYTE(v260) ^ (v260 >> 17) ^ (v260 >> 12) ^ v263 ^ LODWORD(STACK[0x4F4]) ^ LODWORD(STACK[0x4D4]) ^ v249 ^ LODWORD(STACK[0x4C8]) ^ v266 ^ v298 ^ v300, 1) ^ 0xEB818C60;
  HIDWORD(v305) = v305;
  LODWORD(v249) = v305 >> 31;
  v306 = (v268 >> 9) ^ (v268 >> 5) ^ LODWORD(STACK[0x4C4]) ^ v271 ^ v270 ^ v249;
  v307 = v306 ^ 0xA62921B9;
  v308 = (v249 >> 27) ^ (v249 >> 30) ^ (v306 >> 21) ^ 0x22854E4D;
  v309 = LODWORD(STACK[0x590]) ^ v302;
  v310 = (v302 >> 31) | 0xE43215D2;
  v311 = v34 << STACK[0x5F8];
  LODWORD(v249) = (-1663319554 - 1673081951 * LODWORD(STACK[0x800])) ^ (32 * v34) ^ (16 * v34) ^ (v34 << 30) ^ LODWORD(STACK[0x600]) ^ LODWORD(STACK[0x608]) ^ LODWORD(STACK[0x6A0]) ^ LODWORD(STACK[0x4A4]) ^ LODWORD(STACK[0x698]) ^ LODWORD(STACK[0x5C8]) ^ LODWORD(STACK[0x690]) ^ LODWORD(STACK[0x6B0]) ^ LODWORD(STACK[0x6B8]) ^ LODWORD(STACK[0x5B0]) ^ LODWORD(STACK[0x4B4]) ^ LODWORD(STACK[0x5B8]) ^ LODWORD(STACK[0x4E8]) ^ LODWORD(STACK[0x504]);
  v312 = (v175 << 19) ^ 0x386CED3C;
  LODWORD(STACK[0x6A0]) = v312;
  LODWORD(v249) = v249 ^ v312 ^ LODWORD(STACK[0x500]);
  LODWORD(v303) = (v175 << 28) ^ 0xF5DA4DFC;
  LODWORD(STACK[0x6B8]) = v303;
  LODWORD(v311) = v249 ^ LODWORD(STACK[0x680]) ^ LODWORD(STACK[0x678]) ^ v303 ^ STACK[0x4E4] & 0xBFFFFFFF ^ LODWORD(STACK[0x4E0]) ^ LODWORD(STACK[0x4C0]) ^ (4 * LODWORD(STACK[0x4C0])) ^ (32 * LODWORD(STACK[0x4C0])) ^ (LODWORD(STACK[0x4C0]) << 11) ^ LODWORD(STACK[0x5E8]) ^ (4 * LODWORD(STACK[0x5E8])) ^ (32 * LODWORD(STACK[0x5E8])) ^ (LODWORD(STACK[0x5E8]) << 11) ^ v311 ^ LODWORD(STACK[0x4B8]) ^ (4 * LODWORD(STACK[0x4B8])) ^ (LODWORD(STACK[0x4B8]) << 11) ^ LODWORD(STACK[0x5F0]) ^ (4 * LODWORD(STACK[0x5F0])) ^ (32 * LODWORD(STACK[0x5F0])) ^ (LODWORD(STACK[0x5F0]) << 11) ^ LODWORD(STACK[0x4BC]);
  v313 = LODWORD(STACK[0x580]) ^ LODWORD(STACK[0x548]) ^ LODWORD(STACK[0x568]);
  LODWORD(v249) = (v269 << 18) ^ 0x393E7B08;
  LODWORD(STACK[0x698]) = v249;
  v314 = STACK[0x578];
  v315 = STACK[0x588];
  v316 = STACK[0x570];
  v317 = v311 ^ (v269 << 8) ^ (v269 << 15) ^ (v269 << 23) ^ (v269 << 27) ^ v313 ^ LODWORD(STACK[0x578]) ^ LODWORD(STACK[0x588]) ^ LODWORD(STACK[0x570]) ^ v249 ^ LODWORD(STACK[0x660]);
  LODWORD(v311) = (v269 << 21) ^ 0x516B8641;
  v318 = v317 ^ v311 ^ LODWORD(STACK[0x4F8]) ^ v286 ^ LODWORD(STACK[0x6A8]) ^ LODWORD(STACK[0x658]) ^ v307 ^ (4 * v307) ^ (32 * v307) ^ (v307 << 11) ^ (4 * v308) ^ (32 * v308) ^ (v308 << 11) ^ v304;
  v319 = (v309 >> 19) ^ (v309 >> 22) ^ (v309 >> 25) ^ (v309 >> 18) ^ HIWORD(v309) ^ (v309 >> 12) ^ (v309 >> 7) ^ (v309 >> 6) ^ (v309 >> 4) ^ 0x8738E35;
  v320 = v319 ^ v310 ^ (v309 >> 30) ^ (v309 >> 29) ^ (v309 >> 26) ^ (v309 >> 15) ^ (v309 >> 10) ^ (v309 >> 8) ^ (v309 >> 3);
  LODWORD(v303) = v320 ^ 0xF7BD7768;
  v321 = ((v320 ^ 0xE92CCB3B) >> 27) ^ ((v320 ^ 0xE92CCB3B) >> 21) ^ 0x93EF870;
  v322 = ((v309 ^ 0xD98ADF3E) << 7) ^ 0x749AEF9C;
  v323 = ((v309 ^ 0xD98ADF3E) << 10) ^ 0x8E378301;
  v324 = ((v309 ^ 0xD98ADF3E) << 13) ^ 0x2A47826;
  v325 = ((v309 ^ 0xD98ADF3E) << 14) ^ 0x14AFDE56;
  v326 = ((v309 ^ 0xD98ADF3E) << 16) ^ 0x2AB9E6E4;
  v327 = ((v309 ^ 0xD98ADF3E) << 28) ^ 0x9DA9FABE;
  v328 = ((v309 ^ 0xD98ADF3E) << 20) ^ 0xCF947649;
  v329 = ((v309 ^ 0xD98ADF3E) << 25) ^ 0xB578EFB5;
  v330 = ((v309 ^ 0xD98ADF3E) << 26) ^ 0xAFDE0313;
  v331 = v309 ^ 0xD98ADF3E ^ (2 * (v309 ^ 0xD98ADF3E)) ^ (4 * (v309 ^ 0xD98ADF3E)) ^ (8 * (v309 ^ 0xD98ADF3E)) ^ ((v309 ^ 0xD98ADF3E) << 6) ^ ((v309 ^ 0xD98ADF3E) << 17) ^ ((v309 ^ 0xD98ADF3E) << 22) ^ ((v309 ^ 0xD98ADF3E) << 29) ^ ((v309 ^ 0xD98ADF3E) << 24) ^ v322 ^ v323 ^ v324 ^ v325 ^ v326 ^ v328 ^ v329 ^ v330 ^ v327 ^ v303 ^ (4 * v303) ^ (32 * v303) ^ (v303 << 11) ^ v321 ^ (4 * v321) ^ (32 * v321) ^ (v321 << 11);
  LODWORD(v303) = (v309 >> 21) ^ (v309 >> 20) ^ (v309 >> 14) ^ (v309 >> 13) ^ (v309 >> 11) ^ (v309 >> 1);
  v332 = v319 ^ v303 ^ 0xD6C03B87;
  v333 = v318 ^ 0x7E9DBCA7 ^ v308;
  v334 = (((v318 ^ 0x7E9DBCA7) >> 30) | 0x5CAA69F0) ^ ((v318 >> 29) | 0xCA4530A0);
  v335 = LODWORD(STACK[0x540]) ^ LODWORD(STACK[0x5C0]) ^ LODWORD(STACK[0x550]) ^ LODWORD(STACK[0x670]) ^ LODWORD(STACK[0x668]) ^ LODWORD(STACK[0x4FC]) ^ LODWORD(STACK[0x4D8]) ^ v309 ^ 0xD98ADF3E ^ LODWORD(STACK[0x4F0]) ^ ((v309 ^ 0xD98ADF3E) << 12) ^ ((v309 ^ 0xD98ADF3E) << 11) ^ ((v309 ^ 0xD98ADF3E) << 18) ^ ((v309 ^ 0xD98ADF3E) << 19) ^ ((v309 ^ 0xD98ADF3E) << 21) ^ ((v309 << 31) | 0x43C5BECD) ^ v329 ^ v330 ^ v322 ^ v323 ^ v324 ^ v325 ^ v326 ^ v328 ^ v327 ^ v332 ^ (4 * v332) ^ (32 * v332);
  v336 = ((v303 >> 30) | 0x70362FC8) ^ (v332 >> 27) ^ (v332 >> 21);
  v337 = v336 ^ (v332 << 11) ^ (4 * v336) ^ (32 * v336) ^ (v336 << 11);
  v338 = (4 * v333) ^ (8 * v333);
  v339 = v338 ^ 0xFFD1D0DE;
  LOBYTE(v338) = (((v338 & 0xC ^ 0x19) + 25) ^ ((v338 & 0xC) + 6) ^ ((v338 & 0xC ^ 0x16) + 24)) - (((v338 & 0xEF ^ 0x43) + 15) ^ ((v338 & 0xEF ^ 0xEA) + 8) ^ ((v338 & 0xEF ^ 0x16) + 28)) + 5;
  LODWORD(v303) = (v333 ^ 0x3C9EA409) >> (v338 & 1) >> ((v338 ^ 0x18) & 0x1C ^ 0x18);
  v340 = (v318 >> 21) ^ 0x25981CE4;
  v341 = (v318 >> 14) ^ 0x93F88D1C;
  v342 = (v318 >> 11) ^ 0xE40CB2F3;
  v343 = (v318 >> 19) ^ 0x7CE5DD3A;
  v344 = (v333 >> 9) ^ 0xE9B74021;
  v345 = (v333 >> 10) ^ 0x12979717;
  v346 = (v333 >> 6) ^ 0x4E752D22;
  v347 = (v333 >> 5) ^ 0x4036383D;
  LODWORD(v249) = v334 ^ (v318 >> 28);
  LODWORD(STACK[0x6B0]) = v249;
  v348 = (v318 >> 27) ^ (v318 >> 15) ^ (v318 >> 18) ^ (v333 >> 2) ^ (v333 >> 4) ^ 0x40992562 ^ v303;
  v349 = v340 ^ v341 ^ v343 ^ v342 ^ v345 ^ v344 ^ v346 ^ v347 ^ v249 ^ v348;
  LODWORD(v303) = (v303 >> 30) ^ (v348 >> 27) ^ (v349 >> 21) ^ 0xD481086A;
  v350 = (v333 << 11) ^ 0xBE38ECEF ^ (v333 << 13) ^ 0x97555F0F ^ (v333 << 18) ^ 0xCB2A8734 ^ (v333 << 21) ^ 0x44AA97A5 ^ (v333 << 22) ^ 0xC0DB5A33 ^ (v333 << 23) ^ 0xC0C1B183 ^ (v333 << 26) ^ 0x97EB7A25 ^ (v333 << 27) ^ 0xCCEC8863 ^ v339;
  v351 = LODWORD(STACK[0x598]) ^ (32 * v333) ^ (16 * v333) ^ (v333 << 14) ^ (v333 << 17) ^ (v333 << 19) ^ (v333 << 28) ^ (v333 << 30) ^ v350 ^ v349 ^ 0x171A398D ^ (4 * (v349 ^ 0x171A398D)) ^ (32 * (v349 ^ 0x171A398D)) ^ ((v349 ^ 0x171A398D) << 11) ^ v303 ^ (4 * v303) ^ (32 * v303) ^ (v303 << 11);
  v352 = (v318 >> 25) ^ HIBYTE(v318) ^ (v318 >> 17) ^ (v318 >> 22) ^ HIWORD(v318) ^ (v318 >> 12) ^ v340 ^ v343 ^ v341 ^ v342 ^ (v333 >> 8) ^ (v333 >> 7) ^ v334 ^ v345 ^ v344 ^ v346 ^ v347;
  v353 = (v352 >> 21) ^ 0x7B08F125;
  LODWORD(v249) = (LODWORD(STACK[0x618]) << 11) ^ (v175 << 17) ^ (LODWORD(STACK[0x558]) << ((LODWORD(STACK[0x620]) ^ v281) & 0x12)) ^ (v175 << 30) ^ (16 * LODWORD(STACK[0x558])) ^ LODWORD(STACK[0x560]) ^ LODWORD(STACK[0x510]) ^ LODWORD(STACK[0x508]) ^ LODWORD(STACK[0x528]) ^ LODWORD(STACK[0x6A0]) ^ LODWORD(STACK[0x680]) ^ LODWORD(STACK[0x524]) ^ LODWORD(STACK[0x514]) ^ LODWORD(STACK[0x678]) ^ LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x6B8]) ^ LODWORD(STACK[0x688]) ^ LODWORD(STACK[0x610]) ^ v269 ^ (v269 << 12) ^ (v269 << 11) ^ (v269 << 19) ^ ((v269 << 31) | 0x6B24B472) ^ v314 ^ v315 ^ LODWORD(STACK[0x5E0]) ^ LODWORD(STACK[0x5D8]) ^ v316 ^ LODWORD(STACK[0x698]) ^ LODWORD(STACK[0x660]) ^ v311 ^ LODWORD(STACK[0x6A8]) ^ LODWORD(STACK[0x658]) ^ LODWORD(STACK[0x5D0]) ^ LODWORD(STACK[0x534]) ^ (4 * LODWORD(STACK[0x534])) ^ (32 * LODWORD(STACK[0x534])) ^ (LODWORD(STACK[0x534]) << 11) ^ LODWORD(STACK[0x538]) ^ (4 * LODWORD(STACK[0x538])) ^ (32 * LODWORD(STACK[0x538])) ^ (LODWORD(STACK[0x538]) << 11);
  LODWORD(v311) = LODWORD(STACK[0x5A8]) ^ (v301 >> 27) ^ (v301 >> 21);
  v354 = v337 ^ v335;
  v355 = v337 ^ v335 ^ 0x42E15941;
  v356 = v249 ^ v301 ^ (4 * v301) ^ (32 * v301) ^ LODWORD(STACK[0x5A0]) ^ v311 ^ (4 * v311) ^ (32 * v311) ^ (v311 << 11) ^ (v333 << 8) ^ (v333 << 7) ^ (v333 << 10) ^ (v333 << 15) ^ (v333 << 16) ^ (v333 << 20) ^ (v333 << 24) ^ (v333 << 25) ^ v350 ^ v352 ^ 0xEAE87EA9 ^ (4 * (v352 ^ 0xEAE87EA9)) ^ (32 * (v352 ^ 0xEAE87EA9)) ^ ((v352 ^ 0xEAE87EA9) << 11) ^ v353 ^ (4 * v353) ^ (32 * v353) ^ (v353 << 11) ^ 0xCA800;
  LODWORD(v249) = STACK[0x7B0];
  v357 = v355 ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x768]));
  v358 = ((v351 ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x7AC]))) & 0x7C554771 ^ 0xC75CD5F7) & ((v351 ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x7AC]))) & 0x83AAB88E ^ 0x7E575F73) | (v351 ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x7AC]))) & 0xA22808;
  LOBYTE(STACK[0xEAF]) = BYTE2(v357) ^ 0x97;
  LODWORD(v311) = STACK[0x7A8];
  LODWORD(STACK[0x6A8]) = STACK[0x7A4];
  v359 = v356 ^ (-1673081951 * v311 - 1663319554);
  LOBYTE(STACK[0xE50]) = BYTE2(v359) ^ 0x96;
  LOBYTE(STACK[0x1067]) = HIBYTE(v359) ^ 0xF2;
  LOBYTE(STACK[0x10C6]) = HIBYTE(v357) ^ 0x49;
  LOBYTE(STACK[0x1066]) = BYTE1(v357) ^ 0xF;
  LOBYTE(STACK[0xE4F]) = v357 ^ 0xEB;
  LOBYTE(STACK[0xDF0]) = v359 ^ 0x1C;
  LOBYTE(STACK[0xD90]) = BYTE2(v358) ^ 0x6F;
  LODWORD(v303) = STACK[0x718];
  LODWORD(STACK[0x6A0]) = STACK[0x71C];
  LODWORD(v303) = v351 ^ (-1673081951 * v303 - 1663319554);
  LODWORD(STACK[0x6B8]) = v303;
  v360 = STACK[0x770];
  v361 = v331 ^ (-1673081951 * LODWORD(STACK[0x76C]) - 1663319554);
  LOBYTE(STACK[0x1006]) = HIBYTE(v361) ^ 0xDE;
  LOBYTE(STACK[0x1007]) = BYTE1(v359) ^ 0xB8;
  LOBYTE(v359) = ((((v303 & 0x10) - 5) ^ 2) - 27 + (((v303 & 0x10 ^ 0x73) + 67) ^ ((v303 & 0x10 ^ 0x15) + 37) ^ ((v303 & 0x10 ^ 0x76) + 72))) & 0xE0 ^ 0xE8;
  LOBYTE(STACK[0xFA7]) = (v358 ^ 0xEF6FFECF) >> (v359 & 0x48 ^ 0x40) >> (v359 & 0xA0 ^ 0xB0);
  LOBYTE(STACK[0xFA6]) = BYTE1(v361) ^ 0xD0;
  LOBYTE(STACK[0xDEF]) = BYTE2(v361) ^ 0xCB;
  LOBYTE(STACK[0xF47]) = BYTE1(v358) ^ 0xFE;
  LOBYTE(STACK[0xD8F]) = v361 ^ 0x71;
  LOBYTE(STACK[0x10FE]) = v358 ^ 0xCF;
  v362 = v356 ^ (-1673081951 * LODWORD(STACK[0x7D8]) - 1663319554);
  v363 = v356 ^ (-1673081951 * v249 - 1663319554);
  LOBYTE(STACK[0xEE7]) = HIBYTE(v363) ^ 0xF2;
  v364 = v355 ^ (-1673081951 * v360 - 1663319554);
  LOBYTE(STACK[0xF46]) = HIBYTE(v364) ^ 0x49;
  v365 = STACK[0x6C8];
  *(STACK[0x6C8] + (((v362 & 0x3AD ^ 0xBBE4D208) + 1895392003) ^ ((v362 & 0x3AD ^ 0x92F2145D) + 1508877656) ^ ((v362 & 0x3AD ^ 0x2916C5F4) - 502565633)) + (((v362 & 0x3AD ^ 0x56F418BF) - 1892509334) ^ ((v362 & 0x3AD ^ 0x2CEEA152) - 181919611) ^ ((v362 & 0x3AD ^ 0x7A1AB9E1) - 1545848776)) + 1528548217) = BYTE2(v364) ^ 0x97;
  LOBYTE(STACK[0xE87]) = BYTE1(v363) ^ 0xB8;
  LOBYTE(STACK[0xEE6]) = BYTE1(v364) ^ 0xF;
  v366 = v351 ^ (-1673081951 * LODWORD(STACK[0x7B4]) - 1663319554);
  LOBYTE(STACK[0xE27]) = HIBYTE(v366) ^ 0xA9;
  v367 = STACK[0x778];
  v368 = v331 ^ (-1673081951 * LODWORD(STACK[0x774]) - 1663319554);
  LOBYTE(STACK[0xE86]) = HIBYTE(v368) ^ 0xDE;
  LODWORD(v303) = STACK[0x78C];
  LODWORD(STACK[0x690]) = STACK[0x790];
  v369 = v331 ^ (-1673081951 * v303 - 1663319554);
  *(v365 + (v369 & 0x88 ^ 0x3128FE7E ^ (v369 & 0x28E ^ 0x3128FEF6) & (v369 & 0x28E ^ 0x3BAAFCF0u))) = BYTE2(v366) ^ 0x3B;
  v370 = (((v335 & 0x9CDBC1FE ^ 0x530FFC6) + 119517825) ^ ((v335 & 0x9CDBC1FE ^ 0xA196EC54) - 1548115693) ^ ((v335 & 0x9CDBC1FE ^ 0x2CFC12B4) + 785604595)) - 1673081951 * LODWORD(STACK[0x780]) + (((v335 & 0x9CDBC1FE ^ 0x59B777CC) + 868626517) ^ ((v335 & 0x9CDBC1FE ^ 0x890ABAA0) - 478413511) ^ ((v335 & 0x9CDBC1FE ^ 0xC43C0DB4) - 1370666451)) - 157668258;
  LOBYTE(STACK[0x109E]) = BYTE2(v363) ^ 0x96;
  LOBYTE(STACK[0x103D]) = BYTE2(v368) ^ 0xCB;
  LOBYTE(STACK[0x109D]) = v364 ^ 0xEB;
  LOBYTE(STACK[0x103E]) = v363 ^ 0x1C;
  LOBYTE(STACK[0xFDD]) = v368 ^ 0x71;
  LOBYTE(STACK[0xE26]) = BYTE1(v368) ^ 0xD0;
  LOBYTE(STACK[0xDC7]) = BYTE1(v366) ^ 0xAB;
  LOBYTE(STACK[0xF7E]) = v366 ^ 0xBC;
  v371 = v355 ^ (-1673081951 * v367 - 1663319554);
  LOBYTE(STACK[0xDC6]) = HIBYTE(v371) ^ 0x49;
  LODWORD(v303) = v356 ^ (-1673081951 * LODWORD(STACK[0x7B8]) - 1663319554);
  *(v365 + 23) = BYTE3(v303) ^ 0xF2;
  LOBYTE(STACK[0xD66]) = BYTE1(v371) ^ 0xF;
  LOBYTE(STACK[0xEBE]) = v303 ^ 0x1C;
  LOBYTE(STACK[0xF7D]) = BYTE2(v371) ^ 0x97;
  LOBYTE(v311) = v371 ^ 0xEB;
  v372 = v331 ^ (-1673081951 * LODWORD(STACK[0x77C]) - 1663319554);
  LOBYTE(STACK[0xEBD]) = BYTE2(v372) ^ 0xCB;
  LOBYTE(STACK[0xF1D]) = v311;
  v373 = STACK[0x7C0];
  LODWORD(v311) = v351 ^ (-1673081951 * LODWORD(STACK[0x7BC]) - 1663319554);
  LOBYTE(STACK[0x1075]) = BYTE3(v311) ^ 0xA9;
  LOBYTE(STACK[0x10D4]) = HIBYTE(v372) ^ 0xDE;
  LOBYTE(STACK[0xE5E]) = BYTE2(v311) ^ 0x3B;
  LOBYTE(STACK[0x10D5]) = BYTE1(v303) ^ 0xB8;
  LOBYTE(STACK[0xDFE]) = v311 ^ 0xBC;
  LOBYTE(STACK[0xF1E]) = BYTE2(v303) ^ 0x96;
  LOBYTE(STACK[0xE5D]) = v372 ^ 0x71;
  LOBYTE(STACK[0x1015]) = BYTE1(v311) ^ 0xAB;
  LODWORD(v303) = v370 ^ v354;
  LOBYTE(STACK[0x1014]) = ((v370 ^ v354) >> 24) ^ 0xB;
  v374 = v356 ^ (-1673081951 * v373 - 1663319554);
  LOBYTE(STACK[0xD9E]) = BYTE2(v374) ^ 0x96;
  LOBYTE(STACK[0xFB5]) = HIBYTE(v374) ^ 0xF2;
  v375 = STACK[0x7C8];
  v376 = v351 ^ (-1673081951 * LODWORD(STACK[0x7C4]) - 1663319554);
  LOBYTE(STACK[0x10AC]) = BYTE2(v376) ^ 0x3B;
  LOBYTE(STACK[0x110C]) = v374 ^ 0x1C;
  LOBYTE(STACK[0xDFD]) = BYTE2(v303) ^ 0x76;
  LOBYTE(STACK[0x1074]) = BYTE1(v372) ^ 0xD0;
  v377 = STACK[0x788];
  v378 = v331 ^ (-1673081951 * LODWORD(STACK[0x784]) - 1663319554);
  LOBYTE(STACK[0x110B]) = BYTE2(v378) ^ 0xCB;
  LOBYTE(STACK[0xFB4]) = BYTE1(v303) ^ 0x56;
  LOBYTE(STACK[0xF54]) = HIBYTE(v378) ^ 0xDE;
  LOBYTE(STACK[0xE95]) = BYTE1(v376) ^ 0xAB;
  LOBYTE(STACK[0xD9D]) = v303 ^ 0xAA;
  LOBYTE(STACK[0x10AB]) = v378 ^ 0x71;
  LOBYTE(STACK[0xEF4]) = BYTE1(v378) ^ 0xD0;
  LOBYTE(STACK[0xF55]) = BYTE1(v374) ^ 0xB8;
  LOBYTE(STACK[0xEF5]) = HIBYTE(v376) ^ 0xA9;
  v379 = v354 ^ (-1673081951 * LODWORD(STACK[0x690]) - 1663319554);
  LOBYTE(STACK[0x104C]) = v376 ^ 0xBC;
  v380 = v354 ^ (-1673081951 * v377 - 1663319554);
  LOBYTE(STACK[0xE94]) = HIBYTE(v380) ^ 0xB;
  LODWORD(v303) = v356 ^ (-1673081951 * v375 - 1663319554);
  LOBYTE(STACK[0xE35]) = BYTE3(v303) ^ 0xF2;
  *(v365 + 763) = BYTE2(v380) ^ 0x76;
  *(v365 + ((v379 & 0x29C ^ 0x49A08B5B) & (v379 & 0x29C ^ 0xEBA5CDD7) ^ ((v379 & 0x10) + 1235258319))) = BYTE2(v303) ^ 0x96;
  v381 = v354 ^ (-1673081951 * LODWORD(STACK[0x798]) - 1663319554);
  LODWORD(v249) = v354 ^ (-1673081951 * LODWORD(STACK[0x7A0]) - 1663319554);
  LOBYTE(STACK[0xE34]) = BYTE1(v380) ^ 0x56;
  v382 = STACK[0x7D0];
  v383 = v351 ^ (-1673081951 * LODWORD(STACK[0x7CC]) - 1663319554);
  LOBYTE(STACK[0xF2C]) = BYTE2(v383) ^ 0x3B;
  LOBYTE(STACK[0xF8C]) = v303 ^ 0x1C;
  LOBYTE(STACK[0xFEB]) = v380 ^ 0xAA;
  LOBYTE(STACK[0xF8B]) = BYTE2(v369) ^ 0xCB;
  LOBYTE(STACK[0xDD5]) = BYTE1(v303) ^ 0xB8;
  LODWORD(STACK[0x608]) = v383;
  LOBYTE(STACK[0xD75]) = HIBYTE(v383) ^ 0xA9;
  LOBYTE(STACK[0xD74]) = BYTE1(v369) ^ 0xD0;
  v384 = v356 ^ (-1673081951 * v382 - 1663319554);
  LOBYTE(STACK[0x1083]) = HIBYTE(v384) ^ 0xF2;
  LOBYTE(STACK[0xF2B]) = v369 ^ 0x71;
  LOBYTE(STACK[0xDD4]) = HIBYTE(v369) ^ 0xDE;
  LOBYTE(STACK[0xECC]) = v383 ^ 0xBC;
  LOBYTE(STACK[0x1082]) = BYTE1(v379) ^ 0x56;
  LOBYTE(STACK[0xE6B]) = v379 ^ 0xAA;
  LOBYTE(STACK[0xE6C]) = BYTE2(v384) ^ 0x96;
  LOBYTE(STACK[0xECB]) = BYTE2(v379) ^ 0x76;
  LOBYTE(STACK[0xE0C]) = v384 ^ 0x1C;
  LOBYTE(STACK[0x1023]) = BYTE1(v384) ^ 0xB8;
  v385 = v331 ^ (-1673081951 * LODWORD(STACK[0x794]) - 1663319554);
  LOBYTE(STACK[0xE0B]) = BYTE2(v385) ^ 0xCB;
  v386 = v351 ^ (-1673081951 * LODWORD(STACK[0x7D4]) - 1663319554);
  LOBYTE(STACK[0xDAC]) = BYTE2(v386) ^ 0x3B;
  LODWORD(v303) = -1673081951 * LODWORD(STACK[0x7E4]);
  v387 = v303 - 1663319554;
  LOBYTE(STACK[0xFC3]) = HIBYTE(v386) ^ 0xA9;
  LOBYTE(STACK[0xF63]) = BYTE1(v386) ^ 0xAB;
  LOBYTE(STACK[0xFC2]) = ((v385 ^ 0x80958E2F) >> (((v303 - 2) ^ (1 - v303)) & 8)) ^ 0x5E;
  LOBYTE(STACK[0xEA3]) = BYTE1(v362) ^ 0xB8;
  LODWORD(STACK[0x690]) = v381;
  LOBYTE(STACK[0xF62]) = HIBYTE(v381) ^ 0xB;
  LOBYTE(STACK[0x1022]) = HIBYTE(v385) ^ 0xDE;
  LOBYTE(STACK[0xDAB]) = v385 ^ 0x71;
  LODWORD(STACK[0x698]) = v362;
  LOBYTE(STACK[0xF03]) = HIBYTE(v362) ^ 0xF2;
  LOBYTE(STACK[0x105A]) = v362 ^ 0x1C;
  LOBYTE(STACK[0xF02]) = ((v381 ^ 0x552808F4u) >> (((((v362 & 0x28 ^ 0xF3) + 78) ^ ((v362 & 0x28 ^ 0x3D) - 124) ^ ((v362 & 0x28 ^ 0xEE) + 81)) + (((v362 & 0x28 ^ 0xD9) - 103) ^ ((v362 & 0x28) + 66) ^ ((v362 & 0x28 ^ 0xD1) - 111)) + 23) & 0x48)) ^ 0x5E;
  v388 = v331 ^ (-1673081951 * LODWORD(STACK[0x79C]) - 1663319554);
  v389 = v331;
  LOBYTE(STACK[0xEA2]) = HIBYTE(v388) ^ 0xDE;
  LOBYTE(STACK[0xE42]) = BYTE1(v388) ^ 0xD0;
  LOBYTE(STACK[0x1059]) = BYTE2(v388) ^ 0xCB;
  v390 = STACK[0x7E0];
  LODWORD(v303) = v351 ^ (-1673081951 * LODWORD(STACK[0x7DC]) - 1663319554);
  LOBYTE(STACK[0xE43]) = BYTE3(v303) ^ 0xA9;
  v391 = v356 ^ (-1673081951 * v390 - 1663319554);
  LOBYTE(STACK[0xD83]) = HIBYTE(v391) ^ 0xF2;
  LOBYTE(STACK[0xDE2]) = BYTE3(v249) ^ 0xB;
  LOBYTE(STACK[0xFF9]) = v388 ^ 0x71;
  LOBYTE(STACK[0xF3A]) = BYTE2(v391) ^ 0x96;
  LOBYTE(STACK[0xFFA]) = BYTE2(v303) ^ 0x3B;
  LOBYTE(STACK[0xDE3]) = BYTE1(v303) ^ 0xAB;
  LOBYTE(STACK[0xF99]) = BYTE2(v249) ^ 0x76;
  LOBYTE(STACK[0xF9A]) = v303 ^ 0xBC;
  LOBYTE(STACK[0xF39]) = v249 ^ 0xAA;
  LOBYTE(STACK[0xD82]) = BYTE1(v249) ^ 0x56;
  LOBYTE(STACK[0xEDA]) = v391 ^ 0x1C;
  LODWORD(v249) = v384 & 0x200 ^ 0x80D7DB59 ^ (v384 & 0x341 ^ 0x80D7D959) & (v384 | 0xE9DFF818);
  v392 = v351 ^ v387;
  *(v365 + v249) = ((v351 ^ v387) >> 24) ^ 0xA9;
  v393 = STACK[0x744];
  LODWORD(STACK[0x688]) = (-1673081951 * LODWORD(STACK[0x748]) - 1663319554) ^ 0x71476EE6;
  v394 = STACK[0x70C];
  LODWORD(STACK[0x680]) = (-1673081951 * LODWORD(STACK[0x708]) - 1663319554) ^ 0x2AEA7D46;
  LODWORD(v311) = STACK[0x750];
  LODWORD(STACK[0x610]) = (-1673081951 * LODWORD(STACK[0x74C]) - 1663319554) ^ 0x6ADE8D56;
  LODWORD(STACK[0x678]) = (-1673081951 * v394 - 1663319554) ^ 0x31739EF6;
  LODWORD(v303) = STACK[0x6F4];
  v395 = (-1673081951 * LODWORD(STACK[0x6F0]) - 1663319554) ^ 0x3C3080B3;
  v396 = STACK[0x6B0] & 2;
  v397 = *(&STACK[0x6E8] + (((v396 ^ 0x25B7C5F2) + 1146024937) ^ (v396 | 0x7E06B79D) ^ ((v396 ^ 0x6A68312B) + 194053938)) + (((v396 ^ 0x4C1B7A63) + 1538840920) ^ ((v396 ^ 0xFEDD3C33) - 377577720) ^ ((v396 ^ 0xB2C64642) - 1520048777)) - 2040322370);
  v398 = STACK[0x710];
  LODWORD(STACK[0x6B0]) = (-1663319554 - 1673081951 * LODWORD(STACK[0x714])) ^ 0xC39CD9A2;
  LODWORD(STACK[0x660]) = (-1673081951 * v398 - 1663319554) ^ 0xBC18CE03;
  LODWORD(STACK[0x668]) = (-1673081951 * v397 - 1663319554) ^ 0xAB6C5F29;
  LODWORD(STACK[0x670]) = (-1673081951 * v303 - 1663319554) ^ 0xFBA0311B;
  LODWORD(v303) = STACK[0x758];
  v399 = (-1673081951 * LODWORD(STACK[0x754]) - 1663319554) ^ 0x9831CA02;
  v400 = STACK[0x6EC];
  LODWORD(STACK[0x658]) = -1673081951 * LODWORD(STACK[0x6E8]) - 1663319554;
  v401 = STACK[0x72C];
  v402 = -1673081951 * LODWORD(STACK[0x728]) - 1663319554;
  LODWORD(STACK[0x620]) = -1673081951 * v400 - 1663319554;
  LODWORD(STACK[0x600]) = -1673081951 * v401 - 1663319554;
  v403 = -1673081951 * v311 - 1663319554;
  LODWORD(STACK[0x618]) = -1673081951 * LODWORD(STACK[0x6F8]) - 1663319554;
  v404 = STACK[0x738];
  LODWORD(STACK[0x5F0]) = -1673081951 * LODWORD(STACK[0x734]) - 1663319554;
  LODWORD(STACK[0x5E8]) = -1673081951 * v404 - 1663319554;
  v405 = -1673081951 * v303 - 1663319554;
  v406 = STACK[0x760];
  v407 = -1673081951 * LODWORD(STACK[0x75C]) - 1663319554;
  LODWORD(STACK[0x5C8]) = -1673081951 * LODWORD(STACK[0x6A0]) - 1663319554;
  LODWORD(STACK[0x5F8]) = -1673081951 * LODWORD(STACK[0x6FC]) - 1663319554;
  v408 = STACK[0x704];
  LODWORD(STACK[0x6A0]) = -1673081951 * LODWORD(STACK[0x700]) - 1663319554;
  LODWORD(STACK[0x5D8]) = -1673081951 * LODWORD(STACK[0x73C]) - 1663319554;
  LODWORD(STACK[0x5D0]) = -1673081951 * LODWORD(STACK[0x740]) - 1663319554;
  LODWORD(v303) = STACK[0x724];
  v409 = -1673081951 * LODWORD(STACK[0x720]) - 1663319554;
  LODWORD(STACK[0x5E0]) = -1673081951 * v408 - 1663319554;
  v410 = -1673081951 * LODWORD(STACK[0x764]) - 1663319554;
  LODWORD(v311) = -1673081951 * v406 - 1663319554;
  v411 = -1673081951 * v303 - 1663319554;
  v412 = -1673081951 * v393 - 1663319554;
  v413 = -1673081951 * LODWORD(STACK[0x7EC]) - 1663319554;
  LODWORD(STACK[0x5C0]) = -1673081951 * LODWORD(STACK[0x6A8]) - 1663319554;
  v414 = -1673081951 * LODWORD(STACK[0x7E8]) + 499953667;
  LODWORD(v303) = (v414 ^ 0xD8A26FF9) & (2 * (v414 & 0xE2334FFD)) ^ v414 & 0xE2334FFD;
  LODWORD(v249) = ((2 * (v414 ^ 0x98E0F879)) ^ 0xF5A76F08) & (v414 ^ 0x98E0F879) ^ (2 * (v414 ^ 0x98E0F879)) & 0x7AD3B784;
  LODWORD(v294) = v249 ^ 0xA509084;
  LODWORD(v249) = (v249 ^ 0x10832700) & (4 * v303) ^ v303;
  LODWORD(v303) = ((4 * v294) ^ 0xEB4EDE10) & v294 ^ (4 * v294) & 0x7AD3B784;
  LODWORD(v249) = (v303 ^ 0x6A429600) & (16 * v249) ^ v249;
  LODWORD(v303) = ((16 * (v303 ^ 0x10912184)) ^ 0xAD3B7840) & (v303 ^ 0x10912184) ^ (16 * (v303 ^ 0x10912184)) & 0x7AD3B780;
  LODWORD(v249) = v249 ^ 0x7AD3B784 ^ (v303 ^ 0x28133000) & (v249 << 8);
  v415 = v414 ^ (2 * ((v249 << 16) & 0x7AD30000 ^ v249 ^ ((v249 << 16) ^ 0x37840000) & (((v303 ^ 0x52C08784) << 8) & 0x7AD30000 ^ 0x28400000 ^ (((v303 ^ 0x52C08784) << 8) ^ 0x53B70000) & (v303 ^ 0x52C08784))));
  LODWORD(v249) = 948803394 * LODWORD(STACK[0x7E8]) + 724218847;
  LODWORD(v303) = (((v249 ^ 0xA9E8D583) + 1027447204) ^ v249 ^ ((v249 ^ 0xA5A9198) + 512744889) ^ ((v249 ^ 0x3767003A) + 598887451) ^ ((v249 ^ 0x3FFFF7FE) + 724220895)) & 0x39B783FC;
  LODWORD(STACK[0x35C]) = LODWORD(STACK[0x688]) ^ v356;
  LODWORD(STACK[0x358]) = LODWORD(STACK[0x610]) ^ v356;
  LODWORD(v249) = v356 ^ v403;
  LODWORD(STACK[0x354]) = v399 ^ v356;
  v416 = v356 ^ v405;
  v417 = v356 ^ v407;
  v418 = v356 ^ v311;
  LODWORD(v311) = v356 ^ v410;
  v419 = (((v303 ^ 0x7C3E7852) - 791162370) ^ ((v303 ^ 0x5B8DB527) - 144434039) ^ ((v303 ^ 0xE914EA9) - 1569134841)) - 1326903899 + (((v415 ^ 0x813ABB07) - 1505845781) ^ ((v415 ^ 0x7CF8627B) + 1543259287) ^ ((v415 ^ 0x138D3877) + 881401499));
  LODWORD(v303) = v389;
  LODWORD(STACK[0x688]) = ((v389 ^ v419 ^ 0xDB3A0844) - 1586897248) ^ ((v389 ^ v419 ^ 0x7AD77335) + 8693231) ^ ((v389 ^ v419 ^ 0x2178F55E) + 1529553798);
  LODWORD(STACK[0x350]) = LODWORD(STACK[0x680]) ^ v351;
  LODWORD(STACK[0x34C]) = LODWORD(STACK[0x678]) ^ v351;
  LODWORD(STACK[0x348]) = LODWORD(STACK[0x6B0]) ^ v351;
  LODWORD(STACK[0x344]) = LODWORD(STACK[0x660]) ^ v351;
  LODWORD(v365) = v351 ^ LODWORD(STACK[0x5C8]);
  LODWORD(STACK[0x6B0]) = v351 ^ v411;
  LODWORD(STACK[0x6A8]) = v351 ^ v409;
  v420 = v351 ^ v413;
  LODWORD(v294) = v355 ^ v402;
  v421 = v355 ^ LODWORD(STACK[0x600]);
  LODWORD(STACK[0x340]) = LODWORD(STACK[0x668]) ^ v355;
  v422 = v355 ^ LODWORD(STACK[0x5F0]);
  v423 = v355 ^ LODWORD(STACK[0x5E8]);
  v424 = v355 ^ LODWORD(STACK[0x5D8]);
  v425 = v355 ^ LODWORD(STACK[0x5D0]);
  v426 = v355 ^ v412;
  v427 = v303 ^ LODWORD(STACK[0x658]);
  v428 = v303 ^ LODWORD(STACK[0x620]);
  LODWORD(STACK[0x33C]) = v395 ^ v303;
  LODWORD(STACK[0x338]) = LODWORD(STACK[0x670]) ^ v303;
  v429 = v303 ^ LODWORD(STACK[0x618]);
  LODWORD(STACK[0x6A0]) ^= v303;
  v430 = v303 ^ LODWORD(STACK[0x5F8]);
  v431 = v303 ^ LODWORD(STACK[0x5E0]);
  v432 = v303 ^ LODWORD(STACK[0x5C0]);
  LOBYTE(STACK[0x10E3]) = BYTE1(LODWORD(STACK[0x608])) ^ 0xAB;
  LOBYTE(STACK[0x10E2]) = HIBYTE(v379) ^ 0xB;
  LOBYTE(STACK[0x111A]) = v386 ^ 0xBC;
  v433 = STACK[0x690];
  LOBYTE(STACK[0x10B9]) = LODWORD(STACK[0x690]) ^ 0xAA;
  LOBYTE(STACK[0x10BA]) = HIWORD(LODWORD(STACK[0x698])) ^ 0x96;
  LOBYTE(STACK[0x1119]) = BYTE2(v433) ^ 0x76;
  LOBYTE(STACK[0x10F1]) = BYTE1(v391) ^ 0xB8;
  LOBYTE(STACK[0x10F0]) = HIBYTE(v432) ^ 0xDE;
  LOBYTE(STACK[0x1090]) = BYTE1(v432) ^ 0xD0;
  LOBYTE(STACK[0xED9]) = BYTE2(v432) ^ 0xCB;
  LOBYTE(STACK[0xE79]) = v432 ^ 0x71;
  LOBYTE(STACK[0xE1A]) = v392 ^ 0xBC;
  LOBYTE(STACK[0xE7A]) = BYTE2(v392) ^ 0x3B;
  LOBYTE(STACK[0x1031]) = BYTE1(v392) ^ 0xAB;
  LODWORD(STACK[0x334]) = v249 ^ 0xE7B5DDA3;
  v434 = (v249 & 0x86826664 ^ 0xBF6460B6) & (v249 & 0x86826664 ^ 0xBBE6219E) ^ v249 & 0x82002644;
  LODWORD(STACK[0x330]) = (((v294 ^ 0xEC63D09C) + 1917291856) ^ ((v294 ^ 0x591881CC) - 952312800) ^ ((v294 ^ 0xA2B200E5) + 1016487223)) - 1596659634;
  LODWORD(STACK[0x32C]) = -982676827 - (((v434 ^ 0x83B953D1) - 1651991464) ^ ((v434 ^ 0x13641466) + 223730657) ^ ((v434 ^ 0xAD3B0145) - 1291137340));
  LODWORD(STACK[0x328]) = (((v421 ^ 0xC886D16C) + 211562298) ^ ((v421 ^ 0x82E69345) + 1190948113) ^ ((v421 ^ 0x5DA9139C) - 1716261430)) + 1934619453;
  LODWORD(STACK[0x324]) = v422 ^ 0x6CFCEE81;
  v435 = (v426 & 0x460FCDF1 ^ 0xF53BD076) & (v426 & 0x460FCDF1 ^ 0xB77973BF) ^ v426 & 0x40D4C30;
  LODWORD(STACK[0x320]) = (((v423 ^ 0xF02B2CEF) + 377745449) ^ ((v423 ^ 0x8EDF858F) + 1752652105) ^ ((v423 ^ 0x693DF8D5) - 1886051309)) + 301060829;
  LODWORD(STACK[0x31C]) = (((v426 ^ 0x35496056) - 96256295) ^ ((v426 ^ 0xA361E10F) + 1819000706) ^ ((v426 ^ 0x81E1D0EC) + 1324060259)) + 425584975;
  LODWORD(STACK[0x318]) = (((v424 ^ 0x9D5978A1) - 93367914) ^ ((v424 ^ 0xEB829D12) - 1934314457) ^ ((v424 ^ 0x6112B406) + 103062835)) - 1397001559;
  LODWORD(STACK[0x314]) = (((v311 ^ 0xC88B4E19) - 1677531888) ^ ((v311 ^ 0xCC6C53AE) - 1729759047) ^ ((v311 ^ 0xF671A5AB) - 1560801602)) - 1485013523;
  LODWORD(STACK[0x310]) = ((v435 ^ 0x2EBCCD4) + 1622400423) ^ ((v435 ^ 0xAE0B2828) - 866961061) ^ ((v435 ^ 0x5FD6793B) + 1032742986);
  LODWORD(STACK[0x308]) = (((v425 ^ 0x6F3C8035) + 242189204) ^ ((v425 ^ 0x8CEF6D84) - 306418141) ^ ((v425 ^ 0xF41ABC04) - 1790328925)) + 872171579;
  LODWORD(STACK[0x304]) = (((v417 ^ 0x1D37947A) - 424076039) ^ ((v417 ^ 0xDA291CB5) + 564630584) ^ ((v417 ^ 0x358830D3) - 838420398)) + 1338430362;
  LODWORD(STACK[0x300]) = (((v416 ^ 0x9E4FCC3E) - 1827229632) ^ ((v416 ^ 0x895DDCF2) - 2080071436) ^ ((v416 ^ 0xE584A8D0) - 388115246)) + 384070722;
  LODWORD(STACK[0x2FC]) = ((v418 ^ 0xA2E24C88) + 172894171) ^ ((v418 ^ 0x57F0528D) - 10733088) ^ ((v418 ^ 0x784A619) - 1356280500);
  LODWORD(v249) = ((v428 ^ 0x3B03D40A) - 594031098) ^ ((v428 ^ 0x94DDE98) - 287718248) ^ ((v428 ^ 0xB2DB84BD) + 1431281331);
  v436 = STACK[0x688];
  LODWORD(STACK[0x2F8]) = LODWORD(STACK[0x688]) + 541933943;
  LODWORD(STACK[0x2F4]) = v436 - (((v420 ^ 0x8AD614A6) + 675163826) ^ ((v420 ^ 0x8E8BD101) + 744745751) ^ ((v420 ^ 0xAD666E1B) + 260985869)) + 286079159;
  LODWORD(STACK[0x2F0]) = v249 + 1154094057;
  LODWORD(STACK[0x2EC]) = (((v427 ^ 0xF4962B74) - 694177065) ^ ((v427 ^ 0x6D5F8118) + 1331042491) ^ ((v427 ^ 0x195C2443) + 995474914)) - 2010784473;
  LODWORD(STACK[0x2E8]) = (((v429 ^ 0xA9A39BCB) - 1956283687) ^ ((v429 ^ 0xF489D439) - 699452117) ^ ((v429 ^ 0xDDBFC1DD) - 8838961)) + 1501764075;
  LODWORD(STACK[0x2E4]) = (((v430 ^ 0x4EBBE36) - 845445601) ^ ((v430 ^ 0x5C235D25) - 1789696754) ^ ((v430 ^ 0xD85D6D3C) + 288183573)) + 2045843578;
  LODWORD(STACK[0x2E0]) = (((v431 ^ 0xF772AC79) + 68253999) ^ ((v431 ^ 0xD8B8AE50) + 735804168) ^ ((v431 ^ 0xAF5F8C06) + 1547458898)) + 1663551300;
  LODWORD(STACK[0x2DC]) = ((LODWORD(STACK[0x6B8]) ^ 0xA2020FE4) + 1893246847) ^ ((LODWORD(STACK[0x6B8]) ^ 0xDF2F9D05) + 234173856) ^ ((LODWORD(STACK[0x6B8]) ^ 0xD416395D) + 114069960);
  LODWORD(STACK[0x2D8]) = (((LODWORD(STACK[0x6A0]) ^ 0xB80A578) + 638191677) ^ ((LODWORD(STACK[0x6A0]) ^ 0x979145D6) - 1172576109) ^ ((LODWORD(STACK[0x6A0]) ^ 0x1C846E81) + 823051206)) - 1508662216;
  LODWORD(STACK[0x2D4]) = (((LODWORD(STACK[0x6A8]) ^ 0x49A6A0D2) + 1539129904) ^ ((LODWORD(STACK[0x6A8]) ^ 0xA4CC2514) - 1227372566) ^ ((LODWORD(STACK[0x6A8]) ^ 0x44512E7A) + 1447742600)) + 1636296889;
  LODWORD(STACK[0x2D0]) = (((LODWORD(STACK[0x6B0]) ^ 0x6B9D25CE) - 492866885) ^ ((LODWORD(STACK[0x6B0]) ^ 0x5037E336) - 650791869) ^ ((LODWORD(STACK[0x6B0]) ^ 0x92916D44) + 462633521)) - 560586512;
  LODWORD(STACK[0x2CC]) = (((v365 ^ 0xA0387405) - 2093827943) ^ ((v365 ^ 0xAD6C271A) - 1905857656) ^ ((v365 ^ 0xA46FF8A3) - 2023410625)) + 587342643;
  v437 = STACK[0x628];
  LODWORD(v249) = LODWORD(STACK[0x628]) > 0xF4F1B56C;
  LODWORD(STACK[0x2C8]) = (((v422 & 0x214A079 ^ 0x181EC8A) + 1015092477) ^ ((v422 & 0x214A079 ^ 0xC17A496D) - 59068132) ^ ((v422 & 0x214A079 ^ 0xC0EF05AF) - 34603558)) + (((v422 & 0x214A079 ^ 0xED7BBD9A) - 1070355798) ^ ((v422 & 0x214A079 ^ 0xEA7E2E35) - 952747769) ^ ((v422 & 0x214A079 ^ 0x505939E) + 676168878));
  LODWORD(STACK[0x4D4]) = 890334079;
  STACK[0x2C0] = &STACK[0x4F161270481E943E];
  v438 = *(STACK[0x6D8] + 8 * (v437 ^ 0x2F25FCF8 ^ (23742 * v249)));
  STACK[0x4C8] = &STACK[0x45BF5];
  STACK[0x3E0] = &STACK[0x36BBC];
  STACK[0x3D8] = &STACK[0x2C4C];
  STACK[0x3D0] = &STACK[0x363E4];
  LODWORD(STACK[0x3CC]) = -2145381426;
  LODWORD(STACK[0x3C8]) = 1262545846;
  LODWORD(STACK[0x4C4]) = -1152495185;
  LODWORD(STACK[0x4C0]) = -264958737;
  LODWORD(STACK[0x4BC]) = 9895266;
  LODWORD(STACK[0x3C4]) = -1124230201;
  LODWORD(STACK[0x3C0]) = -645502399;
  LODWORD(STACK[0x38C]) = 8789620;
  LODWORD(STACK[0x388]) = 530535;
  LODWORD(STACK[0x384]) = 84240;
  LODWORD(STACK[0x380]) = 322130;
  LODWORD(STACK[0x2BC]) = -33628258;
  LODWORD(STACK[0x2B8]) = -1747638188;
  STACK[0x360] = 0x62103461A3CA24EDLL;
  STACK[0x370] = 0x4F161270481E8BDELL;
  return v438(LODWORD(STACK[0x490]));
}

uint64_t sub_100A93B34()
{
  *(v3 - 232) = -1606498426 - 16169987 * ((2091782311 - ((v3 - 240) | 0x7CAE10A7) + ((v3 - 240) | 0x8351EF58)) ^ 0xD6DFDA70) + v0 + 3683;
  (*(v2 + 8 * (v0 ^ 0x7F3B)))(v3 - 240);
  *(v1 - 0x79CEC8CF5A6FCE4ALL) = *(v3 - 240) ^ (v0 + 1560464760);
  STACK[0x5F0] = *(v2 + 8 * v0);
  return (*(v2 + 8 * (v0 + 9977)))(2174744536);
}

uint64_t sub_100A93CF8(unint64_t a1)
{
  v5 = STACK[0x1444];
  v6 = 1917435887 * ((((2 * (v4 - 240)) | 0x45F18596) - (v4 - 240) + 1560755509) ^ 0x444399CD);
  STACK[0x25F8] = STACK[0x1410];
  STACK[0x25E8] = a1;
  STACK[0x25D8] = &STACK[0x754];
  *(v4 - 240) = v6 + v1 + 194277633;
  *(v4 - 224) = v5 + v6;
  v7 = (*(v3 + 8 * (v1 ^ 0x514C)))(v4 - 240);
  return (*(v3 + 8 * ((4802 * (LODWORD(STACK[0x754]) < ((v1 - 809527858) & 0xB1DFFEDF ^ (v2 + 1281)))) ^ v1)))(v7);
}

uint64_t sub_100A93DD4@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, int a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, int a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = a1 + a2;
  v75 = (a1 + a2) >> 16;
  v76 = v66 + a1 + v75 - ((a1 + v75 + v69 - ((a1 + v75 + v69 - ((v74 + v75) >> 8)) >> 15) - ((v74 + v75) >> 8)) >> 5) - ((a1 + v75 + v69 - ((v74 + v75) >> 8)) >> 15) - ((v74 + v75) >> 8) - v71;
  v77 = (v76 ^ 0x4A96EB54) - ((v76 ^ 0x4A96EB54u) >> 9) - (((v76 ^ 0x4A96EB54) - ((v76 ^ 0x4A96EB54u) >> 9)) >> 2);
  v78 = (v77 ^ 0x77403490) - ((v77 ^ 0x77403490) >> 10) - (((v77 ^ 0x77403490) - ((v77 ^ 0x77403490) >> 10)) >> 3);
  v79 = (v78 ^ 0x738A30ED) + ((v78 ^ 0x738A30ED) >> 14) - (((v78 ^ 0x738A30ED) + ((v78 ^ 0x738A30ED) >> 14)) >> 8);
  v80 = v79 + 976643595 + ((v79 + 976643595) >> 9) + ((v79 + 976643595 + ((v79 + 976643595) >> 9)) >> 7);
  v81 = (v80 ^ 0x56D1C0B2) - ((v80 ^ 0x56D1C0B2) >> 15) + (((v80 ^ 0x56D1C0B2) - ((v80 ^ 0x56D1C0B2) >> 15)) >> 5);
  v82 = v81 + 671343139 + ((v81 + 671343139) >> 13) - ((v81 + 671343139 + ((v81 + 671343139) >> 13)) >> 3);
  v83 = v82 - 778742001 + ((v82 - 778742001) >> 11) + ((v82 - 778742001 + ((v82 - 778742001) >> 11)) >> 7);
  *(v73 - 256) = LODWORD(STACK[0x270]) ^ v68 ^ 4 ^ 0xFFFFE95D;
  v84 = v76 ^ v67 ^ v79 ^ v82;
  v85 = v77 ^ a3 ^ v80 ^ v83;
  v86 = v78 ^ v65 ^ v81 ^ (v83 + 1404006668 + ((v83 + 1404006668) >> 14) - ((v83 + 1404006668 + ((v83 + 1404006668) >> 14)) >> 2));
  v87 = -(v86 ^ 5);
  LODWORD(STACK[0x2A8]) = (v86 ^ 5) & 7;
  if (((v86 ^ 5) & 7) != 0)
  {
    v88 = 255;
  }

  else
  {
    v88 = 0;
  }

  LODWORD(STACK[0x2A4]) = v87 & 7;
  v89 = v88 << (v87 & 7);
  v90 = v89;
  if (((v86 ^ 5) & 7) != 0)
  {
    v91 = ~v89;
  }

  else
  {
    v91 = 0;
  }

  LODWORD(STACK[0x2A0]) = (16843009 * v90) ^ (v84 & v91);
  LODWORD(STACK[0x224]) = a65 ^ __ROR4__(STACK[0x224], 24) ^ a58 ^ a43 ^ LODWORD(STACK[0x218]) ^ a59 ^ v70 ^ 0x69533E71 ^ v85;
  v92 = *(v72 + 8 * v68);
  LODWORD(STACK[0x274]) = v68 ^ 0x7246;
  LODWORD(STACK[0x2AC]) = 16843009 * (v84 & 0x7F ^ 0x55);
  return v92(408);
}

uint64_t sub_100A94094@<X0>(unint64_t a1@<X3>, unint64_t a2@<X4>, unint64_t a3@<X5>, unint64_t a4@<X6>, unint64_t a5@<X7>, unint64_t a6@<X8>)
{
  v18 = *(STACK[0x540] + 8 * v6);
  *&STACK[0x310] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x2F0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x430] = vdupq_n_s64(v8);
  *&STACK[0x420] = vdupq_n_s64(0xF9FFFFFFFFFFFFFFLL);
  *&STACK[0x410] = vdupq_n_s64(a3);
  STACK[0x280] = v7 & 0xFFFFFFF8;
  *&STACK[0x3F0] = vdupq_n_s64(v10);
  *&STACK[0x400] = vdupq_n_s64(v16);
  *&STACK[0x3D0] = vdupq_n_s64(a1);
  *&STACK[0x3E0] = vdupq_n_s64(v11);
  *&STACK[0x3B0] = vdupq_n_s64(0xD13410E5269E20D1);
  *&STACK[0x3C0] = vdupq_n_s64(v13);
  *&STACK[0x390] = vdupq_n_s64(0x19A41E7488B36A16uLL);
  *&STACK[0x3A0] = vdupq_n_s64(v9);
  *&STACK[0x530] = vdupq_n_s64(0x732DF0C5BBA64AF5uLL);
  *&STACK[0x4F0] = vdupq_n_s64(0x2D4BF6941BDEDF4EuLL);
  *&STACK[0x370] = vdupq_n_s64(a5);
  *&STACK[0x380] = vdupq_n_s64(a4);
  *&STACK[0x350] = vdupq_n_s64(0xEA92E9031C9122D2);
  *&STACK[0x360] = vdupq_n_s64(v12);
  *&STACK[0x4C0] = vdupq_n_s64(0x8AB68B7E71B76E97);
  *&STACK[0x4A0] = vdupq_n_s64(0xDBED4A49ED8B9F54);
  *&STACK[0x330] = vdupq_n_s64(0xAB9F9DF26DD150A4);
  *&STACK[0x340] = vdupq_n_s64(0xD790E8AEC634F23BLL);
  *&STACK[0x320] = vdupq_n_s64(0xAA303106C91757AELL);
  *&STACK[0x300] = vdupq_n_s64(0x2FF4621CA9048653uLL);
  *&STACK[0x2D0] = vdupq_n_s64(a2);
  *&STACK[0x2E0] = vdupq_n_s64(a6);
  *&STACK[0x2B0] = vdupq_n_s64(v17);
  *&STACK[0x2C0] = vdupq_n_s64(v14);
  *&STACK[0x290] = vdupq_n_s64(0x3C3444E9F05134E0uLL);
  *&STACK[0x2A0] = vdupq_n_s64(v15);
  return v18(0x86A7DE0DC523147BLL);
}

uint64_t sub_100A959D0()
{
  v4 = (*(v1 + 8 * (v2 + 25041)))();
  *(v0 + v3) = 0;
  return (*(v1 + 8 * v2))(v4);
}

uint64_t sub_100A959FC()
{
  v2 = *(v0 + 2232);
  v3 = v2 & 0xFFFFFFF8;
  v4 = *STACK[0x51F0];
  v5 = *STACK[0x51E8] & 0xFFFFFFF8;
  v6 = *(v4 + (v5 & ((v2 & 0xFFFFFFF8) - 1831847764)));
  v7 = __ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8);
  v8 = *(v0 + 295);
  v9 = (((2 * (v6 + v7)) | 0x5B29DC827B6749EALL) - (v6 + v7) - 0x2D94EE413DB3A4F5) ^ 0xEF3BD0EB02421C11;
  v10 = v9 ^ __ROR8__(v6, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (((2 * (v11 + v10)) & 0xEED8AAA190921F14) - (v11 + v10) + 0x893AAAF37B6F075) ^ 0x6D61FE722F3B4489;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0x6FF046966119128DLL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((2 * (v16 + v15)) | 0xC8AA267759813990) - (v16 + v15) - 0x6455133BACC09CC8) ^ 0xC5E78EFE7BB68FE3;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ v1;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = __ROR8__((((2 * (v21 + v20)) & 0x46A5E9B5C654A71ALL) - (v21 + v20) + 0x5CAD0B251CD5AC72) ^ 0x846AB83AD6CC75ACLL, 8);
  v23 = (((2 * (v21 + v20)) & 0x46A5E9B5C654A71ALL) - (v21 + v20) + 0x5CAD0B251CD5AC72) ^ 0x846AB83AD6CC75ACLL ^ __ROR8__(v20, 61);
  LOBYTE(v2) = 8 * (v2 & 7);
  *(v0 + 1865) = (((__ROR8__((v22 + v23) ^ 0x5455012E8AB1C38FLL, 8) + ((v22 + v23) ^ 0x5455012E8AB1C38FLL ^ __ROR8__(v23, 61))) ^ 0x6F4F60BC0E025EE0) >> v2) ^ v8;
  v24 = *(v4 + (v5 & ((v3 ^ 0x30D441A) - 1883048814 + ((2 * v3) & 0x61A8830))));
  v25 = (v24 + v7) ^ 0xC2AF3EAA3FF1B8E4;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0x65F254DD188DB4FCLL;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x6FF046966119128DLL;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0xA1B29DC5D776132BLL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (0x529032A888404524 - ((v33 + v32) | 0x529032A888404524) + ((v33 + v32) | 0xAD6FCD5777BFBADBLL)) ^ 0x426BED16825AF237;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((2 * (v36 + v35)) & 0xADDA81718B84CE32) - (v36 + v35) + 0x2912BF473A3D98E6) ^ 0xF1D50C58F0244138;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (0xDC41D6446477C7DFLL - ((v39 + v38) | 0xDC41D6446477C7DFLL) + ((v39 + v38) | 0x23BE29BB9B883820)) ^ 0x77EB28951139FBAFLL;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  **(v0 + 2216) = *(v0 + 2231) ^ v8 ^ (((0x544A3C9F5B1D1EC6 - ((v42 + v41) | 0x544A3C9F5B1D1EC6) + ((v42 + v41) | 0xABB5C360A4E2E139)) ^ 0xC4FAA3DCAAE0BFD9) >> v2);
  v43 = (STACK[0x8070] + 9734);
  *(v0 + 2240) = v43;
  *(v0 + 2255) = *v43;
  v44 = *(v0 + 3920) + 21;
  *(v0 + 296) = v44;
  v45 = STACK[0x57D8];
  v46 = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4D6C]) ^ 0x23FE));
  *(v0 + 2256) = v44;
  *(v0 + 280) = v46;
  return (*(v45 + 8 * (LODWORD(STACK[0x4D68]) + 29306)))();
}

uint64_t sub_100A95E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v13 = *(v9 + 1368);
  v14 = *(v13 + v5 - 6152 * (((v5 * v7) >> 64) >> 12));
  v15 = (((v14 | ((v14 < 0x4C) << 8)) + 849918637) * (v6 - 12944) - 975288414) % 0x2240;
  v16 = *(v9 + 1360);
  v17 = *(v16 + 4 * v15);
  v18 = *(v13 + v11 + 5621 * (BYTE2(v17) ^ 0x38) - 6152 * (((89362129 * (v11 + 5621 * (BYTE2(v17) ^ 0x38u))) >> 32) >> 7));
  v19 = *(v13 + (5621 * (((HIBYTE(v17) ^ 0x6285CC79) + 1359043980) ^ ((HIBYTE(v17) ^ 0xBE6AB4B3) - 1913772734) ^ ((HIBYTE(v17) ^ 0xDCEF7888) - 278140549)) - 736771131) % 0x1808);
  v20 = v19 & 0x2A ^ 0x5B;
  LOBYTE(v17) = *(v13 + (5621 * (((v17 ^ 0x7ADAA78E) + v12) ^ ((v17 ^ 0xD9B62FF8) - 2083988645) ^ ((v17 ^ 0xA36C8890) - 116229069)) - 60864479) % 0x1808);
  LOBYTE(v13) = *(v13 + v11 + 5621 * (BYTE1(v17) ^ 0x8F) - 6152 * (((89362129 * (v11 + 5621 * (BYTE1(v17) ^ 0x8Fu))) >> 32) >> 7));
  v21 = v18 & 0xC2 ^ 0xF;
  v22 = v19 ^ (2 * ((v19 ^ 0x34) & (2 * ((v19 ^ 0x34) & (2 * ((v19 ^ 0x34) & (2 * ((v19 ^ 0x34) & (2 * ((v19 ^ 0x34) & (2 * ((v19 ^ 0x34) & 0x1E ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20));
  v23 = v13 & 0x94 ^ 0x30;
  HIDWORD(v24) = __PAIR64__(a5, v8) >> 1;
  LODWORD(v24) = HIDWORD(v24);
  v25 = (((v18 ^ (2 * ((v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & 0x36 ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0xC2) << 8) | ((v22 ^ 0x2A) << 16);
  v26 = v17 & 0x7A ^ 0x63;
  v27 = v17 ^ (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * (v26 ^ v17 & 0xE)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26));
  *(v16 + 4 * ((v24 >> 31) % 0x2240)) = (((((v25 ^ (v10 + 3255)) & ((v13 ^ (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * ((v13 ^ 0x34) & (2 * v23) ^ v23)) ^ v23)) ^ v23)) ^ v23))) ^ 0x99C8AB) | v25 & 0x663700) << 8) ^ 0x2C553C5) & (v27 ^ 0xFFFFFF8F) | v27 & 0x3A) ^ 0xD935E319;
  return (*(STACK[0x57D8] + 8 * ((15218 * (a5 == 255)) ^ v6)))();
}

uint64_t sub_100A961DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(*(a6 + 4000) + v9 - 35072 * ((((v8 >> 6) * a4) >> 64) >> 1));
  *(*(a6 + 4008) + v10 % ((v6 - 13047) ^ 0x3257u)) = (((v11 ^ 0x62) + 99) ^ ((v11 ^ 0xF5) - 10) ^ ((v11 ^ 0x66) + 103)) + 42;
  return (*(STACK[0x57D8] + 8 * ((244 * (v7 != 0)) ^ (v6 - 4578))))();
}

uint64_t sub_100A96284()
{
  LODWORD(STACK[0x730]) = 0;
  STACK[0x740] = v0 ^ (v0 - 11);
  LODWORD(STACK[0x790]) = v0 + 1441606102;
  v4 = STACK[0x5B8];
  v5 = 32 * *(STACK[0x5B8] + 41);
  v6 = *(STACK[0x680] + 14);
  v7 = (*(STACK[0x5B8] + 41) >> 3) & 0xFFFFE01F | (32 * *(STACK[0x5B8] + 41));
  v8 = STACK[0x680];
  v9 = ((*(STACK[0x5B8] + 41) >> 3) & 0x1Fu | v5) ^ 0xB3;
  v10 = (*(STACK[0x5B8] + 22) + 0xF930E2C66E03 + (~(2 * *(STACK[0x5B8] + 22)) | 0xFFFFFFFFFFFFFFFBLL)) << ((v0 ^ (v0 - 11)) - 7);
  v11 = ((*(STACK[0x680] + 34) >> 3) | (32 * *(STACK[0x680] + 34))) - 2 * (*(STACK[0x680] + 34) >> 3) + 31;
  v12 = *(STACK[0x680] + 36) - ((2 * *(STACK[0x680] + 36)) & 0x1ECu) + 11819050;
  v13 = *(&off_101353600 + (v0 ^ (v0 + 340)));
  STACK[0x6E0] = v13 + 266;
  v14 = *(v13 + 266 + v9);
  v15 = (v12 << 40) - 0x340000000000;
  v16 = *(STACK[0x648] + 118);
  v17 = STACK[0x648];
  v18 = ((v4[53] - ((2 * v4[53]) & 0x10A)) << 8) - 0x3953A8A70DDA7B00;
  STACK[0x6F0] = v13;
  v19 = v14 ^ ((((v7 ^ 0x38) + 68) ^ ((v7 ^ 0xFFFFFFF3) - 119) ^ ((v7 ^ 0x12) + 106)) + (((v7 ^ 0x64) - 87) ^ ((v7 ^ 0x18) - 43) ^ ((v7 ^ 0x69) - 90)) - 125) ^ 0xBB;
  v20 = ((v16 - ((2 * v16) & 0x1DA)) << 12) + 0x495D692390FED000;
  v21 = (v19 + 56) - ((2 * (v19 + 56)) & 0x22) - 0x1AB9E612215B5FEFLL;
  v22 = (v21 ^ 0x1AB9E612215B5F82) & (v18 ^ 0x6B0848E61A9C5993) ^ v21 & 0x4000400400236CLL;
  LOBYTE(v18) = v11 ^ 0xB7 ^ *(v13 + 794 + (v11 ^ 0xF1));
  v23 = v4[25];
  v24 = STACK[0x678];
  v25 = *(STACK[0x678] + 10);
  STACK[0x720] = v2;
  v26 = (v22 ^ 0x4203A00103460120) & (v10 ^ 0x37335FC92944A121) ^ v22 & 0x31FC42F0B8B95EDELL;
  *(&v27 + 1) = v26 ^ 0xFFDB3;
  *&v27 = ((v26 ^ 0xEBC2C4636E000000) & ~((-77 * v18) << 24) | ((-77 * v18) << 24) & 0x7E000000) ^ 0x4257B9C81F00000;
  v28 = ((v17[108] - ((2 * v17[108]) & 0x82u) + 54342) << 48) - 0x5000000000000;
  *&v27 = __ROR8__(v20 ^ 0xDC652A8972917165 ^ ((v27 >> 20) - ((2 * (v27 >> 20)) & 0x3E5F084C1E6E9FDALL) - 0x60D07BD9F0C8B013), 44);
  v29 = v4[60];
  v30 = ((v25 - ((2 * v25) & 0xD6)) << 8) + 0x765D045EEB16B00;
  LODWORD(STACK[0x6D0]) = v24[57] - ((2 * v24[57]) & 0x94);
  v31 = v15 ^ 0xF4C4031FD6A403D1 ^ (v27 - ((2 * v27) & 0x8127EA3FAD4807A2) + 0x4093F51FD6A403D1);
  v32 = v28 ^ 0xC366960B76F2268 ^ (v31 - ((2 * v31) & 0xB0EED2C16EDE44D0) - 0x2788969F4890DD98);
  v33 = v32 - ((2 * v32) & 0xBEB8BDF8D51BEA1CLL);
  v34 = (v30 & 0x6205005881A4000 ^ 0x9A44698E9830F5CDLL ^ (v30 ^ 0xF89A2FBA114E94B4) & ((((v6 - ((2 * v6) & 0xFFFFFFFFFFFFFF8FLL)) << 16) + 0x3D0A692E66C70000) ^ 0x4455C6740062BFB4)) & ((v23 - ((2 * v23) & 0x76) + 0x7451BE9570472C3BLL) ^ 0x8BAE416A8FB8D3C4) ^ (v23 - ((2 * v23) & 0x76) + 0x7451BE9570472C3BLL) & 0x40000000022586;
  v35 = ((v4[49] - ((2 * v4[49]) & 0x5555)) << 24) - 0x78AF6ADF56000000;
  *(&v27 + 1) = v34 ^ 0x49A6;
  *&v27 = v34 ^ 0xE7560822BDA40000;
  LODWORD(v20) = (v24[27] >> 3) | (32 * v24[27]);
  LOBYTE(v20) = v20 + (~(2 * v20) | 0x57) - 43;
  v36 = v17[34];
  STACK[0x780] = v13 + 794;
  *&v27 = __ROR8__((v27 >> 16) ^ 0xA9A1F0F987660A25, 48);
  v37 = (v27 ^ 0xF2D41995C100C434) & (v35 ^ 0xB855D41DCAF0F536) ^ v27 & 0x3F05413D60F0F536;
  v38 = (-77 * (*(v13 + 794 + (v20 ^ 0x3ALL)) ^ v20 ^ 0x7C)) << 32;
  v39 = (((v35 ^ 0xE684C103CB28FBD9) + 0x3D8129CDB97EEB42) ^ ((v35 ^ 0xEF2592F1828B0DE7) + 0x34207A3FF0DD1D80) ^ ((v35 ^ 0x8EF1C6D2E3A3F63ELL) + 0x55F42E1C91F5E6A7)) + (((v27 ^ 0x9C36EC7CE90B1B59) + 0x5731905E044E2F02) ^ ((v27 ^ 0xA908DCC3D91FF8EELL) + 0x620FA0E1345ACCB7) ^ ((v27 ^ 0xC7EA292AF1122DCBLL) + 0xCED55081C571994)) + ((2 * v37) ^ 0x6408022A80018868) + ((4 * v37) ^ 0x37EFFBAAFFFCEF2FLL) + 0x69D71C59FB65F543;
  v40 = v39 + v38 - 2 * (v39 & v38);
  LODWORD(v38) = (v24[2] >> 3) | (32 * v24[2]);
  LODWORD(v37) = v38 - ((2 * v38) & 0x3FD8);
  v41 = v37 + 108;
  LODWORD(v38) = v24[71] - ((2 * v24[71]) & 0xFF83);
  v42 = (v37 + 108) ^ 0x2D;
  *(&v27 + 1) = v39;
  *&v27 = v40;
  LODWORD(v40) = (-109 - v37) & 0x80;
  v43 = v17;
  LODWORD(v35) = v17[44];
  LODWORD(v37) = v4[68];
  v44 = v4[40];
  v45 = ((v24[28] - ((2 * v24[28]) & 0x13Au) + 8402899) << 40) + 0xCA0000000000;
  v46 = (__PAIR64__(v42, v40) >> 7) ^ 0xEE9256A9;
  v47 = v24[74] - ((2 * v24[74]) & 0x188) + 0x5E413B53DF7356C4;
  v48 = v24[29];
  STACK[0x760] = v3;
  *&v27 = __ROR8__((((v29 - ((2 * v29) & 0x2E)) << 9) + 0xA7543CD95502E00) ^ 0xD81651A1A6E08485 ^ ((v27 >> 31) - ((2 * (v27 >> 31)) & 0xB649F4C7351BC9C4) + 0x5B24FA639A8DE4E2), 33);
  LOBYTE(v29) = *(v13 + 794 + (((v46 << 7) & 0x492B5480 | (v46 >> 25)) ^ 0x492B54D8));
  v49 = v17[90];
  v50 = v8;
  LODWORD(v46) = *(v8 + 22);
  v51 = ((v44 - ((2 * v44) & 0x2E)) << 24) + 0x1EE6626317000000;
  v52 = ((v24[64] - ((2 * v24[64]) & 0x22u) + 1849227303) << 32) - 0x1600000000;
  v53 = ((((((v24[60] - ((2 * v24[60]) & 0x170)) << 16) - 0x58A029AB15480000) ^ 0x6796E982646130C2) & (((-77 * (v41 ^ 0xC4 ^ v29)) << 8) ^ 0xFFFFFFFFFFFFF7CFLL) | ((-77 * (v41 ^ 0xC4 ^ v29)) << 8) & 0xCFFF) ^ 0xBAC83CE069FDFFC7) & ((v36 - ((2 * v36) & 0xE0) + 0x8E3211004CC4C70) ^ 0xF71CDEEFFB33B3AFLL) ^ (v36 - ((2 * v36) & 0xE0) + 0x8E3211004CC4C70) & 0x620000008000FALL;
  v54 = ((v48 - ((2 * v48) & 0x40u) + 64044) << 48) - 0xC000000000000;
  LOBYTE(v48) = ((v46 >> 2) | (v46 << 6)) - ((2 * ((v46 >> 2) | (v46 << 6))) & 0xD6) - 21;
  v55 = v52 & 0x5E00000000 ^ 0x2FEE8A05BCLL ^ (v52 ^ 0xEEFF259802) & (v51 ^ 0xC25D259802);
  v56 = v53 ^ 0xC9180B108ALL;
  v57 = v53 & 0x615B506241;
  LOBYTE(v46) = v5 & 0x20;
  LOBYTE(v53) = v5 & 0x20 ^ 0x28;
  v58 = v56 & v55 & 0xFFFFAF9DBELL ^ v57 | v45 & 0xFF0000000000;
  v59 = v13 + 3;
  v60 = v49 - 2 * (v49 & 0xFu) + 43082;
  v61 = (((-79 * ((*(v13 + 3 + (v48 ^ 0x79)) + (v48 ^ 0x20)) ^ 5)) << 8) ^ 0x5511AE2CC18685E2) & (v47 ^ 0x21BA852C24DCA927) ^ v47 & 0xA4010531A21021DLL;
  v62 = ((v4[24] - ((2 * v4[24]) & 0x10)) << 24) - 0x15DC09ECF8000000;
  v63 = ((v4[67] - ((2 * v4[67]) & 0x44u) + 1596863841) << 32) - 0x3F00000000;
  v64 = ((v43[88] - 0x6199D9693E2E90A6 - ((2 * v43[88]) & 0xB4)) ^ 0x9E662696C1D16F5ALL) << v46 << v53;
  v65 = v63 & 0x4B0A2A5B00000000 ^ (v64 - ((2 * v64) & 0x713893D08ACA6C00) + 0x789C49E84565366FLL) ^ 0xA7F2BC4ECACFDC3FLL ^ (v62 & 0xC823302218000000 ^ 0x7B872A7B600FCFC4 ^ (v61 & 0x1A00181899253D2ALL ^ 0x581171223852E263 ^ (v61 ^ 0xA0AE418024584011) & ((((v24[59] - ((2 * v24[59]) & 0xC8)) << 16) - 0x2548DA0E19C0000) ^ 0x987AD4B858B6C2D5)) & (v62 ^ 0x15DC09ECF7FFFFFFLL)) & (v63 ^ 0xA0D1CADDFFFFFFFFLL);
  v66 = ((v24[40] - ((2 * v24[40]) & 0x80u) + 86) << 56) - 0x1600000000000000;
  v67 = (v66 ^ 0xBFFFFFFFFFFFFFFFLL) & (v54 ^ 0x4031908B84A22BC1);
  LODWORD(v64) = (v24[96] >> 3) | (32 * v24[96]);
  LODWORD(v64) = v64 - ((2 * v64) & 0x3FCA);
  LODWORD(v62) = (((v64 - 27) ^ 0x50) + 96) ^ (((v64 - 27) ^ 0xFFFFFFE8) - 24) ^ (((v64 - 27) ^ 0x48) + 72);
  LODWORD(v63) = (v24[38] >> 3) | (32 * v24[38]);
  LOBYTE(v63) = v63 - ((2 * v63) & 0xE8);
  LOBYTE(v57) = v62 + ((((v64 - 27) ^ 0x22) - 38) ^ (v64 - 31) ^ (((v64 - 27) ^ 0x1E) - 26)) + 56;
  v68 = v24[39] - ((2 * v24[39]) & 0x58);
  v69 = STACK[0x6E0];
  LOBYTE(v46) = *(STACK[0x6E0] + v62 - ((2 * v62) & 0x14Cu) + 166) ^ v57;
  v70 = v4[48] - ((2 * v4[48]) & 0xBC);
  v71 = *(v50 + 39) - ((2 * *(v50 + 39)) & 0xA2);
  LODWORD(v62) = v43[20] - ((2 * v43[20]) & 0x16);
  v72 = v65 & 0xFFFFEFFFFFFFFFFFLL ^ 0xA80F000000000000 ^ ((v65 & 0x100000000000 | (v60 << 48)) - 0x3B000000000000);
  v73 = (v72 - ((2 * v72) & 0x375F2E01BB0D9F9ELL) + 0x1BAF9700DD86CFCFLL) ^ (((v35 - ((2 * v35) & 0x94) + 109) << 56) - 0x2300000000000000);
  v74 = *(*STACK[0x688] + 4);
  STACK[0x710] = v74;
  v75 = v74 | ((v38 + 243) << 56);
  v76 = v66 & 0x4500000000000000;
  LOBYTE(v66) = (v46 ^ 0xBB) + 56;
  v77 = v71 + 0x55A0A92AEE355C51;
  LOBYTE(v65) = ((((v63 - 12) ^ 0x14) + 26) ^ (-2 - v63) ^ (((v63 - 12) ^ 0xA) + 8)) + ((((v63 - 12) ^ 0xB4) - 97) ^ (((v63 - 12) ^ 0x37) + 30) ^ (((v63 - 12) ^ 0xAE) - 123));
  v78 = (((v66 << 16) & 0xD70000 | (((v68 << 8) + 0x2488A85ABF662C00) ^ 0xA43024ADA14EFFE5) & ~(v66 << 16)) ^ 0xB35DDBC0DFC36F87) & (v77 ^ 0xAA5F56D511CAA3AELL) ^ v77 & 0x40020080204439DLL;
  LODWORD(v68) = (*v24 >> 2) | (*v24 << 6);
  LOBYTE(v71) = *(v69 + ((v63 - 12) ^ 0x47));
  v79 = (((v37 - 2 * (v37 & 3) + 36626) << 48) - 0xF000000000000) ^ (v75 - 0x3200000000000000);
  LODWORD(v75) = v68 - ((2 * v68) & 0x7FA6) + 83;
  v80 = v79 ^ (v27 - ((2 * v27) & 0x268914463EFA2A6ALL) - 0x6CBB75DCE082EACBLL);
  v81 = (((((v65 + 11) ^ (-11 - v65) ^ (v71 - ((v65 + 11) ^ v71))) + v71) ^ 0xBB) + 56) << 32;
  v82 = (v4[78] + 25101 + (~(2 * v4[78]) | 0xFFFFFFE7)) << 48;
  v83 = v78 & 0xA43CE09094581F1 ^ ((-79 * (((v75 ^ 0x98) + *(v59 + (v75 ^ 0xC1))) ^ 5)) << 56) ^ (v82 & 0x352000000000000 ^ 0xDF11AC86F93DEEB2 ^ ((((v62 + 7542301) << 40) - 0x120000000000) & 0x3010BE0000000000 ^ 0x5352D613C4DDC1A8 ^ ((v81 & 0xB600000000 | (((v70 << 24) - 0x4739449CA2000000) ^ 0xA4A5542A3FA2E94CLL) & ~v81) ^ 0x578CAE2AAAF8B858) & ((((v62 + 7542301) << 40) - 0x120000000000) ^ 0x8CE9F4FFFFFEFFFELL)) & (v82 ^ 0x9DF3FFFFFFFFFFFFLL)) & (v78 ^ 0xC81A88C03C10038CLL) ^ 0xF7FD77FFF7FFFE7FLL;
  v84 = (v33 + 0x5F5C5EFC6A8DF50ELL) ^ (((LODWORD(STACK[0x6D0]) + 250) << 56) - 0x3000000000000000) ^ v83;
  v85 = v76 ^ v67 ^ v58 ^ v80 ^ 0x6C337F4D4541EA12;
  v86 = v83 ^ v73;
  v87 = v85 & (v80 ^ 0xD8DDDB6864363711);
  v80 ^= 0x272224979BC9C8EEuLL;
  v88 = (((v84 ^ 0x7598B5010751016ELL) + (v84 ^ 0x1538C397732E9305) - 2 * (v84 ^ 0x7598B5010751016ELL)) ^ 0xFFFFFFFFFFFFFFFELL) + (v84 ^ 0x1538C397732E9305);
  v89 = v88 ^ v87;
  v90 = (v84 ^ 0x8A674AFEF8AEFE91) & v80 ^ v86;
  v91 = v88 & (v86 ^ 0x1987236507A33446);
  v92 = (v89 ^ 0x632AD668E013C7D0) + (v90 ^ 0xE678DC9AF85CCBB9) - 2 * ((v89 ^ 0x632AD668E013C7D0) & (v90 ^ 0xE678DC9AF85CCBB9));
  v93 = (v73 ^ 0x1ED2947F097F0CCELL) & (__ROR8__(__ROR8__(v85, 62) ^ 0x6B451792FBEDBF5ALL, 2) ^ 0x652EBA1B41049029) ^ v80 ^ v89;
  v94 = (v86 ^ 0xE678DC9AF85CCBB9) & (v73 ^ 0xE12D6B80F680F331) ^ v85;
  *(&v27 + 1) = v93 ^ 0x1829DBD49149AC6DLL;
  *&v27 = v93;
  v95 = (v90 ^ 0xE678DC9AF85CCBB9) & 0xFFFFDFFFFFFFFFFFLL ^ (v90 & 0x200000000000 | 0x8717DFE2A3B1E3F2);
  v96 = (v27 >> 61) ^ v93 ^ 0x1829DBD49149AC6DLL ^ ((v93 ^ 0x1829DBD49149AC6DuLL) >> 39) ^ ((v93 ^ 0x1829DBD49149AC6DLL) << 25);
  v97 = v94 ^ 0x6E807D10291F7139 ^ __ROR8__(v94 ^ 0x6E807D10291F7139, 1) ^ ((v94 ^ 0x6E807D10291F7139) >> 6) ^ ((v94 ^ 0x6E807D10291F7139) << 58);
  v98 = v96 ^ v97;
  v99 = v73 ^ 0x585710AAE7BA8EBCLL ^ v94 ^ v91 ^ ((v73 ^ 0x585710AAE7BA8EBCLL ^ v94 ^ v91) >> 10) ^ ((((v73 ^ 0x585710AAE7BA8EBCLL ^ v94 ^ v91) << 47) ^ ((v73 ^ 0x585710AAE7BA8EBCLL ^ v94 ^ v91) << 54)) & 0xFFFF800000000000 | ((v73 ^ 0x585710AAE7BA8EBCLL ^ v94 ^ v91) >> 17));
  v100 = ((v95 >> 41) | (v95 << 57)) ^ (v95 << 23) ^ __ROR8__(__ROR8__(v95, 52) & 0xFFFFFFFFFFF80FFFLL ^ __ROR8__(v95, 45) ^ 0x505B986E46C86CD1, 19);
  v101 = v92 ^ __ROR8__(v92, 19) ^ (v92 >> 28) ^ (v92 << 36) ^ v100;
  v102 = (v101 ^ 0xF265D5F48CF23726) & v96;
  v103 = v99 ^ v100;
  v104 = v101 ^ v97 & ~v96;
  v105 = v103 ^ 0xD9A2A0B730DC8D9;
  v106 = (v103 ^ 0xD9A2A0B730DC8D9) - (v103 ^ 0xD9A2A0B730DC8D9 ^ v102);
  v107 = v96 ^ v99 & ~v98 ^ 0xEB516B05DC90FF86 ^ v104;
  v108 = (v103 ^ 0xF265D5F48CF23726) & (v101 ^ 0xD9A2A0B730DC8D9);
  v109 = (v103 ^ 0xD9A2A0B730DC8D9) & ~v99 ^ v98;
  v110 = (v102 ^ -v102 ^ v106) + v105;
  v111 = v110 ^ v104;
  v112 = v107 ^ __ROR8__(v107, 61) ^ (v107 >> 39) ^ (v107 << 25);
  v110 ^= 0x62C1F2A9E89E4C79uLL;
  *(&v27 + 1) = v109;
  *&v27 = v109 ^ 0x15C7857573502C40;
  v113 = v27 >> 1;
  v114 = (v108 ^ v99 ^ v109 ^ -(v108 ^ v99 ^ v109) ^ (0x3378C4AC0693E070 - (v108 ^ v99 ^ v109 ^ 0x3378C4AC0693E070))) + 0x3378C4AC0693E070;
  *(&v27 + 1) = v109;
  *&v27 = v109 ^ 0x15C7857573502C40;
  v115 = v113 ^ v109 ^ 0x15C7857573502C40 ^ (v27 >> 6);
  v116 = v115 ^ v112;
  v117 = ((v110 >> 7) & 0xC76FAF5796E5B1 ^ v110 & 0x2AC76FAF5796E5B1 | (v110 >> 7) & 0x1389050A8691A4ELL ^ v110 & 0xD5389050A8691A4ELL) ^ ((v110 >> 41) | (v110 << 57));
  v118 = v117 ^ (v110 << 23);
  v119 = v114 ^ __ROR8__(v114, 10) ^ (v114 >> 17) ^ (v114 << (v87 & 0x2F) << (v87 & 0x2F ^ 0x2F));
  v120 = v111 ^ 0x5B30CCB4714C4C26 ^ (v111 >> 28) ^ __ROR8__(v111 ^ 0x5B30CCB4714C4C26, 19) ^ ((v111 ^ 0x5B30CCB4714C4C26) << 36) ^ v118;
  v121 = v120 ^ 0x5B30CCB47;
  v122 = (v120 ^ 0xFFFFFFFA4CF334B8) & v112;
  v123 = v122 & 0x80000000;
  v124 = v121 & ~(v118 ^ v119);
  v125 = v122 & 0xFFFFFFFF7FFFFFFFLL;
  v126 = v119 & ~(v115 ^ v112);
  v127 = v121 ^ v115 & ~v112;
  v128 = __ROR8__(__ROR8__(((v118 ^ v119) - v123) ^ 0x81DCE751042E6924, 24) ^ 0x2E692481DCE75104, 40);
  if ((v123 & (v118 ^ v119)) == 0)
  {
    v128 = v123 + (v118 ^ v119);
  }

  v129 = v128 ^ v125;
  v130 = v118 & ~v119;
  v131 = v127 ^ 0x7D752DD7DCC251B6 ^ v129;
  v132 = v130 ^ v116;
  v133 = v126 ^ v112 ^ v127;
  v134 = (v132 & 0x100000000000 | 0xE7E200F443AAFCDFLL) ^ v132 & 0xFFFFEFFFFFFFFFFFLL;
  v135 = v133 ^ 0xEEAFC2D3EC65C482 ^ (8 * (v133 ^ 0xEEAFC2D3EC65C482)) ^ ((v133 ^ 0xEEAFC2D3EC65C482) >> 39) ^ ((v133 ^ 0xEEAFC2D3EC65C482) >> 61);
  v136 = v135 & 0xC14E8DE85AE3ED7FLL ^ ((v133 << 25) ^ 0xA7D8CB8904000000) & 0xC14E8DE85A000000 | v135 & 0x3EB17217A51C1280 ^ ((v133 << 25) ^ 0xA7D8CB8904000000) & 0x3EB17217A4000000;
  v137 = __ROR8__(v134, 1);
  v138 = (v134 ^ v137 ^ (v134 >> 6)) & 0x11B7E8329062AC00 ^ (v134 << 58) & 0x1000000000000000 | (v134 ^ v137 ^ (v134 >> 6)) & 0xEE4817CD6F9D53FFLL ^ (v134 << 58) & 0xEFFFFFFFFFFFFFFFLL;
  v139 = v119 ^ 0xD8700A4CB46F51B0 ^ v132 ^ v124 ^ __ROR8__(v119 ^ 0xD8700A4CB46F51B0 ^ v132 ^ v124, 10) ^ ((v119 ^ 0xD8700A4CB46F51B0 ^ v132 ^ v124) >> 17) ^ ((v119 ^ 0xD8700A4CB46F51B0 ^ v132 ^ v124) << 47);
  v140 = v131 ^ __ROR8__(v131, 19) ^ (v131 >> 28) ^ (v131 << 36);
  v141 = v136 ^ v138;
  v142 = v129 ^ 0x66173F92B629299ALL ^ __ROR8__(v129 ^ 0x66173F92B629299ALL, 7) ^ ((v129 ^ 0x66173F92B629299ALL) >> 41) ^ ((v129 ^ 0x66173F92B629299ALL) << 23);
  v143 = (v140 ^ -v140 ^ ((v142 ^ v140) + v142 - 2 * (v142 ^ v140))) + v142;
  v144 = v143 ^ v138 & ~v136;
  v145 = v136 ^ 0x318CC080266427A2 ^ v139 & ~(v136 ^ v138) ^ v144;
  v146 = v136 & ~v143 ^ v142 ^ v139;
  v147 = v142 & ~v139 ^ v141;
  v148 = v77 & 0x1C;
  v149 = v77 & 0x1C ^ 0xBB;
  v150 = v144 ^ 0xC5AB08FD33C1B5A7 ^ v146;
  v151 = v150 >> (v149 & 0x14) >> (~v149 & 8) >> (v148 ^ 0xCu);
  v152 = v143 & ~(v142 ^ v139);
  v153 = __ROR8__(__ROR8__(v147, 54) ^ 0xD97AFC74BABD94C9, 10);
  v154 = (v153 ^ 0x5524B4812AC790uLL) >> 1;
  v155 = v139 ^ 0xCC98C5A695FE0D08 ^ v147;
  v156 = v153 & 0x20000000000;
  v157 = v69;
  v158 = v155 ^ v152;
  v159 = v146 & 0x4000000000000 | 0xA0B866C79876C7E4;
  v160 = (v153 ^ 0x5524B4812AC790uLL) >> 6;
  v161 = v146 & 0xFFFBFFFFFFFFFFFFLL;
  if ((v154 & v153 & 0x20000000000) != 0)
  {
    v156 = -v156;
  }

  v162 = (v156 + v154) ^ (v153 ^ 0x5526B4812AC790) & (v153 ^ 0x5524B4812AC790);
  v163 = v162 & 0x8000;
  v164 = v162 & 0xFFFFFFFFFFFF7FFFLL;
  if ((v163 & v160) != 0)
  {
    v163 = -v163;
  }

  v165 = v159 ^ v161;
  v166 = ((v153 ^ 0x5524B4812AC790) << 58) ^ (v153 << 63) ^ v164 ^ (v163 + v160);
  v167 = v158 ^ __ROR8__(v158, 10) ^ (v158 >> 17) ^ (v158 << 47);
  v168 = v145 ^ (v145 >> 39) ^ (8 * v145) ^ (v145 << 25) ^ ((*(v69 + (HIBYTE(v145) & 0xE0 ^ 0xB3)) ^ (((HIBYTE(v145) & 0xE0 ^ 0xD9) + (HIBYTE(v145) & 0xE0) + 21) & 0xA0 | 0x59) ^ (((HIBYTE(v145) & 0xE0 ^ 0xD9) + (HIBYTE(v145) & 0xE0) + 21) & 0x58 | 0xA0) ^ 0x44) + 56);
  v169 = v168 ^ v166;
  v170 = __ROR8__(v168 ^ v166, 4) ^ 0x5AF2DE4385534495;
  v171 = v165 ^ __ROR8__(v165, 7) ^ (v165 >> 41) ^ (v165 << 23);
  v172 = v150 ^ __ROR8__(v150, 19) ^ (v150 << 36) ^ v151 ^ v171;
  v173 = v166 & ~v168;
  v174 = v171 ^ v167;
  v175 = v173 ^ v172;
  v176 = v169 ^ v171 & ~v167;
  v177 = v168 & ~v172 ^ v174;
  v178 = v177 ^ 0xE78A8F8F26E90B2BLL ^ v175;
  v179 = v168 ^ 0x68ABEAE5737B7693 ^ v175 ^ (__ROR8__(v170, 60) ^ 0x50D21BC7AACBB6AALL) & v167;
  v180 = ((2 * v176) & 0x4542DCFA80C18558 ^ v176 ^ 0xA2A16E7D4060C2ACLL) - ((2 * v176) & 0x4542DCFA80C18558) + 2 * ((2 * v176) & 0x4542DCFA80C18558 & (v176 ^ 0xA2A16E7D4060C2ACLL));
  v177 ^= 0xF14770720A54D309;
  v181 = v167 ^ 0x1DE76D00F7B2971ELL ^ v172 & ~v174 ^ v176;
  v182 = ((v179 >> 61) ^ -(v179 >> 61) ^ (v179 - ((v179 >> 61) ^ v179))) + v179;
  v183 = v181 << 47;
  v184 = (v182 + 8 * v179 - 2 * (v182 & (8 * v179))) ^ __ROR8__(v179, 39);
  v185 = v181 ^ __ROR8__(v181, 10) ^ (v181 >> 17);
  v186 = ((v180 ^ (v180 >> 1)) + (v176 << 63)) ^ __ROR8__(v180, 6);
  v187 = v184 ^ v186;
  v188 = ((v177 ^ (v177 >> 7) ^ (v177 >> 41)) & 0xE428614843CED915 ^ (v177 << 57) & 0xE400000000000000 | (v177 ^ (v177 >> 7) ^ (v177 >> 41)) & 0x1BD79EB7BC3126EALL ^ (v177 << 57) & 0x1A00000000000000) ^ (v177 << 23);
  v189 = v188 ^ __ROR8__(v178, 28) ^ (((v178 << 45) ^ (0xFFFFE00000000000 * v178) ^ ((v178 ^ (v178 >> 19)) - (v178 ^ (v178 >> 19) ^ (v178 << 45)))) + (v178 ^ (v178 >> 19)));
  v190 = (((v185 ^ -v185 ^ (v183 - (v185 ^ v183) - ((v183 - (v185 ^ v183)) ^ -v185))) + v183 - (v185 ^ v183)) ^ v185) + v183;
  v191 = v190 & ~(v184 ^ v186);
  v192 = v190 ^ v188;
  v193 = v186 & ~v184 ^ v189;
  v194 = v189 & ~(v190 ^ v188) ^ v190;
  v195 = v191 + v184 - 2 * (v191 & v184);
  v196 = v187 ^ v188 & ~v190;
  v197 = ((v184 ^ ~v189) + (v184 | ~v189) + 2 * (v184 ^ v189) + 2) ^ v192;
  v198 = v195 ^ v193;
  v199 = v193 ^ 0x2139B223389E38FALL ^ v197;
  v200 = (v199 >> 19) + v199 - 2 * ((v199 >> 19) & v199);
  v201 = v194 ^ v196;
  v196 ^= 0x60319059DF71CA55uLL;
  v202 = v200 + ((v199 >> 28) | (v199 << 45)) - 2 * (v200 & ((v199 >> 28) | (v199 << 45)));
  *(&v204 + 1) = v198 ^ 0x1503C0FF64ECBF78;
  *&v204 = v198 ^ 0x8000000000000000;
  v203 = v204 >> 61;
  *&v204 = __ROR8__(((v199 & 0xFFFFFFF) << 23) ^ (v202 >> 13) ^ 0x630B6216AA2B6A3BLL, 38);
  v205 = __ROR8__((((v202 & 0x1FFF) << 13) ^ 0xD4E9B7F353AD684BLL) & 0x40C8067310DBC80ALL ^ v204 & 0x4ACC4E7BB8880CAELL | v204 & 0xB533B18445043351 ^ (((v202 & 0x1FFF) << 13) ^ 0xD4E9B7F353AD684BLL) & 0x9421B18043242041, 26) ^ 0x288D351E7518B136;
  v206 = v198 ^ __ROR8__(v198, 39) ^ v203;
  v207 = (v197 ^ 0xA39DBBE78CD033FCLL) << 23;
  v208 = v196 << v117 << (v117 & 0x3F ^ 0x3F);
  v209 = __ROR8__(v205, 51);
  v210 = v201 ^ (v201 << 47) ^ ((v201 >> 17) | (v201 << 54)) ^ ((v201 ^ 0x884CD14C357D2C36) >> (v109 & 0xA) >> (v109 & 0xA ^ 0xA));
  v211 = (v209 ^ 0x88BFBCABC4FB341BLL) >> (v195 & 8 ^ 8) >> (v195 & 8);
  v212 = (v208 & 0x2D4C36FF79D010F2 ^ -(v208 & 0x2D4C36FF79D010F2) ^ (((v196 ^ (v196 >> 1) ^ (v196 >> 6)) & 0x2D4C36FF79D010F2) - ((v196 ^ (v196 >> 1) ^ (v196 >> 6)) & 0x2D4C36FF79D010F2 ^ v208 & 0x2D4C36FF79D010F2))) + (v208 & 0xD2B3C900862FEF0DLL ^ v196 ^ (v196 >> 1) ^ (v196 >> 6));
  v4[53] = v211;
  v213 = v212 ^ (v196 << 58);
  v4[22] = BYTE2(v209) ^ 0xFB;
  v4[41] = v209 ^ 0x1B;
  v214 = STACK[0x648];
  v214[118] = BYTE4(v209) ^ 0xAB;
  *&v204 = __ROR8__(__ROR8__((((v197 ^ 0xA39DBBE78CD033FCLL) & 0x7F) << 37) ^ __ROR8__(v197 ^ 0xA39DBBE78CD033FCLL ^ ((v197 ^ 0xA39DBBE78CD033FCLL) >> 7), 20) ^ 0xF3BB4A05768EFA24, 27) ^ 0xDE484075BD2360A0, 17);
  v215 = STACK[0x680];
  *(v215 + 34) = BYTE3(v209) ^ 0xC4;
  v216 = v204 - ((2 * v204) & 0x200E0F9704EBCA4ALL) + 0x100707CB8275E525;
  *(v215 + 36) = BYTE5(v209) ^ 0xBC;
  v217 = v215;
  v218 = v216 ^ (v197 >> 41);
  v219 = STACK[0x6F0] + 533;
  v220 = *(v219 + (((BYTE6(v209) ^ 0xBF) - 9) ^ 0x7DLL));
  v221 = v216 & v207;
  LOBYTE(v203) = ((2 * v220) & 0xAC) + (v220 ^ 0xD6) - 2 * ((((2 * v220) & 0xAC) + (v220 ^ 0xD6)) & 0x5E ^ (v220 ^ 0xD6) & 2) - 36;
  v222 = (v218 ^ 0x51CEDD) + v207;
  v223 = ((v206 ^ 0xF9uLL) >> (v208 & 1) >> (v208 & 1 ^ 3)) ^ (32 * (v206 & 7));
  LOBYTE(v208) = ((v206 ^ 0xF9uLL) >> (v208 & 1) >> (v208 & 1 ^ 3)) ^ (32 * (v206 & 7)) ^ 0x35;
  v224 = v24;
  v24[57] = HIBYTE(v209) ^ 0x88;
  v214[108] = v203 ^ 0x50;
  v225 = *(v157 + (v223 ^ 0x93));
  *(v215 + 14) = BYTE2(v206) ^ 0xC6;
  LOBYTE(v209) = (v208 + (v223 ^ 0xF9) - ((2 * (v208 + (v223 ^ 0xF9))) & 0x8F) + 71) ^ v225;
  v224[10] = BYTE1(v206) ^ 0xB8;
  v226 = v4;
  v4[25] = (((v209 ^ 0x69) + 122) ^ ((v209 ^ 0x25) + 54) ^ ((v209 ^ 0xB0) - 95)) + 75;
  v4[49] = BYTE3(v206) ^ 0x95;
  LOBYTE(v209) = BYTE6(v206) ^ 0xCA;
  LOBYTE(v219) = *(v219 + (((BYTE4(v206) ^ 0x81) - 9) ^ 0x7DLL)) + 43;
  v227 = v219 & 0xF ^ 0x72;
  v228 = HIBYTE(v206);
  v224[27] = v219 ^ (2 * ((v219 ^ 0x2A) & (2 * ((v219 ^ 0x2A) & (2 * ((v219 ^ 0x2A) & (2 * ((v219 ^ 0x2A) & (2 * ((v219 ^ 0x2A) & (2 * ((v219 ^ 2) & (2 * v219) & 0x56 ^ v227)) ^ v227)) ^ v227)) ^ v227)) ^ v227)) ^ v227)) ^ 0x83;
  v229 = v222 - 2 * v221;
  v230 = (v206 >> 34) & 0xC0 | (v206 >> 42) & 0x3F;
  LODWORD(v221) = *(v59 + (v230 ^ 0xD4));
  v224[29] = BYTE6(v212);
  LODWORD(v221) = (v230 ^ 0xFFFFFF8D) + (v221 ^ -v221 ^ ((v230 ^ 0xFFFFFF8D) - (v230 ^ 0xFFFFFF8D ^ v221))) + ((((2 * ((v230 ^ 0xFFFFFF8D) & v221)) ^ 0xFFFFFFCF) + 74) ^ (((2 * ((v230 ^ 0xFFFFFF8D) & v221)) ^ 0x10) - 105) ^ (((2 * ((v230 ^ 0xFFFFFF8D) & v221)) ^ 0xFFFFFFDF) + 90)) - 60;
  LOBYTE(v208) = v221 & 0xDD ^ 0x14;
  LOBYTE(v221) = v221 ^ (2 * ((v221 ^ 0x34) & (2 * ((v221 ^ 0x34) & (2 * ((v221 ^ 0x34) & (2 * ((v221 ^ 0x34) & (2 * ((v221 ^ 0x34) & (2 * (v221 & (2 * v221) & 0x6A ^ v208)) ^ v208)) ^ v208)) ^ v208)) ^ v208)) ^ v208));
  v4[68] = v209;
  v224[71] = v228 ^ 0x6B;
  v4[24] = BYTE3(v210) ^ 0x5D;
  v214[34] = (v212 + (~(2 * v212) | 0x75) - 58) ^ 0xC5;
  *(v215 + 22) = BYTE1(v210) ^ 0x36;
  v4[60] = -36 - 79 * (((v221 ^ 0x76) - 50) ^ ((v221 ^ 0xF8) + 68) ^ ((v221 ^ 0x56) - 18));
  v224[2] = BYTE1(v212);
  v224[28] = BYTE5(v212);
  v4[40] = BYTE3(v212);
  v224[60] = BYTE2(v212);
  v231 = v229 >> 40;
  v4[67] = BYTE4(v210) ^ 0x6A;
  v224[59] = BYTE2(v210) ^ 0xDB;
  v224[64] = BYTE4(v212);
  v214[88] = BYTE5(v210) ^ 0x95;
  v224[40] = HIBYTE(v213);
  v232 = (v210 >> 43) & 0xE0 | (v210 >> 51) & 0x1F;
  v224[74] = v210 ^ 0x88;
  v233 = v224;
  LOBYTE(v215) = v232 ^ *(STACK[0x780] + (v232 ^ 0x14));
  v214[44] = HIBYTE(v210) ^ 0x13;
  v234 = HIBYTE(v229);
  v224[39] = BYTE1(v218) ^ 0xCE;
  v217[39] = v218 ^ 0xDD;
  v4[48] = BYTE3(v229);
  v4[78] = BYTE6(v229);
  v235 = v229 >> (v132 & 0x20) >> (v132 & 0x20 ^ 0x20);
  v224[96] = BYTE2(v222);
  v214[20] = v231;
  v224[38] = (v235 - ((2 * v235) & 0xD0) + 104) ^ 0x68;
  v214[90] = -77 * (((v215 ^ 0x54) - 95) ^ ((v215 ^ 0x2E) - 37) ^ ((v215 ^ 0x28) - 35)) + 59;
  *v224 = v234;
  v236 = STACK[0x688];
  *(*STACK[0x688] + 4) = STACK[0x710] + 1;
  v237 = *v236;
  v238 = v214;
  LOBYTE(v231) = v214[18] + 76;
  LOBYTE(v215) = v231 & 0x73 ^ 0xEC;
  LODWORD(v219) = ((v214[86] - ((2 * v214[86]) & 0x58)) << 8) + 305277952;
  LODWORD(v222) = v214[30];
  LOBYTE(v231) = v231 ^ (2 * ((v231 ^ 0x3A) & (2 * ((v231 ^ 0x3A) & (2 * ((v231 ^ 0x3A) & (2 * ((v231 ^ 0x3A) & (2 * ((v231 ^ 0x3A) & (2 * ((v231 ^ 0x3A) & (2 * v231) & 0x76 ^ v215)) ^ v215)) ^ v215)) ^ v215)) ^ v215)) ^ v215)) ^ 0x74;
  v239 = v4[63];
  v240 = v214[26];
  LODWORD(v234) = v217[11];
  v241 = v224[67];
  LODWORD(v210) = *(v237 + 9);
  STACK[0x710] = v237;
  STACK[0x780] = byte_1011581F8;
  LODWORD(v234) = ((v234 - ((2 * v234) & 0x152)) << 16) - 1448542208;
  v242 = 16 * (v241 - ((2 * v241) & 0x84)) + 0x5BC0415BD4F7C420;
  LODWORD(v234) = (v234 ^ 0x5656FF01) & (v219 ^ 0xF0646E01) ^ v234 & 0x1DA90000;
  LOBYTE(v231) = 3 - 21 * byte_1011581F8[v231];
  LOBYTE(v219) = v231 & 0x35 ^ 0x2C;
  v243 = v240 - ((2 * v240) & 0xD4) + 0x7AF6594C4D30DF6ALL;
  v244 = v242 & 0x5880010890C16460 ^ 0xFFD6435BDEFFDFB0 ^ (v242 ^ 0xA43FBEA42B083B90) & ((((v239 - ((2 * v239) & 0xDA)) << 12) - 0xB031FD185893000) ^ 0x53AAA27D34484B90);
  LODWORD(v213) = v217[40];
  LOBYTE(v219) = ((v231 ^ (2 * ((v231 ^ 0x7C) & (2 * ((v231 ^ 0x7C) & (2 * ((v231 ^ 0x7C) & (2 * ((v231 ^ 0x7C) & (2 * ((v231 ^ 0x7C) & (2 * (v231 & (2 * v231) & 0x7A ^ v219)) ^ v219)) ^ v219)) ^ v219)) ^ v219)) ^ v219)) ^ 0xF8) >> 1) | (v231 << 7);
  v245 = (v234 ^ 0x400BDFE) & ((LODWORD(STACK[0x790]) - 1944991790) ^ (((((STACK[0x720] - LODWORD(STACK[0x790])) | (LODWORD(STACK[0x790]) - STACK[0x720])) & 0x80000000) == 0) | 0x4FE62F2A) ^ (v210 - ((2 * v210) & 0x42) + 2051794209) & 0x6092 ^ ((v210 - ((2 * v210) & 0x42) + 2051794209) ^ 0x85140A4C) & ((v243 << 24) ^ 0x135D0F6D) ^ 0xCF4F8AA) ^ v234 & 0x5B04700;
  v246 = (v245 << 36) & 0x41FCF80000000000 ^ 0xBFFFAFF6B11FB6C1 ^ ((v245 << 36) ^ 0x126B11FB7FFLL) & ((v243 >> 4) ^ 0xB9AC626275CCBB37);
  v247 = ((v226[61] - 2 * (v226[61] & 0x7F)) << 24) - 0x48CF6D1581000000;
  v248 = v4[9];
  v249 = ((v233[4] - ((2 * v233[4]) & 0xF0u) - 247413852) << 32) - 0x2C00000000;
  STACK[0x6D0] = &byte_1011581F8[787];
  STACK[0x6E0] = &unk_1011581F0;
  LOBYTE(v243) = byte_1011581F8[((((v222 >> 7) | (2 * v222)) - ((4 * v222) & 0x5C) - 82) ^ 0xCLL) + 787];
  v250 = (v246 | v244) ^ 0x199ECA8B61D25F8DLL;
  LODWORD(v246) = v217[33];
  v251 = v217;
  *&v204 = __ROR8__(v250, 36);
  v252 = v233[23] - ((2 * v233[23]) & 0x9C) + 0x2398C2E48A7D9F4ELL;
  v253 = (v252 ^ 0x8C23390850006021) & ((((((v243 ^ 0x90) - 61) ^ ((v243 ^ 0xE3) - 78) ^ ((v243 ^ 0xF6) - 91)) - 58) << 8) ^ 0x8F23FB0C5A5D0C2BLL) ^ v252 & 0x9800008000F3D4;
  v254 = v248 - ((2 * v248) & 0x74) + 0x194D02FC01F88B3ALL;
  v255 = v213 - ((2 * v213) & 0x11111111) + 4408250;
  v256 = v238;
  LODWORD(v213) = v238[120] - ((2 * v238[120]) & 0xC0);
  v257 = v238;
  v258 = (v253 ^ 0x704404F325A26000) & ((((v226[62] - ((2 * v226[62]) & 0x34)) << 16) - 0x18AD228C54E60000) ^ 0x7A347F98BFC17C4ALL) ^ v253 & 0x2995904CA0483B5;
  v259 = ((v246 - ((2 * v246) & 0x14) + 9362204) << 40) - 0x120000000000;
  v260 = (v204 & 0x800000000000 | 0xB61D25F8D199ECA8) ^ v204 & 0xFFFF7FFFFFFFFFFFLL ^ (v219 << 48);
  LODWORD(v180) = (*(v237 + 8) ^ 0xABFFF77C) - 550114056 + ((2 * *(v237 + 8)) & 0xF8);
  v261 = ((v238[71] - ((2 * v238[71]) & 0x90)) << 24) - 0x74D75607B8000000;
  v262 = ((v238[96] - ((2 * v238[96]) & 0x8Au) + 1781903993) << 32) - 0x3400000000;
  v263 = ((((v233[22] - ((2 * v233[22]) & 0xFF0F)) << 16) + 0x8C9345602870000) ^ 0x74D0BAB65A829E1FLL) & (v261 ^ 0x74D75607B7FFDF1FLL) ^ v261 & 0x8320211FA7000000;
  v264 = (v263 ^ 0xC65007A7FA61E0) & (v254 & 0x1800000D19 ^ 0xF7AB56085187F40 ^ ((((v238[113] - ((2 * v238[113]) & 0xA8)) << 8) - 0x177A31D8F759AC00) ^ 0x23FC88E0039366E6) & (v254 ^ 0xE6B2FD03FE0774D5)) ^ v263 & 0x3BFC0C4071D29A01;
  v265 = (v258 ^ 0x6000041021200010) & (v249 ^ 0x3F6549D135FD7231) ^ v258 & 0x31DA7556CA028DCELL;
  v266 = v265 & 0x4FDF2452D2B37AAELL ^ 0xFFFFFBEFFFFFFF7FLL ^ (v265 ^ 0x2000041000000000) & (v247 ^ 0x7104947524C8551);
  v267 = v260 + 0x201E9E29980CF57DLL - 2 * (v260 & 0x201E9E29980CF57FLL ^ v204 & 2);
  LODWORD(v265) = v257[93] - ((2 * v257[93]) & 0xF4);
  v268 = ((v255 << 40) - 0x320000000000) ^ 0xD20F8592B622B9D1 ^ (v266 - ((2 * v266) & 0x22981B256C4573A2) - 0x6EB3F26D49DD462FLL);
  v269 = v226[56];
  v270 = ((v180 ^ 0x61B1C511) + 155) ^ v180 ^ ((v180 ^ 0xC05B255B) + 209) ^ ((v180 ^ 0xC0) + 76) ^ ((v180 ^ 0xFE) + 118);
  v271 = (((v251[13] - ((2 * v251[13]) & 0xA2u) + 10589) << 48) - 0xC000000000000) ^ 0x271C9AB46ED9704CLL ^ (v268 - ((2 * v268) & 0x1C9B3568DDB2E098) + 0xE4D9AB46ED9704CLL);
  v272 = (v264 ^ 0xFF3BFFFFDE2DDEBFLL ^ -(v264 ^ 0xFF3BFFFFDE2DDEBFLL) ^ ((v262 ^ 0x6A35B24500000000) - (v264 & 0xA145B3022B50D107 ^ 0xFFBBFFFFDEAFFEFFLL ^ (v264 ^ 0xC4000000822040) & (v262 ^ 0x348FFEB8D4AF2EF8)))) + (v262 ^ 0x6A35B24500000000);
  v273 = v259 ^ 0xD5C66DE9AEF34A3ELL ^ (v272 - ((2 * v272) & 0xB63ACFD35DE6947CLL) + 0x5B1D67E9AEF34A3ELL);
  v274 = v273 - ((2 * v273) & 0xB7DFB9CF6C18E59ALL) + 0x5BEFDCE7B60C72CDLL;
  v275 = (((v257[53] - ((2 * v257[53]) & 0x1A0u) + 19966) << 48) - 0x2E000000000000) ^ 0x163FDCE7B60C72CDLL ^ v274;
  v276 = ((v233[63] - ((2 * v233[63]) & 0x108)) << 24) - 0x5E8678C97C000000;
  v277 = v271 - ((2 * v271) & 0x5FD937DE29840BAALL);
  LODWORD(v180) = v257[1];
  v278 = ((v233[66] - ((2 * v233[66]) & 0xC6u) + 104568) << 40) - 0x150000000000;
  LODWORD(v228) = v226[17];
  v279 = (v276 ^ 0x5E8678C97BFF64B9) & ((((v226[47] - ((2 * v226[47]) & 0xA4)) << 16) - 0x66CB88A5ECAE0000) ^ 0xC4748D1C7D8B64B9) ^ v276 & 0xA039053191000000;
  v280 = v279 & 0xDAA701ECF14924B8 ^ 0xFD79FF77EEFFFEFFLL ^ (v279 ^ 0x286008911269B46) & ((v269 - 2 * (v269 & 3) - 0x101E2A8B055838FDLL) & 0x10000020C7ABLL ^ 0x8C302941615A2510 ^ ((v269 - 2 * (v269 & 3) - 0x101E2A8B055838FDLL) ^ 0x101E2A8B05583854) & ((((v233[82] - ((2 * v233[82]) & 0x12)) << 8) + 0x4A465937E9DF0900) ^ 0xE32E9E6586133154));
  v281 = v275 + 0x14980B939E69781DLL - 2 * (v275 & 0x14980B939E69781FLL ^ v274 & 2);
  v282 = (~(v279 & 0xF14924B8 ^ 0xEEFFFEFF ^ (v279 ^ 0x11269B46) & ((v269 - 2 * (v269 & 3) - 89667837) & 0x20C7AB ^ 0x615A2510 ^ ((v269 - 2 * (v269 & 3) - 89667837) ^ 0x5583854) & ((((v233[82] - ((2 * v233[82]) & 0x12)) << 8) - 371259136) ^ 0x86133154))) | 0xFFFFFFFF8DBA0DC7) & ((((v233[56] - ((2 * v233[56]) & 0xD6u) + 717216157) << 32) - 0x3200000000) ^ 0x56C168677245F23DLL) | (v279 & 0xF14924B8 ^ 0xEEFFFEFF ^ (v279 ^ 0x11269B46) & ((v269 - 2 * (v269 & 3) - 89667837) & 0x20C7AB ^ 0x615A2510 ^ ((v269 - 2 * (v269 & 3) - 89667837) ^ 0x5583854) & ((((v233[82] - ((2 * v233[82]) & 0x12)) << 8) - 371259136) ^ 0x86133154))) & 0x8DBA0DC0;
  LODWORD(v272) = v233[41] - ((2 * v233[41]) & 0x5555);
  v283 = (((v226[38] >> 1) | (v226[38] << 7)) - (v226[38] & 0x9A) - 51) ^ 0x9ALL;
  STACK[0x720] = &byte_1011581F8[527];
  LODWORD(v283) = byte_1011581F8[v283 + 527];
  LODWORD(v276) = v283 - 39;
  LODWORD(v283) = ((v283 + 89) & 0xFFFFFF9A | 4) ^ (v283 - 39) & 0x38;
  LODWORD(v283) = v276 ^ (2 * ((v276 ^ 0x18) & (2 * ((v276 ^ 0x18) & (2 * ((v276 ^ 0x18) & (2 * ((v276 ^ 0x18) & (2 * ((v276 ^ 0x18) & (2 * v283) ^ v283)) ^ v283)) ^ v283)) ^ v283)) ^ v283));
  v284 = (v282 ^ 0x300424181B20442) & (v269 & 7 ^ 0x7B5C6345B3F6C466) ^ v282 & 0x84A39CBA4C093B99;
  LODWORD(v264) = v233[49] - ((2 * v233[49]) & 0x9999);
  v285 = v256[9] - ((2 * v256[9]) & 0x1A);
  v286 = (v284 ^ 0x80810C9208080900) & (v278 ^ 0x4BDC73D22BB9CB2ALL);
  v287 = *(v256 + 15);
  STACK[0x6F0] = v287;
  v288 = ((v213 + 143) << 56) - 0x2F00000000000000;
  v289 = v277 + 0x6FEC9BEF14C205D5;
  v290 = ((v228 - ((2 * v228) & 0x164) + 3111403) << 40) - 0x390000000000;
  v291 = STACK[0x6D0];
  LOBYTE(v228) = *(STACK[0x6D0] + ((((v180 >> 7) | (2 * v180)) - ((4 * v180) & 0xD4) + 106) ^ 0xC8));
  v292 = (v286 ^ v284 & 0xB5BBEF2DD44634D5) & 0xB64C213930F8CFE5 ^ 0x7FFFFFDFFFFFFF7FLL ^ (v286 ^ v284 & 0xB5BBEF2DD44634D5 ^ 0x80810C0004000000) & ((((v264 + 249) << 56) - 0x2D00000000000000) ^ 0x85B3DEC6CF07301ALL);
  v293 = v289 ^ (v287 | (v270 << 56));
  LODWORD(v283) = (v283 ^ 0xAD ^ (((16 * v283) ^ 0x20) - ((32 * v283) & 0xFFFFFFBF) + 86)) - 17;
  v294 = (v292 - ((2 * v292) & 0x2B40EB7BE6CF9024) + 0x15A075BDF367C812) ^ (((v272 + 57031) << 48) - 0x1D000000000000);
  v295 = v226[6] - ((2 * v226[6]) & 0xD2) - 0x76E43934E5A6C197;
  v296 = ((((v228 ^ 0xA3) + 91) ^ ((v228 ^ 0x6F) - 105) ^ ((v228 ^ 0x49) - 79)) + 33) << (v254 & 0x10 ^ 0x10) << (v254 & 0x10);
  v297 = (v296 - ((2 * v296) & 0x64019C0014) + 0x61DEE32B7CE0D0ALL) ^ (v295 & 0x2808300180481 | 0x2080100000260000) ^ ((((v283 - ((2 * v283) & 0x38)) << 8) - 0x7D07D660B40BE400) ^ 0x5AD16EA73535C77ELL) & (v295 ^ 0x76E43934E5A6C116);
  v298 = v297 & 0xB27545376EF36B93 ^ 0xFFBEBBC9D93DD67DLL ^ (v297 ^ 0x149C676360C0408) & (((v285 << 24) + 0x52CA7F660D000000) ^ 0x1F40C5AE9C0C946CLL);
  v299 = v293 ^ (((v265 + 149) << 56) - 0x1B00000000000000) ^ v281;
  v300 = v298 - ((2 * v298) & 0x5788A9F123F98212) - 0x143BAB076E033EF7;
  v301 = (((v226[69] - ((2 * v226[69]) & 0x166u) + 1931150315) << 32) - 0x3800000000) ^ 0x98DF574B91FCC109 ^ v300;
  v302 = v293 ^ 0xDBA85025EB36289;
  v303 = v293 ^ 0xF2457AFDA14C9D76;
  v304 = v290 ^ (((v224[61] - ((2 * v224[61]) & 0x4Cu) + 202) << 56) - 0x2400000000000000) ^ (((v226[77] - ((2 * v226[77]) & 0xAu) + 9796) << 48) - 0x3F000000000000) ^ 0x15192B2107F97119 ^ (v301 - 2 * (v301 & 0x3A65992107F97139 ^ v300 & 0x20) - 0x459A66DEF8068EE7);
  v305 = v267 ^ v288 ^ v304;
  v306 = v305 ^ 0x74C2ACBDE4D69E98;
  v307 = (v299 ^ 0xF90F066E93825285) & (v294 ^ 0x80663124C18BA217);
  v308 = v303 & 0x400000000000;
  v309 = v304 + (v294 ^ 0xB4BA03B0BD51C9F2) + 2 * (v304 & (v294 ^ 0xB4BA03B0BD51C9F2)) - 4 * (v304 & (v294 ^ 0xB4BA03B0BD51C9F2));
  v310 = v309 & (v294 ^ 0x7F99CEDB3E745DE8);
  v299 ^= 0x6F0F9916C7DAD7AuLL;
  v311 = v299 & (((((v303 & 0xD1B2051AA4F377EFLL) - (v303 & 0xD1B2051AA4F377EFLL ^ 0xD1B2051AA4F377EFLL)) ^ 0xFFFFFFFFFFFFFFFELL) + (v303 & 0xD1B2051AA4F377EFLL)) | v302 & 0x2E4DFAE55B0C8810);
  v312 = v310 + v299;
  v313 = v309 ^ (v305 ^ 0xAAF210BECAD6B235) & v303;
  v314 = v310 & v299;
  v315 = v305 ^ 0x550DEF4135294DCALL;
  v316 = v306 ^ v311;
  if ((v306 & 0xD7DF9EF57BA2D967) != 0)
  {
    v317 = v315 ^ v309;
  }

  else
  {
    v317 = ~v309;
  }

  v318 = v303 & 0xFFFFBFFFFFFFFFFFLL;
  v319 = v317 & v315;
  v320 = v312 - 2 * v314;
  if ((v307 & v308) != 0)
  {
    v321 = -v308;
  }

  else
  {
    v321 = v308;
  }

  v322 = (v321 + v307) ^ v318;
  v323 = v313 ^ v316 ^ 0x42E5959431EC1482;
  v324 = v323 + 0x583D6D6B68B62699;
  v325 = 0xA7C292949749D967;
  if (v323 < 0xA7C292949749D967)
  {
    v324 = v313 ^ v316 ^ 0x42E5959431EC1482;
  }

  v326 = v323 ^ (v323 >> 19);
  if (v323 < 0xA7C292949749D967)
  {
    v325 = 0;
  }

  if (!v324)
  {
    v323 = v325;
  }

  v327 = v316 ^ v322 ^ 0x39E6982840B67F3FLL;
  v328 = v313 ^ 0x8717DFE2A3B1E3F2;
  v329 = v320 ^ 0x6E807D10291F7139;
  v330 = __ROR8__(((v326 << 40) | ((v323 & 0x7FFFF) << 21)) ^ (v326 >> 24) ^ 0xB5E26E41B184B2E9, 40);
  v331 = v330 & 0x800000000000000;
  v332 = v294 ^ v320 ^ v319 ^ 0xC6E3B5F12F4E2065;
  v333 = v328 << 57;
  v334 = v316 ^ v322 ^ 0x39E6982840B67F3ELL ^ ((v316 ^ v322) >> 61);
  v335 = v330 & 0xF7FFFFFFFFFFFFFFLL;
  v336 = ((v328 >> 7) & 0x4BFA05081859FLL ^ v328 & 0xDE04BFA05081859FLL | (v328 >> 7) & 0x1FB405FAF7E7A60) ^ v328 & 0x21FB405FAF7E7A60;
  if ((v330 & 0x800000000000000 & (v323 << 36)) != 0)
  {
    v331 = -v331;
  }

  v337 = v331 + (v323 << 36);
  v338 = v336 | v333;
  v339 = v329 ^ __ROR8__(v329, 1) ^ (v329 >> 6) ^ (v329 << 58);
  v340 = (((v327 >> 39) ^ (8 * v327)) + v334 - 2 * (((v327 >> 39) ^ (8 * v327)) & v334)) ^ (v327 << 25);
  if (v280 >= 8)
  {
    v341 = ~(v333 ^ v336);
  }

  else
  {
    v341 = v328 << 57;
  }

  v342 = v341 & v336;
  v343 = v332 ^ (v332 << 47) ^ ((v332 >> 10) ^ (v332 >> 17) | (v332 << 54));
  v344 = v339 ^ v340;
  v345 = v338 ^ __ROR8__(v328, 41) ^ v342;
  v346 = v345 ^ v343;
  v347 = v345 ^ (v323 >> 28) ^ v335 ^ v337;
  v348 = v347 ^ 0x41B184B2E9B5E26ELL;
  v349 = v347 ^ 0x41B184B2E9B5E26ELL ^ v339 & ~v340;
  v350 = v343 & ~(v339 ^ v340);
  v351 = (v347 ^ 0xBE4E7B4D164A1D91) & v340 ^ v345 ^ v343;
  v352 = v351 & 0x4000000000000;
  v353 = ((v349 - (v349 ^ 0x56AAE6BF024184FFLL)) ^ 0xFFFFFFFFFFFFFFFELL) + v349;
  v354 = v351 + 0x62C1F2A9E89E4C79 - ((2 * v351) & 0xC583E553D13C98F2);
  v355 = v353 - (v351 & 0x4000000000000);
  v356 = v351 & 0xFFFBFFFFFFFFFFFFLL;
  v357 = v340 ^ 0xE6CB410EAF9D375FLL ^ v350 ^ v349;
  v358 = v353 ^ v352;
  if ((v353 & v352) != 0)
  {
    v358 = v355;
  }

  v359 = v358 ^ v356;
  v360 = 0x80 - 21 * *(STACK[0x780] + (((v357 >> 61) + 7) ^ 7));
  v361 = v360 & 0xA8 | 0x54;
  v362 = v360 ^ (2 * (v360 & (2 * (v360 & (2 * (v360 & (2 * (v360 & (2 * (v360 & (2 * v361) ^ v361)) ^ v361)) ^ v361)) ^ v361)) ^ v361));
  v363 = v362;
  v364 = v345 & ~v343 ^ v344;
  v365 = v359 ^ (v359 >> 19);
  v366 = __ROR8__(((v359 & 0x7FFFF) << 17) ^ __ROR8__(v365, 28) ^ 0x159F7535A39476BDLL, 36);
  v367 = v343 ^ 0x3378C4AC0693E070 ^ v364 ^ v348 & ~v346;
  v368 = (v366 ^ 0x5A39476BD159F753) & 0x51B3C2BC7D0ABCF4 ^ (v359 >> 28) & 0xC7D0ABCF4 | (v366 ^ 0x5A39476BD159F753) & 0xAE4C3D4382F5430BLL ^ (v359 >> 28) & 0x382F5430BLL;
  *(&v369 + 1) = v364;
  *&v369 = v364 ^ 0x15C7857573502C40;
  v370 = __ROR8__(((((v357 & 0x8000000000000000) + 8 * v357) >> 18) | (v357 << 49)) ^ __ROR8__(v357 & 0x7FFFFFFFFFFFFFFFLL ^ (((v362 ^ 0xE5) >> 1) | ((v362 ^ 0xE5) << 7)), 18) ^ 0x5E2F54080B7B666DLL, 46) ^ __ROR8__(v357, 39);
  v371 = (v369 >> 6) ^ __ROR8__((((v364 & 1) << 21) | 0x1DF27EF27E0776A2) ^ __ROR8__(v364 ^ 0x15C7857573502C40 ^ ((v364 ^ 0x15C7857573502C40) >> 1), 42), 22) ^ 0x4DFAA59A504EB145 ^ v370;
  v372 = v354 ^ (v354 << 23) ^ ((v354 >> 7) ^ (v354 >> 41) | (v354 << 57));
  v373 = v367 ^ (v367 << 47) ^ (v367 >> 10) ^ ((v367 >> 17) | (v367 << 54));
  v374 = v372 ^ (v359 << 36) ^ v368;
  v375 = (__ROR8__(__ROR8__(v371, 16) ^ 0x5ED8C14E98550F33, 48) ^ 0x3EB167AAF0CCA127) & v373;
  v376 = v372 ^ v373;
  v377 = v372 & ~v373;
  v378 = v374 & ~v376;
  v379 = (v370 ^ 0x50202DED99B578BDLL) & ~v374;
  v380 = v374 ^ v371 & (v370 ^ 0xAFDFD212664A8742);
  v381 = v379 ^ v376;
  v382 = v363 == 229;
  v383 = -134217729;
  if (!v382)
  {
    v383 = v377 ^ 0x8000000;
  }

  v384 = v371 & 0x21E6FE48E603AC69;
  v385 = v370 ^ v380 ^ 0xBE8FEF3E75D0BC3FLL ^ v375;
  v386 = (v377 ^ v371) & 0xDE1901B719FC5396;
  v387 = ((v377 | 0x21E6FE48E603AC69) - (v383 & v377 ^ (v377 & 0x8000000 | 0x21E6FE48E603AC69))) ^ v384;
  v388 = v378 ^ v373;
  v389 = v387 | v386;
  v390 = v389 ^ 0xE7E200F443AAFCDFLL;
  v391 = __ROR8__(v388, 17) ^ 0x6BFAACEC1A2536B7;
  v392 = (v381 ^ -v381 ^ ((v380 ^ 0x7D752DD7DCC251B6) - (v380 ^ 0x7D752DD7DCC251B6 ^ v381))) + (v380 ^ 0x7D752DD7DCC251B6);
  v393 = v392 >> 19;
  LOBYTE(v384) = (v392 >> 19) & 6;
  v394 = (v389 ^ 0xE7E200F443AAFCDFLL) << 58;
  v395 = (v389 ^ 0xE7E200F443AAFCDFLL) >> v384;
  v396 = v392 ^ (v392 << 36) ^ (v392 >> 19) ^ ((v392 >> 28) | (v392 << 45));
  v397 = __ROR8__(v389 ^ 0xE7E200F443AAFCDFLL, 62) & 0xFFFFFFFFFFFFFFFBLL;
  v398 = v389 ^ __ROR8__(v391, 47) ^ 0x81A83E06D9018645;
  v399 = __ROR8__(((v385 & 0x7FFFFFFFFFLL) << 20) ^ __ROR8__(v385 ^ __ROR8__(v385, 61) ^ ((v385 >> 39) | 0x8000000000000000), 5) ^ 0x361AB157CD78B93CLL, 59);
  v400 = v381 ^ 0x66173F92B629299ALL ^ ((v381 ^ 0x66173F92B629299ALL) << 23) ^ __ROR8__(v381 ^ 0x66173F92B629299ALL, 7) ^ (((v381 ^ 0x66173F92B629299AuLL) >> 41) | 0x8000000000000000) ^ v396;
  v401 = v398 ^ (v398 << 47) ^ ((v398 >> 10) ^ (v398 >> 17) | (v398 << 54));
  v402 = v401 ^ ~v396;
  v403 = v394 ^ (v390 << 63) ^ __ROR8__(v397 ^ __ROR8__(v390, 61) ^ 0xC94FCCC5B116AC03, 3) ^ (v395 >> (v384 ^ 6u)) ^ v399;
  v404 = (v403 ^ 0x3A7FD3611935F206) & (v399 ^ 0xBCA9D50650E8D879);
  v405 = v400 ^ v402;
  v406 = v400 ^ v402 ^ 0x7FFFFFFFFFFFFFFFLL;
  v407 = v406 + v402 - 2 * (v406 & v402);
  v408 = v406 & ~v401 ^ v403 ^ 0x3A7FD3611935F206;
  v409 = v390 >> 62;
  v410 = (v403 ^ 0xC5802C9EE6CA0DF9) & v401;
  v400 ^= 0x8000000000000000;
  v411 = (v405 ^ 0x8000000000000000) & v400;
  v412 = v404 ^ v400;
  v413 = v408 ^ 0x32237A0B9C0468F5;
  v414 = v407 & (v399 ^ 0x43562AF9AF172786) ^ v406;
  v415 = v399 ^ v410;
  v416 = v412 ^ 0xC5AB08FD33C1B5A7 ^ v414;
  v417 = v415 ^ v412 ^ 0x72DAEA7989730024;
  v418 = v417 << (v322 & 3) << (v322 & 3 ^ 3);
  v419 = (v408 ^ 0x32237A0B9C0468F5uLL) >> 1;
  v420 = v401 ^ 0xCC98C5A695FE0D08 ^ v411 ^ v408;
  v421 = v408 ^ 0x32237A0B9C0468F5 ^ -(v408 ^ 0x32237A0B9C0468F5) ^ (v419 - (v419 ^ v408 ^ 0x32237A0B9C0468F5));
  v422 = v414 ^ 0xA0B866C79876C7E4;
  v423 = v418 ^ v417 ^ ((v417 >> 61) ^ (v417 >> 39) | (v417 << 25));
  v424 = v422 ^ __ROR8__(v422, 7);
  v425 = (v422 >> 41) & 0x20000;
  v426 = ((v413 >> 6) | (v413 << 63)) ^ (v413 << 58) ^ ((v421 ^ v419) + 2 * (v421 & v419));
  v427 = ((v420 ^ (v420 << 54) ^ -(v420 ^ (v420 << 54)) ^ ((v420 >> 10) - (v420 ^ (v420 << 54) ^ (v420 >> 10)))) + (v420 >> 10)) ^ __ROR8__(v420, 17);
  v428 = v427 & ~(v426 ^ v423);
  if ((v425 & v424) != 0)
  {
    v429 = -v425;
  }

  else
  {
    v429 = (v422 >> 41) & 0x20000;
  }

  v430 = (v429 + v424) ^ __ROR8__(v422, 41) & 0xFFFFFFFFFFFDFFFFLL;
  v431 = v430 ^ v427;
  v432 = v416 ^ __ROR8__(v416, 19) ^ (v416 >> 28) ^ (v416 << 36) ^ v430;
  v433 = v423 & 0xFFFFFFFFFDFFFFFFLL;
  v434 = v432 ^ v426 & ~v423;
  v435 = v430 & ~v427 ^ v426 ^ v423;
  v436 = v432 & ~v431;
  v437 = v423 & ~v432;
  if ((v428 & v423 & 0x2000000) != 0)
  {
    v438 = -(v423 & 0x2000000);
  }

  else
  {
    v438 = v423 & 0x2000000;
  }

  v439 = v436 ^ v427;
  v440 = v434 ^ v433 ^ (v438 + v428);
  v441 = v437 + v431 - 2 * (v437 & v431);
  v442 = v434 ^ 0xE78A8F8F26E90B2BLL ^ v441;
  v443 = v440 ^ 0x68ABEAE5737B7693;
  v444 = 23 * *(STACK[0x6E0] + ((121 * ((v440 ^ 0x68ABEAE5737B7693) >> 61)) ^ 0x66) + 269) - 55;
  v445 = ((v444 ^ (2 * ((v444 ^ 0x36) & (2 * ((v444 ^ 0x36) & (2 * ((v444 ^ 0x36) & (2 * ((v444 ^ 0x36) & (2 * ((v444 ^ 0x36) & (2 * ((v444 ^ 0x36) & (2 * v444) ^ (v444 | 0x58))) ^ (v444 | 0x58))) ^ (v444 | 0x58))) ^ (v444 | 0x58))) ^ (v444 | 0x58))) ^ (v444 | 0x58))) ^ 0x1E) + 99);
  v446 = v445 - (v440 ^ 0x68ABEAE5737B7693 ^ v445);
  v447 = v446 ^ v440 & 0x800;
  v448 = __ROR8__(v439 ^ v435, 40) ^ 0xF8EDDEACF837D2ACLL;
  if ((v446 & v440 & 0x800) != 0)
  {
    v447 = v446 - (v440 & 0x800);
  }

  v449 = v447 ^ v443 & 0xFFFFFFFFFFFFF7FFLL;
  v382 = v365 >> 28 == 0;
  v450 = v449 & 0xAC995D4F5B467655 ^ 0xAC991D4F5B467655;
  if (v382)
  {
    v450 = 0;
  }

  v451 = (v450 | v449 ^ 0xFFFFBFFFFFFFFFFFLL) ^ (v449 | 0xFFFFBFFFFFFFFFFFLL);
  v452 = 8 * v443;
  v453 = __ROR8__(v448, 24) ^ 0x2A35C1F81A6C3BE6;
  v454 = v449 & 0x400000000000;
  if ((v454 & -(v440 ^ 0x68ABEAE5737B7693)) != 0)
  {
    v455 = -2 * v454;
  }

  else
  {
    v455 = 0;
  }

  v456 = v455 + v454 - v443;
  v457 = v443 >> 39;
  v458 = v456 + v445 + v451 - 2 * (v456 & v451);
  v459 = v458 & v457;
  v460 = v458 | v457;
  v461 = (v441 ^ 0xF14770720A54D309) << v409 << (v409 ^ 0x17u);
  v462 = v453 ^ __ROR8__(v453, 10) ^ (v453 >> 17) ^ (v453 << 47);
  v463 = (v441 ^ 0xF14770720A54D309) >> 41;
  v464 = v452 ^ (v440 << 25) ^ v460 ^ v459;
  v465 = v464 ^ 0xCAE6F6ED26000000;
  v466 = v441 ^ 0xF14770720A54D309 ^ __ROR8__(v441 ^ 0xF14770720A54D309, 7) ^ v463 ^ v461;
  v467 = v435 ^ 0xA2A16E7D4060C2ACLL ^ (v435 << 58) ^ ((v435 ^ 0xA2A16E7D4060C2ACLL) >> 1) ^ (((v435 ^ 0xA2A16E7D4060C2ACLL) >> 6) | (v435 << 63)) ^ v464 ^ 0xCAE6F6ED26000000;
  v468 = v467 ^ 0xB000000000000000;
  v469 = v442 ^ __ROR8__(v442, 19) ^ (v442 << 36) ^ (v442 >> 28) ^ v466;
  v470 = (v467 ^ 0xB000000000000000) & (v464 ^ 0x35190912D9FFFFFFLL) ^ v469;
  v471 = v462 ^ v466;
  v472 = v465 & ~v469 ^ v462 ^ v466;
  v473 = (v392 >> 19) & 0x3F;
  *(&v474 + 1) = (v470 - ((2 * v470) & 0x60) + 48) ^ v472 ^ 0xAE8F4C30;
  *&v474 = (v470 + 0x132965E7AE8F4C30 - ((2 * v470) & 0x2652CBCF5D1E9860)) ^ v472 ^ 0x132965E7AE8F4C30;
  v475 = v466 & ~v462;
  v476 = ((v467 ^ 0x4FFFFFFFFFFFFFFFLL) & v462 ^ v465) & v469 ^ ((v467 ^ 0x4FFFFFFFFFFFFFFFLL) & v462 ^ v465 | v470);
  v477 = __ROR8__((v474 >> 9) ^ 0xA67E419C5E9DF7F9, 55);
  v478 = v469 & ~v471;
  v479 = v332 & 0x1C;
  v480 = v477 ^ 0x4A3450DC05546E6BLL;
  v481 = v476 & 0x571B3575A2341BFALL;
  v482 = v478 ^ v462;
  v483 = v476 & 0xA8E4CA8A5DCBE405;
  v484 = v468 ^ v475;
  v382 = (v476 & 0x1000000000000) == 0;
  v485 = 0x1000000000000;
  if (!v382)
  {
    v485 = 0xFFFF000000000000;
  }

  v486 = (v485 + v481) ^ v483;
  v487 = v480 >> v479 >> (v479 ^ 0x1Cu);
  v488 = v484 ^ 0xBFACA330503123F3;
  v489 = (v484 ^ 0xBFACA330503123F3) >> 1;
  v490 = (v484 ^ 0xBFACA330503123F3) << v393 << (v473 ^ 0x3Fu);
  v491 = v482 ^ v484;
  *(&v492 + 1) = v477 ^ 0x4A3450DC05546E6BLL;
  *&v492 = v477;
  v493 = v477 ^ (v480 << 36) ^ (v492 >> 19) ^ v487;
  if ((v490 & 0x4000000000000 & v489) != 0)
  {
    v494 = -(v490 & 0x4000000000000);
  }

  else
  {
    v494 = v490 & 0x4000000000000;
  }

  *(&v496 + 1) = v486 ^ 0x171A3575A2341BFALL;
  *&v496 = v486 ^ 0x4000000000000000;
  v495 = v496 >> 61;
  *(&v496 + 1) = v491 ^ 0x379;
  *&v496 = v491 ^ 0xDC2F246663682800;
  v497 = (((v493 ^ 0x4A34599A8F4FEEC1) % 0x2D90DBF07FEFD3D8) ^ 0x186058808214158) + (((v493 ^ 0x4A34599A8F4FEEC1) % 0x2D90DBF07FEFD3D8) ^ 0xEEEFF5FDC6FFFFEFLL) + ((2 * ((v493 ^ 0x4A34599A8F4FEEC1) % 0x2D90DBF07FEFD3D8)) & 0x5DDFEBFB8DFFFFDELL) - ((2 * ((v493 ^ 0x4A34599A8F4FEEC1) % 0x2D90DBF07FEFD3D8)) & 0x7CF3F4EFEFBD7D4ELL) + (((v493 ^ 0x93CB7774063B307BLL) + 0x2CD4FBF9B925E663) ^ ((v493 ^ 0xBE509F1DD32E41CALL) + 0x14F13906C3097D4) ^ ((v493 ^ 0x67AFB1F35A5A9F70) - 0x274FC2811ABBB696)) + 0x1A5E2F63008D85E0;
  v498 = v488 ^ __ROR8__(v488, 6) ^ v490 & 0xFFFBFFFFFFFFFFFFLL ^ (v494 + v489);
  v499 = v486 ^ __ROR8__(v486, 39) ^ v495;
  v500 = *(v291 + (((2 * (v497 & 0x7F)) | (v497 >> 7) & 1) ^ 0xA2));
  v501 = v491 ^ 0x3CD7D107E9838460;
  v502 = v491 >> 17;
  v503 = ((v496 >> 10) - ((2 * (v496 >> 10)) & 0xC1F1EAC315D75E32) - 0x1F070A9E751450E7) ^ v501;
  v504 = (v493 ^ 0x4A34599A8F4FEEC1) >> (v463 & 0x20) >> (v463 & 0x20 ^ 0x20);
  v257[86] = BYTE1(v493) ^ 0xEE;
  v505 = STACK[0x710];
  *(v505 + 9) = (((v500 ^ 0xD9) + 49) ^ ((v500 ^ 0xAF) + 71) ^ ((v500 ^ 0xF3) + 27)) + 49;
  v506 = v503 & 0xF2844A989CC6635 ^ v502 & 0x44A989CC6635;
  v507 = *(v291 + (((v493 >> 15) & 0xFE | (v493 >> 23) & 1) ^ 0x3C));
  v508 = (v506 ^ 0xFDF7BB7E7F33DBCBLL) & (v502 & 0x3B56763399CALL ^ 0xDDF63B2FAB224BF7 ^ v503 & 0xF0D7BB56763399CALL);
  v257[26] = BYTE3(v493) ^ 0x8F;
  v509 = STACK[0x680];
  v509[11] = (((v507 ^ 0xA3) + 91) ^ ((v507 ^ 0xCA) + 52) ^ ((v507 ^ 0xEC) + 22)) + 33;
  LODWORD(v502) = ((4 * ((v504 >> 7) & 1)) | (8 * v504) | (v504 >> 5) & 3) ^ 0x2E;
  LOBYTE(v502) = *(v291 + (((v502 >> 2) | (v502 << 6)) ^ 0x29));
  v257[18] = BYTE6(v493) ^ 0x34;
  v510 = STACK[0x678];
  v510[23] = v499 ^ 0x90;
  v257[120] = HIBYTE(v493) ^ 0x4A;
  v226[61] = BYTE3(v499) ^ 0x56;
  v226[62] = BYTE2(v499) ^ 0x9A;
  v257[30] = BYTE1(v499) ^ 0x2F;
  v510[67] = (((v502 ^ 0x64) + 56) ^ ((v502 ^ 0xF3) - 95) ^ ((v502 ^ 0x8C) - 32)) + ((((2 * v502) & 0x3C ^ 0x88) + 69) ^ (((2 * v502) & 0x3C ^ 0xC5) + 10) ^ (((2 * v502) & 0x3C ^ 0x45) - 118)) - 14;
  v226[63] = BYTE5(v493) ^ 0x59;
  v511 = STACK[0x720];
  LOBYTE(v502) = *(STACK[0x720] + (((v499 >> 25) & 0x80 | (v499 >> 33) & 0x7F) ^ 0x76)) - 47;
  LOBYTE(v504) = v502 & 0xA2 | 0x11;
  v512 = v504 ^ v502 & 0x66;
  LOBYTE(v504) = (v502 ^ 0x22) & (2 * ((v502 ^ 0x22) & (2 * ((v502 ^ 0x22) & (2 * ((v502 ^ 0x22) & (2 * ((2 * (v502 & (2 * v504) ^ v512)) & 0x22 ^ v512 ^ ((2 * (v502 & (2 * v504) ^ v512)) ^ 0x44) & v502)) ^ v512)) ^ v512)) ^ v512)) ^ v512;
  *(v505 + 8) = HIBYTE(v499) ^ 0xBC;
  LOBYTE(v502) = (((16 * (v502 ^ (2 * v504))) ^ 0x40) - ((32 * (v502 ^ (2 * v504))) & 0x40) - 85) ^ v502 ^ (2 * v504);
  v509[13] = BYTE6(v499) ^ 0x5E;
  v513 = STACK[0x6F0];
  v509[40] = BYTE5(v499) ^ 0x5D;
  v510[4] = (((v502 ^ 0xD4) - 90) ^ ((v502 ^ 0x34) + 70) ^ ((v502 ^ 0x39) + 73)) + ((2 * v502) & 0xDF ^ (((2 * v502) & 0xDF ^ 0xFE) - 116) ^ (((2 * v502) & 0xDF ^ 0x38) + 78) ^ 0x8A) + 29;
  LOBYTE(v502) = *(v291 + (((2 * (v498 & 0x7F)) | (v498 >> 7) & 1) ^ 0xA2));
  v510[22] = BYTE2(v498);
  v257[71] = ((v498 >> (v310 & 0x18) >> (v310 & 0x18 ^ 0x18)) - ((2 * (v498 >> (v310 & 0x18) >> (v310 & 0x18 ^ 0x18))) & 0x4A) - 91) ^ 0xA5;
  v257[53] = BYTE6(v498);
  v509[33] = BYTE5(v498);
  v257[96] = BYTE4(v498);
  v257[113] = BYTE1(v498);
  v226[9] = (((v502 ^ 0x2C) - 95) ^ ((v502 ^ 0x55) - 38) ^ ((v502 ^ 0xFC) + 113)) - 108;
  LOBYTE(v502) = 68 - 21 * *(STACK[0x780] + ((HIBYTE(v498) + 7) ^ 7));
  LOBYTE(v504) = v502 & 6 ^ 0xE5;
  v514 = v508 | v506 & 0x208448000CC2400;
  v515 = v514 ^ (v501 << 47);
  LOBYTE(v502) = v502 ^ (2 * ((v502 ^ 0x3C) & (2 * ((v502 ^ 0x3C) & (2 * ((v502 ^ 0x3C) & (2 * ((v502 ^ 0x3C) & (2 * ((v502 ^ 0x3C) & (2 * (v504 ^ v502 & 0x3A)) ^ v504)) ^ v504)) ^ v504)) ^ v504)) ^ v504)) ^ 0x23;
  v510[41] = ((v515 ^ 0x6446C2EA17562386uLL) >> 48) ^ 0x3C;
  v510[66] = (((v515 ^ 0x6446C2EA17562386uLL) >> 32) >> 8) ^ 0x17;
  v257[93] = ((v502 >> 1) | (v502 << 7)) ^ 0x74;
  v226[56] = v508 ^ 0x77;
  v510[56] = BYTE4(v514) ^ 0x39;
  v516 = v472 ^ 0x3C4B8A0382E9EA32 ^ (v472 >> 41) ^ __ROR8__(v472 ^ 0x3C4B8A0382E9EA32, 7);
  v517 = v516 ^ ((v472 ^ 0x3C4B8A0382E9EA32) << 23);
  v510[49] = HIBYTE(v515) ^ 0xA;
  v226[6] = v516 ^ 0x32;
  v226[38] = BYTE1(v516) ^ 0xC8;
  v510[63] = BYTE3(v508) ^ 0xB9;
  v510[82] = BYTE1(v514) ^ 0x7A;
  v226[47] = ((v508 | v506 & 0xCC2400) >> 16) ^ 0x11;
  LOBYTE(v502) = *(v511 + (((v517 >> 17) & 0x7F ^ 0x90DC64287AB41796) & ((v517 >> 9) | 0x90DC64287AB4177FLL) ^ 0x90DC64287AB41787));
  LOBYTE(v514) = (v502 - 89) & 0x72 ^ 0x53;
  v518 = (v502 - 89) ^ 0x4C;
  LOBYTE(v515) = v518 & (2 * (v518 & (2 * (v518 & (2 * (v518 & (2 * (v518 & (2 * (v514 ^ (v502 - 89) & 0x3E)) ^ v514)) ^ v514)) ^ v514)) ^ v514));
  v226[77] = BYTE6(v517) ^ 0x98;
  LOBYTE(v516) = ((v502 - 89) ^ (2 * (v515 ^ v514)) ^ 0x72) - ((v502 - 89) ^ (2 * (v515 ^ v514)) ^ (((16 * ((v502 - 89) ^ (2 * (v515 ^ v514)))) ^ 0x20) - ((32 * ((v502 - 89) ^ (2 * (v515 ^ v514)))) & 0xBF) - 38) ^ 0xF1);
  v226[69] = (v517 ^ 0x3C98FB1AAC8DC832) >> (v441 & 0x20) >> (v441 & 0x20 ^ 0x20);
  v226[17] = BYTE5(v517) ^ 0xFB;
  v257[1] = v502 + (((v516 ^ 0x31) - 40) ^ ((v516 ^ 0x7E) - 103) ^ ((v516 ^ 0xB1) + 88)) + 73;
  v510[61] = HIBYTE(v517) ^ 0x3C;
  v257[9] = BYTE3(v517) ^ 0xAC;
  *(v257 + 15) = v513 + 1;
  STACK[0x7A8] = v493 ^ 0x73285992F44FA5A9;
  return (*(v1 + 8 * (LODWORD(STACK[0x790]) ^ 0x73EE697A ^ (62444 * ((LODWORD(STACK[0x790]) + 994150190) > 0xCD2ECF7E)))))();
}

uint64_t sub_100A9AD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x3E40]) = 0;
  LODWORD(STACK[0x3D90]) = 0;
  LODWORD(STACK[0x3D88]) = 0;
  LODWORD(STACK[0x3B00]) = 0;
  LODWORD(STACK[0x3B18]) = 0;
  LODWORD(STACK[0x3980]) = 0;
  LODWORD(STACK[0x3988]) = 0;
  LODWORD(STACK[0x3E18]) = 0;
  LODWORD(STACK[0x3B08]) = 0;
  LODWORD(STACK[0x3998]) = 0;
  LODWORD(STACK[0x39A0]) = 0;
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D68]) = 0;
  LODWORD(STACK[0x3D30]) = 0;
  LODWORD(STACK[0x3B20]) = 0;
  LODWORD(STACK[0x3828]) = 0;
  LODWORD(STACK[0x39E8]) = 0;
  LODWORD(STACK[0x3D78]) = 0;
  LODWORD(STACK[0x3830]) = 0;
  LODWORD(STACK[0x3CF0]) = 0;
  LODWORD(STACK[0x39F0]) = 0;
  LODWORD(STACK[0x3D50]) = 0;
  LODWORD(STACK[0x3838]) = 0;
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
  v5 = *(v4 + 8 * (STACK[0x3D98] - 16789));
  v6 = STACK[0x3950];
  v7 = STACK[0x3938];
  LODWORD(STACK[0x3888]) = STACK[0x3948];
  LODWORD(STACK[0x3AF0]) = 1;
  return v5(a1, a2, v6, a4, v7);
}

uint64_t sub_100A9AE60()
{
  *v2 = 99;
  strcpy((v3 + 2097), "om_apple_driver_FairPlayIOKit");
  *(v3 + 2127) = 0;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_100A9B070()
{
  v4 = (*(v3 + 8 * (v0 ^ 0x3A41)))(1280);
  *(v2 + 1816) = v4;
  return (*(v3 + 8 * (((v4 != 0) * (v1 + (v0 ^ 0x819F8473) + ((v0 - 16699) | 0x92) - 1268)) ^ v0)))();
}

uint64_t sub_100A9B2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, int a5@<W8>)
{
  LODWORD(STACK[0x3D30]) = 0;
  LODWORD(STACK[0x2AB0]) = 0;
  LODWORD(STACK[0x3D38]) = 0;
  LODWORD(STACK[0x2AA8]) = 0;
  LODWORD(STACK[0x2AF0]) = 0;
  LODWORD(STACK[0x2B00]) = 0;
  LODWORD(STACK[0x2AE8]) = 0;
  LODWORD(STACK[0x2AE0]) = 0;
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
  v6 = a5 ^ 0x77A6;
  v7 = (v6 - 19360) | 0x4210u;
  STACK[0x3AF0] = v7;
  LODWORD(v7) = LODWORD(STACK[0x2C20]) == (v7 ^ 0x52F6);
  LODWORD(STACK[0x2AC8]) = 1;
  LODWORD(STACK[0x3B08]) = (v6 - 7084) | 0x121C;
  v8 = *(v5 + 8 * ((242 * ((((v6 - 7084) ^ v7) & 1) == 0)) ^ v6));
  LODWORD(STACK[0x2BB0]) = STACK[0x2238];
  LODWORD(STACK[0x39A8]) = STACK[0x1AA8];
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  v9 = STACK[0x2500];
  LODWORD(STACK[0x2B40]) = STACK[0x2500];
  LODWORD(STACK[0x3998]) = v9;
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  v10 = STACK[0x32E8];
  LODWORD(STACK[0x2B88]) = STACK[0x32E8];
  LODWORD(STACK[0x3B00]) = v10;
  LODWORD(STACK[0x3280]) = STACK[0x1954];
  v11 = LODWORD(STACK[0x3830]);
  STACK[0x3D90] = v11;
  LODWORD(STACK[0x32D0]) = v11;
  v12 = STACK[0x1A78];
  LODWORD(STACK[0x3268]) = STACK[0x1A78];
  LODWORD(STACK[0x3438]) = v12;
  LODWORD(STACK[0x3298]) = v12;
  LODWORD(STACK[0x3290]) = v12;
  LODWORD(STACK[0x3288]) = v12;
  v13 = STACK[0x3E18];
  LODWORD(STACK[0x2B70]) = STACK[0x3E18];
  LODWORD(STACK[0x3AE8]) = v13;
  v14 = STACK[0x21F4];
  LODWORD(STACK[0x2B60]) = STACK[0x21F4];
  LODWORD(STACK[0x3AE0]) = v14;
  v15 = STACK[0x3810];
  LODWORD(STACK[0x2B28]) = STACK[0x3810];
  LODWORD(STACK[0x3260]) = v15;
  v16 = STACK[0x3318];
  LODWORD(STACK[0x2B98]) = STACK[0x3318];
  LODWORD(STACK[0x2C20]) = 104;
  LODWORD(STACK[0x3988]) = 70;
  LODWORD(STACK[0x3980]) = 106;
  v17 = STACK[0x448];
  STACK[0x3D78] = STACK[0x2928];
  LODWORD(STACK[0x3D58]) = 1;
  LODWORD(STACK[0x3D28]) = 1;
  LODWORD(STACK[0x3D70]) = 1;
  LODWORD(STACK[0x39A0]) = STACK[0x1204];
  LODWORD(v11) = STACK[0x1A90];
  LODWORD(STACK[0x3D48]) = STACK[0x1A90];
  LODWORD(STACK[0x3CE8]) = STACK[0x28CC];
  LODWORD(STACK[0x36B8]) = STACK[0x2134];
  LODWORD(STACK[0x2B30]) = STACK[0x3688];
  v18 = STACK[0x1BC8];
  LODWORD(STACK[0x39E8]) = STACK[0x1BC8];
  STACK[0x32E0] = v17;
  STACK[0x3D50] = v17;
  STACK[0x3AD8] = v17;
  STACK[0x32D8] = STACK[0x1BE8];
  LODWORD(STACK[0x3278]) = v18;
  LODWORD(STACK[0x3270]) = STACK[0x2B20];
  LODWORD(STACK[0x3258]) = v11;
  return v8(a1, 0, a2, v17, a3, a4, v16);
}

uint64_t sub_100A9B5A4@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x1DC4]) = v1;
  LODWORD(STACK[0x1DC0]) = v2;
  return (*(v3 + 8 * a1))();
}

uint64_t sub_100A9B5CC@<X0>(uint64_t a1@<X3>, int a2@<W7>, int a3@<W8>)
{
  *(a1 + 96) = *(v6 + 8 * a3);
  *(a1 + 952) = v4;
  return (*(v6 + 8 * (((((v5 - 43) ^ (v3 == 0)) & 1) * ((v5 - 268444233) & 0x919FC30C ^ (a2 + 6))) ^ v5)))();
}

uint64_t sub_100A9B680(int a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, unsigned int a7)
{
  v16 = 329 * (v7 ^ 0x59FC);
  v17 = (16 * *(v14 + a2 + (v8 >> 4) * v13 - (((((a2 + (v8 >> 4) * v13) * a7) >> 32) + ((a2 + (v8 >> 4) * v13 - (((a2 + (v8 >> 4) * v13) * a7) >> 32)) >> 1)) >> 9) * v9)) ^ 0x60;
  v18 = (*(v14 + a2 + (v16 - 14570) * (v8 & 0xF) - 975 * (((((a2 + (v16 - 14570) * (v8 & 0xF)) * a7) >> 32) + ((a2 + (v16 - 14570) * (v8 & 0xF) - (((a2 + (v16 - 14570) * (v8 & 0xF)) * a7) >> 32)) >> 1)) >> 9)) ^ (v17 - ((2 * v17) & 0x60) + 54) & 0xFE ^ 3) * a1;
  v19 = (((41 * *(a6 + (v18 - ((v18 * v15) >> 32) * v12))) >> 4) ^ 2) * v13 + 23218;
  *(v14 + a5 + v8 * v13 - 975 * (((((a5 + v8 * v13) * a7) >> 32) + ((a5 + v8 * v13 - (((a5 + v8 * v13) * a7) >> 32)) >> 1)) >> 9)) = v11 ^ (16 * *(v14 + (v19 - 975 * (((v19 * a3) >> 16) >> 9))));
  return (*(STACK[0x200] + 8 * (((v8 == 255) * v10) ^ v7)))();
}

uint64_t sub_100A9B798@<X0>(unsigned int a1@<W5>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t *a21)
{
  v28 = 0;
  v29 = *(*STACK[0x4E8] + (*STACK[0x4B8] & (a1 - 1))) ^ a1;
  v30 = *v24 ^ v23;
  v31 = *(v26 + 2792) ^ v22;
  v32 = *(v31 + (v29 & v30)) ^ v29;
  v33 = *(v31 + (v32 & v30)) ^ v32;
  v34 = *(v31 + (v33 & v30)) ^ v33;
  v35 = *(v31 + (v34 & v30)) ^ v34;
  v36 = *(v31 + (v35 & v30)) ^ v35;
  v37 = *(v31 + (v36 & v30)) ^ v36;
  v38 = *(v31 + (v37 & v30)) ^ v37;
  v39 = *(v31 + (v38 & v30)) ^ v38;
  STACK[0x21F0] = 0;
  STACK[0x21F8] = v21;
  v40 = ((v39 * a1 + 7) ^ (v39 * a1)) * v25 % 7;
  v41 = ((v39 * a1 + 6) ^ (v39 * a1)) * v25 % 6;
  v42 = ((v39 * a1 + 5) ^ (v39 * a1)) * v25 % 5;
  v43 = *(&STACK[0x21F0] | v40);
  *(&STACK[0x21F0] | v40) = STACK[0x21F7];
  v44 = *(&STACK[0x21F0] | v41);
  *(&STACK[0x21F0] | v41) = STACK[0x21F6];
  v45 = *(&STACK[0x21F0] | v42);
  *(&STACK[0x21F0] | v42) = STACK[0x21F5];
  v46 = ((v39 * a1 + 3) ^ (v39 * a1)) * v25 % 3;
  v47 = vdup_n_s32(v39 * a1);
  v48.i32[0] = v47.i32[0];
  v48.i32[1] = v39 * a1 + 1;
  LOBYTE(STACK[0x21F7]) = v43;
  v49 = veor_s8(vmul_s32(v48, v47), v47);
  LOBYTE(STACK[0x21F6]) = v44;
  LOBYTE(STACK[0x21F5]) = v45;
  v50 = STACK[0x21F0];
  LOBYTE(STACK[0x21F0]) = STACK[0x21F4];
  LOBYTE(STACK[0x21F4]) = v50;
  v51 = *(&STACK[0x21F0] | v46);
  *(&STACK[0x21F0] | v46) = STACK[0x21F3];
  LOBYTE(STACK[0x21F3]) = v51;
  v52 = STACK[0x21F1];
  LOBYTE(STACK[0x21F2]) = STACK[0x21F0];
  LOWORD(STACK[0x21F0]) = v52;
  STACK[0x21F0] = vmla_s32(v49, STACK[0x21F0], vdup_n_s32(v25));
  v53 = STACK[0x21F8];
  v54 = (STACK[0x21F8] * a1) ^ v39;
  v55 = vdupq_n_s32(v54);
  v56 = xmmword_1012370F0;
  v57 = xmmword_101237100;
  v58 = xmmword_101237110;
  v59 = xmmword_101237120;
  v60.i64[0] = 0x9393939393939393;
  v60.i64[1] = 0x9393939393939393;
  v61.i64[0] = 0x1000000010;
  v61.i64[1] = 0x1000000010;
  do
  {
    v62 = *(v53 + v28);
    v75.val[1] = veorq_s8(vqtbl1q_s8(v62, xmmword_101237140), veorq_s8(v55, vmulq_s32(vaddq_s32(v58, v55), vsubq_s32(v58, v55))));
    v75.val[0] = veorq_s8(vqtbl1q_s8(v62, xmmword_101237150), veorq_s8(v55, vmulq_s32(vaddq_s32(v59, v55), vsubq_s32(v59, v55))));
    v75.val[2] = veorq_s8(vqtbl1q_s8(v62, xmmword_101237160), veorq_s8(v55, vmulq_s32(vaddq_s32(v57, v55), vsubq_s32(v57, v55))));
    v75.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v62, xmmword_101237170), v55), vmulq_s32(vaddq_s32(v56, v55), vsubq_s32(v56, v55)));
    *(v53 + v28) = vmulq_s8(vqtbl4q_s8(v75, xmmword_101237130), v60);
    v28 += 16;
    v59 = vaddq_s32(v59, v61);
    v58 = vaddq_s32(v58, v61);
    v57 = vaddq_s32(v57, v61);
    v56 = vaddq_s32(v56, v61);
  }

  while (v28 != 32);
  v63 = 3;
  do
  {
    v64 = ((v54 + v63) ^ v54) * v25 % v63;
    v65 = *(v53 + 8 * v64) ^ *(v53 + 8 * v63);
    *(v53 + 8 * v63) = v65;
    v66 = *(v53 + 8 * v64) ^ v65;
    *(v53 + 8 * v64) = v66;
    *(v53 + 8 * v63) ^= v66;
    v67 = v63-- + 1;
  }

  while (v67 > 2);
  v68 = *(&STACK[0x21F8] + v40);
  *(&STACK[0x21F8] + v40) = STACK[0x21FF];
  LOBYTE(STACK[0x21FF]) = v68;
  v69 = *(&STACK[0x21F8] + v41);
  *(&STACK[0x21F8] + v41) = STACK[0x21FE];
  LOBYTE(STACK[0x21FE]) = v69;
  v70 = *(&STACK[0x21F8] + v42);
  *(&STACK[0x21F8] + v42) = STACK[0x21FD];
  LOBYTE(STACK[0x21FD]) = v70;
  v71 = STACK[0x21F8];
  LOBYTE(STACK[0x21F8]) = STACK[0x21FC];
  LOBYTE(STACK[0x21FC]) = v71;
  v72 = *(&STACK[0x21F8] + v46);
  *(&STACK[0x21F8] + v46) = STACK[0x21FB];
  LOBYTE(STACK[0x21FB]) = v72;
  v73 = STACK[0x21F9];
  LOBYTE(STACK[0x21FA]) = STACK[0x21F8];
  LOWORD(STACK[0x21F8]) = v73;
  STACK[0x21F8] = vmla_s32(v49, STACK[0x21F8], vdup_n_s32(0x1000193u));
  *a21 = STACK[0x21F8] ^ STACK[0x21F0];
  return (*(v27 + 8 * (a2 + 2120251535)))();
}

uint64_t sub_100A9BB68@<X0>(int a1@<W8>)
{
  STACK[0x2140] = v1;
  v2 = STACK[0x1138];
  STACK[0x2148] = STACK[0x1138];
  return (*(STACK[0x540] + 8 * (((v1 - v2 > (a1 ^ 0x20BCu) - 1417) * ((a1 - 2120246050) ^ 0x819FC933)) ^ a1)))();
}

uint64_t sub_100A9BBDC@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W4>, int a4@<W5>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  LODWORD(STACK[0x370]) = 0;
  STACK[0x368] = 3 * (v13 ^ 0x1090u);
  STACK[0x308] = a2;
  v17 = *(a5 + 8 * v13);
  LODWORD(STACK[0x358]) = 1;
  STACK[0x380] = v16;
  LODWORD(STACK[0x25C]) = a3;
  LODWORD(STACK[0x2C4]) = a4;
  LODWORD(STACK[0x254]) = v14;
  LODWORD(STACK[0x258]) = v15;
  STACK[0x278] = a1;
  return v17(a13);
}

uint64_t sub_100A9BE24@<X0>(uint64_t a1@<X8>)
{
  *v4 = v3;
  *(v3 + 8) = *(a1 + v2);
  *(a1 + v2) = v3;
  return (*(v5 + 8 * v1))();
}

uint64_t sub_100A9BEEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>)
{
  v25 = (v13 + a9 + 259) | a4;
  v26 = *(*a1 + ((*v19 & (((v25 ^ 0xFFFFFCFD) & (v16 + v11)) - 103642729)) & 0xFFFFFFFFFFFFFFF8));
  v27 = __ROR8__((v25 ^ 0xFFFFFFFFFFFFFCFDLL) & (v16 + v11), 8);
  v28 = (((2 * (v27 + v26)) | 0x638053D72E948616) - (v27 + v26) + 0x4E3FD61468B5BCF5) ^ 0x45D678A208147F6CLL;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  v31 = __ROR8__((v10 - ((v30 + v29) | v10) + ((v30 + v29) | 0x565261E9346205D6)) ^ 0x4360230708926F9FLL, 8);
  v32 = (v10 - ((v30 + v29) | v10) + ((v30 + v29) | 0x565261E9346205D6)) ^ 0x4360230708926F9FLL ^ __ROR8__(v29, 61);
  v33 = (((2 * (v31 + v32)) & 0x2B034C953FBC5A26) - (v31 + v32) + v21) ^ v22;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0xE5AF1AB32EBD3CDDLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (v37 + v36 - (v17 & (2 * (v37 + v36))) + v24) ^ v23;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8);
  v41 = ((v20 & (2 * (v40 + v39))) - (v40 + v39) + a3) ^ a5;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (v43 + v42 - (v12 & (2 * (v43 + v42))) + a2) ^ a6;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  *(v16 + v11) = ((v46 + v45 - (a7 & (2 * (v46 + v45))) + v14) ^ v15) >> (8 * ((v16 + v11) & 7));
  return (*(a8 + 8 * (((v11 == 63) * v18) ^ v9)))();
}

uint64_t sub_100A9C13C()
{
  v3 = v0 + 6178;
  v4 = (*(v2 + 8 * (v3 + 22728)))(32);
  *(v1 + 3280) = v4;
  return (*(v2 + 8 * ((((v3 ^ 0x43 ^ (v4 == 0)) & 1) * (v3 - 8836)) ^ v3)))();
}

uint64_t sub_100A9C1C4@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x3AF0]) = 0;
  LODWORD(STACK[0x3D28]) = 0;
  LODWORD(STACK[0x3D60]) = 0;
  LODWORD(STACK[0x3AE8]) = 0;
  LODWORD(STACK[0x38B8]) = 0;
  v3 = STACK[0x3948];
  v4 = STACK[0x3B18];
  v5 = HIDWORD(STACK[0x3B18]);
  v6 = STACK[0x3948] >> (((v1 + 9) | 0x8C) - 126);
  LODWORD(STACK[0x3E40]) = 1;
  STACK[0x3D98] = (v1 + 12041) | 0x128C;
  STACK[0x2E90] = v4 >> 8;
  STACK[0x2518] = BYTE6(v3);
  STACK[0x3B48] = a1;
  v7 = *(v2 + 8 * v1);
  STACK[0x2558] = HIWORD(v4);
  STACK[0x2860] = v4;
  STACK[0x2900] = v3 >> 24;
  STACK[0x2ED8] = v3 >> 16;
  STACK[0x3130] = HIBYTE(v3);
  STACK[0x26D8] = STACK[0x3950];
  STACK[0x3658] = v4 >> 24;
  STACK[0x2FB0] = v3 >> 8;
  STACK[0x2E08] = v4 >> 40;
  STACK[0x2E48] = v3 >> 40;
  STACK[0x3B70] = v3;
  STACK[0x27A0] = v6;
  STACK[0x2F00] = v5;
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
  LODWORD(STACK[0x3AE0]) = 1;
  LODWORD(STACK[0x38B0]) = 1;
  return v7();
}

uint64_t sub_100A9C358(uint64_t a1)
{
  v5 = (((v2 ^ 0xC317FCDA) + 1021838118) ^ ((v2 ^ 0xFC891392) + 58125422) ^ ((((v1 - 27007) | 0x588) ^ 0x127D958C) + (v2 ^ 0xED826FDC))) - 544886538;
  v6 = ((v5 ^ 0x17A96B92) - 448814065) ^ v5 ^ ((v5 ^ 0xC036E5F1) + 849357422) ^ ((v5 ^ 0x250945F7) - 677410196) ^ ((v5 ^ 0xFFFFFBF7) + 224998508);
  *(a1 + (v6 ^ 0xD693063)) = *(v3 + (v6 ^ 0xD693063)) ^ 0xF;
  return (*(v4 + 8 * ((55 * (v6 == 224997475)) ^ v1)))();
}

uint64_t sub_100A9C4A8()
{
  LODWORD(STACK[0x10A4]) = v1;
  v7 = &STACK[0x2280] + STACK[0x1310];
  STACK[0x1310] += 128;
  v8 = STACK[0x4B8];
  v9 = *STACK[0x4B8];
  v10 = *v3;
  v11 = *(*v3 + ((((((2 * ((v7 + 112) & 0xFFFFFFF8)) & 0x70CD5AF0) + ((v0 - 89424992) & 0x554E9DF ^ (v7 + 112) & 0xFFFFFFF8 ^ 0xB866C530)) & 0xFFFFFFF8) + 1097587736) & v9));
  v12 = (v11 + __ROR8__((v7 + 112) & 0xFFFFFFFFFFFFFFF8, 8)) ^ v4;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0x153242EE3CF06A49;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((v16 + v15) | 0xC382CC5C46686A74) - ((v16 + v15) | 0x3C7D33A3B997958BLL) + 0x3C7D33A3B997958BLL) ^ 0xE1F7189B7E5D53EFLL;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xE5AF1AB32EBD3CDDLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = STACK[0x7B8];
  STACK[0x9D0] = v7;
  STACK[0xD18] = (v7 + 112);
  v23 = (((v21 + v20) | 0xD73524099F28BA0BLL) - ((v21 + v20) | 0x28CADBF660D745F4) + 0x28CADBF660D745F4) ^ 0x10E8EDFF536D0D2ALL;
  v24 = v23 ^ __ROR8__(v20, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0xA82620A559D2DA78;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (v27 + v26 - ((2 * (v27 + v26)) & 0x65C3F028EA8DE74) + 0x32E1F8147546F3ALL) ^ 0x5CA3F3BFE4CC6521;
  v7[112] = (((__ROR8__(v28, 8) + (v28 ^ __ROR8__(v26, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * ((v7 + 112) & 7u))) ^ 0x5B;
  v29 = *(v10 + (v9 & (((v7 + 113) & 0xD24CE380) + ((v7 + 113) & 0x2DB31C78 | 0xD24CE380) + 663070231) & 0xFFFFFFF8));
  v30 = (v29 + __ROR8__((v7 + 113) & 0xFFFFFFFFFFFFFFF8, 8)) ^ v4;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x153242EE3CF06A49;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((v34 + v33) ^ 0x4245C755F9F0C547 | 0x8096BA0F73D475D0) - ((v34 + v33) ^ 0x4245C755F9F0C547 | 0x7F6945F08C2B8A2FLL) + 0x7F6945F08C2B8A2FLL) ^ 0xE0A6A99DB211890CLL;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xE5AF1AB32EBD3CDDLL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0xC7DDC9F6CC45B721;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0xA82620A559D2DA78;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ v5;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = __ROR8__(v43, 8);
  v7[113] = (((((2 * ((v45 + v44) ^ 0xD6886D5C5CBA55B8)) & 0xF0E5D7F93BF9E402) - ((v45 + v44) ^ 0xD6886D5C5CBA55B8) - 0x7872EBFC9DFCF202) ^ 0x90C6B18D9A7C106ELL) >> (8 * ((v7 + 113) & 7u))) ^ 4;
  v46 = *(*v3 + ((*v8 & (((v7 + 114) & 0xFFFFFFF8) - 103642729)) & 0xFFFFFFFFFFFFFFF8));
  v47 = (__ROR8__((v7 + 114) & 0xFFFFFFFFFFFFFFF8, 8) + v46) ^ v4;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x153242EE3CF06A49;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0x2275D4C73835399BLL;
  v52 = __ROR8__(v51, 8);
  v53 = v51 ^ __ROR8__(v50, 61);
  v54 = (v52 + v53) ^ 0xE5AF1AB32EBD3CDDLL;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = __ROR8__(v54, 8);
  v57 = (((2 * (v56 + v55)) | 0xBAAD74F2A2430678) - (v56 + v55) - 0x5D56BA795121833CLL) ^ 0x9A8B738F9D64341DLL;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = __ROR8__(v57, 8);
  v60 = (v59 + v58 - ((2 * (v59 + v58)) & 0xC430C53E6B5CC6D6) - 0x1DE79D60CA519C95) ^ 0x4A3E423A6C7CB913;
  v61 = v60 ^ __ROR8__(v58, 61);
  v62 = __ROR8__(v60, 8);
  v63 = (v62 + v61 - ((2 * (v62 + v61)) & 0xB74E09A0F72C9596) - 0x2458FB2F8469B535) ^ 0x842AE8EED80E40D0;
  v7[114] = (((__ROR8__(v63, 8) + (v63 ^ __ROR8__(v61, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * ((v7 + 114) & 7u))) ^ 0x98;
  v64 = *(*v3 + ((*v8 & (((v7 + 115) & 0xFFFFFFF8) - 103642729)) & 0xFFFFFFFFFFFFFFF8));
  v65 = __ROR8__((v7 + 115) & 0xFFFFFFFFFFFFFFF8, 8);
  v66 = (v64 + v65 - ((2 * (v64 + v65)) & 0x1723BB4CFB68FABELL) - 0x746E2259824B82A1) ^ 0x7F878CEFE2EA4138;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0x153242EE3CF06A49;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = __ROR8__(v68, 8);
  v71 = __ROR8__((v70 + v69 - ((2 * (v70 + v69)) & 0x74851305ECDE1EBCLL) + 0x3A428982F66F0F5ELL) ^ 0x18375D45CE5A36C5, 8);
  v72 = (v70 + v69 - ((2 * (v70 + v69)) & 0x74851305ECDE1EBCLL) + 0x3A428982F66F0F5ELL) ^ 0x18375D45CE5A36C5 ^ __ROR8__(v69, 61);
  v73 = (((2 * (v71 + v72)) | 0xAFD31D45D102EF2CLL) - (v71 + v72) - 0x57E98EA2E8817796) ^ 0xB2469411C63C4B4BLL;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = __ROR8__(v73, 8);
  v76 = (((2 * (v75 + v74)) | 0x5201EFA8541AE4C6) - (v75 + v74) + 0x56FF082BD5F28D9DLL) ^ 0x6EDD3E22E648C542;
  v77 = v76 ^ __ROR8__(v74, 61);
  v78 = (__ROR8__(v76, 8) + v77) ^ 0xA82620A559D2DA78;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = __ROR8__(v78, 8);
  v81 = (((2 * (v80 + v79)) & 0x2935CF693CC8EBD6) - (v80 + v79) - 0x149AE7B49E6475ECLL) ^ 0xB4E8F475C203800FLL;
  v82 = v81 ^ __ROR8__(v79, 61);
  v83 = __ROR8__(v81, 8);
  v7[115] = (((v83 + v82 - ((2 * (v83 + v82)) & 0x8894B2BA7B22159CLL) + 0x444A595D3D910ACELL) ^ 0x8589918F995442E6) >> (8 * ((v7 + 115) & 7u))) ^ 0xC9;
  v84 = STACK[0xD18];
  v85 = *v8 & 0xFFFFFFFFFFFFFFF8;
  v86 = *(*v3 + ((((v84 + 4) & 0xFFFFFFF8 ^ 0xD08BAE9A) - 899794894 + ((2 * ((v84 + 4) & 0xFFFFFFF8)) | 0x5EE8A2CB)) & v85));
  v87 = (__ROR8__((STACK[0xD18] + 4) & 0xFFFFFFFFFFFFFFF8, 8) + v86) ^ v4;
  v88 = v87 ^ __ROR8__(v86, 61);
  v89 = (__ROR8__(v87, 8) + v88) ^ 0x153242EE3CF06A49;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ 0x2275D4C73835399BLL;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = (__ROR8__(v91, 8) + v92) ^ 0xE5AF1AB32EBD3CDDLL;
  v94 = __ROR8__(v93, 8);
  v95 = v93 ^ __ROR8__(v92, 61);
  v96 = (v94 + v95) ^ 0xC7DDC9F6CC45B721;
  v97 = v96 ^ __ROR8__(v95, 61);
  v98 = (__ROR8__(v96, 8) + v97) ^ 0xA82620A559D2DA78;
  v99 = v98 ^ __ROR8__(v97, 61);
  v100 = __ROR8__(v98, 8);
  v101 = (v100 + v99 - ((2 * (v100 + v99)) & 0xA57225F1938369ACLL) - 0x2D46ED07363E4B2ALL) ^ 0x8D34FEC66A59BECDLL;
  v102 = v101 ^ __ROR8__(v99, 61);
  v103 = __ROR8__(v101, 8);
  *(v84 + 4) = (((v103 + v102 - ((2 * (v103 + v102)) & 0x3CD14944196F7CECLL) - 0x61975B5DF348418ALL) ^ 0x5FAB6C70A872F65ELL) >> (8 * ((v84 + 4) & 7))) ^ 0x40;
  v104 = *(*v3 + ((((v84 + 5) & 0xFFFFFFF8) - 103642730) & v85));
  v105 = (v104 + __ROR8__((v84 + 5) & 0xFFFFFFFFFFFFFFF8, 8)) ^ v4;
  v106 = __ROR8__(v105, 8);
  v107 = v105 ^ __ROR8__(v104, 61);
  v108 = (((v106 + v107) | 0x17340676DF81B4FDLL) - ((v106 + v107) | 0xE8CBF989207E4B02) - 0x17340676DF81B4FELL) ^ 0x2064498E371DEB4;
  v109 = v108 ^ __ROR8__(v107, 61);
  v110 = (__ROR8__(v108, 8) + v109) ^ 0x2275D4C73835399BLL;
  v111 = v110 ^ __ROR8__(v109, 61);
  v112 = __ROR8__(v110, 8);
  v113 = (v112 + v111 - ((2 * (v112 + v111)) & 0x4F6024CA9F067092) + 0x27B012654F833849) ^ 0xC21F08D6613E0494;
  v114 = v113 ^ __ROR8__(v111, 61);
  v115 = (__ROR8__(v113, 8) + v114) ^ 0xC7DDC9F6CC45B721;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ 0xA82620A559D2DA78;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = (__ROR8__(v117, 8) + v118) ^ v5;
  *(v84 + 5) = (((__ROR8__(v119, 8) + (v119 ^ __ROR8__(v118, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * ((v84 + 5) & 7))) ^ 0x74;
  v120 = STACK[0xD18];
  v121 = *v8 & 0xFFFFFFFFFFFFFFF8;
  v122 = *(*v3 + ((((STACK[0xD18] + 6) & 0xFFFFFFF8) - 103642729) & v121));
  v123 = __ROR8__((STACK[0xD18] + 6) & 0xFFFFFFFFFFFFFFF8, 8);
  v124 = (v123 + v122 - ((2 * (v123 + v122)) & 0xB3BD7B31FD598994) + 0x59DEBD98FEACC4CALL) ^ 0xADC8ECD161F2F8ADLL;
  v125 = v124 ^ __ROR8__(v122, 61);
  v126 = (__ROR8__(v124, 8) + v125) ^ 0x153242EE3CF06A49;
  v127 = v126 ^ __ROR8__(v125, 61);
  v128 = __ROR8__(v126, 8);
  v129 = __ROR8__((((2 * (v128 + v127)) & 0x45D9E30B49AB2928) - (v128 + v127) + 0x5D130E7A5B2A6B6BLL) ^ 0x7F66DABD631F52F0, 8);
  v130 = (((2 * (v128 + v127)) & 0x45D9E30B49AB2928) - (v128 + v127) + 0x5D130E7A5B2A6B6BLL) ^ 0x7F66DABD631F52F0 ^ __ROR8__(v127, 61);
  v131 = (v129 + v130 - ((2 * (v129 + v130)) & 0xDCB853DF0C56B192) + 0x6E5C29EF862B58C9) ^ 0x8BF3335CA8966414;
  v132 = v131 ^ __ROR8__(v130, 61);
  v133 = __ROR8__(v131, 8);
  v134 = (((2 * (v133 + v132)) | 0x6637D8113E3F831ALL) - (v133 + v132) + 0x4CE413F760E03E73) ^ 0x74C625FE535A76ACLL;
  v135 = v134 ^ __ROR8__(v132, 61);
  v136 = __ROR8__(v134, 8);
  v137 = (((2 * (v136 + v135)) & 0x630BBCBE0E18966) - (v136 + v135) - 0x3185DE5F070C4B4) ^ 0x54C182BF565DE134;
  v138 = v137 ^ __ROR8__(v135, 61);
  v139 = (__ROR8__(v137, 8) + v138) ^ v5;
  *(v120 + 6) = (((__ROR8__(v139, 8) + (v139 ^ __ROR8__(v138, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * ((v120 + 6) & 7))) ^ 0x20;
  v140 = *(*v3 + ((((v120 + 7) & 0xFFFFFFF8 ^ 0xCB165B76) + 784084513 + ((2 * ((v120 + 7) & 0xFFFFFFF8)) & 0x962CB6E0)) & v121));
  v141 = __ROR8__((v120 + 7) & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x588] = v22;
  v142 = (((v140 + v141) | 0x7997E672E9E539ABLL) - ((v140 + v141) | 0x8668198D161AC654) - 0x7997E672E9E539ACLL) ^ 0x8D81B73B76BB05CCLL ^ __ROR8__(v140, 61);
  v143 = (__ROR8__((((v140 + v141) | 0x7997E672E9E539ABLL) - ((v140 + v141) | 0x8668198D161AC654) - 0x7997E672E9E539ACLL) ^ 0x8D81B73B76BB05CCLL, 8) + v142) ^ 0x153242EE3CF06A49;
  v144 = v143 ^ __ROR8__(v142, 61);
  v145 = __ROR8__(v143, 8);
  v146 = (((2 * (v145 + v144)) | 0x53FE474902B6D76ALL) - (v145 + v144) + 0x5600DC5B7EA4944BLL) ^ 0x8B8AF763B96E522ELL;
  v147 = v146 ^ __ROR8__(v144, 61);
  v148 = (__ROR8__(v146, 8) + v147) ^ 0xE5AF1AB32EBD3CDDLL;
  v149 = v148 ^ __ROR8__(v147, 61);
  v150 = (__ROR8__(v148, 8) + v149) ^ 0xC7DDC9F6CC45B721;
  v151 = v150 ^ __ROR8__(v149, 61);
  v152 = __ROR8__(v150, 8);
  v153 = __ROR8__((((v152 + v151) & 0xA560837266B86E4BLL ^ 0xA040002004080E0ALL) + ((v152 + v151) & 0x5A9F7C8D994791B4 ^ 0x5882000101029121) - 1) ^ 0x50E420845CD84552, 8);
  v154 = (((v152 + v151) & 0xA560837266B86E4BLL ^ 0xA040002004080E0ALL) + ((v152 + v151) & 0x5A9F7C8D994791B4 ^ 0x5882000101029121) - 1) ^ 0x50E420845CD84552 ^ __ROR8__(v151, 61);
  v155 = (v153 + v154) ^ v5;
  v156 = v155 ^ __ROR8__(v154, 61);
  v157 = __ROR8__(v155, 8);
  *(v120 + 7) = (((((2 * (v157 + v156)) & 0x76C3C259B1E283BALL) - (v157 + v156) - 0x3B61E12CD8F141DELL) ^ 0x55DD60183CBF60ALL) >> (8 * ((v120 + 7) & 7))) ^ 0x89;
  v158 = STACK[0xD18];
  v159 = *v3;
  v160 = *v8 & 0xFFFFFFFFFFFFFFF8;
  v161 = *(*v3 + ((((STACK[0xD18] + 8) & 0xFFFFFFF8) - 103642729) & v160));
  v162 = (__ROR8__((STACK[0xD18] + 8) & 0xFFFFFFFFFFFFFFF8, 8) + v161) ^ v4;
  v163 = __ROR8__(v162, 8);
  v164 = v162 ^ __ROR8__(v161, 61);
  v165 = (((2 * (v163 + v164)) & 0xAE1DB65C2696F120) - (v163 + v164) + 0x28F124D1ECB4876FLL) ^ 0x3DC3663FD044ED26;
  v166 = v165 ^ __ROR8__(v164, 61);
  v167 = (__ROR8__(v165, 8) + v166) ^ 0x2275D4C73835399BLL;
  v168 = v167 ^ __ROR8__(v166, 61);
  v169 = __ROR8__(v167, 8);
  v170 = (v169 + v168 - ((2 * (v169 + v168)) & 0x3DE60C233514F83CLL) + 0x1EF306119A8A7C1ELL) ^ 0xFB5C1CA2B43740C3;
  v171 = v170 ^ __ROR8__(v168, 61);
  v172 = __ROR8__(v170, 8);
  v173 = (v172 + v171 - ((2 * (v172 + v171)) & 0xD5578947D5B4B280) - 0x15543B5C1525A6C0) ^ 0x2D760D55269FEE61;
  v174 = v173 ^ __ROR8__(v171, 61);
  v175 = (__ROR8__(v173, 8) + v174) ^ 0xA82620A559D2DA78;
  v176 = v175 ^ __ROR8__(v174, 61);
  v177 = __ROR8__(v175, 8);
  v178 = STACK[0x1418] + 57;
  STACK[0x1288] = v178;
  v179 = (((v177 + v176) | 0x94567513845D4019) - ((v177 + v176) | 0x6BA98AEC7BA2BFE6) + 0x6BA98AEC7BA2BFE6) ^ 0xCBDB992D27C54A02;
  v180 = v179 ^ __ROR8__(v176, 61);
  v181 = __ROR8__(v179, 8);
  *(v158 + 8) = (((v181 + v180 - ((2 * (v181 + v180)) & 0xDD79FCC06B0FBFA2) - 0x1143019FCA78202FLL) ^ 0x2F7F36B2914297F9) >> (8 * ((v158 + 8) & 7))) ^ 0x48;
  v182 = *(v159 + ((((v158 + 9) & 0x7C206150 | 0x83DF9EAD) - 103642729 + ((v158 + 9) & 0x83DF9EA8 | 0x7C206152) + 1) & v160));
  v183 = (v182 + __ROR8__((v158 + 9) & 0xFFFFFFFFFFFFFFF8, 8)) ^ v4;
  v184 = v183 ^ __ROR8__(v182, 61);
  v185 = (__ROR8__(v183, 8) + v184) ^ 0x153242EE3CF06A49;
  v186 = v185 ^ __ROR8__(v184, 61);
  v187 = __ROR8__(v185, 8);
  v188 = (((v187 + v186) | 0x389BA3025D5A59CALL) - ((v187 + v186) | 0xC7645CFDA2A5A635) - 0x389BA3025D5A59CBLL) ^ 0x1AEE77C5656F6051;
  v189 = v188 ^ __ROR8__(v186, 61);
  v190 = __ROR8__(v188, 8);
  v191 = (v190 + v189 - ((2 * (v190 + v189)) & 0xB9872C24D8079850) + 0x5CC396126C03CC28) ^ 0xB96C8CA142BEF0F5;
  v192 = v191 ^ __ROR8__(v189, 61);
  v193 = (__ROR8__(v191, 8) + v192) ^ 0xC7DDC9F6CC45B721;
  v194 = v193 ^ __ROR8__(v192, 61);
  v195 = (__ROR8__(v193, 8) + v194) ^ 0xA82620A559D2DA78;
  v196 = v195 ^ __ROR8__(v194, 61);
  v197 = __ROR8__(v195, 8);
  v198 = (((v197 + v196) | 0xCEB8A52F3DBA2624) - ((v197 + v196) | 0x31475AD0C245D9DBLL) + 0x31475AD0C245D9DBLL) ^ 0x913549119E222C3FLL;
  *(v158 + 9) = (((__ROR8__(v198, 8) + (v198 ^ __ROR8__(v196, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * ((v158 + 9) & 7))) ^ 0x4D;
  v199 = STACK[0xD18];
  v200 = *v3;
  v201 = *v8 & 0xFFFFFFFFFFFFFFF8;
  v202 = *(*v3 + ((((v199 + 10) & 0x4431E000) + ((v199 + 10) & 0xBBCE1FF8 | 0x4431E000) - 1247762026) & v201));
  v203 = (__ROR8__((STACK[0xD18] + 10) & 0xFFFFFFFFFFFFFFF8, 8) + v202) ^ v4;
  v204 = v203 ^ __ROR8__(v202, 61);
  v205 = (__ROR8__(v203, 8) + v204) ^ 0x153242EE3CF06A49;
  v206 = v205 ^ __ROR8__(v204, 61);
  v207 = (__ROR8__(v205, 8) + v206) ^ 0x2275D4C73835399BLL;
  v208 = __ROR8__(v207, 8);
  v209 = v207 ^ __ROR8__(v206, 61);
  v210 = (((2 * (v208 + v209)) & 0x2C4457A71BA9AA24) - (v208 + v209) + 0x69DDD42C722B2AEDLL) ^ 0x8C72CE9F5C961630;
  v211 = v210 ^ __ROR8__(v209, 61);
  v212 = (__ROR8__(v210, 8) + v211) ^ 0xC7DDC9F6CC45B721;
  v213 = v212 ^ __ROR8__(v211, 61);
  v214 = (__ROR8__(v212, 8) + v213) ^ 0xA82620A559D2DA78;
  v215 = v214 ^ __ROR8__(v213, 61);
  v216 = (__ROR8__(v214, 8) + v215) ^ v5;
  *(v199 + 10) = (((__ROR8__(v216, 8) + (v216 ^ __ROR8__(v215, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * ((v199 + 10) & 7))) ^ 0xF2;
  v217 = *(v200 + ((((v199 + 11) & 0xFFFFFFF8) - 103642729) & v201));
  v218 = (v217 + __ROR8__((v199 + 11) & 0xFFFFFFFFFFFFFFF8, 8)) ^ v4;
  v219 = v218 ^ __ROR8__(v217, 61);
  v220 = (__ROR8__(v218, 8) + v219) ^ 0x153242EE3CF06A49;
  v221 = v220 ^ __ROR8__(v219, 61);
  v222 = (__ROR8__(v220, 8) + v221) ^ 0x2275D4C73835399BLL;
  v223 = v222 ^ __ROR8__(v221, 61);
  v224 = __ROR8__(v222, 8);
  v225 = (((2 * (v224 + v223)) & 0xA7A0B07C9694CC4ELL) - (v224 + v223) + 0x2C2FA7C1B4B599D8) ^ 0xC980BD729A08A505;
  v226 = v225 ^ __ROR8__(v223, 61);
  v227 = __ROR8__(v225, 8);
  v228 = __ROR8__((((2 * (v227 + v226)) | 0x2346DAE56B9012EELL) - (v227 + v226) - 0x11A36D72B5C80977) ^ 0xD67EA484798DBE56, 8);
  v229 = (((2 * (v227 + v226)) | 0x2346DAE56B9012EELL) - (v227 + v226) - 0x11A36D72B5C80977) ^ 0xD67EA484798DBE56 ^ __ROR8__(v226, 61);
  v230 = (((2 * (v228 + v229)) & 0xBB5BA4656EBECE02) - (v228 + v229) - 0x5DADD232B75F6702) ^ 0xA740D6811724286;
  v231 = v230 ^ __ROR8__(v229, 61);
  v232 = __ROR8__(v230, 8);
  v233 = (((2 * (v232 + v231)) & 0x88B319A8D49099F8) - (v232 + v231) + 0x3BA6732B95B7B303) ^ 0x642B9F15362FB918;
  v234 = v233 ^ __ROR8__(v231, 61);
  v235 = __ROR8__(v233, 8);
  *(v199 + 11) = (((((v235 + v234) | 0x6605C89D7460A0E5) - ((v235 + v234) | 0x99FA37628B9F5F1ALL) - 0x6605C89D7460A0E6) ^ 0xA7C6004FD0A5E8CDLL) >> (8 * ((v199 + 11) & 7))) ^ 0x58;
  v236 = STACK[0xD18];
  v237 = *v3;
  v238 = *v8 & 0xFFFFFFFFFFFFFFF8;
  v239 = *(*v3 + ((((v236 + 12) & 0xBECED5F0) + ((v236 + 12) & 0x41312A08 | 0xBECED5F4) + 990098339) & v238));
  *(v2 + 1160) = v178;
  v240 = __ROR8__((v236 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v241 = (((v240 + v239) ^ 0x2C7973F2C3C819BCLL) - ((2 * ((v240 + v239) ^ 0x2C7973F2C3C819BCLL)) & 0x559A1FF580FDD134) + 0x2ACD0FFAC07EE89ALL) ^ 0xF2A22D419CE8CD41;
  v242 = v241 ^ __ROR8__(v239, 61);
  v243 = (__ROR8__(v241, 8) + v242) ^ 0x153242EE3CF06A49;
  v244 = v243 ^ __ROR8__(v242, 61);
  v245 = __ROR8__(v243, 8);
  v246 = (((2 * (v245 + v244)) & 0xD38E07CA5E257DCCLL) - (v245 + v244) - 0x69C703E52F12BEE7) ^ 0xB44D28DDE8D87882;
  v247 = v246 ^ __ROR8__(v244, 61);
  v248 = __ROR8__(v246, 8);
  v249 = __ROR8__((((2 * (v248 + v247)) | 0x7501B3F0D8184E4CLL) - (v248 + v247) + 0x457F260793F3D8DALL) ^ 0x5F2FC34B42B11BFBLL, 8);
  v250 = (((2 * (v248 + v247)) | 0x7501B3F0D8184E4CLL) - (v248 + v247) + 0x457F260793F3D8DALL) ^ 0x5F2FC34B42B11BFBLL ^ __ROR8__(v247, 61);
  v251 = (((2 * ((v249 + v250) ^ 0x4BAE23150CF78DD3)) & 0xD80DA219D6A895AELL) - ((v249 + v250) ^ 0x4BAE23150CF78DD3) - 0x6C06D10CEB544AD8) ^ 0x1F8AC410D4198FDALL;
  v252 = v251 ^ __ROR8__(v250, 61);
  v253 = (__ROR8__(v251, 8) + v252) ^ 0xA82620A559D2DA78;
  v254 = v253 ^ __ROR8__(v252, 61);
  v255 = (__ROR8__(v253, 8) + v254) ^ v5;
  v256 = v255 ^ __ROR8__(v254, 61);
  v257 = __ROR8__(v255, 8);
  *(v236 + 12) = (((((2 * (v257 + v256)) | 0x20EDF98D78A49BE0) - (v257 + v256) - 0x1076FCC6BC524DF0) ^ 0xD1B53414189705D8) >> (8 * ((v236 + 12) & 7))) ^ 0xF1;
  v258 = *(v237 + ((((v236 + 13) & 0xFFFFFFF8 ^ 0xFFC98A20) - 107211848 + ((2 * ((v236 + 13) & 0xFFFFFFF8)) | 0x6CEBBF)) & v238));
  v259 = __ROR8__((v236 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v260 = (((v258 + v259) | 0x561DEF246C8ED2BLL) - ((v258 + v259) | 0xFA9E210DB93712D4) - 0x561DEF246C8ED2CLL) ^ 0xF1778FBBD996D14CLL;
  v261 = v260 ^ __ROR8__(v258, 61);
  v262 = __ROR8__(v260, 8);
  v263 = (((v262 + v261) | 0xD777EE2150DC1FE2) - ((v262 + v261) | 0x288811DEAF23E01DLL) + 0x288811DEAF23E01DLL) ^ 0xC245ACCF6C2C75ABLL;
  v264 = v263 ^ __ROR8__(v261, 61);
  v265 = (__ROR8__(v263, 8) + v264) ^ 0x2275D4C73835399BLL;
  v266 = __ROR8__(v265, 8);
  v267 = v265 ^ __ROR8__(v264, 61);
  v268 = (((v266 + v267) | 0x93C82C8E943E0469) - ((v266 + v267) | 0x6C37D3716BC1FB96) + 0x6C37D3716BC1FB96) ^ 0x7667363DBA8338B4;
  v269 = __ROR8__(v268, 8);
  v270 = v268 ^ __ROR8__(v267, 61);
  v271 = (v269 + v270 - ((2 * (v269 + v270)) & 0x5C1EBFBAEFBBA9FELL) + 0x2E0F5FDD77DDD4FFLL) ^ 0xE9D2962BBB9863DELL;
  v272 = v271 ^ __ROR8__(v270, 61);
  v273 = (__ROR8__(v271, 8) + v272) ^ 0xA82620A559D2DA78;
  v274 = v273 ^ __ROR8__(v272, 61);
  v275 = __ROR8__(v273, 8);
  v276 = (((2 * (v275 + v274)) | 0x7CF32EE10CB67956) - (v275 + v274) + 0x4186688F79A4C355) ^ 0xE1F47B4E25C336B0;
  *(v236 + 13) = (((__ROR8__(v276, 8) + (v276 ^ __ROR8__(v274, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * ((v236 + 13) & 7))) ^ 0x82;
  v277 = STACK[0xD18];
  v278 = *v3;
  v279 = *v8 & 0xFFFFFFFFFFFFFFF8;
  v280 = *(*v3 + ((((v277 + 14) & 0x7C6DDA18) + ((v277 + 14) & 0x839225E0 | 0x7C6DDA18) + 2103750524) & v279));
  v281 = __ROR8__((STACK[0xD18] + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v282 = (((v281 + v280) | 0x9B0F78B9786A967ALL) - ((v281 + v280) | 0x64F0874687956985) + 0x64F0874687956985) ^ 0x6F1929F0E734AA1DLL;
  v283 = v282 ^ __ROR8__(v280, 61);
  v284 = (__ROR8__(v282, 8) + v283) ^ 0x153242EE3CF06A49;
  v285 = v284 ^ __ROR8__(v283, 61);
  v286 = __ROR8__(v284, 8);
  v287 = (((2 * (v286 + v285)) & 0x8B909BEB7C89D72ALL) - (v286 + v285) - 0x45C84DF5BE44EB96) ^ 0x984266CD798E2DF1;
  v288 = v287 ^ __ROR8__(v285, 61);
  v289 = (__ROR8__(v287, 8) + v288) ^ 0xE5AF1AB32EBD3CDDLL;
  v290 = v289 ^ __ROR8__(v288, 61);
  v291 = (__ROR8__(v289, 8) + v290) ^ 0xC7DDC9F6CC45B721;
  v292 = __ROR8__(v291, 8);
  v293 = v291 ^ __ROR8__(v290, 61);
  v294 = (v292 + v293) ^ 0xA82620A559D2DA78;
  v295 = v294 ^ __ROR8__(v293, 61);
  v296 = (__ROR8__(v294, 8) + v295) ^ v5;
  *(v277 + 14) = (((__ROR8__(v296, 8) + (v296 ^ __ROR8__(v295, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * ((v277 + 14) & 7))) ^ 0xA9;
  v297 = *(v278 + ((((((v277 + 15) & 0xFFFFFFF8) + 1338167229) ^ 0x1ADD0FA0) - 1892505030 + ((2 * (((v277 + 15) & 0xFFFFFFF8) + 1338167229)) & 0x35BA1F40)) & v279));
  v298 = (v297 + __ROR8__((v277 + 15) & 0xFFFFFFFFFFFFFFF8, 8)) ^ v4;
  v299 = v298 ^ __ROR8__(v297, 61);
  v300 = (__ROR8__(v298, 8) + v299) ^ 0x153242EE3CF06A49;
  v301 = v300 ^ __ROR8__(v299, 61);
  v302 = (__ROR8__(v300, 8) + v301) ^ 0x2275D4C73835399BLL;
  v303 = __ROR8__(v302, 8);
  v304 = v302 ^ __ROR8__(v301, 61);
  v305 = (v303 + v304 - ((2 * (v303 + v304)) & 0x277A45B4F197FD48) + 0x13BD22DA78CBFEA4) ^ 0xF61238695676C279;
  v306 = v305 ^ __ROR8__(v304, 61);
  v307 = __ROR8__(v305, 8);
  v308 = (v307 + v306 - ((2 * (v307 + v306)) & 0xF286AB7D849430CALL) + 0x794355BEC24A1865) ^ 0xBE9E9C480E0FAF44;
  v309 = v308 ^ __ROR8__(v306, 61);
  v310 = (__ROR8__(v308, 8) + v309) ^ 0xA82620A559D2DA78;
  v311 = v310 ^ __ROR8__(v309, 61);
  v312 = __ROR8__(v310, 8);
  v313 = (((v312 + v311) | 0x96C833319DCD63ALL) - ((v312 + v311) | 0xF6937CCCE62329C5) - 0x96C833319DCD63BLL) ^ 0x56E16F0DBA44DC21;
  *(v277 + 15) = (((__ROR8__(v313, 8) + (v313 ^ __ROR8__(v311, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * ((v277 + 15) & 7))) ^ 0xCF;
  STACK[0xA68] = *(v6 + 8 * v0);
  return (*(v6 + 8 * (v0 ^ 0x170C)))();
}

uint64_t sub_100A9E06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  LODWORD(STACK[0x630]) = v8;
  v13 = (((1645 * v8 + 2113825) % 0xA88u) ^ 0x6E7CDCFFABE7DFFFLL) + 2 * ((1645 * v8 + 2113825) % 0xA88u) + STACK[0x638];
  v14 = *STACK[0x660];
  v15 = *v12;
  v16 = (v13 + 1410867201 + *(v14 + (v15 & STACK[0x648])) - 963544004);
  v17 = *v10 ^ v11;
  LODWORD(v13) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v16 & v17)) ^ *(v13 + 0x4BDFD9A41AFB05ECLL) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v16 + 2) & v17)) ^ (76 * (v13 + 1));
  LODWORD(v13) = 1645 * (((v13 ^ 0xDA6E912C) - 224228717) ^ ((v13 ^ 0x91102B0E) - 1176751951) ^ ((v13 ^ 0x4B7EBA52) + 1672651245)) - 663241763;
  v18 = STACK[0x640] + 4 * ((a7 + 551 * v8) % (((v9 - 7769) | 0x48B0) ^ 0x54B0u));
  v19 = (*(v14 + (v15 & STACK[0x658])) + 673210726 + v18);
  v20 = *(((v13 % 0xA88) ^ 0xFFBFFBFFBD7B4BFFLL) + STACK[0x638] + ((2 * (v13 % 0xA88)) & 0x17FE) - 0x4563455BF6986614);
  *(v18 - 0x34EE34220E8AC3B8) = (v18 * a8) ^ 0xA32579C9 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v19 & v17)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v19 + 2) & v17));
  return (*(STACK[0x668] + 8 * (v9 + 6002)))(v20);
}

uint64_t sub_100A9E2CC@<X0>(uint64_t a1@<X8>)
{
  v5[312] = a1;
  v5[181] = v3;
  LODWORD(STACK[0x177C]) = v1;
  LODWORD(STACK[0xB08]) = 0;
  *(v2 + 632) = 0x55A8D952E5D4689ELL;
  v8 = (*(v7 + 8 * (v4 + 9181)))(128);
  v5[21] = v8 + v6;
  return (*(v7 + 8 * (((v8 == 0) * ((v4 + 4781) ^ v4 ^ 0x3366)) ^ v4)))();
}

uint64_t sub_100A9E41C@<X0>(uint64_t a1@<X0>, unsigned int a2@<W2>, int a3@<W3>, int a4@<W8>)
{
  LODWORD(STACK[0x2630]) = a3;
  STACK[0x3420] = v4;
  LODWORD(STACK[0x1C20]) = STACK[0x32D8];
  v8 = a4 - 314;
  v9 = a4 + 3124;
  if (v5 >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = v5;
  }

  if (v5 <= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = v5;
  }

  STACK[0x39C0] = v11;
  return (*(v7 + 8 * ((58 * (v10 == (v8 ^ 0x5164))) ^ v9)))(a1, v6);
}

uint64_t sub_100A9E478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x2AC8]) = 0;
  LODWORD(STACK[0x2AB0]) = 0;
  LODWORD(STACK[0x2AA8]) = 0;
  LODWORD(STACK[0x2AF0]) = 0;
  LODWORD(STACK[0x2B00]) = 0;
  LODWORD(STACK[0x2AE8]) = 0;
  LODWORD(STACK[0x2AE0]) = 0;
  LODWORD(STACK[0x2B80]) = 0;
  LODWORD(STACK[0x3B18]) = 0;
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
  v8 = STACK[0x2238] == 52;
  STACK[0x3AF0] = (v6 + 10006);
  LODWORD(STACK[0x3B08]) = (v6 + 5380) | 0x1212;
  v9 = *(v7 + 8 * ((1579 * ((v8 ^ (v6 - 1)) & 1)) ^ v6));
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  v10 = STACK[0x1954];
  LODWORD(STACK[0x2B70]) = STACK[0x1954];
  LODWORD(STACK[0x3438]) = v10;
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  v11 = STACK[0x1C28];
  LODWORD(STACK[0x2B88]) = STACK[0x1C28];
  LODWORD(STACK[0x3B00]) = v11;
  v12 = STACK[0x32E8];
  LODWORD(STACK[0x3268]) = STACK[0x32E8];
  LODWORD(STACK[0x3488]) = v12;
  LODWORD(STACK[0x3280]) = v12;
  LODWORD(STACK[0x3290]) = v12;
  v13 = STACK[0x1A78];
  LODWORD(STACK[0x3298]) = STACK[0x1A78];
  LODWORD(STACK[0x3288]) = v13;
  v14 = STACK[0x2500];
  LODWORD(STACK[0x2B40]) = STACK[0x2500];
  LODWORD(STACK[0x3998]) = v14;
  LODWORD(STACK[0x3AE8]) = v14;
  v15 = STACK[0x21F4];
  LODWORD(STACK[0x2B60]) = STACK[0x21F4];
  LODWORD(STACK[0x3AE0]) = v15;
  v16 = STACK[0x3810];
  LODWORD(STACK[0x2B28]) = STACK[0x3810];
  LODWORD(STACK[0x3260]) = v16;
  v17 = STACK[0x3318];
  LODWORD(STACK[0x2B98]) = STACK[0x3318];
  LODWORD(STACK[0x3980]) = 72;
  LODWORD(STACK[0x2BB0]) = 53;
  LODWORD(STACK[0x3988]) = 51;
  v18 = STACK[0x4A8];
  v19 = STACK[0x2928];
  STACK[0x3D78] = STACK[0x2928];
  LODWORD(STACK[0x3D30]) = 1;
  LODWORD(STACK[0x3D38]) = 1;
  LODWORD(STACK[0x3D58]) = 1;
  LODWORD(STACK[0x3D28]) = 1;
  LODWORD(STACK[0x3D70]) = 1;
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
  LODWORD(STACK[0x39A0]) = STACK[0x1204];
  v20 = STACK[0x1A90];
  LODWORD(STACK[0x3D48]) = STACK[0x1A90];
  LODWORD(STACK[0x3CE8]) = STACK[0x28CC];
  LODWORD(STACK[0x36B8]) = STACK[0x2134];
  LODWORD(STACK[0x2B30]) = STACK[0x3688];
  v21 = STACK[0x1BC8];
  LODWORD(STACK[0x39E8]) = STACK[0x1BC8];
  STACK[0x32E0] = v19;
  STACK[0x3D50] = STACK[0x448];
  STACK[0x3AD8] = v18;
  STACK[0x32D8] = STACK[0x1BE8];
  LODWORD(STACK[0x3278]) = v21;
  LODWORD(STACK[0x3270]) = STACK[0x2B20];
  LODWORD(STACK[0x3258]) = v20;
  LODWORD(STACK[0x32D0]) = STACK[0x3D90];
  return v9(a1, 0, a3, v18, a5, a6, v17);
}

uint64_t sub_100A9E7E8@<X0>(int a1@<W0>, unsigned int a2@<W8>)
{
  v6 = 1534937323 * ((0x3D3726634510C5B2 - ((v5 - 240) | 0x3D3726634510C5B2) + ((v5 - 240) | 0xC2C8D99CBAEF3A4DLL)) ^ 0xFB0515E7C01C10ALL);
  *(v5 - 224) = v6;
  *(v5 - 220) = (a1 - 755447870) ^ v6;
  STACK[0x25D0] = v6;
  STACK[0x25E8] = v6 + a2;
  *(v5 - 208) = ((a1 - 755447870) ^ 0x6D) + v6;
  *(v5 - 232) = a1 - 755447870 - v6 + ((a1 - 755447870) ^ 0xAB677630) + v2 + v3 - 1292;
  *(v5 - 228) = v6 + a1 - 723214290;
  v7 = (*(v4 + 8 * (a1 + 2120268328)))(v5 - 240);
  return (*(v4 + 8 * *(v5 - 204)))(v7);
}

uint64_t sub_100A9E8DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  LODWORD(v66) = (a6 - 76);
  HIDWORD(a48) = (42 * (v60 ^ 0x39) + v62 - 17);
  HIDWORD(v66) = (v61 - 30);
  return (*(a60 + 8 * (v60 ^ (((v63 + v64 - 7) > 0xFFFFFFF7) | (((v63 + v64 - 7) > 0xFFFFFFF7) << 6)))))(v60 ^ 0x78Fu, a2, a3, (a4 - 10), a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, v66);
}

uint64_t sub_100A9E98C(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  STACK[0x32D8] = a7;
  STACK[0x32F0] = a5;
  v9 = 4647 * (BYTE2(a2) ^ 0xFE) + 13106230 + 44 * (((v7 - 59) | 0x4122) ^ 0x5A77) + 1894;
  v10 = STACK[0x3AE0];
  v11 = *(STACK[0x3AE0] + (v9 - 6784 * ((81037119 * (v9 >> 7)) >> 32))) - 71;
  v12 = *(STACK[0x3AE0] + 4647 * (BYTE3(a2) ^ 0xC4) + 14331348 - 6784 * (((1266205 * (4647 * (BYTE3(a2) ^ 0xC4) + 14331348)) >> 32) >> 1)) + 117;
  v13 = 4647 * ((BYTE3(a3) + 111) ^ 0x36) + 17937420;
  v14 = *(STACK[0x3AE0] + v13 - 6784 * (((1266205 * v13) >> 32) >> 1)) ^ 0xE;
  LODWORD(STACK[0x32A8]) = (v14 >> 3) | (32 * v14);
  v15 = v11 ^ (v11 << 6) ^ (4 * v11);
  v16 = 4647 * ((BYTE5(a3) + 111) ^ 0x1C) + 4767822;
  v17 = 4647 * (((a2 >> 25) & 0x80 | (a2 >> 33) & 0x7F) ^ 0x40) + 15539568;
  v18 = v17 - 6784 * (((1266205 * v17) >> 32) >> 1);
  v19 = HIBYTE(a3);
  v21 = v16 - 6784 * (((1266205 * v16) >> 32) >> 1);
  v22 = STACK[0x3AF0];
  v24 = *(STACK[0x3AF0] + 132);
  v25 = v12 ^ 0x12 ^ (v12 >> 2) & 0x12;
  v26 = *(v10 + v18);
  v27 = *(v10 + v21) ^ 0xFFFFFFE3;
  LODWORD(STACK[0x32D0]) = (v27 >> 3) | (32 * v27);
  LODWORD(STACK[0x3260]) = v26;
  LODWORD(STACK[0x32A0]) = 97 * (v26 ^ 0xFFFFFFA2);
  v28 = 4647 * (v19 ^ 0x9A) + 25186740 - 6784 * (((1266205 * (4647 * (v19 ^ 0x9A) + 25186740)) >> 32) >> 1);
  v29 = *(v10 + 4647 * (v24 ^ 0xC4) + 14331348 - 6784 * (((1266205 * (4647 * (v24 ^ 0xC4u) + 14331348)) >> 32) >> 1)) + 117;
  LODWORD(v19) = (v22[134] << 8) | (v22[135] << 16) | v22[133];
  v30 = ((v29 ^ 0x12 ^ (v29 >> 2) & 0x12) + 26) | (v19 << 8);
  v31 = 4647 * ((v22[v30 + 138] + 111) ^ 0x36) + 17937420;
  v34 = v19 >= 4;
  LOBYTE(v31) = *(v10 + v31 - 6784 * (((1266205 * v31) >> 32) >> 1)) ^ 0xE;
  v32 = (v22[v30 + 139] << 16) | (((v31 >> 3) | (32 * v31)) << 8) | v22[v30 + 137];
  v33 = v22[v30 + 136] | (v32 << 8);
  v34 = v34 || v32 >= 4;
  v35 = !v34;
  v36 = *(&off_101353600 + (v7 ^ 0x1EE5));
  STACK[0x3308] = *(&off_101353600 + v7 - 6126);
  LODWORD(STACK[0x3288]) = (v15 ^ 0xFFFFFFFE) + 26;
  v37 = *(v10 + 4647 * (BYTE4(a3) ^ 0x9A) + 25186740 - 6784 * (((1266205 * (4647 * (BYTE4(a3) ^ 0x9Au) + 25186740)) >> 32) >> 1));
  v38 = *(v10 + 4647 * (BYTE6(a2) ^ 0xB8) + 9544938 - 6784 * (((1266205 * (4647 * (BYTE6(a2) ^ 0xB8u) + 9544938)) >> 32) >> 1));
  LODWORD(STACK[0x3290]) = v25 + 26;
  v39 = *(v10 + v28);
  LODWORD(STACK[0x3298]) = (v37 ^ 0xFFFFFFC3) + 85;
  LODWORD(STACK[0x32C0]) = ((v38 - 87) ^ 0xFFFFFFFB) + 85;
  LODWORD(STACK[0x32E8]) = (v39 ^ 0xFFFFFFC3) + 85;
  v40 = *(v8 + 8 * ((104 * v35) ^ v7));
  STACK[0x3270] = a2 >> 8;
  STACK[0x3278] = a3 >> 8;
  STACK[0x32B0] = a2 >> 40;
  STACK[0x3280] = a3 >> 16;
  STACK[0x32E0] = a2;
  STACK[0x32C8] = HIBYTE(a2);
  STACK[0x32F8] = a3;
  STACK[0x32B8] = HIWORD(a3);
  LODWORD(STACK[0x3540]) = v33;
  LODWORD(STACK[0x3268]) = v30;
  STACK[0x3300] = v36 - 4;
  return v40();
}

uint64_t sub_100A9ECFC()
{
  *(v3 - 112) = *v1;
  *(v3 - 111) = v1[1];
  *(v3 - 110) = v1[2];
  *(v3 - 109) = v1[3];
  *(v3 - 108) = v1[4];
  *(v3 - 107) = v1[5];
  *(v3 - 106) = v1[6];
  *(v3 - 105) = v1[7];
  *(v3 - 104) = v1[8];
  *(v3 - 103) = v1[9];
  *(v3 - 102) = v1[10];
  *(v3 - 101) = v1[11];
  *(v3 - 100) = v1[12];
  *(v3 - 99) = v1[13];
  *(v3 - 98) = v1[14];
  *(v3 - 97) = v1[15];
  return (*(v2 + 8 * v0))();
}

uint64_t sub_100A9ED94@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v15 = STACK[0x4264];
  v16 = v11 + v8 + v7 + ((5590 * (LODWORD(STACK[0x4264]) ^ 0x41D2)) ^ 0xF9D1D280);
  v17 = *(*v13 + ((*v14 & ((v16 & 0xFFFFFFF8 ^ 0x3EC03064) - 1156425421 + ((2 * (v16 & 0xFFFFFFF8)) & 0x7D8060C0))) & 0xFFFFFFFFFFFFFFF8));
  v18 = __ROR8__(v16 & 0xFFFFFFFFFFFFFFF8, 8);
  v19 = (v9 - ((v18 + v17) | v9) + ((v18 + v17) | 0x8D9AB6222E6EC89CLL)) ^ 0x798CE76BB130F4FBLL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ v10;
  v22 = __ROR8__(v21, 8);
  v23 = v21 ^ __ROR8__(v20, 61);
  v24 = (((2 * (v22 + v23)) & 0x19E3889B5FE47DEALL) - (v22 + v23) + a4) ^ a5;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ a6;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ a3;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ a1;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = v8 - 1;
  v34 = ((v12 | (2 * (v32 + v31))) - (v32 + v31) + 0x126C470BF19E376ELL) ^ 0xB21E54CAADF9C289;
  *v16 = *(a7 + v33) ^ (((__ROR8__(v34, 8) + (v34 ^ __ROR8__(v31, 61))) ^ a2) >> (8 * (v16 & 7u))) ^ 0xF;
  return (*(STACK[0x57D8] + 8 * ((964 * (v33 == 0)) ^ v15)))();
}

uint64_t sub_100A9EF3C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  a9[1319] = a1[19];
  a9[1318] = a1[18];
  a9[1317] = a1[17];
  a9[1316] = a1[16];
  a9[1315] = a1[15];
  a9[1314] = a1[14];
  a9[1313] = a1[13];
  a9[1312] = a1[12];
  a9[1311] = a1[11];
  a9[1310] = a1[10];
  a9[1309] = a1[9];
  a9[1308] = a1[8];
  a9[1307] = a1[7];
  a9[1306] = a1[6];
  a9[1305] = a1[5];
  a9[1304] = a1[4];
  a9[1303] = a1[3];
  a9[1302] = a1[2];
  a9[1301] = a1[1];
  *v10 = *a1;
  return (*(a8 + 8 * ((((v9 + 314189029) ^ 0x12BA2456) + v9) ^ (15819 * (v9 == -728785804)))))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100A9F0C4@<X0>(int a1@<W8>)
{
  STACK[0x3608] = v2;
  LODWORD(STACK[0x3AC8]) = v3;
  LODWORD(STACK[0x3850]) = v1;
  v4 = *(STACK[0x3AC0] + 8 * (a1 - 5472));
  STACK[0x35A8] = STACK[0x3A50];
  STACK[0x35A0] = STACK[0x3A58];
  return v4();
}

uint64_t sub_100A9F100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17)
{
  a16 = (v17 + 1717166779) ^ (1964904101 * ((&a16 & 0x8830750D | ~(&a16 | 0x8830750D)) ^ 0x8DED6176));
  a17 = a9;
  v19 = (*(v18 + 8 * (v17 ^ 0x6D30)))(&a16);
  return (*(v18 + 8 * ((13021 * ((v17 - 1562586002) > 0xDE651C20)) ^ (v17 - 9913 + ((v17 - 3351) | 0x2280)))))(v19);
}

uint64_t sub_100A9F260()
{
  LODWORD(STACK[0xEC0]) = v0;
  v2 = SLOWORD(STACK[0x1D2E]);
  STACK[0x1900] = STACK[0x1D30];
  return (*(v1 + 8 * ((24859 * (v2 == -2993)) ^ 0x168B)))();
}

uint64_t sub_100A9F2D8()
{
  v4 = v2 >> (v0 + 73);
  v5 = STACK[0x3D18];
  v5[207] = v2;
  v5[205] = BYTE2(v2);
  v6 = v2 >> ((3 * (v0 ^ 0x19)) ^ 0xEA);
  v7 = STACK[0x3E18];
  v5[206] = v4;
  v5[204] = v6;
  return (*(v3 + 8 * ((83 * (v7 <= v1)) ^ v0)))();
}

uint64_t sub_100A9F33C()
{
  LODWORD(STACK[0x1B70]) = -143155735;
  STACK[0x1310] = STACK[0x1310] - 2174730796u + ((v0 - 1008743433) & 0xBDBFDA5F);
  return (*(v1 + 8 * v0))();
}

uint64_t sub_100A9F394()
{
  v0 = LOBYTE(STACK[0xDB4]);
  LODWORD(STACK[0x244]) = v0;
  v1 = LOBYTE(STACK[0x304]) ^ v0 ^ 0xFFFFFFEB ^ (74 * (LOBYTE(STACK[0x304]) ^ v0) * (LOBYTE(STACK[0x304]) ^ v0));
  v2 = LOBYTE(STACK[0xDB9]);
  LODWORD(STACK[0x248]) = v2;
  v3 = LOBYTE(STACK[0x309]) ^ v2;
  v4 = LOBYTE(STACK[0x303]);
  v5 = v4 & 0x20;
  v6 = STACK[0x2E4];
  if ((STACK[0x2E4] & 0x200000) != 0)
  {
    v7 = 224;
  }

  else
  {
    v7 = 32;
  }

  v8 = LOBYTE(STACK[0xDB3]);
  if ((v5 & v8) != 0)
  {
    v5 = -v5;
  }

  v9 = (v5 + v8) ^ v4;
  v10 = LOBYTE(STACK[0xDBE]);
  v11 = LOBYTE(STACK[0x30E]) ^ v10;
  LODWORD(STACK[0x2F4]) = (16 * (v3 ^ 0xFFFFFFA6 ^ (-102 * v3 * v3))) | (2 * ((v3 ^ 0xFFFFFFA6 ^ (-102 * v3 * v3)) & 3));
  v12 = LOBYTE(STACK[0x301]);
  LODWORD(STACK[0x2F0]) = (16 * v1) & 0x80 | (((32 * v1) | (4 * (v1 & 3))) >> 1);
  v13 = LOBYTE(STACK[0xDB1]);
  v14 = STACK[0x30F];
  v15 = LOBYTE(STACK[0xDBF]);
  LODWORD(STACK[0x290]) = (16 * (v9 ^ 0x25 ^ (14 * v9 * v9))) | (2 * ((v9 ^ 0x25 ^ (14 * v9 * v9)) & 3));
  v16 = v14 & 0x3F;
  v17 = LOBYTE(STACK[0x306]);
  v18 = v13;
  LODWORD(STACK[0x23C]) = v13;
  v19 = LOBYTE(STACK[0xDB5]);
  v20 = LOBYTE(STACK[0xDB6]);
  LODWORD(STACK[0x218]) = v15;
  v21 = LOBYTE(STACK[0x305]) ^ v19;
  v22 = v19;
  v23 = LOBYTE(STACK[0xDBA]);
  v24 = v13 ^ v12 ^ 0x1D ^ (-86 * (v13 ^ v12) * (v13 ^ v12));
  v25 = (46 * (v16 ^ v15) * (v16 ^ v15)) ^ v16 ^ v15;
  v26 = LOBYTE(STACK[0x30A]) ^ v23;
  LODWORD(STACK[0x2C0]) = (16 * v24) | (2 * (v24 & 3));
  LODWORD(STACK[0x2CC]) = (16 * (v11 ^ (6 * v11 * v11) ^ 0xFFFFFFB1)) | (2 * ((v11 ^ (6 * v11 * v11) ^ 0xFFFFFFB1) & 3));
  v27 = v20 ^ v17 ^ 0x53 ^ (126 * (v20 ^ v17) * (v20 ^ v17));
  v28 = LOBYTE(STACK[0x30B]);
  v29 = LOBYTE(STACK[0xDB8]);
  v30 = LOBYTE(STACK[0xDBB]);
  v31 = (-118 * v26 * v26) ^ v26;
  LODWORD(STACK[0x2B0]) = v31 ^ 0xFFFFFF97;
  LODWORD(STACK[0x2BC]) = (v31 ^ 0xFFFFFF97 | 3) - (v31 ^ 0x14);
  v32 = LOBYTE(STACK[0x308]);
  LODWORD(STACK[0x2C4]) = (16 * v25) | (2 * (v25 & 3));
  v33 = v30 ^ v28;
  LODWORD(STACK[0x2C8]) = (16 * v27) | (2 * (v27 & 3));
  v34 = -58 * v33 * v33;
  v35 = v33 ^ 0x25;
  v36 = LOBYTE(STACK[0xDB7]);
  v37 = v35 ^ v34;
  v38 = (v32 + v29 - 2 * (v32 & v29)) ^ 0xFFFFFFD2 ^ (-34 * (v32 + v29 - 2 * (v32 & v29)) * (v32 + v29 - 2 * (v32 & v29)));
  LODWORD(STACK[0x29C]) = (16 * (v21 ^ 0xFFFFFFDE ^ (-26 * v21 * v21))) | (2 * ((v21 ^ 0xFFFFFFDE ^ (-26 * v21 * v21)) & 3));
  LODWORD(STACK[0x278]) = (16 * v38) | (2 * (v38 & 3));
  v39 = LOBYTE(STACK[0x307]) ^ v36;
  LODWORD(STACK[0x220]) = v36;
  LODWORD(STACK[0x268]) = (16 * v37) | (2 * (v37 & 3));
  v40 = LOBYTE(STACK[0xDB0]);
  LODWORD(STACK[0x258]) = (-126 * (v40 ^ LOBYTE(STACK[0x300])) * (v40 ^ LOBYTE(STACK[0x300]))) ^ v40 ^ LOBYTE(STACK[0x300]);
  v41 = LOBYTE(STACK[0xDBD]);
  v42 = v41 ^ LOBYTE(STACK[0x30D]) ^ (10 * (v41 ^ LOBYTE(STACK[0x30D])) * (v41 ^ LOBYTE(STACK[0x30D]))) ^ 0x13;
  LODWORD(STACK[0x2A0]) = (16 * (v39 ^ 0x6D ^ (-102 * v39 * v39))) | (2 * ((v39 ^ 0x6D ^ (-102 * v39 * v39)) & 3));
  v43 = LOBYTE(STACK[0xDBC]);
  v44 = v43 ^ LOBYTE(STACK[0x30C]);
  LODWORD(STACK[0x228]) = v43;
  LODWORD(STACK[0x294]) = (16 * v42) | (2 * (v42 & 3));
  v45 = LOBYTE(STACK[0xDB2]);
  LODWORD(STACK[0x288]) = v45 ^ LOBYTE(STACK[0x302]) ^ 0xFFFFFF95 ^ (-78 * (v45 ^ LOBYTE(STACK[0x302])) * (v45 ^ LOBYTE(STACK[0x302])));
  v46 = STACK[0x2E0];
  v47 = (v29 ^ HIWORD(LODWORD(STACK[0x2E0]))) & 0xF | ((v29 ^ HIWORD(LODWORD(STACK[0x2E0]))) << 8);
  LODWORD(STACK[0x260]) = (16 * (v44 ^ 0xFFFFFFCD ^ (126 * v44 * v44))) | (2 * ((v44 ^ 0xFFFFFFCD ^ (126 * v44 * v44)) & 3));
  LODWORD(STACK[0x240]) = (16 * (v47 ^ 0x1A ^ (78 * v47 * v47))) | (2 * ((v47 ^ 0x1A ^ (78 * v47 * v47)) & 3));
  v48 = STACK[0x2EC];
  v49 = v36 ^ (LODWORD(STACK[0x2EC]) >> 8);
  LODWORD(STACK[0x2AC]) = HIBYTE(v46);
  LODWORD(STACK[0x230]) = (16 * (v40 ^ 0x5A ^ (-70 * v40 * v40))) | (2 * ((v40 ^ 0x5A ^ (-70 * v40 * v40)) & 3));
  v50 = (-50 * v49 * v49) ^ v49;
  LODWORD(STACK[0x250]) = v50 ^ 0x52;
  LODWORD(STACK[0x24C]) = (v50 ^ 0x52 | 3) ^ v50;
  v51 = (-122 * (v30 ^ HIWORD(v48)) * (v30 ^ HIWORD(v48))) ^ v30 ^ HIWORD(v48);
  v52 = v43 ^ HIBYTE(v46) ^ (-110 * (v43 ^ HIBYTE(v46)) * (v43 ^ HIBYTE(v46))) ^ 0xFFFFFFE7;
  LODWORD(STACK[0x234]) = (16 * v52) | (2 * (v52 & 3));
  LODWORD(STACK[0x2A8]) = HIBYTE(v6);
  v53 = v10 ^ HIBYTE(v6) ^ 0xFFFFFFDE ^ (102 * (v10 ^ HIBYTE(v6)) * (v10 ^ HIBYTE(v6)));
  LODWORD(STACK[0x22C]) = (16 * v51) | (2 * (v51 & 3));
  v54 = STACK[0x2DC];
  v55 = v18 & 0xF ^ LODWORD(STACK[0x2DC]) ^ (10 * (v18 & 0xF ^ LODWORD(STACK[0x2DC])) * (v18 & 0xF ^ LODWORD(STACK[0x2DC]))) ^ 0x27;
  LODWORD(STACK[0x224]) = (16 * v53) | (2 * (v53 & 3));
  LODWORD(STACK[0x2B4]) = HIBYTE(v48);
  v56 = v15 ^ HIBYTE(v48) ^ 0xFFFFFFE9 ^ (-78 * (v15 ^ HIBYTE(v48)) * (v15 ^ HIBYTE(v48)));
  v57 = v22;
  v58 = v22 ^ (v54 >> 8) ^ 0xFFFFFF9D ^ (-102 * (v22 ^ (v54 >> 8)) * (v22 ^ (v54 >> 8)));
  LODWORD(STACK[0x2A4]) = HIBYTE(v54);
  v59 = v41 ^ HIBYTE(v54) ^ 0x79 ^ (58 * (v41 ^ HIBYTE(v54)) * (v41 ^ HIBYTE(v54)));
  v60 = (16 * v55) | (2 * (v55 & 3));
  LODWORD(STACK[0x238]) = (16 * v58) | (2 * (v58 & 3));
  LODWORD(STACK[0x298]) = v7 + HIWORD(v6);
  LODWORD(STACK[0x21C]) = (16 * v56) | (2 * (v56 & 3));
  LOBYTE(v22) = (16 * v59) | (2 * (v59 & 3));
  v61 = (-122 * (v20 ^ (v6 >> 8)) * (v20 ^ (v6 >> 8))) ^ v20 ^ (v6 >> 8);
  LOBYTE(v56) = v23 ^ (v7 + BYTE2(v6)) ^ 0x71 ^ (-106 * (v23 ^ (v7 + BYTE2(v6))) * (v23 ^ (v7 + BYTE2(v6))));
  v62 = (16 * v56) | (2 * (v56 & 3));
  LOBYTE(v56) = v45 ^ v6;
  v63 = STACK[0x244];
  v64 = LODWORD(STACK[0x244]) ^ (v46 >> 8) ^ 0x41 ^ (-126 * (LODWORD(STACK[0x244]) ^ (v46 >> 8)) * (LODWORD(STACK[0x244]) ^ (v46 >> 8)));
  v65 = v8 ^ v48 ^ 0x99 ^ (22 * (v8 ^ v48) * (v8 ^ v48));
  LOBYTE(v46) = (16 * v61) | (2 * (v61 & 3));
  LOBYTE(v10) = LOBYTE(STACK[0x31E]) ^ v10;
  LODWORD(STACK[0x2B8]) = HIWORD(v54);
  v66 = STACK[0x248];
  v67 = LODWORD(STACK[0x248]) ^ HIWORD(v54) ^ 0xFFFFFF92 ^ (50 * (LODWORD(STACK[0x248]) ^ HIWORD(v54)) * (LODWORD(STACK[0x248]) ^ HIWORD(v54)));
  LOBYTE(v59) = (16 * v65) | (2 * (v65 & 3));
  LOBYTE(v55) = (16 * ((-14 * v56 * v56) ^ v56)) | (2 * (((-14 * v56 * v56) ^ v56) & 3));
  LOBYTE(v48) = (16 * v64) | (2 * (v64 & 3));
  v68 = (16 * v67) | (2 * (v67 & 3));
  LOBYTE(v40) = LOBYTE(STACK[0x310]) ^ v40 ^ 0x55 ^ (102 * (LOBYTE(STACK[0x310]) ^ v40) * (LOBYTE(STACK[0x310]) ^ v40));
  LOBYTE(v52) = v29 ^ LOBYTE(STACK[0x318]);
  LOBYTE(v64) = (16 * ((78 * v10 * v10) ^ v10)) | (2 * (((78 * v10 * v10) ^ v10) & 3));
  LODWORD(STACK[0x244]) = v63 ^ LOBYTE(STACK[0x314]) ^ 0xFFFFFFEB ^ (-34 * (v63 ^ LOBYTE(STACK[0x314])) * (v63 ^ LOBYTE(STACK[0x314])));
  LOBYTE(v63) = LOBYTE(STACK[0x313]) ^ v8;
  v69 = (16 * v40) | (2 * (v40 & 3));
  LOBYTE(v40) = (16 * (v52 ^ 0x95 ^ (-110 * v52 * v52))) | (2 * ((v52 ^ 0x95 ^ (-110 * v52 * v52)) & 3));
  LOBYTE(v10) = v66 ^ LOBYTE(STACK[0x319]) ^ 0x9A ^ (-102 * (v66 ^ LOBYTE(STACK[0x319])) * (v66 ^ LOBYTE(STACK[0x319])));
  LOBYTE(v23) = v23 ^ LOBYTE(STACK[0x31A]) ^ (66 * (v23 ^ LOBYTE(STACK[0x31A])) * (v23 ^ LOBYTE(STACK[0x31A]))) ^ 0xC2;
  LOBYTE(v36) = (16 * (v63 ^ (22 * v63 * v63) ^ 0xF3)) | (2 * ((v63 ^ (22 * v63 * v63) ^ 0xF3) & 3));
  LOBYTE(v52) = (16 * v10) | (2 * (v10 & 3));
  LOBYTE(v56) = (82 * (v20 ^ LOBYTE(STACK[0x316])) * (v20 ^ LOBYTE(STACK[0x316]))) ^ v20 ^ LOBYTE(STACK[0x316]);
  LOBYTE(v10) = (16 * v56) | (2 * (v56 & 3));
  LOBYTE(v56) = v30 ^ LOBYTE(STACK[0x31B]) ^ 0x56 ^ (-42 * (v30 ^ LOBYTE(STACK[0x31B])) * (v30 ^ LOBYTE(STACK[0x31B])));
  LOBYTE(v29) = v57 ^ LOBYTE(STACK[0x315]) ^ 0x52 ^ (50 * (v57 ^ LOBYTE(STACK[0x315])) * (v57 ^ LOBYTE(STACK[0x315])));
  v70 = LODWORD(STACK[0x218]) ^ LOBYTE(STACK[0x31F]);
  LOBYTE(v63) = (16 * v56) | (2 * (v56 & 3));
  v71 = LOBYTE(STACK[0x31D]) ^ v41;
  LODWORD(STACK[0x248]) = -74 * v71 * v71;
  LOBYTE(v30) = v70 ^ (2 * v70 * v70) ^ 0x46;
  LOBYTE(v70) = v45 ^ LOBYTE(STACK[0x312]) ^ 0x43 ^ (-70 * (v45 ^ LOBYTE(STACK[0x312])) * (v45 ^ LOBYTE(STACK[0x312])));
  v72 = LOBYTE(STACK[0x317]) ^ LODWORD(STACK[0x220]);
  LOBYTE(v45) = (16 * v70) | (2 * (v70 & 3));
  v73 = LODWORD(STACK[0x228]) ^ LOBYTE(STACK[0x31C]);
  LOBYTE(STACK[0xDD4]) = LODWORD(STACK[0x278]) | 1;
  LOBYTE(STACK[0xDB2]) = LODWORD(STACK[0x290]) | 1;
  LOBYTE(STACK[0xDD7]) = LODWORD(STACK[0x268]) | 1;
  v74 = (2 * ((LOBYTE(STACK[0x258]) - 110) & 3)) | (16 * (LOBYTE(STACK[0x258]) - 110 - ((2 * LOBYTE(STACK[0x258])) & 4)));
  LOBYTE(STACK[0xDD3]) = LOBYTE(STACK[0x230]) | 1;
  LOBYTE(STACK[0xDD9]) = v74 | 1;
  LOBYTE(STACK[0xDB1]) = v60 | 1;
  LOBYTE(STACK[0xDD5]) = LODWORD(STACK[0x2C0]) | 1;
  LOBYTE(STACK[0xDC1]) = v40 | 1;
  LOBYTE(STACK[0xDB3]) = v22 | 1;
  v75 = 16 * LODWORD(STACK[0x2B0]);
  LOBYTE(v66) = ((2 * LOBYTE(STACK[0x2BC])) | 1) ^ v75;
  v76 = v75 & (2 * LODWORD(STACK[0x2BC]));
  LOBYTE(STACK[0xDC3]) = LODWORD(STACK[0x2F0]) | 1;
  LOBYTE(STACK[0xDDC]) = LODWORD(STACK[0x234]) | 1;
  LOBYTE(STACK[0xDBB]) = v66 + 2 * v76;
  LOBYTE(STACK[0xDB5]) = LODWORD(STACK[0x22C]) | 1;
  LOBYTE(STACK[0xDB7]) = LODWORD(STACK[0x29C]) | 1;
  LOBYTE(STACK[0xDD6]) = LODWORD(STACK[0x224]) | 1;
  LOBYTE(STACK[0xDC5]) = LODWORD(STACK[0x240]) | 1;
  LOBYTE(STACK[0xDB8]) = (16 * v29) | (2 * (v29 & 3)) | 1;
  LOBYTE(STACK[0xDD0]) = v62 | 1;
  LOBYTE(STACK[0xDD8]) = v55 ^ 0xC1;
  LOBYTE(STACK[0xDC6]) = (16 * (v73 ^ 0x89 ^ (-70 * v73 * v73))) | (2 * ((v73 ^ 0x89 ^ (-70 * v73 * v73)) & 3)) | 1;
  LOBYTE(STACK[0xDC0]) = v59 | 1;
  LOBYTE(v61) = (v72 ^ (2 * v72 * v72)) & 0xF ^ 6;
  LOBYTE(v72) = (16 * v61) | (2 * (v61 & 3));
  v77 = LODWORD(STACK[0x23C]) ^ LOBYTE(STACK[0x311]);
  LOBYTE(STACK[0xDC8]) = LODWORD(STACK[0x2C4]) ^ 0x81;
  LOBYTE(STACK[0xDC2]) = LODWORD(STACK[0x2CC]) | 1;
  LOBYTE(STACK[0xDCE]) = LODWORD(STACK[0x21C]) | 1;
  LOBYTE(v55) = v69 | 1;
  v78 = STACK[0x2F8];
  LOBYTE(STACK[0xDBD]) = v55;
  LOBYTE(STACK[0xDBF]) = LODWORD(STACK[0x260]) | 1;
  LOBYTE(STACK[0xDBC]) = LODWORD(STACK[0x2F4]) | 1;
  LOBYTE(STACK[0xDDD]) = (2 * (STACK[0x288] & 3)) | (16 * LOBYTE(STACK[0x288])) | 1;
  LOBYTE(STACK[0xDCA]) = v36 | 1;
  LOBYTE(STACK[0xDBE]) = LODWORD(STACK[0x2A0]) | 1;
  LOBYTE(STACK[0xDDA]) = v64 ^ 0x41;
  LOBYTE(STACK[0xDDE]) = v10 ^ 0x81;
  LOBYTE(v76) = (2 * LOBYTE(STACK[0x24C])) ^ 0xA3;
  LOBYTE(STACK[0xDB9]) = LODWORD(STACK[0x2C8]) | 1;
  LOBYTE(STACK[0xDDF]) = LODWORD(STACK[0x238]) | 1;
  LOBYTE(v76) = v76 + 16 * LOBYTE(STACK[0x250]);
  LOBYTE(STACK[0xDCC]) = LODWORD(STACK[0x294]) | 1;
  LOBYTE(STACK[0xDB6]) = v52 | 1;
  LOBYTE(STACK[0xDC7]) = v63 | 1;
  LOBYTE(STACK[0xDCF]) = v45 | 1;
  LOBYTE(STACK[0xDB4]) = v76;
  LOBYTE(STACK[0xDBA]) = v72 | 1;
  LOBYTE(STACK[0xDC4]) = (16 * (v77 ^ 0xA6 ^ (38 * v77 * v77))) | (2 * ((v77 ^ 0xA6 ^ (38 * v77 * v77)) & 3)) | 1;
  v79 = v71 ^ LODWORD(STACK[0x248]) ^ 0xFFFFFFC1;
  LOBYTE(STACK[0xDC9]) = v48 | 1;
  LOBYTE(STACK[0xDD1]) = v68 | 1;
  LOBYTE(STACK[0xDD2]) = (16 * v30) | (2 * (v30 & 3)) | 1;
  LOBYTE(STACK[0xDCB]) = (16 * v79) | (2 * (v79 & 3)) | 1;
  LOBYTE(STACK[0xDDB]) = (16 * v23) | (2 * (v23 & 3)) | 1;
  LOBYTE(v79) = (16 * LOBYTE(STACK[0x244])) | (2 * (STACK[0x244] & 3)) | 1;
  LOBYTE(STACK[0xDCD]) = v46 | 1;
  LOBYTE(STACK[0xDB0]) = v79;
  LOBYTE(STACK[0x779]) = -83;
  LOBYTE(STACK[0x38C]) = 58;
  LOBYTE(STACK[0xB66]) = -6;
  LOBYTE(STACK[0xCB5]) = 17;
  LOBYTE(STACK[0x4DB]) = 27;
  LOBYTE(STACK[0x62A]) = 21;
  LOBYTE(STACK[0xA17]) = -107;
  LOBYTE(STACK[0x8C8]) = -88;
  return (*(v78 + 8 * SLODWORD(STACK[0x274])))(4294967252, 81, 107);
}

uint64_t sub_100A9FE74@<X0>(uint64_t a1@<X1>, unsigned int a2@<W4>, unsigned int a3@<W5>, int a4@<W6>, unsigned int a5@<W7>, __int16 a6@<W8>)
{
  v21 = a3 + 10 + (a5 & 0xF) * a4 + a6;
  v22 = ((v6 + (a5 >> 4) * a4) * v13) >> 16;
  v23 = (16 * *(v7 + (v6 + (a5 >> 4) * a4 - ((v22 + (((v6 + (a5 >> 4) * a4 - v22) & 0xFFFE) >> 1)) >> 9) * v14))) ^ 0x20;
  v24 = v10 + (*(v7 + (v21 - ((((v21 * v13) >> 16) + (((v21 - ((v21 * v13) >> 16)) & 0xFFFE) >> 1)) >> 9) * v14)) ^ v8 ^ (v23 - ((2 * v23) & 0x60) + 50) & 0xFE) * v9;
  v25 = v24 - ((v24 * v11) >> 32) * v12;
  v26 = v15 + ((*(*(a1 + 8 * a2) + v25) - 15) ^ ((*(*(a1 + 8 * a2) + v25) - 15) >> 3) ^ ((*(*(a1 + 8 * a2) + v25) - 15) >> 2) ^ v16) * a4;
  *(v7 + v18 + a5 * a4 - ((((v18 + a5 * a4) * v19) >> 32) >> 4) * v14) = *(v7 + (v26 - ((v26 * v17) >> 32) * v14));
  return (*(STACK[0x2D0] + 8 * (((a5 == 255) * v20) ^ a3)))();
}

uint64_t sub_100A9FF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = STACK[0x6D8];
  LODWORD(STACK[0x588]) = v5 - 11033;
  v8 = *(v7 + 8 * (v5 - 11033));
  STACK[0x678] = 251986;
  STACK[0x668] = 252425;
  STACK[0x6A0] = 253742;
  STACK[0x698] = 254181;
  STACK[0x690] = a5 + 439;
  STACK[0x640] = a5 + 878;
  STACK[0x638] = a5 + 1317;
  STACK[0x630] = a5 + 1756;
  STACK[0x688] = 284911;
  STACK[0x680] = 285350;
  STACK[0x628] = v6 + 878;
  STACK[0x620] = v6 + 1317;
  LODWORD(STACK[0x590]) = v5 - 6645;
  LODWORD(STACK[0x580]) = v5 - 26778;
  STACK[0x670] = 254620;
  return v8(0, 285789, 283155, LODWORD(STACK[0x6C0]), LODWORD(STACK[0x660]));
}

uint64_t sub_100AA0090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54)
{
  a49 = &a37;
  a54 = -926777084;
  return (*(v55 + 8 * v54))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, &a37, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_100AA0234(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x3C8]) = v8;
  v15 = v3 + v9;
  v16 = v11 - (v13 ^ 0xBE31C68A) + a3;
  v17 = v4 ^ 0xBE31C68A;
  v18 = v6 - v17;
  v19 = v18 - (v10 ^ v18);
  v20 = (v10 ^ v18) + v17;
  v21 = v17 + 1877773278;
  v22 = ((269710369 - v17) & 0x2BFBAF63) + ((v17 + 1877773278) & 0x2BFBAF63);
  if (v20 == 204162813)
  {
    v23 = (((349925454 - ((v16 ^ v15) + (v13 ^ 0xBE31C68A))) & 0x1FFCB567) + (((v16 ^ v15) + (v13 ^ 0xBE31C68A) + 1797558193) & 0x1FFCB567)) & 0x1FFD6FCF;
  }

  else
  {
    v23 = ~(v22 ^ (((349925454 - ((v16 ^ v15) + (v13 ^ 0xBE31C68A))) & 0x1FFCB567) + (((v16 ^ v15) + (v13 ^ 0xBE31C68A) + 1797558193) & 0x1FFCB567)) & 0x1FFD6FCF);
  }

  v24 = *(STACK[0x6D8] + 8 * ((49 * ((v7 & 1) == 0)) ^ v5));
  LODWORD(STACK[0x3F0]) = v14;
  return v24((v19 ^ 0x96CB75F9) + 1516090115, ((v16 - (v16 ^ v15)) ^ 0x96CB75F9) + 1315278272 + (v23 & v22), v19 ^ 0x96CB75F9, (v5 - 13275), -(v20 - 204162813 + (v19 ^ v21)), ((v5 - 13275 + (v12 ^ v15) - 1319298793) ^ 0xEA873BF2) + 940500361);
}

uint64_t sub_100AA03CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x4F0];
  LODWORD(STACK[0x127C]) = LODWORD(STACK[0x530]) + v7;
  return (*(v8 + 8 * (((v9 + 994147468) & 0xC4BEC2EF ^ 0x216C) + v9)))(&STACK[0x5D0], a2, a3, a4, a5, a6, a7, 2174730764);
}

uint64_t sub_100AA0F60()
{
  v6 = v3[424];
  v7 = v2 + v6;
  v3[178] = v2 + v6;
  v3[322] = v2 + v6 + 20;
  v3[424] = v6 + 48;
  v3[406] = v0;
  *v7 = 0x57BECE05AB5E1B25;
  *(v7 + 8) = 0xE385F49C528983FBLL;
  *(v7 + 16) = 1729441789;
  v3[328] = 4;
  v8 = (*(v4 + 8 * (v1 ^ 0x819FBE1A)))(&STACK[0x224D], &STACK[0x1094], &STACK[0x1010], 0, 0);
  v9 = 551690071 * ((((v5 - 240) | 0xFC4C6B2C76D8D510) - ((v5 - 240) & 0xFC4C6B2C76D8D510)) ^ 0x8DD139E238358647);
  STACK[0x25F0] = v9 + v8;
  *(v5 - 228) = v1 - v9 - 1079263417;
  *(v5 - 224) = v9;
  STACK[0x25E8] = -551690071 * ((((v5 - 240) | 0xFC4C6B2C76D8D510) - ((v5 - 240) & 0xFC4C6B2C76D8D510)) ^ 0x8DD139E238358647);
  *(v5 - 236) = (v1 - 1079259191) ^ v9;
  *(v5 - 232) = v1 - v9 - 1079263375;
  *(v5 - 240) = (v1 + 1041169529) ^ v9;
  v10 = (*(v4 + 8 * (v1 ^ 0x819FBE4B)))(v5 - 240);
  return (*(v4 + 8 * *(v5 - 220)))(v10);
}

uint64_t sub_100AA1104()
{
  LODWORD(STACK[0xD84]) = v0;
  v2 = LOWORD(STACK[0x1C96]);
  STACK[0x1190] = STACK[0x1C98];
  return (*(v1 + 8 * ((9027 * (v2 == 62543)) ^ 0x1968)))();
}

uint64_t sub_100AA1214()
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x1958]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  *(STACK[0x3CF8] + 5136) &= (v0 - 1293681722) & 0x4D1BFBBE ^ 0x7FFFAD61;
  v2 = *(v1 + 8 * (v0 - 18470));
  STACK[0x3790] = STACK[0x3980];
  LODWORD(STACK[0x3D48]) = STACK[0x1A90];
  LODWORD(STACK[0x3CE8]) = STACK[0x28CC];
  v3 = LODWORD(STACK[0x3438]);
  LODWORD(STACK[0x39A8]) = STACK[0x1AA8];
  LODWORD(STACK[0x3B00]) = v3;
  LODWORD(STACK[0x1954]) = STACK[0x2B70];
  STACK[0x3D90] = LODWORD(STACK[0x3830]);
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  LODWORD(STACK[0x1C30]) = STACK[0x32E0];
  LODWORD(STACK[0x3AE8]) = STACK[0x2500];
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  v4 = STACK[0x3318];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x3AE0]) = STACK[0x21F4];
  STACK[0x33C0] = v3;
  LODWORD(STACK[0x1AD0]) = STACK[0x32D0];
  LODWORD(STACK[0x39E8]) = STACK[0x1BC8];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  LODWORD(STACK[0x2B98]) = v4;
  LODWORD(STACK[0x1C90]) = STACK[0x32D8];
  LODWORD(STACK[0x3CF0]) = 4;
  LODWORD(STACK[0x3D88]) = 2;
  v5 = STACK[0x3E0];
  STACK[0x3D40] = STACK[0x3E0];
  v6 = STACK[0x2618];
  STACK[0x3D78] = STACK[0x2618];
  STACK[0x3B20] = v5;
  STACK[0x3B18] = v6;
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v2();
}

uint64_t sub_100AA1384(uint64_t a1, unint64_t a2, char a3)
{
  STACK[0x27C8] = (v8 + 972);
  v9 = *(&off_101353600 + v4) - 4;
  STACK[0x3648] = v9;
  *(v3 + ((v8 + 972) ^ a2)) = v9[((v8 + 972) ^ a2) + v6] + (v5 + ((v8 - 52) ^ a2)) * a3 - 45;
  return (*(v7 + 8 * (v8 | (32 * (a1 != 0)))))(a1 - 1);
}

uint64_t sub_100AA143C@<X0>(int a1@<W4>, int a2@<W8>)
{
  v5 = STACK[0x3E38];
  v6 = STACK[0x3D98];
  v7 = v3 ^ 0xF62A4992 ^ a2;
  v8 = STACK[0x3E18];
  v9 = (v3 ^ 0xF62A4992) - LODWORD(STACK[0x3E18]);
  v10 = STACK[0x3E40];
  LODWORD(STACK[0x3D88]) = ((v3 ^ 0xF62A4992 ^ LODWORD(STACK[0x3C60]) ^ LODWORD(STACK[0x3E38])) - (LODWORD(STACK[0x3E40]) ^ -LODWORD(STACK[0x3C20]) ^ LODWORD(STACK[0x3D98]))) ^ LODWORD(STACK[0x3E18]);
  v11 = -LODWORD(STACK[0x3C70]);
  v12 = (v8 - 1922599995) ^ v5 ^ 0x378199B4;
  v13 = v12 + v8 - 1922599995;
  v14 = v13 + v9;
  v15 = v12 ^ LODWORD(STACK[0x3C68]) ^ (v13 + v9);
  v16 = (a1 - 1922599995) ^ 0x378199B4 ^ v6;
  v17 = v16 + a1 - 1922599995;
  v18 = v16 - 1922599995 + v10;
  LODWORD(STACK[0x3D30]) = v17 ^ ((v12 ^ LODWORD(STACK[0x3C68]) ^ v11) - v16) ^ ((v14 ^ LODWORD(STACK[0x3C68]) ^ v11) - v18);
  v19 = -LODWORD(STACK[0x3C78]);
  v20 = v18 + v17;
  v21 = v14 + v12;
  LODWORD(STACK[0x3D98]) = (v15 - (v16 ^ v11 ^ v18)) ^ v13;
  v22 = v14 + v13;
  v23 = ((v10 ^ v2) + 1272400690) ^ 0x66E756DF;
  v24 = v18 + v16;
  v25 = v18 - v23;
  v26 = (v7 + 1272400690) ^ 0x66E756DF;
  v27 = v24 ^ v23;
  v28 = v14 - v26;
  v29 = v21 ^ v26;
  v30 = v21 - v28;
  v31 = STACK[0x3C88];
  v32 = v24 - v25;
  v33 = (v30 ^ v19 ^ LODWORD(STACK[0x3C88])) - (v24 - v25);
  LODWORD(STACK[0x3E40]) = (v28 ^ 0xEEE31C31 ^ v19 ^ LODWORD(STACK[0x3C88])) - (v25 ^ 0xEEE31C31);
  v34 = (v30 ^ v31 ^ v28 ^ 0xEEE31C31) - ((v24 - v25) ^ v19 ^ v25 ^ 0xEEE31C31);
  v35 = v32 - (v25 ^ 0xEEE31C31);
  v36 = v29 ^ v28 ^ 0xEEE31C31;
  v37 = v30 - (v28 ^ 0xEEE31C31);
  v38 = v27 ^ v25 ^ 0xEEE31C31;
  v39 = v22 ^ 0xA66DDD98;
  v40 = v22 ^ 0xA66DDD98 ^ v28 ^ 0xEEE31C31;
  v41 = -LODWORD(STACK[0x3C80]);
  v42 = v20 ^ 0xA66DDD98;
  v43 = v20 ^ 0xA66DDD98 ^ v25 ^ 0xEEE31C31;
  v44 = (v28 ^ 0xBA18E43C) - v40;
  v45 = v36 - v44;
  v46 = v45 + v37;
  v47 = (v25 ^ 0xBA18E43C) - v43;
  v48 = STACK[0x3C90];
  v49 = v45 ^ v40;
  v50 = v38 - v47;
  v51 = v50 + v35;
  v52 = v50 ^ v43;
  v50 -= 557335534;
  LODWORD(STACK[0x3D40]) = v52 ^ ((v44 ^ v41 ^ LODWORD(STACK[0x3C90])) - v47) ^ ((v46 ^ v41 ^ LODWORD(STACK[0x3C90])) - v51);
  LODWORD(STACK[0x3D38]) = ((v44 ^ v48 ^ v46) - (v47 ^ v41 ^ v51)) ^ v49;
  v44 ^= 0x73EEA0EBu;
  v47 ^= 0x73EEA0EBu;
  v53 = v44 + 1057386858;
  v54 = v50 - (v47 + v52);
  v55 = -LODWORD(STACK[0x3C10]);
  v56 = v49 - 1057386858;
  v57 = v51 ^ v47;
  v58 = (v44 + 1057386858) ^ v55 ^ LODWORD(STACK[0x3C00]);
  v47 += 1057386858;
  v59 = v49 - 1057386858 + (v46 ^ v44);
  v60 = v45 - 557335534 - v44 - v49;
  v61 = v52 - 1057386858;
  v62 = v52 - 1057386858 + v57;
  v63 = (v59 ^ v55 ^ LODWORD(STACK[0x3C00])) - v62;
  v64 = v53 ^ LODWORD(STACK[0x3C00]) ^ v59;
  v65 = v59 ^ v60;
  v66 = v60 + v53;
  LODWORD(STACK[0x3D70]) = (v64 - (v47 ^ v55 ^ v62)) ^ v56;
  LODWORD(STACK[0x3D68]) = v61 ^ (v58 - v47) ^ v63;
  v67 = v54 + v61;
  v68 = v54 + v50;
  v69 = v60 + v56;
  v70 = v66 + v69;
  v71 = -LODWORD(STACK[0x3C18]);
  v72 = v62 ^ v54;
  v73 = v66 + v60 + v56 + (v60 ^ 0xC40468D8);
  v74 = (v66 + v69) ^ v65;
  v75 = (v54 ^ 0xC40468D8) + v68;
  v76 = (v74 ^ v71 ^ LODWORD(STACK[0x3C08])) - (v72 ^ v68);
  v77 = (v70 ^ v71 ^ LODWORD(STACK[0x3C08])) - v68;
  v78 = (v69 ^ 0xA0A58A84) + 562905719;
  v79 = v73 ^ 0xCD0C2A0;
  v80 = (v73 + v74) ^ v78;
  v81 = -LODWORD(STACK[0x3BE0]);
  v82 = v79 ^ v70 ^ 0x2024C584;
  v67 ^= 0xA0A58A84;
  v83 = ((v72 ^ v68) + v75) ^ (v67 + 562905719);
  v84 = v75 ^ 0xCD0C2A0 ^ v68;
  v85 = STACK[0x3BF8];
  LODWORD(STACK[0x3D80]) = (v67 + 562905719 - (v84 ^ 0x2024C584)) ^ ((v80 ^ LODWORD(STACK[0x3BF8]) ^ v81) - v83) ^ ((v82 ^ LODWORD(STACK[0x3BF8]) ^ v81) - (v84 ^ 0x2024C584));
  LODWORD(STACK[0x3D50]) = v84 ^ 0x2024C584;
  LODWORD(STACK[0x3D48]) = v82;
  LODWORD(STACK[0x3E18]) = ((v80 ^ v85 ^ v82) - (v83 ^ v81 ^ v84 ^ 0x2024C584)) ^ (v78 - v82);
  LODWORD(STACK[0x3D28]) = v39 ^ v34;
  LODWORD(STACK[0x3D78]) = v42 ^ v33 ^ LODWORD(STACK[0x3E40]);
  v86 = *(v4 + 8 * SLODWORD(STACK[0x3D90]));
  LODWORD(STACK[0x3D60]) = STACK[0x3BF0];
  LODWORD(STACK[0x3D58]) = STACK[0x3BE8];
  return v86(v67 ^ v77 ^ v76);
}

uint64_t sub_100AA1924(unint64_t a1)
{
  v7 = STACK[0x3D18];
  v8 = *(STACK[0x3D18] + 3138);
  STACK[0x2BC8] = 0;
  LODWORD(STACK[0x3E40]) = 0;
  LODWORD(STACK[0x3E18]) = 0;
  LODWORD(STACK[0x39A0]) = 0;
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D68]) = 0;
  LODWORD(STACK[0x3D30]) = 0;
  LODWORD(STACK[0x3B20]) = 0;
  LODWORD(STACK[0x3828]) = 0;
  LODWORD(STACK[0x39E8]) = 0;
  LODWORD(STACK[0x3D78]) = 0;
  LODWORD(STACK[0x3830]) = 0;
  LODWORD(STACK[0x3CF0]) = 0;
  LODWORD(STACK[0x39F0]) = 0;
  LODWORD(STACK[0x3D50]) = 0;
  LODWORD(STACK[0x3838]) = 0;
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
  LODWORD(STACK[0x2924]) = 0;
  v9 = (v8 << 24) | (*(v7 + 3139) << 16);
  v10 = *(v7 + 3141);
  v11 = (*(v7 + 3140) << ((-126 * (v2 ^ 6)) ^ 0x96u)) | v10 | v9;
  v12 = (2 * v11) ^ (8 * v11) ^ (v8 | (v11 << 8)) ^ ((v9 >> 20) | (v11 << 12)) ^ ((v11 >> 8) + (v10 << 24)) ^ ((v11 >> 3) + (v10 << 29)) ^ ((v11 >> 1) + (v10 << 31));
  v13 = STACK[0x3B18];
  v14 = v12 & 0xFF00 | STACK[0x3B18];
  v15 = v14 | v12 & 0xFFFF0000;
  HIDWORD(v16) = v14 | v12 & 0xFFFF0000;
  LODWORD(v16) = v12;
  LODWORD(v10) = (v14 << 19) ^ (v13 << 31) ^ (v15 >> 1) ^ (v15 >> 13) ^ ((v15 >> 5) | (v13 << 27)) ^ ((v15 >> 8) | (v13 << 24)) ^ ((v15 >> 3) | (v13 << 29)) ^ ((v15 >> 11) | (v14 << 21)) ^ ((v15 >> 12) | (v14 << 20)) ^ (v16 >> 31);
  LODWORD(v16) = v12;
  v17 = v16 >> 29;
  LODWORD(v16) = v12;
  v18 = v17 ^ (v16 >> 26);
  LODWORD(v16) = v12;
  v19 = v18 ^ (v16 >> 25);
  LODWORD(v16) = v12;
  LODWORD(v14) = v10 ^ v19 ^ (v16 >> 24) ^ ((v12 >> 23) | (v15 << 9)) ^ ((v12 >> 19) | (v15 << 13)) ^ ((v12 >> 17) | (v15 << 15)) ^ ((v15 >> 15) | (v14 << 17)) ^ ((v15 >> 14) | (v14 << 18)) ^ ((v12 >> 22) | (v15 << 10)) ^ ((v12 >> 18) | (v15 << 14));
  *(v7 + 3138) = BYTE3(v14);
  LODWORD(v12) = _byteswap_ulong(*(v7 + 2003));
  HIDWORD(v16) = *(v7 + 2006);
  LODWORD(v16) = v12;
  LODWORD(v15) = ((*(v7 + 2003) >> 1) | (v12 << 7)) ^ (v16 >> 7);
  HIDWORD(v16) = v12;
  LODWORD(v16) = v12;
  LODWORD(v15) = (v16 >> 16) ^ __ROR4__(v12, 23) ^ __ROR4__(v12, 10) ^ v15;
  v20 = STACK[0x3D98];
  v21 = v15 & 0xFF00 | STACK[0x3D98] | v15 & 0xFFFF0000;
  HIDWORD(v16) = v15 & 0xFF00 | STACK[0x3D98];
  LODWORD(v16) = v15;
  v22 = v21 ^ (v16 >> 16) ^ __ROR4__(v21, 24) ^ (__PAIR64__(v21, v15) >> 22) ^ (__PAIR64__(v21, v15) >> 21) ^ (__PAIR64__(v21, v15) >> 19);
  LODWORD(v16) = v21;
  v23 = v22 ^ (__PAIR64__(v21, v15) >> 18) ^ (v16 >> 13) ^ __ROR4__(v21, 12);
  LODWORD(v16) = v21;
  v24 = v23 ^ (v16 >> 11);
  LODWORD(v16) = v21;
  LODWORD(v10) = v16 >> 9;
  HIDWORD(v16) = STACK[0x3D98];
  LODWORD(v16) = v21;
  v25 = v16 >> 8;
  LODWORD(v16) = v21;
  LODWORD(v10) = v10 ^ v25 ^ (v16 >> 7);
  LODWORD(v16) = v21;
  v26 = v16 >> 6;
  LODWORD(v16) = v21;
  LODWORD(v10) = v10 ^ v26 ^ (v16 >> 5);
  LODWORD(v16) = v21;
  v27 = v16 >> 2;
  LODWORD(v16) = v21;
  LODWORD(v15) = v24 ^ __ROR4__(v21, 10) ^ v10 ^ v27 ^ (v16 >> 1) ^ (__PAIR64__(v21, v15) >> 25);
  *(v7 + 2003) = BYTE3(v15);
  *(v7 + 3139) = BYTE2(v14);
  *(v7 + 2004) = BYTE2(v15);
  *(v7 + 3140) = BYTE1(v14);
  *(v7 + 2005) = BYTE1(v15);
  *(v7 + 3141) = v14;
  *(v7 + 2006) = v15;
  *STACK[0x38A8] ^= STACK[0x2270];
  *STACK[0x3898] ^= STACK[0x26F8];
  *(v7 + 2919) ^= STACK[0x2290];
  *(v7 + 1784) ^= STACK[0x2088];
  *(v7 + 2920) ^= STACK[0x3B60];
  *(v7 + 1785) ^= STACK[0x2338];
  *(v7 + 2921) ^= STACK[0x2118];
  *(v7 + 1786) ^= STACK[0x2A10];
  *(v7 + 2922) ^= STACK[0x2658];
  *(v7 + 1787) ^= STACK[0x33F0];
  *(v7 + 2923) ^= STACK[0x26C0];
  *(v7 + 1788) ^= STACK[0x22B0];
  *(v7 + 2924) ^= STACK[0x25B0];
  *(v7 + 1789) ^= STACK[0x35D0];
  *(v7 + 2925) ^= STACK[0x29F8];
  *(v7 + 1790) ^= STACK[0x2108];
  *(v7 + 2926) ^= STACK[0x2298];
  *(v7 + 1791) ^= STACK[0x25E8];
  *(v7 + 2927) ^= STACK[0x3BF0];
  *(v7 + 1792) ^= STACK[0x20F8];
  *(v7 + 2928) ^= STACK[0x22F8];
  *(v7 + 1793) ^= STACK[0x26A8];
  *(v7 + 2929) ^= STACK[0x2A40];
  *(v7 + 1794) ^= STACK[0x2340];
  *(v7 + 2930) ^= STACK[0x2098];
  *(v7 + 1795) ^= STACK[0x25E0];
  *(v7 + 2931) ^= STACK[0x2080];
  *(v7 + 1796) ^= STACK[0x2110];
  *(v7 + 2932) ^= STACK[0x2288];
  *(v7 + 1797) ^= STACK[0x2280];
  *(v7 + 2933) ^= STACK[0x2A28];
  *(v7 + 1798) ^= STACK[0x2A00];
  *(v7 + 2934) ^= STACK[0x2360];
  *(v7 + 1799) ^= STACK[0x27B8];
  *(v7 + 2935) ^= STACK[0x2078];
  *(v7 + 1800) ^= STACK[0x2368];
  *(v7 + 2936) ^= STACK[0x2320];
  *(v7 + 1801) ^= STACK[0x22E0];
  *(v7 + 2937) ^= STACK[0x20A0];
  *(v7 + 1802) ^= STACK[0x25D0];
  *(v7 + 2938) ^= STACK[0x2278];
  *(v7 + 1803) ^= STACK[0x22B8];
  *(v7 + 2939) ^= STACK[0x2778];
  *(v7 + 1804) ^= STACK[0x22A0];
  *(v7 + 2940) ^= STACK[0x2610];
  *(v7 + 1805) ^= STACK[0x22D0];
  *(v7 + 2941) ^= STACK[0x3418];
  *(v7 + 1806) ^= STACK[0x2910];
  *(v7 + 2942) ^= STACK[0x2090];
  *(v7 + 1807) ^= STACK[0x22C8];
  *(v7 + 2943) ^= STACK[0x25C8];
  *(v7 + 1808) ^= STACK[0x33F8];
  *(v7 + 2944) ^= STACK[0x2300];
  *(v7 + 1809) ^= STACK[0x22F0];
  *(v7 + 2945) ^= STACK[0x2A20];
  *(v7 + 1810) ^= STACK[0x2A08];
  *(v7 + 2946) ^= STACK[0x2350];
  *(v7 + 1811) ^= STACK[0x2378];
  *(v7 + 2947) ^= STACK[0x26E0];
  *(v7 + 1812) ^= STACK[0x25B8];
  *(v7 + 2948) ^= STACK[0x2358];
  *(v7 + 1813) ^= STACK[0x22E8];
  *(v7 + 2949) ^= STACK[0x2348];
  *(v7 + 1814) ^= STACK[0x22C0];
  *(v7 + 2950) ^= STACK[0x26D8];
  *(v7 + 1815) ^= STACK[0x3B70];
  *(v7 + 2951) ^= STACK[0x2860];
  *(v7 + 1816) ^= STACK[0x2FB0];
  *(v7 + 2952) ^= STACK[0x2E90];
  *(v7 + 1817) ^= STACK[0x2ED8];
  *(v7 + 2953) ^= STACK[0x3B48];
  *(v7 + 1818) ^= STACK[0x2900];
  *(v7 + 2954) ^= STACK[0x3658];
  *(v7 + 1819) ^= STACK[0x27A0];
  *(v7 + 2955) ^= STACK[0x2F00];
  *(v7 + 1820) ^= STACK[0x2E48];
  *(v7 + 2956) ^= STACK[0x2E08];
  *(v7 + 1821) ^= STACK[0x2518];
  *(v7 + 2957) ^= STACK[0x2558];
  *(v7 + 1822) ^= STACK[0x3130];
  *(v7 + 2958) ^= STACK[0x3078];
  *(v7 + 1823) ^= STACK[0x2580];
  *(v7 + 2959) ^= STACK[0x2930];
  *(v7 + 1824) ^= STACK[0x2770];
  *(v7 + 2960) ^= STACK[0x26C8];
  *(v7 + 1825) ^= STACK[0x2E28];
  *(v7 + 2961) ^= STACK[0x2DE0];
  *(v7 + 1826) ^= STACK[0x27E0];
  *(v7 + 2962) ^= STACK[0x2ED0];
  *(v7 + 1827) ^= STACK[0x3288];
  *(v7 + 2963) ^= STACK[0x27D0];
  *(v7 + 1828) ^= STACK[0x29B8];
  *(v7 + 2964) ^= STACK[0x2530];
  *(v7 + 1829) ^= STACK[0x3CA8];
  *(v7 + 2965) ^= STACK[0x2DF0];
  *(v7 + 1830) ^= STACK[0x2FF0];
  v28 = *(v7 + 2966);
  v29 = STACK[0x3BB8];
  STACK[0x3318] = v28;
  *(v7 + 2966) = v28 ^ v29;
  *(v7 + 1831) ^= STACK[0x2818];
  *(v7 + 2967) ^= STACK[0x2E70];
  *(v7 + 1832) ^= STACK[0x3048];
  *(v7 + 2968) ^= STACK[0x2F40];
  *(v7 + 1833) ^= STACK[0x2E10];
  *(v7 + 2969) ^= STACK[0x2848];
  *(v7 + 1834) ^= STACK[0x3140];
  *(v7 + 2970) ^= STACK[0x2568];
  *(v7 + 1835) ^= STACK[0x2888];
  *(v7 + 2971) ^= STACK[0x3030];
  *(v7 + 1836) ^= STACK[0x2A30];
  *(v7 + 2972) ^= STACK[0x2E78];
  *(v7 + 1837) ^= STACK[0x2F78];
  *(v7 + 2973) ^= STACK[0x26F0];
  *(v7 + 1838) ^= STACK[0x3C68];
  *(v7 + 2974) ^= STACK[0x2510];
  *(v7 + 1839) ^= STACK[0x2680];
  *(v7 + 2975) ^= STACK[0x2F68];
  *(v7 + 1840) ^= STACK[0x3C08];
  *(v7 + 2976) ^= STACK[0x2520];
  *(v7 + 1841) ^= STACK[0x26A0];
  *(v7 + 2977) ^= STACK[0x2798];
  *(v7 + 1842) ^= STACK[0x3520];
  *(v7 + 2978) ^= STACK[0x25A8];
  *(v7 + 1843) ^= STACK[0x3058];
  *(v7 + 2979) ^= STACK[0x2570];
  *(v7 + 1844) ^= STACK[0x2FA0];
  *(v7 + 2980) ^= STACK[0x2950];
  *(v7 + 1845) ^= STACK[0x2780];
  *(v7 + 2981) ^= STACK[0x28F0];
  *(v7 + 1846) ^= STACK[0x2998];
  *(v7 + 2982) ^= STACK[0x28C0];
  *(v7 + 1847) ^= STACK[0x2538];
  *(v7 + 2983) ^= STACK[0x2E88];
  *(v7 + 1848) ^= STACK[0x2FC8];
  *(v7 + 2984) ^= STACK[0x2A88];
  *(v7 + 1849) ^= STACK[0x2F58];
  *(v7 + 2985) ^= STACK[0x2758];
  *(v7 + 1850) ^= STACK[0x3500];
  *(v7 + 2986) ^= STACK[0x2788];
  *(v7 + 1851) ^= STACK[0x27E8];
  *(v7 + 2987) ^= STACK[0x3BF8];
  *(v7 + 1852) ^= STACK[0x29C0];
  *(v7 + 2988) ^= STACK[0x2EE8];
  *(v7 + 1853) ^= STACK[0x2FD0];
  *(v7 + 2989) ^= STACK[0x2DE8];
  *(v7 + 1854) ^= STACK[0x3C90];
  *(v7 + 2990) ^= STACK[0x2880];
  *(v7 + 1855) ^= STACK[0x2588];
  *(v7 + 2991) ^= STACK[0x3278];
  *(v7 + 1856) ^= STACK[0x2E20];
  *(v7 + 2992) ^= STACK[0x2590];
  *(v7 + 1857) ^= STACK[0x2E40];
  *(v7 + 2993) ^= STACK[0x2FB8];
  *(v7 + 1858) ^= STACK[0x2E60];
  *(v7 + 2994) ^= STACK[0x2E98];
  *(v7 + 1859) ^= STACK[0x30E8];
  *(v7 + 2995) ^= STACK[0x3070];
  *(v7 + 1860) ^= STACK[0x29D8];
  *(v7 + 2996) ^= STACK[0x3490];
  *(v7 + 1861) ^= STACK[0x30E0];
  v30 = *(v7 + 2997);
  v31 = STACK[0x2858];
  STACK[0x3388] = v30;
  *(v7 + 2997) = v30 ^ v31;
  *(v7 + 1862) ^= STACK[0x3BD8];
  *(v7 + 2998) ^= STACK[0x3018];
  *(v7 + 1863) ^= STACK[0x3BE8];
  *(v7 + 2999) ^= STACK[0x2EB8];
  *(v7 + 1864) ^= STACK[0x2F38];
  *(v7 + 3000) ^= STACK[0x2F20];
  *(v7 + 1865) ^= STACK[0x27C0];
  *(v7 + 3001) ^= STACK[0x2FC0];
  *(v7 + 1866) ^= STACK[0x3028];
  *(v7 + 3002) ^= STACK[0x2EA8];
  *(v7 + 1867) ^= STACK[0x29C8];
  *(v7 + 3003) ^= STACK[0x2598];
  *(v7 + 1868) ^= STACK[0x3BC0];
  *(v7 + 3004) ^= STACK[0x3270];
  *(v7 + 1869) ^= STACK[0x2790];
  *(v7 + 3005) ^= STACK[0x2F08];
  *(v7 + 1870) ^= STACK[0x2FD8];
  *(v7 + 3006) ^= STACK[0x2A18];
  *(v7 + 1871) ^= STACK[0x2E18];
  v32 = *(v7 + 3007);
  v33 = STACK[0x3B80];
  STACK[0x3688] = v32;
  *(v7 + 3007) = v32 ^ v33;
  *(v7 + 1872) ^= STACK[0x2678];
  *(v7 + 3008) ^= STACK[0x27A8];
  *(v7 + 1873) ^= STACK[0x30D8];
  *(v7 + 3009) ^= LODWORD(STACK[0x2508]);
  *(v7 + 1874) ^= STACK[0x3CC0];
  *(v7 + 3010) ^= STACK[0x2890];
  *(v7 + 1875) ^= STACK[0x2EB0];
  *(v7 + 3011) ^= STACK[0x2DF8];
  *(v7 + 1876) ^= STACK[0x2990];
  *(v7 + 3012) ^= STACK[0x25A0];
  *(v7 + 1877) ^= STACK[0x2768];
  v34 = *(v7 + 3013);
  v35 = STACK[0x30C0];
  STACK[0x32D8] = v34;
  *(v7 + 3013) = v34 ^ v35;
  *(v7 + 1878) ^= STACK[0x3150];
  *(v7 + 3014) ^= STACK[0x2EA0];
  *(v7 + 1879) ^= STACK[0x2EC0];
  *(v7 + 3015) ^= STACK[0x2A50];
  *(v7 + 1880) ^= STACK[0x2E68];
  *(v7 + 3016) ^= STACK[0x3BD0];
  *(v7 + 1881) ^= STACK[0x2EE0];
  *(v7 + 3017) ^= STACK[0x2540];
  *(v7 + 1882) ^= STACK[0x3168];
  *(v7 + 3018) ^= STACK[0x2548];
  *(v7 + 1883) ^= STACK[0x3050];
  *(v7 + 3019) ^= STACK[0x3020];
  *(v7 + 1884) ^= STACK[0x2E38];
  *(v7 + 3020) ^= STACK[0x25F0];
  *(v7 + 1885) ^= STACK[0x2F70];
  *(v7 + 3021) ^= STACK[0x2FA8];
  *(v7 + 1886) ^= STACK[0x2F90];
  *(v7 + 3022) ^= STACK[0x28F8];
  *(v7 + 1887) ^= STACK[0x2528];
  *(v7 + 1901) ^= STACK[0x2E50];
  *(v7 + 1900) ^= STACK[0x3280];
  *(v7 + 3036) ^= STACK[0x2EC8];
  *(v7 + 1899) ^= STACK[0x3A60];
  *(v7 + 3035) ^= STACK[0x2E00];
  *(v7 + 1898) ^= STACK[0x2918];
  *(v7 + 3034) ^= STACK[0x2868];
  *(v7 + 1897) ^= STACK[0x29D0];
  *(v7 + 3033) ^= STACK[0x3CA0];
  *(v7 + 1896) ^= STACK[0x2F28];
  *(v7 + 3032) ^= STACK[0x2578];
  *(v7 + 1895) ^= STACK[0x3090];
  *(v7 + 3031) ^= STACK[0x3BC8];
  *(v7 + 1894) ^= STACK[0x3C80];
  *(v7 + 3030) ^= STACK[0x37A8];
  *(v7 + 1893) ^= STACK[0x2550];
  *(v7 + 3029) ^= STACK[0x3080];
  *(v7 + 1892) ^= STACK[0x2850];
  *(v7 + 3028) ^= STACK[0x2F18];
  *(v7 + 1891) ^= STACK[0x3B78];
  *(v7 + 3027) ^= STACK[0x3038];
  *(v7 + 1890) ^= STACK[0x3138];
  *(v7 + 3026) ^= STACK[0x2E30];
  *(v7 + 1889) ^= STACK[0x2F30];
  *(v7 + 3025) ^= STACK[0x2F10];
  *(v7 + 1888) ^= STACK[0x3C88];
  *(v7 + 3024) ^= STACK[0x2E80];
  *(v7 + 3023) ^= STACK[0x29E0];
  *(v7 + 3037) ^= STACK[0x3A68];
  *(v7 + 1902) ^= STACK[0x30C8];
  *(v7 + 3038) ^= STACK[0x3120];
  v36 = *(v7 + 1903);
  v37 = STACK[0x2560];
  STACK[0x3420] = v36;
  *(v7 + 1903) = v36 ^ v37;
  *(v7 + 3039) ^= STACK[0x2DD0];
  *(v7 + 1904) ^= STACK[0x2838];
  *(v7 + 3040) ^= STACK[0x2C70];
  *(v7 + 1905) ^= STACK[0x3938];
  *(v7 + 3041) ^= LODWORD(STACK[0x2A78]);
  *(v7 + 1906) ^= STACK[0x2748];
  *(v7 + 3042) ^= STACK[0x2D70];
  *(v7 + 1907) ^= STACK[0x2710];
  *(v7 + 3043) ^= STACK[0x3498];
  *(v7 + 1908) ^= STACK[0x2CB0];
  *(v7 + 3044) ^= STACK[0x27F0];
  *(v7 + 1909) ^= STACK[0x3C98];
  *(v7 + 3045) ^= STACK[0x27D8];
  *(v7 + 1910) ^= STACK[0x30A0];
  v38 = *(v7 + 3046);
  v39 = STACK[0x2828];
  STACK[0x3790] = v38;
  *(v7 + 3046) = v38 ^ v39;
  v40 = LODWORD(STACK[0x3D90]);
  *(v7 + 1911) ^= v40;
  *(v7 + 3047) ^= STACK[0x3098];
  *(v7 + 1912) ^= STACK[0x2820];
  *(v7 + 3048) ^= STACK[0x29F0];
  *(v7 + 1913) ^= LODWORD(STACK[0x2438]);
  *(v7 + 3049) ^= STACK[0x2830];
  *(v7 + 1914) ^= STACK[0x26E8];
  *(v7 + 3050) ^= STACK[0x2FF8];
  *(v7 + 1915) ^= STACK[0x24C8];
  *(v7 + 3051) ^= STACK[0x2440];
  *(v7 + 1916) ^= STACK[0x2D10];
  *(v7 + 3052) ^= STACK[0x2FE8];
  *(v7 + 1917) ^= STACK[0x2430];
  *(v7 + 3053) ^= STACK[0x29A8];
  *(v7 + 1918) ^= STACK[0x28D0];
  *(v7 + 3054) ^= STACK[0x28A8];
  *(v7 + 1919) ^= STACK[0x3010];
  *(v7 + 3055) ^= STACK[0x3B88];
  *(v7 + 1920) ^= STACK[0x3C18];
  *(v7 + 3056) ^= STACK[0x3C70];
  *(v7 + 1921) ^= STACK[0x2810];
  *(v7 + 3057) ^= STACK[0x24E0];
  *(v7 + 1922) ^= STACK[0x2EF0];
  *(v7 + 3058) ^= STACK[0x28D8];
  *(v7 + 1923) ^= STACK[0x31B8];
  *(v7 + 3059) ^= STACK[0x2728];
  *(v7 + 1924) ^= STACK[0x24A0];
  *(v7 + 3060) ^= STACK[0x2F88];
  *(v7 + 1925) ^= STACK[0x2448];
  *(v7 + 3061) ^= STACK[0x2458];
  *(v7 + 1926) ^= STACK[0x2750];
  *(v7 + 3062) ^= STACK[0x2870];
  *(v7 + 1927) ^= STACK[0x2D00];
  *(v7 + 3063) ^= STACK[0x2C68];
  *(v7 + 1928) ^= STACK[0x24D0];
  *(v7 + 3064) ^= STACK[0x3460];
  *(v7 + 1929) ^= STACK[0x3468];
  *(v7 + 3065) ^= STACK[0x2DB8];
  *(v7 + 1930) ^= STACK[0x3568];
  *(v7 + 3066) ^= STACK[0x2F98];
  *(v7 + 1931) ^= STACK[0x2D50];
  *(v7 + 3067) ^= STACK[0x2D58];
  *(v7 + 1932) ^= STACK[0x30B0];
  *(v7 + 3068) ^= STACK[0x2DB0];
  *(v7 + 1933) ^= STACK[0x2D28];
  *(v7 + 3069) ^= STACK[0x3BA0];
  *(v7 + 1934) ^= STACK[0x34E8];
  *(v7 + 3070) ^= STACK[0x3B90];
  *(v7 + 1935) ^= STACK[0x3000];
  *(v7 + 3071) ^= STACK[0x2E58];
  *(v7 + 1936) ^= LODWORD(STACK[0x2468]);
  *(v7 + 3072) ^= STACK[0x2460];
  *(v7 + 1937) ^= STACK[0x2690];
  *(v7 + 3073) ^= STACK[0x2D40];
  *(v7 + 1938) ^= STACK[0x30F8];
  *(v7 + 3074) ^= STACK[0x2D08];
  *(v7 + 1939) ^= STACK[0x2CD8];
  *(v7 + 3075) ^= STACK[0x2730];
  *(v7 + 1940) ^= STACK[0x2FE0];
  *(v7 + 3076) ^= STACK[0x2C60];
  *(v7 + 1941) ^= STACK[0x3088];
  *(v7 + 3077) ^= STACK[0x2CB8];
  *(v7 + 1942) ^= STACK[0x3108];
  *(v7 + 3078) ^= STACK[0x3C78];
  *(v7 + 1943) ^= STACK[0x24D8];
  *(v7 + 3079) ^= STACK[0x24B8];
  *(v7 + 1944) ^= STACK[0x29E8];
  *(v7 + 3080) ^= STACK[0x2D90];
  *(v7 + 1945) ^= STACK[0x2CF8];
  *(v7 + 3081) ^= STACK[0x2718];
  *(v7 + 1946) ^= STACK[0x2940];
  *(v7 + 3082) ^= STACK[0x2608];
  *(v7 + 1947) ^= STACK[0x2470];
  *(v7 + 3083) ^= v3;
  *(v7 + 1948) ^= STACK[0x3BE0];
  *(v7 + 3084) ^= STACK[0x2CF0];
  *(v7 + 1949) ^= STACK[0x2C58];
  *(v7 + 3085) ^= STACK[0x3158];
  *(v7 + 1950) ^= STACK[0x3128];
  *(v7 + 3086) ^= STACK[0x2450];
  *(v7 + 1951) ^= STACK[0x2488];
  *(v7 + 3087) ^= STACK[0x24B0];
  *(v7 + 1952) ^= STACK[0x3BA8];
  *(v7 + 3088) ^= STACK[0x2CE8];
  *(v7 + 1953) ^= STACK[0x3450];
  *(v7 + 3089) ^= STACK[0x24A8];
  *(v7 + 1954) ^= STACK[0x3110];
  *(v7 + 3090) ^= STACK[0x2D98];
  *(v7 + 1955) ^= STACK[0x2C78];
  *(v7 + 3091) ^= STACK[0x28A0];
  *(v7 + 1956) ^= STACK[0x30A8];
  *(v7 + 3092) ^= STACK[0x2D38];
  *(v7 + 1957) ^= STACK[0x2CE0];
  *(v7 + 3093) ^= STACK[0x3458];
  *(v7 + 1958) ^= STACK[0x3148];
  *(v7 + 3094) ^= STACK[0x2808];
  *(v7 + 1959) ^= STACK[0x3C60];
  *(v7 + 3095) ^= STACK[0x25F8];
  *(v7 + 1960) ^= STACK[0x2D30];
  *(v7 + 3096) ^= STACK[0x2CA0];
  *(v7 + 1961) ^= STACK[0x2DC8];
  *(v7 + 3097) ^= STACK[0x24F0];
  *(v7 + 1962) ^= STACK[0x2740];
  *(v7 + 3098) ^= STACK[0x2C40];
  *(v7 + 1963) ^= STACK[0x2DA0];
  *(v7 + 3099) ^= STACK[0x2840];
  *(v7 + 1964) ^= STACK[0x2D68];
  *(v7 + 3100) ^= STACK[0x27B0];
  *(v7 + 1965) ^= STACK[0x3590];
  *(v7 + 3101) ^= STACK[0x2D80];
  *(v7 + 1966) ^= STACK[0x2498];
  *(v7 + 3102) ^= STACK[0x2D18];
  *(v7 + 1967) ^= STACK[0x2DD8];
  v41 = *(v7 + 3103);
  v42 = STACK[0x2CA8];
  STACK[0x3488] = v41;
  *(v7 + 3103) = v41 ^ v42;
  *(v7 + 1968) ^= LODWORD(STACK[0x2490]);
  *(v7 + 3104) ^= STACK[0x34B8];
  *(v7 + 1969) ^= a1;
  *(v7 + 3105) ^= STACK[0x24F8];
  *(v7 + 1970) ^= STACK[0x2668];
  *(v7 + 3106) ^= STACK[0x31F0];
  *(v7 + 1971) ^= STACK[0x3478];
  *(v7 + 3107) ^= STACK[0x3CB8];
  *(v7 + 1972) ^= STACK[0x2C38];
  *(v7 + 3108) ^= STACK[0x2C30];
  *(v7 + 1973) ^= STACK[0x3068];
  *(v7 + 3109) ^= STACK[0x2F48];
  *(v7 + 1974) ^= STACK[0x3100];
  *(v7 + 3110) ^= STACK[0x2DA8];
  *(v7 + 1975) ^= STACK[0x2D20];
  *(v7 + 3111) ^= STACK[0x2CC0];
  *(v7 + 1976) ^= LODWORD(STACK[0x2480]);
  *(v7 + 3112) ^= STACK[0x2D60];
  *(v7 + 1977) ^= STACK[0x3B98];
  *(v7 + 3113) ^= STACK[0x3C20];
  *(v7 + 1978) ^= STACK[0x2D78];
  *(v7 + 3114) ^= STACK[0x3C00];
  *(v7 + 1979) ^= STACK[0x24C0];
  *(v7 + 3115) ^= STACK[0x26B0];
  *(v7 + 1980) ^= STACK[0x2D48];
  *(v7 + 3116) ^= STACK[0x2C98];
  *(v7 + 1981) ^= LODWORD(STACK[0x2478]);
  *(v7 + 3117) ^= STACK[0x29A0];
  *(v7 + 1982) ^= STACK[0x2EF8];
  *(v7 + 3118) ^= STACK[0x3480];
  *(v7 + 1983) ^= STACK[0x2DC0];
  *(v7 + 3119) ^= STACK[0x2F80];
  *(v7 + 1984) ^= LODWORD(STACK[0x3118]);
  *(v7 + 3120) ^= STACK[0x2C88];
  *(v7 + 1985) ^= STACK[0x2670];
  *(v7 + 3121) ^= STACK[0x30B8];
  *(v7 + 1986) ^= STACK[0x3C10];
  *(v7 + 3122) ^= STACK[0x2C48];
  *(v7 + 1987) ^= v5;
  *(v7 + 3123) ^= STACK[0x3040];
  *(v7 + 1988) ^= STACK[0x3BB0];
  *(v7 + 3124) ^= STACK[0x34A0];
  *(v7 + 1989) ^= STACK[0x28E0];
  *(v7 + 3125) ^= STACK[0x2CC8];
  *(v7 + 1990) ^= STACK[0x2A70];
  *(v7 + 3126) ^= STACK[0x3730];
  *(v7 + 1991) ^= STACK[0x28E8];
  *(v7 + 3127) ^= STACK[0x25C0];
  *(v7 + 1992) ^= v4;
  *(v7 + 3128) ^= STACK[0x2878];
  *(v7 + 1993) ^= v1;
  *(v7 + 3129) ^= STACK[0x26B8];
  *(v7 + 1994) ^= STACK[0x3160];
  *(v7 + 3130) ^= STACK[0x22A8];
  *(v7 + 1995) ^= STACK[0x3470];
  *(v7 + 3131) ^= STACK[0x3CB0];
  *(v7 + 1996) ^= STACK[0x3008];
  *(v7 + 3132) ^= STACK[0x25D8];
  *(v7 + 1997) ^= STACK[0x2C90];
  *(v7 + 3133) ^= STACK[0x26D0];
  *(v7 + 1998) ^= STACK[0x2C80];
  *(v7 + 3134) ^= STACK[0x3188];
  *(v7 + 1999) ^= STACK[0x2CD0];
  *(v7 + 3135) ^= STACK[0x2C50];
  *(v7 + 2000) ^= STACK[0x2F50];
  *(v7 + 3136) ^= STACK[0x2738];
  *(v7 + 2001) ^= STACK[0x34A8];
  HIDWORD(v16) = v20 & 0xFF00 | BYTE2(v20);
  LODWORD(v16) = v20;
  LODWORD(STACK[0x3178]) = v16 >> 24;
  *(v7 + 3137) ^= STACK[0x2600];
  *(v7 + 2002) ^= STACK[0x30F0];
  *(v7 + 3138) ^= STACK[0x2018];
  *(v7 + 2003) ^= STACK[0x2020];
  *(v7 + 3139) ^= STACK[0x3060];
  *(v7 + 2004) ^= STACK[0x2428];
  *(v7 + 3140) ^= LODWORD(STACK[0x24E8]);
  *(v7 + 2005) ^= STACK[0x3758];
  *(v7 + 3141) ^= STACK[0x2028];
  STACK[0x3900] = v12 >> 7;
  LOBYTE(v10) = *(v7 + 2006) ^ STACK[0x2030];
  HIDWORD(v16) = v13 & 0xFF00 | BYTE2(v13);
  LODWORD(v16) = v13;
  LODWORD(STACK[0x3170]) = v16 >> 24;
  STACK[0x3180] = BYTE3(v13);
  STACK[0x3D98] = 1410 * (v2 ^ 0x1106u);
  STACK[0x31C0] = a1;
  STACK[0x31D8] = v5;
  STACK[0x3190] = v3;
  LODWORD(STACK[0x31A0]) = v4;
  STACK[0x3588] = v40;
  STACK[0x3CD8] = v1;
  *(v7 + 2006) = v10;
  v43 = *(v6 + 8 * v2);
  LODWORD(STACK[0x3D90]) = 1;
  LODWORD(STACK[0x3D88]) = 1;
  LODWORD(STACK[0x3B00]) = 1;
  LODWORD(STACK[0x3B18]) = 1;
  LODWORD(STACK[0x3980]) = 1;
  LODWORD(STACK[0x3988]) = 1;
  LODWORD(STACK[0x3B08]) = 1;
  LODWORD(STACK[0x3998]) = 1;
  LODWORD(STACK[0x3AF0]) = 1;
  return v43();
}

uint64_t sub_100AA38B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, int a5@<W8>)
{
  LODWORD(STACK[0x2AC8]) = 0;
  LODWORD(STACK[0x2AB0]) = 0;
  LODWORD(STACK[0x2AA8]) = 0;
  LODWORD(STACK[0x2AF0]) = 0;
  LODWORD(STACK[0x2B00]) = 0;
  LODWORD(STACK[0x2AE8]) = 0;
  LODWORD(STACK[0x2AE0]) = 0;
  LODWORD(STACK[0x2B80]) = 0;
  LODWORD(STACK[0x2AF8]) = 0;
  LODWORD(STACK[0x2A90]) = 0;
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
  v6 = 90 * (a5 ^ 0x1B15u);
  STACK[0x3AF0] = v6;
  v7 = STACK[0x2238] == (v6 ^ 0x52B1);
  LODWORD(STACK[0x3B08]) = a5 ^ 0x4960;
  v8 = *(v5 + 8 * ((1634 * v7) ^ a5));
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x2B28]) = STACK[0x3810];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  v9 = STACK[0x1C28];
  LODWORD(STACK[0x2B88]) = STACK[0x1C28];
  LODWORD(STACK[0x3B00]) = v9;
  v10 = STACK[0x1954];
  LODWORD(STACK[0x2B70]) = STACK[0x1954];
  LODWORD(STACK[0x3438]) = v10;
  LODWORD(STACK[0x3280]) = v10;
  LODWORD(STACK[0x3290]) = v10;
  v11 = STACK[0x1A78];
  LODWORD(STACK[0x3298]) = STACK[0x1A78];
  LODWORD(STACK[0x3288]) = v11;
  v12 = STACK[0x2500];
  LODWORD(STACK[0x2B40]) = STACK[0x2500];
  LODWORD(STACK[0x3998]) = v12;
  LODWORD(STACK[0x3AE8]) = v12;
  v13 = STACK[0x21F4];
  LODWORD(STACK[0x2B60]) = STACK[0x21F4];
  LODWORD(STACK[0x3AE0]) = v13;
  v14 = STACK[0x32E8];
  LODWORD(STACK[0x3268]) = STACK[0x32E8];
  LODWORD(STACK[0x3488]) = v14;
  LODWORD(STACK[0x3260]) = v14;
  v15 = STACK[0x3318];
  LODWORD(STACK[0x2B98]) = STACK[0x3318];
  LODWORD(STACK[0x3980]) = 63;
  LODWORD(STACK[0x2BB0]) = 47;
  LODWORD(STACK[0x3988]) = 45;
  v16 = STACK[0x4A8];
  v17 = STACK[0x2928];
  STACK[0x3D78] = STACK[0x2928];
  LODWORD(STACK[0x3D30]) = 1;
  LODWORD(STACK[0x3D38]) = 1;
  LODWORD(STACK[0x3D58]) = 1;
  LODWORD(STACK[0x3D28]) = 1;
  LODWORD(STACK[0x3D70]) = 1;
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
  LODWORD(STACK[0x8C8]) = 1;
  LODWORD(STACK[0x818]) = 1;
  LODWORD(STACK[0x39A0]) = STACK[0x1204];
  v18 = STACK[0x1A90];
  LODWORD(STACK[0x3D48]) = STACK[0x1A90];
  LODWORD(STACK[0x3CE8]) = STACK[0x28CC];
  LODWORD(STACK[0x36B8]) = STACK[0x2134];
  LODWORD(STACK[0x2B30]) = STACK[0x3688];
  v19 = STACK[0x1BC8];
  LODWORD(STACK[0x39E8]) = STACK[0x1BC8];
  STACK[0x32E0] = v17;
  STACK[0x3D50] = STACK[0x448];
  STACK[0x3AD8] = v16;
  STACK[0x32D8] = STACK[0x1BE8];
  LODWORD(STACK[0x3278]) = v19;
  LODWORD(STACK[0x3270]) = STACK[0x2B20];
  LODWORD(STACK[0x3258]) = v18;
  LODWORD(STACK[0x32D0]) = STACK[0x3D90];
  return v8(a1, 0, a2, v16, a3, a4, v15);
}

uint64_t sub_100AA3B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = __ROR8__((v5 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v7 = *(v4 + 8 * v3);
  v8 = -2 - (((0xB1F49ABE1B6CA29CLL - v6) | 0x658EE3515D6E46C9) + ((v6 + 0x4E0B6541E4935D63) | 0x9A711CAEA291B936));
  v9 = v8 ^ 0x8A36BDC0795AF64DLL;
  v8 ^= 0xFA6D97CF5DC01D57;
  v10 = __ROR8__(v9, 8);
  v11 = __ROR8__((((2 * (v10 + v8)) | 0xFB1D93A6ED8B4FD0) - (v10 + v8) - 0x7D8EC9D376C5A7E8) ^ 0x62F55B475B2A8607, 8);
  v12 = (((2 * (v10 + v8)) | 0xFB1D93A6ED8B4FD0) - (v10 + v8) - 0x7D8EC9D376C5A7E8) ^ 0x62F55B475B2A8607 ^ __ROR8__(v8, 61);
  v13 = (v11 + v12) ^ 0x1C02DF5B258263EDLL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) & 0xE9F12045A70D6BEELL) - (v15 + v14) - 0x74F89022D386B5F8) ^ 0xDAFB28A31FA70A3BLL;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ a1;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (v20 + v19 - ((2 * (v20 + v19)) & 0x2762ADD54F5FDC68) + 0x13B156EAA7AFEE34) ^ 0xB228AF44F8288471;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0xB2823E14A03C0367;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v5[10] = (((((v25 + v24) & 0xFA99D4F0DEF41708 ^ 0x11C05088241100) + ((v25 + v24) ^ 0xFE8A3FAA77D8A67ALL) - (((v25 + v24) ^ 0xFE8A3FAA77D8A67ALL) & 0xFA99D4F0DEF41708)) ^ 0x6D4297F7AE54A0F1) >> (8 * ((v5 + 10) & 7u))) ^ HIBYTE(a2) ^ 0x97;
  v26 = __ROR8__((v5 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = ((v26 + 0x4E0B6541E4935D63) | 0xE25DA48C5D882845) - ((v26 + 0x4E0B6541E4935D63) | 0x1DA25B73A277D7BALL) + 0x1DA25B73A277D7BALL;
  v28 = v27 ^ 0xDE5FA1D79BC98C1;
  v27 ^= 0x7DBED0125D2673DBuLL;
  v29 = (__ROR8__(v28, 8) + v27) ^ 0x1F7B92942DEF21EFLL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x1C02DF5B258263EDLL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x51FC477E33DE4033;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ a1;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((v37 + v36) | 0x7DCA7F02D587C76FLL) - ((v37 + v36) | 0x823580FD2A783890) - 0x7DCA7F02D587C770) ^ 0xDC5386AC8A00AD2ALL;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0xB2823E14A03C0367;
  v5[11] = (((__ROR8__(v40, 8) + (v40 ^ __ROR8__(v39, 61))) ^ 0x69517CAD07781183) >> (8 * ((v5 + 11) & 7u))) ^ BYTE6(a2) ^ 0x21;
  v41 = __ROR8__((v5 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v42 = (v41 + 0x4E0B6541E4935D63) ^ 0x9FE3749E00AE5B9ELL;
  v43 = __ROR8__((v41 + 0x4E0B6541E4935D63) ^ 0xEFB85E912434B084, 8);
  v44 = (((2 * ((v43 + v42) ^ 0x63AE6FF750753132)) | 0x98E181A53225CE1ELL) - ((v43 + v42) ^ 0x63AE6FF750753132) + 0x338F3F2D66ED18F1) ^ 0xB0A53DB1E488F7D2;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (v46 + v45 - ((2 * (v46 + v45)) & 0x809A64E44EAD9B22) - 0x3FB2CD8DD8A9326FLL) ^ 0xDC4FED2902D4AE7CLL;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (((v49 + v48) | 0x2BA94A1803A1CCB7) - ((v49 + v48) | 0xD456B5E7FC5E3348) - 0x2BA94A1803A1CCB8) ^ 0x7A550D66307F8C84;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = __ROR8__(v50, 8);
  v53 = (v52 + v51 - ((2 * (v52 + v51)) & 0x8073BCE190DCA408) + 0x4039DE70C86E5204) ^ 0x6275D7BA8C625E0FLL;
  v54 = v53 ^ __ROR8__(v51, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0xA199F9AE5F876A45;
  v56 = __ROR8__(v55, 8);
  v57 = v55 ^ __ROR8__(v54, 61);
  v58 = (((2 * (v56 + v57)) | 0xCB037123AC522332) - (v56 + v57) - 0x6581B891D6291199) ^ 0xD7038685761512FELL;
  v5[12] = (((__ROR8__(v58, 8) + (v58 ^ __ROR8__(v57, 61))) ^ 0x69517CAD07781183) >> (8 * ((v5 + 12) & 7u))) ^ BYTE5(a2) ^ 0xDF;
  v59 = (__ROR8__((v5 + 13) & 0xFFFFFFFFFFFFFFF8, 8) + 0x4E0B6541E4935D63) & 0xF9FFFFFFFFFFFFFFLL;
  v60 = v59 ^ 0xE9B85E912434B084;
  v59 ^= 0x99E3749E00AE5B9ELL;
  v61 = __ROR8__(v60, 8);
  v62 = (((v61 + v59) | 0x924E2ADFD67DB3CALL) - ((v61 + v59) | 0x6DB1D52029824C35) + 0x6DB1D52029824C35) ^ 0x8D35B84BFB929225;
  v63 = v62 ^ __ROR8__(v59, 61);
  v64 = (__ROR8__(v62, 8) + v63) ^ 0x1C02DF5B258263EDLL;
  v65 = v64 ^ __ROR8__(v63, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ 0x51FC477E33DE4033;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (((v68 + v67) | 0x841AF42C05A629ECLL) - ((v68 + v67) | 0x7BE50BD3FA59D613) + 0x7BE50BD3FA59D613) ^ 0xA656FDE641AA25E7;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ 0xA199F9AE5F876A45;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = __ROR8__(v71, 8);
  v74 = (v73 + v72 - ((2 * (v73 + v72)) & 0x12ADBAA4ECB8407CLL) + 0x956DD52765C203ELL) ^ 0xBBD4E346D6602359;
  v5[13] = (((__ROR8__(v74, 8) + (v74 ^ __ROR8__(v72, 61))) ^ 0x69517CAD07781183) >> (8 * ((v5 + 13) & 7u))) ^ BYTE4(a2) ^ 0x14;
  v75 = __ROR8__((v5 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v76 = ((0xB1F49ABE1B6CA29CLL - v75) & 0xF9A5B2C873D617DFLL) + v75 + 0x4E0B6541E4935D63 - ((v75 + 0x4E0B6541E4935D63) & 0xFFA5B2C873D617DFLL);
  v77 = v76 ^ 0x101DEC5957E2A75BLL;
  v76 ^= 0x6046C65673784C41uLL;
  v78 = __ROR8__(v77, 8);
  v79 = (((2 * (v78 + v76)) | 0x78D4BE029440B406) - (v78 + v76) - 0x3C6A5F014A205A03) ^ 0x2311CD9567CF7BECLL;
  v80 = v79 ^ __ROR8__(v76, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ 0x1C02DF5B258263EDLL;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = __ROR8__(v81, 8);
  v84 = (((2 * ((v83 + v82) ^ 0x7A02CD2F1D6630DALL)) | 0xC543C1F2FA5D1AAELL) - ((v83 + v82) ^ 0x7A02CD2F1D6630DALL) - 0x62A1E0F97D2E8D57) ^ 0x495F6AA85396FDBELL;
  v85 = v84 ^ __ROR8__(v82, 61);
  v86 = __ROR8__(v84, 8);
  v87 = (v86 + v85 - ((2 * (v86 + v85)) & 0x73382C9FD72ABD0ELL) - 0x4663E9B0146AA179) ^ 0x9BD01F85AF99528CLL;
  v88 = v87 ^ __ROR8__(v85, 61);
  v89 = __ROR8__(v87, 8);
  v90 = __ROR8__((((2 * (v89 + v88)) | 0x26E4F1FA3738CBDALL) - (v89 + v88) - 0x137278FD1B9C65EDLL) ^ 0xB2EB8153441B0FA8, 8);
  v91 = (((2 * (v89 + v88)) | 0x26E4F1FA3738CBDALL) - (v89 + v88) - 0x137278FD1B9C65EDLL) ^ 0xB2EB8153441B0FA8 ^ __ROR8__(v88, 61);
  v92 = (v90 + v91) ^ 0xB2823E14A03C0367;
  v93 = v92 ^ __ROR8__(v91, 61);
  v94 = __ROR8__(v92, 8);
  v5[14] = (((((v94 + v93) ^ 0xCBB21DE4AE040FC6 | 0x1C6044D8559970BBLL) - ((v94 + v93) ^ 0xCBB21DE4AE040FC6 | 0xE39FBB27AA668F44) - 0x1C6044D8559970BCLL) ^ 0xBE832591FCE56EFELL) >> (8 * ((v5 + 14) & 7u))) ^ BYTE3(a2) ^ 0xDF;
  v95 = __ROR8__((v5 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v96 = v95 - ((2 * v95 - 0x63E9357C36D9453ALL) & 0xE76FCA34CE4AEEE6) - 0x3E3CB5A3B4472B2ALL;
  v97 = v96 ^ 0x9C0FBB8B4311C7F7;
  v96 ^= 0xEC549184678B2CEDLL;
  v98 = __ROR8__(v97, 8);
  v99 = (((v98 + v96) & 0x19C09F11E1112385 ^ 0x408410C1000105) + ((v98 + v96) & 0xE63F60EE1EEEDC7ALL ^ 0xE2356062042ED813) - 1) ^ 0xFD0E76E6E8C1F8F8;
  v100 = v99 ^ __ROR8__(v96, 61);
  v101 = (__ROR8__(v99, 8) + v100) ^ 0x1C02DF5B258263EDLL;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = __ROR8__(v101, 8);
  v104 = (v103 + v102 - ((2 * (v103 + v102)) & 0xC44660801F6C6BB8) + 0x622330400FB635DCLL) ^ 0x33DF773E3C6875EFLL;
  v105 = v104 ^ __ROR8__(v102, 61);
  v106 = __ROR8__(v104, 8);
  v107 = (((2 * (v106 + v105)) | 0x493C9CEDAEB96EALL) - (v106 + v105) - 0x249E4E76D75CB75) ^ 0x2005ED2D2979C77ELL;
  v108 = v107 ^ __ROR8__(v105, 61);
  v109 = (__ROR8__(v107, 8) + v108) ^ 0xA199F9AE5F876A45;
  v110 = v109 ^ __ROR8__(v108, 61);
  v111 = __ROR8__(v109, 8);
  v112 = (((2 * (v111 + v110)) | 0x5ADFE2DD1F6EB40CLL) - (v111 + v110) - 0x2D6FF16E8FB75A06) ^ 0x9FEDCF7A2F8B5961;
  v113 = __ROR8__(v112, 8);
  v114 = __ROR8__(v110, 61);
  LOBYTE(v110) = (((v113 + (v112 ^ v114) - ((2 * (v113 + (v112 ^ v114))) & 0xAFB0691368F17B2CLL) - 0x2827CB764B87426ALL) ^ 0xBE894824B300AC15) >> (8 * ((v5 + 15) & 7u))) ^ BYTE2(a2) ^ 0xAB;
  v115 = __ROR8__((v5 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v5[15] = v110;
  v116 = (v115 + 0x4E0B6541E4935D63) ^ 0x9FE3749E00AE5B9ELL;
  v117 = __ROR8__((v115 + 0x4E0B6541E4935D63) ^ 0xEFB85E912434B084, 8);
  v118 = (((v117 + v116) | 0x31D71FEA29DE7E9FLL) - ((v117 + v116) | 0xCE28E015D6218160) - 0x31D71FEA29DE7EA0) ^ 0x2EAC8D7E04315F70;
  v119 = v118 ^ __ROR8__(v116, 61);
  v120 = __ROR8__(v118, 8);
  v121 = (((2 * (v120 + v119)) | 0x7753630E4E8C1AFELL) - (v120 + v119) - 0x3BA9B18727460D7FLL) ^ 0x27AB6EDC02C46E92;
  v122 = v121 ^ __ROR8__(v119, 61);
  v123 = __ROR8__(v121, 8);
  v124 = (((2 * (v123 + v122)) & 0xCC96C9C44174701CLL) - (v123 + v122) - 0x664B64E220BA380FLL) ^ 0xC848DC63EC9B87C2;
  v125 = v124 ^ __ROR8__(v122, 61);
  v126 = __ROR8__(v124, 8);
  v127 = (((v126 + v125) | 0x8F01B17285EF6F02) - ((v126 + v125) | 0x70FE4E8D7A1090FDLL) + 0x70FE4E8D7A1090FDLL) ^ 0xAD4DB8B8C1E36309;
  v128 = v127 ^ __ROR8__(v125, 61);
  v129 = __ROR8__(v127, 8);
  v130 = (((2 * (v129 + v128)) | 0x1678BD4A9EF7893CLL) - (v129 + v128) + 0x74C3A15AB0843B62) ^ 0x2AA5A70B10FCAEDBLL;
  v131 = v130 ^ __ROR8__(v128, 61);
  v132 = (__ROR8__(v130, 8) + v131) ^ 0xB2823E14A03C0367;
  v5[16] = (((__ROR8__(v132, 8) + (v132 ^ __ROR8__(v131, 61))) ^ 0x69517CAD07781183) >> (8 * ((v5 + 16) & 7u))) ^ BYTE1(a2) ^ 0xA1;
  v133 = __ROR8__((v5 + 17) & 0xFFFFFFFFFFFFFFF8, 8) + 0x4E0B6541E4935D63;
  v134 = __ROR8__(v133 ^ 0xEFB85E912434B084, 8);
  v133 ^= 0x9FE3749E00AE5B9ELL;
  v135 = (v134 + v133) ^ 0x1F7B92942DEF21EFLL;
  v136 = v135 ^ __ROR8__(v133, 61);
  v137 = __ROR8__(v135, 8);
  v138 = (((2 * (v137 + v136)) & 0x26CC6675BD7CE3ELL) - (v137 + v136) - 0x1366333ADEBE720) ^ 0xE2CB439777967B0DLL;
  v139 = v138 ^ __ROR8__(v136, 61);
  v140 = (__ROR8__(v138, 8) + v139) ^ 0x51FC477E33DE4033;
  v141 = v140 ^ __ROR8__(v139, 61);
  v142 = (__ROR8__(v140, 8) + v141) ^ a1;
  v143 = v142 ^ __ROR8__(v141, 61);
  v144 = (__ROR8__(v142, 8) + v143) ^ 0xA199F9AE5F876A45;
  v145 = v144 ^ __ROR8__(v143, 61);
  v146 = __ROR8__(v144, 8);
  v147 = __ROR8__((((2 * (v146 + v145)) & 0xD8D84BB4A111D4AELL) - (v146 + v145) + 0x1393DA25AF7715A8) ^ 0xA111E4310F4B16CFLL, 8) + ((((2 * (v146 + v145)) & 0xD8D84BB4A111D4AELL) - (v146 + v145) + 0x1393DA25AF7715A8) ^ 0xA111E4310F4B16CFLL ^ __ROR8__(v145, 61));
  v5[17] = ((((v147 | 0xE1E7F2C2B7D1D432) - (v147 | 0x1E180D3D482E2BCDLL) + 0x1E180D3D482E2BCDLL) ^ 0x88B68E6FB0A9C5B1) >> (8 * ((v5 + 17) & 7u))) ^ a2 ^ 0x3B;
  return v7();
}

uint64_t sub_100AA4A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x2AC8]) = 0;
  LODWORD(STACK[0x2AB0]) = 0;
  LODWORD(STACK[0x2AA8]) = 0;
  LODWORD(STACK[0x2AF0]) = 0;
  LODWORD(STACK[0x2B00]) = 0;
  LODWORD(STACK[0x2AE8]) = 0;
  LODWORD(STACK[0x2AE0]) = 0;
  LODWORD(STACK[0x2AD8]) = 0;
  LODWORD(STACK[0x910]) = 0;
  LODWORD(STACK[0x8B0]) = 0;
  LODWORD(STACK[0x8B8]) = 0;
  v8 = v6 ^ 0x6725u;
  v9 = *(v7 + 8 * (((v8 + 10024) * (LODWORD(STACK[0x2C20]) == 8)) ^ v6));
  LODWORD(STACK[0x2BB0]) = STACK[0x2238];
  LODWORD(STACK[0x39A8]) = STACK[0x1AA8];
  v10 = STACK[0x2500];
  LODWORD(STACK[0x2B40]) = STACK[0x2500];
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  LODWORD(STACK[0x3998]) = v10;
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  LODWORD(STACK[0x3B00]) = STACK[0x32E8];
  v11 = STACK[0x1954];
  LODWORD(STACK[0x2B70]) = STACK[0x1954];
  LODWORD(STACK[0x3280]) = v11;
  v12 = LODWORD(STACK[0x3830]);
  STACK[0x3D90] = v12;
  LODWORD(STACK[0x32D0]) = v12;
  v13 = STACK[0x1A78];
  LODWORD(STACK[0x3268]) = STACK[0x1A78];
  LODWORD(STACK[0x3288]) = v13;
  v14 = STACK[0x3E18];
  LODWORD(STACK[0x2B88]) = STACK[0x3E18];
  LODWORD(STACK[0x3AE8]) = v14;
  v15 = STACK[0x21F4];
  LODWORD(STACK[0x3438]) = STACK[0x21F4];
  LODWORD(STACK[0x2B60]) = v15;
  LODWORD(STACK[0x3298]) = v15;
  LODWORD(STACK[0x3290]) = v15;
  LODWORD(STACK[0x3AE0]) = v15;
  v16 = STACK[0x3810];
  LODWORD(STACK[0x2B28]) = STACK[0x3810];
  LODWORD(STACK[0x3260]) = v16;
  v17 = STACK[0x3318];
  LODWORD(STACK[0x2B98]) = STACK[0x3318];
  LODWORD(STACK[0x3278]) = v17;
  LODWORD(STACK[0x3980]) = 10;
  LODWORD(STACK[0x2C20]) = 8;
  LODWORD(STACK[0x3988]) = 4;
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
  LODWORD(STACK[0x2B18]) = 1;
  LODWORD(STACK[0x2B08]) = 1;
  LODWORD(STACK[0x2AA0]) = 1;
  LODWORD(STACK[0x8E0]) = 1;
  LODWORD(STACK[0x840]) = 1;
  LODWORD(STACK[0x848]) = 1;
  LODWORD(STACK[0x8E8]) = 1;
  LODWORD(STACK[0x850]) = 1;
  LODWORD(STACK[0x858]) = 1;
  LODWORD(STACK[0x2AC0]) = 1;
  LODWORD(STACK[0x8F0]) = 1;
  LODWORD(STACK[0x860]) = 1;
  LODWORD(STACK[0x868]) = 1;
  LODWORD(STACK[0x8F8]) = 1;
  LODWORD(STACK[0x870]) = 1;
  LODWORD(STACK[0x878]) = 1;
  LODWORD(STACK[0x2B10]) = 1;
  LODWORD(STACK[0x2AD0]) = 1;
  LODWORD(STACK[0x880]) = 1;
  LODWORD(STACK[0x888]) = 1;
  LODWORD(STACK[0x900]) = 1;
  LODWORD(STACK[0x890]) = 1;
  LODWORD(STACK[0x898]) = 1;
  LODWORD(STACK[0x908]) = 1;
  LODWORD(STACK[0x8A0]) = 1;
  LODWORD(STACK[0x8A8]) = 1;
  LODWORD(STACK[0x39A0]) = STACK[0x1204];
  LODWORD(STACK[0x3D48]) = STACK[0x1A90];
  LODWORD(STACK[0x3CE8]) = STACK[0x28CC];
  LODWORD(STACK[0x36B8]) = STACK[0x2134];
  LODWORD(STACK[0x2B30]) = STACK[0x3688];
  LODWORD(STACK[0x39E8]) = STACK[0x1BC8];
  STACK[0x3AF0] = v8;
  LODWORD(STACK[0x3B08]) = v8;
  STACK[0x32E0] = v18;
  STACK[0x3D50] = v18;
  STACK[0x3AD8] = v18;
  STACK[0x32D8] = STACK[0x2618];
  LODWORD(STACK[0x3270]) = STACK[0x2B20];
  LODWORD(STACK[0x3258]) = STACK[0x2424];
  return v9(a1, 1, a3, v18, a5, a6, v17);
}

uint64_t sub_100AA4D70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4[396];
  v7 = a4[424];
  a4[419] = &STACK[0x2280] + v7;
  a4[113] = &STACK[0x2280] + v7 + 32;
  a4[424] = (v4 + 12656) + v7 - 14448;
  v8 = *(v5 + 8 * v4);
  a4[207] = v6;
  STACK[0x1BD8] = v8;
  return (*(v5 + 8 * (v4 + 2872)))();
}

uint64_t sub_100AA4E28()
{
  v2 = (*(v0 + 8 * (v1 + 23938)))();
  *STACK[0x770] = 0;
  *STACK[0x790] = 0;
  return (*(v0 + 8 * v1))(v2);
}

uint64_t sub_100AA4E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  *(a7 + 16) = a1 + 0x1883660EE8144416;
  *v10 = a7 + 0x2369327399A66D95;
  *(a7 + 24) = -1389924012;
  *(a7 + 32) = v9;
  STACK[0x898] = a7 + 40;
  LODWORD(STACK[0x908]) = 0;
  STACK[0x9D0] = *(v8 + 8 * v7);
  v11 = *(v8 + 8 * ((v7 + 5640) ^ v7));
  LODWORD(STACK[0x790]) = a6 + 16;
  return v11();
}

uint64_t sub_100AA4FAC(unsigned int a1, uint64_t a2, int a3, int a4)
{
  LODWORD(STACK[0x4948]) = LODWORD(STACK[0x53E0]) | LODWORD(STACK[0x5270]);
  LODWORD(STACK[0x4940]) = LODWORD(STACK[0x53D8]) | LODWORD(STACK[0x54C0]);
  LODWORD(STACK[0x4760]) = LODWORD(STACK[0x54B0]) | LODWORD(STACK[0x53C0]);
  v13 = v12 & 0xD0 ^ 0x3E;
  v14 = (v12 ^ a4) & (2 * ((v12 ^ a4) & (2 * ((v12 ^ a4) & (2 * ((v12 ^ a4) & (2 * ((v13 << (((a1 - 100) ^ 0xF1) & 0xFB)) & (v12 ^ a4) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13;
  LOBYTE(v13) = v11 & 0x7C ^ 0x4C;
  v15 = (((v11 ^ (2 * ((v11 ^ a4) & (2 * ((v11 ^ a4) & (2 * ((v11 ^ a4) & (2 * ((v11 ^ a4) & (2 * v13) ^ v13)) ^ v13)) ^ v13)) ^ v13))) ^ 0x7C) << 8) | (((v12 ^ (2 * v14)) ^ 0xD0) << 16);
  v16 = v8 & 0x2C ^ 0xA4;
  v17 = v9 & 0x3C ^ 0x2C;
  v18 = (((v8 ^ (2 * ((v8 ^ a4) & (2 * ((v8 ^ a4) & (2 * ((v8 ^ a4) & (2 * ((v8 ^ a4) & (2 * v16) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ 0x2C) << 16) | (((v9 ^ (2 * ((v9 ^ a4) & (2 * ((v9 ^ a4) & (2 * ((v9 ^ a4) & (2 * ((v9 ^ a4) & (2 * v17) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0x3C) << 8);
  LODWORD(STACK[0x53C8]) = (((v18 & 0xA9F000 | 0x28) ^ ((v10 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v10 ^ 0x24)) & 0x58 ^ 0x2C) & (v10 ^ 0x24))) ^ 0x2C) & (v10 ^ 0x24))) ^ 0x2C) & (v10 ^ 0x24))) ^ 0x2C) & (v10 ^ a4)))) ^ 0x560FE9) & ~v18) << 8) & 0x7B100200;
  v19 = v5 & 0x1A ^ 0x1B;
  v20 = v6 & 0x34 ^ 0xA8;
  LODWORD(STACK[0x4818]) = LODWORD(STACK[0x5440]);
  v21 = (((v6 ^ (2 * ((v6 ^ a4) & (2 * ((v6 ^ a4) & (2 * ((v6 ^ a4) & (2 * ((v6 ^ a4) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0x34) << 8) | (((v5 ^ (2 * ((v5 ^ a4) & (2 * ((v5 ^ a4) & (2 * ((v5 ^ a4) & (2 * ((v5 ^ a4) & (2 * ((v5 ^ a4) & (2 * ((v5 ^ a4) & (2 * v19) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0x1A) << 16);
  LOBYTE(v18) = v4 & 0x2C ^ 0xA4;
  LODWORD(STACK[0x53E0]) = ((((v7 ^ (2 * ((v7 ^ a4) & (2 * ((v7 ^ a4) & (2 * ((v7 ^ a4) & (2 * ((v7 ^ a4) & (2 * (((2 * (v7 & 0x24)) | 0x12) & (v7 ^ a4) ^ (v7 | 9))) ^ (v7 | 9))) ^ (v7 | 9))) ^ (v7 | 9))) ^ (v7 | 9)))) ^ 0x857C62) & ~v15 | v15 & 0x7A8300) << 8) & 0x2F813000;
  v22 = ((v21 & 0x584C00 | 0x87) ^ ((v4 ^ (2 * ((v4 ^ a4) & (2 * ((v4 ^ a4) & (2 * ((v4 ^ a4) & (2 * ((v4 ^ a4) & (2 * v18) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0xA7B314) & ~v21) << 8;
  LODWORD(STACK[0x54C0]) = v22 & 0xA61EF700;
  return (*(STACK[0x57D8] + 8 * ((647 * (a1 < 0x7461F454)) ^ (a1 - 1933464033))))(((a1 + 2140819612) & 0xD275FFB) - 6383, v22 ^ 0x584000FFu, ((a1 + 2140819612) & 0xD275FFB) * a3 - 16647059, ((a1 + 2140819612) & 0xD275FFB) - 6127, 20918183, 21613735);
}

uint64_t sub_100AA5E2C@<X0>(unsigned int a1@<W3>, int a2@<W4>, int a3@<W6>, int a4@<W8>)
{
  v7 = LODWORD(STACK[0x3370]) != 0;
  v8 = STACK[0x37A8];
  LODWORD(STACK[0x3A90]) = 227 * (a4 ^ 0x79C7);
  v9 = ((((*(v6 + v4 + (v8 ^ 0xDE) * a3 - ((((v4 + (v8 ^ 0xDEu) * a3) * a1) >> 32) >> 1) * a2) - 87) ^ 0xFB) + 85) ^ 0x9A) * a3 + 25186740;
  return (*(v5 + 8 * (a4 ^ ((8 * v7) | (16 * v7)))))(v8 ^ 0xFFFFFF8D, (*(v6 + v9 - (((1266205 * v9) >> 32) >> 1) * a2) ^ 0xFFFFFFC3) + 85);
}

uint64_t sub_100AA6080()
{
  if (v2 < v1 != v0 + v4 < v1)
  {
    v6 = v2 < v1;
  }

  else
  {
    v6 = v2 > v0 + v4;
  }

  return (*(*(v5 - 120) + 8 * ((7 * !v6) ^ v3)))();
}

uint64_t sub_100AA6870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v17 = *(v11 + 8 * (v10 - 2331));
  v18 = STACK[0x37D8];
  v19 = STACK[0x3788];
  v20 = STACK[0x3780];
  v21 = STACK[0x3A48];
  STACK[0x36A0] = a8;
  STACK[0x36F8] = v8;
  STACK[0x3308] = v12;
  STACK[0x39C8] = v9;
  STACK[0x3A18] = v13;
  STACK[0x39B8] = v14;
  STACK[0x3A10] = v15;
  STACK[0x39B0] = v16;
  return v17(a1, a2, v20, v21, v18, v19);
}

uint64_t sub_100AA6958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = v4 + v7 + v5;
  v12 = __ROR8__(v11 & 0xFFFFFFFFFFFFFFF8, 8);
  v13 = v12 - (((v12 << ((v8 ^ 0x3Cu) + 38)) + 0x49827CF4CE56C3ECLL) & 0x89E86F40934273D0) + 0x69B5761AB0CC9BDELL;
  v14 = v13 ^ 0x4FEC8A3A2B6C6FA8;
  v13 ^= 0x69E579E91237601DuLL;
  v15 = __ROR8__(v14, 8);
  v16 = __ROR8__((((2 * (v15 + v13)) & 0xBB783B160B29A69CLL) - (v15 + v13) - 0x5DBC1D8B0594D34FLL) ^ 0x3F2021107DFF8771, 8);
  v17 = (((2 * (v15 + v13)) & 0xBB783B160B29A69CLL) - (v15 + v13) - 0x5DBC1D8B0594D34FLL) ^ 0x3F2021107DFF8771 ^ __ROR8__(v13, 61);
  v18 = (v16 + v17) ^ 0x893772B00383F7DCLL;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) | 0xB5C9B22F089FC2BCLL) - (v20 + v19) + 0x251B26E87BB01EA2) ^ 0xF2C6D08E0F93413DLL;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (v23 + v22 - ((2 * (v23 + v22)) & 0xA924929AE5194ABALL) - 0x2B6DB6B28D735AA3) ^ 0x3A01A6B4891DC5C6;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x5DC0C52EDBDD025;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ a3;
  *v11 = (((__ROR8__(v28, 8) + (v28 ^ __ROR8__(v27, 61))) ^ v10) >> (8 * (v11 & 7u))) ^ *(v3 + v7);
  return (*(v9 + 8 * ((21 * (((v7 + 1) ^ v6) != 385182804)) ^ v8)))();
}

uint64_t sub_100AA6B90()
{
  v2 = STACK[0x1648];
  v3 = STACK[0xF38];
  STACK[0x638] = STACK[0x1648];
  v4 = v2 != 0 && v3 != 0;
  if (v4)
  {
    v5 = -143113071;
  }

  else
  {
    v5 = -143155721;
  }

  LODWORD(STACK[0x1DFC]) = v5;
  return (*(v1 + 8 * ((v4 * (((1285200043 - v0) & 0x31C5A7FF) + 13844)) ^ 0x2BFu)))();
}

uint64_t sub_100AA6C1C@<X0>(unsigned int a1@<W8>)
{
  v7 = (v3 + 2120236533) ^ v2 ^ v1;
  v8 = 1534937323 * ((0x1F245D2F1F8F1430 - ((v6 - 240) | 0x1F245D2F1F8F1430) + ((v6 - 240) | 0xE0DBA2D0E070EBCFLL)) ^ 0x2DA32A12269E1088);
  *(v4 + 1064) = v8 + a1;
  *(v6 - 208) = ((v3 + 1663835201) | 0x30) + v8;
  *(v6 - 224) = v8;
  *(v6 - 220) = (v3 + 1663835201) ^ v8;
  *(v4 + 1040) = v7 ^ v8;
  *(v6 - 232) = v3 + 1663835201 - v8 - 2878;
  *(v6 - 228) = v8 + v3 - 723214290;
  v9 = (*(v5 + 8 * (v3 + 2120268328)))(v6 - 240);
  return (*(v5 + 8 * *(v6 - 204)))(v9);
}

uint64_t sub_100AA6D0C()
{
  *(v2 + 736) = v1;
  *(v2 + 1192) = *(v3 + 8 * v0);
  return (*(v3 + 8 * (v0 ^ 0x2DF4 ^ (v0 + 12660))))();
}

uint64_t sub_100AA8228()
{
  *(v2 - 112) = *v1;
  *(v2 - 111) = v1[1];
  *(v2 - 110) = v1[2];
  *(v2 - 109) = v1[3];
  *(v2 - 108) = v1[4];
  *(v2 - 107) = v1[5];
  *(v2 - 106) = v1[6];
  *(v2 - 105) = v1[7];
  *(v2 - 104) = v1[8];
  *(v2 - 103) = v1[9];
  *(v2 - 102) = v1[10];
  *(v2 - 101) = v1[11];
  *(v2 - 100) = v1[12];
  *(v2 - 99) = v1[13];
  *(v2 - 98) = v1[14];
  *(v2 - 97) = v1[15];
  return (*(*(v2 - 120) + 8 * v0))();
}

uint64_t sub_100AA82BC(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = 1645 * v17 + 3822980 - 2696 * (((12744711 * (1645 * v17 + 3822980)) >> 32) >> 3);
  v21 = (1 << v17) + (((v8 - 24687) | 0x4140) ^ 0x36) - ((2 << v17) & 0xE4) - 12;
  v22 = *STACK[0x660];
  v23 = *a2;
  v24 = *(v22 + (v23 & v9));
  v25 = *v14 ^ 0x21E69720;
  v26 = (v20 ^ 0x7FBC6C8FEFFFD7FFLL) + 2 * (v20 & 0x7FF) + a8;
  v27 = *(v22 + (v23 & STACK[0x658]));
  v28 = *(v16 + v13) ^ v18 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v27 + v16 + a5) & v25)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v27 + v16 + 673210728) & v25));
  v29 = *(v26 + 0x3AA04A13D6E30DECLL) ^ (76 * (v26 + 1)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v26 + 268445697 + v24 + v12) & v25)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v26 + 268445697 + v24 + v12 + 2) & v25)) ^ v28 ^ 0x63;
  if (((v15 ^ v11 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v24 + v10 + v12) & v25)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v24 + v10 + v12 + 2) & v25)) ^ 0x86) & (v21 ^ 0x72) ^ v21 & 0xF6) == 0x72)
  {
    v30 = v28 ^ 0x13;
  }

  else
  {
    v30 = v29;
  }

  *(a6 + v13) = v19 ^ 0xA32579C9 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v27 + a6 + 673210726) & v25)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v27 + a6 + 673210728) & v25)) ^ v30 ^ 0xDA;
  return (*(STACK[0x668] + 8 * ((215 * (((v17 + 1) & 0xF8) != 0)) ^ v8)))();
}

uint64_t sub_100AA84FC@<X0>(int a1@<W1>, uint64_t a2@<X7>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  v59 = *(&a56 + (1633 * v58 + 2129432) % 0xA88u);
  v60 = *(a2 + 4 * ((3677 * (v59 | ((v59 < 0x5F) << 8)) + 10983199) % (((a3 - 10704) | 0x32u) - 5746)));
  v61 = *(&a56 + (1633 * (((BYTE1(v60) ^ 0xB3089E03) - 687758086) ^ ((BYTE1(v60) ^ 0xDD780EB3) - 1183763382) ^ ((BYTE1(v60) ^ 0x6E70907D) + 175745672)) - 513921226) % 0xA88);
  v62 = v61 & 0xE7 ^ 0xA3;
  v63 = *(&a56 + (1633 * (((HIBYTE(v60) ^ 0x63665354) + 1201766807) ^ ((HIBYTE(v60) ^ 0xE3FFCD6E) - 952623187) ^ ((HIBYTE(v60) ^ 0x80999ECF) - 1537324018)) + 1637259062) % 0xA88);
  v64 = v63 & 0xF5 ^ 0x2A;
  v65 = *(&a56 + (1633 * (((BYTE2(v60) ^ 0xCBA5DF8D) - 177612500) ^ ((BYTE2(v60) ^ 0x9335DFB1) - 1376134888) ^ ((BYTE2(v60) ^ 0x589000C8) + 1717306991)) + 1824929531) % 0xA88);
  v66 = v65 & 0x69 ^ 0xE4;
  v67 = v61 ^ (2 * ((v61 ^ 0x20) & (2 * ((v61 ^ 0x20) & (2 * ((v61 ^ 0x20) & (2 * ((v61 ^ 0x20) & (2 * ((v61 ^ 0x20) & (2 * (v61 & (2 * v62) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62));
  v68 = (v65 ^ (2 * ((v65 ^ 0x20) & (2 * ((v65 ^ 0x20) & (2 * ((v65 ^ 0x20) & (2 * ((v65 ^ 0x20) & (2 * (v65 & (2 * (((2 * v65) & 0xC2 | 0x21) & v65)) ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ v66))) << 8;
  v69 = *(&a56 + (1633 * (((((2 * v60) & 0x5C ^ 0x6BC08304) - 612690884) ^ (((2 * v60) & 0x5C ^ 0x1F0738AC) - 1346588780) ^ (((2 * v60) & 0x5C ^ 0x74C7BBEC) - 998495020)) + (((v60 ^ 0x7DE3F936) + 739359575) ^ ((v60 ^ 0xD1DEE804) - 2144556443) ^ ((v60 ^ 0xAC3D186E) - 36742641))) - 389234201) % 0xA88);
  v70 = (((v63 ^ (2 * ((v63 ^ 0x20) & (2 * ((v63 ^ 0x20) & (2 * ((v63 ^ 0x20) & (2 * ((v63 ^ 0x20) & (2 * ((v63 ^ 0x20) & (2 * ((v63 ^ 0x20) & (2 * v64) ^ v64)) ^ v64)) ^ v64)) ^ v64)) ^ v64)) ^ v64))) << 16) ^ 0x7ED1CA) & (v68 ^ 0xFF94FF) | v68 & 0x2E00;
  LOBYTE(v68) = v69 & 0xA1 | 0x1C;
  LOBYTE(v60) = v68 ^ v69 & 0x78;
  v71 = v69 ^ (2 * ((v69 ^ 0x20) & (2 * ((v69 ^ 0x20) & (2 * ((v69 ^ 0x20) & (2 * ((v69 ^ 0x20) & (2 * ((v69 ^ 0x20) & (2 * (v69 & (2 * v68) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60));
  *(a2 + 4 * (v57 + 3677 * v58 - ((((v57 + 3677 * v58) * v56) >> 32) >> 12) * a1)) = (((((v70 ^ 0x2E9EB8) & (v67 ^ 0xFFFF19) ^ v67 & 0x8D) << 8) ^ 0x7F9A9858) & (v71 ^ 0xFFFFFFA4) | v71 & 0xA7) ^ 0x2F09A2AB;
  return (*(a55 + 8 * ((8340 * (v58 == 255)) ^ a3)))();
}

uint64_t sub_100AA8A48(uint64_t a1, unsigned int a2, int a3, int a4, int a5, uint64_t a6, int a7)
{
  v11 = STACK[0x640] + 4 * (a4 * v10 + a7 - (((((a4 * v10 + a7) >> 3) * a2) >> 32) >> 7) * a5);
  v12 = STACK[0x640] + 4 * (a4 * v10 + 3980424 - (((((a4 * v10 + 3980424) >> 3) * a2) >> 32) >> 7) * a5);
  v13 = *(*STACK[0x660] + (*v9 & STACK[0x658]));
  v14 = *v7 ^ v8;
  *(v12 - 0x34EE34220E8AC3B8) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v12 + v13 + 673210726) & v14)) ^ *(v11 - 0x34EE34220E8AC3B8) ^ (-1962600273 * v12) ^ (-1962600273 * v11) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v12 + v13 + a3) & v14)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v11 + v13 + 673210726) & v14)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v11 + v13 + a3) & v14));
  return (*(STACK[0x668] + 8 * ((242 * (a4 != 255)) ^ STACK[0x630])))();
}

uint64_t sub_100AA8B74()
{
  *(v3 - 216) = LODWORD(STACK[0x2AC]) ^ (1964904101 * ((((v3 - 216) | 0x7C750486) - ((v3 - 216) & 0x7C750486)) ^ 0x8657EF02));
  *(v3 - 208) = STACK[0x2B8];
  v4 = (*(v1 + 8 * (v0 ^ 0x1E01721C)))(v3 - 216);
  return (*(v1 + 8 * (v2 + v0 + 323)))(v4);
}

uint64_t sub_100AA8C64@<X0>(uint64_t a1@<X8>)
{
  v4 = (v1 - 10600) | 0x1010;
  v6 = (*(v2 + 8 * (v1 | 0x4A50)))(1028);
  *(v3 - 100) = v4;
  return (*(v2 + 8 * (((v6 == 0) * (v4 ^ 0x1828)) ^ v1)))(a1, 4294924411);
}

uint64_t sub_100AA8DB4@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v19 = ((((v8 + v16 - (v9 & v15)) ^ v14) - (v11 & (2 * ((v8 + v16 - (v9 & v15)) ^ v14))) + 230) ^ v17) & v12;
  *(a7 + 4 * v8) = a4 ^ ((v19 ^ a3) + (v19 ^ 0x1C)) ^ a5 ^ *(*(v13 + 8 * a2) + 4 * (v19 ^ a1) - 8);
  return (*(v18 + 8 * (((v10 == 0) * a6) ^ v7)))();
}

uint64_t sub_100AA8ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 8 * (v5 - 5549));
  LODWORD(STACK[0x3D80]) = 2;
  v7 = STACK[0x3750];
  LODWORD(STACK[0x1B50]) = STACK[0x221C];
  LODWORD(STACK[0x3310]) = STACK[0x35FC];
  LODWORD(STACK[0x3308]) = STACK[0x3970];
  LODWORD(STACK[0x3300]) = STACK[0x35F8];
  return v6(v7, a2, a3, a4, 128);
}

uint64_t sub_100AA8F24@<X0>(unsigned int a1@<W8>)
{
  v4 = STACK[0x3B38];
  v4[2008] = v2;
  v4[2005] = HIBYTE(v2);
  v4[2006] = BYTE2(v2);
  v4[2007] = v2 >> ((((v1 + 116) | 0x20) - 38) ^ (v1 + 102));
  return (*(v3 + 8 * ((172 * (a1 >= LODWORD(STACK[0x3E18]))) ^ v1)))();
}

uint64_t sub_100AA8F8C(uint64_t a1, __int16 a2)
{
  v4 = *(v3 + 4 * (68 * a2 + 3944 - 275 * ((((56481 * ((68 * a2 + 3944) & 0xFFFCu)) >> 16) + (((68 * a2 + 3944 - ((56481 * ((68 * a2 + 3944) & 0xFFFCu)) >> 16)) & 0xFFFE) >> 1)) >> 8)));
  v5 = v4 << 19;
  HIDWORD(v6) = v4;
  LODWORD(v6) = v4;
  v10 = v6 >> 29;
  HIDWORD(v6) = v4;
  LODWORD(v6) = v4;
  v11 = v6 >> 26;
  HIDWORD(v6) = v4;
  LODWORD(v6) = v4;
  v12 = v6 >> 25;
  HIDWORD(v6) = v4;
  LODWORD(v6) = v4;
  v7 = (((2 * (v4 & 0xFFFFFFF)) ^ 0xFAB38B7C) & 0x9F98E482 ^ ((v4 >> 31) | 0xA906082) | ((2 * (v4 & 0xFFFFFFF)) ^ 0xFAB38B7C) & 0x60671B7C) ^ 0xFFFAED8B;
  v8 = (v10 ^ v4 ^ (((v4 >> 30) ^ 0x2008DB87) & ((4 * v4) ^ 0x265ED30F) | (4 * v4) & 0xDFF72478) ^ 0x7FBADFEC) & 0x1FFFFFFF ^ 0x110689DF ^ (v7 - ((2 * v7) & 0x331C2666) + 428741427);
  return (*(STACK[0x200] + 8 * v2))(((v6 >> 24) ^ __ROR4__(v4, 21) ^ v12) & 0x1FFFFFFF ^ ((v5 ^ 0x40FFFFF) & ((v4 >> 13) ^ 0xC8AF174) | v5 & 0x13700000) ^ (((v4 << 10) & 0x1FFFFC00 ^ 0x698307FF) & ((v4 >> 22) ^ 0x69878F8E) | (v4 << 10) & 0x16787000) ^ (((v4 << 13) & 0x3FFF8000 ^ 0xFFF0FFFF) & ((v4 >> 19) ^ 0xC51783DB) | (v4 << 13) & 0x1AE86000) ^ (((v4 << 14) & 0x3FFFC000 ^ 0xDD207FFF) & ((v4 >> 18) ^ 0xDDA8FBDE) | (v4 << 14) & 0x2570000) ^ (((v4 << 17) & 0x1FFE0000 ^ 0x610BFFFF) & ((v4 >> 15) ^ 0x671F80DC) | (v4 << 17) & 0x18E00000) ^ ((((v4 << 16) ^ 0x56EE6798) & (HIWORD(v4) ^ 0xFFFFB054) | HIWORD(v4) & 0x9867) ^ 0xD5D4F7FC) & 0x1FFFFFFF ^ 0x176FEBC4 ^ ((v11 & 0x1FFFFFFF ^ 0x1B20CEB5 ^ -(v11 & 0x1FFFFFFF ^ 0x1B20CEB5) ^ (v8 - (v8 ^ v11 & 0x1FFFFFFF ^ 0x1B20CEB5u))) + v8), 1722941440, 3622601530);
}

uint64_t sub_100AA9D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, int a7@<W8>)
{
  v23 = a5 + (((v14 ^ 0xDAC3F4B0) + 624692048) ^ ((v14 ^ 0x4964CD28) - 1231342888) ^ ((v14 ^ 0x41BBB90C) - 1102821644));
  v24 = (v23 ^ 0xBD8AC2CD) & (2 * (v23 & 0xB98CC0CC)) ^ v23 & 0xB98CC0CC;
  v25 = ((2 * (v23 ^ 0xCE9342DD)) ^ 0xEE3F0422) & (v23 ^ 0xCE9342DD) ^ (2 * (v23 ^ 0xCE9342DD)) & v9;
  v26 = v25 ^ v13;
  v27 = (v25 ^ 0x66170000) & (4 * v24) ^ v24;
  v28 = ((4 * v26) ^ 0xDC7E0844) & v26 ^ (4 * v26) & v9;
  v29 = v27 ^ (v9 + 1) ^ (v28 ^ 0x541E0000) & (16 * v27);
  v30 = (16 * (v28 ^ 0x23018211)) & v9 ^ 0x6078201 ^ ((16 * (v28 ^ 0x23018211)) ^ 0x71F82110) & (v28 ^ 0x23018211);
  v31 = (v29 << 8) & v21 ^ v29 ^ ((v29 << 8) ^ 0x1F821100) & v30;
  v32 = v23 ^ (2 * ((v31 << 16) & v12 ^ v31 ^ ((v31 << 16) ^ 0x2110000) & ((v30 << 8) & v12 ^ 0x601D0000 ^ ((v30 << 8) ^ 0x1F820000) & v30)));
  v33 = (__ROR8__((v10 + (v32 ^ v8)) & 0xFFFFFFFFFFFFFFF8, 8) + a2) & 0xF9FFFFFFFFFFFFFFLL;
  v34 = v33 ^ v17;
  v35 = v33 ^ v19;
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x1F7B92942DEF21EFLL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v22;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v16;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ v20;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ v18;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ v15;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  *(v11 + (v32 ^ v8)) = (((v7 - ((v48 + v47) | v7) + ((v48 + v47) | a3)) ^ a4) >> (8 * ((v10 + (v32 ^ v8)) & 7))) ^ *(v10 + (v32 ^ v8));
  return (*(a1 + 8 * (((v32 == v8) * a6) ^ a7)))();
}

uint64_t sub_100AAA048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30)
{
  v35 = *(v34 - 148) - 3454;
  *(v34 - 148) = *(v34 - 148);
  *(v34 - 216) = (*(v34 - 208) | a25 | ((v32 ^ 0x148CD759) & (v31 ^ 0xFFFEFF59) | v31 & 0x730000) ^ 0x148CD759) ^ 0x33;
  return (*(v33 + 8 * v35))(1193520084, 3523776672, (v30 ^ 0x98C21C06 ^ -(v30 ^ 0x98C21C06) ^ (1193520084 - (v30 ^ 0xDFE1B7D2))) + 1193520084, *(v34 - 196), *(v34 - 188), *(v34 - 192), a30 ^ 0x26AF2640u, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100AAA238(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6, int a7)
{
  STACK[0x53F8] = v13;
  LODWORD(STACK[0x48E0]) = LODWORD(STACK[0x53E8]) | LODWORD(STACK[0x5460]);
  LODWORD(STACK[0x4B20]) = LODWORD(STACK[0x53C8]) | LODWORD(STACK[0x53D8]);
  LODWORD(STACK[0x4B08]) = LODWORD(STACK[0x53C0]) | LODWORD(STACK[0x53E0]);
  LODWORD(STACK[0x49A8]) = LODWORD(STACK[0x53B8]) | LODWORD(STACK[0x53D0]);
  v17 = v10 & v7 ^ 0xB7;
  v19 = v15 & 0x36 | 0xC1;
  v20 = (((v15 ^ (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * (((2 * (v15 & 0x36)) | 2) & v15 ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0x36) << 8) | ((v10 ^ (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((a7 - 49) & v10 ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v7) << 16);
  v21 = a3 & 0xC ^ 0xEC;
  v22 = (((a3 ^ (2 * ((a3 ^ 0x34) & (2 * ((a3 ^ 0x34) & (2 * ((a3 ^ 0x34) & (2 * ((a3 ^ 0x34) & (2 * v21) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0x5976BA) & ~v20 | v20 & 0xA68900) << 8;
  LODWORD(STACK[0x53E8]) = v22 ^ 0x840FF;
  LODWORD(STACK[0x5640]) = v22 & 0xE6C1BD00;
  v23 = STACK[0x5470];
  LOBYTE(v20) = STACK[0x5470] & 0x6E ^ 0x7D;
  v24 = STACK[0x5480];
  v25 = STACK[0x5480] & 0x48 ^ 0xCA;
  v26 = v24 ^ (2 * ((v24 ^ 0x34) & (2 * ((v24 ^ 0x34) & (2 * ((v24 ^ 0x34) & (2 * ((v24 ^ 0x34) & (2 * ((v24 ^ 0x34) & (2 * v25) | v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25));
  LOBYTE(v22) = v23 ^ (2 * ((v23 ^ 0x34) & (2 * ((v23 ^ 0x34) & (2 * ((v23 ^ 0x34) & (2 * ((v23 ^ 0x34) & (2 * ((v23 ^ 0x34) & (2 * (v20 ^ v23 & 0x1A)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ 0x6E;
  v27 = STACK[0x54C0];
  LOBYTE(v20) = STACK[0x54C0] & 0x2C ^ 0xDC;
  v28 = (v22 << 16) | (v26 << 8);
  v29 = (v28 ^ 0xCFB1FF) & ((v27 ^ (2 * ((v27 ^ 0x34) & (2 * ((v27 ^ 0x34) & (2 * ((v27 ^ 0x34) & (2 * ((v27 ^ 0x34) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0xCFF1C8) | v28 & 0x300E00;
  v30 = STACK[0x54E0];
  LOBYTE(v28) = STACK[0x54E0] & 0xF8 ^ 0x22;
  LOBYTE(v20) = (v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * v28) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28;
  v31 = STACK[0x54D0];
  LOBYTE(v28) = STACK[0x54D0] & 0xF4 ^ 0xA0;
  LOBYTE(v28) = v31 ^ (2 * ((v31 ^ 0x34) & (2 * ((v31 ^ 0x34) & (2 * ((v31 ^ 0x34) & (2 * ((v31 ^ 0x34) & (2 * v28) ^ v28)) ^ v28)) ^ v28)) ^ v28));
  v32 = STACK[0x54F0];
  v33 = STACK[0x54F0] & 0x56 ^ 0xD1;
  v34 = (((v32 ^ (2 * ((v32 ^ 0x34) & (2 * ((v32 ^ 0x34) & (2 * ((v32 ^ 0x34) & (2 * ((v32 ^ 0x34) & (2 * ((v32 ^ 0x34) & (2 * (v33 ^ v32 & 0x22)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33))) ^ 0x56) << 8) | (((LODWORD(STACK[0x54E0]) ^ (2 * v20)) ^ 0xF8) << 16);
  v35 = STACK[0x5500];
  LOBYTE(v20) = STACK[0x5500] & 0xDA ^ 0x13;
  v36 = (((v35 ^ (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * (v20 ^ v35 & 0x2E)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0x435D94) & (v34 ^ 0x73FDFF) | v34 & 0xBCA200) << 8;
  LODWORD(STACK[0x54F0]) = v36 ^ 0x2C0080FF;
  LODWORD(STACK[0x5500]) = v36 & 0xD0AE7500;
  v37 = STACK[0x5540];
  LOBYTE(v36) = STACK[0x5540] & 0xE8 ^ 0xBA;
  v38 = STACK[0x5600];
  v39 = STACK[0x5600] & 0x68 ^ 0x7A;
  v40 = (((v38 ^ (2 * ((v38 ^ 0x34) & (2 * ((v38 ^ 0x34) & (2 * ((v38 ^ 0x34) & (2 * ((v38 ^ 0x34) & (2 * ((v38 ^ 0x34) & (2 * v39) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39))) ^ 0x68) << 8) | (((v37 ^ (2 * ((v37 ^ 0x34) & (2 * ((v37 ^ 0x34) & (2 * ((v37 ^ 0x34) & (2 * ((v37 ^ 0x34) & (2 * ((v37 ^ 0x34) & (2 * v36) ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36))) ^ 0xE8) << 16);
  LODWORD(STACK[0x53E0]) = v28;
  v41 = ((v28 ^ 0x9955D6) & ~v40 | v40 & 0x66AA00) << 8;
  LODWORD(STACK[0x54E0]) = v41 ^ 0x420200FF;
  LODWORD(STACK[0x5510]) = v41 & 0x34E8DD00;
  LOBYTE(v40) = v14 & 0x32 ^ 0xC7;
  LOBYTE(v35) = v11 & 0x1C ^ 0x74;
  v42 = (((v11 ^ (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * v35) ^ v35)) ^ v35)) ^ v35)) ^ v35))) ^ 0x1C) << 8) | (((v14 ^ (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * (v40 ^ v14 & 6)) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40))) ^ 0x32) << 16);
  LOBYTE(v35) = v16 & 0xD0 ^ 0x16;
  v43 = (((v16 ^ (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * v35) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35))) ^ 0x3FC3C9) & ~v42 | v42 & 0xC03C00) << 8;
  LODWORD(STACK[0x54C0]) = v43 ^ 0x1826FF;
  LODWORD(STACK[0x5600]) = v43 & 0xE3E5D000;
  LOBYTE(v43) = v12 & 0xD0 ^ 0x16;
  v44 = (v26 << 16) | (((v12 ^ (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * v43) ^ v43)) ^ v43)) ^ v43)) ^ v43)) ^ v43))) ^ 0xD0) << 8);
  LOBYTE(v41) = a2 & 0x4C ^ 0xCC;
  v45 = (v44 ^ 0x5F9FF) & ((a2 ^ (2 * ((a2 ^ 0x34) & (2 * ((a2 ^ 0x34) & (2 * ((a2 ^ 0x34) & (2 * ((a2 ^ 0x34) & (2 * v41) ^ v41)) ^ v41)) ^ v41)) ^ v41))) ^ 0x45F999) | v44 & 0xBA0600;
  v46 = a6 & 0xDE ^ 0x95;
  v47 = STACK[0x5530];
  v48 = STACK[0x5530] & 0x58 ^ 0xD2;
  v49 = (((v47 ^ (2 * ((v47 ^ 0x34) & (2 * ((v47 ^ 0x34) & (2 * ((v47 ^ 0x34) & (2 * ((v47 ^ 0x34) & (2 * ((v47 ^ 0x34) & (2 * v48) ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48))) ^ 0x58) << 8) | (((a6 ^ (2 * ((a6 ^ 0x34) & (2 * ((a6 ^ 0x34) & (2 * ((a6 ^ 0x34) & (2 * ((a6 ^ 0x34) & (2 * ((a6 ^ 0x34) & (2 * (v46 ^ a6 & 0xAA)) ^ v46)) ^ v46)) ^ v46)) ^ v46)) ^ v46))) ^ 0xDE) << 16);
  v50 = STACK[0x5520];
  LOBYTE(v44) = STACK[0x5520] & 0xE6 ^ 0xB9;
  v45 <<= 8;
  LODWORD(STACK[0x5520]) = v45 ^ 0xB20602FF;
  LODWORD(STACK[0x5530]) = v45 & 0x4D90B900;
  v51 = v9 & 0x8E ^ 0x2D;
  LODWORD(STACK[0x5540]) = ((((v50 ^ (2 * ((v50 ^ 0x34) & (2 * ((v50 ^ 0x34) & (2 * ((v50 ^ 0x34) & (2 * ((v50 ^ 0x34) & (2 * ((v50 ^ 0x34) & (2 * (v44 ^ v50 & 0x12)) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44))) ^ 0xD340CE) & ~v49 | v49 & 0x2CBF00) << 8) & 0x9C88A700;
  v52 = STACK[0x5630];
  v53 = STACK[0x5630] & 0x60 ^ 0xFE;
  v54 = (((v52 ^ (2 * ((v52 ^ 0x34) & (2 * ((v52 ^ 0x34) & (2 * ((v52 ^ 0x34) & (2 * ((v52 ^ 0x34) & (2 * ((v52 ^ 0x34) & (2 * v53) ^ v53)) ^ v53)) ^ v53)) ^ v53)) ^ v53))) ^ 0x60) << 8) | (((v9 ^ (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * (v51 ^ v9 & 0x3A)) ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51))) ^ 0x8E) << 16);
  LOBYTE(v32) = v8 & 0xC8 ^ 0x8A;
  LODWORD(STACK[0x54D0]) = ((((v8 ^ (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * v32) | v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32))) ^ 0x994088) & ~v54 | v54 & 0x66BF00) << 8) & 0xE02DF300;
  v55 = *(STACK[0x5580] + 1169);
  LOBYTE(v50) = v55 & 0x9A ^ 0xB3;
  v56 = *(STACK[0x5760] + 1404);
  v57 = v56 & 0xFE ^ 0xA5;
  v58 = (((v55 ^ (2 * ((v55 ^ 0x34) & (2 * ((v55 ^ 0x34) & (2 * ((v55 ^ 0x34) & (2 * ((v55 ^ 0x34) & (2 * ((v55 ^ 0x34) & (2 * (v50 ^ v55 & 0x2E)) ^ v50)) ^ v50)) ^ v50)) ^ v50)) ^ v50))) ^ 0x9A) << 16) | (((v56 ^ (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * v57) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57))) ^ 0xFE) << 8);
  v59 = STACK[0x5770];
  LOBYTE(v38) = *(STACK[0x5770] + 1692);
  v60 = ((v38 ^ (2 * ((v38 ^ 0x34) & (2 * ((v38 ^ 0x34) & (2 * ((v38 ^ 0x34) & (2 * ((v38 ^ 0x34) & (2 * (v38 & 0xB4)) ^ v38 & 0xB4)) ^ v38 & 0xB4)) ^ v38 & 0xB4)) ^ (v38 & 0xB4 | 0x40)))) ^ 0xD7AE52) & ~v58 | v58 & 0x285100;
  v61 = *(STACK[0x55D0] + 4089);
  v62 = v61 >= 0x4C;
  v63 = v61 + 1962540864;
  v64 = !v62;
  v65 = v63 + (v64 << 8);
  v66 = (v65 ^ 0x66) & (2 * (v65 & 0x74)) ^ v65 & 0x74;
  v67 = ((2 * (v65 ^ 0xCE)) ^ 0x74) & (v65 ^ 0xCE) ^ (2 * (v65 ^ 0xCE)) & 0xBA;
  v68 = v66 ^ 0xBA ^ (v67 ^ 0x38) & (4 * v66);
  v69 = ((v63 ^ (2 * ((16 * v68) ^ v68 ^ (((4 * (v67 ^ 0x8A)) ^ 0xE0) & (v67 ^ 0x8A) ^ (4 * (v67 ^ 0x8A)) & 0xB0) & ~(16 * v68)))) & 0x40) == 0;
  v70 = v65 - 1962540940;
  if (v69)
  {
    v71 = -64;
  }

  else
  {
    v71 = 64;
  }

  v72 = v70 + v71;
  v73 = *(STACK[0x5308] + 2830);
  v74 = v73 & 0xE8 ^ 0x3A;
  v75 = *(STACK[0x5730] + 31);
  v76 = v75 & 0xF4 ^ 0xA0;
  v77 = (((v75 ^ (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * v76) ^ v76)) ^ v76)) ^ v76)) ^ v76))) ^ 0xF4) << 8) | (((v73 ^ (2 * ((v73 ^ 0x34) & (2 * ((v73 ^ 0x34) & (2 * ((v73 ^ 0x34) & (2 * ((v73 ^ 0x34) & (2 * ((v73 ^ 0x34) & (2 * v74) ^ v74)) ^ v74)) ^ v74)) ^ v74)) ^ v74))) ^ 0xE8) << 16);
  v78 = STACK[0xDCB8];
  STACK[0x5460] = STACK[0xDCB8];
  v79 = *(v78 + 410);
  v80 = v79 & 0x20 | 0xDE;
  v81 = ((((v79 ^ (2 * ((v79 ^ 0x34) & (2 * ((v79 ^ 0x34) & (2 * ((v79 ^ 0x34) & (2 * ((v79 ^ 0x34) & (2 * ((v79 ^ 0x34) & (2 * v80) ^ v80)) ^ v80)) ^ v80)) ^ v80)) ^ v80))) ^ 0x2D871E) & ~v77 | v77 & 0xD27800) << 8) ^ 0x2D873E00;
  v82 = *(v59 + 1654);
  v83 = v82 & 0x82 ^ 0x2F;
  v84 = *(STACK[0x57B0] + 2170);
  v85 = v84 & 2 ^ 0x6F;
  v86 = (((v82 ^ (2 * ((v82 ^ 0x34) & (2 * ((v82 ^ 0x34) & (2 * ((v82 ^ 0x34) & (2 * ((v82 ^ 0x34) & (2 * ((v82 ^ 0x34) & (2 * ((v82 ^ 0x34) & 0x36 ^ v83)) ^ v83)) ^ v83)) ^ v83)) ^ v83)) ^ v83))) ^ 0x82) << 16) | (((v84 ^ (2 * ((v84 ^ 0x34) & (2 * ((v84 ^ 0x34) & (2 * ((v84 ^ 0x34) & (2 * ((v84 ^ 0x34) & (2 * ((v84 ^ 0x34) & (2 * ((v84 ^ 0x34) & 0x36 ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ v85))) ^ 2) << 8);
  v87 = *(STACK[0x57B0] + 683);
  v88 = v87 & 0x9C ^ 0xB4;
  LODWORD(STACK[0x5480]) = ((((v87 ^ (2 * ((v87 ^ 0x34) & (2 * ((v87 ^ 0x34) & (2 * ((v87 ^ 0x34) & (2 * ((v87 ^ 0x34) & (2 * v88) ^ v88)) ^ v88)) ^ v88)) ^ v88))) ^ 0xEC1650) & ~v86 | v86 & 0x13E900) << 8) & 0xDD87BB00;
  LODWORD(STACK[0x5470]) = (v29 << 8) & 0xE7640900;
  LODWORD(STACK[0x5630]) = (v60 << 8) & 0x99C6E00;
  v89 = *(STACK[0x57D8] + 8 * a7);
  LODWORD(STACK[0x53D8]) = v81 & v72;
  return v89();
}

uint64_t sub_100AAB474(unint64_t a1, uint64_t a2)
{
  LODWORD(STACK[0x1FF8]) = -143113071;
  LODWORD(STACK[0xC70]) = v3;
  STACK[0x10C8] = a1;
  *(a2 + 2255) = 1;
  STACK[0x1BE0] = *(v4 + 8 * v2);
  return (*(v4 + 8 * (v2 + 10826)))();
}

uint64_t sub_100AAB710()
{
  v5 = (v0 + v1 + 38);
  v6 = STACK[0x1838];
  STACK[0x25D8] = *(v2 + 1464);
  *(v4 - 224) = (v1 + 1433) ^ (800103191 * ((v4 - 240) ^ 0x71444D63));
  STACK[0x25E8] = v6;
  v7 = (*(v3 + 8 * (v1 ^ 0x6E08)))(v4 - 240);
  v8 = *(v4 - 240);
  *(v2 + 3392) = v5 + *(v2 + 3392) - 2174730796;
  LODWORD(STACK[0xF50]) = v8;
  return (*(v3 + 8 * ((119 * (v8 != ((22 * (v1 ^ 0x10B8)) ^ 0xF77868BD))) ^ v1)))(v7);
}

uint64_t sub_100AAB8AC()
{
  *(v0 + 2656) = 0;
  LODWORD(STACK[0x124C]) = -769884012;
  *(v0 + 3504) = 0x2369327399A66D95;
  return (*(v1 + 136656))();
}

uint64_t sub_100ADC6B4@<X0>(int a1@<W8>)
{
  v2 = *(v1 + 8 * (a1 + 2120264013));
  LODWORD(STACK[0x530]) = -1008739633;
  LODWORD(STACK[0x4F0]) = -2120245781;
  return v2();
}

uint64_t sub_100ADC720@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W8>)
{
  v13 = (a4 ^ 0x63) << v6;
  v14 = (2 << v6) & 0xB8;
  v15 = v11 + v6 * v5;
  v16 = v6 + 1;
  LOBYTE(v13) = (v13 - v14 - 36) ^ 0xB7;
  v17 = *(v8 + v15 - (((25489421 * v15) >> 32) >> 4) * v7);
  v18 = *(v10 + 4 * a3);
  v19 = v17 & 0xE4 ^ 0x22;
  v20 = v17 ^ v18 ^ (2 * ((v17 ^ 0x20) & (2 * ((v17 ^ 0x20) & (2 * ((v17 ^ 0x20) & (2 * ((v17 ^ 0x20) & (2 * ((v17 ^ 0x20) & (2 * v19) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ 0xDC;
  if ((v13 & a1 ^ a2) == 0xA)
  {
    v20 = v18 ^ 0x38;
  }

  *(v10 + 4 * v9) = v20 ^ (v4 - 177);
  return (*(v12 + 8 * ((14 * ((v16 & 0xF8) == 0)) ^ a4)))();
}

uint64_t sub_100ADC80C(char a1, int a2, unint64_t a3, int a4, unsigned int a5, uint64_t a6, int a7)
{
  v16 = STACK[0x3A90];
  LODWORD(STACK[0x3A90]) = STACK[0x3A90];
  v17 = (v16 - 1426316802) & 0x5503FFF3;
  v18 = STACK[0x3A80];
  v19 = a3 ^ STACK[0x3A80];
  LODWORD(STACK[0x36D8]) = v19;
  v20 = v19 ^ v10;
  v21 = STACK[0x3A70];
  LODWORD(STACK[0x36B8]) = v20;
  LODWORD(STACK[0x37A0]) = v17;
  v22 = v12 + (v17 - 8506) * ((v21 ^ v20) ^ 0xFE);
  v23 = *(v14 + (v22 - ((81037119 * (v22 >> 7)) >> 32) * a2)) - 71;
  v24 = (v23 ^ (v23 << (v16 - 105)) ^ (4 * v23) ^ 0xFFFFFFFE) + 26;
  v25 = STACK[0x3A68];
  LODWORD(STACK[0x3708]) = v24;
  v26 = v24 ^ v25;
  v27 = STACK[0x3A48];
  LODWORD(STACK[0x3780]) = v26;
  v28 = v11 + ((((v26 ^ v27) >> 1) | ((v26 ^ v27) << 7)) ^ 0x40) * a4;
  v29 = *(v14 + v28 - (((v28 * a5) >> 32) >> 1) * a2);
  STACK[0x39D8] = v10;
  v30 = v10;
  v31 = (v29 ^ v7) * v15;
  v32 = STACK[0x3A50];
  LODWORD(STACK[0x3798]) = v31;
  v33 = ((((v31 ^ v32) >> 1) | ((v31 ^ v32) << 7)) ^ 0xD9) * a4 + 19140993;
  v34 = (*(v14 + v33 - (((v33 * a5) >> 32) >> 1) * a2) ^ a7) * v15;
  LODWORD(STACK[0x39A8]) = v9;
  LODWORD(STACK[0x39E0]) = v9;
  v35 = STACK[0x3A88];
  LODWORD(STACK[0x36A0]) = v34;
  v36 = v12 + ((v9 ^ v35 ^ v34) ^ 0xFE) * a4;
  v37 = *(v14 + v36 - (((v36 * a5) >> 32) >> 1) * a2) - 71;
  v38 = (v37 ^ (v37 << 6) ^ (4 * v37) ^ 0xFFFFFFFE) + 26;
  LODWORD(STACK[0x35F8]) = v38;
  v39 = v38 ^ STACK[0x3A98];
  LODWORD(STACK[0x3718]) = v39;
  v40 = v39 ^ STACK[0x3AA8];
  LODWORD(STACK[0x39B0]) = v8;
  STACK[0x3AA0] = v8;
  LODWORD(STACK[0x3778]) = v40;
  v41 = (v8 ^ a1 ^ v40) * a4 + 9544938;
  v42 = ((*(v14 + v41 - (((v41 * a5) >> 32) >> 1) * a2) - 87) ^ 0xFFFFFFFB) + 85;
  LODWORD(STACK[0x3758]) = v42;
  v43 = v42 ^ STACK[0x3A78];
  v44 = STACK[0x39A0];
  LODWORD(STACK[0x3790]) = v43;
  v45 = v43 ^ v44;
  LODWORD(STACK[0x3760]) = v45;
  v46 = STACK[0x3A60];
  v47 = (STACK[0x3AC8] ^ v45) ^ 0xFE;
  LOBYTE(v18) = *(STACK[0x3A60] + 8 * (1291 * (v18 ^ v13) + 2983501 - 3108 * (((5527629 * (1291 * (v18 ^ v13) + 2983501)) >> 32) >> 2))) ^ ((v18 ^ 0x72) + (v18 ^ 0xF7));
  v48 = *(v14 + v12 + v47 * a4 - ((((v12 + v47 * a4) * a5) >> 32) >> 1) * a2) - 71;
  v49 = ((((v18 ^ 0xC1) >> 1) | ((v18 ^ 0xC1) << 7)) ^ 0x40) * a4 + 15539568;
  v50 = *(v14 + v49 - (((v49 * a5) >> 32) >> 1) * a2);
  v51 = (v48 ^ (v48 << 6) ^ (4 * v48) ^ 0xFFFFFFFE) + 26;
  STACK[0x3A58] = a3;
  v52 = *(v46 + 8 * (1291 * (a3 ^ 0xAE) + 660992 - 3108 * (((2763815 * (1291 * (a3 ^ 0xAEu) + 660992)) >> 32) >> 1)));
  v53 = *(v46 + 8 * (1291 * (v30 ^ 0x3AD) - 3108 * (((2763815 * (1291 * (v30 ^ 0x3ADu))) >> 32) >> 1)));
  v54 = v53 >> 37;
  v55 = v53 >> 39;
  v56 = v53 >> 38;
  v57 = *(v46 + 8 * (1291 * (v21 ^ 0x74) + 2983501 - 3108 * (((5527629 * (1291 * (v21 ^ 0x74u) + 2983501)) >> 32) >> 2)));
  v58 = *(v46 + 8 * (1291 * (v27 ^ 0xAA) + 660992 - 3108 * (((2763815 * (1291 * (v27 ^ 0xAAu) + 660992)) >> 32) >> 1)));
  LODWORD(v54) = v56 ^ v55 ^ v54;
  v59 = STACK[0x39B8];
  v60 = *(v46 + 8 * (1291 * (v25 ^ 0x73) + 2983501 - 3108 * (((5527629 * (1291 * (v25 ^ 0x73u) + 2983501)) >> 32) >> 2))) ^ ((v25 ^ 0x76) + (v25 ^ 0xFFFFFFF3));
  LODWORD(STACK[0x36C8]) = v51;
  v61 = v51 ^ (97 * (v50 ^ 0xFFFFFFA2)) ^ (v52 >> 38) ^ (v52 >> 39) ^ (v52 >> 37);
  v62 = 4647 * (((v59 >> 1) | (v59 << 7)) ^ 0x43) + 15539568;
  v63 = 1291 * ((97 * (*(v14 + v62 - 6784 * (((1266205 * v62) >> 32) >> 1)) ^ 0xA2)) ^ 0xAF) + 660992;
  LODWORD(v52) = *(v14 + 4647 * (v32 ^ 0xC3) + 14331348 - 6784 * (((1266205 * (4647 * (v32 ^ 0xC3u) + 14331348)) >> 32) >> 1)) + 117;
  v64 = *(v46 + 8 * (v63 - 3108 * (((2763815 * v63) >> 32) >> 1)));
  LODWORD(STACK[0x35E8]) = v61;
  LODWORD(STACK[0x35F0]) = v61 ^ v54;
  v65 = v61 ^ v54 ^ ((v21 ^ 0x71) + (v21 ^ 0xFFFFFFF4)) ^ v57;
  LODWORD(STACK[0x3700]) = v65;
  v66 = v60 ^ v65;
  LODWORD(v52) = ((v52 ^ 0x12 ^ (v52 >> 2) & 0x12) + 26);
  LODWORD(STACK[0x36D0]) = v66;
  LODWORD(v57) = v66 ^ (v58 >> 38) ^ (v58 >> 39) ^ (v58 >> 37);
  LODWORD(v64) = (v64 >> 38) ^ (v64 >> 39) ^ (v64 >> 37);
  LODWORD(v52) = ((v52 ^ 0x72) + (v52 ^ 0xF7)) ^ *(v46 + 8 * (1291 * (v52 ^ 0x77) + 2983501 - 3108 * (((5527629 * (1291 * (v52 ^ 0x77) + 2983501)) >> 32) >> 2))) ^ 0xFFFFFFC1;
  v67 = *(v46 + 8 * (1291 * (v35 ^ 0x77) + 2983501 - 3108 * (((5527629 * (1291 * (v35 ^ 0x77u) + 2983501)) >> 32) >> 2)));
  v68 = *(v46 + 8 * (1291 * (LODWORD(STACK[0x39A8]) ^ 0x3AE) - 3108 * (((2763815 * (1291 * (LODWORD(STACK[0x39A8]) ^ 0x3AEu))) >> 32) >> 1)));
  LODWORD(v52) = 4647 * (((v52 >> 1) | (v52 << 7)) ^ 0x40) + 15539568;
  v69 = *(v46 + 8 * (1291 * (STACK[0x3A98] ^ 0xAD) + 660992 - 3108 * (((2763815 * (1291 * (STACK[0x3A98] ^ 0xADu) + 660992)) >> 32) >> 1)));
  LODWORD(v52) = 97 * (*(v14 + v52 - 6784 * (((1266205 * v52) >> 32) >> 1)) ^ 0xFFFFFFA2);
  LODWORD(STACK[0x36F0]) = v57 ^ 0xA;
  LODWORD(v54) = v64 ^ v57 ^ 0xA;
  LODWORD(v25) = ((v35 ^ 0x72) + (v35 ^ 0xFFFFFFF7)) ^ v67 ^ (v68 >> 38) ^ (v68 >> 39) ^ (v68 >> 37) ^ v54 ^ v52 ^ 0xFFFFFFC1;
  LODWORD(STACK[0x3788]) = v25;
  LODWORD(v68) = 4647 * (((v69 >> 38) ^ (v69 >> 39) ^ (v69 >> 37)) ^ 0xF4 ^ v25) + 13123128;
  v70 = STACK[0x3A78];
  v71 = 1291 * (((*(v14 + 4647 * (STACK[0x3AA8] ^ 0x99) + 25186740 - 6784 * (((1266205 * (4647 * (STACK[0x3AA8] ^ 0x99u) + 25186740)) >> 32) >> 1)) ^ 0xC3) + 85) ^ 0xAF) + 660992;
  v72 = *(v46 + 8 * (v71 - 3108 * (((2763815 * v71) >> 32) >> 1)));
  LODWORD(v68) = *(v14 + v68 - 6784 * (((1266205 * v68) >> 32) >> 1)) - 71;
  LODWORD(v72) = 4647 * (((v72 >> 38) ^ (v72 >> 39) ^ (v72 >> 37)) ^ 0x90) + 25186740;
  v73 = *(v46 + 8 * (1291 * (LODWORD(STACK[0x39B0]) ^ 0x3AB) - 3108 * (((2763815 * (1291 * (LODWORD(STACK[0x39B0]) ^ 0x3ABu))) >> 32) >> 1)));
  LODWORD(v25) = (v68 ^ (v68 << 6) ^ (4 * v68) ^ 0xFFFFFFFE) + 26;
  LODWORD(v68) = *(v14 + v72 - 6784 * (((1266205 * v72) >> 32) >> 1)) ^ 0xFFFFFFC3;
  LODWORD(STACK[0x3770]) = v25;
  LODWORD(v25) = v25 ^ (v68 + 85);
  LODWORD(STACK[0x3740]) = v25;
  LODWORD(v73) = 4647 * (((v25 ^ (v73 >> 38) ^ (v73 >> 39) ^ (v73 >> 37) ^ 0xA) + 111) ^ 0x36) + 17937420;
  LODWORD(v73) = *(v14 + v73 - 6784 * (((1266205 * v73) >> 32) >> 1)) ^ 0xE;
  LODWORD(v25) = (v73 >> 3) | (32 * v73);
  LODWORD(v73) = 4647 * (((v70 ^ 0x77) + (v70 ^ 0xF2)) ^ 0x79 ^ *(v46 + 8 * (1291 * (v70 ^ 0x72) + 2983501 - 3108 * (((5527629 * (1291 * (v70 ^ 0x72u) + 2983501)) >> 32) >> 2)))) + 9544938;
  LODWORD(v69) = 1291 * (STACK[0x3AC8] ^ 0x3A8);
  v74 = *(v46 + 8 * (v69 - 3108 * (((2763815 * v69) >> 32) >> 1)));
  LODWORD(v68) = *(v46 + 8 * (1291 * (v44 ^ 0x171) + 2983501 - 3108 * (((5527629 * (1291 * (v44 ^ 0x171u) + 2983501)) >> 32) >> 2))) ^ ((v44 ^ 0x74) + (v44 ^ 0xFFFFFFF1));
  LODWORD(v73) = ((*(v14 + v73 - 6784 * (((1266205 * v73) >> 32) >> 1)) - 87) ^ 0xFFFFFFFB) + 85;
  LODWORD(STACK[0x3610]) = v25;
  LODWORD(STACK[0x3750]) = v73 ^ v25;
  v75 = v73 ^ v25 ^ v68;
  LODWORD(STACK[0x36C0]) = v75;
  LODWORD(v68) = v75 ^ (v74 >> 38) ^ (v74 >> 39) ^ (v74 >> 37);
  LODWORD(STACK[0x36E8]) = v68 ^ 0xFFFFFFCB;
  LODWORD(STACK[0x36F8]) = v54 ^ ~v52;
  LODWORD(STACK[0x3768]) = v64 ^ v57;
  v76 = *(STACK[0x3AC0] + 8 * (LODWORD(STACK[0x3A90]) ^ (239 * ((STACK[0x39C8] & 1) == 0))));
  LODWORD(STACK[0x37A8]) = v68 ^ 0xFFFFFFCB ^ v59;
  return v76();
}

uint64_t sub_100ADD198(char a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v25 = ((v10 ^ a2) + v8 - ((2 * (v10 ^ a2)) & 0x10)) ^ a1;
  v26 = -570491735 * *(*(v16 + 8 * v15) + 4 * (((v13 ^ (v25 - (((v25 ^ v14) & v12 | v25 & 0x5E) ^ v9))) + v25) ^ 0x65u) - 12) - 1697849013;
  v27 = ((v26 ^ a3) + a4) ^ v26 ^ ((v26 ^ a5) + a6) ^ ((v26 ^ a7) + a8) ^ ((v26 ^ v17) + v18);
  v28 = *(v24 - 120);
  *(v23 + 4 * v10) = v19 ^ v27 ^ (v27 >> 3) ^ (v27 >> 6) ^ v20;
  return (*(v28 + 8 * (((v11 == 0) * v22) ^ v21)))();
}

uint64_t sub_100ADD270@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint8x8_t a10@<D1>)
{
  v24.i64[0] = a9 + v22;
  a10.i32[0] = *(a9 + v22);
  v24.i64[1] = a9 + v22 + 1;
  v25.i64[0] = a9 + v22 + 2;
  v26 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v25.i64[1] = a9 + (v23 ^ 0x23D0 | v22);
  v27 = vandq_s8(v25, v26);
  v28 = vandq_s8(v24, v26);
  v29 = vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL);
  v30 = vdupq_n_s64(0x38uLL);
  v31 = vdupq_n_s64(a3);
  v32 = vsraq_n_u64(vshlq_n_s64(v27, 0x38uLL), v27, 8uLL);
  v33 = vaddq_s64(v32, v31);
  v34 = vaddq_s64(v29, v31);
  v35 = vdupq_n_s64(0x7B629F0D756857E1uLL);
  v36 = vsubq_s64(v35, v29);
  v37 = vsubq_s64(v35, v32);
  v38 = vdupq_n_s64(0xB0CF110EE62DD71FLL);
  v39 = vaddq_s64(vandq_s8(v36, v38), v34);
  v40 = vaddq_s64(vandq_s8(v37, v38), v33);
  v41 = vdupq_n_s64(0xB4CF110EE62DD71FLL);
  v42 = vsubq_s64(v40, vandq_s8(v33, v41));
  v43 = vsubq_s64(v39, vandq_s8(v34, v41));
  v44 = vdupq_n_s64(0x92860A0B3722FA7CLL);
  v45 = vdupq_n_s64(0xB66D0D9F639FBA88);
  v46 = veorq_s8(v43, v44);
  v47 = veorq_s8(v42, v44);
  v48 = veorq_s8(v42, v45);
  v49 = veorq_s8(v43, v45);
  v50 = vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL);
  v51 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v49);
  v52 = vaddq_s64(v50, v48);
  v53 = vdupq_n_s64(a4);
  v54 = vdupq_n_s64(a5);
  v55 = vaddq_s64(vsubq_s64(v51, vandq_s8(vaddq_s64(v51, v51), v53)), v54);
  v56 = vaddq_s64(vsubq_s64(v52, vandq_s8(vaddq_s64(v52, v52), v53)), v54);
  v57 = vdupq_n_s64(a6);
  v58 = veorq_s8(v56, v57);
  v59 = veorq_s8(v55, v57);
  v60 = vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL);
  v61 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v62 = veorq_s8(v58, v60);
  v63 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v62);
  v65 = vaddq_s64(v63, v61);
  v66 = vdupq_n_s64(a2);
  v67 = veorq_s8(v65, v66);
  v68 = veorq_s8(v64, v66);
  v69 = vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL);
  v70 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v71 = veorq_s8(v67, v69);
  v72 = vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL);
  v73 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v74 = vdupq_n_s64(a7);
  v75 = vaddq_s64(v73, v71);
  v76 = vaddq_s64(v72, v70);
  v77 = vdupq_n_s64(v11);
  v78 = vsubq_s64(vorrq_s8(v75, v74), vorrq_s8(v75, v77));
  v79 = vsubq_s64(vorrq_s8(v76, v74), vorrq_s8(v76, v77));
  v80 = vdupq_n_s64(a8);
  v81 = veorq_s8(vaddq_s64(v78, v77), v80);
  v82 = veorq_s8(vaddq_s64(v79, v77), v80);
  v83 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v84 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v85 = vdupq_n_s64(a1);
  v86 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v83), v85);
  v87 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v84), v85);
  v88 = vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL);
  v89 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v90 = veorq_s8(v86, v88);
  v91 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v90);
  v93 = vaddq_s64(v91, v89);
  v94 = vdupq_n_s64(v14);
  v95 = vdupq_n_s64(v15);
  v96 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v92, v92), v94), v92), v95);
  v97 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v93, v93), v94), v93), v95);
  v98 = vdupq_n_s64(v16);
  v99 = veorq_s8(v97, v98);
  v100 = veorq_s8(v96, v98);
  v101 = vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL);
  v102 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v103 = veorq_s8(v99, v101);
  v104 = vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL);
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v103);
  v106 = vaddq_s64(v104, v102);
  v107 = vdupq_n_s64(v17);
  v108 = vdupq_n_s64(v18);
  v109 = vdupq_n_s64(v19);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(v106, vandq_s8(vaddq_s64(v106, v106), v107)), v108), v109);
  v111 = veorq_s8(vaddq_s64(vsubq_s64(v105, vandq_s8(vaddq_s64(v105, v105), v107)), v108), v109);
  v112 = vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL);
  v113 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v114 = veorq_s8(v110, v112);
  v115 = vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL);
  v116 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v117 = vaddq_s64(v115, v113);
  v118 = vdupq_n_s64(v20);
  v119 = vorrq_s8(v117, v118);
  v120 = vaddq_s64(v116, v114);
  v121 = vorrq_s8(v120, v118);
  v122 = vdupq_n_s64(v12);
  v123 = vsubq_s64(v121, vorrq_s8(v120, v122));
  v124 = vdupq_n_s64(v13);
  *v24.i8 = veor_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v119, vorrq_s8(v117, v122)), v122), v124), vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), v30))), vshlq_u64(veorq_s8(vaddq_s64(v123, v122), v124), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), v30))))), *&vmovl_u8(a10));
  *(v10 + v22) = vuzp1_s8(*v24.i8, *v24.i8).u32[0];
  return (*(v21 + 8 * ((60 * (v22 != 16)) ^ v23)))();
}

uint64_t sub_100ADD6BC()
{
  *(v2 - 240) = v0 + 410706167 * ((((v2 - 240) | 0x680CA870) - (v2 - 240) + ((v2 - 240) & 0x97F35788)) ^ 0xF3D38426) - 798435897;
  v3 = (*(v1 + 8 * (v0 ^ 0x7613)))(v2 - 240);
  return (*(v1 + 8 * (((*(v2 - 236) == -143113071) * (((v0 + 25851699) | 0x80154004) ^ ((v0 ^ 0x48D) - 2120244420))) ^ v0)))(v3);
}

uint64_t sub_100ADD824()
{
  LODWORD(STACK[0x16DC]) = v2;
  STACK[0x1368] = *(v1 + 8 * v0);
  return (*(v1 + 8 * ((((v0 - 495) | 0x2914) - 2003) ^ v0)))();
}

uint64_t sub_100ADD8E4()
{
  v3 = STACK[0xE48];
  *(v3 + 24) = 1;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *v3 = v1;
  return (*(v2 + 8 * ((26 * ((STACK[0x1FB8] ^ (((v0 + 300521298) & 0xEE163FD5) + 400866404 - 0x34850010382A813ALL)) + ((2 * STACK[0x1FB8]) & 0x96F5FFDFBF74EBFELL) + 0x3485001020458A00 == 0)) ^ v0)))();
}

uint64_t sub_100ADD9DC(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(v3 + 8 * (a3 ^ 0xE6869961 ^ ((((a3 - 2012604050) & 0x916F7BBF) - 17695) * (a3 != -1121632192))));
  STACK[0x3E38] = STACK[0x39F0];
  return v4();
}

uint64_t sub_100ADDCB4()
{
  v1 = LODWORD(STACK[0x3D70]) ^ 0x1010;
  v2 = 980389751 * *(STACK[0x3D50] + 4 * LODWORD(STACK[0x3BC0]));
  v3 = 980389751 * *(STACK[0x3D50] + 4 * STACK[0x3BB0]);
  v4 = 980389751 * *(STACK[0x3D50] + 4 * STACK[0x3BA8]);
  v5 = 980389751 * *(STACK[0x3D50] + 4 * LODWORD(STACK[0x3BB8]));
  v6 = STACK[0x3D18];
  v7 = v3 ^ 0xFC88F45E ^ (v3 >> ((v1 + 40) ^ 0x84)) & 0x2C2E6C95 ^ __ROR4__(v2 ^ 0x4F9B5199 ^ (v2 >> 2) & 0x2C2E6C95, 8) ^ __ROR4__(v4 ^ 0x2FC68043 ^ (v4 >> 2) & 0x2C2E6C95, 24) ^ __ROR4__(v5 ^ 0x3260E592 ^ (v5 >> 2) & 0x2C2E6C95, 16);
  v6[394] = v7 ^ *(STACK[0x3D18] + 394);
  v6[393] ^= BYTE1(v7);
  v8 = HIBYTE(v7);
  v6[392] ^= BYTE2(v7);
  LOBYTE(v7) = v6[391];
  STACK[0x2E58] = v8;
  v6[391] = v8 ^ v7;
  return (*(v0 + 8 * v1))();
}

uint64_t sub_100ADDDBC@<X0>(int a1@<W8>)
{
  v6 = (v3 - 1921715379) & 0xF0EB7BF7;
  v7 = v3 + 2120262705;
  *(v4 + 1674) = v1;
  LODWORD(STACK[0x1DB4]) = v2;
  *(v4 + 1675) = v1 == 0;
  v8 = v2 >= a1 - 4 || v1 != 0;
  return (*(v5 + 8 * ((v8 * (v6 - 12537)) ^ v7)))();
}

uint64_t sub_100ADDF20(uint64_t a1, uint64_t a2, int a3, int a4, char a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, int a50, int a51, int a52, int a53, unsigned int a54, int a55, int a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62, int a63)
{
  v80 = (v71 - 32);
  v81 = ((((a64 + 44) | 0x1A) ^ 0xED) + v67);
  v82 = (v68 - 77);
  v83 = (v73 - 10);
  v84 = (a6 - 122);
  v260 = (v70 - 85);
  v85 = (a5 - 2);
  v86 = ((v77 + v66 + v69 - ((v69 + 1) ^ v75)) ^ v78) - v79 + a3;
  HIDWORD(v87) = (v86 ^ v74) + 2 * (v86 & v74) + 776512379 + a4;
  LODWORD(v87) = HIDWORD(v87);
  v88 = (v87 >> 25) + v69;
  v258 = __PAIR64__(v85, v83);
  HIDWORD(v87) = -1982186293 - (v79 + a3) + v69 + ((v77 - v75 - ((v75 - 1) ^ v66)) ^ v78) + v83 + v88;
  LODWORD(v87) = HIDWORD(v87);
  v89 = (v87 >> 15) + v75;
  HIDWORD(v87) = v75 - 678150925 + a51 + (v89 ^ (((v78 + (v77 & (~(2 * v66) + v66))) ^ v66) + v79 + a3 - v88));
  LODWORD(v87) = HIDWORD(v87);
  v90 = (v87 >> 3) + v66;
  v91 = ((v79 + v77 + (v78 ^ (v77 + 1))) ^ a3) - v89 - v88 + v260 - (v87 >> 3);
  HIDWORD(v87) = ((-851149750 - (v91 & 0x40)) ^ v91 & 0xFFFFFFBF) + 2 * (v91 & 0xCD447C4A);
  LODWORD(v87) = HIDWORD(v87);
  v92 = (v87 >> 14) + v77;
  v93 = (v72 - 17);
  v257 = __PAIR64__(v82, v93);
  HIDWORD(v87) = v77 - 1656533513 + v93 + ((((v78 + 1) ^ v79) + a3) ^ v78 ^ v88) + v89 - 2 * v89 + v90 + v92;
  LODWORD(v87) = HIDWORD(v87);
  v94 = (v87 >> 25) + v78;
  v95 = ((v79 + 1) ^ a3 ^ v88) - v79 - v89 - v90 - v92;
  HIDWORD(v87) = v78 - 1806451566 + v80 + (v94 ^ v95) + 2 * (v94 & v95);
  LODWORD(v87) = HIDWORD(v87);
  v96 = (v87 >> 15) + v79;
  HIDWORD(v87) = v76 - 1234336712 + (v94 ^ (v92 + (v90 ^ ((v88 ^ (a3 - 1)) + a3 + v89 - 2 * (v89 & (v88 ^ (a3 - 1))))))) - (v87 >> 15);
  LODWORD(v87) = HIDWORD(v87);
  v97 = (v87 >> 3) + a3;
  HIDWORD(v87) = a3 + 415655802 + v85 + (v97 ^ v96 ^ ((v88 ^ v89 ^ ~v90) + v88 + v92 - v94));
  LODWORD(v87) = HIDWORD(v87);
  v98 = (v87 >> 14) + v88;
  HIDWORD(v87) = a4 + 1363198299 + v88 + (((v90 ^ (((2 * (v89 + 1260451404)) & 0x69BE136A) + ((v89 + 1260451404) ^ 0xB4DF09B5)) ^ v92) + v89 - v94 - v96 - v97) ^ v98);
  LODWORD(v87) = HIDWORD(v87);
  v99 = (v87 >> 25) + v89;
  LODWORD(v256) = a4;
  HIDWORD(v87) = a51 - 1034180627 + v89 + (v99 ^ ((v97 ^ (v96 + ((v94 + (v92 & (v90 + 1))) ^ v90))) + v98));
  LODWORD(v87) = HIDWORD(v87);
  v100 = (v87 >> 15) + v90;
  v101 = v100 ^ (v94 - (v96 ^ (v94 + 1)) + v97 + v98 + 2 * v98 - 4 * v98 + v99);
  v102 = v98 + 1513977000;
  HIDWORD(v87) = HIDWORD(a48) - 826629296 + (v99 ^ v98 ^ ((v94 ^ (v92 - 1) ^ v96) - v92 + v97)) - (v87 >> 15);
  LODWORD(v87) = HIDWORD(v87);
  v103 = (v87 >> 3) + v92;
  v104 = a49 + 1805044984 + v92 + v101 + v103 - 2 * (v103 & v101);
  v105 = v100 & 0x200000;
  HIDWORD(v87) = v104;
  LODWORD(v87) = v104;
  v106 = (v87 >> 14) + v94;
  if ((v103 & v100 & 0x200000) != 0)
  {
    v105 = -v105;
  }

  HIDWORD(v107) = a62 - 1482847532 + v94 + (v99 ^ (v96 + (v97 ^ v96) + v98 + 1)) - v100 - v103 + v106;
  LODWORD(v107) = HIDWORD(v107);
  v108 = (v107 >> 25) + v96;
  v109 = v97 + v96 + ((v97 - 1) ^ v98) + v99 + v100 - 2 * v100 - v103 + v106 + v108;
  v261 = v81;
  v110 = (v105 + v103) ^ v100 & 0xFFDFFFFF;
  HIDWORD(v107) = (v109 ^ v81) - 1818075494 + 2 * (v109 & v81);
  LODWORD(v107) = HIDWORD(v107);
  v111 = (v107 >> 15) + v97;
  v112 = v81 - 737367506 + (v111 ^ ((v99 ^ v98 ^ ~v100) + v98 + v106 + v103 + v108));
  HIDWORD(v107) = (v97 ^ v112) + 2 * (v112 & v97);
  LODWORD(v107) = HIDWORD(v107);
  v113 = (v107 >> 3) + v98;
  v114 = (v108 ^ ((v100 ^ (v99 - 1)) - v99 + v106 + v103)) + v83 + v113 + v111;
  v115 = v114 | v102;
  v116 = v114 ^ v102;
  v117 = v110 & ~v106;
  v118 = ~v106 - v100 + v110;
  v119 = v106 ^ ~v108;
  HIDWORD(v107) = v116 + 2 * (v115 ^ v116);
  LODWORD(v107) = HIDWORD(v107);
  v120 = (v107 >> 14) + v99;
  HIDWORD(v107) = a4 + 776512379 + (v113 ^ (v118 - 2 * v117 + v108 + v111)) - (v107 >> 14);
  LODWORD(v107) = HIDWORD(v107);
  v121 = (v107 >> 25) + v100;
  v122 = (v120 ^ ((v119 ^ v103) - v103 - v111 - v113)) + a63 + v121;
  v123 = v119 - v106 + v113 + v111;
  HIDWORD(v107) = (v122 ^ 0x89DA3CCB) + v100 + ((2 * v122) & 0x13B47996);
  LODWORD(v107) = HIDWORD(v107);
  v124 = (v107 >> 2) + v103;
  HIDWORD(v107) = a49 - 678150925 + v103 + (v120 ^ v123) + v121 + v124;
  LODWORD(v107) = HIDWORD(v107);
  v125 = (v107 >> 31) + v106;
  HIDWORD(v107) = v93 - 851149750 + v106 + (v125 ^ (((v113 - (v111 & (v108 - 1))) ^ v108) - v120 - v121 + v124));
  LODWORD(v107) = HIDWORD(v107);
  v126 = (v107 >> 3) + v108;
  HIDWORD(v256) = v80;
  HIDWORD(v107) = v80 - 1656533513 + v108 + (v125 ^ (v124 + (v121 ^ ((v120 ^ ((v113 ^ v111) + (v113 | ~v111) + 1)) - v111)))) + v126;
  LODWORD(v107) = HIDWORD(v107);
  v127 = (v107 >> 25) + v111;
  HIDWORD(v107) = v84 - 1806451566 + v111 + (v126 ^ (v124 + v121 + v113 - (v120 & ~v113) + v125)) + v127;
  LODWORD(v107) = HIDWORD(v107);
  v128 = (v107 >> 2) + v113;
  v129 = v128 & 8;
  HIDWORD(v107) = v260 - 1234336712 + v113 + (v128 ^ (v120 - (v121 ^ (v120 - 1)) + v124 - v125 + v126 + v127));
  LODWORD(v107) = HIDWORD(v107);
  v130 = (v107 >> 31) + v120;
  if ((v130 & v128 & 8) != 0)
  {
    v129 = -v129;
  }

  v131 = v129 + v130;
  HIDWORD(v132) = v82 + 415655802 + v120 + (v127 ^ ((v126 ^ v124 ^ (v121 - 1) ^ v125) - v121 + 2 * (v126 & (v124 ^ (v121 - 1) ^ v125)))) - v128 + v130;
  LODWORD(v132) = HIDWORD(v132);
  v133 = (v132 >> 3) + v121;
  v134 = a50 + 1363198299 + v121;
  v135 = v131 & 0xFFFF7FFF;
  v136 = v134 + (v133 ^ ((v128 ^ ((v125 ^ (v124 - 1)) - v124 + v126 - v127)) - v130));
  v137 = v131 & 0x8000;
  if ((v137 & v128) != 0)
  {
    v137 = -v137;
  }

  v138 = (v137 + (v128 & 0xFFFFFFF7)) ^ v135;
  HIDWORD(v139) = v136;
  LODWORD(v139) = v136;
  v140 = (v139 >> 25) + v124;
  v141 = a49 - 1034180627 + (v128 ^ (v125 - (v126 & (v125 - 1)) + v127)) + v130 - v133 - v140;
  HIDWORD(v139) = (v141 ^ v124) + 2 * (v141 & v124);
  LODWORD(v139) = HIDWORD(v139);
  v142 = (v139 >> 2) + v125;
  HIDWORD(v139) = v140 + v133 - 826629296 + v85 + ((v128 - (v127 & (v126 + 1))) ^ v126) - v130 - (v139 >> 2);
  LODWORD(v139) = HIDWORD(v139);
  v143 = (v139 >> 31) + v126;
  HIDWORD(v139) = v84 + 1805044984 + (v142 ^ ((v133 ^ ((v128 ^ (v127 + 1) ^ v130) - v127)) - v140)) - (v139 >> 31);
  LODWORD(v139) = HIDWORD(v139);
  v144 = (v139 >> 3) + v127;
  HIDWORD(v139) = a49 - 1482847532 + v127 + v140 + ((v133 + v138 + 1) ^ v128) - v142 - 2 * (((v133 + v138 + 1) ^ v128) & v140) - v143 + v144;
  LODWORD(v139) = HIDWORD(v139);
  v145 = (v139 >> 25) + v128;
  HIDWORD(v139) = v80 - 1818075494 + (v142 ^ ((v140 ^ v133 ^ (v130 + 1)) + v130)) + v143 - v144 - (v139 >> 25);
  LODWORD(v139) = HIDWORD(v139);
  v146 = (v139 >> 2) + v130;
  HIDWORD(v139) = v84 - 737367506 - (v139 >> 2) + ((v142 + (v140 ^ ~v133) - v133) ^ v143) - v145 + v144;
  LODWORD(v139) = HIDWORD(v139);
  v147 = (v139 >> 31) + v133;
  HIDWORD(v139) = a50 + 1513977000 + v133 + (v144 ^ ((v142 & (v140 - 1)) - v140 + v143) ^ v145) - v146 + v147;
  LODWORD(v139) = HIDWORD(v139);
  v148 = (v139 >> 3) + v140;
  HIDWORD(v139) = HIDWORD(a48) + 776512379 + (v145 ^ ((v144 ^ v143 & (v142 - 1)) + v142)) + v146 + v147 - (v139 >> 3);
  LODWORD(v139) = HIDWORD(v139);
  v149 = (v139 >> 30) + v142;
  HIDWORD(v139) = HIDWORD(a48) - 1982186293 + v142 + (v148 ^ ((v145 ^ (v144 + v143 - 1 - 2 * (v144 & (v143 - 1)))) + v143 - v146 - v147) ^ v149);
  LODWORD(v139) = HIDWORD(v139);
  v150 = (v139 >> 9) + v143;
  HIDWORD(v139) = v260 - 678150925 + v143 + (v150 ^ (v148 + ((v146 + (v145 ^ (v144 - 1))) ^ v144 ^ v147) + v149));
  LODWORD(v139) = HIDWORD(v139);
  v151 = (v139 >> 16) + v144;
  HIDWORD(v139) = a51 - 851149750 + v144 + (v151 ^ (v150 + (v149 ^ ((v145 ^ ~v146) + v145 + v147 + v148))));
  LODWORD(v139) = HIDWORD(v139);
  v152 = (v139 >> 17) + v145;
  HIDWORD(v139) = v260 - 1656533513 + (v151 ^ v150 ^ ((v147 ^ (v146 - 1) ^ v148) + v146 + v149)) - (v139 >> 17);
  LODWORD(v139) = HIDWORD(v139);
  v153 = (v139 >> 30) + v146;
  HIDWORD(v139) = a51 - 1806451566 + v146 + (v151 ^ v150 ^ v147 ^ (v149 + (v148 & (v147 + 1)))) + v152 + v153;
  LODWORD(v139) = HIDWORD(v139);
  v154 = (v139 >> 9) + v147;
  HIDWORD(v139) = a4 - 1234336712 + v147 + (v152 ^ (v150 - (v148 + (v149 ^ (v148 - 1))) - v151) ^ v153) + v154;
  LODWORD(v139) = HIDWORD(v139);
  v155 = (v139 >> 16) + v148;
  HIDWORD(v139) = v148 + 415655802 + (v155 ^ (((v151 - (v150 ^ (v149 - 1))) ^ v149) - v152 - v153 - v154)) + a51;
  LODWORD(v139) = HIDWORD(v139);
  v156 = (v139 >> 17) + v149;
  HIDWORD(v139) = (v155 ^ v154 ^ ((v151 ^ v150 ^ ~v152) - v150 + v153)) - (v139 >> 17) + HIDWORD(a48) + 1363198299;
  LODWORD(v139) = HIDWORD(v139);
  v157 = (v139 >> 30) + v150;
  v158 = v156 ^ v155 ^ v153;
  HIDWORD(v139) = (v156 ^ (((v153 - (v152 + v151) + 2 * (v152 & (v151 - 1)) + 1) ^ v151) - v154 - v155)) + v76 - 1034180627 - (v139 >> 30);
  LODWORD(v139) = HIDWORD(v139);
  v159 = (v139 >> 9) + v151;
  v160 = ((v158 ^ v154 ^ (2 * (v153 & 1) + (v153 ^ 1))) - v157) ^ 0x464268F5;
  HIDWORD(v139) = a49 - 826629296 + v151 + (v158 ^ ~v154) + v157 + v159;
  LODWORD(v139) = HIDWORD(v139);
  v161 = (v139 >> 16) + v152;
  HIDWORD(v139) = ((v160 << 6) ^ 0x909A3D51) + (v160 >> 26) - ((v160 >> 25) & 0x22222222);
  LODWORD(v139) = HIDWORD(v139);
  v162 = v156 - 1348891226;
  HIDWORD(v139) = v81 + 1805044984 + v152 - v159 + v161 + (v139 >> 6);
  LODWORD(v139) = HIDWORD(v139);
  v163 = (v139 >> 17) + v153;
  HIDWORD(v139) = v81 - 1482847532 + v153 + (v163 ^ v161 ^ v159 ^ (v157 + ((v156 - (v155 ^ (v154 + 1))) ^ v154)));
  LODWORD(v139) = HIDWORD(v139);
  v164 = (v139 >> 30) + v154;
  v165 = v163 ^ (v161 + ((v159 - (v157 & (1348891225 - v156))) ^ (v156 - 1348891226)));
  HIDWORD(v139) = a51 - 1818075494 + v154 + (v161 ^ (v159 + (v156 ^ v155 ^ (v155 - 1) ^ v157))) + v163 + v164;
  LODWORD(v139) = HIDWORD(v139);
  v166 = (v139 >> 9) + v155;
  v167 = a49 - (a51 ^ 0xC92117FC);
  LODWORD(a48) = v164;
  HIDWORD(v139) = a51 - 737367506 - v164 + v165 - (v139 >> 9);
  LODWORD(v139) = HIDWORD(v139);
  v168 = (a51 ^ 0xCC6F4489 ^ v76) + 2 * ((a51 ^ 0xCC6F4489) & v76) + (v167 ^ 0x17388113) + 1;
  v169 = (v139 >> 16) + v162;
  v170 = a50 ^ a51 ^ 0x7462BA78;
  v259 = v83 + 1513977000 + v162 + (v166 ^ (((v161 + v157 + 1 - 2 * (v161 & (v157 + 1))) ^ v159) + v157 - v164 - v163));
  v171 = v168 & 0x8441117F ^ ((v167 ^ 0xBEF98027) + v170);
  v172 = (a51 ^ 0xA96A3321) + a63 + (v167 ^ 0x7950BC33) + (v168 ^ 0x3BAB997B) + 2;
  v173 = v171 ^ v172;
  v174 = v171 ^ v172 ^ 0x3B9D5B41;
  v175 = (((a51 ^ 0x5654AF2C) + a62) ^ 0xDA7FB8E9 ^ v167) + (v168 ^ 0x71D43813) + (v172 ^ 0xAD10DA3) + (v171 ^ v172 ^ 0xE15072AD) + 2;
  v176 = (v172 ^ 0x7CECB049) + (v167 & 0x320E4858 ^ (v256 - (a51 ^ 0x8372B7FC)) ^ v168 & 0x665123D0);
  v177 = a51 & 0xB2 ^ v167 ^ 0x154A992E ^ v84;
  v178 = (v173 ^ 0x6F03505 ^ v176) + 2 * (v176 & (v173 ^ 0x6F03505)) + (v175 ^ 0xDB535DB5) + 1;
  v179 = (v168 ^ ((v167 & 0x6C1FF ^ 0x136915D9) + (a51 ^ HIDWORD(a48) ^ 0x2308B6F0)) ^ 0x327CB9C4) + (v172 ^ 0x49D9EB2D) + (v171 ^ v172 ^ 0xF1640138) + (v175 ^ 0x6591B7E5) + (v178 ^ 0xE604B6DF) + 1;
  v180 = (a51 ^ 0x144D1D38) + (v167 ^ 0x733F9CCE) + (v168 & 0x45090FF) + (v172 ^ 0x310FB879) + (v171 ^ v172 ^ 0x3555AFC8) + v260 + 4;
  v181 = v180 & (v175 ^ 0xD5D9E98F);
  LODWORD(v139) = __ROR4__(v178 ^ v175 & 0x37DA1716 ^ ((v172 ^ 0xAA782C04) + (v168 ^ 0x182BB36B ^ ((a51 ^ 0x367B6A8C) + v167 - ((2 * v167) & 0x535537A) + v257 + 1119595966)) + (v171 ^ v172 ^ 0xC03D06B0) + 1), 27) ^ 0x6F695540;
  HIDWORD(v139) = v139;
  v182 = v180 ^ v175 ^ 0xD5D9E98F;
  v183 = (v139 >> 5) - (v179 ^ 0xA19C6A7C);
  v184 = (v183 ^ 0x38D3F4C0) + (v178 ^ v179 ^ 0xFC778DA6 ^ ((v168 ^ 0x2E72A2A0) - (v172 & 0x50AFC42D) + (v171 ^ v172 ^ 0x5D6F4B85) + (v175 ^ 0xD33EB0D3) + v177 + 1));
  v186 = (v183 ^ 0x65DA05D3) + (v179 ^ 0x8D9BFA8C ^ ((v178 ^ 0xD02E16A2) + v182 + 2 * v181 + 1));
  if ((v184 & 0x400000 & v186) != 0)
  {
    v187 = -2 * (v184 & 0x400000);
  }

  else
  {
    v187 = 0;
  }

  v188 = (v184 & 0x400000) + v186 + v187;
  v189 = v186 & 0x20000;
  if ((v189 & v184) != 0)
  {
    v189 = -v189;
  }

  v190 = (((HIDWORD(v256) + (a51 ^ 0xB2498D80)) & 0x904987FF ^ v167 & 0x824061) - (v168 ^ 0x58A0CCB9)) ^ v172;
  v191 = v188 & 0xFFFDFFFF ^ (v189 + (v184 & 0xFFBFFFFF));
  v185 = v172 ^ v168 ^ ((a51 ^ 0xC1E0F730) + HIDWORD(v257) + (v167 ^ 0xBCC5FE4) + 2);
  v192 = v191 ^ ((((v175 ^ 0x4A1DD50) + (v178 ^ 0x72C9628) + (v185 ^ v174) + (v179 ^ 0x1E9DBC4) - ((2 * (v185 ^ v174)) & 0x33024402) - 1719590399) ^ v183 ^ 0xE6DAAAEF) - (v184 ^ 0x199074E3));
  v193 = (v184 & 0x357E01D ^ ((v178 ^ 0x38D7755C) + (v175 ^ 0x8C7617A5 ^ ((v173 ^ v190 ^ 0x79174E5B) + 2 * ((v190 ^ 0x68DE4A96) & (v173 ^ 0x11C904CD)))) + (v179 ^ 0xB2B5C1B4) + (v183 ^ 0xD5876EE1) + 2)) - ((v191 ^ 0xC3EC60C8) & 0xDD7C5D96);
  v194 = v193 ^ v192;
  v195 = v193 ^ v192 ^ 0x8F023383;
  v196 = (v179 ^ 0xB604A1C5) + (v175 ^ ((v172 ^ 0xB66378F2) - (v173 ^ 0xB5B3A0D3) + (((v258 - (a51 ^ 0x95CA20CF) + (v167 ^ 0xCACD7C84)) & 8 | v168 & 0x48776) ^ (v258 - (a51 ^ 0x95CA20CF) + (v167 ^ 0xCACD7C84)) & 0xFFFFFFF7) + 1) ^ 0x51323947 ^ v178) - (v183 & 0xFB2494BC) - (v184 & 0x40DB861B) + 1;
  v197 = (v179 ^ 0x6AB1A0D5) + (v178 ^ 0x6FDCAA27 ^ ((v174 & 0xEA202D6B) + (v175 ^ 0x8632AAC6) - 2 * (v174 & 0xEA202D6B) + (v172 ^ 0x6C58BAB4 ^ ((a51 ^ 0xC13216B7) + (v167 ^ 0xE9E6254E) - (v168 & 0xE04016D7) + v261 + 2)) + 1)) + (v183 ^ 0x219DA65C) + (v184 ^ 0xC9347347) + (v191 ^ 0x9AFE0FF8) + (v192 ^ 0xD9E4B3BC) + (v195 & 0x14928074) + 3;
  v198 = v183 ^ ((v175 ^ 0x6CF44914) + (v178 ^ 0xE2A101D9) + (v172 ^ ((a51 ^ 0x523E9DD3) + (v167 ^ 0x292B2BDF) + HIDWORD(v258) + (v168 ^ 0x30A30B0) + 3) ^ 0x734ABF4F ^ v174 & 0x24D570AE) + (v179 ^ 0xAFCCF0F9) + 2);
  v199 = (v196 ^ 0x5854BDE0 ^ v191 ^ 0xC3EC60C8) + (v192 ^ 0x71288A4A) + 2 * (((v191 ^ 0x9BB8DD28) & v196) - (v191 ^ 0x9BB8DD28)) + (v193 ^ v192 ^ 0xD1320429) - (v197 ^ 0x68CD583E);
  v200 = (v191 ^ 0x497799C0) + ((v184 | v198) ^ v184 & v198 ^ 0xF4AC8558);
  v201 = (((v193 ^ 0xDBA30375) + v200 - 2 * ((v193 ^ 0xDBA30375) & v200)) ^ 0xB02BC16C) + (v197 & 0xDDD018F0);
  v202 = a51 + (v167 ^ 0x3BEE20CD) + (v168 ^ 0x41C544F5) + (v172 ^ 0xB769773) + (v173 ^ 0x73FDF6EE) - 2 * (v173 ^ 0x73FDF6EE) + (v175 ^ 0xA85FFA3E) + (v178 ^ 0x5C5F9CD5);
  v203 = (v171 ^ 0x76662245 ^ v175) + (v178 ^ 0x214D9F5C) + (v179 & 0x2075E984) + (v183 ^ 0x89094868) + (v184 & 0x7B811641) + (v191 & 0x19B2A23F ^ 0xFE5FDFF7) + (v192 ^ 0x879545D1) + (v194 ^ 0xE1B73F8D) + (v197 ^ 0xA2618AC5);
  v204 = v199 + 1;
  v205 = v197 ^ ((v192 ^ 0xD5A88D34 ^ (v202 + (v179 & 0xD293A71) + (v183 ^ 0x6052DAE1) + (v184 ^ 0x6F6567A7) + (v191 ^ 0xC232E511) + 5)) + (v194 ^ 0x4A519971)) ^ (v199 + 1) & 0xCA1C0447;
  v206 = ((v175 ^ 0xA045403F) + v174) ^ 0xF117601D ^ v178;
  v207 = (((v178 ^ 0x3C1A311C) + v175 + (v179 ^ 0x6DD6CFD3)) ^ v183 ^ 0xBF0DDB1F ^ v184 & 0xE24A0F2E) - ((v191 ^ 0xC3EC60C8) & 0x7C80C82C);
  v208 = (v192 ^ 0xEDADD33C) + (((v184 ^ 0xF359C4B8) + v183) ^ 0x4B1FF22F ^ v191 ^ 0xC3EC60C8) + (v194 ^ 0xA1A2DE54);
  v209 = ((v199 + 1) & 0xCB18A0C0 ^ (v203 + 2)) + 2 * ((v199 + 1) & 0xCB18A0C0 & (v203 + 2));
  v210 = (v179 ^ 0x6E82A07A ^ v183) + 805234428 + v184 - ((2 * v184) & 0x5FFDE748);
  HIDWORD(v211) = v259 + v169;
  LODWORD(v211) = v259 + v169;
  v212 = (v211 >> 17) + v157;
  v213 = (v199 + 1) ^ v201;
  v214 = v206 + (v179 ^ 0x8C97A1C8) + (v184 ^ 0x4DC2426);
  v215 = v213 ^ 0x2336D2B6;
  v216 = v214 - (v183 ^ 0x475310B7) + (v191 ^ 0x5BCAF0C3) + (v192 ^ 0x766FCDA) + (v194 ^ 0x826CD795) + (v197 ^ 0xD06239A0) + ((v199 + 1) ^ 0xA5F6B237);
  v217 = v208 + (v197 ^ 0x6A1046A0) + ((v199 + 1) ^ 0x8A594D2C);
  v218 = (v197 ^ 0xC263484B) + (v192 ^ v207 ^ 0xD5766D24 ^ v195);
  v219 = (v215 ^ ((v204 ^ 0xA704904E) + v197)) - ((2 * (v215 ^ ((v204 ^ 0xA704904E) + v197))) & 0x1C0B3944) - 1912234846;
  v220 = (((v191 ^ 0xC3EC60C8 | 0xFAD03545) - (v191 ^ 0x393C558D)) ^ (v210 + 3240)) + (v192 ^ 0x6DDCFFED);
  v221 = (v204 ^ 0x5861F3F9) + (v194 ^ 0x56DECEF ^ v197);
  v222 = (v213 ^ 0x2336D2B6) & 0xC63A4692 ^ ((v192 ^ 0x54A130F6) + (v194 ^ 0x916B25D1) + (v197 ^ 0x209AA727) + (v204 ^ 0x300BE726) + 2);
  HIDWORD(v211) = (v215 ^ ((v204 ^ 0xA704904E) + v197)) - ((2 * (v215 ^ ((v204 ^ 0xA704904E) + v197))) & 0x1C0B3944) - 1135722467 + v157 + (v166 ^ (((v163 - (v161 ^ (v159 - 1))) ^ v159) + a48)) - v169 + v212;
  LODWORD(v211) = HIDWORD(v211);
  v223 = (v211 >> 22) + v159;
  v224 = (v204 & 0xE9B987AE ^ v218) - ((v213 ^ 0x2336D2B6) & 0x1393D4E8);
  v225 = (((v195 ^ v220 ^ 0x7FEAD71F) - (v197 ^ 0xDBD55EB0)) ^ 0x76CD0D49 ^ v204) + v215 + 2 * ((v213 ^ 0x38F5737D) - (v215 | 0x1BC3A1CB));
  HIDWORD(v211) = (v213 ^ 0x5191D965 ^ (v217 + 1)) - 1982186293 + v159 + (v169 ^ v166 ^ (a48 + v161 + (v163 ^ ~v161))) + v223 + v212;
  LODWORD(v211) = HIDWORD(v211);
  v226 = (v211 >> 8) + v161;
  HIDWORD(v211) = v225 + v161 + ((v166 - ((v163 - 1) & a48)) ^ v163) - v169 + v212 - v223 + 1935138494 + v226;
  LODWORD(v211) = HIDWORD(v211);
  v227 = (v211 >> 4) + v163;
  v228 = (v227 ^ (v223 + v212 + (v169 ^ ~v166) - v226)) + v219;
  HIDWORD(v211) = (v228 | 0xCD447C4A) + v163 + (v228 & 0xCD447C4A);
  LODWORD(v211) = HIDWORD(v211);
  v229 = (v211 >> 6) + a48;
  v230 = v213 ^ 0xC194B2B ^ v209;
  v231 = v213 ^ 0xAABBD504 ^ (v216 + 5);
  HIDWORD(v211) = v222 - 1656533513 + (v227 ^ ((v223 ^ v166 ^ (v212 + (v169 ^ (v166 + 1)))) - v226)) - (v211 >> 6);
  LODWORD(v211) = HIDWORD(v211);
  v232 = (v211 >> 22) + v166;
  if (((v205 ^ v213) & 0x20) != 0)
  {
    v233 = -32;
  }

  else
  {
    v233 = 32;
  }

  HIDWORD(v234) = v231 - 1806451566 + v166 + (v229 ^ (v227 + v226 + ((v223 - (v212 ^ (v169 + 1))) ^ v169)) ^ v232);
  LODWORD(v234) = HIDWORD(v234);
  v235 = v233 + (v205 ^ v213);
  v236 = (v234 >> 8) + v169;
  HIDWORD(v234) = (v235 ^ 0xC5A52917) - 1234336711 - v212 + (v223 ^ v212) + v226 + v227 - 2 * v227 - v229 + v232 - (v234 >> 8);
  LODWORD(v234) = HIDWORD(v234);
  v237 = (v234 >> 4) + v212;
  v238 = (v215 ^ v221 ^ 0xD484B1DA) - 415655802 + (v237 ^ ((v223 ^ ~v226) + v223 - 2 * (v223 ^ ~v226) + v227 - v229 - v232 - v236));
  HIDWORD(v234) = (v238 ^ 0x318CCEF4) + v212 + ((2 * v238) & 0x63199DE8);
  LODWORD(v234) = HIDWORD(v234);
  v239 = (v234 >> 6) + v223;
  HIDWORD(v234) = v230 + 1363198299 + v223 + (v237 ^ (v236 + ((v229 - (v226 + (v227 ^ (v226 - 1)))) ^ v232)) ^ v239);
  LODWORD(v234) = HIDWORD(v234);
  v240 = (v234 >> 22) + v226;
  v241 = v219 - 1034180627 + (v240 ^ (v236 + v232 - v227 + (v229 ^ ~v227) + v237 - v239));
  v242 = ((v236 + (v232 ^ (v229 + 1))) ^ v229) - v237;
  HIDWORD(v234) = (v241 ^ v226) + 2 * (v241 & v226);
  LODWORD(v234) = HIDWORD(v234);
  v243 = (v234 >> 8) + v227;
  v244 = v219 - 826629296 + v227;
  v245 = v237 ^ (v236 - 1);
  HIDWORD(v234) = v244 + (((v239 ^ v242) + 2 * (v239 & v242)) ^ v240) + v243;
  LODWORD(v234) = HIDWORD(v234);
  v246 = (v234 >> 4) + v229;
  v247 = (v237 + 15819772) ^ 0xEC461507;
  HIDWORD(v234) = v243 + v240 + v215 + 1805044984 + ((v237 - (v236 ^ (v232 - 1))) ^ v232 ^ v239) - (v234 >> 4);
  LODWORD(v234) = HIDWORD(v234);
  v248 = (v234 >> 6) + v232;
  HIDWORD(v234) = v222 - 1482847532 + ((v239 - v245) ^ v236 ^ v240) + v243 - v246 - (v234 >> 6);
  LODWORD(v234) = HIDWORD(v234);
  v249 = (v234 >> 22) + v236;
  v250 = (v246 ^ (v243 + v240 - v247 + (v239 ^ (v247 + 1)))) - v248 - v249;
  HIDWORD(v234) = v236 - 1818075494 + (v250 ^ v224) + 2 * (v250 & v224);
  LODWORD(v234) = HIDWORD(v234);
  v251 = (v234 >> 8) + v247;
  v252 = v247 + v231 + (v249 ^ (v248 + ((v243 + (v239 ^ ~v240) + v239) ^ v246)) ^ v251);
  HIDWORD(v234) = ((2 * v252) & 0xA819545C) + (v252 ^ 0xD40CAA2E);
  LODWORD(v234) = HIDWORD(v234);
  v253 = v249 + (v248 ^ ((v243 ^ ~(v246 + v240 - 2 * (v246 & v240))) + v240)) + v251 + (v234 >> 4) + v239;
  v254 = ((a53 ^ 0x7B2B79FE) - 691897801) ^ a53 ^ ((a53 ^ 0xC33AB069) + 1859367842) ^ ((a53 ^ 0x34F8CADF) - 1726887656) ^ ((a53 ^ 0xDEFFFF7F) + 1930886328);
  HIDWORD(v234) = (((v253 ^ v222) + 2 * (v253 & v222)) ^ 0x5A3D74A8) + v239 + ((2 * ((v253 ^ v222) + 2 * (v253 & v222))) & 0xB47AE950);
  LODWORD(v234) = HIDWORD(v234);
  return (*(a66 + 8 * ((30855 * (((v254 ^ 0xADE903C8) & (a54 ^ ((a54 ^ 0x6106FB0C) - 1134762270) ^ ((a54 ^ 0x3F44F7B1) - 501290403) ^ ((a54 ^ 0xA3189550) + 2118289598) ^ ((a54 ^ 0xDFFF7BFF) + 44394003) ^ 0xB95B3E56) ^ v254 & 0x640123BB) == -604046217)) ^ a64)))(v247, (v249 + a56), (v234 >> 6) + v240, 3713670630, v232, 3060630584, a54, v205, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, v256, v257, v258, a48);
}

uint64_t sub_100ADFFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v51 = (v48 - 2602) ^ 0x10D2;
  v52 = (*(v50 + 8 * (v48 ^ 0x5729)))(1028);
  v53 = *(v49 - 192);
  *(v49 - 212) = v51;
  return (*(v53 + 8 * (((v52 == 0) * (v51 - 12915)) ^ v48)))(a48);
}

uint64_t sub_100AE00A4()
{
  v4 = (*(v3 + 8 * (v2 ^ (v2 - 971))))(*(v0 + 1112));
  STACK[0x1B88] = 0;
  return (*(v3 + 8 * v1 + 27408))(v4);
}

uint64_t sub_100AE00D8(uint64_t a1, char a2, char a3, char a4, char a5, uint64_t a6, int a7)
{
  v17 = v14 + ((3 * *(v7 + v8) + 5) & v9) * v10;
  v18 = v14 + ((3 * (*(v7 + v8) >> 3) + 5) & 7) * v10;
  v19 = *(a1 + v18 - (((v18 * v13) >> 32) >> 3) * v12);
  LOBYTE(v18) = *(a1 + v17 - (((v17 * v11) >> 32) >> 9) * v12);
  v20 = (v18 & 0xE3 | a2) ^ v18 & a3;
  v21 = v19 & a4 | 8;
  v22 = v19 ^ 0x20;
  LOBYTE(v18) = v18 ^ v19 ^ (2 * (v20 ^ v21 ^ v22 & (2 * (v22 & (2 * (v22 & (2 * (v22 & (2 * (v22 & (2 * (v22 & (2 * v21) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ (v18 ^ 0x20) & (2 * ((v18 ^ 0x20) & (2 * ((v18 ^ 0x20) & (2 * ((v18 ^ 0x20) & (2 * ((v18 ^ 0x20) & (2 * (v18 & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))));
  *(a1 + v17 - 2696 - ((((v17 - 2696) * v11) >> 32) >> 9) * v12) = (((v18 ^ a5) + 71) ^ ((v18 ^ 0xC3) + 76) ^ ((v18 ^ 0x99) + 18)) + 66;
  return (*(v15 + 8 * (((v8 == 47) * a7) ^ v16)))();
}

uint64_t sub_100AE0204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x990] = v8;
  LODWORD(STACK[0x874]) = STACK[0xA34];
  return (*(v6 + 8 * v7))(a1, a2, a3, a4, a5, a6, 4151854225);
}

uint64_t sub_100AE0274()
{
  v3 = *STACK[0x620];
  *(v2 - 192) = STACK[0x600];
  *(v2 - 196) = LODWORD(STACK[0x26C]) ^ (711523751 * ((((2 * (v2 - 216)) | 0x4E46C2AE) - (v2 - 216) - 656630103) ^ 0x17394086));
  v4 = STACK[0x610];
  *(v2 - 216) = v3;
  *(v2 - 208) = v4;
  v5 = (*(v1 + 8 * (v0 ^ 0x1E01722A)))(v2 - 216);
  return (*(v1 + 8 * (v0 - 503376175)))(v5);
}

uint64_t sub_100AE03DC(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = *(&STACK[0x320] + (v8 + 2361 * a2 - 2696) % (((a1 - 1566) | 0x640u) - 3288));
  v11 = a7 + 825 * a2;
  v12 = 2 * (a2 & 1) + (a2 ^ 1);
  v13 = 2361 * (v10 | ((v10 < 0x60) << 8)) + 3430533;
  v14 = v11 % 0x3280;
  v15 = *(&STACK[0x320] + v13 % 0xA88);
  v16 = v11 % 0x3280 - 6464;
  if (v14 >> 6 >= 0x65)
  {
    v14 = v16;
  }

  v17 = v15 & 0x16 ^ 0xFB;
  *(&STACK[0xDE0] + v14) = (v15 ^ (2 * ((v15 ^ 0x20) & (2 * ((v15 ^ 0x20) & (2 * ((v15 ^ 0x20) & (2 * ((v15 ^ 0x20) & (2 * ((v15 ^ 0x20) & 0x36 ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ (v7 + 10);
  return (*(v9 + 8 * ((94 * (v12 > 0xFF)) ^ a1)))();
}

uint64_t sub_100AE0D04(uint64_t a1)
{
  v5 = *(a1 + v1);
  *(v3 + v1) = v5;
  return (*(v4 + 8 * (((v5 == 0) * ((v2 - 15838) ^ 0x36E6)) ^ v2)))();
}

uint64_t sub_100AE0D40@<X0>(int a1@<W8>)
{
  v3 = *STACK[0x790];
  LODWORD(STACK[0x95C]) = 0;
  LODWORD(STACK[0xA90]) = 1;
  LODWORD(STACK[0xA9C]) = 4;
  return (*(v2 + 8 * (((((a1 ^ 0x1F68) * v1 + 23060) ^ a1 ^ 0x5AE6) * v3) ^ a1)))();
}

uint64_t sub_100AE1220()
{
  v2 = v0 ^ 0x7A32;
  v3 = (v0 ^ 0x32) + 95;
  v4 = ((v0 ^ 0x7A32) - 1659272771) & 0x62E63156;
  v5 = (*(v1 + 8 * (v0 ^ 0x483E)))(LODWORD(STACK[0xF7C]) ^ 0xD21C8094);
  STACK[0x1E50] = v5;
  if (v5)
  {
    v6 = -143113071;
  }

  else
  {
    v6 = -143156080;
  }

  LODWORD(STACK[0x1E5C]) = v6;
  return (*(v1 + 8 * ((((v3 ^ (v5 == 0)) & 1) * (v4 - 317)) ^ v2)))();
}

uint64_t sub_100AE12D0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x16DC]) = v2;
  STACK[0x1368] = *(v1 + 8 * a1);
  return (*(v1 + 8 * (a1 + a1 + 10042 - 3664)))(2174744536);
}

uint64_t sub_100AE1950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  *(v30 + 1040) = a29;
  *(v32 - 232) = v29 - 289235981 * ((-1795138456 - ((v32 - 240) | 0x95005C68) + ((v32 - 240) | 0x6AFFA397)) ^ 0xED7D73A8) - 1032;
  v33 = (*(v31 + 8 * (v29 + 9391)))(v32 - 240);
  v35 = *(v32 - 228) == ((v29 - 1955109790) ^ v29 ^ 0x8B77EBA2) && *a29 != 0;
  return (*(v31 + 8 * ((98 * v35) ^ v29)))(v33);
}

void sub_100AE1A70(unint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, unint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  LODWORD(STACK[0x3AA8]) = v10;
  LODWORD(STACK[0x3898]) = v15;
  LODWORD(STACK[0x3910]) = a4;
  LODWORD(STACK[0x1F94]) = a8;
  LODWORD(STACK[0x1F98]) = a3;
  LODWORD(STACK[0x1F9C]) = a9;
  LODWORD(STACK[0x1FA0]) = v14;
  LODWORD(STACK[0x1FA4]) = v23;
  LODWORD(STACK[0x1FA8]) = a2;
  LODWORD(STACK[0x1FAC]) = v18;
  STACK[0x1380] = v17;
  STACK[0x1558] = v16;
  LODWORD(STACK[0x1FB0]) = v24;
  STACK[0x1AE8] = v25;
  LODWORD(STACK[0x1FB4]) = v26;
  LODWORD(STACK[0x1FB8]) = v22;
  LODWORD(STACK[0x1FBC]) = a5;
  STACK[0x15E0] = a6;
  STACK[0x1388] = v20;
  STACK[0x1390] = a1;
  LODWORD(STACK[0x1FC8]) = v13;
  LODWORD(STACK[0x1FCC]) = a7;
  LODWORD(STACK[0x200C]) = v19;
  STACK[0x1398] = v11;
  LODWORD(STACK[0x1FD0]) = v21;
  LODWORD(STACK[0x1FD4]) = v12;
  LODWORD(STACK[0x1FD8]) = v9;
  STACK[0x1FC0] = LODWORD(STACK[0x3AC8]);
  STACK[0x1F88] = LODWORD(STACK[0x3A78]);
  STACK[0x1F80] = LODWORD(STACK[0x3A80]);
  STACK[0x1F78] = LODWORD(STACK[0x39E0]);
  JUMPOUT(0x1007AF5D8);
}

uint64_t sub_100AE1B80(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  *v2 = a1 + 0x308E083E0C524CBELL;
  if (STACK[0xB78])
  {
    v5 = LODWORD(STACK[0x177C]) == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  return (*(v4 + 8 * ((((v3 ^ 0x819F8950 ^ v6) & 1) == 0) ^ v3)))(2174744536, a2, 2120264440);
}

uint64_t sub_100AE1C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, int a60, int a61, int a62, int a63)
{
  LODWORD(STACK[0x290]) = v88;
  LODWORD(STACK[0x2A0]) = a5;
  LODWORD(STACK[0x2AC]) = v86;
  v90 = v87;
  v91 = v87 & 0xFFFFFFFC ^ 0x157DEA43;
  LODWORD(STACK[0x2EC]) = v91;
  v92 = v90 & 0xFFFFFFF7 ^ 0x157DEA4A;
  LODWORD(STACK[0x2D0]) = v92;
  v93 = LODWORD(STACK[0x274]) ^ v90 & 0xFFFFFFFD;
  LODWORD(STACK[0x2C8]) = v93;
  v94 = *(v89 + v93);
  v95 = *(v89 + v92);
  v96 = v90 & 0xFFFFFFF1 ^ 0x157DEA4E;
  LODWORD(STACK[0x2E0]) = v96;
  v97 = *(v89 + v91);
  v98 = v90 & 0xFFFFFFF3 ^ 0x157DEA4E;
  LODWORD(STACK[0x2CC]) = v98;
  v99 = v90 & 0xFFFFFFFB ^ 0x157DEA46;
  LODWORD(STACK[0x2E8]) = v99;
  v100 = *(v89 + v96);
  v101 = *(v89 + v99);
  v102 = (v94 ^ 0xFB572F6F) + ((2 * v94) & 0xDE);
  v103 = v90 & 0xFFFFFFF9 ^ 0x157DEA46;
  LODWORD(STACK[0x2DC]) = v103;
  v104 = v90 & 0xFFFFFFF2 ^ 0x157DEA4F;
  LODWORD(STACK[0x288]) = v104;
  v105 = v90 & 0xFFFFFFF0 ^ 0x157DEA4F;
  LODWORD(STACK[0x2A4]) = v105;
  v106 = 825 * ((v97 ^ 0xEFFF72BF) + ((2 * v97) & 0xFFFFFF7F)) - 1846676017;
  LODWORD(STACK[0x2D8]) = v90 ^ 0x157DEA42;
  v107 = v90;
  v108 = *(v89 + (v90 ^ 0x157DEA42u));
  v109 = *(v89 + v98);
  v110 = v90 & 0xFFFFFFF8 ^ 0x157DEA47;
  LODWORD(STACK[0x2E4]) = v110;
  v111 = ((v108 - ((2 * v108) & 0xA4) - 756751534) & 0x27D3 ^ 0x3B7E) + ((v108 - ((2 * v108) & 0xA4) - 756751534) & 0x2C);
  v112 = v101 - 1161762494 - ((2 * v101) & 0xDC) + 2092;
  v113 = (825 * ((v95 ^ 0x17DDB5FFu) + 2 * v95) + 382618053) % 0x1940;
  v114 = (*(v89 + v103) ^ 0x697DDFEB) + ((2 * *(v89 + v103)) & 0x1D6);
  v115 = (*(v89 + v105) ^ 0x7FD37E65) + ((2 * *(v89 + v105)) & 0xCA);
  v116 = 825 * ((v100 ^ 0xFED9DAEE) + ((2 * v100) & 0xDDDDDDDD)) - 1271395834;
  v117 = v107 & 0xFFFFFFFA ^ 0x157DEA47;
  LODWORD(STACK[0x2B4]) = v117;
  v118 = v107 & 0xFFFFFFF6 ^ 0x157DEA4B;
  LODWORD(STACK[0x298]) = v118;
  v119 = (*(v89 + v118) ^ 0x7F7F9966) + ((2 * *(v89 + v118)) & 0xCC);
  v120 = 825 * v111 - 6464 * (((42524429 * (825 * v111)) >> 32) >> 6);
  v121 = 825 * ((*(v89 + v110) ^ 0x558DFF5E) + ((2 * *(v89 + v110)) & 0xBC)) + 1233832296;
  v122 = v107 & 0xFFFFFFFE ^ 0x157DEA43;
  LODWORD(STACK[0x294]) = v122;
  LODWORD(STACK[0x2A8]) = v107;
  v123 = v107 & 0xFFFFFFF4 ^ 0x157DEA4B;
  LODWORD(STACK[0x29C]) = v123;
  v124 = (825 * ((v109 ^ 0xCFABED2B) + ((2 * v109) & 0x56)) - 1086417351) % 0x1940;
  v125 = 825 * ((*(v89 + v117) ^ 0x3AFF5EFD) - 142364888 + ((2 * *(v89 + v117)) & 0xFFFB)) + 935621998;
  v126 = (*(v89 + v123) ^ 0x5BFFD7CD) + ((2 * *(v89 + v123)) & 0x19A);
  v127 = &STACK[0xDE0];
  v128 = *(v127 + v106 % 0x1940) ^ *(v127 + v120);
  v129 = *(v127 + v116 % 0x1940) ^ 0x9CC997D3 ^ *(v127 + (825 * v115 + 261385177) % 0x1940u) ^ *(&STACK[0xDE0] + v124) ^ *(&STACK[0xDE0] + (825 * ((*(v89 + v104) ^ 0xB7FF9B66) + ((2 * *(v89 + v104)) & 0xCC)) + 157368053) % 0x1940);
  LODWORD(STACK[0x2C4]) = v129;
  v130 = v107 & 0xFFFFFFF5 ^ 0x157DEA4A;
  LODWORD(STACK[0x2D4]) = v130;
  v131 = v128 ^ 0x9FCB9E32 ^ *(&STACK[0xDE0] + (825 * v102 + 72529485) % 0x1940);
  v132 = *(v127 + v121 % 0x1940) ^ 0xDECF72BF ^ *(v127 + (825 * v114 + 161734001) % 0x1940u) ^ *(v127 + v125 % 0x1940);
  v133 = (825 * ((*(v89 + v130) ^ 0x5FF7BF1F) + 2 * (*(v89 + v130) & 0x1Fu)) - 1159485411) % 0x1940;
  v134 = 825 * ((((*(v89 + v122) - 755368018 - ((2 * *(v89 + v122)) & 0x15C)) & 0x1FF6FC | (*(v89 + v122) - 755368018) & 3 ^ 2) ^ 0x19FFAF) + 2 * ((*(v89 + v122) - 755368018) & 3 ^ 2u)) % 0x1940;
  LODWORD(STACK[0x2BC]) = LODWORD(STACK[0x2F4]) < 0x2BA2BFCD;
  v135 = *(&STACK[0xDE0] + (825 * v126 - 2069345359) % 0x1940u);
  v136 = *(&STACK[0xDE0] + (825 * v119 + 501723381) % 0x1940u) ^ __ROR4__(__ROR4__(*(&STACK[0xDE0] + v113), 25) ^ 0x5E38C019, 7);
  v137 = LODWORD(STACK[0x224]) ^ v129;
  v138 = *(&STACK[0xDE0] + v133);
  v139 = *(&STACK[0xDE0] + v134);
  v140 = *(&STACK[0xDE0] + 825 * ((~(2 * v112) & 0x58) + (v112 ^ 0xBAC0E942)) % 0x1940) ^ v132;
  LODWORD(STACK[0x2B8]) = v140;
  v141 = v136 ^ v135 ^ v138 ^ 0x124A9311;
  LODWORD(STACK[0x2B0]) = v141;
  v142 = v139 ^ __ROR4__(__ROR4__(__ROR4__(v131, 27) ^ 0x3E90A376, 14) ^ 0x945E1050, 23) ^ 0x2215C307;
  LODWORD(STACK[0x2C0]) = v142;
  v143 = LODWORD(STACK[0x21C]) ^ v142;
  v144 = 825 * (BYTE2(v137) ^ 0xC9) + 2965050 - 12928 * (((2657777 * (825 * (BYTE2(v137) ^ 0xC9u) + 2965050)) >> 32) >> 3);
  if (v144 >> 6 >= 0x65)
  {
    v145 = v144 - 6464;
  }

  else
  {
    v145 = 825 * (BYTE2(v137) ^ 0xC9) + 2965050 - 12928 * (((2657777 * (825 * (BYTE2(v137) ^ 0xC9u) + 2965050)) >> 32) >> 3);
  }

  v146 = LODWORD(STACK[0x220]) ^ v140;
  v147 = 825 * ((LOBYTE(STACK[0x220]) ^ v140) ^ 0xBF) + 3390750;
  v148 = v147 - 6464 * (((2657777 * v147) >> 32) >> 2);
  v149 = a75 ^ v141;
  v150 = ((a75 ^ v141) >> 8) ^ 0xF5;
  v151 = &STACK[0xDE0];
  v152 = 825 * (v137 ^ 0xD3) + 3390750 - 6464 * (((2657777 * (825 * (v137 ^ 0xD3u) + 3390750)) >> 32) >> 2);
  v153 = LODWORD(STACK[0x218]) ^ *(v151 + v148) ^ *(v151 + 825 * v150 + 1480875 - 6464 * (((2657777 * (825 * v150 + 1480875)) >> 32) >> 2)) ^ *(v151 + v145) ^ __ROR4__(__ROR4__(__ROR4__(*(&STACK[0xDE0] + 825 * (HIBYTE(v143) ^ 0xB0) + 424050 - 6464 * (((1328889 * (825 * (HIBYTE(v143) ^ 0xB0) + 424050)) >> 32) >> 1)), 21) ^ 0xBE9C6AC8, 27) ^ 0x2F926D18, 16);
  v154 = 825 * (HIBYTE(v137) ^ 0x9C) + 424050 - 6464 * (((1328889 * (825 * (HIBYTE(v137) ^ 0x9C) + 424050)) >> 32) >> 1);
  v155 = *(&STACK[0xDE0] + 825 * (BYTE2(v143) ^ 0xA) + 2965050 - 6464 * (((2657777 * (825 * (BYTE2(v143) ^ 0xAu) + 2965050)) >> 32) >> 2)) ^ __ROR4__(__ROR4__(a74 ^ *(&STACK[0xDE0] + 825 * (HIBYTE(v146) ^ 0xDE) + 424050 - 6464 * (((1328889 * (825 * (HIBYTE(v146) ^ 0xDE) + 424050)) >> 32) >> 1)), 5) ^ 0x14E8BD60, 27) ^ *(v151 + 825 * (v149 ^ 0x1E) + 3390750 - 6464 * (((2657777 * (825 * (v149 ^ 0x1Eu) + 3390750)) >> 32) >> 2)) ^ *(v151 + 825 * (BYTE1(v137) ^ 0x97) + 1480875 - 6464 * (((2657777 * (825 * (BYTE1(v137) ^ 0x97u) + 1480875)) >> 32) >> 2));
  v156 = a73 ^ *(v151 + v154) ^ *(v151 + 825 * (BYTE2(v149) ^ 0x2E) + 2965050 - 6464 * (((2657777 * (825 * (BYTE2(v149) ^ 0x2Eu) + 2965050)) >> 32) >> 2)) ^ __ROR4__(__ROR4__(__ROR4__(*(&STACK[0xDE0] + 825 * (BYTE1(v146) ^ 0x72) + 1480875 - 6464 * (((2657777 * (825 * (BYTE1(v146) ^ 0x72u) + 1480875)) >> 32) >> 2)), 8) ^ 0xA528C81B, 8) ^ 0x71580632, 16) ^ *(v151 + 825 * (v143 ^ 6) + 3390750 - 6464 * (((2657777 * (825 * (v143 ^ 6u) + 3390750)) >> 32) >> 2));
  v157 = LODWORD(STACK[0x214]) ^ *(v151 + 825 * (HIBYTE(v149) ^ 0x6E) + 424050 - 6464 * (((1328889 * (825 * (HIBYTE(v149) ^ 0x6E) + 424050)) >> 32) >> 1)) ^ *(v151 + 825 * (BYTE2(v146) ^ 0xCF) + 2965050 - 6464 * (((2657777 * (825 * (BYTE2(v146) ^ 0xCFu) + 2965050)) >> 32) >> 2)) ^ *(v151 + v152) ^ *(v151 + 825 * (BYTE1(v143) ^ 0x79) + 1480875 - 6464 * (((2657777 * (825 * (BYTE1(v143) ^ 0x79u) + 1480875)) >> 32) >> 2));
  v158 = 825 * (((HIBYTE(v153) ^ 0x4A74F2EA) - 1872848091) ^ ((HIBYTE(v153) ^ 0x8E712570) + 1415269567) ^ ((HIBYTE(v153) ^ 0xC405D7AE) + 506445409)) - 313069937;
  HIDWORD(v159) = 3379200 * (((v155 ^ 0x3319042A) - 1598099553) ^ ((v155 ^ 0xB8C33FC5) + 728028274) ^ ((v155 ^ 0x8BDA3BD5) + 410898530)) - 640389117;
  LODWORD(v159) = HIDWORD(v159);
  v160 = LODWORD(STACK[0x210]) ^ *(v151 + 825 * (BYTE1(v156) ^ 0xB6) + 1480875 - 6464 * (((2657777 * (825 * (BYTE1(v156) ^ 0xB6u) + 1480875)) >> 32) >> 2)) ^ *(v151 + 825 * (HIBYTE(v155) ^ 0xA6) + 424050 - 6464 * (((1328889 * (825 * (HIBYTE(v155) ^ 0xA6) + 424050)) >> 32) >> 1)) ^ *(v151 + (825 * (((v157 ^ 0x4532062D) - 367702614) ^ ((v157 ^ 0xD7E7A0D1) + 2025909078) ^ ((v157 ^ 0x92D5A6FC) + 1039330681)) - 1970184831) % 0x1940) ^ *(v151 + (825 * ((~(v153 >> 15) & 0xA) + (BYTE2(v153) ^ 0x6F2B00A)) - 1676411363) % 0x1940);
  v161 = ((v153 ^ 0x373FFB20) - 29136396) ^ ((v153 ^ 0xEA548F7E) + 589831598) ^ ((v153 ^ 0xDD6B7441) + 337110675);
  v162 = 825 * (BYTE1(v153) ^ 0xFC) + 1480875 - 6464 * (((2657777 * (825 * (BYTE1(v153) ^ 0xFCu) + 1480875)) >> 32) >> 2);
  v163 = 825 * (((v156 ^ 0x2B0F7A14) - 699629910) ^ ((v156 ^ 0xD74E5B1) - 264773363) ^ ((v156 ^ 0x267B9FE1) - 617047203)) - 751258764;
  v164 = ((HIBYTE(v156) ^ 0x5940FBB) + 854086285) ^ ((HIBYTE(v156) ^ 0x6994454E) + 1592268922) ^ ((HIBYTE(v156) ^ 0x6C004AEC) + 1534859228);
  v165 = LODWORD(STACK[0x268]) ^ *(v151 + 825 * (BYTE2(v156) ^ 0x82) + 2965050 - 6464 * (((2657777 * (825 * (BYTE2(v156) ^ 0x82u) + 2965050)) >> 32) >> 2)) ^ *(v151 + 825 * BYTE1(v157) + 1480875 - 6464 * (((2657777 * (825 * BYTE1(v157) + 1480875)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + (v159 >> 12) % 0x1940) ^ *(&STACK[0xDE0] + v158 % 0x1940);
  v166 = (825 * v164 + 809374395) % 0x1940u;
  v167 = 825 * (((HIBYTE(v160) << 11) + 1054218) >> 11);
  v168 = v167 - 12928 * (((680390859 * v167) >> 32) >> 11);
  v169 = LODWORD(STACK[0x20C]) ^ *(v151 + 825 * (BYTE2(v155) ^ 0x67) + 2965050 - 6464 * (((2657777 * (825 * (BYTE2(v155) ^ 0x67u) + 2965050)) >> 32) >> 2)) ^ *(v151 + (825 * (((HIBYTE(v157) ^ 0x234946F8) - 1832722933) ^ ((HIBYTE(v157) ^ 0xE93F0D8B) + 1488229754) ^ ((HIBYTE(v157) ^ 0xCA764B73) + 2080232322)) - 718892713) % 0x1940) ^ *(v151 + v162) ^ *(v151 + v163 % 0x1940);
  v170 = LODWORD(STACK[0x208]) ^ *(v151 + 825 * BYTE2(v157) + 2965050 - 6464 * (((2657777 * (825 * BYTE2(v157) + 2965050)) >> 32) >> 2)) ^ *(v151 + v166) ^ *(v151 + 825 * (BYTE1(v155) ^ 0x51) + 1480875 - 6464 * (((2657777 * (825 * (BYTE1(v155) ^ 0x51u) + 1480875)) >> 32) >> 2)) ^ *(v151 + (825 * v161 - 1380014471) % 0x1940);
  if (v168 >> 6 >= 0x65)
  {
    v168 -= 6464;
  }

  v171 = LODWORD(STACK[0x204]) ^ *(&STACK[0xDE0] + 825 * BYTE2(v170) + 2965050 - 6464 * (((2657777 * (825 * BYTE2(v170) + 2965050)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + 825 * BYTE1(v169) + 1480875 - 6464 * (((2657777 * (825 * BYTE1(v169) + 1480875)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + (825 * (((v160 ^ 0x471A2F13) + 743882339) ^ ((v160 ^ 0xE0F406D4) - 1950836826) ^ ((v160 ^ 0xA7EE29C7) - 861751113)) + 913507516) % 0x1940) ^ *(&STACK[0xDE0] + (825 * (((HIBYTE(v165) ^ 0xE54DB3A) + 1030055782) ^ ((HIBYTE(v165) ^ 0x1EF7AD34) + 767955308) ^ ((HIBYTE(v165) ^ 0x10A376CC) + 596822676)) + 79535940) % 0x1940u);
  v172 = ((v171 >> 23) & 4) + (HIBYTE(v171) ^ 0x202);
  v173 = (825 * (((HIBYTE(v170) ^ 0xB636F4F0) + 2052657274) ^ ((HIBYTE(v170) ^ 0x494E72F5) - 2061396355) ^ ((HIBYTE(v170) ^ 0xFF788605) + 857170573)) + 728692664) % 0x1940;
  v174 = *(&STACK[0xDE0] + (825 * (((v169 ^ 0xA608C43E) - 926693920) ^ ((v169 ^ 0xE24E4461) - 1937422975) ^ ((v169 ^ 0x4446805F) + 713916863)) - 201675828) % 0x1940) ^ __ROR4__(__ROR4__(a72 ^ *(&STACK[0xDE0] + v168), 17) ^ 0x92FDFEF1, 15) ^ *(&STACK[0xDE0] + 825 * BYTE1(v170) + 1480875 - 6464 * (((2657777 * (825 * BYTE1(v170) + 1480875)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + 825 * (BYTE2(v165) ^ 0x60) + 2958586 - 6464 * (((2657777 * (825 * (BYTE2(v165) ^ 0x60u) + 2958586)) >> 32) >> 2));
  v175 = LODWORD(STACK[0x200]) ^ *(&STACK[0xDE0] + 825 * (BYTE1(v165) ^ 0x32) + 1480875 - 6464 * (((2657777 * (825 * (BYTE1(v165) ^ 0x32u) + 1480875)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + (825 * (((HIBYTE(v169) ^ 0x4B88B989) + 541897847) ^ ((HIBYTE(v169) ^ 0x6F1467AB) + 80767573) ^ ((HIBYTE(v169) ^ 0x249CDE22) + 1331221470)) - 1254794638) % 0x1940u) ^ *(&STACK[0xDE0] + 825 * BYTE2(v160) + 2958586 - 6464 * (((2657777 * (825 * BYTE2(v160) + 2958586)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + (825 * (((v170 ^ 0xFB88D12E) + 1104392881) ^ ((v170 ^ 0x63785D8D) - 652001772) ^ ((v170 ^ 0x98F08CA3) + 581693246)) + 1873785271) % 0x1940);
  v176 = LODWORD(STACK[0x260]) ^ *(&STACK[0xDE0] + 825 * BYTE2(v169) + 2965050 - 6464 * (((2657777 * (825 * BYTE2(v169) + 2965050)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + 825 * BYTE1(v160) + 1480875 - 6464 * (((2657777 * (825 * BYTE1(v160) + 1480875)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + v173) ^ *(&STACK[0xDE0] + (825 * (((v165 ^ 0xC59CB54B) + 248565902) ^ ((v165 ^ 0x6EDC8FA4) - 1517229469) ^ ((v165 ^ 0xAB403AAA) + 1611423597)) - 687827270) % 0x1940);
  v177 = 825 * v172 - 6464 * (((1328889 * (825 * v172)) >> 32) >> 1);
  v178 = 825 * BYTE2(v176) + 2965050 - 12928 * (((2657777 * (825 * BYTE2(v176) + 2965050)) >> 32) >> 3);
  v179 = v178 - 6464;
  if (v178 >> 6 < 0x65)
  {
    v179 = 825 * BYTE2(v176) + 2965050 - 12928 * (((2657777 * (825 * BYTE2(v176) + 2965050)) >> 32) >> 3);
  }

  v180 = 825 * ((BYTE2(v171) ^ 0xE0A) + ((v171 >> 15) & 0x14));
  v181 = v180 - 6464 * (((2657777 * v180) >> 32) >> 2);
  v183 = 825 * BYTE1(v176) + 1480875 - 6464 * (((2657777 * (825 * BYTE1(v176) + 1480875)) >> 32) >> 2);
  v184 = *(&STACK[0xDE0] + (825 * (((HIBYTE(v174) ^ 0xD3297C01) - 1339272843) ^ ((HIBYTE(v174) ^ 0x6384FDFF) + 8507531) ^ ((HIBYTE(v174) ^ 0xB0AD81F9) - 743920499)) - 464060201) % 0x1940);
  v185 = ((v184 ^ 0xE9091200) & a85 ^ a84) == -2130599511;
  v186 = (((v184 ^ 0xA4068E17) + 1543074281) ^ ((v184 ^ 0xD974B268) + 646663576) ^ ((v184 ^ 0x1128F96) - 17993622)) + 658973053;
  if (!v185)
  {
    a86 = a83;
  }

  v188 = v186 + a86;
  v182 = (((v174 ^ 0x7B7ED3C3) - 791285485) ^ ((v174 ^ 0x3F3BDBE3) - 1802438349) ^ ((v174 ^ 0x44450865) - 269604171)) + 25134664;
  v189 = LODWORD(STACK[0x258]) ^ *(&STACK[0xDE0] + v177) ^ *(&STACK[0xDE0] + 825 * BYTE1(v175) + 1480875 - 6464 * (((2657777 * (825 * BYTE1(v175) + 1480875)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + v179) ^ *(&STACK[0xDE0] + 825 * ((v182 | 0x52D56731) + (v182 & 0x2131u)) % 0x1940);
  v190 = (825 * (((HIBYTE(v176) ^ 0xAC431589) - 236057858) ^ ((HIBYTE(v176) ^ 0x2984B1A9) + 1948888798) ^ ((HIBYTE(v176) ^ 0x85C7A420) - 664093867)) + 488380517) % 0x1940;
  v191 = a82 ^ *(&STACK[0xDE0] + (825 * (((HIBYTE(v175) ^ 0xDE9C5B87) - 639038822) ^ ((HIBYTE(v175) ^ 0x2B6B3516) + 740189193) ^ ((HIBYTE(v175) ^ 0xF5F76E91) - 226345072)) - 151778421) % 0x1940) ^ *(&STACK[0xDE0] + 825 * (BYTE2(v174) ^ 0xB0) + 2965050 - 6464 * (((2657777 * (825 * (BYTE2(v174) ^ 0xB0u) + 2965050)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + 825 * BYTE1(v171) + 1480875 - 6464 * (((2657777 * (825 * BYTE1(v171) + 1480875)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + (825 * (((v176 ^ 0xEC65C0DB) + 769919858) ^ ((v176 ^ 0xD4FE512B) + 360684162) ^ ((v176 ^ 0x389B91F0) - 115713445)) + 1693082379) % 0x1940);
  v192 = (825 * (((v171 ^ 0x87FAF95F) + 1546781040) ^ ((v171 ^ 0x4013FADF) - 1680145680) ^ ((v171 ^ 0xC7E90380) + 471989169)) - 1249122507) % 0x1940;
  v193 = *(&STACK[0xDE0] + v181) ^ a61 ^ *(&STACK[0xDE0] + v183) ^ *(&STACK[0xDE0] + (825 * (((v175 ^ 0x1C35777F) + 1912337049) ^ ((v175 ^ 0x186DDCEC) + 1973639436) ^ ((v175 ^ 0x458AB93u) + 1771449973)) + 564540534) % 0x1940) ^ v188 ^ ((v188 ^ 0xBFF3A833) + 1239371814) ^ ((v188 ^ 0xF237A1F) - 116424182) ^ ((v188 ^ 0xC6FC2A3B) + 818991662) ^ ((v188 ^ 0x7FFFFFFE) - 1982658583);
  v194 = *(&STACK[0xDE0] + v190);
  v195 = 825 * ((BYTE1(v191) ^ 0x703) + ((v191 >> 7) & 6));
  v196 = a81 ^ *(&STACK[0xDE0] + 825 * BYTE2(v175) + 2965050 - 6464 * (((2657777 * (825 * BYTE2(v175) + 2965050)) >> 32) >> 2)) ^ v194 ^ *(&STACK[0xDE0] + 825 * (BYTE1(v174) ^ 0x33) + 1480875 - 6464 * (((2657777 * (825 * (BYTE1(v174) ^ 0x33u) + 1480875)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + v192);
  v197 = 825 * BYTE1(v196) + 1480875 - 12928 * (((2657777 * (825 * BYTE1(v196) + 1480875)) >> 32) >> 3);
  v198 = (825 * (((HIBYTE(v191) ^ 0x9E8D79BE) - 1923386311) ^ ((HIBYTE(v191) ^ 0xAE849C89) - 1118662384) ^ ((HIBYTE(v191) ^ 0x3009E537) + 601876658)) + 322232419) % 0x1940;
  v200 = __PAIR64__(v197, __ROR4__(__ROR4__(__ROR4__(a71 ^ *(&STACK[0xDE0] + (825 * (((HIBYTE(v189) ^ 0x9DFF5205) - 1145721098) ^ ((HIBYTE(v189) ^ 0x73760839) + 1430058186) ^ ((HIBYTE(v189) ^ 0xEE895AD8) - 926702039)) - 1738532667) % 0x1940), 7) ^ 0xD3BA003F, 29) ^ 0x8CBF4D2F, 28));
  v199 = *(&STACK[0xDE0] + v195 - 6464 * (((2657777 * v195) >> 32) >> 2)) ^ *(&STACK[0xDE0] + 825 * BYTE2(v196) + 2965050 - 6464 * (((2657777 * (825 * BYTE2(v196) + 2965050)) >> 32) >> 2)) ^ v200;
  LODWORD(v200) = ((2 * v197) & 0x4D80) + (v197 ^ 0xFFFFE6C0);
  HIDWORD(v200) = v200 >> 2;
  LODWORD(v200) = HIDWORD(v200);
  v201 = v200 >> 30;
  if (v197 >> 6 < 0x65)
  {
    v201 = 825 * BYTE1(v196) + 1480875 - 12928 * (((2657777 * (825 * BYTE1(v196) + 1480875)) >> 32) >> 3);
  }

  v202 = LODWORD(STACK[0x248]) ^ *(&STACK[0xDE0] + 825 * (BYTE2(v189) ^ 0x89) + 2965050 - 6464 * (((2657777 * (825 * (BYTE2(v189) ^ 0x89u) + 2965050)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + (825 * (((v191 ^ 0x5E7702C4) - 6059034) ^ ((v191 ^ 0x6A8D9323) - 883353085) ^ ((v191 ^ 0x34FA91E7u) - 1792141113)) + 2051395212) % 0x1940) ^ *(&STACK[0xDE0] + v201);
  v203 = 825 * ((((BYTE2(v191) ^ 0xE0A) + (HIWORD(v191) & 0xA)) ^ HIWORD(v191) & 0xA) + 2 * (((BYTE2(v191) ^ 0xE0A) + (HIWORD(v191) & 0xA)) & HIWORD(v191) & 0xA));
  v204 = v203 - 6464 * (((2657777 * v203) >> 32) >> 2);
  v205 = v202 ^ *(&STACK[0xDE0] + (825 * (((HIBYTE(v193) ^ 0xDCFAB8FE) - 1347207688) ^ ((HIBYTE(v193) ^ 0x2691F56E) + 1440247912) ^ ((HIBYTE(v193) ^ 0xFA6B4DE5) - 1994209043)) + 2014791837) % 0x1940);
  v206 = *(&STACK[0xDE0] + (825 * (((v193 ^ 0xB6994274) + 510217972) ^ ((v193 ^ 0x5FBB988F) - 146041847) ^ ((v193 ^ 0xE922DAFB) + 1104336509)) - 1835312426) % 0x1940) ^ __ROR4__(__ROR4__(__ROR4__(v199 ^ 0xB340D50A, 22) ^ 0x5B73C611, 17) ^ 0x4B8431FC, 25);
  v207 = LODWORD(STACK[0x250]) ^ *(&STACK[0xDE0] + v198) ^ *(&STACK[0xDE0] + 825 * (BYTE1(v189) ^ 0xE) + 1480875 - 6464 * (((2657777 * (825 * (BYTE1(v189) ^ 0xEu) + 1480875)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + (825 * (((v196 ^ 0x6A8ECFB0) + 1245595026) ^ ((v196 ^ 0x86FECA38) - 1504821222) ^ ((v196 ^ 0xEC700588) - 859795542)) - 1488546420) % 0x1940) ^ *(&STACK[0xDE0] + 825 * (BYTE2(v193) ^ 0xB3) + 2965050 - 6464 * (((2657777 * (825 * (BYTE2(v193) ^ 0xB3u) + 2965050)) >> 32) >> 2));
  v208 = a80 ^ *(&STACK[0xDE0] + v204) ^ __ROR4__(__ROR4__(*(&STACK[0xDE0] + (825 * (((HIBYTE(v196) ^ 0xEC473DAA) + 1303821112) ^ ((HIBYTE(v196) ^ 0xBE2C3CEB) + 534624887) ^ ((HIBYTE(v196) ^ 0x526B0141) - 207976483)) + 481011012) % 0x1940), 25) ^ 0x37619256, 7) ^ *(&STACK[0xDE0] + (825 * (((v189 ^ 0x69E698CA) - 1949784380) ^ ((v189 ^ 0x13C3D2DD) - 236065579) ^ ((v189 ^ 0x7A254A04u) - 1744079858)) + 422418459) % 0x1940) ^ *(&STACK[0xDE0] + 825 * (BYTE1(v193) ^ 0xB4) + 1480875 - 6464 * (((2657777 * (825 * (BYTE1(v193) ^ 0xB4u) + 1480875)) >> 32) >> 2));
  HIDWORD(v209) = v208 ^ 0xF3A8;
  LODWORD(v209) = v208 ^ 0xAB3A0000;
  HIDWORD(v209) = (v209 >> 16) ^ 0x308C0754;
  LODWORD(v209) = HIDWORD(v209);
  v210 = v209 >> 16;
  v211 = ((v206 ^ 0x6865996F) + 525405468) ^ ((v206 ^ 0xC5B35E93) - 1299723544) ^ ((v206 ^ 0xADD6C7C0) - 622701643);
  v212 = 825 * (BYTE1(v206) ^ 0xA8) + 1480875 - 6464 * (((2657777 * (825 * (BYTE1(v206) ^ 0xA8u) + 1480875)) >> 32) >> 2);
  v213 = LODWORD(STACK[0x24C]) ^ *(&STACK[0xDE0] + (825 * (((HIBYTE(v205) ^ 0xFF6F39D1) - 693866574) ^ ((HIBYTE(v205) ^ 0xEEC7E914) - 955465867) ^ ((HIBYTE(v205) ^ 0x11A8D0C5) + 946046630)) + 1337792985) % 0x1940) ^ *(&STACK[0xDE0] + (825 * (((v207 ^ 0x2CE3ECFE) + 569119230) ^ ((v207 ^ 0xACFB257) + 130043733) ^ ((v207 ^ 0x262C5EA9u) + 723755947)) - 408069318) % 0x1940) ^ *(&STACK[0xDE0] + 825 * (BYTE2(v206) ^ 0x57) + 2965050 - 6464 * (((2657777 * (825 * (BYTE2(v206) ^ 0x57u) + 2965050)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + 825 * HIBYTE(v209) + 1480875 - 6464 * (((2657777 * (825 * HIBYTE(v209) + 1480875)) >> 32) >> 2));
  v214 = 825 * BYTE6(v209) + 3390750 - 6464 * (((2657777 * (825 * BYTE6(v209) + 3390750)) >> 32) >> 2);
  v215 = *(&STACK[0xDE0] + (825 * (((HIBYTE(v206) ^ 0xCFE2C318) + 558309645) ^ ((HIBYTE(v206) ^ 0x8DCC423C) + 1667866665) ^ ((HIBYTE(v206) ^ 0x422E81E5) - 1400151054)) - 345082676) % 0x1940) ^ a65 ^ *(&STACK[0xDE0] + 825 * BYTE2(v210) + 2965050 - 6464 * (((2657777 * (825 * BYTE2(v210) + 2965050)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + 825 * BYTE1(v207) + 1480875 - 6464 * (((2657777 * (825 * BYTE1(v207) + 1480875)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + (825 * (((v205 ^ 0xEF7735D4) - 706775215) ^ ((v205 ^ 0x5250088B) + 1761102352) ^ ((v205 ^ 0xBD273D5F) - 2020638756)) - 134914431) % 0x1940);
  HIDWORD(v209) = a70 ^ *(&STACK[0xDE0] + 825 * BYTE2(v205) + 2965050 - 6464 * (((2657777 * (825 * BYTE2(v205) + 2965050)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + (825 * (((HIBYTE(v207) ^ 0x86A0AF23) + 1672839257) ^ ((HIBYTE(v207) ^ 0x4592C70) - 515112180) ^ ((HIBYTE(v207) ^ 0x82F98353) + 1743563817)) - 1094684202) % 0x1940);
  LODWORD(v209) = HIDWORD(v209);
  v216 = v209 >> 31;
  HIDWORD(v209) = v216 ^ 0x2E47;
  LODWORD(v209) = v216 ^ a60;
  HIDWORD(v209) = v209 >> 26;
  LODWORD(v209) = HIDWORD(v209);
  v217 = *(&STACK[0xDE0] + v214) ^ *(&STACK[0xDE0] + v212) ^ ((v209 >> 7) - ((2 * (v209 >> 7)) & 0x2CBB00FE) - 1772257153);
  v218 = a79 ^ *(&STACK[0xDE0] + 825 * HIBYTE(v210) + 424050 - 6464 * (((1328889 * (825 * HIBYTE(v210) + 424050)) >> 32) >> 1)) ^ *(&STACK[0xDE0] + 825 * BYTE2(v207) + 2965050 - 6464 * (((2657777 * (825 * BYTE2(v207) + 2965050)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + 825 * BYTE1(v205) + 1480875 - 6464 * (((2657777 * (825 * BYTE1(v205) + 1480875)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + (825 * v211 - 675160611) % 0x1940);
  HIDWORD(v209) = ((16 * v215) & 0x30000000 ^ 0x14369BDF) & ((v215 >> 28) ^ 0x34369BD2) ^ 0x34369BD7;
  LODWORD(v209) = 16 * v215;
  HIDWORD(v209) = v209 >> 30;
  LODWORD(v209) = HIDWORD(v209);
  v219 = 825 * (HIBYTE(v217) ^ 0x96) + 424050 - 6464 * (((1328889 * (825 * (HIBYTE(v217) ^ 0x96) + 424050)) >> 32) >> 1);
  v220 = 825 * (BYTE2(v217) ^ 0x5D) + 2965050 - 6464 * (((2657777 * (825 * (BYTE2(v217) ^ 0x5Du) + 2965050)) >> 32) >> 2);
  v221 = LODWORD(STACK[0x244]) ^ *(&STACK[0xDE0] + 825 * (BYTE2(v215) ^ 0xEE) + 2965050 - 6464 * (((2657777 * (825 * (BYTE2(v215) ^ 0xEEu) + 2965050)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + (825 * (((HIBYTE(v213) ^ 0x926E186E) - 1867265322) ^ ((HIBYTE(v213) ^ 0x96EA4CF5) - 1808294321) ^ ((HIBYTE(v213) ^ 0x484549B) + 106530337)) - 1020634986) % 0x1940) ^ *(&STACK[0xDE0] + 825 * BYTE1(v218) + 1480875 - 6464 * (((2657777 * (825 * BYTE1(v218) + 1480875)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + 825 * (v217 ^ 0x7F) + 3390750 - 6464 * (((2657777 * (825 * (v217 ^ 0x7Fu) + 3390750)) >> 32) >> 2));
  v222 = 825 * (((v218 >> 23) & 4) + (HIBYTE(v218) ^ 0x202));
  v223 = a78 ^ *(&STACK[0xDE0] + 825 * (BYTE1(v217) ^ 0x80) + 1480875 - 6464 * (((2657777 * (825 * (BYTE1(v217) ^ 0x80u) + 1480875)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + 825 * BYTE2(v218) + 2965050 - 6464 * (((2657777 * (825 * BYTE2(v218) + 2965050)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + (825 * (((v213 ^ 0xC146C3B5) - 272193164) ^ ((v213 ^ 0xCC0A4659) - 494261088) ^ ((v213 ^ 0xD4C85EC) + 600633131)) + 609984975) % 0x1940) ^ *(&STACK[0xDE0] + (825 * (v209 >> 30) + 424050) % 0x1940);
  v224 = 825 * v218 + 3390750 - 6464 * (((2657777 * (825 * v218 + 3390750)) >> 32) >> 2);
  v225 = LODWORD(STACK[0x240]) ^ *(&STACK[0xDE0] + v222 - 6464 * (((1328889 * v222) >> 32) >> 1)) ^ *(&STACK[0xDE0] + v220);
  v226 = a77 ^ *(&STACK[0xDE0] + 825 * BYTE2(v213) + 2965050 - 6464 * (((2657777 * (825 * BYTE2(v213) + 2965050)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + (825 * (BYTE1(v215) ^ 0x19u) + 1480875) % 0x1940) ^ *(&STACK[0xDE0] + v219);
  v227 = ((v226 & 0x1000) - 1634652024) ^ (v226 & 0x1000 | 0x628EAE78) ^ ((v226 & 0x1000 ^ 0xE6055359) - 1167327441);
  v228 = ((v227 - 22666) & 0x9002 | (((((v227 - 22666) & 0x9002) >> 15) & 1) << 16) | 0x60) ^ ((v227 + 428386166) ^ 0x1E0DCE60) & (2 * ((v227 - 22666) & 0x9002));
  v229 = (2 * ((v227 + 428386166) ^ 0x1E0DCE60)) & 0x94055272 ^ 0x94055212 ^ ((2 * ((v227 + 428386166) ^ 0x1E0DCE60)) ^ 0x280AA4E4) & ((v227 + 428386166) ^ 0x1E0DCE60);
  v230 = ((4 * v228) & 0x44010 | v228) ^ v229 & (4 * v228) & 0xFFFFC07F;
  v231 = (4 * v229) & 0x94055270 ^ 0x84001232 ^ ((4 * v229) ^ 0x501549C8) & v229;
  v232 = (16 * v230) & 0x14055270 ^ v230 ^ ((16 * v230) ^ 0x600) & v231;
  v233 = (16 * v231) & 0x94055270 ^ 0x94005052 ^ ((16 * v231) ^ 0x40552720) & v231;
  v234 = v232 ^ (v232 << 8) & 0x14055200 ^ ((v232 << 8) ^ 0x26000) & v233 ^ 0x94051012;
  v235 = *(&STACK[0xDE0] + v224);
  v236 = (v227 + 428386166) ^ (2 * ((v234 << 16) & 0x14050000 ^ v234 ^ ((v234 << 16) ^ 0x52720000) & ((v233 << 8) & 0x14050000 ^ 0x10050000 ^ ((v233 << 8) ^ 0x5520000) & v233)));
  v237 = v225 ^ *(&STACK[0xDE0] + 825 * BYTE1(v213) + 1480875 - 6464 * (((2657777 * (825 * BYTE1(v213) + 1480875)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + (825 * (((v215 ^ 0xD2E5AA94) - 1986775733) ^ ((v215 ^ 0x469603B5) + 501718124) ^ ((v215 ^ 0x9473A9E4) - 821938629)) + 1326054370) % 0x1940);
  v238 = -765058970 - v227;
  if (((v236 ^ 0x820238F6) & (v235 ^ 0xDAFD3DAE) ^ v236 & 0xA69D8E46) == 0x82000846)
  {
    v238 = v227 + 428386166;
  }

  v239 = (((v235 ^ 0x2EEE2ED) - 49210093) ^ ((v235 ^ 0x2483A204) - 612606468) ^ ((v235 ^ 0x5A0DF300) - 1510863616)) + 1137181916 + v238;
  v240 = (v239 ^ 0xF8A80A9E) & (2 * (v239 & 0xC2A14B1F)) ^ v239 & 0xC2A14B1F;
  v241 = ((2 * (v239 ^ 0xFDE818BE)) ^ 0x7E92A742) & (v239 ^ 0xFDE818BE) ^ (2 * (v239 ^ 0xFDE818BE)) & 0x3F4953A0;
  v242 = (v241 ^ 0x1E000000) & (4 * v240) ^ v240;
  v243 = ((4 * (v241 ^ 0x14950A1)) ^ 0xFD254E84) & (v241 ^ 0x14950A1) ^ (4 * (v241 ^ 0x14950A1)) & 0x3F4953A0;
  v244 = (v243 ^ 0x3D014280) & (16 * v242) ^ v242;
  v245 = ((16 * (v243 ^ 0x2481121)) ^ 0xF4953A10) & (v243 ^ 0x2481121) ^ (16 * (v243 ^ 0x2481121)) & 0x3F4953A0;
  v246 = v244 ^ 0x3F4953A1 ^ (v245 ^ 0x34011200) & (v244 << 8);
  v247 = ((v226 & 0xFFFFEFFF ^ 0x7C60A3E9) - ((2 * (v226 & 0xFFFFEFFF ^ 0x7C60A3E9)) & 0xD100DB2C) - 394232426) ^ v239 ^ (2 * ((v246 << 16) & 0x3F490000 ^ v246 ^ ((v246 << 16) ^ 0x53A10000) & (((v245 ^ 0xB4841A1) << 8) & 0x3F490000 ^ 0x36080000 ^ (((v245 ^ 0xB4841A1) << 8) ^ 0x49530000) & (v245 ^ 0xB4841A1))));
  v248 = 825 * ((v247 ^ 0x91CB) >> 8) + 1480875;
  HIDWORD(v249) = ((16 * v237) & 0xFF000) + 7352320;
  LODWORD(v249) = HIDWORD(v249);
  v250 = a69 ^ *(&STACK[0xDE0] + 825 * v221 + 3390750 - 6464 * (((2657777 * (825 * v221 + 3390750)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + 825 * BYTE2(v237) + 2965050 - 6464 * (((2657777 * (825 * BYTE2(v237) + 2965050)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + 825 * HIBYTE(v223) + 424050 - 6464 * (((1328889 * (825 * HIBYTE(v223) + 424050)) >> 32) >> 1)) ^ 0x5759B72A ^ *(&STACK[0xDE0] + v248 - 6464 * (((2657777 * v248) >> 32) >> 2));
  v251 = LODWORD(STACK[0x23C]) ^ *(&STACK[0xDE0] + 825 * BYTE2(v223) + 2965050 - 6464 * (((2657777 * (825 * BYTE2(v223) + 2965050)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + 825 * HIBYTE(v221) + 424050 - 6464 * (((1328889 * (825 * HIBYTE(v221) + 424050)) >> 32) >> 1)) ^ *(&STACK[0xDE0] + 825 * (v249 >> 12) % 0x1940) ^ *(&STACK[0xDE0] + 825 * (v247 ^ 0xCB) + 3390750 - 6464 * (((2657777 * (825 * (v247 ^ 0xCBu) + 3390750)) >> 32) >> 2));
  v252 = (((v247 ^ 0x72B191CB) >> 16) ^ 0xE0A) + ((v247 >> 15) & 0x14);
  v253 = LODWORD(STACK[0x238]) ^ *(&STACK[0xDE0] + ((26400 * BYTE2(v221) + 94881600) >> 5) - 6464 * (((2657777 * ((26400 * BYTE2(v221) + 94881600) >> 5)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + 825 * v237 + 3390750 - 6464 * (((2657777 * (825 * v237 + 3390750)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + 825 * BYTE1(v223) + 1480875 - 6464 * (((2657777 * (825 * BYTE1(v223) + 1480875)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + 825 * ((v247 ^ 0x72B191CB) >> 24) + 424050 - 6464 * (((1328889 * (825 * ((v247 ^ 0x72B191CB) >> 24) + 424050)) >> 32) >> 1));
  v254 = LODWORD(STACK[0x234]) ^ *(&STACK[0xDE0] + 825 * HIBYTE(v237) + 424050 - 6464 * (((1328889 * (825 * HIBYTE(v237) + 424050)) >> 32) >> 1)) ^ *(&STACK[0xDE0] + 825 * BYTE1(v221) + 1480875 - 6464 * (((2657777 * (825 * BYTE1(v221) + 1480875)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + 825 * v223 + 3390750 - 6464 * (((2657777 * (825 * v223 + 3390750)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + 825 * v252 - 6464 * (((2657777 * (825 * v252)) >> 32) >> 2));
  v255 = 825 * (HIBYTE(v253) ^ 0x92) + 424050 - 6464 * (((1328889 * (825 * (HIBYTE(v253) ^ 0x92) + 424050)) >> 32) >> 1);
  v256 = a68 ^ *(&STACK[0xDE0] + 825 * v251 + 3390750 - 6464 * (((2657777 * (825 * v251 + 3390750)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + 825 * HIBYTE(v250) + 424050 - 6464 * (((1328889 * (825 * HIBYTE(v250) + 424050)) >> 32) >> 1)) ^ *(&STACK[0xDE0] + 825 * BYTE2(v254) + 2965050 - 6464 * (((2657777 * (825 * BYTE2(v254) + 2965050)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + 825 * (BYTE1(v253) ^ 0x3B) + 1480875 - 6464 * (((2657777 * (825 * (BYTE1(v253) ^ 0x3Bu) + 1480875)) >> 32) >> 2));
  v257 = 825 * v254 + 3390750 - 6464 * (((2657777 * (825 * v254 + 3390750)) >> 32) >> 2);
  v258 = 825 * BYTE1(v250) + 1480875 - 6464 * (((2657777 * (825 * BYTE1(v250) + 1480875)) >> 32) >> 2);
  v259 = 825 * (v253 ^ 0xB) + 3390750 - 6464 * (((2657777 * (825 * (v253 ^ 0xBu) + 3390750)) >> 32) >> 2);
  v260 = a67 ^ *(&STACK[0xDE0] + 825 * HIBYTE(v251) + 424050 - 6464 * (((1328889 * (825 * HIBYTE(v251) + 424050)) >> 32) >> 1)) ^ *(&STACK[0xDE0] + 825 * BYTE2(v250) + 2965050 - 6464 * (((2657777 * (825 * BYTE2(v250) + 2965050)) >> 32) >> 2)) ^ *(&STACK[0xDE0] + 825 * BYTE1(v254) + 1480875 - 6464 * (((2657777 * (825 * BYTE1(v254) + 1480875)) >> 32) >> 2));
  v261 = 825 * (BYTE2(v253) ^ 0xC0) + 2965050 - 12928 * (((2657777 * (825 * (BYTE2(v253) ^ 0xC0u) + 2965050)) >> 32) >> 3);
  v262 = 825 * v250 + 3390750 - 6464 * (((2657777 * (825 * v250 + 3390750)) >> 32) >> 2);
  v263 = *(&STACK[0xDE0] + 825 * BYTE2(v251) + 2965050 - 6464 * (((2657777 * (825 * BYTE2(v251) + 2965050)) >> 32) >> 2));
  v264 = 825 * BYTE1(v251) + 1480875 - 12928 * (((2657777 * (825 * BYTE1(v251) + 1480875)) >> 32) >> 3);
  v265 = LODWORD(STACK[0x230]) ^ v263 ^ *(&STACK[0xDE0] + v255);
  v266 = v260 ^ *(&STACK[0xDE0] + v259);
  v267 = v265 ^ *(&STACK[0xDE0] + v258);
  LODWORD(v249) = __ROR4__((825 * HIBYTE(v254) + 424050) ^ 0x4CCB00ED, 9) ^ 0x76A66580;
  HIDWORD(v249) = v249;
  v268 = v249 >> 23;
  if (v261 >> 6 >= 0x65)
  {
    v261 -= 6464;
  }

  v269 = v268 % 0x1940;
  if (v264 >> 6 >= 0x65)
  {
    v264 -= 6464;
  }

  v270 = v267 ^ *(&STACK[0xDE0] + v257);
  v271 = LODWORD(STACK[0x22C]) ^ *(&STACK[0xDE0] + v261) ^ *(&STACK[0xDE0] + v264) ^ *(&STACK[0xDE0] + v262) ^ *(&STACK[0xDE0] + v269);
  v272 = 825 * (v266 ^ 0x48) + 2326500 - 6464 * (((2657777 * (825 * (v266 ^ 0x48u) + 2326500)) >> 32) >> 2);
  if ((v271 & 0xF80000) != 0)
  {
    v273 = (825 * BYTE2(v271) - 6464) % 0x1940;
  }

  else
  {
    v273 = 825 * BYTE2(v271);
  }

  v274 = LODWORD(STACK[0x228]) ^ *(&STACK[0xDE0] + (825 * (HIBYTE(v266) ^ 0x16) + 212025 - 6464 * ((664445 * (825 * (HIBYTE(v266) ^ 0x16) + 212025)) >> 32)));
  v275 = ((v274 & 0x8000000 ^ 0xBE62093C) - 1669659106) ^ ((v274 & 0x8000000) + 1306365870) ^ ((v274 & 0x8000000 ^ 0xAB984C5A) - 1988017284);
  v276 = 825 * v271 + 2326500 - 6464 * (((2657777 * (825 * v271 + 2326500)) >> 32) >> 2);
  v277 = 825 * HIBYTE(v271) + 199097 - 12928 * (((664445 * (825 * HIBYTE(v271) + 199097)) >> 32) >> 1);
  v278 = 825 * BYTE1(v271) + 4030125 - 6464 * (((2657777 * (825 * BYTE1(v271) + 4030125)) >> 32) >> 2);
  if (v277 >> 6 >= 0x65)
  {
    v279 = v277 - 6464;
  }

  else
  {
    v279 = 825 * HIBYTE(v271) + 199097 - 12928 * (((664445 * (825 * HIBYTE(v271) + 199097)) >> 32) >> 1);
  }

  v280 = 825 * (BYTE2(v266) ^ 0xAD) - 6464 * ((664445 * (825 * (BYTE2(v266) ^ 0xADu))) >> 32);
  v281 = *(&STACK[0xDE0] + (825 * (BYTE2(v256) ^ 0xBF) - 6464 * ((664445 * (825 * (BYTE2(v256) ^ 0xBFu))) >> 32)));
  v282 = (((v275 - 68515212) ^ 0xABF771A) - 347926156) ^ (v275 - 68515212) ^ (((v275 - 68515212) ^ 0x34898109) - 713693343) ^ (((v275 - 68515212) ^ 0x1F8A909B) - 25757965) ^ (((v275 - 68515212) ^ 0x3FBFFF1E) - 565995144);
  if (((v282 ^ 0x1E039996) & (v281 ^ 0xB59CE8E9) ^ v282 & 0xC9FC5B00) == 0x8001900)
  {
    v283 = v275 - 68515212;
  }

  else
  {
    v283 = 1075620024 - v275;
  }

  v284 = 825 * BYTE2(v270) - 12928 * ((332223 * (825 * BYTE2(v270))) >> 32);
  v285 = 825 * (BYTE1(v266) ^ 0xF0) + 4030125 - 12928 * (((2657777 * (825 * (BYTE1(v266) ^ 0xF0u) + 4030125)) >> 32) >> 3);
  if (v284 >> 6 >= 0x65)
  {
    v284 -= 6464;
  }

  if (v285 >> 6 >= 0x65)
  {
    v285 -= 6464;
  }

  v286 = a76 ^ LODWORD(STACK[0x2F0]) ^ *(&STACK[0xDE0] + v284) ^ *(&STACK[0xDE0] + v285) ^ *(&STACK[0xDE0] + 825 * (v256 ^ 0x7D) + 2326500 - 6464 * (((2657777 * (825 * (v256 ^ 0x7Du) + 2326500)) >> 32) >> 2));
  v287 = *(&STACK[0xDE0] + 825 * BYTE1(v270) + 4030125 - 6464 * (((2657777 * (825 * BYTE1(v270) + 4030125)) >> 32) >> 2));
  v288 = *(&STACK[0xDE0] + (825 * (HIBYTE(v256) ^ 0xE8) + 212025 - 6464 * ((664445 * (825 * (HIBYTE(v256) ^ 0xE8) + 212025)) >> 32)));
  v289 = *(&STACK[0xDE0] + (825 * HIBYTE(v270) + 212025 - 6464 * ((664445 * (825 * HIBYTE(v270) + 212025)) >> 32)));
  v290 = *(&STACK[0xDE0] + 825 * v270 + 2326500 - 6464 * (((2657777 * (825 * v270 + 2326500)) >> 32) >> 2));
  v291 = *(&STACK[0xDE0] + v272);
  v292 = *(&STACK[0xDE0] + v278);
  v293 = *(&STACK[0xDE0] + v280);
  v294 = *(&STACK[0xDE0] + v273);
  v295 = *(&STACK[0xDE0] + 825 * (BYTE1(v256) ^ 0xDE) + 4030125 - 6464 * (((2657777 * (825 * (BYTE1(v256) ^ 0xDEu) + 4030125)) >> 32) >> 2));
  v296 = *(&STACK[0xDE0] + v276);
  v297 = *(&STACK[0xDE0] + v279);
  v298 = STACK[0x280];
  v299 = v286 ^ v297;
  v300 = v286 ^ v297 ^ 0x9CC997D3;
  *(STACK[0x280] + LODWORD(STACK[0x288])) = *(&STACK[0x320] + 2361 * BYTE2(v300) + 3657189 - 2696 * (((12744711 * (2361 * BYTE2(v300) + 3657189)) >> 32) >> 3)) - 96;
  v301 = a66 ^ a64 ^ LODWORD(STACK[0x2AC]) ^ v288 ^ v291 ^ v287 ^ v294;
  v302 = (((v281 ^ 0x2EA7841F) - 782730271) ^ ((v281 ^ 0x942A4075) + 1809170315) ^ ((v281 ^ 0xC6ED7783) + 957515901)) + 1977256137 + v283;
  v303 = a62 ^ a63 ^ LODWORD(STACK[0x2A0]) ^ v289 ^ v293 ^ v295 ^ v296;
  *(v298 + LODWORD(STACK[0x2A4])) = *(&STACK[0x320] + (2361 * v300 + 606777 - 2696 * ((1593089 * (2361 * v300 + 606777)) >> 32))) - 96;
  *(v298 + LODWORD(STACK[0x298])) = *(&STACK[0x320] + 2361 * BYTE2(v303) + 3657189 - 2696 * (((12744711 * (2361 * BYTE2(v303) + 3657189)) >> 32) >> 3)) - 96;
  v304 = (v302 ^ 0xC038896A) & (2 * (v302 & 0xE882918A)) ^ v302 & 0xE882918A;
  v305 = ((2 * (v302 ^ 0x13D8A7E)) ^ 0xD37E37E8) & (v302 ^ 0x13D8A7E) ^ (2 * (v302 ^ 0x13D8A7E)) & 0xE9BF1BF4;
  v306 = v305 ^ 0x28810814;
  v307 = (v305 ^ 0xC01E0260) & (4 * v304) ^ v304;
  v308 = ((4 * v306) ^ 0xA6FC6FD0) & v306 ^ (4 * v306) & 0xE9BF1BF4;
  v309 = (v308 ^ 0xA0BC0BC0) & (16 * v307) ^ v307;
  v310 = ((16 * (v308 ^ 0x49031024)) ^ 0x9BF1BF40) & (v308 ^ 0x49031024) ^ (16 * (v308 ^ 0x49031024)) & 0xE9BF1BF0;
  v311 = v309 ^ 0xE9BF1BF4 ^ (v310 ^ 0x89B11B00) & (v309 << 8);
  *(v298 + LODWORD(STACK[0x2C8])) = *(&STACK[0x320] + 2361 * BYTE1(v301) + 5520018 - 2696 * (((25489421 * (2361 * BYTE1(v301) + 5520018)) >> 32) >> 4)) - 96;
  *(v298 + LODWORD(STACK[0x2D0])) = *(&STACK[0x320] + (2361 * HIBYTE(v303) + 1218276 - 2696 * ((1593089 * (2361 * HIBYTE(v303) + 1218276)) >> 32))) - 96;
  v312 = STACK[0x290];
  *(v298 + LODWORD(STACK[0x29C])) = *(&STACK[0x320] + (2361 * v303 + 606777 - 2696 * ((1593089 * (2361 * v303 + 606777)) >> 32))) - 96;
  v313 = v312 ^ v290 ^ v274 & 0xF7FFFFFF ^ v292 ^ v302 ^ (2 * ((v311 << 16) & 0x69BF0000 ^ v311 ^ ((v311 << 16) ^ 0x1BF40000) & (((v310 ^ 0x600E00B4) << 8) & 0x69BF0000 ^ 0x40A40000 ^ (((v310 ^ 0x600E00B4) << 8) ^ 0x3F1B0000) & (v310 ^ 0x600E00B4)))) ^ 0x42EB0225;
  *(v298 + LODWORD(STACK[0x2CC])) = *(&STACK[0x320] + (2361 * (HIBYTE(v300) & 0xF0 | HIBYTE(v300) & 0xE | HIBYTE(v299) & 1) + 1218276) % 0xA88u) - 96;
  *(v298 + LODWORD(STACK[0x2D8])) = *(&STACK[0x320] + (2361 * HIBYTE(v301) + 1218276 - 2696 * ((1593089 * (2361 * HIBYTE(v301) + 1218276)) >> 32))) - 96;
  *(v298 + LODWORD(STACK[0x294])) = *(&STACK[0x320] + 2361 * BYTE2(v301) + 3657189 - 2696 * (((12744711 * (2361 * BYTE2(v301) + 3657189)) >> 32) >> 3)) - 96;
  v314 = STACK[0x2A8];
  v315 = (((v314 ^ 0xDCB15B0B) + 592356597) ^ ((v314 ^ 0x62A22D9F) - 1654795679) ^ ((v314 ^ 0xAB6E9CD6) + 1418814250)) + 1020584461;
  *(v298 + LODWORD(STACK[0x2DC])) = *(&STACK[0x320] + 2361 * BYTE1(v313) + 5520018 - 2696 * (((25489421 * (2361 * BYTE1(v313) + 5520018)) >> 32) >> 4)) - 96;
  v316 = (v315 ^ 0xDA846670) & (2 * (v315 & 0xD8A90845)) ^ v315 & 0xD8A90845;
  v317 = 2361 * BYTE1(v300) + 5520018 - 2696 * (((25489421 * (2361 * BYTE1(v300) + 5520018)) >> 32) >> 4);
  v318 = ((2 * (v315 ^ 0x4BC67672)) ^ 0x26DEFC6E) & (v315 ^ 0x4BC67672) ^ (2 * (v315 ^ 0x4BC67672)) & 0x936F7E36;
  *(v298 + LODWORD(STACK[0x2B4])) = *(&STACK[0x320] + 2361 * BYTE2(v313) + 3657189 - 2696 * (((12744711 * (2361 * BYTE2(v313) + 3657189)) >> 32) >> 3)) - 96;
  v319 = ((4 * (v318 ^ 0x91210211)) ^ 0x4DBDF8DC) & (v318 ^ 0x91210211) ^ (4 * (v318 ^ 0x91210211)) & 0x936F7E34;
  v320 = (v319 ^ 0x12D7810) & (16 * ((v318 ^ 0x24C6024) & (4 * v316) ^ v316)) ^ (v318 ^ 0x24C6024) & (4 * v316) ^ v316;
  *(v298 + LODWORD(STACK[0x2E0])) = *(&STACK[0x320] + v317) - 96;
  LOBYTE(v302) = *(&STACK[0x320] + (2361 * HIBYTE(v313) + 1218276 - 2696 * ((1593089 * (2361 * HIBYTE(v313) + 1218276)) >> 32)));
  v321 = STACK[0x2E8];
  *(v298 + LODWORD(STACK[0x2E8])) = v314 ^ 0x42;
  v322 = ((16 * (v319 ^ 0x92420623)) ^ 0x36F7E370) & (v319 ^ 0x92420623) ^ (16 * (v319 ^ 0x92420623)) & 0x936F7E30;
  HIDWORD(v323) = __PAIR64__(v321, v314) >> 29;
  LODWORD(v323) = HIDWORD(v323);
  *(v298 + (v323 >> 3)) = v302 - 96;
  v324 = v320 ^ 0x936F7E37 ^ (v322 ^ 0x12676200) & (v320 << 8);
  *(v298 + LODWORD(STACK[0x2EC])) = *(&STACK[0x320] + (2361 * v301 + 606777 - 2696 * ((1593089 * (2361 * v301 + 606777)) >> 32))) - 96;
  v325 = v315 ^ (2 * ((v324 << 16) & 0x136F0000 ^ v324 ^ ((v324 << 16) ^ 0x7E370000) & (((v322 ^ 0x81081C07) << 8) & 0x136F0000 ^ 0x10010000 ^ (((v322 ^ 0x81081C07) << 8) ^ 0x6F7E0000) & (v322 ^ 0x81081C07))));
  *(v298 + LODWORD(STACK[0x2D4])) = *(&STACK[0x320] + 2361 * BYTE1(v303) + 5520018 - 2696 * (((25489421 * (2361 * BYTE1(v303) + 5520018)) >> 32) >> 4)) - 96;
  v326 = (((v325 ^ 0xE501E1C5) - 709230508) ^ ((v325 ^ 0x4922AEA2) + 2040090421) ^ ((v325 ^ 0x761ABB4C) + 1184979675)) + 1092659727;
  v327 = LODWORD(STACK[0x2BC]) ^ (v326 < 0x2BA2BFCD);
  v328 = v326 < LODWORD(STACK[0x2F4]);
  if (v327)
  {
    v328 = STACK[0x2BC];
  }

  v329 = 2361 * v313 + 606777 - 5392 * (((1593089 * (2361 * v313 + 606777)) >> 32) >> 1);
  if (v329 >= 0xA88)
  {
    v329 -= 2696;
  }

  *(v298 + LODWORD(STACK[0x2E4])) = *(&STACK[0x320] + v329) - 96;
  v330 = *(STACK[0x2F8] + 8 * ((30398 * v328) ^ LODWORD(STACK[0x278])));
  LODWORD(STACK[0x2F0]) = STACK[0x2C4];
  return v330();
}

uint64_t sub_100AE5614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = STACK[0x638];
  v13 = (((1645 * a8 + 2113825) % 0xA88u) ^ 0x7EB6F3BEDAE5FF3FLL) + STACK[0x638] + ((((v8 - 885) | 0x10u) - 13778) & (2 * ((1645 * a8 + 2113825) % 0xA88u)));
  v14 = *v11;
  v15 = *STACK[0x660];
  v16 = *(v15 + (v14 & STACK[0x648]));
  v17 = *v9 ^ v10;
  v18 = qword_101362AE8 ^ 0x722E09814B3EBE59;
  LODWORD(v13) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v13 + 622461121 + v16 - 963544004) & v17)) ^ *(v13 + 0x3BA5C2E4EBFCE6ACLL) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v13 + 622461121 + v16 - 963544002) & v17)) ^ (76 * (v13 - 63));
  v19 = STACK[0x640] + 4 * ((551 * (((v13 ^ 0x133BFB12) + 1400225283) ^ ((v13 ^ 0x88F74A2C) - 927396035) ^ ((v13 ^ 0x9BCCB14E) - 612174753)) - 1749388224) % 0x1D48);
  LODWORD(v13) = *(v15 + (v14 & STACK[0x658]));
  LODWORD(STACK[0x630]) = v13;
  LODWORD(v13) = *(v18 + ((v19 + v13 + 673210726) & v17)) ^ *(v19 - 0x34EE34220E8AC3B8) ^ *(v18 + ((v19 + v13 + 673210728) & v17));
  v20 = 1645 * (((v13 ^ (333999 * v19)) >> 16) ^ 0x25) + 3391990;
  v21 = ((v13 ^ (6319 * v19)) >> 8) ^ 0x79;
  v22 = v20 - 2696 * (((12744711 * v20) >> 32) >> 3);
  v23 = (v22 ^ 0xFCFFFFFFDDFFBBF9) + v12 + ((2 * v22) & 0x17F2);
  v24 = (v13 ^ (-1962600273 * v19)) >> 24;
  v25 = 1645 * ((((v13 ^ (-81 * v19)) ^ 0x3FA905B) - 431241680) ^ (((v13 ^ (-81 * v19)) ^ 0x97766382) + 1925658103) ^ (((v13 ^ (-81 * v19)) ^ 0x948CF310) + 1899865445)) + 195649296;
  v26 = *(v23 - 0x42A3495C171CD60ELL);
  v27 = *(v15 + (v14 & 0xC6917C3C));
  LODWORD(v23) = v23 + 570442759;
  LODWORD(v14) = *(v18 + ((v23 + v27 - 963544004) & v17)) ^ v26 ^ *(v18 + ((v23 + v27 - 963544002) & v17));
  v28 = 1645 * v21 + 3391990;
  HIDWORD(v30) = v14 ^ (12 * v23) ^ 0x10;
  LODWORD(v30) = (v14 ^ (76 * v23) ^ 0x60) << 24;
  v29 = v30 >> 29;
  LODWORD(v32) = v25 % 0x1510 - 2696;
  if (v25 % 0x1510 >= 0xA88)
  {
    v32 = v32;
  }

  else
  {
    v32 = v25 % 0x1510;
  }

  v33 = v28 - 2696 * (((12744711 * v28) >> 32) >> 3);
  v31 = (1645 * (((v24 ^ 0xDEB004B5) + 1161422432) ^ ((v24 ^ 0x65FFD0A1) - 25808308) ^ ((v24 ^ 0xBB4FD4B7) + 549860958)) - 1959744396) % 0xA88;
  v34 = (v31 ^ 0x7DF2EE739BFF6F7FLL) + v12 + ((2 * v31) & 0x1EFE);
  v35 = ((v29 - 32 * (v29 >> 4) + 112) >> 3) | (32 * (v29 - 32 * (v29 >> 4) + 112));
  v36 = (v32 ^ 0xDD17D9FA63FFFFDELL) + v12 + ((2 * v32) & 0xC7FFFFBCLL);
  v37 = (v33 ^ 0x7FE57BDF3FDF5FEFLL) + v12 + ((2 * v33) & 0x1FDE);
  v38 = ((v35 ^ 0x20) + 113) ^ ((v35 ^ 0x3E) + 111) ^ ((v35 ^ 0x10) + 65);
  LODWORD(v34) = (((*(v18 + ((v34 + 1677758593 + v27 - 963544004) & v17)) ^ *(v34 + 0x3C69C8302AE3766CLL) ^ *(v18 + ((v34 + 1677758593 + v27 - 963544002) & v17)) ^ (76 * (v34 - 127))) << 16) ^ 0xCF191E) & ~((v38 - 95) << 8) | ((v38 - 95) << 8) & 0xE600;
  v39 = *(v18 + ((v37 - 1071603695 + v16 - 963544004) & v17)) ^ *(v37 + 0x3A773AC4870385FCLL) ^ *(v18 + ((v37 - 1071603695 + v16 - 963544002) & v17)) ^ (76 * (v37 + 17));
  v40 = *(v18 + ((v36 - 1677721566 + v16 - 963544004) & v17)) ^ *(v36 - 0x22BB23569D1D19F3) ^ *(v18 + ((v36 - 1677721566 + v16 - 963544002) & v17)) ^ (76 * (v36 + 34));
  LODWORD(v34) = ((((v34 ^ 0x3225B2) & (v39 ^ 0xFFFF8C) | v39 & 0x53) << 8) ^ 0x9478E2ED) & (v40 ^ 0xFFFFFF8D);
  v41 = v40 & 0x12;
  v42 = STACK[0x640] + 4 * ((551 * a8 + 710790) % 0x1D48u);
  *(v42 - 0x34EE34220E8AC3B8) = (-1962600273 * v42) ^ *(v18 + ((LODWORD(STACK[0x630]) + v42 + 673210726) & v17)) ^ *(v18 + ((LODWORD(STACK[0x630]) + v42 + 673210728) & v17)) ^ (v41 - 996105984) ^ 0x7EC1C634 ^ v34;
  return (*(STACK[0x668] + 8 * ((81 * (a8 == 255)) ^ v8)))();
}

uint64_t sub_100AE5D08()
{
  v2 = STACK[0x44C];
  if ((*(v1 - 144) & 2) != 0)
  {
    v2 = *(v1 - 136);
  }

  LODWORD(STACK[0x280]) = v2;
  LODWORD(STACK[0x288]) = *(v1 - 208) ^ 0x182B3BFD;
  return (*(*(v1 - 120) + 8 * v0))(0xFFFFFFFFLL, 9949);
}

uint64_t sub_100AE5F08@<X0>(int a1@<W8>)
{
  v4 = v1 + a1;
  v5 = v2 - 3148;
  v6 = (((v2 - 2867) | 0xA) - 10032) & v4;
  v8 = v4 != 371218449 && v6 == 1;
  return (*(v3 + 8 * ((53 * v8) ^ v5)))();
}

uint64_t sub_100AE5F5C@<X0>(uint64_t a1@<X8>)
{
  v2[324] = a1;
  v4 = v2[424];
  v2[41] = &STACK[0x2280] + v4;
  v2[424] = v4 + 128;
  v5 = (*(v3 + 8 * (v1 ^ 0x7DD3)))(&STACK[0x2280] + v4, 0, 120);
  v2[379] = *(v3 + 8 * v1);
  return (*(v3 + 8 * ((v1 + 10123) ^ v1)))(v5);
}

uint64_t sub_100AE6000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v8 = (a1 + a2);
  *v8 = a3;
  v8[1] = a3;
  return (*(v7 + 8 * (((a2 + 32 == (v6 + v3) + v4) * v5) ^ v6)))();
}

uint64_t sub_100AE6034()
{
  STACK[0x530] = v2;
  STACK[0x1FA8] = v0 + 0x3FBEFF77DBFF7DBCLL;
  return (*(v3 + 8 * v1))(0x2A346914086A013BLL);
}

uint64_t sub_100AE60B8()
{
  *(v1 + 2392) = *(v1 + 1712);
  STACK[0x1AF8] = *(v2 + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x25D0 ^ (v0 + 4393))))();
}

uint64_t sub_100AE6290()
{
  LODWORD(STACK[0x1664]) = v1;
  STACK[0x11B8] = *(v2 + 8 * v0);
  return (*(v2 + 8 * (((v0 + 12138) ^ 0x3548) + v0)))();
}

uint64_t sub_100AE62D8@<X0>(unsigned int a1@<W8>)
{
  v4 = HIWORD(v2);
  v5 = v2 >> (4 * (v1 ^ 1) - 8);
  v6 = a1 >= LODWORD(STACK[0x3E18]);
  v7 = STACK[0x3B38];
  *(STACK[0x3B38] + 1963) = bswap32(v2) >> 16;
  v8 = !v6;
  *(v7 + 1961) = v5;
  *(v7 + 1962) = v4;
  return (*(v3 + 8 * ((16238 * v8) ^ v1)))();
}

uint64_t sub_100AE6440(unsigned int a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, char a7, char a8)
{
  v24 = a3 ^ (2 * (a3 & *(v22 - 136)));
  v25 = *(*(&off_101353600 + v19) + (a3 ^ v18) - 2);
  v26 = v25 ^ v21 ^ v20 & (v25 >> 4) ^ (2 * ((v25 ^ v21 ^ v20 & (v25 >> 4)) & v16));
  v27 = ((((v24 & STACK[0x360]) >> a8) + (v24 << v15)) ^ v13);
  *(*(v22 - 144) + 4 * v27) = v12 ^ v9 ^ (((v26 & v17) >> a7) | ((v26 & a5) << v14));
  *(STACK[0x2A8] + 4 * v27) = v11 ^ *(a6 + 4 * (a3 ^ v23 ^ a1));
  return (*(*(v22 - 120) + 8 * (((a3 == 255) * v8) ^ v10)))();
}

uint64_t sub_100AE64F8@<X0>(uint64_t a1@<X4>, int a2@<W8>)
{
  v7 = (a1 + 4 * v2);
  v8 = (((a2 + 10079336) | 0x8105C20C) - 27247116) & v3;
  v9 = v2 + 1;
  v10 = *(a1 + 4 * v9);
  v11 = v7[397] ^ ((v10 & 0x7FFFFFFE | v8) >> 1);
  *v7 = (v11 + v4 - ((2 * v11) & 0x524FBAE4)) ^ *(v6 - 248 + 4 * (v10 & 1));
  return (*(v5 + 8 * ((38 * (v9 != 227)) ^ a2)))();
}

uint64_t sub_100AE65C8()
{
  v2 = *(v0 + 295);
  v3 = *(v0 + 2504);
  v4 = v3 & 0xFFFFFFF8;
  v5 = *STACK[0x51F0];
  v6 = *STACK[0x51E8] & 0xFFFFFFF8;
  v7 = *(v5 + (v6 & ((((v3 & 0xFFFFFFF8) - 968242360) ^ 0x4905DB1A) - 2088725942 + ((2 * (v3 & 0xFFFFFFF8) - 1936484720) & 0x920BB630))));
  v8 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = (((2 * (v7 + v8)) | 0xFDCE9D0D91CBE4ALL) - (v7 + v8) + 0x78118B179371A0DBLL) ^ 0x45414A42537FE7C1;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (0x8513E7FE1BC66153 - ((v11 + v10) | 0x8513E7FE1BC66153) + ((v11 + v10) | 0x7AEC1801E4399EACLL)) ^ 0x1F1E4CDCFCB42A50;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0x6FF046966119128DLL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xA1B29DC5D776132BLL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ v1;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) & 0x7105A551E781057CLL) - (v20 + v19) - 0x3882D2A8F3C082BFLL) ^ 0x1FBA9E48C626A49FLL;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x5455012E8AB1C38FLL;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  LOBYTE(v3) = 8 * (v3 & 7);
  *(v0 + 1893) = ((v25 + v24 - ((2 * (v25 + v24)) & 0xAFA8E7CCEDCCB08CLL) - 0x282B8C198919A7BALL) ^ 0xB89B135A78E406A6) >> v3;
  v26 = STACK[0x8070];
  v27 = *(STACK[0x8070] + 9141);
  *(v0 + 1892) = v2;
  v28 = *(v5 + (v6 & (v4 - 1831847764)));
  v29 = (v28 + v8 - ((2 * (v28 + v8)) & 0x876A330B2780FC3ELL) - 0x3C4AE67A6C3F81E1) ^ 0x11A272FAC31C6FBLL;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x65F254DD188DB4FCLL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (((2 * (v33 + v32)) | 0xA172EE5250ECD0BELL) - (v33 + v32) + 0x2F4688D6D78997A1) ^ 0xBF4931BF496F7AD2;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0xA1B29DC5D776132BLL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v1;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (((2 * (v40 + v39)) & 0x481F98E54593AE3ELL) - (v40 + v39) - 0x240FCC72A2C9D720) ^ 0x3378092972FF13ELL;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0x5455012E8AB1C38FLL;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = __ROR8__(v43, 8);
  *(v26 + 9141) = v2 ^ v27 ^ (((((2 * (v45 + v44)) | 0xDAE861AB947C2A72) - (v45 + v44) + 0x128BCF2A35C1EAC7) ^ 0x823B5069C43C4BD9) >> v3);
  v46 = (STACK[0x8070] + 8548);
  *(v0 + 2512) = v46;
  *(v0 + 2527) = *v46;
  v47 = *(v0 + 3920) + 39;
  *(v0 + 296) = v47;
  v48 = STACK[0x57D8];
  v49 = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4D68]) + 29470));
  *(v0 + 2528) = v47;
  *(v0 + 280) = v49;
  return (*(v48 + 8 * (STACK[0x4D40] ^ 0x15E8)))();
}

uint64_t sub_100AE69F0()
{
  v3 = (*(v0 + 8 * (v1 ^ 0x39B0)))(v2);
  STACK[0xA40] = 0;
  return (*(v0 + 8 * v1))(v3);
}

uint64_t sub_100AE6BAC(int a1, int a2, int a3, int a4, int a5, int a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58)
{
  v71 = (((v58 ^ v66) - 1248645616) ^ ((v58 ^ 0x709D74BE) + a6) ^ ((((a58 ^ 0x485A) + v63) ^ v58) - 1347219479)) + a1;
  v72 = ((v71 ^ v60) - 595590505) ^ v71 ^ ((v71 ^ a2) + a3) ^ ((v71 ^ 0xE729CC8B) + v61) ^ ((v71 ^ v68) + 717746544);
  v73 = 893 * (((v58 ^ v59) + v64) ^ ((v58 ^ v65) + 1358065091) ^ ((v58 ^ v67) + v70)) + 1450381863;
  *(v69 + v73 - v73 / 0x3CF * a5) = v58 ^ a7;
  return (*(STACK[0x200] + 8 * ((55 * ((((v72 ^ v62) - 1785728604) ^ ((v72 ^ 0x44CDB5DD) - 615977922) ^ ((v72 ^ a4) - 611993799)) + 1790793033 > 0xFFFFFFEF)) ^ a58)))();
}

uint64_t sub_100AE6D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v22 = v11;
  v23 = v13 + v11;
  v24 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8) + ((v14 + 1550) ^ v15);
  v25 = v24 ^ v19;
  v24 ^= 0x9FE3749E00AE5B9ELL;
  v26 = (__ROR8__(v25, 8) + v24) ^ 0x1F7B92942DEF21EFLL;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v21;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x51FC477E33DE4033;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = ((a1 & (2 * (v32 + v31))) - (v32 + v31) + v20) ^ a3;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0xA199F9AE5F876A45;
  v36 = __ROR8__(v35, 8);
  v37 = v35 ^ __ROR8__(v34, 61);
  v38 = (v36 + v37 - (a4 & (2 * (v36 + v37))) + a5) ^ a6;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = ((((a7 & (2 * (v40 + v39))) - (v40 + v39) + a8) ^ v16) >> (8 * (v23 & 7u))) ^ *v23;
  v42 = v11 + 1;
  v43 = v42 + v9 < v10;
  if (v10 < v9 != v42 > v17)
  {
    v43 = v10 < v9;
  }

  *(a9 + v22) = v41;
  return (*(a2 + 8 * ((v43 * v18) ^ v12)))();
}

uint64_t sub_100AE6E80()
{
  v3 = STACK[0x1874];
  *(v1 + 3392) += (v0 + 354478908) & 0xEADF2EFD ^ (v0 - 304099878) & 0x93BFDFEF ^ 0xFFFFFFFF7E6013A0;
  return (*(v2 + 8 * ((1005 * (v3 == -143113071)) ^ v0)))();
}

uint64_t sub_100AE6F30()
{
  v2 = *(*STACK[0x3E40] + ((((((2 * (STACK[0x4450] & 0xFFFFFFF8)) & 0xBD6267B0) + (STACK[0x4450] & 0xFFFFFFF8 ^ 0xDEB133DC)) & (LODWORD(STACK[0x444C]) - 21158)) - 1273035568) & *v0));
  v3 = __ROR8__(STACK[0x4450] & 0xFFFFFFFFFFFFFFF8, 8);
  v4 = (0x7039DB53FAB33482 - ((v2 + v3) | 0x7039DB53FAB33482) + ((v2 + v3) | 0x8FC624AC054CCB7DLL)) ^ 0x4D691A063ABD7399;
  v5 = v4 ^ __ROR8__(v2, 61);
  v6 = __ROR8__(v4, 8);
  v7 = (v6 + v5 - ((2 * (v6 + v5)) & 0xB2AA40E534D4E86ALL) - 0x26AADF8D65958BCBLL) ^ 0xBCA774AF82E7C0C9;
  v8 = v7 ^ __ROR8__(v5, 61);
  v9 = __ROR8__(v7, 8);
  v10 = (((2 * (v9 + v8)) & 0x47B254A135D80DD0) - (v9 + v8) + 0x5C26D5AF6513F917) ^ 0x33D69339040AEB9ALL;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0xA1B29DC5D776132BLL;
  v13 = __ROR8__(v12, 8);
  v14 = v12 ^ __ROR8__(v11, 61);
  v15 = (((2 * (v13 + v14)) & 0xDDE7144DA40A6608) - (v13 + v14) - 0x6EF38A26D2053305) ^ 0x7E085598D81F8417;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((2 * (v17 + v16)) | 0xCE511E4865CA5E02) - (v17 + v16) + 0x18D770DBCD1AD0FFLL) ^ 0x3FEF3C3BF8FCF6DFLL;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x5455012E8AB1C38FLL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  LODWORD(v21) = 1901666271 * ((((((2 * (v22 + v21)) & 0x388F78D1E25BF7B8) - (v22 + v21) - 0x1C47BC68F12DFBDDLL) ^ 0x8CF7232B00D05AC3) >> (8 * (STACK[0x4450] & 7u))) ^ LOBYTE(STACK[0x3F17]));
  v23 = STACK[0x4430];
  LODWORD(v20) = (v21 ^ LODWORD(STACK[0x4424])) + v23 - (((v21 ^ LODWORD(STACK[0x4424])) + v23) >> 16);
  LODWORD(v20) = v20 - (v20 >> 8);
  v24 = v20 ^ LODWORD(STACK[0x4428]);
  LODWORD(v13) = (v20 + 1967795678) ^ LODWORD(STACK[0x442C]);
  LODWORD(v20) = v20 - 359375940;
  v25 = STACK[0x4420];
  LODWORD(v21) = (v20 ^ v21) + v23 - (((v20 ^ v21) + v23) >> 16);
  LODWORD(v21) = v21 - (v21 >> 8);
  v26 = v24 ^ v21;
  LODWORD(STACK[0x445C]) = v26;
  LODWORD(v13) = v13 ^ (v21 + 1967795678);
  LODWORD(STACK[0x4460]) = v13;
  LODWORD(v21) = v21 - 359375940;
  LODWORD(STACK[0x4464]) = v21;
  ++v23;
  LODWORD(v20) = v21 ^ v25 ^ v20;
  LODWORD(STACK[0x4468]) = v20;
  v27 = STACK[0x4438];
  v28 = STACK[0x4444];
  v29 = *(v1 + 8 * ((44 * (v23 == STACK[0x4708])) ^ LODWORD(STACK[0x4448])));
  LODWORD(STACK[0x43F8]) = STACK[0x4448];
  LODWORD(STACK[0x43FC]) = v28 + 1;
  STACK[0x4400] = v27 + 1;
  STACK[0x4408] = v23;
  LODWORD(STACK[0x4410]) = v13;
  LODWORD(STACK[0x4414]) = v26;
  LODWORD(STACK[0x4418]) = v21;
  LODWORD(STACK[0x441C]) = v20;
  return v29();
}

uint64_t sub_100AE74D8@<X0>(unsigned int a1@<W0>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v14 = (((a1 ^ (a1 >> 30) ^ v5) + v6) ^ ((a1 ^ (a1 >> 30) ^ v7) + v8) ^ ((a1 ^ (a1 >> 30) ^ v9) + v10)) * a3;
  *(a2 + 4 * a4) = v4 + v14;
  return (*(v13 + 8 * ((7 * (a4 < 0x26F)) ^ v12)))((a4 + v11 + v14));
}

uint64_t sub_100AE7628@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x3818]) = 0;
  LODWORD(STACK[0x3280]) = 0;
  LODWORD(STACK[0x2F60]) = 0;
  LODWORD(STACK[0x3288]) = 0;
  LODWORD(STACK[0x3228]) = 0;
  LODWORD(STACK[0x3230]) = 0;
  v3 = (a1 - 4278) | 0x5290;
  LODWORD(STACK[0x3D68]) = v3;
  v4 = *(v1 + 8 * (((90 * (v3 ^ 0x5275) - 20641) * (LODWORD(STACK[0x2C20]) == 11)) ^ a1));
  LODWORD(STACK[0x3AD8]) = 6;
  LODWORD(STACK[0x3D78]) = 1;
  STACK[0x3D58] = STACK[0x2618];
  STACK[0x3D50] = STACK[0x3430];
  v5 = STACK[0x3710];
  LODWORD(STACK[0x3E18]) = STACK[0x3710];
  LODWORD(STACK[0x3B18]) = STACK[0x39A8];
  LODWORD(STACK[0x3D40]) = v2;
  LODWORD(STACK[0x3D28]) = STACK[0x2424];
  LODWORD(STACK[0x3B08]) = v5;
  LODWORD(STACK[0x3AE8]) = STACK[0x31E8];
  LODWORD(STACK[0x3AF0]) = STACK[0x2500];
  v6 = STACK[0x3810];
  LODWORD(STACK[0x3B00]) = STACK[0x3810];
  v7 = STACK[0x3540];
  LODWORD(STACK[0x3808]) = STACK[0x3540];
  LODWORD(STACK[0x32D8]) = v7;
  LODWORD(STACK[0x3860]) = v2;
  LODWORD(STACK[0x3D80]) = v6;
  LODWORD(STACK[0x3D10]) = STACK[0x3318];
  LODWORD(STACK[0x3310]) = STACK[0x3774];
  LODWORD(STACK[0x3308]) = STACK[0x36A8];
  LODWORD(STACK[0x3300]) = STACK[0x3DD8];
  LODWORD(STACK[0x3820]) = 1;
  LODWORD(STACK[0x3290]) = 1;
  LODWORD(STACK[0x3830]) = 1;
  LODWORD(STACK[0x3298]) = 1;
  LODWORD(STACK[0x32A0]) = 1;
  LODWORD(STACK[0x3850]) = 1;
  LODWORD(STACK[0x3840]) = 1;
  LODWORD(STACK[0x32A8]) = 1;
  LODWORD(STACK[0x3248]) = 1;
  LODWORD(STACK[0x2B98]) = 1;
  LODWORD(STACK[0x2BA0]) = 1;
  LODWORD(STACK[0x3250]) = 1;
  LODWORD(STACK[0x2BA8]) = 1;
  LODWORD(STACK[0x32B0]) = 1;
  LODWORD(STACK[0x3258]) = 1;
  LODWORD(STACK[0x2BD0]) = 1;
  LODWORD(STACK[0x2BD8]) = 1;
  LODWORD(STACK[0x3260]) = 1;
  LODWORD(STACK[0x2BE0]) = 1;
  LODWORD(STACK[0x2BE8]) = 1;
  LODWORD(STACK[0x3848]) = 1;
  LODWORD(STACK[0x32B8]) = 1;
  LODWORD(STACK[0x3270]) = 1;
  LODWORD(STACK[0x2BF0]) = 1;
  LODWORD(STACK[0x2BF8]) = 1;
  LODWORD(STACK[0x3278]) = 1;
  LODWORD(STACK[0x2C00]) = 1;
  LODWORD(STACK[0x2C08]) = 1;
  LODWORD(STACK[0x2C10]) = 1;
  LODWORD(STACK[0x2BC8]) = 1;
  LODWORD(STACK[0x39F0]) = STACK[0x3AE0];
  LODWORD(STACK[0x32E0]) = STACK[0x3688];
  LODWORD(STACK[0x2C20]) = 11;
  LODWORD(STACK[0x3A28]) = STACK[0x1188];
  return v4();
}

uint64_t sub_100AE77E8()
{
  v2 = STACK[0x4858];
  v3 = STACK[0x3F17];
  v4 = *(*STACK[0x3E40] + ((*v0 & ((v2 & 0xCD3333B8 | 0x32CCCC41) - 1831847764 + (v2 & 0x32CCCC40 | 0xCD3333BE) + 1)) & 0xFFFFFFFFFFFFFFF8));
  LODWORD(STACK[0x4864]) = LODWORD(STACK[0x71DC]) ^ LODWORD(STACK[0x4848]) ^ LODWORD(STACK[0x4838]) ^ LODWORD(STACK[0x483C]);
  v5 = (__ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8) + v4) ^ 0xC2AF3EAA3FF1B8E4;
  v6 = v5 ^ __ROR8__(v4, 61);
  v7 = (__ROR8__(v5, 8) + v6) ^ 0x65F254DD188DB4FCLL;
  v8 = __ROR8__(v7, 8);
  v9 = v7 ^ __ROR8__(v6, 61);
  v10 = (v8 + v9) ^ 0x6FF046966119128DLL;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0xA1B29DC5D776132BLL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0xEF042041F5E548ECLL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (v16 + v15 - ((2 * (v16 + v15)) & 0x6AA0E4C727C6FC8) - 0x7CAAF8D9C6C1C81CLL) ^ 0x5B92B439F327EE3ALL;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x5455012E8AB1C38FLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  LOBYTE(v20) = (((((2 * (v21 + v20)) | 0x616E6EE13692C7A2) - (v21 + v20) - 0x30B737709B4963D1) ^ 0x5FF857CC954B3D31uLL) >> (8 * (v2 & 7u))) ^ v3;
  LOBYTE(v20) = (((v20 ^ 0x62) + 127) ^ ((v20 ^ 0xD5) - 54) ^ ((v20 ^ 0xB7) - 84)) - 66;
  v22 = STACK[0x37D0] + (v20 - 44 * ((187 * v20) >> 13));
  STACK[0x4868] = v22;
  v23 = *(v1 + 8 * (STACK[0x3AF8] + 158));
  STACK[0x3F18] = v22;
  STACK[0x3F08] = v23;
  return (*(v1 + 8 * (LODWORD(STACK[0x34C8]) ^ 0x5244)))();
}

uint64_t sub_100AE7AD8(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v25 = (v10 + a8);
  v26 = v20 + v9;
  v27 = *(*STACK[0x4E8] + ((*v21 & ((v26 & (v25 ^ v12) ^ a2) + a3 + (a1 & (2 * (v26 & (v25 ^ v12)))))) & 0xFFFFFFFFFFFFFFF8));
  v28 = (__ROR8__(v26 & (v25 ^ v12), 8) + v27) ^ v11;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v24;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ a7;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = ((v14 | (2 * (v34 + v33))) - (v34 + v33) + v15) ^ v16;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ v17;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0xA82620A559D2DA78;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  *v26 = (((__ROR8__(((v18 & (2 * (v41 + v40))) - (v41 + v40) + v19) ^ v22, 8) + (((v18 & (2 * (v41 + v40))) - (v41 + v40) + v19) ^ v22 ^ __ROR8__(v40, 61))) ^ v23) >> (8 * (v26 & 7u))) ^ *(v13 + a4);
  return (*(STACK[0x540] + 8 * (((16 * (a4 + 1 < v8)) | (32 * (a4 + 1 < v8))) ^ v10)))();
}

uint64_t sub_100AE7BF8@<X0>(void *a1@<X1>, int a2@<W8>)
{
  a1[9] = 0xFDEF94E02C81DC02;
  a1[10] = 0xE3C7CF5F7AE6C917;
  a1[11] = 0xDD8D52E91786681ALL;
  a1[12] = 0x1D68F77C590BE3CELL;
  return (*(v2 + 8 * a2))();
}

uint64_t sub_100AE7CCC@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X6>, int a5@<W7>, uint64_t a6@<X8>)
{
  v17 = (*(*(a4 + 8 * v10) + 4 * (v6 ^ v7 ^ v9) - 4) + v11) ^ v15;
  v18 = (v17 ^ -v17 ^ (v14 - (v17 ^ v14)) ^ v14) + 2 * ((v17 ^ -v17 ^ (v14 - (v17 ^ v14))) & v14);
  *(a6 + 4 * v7) = a5 ^ (v18 - (v12 & (2 * v18)) + a1) ^ a2;
  return (*(v16 + 8 * (((v8 == 0) * a3) ^ v13)))();
}

uint64_t sub_100AE7D48@<X0>(uint64_t a1@<X8>)
{
  (*(v3 + 8 * ((v1 - 12068) ^ 0x5653)))(a1);
  *(*(v2 + 512) + 24) = 0;
  return (*(v3 + 8 * (v1 - 12068)))();
}

uint64_t sub_100AE7E6C()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x40F3)))((((v0 + 17286455) | 0x8097C008) + 1350352520) ^ LODWORD(STACK[0x1170]));
  *(v1 + 1224) = v3;
  return (*(v2 + 8 * (((v3 != 0) * ((v0 ^ 0x1381) - 12089)) ^ v0)))();
}

uint64_t sub_100AE7EEC(double a1, int8x16_t a2, int64x2_t a3, int64x2_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, int a10)
{
  v35.i64[0] = v13 + v12;
  v36.i64[0] = v14 + v10 - 3;
  v36.i64[1] = v14 + v10 - 4;
  v35.i64[1] = v14 + v10 - 2;
  v37 = vandq_s8(v36, *&STACK[0x530]);
  v38 = vandq_s8(v35, *&STACK[0x530]);
  v39 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v40 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v41 = vbslq_s8(a5, vsubq_s64(a4, v39), vaddq_s64(v39, a3));
  v42 = vbslq_s8(a5, vsubq_s64(a4, v40), vaddq_s64(v40, a3));
  v43 = veorq_s8(v41, a6);
  v44 = veorq_s8(v42, a6);
  v45 = veorq_s8(v42, a7);
  v46 = veorq_s8(v41, a7);
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), v46);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v45);
  v49 = veorq_s8(vaddq_s64(vsubq_s64(v47, vandq_s8(vaddq_s64(v47, v47), a8)), v19), v21);
  v50 = veorq_s8(vaddq_s64(vsubq_s64(v48, vandq_s8(vaddq_s64(v48, v48), a8)), v19), v21);
  v51 = veorq_s8(v49, vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL));
  v52 = veorq_s8(v50, vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL));
  v53 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v52);
  v54 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v51);
  v55 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v53, v53), v23), v53), v24), v25);
  v56 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v54, v54), v23), v54), v24), v25);
  v57 = vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL);
  v58 = veorq_s8(v55, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v59 = veorq_s8(v56, v57);
  v60 = vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v59);
  v62 = vaddq_s64(v60, v58);
  v63 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v61, v26), vorrq_s8(v61, v20)), v20), v27);
  v64 = vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v62, v26), vorrq_s8(v62, v20)), v20), v27);
  v66 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v67 = veorq_s8(v63, v64);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v67);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v66);
  v70 = vaddq_s64(vsubq_s64(vorrq_s8(v69, v28), vorrq_s8(v69, v22)), v22);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v68, v28), vorrq_s8(v68, v22)), v22), v29);
  v72 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v73 = vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL);
  v74 = veorq_s8(v70, v29);
  v75 = veorq_s8(v74, v73);
  v76 = veorq_s8(v71, v72);
  v77 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v78 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v79 = vaddq_s64(v77, v76);
  v80 = vaddq_s64(v78, v75);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(v80, vandq_s8(vaddq_s64(v80, v80), v30)), v31), v32);
  v82 = veorq_s8(vaddq_s64(vsubq_s64(v79, vandq_s8(vaddq_s64(v79, v79), v30)), v31), v32);
  v83 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v84 = vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL);
  v85 = veorq_s8(v81, v83);
  v86 = veorq_s8(v82, v84);
  v87 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v88 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v89 = veorq_s8(vaddq_s64(v87, v86), v33);
  v90 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v91 = veorq_s8(vaddq_s64(v88, v85), v33);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v93 = veorq_s8(v89, v90);
  v94 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v95 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v96 = vaddq_s64(v94, v93);
  v97 = vaddq_s64(v95, v92);
  *v97.i8 = vmovn_s64(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v97, v97), v34), v97), v17), v18), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), a2))));
  *v35.i8 = vmovn_s64(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v96, v96), v34), v96), v17), v18), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), a2))));
  v36.i16[0] = v35.i16[2];
  v36.i16[1] = v35.i16[0];
  v36.i16[2] = v97.i16[2];
  v36.i16[3] = v97.i16[0];
  v97.i32[0] = *(v15 + v13);
  *v97.i8 = veor_s8(*v36.i8, *&vmovl_u8(*v97.i8));
  *(v11 + v13) = vuzp1_s8(*v97.i8, *v97.i8).u32[0];
  return (*(STACK[0x540] + 8 * (((2 * (v16 == 0)) | ((v16 == 0) << 7)) ^ a10)))();
}

uint64_t sub_100AE8268@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, int a3@<W3>, uint64_t a4@<X7>, unsigned int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v63 = *(a4 + v58 * v60 + 2129432 - ((((v58 * v60 + 2129432) * a2) >> 32) >> 9) * a3);
  v64 = v63 & 0xF ^ 0x77;
  v65 = v63 ^ (2 * ((v63 ^ 0x20) & (2 * ((v63 ^ 0x20) & (2 * ((v63 ^ 0x20) & (2 * ((v63 ^ 0x20) & (2 * (((2 * (((2 * v63) & 0xFFFFFFC3 | (32 * v59) ^ 1) & v63)) ^ 0x2E) & (v63 ^ 0x20) ^ v64)) ^ v64)) ^ v64)) ^ v64)) ^ v64));
  v66 = ((~(2 * v65) & 0x18) + (v65 ^ 0x303)) * v60;
  LOBYTE(v66) = *(a4 + (v66 - ((1593089 * v66) >> 32) * a3));
  v67 = v66 & 0xC3 ^ 0x11;
  v68 = v66 ^ 0x20;
  *(a1 + 4 * (v61 + 3677 * v58 - ((((v61 + 3677 * v58) * a5) >> 32) >> 12) * v62)) = (v66 ^ (2 * (v68 & (2 * (v68 & (2 * (v68 & (2 * (v68 & (2 * (((2 * (((2 * v66) & 0x42 | 0x21) & v66)) ^ 0x62) & v68 ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67))) ^ (v57 + 63);
  return (*(a57 + 8 * ((55 * (v58 == 255)) ^ v59)))();
}

uint64_t sub_100AEE754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 - 140);
  if (v4)
  {
    v5 = STACK[0x418];
  }

  else
  {
    v5 = STACK[0x414];
  }

  if (v4)
  {
    v6 = *(v3 - 204);
  }

  else
  {
    v6 = STACK[0x3AC];
  }

  if (v4)
  {
    v7 = *(v3 - 228);
  }

  else
  {
    v7 = *(v3 - 220);
  }

  if (v4)
  {
    v8 = STACK[0x434];
  }

  else
  {
    v8 = STACK[0x430];
  }

  if (v4)
  {
    v9 = STACK[0x3B4];
  }

  else
  {
    v9 = STACK[0x42C];
  }

  if (v4)
  {
    v10 = STACK[0x2F4];
  }

  else
  {
    v10 = STACK[0x34C];
  }

  v11 = STACK[0x2DC];
  if (v4)
  {
    v12 = STACK[0x41C];
  }

  else
  {
    v11 = STACK[0x420];
    v12 = STACK[0x428];
  }

  v13 = STACK[0x350];
  if ((v4 & 1) == 0)
  {
    v13 = STACK[0x368];
  }

  v14 = (*(v3 - 140) & 2) == 0;
  v15 = STACK[0x2E0];
  if ((*(v3 - 140) & 2) == 0)
  {
    v15 = STACK[0x2D0];
  }

  LODWORD(STACK[0x350]) = v15;
  v16 = STACK[0x3F0];
  if (!v14)
  {
    v16 = STACK[0x3EC];
  }

  LODWORD(STACK[0x34C]) = v16;
  v17 = STACK[0x400];
  if (v14)
  {
    v17 = STACK[0x3FC];
  }

  LODWORD(STACK[0x3F0]) = v17;
  v18 = STACK[0x310];
  if (v14)
  {
    v18 = STACK[0x300];
  }

  LODWORD(STACK[0x3B4]) = v18;
  v19 = STACK[0x348];
  if (v14)
  {
    v19 = STACK[0x318];
  }

  LODWORD(STACK[0x42C]) = v19;
  LODWORD(STACK[0x400]) = v5;
  LODWORD(STACK[0x3C0]) = v6;
  if (v14)
  {
    v20 = v6;
  }

  else
  {
    v20 = v5;
  }

  *(v3 - 204) = v20;
  v21 = STACK[0x3F8];
  if (v14)
  {
    v21 = STACK[0x3F4];
  }

  LODWORD(STACK[0x3EC]) = v21;
  v22 = *(v3 - 236);
  LODWORD(STACK[0x3FC]) = v8;
  if (!v14)
  {
    v22 = v8;
  }

  *(v3 - 220) = v22;
  LODWORD(STACK[0x41C]) = v7;
  LODWORD(STACK[0x418]) = v9;
  if (v14)
  {
    v23 = v7;
  }

  else
  {
    v23 = v9;
  }

  *(v3 - 228) = v23;
  v24 = STACK[0x444];
  LODWORD(STACK[0x3F8]) = v10;
  if (v14)
  {
    v24 = v10;
  }

  LODWORD(STACK[0x3F4]) = v24;
  v25 = *(v3 - 188);
  if (v14)
  {
    v25 = *(v3 - 208);
  }

  LODWORD(STACK[0x430]) = v25;
  v26 = *(v3 - 256);
  LODWORD(STACK[0x420]) = v11;
  if (v14)
  {
    v26 = v11;
  }

  LODWORD(STACK[0x428]) = v26;
  LODWORD(STACK[0x434]) = v12;
  LODWORD(STACK[0x414]) = v13;
  if (v14)
  {
    v27 = v13;
  }

  else
  {
    v27 = v12;
  }

  LODWORD(STACK[0x3AC]) = v27;
  v28 = *(v3 - 144);
  v29 = STACK[0x3E0];
  if ((v28 & 1) == 0)
  {
    v29 = STACK[0x2B0];
  }

  *(v3 - 136) = v29;
  v30 = STACK[0x284];
  if ((v28 & 1) == 0)
  {
    v30 = STACK[0x280];
  }

  v31 = STACK[0x294];
  if (v28)
  {
    v31 = STACK[0x27C];
  }

  v32 = (v28 & 2) == 0;
  v33 = STACK[0x3DC];
  if (!v32)
  {
    v33 = STACK[0x2B4];
  }

  LODWORD(STACK[0x294]) = v33;
  v34 = STACK[0x278];
  if (v32)
  {
    v34 = STACK[0x274];
  }

  LODWORD(STACK[0x3DC]) = v34;
  v35 = STACK[0x2AC];
  if (v32)
  {
    v35 = STACK[0x2A0];
  }

  LODWORD(STACK[0x3E0]) = v35;
  v36 = STACK[0x290];
  if (v32)
  {
    v36 = STACK[0x288];
  }

  LODWORD(STACK[0x2AC]) = v36;
  if (v32)
  {
    v37 = v31;
  }

  else
  {
    v37 = v30;
  }

  LODWORD(STACK[0x2B0]) = v37;
  if (!v32)
  {
    v30 = v31;
  }

  LODWORD(STACK[0x2B4]) = v30;
  return (*(*(v3 - 120) + 8 * *(v3 - 128)))(0xEA6E177D446D0EE4, 3680934093, a3, 0x6A6E177D00000000);
}

uint64_t sub_100AEE9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  ++LODWORD(STACK[0x2134]);
  STACK[0x38D8] = STACK[0x3490];
  STACK[0x3A40] = STACK[0x3460];
  STACK[0x3840] = STACK[0x3928];
  STACK[0x3710] = STACK[0x3990];
  STACK[0x3A28] = STACK[0x39E0];
  STACK[0x3A98] = STACK[0x3308];
  LODWORD(STACK[0x3900]) = STACK[0x36E0];
  STACK[0x3838] = STACK[0x3920];
  LODWORD(STACK[0x39E0]) = STACK[0x1F78];
  STACK[0x3848] = STACK[0x3918];
  STACK[0x38A8] = STACK[0x3958];
  STACK[0x3A58] = STACK[0x3458];
  STACK[0x3850] = STACK[0x3910];
  STACK[0x3760] = STACK[0x36F8];
  v10 = STACK[0x39A8];
  STACK[0x3A30] = STACK[0x39A8];
  STACK[0x3530] = v10;
  STACK[0x3708] = STACK[0x2858];
  STACK[0x3858] = STACK[0x3950];
  STACK[0x3700] = STACK[0x2800];
  STACK[0x3A70] = STACK[0x3450];
  STACK[0x3A88] = STACK[0x3448];
  STACK[0x3860] = STACK[0x3AB0];
  STACK[0x3798] = STACK[0x38E0];
  STACK[0x3730] = STACK[0x36A0];
  STACK[0x38B0] = STACK[0x2808];
  STACK[0x37E0] = STACK[0x2860];
  STACK[0x38C8] = STACK[0x39F8];
  v11 = STACK[0x3558];
  STACK[0x3770] = STACK[0x3558];
  STACK[0x3508] = v11;
  STACK[0x3728] = STACK[0x39F0];
  v12 = STACK[0x39A0];
  STACK[0x34F8] = STACK[0x39A0];
  STACK[0x2138] = v12;
  v13 = STACK[0x3998];
  STACK[0x34F0] = STACK[0x3998];
  STACK[0x3738] = v13;
  STACK[0x3AB0] = STACK[0x3440];
  STACK[0x38F8] = STACK[0x38E8];
  STACK[0x2170] = STACK[0x3938];
  v14 = STACK[0x3A78];
  STACK[0x34E8] = STACK[0x3A78];
  STACK[0x2140] = v14;
  STACK[0x3868] = STACK[0x3948];
  STACK[0x37A0] = STACK[0x2850];
  STACK[0x2178] = STACK[0x3A08];
  v15 = STACK[0x3A80];
  STACK[0x34E0] = STACK[0x3A80];
  STACK[0x2188] = v15;
  v16 = STACK[0x3AD0];
  STACK[0x3758] = STACK[0x3AD0];
  STACK[0x3510] = v16;
  LODWORD(STACK[0x3A80]) = STACK[0x1F80];
  STACK[0x3AD0] = STACK[0x3438];
  STACK[0x3870] = STACK[0x3940];
  STACK[0x37B0] = STACK[0x3430];
  STACK[0x38B8] = STACK[0x3988];
  STACK[0x37A8] = STACK[0x38F0];
  STACK[0x38C0] = STACK[0x3A00];
  STACK[0x3878] = STACK[0x3AB8];
  STACK[0x2180] = STACK[0x39E8];
  v17 = STACK[0x3AC8];
  STACK[0x3500] = STACK[0x3AC8];
  STACK[0x2150] = v17;
  STACK[0x38D0] = STACK[0x3908];
  STACK[0x37B8] = STACK[0x3428];
  STACK[0x37C0] = STACK[0x3420];
  STACK[0x3768] = STACK[0x29B8];
  STACK[0x37C8] = STACK[0x3418];
  STACK[0x3778] = STACK[0x3960];
  STACK[0x37D0] = STACK[0x3410];
  STACK[0x3880] = STACK[0x3AA8];
  STACK[0x3888] = STACK[0x3AD8];
  LODWORD(STACK[0x3A78]) = STACK[0x1F88];
  LODWORD(STACK[0x3AC8]) = STACK[0x1FC0];
  v18 = *(STACK[0x3AC0] + 8 * a10);
  STACK[0x3788] = STACK[0x13F0];
  STACK[0x3780] = STACK[0x1370];
  STACK[0x3720] = STACK[0xCA8];
  STACK[0x3718] = STACK[0x13A0];
  LODWORD(STACK[0x3A08]) = STACK[0x1F74];
  STACK[0x3AA0] = STACK[0x1378];
  STACK[0x3740] = STACK[0x10D8];
  STACK[0x37D8] = STACK[0x10F8];
  LODWORD(STACK[0x3990]) = STACK[0x1F6C];
  LODWORD(STACK[0x3A20]) = STACK[0x2010];
  STACK[0x2168] = STACK[0x1108];
  STACK[0x3750] = STACK[0xCB0];
  LODWORD(STACK[0x3998]) = STACK[0x1FD4];
  LODWORD(STACK[0x3A00]) = STACK[0x1FFC];
  STACK[0x3A90] = STACK[0x10C8];
  LODWORD(STACK[0x39F8]) = STACK[0x1FA0];
  LODWORD(STACK[0x3988]) = STACK[0x1FF8];
  STACK[0x3748] = STACK[0x10E0];
  LODWORD(STACK[0x39F0]) = STACK[0x1FA4];
  STACK[0x2148] = STACK[0x850];
  LODWORD(STACK[0x3958]) = STACK[0x1FCC];
  LODWORD(STACK[0x3950]) = STACK[0x1F94];
  LODWORD(STACK[0x39D0]) = STACK[0x2008];
  LODWORD(STACK[0x3948]) = STACK[0x1FA8];
  LODWORD(STACK[0x39A8]) = STACK[0x2000];
  LODWORD(STACK[0x39A0]) = STACK[0x1F98];
  LODWORD(STACK[0x3940]) = STACK[0x1F9C];
  LODWORD(STACK[0x3A38]) = STACK[0x1FAC];
  LODWORD(STACK[0x3920]) = STACK[0x1FC8];
  LODWORD(STACK[0x3918]) = STACK[0x1FD8];
  STACK[0x2158] = STACK[0x1100];
  LODWORD(STACK[0x39E8]) = STACK[0x2004];
  LODWORD(STACK[0x3938]) = STACK[0x1FB0];
  LODWORD(STACK[0x3928]) = STACK[0x1FD0];
  LODWORD(STACK[0x39D8]) = STACK[0x1F70];
  LODWORD(STACK[0x3AB8]) = STACK[0x200C];
  STACK[0x2160] = STACK[0x10D0];
  return v18(STACK[0x1390]);
}