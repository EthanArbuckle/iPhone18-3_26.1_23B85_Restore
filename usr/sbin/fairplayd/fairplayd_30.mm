uint64_t sub_1008EB3B0()
{
  v1 = STACK[0x4D8] - 28684;
  *(v0 + 184) = *(v0 + 1624);
  return (*(STACK[0x5A0] + 8 * v1))();
}

uint64_t sub_1008EB408@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x1E74]) = a1;
  STACK[0x9E8] = *(v2 + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x7183 ^ (v1 - 229479526) & 0xDADF5EF)))();
}

uint64_t sub_1008EB48C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x424]) = a1;
  v3 = STACK[0x588];
  v4 = (*(v2 + 8 * (v1 + 25244)))(STACK[0x588] + 16, 0);
  v5 = v2;
  v6 = STACK[0x3D8];
  v6[2] = *(v3 + 16) - ((2 * *(v3 + 16)) & 0x70BE4D18) + 945759884;
  v6[1] = *(v3 + 24) - ((2 * *(v3 + 24)) & 0x70BE4D18) + 945759884;
  v7 = (*(v5 + 8 * (v1 + 25187)))(v4);
  v6[3] = v7 - ((v7 << ((v1 + 28) & 0xE7 ^ 0x65)) & 0x70BE4D18) + 945759884;
  v8 = (*(v5 + 8 * (v1 ^ 0xA2A3)))();
  *v6 = v8 - ((2 * v8) & 0x70BE4D18) + 945759884;
  LODWORD(STACK[0x380]) = STACK[0x348] - ((2 * STACK[0x348]) & 0x5406956) - 2103429973;
  return (*(v5 + 8 * v1))();
}

uint64_t sub_1008EB670()
{
  v2 = *(v1 - 216);
  v3 = (*(v2 + 8 * (v0 + 6150)))(1028);
  STACK[0x4B8] = 0;
  LODWORD(STACK[0x48C]) = 0;
  STACK[0x4A0] = 0;
  *(v1 - 248) = 0;
  STACK[0x498] = 0;
  *(v1 - 256) = 0;
  STACK[0x480] = 0;
  STACK[0x4A8] = 0;
  STACK[0x490] = 0;
  STACK[0x478] = 0;
  STACK[0x4B0] = 0;
  *(v1 - 224) = v0 ^ 0xA6EB;
  v4 = *(v2 + 8 * ((((((v0 - 12748) ^ (v3 == 0)) & 1) == 0) * ((v0 ^ 0xA6EB) - 5162)) ^ v0));
  *(v1 - 148) = -1391007032;
  return v4();
}

uint64_t sub_1008EB7A8@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v6[153] = *(a1 + 8 * a2);
  v6[103] = v2;
  LODWORD(STACK[0xA8C]) = v5;
  v7 = v6[37];
  v6[21] = &STACK[0xD50] + v7;
  v6[37] = ((v3 + 75) ^ 0x3135u) + v7 - 41358;
  v6[43] = v4;
  v6[107] = 0;
  v6[163] = 0;
  v6[81] = 0;
  LODWORD(STACK[0x5C4]) = -371865839;
  LODWORD(STACK[0x9DC]) = 0;
  v6[29] = 0;
  v6[125] = 0;
  LODWORD(STACK[0xADC]) = -371865839;
  v8 = (*(a1 + 8 * (v3 ^ 0x5A87)))();
  if (v4)
  {
    v9 = v5 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  return (*(STACK[0x5A0] + 8 * ((41 * v10) ^ v3)))(v8);
}

uint64_t sub_1008EB918@<X0>(int a1@<W8>)
{
  if (((3964 * (a1 ^ 0xA2E8) - 27684) & v2) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = v1;
  }

  LODWORD(STACK[0x564]) = v5;
  LODWORD(STACK[0x61C]) = v5;
  STACK[0x5D0] = STACK[0x418];
  STACK[0x5E0] = STACK[0x470];
  v6 = STACK[0x770];
  STACK[0x608] = STACK[0x770];
  return (*(v4 + 8 * ((489 * (((-47 * (a1 ^ 0xE3) + 1) ^ (v6 == 0)) & 1)) ^ a1)))();
}

uint64_t sub_1008EBA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  STACK[0x2050] = v7;
  LODWORD(STACK[0xE20]) = a5;
  STACK[0xD00] = v6;
  LODWORD(STACK[0x18B8]) = v5;
  return (*(v8 + 92960))(STACK[0x19F0], 3976926506, 371891407, 55, 95, 2525398098, 4294967274, 2525398095);
}

uint64_t sub_1008EBCF4()
{
  STACK[0xFD8] = v1;
  v4 = *(v2 + (STACK[0xB5A] & 3 ^ 2)) ^ 0x6E;
  return (*(v3 + 8 * ((112 * (((v4 - 13 * ((330382100 * v4) >> 32) + 7) & 0x1C) == 0)) ^ v0)))();
}

uint64_t sub_1008EC074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x778];
  v10 = STACK[0x608];
  STACK[0x7F0] = STACK[0x608];
  STACK[0x800] = v9;
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  return (*(a8 + 8 * ((v12 * ((v8 - 1284997852) & 0x4C97FBEE ^ 0xA1F4)) ^ v8)))();
}

void sub_1008EC148(uint64_t a1)
{
  v1 = 193924789 * ((2 * (a1 & 0x195F9FEC) - a1 - 425697261) ^ 0x501B5275);
  if (*(a1 + 32))
  {
    v2 = *(a1 + 16) == 0;
  }

  else
  {
    v2 = 1;
  }

  v6 = v2 || *a1 == 0 || *(a1 + 40) == 0 || (*(a1 + 24) ^ v1) == 1376681542;
  __asm { BRAA            X9, X17 }
}

void sub_1008EC370(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 24) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v2 || *(a1 + 8) == 0;
  v1 = *a1 + 1603510583 * (((a1 | 0x103E0FA9) - (a1 & 0x103E0FA9)) ^ 0x87E53D02);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1008EC4AC(uint64_t a1, uint64_t a2, int a3)
{
  *(v5 - 1) = v7;
  *v5 = v7;
  return (*(v6 + 8 * (((v4 == 0) * ((v3 + 266) ^ a3)) ^ v3)))();
}

uint64_t sub_1008EC4DC@<X0>(int *a1@<X7>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v33 = *(*(v29 + 160) + 40) - (*(*v31 + (*a1 & 0xFFFFFFFFF1F71F20)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x329F1AD0046BFA29uLL) > 0xFFFFFFFF3B82309CLL;
  v34 = STACK[0x10A0] - (*(*v31 + (*a1 & 0x5701EF08)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x42A5FD9F28528BCALL) > 0xFFFFFFFF3B82309CLL;
  v35 = 1022166737 * a29 + a2 + 504885103;
  *(v32 - 232) = 1022166737 * a29;
  *(v32 - 240) = v35 - 37;
  *(v32 - 236) = a2 + 504885103 - 1022166737 * a29;
  *(v32 - 220) = v35 - 4892;
  *(v32 - 256) = v33 ^ v34 | (1022166737 * a29);
  *(v32 - 248) = -1022166737 * a29;
  *(v32 - 244) = 1022166737 * a29 + a2 - 867910870;
  v36 = (*(v30 + 8 * (a2 ^ 0x62601B40u)))(v32 - 256);
  return (*(v30 + 8 * *(v32 - 224)))(v36);
}

uint64_t sub_1008EC74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v14 = v8 ^ 0x9135E3E4;
  v17 = ((((((v9 ^ 0x49559D95) - 1230347669) ^ ((v9 ^ 0x5FC2B4CB) - 1606595787) ^ ((v9 ^ 0xFF4273E0 ^ (((v8 ^ 0x9135D8A6) * a7 - 21676) | 0x952E)) + 12390833)) & 0xFFFFFFFC) - 371865836) ^ v13) != a8 && v12 != v9 || v10 == 587691322;
  return (*(v11 + 8 * ((52 * v17) | v14)))();
}

uint64_t sub_1008EC880()
{
  *(v2 + 1216) = 0;
  *(v2 + 560) = *(v0 + 8 * (v1 - 32547));
  return (*(v0 + 8 * ((v1 ^ 0xF0AE) + v1 - 32547 - 24757)))();
}

uint64_t sub_1008EC94C()
{
  v4 = v1 | ((v1 < 0x53E51540) << 32);
  v5 = v4 + v2 + ((v2 < ((v0 - 755) ^ 0x23AB211Cu)) << 32);
  STACK[0x548] = v5 - 2005945744;
  v4 -= 1025462788;
  v6 = v5 - 2005945744 > 0xFFFFFFFFE93A3CC3;
  v7 = v5 - 1623886420 > v4;
  if (v4 < 0x16C5C33C != v6)
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((79 * v7) ^ v0)))();
}

uint64_t sub_1008ECA64(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = ((*v8 & 0x7FFFFFFE | v8[623] & 0x80000000) >> v6) ^ v8[396];
  v8[623] = (v9 - ((2 * v9) & 0x2A9F359C) + a2) ^ *(a5 + 4 * (*v8 & 1));
  return (*(v7 + 8 * ((60191 * (LODWORD(STACK[0x3E4]) > 0x26F)) ^ v5)))();
}

uint64_t sub_1008ECCEC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = *(a1 + 4) ^ a2;
  *(v5 - 184) = v3;
  *(v5 - 176) = -1022166737 * ((((v5 - 184) | 0x3EDA9F3B) - ((v5 - 184) & 0x3EDA9F38)) ^ 0x84CA7EA9) + 368163111 * v6 - 303490038;
  *(v5 - 172) = 1022166737 * ((((v5 - 184) | 0x3EDA9F3B) - ((v5 - 184) & 0x3EDA9F38)) ^ 0x84CA7EA9) + 4640 + v4;
  (*(v2 + 8 * (v4 ^ 0xA1C6)))(v5 - 184);
  return (*(v2 + 8 * ((97 * (*(v5 - 168) == ((25 * (v4 ^ 0x6D28)) ^ 0x59440BE3))) ^ v4)))(a1);
}

uint64_t sub_1008ECE10@<X0>(int a1@<W8>)
{
  v4 = (((v3 ^ 0xC184108C) + 1048309620) ^ ((v3 ^ 0x2FCFF171) - 802156913) ^ (((((v1 - 371877068) ^ 0xE9D5B219) + 127775204) ^ v3) - 127805164)) + 501776349;
  v5 = (v4 ^ 0xEBE816A0) & (2 * (v4 & 0xCBED4735)) ^ v4 & 0xCBED4735;
  v6 = ((2 * (v4 ^ 0xFF7098E0)) ^ 0x693BBFAA) & (v4 ^ 0xFF7098E0) ^ (2 * (v4 ^ 0xFF7098E0)) & 0x349DDFD4;
  v7 = v6 ^ 0x14844055;
  v8 = (v6 ^ 0x20191D80) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0xD2777F54) & v7 ^ (4 * v7) & 0x349DDFD4;
  v10 = (v9 ^ 0x10155F50) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x24888081)) ^ 0x49DDFD50) & (v9 ^ 0x24888081) ^ (16 * (v9 ^ 0x24888081)) & 0x349DDFD0;
  v12 = v10 ^ 0x349DDFD5 ^ (v11 ^ 0x9DDD00) & (v10 << 8);
  v13 = v4 ^ (2 * ((v12 << 16) & 0x349D0000 ^ v12 ^ ((v12 << 16) ^ 0x5FD50000) & (((v11 ^ 0x34000285) << 8) & 0x349D0000 ^ (((v11 ^ 0x34000285) << 8) ^ 0x1DDF0000) & (v11 ^ 0x34000285) ^ 0x20000000)));
  if (v13 == -1946355461)
  {
    v14 = -371865840;
  }

  else
  {
    v14 = v13 ^ 0x62293F8E;
  }

  return (*(v2 + 8 * ((2010 * (v14 != a1)) ^ v1)))();
}

uint64_t sub_1008ED010(uint64_t a1, int a2)
{
  *v4 = (((v3 ^ 0xF59F850F) + 174095089) ^ ((v3 ^ 0xA840A7CF) + 1472157745) ^ (((v2 + 1845) ^ v3 ^ 0xE9F2C4C3) + 369997320)) - 1272091847;
  LODWORD(STACK[0xF34]) = *STACK[0xD90] - ((*STACK[0xD90] << ((v2 - 30) ^ 0xE9)) & a2) + v6;
  return (*(v7 + 8 * (v2 ^ (16 * (v5 ^ 1)))))();
}

uint64_t sub_1008EE790()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x485E)))(1028);
  v4 = *(v1 - 200);
  *(v1 - 216) = 0;
  return (*(v4 + 8 * (((v3 == 0) * ((v0 + 2002021588) & 0xBFBFF5FF ^ 0x3714E412)) ^ v0)))();
}

uint64_t sub_1008EE844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v5 + a2;
  v10 = v5 + a4;
  v11 = v5 - 1;
  *(v6 + v11) = *(v7 + v11) ^ *(a1 + v11) ^ (99 * v11) ^ *(v9 + 1) ^ 0x5F ^ *(v10 + 5647 * (v4 ^ 0x7001) - 28229);
  return (*(v8 + 8 * (((4 * (v11 == 0)) | (8 * (v11 == 0))) ^ v4)))();
}

uint64_t sub_1008EE98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  *(v31 - 144) = &a18;
  *(v31 - 136) = v30 + 1112314453 * ((((2 * (v31 - 144)) | 0x2ADB15D6) - (v31 - 144) - 359500523) ^ 0xFA3BA032) + 13830;
  *(v31 - 112) = a13;
  *(v31 - 104) = v29;
  *(v31 - 128) = &a18;
  *(v31 - 120) = &a28;
  v32 = (*(v28 + 8 * (v30 ^ 0x99A1)))(v31 - 144);
  return (*(v28 + 8 * v30))(v32);
}

uint64_t sub_1008EEA1C()
{
  v4 = *(v1 + 4 * (v2 - 897801921));
  v5 = 1566083941 * (((v4 ^ (v4 >> 30) ^ 0xBDDDE330) - 995934303) ^ ((v4 ^ (v4 >> 30) ^ 0x16627283) + 1864150548) ^ ((v4 ^ (v4 >> 30) ^ 0xABBF91B3) - 759083740)) - 86136554;
  v6 = (v5 ^ 0xA07A14A5) & (2 * (v5 & 0xB57A96B5)) ^ v5 & 0xB57A96B5;
  v7 = ((2 * (v5 ^ 0x8ACF1CA7)) ^ 0x7F6B1424) & (v5 ^ 0x8ACF1CA7) ^ (2 * (v5 ^ 0x8ACF1CA7)) & 0x3FB58A12;
  v8 = v7 ^ 0x948A12;
  v9 = (v7 ^ 0x3F200000) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0xFED62848) & v8 ^ (4 * v8) & 0x3FB58A10;
  v11 = (v10 ^ 0x3E940800) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x1218212)) ^ 0xFB58A120) & (v10 ^ 0x1218212) ^ (16 * (v10 ^ 0x1218212)) & 0x3FB58A00;
  v13 = v11 ^ 0x3FB58A12 ^ (v12 ^ 0x3B108000) & (v11 << 8);
  v14 = v5 ^ *(v1 + 4 * (v2 - 897801920)) ^ (2 * ((v13 << 16) & 0x3FB50000 ^ v13 ^ ((v13 << 16) ^ 0xA120000) & (((v12 ^ 0x4A50A12) << 8) & 0x3FB50000 ^ 0xA350000 ^ (((v12 ^ 0x4A50A12) << 8) ^ 0x358A0000) & (v12 ^ 0x4A50A12))));
  *(v1 + 4 * (v2 - 897801920)) = (((v14 ^ 0x2CE7B176) - 1570970092) ^ ((v14 ^ 0x4642129F) - 923187717) ^ ((v14 ^ 0xB4942178) + 976188958)) - v2 - 453474101;
  v15 = 906386353 * STACK[0x380];
  *(v3 - 176) = v15 + 800714566;
  *(v3 - 172) = v15 ^ 0x59E0C029;
  *(v3 - 180) = v15 + 1507906308;
  *(v3 - 200) = v15 | 1;
  *(v3 - 208) = 3742724540u - v15;
  *(v3 - 192) = (v2 - 1450044675) ^ v15;
  *(v3 - 216) = v15 ^ 0x59E0C013;
  v16 = (*(v0 + 415792))(v3 - 216);
  return (*(v0 + 8 * *(v3 - 184)))(v16);
}

uint64_t sub_1008EECEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, int a8)
{
  STACK[0x388] = v11 - 1;
  *(a1 + v11 - 1) = (v10 ^ ((v10 ^ 0x7E) - 81) ^ ((v10 ^ 0xF6) + 39) ^ ((v10 ^ 0x7C) - 83) ^ 0x95 ^ ((((a7 & 0xBD) - 82) ^ v10) + 12)) * (v10 - 30);
  return (*(v9 + 8 * ((2771 * (STACK[0x388] > v8)) ^ a8)))();
}

uint64_t sub_1008EEE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, int a52, int a53, int a54, int a55)
{
  v63 = v55 - (LODWORD(STACK[0x204]) ^ v57) - 996156254;
  v64 = LODWORD(STACK[0x358]) ^ (a55 - ((2 * a55) & 0xFFC19D7E) + 2145439423) ^ 0x7FE0CEBF ^ (v58 - 1841997347);
  v65 = (a51 ^ 0x3F86CC16) + 720135237 + v61;
  LODWORD(STACK[0x358]) = -443549707 * v65;
  v66 = (-1610612736 * v64) | ((1812504933 * v64) >> 3);
  HIDWORD(v68) = v65;
  LODWORD(v68) = 2098808793 * v65;
  v67 = v68 >> 3;
  v69 = (880050176 * ((a54 ^ v56) - 371450008 + v59)) | ((443574505 * ((a54 ^ v56) - 371450008 + v59)) >> 17);
  v70 = (-1466753333 * v67) >> 12;
  HIDWORD(v68) = (((365078144 * v63) | ((-970226355 * v63) >> 25)) + v67 + v66) ^ v69;
  LODWORD(v68) = 1227868065 * HIDWORD(v68);
  v71 = v68 >> 1;
  v72 = (-1002045440 * v69) | ((135193123 * v69) >> 15);
  v73 = (-324009984 * v67) | v70;
  v74 = (v73 + 309409344 * v66 + ((1145685209 * v66) >> 26) + v71) ^ v72;
  v75 = (-248634112 * v71) | ((32583205 * v71) >> 24);
  HIDWORD(v68) = 292331645 * v74;
  LODWORD(v68) = 292331645 * v74;
  v76 = v68 >> 31;
  v77 = (1364770442 * v72) | ((-1465098427 * v72) >> 31);
  v78 = ((38381403 * v73) >> 2) - (v70 << 30) - v77 - v75 - v76;
  v79 = (545533857 * v76) >> 15;
  v80 = (-2046820352 * v75) | ((-2060049597 * v75) >> 7);
  v81 = (1598160896 * v76) | v79;
  v82 = (-1879048192 * v78) | ((250850985 * v78) >> 4);
  v83 = (((1857984512 * v77) | ((831379411 * v77) >> 21)) ^ v80 ^ 0x47DC671 ^ (v81 - 2 * (v81 & 0x47DC677 ^ v79 & 6) + 75351665)) - v82;
  v84 = v83 ^ (((v80 - v81) ^ 0x75A2BFD7) + v82 - 1943754602);
  v85 = v82 - 1428542163 * v84;
  v86 = 1428542163 * v84 + v81;
  v87 = (-235106560 * v86) | ((485620879 * v86) >> 24);
  LODWORD(STACK[0x250]) = v85;
  HIDWORD(v68) = v85;
  LODWORD(v68) = 1360651105 * v85;
  v88 = v68 >> 2;
  HIDWORD(v68) = (1428542163 * v84) ^ v83;
  LODWORD(v68) = 408419095 * (((HIDWORD(v68) ^ 0x904DC87A) + 1252634383) ^ ((HIDWORD(v68) ^ 0x70DFA413) - 1438923928) ^ ((HIDWORD(v68) ^ 0xE0926C69) + 980814622)) + 1128791421;
  v89 = v68 >> 1;
  v90 = v89 ^ (((-2085061632 * v84) | ((807464479 * v84) >> 22)) - v88 + v87);
  v91 = (-1437077504 * v90) | ((1808442751 * v90) >> 20);
  HIDWORD(v68) = (485620879 * v86) >> 24;
  LODWORD(v68) = -863594803 * v87;
  v92 = (536746496 * v89) | ((-560988403 * v89) >> 23);
  v93 = (-1336738048 * v88) | ((-1632611585 * v88) >> 24);
  v94 = (v91 ^ (v68 >> 1)) - v93;
  v95 = (-948846592 * v91) | ((-1904534073 * v91) >> 18);
  v96 = (1974312960 * (v94 ^ v92)) | ((1322495341 * (v94 ^ v92)) >> 19);
  v97 = (-519658296 * v92) | ((1008784537 * v92) >> 29);
  v98 = (v96 ^ (((1973944320 * v93) | ((-898806091 * v93) >> 13)) - v95)) - v97;
  v99 = (1657574912 * v95) | ((-1909365173 * v95) >> 23);
  v100 = (-508622678 * v96) | ((-254311339 * v96) >> 31);
  v101 = (-1610612736 * v98) | ((-222749987 * v98) >> 3);
  v102 = v100 + (v99 ^ ((-1596464896 * v97) | ((-1650403359 * v97) >> 24)));
  v103 = ((1117866791 * ((v100 ^ v99) - v101) - 1446594078) ^ (v102 + v101)) + 1036575119;
  v104 = ((v101 - v103) ^ 0x19B7D8FF) - 10616849 + ((2 * (v101 - v103)) & 0x336FB1FE);
  v146 = v102 + v101;
  v105 = (-311787520 * (v100 - v103)) | ((-794043691 * (v100 - v103)) >> 17);
  v106 = ((720607744 * v104) | ((-1105888819 * v104 + 645057386) >> 23)) - 443100160;
  v107 = (1568447488 * (v103 ^ v146)) | ((1633115943 * (v103 ^ v146)) >> 22);
  v108 = (v105 ^ (((-1218275009 * v103) >> 2) - (v103 << 30))) - v106 + v107;
  v109 = (-280339945 * v108) >> 4;
  v110 = (1879048192 * v108) | v109;
  v111 = (-5514240 * v106) | ((1245702903 * v106) >> 22);
  v112 = -492209379 * v110;
  v113 = (-655057772 * v107) | ((-163764443 * v107) >> 30);
  v114 = ((v110 ^ ((1843396608 * v105) | ((348808047 * v105) >> 11))) + v111) ^ v113;
  v115 = (-1610612736 * v109) | (v112 >> 3);
  v116 = (-906369984 * v114) | ((-886577263 * v114) >> 26);
  v117 = (-2107006647 * v113) >> 18;
  v118 = (1750220800 * v113) | v117;
  v119 = (v118 - 2 * (v118 & 0x2C0ECF3D ^ v117 & 0x10) + 739168045) ^ (((809500672 * v111) | ((-651005759 * v111) >> 10)) + v115) ^ 0x2C0ECF2D ^ v116;
  v120 = (63926656 * v115) | ((1376231139 * v115) >> 25);
  v121 = (-965032288 * v116) | ((775149109 * v116) >> 27);
  HIDWORD(v68) = 743030695 * v119;
  LODWORD(v68) = 743030695 * v119;
  v122 = v68 >> 31;
  v123 = v122 + (v121 ^ (((-290717696 * v118) | ((-1621591125 * v118) >> 14)) + v120));
  v124 = (((239618833 * (v121 + v120)) ^ v122) + 1530493549) ^ v123;
  v125 = v124 ^ 0x89DD8F3E ^ v122;
  v126 = (-2054094848 * (v121 - (v124 ^ 0x89DD8F3E))) | ((-557939311 * (v121 - (v124 ^ 0x89DD8F3E))) >> 16);
  LODWORD(STACK[0x208]) = v125;
  v127 = (-716046336 * v125) | ((-1897764183 * v125) >> 15);
  v128 = (v124 ^ 0x89DD8F3E) + v123;
  v129 = -1971468227 * v128;
  v130 = (-467763200 * v128) | ((-1971468227 * v128) >> 17);
  v131 = (((1374803648 * (v124 ^ 0x89DD8F3E)) | ((-381171877 * (v124 ^ 0x89DD8F3E)) >> 26)) - v126 - v127) ^ v130;
  v132 = -1108425361 * v131;
  HIDWORD(v68) = (-1897764183 * v125) >> 15;
  LODWORD(v68) = 70458257 * v127;
  v133 = v68 >> 4;
  v134 = (-1319387136 * v131) | ((-1108425361 * v131) >> 18);
  v135 = ((1619001344 * v126) | ((-1965693247 * v126) >> 9)) ^ v134 ^ 0xF5B5BF32 ^ (v133 - ((2 * v133) & 0xEB6B7E64) - 172638414);
  v136 = ((1039342097 * v130) >> 7) | (570425344 * (v129 >> 17));
  v134 *= -1821246073;
  v137 = (-293109248 * (v135 - v136)) | ((-478723135 * (v135 - v136)) >> 23);
  v138 = (1124073472 * v136) | ((-843530173 * v136) >> 8);
  v139 = (1879048192 * (v132 >> 18)) | (v134 >> 4);
  v140 = ((2146429952 * v133) | ((1419770875 * v133) >> 22)) - v138 + v139 - v137;
  v141 = (1593835520 * v137) | ((-247964065 * v137) >> 8);
  v142 = (1374263296 * v140) | ((-901104333 * v140) >> 21);
  v143 = (((810315269 * v139) >> 8) | (83886080 * (v134 >> 4))) ^ v141;
  v144 = -1319797735 * (v143 ^ ((808096832 * v138) | ((2025892433 * v138) >> 26)) ^ v142 ^ (v142 + (v143 ^ 0x1CD11060)) ^ 0x6A4CF12F);
  LODWORD(STACK[0x27C]) = v100 - v103;
  LODWORD(STACK[0x278]) = v141 - v144;
  LODWORD(STACK[0x3A0]) = v144 ^ v142;
  return (*(v62 + 8 * (v60 + 21286)))(10816, 3723075148, 12446);
}

uint64_t sub_1008EFA2C@<X0>(int a1@<W8>)
{
  v2 = (LODWORD(STACK[0x31C]) | 0x318C) - 371878639 + (((a1 ^ 0xA2D110DA) + 1563356966) ^ ((a1 ^ 0xAB9B45BD) + 1415887427) ^ ((a1 ^ LODWORD(STACK[0x318])) + 526413194)) < 0xFFFFFFFC;
  LOBYTE(STACK[0x253B]) = v2;
  return (*(v1 + 8 * ((5356 * v2) ^ 0x2A1Au)))();
}

uint64_t sub_1008EFC6C@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 256) = a1;
  *(v4 - 248) = v1 + 353670337 * ((~v2 & 0x80C7A644 | v2 & 0x7F3859B8) ^ 0x34E65E79) - 1527258944;
  v5 = (*(v3 + 8 * (v1 ^ 0x4D24EA20)))(v4 - 256);
  LODWORD(STACK[0x149C]) = 1987699756;
  LODWORD(STACK[0x1854]) = 1050675550;
  STACK[0x1338] = &STACK[0x2078];
  STACK[0xBC0] = 0;
  LODWORD(STACK[0xD6C]) = 656994246;
  LODWORD(STACK[0x1F50]) = 1023680488;
  return (*(v3 + 8 * (v1 ^ 0x4D240FE0 ^ (29635 * (v1 >= ((v1 - 1294166792) ^ 0x6EFAC116))))))(v5);
}

uint64_t sub_1008EFD58(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v10 = 23958;
  atomic_compare_exchange_strong((*(v8 + 8 * (v9 - 361)) + v4), &v10, v5);
  return (*(v6 + 8 * (((v10 == a4) * v7) ^ (v9 + 3373))))();
}

uint64_t sub_1008EFEC8(__int128 *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *a1;
  v12 = (a4 + v9);
  *v12 = *(a1 - 1);
  v12[1] = v11;
  return (*(a8 + 8 * (((v10 == 0) * a2) ^ v8)))(a1 + 2);
}

uint64_t sub_1008EFF30@<X0>(int a1@<W0>, int a2@<W8>)
{
  v6 = (((a2 ^ 0x95C1DED0) - 1152398560) ^ ((a2 ^ 0xCBA64A43) - 450338931) ^ ((a2 ^ 0x66C3B9B2) + 1213049982)) + (((v4 ^ 0x9394D42D) + 1818962899) ^ ((v4 ^ 0x1B486D7E) - 457731454) ^ ((v4 ^ 0x61097E42) - 1414990417 + ((v2 - 20516) | 0x8201) - 213062194)) - 5279593;
  v7 = ((v6 ^ 0xB30F443E) + 1626560949) ^ v6 ^ ((v6 ^ 0xF0B739BC) + 592127031) ^ ((v6 ^ 0x9064600E) + 1134067077) ^ ((v6 ^ 0xFFDFFFF9) + 740549236);
  v8 = (((v7 ^ 0xF39988F5) - 911191441) ^ ((v7 ^ 0x331EF33E) + 154610086) ^ ((v7 ^ 0xEC8499BE) - 693288154)) + 170158487;
  v9 = (((*(v3 + 12) ^ 0x647E0D67) - 1685982567) ^ ((*(v3 + 12) ^ 0x81D65C27) + 2116658137) ^ ((*(v3 + 12) ^ 0xC7D9651) - 209557073)) + 170158487;
  v10 = v8 < 0x204EA286;
  v11 = v8 > v9;
  v12 = (v9 < 0x204EA286) ^ v10;
  v13 = v11;
  if (v12)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  return (*(v5 + 8 * ((v14 * a1) ^ (v2 - 20548))))();
}

uint64_t sub_1008F01D0@<X0>(int a1@<W2>, uint64_t a2@<X5>, unsigned int a3@<W8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>, int8x16_t a6@<Q4>, int32x4_t a7@<Q5>)
{
  a5.i64[0] = *(v10 + 4);
  a5.i32[2] = *(v10 + 12);
  v14 = vextq_s8(a4, a5, 0xCuLL);
  a5.i32[3] = *(v9 + 16);
  v15 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(a5, v13), vandq_s8(v14, v12)), 1uLL), *(v10 - 908));
  v16.i32[0] = *(a2 + 4 * (*(v10 + 4) & 1));
  v16.i32[1] = *(a2 + 4 * (a5.i32[1] & v7));
  v16.i32[2] = *(a2 + 4 * (a5.i8[8] & 1));
  v16.i32[3] = *(a2 + 4 * (a5.i8[12] & 1));
  *v10 = veorq_s8(vaddq_s32(vsubq_s32(v15, vandq_s8(vaddq_s32(v15, v15), a6)), a7), v16);
  return (*(v11 + 8 * (((v8 == 0) * a1) ^ a3)))(a5);
}

uint64_t sub_1008F02BC@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W8>)
{
  v11 = v8 + (LODWORD(STACK[0x3A4]) ^ LODWORD(STACK[0x3A8]) ^ v4 ^ v6) * v7;
  *(*(v10 - 256) + 4 * v4) = LODWORD(STACK[0x380]) ^ LODWORD(STACK[0x384]) ^ *(v10 - 152) ^ LODWORD(STACK[0x3C8]) ^ LODWORD(STACK[0x36C]) ^ LODWORD(STACK[0x33C]) ^ LODWORD(STACK[0x3C4]) ^ a2 ^ *(STACK[0x448] + 4 * (v11 - (((v11 >> 6) * v9) >> 32) * a1));
  return (*(*(v10 - 216) + 8 * (((v5 != 0) * a3) ^ v3)))();
}

uint64_t sub_1008F035C()
{
  v3 = *(STACK[0xCD8] + 272);
  *(v2 - 224) = &STACK[0x1574];
  *(v2 - 256) = v0 - 1012831759 * ((v2 - 256 - 2 * ((v2 - 256) & 0xB8B7C60) - 1953792927) ^ 0x9B186AEB) + 7455;
  *(v2 - 248) = v3;
  *(v2 - 232) = &STACK[0x1F28];
  v4 = (*(v1 + 8 * (v0 + 22494)))(v2 - 256);
  return (*(v1 + 8 * ((2350 * (*(v2 - 240) == ((v0 + 1393589225) & 0xACEF3AF5 ^ ((v0 ^ 0xFF8D) - 371892147)))) ^ v0)))(v4);
}

uint64_t sub_1008F0434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, unsigned int a26)
{
  v29 = a26 < 0xE77B7C4;
  if (v29 == (v27 - 1884120589) < 0xE77B7C4)
  {
    v29 = a26 > v27 - 1884120589;
  }

  return (*(v28 + 8 * ((37854 * v29) ^ v26)))();
}

uint64_t sub_1008F0558(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = v8[396] ^ (((((v6 + 1144123566) | 0x8881A40) + ((v6 + 1287260910) ^ 0x7FFFFFFC)) & v8[623] | *v8 & 0x7FFFFFFEu) >> 1);
  v8[623] = (v9 - ((2 * v9) & 0x8936F132) + a2) ^ *(a6 + 4 * (*v8 & 1));
  return (*(v7 + 8 * (v6 | (16 * (LODWORD(STACK[0x3CC]) > 0x26F)))))();
}

uint64_t sub_1008F0714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unint64_t a31, uint64_t a32, unint64_t a33)
{
  STACK[0x408] = 0;
  LODWORD(STACK[0x3E4]) = -371865839;
  STACK[0x440] = 0;
  LODWORD(STACK[0x42C]) = -371865839;
  STACK[0x490] = 0;
  STACK[0x430] = a33;
  STACK[0x410] = a31;
  return (*(v34 + 8 * (v33 - 1325)))();
}

uint64_t sub_1008F081C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *v4;
  *(a1 + 4) = *(v4 + 4);
  *(a1 + 5) = *(v4 + 5);
  return (*(v5 + 8 * v3))(0xAA9DDABAE2E4D47CLL, 0x8FB22143FEDB6CB3, a3, 0xBD7D2DE9C10AA16ALL);
}

uint64_t sub_1008F08BC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  STACK[0x500] = a2;
  STACK[0xE98] = *(v20 + 32);
  STACK[0xE90] = *(v20 + 40);
  v23 = (v21 + 1610890463) & 0x9FFBAD75;
  STACK[0xE88] = *(v20 + 48);
  v24 = *(v22 + 8 * (((v23 + ((v21 - 39319) | 0x5894) - 57021) * *(*(a6 + 8 * (v21 ^ 0x8AA8)) - 1142507446)) ^ v21));
  v25 = *(a6 + 8 * (v21 ^ 0x9081)) - 1518758679;
  v26 = *(a6 + 8 * (v21 - 35948)) - 1298229866;
  v27 = *(a6 + 8 * (v21 - 36272)) - 1167017422;
  STACK[0xD90] = *(a6 + 8 * (v21 - 35064)) - 1152498518;
  return v24(v23, a2, a3, a4, v26, a6, v27, v25, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1008F0C30()
{
  v4 = (((*(v1 + 16) ^ 0xCF26B3D8) + ((2 * v2) ^ 0xAB1D59E0)) ^ ((*(v1 + 16) ^ 0x7E30811F) + 436932125) ^ ((*(v1 + 16) ^ 0x4EE9CD38) + 718422588)) - 390192871;
  v5 = v0 + 640373491 > v4;
  v6 = ((v0 + 640373491) < 0x84829216) ^ (v4 < 0x84829216);
  v7 = v5;
  if (v6)
  {
    v8 = (v0 + 640373491) < 0x84829216;
  }

  else
  {
    v8 = v7;
  }

  return (*(v3 + 8 * ((59 * v8) ^ v2)))();
}

uint64_t sub_1008F0E58()
{
  v3 = (*(v2 + 8 * (v1 ^ 0xD998)))(v0);
  v4 = (*(v2 + 8 * (v1 ^ 0xDED9)))(v3);
  v5 = (*(v2 + 8 * (v1 ^ 0xDE72)))(v4);
  return (*(v2 + 8 * v1))(v5);
}

uint64_t sub_1008F0EA4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + v4 + 16);
  v8 = (a4 + (a2 + v4));
  *v8 = *(a3 + v4);
  v8[1] = v7;
  return (*(v6 + 8 * ((7 * (a1 == v4)) ^ v5)))();
}

uint64_t sub_1008F0EDC()
{
  v5 = v0 + 431052;
  v6 = (v0 - 2064143619) & 0x7B0EF5CF;
  v7 = *(v1 + v3);
  v8 = (((*(v1 - 0x217E172EFA1E804) ^ 0x12976E2C) - 311914028) ^ ((v5 ^ 0x3301) + (*(v1 - 0x217E172EFA1E804) ^ 0xCA268D46) + 903401967) ^ ((v6 ^ *(v1 - 0x217E172EFA1E804) ^ 0x316484B0) - 828646523)) - 54746966;
  v9 = 634647737 * ((v4 - 152 - 2 * ((v4 - 152) & 0x454DA330) - 984767696) ^ 0xA8DB8CCC);
  *(v4 - 112) = v1 - 0x217E172EFA1E800;
  *(v4 - 152) = v8 ^ v9;
  *(v4 - 136) = v4 - 172;
  *(v4 - 128) = v7;
  *(v4 - 120) = v5 - v9 + 1943;
  *(v4 - 144) = v4 - 176;
  v10 = (*(v2 + 8 * (v5 ^ 0x590E)))(v4 - 152);
  return (*(v2 + 8 * (v5 | (16 * (*(v4 - 104) != -371865839)))))(v10);
}

uint64_t sub_1008F10B0()
{
  v3 = *(v2 - 24 + ((v0 + 987757704) ^ 0x3CE25E0EC5200378) - *(v2 - 16));
  v4 = v0 | ((v0 ^ 0xF9C25D76) << 32);
  return (*(v1 + 8 * ((221 * ((((((v3 - v4) | (v4 - v3)) >> 63) ^ (v0 - 1785037689)) & 1) == 0)) ^ (v0 + 987768581))))();
}

uint64_t sub_1008F11A0@<X0>(uint64_t a1@<X8>)
{
  *v1 = v3;
  v5 = *(a1 + 8);
  v6 = v5 - 0x3CE25E0EC5200378;
  if (v5 - 0x3CE25E0EC5200378 < 0)
  {
    v6 = v5 - 0x3CE25E0EC5200375;
  }

  v7 = ((*(&STACK[0x454] + (STACK[0x454] & 3)) ^ 0x98u) % (((v6 >> 2) + ((v2 - 520788642) & 0x1F0A8144 ^ 0xA7A956B) - ((2 * (v6 >> 2)) & 0x14F52AB8) + ((v2 + 26791) ^ 0xFFFF7DF5)) ^ 0xA7A955C) + 43) & 0x1FC;
  v8 = ((v5 ^ 0x5286AE7E) + 1750684410) ^ v5 ^ ((v5 ^ 0xD9FD3FAC) - 484261076) ^ ((v5 ^ 0xB4846F7D) - 1906600965) ^ ((v5 ^ 0xFADFFDD7) - 1073741487);
  return (*(v4 + 8 * ((20457 * ((((v8 ^ 0x1771B701) + 1047232766) ^ ((v8 ^ 0x17565C47) + 1045195708) ^ ((v8 ^ 0xC507E83E) - 333586493)) - (((v7 ^ 0xAF724D00) - 872350720) ^ ((v7 ^ 0x8B705A72) - 402461554) ^ ((v7 ^ 0x24021772) + 1198563726)) + 2000192098 < 0x7FFFFFFF)) ^ v2)))();
}

uint64_t sub_1008F1418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, char a34)
{
  v37 = *(&off_1010A0B50 + (v35 ^ 0x78EE)) - 387802043;
  v38 = *&v37[v34 + 16];
  v39 = &a34 + v34;
  *v39 = *&v37[v34];
  *(v39 + 1) = v38;
  return (*(v36 + 8 * ((50 * (v34 != 192)) ^ v35)))();
}

uint64_t sub_1008F1474@<X0>(int a1@<W8>)
{
  v4 = (v1 ^ 0xBF7DEE6FCDFEBBEBLL) + 0x4082119032014415 + ((2 * v1) & 0x19BFD77D6);
  v5 = STACK[0x19F0];
  v6 = STACK[0x1288];
  v6[15] = *(STACK[0x19F0] + v4 + 15);
  v6[14] = *(v5 + v4 + 14);
  v6[13] = *(v5 + v4 + 13);
  v6[12] = *(v5 + v4 + 12);
  v6[11] = *(v5 + v4 + 11);
  v6[10] = *(v5 + v4 + 10);
  v6[9] = *(v5 + v4 + 9);
  v6[8] = *(v5 + v4 + 8);
  v6[7] = *(v5 + v4 + 7);
  v6[6] = *(v5 + v4 + 6);
  v6[5] = *(v5 + v4 + 5);
  v6[4] = *(v5 + v4 + 4);
  v6[3] = *(v5 + v4 + 3);
  v6[2] = *(v5 + v4 + 2);
  v6[1] = *(v5 + v4 + 1);
  *v6 = *(v5 + v4);
  LODWORD(STACK[0x1D9C]) = a1 + 20;
  v7 = ((a1 + LODWORD(STACK[0x1A6C]) + 1479227558) | (((a1 + LODWORD(STACK[0x1A6C]) + 1479227558) < 0xED0B152A) << 32)) - 2409466803u;
  v8 = STACK[0x17B0] - 0x61E4F89B0038DE74;
  v9 = v7 < 0x5D6D8973;
  v10 = v7 > v8;
  if (v8 < 0x5D6D8973 != v9)
  {
    v10 = v9;
  }

  if (v10)
  {
    v11 = 371891407;
  }

  else
  {
    v11 = STACK[0x2434];
  }

  LODWORD(STACK[0x15B4]) = v11;
  LOBYTE(STACK[0x1223]) = v11 == v2;
  return (*(v3 + 8 * (((4 * (v11 != v2)) | (8 * (v11 != v2))) ^ 0x44E6u)))();
}

uint64_t sub_1008F1634()
{
  v3 = 3 * (v0 ^ 0xDA16u);
  STACK[0xC88] = v2 ^ 0xBB6EEF716CE8A42CLL;
  v4 = STACK[0xDC0] & 1;
  STACK[0xE88] = v3;
  return (*(v1 + 8 * (((v3 - 20772) * v4) ^ v0)))();
}

uint64_t sub_1008F1680()
{
  v4 = STACK[0xF30];
  v5 = 906386353 * ((((v1 | 0xD5860910) ^ 0xFFFFFFFE) - (~v1 | 0x2A79F6EF)) ^ 0x1B783BCB);
  v6 = LODWORD(STACK[0x35C]) ^ v5;
  *(v3 - 248) = &STACK[0x15BC];
  *(v3 - 240) = v4;
  *(v3 - 256) = -1135722494 - v5;
  *(v3 - 252) = v6;
  *(v3 - 224) = 776646616 - v5;
  *(v3 - 232) = 1625534992 - v5;
  v7 = (*(v2 + 8 * LODWORD(STACK[0x358])))(v3 - 256);
  return (*(v2 + 8 * (((*(v3 - 228) == 133690028) * (v0 ^ 0xDD31)) ^ 0x4AE7)))(v7);
}

uint64_t sub_1008F1748@<X0>(uint64_t a1@<X8>)
{
  *(v5 - 256) = (v1 - 1650505768) ^ (155453101 * (((v3 | 0xA86E438B) - (v3 & 0xA86E4388)) ^ 0x4E485844));
  *(v5 - 248) = a1;
  v6 = (*(v4 + 8 * (v1 ^ 0x62601A8E)))(v5 - 256);
  *(v2 + 344) = 0;
  return (*(v4 + 8 * (v1 - 1650493521)))(v6);
}

uint64_t sub_1008F1830(int a1, double a2, __n128 a3, __n128 a4)
{
  a3.n128_u16[0] = 25957;
  a3.n128_u8[2] = 101;
  a3.n128_u8[3] = 101;
  a3.n128_u8[4] = 101;
  a3.n128_u8[5] = 101;
  a3.n128_u8[6] = 101;
  a3.n128_u8[7] = 101;
  a4.n128_u16[0] = 24415;
  a4.n128_u8[2] = 95;
  a4.n128_u8[3] = 95;
  a4.n128_u8[4] = 95;
  a4.n128_u8[5] = 95;
  a4.n128_u8[6] = 95;
  a4.n128_u8[7] = 95;
  return (*(v4 + 8 * a1))(xmmword_100F523B0, a3, a4);
}

uint64_t sub_1008F1978()
{
  v4 = (v1 ^ 0xEFF7BDF7DD75FDD6) + 0x749A7F9FFFEE9AFELL + ((2 * v1) & 0x1BAEBFBACLL);
  v3[199] = v4;
  v5 = v3[74];
  v3[200] = v5;
  return (*(v2 + 8 * (((v4 - v5 - 0x3C0F873F812080D9 < 0xFFFFFFFFFFFFFFF6) * ((19 * (v0 ^ 0x45FF)) ^ 0x66A)) ^ v0)))();
}

uint64_t sub_1008F1A74@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v57 = LODWORD(STACK[0x3CC])++;
  *(STACK[0x3A0] - 775311879) = v57 + 1;
  v58 = *(v54 + v55);
  *(v56 - 200) = 906386353 * a52 + 1;
  *(v56 - 216) = (a1 + 717461237) ^ (906386353 * a52);
  *(v56 - 192) = (906386353 * a52) ^ v52;
  *(v56 - 208) = v58 - 906386353 * a52;
  *(v56 - 180) = 906386353 * a52 + a1 + 717461237 - 3498;
  *(v56 - 176) = 906386353 * a52 + a1 - 486567692;
  *(v56 - 172) = (a1 + 717461252) ^ (906386353 * a52);
  v59 = (*(v53 + 8 * (a1 - 1287230284)))(v56 - 216);
  return (*(v53 + 8 * *(v56 - 184)))(v59);
}

uint64_t sub_1008F1BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v38 = veorq_s8(**(v34 + 8), xmmword_100F53000);
  *(v36 - 128) = veorq_s8(**(v34 + 32), xmmword_100F52FF0);
  *(v36 - 112) = v38;
  return (*(v37 + 8 * (v33 ^ (32640 * (v35 == 0)))))(a1, a2, a3, a4, a5, a6, a7, a8, v34, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_1008F1D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  LODWORD(a45) = 0;
  LODWORD(a51) = v53 ^ 0xFDCFDF8A;
  LODWORD(a48) = (((v52 ^ 0xAB05BAFB) + 154695694) ^ ((v52 ^ 0xF3328BF9) + 1359956240) ^ ((v53 ^ 0x723C2E06) + (v52 ^ 0x2DCE178A))) + 1923304590;
  LODWORD(a50) = v51[12];
  return (*(v54 + 8 * (v53 ^ 0xFDCF6AD8)))(v51[8], *v51, v51[3], a4, a5, v51[4], a7, v51[14], a9, a10, a11, a12, a13, &STACK[0x290], v51[12], v51[12], v51[12], v51[12], v51[12], v51[12], v51[12], v51[12], v51[12], v51[12], v51[12], v51[12], v51[12], v51[12], v51[12], v51[12], a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a4);
}

uint64_t sub_1008F1EAC()
{
  v5 = 1112314453 * ((-2 - ((~v2 | 0x1A94C87B) + (v2 | 0xE56B3784))) ^ 0xF5C2E2A2);
  LOWORD(STACK[0x2F44]) = 28827 - v5;
  *(v4 - 256) = v1 - v5 + 25294;
  *(v4 - 248) = v0;
  v6 = (*(v3 + 8 * (v1 ^ 0xC505)))(v4 - 256);
  *v0 = ((*v0 % 9u) ^ 0x7B) + ((2 * (*v0 % 9u)) & 0x16) - 116;
  STACK[0x13E8] = *(v3 + 8 * v1);
  return (*(v3 + 8 * ((((2 * v1) ^ 0xBD40) - 18784) ^ v1)))(v6);
}

uint64_t sub_1008F252C()
{
  v4 = STACK[0x1D60];
  v5 = 155453101 * (((v1 | 0x26E0C140) - (v1 & 0x26E0C140)) ^ 0xC0C6DA8F);
  *(v3 - 248) = STACK[0x848];
  *(v3 - 236) = 43706 - v5;
  *(v3 - 216) = v5 ^ 0x5AF81C38;
  *(v3 - 256) = v5 ^ 0xE50053FB;
  *(v3 - 252) = 980380847 - v5;
  *(v3 - 232) = &STACK[0x1194];
  *(v3 - 224) = v4;
  v6 = (*(v2 + 416776))(v3 - 256);
  v7 = *(v3 - 240);
  LODWORD(STACK[0x1CE4]) = v7;
  return (*(v2 + 8 * ((45865 * (v7 == v0)) ^ 0x7363u)))(v6);
}

uint64_t sub_1008F25F8@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v19 = ((v9 ^ LODWORD(STACK[0x338])) ^ v11) * v12;
  v20 = *(STACK[0x448] + 4 * (v19 - (((v19 * v13) >> 32) >> 1) * v14));
  *(v18 + 4 * v9) = LODWORD(STACK[0x394]) ^ LODWORD(STACK[0x398]) ^ a8 ^ (a7 + ((a1 + (v20 ^ v15)) ^ ((v20 ^ a2) + a3) ^ ((v20 ^ a4) + a5)) * a6);
  return (*(v16 + 8 * (((v10 == 0) * v17) ^ a9)))();
}

uint64_t sub_1008F26F4()
{
  *(v5 - 256) = *(v0 + v3 * v1 + 8);
  *(v5 - 248) = v2 + 155453101 * ((((v5 - 256) | 0xB9AEDAA4) - ((v5 - 256) | 0x4651255B) + 1179723099) ^ 0x5F88C16B) + 296768159;
  v6 = (*(v4 + 8 * (v2 ^ 0x9AA1)))(v5 - 256);
  return (*(v4 + 8 * v2))(v6);
}

uint64_t sub_1008F27E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19)
{
  v21 = a19 + 1068605369 + (((*(v20 + 16) ^ 0x8EEBF0B7) + 1897140041) ^ ((*(v20 + 16) ^ 0xFE2367C4) + 31234108) ^ (((((a7 + 31294) | 0x4148) - 1726183302) ^ *(v20 + 16)) + 1726132126));
  LODWORD(STACK[0x374]) = v21 ^ ((v21 ^ 0x861057F1) + 788813713) ^ ((v21 ^ 0x4CA11D56) - 441115336) ^ ((v21 ^ 0xF9A54CC6) + 1353796776) ^ ((v21 ^ 0x65FFF9FF) - 856950369) ^ 0xBF3E388F;
  return (*(v19 + 8 * (a7 ^ 0x7AA3)))(a1, a2, a3, a4, a5, a6, 0);
}

uint64_t sub_1008F2A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v24 = v8 - 1;
  v25 = (v9 + v10 + v24);
  v26 = ((v25 ^ *(*v23 + (*v21 & v20))) & 0x7FFFFFFF) * v19;
  v27 = (v26 ^ HIWORD(v26)) * ((v13 | a6) + a7);
  *v25 = *(v11 + v24) ^ *(v17 + (v27 >> 24)) ^ *((v27 >> 24) + v18 + 3) ^ *((v27 >> 24) + v16 + 1) ^ v27 ^ (BYTE3(v27) * v14) ^ v15;
  return (*(v22 + 8 * (((v24 == 0) * a8) ^ v12)))();
}

uint64_t sub_1008F2B3C@<X0>(int a1@<W8>)
{
  v6 = *(v5 - 152);
  LODWORD(STACK[0x35C]) = HIBYTE(v6);
  v7 = STACK[0x3C4];
  LODWORD(STACK[0x328]) = v6 ^ v3;
  v8 = v6 ^ v3 ^ v7;
  LODWORD(STACK[0x340]) = v8;
  LODWORD(STACK[0x338]) = v8 ^ 0x3784EB73;
  v9 = v6 ^ v7;
  LODWORD(STACK[0x32C]) = v9;
  LODWORD(STACK[0x330]) = v9 ^ 0x2FF727CC;
  v10 = STACK[0x3C0];
  v11 = LODWORD(STACK[0x3C0]) ^ LODWORD(STACK[0x430]);
  v12 = LODWORD(STACK[0x3C0]) + v2;
  v13 = STACK[0x418];
  LODWORD(STACK[0x358]) = HIBYTE(LODWORD(STACK[0x418]));
  LODWORD(STACK[0x350]) = v11;
  v14 = (-1778195680 * v10) | ((615520025 * v10) >> 27);
  HIDWORD(v16) = 1796554837 * v11;
  LODWORD(v16) = 1796554837 * v11;
  v15 = v16 >> 31;
  LODWORD(STACK[0x360]) = v12;
  v17 = (-1404567552 * v12) | ((-1307069047 * v12) >> 13);
  v18 = (178129920 * v13) | ((-1958566013 * v13) >> 22);
  v19 = (-1858076672 * ((v14 - v15 + v18) ^ v17)) | ((-1840798139 * ((v14 - v15 + v18) ^ v17)) >> 10);
  v20 = (1232013936 * v18) | ((-191434585 * v18) >> 28);
  v21 = (2036030208 * v17) | ((-1367778469 * v17) >> 24);
  v22 = ((-1461190656 * v15) | ((1139078429 * v15) >> 13)) - v21 - v20 - v19;
  v23 = (437931215 * v22) >> 6;
  v24 = (1006632960 * v22) | v23;
  v25 = (505055552 * v19) | ((-797414875 * v19) >> 26);
  HIDWORD(v16) = (-1792494697 * v25) ^ 0x2277BD5E;
  LODWORD(v16) = HIDWORD(v16);
  v26 = v16 >> 6;
  v27 = (-2138308608 * v21) | ((-985014237 * v21) >> 14);
  v28 = ((999039488 * v20) | ((-98712047 * v20) >> 23)) + v27 - v25 + v24;
  HIDWORD(v16) = v26 ^ 0x89DEF5;
  LODWORD(v16) = v26 ^ 0x78000000;
  HIDWORD(v16) = v16 >> 26;
  LODWORD(v16) = HIDWORD(v16);
  v29 = v16 >> 19;
  HIDWORD(v16) = v23;
  LODWORD(v16) = -1797686095 * v24;
  v30 = v16 >> 1;
  HIDWORD(v16) = v28;
  LODWORD(v16) = -1063443549 * v28;
  v31 = v16 >> 1;
  v32 = (((1409286144 * v27) | ((-1468486187 * v27) >> 6)) + v30 - v29) ^ v31 ^ (((v29 - v30) ^ 0x23571FD2) - v31 - 1375999985);
  LODWORD(STACK[0x368]) = v32;
  LODWORD(STACK[0x354]) = v31 - (v32 ^ 0xD5C6038B);
  LODWORD(STACK[0x36C]) = v30 - (v32 ^ 0xD5C6038B);
  v33 = STACK[0x3C8];
  v34 = STACK[0x3C8] & 0xFFFFFFEF;
  v35 = v13 ^ LODWORD(STACK[0x3D4]);
  LODWORD(STACK[0x324]) = v35;
  LODWORD(STACK[0x33C]) = v35 ^ v33;
  LODWORD(STACK[0x334]) = v35 ^ v33 ^ 0xBF230415;
  v36 = (a1 + v13) ^ v34;
  LODWORD(STACK[0x344]) = v36;
  LODWORD(STACK[0x348]) = v36 ^ 0xFAD06F1F;
  return (*(v1 + 8 * v4))(3339483170, 7251);
}

uint64_t sub_1008F2EE8()
{
  *(v3 + 360) = v1;
  LODWORD(STACK[0x504]) = STACK[0x940];
  return (*(v2 + 8 * (((*(v3 + 104) == 0) * (v0 - 15518 + ((v0 - 155563705) & 0x9459A2D))) ^ v0)))();
}

uint64_t sub_1008F2FEC()
{
  v4 = 297845113 * ((((2 * v1) | 0x765823E8) - v1 + 1154739724) ^ 0xCC1F0D6A);
  *(v3 - 256) = STACK[0x9D0];
  *(v3 - 248) = &STACK[0x14E4];
  *(v3 - 216) = v0 - v4 + 1563143655;
  *(v3 - 212) = v4 + 1383988684;
  *(v3 - 240) = STACK[0x640];
  *(v3 - 224) = &STACK[0x1810];
  v5 = (*(v2 + 8 * (v0 + 35011)))(v3 - 256);
  v6 = *(v3 - 232);
  LODWORD(STACK[0x13D8]) = v6;
  return (*(v2 + 8 * ((57465 * (v6 == (((v0 - 10759) | 0x4005) ^ 0xE9D59F04))) ^ v0)))(v5);
}

uint64_t sub_1008F3178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  *(v10 - 192) = v5;
  v11 = *(v9 + 8 * (((a5 > 7) * (((v6 - 10567) | 0x48B) ^ (v6 - 998244984) & 0x3B7FDDBB ^ 0x19)) ^ v6));
  *(v10 - 208) = v7;
  *(v10 - 216) = v8;
  return v11(a1, a2, 4294967259, 17);
}

uint64_t sub_1008F364C()
{
  v3 = ((581 * (v1 ^ 0xC78C)) ^ 0x8101C8E) + v0;
  if (v3 <= 0x40)
  {
    v3 = 64;
  }

  return (*(v2 + 8 * (((v3 - 1 < v0 + 135311300) * (((v1 - 60885129) & 0x3A07BDD) - 15119)) ^ v1)))(0);
}

uint64_t sub_1008F36C8(uint64_t a1)
{
  v8 = *(a1 + v1 + v3) ^ v6;
  v9 = ((*(a1 + v1 - 1398246735) << 24) | ((*(a1 + v1 + ((v2 - 17354) | 0x43ABu) - 1398275343) ^ v6) << 16) | v8 | ((*(a1 + v1 - 1398246737) ^ v6) << 8)) ^ 0x5F000000;
  *(v7 + 4 * (((((a1 ^ 0xA338476B) + 261109191) ^ a1 ^ ((a1 ^ 0x170A7AFC) - 1147008942) ^ ((a1 ^ 0x189E4F30) - 1271513696) ^ ((a1 ^ 0xFFFBFFF7) + 1397984603)) >> 2) ^ 0x14D5E354)) = v9 - 2 * (v9 & 0x69D5C715 ^ v8 & 4) + v5;
  return (*(v4 + 8 * ((64548 * ((a1 - 1398246734) < 0x40)) ^ v2)))(a1 + 4);
}

void *sub_1008F3804()
{
  STACK[0x420] = v0;
  *(v3 + 1192) = *(v2 + 8 * (v1 - 32018));
  return (*(v2 + 8 * (((v1 ^ 0xAF41) + 6581) ^ (v1 - 32018))))(&STACK[0x420]);
}

uint64_t sub_1008F3898(uint64_t a1, uint64_t a2)
{
  STACK[0x7E0] = STACK[0xEC8];
  STACK[0xA58] = *(v3 + 8 * v2);
  return (*(v3 + 8 * (v2 + 12202)))(a1, a2, &off_1010A0B50);
}

uint64_t sub_1008F3904()
{
  (*(v3 + 8 * (v1 ^ 0x9E37)))(v0, 1);
  *(v4 - 248) = *(v2 + 16);
  *(v4 - 256) = (v1 - 1762646661) ^ (906386353 * ((((v4 - 256) | 0x8BC8285) - (v4 - 256) + ((v4 - 256) & 0xF7437D78)) ^ 0x39BD4FA1));
  v5 = (*(v3 + 8 * (v1 + 30885)))(v4 - 256);
  STACK[0x698] = v2;
  return (*(v3 + 8 * ((61 * (*(v2 + 8) == ((v1 - 4486) | 0x50) - 16606)) ^ v1)))(v5);
}

uint64_t sub_1008F3D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  LODWORD(v28) = v21 - 28166;
  HIDWORD(v29) = v21 - 8278;
  LODWORD(v29) = v21 ^ 0x7C98;
  HIDWORD(v28) = v21 - 1045751181;
  HIDWORD(a18) = v21 - 10030;
  HIDWORD(v27) = v21 - 28484;
  HIDWORD(v26) = (v21 - 31432) ^ 0x9C16;
  LODWORD(v27) = v21 - 31432;
  LODWORD(v26) = v21 - 30394;
  HIDWORD(v25) = v21 - 31408;
  LODWORD(v25) = v21 - 24296;
  return (*(v22 + 8 * v23))(4221238477, 1247919525, 3180246064, a4, a5, 1175734499, 2986023129, 1920735143, a9, a10, a11, a12, v25, v26, v27, a16, a17, a18, a19, a20, a21, v28, v29);
}

uint64_t sub_1008F3E74@<X0>(unint64_t a1@<X8>)
{
  v6 = STACK[0x6E8] + v1;
  STACK[0x630] = a1;
  STACK[0x7D8] = v6;
  return (*(v5 + 8 * (((v2 == ((v3 - 8232) ^ 0xE9D58A38)) * (v4 ^ 0x41D6)) ^ v3)))();
}

uint64_t sub_1008F3F00(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v15 = *(v12 + 8 * v7);
  *&STACK[0x380] = vdupq_n_s64(0x38uLL);
  *&STACK[0x390] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x360] = vdupq_n_s64(v11);
  *&STACK[0x370] = vdupq_n_s64(0xD6916AF990E79581);
  *&STACK[0x340] = vdupq_n_s64(a7);
  *&STACK[0x350] = vdupq_n_s64(0x6B8298A058201755uLL);
  *&STACK[0x320] = vdupq_n_s64(a5);
  *&STACK[0x330] = vdupq_n_s64(a4);
  *&STACK[0x2F0] = vdupq_n_s64(0x2C378843F9A46E98uLL);
  *&STACK[0x300] = vdupq_n_s64(a6);
  *&STACK[0x2D0] = vdupq_n_s64(0x82B08017BF43C069);
  *&STACK[0x2E0] = vdupq_n_s64(v14);
  *&STACK[0x2B0] = vdupq_n_s64(a2);
  *&STACK[0x2C0] = vdupq_n_s64(a1);
  *&STACK[0x290] = vdupq_n_s64(v13);
  *&STACK[0x2A0] = vdupq_n_s64(a3);
  *&STACK[0x270] = vdupq_n_s64(v10);
  *&STACK[0x280] = vdupq_n_s64(v8);
  *&STACK[0x260] = vdupq_n_s64(v9);
  *&STACK[0x3B0] = xmmword_100BC76B0;
  return v15();
}

uint64_t sub_1008F4098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  STACK[0x310] = v12;
  v16 = STACK[0x320];
  v17 = STACK[0x320] + v13 - a12 + ((v14 + 519733149) & 0x944B7FDD ^ 0xF9D52EADB98CC2B0);
  STACK[0x208] = v17;
  STACK[0x200] = v17 + a12 - 0x36B78CBC7EACA2F5;
  v18 = *(v17 + a12 - 0x36B78CBC7EACA2F5) == v13;
  STACK[0x3A0] = &STACK[0x4C4];
  v19 = v14 - 1287248986;
  v20 = v18;
  v21 = *(v15 + 8 * ((10300 * v20) ^ v19));
  STACK[0x328] = v16;
  return v21();
}

uint64_t sub_1008F41A0@<X0>(int a1@<W0>, int a2@<W8>)
{
  v11 = v6 - 1;
  *(v9 + v11) = *(v4 + (((a1 + v7) ^ v8) & v11)) ^ *(v2 + v11) ^ *((((a1 + v7) ^ v8) & v11) + v5 + 5) ^ *(v3 + (((a1 + v7) ^ v8) & v11)) ^ (9 * (((a1 + v7) ^ v8) & v11));
  return (*(v10 + 8 * ((28 * (v11 == 0)) ^ a2)))();
}

uint64_t sub_1008F423C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a1 + v4 + 72);
  v9 = ((2 * v4) & 0xD6F3FFF0) + (v4 ^ 0xEB79FFFB);
  *(a3 + v9 + 344326149) = (HIBYTE(v8) ^ 0x1D) - (((HIBYTE(v8) ^ 0x1D) << (((v3 - 23) ^ 0xC1) & 0x67)) & 0xBE) + 95;
  *(a3 + v9 + 344326150) = (BYTE2(v8) ^ 0x7C) - ((2 * (BYTE2(v8) ^ 0x7C)) & 0xBF) + 95;
  *(a3 + v9 + 344326151) = (BYTE1(v8) ^ 0x86) - ((2 * (BYTE1(v8) ^ 0x86)) & 0xBF) + 95;
  *(a3 + v9 + 344326152) = v8 ^ 0x23;
  return (*(v7 + 8 * (((v4 + 4 < v5) * v6) ^ v3)))();
}

uint64_t sub_1008F4384@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8, uint64_t a9, int a10, unsigned int a11)
{
  v12 = 1603510583 * (((&a7 | 0x30D0FF54) - (&a7 & 0x30D0FF50)) ^ 0xA70BCDFF);
  a8 = -1810499141 - v12;
  a9 = a1;
  a10 = v11 - v12 - 14853;
  a11 = 824934060 - v12;
  v13 = (*(a5 + 8 * (v11 + 30143)))(&a7);
  return (*(a5 + 8 * ((495 * ((((a7 ^ 0xC5621560) + 983427744) ^ ((a7 ^ 0x26AEBFBD) - 648986557) ^ (((((v11 - 13534) | 0x1404) + 15848) ^ a7 ^ 0xA191FC1) - 169438668)) - 371865860 > 0xFFFFFFEA)) ^ v11)))(v13);
}

uint64_t sub_1008F44AC@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v16 = (((a1 ^ (a1 >> 30) ^ a2) + a3) ^ ((a1 ^ (a1 >> 30) ^ a4) + a5) ^ (v13 + (a1 ^ (a1 >> 30) ^ a6) + a7)) * v12;
  *(v15 + 4 * a9) = v9 + v16;
  return (*(v14 + 8 * (((a9 < 0x26F) | (2 * (a9 < 0x26F))) ^ v11)))((v10 + a8 + v16));
}

uint64_t sub_1008F4514(int8x16_t *a1, int a2, unsigned int a3, double a4, double a5, double a6, double a7, int8x16_t a8, int8x16_t a9)
{
  v13 = (v11 + a3);
  v14 = vaddq_s8(vaddq_s8(*a1, a9), vmvnq_s8(vandq_s8(vaddq_s8(*a1, *a1), a8)));
  *v13 = vaddq_s8(vaddq_s8(a1[-1], a9), vmvnq_s8(vandq_s8(vaddq_s8(a1[-1], a1[-1]), a8)));
  v13[1] = v14;
  return (*(v12 + 8 * ((2 * ((v9 ^ (v10 == 0)) & 1)) & 0xFB | (4 * ((v9 ^ (v10 == 0)) & 1)) | a2)))(a1 + 2);
}

uint64_t sub_1008F457C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x1428] -= 320;
  STACK[0x1550] = *(v8 + 8 * v7);
  return (*(v8 + 8 * (v7 ^ 0xD54)))(a1, a2, a3, a4, STACK[0x808], 1864610357, a7, v9);
}

uint64_t sub_1008F46AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, unsigned int a35)
{
  v35 = a35 < 0xD6A93A96;
  if (v35 == (a4 - 895003663) < 0xD6A93A96)
  {
    v35 = a35 > a4 - 895003663;
  }

  return (*(STACK[0xED8] + 8 * (a6 ^ (31454 * v35))))();
}

uint64_t sub_1008F47E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21)
{
  v24 = a21 < 0x4E314B7E;
  if (v24 == (v22 - 814993995) < 0x4E314B7E)
  {
    v24 = v22 - 814993995 < a21;
  }

  return (*(v23 + 8 * (v21 ^ (38605 * v24))))();
}

uint64_t sub_1008F48BC@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v8 = v5 + v3;
  v9 = *(v4 + v5);
  v10 = v5 - 1;
  *(a1 + v10) = *(v7 - 128 + v10) ^ *(v2 + v10) ^ (17 * v10) ^ *(v8 + 6) ^ v9 ^ 0x5F;
  return (*(v6 + 8 * ((53090 * (v10 == ((a2 + 1647275673) ^ 0x622FD117))) ^ a2)))();
}

uint64_t sub_1008F4938@<X0>(uint64_t *a1@<X8>)
{
  v4 = *a1;
  *(v3 + 1048) = *a1;
  return (*(v2 + 8 * ((11 * (((v4 == 0) ^ (11 * (v1 ^ 0x3C) - 10)) & 1)) ^ v1)))();
}

uint64_t sub_1008F49F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  v5 = *(STACK[0x3A8] + 8 * a4);
  STACK[0x360] = v4;
  return v5(a1, a2, a3, 56);
}

uint64_t sub_1008F4B18@<X0>(char a1@<W1>, char a2@<W2>, char a3@<W3>, char a4@<W4>, char a5@<W5>, char a6@<W6>, char a7@<W7>, int a8@<W8>)
{
  v20 = ((a8 + 466) ^ 0xFFFFFFFFFFFFEA1FLL) + v13;
  v21 = (v8 ^ 0xDC) & (2 * (v8 & 0xDD)) ^ v8 & 0xDD;
  v22 = ((2 * (v8 ^ 0xE6)) ^ 0x76) & (v8 ^ 0xE6) ^ (2 * (v8 ^ 0xE6)) & 0x3A;
  v23 = v8 ^ (2 * (((4 * (v22 ^ 9)) & a2 ^ a3 ^ ((4 * (v22 ^ 9)) ^ 0xE0) & (v22 ^ 9)) & (16 * ((v22 ^ 0x30) & (4 * v21) ^ v21)) ^ (v22 ^ 0x30) & (4 * v21) ^ v21));
  v24 = (((v23 ^ a5) + a6) ^ ((v23 ^ a7) + v14) ^ ((v23 ^ a1) + v17)) + v19;
  *(v18 - 152) = v20;
  *(v16 + v20) = v24 * (v8 + a4) + (v24 * v10 + (v8 + a4) * v9) * v11 + 122;
  return (*(v15 + 8 * (((*(v18 - 152) == 0) * v12) ^ a8)))();
}

uint64_t sub_1008F4C28@<X0>(int a1@<W0>, uint64_t a2@<X8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>)
{
  v10 = (a2 + (v4 + v8));
  v11 = vaddq_s8(vsubq_s8(*v5, vandq_s8(vaddq_s8(*v5, *v5), a3)), a4);
  *v10 = vaddq_s8(vsubq_s8(v5[-1], vandq_s8(vaddq_s8(v5[-1], v5[-1]), a3)), a4);
  v10[1] = v11;
  return (*(v9 + 8 * (((v6 != 0) * a1) ^ v7)))();
}

uint64_t sub_1008F4EA8@<X0>(uint64_t a1@<X8>)
{
  v4 = (5233 * (LODWORD(STACK[0x338]) ^ 0xB251) + 1194041364) ^ (v1 + 1194062296);
  v6 = (v2 - a1) < 0x20 || v4 < 8;
  return (*(v3 + 8 * ((203 * v6) ^ LODWORD(STACK[0x338]))))();
}

uint64_t sub_1008F5090@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x24D8]) = v1;
  LODWORD(STACK[0x24DC]) = v1 + a1;
  return (*(v3 + 8 * v2))();
}

uint64_t sub_1008F50E0()
{
  LODWORD(STACK[0x2374]) = v0;
  v2 = *(STACK[0x19D8] + 32) + 195497533;
  v3 = (v2 ^ 0xE318FD3E) & (2 * (v2 & 0xF458F1BE)) ^ v2 & 0xF458F1BE;
  v4 = ((2 * (v2 ^ 0x4BA87D2A)) ^ 0x7FE11928) & (v2 ^ 0x4BA87D2A) ^ (2 * (v2 ^ 0x4BA87D2A)) & 0xBFF08C94;
  v5 = v4 ^ 0x80108494;
  v6 = (v4 ^ 0x33E00800) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0xFFC23250) & v5 ^ (4 * v5) & 0xBFF08C90;
  v8 = (v7 ^ 0xBFC00000) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x308C84)) ^ 0xFF08C940) & (v7 ^ 0x308C84) ^ (16 * (v7 ^ 0x308C84)) & 0xBFF08C80;
  v10 = v8 ^ 0xBFF08C94 ^ (v9 ^ 0xBF008800) & (v8 << 8);
  LODWORD(STACK[0x2378]) = v2 ^ (2 * ((v10 << 16) & 0x3FF00000 ^ v10 ^ ((v10 << 16) ^ 0xC940000) & (((v9 ^ 0xF00494) << 8) & 0x3FF00000 ^ 0xF700000 ^ (((v9 ^ 0xF00494) << 8) ^ 0x708C0000) & (v9 ^ 0xF00494)))) ^ 0xD1AB16BB;
  return (*(v1 + 41408))();
}

uint64_t sub_1008F5280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x318];
  LOWORD(STACK[0x9F6]) = v4;
  v6 = *(STACK[0x3A8] + 8 * (v5 - 28074));
  LODWORD(STACK[0x380]) = v4;
  return v6(a1, a2, a3, a4, v5);
}

uint64_t sub_1008F52B8()
{
  v2 = STACK[0xA90];
  v2[1] = 0xE98C4453292C14E9;
  *v2 = 0xBB1C641896C7400CLL;
  return (*(v1 + 8 * ((109651 * (v0 >= (v0 ^ 0x19A43959))) ^ (v0 + 534853642))))();
}

uint64_t sub_1008F5330()
{
  LODWORD(STACK[0x320]) = v4;
  LODWORD(STACK[0x34C]) = v3;
  LODWORD(STACK[0x31C]) = v1 ^ 0x10;
  return (*(v0 + 8 * v2))(2033390645, 420345429, 3874621867, 3390916942, 904050354, 1830204980, 681623431);
}

uint64_t sub_1008F5400()
{
  v2 = STACK[0x1268];
  *v2 = 0x1CBBAAA40BC7C05ALL;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  v3 = (*(v1 + 8 * (v0 ^ 0x62601AFB)))();
  return (*(v1 + 8 * (v0 - 1650486247)))(v3);
}

uint64_t sub_1008F5468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22)
{
  v25 = -v22;
  v26 = 2 * (((v23 + 17502) | 0xD5A) ^ 0xBE1Bu) - v22 + 4019488386u;
  v27 = a22 + v25;
  if (v26 >= (v27 - 275771381))
  {
    v28 = (v27 - 275771381);
  }

  else
  {
    v28 = v26;
  }

  return (*(v24 + 8 * ((92 * (v28 > 6)) ^ v23)))();
}

uint64_t sub_1008F5C34()
{
  v6 = *(v1 - 0x217E172EFA1E81CLL);
  v7 = ((*(v1 - 0x217E172EFA1E804) ^ 0x37851580) - 931468672) ^ ((*(v1 - 0x217E172EFA1E804) ^ 0x5CDDEFC9) - 1558048713) ^ ((((v0 - 2195) | 0x44) ^ 0x828D3014 ^ *(v1 - 0x217E172EFA1E804)) + ((37 * (v0 ^ 0x14A4)) ^ 0x7D72ECB3));
  *(v5 - 216) = v1 - 0x217E172EFA1E800;
  *(v5 - 232) = v6;
  LODWORD(v6) = v7 - 54746966;
  v8 = 634647737 * ((2 * ((v3 ^ 0x11504436) & 0x4A87EF74) - (v3 ^ 0x11504436) + 897061003) ^ 0x49BE7B41);
  *(v5 - 256) = v6 ^ v8;
  *(v5 - 224) = v0 - v8 + 34246;
  *(v5 - 248) = &STACK[0x1F24];
  *(v5 - 240) = &STACK[0xB10];
  v9 = (*(v4 + 8 * (v0 ^ 0xDF5F)))(v5 - 256);
  return (*(v4 + 8 * ((41335 * (*(v5 - 208) == v2)) ^ v0)))(v9);
}

uint64_t sub_1008F5DA4()
{
  v3 = STACK[0xCD0];
  *v3 = *(v0 - 0x10A99C80114D144BLL);
  *(v3 + 23) = *(v0 - 0x10A99C80114D1434);
  *(v3 + 22) = *(v0 - 0x10A99C80114D1435);
  *(v3 + 21) = *(v0 - 0x10A99C80114D1436);
  *(v3 + 20) = *(v0 - 0x10A99C80114D1437);
  *(v3 + 19) = *(v0 - 0x10A99C80114D1438);
  *(v3 + 18) = *(v0 - 0x10A99C80114D1439);
  *(v3 + 17) = *(v0 - 0x10A99C80114D143ALL);
  *(v3 + 16) = *(v0 - 0x10A99C80114D143BLL);
  *(v3 + 15) = *(v0 - 0x10A99C80114D143CLL);
  *(v3 + 14) = *(v0 - 0x10A99C80114D143DLL);
  *(v3 + 13) = *(v0 - 0x10A99C80114D143ELL);
  *(v3 + 12) = *(v0 - 0x10A99C80114D143FLL);
  *(v3 + 11) = *(v0 - 0x10A99C80114D1440);
  *(v3 + 10) = *(v0 - 0x10A99C80114D1441);
  *(v3 + 9) = *(v0 - 0x10A99C80114D1442);
  *(v3 + 8) = *(v0 - 0x10A99C80114D1443);
  *(v3 + 7) = *(v0 - 0x10A99C80114D1444);
  *(v3 + 6) = *(v0 - 0x10A99C80114D1445);
  *(v3 + 5) = *(v0 - 0x10A99C80114D1446);
  *(v3 + 4) = *(v0 - 0x10A99C80114D1447);
  return (*(v2 + 8 * (v1 ^ 0x7EC1 ^ (62893 * ((v1 ^ 0xEABF93DE) != (v1 ^ 0x438C) - 365719122)))))();
}

uint64_t sub_1008F6040()
{
  v3 = (v0 ^ 0xCD0D6520) + 854760160;
  v4 = (v3 ^ ((v0 ^ 0x7FC3D0A) - 133971210) ^ ((v2 ^ 0xA397 ^ v0 ^ ((v2 ^ 0xB9EBB1B0) + 1765309204)) - 589602619)) == 0x1629946F || (v3 ^ ((v0 ^ 0x7FC3D0A) - 133971210) ^ ((v2 ^ 0xA397 ^ v0 ^ ((v2 ^ 0xB9EBB1B0) + 1765309204)) - 589602619)) == 371823724;
  v5 = v4;
  v6 = v5 ^ 0x7F;
  if (v4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  return (*(v1 + 8 * (v2 + 2 * (v6 + v7 != 127))))();
}

uint64_t sub_1008F6104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v11 = (v9 + 1239111966) & 0xB62477F7;
  v12 = *(v8 + 8 * (v9 + 34693));
  STACK[0x408] = a8;
  v13 = v12(1028);
  STACK[0x4B8] = 0;
  LODWORD(STACK[0x48C]) = 0;
  *(v10 - 192) = 0;
  STACK[0x4A0] = 0;
  *(v10 - 248) = 0;
  *(v10 - 176) = 0;
  STACK[0x498] = 0;
  *(v10 - 256) = 0;
  *(v10 - 168) = 0;
  STACK[0x480] = 0;
  *(v10 - 208) = 0;
  *(v10 - 200) = 0;
  *(v10 - 240) = 0;
  *(v10 - 232) = 0;
  *(v10 - 184) = 0;
  STACK[0x4A8] = 0;
  STACK[0x490] = 0;
  STACK[0x478] = 0;
  *(v10 - 160) = 0;
  STACK[0x4B0] = 0;
  *(v10 - 224) = v11;
  v14 = *(v8 + 8 * (((v13 == 0) * (v11 ^ 0x142B)) ^ v9));
  *(v10 - 148) = 1644243867;
  return v14();
}

uint64_t sub_1008F62C0()
{
  v4 = (((v1 ^ 0x1B67E25F) + 697509217) ^ ((v1 ^ 0x94439CDD) - 1497932829) ^ (((v0 + 1377392542) & 0xADE677FC ^ 0x990E3341) + (v1 ^ 0xABFA8153))) - 109385461;
  v5 = ((v4 ^ 0xEA498AC0) + 437474501) ^ v4 ^ ((v4 ^ 0x1FA6A000) - 268665339) ^ ((v4 ^ 0x14B5E48C) - 454083959) ^ ((v4 ^ 0xEEFFEFB7) + 514142644);
  LODWORD(STACK[0x11A8]) = v5 ^ 0xE670E6EA;
  LODWORD(STACK[0x1818]) = (*(v2 + (v5 ^ 0xFA521FB)) ^ 0xBF277EFD) + 2113855359 + ((2 * *(v2 + (v5 ^ 0xFA521FB))) & 0xFFFB);
  LODWORD(v5) = (((v5 ^ 0x8E52E8C0) - 1747062314) ^ ((v5 ^ 0x99D75432) - 2141696728) ^ ((v5 ^ 0x18209D09) + 28279837)) - LODWORD(STACK[0x1740]) + 1770854038;
  LODWORD(STACK[0x107C]) = ((v5 ^ 0xF9216963) + 2036979994) ^ v5 ^ ((v5 ^ 0xCF41EF9C) + 1326014439) ^ ((v5 ^ 0x3628B6C9) - 1235220812) ^ ((v5 ^ 0x7FFF7FB3) - 4730934) ^ 0x96628894;
  return (*(v3 + 8 * v0))();
}

uint64_t sub_1008F64F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0xEA8]) = 0;
  LODWORD(STACK[0xE20]) = 0;
  LODWORD(STACK[0xE10]) = 0;
  LODWORD(STACK[0xDB0]) = 0;
  LODWORD(STACK[0xD28]) = 0;
  LODWORD(STACK[0xDB8]) = 0;
  LODWORD(STACK[0xD88]) = 0;
  LODWORD(STACK[0xDC0]) = 0;
  LODWORD(STACK[0xE28]) = 0;
  LODWORD(STACK[0xD30]) = 0;
  LODWORD(STACK[0xDD8]) = 0;
  LODWORD(STACK[0xD58]) = 0;
  LODWORD(STACK[0xD70]) = 0;
  LODWORD(STACK[0xD80]) = 0;
  LODWORD(STACK[0xDA0]) = 0;
  LODWORD(STACK[0xE08]) = 0;
  LODWORD(STACK[0xD20]) = 0;
  v10 = v6 | 0x1004u;
  STACK[0xE88] = v10;
  LODWORD(STACK[0xBF0]) = v7 ^ 0xBF542833;
  STACK[0xC88] = v9 ^ 0xBB6EEF716CE8A42CLL;
  v11 = *(v8 + 8 * (v10 - 14045));
  LODWORD(STACK[0xE18]) = 1;
  LODWORD(STACK[0xDF0]) = 1;
  LODWORD(STACK[0xDE8]) = 1;
  LODWORD(STACK[0xCF8]) = 1;
  LODWORD(STACK[0xD98]) = 1;
  LODWORD(STACK[0xDF8]) = 1;
  LODWORD(STACK[0xDA8]) = 1;
  LODWORD(STACK[0xD18]) = 1;
  LODWORD(STACK[0xD10]) = 1;
  LODWORD(STACK[0xE00]) = 1;
  LODWORD(STACK[0xDE0]) = 1;
  LODWORD(STACK[0xD00]) = 1;
  LODWORD(STACK[0xD08]) = 1;
  LODWORD(STACK[0xD38]) = 1;
  return v11(4294947698, -22206133, STACK[0xBD8], 0xFFFFF20000000000, 184, a6, &off_1010A0B50, 12602655);
}

uint64_t sub_1008F683C@<X0>(unsigned int a1@<W2>, unsigned int a2@<W3>, int a3@<W4>, int a4@<W5>, uint64_t a5@<X8>)
{
  v14 = a1 < a2;
  v15 = (a5 + (a4 - 216864747));
  v16 = 1864610357 * ((v15 ^ *(*(v9 + v13) + (*(v7 + v12) & 0x72D7ACF8))) & 0x7FFFFFFF);
  v17 = 1864610357 * (v16 ^ HIWORD(v16));
  v18 = *(v8 + (v17 >> ((v5 - 125) ^ 0x2Eu))) ^ *(v10 + (v17 >> ((v5 - 125) ^ 0x2Eu))) ^ *((v17 >> ((v5 - 125) ^ 0x2Eu)) + v6 + 5) ^ v17 ^ (-83 * (v17 >> ((v5 - 125) ^ 0x2Eu)));
  if (v14 == a4 - 426505909 < a2)
  {
    v14 = a4 - 426505909 < a1;
  }

  *v15 = v18;
  return (*(v11 + 8 * ((!v14 * a3) ^ v5)))();
}

uint64_t sub_1008F69BC@<X0>(int a1@<W8>)
{
  v7 = v5 + v4;
  v8 = ((a1 - 991352212) & 0x3B16E6E8 ^ 0xA4EF) & (v4 + 15);
  v9 = ((a1 + 1614277519) & 0x9FC7F3E7 ^ 0x7303) - v4 + v8;
  v10 = v3 + v9;
  v11 = v3 + v8 + 1;
  v12 = v1 + v9;
  v13 = v1 + v8 + 1;
  v14 = v8 + v2 + 3;
  v16 = v11 > v5 && v10 < v7;
  v18 = v13 > v5 && v12 < v7 || v16;
  if (v14 <= v5 || v14 - v4 >= v7)
  {
    v20 = v18;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 8 * ((53 * (v20 ^ 1)) ^ a1)))();
}

uint64_t sub_1008F6C98@<X0>(uint64_t a1@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(v5 + 4 * v4);
  v7 = ((((v3 - 11537) | 0x9011) + 736258034 + (v6 ^ 0xD41CFC79)) ^ ((v6 ^ 0xFA64E0C6) + 94052154) ^ ((v6 ^ 0x18A7F2BA) - 413659834)) - 1713097503;
  v8 = (v7 ^ 0xD8F3310B) & (2 * (v7 & 0x9CFBB923)) ^ v7 & 0x9CFBB923;
  v9 = ((2 * (v7 ^ 0xE002030F)) ^ 0xF9F37458) & (v7 ^ 0xE002030F) ^ (2 * (v7 ^ 0xE002030F)) & 0x7CF9BA2C;
  v10 = v9 ^ 0x4088A24;
  v11 = (v9 ^ 0x70F12008) & (4 * v8) ^ v8;
  v12 = ((4 * v10) ^ 0xF3E6E8B0) & v10 ^ (4 * v10) & 0x7CF9BA28;
  v13 = (v12 ^ 0x70E0A820) & (16 * v11) ^ v11;
  v14 = ((16 * (v12 ^ 0xC19120C)) ^ 0xCF9BA2C0) & (v12 ^ 0xC19120C) ^ (16 * (v12 ^ 0xC19120C)) & 0x7CF9BA00;
  v15 = v13 ^ 0x7CF9BA2C ^ (v14 ^ 0x4C99A200) & (v13 << 8);
  *(v5 + 4 * v4) = v7 ^ (2 * ((v15 << 16) & 0x7CF90000 ^ v15 ^ ((v15 << 16) ^ 0x3A2C0000) & (((v14 ^ 0x3060182C) << 8) & 0x7CF90000 ^ 0x4410000 ^ (((v14 ^ 0x3060182C) << 8) ^ 0x79BA0000) & (v14 ^ 0x3060182C)))) ^ 0x2387237E;
  v17 = v4 + 1 >= v2 || v6 != 920645125;
  return (*(v1 + 8 * ((400 * v17) ^ v3)))();
}

uint64_t sub_1008F6F10@<X0>(int a1@<W3>, int a2@<W6>, int a3@<W8>)
{
  v7 = (((v6 ^ 0x42D81738) - 1121457976) ^ ((v6 ^ 0x5ACC4A97) - 1523337879) ^ ((v6 ^ 0xF1C1E13B ^ (a3 - 751401861) & 0x2CC97BBD) + 238970178)) + ((a3 - 289504101) & 0xB9F5725C ^ 0xF1EFEF67);
  v10 = ((((v7 ^ 0x9539A93F) + 88309968) ^ v7 ^ ((v7 ^ 0x452B5602) - 716079117) ^ ((v7 ^ 0xC869D2CC) + 1477704510) ^ ((v7 ^ 0x77FEFBFC) - 410725872)) & 0xFFFFFFFC ^ a1) != 0x8650111D && v4 != v6 || v3 == a2;
  return (*(v5 + 8 * ((30 * v10) ^ a3)))();
}

uint64_t sub_1008F7104(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, int a53, int a54, unsigned __int8 a55, int a56, unsigned __int8 a57, int a58, int a59, int a60, unsigned int a61, uint64_t a62, uint64_t a63)
{
  v315 = v71;
  v75 = ((a49 ^ 0xDFD49FB6 ^ ((v71 + 101) ^ 0x84811710 ^ ((((v71 + 1141826701) | 0x940F262) ^ (a43 << 8) ^ 0xA8DEF3DD) & a64 | a53)) & a51) & a47 | a45) ^ 0x49A5E75E;
  v76 = ((v69 ^ 0xBC4574BE ^ ((((v73 << 24) ^ 0x17ADA1E1) & a37 | a35) ^ 0x33013A45) & a3) & a8 | v70) ^ 0xC7D71E30;
  v77 = *(a14 + ((((v69 ^ 0x74BE ^ ((a37 & 0xA1E1 | a35) ^ 0x3A45) & a3) & a8 | v70) ^ 0x1E30) >> 8));
  v78 = a39 ^ 0xE74AD5CA ^ a41 & ((v72 << 8) ^ 0xE273685A);
  v79 = *(a14 + BYTE2(v78));
  v80 = *(a14 + BYTE2(v67));
  v81 = *(a14 + BYTE1(v67));
  v82 = *(a14 + (v78 >> 24));
  v83 = *(a14 + BYTE2(v76));
  v84 = *(a14 + (v76 >> 24));
  v85 = *(a14 + (v75 >> 24));
  v86 = *(a14 + BYTE2(v75));
  v87 = *(a14 + v76);
  v88 = *(a14 + BYTE1(v78));
  v89 = v75 >> 8;
  v90 = *(&off_1010A0B50 + v71 - 6159) - 1803429627;
  LOBYTE(v89) = v89 & 8;
  v91 = (*&v90[8 * (*(a14 + ((((a49 ^ 0x9FB6 ^ ((v71 + 101) ^ 0x1710 ^ ((((v71 - 7027) | 0xF262) ^ (a43 << 8) ^ 0xF3DD) & a64 | a53)) & a51) & a47 | a45) ^ 0xE75E) >> 8)) ^ v74)] ^ 0x6EB17D0772DDBE48uLL) >> v89;
  v92 = ((v91 - ((2 * v91) & 0x4FA6D41C1C6D0B58) + 0x27D36A0E0E3685ACLL) ^ 0x27D36A0E0E3685ACLL) >> (v89 ^ 8u);
  v93 = (*&v90[8 * (v83 ^ v74)] ^ 0x6EB17D0772DDBE48uLL) >> (v87 & 0x20);
  LODWORD(v84) = (*&v90[8 * (v84 ^ v74)] >> 24) ^ (*&v90[8 * (*(a14 + (a39 ^ 0xCA ^ a41 & 0x5Au)) ^ v74)] >> 16) ^ (*&v90[8 * (*(a14 + (v67 >> 24)) ^ v74)] >> 8);
  v94 = *&v90[8 * (v87 ^ v74) + 4] ^ (*&v90[8 * (*(a14 + v67) ^ v74)] >> 16);
  v95 = (*&v90[8 * (v82 ^ v74)] >> 24) ^ (*&v90[8 * (v80 ^ v74)] >> 16) ^ (*&v90[8 * (v86 ^ v74)] >> 8) ^ 0x31529D8 ^ (((v93 - ((2 * v93) & 0xC1BC89F94B6BB4D0) + 0x60DE44FCA5B5DA68) ^ 0x60DE44FCA5B5DA68) >> (v87 & 0x20 ^ 0x20));
  v96 = (*&v90[8 * (v79 ^ v74)] >> 24) ^ (*&v90[8 * (v81 ^ v74)] >> 16) ^ *&v90[8 * (v77 ^ v74) + 4] ^ 0xCA62ACB0 ^ v92;
  v97 = *(a14 + (BYTE3(*&v90[8 * (v82 ^ v74)]) ^ BYTE2(*&v90[8 * (v80 ^ v74)]) ^ BYTE1(*&v90[8 * (v86 ^ v74)]) ^ 0xD8 ^ (((v93 - ((2 * v93) & 0xC1BC89F94B6BB4D0) + 0x60DE44FCA5B5DA68) ^ 0x60DE44FCA5B5DA68) >> (v87 & 0x20 ^ 0x20))));
  v98 = v84 ^ 0x1FC55C49 ^ *&v90[8 * (v85 ^ v74) + 4];
  v99 = (*&v90[8 * (*(a14 + (((a49 ^ 0xB6 ^ ((v71 + 101) ^ 0x10 ^ ((((v71 - 115) | 0x62) ^ 0xDD) & a64 | a53)) & a51) & a47 | a45) ^ 0x5Eu)) ^ v74)] >> 8) ^ v94 ^ (*&v90[8 * (v88 ^ v74)] >> 24) ^ 0x201A25FE;
  v100 = *(a14 + BYTE1(v95));
  v101 = *(a14 + (v84 ^ 0x49u ^ v90[8 * (v85 ^ v74) + 4]));
  v102 = *(a14 + BYTE2(v95));
  v103 = *(a14 + v96);
  v104 = *(a14 + (v95 >> 24));
  v105 = *(a14 + BYTE1(v96));
  LODWORD(v102) = (*&v90[8 * (*(a14 + BYTE2(v99)) ^ v74)] >> 24) ^ (*&v90[8 * (*(a14 + BYTE1(v98)) ^ v74)] >> 16) ^ (*&v90[8 * (v102 ^ v74)] >> 8);
  LODWORD(v84) = (*&v90[8 * (*(a14 + (v99 >> 24)) ^ v74)] >> 8) ^ (*&v90[8 * (v104 ^ v74)] >> 24);
  v106 = (*&v90[8 * (v97 ^ v74)] >> 8) ^ (*&v90[8 * (*(a14 + (v98 >> 24)) ^ v74)] >> 16) ^ (*&v90[8 * (*(a14 + v99) ^ v74)] >> 24) ^ 0x13D53352 ^ *&v90[8 * (*(a14 + BYTE2(v96)) ^ v74) + 4];
  v107 = (*&v90[8 * (v101 ^ v74)] >> 8) ^ (*&v90[8 * (*(a14 + BYTE1(v99)) ^ v74)] >> 16) ^ *&v90[8 * (v100 ^ v74) + 4] ^ 0x67AB6D36 ^ (*&v90[8 * (*(a14 + (v96 >> 24)) ^ v74)] >> 24);
  v108 = v102 ^ 0xC1727CBE ^ *&v90[8 * (v103 ^ v74) + 4];
  v109 = (*&v90[8 * (v105 ^ v74)] >> 16) ^ v84 ^ *&v90[8 * (*(a14 + BYTE2(v98)) ^ v74) + 4] ^ 0xF529E0F0;
  v110 = *(a14 + (v102 ^ 0xBEu ^ v90[8 * (v103 ^ v74) + 4]));
  v111 = *(a14 + v109);
  LODWORD(v99) = *&v90[8 * (*(a14 + BYTE1(v108)) ^ v74) + 4] ^ (*&v90[8 * (*(a14 + BYTE1(v109)) ^ v74)] >> 8) ^ (*&v90[8 * (*(a14 + BYTE1(v106)) ^ v74)] >> 16) ^ (*&v90[8 * (*(a14 + v107) ^ v74)] >> 24);
  v112 = (*&v90[8 * (*(a14 + BYTE2(v107)) ^ v74)] >> 8) ^ *&v90[8 * (*(a14 + (v106 >> 24)) ^ v74) + 4] ^ (*&v90[8 * (*(a14 + (v108 >> 24)) ^ v74)] >> 16) ^ (*&v90[8 * (*(a14 + (v109 >> 24)) ^ v74)] >> 24) ^ 0xE767DEDE;
  v113 = (*&v90[8 * (v110 ^ v74)] >> 24) ^ (*&v90[8 * (*(a14 + (v107 >> 24)) ^ v74)] >> 16) ^ *&v90[8 * (v111 ^ v74) + 4] ^ (*&v90[8 * (*(a14 + v106) ^ v74)] >> 8) ^ 0x52BC5F19;
  v114 = v99 ^ 0x25A7B00;
  v115 = (*&v90[8 * (*(a14 + BYTE2(v106)) ^ v74)] >> 8) ^ *&v90[8 * (*(a14 + BYTE2(v109)) ^ v74) + 4] ^ (*&v90[8 * (*(a14 + BYTE1(v107)) ^ v74)] >> 16) ^ (*&v90[8 * (*(a14 + BYTE2(v108)) ^ v74)] >> 24) ^ 0xB6FA33D3;
  v116 = *(v68 + (BYTE3(*&v90[8 * (v110 ^ v74)]) ^ BYTE2(*&v90[8 * (*(a14 + (v107 >> 24)) ^ v74)]) ^ (v90[8 * (v111 ^ v74) + 4] ^ BYTE1(*&v90[8 * (*(a14 + v106) ^ v74)])) ^ 0x19));
  v117 = *(v68 + (((*&v90[8 * (*(a14 + BYTE2(v106)) ^ v74)] >> 8) ^ *&v90[8 * (*(a14 + BYTE2(v109)) ^ v74) + 4] ^ WORD1(*&v90[8 * (*(a14 + BYTE1(v107)) ^ v74)]) ^ (*&v90[8 * (*(a14 + BYTE2(v108)) ^ v74)] >> 24) ^ 0x33D3) >> 8));
  v118 = *(v68 + BYTE2(v114));
  v119 = *(v68 + ((BYTE1(*&v90[8 * (*(a14 + BYTE2(v107)) ^ v74)]) ^ v90[8 * (*(a14 + (v106 >> 24)) ^ v74) + 4] ^ WORD1(*&v90[8 * (*(a14 + (v108 >> 24)) ^ v74)]) ^ BYTE3(*&v90[8 * (*(a14 + (v109 >> 24)) ^ v74)])) ^ 0xDEu));
  v120 = *(v68 + (v114 >> 24));
  v121 = (*&v90[8 * (v116 ^ v74)] >> 16) ^ (*&v90[8 * (*(v68 + (v112 >> 24)) ^ v74)] >> 8) ^ *&v90[8 * (*(v68 + ((BYTE1(*&v90[8 * (*(a14 + BYTE2(v106)) ^ v74)]) ^ v90[8 * (*(a14 + BYTE2(v109)) ^ v74) + 4] ^ WORD1(*&v90[8 * (*(a14 + BYTE1(v107)) ^ v74)]) ^ BYTE3(*&v90[8 * (*(a14 + BYTE2(v108)) ^ v74)])) ^ 0xD3u)) ^ v74) + 4] ^ 0x56FC1325 ^ (*&v90[8 * (*(v68 + BYTE1(v114)) ^ v74)] >> 24);
  v122 = (*&v90[8 * (v118 ^ v74)] >> 8) ^ *&v90[8 * (*(v68 + (((*&v90[8 * (v110 ^ v74)] >> 24) ^ WORD1(*&v90[8 * (*(a14 + (v107 >> 24)) ^ v74)]) ^ *&v90[8 * (v111 ^ v74) + 4] ^ (*&v90[8 * (*(a14 + v106) ^ v74)] >> 8) ^ 0x5F19) >> 8)) ^ v74) + 4] ^ (*&v90[8 * (v117 ^ v74)] >> 16) ^ (*&v90[8 * (v119 ^ v74)] >> 24) ^ 0x5738DED7;
  v123 = (*&v90[8 * (*(v68 + BYTE2(v112)) ^ v74)] >> 8) ^ *&v90[8 * (*(v68 + (v115 >> 24)) ^ v74) + 4] ^ (*&v90[8 * (*(v68 + (v113 >> 24)) ^ v74)] >> 16) ^ (*&v90[8 * (*(v68 + v99) ^ v74)] >> 24) ^ 0xBF76ACB4;
  v124 = (*&v90[8 * (*(v68 + BYTE2(v115)) ^ v74)] >> 16) ^ (*&v90[8 * (*(v68 + BYTE1(v112)) ^ v74)] >> 24) ^ *&v90[8 * (*(v68 + BYTE2(v113)) ^ v74) + 4] ^ 0x92382E6A ^ (*&v90[8 * (v120 ^ v74)] >> 8);
  v125 = *(v68 + (v121 >> 24));
  v126 = *(v68 + BYTE1(v123));
  v127 = *(v68 + v121);
  v128 = *(v68 + BYTE2(v123));
  v129 = *(v68 + BYTE1(v121));
  LODWORD(v121) = *&v90[8 * (*(v68 + BYTE2(v122)) ^ v74) + 4] ^ (*&v90[8 * (*(v68 + BYTE2(v121)) ^ v74)] >> 24) ^ (*&v90[8 * (*(v68 + v124) ^ v74)] >> 8) ^ (*&v90[8 * (*(v68 + v123) ^ v74)] >> 16);
  LODWORD(v123) = *&v90[8 * (v129 ^ v74) + 4] ^ (*&v90[8 * (*(v68 + (v123 >> 24)) ^ v74)] >> 24) ^ (*&v90[8 * (*(v68 + (((*&v90[8 * (v118 ^ v74)] >> 8) ^ *&v90[8 * (*(v68 + BYTE1(v113)) ^ v74) + 4] ^ WORD1(*&v90[8 * (v117 ^ v74)]) ^ (*&v90[8 * (v119 ^ v74)] >> 24) ^ 0xDED7) >> 8)) ^ v74)] >> 8) ^ (*&v90[8 * (*(v68 + (v124 >> 24)) ^ v74)] >> 16);
  v130 = (*&v90[8 * (*(v68 + BYTE1(v124)) ^ v74)] >> 24) ^ *&v90[8 * (v126 ^ v74) + 4] ^ (*&v90[8 * (*(v68 + (v122 >> 24)) ^ v74)] >> 16) ^ (*&v90[8 * (v125 ^ v74)] >> 8) ^ 0x30A19F45;
  v131 = (*&v90[8 * (v128 ^ v74)] >> 24) ^ (*&v90[8 * (*(v68 + BYTE2(v124)) ^ v74)] >> 16) ^ *&v90[8 * (v127 ^ v74) + 4] ^ (*&v90[8 * (*(v68 + (BYTE1(*&v90[8 * (v118 ^ v74)]) ^ (v90[8 * (*(v68 + BYTE1(v113)) ^ v74) + 4] ^ WORD1(*&v90[8 * (v117 ^ v74)]) ^ BYTE3(*&v90[8 * (v119 ^ v74)])) ^ 0xD7u)) ^ v74)] >> 8) ^ 0xA20A4EAF;
  v132 = *(v68 + v130);
  v133 = v121 ^ 0x3DCF4FFB;
  v134 = v123 ^ 0x629329C;
  v135 = *(v68 + BYTE1(v130));
  v136 = *(v68 + v131);
  v137 = *(v68 + BYTE1(v134));
  v138 = *(v68 + BYTE2(v134));
  v139 = *(v68 + (v134 >> 24));
  v140 = v130 >> 24;
  v141 = *(v68 + BYTE2(v130));
  v142 = *(v68 + v134);
  v143 = *(v68 + v140);
  v144 = *&v90[8 * (*(v68 + (v121 ^ 0xFBu)) ^ v74)];
  v145 = *(v68 + BYTE2(v131));
  LODWORD(v121) = *&v90[8 * (v139 ^ v74) + 4] ^ (*&v90[8 * (*(v68 + BYTE1(v131)) ^ v74)] >> 24) ^ (*&v90[8 * (*(v68 + BYTE2(v133)) ^ v74)] >> 8) ^ (*&v90[8 * (v141 ^ v74)] >> 16);
  v146 = (*&v90[8 * (v132 ^ v74)] >> 16) ^ (v144 >> 8) ^ (*&v90[8 * (*(v68 + (v131 >> 24)) ^ v74)] >> 24) ^ *&v90[8 * (v137 ^ v74) + 4] ^ 0x527E45B2;
  LODWORD(v143) = (*&v90[8 * (*(v68 + (v133 >> 24)) ^ v74)] >> 16) ^ (*&v90[8 * (v142 ^ v74)] >> 8) ^ (*&v90[8 * (v143 ^ v74)] >> 24) ^ *&v90[8 * (v145 ^ v74) + 4];
  v147 = *&v90[8 * (v136 ^ v74) + 4] ^ (*&v90[8 * (v135 ^ v74)] >> 24) ^ (*&v90[8 * (v138 ^ v74)] >> 8) ^ (*&v90[8 * (*(v68 + BYTE1(v133)) ^ v74)] >> 16) ^ 0xBA18976D;
  v148 = v121 ^ 0x651336D2;
  v149 = v143 ^ 0xE6FE0B3A;
  v150 = *(v68 + ((v148 >> (~v143 & 0x10)) >> (v143 & 0x10)));
  LODWORD(v141) = (*&v90[8 * (*(v68 + BYTE1(v149)) ^ v74)] >> 16) ^ (*&v90[8 * (*(v68 + (v121 ^ 0xD2u)) ^ v74)] >> 8) ^ (*&v90[8 * (*(v68 + v146) ^ v74)] >> 24) ^ *&v90[8 * (*(v68 + ((*&v90[8 * (v136 ^ v74) + 4] ^ (*&v90[8 * (v135 ^ v74)] >> 24) ^ (*&v90[8 * (v138 ^ v74)] >> 8) ^ WORD1(*&v90[8 * (*(v68 + BYTE1(v133)) ^ v74)]) ^ 0x976D) >> 8)) ^ v74) + 4];
  v151 = *&v90[8 * (*(v68 + BYTE2(v149)) ^ v74)] >> 24;
  LOBYTE(v116) = v116 & 0x20;
  v152 = (*&v90[8 * (*(v68 + BYTE1(v146)) ^ v74)] ^ 0x6EB17D0772DDBE48uLL) >> v116;
  v153 = (*&v90[8 * (*(v68 + (v147 >> 24)) ^ v74)] >> 24) ^ *&v90[8 * (v150 ^ v74) + 4] ^ (*&v90[8 * (((-*(v68 + BYTE2(v146)) ^ (145 - (*(v68 + BYTE2(v146)) ^ 0x91)) ^ 0x4771118C ^ (*(v68 + BYTE2(v146)) - ((2 * *(v68 + BYTE2(v146))) & 0x118) + 1198592396)) + 145) ^ 0xD0)] >> 16) ^ (*&v90[8 * (*(v68 + (v149 >> 24)) ^ v74)] >> 8) ^ 0x94CA6F75;
  v154 = *(v68 + (((*&v90[8 * (*(v68 + (v147 >> 24)) ^ v74)] >> 24) ^ *&v90[8 * (v150 ^ v74) + 4] ^ WORD1(*&v90[8 * (((-*(v68 + BYTE2(v146)) ^ (145 - (*(v68 + BYTE2(v146)) ^ 0x91)) ^ 0x4771118C ^ (*(v68 + BYTE2(v146)) - ((2 * *(v68 + BYTE2(v146))) & 0x118) + 1198592396)) + 145) ^ 0xD0)]) ^ (*&v90[8 * (*(v68 + (v149 >> 24)) ^ v74)] >> 8) ^ 0x6F75) >> 8));
  v155 = (*&v90[8 * (*(v68 + (v148 >> 24)) ^ v74)] >> 8) ^ *&v90[8 * (*(v68 + v147) ^ v74) + 4] ^ (*&v90[8 * (*(v68 + (v146 >> 24)) ^ v74)] >> 24) ^ 0xD1D25BC5 ^ (*&v90[8 * (*(v68 + (v143 ^ 0x3Au)) ^ v74)] >> 16);
  v156 = (*&v90[8 * (*(v68 + BYTE2(v147)) ^ v74)] >> 8) ^ (*&v90[8 * (*(v68 + BYTE1(v148)) ^ v74)] >> 16) ^ v151 ^ 0x972E8946 ^ (((v152 - ((2 * v152) & 0xA5B05BBB59E51A04) - 0x2D27D222530D72FELL) ^ 0xD2D82DDDACF28D02) >> (v116 ^ 0x20u));
  v157 = v141 ^ 0xBDF78E17;
  v158 = *(v68 + BYTE2(v156));
  v159 = *(v68 + BYTE1(v155));
  LODWORD(v143) = (*&v90[8 * (*(v68 + (v156 >> 24)) ^ v74)] >> 24) ^ (*&v90[8 * (*(v68 + BYTE2(v157)) ^ v74)] >> 16) ^ *&v90[8 * (*(v68 + (v153 >> 24)) ^ v74) + 4] ^ (*&v90[8 * (*(v68 + v155) ^ v74)] >> 8);
  v160 = (*&v90[8 * (*(v68 + BYTE2(v155)) ^ v74)] >> 16) ^ (*&v90[8 * (*(v68 + (v141 ^ 0x17)) ^ v74)] >> 24) ^ (*&v90[8 * (v154 ^ v74)] >> 8) ^ *&v90[8 * (*(v68 + BYTE1(v156)) ^ v74) + 4] ^ 0x8742495E;
  v161 = (*&v90[8 * (*(v68 + BYTE1(v157)) ^ v74)] >> 16) ^ (*&v90[8 * (*(v68 + (v155 >> 24)) ^ v74)] >> 8) ^ *&v90[8 * (*(v68 + BYTE2(v153)) ^ v74) + 4] ^ 0x671B5FDA ^ (((((*&v90[8 * (v158 ^ v74)] ^ 0x187716D07BBAA0) - (*&v90[8 * (v158 ^ v74)] ^ 0xB17D0772DDBE48)) ^ 0xFFFFFFFFFFFFF0) + (*&v90[8 * (v158 ^ v74)] ^ 0x187716D07BBAA0uLL)) >> 24);
  v162 = v143 ^ 0xEDE0460E;
  v163 = *&v90[8 * (*(v68 + v153) ^ v74) + 4] ^ (*&v90[8 * (*(v68 + v156) ^ v74)] >> 24) ^ (*&v90[8 * (*(v68 + (v157 >> 24)) ^ v74)] >> 16) ^ (((((*&v90[8 * (v159 ^ v74)] ^ 0x16D07BBAA0) - (*&v90[8 * (v159 ^ v74)] ^ 0x772DDBE48)) ^ 0xFFFFFFFFF0) + (*&v90[8 * (v159 ^ v74)] ^ 0x16D07BBAA0uLL)) >> 8) ^ 0xADEA5B11;
  v164 = *(v68 + BYTE1(v161));
  v165 = *(v68 + (v143 ^ 0xEu));
  LODWORD(v153) = (*&v90[8 * (*(v68 + BYTE1(v160)) ^ v74)] >> 24) ^ *&v90[8 * (*(v68 + v161) ^ v74) + 4] ^ (*&v90[8 * ((*(v68 + v163) & 0xF0 ^ 0xE91F45B7708D64BLL) & (*(v68 + v163) | 0xED3FFFBFFDCFEF0) ^ (*(v68 + v163) & 4 | 0xE91F45B7708D601))] >> 16);
  v166 = (*&v90[8 * (v164 ^ v74)] >> 24) ^ (*&v90[8 * (*(v68 + BYTE2(v160)) ^ v74)] >> 16) ^ *&v90[8 * (*(v68 + (v162 >> 24)) ^ v74) + 4] ^ (*&v90[8 * (*(v68 + BYTE1(v163)) ^ v74)] >> 8) ^ 0x64C3E7D3;
  v167 = (*&v90[8 * (*(v68 + (v163 >> 24)) ^ v74)] >> 24) ^ (*&v90[8 * (*(v68 + BYTE1(v162)) ^ v74)] >> 16) ^ *&v90[8 * (*(v68 + v160) ^ v74) + 4] ^ (*&v90[8 * (*(v68 + (v161 >> 24)) ^ v74)] >> 8) ^ 0x81B14B5;
  v168 = *&v90[8 * (v165 ^ v74) + 4] ^ (*&v90[8 * (*(v68 + BYTE2(v163)) ^ v74)] >> 8) ^ (*&v90[8 * (*(v68 + (v160 >> 24)) ^ v74)] >> 16) ^ (*&v90[8 * (*(v68 + BYTE2(v161)) ^ v74)] >> 24) ^ 0x1ADAEC84;
  v169 = *(v68 + (((*&v90[8 * (v164 ^ v74)] >> 24) ^ WORD1(*&v90[8 * (*(v68 + BYTE2(v160)) ^ v74)]) ^ *&v90[8 * (*(v68 + (v162 >> 24)) ^ v74) + 4] ^ (*&v90[8 * (*(v68 + BYTE1(v163)) ^ v74)] >> 8) ^ 0xE7D3) >> 8));
  v170 = v153 ^ 0x9D75010C ^ (*&v90[8 * ((*(v68 + BYTE2(v162)) - 2 * (*(v68 + BYTE2(v162)) & 0x91u) + 145) ^ 0xD0)] >> 8);
  v171 = *(v68 + (v168 >> 24));
  v172 = *(v68 + ((v170 >> (v158 & 0x10)) >> (v158 & 0x10 ^ 0x10)));
  v173 = *(v68 + v167);
  v174 = *(v68 + (v170 >> 24));
  v175 = *(v68 + v168);
  v176 = *(v68 + (v166 >> 24));
  v177 = *(v68 + BYTE1(v168));
  LODWORD(v150) = *(v68 + BYTE2(v166));
  v178 = *(v68 + ((v153 ^ 0x10C ^ (*&v90[8 * ((*(v68 + BYTE2(v162)) - 2 * (*(v68 + BYTE2(v162)) & 0x91u) + 145) ^ 0xD0)] >> 8)) >> 8));
  v179 = *(v68 + BYTE2(v168));
  v180 = *(v68 + v170);
  v181 = *(v68 + v166);
  LODWORD(v166) = (*&v90[8 * (v171 ^ v74)] >> 24) ^ (*&v90[8 * (v169 ^ v74)] >> 16);
  LODWORD(v169) = *&v90[8 * (*(v68 + (v167 >> 24)) ^ v74) + 4];
  LODWORD(v177) = *&v90[8 * (*(v68 + BYTE1(v167)) ^ v74) + 4] ^ (*&v90[8 * (v176 ^ v74)] >> 16) ^ (*&v90[8 * (v177 ^ v74)] >> 24);
  LODWORD(v167) = (*&v90[8 * (v181 ^ v74)] >> 16) ^ (*&v90[8 * (v179 ^ v74)] >> 24) ^ *&v90[8 * (*(v68 + BYTE2(v167)) ^ v74) + 4];
  v182 = (*&v90[8 * (v173 ^ v74)] >> 24) ^ (*&v90[8 * (v175 ^ v74)] >> 16) ^ *&v90[8 * (v174 ^ v74) + 4] ^ (*&v90[8 * ((v150 ^ 0x91) - 2 * ((v150 ^ 0x91) & 0xD0)) + 1664] >> 8) ^ 0x2357720D;
  v183 = *(v68 + (BYTE3(*&v90[8 * (v173 ^ v74)]) ^ BYTE2(*&v90[8 * (v175 ^ v74)]) ^ v90[8 * (v174 ^ v74) + 4] ^ BYTE1(*&v90[8 * ((v150 ^ 0x91) - 2 * ((v150 ^ 0x91) & 0xD0)) + 1664]) ^ 0xD));
  v184 = v166 ^ v169 ^ 0x8333944 ^ (*&v90[8 * (v172 ^ v74)] >> 8);
  v185 = v167 ^ 0xA7525A4F ^ (*&v90[8 * (v178 ^ v74)] >> 8);
  v186 = (*&v90[8 * (v180 ^ v74)] >> 8) ^ v177 ^ 0xA9D7F0DA;
  v187 = *(v68 + ((v166 ^ v169 ^ 0x3944 ^ (*&v90[8 * (v172 ^ v74)] >> 8)) >> 8));
  v188 = *(v68 + (((*&v90[8 * (v173 ^ v74)] >> 24) ^ WORD1(*&v90[8 * (v175 ^ v74)]) ^ *&v90[8 * (v174 ^ v74) + 4] ^ (*&v90[8 * ((v150 ^ 0x91) - 2 * ((v150 ^ 0x91) & 0xD0)) + 1664] >> 8) ^ 0x720D) >> 8));
  v189 = *(v68 + (v186 >> 24));
  v190 = *(v68 + BYTE2(v184));
  v191 = v182 >> 24;
  v192 = *(v68 + (v184 >> 24));
  v193 = *(v68 + BYTE2(v182));
  v194 = *(v68 + v184);
  v195 = *(v68 + BYTE2(v185));
  v196 = *(v68 + v186);
  v197 = (*&v90[8 * (v183 ^ v74)] >> 24) ^ (*&v90[8 * (v187 ^ v74)] >> 16) ^ *&v90[8 * (*(v68 + BYTE1(v186)) ^ v74) + 4] ^ (*&v90[8 * (*(v68 + (v185 >> 24)) ^ v74)] >> 8) ^ 0x3BF54E24;
  v198 = (*&v90[8 * (*(v68 + BYTE2(v186)) ^ v74)] >> 8) ^ (*&v90[8 * (*(v68 + v185) ^ v74)] >> 16) ^ *&v90[8 * (v188 ^ v74) + 4] ^ (*&v90[8 * (v190 ^ v74)] >> 24) ^ 0x98B1D96D;
  v199 = (*&v90[8 * (*(v68 + BYTE1(v185)) ^ v74)] >> 24) ^ (*&v90[8 * (v189 ^ v74)] >> 16) ^ *&v90[8 * (v192 ^ v74) + 4] ^ (*&v90[8 * (v193 ^ v74)] >> 8) ^ 0x293C1129;
  v200 = *&v90[8 * (v194 ^ v74) + 4] ^ (*&v90[8 * (v195 ^ v74)] >> 24) ^ (*&v90[8 * (*(v68 + v191) ^ v74)] >> 8) ^ (*&v90[8 * (v196 ^ v74)] >> 16) ^ 0xE5BF977E;
  v201 = *(v68 + ((*&v90[8 * (v194 ^ v74) + 4] ^ (*&v90[8 * (v195 ^ v74)] >> 24) ^ (*&v90[8 * (*(v68 + v191) ^ v74)] >> 8) ^ WORD1(*&v90[8 * (v196 ^ v74)]) ^ 0x977E) >> 8));
  LODWORD(v183) = *(v68 + (v198 >> 24));
  v202 = *(v68 + BYTE2(v200));
  v203 = *(v68 + BYTE2(v197));
  v204 = *(v68 + v199);
  v205 = *(v68 + v198);
  v206 = *(v68 + v197);
  v207 = *(v68 + BYTE1(v199));
  v208 = *(v68 + (v200 >> 24));
  v209 = *(v68 + (v197 >> 24));
  v210 = *(v68 + v200);
  v211 = *&v90[8 * (*(v68 + BYTE1(v197)) ^ v74)];
  v212 = *(v68 + BYTE1(v198));
  v213 = *(v68 + BYTE2(v199));
  v214 = (*&v90[8 * (*(v68 + BYTE2(v198)) ^ v74)] >> 24) ^ (v211 >> 16) ^ *&v90[8 * (*(v68 + (v199 >> 24)) ^ v74) + 4];
  v215 = *&v90[8 * (v201 ^ v74)] >> 8;
  v216 = *&v90[8 * (*(v68 + (v198 >> 24)) ^ v74)];
  v217 = v216 & 0x80000000000000;
  v218 = v216 & 0x7FFFFFFF000000;
  if (v183 >= 0)
  {
    v219 = v217;
  }

  else
  {
    v219 = -v217;
  }

  v220 = (*&v90[8 * (v206 ^ v74)] >> 8) ^ *&v90[8 * (v210 ^ v74) + 4];
  v221 = (*&v90[8 * (v202 ^ v74)] >> 8) ^ *&v90[8 * (v204 ^ v74) + 4] ^ (*&v90[8 * (v203 ^ v74)] >> 16) ^ 0x4F5555F6 ^ (((v219 + 0xA90A11A2A604E8) ^ v218) >> 24);
  v222 = v214 ^ v215 ^ 0xAE0D8757;
  v223 = (*&v90[8 * (v208 ^ v74)] >> 16) ^ (*&v90[8 * (v207 ^ v74)] >> 8) ^ (*&v90[8 * (v209 ^ v74)] >> 24) ^ *&v90[8 * (v205 ^ v74) + 4] ^ 0xA5F5798C;
  v224 = v220 ^ (*&v90[8 * (v213 ^ v74)] >> 24) ^ 0x3915683E ^ (*&v90[8 * ((v212 ^ 0x91) - ((2 * (v212 ^ 0x91)) & 0x1A0)) + 1664] >> 16);
  v225 = (*&v90[8 * (*(v68 + BYTE2(v224)) ^ v74)] >> 16) ^ (*&v90[8 * (*(v68 + BYTE2(v223)) ^ v74)] >> 8) ^ (*&v90[8 * (*(v68 + (v222 >> 24)) ^ v74)] >> 24) ^ *&v90[8 * (*(v68 + (((*&v90[8 * (v202 ^ v74)] >> 8) ^ *&v90[8 * (v204 ^ v74) + 4] ^ WORD1(*&v90[8 * (v203 ^ v74)]) ^ 0x55F6 ^ (((v219 + 0xA90A11A2A604E8) ^ v218) >> 24)) >> 8)) ^ v74) + 4] ^ 0xC1548CE3;
  v226 = &v90[8 * (*(a14 + ((WORD1(*&v90[8 * (*(v68 + BYTE2(v224)) ^ v74)]) ^ BYTE1(*&v90[8 * (*(v68 + BYTE2(v223)) ^ v74)]) ^ BYTE3(*&v90[8 * (*(v68 + (v222 >> 24)) ^ v74)]) ^ v90[8 * (*(v68 + (((*&v90[8 * (v202 ^ v74)] >> 8) ^ *&v90[8 * (v204 ^ v74) + 4] ^ WORD1(*&v90[8 * (v203 ^ v74)]) ^ 0x55F6 ^ (((v219 + 0xA90A11A2A604E8) ^ v218) >> 24)) >> 8)) ^ v74) + 4]) ^ 0xE3u)) ^ v74)];
  v227 = &v90[8 * (*(a14 + ((WORD1(*&v90[8 * (*(v68 + BYTE2(v224)) ^ v74)]) ^ (*&v90[8 * (*(v68 + BYTE2(v223)) ^ v74)] >> 8) ^ (*&v90[8 * (*(v68 + (v222 >> 24)) ^ v74)] >> 24) ^ *&v90[8 * (*(v68 + (((*&v90[8 * (v202 ^ v74)] >> 8) ^ *&v90[8 * (v204 ^ v74) + 4] ^ WORD1(*&v90[8 * (v203 ^ v74)]) ^ 0x55F6 ^ (((v219 + 0xA90A11A2A604E8) ^ v218) >> 24)) >> 8)) ^ v74) + 4] ^ 0x8CE3) >> 8)) ^ v74)];
  v228 = (*&v90[8 * (*(v68 + v222) ^ v74)] >> 24) ^ (*&v90[8 * (*(v68 + (v224 >> 24)) ^ v74)] >> 16) ^ *&v90[8 * (*(v68 + BYTE2(v221)) ^ v74) + 4] ^ (*&v90[8 * (*(v68 + (v223 >> 24)) ^ v74)] >> 8) ^ 0x35C87569;
  v229 = &v90[8 * (*(a14 + (BYTE3(*&v90[8 * (*(v68 + v222) ^ v74)]) ^ BYTE2(*&v90[8 * (*(v68 + (v224 >> 24)) ^ v74)]) ^ v90[8 * (*(v68 + BYTE2(v221)) ^ v74) + 4] ^ BYTE1(*&v90[8 * (*(v68 + (v223 >> 24)) ^ v74)]) ^ 0x69)) ^ v74)];
  v230 = *&v90[8 * (*(v68 + (v221 >> 24)) ^ v74) + 4] ^ (*&v90[8 * (*(v68 + BYTE1(v222)) ^ v74)] >> 24) ^ (*&v90[8 * (*(v68 + v223) ^ v74)] >> 8) ^ (*&v90[8 * (*(v68 + v224) ^ v74)] >> 16) ^ 0xB96C63C8;
  v231 = (*&v90[8 * (*(v68 + BYTE1(v223)) ^ v74)] >> 16) ^ (*&v90[8 * (*(v68 + BYTE1(v224)) ^ v74)] >> 24) ^ (*&v90[8 * (*(v68 + v221) ^ v74)] >> 8) ^ *&v90[8 * (*(v68 + BYTE2(v222)) ^ v74) + 4] ^ 0x584F6DE6;
  v232 = (*&v90[8 * (*(a14 + ((WORD1(*&v90[8 * (*(v68 + BYTE1(v223)) ^ v74)]) ^ (*&v90[8 * (*(v68 + BYTE1(v224)) ^ v74)] >> 24) ^ (*&v90[8 * (*(v68 + v221) ^ v74)] >> 8) ^ *&v90[8 * (*(v68 + BYTE2(v222)) ^ v74) + 4] ^ 0x6DE6) >> 8)) ^ v74)] >> 24) ^ (*&v90[8 * (*(a14 + ((v90[8 * (*(v68 + (v221 >> 24)) ^ v74) + 4] ^ BYTE3(*&v90[8 * (*(v68 + BYTE1(v222)) ^ v74)]) ^ BYTE1(*&v90[8 * (*(v68 + v223) ^ v74)]) ^ WORD1(*&v90[8 * (*(v68 + v224) ^ v74)])) ^ 0xC8u)) ^ v74)] >> 16) ^ *(v226 + 1) ^ (*&v90[8 * (*(a14 + BYTE2(v228)) ^ v74)] >> 8) ^ 0x2868689B;
  v314 = &v90[8 * (*(a14 + (v225 >> 24)) ^ v74)];
  v233 = *(v227 + 1) ^ (*&v90[8 * (*(a14 + BYTE2(v231)) ^ v74)] >> 24) ^ (*&v90[8 * (*(a14 + (v228 >> 24)) ^ v74)] >> 8) ^ (*&v90[8 * (*(a14 + BYTE1(v230)) ^ v74)] >> 16) ^ 0x813E3D80;
  v313 = &v90[8 * (*(a14 + ((v227[4] ^ BYTE3(*&v90[8 * (*(a14 + BYTE2(v231)) ^ v74)]) ^ BYTE1(*&v90[8 * (*(a14 + (v228 >> 24)) ^ v74)]) ^ WORD1(*&v90[8 * (*(a14 + BYTE1(v230)) ^ v74)])) ^ 0x80u)) ^ v74)];
  v234 = *(v229 + 1) ^ (*&v90[8 * (*(a14 + BYTE2(v225)) ^ v74)] >> 24) ^ (*&v90[8 * (*(a14 + BYTE2(v230)) ^ v74)] >> 8) ^ (*&v90[8 * (*(a14 + (v231 >> 24)) ^ v74)] >> 16) ^ 0x573134F;
  v235 = ((&a65[-((2 * a65) & 0x57B3F82302BE98CELL) + 0x2BD9FC11815F4C67] >> 8) ^ 0x2BD9FC11815F4CLL | (&a65[-((2 * a65) & 0x57B3F82302BE98CELL) + 0x2BD9FC11815F4C67] << 56) & 0xF800000000000000 ^ 0x6000000000000000) + 0x76C10FD97F7385B4;
  v236 = __ROR8__(v235 ^ 0x1F2A9FA56C6F9B13, 8);
  v235 ^= 0xA922E16E97F3B6B0;
  v237 = (v236 + v235) ^ 0xFB783D0A3D8311A1;
  v238 = v237 ^ __ROR8__(v235, 61);
  v239 = v238 + __ROR8__(v237, 8);
  v240 = v239 ^ __ROR8__(v238, 61) ^ 0xEFBB819BB2FA9C64;
  v241 = __ROR8__(v240, 61);
  v242 = __ROR8__(v239 - ((2 * v239) & 0xDF77033765F538C8) - 0x10447E644D05639CLL, 8) + v240;
  v243 = &a65[-((2 * (a65 + 8)) & 0x11E9BBC4A4F9715ELL) + 0x8F4DDE2527CB8B7];
  v244 = ((((v243 >> 3 << 59) ^ 0xFAC61C6ADEE82754) & ((v243 >> 8) ^ 0xFACFEAA21DAE8B67) | (v243 >> 8) & 0x39E3952117D8ABLL) ^ 0x52CEFCFFFEFA7FFCLL) + 0x76C10FD97F7385B4;
  v245 = __ROR8__(v244 ^ 0x1F2A9FA56C6F9B13, 8);
  v244 ^= 0xA922E16E97F3B6B0;
  v246 = (v245 + v244) ^ 0xFB783D0A3D8311A1;
  v247 = v246 ^ __ROR8__(v244, 61);
  v248 = (__ROR8__(v246, 8) + v247) ^ 0xEFBB819BB2FA9C64;
  v249 = v248 ^ __ROR8__(v247, 61);
  v250 = v249 + __ROR8__(v248, 8);
  v251 = v250 ^ __ROR8__(v249, 61) ^ 0x2733F0D8EA8D9D50;
  v252 = ((v250 >> 8) ^ 0x2733F0D8EA8D9DLL) + ((v250 << 56) ^ 0x5000000000000000) + v251;
  v253 = v252 ^ __ROR8__(v251, 61);
  v254 = v253 - ((2 * v253) & 0x4E22CC2748CC3898) - 0x58EE99EC5B99E3B4;
  v255 = v254 + __ROR8__(v252 ^ 0xA7116613A4661C4CLL, 8);
  v256 = __ROR8__(v254, 61);
  v257 = v255 ^ v256 ^ 0x7CCF59ECBD803781;
  v258 = (((v255 >> 8) ^ 0x30A7B9418EBC9467 ^ v257) + ((v255 << 56) ^ 0x2300000000000000) + ((2 * (((v255 >> 8) ^ 0x1AFC9E7D99BF6C83) & (v255 ^ v256 ^ 0x6924C4695A66C523) ^ (v255 ^ v256) & 0x1AB0BAB9F0E50A46)) ^ 0x10410052A0C80004)) ^ 0xF3BF57149DD63255;
  v259 = __ROR8__(v258, 8);
  v260 = (v258 - ((2 * v258) & 0xC60B35593E91421ALL) + 0x63059AAC9F48A10DLL) ^ __ROR8__(v257, 61);
  v261 = &a65[-((2 * (a65 + 16)) & 0xA1B50458D14E4C12) - 0x2F257DD39758D9E7];
  v262 = v261 ^ 0x1ED1DE61C029F12ALL;
  v263 = v261 ^ 0x24F93DD2A4E3685FLL;
  if (!v111)
  {
    v262 = 0x31F4A3B2577128DCLL;
  }

  v264 = __ROR8__(v262 & 0xF423BFFECC444E56 ^ 0xC4031C4C88044604 ^ (v262 ^ 0xCE0B5C4DA88ED724) & v263, 8) + 0x76C10FD97F7385B4;
  v265 = __ROR8__(v264 ^ 0x1F2A9FA56C6F9B13, 8);
  v264 ^= 0xA922E16E97F3B6B0;
  v266 = (v265 + v264) ^ 0xFB783D0A3D8311A1;
  v267 = v266 ^ __ROR8__(v264, 61);
  v268 = v267 + __ROR8__(v266, 8);
  v269 = __ROR8__(v268 ^ 0x19989899C3973F60, 8);
  v270 = v268 ^ __ROR8__(v267, 61);
  v271 = (((2 * ((v269 ^ 0x109963B3A41B82FFLL) & (v270 ^ 0x6FBB819BB2FA9C64) ^ v270 & 0x146F40AAA66AEF5CLL)) ^ 0x856011544D51888) + (v270 ^ 0xEB4DA282B08BF1C7 ^ v269)) ^ 0x2733F0D8EA8D9D50;
  v272 = (-v242 ^ (v241 - (v242 ^ v241)) ^ 0xD7C874B453B24A21 ^ (v242 - ((2 * v242) & 0xAF90E968A7649442) - 0x28378B4BAC4DB5DFLL)) + v241;
  v273 = ((v260 ^ 0xE4597683A07F341CLL) + v259) ^ 0xDEAB482C129480D9;
  v274 = 8 * (a65 & 7);
  v272 ^= 0x2733F0D8EA8D9D50uLL;
  v275 = (v272 + __ROR8__(v242 ^ 0x2733F0D8EA8D9D50, 8)) ^ 0xA7116613A4661C4CLL;
  v276 = v275 ^ __ROR8__(v272, 61);
  v277 = (__ROR8__(v275, 8) + v276) ^ 0x4C24C4695A66C523;
  v278 = v277 ^ __ROR8__(v276, 61);
  v279 = (v278 + __ROR8__(v277, 8)) ^ 0xF3BF57149DD63255;
  v280 = (v271 - ((2 * v271) & 0x2F41E0D1F4DAF404) - 0x685F0F97059285FELL) ^ __ROR8__(v270 ^ 0xB0246EA7D5DBAC0ELL, 61) ^ 0x6B5F898BC364F950;
  v281 = (v280 + __ROR8__(v271, 8)) ^ 0xA7116613A4661C4CLL;
  v282 = v281 ^ __ROR8__(v280, 61);
  v283 = (__ROR8__(v281, 8) + v282) ^ 0x4C24C4695A66C523;
  v284 = v283 ^ __ROR8__(v282, 61);
  v285 = v284 + __ROR8__(v283, 8);
  v286 = (((v285 ^ __ROR8__(v284, 61) ^ 0x3BF57149DD63255) + __ROR8__(v285 ^ 0xF3BF57149DD63255, 8)) ^ 0xEAB482C129480D9) << (v274 ^ 0x3Cu);
  v287 = (*&v90[8 * (*(a14 + (v230 >> 24)) ^ v74)] >> 16) ^ (*&v90[8 * (*(a14 + BYTE1(v228)) ^ v74)] >> 8) ^ (*&v90[8 * (*(a14 + v231) ^ v74)] >> 24) ^ *(v314 + 1) ^ 0x881DFF58;
  v288 = (*&v90[8 * (*(a14 + ((WORD1(*&v90[8 * (*(a14 + (v230 >> 24)) ^ v74)]) ^ (*&v90[8 * (*(a14 + BYTE1(v228)) ^ v74)] >> 8) ^ (*&v90[8 * (*(a14 + v231) ^ v74)] >> 24) ^ *(v314 + 2) ^ 0xFF58) >> 8)) ^ v74)] >> 24) ^ (*&v90[8 * (*(a14 + v234) ^ v74)] >> 16) ^ *&v90[8 * (*(a14 + (v232 >> 24)) ^ v74) + 4] ^ (*&v90[8 * (*(a14 + BYTE1(v233)) ^ v74)] >> 8) ^ 0xD2C8496E;
  LODWORD(v270) = *&v90[8 * (*(a14 + v232) ^ v74) + 4] ^ (*&v90[8 * (*(a14 + BYTE2(v287)) ^ v74)] >> 24) ^ (*&v90[8 * (*(a14 + BYTE2(v233)) ^ v74)] >> 8) ^ (*&v90[8 * (*(a14 + BYTE1(v234)) ^ v74)] >> 16);
  v289 = (*&v90[8 * (*(a14 + (v233 >> 24)) ^ v74)] >> 8) ^ *&v90[8 * (*(a14 + BYTE1(v232)) ^ v74) + 4] ^ (*&v90[8 * (*(a14 + BYTE2(v234)) ^ v74)] >> 16) ^ (*&v90[8 * (*(a14 + (v287 >> 24)) ^ v74)] >> 24) ^ 0x25ECB1E7;
  v290 = (*&v90[8 * ((*(a14 + (v234 >> 24)) - 2 * (*(a14 + (v234 >> 24)) & 0x91u) + 145) ^ 0xD0)] >> 8) ^ *(v313 + 1) ^ (*&v90[8 * (*(a14 + ((WORD1(*&v90[8 * (*(a14 + (v230 >> 24)) ^ v74)]) ^ BYTE1(*&v90[8 * (*(a14 + BYTE1(v228)) ^ v74)]) ^ BYTE3(*&v90[8 * (*(a14 + v231) ^ v74)]) ^ v314[4]) ^ 0x58u)) ^ v74)] >> 16) ^ (*&v90[8 * (*(a14 + BYTE2(v232)) ^ v74)] >> 24) ^ 0x85FB87AE;
  v291 = v270 ^ 0xC33AAD70;
  v292 = ((__ROR8__(v279, 8) + (v279 ^ __ROR8__(v278, 61))) ^ 0xDEAB482C129480D9) >> v274;
  v293 = ((16 * ((v273 << (v274 ^ 0x3Cu)) - ((2 * (v273 << (v274 ^ 0x3Cu))) & 0xE64ECB8E824E140)) + 0x732765C741270AD0) ^ 0x732765C741270AD0) + v292;
  v294 = *(a14 + BYTE2(v290)) ^ (*(a63 + (BYTE1(v293) ^ a55 ^ 0xD9u)) + 106) ^ 0xDE;
  v295 = *(a14 + (v288 >> 24)) ^ (*(a63 + (BYTE2(v293) ^ a55 ^ 0xD8u)) + 106) ^ 0x2D;
  LOBYTE(v278) = *(a14 + BYTE1(v291)) ^ (*(a63 + (((((16 * ((v273 << (v274 ^ 0x3C)) - ((2 * (v273 << (v274 ^ 0x3C))) & 0xE824E140)) + 1093077712) ^ 0x41270AD0) + v292) >> 24) ^ a55 ^ 0x28)) + 106) ^ 0x26;
  LOBYTE(v279) = *(a14 + (v290 >> 24)) ^ (*(a63 + (BYTE4(v293) ^ a55 ^ 0x6Au)) + 106) ^ 0x32;
  LOBYTE(v270) = *(a14 + BYTE2(v291)) ^ (*(a63 + (BYTE6(v293) ^ ~a55)) + 106) ^ 0x59;
  v296 = v273 >> v274;
  v297 = *(a14 + BYTE1(v288)) ^ (*(a63 + (((v273 >> v274) ^ a55) ^ 0x3Eu)) + 106) ^ 0x93;
  v298 = ((16 * (v286 - ((2 * v286) & 0x8F4DCFAFA7D2380)) + 0x47A6E7D7D3E91C30) ^ 0x47A6E7D7D3E91C30) + v296;
  v299 = *(a14 + (v291 >> 24)) ^ (*(a63 + ((a57 ^ BYTE1(v298)) ^ 0xDFu)) + 106) ^ 0xCE;
  v300 = *(a14 + BYTE1(v289)) ^ (*(a63 + ((a57 ^ ((((16 * (v286 - ((2 * v286) & 0xFA7D2380)) - 739697616) ^ 0xD3E91C30) + v296) >> 16)) ^ 0x3Cu)) + 106) ^ 0x7B;
  LOBYTE(v296) = *(a14 + v290) ^ (-107 - *(a63 + (a57 ^ 0xD9 ^ ((((16 * (v286 - ((2 * v286) & 0xFA7D2380)) - 739697616) ^ 0xD3E91C30) + v296) >> 24)))) ^ 0x42;
  LOBYTE(v293) = *(a14 + v291) ^ (*(a63 + ((a57 ^ BYTE4(v298)) ^ 7u)) + 106) ^ 0x8D;
  LOBYTE(v284) = *(a14 + BYTE2(v289)) ^ (*(a63 + (a57 ^ 0xB1u ^ BYTE5(v298))) + 106) ^ 0xED;
  LOBYTE(v286) = *(a14 + BYTE1(v290)) ^ (*(a63 + ((a57 ^ BYTE6(v298)) ^ 0xE0u)) + 106) ^ 0xB6;
  v301 = *(&off_1010A0B50 + v315 - 7411) - 474522367;
  LOBYTE(v291) = v301[(*(a14 + (v289 >> 24)) ^ (*(a63 + (v292 ^ a55 ^ 0x89)) + 106)) ^ 0x66];
  v302 = v291 ^ (2 * ~v291) & 0x50;
  v303 = v301[v294] ^ (2 * v301[v294]) & 0x50;
  v304 = v301[v295] ^ (2 * v301[v295]) & 0x50;
  LOBYTE(v285) = v301[v279];
  v305 = v301[v278] ^ (2 * v301[v278]) & 0x50;
  v306 = v301[v270] ^ 0x2C ^ ((2 * v301[v270]) & 0x50 | 0xFFFFFFA3);
  LOBYTE(v270) = v301[(*(a14 + v288) ^ (*(a63 + (BYTE5(v293) ^ a55 ^ 0x8Bu)) + 106)) ^ 8];
  LOBYTE(v278) = v270 ^ (2 * v270) & 0x50;
  v307 = v301[v297] ^ (2 * v301[v297]) & 0x50;
  LOBYTE(v270) = v301[(*(a14 + v289) ^ (*(a63 + (HIBYTE(v293) ^ a55 ^ 0xACu)) + 106)) ^ 0x33];
  v308 = v301[v299] ^ (2 * v301[v299]) & 0x50;
  v309 = v301[v300] ^ (2 * v301[v300]) & 0x50;
  LOBYTE(v293) = v301[v293] ^ (2 * v301[v293]) & 0x50;
  LOBYTE(v273) = v301[v296] ^ ((2 * v301[v296]) & 0x50 | 8);
  LOBYTE(v286) = v301[v286] ^ (2 * v301[v286]) & 0x50;
  v310 = v301[v284] ^ (2 * v301[v284]) & 0x50;
  LOBYTE(v288) = v301[(*(a14 + BYTE2(v288)) ^ (*(a63 + (a57 ^ 0xE4u ^ HIBYTE(v298))) + 106)) ^ 0xEF];
  *a65 = v302 ^ 0xDF;
  a65[1] = v303 ^ 0x8F;
  a65[2] = v304 ^ 0x8F;
  a65[3] = v305 ^ 0x8F;
  a65[4] = v285 ^ (2 * v285) & 0x50 ^ 0x8F;
  a65[6] = v306;
  a65[5] = v278 ^ 0x8F;
  a65[8] = v307 ^ 0x8F;
  a65[9] = v308 ^ 0x8F;
  a65[7] = v270 ^ (2 * v270) & 0x50 ^ 0x8F;
  a65[10] = v309 ^ 0x8F;
  a65[12] = v293 ^ 0x8F;
  a65[11] = v273 ^ 0x87;
  a65[14] = v286 ^ 0x8F;
  a65[13] = v310 ^ 0x8F;
  a65[15] = v288 ^ (2 * v288) & 0x50 ^ 0x8F;
  if (a61 < 0x4A68310D != (a59 + 322835026) < 0x4A68310D)
  {
    v311 = a61 < 0x4A68310D;
  }

  else
  {
    v311 = a59 + 322835026 < a61;
  }

  return (*(a67 + 8 * (v315 ^ (36690 * v311))))(v307 ^ 0xFFFFFF8F, v306, v305 ^ 0xFFFFFF8F, v310 ^ 0xFFFFFF8F, v304 ^ 0xFFFFFF8F);
}

uint64_t sub_1008F98D4@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, char a5@<W4>, char a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v22 = *(a3 + 2 * (v9 ^ v14) + a9);
  v23 = (v9 - (v15 & (2 * v9)) - 35) ^ ((((v9 & LOBYTE(STACK[0xD00])) - ((2 * (v9 & LOBYTE(STACK[0xD00]))) & 0xF4) - 6) & 0xFE) >> 1);
  v24 = v22 ^ (v22 >> 3) ^ (v22 >> 2) ^ (((v22 ^ (v22 >> 3) ^ (v22 >> 2) ^ v10) & STACK[0xDF8]) >> 1);
  v25 = ((a6 ^ v23 & a2 ^ (v23 ^ 0x2E) & a5) ^ 0x80u) >> v16;
  v26 = ((a7 ^ v24) & STACK[0xE08]) >> v16;
  v27 = (((v24 ^ v12) & STACK[0xE68] | a4) ^ 0xBB9F1077) << STACK[0xE70];
  LODWORD(v25) = 295 * (((((v25 - ((2 * v25) & 0xF8) + v20) ^ 0x7C) + ((v23 ^ 0xA0) << STACK[0xDA8])) ^ LODWORD(STACK[0xD38])) ^ a1) + 21240;
  *(STACK[0xC08] + 4 * (v25 - 1144 * ((3754343 * v25) >> 32))) = a8 ^ (((v26 - (v18 & (2 * v26)) + v19) ^ v21) & ~v27 | v27 & v13);
  return (*(STACK[0xED8] + 8 * (((v9 == 255) * v11) ^ v17)))();
}

uint64_t sub_1008F9A28()
{
  v2[47] = v0 + 8;
  v4 = v2[123];
  LODWORD(STACK[0x4BC]) = STACK[0x63C];
  v2[63] = v4;
  STACK[0x460] = 0;
  LODWORD(STACK[0x7A4]) = -371865839;
  v2[1] = 0xDE1EDD63F22226FELL;
  v2[100] = 0;
  v5 = (*(v3 + 8 * (v1 ^ 0xA1F9)))(16);
  v2[94] = v5;
  return (*(v3 + 8 * (((4 * (v5 != 0)) | (8 * (v5 != 0))) ^ v1)))();
}

uint64_t sub_1008F9AD0()
{
  v3 = *(v1 + 8);
  STACK[0x1EB0] = v1 + 8;
  LODWORD(STACK[0x8CC]) = 0;
  return (*(v2 + 8 * (((v3 == 0) * (((v0 - 19659) | 0x910) + 33495)) ^ v0)))();
}

uint64_t sub_1008FA094@<X0>(uint64_t a1@<X8>)
{
  v6 = STACK[0xD20];
  v7 = STACK[0x1C80];
  v8 = 17902189 * (((v2 | 0x908C6D3D) - (v2 | 0x6F7392C2) + 1869845186) ^ 0x1EC37B2D);
  *(v5 - 224) = ((((v1 ^ 0xD185D6A1) + 779757919) ^ ((v1 ^ 0xE8D3B819) + 388777959) ^ (((v3 + 15503) ^ 0x2F7C2845) + (v1 ^ 0xD083A9A9))) + 1159547400) ^ v8;
  *(v5 - 216) = v3 - v8 + 32015;
  *(v5 - 240) = a1;
  *(v5 - 232) = v6;
  *(v5 - 256) = a1;
  *(v5 - 248) = v7;
  v9 = (*(v4 + 8 * (v3 + 35390)))(v5 - 256);
  return (*(v4 + 8 * v3))(v9);
}

uint64_t sub_1008FA20C()
{
  v2[65] = 0;
  v2[147] = 0x7D5B1A4758246678;
  v2[70] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x5141 ^ ((v0 + 28577) | 0x48))))();
}

uint64_t sub_1008FA260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{
  v20 = v18 - 8178;
  v21 = (v17 ^ 0xB504A55E) + a17;
  v22 = (v21 ^ 0xCE7EE153) & (2 * (v21 & 0xEF7CE592)) ^ v21 & 0xEF7CE592;
  v23 = ((2 * (v20 ^ 0x48C649AC ^ v21)) ^ 0x4F751F82) & (v20 ^ 0x48C649AC ^ v21) ^ (2 * (v20 ^ 0x48C649AC ^ v21)) & 0xA7BA8FC0;
  v24 = v23 ^ 0xA08A8041;
  v25 = (v23 ^ 0x7300E80) & (4 * v22) ^ v22;
  v26 = ((4 * v24) ^ 0x9EEA3F04) & v24 ^ (4 * v24) & 0xA7BA8FC0;
  v27 = (v26 ^ 0x86AA0F00) & (16 * v25) ^ v25;
  v28 = ((16 * (v26 ^ 0x211080C1)) ^ 0x7BA8FC10) & (v26 ^ 0x211080C1) ^ (16 * (v26 ^ 0x211080C1)) & 0xA7BA8FC0;
  v29 = v27 ^ 0xA7BA8FC1 ^ (v28 ^ 0x23A88C00) & (v27 << 8);
  v31 = (v21 ^ (2 * ((v29 << 16) & 0x27BA0000 ^ v29 ^ ((v29 << 16) ^ 0xFC10000) & (((v28 ^ 0x841203C1) << 8) & 0x27BA0000 ^ 0x5300000 ^ (((v28 ^ 0x841203C1) << 8) ^ 0x3A8F0000) & (v28 ^ 0x841203C1))))) != ((v20 + 1162648320) & 0xBAB3DFEA ^ 0xAF0964FA) && ((v21 ^ (2 * v29)) & 0xF) == ((v20 + 1660147635) & 0x9D0CB64F) - 45570;
  return (*(v19 + 8 * ((2031 * v31) ^ v20)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_1008FA430()
{
  v2 = (((v0 ^ 0xDE9849B5FEFD3694) + 0x2167B64A0102C96CLL) ^ ((v0 ^ 0x81ED03B9D6D42E6DLL) + 0x7E12FC46292BD193) ^ ((v0 ^ (STACK[0x318] + 225475862) ^ 0x5F754A0CCC8DDA94) - 0x5F754A0CC1FCDFE8)) + STACK[0xAB0] - 0x7D5B1A475824666ELL + 0x154485C9ALL;
  v3 = STACK[0xAA8] - 0x2212D4851128ED98;
  v4 = v2 < 0x6A729589;
  v5 = v2 > v3;
  if (v3 < 0x6A729589 != v4)
  {
    v5 = v4;
  }

  return (*(v1 + 8 * ((22 * !v5) | (STACK[0x318] + 2722))))();
}

uint64_t sub_1008FA5AC@<X0>(int a1@<W8>)
{
  v3 = (v1 ^ 0xB0DFFEC3) & (2 * (v1 & 0x3ADFFC88)) ^ v1 & 0x3ADFFC88;
  v4 = ((2 * (v1 ^ 0xB4CBBFD3)) ^ 0x1C2886B6) & (v1 ^ 0xB4CBBFD3) ^ (2 * (v1 ^ 0xB4CBBFD3)) & 0x8E14435A;
  v5 = v4 ^ 0x82144149;
  v6 = (v4 ^ 0xC000200) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0x38510D6C) & v5 ^ (4 * v5) & 0x8E144358;
  v8 = (v7 ^ 0x8100140) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x86044213)) ^ 0xE14435B0) & (v7 ^ 0x86044213) ^ (16 * (v7 ^ 0x86044213)) & 0x8E144350;
  v10 = v1 ^ (2 * ((((v9 ^ 0xE10424B) << 8) & 0xE140000 ^ (((v9 ^ 0xE10424B) << 8) ^ 0x14430000) & (v9 ^ 0xE10424B) ^ 0x4000000) & (((v9 ^ 0x80040100) & (v8 << 8) ^ v8) << 16) ^ (v9 ^ 0x80040100) & (v8 << 8) ^ v8));
  v11 = ((v10 ^ 0xFDCC453D) - 114224996) ^ ((v10 ^ 0xE32CAFAA) - 405669363) ^ ((v10 ^ 0x243F161F) + 549602234);
  v12 = ((((LOBYTE(STACK[0x537]) ^ 0x41C50FAC) - 1103433644) ^ ((LOBYTE(STACK[0x537]) ^ 0x614E7541) - 1632531777) ^ ((a1 ^ LOBYTE(STACK[0x537]) ^ 0x208B3788u) - 546011796)) + 121) % (1042458903 - v11);
  v13 = ((2 * v12) & 0xB7FFDD36) + (v12 ^ 0xDBFFEE9B) + v11;
  if (v13 - 438474424 >= 0xFB)
  {
    v14 = -776375493;
  }

  else
  {
    v14 = -337901069 - v13;
  }

  v16 = v1 != 0x3CE25E0EC520035FLL && v14 != -776375743;
  return (*(v2 + 8 * ((63 * v16) ^ (a1 - 2685))))();
}

uint64_t sub_1008FA88C@<X0>(uint64_t a1@<X8>)
{
  v4 = ((v3 - 1750) ^ 0x998AE472) + v1;
  v5 = *(a1 + 4) - 1718952961;
  v6 = v4 < 1479617263;
  v7 = v4 > v5;
  if (v6 != v5 < ((v3 - 9691) | 0x1F05) + 1479600994)
  {
    v7 = v6;
  }

  return (*(v2 + 8 * ((56101 * v7) ^ v3)))();
}

uint64_t sub_1008FA910()
{
  v2 = v0 - 34642;
  STACK[0x550] = *(v1 + 8 * v2);
  return (*(v1 + 8 * (v2 ^ 0x33E5)))();
}

uint64_t sub_1008FA96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, char a21, char a22, char a23, char a24, char a25, char a26, char a27, char a28, char a29, char a30, char a31, char a32, char a33, char a34, char a35)
{
  v38 = *(*(v35 + 8 * (v36 - 43891)) - 623120910);
  a21 = *v38 ^ 0x68;
  a22 = v38[1] ^ 0x68;
  a23 = ((v36 ^ 0x13) + 106) ^ 0xD2 ^ v38[2];
  a24 = v38[3] ^ 0x68;
  a25 = v38[4] ^ 0x68;
  a26 = v38[5] ^ 0x68;
  a27 = v38[6] ^ 0x68;
  a28 = v38[7] ^ 0x68;
  a29 = v38[8] ^ 0x68;
  a30 = v38[9] ^ 0x68;
  a31 = v38[10] ^ 0x68;
  a32 = v38[11] ^ 0x68;
  a33 = v38[12] ^ 0x68;
  a34 = v38[13] ^ 0x68;
  a35 = v38[14] ^ 0x68;
  v39 = (*(v37 + 8 * (v36 + 3703)))();
  v40 = (*(v37 + 8 * (v36 + 3163)))(0, &a21, v39);
  return (*(v37 + 8 * ((46 * (v40 == 0)) ^ v36)))(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13);
}

uint64_t sub_1008FAAA0()
{
  STACK[0x1FD0] = v0;
  LODWORD(STACK[0x12D0]) = 795527957;
  return (*(v2 + 8 * (v1 - 1650505868)))();
}

uint64_t sub_1008FAB80()
{
  v4 = STACK[0xF30];
  v5 = 297845113 * ((v1 - 2 * (v1 & 0x1BCD570) - 2118331020) ^ 0xF68FC9EA);
  *(v3 - 216) = 1563160574 - v5;
  *(v3 - 212) = v5 + 1383988684;
  *(v3 - 256) = v4;
  *(v3 - 248) = &STACK[0xAC8];
  *(v3 - 224) = &STACK[0x1EBC];
  *(v3 - 240) = STACK[0x640];
  v6 = (*(v2 + 8 * LODWORD(STACK[0x518])))(v3 - 256);
  return (*(v2 + 8 * (((*(v3 - 232) == v0) * LODWORD(STACK[0x514])) ^ 0x4AE7u)))(v6);
}

uint64_t sub_1008FAD08@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  v9.n128_u64[0] = 0xBEBEBEBEBEBEBEBELL;
  v9.n128_u64[1] = 0xBEBEBEBEBEBEBEBELL;
  v10.n128_u64[0] = 0x6060606060606060;
  v10.n128_u64[1] = 0x6060606060606060;
  return (*(v8 + 8 * ((v7 & 0x7A6ADCF7) - 1650463004)))(v5 + v6 + 16, (v7 & 0x7A6ADCF7u) - 1650463010, a1, a2, a3, a4, a5, v9, v10);
}

uint64_t sub_1008FADE0()
{
  v3 = *(v1 + 8 * v0);
  LODWORD(STACK[0x3F0]) = v2 - 27484;
  LODWORD(STACK[0x3E0]) = v2 + 2118383353;
  LODWORD(STACK[0x3D0]) = v2 - 20957;
  return v3(39383, 4294933509);
}

uint64_t sub_1008FAE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21)
{
  v24 = a21 < 0x7A41A360;
  if (v24 == (v22 - 75725418) < 0x7A41A360)
  {
    v24 = a21 > v22 - 75725418;
  }

  return (*(v23 + 8 * ((((v21 + 14822) ^ 0x2767) * v24) ^ v21)))();
}

uint64_t sub_1008FAEC8()
{
  v5 = ((v2 - 604733620) & 0x240B5DFDu) - 1412 - v1 + 2488405559;
  if (v5 >= v3)
  {
    LODWORD(v5) = v3;
  }

  return (*(v4 + 8 * ((237 * (913628553 - v0 >= v5)) ^ v2)))();
}

uint64_t sub_1008FB094@<X0>(int a1@<W8>)
{
  STACK[0x458] = v1;
  STACK[0x470] = 0;
  return (*(v2 + 8 * (a1 - 1287274597)))();
}

uint64_t sub_1008FB0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v8 + 1288) = a6;
  v9 = *(v8 + 136);
  *(v9 + 108) = 0xE9D5C71100000000;
  *(v9 + 116) = -371865839;
  *(v9 + 104) = 0;
  return (*(v6 + 8 * (v7 + 1261)))();
}

uint64_t sub_1008FB138()
{
  STACK[0x1588] = *(v0 + 296);
  STACK[0x1B68] = v0 + 36;
  STACK[0x1A78] = 0;
  LODWORD(STACK[0xFEC]) = v3;
  STACK[0x1FB0] = 0;
  *(v6 - 256) = v1;
  *(v6 - 244) = v2 - 193924789 * (((v4 | 0xE9E2B0EB) - v4 + (v4 & 0x161D4F10)) ^ 0x5F59828D) - 32982;
  v7 = (*(v5 + 8 * (v2 + 10967)))(v6 - 256);
  return (*(v5 + 8 * v2))(v7);
}

uint64_t sub_1008FB404()
{
  v6 = *(v4 + 8 * (v2 - 20910));
  *(v6 - 1799566007) += v3 - 0x3CE25E0EC5200378;
  return (*(v5 + 8 * ((1983 * (*v0 != ((4721 * (v2 ^ 0x5BF0u)) ^ ((v2 ^ v1) + 0x3CE25E0EC52045F5)))) ^ v2)))();
}

uint64_t sub_1008FB488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = STACK[0x2568];
  v7 = v5 + v4 + 1592543504 + (((*(v6 + 88) ^ 0x76589E73) - 1985519219) ^ ((*(v6 + 88) ^ 0xB1DE7142) + 1310822078) ^ ((*(v6 + 88) ^ 0xDAFA694D) + 621123251));
  STACK[0x7E0] = STACK[0x2568];
  *(v6 + 88) = v7 - ((2 * v7 + 371586346) & 0x3AF90CF8) - 2003861231;
  return (*(a4 + 8 * v5))();
}

uint64_t sub_1008FB570()
{
  v3 = (*(v2 + 8 * (v1 + 19885)))();
  *(v0 + 16) = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1008FB5AC()
{
  v3 = v0 ^ 0x1CA;
  v4 = ((v0 ^ 0x1CA) - 6888) | 0x2480;
  v5 = (v1 ^ 0x85F6E771) + 2047416463;
  v6 = (v5 ^ ((v1 ^ 0x386BDD7C) - 946593148) ^ (v4 + (((v0 ^ 0x1CA) + 1414062624) ^ v1) - 1414078896)) + 887128327;
  v7 = (v5 ^ ((v1 ^ 0x386BDD7C) - 946593148) ^ (v4 + ((v3 + 1414062624) ^ v1) - 1414078896)) == 0x1629946F || v6 == 1258952051;
  v8 = v7;
  v9 = v8 ^ 0x7F;
  if (v7)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  return (*(v2 + 8 * ((37344 * (v9 + v10 == 127)) ^ v3)))();
}

uint64_t sub_1008FB8A0(__n128 a1, uint64_t a2, uint64_t a3, int a4)
{
  v9.n128_u64[0] = (v5 + 13) & 0xF;
  v9.n128_u64[1] = (v5 + 12) & 0xF;
  v10.n128_u64[0] = (v5 + 11) & 0xF;
  v10.n128_u64[1] = (v5 + 10) & 0xF;
  v11.n128_u64[0] = (v5 + 9) & 0xF;
  v11.n128_u64[1] = v6 & 0xF ^ 0xDLL;
  v15.val[0].i64[0] = (v5 + 7) & 0xF;
  v15.val[0].i64[1] = (v5 + 6) & 0xF;
  v15.val[1].i64[0] = (v5 + 5) & 0xF;
  v15.val[1].i64[1] = (v5 + 4) & 0xF;
  v15.val[2].i64[0] = (v5 + 3) & 0xF;
  v15.val[2].i64[1] = (v5 + 2) & 0xF;
  v15.val[3].i64[0] = (v5 + 1) & 0xF;
  v15.val[3].i64[1] = v5 & 0xF;
  v12.n128_u64[0] = 0x1B1B1B1B1B1B1B1BLL;
  v12.n128_u64[1] = 0x1B1B1B1B1B1B1B1BLL;
  v13.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v13.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(v7 + 8 * a4))((a4 - 42), (v5 + 14) & 0xF, (a4 + 13114), v8 + v5 - 16, v4 + v5 - 16, (a4 + 13114) ^ 0x68E3, 214, a1, v9, v10, v11, xmmword_100BC76B0, vqtbl4q_s8(v15, xmmword_100BC76B0), v12, v13);
}

uint64_t sub_1008FB9A4(uint64_t a1, int a2)
{
  v4 = LODWORD(STACK[0x2E4]) + 1304366325;
  if (v4 < 0x5AAC24E0 != (a2 + 1304366325) < 0x5AAC24E0)
  {
    v5 = (a2 + 1304366325) < 0x5AAC24E0;
  }

  else
  {
    v5 = a2 + 1304366325 > v4;
  }

  LODWORD(STACK[0x2D8]) = v5;
  v6 = *(v3 + 8 * (((8 * !v5) | (16 * !v5)) ^ v2));
  LODWORD(STACK[0x30C]) = a2;
  return v6();
}

uint64_t sub_1008FBA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20)
{
  v22 = a10 < 0x822DC3EB;
  if (v22 == a20 > ((v20 + 933619022) & 0xFDFFF7BD ^ 0x4877CFBD))
  {
    v22 = a20 - 2110929941 < a10;
  }

  return (*(v21 + 8 * ((39220 * v22) ^ v20)))();
}

uint64_t sub_1008FBF34(int a1)
{
  v9 = (*(*(v8 + 8) + 4 * v4) ^ v6) + v2;
  *(*(v1 + 8) + 4 * v4) = v9 - (a1 & (2 * v9)) + v6;
  return (*(v7 + 8 * (((32 * (v5 == v4)) | ((v5 == v4) << 6)) ^ v3)))();
}

uint64_t sub_1008FBFB0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  STACK[0x3A0] = &STACK[0x4C4];
  v7 = *(v6 + 8 * (((*(v5 + 24) == a5) * ((a2 + 1287263008) ^ 0x4CBAA736 ^ (a2 - 1553421139) & 0x5C977DB7)) ^ a2));
  STACK[0x328] = a5;
  return v7();
}

void *sub_1008FC0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(STACK[0x5F4]) = v6;
  STACK[0x938] = *(a5 + 8 * (v5 - 31987));
  return (*(a5 + 8 * (v5 - 24895 + v5 - 31987 + 6382)))(&STACK[0x598]);
}

uint64_t sub_1008FC204(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v16 = *(v9 + 8 * ((a7 ^ 0xE57E) - 21173));
  *&STACK[0x3B0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x320] = vdupq_n_s64(0x38uLL);
  *&STACK[0x3D0] = vdupq_n_s64(0x296E95066F186A7EuLL);
  *&STACK[0x2F0] = vdupq_n_s64(v13);
  *&STACK[0x300] = vdupq_n_s64(v7);
  *&STACK[0x2D0] = vdupq_n_s64(v11);
  *&STACK[0x2E0] = vdupq_n_s64(v14);
  *&STACK[0x2B0] = vdupq_n_s64(a4);
  *&STACK[0x2C0] = vdupq_n_s64(v12);
  *&STACK[0x290] = vdupq_n_s64(a2);
  *&STACK[0x2A0] = vdupq_n_s64(v10);
  *&STACK[0x280] = vdupq_n_s64(v15);
  *&STACK[0x380] = vdupq_n_s64(0xC7B84D5584632BB3);
  *&STACK[0x390] = vdupq_n_s64(v8);
  *&STACK[0x270] = vdupq_n_s64(0x784FBA2FAF983AE6uLL);
  *&STACK[0x3C0] = vdupq_n_s64(0xC9F25BB096E59ABALL);
  *&STACK[0x360] = vdupq_n_s64(0x320DA44F691A6545uLL);
  *&STACK[0x370] = vdupq_n_s64(0x16916AF990E79581uLL);
  *&STACK[0x260] = vdupq_n_s64(0xCAD042536AC2AEC8);
  *&STACK[0x350] = vdupq_n_s64(0x7E5B159FEDFE02C6uLL);
  *&STACK[0x250] = xmmword_100BC76B0;
  return v16(0x14BA074A2F986FE5);
}

uint64_t sub_1008FC458()
{
  v3 = LOBYTE(STACK[0x9B3]);
  LODWORD(STACK[0x1CBC]) = v0;
  return (*(v2 + 8 * (((((v1 ^ 0x38EC) + 1650508397) ^ 0x62600D38 ^ (7 * (v1 ^ 0x38EC))) * v3) ^ v1)))();
}

uint64_t sub_1008FC5C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>, __n128 a6@<Q1>, int8x16_t a7@<Q4>, uint64_t a8@<D5>, int8x16_t a9@<Q6>, int8x16_t a10@<Q7>)
{
  v18 = (a2 - 1) & 0xF;
  v20.i64[0] = vqtbl4q_s8(*(&a6 - 1), a7).u64[0];
  v20.i64[1] = a8;
  v21 = vrev64q_s8(veorq_s8(veorq_s8(*(v12 + a2), *(v14 + v18 - 15)), veorq_s8(*(v15 + v18 - 15), *(v13 + v18 - 15))));
  v22 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v21, v21, 8uLL), a10), vmulq_s8(v20, a9)));
  *(a5 + a2) = vextq_s8(v22, v22, 8uLL);
  return (*(v17 + 8 * (((a3 == 0) * a4) ^ v16)))(a1, a2 - 16, a3 - 16);
}

uint64_t sub_1008FC644()
{
  v3 = (((*(v0 + 16) ^ 0x5A6C4608) - 1517045256) ^ ((*(v0 + 16) ^ 0x6A0180E7) - 1778483431) ^ (((v1 + 281779959) | 0x491002A4) + ((v1 - 642259739) ^ *(v0 + 16)) - 865321138)) - 1516273121;
  v4 = (((*(v0 + 12) ^ 0x9E3813F1) + 1640492047) ^ ((*(v0 + 12) ^ 0x23A99EC8) - 598318792) ^ ((*(v0 + 12) ^ 0x54444A28) - 1413761576)) - 1516273121;
  v5 = (v3 < 0xBBC9BB0E) ^ (v4 < 0xBBC9BB0E);
  v6 = v3 < v4;
  if (v5)
  {
    v6 = v4 < 0xBBC9BB0E;
  }

  return (*(v2 + 8 * ((58 * !v6) ^ v1)))();
}

uint64_t sub_1008FC798()
{
  STACK[0x7A0] = v0;
  v3 = (*(v1 + 8 * (v2 ^ 0x4DD8)))(24) == 0;
  return (*(v1 + 8 * ((21 * (((((v2 ^ 0x2920) + 1650467314) ^ v3) & 1) == 0)) ^ v2)))();
}

uint64_t sub_1008FC848()
{
  v2 = LODWORD(STACK[0x8BC]);
  v3 = LODWORD(STACK[0xE14]);
  STACK[0x7A0] = v3;
  STACK[0x7E0] = v2;
  LODWORD(v3) = (126 * (v0 ^ 0xF6) + v2 - v3 - ((2 * (v2 - v3)) & 4)) & 0xF ^ 0xA;
  LODWORD(STACK[0x798]) = v3;
  v4 = 54 - v3;
  v5 = (54 - v3) & 0x10 ^ 0x9F;
  return (*(v1 + 8 * ((397 * ((v4 ^ (2 * ((v4 ^ 0x5A) & (2 * ((v4 ^ 0x5A) & (2 * ((v4 ^ 0x5A) & (2 * ((v4 ^ 0x5A) & (2 * ((v4 ^ 0x5A) & (2 * ((v4 ^ 0x5A) & 0xAA ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5))) != 48)) ^ v0)))();
}

uint64_t sub_1008FCC1C()
{
  *(v4 - 244) = v1 - 193924789 * (((v2 | 0x439302D3) - (v2 | 0xBC6CFD2C) - 1133707988) ^ 0xF52830B5) - 1650503851;
  *(v4 - 256) = v0;
  v5 = (*(v3 + 8 * (v1 ^ 0x62601B06)))(v4 - 256);
  return (*(v3 + 8 * (v1 - 1650506333)))(v5);
}

uint64_t sub_1008FCDA8@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v8 = (a1 + v3);
  *v8 = a2;
  v8[1] = a2;
  return (*(v7 + 8 * (((v5 + v3 == v2) * v6) ^ v4)))();
}

uint64_t sub_1008FCE18(uint64_t a1, int a2)
{
  v7 = v2 > v3;
  if (v7 == v4 - 1317946596 < (a2 ^ 0x8580u) - 1317946651)
  {
    v7 = v5 > v4 - 1317946596;
  }

  return (*(v6 + 8 * ((!v7 * (274 * (a2 ^ 0x8580) - 14679)) ^ a2)))();
}

uint64_t sub_1008FCF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x1D94]) = (v8 ^ 0xAD49) + v7 - 796472163;
  STACK[0x7E0] = STACK[0xB88];
  STACK[0xA58] = *(v10 + 8 * v8);
  return (*(v10 + 8 * (v8 ^ 0x3095)))(a1, a2, a3, a4, a5, 1864610357, a7, v9);
}

uint64_t sub_1008FCFAC(uint64_t a1, unsigned int a2)
{
  v5 = (((v3 ^ 0xA41514FD) + 1542122243) ^ ((v3 ^ 0x25104116) - 621822230) ^ ((v3 ^ 0x9C79D397) + 1669737577)) - 1874778450 + (((*(v2 + 88) ^ 0x4C8FC9B5) - 1284491701) ^ ((*(v2 + 88) ^ 0x8C838340) + 1937538240) ^ ((*(v2 + 88) ^ 0xDD70B051 ^ ((a2 + 10766) | 0x3880)) + 579810167));
  v6 = (v5 ^ 0x82A7C520) & (2 * (v5 & 0xAAB7E64A)) ^ v5 & 0xAAB7E64A;
  v7 = ((2 * (v5 ^ 0xD3E74920)) ^ 0xF2A15ED4) & (v5 ^ 0xD3E74920) ^ (2 * (v5 ^ 0xD3E74920)) & 0x7950AF6A;
  v8 = v7 ^ 0x950A12A;
  v9 = (v7 ^ 0x70000A40) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0xE542BDA8) & v8 ^ (4 * v8) & 0x7950AF68;
  v11 = (v10 ^ 0x6140AD20) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x18100242)) ^ 0x950AF6A0) & (v10 ^ 0x18100242) ^ (16 * (v10 ^ 0x18100242)) & 0x7950AF60;
  v13 = v11 ^ 0x7950AF6A ^ (v12 ^ 0x1100A600) & (v11 << 8);
  *(v2 + 88) = v5 ^ (2 * ((v13 << 16) & 0x79500000 ^ v13 ^ ((v13 << 16) ^ 0x2F6A0000) & (((v12 ^ 0x6850094A) << 8) & 0x79500000 ^ 0x29500000 ^ (((v12 ^ 0x6850094A) << 8) ^ 0x50AF0000) & (v12 ^ 0x6850094A)))) ^ 0x17EA3EE2;
  return (*(v4 + 8 * a2))();
}

uint64_t sub_1008FD24C(int a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20.n128_u64[0] = (v19 + 13) & 0xF;
  v20.n128_u64[1] = (v19 + 12) & 0xF;
  v21.n128_u64[0] = (v19 + 11) & 0xF;
  v21.n128_u64[1] = (v19 + 10) & 0xF;
  v22.n128_u64[0] = (v19 + 9) & 0xF;
  v22.n128_u64[1] = v18 & 0xF ^ 4;
  v25.val[0].i64[0] = (v19 + 7) & 0xF;
  v25.val[0].i64[1] = (v19 + 6) & 0xF;
  v25.val[1].i64[0] = (v19 + 5) & 0xF;
  v25.val[1].i64[1] = (v19 + 4) & 0xF;
  v25.val[2].i64[0] = (v19 + 3) & 0xF;
  v25.val[2].i64[1] = (v19 + 2) & 0xF;
  v25.val[3].i64[0] = (v19 + 1) & 0xF;
  v25.val[3].i64[1] = v19 & 0xF;
  v23.n128_u64[0] = 0x8B8B8B8B8B8B8B8BLL;
  v23.n128_u64[1] = 0x8B8B8B8B8B8B8B8BLL;
  return (*(a18 + 8 * a1))(a2, v20, v21, v22, xmmword_100BC76B0, vqtbl4q_s8(v25, xmmword_100BC76B0), v23);
}

uint64_t sub_1008FD4B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 + 904);
  *(v2 + 792) = *(v1 + 8 * a1);
  return (*(v1 + 8 * ((a1 + 6262) ^ a1)))(v3);
}

uint64_t sub_1008FD57C@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, int a9@<W8>)
{
  *(v19 - 144) = v20 - 1;
  v21 = ((2 * (v9 ^ 0xCE)) ^ 0x8E) & (v9 ^ 0xCE) ^ (2 * (v9 ^ 0xCE)) & v11;
  v22 = (v21 ^ v13) & (4 * (((2 * v9) & 0x12 ^ 9) & v9)) ^ ((2 * v9) & 0x12 ^ 9) & v9;
  v23 = v9 ^ (2 * ((((4 * (v21 ^ 0x41)) ^ v12) & (v21 ^ 0x41) ^ (4 * (v21 ^ 0x41)) & a2) & (16 * v22) ^ v22));
  v24 = (((v23 ^ a4) + a5) ^ ((v23 ^ a6) + a7) ^ ((v23 ^ a8) + v15)) + v17;
  *(a1 + v20 - 1) = v24 * (v9 + a3) + ((v9 + a3) * v18 - 2 * v24) * v14 + 106;
  return (*(v16 + 8 * (((*(v19 - 144) == 0) * v10) ^ a9)))();
}

uint64_t sub_1008FD6D4@<X0>(uint64_t a1@<X8>)
{
  *v1 = 131710222;
  v1[6] = v2;
  v1[7] = 10 * v2 - 1105213338;
  v1[9] = (10 * v2 + 2084540620) * v2 - 1050964558;
  return (*(a1 + 8 * ((27166 * (v3 > 0xE13A1FC9)) ^ (v3 + 506107332))))();
}

uint64_t sub_1008FD764()
{
  LODWORD(STACK[0x24CC]) = v0;
  LODWORD(STACK[0x24D0]) = v0 + v2;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_1008FD844@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  LODWORD(STACK[0xEA8]) = 0;
  LODWORD(STACK[0xE18]) = 0;
  LODWORD(STACK[0xDF8]) = 0;
  LODWORD(STACK[0xDA8]) = 0;
  LODWORD(STACK[0xD18]) = 0;
  LODWORD(STACK[0xE20]) = 0;
  LODWORD(STACK[0xE10]) = 0;
  LODWORD(STACK[0xDB0]) = 0;
  LODWORD(STACK[0xD28]) = 0;
  LODWORD(STACK[0xDB8]) = 0;
  LODWORD(STACK[0xD88]) = 0;
  LODWORD(STACK[0xDC0]) = 0;
  LODWORD(STACK[0xE28]) = 0;
  LODWORD(STACK[0xD30]) = 0;
  LODWORD(STACK[0xDD8]) = 0;
  LODWORD(STACK[0xD58]) = 0;
  LODWORD(STACK[0xD70]) = 0;
  LODWORD(STACK[0xDE0]) = 0;
  LODWORD(STACK[0xD00]) = 0;
  LODWORD(STACK[0xD08]) = 0;
  LODWORD(STACK[0xDA0]) = 0;
  LODWORD(STACK[0xD38]) = 0;
  LODWORD(STACK[0xE08]) = 0;
  LODWORD(STACK[0xD20]) = 0;
  v5 = 122 - 5 * *(STACK[0xF50] + 9);
  STACK[0xE88] = (v2 + 1688817011) & 0x7C8671BD;
  v6 = (v2 + 115) & 0xBD ^ v5 & 0xB0 ^ 0x19;
  v7 = *(STACK[0xEA0] + ((v5 ^ (2 * ((v5 ^ 6) & (2 * ((v5 ^ 6) & (2 * ((v5 ^ 6) & (2 * ((v5 ^ 6) & (2 * ((v5 ^ 6) & (2 * ((v5 ^ 6) & 0x36 ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6))) ^ 0x1Fu));
  v8 = *(a2 + 122);
  STACK[0xC88] = a1 ^ 0xBB0C18CEAFA04FA5;
  *(a2 + 122) = v3 ^ LOBYTE(STACK[0x4E0]) ^ v8 ^ ((((v7 >> 2) | (v7 << 6)) ^ (2 * ((v7 >> 2) | (v7 << 6))) & 0xE4 ^ 0x38) - 1) ^ 0x3B;
  v9 = *(v4 + 8 * (v2 ^ 0x1ED088F4 ^ (12227 * (v2 == 2057350858))));
  LODWORD(STACK[0xDF0]) = 1;
  LODWORD(STACK[0xDE8]) = 1;
  LODWORD(STACK[0xCF8]) = 1;
  LODWORD(STACK[0xD98]) = 1;
  LODWORD(STACK[0xD10]) = 1;
  LODWORD(STACK[0xE00]) = 1;
  LODWORD(STACK[0xD80]) = 1;
  return v9(4294947698, -22206133, STACK[0xBD8], 0xFFFFF20000000000, 184);
}

uint64_t sub_1008FDA64()
{
  v6 = v5[114] + v0;
  v5[74] = v1;
  LODWORD(STACK[0x964]) = v2;
  v5[132] = v6;
  return (*(v4 + 8 * ((30 * (((v6 == 0) ^ (v3 - 1)) & 1)) ^ v3)))();
}

uint64_t sub_1008FDB10@<X0>(int a1@<W5>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  v17 = (v10 + (v3 + v8));
  v18 = (a3 + (v4 + v8));
  v19 = *(*v16 + (*v14 & v13));
  v20 = *v17;
  v21 = ((((v17 ^ v19) & 0x7FFFFFFF) * v7) ^ ((((v17 ^ v19) & 0x7FFFFFFF) * v7) >> 16)) * a1;
  v22 = 1864610357 * ((1864610357 * ((v18 ^ v19) & 0x7FFFFFFF)) ^ ((1864610357 * ((v18 ^ v19) & 0x7FFFFFFF)) >> 16));
  *v18 = *(v12 + (v21 >> 24)) ^ v20 ^ *(v11 + (v21 >> 24)) ^ *((v21 >> 24) + a2 + 5) ^ *(v12 + (v22 >> 24)) ^ *(v11 + (v22 >> 24)) ^ *((v22 >> 24) + a2 + 5) ^ v21 ^ v22 ^ (BYTE3(v21) * v9) ^ (BYTE3(v22) * v9);
  if (v5 < 0xDB8EF917 != (v8 + 1) > 0x247106E8)
  {
    v23 = v5 < 0xDB8EF917;
  }

  else
  {
    v23 = v8 - 611387112 < v5;
  }

  return (*(v15 + 8 * ((10108 * v23) ^ v6)))();
}

uint64_t sub_1008FDC84()
{
  v4 = *(v2 + 8 * (v0 ^ 0x6DBF));
  STACK[0x248] = v4;
  v5 = *(v1 + 8 * ((102 * (*(v4 - 1401400883) == ((((v0 - 44) | 0x52) ^ 0xE4) + ((v0 + 20) | 0xA)))) ^ v0));
  STACK[0x238] = *(v2 + 8 * (v0 ^ 0x64B7));
  v6 = *(v2 + 8 * (v0 - 22245));
  STACK[0x318] = v6 - 1799566047;
  STACK[0x330] = v6 - 1799565999;
  STACK[0x240] = v3;
  return v5();
}

uint64_t sub_1008FDD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  *(v59 + 24) = v60;
  *(v55[3] + 32) = v55[4];
  *(a52 + 40) = v55[1] + *(a52 + 40) - 0x3CE25E0EC5200378;
  v62 = (((LOBYTE(STACK[0x2AF]) ^ 0x9A69BE6C67052A9CLL) + 0x6596419398FAD564) ^ ((LOBYTE(STACK[0x2AF]) ^ 0xFF82CF64292471F2) + 0x7D309BD6DB8E0ELL) ^ (((v56 + 363847972) & 0xEA4FDFAF) + (LOBYTE(STACK[0x2AF]) ^ 0x65EB71084E215BFALL) - 0x65EB71084E21AEA9)) + 0x73B4913AF7C22BB8;
  v55[1] = 0x79C4BC1D8A4006F0 - v55[1];
  v55[2] = v62;
  *(v55 + v58) = 0x3CE25E0EC5200378;
  v63 = v57 + 0x7675AD3D525C117ALL;
  STACK[0x298] = v63;
  return (*(v61 + 8 * (v56 ^ (973 * (v63 == 0)))))(0x7D309BD6DB8E0ELL, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55);
}

uint64_t sub_1008FDE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, unsigned int a10, int a11, void *a12)
{
  v18 = *(v13 + 16);
  v19 = 193924789 * (((&a9 | 0x1C6AE4B0) - (&a9 | 0xE3951B4F) - 476767409) ^ 0xAAD1D6D6);
  a10 = v17 - 234441400 - v19;
  a11 = (v12 - ((2 * v12) & 0x4E27DE8C) + 655617862) ^ v19;
  a9 = v14 + 10;
  (*(v15 + 8 * (v17 ^ 0xBE5)))(&a9);
  v20 = 193924789 * (((&a9 | 0x3B76E64F) - &a9 + (&a9 & 0xC48919B0)) ^ 0x8DCDD429);
  v21 = (*(v14 + 5) - ((2 * *(v14 + 5)) & 0x4E27DE8C) + 655617862) ^ v20;
  a9 = (v14 + 84);
  a10 = v17 - 234441400 - v20;
  a11 = v21;
  (*(v15 + 8 * (v17 + 1507)))(&a9);
  a9 = v16;
  a10 = v17 + 1012831759 * (((&a9 | 0x9B9696B9) - (&a9 | 0x64696946) + 1684629830) ^ 0x8B058033) - 502851161;
  a12 = v14;
  v22 = (*(v15 + 8 * (v17 + 1449)))(&a9);
  *v18 = *v14;
  v18[1] = *(v14 + 1);
  v18[2] = *(v14 + 2);
  v18[3] = *(v14 + 3);
  v18[4] = *(v14 + 4);
  v18[5] = *(v14 + 5);
  v18[6] = *(v14 + 6);
  v18[7] = *(v14 + 7);
  v18[8] = *(v14 + 8);
  v18[9] = *(v14 + 9);
  v18[10] = *(v14 + 10);
  v18[11] = *(v14 + 11);
  v18[12] = *(v14 + 12);
  v18[13] = *(v14 + 13);
  v18[14] = *(v14 + 14);
  memset(v14, 70, 15);
  v14[2] = 0;
  return (*(v15 + 8 * v17))(v22, 0);
}

uint64_t sub_1008FE0B0@<X0>(unint64_t a1@<X0>, int a2@<W8>)
{
  STACK[0x14F8] = *(v5 + 8 * v2);
  STACK[0x2608] = a1;
  STACK[0x2610] = v4;
  STACK[0x2618] = v3;
  return (*(v5 + 8 * ((55266 * (((*(a1 + 24) - (a2 - 2022377793)) | (a2 - 2022377793 - *(a1 + 24))) >= 0)) ^ (a2 - 1650493016))))();
}

uint64_t sub_1008FE10C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v9 = v7 ^ 0xD6C2;
  a4 = v6;
  a5 = v6;
  a3 = a1;
  a6 = (v7 ^ 0xD6C2) - 906386353 * ((((2 * &a3) | 0x2D3C6FA0) - &a3 + 1768015920) ^ 0xA79FFAF4) + 13806;
  v10 = (*(v8 + 8 * ((v7 ^ 0xD6C2) + 35539)))(&a3);
  return (*(v8 + 8 * v9))(v10);
}

uint64_t sub_1008FE1C8(uint64_t a1, int8x16_t a2, double a3, int32x4_t a4)
{
  v32 = vld4q_s8(v5);
  v8 = veorq_s8(v32.val[0], a2);
  v9 = vmovl_high_u8(v8);
  v10 = vmovl_u8(*v8.i8);
  v11 = veorq_s8(v32.val[1], a2);
  _Q22 = vmovl_high_u8(v11);
  _Q21 = vmovl_u8(*v11.i8);
  v14 = vshll_n_s16(*_Q21.i8, 0x10uLL);
  __asm { SHLL2           V21.4S, V21.8H, #0x10 }

  v19 = vshll_n_s16(*_Q22.i8, 0x10uLL);
  __asm { SHLL2           V22.4S, V22.8H, #0x10 }

  v20 = veorq_s8(v32.val[2], a2);
  v21 = vmovl_u8(*v20.i8);
  v22 = vmovl_high_u8(v20);
  v32.val[0] = veorq_s8(v32.val[3], a2);
  v32.val[1] = vmovl_u8(*v32.val[0].i8);
  v32.val[2] = vmovl_u16(*v32.val[1].i8);
  v32.val[1] = vmovl_high_u16(v32.val[1]);
  v32.val[0] = vmovl_high_u8(v32.val[0]);
  v32.val[3] = vmovl_u16(*v32.val[0].i8);
  v32.val[0] = vmovl_high_u16(v32.val[0]);
  v23 = vorrq_s8(vorrq_s8(vorrq_s8(_Q22, vshll_high_n_u16(v22, 8uLL)), vshlq_n_s32(vmovl_high_u16(v9), 0x18uLL)), v32.val[0]);
  v24 = vorrq_s8(vorrq_s8(vorrq_s8(v19, vshll_n_u16(*v22.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v9.i8), 0x18uLL)), v32.val[3]);
  v25 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v21, 8uLL)), vshlq_n_s32(vmovl_high_u16(v10), 0x18uLL)), v32.val[1]);
  v26 = vorrq_s8(vorrq_s8(vorrq_s8(v14, vshll_n_u16(*v21.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v10.i8), 0x18uLL)), v32.val[2]);
  v27 = vdupq_n_s32(0x69D5C71Bu);
  v32.val[0] = veorq_s8(vandq_s8(v23, v27), (*v32.val & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
  v32.val[3] = veorq_s8(vandq_s8(v24, v27), (*&v32.val[3] & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
  v32.val[1] = veorq_s8(vandq_s8(v25, v27), (*&v32.val[1] & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
  v32.val[2] = veorq_s8(vandq_s8(v26, v27), (*&v32.val[2] & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
  v28 = vaddq_s32(vsubq_s32(v23, vaddq_s32(v32.val[0], v32.val[0])), a4);
  v29 = vaddq_s32(vsubq_s32(v24, vaddq_s32(v32.val[3], v32.val[3])), a4);
  v32.val[0] = vaddq_s32(vsubq_s32(v25, vaddq_s32(v32.val[1], v32.val[1])), a4);
  v30 = vaddq_s32(vsubq_s32(v26, vaddq_s32(v32.val[2], v32.val[2])), a4);
  *v7 = v30.i32[0];
  *&STACK[0x2E4] = vextq_s8(v30, v32.val[0], 4uLL);
  *&STACK[0x2F4] = vextq_s8(v32.val[0], v29, 4uLL);
  *&STACK[0x304] = vextq_s8(v29, v28, 4uLL);
  STACK[0x314] = vextq_s8(v28, v28, 4uLL).u64[0];
  LODWORD(STACK[0x31C]) = v28.i32[3];
  return (*(v6 + 8 * v4))(a1, 0xFFFFFFFEA764D5A8, 0xFFFFFFFEA764D590, 0xFFFFFFFEA764D588);
}

uint64_t sub_1008FE558()
{
  v2 = *(v1 - 188);
  v3 = (*(v0 + 8 * (v2 + 5145)))();
  return (*(v0 + 8 * (v2 - 20392)))(v3);
}

uint64_t sub_1008FE610(char a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(v19 - 136) = a1 & 0xF ^ 8;
  *(v19 - 128) = *(a18 + 8 * v18);
  *(v19 - 120) = a1 & 0x10;
  v20.n128_u64[0] = (a1 + 13) & 0xF;
  v20.n128_u64[1] = (a1 + 12) & 0xF;
  v21.n128_u64[0] = (a1 + 11) & 0xF;
  v21.n128_u64[1] = (a1 + 10) & 0xF;
  v22.n128_u64[0] = (a1 + 9) & 0xF;
  v22.n128_u64[1] = *(v19 - 136);
  v26.val[0].i64[0] = (a1 + 7) & 0xF;
  v26.val[0].i64[1] = (a1 + 6) & 0xF;
  v26.val[1].i64[0] = (a1 + 5) & 0xF;
  v26.val[1].i64[1] = (a1 + 4) & 0xF;
  v26.val[2].i64[0] = (a1 + 3) & 0xF;
  v26.val[2].i64[1] = (a1 + 2) & 0xF;
  v26.val[3].i64[0] = (a1 + 1) & 0xF;
  v26.val[3].i64[1] = a1 & 0xF;
  v23.n128_u64[0] = 0x1919191919191919;
  v23.n128_u64[1] = 0x1919191919191919;
  v24.n128_u64[0] = 0x7575757575757575;
  v24.n128_u64[1] = 0x7575757575757575;
  return (*(v19 - 128))(a2, v20, v21, v22, xmmword_100BC76B0, vqtbl4q_s8(v26, xmmword_100BC76B0), v23, v24);
}

uint64_t sub_1008FE710()
{
  v2 = *(STACK[0x850] - 0x217E172EFA1E81CLL);
  v3 = 155453101 * ((~(v1 - 256) & 0x956C9895 | (v1 - 256) & 0x6A936768) ^ 0x734A835A);
  *(v1 - 256) = v3 ^ 0x7D6D5D82;
  v4 = STACK[0x4C0];
  *(v1 - 248) = &STACK[0x1264];
  *(v1 - 240) = v4;
  *(v1 - 200) = v2;
  *(v1 - 212) = v3 + 2069619737;
  *(v1 - 208) = 1777291161 - v3;
  *(v1 - 224) = 0;
  LOWORD(STACK[0x2F68]) = 16376 - 1709 * ((~(v1 - 256) & 0x9895 | (v1 - 256) & 0x6768) ^ 0x835A);
  *(v1 - 232) = v3 ^ 0xD60D0A57;
  *(v1 - 228) = v3 ^ 0x7CD6B3C8;
  v5 = (*(v0 + 415520))(v1 - 256);
  return (*(v0 + 8 * ((2 * (*(v1 - 204) != -371865839)) | 0x7E59u)))(v5);
}

uint64_t sub_1008FE844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = __ROR8__((v4 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v6 = *(a1 + 8 * v3);
  v7 = ((v5 - 0x296E95066F186A7FLL) | 0x7F8CF47A0DDD2A80) - ((v5 - 0x296E95066F186A7FLL) | 0x80730B85F222D57FLL) - 0x7F8CF47A0DDD2A81;
  v8 = v7 ^ 0x78AEED99F1FA1EF2;
  v7 ^= 0xCC25BA5576C6B2FCLL;
  v9 = __ROR8__(v8, 8);
  v10 = (((2 * (v9 + v7)) & 0x4757308570142184) - (v9 + v7) - 0x23AB9842B80A10C3) ^ 0xC8EE60F7686D80D8;
  v11 = v10 ^ __ROR8__(v7, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0x2C378843F9A46E98;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0xBD7D2DE9C10AA16ALL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x82B08017BF43C069;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((2 * (v18 + v17)) | 0x6FA00F307AD285CELL) - (v18 + v17) + 0x482FF867C296BD19) ^ 0x1D4DDD22DF8D969BLL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (((2 * (v21 + v20)) | 0x43EA8C014D72D45CLL) - (v21 + v20) + 0x5E0AB9FF594695D2) ^ 0x2E4767435862069DLL;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v4[10] = (((v24 + v23 - ((2 * (v24 + v23)) & 0x2D8EF7625F92FAD0) + 0x16C77BB12FC97D68) ^ 0x8DDB0F964AD77270) >> (8 * ((v4 + 10) & 7u))) ^ HIBYTE(a2) ^ 0xD4;
  v25 = __ROR8__((v4 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = -2 - (((0x296E95066F186A7ELL - v25) | 0x812ECE5E5373C3DBLL) + ((v25 - 0x296E95066F186A7FLL) | 0x7ED131A1AC8C3C24));
  v27 = v26 ^ 0x860CD7BDAF54F7A9;
  v26 ^= 0x3287807128685BA7uLL;
  v28 = (__ROR8__(v27, 8) + v26) ^ 0x14BA074A2F986FE5;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x2C378843F9A46E98;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (((2 * (v32 + v31)) | 0x32AE8F99AB71EA50) - (v32 + v31) - 0x195747CCD5B8F528) ^ 0xA42A6A2514B25442;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((v35 + v34) | 0x7320A01F0299C0C1) - ((v35 + v34) | 0x8CDF5FE0FD663F3ELL) - 0x7320A01F0299C0C2) ^ 0xF1902008BDDA00A8;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (v38 + v37 - ((2 * (v38 + v37)) & 0x1E2ADB414A9307EELL) - 0x70EA925F5AB67C09) ^ 0x2588B71A47AD578BLL;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (((2 * (v41 + v40)) & 0x751C15CDE44619C2) - (v41 + v40) + 0x4571F5190DDCF31ELL) ^ 0xCAC3D45AF3079FADLL;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  v4[11] = (((v44 + v43 - ((2 * (v44 + v43)) & 0x52D1D86046E744A6) + 0x2968EC302373A253) ^ 0xB2749817466DAD4BLL) >> (8 * ((v4 + 11) & 7u))) ^ BYTE6(a2) ^ 0xA5;
  v45 = __ROR8__((v4 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v46 = (0x296E95066F186A7ELL - v45) & 0x794A1A89743498B1 | (v45 - 0x296E95066F186A7FLL) & 0x84B5E5768BCB674ELL;
  v47 = v46 ^ 0x7C68036A8813ACC3;
  v46 ^= 0xC8E354A60F2F00CDLL;
  v48 = (__ROR8__(v47, 8) + v46) ^ 0x14BA074A2F986FE5;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0x2C378843F9A46E98;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = __ROR8__(v50, 8);
  v53 = (((2 * (v52 + v51)) & 0xA249D6CC0BCCA700) - (v52 + v51) - 0x5124EB6605E65381) ^ 0x13A639703B130D15;
  v54 = v53 ^ __ROR8__(v51, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0x82B08017BF43C069;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0xAA9DDABAE2E4D47CLL;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ 0x8FB22143FEDB6CB3;
  v4[12] = (((__ROR8__(v59, 8) + (v59 ^ __ROR8__(v58, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v4 + 12) & 7u))) ^ BYTE5(a2) ^ 0x3E;
  v60 = __ROR8__((v4 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v61 = ((0x296E95066F186A7ELL - v60) & 0x696F4673D36DE29DLL) + v60 - 0x296E95066F186A7FLL - ((v60 - 0x296E95066F186A7FLL) & 0x6D6F4673D36DE29DLL);
  v62 = __ROR8__(v61 ^ 0x6A4D5F902F4AD6EFLL, 8);
  v61 ^= 0xDEC6085CA8767AE1;
  v63 = (v62 + v61 - ((2 * (v62 + v61)) & 0x1B3949B08886F780) + 0xD9CA4D844437BC0) ^ 0x1926A3926BDB1425;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ 0x2C378843F9A46E98;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (((v67 + v66) | 0xD4F2363B6EF523) - ((v67 + v66) | 0xFF2B0DC9C4910ADCLL) - 0xD4F2363B6EF524) ^ 0xBDA9DFDFFA645449;
  v69 = v68 ^ __ROR8__(v66, 61);
  v70 = __ROR8__(v68, 8);
  v71 = (((v70 + v69) & 0x91B969E0C19E5375 ^ 0x9008600000825375) + ((v70 + v69) & 0x6E46961F3E61AC8ALL ^ 0x2A44140330410C81) - 1) ^ 0x38FCF4148F809F9CLL;
  v72 = v71 ^ __ROR8__(v69, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0xAA9DDABAE2E4D47CLL;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = __ROR8__(v73, 8);
  v76 = (v75 + v74 - ((2 * (v75 + v74)) & 0xA35BB6A5474A5D2CLL) - 0x2E5224AD5C5AD16ALL) ^ 0x5E1FFA115D7E4225;
  v77 = __ROR8__(v76, 8);
  v78 = __ROR8__(v74, 61);
  v4[13] = (((((2 * ((v77 + (v76 ^ v78)) ^ 0xD3B9B851F2097674)) & 0x6AEA922499CF30AALL) - ((v77 + (v76 ^ v78)) ^ 0xD3B9B851F2097674) + 0x4A8AB6EDB31867AALL) ^ 0x22F7A9B240F1EC6) >> (8 * ((v4 + 13) & 7u))) ^ BYTE4(a2) ^ 0x4E;
  v79 = __ROR8__((v4 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v80 = -2 - (((0x296E95066F186A7ELL - v79) | 0xE66D92511BC5A5BLL) + ((v79 + 0x6916AF990E79581) | 0xF19926DAEE43A5A4));
  v81 = v80 ^ 0x944C0C6ED9B6E29;
  v80 ^= 0xBDCF970A6AA7C227;
  v82 = __ROR8__(v81, 8);
  v83 = (((2 * (v82 + v80)) | 0xB84EA8E40647B16) - (v82 + v80) - 0x5C2754720323D8BLL) ^ 0x1178720D0FAA526ELL;
  v84 = v83 ^ __ROR8__(v80, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ 0x2C378843F9A46E98;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8);
  v88 = (((2 * (v87 + v86)) | 0x44A18314D53B083ELL) - (v87 + v86) - 0x2250C18A6A9D841FLL) ^ 0x9F2DEC63AB972575;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = __ROR8__(v88, 8);
  v91 = (v90 + v89 - ((2 * (v90 + v89)) & 0x6FB26939647901DALL) + 0x37D9349CB23C80EDLL) ^ 0xB569B48B0D7F4084;
  v92 = v91 ^ __ROR8__(v89, 61);
  v93 = __ROR8__(v91, 8);
  v94 = __ROR8__((((2 * (v93 + v92)) | 0x106BFCB5893A8DF0) - (v93 + v92) + 0x77CA01A53B62B908) ^ 0x22A824E026799284, 8);
  v95 = (((2 * (v93 + v92)) | 0x106BFCB5893A8DF0) - (v93 + v92) + 0x77CA01A53B62B908) ^ 0x22A824E026799284 ^ __ROR8__(v92, 61);
  v96 = (((2 * (v94 + v95)) | 0x80494BCDB9BD7234) - (v94 + v95) + 0x3FDB5A19232146E6) ^ 0x4F9684A52205D5A9;
  v97 = v96 ^ __ROR8__(v95, 61);
  v98 = __ROR8__(v96, 8);
  v4[14] = (((((2 * (v98 + v97)) & 0x1E5C145EFE2F4014) - (v98 + v97) + 0x70D1F5D080E85FF5) ^ 0xEBCD81F7E5F650EDLL) >> (8 * ((v4 + 14) & 7u))) ^ BYTE3(a2) ^ 0x27;
  v99 = __ROR8__((v4 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v100 = (0x296E95066F186A7ELL - v99) & 0x680551F87DC54615 | (v99 - 0x296E95066F186A7FLL) & 0x95FAAE07823AB9EALL;
  v101 = __ROR8__(v100 ^ 0x6D27481B81E27267, 8);
  v100 ^= 0xD9AC1FD706DEDE69;
  v102 = (v101 + v100) ^ 0x14BA074A2F986FE5;
  v103 = v102 ^ __ROR8__(v100, 61);
  v104 = __ROR8__(v102, 8);
  v105 = (((v104 + v103) & 0xB90C1C681EE8883BLL ^ 0x90080C481068080ALL) + ((v104 + v103) & 0x46F3E397E11777C4 ^ 0x42C00380601273C1) - 1) ^ 0xFEFF878B89DE1552;
  v106 = v105 ^ __ROR8__(v103, 61);
  v107 = __ROR8__(v105, 8);
  v108 = (((2 * (v107 + v106)) & 0x56F7B2AC5F994E46) - (v107 + v106) - 0x2B7BD9562FCCA724) ^ 0x69F90B401139F9B6;
  v109 = v108 ^ __ROR8__(v106, 61);
  v110 = __ROR8__(v108, 8);
  v111 = (((v110 + v109) ^ 0xA671FAF5A6DC8D77 | 0x988BE54C1108E42CLL) - ((v110 + v109) ^ 0xA671FAF5A6DC8D77 | 0x67741AB3EEF71BD3) + 0x67741AB3EEF71BD3) ^ 0xBC4A9FAE0897A932;
  v112 = v111 ^ __ROR8__(v109, 61);
  v113 = __ROR8__(v111, 8);
  v114 = (((2 * (v113 + v112)) & 0xF5BA5EC2CE3F62A4) - (v113 + v112) + 0x522D09E98E04EADLL) ^ 0xAFBF0A247A049AD1;
  v115 = v114 ^ __ROR8__(v112, 61);
  v116 = __ROR8__(v114, 8);
  v117 = (v116 + v115 - ((2 * (v116 + v115)) & 0x939EF87BFA8DDB10) - 0x363083C202B91278) ^ 0x467D5D7E039D813BLL;
  v4[15] = (((__ROR8__(v117, 8) + (v117 ^ __ROR8__(v115, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v4 + 15) & 7u))) ^ BYTE2(a2) ^ 0x30;
  v118 = __ROR8__((v4 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v119 = ((2 * (v118 - 0x296E95066F186A7FLL)) | 0xFA59C6CB8F42CD78) - (v118 - 0x296E95066F186A7FLL) + 0x2D31C9A385E9944;
  v120 = v119 ^ 0xFA0EFA863B8652CELL;
  v119 ^= 0x4E85AD4ABCBAFEC0uLL;
  v121 = (__ROR8__(v120, 8) + v119) ^ 0x14BA074A2F986FE5;
  v122 = v121 ^ __ROR8__(v119, 61);
  v123 = (__ROR8__(v121, 8) + v122) ^ 0x2C378843F9A46E98;
  v124 = v123 ^ __ROR8__(v122, 61);
  v125 = (__ROR8__(v123, 8) + v124) ^ 0xBD7D2DE9C10AA16ALL;
  v126 = v125 ^ __ROR8__(v124, 61);
  v127 = __ROR8__(v125, 8);
  v128 = (v127 + v126 - ((2 * (v127 + v126)) & 0x5542AB1B317F268CLL) + 0x2AA1558D98BF9346) ^ 0xA811D59A27FC532FLL;
  v129 = v128 ^ __ROR8__(v126, 61);
  v130 = (__ROR8__(v128, 8) + v129) ^ 0xAA9DDABAE2E4D47CLL;
  v131 = v130 ^ __ROR8__(v129, 61);
  v132 = (__ROR8__(v130, 8) + v131) ^ 0x8FB22143FEDB6CB3;
  v133 = v132 ^ __ROR8__(v131, 61);
  v134 = __ROR8__(v132, 8);
  v4[16] = (((((2 * (v134 + v133)) | 0x3FA3A1DB0D738C12) - (v134 + v133) + 0x602E2F12794639F7) ^ 0x4CDA4CAE3A7C911) >> (8 * ((v4 + 16) & 7u))) ^ BYTE1(a2) ^ 0x82;
  v135 = (__ROR8__((v4 + 17) & 0xFFFFFFFFFFFFFFF8, 8) - 0x296E95066F186A7FLL) & 0xF9FFFFFFFFFFFFFFLL;
  v136 = v135 ^ 0x12219E3FC273472;
  v135 ^= 0xB5A94E2F7B1B987CLL;
  v137 = __ROR8__(v136, 8);
  v138 = __ROR8__((((2 * (v137 + v135)) & 0xF7A4AF9285CC9B58) - (v137 + v135) - 0x7BD257C942E64DADLL) ^ 0x9097AF7C9281DDB6, 8);
  v139 = (((2 * (v137 + v135)) & 0xF7A4AF9285CC9B58) - (v137 + v135) - 0x7BD257C942E64DADLL) ^ 0x9097AF7C9281DDB6 ^ __ROR8__(v135, 61);
  v140 = (v138 + v139) ^ 0x2C378843F9A46E98;
  v141 = v140 ^ __ROR8__(v139, 61);
  v142 = (__ROR8__(v140, 8) + v141) ^ 0xBD7D2DE9C10AA16ALL;
  v143 = v142 ^ __ROR8__(v141, 61);
  v144 = (__ROR8__(v142, 8) + v143) ^ 0x82B08017BF43C069;
  v145 = v144 ^ __ROR8__(v143, 61);
  v146 = (__ROR8__(v144, 8) + v145) ^ 0xAA9DDABAE2E4D47CLL;
  v147 = v146 ^ __ROR8__(v145, 61);
  v148 = (__ROR8__(v146, 8) + v147) ^ 0x8FB22143FEDB6CB3;
  v149 = v148 ^ __ROR8__(v147, 61);
  v150 = __ROR8__(v148, 8);
  v4[17] = (((((2 * (v150 + v149)) | 0x1729776ADB68C76ALL) - (v150 + v149) + 0x746B444A924B9C4BLL) ^ 0x1088CF9208AA6CADLL) >> (8 * ((v4 + 17) & 7u))) ^ a2 ^ 0xB3;
  return v6();
}

uint64_t sub_1008FF7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, int a17, int a18, int a19, int a20, int a21, int a22, int a23, int a24, int a25, int a26, int a27, int a28, int a29, int a30, int a31, int a32, int a33, int a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  LODWORD(STACK[0x27C]) = LODWORD(STACK[0x2B8]) ^ LODWORD(STACK[0x2A4]);
  LODWORD(STACK[0x280]) = LODWORD(STACK[0x290]) ^ LODWORD(STACK[0x288]);
  LODWORD(STACK[0x284]) = LODWORD(STACK[0x2C4]) ^ LODWORD(STACK[0x2A8]);
  LODWORD(STACK[0x288]) = LODWORD(STACK[0x2AC]) ^ LODWORD(STACK[0x2CC]);
  LODWORD(STACK[0x28C]) ^= LODWORD(STACK[0x2BC]);
  LODWORD(STACK[0x290]) = LODWORD(STACK[0x2B4]) ^ LODWORD(STACK[0x294]);
  *(v130 - 148) = 0;
  LODWORD(STACK[0x294]) = LODWORD(STACK[0x2E0]) ^ a105;
  LODWORD(STACK[0x298]) ^= LODWORD(STACK[0x29C]);
  LODWORD(STACK[0x29C]) = a115 ^ a109;
  LODWORD(STACK[0x2A0]) ^= a125;
  LODWORD(STACK[0x2A4]) = a103 ^ a117;
  LODWORD(STACK[0x2A8]) = LODWORD(STACK[0x2B0]) ^ a129;
  LODWORD(STACK[0x2AC]) = LODWORD(STACK[0x208]) ^ a108;
  LODWORD(STACK[0x2B0]) = LODWORD(STACK[0x2D8]) ^ a107;
  LODWORD(STACK[0x2B4]) = LODWORD(STACK[0x2D0]) ^ LODWORD(STACK[0x2DC]);
  LODWORD(STACK[0x2B8]) = LODWORD(STACK[0x2D4]) ^ a123;
  LODWORD(STACK[0x2BC]) = LODWORD(STACK[0x2C8]) ^ LODWORD(STACK[0x2C0]);
  LODWORD(STACK[0x2C0]) = LODWORD(STACK[0x264]) ^ a128;
  LODWORD(STACK[0x2C4]) = LODWORD(STACK[0x268]) ^ a127;
  LODWORD(STACK[0x2C8]) = LODWORD(STACK[0x26C]) ^ LODWORD(STACK[0x2E8]);
  LODWORD(STACK[0x2CC]) = LODWORD(STACK[0x2E4]) ^ a113;
  LODWORD(STACK[0x2D0]) = a116 ^ a106;
  LODWORD(STACK[0x2D4]) = LODWORD(STACK[0x214]) ^ LODWORD(STACK[0x260]);
  LODWORD(STACK[0x2D8]) = LODWORD(STACK[0x2EC]) ^ a100;
  LODWORD(STACK[0x2DC]) = a121 ^ a114;
  LODWORD(STACK[0x2E0]) = a122 ^ a102;
  LODWORD(STACK[0x2E4]) = LODWORD(STACK[0x25C]) ^ a110;
  LODWORD(STACK[0x2E8]) = LODWORD(STACK[0x270]) ^ a120;
  LODWORD(STACK[0x2EC]) = LODWORD(STACK[0x20C]) ^ LODWORD(STACK[0x278]);
  LODWORD(STACK[0x2F0]) = LODWORD(STACK[0x204]) ^ a101;
  LODWORD(STACK[0x2F4]) = LODWORD(STACK[0x274]) ^ LODWORD(STACK[0x200]);
  LODWORD(STACK[0x2F8]) = LODWORD(STACK[0x258]) ^ a111;
  LODWORD(STACK[0x2FC]) = a112 ^ a104;
  LODWORD(STACK[0x300]) = LODWORD(STACK[0x254]) ^ a130;
  LODWORD(STACK[0x304]) = a93 ^ a98;
  LODWORD(STACK[0x308]) = a42 ^ a75;
  LODWORD(STACK[0x31C]) = a27 ^ a91;
  LODWORD(STACK[0x320]) = a35 ^ a81;
  LODWORD(STACK[0x324]) = a49 ^ a94;
  LODWORD(STACK[0x328]) = a21 ^ a61;
  LODWORD(STACK[0x32C]) = a22 ^ a96;
  LODWORD(STACK[0x330]) = a48 ^ a53;
  LODWORD(STACK[0x338]) = a77 ^ a82;
  LODWORD(STACK[0x33C]) = a56 ^ a95;
  LODWORD(STACK[0x340]) = a55 ^ a86;
  LODWORD(STACK[0x344]) = a40 ^ a79;
  LODWORD(STACK[0x348]) = a24 ^ a80;
  LODWORD(STACK[0x34C]) = a41 ^ a76;
  LODWORD(STACK[0x350]) = a39 ^ a78;
  LODWORD(STACK[0x354]) = a32 ^ a67;
  LODWORD(STACK[0x358]) = a51 ^ a62;
  LODWORD(STACK[0x35C]) = a38 ^ a45;
  LODWORD(STACK[0x360]) = a26 ^ a31;
  LODWORD(STACK[0x364]) = a46 ^ a97;
  LODWORD(STACK[0x368]) = a25 ^ a50;
  LODWORD(STACK[0x36C]) = LODWORD(STACK[0x314]) ^ a59;
  LODWORD(STACK[0x370]) = LODWORD(STACK[0x310]) ^ a44;
  LODWORD(STACK[0x37C]) = LODWORD(STACK[0x30C]) ^ a85;
  LODWORD(STACK[0x380]) = a54 ^ a60;
  LODWORD(STACK[0x384]) = a87 ^ a88;
  LODWORD(STACK[0x388]) = a34 ^ a43;
  LODWORD(STACK[0x38C]) = a23 ^ a70;
  LODWORD(STACK[0x398]) = a18 ^ a83;
  LODWORD(STACK[0x3A0]) = a47 ^ a73;
  LODWORD(STACK[0x3A4]) = a58 ^ a63;
  LODWORD(STACK[0x3A8]) = a29 ^ a72;
  LODWORD(STACK[0x3C0]) = a16 ^ a74;
  LODWORD(STACK[0x3C4]) = a28 ^ a65;
  LODWORD(STACK[0x3C8]) = a19 ^ a57;
  LODWORD(STACK[0x334]) = a52 ^ a71;
  LODWORD(STACK[0x498]) = a30 ^ a68;
  LODWORD(STACK[0x480]) = LODWORD(STACK[0x394]) ^ LODWORD(STACK[0x390]);
  LODWORD(STACK[0x490]) = a20 ^ a92;
  LODWORD(STACK[0x48C]) = a33 ^ a66;
  LODWORD(STACK[0x478]) = a17 ^ a69;
  v132 = 4322 * (a8 ^ 0x1441);
  v133 = *(v130 - 128);
  *(v130 - 152) = v132;
  v134 = -317974869 * ((v132 - 123) ^ v133) + 2073706084;
  v135 = (((v134 % 0x101) ^ v134) + 6600169) ^ 0x18CDFA2;
  LODWORD(STACK[0x390]) = 1451 * (v133 ^ 0x36) + 2600192 - 12096 * (((2840587 * (1451 * (v133 ^ 0x36u) + 2600192)) >> 32) >> 3);
  v136 = v135 + 1210725468;
  v135 += 1184715962;
  v137 = ((v135 ^ 0x96A1B990) - 1761185927) ^ v136;
  v138 = (v137 - 366339130) ^ v136;
  v139 = v137 - 366339130 + (v135 ^ 0x96A1B990);
  v140 = v137 - 366339130 + (v135 ^ 0x97066F79);
  v141 = (v137 - 58) ^ *(v130 - 127);
  LODWORD(STACK[0x314]) = 1451 * (v141 ^ 0x17) + 16760501 - 12096 * (((22724695 * (1451 * (v141 ^ 0x17u) + 16760501)) >> 32) >> 6);
  v142 = ((v140 - v139 + (((v137 - 317974869 * v141 + 919936797) % 0x101) ^ (v137 - 317974869 * v141 + 919936797))) ^ v138) + 1184715962;
  v143 = v142 ^ v139;
  v144 = v142 + v138;
  v145 = v142 ^ v140;
  v146 = (v143 + v140) ^ v144;
  v147 = v146 - 366339130 + v145;
  v148 = v146 - 366339130 + v143;
  v149 = (v146 - 366339130) ^ v144;
  LOBYTE(v144) = (v146 - 58) ^ *(v130 - 126);
  LODWORD(STACK[0x310]) = 1451 * (v144 ^ 0x81) + 10416729 - 12096 * (((2840587 * (1451 * (v144 ^ 0x81u) + 10416729)) >> 32) >> 3);
  v150 = ((v147 - v148 + (((v146 - 317974869 * v144 + 919936797) % 0x101) ^ (v146 - 317974869 * v144 + 919936797))) ^ v149) + 1184715962;
  v151 = v150 ^ v148;
  v152 = v150 + v149;
  v153 = v150 ^ v147;
  v154 = (v151 + v147) ^ v152;
  v155 = v154 - 366339130 + v153;
  v156 = v154 - 366339130 + v151;
  v157 = (v154 - 366339130) ^ v152;
  v158 = (v154 - 366339130) ^ *(v130 - 125);
  LODWORD(STACK[0x278]) = v158;
  v159 = ((v155 - v156 + (((v154 - 317974869 * v158 + 919936797) % 0x101) ^ (v154 - 317974869 * v158 + 919936797))) ^ v157) + 1184715962;
  v160 = v159 + v157;
  v161 = v159 ^ v156;
  v162 = v159 ^ v155;
  v163 = (v161 + v155) ^ v160;
  v164 = (v163 - 366339130) ^ v160;
  v165 = v163 - 366339130 + v162;
  v166 = v163 - 366339130 + v161;
  LOBYTE(v149) = (v163 - 58) ^ *(v130 - 124);
  LODWORD(STACK[0x30C]) = 1451 * (v149 ^ 0xF) + 2600192 - 12096 * (((2840587 * (1451 * (v149 ^ 0xFu) + 2600192)) >> 32) >> 3);
  v167 = ((v165 - v166 + (((v163 - 317974869 * v149 + 919936797) % 0x101) ^ (v163 - 317974869 * v149 + 919936797))) ^ v164) + 1184715962;
  v168 = v167 ^ v166;
  v169 = v167 + v164;
  v170 = v167 ^ v165;
  v171 = (v168 + v165) ^ v169;
  v172 = v171 - 366339130 + v170;
  v173 = v171 - 366339130 + v168;
  v174 = (v171 - 366339130) ^ v169;
  v175 = (v171 - 58) ^ *(v130 - 123);
  LODWORD(STACK[0x274]) = v175;
  LODWORD(STACK[0x270]) = 1451 * (v175 ^ 0x67) + 16760501 - 12096 * (((22724695 * (1451 * (v175 ^ 0x67u) + 16760501)) >> 32) >> 6);
  v176 = ((v172 - v173 + (((v171 - 317974869 * v175 + 919936797) % 0x101) ^ (v171 - 317974869 * v175 + 919936797))) ^ v174) + 1184715962;
  v177 = v176 + v174;
  v178 = v176 ^ v173;
  v179 = v176 ^ v172;
  v180 = (v178 + v172) ^ v177;
  v181 = v180 - 366339130 + v178;
  v182 = v180 - 366339130 + v179;
  v183 = (v180 - 366339130) ^ v177;
  LOBYTE(v149) = (v180 - 58) ^ *(v130 - 122);
  LODWORD(STACK[0x26C]) = 1451 * (v149 ^ 0x18) + 10416729 - 12096 * (((2840587 * (1451 * (v149 ^ 0x18u) + 10416729)) >> 32) >> 3);
  v184 = ((v182 - v181 + (((v180 - 317974869 * v149 + 919936797) % 0x101) ^ (v180 - 317974869 * v149 + 919936797))) ^ v183) + 1184715962;
  v185 = v184 ^ v181;
  v186 = v184 + v183;
  v187 = v184 ^ v182;
  v188 = (v185 + v182) ^ v186;
  v189 = v188 - 366339130 + v185;
  v190 = v188 - 366339130 + v187;
  v191 = (v188 - 366339130) ^ v186;
  v192 = (v188 - 366339130) ^ *(v130 - 121);
  v193 = v188 - 317974869 * ((v188 - 58) ^ *(v130 - 121)) + 919936797;
  v194 = ((v190 - v189 + ((v193 % 0x101) ^ v193)) ^ v191) + 1184715962;
  v195 = v194 ^ v189;
  v196 = v194 + v191;
  v197 = v194 ^ v190;
  v198 = (v195 + v190) ^ v196;
  v199 = v198 - 366339130 + v195;
  v200 = (v198 - 366339130) ^ v196;
  v201 = v198 - 366339130 + v197;
  LOBYTE(v149) = (v198 - 58) ^ *(v130 - 120);
  LODWORD(STACK[0x268]) = 1451 * (v149 ^ 0x92) + 2600192 - 12096 * (((2840587 * (1451 * (v149 ^ 0x92u) + 2600192)) >> 32) >> 3);
  v202 = ((v201 - v199 + (((v198 - 317974869 * v149 + 919936797) % 0x101) ^ (v198 - 317974869 * v149 + 919936797))) ^ v200) + 1184715962;
  v203 = v202 + v200;
  v204 = v202 ^ v199;
  v205 = v202 ^ v201;
  v206 = (v204 + v201) ^ v203;
  v207 = v206 - 366339130 + v204;
  v208 = v206 - 366339130 + v205;
  v209 = (v206 - 366339130) ^ v203;
  v210 = (v206 - 58) ^ *(v130 - 119);
  LODWORD(STACK[0x264]) = v210;
  LODWORD(STACK[0x260]) = 1451 * (v210 ^ 0x33) + 16760501 - 12096 * (((22724695 * (1451 * (v210 ^ 0x33u) + 16760501)) >> 32) >> 6);
  v211 = ((v208 - v207 + (((v206 - 317974869 * v210 + 919936797) % 0x101) ^ (v206 - 317974869 * v210 + 919936797))) ^ v209) + 1184715962;
  v212 = v211 + v209;
  v213 = v211 ^ v207;
  v214 = v211 ^ v208;
  v215 = (v213 + v208) ^ v212;
  v216 = (v215 - 366339130) ^ v212;
  v217 = v215 - 366339130 + v213;
  v218 = v215 - 366339130 + v214;
  LOBYTE(v149) = (v215 - 58) ^ *(v130 - 118);
  LODWORD(STACK[0x25C]) = 1451 * (v149 ^ 0x28) + 10416729 - 12096 * (((2840587 * (1451 * (v149 ^ 0x28u) + 10416729)) >> 32) >> 3);
  v219 = ((v218 - v217 + (((v215 - 317974869 * v149 + 919936797) % 0x101) ^ (v215 - 317974869 * v149 + 919936797))) ^ v216) + 1184715962;
  v220 = v219 + v216;
  v221 = v219 ^ v217;
  v222 = v219 ^ v218;
  v223 = ((v221 + v218) ^ v220) - 366339130;
  v224 = v223 ^ *(v130 - 117);
  v225 = v224 ^ 0xFFFFFFF4;
  v226 = v223 + v222;
  v227 = v223 ^ v220;
  v228 = v223 + v221;
  v229 = v223 - 317974869 * (((2 * (v224 ^ 0xFFFFFFF4)) & 0xA ^ 8) + (v224 ^ 0xADF3B605));
  v230 = ((v226 - v228 + ((v229 % 0x101) ^ v229)) ^ v227) + 1184715962;
  v231 = v230 + v227;
  v232 = v230 ^ v228;
  v233 = v230 ^ v226;
  v234 = (v232 + v226) ^ v231;
  v235 = v234 - 366339130 + v233;
  v236 = v234 - 366339130 + v232;
  v237 = (v234 - 366339130) ^ v231;
  LOBYTE(v149) = (v234 - 58) ^ *(v130 - 116);
  v238 = 1451 * (v149 ^ 0xF6) + 2600192 - 12096 * (((2840587 * (1451 * (v149 ^ 0xF6u) + 2600192)) >> 32) >> 3);
  v239 = ((v235 - v236 + (((v234 - 317974869 * v149 + 919936797) % 0x101) ^ (v234 - 317974869 * v149 + 919936797))) ^ v237) + 1184715962;
  v240 = v239 + v237;
  v241 = v239 ^ v236;
  v242 = (v241 + v235) ^ v240;
  v243 = v242 - 366339130 + v241;
  v244 = v242 - 366339130 + (v239 ^ v235);
  LODWORD(STACK[0x394]) = a8;
  v245 = (v242 - 366339130) ^ v240;
  LOBYTE(v235) = (v242 - 58) ^ *(v130 - 115);
  v246 = v235;
  LODWORD(STACK[0x254]) = 1451 * (v235 ^ 0x28) + 16760501 - 12096 * (((22724695 * (1451 * (v235 ^ 0x28u) + 16760501)) >> 32) >> 6);
  v247 = ((v244 - v243 + (((v242 - 317974869 * v246 + 919936797) % 0x101u) ^ (v242 - 317974869 * v246 + 919936797))) ^ v245) + 1184715962;
  LOBYTE(v242) = (((v244 - v243 + (((v242 - 317974869 * v246 + 919936797) % 0x101u) ^ (v242 - 85 * v246 + 29))) ^ v245) - 70) ^ v243;
  v248 = v247 + v245;
  v249 = ((v247 ^ v243) + v244) ^ (v247 + v245);
  v250 = v249 - 58;
  v251 = ((v249 - 58) ^ *(v130 - 114));
  v252 = v249 - 317974869 * v251;
  v253 = 1451 * ((~(2 * ((v249 - 366339130) ^ *(v130 - 114))) & 0x16) + (v251 ^ 0x1CC4));
  v254 = v253 - 12096 * (((2840587 * v253) >> 32) >> 3);
  LODWORD(STACK[0x258]) = (*(v131 + 4 * LODWORD(STACK[0x314])) ^ 0x55DC54D0) + (v141 ^ 0xF0) + (v141 ^ 0x9338547);
  v255 = *(v131 + 4 * LODWORD(STACK[0x310]));
  v256 = ((v255 ^ 0x200A5792) - 537548690) ^ ((v255 ^ 0xAD3A2A3A) + 1388697030) ^ ((v255 ^ 0xD8EC2978) + 655611528);
  v257 = 3623 * (LODWORD(STACK[0x278]) ^ 7) + 11158840;
  v258 = STACK[0x3B0];
  LODWORD(STACK[0x314]) = LODWORD(STACK[0x278]) ^ *(STACK[0x3B0] + v257 - 7552 * (((9099507 * v257) >> 32) >> 4));
  v259 = v175 ^ 0x80;
  v260 = *(v131 + 4 * LODWORD(STACK[0x26C]));
  v261 = (*(v131 + 4 * LODWORD(STACK[0x270])) ^ 0x55DC54D0) + (LODWORD(STACK[0x274]) ^ 0x9338537) + v259;
  v262 = v131;
  v263 = ((v260 ^ 0xD0896072) + 796303246) ^ ((v260 ^ 0xBA462709) + 1169807607) ^ ((v260 ^ 0x3F1313AB) - 1058214827);
  LODWORD(STACK[0x310]) = v192 ^ *(v258 + 3623 * (v192 ^ 0xCD) + 11158840 - 7552 * (((9099507 * (3623 * (v192 ^ 0xCDu) + 11158840)) >> 32) >> 4));
  v264 = (*(v131 + 4 * LODWORD(STACK[0x260])) ^ 0x55DC54D0) + (LODWORD(STACK[0x264]) ^ 0x9338563) + (v210 ^ 0xD4);
  v265 = *(v131 + 4 * LODWORD(STACK[0x25C]));
  v266 = 3623 * (v224 ^ 0x78) + 11158840 - 7552 * (((9099507 * (3623 * (v224 ^ 0x78u) + 11158840)) >> 32) >> 4);
  v267 = *(v131 + 4 * LODWORD(STACK[0x390]));
  v268 = v258;
  LODWORD(STACK[0x390]) = v225 ^ *(v258 + v266);
  v269 = v267 ^ 0x1D4F54C6;
  v270 = *(v262 + 4 * LODWORD(STACK[0x30C])) ^ 0x1D4F54C6;
  v271 = *(v262 + 4 * LODWORD(STACK[0x268])) ^ 0x1D4F54C6;
  v272 = *(v262 + 4 * v238) ^ 0x1D4F54C6;
  LOBYTE(v258) = v249 - 58 + (v247 ^ v244);
  v273 = (*(v262 + 4 * LODWORD(STACK[0x254])) ^ 0x55DC54D0) + (v235 ^ 0x9338578) + (v235 ^ 0xCF);
  LOBYTE(v249) = ((v258 - (v249 - 58 + v242) + ((v252 + 29 - (v252 + 919936797) / 0x101u) ^ (v252 + 29))) ^ (v249 - 58) ^ v248) - 70;
  LOBYTE(v258) = ((v249 ^ (v250 + v242)) + v258) ^ (v249 + (v250 ^ v248));
  v274 = (((v265 ^ 0x29C0894F) - 700483919) ^ ((v265 ^ 0x6A5792DF) - 1784124127) ^ ((v265 ^ 0x164B4F40) - 374034240)) + 1002001991;
  LOBYTE(v265) = (v258 - 58) ^ *(v130 - 113) ^ *(v268 + 3623 * (((v258 - 58) ^ *(v130 - 113)) ^ 0xBD) + 11158840 - 7552 * (((9099507 * (3623 * (((v258 - 58) ^ *(v130 - 113)) ^ 0xBDu) + 11158840)) >> 32) >> 4));
  v275 = LODWORD(STACK[0x3D4]) ^ a119 ^ a124 ^ v269 ^ (-2109195952 * v269) ^ (LODWORD(STACK[0x258]) + 1) ^ 0xA4648649 ^ (v256 + 1002001991);
  LODWORD(v258) = LODWORD(STACK[0x3D4]) ^ LODWORD(STACK[0x234]) ^ a118 ^ v270 ^ (-2109195952 * v270) ^ (v261 + 1) ^ 0xF0E5C923 ^ (v263 + 1002001991);
  v276 = LODWORD(STACK[0x23C]) ^ LODWORD(STACK[0x3D4]) ^ LODWORD(STACK[0x238]) ^ v271 ^ (-2109195952 * v271) ^ (v264 + 1) ^ 0xA50CF5CF ^ v274;
  v277 = LODWORD(STACK[0x3D4]) ^ LODWORD(STACK[0x240]) ^ LODWORD(STACK[0x228]) ^ v272 ^ (-2109195952 * v272) ^ (v273 + 1) ^ 0x876E8E88 ^ ((((*(v262 + 4 * v254) ^ 0x8ED70B6) - 149778614) ^ ((*(v262 + 4 * v254) ^ 0xB44CA6B5) + 1270045003) ^ ((*(v262 + 4 * v254) ^ 0xE97D82D3) + 377650477)) + 1002001991);
  v278 = *(v130 - 192);
  LODWORD(v262) = *(v278 + 4 * BYTE2(v275));
  v279 = (((a126 ^ 0xB732C769) + 1221408919) ^ ((a126 ^ 0xEE9AD5F1) + 291842575) ^ ((a126 ^ 0x2FE2B43F) - 803386431)) + (((v262 ^ 0x33C8C123) - 868794659) ^ ((v262 ^ 0x8ECD4EF7) + 1899147529) ^ ((v262 ^ 0x26AC0D8A) - 648809866)) + ((2 * ((v262 ^ 0x23884410) & (a126 ^ 0x764AA6A7) ^ a126 & 0x3821C64E)) ^ 0x9FFEF3F3) + 301213958;
  v280 = *(v130 - 160);
  v281 = *(v130 - 200);
  v282 = *(v130 - 184);
  LODWORD(v262) = LODWORD(STACK[0x27C]) ^ *(v280 + 4 * HIBYTE(v275)) ^ *(v281 + 4 * BYTE1(v276)) ^ *(v282 + 4 * (v258 ^ LODWORD(STACK[0x310]))) ^ 0x50307644 ^ *(v278 + 4 * BYTE2(v277));
  v283 = LODWORD(STACK[0x22C]) ^ *(v280 + 4 * BYTE3(v258)) ^ *(v282 + 4 * (v276 ^ LODWORD(STACK[0x390]))) ^ v279 ^ 0xB5CC742B ^ *(v281 + 4 * BYTE1(v277));
  LOBYTE(v268) = v275 ^ LODWORD(STACK[0x314]);
  v284 = LODWORD(STACK[0x280]) ^ *(v278 + 4 * BYTE2(v258)) ^ *(v280 + 4 * HIBYTE(v276)) ^ *(v281 + 4 * BYTE1(v275)) ^ 0x8899F331 ^ *(v282 + 4 * (v277 ^ v265));
  v285 = LODWORD(STACK[0x284]) ^ *(v278 + 4 * BYTE2(v276)) ^ *(v281 + 4 * BYTE1(v258)) ^ *(v282 + 4 * v268) ^ 0x20289E4 ^ *(v280 + 4 * HIBYTE(v277));
  LODWORD(v258) = LODWORD(STACK[0x288]) ^ *(v280 + 4 * HIBYTE(v285)) ^ *(v281 + 4 * BYTE1(v283)) ^ *(v282 + 4 * v262) ^ *(v278 + 4 * BYTE2(v284));
  v286 = LODWORD(STACK[0x28C]) ^ *(v280 + 4 * BYTE3(v262)) ^ *(v278 + 4 * BYTE2(v285)) ^ *(v282 + 4 * v283) ^ 0x6551C1F4 ^ *(v281 + 4 * BYTE1(v284));
  v287 = LODWORD(STACK[0x290]) ^ *(v280 + 4 * HIBYTE(v283)) ^ *(v278 + 4 * BYTE2(v262)) ^ *(v281 + 4 * BYTE1(v285)) ^ 0x4EF7903 ^ *(v282 + 4 * v284);
  LODWORD(v262) = LODWORD(STACK[0x294]) ^ *(v278 + 4 * BYTE2(v283)) ^ *(v282 + 4 * v285) ^ *(v281 + 4 * BYTE1(v262)) ^ 0x2ED5C23B ^ *(v280 + 4 * HIBYTE(v284));
  v288 = v258 ^ 0xE7BB4A00;
  v289 = LODWORD(STACK[0x298]) ^ *(v280 + 4 * HIBYTE(v286)) ^ *(v278 + 4 * ((v258 ^ 0xE7BB4A00) >> 16)) ^ *(v281 + 4 * BYTE1(v262)) ^ *(v282 + 4 * v287) ^ 0xEFA5318;
  v290 = LODWORD(STACK[0x29C]) ^ *(v282 + 4 * v262) ^ *(v280 + 4 * HIBYTE(v287)) ^ *(v278 + 4 * BYTE2(v286)) ^ *(v281 + 4 * ((v258 ^ 0x4A00) >> 8)) ^ 0x79F2513;
  LODWORD(v258) = LODWORD(STACK[0x2A0]) ^ *(v278 + 4 * BYTE2(v287)) ^ *(v280 + 4 * BYTE3(v262)) ^ *(v281 + 4 * BYTE1(v286)) ^ *(v282 + 4 * v258) ^ 0xF9C169D0;
  v291 = LODWORD(STACK[0x248]) ^ LODWORD(STACK[0x220]) ^ ((LODWORD(STACK[0x220]) ^ 0x1003D2CF) - 129609267) ^ ((LODWORD(STACK[0x220]) ^ 0x2ABFBFF4) - 1023787784) ^ ((LODWORD(STACK[0x220]) ^ 0x52D9E630) - 1164155596) ^ ((LODWORD(STACK[0x220]) ^ 0x7FDFF7F7) - 1751485195) ^ *(v278 + 4 * BYTE2(v262)) ^ *(v280 + 4 * HIBYTE(v288)) ^ *(v282 + 4 * v286) ^ *(v281 + 4 * BYTE1(v287)) ^ 0x62F45CE3;
  v292 = LODWORD(STACK[0x2A4]) ^ *(v278 + 4 * BYTE2(v291)) ^ *(v280 + 4 * HIBYTE(v289)) ^ *(v281 + 4 * BYTE1(v258)) ^ *(v282 + 4 * v290) ^ 0xAA060E1D;
  LODWORD(v262) = LODWORD(STACK[0x2A8]) ^ *(v280 + 4 * BYTE3(v258)) ^ *(v281 + 4 * BYTE1(v289)) ^ *(v278 + 4 * BYTE2(v290)) ^ *(v282 + 4 * v291) ^ 0xEE39F53D;
  v293 = LODWORD(STACK[0x2AC]) ^ *(v280 + 4 * HIBYTE(v290)) ^ *(v278 + 4 * BYTE2(v289)) ^ *(v281 + 4 * BYTE1(v291)) ^ *(v282 + 4 * v258) ^ 0x5E7EA7C7;
  v294 = LODWORD(STACK[0x2B0]) ^ *(v280 + 4 * HIBYTE(v291)) ^ *(v282 + 4 * v289) ^ *(v278 + 4 * BYTE2(v258)) ^ *(v281 + 4 * BYTE1(v290)) ^ 0x8503BD1E;
  LODWORD(v258) = LODWORD(STACK[0x2B4]) ^ *(v280 + 4 * HIBYTE(v292)) ^ *(v278 + 4 * BYTE2(v294)) ^ *(v281 + 4 * BYTE1(v262)) ^ *(v282 + 4 * v293) ^ 0x2007B14E;
  v295 = LODWORD(STACK[0x2B8]) ^ *(v280 + 4 * BYTE3(v262)) ^ *(v278 + 4 * BYTE2(v293)) ^ *(v281 + 4 * BYTE1(v292)) ^ *(v282 + 4 * v294) ^ 0x1AD9FCC9;
  v296 = LODWORD(STACK[0x2BC]) ^ *(v280 + 4 * HIBYTE(v293)) ^ *(v281 + 4 * BYTE1(v294)) ^ *(v278 + 4 * BYTE2(v292)) ^ *(v282 + 4 * v262) ^ 0x8EAF1EFE;
  LODWORD(v262) = LODWORD(STACK[0x2C0]) ^ *(v280 + 4 * HIBYTE(v294)) ^ *(v278 + 4 * BYTE2(v262)) ^ *(v281 + 4 * BYTE1(v293)) ^ *(v282 + 4 * v292) ^ 0x31CA9E71;
  v297 = LODWORD(STACK[0x2C4]) ^ *(v280 + 4 * BYTE3(v258)) ^ *(v278 + 4 * BYTE2(v262)) ^ *(v281 + 4 * BYTE1(v295)) ^ *(v282 + 4 * v296) ^ 0xD21BA607;
  v298 = LODWORD(STACK[0x2C8]) ^ *(v280 + 4 * HIBYTE(v296)) ^ *(v281 + 4 * BYTE1(v262)) ^ *(v278 + 4 * BYTE2(v258)) ^ *(v282 + 4 * v295) ^ 0xF57F20E7;
  v299 = LODWORD(STACK[0x2CC]) ^ *(v281 + 4 * BYTE1(v258)) ^ *(v280 + 4 * HIBYTE(v295)) ^ *(v282 + 4 * v262) ^ *(v278 + 4 * BYTE2(v296)) ^ 0xD9F141D4;
  LODWORD(v262) = LODWORD(STACK[0x2D0]) ^ *(v280 + 4 * BYTE3(v262)) ^ *(v278 + 4 * BYTE2(v295)) ^ *(v281 + 4 * BYTE1(v296)) ^ *(v282 + 4 * v258) ^ 0xBCC3D1AE;
  LODWORD(v258) = LODWORD(STACK[0x2D4]) ^ *(v278 + 4 * BYTE2(v297)) ^ *(v280 + 4 * HIBYTE(v298)) ^ *(v281 + 4 * BYTE1(v262)) ^ *(v282 + 4 * v299) ^ 0x10D2C681;
  v300 = (v258 & 0x513BF11A ^ 0x2105A64A) & (v258 & 0xAEC40EE5 ^ 0x5D7BFD9F) | v258 & 0x8EC008A5;
  LODWORD(v258) = LODWORD(STACK[0x2D8]) ^ *(v280 + 4 * HIBYTE(v297)) ^ *(v278 + 4 * BYTE2(v262)) ^ *(v281 + 4 * BYTE1(v299)) ^ *(v282 + 4 * v298) ^ 0xE3A37C45;
  v300 ^= 0xD699F6BB;
  v301 = LODWORD(STACK[0x2DC]) ^ *(v280 + 4 * BYTE3(v262)) ^ *(v278 + 4 * BYTE2(v299)) ^ *(v282 + 4 * v297) ^ *(v281 + 4 * BYTE1(v298)) ^ 0xE6482ACC;
  v302 = LODWORD(STACK[0x2E0]) ^ *(v278 + 4 * BYTE2(v298)) ^ *(v280 + 4 * HIBYTE(v299)) ^ *(v281 + 4 * BYTE1(v297)) ^ *(v282 + 4 * v262) ^ 0xDAA39B36;
  v303 = __ROR4__(LODWORD(STACK[0x2E4]) ^ *(v280 + 4 * HIBYTE(v301)) ^ *(v278 + 4 * BYTE2(v302)) ^ 0x6A31F04B, 6);
  v304 = LODWORD(STACK[0x2E8]) ^ *(v280 + 4 * BYTE3(v258)) ^ *(v278 + 4 * BYTE2(v301)) ^ *(v281 + 4 * BYTE1(v302)) ^ 0x2D4BDE06 ^ *(v282 + 4 * v300);
  v305 = LODWORD(STACK[0x2EC]) ^ *(v282 + 4 * v302) ^ *(v278 + 4 * BYTE2(v258)) ^ *(v281 + 4 * BYTE1(v301)) ^ 0xE5F4FF51 ^ *(v280 + 4 * HIBYTE(v300));
  v306 = LODWORD(STACK[0x2F0]) ^ *(v280 + 4 * HIBYTE(v302)) ^ *(v281 + 4 * BYTE1(v258)) ^ *(v282 + 4 * v301) ^ 0xB00FF30E ^ *(v278 + 4 * BYTE2(v300));
  LODWORD(v262) = *(v281 + 4 * BYTE1(v300)) ^ *(v282 + 4 * v258) ^ __ROR4__(v303 ^ 0x326A2A0A, 26) ^ 0x6E1663B5;
  v307 = LODWORD(STACK[0x2F4]) ^ *(v280 + 4 * HIBYTE(v305)) ^ *(v278 + 4 * BYTE2(v304)) ^ *(v282 + 4 * v306) ^ *(v281 + 4 * BYTE1(v262)) ^ 0xB3E283C7;
  LODWORD(v258) = LODWORD(STACK[0x2F8]) ^ *(v280 + 4 * HIBYTE(v304)) ^ *(v281 + 4 * BYTE1(v306)) ^ *(v282 + 4 * v305) ^ *(v278 + 4 * BYTE2(v262)) ^ 0x957B1250;
  v308 = LODWORD(STACK[0x2FC]) ^ *(v280 + 4 * HIBYTE(v306)) ^ *(v281 + 4 * BYTE1(v304)) ^ *(v278 + 4 * BYTE2(v305)) ^ 0xC2C7038A ^ *(v282 + 4 * v262);
  v309 = LODWORD(STACK[0x300]) ^ *(v278 + 4 * BYTE2(v306)) ^ *(v281 + 4 * BYTE1(v305)) ^ *(v282 + 4 * v304) ^ *(v280 + 4 * BYTE3(v262)) ^ 0x2C97D74E;
  LODWORD(v281) = *(v130 - 232);
  LODWORD(v280) = *(v130 - 240);
  v311 = *(v130 - 176);
  v310 = *(v130 - 168);
  v312 = *(v130 - 208);
  v313 = LODWORD(STACK[0x304]) ^ LODWORD(STACK[0x24C]) ^ v281 ^ LODWORD(STACK[0x3AC]) ^ LODWORD(STACK[0x210]) ^ v280 ^ *(v311 + 4 * BYTE1(v308)) ^ *(v310 + 4 * BYTE3(v258)) ^ *(STACK[0x418] + 4 * BYTE2(v309) - 0x5CF26BDC6433D82BLL) ^ *(v312 + 4 * v307);
  v314 = LODWORD(STACK[0x250]) ^ v281 ^ LODWORD(STACK[0x230]) ^ LODWORD(STACK[0x3AC]) ^ a37 ^ a36 ^ v280 ^ *(v310 + 4 * HIBYTE(v307)) ^ *(STACK[0x418] + 4 * BYTE2(v258) - 0x5CF26BDC6433D82BLL) ^ *(v311 + 4 * BYTE1(v309)) ^ *(v312 + 4 * v308) ^ 0x111722CE;
  LODWORD(v262) = v281 ^ a99 ^ a64 ^ LODWORD(STACK[0x3AC]) ^ LODWORD(STACK[0x218]) ^ LODWORD(STACK[0x224]) ^ v280 ^ *(v310 + 4 * HIBYTE(v308)) ^ *(v312 + 4 * v309) ^ *(STACK[0x418] + 4 * BYTE2(v307) - 0x5CF26BDC6433D82BLL) ^ *(v311 + 4 * BYTE1(v258));
  v315 = v281 ^ LODWORD(STACK[0x244]) ^ a90 ^ a84 ^ LODWORD(STACK[0x3AC]) ^ LODWORD(STACK[0x21C]) ^ v280 ^ *(v310 + 4 * HIBYTE(v309)) ^ *(STACK[0x418] + 4 * BYTE2(v308) - 0x5CF26BDC6433D82BLL) ^ *(v311 + 4 * BYTE1(v307)) ^ *(v312 + 4 * v258) ^ 0xA71C94CD;
  LODWORD(v258) = LODWORD(STACK[0x308]) ^ *(STACK[0x4B0] + 4 * HIBYTE(v313)) ^ *(STACK[0x4A8] + 4 * v315) ^ *(STACK[0x4A0] + 4 * BYTE2(v314)) ^ *(a1 + 4 * BYTE1(v262));
  v316 = LODWORD(STACK[0x31C]) ^ *(STACK[0x4A0] + 4 * BYTE2(v262)) ^ *(STACK[0x4B0] + 4 * HIBYTE(v314)) ^ *(a1 + 4 * BYTE1(v315)) ^ *(STACK[0x4A8] + 4 * v313);
  v317 = LODWORD(STACK[0x320]) ^ *(STACK[0x4B0] + 4 * BYTE3(v262)) ^ *(STACK[0x4A0] + 4 * BYTE2(v315)) ^ *(a1 + 4 * BYTE1(v313)) ^ *(STACK[0x4A8] + 4 * v314);
  v318 = LODWORD(STACK[0x324]) ^ *(STACK[0x4B0] + 4 * HIBYTE(v315)) ^ *(STACK[0x4A0] + 4 * BYTE2(v313)) ^ *(a1 + 4 * BYTE1(v314)) ^ *(STACK[0x4A8] + 4 * v262);
  v319 = LODWORD(STACK[0x328]) ^ *(STACK[0x4B0] + 4 * BYTE3(v258)) ^ *(STACK[0x4A0] + 4 * BYTE2(v316)) ^ *(a1 + 4 * BYTE1(v317)) ^ *(STACK[0x4A8] + 4 * v318);
  v320 = LODWORD(STACK[0x32C]) ^ *(a1 + 4 * BYTE1(v318)) ^ *(STACK[0x4A0] + 4 * BYTE2(v317)) ^ *(STACK[0x4B0] + 4 * HIBYTE(v316)) ^ *(STACK[0x4A8] + 4 * v258);
  LODWORD(v262) = LODWORD(STACK[0x330]) ^ *(a1 + 4 * BYTE1(v258)) ^ *(STACK[0x4B0] + 4 * HIBYTE(v317)) ^ *(STACK[0x4A0] + 4 * BYTE2(v318)) ^ *(STACK[0x4A8] + 4 * v316);
  LODWORD(v258) = LODWORD(STACK[0x338]) ^ *(STACK[0x4A0] + 4 * BYTE2(v258)) ^ *(a1 + 4 * BYTE1(v316)) ^ *(STACK[0x4B0] + 4 * HIBYTE(v318)) ^ *(STACK[0x4A8] + 4 * v317);
  v321 = LODWORD(STACK[0x33C]) ^ *(STACK[0x4A0] + 4 * BYTE2(v320)) ^ *(STACK[0x4B0] + 4 * HIBYTE(v319)) ^ *(STACK[0x4A8] + 4 * v258) ^ *(a1 + 4 * BYTE1(v262));
  v322 = LODWORD(STACK[0x340]) ^ *(STACK[0x4B0] + 4 * HIBYTE(v320)) ^ *(STACK[0x4A0] + 4 * BYTE2(v262)) ^ *(a1 + 4 * BYTE1(v258)) ^ *(STACK[0x4A8] + 4 * v319);
  v323 = LODWORD(STACK[0x344]) ^ *(STACK[0x4A8] + 4 * v320) ^ *(STACK[0x4A0] + 4 * BYTE2(v258)) ^ *(STACK[0x4B0] + 4 * BYTE3(v262)) ^ *(a1 + 4 * BYTE1(v319));
  v324 = LODWORD(STACK[0x348]) ^ *(STACK[0x4A0] + 4 * BYTE2(v319)) ^ *(STACK[0x4B0] + 4 * BYTE3(v258)) ^ *(a1 + 4 * BYTE1(v320)) ^ *(STACK[0x4A8] + 4 * v262);
  LODWORD(v258) = LODWORD(STACK[0x34C]) ^ *(STACK[0x4B0] + 4 * HIBYTE(v321)) ^ *(a1 + 4 * BYTE1(v323)) ^ *(STACK[0x4A8] + 4 * v324) ^ *(STACK[0x4A0] + 4 * BYTE2(v322));
  v325 = LODWORD(STACK[0x350]) ^ *(STACK[0x4A0] + 4 * BYTE2(v323)) ^ *(STACK[0x4B0] + 4 * HIBYTE(v322)) ^ *(STACK[0x4A8] + 4 * v321) ^ *(a1 + 4 * BYTE1(v324));
  LODWORD(v262) = LODWORD(STACK[0x354]) ^ *(STACK[0x4B0] + 4 * HIBYTE(v323)) ^ *(STACK[0x4A0] + 4 * BYTE2(v324)) ^ *(a1 + 4 * BYTE1(v321)) ^ *(STACK[0x4A8] + 4 * v322);
  v326 = LODWORD(STACK[0x358]) ^ *(STACK[0x4A0] + 4 * BYTE2(v321)) ^ *(STACK[0x4B0] + 4 * HIBYTE(v324)) ^ *(a1 + 4 * BYTE1(v322)) ^ *(STACK[0x4A8] + 4 * v323);
  v327 = *(STACK[0x4A0] + 4 * BYTE2(v325)) ^ *(STACK[0x4B0] + 4 * BYTE3(v258)) ^ *(a1 + 4 * BYTE1(v262));
  v328 = *(STACK[0x4A8] + 4 * v326);
  v329 = LODWORD(STACK[0x35C]) ^ ((v327 ^ 0x7BF60027) + (v328 ^ 0xB843D24C) + ((2 * ((v328 ^ 0xAE54A87) & (v327 ^ 0x7BF60027) ^ v327 & 0x32A698CB)) ^ 0x9AB3FFF9) + 1);
  v330 = LODWORD(STACK[0x360]) ^ *(STACK[0x4A8] + 4 * v258) ^ *(STACK[0x4B0] + 4 * HIBYTE(v325)) ^ *(STACK[0x4A0] + 4 * BYTE2(v262)) ^ *(a1 + 4 * BYTE1(v326));
  v331 = LODWORD(STACK[0x364]) ^ *(STACK[0x4B0] + 4 * BYTE3(v262)) ^ *(STACK[0x4A0] + 4 * BYTE2(v326)) ^ *(a1 + 4 * BYTE1(v258)) ^ *(STACK[0x4A8] + 4 * v325);
  v332 = LODWORD(STACK[0x368]) ^ *(STACK[0x4B0] + 4 * HIBYTE(v326)) ^ *(STACK[0x4A0] + 4 * BYTE2(v258)) ^ *(STACK[0x4A8] + 4 * v262) ^ *(a1 + 4 * BYTE1(v325));
  LODWORD(v258) = LODWORD(STACK[0x36C]) ^ *(STACK[0x4A0] + 4 * BYTE2(v330)) ^ *(a1 + 4 * BYTE1(v331)) ^ *(STACK[0x4A8] + 4 * v332) ^ 0xBB4CD9A5 ^ *(STACK[0x4B0] + 4 * HIBYTE(v329));
  v333 = a89 ^ (LODWORD(STACK[0x318]) - ((2 * LODWORD(STACK[0x318])) & 0x41F5BB1C) - 1594172018) ^ *(STACK[0x4A0] + 4 * BYTE2(v332)) ^ *(STACK[0x4B0] + 4 * HIBYTE(v331)) ^ *(STACK[0x4A8] + 4 * v330) ^ *(a1 + 4 * BYTE1(v329));
  LODWORD(v262) = LODWORD(STACK[0x370]) ^ *(STACK[0x4A0] + 4 * BYTE2(v331)) ^ *(STACK[0x4B0] + 4 * HIBYTE(v330)) ^ *(a1 + 4 * BYTE1(v332)) ^ *(STACK[0x4A8] + 4 * v329);
  v334 = LODWORD(STACK[0x37C]) ^ *(STACK[0x4A8] + 4 * v331) ^ *(STACK[0x4B0] + 4 * HIBYTE(v332)) ^ *(a1 + 4 * BYTE1(v330)) ^ *(STACK[0x4A0] + 4 * BYTE2(v329));
  v335 = LODWORD(STACK[0x380]) ^ *(STACK[0x4B0] + 4 * BYTE3(v258)) ^ *(STACK[0x4A0] + 4 * BYTE2(v262)) ^ *(a1 + 4 * ((v333 ^ 0x3B34) >> 8)) ^ *(STACK[0x4A8] + 4 * v334);
  v336 = LODWORD(STACK[0x384]) ^ *(a1 + 4 * BYTE1(v334)) ^ *(STACK[0x4A0] + 4 * ((v333 ^ 0x63763B34) >> 16)) ^ *(STACK[0x4B0] + 4 * BYTE3(v262)) ^ *(STACK[0x4A8] + 4 * v258);
  v337 = LODWORD(STACK[0x388]) ^ *(STACK[0x4A0] + 4 * BYTE2(v334)) ^ *(STACK[0x4B0] + 4 * (HIBYTE(v333) ^ 0x63)) ^ *(a1 + 4 * BYTE1(v258)) ^ *(STACK[0x4A8] + 4 * v262);
  LODWORD(v262) = LODWORD(STACK[0x38C]) ^ *(STACK[0x4A0] + 4 * BYTE2(v258)) ^ *(STACK[0x4B0] + 4 * HIBYTE(v334)) ^ *(STACK[0x4A8] + 4 * (v333 ^ 0x34u)) ^ *(a1 + 4 * BYTE1(v262));
  LODWORD(v258) = LODWORD(STACK[0x398]) ^ *(a1 + 4 * BYTE1(v337)) ^ *(STACK[0x4A0] + 4 * BYTE2(v336)) ^ *(STACK[0x4B0] + 4 * HIBYTE(v335)) ^ *(STACK[0x4A8] + 4 * v262);
  v338 = *(STACK[0x4B0] + 4 * BYTE3(v262));
  v339 = LODWORD(STACK[0x3A0]) ^ *(STACK[0x4B0] + 4 * HIBYTE(v336)) ^ *(STACK[0x4A0] + 4 * BYTE2(v337)) ^ *(STACK[0x4A8] + 4 * v335) ^ *(a1 + 4 * BYTE1(v262));
  LODWORD(v262) = LODWORD(STACK[0x3A4]) ^ *(STACK[0x4A0] + 4 * BYTE2(v262)) ^ *(STACK[0x4B0] + 4 * HIBYTE(v337)) ^ *(a1 + 4 * BYTE1(v335)) ^ *(STACK[0x4A8] + 4 * v336);
  v340 = LODWORD(STACK[0x3A8]) ^ v338 ^ *(STACK[0x4A0] + 4 * BYTE2(v335)) ^ *(a1 + 4 * BYTE1(v336)) ^ *(STACK[0x4A8] + 4 * v337);
  v341 = *(STACK[0x4B0] + 4 * HIBYTE(v339));
  v342 = *(STACK[0x4A8] + 4 * v339);
  LODWORD(v268) = *(STACK[0x4B0] + 4 * BYTE3(v262));
  v343 = LODWORD(STACK[0x3C0]) ^ *(STACK[0x4A0] + 4 * BYTE2(v339)) ^ *(STACK[0x4B0] + 4 * BYTE3(v258)) ^ *(a1 + 4 * BYTE1(v262)) ^ *(STACK[0x4A8] + 4 * v340);
  v344 = *(a1 + 4 * BYTE1(v339));
  v345 = *(STACK[0x4A8] + 4 * v262);
  LODWORD(v262) = LODWORD(STACK[0x3C4]) ^ v341 ^ *(STACK[0x4A0] + 4 * BYTE2(v262)) ^ *(a1 + 4 * BYTE1(v340)) ^ *(STACK[0x4A8] + 4 * v258);
  v346 = LODWORD(STACK[0x3C8]) ^ *(STACK[0x4A0] + 4 * BYTE2(v340)) ^ v342 ^ v268 ^ *(a1 + 4 * BYTE1(v258));
  LODWORD(v268) = LODWORD(STACK[0x334]) ^ v344 ^ v345 ^ *(STACK[0x4B0] + 4 * HIBYTE(v340)) ^ *(STACK[0x4A0] + 4 * BYTE2(v258));
  v347 = *(v130 - 224);
  v349 = *(v130 - 256);
  v348 = *(v130 - 248);
  LODWORD(v312) = LODWORD(STACK[0x478]) ^ LODWORD(STACK[0x480]) ^ *(v348 + 4 * BYTE2(v343)) ^ *(v347 + 4 * BYTE3(v268)) ^ *(STACK[0x4B8] + 4 * v346) ^ *(v349 + 4 * BYTE1(v262));
  v350 = LODWORD(STACK[0x48C]) ^ LODWORD(STACK[0x480]) ^ *(v347 + 4 * BYTE3(v262)) ^ *(v348 + 4 * BYTE2(v346)) ^ *(STACK[0x4B8] + 4 * v343) ^ *(v349 + 4 * BYTE1(v268));
  v351 = LODWORD(STACK[0x490]) ^ LODWORD(STACK[0x480]) ^ *(v348 + 4 * BYTE2(v268)) ^ *(v347 + 4 * HIBYTE(v346)) ^ *(STACK[0x4B8] + 4 * v262) ^ *(v349 + 4 * BYTE1(v343));
  LOBYTE(v340) = LOBYTE(STACK[0x478]) ^ LODWORD(STACK[0x480]) ^ *(v348 + 4 * BYTE2(v343)) ^ *(v347 + 4 * BYTE3(v268)) ^ *(STACK[0x4B8] + 4 * v346) ^ *(v349 + 4 * BYTE1(v262));
  LODWORD(v262) = LODWORD(STACK[0x498]) ^ LODWORD(STACK[0x480]) ^ *(v347 + 4 * HIBYTE(v343)) ^ *(v348 + 4 * BYTE2(v262)) ^ *(v349 + 4 * BYTE1(v346)) ^ *(STACK[0x4B8] + 4 * v268);
  v352 = STACK[0x3B0];
  *(v130 - 114) = *(STACK[0x3B0] + 3623 * (BYTE1(v312) ^ 0x32) + 24227001 - 7552 * (((9099507 * (3623 * (BYTE1(v312) ^ 0x32u) + 24227001)) >> 32) >> 4)) ^ 0x64;
  *(v130 - 115) = *(v352 + 3623 * (BYTE2(v312) ^ 0x98) + 5575797 - 7552 * (((2274877 * (3623 * (BYTE2(v312) ^ 0x98u) + 5575797)) >> 32) >> 2)) ^ 0xFA;
  LOBYTE(v311) = *(v352 + 3623 * (BYTE2(v351) ^ 0xF1) + 5575797 - 7552 * (((2274877 * (3623 * (BYTE2(v351) ^ 0xF1u) + 5575797)) >> 32) >> 2));
  *(v130 - 124) = *(v352 + 3623 * (HIBYTE(v350) ^ 0xB7) + 15821641 - 7552 * (((9099507 * (3623 * (HIBYTE(v350) ^ 0xB7) + 15821641)) >> 32) >> 4)) ^ 0x69;
  *(v130 - 119) = v311 ^ 0x10;
  *(v130 - 122) = *(v352 + 3623 * (BYTE1(v350) ^ 0x36) + 24227001 - 7552 * (((9099507 * (3623 * (BYTE1(v350) ^ 0x36u) + 24227001)) >> 32) >> 4)) ^ 0x51;
  *(v130 - 118) = *(v352 + 3623 * (BYTE1(v351) ^ 4) + 24227001 - 7552 * (((9099507 * (3623 * (BYTE1(v351) ^ 4u) + 24227001)) >> 32) >> 4)) ^ 0xB5;
  *(v130 - 116) = *(v352 + 3623 * (BYTE3(v312) ^ 0xF2) + 15821641 - 7552 * (((9099507 * (3623 * (BYTE3(v312) ^ 0xF2) + 15821641)) >> 32) >> 4)) ^ 0x5B;
  *(v130 - 126) = *(v352 + 3623 * (BYTE1(v262) ^ 0xBB) + 24227001 - 7552 * (((9099507 * (3623 * (BYTE1(v262) ^ 0xBBu) + 24227001)) >> 32) >> 4)) ^ 0x6E;
  *(v130 - 123) = *(v352 + 3623 * (BYTE2(v350) ^ 0x6E) + 5575797 - 7552 * (((2274877 * (3623 * (BYTE2(v350) ^ 0x6Eu) + 5575797)) >> 32) >> 2)) ^ 0xF6;
  LOBYTE(v268) = *(v352 + 3623 * (HIBYTE(v351) ^ 0x19) + 15821641 - 7552 * (((9099507 * (3623 * (HIBYTE(v351) ^ 0x19) + 15821641)) >> 32) >> 4));
  *(v130 - 121) = *(v352 + 3623 * (v350 ^ 0xE9) + 20473573 - 7552 * (((9099507 * (3623 * (v350 ^ 0xE9u) + 20473573)) >> 32) >> 4)) ^ 0xF6;
  LOBYTE(v258) = *(v352 + 3623 * (BYTE2(v262) ^ 0x5F) + 5575797 - 7552 * (((2274877 * (3623 * (BYTE2(v262) ^ 0x5Fu) + 5575797)) >> 32) >> 2));
  *(v130 - 120) = v268 ^ 0x2C;
  *(v130 - 127) = v258 ^ 0xE2;
  *(v130 - 128) = *(v352 + 3623 * (BYTE3(v262) ^ 0xE) + 15821641 - 7552 * (((9099507 * (3623 * (BYTE3(v262) ^ 0xE) + 15821641)) >> 32) >> 4)) ^ 0xBA;
  *(v130 - 113) = *(v352 + 3623 * (v340 ^ 0x3B) + 20473573 - 7552 * (((9099507 * (3623 * (v340 ^ 0x3Bu) + 20473573)) >> 32) >> 4)) ^ 0x45;
  *(v130 - 117) = *(v352 + 3623 * (v351 ^ 0xAA) + 20473573 - 7552 * (((9099507 * (3623 * (v351 ^ 0xAAu) + 20473573)) >> 32) >> 4)) ^ 0x2E;
  *(v130 - 125) = *(v352 + 3623 * (v262 ^ 0x79) + 20473573 - 7552 * (((9099507 * (3623 * (v262 ^ 0x79u) + 20473573)) >> 32) >> 4)) ^ 0x14;
  return (*(*(v130 - 216) + 8 * SLODWORD(STACK[0x394])))(a1, a1);
}

uint64_t sub_100902164(uint64_t a1, uint64_t a2)
{
  STACK[0x360] = 0;
  v5 = STACK[0x2D8] < 0x7FFFFFFFFFFFFF82;
  STACK[0x358] = *(v4 + 8 * v2);
  return (*(v4 + 8 * (((v3 - 1287233334) * v5) ^ (v3 - 1287272096))))(a1, a2, 3622220394, 2117523710, &STACK[0x460], 2701451529, 1960245842, 961553186);
}

uint64_t sub_100902274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  STACK[0x2E8] = v15;
  v17 = STACK[0x340];
  LODWORD(STACK[0x2F8]) = v14 ^ 0x8E0B;
  v18 = ((2 * v17) & 0xEFEBBB9E) - 366720 + (v17 ^ v14 ^ 0x8E0B ^ 0xF7F5F69D);
  v19 = (v18 ^ 0x2B2F323C) & (2 * (v18 & 0x80FBAB1)) ^ v18 & 0x80FBAB1;
  LODWORD(v17) = ((2 * ((v14 - 31239) ^ 0x2B25182C ^ v18)) ^ 0x4655139E) & ((v14 - 31239) ^ 0x2B25182C ^ v18) ^ (2 * ((v14 - 31239) ^ 0x2B25182C ^ v18)) & 0x232A89CE;
  v20 = v17 ^ 0x212A8841;
  LODWORD(v17) = (v17 ^ 0x18C) & (4 * v19) ^ v19;
  v21 = ((4 * v20) ^ 0x8CAA273C) & v20 ^ (4 * v20) & 0x232A89CC;
  LODWORD(v17) = (v21 ^ 0x2A0100) & (16 * v17) ^ v17;
  v22 = ((16 * (v21 ^ 0x230088C3)) ^ 0x32A89CF0) & (v21 ^ 0x230088C3) ^ (16 * (v21 ^ 0x230088C3)) & 0x232A89C0;
  return (*(v16 + 8 * ((55 * ((v18 ^ (2 * ((((v22 ^ 0x102010F) << 8) & 0x232A0000 ^ 0x22080000 ^ (((v22 ^ 0x102010F) << 8) ^ 0x2A890000) & (v22 ^ 0x102010F)) & (((v22 ^ 0x22288800) & (v17 << 8) ^ v17) << 16) ^ (v22 ^ 0x22288800) & (v17 << 8) ^ v17))) != 135248561)) ^ v14)))(a1, a2, a3, a4, a5, a14, STACK[0x318], STACK[0x310]);
}

uint64_t sub_100902C60()
{
  v2 = STACK[0xA60] - 0x5F84BE805CAC3B1DLL + (((v0 ^ 0xD162ACDCD42764CELL) + 0x2E9D53232BD89B32) ^ ((v0 ^ 0xCA4C4EFAFB5B6CFCLL) + 0x35B3B10504A49304) ^ ((v0 ^ 0x1B2EE226C6A9CF23) - 0x1B2EE226C6A9CF23)) + 0x19AE33A64;
  v3 = STACK[0xA58] - 0x13C8564ED4D4E8A3;
  v4 = v2 < 0xB10D7353;
  v5 = v2 > v3;
  if (v3 < 0xB10D7353 != v4)
  {
    v5 = v4;
  }

  return (*(v1 + 8 * ((41 * !v5) ^ (STACK[0x318] + 16361))))();
}

uint64_t sub_100902DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, int a21, int a22, int a23)
{
  *(v23 - 136) = (((a23 + 1559170938) & 0xA3105F5B) + 90048986) ^ a19;
  *(v23 - 144) = a22 ^ 0xC21DBEE6;
  *(v23 - 140) = a20 ^ 0x56E92ABE;
  *(v23 - 128) = a21 ^ 0x540B830A;
  return (*(v24 + 8 * a23))();
}

uint64_t sub_100902EFC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W8>)
{
  LODWORD(STACK[0xE00]) = 0;
  LODWORD(STACK[0xDF8]) = 0;
  LODWORD(STACK[0xE08]) = 0;
  LODWORD(STACK[0xDD8]) = 0;
  LODWORD(STACK[0xE28]) = 0;
  LODWORD(STACK[0xDC0]) = 0;
  LODWORD(STACK[0xA98]) = STACK[0xE78] ^ 0xA66C6B7E;
  v6 = *(STACK[0xED8] + 8 * (a6 - 29406));
  LODWORD(STACK[0xED0]) = 1;
  LODWORD(STACK[0xE38]) = 1;
  LODWORD(STACK[0xE60]) = 1;
  LODWORD(STACK[0xE58]) = 1;
  LODWORD(STACK[0xE30]) = 1;
  LODWORD(STACK[0xE40]) = 1;
  LODWORD(STACK[0xE48]) = 1;
  LODWORD(STACK[0xE50]) = 1;
  LODWORD(STACK[0xE18]) = 1;
  LODWORD(STACK[0xE20]) = 1;
  LODWORD(STACK[0xDE0]) = 1;
  return v6(188, a1, a2, a3, a4, a5, 135, 4294967250);
}

uint64_t sub_100902F9C()
{
  LODWORD(STACK[0x2B0]) = v0;
  v2 = v0 - 30201;
  v3 = (*(v1 + 8 * (v0 + 9308)))(266);
  STACK[0x380] = v3;
  return (*(v1 + 8 * ((44 * (v3 == 0)) ^ v2)))();
}

uint64_t sub_10090305C@<X0>(uint64_t a1@<X5>, unsigned int a2@<W8>)
{
  LODWORD(STACK[0xEA8]) = 0;
  LODWORD(STACK[0xDF8]) = 0;
  LODWORD(STACK[0xDA8]) = 0;
  LODWORD(STACK[0xE20]) = 0;
  LODWORD(STACK[0xE10]) = 0;
  LODWORD(STACK[0xDB0]) = 0;
  LODWORD(STACK[0xD28]) = 0;
  LODWORD(STACK[0xDB8]) = 0;
  LODWORD(STACK[0xD88]) = 0;
  LODWORD(STACK[0xDC0]) = 0;
  LODWORD(STACK[0xE28]) = 0;
  LODWORD(STACK[0xD30]) = 0;
  LODWORD(STACK[0xDD8]) = 0;
  LODWORD(STACK[0xD58]) = 0;
  LODWORD(STACK[0xD70]) = 0;
  LODWORD(STACK[0xD80]) = 0;
  LODWORD(STACK[0xD08]) = 0;
  LODWORD(STACK[0xDA0]) = 0;
  LODWORD(STACK[0xD38]) = 0;
  LODWORD(STACK[0xE08]) = 0;
  LODWORD(STACK[0xD20]) = 0;
  v5 = a2 - 803683600;
  STACK[0xC88] = v4 ^ 0xBB6EEF716CE8A42CLL;
  LODWORD(STACK[0xC28]) = v2 ^ 0xBF542833;
  STACK[0xE88] = v5;
  v6 = *(v3 + 8 * ((a2 - 803718513 + v5) ^ (12282 * (a2 < 0x21BADE2F))));
  LODWORD(STACK[0xE18]) = 1;
  LODWORD(STACK[0xDF0]) = 1;
  LODWORD(STACK[0xDE8]) = 1;
  LODWORD(STACK[0xCF8]) = 1;
  LODWORD(STACK[0xD98]) = 1;
  LODWORD(STACK[0xD18]) = 1;
  LODWORD(STACK[0xD10]) = 1;
  LODWORD(STACK[0xE00]) = 1;
  LODWORD(STACK[0xDE0]) = 1;
  LODWORD(STACK[0xD00]) = 1;
  return v6(4294947698, -22206133, STACK[0xBD8], 0xFFFFF20000000000, 184, a1, &off_1010A0B50, 12602655);
}

uint64_t sub_1009031D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(STACK[0xEC8]) = v5 ^ 0xA0A3;
  LODWORD(STACK[0xEA8]) = STACK[0xE88] > 0x28AE6D51;
  v7 = ((v5 ^ 0xA0A3) - 2117414819) & 0x7E357BCF;
  v8 = ((v5 ^ 0xA0A3) - 9781) | 0x4C8Cu;
  STACK[0xEB0] = v8;
  v9 = a5 - ((2 * a5) & 0x1F39D978ALL) + (v8 ^ 0x8E3A804AF9CE8629);
  v10 = (v9 ^ 0x71C57FB500011408) & STACK[0xEA0];
  STACK[0xE70] = v7;
  STACK[0xEC0] = (v9 & (v7 + 0x1BF31F631) ^ a3 ^ v10 ^ v6 ^ 0x643DEC83DFCF0444) & (v9 & (v7 + 0x1BF31F631) ^ a3 ^ v10 ^ 0xE93006C4D6F6B43ALL) ^ (v9 & (v7 + 0x1BF31F631) ^ a3 ^ v10) & 0x9B6CA515A49DF5E6;
  v11 = 2 * (STACK[0xEB8] & 1) + (LODWORD(STACK[0xEB8]) ^ 0x209D1751);
  v12 = ((((v11 - ((2 * v11) & 0x413A2EA0) + 547166032) ^ 0x920DB8BF) + 1844594497) ^ (((v11 - ((2 * v11) & 0x413A2EA0) + 547166032) ^ 0x25879EE1) - 629645025) ^ (((v11 - ((2 * v11) & 0x413A2EA0) + 547166032) ^ 0x9717310E) + 1760087794)) - 135353858;
  v13 = v12 < LODWORD(STACK[0xE78]);
  if (LODWORD(STACK[0xEA8]) != v12 < 0xD75192AE)
  {
    v13 = STACK[0xEA8];
  }

  return (*(STACK[0xED8] + 8 * (LODWORD(STACK[0xEC8]) ^ (49 * v13))))();
}

uint64_t sub_100909768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, int a18, char *a19, unsigned int a20, uint64_t a21, unsigned int a22, __int16 a23, int a24)
{
  v27 = 139493411 * (((&a18 ^ 0x2CD7D42B) - 2 * ((&a18 ^ 0x2CD7D42B) & 0x7EAE2B53) + 2125343571) ^ 0x5E541E3D);
  a19 = &a15;
  a20 = v27 - 466197451;
  a22 = v27 + 1133646169;
  a18 = v25 - v27 + 2969;
  a21 = v24;
  a23 = v27 + 27993;
  v28 = (*(v26 + 8 * (v25 ^ 0x6EAC)))(&a18);
  return (*(v26 + 8 * ((23 * (a24 != (((v25 - 4686) | 0x800) ^ 0x5944072B))) ^ v25)))(v28);
}

uint64_t sub_10090984C(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v9 = v4 + v5;
  v11 = a2 < v8 || v9 < a2;
  return (*(v7 + 8 * (a4 ^ (v11 * v6))))();
}

uint64_t sub_1009098D4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(v7 + 8 * (v6 ^ 0x943B)))(*v5);
  *(a5 + 120 * v8 + 40) = v10;
  return (*(v7 + 8 * (((v10 == 0) * (((3141 * (v6 ^ 0x5EA8)) ^ 0xFFFF4EFD) + ((v6 - 1910612853) & 0x71E17CDF))) | v6)))(v10, a2, 3857928983);
}

uint64_t sub_100909B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11)
{
  v17 = *(v12 + 16);
  v18 = *(v14 + 20);
  *(v14 + 80) = v11;
  *(v14 + 84) = v18;
  a10 = v14;
  a11 = v15;
  a9 = v16 + 1603510583 * (((&a9 | 0xA3801167) + (~&a9 | 0x5C7FEE98)) ^ 0x345B23CD) - 712555575;
  v19 = (*(v13 + 8 * (v16 + 28933)))(&a9);
  *v17 = *v14 - ((2 * *v14) & 0xBF) + 95;
  v17[1] = *(v14 + 1) - ((2 * *(v14 + 1)) & 0xBF) + 95;
  v17[2] = *(v14 + 2) - ((2 * *(v14 + 2)) & 0xBF) + 95;
  v17[3] = *(v14 + 3) - ((2 * *(v14 + 3)) & 0xBF) + 95;
  v17[4] = *(v14 + 4) - ((2 * *(v14 + 4)) & 0xBF) + 95;
  v17[5] = *(v14 + 5) - ((2 * *(v14 + 5)) & 0xBF) + 95;
  v17[6] = *(v14 + 6) - ((2 * *(v14 + 6)) & 0xBF) + 95;
  v17[7] = *(v14 + 7) - ((2 * *(v14 + 7)) & 0xBF) + 95;
  v17[8] = *(v14 + 8) - ((2 * *(v14 + 8)) & 0xBF) + 95;
  v17[9] = *(v14 + 9) - ((2 * *(v14 + 9)) & 0xBF) + 95;
  v17[10] = *(v14 + 10) - ((2 * *(v14 + 10)) & 0xBF) + 95;
  v17[11] = *(v14 + 11) - ((2 * *(v14 + 11)) & 0xBF) + 95;
  v17[12] = *(v14 + 12) - ((2 * *(v14 + 12)) & 0xBF) + 95;
  v17[13] = *(v14 + 13) - ((2 * *(v14 + 13)) & 0xBF) + 95;
  v17[14] = *(v14 + 14) - ((2 * *(v14 + 14)) & 0xBF) + 95;
  v17[15] = *(v14 + 15) - ((2 * *(v14 + 15)) & 0xBF) + 95;
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  return (*(v13 + 8 * v16))(v19, 0);
}

uint64_t sub_100909D34()
{
  v4 = v0 ^ 0xB7D2;
  v5 = (*(v3 + 8 * (v0 ^ 0xE7AB)))(*(v2 + 16), v1 + 148, *(v1 + 144)) == (((v0 ^ 0xB7D2) - 1862839346) ^ 0x90F7EFDD);
  return (*(v3 + 8 * ((95 * (((v4 - 50) ^ v5) & 1)) ^ v4)))();
}

uint64_t sub_100909DB8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W8>)
{
  LODWORD(STACK[0xED0]) = 0;
  LODWORD(STACK[0xE00]) = 0;
  LODWORD(STACK[0xDF8]) = 0;
  LODWORD(STACK[0xDD8]) = 0;
  LODWORD(STACK[0xE28]) = 0;
  LODWORD(STACK[0xDC0]) = 0;
  LODWORD(STACK[0xDE0]) = 0;
  v8 = (((a6 - 5274) | 0x5000) - 1502864902) ^ STACK[0xE78];
  v9 = (STACK[0xE08] & 1) == 0;
  if (STACK[0xE08])
  {
    v10 = v6;
  }

  else
  {
    v10 = v6 + 1;
  }

  v11 = STACK[0xB10];
  if (STACK[0xE08])
  {
    v11 = v8;
  }

  else
  {
    v11 = v11;
  }

  STACK[0xB10] = v11;
  if (v9)
  {
    v7 = v8;
  }

  LODWORD(STACK[0x958]) = v7;
  v12 = *(STACK[0xED8] + 8 * a6);
  LODWORD(STACK[0xE38]) = 1;
  LODWORD(STACK[0xE60]) = 1;
  LODWORD(STACK[0xE58]) = 1;
  LODWORD(STACK[0xE30]) = 1;
  LODWORD(STACK[0xE40]) = 1;
  LODWORD(STACK[0xE48]) = 1;
  LODWORD(STACK[0xE50]) = 1;
  LODWORD(STACK[0xE18]) = 1;
  LODWORD(STACK[0xE20]) = 1;
  return v12(188, a1, a2, a3, a4, a5, v10);
}

uint64_t sub_100909EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v13 = vrev64q_s8(**(v10 + 16));
  v14 = vextq_s8(v13, v13, 8uLL);
  v15.i64[0] = 0x4444444444444444;
  v15.i64[1] = 0x4444444444444444;
  v16 = vandq_s8(vaddq_s8(v14, v14), v15);
  v15.i64[0] = 0xA2A2A2A2A2A2A2A2;
  v15.i64[1] = 0xA2A2A2A2A2A2A2A2;
  v17 = veorq_s8(v14, v15);
  v15.i64[0] = 0xEAEAEAEAEAEAEAEALL;
  v15.i64[1] = 0xEAEAEAEAEAEAEAEALL;
  v18 = vrev64q_s8(veorq_s8(vaddq_s8(vaddq_s8(v17, v15), v16), xmmword_100F53130));
  *(v12 - 112) = vextq_s8(v18, v18, 8uLL);
  return (*(v11 + 8 * (a2 ^ (107 * (a9 != 0)))))(a1, a2, a3, a4, a5, a6, a7, a8, a10);
}

uint64_t sub_10090A314(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a6 + (v11 + v13)) ^= *(v10 + (v9 + v11));
  v15 = v7 > v11 + v8;
  if (v7 < v14 != v11 + v8 < v14)
  {
    v15 = v7 < v14;
  }

  return (*(v6 + 8 * ((v15 * v12) ^ a1)))();
}

uint64_t sub_10090A408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 120) = (v17 + 17901) ^ (353670337 * ((v19 - 136 - 2 * ((v19 - 136) & 0x3349E978) - 1287001730) ^ 0x7681143));
  *(v19 - 136) = v18;
  *(v19 - 128) = &a15;
  v20 = (*(v16 + 8 * (v17 + 30441)))(v19 - 136);
  return (*(v16 + 8 * (((v15 == (v17 ^ 0x53EA)) * (((v17 - 616555532) & 0x24BFD6AD) - 7920)) ^ v17)))(v20);
}

uint64_t sub_10090A5D4(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 16) = 0;
  *(a1 + 4) = 0x21E23A8900000000;
  v6 = (*(v4 + 8 * (v2 ^ 0x64F8)))(v3 ^ 0x4EAE3888u);
  *(a1 + 16) = v6;
  return (*(v4 + 8 * (((v6 == 0) * (((v2 + 1644171744) | 0x601012) - 1650511939)) | v2)))();
}

uint64_t sub_10090A688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, char a40, __int16 a41, char a42)
{
  v46 = 297845113 * ((v45 - 144 - 2 * ((v45 - 144) & 0xBDA4468) + 198853739) ^ 0x7CE958F5);
  *(v45 - 128) = &a34 ^ 0x387C02B81FFF65DDLL;
  *(v45 - 112) = &a42;
  *(v45 - 104) = v43 - v46 + 1563140122;
  *(v45 - 100) = (v44 ^ ((v44 ^ 0x3AFAB2D7) - 1673408157) ^ ((v44 ^ 0x12BF51B) - 1483696465) ^ ((v44 ^ 0x5FFFDFFF) - 112935861) ^ (((((v43 + 14364) | 0x30B5) + 1030310852) ^ v44) - 1680775219) ^ 0xB396186) + v46;
  *(v45 - 144) = a31;
  *(v45 - 136) = &a40;
  v47 = (*(v42 + 8 * (v43 + 31478)))(v45 - 144);
  return (*(v42 + 8 * ((54749 * (*(v45 - 120) == -371865839)) ^ v43)))(v47);
}

uint64_t sub_10090A7E8@<X0>(int a1@<W3>, uint64_t a2@<X8>)
{
  *(*(a2 + 8 * (a1 - 44776)) - 236607454) = 0;
  *(*(a2 + 8 * (a1 - 43913)) - 181792134) = 99;
  *(*(a2 + 8 * (a1 ^ 0xB209)) - 1042596627) = 0;
  return (*(v2 + 8 * a1))();
}

uint64_t sub_10090A94C@<X0>(int a1@<W3>, _BYTE *a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, char a59)
{
  v64 = v60 - 1813622518;
  v65 = *STACK[0xB30];
  *(v63 - 160) = v65[18];
  if (a2[51])
  {
    v68 = -54;
  }

  else
  {
    v68 = 10;
  }

  v67 = ((a2[51] >> 3) | (32 * a2[51])) + 22;
  v66 = ((a2[51] >> 3) | (32 * a2[51])) > 0xE9u;
  v69 = ((v68 + v67 + (v66 << 8)) & 0x20000000 | 0x8E2B9C81) ^ (v68 + v67 + (v66 << 8)) & 0xDFFFFFFF;
  v70 = *(v62 + 8 * (v64 ^ 0x93E68408));
  v71 = *(v70 - 72492822 + (v69 ^ 0x8E2B9CD5));
  v72 = ((-43 - v71) & 0xFFFFFFA8 | 0x14) ^ (v71 + 42) & 0x28;
  v73 = (v71 + 42) ^ (2 * (((v71 + 42) ^ 0x28) & (2 * (((v71 + 42) ^ 0x28) & (2 * (((v71 + 42) ^ 0x28) & (2 * (((v71 + 42) ^ 0x28) & (2 * v72) ^ v72)) ^ v72)) ^ v72)) ^ v72));
  v74 = -92 - v71;
  v75 = ((v71 + 91) & 0x89 | 0x62) ^ (-92 - v71) & 0xD6;
  *(v63 - 159) = -101 * ((v73 & 4 | 0xFA) ^ ((2 * v73) << (v69 & 3 ^ 1) << (v69 & 3 ^ 2)) ^ 0xE9 ^ ((v74 ^ (2 * ((v74 ^ 8) & (2 * ((v74 ^ 8) & (2 * ((v74 ^ 8) & (2 * ((v74 ^ 8) & (2 * ((v74 ^ 8) & (2 * ((v74 ^ 8) & (2 * v75) ^ v75)) ^ v75)) ^ v75)) ^ v75)) ^ v75)) ^ v75))) & 0xFA | v74 & 1));
  *(v63 - 158) = a2[20];
  v76 = a2[59];
  v77 = ((((2 * v76) & 0xFFFFFFB2 ^ 0xE) - 35) ^ (((2 * v76) & 0xFFFFFFB2) - 27) ^ (((2 * v76) & 0xFFFFFFB2 ^ a1) - 106)) + (v76 ^ ((v76 ^ 0x5B) + 69) ^ ((v76 ^ 0x62) + 126) ^ 0xFFFFFFE0);
  v78 = (v77 - 49) & 0x91 ^ 5;
  v79 = (v77 - 49) ^ 0x16;
  v80 = -(v77 + 102) ^ ((v77 + 102) - ((2 * (v77 + 102)) & 0xC2) + 161103969) ^ 0x99A4061 ^ (144 - (((v77 - 49) ^ (2 * (v79 & (2 * (v79 & (2 * (v79 & (2 * (v79 & (2 * (v79 & (2 * (((2 * (v77 - 49)) & 0x2E ^ 6) & ((v77 - 49) ^ 6) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78))) ^ 1));
  LOBYTE(v69) = *(v70 - 72493617 + ((v80 + 144) ^ 0xE9)) + ((((v80 - ((2 * v80) & 0x9C) + 78) ^ 0x3B) - 59) ^ (((v80 - ((2 * v80) & 0x9C) + 78) ^ 0x82) + 126) ^ (((v80 - ((2 * v80) & 0x9C) + 78) ^ 0xF7) + 9)) - 14;
  v81 = v69 & 0xFC ^ 0xB6;
  v82 = (v69 & 0xFE ^ (2 * ((v69 ^ 0x10) & (2 * ((v69 ^ 0x10) & (2 * ((v69 ^ 0x10) & (2 * ((v69 ^ 0x10) & (2 * ((v69 ^ 0x10) & (2 * v81) ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ v81))) & 0xFE | v69 & 1;
  *(v63 - 157) = a59 + 21 * (((v82 ^ 0x88) + 28) ^ ((v82 ^ 0xCA) + 90) ^ ((v82 ^ 0xBA) + 42));
  *(v63 - 156) = v65[23];
  *(v63 - 155) = a2[126];
  *(v63 - 154) = a2[33];
  *(v63 - 153) = a2[39];
  *(v63 - 152) = v65[19];
  *(v63 - 151) = v65[39];
  *(v63 - 150) = v65[38];
  *(v63 - 149) = v65[1];
  *(v63 - 148) = a2[106];
  v83 = a2[35];
  v84 = (((v83 ^ 0xAB) + 125) ^ ((v83 ^ 0x70) - 88) ^ ((v83 ^ 2) - 42)) + ((((2 * v83) & 0xB2 ^ 0x23) - 10) ^ (((2 * v83) & 0xB2) - 39) ^ (((2 * v83) & 0xB2 ^ 0x22) - 11)) + 40;
  v85 = v84 & 0x8C ^ 0x4D;
  v86 = v84 ^ (2 * ((v84 ^ 0x72) & (2 * ((v84 ^ 0x72) & (2 * ((v84 ^ 0x72) & (2 * ((v84 ^ 0x72) & (2 * ((v84 ^ 0x72) & (2 * ((v84 ^ 0x72) & 0x3E ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ v85));
  v87 = v86 ^ 0xF5;
  v88 = (((v86 ^ 0x1C) + 63) ^ ((v86 ^ 0xF) + 46) ^ ((v86 ^ 0xAB) - 118)) + ((((2 * v86) & 0x48 ^ 0xBC) + 73) ^ (((2 * v86) & 0x48 ^ 0xE2) + 23) ^ (((2 * v86) & 0x48 ^ 0x56) - 93)) - 87;
  v89 = v88 & 0xE9 ^ 0xBD;
  v90 = v88 ^ (2 * ((v88 ^ 0x3E) & (2 * ((v88 ^ 0x3E) & (2 * ((v88 ^ 0x3E) & (2 * ((v88 ^ 0x3E) & (2 * ((v88 ^ 0x3E) & (2 * (((2 * v88) ^ 0x56) & (v88 ^ 0x3E) ^ v89)) ^ v89)) ^ v89)) ^ v89)) ^ v89)) ^ v89));
  v91 = *(v70 - 72493617 + v87);
  v92 = (((v90 ^ v91 ^ 0xD) + 35) ^ ((v90 ^ v91 ^ 0x33) + 29) ^ ((v90 ^ v91 ^ 0xD7) - 7)) + ((((2 * ((v90 ^ 0x69) & v91)) ^ 0xF2) + 5) ^ (((2 * ((v90 ^ 0x69) & v91)) ^ 0xD6) + 33) ^ (((2 * ((v90 ^ 0x69) & v91)) ^ 0x24) - 45)) - 108;
  v93 = v92 & 0x38 ^ 0x4D;
  v94 = v92 ^ (2 * ((v92 ^ 0x2E) & (2 * ((v92 ^ 0x2E) & (2 * ((v92 ^ 0x2E) & (2 * ((v92 ^ 0x2E) & (2 * (((2 * (v93 ^ v92 & 0x16)) ^ 0xC) & (v92 ^ 0x2E) ^ v93)) ^ v93)) ^ v93)) ^ v93)) ^ v93));
  *(v63 - 147) = a33 + 21 * (((v94 ^ 0x24) - 101) ^ ((v94 ^ 0xEB) + 86) ^ ((v94 ^ 0xF3) + 78));
  *(v63 - 146) = v65[32];
  *(v63 - 145) = a2[14];
  *(v63 - 144) = a2[3];
  *(v63 - 143) = a2[23];
  *(v63 - 142) = a2[84];
  *(v63 - 141) = v65[35];
  *(v63 - 140) = a2[38];
  *(v63 - 139) = v65[6];
  *(v63 - 138) = a2[125];
  *(v63 - 137) = a2[142];
  *(v63 - 136) = a2[41];
  *(v63 - 135) = a2[40];
  *(v63 - 134) = a2[99];
  *(v63 - 133) = a2[82];
  v95 = (a2[136] >> 3) | (32 * a2[136]);
  v96 = *(v70 - 72492822 + ((v95 - ((2 * v95) & 0x52) - 87) ^ 0xDDLL)) + 52;
  v97 = v96 & 0xFFFFFFEA ^ 0x2E;
  v98 = (v96 ^ 0x1C) & (2 * ((v96 ^ 0x1C) & (2 * ((v96 ^ 0x1C) & (2 * ((v96 ^ 0x1C) & (2 * v97) ^ v97)) ^ v97)) ^ v97)) ^ v97;
  LOBYTE(v96) = v96 ^ (2 * ((v96 ^ 0x1C) & (2 * ((v96 ^ 0x1C) & (2 * ((v96 ^ 0x1C) & (2 * ((v96 ^ 0x1C) & (2 * ((v96 ^ 0x1C) & (2 * v97) ^ v97)) ^ v97)) ^ v97)) ^ v97)) ^ v97)) ^ 0x65;
  *(v63 - 132) = a56 - 101 * (((v96 ^ (16 * v96) ^ 0x86) - 90) ^ ((v96 ^ (16 * v96) ^ 0xED) - 49) ^ ((v96 ^ (16 * v96) ^ 0xA7) - 123));
  v99 = (a2[127] >> 3) | (32 * a2[127]);
  STACK[0xD40] = v70 - 72493353;
  LOBYTE(v99) = *(v70 - 72493353 + ((v99 - ((2 * v99) & 0xC4) - 30) ^ 0xB0));
  *(v63 - 131) = (((v99 ^ v61) + 65) ^ ((v99 ^ 0x2C) - 38) ^ ((v99 ^ 0x84) + 114)) - 41;
  *(v63 - 130) = a2[34];
  *(v63 - 129) = a2[83];
  v100 = a2[62];
  STACK[0xEB8] = v100;
  *(v63 - 128) = v100;
  v101 = a2[90];
  STACK[0xEC0] = v101;
  *(v63 - 127) = v101;
  v102 = a2[134];
  STACK[0xDF8] = v102;
  *(v63 - 126) = v102;
  v103 = a2[5] + 48;
  v104 = v103 & 0xFFFFFF93 ^ 0x35;
  v105 = v103 ^ (2 * ((v103 ^ 0x28) & (2 * ((v103 ^ 0x28) & (2 * ((v103 ^ 0x28) & (2 * ((v103 ^ 0x28) & (2 * (((2 * (((2 * v103) & 0x52 | 0x29) & v103)) ^ 0x3A) & (v103 ^ 0x28) ^ v104)) ^ v104)) ^ v104)) ^ v104)) ^ v104));
  v106 = (((v105 ^ 0x56) - 29) ^ ((v105 ^ 0x53) - 24) ^ ((v105 ^ 6) - 77)) + 56;
  v107 = v106 & 0xFFFFFFD0 ^ 0xFFFFFF96;
  v108 = v106 ^ (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * v107) ^ v107)) ^ v107)) ^ v107)) ^ v107)) ^ v107));
  v109 = *(v70 - 72493617 + (v105 ^ 0xEALL));
  v110 = (((v108 ^ v109 ^ 0xFFFFFFB4) - 45) ^ ((v108 ^ v109 ^ 0xFFFFFFE5) - 124) ^ ((v108 ^ v109 ^ 0xFFFFFF81) - 24)) + ((((2 * ((v108 ^ 0x50) & v109)) ^ 0xFFFFFFD2) - 36) ^ (((2 * ((v108 ^ 0x50) & v109)) ^ 0xFFFFFFD6) - 32) ^ (((2 * ((v108 ^ 0x50) & v109)) ^ 4) + 14)) - 116;
  v111 = v110 & 0x71 ^ 0xFFFFFFE3;
  v112 = v110 ^ (2 * ((v110 ^ 0x32) & (2 * ((v110 ^ 0x32) & (2 * ((v110 ^ 0x32) & (2 * ((v110 ^ 0x32) & (2 * ((v110 ^ 0x22) & (2 * (((2 * v110) & 0x66 ^ 0x42) & (v110 ^ 0x22) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111));
  v113 = LODWORD(STACK[0x4D4]) + 21 * (((v112 ^ 0x15) - 68) ^ ((v112 ^ 0x5E) - 15) ^ ((v112 ^ 0x3Eu) - 111));
  LODWORD(STACK[0xED0]) = (v59 ^ 0x70ACF8FF) - 268449908 + ((v59 << ((v64 - 35) ^ 0x85)) & 0xE159F1FE);
  *(v63 - 125) = v113;
  v114 = a2[45] ^ 0x24;
  STACK[0xD70] = v70 - 72493087;
  LODWORD(v114) = ((*(v70 - 72493087 + v114) ^ 0x41) + 22) ^ ((*(v70 - 72493087 + v114) ^ 0x4F) + 28) ^ ((*(v70 - 72493087 + v114) ^ 0x31) + 102);
  STACK[0xE98] = (v114 - 29);
  *(v63 - 124) = v114 - 29;
  v115 = a2[119];
  STACK[0xEB0] = v115;
  *(v63 - 123) = v115;
  v116 = a2[57];
  STACK[0xEA0] = v116;
  *(v63 - 122) = v116;
  STACK[0xEA8] = a2[18];
  v117 = *(STACK[0xED8] + 8 * (v64 ^ 0x93E6AFE5 ^ (29926 * (v64 < 0x500FA8FE))));
  v118.n128_u64[0] = 0x5555555555555555;
  v118.n128_u64[1] = 0x5555555555555555;
  v119.n128_u64[0] = 0x3333333333333333;
  v119.n128_u64[1] = 0x3333333333333333;
  v120.n128_u64[0] = 0xF0F0F0F0F0F0F0FLL;
  v120.n128_u64[1] = 0xF0F0F0F0F0F0F0FLL;
  LODWORD(STACK[0xE00]) = STACK[0xF0C];
  LODWORD(STACK[0xD60]) = *(v63 - 152);
  v121 = *(v63 - 160);
  v122 = *(v63 - 153);
  STACK[0xE08] = *(v63 - 150);
  STACK[0xE20] = *(v63 - 145);
  STACK[0xE18] = *(v63 - 149);
  STACK[0xE10] = *(v63 - 147);
  STACK[0xE28] = *(v63 - 146);
  STACK[0xE58] = *(v63 - 139);
  STACK[0xE50] = *(v63 - 136);
  STACK[0xE38] = *(v63 - 134);
  STACK[0xE30] = *(v63 - 144);
  STACK[0xE48] = *(v63 - 135);
  STACK[0xE60] = *(v63 - 140);
  STACK[0xE70] = *(v63 - 137);
  STACK[0xE40] = *(v63 - 141);
  STACK[0xE68] = *(v63 - 132);
  STACK[0xE78] = *(v63 - 131);
  STACK[0xE90] = *(v63 - 138);
  STACK[0xE88] = *(v63 - 133);
  STACK[0xE80] = *(v63 - 130);
  LODWORD(STACK[0xD58]) = 1;
  STACK[0xD68] = v70 - 72492822;
  return v117(&STACK[0xF60], v121, v113, 0x101010101010101, v98, v122, vdupq_n_s64(0x1FEuLL), vdupq_n_s64(0x40uLL), v118, v119, v120);
}

uint64_t sub_10090B4E8@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x6A0]) = v1;
  v4 = v1 + a1;
  LODWORD(STACK[0x6A4]) = v4;
  v5 = v4 + ((v2 - 1191003272 + (LODWORD(STACK[0x52C]) ^ ((v2 ^ 0x8DA7) + 1190949441))) ^ ((LODWORD(STACK[0x52C]) ^ 0x67D54915) - 1742031125) ^ ((LODWORD(STACK[0x52C]) ^ 0xC8FC1397) + 923004009)) + 111106533;
  v6 = (v5 ^ 0xEB360FF0) & (2 * (v5 & 0xEBB68FE4)) ^ v5 & 0xEBB68FE4;
  v7 = ((2 * (v5 ^ 0xFC7A18B0)) ^ 0x2F992EA8) & (v5 ^ 0xFC7A18B0) ^ (2 * (v5 ^ 0xFC7A18B0)) & 0x17CC9754;
  v8 = v7 ^ 0x10449154;
  v9 = (v7 ^ 0x7880600) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x5F325D50) & v8 ^ (4 * v8) & 0x17CC9750;
  v11 = (v10 ^ 0x17001540) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0xCC8204)) ^ 0x7CC97540) & (v10 ^ 0xCC8204) ^ (16 * (v10 ^ 0xCC8204)) & 0x17CC9740;
  v13 = v11 ^ 0x17CC9754 ^ (v12 ^ 0x14C81500) & (v11 << 8);
  v14 = v5 ^ (2 * ((v13 << 16) & 0x17CC0000 ^ v13 ^ ((v13 << 16) ^ 0x17540000) & (((v12 ^ 0x3048214) << 8) & 0x17CC0000 ^ 0x13480000 ^ (((v12 ^ 0x3048214) << 8) ^ 0x4C970000) & (v12 ^ 0x3048214))));
  LODWORD(STACK[0x52C]) = v14 ^ 0x372665D;
  v15 = (*(v3 + 8 * (v2 + 9123)))(v14 ^ 0xEAA7A14C);
  STACK[0x4A8] = v15;
  return (*(v3 + 8 * ((499 * (v15 != 0)) ^ v2)))();
}

uint64_t sub_10090BC44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v18 = v6 - 1;
  v19 = __ROR8__((v5 + v18) & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = ((((26 * (v13 ^ 0x569F)) ^ 0x893EF026808CF22DLL) - v19) & v17) + v19 + v15 - ((v19 + v15) & v14);
  v21 = v20 ^ v7;
  v22 = v20 ^ v8;
  v23 = (__ROR8__(v21, 8) + v22) ^ v9;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ v10;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ v11;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v12;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8) + v30;
  v32 = __ROR8__((a5 + v18) & 0xFFFFFFFFFFFFFFF8, 8);
  v33 = ((2 * (v32 - 0x296E95066F186A7FLL)) | 0xE0CA491B1DB60792) - (v32 - 0x296E95066F186A7FLL) - 0x7065248D8EDB03C9;
  v34 = v33 ^ 0x77473D6E72FC37BBLL;
  v33 ^= 0xC3CC6AA2F5C09BB5;
  v35 = (__ROR8__(v34, 8) + v33) ^ 0x14BA074A2F986FE5;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v35, 8);
  v38 = ((v31 | a1) - (v31 | a4) + a4) ^ a3;
  v39 = (v37 + v36 - ((2 * (v37 + v36)) & 0xF5BCA2EADAE7990) + 0x7ADE51756D73CC8) ^ 0x2B9A6D54AF735250;
  v40 = v39 ^ __ROR8__(v36, 61);
  v41 = v38 ^ __ROR8__(v30, 61);
  v42 = __ROR8__(v39, 8) + v40;
  v43 = STACK[0x3A8];
  v44 = (__ROR8__(v38, 8) + v41) ^ 0xF3BF57149DD63255;
  v45 = (((2 * v42) | 0x67121BDC854B3408) - v42 + 0x4C76F211BD5A65FCLL) ^ 0xEF4200783AF3B6ELL;
  v46 = v45 ^ __ROR8__(v40, 61);
  v47 = __ROR8__(v44, 8) + (v44 ^ __ROR8__(v41, 61));
  v48 = (__ROR8__(v45, 8) + v46) ^ 0x82B08017BF43C069;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (((v50 + v49) | 0x79B2AA4BD92976FLL) - ((v50 + v49) | a2) + a2) ^ 0xAD06F01E5F764313;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0x8FB22143FEDB6CB3;
  *(a5 + v18) = (((__ROR8__(v53, 8) + (v53 ^ __ROR8__(v52, 61))) ^ v16) >> (8 * ((a5 + v18) & 7))) ^ ((v47 ^ 0xDEAB482C129480D9) >> (8 * ((v5 + v18) & 7))) ^ *(v5 + v18);
  return (*(v43 + 8 * ((16145 * (v18 == 0)) ^ v13)))();
}

uint64_t sub_10090BF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = v13 + a1;
  v20 = v13 + a1 - 0xF1653028D44ECE5;
  v21 = __ROR8__(v20 & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = v21 - ((2 * v21 - 0x5CDAF98343AD3988) & 0xE2CFD206D155D4C0) - 0x390593BE392BB264;
  v23 = __ROR8__(v22 ^ 0x6BE660E077318EC8, 8);
  v22 ^= 0xE7727912867A972ELL;
  v24 = (v23 + v22 - ((2 * (v23 + v22)) & 0xC6C3F8EC9963F99ALL) + 0x6361FC764CB1FCCDLL) ^ 0x44EB7E5FF40DC910;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = *(v7 + 8 * v12);
  v27 = (__ROR8__(v24, 8) + v25) ^ a5;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x19BBA1D59C2A28CLL;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (v31 + v30 - ((2 * (v31 + v30)) & 0xE3E2E070CCC5C1CELL) + 0x71F170386662E0E7) ^ 0xD8A92547B59E993ALL;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (v34 + v33 - ((2 * (v34 + v33)) & 0x8F20F79ADB3B6DF2) - 0x386F843292624907) ^ 0xEBAF0B369B641B5ALL;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((v37 + v36) | 0x507EC6BF657D269ELL) - ((v37 + v36) | a4) + a4) ^ 0x4B232FB62ED28384;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8);
  LOBYTE(v39) = (((((2 * (v40 + v39)) & 0x3A472E94DCE4D1ALL) - (v40 + v39) - 0x1D23974A6E7268ELL) ^ 0x3A1A01B926C9F646uLL) >> (8 * (v20 & 7u))) ^ HIBYTE(v14) ^ 0x11;
  v41 = __ROR8__((v19 - 0xF1653028D44ECE4) & 0xFFFFFFFFFFFFFFF8, 8);
  *v20 = v39;
  v42 = v41 - ((2 * v41 + 0x2325067CBC52C678) & 0x2683C4CE14417DBELL) + 0x64D465A5684A221BLL;
  v43 = v42 ^ 0xDC06B8415BBDA77;
  v42 ^= 0x81547276E4F0C391;
  v44 = (__ROR8__(v43, 8) + v42) ^ v15;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ a5;
  v47 = __ROR8__(v46, 8);
  v48 = v46 ^ __ROR8__(v45, 61);
  v49 = (((v47 + v48) | 0x327688EEFA1717DFLL) - ((v47 + v48) | v6) + v6) ^ 0x33ED32F3A3D5B553;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ a6;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (v53 + v52 - ((2 * (v53 + v52)) & 0x321E4376094819E0) - 0x66F0DE44FB5BF310) ^ 0xB5305140F25DA153;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = __ROR8__(v54, 8);
  v57 = (v56 + v55 - ((2 * (v56 + v55)) & 0xAD2AFE16A9BE3CDALL) + 0x56957F0B54DF1E6DLL) ^ 0x4DC896021F70BB77;
  v58 = __ROR8__(v57, 8);
  v59 = __ROR8__(v55, 61);
  *(v19 - 0xF1653028D44ECE4) = (((((2 * (v58 + (v57 ^ v59))) | 0xF092B567EF92DCF2) - (v58 + (v57 ^ v59)) + 0x7B6A54C08369187) ^ 0x3C7E9D818818414DLL) >> (8 * ((v19 + 28) & 7))) ^ BYTE2(v14) ^ 0x50;
  v60 = __ROR8__((v19 - 0xF1653028D44ECE3) & 0xFFFFFFFFFFFFFFF8, 8);
  v61 = (v60 - 0x2E6D7CC1A1D69CC4) ^ 0x12159011EED07D4ELL;
  v62 = (__ROR8__((v60 - 0x2E6D7CC1A1D69CC4) ^ 0x9E8189E31F9B64A8, 8) + v61) ^ v15;
  v63 = __ROR8__(v62, 8);
  v64 = v62 ^ __ROR8__(v61, 61);
  v65 = (((2 * (v63 + v64)) | 0xA1B17E36F517C362) - (v63 + v64) + 0x2F2740E485741E4FLL) ^ 0x2DD2A6A0556AD3B4;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0x19BBA1D59C2A28CLL;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ a6;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ 0x2C3F70FBF6F9ADA3;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = __ROR8__(v71, 8);
  v74 = (((v73 + v72) | 0x80FCAA11A3E30BE0) - ((v73 + v72) | v10) + v10) ^ 0x9BA14318E84CAEFALL;
  *(v19 - 0xF1653028D44ECE3) = (((__ROR8__(v74, 8) + (v74 ^ __ROR8__(v72, 61))) ^ 0xC437C7327FD12F34) >> (8 * ((v19 + 29) & 7))) ^ BYTE1(v14) ^ 0xB5;
  v75 = (v19 - 0xF1653028D44ECE2);
  v76 = __ROR8__((v19 - 0xF1653028D44ECE2) & 0xFFFFFFFFFFFFFFF8, 8);
  v77 = ((2 * (v76 - 0x2E6D7CC1A1D69CC4)) | 0xC077F409C91E376) - (v76 - 0x2E6D7CC1A1D69CC4) - 0x603BFA04E48F1BBLL;
  v78 = v77 ^ 0x9882364351D39513;
  v77 ^= 0x14162FB1A0988CF5uLL;
  v79 = __ROR8__(v78, 8);
  v80 = __ROR8__((((v79 + v77) | 0x99725022D4A9356ELL) - ((v79 + v77) | v16) + v16) ^ v17, 8);
  v81 = (((v79 + v77) | 0x99725022D4A9356ELL) - ((v79 + v77) | v16) + v16) ^ v17 ^ __ROR8__(v77, 61);
  v82 = (v80 + v81) ^ a5;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0x19BBA1D59C2A28CLL;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ a6;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = __ROR8__(v86, 8);
  v89 = (v88 + v87 - (v18 & (2 * (v88 + v87))) + v9) ^ v8;
  v90 = v89 ^ __ROR8__(v87, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ 0x1B5DE9094BAFA51ALL;
  *v75 = v14 ^ v11 ^ (((__ROR8__(v91, 8) + (v91 ^ __ROR8__(v90, 61))) ^ 0xC437C7327FD12F34) >> (8 * (v75 & 7u)));
  return v26();
}

uint64_t sub_10090C70C(double a1, double a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int64x2_t a7, int64x2_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  v68 = veorq_s8(veorq_s8(veorq_s8(a5, vaddq_s64(veorq_s8(a5, v57), v58)), veorq_s8(vaddq_s64(veorq_s8(a5, v59), v60), vaddq_s64(veorq_s8(a5, v61), v62))), veorq_s8(vaddq_s64(veorq_s8(a5, v63), v64), v65));
  v69 = veorq_s8(veorq_s8(veorq_s8(a6, vaddq_s64(veorq_s8(a6, v57), v58)), veorq_s8(vaddq_s64(veorq_s8(a6, v59), v60), vaddq_s64(veorq_s8(a6, v61), v62))), veorq_s8(vaddq_s64(veorq_s8(a6, v63), v64), v65));
  v70 = v69.i64[1];
  v112 = v69.i64[0];
  v71 = vaddq_s64(a6, v66);
  v72 = v71.i64[1];
  v110 = v71.i64[0];
  v111 = v68.i64[1];
  v109 = v68.i64[0];
  v113.val[1] = vaddq_s64(a5, v66);
  v108 = v113.val[1].i64[1];
  v73 = veorq_s8(veorq_s8(veorq_s8(a4, vaddq_s64(veorq_s8(a4, v57), v58)), veorq_s8(vaddq_s64(veorq_s8(a4, v59), v60), vaddq_s64(veorq_s8(a4, v61), v62))), veorq_s8(vaddq_s64(veorq_s8(a4, v63), v64), v65));
  v74 = vaddq_s64(a4, v66);
  v75 = v113.val[1].i64[0];
  v76 = v73.i64[1];
  v77 = v73.i64[0];
  v78 = veorq_s8(veorq_s8(veorq_s8(v55, vaddq_s64(veorq_s8(v55, v57), v58)), veorq_s8(vaddq_s64(veorq_s8(v55, v59), v60), vaddq_s64(veorq_s8(v55, v61), v62))), veorq_s8(vaddq_s64(veorq_s8(v55, v63), v64), v65));
  v79 = v78.i64[1];
  v80 = v78.i64[0];
  v81 = vaddq_s64(v55, v66);
  v82 = v81.i64[1];
  v83 = v81.i64[0];
  v84 = vaddq_s64(v56, v66);
  v85 = v84.i64[1];
  v86 = veorq_s8(veorq_s8(veorq_s8(v56, vaddq_s64(veorq_s8(v56, v57), v58)), veorq_s8(vaddq_s64(veorq_s8(v56, v59), v60), vaddq_s64(veorq_s8(v56, v61), v62))), veorq_s8(vaddq_s64(veorq_s8(v56, v63), v64), v65));
  v87 = v86.i64[1];
  v88 = vaddq_s64(a8, v66);
  v89 = v86.i64[0];
  v90 = veorq_s8(veorq_s8(veorq_s8(a8, vaddq_s64(veorq_s8(a8, v57), v58)), veorq_s8(vaddq_s64(veorq_s8(a8, v59), v60), vaddq_s64(veorq_s8(a8, v61), v62))), veorq_s8(vaddq_s64(veorq_s8(a8, v63), v64), v65));
  v91 = v90.i64[1];
  v92 = v84.i64[0];
  v113.val[0] = vaddq_s64(a7, v66);
  v93 = v90.i64[0];
  v94 = v113.val[0].i64[1];
  v95 = veorq_s8(veorq_s8(veorq_s8(a7, vaddq_s64(veorq_s8(a7, v57), v58)), veorq_s8(vaddq_s64(veorq_s8(a7, v59), v60), vaddq_s64(veorq_s8(a7, v61), v62))), veorq_s8(vaddq_s64(veorq_s8(a7, v63), v64), v65));
  v96 = v95.i64[1];
  v97 = v95.i64[0];
  v98 = v113.val[0].i64[0];
  v99 = veorq_s8(veorq_s8(veorq_s8(a3, vaddq_s64(veorq_s8(a3, v57), v58)), veorq_s8(vaddq_s64(veorq_s8(a3, v59), v60), vaddq_s64(veorq_s8(a3, v61), v62))), veorq_s8(vaddq_s64(veorq_s8(a3, v63), v64), v65));
  v113.val[1].i64[0] = v80 * v83;
  v113.val[1].i64[1] = v79 * v82;
  v113.val[0].i64[0] = v89 * v92;
  v100 = v91 * v88.i64[1];
  v101 = v96 * v113.val[0].i64[1];
  v113.val[0].i64[1] = v87 * v85;
  v113.val[2].i64[0] = v93 * v88.i64[0];
  v102 = v99.i64[1];
  v103 = v99.i64[0];
  v113.val[2].i64[1] = v100;
  v113.val[3].i64[0] = v97 * v98;
  v104 = vaddq_s64(a3, v66);
  v113.val[3].i64[1] = v101;
  v105 = v104.i64[0];
  v104.i64[0] = vqtbl4q_s8(v113, v67).u64[0];
  v113.val[0].i64[0] = v112 * v110;
  v113.val[0].i64[1] = v70 * v72;
  v113.val[1].i64[0] = v109 * v75;
  v113.val[1].i64[1] = v111 * v108;
  v113.val[2].i64[0] = v77 * v74.i64[0];
  v113.val[2].i64[1] = v76 * v74.i64[1];
  v113.val[3].i64[0] = v103 * v105;
  v113.val[3].i64[1] = v102 * v104.i64[1];
  v104.i64[1] = vqtbl4q_s8(v113, v67).u64[0];
  v106 = vrev64q_s8(v104);
  *(a47 + (v54 ^ 0xFFFFFFFFFFFFD879 ^ a52) + a53) = vextq_s8(v106, v106, 8uLL);
  return (*(v53 + 8 * ((73 * (a45 == v54)) ^ a49)))(v93, v92, v87, v89, v80, v85, v94, v96, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53);
}

uint64_t sub_10090CA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a8 - *(v10 - 16) + 0x3CE25E0EC5200378);
  v12 = ((v8 ^ 0xF9C25D76) << (v8 - 88)) + v8;
  return (*(v9 + 8 * (v8 ^ 0xC52036AC ^ (((((v11 - v12) | (v12 - v11)) & 0x8000000000000000) == 0) * ((v8 ^ 0xC520988C) - 2822)))))();
}

uint64_t sub_10090CBC8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned __int8 *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, unsigned __int8 *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = *(&off_1010A0B50 + (LODWORD(STACK[0x270]) ^ 0x3924)) - 1478130135;
  v68 = (26305 * (HIBYTE(v63) ^ 0xD3) + 1751071240) % 0x10C80u;
  *(v66 - 224) = -1417558473 * (455965850 - BYTE2(a1)) + 1417584778 * (68123 - BYTE2(a1));
  v69 = (v67[(26305 * (BYTE2(a6) ^ 0xF5u) + 1757936845) % 0x10C80] << 24) ^ 0x3A4D2FD7;
  v70 = (v67[26305 * (HIBYTE(v64) ^ 0xE2) - 68736 * (((7998077 * (26305 * (HIBYTE(v64) ^ 0xE2))) >> 32) >> 7)] << 16) ^ 0x71BE4442;
  v71 = v67;
  v72 = (v67[(26305 * (a7 ^ 0x68u) + 1771668055) % 0x10C80] << 8) ^ 0x66DB991D;
  v73 = (26305 * (BYTE1(v63) ^ 0x85u) + 1751071240) % 0x10C80;
  *(v66 - 188) = a1;
  v74 = (26305 * (BYTE2(v63) ^ 0x12u) + 1751071240) % 0x10C80;
  v75 = (v71[v74] ^ 0xFFFFFF80) & v69 | v71[v74] & 0x28;
  v76 = (26305 * (v63 ^ 0x9Eu) + 1751071240) % 0x10C80;
  v77 = v67[(26305 * (HIBYTE(a6) ^ 0x7B) + 1757936845) % 0x10C80u] ^ 0xEB3F72A7;
  v78 = ((v77 << 24) ^ 0x7F3FB541) & (v71[v68] ^ 0xFF3FFD9D) | v71[v68] & 0xBE;
  v79 = v67[(26305 * (HIBYTE(a7) ^ 0x15) + 1771668055) % 0x10C80u] << 8;
  v80 = ((v70 & ~v79 | v79 & 0xBBBBBBBB) ^ 0x6AF62487) & (v78 ^ 0x9AC04A1C) ^ v78 & 0xE412843A;
  v81 = v67[26305 * (v64 ^ 0x96) - 68736 * (((7998077 * (26305 * (v64 ^ 0x96u))) >> 32) >> 7)] << 16;
  LODWORD(v67) = v67[(26305 * (BYTE2(a7) - ((a7 >> 15) & 0x13E) + 159) + 1771668055) % 0x10C80] << 8;
  v82 = v71;
  v83 = ((v81 ^ 0x6651FF1D) & v72 & 0x40C94A00 ^ 0x9A9D89BF ^ (((v71[(26305 * (a6 ^ 0x43u) + 1757936845) % 0x10C80] ^ 0x14) << 24) ^ 0xA036B59E) & (((v81 ^ 0x6651FF1D) & v72 | v81 & 0x240000) ^ 0x996DEB83)) & (v82[v76] ^ 0xFFFFFF0F) ^ (v82[v76] | 0x17309321);
  v84 = *(&off_1010A0B50 + LODWORD(STACK[0x270]) - 12000) - 1494912955;
  v85 = (v82[v73] ^ 0x71FF03A0) & ((v82[26305 * (BYTE1(v64) ^ 0x12) - 68736 * (((7998077 * (26305 * (BYTE1(v64) ^ 0x12u))) >> 32) >> 7)] << 16) ^ 0x710803F1) | v82[v73] & 0xE;
  v86 = v71[26305 * (BYTE2(v64) ^ 0xC) - 68736 * (((7998077 * (26305 * (BYTE2(v64) ^ 0xCu))) >> 32) >> 7)] << 16;
  v87 = v86 & 0xAC0000 ^ 0xC3B723A2 ^ ((v67 & 0x4B00 | (v67 ^ 0xFF69A4FF) & (v75 ^ 0x7D249B0A)) ^ 0x73A7694) & (v86 ^ 0xFFCDFFFF);
  *(v66 - 152) = v71;
  v88 = v71[(26305 * (BYTE1(a7) ^ 0xBAu) + 1771668055) % 0x10C80] << 8;
  v89 = (v88 & 0x7300 | (*&v88 | 0xFFFF03FF) & (v85 ^ 0xA4608F9F)) ^ 0x5BE1DCC1;
  v90 = v71[(26305 * (BYTE1(a6) ^ 0x18u) + 1757936845) % 0x10C80] << 24;
  v91 = *&v84[4 * (8089 * ((((((v77 << 12) ^ 0x584FD6AC) - 941976569) ^ (((v77 << 12) ^ 0xA468A811) + 1006496444) ^ (((v77 << 12) ^ 0xB084EBD) - 1801647080)) - 1724486315) >> 12) % 0x3084)];
  LODWORD(v67) = *&v84[4 * (8089 * (BYTE1(v80) ^ 0xEA) + 96121587 - 12420 * (((177055013 * (8089 * (BYTE1(v80) ^ 0xEAu) + 96121587)) >> 32) >> 9))];
  v92 = v89 & (v90 ^ 0x6CFFFFFF) ^ v90 & 0x71000000;
  LODWORD(STACK[0x260]) = v92;
  v234 = __PAIR64__(v83, v87);
  v93 = v91 ^ v67 ^ *&v84[4 * (8089 * (v80 ^ 0x1C) + 12457060 - 12420 * (((22131877 * (8089 * (v80 ^ 0x1Cu) + 12457060)) >> 32) >> 6))] ^ *&v84[4 * (8089 * (BYTE2(v80) ^ 0x60) + 60141715 - 12420 * (((88527507 * (8089 * (BYTE2(v80) ^ 0x60u) + 60141715)) >> 32) >> 8))] ^ v83 ^ 0x785498E5;
  v94 = v93 ^ v92 ^ 0x625B82F4;
  v95 = v94 ^ v87;
  LODWORD(v233) = v80 ^ 0x5478E595;
  v96 = v94 ^ v87 ^ v80 ^ 0x5478E595;
  v97 = 8089 * ((v94 ^ v87 ^ v80 ^ 0x95) ^ 0x78) + 12457060;
  LODWORD(v67) = *&v84[4 * (v97 - 12420 * (((22131877 * v97) >> 32) >> 6))] ^ *&v84[4 * (8089 * (HIBYTE(v96) ^ 0xB4) + 64307550 - 12420 * (((88527507 * (8089 * (HIBYTE(v96) ^ 0xB4) + 64307550)) >> 32) >> 8))] ^ *&v84[4 * (8089 * (BYTE2(v96) ^ 0xD1) + 60141715 - 12420 * (((88527507 * (8089 * (BYTE2(v96) ^ 0xD1u) + 60141715)) >> 32) >> 8))] ^ *&v84[4 * (8089 * (BYTE1(v96) ^ 0x45) + 96121587 - 12420 * (((177055013 * (8089 * (BYTE1(v96) ^ 0x45u) + 96121587)) >> 32) >> 9))] ^ 0x91F820C0;
  v98 = v67 ^ v92 ^ 0x625B82F4;
  HIDWORD(v231) = v98 ^ v95;
  v99 = v98 ^ v95 ^ 0xFF56D156;
  v100 = v99 ^ v96;
  LODWORD(STACK[0x258]) = v99;
  v101 = 8089 * (((v99 ^ v96) >> 16) ^ 0xBD) + 60141715;
  LODWORD(v231) = v100;
  HIDWORD(v233) = v93;
  HIDWORD(v230) = v67 ^ v93;
  v102 = *&v84[4 * (v101 - 12420 * (((88527507 * v101) >> 32) >> 8))] ^ *&v84[4 * (8089 * (BYTE1(v100) ^ 0x6A) + 96121587 - 12420 * (((177055013 * (8089 * (BYTE1(v100) ^ 0x6Au) + 96121587)) >> 32) >> 9))] ^ *&v84[4 * (8089 * (HIBYTE(v100) ^ 0x29) + 64307550 - 12420 * (((88527507 * (8089 * (HIBYTE(v100) ^ 0x29) + 64307550)) >> 32) >> 8))] ^ v67 ^ v93 ^ *&v84[4 * (8089 * (v100 ^ 0x1C) + 12457060 - 12420 * (((22131877 * (8089 * (v100 ^ 0x1Cu) + 12457060)) >> 32) >> 6))] ^ 0x6A542D16;
  v232 = __PAIR64__(v95, v98);
  v103 = v102 ^ v98 ^ v96;
  HIDWORD(a41) = v102 ^ v98;
  HIDWORD(v229) = v103;
  LODWORD(v230) = v102;
  LODWORD(v229) = *&v84[4 * (8089 * (v103 ^ 0x42) + 12457060 - 12420 * (((22131877 * (8089 * (v103 ^ 0x42u) + 12457060)) >> 32) >> 6))] ^ *&v84[4 * (8089 * (BYTE2(v103) ^ 0xF6) + 60141715 - 12420 * (((88527507 * (8089 * (BYTE2(v103) ^ 0xF6u) + 60141715)) >> 32) >> 8))] ^ *&v84[4 * (8089 * (BYTE1(v103) ^ 0x97) + 96121587 - 12420 * (((177055013 * (8089 * (BYTE1(v103) ^ 0x97u) + 96121587)) >> 32) >> 9))] ^ v102 ^ *&v84[4 * (8089 * (HIBYTE(v103) ^ 0xE2) + 64307550 - 12420 * (((88527507 * (8089 * (HIBYTE(v103) ^ 0xE2) + 64307550)) >> 32) >> 8))];
  LODWORD(STACK[0x250]) = v229 ^ 0x6AFE7A84;
  HIDWORD(v228) = v229 ^ 0x6AFE7A84 ^ v98 ^ v95 ^ 0xFF56D156;
  v104 = HIDWORD(v228) ^ 0xD406A90 ^ v103;
  LODWORD(v228) = v104;
  v105 = 8089 * (BYTE4(v228) ^ 0x90 ^ v103 ^ 0x91) + 12457060;
  LODWORD(v67) = *&v84[4 * (8089 * (BYTE2(v104) ^ 0x8E) + 60141715 - 12420 * (((88527507 * (8089 * (BYTE2(v104) ^ 0x8Eu) + 60141715)) >> 32) >> 8))] ^ *&v84[4 * (8089 * (HIBYTE(v104) ^ 0x2D) + 64307550 - 12420 * (((88527507 * (8089 * (HIBYTE(v104) ^ 0x2D) + 64307550)) >> 32) >> 8))] ^ *&v84[4 * (8089 * (BYTE1(v104) ^ 0x9A) + 96121587 - 12420 * (((177055013 * (8089 * (BYTE1(v104) ^ 0x9Au) + 96121587)) >> 32) >> 9))] ^ *&v84[4 * (v105 - 12420 * (((22131877 * v105) >> 32) >> 6))] ^ 0x9D2305A7;
  v106 = 8089 * (((v67 ^ v96) >> 8) ^ 0x14) + 96121587;
  v107 = 8089 * (((v67 ^ v96) >> 16) ^ 0x8C) + 60141715;
  v108 = 8089 * ((v67 ^ v96) ^ 0x85) + 12457060;
  v109 = 8089 * (((v67 ^ v96) >> 24) ^ 0x85) + 64307550;
  LODWORD(v227) = v67 ^ v229 ^ 0x6AFE7A84;
  HIDWORD(v227) = v67 ^ v96;
  v110 = *&v84[4 * (v109 - 12420 * (((88527507 * v109) >> 32) >> 8))] ^ *&v84[4 * (v106 - 12420 * (((177055013 * v106) >> 32) >> 9))] ^ *&v84[4 * (v108 - 12420 * (((22131877 * v108) >> 32) >> 6))] ^ v227 ^ *&v84[4 * (v107 - 12420 * (((88527507 * v107) >> 32) >> 8))];
  v111 = v67 ^ HIDWORD(a41);
  v112 = v67 ^ v96 ^ 0x1E7B99CC;
  LODWORD(v226) = v67 ^ HIDWORD(a41) ^ HIDWORD(v228) ^ 0xD406A90;
  *(v66 - 212) = v110;
  LODWORD(v67) = v110 ^ 0xE5EE8129;
  HIDWORD(v226) = v111;
  v113 = v110 ^ 0xE5EE8129 ^ v111;
  LODWORD(STACK[0x220]) = v113;
  v114 = v113 ^ 0x97AF3EE2;
  HIDWORD(v225) = v113 ^ 0x97AF3EE2 ^ v226 ^ 0xF009D311;
  v115 = 8089 * (((HIDWORD(v225) ^ v112) >> 16) ^ 0xB0) + 60141715;
  v116 = 8089 * (((WORD2(v225) ^ v112) >> 8) ^ 0xA1) + 96121587;
  v117 = 8089 * (((HIDWORD(v225) ^ v112) >> 24) ^ 0xC5) + 64307550;
  v118 = *&v84[4 * (v115 - 12420 * (((88527507 * v115) >> 32) >> 8))];
  LODWORD(STACK[0x248]) = HIDWORD(v225) ^ v112;
  v119 = *&v84[4 * (v116 - 12420 * (((177055013 * v116) >> 32) >> 9))] ^ v118 ^ *&v84[4 * (v117 - 12420 * (((88527507 * v117) >> 32) >> 8))] ^ v67 ^ *&v84[4 * (8089 * ((BYTE4(v225) ^ v112) ^ 0xC0) + 12457060 - 12420 * (((22131877 * (8089 * ((BYTE4(v225) ^ v112) ^ 0xC0u) + 12457060)) >> 32) >> 6))];
  LODWORD(v67) = HIDWORD(v225) ^ v112 ^ 0x20216114;
  v120 = v119 ^ 0xA3B65E4C;
  *(v66 - 232) = v119 ^ 0xA3B65E4C ^ v226 ^ 0xF009D311;
  *(v66 - 228) = v119;
  LODWORD(STACK[0x218]) = v119 ^ 0xA3B65E4C;
  v121 = v119 ^ 0xA3B65E4C ^ v226 ^ 0xF009D311 ^ 0x12BAAAF2;
  v122 = v121 ^ v67;
  v123 = STACK[0x268];
  v124 = ((v123 ^ 0x56B0709F) + 146) ^ v123 ^ ((v123 ^ 0x49) + 72) ^ ((v123 ^ 0x99) + 152) ^ ((v123 ^ 0xBE) + 177);
  v125 = (((v124 ^ 0xFFFFFFFB) + 39) ^ ((v124 ^ 0x11) - 51) ^ ((v124 ^ 0x1B) - 57)) + 42;
  v126 = v125 & (2 * (((2 * ~v125) | 0x4C) & v125 | ~v125 & 0x67)) | ~v125 & 0x67;
  v127 = (~v125 & 0x67 | (8 * ((v126 >> 2) & 3))) ^ v125 & (2 * v126);
  v128 = (~v125 & 0x67 | (8 * ((v127 >> 2) & 3))) ^ v125 & (2 * v127);
  v129 = ~v125 & 0x67 | (8 * ((v128 >> 2) & 3));
  *(v66 - 200) = v125 ^ (2 * ((~v125 & 0x67 | (8 * (((v129 ^ v125 & (2 * v128)) >> 2) & 3))) ^ v125 & (2 * (v129 ^ v125 & (2 * v128)))));
  *(v66 - 236) = v121 ^ v67;
  v130 = 8089 * (((v121 ^ v67) >> 24) ^ 0x90) + 64307550;
  v131 = *&v84[4 * (8089 * (BYTE2(v122) ^ 0x71) + 60141715 - 12420 * (((88527507 * (8089 * (BYTE2(v122) ^ 0x71u) + 60141715)) >> 32) >> 8))] ^ *&v84[4 * (8089 * (BYTE1(v122) ^ 0xF1) + 96121587 - 12420 * (((177055013 * (8089 * (BYTE1(v122) ^ 0xF1u) + 96121587)) >> 32) >> 9))] ^ *&v84[4 * (v130 - 12420 * (((88527507 * v130) >> 32) >> 8))] ^ *&v84[4 * (8089 * (v122 ^ 0x9C) + 12457060 - 12420 * (((22131877 * (8089 * (v122 ^ 0x9Cu) + 12457060)) >> 32) >> 6))] ^ 0x70BB99AF;
  v132 = v96 ^ 0x44A6E88B;
  v133 = v131 ^ v114;
  *(v66 - 240) = v133;
  LODWORD(STACK[0x210]) = v133 ^ 0xC5FA8033;
  v134 = v133 ^ 0xC5FA8033 ^ v67;
  *(v66 - 244) = v131 ^ v120;
  v135 = v131 ^ v120 ^ 0x41940B4A;
  v136 = *&v84[4 * (8089 * (HIBYTE(v134) ^ 0x2D) + 64307550 - 12420 * (((88527507 * (8089 * (HIBYTE(v134) ^ 0x2D) + 64307550)) >> 32) >> 8))];
  v137 = v135 & 0x40000000;
  v138 = (v135 & 0x40000000 & v136) == 0;
  v139 = v136 ^ 0x8787206;
  if (!v138)
  {
    v137 = -v137;
  }

  HIDWORD(v224) = v94 ^ 0xC10676C2;
  LODWORD(v225) = v132;
  LODWORD(STACK[0x208]) = v132 - (v94 ^ 0xC10676C2) - 301440819;
  v240 = v134;
  v140 = ((v123 + 684693217) ^ 0xC4ED3DC) & (2 * ((v123 + 684693217) & 0xAE60D41E)) ^ (v123 + 684693217) & 0xAE60D41E;
  v141 = ((2 * ((v123 + 684693217) ^ 0x80F73EC)) ^ 0x4CDF4FE4) & ((v123 + 684693217) ^ 0x80F73EC) ^ (2 * ((v123 + 684693217) ^ 0x80F73EC)) & 0xA66FA7F2;
  LODWORD(STACK[0x204]) = (v123 + 684693217) ^ (2 * ((((v141 ^ 0xA220A012) & 0x19BE9FC0 | (v141 ^ 0x5DDF5FE0) & (4 * (v141 ^ 0xA220A012))) ^ 0x40) & (16 * ((v141 ^ 0x700E0) & (4 * v140) ^ v140)) ^ (v141 ^ 0x700E0) & (4 * v140) ^ v140));
  v142 = *&v84[4 * (8089 * (BYTE1(v134) ^ 0xFC) + 96121587 - 12420 * (((177055013 * (8089 * (BYTE1(v134) ^ 0xFCu) + 96121587)) >> 32) >> 9))] ^ *&v84[4 * (8089 * (v134 ^ 0x9E) + 12457060 - 12420 * (((22131877 * (8089 * (v134 ^ 0x9Eu) + 12457060)) >> 32) >> 6))] ^ *&v84[4 * (8089 * (BYTE2(v134) ^ 0xE2) + 60141715 - 12420 * (((88527507 * (8089 * (BYTE2(v134) ^ 0xE2u) + 60141715)) >> 32) >> 8))] ^ v135 & 0xBFFFFFFF ^ (v137 + v139);
  v242 = -1304874980 - (v80 ^ 0xBCA312FE ^ v112);
  *(v66 - 216) = v142;
  v241 = v142 ^ 0xAB10C3B3;
  v143 = v142 ^ 0xAB10C3B3 ^ v121;
  *(v66 - 204) = v143;
  v144 = v143 ^ v134;
  v145 = 8089 * (((v143 ^ v134) >> 16) ^ 0x14) + 60141715;
  *(v66 - 220) = v144;
  v239 = *&v84[4 * (8089 * (HIBYTE(v144) ^ 0xEA) + 64307550 - 12420 * (((88527507 * (8089 * (HIBYTE(v144) ^ 0xEA) + 64307550)) >> 32) >> 8))] ^ *&v84[4 * (v145 - 12420 * (((88527507 * v145) >> 32) >> 8))] ^ *&v84[4 * (8089 * (BYTE1(v144) ^ 0x28) + 96121587 - 12420 * (((177055013 * (8089 * (BYTE1(v144) ^ 0x28u) + 96121587)) >> 32) >> 9))] ^ *&v84[4 * (8089 * (v144 ^ 0x39) + 12457060 - 12420 * (((22131877 * (8089 * (v144 ^ 0x39u) + 12457060)) >> 32) >> 6))] ^ 0xF8286831;
  v146 = a19;
  v147 = (8089 * (((a19[3] ^ 0x7BD898A4) + 2075478461) ^ ((a19[3] ^ 0x675942B3) + 1731498924) ^ ((a19[3] ^ 0x1C81DC42u) + 485231963)) + 1917158801) % 0x3084;
  v148 = (8089 * (((a19[1] ^ 0x3FBE5F82) + 1090113953) ^ ((a19[1] ^ 0xF5D5934F) - 1970135698) ^ ((a19[1] ^ 0xCA6BC898) - 1255389509)) + 1165450103) % 0x3084;
  v149 = (8089 * (((a19[4] ^ 0xAAAE6BDE) - 1823066190) ^ ((a19[4] ^ 0xA0793AF5) - 1719572837) ^ ((a19[4] ^ 0xAD7547E) + 858720274)) + 1220684780) % 0x3084;
  v150 = ((a19[2] ^ 0xC42D71F4) - 1545077445) ^ ((a19[2] ^ 0x3B541CE8) + 1553895463) ^ ((a19[2] ^ 0xFF796A49) - 1733040504);
  v151 = (8089 * (((*a19 ^ 0x7786CCB) + 2121775292) ^ ((*a19 ^ 0x6BA79285) + 313018102) ^ ((*a19 ^ 0x6CDFFB1Bu) + 365965164)) - 1137308807) % 0x3084;
  v152 = *(v66 - 200);
  v238 = v152 & 0xF9 ^ 0x67;
  v237 = v152 & 0xFE ^ 0x67;
  STACK[0x240] = v152 & 0xFA ^ 0x67;
  v236 = v152 & 0xFC ^ 0x67;
  v235 = v152 ^ 0x67;
  *(v66 - 248) = (8089 * v150 + 1913147635) % 0x3084;
  v153 = ((v146[6] ^ 0x3F09527A) - 282766481) ^ ((v146[6] ^ 0x58642459) - 2008537778) ^ ((v146[6] ^ 0x676D7176) - 1220448157);
  v154 = ((v146[5] ^ 0x17816F35) - 1561078928) ^ ((v146[5] ^ 0x89B1A304) + 1019420511) ^ ((v146[5] ^ 0x9E30C864) + 725775423);
  LODWORD(STACK[0x238]) = (v123 + 684693224) ^ (250 - v123) ^ (((v123 + 684693224) ^ 0xD2) + 208) ^ (((v123 + 684693224) ^ 0xE4) + 250) ^ (((v123 + 684693224) ^ 0x2B) + 55);
  v155 = (8089 * v153 + 1105979837) % 0x3084u;
  v156 = (8089 * v154 - 1423723617) % 0x3084;
  v157 = ((v146[8] ^ 0xAF16626E) + 292805510) ^ ((v146[8] ^ 0xDC53D2BB) + 1647733585) ^ ((v146[8] ^ 0x7345B580) - 853537684);
  *(v66 - 252) = (8089 * (((a19[7] ^ 0xBD0BE8A) + 1294007557) ^ ((a19[7] ^ 0xE7273373) - 1579716354) ^ ((a19[7] ^ 0xECF78BAC) - 1442330589)) - 2098315085) % 0x3084;
  LODWORD(v152) = ((v146[9] ^ 0xD52DF9A7) - 2145752568) ^ ((v146[9] ^ 0x57226F88) + 34995241) ^ ((v146[9] ^ 0x820F927A) - 684195365);
  LODWORD(STACK[0x2C8]) = (8089 * v157 - 464210424) % 0x3084;
  v158 = (8089 * v152 + 1465714985) % 0x3084u;
  v159 = (8089 * (((v146[11] ^ 0xD32B35D1) + 611498189) ^ ((v146[11] ^ 0xA39EC6E1) + 1422347261) ^ ((v146[11] ^ 0x70B5F565) - 2014545799)) + 1419480974) % 0x3084;
  LODWORD(v152) = ((v123 + 684693219) ^ 0xAE66C4DF) & (2 * ((v123 + 684693219) & 0xAE60D41E)) ^ (v123 + 684693219) & 0xAE60D41E;
  v160 = ((v123 + 684693219) ^ 0xFA67ECE3) & 0xA80E71FA | ((v123 + 684693219) ^ 0x598131C) & (2 * ((v123 + 684693219) ^ 0xFA67ECE3));
  LODWORD(v152) = v152 ^ 0x540738FD ^ (v160 ^ 0x630F8) & (4 * v152);
  LODWORD(STACK[0x230]) = (v123 + 684693219) ^ (2 * ((16 * v152) ^ v152 ^ ((16 * v152) ^ 0x50) & (((4 * (v160 ^ 0x54010805)) ^ 0x501CE3F0) & (v160 ^ 0x54010805) ^ (4 * (v160 ^ 0x54010805)) & 0x540738F0)));
  LODWORD(STACK[0x228]) = (((v123 + 684693221) ^ 0x11665225) + 57) ^ (v123 + 684693221) ^ (((v123 + 684693221) ^ 0xFFFFFFFB) + 231) ^ (((v123 + 684693221) ^ 0x43) + 95) ^ (((v123 + 684693221) ^ 0x7F) + 99);
  LODWORD(STACK[0x2CC]) = (8089 * (((a19[13] ^ 0xF81BA3C9) + 450235410) ^ ((a19[13] ^ 0xC0B7802F) + 578433016) ^ ((a19[13] ^ 0x38AC27B3) - 631142292)) - 1941181615) % 0x3084;
  LODWORD(STACK[0x2B4]) = (8089 * (((a19[10] ^ 0x1C8F79B) - 779331784) ^ ((a19[10] ^ 0xCCB8B4C8) + 486282341) ^ ((a19[10] ^ 0xCD704406) + 490005675)) + 933100229) % 0x3084;
  LODWORD(STACK[0x2BC]) = (8089 * (((a19[15] ^ 0xEE6D2A73) + 2039024415) ^ ((a19[15] ^ 0xC3CEE8A) - 1680289816) ^ ((a19[15] ^ 0xE251C2AC) + 1974854594)) - 1729999586) % 0x3084;
  v161 = *(v66 - 184);
  LODWORD(STACK[0x2C0]) = (26305 * (BYTE2(v161) ^ 0xECu) + 1798735900) % 0x10C80;
  v162 = (8089 * (((v146[12] ^ 0x4A65F483) + 837915845) ^ ((v146[12] ^ 0x17E41823) + 1819310181) ^ ((v146[12] ^ 0x5D81E9F5u) + 638945715)) + 756019156) % 0x3084;
  LODWORD(v152) = LODWORD(STACK[0x270]) + 7006;
  *(v66 - 208) = v152;
  LODWORD(STACK[0x2B8]) = (26305 * ((v161 >> (v152 ^ 0x81)) ^ 0x28u) + 1798735900) % 0x10C80;
  v163 = (8089 * (((v146[14] ^ 0x4CB4396F) - 2010901626) ^ ((v146[14] ^ 0xCF98CF83) + 185132394) ^ ((v146[14] ^ 0x832CF1B9) + 1203559252)) + 289934703) % 0x3084;
  v164 = *(v66 - 192);
  v165 = *(v66 - 188);
  *(v66 - 256) = (26305 * (HIBYTE(v165) ^ 0xF7) + 1785267740) % 0x10C80u;
  v166 = *(v66 - 172);
  v167 = (26305 * (BYTE1(v166) ^ 0xE5u) + 1792001820) % 0x10C80;
  v168 = *&v84[4 * v149];
  v169 = *&v84[4 * v148];
  v170 = *&v84[4 * v147];
  v171 = *&v84[4 * v151];
  v172 = *(v66 - 160) + 8464;
  v173 = *(v172 + (v168 ^ 0xC0F7BBDELL));
  LODWORD(STACK[0x2A0]) = *(v172 + (*&v84[4 * *(v66 - 248)] ^ 0xC0F7BBDELL));
  LODWORD(STACK[0x2C4]) = *(v172 + (v170 ^ 0xC0F7BBDELL));
  v174 = *&v84[4 * v155];
  v175 = *&v84[4 * v156];
  v176 = v174 ^ 0xC0F7BBDELL;
  v177 = *&v84[4 * *(v66 - 252)];
  LODWORD(STACK[0x280]) = *(v172 + v176);
  v178 = *(v172 + (v171 ^ 0xC0F7BBDELL));
  v179 = *&v84[4 * LODWORD(STACK[0x2C8])];
  v180 = *&v84[4 * v158];
  LODWORD(STACK[0x288]) = *(v172 + (v169 ^ 0xC0F7BBDELL));
  v181 = *(v172 + (v179 ^ 0xC0F7BBDELL));
  LODWORD(v171) = *(v172 + (v180 ^ 0xC0F7BBDELL));
  *(v66 - 252) = *(v172 + (*&v84[4 * v159] ^ 0xC0F7BBDELL));
  LODWORD(STACK[0x2AC]) = (26305 * (v164 ^ 0xE5u) + 1778481050) % 0x10C80;
  LODWORD(v175) = *(v172 + (v175 ^ 0xC0F7BBDELL));
  v182 = *&v84[4 * LODWORD(STACK[0x2B4])];
  LODWORD(STACK[0x278]) = (26305 * (BYTE2(v166) ^ 0xD5u) + 1792001820) % 0x10C80;
  *(v66 - 248) = (26305 * (BYTE3(v166) ^ 0xD8) + 1792001820) % 0x10C80u;
  v183 = *&v84[4 * v162];
  v184 = *&v84[4 * LODWORD(STACK[0x2CC])] ^ 0xC0F7BBDELL;
  v185 = *(v172 + (v182 ^ 0xC0F7BBDELL));
  LODWORD(STACK[0x290]) = *(v172 + (v177 ^ 0xC0F7BBDELL));
  v186 = *(v172 + v184);
  v187 = *(v172 + (v183 ^ 0xC0F7BBDELL));
  v188 = *(v172 + (*&v84[4 * LODWORD(STACK[0x2BC])] ^ 0xC0F7BBDELL));
  LODWORD(v172) = *(v172 + (*&v84[4 * v163] ^ 0xC0F7BBDELL));
  v189 = *(v66 - 152);
  v190 = *(v189 + (26305 * (BYTE2(v164) ^ 0x15u) + 1778481050) % 0x10C80) << 16;
  LODWORD(v184) = (v190 ^ 0xFFF0FFFF) & ((*(v189 + LODWORD(STACK[0x2C0])) << 8) ^ 0x66334460) | v190 & 0xCCCCCCCC;
  v191 = a42[1404];
  LODWORD(STACK[0x298]) = v173 ^ v191;
  LODWORD(STACK[0x2C8]) = v178 ^ v191;
  LODWORD(STACK[0x2CC]) = v187 ^ v191;
  LODWORD(STACK[0x2B0]) = v181 ^ v191;
  v192 = (26305 * (BYTE1(v164) ^ 0x8Du) + 1778481050) % 0x10C80;
  v193 = (*(v189 + v167) ^ 0xFFFFFF81) & ((*(v189 + LODWORD(STACK[0x2B8])) << 8) ^ 0x350DD7D2) | *(v189 + v167) & 0x2D;
  LODWORD(v177) = *(v189 + (26305 * (v161 ^ 0x5Au) + 1798735900) % 0x10C80) << 8;
  LODWORD(v177) = (((*(v189 + (26305 * v165 + 1785267740) % 0x10C80) ^ 0x58) << 24) ^ 0x2D0CD2C5) & (v177 ^ 0xFF0CA1C5) | v177 & 0x2D00;
  v194 = (26305 * (HIBYTE(v164) ^ 0x9F) + 1778481050) % 0x10C80u;
  LODWORD(v152) = a42[1775];
  LODWORD(STACK[0x2BC]) = LODWORD(STACK[0x288]) ^ v152;
  LODWORD(STACK[0x2B4]) = v171 ^ v152;
  LODWORD(STACK[0x2C0]) = v186 ^ v152;
  LODWORD(STACK[0x288]) = v175 ^ v152;
  LODWORD(v152) = *a42;
  LODWORD(STACK[0x274]) = LODWORD(STACK[0x2A0]) ^ v152;
  LODWORD(STACK[0x2A0]) = v185 ^ v152;
  LODWORD(STACK[0x27C]) = LODWORD(STACK[0x280]) ^ v152;
  LODWORD(STACK[0x2B8]) = v172 ^ v152;
  LODWORD(v152) = (*(v66 - 224) + 1105603767) % 0x10C80u;
  v195 = (26305 * (v166 ^ 0xFAu) + 1792001820) % 0x10C80;
  LODWORD(v172) = v184 ^ 0x71AFB1E1;
  LODWORD(v184) = *(v189 + LODWORD(STACK[0x278]));
  LODWORD(v184) = v172 & (v184 ^ 0x7FFFFFB2) | v184 & 0x7E;
  v196 = *(v189 + *(v66 - 256)) << 24;
  LODWORD(v172) = ((*(v189 + (26305 * (HIBYTE(v161) ^ 0x8E) + 1798735900) % 0x10C80u) << 8) ^ 0xE64AA612) & (v196 ^ 0xBF4EFF12) | v196 & 0x19000000;
  v197 = *(v189 + LODWORD(STACK[0x2AC])) << 16;
  v198 = a42[3413];
  LODWORD(STACK[0x280]) = v198 ^ LODWORD(STACK[0x2C4]);
  LODWORD(STACK[0x278]) = LODWORD(STACK[0x290]) ^ v198;
  LODWORD(STACK[0x290]) = *(v66 - 252) ^ v198;
  LODWORD(STACK[0x2AC]) = v188 ^ v198;
  v199 = *(v189 + v192) << 16;
  *(v66 - 252) = *(v189 + v195) & 0x2B ^ 0xEFB2DC2E ^ (*(v189 + v195) ^ 0xFFFFFF5C) & (v197 & 0x140000 ^ 0x60AFF9B9 ^ (v177 ^ 0xBCE76DA8) & (v197 ^ 0xFFDEFFED));
  v200 = (*(v189 + (26305 * (BYTE1(v165) ^ 0xAAu) + 1785267740) % 0x10C80) ^ 0xB5) << 24;
  LODWORD(STACK[0x2C4]) = v200 & 0x4E000000 ^ 0xD069563 ^ (v199 & 0xDA0000 ^ 0xC9027BA4 ^ (v193 ^ 0x4D28DAF2) & (v199 ^ 0xFF4CFFFF)) & (v200 ^ 0x69FFFFFF);
  *(v66 - 256) = v184 & 0x7BDCAB03 ^ 0xF3E671B0 ^ (((*(v189 + v152) ^ 0xC9) << 24) ^ 0xF52354FC) & (v184 ^ 0xE8FB1F4F);
  LODWORD(v184) = *(v189 + v194) << 16;
  LODWORD(v172) = v184 & 0x780000 ^ 0xE0FADAEA ^ (v172 ^ 0x48CDEC59) & (v184 ^ 0xFFA8FF5F);
  LODWORD(v184) = *(v189 + *(v66 - 248));
  *(v66 - 248) = v184 & 0x5E ^ 0xB4176F7F ^ v172 & (v184 ^ 0xFFFFFF92);
  LODWORD(v184) = *(v66 - 232);
  LODWORD(v224) = v184 ^ 0x593C51A2;
  v201 = STACK[0x208];
  v202 = STACK[0x210];
  HIDWORD(v223) = v239 ^ LODWORD(STACK[0x210]);
  LODWORD(v177) = LODWORD(STACK[0x208]) ^ 0xDC157B7F ^ HIDWORD(v223);
  LODWORD(v172) = *(v66 - 204) ^ 0xE24C1ECB ^ v177;
  v203 = v240 ^ 0xD6BC5893 ^ v177;
  v204 = STACK[0x220];
  LODWORD(v223) = LODWORD(STACK[0x220]) ^ 0xD9FFF773 ^ LODWORD(STACK[0x218]);
  HIDWORD(v222) = *(v66 - 236) ^ 0x58EA0D9F;
  *(v66 - 224) = *(v66 - 244) ^ 0xD62D2E97;
  LODWORD(v146) = *(v66 - 228) ^ 0x10D56850;
  *(v66 - 232) = v184 ^ 0x7A478F62 ^ v202;
  *(v66 - 228) = v146;
  *(v66 - 236) = *(v66 - 240) ^ 0xA4540947;
  *(v66 - 240) = v240 ^ 0xE08E4415;
  v205 = LODWORD(STACK[0x204]) & 0xF0;
  HIDWORD(v213) = *(a39 + (v205 ^ 0x19));
  v206 = *(v66 - 200);
  LODWORD(v214) = *(a39 + v238);
  HIDWORD(v215) = *(a39 + v237);
  HIDWORD(v211) = *(a39 + (v205 ^ 0x1C));
  HIDWORD(v212) = *(a39 + v236);
  LODWORD(v213) = *(a39 + (v206 & 0xF0 ^ 0x6FLL));
  HIDWORD(v214) = *(a39 + v235);
  LODWORD(v215) = *(a39 + (v205 ^ 0x1B));
  *(v66 - 244) = LODWORD(STACK[0x268]) + 845401867;
  LODWORD(v212) = *(a39 + (v205 ^ 0x1A));
  HIDWORD(v221) = v204 ^ 0x3C1127D2;
  LODWORD(v211) = *(a39 + (v205 ^ 0x1E));
  HIDWORD(v208) = *(a39 + (v206 & 0xF2 ^ 0x6FLL));
  HIDWORD(v210) = *(a39 + STACK[0x240]);
  HIDWORD(v209) = *(a39 + (STACK[0x238] & 0xF7 ^ 0xE2));
  LODWORD(v209) = *(a39 + (STACK[0x230] & 0xF2 ^ 0x40));
  LODWORD(v210) = *(a39 + (v206 & 0xF7 ^ 0x6FLL));
  LODWORD(v221) = LODWORD(STACK[0x248]) ^ 0x81B5FC8D;
  LODWORD(v208) = *(a39 + (STACK[0x228] & 0xF4 ^ 0xE0));
  LODWORD(v220) = v201 ^ v202 ^ 0xEC84FA64 ^ v241 ^ v201;
  HIDWORD(v220) = LODWORD(STACK[0x260]) ^ v201;
  HIDWORD(v219) = v172 ^ v201;
  LODWORD(v219) = v203 ^ v201;
  LODWORD(v218) = v201 & 0xFF7FFFFF;
  HIDWORD(v218) = v201 & 0x800000;
  HIDWORD(v217) = HIDWORD(a41) ^ LODWORD(STACK[0x258]);
  LODWORD(v217) = LODWORD(STACK[0x250]) ^ HIDWORD(a41);
  LODWORD(v222) = v242 ^ v241 ^ 0xAAD8D55B ^ v239 ^ v242;
  HIDWORD(v216) = v222 ^ 0x69153A95;
  LODWORD(v216) = -(v201 & 0x800000);
  return (*(v65 + 8 * SLODWORD(STACK[0x270])))(v206, 247, v203, 1798735900, 26305, v166, v188, v186, a9, v208, v209, v210, v211, v212, v213, v214, v215, a18, a19, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_10090EDA0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int a6, unsigned int a7, char *a8, uint64_t a9)
{
  a7 = v11 + 297845113 * ((2 * (&a5 & 0x2A6D67E0) - &a5 - 711813095) ^ 0xA2A18487) + 371879925;
  a5 = v10;
  a8 = &a4;
  a9 = a1;
  v12 = (*(v9 + 8 * (v11 + 371918418)))(&a5);
  v13 = ((a6 - v11) | (v11 - a6)) >= 0;
  return (*(v9 + 8 * (((16 * v13) | (32 * v13)) ^ (v11 + 371876558))))(v12);
}

uint64_t sub_10090EE64()
{
  v3 = (*(v2 + 8 * (v0 + 38109)))();
  *(v1 + 24) = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_10090EE9C@<X0>(char a1@<W5>, int a2@<W8>)
{
  LODWORD(STACK[0xED0]) = 0;
  LODWORD(STACK[0xE00]) = 0;
  LODWORD(STACK[0xDF8]) = 0;
  LODWORD(STACK[0xE08]) = 0;
  LODWORD(STACK[0xDD8]) = 0;
  LODWORD(STACK[0xE28]) = 0;
  LODWORD(STACK[0xDC0]) = 0;
  LODWORD(STACK[0xDE0]) = 0;
  v8 = STACK[0xE78] ^ 0xA66C6B7E;
  v9 = STACK[0xD50];
  v10 = STACK[0xB10] - STACK[0xD50];
  v11 = *(STACK[0xE98] + ((16 * (STACK[0xB10] & 0xF)) ^ 0x8D));
  v12 = (105 - 81 * (((v11 ^ 0xEA) + 67) ^ ((v11 ^ 2) - 85) ^ ((v11 ^ 0xD8) + 6 * (a2 ^ 0x88) - 19))) + 115;
  v13 = (v12 * v3 - (((4937649 * v12) >> 16) >> 7) * v2);
  v14 = STACK[0x958];
  v15 = LODWORD(STACK[0x958]) % ((v12 & 0xF ^ 0xF) + (v12 & 0xFu));
  v16 = *(STACK[0xF10] + 109);
  v17 = STACK[0xD50];
  *(STACK[0xF10] + 109) = *(STACK[0xF10] + v13);
  *(STACK[0xF10] + v13) = v16;
  v18 = ((v15 + 116) * v3 - 158 * (((4937649 * (v15 + 116)) >> 16) >> 7));
  v19 = *(STACK[0xF10] + 44);
  *(STACK[0xF10] + 44) = *(STACK[0xF10] + v18);
  *(STACK[0xF10] + v18) = v19;
  v20 = (v17 % 0xE * v3 + 10881 - 158 * (((26547 * (v17 % 0xE * v3 + 10881)) >> 16) >> 6));
  v21 = v8 % 0xD;
  v22 = *(STACK[0xF10] + 137);
  *(STACK[0xF10] + 137) = *(STACK[0xF10] + v20);
  *(STACK[0xF10] + v20) = v22;
  LOWORD(v20) = v21 + (((11 - v15) | (v15 + 116)) & v7);
  v23 = *(STACK[0xF10] + 72);
  v24 = v8 + v9;
  *(STACK[0xF10] + 72) = *(STACK[0xF10] + (v21 * v3 + 10974 - 158 * (((26547 * (v21 * v3 + 10974)) >> 16) >> 6)));
  v25 = v8 ^ v14;
  v26 = (v20 * v3 + 279 - 158 * (((26547 * (v20 * v3 + 279)) >> 16) >> 6));
  v27 = v9 + 2 * (v8 ^ v14);
  LODWORD(v20) = v25 - v24;
  *(STACK[0xF10] + v26) = v23;
  v28 = ((v10 - 1971743508) % 0xCu * v3 + 11067 - 158 * (((26547 * ((v10 - 1971743508) % 0xCu * v3 + 11067)) >> 16) >> 6));
  LOBYTE(v26) = *(STACK[0xF10] + 7);
  *(STACK[0xF10] + 7) = *(STACK[0xF10] + v28);
  *(STACK[0xF10] + v28) = v26;
  v29 = ((v25 - v24) % 0xBu * v3 + 11160 - 158 * (((26547 * ((v25 - v24) % 0xBu * v3 + 11160)) >> 16) >> 6));
  LOBYTE(v26) = *(STACK[0xF10] + 100);
  *(STACK[0xF10] + 100) = *(STACK[0xF10] + v29);
  *(STACK[0xF10] + v29) = v26;
  v30 = (v27 % 0xA * v3 + 11253 - 158 * (((26547 * (v27 % 0xA * v3 + 11253)) >> 16) >> 6));
  v31 = (((*(STACK[0xF10] + v30) ^ 0x40) - 64) ^ ((*(STACK[0xF10] + v30) ^ 0xD4) + 44) ^ ((*(STACK[0xF10] + v30) ^ 0x10) - 16)) - 34;
  LOBYTE(v26) = v31 & 0xA6 ^ 0x17;
  v32 = ((23 * ((v27 & v3 ^ v3) + (v27 & v3)) - ((46 * ((v27 & v3 ^ v3) + (v27 & v3))) & 0xDF) - 17) ^ v31 ^ (2 * ((v31 ^ 0x38) & (2 * ((v31 ^ 0x38) & (2 * ((v31 ^ 0x38) & (2 * ((v31 ^ 0x38) & (2 * ((v31 ^ 0x38) & (2 * ((v31 ^ 0x38) & 0x1E ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26))) ^ 0xABu;
  v33 = STACK[0xEC8];
  LOBYTE(v32) = ((*(STACK[0xEC8] + v32) ^ 0xBC) + 52) ^ ((*(STACK[0xEC8] + v32) ^ v4) + 123) ^ ((*(STACK[0xEC8] + v32) ^ 0x88) + 8);
  LOBYTE(v26) = v32 * a1 + 98;
  LOBYTE(v32) = v26 + 48 * v32 - 48;
  v34 = v32 & 0x5B ^ 0x68;
  LOBYTE(v32) = v32 ^ (2 * ((v32 ^ 0xA) & (2 * ((v32 ^ 0xA) & (2 * ((v32 ^ 0xA) & (2 * ((v32 ^ 0xA) & (2 * ((v32 ^ 0xA) & (2 * ((v32 ^ 2) & (2 * v26) & 0x16 ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ 0xDF;
  LOBYTE(v26) = *(STACK[0xF10] + 35);
  *(STACK[0xF10] + 35) = v32;
  *(STACK[0xF10] + v30) = v26;
  v35 = *(v33 + (((v24 ^ (v10 - 1971743508)) % 9 + 18) ^ 0xB9));
  v36 = 93 * (-27 - 51 * (((v35 ^ 0xD3) - 107) ^ ((v35 ^ 0x87) - 63) ^ ((v35 ^ 0x95) - 45))) + 11346;
  v37 = (v36 - 158 * (((v36 * v6) >> 16) >> 7));
  LOBYTE(v32) = (((*(STACK[0xF10] + 128) ^ 0xF8) + 8) ^ ((*(STACK[0xF10] + 128) ^ 0x49) - 73) ^ ((*(STACK[0xF10] + 128) ^ 0x35) - 53)) - 109;
  LOBYTE(v26) = v32 & 0x42 ^ 0x7C;
  LODWORD(v28) = *(STACK[0xEB0] + (((*(STACK[0xF10] + v37) >> 4) | (16 * *(STACK[0xF10] + v37))) ^ 0xDBLL)) ^ ((*(STACK[0xF10] + v37) >> 4) | (16 * *(STACK[0xF10] + v37)));
  v10 -= 1357678471;
  LOBYTE(v32) = *(STACK[0xEC0] + ((v32 ^ (2 * ((v32 ^ 0x68) & (2 * ((v32 ^ 0x68) & (2 * ((v32 ^ 0x68) & (2 * ((v32 ^ 0x68) & (2 * ((v32 ^ 0x68) & (2 * v26) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26))) ^ 0xDAu));
  LODWORD(v26) = v20 ^ v10;
  LOBYTE(v20) = 94 - 59 * (v32 ^ 0x6B);
  LOBYTE(v32) = v20 & 0x6A ^ 0x64;
  LOBYTE(v20) = v20 ^ (2 * ((v20 ^ 0x20) & (2 * ((v20 ^ 0x20) & (2 * ((v20 ^ 0x20) & (2 * ((v20 ^ 0x20) & (2 * (v20 & (2 * v20) & 0x44 ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ 0xEE;
  LOBYTE(v28) = -81 * (((v28 ^ v5) - 35) ^ ((v28 ^ 0xDA) - 71) ^ ((v28 ^ 0x2E) + 77)) + 23;
  LOBYTE(v32) = v28 & 0x56 ^ 0x7A;
  *(STACK[0xF10] + 128) = v28 ^ (2 * ((v28 ^ 0x60) & (2 * ((v28 ^ 0x60) & (2 * ((v28 ^ 0x60) & (2 * ((v28 ^ 0x60) & (2 * ((v28 ^ 0x60) & (2 * v32) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ 0xD2;
  *(STACK[0xF10] + v37) = v20;
  LODWORD(v20) = v24 ^ v10;
  v38 = (v24 ^ v10) + v10 + v27;
  v39 = (93 * (v20 & 7) + 11439 - 158 * (((26547 * (93 * (v20 & 7) + 11439)) >> 16) >> 6));
  LOBYTE(v32) = *(STACK[0xF10] + 63);
  *(STACK[0xF10] + 63) = *(STACK[0xF10] + v39);
  v40 = (93 * ((v26 - 702776630) % 7u) + 11532 - 158 * (((26547 * (93 * ((v26 - 702776630) % 7u) + 11532)) >> 16) >> 6));
  *(STACK[0xF10] + v39) = v32;
  LODWORD(v28) = *(STACK[0xF10] + v40);
  LOBYTE(v32) = *(STACK[0xF10] + 156);
  *(STACK[0xF10] + 156) = v28;
  *(STACK[0xF10] + v40) = v32;
  LOBYTE(v14) = *(STACK[0xF10] + 91);
  *(STACK[0xF10] + 91) = *(STACK[0xF10] + (93 * (v38 % 6) + 11625 - 158 * (((26547 * (93 * (v38 % 6) + 11625)) >> 16) >> 6)));
  *(STACK[0xF10] + (93 * ((v20 | 0x72) - (v20 & 0xFFFFFF8D) + v38 % 6 + (v28 & 0x49 ^ 0x75F7D149 ^ (v28 ^ 0x75F7D1CD) & (v28 ^ 0x75FFF37B))) + 1023) % 0x9E) = v14;
  LODWORD(v20) = v20 - 2083602440;
  LOBYTE(v39) = *(STACK[0xF10] + 26);
  v41 = (93 * ((v24 + 703346715) % 5u) + 11718 - 158 * (((26547 * (93 * ((v24 + 703346715) % 5u) + 11718)) >> 16) >> 6));
  LODWORD(v26) = v38 ^ (v26 - 702776630);
  *(STACK[0xF10] + 26) = *(STACK[0xF10] + v41);
  v42 = (v38 ^ v20) + 372321739;
  *(STACK[0xF10] + v41) = v39;
  v43 = STACK[0xF10];
  LOBYTE(v38) = *(STACK[0xF10] + 119);
  STACK[0xB10] = (v20 - v26);
  v44 = (93 * ((v20 - v26) & 3) + 11811 - 158 * (((26547 * (93 * ((v20 - v26) & 3u) + 11811)) >> 16) >> 6));
  *(v43 + 119) = *(v43 + v44);
  LODWORD(STACK[0x958]) = v26;
  *(STACK[0xF10] + v44) = v38;
  LODWORD(v44) = (((*(STACK[0xF10] + 54) ^ 0x51) - 81) ^ -*(STACK[0xF10] + 54) ^ ((*(STACK[0xF10] + 54) ^ 0x2A) - 42)) - 103;
  LOBYTE(v38) = v44 & 0x5D ^ 0xF0;
  LOBYTE(v40) = (v44 ^ 0x7C) & (2 * ((v44 ^ 0x7C) & (2 * ((v44 ^ 0x7C) & (2 * ((v44 ^ 0x7C) & (2 * ((v44 ^ 0x7C) & (2 * (v44 & (2 * v44) & 0x7A ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38;
  v45 = (93 * (v26 % 3) + 11904 - 158 * (((26547 * (93 * (v26 % 3) + 11904)) >> 16) >> 6));
  LODWORD(v44) = *(STACK[0xEB8] + ((v44 ^ (2 * v40)) ^ 0xCCu));
  LODWORD(v44) = (((v44 ^ 0x78) - 120) ^ ((v44 ^ 0xFFFFFFE2) + 30) ^ ((v44 ^ 0xFFFFFFDC) + 36)) - 4;
  LODWORD(v40) = v44 & 0xFFFFFF96 ^ 0xFFFFFFEC;
  LODWORD(v44) = v44 ^ (2 * ((v44 ^ 0x5C) & (2 * ((v44 ^ 0x5C) & (2 * ((v44 ^ 0x5C) & (2 * ((v44 ^ 0x5C) & (2 * ((v44 ^ 0x5C) & (2 * v40) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40));
  *(STACK[0xF10] + 54) = *(STACK[0xF10] + v45);
  LODWORD(v43) = v44 ^ (v44 >> 4) ^ (v44 >> 1);
  LOBYTE(v43) = -51 * (((v43 ^ 0xF2) + 25) ^ ((v43 ^ 0x58) - 77) ^ ((v43 ^ 0x9E) + 117)) - 125;
  LOBYTE(v44) = v43 & 0x62 ^ 0xCC;
  *(STACK[0xF10] + v45) = v43 ^ (2 * ((v43 ^ 0x68) & (2 * ((v43 ^ 0x68) & (2 * ((v43 ^ 0x68) & (2 * ((v43 ^ 0x68) & (2 * ((v43 ^ 0x68) & (2 * v44) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ 0xE6;
  STACK[0xD50] = v42;
  v46 = (93 * (v42 & 1) + 11997 - 158 * (((26547 * (93 * (v42 & 1) + 11997)) >> 16) >> 6));
  LOBYTE(v44) = (((*(STACK[0xF10] + v46) ^ 0x54) - 84) ^ ((*(STACK[0xF10] + v46) ^ 0x35) - 53) ^ ((*(STACK[0xF10] + v46) ^ 0xE5) + 27)) - 71;
  LOBYTE(v20) = v44 & 0xD7 ^ 0xD;
  LOBYTE(v44) = *(v33 + ((v44 ^ (2 * ((v44 ^ 0x5C) & (2 * ((v44 ^ 0x5C) & (2 * ((v44 ^ 0x5C) & (2 * ((v44 ^ 0x5C) & (2 * ((v44 ^ 0x5C) & (2 * (((2 * v44) & 0x3A ^ 0xA) & v44 ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0x6Eu));
  LOBYTE(v20) = *(STACK[0xF10] + 147);
  LOBYTE(v44) = -51 * (((v44 ^ 0xD8) - 112) ^ ((v44 ^ 0x66) + 50) ^ ((v44 ^ 0x7F) + 41)) + 56;
  LOBYTE(v40) = v44 & 0x97 ^ 0x6D;
  *(STACK[0xF10] + 147) = v44 ^ (2 * ((v44 ^ 0x5C) & (2 * ((v44 ^ 0x5C) & (2 * ((v44 ^ 0x5C) & (2 * ((v44 ^ 0x5C) & (2 * ((v44 ^ 0x5C) & (2 * (((2 * v44) & 0x3A ^ 0x4A) & v44 ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ 0x13;
  *(STACK[0xF10] + v46) = v20;
  v47 = *(STACK[0xED8] + 8 * a2);
  LODWORD(STACK[0xE38]) = 1;
  LODWORD(STACK[0xE60]) = 1;
  LODWORD(STACK[0xE58]) = 1;
  LODWORD(STACK[0xE30]) = 1;
  LODWORD(STACK[0xE40]) = 1;
  LODWORD(STACK[0xE48]) = 1;
  LODWORD(STACK[0xE50]) = 1;
  LODWORD(STACK[0xE18]) = 1;
  LODWORD(STACK[0xE20]) = 1;
  return v47(188);
}

uint64_t sub_10090FA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, int a17, int a18)
{
  v22 = 1022166737 * (&a15 ^ 0xBA10E192);
  v23 = (((*(a1 + 48) ^ v20 ^ 0xF74E5F76) + 145858698) ^ ((*(a1 + 48) ^ v20 ^ 0xA3ECBB7E) + 1544766594) ^ ((((v21 - 15202) | 0x3001) ^ 0xAC8026F7) + (*(a1 + 48) ^ v20 ^ 0x537FEBFA))) - v22 + 1629596732;
  a15 = v19;
  a16 = v23;
  a17 = v22 + 16135 + v21;
  (*(v18 + 8 * (v21 + 36013)))(&a15);
  return (*(v18 + 8 * ((172 * (a18 == 1497668682)) | v21)))(a1);
}

uint64_t sub_10090FB40()
{
  v8 = (v0 | 1) - (v0 & 0xFFFFFFFE) + v0;
  v10 = *(v2 + 8) == v2 || ((((v3 - v8 + v5) ^ (v4 - v8)) - 1) & (v8 - 20)) >= 0;
  return (*(v7 + 8 * ((v10 * v6) ^ v1)))();
}

uint64_t sub_10090FBBC(int a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, _DWORD *a8)
{
  v14 = *(v12 + 8 * v8);
  v15 = *a2;
  v16 = (*a2 + (a1 - 350385979));
  v17 = ((*(*v13 + (*a8 & v10)) ^ v16) & 0x7FFFFFFF) * a6;
  v18 = (v17 ^ HIWORD(v17)) * a6;
  v19 = STACK[0x7D0];
  v20 = STACK[0x7D8];
  *v16 = *(STACK[0x7D0] + (v18 >> 24)) ^ HIBYTE(v9) ^ *(v11 + (v18 >> 24)) ^ *((v18 >> 24) + STACK[0x7D8] + 1) ^ v18 ^ (107 * BYTE3(v18)) ^ 0x55;
  v21 = (v15 + (a1 - 350385978));
  LODWORD(v18) = 1864610357 * ((*(*v13 + (*a8 & 0x72D7ACF8)) ^ v21) & 0x7FFFFFFF);
  v22 = 1864610357 * (v18 ^ WORD1(v18));
  *v21 = *(v19 + (v22 >> 24)) ^ BYTE2(v9) ^ *(v11 + (v22 >> 24)) ^ *((v22 >> 24) + v20 + 1) ^ v22 ^ (107 * BYTE3(v22)) ^ 0xB2;
  v23 = (v15 + (a1 - 350385977));
  LODWORD(v22) = 1864610357 * ((*(*v13 + (*a8 & 0x72D7ACF8)) ^ v23) & 0x7FFFFFFF);
  v24 = 1864610357 * (v22 ^ WORD1(v22));
  *v23 = *(v19 + (v24 >> 24)) ^ BYTE1(v9) ^ *(v11 + (v24 >> 24)) ^ *((v24 >> 24) + v20 + 1) ^ v24 ^ (107 * BYTE3(v24)) ^ 0x65;
  v25 = (v15 + (a1 - 350385976));
  v26 = 1864610357 * ((*(*v13 + (*a8 & 0x72D7ACF8)) ^ v25) & 0x7FFFFFFF);
  v27 = 1864610357 * (v26 ^ HIWORD(v26));
  *v25 = v9 ^ *(v19 + (v27 >> 24)) ^ *(v11 + (v27 >> 24)) ^ *((v27 >> 24) + v20 + 1) ^ v27 ^ (107 * BYTE3(v27)) ^ 0xB1;
  return v14();
}

uint64_t sub_10090FDA4()
{
  v4 = STACK[0x43C] & 0xE0BFA3FE;
  *(v3 - 248) = *(v0 + 32);
  *(v3 - 256) = LODWORD(STACK[0x438]) ^ (297845113 * (((v1 | 0xC03AA207) - (v1 & 0xC03AA200)) ^ 0xB709BE99));
  v5 = (*(v2 + 8 * SLODWORD(STACK[0x434])))(v3 - 256);
  *(v0 + 32) = 0;
  return (*(v2 + 8 * (((v4 ^ 0x9AB7) * (LODWORD(STACK[0x440]) == -1567387116)) ^ LODWORD(STACK[0x430]))))(v5);
}

uint64_t sub_10090FE4C(uint64_t a1, uint64_t a2)
{
  if (v2 + v3 + 4689 + (v3 ^ 0x13B1u) - 1135611972 > 0x40)
  {
    v4 = v2 + v3 + 4689 + (v3 ^ 0x13B1) - 1135611972;
  }

  return (*(v5 + 8 * (v3 ^ (16 * (v4 - 1 >= (v2 - 1135546799))))))(a1, a2, 0);
}

uint64_t sub_10090FED4()
{
  STACK[0x328] = v0;
  *v2 = (*(v1 + 415256))();
  return (*(v1 + 131768))();
}

uint64_t sub_10090FF64()
{
  v6 = v1 > v3;
  if (v6 == (v4 + 440786143) < 0x6CA990D4)
  {
    v6 = v4 + 440786143 < v2;
  }

  return (*(v5 + 8 * ((((v0 + 1287253889) ^ 0x4CBA4EAD) * v6) ^ v0)))((v0 + 1287253889) ^ 0x4CBA4139u);
}

uint64_t sub_10090FFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = (v7 + 652569740) & 0xA361AFBF;
  LODWORD(STACK[0xEA0]) = v10;
  v11 = (v10 + 23941);
  STACK[0xED0] = v11;
  v12 = ((v4 ^ 0x4978D1D49905A4A4) - 0x4978D1D49905A4A4) ^ ((v4 ^ 0x1C3BE4D0DF1A8687) - 0x1C3BE4D0DF1A8687) ^ ((v11 ^ 0x6AC77C47B524976CLL) + (v4 ^ 0x953883B84ADBE5AALL));
  v13 = 2 * ((a4 ^ 0x2A9960EC00000000) & STACK[0xEB8] ^ STACK[0xEB0]);
  v14 = STACK[0xEA8] + (((a4 ^ 0xABB981C0F4E34FA6) + 0x54467E3F0B1CB05ALL) ^ ((a4 ^ 0x105B3D79A519810DLL) - 0x105B3D79A519810DLL) ^ ((a4 ^ 0x7FC2A436357FAF03) - 0x7FC2A436357FAF03)) - (((v13 ^ 0x70E2A033D8409BDLL) - 0x625818EECE9415FBLL) ^ ((v13 ^ 0x10D55CA627D68815) - 0x75836E4BD4C69453) ^ ((v13 ^ 0x8AAB86211A5281A8) + 0x10024B3316BD6212));
  v15 = (v14 ^ 0x175CE99816909DEELL) & (2 * (v14 & 0xA660F19A14D8D9ECLL)) ^ v14 & 0xA660F19A14D8D9ECLL;
  v16 = ((2 * (v14 ^ 0x171DCA9C17B0AEEELL)) ^ 0x62FA760C06D0EE04) & (v14 ^ 0x171DCA9C17B0AEEELL) ^ (2 * (v14 ^ 0x171DCA9C17B0AEEELL)) & 0xB17D3B0603687702;
  v17 = v16 ^ 0x9105090201281102;
  v18 = (v16 ^ 0x2000020002406600) & (4 * v15) ^ v15;
  v19 = ((4 * v17) ^ 0xC5F4EC180DA1DC08) & v17 ^ (4 * v17) & 0xB17D3B0603687700;
  v20 = (v19 ^ 0x8174280001205400) & (16 * v18) ^ v18;
  v21 = ((16 * (v19 ^ 0x3009130602482302)) ^ 0x17D3B06036877020) & (v19 ^ 0x3009130602482302) ^ (16 * (v19 ^ 0x3009130602482302)) & 0xB17D3B0603687700;
  v22 = (v21 ^ 0x1151300002007000) & (v20 << 8) ^ v20;
  v23 = (((v21 ^ 0xA02C0B0601680702) << 8) ^ 0x7D3B060368770200) & (v21 ^ 0xA02C0B0601680702) ^ ((v21 ^ 0xA02C0B0601680702) << 8) & 0xB17D3B0603687200;
  v24 = v22 ^ 0xB17D3B0603687702 ^ (v23 ^ 0x3139020200600000) & (v22 << 16);
  v25 = v12 - ((((2 * v4) & 0xD5F8BE1FCE506DCELL ^ 0x7992DFC3DEAE58F1) + 0x70C1886DCB2EEF6BLL) ^ (((2 * v4) & 0xD5F8BE1FCE506DCELL ^ 0x1CE1EA345F4BFE32) + 0x15B2BD9A4ACB49AALL) ^ (((2 * v4) & 0xD5F8BE1FCE506DCELL ^ 0xE58319EF89E5ABC1) - 0x132FB1BE639AE3A5)) - 0x786DFBB8979360D9;
  v26 = v14 ^ (v6 - ((2 * v6) & 0x1C144A098) + 0x1955B657E0A2504CLL) ^ (2 * ((v24 << 32) & 0x317D3B0600000000 ^ v24 ^ ((v24 << 32) ^ 0x368770200000000) & (((v23 ^ 0x8044390403087502) << 16) & 0x317D3B0600000000 ^ 0x79380600000000 ^ (((v23 ^ 0x8044390403087502) << 16) ^ 0x3B06036800000000) & (v23 ^ 0x8044390403087502))));
  v27 = v25 ^ ((v25 ^ 0x701F1E3A5DE15BFELL) - 0x22696CFF0B1FBDE3) ^ ((v25 ^ 0x1F5CE443DE13B526) - 0x4D2A968688ED533BLL) ^ ((v25 ^ 0x4AC8D7EB22736603) - 0x18BEA52E748D801ELL) ^ ((v25 ^ 0x77FD5F57F77F6EC6) - 0x258B2D92A18188DBLL) ^ v26;
  v28 = v8 ^ 0x10D06AB301989D3ELL ^ a1;
  v29 = __ROR8__(v26 ^ 0xBC673CF35991F79FLL, 21);
  v30 = v28 ^ v26 & 0xE02FE9B11A7BD7F1 ^ 0x5820BD6827EF248 ^ (v27 ^ 0x560E8359E33A8523) & (v26 ^ 0x1BA8E7D250404B30);
  v31 = v8 ^ 0x10D06AB301989D3ELL ^ v5 ^ 0xDB4853C01C440D14;
  v32 = __ROR8__(v5 & 0xC718D699FE832AFBLL ^ 0xB0ABB69A0E733FC1 ^ (v27 ^ 0x8EC6438EF83D87D6) & (v5 ^ 0xB8D0F5BD7028F9D2), 21);
  v33 = (v29 & 0x1000000000000000 | 0x6C109B2169A0ACDALL) ^ ((v29 & 0x1000000000000000) + 0x740F5B5EFA9F4D22) ^ ((v29 & 0x1000000000000000 ^ 0x5D637AA7C989F0FCLL) + 0x368DE03948D7BC2ELL);
  v34 = v26 & 0xCF740D0EA68DE19ALL ^ v31 ^ (v26 ^ 0xE457182DAFBFB4CFLL) & (v28 ^ 0xEF664B1A2B2B1789);
  v35 = v29 & 0xEFFFFFFFFFFFFFFFLL;
  v36 = v30 ^ v34 ^ 0xB466E17B19E74B41;
  v37 = (v28 ^ 0x907A6FEDFA97769) & (v31 ^ 0x71E5177A6E24C141);
  v38 = v31 & 0xD6EA1F15ADF07E85;
  v39 = (v33 - 0x2B93794034F71074) ^ 0xE507F54FA55B93F3;
  v40 = v39 & (2 * ((v33 - 0x2B93794034F71074) & 0xA000000000000002)) ^ ((v33 - 0x2B93794034F71074) & 0xA000000000000002 | 0x4AA12A2E12C35051) ^ ((((((v33 - 0x2B93794034F71074) & 0xA000000000000002) >> 61) & 1) << 62) | 0x201C004000000);
  v41 = (2 * v39) & 0x4AA32BEE16C35050 ^ 0x4AA1282212415051 ^ ((2 * v39) ^ 0x954657DC2D86A0A2) & v39;
  v42 = (4 * v40) & 0xA802BA812014050 ^ v40 & 0xE023004604C21017 ^ v41 & 0x8000000000000018 & (4 * v40);
  v43 = (4 * v41) & 0x4AA32BEE16C35050 ^ 0x4023004604C21011 ^ ((4 * v41) ^ 0x2A8CAFB85B0D4144) & v41;
  v44 = (16 * v42) & 0xA222AE004010050 ^ v42 ^ ((16 * v42) ^ 0xAA32BEE16C350510) & v43;
  v45 = (16 * v43) & 0x4AA32BEE16C35050 ^ 0x4081010E12C25041 ^ ((16 * v43) ^ 0xAA32BEE16C350510) & v43;
  v46 = (v44 << 8) & 0x4AA32BEE16C35000 ^ v44 ^ ((v44 << 8) ^ 0x81010E12C2504100) & v45;
  v47 = (v45 << 8) & 0x4AA32BEE16C35000 ^ 0x488001E814830051 ^ ((v45 << 8) ^ 0xA32BEE16C3505100) & v45;
  v48 = v46 ^ (v46 << 16) & 0x4AA32BEE16C30000 ^ ((v46 << 16) ^ 0xB0C108210410000) & v47 ^ 0x23206016004010;
  v49 = (v33 - 0x2B93794034F71074) ^ (2 * ((v48 << 32) & 0x4AA32BEE00000000 ^ v48 ^ ((v48 << 32) ^ 0x16C3505100000000) & ((v47 << 16) & 0x4AA32BEE00000000 ^ 0x4001292C00000000 ^ ((v47 << 16) ^ 0x2BEE16C300000000) & v47)));
  if (((v32 ^ 0x6022AB5A2C48774ALL) & (v49 ^ 0x3FE489FD9E1E6300) ^ v49 & 0xF89A32DFF7586CB8) == 0x388000DD96186000)
  {
    v50 = v33 - 0x2B93794034F71074;
  }

  else
  {
    v50 = 0xCC49BBFCCDC58930 - v33;
  }

  v51 = (((v32 ^ 0x7E8FC827BA292305) + 0x2F0B95E420AC22D3) ^ ((v32 ^ 0x562351AD299F4AB7) + 0x7A70C6EB31A4B61) ^ ((v32 ^ 0xB014000F48A67241) - 0x1E6FA2332DDC8C69)) - 0xFFDC78BB0FC5AC7 + v50;
  v52 = (v51 ^ 0xF571C1F63217A417) & (2 * (v51 & 0xF665E1E723000444)) ^ v51 & 0xF665E1E723000444;
  v53 = ((2 * (v51 ^ 0xF5F3C0763017A49FLL)) ^ 0x72C4322262F41B6) & (v51 ^ 0xF5F3C0763017A49FLL) ^ (2 * (v51 ^ 0xF5F3C0763017A49FLL)) & 0x39621911317A0DALL;
  v54 = v53 ^ 0x9220911110A049;
  v55 = (v53 ^ 0x304010000000010) & (4 * v52) ^ v52;
  v56 = ((4 * v54) ^ 0xE5886444C5E836CLL) & v54 ^ (4 * v54) & 0x39621911317A0D8;
  v57 = (v56 ^ 0x210000000168040) & (16 * v55) ^ v55;
  v58 = ((16 * (v56 ^ 0x186219113012093)) ^ 0x39621911317A0DB0) & (v56 ^ 0x186219113012093) ^ (16 * (v56 ^ 0x186219113012093)) & 0x39621911317A0D0;
  v59 = (v58 ^ 0x102011111120000) & (v57 << 8) ^ v57;
  v60 = (((v58 ^ 0x29420800205A04BLL) << 8) ^ 0x9621911317A0DB00) & (v58 ^ 0x29420800205A04BLL) ^ ((v58 ^ 0x29420800205A04BLL) << 8) & 0x39621911317A000;
  v61 = v59 ^ 0x39621911317A0DBLL ^ (v60 ^ 0x200011113000000) & (v59 << 16);
  v62 = v30 ^ __ROR8__(v35 ^ v51 ^ (2 * ((v61 << 32) & 0x396219100000000 ^ v61 ^ ((v61 << 32) ^ 0x1317A0DB00000000) & (((v60 ^ 0x1962080001720DBLL) << 16) & 0x396219100000000 ^ 0x206208000000000 ^ (((v60 ^ 0x1962080001720DBLL) << 16) ^ 0x2191131700000000) & (v60 ^ 0x1962080001720DBLL)))) ^ 0xEE330174B113C700, 43);
  v63 = (v8 ^ 0xE0AB25DA059CF839) & (v5 ^ 0x472F0A428FD7062DLL) ^ v5 & 0x1DF90191F9B3AF7FLL ^ v27;
  v64 = (v62 ^ 0x6C5703A0CB8DE6A1) >> 61;
  v65 = v36 >> 28;
  v66 = (v36 >> 28) ^ 0xF721A59467F7779DLL;
  v67 = (v64 & 0xE909FB3D | 0x16F604C0) ^ (v64 & 2 | 0xA069FD0);
  *(&v68 + 1) = v36 ^ 0xF2C4C39E320B8521;
  *&v68 = v36;
  v69 = v36 ^ 0xF2C4C39E320B8521 ^ ((v36 ^ 0xF2C4C39E320B8521) << 36) ^ (v68 >> 19);
  v70 = v69 ^ 0xC49B1D9A4DA134FALL;
  v71 = 0x4489AC9E32BDD83CLL - (((v69 ^ 0x7BC33E00DC90EC4FLL) + 0x40A7DC656ECE274BLL) ^ ((v69 ^ 0xA4728E24F6B528A1) - 0x60E993BEBB141C5BLL) ^ ((v69 ^ 0x79486C44675D58) + 0x3B1DAA09F639965ELL));
  v72 = (((v65 ^ 0xDDDECD1385BB4A7FLL) - 0x2AFF6887E24C3DE2) ^ ((v65 ^ 0x189E7B4A17C05D44) + 0x104021218FC8D527) ^ ((v65 ^ 0xC540B659A592EDA3) - 0x326113CDC2659A3ELL)) - (((v69 ^ 0xC49B1D9A4DA134FALL ^ v66 ^ 0xAC578C253DB40E60) + 0x53A873DAC24BF1A0) ^ ((v69 ^ 0xC49B1D9A4DA134FALL ^ v66 ^ 0x1B93372D876898E6) - 0x1B93372D876898E6) ^ ((v69 ^ 0xC49B1D9A4DA134FALL ^ v66 ^ 0x5BB6FB4EC921B6CFLL) - 0x5BB6FB4EC921B6CFLL));
  v73 = v38 ^ v5 ^ 0xDB4853C01C440D14 ^ v37;
  v74 = (((4 * ((v64 >> 1) & 1)) | 0x620C5AD2) ^ (((2 * v64) & 4) - 1511466714) ^ (((2 * v64) & 4 ^ 0xA31245AF) - 84254353)) + 4667337 + (((v67 ^ 0xA813CD6B) - 1151200447) ^ ((v67 ^ 0x5CEB65B8) + 1335540628) ^ ((v67 ^ 0xE8083367) - 75895475));
  v75 = (v74 ^ 0x4D) & (2 * (v74 & 0x41)) ^ v74 & 0x41;
  LOBYTE(v69) = ((2 * (v74 ^ 0x4F)) ^ 0x1C) & (v74 ^ 0x4F) ^ (2 * (v74 ^ 0x4F)) & 0xE;
  v72 += 0x17E20262F317F3F8;
  v76 = v73 ^ v63;
  v77 = v71 ^ v70 ^ ((v71 ^ 0x7F248947D88B5EBCLL) - 0x20F91B378E2ADB34) ^ ((v71 ^ 0x55E839A099BF41CLL) - 0x5A8311EA5F3A7194) ^ ((v71 ^ 0x7BF8C773A8CF527FLL) - 0x24255503FE6ED7F7) ^ ((v71 ^ 0x5E5F5FDE2F7E7D57) - 0x182CDAE79DFF8DFLL) ^ v72 ^ ((v72 ^ 0xD0150E291B4E93ALL) - 0x33CDF787426E06) ^ ((v72 ^ 0x88E9CDC3023A948BLL) + 0x7A24AF29EB33EC49) ^ ((v72 ^ 0xF721BF1DFA878F79) + 0x5ECDDF7138EF7BBLL) ^ ((v72 ^ 0x7FFBBF297FFF75F4) - 0x72C9223C6909F2C8);
  v78 = v77 ^ v66;
  v79 = (v77 ^ 0x41940A8763B4AFF8) & (v65 ^ 0x41D61AC7E3DFC61ELL) ^ v77 & 0x41D61AC7D4363C86;
  LOBYTE(v69) = ((((4 * ((v64 & 2) != 0)) | 0xD2) ^ (((2 * v64) & 4) + 38) ^ (((2 * v64) & 4 ^ 0xAF) + 111)) - 55 + (((v67 ^ 0x6B) + 65) ^ ((v67 ^ 0xB8) - 108) ^ ((v67 ^ 0x67) + 77))) ^ v67 ^ (2 * ((v69 ^ 0xC) & (4 * v75) ^ v75 ^ ((4 * (v69 ^ 2)) ^ 0x30) & (v69 ^ 2) & (16 * ((v69 ^ 0xC) & (4 * v75) ^ v75)) ^ 0xE)) ^ *(STACK[0xEC0] + (v64 ^ 0x7E));
  LOBYTE(v69) = 121 - 17 * (((v69 ^ 0x40) - 127) ^ ((v69 ^ 0x66) - 89) ^ ((v69 ^ 0xC6) + 7));
  LOBYTE(v74) = v69 & 0xA ^ 0xE9;
  v80 = v62 ^ 0x6C5703A0CB8DE6A1 ^ (v62 >> 39) ^ (8 * (v62 ^ 0x6C5703A0CB8DE6A1)) ^ ((v62 ^ 0x6C5703A0CB8DE6A1) << 25) ^ (v69 ^ (2 * ((v69 ^ 0x38) & (2 * ((v69 ^ 0x38) & (2 * ((v69 ^ 0x38) & (2 * ((v69 ^ 0x38) & (2 * (v69 & (2 * (v74 ^ v69 & 0x32)) ^ v74)) ^ v74)) ^ v74)) ^ v74)) ^ v74)));
  v81 = v80 ^ 0x3995FED59EC43947;
  v82 = v63 ^ 0xB5F596EEC0CD16C2 ^ (v63 >> 1) ^ ((v63 << 63) | 0x12A8BE03AE56A8C2) ^ __ROR8__(v63 ^ 0xB5F596EEC0CD16C2, 6) ^ v80 ^ 0x3995FED59EC43947;
  v83 = v82 ^ 0xE09724F78958A9BFLL;
  v84 = (((v78 ^ 0xBB51D694CB09A979) - 0x3FCAA0426E2DAF04) ^ ((v78 ^ 0x3894E3A874C1EAB9) + 0x43F06A812E1A133CLL) ^ ((v78 ^ 0x3D587A1F8C62613DLL) + 0x463CF336D6B998C0)) + 0x42E3CACF8E52E844 + ((((2 * v79) ^ 0xAE6F84EFC47FC22ALL) + 0x466556C6CF542848) ^ (((2 * v79) ^ 0x6FA9777570D82C16) - 0x785C5AA3840C3984) ^ (((2 * v79) ^ 0x42EEE69434CFB73CLL) - 0x551BCB42C01BA2AELL));
  v85 = (v84 ^ 0x43FFB7FD7CE7C48DLL) & (2 * (v84 & 0x8BFFA7FE7CF788CELL)) ^ v84 & 0x8BFFA7FE7CF788CELL;
  v86 = ((2 * (v84 ^ 0x51E0B9414445D59DLL)) ^ 0xB43E3D7E7164BAA6) & (v84 ^ 0x51E0B9414445D59DLL) ^ (2 * (v84 ^ 0x51E0B9414445D59DLL)) & 0xDA1F1EBF38B25D52;
  v87 = v86 ^ 0x4A01028108924551;
  v88 = (v86 ^ 0x101E1C3A30200000) & (4 * v85) ^ v85;
  v89 = ((4 * v87) ^ 0x687C7AFCE2C9754CLL) & v87 ^ (4 * v87) & 0xDA1F1EBF38B25D50;
  v90 = (v89 ^ 0x481C1ABC20805540) & (16 * v88) ^ v88;
  v91 = ((16 * (v89 ^ 0x9203040318320813)) ^ 0xA1F1EBF38B25D530) & (v89 ^ 0x9203040318320813) ^ (16 * (v89 ^ 0x9203040318320813)) & 0xDA1F1EBF38B25D50;
  v92 = (v91 ^ 0x80110AB308205500) & (v90 << 8) ^ v90;
  v93 = (((v91 ^ 0x5A0E140C30920843) << 8) ^ 0x1F1EBF38B25D5300) & (v91 ^ 0x5A0E140C30920843) ^ ((v91 ^ 0x5A0E140C30920843) << 8) & 0xDA1F1EBF38B25100;
  v94 = v92 ^ 0xDA1F1EBF38B25D53 ^ (v93 ^ 0x1A1E1E3830100000) & (v92 << 16);
  *(&v68 + 1) = v34;
  *&v68 = v34 ^ 0x99CBA12A34E70F80;
  v95 = v68 >> 7;
  *(&v68 + 1) = v34 ^ 0x99CBA12A34E70F80;
  *&v68 = v34;
  v96 = v95 ^ v34 ^ 0xB466E17B19E74B41 ^ (v68 >> 41);
  v97 = v76 ^ 0xA1453E0F005095EFLL ^ ((v76 ^ 0xA1453E0F005095EFLL) << 47) ^ (((v76 >> 10) ^ (v76 >> 17) ^ 0x798194594D7B702) & (((v76 ^ 0xA1453E0F005095EFLL) << 54) ^ 0x1DBFFFFFFFFFFFFFLL) | ((v76 ^ 0xA1453E0F005095EFLL) << 54) & 0xF87FFFFFFFFFFFFFLL);
  v98 = v97 ^ 0x91CF5F309C5BFE15;
  v99 = v84 ^ v96 ^ 0x90D553711C8CD9D5 ^ (2 * ((v94 << 32) & 0x5A1F1EBF00000000 ^ v94 ^ ((v94 << 32) ^ 0x38B25D5300000000) & (((v93 ^ 0xC001008708A20C53) << 16) & 0x5A1F1EBF00000000 ^ 0x4000060D00000000 ^ (((v93 ^ 0xC001008708A20C53) << 16) ^ 0x1EBF38B200000000) & (v93 ^ 0xC001008708A20C53))));
  v100 = 0x543F44A7FEB3B804 - (((v82 ^ 0xDD8D683F64E7CA4DLL) - 0x3D1A4CC8EDBF63F2) ^ ((v82 ^ 0x973E2418C0BBF18ELL) - 0x77A900EF49E35831) ^ ((v82 ^ 0x7810CA385E1BA9FALL) + 0x6778113028BCFFBBLL));
  v101 = (v100 ^ 0x91691E6F6F082C76) & (2 * (v100 & 0xD98C186F8E2D0C76)) ^ v100 & 0xD98C186F8E2D0C76;
  v102 = ((2 * (v100 ^ 0xB0690E7B7F1824B6)) ^ 0xD3CA2C29E26A5180) & (v100 ^ 0xB0690E7B7F1824B6) ^ (2 * (v100 ^ 0xB0690E7B7F1824B6)) & 0x69E51614F13528C0;
  v103 = v102 ^ 0x2825121411152840;
  v104 = (v102 ^ 0x4040000060200080) & (4 * v101) ^ v101;
  v105 = ((4 * v103) ^ 0xA7945853C4D4A300) & v103 ^ (4 * v103) & 0x69E51614F13528C0;
  v106 = (v105 ^ 0x21841010C0142000) & (16 * v104) ^ v104;
  v107 = ((16 * (v105 ^ 0x48610604312108C0)) ^ 0x9E51614F13528C00) & (v105 ^ 0x48610604312108C0) ^ (16 * (v105 ^ 0x48610604312108C0)) & 0x69E51614F13528C0;
  v108 = (v107 ^ 0x841000411100800) & (v106 << 8) ^ v106;
  v109 = (((v107 ^ 0x61A41610E02520C0) << 8) ^ 0xE51614F13528C000) & (v107 ^ 0x61A41610E02520C0) ^ ((v107 ^ 0x61A41610E02520C0) << 8) & 0x69E51614F1352000;
  v110 = v108 ^ 0x69E51614F13528C0 ^ (v109 ^ 0x6104141031200000) & (v108 << 16);
  v111 = (v110 << 32) & 0x69E5161400000000 ^ v110 ^ ((v110 << 32) ^ 0x713528C000000000) & (((v109 ^ 0x8E10204C01528C0) << 16) & 0x69E5161400000000 ^ 0x69E1060000000000 ^ (((v109 ^ 0x8E10204C01528C0) << 16) ^ 0x1614F13500000000) & (v109 ^ 0x8E10204C01528C0));
  v112 = (((v99 ^ 0x7471A315A505A48ELL) - 0x61B128058521230ALL) ^ ((v99 ^ 0xFC8F53A20E3BDB9DLL) + 0x16B0274DD1E0A3E7) ^ ((v99 ^ 0x3FBE50DB93BEDD75) - 0x2A7EDBCBB39A5AF1)) - 0x17D51BF2FFA5EFABLL + ((((2 * v99) ^ 0xDF20C252B402377DLL) + 0x4C60FBB34C50DECCLL) ^ (((2 * v99) ^ 0x5B337298E163BBE2) - 0x378CB486E6CEADABLL) ^ (((2 * v99) ^ 0x156D0FEDDB9F37ACLL) - 0x79D2C9F3DC3221E5));
  v113 = (v112 ^ 0xB496D08839DDFA16) & (2 * (v112 & 0xB816C0A8A19DC307)) ^ v112 & 0xB816C0A8A19DC307;
  v114 = ((2 * (v112 ^ 0xF4BA51C83ACEF816)) ^ 0x995922C136A67622) & (v112 ^ 0xF4BA51C83ACEF816) ^ (2 * (v112 ^ 0xF4BA51C83ACEF816)) & 0x4CAC91609B533B10;
  v115 = v114 ^ 0x44A4912089510911;
  v116 = (v114 ^ 0x8004002021000) & (4 * v113) ^ v113;
  v117 = ((4 * v115) ^ 0x32B245826D4CEC44) & v115 ^ (4 * v115) & 0x4CAC91609B533B10;
  v118 = (v117 ^ 0xA0010009402800) & (16 * v116) ^ v116;
  v119 = ((16 * (v117 ^ 0x4C0C906092131311)) ^ 0xCAC91609B533B110) & (v117 ^ 0x4C0C906092131311) ^ (16 * (v117 ^ 0x4C0C906092131311)) & 0x4CAC91609B533B10;
  v120 = (v119 ^ 0x4888100091133100) & (v118 << 8) ^ v118;
  v121 = (((v119 ^ 0x42481600A400A01) << 8) ^ 0xAC91609B533B1100) & (v119 ^ 0x42481600A400A01) ^ ((v119 ^ 0x42481600A400A01) << 8) & 0x4CAC91609B533100;
  v122 = v120 ^ 0x4CAC91609B533B11 ^ (v121 ^ 0xC80000013130000) & (v120 << 16);
  v123 = v112 ^ (2 * ((v122 << 32) & 0x4CAC916000000000 ^ v122 ^ ((v122 << 32) ^ 0x1B533B1100000000) & (((v121 ^ 0x402C916088402A11) << 16) & 0x4CAC916000000000 ^ 0x4C8C002000000000 ^ (((v121 ^ 0x402C916088402A11) << 16) ^ 0x11609B5300000000) & (v121 ^ 0x402C916088402A11))));
  v124 = v97 ^ 0x91CF5F309C5BFE15 ^ v96 ^ 0x90D553711C8CD9D5;
  v125 = (v97 ^ 0x6CC82EF25731EE20) & (v96 ^ 0x78CE0754E4503230) ^ v97 & 0x50BE56EFCDCF7BEBLL;
  v126 = (v80 ^ 0xB13610F581333473) & (v123 ^ 0x314FC069973BB525);
  v127 = v123 & 0x3A2BB051D2C8478ALL;
  v128 = v82 ^ 0xE09724F78958A9BFLL ^ __ROR8__(__ROR8__(v82 ^ 0xE09724F78958A9BFLL, 21) ^ 0x6A9DE4AA8C1102ECLL, 43) ^ v100 ^ (2 * v111);
  v129 = (v82 ^ 0xECAE489FA4660A07) & (v80 ^ 0x74E25F5BAC048C06);
  v130 = v80 & 0xDE0DCE805E21983ELL;
  v131 = (((v128 ^ 0xB4132169E7853B3DLL) + 0x65523DFDBC25398) ^ ((v128 ^ 0x69BE1CD5289F66F6) - 0x2407E19CEB27F1A3) ^ ((v128 ^ 0x80F08BDAFED05381) + 0x32B6896CC2973B2CLL)) + 0x5995374BC330E405;
  v132 = (v131 ^ 0x366ED3F50E1D31D9) & (2 * (v131 & 0xB74F13E42F41B519)) ^ v131 & 0xB74F13E42F41B519;
  v133 = ((2 * (v131 ^ 0x74E0D6FD5A9F1BF9)) ^ 0x875F8A32EBBD5DC0) & (v131 ^ 0x74E0D6FD5A9F1BF9) ^ (2 * (v131 ^ 0x74E0D6FD5A9F1BF9)) & 0xC3AFC51975DEAEE0;
  v134 = v133 ^ 0x40A045091442A220;
  v135 = (v133 ^ 0x830C8010610C0CC0) & (4 * v132) ^ v132;
  v136 = ((4 * v134) ^ 0xEBF1465D77ABB80) & v134 ^ (4 * v134) & 0xC3AFC51975DEAEE0;
  v137 = (v136 ^ 0x2AF0401555AAA80) & (16 * v135) ^ v135;
  v138 = ((16 * (v136 ^ 0xC100C11820840460)) ^ 0x3AFC51975DEAEE00) & (v136 ^ 0xC100C11820840460) ^ (16 * (v136 ^ 0xC100C11820840460)) & 0xC3AFC51975DEAEC0;
  v139 = (v138 ^ 0x2AC411155CAAE00) & (v137 << 8) ^ v137;
  v140 = (((v138 ^ 0xC1038408201400E0) << 8) ^ 0xAFC51975DEAEE000) & (v138 ^ 0xC1038408201400E0) ^ ((v138 ^ 0xC1038408201400E0) << 8) & 0xC3AFC51975DEA000;
  v141 = v139 ^ 0xC3AFC51975DEAEE0 ^ (v140 ^ 0x83850111548E0000) & (v139 << 16);
  v142 = v131 ^ (2 * ((v141 << 32) & 0x43AFC51900000000 ^ v141 ^ ((v141 << 32) ^ 0x75DEAEE000000000) & (((v140 ^ 0x402AC40821500EE0) << 16) & 0x43AFC51900000000 ^ 0x2A6800100000000 ^ (((v140 ^ 0x402AC40821500EE0) << 16) ^ 0x451975DE00000000) & (v140 ^ 0x402AC40821500EE0))));
  v143 = (v99 ^ 0xA6F27226E62F20D3) & (v124 ^ 0x45A27308FE79803BLL);
  *&v68 = __ROR8__(v124 ^ v127 ^ 0x5483968CE69BC200 ^ v126, 57);
  v144 = v99 ^ v130 ^ 0xE5BFE43A50CCB636 ^ v129;
  v145 = v125 ^ v83;
  v146 = v144 ^ v81 ^ v142 & 0xC29A20CDA34FF8CDLL ^ (v142 ^ 0xB30D91D6C4FCE8D9) & (v97 ^ 0x51ADF1C00B81E912);
  v147 = ((v68 >> 7) ^ 0x7F04AEF295710F25) & ((v68 << 57) ^ 0xADFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL | ((v68 >> 6) << 63);
  v148 = ((((v68 << 57) ^ 0xB72DBA4EA1D7D7C8) - 0x15B0E3F136A0BF58) ^ (((v68 << 57) ^ 0xBA7C9BF6FFCB034DLL) - 0x18E1C24968BC6BDDLL) ^ (((v68 << 57) ^ 0x5F5121B85E1CD485) + 0x23387F8369443EBLL)) - (((v147 ^ 0xA644C5F2D2EF061BLL) + 0x18CE6286E498B09BLL) ^ ((v147 ^ 0xD0B583813436CC7FLL) + 0x6E3F24F502417AFFLL) ^ ((v147 ^ 0x852072BB06BD7D85) + 0x3BAAD5CF30CACB05)) + 0x664313373CF76A45;
  v149 = (v148 ^ 0xD7A191613E08FF8ALL) & (2 * (v148 & 0xD7B5DA453092FFACLL)) ^ v148 & 0xD7B5DA453092FFACLL;
  v150 = ((2 * (v148 ^ 0x7DC385611E2C998ALL)) ^ 0x54ECBE485D7CCC4CLL) & (v148 ^ 0x7DC385611E2C998ALL) ^ (2 * (v148 ^ 0x7DC385611E2C998ALL)) & 0xAA765F242EBE6626;
  v151 = v150 ^ 0xAA12412422822222;
  v152 = (v150 ^ 0x641A00041C4400) & (4 * v149) ^ v149;
  v153 = ((4 * v151) ^ 0xA9D97C90BAF99898) & v151 ^ (4 * v151) & 0xAA765F242EBE6620;
  v154 = (v153 ^ 0xA8505C002AB80000) & (16 * v152) ^ v152;
  v155 = ((16 * (v153 ^ 0x226032404066626)) ^ 0xA765F242EBE66260) & (v153 ^ 0x226032404066626) ^ (16 * (v153 ^ 0x226032404066626)) & 0xAA765F242EBE6620;
  v156 = (v155 ^ 0xA26452002AA66200) & (v154 << 8) ^ v154;
  v157 = (((v155 ^ 0x8120D2404180406) << 8) ^ 0x765F242EBE662600) & (v155 ^ 0x8120D2404180406) ^ ((v155 ^ 0x8120D2404180406) << 8) & 0xAA765F242EBE6600;
  v158 = v157 ^ 0x88205B0000984026;
  v159 = v156 ^ 0xAA765F242EBE6626 ^ (v157 ^ 0x225604242E260000) & (v156 << 16);
  v160 = 0xCE08022B28F79739 - ((((v68 >> 7) ^ 0xEE6150B067D8B267) + 0x33EB888101BCB5ADLL) ^ (((v68 >> 7) ^ 0xC76B623429048154) + 0x1AE1BA054F6086A0) ^ (((v68 >> 7) ^ 0xA5DFA8BE3BC98BF7) + 0x7855708F5DAD8C3DLL));
  v161 = (v160 ^ 0x4217BFDFC17A87D7) & (2 * (v160 & 0x83573FDFEA7A27D7)) ^ v160 & 0x83573FDFEA7A27D7;
  v162 = ((2 * (v160 ^ 0x4017F4D395FAC9DFLL)) ^ 0x86819618FF01DC10) & (v160 ^ 0x4017F4D395FAC9DFLL) ^ (2 * (v160 ^ 0x4017F4D395FAC9DFLL)) & 0xC340CB0C7F80EE08;
  v163 = v162 ^ 0x4140490400802208;
  v164 = (v162 ^ 0x20082087B008C00) & (4 * v161) ^ v161;
  v165 = ((4 * v163) ^ 0xD032C31FE03B820) & v163 ^ (4 * v163) & 0xC340CB0C7F80EE08;
  v166 = (v165 ^ 0x10008007E00A800) & (16 * v164) ^ v164;
  v167 = ((16 * (v165 ^ 0xC240C30C01804608)) ^ 0x340CB0C7F80EE080) & (v165 ^ 0xC240C30C01804608) ^ (16 * (v165 ^ 0xC240C30C01804608)) & 0xC340CB0C7F80EE00;
  v168 = (v167 ^ 0x80047800E000) & (v166 << 8) ^ v166;
  v169 = (((v167 ^ 0xC3404B0807800E08) << 8) ^ 0x40CB0C7F80EE0800) & (v167 ^ 0xC3404B0807800E08) ^ ((v167 ^ 0xC3404B0807800E08) << 8) & 0xC340CB0C7F80E800;
  v170 = v168 ^ 0xC340CB0C7F80EE08 ^ (v169 ^ 0x4040080C00800000) & (v168 << 16);
  v171 = v160 ^ (v68 >> 7) ^ v148 ^ (2 * ((v170 << 32) & 0x4340CB0C00000000 ^ v170 ^ ((v170 << 32) ^ 0x7F80EE0800000000) & (((v169 ^ 0x8300C3007F00E608) << 16) & 0xC340CB0C00000000 ^ 0x40800C00000000 ^ (((v169 ^ 0x8300C3007F00E608) << 16) ^ 0xCB0C7F8000000000) & (v169 ^ 0x8300C3007F00E608)) ^ v159 ^ (v159 << 32) & 0x2A765F2400000000 ^ ((v159 << 32) ^ 0x2EBE662600000000) & ((v158 << 16) & 0x2A765F2400000000 ^ 0x2052510000000000 ^ ((v158 << 16) ^ 0x5F242EBE00000000) & v158)));
  v172 = ((((v68 << 57) ^ 0x1F0AA572FC8D12A4) + 0x42680332940585CCLL) ^ (((v68 << 57) ^ 0x32AF5F3469F290BFLL) + 0x6FCDF974017A07D1) ^ (((v68 << 57) ^ 0x7FA5FA46957F821BLL) + 0x22C75C06FDF71575)) - 0x53A870086D964034 + (((v171 ^ 0xB6BF8BF354192663) + 0x34238DD946B2E824) ^ ((v171 ^ 0x7769372E7CBAC18FLL) - 0xA0ACEFB91EEF030) ^ ((v171 ^ 0x19E1F3752523970FLL) - 0x64820AA0C877A6B0));
  v173 = (v172 ^ 0xC9522A25C1C9C22FLL) & (2 * (v172 & 0xE99A8045E5E1EA20)) ^ v172 & 0xE99A8045E5E1EA20;
  v174 = ((2 * (v172 ^ 0x19672AA782CB866FLL)) ^ 0xE1FB55C4CE54D89ELL) & (v172 ^ 0x19672AA782CB866FLL) ^ (2 * (v172 ^ 0x19672AA782CB866FLL)) & 0xF0FDAAE2672A6C4ELL;
  v175 = v174 ^ 0x1004AA22212A2441;
  v176 = (v174 ^ 0xE0F8000006004800) & (4 * v173) ^ v173;
  v177 = ((4 * v175) ^ 0xC3F6AB899CA9B13CLL) & v175 ^ (4 * v175) & 0xF0FDAAE2672A6C4CLL;
  v178 = (v177 ^ 0xC0F4AA8004282000) & (16 * v176) ^ v176;
  v179 = ((16 * (v177 ^ 0x3009006263024C43)) ^ 0xFDAAE2672A6C4F0) & (v177 ^ 0x3009006263024C43) ^ (16 * (v177 ^ 0x3009006263024C43)) & 0xF0FDAAE2672A6C40;
  v180 = (v179 ^ 0xD8AA2262224400) & (v178 << 8) ^ v178;
  v181 = (((v179 ^ 0xF02500C00508280FLL) << 8) ^ 0xFDAAE2672A6C4F00) & (v179 ^ 0xF02500C00508280FLL) ^ ((v179 ^ 0xF02500C00508280FLL) << 8) & 0xF0FDAAE2672A6C00;
  v182 = v180 ^ 0xF0FDAAE2672A6C4FLL ^ (v181 ^ 0xF0A8A26222280000) & (v180 << 16);
  v183 = v172 ^ (2 * ((v182 << 32) & 0x70FDAAE200000000 ^ v182 ^ ((v182 << 32) ^ 0x672A6C4F00000000) & (((v181 ^ 0x5508804502204FLL) << 16) & 0x70FDAAE200000000 ^ 0x501D88C000000000 ^ (((v181 ^ 0x5508804502204FLL) << 16) ^ 0x2AE2672A00000000) & (v181 ^ 0x5508804502204FLL))));
  v184 = v183 ^ v144;
  v185 = v183 ^ v144 ^ 0xE5B9A886485D3097;
  v186 = v184 ^ 0xCA8288A28EB29EELL;
  v187 = v184 ^ 0xCA8288A28EB29EELL ^ (v185 >> 19);
  v188 = (v184 ^ 0xCA8288A28EB29EELL) << 36;
  v189 = (((v187 ^ 0xD57EBF8A2C17DF19) - 0xB9E0763C2C0BDD8) ^ ((v187 ^ 0x7D0FD2A773740478) + 0x5C1095B1625C9947) ^ ((v187 ^ 0x21870EE8EB53D9D7) + 0x9849FEFA7B44EALL)) - (((v187 ^ v188 ^ 0xD5108E1B9594D2BLL ^ 0x6833AE1B2D7BB6C8) + 0x492CE90D3C532BF7) ^ ((v187 ^ v188 ^ 0xD5108E1B9594D2BLL ^ 0x345A678040EEB6ACLL) + 0x1545209651C62B93) ^ ((v187 ^ v188 ^ 0xD5108E1B9594D2BLL ^ 0x4464DB2F60FC4FF9) + 0x657B9C3971D4D2C8)) - 0x34E51CBE40474F7ELL;
  v190 = ((v189 ^ 0x16BE1B3D891CE9F1) - 0x2C4FA94EC1939496) ^ v189 ^ ((v189 ^ 0xC8FCD650123F1F16) + 0xDF29BDCA54F9D8FLL) ^ ((v189 ^ 0x94181C412D92565CLL) + 0x511651CD9AE2D4C5) ^ ((v189 ^ 0x70AB635FFE3EDDDCLL) - 0x4A5AD12CB6B1A0BBLL);
  v191 = (v146 ^ 0x421E41149BD264FDLL) << (v34 & 0x19 ^ 1) << (v34 & 1) << (~v34 & 0x18);
  v192 = v124 & 0x11B2D24ADEAF82B5 ^ v98 ^ v143 ^ v145;
  v193 = (((v190 & 0x800000000 ^ 0xAABB8DBCF5C896D5) + 0x413887ED6CB296F2) ^ ((v190 & 0x800000000) + 0x140CD35DDA7AEF27) ^ ((v190 & 0x800000000 ^ 0xF57E6B3B5408E154) + 0x1EFD616ACD72E171)) - (((v188 ^ 0x385E5784850756ALL) - 0xED4ED99F1093841) ^ ((v188 ^ 0xC397EBB5356D015FLL) + 0x31391CAB73CBB38CLL) ^ ((v188 ^ 0x5CB8775D7D3D7435) - 0x51E97FBCC464391ELL)) - 0x2C01452F40248316;
  v194 = v190 & 0xFFFFFFF7FFFFFFFFLL ^ v188 ^ 0xD5108E1B9594D2BLL;
  v195 = v146 ^ 0x728B301D6409DD5FLL ^ (v146 >> 39) ^ (8 * (v146 ^ 0x728B301D6409DD5FLL)) ^ v191 ^ 0xC34285BF36FF42ELL;
  v196 = v145 >> 6;
  v197 = v183 & 0x7E58975FA373811 ^ 0x26046E37F97558CLL;
  v198 = ((v193 ^ 0xED4F9BE7C0C47861) + 0x43CD528C2D954DA5) ^ v193 ^ ((v193 ^ 0xD379F6A14AFA718FLL) + 0x7DFB3FCAA7AB444BLL) ^ ((v193 ^ 0x93E584294703FCCFLL) + 0x3D674D42AA52C90BLL) ^ ((v193 ^ 0xFCAEDFFBDF933F1BLL) + 0x522C169032C20ADFLL);
  v199 = (((v145 >> 6) & 0x200000) + 0x17F8DBC7C73ECF23) ^ (((v145 >> 6) & 0x200000) + 0x27F72C57D53EEF1DLL) ^ (((v145 >> 6) & 0x200000 ^ 0x1D87DA4F89341895) - 0x359E0617F27569B0);
  v200 = 2 * ((v198 ^ 0x517D369412AECA3ALL) & (v194 ^ 0x60845C302F60728DLL) ^ v198 & 0x4B8E9F32DEB642C1);
  v201 = (((v187 ^ 0x67A6E9F88BAB6122) + 0x46B9AEEE9A83FC1DLL) ^ ((v187 ^ 0x93946C0F2639832ELL) - 0x4D74D4E6C8EEE1EFLL) ^ ((v187 ^ 0x7DC4E63219A2E0BALL) + 0x5CDBA124088A7D85)) + (((v194 ^ 0xB19BF8B0AFF624E8) + 0x2E51504679F6AA13) ^ ((v194 ^ 0xC7E47D5824A464CBLL) + 0x582ED5AEF2A4EA32) ^ ((v194 ^ 0xDD7546EA7A84706FLL) + 0x42BFEE1CAC84FE96)) + v193 - (((v200 ^ 0x6550539C4A2CD31CLL) - 0x614AB4213DD0001BLL) ^ ((v200 ^ 0xFAD93924C514ECBDLL) + 0x13C21664D17C046) ^ ((v200 ^ 0x1D914698AA74BBA1) - 0x198BA125DD8868A6)) - 0x61E98D4885439B88;
  v202 = (v201 ^ 0xAA3FFB2E02F15DA6) & (2 * (v201 & 0xACBFFA4F52F51C07)) ^ v201 & 0xACBFFA4F52F51C07;
  v203 = ((2 * (v201 ^ 0xF37A1F3C877955A8)) ^ 0xBF8BCAE7AB18935ELL) & (v201 ^ 0xF37A1F3C877955A8) ^ (2 * (v201 ^ 0xF37A1F3C877955A8)) & 0x5FC5E573D58C49AELL;
  v204 = v203 ^ 0x40442510548448A1;
  v205 = (v203 ^ 0x1781C0638108000CLL) & (4 * v202) ^ v202;
  v206 = ((4 * v204) ^ 0x7F1795CF563126BCLL) & v204 ^ (4 * v204) & 0x5FC5E573D58C49ACLL;
  v207 = (v206 ^ 0x5F058543540000A0) & (16 * v205) ^ v205;
  v208 = ((16 * (v206 ^ 0xC06030818C4903)) ^ 0xFC5E573D58C49AF0) & (v206 ^ 0xC06030818C4903) ^ (16 * (v206 ^ 0xC06030818C4903)) & 0x5FC5E573D58C49A0;
  v209 = (v208 ^ 0x5C44453150840800) & (v207 << 8) ^ v207;
  v210 = (((v208 ^ 0x381A0428508410FLL) << 8) ^ 0xC5E573D58C49AF00) & (v208 ^ 0x381A0428508410FLL) ^ ((v208 ^ 0x381A0428508410FLL) << 8) & 0x5FC5E573D58C4900;
  v211 = v209 ^ 0x5FC5E573D58C49AFLL ^ (v210 ^ 0x45C5615184080000) & (v209 << 16);
  v212 = (v211 << 32) & 0x5FC5E57300000000 ^ v211 ^ ((v211 << 32) ^ 0x558C49AF00000000) & (((v210 ^ 0x1A008422518440AFLL) << 16) & 0x5FC5E57300000000 ^ 0x1A84207300000000 ^ (((v210 ^ 0x1A008422518440AFLL) << 16) ^ 0x6573D58C00000000) & (v210 ^ 0x1A008422518440AFLL));
  v213 = (v146 >> 11) & 0x1C000000000000 ^ __ROR8__(v195, 14);
  v214 = ((v183 ^ 0x94595CACC41B10C5) - 0x71E0F42A8C462052) ^ ((v183 ^ 0x81FCA1A69ADEFC62) - 0x64450920D283CCF5) ^ ((v183 ^ 0xDD94780F7570DE19) - 0x382DD0893D2DEE8ELL);
  v215 = (((v199 - 1656392809) | (2 * ((v199 - 1656392809) & 0x2000002))) & 0x6000002 | 0x311C100018907980) ^ (2 * ((v199 - 1656392809) & 0x2000002)) & ((v199 - 1656392809) ^ 0xC3C28044);
  v216 = (2 * ((v199 + 0x2E1E10EA9D457397) ^ 0xC4659138C3C28044)) & 0x3D9E5A551DD97DCALL ^ 0x4824A550449044ALL ^ ((2 * ((v199 + 0x2E1E10EA9D457397) ^ 0xC4659138C3C28044)) ^ 0x7B3CB4AA3BB2FB94) & ((v199 + 0x2E1E10EA9D457397) ^ 0xC4659138C3C28044);
  v217 = (4 * v215) & 0x410400018416408 ^ v215 ^ ((2 * ((v199 - 1656392809) ^ 0xC3C28044)) & 0x1DD97DCA ^ 0x449044A ^ ((2 * ((v199 - 1656392809) ^ 0xC3C28044)) ^ 0x3BB2FB94) & ((v199 - 1656392809) ^ 0xC3C28044)) & (4 * v215) & 0x18000018;
  v218 = (4 * v216) & 0x3D9E5A551DD97DC8 ^ 0x9861201089808C2 ^ ((4 * v216) ^ 0xF67969547765F728) & v216;
  v219 = (16 * v217) & 0x3D9E5A551DD97DC0 ^ v217 ^ ((16 * v217) ^ 0x50C500018D11D800) & v218;
  v220 = (16 * v218) & 0x3D9E5A551DD97DC0 ^ 0x241A5A040048214ALL ^ ((16 * v218) ^ 0xD9E5A551DD97DCA0) & v218;
  v221 = (v219 << 8) & 0x3D9E5A551DD97D00 ^ v219 ^ ((v219 << 8) ^ 0x88500115C0458000) & v220;
  v222 = (v220 << 8) & 0x3D9E5A551DD97800 ^ 0x21840A40048035CALL ^ ((v220 << 8) ^ 0x9E5A551DD97DCA00) & v220;
  v223 = v221 ^ (v221 << 16) & 0x3D9E5A551DD90000 ^ ((v221 << 16) ^ 0x5014158145800000) & v222 ^ 0x121A400DD8384ALL;
  v224 = v145 ^ 0xF31438B5AA9A219FLL;
  v225 = v145 ^ 0xF31438B5AA9A219FLL ^ (v145 >> 1);
  v226 = (v199 + 0x2E1E10EA9D457397) ^ (2 * ((v223 << 32) & 0x3D9E5A5500000000 ^ v223 ^ ((v223 << 32) ^ 0x1DD97DCA00000000) & ((v222 << 16) & 0x3D9E5A5500000000 ^ 0x258A420400000000 ^ ((v222 << 16) ^ 0x5A551DD900000000) & v222)));
  v227 = v185 >> 28;
  if (((v226 ^ 0xB9F7CF47E5A9061ALL) & (v225 ^ 0x3663B0554E98942ALL) ^ v226 & 0x8E54AC3E72F884B4) == 0x88548C0660A80410)
  {
    v228 = v199 + 0x2E1E10EA9D457397;
  }

  else
  {
    v228 = 0xDDEA5839A682914DLL - v199;
  }

  v229 = (((v225 ^ 0x9420D40496934A45) - 0xCA64F7DFDDBA983) ^ ((v225 ^ 0x56BC561A369A9977) + 0x31C5329CA22D854FLL) ^ ((v225 ^ 0x7AAB9E759C69C3ACLL) + 0x1DD2FAF308DEDF96)) + 0x4BB8178FB0BF6BF1 + v228;
  v230 = (v229 ^ 0xCEF430F43215E2E1) & (2 * (v229 & 0xCEF53AF0848584F5)) ^ v229 & 0xCEF53AF0848584F5;
  v231 = ((2 * (v229 ^ 0x47F644143316E369)) ^ 0x1206FDC96F26CF38) & (v229 ^ 0x47F644143316E369) ^ (2 * (v229 ^ 0x47F644143316E369)) & 0x89037EE4B793679CLL;
  v232 = v231 ^ 0x8901022490912084;
  v233 = (v231 ^ 0x7CC026020718) & (4 * v230) ^ v230;
  v234 = ((4 * v232) ^ 0x240DFB92DE4D9E70) & v232 ^ (4 * v232) & 0x89037EE4B7936798;
  v235 = (v234 ^ 0x17A8096010610) & (16 * v233) ^ v233;
  v236 = ((16 * (v234 ^ 0x890204642192618CLL)) ^ 0x9037EE4B793679C0) & (v234 ^ 0x890204642192618CLL) ^ (16 * (v234 ^ 0x890204642192618CLL)) & 0x89037EE4B7936780;
  v237 = (v236 ^ 0x80036E4031126100) & (v235 << 8) ^ v235;
  v238 = (((v236 ^ 0x90010A48681061CLL) << 8) ^ 0x37EE4B793679C00) & (v236 ^ 0x90010A48681061CLL) ^ ((v236 ^ 0x90010A48681061CLL) << 8) & 0x89037EE4B7936400;
  v239 = v237 ^ 0x89037EE4B793679CLL ^ (v238 ^ 0x10264A493030000) & (v237 << 16);
  v240 = ((v239 << 32) ^ 0x3793679C00000000) & (((v238 ^ 0x88011A402490639CLL) << 16) & 0x9037EE400000000 ^ 0x103486400000000 ^ (((v238 ^ 0x88011A402490639CLL) << 16) ^ 0x7EE4B79300000000) & (v238 ^ 0x88011A402490639CLL));
  v241 = (v239 << 32) & 0x9037EE400000000 ^ v239;
  v242 = v196 & 0x127884EBED43D27;
  v243 = v229 ^ (2 * (v241 ^ v240));
  v244 = v243 & 0x6927884EBEF43D27;
  v245 = v243 & 0x96D877B1410BC2D8 ^ v196 & 0x2D877B1410BC2D8;
  v246 = v214 - ((((4 * v197) ^ 0x223312D73B935C80) + 0x6A948A44F6F2639) ^ (((4 * v197) ^ 0xC0CF6554ADDDF4B3) - 0x1BAAC0D826DE71F4) ^ (((4 * v197) ^ 0xEBFB681AC0C73E43) - 0x309ECD964BC4BB04)) + ((((2 * v197) ^ 0x63B7EB41C515F70BLL) - 0x3F9E712A898DF1B5) ^ (((2 * v197) ^ 0x85B03A1D7A03EE21) + 0x26665F89C9641761) ^ (((2 * v197) ^ 0xE2845E901452D212) + 0x41523B04A7352B54)) - 0x122AC6EE63123104;
  v247 = (v246 ^ 0xED9FDD7DEBA185E9) & (2 * (v246 & 0xCDDFD979CB84258DLL)) ^ v246 & 0xCDDFD979CB84258DLL;
  v248 = ((2 * (v246 ^ 0x6D284F9C78A9C6E9)) ^ 0x41EF2DCB665BC6C8) & (v246 ^ 0x6D284F9C78A9C6E9) ^ (2 * (v246 ^ 0x6D284F9C78A9C6E9)) & 0xA0F796E5B32DE364;
  v249 = v248 ^ 0xA010922491242124;
  v250 = (v248 ^ 0xE704C122018240) & (4 * v247) ^ v247;
  v251 = ((4 * v249) ^ 0x83DE5B96CCB78D90) & v249 ^ (4 * v249) & 0xA0F796E5B32DE360;
  v252 = (v251 ^ 0x80D6128480258100) & (16 * v250) ^ v250;
  v253 = ((16 * (v251 ^ 0x2021846133086264)) ^ 0xF796E5B32DE3640) & (v251 ^ 0x2021846133086264) ^ (16 * (v251 ^ 0x2021846133086264)) & 0xA0F796E5B32DE340;
  v254 = (v253 ^ 0x710641320C2200) & (v252 << 8) ^ v252;
  v255 = (((v253 ^ 0xA08690A48121C124) << 8) ^ 0xF796E5B32DE36400) & (v253 ^ 0xA08690A48121C124) ^ ((v253 ^ 0xA08690A48121C124) << 8) & 0xA0F796E5B32DE000;
  v256 = v254 ^ 0xA0F796E5B32DE364 ^ (v255 ^ 0xA09684A121210000) & (v254 << 16);
  v257 = v246 ^ (2 * ((v256 << 32) & 0x20F796E500000000 ^ v256 ^ ((v256 << 32) ^ 0x332DE36400000000) & (((v255 ^ 0x611244920C8364) << 16) & 0x20F796E500000000 ^ 0x201204C000000000 ^ (((v255 ^ 0x611244920C8364) << 16) ^ 0x16E5B32D00000000) & (v255 ^ 0x611244920C8364))));
  v258 = v257 >> 41;
  v259 = v257 ^ 0xE923298FA5C1AD63 ^ __ROR8__(v257 ^ 0xE923298FA5C1AD63, 7) ^ ((v257 ^ 0xE923298FA5C1AD63) << 23);
  v260 = v259 ^ 0xDCEC9962D868A7BCLL;
  v261 = __ROR8__(v213 ^ 0xF6DA1324E1447317, 50);
  v262 = (((v258 ^ 0xD7D61843EEABAEABLL) + 0x5D86A0F94318DAFELL) ^ ((v258 ^ 0x28C1C897280BBF35) - 0x5D6E8FD27A47349CLL) ^ ((v258 ^ 0xFF17D0D4C6C62C66) + 0x7547686E6B755831)) - (((v259 ^ 0xDCEC9962D868A7BCLL ^ v258 ^ 0x77547D5FFD1BC387) - 0x2FB3A1AAF57482ELL) ^ ((v259 ^ 0xDCEC9962D868A7BCLL ^ v258 ^ 0xBB16618D599584ABLL) + 0x3146D937F426F0FELL) ^ ((v259 ^ 0xDCEC9962D868A7BCLL ^ v258 ^ 0x8338E2D18D8EAFD2) + 0x9685A6B203DDB85)) + 0x570296EC94F766ADLL;
  v263 = (v224 << 63) ^ (v224 << 58) ^ ((v245 ^ 0x69A78A4EBEF43D6FLL) & (v242 ^ 0x6C88160601B62DF9 ^ v244) | v245 & 0x925061B14009C200);
  v264 = 0xC8C103091597AEB4 - (((v259 ^ 0xD913716CA4A3D6E5) - 0x5FFE80E7CCB7159) ^ ((v259 ^ 0xA5724143216D8B37) - 0x799ED821F9052C8BLL) ^ ((v259 ^ 0xEFF7574E74C02F68) - 0x331BCE2CACA888D4));
  v265 = (v264 ^ 0xF7ABFEE3FC247917) & (2 * (v264 & 0xE7C3FEF3C1017C46)) ^ v264 & 0xE7C3FEF3C1017C46;
  v266 = ((2 * (v264 ^ 0xBC2C6783FC26919FLL)) ^ 0xB7DF32E07A4FDBB2) & (v264 ^ 0xBC2C6783FC26919FLL) ^ (2 * (v264 ^ 0xBC2C6783FC26919FLL)) & 0x5BEF99703D27EDD8;
  v267 = v266 ^ 0x4820891005202449;
  v268 = (v266 ^ 0x130F10400807C110) & (4 * v265) ^ v265;
  v269 = ((4 * v267) ^ 0x6FBE65C0F49FB764) & v267 ^ (4 * v267) & 0x5BEF99703D27EDD8;
  v270 = (v269 ^ 0x4BAE01403407A540) & (16 * v268) ^ v268;
  v271 = ((16 * (v269 ^ 0x1041983009204899)) ^ 0xBEF99703D27EDD90) & (v269 ^ 0x1041983009204899) ^ (16 * (v269 ^ 0x1041983009204899)) & 0x5BEF99703D27EDD0;
  v272 = (v271 ^ 0x1AE991001026CD00) & (v270 << 8) ^ v270;
  v273 = (((v271 ^ 0x410608702D012049) << 8) ^ 0xEF99703D27EDD900) & (v271 ^ 0x410608702D012049) ^ ((v271 ^ 0x410608702D012049) << 8) & 0x5BEF99703D27E900;
  v274 = v272 ^ 0x5BEF99703D27EDD9 ^ (v273 ^ 0x4B89103025250000) & (v272 << 16);
  v275 = (v192 >> 10) ^ (v192 >> 17) ^ v192 ^ 0xDCDCDCF9C7BE8D49 ^ ((v192 ^ 0xDCDCDCF9C7BE8D49) << 47) ^ ((v192 ^ 0xDCDCDCF9C7BE8D49) << 54);
  v276 = v263 ^ v261;
  v277 = v264 ^ v260 ^ v262 ^ ((v262 ^ 0x479545E4B9EFC0EFLL) - 0x5BBC4D0907F6D35CLL) ^ ((v262 ^ 0xE4E6E520046D4464) + 0x7301232458BA829) ^ ((v262 ^ 0x28AC5FE47D4169D7) - 0x34855709C3587A64) ^ ((v262 ^ 0x97F6F7CD7EDAFEEFLL) + 0x742000DF3F3C12A4) ^ (2 * ((v274 << 32) & 0x5BEF997000000000 ^ v274 ^ ((v274 << 32) ^ 0x3D27EDD900000000) & (((v273 ^ 0x10668940180224D9) << 16) & 0x5BEF997000000000 ^ 0x428F805000000000 ^ (((v273 ^ 0x10668940180224D9) << 16) ^ 0x19703D2700000000) & (v273 ^ 0x10668940180224D9))));
  v278 = (((v258 ^ 0xEDD698075933C869) + 0x678620BDF480BC40) ^ ((v258 ^ 0x3DE87B3FC69DBD4ALL) - 0x48473C7A94D136E3) ^ ((v258 ^ 0xD03EE3389FC848DBLL) + 0x5A6E5B82327B3C8ELL)) - 0x1A4FF9DCFFBBDFDALL + (((v277 ^ 0x82BE59F348206735) + 0x61467C292CBE53A8) ^ ((v277 ^ 0x6045E2A3AD6010DBLL) - 0x7C4238863601DBB6) ^ ((v277 ^ 0xD3FB930DC97116AFLL) + 0x3003B6D7ADEF223ELL));
  v279 = (v278 ^ 0xB9473B9B68374516) & (2 * (v278 & 0xBD07339B09374057)) ^ v278 & 0xBD07339B09374057;
  v280 = ((2 * (v278 ^ 0x8B4D3DBB6879C590)) ^ 0x6C941C40C29D0B8ELL) & (v278 ^ 0x8B4D3DBB6879C590) ^ (2 * (v278 ^ 0x8B4D3DBB6879C590)) & 0x364A0E20614E85C6;
  v281 = v280 ^ 0x124A022021428441;
  v282 = (v280 ^ 0x24000C00400C0184) & (4 * v279) ^ v279;
  v283 = ((4 * v281) ^ 0xD9283881853A171CLL) & v281 ^ (4 * v281) & 0x364A0E20614E85C4;
  v284 = (v283 ^ 0x10080800010A0500) & (16 * v282) ^ v282;
  v285 = ((16 * (v283 ^ 0x26420620604480C3)) ^ 0x64A0E20614E85C70) & (v283 ^ 0x26420620604480C3) ^ (16 * (v283 ^ 0x26420620604480C3)) & 0x364A0E20614E85C0;
  v286 = (v285 ^ 0x2400020000480400) & (v284 << 8) ^ v284;
  v287 = (((v285 ^ 0x124A0C2061068187) << 8) ^ 0x4A0E20614E85C700) & (v285 ^ 0x124A0C2061068187) ^ ((v285 ^ 0x124A0C2061068187) << 8) & 0x364A0E20614E8500;
  v288 = v286 ^ 0x364A0E20614E85C7 ^ (v287 ^ 0x20A002040040000) & (v286 << 16);
  v289 = v278 ^ (2 * ((v288 << 32) & 0x364A0E2000000000 ^ v288 ^ ((v288 << 32) ^ 0x614E85C700000000) & (((v287 ^ 0x34400E00214A00C7) << 16) & 0x364A0E2000000000 ^ 0x304A0E2000000000 ^ (((v287 ^ 0x34400E00214A00C7) << 16) ^ 0xE20614E00000000) & (v287 ^ 0x34400E00214A00C7))));
  v290 = v289 ^ 0x357B6375EFDE00A9 ^ v275 ^ 0xC4F65F69F72FD3A3;
  v291 = v201 ^ (v227 | (v186 << 45)) ^ (2 * v212) ^ v289 ^ 0x357B6375EFDE00A9;
  v292 = v275 & 0x5C526388FFB09830 ^ v276 ^ 0xBFDB00BFCB43CDB0 ^ 0xA2D8F4CFCC4D4D06 ^ (v289 ^ 0xCD554453341AD3E9) & (v275 ^ 0x5B90CC77980B50FELL);
  v293 = v261 & 0xEBDA19F3AAB4FFEFLL ^ (v276 ^ 0x18A40F9503C69799) & (v261 ^ 0xC33C16B311D7BE55) ^ 0x25593F93B5214807 ^ v291;
  v294 = v290 & 0x135DC3B01ACB07DDLL ^ v275 ^ 0xC4F65F69F72FD3A3 ^ (v291 ^ 0x5BEE15F6C92C3EA6) & (v290 ^ 0x3B1AD7B04B50C82DLL) ^ v292;
  v295 = (v276 ^ 0xBFDB00BFCB43CDB0) & 0xA2E4FAE7CA0DA128 ^ v261 ^ (v276 ^ 0xC81E999568D9789) & (v275 ^ 0x68BC96FADF90E29) ^ v293;
  v296 = v291 & 0x844990AD282166B9 ^ v290 ^ (v291 ^ 0xB74C29B92C18C684) & (v261 ^ 0xB88A79E1C6092713);
  v297 = v296 ^ v293;
  v298 = v296 ^ v293 ^ 0x4EC840713A20F2EELL;
  v299 = v298 << 36;
  v300 = (v298 << 36) ^ 0x49773CB1E687A84ELL;
  v301 = v297 >> 19;
  v302 = v298 ^ (v298 << 45);
  v303 = (v190 ^ v188) == 0xA65BCBE3488F7D67;
  v304 = 0x357004A1E687A84ELL;
  if (!v303)
  {
    v304 = v300;
  }

  *&v305 = __ROR8__(__ROR8__(v292, 23) ^ 0x55D12334B01A6F69, 41);
  v306 = v296 ^ 0x72B53C7590EC39E2;
  v307 = (v302 ^ 0xC233944116005081) & (v299 ^ 0x1240B85D3E2858EFLL) ^ v302 & 0x6E47804D3E2858EFLL;
  v308 = (v302 ^ 0x5DBAD1F254E64A4FLL ^ v304) & (v299 ^ 0x83F8C7EFFFFFFFFFLL) ^ v299 & 0x5506BEE000000000;
  v309 = ((v308 ^ 0x4F4457496162CC68) + 0x3EBFDE520EFB7825) ^ ((v308 ^ 0x67905B9D915D793BLL) + 0x166BD286FEC4CD78) ^ ((v308 ^ 0xD62B75C4D59E24D3) - 0x582F032045F86F60);
  v310 = v296 >> 22;
  v311 = v296 ^ (v296 >> 41) ^ 0xD04EC366D27D4BE7;
  v312 = (((v296 ^ 0x72B53C7590EC39E2) << 42) ^ 0x9DBE01F762CD234BLL) & ((v296 >> 22) ^ 0xFFFE03A908643227) | (v296 >> 22) & 0x2089C32DCB4;
  v313 = (((v307 ^ 0xBC928A4BE308781CLL) - 0x73864C3246E14DDFLL) ^ ((v307 ^ 0xED1639B92A0447C1) - 0x2202FFC08FED7202) ^ ((v307 ^ 0x138733B3DF0C6F5CLL) + 0x236C0A35851AA561)) + v309 - ((((2 * v307) ^ 0xC7C990E9D92254FELL) + 0x130751A8DD125DELL) ^ (((2 * v307) ^ 0x5B8FAA3BE40593C0) - 0x6289B0374F091D1CLL) ^ (((2 * v307) ^ 0x18413A501127663CLL) - 0x2147205CBA2BE8E0)) - 0x511B67CAFA2B0433;
  v314 = (v313 ^ 0x800C1B659E9B1BC9) & (2 * (v313 & 0x922CA369DCD013CALL)) ^ v313 & 0x922CA369DCD013CALL;
  v315 = ((2 * (v313 ^ 0x845C1D64869B1BDDLL)) ^ 0x2CE17C1AB496102ELL) & (v313 ^ 0x845C1D64869B1BDDLL) ^ (2 * (v313 ^ 0x845C1D64869B1BDDLL)) & 0x1670BE0D5A4B0816;
  v316 = v315 ^ 0x121082054A490811;
  v317 = (v315 ^ 0x601C0810000000) & (4 * v314) ^ v314;
  v318 = ((4 * v316) ^ 0x59C2F835692C205CLL) & v316 ^ (4 * v316) & 0x1670BE0D5A4B0814;
  v319 = (v318 ^ 0x1040B80548080000) & (16 * v317) ^ v317;
  v320 = ((16 * (v318 ^ 0x630060812430803)) ^ 0x670BE0D5A4B08170) & (v318 ^ 0x630060812430803) ^ (16 * (v318 ^ 0x630060812430803)) & 0x1670BE0D5A4B0810;
  v321 = (v320 ^ 0x600A00500000000) & (v319 << 8) ^ v319;
  v322 = (((v320 ^ 0x10701E085A4B0807) << 8) ^ 0x70BE0D5A4B081700) & (v320 ^ 0x10701E085A4B0807) ^ ((v320 ^ 0x10701E085A4B0807) << 8) & 0x1670BE0D5A4B0000;
  v323 = v321 ^ 0x1670BE0D5A4B0817 ^ (v322 ^ 0x10300C084A080000) & (v321 << 16);
  v324 = v313 ^ (2 * ((v323 << 32) & 0x1670BE0D00000000 ^ v323 ^ ((v323 << 32) ^ 0x5A4B081700000000) & (((v322 ^ 0x640B20510430817) << 16) & 0x1670BE0D00000000 ^ 0x70A40400000000 ^ (((v322 ^ 0x640B20510430817) << 16) ^ 0x3E0D5A4B00000000) & (v322 ^ 0x640B20510430817))));
  v325 = (v324 ^ 0xE9C5AEB6ACLL) & (v301 ^ 0x10517E8655BCLL);
  v326 = v310 & 0x1000000;
  v327 = (v295 >> 61) ^ (v295 >> 39) ^ v295 ^ 0xA4E68428C8860B13 ^ (8 * (v295 ^ 0xA4E68428C8860B13)) ^ ((v295 ^ 0xA4E68428C8860B13) << 25);
  v328 = ((v327 & 0x100) + 0x62EE8FC6B656B3ABLL) ^ (v327 & 0x100 | 0xD50AEFB4B59AB26BLL) ^ ((v327 & 0x100 ^ 0xD9FA381D21F689A0) + 0x5B12B7B994A623F3);
  *(&v305 + 1) = ~v305;
  v329 = (v324 ^ 0x7829FD7938EEA18FLL) & (v301 ^ 0xFFFFEFAE8179AA43);
  v330 = v305 ^ 0xB21DD2623B79010ALL ^ (v305 >> 1) ^ __ROR8__(v305 ^ 0xB21DD2623B79010ALL, 6);
  *&v305 = __ROR8__(v311, 15);
  v331 = v326 ^ 0xD7103E4C4FF03879 ^ v305;
  v332 = (((v328 - 0x6CD83BEDDA58FCB3) ^ 0x628BFE6541FE7F3) - 0x1038EC508EE84953) ^ (v328 - 0x6CD83BEDDA58FCB3) ^ (((v328 - 0x6CD83BEDDA58FCB3) ^ 0xA669F14546978583) + 0x4F865D0C639FD4DDLL) ^ (((v328 - 0x6CD83BEDDA58FCB3) ^ 0x8527FA5F22E917A6) + 0x6CC8561607E146FALL) ^ (((v328 - 0x6CD83BEDDA58FCB3) ^ 0x3376E74AEA96DB76) - 0x2566B4FC306175D6);
  v333 = (v332 ^ 0x161053B6DAF7AEA0) & (v330 ^ 0xD4CABED593483300) ^ v332 & 0x3B42A559CB257D29;
  v334 = (((v305 ^ 0x835142A589BA80A5) - 0x4205122B9BEA53DALL) ^ ((v305 ^ 0x70E4E38798F596BLL) + 0x39A5E149942075ECLL) ^ ((v305 ^ 0xBDA307B451BB1E86) - 0x7CF7573A43EBCDF9)) - (((v326 ^ 0x7D8FEEF3235EE35CLL) + 0x25E16204F2E2CE97) ^ (v326 + 0x6170EF0811C1B1F5) ^ ((v326 ^ 0xF968DB8C434008C3) - 0x5EF9A8846D03DAF6)) - 0x7705169650EC9902;
  v335 = v334 ^ ((v334 ^ 0x8F5842A0689A3323) + 0x4743BD95BE1CE821) ^ ((v334 ^ 0xC1C3A67183EB447ELL) + 0x9D85944556D9F7ELL) ^ ((v334 ^ 0x578083603FF7AF5ELL) - 0x606483AA168E8BA2) ^ ((v334 ^ 0x2EFF677BFDFFFCFFLL) - 0x191B67B1D486D803) ^ 0xD90835AFC707DBCDLL;
  if ((v305 & v326 ^ (v326 | 0x14040520A0802E08)) == 0x14040520A0802E08)
  {
    v335 = v331;
  }

  v336 = v312 ^ 0x13F933E72FDD16BCLL ^ v335;
  v337 = v294 ^ 0xF0BDCF2826353EADLL ^ (v294 >> 17) ^ __ROR8__(v294 ^ 0xF0BDCF2826353EADLL, 10) ^ ((v294 ^ 0xF0BDCF2826353EADLL) << 47);
  v338 = v337 ^ 0x69256ACECF2B6BC1;
  v339 = 0x98F8E35B904859F3 - v328;
  if (v333 == 0x12000110CA252C20)
  {
    v339 = v328 - 0x6CD83BEDDA58FCB3;
  }

  v340 = (((v330 ^ 0x44768458541D74DALL) - 0x7025AF34F7A5D9B2) ^ ((v330 ^ 0xD4B4267AC7AEBD04) + 0x1F18F2E99BE9EF94) ^ ((v330 ^ 0x7F4AB9AECBDE87F7) - 0x4B1992C268662A9FLL)) - 0x1AE0E03CD9A51B10 + v339;
  v341 = (v340 ^ 0xE02B3844F8936F25) & (2 * (v340 & 0xE0ABBD66FA834FB1)) ^ v340 & 0xE0ABBD66FA834FB1;
  v342 = ((2 * (v340 ^ 0xA12F12CD9D976227)) ^ 0x83095F56CE285B2CLL) & (v340 ^ 0xA12F12CD9D976227) ^ (2 * (v340 ^ 0xA12F12CD9D976227)) & 0x4184AFAB67142D96;
  v343 = v342 ^ 0x4084A0A921142492;
  v344 = (v342 ^ 0x1000F0246000904) & (4 * v341) ^ v341;
  v345 = ((4 * v343) ^ 0x612BEAD9C50B658) & v343 ^ (4 * v343) & 0x4184AFAB67142D90;
  v346 = (v345 ^ 0xAEA904102410) & (16 * v344) ^ v344;
  v347 = ((16 * (v345 ^ 0x4184010263040986)) ^ 0x184AFAB67142D960) & (v345 ^ 0x4184010263040986) ^ (16 * (v345 ^ 0x4184010263040986)) & 0x4184AFAB67142D80;
  v348 = (v347 ^ 0xAAA261000900) & (v346 << 8) ^ v346;
  v349 = (((v347 ^ 0x4184050906142496) << 8) ^ 0x84AFAB67142D9600) & (v347 ^ 0x4184050906142496) ^ ((v347 ^ 0x4184050906142496) << 8) & 0x4184AFAB67142400;
  v350 = v348 ^ 0x4184AFAB67142D96 ^ (v349 ^ 0x84AB2304040000) & (v348 << 16);
  v351 = v340 ^ (2 * ((v350 << 32) & 0x4184AFAB00000000 ^ v350 ^ ((v350 << 32) ^ 0x67142D9600000000) & (((v349 ^ 0x4100048863102996) << 16) & 0x4184AFAB00000000 ^ 0x400488AB00000000 ^ (((v349 ^ 0x4100048863102996) << 16) ^ 0x2FAB671400000000) & (v349 ^ 0x4100048863102996))));
  v352 = v351 ^ v327 & 0xFFFFFFFFFFFFFEFFLL;
  v353 = (v306 << 57) ^ (v306 << 23) ^ __ROR8__(v336, 49);
  v354 = v301 & 0x26F02BFE8DCLL ^ (v297 >> 28) ^ v353 ^ 0x9FFCDED145C6160BLL ^ v325 ^ v329;
  v355 = v354 ^ v327 & 0xCC2A925B481CD8C8 ^ (v351 ^ 0x2D802B6F7CB7CC55) & (v327 ^ 0x25E1D3A08C73401CLL);
  v356 = v353 ^ 0x9FFCDED145C6160BLL ^ v338;
  v357 = ((v327 ^ 0xBA9C546C1E0BBDA5) + 0x619D6281CAC869) ^ ((v327 ^ 0xFB9796EAEC911103) + 0x416A5FE4735064CFLL) ^ ((v327 ^ 0x9B15EED981161345) + 0x21E827D71ED76689);
  v358 = ((v355 ^ 0xD943053ADD269C82) + 0x3104B6A09B57E402) ^ ((v355 ^ 0xA174FC1A17E38900) + 0x49334F805192F184) ^ ((v355 ^ 0x9336CC1CB3D08A8BLL) + 0x7B717F86F5A1F209);
  v359 = v356 ^ v327 & 0x4C30CF2E8365E48ELL ^ (v354 ^ 0x5CEE97ED0D9FC470) & (v327 ^ 0xDA1E2C5F738CBFE3);
  v360 = 0x1007F3B624BA1127 - (((v355 ^ 0xCAD9D3F028BB7AFALL) - 0x6747189697BA3306) ^ ((v355 ^ 0xE96AF9469DF0929) + 0x5CF79B0D2921BF2BLL) ^ ((v355 ^ 0x2A900626199635D6) + 0x78F132BF596883D6));
  v361 = (v360 ^ 0xB2C20A035438A7E9) & (2 * (v360 & 0xB294AAA3153AB7ECLL)) ^ v360 & 0xB294AAA3153AB7ECLL;
  v362 = ((2 * (v360 ^ 0xD6E34F055C0CE5E1)) ^ 0xC8EFCB4C926CA41ALL) & (v360 ^ 0xD6E34F055C0CE5E1) ^ (2 * (v360 ^ 0xD6E34F055C0CE5E1)) & 0x6477E5A64936520CLL;
  v363 = v362 ^ 0x241024A249125205;
  v364 = (v362 ^ 0x4067C10400240000) & (4 * v361) ^ v361;
  v365 = ((4 * v363) ^ 0x91DF969924D94834) & v363 ^ (4 * v363) & 0x6477E5A64936520CLL;
  v366 = (v365 ^ 0x57848000104000) & (16 * v364) ^ v364;
  v367 = ((16 * (v365 ^ 0x6420612649261209)) ^ 0x477E5A64936520D0) & (v365 ^ 0x6420612649261209) ^ (16 * (v365 ^ 0x6420612649261209)) & 0x6477E5A649365200;
  v368 = (v367 ^ 0x4476402401240000) & (v366 << 8) ^ v366;
  v369 = (((v367 ^ 0x2001A5824812520DLL) << 8) ^ 0x77E5A64936520D00) & (v367 ^ 0x2001A5824812520DLL) ^ ((v367 ^ 0x2001A5824812520DLL) << 8) & 0x6477E5A649365000;
  v370 = v368 ^ 0x6477E5A64936520DLL ^ (v369 ^ 0x6465A40000120000) & (v368 << 16);
  v371 = (v370 << 32) & 0x6477E5A600000000 ^ v370 ^ ((v370 << 32) ^ 0x4936520D00000000) & (((v369 ^ 0x1241A64924520DLL) << 16) & 0x6477E5A600000000 ^ 0x51A48000000000 ^ (((v369 ^ 0x1241A64924520DLL) << 16) ^ 0x65A6493600000000) & (v369 ^ 0x1241A64924520DLL));
  v372 = 0x82BE27673191EF52 - (((v355 ^ 0x947600138AF34817) + 0x7C31B389CC823095) ^ ((v355 ^ 0x4CB60D63A65D5EABLL) - 0x5B0E41061FD3D9D7) ^ ((v355 ^ 0x33C1384C55BB89B5) - 0x24797429EC350EC9));
  v373 = (v352 ^ 0xC44B6A94B8D85581) & (v337 ^ 0x14868CB316BD895ELL);
  v374 = v372 ^ v355 ^ v360 ^ ((v372 ^ 0x6DFF6EF9BC3F55F9) - 0x1288CE394E12523ELL) ^ ((v372 ^ 0x595B37321B0462F9) - 0x262C97F2E929653ELL) ^ ((v372 ^ 0x1C292EF2CADA932CLL) - 0x635E8E3238F794EBLL) ^ ((v372 ^ 0x57FAD7F99FCCA3EBLL) - 0x288D77396DE1A42CLL) ^ (2 * v371);
  v375 = (((v374 ^ 0xCA9388880540517FLL) + 0x5F750D231971693BLL) ^ ((v374 ^ 0xBF79683F1A949673) + 0x2A9FED9406A5AE37) ^ ((v374 ^ 0x1B8B94AC13BA4C34) - 0x7192EEF8F0748B8ELL)) + 0x7CCE891708182123;
  v376 = (v375 ^ 0xC95782A6E5610762) & (2 * (v375 & 0x8D87D4B70970046BLL)) ^ v375 & 0x8D87D4B70970046BLL;
  v377 = ((2 * (v375 ^ 0xD8508BE6E54107E0)) ^ 0xABAEBEA3D8620716) & (v375 ^ 0xD8508BE6E54107E0) ^ (2 * (v375 ^ 0xD8508BE6E54107E0)) & 0x55D75F51EC31038ALL;
  v378 = v377 ^ 0x5451415024110089;
  v379 = (v377 ^ 0x6160048000300) & (4 * v376) ^ v376;
  v380 = ((4 * v378) ^ 0x575D7D47B0C40E2CLL) & v378 ^ (4 * v378) & 0x55D75F51EC310388;
  v381 = (v380 ^ 0x55555D41A0000200) & (16 * v379) ^ v379;
  v382 = ((16 * (v380 ^ 0x8202104C310183)) ^ 0x5D75F51EC31038B0) & (v380 ^ 0x8202104C310183) ^ (16 * (v380 ^ 0x8202104C310183)) & 0x55D75F51EC310380;
  v383 = (v382 ^ 0x55555510C0100000) & (v381 << 8) ^ v381;
  v384 = (((v382 ^ 0x820A412C21030BLL) << 8) ^ 0xD75F51EC31038B00) & (v382 ^ 0x820A412C21030BLL) ^ ((v382 ^ 0x820A412C21030BLL) << 8) & 0x55D75F51EC310300;
  v385 = v383 ^ 0x55D75F51EC31038BLL ^ (v384 ^ 0x5557514020010000) & (v383 << 16);
  v386 = (v354 ^ 0xEF21A73C7105DF01) & (v356 ^ 0x8545B98E0BF5806CLL);
  v387 = v375 ^ v359 ^ (2 * ((v385 << 32) & 0x55D75F5100000000 ^ v385 ^ ((v385 << 32) ^ 0x6C31038B00000000) & (((v384 ^ 0x800E11CC30008BLL) << 16) & 0x55D75F5100000000 ^ 0x86134000000000 ^ (((v384 ^ 0x800E11CC30008BLL) << 16) ^ 0x5F51EC3100000000) & (v384 ^ 0x800E11CC30008BLL))));
  v388 = v387 ^ 0x77F73AE043522707;
  v389 = v354 & 0x87704B7BADFFD5A9 ^ 0x7E8BFFD45969D82ELL ^ (v354 ^ 0xEF21A73C7105DF01) & (v327 ^ 0x5D6E6724DE736A4ALL);
  v390 = (v356 ^ 0x6DFFEFAF755FEC63) & (v337 ^ 0x7E26140CB58CAFA7) ^ v337 & 0x8846FBE7FB93A926;
  v391 = (((v353 ^ 0x609E54F7D174D278) - 0x43C9D4DBF9CAEE68) ^ ((v353 ^ 0xC40B128670F28B1FLL) + 0x18A36D55A7B348F1) ^ ((v353 ^ 0xC9D3F22A102BCE4FLL) + 0x157B8DF9C76A0DA1)) + 0x1346ACF397F2CB96 + (((v390 ^ 0x927B20BABB8379FALL) - 0x3E0ECA36153DC590) ^ ((v390 ^ 0xF455CB329567B8A2) - 0x582021BE3BD904C8) ^ ((v390 ^ 0x6E28FB8C9F64687ELL) + 0x3DA2EEFFCE252BECLL));
  v392 = v387 ^ 0xC016F37AD575C7DCLL;
  v393 = v357 - ((((4 * v389) ^ 0x6313D8ACB9824E2ELL) + 0x26CBD4C8AE73CFFFLL) ^ (((4 * v389) ^ 0x934204A236A21C54) - 0x2965F739DEAC627BLL) ^ (((4 * v389) ^ 0x16FE2FBF6E9066C6) + 0x532623DB7961E717)) + ((((2 * v389) ^ 0x65EC089CDC5A2312) - 0x249F3CB914ACF27) ^ (((2 * v389) ^ 0xBB96225DCAF22C77) + 0x23CC26F5781D3FBELL) ^ (((2 * v389) ^ 0x2D2DD319E670153BLL) - 0x4A88284EAB60F90ELL)) + 0x6D63E8DC0082D150 + v358;
  v394 = (v393 ^ 0x46D3A9C187D50AEELL) & (2 * (v393 & 0x66DBAD9187D528CELL)) ^ v393 & 0x66DBAD9187D528CELL;
  v395 = ((2 * (v393 ^ 0x7F4B3E183D51A66)) ^ 0xC25E3CE008006550) & (v393 ^ 0x7F4B3E183D51A66) ^ (2 * (v393 ^ 0x7F4B3E183D51A66)) & 0x612F1E70040032A8;
  v396 = v395 ^ 0x21210210040012A8;
  v397 = (v395 ^ 0xE1C4000002000) & (4 * v394) ^ v394;
  v398 = ((4 * v396) ^ 0x84BC79C01000CAA0) & v396 ^ (4 * v396) & 0x612F1E70040032A8;
  v399 = (v398 ^ 0x2C1840000002A0) & (16 * v397) ^ v397;
  v400 = ((16 * (v398 ^ 0x6103063004003008)) ^ 0x12F1E70040032A80) & (v398 ^ 0x6103063004003008) ^ (16 * (v398 ^ 0x6103063004003008)) & 0x612F1E7004003280;
  v401 = v399 ^ 0x612F1E70040032A8 ^ (v400 ^ 0x21060000002200) & (v399 << 8);
  v402 = ((v400 ^ 0x610E187004001028) << 8) & 0x612F1E7004003000 ^ 0x40210E70040012A8 ^ (((v400 ^ 0x610E187004001028) << 8) ^ 0x2F1E70040032A800) & (v400 ^ 0x610E187004001028);
  v403 = (v401 << 16) & 0x612F1E7004000000 ^ v401 ^ ((v401 << 16) ^ 0x1E70040032A80000) & v402;
  v404 = (v387 ^ 0xC016F37AD575C7DCLL) << 45;
  v405 = (v403 << 32) & 0x612F1E7000000000 ^ v403 ^ ((v403 << 32) ^ 0x40032A800000000) & ((v402 << 16) & 0x612F1E7000000000 ^ 0x610F1A7000000000 ^ ((v402 << 16) ^ 0x1E70040000000000) & v402);
  v406 = (v387 ^ 0x77F73AE043522707) & 0x2C8BA65047FCDCFFLL ^ 0x497BE5D2E543C738 ^ (v404 ^ 0x37D899AFB8032300) & (v387 ^ 0xFC5D8DBFE5FD5181);
  v407 = v404 ^ v387 ^ 0xC016F37AD575C7DCLL ^ v406;
  v408 = v391 ^ v353 ^ ((v391 ^ 0xA110B379CBECCC81) + 0x7E2E3175EBB2386DLL) ^ ((v391 ^ 0xC5FB8C48C7B5EB41) + 0x1AC50E44E7EB1FADLL) ^ ((v391 ^ 0x2FD5177C2431E10ALL) - 0xF146A8FFB90EA18) ^ ((v391 ^ 0x6BFF55BEF7C9CDD8) - 0x4B3E284D2868C6CALL);
  v409 = (v407 ^ 0x1010DD47D36705E3) & (((v387 ^ 0x77F73AE043522707uLL) >> 19) ^ 0x7458DA8B168BAF3ELL) ^ v407 & 0x7458D401BF5DACCFLL;
  v410 = v354 & 0x9F0352397AC63AD6;
  v411 = v373 ^ v352 & 0x955F67405CCED906 ^ v393 ^ (2 * v405);
  v412 = v352 ^ __ROR8__(__ROR8__(v408 ^ 0xEE7477D6F3BC3C77, 23) ^ 0xC1E6FB8839437F49, 41);
  v413 = v411 ^ 0x259AA6D7443C0D0FLL;
  v414 = 2 * v409;
  v415 = ((v407 ^ 0x96C0A7C91CBC31) + 0x3C8007EAF65FEDF1) ^ ((v407 ^ 0x8222B81A488FCA3CLL) - 0x41CB80A888336402) ^ ((v407 ^ 0x1BA285FA52F473EELL) + 0x27B442B76DB72230);
  v416 = v410 ^ v338 ^ v386 ^ v412 ^ 0x56E89A6327DE72BDLL;
  if (v416 >= 0xF0C94E464548BF7BLL)
  {
    v417 = v416 + 0xF36B1B9BAB74085;
  }

  else
  {
    v417 = v416;
  }

  if (v416 >= 0xF0C94E464548BF7BLL)
  {
    v418 = 0xF0C94E464548BF7BLL;
  }

  else
  {
    v418 = 0;
  }

  v303 = v417 == 0;
  v419 = ((((v388 >> 19) ^ 0x17F59FC1FDECFE5BLL) - 0x1A2F0D5D0CDE8CD3) ^ (((v388 >> 19) ^ 0xF5B437C69BECBCD7) + 0x7915AA5952131A1) ^ (((v388 >> 19) ^ 0xE241A68DCFD6417DLL) + 0x1064CBEEC11BCC0BLL)) + v415 - (((v414 ^ 0xFFBB203B52393DD2) + 0x4E0F9113E430C064) ^ ((v414 ^ 0x1F9F8451E38C6B20) - 0x51D4CA86AA7A696ELL) ^ ((v414 ^ 0xC0050C69973F5F74) + 0x71B1BD412136A2C6)) + 0x5D0D1BF945320545;
  v420 = (v419 ^ 0x1C615EB93048A90CLL) & (2 * (v419 & 0x9D625F3DB8120C49)) ^ v419 & 0x9D625F3DB8120C49;
  v421 = ((2 * (v419 ^ 0x2C65F0D12048A90CLL)) ^ 0x620F5FD930B54A8ALL) & (v419 ^ 0x2C65F0D12048A90CLL) ^ (2 * (v419 ^ 0x2C65F0D12048A90CLL)) & 0xB107AFEC985AA544;
  v422 = v421 ^ 0x9100A024884AA545;
  v423 = (v421 ^ 0x20030DC800100000) & (4 * v420) ^ v420;
  v424 = ((4 * v422) ^ 0xC41EBFB2616A9514) & v422 ^ (4 * v422) & 0xB107AFEC985AA544;
  v425 = (v424 ^ 0x8006AFA0004A8500) & (16 * v423) ^ v423;
  v426 = ((16 * (v424 ^ 0x3101004C98102041)) ^ 0x107AFEC985AA5450) & (v424 ^ 0x3101004C98102041) ^ (16 * (v424 ^ 0x3101004C98102041)) & 0xB107AFEC985AA540;
  v427 = (v426 ^ 0x1002AEC8800A0400) & (v425 << 8) ^ v425;
  v428 = (((v426 ^ 0xA10501241850A105) << 8) ^ 0x7AFEC985AA54500) & (v426 ^ 0xA10501241850A105) ^ ((v426 ^ 0xA10501241850A105) << 8) & 0xB107AFEC985AA500;
  v429 = v427 ^ 0xB107AFEC985AA545 ^ (v428 ^ 0x107AC8818000000) & (v427 << 16);
  v430 = (v429 << 32) & 0x3107AFEC00000000 ^ v429 ^ ((v429 << 32) ^ 0x185AA54500000000) & (((v428 ^ 0xB0000364805AA045) << 16) & 0x3107AFEC00000000 ^ 0x100327A400000000 ^ (((v428 ^ 0xB0000364805AA045) << 16) ^ 0x2FEC985A00000000) & (v428 ^ 0xB0000364805AA045));
  v431 = (((v413 << 25) ^ 0xB34A56073F59C7E2) & ((v411 >> 61) ^ (v411 >> 39) ^ 0xFFFFFFFFFE6565E9) | ((v411 >> 61) ^ (v411 >> 39)) & 0xA6381D) ^ (8 * v411);
  v432 = v431 ^ 0x40D07039BE850C36;
  v433 = (v431 ^ 0x40D07039BE850C36) & 0x2ACBA3C48907507CLL ^ v431 & 8;
  if (!v303)
  {
    v418 = v416;
  }

  v434 = (v432 - 2 * v433 - 0x55345C3B76F8AF8CLL) ^ v413;
  v435 = v359 ^ 0xC80C967BA39EBB7DLL;
  v436 = (v419 ^ (v388 >> 28) ^ (2 * v430) ^ 0xDF684A6BCDF3ADC2) - 2 * ((v419 ^ (v388 >> 28) ^ (2 * v430) ^ 0xDF684A6BCDF3ADC2) & 0x1EB0EFB4648C8A41 ^ (v419 ^ (v388 >> 28) ^ (2 * v430)) & 1) + 0x1EB0EFB4648C8A40;
  v437 = (v436 ^ (v392 << 36) ^ 0x8442B9D4648C8A40) - 2 * ((v436 ^ (v392 << 36) ^ 0x8442B9D4648C8A40) & 0x3E0EBA6D5AC820A5 ^ v436 & 0x20) - 0x41F14592A537DF7BLL;
  v438 = v412 ^ 0x10965DCD27407B89 ^ ((v412 ^ 0x10965DCD27407B89) << 58) ^ ((v412 ^ 0x10965DCD27407B89) >> 1) ^ (((v412 ^ 0x10965DCD27407B89) >> 6) | (~v412 << 63));
  v439 = v434 ^ v438;
  v440 = (((v359 ^ 0xC80C967BA39EBB7DLL) << 23) ^ ((v359 ^ 0xC80C967BA39EBB7DLL) << 57) ^ ((v359 ^ 0xC80C967BA39EBB7DLL) >> 7) ^ ((v359 ^ 0xC80C967BA39EBB7DLL) >> 41)) & 0xFFFFFFFFFFFFFFF7;
  v441 = (((v359 ^ 0xC80C967BA39EBB7DLL) >> 7) ^ ((v359 ^ 0xC80C967BA39EBB7DLL) >> 41)) & 8;
  v442 = v416 ^ (v416 >> 10) ^ (v418 << 47) ^ ((v418 >> 17) | (v418 << 54));
  if ((v441 & ~v359) != 0)
  {
    v443 = -v441;
  }

  else
  {
    v443 = (((v359 ^ 0xC80C967BA39EBB7DLL) >> 7) ^ ((v359 ^ 0xC80C967BA39EBB7DLL) >> 41)) & 8;
  }

  v444 = (v443 + v435) ^ v440;
  v445 = v406 ^ v444 ^ v437;
  v446 = v442 ^ v444;
  v447 = v445 ^ v438 & ~v434;
  v448 = v445 & ~(v442 ^ v444);
  v449 = v434 & ~v445;
  v450 = v449 ^ v442 ^ v444;
  v451 = __ROR8__(__ROR8__(v439 ^ v444 & ~v442, 61) ^ 0x69D0C657AF8B935FLL, 3);
  v452 = v450 ^ 0x4000107807058445 ^ (__ROR8__(__ROR8__(v447 & 0xB75F4B83F0FA3BA2, 33) ^ 0xD6B0836D66872A3BLL, 31) ^ 0xC84756F5AD133E5ALL | v447 & 0x48A0B47C0F05C45DLL);
  v453 = v451 ^ 0xD2B0D0ED0F53AC86;
  v454 = (v451 ^ 0xD2B0D0ED0F53AC86) >> 1;
  v455 = v434 ^ v442 & ~v439 ^ 0x9C07CA73BDD7AC35 ^ v447;
  v456 = 0x2000000000;
  if (((v451 ^ 0xD2B0D0ED0F53AC86) & 0x2000000000) != 0)
  {
    v456 = 0xFFFFFFE000000000;
  }

  v303 = v446 == v449;
  v457 = __ROR8__(__ROR8__(v456 + v453, 28) ^ 0x40801040C0500004, 36) ^ 0xC05000044080104;
  v458 = v450 ^ 0x98A7F25D5D85E477;
  v459 = (v453 & 0x32A25F7FB06774F3 ^ -(v453 & 0x32A25F7FB06774F3) ^ ((v454 & 0x32A25F7FB06774F3) - (v454 & 0x32A25F7FB06774F3 ^ v453 & 0x32A25F7FB06774F3))) + (v454 & 0x32A25F7FB06774F3);
  if (v303)
  {
    v457 = v451 ^ 0xD2B0D0ED0F53AC86;
  }

  v460 = v442 ^ v451 ^ 0x56FCAD272DF7449CLL ^ v448;
  v461 = (v458 >> 7) & 0x1D6D33D1E09950ALL ^ (v450 ^ 0x98A7F25D5D85E477) & 0x37D6D33D1E09950ALL;
  v462 = v457 & 0xCD5DA0804F988B0CLL ^ v454 & 0x4D5DA0804F988B0CLL;
  v463 = v450 ^ 0x8821204041846075;
  v464 = v455 ^ (8 * v455) ^ ((v455 >> 61) ^ (v455 >> 39) | (v455 << 25));
  if (v408 == 0xDA932D7610CB8787)
  {
    v465 = v458;
  }

  else
  {
    v465 = v463;
  }

  v466 = (v462 | v459) ^ (((v453 << 58) ^ (v451 << 63)) & 0xFC00000000000000 | (v453 >> 6));
  v467 = (((v458 << 23) ^ (-8388608 * v458) ^ ((v458 << 57) - ((v458 << 23) ^ (v458 << 57)))) + (v458 << 57)) ^ (v461 | v465 & 0xC8292CC2E1F66AF5 ^ (v458 >> 7) & 0x292CC2E1F66AF5);
  v468 = __ROR8__(v467 & 0x45A84F7F7C7D23D5, 49);
  v469 = __ROR8__((v468 ^ 0x34DB6FBEBC86628FLL) & 0x36451A1EBC8C200ALL ^ (v458 >> 41 << 15) & 0x1E90880000 | (v468 ^ 0x34DB6FBEBC86628FLL) & 0x1BAE5A00162C2D5 ^ (v458 >> 41 << 15) & 0x2001628000, 15) ^ 0xC51E69B6DF7D790CLL | v467 & 0xBA57B0808382DC2ALL ^ (v458 >> 41) & 0x2DC2A;
  v470 = v452 ^ __ROR8__(v452, 19) ^ (v452 << 36) ^ (v452 >> 28) ^ v469;
  v471 = v470 ^ v466 & ~v464 ^ 0x8718214F2285EBCALL ^ v464 & ~v470 ^ v469 ^ v460 ^ (v460 << 47) ^ ((v460 >> 17) ^ (v460 >> 10) | (v460 << 54));
  v472 = __ROR8__(v471, 28);
  return (*(v9 + 8 * ((486 * (((STACK[0xEC8] + 1 - v7) | (v7 - (STACK[0xEC8] + 1))) >> 63)) ^ (v7 - 901287542))))(((v471 >> 19) & 0xB63E9D43A0FLL ^ v471 & 0x6F340B63E9D43A0FLL | (v471 >> 19) & 0x149C162BC5F0 ^ v471 & 0x90CBF49C162BC5F0) ^ (v471 << 45) ^ (v472 - ((2 * v472) & 0x6314C68DFCA99B66) + 0x318A6346FE54CDB3) ^ 0xBC456C53957F5BCCLL);
}

uint64_t sub_100917128@<X0>(uint64_t a1@<X8>)
{
  *(v4 + 1272) = a1;
  LODWORD(STACK[0x43C]) = v2;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_100917308@<X0>(unsigned int a1@<W8>)
{
  v10 = v5 < v6;
  *(v8 + a1) = *(v3 + (a1 & 0xF)) ^ *(v1 + a1) ^ *((a1 & 0xF) + v4 + 5) ^ (9 * (a1 & 0xF)) ^ *(v2 + (a1 & 0xF));
  if (v10 == a1 + 1 > 0x61D6BE2F)
  {
    v10 = ((v7 - 19352) ^ 0x9E297E48) + a1 < v5;
  }

  return (*(v9 + 8 * ((8295 * v10) ^ v7)))();
}

uint64_t sub_100919370(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, unsigned int a34)
{
  v34 = a34 < 0x6F018200;
  v35 = (((a6 - 6869) | 0x152C) ^ 0x62FF8E31) + a4;
  v36 = v34 ^ (v35 < 0x6F018200);
  v37 = a34 > v35;
  if (!v36)
  {
    v34 = v37;
  }

  return (*(STACK[0xED8] + 8 * ((32429 * v34) ^ a6)))();
}

uint64_t sub_1009193F0@<X0>(uint64_t a1@<X8>)
{
  v5[138] = v1;
  LODWORD(STACK[0x7C8]) = v3;
  v5[73] = a1;
  v5[160] = 0;
  LODWORD(STACK[0x65C]) = -371865839;
  v5[89] = 0x367D22279A98EC4ELL;
  v5[116] = 0;
  v6 = (*(v4 + 8 * (v2 ^ 0xA05)))(16);
  STACK[0x4D0] = v6;
  return (*(v4 + 8 * (((v6 == 0) * (13 * (v2 ^ 0xCAE3) - 34867)) ^ v2)))();
}

uint64_t sub_100919524@<X0>(unint64_t a1@<X8>)
{
  v7 = (v5 - 18945) | 0xA229;
  v8 = a1 + v4;
  v9 = (((v7 + 2062501312) & 0x8D3655FF) - 136730092) & (v4 + 15);
  v10 = ((32 * v7) ^ 0x173D80u) - v4 - 31455 + v9;
  v11 = v3 + v10;
  v12 = v3 + v9 + 1;
  v13 = v1 + v10;
  v14 = v1 + v9 + 1;
  v15 = v9 + v2 + 5;
  v17 = v12 > a1 && v11 < v8;
  v19 = v14 > a1 && v13 < v8 || v17;
  if (v15 <= a1 || v15 - v4 >= v8)
  {
    v21 = v19;
  }

  else
  {
    v21 = 1;
  }

  return (*(v6 + 8 * ((185 * v21) ^ v7)))();
}

uint64_t sub_10091964C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x6CC5)))(128);
  STACK[0x650] = v2;
  return (*(v1 + 8 * (((v2 != 0) * (((v0 - 33117) | 0x5D) - 9563)) | v0)))();
}

uint64_t sub_1009196A8@<X0>(uint64_t a1@<X8>, uint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  v8 = v6 - 29445;
  v9 = 297845113 * (&a3 ^ 0x77331C9E);
  a5 = a1;
  a3 = (v5 ^ ((v5 ^ 0x6EF7DD45) - 162368153) ^ ((v5 ^ 0x70E6A03D) - 398260193) ^ ((v5 ^ 0xEBBF777F) + 1931140957) ^ ((v8 ^ 0xA51CCC1) + (v5 ^ 0x92F45DDB)) ^ 0x19D49B68) + v9;
  a4 = v8 - v9 + 7620;
  v10 = (*(v7 + 8 * (v8 + 37425)))(&a3);
  return (*(v7 + 8 * v8))(v10);
}

uint64_t sub_1009197DC()
{
  v2 = STACK[0xB10] - 0x221DA9F0F1EA521CLL + (((v0 ^ 0x91498F6F76463AF4) + 0x6EB6709089B9C50CLL) ^ ((v0 ^ 0xCB69D34DE182EF24) + 0x34962CB21E7D10DCLL) ^ ((v0 ^ 0x5A205C227E1112C1) - 0x5A205C227E1112C1)) + 0x10DF3EB76;
  v3 = STACK[0xB08] - 0x33873128AFEBA1AFLL;
  v4 = v2 < 0x241E2465;
  v5 = v2 > v3;
  if (v3 < 0x241E2465 != v4)
  {
    v5 = v4;
  }

  return (*(v1 + 8 * (((8 * !v5) | (!v5 << 6)) ^ (STACK[0x318] - 9518))))();
}

uint64_t sub_100919934(char a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int8x16_t a7, int8x8_t a8)
{
  v14.val[0].i64[0] = (v11 + a4 - 1) & 0xF;
  v14.val[0].i64[1] = (v11 + a4 + 14) & 0xF;
  v14.val[1].i64[0] = (a1 + a4) & 0xF;
  v14.val[1].i64[1] = (v11 + a4 + 12) & 0xF;
  v14.val[2].i64[0] = (v11 + a4 + 11) & 0xF;
  v14.val[2].i64[1] = (v11 + a4 + 10) & 0xF;
  v14.val[3].i64[0] = (v11 + a4 + 9) & 0xF;
  v14.val[3].i64[1] = (v11 + a4) & 0xF ^ 8;
  *(a5 + a4) = veor_s8(veor_s8(veor_s8(*(v8 + v14.val[0].i64[0] - 7), *(a5 + a4)), veor_s8(*(v14.val[0].i64[0] + v10 - 2), *(v14.val[0].i64[0] + v9 - 3))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v14, a7), a8)));
  return (*(v12 + 8 * (((a3 == a4) * a6) ^ a2)))();
}

uint64_t sub_100919A94@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 + 904);
  *(v2 + 1000) = *(v1 + 8 * a1);
  return (*(v1 + 8 * (a1 ^ 0x978D ^ (a1 + 42478))))(v3);
}

uint64_t sub_100919CF4()
{
  v3 = *(*(v2 + 1240) + 24);
  *(v2 + 1008) = v3;
  return (*(v1 + 8 * (((v3 == 0) * (((7 * (v0 ^ 0x88B4)) ^ 0xDA2) - 34816)) ^ v0)))();
}

uint64_t sub_100919D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16)
{
  a16 = v16 + 155453101 * (((&a15 | 0xA7113045) - &a15 + (&a15 & 0x58EECFB8)) ^ 0x41372B8A) + 296766525;
  a15 = v18;
  v19 = (*(v17 + 8 * (v16 ^ 0x9C07)))(&a15);
  return (*(v17 + 8 * v16))(v19);
}

uint64_t sub_100919DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, int a6@<W8>)
{
  v14 = *v7;
  v15 = *v9;
  STACK[0x1D10] = *(v13 + 8 * v11);
  STACK[0x1DE0] = v12 + 36;
  LODWORD(STACK[0x253C]) = a6;
  LODWORD(STACK[0x18E4]) = v8;
  STACK[0x1720] = v15;
  STACK[0x1A70] = v6;
  v16 = STACK[0x1428];
  v17 = &STACK[0x2720] + STACK[0x1428];
  STACK[0x1FF8] = v17;
  STACK[0x1CC0] = v17;
  STACK[0x1E80] = (v17 + 16);
  STACK[0x11E8] = (v17 + 48);
  STACK[0x1428] = v16 + 96;
  LODWORD(STACK[0x11A8]) = v14;
  STACK[0x1B30] = 0;
  STACK[0x1198] = 0;
  STACK[0x18F0] = 0;
  STACK[0x1780] = 0;
  return (*(v13 + 8 * (((v15 == 0) * (((v10 ^ 0x1833) + 1650511907) ^ 0x6260C15B ^ (94 * (v10 ^ 0x1833)))) ^ v10)))(a1, a2, a3, a4, STACK[0x808], 1864610357, a5, STACK[0x800]);
}

uint64_t sub_100919EF4()
{
  v1 = STACK[0x1E68];
  v2 = (*(v0 + 415048))(*(STACK[0x1E68] + 688));
  *(v1 + 688) = 0;
  *(v1 + 696) = -371865839;
  return (*(v0 + 248320))(v2);
}

uint64_t sub_10091A014()
{
  v1[47] = v1[15] + 25 * (v3 ^ 0x72) - ((2 * v1[15]) & 0xBF) + 39;
  v1[46] = v1[14] - ((2 * v1[14]) & 0xBF) + 95;
  v1[45] = v1[13] - ((2 * v1[13]) & 0xBF) + 95;
  v1[44] = v1[12] - ((2 * v1[12]) & 0xBF) + 95;
  v1[43] = v1[11] - ((2 * v1[11]) & 0xBF) + 95;
  v1[42] = v1[10] - ((2 * v1[10]) & 0xBF) + 95;
  v1[41] = v1[9] - ((2 * v1[9]) & 0xBF) + 95;
  v1[40] = v1[8] - ((2 * v1[8]) & 0xBF) + 95;
  v1[39] = v1[7] - ((2 * v1[7]) & 0xBF) + 95;
  v1[38] = v1[6] - ((2 * v1[6]) & 0xBF) + 95;
  v1[37] = v1[5] - ((2 * v1[5]) & 0xBF) + 95;
  v1[36] = v1[4] - ((2 * v1[4]) & 0xBF) + 95;
  v1[35] = v1[3] - ((2 * v1[3]) & 0xBF) + 95;
  v1[34] = v1[2] - ((2 * v1[2]) & 0xBF) + 95;
  v1[33] = v1[1] - ((2 * v1[1]) & 0xBF) + 95;
  *STACK[0x3D0] = *v1 - ((2 * *v1) & 0xBF) + 95;
  v4 = *(v2 + 8 * v3);
  STACK[0x3F0] = &STACK[0xBA0] + STACK[0x3E0] + v0 - 23508;
  return v4();
}

uint64_t sub_10091A240()
{
  *(v4 - 248) = *v1;
  *(v4 - 256) = v0 - 193924789 * ((2 * (v2 & 0x20644368) - v2 - 543441771) ^ 0x69208EF3) - 1590126819;
  v5 = (*(v3 + 8 * (v0 ^ 0x62601B5B)))(v4 - 256);
  return (*(v3 + 8 * ((107696 * (v0 + 213005723 >= ((v0 - 1650486789) ^ 0xB09CBA45))) ^ (v0 - 1650471911))))(v5);
}

uint64_t sub_10091A304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = STACK[0x318] - 32810;
  LODWORD(STACK[0xA0C]) = v4;
  return (*(v5 + 8 * (v6 ^ 0x2C8C)))(a1, a2, a3, a4, STACK[0x3E0]);
}

uint64_t sub_10091A330(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v11 = ((2 * (a4 - 1497668668)) & 0xE3C2F97E) + ((a4 - 1497668668) ^ 0x71E17CBF);
  v12 = (*v6 + v11 - 1910602943);
  v13 = *(*(v5 - 1680276466) + ((((a5 - 17253) | 0x852u) + 1926733477) & *(v10 - 231415367)));
  v14 = ((v13 ^ v12) & 0x7FFFFFFF) * (((a5 + 1314694509) & 0xB1A31F7F) + 1864606690);
  v15 = (v14 ^ HIWORD(v14)) * v9;
  v16 = *(v8 + 8 * (a5 ^ 0x4F95)) - 579625171;
  v17 = *(v8 + 8 * (a5 - 15656)) - 2076177714;
  v18 = *(v8 + 8 * (a5 ^ 0x4C9F)) - 1048392095;
  v19 = (*v6 + v11 - 1910602942);
  v20 = (((((v13 ^ v19) & 0x7FFFFFFF) * v9) ^ ((((v13 ^ v19) & 0x7FFFFFFF) * v9) >> 16)) * v9) >> 24;
  LOBYTE(v19) = ((((v13 ^ v19) * v9) ^ ((((v13 ^ v19) & 0x7FFFFFFF) * v9) >> 16)) * v9) ^ *v19 ^ *(v16 + v20) ^ *(v17 + v20) ^ (-83 * v20) ^ *(v20 + v18 + 5);
  LOWORD(v20) = v19 & 9;
  LODWORD(v19) = v19 | ((*(v16 + (v15 >> 24)) ^ *v12 ^ *(v17 + (v15 >> 24)) ^ *((v15 >> 24) + v18 + 5) ^ v15 ^ (-83 * (v15 >> 24))) << 8);
  return (*(v7 + 8 * ((60094 * (v19 == (2 * (v19 & 0x781F ^ v20)))) ^ a5)))();
}

uint64_t sub_10091A4F8(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  *(v11 - 152) = v7;
  *(v11 - 204) = a7;
  *(v11 - 200) = a6;
  *(v11 - 188) = a1;
  v12 = *(v10 + 8 * (((4 * (v8 - 714541991 < (a3 - 16405))) | ((v8 - 714541991 < (a3 - 16405)) << 6)) ^ a3));
  *(v11 - 212) = v9;
  return v12();
}

uint64_t sub_10091A544@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  STACK[0x520] = 0;
  STACK[0x988] = 0xB5F088764CD1869;
  return (*(v2 + 8 * ((((((v1 - 8581) ^ (v3 == 0)) & 1) == 0) * (v1 ^ 0xA9F8)) ^ v1)))();
}

uint64_t sub_10091A7A0@<X0>(uint64_t a1@<X8>)
{
  v10 = v1 < v2;
  *(a1 + v8) = *(v3 + v8) ^ *(v5 + (v8 & 0xF)) ^ *(v6 + (v8 & 0xF)) ^ (101 * (v8 & 0xF)) ^ *(v4 + (v8 & 0xF)) ^ 0x5F;
  if (v10 == v8 + 1 > 0x1E5179CD)
  {
    v10 = v8 - 508656077 < v1;
  }

  return (*(v9 + 8 * ((v10 * (v7 - 31187)) ^ v7)))((v7 + 9593));
}

uint64_t sub_10091A8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58)
{
  LODWORD(STACK[0x230]) = LODWORD(STACK[0x258]) ^ 0xFCC23AE;
  LODWORD(STACK[0x470]) = LODWORD(STACK[0x234]) + a58 + HIDWORD(a50) + 1175295232;
  LODWORD(STACK[0x234]) = HIDWORD(a51) + LODWORD(STACK[0x468]);
  HIDWORD(a51) = (v58 - 582743229) & 0x22BBE7F9;
  return (*(STACK[0x480] + 8 * v58))(v59 - 224, -438970818, a3, 845678247, 833604403, HIDWORD(a51) ^ 0x26D0u, 178863653, 3417025660, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
}

uint64_t sub_10091AA5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  if ((STACK[0xC60] & 2) != 0)
  {
    v82 = STACK[0x658];
  }

  else
  {
    v82 = STACK[0xAA8];
  }

  if ((STACK[0xC60] & 2) != 0)
  {
    v83 = STACK[0x664];
  }

  else
  {
    v83 = STACK[0x660];
  }

  v84 = STACK[0xA50];
  if ((STACK[0xDA0] & 2) != 0)
  {
    v84 = STACK[0x990];
  }

  LODWORD(STACK[0xBD0]) = v84;
  v85 = STACK[0xA40];
  LODWORD(v86) = STACK[0x9E8];
  if ((STACK[0xA40] & 1) == 0)
  {
    LODWORD(v86) = STACK[0x9D8];
  }

  v87 = STACK[0x9F0];
  if (v85)
  {
    v87 = STACK[0x9E0];
  }

  v88 = STACK[0xCE0];
  if (v85)
  {
    v88 = STACK[0xCD8];
  }

  v89 = STACK[0xC90];
  if ((v85 & 1) == 0)
  {
    v89 = STACK[0xC98];
  }

  v90 = STACK[0xE78];
  LODWORD(STACK[0x808]) = v76;
  if (v90)
  {
    v91 = STACK[0x9C0];
  }

  else
  {
    v91 = STACK[0xC50];
  }

  LODWORD(STACK[0x5F0]) = v91;
  LODWORD(v92) = STACK[0x9D0];
  if ((v90 & 1) == 0)
  {
    LODWORD(v92) = STACK[0x9C8];
  }

  LODWORD(STACK[0x5F8]) = v92;
  if ((v90 & 2) != 0)
  {
    v92 = v91;
  }

  else
  {
    v92 = v92;
  }

  STACK[0x9C8] = v92;
  v93 = STACK[0x748];
  if ((v85 & 2) == 0)
  {
    v93 = STACK[0x650];
  }

  LODWORD(STACK[0xC98]) = v93;
  v94 = STACK[0xB00];
  if ((v85 & 2) == 0)
  {
    v94 = STACK[0xA88];
  }

  LODWORD(STACK[0xCE0]) = v94;
  if ((v85 & 2) != 0)
  {
    v95 = v89;
  }

  else
  {
    v95 = v88;
  }

  LODWORD(STACK[0xD18]) = v95;
  if ((v85 & 2) == 0)
  {
    v88 = v89;
  }

  LODWORD(STACK[0xCD8]) = v88;
  if ((v85 & 2) != 0)
  {
    v96 = v87;
  }

  else
  {
    v96 = v86;
  }

  STACK[0x9C0] = v96;
  if ((v85 & 2) != 0)
  {
    v86 = v86;
  }

  else
  {
    v86 = v87;
  }

  STACK[0x9A0] = v86;
  v97 = STACK[0xC28] + STACK[0xD40];
  v98 = STACK[0xDE8];
  v99 = (v97 - ((2 * v97) & 0x6662F870) - 1288602568) ^ (LODWORD(STACK[0xDE8]) - ((2 * LODWORD(STACK[0xDE8])) & 0x6662F870) - 1288602568);
  LODWORD(STACK[0x800]) = a5;
  v100 = (608326509 * v99) >> 16;
  v101 = (((v100 ^ 0x51FD7B94) - 710766105) ^ ((v100 ^ 0x317C6DD1) - 1255962716) ^ ((v100 ^ 0x60811645) - 455148488)) + 608326509 * v99;
  LODWORD(STACK[0x7F8]) = v77;
  v102 = ((v101 - 1551173490) ^ (-2074088845 - v101) ^ (((v101 - 1551173490) ^ 0x22A63CD0) - 88924113) ^ (((v101 - 1551173490) ^ 0x1EC25636) - 958969143) ^ (((v101 - 1551173490) ^ 0xE4717618) + 1013213927)) >> 8;
  v103 = STACK[0xD58];
  v104 = 2055954765 * (LODWORD(STACK[0xD58]) + v101 - (((v102 ^ 0x613028D4) + 1478180833) ^ ((v102 ^ 0x1F1AFF8) + 953858253) ^ ((v102 ^ 0x60E66DCF) + 1506638588)));
  v105 = ((v104 - 1176416051) ^ 0xDF5DCDD4) & (2 * ((v104 - 1176416051) & 0xDC5DC994)) ^ (v104 - 1176416051) & 0xDC5DC994;
  LODWORD(STACK[0x810]) = a3;
  v106 = ((2 * ((v104 - 1176416051) ^ 0x4F445FFC)) ^ 0x26332CD0) & ((v104 - 1176416051) ^ 0x4F445FFC) ^ (2 * ((v104 - 1176416051) ^ 0x4F445FFC)) & 0x93199668;
  v107 = (v106 ^ 0x2110440) & (4 * v105) ^ v105;
  v108 = ((4 * (v106 ^ 0x91089228)) ^ 0x4C6659A0) & (v106 ^ 0x91089228) ^ (4 * (v106 ^ 0x91089228)) & 0x93199668;
  v109 = v107 ^ 0x93199668 ^ (v108 ^ 0x1020) & (16 * v107);
  v110 = (16 * (v108 ^ 0x93198648)) & 0x93199640 ^ 0x82009068 ^ ((16 * (v108 ^ 0x93198648)) ^ 0x31996680) & (v108 ^ 0x93198648);
  v111 = (v109 << 8) & 0x93199600 ^ v109 ^ ((v109 << 8) ^ 0x19966800) & v110;
  v112 = ((v104 - 1176416051) ^ (2 * ((v111 << 16) & 0x13190000 ^ v111 ^ ((v111 << 16) ^ 0x16680000) & ((v110 << 8) & 0x13190000 ^ 0x2090000 ^ ((v110 << 8) ^ 0x19960000) & v110)))) >> 16;
  v113 = v104 - 2001263623 + (((v112 ^ 0x3E03E9B3) - 1119639156) ^ ((v112 ^ 0xBFEA5AA2) + 1017780891) ^ ((v112 ^ 0x81E94F4F) + 44633976));
  v114 = (((v113 ^ 0xB4D11C3F) + 1050027584) ^ v113 ^ ((v113 ^ 0x79BB3739) - 201585350) ^ ((v113 ^ 0xF62D1146) + 2087332679) ^ ((v113 ^ 0x4EFFFF80) - 994523712)) >> 8;
  v115 = STACK[0xDB0];
  v116 = 788608669 * (LODWORD(STACK[0xDB0]) + v113 - (((v114 ^ 0xEE012248) + 558747552) ^ ((v114 ^ 0xC9761F82) + 104526422) ^ ((v114 ^ 0x2702850F) - 397514535)));
  v117 = ((((v116 - 1706697371) ^ 0x2AAD49D2) - 2005315571) ^ (v116 - 1706697371) ^ (((v116 - 1706697371) ^ 0x5F4FE1CD) - 40110060) ^ (((v116 - 1706697371) ^ 0xD732F1D0) + 1978066959) ^ (((v116 - 1706697371) ^ 0xFFFBBFEE) + 1563403825)) >> 16;
  v118 = v116 - 1855842810 + (((v117 ^ 0x53BA6674) - 1631140172) ^ ((v117 ^ 0x829CCEB7) + 1340108401) ^ ((v117 ^ 0xD126F5E8) + 475682096));
  v119 = (((v118 ^ 0xC45144ED) + 443262910) ^ v118 ^ ((v118 ^ 0x9B378F5A) + 1158507531) ^ ((v118 ^ 0x15D28E4) - 546845770) ^ ((v118 ^ 0x7FFEFFFC) - 1580983122)) >> 8;
  LOBYTE(v110) = (((v117 & 0x10 ^ 0x16) - 107) ^ 8) - 27 + (((v117 & 0x10 ^ 0xF3) - 6) ^ ((v117 & 0x10) - 43) ^ ((v117 & 0x10 ^ 0x96) - 99));
  v120 = 1404897795 * (v75 + v118 + (((v119 ^ 0x3392D559) + 351970105) ^ ((v119 ^ 0xA9E731A1) - 1903212607) ^ ((v119 ^ 0x9A5421E4) - 1120118906))) + 1844939449;
  v121 = ((2 * (v120 ^ 0xFFD01112)) ^ 0x4AA2A7A4) & (v120 ^ 0xFFD01112) ^ (2 * (v120 ^ 0xFFD01112)) & 0x255153D2;
  v122 = 2 * (v120 & 0xDA8142C0);
  v123 = (v121 ^ 0x300) & (4 * (v122 & (v120 ^ 0xDAD01092) ^ v120 & 0xDA8142C0)) ^ v122 & (v120 ^ 0xDAD01092) ^ v120 & 0xDA8142C0;
  v124 = ((4 * (v121 ^ 0x25515052)) ^ 0x95454F48) & (v121 ^ 0x25515052) ^ (4 * (v121 ^ 0x25515052)) & 0x255153D0;
  v125 = (v124 ^ 0x5414340) & (16 * v123) ^ v123;
  v126 = ((16 * (v124 ^ 0x20101092)) ^ 0x55153D20) & (v124 ^ 0x20101092) ^ (16 * (v124 ^ 0x20101092)) & 0x255153C0;
  v127 = v125 ^ 0x255153D2 ^ (v126 ^ 0x5111100) & (v125 << 8);
  v128 = (v127 << 16) & 0x25510000 ^ v127 ^ ((v127 << 16) ^ 0x53D20000) & (((v126 ^ 0x204042D2) << 8) & 0x25510000 ^ 0x24000000 ^ (((v126 ^ 0x204042D2) << 8) ^ 0x51530000) & (v126 ^ 0x204042D2));
  LOBYTE(v127) = (v110 ^ 0x7D) & (2 * (v110 & 0x71)) ^ v110 & 0x71;
  v129 = ((2 * (v110 ^ 0x47)) ^ 0x74) & (v110 ^ 0x47) ^ (2 * (v110 ^ 0x47)) & 0x3A;
  LOBYTE(v127) = (((4 * (v129 ^ 0xA)) ^ 0xE8) & (v129 ^ 0xA) ^ (4 * (v129 ^ 0xA)) & 0x38 ^ 0x20) & (16 * (v129 & (4 * v127) ^ v127)) ^ v129 & (4 * v127) ^ v127 ^ 0x3A;
  v130 = v122 & (v120 ^ 0x9A2538DA) ^ v120 & 0xDA8142C0;
  v131 = ((2 * (v120 ^ 0x2B273D5A)) ^ 0xE34CFF34) & (v120 ^ 0x2B273D5A) ^ (2 * (v120 ^ 0x2B273D5A)) & 0xF1A67F9A;
  v132 = (v131 ^ 0xE0041F00) & (4 * v130) ^ v130;
  v133 = ((4 * (v131 ^ 0x10A2008A)) ^ 0xC699FE68) & (v131 ^ 0x10A2008A) ^ (4 * (v131 ^ 0x10A2008A)) & 0xF1A67F98;
  v134 = (v133 ^ 0xC0807E00) & (16 * v132) ^ v132;
  v135 = ((16 * (v133 ^ 0x31260192)) ^ 0x1A67F9A0) & (v133 ^ 0x31260192) ^ (16 * (v133 ^ 0x31260192)) & 0xF1A67F80;
  v136 = v134 ^ 0xF1A67F9A ^ (v135 ^ 0x10267900) & (v134 << 8);
  v137 = v120 ^ (2 * ((v136 << 16) & 0x71A60000 ^ v136 ^ ((v136 << 16) ^ 0x7F9A0000) & (((v135 ^ 0xE180061A) << 8) & 0x71A60000 ^ 0x51800000 ^ (((v135 ^ 0xE180061A) << 8) ^ 0x267F0000) & (v135 ^ 0xE180061A)))) ^ ((v120 ^ (2 * v128) ^ 0x9283E564) >> ((v110 ^ (2 * v127) ^ 0xCF) & 0x49 ^ 0x40) >> ((v110 ^ (2 * v127) ^ 0xCF) & 0xB6 ^ 0x86));
  v138 = ((((v137 >> 8) ^ 0x600DEAF6) + 736279724) ^ (((v137 >> 8) ^ 0x35C44BE5) + 2116754873) ^ (((v137 >> 8) ^ 0x551368AE) + 519847668)) + (((v137 ^ 0x79E0FF1B) - 1306857371) ^ ((v137 ^ 0x9E10CA5C) + 1441449252) ^ ((v137 ^ 0x3D3988B3) - 154957875));
  v139 = STACK[0xDD0];
  v140 = LODWORD(STACK[0xDD0]) ^ LODWORD(STACK[0xA60]) ^ v99 ^ 0xD34A6237 ^ (v99 - ((2 * v99) & 0xA694C46E) - 750099913);
  LODWORD(STACK[0x748]) = v140;
  v141 = v100 + 608326509 * v99 + v103 - ((v100 + 608326509 * v99) >> 8);
  v142 = 788608669 * (2055954765 * v141 + ((2055954765 * v141) >> 16) + v115 - ((2055954765 * v141 + ((2055954765 * v141) >> 16)) >> 8));
  v143 = v142 + HIWORD(v142) + v75 + ((v142 + HIWORD(v142)) >> 8);
  v144 = 608326509 * (v97 ^ v98) + ((608326509 * (v97 ^ v98)) >> 16);
  v145 = 2055954765 * (v144 + v103 - (v144 >> 8)) + ((2055954765 * (v144 + v103 - (v144 >> 8))) >> 16);
  v146 = v145 - (v145 >> 8);
  v147 = 788608669 * (v146 + v115) + ((788608669 * (v146 + v115)) >> 16);
  v148 = v147 + v75 + (v147 >> 8);
  LODWORD(STACK[0x9E0]) = v138;
  LODWORD(STACK[0xA40]) = v138 - 158684681;
  v149 = (((v138 - 158684681) ^ 0x8F49520F) + 38097301) ^ (v138 - 158684681) ^ (((v138 - 158684681) ^ 0x1BD25581) + 383669787) ^ (((v138 - 158684681) ^ 0x199F2495) + 345188111) ^ (((v138 - 158684681) ^ 0x1FF7DF7F) + 318495973);
  v150 = v138 - v78 - 1550406253;
  v151 = -476270833 * ((v96 - STACK[0xC30]) ^ v103);
  LODWORD(STACK[0x5D4]) = HIWORD(v151);
  v152 = HIWORD(v151) + v151;
  STACK[0x5D8] = v152;
  LODWORD(v152) = -192508153 * ((v152 + (v152 >> 8)) ^ v115) - ((-192508153 * ((v152 + (v152 >> 8)) ^ v115)) >> 16);
  LODWORD(v152) = (437923831 * ((v152 ^ (v152 >> 8)) + v98)) ^ ((437923831 * ((v152 ^ (v152 >> 8)) + v98)) >> 16);
  LODWORD(v152) = -879890795 * ((v152 ^ (v152 >> 8)) - v79) - ((-879890795 * ((v152 ^ (v152 >> 8)) - v79)) >> 16);
  v153 = v152 ^ (v152 >> 8);
  v154 = v153 - v150;
  v155 = v153 - v150 - v150;
  LODWORD(STACK[0x7E8]) = v80;
  v156 = v155 - v150;
  v157 = STACK[0x960];
  if ((v155 - v150))
  {
    v158 = v83;
  }

  else
  {
    v158 = STACK[0x960];
  }

  if (v156)
  {
    v159 = STACK[0x8A0];
  }

  else
  {
    v157 = STACK[0x8A0];
    v159 = v82;
  }

  if (v156)
  {
    v160 = v82;
  }

  else
  {
    v160 = v83;
  }

  if ((v156 & 2) != 0)
  {
    v161 = v157;
  }

  else
  {
    v161 = v160;
  }

  if ((v156 & 2) != 0)
  {
    v162 = v160;
  }

  else
  {
    v162 = v157;
  }

  LODWORD(STACK[0xCC0]) = v162;
  v163 = ((1404897795 * v143) ^ ((1404897795 * v143) >> 16)) + (((1404897795 * v143) ^ ((1404897795 * v143) >> 16)) >> 8);
  LODWORD(STACK[0xC50]) = v163;
  LODWORD(STACK[0x9E8]) = 8 * v149;
  v164 = 8 * v163;
  v165 = -8 * v149;
  if ((v156 & 2) != 0)
  {
    v166 = v159;
  }

  else
  {
    v166 = v158;
  }

  LODWORD(STACK[0x9F0]) = v164;
  v167 = v165 & 0x18;
  v168 = LODWORD(STACK[0xC88]) ^ v139;
  LODWORD(STACK[0x9D0]) = v168;
  v169 = STACK[0xA58] ^ v139;
  LODWORD(STACK[0x5C8]) = v169;
  v170 = LODWORD(STACK[0xA80]) ^ v139;
  LODWORD(STACK[0x5C0]) = v170;
  v171 = ((1404897795 * v148) ^ ((1404897795 * v148) >> 16)) + (((1404897795 * v148) ^ ((1404897795 * v148) >> 16)) >> 8);
  LODWORD(STACK[0x9D8]) = v171;
  if ((v165 & 0x18) != 0)
  {
    v172 = (v162 >> (v165 & 0x18)) ^ (v162 << (v164 & 0x18));
  }

  else
  {
    v172 = v162;
  }

  LODWORD(STACK[0x7D0]) = v172;
  v173 = STACK[0x890];
  v174 = STACK[0xBD0];
  if (v155)
  {
    v175 = STACK[0xBD0];
  }

  else
  {
    v175 = STACK[0x890];
  }

  LODWORD(STACK[0xBB8]) = v175;
  v176 = STACK[0xA98];
  if (v155)
  {
    v174 = STACK[0xA98];
  }

  LODWORD(STACK[0xC90]) = v174;
  v177 = STACK[0xE18];
  if (v155)
  {
    v178 = STACK[0xE18];
  }

  else
  {
    v178 = v176;
  }

  LODWORD(STACK[0xBB0]) = v178;
  v179 = 8 * v171;
  LODWORD(STACK[0xC24]) = 8 * v171;
  if (v155)
  {
    v180 = v140;
  }

  else
  {
    v180 = v168;
  }

  LODWORD(STACK[0xC88]) = v180;
  if (v155)
  {
    v170 = v169;
  }

  LODWORD(STACK[0xBC8]) = v170;
  v182 = v179 & 0x18;
  v181 = (v179 & 0x18) == 0;
  LODWORD(STACK[0xAA8]) = v161;
  v183 = (v161 >> v167) + (v161 << (v179 & 0x18));
  LODWORD(STACK[0xCC8]) = v166;
  v184 = (v166 >> v167) ^ (v166 << (v179 & 0x18));
  if (((8 * v171) & 0x18) != 0)
  {
    v185 = v183;
  }

  else
  {
    v185 = v161;
  }

  LODWORD(STACK[0x7D8]) = v185;
  if (v181)
  {
    v186 = v166;
  }

  else
  {
    v186 = v184;
  }

  LODWORD(STACK[0x7E0]) = v186;
  if ((v155 & 2) != 0)
  {
    v187 = v175;
  }

  else
  {
    v187 = v178;
  }

  if ((v155 & 2) != 0)
  {
    v188 = v180;
  }

  else
  {
    v188 = v170;
  }

  LODWORD(STACK[0xA50]) = v188;
  v189 = v165;
  if ((v165 & 0x18) != 0)
  {
    v188 = (v188 >> (v165 & 0x18)) + (v188 << v182);
  }

  LODWORD(STACK[0x8A0]) = v188;
  v190 = STACK[0xAD8];
  if ((v154 & 1) == 0)
  {
    v190 = STACK[0xDE0];
  }

  LODWORD(STACK[0xBD0]) = v190;
  if (v154)
  {
    v191 = STACK[0xBE8];
  }

  else
  {
    v191 = STACK[0xE88];
  }

  LODWORD(STACK[0xBA0]) = v191;
  v192 = STACK[0xAF8];
  if (v154)
  {
    v192 = STACK[0xCD0];
  }

  LODWORD(STACK[0xB98]) = v192;
  if ((v154 & 2) == 0)
  {
    v192 = v191;
  }

  LODWORD(STACK[0xA88]) = v192;
  if ((v165 & 0x18) != 0)
  {
    v192 = (v192 >> (v165 & 0x18)) | (v192 << (v164 & 0x18));
  }

  LODWORD(STACK[0x7A0]) = v192;
  v193 = STACK[0xC40];
  if ((v153 & 1) == 0)
  {
    v193 = STACK[0x950];
  }

  LODWORD(STACK[0xBC0]) = v193;
  if ((v90 & 2) != 0)
  {
    v194 = STACK[0xCF8];
  }

  else
  {
    v194 = STACK[0xCB8];
  }

  LODWORD(STACK[0xBA8]) = v194;
  v195 = STACK[0xA90];
  if (v90)
  {
    v195 = STACK[0xCE8];
  }

  v196 = STACK[0xB08];
  if (v90)
  {
    v196 = STACK[0xAC8];
  }

  v197 = STACK[0xD10];
  if ((v90 & 2) != 0)
  {
    v197 = STACK[0xD20];
    v198 = v196;
  }

  else
  {
    v198 = v195;
  }

  if ((v90 & 2) == 0)
  {
    v195 = v196;
  }

  v199 = STACK[0x8E0];
  v200 = STACK[0xAA4];
  if (v153)
  {
    v201 = STACK[0xAA4];
  }

  else
  {
    v201 = STACK[0x8E0];
  }

  LODWORD(STACK[0xD20]) = v201;
  v202 = STACK[0xC4C];
  if (v153)
  {
    v203 = v199;
  }

  else
  {
    v203 = STACK[0xC4C];
  }

  LODWORD(STACK[0x5B0]) = v203;
  if (v153)
  {
    v204 = v202;
  }

  else
  {
    v204 = v197;
  }

  if (v153)
  {
    v205 = v197;
  }

  else
  {
    v205 = v200;
  }

  LODWORD(STACK[0x5B4]) = v205;
  v206 = ((v195 - v146) ^ v146) + 2 * ((v195 - v146) & v146);
  v207 = STACK[0x880];
  if (v153)
  {
    v208 = STACK[0x880];
  }

  else
  {
    v208 = v198;
  }

  v209 = STACK[0xA78];
  if (v153)
  {
    v210 = v198;
  }

  else
  {
    v210 = STACK[0xA78];
  }

  LODWORD(STACK[0x5B8]) = v210;
  if (v153)
  {
    v211 = v206;
  }

  else
  {
    v211 = v207;
  }

  LODWORD(STACK[0xCE8]) = v211;
  if (v153)
  {
    v212 = v209;
  }

  else
  {
    v212 = v206;
  }

  if (v153)
  {
    v213 = STACK[0xC38];
  }

  else
  {
    v213 = v194;
  }

  if ((v153 & 2) != 0)
  {
    v214 = v201;
  }

  else
  {
    v214 = v204;
  }

  LODWORD(STACK[0xAC8]) = v214;
  if ((v189 & 0x18) != 0)
  {
    v214 = (v214 >> (v189 & 0x18)) + (v214 << v182);
  }

  LODWORD(STACK[0x880]) = v214;
  if ((v156 & 2) != 0)
  {
    v215 = v158;
  }

  else
  {
    v215 = v159;
  }

  LODWORD(STACK[0xCF8]) = v215;
  v216 = v164 & 0x18;
  if ((v164 & 0x18) != 0)
  {
    v217 = (v215 >> (v189 & 0x18)) + (v215 << (v164 & 0x18));
  }

  else
  {
    v217 = v215;
  }

  LODWORD(STACK[0x7C8]) = v217;
  if (v155)
  {
    v218 = v173;
  }

  else
  {
    v218 = v177;
  }

  LODWORD(STACK[0xAA4]) = v218;
  LODWORD(STACK[0x8E0]) = v208;
  LODWORD(STACK[0x960]) = v212;
  if ((v153 & 2) != 0)
  {
    v219 = v208;
  }

  else
  {
    v219 = v212;
  }

  if ((v153 & 2) != 0)
  {
    v220 = v211;
  }

  else
  {
    v220 = v210;
  }

  LODWORD(STACK[0xA80]) = v220;
  if ((v153 & 2) != 0)
  {
    v221 = v212;
  }

  else
  {
    v221 = v208;
  }

  if ((v153 & 2) != 0)
  {
    v222 = v203;
  }

  else
  {
    v222 = v205;
  }

  LODWORD(STACK[0xA58]) = v222;
  LODWORD(STACK[0xA60]) = v187;
  if ((v189 & 0x18) != 0)
  {
    v223 = (v220 >> (v189 & 0x18)) | (v220 << v182);
  }

  else
  {
    v223 = v220;
  }

  LODWORD(STACK[0x768]) = v223;
  LODWORD(STACK[0xB08]) = v219;
  if ((v189 & 0x18) != 0)
  {
    v219 = (v219 >> (v189 & 0x18)) | (v219 << v182);
  }

  LODWORD(STACK[0x774]) = v219;
  if ((v189 & 0x18) != 0)
  {
    v224 = (v187 >> (v189 & 0x18)) + (v187 << v182);
  }

  else
  {
    v224 = v187;
  }

  LODWORD(STACK[0x7B8]) = v224;
  if ((v189 & 0x18) != 0)
  {
    v225 = (v222 >> (v189 & 0x18)) + (v222 << v216);
  }

  else
  {
    v225 = v222;
  }

  LODWORD(STACK[0x890]) = v225;
  v226 = STACK[0x8A8];
  v227 = STACK[0x930];
  if (v156)
  {
    v228 = STACK[0x8A8];
  }

  else
  {
    v228 = STACK[0x930];
  }

  LODWORD(STACK[0x5A8]) = v228;
  v229 = STACK[0x868];
  if (v156)
  {
    v230 = STACK[0x868];
  }

  else
  {
    v230 = v226;
  }

  v231 = STACK[0x888];
  if (v154)
  {
    v232 = STACK[0x888];
  }

  else
  {
    v232 = STACK[0xCD8];
  }

  LODWORD(STACK[0x790]) = v232;
  v233 = STACK[0xC98];
  if (v154)
  {
    v234 = STACK[0xC98];
  }

  else
  {
    v234 = STACK[0xD18];
  }

  LODWORD(STACK[0x8A8]) = v234;
  LODWORD(STACK[0x7C0]) = v189;
  v235 = STACK[0xA48];
  v236 = -476270833 * ((v233 - v235) ^ LODWORD(STACK[0xD58])) + ((-476270833 * ((v233 - v235) ^ LODWORD(STACK[0xD58]))) >> 16);
  v237 = -192508153 * ((v236 + (v236 >> 8)) ^ v115) - ((-192508153 * ((v236 + (v236 >> 8)) ^ v115)) >> 16);
  v238 = 437923831 * ((v237 ^ (v237 >> 8)) + LODWORD(STACK[0xDE8]));
  v239 = (v238 ^ HIWORD(v238) ^ ((v238 ^ HIWORD(v238)) >> 8)) - LODWORD(STACK[0xD98]);
  v240 = v239 + LODWORD(STACK[0xCE0]) + 879890795 * v239 * (((v239 + LODWORD(STACK[0xCE0])) & 0xE5506CBD ^ 0xE5506CBD) + ((v239 + LODWORD(STACK[0xCE0])) & 0xE5506CBD));
  LODWORD(STACK[0x658]) = v240;
  LODWORD(STACK[0xA90]) = v221;
  if ((v189 & 0x18) != 0)
  {
    v241 = (v221 >> (v189 & 0x18)) ^ (v221 << v216);
  }

  else
  {
    v241 = v221;
  }

  LODWORD(STACK[0x758]) = v241;
  v242 = STACK[0x898];
  if (v154)
  {
    v243 = STACK[0x898];
  }

  else
  {
    v243 = v240;
  }

  LODWORD(STACK[0x780]) = v243;
  v244 = v156;
  LODWORD(STACK[0x990]) = v156;
  if (v156)
  {
    v245 = v227;
  }

  else
  {
    v245 = STACK[0xE70];
  }

  if (v156)
  {
    v246 = STACK[0xE70];
  }

  else
  {
    v246 = v229;
  }

  LODWORD(STACK[0xE70]) = v246;
  v247 = STACK[0x668];
  if ((STACK[0xDA0] & 2) != 0)
  {
    v247 = STACK[0x674];
  }

  v248 = STACK[0x940];
  if (v155)
  {
    v249 = v235;
  }

  else
  {
    v249 = STACK[0x940];
  }

  v250 = STACK[0x910];
  if ((v155 & 1) == 0)
  {
    v248 = STACK[0x910];
  }

  LODWORD(STACK[0xCB8]) = v248;
  if (v155)
  {
    v251 = v247;
  }

  else
  {
    v251 = v235;
  }

  LODWORD(STACK[0xDA0]) = v251;
  if (v155)
  {
    v252 = v250;
  }

  else
  {
    v252 = v247;
  }

  v253 = STACK[0xC88];
  if ((v155 & 2) != 0)
  {
    v253 = STACK[0xBC8];
  }

  LODWORD(STACK[0xC88]) = v253;
  if ((v155 & 2) != 0)
  {
    v254 = v249;
  }

  else
  {
    v254 = v252;
  }

  if ((v153 & 2) != 0)
  {
    v255 = v213;
  }

  else
  {
    v255 = STACK[0xBC0];
  }

  if ((v153 & 2) != 0)
  {
    v256 = STACK[0xBC0];
  }

  else
  {
    v256 = v213;
  }

  if ((v153 & 2) != 0)
  {
    v257 = v204;
  }

  else
  {
    v257 = STACK[0xD20];
  }

  if ((v154 & 2) != 0)
  {
    v258 = STACK[0xBA0];
  }

  else
  {
    v258 = STACK[0xB98];
  }

  v259 = STACK[0xBD0];
  if ((v154 & 2) != 0)
  {
    v260 = v232;
  }

  else
  {
    v259 = v243;
    v260 = v234;
  }

  if ((v244 & 2) != 0)
  {
    v261 = v245;
  }

  else
  {
    v261 = v230;
  }

  if ((v244 & 2) == 0)
  {
    v230 = v245;
  }

  LODWORD(STACK[0xA98]) = v230;
  if ((v244 & 2) != 0)
  {
    v262 = v228;
  }

  else
  {
    v262 = v246;
  }

  v263 = v189 & 0x18;
  LODWORD(STACK[0xBC8]) = v255;
  v264 = (v255 >> (v189 & 0x18)) ^ (v255 << v216);
  LODWORD(STACK[0xBC0]) = v256;
  v265 = (v256 >> v263) ^ (v256 << v216);
  LODWORD(STACK[0xB00]) = v259;
  v266 = v254;
  LODWORD(STACK[0xE18]) = v254;
  v267 = (v254 >> v263) + (v254 << v216);
  v268 = (v230 >> v263) + (v230 << v216);
  v269 = v262;
  LODWORD(STACK[0xB88]) = v262;
  v270 = (v262 >> v263) ^ (v262 << v182);
  v271 = v261;
  LODWORD(STACK[0xB90]) = v261;
  v272 = (v261 >> v263) | (v261 << v182);
  if (v263)
  {
    v255 = v264;
  }

  LODWORD(STACK[0x5AC]) = v255;
  if (v263)
  {
    v273 = v265;
  }

  else
  {
    v273 = v256;
  }

  if (v263)
  {
    v259 = (v259 >> v263) ^ (v259 << v182);
  }

  LODWORD(STACK[0x600]) = v259;
  if (v263)
  {
    v266 = v267;
  }

  LODWORD(STACK[0x650]) = v266;
  if (v263)
  {
    v274 = v268;
  }

  else
  {
    v274 = v230;
  }

  LODWORD(STACK[0x668]) = v274;
  if (v263)
  {
    v275 = v272;
  }

  else
  {
    v275 = v271;
  }

  LODWORD(STACK[0x660]) = v275;
  if (v263)
  {
    v269 = v270;
  }

  LODWORD(STACK[0x664]) = v269;
  v276 = STACK[0x9F0];
  v277 = -LODWORD(STACK[0x9F0]);
  v278 = STACK[0x9E8];
  v279 = -LODWORD(STACK[0x9F0]) & 0x18;
  LODWORD(STACK[0xCE0]) = v260;
  v280 = (v260 << (v278 & 0x18)) | (v260 >> v279);
  if ((-v276 & 0x18) == 0)
  {
    v280 = v260;
  }

  LODWORD(STACK[0x930]) = v280;
  v281 = STACK[0xC24];
  LODWORD(STACK[0xA78]) = v258;
  v282 = (v258 >> v263) | (v258 << (v281 & 0x18));
  LODWORD(STACK[0xD10]) = v257;
  v283 = (v257 >> v263) ^ (v257 << (v281 & 0x18));
  if ((v281 & 0x18) == 0)
  {
    v282 = v258;
  }

  LODWORD(STACK[0x798]) = v282;
  if ((v281 & 0x18) == 0)
  {
    v283 = v257;
  }

  LODWORD(STACK[0x868]) = v283;
  if ((v155 & 2) != 0)
  {
    v284 = v252;
  }

  else
  {
    v284 = v249;
  }

  if ((v155 & 2) != 0)
  {
    v285 = STACK[0xCB8];
  }

  else
  {
    v285 = STACK[0xDA0];
  }

  if ((v155 & 2) != 0)
  {
    v286 = STACK[0xDA0];
  }

  else
  {
    v286 = STACK[0xCB8];
  }

  if ((v155 & 2) != 0)
  {
    v287 = STACK[0xBB0];
  }

  else
  {
    v287 = STACK[0xBB8];
  }

  LODWORD(STACK[0xA48]) = v287;
  if ((v155 & 2) != 0)
  {
    v288 = STACK[0xC90];
  }

  else
  {
    v288 = STACK[0xAA4];
  }

  if ((v155 & 2) != 0)
  {
    v289 = STACK[0xAA4];
  }

  else
  {
    v289 = STACK[0xC90];
  }

  LODWORD(STACK[0xAA4]) = v289;
  v290 = STACK[0xCD8];
  if ((v154 & 1) == 0)
  {
    v290 = STACK[0xC98];
  }

  v291 = STACK[0xD18];
  if ((v154 & 1) == 0)
  {
    v291 = v231;
  }

  if ((v154 & 2) != 0)
  {
    v292 = v290;
  }

  else
  {
    v292 = v291;
  }

  if ((v154 & 2) != 0)
  {
    v293 = v291;
  }

  else
  {
    v293 = v290;
  }

  v294 = v276;
  v295 = (v287 >> v263) | (v287 << (v276 & 0x18));
  v296 = (v289 >> v263) ^ (v289 << (v276 & 0x18));
  if ((v276 & 0x18) == 0)
  {
    v295 = v287;
  }

  LODWORD(STACK[0x7B0]) = v295;
  if ((v276 & 0x18) == 0)
  {
    v296 = v289;
  }

  LODWORD(STACK[0x888]) = v296;
  v297 = v281;
  LODWORD(STACK[0xCB8]) = v288;
  v298 = (v288 >> v263) ^ (v288 << (v281 & 0x18));
  v299 = STACK[0xC88];
  v300 = (v299 >> v263) | (v299 << (v281 & 0x18));
  if ((v281 & 0x18) == 0)
  {
    v298 = v288;
  }

  LODWORD(STACK[0x7A8]) = v298;
  if ((v281 & 0x18) == 0)
  {
    v300 = v299;
  }

  LODWORD(STACK[0x940]) = v300;
  v301 = STACK[0xDE0];
  if ((v154 & 1) == 0)
  {
    LODWORD(v301) = v242;
  }

  v302 = STACK[0xAD8];
  if (v154)
  {
    v302 = STACK[0x658];
  }

  v303 = STACK[0xE88];
  if ((v154 & 1) == 0)
  {
    v303 = STACK[0xCD0];
  }

  v304 = STACK[0xBE8];
  if (v154)
  {
    v304 = STACK[0xAF8];
  }

  LODWORD(STACK[0x5A4]) = v154;
  v305 = (v154 & 2) == 0;
  if ((v154 & 2) != 0)
  {
    v306 = v302;
  }

  else
  {
    v306 = v301;
  }

  if ((v154 & 2) != 0)
  {
    v307 = v301;
  }

  else
  {
    v307 = v302;
  }

  if ((v154 & 2) != 0)
  {
    v308 = STACK[0x780];
  }

  else
  {
    v308 = STACK[0xBD0];
  }

  if ((v154 & 2) != 0)
  {
    v309 = v304;
  }

  else
  {
    v309 = v303;
  }

  if (v305)
  {
    v310 = v304;
  }

  else
  {
    v310 = v303;
  }

  if (v305)
  {
    v311 = STACK[0x790];
  }

  else
  {
    v311 = STACK[0x8A8];
  }

  v312 = v263;
  LODWORD(STACK[0xBB8]) = v306;
  v313 = (v306 >> v263) | (v306 << (v294 & 0x18));
  LODWORD(STACK[0xBA0]) = v284;
  LODWORD(STACK[0xAF8]) = v309;
  v314 = (v309 >> v263) ^ (v309 << (v294 & 0x18));
  if ((v294 & 0x18) == 0)
  {
    v313 = v306;
  }

  LODWORD(STACK[0x5E8]) = v313;
  if ((v294 & 0x18) != 0)
  {
    v315 = (v284 >> v263) + (v284 << (v294 & 0x18));
  }

  else
  {
    v315 = v284;
  }

  LODWORD(STACK[0x658]) = v315;
  if ((v294 & 0x18) == 0)
  {
    v314 = v309;
  }

  LODWORD(STACK[0x780]) = v314;
  LODWORD(STACK[0xAD8]) = v310;
  v316 = (v310 >> v263) | (v310 << (v297 & 0x18));
  if ((v297 & 0x18) == 0)
  {
    v316 = v310;
  }

  LODWORD(STACK[0x790]) = v316;
  v317 = STACK[0x950];
  if ((v153 & 1) == 0)
  {
    v317 = STACK[0xC38];
  }

  v318 = STACK[0xC40];
  if (v153)
  {
    v318 = STACK[0xBA8];
  }

  v319 = v153;
  if ((v153 & 2) != 0)
  {
    v320 = v318;
  }

  else
  {
    v320 = v317;
  }

  if ((v153 & 2) != 0)
  {
    v321 = v317;
  }

  else
  {
    v321 = v318;
  }

  LODWORD(STACK[0xE88]) = v297 & 0x18;
  LODWORD(STACK[0xC38]) = v321;
  v322 = (v321 >> v263) | (v321 << (v297 & 0x18));
  LODWORD(STACK[0xBA8]) = v320;
  LODWORD(STACK[0xBB0]) = v308;
  LODWORD(STACK[0xD20]) = v285;
  v323 = v286;
  LODWORD(STACK[0xB98]) = v286;
  v324 = (v286 >> v263) | (v286 << (v297 & 0x18));
  v325 = v153 + LODWORD(STACK[0x9B8]);
  if ((v297 & 0x18) == 0)
  {
    v322 = v321;
  }

  LODWORD(STACK[0xD18]) = v322;
  if ((v297 & 0x18) != 0)
  {
    v326 = (v320 >> v263) + (v320 << (v297 & 0x18));
  }

  else
  {
    v326 = v320;
  }

  LODWORD(STACK[0x5D0]) = v326;
  if ((v297 & 0x18) != 0)
  {
    v327 = (v308 >> v263) ^ (v308 << (v297 & 0x18));
  }

  else
  {
    v327 = v308;
  }

  LODWORD(STACK[0x5E4]) = v327;
  if ((v297 & 0x18) != 0)
  {
    v328 = (v285 >> v263) + (v285 << (v297 & 0x18));
  }

  else
  {
    v328 = v285;
  }

  LODWORD(STACK[0x608]) = v328;
  if ((v297 & 0x18) != 0)
  {
    v329 = v324;
  }

  else
  {
    v329 = v323;
  }

  LODWORD(STACK[0x610]) = v329;
  v330 = STACK[0xDE8];
  v331 = STACK[0xD58];
  if (v325)
  {
    v332 = STACK[0xDE8];
  }

  else
  {
    v332 = STACK[0xD58];
  }

  v333 = STACK[0xD98];
  if ((v325 & 1) == 0)
  {
    v331 = STACK[0xD98];
  }

  v334 = STACK[0xDB0];
  if (v325)
  {
    v335 = STACK[0xDB0];
  }

  else
  {
    v335 = STACK[0xDE8];
  }

  if (v325)
  {
    v336 = STACK[0xD98];
  }

  else
  {
    v336 = STACK[0xDB0];
  }

  if ((v325 & 2) != 0)
  {
    v337 = v331;
  }

  else
  {
    v337 = v335;
  }

  if ((v325 & 2) == 0)
  {
    v335 = v331;
  }

  v338 = -v297;
  if ((v325 & 2) != 0)
  {
    v339 = v336;
  }

  else
  {
    v339 = v332;
  }

  v340 = v338 & 0x18;
  if ((v338 & 0x18) != 0)
  {
    v341 = (v337 << (v278 & 0x18)) | (v337 >> (v338 & 0x18));
  }

  else
  {
    v341 = v337;
  }

  v342 = (v339 << (v278 & 0x18)) ^ (v339 >> v279);
  if ((v278 & 0x18) != 0)
  {
    v335 = (v335 << (v278 & 0x18)) | (v335 >> v340);
  }

  else
  {
    v342 = v339;
  }

  v343 = STACK[0x5C0];
  if ((v155 & 1) == 0)
  {
    v343 = STACK[0x748];
  }

  v344 = STACK[0x5C8];
  if (v155)
  {
    v344 = STACK[0x9D0];
  }

  LODWORD(STACK[0x5C8]) = v155;
  if ((v155 & 2) != 0)
  {
    v345 = v343;
  }

  else
  {
    v345 = v344;
  }

  LODWORD(STACK[0xDA0]) = v345;
  if ((v155 & 2) != 0)
  {
    v346 = v344;
  }

  else
  {
    v346 = v343;
  }

  LODWORD(STACK[0xCD0]) = v346;
  LODWORD(STACK[0xC90]) = v292;
  LODWORD(STACK[0xCD8]) = v293;
  v347 = (v293 << (v278 & 0x18)) ^ (v293 >> v279);
  if ((v278 & 0x18) != 0)
  {
    v348 = (v292 << (v278 & 0x18)) + (v292 >> v340);
  }

  else
  {
    v348 = v292;
  }

  LODWORD(STACK[0x8A8]) = v348;
  if ((v278 & 0x18) != 0)
  {
    v349 = v347;
  }

  else
  {
    v349 = v293;
  }

  LODWORD(STACK[0x910]) = v349;
  v181 = (v338 & 0x18) == 0;
  LODWORD(STACK[0xD58]) = v338 & 0x18;
  LODWORD(STACK[0xC98]) = v311;
  LODWORD(STACK[0x9D0]) = v278 & 0x18;
  v350 = (v311 << (v278 & 0x18)) ^ (v311 >> (v338 & 0x18));
  if (v181)
  {
    v350 = v311;
  }

  LODWORD(STACK[0x950]) = v350;
  LODWORD(v351) = STACK[0x5F8];
  if ((STACK[0xE78] & 2) != 0)
  {
    v351 = v351;
  }

  else
  {
    v351 = LODWORD(STACK[0x5F0]);
  }

  STACK[0x9B8] = v351;
  if ((v319 & 2) != 0)
  {
    v352 = STACK[0x5B8];
  }

  else
  {
    v352 = STACK[0xCE8];
  }

  LODWORD(STACK[0xCE8]) = v352;
  if ((v319 & 2) != 0)
  {
    v353 = STACK[0x5B4];
  }

  else
  {
    v353 = STACK[0x5B0];
  }

  LODWORD(STACK[0xC4C]) = v312;
  LODWORD(STACK[0xBE8]) = v307;
  v354 = (v307 >> v312) ^ (v307 << (v294 & 0x18));
  LODWORD(STACK[0xDE0]) = v353;
  v355 = (v353 >> v312) + (v353 << (v294 & 0x18));
  if ((v294 & 0x18) == 0)
  {
    v354 = v307;
  }

  LODWORD(STACK[0x5F8]) = v354;
  if ((v294 & 0x18) != 0)
  {
    v356 = (v352 >> v312) + (v352 << (v294 & 0x18));
  }

  else
  {
    v356 = v352;
  }

  LODWORD(STACK[0x674]) = v356;
  if ((v294 & 0x18) == 0)
  {
    v355 = v353;
  }

  LODWORD(STACK[0x898]) = v355;
  v357 = STACK[0xE70];
  if ((STACK[0x990] & 2) == 0)
  {
    v357 = STACK[0x5A8];
  }

  LODWORD(STACK[0xE70]) = v357;
  if ((v325 & 2) == 0)
  {
    v332 = v336;
  }

  v358 = v277 & 0x18;
  LODWORD(STACK[0x748]) = v358;
  if ((v277 & 0x18) != 0)
  {
    v332 = (v332 << (v278 & 0x18)) ^ (v332 >> (v277 & 0x18));
  }

  v359 = LODWORD(STACK[0x27C]) ^ v342 ^ LODWORD(STACK[0x5AC]);
  v360 = LODWORD(STACK[0x3C0]) ^ v332 ^ v273 ^ 0xDAF7EAAE;
  v361 = BYTE1(v360) + 334;
  v362 = (295 * ((LOBYTE(STACK[0x27C]) ^ v342 ^ LOBYTE(STACK[0x5AC])) ^ 0xBDu) + 98530) % ((v361 & 0x78 ^ 0x478) + (v361 & 0x78u));
  v363 = -192508153 * (((STACK[0x5D8] >> ((STACK[0x5D4] & 0x95) + (STACK[0x5D4] & 0x95 ^ 0x95u) + 115)) + STACK[0x5D8]) ^ v334);
  v364 = 437923831 * (((v363 - HIWORD(v363)) ^ ((v363 - HIWORD(v363)) >> 8)) + v330);
  v365 = -879890795 * ((v364 ^ HIWORD(v364) ^ ((v364 ^ HIWORD(v364)) >> 8)) - v333);
  v366 = ((v365 - HIWORD(v365)) ^ ((v365 - HIWORD(v365)) >> 8)) + LODWORD(STACK[0xB28]);
  LODWORD(STACK[0xBD0]) = v366;
  v367 = LODWORD(STACK[0x278]) ^ v341 ^ LODWORD(STACK[0xD18]);
  v368 = *(STACK[0xEA8] + (((HIBYTE(v367) ^ 0x6E) - 7) ^ 0x67));
  v369 = (16 * ((v368 & 2) != 0)) | 1;
  v370 = (v368 ^ 0x46) - ((((((2 * v368) ^ 0x98) - 40) ^ (((2 * v368) ^ 0x22) + 110) ^ (((2 * v368) ^ 0x36) + 122)) + 12) & 0xEA) + 93;
  v371 = (v370 - ((2 * v370) & 0xF3) - 7) ^ v369;
  v372 = *(STACK[0xEC0] + ((v360 - 7) ^ 0x98));
  v373 = ((v372 ^ 0x66) + 123) ^ ((v372 ^ 0xA5) - 70);
  v374 = LODWORD(STACK[0x3C4]) ^ v335 ^ LODWORD(STACK[0x5D0]) ^ 0x38390EC2;
  v375 = (v372 ^ 0xA8) - 75;
  v376 = *(STACK[0xEA8] + ((v374 - 7) ^ 0x67));
  v377 = v373 ^ v375;
  v378 = (((v376 ^ 0x27) - 39) ^ ((v376 ^ 0x7D) - 125) ^ ((v376 ^ 0x1C) - 28)) - 126;
  v379 = v378 & 0x52 ^ 0x53;
  v380 = (8 * v376) & 0x10 ^ v378 ^ (2 * ((v378 ^ 0x2C) & (2 * ((v378 ^ 0x2C) & (2 * ((v378 ^ 0x2C) & (2 * ((v378 ^ 0x2C) & (2 * ((v378 ^ 0x2C) & (2 * ((v378 ^ 0x2C) & (2 * v379) ^ v379)) ^ v379)) ^ v379)) ^ v379)) ^ v379)) ^ v379));
  v381 = 295 * (HIBYTE(v359) ^ 0x7F) + 98530 - 1144 * ((3754343 * (295 * (HIBYTE(v359) ^ 0x7F) + 98530)) >> 32);
  v382 = 295 * (BYTE2(v359) ^ 0x7F) + 98530 - 1144 * ((3754343 * (295 * (BYTE2(v359) ^ 0x7Fu) + 98530)) >> 32);
  v383 = 295 * BYTE1(v374) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v374) + 98530)) >> 32);
  v384 = 295 * (-59 * (((BYTE1(v359) ^ 0xE8) - 7) ^ ((BYTE1(v359) ^ 0xE8) - 7 - ((2 * ((BYTE1(v359) ^ 0xE8) - 7)) & 0x42) - 95) ^ 0xCA ^ *(STACK[0xEC0] + (((BYTE1(v359) ^ 0xE8) - 7) ^ 0x98)))) + 98530;
  v385 = v384 - 1144 * ((3754343 * v384) >> 32);
  LODWORD(STACK[0xDB0]) = -88;
  v386 = 295 * (-59 * v377 - 88) + 98530;
  v387 = v386 - 1144 * ((3754343 * v386) >> 32);
  v388 = 295 * v361 - 1144 * ((3754343 * (295 * v361)) >> 32);
  v389 = 295 * (-59 * (v380 ^ 0xDF)) + 98530;
  v390 = 295 * HIBYTE(v374) + 98530 - 1144 * ((3754343 * (295 * HIBYTE(v374) + 98530)) >> 32);
  HIDWORD(v391) = *(v81 + 4 * (295 * (v367 ^ 0x99) + 98530 - 1144 * ((3754343 * (295 * (v367 ^ 0x99u) + 98530)) >> 32)));
  LODWORD(v391) = HIDWORD(v391);
  v392 = *(v81 + 4 * (295 * BYTE2(v374) + 98530 - 1144 * ((3754343 * (295 * BYTE2(v374) + 98530)) >> 32))) ^ __ROR4__(*(v81 + 4 * (295 * HIBYTE(v360) + 98530 - 1144 * ((3754343 * (295 * HIBYTE(v360) + 98530)) >> 32))), 24) ^ __ROR4__(*(v81 + 4 * v385), 8) ^ ((v391 >> 16) - ((2 * (v391 >> 16)) & 0x3B218236) - 1651457765) ^ 0x9D90C11B;
  v393 = 295 * (BYTE2(v367) ^ 0x40) + 98530 - 1144 * ((3754343 * (295 * (BYTE2(v367) ^ 0x40u) + 98530)) >> 32);
  HIDWORD(v391) = *(v81 + 4 * v390);
  LODWORD(v391) = HIDWORD(v391);
  v394 = *(v81 + 4 * v382) ^ __ROR4__(*(v81 + 4 * v387), 16) ^ __ROR4__(*(v81 + 4 * (295 * (BYTE1(v367) ^ 0x74) + 98530 - 1144 * ((3754343 * (295 * (BYTE1(v367) ^ 0x74u) + 98530)) >> 32))), 8) ^ ((v391 >> 24) - ((2 * (v391 >> 24)) & 0x243D7556) + 304003755) ^ 0x121EBAAB;
  v395 = *(v81 + 4 * (295 * BYTE2(v360) + 98530 - 1144 * ((3754343 * (295 * BYTE2(v360) + 98530)) >> 32)));
  HIDWORD(v391) = *(v81 + 4 * (295 * (-59 * v371) + 98530 - 1144 * ((3754343 * (295 * (-59 * v371) + 98530)) >> 32)));
  LODWORD(v391) = HIDWORD(v391);
  v396 = (v391 >> 24) ^ __ROR4__(*(v81 + 4 * v383), 8) ^ __ROR4__(*(v81 + 4 * v362), 16) ^ (v395 - ((2 * v395) & 0xE8EC3368) - 193586764) ^ 0xF47619B4;
  LODWORD(STACK[0x5F0]) = v319;
  v397 = v319 + LODWORD(STACK[0xD28]);
  LODWORD(STACK[0xD98]) = v397;
  v398 = v397 - ((2 * v397) & 0xDF6825F8) - 273411332;
  LODWORD(STACK[0xD18]) = v398;
  LODWORD(STACK[0xC40]) = v325;
  v399 = LODWORD(STACK[0xC50]) - v325 + (v398 ^ 0xEFB412FC);
  v400 = 158684681 - LODWORD(STACK[0x9E0]);
  LODWORD(STACK[0xB28]) = v400;
  v401 = v399 + v400 + 1391721572 + v392;
  v402 = STACK[0x9D0];
  LODWORD(STACK[0xE78]) = v294 & 0x18;
  v403 = LODWORD(STACK[0x274]) ^ LODWORD(STACK[0x5E4]) ^ ((v294 & 0x18) - v402 + v394);
  v404 = LODWORD(STACK[0x270]) ^ LODWORD(STACK[0x5E8]) ^ v401;
  v405 = LODWORD(STACK[0x26C]) ^ LODWORD(STACK[0x9D8]) ^ LODWORD(STACK[0xA40]) ^ ((LODWORD(STACK[0xA40]) ^ 0x6EA26D80) - 1011978724) ^ ((LODWORD(STACK[0xA40]) ^ 0x388EA81A) - 1786598526) ^ ((LODWORD(STACK[0xA40]) ^ 0xFB78E601) + 1450501531) ^ ((LODWORD(STACK[0xA40]) ^ 0xFFA7DFFF) + 1386994789) ^ LODWORD(STACK[0x5F8]) ^ __ROR4__(*(v81 + 4 * v381), 24) ^ __ROR4__(*(v81 + 4 * v388), 8) ^ __ROR4__(*(v81 + 4 * (v389 - 1144 * ((3754343 * v389) >> 32))), 16) ^ *(v81 + 4 * v393);
  v406 = LODWORD(STACK[0x268]) ^ LODWORD(STACK[0x600]) ^ (v325 - LODWORD(STACK[0xD58]) - v358 - v366 + 2 * LODWORD(STACK[0xC4C]) + v396);
  v407 = (v406 ^ 0xCFCFED7B) >> ((LODWORD(STACK[0xE88]) + (LODWORD(STACK[0xE88]) ^ 0x39) - 33) & 0xF8);
  v408 = 295 * ((LOBYTE(STACK[0x270]) ^ LOBYTE(STACK[0x5E8]) ^ v401) ^ 0xF3) + 98530;
  v409 = 295 * (LODWORD(STACK[0xE88]) ^ v402 ^ 0x6E ^ v403) + 98530;
  v410 = 295 * ((v407 - 2 * (v407 & 0x1F) + 31) ^ 0x1F) + 98530;
  v411 = 295 * (BYTE2(v406) ^ 0xCF) + 98530;
  v412 = LODWORD(STACK[0x264]) ^ LODWORD(STACK[0x650]) ^ __ROR4__(*(v81 + 4 * (295 * (BYTE1(v404) ^ 0x5A) + 98530 - 1144 * ((3754343 * (295 * (BYTE1(v404) ^ 0x5Au) + 98530)) >> 32))), 8) ^ __ROR4__(*(v81 + 4 * (295 * (HIBYTE(v405) ^ 0x52) + 98530 - 1144 * ((3754343 * (295 * (HIBYTE(v405) ^ 0x52) + 98530)) >> 32))), 24) ^ __ROR4__(*(v81 + 4 * (v409 - 1144 * ((3754343 * v409) >> 32))), 16) ^ *(v81 + 4 * (v411 - 1144 * ((3754343 * v411) >> 32)));
  v413 = STACK[0xE90];
  v414 = LODWORD(STACK[0x3B0]) ^ LODWORD(STACK[0x610]) ^ *(v81 + 4 * (295 * (BYTE2(v404) ^ 0x97) + 98530 - 1144 * ((3754343 * (295 * (BYTE2(v404) ^ 0x97u) + 98530)) >> 32))) ^ __ROR4__(*(v81 + 4 * (295 * (BYTE1(v403) ^ 0x28) + 98530 - 1144 * ((3754343 * (295 * (BYTE1(v403) ^ 0x28u) + 98530)) >> 32))), 8) ^ __ROR4__(*(v81 + 4 * (295 * (v405 ^ 0x64) + 98530 - 1144 * ((3754343 * (295 * (v405 ^ 0x64u) + 98530)) >> 32))), 16) ^ __ROR4__(*(v81 + 4 * (v410 - 1144 * ((3754343 * v410) >> 32))), 24) ^ 0x340CC5E4;
  v415 = LODWORD(STACK[0x3BC]) ^ LODWORD(STACK[0x608]) ^ __ROR4__(*(v81 + 4 * (v408 - 1144 * ((3754343 * v408) >> 32))), 16) ^ *(v81 + 4 * (295 * (BYTE2(v405) ^ 0xF3) + 98530 - 1144 * ((3754343 * (295 * (BYTE2(v405) ^ 0xF3u) + 98530)) >> 32))) ^ __ROR4__(*(v81 + 4 * (295 * (BYTE1(v406) ^ 0xED) + 98530 - 1144 * ((3754343 * (295 * (BYTE1(v406) ^ 0xEDu) + 98530)) >> 32))), 8) ^ __ROR4__(*(v81 + 4 * (295 * (HIBYTE(v403) ^ 0xAD) + 98530 - 1144 * ((3754343 * (295 * (HIBYTE(v403) ^ 0xAD) + 98530)) >> 32))), 24) ^ 0x70863EC2;
  HIDWORD(v391) = *(v81 + 4 * (295 * HIBYTE(v415) + 98530 - 1144 * ((3754343 * (295 * HIBYTE(v415) + 98530)) >> 32)));
  LODWORD(v391) = HIDWORD(v391);
  v416 = (v391 >> 24) ^ __ROR4__(*(v81 + 4 * (295 * BYTE1(v414) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v414) + 98530)) >> 32))), 8);
  v417 = (295 * ((*(STACK[0xE90] + ((-5 * (HIBYTE(v412) ^ 0xFE)) ^ 0x26)) ^ (-5 * (HIBYTE(v412) ^ 0xFE) - ((-10 * (HIBYTE(v412) ^ 0xFE)) & 0x50) + 40) ^ 0xAA) - 1) + 98530) % ((v416 & 0x478 ^ 0x478) + (v416 & 0x478u));
  v418 = STACK[0xE70];
  if ((v294 & 0x18) != 0)
  {
    v418 = (v418 >> LODWORD(STACK[0xC4C])) ^ (v418 << (v294 & 0x18));
  }

  LODWORD(v419) = STACK[0x67C];
  if ((STACK[0xC60] & 2) != 0)
  {
    v419 = LODWORD(STACK[0x678]);
  }

  else
  {
    v419 = v419;
  }

  STACK[0xDE8] = v419;
  v420 = *(STACK[0xEB8] + (((BYTE2(v403) ^ 0xB4) + 18) ^ 0x91));
  v421 = ((v420 ^ 0x8D) + 115) ^ ((v420 ^ 0xCA) + 54) ^ ((v420 ^ 1) - 1);
  v422 = v421 + 19;
  v421 -= 109;
  v423 = v421 ^ (2 * ((v422 ^ 0x46) & (2 * ((v422 ^ 0x46) & (2 * ((v422 ^ 0x46) & (2 * ((v422 ^ 0x46) & (2 * ((v422 ^ 6) & (2 * ((v422 ^ 6) & (2 * (v421 & 0xC7)) ^ v421 & 0xC7)) ^ v421 & 0xC7)) ^ v421 & 0xC7)) ^ v421 & 0xC7)) ^ v421 & 0xC7)) ^ v421 & 0xC7));
  v424 = (v423 >> 1) ^ (v423 >> 4) ^ 0x27;
  v425 = v423 ^ (v424 - ((2 * v424) & 0xB2) + 89);
  v426 = 295 * (BYTE1(v405) ^ 0xFC) + 98530 - 1144 * ((3754343 * (295 * (BYTE1(v405) ^ 0xFCu) + 98530)) >> 32);
  HIDWORD(v427) = *(v81 + 4 * (295 * (HIBYTE(v404) ^ 0xFE) + 98530 - 1144 * ((3754343 * (295 * (HIBYTE(v404) ^ 0xFE) + 98530)) >> 32)));
  LODWORD(v427) = HIDWORD(v427);
  v428 = (v427 >> 24) ^ __ROR4__(*(v81 + 4 * v426), 8) ^ *(v81 + 4 * ((295 * ((v426 | 0x14D) - (v426 & 0x6B2) + (-51 * (v425 ^ 0xFE))) + 295) % 0x478));
  v429 = 86 - 5 * ((v412 >> 8) ^ 0xFFFFFFF7);
  LOBYTE(v426) = v429 & 0xCA ^ 0x90;
  LOBYTE(v426) = v429 ^ (2 * ((v429 ^ 0x28) & (2 * ((v429 ^ 0x28) & (2 * ((v429 ^ 0x28) & (2 * ((v429 ^ 0x28) & (2 * (v429 & (2 * v429) & 0x54 ^ v426)) ^ v426)) ^ v426)) ^ v426)) ^ v426));
  v430 = v428 ^ __ROR4__(*(v81 + 4 * (295 * (v406 ^ 0x7B) + 98530 - 1144 * ((3754343 * (295 * (v406 ^ 0x7Bu) + 98530)) >> 32))), 16);
  v431 = *(v413 + (v426 ^ 0xECLL)) ^ v426 ^ 0x48;
  LOBYTE(v428) = *(STACK[0xEC0] + ((v415 - 7) ^ 0x98));
  v432 = -94 - 59 * (((v428 ^ 0xCC) + 99) ^ ((v428 ^ 0xF3) + 94) ^ ((v428 ^ 0x54) - 5));
  LOBYTE(v428) = *(STACK[0xEC0] + ((v414 - 7) ^ 0x98));
  v433 = -59 * (((v428 ^ 0x56) + 64) ^ ((v428 ^ 0xCE) - 88) ^ ((v428 ^ 0xF3) - 101)) - 79;
  v434 = 295 * BYTE2(v414) + 98530 - 1144 * ((3754343 * (295 * BYTE2(v414) + 98530)) >> 32);
  v435 = LODWORD(STACK[0x260]) ^ LODWORD(STACK[0x658]) ^ v430;
  v436 = 295 * (((v435 ^ 0x4F2) >> 8) ^ 0xDA) + 98530;
  v437 = 295 * HIBYTE(v414) + 98530 - 1144 * ((3754343 * (295 * HIBYTE(v414) + 98530)) >> 32);
  v438 = 295 * v432 + 98530 - 1144 * ((3754343 * (295 * v432 + 98530)) >> 32);
  v439 = *(v81 + 4 * (295 * v433 + 98530 - 1144 * ((3754343 * (295 * v433 + 98530)) >> 32)));
  v440 = 295 * (v412 ^ 0x77) + 98530 - 1144 * ((3754343 * (295 * (v412 ^ 0x77u) + 98530)) >> 32);
  v441 = 295 * (((v435 ^ 0xD40404F2) >> 16) ^ 0x3D) + 98530;
  v442 = *(v81 + 4 * (295 * (BYTE2(v412) ^ 0xFA) + 98530 - 1144 * ((3754343 * (295 * (BYTE2(v412) ^ 0xFAu) + 98530)) >> 32))) ^ v416 ^ __ROR4__(*(v81 + 4 * (295 * (v435 ^ 0x1F) + 98530 - 1144 * ((3754343 * (295 * (v435 ^ 0x1Fu) + 98530)) >> 32))), 16);
  v443 = 295 * (LODWORD(STACK[0x2DC]) + (HIBYTE(v435) ^ 0xEE));
  HIDWORD(v427) = *(v81 + 4 * v417);
  LODWORD(v427) = HIDWORD(v427);
  v444 = *(v81 + 4 * v434) ^ __ROR4__(*(v81 + 4 * (v436 - 1144 * ((3754343 * v436) >> 32))), 8) ^ __ROR4__(*(v81 + 4 * v438), 16) ^ ((v427 >> 24) - ((2 * (v427 >> 24)) & 0x2840EAA2) + 337671505) ^ 0x14207551;
  v445 = *(v81 + 4 * (v443 - 1144 * ((3754343 * v443) >> 32)));
  v446 = (HIBYTE(v445) ^ 0x2CABB0B1) & ((v445 << 8) ^ 0xBEEBB4FF) | (v445 << 8) & 0xD3544F00;
  v447 = LODWORD(STACK[0x3A8]) ^ (((STACK[0xD18] & 0xA800424 ^ 0x913052C) & (STACK[0xD18] & 0xA800424 ^ 0xBB3216C) ^ (STACK[0xD18] & 0x8000024 | 0x4793DD0B)) * LODWORD(STACK[0x708])) ^ LODWORD(STACK[0x660]) ^ (v444 + LODWORD(STACK[0x828]));
  v448 = LODWORD(STACK[0x590]) ^ LODWORD(STACK[0x59C]);
  v449 = v448 ^ LODWORD(STACK[0x25C]) ^ LODWORD(STACK[0xD08]) ^ LODWORD(STACK[0x664]) ^ __ROR4__(*(v81 + 4 * v437), 24) ^ *(v81 + 4 * (v441 - 1144 * ((3754343 * v441) >> 32))) ^ __ROR4__(*(v81 + 4 * v440), 16) ^ __ROR4__(*(v81 + 4 * (295 * BYTE1(v415) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v415) + 98530)) >> 32))), 8);
  v450 = LODWORD(STACK[0x258]) ^ LODWORD(STACK[0x668]) ^ *(v81 + 4 * (295 * BYTE2(v415) + 98530 - 1144 * ((3754343 * (295 * BYTE2(v415) + 98530)) >> 32))) ^ ((HIWORD(v439) ^ 0x7C33C3AB) & ((v439 << 16) ^ 0xFDBFFFFF) | (v439 << 16) & 0x83CC0000) ^ __ROR4__(*(v81 + 4 * (295 * (v431 - 1) + 98530 - 1144 * ((3754343 * (295 * (v431 - 1) + 98530)) >> 32))), 8) ^ v446;
  v451 = LODWORD(STACK[0x254]) ^ v418 ^ (v442 + LODWORD(STACK[0x2D8]));
  LOBYTE(v437) = *(STACK[0xEA8] + ((BYTE2(v449) - 7) ^ 0x67));
  LOBYTE(v446) = (((v437 ^ 0x81) + 127) ^ ((v437 ^ 0xF5) + 11) ^ ((v437 ^ 0x32) - 50)) - 114;
  v452 = (v446 & 0xA0 | 0x14) ^ v446 & 0x68;
  LOBYTE(v439) = v446 ^ ((16 * ((v437 & 2) != 0)) | 0x45) ^ (2 * ((v446 ^ 0x20) & (2 * ((v446 ^ 0x20) & (2 * ((v446 ^ 0x20) & (2 * ((v446 ^ 0x20) & (2 * (v446 & (2 * v452) ^ v452)) ^ v452)) ^ v452)) ^ v452)) ^ v452));
  v453 = 295 * (-81 * (*(STACK[0xEB0] + (((16 * v451) ^ 0x4F) & (~(v451 >> 4) | 0xF0u) ^ LODWORD(STACK[0x3CC]) ^ 0x77)) ^ ((16 * v451) ^ 0x4F) & (~(v451 >> 4) | 0xF0) ^ LODWORD(STACK[0x3CC]) ^ 0xE6)) + 98530;
  v454 = 295 * (-51 * (*(STACK[0xEC8] + ((HIBYTE(v447) + 18) ^ 0xB9)) ^ 0xC1)) + 98530;
  v455 = 295 * ((v450 ^ 0x1A) + (v430 & 0x10A ^ 0xA8CA734E ^ (v430 & 0x14E ^ 0xA8CA7244) & (v430 | 0xA8CA7200)));
  v456 = LODWORD(STACK[0x3C8]) ^ LODWORD(STACK[0x758]) ^ *(v81 + 4 * (295 * BYTE2(v451) + 98530 - 1144 * ((3754343 * (295 * BYTE2(v451) + 98530)) >> 32))) ^ __ROR4__(*(v81 + 4 * (295 * (HIBYTE(v450) ^ 0x50) + 98530 - 1144 * ((3754343 * (295 * (HIBYTE(v450) ^ 0x50) + 98530)) >> 32))), 24) ^ __ROR4__(*(v81 + 4 * (295 * BYTE1(v447) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v447) + 98530)) >> 32))), 8) ^ __ROR4__(*(v81 + 4 * (295 * v449 + 98530 - 1144 * ((3754343 * (295 * v449 + 98530)) >> 32))), 16);
  v457 = LODWORD(STACK[0x250]) ^ LODWORD(STACK[0x674]) ^ __ROR4__(*(v81 + 4 * (295 * BYTE1(v449) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v449) + 98530)) >> 32))), 8) ^ __ROR4__(*(v81 + 4 * (295 * HIBYTE(v451) + 98530 - 1144 * ((3754343 * (295 * HIBYTE(v451) + 98530)) >> 32))), 24) ^ *(v81 + 4 * (295 * BYTE2(v447) + 98530 - 1144 * ((3754343 * (295 * BYTE2(v447) + 98530)) >> 32))) ^ __ROR4__(*(v81 + 4 * (v455 - 1144 * ((3754343 * v455) >> 32))), 16);
  LODWORD(v427) = __ROR4__(*(v81 + 4 * (295 * HIBYTE(v449) + 98530 - 1144 * ((3754343 * (295 * HIBYTE(v449) + 98530)) >> 32))), 24);
  v458 = *(v81 + 4 * (295 * BYTE1(v451) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v451) + 98530)) >> 32)));
  v459 = LODWORD(STACK[0x24C]) ^ LODWORD(STACK[0x768]) ^ v427 ^ (v458 << 24) ^ (v458 >> 8) ^ *(v81 + 4 * (295 * (BYTE2(v450) ^ 0x98) + 98530 - 1144 * ((3754343 * (295 * (BYTE2(v450) ^ 0x98u) + 98530)) >> 32))) ^ __ROR4__(*(v81 + 4 * (295 * v447 + 98530 - 1144 * ((3754343 * (295 * v447 + 98530)) >> 32))), 16);
  v460 = LODWORD(STACK[0x248]) ^ LODWORD(STACK[0x774]) ^ __ROR4__(*(v81 + 4 * (v453 - 1144 * ((3754343 * v453) >> 32))), 16) ^ __ROR4__(*(v81 + 4 * (v454 - 1144 * ((3754343 * v454) >> 32))), 24) ^ *(v81 + 4 * (295 * (-59 * v439) + 98530 - 1144 * ((3754343 * (295 * (-59 * v439) + 98530)) >> 32))) ^ __ROR4__(*(v81 + 4 * (295 * (BYTE1(v450) ^ 0x73) + 98530 - 1144 * ((3754343 * (295 * (BYTE1(v450) ^ 0x73u) + 98530)) >> 32))), 8);
  LOBYTE(v458) = *(STACK[0xE98] + ((((v457 >> 12) & 0xF0 | 0x2BCE9A08) & ((v457 >> 20) & 0xF ^ 0x7FDF9EF8) & 0xFFFFFFF8 | (v457 >> 20) & 7) ^ 0x2BCE9A85));
  LOBYTE(v453) = 45 - 81 * (((v458 ^ 0x71) + 94) ^ ((v458 ^ 0x62) + 79) ^ ((v458 ^ 0x23) + 16));
  v461 = v456 ^ 0x640F1703u;
  LOBYTE(v446) = *(STACK[0xEC8] + (((v456 ^ 3) + 18) ^ 0xB9));
  v462 = ((v446 ^ 0x2D) + 23) ^ ((v446 ^ 0x57) + 109) ^ ((v446 ^ 0xBB) - 127);
  LOBYTE(v446) = *(STACK[0xEB8] + ((((BYTE2(v459) ^ 0xC5) + 18) - ((2 * ((HIWORD(v459) ^ 0xC5) + 18)) & 0xE4) - 1588592270) ^ 0xA15001E3));
  LOBYTE(v446) = (((v446 ^ 0x3C) - 60) ^ ((v446 ^ 0xBC) + 68) ^ ((v446 ^ 0xC6) + 58)) + 15;
  LOBYTE(v451) = v446 & 7 ^ 0x2E;
  LOBYTE(v446) = v446 ^ (2 * ((v446 ^ 0x4A) & (2 * ((v446 ^ 0x4A) & (2 * ((v446 ^ 0x4A) & (2 * ((v446 ^ 0x4A) & (2 * ((v446 ^ 0x4A) & (2 * ((v446 ^ 0x4A) & (2 * v446) & 0x16 ^ v451)) ^ v451)) ^ v451)) ^ v451)) ^ v451)) ^ v451));
  LOBYTE(v440) = v446 ^ (v446 >> 4) ^ (v446 >> 1);
  v463 = *(STACK[0xEA0] + ((-5 * BYTE2(v460)) ^ 0xAFLL));
  LOBYTE(v451) = *(STACK[0xEA8] + ((HIBYTE(v457) - 7) ^ 0x67));
  LOBYTE(v439) = (((v451 ^ 0xD8) + 40) ^ ((v451 ^ 0xAF) + 81) ^ ((v451 ^ 0x31) - 49)) + 59;
  v464 = v439 & 0xC1 ^ 0x2B;
  v465 = 295 * ((((v463 >> 2) | (v463 << 6)) ^ (2 * ((v463 >> 2) | (v463 << 6))) & 0xE4 ^ 0x38) - 1) + 98530;
  v466 = 295 * (a72 - 51 * v462) + 98530;
  v467 = v439 ^ ((16 * ((v451 & 2) != 0)) | 0x4C) ^ (2 * ((v439 ^ 0x72) & (2 * ((v439 ^ 0x72) & (2 * ((v439 ^ 0x72) & (2 * ((v439 ^ 0x72) & (2 * ((v439 ^ 0x72) & (2 * (((2 * v439) & 0x66 ^ 0x32) & (v439 ^ 0x72) ^ v464)) ^ v464)) ^ v464)) ^ v464)) ^ v464)) ^ v464));
  v468 = 295 * (-51 * (v440 ^ 0xE4)) + 98530;
  v469 = 295 * (v461 >> ((v456 & 0x18 ^ 0x18) + (v456 & 0x18u))) + 98530;
  v470 = v469 - 1144 * ((3754343 * v469) >> 32);
  v471 = 295 * (-59 * v467) + 98530 - 1144 * ((3754343 * (295 * (-59 * v467) + 98530)) >> 32);
  v472 = 295 * v457 + 98530 - 1144 * ((3754343 * (295 * v457 + 98530)) >> 32);
  v473 = 295 * (BYTE1(v459) ^ 0x57) + 98530 - 1144 * ((3754343 * (295 * (BYTE1(v459) ^ 0x57u) + 98530)) >> 32);
  HIDWORD(v427) = *(v81 + 4 * v470);
  LODWORD(v427) = HIDWORD(v427);
  v474 = v427 >> 24;
  HIDWORD(v427) = *(v81 + 4 * (295 * BYTE1(v460) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v460) + 98530)) >> 32)));
  LODWORD(v427) = HIDWORD(v427);
  v475 = v474 ^ __ROR4__(*(v81 + 4 * (295 * (v459 ^ 0xEB) + 98530 - 1144 * ((3754343 * (295 * (v459 ^ 0xEBu) + 98530)) >> 32))), 16) ^ *(v81 + 4 * (295 * v453 + 98530 - 1144 * ((3754343 * (295 * v453 + 98530)) >> 32))) ^ 0x6C1ABEB5 ^ ((v427 >> 8) - ((2 * (v427 >> 8)) & 0xD8357D6A) + 1813692085);
  v476 = 295 * HIBYTE(v460) + 98530 - 1144 * ((3754343 * (295 * HIBYTE(v460) + 98530)) >> 32);
  v477 = LODWORD(STACK[0x244]) ^ LODWORD(STACK[0x7A0]) ^ __ROR4__(*(v81 + 4 * (295 * v460 + 98530 - 1144 * ((3754343 * (295 * v460 + 98530)) >> 32))), 16) ^ *(v81 + 4 * (295 * BYTE2(v461) + 98530 - 1144 * ((3754343 * (295 * BYTE2(v461) + 98530)) >> 32))) ^ __ROR4__(*(v81 + 4 * (295 * BYTE1(v457) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v457) + 98530)) >> 32))), 8) ^ __ROR4__(*(v81 + 4 * (295 * (HIBYTE(v459) ^ 0xBD) + 98530 - 1144 * ((3754343 * (295 * (HIBYTE(v459) ^ 0xBD) + 98530)) >> 32))), 24);
  v478 = *(v81 + 4 * (295 * BYTE1(v461) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v461) + 98530)) >> 32)));
  v479 = LODWORD(STACK[0x240]) ^ LODWORD(STACK[0x7F0]) ^ LODWORD(STACK[0x858]) ^ LODWORD(STACK[0x780]) ^ *(v81 + 4 * (v468 - 1144 * ((3754343 * v468) >> 32))) ^ (v478 >> 8) ^ (v478 << 24) ^ __ROR4__(*(v81 + 4 * v472), 16) ^ __ROR4__(*(v81 + 4 * v476), 24);
  v480 = LODWORD(STACK[0x3A0]) ^ LODWORD(STACK[0x790]) ^ (v475 + LODWORD(STACK[0x2D4]));
  v481 = v448 ^ LODWORD(STACK[0x23C]) ^ LODWORD(STACK[0xD08]) ^ LODWORD(STACK[0x798]) ^ *(v81 + 4 * (v465 - 1144 * ((3754343 * v465) >> 32))) ^ __ROR4__(*(v81 + 4 * (v466 - 1144 * ((3754343 * v466) >> 32))), 16) ^ __ROR4__(*(v81 + 4 * v471), 24) ^ __ROR4__(*(v81 + 4 * v473), 8);
  v482 = ((v480 >> 12) ^ 0xF4437B8) & ((v480 >> 4) & 0xF0 ^ 0xCFDFF7FF) | (v480 >> 4) & 0x40;
  LOBYTE(v461) = *(STACK[0xE98] + ((((v479 >> 4) & 0xF0 ^ 0xFFFFFFF3) & ((v479 >> 12) ^ 0xF5) | (v479 >> 12) & 0xC) ^ 0xELL));
  LOBYTE(v475) = ((v461 ^ 0xE8) + 58) ^ ((v461 ^ 0xAB) + 123) ^ ((v461 ^ 0x73) - 93);
  LOBYTE(v461) = *(STACK[0xEB0] + (v482 ^ 0xF44372B)) ^ ((v482 ^ 0xB8) - ((2 * (v482 ^ 0xB8)) & 0x5E) - 81) ^ 0xAD;
  LOBYTE(v482) = *(STACK[0xE98] + (((v480 >> 20) & 0xF0 | (v480 >> 28)) ^ 0x8DLL));
  v483 = STACK[0xEB8];
  LOBYTE(v465) = *(STACK[0xEB8] + (((v477 ^ 0xD) + 18) ^ 0x91));
  LOBYTE(v465) = (((v465 ^ 0x6C) - 108) ^ ((v465 ^ 0xE5) + 27) ^ ((v465 ^ 0xCF) + 49)) + 37;
  LOBYTE(v466) = v465 & 0x6D ^ 0x7C;
  LOBYTE(v465) = v465 ^ (2 * ((v465 ^ 0x34) & (2 * ((v465 ^ 0x34) & (2 * ((v465 ^ 0x34) & (2 * ((v465 ^ 0x34) & (2 * ((v465 ^ 0x34) & (2 * (v465 & (2 * v465) & 0x6A ^ v466)) ^ v466)) ^ v466)) ^ v466)) ^ v466)) ^ v466));
  LOBYTE(v466) = *(STACK[0xEB8] + (((HIBYTE(v481) ^ 0x67) + 18) ^ 0x91));
  LOBYTE(v466) = (((v466 ^ 0xDA) + 38) ^ ((v466 ^ 0x6D) - 109) ^ ((v466 ^ 0xF1) + 15)) + 28;
  LOBYTE(v451) = v466 & 0xB2 ^ 0x8A;
  LOBYTE(v466) = v466 ^ (2 * ((v466 ^ 0x3C) & (2 * ((v466 ^ 0x3C) & (2 * ((v466 ^ 0x3C) & (2 * ((v466 ^ 0x3C) & (2 * ((v466 ^ 0x3C) & (2 * v451) ^ v451)) ^ v451)) ^ v451)) ^ v451)) ^ v451));
  LOBYTE(v473) = v466 ^ (v466 >> 4) ^ (v466 >> 1);
  v484 = 295 * BYTE2(v480) + 98530 - 1144 * ((3754343 * (295 * BYTE2(v480) + 98530)) >> 32);
  v485 = 295 * (-51 * (v465 ^ (((((((v465 & 0xF8) >> 3) ^ 0xD) - 2 * ((((v465 & 0xF8) >> 3) ^ 0xD) & 1) - 127) ^ v465) & 0xFE) >> 1) ^ 0xFB)) + 98530;
  v486 = 295 * (LODWORD(STACK[0x510]) - 81 * v475) + 98530;
  v487 = v486 - 1144 * ((3754343 * v486) >> 32);
  v488 = 295 * (HIBYTE(v479) ^ 0x57) + 98530 - 1144 * ((3754343 * (295 * (HIBYTE(v479) ^ 0x57) + 98530)) >> 32);
  v489 = 295 * (BYTE2(v481) ^ 0xB6) + 98530 - 1144 * ((3754343 * (295 * (BYTE2(v481) ^ 0xB6u) + 98530)) >> 32);
  v490 = 295 * (BYTE2(v479) ^ 0x95) + 98530 - 1144 * ((3754343 * (295 * (BYTE2(v479) ^ 0x95u) + 98530)) >> 32);
  LODWORD(v482) = 295 * (LODWORD(STACK[0xD78]) - 81 * (((v482 ^ 0xED) - 24) ^ ((v482 ^ 0xC6) - 51) ^ ((v482 ^ 0x1B) + 18))) + 98530;
  v491 = 295 * (BYTE1(v481) ^ 0xF2) + 98530 - 1144 * ((3754343 * (295 * (BYTE1(v481) ^ 0xF2u) + 98530)) >> 32);
  v492 = *(v81 + 4 * (295 * (v481 ^ 0xC6) + 98530 - 1144 * ((3754343 * (295 * (v481 ^ 0xC6u) + 98530)) >> 32)));
  v493 = (((((v479 ^ 0xD1) + 334) & 0xB7) + (((v479 ^ 0xD1) + 334) & 0xB7 ^ 0xB7) + 112) & 0x1AF) * ((v479 ^ 0xD1) + 334);
  v494 = *(v81 + 4 * (295 * v480 + 98530 - 1144 * ((3754343 * (295 * v480 + 98530)) >> 32)));
  HIDWORD(v427) = *(v81 + 4 * (295 * (HIBYTE(v477) ^ 6) + 98530 - 1144 * ((3754343 * (295 * (HIBYTE(v477) ^ 6) + 98530)) >> 32)));
  LODWORD(v427) = HIDWORD(v427);
  LODWORD(v482) = LODWORD(STACK[0xBD0]) ^ LODWORD(STACK[0xC40]) ^ __ROR4__(*(v81 + 4 * (v485 - 1144 * ((3754343 * v485) >> 32))), 16) ^ __ROR4__(*(v81 + 4 * v487), 8) ^ *(v81 + 4 * v489) ^ __ROR4__(*(v81 + 4 * (v482 - 1144 * ((3754343 * v482) >> 32))), 24);
  v495 = LODWORD(STACK[0x748]) - LODWORD(STACK[0xC4C]) + (*(v81 + 4 * v490) ^ __ROR4__(*(v81 + 4 * (295 * (BYTE1(v477) ^ 0xD4) + 98530 - 1144 * ((3754343 * (295 * (BYTE1(v477) ^ 0xD4u) + 98530)) >> 32))), 8) ^ __ROR4__(*(v81 + 4 * (295 * (-51 * v473) + 98530 - 1144 * ((3754343 * (295 * (-51 * v473) + 98530)) >> 32))), 24) ^ (v494 << 16) ^ (HIWORD(v494) - ((v494 >> 15) & 0xC1CC) - 999661338) ^ 0xC46A60E6);
  v496 = LODWORD(STACK[0x7B0]) ^ LODWORD(STACK[0xAD0]) ^ (LODWORD(STACK[0xC50]) - LODWORD(STACK[0xE88]) - LODWORD(STACK[0x9E0]) + LODWORD(STACK[0x9D0]) + 1550406253 + (*(v81 + 4 * v484) ^ __ROR4__(*(v81 + 4 * v491), 8) ^ __ROR4__(*(v81 + 4 * (v493 - 1144 * ((3754343 * v493) >> 32))), 16) ^ ((v427 >> 24) - ((2 * (v427 >> 24)) & 0xF697F312) - 78906999) ^ 0xFB4BF989));
  v497 = LODWORD(STACK[0xC40]) ^ LODWORD(STACK[0xAD0]) ^ LODWORD(STACK[0xD18]) ^ LODWORD(STACK[0x7A8]) ^ __ROR4__(*(v81 + 4 * v488), 24) ^ __ROR4__(*(v81 + 4 * (295 * (-81 * v461) + 98530 - 1144 * ((3754343 * (295 * (-81 * v461) + 98530)) >> 32))), 8) ^ *(v81 + 4 * (295 * (BYTE2(v477) ^ 0xC6) + 98530 - 1144 * ((3754343 * (295 * (BYTE2(v477) ^ 0xC6u) + 98530)) >> 32))) ^ ((HIWORD(v492) ^ 0x4195E009) & ((v492 << 16) ^ 0x5BF7FFFF) | (v492 << 16) & 0xBE6A0000);
  v498 = LODWORD(STACK[0x888]) ^ LODWORD(STACK[0xAD0]) ^ (LODWORD(STACK[0x9D8]) - LODWORD(STACK[0xD58]) + LODWORD(STACK[0xB28]) + LODWORD(STACK[0xC4C]) + 1391721572 + v482);
  v499 = LODWORD(STACK[0x7B8]) ^ LODWORD(STACK[0xAD0]) ^ v495;
  LODWORD(v461) = ((((v499 >> 8) ^ 0x40) + 28) ^ (((v499 >> 8) ^ 0xFFFFFF9E) - 58) ^ (((v499 >> 8) ^ 0xFFFFFFDE) - 122)) - 34;
  LODWORD(v482) = LODWORD(STACK[0x9D0]) ^ LODWORD(STACK[0xE78]) ^ v497;
  v500 = (v482 ^ 0xAE21F2F5) >> ((v496 & 8 ^ 8) + (v496 & 8));
  LOBYTE(v487) = *(STACK[0xEA8] + ((HIBYTE(v498) - 7) ^ 0x67));
  LOBYTE(v489) = (((v487 ^ 5) - 5) ^ ((v487 ^ 0xE9) + 23) ^ ((v487 ^ 0xAA) + 86)) + 105;
  v501 = v489 & 0xE1 | 0x16;
  LOBYTE(v487) = v489 ^ ((16 * ((v487 & 2) != 0)) | 0x6C) ^ (2 * ((v489 ^ 0x44) & (2 * ((v489 ^ 0x44) & (2 * ((v489 ^ 0x44) & (2 * ((v489 ^ 0x44) & (2 * ((v489 ^ 0x44) & (2 * ((v489 ^ 0x44) & (2 * (v489 & 0xE1)) ^ v501)) ^ v501)) ^ v501)) ^ v501)) ^ v501)) ^ v501));
  LOBYTE(v484) = *(STACK[0xEB8] + (((HIBYTE(v497) ^ 0xAE) + 18) ^ 0x91));
  LOBYTE(v484) = (((v484 ^ 0xF) - 15) ^ ((v484 ^ 0x85) + 123) ^ ((v484 ^ 0xCC) + 52)) + 37;
  LOBYTE(v489) = v484 & 0xD3 ^ 0x97;
  LOBYTE(v484) = v484 ^ (2 * ((v484 ^ 0x34) & (2 * ((v484 ^ 0x34) & (2 * ((v484 ^ 0x34) & (2 * ((v484 ^ 0x34) & (2 * ((v484 ^ 0x34) & (2 * (((2 * v484) & 0x6A ^ 0x66) & v484 ^ v489)) ^ v489)) ^ v489)) ^ v489)) ^ v489)) ^ v489));
  v502 = ((v499 >> 28) | 0xBA6FDC60) & (~(v499 >> 20) | 0xFFFFFF9F) | (v499 >> 20) & 0x90;
  v503 = 295 * (((4 * (v498 >> 10)) ^ 0x7C) & 0xF0 ^ (((4 * (v498 >> 10)) ^ 0x7C) & 8 | 0x800200C1) ^ ((4 * (v498 >> 10)) ^ 0x7C | 0xFFFFFFF3) & ((v498 >> 8) & 3 | 0x2144CD34) ^ 0xA146CD8D) + 98530;
  v504 = 295 * ((v500 - ((2 * v500) & 0x1C) - 114) ^ 0x8E) + 98530;
  v505 = v504 - 1144 * ((3754343 * v504) >> 32);
  v506 = a70 - 81 * (*(STACK[0xEB0] + (v502 ^ 0xBA6FDCF3)) ^ ((v502 ^ 0x60) - 2 * ((v502 ^ 0x60) & 0x2F ^ ((v499 >> 28) | 0xBA6FDC60) & (~(v499 >> 20) | 0xFFFFFF9F) & 4) - 85) ^ 0xFFFFFFA9);
  LOBYTE(v502) = v506 & 0xFA ^ 0xD5;
  LOBYTE(v435) = v506 ^ (2 * ((v506 ^ 0x50) & (2 * ((v506 ^ 0x50) & (2 * ((v506 ^ 0x50) & (2 * ((v506 ^ 0x50) & (2 * ((v506 ^ 0x50) & (2 * ((v506 ^ 0x50) & (2 * v502) ^ v502)) ^ v502)) ^ v502)) ^ v502)) ^ v502)) ^ v502));
  v507 = 295 * (-59 * v487) + 98530 - 1144 * ((3754343 * (295 * (-59 * v487) + 98530)) >> 32);
  v508 = 295 * (-51 * (v484 ^ (v484 >> 4) ^ (v484 >> 1) ^ 0x57)) + 98530;
  v509 = *(v81 + 4 * (v508 - 1144 * ((3754343 * v508) >> 32)));
  v510 = *(STACK[0xEA0] + ((-5 * HIBYTE(v509)) ^ 0xAFLL));
  v511 = ((((v510 >> 2) | (v510 << 6)) ^ (2 * ((v510 >> 2) | (v510 << 6))) & 0xE4 ^ 0x38) - 1) | (v509 << 8);
  LODWORD(v461) = 295 * (-51 * (*(STACK[0xEC8] + ((v461 ^ (2 * (((2 * (((2 * (((2 * (v461 ^ 0x18)) & 0x50 | 0x28) & (v461 ^ 0x18))) ^ 0x28) & (v461 ^ 0x18))) ^ 0x68) & (v461 ^ 0x58)))) ^ 0xD1u)) ^ 0xC1)) + 98530;
  v512 = v461 - 1144 * ((3754343 * v461) >> 32);
  v513 = LODWORD(STACK[0x238]) ^ LODWORD(STACK[0x7D0]) ^ __ROR4__(*(v81 + 4 * (295 * BYTE1(v496) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v496) + 98530)) >> 32))), 8) ^ __ROR4__(*(v81 + 4 * (295 * v498 + 98530 - 1144 * ((3754343 * (295 * v498 + 98530)) >> 32))), 16) ^ __ROR4__(*(v81 + 4 * ((295 * (((v435 ^ 0xA0845203) + 1601940754) ^ ((v435 ^ 0xF03DD13A) + 264384041) ^ ((v435 ^ 0x50B983C3) - 1354335022)) + 105315) % 0x478)), 24) ^ *(v81 + 4 * (295 * (BYTE2(v497) ^ 0x21) + 98530 - 1144 * ((3754343 * (295 * (BYTE2(v497) ^ 0x21u) + 98530)) >> 32))) ^ 0xE5FD9DDB;
  v514 = (v513 >> 8) - ((v513 >> 7) & 0x36) + 27;
  LOBYTE(v509) = (((v514 ^ 0xB1) + 79) ^ ((v514 ^ 8) - 8) ^ ((v514 ^ 0xA2) + 94)) + 116;
  LOBYTE(v514) = v509 & 0x8C ^ 0x36;
  LOBYTE(v510) = (v509 ^ 0x20) & (2 * ((v509 ^ 0x20) & (2 * ((v509 ^ 0x20) & (2 * ((v509 ^ 0x20) & (2 * ((v509 ^ 0x20) & 0x2C ^ v514)) ^ v514)) ^ v514)) ^ v514)) ^ v514;
  LODWORD(v461) = LODWORD(STACK[0x234]) ^ LODWORD(STACK[0x7C8]) ^ __ROR4__(*(v81 + 4 * v505), 8) ^ __ROR4__(*(v81 + 4 * v507), 24) ^ *(v81 + 4 * (295 * BYTE2(v499) + 98530 - 1144 * ((3754343 * (295 * BYTE2(v499) + 98530)) >> 32))) ^ __ROR4__(*(v81 + 4 * (295 * v496 + 98530 - 1144 * ((3754343 * (295 * v496 + 98530)) >> 32))), 16);
  v515 = LODWORD(STACK[0x230]) ^ LODWORD(STACK[0x7D8]) ^ __ROR4__(*(v81 + 4 * ((295 * (((HIBYTE(v496) ^ 0xB618C41D) + 918886333) ^ ((HIBYTE(v496) ^ 0x889426A3) + 139064579) ^ ((HIBYTE(v496) ^ 0x3E8CE2BE) - 1101975264)) - 2141019852) % 0x478)), 24) ^ __ROR4__(*(v81 + 4 * v512), 8) ^ __ROR4__(*(v81 + 4 * (295 * (v482 ^ 0xF5) + 98530 - 1144 * ((3754343 * (295 * (v482 ^ 0xF5u) + 98530)) >> 32))), 16) ^ *(v81 + 4 * (295 * BYTE2(v498) + 98530 - 1144 * ((3754343 * (295 * BYTE2(v498) + 98530)) >> 32))) ^ 0x91786107;
  v516 = *(v81 + 4 * (v503 - 1144 * ((3754343 * v503) >> 32)));
  v517 = STACK[0x7C0];
  v518 = LODWORD(STACK[0x22C]) ^ LODWORD(STACK[0x7E0]) ^ (v516 >> 8) ^ (v516 << (((LODWORD(STACK[0x9E8]) - 1) ^ LODWORD(STACK[0x7C0])) & 0x18)) ^ v511 ^ __ROR4__(*(v81 + 4 * (295 * v499 + 98530 - 1144 * ((3754343 * (295 * v499 + 98530)) >> 32))), 16) ^ *(v81 + 4 * (295 * BYTE2(v496) + 98530 - 1144 * ((3754343 * (295 * BYTE2(v496) + 98530)) >> 32)));
  v519 = 295 * (((v518 >> 23) & 0x9C ^ 8) + (HIBYTE(v518) ^ 0x1FA));
  LODWORD(v482) = LODWORD(STACK[0x398]) ^ LODWORD(STACK[0x868]) ^ __ROR4__(*(v81 + 4 * (295 * (BYTE1(v461) ^ 0x8C) + 98530 - 1144 * ((3754343 * (295 * (BYTE1(v461) ^ 0x8Cu) + 98530)) >> 32))), 8) ^ *(v81 + 4 * (295 * BYTE2(v515) + 98530 - 1144 * ((3754343 * (295 * BYTE2(v515) + 98530)) >> 32))) ^ __ROR4__(*(v81 + 4 * (v519 - 1144 * ((3754343 * v519) >> 32))), 24) ^ __ROR4__(*(v81 + 4 * (295 * v513 + 98530 - 1144 * ((3754343 * (295 * v513 + 98530)) >> 32))), 16);
  v520 = STACK[0xE90];
  v521 = 295 * (((((-5 * BYTE2(v513) - ((-10 * BYTE2(v513)) & 0x9E) - 49) ^ 0x82) - ((2 * (-5 * BYTE2(v513) - ((-10 * BYTE2(v513)) & 0x9E) - 49)) & 8) - 124) ^ 0x4B ^ *(STACK[0xE90] + (((-5 * BYTE2(v513)) - ((502 * HIWORD(v513)) & 0x19E) - 84075313) ^ 0xFAFD1CE9))) - 1) + 98530;
  v522 = LODWORD(STACK[0x228]) ^ LODWORD(STACK[0x880]) ^ __ROR4__(*(v81 + 4 * (295 * (BYTE3(v461) ^ 0x82) + 98530 - 1144 * ((3754343 * (295 * (BYTE3(v461) ^ 0x82) + 98530)) >> 32))), 24) ^ __ROR4__(*(v81 + 4 * (295 * v515 + 98530 - 1144 * ((3754343 * (295 * v515 + 98530)) >> 32))), 16);
  LODWORD(v427) = __ROR4__(*(v81 + 4 * (295 * (BYTE1(v518) ^ 0xC1) + 98530 - 1144 * ((3754343 * (295 * (BYTE1(v518) ^ 0xC1u) + 98530)) >> 32))), 8);
  v523 = v522 ^ v427 ^ *(v81 + 4 * (v521 - 1144 * ((3754343 * v521) >> 32)));
  v524 = 295 * ((v522 ^ v427 ^ *(v81 + 4 * (v521 - 1144 * ((3754343 * v521) >> 32)))) ^ 0xD3) + 98530;
  LODWORD(v482) = v482 ^ 0xB01AA7E0;
  LOBYTE(v503) = *(STACK[0xEC0] + ((v509 ^ (2 * v510)) ^ 0x14u));
  v525 = 295 * (-59 * (((v503 ^ 0xD6) + 24) ^ ((v503 ^ 0x55) - 107) ^ ((v503 ^ 0xE8) + 42)) + 105) + 98530;
  v526 = LODWORD(STACK[0x224]) ^ LODWORD(STACK[0x890]) ^ *(v81 + 4 * (295 * (BYTE2(v461) ^ 3) + 98530 - 1144 * ((3754343 * (295 * (BYTE2(v461) ^ 3u) + 98530)) >> 32))) ^ __ROR4__(*(v81 + 4 * (v525 - 1144 * ((3754343 * v525) >> 32))), 8) ^ __ROR4__(*(v81 + 4 * (295 * HIBYTE(v515) + 98530 - 1144 * ((3754343 * (295 * HIBYTE(v515) + 98530)) >> 32))), 24) ^ __ROR4__(*(v81 + 4 * (295 * (v518 ^ 0x9D) + 98530 - 1144 * ((3754343 * (295 * (v518 ^ 0x9Du) + 98530)) >> 32))), 16);
  v527 = LODWORD(STACK[0x394]) ^ LODWORD(STACK[0x898]) ^ *(v81 + 4 * (295 * (BYTE2(v518) ^ 0x7A) + 98530 - 1144 * ((3754343 * (295 * (BYTE2(v518) ^ 0x7Au) + 98530)) >> 32))) ^ __ROR4__(*(v81 + 4 * (295 * (v461 ^ 0x7D) + 98530 - 1144 * ((3754343 * (295 * (v461 ^ 0x7Du) + 98530)) >> 32))), 16) ^ __ROR4__(*(v81 + 4 * (295 * HIBYTE(v513) + 98530 - 1144 * ((3754343 * (295 * HIBYTE(v513) + 98530)) >> 32))), 24);
  LODWORD(v427) = __ROR4__(*(v81 + 4 * (295 * BYTE1(v515) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v515) + 98530)) >> 32))), 8);
  LODWORD(v461) = v527 ^ v427 ^ 0x1843450C;
  v528 = (v527 ^ v427) ^ 0xC;
  v529 = 295 * (((-5 * (BYTE1(v523) ^ 0xEF) - ((-10 * (BYTE1(v523) ^ 0xEF)) & 0x14) - 118) ^ *(STACK[0xE90] + ((-5 * (BYTE1(v523) ^ 0xEF)) ^ 0x26)) ^ 8) - 1) + 98530;
  v530 = 295 * BYTE2(v526);
  v531 = *(v81 + 4 * (v529 - 1144 * ((3754343 * v529) >> 32)));
  v532 = a73 ^ LODWORD(STACK[0x930]) ^ __ROR4__(*(v81 + 4 * (295 * BYTE3(v482) + 98530 - 1144 * ((3754343 * (295 * BYTE3(v482) + 98530)) >> 32))), 24) ^ *(v81 + 4 * (v530 + 98530 - 1144 * ((3754343 * (v530 + 98530)) >> 32))) ^ __ROR4__(*(v81 + 4 * (295 * (v528 + 334) - 1144 * ((3754343 * (295 * (v528 + 334))) >> 32))), 16) ^ (v531 >> 8) ^ (v531 << (((v530 - 30) ^ (29 - v530)) & 0x18));
  LODWORD(STACK[0x9E0]) = v532;
  v533 = 295 * (BYTE1(v526) - ((-335 - v528) & 0xFFFFFEB2 ^ (v528 + 334) & 0x2B2));
  LOBYTE(v530) = *(v483 + ((v482 + 18) ^ 0x91));
  LOBYTE(v530) = (((v530 ^ 0xE2) + 30) ^ ((v530 ^ 0xB4) + 76) ^ ((v530 ^ 0x10) - 16)) + 33;
  LOBYTE(v502) = v530 & 0xF3 ^ 0x2D;
  LOBYTE(v530) = v530 ^ (2 * ((v530 ^ 0x38) & (2 * ((v530 ^ 0x38) & (2 * ((v530 ^ 0x38) & (2 * ((v530 ^ 0x38) & (2 * ((v530 ^ 0x38) & (2 * (((2 * v530) & 0x72 ^ 0x4A) & (v530 ^ 0x38) ^ v502)) ^ v502)) ^ v502)) ^ v502)) ^ v502)) ^ v502));
  v534 = 295 * (-51 * (v530 ^ (v530 >> 4) ^ (v530 >> 1) ^ 0x65)) + 98530;
  v535 = a66 ^ LODWORD(STACK[0x910]) ^ *(v81 + 4 * (295 * (BYTE2(v523) ^ 0xEE) + 98530 - 1144 * ((3754343 * (295 * (BYTE2(v523) ^ 0xEEu) + 98530)) >> 32))) ^ __ROR4__(*(v81 + 4 * (295 * HIBYTE(v526) + 98530 - 1144 * ((3754343 * (295 * HIBYTE(v526) + 98530)) >> 32))), 24) ^ __ROR4__(*(v81 + 4 * (295 * BYTE1(v461) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v461) + 98530)) >> 32))), 8) ^ __ROR4__(*(v81 + 4 * (v534 - 1144 * ((3754343 * v534) >> 32))), 16);
  v536 = a65 ^ LODWORD(STACK[0x950]) ^ __ROR4__(*(v81 + 4 * (295 * (HIBYTE(v523) ^ 0xFD) + 98530 - 1144 * ((3754343 * (295 * (HIBYTE(v523) ^ 0xFD) + 98530)) >> 32))), 24) ^ __ROR4__(*(v81 + 4 * (295 * BYTE1(v482) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v482) + 98530)) >> 32))), 8) ^ *(v81 + 4 * (295 * BYTE2(v461) + 98530 - 1144 * ((3754343 * (295 * BYTE2(v461) + 98530)) >> 32)));
  LODWORD(v427) = __ROR4__(*(v81 + 4 * (295 * v526 + 98530 - 1144 * ((3754343 * (295 * v526 + 98530)) >> 32))), 16);
  v537 = v536 ^ v427;
  v538 = a71 ^ LODWORD(STACK[0x8A8]) ^ __ROR4__(*(v81 + 4 * (v524 - 1144 * ((3754343 * v524) >> 32))), 16) ^ __ROR4__(*(v81 + 4 * (v533 - 1144 * ((3754343 * v533) >> 32))), 8) ^ *(v81 + 4 * (295 * BYTE2(v482) + 98530 - 1144 * ((3754343 * (295 * BYTE2(v482) + 98530)) >> 32))) ^ (((*(v520 + ((-5 * HIBYTE(*(v81 + 4 * (295 * BYTE3(v461) + 98530 - 1144 * ((3754343 * (295 * BYTE3(v461) + 98530)) >> 32))))) ^ 0x26)) ^ (-5 * HIBYTE(*(v81 + 4 * (295 * BYTE3(v461) + 98530 - 1144 * ((3754343 * (295 * BYTE3(v461) + 98530)) >> 32)))) + (~(-10 * HIBYTE(*(v81 + 4 * (295 * BYTE3(v461) + 98530 - 1144 * ((3754343 * (295 * BYTE3(v461) + 98530)) >> 32))))) | 0x65) - 50) ^ 0x4F) - 1) | (*(v81 + 4 * (295 * BYTE3(v461) + 98530 - 1144 * ((3754343 * (295 * BYTE3(v461) + 98530)) >> 32))) << 8));
  v539 = STACK[0x978];
  LODWORD(v461) = *(v81 + 4 * (295 * HIBYTE(v538) + 197060 - 1144 * ((3754343 * (295 * HIBYTE(v538) + 197060)) >> 32)));
  v540 = LODWORD(STACK[0x8A0]) ^ LODWORD(STACK[0x978]) ^ __ROR4__(__ROR4__(__ROR4__(*(v81 + 4 * (295 * (BYTE2(v532) ^ 0xEF) + 197060 - 1144 * ((3754343 * (295 * (BYTE2(v532) ^ 0xEFu) + 197060)) >> 32))) ^ 0x4AF97AE5, 14) ^ 0x11165A24, 18) ^ 0x1028B3A6, 24) ^ __ROR4__(*(v81 + 4 * (295 * (v536 ^ v427) + 197060 - 1144 * ((3754343 * (295 * (v536 ^ v427) + 197060)) >> 32))), 8) ^ (v461 << 16) ^ *(v81 + 4 * (295 * (BYTE1(v535) ^ 0xA0) + 197060 - 1144 * ((3754343 * (295 * (BYTE1(v535) ^ 0xA0u) + 197060)) >> 32))) ^ WORD1(v461);
  v541 = STACK[0xD00];
  v542 = v540 ^ (((v540 ^ 0x58CD06CC) & STACK[0xD00]) >> 1);
  v543 = (((v542 ^ 0x85DF8197) & STACK[0xCF0] | LODWORD(STACK[0x2AC])) ^ 0xDD12875B) << STACK[0xDA8];
  v544 = STACK[0xDA8];
  v545 = STACK[0xD30];
  v546 = STACK[0xB10];
  v547 = ((v542 ^ 0x58CD06CC) & STACK[0xD30]) >> STACK[0xB10];
  LODWORD(v547) = a53 ^ (v543 - ((2 * v543) & 0xFC473452) + 2116262441) ^ (v547 - ((2 * v547) & 0xF5C5F97E) - 85787457);
  v548 = (v547 & STACK[0x740]) >> STACK[0x998];
  v549 = STACK[0x998];
  LODWORD(v547) = ((v548 - ((2 * v548) & 0xD2195602) - 385045759) ^ 0xE90CAB01) + ((v547 & STACK[0x2C0]) << STACK[0x840] << STACK[0x848]);
  v550 = STACK[0x980];
  LODWORD(v547) = STACK[0x980] & (((v547 ^ ((v547 & v541) >> 1)) & v541) >> 2) ^ v547 ^ ((v547 & v541) >> 1);
  v551 = STACK[0x980] & LODWORD(STACK[0xD00]);
  LODWORD(STACK[0xB28]) = v551 >> 2;
  v552 = LODWORD(STACK[0xA3C]) ^ v547 ^ (v551 >> 2) & ((v547 & v541) >> 4) & v550 ^ 0x20202020;
  v553 = v517;
  v554 = (v517 & 0x18) == 0;
  v555 = LODWORD(STACK[0xDA0]) >> (v517 & 0x18);
  v556 = STACK[0xE78];
  v557 = STACK[0xDA0];
  v558 = v555 + (LODWORD(STACK[0xDA0]) << LODWORD(STACK[0xE78]));
  if (v554)
  {
    v560 = v552;
  }

  else
  {
    v559 = (v552 << LODWORD(STACK[0xC4C])) - ((2 * (v552 << LODWORD(STACK[0xC4C]))) & 0x53AF07E) - 2103609281;
    v560 = v559 & 0x4F49C0FB ^ 0xB2BF7F3F ^ (((v552 >> LODWORD(STACK[0xE88])) - ((2 * (v552 >> LODWORD(STACK[0xE88]))) & 0x3EA2E11C) - 1622052722) ^ 0x2FE74F8A) & (v559 ^ 0x7D6287C0);
  }

  LODWORD(STACK[0xD58]) = v560;
  v561 = STACK[0x9E0];
  v563 = *(v81 + 4 * (295 * (HIBYTE(v561) ^ 0x73) + 197060 - 1144 * ((3754343 * (295 * (HIBYTE(v561) ^ 0x73) + 197060)) >> 32)));
  if (v554)
  {
    v564 = v557;
  }

  else
  {
    v564 = v558;
  }

  v562 = 295 * (BYTE2(v535) ^ 0x6F) + 197060 - 1144 * ((3754343 * (295 * (BYTE2(v535) ^ 0x6Fu) + 197060)) >> 32);
  v565 = v564 ^ v539 ^ *(v81 + 4 * (295 * BYTE1(v537) + 197060 - 1144 * ((3754343 * (295 * BYTE1(v537) + 197060)) >> 32))) ^ __ROR4__(v563, 16) ^ (*(v81 + 4 * v562) << 8) ^ HIBYTE(*(v81 + 4 * v562));
  v566 = __ROR4__(*(v81 + 4 * (295 * v538 + 197060 - 1144 * ((3754343 * (295 * v538 + 197060)) >> 32))), 8);
  v567 = STACK[0xDF8];
  v568 = v565 ^ v566 ^ (((v565 ^ v566) & STACK[0xDF8]) >> 1);
  v569 = STACK[0xE68];
  v570 = (((v568 ^ 0x7296F857) & STACK[0xE68] | LODWORD(STACK[0x298])) ^ 0x7296F857) << v549;
  v571 = v549;
  v572 = (v568 & STACK[0xE08]) >> v546;
  v573 = LODWORD(STACK[0xD38]) ^ (v572 - ((2 * v572) & 0xBBA41F7E) - 573435969) ^ (v570 - ((2 * v570) & 0x5E59CE8) - 2098016652) ^ 0xEA95747E;
  v574 = (v573 & STACK[0x738]) >> v544;
  v575 = v544;
  v576 = v553 & 0x18;
  v577 = STACK[0xCD0];
  v578 = (v577 >> (v553 & 0x18)) + (v577 << v556);
  v579 = (v574 - ((2 * v574) & 0x423F63E) + 34732831) ^ ((v573 & STACK[0x2C8]) << STACK[0x718] << STACK[0x710]);
  v580 = v550 & (((v579 ^ (((v579 ^ 0x211FB1E) & v541) >> 1) ^ 0x211FB1C) & v541) >> 2) ^ v579 ^ (((v579 ^ 0x211FB1E) & v541) >> 1);
  v581 = (105 * ((HIWORD(v563) & 0x6D ^ 0x6D) + (HIWORD(v563) & 0x6D))) ^ 0xC733161A;
  v582 = LODWORD(STACK[0x924]) ^ v580 ^ ((((v551 & (((v580 ^ 0x211FB18) & v541) >> 2)) >> (v581 & 0x17 ^ 6) >> (v581 & 0xE8 ^ 0xA8)) & v541) >> 1) ^ 0x4A59B357;
  if ((v553 & 0x18) != 0)
  {
    v582 = (v582 >> v556) + (v582 << (v553 & 0x18));
  }

  LODWORD(STACK[0xC60]) = v582;
  v583 = LODWORD(STACK[0x940]) ^ v539 ^ *(v81 + 4 * (295 * BYTE1(v538) + 197060 - 1144 * ((3754343 * (295 * BYTE1(v538) + 197060)) >> 32))) ^ __ROR4__(*(v81 + 4 * (295 * (v561 ^ 0x40) + 197060 - 1144 * ((3754343 * (295 * (v561 ^ 0x40u) + 197060)) >> 32))), 8) ^ __ROR4__(*(v81 + 4 * (295 * (HIBYTE(v535) ^ 0x8C) + 197060 - 1144 * ((3754343 * (295 * (HIBYTE(v535) ^ 0x8C) + 197060)) >> 32))), 16);
  v584 = __ROR4__(*(v81 + 4 * (295 * BYTE2(v537) + 197060 - 1144 * ((3754343 * (295 * BYTE2(v537) + 197060)) >> 32))), 24);
  v585 = v583 ^ v584 ^ (((v583 ^ v584) & v541) >> 1);
  v586 = (((v585 ^ 0xB0C231CF) & v569 | LODWORD(STACK[0x29C])) ^ 0xB0C231CF) << v575;
  v587 = a52 ^ (((v586 - ((2 * v586) & 0xB34AC6AA) - 643472555) ^ 0xD9A56355) + ((v585 & v545) >> STACK[0x580] >> STACK[0x588]));
  v588 = (((v587 & STACK[0x740]) >> v571) - ((2 * ((v587 & STACK[0x740]) >> v571)) & 0x1C4909D8) - 1910209300) ^ (((v587 & STACK[0x44C]) << v546) - ((2 * ((v587 & STACK[0x44C]) << v546)) & 0xA641C2AE) + 1394663767);
  v589 = STACK[0xBF8];
  v590 = STACK[0xBF8] & (((v588 ^ (((v588 ^ 0xDD0465BA) & v567) >> 1) ^ 0xDD0465B8) & v567) >> 2) ^ v588 ^ (((v588 ^ 0xDD0465BA) & v567) >> 1);
  v591 = (STACK[0xBF8] & v567) >> 2;
  v592 = v591;
  LODWORD(STACK[0x9E8]) = v591;
  v593 = LODWORD(STACK[0xA3C]) ^ v590 ^ 0xFD24459B ^ v591 & (((v590 ^ 0xDD0465B0) & v567) >> 4) & v589;
  if ((v553 & 0x18) == 0)
  {
    v578 = v577;
  }

  if ((STACK[0xC24] & 0x18) != 0)
  {
    v594 = (v593 << v576) - ((2 * (v593 << v576)) & 0xA2589B06);
    v595 = (v594 - 785625725) & 0x19BFC8EB ^ 0xF76C7F97 ^ (((v593 >> LODWORD(STACK[0xE88])) - ((2 * (v593 >> LODWORD(STACK[0xE88]))) & 0xC8F71B7A) + 1685818813) ^ 0x823BBAA9) & ((v594 - 785625725) ^ 0x2ED3B27C);
  }

  else
  {
    v595 = v593;
  }

  LODWORD(STACK[0xE88]) = v595;
  v596 = v578 ^ v539 ^ *(v81 + 4 * (295 * (BYTE1(v561) ^ 0x59) + 197060 - 1144 * ((3754343 * (295 * (BYTE1(v561) ^ 0x59u) + 197060)) >> 32))) ^ __ROR4__(*(v81 + 4 * (295 * BYTE2(v538) + 197060 - 1144 * ((3754343 * (295 * BYTE2(v538) + 197060)) >> 32))), 24) ^ __ROR4__(*(v81 + 4 * (295 * (v535 ^ 0x7F) + 197060 - 1144 * ((3754343 * (295 * (v535 ^ 0x7Fu) + 197060)) >> 32))), 8);
  v597 = __ROR4__(*(v81 + 4 * (295 * HIBYTE(v537) + 197060 - 1144 * ((3754343 * (295 * HIBYTE(v537) + 197060)) >> 32))), 16);
  v598 = v596 ^ v597 ^ (((v596 ^ v597) & v567) >> 1);
  v599 = (v598 & STACK[0xE08]) >> v546;
  v600 = (((v598 ^ 0x6F615340) & STACK[0xCF0] | LODWORD(STACK[0x2B0])) ^ 0x6F615340) << v571;
  LODWORD(v600) = ((v600 - ((2 * v600) & 0x78015606) - 1140806909) ^ 0xBC00AB03) + ((v599 - ((2 * v599) & 0x179277EC) - 1949746186) ^ 0x8BC93BF6);
  LODWORD(v599) = LODWORD(STACK[0xD38]) ^ 0xB5B5B5B5;
  LODWORD(STACK[0xC4C]) = v599;
  LODWORD(v600) = ((((v599 ^ v600) & STACK[0x450]) << v546) - ((2 * (((v599 ^ v600) & STACK[0x450]) << v546)) & 0xC46B1412) - 499807735) ^ ((((v599 ^ v600) & STACK[0x738]) >> v575) - ((2 * (((v599 ^ v600) & STACK[0x738]) >> v575)) & 0x5C6FB68C) + 775412550);
  LODWORD(v600) = v589 & (((v600 ^ (((v600 ^ 0xCC02514E) & v567) >> 1) ^ 0xCC02514C) & v567) >> 2) ^ v600 ^ (((v600 ^ 0xCC02514E) & v567) >> 1);
  v601 = LODWORD(STACK[0x8B0]) ^ v600 ^ 0xC1023639 ^ v592 & (((v600 ^ 0xCC025140) & v567) >> 4) & v589;
  if ((STACK[0x9F0] & 0x18) != 0)
  {
    v601 = ((v601 >> v556) - ((2 * (v601 >> v556)) & 0xB0DD939E) + 1483655631) ^ ((v601 << v576) - ((2 * (v601 << v576)) & 0x383B2F72) - 1675782215) ^ 0xC4735E76;
  }

  LODWORD(STACK[0xE78]) = v601;
  v602 = *(STACK[0xEA8] + (LODWORD(STACK[0x7F8]) ^ 0x67));
  v603 = (LODWORD(STACK[0xC58]) - 20805) | 0xB298;
  LODWORD(STACK[0x910]) = v603;
  v604 = (((v602 ^ 0xFFFFFFF4) + 12) ^ ((v602 ^ 0xFFFFFF99) + 103) ^ (((v603 + 111) ^ v602) - 43)) + 54;
  v605 = v604 & 0x18 ^ 0x10;
  v606 = ((8 * v602) & 0xFFFFFF90 | 1) ^ (8 * v602) & 0xFFFFFF80 ^ v604 ^ (2 * ((v604 ^ 0x78) & (2 * ((v604 ^ 0x78) & (2 * ((v604 ^ 0x78) & (2 * ((v604 ^ 0x78) & (2 * v605) ^ v605)) ^ v605)) ^ v605)) ^ v605));
  v607 = LODWORD(STACK[0x690]) - 59 * (((v606 ^ 0xFFFFFF8F) - 41) ^ ((v606 ^ 0x28) + 114) ^ ((v606 ^ 0x33) + 107));
  LOBYTE(v604) = v607 & 0x16 ^ 0x2A;
  LOBYTE(v605) = v607 & (2 * (v607 & (2 * (v607 & (2 * (v607 & (2 * v604) ^ v604)) ^ v604)) ^ v604)) ^ v604;
  v608 = (v607 ^ (2 * ((v604 & 0xBF | (((v605 & 0x20) != 0) << 6)) ^ v607 & (2 * v605)))) ^ 0xD6;
  HIDWORD(v609) = *(v81 + 4 * ((295 * (((v608 ^ 0xED6F7136) + 311463626) ^ ((v608 ^ 0x4A0C4330) - 1242317616) ^ ((v608 ^ 0xA76332C6) + 1486671162)) + 155170) % 0x478));
  LODWORD(v609) = HIDWORD(v609);
  LODWORD(STACK[0x9E0]) = (v609 >> 16) - ((2 * (v609 >> 16)) & 0x4338BD0);
  v610 = STACK[0x800];
  v611 = 295 * LODWORD(STACK[0x800]) + 98530;
  LOBYTE(v604) = (STACK[0x21C] & 0xC3 ^ 0xC3) + (STACK[0x21C] & 0xC3);
  v612 = *(v81 + 4 * (v611 - 1144 * ((3754343 * v611) >> 32)));
  v613 = (v612 << (v604 & 2 ^ 0x12) << (v604 & 5 ^ 1)) & 0xFFFF0000 | HIWORD(v612);
  LODWORD(STACK[0x9F0]) = v613 - ((2 * v613) & 0xDB9C563E);
  LODWORD(STACK[0x9D8]) = 295 * HIBYTE(LODWORD(STACK[0x818])) + 98530 - 1144 * ((3754343 * (295 * HIBYTE(LODWORD(STACK[0x818])) + 98530)) >> 32);
  v614 = STACK[0x820];
  v615 = 295 * BYTE1(LODWORD(STACK[0x820])) + 98530;
  LODWORD(STACK[0x9D0]) = v615 - 1144 * ((3754343 * v615) >> 32);
  v616 = STACK[0x808];
  v617 = STACK[0x7E8];
  LOBYTE(v615) = *(STACK[0xE98] + (((LODWORD(STACK[0x808]) >> 12) & 0xF0 | (LODWORD(STACK[0x7E8]) >> 20) & 0xF) ^ 0x2DLL));
  LOBYTE(v615) = -55 - 81 * (((v615 ^ 0xD) - 39) ^ ((v615 ^ 0x77) - 93) ^ ((v615 ^ 0x4A) - 96));
  v618 = v615 & 0x6B ^ 0xDF;
  v619 = v615 ^ (2 * ((v615 ^ 0x7C) & (2 * ((v615 ^ 0x7C) & (2 * ((v615 ^ 0x7C) & (2 * ((v615 ^ 0x7C) & (2 * ((v615 ^ 0x7C) & (2 * (((2 * v615) & 0x7A ^ 0x16) & (v615 ^ 0x7C) ^ v618)) ^ v618)) ^ v618)) ^ v618)) ^ v618)) ^ v618));
  v620 = ((251 * HIBYTE(v614) - ((502 * HIBYTE(v614)) & 0x2E) + 23) ^ 0xFFFFFF95 ^ *(STACK[0xE90] + ((-5 * HIBYTE(v614)) ^ 0x26))) + 16;
  v621 = v620 & 0x71 ^ 0x41;
  v622 = v620 ^ (2 * ((v620 ^ 0x6E) & (2 * ((v620 ^ 0x6E) & (2 * ((v620 ^ 0x6E) & (2 * ((v620 ^ 0x6E) & (2 * ((v620 ^ 0x6E) & (2 * (((2 * v620) & 0x5E ^ 0x1E) & (v620 ^ 0x4E) ^ v621)) ^ v621)) ^ v621)) ^ v621)) ^ v621)) ^ v621));
  LODWORD(STACK[0xC24]) = 295 * BYTE2(v614) + 98530 - 1144 * ((3754343 * (295 * BYTE2(v614) + 98530)) >> 32);
  LODWORD(STACK[0x950]) = 295 * BYTE1(v610) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v610) + 98530)) >> 32);
  v623 = LODWORD(STACK[0x810]) ^ __ROR4__(*(v81 + 4 * LODWORD(STACK[0x948])), 16);
  LODWORD(STACK[0x948]) = 295 * BYTE2(v610) + 98530 - 1144 * ((3754343 * (295 * BYTE2(v610) + 98530)) >> 32);
  LODWORD(STACK[0x940]) = (295 * (((v622 ^ 0xA4BF02B3) + 1530985770) ^ ((v622 ^ 0xC1FEC289) + 1040268564) ^ ((v622 ^ 0x6541C04B) - 1698807854)) + 104430) % 0x478;
  v624 = 295 * HIBYTE(v617) + 98530 - 1144 * ((3754343 * (295 * HIBYTE(v617) + 98530)) >> 32);
  LODWORD(STACK[0x930]) = (295 * (((v619 ^ 0x8B0A5008) + 1962258287) ^ ((v619 ^ 0x93B7B9E4) + 1816675971) ^ ((v619 ^ 0x18BDE987) - 415099166)) + 169920) % 0x478;
  v625 = 295 * (BYTE1(v616) ^ 0x21) + 98530 - 1144 * ((3754343 * (295 * (BYTE1(v616) ^ 0x21u) + 98530)) >> 32);
  v626 = STACK[0xC18];
  v627 = ((STACK[0xC18] << STACK[0xDB8]) << STACK[0xDC0]) + (STACK[0xC18] >> STACK[0xE00]);
  v628 = STACK[0xD48];
  v629 = STACK[0xDE8] >> STACK[0xD48] >> STACK[0xD50];
  v630 = (((STACK[0xDE8] << STACK[0x9A8]) << STACK[0xDF0]) ^ 0x6BDB62D1) & ~v629 | v629 & 0x94249D2E;
  v631 = STACK[0x9C8] << STACK[0xDF0] << STACK[0x9F8];
  v632 = STACK[0xD50];
  v633 = ((STACK[0x9C8] >> STACK[0xD48] >> STACK[0xD50]) ^ 0xB052AD5B) & ~v631 | v631 & 0x4FAD52A4;
  v634 = STACK[0xAB8];
  v635 = STACK[0xAB8] >> STACK[0xD48] >> STACK[0xD50];
  v636 = STACK[0xAB8] << (STACK[0xA08] & 0x3C ^ 0x1C);
  v637 = v635 & 0x7A044E53 | (v636 ^ 0x85FBB1AC) & ~v635;
  v638 = STACK[0xA70];
  v639 = STACK[0xA70] >> STACK[0xD48] >> STACK[0xD50];
  v640 = ((STACK[0xA70] << STACK[0xC78] << STACK[0xC70]) ^ 0x7FEB52E9) & ~v639 | v639 & 0x8014AD16;
  v641 = (((v623 & 0x11111111 ^ 0x11110110) + (v623 & 0x11111111 ^ 0x1001u)) & STACK[0xDF8]) >> 1;
  v642 = ((v641 ^ 0x11111111) & STACK[0xE08]) >> STACK[0x720] >> STACK[0x730];
  v643 = (((a64 ^ (v641 ^ 0x2E20263E) & STACK[0x2BC]) << STACK[0x388] << STACK[0x380]) ^ 0xC220ECA6) & ~v642 | v642 & 0x3DDF1359;
  v644 = *(v81 + 4 * LODWORD(STACK[0xC24]));
  if (LODWORD(STACK[0xDC8]))
  {
    v645 = v630 ^ 0x6BDB62D1;
  }

  else
  {
    v645 = STACK[0xDE8];
  }

  v646 = v633 ^ 0xB052AD5B;
  if (!LODWORD(STACK[0xDC8]))
  {
    v646 = STACK[0x9C8];
  }

  LODWORD(STACK[0xC24]) = v646;
  v647 = LODWORD(STACK[0xC68]) == 0;
  v648 = v640 ^ 0x7FEB52E9;
  if (!LODWORD(STACK[0xC68]))
  {
    v648 = v638;
  }

  v649 = LODWORD(STACK[0x378]) ^ v648 ^ v644 ^ (LODWORD(STACK[0x9E0]) - 2112240152) ^ __ROR4__(*(v81 + 4 * LODWORD(STACK[0x950])), 8) ^ __ROR4__(*(v81 + 4 * v624), 24) ^ v643 ^ 0xFE33405u;
  v650 = v637 ^ 0x85FBB1AC;
  if (!LODWORD(STACK[0xC68]))
  {
    v650 = v634;
  }

  v651 = a63 ^ v650 ^ LODWORD(STACK[0x918]) ^ __ROR4__(*(v81 + 4 * LODWORD(STACK[0x940])), 24) ^ *(v81 + 4 * LODWORD(STACK[0x948]));
  v652 = (v636 & 0x18 ^ 0x18) + (v636 & 0x18);
  v653 = a62 ^ v645 ^ v623 ^ __ROR4__(*(v81 + 4 * v625), 8);
  if (LODWORD(STACK[0xC68]))
  {
    v654 = v627;
  }

  else
  {
    v654 = v626;
  }

  v655 = a61 ^ v654 ^ __ROR4__(*(v81 + 4 * LODWORD(STACK[0x9D8])), 24) ^ __ROR4__(*(v81 + 4 * LODWORD(STACK[0x9D0])), 8) ^ (LODWORD(STACK[0x9F0]) + 1842227999) ^ *(v81 + 4 * LODWORD(STACK[0x930]));
  v656 = *(STACK[0xEA0] + ((-5 * v649) ^ 0xAFLL));
  v657 = ((v656 >> 2) | (v656 << 6)) ^ 0xFC ^ (2 * (((v656 >> 2) | (v656 << 6)) ^ 0x6E)) & 0xE4;
  v658 = STACK[0xE10];
  v659 = (STACK[0xE10] >> v628 >> v632) + (STACK[0xE10] << STACK[0xC80]);
  LODWORD(STACK[0xA08]) = 295 * (HIBYTE(v651) ^ 0x2C) + 98530 - 1144 * ((3754343 * (295 * (HIBYTE(v651) ^ 0x2C) + 98530)) >> 32);
  v660 = *(STACK[0xEB8] + (((BYTE1(v655) ^ 0x2B) + 18) ^ 0x91));
  v661 = (((v660 ^ 0x3C) - 60) ^ ((v660 ^ 0xF5) + 11) ^ ((v660 ^ 0x8F) + 113)) + 24;
  v662 = v661 & 0x96 ^ 0x6A;
  v663 = v661 ^ (2 * ((v661 ^ 0x40) & (2 * ((v661 ^ 0x40) & (2 * ((v661 ^ 0x40) & (2 * ((v661 ^ 0x40) & (2 * ((v661 ^ 0x40) & (2 * v662) ^ v662)) ^ v662)) ^ v662)) ^ v662)) ^ v662));
  v664 = 295 * BYTE1(v649) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v649) + 98530)) >> 32);
  v665 = v649 >> (v652 | 0x18u);
  v666 = ((v649 >> STACK[0x410]) + 334) * LODWORD(STACK[0x40C]);
  LODWORD(STACK[0x9F8]) = v666 - 1144 * ((3754343 * v666) >> 32);
  v667 = 295 * (HIBYTE(v653) ^ 8) + 98530 - 1144 * ((3754343 * (295 * (HIBYTE(v653) ^ 8) + 98530)) >> 32);
  v668 = 295 * (v655 ^ 0x1F) + 98530 - 1144 * ((3754343 * (295 * (v655 ^ 0x1Fu) + 98530)) >> 32);
  v669 = 295 * (BYTE1(v653) ^ 0x3C) + 98530 - 1144 * ((3754343 * (295 * (BYTE1(v653) ^ 0x3Cu) + 98530)) >> 32);
  v670 = 295 * (v653 ^ 3) + 98530 - 1144 * ((3754343 * (295 * (v653 ^ 3u) + 98530)) >> 32);
  v671 = 295 * (v651 ^ 0x35) + 98530 - 1144 * ((3754343 * (295 * (v651 ^ 0x35u) + 98530)) >> 32);
  v672 = 295 * (BYTE2(v653) ^ 0xE) + 98530 - 1144 * ((3754343 * (295 * (BYTE2(v653) ^ 0xEu) + 98530)) >> 32);
  v673 = *(v81 + 4 * (295 * (HIBYTE(v655) ^ 0x6D) + 98530 - 1144 * ((3754343 * (295 * (HIBYTE(v655) ^ 0x6D) + 98530)) >> 32)));
  LOBYTE(v666) = *(STACK[0xE98] + (((v673 >> 20) & 0xF0 | (v673 >> 28)) ^ 0x8DLL));
  v674 = 295 * (BYTE2(v655) ^ 0xCE) + 98530 - 1144 * ((3754343 * (295 * (BYTE2(v655) ^ 0xCEu) + 98530)) >> 32);
  v675 = (-98 - 81 * (((v666 ^ 0x25) + 41) ^ ((v666 ^ 0x85) - 119) ^ ((v666 ^ 0x90) - 98))) | (v673 << 8);
  v676 = 295 * (BYTE2(v651) ^ 0x16) + 98530 - 1144 * ((3754343 * (295 * (BYTE2(v651) ^ 0x16u) + 98530)) >> 32);
  v677 = 295 * (-51 * (v663 ^ (v663 >> 4) ^ (v663 >> 1) ^ 0x34)) + 98530;
  v678 = v677 - 1144 * ((3754343 * v677) >> 32);
  v679 = 295 * (BYTE1(v651) ^ 0x8A) + 98530 - 1144 * ((3754343 * (295 * (BYTE1(v651) ^ 0x8Au) + 98530)) >> 32);
  if (v647)
  {
    v659 = v658;
  }

  v680 = LODWORD(STACK[0xAE8]) == 0;
  v681 = a60 ^ v659 ^ __ROR4__(*(v81 + 4 * v664), 8) ^ __ROR4__(*(v81 + 4 * v667), 24) ^ __ROR4__(*(v81 + 4 * v671), 16) ^ *(v81 + 4 * v674);
  if (LODWORD(STACK[0xAE8]))
  {
    v682 = (STACK[0xD40] >> STACK[0xE00]) ^ ((STACK[0xD40] << STACK[0xC70]) << STACK[0xC78]);
  }

  else
  {
    v682 = STACK[0xD40];
  }

  v683 = LODWORD(STACK[0x390]) ^ v682 ^ __ROR4__(*(v81 + 4 * v668), 16) ^ __ROR4__(*(v81 + 4 * v669), 8) ^ *(v81 + 4 * v676) ^ __ROR4__(*(v81 + 4 * (295 * v665 + 98530 - 1144 * ((3754343 * (295 * v665 + 98530)) >> 32))), 24);
  v684 = a59 ^ LODWORD(STACK[0xC24]) ^ *(v81 + 4 * LODWORD(STACK[0x9F8])) ^ __ROR4__(*(v81 + 4 * v670), 16) ^ (*(v81 + 4 * v679) << 24) ^ (*(v81 + 4 * v679) >> 8) ^ v675;
  if (LODWORD(STACK[0xAE8]))
  {
    v685 = (STACK[0x9B8] >> STACK[0xE00]) + ((STACK[0x9B8] << STACK[0xDB8]) << STACK[0xDC0]);
  }

  else
  {
    v685 = STACK[0x9B8];
  }

  v686 = a58 ^ v685 ^ __ROR4__(*(v81 + 4 * LODWORD(STACK[0xA08])), 24) ^ __ROR4__(*(v81 + 4 * (295 * (v657 - 1) + 98530 - 1144 * ((3754343 * (295 * (v657 - 1) + 98530)) >> 32))), 16) ^ *(v81 + 4 * v672) ^ __ROR4__(*(v81 + 4 * v678), 8);
  v687 = STACK[0xDD8];
  v688 = STACK[0xD48];
  v689 = STACK[0xD50];
  LODWORD(STACK[0xDC0]) = ((STACK[0xDD8] << STACK[0xC70]) << STACK[0xC78]) ^ (STACK[0xDD8] >> STACK[0xD48] >> STACK[0xD50]);
  v690 = STACK[0xAB0];
  LODWORD(STACK[0xC78]) = (STACK[0xAB0] >> v688 >> v689) & 0x99E8A681 | ((STACK[0xAB0] << STACK[0x680]) ^ 0x6617597E) & ~(STACK[0xAB0] >> v688 >> v689);
  v691 = v683 ^ 0x2DC37CEF;
  v692 = *(STACK[0xEC0] + ((v691 - 7) ^ 0x98));
  v693 = *(STACK[0xEB8] + ((HIBYTE(v681) + 18) ^ 0x91));
  v694 = ((v692 ^ 0x4D) + 38) ^ ((v692 ^ 0x84) - 19) ^ ((v692 ^ 0xA2) - 53);
  v695 = (((v693 ^ 0x40) - 64) ^ ((v693 ^ 0x2A) - 42) ^ ((v693 ^ 0x2C) - 44)) - 7;
  v696 = (v695 & 0xE1 | 0x1C) ^ v695 & 0xF8;
  v697 = v695 ^ (2 * ((v695 ^ 0x60) & (2 * ((v695 ^ 0x60) & (2 * ((v695 ^ 0x60) & (2 * ((v695 ^ 0x60) & (2 * ((v695 ^ 0x60) & (2 * ((v695 ^ 0x60) & (2 * v696) ^ v696)) ^ v696)) ^ v696)) ^ v696)) ^ v696)) ^ v696));
  v698 = v697 ^ (v697 >> 4) ^ (v697 >> 1);
  v699 = *(STACK[0xEA0] + ((-5 * (BYTE1(v684) ^ 0xFB)) ^ 0xAFLL));
  LODWORD(STACK[0xC24]) = 295 * BYTE2(v681) + 98530 - 1144 * ((3754343 * (295 * BYTE2(v681) + 98530)) >> 32);
  v700 = 295 * ((((v699 >> 2) | (v699 << 6)) ^ (2 * ((v699 >> 2) | (v699 << 6))) & 0xE4 ^ 0x38) - 1) + 98530;
  LODWORD(STACK[0xAE8]) = v700 - 1144 * ((3754343 * v700) >> 32);
  LODWORD(STACK[0xC70]) = 295 * v681 + 98530 - 1144 * ((3754343 * (295 * v681 + 98530)) >> 32);
  v701 = 295 * (HIBYTE(v686) ^ 0xE8) + 98530 - 1144 * ((3754343 * (295 * (HIBYTE(v686) ^ 0xE8) + 98530)) >> 32);
  v702 = 295 * HIBYTE(v691) + 98530 - 1144 * ((3754343 * (295 * HIBYTE(v691) + 98530)) >> 32);
  v703 = 295 * BYTE1(v681) + 98530 - 1144 * ((3754343 * (295 * BYTE1(v681) + 98530)) >> 32);
  v704 = 295 * BYTE2(v691) + 98530 - 1144 * ((3754343 * (295 * BYTE2(v691) + 98530)) >> 32);
  v705 = 295 * (BYTE2(v686) ^ 0xA7) + 98530 - 1144 * ((3754343 * (295 * (BYTE2(v686) ^ 0xA7u) + 98530)) >> 32);
  v706 = 295 * (v684 ^ 0xF2) + 98530 - 1144 * ((3754343 * (295 * (v684 ^ 0xF2u) + 98530)) >> 32);
  v707 = 295 * (-51 * (v698 ^ 0xF4)) + 98530;
  v708 = v707 - 1144 * ((3754343 * v707) >> 32);
  v709 = 295 * (HIBYTE(v684) ^ 0x71) + 98530 - 1144 * ((3754343 * (295 * (HIBYTE(v684) ^ 0x71) + 98530)) >> 32);
  v710 = *(v81 + 4 * (295 * (BYTE2(v684) ^ 0xE3) + 98530 - 1144 * ((3754343 * (295 * (BYTE2(v684) ^ 0xE3u) + 98530)) >> 32)));
  v711 = v710 & 0xFFFFFEB2 ^ 0xFFFFFEB2;
  v712 = v711 + (v710 & 0xFFFFFEB2);
  v713 = 295 * (BYTE1(v691) - v712) % 0x478;
  v714 = 295 * (LODWORD(STACK[0x72C]) - 59 * v694) + 98530;
  v715 = v714 - 1144 * ((3754343 * v714) >> 32);
  v716 = 295 * (BYTE1(v686) ^ 0xD3) + 98530 - 1144 * ((3754343 * (295 * (BYTE1(v686) ^ 0xD3u) + 98530)) >> 32);
  v717 = 295 * (v686 ^ 0x48) + 98530 - 1144 * ((3754343 * (295 * (v686 ^ 0x48u) + 98530)) >> 32);
  v718 = STACK[0xB18];
  v719 = STACK[0xA18];
  v720 = STACK[0xA10] & 0x10;
  v721 = STACK[0xA10] & 8;
  v722 = ((STACK[0xB18] << STACK[0xA18]) - ((2 * (STACK[0xB18] << STACK[0xA18])) & 0xF7F0A51A) - 67612019) ^ (STACK[0xB18] >> v720 >> v721) ^ 0xFBF8528D;
  v723 = STACK[0x9A0];
  v724 = ((STACK[0x9A0] >> v720 >> v721) ^ 0xF45DEA90) & ~(STACK[0x9A0] << STACK[0xA18]) | (STACK[0x9A0] << STACK[0xA18]) & 0xBA2156F;
  v725 = STACK[0xDC0];
  if (v680)
  {
    v725 = v687;
  }

  LODWORD(STACK[0xDB8]) = v725;
  if (v680)
  {
    v726 = v690;
  }

  else
  {
    v726 = LODWORD(STACK[0xC78]) ^ 0x6617597E;
  }

  if (v719)
  {
    LODWORD(v718) = v722;
  }

  v727 = a57 ^ v718 ^ __ROR4__(*(v81 + 4 * v702), 24) ^ __ROR4__(*(v81 + 4 * v703), 8) ^ *(v81 + 4 * v705) ^ __ROR4__(*(v81 + 4 * v706), 16);
  v728 = v724 ^ 0xF45DEA90;
  if (!LODWORD(STACK[0xBF0]))
  {
    v728 = v723;
  }

  v729 = a56 ^ v728 ^ *(v81 + 4 * LODWORD(STACK[0xC24])) ^ __ROR4__(*(v81 + 4 * LODWORD(STACK[0xAE8])), 8) ^ __ROR4__(*(v81 + 4 * v701), 24) ^ __ROR4__(*(v81 + 4 * v715), 16);
  v730 = (STACK[0xBE0] >> (STACK[0xA20] & 0x18 ^ 8) >> (~STACK[0xA20] & 0x20)) + (STACK[0xBE0] << v719);
  if (!LODWORD(STACK[0xA00]))
  {
    v730 = STACK[0xBE0];
  }

  v731 = a55 ^ v730 ^ v710 ^ __ROR4__(*(v81 + 4 * v708), 24) ^ __ROR4__(*(v81 + 4 * v713), 8) ^ __ROR4__(*(v81 + 4 * v717), 16);
  v732 = (((STACK[0x9C0] >> STACK[0x760] >> STACK[0x778]) ^ 0x8B08AF6A) & ~(STACK[0x9C0] << v719) | (STACK[0x9C0] << v719) & 0x74F75095) ^ 0x8B08AF6A;
  if (!LODWORD(STACK[0xA00]))
  {
    v732 = STACK[0x9C0];
  }

  v733 = a54 ^ v732 ^ __ROR4__(*(v81 + 4 * LODWORD(STACK[0xC70])), 16) ^ *(v81 + 4 * v704) ^ __ROR4__(*(v81 + 4 * v709), 24);
  v735 = __ROR4__(*(v81 + 4 * v716), 8);
  v734 = v733 ^ v735;
  LODWORD(STACK[0xC78]) = v733 ^ v735;
  v736 = 295 * ((v733 ^ v735) >> 8) + 197060;
  v737 = v736 - 1144 * ((3754343 * v736) >> 32);
  v738 = v727;
  v739 = v729 ^ 0xD998BEB1;
  v740 = STACK[0xEB8];
  LOBYTE(v736) = *(STACK[0xEB8] + ((((v729 ^ 0xD998BEB1) >> 24) + 18) ^ 0x91));
  LOBYTE(v736) = (((v736 ^ 0xA1) + 95) ^ ((v736 ^ 1) - 1) ^ ((v736 ^ 0xE6) + 26)) - 28;
  v741 = v736 & 0x9E ^ 0x54;
  LOBYTE(v736) = v736 ^ (2 * ((v736 ^ 0x74) & (2 * ((v736 ^ 0x74) & (2 * ((v736 ^ 0x74) & (2 * ((v736 ^ 0x74) & (2 * ((v736 ^ 0x74) & (2 * v741) ^ v741)) ^ v741)) ^ v741)) ^ v741)) ^ v741));
  v742 = 295 * (-51 * (v736 ^ (v736 >> 4) ^ (v736 >> 1) ^ 0x38)) + 197060;
  HIDWORD(v743) = *(v81 + 4 * (v742 - 1144 * ((3754343 * v742) >> 32)));
  LODWORD(v743) = HIDWORD(v743);
  v744 = (v743 >> 16) - ((2 * (v743 >> 16)) & 0x7DAC06CA);
  v745 = v711 & 0x80 ^ (v710 & 0x80 | 0x440C952C) ^ (HIBYTE(v734) * LODWORD(STACK[0x370])) ^ 0x2E ^ *(STACK[0xE80] + (((v712 & 0x1D8E97FF6 ^ 0x1D8E97FFFLL) + (v712 & 0x1D8E97FF6)) & 0x200108F8BLL) + ((HIBYTE(v734) * LOBYTE(STACK[0x370])) ^ 0x26));
  v746 = STACK[0x978];
  v747 = v726 ^ LODWORD(STACK[0x978]) ^ *(v81 + 4 * v737) ^ __ROR4__(*(v81 + 4 * (295 * (BYTE2(v731) ^ 0x41) + 197060 - 1144 * ((3754343 * (295 * (BYTE2(v731) ^ 0x41u) + 197060)) >> 32))), 24);
  LODWORD(v743) = __ROR4__(*(v81 + 4 * (295 * v727 + 197060 - 1144 * ((3754343 * (295 * v727 + 197060)) >> 32))), 8);
  v748 = STACK[0xD00];
  v749 = v747 ^ v743 ^ (v744 + 1054212965) ^ (((v747 ^ v743 ^ (v744 + 1054212965) ^ 0x3ED60364) & STACK[0xD00]) >> 1);
  v750 = (v749 ^ 0x225618AF) & STACK[0xE68] | LODWORD(STACK[0x2A0]);
  v751 = STACK[0xD30];
  v752 = STACK[0x418];
  v753 = STACK[0x420];
  v754 = ((v749 ^ 0x3ED60365) & STACK[0xD30]) >> STACK[0x418] >> STACK[0x420];
  LODWORD(v754) = a51 ^ ((((v750 ^ 0x1C801BCAu) << STACK[0x2F8]) ^ 0x157F042C) & ~v754 | v754 & 0xEA80FBD3);
  LODWORD(v754) = (((v754 & STACK[0x3D0]) << STACK[0x440]) << STACK[0x438]) + ((v754 & STACK[0x3DC]) >> STACK[0x2E0] >> STACK[0x2E8]);
  v755 = STACK[0xDF8];
  LODWORD(v754) = STACK[0xBF8] & (((v754 ^ ((v754 & v755) >> 1)) & v755) >> 2) ^ v754 ^ ((v754 & v755) >> 1);
  v756 = STACK[0x9E8];
  v757 = LODWORD(STACK[0x8B0]) ^ v754 ^ 0x707D1A0B ^ STACK[0x9E8] & ((v754 & STACK[0xDF8]) >> 4) & STACK[0xBF8];
  v758 = STACK[0xA30];
  v759 = STACK[0xA28];
  v761 = STACK[0xC68];
  if (LODWORD(STACK[0xC68]))
  {
    v760 = v757 << STACK[0xD50] << STACK[0xD48];
    LODWORD(v757) = (((v757 >> STACK[0xA30] >> STACK[0xA28]) ^ 0x78374506) & ~v760 | v760 & 0x87C8BAF9) ^ 0x78374506;
  }

  LODWORD(STACK[0xDC0]) = v757;
  v762 = *(v740 + ((v739 + 18) ^ 0x91));
  v763 = *(v81 + 4 * (295 * (v745 - 1) + 197060 - 1144 * ((3754343 * (295 * (v745 - 1) + 197060)) >> 32)));
  v764 = LODWORD(STACK[0xDB8]) ^ v746 ^ *(v81 + 4 * (295 * BYTE1(v739) + 197060 - 1144 * ((3754343 * (295 * BYTE1(v739) + 197060)) >> 32))) ^ __ROR4__(*(v81 + 4 * (295 * (v731 ^ 0x51) + 197060 - 1144 * ((3754343 * (295 * (v731 ^ 0x51u) + 197060)) >> 32))), 8) ^ __ROR4__(*(v81 + 4 * (295 * BYTE2(v738) + 197060 - 1144 * ((3754343 * (295 * BYTE2(v738) + 197060)) >> 32))), 24) ^ WORD1(v763) ^ (v763 << ((((39 * (v745 - 1) - 60 - 120 * ((3754343 * (295 * (v745 - 1) + 197060)) >> 32)) | 0x77) - ((39 * (v745 - 1) - 60 - 120 * ((3754343 * (295 * (v745 - 1) + 197060)) >> 32)) & 0x88) - 103) & 0xF8));
  v765 = STACK[0xCF0];
  v766 = LODWORD(STACK[0xC4C]) ^ (((((v764 ^ ((v764 & v748) >> 1) ^ 0x2CFDC29B) & STACK[0xCF0] | LODWORD(STACK[0x2B8])) ^ 0x2CFDC29B) << STACK[0x838]) << STACK[0x830]) ^ (((v764 ^ ((v764 & v748) >> 1)) & v751) >> v753 >> v752);
  v767 = ((v766 & STACK[0x3E8]) << v752 << v753) + ((v766 & STACK[0x400]) >> STACK[0x360] >> STACK[0x368]);
  v768 = STACK[0x980];
  v769 = STACK[0x980] & (((v767 ^ ((v767 & v748) >> 1)) & v748) >> 2) ^ v767 ^ ((v767 & v748) >> 1);
  v770 = LODWORD(STACK[0x324]) ^ v769 ^ 0xBD02D60 ^ STACK[0xB28] & ((v769 & v748) >> 4) & STACK[0x980];
  v771 = STACK[0xE00];
  if (v761)
  {
    LODWORD(v770) = (v770 >> v759 >> v758) + (v770 << STACK[0xE00]);
  }

  v772 = ((v762 ^ 0xB9) + 71) ^ ((v762 ^ 0x8D) + 115) ^ ((v762 ^ 0x72) - 114);
  v773 = v772 & 0x28 ^ 0xCB;
  v774 = (v772 + 64) ^ (2 * (((v772 + 64) ^ 0x1A) & (2 * (((v772 + 64) ^ 0x1A) & (2 * (((v772 + 64) ^ 0x1A) & (2 * (((v772 + 64) ^ 0x1A) & (2 * (((2 * (v773 ^ v772 & 0x32)) ^ 0x24) & ((v772 + 64) ^ 0x1A) ^ v773)) ^ v773)) ^ v773)) ^ v773)) ^ v773));
  v775 = 295 * (-51 * (v774 ^ (v774 >> 4) ^ (v774 >> 1) ^ 0xDE)) + 197060;
  v776 = v775 - 1144 * ((3754343 * v775) >> 32);
  LOBYTE(v775) = *(STACK[0xEC8] + ((BYTE1(v738) + 18) ^ 0xB9));
  LOBYTE(v775) = (((v775 ^ 6) + 23) ^ ((v775 ^ 0xA6) - 73) ^ ((v775 ^ 0x61) + 114)) - 93;
  v777 = 295 * (v775 - 51 * (-117 - 4 * v775)) + 197060;
  v778 = *(v81 + 4 * (v777 - 1144 * ((3754343 * v777) >> 32)));
  v779 = ((STACK[0xB20] << STACK[0x9A8]) << STACK[0xDF0]) + (STACK[0xB20] >> v771);
  if (!v761)
  {
    v779 = STACK[0xB20];
  }

  v780 = v779 ^ v746 ^ v778 ^ __ROR4__(*(v81 + 4 * v776), 8) ^ __ROR4__(*(v81 + 4 * (295 * (HIBYTE(v731) ^ 0xED) + 197060 - 1144 * ((3754343 * (295 * (HIBYTE(v731) ^ 0xED) + 197060)) >> 32))), 16);
  v781 = __ROR4__(*(v81 + 4 * (295 * BYTE2(LODWORD(STACK[0xC78])) + 197060 - 1144 * ((3754343 * (295 * BYTE2(LODWORD(STACK[0xC78])) + 197060)) >> 32))), 24);
  v782 = v780 ^ v781 ^ (((v780 ^ v781) & v748) >> 1);
  v783 = (v782 & v751) >> STACK[0x720] >> STACK[0x730];
  v784 = (((v782 ^ 0x86E6D4B3) & v765 | LODWORD(STACK[0x2B4])) ^ 0x86E6D4B3) << STACK[0x358] << STACK[0x350];
  LODWORD(v784) = a50 ^ (v784 & 0x711C9E5C | (v783 ^ 0x8EE361A3) & ~v784);
  LODWORD(v784) = (((v784 & STACK[0x3F8]) << STACK[0x428]) << STACK[0x430]) + ((v784 & STACK[0x34C]) >> STACK[0x338] >> STACK[0x340]);
  LODWORD(v784) = STACK[0xBF8] & (((v784 ^ ((v784 & v755) >> 1)) & v755) >> 2) ^ v784 ^ ((v784 & v755) >> 1);
  v785 = (STACK[0xA68] << STACK[0xCA8] << STACK[0x750]) ^ (STACK[0xA68] >> v771);
  v786 = LODWORD(STACK[0x924]) ^ v784 ^ 0x35353535 ^ v756 & ((v784 & v755) >> 4) & STACK[0xBF8];
  v787 = v786 << STACK[0xD48] << STACK[0xD50];
  v788 = (((v786 >> STACK[0xCA0] >> STACK[0x688]) ^ 0xF93F7F8A) & ~v787 | v787 & 0x6C08075) ^ 0xF93F7F8A;
  if (!v761)
  {
    v788 = v786;
  }

  HIDWORD(v789) = *(v81 + 4 * (295 * BYTE2(v739) + 197060 - 1144 * ((3754343 * (295 * BYTE2(v739) + 197060)) >> 32)));
  LODWORD(v789) = HIDWORD(v789);
  v790 = (v789 >> 24) - ((2 * (v789 >> 24)) & 0xAE4BDC4);
  if (!v761)
  {
    v785 = STACK[0xA68];
  }

  v791 = v785 ^ v746 ^ *(v81 + 4 * (295 * (BYTE1(v731) ^ 0x74) + 197060 - 1144 * ((3754343 * (295 * (BYTE1(v731) ^ 0x74u) + 197060)) >> 32))) ^ __ROR4__(*(v81 + 4 * (295 * HIBYTE(v738) + 197060 - 1144 * ((3754343 * (295 * HIBYTE(v738) + 197060)) >> 32))), 16);
  v792 = __ROR4__(*(v81 + 4 * (295 * LODWORD(STACK[0xC78]) + 197060 - 1144 * ((3754343 * (295 * LODWORD(STACK[0xC78]) + 197060)) >> 32))), 8);
  v793 = v791 ^ v792 ^ (v790 + 91381474) ^ (((v791 ^ v792 ^ (v790 + 91381474) ^ 0x5725EE2) & v755) >> 1);
  v794 = STACK[0xE08];
  v795 = ((v793 ^ 0x5725EE2) & STACK[0xE08]) >> STACK[0x330] >> STACK[0x328];
  v796 = STACK[0xE68];
  v797 = (((v793 ^ 0xF10F723C) & STACK[0xE68] | LODWORD(STACK[0x2A4])) ^ 0xF47D2CDE) << STACK[0x318] << STACK[0x310];
  LODWORD(v797) = a49 ^ (v797 & 0x218C9151 | (v795 ^ 0xDE736EAE) & ~v797);
  LODWORD(v795) = v797 & STACK[0x3E0];
  v798 = (v797 & STACK[0x3F4]) >> STACK[0x300] >> STACK[0x308];
  LODWORD(v798) = v798 & 0x186CE4F0 | ((v795 << STACK[0x850]) ^ 0xE7931B0F) & ~v798;
  LODWORD(v798) = v768 & (((v798 ^ (((v798 ^ 0xE7931B0E) & v748) >> 1) ^ 0xE7931B0C) & v748) >> 2) ^ v798 ^ (((v798 ^ 0xE7931B0E) & v748) >> 1);
  v799 = LODWORD(STACK[0x2F4]) ^ v798 ^ 0xC4637FC ^ STACK[0xB28] & (((v798 ^ 0xE7931B00) & v748) >> 4) & v768;
  if (LODWORD(STACK[0xDC8]))
  {
    LODWORD(v799) = (v799 << STACK[0xD50] << STACK[0xD48]) + (v799 >> STACK[0xC80]);
  }

  v800 = STACK[0xD28];
  v801 = LODWORD(STACK[0xD28]) - 2 * LODWORD(STACK[0xCB0]);
  LODWORD(STACK[0xE00]) = a75 < 0x4B135E2;
  v802 = (v800 & 1) == 0;
  v803 = STACK[0xDC0];
  if (v800)
  {
    v804 = STACK[0xDC0];
  }

  else
  {
    v804 = v788;
  }

  if (v802)
  {
    v788 = v770;
  }

  else
  {
    v803 = v799;
  }

  if (v802)
  {
    LODWORD(v770) = v799;
  }

  if ((v801 & 2) != 0)
  {
    v805 = v788;
  }

  else
  {
    v805 = v803;
  }

  if ((v801 & 2) != 0)
  {
    v788 = v803;
    v806 = v804;
  }

  else
  {
    v806 = v770;
  }

  if ((v801 & 2) != 0)
  {
    v804 = v770;
  }

  v807 = LODWORD(STACK[0xD98]) - 2 * LODWORD(STACK[0xC50]);
  v808 = STACK[0xE78];
  if (STACK[0xD98])
  {
    v809 = STACK[0xE78];
  }

  else
  {
    v809 = STACK[0xD58];
  }

  v810 = STACK[0xE88];
  if (STACK[0xD98])
  {
    v808 = STACK[0xE88];
  }

  v811 = STACK[0xC60];
  if (STACK[0xD98])
  {
    v810 = STACK[0xC60];
    v811 = STACK[0xD58];
  }

  if ((v807 & 2) != 0)
  {
    v812 = v808;
  }

  else
  {
    v812 = v811;
  }

  if ((v807 & 2) != 0)
  {
    v808 = v811;
    v813 = v809;
  }

  else
  {
    v813 = v810;
  }

  if ((v807 & 2) == 0)
  {
    v810 = v809;
  }

  v814 = LODWORD(STACK[0xDD0]) ^ 0x7D7D7D7D;
  v815 = v808 + 512894043 * ((v812 ^ v804) - v814);
  v816 = v788 ^ LODWORD(STACK[0xDD0]);
  v817 = v806 ^ LODWORD(STACK[0xDD0]);
  v818 = v813 ^ v788 ^ v806 ^ (v816 >> 3) ^ (v817 >> 1) ^ v812 ^ (v813 >> 3) ^ v815 ^ (v815 >> 1);
  v819 = v815 + 14518451 * (v814 - (v810 ^ v805));
  v820 = v810 ^ v804;
  v821 = v804 ^ LODWORD(STACK[0xDD0]);
  v822 = v820 ^ v818 ^ 0xAAAC74D0 ^ ((v818 ^ v821) << 8);
  v823 = (v813 ^ v816 ^ (8 * (v813 ^ v816)) ^ 0xD2BF354 ^ v818 ^ 0xAAAC74D0) + 228736183 * ((v819 ^ v806) - v814);
  v824 = LODWORD(STACK[0xDD0]) ^ 0x8AAC74BC ^ v822;
  v825 = *(STACK[0xED0] + 4 * (v821 % 0x101) + 48928);
  v826 = (LODWORD(STACK[0xDD0]) ^ v805 ^ v813 ^ v824 ^ (4 * (v822 ^ v805)) ^ 0xA2395A79) - (*(STACK[0xED0] + 4 * ((v823 ^ 0x7D7D7D7D) % 0x101) + 86084) ^ 0x18A457D2) + (v825 ^ (16 * (v825 ^ 0x37096627)) ^ (2 * (v825 ^ 0x37096627)) ^ 0x3BC7711A);
  v827 = v819 + 1074098709 * ((v788 ^ 0x82828282) + (v826 ^ LODWORD(STACK[0xDD0])));
  v828 = LODWORD(STACK[0xDA0]) ^ ((STACK[0xDA0] & v755) >> 1);
  v829 = (((v828 ^ 0x4E510BEF) & v796 | LODWORD(STACK[0x294])) ^ 0x4E510BEF) << STACK[0x998];
  v830 = (v828 & v794) >> STACK[0x710] >> STACK[0x718];
  LODWORD(v830) = ((v829 - ((2 * v829) & 0xBB30E5B2) + 1570271961) ^ 0xDB22580B) & ~v830 | v830 & 0x7945D52D;
  LODWORD(v829) = LODWORD(STACK[0xC88]) ^ ((STACK[0xC88] & v755) >> 1);
  v831 = v829 & v794;
  v832 = (((v829 ^ 0x8710CABA) & v765 | LODWORD(STACK[0x2A8])) ^ 0x8710CABA) << STACK[0x998];
  v833 = LODWORD(STACK[0xCD0]) ^ ((STACK[0xCD0] & v748) >> 1);
  v834 = (((v833 ^ 0x13121031) & v796 | LODWORD(STACK[0x290])) ^ 0x13121031) << STACK[0xDA8];
  v835 = LODWORD(STACK[0xA50]) ^ ((STACK[0xA50] & v755) >> 1);
  v836 = (v835 & v751) >> STACK[0xB10];
  v837 = (((v835 ^ 0x8706956A) & v796 | LODWORD(STACK[0x280])) ^ 0x8706956A) << STACK[0xDA8];
  LODWORD(v830) = (v834 - ((2 * v834) & 0xC7A56072) + 1674752057) ^ ((v833 & v751) >> STACK[0x840] >> STACK[0x848]) ^ (v837 - ((2 * v837) & 0x53C14570) + 702587576) & 0xD9EB5524 ^ (v832 - ((2 * v832) & 0xED15C2D6) + 1988813163) & 0xFFD7B1C6 ^ ((v837 - ((2 * v837) & 0x53C14570) + 702587576) ^ 0xD61F5D47) & ((v836 - ((2 * v836) & 0x74E6E77E) - 1166838849) ^ 0x9C67D964) ^ ((v832 - ((2 * v832) & 0xED15C2D6) + 1988813163) ^ 0x89751E94) & (((v831 >> STACK[0xB10]) - ((2 * (v831 >> STACK[0xB10])) & 0x61A69D0E) + 819154567) ^ 0x30FB00BE) ^ v830;
  v838 = STACK[0xD08];
  LODWORD(v830) = LODWORD(STACK[0x8E0]) ^ LODWORD(STACK[0xD08]) ^ LODWORD(STACK[0x960]) ^ LODWORD(STACK[0xAC8]) ^ LODWORD(STACK[0xBC8]) ^ LODWORD(STACK[0xC38]) ^ LODWORD(STACK[0xBC0]) ^ LODWORD(STACK[0xBA8]) ^ LODWORD(STACK[0xA80]) ^ LODWORD(STACK[0xCE8]) ^ LODWORD(STACK[0xD10]) ^ LODWORD(STACK[0xA58]) ^ LODWORD(STACK[0xDE0]) ^ LODWORD(STACK[0xBE8]) ^ LODWORD(STACK[0xB00]) ^ LODWORD(STACK[0xBB0]) ^ LODWORD(STACK[0xBB8]) ^ LODWORD(STACK[0xA88]) ^ LODWORD(STACK[0xAD8]) ^ LODWORD(STACK[0xAF8]) ^ LODWORD(STACK[0xA78]) ^ LODWORD(STACK[0xCE0]) ^ LODWORD(STACK[0xCD8]) ^ LODWORD(STACK[0xC98]) ^ LODWORD(STACK[0xC90]) ^ LODWORD(STACK[0xAA4]) ^ LODWORD(STACK[0xB98]) ^ LODWORD(STACK[0xBA0]) ^ LODWORD(STACK[0xE18]) ^ LODWORD(STACK[0xD20]) ^ LODWORD(STACK[0xCB8]) ^ LODWORD(STACK[0xA48]) ^ LODWORD(STACK[0xA60]) ^ LODWORD(STACK[0xAA8]) ^ LODWORD(STACK[0xCF8]) ^ LODWORD(STACK[0xB90]) ^ LODWORD(STACK[0xB88]) ^ LODWORD(STACK[0xE70]) ^ LODWORD(STACK[0xA98]) ^ LODWORD(STACK[0xCC8]) ^ LODWORD(STACK[0xCC0]) ^ v830;
  LODWORD(v832) = v827 + 1074098709;
  HIDWORD(v839) = (v827 + 1074098709) ^ v826;
  LODWORD(v839) = (v827 + 1074098709) ^ ~v826;
  v840 = STACK[0x860];
  v841 = LODWORD(STACK[0xD08]) ^ LODWORD(STACK[0x860]) ^ (728055013 * v814) ^ v830 ^ v823 ^ (728055013 * (v824 ^ v805));
  v842 = v830 ^ 0xB57E6AA9;
  v843 = (v817 ^ (8 * (v832 ^ v817)) ^ __ROR4__((v839 >> 30) ^ 0xFEC425CA, 2) ^ 0xE9279FE7) + 1421924783 * ((v830 ^ 0xB57E6AA9) - LODWORD(STACK[0x708]));
  v844 = v824 + 1768220129 * (LODWORD(STACK[0xD08]) - (v830 ^ 0xB57E6AA9 ^ LODWORD(STACK[0x860])));
  v845 = v843 - ((2 * v843) & 0x5138147C) + 681314878;
  v846 = STACK[0xE80] + 1081;
  LOBYTE(v817) = *(v846 + ((v824 - 31 * (LOBYTE(STACK[0xD08]) - (v830 ^ 0xA9 ^ LOBYTE(STACK[0x860])))) ^ 7));
  LOBYTE(v823) = -93 - 93 * (((v817 ^ 0x2A) - 42) ^ ((v817 ^ 0x23) - 35) ^ ((v817 ^ 0x4F) - 79));
  LOBYTE(v826) = v823 & 0x4B ^ 0x76;
  LOBYTE(v817) = 24 * (((v817 ^ 0x16) + 106) ^ ((v817 ^ 0x1B) + 37) ^ ((v817 ^ 0xB) - 11)) + 15;
  LOBYTE(v831) = (v817 & 0x81 | 0x2E) ^ v817 & 0x5C;
  LOBYTE(v831) = v823 ^ (2 * ((v823 ^ 0x6E) & (2 * ((v823 ^ 0x6E) & (2 * ((v823 ^ 0x6E) & (2 * ((v823 ^ 0x6E) & (2 * ((v823 ^ 0x6E) & (2 * ((v823 ^ 0x6E) & (2 * v823) & 0x5E ^ v826)) ^ v826)) ^ v826)) ^ v826)) ^ v826)) ^ v826)) ^ (v817 ^ (2 * (v817 & (2 * (v817 & (2 * (v817 & (2 * (v817 & (2 * (v817 & (2 * v831) ^ v831)) ^ v831)) ^ v831)) ^ v831)) ^ v831))) & 0x78 ^ 0x5C;
  LOBYTE(v823) = *(STACK[0xE90] + ((-5 * BYTE1(v844)) ^ 0x26));
  LODWORD(v834) = *(STACK[0xEA0] + ((-5 * (BYTE2(v841) ^ 0x7E)) ^ 0xAFLL));
  v847 = *(STACK[0xEA0] + ((-54 - 5 * ((((v843 - ((2 * v843) & 0x7C) + 62) ^ 0xCC) + 52) ^ (((v843 - ((2 * v843) & 0x7C) + 62) ^ 0xA8) + 88) ^ (((v843 - ((2 * v843) & 0x7C) + 62) ^ 0x5A) - 90))) ^ 0xAFLL));
  v848 = STACK[0x500];
  *(v848 + STACK[0x6D8]) = v831;
  LODWORD(v830) = (((v834 >> 2) | (v834 << 6)) ^ (2 * ((v834 >> 2) | (v834 << 6))) & 0x7FE4 ^ 0x38) - 1;
  LOBYTE(v834) = (v830 ^ 0xBB) - 65;
  LOBYTE(v837) = v834 & 0x7E ^ 0x4D;
  *(v848 + STACK[0x6C0]) = *(a67 + (v830 ^ 0x56)) ^ v830 ^ 0xBB ^ v834 ^ (2 * ((v834 ^ 0x64) & (2 * ((v834 ^ 0x64) & (2 * ((v834 ^ 0x64) & (2 * ((v834 ^ 0x64) & (2 * ((v834 ^ 0x64) & (2 * (v837 ^ v834 & 0x1A)) ^ v837)) ^ v837)) ^ v837)) ^ v837)) ^ v837)) ^ 0x4B;
  LOBYTE(v830) = *(v846 + (v841 ^ 0xA4));
  LOBYTE(v831) = -93 * (((v830 ^ 0xFE) + 2) ^ ((v830 ^ 0x51) - 81) ^ ((v830 ^ 0xE9) + 23)) - 61;
  LOBYTE(v837) = v831 & 0xED ^ 0x93;
  LOBYTE(v834) = (v831 ^ 0x4E) & (2 * ((v831 ^ 0x4E) & (2 * ((v831 ^ 0x4E) & (2 * ((v831 ^ 0x4E) & (2 * ((v831 ^ 0x4E) & (2 * (((2 * (v831 & 0xF)) ^ 0x22) & (v831 ^ 0xE) ^ v837)) ^ v837)) ^ v837)) ^ v837)) ^ v837)) ^ v837;
  LOBYTE(v830) = 24 * (((v830 ^ 5) - 101) ^ ((v830 ^ 0x1C) + 100) ^ (64 - v830));
  LOBYTE(v837) = v830 - 110;
  LOBYTE(v830) = (v830 + 19) ^ (v830 - 110);
  LOBYTE(v836) = 2 * ((2 * v830) ^ v830 ^ (2 * v830) & v837);
  LOBYTE(v836) = 2 * ((2 * (v836 ^ v830 ^ v836 & v837)) ^ v830 ^ (2 * (v836 ^ v830 ^ v836 & v837)) & v837);
  *(v848 + STACK[0x6C8]) = v831 ^ (2 * v834) ^ (v837 ^ (2 * ((2 * (v836 ^ v830 ^ v836 & v837)) ^ v830 ^ (2 * (v836 ^ v830 ^ v836 & v837)) & v837))) & 0x78 ^ 0x19;
  v849 = *(v846 + (((v823 ^ (-5 * BYTE1(v844) - ((-10 * BYTE1(v844)) & 0x16) - 117) ^ 9) - 1) ^ 0xEFLL));
  LODWORD(v830) = LODWORD(STACK[0x4F8]) - 93 * (((v849 ^ 0x74) - 116) ^ ((v849 ^ 0xFFFFFFD7) + 41) ^ ((v849 ^ 0xFFFFFFE5) + 27));
  LOBYTE(v823) = v830 & 0x8E ^ 0xD5;
  v850 = LODWORD(STACK[0x4F4]) + 24 * ((v849 - 32) ^ ((v849 ^ 0xB) + 117) ^ ((v849 ^ 0xD) + 19));
  LOBYTE(v831) = v850 & 0x78 ^ 0xF0;
  *(v848 + STACK[0x698]) = v830 ^ (2 * ((v830 ^ 0x64) & (2 * ((v830 ^ 0x64) & (2 * ((v830 ^ 0x64) & (2 * ((v830 ^ 0x64) & (2 * ((v830 ^ 0x64) & (2 * (v823 ^ v830 & 0x2A)) ^ v823)) ^ v823)) ^ v823)) ^ v823)) ^ v823)) ^ (v850 ^ (2 * ((v850 ^ 0x14) & (2 * ((v850 ^ 0x14) & (2 * ((v850 ^ 0x14) & (2 * ((v850 ^ 0x14) & (2 * ((v850 ^ 0x14) & (2 * v831) ^ v831)) ^ v831)) ^ v831)) ^ v831)) ^ v831))) & 0x78 ^ 0x82;
  v851 = ((v841 >> 20) & 0xFF0 | (v841 >> 28)) ^ 0x7A;
  v852 = STACK[0xEB0];
  LOBYTE(v851) = -81 * (*(STACK[0xEB0] + ((v851 - ((2 * v851) & 0x1A) - 115) ^ 0x1ELL)) ^ (v851 - ((2 * v851) & 0x1A) - 115) ^ 0x8F);
  LOBYTE(v823) = (v851 ^ 0xC0) - 50;
  LOBYTE(v831) = v823 & 0xA3 ^ 0x6F;
  *(v848 + STACK[0x6E0]) = *(a67 + (v851 ^ 0x2DLL)) ^ v851 ^ 0xC0 ^ v823 ^ (2 * ((v823 ^ 0x54) & (2 * ((v823 ^ 0x54) & (2 * ((v823 ^ 0x54) & (2 * ((v823 ^ 0x54) & (2 * ((v823 ^ 0x54) & (2 * (((2 * v823) & 0x2A ^ 0x76) & (v823 ^ 0x54) ^ v831)) ^ v831)) ^ v831)) ^ v831)) ^ v831)) ^ v831)) ^ 0xB1;
  LODWORD(v832) = v832 + 1399579941 * (v840 - (v842 ^ v838));
  LOBYTE(v851) = (*(a67 + (BYTE2(v832) ^ 0x64)) & 0x45 ^ 0xDA) & (*(a67 + (BYTE2(v832) ^ 0x64)) & 0x45 ^ 0x9B) ^ *(a67 + (BYTE2(v832) ^ 0x64)) & 0xFB ^ BYTE2(v832) ^ ((BYTE2(v832) ^ 0x89) - 93);
  v853 = STACK[0xEC0];
  LOBYTE(v851) = *(STACK[0xEC0] + (((((v851 ^ 0x76) - 41) ^ ((v851 ^ 0xBC) + 29) ^ ((v851 ^ 0xDA) + 123)) + 72) ^ 0x98));
  *(v848 + STACK[0x6B8]) = 6 - 59 * (((v851 ^ 0x5A) - 127) ^ ((v851 ^ 3) - 38) ^ ((v851 ^ 0x32) - 23));
  v854 = STACK[0xAC0];
  v855 = *(v846 + (BYTE2(v844) ^ 0x7DLL));
  v856 = (((v854 + 693045297) ^ 0x82C77E93) + 1417120073) ^ (v854 + 693045297) ^ (((v854 + 693045297) ^ 0x62C59C41) - 1267373157) ^ (((v854 + 693045297) ^ 0x96301129) + 1082189555) ^ (((v854 + 693045297) ^ 0x5F7DFBDF) - 1983050747);
  LOBYTE(v830) = -93 * (((v855 ^ 0xB0) + 80) ^ v855 ^ ((v855 ^ 0x76) - 118)) - 40;
  LOBYTE(v831) = v830 & 0x4E ^ 0x4A;
  v857 = LODWORD(STACK[0x72C]) + 24 * (((v855 ^ 4) - 36) ^ ((v855 ^ 0x13) + 77) ^ ((v855 ^ 0x11) + 47));
  *(v848 + (v856 ^ 0x294F0824)) = v830 ^ (v857 ^ (2 * ((v857 ^ 0x24) & (2 * ((v857 ^ 0x24) & (2 * ((v857 ^ 0x24) & (2 * (v857 & 0x88 | 0x33)) ^ (v857 & 0x88 | 0x33))) ^ (v857 & 0x88 | 0x33))) ^ (v857 & 0x88 | 0x33)))) & 0x78 ^ (2 * ((v830 ^ 0x38) & (2 * ((v830 ^ 0x38) & (2 * ((v830 ^ 0x38) & (2 * ((v830 ^ 0x38) & (2 * ((v830 ^ 0x38) & (2 * v831) ^ v831)) ^ v831)) ^ v831)) ^ v831)) ^ v831)) ^ 0x20;
  LOBYTE(v857) = (BYTE3(v832) ^ 0x9C) - 42;
  LOBYTE(v831) = v857 & 0x1F ^ 0xA9;
  *(v848 + STACK[0x6A8]) = *(a67 + (BYTE3(v832) ^ 0x71)) ^ BYTE3(v832) ^ v857 ^ (2 * ((v857 ^ 0x4C) & (2 * ((v857 ^ 0x4C) & (2 * ((v857 ^ 0x4C) & (2 * ((v857 ^ 0x4C) & (2 * ((v857 ^ 0x4C) & (2 * (((2 * v857) & 0x1A ^ 0x52) & v857 ^ v831)) ^ v831)) ^ v831)) ^ v831)) ^ v831)) ^ v831)) ^ 1;
  LOBYTE(v856) = (v856 & 0x97 ^ 0x93) + (v856 & 0x97 ^ 4);
  LOBYTE(v856) = (v856 - ((2 * v856) & 0x99) - 116) ^ BYTE1(v841);
  *(v848 + STACK[0x6B0]) = *(a67 + (v856 ^ 0xBLL)) ^ (((v856 ^ 0xE6) - 93) ^ v856) & 0xFE ^ 0x62;
  *(v848 + STACK[0x6F8]) = HIBYTE(v845) ^ 0x8C ^ ((HIBYTE(v845) ^ 0x8C) - 93) ^ *(a67 + (HIBYTE(v845) ^ 0x61)) ^ 0xF;
  LODWORD(v856) = *(STACK[0xEA8] + (((BYTE2(v845) ^ 0x86) - 7) ^ 0x67));
  LODWORD(v830) = ((v856 ^ 0xFFFFFFDC) + 36) ^ ((v856 ^ 0x1E) - 30) ^ ((v856 ^ 0xFFFFFF84) + 124);
  v858 = v830 - 118;
  LODWORD(v830) = ((117 - v830) & 0xFFFFFFA4 | 0x53) ^ (v830 - 118) & 0xFFFFFFA6;
  LODWORD(v856) = -59 * (v858 ^ ((16 * ((v856 >> 1) & 1)) | 0xFFFFFF8F) ^ (2 * ((v858 ^ 0x24) & (2 * ((v858 ^ 0x24) & (2 * ((v858 ^ 0x24) & (2 * ((v858 ^ 0x24) & (2 * ((v858 ^ 0x24) & (2 * (v858 & (2 * v830) ^ v830)) ^ v830)) ^ v830)) ^ v830)) ^ v830)) ^ v830)));
  LOBYTE(v858) = (v856 ^ 0xC0) - 23;
  LOBYTE(v841) = v858 & 0x60 ^ 0xF7;
  *(v848 + STACK[0x6F0]) = v856 ^ 0xC0 ^ v858 ^ *(a67 + (v856 ^ 0x2DLL)) ^ (2 * ((v858 ^ 0x3A) & (2 * ((v858 ^ 0x3A) & (2 * ((v858 ^ 0x3A) & (2 * ((v858 ^ 0x3A) & (2 * ((v858 ^ 0x3A) & (2 * ((v858 ^ 0x3A) & 0x1A ^ v841)) ^ v841)) ^ v841)) ^ v841)) ^ v841)) ^ v841));
  LOBYTE(v856) = BYTE3(v844) ^ 0x6B;
  LOBYTE(v858) = ((BYTE3(v844) ^ 0x6B) + 24) & 0xCD ^ 0xA1;
  LOBYTE(v831) = ((BYTE3(v844) ^ 0x6B) + 24) ^ 0xA;
  LOBYTE(v814) = *(v853 + (((*(a67 + ((v844 >> 24) ^ 0x86)) ^ v856 ^ (v856 + 24) ^ (2 * (v831 & (2 * (v831 & (2 * (v831 & (2 * (v831 & (2 * (v831 & (2 * ((((2 * (v856 + 24)) & 0x16 ^ 0x46) & 2 | v858) ^ ((2 * (v856 + 24)) & 0x16 ^ 0x46) & (v856 + 24))) ^ v858)) ^ v858)) ^ v858)) ^ v858)) ^ v858)) ^ 0x4E) - 7) ^ 0x98));
  *(v848 + STACK[0x6A0]) = LODWORD(STACK[0x220]) - 59 * (((v814 ^ 0x22) - 104) ^ ((v814 ^ 0xEE) + 92) ^ ((v814 ^ 0xA7) + 19));
  v859 = *(STACK[0xEA0] + ((-5 * (((((v847 >> 2) | (v847 << 6)) ^ (2 * ((v847 >> 2) | (v847 << 6))) & 0xE4 ^ 0x38) - 1) ^ 0x83)) ^ 0xAFLL));
  v860 = (((v859 >> 2) | (v859 << 6)) ^ (2 * ((v859 >> 2) | (v859 << 6))) & 0x7FE4 ^ 0x38) - 1;
  LOBYTE(v830) = (v860 ^ 0xC0) - 80;
  LOBYTE(v826) = v830 & 0x5D ^ 0x75;
  LOBYTE(v841) = v830 ^ 0x72;
  *(v848 + STACK[0x6D0]) = *(a67 + (v860 ^ 0x2DLL)) ^ v860 ^ 0xC0 ^ v830 ^ (2 * (v841 & (2 * (v841 & (2 * (v841 & (2 * (v841 & (2 * (v841 & (2 * (((2 * v830) & 0x66 ^ 0x2E) & (v830 ^ 0x62) ^ v826)) ^ v826)) ^ v826)) ^ v826)) ^ v826)) ^ v826)) ^ 0x28;
  LOBYTE(v843) = *(v846 + (BYTE1(v845) ^ 0x7ELL));
  LOBYTE(v860) = a74 - 93 * (((v843 ^ 0x21) - 33) ^ ((v843 ^ 0xFC) + 4) ^ ((v843 ^ 0x9B) + 101));
  LOBYTE(v856) = v860 & 0xDE ^ 0x3F;
  LOBYTE(v843) = 24 * (((v843 ^ 0xA) + 118) ^ ((v843 ^ 9) - 73) ^ ((v843 ^ 5) + 123));
  LOBYTE(v843) = v860 ^ (v843 ^ (2 * ((v843 ^ 0x10) & (2 * ((v843 ^ 0x10) & (2 * ((v843 ^ 0x10) & (2 * (v843 & 0x28 ^ 0xCC)) ^ v843 & 0x28 ^ 0xCC)) ^ v843 & 0x28 ^ 0xCC)) ^ v843 & 0x28 ^ 0xCC))) & 0x78 ^ (2 * ((v860 ^ 0x60) & (2 * ((v860 ^ 0x60) & (2 * ((v860 ^ 0x60) & (2 * ((v860 ^ 0x60) & (2 * ((v860 ^ 0x60) & (2 * ((v860 ^ 0x60) & 0x3E ^ v856)) ^ v856)) ^ v856)) ^ v856)) ^ v856)) ^ v856)) ^ 0xEA;
  LOBYTE(v843) = ((v843 >> 4) | (16 * v843)) ^ *(v852 + (((v843 >> 4) | (16 * v843)) ^ 0xD8));
  *(v848 + (v854 + 6)) = LODWORD(STACK[0xDB0]) - 81 * (((v843 ^ 0xA1) - 48) ^ ((v843 ^ 0xBA) - 43) ^ ((v843 ^ 0x52) + 61));
  LOBYTE(v856) = ((BYTE1(v832) ^ 0x45) - 23) & 0x98 ^ 0x33;
  LOBYTE(v830) = ((BYTE1(v832) ^ 0x45) - 23) ^ 0x3A;
  *(v848 + STACK[0x6E8]) = *(a67 + (BYTE1(v832) ^ 0xA8)) ^ BYTE1(v832) ^ 0x45 ^ ((BYTE1(v832) ^ 0x45) - 23) ^ (2 * (v830 & (2 * (v830 & (2 * (v830 & (2 * (v830 & (2 * (v830 & (2 * (v856 ^ (22 - (BYTE1(v832) ^ 0x45)) & 0x22)) ^ v856)) ^ v856)) ^ v856)) ^ v856)) ^ v856)) ^ 0x62;
  LOBYTE(v860) = (v832 ^ 0xE1) - 86;
  LOBYTE(v856) = v860 & 0x2B ^ 0xB9;
  *(v848 + STACK[0x700]) = *(a67 + (v832 ^ 0xCLL)) ^ v832 ^ 0xE1 ^ v860 ^ (2 * ((v860 ^ 0x78) & (2 * ((v860 ^ 0x78) & (2 * ((v860 ^ 0x78) & (2 * ((v860 ^ 0x78) & (2 * (v860 & (2 * (((2 * v860) & 0x72 ^ 0x52) & v860 ^ v856)) ^ v856)) ^ v856)) ^ v856)) ^ v856)) ^ v856)) ^ 0xB3;
  if (LODWORD(STACK[0xE00]) != (v854 + 78722546) < 0x4B135E2)
  {
    v861 = STACK[0xE00];
  }

  else
  {
    v861 = a75 > v854 + 78722546;
  }

  return (*(STACK[0xED8] + 8 * (LODWORD(STACK[0xC58]) ^ (205 * v861))))();
}

uint64_t sub_10092257C()
{
  STACK[0x600] = v0;
  *v2 = (*(v1 + 415256))();
  return (*(v1 + 278008))();
}

uint64_t sub_100922714()
{
  HIDWORD(v6) = v4;
  LODWORD(v6) = 1567734945 * v4;
  *(v5 - 224) = v3 ^ 0x5861;
  v7 = (1677721600 * v2) | ((-1143302375 * v2) >> 6);
  v8 = ((675071911 * v1) >> ((v3 ^ 0x61) - 62)) + 1308622848 * v1;
  v9 = (80192384 * v0) | ((-1844867257 * v0) >> 25);
  v10 = (v6 >> 5) - v7 + v9 - v8;
  v11 = (1662884352 * v10) | ((-1263431987 * v10) >> 23);
  v12 = (823994752 * v8) | ((-429770157 * v8) >> 25);
  v13 = (-1273233408 * v9) | ((1096084743 * v9) >> 14);
  v14 = ((504758272 * v7) | ((-1804726517 * v7) >> 15)) - v13 - v12 - v11;
  v15 = (637534208 * v11) | ((1895697683 * v11) >> 7);
  v16 = (-958628864 * v14) | ((-890128609 * v14) >> 22);
  v17 = (1337982976 * v13) | ((-661853889 * v13) >> 10);
  v18 = (v15 ^ ((1860819200 * v12) | ((-395384359 * v12) >> 24))) - v16 + v17;
  v19 = (777021952 * v15) | ((-803788747 * v15) >> 23);
  v20 = (-1428018176 * v16) | ((-940918645 * v16) >> 22);
  v21 = (-1819536128 * v18) | ((1888717845 * v18) >> 24);
  v22 = v20 ^ (((-1910997874 * v17) | ((-955498937 * v17) >> 31)) - v19);
  LODWORD(STACK[0x390]) = v22;
  v23 = v22 ^ 0x27C637E0 ^ v21;
  v24 = (-1487243613 * (v20 ^ v19) - v21 - ((2 * (-1487243613 * (v20 ^ v19) - v21) + 1519036938) & 0x4F8C6FC0) - 1794405147) ^ v23;
  v25 = (v24 + 1302114183) ^ v21;
  v26 = v24 + 1302114183 + v20;
  v27 = (v24 - ((2 * (v24 + 1302114183)) & 0x4F8C6FC0) + 1969416039) ^ v23;
  LODWORD(STACK[0x3A0]) = v24 + 1302114183;
  LODWORD(STACK[0x398]) = v26;
  v28 = (1287208960 * v26) | ((193540837 * v26) >> 18);
  LODWORD(STACK[0x358]) = v25;
  v29 = (2046820352 * v25) | ((1424804669 * v25) >> 7);
  LODWORD(STACK[0x350]) = v27;
  v30 = (1200496640 * v27) | ((-1906688911 * v27) >> 19);
  HIDWORD(v6) = ((-1678383808 * (v24 + 1302114183)) | ((309319573 * (v24 + 1302114183)) >> 26)) + v28 + v29 + v30;
  LODWORD(v6) = 1799165701 * HIDWORD(v6);
  v31 = v6 >> 1;
  v32 = (1543503872 * v29) | ((-1659196585 * v29) >> 6);
  v33 = (-1605568864 * v30) | ((889350069 * v30) >> 27);
  v34 = (((-176160768 * v28) | ((1923514859 * v28) >> 9)) + v32 + v31) ^ v33;
  v35 = (1122364992 * v34) | ((822843321 * v34) >> 26);
  v36 = (-579834112 * v31) | ((1356689519 * v31) >> 24);
  v37 = (-1275068416 * v33) | ((-486270611 * v33) >> 6);
  v38 = v35 ^ (((1912403848 * v32) | ((-297820431 * v32) >> 29)) + v36);
  v39 = (-687865856 * v36) | ((-893702953 * v36) >> 8);
  v40 = (1571518976 * v35) | ((-693185091 * v35) >> 23);
  v41 = (1210597376 * (v38 - v37)) | ((-659480415 * (v38 - v37)) >> 18);
  v42 = (((38245120 * v37) | ((1728202643 * v37) >> 24)) + v39 - v40) ^ 0xB3774617 ^ v41;
  v43 = ((v41 ^ (v39 - v40 - 1767042734)) - ((2 * (v41 ^ (v39 - v40 - 1767042734)) + 103949414) & 0x66EE8C2E) - 1232054198) ^ v42;
  v44 = (-1186304000 * (1336455117 * v43 + v40)) | ((-1540647769 * (1336455117 * v43 + v40)) >> 20);
  HIDWORD(v6) = (1336455117 * v43 - ((525426586 * v43) & 0x66EE8C2E) - 1284028905) ^ v42;
  LODWORD(v6) = -497867931 * HIDWORD(v6);
  v45 = v6 >> 2;
  v46 = (-704643072 * (v41 - 1336455117 * v43)) | ((-1073529493 * (v41 - 1336455117 * v43)) >> 7);
  v47 = ((174700107 * v43) >> 2) - (v43 << 30) - v44 + v46 + v45;
  v48 = (-1610612736 * v47) | ((694232045 * v47) >> 3);
  v49 = (-1892234336 * v46) | ((209303133 * v46) >> 27);
  v50 = (-1985675264 * v45) | ((-1356232283 * v45) >> 16);
  v51 = ((((2035481088 * v44) | ((205302141 * v44) >> 23)) - v48) ^ v49) + v50;
  v52 = (-1952448512 * v48) | ((1712938077 * v48) >> 11);
  v53 = (1862564412 * v51) | ((-608100721 * v51) >> 30);
  v54 = (411189433 * v50) >> 10;
  v55 = (775946240 * v50) | v54;
  v56 = 8094301 * v55;
  v57 = (((1129900928 * v49) | ((-58281513 * v49) >> 25)) + v52 - v53) ^ v55;
  v58 = (2050834432 * v52) | ((623765749 * v52) >> 18);
  v59 = (-902654144 * v57) | ((-1758934435 * v57) >> 26);
  v60 = (352321536 * v53) | ((368419349 * v53) >> 8);
  v61 = v59 ^ (((-402653184 * v54) | (v56 >> 5)) - v58) ^ (v60 - 2 * (v60 & 0x6111BA9F ^ ((368419349 * v53) >> 8) & 6) + 1628551833);
  v62 = ((v58 - v60) ^ 0x8CD9A0D9 ^ v59) - (v61 ^ 0x6111BA99) - 137057200;
  v63 = (-759527949 * v62) ^ v61 ^ 0x6111BA99;
  v64 = -759527949 * v62 + v60;
  LODWORD(STACK[0x360]) = -759527949 * v62;
  v65 = v59 - -759527949 * v62;
  LODWORD(STACK[0x364]) = v64;
  LODWORD(STACK[0x384]) = v65;
  v66 = (72461674 * v64) | ((-2111252811 * v64) >> 31);
  v67 = (-2070282240 * v65) | ((-594918835 * v65) >> 15);
  LODWORD(STACK[0x340]) = v63;
  v68 = ((-1510711296 * v62) | ((-1980944477 * v62) >> 19)) - v66;
  LODWORD(v6) = __ROR4__(((819986432 * v63) & 0xE0000000 | ((1704757639 * v63) >> 11) | (283115520 * v63) & 0x1FFFFFFF) ^ 0xD9C0C6C1, 29);
  v69 = (1308688384 * ((v6 ^ 0xCE06360E) + (v68 ^ v67))) | ((367545857 * ((v6 ^ 0xCE06360E) + (v68 ^ v67))) >> 16);
  v70 = (564682101 * v67) >> 27;
  v71 = (889958048 * v67) | v70;
  v72 = (520093696 * (v6 ^ 0xCE06360E)) | ((-1976561889 * (v6 ^ 0xCE06360E)) >> 8);
  v73 = v72 + v71 + (v69 ^ ((-1748455360 * v66) | ((-1302388031 * v66) >> 26)));
  v74 = -296332493 * v72;
  v75 = (-872415232 * v69) | ((-1208555661 * v69) >> 6);
  v76 = (-503316480 * v73) | ((-1241565711 * v73) >> 7);
  v72 *= -1185329972;
  v77 = v75 - (v70 << 30) + ((583462551 * v71) >> 2);
  v78 = v72 & 4;
  v79 = v72 & 0xFFFFFFFC | (v74 >> 30);
  v80 = v77 ^ v76 ^ (v79 - 2 * (v79 & 0x232E77CF ^ v78) - 1557235765) ^ 0xA32E77CB;
  v81 = (-2101311167 * v80) >> 10;
  v82 = (-2133131264 * v75) | ((-1565359909 * v75) >> 16);
  v83 = (-136314880 * v76) | ((232806335 * v76) >> 11);
  v84 = (1346371584 * v80) | v81;
  v85 = (((-1068007424 * v79) | ((150569135 * v79) >> 17)) + v82) ^ v83 ^ 0x7917841 ^ (v84 - 2 * (v84 & 0x7917861 ^ v81 & 0x20) + 126974017);
  v86 = v85 + (v84 ^ (1720607355 * (v83 ^ v82)));
  LODWORD(STACK[0x344]) = v86;
  v86 += 81483839;
  v87 = v83 - v86;
  v88 = v86 + v84;
  v89 = v86 ^ v85;
  v90 = -1724632957 * v86;
  *(v5 - 152) = v86;
  v91 = -912161768 * v86;
  LODWORD(STACK[0x36C]) = v87;
  LODWORD(STACK[0x3C8]) = v86 + v84;
  v92 = (109051904 * v87) | ((1252661261 * v87) >> 9);
  v93 = 1320975379 * v92;
  v94 = (693545840 * v89) | ((-761959753 * v89) >> 28);
  v95 = (526908656 * v88) | ((1375109071 * v88) >> 28);
  v96 = v95 - v94 + (v92 ^ (v91 & 0xFFFFFFF8 | (v90 >> 29)));
  v97 = -176895433 * v96;
  v98 = 637534208 * v92;
  v96 *= 848150528;
  v99 = v96 ^ (637534208 * v92);
  v100 = v96 & 0xFFFFC000 | (v97 >> 18);
  HIDWORD(v6) = 673873713 * v95;
  LODWORD(v6) = 673873713 * v95;
  v101 = v6 >> 31;
  HIDWORD(v6) = v100 ^ (v98 & 0xFE000000 | (v93 >> 7));
  LODWORD(v6) = v99;
  v102 = (-2114912256 * v94) | ((1870299633 * v94) >> 16);
  LODWORD(v6) = __ROR4__((v6 >> 30) ^ 0x84C14A07, 2);
  v103 = (-253678592 * ((v101 ^ v6 ^ 0xE1305281) + v102)) | ((150747211 * ((v101 ^ v6 ^ 0xE1305281) + v102)) >> 22);
  v104 = (409430856 * v100) | ((-485692055 * v100) >> 29);
  v105 = (442913664 * v102) | ((-936063833 * v102) >> 25);
  v106 = ((-1867776 * v101) | ((160694215 * v101) >> 17)) + v105 + v104 - v103;
  v107 = (153157632 * v104) | ((2064386337 * v104) >> 16);
  v108 = (1650070224 * v103) | ((1176871213 * v103) >> 28);
  v109 = (-1862643264 * v106) | ((1178855751 * v106) >> 26);
  v110 = (v108 ^ v107) - 1532582791;
  v111 = ((-1426063360 * v105) | ((-1293529173 * v105) >> 8)) - v107 - v108 + v109;
  v112 = v111 + (v109 ^ 0xBFA5F9 ^ v110);
  v113 = v112 ^ v109;
  LODWORD(STACK[0x38C]) = v111;
  v114 = v112 ^ 0x2ACDEE2D ^ v111;
  v115 = v108 - (v112 ^ 0x2ACDEE2D);
  LODWORD(STACK[0x388]) = v113;
  LODWORD(STACK[0x348]) = v112 ^ 0x2ACDEE2D;
  LODWORD(STACK[0x394]) = v115;
  HIDWORD(v6) = v115;
  LODWORD(v6) = -2026715671 * v115;
  v116 = v6 >> 1;
  LODWORD(STACK[0x34C]) = v114;
  LODWORD(STACK[0x354]) = v113 ^ 0x2ACDEE2D;
  v117 = (1156161536 * (v113 ^ 0x2ACDEE2D)) | ((1723475789 * (v113 ^ 0x2ACDEE2Du)) >> 19);
  v118 = (681811968 * v114) | ((1095320861 * v114) >> 19);
  v119 = (v117 ^ (((-671088640 * (v112 ^ 0x2ACDEE2D)) | ((-1576328485 * (v112 ^ 0x2ACDEE2D)) >> 5)) - v116)) - v118;
  v120 = (405667840 * v119) | ((1624673303 * v119) >> 15);
  v121 = (-163577856 * v118) | ((1143829465 * v118) >> 10);
  HIDWORD(v6) = 986440009 * v117;
  LODWORD(v6) = 986440009 * v117;
  v122 = v6 >> 31;
  v123 = ((-864550912 * v116) | ((-1368335985 * v116) >> 13)) + v121 - v122 - v120;
  v124 = (1793649344 * v120) | ((699114411 * v120) >> 26);
  HIDWORD(v6) = v123;
  LODWORD(v6) = -652423415 * v123;
  v125 = v6 >> 1;
  v126 = v124 ^ ((-2065014784 * v122) | ((-1881921709 * v122) >> 19));
  v127 = -1174265959 * v125;
  v128 = (292919552 * v121) | ((-653167207 * v121) >> 24);
  v129 = 35625216 * v125;
  v130 = v126 - v128 - v125;
  v131 = v129 & 0xFFFFFF00 | HIBYTE(v127);
  v132 = (1486879104 * v124) | ((-122601485 * v124) >> 25);
  v133 = (-1733833173 * v130) >> 26;
  v134 = (703826624 * v130) | v133;
  v135 = ((1645917440 * v128) | ((1331829429 * v128) >> 24)) ^ v132 ^ v131 ^ 0x8B10E4E7 ^ (v134 - 2 * (v134 & 0xB10E4FF ^ v133 & 0x18) - 1961827097);
  v136 = (v135 ^ (((v131 + v132) ^ 0xA9CCD96A) - v134 + 989814031)) - 338015519;
  v137 = (-1287083264 * (v136 ^ v131)) | ((330516651 * (v136 ^ v131)) >> 24);
  v138 = (-1712512000 * (v136 + v134 - 2 * (v136 & v134))) | ((-890864823 * (v136 + v134 - 2 * (v136 & v134))) >> 22);
  v139 = (-1778384896 * (v136 + v135)) | ((168397259 * (v136 + v135)) >> 7);
  v140 = (v138 ^ (((-130636160 * v136) | ((-1745851059 * v136) >> 25)) - v137)) - v139;
  v141 = ((-1566437249 * v140) >> 5) - (v140 << 27);
  v142 = (-730209267 * v138) >> 16;
  v143 = (-468910080 * v138) | ((-730209267 * v138) >> 16);
  v144 = (1988376748 * v139) | ((1570836011 * v139) >> 30);
  v145 = ((v141 ^ ((875414018 * v137) | ((-1709776639 * v137) >> 31))) - v143) ^ v144;
  v146 = (236060672 * v141) | ((2093090569 * v141) >> 15);
  v147 = (-83886080 * v145) | ((-1300437253 * v145) >> 8);
  v148 = (-100663296 * v144) | ((1687359485 * v144) >> 7);
  v149 = v146 - (v148 + (v142 << 28)) + ((-952800881 * v143) >> 4) + v147;
  v150 = (-898292048 * v146) | ((2091340395 * v146) >> 28);
  v151 = (1516371968 * v147) | ((-1978618575 * v147) >> 15);
  v152 = (427819008 * v149) | ((998577715 * v149) >> 9);
  v153 = (((-2038169600 * v148) | ((232694177 * v148) >> 14)) ^ v151 ^ (v150 - ((2 * v150) & 0xA3AF864E) + 1373094695) ^ 0x51D7C327) + v152;
  v154 = v153 ^ (803482217 * (v150 + v151 - v152) + 1890237554);
  LODWORD(STACK[0x35C]) = -1619227105 * v154;
  LODWORD(STACK[0x368]) = v153 - -1619227105 * v154;
  LODWORD(STACK[0x37C]) = -1619227105 * v154 + v151;
  LODWORD(STACK[0x380]) = (-1619227105 * v154) ^ v152;
  v155 = *(v5 - 216);
  v156 = (*(v155 + 8 * (v3 ^ 0x8690)))(1028);
  STACK[0x4B8] = 0;
  LODWORD(STACK[0x48C]) = 0;
  STACK[0x4A0] = 0;
  *(v5 - 248) = 0;
  STACK[0x498] = 0;
  *(v5 - 256) = 0;
  STACK[0x480] = 0;
  *(v5 - 240) = 0;
  *(v5 - 232) = 0;
  STACK[0x4A8] = 0;
  STACK[0x490] = 0;
  STACK[0x478] = 0;
  STACK[0x4B0] = 0;
  v157 = *(v155 + 8 * ((111 * (v156 == 0)) ^ v3));
  *(v5 - 148) = -1391007032;
  return v157();
}

uint64_t sub_100923828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0xD10]) = 0;
  LODWORD(STACK[0xDD8]) = 0;
  LODWORD(STACK[0xD58]) = 0;
  LODWORD(STACK[0xD70]) = 0;
  LODWORD(STACK[0xD80]) = 0;
  LODWORD(STACK[0xD38]) = 0;
  v8 = STACK[0xE88] - 14045;
  LODWORD(STACK[0xA60]) = v6 ^ 0x92746F65;
  v9 = *(v7 + 8 * v8);
  LODWORD(STACK[0xEA8]) = 1;
  LODWORD(STACK[0xE18]) = 1;
  LODWORD(STACK[0xDF0]) = 1;
  LODWORD(STACK[0xDE8]) = 1;
  LODWORD(STACK[0xCF8]) = 1;
  LODWORD(STACK[0xD98]) = 1;
  LODWORD(STACK[0xDF8]) = 1;
  LODWORD(STACK[0xDA8]) = 1;
  LODWORD(STACK[0xD18]) = 1;
  LODWORD(STACK[0xE20]) = 1;
  LODWORD(STACK[0xE10]) = 1;
  LODWORD(STACK[0xDB0]) = 1;
  LODWORD(STACK[0xD28]) = 1;
  LODWORD(STACK[0xDB8]) = 1;
  LODWORD(STACK[0xD88]) = 1;
  LODWORD(STACK[0xE00]) = 1;
  LODWORD(STACK[0xDC0]) = 1;
  LODWORD(STACK[0xE28]) = 1;
  LODWORD(STACK[0xD30]) = 1;
  LODWORD(STACK[0xDE0]) = 1;
  LODWORD(STACK[0xD00]) = 1;
  LODWORD(STACK[0xD08]) = 1;
  LODWORD(STACK[0xDA0]) = 1;
  LODWORD(STACK[0xE08]) = 1;
  LODWORD(STACK[0xD20]) = 1;
  return v9(4294947698, -22206133, STACK[0xBD8], 0xFFFFF20000000000, 184, a6, &off_1010A0B50, 12602655);
}

uint64_t sub_100923A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19)
{
  v22 = a19 < 0x6BFF9C14;
  if (v22 == (v20 - 314933683) < 0x6BFF9C14)
  {
    v22 = v20 - 314933683 < a19;
  }

  return (*(v21 + 8 * (v19 ^ (44380 * v22))))();
}

uint64_t sub_100923B88(uint64_t a1)
{
  v5 = (((v1 - 47137) | 0xD88) ^ 0xE4F7A2C1) + *(a1 + 12 * v2 + 8);
  v6 = (v3 - 1734334193 < (((v1 + 813725173) | 0x524C380) ^ 0xC44136EC)) ^ (v5 < 0xF1E4C545);
  v7 = v3 - 1734334193 > v5;
  if (v6)
  {
    v7 = v3 - 1734334193 < (((v1 + 813725173) | 0x524C380) ^ 0xC44136EC);
  }

  return (*(v4 + 8 * (v7 | (2 * v7) | v1)))();
}

uint64_t sub_100923C94@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = STACK[0x1E20];
  v4 = STACK[0x1C20];
  v5 = STACK[0x83C];
  *(a1 + 72) = 0;
  *(a1 + 64) = STACK[0x1D0C];
  *(a1 + 88) = 0;
  *(a1 + 80) = STACK[0xAA0];
  *(a1 + 32) = v4;
  *(a1 + 36) = v2;
  *(a1 + 40) = v5;
  *(a1 + 44) = v2;
  *(a1 + 96) = v2;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0x9A0A9301979A4FF9;
  *(a1 + 120) = STACK[0x1DF8];
  v6 = STACK[0xF8C];
  v7 = STACK[0x1CC8];
  *(a1 + 128) = STACK[0x1544];
  *(a1 + 132) = v6;
  *(a1 + 136) = 0;
  return (*(v3 + 8 * (((v7 != 0) * (((v1 - 11386) | 0x3240) ^ 0xB3BD)) ^ v1)))();
}

uint64_t sub_100923DF4(uint64_t a1, uint64_t a2, int a3)
{
  v10 = -771517617 * (*(v4 + 4 * (v3 - 1569603968)) ^ v9);
  *(v4 + 4 * (v3 - 1569603968)) = v10;
  *(v4 + 4 * (v3 - 1569603968)) = ((*(STACK[0x218] + 4 * (*(v5 + 4 * v8) % 0x101u)) - 932433617) * (v6 - 608475310 * v3 + ((((v7 - 1364141577) & 0x514EFFEB) - 16329) ^ 0x41C54DA3))) ^ v10;
  return (*(STACK[0x228] + 8 * (v7 ^ (26 * (a3 == 28)))))();
}

uint64_t sub_100923FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = ~v4 + v2;
  v8 = *(a2 + v7 - 15);
  v9 = *(a2 + v7 - 31);
  v10 = a1 + v7;
  *(v10 - 15) = v8;
  *(v10 - 31) = v9;
  return (*(v6 + 8 * ((932 * (((2 * v5) ^ 0x10BBELL) + v4 == v3)) ^ v5)))();
}

uint64_t sub_100924014@<X0>(_BYTE *a1@<X8>)
{
  *v2 = *a1;
  LODWORD(STACK[0x2514]) = v4;
  STACK[0x2518] = STACK[0x16D0];
  v7 = *(v5 + 560);
  LODWORD(STACK[0x2520]) = v7;
  LODWORD(STACK[0x2524]) = v7 - ((2 * v7) & (v1 ^ 0xD3ABED4B)) + v3;
  STACK[0x1F38] = v5 + 8;
  STACK[0x2528] = v5 + 48;
  STACK[0x2530] = v5 + 48;
  return (*(v6 + 8 * v1))();
}

uint64_t sub_100924078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, _DWORD *a8)
{
  v13 = STACK[0x14C8] + (v8 + LODWORD(STACK[0x1214]) - 1895887163);
  v14 = ((v13 ^ *(*v12 + (*a8 & v10))) & 0x7FFFFFFF) * a6;
  v15 = (v14 ^ HIWORD(v14)) * a6;
  LOBYTE(v13) = *(STACK[0x6A8] + (v15 >> 24)) ^ *v13 ^ *(STACK[0x6A0] + (v15 >> 24)) ^ *((v15 >> 24) + STACK[0x6B0] + 1) ^ v15 ^ (-71 * BYTE3(v15));
  LOBYTE(STACK[0x1387]) = (((v13 ^ 0x14) + 103) ^ (-115 - v13) ^ ((v13 ^ 0xEB) - 102)) - ((((v8 - ((v8 << (((v9 + 2) | 0x10) - 87)) & 0xFA) + 125) ^ 0xEA) + 22) ^ (((v8 - ((v8 << (((v9 + 2) | 0x10) - 87)) & 0xFA) + 125) ^ 0xF5) + 11) ^ (((v8 - ((v8 << (((v9 + 2) | 0x10) - 87)) & 0xFA) + 125) ^ 0x62) - 98)) + 53;
  return (*(v11 + 8 * v9))(a1, a2, a3, a4, &off_1010A0B50, &STACK[0x17DF], 94, 2596675714);
}

uint64_t sub_1009247A8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = v9 < v13;
  if (v15 == v8 + v11 < ((a2 + a8) & v10 ^ ((a2 ^ v12) + a5)))
  {
    v15 = v8 + v11 < v9;
  }

  return (*(v14 + 8 * (a2 ^ (8 * v15))))();
}

uint64_t sub_10092490C@<X0>(int a1@<W3>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v43 = &STACK[0x670] + a1 + (v40 ^ v42) - 166601455;
  v44 = v43 + *(*(a38 - 1680276466) + (*(a39 - 231415367) & 0x489824FC));
  v45 = qword_1010C0540 ^ (v40 + 1915110683);
  v46 = (v44 + 1217930493) & v45;
  v47 = (v44 + 1217930495) & v45;
  v48 = (33 * v43) ^ (a2 >> v39) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + v46) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + v47);
  LODWORD(v47) = ((33 * v43) ^ (a2 >> v39) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + v46) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + v47));
  *v43 = v48 ^ 0xDC;
  return (*(v41 + 8 * ((114 * (a1 - (v47 != 220) != 166554696)) ^ v40)))();
}

uint64_t sub_100924A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *v5 = HIBYTE(v6) ^ 0x48;
  v5[1] = (BYTE6(v6) ^ 0x14) + (~(2 * (BYTE6(v6) ^ 0x14)) | 0x41) + 96;
  v5[2] = (BYTE5(v6) ^ 0x33) - ((2 * (BYTE5(v6) ^ 0x33)) & 0xBF) + 95;
  v5[3] = (BYTE4(v6) ^ 0xF1) + (~(2 * (BYTE4(v6) ^ 0xF1)) | 0x41) + 96;
  v5[4] = (BYTE3(v6) ^ 0xB7) + (~(2 * (BYTE3(v6) ^ 0xB7)) | 0x41) + 96;
  v5[5] = (BYTE2(v6) ^ 0xDC) - ((2 * (BYTE2(v6) ^ 0xDC)) & 0xBF) + 95;
  v5[6] = (BYTE1(v6) ^ 0x66) - ((2 * (BYTE1(v6) ^ 0x66)) & 0xBF) + 95;
  v5[7] = v6 ^ 0xB7;
  return (*(v7 + 8 * a5))();
}

uint64_t sub_100924D18(int8x16_t a1, int8x16_t a2, double a3, double a4, double a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = v16 + 4 * v12;
  v20 = v12 + v14;
  v21 = v12 + 4;
  a2.i64[0] = *(v19 + 4);
  a2.i32[2] = *(v19 + 12);
  v22 = vextq_s8(a1, a2, 0xCuLL);
  a2.i32[3] = *(v16 + 4 * v21);
  v23.i32[0] = *(a12 + 4 * (*(v19 + 4) & 1));
  v23.i32[1] = *(a12 + 4 * (*(v19 + 8) & 1));
  v23.i32[2] = *(a12 + 4 * (a2.i8[8] & 1));
  v23.i32[3] = *(a12 + 4 * (a2.i8[12] & 1));
  *v19 = veorq_s8(veorq_s8(veorq_s8(*(v16 + 4 * v20 + a11), v23), a6), vshrq_n_u32(vorrq_s8(vandq_s8(a2, v18), vandq_s8(v22, v17)), 1uLL));
  return (*(v15 + 8 * (((4 * (v21 == 224)) | (32 * (v21 == 224))) ^ v13)))(a2);
}

uint64_t sub_100924EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v64 = (v62 - 14344) ^ 0x263E;
  v65 = (*(v61 + 8 * (v62 ^ 0x72DA)))(260);
  *(v63 - 200) = v65;
  LODWORD(STACK[0x2B0]) = v64;
  return (*(v61 + 8 * (((v65 != 0) * (v64 - 42348)) ^ v62)))(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61);
}

uint64_t sub_100924EFC()
{
  v4 = *v3 - 292170933;
  v5 = (v4 < 0xFB82EB36) ^ (v0 - 292170933 < ((v1 + 2130331501) & 0x8105E27C) - 75322654);
  v6 = v0 - 292170933 > v4;
  if (v5)
  {
    v6 = v0 - 292170933 < ((v1 + 2130331501) & 0x8105E27C) - 75322654;
  }

  return (*(v2 + 8 * ((v6 * (((v1 + 69241623) | 0x31855228) ^ 0x35A5F35E)) ^ v1)))();
}

uint64_t sub_100924FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7 + 37475 + LODWORD(STACK[0xA34]) + 216822943;
  v10 = (v9 ^ 0xC6019E89) & (2 * (v9 & 0xE625D02A)) ^ v9 & 0xE625D02A;
  v11 = ((2 * (v9 ^ 0xCA009E9D)) ^ 0x584A9D6E) & (v9 ^ 0xCA009E9D) ^ (2 * (v9 ^ 0xCA009E9D)) & 0x2C254EB6;
  v12 = v11 ^ 0x24254291;
  v13 = (v11 ^ 0x8000020) & (4 * v10) ^ v10;
  v14 = ((4 * v12) ^ 0xB0953ADC) & v12 ^ (4 * v12) & 0x2C254EB4;
  v15 = (v14 ^ 0x20050A80) & (16 * v13) ^ v13;
  v16 = ((16 * (v14 ^ 0xC204423)) ^ 0xC254EB70) & (v14 ^ 0xC204423) ^ (16 * (v14 ^ 0xC204423)) & 0x2C254EB0;
  v17 = v15 ^ 0x2C254EB7 ^ (v16 ^ 0x44A00) & (v15 << 8);
  v18 = (v9 ^ (2 * ((v17 << 16) & 0x2C250000 ^ v17 ^ ((v17 << 16) ^ 0x4EB70000) & (((v16 ^ 0x2C210487) << 8) & 0x2C250000 ^ 0x8210000 ^ (((v16 ^ 0x2C210487) << 8) ^ 0x254E0000) & (v16 ^ 0x2C210487))))) & 0xFFFFFFF0 ^ 0x4FF08A51;
  LODWORD(STACK[0x18F8]) = v18;
  STACK[0x1550] = *(v8 + 8 * v7);
  STACK[0x1D00] = (((v18 ^ 0x80DACB57D70C774ALL) + 0x7F2534A828F388B6) ^ ((v18 ^ 0x6D1940B63F52BF9BLL) - 0x6D1940B63F52BF9BLL) ^ ((v18 ^ 0xEDC38BE1018B0FC0) + 0x123C741EFE74F040)) + 0x26F1CF3AFB03D540;
  return (*(v8 + 8 * (v7 ^ 0xCE8)))(a1, a2, a3, a4, STACK[0x808], 1864610357, a7, STACK[0x800]);
}

uint64_t sub_1009251F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, unsigned int a28)
{
  v29 = a28 < 0x31C20767;
  if (v29 == (a4 + 633348296) < 0x31C20767)
  {
    v29 = a28 > a4 + 633348296;
  }

  return (*(STACK[0xED8] + 8 * ((v28 + 20433) ^ (63792 * v29))))();
}

uint64_t sub_1009253A8()
{
  v5[116] = v5[143] + v1;
  v5[160] = v0;
  return (*(v4 + 8 * (((v3 == (((v2 ^ 0x76F9) - 28601) ^ 0x29BFF9CE)) * (((v2 ^ 0x76F9) - 15667) ^ 0xC874)) ^ v2 ^ 0x76F9)))();
}

uint64_t sub_100925400@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W3>, int a4@<W4>, uint64_t a5@<X8>)
{
  v6 = (a4 + a3) >> 16;
  v7 = a5 + a4 + v6 - ((a4 + a3 + v6) >> 8) + -((a4 + v6 + a2 + ((a4 + v6 + a2 - ((a4 + a3 + v6) >> 8)) >> 15) - ((a4 + a3 + v6) >> 8)) >> 4) + ((a4 + v6 + a2 - ((a4 + a3 + v6) >> 8)) >> 15) + a1;
  v8 = (a5 + a4 + v6 - ((a4 + a3 + v6) >> 8) - ((a4 + v6 + a2 + ((a4 + v6 + a2 - ((a4 + a3 + v6) >> 8)) >> 15) - ((a4 + a3 + v6) >> 8)) >> 4) + ((a4 + v6 + a2 - ((a4 + a3 + v6) >> 8)) >> 15) + a1) ^ 0xD08CDFF9;
  v9 = v8 - (v8 >> 13) + ((v8 - (v8 >> 13)) >> 4);
  v10 = (v9 ^ 0x451C05EB) + ((v9 ^ 0x451C05EB) >> 10) + (((v9 ^ 0x451C05EB) + ((v9 ^ 0x451C05EB) >> 10)) >> 3);
  v11 = (v10 ^ 0x4DF1973E) + ((v10 ^ 0x4DF1973E) >> 13) + (((v10 ^ 0x4DF1973E) + ((v10 ^ 0x4DF1973E) >> 13)) >> 2);
  v12 = (v11 ^ 0x1A60AA8E) + ((v11 ^ 0x1A60AA8E) >> 10) - (((v11 ^ 0x1A60AA8E) + ((v11 ^ 0x1A60AA8E) >> 10)) >> 5);
  v13 = (v12 ^ 0xF059931A) - ((v12 ^ 0xF059931A) >> 9) - (((v12 ^ 0xF059931A) - ((v12 ^ 0xF059931A) >> 9)) >> 5);
  v14 = v13 - 2125686725 + ((v13 - 2125686725) >> 10) + ((v13 - 2125686725 + ((v13 - 2125686725) >> 10)) >> 5);
  v15 = v14 - 974628663 - ((v14 - 974628663) >> 15) + ((v14 - 974628663 - ((v14 - 974628663) >> 15)) >> 6);
  v16 = v15 - 1438077555 + ((v15 - 1438077555) >> 9) - ((v15 - 1438077555 + ((v15 - 1438077555) >> 9)) >> 3);
  v17 = LODWORD(STACK[0x414]) ^ LODWORD(STACK[0x3D0]);
  v18 = v17 ^ LODWORD(STACK[0x460]) ^ 0xA8615F95;
  STACK[0x440] = v7;
  v19 = v17 ^ LODWORD(STACK[0x40C]) ^ STACK[0x218] & 0x7525F3BA ^ LODWORD(STACK[0x458]) ^ v18 ^ (2 * v18) & 0x7525F3BA ^ LODWORD(STACK[0x468]) ^ LODWORD(STACK[0x43C]) ^ v5 ^ v9 ^ v12 ^ v15 ^ (2 * (v12 ^ v9 ^ v15)) & 0x7525F3BA;
  v20 = LODWORD(STACK[0x448]) ^ LODWORD(STACK[0x454]);
  LODWORD(STACK[0x43C]) = v10;
  LODWORD(STACK[0x40C]) = v13;
  LODWORD(STACK[0x218]) = v16;
  LODWORD(STACK[0x454]) = 2 * (v20 ^ v10 ^ v13 ^ v16);
  LODWORD(STACK[0x468]) = v19;
  LODWORD(STACK[0x458]) = v19 ^ 0xB3D8D2AA;
  LODWORD(STACK[0x320]) = LODWORD(STACK[0x290]) ^ 0x80;
  LODWORD(STACK[0x3D0]) = ~LODWORD(STACK[0x29C]);
  v21 = *(STACK[0x480] + 8 * SLODWORD(STACK[0x470]));
  LODWORD(STACK[0x2F8]) = LODWORD(STACK[0x470]) - 11659;
  return v21(4294946388, 58764);
}

uint64_t sub_1009256D8@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v22 + 4 * (v23 ^ v14)) = 0;
  v31 = (((*v27 ^ 0x93E0FF04) + v16) ^ ((*v27 ^ v17) + v18) ^ ((a9 ^ *v27 ^ v19) + v20)) + a1;
  v32 = ((v31 ^ a2) + a3) ^ v31 ^ ((v31 ^ a4) + a5) ^ ((v31 ^ a6) + a7) ^ ((v31 ^ a8) + v24);
  *v27 = v32 ^ v25;
  v33 = (((v32 ^ v26) + v15) ^ ((v32 ^ v28) + v29) ^ ((v32 ^ v30) + v21)) + v14 < 0x14;
  return (*(a13 + 8 * (v33 | (8 * v33) | v13)))();
}

uint64_t sub_100925790@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, int a9@<W8>)
{
  v22 = *(v17 + ((v9 ^ v13) ^ 0x88) * v12 - (((((v9 ^ v13) ^ 0x88u) * v12 * v11) >> 32) >> 1) * v14);
  *(STACK[0x450] + 4 * v9) = v20 ^ ((a5 + (((v22 ^ a3) + 78) ^ ((v22 ^ a2) - 105) ^ (a1 + (v22 ^ v15))) * a4) ^ (v19 + (((v22 ^ a6) + 109) ^ ((v22 ^ a7) + 71) ^ ((v22 ^ a8) - 90)) * v18));
  return (*(v16 + 8 * (((v10 == 0) * v21) ^ a9)))();
}

uint64_t sub_100925838()
{
  v3 = *(v2 + 744);
  *(v2 + 792) = *(v1 + 8 * v0);
  return (*(v1 + 8 * (v0 - 42185 + v0 + 45235)))(v3);
}

uint64_t sub_1009258F4(int8x8_t a1, int8x8_t a2, int8x16_t a3, int8x8_t a4, int8x8_t a5, int8x8_t a6, int8x8_t a7, int8x8_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14)
{
  v24.val[0].i64[0] = (v17 + a11 - 1) & 0xF;
  v24.val[0].i64[1] = (v17 + a11 + 14) & 0xF;
  v24.val[1].i64[0] = (v17 + a11 + 13) & 0xF;
  v24.val[1].i64[1] = (a12 + a11 + v18) & 0xF;
  v24.val[2].i64[0] = (v17 + a11 + 11) & 0xF;
  v24.val[2].i64[1] = (v17 + a11 + 10) & 0xF;
  v24.val[3].i64[0] = (v17 + a11 + 9) & 0xF;
  v24.val[3].i64[1] = (v17 + a11) & 0xF ^ 8;
  v22 = veor_s8(vrev64_s8(veor_s8(veor_s8(*(v14 + v24.val[0].i64[0] - 7), *(a13 + a11)), veor_s8(*(v15 + v24.val[0].i64[0] - 7), *(v16 + v24.val[0].i64[0] - 7)))), vmul_s8(*&vqtbl4q_s8(v24, a3), a1));
  *(a13 + a11) = vrev64_s8(vadd_s8(veor_s8(veor_s8(vadd_s8(veor_s8(v22, a2), a4), vadd_s8(veor_s8(v22, a5), a6)), vadd_s8(veor_s8(v22, a7), a8)), v21));
  return (*(v20 + 8 * (((a10 == a11) * a14) ^ v19)))();
}

uint64_t sub_1009259E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (v4 + (v5 ^ 0xD3) - 84) ^ v5 ^ ((v5 ^ 0x4E) - 40) ^ ((v5 ^ 0x43) - 37) ^ ((v5 ^ 0xB8) + 34);
  v9 = v6 - 1;
  v10 = (((v8 ^ 0xF) - 65) ^ ((v8 ^ 0xCA) + 124) ^ ((v8 ^ 0x19) - 87)) - 11;
  STACK[0x4D0] = v9;
  *(a4 + v9) = v10 * (v5 + 25) - 109 * (102 * v10 - (v5 + 25) + 16 * (v5 + 25)) - 118;
  return (*(v7 + 8 * ((53389 * (STACK[0x4D0] == 0)) ^ v4)))();
}

uint64_t sub_100925C54()
{
  v4 = v2 - 1;
  v5 = ((v1 ^ 0x41) + 91) ^ v1 ^ ((v1 ^ 0xAF) - 75) ^ ((v1 ^ 0x9A) - 126) ^ ((((v0 + 106) | 0x60) ^ 0x7C) + (v1 ^ 0x90));
  v6 = (((v5 ^ 0xD4) - 87) ^ ((v5 ^ 0x67) + 28) ^ ((v5 ^ 0xED) - 110)) + 33;
  *(&STACK[0xD78] + v4) = -68 * (v6 + v1 + 113) + v6 * (v1 + 113) + 16;
  return (*(v3 + 8 * ((12746 * (v4 == 0)) ^ v0)))();
}

uint64_t sub_100925DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + v4 + 72);
  v8 = ((2 * v4) & 0xBA9FBBE0) + (v4 ^ 0x5D4FDDF3);
  *(a3 + v8 - 1565515251) = v7 ^ 0x23;
  *(a3 + v8 - 1565515250) = ((v3 + 59) ^ BYTE1(v7)) + (~(2 * ((v3 + 59) ^ BYTE1(v7))) | 0x41) + 96;
  *(a3 + v8 - 1565515249) = (BYTE2(v7) ^ 0x7C) - ((2 * (BYTE2(v7) ^ 0x7C)) & 0xBF) + 95;
  *(a3 + v8 - 1565515248) = (HIBYTE(v7) ^ 0x1D) - ((2 * (HIBYTE(v7) ^ 0x1D)) & 0xBF) + 95;
  return (*(v6 + 8 * ((28 * (v4 + 4 >= v5)) ^ v3)))();
}

uint64_t sub_100925E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  STACK[0xD68] = 0;
  LODWORD(STACK[0xE00]) = 0;
  LODWORD(STACK[0xDF8]) = 0;
  LODWORD(STACK[0xE08]) = 0;
  LODWORD(STACK[0xDD8]) = 0;
  LODWORD(STACK[0xE28]) = 0;
  LODWORD(STACK[0xDC0]) = 0;
  LODWORD(STACK[0xDE0]) = 0;
  v8 = (((2 * (LODWORD(STACK[0xE68]) - 32)) & 0x3BDFFBDE) + ((LODWORD(STACK[0xE68]) - 32) ^ 0x1DEFFDEF) - 502267343) ^ LODWORD(STACK[0xE68]);
  LODWORD(STACK[0x514]) = (((v8 ^ 0x15BD6BCA) - 503317304) ^ ((v8 ^ 0x1240FB8) - 177825610) ^ ((v8 ^ 0x14996452) - 522456224)) - 1284666523;
  v9 = *(v7 + 8 * a7);
  STACK[0xBF8] = 1246814305;
  LODWORD(STACK[0xBE8]) = -913042397;
  STACK[0xBE0] = 311186077;
  LODWORD(STACK[0xE68]) = 2025045173;
  LODWORD(STACK[0xDC8]) = 1996153985;
  LODWORD(STACK[0x958]) = 506419317;
  LODWORD(STACK[0xAE0]) = -2030270040;
  STACK[0xD50] = 1058030076;
  STACK[0xDD0] = 2651646234;
  LODWORD(STACK[0xAD8]) = 1129219170;
  LODWORD(STACK[0xC60]) = 921921524;
  LODWORD(STACK[0xC18]) = 1761156632;
  LODWORD(STACK[0xD40]) = 522973470;
  STACK[0xB10] = 2718249175;
  LODWORD(STACK[0x938]) = -1324314074;
  LODWORD(STACK[0xCD8]) = 60;
  LODWORD(STACK[0xAD0]) = -1141686719;
  STACK[0xD48] = 2747403785;
  LODWORD(STACK[0xA98]) = -1101532207;
  LODWORD(STACK[0x948]) = 1107032500;
  LODWORD(STACK[0xC58]) = 714357710;
  LODWORD(STACK[0xB88]) = -1888784013;
  LODWORD(STACK[0x940]) = 54030961;
  LODWORD(STACK[0x960]) = 855783550;
  LODWORD(STACK[0xCE0]) = 248;
  LODWORD(STACK[0xBF0]) = -1160614821;
  LODWORD(STACK[0xC28]) = -852037026;
  LODWORD(STACK[0xA60]) = -1555979471;
  LODWORD(STACK[0xCE8]) = 249;
  LODWORD(STACK[0xCF0]) = 187;
  LODWORD(STACK[0xCC0]) = 237;
  LODWORD(STACK[0xA78]) = 49;
  LODWORD(STACK[0xED0]) = 1;
  LODWORD(STACK[0xE38]) = 1;
  LODWORD(STACK[0xE60]) = 1;
  LODWORD(STACK[0xE58]) = 1;
  LODWORD(STACK[0xE30]) = 1;
  LODWORD(STACK[0xE40]) = 1;
  LODWORD(STACK[0xE48]) = 1;
  LODWORD(STACK[0xE50]) = 1;
  LODWORD(STACK[0xE18]) = 1;
  LODWORD(STACK[0xE20]) = 1;
  LODWORD(STACK[0xE78]) = 132;
  LODWORD(STACK[0xC24]) = 97;
  LODWORD(STACK[0x720]) = 10;
  LODWORD(STACK[0xC40]) = 187;
  LODWORD(STACK[0xCA8]) = 119;
  LODWORD(STACK[0xC08]) = 242;
  LODWORD(STACK[0xCD0]) = 210;
  LODWORD(STACK[0xB28]) = 223;
  LODWORD(STACK[0xA90]) = 209;
  LODWORD(STACK[0xBC8]) = 66;
  LODWORD(STACK[0xAB8]) = 179;
  LODWORD(STACK[0xC30]) = 92;
  LODWORD(STACK[0x4E4]) = 8;
  LODWORD(STACK[0xC38]) = 87;
  LODWORD(STACK[0xC98]) = 129;
  LODWORD(STACK[0xAC8]) = 13;
  LODWORD(STACK[0xCA0]) = 40;
  LODWORD(STACK[0xA80]) = 68;
  LODWORD(STACK[0xBB0]) = 189;
  LODWORD(STACK[0xB18]) = 97;
  LODWORD(STACK[0x4E0]) = 161;
  LODWORD(STACK[0xB00]) = 69;
  LODWORD(STACK[0xC50]) = 169;
  LODWORD(STACK[0xCC8]) = 66;
  LODWORD(STACK[0xC68]) = 198;
  LODWORD(STACK[0xCB8]) = 216;
  LODWORD(STACK[0xBC0]) = 148;
  LODWORD(STACK[0xAB0]) = 151;
  LODWORD(STACK[0xBD0]) = 59;
  LODWORD(STACK[0xAC0]) = 185;
  LODWORD(STACK[0xCB0]) = 199;
  LODWORD(STACK[0xB08]) = 228;
  LODWORD(STACK[0xC78]) = 197;
  LODWORD(STACK[0xB90]) = 205;
  LODWORD(STACK[0xA88]) = 71;
  LODWORD(STACK[0xB98]) = 238;
  LODWORD(STACK[0xC4C]) = 7;
  LODWORD(STACK[0xBB8]) = 17;
  LODWORD(STACK[0xAF8]) = 113;
  LODWORD(STACK[0xAA4]) = 143;
  LODWORD(STACK[0x8A8]) = 240;
  LODWORD(STACK[0xAA8]) = 40;
  LODWORD(STACK[0xA68]) = 65;
  LODWORD(STACK[0xC90]) = 117;
  LODWORD(STACK[0x748]) = 164;
  LODWORD(STACK[0xA70]) = 252;
  LODWORD(STACK[0xBA0]) = 21;
  LODWORD(STACK[0xB20]) = 64;
  LODWORD(STACK[0xC70]) = 118;
  LODWORD(STACK[0xBA8]) = 176;
  LODWORD(STACK[0xAE8]) = 40;
  return v9(188);
}

uint64_t sub_100926C48(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  return (*(v2 + 8 * ((v1 - 40360) ^ 0xA104 ^ (v1 - 1189144551) & 0x46E0C9EF)))();
}

uint64_t sub_100926C88(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _BOOL8 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  LODWORD(a19) = 0;
  v31 = *(v29 + (a2 - 824003526));
  HIDWORD(a20) = (a5 ^ 0x64EB) + 16073;
  LODWORD(v211) = 8186 * (a5 ^ 0x64EB);
  v32 = v31 - 2 * (v31 & (v211 - 85)) + 141;
  LODWORD(v32) = HIDWORD(a20) ^ v32 ^ 0x96 ^ *(a18 + (v32 ^ 0xE7));
  v34 = a13;
  v35 = a13 + 109 * *(a14 + (*(v29 + (a2 - 824003525)) ^ 0x49));
  v36 = (((v35 ^ (v35 >> 3) ^ (((v35 & 0x80) != 0) | 0xB4)) << 16) ^ 0xBF41D765) & ((v32 << 24) ^ 0xFFFF7FF) ^ ((((v32 >> 6) & 1) << 30) | 0x90209A);
  LODWORD(v32) = *(a15 + (*(v29 + (a2 - 824003515)) ^ 0x31));
  v37 = *(a17 + (*(v29 + (a2 - 824003520)) ^ 0x8BLL)) ^ 0x22;
  HIDWORD(v38) = v32 ^ 3;
  LODWORD(v38) = (v32 ^ 0xFFFFFFDF) << 24;
  v39 = *(v29 + (a2 - 824003522));
  *(v30 - 208) = a2 - 824003518;
  v40 = ((2 * v37) & 0x24 | 0xA) ^ v37;
  v41 = *(v29 + (a2 - 824003518));
  v43 = ((v40 << 8) ^ 0xFF0B927E) & (((v39 ^ 0x93 ^ *(a18 + (v39 ^ 0x29))) << 24) ^ 0xA0BF37E) & 0xFFFFF3FF | (((v40 >> 2) & 3) << 10);
  v44 = *(a18 + (v41 ^ 0x10)) ^ v41;
  LODWORD(v39) = 2 * ((((2 - a2) ^ a2) ^ ((a2 ^ 1) + 1)) & 3);
  LODWORD(v41) = ((a2 ^ 0x2BA57DA7) - 448280173) ^ a2 ^ ((a2 ^ 0x33F2009F) - 49236821) ^ ((a2 ^ 0xDEB5890C) + 274152762) ^ ((a2 ^ 0xF7FFBFFE) + 958204876);
  v45 = *(a15 + (*(v29 + (a2 - 824003519)) ^ 0xFLL));
  LODWORD(v32) = ((v38 >> 27) - ((2 * (v38 >> 27)) & 0xFC) - 1499593346) ^ 0xA69E057E;
  HIDWORD(v38) = v45 ^ 3;
  LODWORD(v38) = (v45 ^ 0xFFFFFFDF) << 24;
  LODWORD(v32) = v32 + (v44 << 24);
  LODWORD(a25) = a2 - 824003521;
  v46 = *(v29 + (a2 - 824003521));
  LODWORD(v39) = *(a15 + (*(v29 + (((v39 ^ 0xB5D408DF) + 529799750) ^ (v39 + 849538395) ^ ((v39 ^ 0xD3A567A3) + 2045080890)) + 2031715521 + (((v41 ^ 0x8156DDED) + 1827536572) ^ ((v41 ^ 0x46CD5524) - 1418299789) ^ ((v41 ^ 0xF686C300) + 457039959))) ^ 0xFLL));
  v47 = (v43 ^ 0xFD4724FF) & ((v38 >> 27) ^ 0xFFDFFFD3) | (v38 >> 27) & 0x7E;
  LODWORD(a27) = a2 - 824003516;
  HIDWORD(v38) = v39 ^ 3;
  LODWORD(v38) = (v39 ^ 0xFFFFFFDF) << 24;
  v48 = ((((v34 + 109 * *(a14 + (v46 ^ 0x7A))) ^ ((v34 + 109 * *(a14 + (v46 ^ 0x7A))) >> 7) ^ ((v34 + 109 * *(a14 + (v46 ^ 0x7A))) >> 3)) << 16) ^ 0x41B9BA82) & (v47 ^ 0xD4B32022);
  LOBYTE(v45) = *(a17 + (*(v29 + (a2 - 824003516)) ^ 0x8ALL)) ^ 0x9D;
  v49 = ((2 * v45) & 0x24 | 0xD0) ^ v45;
  LOBYTE(v45) = *(a17 + (*(v29 + (a2 - 824003524)) ^ 0x18)) ^ 0xA;
  LOBYTE(v39) = *(a17 + (*(v29 + (a2 - 824003528)) ^ 0x33));
  LODWORD(a24) = a2 - 824003517;
  v50 = a13 + 109 * *(a14 + (*(v29 + (a2 - 824003517)) ^ 0x91));
  v51 = ((v50 & 0x80) != 0) | 0x64;
  LODWORD(v46) = (((((2 * (v39 ^ 0x26)) | 0xDA) ^ v39 ^ 0x26) << 8) ^ 0x6563FDB8) & ((v38 >> 27) ^ 0x7F67FFBD) | (v38 >> 27) & 0x47;
  LOBYTE(v39) = v50 ^ (v50 >> 3);
  v52 = *(v29 + (a2 - 824003530));
  LODWORD(a26) = a2 - 824003523;
  LODWORD(v46) = v46 & 0x45229043 ^ 0x6FE77FBC ^ (((v52 ^ 0x84 ^ *(a18 + (v52 ^ 0x50))) << 24) ^ 0xDCC56FBC) & (v46 ^ 0x9AA49F47);
  LODWORD(v52) = *(a15 + (*(v29 + (a2 - 824003523)) ^ 0x94));
  HIDWORD(v38) = v52 ^ 3;
  LODWORD(v38) = (v52 ^ 0xFFFFFFDF) << 24;
  v53 = v49;
  v54 = (v39 ^ v51);
  v55 = v47 & 0xBE56457D ^ a3 ^ v48;
  v56 = (a4 ^ (-791846609 - (((a4 ^ 0x7D44A2D1) - 2101650129) ^ ((a4 ^ 0xBE669799) + 1100572775) ^ ((a4 ^ 0xEC10AB99) + 334451815))) ^ 0x2F329ED1 ^ (v46 - ((v46 - ((2 * v46) & 0x5E453DA2) + 791846609) ^ a4))) + v46;
  v57 = (((((((2 * v45) & 0x24 ^ v45) << 8) ^ 0xC3E759D5) & (v36 ^ 0x70440800) | v36 & 0x3C18002A) ^ 0x83603319) & (~(v38 >> 27) | 0xFFFFFF00) | (v38 >> 27) & 0x19) ^ v28;
  LODWORD(v32) = v27 ^ v32;
  LODWORD(v46) = v32 ^ 0x2C2F2DBD ^ (v53 << 8);
  HIDWORD(v211) = a5;
  v58 = *(&off_1010A0B50 + (a5 ^ 0x6FD7)) - 1672217183;
  v59 = *(&off_1010A0B50 + a5 - 24703) - 1220233079;
  v60 = *(&off_1010A0B50 + (a5 ^ 0x66F0)) - 1026478162;
  v61 = *(&off_1010A0B50 + (a5 ^ 0x6D53)) - 1783447483;
  v62 = (*&v58[4 * (BYTE2(v57) ^ 0x11)] - 1240279844) ^ (*&v59[4 * (BYTE1(v55) ^ 0xE2)] + 1275549360) ^ *&v60[4 * (v32 ^ 0xBD)] ^ *&v61[4 * (HIBYTE(v56) ^ 0xCD)];
  v63 = HIBYTE(v57) ^ (*&v58[4 * (BYTE2(v55) ^ 0x8F)] - 1240279844) ^ (*&v59[4 * BYTE1(v46)] + 1275549360) ^ *&v61[4 * (HIBYTE(v57) ^ 0x1F)] ^ 0x5E6E3C31 ^ *&v60[4 * (v56 ^ 0x93)];
  v64 = v63 - ((2 * v63) & 0x5C9AC658);
  v65 = (*&v58[4 * ((v46 ^ (v54 << 16)) >> 16)] - 1240279844) ^ *&v61[4 * (HIBYTE(v55) ^ 0xC2)] ^ *&v60[4 * (((v36 ^ 0x19) & ~(v38 >> 27) | (v38 >> 27) & 0x19) ^ v28 ^ 0x16)] ^ (*&v59[4 * (BYTE1(v56) ^ 0xC8)] + 1275549360);
  LODWORD(a23) = a2 - 824003529;
  v66 = (v32 ^ 0x2C2F2DBD) >> 24;
  v67 = (*&v58[4 * (((v34 + 109 * *(a14 + (*(v29 + (a2 - 824003529)) ^ 0xCCLL))) ^ ((v34 + 109 * *(a14 + (*(v29 + (a2 - 824003529)) ^ 0xCCLL))) >> 7) ^ ((v34 + 109 * *(a14 + (*(v29 + (a2 - 824003529)) ^ 0xCCLL))) >> 3) ^ BYTE2(v56)) ^ 0x48)] - 1240279844) ^ *&v61[4 * (v66 ^ 0xEF)] ^ (*&v59[4 * (BYTE1(v57) ^ 0xE1)] + 1275549360) ^ *&v60[4 * (v55 ^ 0x83)];
  LODWORD(v46) = HIBYTE(v55) ^ 0xDD4A22B6;
  v68 = HIBYTE(v62);
  v69 = v46 ^ v65;
  v70 = *&v61[4 * (HIBYTE(v62) ^ 0x4D)] ^ (*&v59[4 * ((v46 ^ v65) >> 8)] + 1275549360) ^ *&v60[4 * ((v66 - ((v32 >> 23) & 0x106) + 1728400259) ^ 0x67054B78 ^ v67)] ^ (*&v58[4 * (((v64 + 776823596) >> 16) ^ 0x2D)] - 1240279844);
  LODWORD(v46) = *&v58[4 * (BYTE2(v65) ^ 5)];
  v71 = (v64 + 776823596) >> 24;
  v72 = *&v61[4 * (v71 ^ 0x98)] ^ (v46 - 1240279844) ^ *&v60[4 * (v62 ^ HIBYTE(v56) ^ 0x42)] ^ (*&v59[4 * (BYTE1(v67) ^ 0x71)] + 1275549360);
  v73 = *&v60[4 * ((v64 + 44) ^ 0x82)] ^ (*&v58[4 * (BYTE2(v67) ^ 0xD5)] - 1240279844);
  v74 = HIBYTE(v67);
  v75 = v73 ^ *&v61[4 * (HIBYTE(v69) ^ 0xEF)] ^ (*&v59[4 * (BYTE1(v62) ^ 0x23)] + 1275549360);
  v76 = *&v61[4 * (HIBYTE(v67) ^ 0xEE)] ^ (*&v58[4 * (BYTE2(v62) ^ 0xB1)] - 1240279844) ^ *&v60[4 * v69] ^ (*&v59[4 * (((v64 + 25388) >> 8) ^ 0x5C)] + 1275549360);
  v77 = v75 ^ HIBYTE(v69);
  LOBYTE(v62) = (v73 ^ v61[4 * (HIBYTE(v69) ^ 0xEF)] ^ (v59[4 * (BYTE1(v62) ^ 0x23)] - 80) ^ HIBYTE(v69)) & 8;
  v78 = v70 ^ v68;
  v79 = v78 ^ 0x50D6D3CD;
  v80 = (v78 ^ 0x50D6D3CDu) >> 24;
  v81 = (*&v58[4 * (BYTE2(v72) ^ 0x74)] - 1240279844) ^ *&v61[4 * (v80 ^ 0xEF)] ^ *&v60[4 * (((v74 ^ 3) - ((2 * (v74 ^ 3)) & 0x112) - 401505143) ^ 0xE81184E2 ^ v76)] ^ (*&v59[4 * (((v77 ^ 0x8ADDF29B) >> (v62 ^ 8) >> v62) ^ 0xF)] + 1275549360);
  LODWORD(a22) = *(v30 - 200) < 0xF99AEDB7;
  v82 = (-(v78 ^ 0x50D6D3CD) | v70) < 0;
  v83 = v78 ^ 0xA5;
  if (!v82)
  {
    v83 = 104;
  }

  v84 = *&v60[4 * v83];
  v85 = HIBYTE(v72);
  v86 = v84 ^ (*&v58[4 * (BYTE2(v75) ^ 0x92)] - 1240279844) ^ *&v61[4 * (HIBYTE(v72) ^ 0x22)] ^ (*&v59[4 * (BYTE1(v76) ^ 0x89)] + 1275549360);
  v87 = v71 ^ v72;
  v88 = HIBYTE(v75);
  v89 = *&v61[4 * (HIBYTE(v75) ^ 0x65)] ^ (*&v58[4 * (BYTE2(v76) ^ 0xA4)] - 1240279844) ^ *&v60[4 * (v87 ^ 0x7E)] ^ (*&v59[4 * (BYTE1(v70) ^ 0xDC)] + 1275549360);
  v90 = HIBYTE(v76);
  v91 = *&v60[4 * (v77 ^ 0xF3)];
  v92 = (*&v58[4 * (BYTE2(v70) ^ 0x99)] - 1240279844) ^ *&v61[4 * (HIBYTE(v76) ^ 0xFE)] ^ (*&v59[4 * (BYTE1(v72) ^ 0xDA)] + 1275549360) ^ ((((v91 ^ 0x7E8DFF7C) - (v91 ^ 0x50C09C50)) ^ 0xFFFFFFF8) + (v91 ^ 0x7E8DFF7C));
  v93 = HIBYTE(v81);
  v94 = *&v61[4 * (HIBYTE(v81) ^ 0xAC)] ^ (*&v58[4 * (BYTE2(v86) ^ 0x39)] - 1240279844) ^ (*&v59[4 * (BYTE1(v89) ^ 0xA1)] + 1275549360) ^ *&v60[4 * (((v90 ^ 3) - ((2 * (v90 ^ 3)) & 0x122) - 1540998511) ^ 0xA4263A91 ^ v92)];
  v95 = *&v60[4 * ((v80 - ((v79 >> 23) & 0x1A6) - 1302143533) ^ 0xB262DD63 ^ v81)];
  v96 = HIBYTE(v86);
  v97 = (*&v59[4 * (BYTE1(v92) ^ 0xB1)] + 1275549360) ^ *&v61[4 * (HIBYTE(v86) ^ 0xFB)] ^ (*&v58[4 * (BYTE2(v89) ^ 0x48)] - 1240279844) ^ (((2 * v95) & 0x5C9AC658 ^ 0xA3E539A7) - 1394908503 + (((v95 ^ 0x8A02F165) + 1979518619) ^ ((v95 ^ 0x908C4FE6) + 1869852698) ^ ((v95 ^ 0x640341FF) - 1677935103)));
  v98 = *&v61[4 * (HIBYTE(v89) ^ 0xEB)] ^ HIBYTE(v89) ^ (*&v58[4 * (BYTE2(v92) ^ 0xCF)] - 1240279844) ^ (*&v59[4 * (BYTE1(v81) ^ 0x86)] + 1275549360);
  v99 = *&v60[4 * (((v85 ^ 0xCD) - ((2 * (v85 ^ 0xCD)) & 0x14A) - 1856122715) ^ 0x915DD07D ^ v86)];
  v100 = HIBYTE(v92) ^ 0x20E3C362 ^ *&v61[4 * (HIBYTE(v92) ^ 0x30)];
  v101 = ((v98 & 0xA1E49C28 ^ 0x8835836E) & (v98 & 0x5E1B63D7 ^ 0xFDFCDC6E) | v98 & 0x560A6091) ^ ((((v99 ^ 0x7E8DFF7C) - (v99 ^ 0x50C09C50)) ^ 0xFFFFFFF8) + (v99 ^ 0x7E8DFF7C));
  v102 = *&v58[4 * (BYTE2(v81) ^ 0xAE)] - 1240279844;
  v103 = *&v60[4 * (v88 ^ v89 ^ 0xC0)] ^ (*&v59[4 * (BYTE1(v86) ^ 0x59)] + 1275549360) ^ ((-v100 ^ (v102 - (v102 ^ v100)) ^ (v100 - ((2 * v100) & 0x3D1FFE58) - 1634730196) ^ 0x9E8FFF2C) + v102);
  v104 = v93 ^ 0x88F5DFE3 ^ v94;
  v105 = HIBYTE(v104);
  v106 = (*&v58[4 * (BYTE2(v97) ^ 0xEF)] - 1240279844) ^ *&v61[4 * (HIBYTE(v104) ^ 0xEF)] ^ (*&v59[4 * (BYTE1(v101) ^ 0x34)] + 1275549360) ^ *&v60[4 * (v103 ^ 0xAC)];
  v107 = *&v60[4 * v104] ^ 0x50C09C50;
  v108 = HIBYTE(v97) ^ *&v61[4 * (HIBYTE(v97) ^ 0xB9)] ^ (*&v58[4 * (BYTE2(v101) ^ 0x70)] - 1240279844) ^ (*&v59[4 * (BYTE1(v103) ^ 0xC3)] + 1275549360) ^ 0x20E3C3EB;
  v109 = v108 + v107 - 2 * (v108 & v107);
  v110 = *&v60[4 * (v101 ^ 8)];
  v111 = (*&v58[4 * BYTE2(v104)] - 1240279844) ^ (*&v59[4 * (BYTE1(v97) ^ 0x10)] + 1275549360) ^ *&v61[4 * (HIBYTE(v103) ^ 0x42)] ^ (((2 * v110) & 0x5C9AC658 ^ 0xA3E539A7) - 1394908503 + (((v110 ^ 0xFC9DEB80) + 56759424) ^ ((v110 ^ 0x7320F62B) - 1931540011) ^ ((v110 ^ 0xF130E2D7) + 248454441)));
  v112 = HIBYTE(v101) ^ (*&v59[4 * (BYTE1(v94) ^ 0xD0)] + 1275549360) ^ *&v61[4 * (HIBYTE(v101) ^ 0xAF)] ^ *&v60[4 * (v96 ^ 0x5D ^ v97)] ^ (*&v58[4 * (BYTE2(v103) ^ 0x8B)] - 1240279844) ^ 0x57BB1DA3;
  v113 = HIBYTE(v109);
  v114 = *&v61[4 * (HIBYTE(v106) ^ 0x26)] ^ HIBYTE(v106) ^ (*&v59[4 * BYTE1(v112)] + 1275549360) ^ *&v60[4 * (HIBYTE(v103) ^ 0x6E ^ v111)] ^ (*&v58[4 * (BYTE2(v109) ^ 0xB0)] - 1240279844);
  v115 = (*&v58[4 * (BYTE2(v112) ^ 0x4F)] - 1240279844) ^ *&v61[4 * (HIBYTE(v109) ^ 0xCA)] ^ (*&v59[4 * (BYTE1(v111) ^ 0x84)] + 1275549360) ^ *&v60[4 * (v105 ^ 0xC8 ^ v106)];
  v116 = *&v61[4 * (HIBYTE(v112) ^ 0xEF)] ^ (*&v58[4 * (BYTE2(v111) ^ 0xBF)] - 1240279844);
  v117 = *&v59[4 * (BYTE1(v106) ^ 0xB9)] + 1275549360;
  HIDWORD(v118) = v116 ^ v117 ^ HIBYTE(v112);
  LODWORD(v118) = v116 ^ ~v117;
  v119 = *&v60[4 * (v109 ^ 0x5D)] ^ __ROR4__((v118 >> 30) ^ 0xDEBAD5F7, 2);
  if ((v106 & 0x400000) != 0)
  {
    v120 = -64;
  }

  else
  {
    v120 = 64;
  }

  v121 = (BYTE2(v106) ^ 0x10) + v120;
  v122 = *&v59[4 * (BYTE1(v109) ^ 0x6F)];
  v123 = (*&v58[4 * (v121 ^ 0xF)] - 1240279844) ^ *&v61[4 * (HIBYTE(v111) ^ 0xFF)];
  v124 = ((2 * (v122 ^ 0x6341CB05)) ^ 0x788672DC) & (v122 ^ 0x6341CB05) ^ (2 * (v122 ^ 0x6341CB05)) & 0xBC43396E;
  v125 = 2 * (v122 & 0xDF02F26B);
  v126 = (v124 ^ 0x3802104C) & (4 * (v125 & (v122 ^ 0xDF40EB43) ^ v122 & 0xDF02F26B)) ^ v125 & (v122 ^ 0xDF40EB43) ^ v122 & 0xDF02F26B;
  v127 = ((4 * (v124 ^ 0x84410922)) ^ 0xF10CE5B8) & (v124 ^ 0x84410922) ^ (4 * (v124 ^ 0x84410922)) & 0xBC433968;
  v128 = (v127 ^ 0xB0002120) & (16 * v126) ^ v126;
  v129 = ((16 * (v127 ^ 0xC431846)) ^ 0xC43396E0) & (v127 ^ 0xC431846) ^ (16 * (v127 ^ 0xC431846)) & 0xBC433960;
  v130 = v128 ^ 0xBC43396E ^ (v129 ^ 0x84031000) & (v128 << 8);
  v131 = v125 & (v122 ^ 0x9E48F94A) ^ v122 & 0xDF02F26B;
  v132 = ((2 * (v122 ^ 0x1C4DBDDE)) ^ 0x869E9F6A) & (v122 ^ 0x1C4DBDDE) ^ (2 * (v122 ^ 0x1C4DBDDE)) & 0xC34F4FB4;
  v133 = (v132 ^ 0x800E0B20) & (4 * v131) ^ v131;
  v134 = ((4 * (v132 ^ 0x41414095)) ^ 0xD3D3ED4) & (v132 ^ 0x41414095) ^ (4 * (v132 ^ 0x41414095)) & 0xC34F4FB4;
  v135 = (v134 ^ 0x10D0E90) & (16 * v133) ^ v133;
  v136 = ((16 * (v134 ^ 0xC2424121)) ^ 0x34F4FB50) & (v134 ^ 0xC2424121) ^ (16 * (v134 ^ 0xC2424121)) & 0xC34F4F90;
  v137 = v135 ^ 0xC34F4FB5 ^ (v136 ^ 0x444B00) & (v135 << 8);
  v138 = 2 * (((v122 ^ 0xF66BFED2) + 694750393) ^ v122 ^ ((v122 ^ 0x419C2DBD) + 513728472) ^ ((v122 ^ 0x68F5211F) + 938988406) ^ ((v122 ^ 0x7FFFFFE5) + 553454992));
  v139 = v123 ^ *&v60[4 * v112] ^ (((2 * ((v122 ^ (2 * ((v130 << 16) & 0x2C000000 ^ v130 ^ ((v130 << 16) ^ 0x29040000) & (((v129 ^ 0x3840290E) << 8) & 0x3C430000 ^ 0x3C420000 ^ (((v129 ^ 0x3840290E) << 8) ^ 0x43390000) & (v129 ^ 0x3840290E)))) ^ 0x1A08C002) & (v138 & 0xDA08C88A ^ 0x4008080A) ^ v138 & 0x80080)) ^ 0x100000) + (v122 ^ v138 & 0xDA08C88A ^ (2 * ((v137 << 16) & 0x434F0000 ^ v137 ^ ((v137 << 16) ^ 0x4FB50000) & ((((v136 ^ 0xC30B04A5) << 8) ^ 0x4F4F0000) & (v136 ^ 0xC30B04A5) ^ ((v136 ^ 0xC30B04A5) << 8) & 0x434F0000))) ^ 0xF29A014E));
  v140 = ((v114 ^ 0x859792A0) >> 24) ^ 0x20E3C3BD ^ *&v61[4 * (((v114 ^ 0x859792A0) >> 24) ^ 0xEF)];
  v141 = *&v58[4 * (BYTE2(v115) ^ 0xA8)] - 1240279844;
  v142 = *&v60[4 * (HIBYTE(v111) ^ 0xB0 ^ v139)] ^ (*&v59[4 * (BYTE1(v119) ^ 5)] + 1275549360) ^ (v141 + v140 - 2 * (v141 & v140));
  v143 = (*&v58[4 * (BYTE2(v119) ^ 0x11)] - 1240279844) ^ *&v61[4 * (HIBYTE(v115) ^ 0xA5)] ^ *&v60[4 * (v114 ^ 0xC8)] ^ (*&v59[4 * (BYTE1(v139) ^ 0xAD)] + 1275549360);
  v144 = *&v61[4 * (HIBYTE(v119) ^ 0x5F)] ^ HIBYTE(v119) ^ (*&v59[4 * (BYTE1(v114) ^ 0x9D)] + 1275549360) ^ *&v60[4 * (v113 ^ 0xF5 ^ v115)] ^ (*&v58[4 * ((HIWORD(v139) & 0xFFFFFFE3 ^ 0xDA) & (HIWORD(v139) & 0x1C ^ 0xE94000EB) ^ (HIWORD(v139) & 4 | 0xE9))] - 1240279844);
  v145 = (*&v58[4 * (BYTE2(v114) ^ 0xD8)] - 1240279844) ^ (*&v59[4 * (BYTE1(v115) ^ 0xA8)] + 1275549360) ^ *&v60[4 * (v119 ^ 0x2F)] ^ *&v61[4 * (HIBYTE(v139) ^ 0xB2)];
  v146 = *&v60[4 * (v145 ^ HIBYTE(v139) ^ 0x5B)] ^ *&v61[4 * (BYTE3(v142) ^ 0x77)] ^ (*&v58[4 * (BYTE2(v143) ^ 0x45)] - 1240279844) ^ (*&v59[4 * ((((((v144 ^ 0x7556131F) >> (BYTE2(v112) & 8)) - ((2 * ((v144 ^ 0x7556131F) >> (BYTE2(v112) & 8))) & 0xEE84C17C) - 146644802) ^ 0xF74260BE) >> (BYTE2(v112) & 8 ^ 8)) ^ 0xF)] + 1275549360);
  v147 = HIBYTE(v143);
  v148 = (*&v58[4 * (BYTE2(v144) ^ 0x19)] - 1240279844) ^ *&v61[4 * (HIBYTE(v143) ^ 0x87)] ^ *&v60[4 * (v142 ^ 0xF8)] ^ (*&v59[4 * (BYTE1(v145) ^ 0xB4)] + 1275549360);
  v149 = *&v59[4 * (BYTE1(v142) ^ 0xC7)] + 1286415731;
  v150 = (*&v58[4 * (BYTE2(v145) ^ 0xD9)] - 1240279844) ^ *&v60[4 * (HIBYTE(v115) ^ 0xBE ^ v143)] ^ *&v61[4 * (HIBYTE(v144) ^ 0x9A)] ^ (((2 * v149) & 0xFEB4627A) + (v149 ^ 0xFF5A313D));
  v151 = HIBYTE(v145) ^ 0x20E3C30F ^ *&v61[4 * (HIBYTE(v145) ^ 0x5D)];
  v152 = *&v58[4 * (BYTE2(v142) ^ 0xED)];
  v153 = *&v60[4 * (v144 ^ 0x77)] ^ (*&v59[4 * (BYTE1(v143) ^ 0xA9)] + 1275549360) ^ (v151 + v152 - 2 * ((v152 + 907203804) & v151) - 1240279844);
  v154 = HIBYTE(v146);
  v155 = (*&v58[4 * (BYTE2(v148) ^ 0xE2)] - 1240279844) ^ *&v60[4 * (v153 ^ 0x16)] ^ (*&v59[4 * (BYTE1(v150) ^ 0x18)] + 1275549360) ^ *&v61[4 * (HIBYTE(v146) ^ 0xD9)];
  v156 = (HIBYTE(v144) ^ 0x2B5717D1 ^ v150) >> 24;
  v157 = *&v61[4 * (v156 ^ 0xEF)] ^ (*&v58[4 * ((v153 ^ 0x23C16516u) >> 16)] - 1240279844) ^ *&v60[4 * (((v147 ^ 0x68) - 2 * ((v147 ^ 0x68) & 0x7F ^ v147 & 0x10) + 732621423) ^ 0x2BAAEA05 ^ v148)] ^ (*&v59[4 * (BYTE1(v146) ^ 0xAD)] + 1275549360);
  v158 = (v153 ^ 0x23C16516u) >> 24;
  v159 = *&v61[4 * (HIBYTE(v148) ^ 0x2B)];
  v160 = *&v61[4 * (v158 ^ 0xEF)];
  v161 = HIBYTE(v148) ^ v159 ^ (*&v58[4 * (BYTE2(v150) ^ 0x18)] - 1240279844) ^ (*&v59[4 * (BYTE1(v153) ^ 0x6A)] + 1275549360) ^ 0x70235F29 ^ *&v60[4 * (((BYTE3(v142) ^ 0x98) - ((v142 >> 23) & 0xC6) + 1726219875) ^ 0x66E4069C ^ v146)];
  v162 = (v158 ^ 0x5D1368B1) + (v160 ^ 0x7DF0AB0C) + ((2 * ((v160 ^ 0x141300C0) & (v158 ^ 0x5D1368B1) ^ v158 & 0xCCCCCCCC)) ^ 0x6DF9AEFF) + 1;
  v163 = v161 - ((2 * v161) & 0x2941A7CC) - 1801399322;
  v164 = *&v60[4 * (HIBYTE(v144) ^ 0xD1 ^ v150 ^ 0x68)] ^ (*&v59[4 * (BYTE1(v148) ^ 1)] + 1275549360) ^ v162 ^ (*&v58[4 * (BYTE2(v146) ^ 0x44)] - 1240279844);
  v165 = *(&off_1010A0B50 + HIDWORD(v211) - 24537) - 1115130275;
  v166 = *(&off_1010A0B50 + (HIDWORD(v211) ^ 0x6348)) - 725024394;
  v167 = *&v166[4 * (HIBYTE(v163) ^ 0xE8)];
  v168 = v167 ^ (v167 >> 6) ^ (v167 >> 2);
  v169 = *(&off_1010A0B50 + (HIDWORD(v211) ^ 0x65FC)) - 652822974;
  v170 = *(&off_1010A0B50 + HIDWORD(v211) - 24765) - 1181868455;
  v171 = v155 ^ v154 ^ 0x52828836;
  v172 = *&v169[4 * (BYTE2(v157) ^ 0x40)] ^ ((BYTE1(v164) ^ 0x88F8E58B) - 1699510670 + *&v165[4 * (BYTE1(v164) ^ 0xBC)]) ^ (*&v170[4 * ((v155 ^ v154) ^ 0xCF)] + v171 - 1721578660);
  v173 = *&v166[4 * HIBYTE(v171)];
  v174 = *&v166[4 * (HIBYTE(v157) ^ 0xBD)];
  v175 = *&v166[4 * (HIBYTE(v164) ^ 4)];
  v176 = *&v169[4 * (BYTE2(v163) ^ 0x38)];
  v177 = *&v169[4 * (BYTE2(v164) ^ 0x62)];
  v178 = *&v169[4 * (BYTE2(v155) ^ 0xBA)];
  LODWORD(v169) = BYTE1(v157);
  v179 = *&v165[4 * (BYTE1(v157) ^ 0xD3)];
  v180 = BYTE1(v171);
  v181 = *&v165[4 * (BYTE1(v171) ^ 0x42)];
  LODWORD(v166) = BYTE1(v163);
  v182 = *&v165[4 * (BYTE1(v163) ^ 0x42)];
  v183 = v168 ^ v172;
  v184 = *&v170[4 * (v164 ^ 0x28)];
  v185 = v157 ^ v156;
  v186 = v163;
  v187 = *&v170[4 * (v163 ^ 0xF9)];
  v188 = *&v170[4 * (v185 ^ 0x5F)];
  v189 = *(&off_1010A0B50 + (HIDWORD(v211) ^ 0x6EE4)) - 1450088710;
  *(*(v30 - 184) + (a2 - 824003526)) = BYTE3(v183) ^ v189[(((BYTE3(v183) ^ 0x3D) - (BYTE3(v183) ^ 0x1C)) ^ 0xFFFFFFFE) + (BYTE3(v183) ^ 0x3D)] ^ 0xE7;
  v190 = v174 ^ (v174 >> 6) ^ (v174 >> 2) ^ v177 ^ ((v180 ^ 0x88F8E575) - 1699510670 + v181) ^ 0xEB40B434;
  v191 = v186 + v187 + v190 - 2 * (v190 & (v186 + v187 + 425904988)) - 1721578660;
  v192 = *(&off_1010A0B50 + (HIDWORD(v211) ^ 0x7623)) - 1556459051;
  *(*(v30 - 184) + a25) = (-71 - 29 * v192[BYTE2(v191) ^ 0x32]) ^ 0x73;
  v193 = (v166 ^ 0x88F8E575) - 1699510670 + v182;
  LODWORD(v166) = v175 ^ (v175 >> 6) ^ (v175 >> 2);
  v194 = *(v30 - 184);
  v195 = v166 ^ v178 ^ v193 ^ ((v185 ^ 0xA6) - 1721578660 + v188);
  *(v194 + a24) = (-71 - 29 * v192[BYTE2(v195) ^ 0x7BLL]) ^ 0x3A;
  v196 = *(&off_1010A0B50 + HIDWORD(v211) - 24476) - 1464607614;
  *(v194 + a27) = v196[BYTE1(v195) ^ 0xD1] ^ 0x63;
  v197 = (v166 ^ v178 ^ v193 ^ ((v185 ^ 0xA6) + 92 + v188));
  v198 = *(&off_1010A0B50 + (HIDWORD(v211) ^ 0x75BA)) - 734351210;
  *(v194 + (a2 - 824003515)) = (((v198[v197 ^ 0xED] + 54) >> 6) | 0x7C) ^ ((v198[v197 ^ 0xED] + 54) >> 3) ^ (v198[v197 ^ 0xED] + 54);
  *(v194 + (a2 - 824003525)) = (-71 - 29 * v192[BYTE2(v183) ^ 0x92]) ^ 0x52;
  LODWORD(v197) = v173 ^ (v173 >> 6) ^ (v173 >> 2) ^ 0xD6401125;
  v199 = ((v164 ^ 0xD1) - 1721578660 + v184) ^ ((v169 ^ 0x88F8E5E4) - 1699510670 + v179) ^ ((-(v176 ^ 0x3D00A511) ^ (v197 - (v176 ^ 0x3D00A511 ^ v197)) ^ ((v176 ^ 0x3D00A511) - ((2 * (v176 ^ 0x3D00A511)) & 0x15900324) + 180879762) ^ 0xAC80192) + v197);
  *(v194 + (a2 - 824003524)) = v196[BYTE1(v183) ^ 0xF2] ^ 0x7A;
  LOBYTE(v197) = v198[(((v164 ^ 0xD1) + 92 + v184) ^ ((v169 ^ 0xE4) + 114 + v179) ^ ((-(v176 ^ 0x11) ^ (v197 - (v176 ^ 0x11 ^ v197)) ^ ((v176 ^ 0x11) - ((2 * (v176 ^ 0x11)) & 0x24) - 110) ^ 0x92) + v197)) ^ 0x87] + 54;
  *(v194 + (a2 - 824003527)) = v197 ^ ((v198[v199 ^ 0x87] + 54) >> 3) ^ ((v197 >> 6) | 0xC4) ^ 0xF3;
  *(v194 + a26) = (v198[v183 ^ 0xC2] + 54) ^ ((v198[v183 ^ 0xC2] + 54) >> 6) ^ ((v198[v183 ^ 0xC2] + 54) >> 3) ^ 0x8C;
  *(v194 + (a2 - 824003519)) = (v198[v191 ^ 0x6CLL] + 54) ^ ((v198[v191 ^ 0x6CLL] + 54) >> 6) ^ ((v198[v191 ^ 0x6CLL] + 54) >> 3) ^ 0x93;
  *(v194 + a23) = (-71 - 29 * v192[BYTE2(v199) ^ 0xEDLL]) ^ 0x5B;
  *(v194 + (a2 - 824003530)) = HIBYTE(v199) ^ 0x15 ^ v189[HIBYTE(v199) ^ 0x3CLL];
  LOBYTE(v197) = v189[HIBYTE(v191) ^ 0x32] ^ HIBYTE(v191);
  *(v194 + (a2 - 824003522)) = ((v197 & 0xBC ^ 0xB) & (v197 & 0x43 ^ 0xFD) | v197 & 0x40) ^ 0x1E;
  *(v194 + (a2 - 824003528)) = v196[BYTE1(v199) ^ 0x6ELL] ^ 0xC8;
  v200 = 2 * (a2 & 0xCEE2B436);
  LODWORD(v197) = ((2 * (a2 ^ 0x9A665927)) ^ 0xA909DA22) & (a2 ^ 0x9A665927) ^ (2 * (a2 ^ 0x9A665927)) & 0x5484ED10;
  LODWORD(v169) = v197 ^ 0x54842511;
  LODWORD(v197) = (v197 ^ 0xC000) & (4 * (v200 & (a2 ^ 0x8EE23127) ^ a2 & 0xCEE2B436)) ^ v200 & (a2 ^ 0x8EE23127) ^ a2 & 0xCEE2B436;
  LODWORD(v166) = ((4 * v169) ^ 0x5213B444) & v169 ^ (4 * v169) & 0x5484ED10;
  LODWORD(v197) = (v166 ^ 0x5000A400) & (16 * v197) ^ v197;
  LODWORD(v166) = ((16 * (v166 ^ 0x4844911)) ^ 0x484ED110) & (v166 ^ 0x4844911) ^ (16 * (v166 ^ 0x4844911)) & 0x5484ED10;
  LODWORD(v197) = v197 ^ 0x5484ED11 ^ (v166 ^ 0x4004C100) & (v197 << 8);
  v201 = (v197 << 16) ^ 0x6D110000u;
  *(v194 + (a2 - 824003520)) = v196[BYTE1(v191) ^ 0x5ELL] ^ 0x7A;
  LODWORD(v196) = ((2 * (a2 ^ 0x55D7B99B)) ^ 0x366A1B5A) & (a2 ^ 0x55D7B99B) ^ (2 * (a2 ^ 0x55D7B99B)) & 0x9B350DAC;
  v202 = (v196 ^ 0x12000108) & (4 * (v200 & (a2 ^ 0xCCD2B1B7) ^ a2 & 0xCEE2B436)) ^ v200 & (a2 ^ 0xCCD2B1B7) ^ a2 & 0xCEE2B436;
  LODWORD(v196) = ((4 * (v196 ^ 0x891504A5)) ^ 0x6CD436B4) & (v196 ^ 0x891504A5) ^ (4 * (v196 ^ 0x891504A5)) & 0x9B350DAC;
  v203 = (v196 ^ 0x81404A0) & (16 * v202) ^ v202;
  LODWORD(v196) = ((16 * (v196 ^ 0x93210909)) ^ 0xB350DAD0) & (v196 ^ 0x93210909) ^ (16 * (v196 ^ 0x93210909)) & 0x9B350D80;
  v204 = v203 ^ 0x9B350DAD ^ (v196 ^ 0x93100800) & (v203 << 8);
  v205 = (v204 << 16) ^ 0xDAD0000;
  LODWORD(v166) = (a2 ^ (2 * ((v197 << 16) & 0x54840000 ^ v197 ^ v201 & (((v166 ^ 0x14802C01) << 8) & 0x54840000 ^ 0x50000000 ^ (((v166 ^ 0x14802C01) << 8) ^ 0x4ED0000) & (v166 ^ 0x14802C01))))) & 0xFFFFFFEF;
  LODWORD(v197) = ((a2 ^ 0xE342BA03) + 765464119) ^ a2 ^ ((a2 ^ 0xAAA7C98A) + 1682275776) ^ ((a2 ^ 0x2303C7FC) - 303991862) ^ ((a2 ^ 0x5BFBFFBF) - 1793504373) ^ v166;
  v206 = a2 ^ (2 * ((v204 << 16) & 0x1B350000 ^ v204 ^ v205 & (((v196 ^ 0x825052D) << 8) & 0x1B350000 ^ 0xA300000 ^ (((v196 ^ 0x825052D) << 8) ^ 0x350D0000) & (v196 ^ 0x825052D))));
  v207 = 2 * ((v197 ^ 0x58CF1D58) & (v206 ^ 0x6AC2AF7C) ^ v206 & 0x6393896);
  *(v194 + *(v30 - 208)) = ((v195 ^ 0x2207688F) >> (v142 & 0x18 ^ 0x10) >> (v142 & 0x18 ^ 8)) ^ 0x53 ^ v189[((v195 ^ 0x2207688F) >> (v142 & 0x18 ^ 0x10) >> (v142 & 0x18 ^ 8)) ^ 0x90];
  LODWORD(v197) = (((v197 ^ 0x68F187C3) - 1060990550) ^ ((v197 ^ 0x5C8C4994) - 188784641) ^ ((v197 ^ 0xEA8BEB99) + 1119419892)) + (((v166 ^ 0xDA22FBCC) - 1403485226) ^ ((v166 ^ 0x3D6D59F5) + 1259807213) ^ ((v166 ^ 0x8A4CC2D) + 2128524341)) + (((v207 ^ 0x955515EB) + 399399591) ^ ((v207 ^ 0xEF5E70) - 2106322626) ^ ((v207 ^ 0x91BA1BB3) + 320951551)) + 1655276702;
  v208 = a22 ^ (v197 < 0xF99AEDB7);
  v209 = v197 < *(v30 - 200);
  if (v208)
  {
    v209 = a22;
  }

  return (*(*(v30 - 192) + 8 * ((57533 * v209) ^ HIDWORD(v211))))(v195, a2, v205, v183, v201, 122, v192, v142, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v211, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_100929138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  v19 = v16 + 2950;
  v20 = 634647737 * (&a15 ^ 0x6D962FFC);
  a15 = v20 + 154518120 + (((v18 ^ 0xAA3834A5) - 1733998024) ^ ((v18 ^ 0x84C0A1D8) - 1235361973) ^ ((v18 ^ ((v19 - 25604) | 0x3250) ^ 0xA4FE973) + 953331092));
  a16 = v20 + v19 - 2551;
  v21 = (*(v17 + 8 * (v19 ^ 0xA0A9)))(&a15);
  return (*(v17 + 8 * v19))(v21);
}

uint64_t sub_100929204(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, unsigned int a27)
{
  v28 = a27 < 0x1A73D634;
  if (v28 == (a4 + 242347927) < 0x1A73D634)
  {
    v28 = a27 > a4 + 242347927;
  }

  return (*(STACK[0xED8] + 8 * (v27 ^ (26165 * v28))))();
}

uint64_t sub_1009292D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4 - 23988;
  v7 = *(v5 + 8 * ((12081 * ((v6 ^ 0x83B49DAD) > 0x8BB51267)) ^ (v6 + 2540)));
  LODWORD(STACK[0x390]) = 47179;
  return v7(a1, 0xAD22D5F321CF2B02, a3, a4, v6 ^ 0x98B6u);
}

uint64_t sub_10092937C@<X0>(int8x16_t *a1@<X8>)
{
  v4.i64[0] = 0xBEBEBEBEBEBEBEBELL;
  v4.i64[1] = 0xBEBEBEBEBEBEBEBELL;
  v5 = vsubq_s8(v2[1], vandq_s8(vaddq_s8(v2[1], v2[1]), v4));
  v6 = vandq_s8(vaddq_s8(*v2, *v2), v4);
  v4.i64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v4.i64[1] = 0x5F5F5F5F5F5F5F5FLL;
  *a1 = vaddq_s8(vsubq_s8(*v2, v6), v4);
  a1[1] = vaddq_s8(v5, v4);
  return (*(v3 + 8 * v1))();
}

uint64_t sub_1009293C0()
{
  v3 = 634647737 * ((2 * ((v2 - 168) & 0x3F76E410) - (v2 - 168) - 1064756246) ^ 0xAD1F3416);
  *(v2 - 152) = v1 - v3 + 17259;
  *(v2 - 160) = &STACK[0x3B0];
  *(v2 - 168) = v3 - 1431125376;
  v4 = (*(v0 + 8 * (v1 ^ 0xC58D)))(v2 - 168);
  return (*(v0 + 8 * (((15 * (v1 ^ 0xB3A)) ^ 0x2D06) + v1)))(v4);
}

uint64_t sub_1009294BC()
{
  STACK[0x1CA8] = v1;
  LODWORD(STACK[0xBBC]) = 1465878605;
  LODWORD(STACK[0x1658]) = -1178735833;
  return (*(v2 + 8 * v0))();
}

uint64_t sub_100929554@<X0>(int a1@<W8>)
{
  v4 = (((a1 ^ 0xBD089E19) + 1123508711) ^ ((a1 ^ 0xCA3838CD) + 902285107) ^ ((a1 ^ 0x9EE561C5) + 1629117335 + ((v1 + 394262180) & 0xE87FCAAC))) + 186034483;
  v5 = (v2 ^ 0x3F36BC77) + ((2 * v2) & 0x178EE) - 502651477;
  v6 = v4 < 0x2140E222;
  v7 = v4 >= v5;
  if (v5 < 0x2140E222 != v6)
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((222 * v7) ^ v1)))();
}

uint64_t sub_10092966C(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v16 = 317 * (a5 ^ 0x6838);
  LODWORD(STACK[0xE88]) = v16;
  v17 = (v16 - 2123923811) & 0x7E98BA77;
  v18 = *STACK[0xB58];
  v19 = ((*STACK[0xB70] - ((2 * *STACK[0xB70]) & 0x1C8)) << 8) + 0x56F162E3F46BE400;
  STACK[0xE70] = v17;
  v20 = ((v18 - ((v17 ^ 0x8318) & (2 * v18))) << 16) + 0xF651465689E0000;
  v21 = *STACK[0xBD8];
  v22 = (v21[13] >> 4) | (16 * v21[13]);
  v23 = v8 & (2 * v22);
  v24 = *STACK[0xB30];
  v25 = ((v24[12] - (a1 & (2 * v24[12])) + 254) << 56) ^ 0x1241B2CA18D1B56FLL;
  v26 = *(*STACK[0xD60] + 91);
  v27 = *STACK[0xD60];
  LODWORD(v17) = *STACK[0xB68];
  LODWORD(STACK[0xEA8]) = v17;
  v28 = v14 - 33 * v17;
  LODWORD(STACK[0xEC8]) = a5;
  v29 = v28 ^ (2 * ((v28 ^ 0x20) & (2 * ((v28 ^ 0x20) & (2 * ((v28 ^ 0x20) & (2 * (((2 * ((v12 & (2 * v28) | 0x22) & v28)) ^ 0x3C) & (v28 ^ 0x20) ^ v28 & 0xFFFFFF9E ^ 0xFFFFFFFE)) ^ v28 & 0xFFFFFF9E ^ 0xFFFFFFFE)) ^ v28 & 0xFFFFFF9E ^ 0xFFFFFFFE)) ^ v28 & 0xFFFFFF9E ^ 0xFFFFFFFE));
  v30 = v22 - v23 - 55;
  v31 = v25 - 0x2000000000000000;
  v32 = v26 - ((2 * v26) & 0x8A) - 0x42E513FA606E1FBBLL;
  v33 = (v20 & 0x56110644DD60000 ^ 0xA6FFD25A54D4CAA7 ^ (v20 ^ 0xF09AEB9A9761FF15) & (v19 ^ 0x4C6F2DF046423615)) & (v32 ^ 0x42E513FA606E1FBALL);
  v34 = *(v10 + 8 * (a5 - 25534));
  LOBYTE(v20) = *(v34 - 1402064868 + (v30 ^ 0x3CLL));
  STACK[0xEB8] = v34 - 1402064868;
  v35 = v33 ^ v32 & 0x41200001180674DLL;
  v36 = v24[3];
  v37 = *STACK[0xB60];
  v38 = v27[24];
  v39 = *STACK[0xB78];
  v40 = (((v29 ^ v9) - 9) ^ ((v29 ^ 0x1B) - 77) ^ ((v29 ^ v13) + 125)) + (((v29 ^ v11) - 34) ^ ((v29 ^ a8) + 119) ^ ((v29 ^ 0x29) - 114)) - 10;
  v41 = v40 & v15 ^ 0x2E;
  v42 = v27[21];
  v43 = v27;
  v44 = *STACK[0xB40];
  STACK[0xEB0] = v34 - 1402064607;
  v45 = *(v34 - 1402064607 + (v29 ^ 0xB1));
  v46 = *STACK[0xB38] - ((2 * *STACK[0xB38]) & 0x156) - 0x528C8C02C793D255;
  v47 = v40 ^ v45 ^ (2 * ((v40 ^ 0x28) & (2 * ((v40 ^ 0x28) & (2 * ((v40 ^ 0x28) & (2 * ((v40 ^ 0x28) & (2 * (((2 * v40) & 0x54 ^ 0x4C) & (v40 ^ 0x28) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41));
  v48 = ((((v42 - ((2 * v42) & 0x13A)) << 8) + 0x21193C7D21239D00) ^ 0x945DF94B01A00A92) & ((v36 - ((2 * v36) & 0x16A) - 0x76D2F4202DA0714BLL) ^ 0x76D2F4202DA0716ALL) ^ (v36 - ((2 * v36) & 0x16A) - 0x76D2F4202DA0714BLL) & 0x288921C086DLL;
  LOBYTE(v42) = v20 ^ (8 * (v20 ^ 0x3C) * (v20 ^ 0x3C)) ^ 0x29;
  v49 = ((v24[7] - ((2 * v24[7]) & 0xB4)) << 16) - 0x3C5E11A810A60000;
  LODWORD(v36) = v43[74];
  STACK[0xEA0] = v37;
  HIDWORD(v50) = v47 ^ 1;
  LODWORD(v50) = (v47 ^ 0x68) << 24;
  v51 = v24[17];
  v52 = v21[5];
  v53 = v21[3];
  v54 = ((v42 - 20) << 24) | ((v50 >> 27) << 32);
  v55 = v24[20];
  LODWORD(STACK[0xE98]) = v39 - ((2 * v39) & 0xFFFFFFC7);
  v56 = ((v38 - ((2 * v38) & 0x9E)) << 8) + 0x74CC3004A56D4F00;
  v57 = ((v44 - ((2 * v44) & 0x9A)) << 16) - 0x7C9DF7D20CB30000;
  v58 = ((v21[10] - ((2 * v21[10]) & 0xD2u) + 5132669) << 40) - 0x140000000000;
  LODWORD(v44) = v55 - ((2 * v55) & 0x58);
  STACK[0xE90] = (v31 & 0x7200020008000000 ^ 0xB6FAFDD286450CF8 ^ ((((((v37 - ((2 * v37) & 0xFC) + 1642411) << 40) - 0x2D0000000000) ^ 0xDC3644E662585EE0) & ~v54 | v54 & 0x199D000000) ^ 0x4825A7648287DF06) & (v31 ^ 0x33BE4D35E72E4A90)) & (v35 ^ 0x42ED72D240148708);
  v59 = (v48 ^ 0x4ABB38414D606040) & (v57 ^ 0xAC104961778B7C74);
  v60 = v48 & 0xD08DBEB37B39838BLL;
  LODWORD(v31) = v43[2];
  v61 = ((v51 - ((2 * v51) & 0x196)) << 24) + 0x275CAE14CB000000;
  v62 = (v46 ^ 0x528C8C02C793D210) & (v56 ^ 0x9CABF248806B1D3ALL) ^ v46 & 0x10108010280DC5;
  v63 = v62 ^ 0xE877D2CC352E5FBBLL;
  v64 = ((v53 - ((2 * v53) & 0x19Cu) - 166665518) << 32) - 0x400000000;
  v65 = (v49 ^ 0x6E8C9EF9A1F320B6) & (v62 ^ 0x17882D33CAD1E30DLL) ^ v62 & 0x52D28F51B156DF49;
  v66 = v64 & 0xA61001A200000000 ^ 0x98F27C8AC85CC364 ^ (v64 ^ 0x9EF1D31FFFFFFFFLL) & (v60 ^ 0xE6B439A3A2EE705CLL ^ v59);
  v67 = v61 & 0x5C2C0A23000000 ^ v66 & (v61 ^ 0xD8A351EB34FFFFFFLL);
  v68 = v67 ^ 0x1883508800920310;
  v69 = v67 ^ 0x677CAE55DF6D4CCFLL;
  v70 = v24[31];
  v71 = __ROR8__((((v49 ^ 0xD382390CEA42A0FDLL) + 0x1384A9B85471D70) ^ ((v49 ^ 0x22278D6A3A22F9BALL) - 0xF620102AAD8BBD7) ^ ((v49 ^ 0xCDFBA5CEC0C5A6B8) + 0x1F41D659AFC01B2BLL)) + 0x4F4BF18EF05AEB69 + (((v65 ^ 0xBEE7548101936E2) + 0x275E2B97FFB29B76) ^ ((v65 ^ 0x3D411485CB3C0ECBLL) + 0x11F14A5A2497A35DLL) ^ ((v65 ^ 0xDBD09323A48A4796) - 0x89F3203B4DE15FELL)), 36);
  v72 = (-v69 ^ (v69 - 2 * (v69 & 0x1BA8C4155076EDFELL ^ v66 & 0x20) + 0x1BA8C4155076EDDELL) ^ ((v58 ^ 0x4E51690000000000) - (((v58 & 0xAF0000000000 ^ 0xEAFDAF0C307D3F52 ^ v69 & 0x6228AF367F05FC27) & (v68 | 0xE228AF367F05FC27) | v69 & 0x150250C180820088 ^ v58 & 0x500000000000) ^ 0xEAFDC60C307D3F52)) ^ 0x1BA8C4155076EDDELL) + (v58 ^ 0x4E51690000000000);
  v73 = v21[6] - ((2 * v21[6]) & 0x1C8);
  v74 = *(v34 - 1402064868 + ((((v36 >> 4) | (16 * v36)) - ((2 * ((v36 >> 4) | (16 * v36))) & 0x58) - 84) ^ 0x59));
  v75 = v24[36] - ((2 * v24[36]) & 0x66);
  v76 = __ROR8__(v71 ^ 0xCDAA510A98747351, 28);
  STACK[0xEC0] = v34 - 1402065137;
  v77 = (((v49 ^ 0x71099A240E4FF470) - 0x32475A78F6844D9ELL) ^ ((v49 ^ 0x90B49DC288ABA3E6) + 0x2C05A2618F9FE5F8) ^ ((v49 ^ 0x221CE9B169BE5796) - 0x615229ED9175EE78)) + 0x3F1805E1B40084F0 + (((v63 ^ -v63 ^ v76 ^ 0x690B9E87884B4FA4) + 0x50647C4DCE809410) ^ ((v63 ^ -v63 ^ v76 ^ 0xD7168FE954A1F7F6) - 0x118692DCED95D3A2) ^ ((v63 ^ -v63 ^ v76 ^ 0xC6A5DB8DF9B05704) - 0x35C6B840847350));
  v78 = v31 - ((2 * v31) & 0xC8);
  LODWORD(v49) = *STACK[0xB80] - ((2 * *STACK[0xB80]) & 0x15E);
  LOBYTE(v58) = (8 * ((v74 ^ 0x3C) * (v74 ^ 0x3C) - ((2 * (v74 ^ 0x3C) * (v74 ^ 0x3C)) & 0x1C)) + 112) ^ v74;
  LOBYTE(v63) = ((v58 ^ 0x75) + 80) ^ ((v58 ^ 8) + 51) ^ ((v58 ^ 0x24) + 31);
  LODWORD(v66) = v21[9] - ((2 * v21[9]) & 0x64);
  LODWORD(v58) = *(v34 - 1402065137 + (v70 ^ 0x36)) ^ v70;
  v79 = *STACK[0xB50] - ((2 * *STACK[0xB50]) & 0x3C);
  LODWORD(v17) = v43[47] - ((2 * v43[47]) & 0x1A0);
  v80 = *v21 - ((2 * *v21) & 0x128);
  LODWORD(v68) = *STACK[0xB48] - ((2 * *STACK[0xB48]) & 0x26);
  v81 = *STACK[0xAF0];
  LODWORD(STACK[0xEE4]) = v81;
  v82 = (((v52 - ((2 * v52) & 0x1D0u) + 14852) << 48) - 0x1C000000000000) ^ (v81 - ((2 * v81) & 0x1BCB33964) - 0x4F449D5321A6634ELL) ^ (((v44 + 201) << 56) - 0x1D00000000000000) ^ v72;
  v83 = ((v21[2] - ((2 * v21[2]) & 0xDDDD)) << 16) - 1108475904;
  v84 = v68 + 19;
  LODWORD(v17) = (v83 & 0x85E0000 ^ 0x27152B40 ^ (((v17 << 8) - 1473261568) ^ 0x1F8EE409) & (v83 ^ 0x4211FFDB)) & ((v68 + 1483756051) ^ 0xA78FADEC) ^ (v68 + 1483756051) & 0x400040B6;
  v85 = v43;
  v86 = (v17 & 0xE0FF1B ^ 0xF80688DC65D3B325) & 0x8000080C2180D331 ^ (((v80 << 24) - 0x27B99FC06C000000) & 0x88000000 | 0x50162010841381) | (v17 & 0xE0FF1B ^ 0xF80688DC65D3B325) & 0x780680D044732C0ELL;
  v87 = (v86 ^ 0x60920000A080040) & (((v17 & 0x1F00E4 ^ 0x10112EAF477349ALL) & (((v80 << 24) - 0x27B99FC06C000000) & 0x77000000 ^ 0x850D9AEAE8FF77FFLL) | ((v80 << 24) - 1476395008) & 0x3000000) ^ 0x9718B6228A4E31BELL) ^ v86 & 0x61A2481D0FA1BLL;
  v88 = ((v49 + 6058190) << 40) - 0x1F0000000000;
  v89 = (v87 & 0x341A5F3EDF239131 ^ 0x97391F444C9B028FLL ^ (v87 ^ 0x69E04113004C0080) & ((((v43[48] - ((2 * v43[48]) & 0x4Eu) - 842449345) << 32) - 0x1800000000) ^ 0x62C9EE620DC6ECELL)) & (v88 ^ 0xA38F50FFFFFFFFFFLL);
  v90 = ((v73 << 24) + 0x2530FF5BE4000000) ^ (((v78 + 1355705452) << 32) - 0x800000000) ^ (((v75 + 12064839) << 40) - 0x140000000000);
  LOBYTE(v34) = v63 - 120;
  v91 = ((v66 + 31037) << 48) - 0xB000000000000;
  v92 = (((v58 ^ 7) + 28) ^ ((v58 ^ 0xFFFFFFD7) - 52) ^ ((v58 ^ 0xFFFFFFAF) - 76)) - 98;
  v93 = ((v24[13] - ((2 * v24[13]) & 0xBBBB)) << 16) - 1428357120;
  v94 = v88 & 0x14395E0000000000;
  v95 = v90 ^ (v92 << 56) ^ v77 ^ v82 ^ 0x255362ACDE599CB2 ^ (v34 << 48);
  v96 = (v94 ^ 0xA90692442FB94047 ^ v89) & (v91 ^ 0x86CDFFFFFFFFFFFFLL);
  v97 = v43[96] - ((2 * v43[96]) & 0x13C) - 0x1BC2DD36171FAB62;
  v98 = (v97 ^ 0x1BC2DD36171FAB61) & ((((v21[4] - ((2 * v21[4]) & 0x1D8)) << 8) - 0x127CBEC3CEBF1400) ^ 0x7A27B9CA140C44F3) ^ v97 & 0x400900098800570CLL;
  v99 = (v98 | 0x48A3C481D27F2058) & (*&v93 & 0x5D0000 ^ 0x48A3C481D273347CLL) | v98 & 0xC281;
  v100 = ((v24[24] - ((2 * v24[24]) & 0x128u) + 25772) << 48) - 0x18000000000000;
  v101 = (v98 & 0x295A ^ 0xE6D77312F4E3CD46) & (*&v93 & 0xA20000 ^ 0xE6D77312F463ED5ELL);
  v102 = ((v24[2] - ((2 * v24[2]) & 0x24u) - 129752002) << 32) - 0x2C00000000;
  v103 = ((v21[8] - ((2 * v21[8]) & 0x12Au) + 13836706) << 40) - 0xD0000000000;
  v104 = (v102 & 0x18440BA100000000 ^ 0x245DF49A25084D92 ^ (v101 & 0x280101200E2090ELL ^ 0x1D1A8044BC93E5D9 ^ (v99 ^ 0xB4806089223B800DLL) & (v101 ^ 0x187C8789063E1BE1)) & (v102 ^ 0x7BBDBEDFFFFFFFFLL)) & (v103 ^ 0x2CDE6AFFFFFFFFFFLL);
  v105 = ((v21[1] - ((2 * v21[1]) & 0x13C)) << 24) + 0x4B950A539E000000;
  v106 = v105 & 0x940A5345000000 ^ v100 & 0x6054000000000000 ^ (v100 ^ 0x9B2B575C829FFEE1) & ((((v21[7] - ((2 * v21[7]) & 0x1Cu) + 21) << 56) - 0x700000000000000) ^ 0x11AB575C829FFEE1) ^ 0x2699B6A4CD9C9E3 ^ (v103 & 0x5F3F0000000000 ^ 0x14A23468D320E7C1 ^ v104) & (v105 ^ 0xB46AF5AC61FFFFFFLL);
  v107 = (((LODWORD(STACK[0xE98]) + 54518) << 48) - 0x13000000000000) ^ v35 & 0x84199DAF916572E1 ^ v106 ^ STACK[0xE90];
  v108 = v107 ^ 0xFAC62C958391C688;
  v107 ^= 0x4187D9D5567F7CFEuLL;
  v109 = (((v82 ^ 0x255362ACDE599CB2) - (v82 ^ 0xB20A4FF2C35F4E0BLL)) ^ 0xFFFFFFFFFFFFFFFELL) + (v82 ^ 0x255362ACDE599CB2);
  v110 = v91 & 0xA0F000000000000 ^ (((v79 + 161) << 56) - 0x300000000000000) ^ v96;
  v111 = (-v107 ^ (0xBB41F540D5EEBA76 - v108) ^ 0x1CEFE929777C7119 ^ (v107 - ((2 * v107) & 0x39DFD252EEF8E232) + 0x1CEFE929777C7119)) - 0x44BE0ABF2A11458ALL;
  v112 = v110 ^ v106;
  v113 = v112 ^ 0x2AA7708AFAD1DE42;
  v114 = __ROR8__(((v95 ^ 0xA504C86824C90652) & ~v109 | v109 & 0xE910A3786D1AB4C4) ^ 0xA7FC588DB8472AD7 ^ v111, 52);
  v115 = v110 & 0xBD0A90BB8FD7C492 ^ v109 ^ (v110 ^ 0xD80D465F9FFFBED2) & (v95 ^ 0xEE1045439FB89FBLL) ^ ((v95 ^ 0xA504C86824C90652) & ~v109 | v109 & 0xE910A3786D1AB4C4) ^ 0xA7FC588DB8472AD7 ^ v111;
  v116 = __ROR8__((((v114 << 52) & 0x2440000000000000 ^ 0xC0577AAED14C43FDLL) & ((v114 >> 12) & 0xDECFEE1F590F2 ^ 0xEFF7BFB754BF43FFLL) & 0x24492C62A1249032 | (v114 >> 12) & 0x8044020209002 | ((((v114 << 52) & 0xDBB0000000000000 ^ 0x2DD7DA39666829BFLL) & ((v114 >> 12) & 0x213011E0A6F0DLL ^ 0xFFFDDF7EF4ECC0BALL) | (v114 >> 12) & 0x10018024600) ^ 0x65D119A53EB92F72) & ((((v114 << 52) & 0x2440000000000000 ^ 0xC0577AAED14C43FDLL) & ((v114 >> 12) & 0xDECFEE1F590F2 ^ 0xEFF7BFB754BF43FFLL) | (v114 >> 12) & 0x8845020B19002) ^ 0x1BE125210F32BC22)) ^ 0x3967EBBEC1F5C2FDLL, 54);
  v117 = v111 & (__ROR8__(__ROR8__(v112 ^ 0x2AA7708AFAD1DE42, 55) ^ 0xC8CE6DAC788D2375, 9) ^ 0xDD2398B4E56958FFLL);
  v118 = v110 & 0xF47CA2BDD24361B5 ^ (v112 ^ 0x46E3D24AE4385E66) & (v110 ^ 0x27F2B9A06000412DLL) ^ v95;
  v119 = v118 ^ v110 ^ v117;
  v120 = __ROR8__(((v116 - (v116 ^ 0x8FE680E9A440A7D7)) ^ 0xFFFFFFFFFFFFFFFELL) + v116, 10);
  v121 = (__ROR8__(__ROR8__(v107, 21) ^ 0x32626679A48AC159, 43) ^ 0x8B8A9BE7013709C5) & v109 ^ v113;
  v122 = ((v120 ^ 0x4C1D86BCFB09415ELL) - ((2 * (v120 ^ 0x4C1D86BCFB09415ELL)) & 0xA4B9E93460781102) - 0x2DA30B65CFC3F77FLL) ^ v121;
  *(&v123 + 1) = v115 ^ 0x165CFFC5E0FC5E12;
  *&v123 = v115;
  v124 = v115 ^ 0x165CFFC5E0FC5E12 ^ (v115 >> 39) ^ (v123 >> 61) ^ ((v115 ^ 0x165CFFC5E0FC5E12) << 25);
  v125 = v119 ^ 0x5C1BB7C24581F9F9 ^ (v119 >> 17) ^ __ROR8__(v119 ^ 0x5C1BB7C24581F9F9, 10) ^ ((v119 ^ 0x5C1BB7C24581F9F9) << 47);
  v126 = v118 ^ 0xF7B94A012B7DF9B4 ^ (v118 >> 1) ^ ((v118 ^ 0xF7B94A012B7DF9B4) << 58) ^ ((v118 >> 6) ^ 0xD4BEAB9063605A1BLL) & ~(v118 << 63);
  v127 = v126 ^ 0xB046E7FAC73A066ELL ^ v124;
  v128 = v121 ^ 0xD09503EABF4FABFCLL ^ (v121 >> 7) ^ ((v121 ^ 0xD09503EABF4FABFCLL) << 23) ^ (((v121 >> 41) ^ 0x93969000EB12D7BLL) & ~((v121 ^ 0xD09503EABF4FABFCLL) << 57) | ((v121 ^ 0xD09503EABF4FABFCLL) << 57) & 0xF7FFFFFFFFFFFFFFLL) ^ 0xF1BBA551EED39059;
  v129 = v128 ^ (v122 >> 28) ^ v122 ^ 0xDA8D9258A26451E8 ^ __ROR8__(v122 ^ 0xDA8D9258A26451E8, 19);
  v130 = v129 ^ ((v122 ^ 0xDA8D9258A26451E8) << 36);
  v131 = v125 ^ 0x46EDF728A8DD714FLL ^ v128;
  v132 = ~v129 & 0x100000;
  v133 = __ROR8__(v125 ^ 0x46EDF728A8DD714FLL, 46);
  v134 = (v124 ^ 0x85E369CB6C439B02) & (v126 ^ 0xC29B01C16C6E605);
  v135 = 0xCB86CBE1FD0A612;
  if (v21[2])
  {
    v135 = v125 ^ 0x46EDF728A8DD714FLL;
  }

  v137 = (v132 & v134) == 0;
  v138 = v132 + (v124 & 0xB431C3AB4D81F992 ^ 0x8421418B4C019902 ^ v134);
  v139 = 2 * v132;
  if (v137)
  {
    v140 = 0;
  }

  else
  {
    v140 = -v139;
  }

  v141 = v130 & 0xFFFFFFFFFFEFFFFFLL ^ 0x9AD6000D73C82394 ^ (v138 + v140);
  v142 = v124 ^ v125 & 0x65F1244F99C9F7EDLL ^ (v127 ^ 0xE4F4B5777627D304 ^ v135) & (v125 ^ 0xB5AA646948F228A2) ^ 0x13799098ACBC3B3ELL ^ v141;
  v143 = v130 & 0xBC9DA7A36D27D210 ^ v131 ^ (v130 ^ 0x842544B891022C35) & (v124 ^ 0xC6813197FE9BB6EDLL);
  v144 = (v142 & 0x3A2082D93F7A9CC9 ^ 0xDF785D020DDC825BLL) & (v142 & 0xC5DF7D26C0856336 ^ 0x7AB5E6D9BF7ABCCFLL) | v142 & 0x872024C0016124;
  v145 = v141 ^ v143;
  v136 = (v130 ^ 0x7BDABB476EFDD3CALL) & (((2 * v131) ^ 0x1E66D4265C4EDF49) + (v131 ^ 0xF0CC95ECD1D8905BLL));
  v146 = (v136 ^ v125) & 0x43E8DB53B32BD482 ^ __ROR8__(__ROR8__((v136 ^ v125) & 0xBC1724AC4CD42B7DLL ^ 0x29A29CD8AB07CBA1, 58) ^ 0x42DC72E8551D1B45, 6) ^ 0x8903897A42A1976ELL;
  v147 = (-((v144 ^ 0xF7F9DDAF27BD0F76) & 0x65B4E5E6A2E59BCFLL ^ 0x9AD3DBD5FDDDF97DLL) ^ (((v144 ^ 0xF7F9DDAF27BD0F76) & 0x9A4B1A195D1A6430) - (v144 ^ 0x6D2A067ADA60F60BLL)) ^ 0x29A6A9C1357A9C8ELL ^ (((v144 ^ 0xF7F9DDAF27BD0F76) & 0x65B4E5E6A2E59BCFLL ^ 0x9AD3DBD5FDDDF97DLL) - ((2 * ((v144 ^ 0xF7F9DDAF27BD0F76) & 0x65B4E5E6A2E59BCFLL ^ 0x9AD3DBD5FDDDF97DLL)) & 0x534D53826AF1311CLL) + 0x29A6A9C1357A9C8ELL)) + ((v144 ^ 0xF7F9DDAF27BD0F76) & 0x9A4B1A195D1A6430);
  v148 = v131 & 0x787A9FF3E8FCA786 ^ v127 ^ (((((((v133 ^ 0x31AC5929B7D7E57FLL) << (v92 & 0x2E)) - ((2 * ((v133 ^ 0x31AC5929B7D7E57FLL) << (v92 & 0x2E))) & 0x1EAC962053F37940) + 0xF564B1029F9BCA0) ^ 0xF564B1029F9BCA0) << ((v92 & 0x2E ^ 0xAE) & 2) << ((v92 & 0x2E ^ 0xAE) & 0x7C)) + ((v133 >> 18) ^ 0xC6B164A6DF5)) ^ 0x8D9D3F26E1666C61) & (v131 ^ 0xF0CC95ECD1D8905BLL);
  v149 = v145 ^ 0x848BF29214606436;
  v150 = (v145 >> 28) ^ 0x823D43449;
  v151 = 0x7FFFFFFFFFLL;
  if (v21[1])
  {
    v151 = v147;
  }

  v152 = v151 & v147;
  v153 = __ROR8__(v149, 19);
  v154 = v149 ^ v153 ^ 0x5309510055887D89;
  v155 = (-v146 ^ ((v148 ^ 0x20A9799CF19FD06) - (v146 ^ v148 ^ 0x20A9799CF19FD06)) ^ 0xA38A2F51299B9022 ^ (v146 - ((2 * v146) & 0x47145EA253372044) - 0x5C75D0AED6646FDELL)) + (v148 ^ 0x20A9799CF19FD06);
  v156 = (v149 ^ v153) & 0x80000000000;
  v137 = (v156 & -v154) == 0;
  v157 = -v154 - v156;
  v158 = v156 - v154;
  if (v137)
  {
    v157 = v158;
  }

  v159 = v155 ^ __ROR8__(v155 ^ 0x48E7F4C477ED6A9, 10) ^ ((v155 ^ 0x48E7F4C477ED6A9) << 47) ^ 0xE833EBD5AABD9A3FLL;
  v160 = (v154 & 0xFFFFF7FFFFFFFFFFLL ^ v157 ^ 0xA7BA57641B2B04FELL ^ (v150 - (v154 ^ v150) - ((2 * (v150 - (v154 ^ v150))) & 0x4F74AEC8365609FCLL) - 0x5845A89BE4D4FB02)) + v150;
  *(&v161 + 1) = v148;
  *&v161 = v148 ^ 0xE6E255C4D1357AD9;
  v162 = v147 ^ __ROR8__(v147, 61) ^ (v147 >> 39) ^ (v152 << 25);
  v163 = v148 ^ 0xE6E255C4D1357AD9 ^ (v148 >> 6) ^ (v161 >> 1) ^ ((v148 ^ 0xE6E255C4D1357AD9) << 58);
  v164 = v159 + ((v155 >> 17) ^ 0x6A5AF2999AB0) - 2 * (v159 & ((v155 >> 17) ^ 0x6A5AF2999AB0));
  v165 = v143 ^ 0xDCC33225B98BDA46 ^ (v143 >> 41) ^ __ROR8__(v143 ^ 0xDCC33225B98BDA46, 7) ^ ((v143 ^ 0xDCC33225B98BDA46) << 23);
  v166 = v164 ^ v165;
  v167 = v162 ^ 0xCE9AB5F5C2938119 ^ v163;
  v168 = v165 ^ (v149 << 36) ^ v160;
  v169 = v168 ^ 0xE481313E444E2AACLL;
  v170 = 64;
  if ((v168 & 0x40) != 0)
  {
    v170 = -64;
  }

  v171 = (v167 ^ 0xFE58970FAB2165EALL) & v164;
  v172 = (v166 ^ 0x9FB14FC29450FD65) & v169 ^ v168 & 0xBFE55EF32FE12836;
  v173 = v164 & 0x82D82A00E62608D9 | (v165 ^ 0x5D73C4CEA2682275) & ~v164;
  v174 = ((v170 + v169) ^ 0xFFFFFFFFFFFFFFBFLL) & v162 ^ v166;
  v175 = (((v171 >> (v169 & 0x2D)) - ((2 * (v171 >> (v169 & 0x2D))) & 0xA72120C59ECAC16CLL) - 0x2C6F6F9D309A9F4ALL) ^ 0xD3909062CF6560B6) >> ((v169 & 0x2D ^ 0x5F) & 0xC) >> ((v169 & 0x2D ^ 0x5F) & 0x21 ^ 0x20);
  v176 = v175 & 0xE71E6962B30AE881 ^ __ROR8__(v162 ^ 0xCE9AB5F5C2938119, 45) ^ ((v171 << 19) ^ 0x18E1969D4CF5177ELL) & ~v175 ^ 0x6C296CFF726A54EBLL;
  v177 = (v162 & 0xAF0A7DE3BF9774D1 | (v163 ^ 0x6037A0E629DA6FDDLL) & ~v162) ^ 0xAF0A7DE3BF9774D1;
  v178 = (((v172 ^ 0xA481103204402824) << (STACK[0xEA0] & 0x13) << ((STACK[0xEA0] & 0x13 ^ 0xAB) & 0x12 ^ 0x10u) << ((STACK[0xEA0] & 0x13 ^ 0xAB) & 1)) + ((v172 >> 45) ^ 0x52408)) ^ __ROR8__(v164, 45);
  v179 = v167 ^ v173;
  *(&v181 + 1) = v178 ^ 0xD236472D7D4;
  *&v181 = v178 ^ 0x1774B00000000000;
  v180 = v181 >> 44;
  v182 = v177 + v169 - 2 * (v177 & v169);
  v183 = 0x20000000;
  if ((v180 & 0x20000000) != 0)
  {
    v183 = -536870912;
  }

  v184 = v183 + v180;
  v185 = __ROR8__(v176, 19);
  v186 = (-v182 ^ (v182 - ((2 * v182) & 0xE79D8D8F04C33BB8) - 0xC3139387D9E6224) ^ 0xF3CEC6C782619DDCLL ^ ((v185 ^ 0x26E81B6CDDDFC6CALL) - (v185 ^ 0x26E81B6CDDDFC6CALL ^ v182))) + (v185 ^ 0x26E81B6CDDDFC6CALL);
  v187 = ((v174 & 0x124E9E3E54B9233DLL ^ 0xFFFBE3F7EBDEFFF7) - (v174 ^ 0x135BC277C0DE77B7)) ^ v182 & 0xEDB161C1AB46DCC2 ^ (v182 ^ v174) & 0x124E9E3E54B9233DLL ^ 0x124A823640982335;
  v188 = v186 ^ 0xD6D718158353A48CLL ^ (v186 >> 39) ^ __ROR8__(v186 ^ 0xD6D718158353A48CLL, 61) ^ ((v186 ^ 0xD6D718158353A48CLL) << 25);
  v189 = (v179 ^ 0x4B53C7FBE00D3BFLL) >> ((v74 ^ 0x13) & 4) >> (~(v74 ^ 0x13) & 2) >> ((v74 ^ 0xEF) & 2);
  v190 = v179 ^ __ROR8__(__ROR8__(v184 ^ 0x1556028EB53BC693, 20) ^ 0x5DF50F7E7C0B72B4, 19);
  v191 = __ROR8__(v179 ^ 0xF7EA864C93F3AC45, 1);
  v192 = ((v189 >> ((v74 ^ 0xEF) & 4)) + (v179 ^ v191 ^ 0x7D1AE16628F96C42) - 2 * ((v189 >> ((v74 ^ 0xEF) & 4)) & (v179 ^ v191 ^ 0x7D1AE16628F96C42))) ^ ((v179 ^ 0xF7EA864C93F3AC45) << 58);
  v193 = v174 ^ 0xB6FA6605EA77B255 ^ (v174 >> 41) ^ __ROR8__(v174 ^ 0xB6FA6605EA77B255, 7) ^ (v174 << 23) ^ 0x48955CE5DA5FEF00;
  v194 = v193 ^ (v187 << 36) ^ ((v187 >> 28) | (v187 << 45)) ^ (((v187 - 1) ^ ((v187 >> 19) - ((v187 >> 19) ^ v187)) ^ (v187 - ((2 * v187) & 0x74C5EA2E60C1F58ELL) - 0x459D0AE8CF9F0539) ^ 0xBA62F5173060FAC7) - (v187 >> 19));
  v195 = v188 ^ v192 ^ 0xD9B2061274D43647;
  v196 = v190 ^ 0x99B95E9E36D19684 ^ __ROR8__(v190, 17) ^ __ROR8__(v190 ^ 0x99B95E9E36D19684, 10);
  v197 = __ROR8__(__ROR8__(v193, 45) ^ 0x87D0E7B0E0E5EB57, 19);
  v198 = (v188 ^ v192 ^ 0xE9830267C8307E9CLL) & (v196 ^ 0x847F2BF3AC28D200);
  v199 = v194 ^ v188 & 0xF84FED0BD926A5DBLL ^ (v188 ^ 0x1830267C8307E9CLL) & (v192 ^ 0x104FED0BD926A5DBLL) ^ 0x783209EA55669D63;
  v200 = v188 & 0x19C2BC89A6893FB8 ^ v196 ^ v197 ^ (v188 ^ 0xFE7CFD9837CF8163) & (v194 ^ 0x9E0C4A9FC43079BCLL);
  v201 = (v188 ^ v195 & 0x64A78FBE8481FA70 ^ v198 ^ 0xDE5DF9ACB34FC933) + v199 - 2 * ((v188 ^ v195 & 0x64A78FBE8481FA70 ^ v198 ^ 0xDE5DF9ACB34FC933) & v199);
  v202 = (v196 ^ v197 ^ 0xDA7CA2A156E67268) & (v196 ^ 0x1CD57E1EB3A15367) ^ (v196 ^ v197) & 0x3F225AC64F784E8 ^ v195;
  v203 = ((v200 ^ 0x2929BF730559A182 ^ v199) & 0x5BDEEA8FD5148B62 ^ 0x613540AD1BD282D0) & ((v200 ^ 0x2929BF730559A182 ^ v199) & 0xA42115702AEB749DLL ^ 0x5BDEEF9FD75EDBE6) | (v200 ^ 0x2929BF730559A182 ^ v199) & 0x840015502029740DLL;
  v204 = v202 ^ 0xD8AD4F3B469C41FALL;
  v205 = v194 & 0x6C7140AB24DD4BA7 ^ v196 ^ (v196 ^ v197 ^ 0x49F21DF58DC4C630) & (v194 ^ 0x783109E99D46B9FBLL) ^ v202 ^ 0xC63A046C47F01C18;
  v206 = (v205 & 0xCD39B3A5469A1823 ^ 0x35064874B886B877) & (v205 & 0x32C64C5AB965E7DCLL ^ 0xFDBBB7F7D69F38F3) | v205 & 0x2C0040A01614788;
  v207 = (v206 << 47) ^ 0xF58B800000000000;
  v208 = v201 ^ 0x918D8FC2BE8293A2 ^ (v201 >> 39) ^ __ROR8__(v201 ^ 0x918D8FC2BE8293A2, 61) ^ ((v201 ^ 0x918D8FC2BE8293A2) << 25);
  v209 = v208 ^ 0x71100FA1FDB1ED83;
  v210 = v202 ^ 0xD8AD4F3B469C41FALL ^ (v202 >> 1) ^ ((v202 ^ 0xD8AD4F3B469C41FALL) << 58) ^ (((v202 ^ 0x7BD912D17B9CBA7) >> (v84 & 2 ^ 2u) >> (v84 & 2 | 4u)) ^ 0xC020998AEDA3E98ELL) & ((v202 << 63) | 0x4FFFFFFFFFFFFFFFLL);
  v211 = v206 ^ 0x33A1E25882B16885 ^ (v206 >> 17) ^ __ROR8__(v206 ^ 0x33A1E25882B16885, 10);
  v212 = -(v210 ^ 0x68EE8F0A375A8600) ^ ((v210 ^ 0x68EE8F0A375A8600) - 2 * ((v210 ^ 0x68EE8F0A375A8600) & 0x62B82738EBA6962ELL ^ v210 & 8) + 0x62B82738EBA69626) ^ 0x62B82738EBA69626 ^ ((v208 ^ 0x71100FA1FDB1ED83) - (v208 ^ 0x71100FA1FDB1ED83 ^ v210 ^ 0x68EE8F0A375A8600));
  v213 = v211 & 0x8000000000000000 ^ v207;
  v137 = (v211 & 0x8000000000000000 & v207) == 0;
  v214 = v207 - (v211 & 0x8000000000000000);
  v215 = v211 & 0x7FFFFFFFFFFFFFFFLL;
  v216 = v212 + (v208 ^ 0x71100FA1FDB1ED83);
  v217 = (v200 >> 7) ^ (v200 << 23) ^ (v200 >> 41) ^ v200 ^ 0x72245BFB9A2D780DLL ^ ((v200 ^ 0x72245BFB9A2D780DLL) << 57);
  v218 = v217 ^ 0xBA74B1A0C0F1D919;
  if (v137)
  {
    v214 = v213;
  }

  v219 = v214 ^ v215;
  v220 = v219 ^ v218;
  v221 = v218 ^ (v203 >> 28) ^ v203 ^ 0x5EB5FB0B4FA7EA3DLL ^ __ROR8__(v203 ^ 0x5EB5FB0B4FA7EA3DLL, 19) ^ ((v203 ^ 0x5EB5FB0B4FA7EA3DLL) << 36);
  v222 = (v219 ^ 0x87DEBC3992C37575) & (v217 ^ 0xC6209194E90E4627) ^ v219 & 0x392F03E65D747E5ALL;
  v223 = (v208 & 0x701680C32F1B071CLL ^ 0xFFF97FBDFDF5FDE3 ^ (v221 ^ 0x829D8E33DEDB97DBLL) & (v208 ^ 0x8EEFF05E024E127CLL)) + (v221 ^ 0xE1520C346C217295 ^ (v209 - ((2 * v209) & 0x27B205893BC3C4A4) + 0x13D902C49DE1E252));
  v224 = v221 ^ 0xF2567758BC83ADF3 ^ v216 & (v208 ^ 0x8EEFF05E024E127CLL);
  v225 = v216 & 0x77BE1CCCCAC8172FLL | (v219 ^ 0xF9F5F0AA7F49DA5) & ~v216;
  v226 = v220 ^ 0xABDCD554C1825A18;
  v227 = (v223 + 1) ^ v220 ^ 0xABDCD554C1825A18;
  v228 = (v220 ^ 0xC2A59FEBE6489411) & (v221 ^ 0xBB028E3E0C3C7ED0);
  v229 = v222 ^ (v216 - ((2 * v216) & 0xA8067E4B09C6D2D0) + 0x54033F2584E36968);
  v230 = v219 ^ v228;
  v231 = v227 ^ v224 ^ 0x41190552CCBE0B9BLL;
  v232 = v230 ^ v226 & 0x498980CEFDFCEE17 ^ 0x3128434848F4448BLL;
  v233 = v227 ^ v224 ^ 0x78DCE87F24D87591;
  v234 = v225 ^ v209 ^ v224;
  *(&v235 + 1) = v233 ^ (v231 >> 19);
  *&v235 = v233;
  v236 = (v229 ^ 0x550D3F0594A31D38) + v232 - 2 * ((v229 ^ 0x550D3F0594A31D38) & v232);
  *&v235 = __ROR8__((v235 >> 60) ^ 0xA0E72B950533AE77 ^ (((v231 >> 15) & 0xC ^ 0xFFFFFFFFFFFFFFC7) & ((v233 << 49) ^ 0x7C95FC6CB318324CLL) & 0xFFFFFFFFFFFFFFFCLL | (v231 >> 15) & 3), 4);
  v237 = (v235 ^ 0xD0C951F822A0DDBLL) + (((v227 ^ v224) >> 28) ^ 0xED90858E0) - 2 * ((v235 ^ 0xD0C951F822A0DDBLL) & (((v227 ^ v224) >> 28) ^ 0xED90858E0));
  LOBYTE(v231) = (LODWORD(STACK[0xEA8]) - 31) & 0xE5 ^ 0x96;
  v238 = (LODWORD(STACK[0xEA8]) - 31) ^ 0x78;
  v239 = (v237 - ((2 * v237) & 0x95AA94680779ACD2) - 0x352AB5CBFC432997) ^ (v233 << 36);
  v240 = v229 ^ 0xFF2E4380071451FELL;
  v241 = (LODWORD(STACK[0xEA8]) - 31) ^ (2 * (v238 & (2 * (v238 & (2 * (v238 & (2 * (v238 & (2 * (v238 & (2 * (v238 & (2 * (LODWORD(STACK[0xEA8]) - 31)) & 0x72 ^ v231)) ^ v231)) ^ v231)) ^ v231)) ^ v231)) ^ v231));
  v242 = v236 ^ 0x9A009CD84FBE3D56;
  v243 = (v236 >> 17) ^ 0x46087858A654;
  v244 = v236 ^ (v236 >> 10) ^ 0x8C33F48D60FAAAE1;
  if (((v241 ^ 0x60) & ~LODWORD(STACK[0xEA8]) | STACK[0xEA8] & 0x7A) != 0x85)
  {
    v204 = (v227 >> 41) ^ 0xDF10DE165139B417;
  }

  *(&v245 + 1) = v234 ^ 0x1B26722C5372B327;
  *&v245 = v234;
  v246 = v234 ^ 0x1B26722C5372B327 ^ (v234 >> 39) ^ (v245 >> 61) ^ ((v234 ^ 0x1B26722C5372B327) << 25);
  v247 = (v227 ^ 0xB376F958DF86168ALL) << 23;
  *(&v245 + 1) = v229;
  *&v245 = v229 ^ 0xFF2E4380071451FELL;
  v248 = v227 ^ __ROR8__(v227 ^ 0xB376F958DF86168ALL, 7) ^ v204;
  v249 = v240 ^ (v229 >> 6) ^ (v245 >> 1);
  v250 = v246 ^ 0x68DF1D6D786D9943;
  v251 = v248 ^ 0x6EE7B83BA302BEAALL;
  v252 = v249 ^ (v240 << 58);
  v253 = v246 ^ 0x68DF1D6D786D9943 ^ v252;
  *&v245 = __ROR8__(__ROR8__(v251, 18) ^ 0x84A848EA651AFE25, 46);
  v254 = (v242 << 47) ^ (v242 << 54) ^ (v243 + v244 - 2 * (v244 & v243));
  v255 = (v245 & 0xF6AD8A6D8847EFD7 ^ v247 & 0xF6AD8A6D88000000 ^ 0x1B5275D277BA58A8) & (v247 & 0x952759277800000 ^ 0x5A18FE740D367CE4 ^ v245 & 0x952759277B81028) | (v245 & 0xF6AD8A6D8847EFD7 ^ v247 & 0xF6AD8A6D88000000) & 0xA4A5000980418313;
  v256 = v255 ^ 0xF24ACEE42DAEFDFELL ^ v254;
  v257 = (-(v239 ^ 0x5FE789D403BCD669) ^ ((v255 ^ 0xF24ACEE42DAEFDFELL) - (v239 ^ 0x5FE789D403BCD669 ^ v255 ^ 0xF24ACEE42DAEFDFELL)) ^ 0xE755DD2C0BBE9A68 ^ ((v239 ^ 0x5FE789D403BCD669) - ((2 * (v239 ^ 0x5FE789D403BCD669)) & 0xCEABBA58177D34D0) - 0x18AA22D3F4416598)) + (v255 ^ 0xF24ACEE42DAEFDFELL);
  v258 = v246 & 0x49EF567FF3365C33 ^ (v252 ^ 0x9E22801059603D1FLL) & (v246 ^ 0x30BBB06B44DDEF00) ^ 0xB158E30F3BAC357 ^ v257;
  v259 = (v257 & 0x48B82B3DADB81ABELL | (v246 ^ 0x87FC64A9169A0A41) & ~v257) ^ v256;
  v260 = v257 & (v256 ^ 0x54D47FFFFFFFFFFFLL);
  v261 = v259 ^ v258;
  v262 = v253 & 0x19C2589C6B211491 ^ v250;
  v263 = v259 ^ v258 ^ 0x4B2AC22F3CE37E79;
  v264 = v262 ^ (v254 ^ 0xB2E9D89C6B211491) & (v253 ^ 0x8FA97B6996E6176FLL);
  v265 = v259 ^ v258 ^ 0xCC5D79740E3E8B67;
  v266 = v264 ^ v258;
  v267 = (v255 ^ 0xF24ACEE42DAEFDFELL) & (v254 ^ 0x5E2B613F001C49EFLL);
  v268 = v255 & 0xAFF1EC0FFE3B610 ^ v253;
  v269 = v266 ^ 0x6E5A0322CEDBA7BLL;
  v270 = v268 ^ v267;
  v271 = v268 ^ v267 ^ v254 ^ v260;
  v272 = (v261 ^ 0x3B3A1E012712E315) << ((v155 ^ 0x3C) & 4) << (~(v155 ^ 0x3C) & 0x20) << (~v155 & 0x20) << (v155 & 4);
  v273 = (-(-33 * ((v266 >> 61) ^ 4)) ^ (28 - ((-33 * ((v266 >> 61) ^ 4)) ^ 0x1C)) ^ ((-33 * ((v266 >> 61) ^ 4)) - ((190 * ((v266 >> 61) ^ 4)) & 0xC6) - 603218077) ^ 0xDC0B9F63) + 28;
  v274 = v265 ^ (v263 >> 19) ^ (((v265 << 45) ^ 0x659D77F21C2399ELL) & ((v263 >> 28) ^ 0xFFFFFF7820FAF93ELL) | (v263 >> 28) & 0xDE3DC661);
  v275 = STACK[0xEB0];
  v276 = v272 ^ -v272 ^ ((((v274 ^ 0x969CC454750280E0) + 0x6BD5CD91624E8781) ^ ((v274 ^ 0x173EC0722BD118F4) - 0x15883648C362E06BLL) ^ ((v274 ^ 0xFD92FA2E4DB5C8E7) + 0xDBF3EB5AF9CF88)) - (((v274 ^ v272 ^ 0x88EB769E7B312A00) - 0x39BB0F25588F0365) ^ ((v274 ^ v272 ^ 0x919D398DED8BDB6BLL) - 0x20CD4036CE35F20ELL) ^ ((v274 ^ v272 ^ 0x6546B11B85DCA198) + 0x2BE9375F599D7703)) - 0x4EDA7F803502D12ALL);
  v277 = (v271 >> 17) ^ 0x3D563E4AEE7CLL;
  v278 = (((v274 ^ 0x6418CFA45C0FA5C8) - 0x66AE399EB4BC5D57) ^ ((v274 ^ 0x2E2F14092D21531BLL) - 0x2C99E233C592AB84) ^ ((v274 ^ 0x360725A56248A620) - 0x34B1D39F8AFB5EBFLL)) - 0x14011866D47A8E9 + (((v276 ^ 0x3AF20447D98C422CLL) - 0x26F37BE4D757EAC1) ^ ((v276 ^ 0xF3C6385FE437D758) + 0x1038B8031513804BLL) ^ ((v276 ^ 0xC9343C183DBB9574) + 0x2ACABC44CC9FC267));
  v279 = ((v278 ^ 0x7D596222BC737C75) - 0x19610481347479CBLL) ^ v278 ^ ((v278 ^ 0xFE775AEF6A7BC24ALL) + 0x65B0C3B31D83380CLL) ^ ((v278 ^ 0xC8A9A1B3A0E45C5FLL) + 0x536E38EFD71CA61FLL) ^ ((v278 ^ 0x2FBFFFDDFEEBE7DELL) - 0x4B87997E76ECE260);
  LOBYTE(v260) = *(STACK[0xEB0] + (v273 ^ 0x33)) - ((((2 * (*(STACK[0xEB0] + (v273 ^ 0x33)) & 0xF)) ^ 0x75) - 77) ^ (((2 * (*(STACK[0xEB0] + (v273 ^ 0x33)) & 0xF)) ^ 0x8B) + 77) ^ (((2 * (*(STACK[0xEB0] + (v273 ^ 0x33)) & 0xF)) ^ 0xFE) + 58)) - 98;
  LOBYTE(v278) = v260 & 0xA7 ^ 0x97;
  LOBYTE(v273) = v260 ^ (2 * ((v260 ^ 0x38) & (2 * ((v260 ^ 0x38) & (2 * ((v260 ^ 0x38) & (2 * ((v260 ^ 0x38) & (2 * ((v260 ^ 0x38) & (2 * (((2 * v260) & 0x72 ^ 0x1E) & (v260 ^ 0x38) ^ v278)) ^ v278)) ^ v278)) ^ v278)) ^ v278)) ^ v278)) ^ ((v273 ^ 0x13) + v273 - ((2 * ((v273 ^ 0x13) + v273)) & 0x5C) - 82) ^ 9;
  v280 = v271 ^ (v271 >> 10) ^ 0x7AB2D78AF98EE247;
  v281 = v277 & 0x8000000;
  v282 = ((v273 >> 3) | (32 * v273));
  if ((v277 & 0x8000000 & v280) != 0)
  {
    v281 = -v281;
  }

  v283 = (v280 + ((v271 << 54) ^ 0xC00000000000000) - 2 * (((v271 << 54) ^ 0xC00000000000000) & v280) + v281) ^ v277 & 0xFFFFFFFFF7FFFFFFLL;
  v284 = v269 ^ (8 * v269) ^ v282;
  *STACK[0xB70] = BYTE1(v279) ^ 5;
  v21[13] = BYTE3(v279) ^ 0x88;
  v85[91] = v279 ^ 0xBE;
  v285 = __ROR8__(v269, 39);
  *STACK[0xB60] = BYTE5(v279) ^ 0x66;
  *STACK[0xB68] = BYTE4(v279) ^ 0xA3;
  v286 = v284 ^ v285 ^ 0x6C7D0EE53DD5162;
  *STACK[0xB58] = BYTE2(v279) ^ 7;
  v24[12] = HIBYTE(v279) ^ 0x64;
  *STACK[0xB78] = BYTE6(v279) ^ 0x38;
  v24[3] = v284 ^ v285 ^ 0xE5;
  *STACK[0xB40] = BYTE2(v286) ^ 0x84;
  v85[21] = BYTE1(v286) ^ 0x83;
  v24[17] = ((v284 ^ v285 ^ 0x53DD5162) >> 24) ^ 0xF0;
  v287 = (v284 ^ v285 ^ 0x32FB3FB9A359D2E5) >> (v284 & 0x38 ^ 0x18) >> (v284 & 0x10);
  v288 = v270 ^ 0x2BA50EFE0C0A1C47 ^ (v270 >> 6) ^ __ROR8__(v270 ^ 0x2BA50EFE0C0A1C47, 1);
  v289 = v288 ^ ((v270 ^ 0x2BA50EFE0C0A1C47) << 58);
  v290 = STACK[0xEB8];
  v291 = *(STACK[0xEB8] + ((((v286 >> 28) & 0xF0 ^ 0xF711D1C480786411) & ((v286 >> 36) & 0xF ^ 0xF711D1C4807864F6) | (v286 >> 36) & 0xE) ^ 0xF711D1C480786490));
  v21[10] = BYTE5(v284) ^ BYTE5(v285) ^ 0x3F;
  HIDWORD(v285) = v291 ^ 0x3C;
  LODWORD(v285) = (((v291 ^ 0x3C) * (v291 ^ 0x3C)) << 27) ^ (v291 << 24);
  LOBYTE(v291) = ((v285 >> 27) >> 5) | (8 * (v285 >> 27));
  v21[5] = BYTE6(v286) ^ 0x3C;
  v21[3] = (((v291 ^ 0xC6) - 95) ^ ((v291 ^ 0x94) - 13) ^ ((v291 ^ 0x7F) + 26)) - 96;
  LOBYTE(v286) = *(v290 + (((((v287 >> (v284 & 0x28 ^ 0x20)) >> 4) ^ 0x17F3E38650E52E4FLL) & ((16 * (v287 >> (v284 & 0x28 ^ 0x20))) ^ 0x17F3E38650E52E7FLL) | (16 * (v287 >> (v284 & 0x28 ^ 0x20))) & 0xB0) ^ 0x17F3E38650E52EBALL));
  LOBYTE(v286) = v286 ^ (8 * (v286 ^ 0x3C) * (v286 ^ 0x3C));
  v21[6] = BYTE3(v288) ^ 0x54;
  *STACK[0xB38] = ((v288 & 9 ^ 8 | v288 ^ 0x5C) - ((2 * (v288 & 9 ^ 8 | v288 ^ 0x5C)) & 0xE7) - 13) ^ 0xF3;
  LODWORD(v287) = BYTE4(v288) ^ 0x6F;
  v85[24] = BYTE1(v288) ^ 0xD7;
  v24[7] = BYTE2(v288) ^ 0xEB;
  v24[20] = (((v286 ^ 0x69) + 35) ^ ((v286 ^ 0x33) + 121) ^ ((v286 ^ 0x73) + 57)) - 119;
  LOBYTE(v286) = v287 + ((2 * (BYTE4(v288) ^ 0x67)) & 0xA6) - 45;
  v292 = STACK[0xEC0];
  LOBYTE(v284) = (v286 - ((4 * (BYTE4(v288) ^ 0x67)) & 0x4C) - ((2 * (v286 - ((4 * (BYTE4(v288) ^ 0x67)) & 0x4C))) & 0x76) + 59) ^ *(STACK[0xEC0] + (-v287 ^ (62 - (BYTE4(v288) ^ 0x51)) ^ 0x7630FE44 ^ (v287 - ((2 * v287) & 0x88888888) + 1982922308)) + 62);
  v85[2] = (((v284 ^ 0x61) - 16) ^ ((v284 ^ 0xE1) + 112) ^ ((v284 ^ 0x1F) - 110)) - 16;
  LOBYTE(v284) = *(v290 + (((((((BYTE5(v289) ^ 0x1CuLL) >> (v286 & 4)) - ((2 * ((BYTE5(v289) ^ 0x1CuLL) >> (v286 & 4))) & 0x4A) + 0x48C197C40B702425) ^ 0x48C197C40B702425) >> (v286 & 4 ^ 4)) + ((16 * BYTE5(v289)) ^ 0xC0)) ^ 0xF5));
  v24[31] = HIBYTE(v289) ^ 0x9D;
  LOBYTE(v289) = v284 ^ (8 * (v284 ^ 0x3C) * (v284 ^ 0x3C));
  *STACK[0xB48] = v283;
  v85[48] = BYTE4(v283);
  v293 = v283 ^ (v271 << 47);
  v24[36] = (((v289 ^ 0xF8) - 59) ^ ((v289 ^ 0xD0) - 19) ^ ((v289 ^ 1) + 62)) - 42;
  v85[47] = BYTE1(v283);
  *v21 = BYTE3(v283);
  v85[74] = BYTE6(v288) ^ 0x2C;
  v21[2] = BYTE2(v283);
  v294 = 223 * (((v293 ^ 0xDC2A03B5F2EEDD57) >> 48) ^ 0x3232);
  LOBYTE(v289) = (((v293 ^ 0xDC2A03B5F2EEDD57) >> 32) >> 8) ^ *(v292 + ((((v293 ^ 0xDC2A03B5F2EEDD57) >> 32) >> 8) ^ 0x35));
  v295 = HIBYTE(v293);
  LOBYTE(v293) = ((v289 ^ 0x16) - 43) ^ ((v289 ^ 0xDE) + 29) ^ ((v289 ^ 0xB4) + 119);
  LOBYTE(v289) = (v294 ^ 0xF) + (v294 ^ 0x1C);
  *STACK[0xB80] = v293 + 67;
  LOBYTE(v293) = *(v275 + (v294 ^ 0x2FLL));
  *STACK[0xB50] = v295 ^ 0xEE;
  LOBYTE(v294) = v293 - (((v293 ^ 0x50) + 101) ^ ((v293 ^ 0xF7) - 60) ^ ((v293 ^ 0x28) + 29)) - 66;
  LOBYTE(v286) = v294 & 0x3E ^ 0x20;
  LOBYTE(v295) = 2 * ((2 * v286) ^ v286 ^ (2 * v286) & v294);
  LOBYTE(v295) = 2 * ((2 * (v295 ^ v286 ^ v295 & v294)) ^ v286 ^ (2 * (v295 ^ v286 ^ v295 & v294)) & v294);
  v296 = v295 ^ v286 ^ v295 & v294;
  v297 = v259 ^ 0xEE737DCE1A4C6274 ^ (v259 >> 41) ^ __ROR8__(v259 ^ 0xEE737DCE1A4C6274, 7);
  v298 = v297 ^ ((v259 ^ 0xEE737DCE1A4C6274) << 23);
  LOBYTE(v286) = (2 * v296) ^ v286 ^ (2 * v296) & v294;
  v24[2] = BYTE4(v298) ^ 0xAD;
  LOBYTE(v293) = v293 + (((v294 ^ (2 * v286) ^ 0x3C) + 44) ^ ((v294 ^ (2 * v286) ^ 0x60) + 120) ^ ((v294 ^ (2 * v286) ^ 0x9C) - 116)) - 123;
  LOBYTE(v294) = v293 & 0xB9 ^ 0x8F;
  v299 = v293 ^ 0x22;
  LOBYTE(v289) = v293 ^ (2 * (v299 & (2 * (v299 & (2 * (v299 & (2 * (v299 & (2 * (v299 & (2 * (((2 * v293) & 0x46 ^ 0x1A) & (v293 ^ 2) ^ v294)) ^ v294)) ^ v294)) ^ v294)) ^ v294)) ^ v294)) ^ (v289 - ((2 * v289) & 0xA4) + 82) ^ 0x13;
  v21[9] = ((v289 >> 3) | (32 * v289)) ^ 0x1F;
  v21[4] = BYTE1(v297) ^ 0x46;
  v85[96] = v297 ^ 0x62;
  v24[13] = BYTE2(v298) ^ 9;
  v21[7] = HIBYTE(v298) ^ 0xDB;
  v21[1] = ((v297 ^ ((v259 ^ 0x1A4C6274) << 23)) >> 24) ^ 0x29;
  v24[24] = BYTE6(v298) ^ 0x5E;
  v21[8] = (v298 ^ 0xDB5E48AD29094662) >> (v162 & 0x28) >> (~v162 & 8) >> (~v162 & 0x20);
  *STACK[0xAF0] = LODWORD(STACK[0xEE4]) + 1;
  v300 = *(STACK[0xED8] + 8 * (((4 * (STACK[0xED0] & 1)) & 0xF7 | (8 * (STACK[0xED0] & 1))) ^ LODWORD(STACK[0xEC8])));
  v301 = *(&off_1010A0B50 + LODWORD(STACK[0xEC8]) - 24554);
  STACK[0xEC0] = v301 - 1454282289;
  STACK[0xEA0] = v301 - 1454280695;
  STACK[0xEB8] = v301 - 1454282805;
  STACK[0xEC8] = v301 - 1454280966;
  STACK[0xE90] = v301 - 1454280436;
  STACK[0xE80] = v301 - 1454284415;
  return v300();
}

uint64_t sub_10092CFB0()
{
  v5 = v0 > 0xBD9FEC54;
  if (v5 == v2 + 228220050 < ((v3 + 1293769370) & 0xB2E2BADB) + 1113551120)
  {
    v5 = v2 + 228220050 < v1;
  }

  return (*(v4 + 8 * ((31 * v5) ^ v3)))();
}

uint64_t sub_10092D08C(uint64_t a1)
{
  *(v5 - 160) = v1;
  v6 = *(v5 - 108);
  v7 = *(*(v3 + 8 * (v4 ^ 0x6445)) - 1672549310 + (v6 ^ 0x47));
  v8 = *(v3 + 8 * (v4 ^ 0x6445)) - 1672549310;
  *(v5 - 136) = v2;
  v9 = (((v6 ^ 0xE4) + v7 - 20) ^ (-93 * (v4 ^ 0x5A) + 103)) << 24;
  v10 = *(v5 - 107);
  v11 = v3;
  v12 = *(v3 + 8 * (v4 - 23279)) - 498700214;
  v13 = (((*(v12 + (-(v10 ^ 0xA0) ^ (182 - (v10 ^ 0x16)) ^ 0xE41E0570 ^ ((v10 ^ 0xA0) - ((2 * (v10 ^ 0xA0)) & 0xE0) - 467794576)) + 182) ^ v10 ^ 0xA0) << 16) ^ 0x2DF271D4) & (v9 ^ 0x5CFFF9FD) | v9 & 0xD2000000;
  v14 = *(v11 + 8 * (v4 - 24310)) - 1280843767;
  LOBYTE(v10) = *(v14 + (*(v5 - 106) ^ 0x35));
  v15 = v14;
  *(v5 - 152) = a1;
  *(v5 - 144) = v14;
  LODWORD(v6) = ((((v10 + 104) ^ (4 * (v10 + 104))) << 8) ^ 0xB802575F) & (v13 ^ 0xC24E8EAB) ^ v13 & 0x47FD2000;
  v16 = *(v11 + 8 * (v4 ^ 0x69E0)) - 1314680559;
  v17 = *(v11 + 8 * (v4 ^ 0x687C)) - 1732827867;
  v18 = *(v11 + 8 * (v4 - 23379)) - 1545200442;
  v19 = *(v11 + 8 * (v4 - 22609)) - 359096362;
  v20 = *(v11 + 8 * (v4 - 23182)) - 385538127;
  *(v5 - 188) = *(v18 + 4 * (BYTE1(v6) ^ 0xE4u)) ^ *(v16 + 4 * (BYTE2(v6) ^ 0x20u)) ^ BYTE2(v6) ^ (*(v17 + 4 * (BYTE3(v6) ^ 0x1B)) + (BYTE3(v6) ^ 0x26) - 576004647) ^ ((-13 * *(v19 + (*(v5 - 105) ^ 9)) - 80) ^ *(v20 + ((-13 * *(v19 + (*(v5 - 105) ^ 9)) - 80) ^ 0xDLL)));
  v21 = (((*(v5 - 100) ^ 0x4B) + *(v8 + (*(v5 - 100) ^ 0xE8)) - 20) ^ 0x55555555) << 24;
  v22 = -13 * *(v19 + (*(v5 - 97) ^ 0x23)) - 80;
  v23 = (v22 & 0x20 | 0x403B0000) ^ (((((*(v12 + (*(v5 - 99) ^ 0xFALL)) ^ *(v5 - 99)) << 16) ^ 0x50C28132) & (v21 ^ 0xDFF89B6) | v21 & 0xAF000000) ^ 0xC3A91FED) & (~v22 | 0xFFFFFF00);
  v24 = *(v15 + (*(v5 - 98) ^ 6)) + 104;
  v25 = -13 * *(v19 + (*(v5 - 109) ^ 0x36)) - 80;
  v26 = -13 * *(v19 + (*(v5 - 101) ^ 0xF1)) - 80;
  v27 = *(v18 + 4 * ((v24 ^ (4 * v24)) ^ 0xACu)) ^ *(v16 + 4 * (BYTE2(v23) ^ 0x4Bu)) ^ (*(v17 + 4 * (HIBYTE(v23) ^ 0x23)) + (HIBYTE(v23) ^ 0x1E) - 576004647);
  v28 = *(v11 + 8 * (v4 - 23586)) - 1521022595;
  v29 = *(v11 + 8 * (v4 - 22503)) - 1740887150;
  v30 = v20;
  v31 = *(v11 + 8 * (v4 ^ 0x6769)) - 1432370482;
  v32 = (*(v20 + (v22 ^ 0x1CLL)) ^ v23) ^ BYTE2(v23) ^ v27;
  *(v5 - 168) = v32;
  v33 = v32 ^ 0xB;
  v34 = v32 ^ 0xDB;
  v35 = *(v11 + 8 * (v4 ^ 0x6AE0)) - 1502640111;
  v36 = v8;
  LODWORD(v20) = *(v5 - 111) ^ *(v12 + (*(v5 - 111) ^ 0x9CLL));
  v37 = ((*(v5 - 112) ^ 0x61) + *(v8 + (*(v5 - 112) ^ 0xC2)) - 20) ^ 0x20;
  LODWORD(v8) = *(v17 + 4 * (((*(v5 - 112) ^ 0x61) + *(v8 + (*(v5 - 112) ^ 0xC2)) - 20) ^ 0xF7u));
  v38 = ((2 * (v8 ^ 0x99B835E1)) ^ 0x71EEE40C) & (v8 ^ 0x99B835E1) ^ (2 * (v8 ^ 0x99B835E1)) & 0x38F77206;
  v39 = ((4 * (v38 ^ 0x8111202)) ^ 0xE3DDC818) & (v38 ^ 0x8111202) ^ (4 * (v38 ^ 0x8111202)) & 0x38F77200;
  LODWORD(v6) = ((16 * (v39 ^ 0x18223206)) ^ 0x8F772060) & (v39 ^ 0x18223206) ^ (16 * (v39 ^ 0x18223206)) & 0x38F77200;
  v40 = 2 * (v8 & 0xA14F47E7);
  v41 = (v38 ^ 0x662004) & (4 * (v40 & (v8 ^ 0x992E37E7) ^ v8 & 0xA14F47E7)) ^ v40 & (v8 ^ 0x992E37E7) ^ v8 & 0xA14F47E7;
  v42 = (v39 ^ 0x20D54000) & (16 * v41) ^ v41 ^ 0x38F77206 ^ (v6 ^ 0x8772000) & (((v39 ^ 0x20D54000) & (16 * v41) ^ v41) << 8);
  v43 = (v37 ^ 0xEA) + 1012635122;
  v44 = v8 ^ ((v37 ^ 0xEA) - ((2 * v43) & 0x50940CC2) + 1738908755) ^ (2 * ((v42 << 16) & 0x38F70000 ^ v42 ^ ((v42 << 16) ^ 0x72060000) & (((v6 ^ 0x30805206) << 8) & 0x38F70000 ^ 0x8850000 ^ (((v6 ^ 0x30805206) << 8) ^ 0x77720000) & (v6 ^ 0x30805206)))) ^ 0x9BE7AD8A;
  v45 = ((2 * (v8 ^ 0x84748324)) ^ 0x4A778986) & (v8 ^ 0x84748324) ^ (2 * (v8 ^ 0x84748324)) & 0x253BC4C2;
  v46 = ((4 * (v45 ^ 0x25084441)) ^ 0x94EF130C) & (v45 ^ 0x25084441) ^ (4 * (v45 ^ 0x25084441)) & 0x253BC4C0;
  LODWORD(v6) = ((16 * (v46 ^ 0x2110C4C3)) ^ 0x53BC4C30) & (v46 ^ 0x2110C4C3) ^ (16 * (v46 ^ 0x2110C4C3)) & 0x253BC4C0;
  v47 = (v45 ^ 0x330080) & (4 * (v40 & (v8 ^ 0x846E07E6) ^ v8 & 0xA14F47E7)) ^ v40 & (v8 ^ 0x846E07E6) ^ v8 & 0xA14F47E7;
  v48 = (v46 ^ 0x42B0000) & (16 * v47) ^ v47 ^ 0x253BC4C3 ^ (v6 ^ 0x1384400) & (((v46 ^ 0x42B0000) & (16 * v47) ^ v47) << 8);
  v49 = (2 * ((v8 ^ (2 * ((v48 << 16) & 0x4290000 ^ v48 ^ ((v48 << 16) ^ 0x4010000) & (((v6 ^ 0x240380C3) << 8) & 0x253B0000 ^ 0x43B0000 ^ (((v6 ^ 0x240380C3) << 8) ^ 0x3BC40000) & (v6 ^ 0x240380C3)))) ^ 0x205A8661) & v43)) ^ 0x800000;
  v50 = *(v5 - 144);
  LOBYTE(v46) = *(v50 + (*(v5 - 110) ^ 0xA7)) + 104;
  v51 = v30;
  v52 = *(v28 + 4 * (BYTE2(v27) ^ 0x50u));
  v53 = v28;
  LODWORD(v28) = *(v29 + 4 * (BYTE1(v27) ^ 0x67u));
  v54 = v29;
  LODWORD(v11) = v20 ^ *(v16 + 4 * (v20 ^ 0xF6)) ^ *(v18 + 4 * ((v46 ^ (4 * v46)) ^ 0x95u)) ^ (v25 ^ *(v30 + (v25 ^ 0x14))) ^ (v49 + v44);
  *(v5 - 172) = v11;
  v55 = v35;
  LODWORD(v27) = v28 ^ __ROR4__(v52, 16) ^ *(v31 + 4 * v33) ^ BYTE1(v27) ^ 0x63 ^ ((BYTE1(v27) ^ 0x63) + 730897014) ^ *(v35 + (v27 >> 24)) ^ (*(v35 + (v27 >> 24)) >> 4) ^ (v34 + 58613321);
  v56 = (*(v12 + (*(v5 - 103) ^ 0x6FLL)) ^ *(v5 - 103)) << 16;
  v57 = ((((((*(v5 - 104) ^ 0xF8) + *(v36 + (*(v5 - 104) ^ 0x5BLL))) << 24) - 335544320) ^ 0xA0514002) & (v56 ^ 0xFFE55022) | v56 & 0xAE0000) ^ 0x4E0310F7;
  LODWORD(v29) = BYTE2(v57);
  LODWORD(v6) = *(v16 + 4 * (BYTE2(v57) ^ 0x61u));
  LOBYTE(v46) = *(v50 + (*(v5 - 102) ^ 0xD9)) + 104;
  v58 = *(v17 + 4 * (HIBYTE(v57) ^ 0xE8)) + (HIBYTE(v57) ^ 0xD5) - 576004647;
  LODWORD(v6) = *(v18 + 4 * ((v46 ^ (4 * v46)) ^ 0x12u)) ^ (*(v51 + (v26 ^ 0xFALL)) ^ v26) ^ v6;
  v59 = *(&off_1010A0B50 + (v4 ^ 0x69CF)) - 221756422;
  v60 = *&v59[4 * (*(v5 - 126) ^ 0xE7)];
  v61 = *&v59[4 * (*(v5 - 118) ^ 0x1FLL)];
  v62 = *&v59[4 * (*(v5 - 114) ^ 0xDLL)];
  LODWORD(v17) = *&v59[4 * (*(v5 - 122) ^ 0xFDLL)];
  v63 = v6 ^ v29 ^ v58;
  v386 = v11 ^ 0xC8;
  LODWORD(v6) = v27 ^ v11 ^ 0xC8;
  *(v5 - 180) = v6;
  LODWORD(v6) = v6 ^ 0x7DE6D93B;
  LODWORD(v35) = *(v5 - 188);
  LODWORD(v29) = v6 ^ v35 ^ 0xC1D97941;
  v392 = v6 ^ v35;
  v393 = v63 ^ 0x7C1CC08E ^ v29;
  LODWORD(v20) = *(v5 - 168);
  v64 = v393 ^ v20;
  v381 = 298865547 * v60 + 1039072928;
  v387 = 298865547 * v61 + 1039072928;
  v382 = 298865547 * v62 + 1039072928;
  v384 = 298865547 * v17 + 1039072928;
  v379 = -1904042920 * v60 - 277351168;
  v385 = -1904042920 * v61 - 277351168;
  v380 = -1904042920 * v62 - 277351168;
  v383 = -1904042920 * v17 - 277351168;
  v65 = v53;
  v66 = *(v54 + 4 * (BYTE1(v64) ^ 0xC1u)) ^ *(v31 + 4 * ((v393 ^ v20) ^ 0xCFu)) ^ __ROR4__(*(v53 + 4 * (BYTE2(v64) ^ 0x61u)), 16) ^ v6 ^ (((v393 ^ v20) ^ 0x1F) + 58613321) ^ BYTE1(v64) ^ 0xC5 ^ ((BYTE1(v64) ^ 0xC5) + 730897014) ^ 0x8F12E657;
  v67 = v55;
  v68 = *(v55 + (((v393 ^ v20) >> 24) ^ 0x61));
  v69 = v66 + (v68 ^ ((v68 >> 4) | 0xD0) ^ 0x30) - 2 * (v66 & (v68 ^ ((v68 >> 4) | 0xD0) ^ 0x30));
  *(v5 - 176) = v63 ^ 0xE39579CF;
  v70 = v69 ^ v63 ^ v393 ^ v20;
  v397 = v69 ^ v63;
  LODWORD(v17) = *(v55 + (HIBYTE(v70) ^ 0x21));
  v399 = *(v54 + 4 * (((v70 ^ 0xD926) >> 8) ^ 0xDCu)) ^ __ROR4__(*(v53 + 4 * (((v70 ^ 0xFC04D926) >> 16) ^ 0x39u)), 16) ^ *(v31 + 4 * (v70 ^ 0x5Du)) ^ v17 ^ (v17 >> 4) ^ v69 ^ ((v70 ^ 0x8D) + 58613321) ^ ((v70 ^ 0xD926) >> 8) ^ 0xD8 ^ ((((v70 ^ 0xD926) >> 8) ^ 0xD8) + 730897014);
  v395 = v70 ^ 0xDFB5FDE5;
  v396 = v69;
  LODWORD(v27) = v69 ^ v29;
  *(v5 - 144) = v69 ^ v29;
  LODWORD(v29) = v69 ^ v63 ^ 0xB0804E59;
  LODWORD(v55) = v399 ^ 0xC45C9016 ^ v27;
  v400 = v69 ^ v63 ^ 0x56BFFCB6 ^ v55;
  LODWORD(v27) = v400 ^ v70 ^ 0xDFB5FDE5;
  LODWORD(v17) = (v400 ^ v70 ^ 0xE5);
  LODWORD(v11) = v17 ^ 0x32;
  v71 = v31;
  v72 = *(v54 + 4 * (BYTE1(v27) ^ 0xE8u)) ^ *(v31 + 4 * (v17 ^ 0xE2)) ^ __ROR4__(*(v53 + 4 * (BYTE2(v27) ^ 0xA4u)), 16) ^ v399 ^ 0xC45C9016;
  v394 = v27;
  LODWORD(v17) = *(v67 + (BYTE3(v27) ^ 0xFBLL));
  v73 = v72 ^ v17 ^ (v17 >> 4);
  LODWORD(v17) = (v11 + 58613321) ^ BYTE1(v27) ^ 0xEC ^ ((BYTE1(v27) ^ 0xEC) + 730897014);
  LODWORD(v11) = -1802333311 * *(v5 - 136);
  LODWORD(v31) = v73 ^ v17;
  v74 = ((((*(*(&off_1010A0B50 + v4 - 22250) + (BYTE2(v11) ^ 0x57) - 338782091) >> 3) & 0x11 ^ *(*(&off_1010A0B50 + v4 - 22250) + (BYTE2(v11) ^ 0x57) - 338782091)) << 16) ^ 0x9213887D) & ((*(*(&off_1010A0B50 + (v4 ^ 0x69E1)) + ((-127 * *(v5 - 136)) ^ 0x3ALL) - 1625793274) - 7) ^ 0xB7FF9B7D) ^ ((*(*(&off_1010A0B50 + (v4 ^ 0x69E1)) + ((-127 * *(v5 - 136)) ^ 0x3ALL) - 1625793274) - 7) & 0x82 | 0x25041300);
  v75 = (v74 ^ 0x8406480) & ((*(*(&off_1010A0B50 + (v4 ^ 0x6D8F)) + (BYTE1(v11) ^ 0x2DLL) - 1033541062) << 8) ^ 0xB8CC26F9) ^ v74 & 0x7338806;
  *(v5 - 164) = (v75 ^ 0x40020400) & ((*(*(&off_1010A0B50 + (v4 ^ 0x6EAC)) + (BYTE3(v11) ^ 0xE8) - 1069973899) << 24) ^ 0x3DAECC4D) | v75 & 0x5133B2;
  v389 = v31;
  v76 = v31 ^ 0x7CD14DC8 ^ v29;
  LODWORD(v29) = ((v31 ^ 0x4DC8 ^ v29 ^ v27) >> 8);
  v77 = v20 ^ 0x101C3EEE;
  LODWORD(v17) = (v76 ^ v27);
  v78 = 730897269 - v29;
  LODWORD(v6) = *(v54 + 4 * (v29 ^ 0xFB)) ^ *(v71 + 4 * (v17 ^ 0xDE)) ^ __ROR4__(*(v65 + 4 * (((v76 ^ v27) >> 16) ^ 0xC5u)), 16) ^ v29;
  LODWORD(v29) = *(v67 + (((v76 ^ v27) >> 24) ^ 0x42));
  LODWORD(v6) = v6 ^ v29 ^ (v29 >> 4) ^ ((v17 ^ 0xE) + 58613321) ^ v78 ^ 0xCFD02BF3;
  v403 = v55 ^ 0xC2A8E399 ^ v6;
  v406 = v403 ^ v76;
  LODWORD(v17) = v403 ^ v76 ^ 0x932C108B ^ v76 ^ v27;
  v378 = v55;
  v398 = v55 ^ 0x7704802E ^ v31 ^ 0x7CD14DC8;
  v405 = v6 ^ v31 ^ 0x7CD14DC8;
  LODWORD(v11) = *(v67 + (BYTE3(v17) ^ 0x81));
  v408 = *(v71 + 4 * (v406 ^ 0x8B ^ (v76 ^ v27) ^ 0x1Bu)) ^ *(v54 + 4 * (BYTE1(v17) ^ 0x46u)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v17) ^ 0xEDu)), 16) ^ v405 ^ v11 ^ (v11 >> 4) ^ ((v406 ^ 0x8B ^ (v76 ^ v27) ^ 0xCB) + 58613321) ^ BYTE1(v17) ^ 0x42 ^ ((BYTE1(v17) ^ 0x42) + 730897014);
  v404 = v17 ^ 0x7D063E74;
  v402 = v408 ^ 0xDCF97C30 ^ v403;
  v79 = v402 ^ 0x28340883 ^ v403 ^ v76 ^ 0x932C108B;
  LODWORD(v17) = v79 ^ v17 ^ 0x7D063E74;
  v80 = *(v67 + (BYTE3(v17) ^ 0x4DLL)) ^ 0x70;
  v81 = *(v54 + 4 * (BYTE1(v17) ^ 0xBDu)) ^ *(v71 + 4 * (v17 ^ 0x90u)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v17) ^ 6u)), 16) ^ v408 ^ 0xDCF97C30 ^ ((v17 ^ 0x40) + 58613321) ^ BYTE1(v17) ^ 0xB9 ^ ((BYTE1(v17) ^ 0xB9) + 730897014) ^ ((v80 >> 4) | 0xF0) ^ v80 ^ 0xB82F5B67;
  v412 = v81 ^ v402 ^ 0x28340883;
  v410 = v81;
  v407 = v17 ^ 0x1DC6984A;
  v409 = v412 ^ 0x1639FDB7 ^ v79;
  v413 = v409 ^ v17 ^ 0x1DC6984A;
  LODWORD(v20) = v412 ^ 0xB7 ^ v79 ^ v17 ^ 0x4A;
  LODWORD(v50) = *(v67 + (HIBYTE(v413) ^ 0xFLL));
  v82 = *(v71 + 4 * (v20 ^ 0x1A)) ^ *(v54 + 4 * (BYTE1(v413) ^ 0xAEu)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v413) ^ 0xB8u)), 16) ^ v50 ^ ((v50 >> 4) | 0xB0) ^ v81 ^ ((v20 ^ 0xCA) + 58613321) ^ BYTE1(v413) ^ 0xAA ^ ((BYTE1(v413) ^ 0xAA) + 730897014);
  v417 = v82 ^ 0x9F7E7C1F ^ v412 ^ 0x1639FDB7 ^ 0x839F344C;
  v411 = v82 ^ 0x9F7E7C1F ^ v412 ^ 0x1639FDB7;
  v83 = v417 ^ v17;
  LODWORD(v20) = *(v67 + (((v417 ^ v17) >> 24) ^ 0x2FLL));
  v420 = *(v71 + 4 * (v82 ^ 0x1F ^ v412 ^ 0xB7 ^ 0x4C ^ v17 ^ 0x67u)) ^ *(v54 + 4 * (((v82 ^ 0x7C1F ^ v412 ^ 0xFDB7 ^ 0x344C ^ v17) >> 8) ^ 0x2Eu)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v83) ^ 0xC9u)), 16) ^ v82 ^ 0x9F7E7C1F ^ v20 ^ (v20 >> 4) ^ ((v83 ^ 0xB7) + 58613321) ^ BYTE1(v83) ^ 0x2A ^ ((BYTE1(v83) ^ 0x2A) + 730897014);
  v414 = v417 ^ v17;
  v415 = v82 ^ 0x4F1D0E3F;
  v401 = v79 ^ 0x81EAAAF1;
  v84 = v420 ^ 0xE54B3F70;
  v85 = v420 ^ 0xE54B3F70 ^ v409 ^ 0xFA43AC36 ^ v83;
  v86 = v420 ^ 0xE54B3F70 ^ v409 ^ 0xFA43AC36;
  v87 = (v79 ^ 0x81EAAAF1) + (v82 ^ 0x4F1D0E3F) - (v85 ^ 0x47711CFE);
  v377 = *(v5 - 180) ^ 0xD778E49A;
  v388 = v76 ^ v27 ^ 0x50D914FC;
  v88 = v35;
  v418 = v86;
  v89 = v87 + v377 + (v31 ^ 0x5480EE6C) - v388;
  v90 = v89 + v77 - (v35 ^ 0x6F121DFB) - (*(v5 - 172) ^ 0xCE078133) + (v64 ^ 0x29C049DA) + (*(v5 - 144) ^ 0x33B925E2) + (v55 ^ 0x5B75BDB0) + (v402 ^ 0x9ECD49DF) + (v86 ^ 0x5A9BA90A);
  *(v5 - 168) = v90 + 994520124;
  if (((v90 + 994520124) & 0x10) != 0)
  {
    v91 = -1111029603;
  }

  else
  {
    v91 = -1111029571;
  }

  *(v5 - 172) = v90 + 2105549711 + v91;
  v92 = (v89 + 11953) & 0x200;
  v391 = v92;
  if ((v92 & ~v76) != 0)
  {
    v93 = -v92;
  }

  else
  {
    v93 = (v89 + 11953) & 0x200;
  }

  v390 = v93 + (v76 ^ 0xDD2EAE5B);
  v94 = v87 - 795074140;
  v95 = ((v85 ^ 0x45B6) >> 8);
  v419 = v85;
  v96 = v94 + *(v5 - 176) - 2 * (v94 & *(v5 - 176));
  v97 = *(v67 + (HIBYTE(v85) ^ 0xC6));
  v98 = *(v54 + 4 * (v95 ^ 0xC4u)) ^ *(v71 + 4 * (v85 ^ 0xFCu)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v85) ^ 0xAEu)), 16) ^ v97 ^ (v97 >> 4) ^ v84 ^ ((v85 ^ 0x2C) + 58613321) ^ v95 ^ 0xC0 ^ ((v95 ^ 0xC0) + 730897014) ^ 0xBD94F872;
  *(v5 - 176) = v98;
  LODWORD(v99) = __ROR4__(v82 ^ 0x9F7E7C1F ^ v412 ^ 0x1639FDB7 ^ 0xEBC599F6 ^ v84, 10) ^ 0xF51D5616;
  HIDWORD(v99) = v99;
  v416 = v99 >> 22;
  v100 = v416 ^ 0xD92E3731 ^ v98;
  *(v5 - 184) = v100;
  v421 = v100 ^ v86;
  *(v5 - 180) = (-(v100 ^ v86 ^ 0xDF355325) ^ ((v85 ^ 0x6B1045B6) - (v100 ^ v86 ^ 0xDF355325 ^ v85 ^ 0x6B1045B6)) ^ 0xF3D15864 ^ ((v100 ^ v86 ^ 0xDF355325) - ((2 * (v100 ^ v86 ^ 0xDF355325)) & 0xE7A2B0C8) - 204384156)) + (v85 ^ 0x6B1045B6);
  v101 = *(&off_1010A0B50 + v4 - 23669) - 1573573998;
  v102 = *(&off_1010A0B50 + (v4 ^ 0x6CAE)) - 1316280223;
  v103 = *(v5 - 123);
  v104 = *(&off_1010A0B50 + (v4 ^ 0x64CC)) - 1999780587;
  v105 = *(v5 - 119);
  v106 = v105 ^ 0x36;
  v107 = (v105 ^ 0x34) - (v105 ^ 0x221B6EB2);
  v108 = *(v5 - 120);
  LODWORD(v105) = (v108 ^ 0x31) - 2105060078;
  v109 = *&v104[4 * (v108 ^ 0xF9)];
  v110 = *(v5 - 115);
  v111 = *&v102[4 * (v103 ^ 0xD8)];
  LODWORD(v106) = *&v102[4 * v106];
  v112 = *&v102[4 * (v110 ^ 0xA9)];
  LODWORD(v102) = v386 ^ v101[*(v5 - 125) ^ 0x92] ^ (*(v5 - 127) - (*(v5 - 127) ^ 0x221B6E86)) ^ *&v102[4 * (*(v5 - 127) ^ 2)] ^ v379 ^ v381 ^ *&v104[4 * (*(v5 - 128) ^ 0xF6)] ^ ((*(v5 - 128) ^ 0x3E) - 2105060078) ^ 0x385827DE;
  LODWORD(v108) = *&v104[4 * (*(v5 - 116) ^ 0x23)] ^ ((*(v5 - 116) ^ 0xEB) - 2105060078) ^ v382 ^ v380 ^ v101[*(v5 - 113) ^ 0xAALL] ^ v112 ^ ((v110 ^ 0xAB) - (v110 ^ 0x221B6E2D)) ^ v77;
  LODWORD(v104) = v88 ^ v111 ^ ((v103 ^ 0xDA) - (v103 ^ 0x221B6E5C)) ^ *&v104[4 * (*(v5 - 124) ^ 0xA5)] ^ ((*(v5 - 124) ^ 0x6D) - 2105060078) ^ v101[*(v5 - 121) ^ 0x88] ^ v383 ^ v384 ^ 0x95861B2D;
  v113 = v387 ^ v385 ^ v101[*(v5 - 117) ^ 0xDLL] ^ v109 ^ v105 ^ v106 ^ v107 ^ v94 ^ 0x1D0F5647 ^ v96;
  v114 = *(&off_1010A0B50 + (v4 ^ 0x6F43)) - 110526122;
  v115 = *(&off_1010A0B50 + v4 - 22701) - 1064178534;
  v116 = *(&off_1010A0B50 + (v4 ^ 0x6A59)) - 393597410;
  v117 = v4;
  v118 = *(&off_1010A0B50 + (v4 ^ 0x6C92)) - 314272115;
  v119 = BYTE2(v108) ^ 0x5E;
  v120 = *&v116[4 * (v108 ^ 0x3E)] ^ 0x44525608;
  v121 = *&v116[4 * v102] ^ 0xC02DAD47;
  LODWORD(v106) = *&v116[4 * v104] ^ 0xAD95659F;
  v122 = *&v116[4 * v113] ^ 0xC53CF3C0;
  v123 = *&v114[4 * (v104 >> 24)] ^ v392 ^ *&v118[4 * ((v108 ^ 0x2B3E) >> 8)] ^ v121 ^ (4 * v121) & 0xE3E7277C ^ *&v115[4 * BYTE2(v113)];
  v124 = *&v114[4 * HIBYTE(v113)] ^ v393 ^ *&v115[4 * (((v108 ^ 0x2E5E2B3E) >> 16) ^ 5)] ^ *&v118[4 * BYTE1(v102)] ^ v106 ^ (4 * v106) & 0xE3E7277C;
  v125 = *&v114[4 * (v102 >> 24)] ^ v377 ^ *&v115[4 * BYTE2(v104)] ^ v120 ^ (4 * v120) & 0xE3E7277C ^ *&v118[4 * BYTE1(v113)];
  LODWORD(v102) = v64 ^ *&v114[4 * (BYTE3(v108) ^ 0xCB)] ^ *&v115[4 * BYTE2(v102)] ^ *&v118[4 * BYTE1(v104)] ^ v122 ^ 0xCE1EC8F3 ^ (4 * v122) & 0xE3E7277C;
  LODWORD(v106) = *&v116[4 * v102] ^ 0x9928846B;
  v126 = *&v116[4 * (v125 ^ 0x38)] ^ 0x908B33FF;
  v127 = *&v116[4 * (v123 ^ 0x5D)] ^ 0x52B292CA;
  v128 = *&v116[4 * (v124 ^ 0x91)] ^ 0x3EC2F451;
  v129 = *&v114[4 * (HIBYTE(v125) ^ 0x76)] ^ v396 ^ *&v115[4 * (BYTE2(v123) ^ 0xD)] ^ v106 ^ __ROR4__(__ROR4__(*&v118[4 * ((v124 ^ 0xFCAD) >> 8)], 29) ^ 0xE56128AE, 3) ^ (4 * v106) & 0xE3E7277C;
  v130 = *&v114[4 * (v102 >> 24)] ^ v395 ^ *&v115[4 * (BYTE2(v125) ^ 0x63)] ^ *&v118[4 * (BYTE1(v123) ^ 0x2E)] ^ v128 ^ (4 * v128) & 0xE3E7277C;
  LODWORD(v99) = __ROR4__(__ROR4__(*&v114[4 * (HIBYTE(v123) ^ 7)] ^ *&v115[4 * ((v124 ^ 0xA9FFFCAD) >> 16)] ^ 0x7E269678 ^ *&v118[4 * BYTE1(v102)], 15) ^ 0xD664C53F, 17);
  LODWORD(v108) = *(v5 - 144) ^ v126 ^ (4 * v126) & 0xE3E7277C ^ v99 ^ 0x5479D2A7;
  LODWORD(v102) = v397 ^ *&v114[4 * ((v124 ^ 0xA9FFFCAD) >> 24)] ^ *&v118[4 * (BYTE1(v125) ^ 0xAE)] ^ *&v115[4 * BYTE2(v102)] ^ v127 ^ (4 * v127) & 0xE3E7277C ^ 0x97326CC6;
  v131 = *&v116[4 * (v130 ^ 0x51)] ^ 0xAFEFD3DB;
  LODWORD(v106) = *&v116[4 * (v129 ^ 0xCD)] ^ 0x3792D8EE;
  v132 = *&v116[4 * ((*(v5 - 144) ^ v126 ^ (4 * v126) & 0x7C ^ v99) ^ 0xA7)] ^ 0xB02E25FE;
  v133 = *&v116[4 * v102] ^ 0xE1F97B73;
  v134 = *&v115[4 * (BYTE2(v129) ^ 8)] ^ v394 ^ *&v118[4 * BYTE1(v108)] ^ v133 ^ (4 * v133) & 0xE3E7277C ^ *&v114[4 * ((((((v130 ^ 0xACEC8C6D) >> (v119 & 0x18)) - ((2 * ((v130 ^ 0xACEC8C6D) >> (v119 & 0x18))) & 0x4DF36E98) + 653899596) ^ 0x26F9B74C) >> (v119 & 0x18 ^ 0x18)) ^ 0xE5)];
  v135 = *&v115[4 * BYTE2(v102)] ^ v378 ^ *&v118[4 * (BYTE1(v130) ^ 0xF0)] ^ *&v114[4 * BYTE3(v108)] ^ v106 ^ (4 * v106) & 0xE3E7277C;
  v136 = v399 ^ *&v115[4 * BYTE2(v108)] ^ *&v114[4 * (HIBYTE(v129) ^ 0x7E)] ^ *&v118[4 * BYTE1(v102)] ^ v131 ^ (4 * v131) & 0xE3E7277C ^ 0x41B4F7B1;
  v137 = *&v114[4 * (v102 >> 24)] ^ v400 ^ *&v115[4 * (BYTE2(v130) ^ 0xE9)] ^ *&v118[4 * (BYTE1(v129) ^ 0xDD)] ^ v132 ^ (4 * v132) & 0xE3E7277C;
  v139 = BYTE1(v137) ^ 0xB;
  v140 = *&v116[4 * v136] ^ 0x6B767097;
  v141 = *&v115[4 * ((v137 ^ 0xB2BC0B56) >> 16)] ^ *&v114[4 * ((v135 ^ 0x2100EA1Eu) >> 24)] ^ v140 ^ (4 * v140) & 0xE3E7277C ^ *&v118[4 * (BYTE1(v134) ^ 0x4B)];
  v142 = *&v115[4 * (BYTE2(v134) ^ 0x18)];
  v143 = ~v142 & 2;
  v144 = *&v114[4 * ((v137 ^ 0xB2BC0B56) >> 24)];
  if ((v143 & v144) != 0)
  {
    v143 = -v143;
  }

  v145 = *&v116[4 * (v135 ^ 0x1E)] ^ 0xD555A1F;
  v146 = *&v116[4 * (v137 ^ 0x6A)] ^ 0x31135C80;
  v147 = *&v114[4 * (HIBYTE(v134) ^ 0xF3)] ^ v388 ^ *&v115[4 * BYTE2(v136)] ^ *&v118[4 * ((v135 ^ 0xEA1E) >> 8)] ^ v146 ^ (4 * v146) & 0xE3E7277C;
  v138 = *&v116[4 * (v134 ^ 0x21)] ^ 0x901C7F46;
  v148 = *&v114[4 * HIBYTE(v136)] ^ v389 ^ *&v115[4 * BYTE2(v135)] ^ *&v118[4 * v139] ^ v138 ^ (4 * v138) & 0xE3E7277C;
  v149 = (-(v141 ^ 0x51FA6B6D) ^ (v398 - (v141 ^ 0x51FA6B6D ^ v398)) ^ 0x71C5C009 ^ ((v141 ^ 0x51FA6B6D) - 2 * ((v141 ^ 0x51FA6B6D) & 0x71C5C019 ^ v141 & 0x10) + 1908785161)) + v398;
  v150 = ((((v148 ^ 0x3531FF09) - (v148 ^ 0xC70ACBEB)) ^ 0xFFFFFFFC) + (v148 ^ 0x3531FF09)) ^ 0xE5057C3C;
  v151 = v391 ^ v390 ^ *&v118[4 * BYTE1(v136)] ^ v145 ^ v142 & 0xFFFFFFFD ^ (4 * v145) & 0xE3E7277C ^ 0x2AA68B70 ^ (v143 + (v144 ^ 0xA5E275C0));
  v152 = *&v116[4 * (v147 ^ 0x5E)] ^ 0x40609D06;
  v153 = *&v116[4 * v150] ^ 0xD41325D6;
  v154 = *&v116[4 * (v149 ^ 0xB7)] ^ 0xCFC68DC5;
  v155 = *&v114[4 * (HIBYTE(v149) ^ 0x71)] ^ v403 ^ *&v115[4 * ((BYTE2(v151) - (BYTE2(v151) ^ 5)) ^ 0xFFFFFFFE) + 4 * BYTE2(v151)] ^ *&v118[4 * (((v147 ^ 0x105E) >> 8) ^ 0x7C)] ^ v153 ^ (4 * v153) & 0xE3E7277C;
  v156 = *&v116[4 * v151] ^ 0xCE3E16DB;
  v157 = *&v115[4 * ((v147 ^ 0x6CEA105E) >> 16)] ^ v406 ^ *&v114[4 * HIBYTE(v151)] ^ *&v118[4 * BYTE1(v150)] ^ v154 ^ (4 * v154) & 0xE3E7277C;
  v158 = *&v114[4 * (HIBYTE(v147) ^ 0x89)];
  v159 = v405 ^ *&v118[4 * BYTE1(v151)] ^ *&v114[4 * HIBYTE(v150)] ^ *&v115[4 * ((v149 ^ 0x942511B7) >> 16)] ^ v152 ^ (4 * v152) & 0xE3E7277C ^ 0xF7436CCA;
  v160 = v158 ^ v404 ^ *&v115[4 * BYTE2(v150)] ^ *&v118[4 * ((((-(v141 ^ 0x6B6D) ^ (v398 - (v141 ^ 0x6B6D ^ v398)) ^ 0xC009 ^ ((v141 ^ 0x6B6D) - 2 * ((v141 ^ 0x6B6D) & 0xC019 ^ v141 & 0x10) - 16375)) + v398) ^ 0x11B7) >> 8)] ^ v156 ^ (4 * v156) & 0xE3E7277C;
  v161 = *&v116[4 * (v160 ^ 0x24)] ^ 0x8E15C51E;
  v162 = v157 ^ 0x3E29;
  v163 = BYTE2(v157) ^ 0xDE;
  v164 = (v157 ^ 0x9EDB3E29) >> 24;
  LOBYTE(v156) = 90 * ((3054198967u * (v157 ^ 0x9EDB3E29)) >> 62);
  v165 = *&v116[4 * v159] ^ 0x5B96B07C;
  v166 = v155 ^ 0xBA2CA576;
  v167 = *&v116[4 * (v155 ^ 0x4A)];
  v168 = *&v114[4 * (((v156 & 0xFE) + (v164 - 90 * ((183 * v164) >> 14))) ^ 0xE5)] ^ v401 ^ *&v115[4 * ((v160 ^ 0x9D959024) >> 16)] ^ *&v118[4 * BYTE1(v159)] ^ v167 ^ (4 * v167) & 0xE3E7277C;
  v169 = *&v116[4 * v162] ^ 0xD5352F9E;
  v170 = *&v114[4 * HIBYTE(v166)] ^ v402 ^ *&v115[4 * v163] ^ *&v118[4 * ((v160 ^ 0x9024) >> 8)] ^ v165 ^ (4 * v165) & 0xE3E7277C;
  v171 = *&v115[4 * BYTE2(v166)] ^ v408 ^ *&v114[4 * HIBYTE(v159)] ^ *&v118[4 * HIBYTE(v162)] ^ v161 ^ (4 * v161) & 0xE3E7277C;
  v172 = *&v115[4 * BYTE2(v159)] ^ v407 ^ *&v114[4 * (HIBYTE(v160) ^ 0x78)] ^ *&v118[4 * BYTE1(v166)] ^ v169 ^ (4 * v169) & 0xE3E7277C;
  v173 = v170 ^ 0xA43EF803;
  BYTE2(v159) = BYTE2(v172) ^ 0x91;
  v174 = BYTE2(v170) ^ 0x3B;
  v175 = *&v116[4 * (v172 ^ 0xC0)] ^ 0x40A588CE;
  v176 = BYTE1(v172) ^ 0xD1;
  v177 = v171 ^ 0x621362B;
  v178 = *&v116[4 * (v171 ^ 0x2B)] ^ 0xBC2C9F25;
  v179 = BYTE1(v171) ^ 0x4A;
  v180 = *&v116[4 * (v170 ^ 3)] ^ 0x67CF0180;
  v181 = __ROR4__(*&v115[4 * BYTE2(v177)] ^ 0x404721F3 ^ *&v114[4 * ((v172 ^ 0xAF91ADC0) >> 24)], 19);
  v182 = *&v116[4 * (v168 ^ 0xB8)] ^ 0x4DE6C6E0;
  v183 = v182 ^ *&v118[4 * ((v170 ^ 0xF803) >> 8)] ^ __ROR4__(v181 ^ 0x1F3FF6D4, 13);
  v184 = (-(v183 ^ 0xF6A6D290) ^ (((4 * v182) & 0xE3E7277C ^ 0xBDDBDDA8) - (v183 ^ 0xF6A6D290 ^ (4 * v182) & 0xE3E7277C ^ 0xBDDBDDA8)) ^ 0xEEFC3C12 ^ ((v183 ^ 0xF6A6D290) - 2 * ((v183 ^ 0xF6A6D290) & 0x6EFC3C1A ^ v183 & 8) - 285459438)) + ((4 * v182) & 0xE3E7277C ^ 0xBDDBDDA8);
  v185 = *&v114[4 * HIBYTE(v173)] ^ v412 ^ *&v118[4 * v176] ^ v178 ^ (4 * v178) & 0xE3E7277C ^ *&v115[4 * (BYTE2(v168) ^ 0x19)];
  v186 = *&v114[4 * (HIBYTE(v168) ^ 0xF7)] ^ v409 ^ *&v115[4 * BYTE2(v159)] ^ *&v118[4 * v179] ^ v180 ^ (4 * v180) & 0xE3E7277C;
  v187 = *&v114[4 * HIBYTE(v177)] ^ v410 ^ *&v115[4 * v174] ^ v175 ^ (4 * v175) & 0xE3E7277C ^ *&v118[4 * (BYTE1(v168) ^ 0x56)];
  v188 = v184 ^ v413;
  v189 = (v186 >> 8) ^ 0x9988C9;
  v190 = BYTE1(v186) ^ 0xC9;
  v191 = v190 >= 0x81;
  if (v190 >= 0x81)
  {
    v190 -= 129;
  }

  LOBYTE(v192) = v189 + 127;
  if (!v191)
  {
    v192 = (v186 >> 8) ^ 0x9988C9;
  }

  if (v190)
  {
    v193 = 0;
  }

  else
  {
    v193 = v192;
  }

  v194 = v189 - v193;
  v195 = v188 ^ 0xB6E73D32;
  v196 = *&v116[4 * (v188 ^ 0x32)] ^ 0xFECB297C;
  v197 = BYTE1(v188) ^ 0x41;
  v198 = v187 ^ 0xF5159F2;
  v199 = *&v116[4 * (v187 ^ 0xF2)] ^ 0xFA1B2964;
  v201 = *&v115[4 * (BYTE2(v187) ^ 0x54)] ^ 0x9F502278 ^ *&v114[4 * HIBYTE(v195)];
  v202 = *&v118[4 * ((v185 ^ 0x310F) >> 8)] ^ 0xF161CBAE;
  v203 = v201 & 0x10000000;
  if ((v201 & 0x10000000 & v202) != 0)
  {
    v203 = -v203;
  }

  v204 = *&v116[4 * (v186 ^ 0xF6)] ^ 0x57DC25F2;
  v200 = *&v116[4 * (v185 ^ 0xF)] ^ 0x1FBA7398;
  v205 = v417 ^ v409 ^ 0xFA43AC36 ^ *&v114[4 * (HIBYTE(v186) ^ 0x7C)] ^ *&v118[4 * BYTE1(v198)] ^ v200 ^ (4 * v200) & 0xE3E7277C ^ *&v115[4 * BYTE2(v195)];
  v206 = v201 & 0xEFFFFFFF ^ v414 ^ v204 ^ (4 * v204) & 0xE3E7277C ^ (v203 + v202);
  v207 = *&v114[4 * HIBYTE(v198)] ^ v415 ^ *&v115[4 * (BYTE2(v185) ^ 0x3C)] ^ *&v118[4 * (v194 ^ 0x7C)] ^ v196 ^ (4 * v196) & 0xE3E7277C;
  v208 = *&v114[4 * ((v185 ^ 0x6339310F) >> 24)] ^ v411 ^ *&v115[4 * (BYTE2(v186) ^ 0x8D)] ^ v199 ^ (4 * v199) & 0xE3E7277C ^ *&v118[4 * v197];
  v209 = *&v116[4 * (v206 ^ 0xF7)] ^ 0x22824A08;
  v210 = *&v116[4 * (v207 ^ 0x1E)] ^ 0x7BD6BB47;
  v211 = *&v116[4 * (v208 ^ 0x79)] ^ 0x38F3AB0;
  v212 = *&v116[4 * (v205 ^ 0x4F)] ^ 0x1B70FDCA;
  v213 = v420 ^ *&v115[4 * (BYTE2(v208) ^ 0x31)] ^ *&v118[4 * ((v205 ^ 0xF84F) >> 8)] ^ *&v114[4 * ((v207 ^ 0x557D21E) >> 24)] ^ v209 ^ 0x95335C36 ^ (4 * v209) & 0xE3E7277C;
  v214 = v416 ^ *&v115[4 * ((v205 ^ 0x98B1F84F) >> 16)] ^ *&v114[4 * (HIBYTE(v208) ^ 0x3C)] ^ v210 ^ *&v118[4 * (BYTE1(v206) ^ 0x18)] ^ (4 * v210) & 0xE3E7277C ^ 0x37A2F2AC;
  v215 = v418 ^ *&v114[4 * (HIBYTE(v205) ^ 0x7D)] ^ *&v118[4 * (BYTE1(v207) ^ 0xAE)] ^ v211 ^ *&v115[4 * ((v206 ^ 0x3FE464CB) >> 16)] ^ (4 * v211) & 0xE3E7277C ^ 0x746B3668;
  v216 = v117;
  v217 = v419 ^ *&v115[4 * ((v207 ^ 0x557D21E) >> 16)] ^ *&v118[4 * ((v208 ^ 0x9279) >> 8)] ^ *&v114[4 * ((v206 ^ 0x3FE464CB) >> 24)] ^ v212 ^ (4 * v212) & 0xE3E7277C ^ 0x8D041E57;
  v218 = *(&off_1010A0B50 + (v117 ^ 0x6BF5)) - 1781515694;
  v219 = *(&off_1010A0B50 + v117 - 24576) - 284963151;
  v220 = *(&off_1010A0B50 + v117 - 20728) - 1419119111;
  v221 = *(&off_1010A0B50 + (v117 ^ 0x7106)) - 1479729799;
  v222 = *(v5 - 164);
  v223 = v222 ^ 0x2D0B8E64;
  v224 = v421 ^ v222 ^ 0x2D0B8E64 ^ HIBYTE(v215) ^ (BYTE1(v213) + 1148112181) ^ *&v218[4 * BYTE2(v217)] ^ *&v219[4 * (HIBYTE(v215) ^ 0x58)] ^ *&v221[4 * v214] ^ *&v220[4 * (BYTE1(v213) ^ 0xA6)];
  v225 = v222 ^ *(v5 - 168) ^ *(v5 - 172) ^ *(v5 - 184) ^ (HIBYTE(v214) - ((v214 >> 23) & 0xC) - 147792890) ^ *&v218[4 * BYTE2(v215)] ^ (BYTE1(v217) + 1148112181) ^ *&v219[4 * (HIBYTE(v214) ^ 0x58)] ^ *&v220[4 * (BYTE1(v217) ^ 0xA6)] ^ *&v221[4 * v213] ^ 0x24C814AC;
  v226 = v222 ^ *(v5 - 180) ^ HIBYTE(v217) ^ (BYTE1(v214) + 1148112181) ^ *&v219[4 * (HIBYTE(v217) ^ 0x58)] ^ *&v218[4 * BYTE2(v213)] ^ *&v220[4 * (BYTE1(v214) ^ 0xA6)] ^ *&v221[4 * (v418 ^ v114[4 * (HIBYTE(v205) ^ 0x7D)] ^ v118[4 * (BYTE1(v207) ^ 0xAE)] ^ v211 ^ v115[4 * ((v206 ^ 0x3FE464CB) >> 16)] ^ (4 * v211) & 0x7C ^ 0x68)] ^ 0x320FAB0;
  v227 = *(v5 - 176) ^ v222 ^ 0x2D0B8E64 ^ HIBYTE(v213) ^ *&v218[4 * BYTE2(v214)] ^ *&v220[4 * (BYTE1(v215) ^ 0xA6)] ^ *&v219[4 * (HIBYTE(v213) ^ 0x58)] ^ (BYTE1(v215) + 1148112181) ^ *&v221[4 * v217] ^ v225 ^ v224;
  v228 = v224 ^ 0x174FC2A5 ^ v225;
  v229 = v224 ^ 0x174FC2A5 ^ v226;
  v230 = v226 ^ v228;
  v231 = v227 ^ 0x7A293D11 ^ v229;
  v232 = v227 ^ 0x7A293D11 ^ v228;
  if (v231)
  {
    v233 = (v231 ^ 2) - 1;
  }

  else
  {
    v233 = (v231 ^ 2) + 1;
  }

  v234 = *&v116[4 * (v227 ^ 0x11 ^ v228 ^ 0xF7)] ^ 0xC3A055B0;
  v235 = *&v114[4 * ((v227 ^ 0xE0B009C1) >> 24)] ^ *&v115[4 * (BYTE2(v230) ^ 0x42)] ^ *&v118[4 * (BYTE1(v231) ^ 0xC0)] ^ v234 ^ (4 * v234) & 0xE3E7277C;
  v236 = *&v116[4 * (v227 ^ 0xC1)] ^ 0xCB9B136F;
  v237 = *&v115[4 * (BYTE2(v231) ^ 0xF0)] ^ *&v114[4 * (HIBYTE(v230) ^ 0x9C)] ^ *&v118[4 * (BYTE1(v232) ^ 0x6E)] ^ v236 ^ (4 * v236) & 0xE3E7277C;
  v238 = *&v115[4 * (BYTE2(v232) ^ 0xE2)] ^ *&v114[4 * (HIBYTE(v231) ^ 0x14)];
  v239 = *&v116[4 * (v230 ^ 0xFD)] ^ 0x7E6E02C1;
  v240 = BYTE2(v227) ^ 0xB5;
  v241 = v238 ^ *&v118[4 * (BYTE1(v227) ^ 0x75)] ^ v239 ^ (4 * v239) & 0xE3E7277C;
  v242 = *&v116[4 * (v233 ^ 0x3D)] ^ 0x3D3AE19A;
  v243 = (4 * v242) & 0xE3E7277C ^ v242 ^ __ROR4__(__ROR4__(*&v115[4 * v240] ^ *&v118[4 * (BYTE1(v230) ^ 0xFE)] ^ 0x177540B6 ^ *&v114[4 * (HIBYTE(v232) ^ 0x22)], 16) ^ 0xC0978A78, 16);
  v244 = v243 ^ 0xB24245BB;
  v245 = *&v116[4 * (v243 ^ 0xBB)] ^ 0x2107F040;
  v246 = *&v116[4 * (v235 ^ 0xAB)] ^ 0x8831DED5;
  v247 = *&v115[4 * (BYTE2(v241) ^ 0x10)] ^ *&v114[4 * (HIBYTE(v237) ^ 0xD0)] ^ v246 ^ (4 * v246) & 0xE3E7277C ^ *&v118[4 * (BYTE1(v243) ^ 0x39)];
  v248 = *&v116[4 * (v237 ^ 0xB3)] ^ 0x47F1B932;
  v249 = *&v114[4 * (HIBYTE(v241) ^ 0x57)] ^ *&v115[4 * ((v243 ^ 0xB24245BB) >> 16)] ^ *&v118[4 * (-(BYTE1(v235) ^ 0x1A) ^ (124 - (BYTE1(v235) ^ 0x66)) ^ 0xEAE93F02 ^ ((BYTE1(v235) ^ 0x1A) - ((2 * (BYTE1(v235) ^ 0x1A)) & 4) - 353812734)) + 496] ^ v248 ^ (4 * v248) & 0xE3E7277C;
  v250 = *&v116[4 * (v241 ^ 0x1E)] ^ 0xFD3F1F8F;
  v251 = *&v115[4 * (BYTE2(v235) ^ 7)] ^ *&v118[4 * (BYTE1(v237) ^ 0x6B)] ^ v250 ^ (4 * v250) & 0xE3E7277C ^ *&v114[4 * HIBYTE(v244)];
  v252 = *&v114[4 * (HIBYTE(v235) ^ 0xFE)] ^ *&v115[4 * (BYTE2(v237) ^ 0xB6)] ^ *&v118[4 * (BYTE1(v241) ^ 0xAC)] ^ v245 ^ 0xDF196EF8 ^ (4 * v245) & 0xE3E7277C;
  v253 = *&v116[4 * (v251 ^ 0x96)] ^ 0x8CCC034;
  LOWORD(v244) = v249 ^ 0xA417;
  v254 = *&v116[4 * v252] ^ 0x22A6D31E;
  v255 = v247 ^ 0x500A940B;
  v256 = *&v114[4 * ((v247 ^ 0x500A940B) >> 24)] ^ *&v118[4 * (BYTE1(v251) ^ 0x11)] ^ *&v115[4 * (BYTE2(v249) ^ 0xC2)] ^ v254 ^ (4 * v254) & 0xE3E7277C;
  v257 = *&v116[4 * (v247 ^ 0x37)] ^ 0x3D19D9B2;
  v258 = *&v115[4 * ((v251 ^ 0x5B5C6D96) >> 16)] ^ *&v114[4 * ((v249 ^ 0x13C7A417) >> 24)] ^ *&v118[4 * BYTE1(v252)] ^ v257 ^ (4 * v257) & 0xE3E7277C;
  v259 = *&v116[4 * v244] ^ 0xBC6D74;
  v260 = *&v114[4 * HIBYTE(v252)] ^ *&v115[4 * BYTE2(v255)] ^ *&v118[4 * BYTE1(v244)] ^ v253 ^ (4 * v253) & 0xE3E7277C ^ 0x55970E5E;
  v261 = *&v114[4 * (HIBYTE(v251) ^ 0xBE)] ^ *&v118[4 * BYTE1(v255)] ^ *&v115[4 * BYTE2(v252)] ^ v259 ^ 0xC91C5456 ^ (4 * v259) & 0xE3E7277C;
  v262 = *&v116[4 * ((v114[4 * (HIBYTE(v251) ^ 0xBE)] ^ v118[4 * BYTE1(v255)] ^ v115[4 * BYTE2(v252)] ^ v259) ^ 0x56 ^ (4 * v259) & 0x7C)] ^ 0xBA824A89;
  v263 = v256 ^ 0x641FC00B;
  v264 = *&v115[4 * ((v258 ^ 0x8869D9DF) >> 16)] ^ *&v118[4 * BYTE1(v261)] ^ *&v114[4 * (HIBYTE(v256) ^ 0x81)];
  v265 = *&v116[4 * v260] ^ 0x1F9C4CA3;
  v266 = v264 ^ v265 ^ (4 * v265) & 0xE3E7277C;
  v267 = *&v116[4 * v263] ^ 0x8F75A4AA;
  v268 = *&v115[4 * BYTE2(v261)] ^ *&v114[4 * ((v258 ^ 0x8869D9DF) >> 24)] ^ *&v118[4 * BYTE1(v260)] ^ v267 ^ (4 * v267) & 0xE3E7277C;
  v269 = *&v116[4 * (v258 ^ 0xDF)] ^ 0xC18E35E5;
  v270 = *&v115[4 * BYTE2(v263)] ^ *&v114[4 * HIBYTE(v260)] ^ *&v118[4 * (BYTE1(v258) ^ 0xA5)] ^ v262 ^ (4 * v262) & 0xE3E7277C ^ 0xC57DA580;
  v271 = *&v115[4 * BYTE2(v260)] ^ *&v114[4 * HIBYTE(v261)] ^ *&v118[4 * BYTE1(v263)] ^ v269 ^ (4 * v269) & 0xE3E7277C;
  v272 = *&v114[4 * HIBYTE(v270)] ^ *&v115[4 * (BYTE2(v266) ^ 0x3E)] ^ 0xC313EEF9;
  v273 = (v272 & 0x7C5B74D1 ^ 0xFC55898D) & (v272 & 0x83A48B2E ^ 0x7DFFFEDB);
  v274 = v272 & 0x3A00222;
  v275 = v271 ^ 0x4D61BD2E;
  v276 = v273 | v274;
  v277 = *&v116[4 * (v271 ^ 0x12)] ^ 0x2346C77F;
  v278 = v268 ^ 0x6819F276;
  v279 = HIBYTE(v268) ^ 0x8D;
  v280 = *&v116[4 * v270] ^ 0x380FEE67;
  v281 = *&v116[4 * (v266 ^ 0x58)] ^ 0xC188E02A;
  v282 = *&v115[4 * BYTE2(v275)] ^ *&v114[4 * v279] ^ *&v118[4 * (BYTE1(v270) ^ 0x7C)] ^ v281 ^ (4 * v281) & 0xE3E7277C;
  v283 = *&v116[4 * v278] ^ 0x6C6F1C8B;
  v284 = *&v118[4 * BYTE1(v278)] ^ v277 ^ (4 * v277) & 0xE3E7277C ^ 0x14ADC50D ^ v276;
  v285 = *&v114[4 * (HIBYTE(v266) ^ 0xEE)] ^ *&v118[4 * BYTE1(v275)] ^ *&v115[4 * BYTE2(v278)] ^ v280 ^ (4 * v280) & 0xE3E7277C ^ 0x8AB43C89;
  v286 = v282 ^ 0x1054F2D6;
  if ((v282 & 0x40000000) != 0)
  {
    v287 = -1073741824;
  }

  else
  {
    v287 = 0x40000000;
  }

  v288 = (v287 + v286) ^ 0xD7E00088;
  v289 = *&v115[4 * BYTE2(v270)] ^ *&v114[4 * HIBYTE(v275)] ^ *&v118[4 * (BYTE1(v266) ^ 0xFC)] ^ v283 ^ 0xDE59119C ^ (4 * v283) & 0xE3E7277C;
  v290 = *&v115[4 * BYTE2(v285)] ^ *&v118[4 * BYTE1(v286)];
  v291 = *&v116[4 * v289] ^ 0x745720A0;
  v292 = v290 ^ v291 ^ *&v114[4 * HIBYTE(v284)] ^ (4 * v291) & 0xE3E7277C;
  v293 = *&v116[4 * v284] ^ 0x88C4382;
  v294 = *&v114[4 * HIBYTE(v285)] ^ *&v118[4 * BYTE1(v289)] ^ *&v115[4 * BYTE2(v288)] ^ v293 ^ (4 * v293) & 0xE3E7277C;
  v295 = *&v116[4 * v285] ^ 0xC6A407E4;
  v296 = *&v115[4 * BYTE2(v289)] ^ *&v118[4 * BYTE1(v284)] ^ *&v114[4 * HIBYTE(v288)] ^ v295 ^ (4 * v295) & 0xE3E7277C;
  v297 = *&v116[4 * (v282 ^ 0x62)] ^ 0xD1F7D298;
  v298 = *&v114[4 * HIBYTE(v289)] ^ *&v115[4 * BYTE2(v284)] ^ *&v118[4 * (BYTE1(v285) - ((v285 >> 7) & 0xF8)) + 496] ^ v297 ^ (4 * v297) & 0xE3E7277C;
  v299 = v294 ^ 0x37760C63;
  if ((v294 ^ 0x37760C63) >= 0xFCAF0ADA)
  {
    v300 = -38;
  }

  else
  {
    v300 = 0;
  }

  v301 = v299 + 55637286;
  if (v299 < 0xFCAF0ADA)
  {
    v301 = v294 ^ 0x37760C63;
  }

  if (!v301)
  {
    LOBYTE(v299) = v300;
  }

  v302 = v292 ^ 0x3A217B03;
  v303 = BYTE2(v298) ^ 0xEB;
  v304 = *&v116[4 * (v298 ^ 0xB)] ^ 0x6DC1DB6E;
  v305 = *&v115[4 * (BYTE2(v294) ^ 0x73)] ^ *&v114[4 * ((v292 ^ 0x3A217B03) >> 24)] ^ *&v118[4 * (BYTE1(v296) ^ 0xAD)] ^ v304 ^ (4 * v304) & 0xE3E7277C;
  v306 = *&v116[4 * (v292 ^ 0x3F)] ^ 0x6AF28230;
  v307 = *&v118[4 * ((v298 ^ 0xC80B) >> 8)] ^ *&v115[4 * (BYTE2(v296) ^ 0xB0)] ^ *&v114[4 * (HIBYTE(v294) ^ 0xD2)] ^ v306 ^ (4 * v306) & 0xE3E7277C;
  v308 = *&v116[4 * (v299 ^ 0x3C)] ^ 0x166F095D;
  v309 = HIBYTE(v296) ^ 0x66;
  v310 = *&v116[4 * (v296 ^ 0xE)] ^ 0xEBED4B0F;
  v311 = v305 ^ 0x1B38B461;
  v312 = HIBYTE(v305) ^ 0x1B;
  v313 = *&v115[4 * BYTE2(v302)] ^ *&v114[4 * (HIBYTE(v298) ^ 0xE)] ^ *&v118[4 * (BYTE1(v294) ^ 0x70)] ^ v310 ^ (4 * v310) & 0xE3E7277C ^ 0x4FC3D6E8;
  v314 = *&v114[4 * v309] ^ *&v115[4 * v303] ^ *&v118[4 * BYTE1(v302)] ^ v308 ^ 0x51549EB7 ^ (4 * v308) & 0xE3E7277C;
  v315 = *&v116[4 * v313] ^ 0xECC7BAFC;
  v316 = v307 ^ 0xF2A0F67;
  v317 = *&v116[4 * (v305 ^ 0x61)] ^ 0xDBD3E259;
  v318 = *&v114[4 * ((v307 ^ 0xF2A0F67) >> 24)] ^ *&v118[4 * BYTE1(v313)] ^ v317 ^ (4 * v317) & 0xE3E7277C ^ *&v115[4 * BYTE2(v314)];
  v319 = *&v116[4 * (v307 ^ 0x5B)] ^ 0xD98BBE37;
  v320 = *&v114[4 * HIBYTE(v314)] ^ *&v118[4 * BYTE1(v311)] ^ *&v115[4 * BYTE2(v313)] ^ v319 ^ (4 * v319) & 0xE3E7277C;
  v321 = *&v116[4 * v314] ^ 0xCD880C32;
  v322 = *&v114[4 * v312] ^ *&v115[4 * BYTE2(v316)] ^ v315 ^ (4 * v315) & 0xE3E7277C ^ 0x2111F1B2;
  v323 = *&v115[4 * BYTE2(v311)];
  v324 = v322 ^ *&v118[4 * BYTE1(v314)];
  v325 = v323 ^ *&v114[4 * HIBYTE(v313)] ^ *&v118[4 * BYTE1(v316)] ^ v321 ^ 0x827BA55C ^ (4 * v321) & 0xE3E7277C;
  v326 = v320 ^ 0x3315A1C4;
  v327 = v318 ^ 0x1F24BFED;
  v328 = *&v116[4 * v325] ^ 0x7BAEF9D9;
  v329 = *&v115[4 * ((v318 ^ 0x1F24BFED) >> 16)] ^ *&v114[4 * HIBYTE(v324)] ^ *&v118[4 * (BYTE1(v320) ^ 0xDD)] ^ 0xE54995CB ^ v328;
  v330 = ((v329 & 0xF5BFB5A3 ^ 0x4E1AC1CF) & (v329 & 0xA404A5C ^ 0xFDFFF5A3) | v329 & 0x400A10) ^ (4 * v328) & 0xE3E7277C;
  v331 = BYTE2(v326);
  if (BYTE2(v326) >= 0xE8u)
  {
    v331 = BYTE2(v326) - 232;
  }

  v332 = HIWORD(v326) + 24;
  if (BYTE2(v326) < 0xE8u)
  {
    LOBYTE(v332) = BYTE2(v326);
  }

  if (v331)
  {
    v333 = 0;
  }

  else
  {
    v333 = v332;
  }

  v334 = *&v116[4 * v324] ^ 0xDA7DE72C;
  v335 = *&v116[4 * (v318 ^ 0xED)] ^ 0x5B25D44F;
  v336 = *&v115[4 * BYTE2(v325)] ^ *&v114[4 * HIBYTE(v326)] ^ *&v118[4 * BYTE1(v324)] ^ v335;
  v337 = *&v115[4 * ((BYTE2(v326) - v333) ^ 5)];
  v338 = *&v115[4 * BYTE2(v324)];
  v339 = *&v114[4 * HIBYTE(v325)];
  v340 = *&v118[4 * BYTE1(v325)];
  v341 = *&v118[4 * (BYTE1(v318) ^ 0xC3)];
  v342 = v336 ^ (4 * v335) & 0xE3E7277C;
  v343 = *&v116[4 * v326] ^ 0x4FBD5C55;
  v344 = v330 ^ 0x38997738;
  v345 = *&v114[4 * HIBYTE(v327)] ^ v340 ^ v334 ^ (4 * v334) & 0xE3E7277C ^ 0x48B0B4EE ^ v337;
  v346 = v338 ^ v341 ^ v343 ^ v339 ^ (4 * v343) & 0xE3E7277C ^ 0x942EEB4D;
  v347 = (v330 ^ 0x38997738) >> 25;
  v348 = (v330 ^ 0x38997738) >> 24;
  if (v347 >= 0x5F)
  {
    v348 -= 190;
  }

  if (v347 <= 0x5E)
  {
    v349 = 0;
  }

  else
  {
    v349 = 190;
  }

  v350 = *&v218[4 * BYTE2(v345)] ^ (v348 + v349) ^ *&v220[4 * (BYTE1(v342) ^ 0x6A)] ^ *&v221[4 * v346] ^ ((BYTE1(v342) ^ 0xCC) + 1148112181) ^ v223 ^ *&v219[4 * ((v348 + v349) ^ 0x58)];
  v351 = HIBYTE(v345) ^ *&v218[4 * (BYTE2(v342) ^ 0x5C)] ^ *&v220[4 * (BYTE1(v346) ^ 0xA6)] ^ *&v219[4 * (HIBYTE(v345) ^ 0x58)] ^ *&v221[4 * (v330 ^ 0x38)] ^ (BYTE1(v346) + 1148112181) ^ 0xCCDA0A;
  v352 = HIBYTE(v342);
  v353 = *&v219[4 * (HIBYTE(v342) ^ 0x2F)];
  v354 = HIBYTE(v346) ^ *&v219[4 * (HIBYTE(v346) ^ 0x58)] ^ 0x99A1C63E ^ *&v218[4 * BYTE2(v344)];
  v355 = *&v220[4 * (BYTE1(v345) ^ 0xA6)];
  v356 = (BYTE1(v345) + 1148112181) ^ *&v221[4 * ((v336 ^ (4 * v335) & 0x7C) ^ 0x14)] ^ 0x4641CBF5 ^ ((-v354 ^ (v354 - ((2 * v354) & 0x2FC31530) + 400657048) ^ 0x17E18A98 ^ ((v355 ^ 0x64BC55AA) - ((v354 - ((2 * v354) & 0xC978AB54) + 1690064298) ^ v355))) + (v355 ^ 0x64BC55AA));
  v357 = (BYTE1(v344) + 1148112181) ^ v352 ^ *&v218[4 * BYTE2(v346)] ^ v353 ^ *&v221[4 * ((v114[4 * HIBYTE(v327)] ^ v340 ^ v334 ^ (4 * v334) & 0x7C) ^ 0xEE ^ v337)] ^ 0xED4793BE ^ *&v220[4 * (BYTE1(v344) ^ 0xA6)];
  v358 = v350 ^ 0xB9F4;
  v359 = v350 ^ 0x545CB9F4 ^ v351;
  v360 = v351 ^ v223;
  v361 = v357 ^ v359;
  v362 = v356 ^ v359;
  v363 = v360 ^ v357 ^ v356;
  v364 = v350 ^ 0xDE834B15;
  v365 = (v356 ^ v359) ^ 0xDCLL;
  v366 = *(&off_1010A0B50 + (v216 ^ 0x6E8F)) - 1221500614;
  v367 = *(v5 - 136);
  v367[14] = (((v362 ^ v366[v365]) & 0x84 ^ 0xF3) & ((v362 ^ v366[v365]) & 0x7B ^ 0xEC) | (v362 ^ v366[v365]) & 8) ^ 0x88;
  v368 = *(&off_1010A0B50 + (v216 ^ 0x710E)) - 1138311743;
  v367[12] = v368[HIBYTE(v362) ^ 0x59] ^ 0xC8;
  v369 = *(&off_1010A0B50 + v216 - 24839) - 503228046;
  v370 = v369[BYTE1(v362) ^ 0xC8];
  v367[15] = ((v369[BYTE1(v362) ^ 0xC8] >> 7) | 2) ^ v370 ^ 0x77 ^ (((v370 ^ 0x77u) >> 4) | 0x20);
  v367[5] = v366[v363 ^ 0xC9] ^ v363 ^ 0x7D;
  v371 = *(&off_1010A0B50 + v216 - 22161) - 567038058;
  v367[9] = BYTE2(v364) ^ v371[BYTE2(v364) ^ 0xBBLL] ^ 0xEE;
  v367[11] = BYTE2(v361) ^ 0x43 ^ v371[BYTE2(v361) ^ 0x16];
  v367[8] = BYTE2(v363) ^ 0x71 ^ v371[BYTE2(v363) ^ 0x24];
  v372 = v369[BYTE1(v361) ^ 0xC0];
  v367[4] = v372 ^ (v372 >> 7) ^ (v372 >> 4) ^ 0x52;
  v373 = *(v5 - 152);
  v367[7] = BYTE2(v362) ^ v371[BYTE2(v362) ^ 0x45] ^ 0x10;
  v374 = v369[HIBYTE(v358) ^ 0xE5];
  LOBYTE(v374) = v374 ^ (v374 >> 7) ^ (v374 >> 4);
  v367[10] = (~v374 & 0x25 ^ (v374 & 0x42 | 0x25) | ~v374 & 0x98) ^ 0xCA;
  v367[13] = v358 ^ 0x94 ^ v366[v358 ^ 0x20];
  *v367 = v368[v364 >> 24] ^ 0xC8;
  v367[2] = v368[HIBYTE(v361) ^ 0x1ELL] ^ 0xC8;
  v367[1] = v368[HIBYTE(v363) ^ 0xABLL] ^ 0xC8;
  v375 = v369[BYTE1(v363) ^ 0x56];
  v367[3] = v375 ^ (v375 >> 4) ^ ((v375 >> 7) | 0xFE) ^ 0xAC;
  v367[6] = v361 ^ 9 ^ v366[v361 ^ 0xBDLL];
  return (*(*(v5 - 160) + 8 * v216))(v373);
}