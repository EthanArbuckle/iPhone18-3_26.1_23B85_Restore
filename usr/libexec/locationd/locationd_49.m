uint64_t sub_10035FCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v23 - 120) = (v22 + 2098) ^ ((((v19 | (v23 - 120)) - ((v23 - 120) & v19)) ^ 0x7DEBBFE0) * v20);
  *(v23 - 112) = &a18;
  *(v23 - 104) = a15;
  v24 = (*(v18 + 8 * (v22 + 2244)))(v23 - 120);
  return (*(v18 + 8 * ((214 * (*(v23 - 116) > (v21 + v22 + 778 - 861))) ^ v22)))(v24);
}

void sub_10035FDB8(int a1@<W8>)
{
  v2 = *(v1 + 4);
  if (v2 + 1384175427 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = -a1;
  }

  *(v1 + 4) = v3 + v2;
  JUMPOUT(0x10035FE08);
}

uint64_t sub_10035FE60(uint64_t a1, uint64_t a2)
{
  if (**(a2 + 8))
  {
    v2 = 41;
  }

  else
  {
    v2 = 40;
  }

  *(a1 + 88) = v2;
  return 0;
}

uint64_t sub_10035FE84(uint64_t a1, int8x16_t *a2, uint64_t a3, int a4, double a5, __n128 a6, __n128 a7, __n128 a8, int8x16_t a9, double a10, int8x16_t a11, int8x16_t a12)
{
  v12 = (v21 - 16) & 0xF;
  v13 = v23;
  v14.i64[0] = vqtbl4q_s8(*(&a6 - 1), a9).u64[0];
  *&v14.i64[1] = a10;
  v15 = vrev64q_s8(veorq_s8(veorq_s8(veorq_s8(*a2, *(v19 + v12 - 15)), *(v12 + v20 - 10)), *(a1 + v12 + v18 - 1550)));
  v16 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v15, v15, 8uLL), a12), vmulq_s8(v14, a11)));
  *a2 = vextq_s8(v16, v16, 8uLL);
  return (*(v24 + 8 * (((a3 == 16) * a4) ^ v22)))();
}

uint64_t sub_10035FED0(uint64_t a1)
{
  v5 = *(v3 + 352);
  v6 = ((v4 - 1003) | 0x40C) + *(a1 + 8) + v1 - 2084092844;
  v7 = (v5 > 0x5828F169) ^ (v6 < ((v4 + 1651867662) & 0x9D8A79A6 ^ 0xA7D70FB4));
  v8 = v5 - 1479078250 > v6;
  if (v7)
  {
    v8 = v5 > 0x5828F169;
  }

  return (*(v2 + 8 * ((255 * v8) ^ v4)))();
}

uint64_t sub_10035FF6C()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_10036007C(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v17 = (a4 ^ v12) * (**(v15 + 8) ^ v12) + (*(&a12 + v14) ^ v12);
  *(&a12 + v14) = v17 + v12 - ((a1 + 322) & (2 * v17));
  return (*(v16 + 8 * ((1223 * (v13 == 1)) ^ a6 & 0x6C3800EDu)))();
}

uint64_t sub_100360234@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, uint64_t a32, uint64_t a33)
{
  STACK[0x5B0] = (a1 ^ 3u) + v36;
  *(v37 - 112) = a31 + v36;
  *(v37 - 132) = (v33 - 643332360) ^ v36;
  *(v37 - 128) = a31 + v36 + 25;
  STACK[0x5C8] = (v35 + 1) - v36;
  *(v37 - 152) = v36 ^ 1;
  *(v37 - 136) = a31 + v36 - 59;
  v38 = (*(a33 + 8 * (v34 + v33 + 2353)))(v37 - 152);
  return (*(a33 + 8 * *(v37 - 108)))(v38);
}

uint64_t sub_1003602EC(int a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, int a8)
{
  v12 = v10 > a1;
  if (v12 == v8 + a4 < a5)
  {
    v12 = v8 + a4 < v11;
  }

  return (*(v9 + 8 * ((!v12 * a6) ^ a8)))();
}

uint64_t sub_100360694@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v13 = (v10 + 4 * v8);
  v14 = (((*v13 ^ v2) + HIDWORD(v4)) & ((v3 ^ 0xFCu) + v11)) + HIDWORD(v6) + v5 * (*(v9 + 4 * v8) ^ v2);
  *(v13 - 1) = v14 + v2 - (a1 & (2 * v14));
  return (*(v7 + 8 * (((v8 + 1 == a2) * v12) ^ v3)))();
}

uint64_t sub_1003606F4()
{
  if ((v1 - 1) >> 32)
  {
    v4 = 0;
  }

  else
  {
    v4 = -2 - v0 >= (v1 - 1);
  }

  v5 = !v4;
  return (*(v3 + 8 * ((43 * ((v5 ^ ((v2 ^ 0x6D) + 77)) & 1)) ^ v2)))();
}

uint64_t sub_1003607AC@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(v2 + 24) = a2;
  *(result + 8) = 392145869;
  return result;
}

uint64_t sub_1003607C0()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_100360850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  v43 = *(a1 + 32) + 1785193651 * (((a1 | 0xE1E68334) - a1 + (a1 & 0x1E197CCB)) ^ 0xF23A6F14);
  v44 = 1785193651 * (v53 ^ 0x13DCEC20);
  v55 = v52;
  v54 = v43 + v44 - 562358890;
  v56 = v44 ^ 0x942D0C24;
  v45 = (*(*(&off_10244F320 + (v43 ^ 6)) + (v43 ^ 0x922) - 1))(v53);
  return sub_100366A84(v45, v52, v46, 51, v47, v48, v49, v50, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43);
}

uint64_t sub_100360AE4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v8 = 50899313 * ((-2107264212 - (&a3 | 0x8265B32C) + (&a3 | 0x7D9A4CD3)) ^ 0x69B5D148);
  a3 = v5;
  a4 = v6 ^ ((v6 ^ 0xAC29234B) + 1592077666) ^ ((v6 ^ 0xBC80BD22) + 1313649417) ^ ((v6 ^ 0x9BDFFFDF) + 1762914806) ^ v8 ^ ((((v7 - 822) | 0x400) ^ 0x74899A1F) + (v6 ^ 0x86459063)) ^ 0xC569C1FD;
  a5 = v8 + v7 + 1039;
  v9 = (*(a1 + 8 * (v7 + 1471)))(&a3);
  return sub_100360BD8(v9);
}

uint64_t sub_100360DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = LODWORD(STACK[0x2B8]) + 8;
  v12 = (((v8 ^ 0x57B1A92E) - 1471260974) ^ ((v8 ^ 0x54033323) - 1409495843) ^ ((v8 ^ 0xEB126AF5) + 351114507)) + (((LODWORD(STACK[0x50C]) ^ 0xEDC756E3) + 305703197) ^ ((LODWORD(STACK[0x50C]) ^ 0x93C4A53B) + 1815829189) ^ ((LODWORD(STACK[0x50C]) ^ ((LODWORD(STACK[0x2B8]) - 348) | 0x164) ^ 0x96A3025C) + 1767701728)) - 784211472;
  *(STACK[0x240] + 52) = ((v12 % 0x2710) ^ 0x5FFF3FFF) + 2 * (v12 % 0x2710) - 33818628;
  v13 = STACK[0x514];
  *(v10 + 264) -= 1616;
  LODWORD(STACK[0x43C]) = v13;
  return (*(v9 + 8 * ((1325 * (v13 == a8)) ^ v11)))();
}

uint64_t sub_100361330(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v9 = *(v6 + 48 * v8 + 36);
  v11 = v9 != 1878584687 && v9 + a5 < a4;
  return (*(v7 + 8 * ((v11 * ((v5 ^ 0x5FE) + 2816)) ^ v5)))();
}

uint64_t sub_1003613CC(int a1, int a2)
{
  v13 = v4 + (*(*(v12 + 8) + 4 * v6) ^ v8) - (*(*(v11 + 8) + 4 * v6) ^ (v8 + (v5 ^ v7) - 1188)) + a1;
  *(*(v2 + 8) + 4 * v6) = v13 + v8 - (v10 & (2 * v13));
  return (*(v9 + 8 * (((v6 + 1 == v3) * a2) ^ v5)))();
}

uint64_t sub_100361560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  if (a46 == 1)
  {
    v48 = a3 + 964;
    LOBYTE(a41) = (8 * (a3 - 60 + BYTE4(a42) - ((2 * BYTE4(a42)) & 8)) - 96) ^ 0x93;
    BYTE1(a41) = (HIDWORD(a42) >> 5) ^ 0x33;
    BYTE2(a41) = (HIDWORD(a42) >> 13) ^ 0x33;
    BYTE3(a41) = (HIDWORD(a42) >> 21) ^ 0x33;
    BYTE4(a41) = ((__PAIR64__(a42, HIDWORD(a42)) >> 29) - ((2 * (__PAIR64__(a42, HIDWORD(a42)) >> 29)) & 0xC3) - 31) ^ 0xD2;
    BYTE5(a41) = (a42 >> 5) ^ 0x33;
    BYTE6(a41) = (a42 >> 13) ^ 0x33;
    v49 = v46 ^ (a42 >> 21);
    goto LABEL_5;
  }

  v47 = a3;
  if (a46 == 2)
  {
    v48 = HIDWORD(a13) & 0x9C31A3E6;
    LOBYTE(a41) = (a42 >> 21) - (((BYTE4(a13) & 0xE6) - 122) & (a42 >> 20)) + 51;
    BYTE1(a41) = (a42 >> 13) - ((a42 >> 12) & 0x66) + 51;
    BYTE2(a41) = (~(a42 >> 4) | 0x99) + (a42 >> 5) + 52;
    BYTE3(a41) = (__PAIR64__(a42, HIDWORD(a42)) >> 29) - ((2 * (__PAIR64__(a42, HIDWORD(a42)) >> 29)) & 0x66) + 51;
    BYTE4(a41) = (HIDWORD(a42) >> 21) - ((HIDWORD(a42) >> 20) & 0x66) + 51;
    BYTE5(a41) = (HIDWORD(a42) >> 13) - ((HIDWORD(a42) >> 12) & 0x66) + 51;
    BYTE6(a41) = (HIDWORD(a42) >> 5) - ((HIDWORD(a42) >> 4) & 0x66) + 51;
    LOBYTE(v49) = (8 * (BYTE4(a42) - 2 * (BYTE4(a42) & 3)) - 104) ^ 0xAB;
LABEL_5:
    v47 = (v48 - 968) | 4;
    HIBYTE(a41) = v49;
  }

  return sub_100353B54(a3, a4, a5, a6, a7, a8, v47 + 1, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_100362084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a1 + 40);
  *v8 = 0;
  return (*(v9 + 8 * ((2330 * (v10 == 0)) ^ v7)))(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_100362174@<X0>(int a1@<W8>)
{
  v4 = LODWORD(STACK[0x31C]) - v2;
  v6 = a1 != ((v1 + 11) ^ 0x56ECE60C) && v4 == 62 * (v1 ^ 0x3D6) - 440920449;
  return (*(v3 + 8 * ((49 * v6) ^ v1)))();
}

uint64_t sub_100362200()
{
  v4 = ((v2 + 151439135) & 0xF6F935DB ^ 0x104042A4) + v3 - 440920077;
  v5 = v0 - 234766902;
  v6 = (v5 < v2 + 300037559) ^ (v4 < 0x11E23E57);
  v7 = v4 > v5;
  if (v6)
  {
    v7 = v4 < 0x11E23E57;
  }

  return (*(v1 + 8 * (v7 ^ v2)))();
}

void sub_100362290(uint64_t a1)
{
  v2 = *(v1 + 8);
  *a1 = 0;
  *(a1 + 8) = 0x47DE771547DE7715;
  *(a1 + 16) = 0x73FF8C1349A075C5;
  *(a1 + 24) = -392105736;
  *v2 = a1;
  JUMPOUT(0x100351AD8);
}

uint64_t sub_1003622CC@<X0>(int a1@<W2>, unsigned int a2@<W8>)
{
  v13 = ((v7 >> (a1 ^ 0xDDu)) ^ v4) + (*(v6 + 4 * v2) ^ a2);
  v14 = (a1 + 1078) + v13 - ((2 * v13) & 0x11CAF0C80) + v9;
  *(v6 + 4 * v5) = v14 ^ v10;
  *(v6 + 4 * v2) = HIDWORD(v14) ^ v11;
  return (*(v8 + 8 * (a1 ^ ((v3 + 1 == v2) * v12))))();
}

uint64_t sub_100362378(uint64_t a1)
{
  v3 = *(STACK[0x240] + 56);
  *(STACK[0x240] + 56) = v3 + 1;
  return (*(v1 + 8 * ((1236 * ((v2 - 192439189 + v3) < 0xFFFFFFFA)) ^ (v2 - 256))))(a1, 0, 0);
}

uint64_t sub_100362418@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, char a5, int a6, char a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, char *a12, char *a13)
{
  LODWORD(a10) = (a1 + 1237) ^ ((((&a10 | 0x188963AE) - &a10 + (&a10 & 0xE7769C50)) ^ 0xCA6FE35) * v13);
  a13 = &a6;
  a11 = a8;
  v15 = (*(v14 + 8 * (a1 + 2202)))(&a10);
  return sub_100352940(v15, v16, v17, v18, v19, v20, v21, v22, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_1003625CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, int a46, char a47)
{
  if (a47 == 2)
  {
    return (*(v47 + 8 * (((a46 != 0) * ((a3 + 311) ^ 0x4D8)) ^ (a3 + 311))))();
  }

  if (a47 != 1)
  {
    JUMPOUT(0x1003626ACLL);
  }

  return (*(v47 + 8 * ((51 * (((a46 == 0) ^ (a3 + 99)) & 1)) ^ (a3 + 311))))(a17);
}

uint64_t sub_1003626E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v29 = &a19;
  HIDWORD(a20) = -843532609 * ((2 * (v29 & 0x7C931420) - v29 - 2090013730) ^ 0xDF21BF5B) + 1265912287 * v26 + 441172865;
  LODWORD(a21) = (v27 + 1291) ^ (843532609 * ((2 * (v29 & 0x7C931420) - v29 - 2090013730) ^ 0xDF21BF5B));
  a19 = a17;
  (*(v28 + 8 * (v27 + 1811)))(&a19);
  LODWORD(a19) = v27 + 843532609 * (((&a19 | 0x55EA1DAA) - (&a19 & 0x55EA1DAA)) ^ 0x9A7492F) + 1338;
  a22 = v25;
  a20 = a17;
  (*(v28 + 8 * (v27 + 1894)))(&a19);
  a19 = a17;
  HIDWORD(a20) = -843532609 * ((&a19 - 721488557 - 2 * (&a19 & 0xD4FEF553)) ^ 0x88B3A1D6) + 1265912287 * v24 + 441172865;
  LODWORD(a21) = (v27 + 1291) ^ (843532609 * ((&a19 - 721488557 - 2 * (&a19 & 0xD4FEF553)) ^ 0x88B3A1D6));
  (*(v28 + 8 * (v27 + 1811)))(&a19);
  v30 = 1037613739 * (&a19 ^ 0xD1022D7F);
  LODWORD(a22) = (v27 + 389) ^ v30;
  HIDWORD(a22) = (v23 ^ 0xE7DFF7D5) + v30 + ((v23 << ((v27 + 65) ^ 0x57)) & 0xCFBFEFAA) + 1055849788;
  a20 = a17;
  a21 = v22;
  v31 = (*(v28 + 8 * (v27 + 1749)))(&a19);
  return (*(v28 + 8 * ((1983 * (a19 == -392105736)) ^ v27)))(v31);
}

uint64_t sub_100362980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v22 - 136) = (v21 + 1651) ^ (((v22 + 482914549 - 2 * ((v22 - 136) & 0x1CC8B17D)) ^ 0x4085E5F8) * v20);
  *(v22 - 128) = v17;
  *(v22 - 120) = &a17;
  v23 = (*(v18 + 8 * (v21 + 1797)))(v22 - 136);
  return (*(v18 + 8 * (((*(v22 - 132) > (v19 + v21 - 14 - 517)) * (v21 + 735)) ^ v21)))(v23);
}

uint64_t sub_100362A8C@<X0>(int a1@<W1>, int a2@<W8>)
{
  v7 = *(v4 + v2 * v3 + 36);
  v9 = v7 != a1 && v7 + v6 < ((a2 - 1444887334) & 0x561F3FCFu) + 2147481538;
  return (*(v5 + 8 * ((v9 * (((a2 - 406) | 0x82) ^ 0x2C1)) ^ a2)))();
}

uint64_t sub_100362B20(uint64_t a1, int a2)
{
  v5 = v3 < 0xDF8CD920;
  if (v5 == (v2 + 1) > 0xFFFFFFFF207326DFLL)
  {
    v5 = ((4 * a2) ^ 0xDF8CCC05uLL) + v2 < v3;
  }

  return (*(v4 + 8 * ((v5 * (((a2 - 585) | 0xD0) ^ 0x3E1)) ^ a2)))();
}

uint64_t sub_100362D50(uint64_t a1, __n128 *a2, uint64_t a3, __n128 a4)
{
  a2[-1] = a4;
  *a2 = a4;
  return (*(v6 + 8 * (((a3 != 0) * v5) ^ v4)))(a1, a2 + 2, a3 - 8);
}

uint64_t sub_100362D78()
{
  STACK[0x2F8] = 0;
  v4 = 1388665877 * ((v3 - 200) ^ 0x8DAD62EC);
  v2[4] = 0;
  *(v3 - 184) = v4 + v0 - 1234;
  *(v3 - 180) = v4 + 452683669;
  *v2 = &STACK[0x2F8];
  v2[1] = &STACK[0x3C4];
  v5 = (*(v1 + 8 * (v0 ^ 0xC21)))(v3 - 200);
  return (*(v1 + 8 * ((231 * (*(v3 - 176) != (v0 ^ 0x401) - 392106108)) ^ v0)))(v5);
}

uint64_t sub_100362E2C(uint64_t result)
{
  **result = 0;
  *(result + 8) = 165405923;
  return result;
}

void sub_100362E4C()
{
  v0 = *(&off_10244F320 + ((-39 * ((qword_1025D5288 + dword_1025D5258) ^ 0x42)) ^ byte_101C6E630[byte_101C69CA0[(-39 * ((qword_1025D5288 + dword_1025D5258) ^ 0x42))] ^ 0xB]) - 77);
  v1 = *(v0 - 4);
  v2 = *(&off_10244F320 + (byte_101C757E8[(byte_101C716B4[(-39 * ((qword_1025D5288 + v1) ^ 0x42)) - 4] ^ 0xAB) - 8] ^ (-39 * ((qword_1025D5288 + v1) ^ 0x42))) - 118);
  v3 = 329992409 * (((*(v2 - 4) ^ v1) - &v5) ^ 0x3F921ABBB7B42942);
  *(v0 - 4) = v3;
  *(v2 - 4) = v3;
  v6[0] = -542396526 - 1388665877 * (((v6 | 0x1A1A5330) - v6 + (v6 & 0xE5E5ACC8)) ^ 0x97B731DC);
  LOBYTE(v2) = -39 * ((*(v2 - 4) + *(v0 - 4)) ^ 0x42);
  v4 = *(&off_10244F320 + ((-39 * (dword_1025D5258 ^ 0x42 ^ qword_1025D5288)) ^ byte_101C69AA0[byte_101C756E0[(-39 * (dword_1025D5258 ^ 0x42 ^ qword_1025D5288))] ^ 3]) - 102) - 8;
  (*&v4[8 * (byte_101C69BAC[(byte_101C758E8[v2 - 8] ^ 0x1E) - 12] ^ v2) + 18480])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1003630FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, char *a14, int a15, unsigned int a16, char *a17, uint64_t a18)
{
  v22 = 742307843 * ((&a14 & 0xD9A783F1 | ~(&a14 | 0xD9A783F1)) ^ 0x387AF15B);
  a15 = v22 + v21 - 1336;
  a16 = v22 + 1850000690;
  a17 = &a11;
  a18 = v19;
  a14 = &a13;
  v23 = (*(v20 + 8 * (v21 + 916)))(&a14);
  return (*(v20 + 8 * ((60 * (((89 * (v21 ^ 0x8B)) ^ (*(v19 + 24) == v18 + ((v21 - 1322) | 0x500) - 1392)) & 1)) ^ v21)))(v23);
}

uint64_t sub_10036333C()
{
  v4 = v3 + 575 < (v0 + 706368366);
  if (v0 + 706368366 < ((v1 - 1292) ^ v3 ^ (v1 + 553330871) & 0xDF04D3FD))
  {
    v4 = 1;
  }

  return (*(v2 + 8 * ((7 * v4) | v1)))(397);
}

void sub_1003633D4(uint64_t a1)
{
  v1 = 1388665877 * ((2 * (a1 & 0x2EF7D36D) - a1 + 1359490194) ^ 0xDCA54E7E);
  v2 = *(a1 + 16) - v1;
  v3 = *(a1 + 20) - v1;
  v5 = (~v3 & 0x30000000) == 0 || (v3 & 0x3F000000) == 436207616;
  __asm { BRAA            X10, X17 }
}

void sub_1003634A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  STACK[0x4F0] -= 32;
  if (((a7 - 681765191) & 0x28A2E3F5 ^ 0x709F8922) == 0x709F8A57)
  {
    v7 = -392105736;
  }

  else
  {
    v7 = 392145696;
  }

  LODWORD(STACK[0x288]) = v7;
  JUMPOUT(0x100363514);
}

uint64_t sub_10036358C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  v64 = (v61 - 1945288536) | 0x21408400;
  if (((a28 - v61) | (v61 - a28)) > a4 + v64 - 2)
  {
    v65 = 0x80000000;
  }

  else
  {
    v65 = 0x7FFFFFFF;
  }

  *v63 = v65;
  (*(v62 + 8 * (v61 + 2349)))(a35);
  v66 = vld1q_dup_f32(v63);
  v67 = (v64 + 1978172743) & 0xDCC9B6F4;
  v68.i64[0] = 0x8000000080000000;
  v68.i64[1] = 0x8000000080000000;
  v69.i64[0] = 0x100000001;
  v69.i64[1] = 0x100000001;
  v70.i64[0] = *(v63 + 4);
  v70.i32[2] = *(v63 + 4 * v67 - 900);
  v71 = vextq_s8(v66, v70, 0xCuLL);
  v72 = v70;
  v72.i32[3] = *(v63 + 16);
  v73 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v72, vnegq_f32(v69)), vandq_s8(v71, v68)), 1uLL), *(v63 + 1588));
  v71.i32[0] = *(&a61 + (*(v63 + 4) & 1));
  v71.i32[1] = *(&a61 + (*(v63 + 8) & 1));
  v71.i32[2] = *(&a61 + (*(v63 + 4 * v67 - 900) & 1));
  v71.i32[3] = *(&a61 + (v72.i8[12] & 1));
  *v63 = veorq_s8(vaddq_s32(vsubq_s32(v73, vandq_s8(vaddq_s32(v73, v73), vdupq_n_s32(0x46A5EEF6u))), vdupq_n_s32(0xA352F77B)), v71);
  return (*(v62 + 8 * (v64 + 1387412860)))();
}

uint64_t sub_1003637F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = (a12 + v14);
  *(v17 - 1) = v16;
  *v17 = v16;
  return (*(v15 + 8 * ((((v12 & 0xFFFFFFFFFFFFFFF0) == 16) * (v13 - 302)) ^ v13)))();
}

uint64_t sub_1003639CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  *a4 = 0;
  *a5 = 0;
  a15 = -542396526 - 1388665877 * (((&a15 | 0xE105652D) + (~&a15 | 0x1EFA9AD2)) ^ 0x6CA807C0);
  v17 = (*(v16 + 18744))(&a15);
  return (*(v16 + 8 * ((11 * (a16 != -392105736)) ^ 0xB6u)))(v17);
}

uint64_t sub_100363B0C()
{
  v11 = (*(*(v9 + 8) + 4 * v1) ^ v4) + v2;
  *(*(v0 + 8) + 4 * v1) = v11 + v7 - (((v3 + 168) ^ v5) & (2 * v11));
  return (*(v8 + 8 * (((v10 <= v1 + 1) * v6) ^ v3)))();
}

void sub_100363B5C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v2 || *a1 == 0;
  v1 = *(a1 + 16) - 1564307779 * ((((2 * a1) | 0xCF99E5FC) - a1 + 405998850) ^ 0x70C13EED);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_100363E2C(uint64_t a1, int a2, int a3)
{
  v6 = (((a3 + 297) | 0x193) ^ 0x27CB76CDu) + v5 + a2 > v3 + 132838089;
  if ((v3 + 132838089) < 0x27CB7356 != (v5 + a2) > 0xD8348CA9)
  {
    v6 = (v5 + a2) > 0xD8348CA9;
  }

  return (*(v4 + 8 * ((!v6 * ((a3 - 438) ^ 0x108)) ^ a3)))();
}

uint64_t sub_100363EB4@<X0>(int8x16_t *a1@<X6>, uint64_t a2@<X8>, int8x16_t a3@<Q4>, int8x16_t a4@<Q5>, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = (a7 + a2);
  v11 = vaddq_s8(vsubq_s8(a1[1], vandq_s8(vaddq_s8(a1[1], a1[1]), a3)), a4);
  v10[-1] = vaddq_s8(vsubq_s8(*a1, vandq_s8(vaddq_s8(*a1, *a1), a3)), a4);
  *v10 = v11;
  return (*(v9 + 8 * ((((v8 & 0x60) == 32) * (((v7 - 697) | 0x500) ^ 0x1F1)) ^ v7)))();
}

uint64_t sub_100363F20(unint64_t a1)
{
  *(v3 + 1424) = 0;
  memset((v3 + 1432), 51, 104);
  *(a1 + 96) = v3;
  STACK[0x328] = a1 + 96;
  *(v3 + 476) = 1;
  *(v4 + 360) = *(v2 + 8 * v1);
  STACK[0x248] = a1;
  return sub_10033FAF0(*(v4 + 264));
}

uint64_t sub_100364028@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  v57 = v51 + a1;
  *(v56 - 200) = (v51 - 1589188108) ^ ((((v56 - 200) & 0x95975B8 | ~((v56 - 200) | 0x95975B8)) ^ 0xE57A6667) * v55);
  (*(v53 + 8 * (v51 ^ 0x175FA207)))(v56 - 200);
  *v54 = (v57 | 0x70) - ((2 * ((v56 + 56) & 0x80) - (v56 + 56) + 121) ^ 0x59) * v55 + (((v52 - v51) | (v51 - v52)) >> 31) - 30;
  *(v56 - 196) = (v57 + 2056) ^ (((2 * ((v56 - 200) & 0x21EA1780) - (v56 - 200) + 1578494073) ^ 0x4DC90459) * v55);
  *(v54 + 16) = a50;
  *(v54 + 24) = a51;
  v58 = (*(v53 + 8 * (v51 ^ 0x175FA27E)))(v56 - 200);
  return sub_10034A2FC(v58, 0);
}

uint64_t sub_10036411C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16) - 262618987;
  v4 = *(a1 + 12) - 233128131;
  v5 = v3 < 0x39F93652;
  v6 = v3 > v4;
  if (v5 != v4 < 0x39F93652)
  {
    v6 = v5;
  }

  return (*(v1 + 8 * ((v6 * ((2 * ((v2 + 500) ^ 0x267) - 1876411043) & 0x6FD7CAF7 ^ 0x87C)) ^ (v2 + 500))))();
}

void sub_10036427C()
{
  v1 = *(v0 + 96);
  if (v1 == 1)
  {
    v6 = *(v0 + 64);
    v5 = *(v0 + 68);
    *(v0 + 56) = (8 * ((~(v5 << (LODWORD(STACK[0x2B8]) ^ 0x75)) | 7) + v5) - 24) ^ 0xD3;
    *(v0 + 57) = (v5 >> 5) ^ 0x33;
    *(v0 + 58) = (v5 >> 13) ^ 0x33;
    *(v0 + 59) = (v5 >> 21) ^ 0x33;
    *(v0 + 60) = ((__PAIR64__(v6, v5) >> 29) - ((2 * (__PAIR64__(v6, v5) >> 29)) & 0x7A) + 61) ^ 0xE;
    *(v0 + 61) = (v6 >> 5) ^ 0x33;
    *(v0 + 62) = (v6 >> 13) ^ 0x33;
    v4 = (v6 >> 21) ^ 0x33;
  }

  else
  {
    if (v1 != 2)
    {
      goto LABEL_6;
    }

    v2 = LODWORD(STACK[0x2B8]) ^ 0x9A8;
    v4 = *(v0 + 64);
    v3 = *(v0 + 68);
    *(v0 + 56) = (v4 >> 21) - ((v4 >> 20) & 0x66) + 51;
    *(v0 + 57) = (v4 >> 13) - ((v4 >> 13 << (v2 + 37)) & 0x66) + 51;
    *(v0 + 58) = (v4 >> 5) - ((v4 >> 4) & 0x66) + 51;
    *(v0 + 59) = (__PAIR64__(v4, v3) >> 29) - ((2 * (__PAIR64__(v4, v3) >> 29)) & 0x66) + 51;
    *(v0 + 60) = (~(v3 >> 20) | 0x99) + (v3 >> 21) + 52;
    *(v0 + 61) = (v3 >> 13) - ((v3 >> 12) & 0x66) + 51;
    *(v0 + 62) = (v3 >> 5) - ((v3 >> 4) & 0x66) + 51;
    LOBYTE(v4) = (8 * (v3 - ((2 * v3) & 0x1A)) - 24) ^ 0xDB;
  }

  *(v0 + 63) = v4;
LABEL_6:
  JUMPOUT(0x10036441CLL);
}

uint64_t sub_10036446C@<X0>(int a1@<W2>, int a2@<W8>)
{
  v5 = *(v3 + a2 * a1 + 36);
  LODWORD(STACK[0x4E8]) = v5;
  v6 = ((v2 - 838910931) & 0x3200C176 ^ 0xDC972D93) + v5;
  v8 = v6 > -1176800719 && v6 < SLODWORD(STACK[0x258]);
  return (*(v4 + 8 * ((1565 * v8) ^ v2)))();
}

uint64_t sub_100364564@<X0>(unint64_t a1@<X2>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, int a5@<W8>)
{
  v15 = (*(a2 + 4 * a5) ^ v5) + (v7 ^ HIDWORD(a1));
  v16 = v15 - (a3 & (2 * v15)) + a4;
  *(a2 + 4 * v8) = v16 ^ ((v14 ^ 0x3FD) + v9);
  *(a2 + 4 * a5) = (v16 >> (((v14 - 59) | 1u) ^ v10)) ^ v12;
  return (*(v11 + 8 * (v14 ^ ((v6 + 1 == a5) * v13))))();
}

uint64_t sub_1003645CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 468) = *(*(a1 + 8) + 12) - ((2 * *(*(a1 + 8) + 12)) & 0x66) + 51;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 8 * ((88 * v4) ^ 0x43Du)))(0);
}

uint64_t sub_10036461C()
{
  v3 = *(v0 + 16) + 196091033 + ((v2 + 1107) | 0xC1);
  v4 = *(v0 + 12) + 225584140;
  v5 = (v4 < 0x55509B21) ^ (v3 < 0x55509B21);
  v6 = v3 < v4;
  if (v5)
  {
    v6 = v4 < 0x55509B21;
  }

  return (*(v1 + 8 * ((1456 * v6) ^ v2)))();
}

void sub_100364694(uint64_t a1)
{
  v2 = *(&off_10244F320 + ((-39 * (dword_1025D5348 ^ 0x42 ^ qword_1025D5288)) ^ byte_101C6E630[byte_101C69CA0[(-39 * (dword_1025D5348 ^ 0x42 ^ qword_1025D5288))] ^ 0xDF]) - 84);
  v3 = *(v2 - 4);
  v4 = *(&off_10244F320 + (byte_101C757E0[byte_101C716B0[(-39 * (v3 ^ qword_1025D5288 ^ 0x42))] ^ 0xE8] ^ (-39 * (v3 ^ qword_1025D5288 ^ 0x42))) - 179);
  v5 = v3 ^ &v9 ^ *(v4 - 4);
  v6 = 329992409 * v5 - 0x3B9C76CF2798770ELL;
  v7 = 329992409 * (v5 ^ 0x3F921ABBB7B42942);
  *(v2 - 4) = v6;
  *(v4 - 4) = v7;
  LODWORD(v4) = *(v2 - 4);
  v8 = *(&off_10244F320 + ((-39 * (dword_1025D5348 ^ 0x42 ^ qword_1025D5288)) ^ byte_101C6E630[byte_101C69CA0[(-39 * (dword_1025D5348 ^ 0x42 ^ qword_1025D5288))] ^ 0xB]) - 116) - 8;
  (*&v8[8 * ((-39 * (v4 ^ 0x42 ^ v7)) ^ byte_101C757E0[byte_101C716B0[(-39 * (v4 ^ 0x42 ^ v7))] ^ 0x7D]) + 18208])(*(&off_10244F320 + (byte_101C6E634[(byte_101C69CA0[(-39 * ((v7 - v4) ^ 0x42))] ^ 0xB) - 4] ^ (-39 * ((v7 - v4) ^ 0x42))) - 73) - 4, sub_10034C45C);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100364874(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = *(a2 + 4);
  *(a1 + 32) = *(a2 + 8);
  return 0;
}

uint64_t sub_10036488C@<X0>(char a1@<W2>, int a2@<W8>)
{
  v8 = v6 + v5;
  v9 = (a1 + v5) & 0xF;
  v10 = v9 + 1 - v5;
  v11 = v2 + v10;
  v12 = v2 + v9 + 1;
  v13 = v4 + v10;
  v14 = v4 + v9 + 1;
  v15 = v3 - v5 + v9 + 2;
  v16 = v3 + v9 + ((334 * (a2 ^ 0x569u)) ^ 0x53ALL);
  v18 = v12 > v6 && v11 < v8;
  v20 = v14 > v6 && v13 < v8 || v18;
  if (v16 <= v6 || v15 >= v8)
  {
    v22 = v20;
  }

  else
  {
    v22 = 1;
  }

  return (*(v7 + 8 * ((27 * (v22 ^ 1)) ^ a2)))(a2 ^ 0x3E9u);
}

uint64_t sub_1003649D8(uint64_t a1)
{
  v1 = *a1 ^ (1082434553 * ((a1 - 587035644 - 2 * (a1 & 0xDD028C04)) ^ 0x46457A8E));
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v6 = v1 + 875954120 - 1361651671 * ((-1563632031 - (&v5 | 0xA2CCDE61) + (&v5 | 0x5D33219E)) ^ 0x8E11D112) + 2191;
  v5 = v3;
  v7 = v2;
  return (*(*(&off_10244F320 + v1 + 875954120) + (v1 ^ 0xCBCA0924) - 1))(&v5);
}

uint64_t sub_100364AEC(_DWORD *a1)
{
  v1 = a1[3] + 2066391179 * ((-2078713933 - (a1 | 0x841957B3) + (a1 | 0x7BE6A84C)) ^ 0xD4C12A54) - 1363;
  v2 = v1 + *(*a1 + 4);
  v4 = v2 - 763308428;
  v3 = (v2 - 763308428) < 0;
  v5 = 763308428 - v2;
  if (!v3)
  {
    v5 = v4;
  }

  return (*(*(&off_10244F320 + (v1 - 175)) + (((((v1 ^ 0x2F ^ (v5 > 0)) & 1) == 0) * (v1 ^ 0xE0)) ^ v1) - 1))();
}

uint64_t sub_100364BD4@<X0>(int a1@<W0>, char a2@<W2>, char a3@<W3>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v8 = v5 - 1;
  *(a5 + v8) = *(a4 + v8) - ((*(a4 + v8) << (((v6 + a2) & a3) - 48)) & 0x66) + 51;
  return (*(v7 + 8 * (((v8 == 0) * a1) ^ v6)))();
}

uint64_t sub_100364C24@<X0>(int a1@<W8>)
{
  if ((a1 - 1190407904) <= 0x10 && ((1 << (a1 + 32)) & 0x18105) != 0)
  {
    return (*(v2 + 8 * ((((((*(v1 + 48 * v3 + 40) & 1) == 0) ^ (v4 + 99) ^ 0xD5) & 1) * (((v4 + 231852387) | 0x81) - 198)) | (v4 + 231853599))))();
  }

  else
  {
    return sub_100364C60();
  }
}

uint64_t sub_100364D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v50 = (*(v48 + 8 * (v49 ^ 0xDEB)))(1576, 0x105004009637391);
  STACK[0x4E0] = v50;
  return (*(v48 + 8 * (((v50 == 0) * (((v49 - 905) ^ 0xFFFFFFBE) + (v49 ^ 0x5CC))) ^ v49)))(v50, v51, v52, v53, 392145697, v54, v55, 3902861560, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_100365024@<X0>(uint64_t a1@<X8>)
{
  v7 = LODWORD(STACK[0x478]) - ((v3 + 1512307836) & (2 * LODWORD(STACK[0x478]))) - 1391329625;
  v8 = 1785193651 * ((((v6 - 200) | 0x938EC8BA) - (v6 - 200) + ((v6 - 200) & 0x6C713740)) ^ 0x8052249A);
  v5[5] = a1;
  v5[3] = STACK[0x238];
  *(v6 - 168) = v8 + v1 - ((((2 * v3) ^ 0x1D0) - 112) & (2 * v1)) + 1563227050;
  *(v6 - 184) = v8 + 1421512303 + v3;
  v9 = STACK[0x230];
  *v5 = v4;
  v5[1] = v9;
  *(v6 - 148) = v7 ^ v8;
  v10 = (*(v2 + 8 * (v3 + 2215)))(v6 - 200);
  v11 = *(v6 - 152);
  LODWORD(STACK[0x4EC]) = v11;
  return (*(v2 + 8 * ((41 * (v11 != -392105736)) | v3)))(v10, v4);
}

void sub_100365184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  v18 = (((a15 ^ 0x5369144E) - 1399395406) ^ ((a15 ^ 0x7F8ECB79) - 2140064633) ^ ((a15 ^ 0x8EAB0F5A) + 1901392038)) + (((v16 ^ 0x24A47B24) - 614759204) ^ ((v16 ^ 0x27F4DB3A) - 670358330) ^ ((v16 ^ 0xA11C7073) - 214058977 + ((v15 + 1210127136) | 0x2384C06A))) + 1469849811;
  *(v17 - 132) = v18 ^ ((v18 ^ 0xCF837F79) + 595525504) ^ ((v18 ^ 0xE6E4BC3F) + 169425978) ^ ((v18 ^ 0x45826340) - 1451236537) ^ ((v18 ^ 0x7FE7DFFF) - 1826988038) ^ 0xB14EAF94;
  JUMPOUT(0x10033DE98);
}

void sub_100365300(uint64_t a1)
{
  v1 = *a1 ^ (843532609 * ((((2 * a1) | 0x4B562ACC) - a1 - 631969126) ^ 0x79E641E3));
  v2 = *(a1 + 24);
  if (*(v2 + 4) - 763308221 >= 0)
  {
    v3 = *(v2 + 4) - 763308221;
  }

  else
  {
    v3 = 763308221 - *(v2 + 4);
  }

  if (*(*(a1 + 8) + 4) - 763308221 >= 0)
  {
    v4 = *(*(a1 + 8) + 4) - 763308221;
  }

  else
  {
    v4 = 763308221 - *(*(a1 + 8) + 4);
  }

  v7[1] = v1 + 1564307779 * ((2 * (v7 & 0x1BBD07B8) - v7 - 465373113) ^ 0x734F3454) - 108;
  v8 = v2;
  v5 = *(&off_10244F320 + (v1 ^ 0x119)) - 8;
  (*&v5[8 * v1 + 16576])(v7);
  if (v3 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  __asm { BRAA            X15, X17 }
}

uint64_t sub_100365478@<X0>(int a1@<W1>, char a2@<W8>, uint64_t a3, uint64_t a4)
{
  v8 = (a4 + (a2 & 0x3F));
  *(v8 - 1) = v7;
  *v8 = v7;
  return (*(v6 + 8 * ((((v5 ^ 0x5A8u) - 1354 - 402 == (v4 & 0x30)) * a1) ^ v5 ^ 0x5A8)))();
}

void sub_100365754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19)
{
  a17 = a12;
  a15 = 0;
  a19 = v21 - 1785193651 * ((((2 * &a15) | 0x1B55EE9C) - &a15 - 229308238) ^ 0x1E761B6E) + v19 + 156;
  (*(v20 + 8 * (v19 ^ v22)))(&a15);
  JUMPOUT(0x100330118);
}

uint64_t sub_1003657BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21)
{
  v28 = &a17;
  HIDWORD(a18) = -843532609 * ((-316976357 - (v28 | 0xED1B531B) + (v28 | 0x12E4ACE4)) ^ 0x4EA9F861) + 1265912287 * v25 + 441172865;
  LODWORD(a19) = (v26 - 53) ^ (843532609 * ((-316976357 - (v28 | 0xED1B531B) + (v28 | 0x12E4ACE4)) ^ 0x4EA9F861));
  a17 = a16;
  (*(v27 + 8 * (v26 + 467)))(&a17);
  a17 = a16;
  HIDWORD(a18) = -843532609 * ((((2 * &a17) | 0x3AEF1218) - &a17 - 494373132) ^ 0x413ADD89) + 1265912287 * v24 + 441172865;
  LODWORD(a19) = (v26 - 53) ^ (843532609 * ((((2 * &a17) | 0x3AEF1218) - &a17 - 494373132) ^ 0x413ADD89));
  (*(v27 + 8 * (v26 + 467)))(&a17);
  v29 = 1037613739 * ((1430287145 - (&a17 | 0x55407329) + (&a17 | 0xAABF8CD6)) ^ 0x7BBDA1A9);
  a18 = a16;
  a19 = v22;
  a20 = (v26 - 955) ^ v29;
  a21 = (v23 ^ 0xB7DFFFD7) + ((v23 << (((v26 - 92) & 0x1F) - 24)) & 0x6FBFFFAE) + 1861154106 + v29;
  (*(v27 + 8 * (v26 ^ 0xFBF)))(&a17);
  v30 = 1037613739 * (((&a17 | 0x72AE5E6B) + (~&a17 | 0x8D51A194)) ^ 0xA3AC7315);
  a20 = (v26 - 955) ^ v30;
  a21 = (v21 ^ 0x37DFF531) + ((2 * v21) & 0x6FBFEA62) - 286326816 + v30;
  a18 = a16;
  a19 = a12;
  (*(v27 + 8 * (v26 + 405)))(&a17);
  v31 = -843532609 * ((2 * (&a17 & 0xE9D6A98) - &a17 + 1902286182) ^ 0x2D2FC1E3) + 1265912287 * *a11 + 441172865;
  a17 = a16;
  HIDWORD(a18) = v31;
  LODWORD(a19) = (v26 - 53) ^ (843532609 * ((2 * (&a17 & 0xE9D6A98) - &a17 + 1902286182) ^ 0x2D2FC1E3));
  v32 = (*(v27 + 8 * (v26 + 467)))(&a17);
  return (*(v27 + 8 * ((236 * (a18 == -392105736)) ^ v26)))(v32);
}

uint64_t sub_100365B20()
{
  LODWORD(STACK[0x4E8]) = v0;
  *(v1 + 264) -= 432;
  return (*(v1 + 360))();
}

uint64_t sub_100365B44@<X0>(int a1@<W8>)
{
  v3 = a1 - 161;
  v4 = (v1 ^ 0xE8A0F0F8) != (((v1 ^ 0xE8A0F0F8) << (((v3 ^ 0x95) - 88) ^ v3 ^ 0x2C)) & 0x5C912AA2);
  return (*(v2 + 8 * ((v4 | (32 * v4)) ^ v3)))();
}

uint64_t sub_100365C5C@<X0>(int a1@<W8>)
{
  v5 = 1785193651 * (((v4 - 128) & 0xEA2F7FCF | ~((v4 - 128) | 0xEA2F7FCF)) ^ 0x60C6C10);
  *(v4 - 124) = v5 - 562359769 + v3;
  *(v4 - 120) = v4 - 228;
  *(v4 - 112) = (a1 - ((v3 + 676992183) & (2 * a1)) - 1808987098) ^ v5;
  v6 = (*(v1 + 8 * (v3 + 1391)))(v4 - 128);
  return (*(v1 + 8 * ((2002 * (*v2 + (*(v4 - 160) & 0x3F) + (((v3 + 813) | 0x115) ^ 0x8885E89B) < 0xFFFFFFC0)) ^ v3)))(v6, 2498662708);
}

void sub_1003661A8()
{
  v3 = *(v2 + 392);
  v4 = 1785193651 * ((((2 * (v1 - 200)) | 0x44D2CAB4) - (v1 - 200) + 1570151078) ^ 0xB1B5897A);
  *(v1 - 184) = v4 ^ 0x942D0C24;
  *(v1 - 196) = v0 - 562358948 + v4 + 26;
  *(v1 - 192) = v3;
  JUMPOUT(0x10032BCD0);
}

uint64_t sub_1003662F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFF93DLL ^ v4 ^ 0x269u) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * (((32 * ((v2 & 0xFFFFFFF8) - 8 == v3)) | (((v2 & 0xFFFFFFF8) - 8 == v3) << 6)) ^ v4)))();
}

uint64_t sub_1003665B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v4 + a1) = *(a2 + a1);
  v7 = v3 == a1;
  v8 = a1 + 8;
  v9 = !v7;
  return (*(v6 + 8 * ((v9 * v5) ^ v2)))(v8);
}

uint64_t sub_100366CA4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, _DWORD *a7)
{
  v10 = a1 - 3;
  v11 = 50899313 * ((2 * ((v9 - 128) & 0x6B3E8EC8) - (v9 - 128) - 1799261902) ^ 0x80EEECA9);
  v12 = (*a7 ^ (a1 - 112820962)) * *(*(a4 + 32) + 16);
  *(v9 - 120) = (v12 ^ 0x7B6FDBBF) - v11 + ((2 * v12) & 0xF6DFB77E) - 1342575130;
  *(v9 - 112) = a5;
  *(v9 - 104) = &a6;
  *(v9 - 128) = v10 - v11 + 775;
  *(v9 - 124) = v11 ^ 0x2D7F28BD;
  v13 = (*(v7 + 8 * (v10 + 1797)))(v9 - 128);
  return (*(v7 + 8 * (((v8 != 1) | (4 * (v8 != 1))) ^ v10)))(v13);
}

uint64_t sub_100366DBC@<X0>(int a1@<W8>)
{
  v9 = v2 + 2;
  v10 = (v3 - 2);
  *v10 = (v5 ^ v6 ^ v9) * (v9 + 17);
  *(v10 - 1) = (v9 ^ 0xBB) * (v9 + 18);
  return (*(v8 + 8 * (((v4 != 2) * v7) ^ a1)))();
}

uint64_t sub_100366DCC(uint64_t a1, int a2)
{
  v11.val[0].i64[0] = (v6 - v7 - 1) & 0xF;
  v11.val[0].i64[1] = (v6 - v7 + 14) & 0xF;
  v11.val[1].i64[0] = (v6 - v7 + 13) & 0xF;
  v11.val[1].i64[1] = (v6 - v7 + 12) & 0xF;
  v11.val[2].i64[0] = (v6 - v7 + 11) & 0xF;
  v11.val[2].i64[1] = (v6 - v7 + 10) & 0xF;
  v11.val[3].i64[0] = (v6 - v7 + a2 + 49) & 0xF;
  v11.val[3].i64[1] = (v6 - v7) & 0xF ^ 8;
  *(v8 + -8 - v7 + v6) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(v2 + -8 - v7 + v6), *(v4 + v11.val[0].i64[0] - 7)), veor_s8(*(v11.val[0].i64[0] + v3 - 2), *(v11.val[0].i64[0] + v5 - 5)))), 0x3333333333333333), vmul_s8(*&vqtbl4q_s8(v11, xmmword_101C759F0), 0x5959595959595959)));
  return (*(v9 + 8 * ((222 * (8 - (v6 & 0x18) == -v7)) ^ a2)))(xmmword_101C759F0);
}

void sub_100366FA8()
{
  v1 = (v0 + 908);
  vld1q_dup_f32(v1);
  JUMPOUT(0x100366FB8);
}

uint64_t sub_100367074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  HIDWORD(v31) = HIDWORD(a15) + 1566774765;
  LODWORD(v31) = 2035086611;
  v29.i64[0] = 0x3333333333333333;
  v29.i64[1] = 0x3333333333333333;
  LODWORD(a21) = (a3 + 1122973483) & 0x17E727F3;
  HIDWORD(a20) = 718 * (a21 ^ 0x160) - 1405531513;
  return sub_1003331FC(v29, vdupq_n_s32(0x68A0F0FFu), vdupq_n_s32(0xE8A0F0F8), a1, 2770969154, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a2 + a13, v31, a19, a20, a21, v28 - 16, a23, a24, a25, a26, a27, a28);
}

_DWORD *sub_100367234()
{
  v5 = 210068311 * (((~(v4 - 144) & 0x72EA49A6) - (~(v4 - 144) | 0x72EA49A7)) ^ 0xE03C7603);
  *(v4 - 116) = v5 + v0 + ((30 * (v3 ^ 0x2E8)) ^ 0xEA562E8D);
  *(v4 - 144) = v5 + v3 + 424;
  *(v4 - 136) = v1;
  *(v4 - 128) = v7;
  (*(v2 + 8 * (v3 + 1676)))(v4 - 144);
  result = v10;
  *v9 = v8;
  *v10 = -392105736;
  return result;
}

uint64_t sub_100367358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v30 - 120) = (v26 + 554) ^ (((((2 * (v30 - 144)) | 0x3C380F2) - (v30 - 144) + 2115911559) ^ 0x923D2C59) * v25);
  *(v30 - 112) = &a25;
  *(v30 - 104) = v28;
  *(v30 - 144) = &a25;
  *(v30 - 136) = &a21;
  *(v30 - 128) = v29;
  v31 = (*(v27 + 8 * (v26 ^ 0x82Cu)))(v30 - 144);
  return (*(v27 + 8 * ((((a11 - 2054041575) > 0x7FFFFFFE) | (8 * ((a11 - 2054041575) > 0x7FFFFFFE))) ^ (((v26 + 108) | 0x20C) - 396))))(v31);
}

uint64_t sub_100367484(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(v12 - 156);
  if (v13 == 2)
  {
    v15 = *(v12 - 160) != ((a3 + 1214121380) & 0x12785CFE) - 1254;
    return (*(v11 + 8 * (((32 * v15) | (v15 << 9)) ^ (a3 + a5))))(a11);
  }

  else
  {
    if (v13 != 1)
    {
      JUMPOUT(0x100367578);
    }

    return (*(v11 + 8 * (((*(v12 - 160) == 0) ^ (a3 + a5 + 1)) & 1 ^ (a3 + a5))))(a11);
  }
}

uint64_t sub_100367654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, uint64_t a12, uint64_t a13, int a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, unsigned int a22, uint64_t a23, char *a24, char *a25)
{
  a23 = a20;
  a24 = &a15;
  a25 = &a17;
  a22 = v25 - 143681137 * ((&a21 - 397790356 - 2 * (&a21 & 0xE84A336C)) ^ 0x8912B8BC) + 750;
  v27 = (*(v26 + 8 * (v25 ^ 0x82E)))(&a21);
  return (*(v26 + 8 * ((((v25 + 588) ^ 0x2F) * (a11 == a10)) ^ v25)))(v27);
}

uint64_t sub_1003676F4(uint64_t a1, int a2)
{
  v5 = (a2 ^ 0x710927D0) + v2;
  v6 = v4 - 1891128809 > v5;
  if (v4 - 1891128809 < (a2 ^ 0xF1Du) - 1863739200 != v5 < 0x90E9A12D)
  {
    v6 = v4 - 1891128809 < (a2 ^ 0xF1Du) - 1863739200;
  }

  return (*(v3 + 8 * ((198 * v6) ^ a2)))();
}

uint64_t sub_10036776C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36)
{
  v40 = (*(v37 + 8 * (v36 ^ 0xC6C)))(v39 + 4, 0);
  v41 = v39[4] + 22927718 - ((2 * v39[4]) & 0x2BBB2CC);
  v39[1] = v39[6] + 22927718 - ((2 * v39[6]) & 0x2BBB2CC);
  v39[2] = v41;
  v42 = (*(v37 + 8 * (v36 ^ 0xC44)))(v40);
  v39[3] = v42 + 22927718 - ((v42 << ((v36 ^ 0xE2) + v38)) & 0x2BBB2CC);
  v43 = (*(v37 + 8 * (v36 + 964)))();
  *v39 = v43 + 22927718 - ((2 * v43) & 0x2BBB2CC);
  LODWORD(a35) = a36 + 1;
  return sub_10036783C(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_10036783C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v47 = *(v45 + 4 * (v41 - 1));
  v48 = 1664525 * (((v47 ^ (v47 >> 30) ^ 0xC5534E8C) + 1887465515) ^ ((v47 ^ (v47 >> 30) ^ 0xF8B84B6) - 1168590319) ^ ((v47 ^ (v47 >> 30) ^ 0xCAD8CA3A) + 2131489949)) + 2118306107;
  *(v45 + 4 * v41) = (*(v44 + 4 * v43) ^ 0x15DD966) + v43 + ((*(v45 + 4 * v41) - ((2 * *(v45 + 4 * v41)) & 0x722BA986) - 1189751613) ^ v48 ^ ((v48 ^ 0x96755BD0) + 1791501722) ^ ((v48 ^ 0xC48BC113) + 943112027) ^ ((v48 ^ 0xAE46F582) + 1392217036) ^ ((v48 ^ 0xFFFAEEF7) + 55021759) ^ 0xBA575575);
  STACK[0x5C8] = v41 + 1 - a39;
  *(v46 - 112) = -1695099416 - a39 + v42;
  *(v46 - 132) = v42 - 477098545 - a39;
  *(v46 - 128) = -a39;
  *(v46 - 144) = ((v42 - 477098545) & 0xFFDDFB6B) + a39;
  *(v46 - 136) = v42 - 477098545 - a39 - 110;
  STACK[0x5A8] = a37;
  v49 = (*(a40 + 8 * (v42 ^ (v40 + 2361))))(v46 - 152);
  return (*(a40 + 8 * *(v46 - 140)))(v49);
}

uint64_t sub_100367A00()
{
  v6 = *(v9 + 16);
  v7 = 143681137 * ((((v5 - 144) | 0x95C428ED) + (~(v5 - 144) | 0x6A3BD712)) ^ 0xF49CA33C);
  *(v5 - 136) = v10;
  *(v5 - 128) = v7 + v3 + 222;
  *(v5 - 144) = v7 ^ 0x46F03C83;
  (*(v2 + 8 * (v3 ^ 0xC7B)))(v5 - 144);
  *(v5 - 144) = v4;
  *(v5 - 136) = v10;
  *(v5 - 128) = v0;
  *(v5 - 120) = (v3 - 470) ^ (1785193651 * ((2 * ((v5 - 144) & 0x3A0A8638) - (v5 - 144) + 1173715394) ^ 0x562995E2));
  *(v5 - 112) = v4;
  *(v5 - 104) = v1;
  (*(v2 + 8 * (v3 + 996)))(v5 - 144);
  *(v5 - 144) = v4;
  *(v5 - 136) = (v3 - 63) ^ (1785193651 * ((v5 - 1673515695 - 2 * ((v5 - 144) & 0x9C402DE1)) ^ 0x8F9CC1C1));
  *(v5 - 128) = v6;
  return (*(v2 + 8 * (v3 ^ 0xC02)))(v5 - 144);
}

uint64_t sub_100367C00(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  (*(v29 + 8 * (v28 + a1 + 2386)))(a17 + 0x40018400054880D1, 0x100004077774924);
  v31 = (*(v29 + 18544))();
  *v30 = v31;
  return sub_100367CDC(v31, 750730724, 3544237906, 2780539430, 1514427866, 488325080, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_100367DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, unsigned int a16, uint64_t a17, uint64_t a18, int *a19)
{
  a19 = &a14;
  a17 = a12;
  a16 = (v19 - 379) ^ (50899313 * (((&a16 | 0xDE189124) - (&a16 & 0xDE189124)) ^ 0xCA370CBF));
  v22 = (*(v20 + 8 * (v19 + 586)))(&a16);
  return (*(v20 + 8 * (((a14 == ((v19 - 1713379060) ^ 0x18828B20) + 1732480033) * (((v19 - 1713379060) & 0x817D74DF) + v21)) ^ v19)))(v22);
}

uint64_t sub_100367EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, _DWORD *a33)
{
  *a33 = v33;
  v39 = ((v36 ^ (v36 >> 11)) << 7) & 0x9D2C5680 ^ v36 ^ (v36 >> 11);
  v40 = (v39 << ((v34 + a9 - 47) ^ (a9 + 116))) & v37 ^ v39;
  *(*a28 + v35) ^= v40 ^ (v40 >> 18);
  return (*(v38 + 8 * ((a9 | 0x3A0) ^ (8 * (v35 < 0x1FC)))))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_100368204@<X0>(int a1@<W8>, __int16 a2, char a3, char a4, char a5, __int16 a6, char a7, uint64_t a8, int a9, char *a10, char *a11, char *a12, char a13, unsigned int a14, int a15)
{
  v18 = 742307843 * ((((2 * &a8) | 0x8A6AB6C8) - &a8 + 986358940) ^ 0xDB17D631);
  a8 = *(v15 + 32);
  a10 = &a5;
  a14 = (((a1 ^ 0x1757E073) - 391635059) ^ ((a1 ^ 0xB0A808ED) + 1331164947) ^ ((a1 ^ 0xBC048F0D) + v17 + 382 + 1140551378)) - v18 + 667363276;
  a15 = v17 - v18 - 473373827;
  a11 = &a7;
  a12 = &a4;
  a13 = (3 * ((((2 * &a8) | 0xC8) - &a8 - 100) ^ 0x31)) ^ 0x61;
  v19 = (*(v16 + 8 * (v17 + 2255)))(&a8);
  return (*(v16 + 8 * ((2265 * (a9 == -392105736)) ^ v17)))(v19);
}

uint64_t sub_100368378@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v9 = ((v6 + v4) & v5 ^ a1) + v3;
  *(v8 + v9) = *(a3 + v9);
  return (*(v7 + 8 * (((v9 == 0) * a2) ^ v6)))();
}

uint64_t sub_100368410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = v7 - 1;
  *(a5 + v10) = *(v6 + v10);
  return (*(v9 + 8 * ((3790 * (v10 == ((v8 + 1966528404) & 0x5C47E77E) - 844)) ^ (a6 + v8 + 1463))))();
}

void sub_100368460(uint64_t a1@<X8>, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v10 = v9 - 1115;
  v11 = (v7 ^ 0x3AC20CEF) & (2 * (v7 & (v8 + 1))) ^ v7 & (v8 + 1);
  v12 = ((2 * (v7 ^ 0x3AC29471)) ^ 0x1481B57C) & (v7 ^ 0x3AC29471) ^ (2 * (v7 ^ 0x3AC29471)) & 0x8A40DABE;
  v13 = ((4 * (v12 ^ (v9 + 927422468) & 0xC8B8A7FB ^ 0x8A404D79)) ^ 0x29036AF8) & (v12 ^ (v9 + 927422468) & 0xC8B8A7FB ^ 0x8A404D79) ^ (4 * (v12 ^ (v9 + 927422468) & 0xC8B8A7FB ^ 0x8A404D79)) & 0x8A40DABC;
  v14 = (v13 ^ 0x8004AB0) & (16 * ((v12 ^ 0x84010BC) & (4 * v11) ^ v11)) ^ (v12 ^ 0x84010BC) & (4 * v11) ^ v11;
  v15 = ((16 * (v13 ^ 0x82409006)) ^ 0xA40DABE0) & (v13 ^ 0x82409006) ^ (16 * (v13 ^ 0x82409006)) & 0x8A40DAB0;
  v16 = v14 ^ 0x8A40DABE ^ (v15 ^ 0x80008A00) & (v14 << 8);
  v17 = ((&a3 - 1688391011 - 2 * (&a3 & 0x9B5D329D)) ^ 0x4A5F1FE2) * v6;
  a3 = v7 ^ v17 ^ (2 * ((v16 << 16) & 0xA400000 ^ v16 ^ ((v16 << 16) ^ 0x5ABE0000) & (((v15 ^ 0xA40501E) << 8) & 0xA400000 ^ 0xA000000 ^ (((v15 ^ 0xA40501E) << 8) ^ 0x40DA0000) & (v15 ^ 0xA40501E)))) ^ 0x2C61DF4A;
  a4 = (v10 + 60) ^ v17;
  a5 = a1;
  (*(v5 + 8 * (v10 ^ 0xAC1)))(&a3);
  JUMPOUT(0x10035D364);
}

uint64_t sub_100368678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 709;
  v6 = ((v5 - 421670011) & 0x19222F37) - 1074 + a2;
  v7 = *(v4 + v6 - 15);
  v8 = *(v4 + v6 - 31);
  v9 = a1 + v6;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v3 + 8 * ((998 * ((a2 & 0xFFFFFFE0) == 32)) ^ (v5 + 131))))();
}

uint64_t sub_100368700@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a45 == 2)
  {
    v56 = (v46 + v48 + 1201658629);
    v57 = ((*v56 ^ v51) << ((-109 * ((3 * BYTE4(a26)) ^ 0x16)) ^ 0x1D)) + ((v56[1] ^ v51) << 16) + ((v56[2] ^ v51) << 8);
    *v50 = v57 + (v56[3] ^ v51) + v52 - 2 * ((v57 + (v56[3] ^ v51)) & 0x68A0F0FF ^ (v56[3] ^ v51) & 7);
    v58 = *(v47 + 8 * ((261 * ((v48 + 1201658633) < 0x40)) ^ (3 * HIDWORD(a26))));
    return v58((147 * ((3 * HIDWORD(a26)) ^ 0x416)) ^ 0x41Du, 1201658633, v49 + 16, v58, 2684354560, 4294901760, a5, a6, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
  }

  else if (a45 == 1)
  {
    v53 = (a1 + 655);
    v54 = *(v46 + (v53 ^ (v48 + 341)) + 1201658629) ^ v51;
    v55 = ((*(v48 + 1201658629 + v46 + 2) ^ v51) << 16) | ((*(v48 + 1201658629 + v46 + 3) ^ 0x33333333) << 24) | v54 | ((*(v48 + 1201658629 + v46 + 1) ^ v51) << 8);
    *v50 = v55 + v52 - 2 * (v55 & 0x68A0F0FF ^ v54 & 7);
    return (*(v47 + 8 * ((120 * ((v48 + 1201658633) < 0x40)) ^ v53)))(1298399232, 571015168, 4294901760, 1201658629, a3, a4, a5, a6, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
  }

  else
  {
    return (*(v47 + 8 * a7))(1772027904, 135069697, a1, a2, a3, a4, a5, a6, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, *(v47 + 8 * a7), a30, a31, a32, a33, a34, a35);
  }
}

uint64_t sub_100368DE4()
{
  STACK[0x288] = v2;
  v4 = 1388665877 * ((-560808100 - ((v3 - 200) | 0xDE92BF5C) + ((v3 - 200) | 0x216D40A3)) ^ 0xACC0224F);
  v5 = (v3 - 200);
  v5[4] = 0;
  v5[1] = &STACK[0x2E0];
  *v5 = &STACK[0x310];
  *(v3 - 184) = v4 + v1 + 85;
  *(v3 - 180) = v4 + 452683664;
  v6 = (*(v0 + 8 * (v1 ^ 0x91A)))(v3 - 200);
  return (*(v0 + 8 * (((*(v3 - 176) == -392105736) * ((v1 - 13) ^ 0xDC)) ^ v1)))(v6);
}

uint64_t sub_100368EEC(uint64_t a1, uint64_t a2)
{
  *(v3 + 1424) = v2;
  *(*(a1 + 96) + 520) = *(a2 + 8) + 1;
  return 0;
}

uint64_t sub_100368F0C@<X0>(uint64_t a1@<X1>, int a2@<W6>, unsigned int a3@<W8>)
{
  v8 = *(v7 - 220 + a3 + 72);
  v9 = ((2 * a3) & 0xAF7751E8) + ((v3 - a2 - 334114424) ^ a3) + v5;
  *(a1 + v9) = (HIBYTE(v8) ^ 0xA2) - ((2 * (HIBYTE(v8) ^ 0xA2)) & 0x66) + 51;
  *(a1 + v9 + 1) = (BYTE2(v8) ^ 0x4C) - ((v8 >> 15) & 0x66) + 51;
  *(a1 + v9 + 2) = (BYTE1(v8) ^ 0xD0) - 2 * ((BYTE1(v8) ^ 0xD0) & 0x37 ^ BYTE1(v8) & 4) + 51;
  *(a1 + v9 + 3) = v8 ^ 0x5E;
  return (*(v6 + 8 * (((a3 + 4 < *(v7 - 128)) * v4) ^ v3)))();
}

uint64_t sub_1003690DC@<X0>(int a1@<W5>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  v60 = (v58 + 4 * v55);
  v61 = v56 & 0x80000000;
  v62 = v55 + 1;
  v63 = *(v58 + 4 * v62);
  v64 = v60[397] ^ ((v63 & 0x7FFFFFFE | v61) >> 1);
  *v60 = (v64 + v59 - (((a2 + 1141675415) & 0xBBF36DFD ^ a1) & (2 * v64))) ^ *(&a55 + (v63 & 1));
  return (*(v57 + 8 * ((406 * (v62 == 227)) ^ a2)))();
}

uint64_t sub_100369278@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = ~v5 + v3;
  v10 = *(a3 + v9 - 15);
  v11 = *(a3 + v9 - 31);
  v12 = a1 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v8 + 8 * ((1023 * ((((v6 + 33) | v7) ^ a2) + v5 == v4)) ^ (v6 + 1249))))();
}

uint64_t sub_100369368@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14, uint64_t a15, uint64_t a16, int a17, int a18, unint64_t a19)
{
  *a14 = a1;
  LODWORD(STACK[0x22C]) = a17;
  STACK[0x230] = a19;
  LODWORD(STACK[0x238]) = a18 - v21 + 2004488308;
  STACK[0x240] = v25 + v21 - 27393310 + ((v19 - 1440732396) & 0x55DFD696u);
  v26 = v19;
  v27 = (*(v22 + v24 * v20 + 8))(a7);
  return (*(v23 + 8 * ((54 * (v27 - 392105736 - ((2 * v27) & 0xD141E1F0) != -392105736)) ^ v26)))();
}

uint64_t sub_1003698F0(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_1003699AC@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, _DWORD *a3@<X8>)
{
  v7 = *result;
  v8 = *(result + 32);
  v9 = *(result + 16);
  *a3 = v5;
  *v9 = v4;
  *v8 = v6;
  *v7 = v3 + a2;
  *(result + 8) = -392105736;
  return result;
}

uint64_t sub_1003699F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = (a13 + v14);
  *(v18 - 1) = v17;
  *v18 = v17;
  return (*(v16 + 8 * ((((((v15 + 73) ^ 0x5A4) & v13) != 16) * ((((v15 + 73) ^ 0xEF) - 264) ^ 0x49C)) ^ (v15 + 73) ^ 0xEF)))();
}

uint64_t sub_100369F10@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 - 1;
  *(a1 + v5) = ((v2 + 41) ^ 0x22) + *(v1 + v5) - ((2 * *(v1 + v5)) & 0x66);
  return (*(v4 + 8 * ((4044 * (v5 == 0)) ^ v2)))();
}

void sub_100369FC4()
{
  LODWORD(STACK[0x208]) = 0;
  STACK[0x210] = 0;
  JUMPOUT(0x10034FE5CLL);
}

uint64_t sub_10036A088(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v11 = a4 + (((v8 - 1097) | 1) ^ 0x9B2FD3B6);
  v12 = v9 - 1250444298 < v11;
  if (v9 - 1250444298 < a8 != v11 < a8)
  {
    v12 = v11 < a8;
  }

  return (*(v10 + 8 * ((124 * v12) ^ v8)))();
}

uint64_t sub_10036A0F0(__n128 a1, __n128 a2)
{
  a1.n128_u16[0] = 26214;
  a1.n128_u8[2] = 102;
  a1.n128_u8[3] = 102;
  a1.n128_u8[4] = 102;
  a1.n128_u8[5] = 102;
  a1.n128_u8[6] = 102;
  a1.n128_u8[7] = 102;
  a2.n128_u16[0] = 13107;
  a2.n128_u8[2] = 51;
  a2.n128_u8[3] = 51;
  a2.n128_u8[4] = 51;
  a2.n128_u8[5] = 51;
  a2.n128_u8[6] = 51;
  a2.n128_u8[7] = 51;
  return sub_10036A11C(v2 ^ 0x521, 926, a1, a2);
}

void sub_10036A624(int a1@<W8>)
{
  v5 = *v2;
  v6 = *(v2 + 4) + a1;
  *(*v2 + v6) = (HIBYTE(v1) ^ 8) - ((v1 >> 23) & 0x66) + 51;
  *(v5 + v6 + 1) = (BYTE2(v1) ^ 0xAB) - ((2 * (BYTE2(v1) ^ 0xAB)) & 0x66) + 51;
  *(v5 + v6 + 2) = (BYTE1(v1) ^ 0xB7) - ((2 * (BYTE1(v1) ^ 0xB7)) & 0x66) + 51;
  *(v5 + v6 + 3) = v1 ^ 0xEE;
  v7 = *v2;
  v8 = ((v4 ^ 0x5CCC0008) - 1951671066) ^ v4 ^ ((v4 ^ 0xB2BFC2D0) + 1708662334) ^ ((v4 ^ 0xBD541F35) + 1781777369) ^ ((v4 ^ 0x7BBFFEFF) - 1395121645);
  v9 = ((2 * (a1 + *(v2 + 4) + 4)) & 0xAF3FD5EE) + ((a1 + *(v2 + 4) + 4) ^ 0x579FEAF7) - 1470098167;
  *(*v2 + v9) = (HIBYTE(v8) ^ 0x28) - ((2 * (HIBYTE(v8) ^ 0x28)) & 0x66) + 51;
  *(v7 + v9 + 1) = (BYTE2(v8) ^ 0x98) - ((2 * (BYTE2(v8) ^ 0x98)) & 0x66) + 51;
  *(v7 + v9 + 2) = (BYTE1(v8) ^ 0x23) - 2 * ((BYTE1(v8) ^ 0x23) & 0x37 ^ ((((v4 ^ 8) - 8986) ^ v4 ^ ((v4 ^ 0xC2D0) + 7742) ^ ((v4 ^ 0x1F35) - 15399) ^ ((v4 ^ 0xFEFF) + 8723)) >> 8) & 4) + 51;
  *(v7 + v9 + 3) = ((v4 ^ 8) - 26) ^ v4 ^ ((v4 ^ 0xD0) + 62) ^ ((v4 ^ 0x35) - 39) ^ (18 - v4) ^ 0x21;
  *(v2 + 4) = v3;
  sub_100365AB0();
}

uint64_t sub_10036A804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v20 - 120) = &a17;
  *(v20 - 128) = a15;
  *(v20 - 136) = (v19 + 1733) ^ (210068311 * ((v20 - 136) ^ 0x92D63FA4));
  v21 = (*(v18 + 8 * (v19 ^ 0xB2E)))(v20 - 136);
  return (*(v18 + 8 * ((22 * ((((v19 - 159) ^ (v17 == 1)) & 1) == 0)) ^ v19)))(v21);
}

uint64_t sub_10036A88C()
{
  v4 = v1 < 0xDF8CD920;
  if (v4 == v0 + 1 > (v2 - 1016) - 3750550202u)
  {
    v4 = (v2 ^ 0xDF8CDCB0uLL) + v0 < v1;
  }

  return (*(v3 + 8 * ((84 * !v4) ^ v2)))();
}

uint64_t sub_10036A904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, unsigned int a18, char *a19, unsigned int a20)
{
  v22 = 1564307779 * (((&a15 | 0x8429BA6B) - (&a15 & 0x8429BA6B)) ^ 0x13247678);
  a19 = &a12;
  a17 = v21 - v22 - 2013067936;
  a18 = -559773842 - v22;
  a20 = 1016788250 - v22;
  a15 = a11;
  v23 = (*(v20 + 8 * (v21 + 905)))(&a15);
  return (*(v20 + 8 * ((893 * (a16 == ((((v21 + 285186698) & 0x23F5) - 392105441) ^ (v21 + 1785985655) & 0x406FF))) ^ v21)))(v23);
}

uint64_t sub_10036A9F4(_DWORD *a1)
{
  v2 = *a1 + 1388665877 * ((-2 - ((a1 | 0xAD68937B) + (~a1 | 0x52976C84))) ^ 0xDF3A0E68);
  v3 = v2 + 542396559;
  result = (*(*(&off_10244F320 + (v2 ^ 0xDFABAFB2)) + (v2 ^ 0xDFABA6D0) - 1))(*(&off_10244F320 + (v2 + 542396559)) - 4, sub_10034DB94);
  v5 = **(&off_10244F320 + (v3 + 74));
  if (result)
  {
    v5 = 392145478;
  }

  a1[1] = v5;
  return result;
}

uint64_t sub_10036AC00()
{
  v4 = v3 - 200;
  *(v0 + 5384) = &STACK[0x7EBFE2D7880B29C0];
  *(v3 - 196) = (v2 + 1688) ^ (1785193651 * ((((2 * (v3 - 200)) | 0xD7F5458E) - (v3 - 200) - 1811587783) ^ 0x78264EE7));
  *v4 = 85 - -77 * ((((2 * (v3 + 56)) | 0x8E) - (v3 + 56) + 57) ^ 0xE7);
  *(v4 + 24) = &STACK[0x6F65BB927020959F];
  v5 = (*(v1 + 8 * (v2 + 2024)))(v3 - 200);
  v6 = *(v3 - 192);
  LODWORD(STACK[0x4EC]) = v6;
  return (*(v1 + 8 * ((104 * (((v2 - 125) ^ (v6 == -392105736)) & 1)) ^ (v2 + 561))))(v5);
}

uint64_t sub_10036AD04@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  v11 = a9 + ((v10 + 235229057) & 0xF1FAAC7D) - 1140702802;
  v12 = a1 - 672390887 < v11;
  if (a1 > 0x2813DEE6 != v11 < 0xD7EC2119)
  {
    v12 = v11 < 0xD7EC2119;
  }

  return (*(v9 + 8 * ((26 * !v12) ^ v10)))();
}

uint64_t sub_10036AE08()
{
  v5 = *(v3 + 4 * (v1 - 1));
  *(v3 + 4 * v1) = ((1566083941 * (v5 ^ (v5 >> 30))) ^ *(v3 + 4 * v1)) - v1;
  v6 = STACK[0x298];
  v7 = -LODWORD(STACK[0x298]);
  *(v4 - 160) = v0 - STACK[0x298] + 1212455196;
  v8 = v0 + 1484534102 - v6;
  v9 = (v4 - 200);
  v9[4] = v1 + 1 - v6;
  *(v4 - 180) = v8;
  *(v4 - 176) = v7;
  *(v4 - 192) = ((v0 + 1484534102) ^ 0x10) + v6;
  *(v4 - 184) = v8 - 31;
  *v9 = 623 - v6;
  v10 = (*(v2 + 8 * (v0 ^ 0x83D)))(v4 - 200);
  return (*(v2 + 8 * *(v4 - 188)))(v10);
}

uint64_t sub_10036AF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x2B0] = 742307843 * ((v5 - 200) ^ 0xB39CDD6B1E228D55);
  STACK[0x2A0] = 742307843 * (((~(v5 - 200) | 0x7A27A0F1638297F8) + ((v5 - 200) | 0x85D85F0E9C7D6807)) ^ 0x36448265825FE553);
  STACK[0x298] = 1361651671 * (((~(v5 - 200) | 0xD317594E3965C452) + ((v5 - 200) | 0x2CE8A6B1C69A3BADLL)) ^ 0xFF45D58815B8CB20);
  LODWORD(STACK[0x274]) = v4 - 2054008415;
  LODWORD(STACK[0x270]) = v4 ^ 0x1D4;
  v6 = 742307843 * ((2 * ((v5 - 200) & 0x34D3DA31C34AFC98) - (v5 - 200) + 0x4B2C25CE3CB50360) ^ 0xF8B0F8A522978E35);
  STACK[0x228] = v6;
  STACK[0x220] = v6 + 5119;
  LODWORD(STACK[0x21C]) = v4 ^ 0x7AD;
  LODWORD(STACK[0x294]) = (v4 - 250730835) ^ 0x3D;
  LODWORD(STACK[0x2AC]) = v4 - 250730835;
  LODWORD(STACK[0x290]) = (v4 - 250730835) ^ 0x5E;
  LODWORD(STACK[0x2B8]) = v4;
  return sub_10036B35C(a1, 0, a3, a4, 392145697);
}

uint64_t sub_10036B35C@<X0>(int a1@<W7>, int a2@<W8>)
{
  v5 = (a2 ^ 0x26Fu) + *(v4 + 264) + 1035;
  LODWORD(STACK[0x43C]) = a1;
  v6 = *(v3 + 8 * (a2 ^ 0x7B3));
  v7 = *(v2 + 8 * ((3999 * (*(v6 - 4) == ((a2 + 184624771) & 0xF4FED3FF) - 413)) ^ a2));
  *(v4 + 264) = v5;
  STACK[0x238] = v6;
  STACK[0x230] = v6 + 16;
  STACK[0x200] = *(v3 + 8 * (a2 - 1803));
  STACK[0x240] = v6 - 4;
  return v7();
}

void sub_10036B440(uint64_t a1)
{
  v1 = *(a1 + 32) + 1785193651 * ((2 * (a1 & 0x3B308A28) - a1 + 1154446807) ^ 0x571399F7);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10036B568(uint64_t a1, uint64_t a2, int a3)
{
  v8 = 1785193651 * ((v6 - ((v7 - 152) | v6) + ((v7 - 152) | 0x247786205CEAC705)) ^ 0x3043F00E4F362B25);
  STACK[0x5B0] = *v4 + v8;
  STACK[0x5B8] = v8;
  v9 = (v3 + 1493031442) ^ v8;
  *(v7 - 120) = v3 + 1493031442 - v8 - 114;
  *(v7 - 116) = v8;
  *(v7 - 128) = v9;
  *(v7 - 152) = 1443382250 - v8 + v3;
  *(v7 - 148) = v9 ^ 0x81;
  v10 = (*(v5 + 8 * (a3 + v3 + 2336)))(v7 - 152);
  return (*(v5 + 8 * *(v7 - 124)))(v10);
}

uint64_t sub_10036B75C@<X0>(int a1@<W8>)
{
  v4 = (v1 - 771) | 0x157;
  v5 = ((((v4 - 1137073696) & 0x43C65FCB) + 912) ^ (a1 + 2197)) + v2;
  if (v5 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = -v5;
  }

  return (*(v3 + 8 * ((62 * (v6 < 131)) ^ v4)))();
}

uint64_t sub_10036B7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  *(v6 - 128) = 395 * (a2 ^ 0x7E0);
  *(v6 - 112) = veorq_s8(*v7, xmmword_101C75A60);
  *(v6 - 144) = v4;
  if (v4)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  v11 = *(v5 + 8 * ((14 * v10) ^ a2));
  *(v6 - 132) = -42900;
  return v11(a1, a2, a3);
}

uint64_t sub_10036BF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, __int128 a48)
{
  v52 = *(a19 + 24);
  memset(&a48, 51, sizeof(a48));
  v53 = 1037613739 * ((((v51 - 168) ^ 0x78F5287C) & 0x6819443D | ~((v51 - 168) ^ 0x78F5287C | 0x6819443D)) ^ 0x3E11BEC1);
  STACK[0x2C0] = &a48;
  STACK[0x2C8] = v52;
  STACK[0x2D0] = v51 - 188;
  STACK[0x2E0] = &a33;
  *(v51 - 136) = (v48 + 1543) ^ v53;
  *(v51 - 168) = v53 + 1692047150;
  v54 = (*(v49 + 8 * (v48 ^ 0x95D)))(v51 - 168);
  return (*(v49 + 8 * (((*(v51 - 132) == v50) * ((v48 + 982) ^ (v48 - 87) ^ 0x5B)) ^ v48)))(v54);
}

uint64_t sub_10036C040()
{
  v6 = 1037613739 * (((v4 | 0xAE491F08) - v4 + (v4 & 0x51B6E0F0)) ^ 0x7F4B3277);
  *(v5 - 120) = v6 + v3 + 1551;
  *(v5 - 136) = ((v3 ^ 0x4B2 ^ v0 ^ 0xEFFFB227) + ((2 * v0) & 0xDFFF6EF2) + 1602091448) ^ v6;
  *(v5 - 128) = v2;
  v7 = (*(v1 + 8 * (v3 ^ 0x8F1)))(v5 - 136);
  return sub_10036C0E0(v7);
}

uint64_t sub_10036C0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v19 - 128) = a15;
  *(v19 - 120) = a16;
  *(v19 - 136) = (v18 + 808) ^ (843532609 * (((v17 ^ 0x85E9580E | 0xCF8C91B7) - (v17 ^ 0x85E9580E) + ((v17 ^ 0x85E9580E) & 0x30736E48)) ^ 0x16289D3C));
  v20 = (*(v16 + 8 * (v18 ^ 0xC46)))(v19 - 136);
  return (*(v16 + 8 * (((*(v19 - 132) <= (((v18 - 1084) | 0x498) ^ 0x267991CCu)) * (v18 ^ 0x56B)) ^ v18)))(v20);
}

uint64_t sub_10036C19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, unsigned int a20, char *a21, unsigned int a22)
{
  v25 = 1564307779 * ((&a17 + 1648973795 - 2 * (&a17 & 0x624957E3)) ^ 0xF5449BF0);
  a17 = a16;
  a21 = &a14;
  a19 = v23 - v25 - 2013068417;
  a20 = -268634697 - v25;
  a22 = 1016788250 - v25;
  v26 = (*(v24 + 8 * (v23 + 424)))(&a17);
  return (*(v24 + 8 * ((4015 * (a18 == v22 + ((v23 + 1425251562) & 0x1FD9) - 1049)) ^ v23)))(v26);
}

uint64_t sub_10036C550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 128) = (v18 + 1869) ^ (210068311 * ((v19 - 128) ^ 0x92D63FA4));
  *(v19 - 120) = v17;
  *(v19 - 112) = &a15;
  v20 = (*(v16 + 8 * (v18 ^ 0x856)))(v19 - 128);
  return (*(v16 + 8 * (((v18 + 990 + v18 + 967 - 2465) * (v15 == 1)) ^ v18)))(v20);
}

uint64_t sub_10036C5CC(uint64_t result)
{
  v1 = 1785193651 * (((result | 0xED81C447D9FA58CLL) - result + (result & 0xF127E3BB82605A73)) ^ 0x1AEC6A6A6E4349ACLL);
  v2 = *(result + 4) ^ v1;
  v3 = *(result + 36) - v1;
  v4 = *(result + 24) ^ v1;
  v5 = *(result + 16) ^ v1;
  v6 = *(result + 32) + v1;
  v7 = *(result + 8) - v1;
  v8 = v7 > v5;
  v9 = v7 == v5;
  v10 = v8;
  if (v3)
  {
    v9 = v10;
  }

  if (v9)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  *(result + 28) = v2 ^ v11;
  return result;
}

uint64_t sub_10036C6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, __int16 a15, char a16, uint64_t a17, int a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char *a25)
{
  LODWORD(a22) = (v26 + 1065) ^ (((((2 * &a22) | 0x544AE290) - &a22 + 1440386744) ^ 0xBE0AECD3) * v25);
  a23 = a21;
  a25 = &a16;
  v28 = (*(v27 + 8 * (v26 + 2030)))(&a22);
  return sub_100342488(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_10036C718@<X0>(int a1@<W1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, _DWORD *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, int a38)
{
  *a24 = a38 + 89408770;
  v42 = *v38;
  v43 = 1361651671 * ((0xFD58B8C0232C4E9 - (v40 | 0xFD58B8C0232C4E9) + a12) ^ 0x2387074A2EEFCB9ALL);
  *(v41 - 112) = -1695099416 - v43 + a2;
  STACK[0x5A8] = 5119 - v43;
  *(v41 - 136) = ((a2 - 1885195804) ^ 0x4F) - v43;
  *(v41 - 132) = a2 - 1885195804 - v43;
  *(v41 - 144) = v43 + a2 - 1885195804 + 28;
  STACK[0x5C8] = v42 - v43;
  *(v41 - 128) = -1361651671 * ((36881641 - (v40 | 0x232C4E9) + a12) ^ 0x2EEFCB9A);
  v44 = (*(v39 + 8 * (a1 + a2 + 2376)))(v41 - 152);
  return (*(v39 + 8 * *(v41 - 140)))(v44);
}

void sub_10036C8B4(uint64_t a1)
{
  v1 = *a1 + 1388665877 * ((-2 - ((a1 | 0xF3824F06) + (~a1 | 0xC7DB0F9))) ^ 0x81D0D215);
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 8);
  v5 = *(a1 + 40);
  v10[0] = 0x2D7F28BD00000082;
  v10[1] = &v11;
  v9[0] = 0x2D7F28BD00000082;
  v9[1] = &v12;
  v6 = v3[1];
  v17 = v10;
  v18 = v5;
  v16 = (1785193651 * (&v13 ^ 0x13DCEC20)) ^ (v1 - 470);
  v14 = v2;
  v15 = v3;
  v13 = v6;
  v7 = *(&off_10244F320 + (v1 & 0xAEE3A2A1)) - 8;
  (*&v7[8 * (v1 ^ 0xC2C)])(&v13);
  v8 = *v3;
  v15 = v9;
  v13 = v8;
  LODWORD(v14) = (1785193651 * (((&v13 | 0xEEB9FD85) + (~&v13 | 0x1146027A)) ^ 0xFD6511A4)) ^ (v1 - 63);
  (*&v7[8 * v1 + 8176])(&v13);
  v14 = v4;
  HIDWORD(v13) = v1 + 1388665877 * (((&v13 | 0xDAA33F71) - (&v13 & 0xDAA33F71)) ^ 0x570E5D9D) + 519;
  (*&v7[8 * v1 + 8464])(&v13);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10036CAC0(uint64_t a1, uint64_t a2, int a3)
{
  v15 = (v12 + 4 * v14);
  v16 = HIDWORD(v7) + v6 * (*(v13 + 4 * v14) ^ v3) + (*v15 ^ v3) + HIDWORD(v5) + v9 * ((v4 - 238) ^ (v3 - 1128) ^ *(v11 + 4 * v14));
  *(v15 - 1) = v16 + v3 - (a3 & (2 * v16));
  return (*(v10 + 8 * ((14 * (v14 + 1 == v8)) ^ v4)))();
}

uint64_t sub_10036CD14@<X0>(int a1@<W8>, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  *a3 = a1;
  v58 = (*(v54 + 48 * v57 + 8))(a4);
  return (*(v55 + 8 * ((1804 * (v58 - 392105736 - ((2 * v58) & 0xD141E1F0) == -392105736)) ^ v56)))(v58, v59, 2184529142, 2147483652, 268898960, 3902861560, 3826655451, 2997365166, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_10036D0DC()
{
  v4 = (*(v1 + 8 * (v0 ^ 0x859)))();
  LODWORD(STACK[0x43C]) = v2;
  return (*(v1 + 8 * (((((v0 - 234) | 0x215) - 80) * v3) ^ (v0 - 171))))(v4);
}

uint64_t sub_10036D140(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = 4 * a5 - 3053232888;
  v11 = (((*(*(v5 + 8) + v10) ^ 0x221F9504) + ((a3 + 525) ^ 0xDDE0627A)) ^ ((*(*(v5 + 8) + v10) ^ 0xB3AB3407) + 1280625657) ^ ((*(*(v5 + 8) + v10) ^ 0x68F2DE81) + ((232 * (a3 ^ 0x67C)) ^ 0x970D25F7))) + v9;
  v12 = (((*(*(v6 + 8) + v10) ^ 0xB3DC0FFA) + 1277423622) ^ ((*(*(v6 + 8) + v10) ^ 0xD2C91CD7) + 758571817) ^ ((*(*(v6 + 8) + v10) ^ 0x98536CAF) + 1739363153)) + v9;
  v13 = v11 < v8;
  v14 = v11 > v12;
  if (v13 != v12 < v8)
  {
    v14 = v13;
  }

  return (*(v7 + 8 * (a3 ^ (4 * v14))))();
}

uint64_t sub_10036D358@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5) - ((*(v1 + v5) << (v3 ^ 8)) & 0x66) + 51;
  return (*(v4 + 8 * ((26 * (v5 == 0)) ^ v3)))();
}

void sub_10036D394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(&off_10244F320 + (byte_101C6E634[(byte_101C69CA0[(-39 * ((qword_1025D5288 - dword_1025D5290) ^ 0x42))] ^ 0xB) - 4] ^ (-39 * ((qword_1025D5288 - dword_1025D5290) ^ 0x42))) - 111);
  v5 = -39 * ((qword_1025D5288 - *v4) ^ 0x42);
  v6 = *(&off_10244F320 + (byte_101C757E8[(byte_101C716B4[v5 - 4] ^ 0xAB) - 8] ^ v5) - 118);
  v7 = 329992409 * ((*(v6 - 4) - *v4) ^ &v12 ^ 0x3F921ABBB7B42942);
  *v4 = v7;
  *(v6 - 4) = v7;
  v10 = 0;
  v14 = 210068311 * ((&v13 + 174337030 - 2 * (&v13 & 0xA642C06)) ^ 0x98B213A2) - 1224077185;
  v13 = &v10;
  LOBYTE(v7) = -39 * (*v4 ^ 0x42 ^ *(v6 - 4));
  v8 = *(&off_10244F320 + ((-39 * (dword_1025D5290 ^ 0x42 ^ qword_1025D5288)) ^ byte_101C757E0[byte_101C716B0[(-39 * (dword_1025D5290 ^ 0x42 ^ qword_1025D5288))] ^ 0x3B]) - 217) - 8;
  (*&v8[8 * (byte_101C69BAC[(byte_101C758E8[v7 - 8] ^ 0xF3) - 12] ^ v7) + 18864])(&v13);
  v11 = 0;
  v13 = &v11;
  v14 = 210068311 * (((&v13 | 0xF7630E9B) + (~&v13 | 0x89CF164)) ^ 0x65B5313E) - 1224077185;
  v9 = -39 * ((*(v6 - 4) - *v4) ^ 0x42);
  (*&v8[8 * (byte_101C69AA0[byte_101C756E4[v9 - 4] ^ 0x89] ^ v9) + 18544])(&v13);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10036D6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  LODWORD(STACK[0x2E4]) = 2;
  STACK[0x2D8] = 0;
  LODWORD(STACK[0x2C8]) = 0;
  LODWORD(STACK[0x344]) = 0;
  return (*(v41 + 8 * (((((a8 + 112976222) & 0xF9441D76) + ((a8 + 235) ^ 0xFFFFFD53)) * ((v40 & 2) == 0)) ^ a8)))(a1, a2, a3, a4, a5, v42 + 2048, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, v42 + 2048, a40);
}

uint64_t sub_10036D7D4@<X0>(int a1@<W8>)
{
  v8 = (((~v2 & 0x72AD34FA) - (~v2 | 0x72AD34FB)) ^ 0xFF005617) * v1;
  v6[1] = &STACK[0x304];
  *v6 = &STACK[0x308];
  *(v7 - 184) = v8 + v3 + 98;
  *(v7 - 180) = a1 + v8;
  v6[4] = 0;
  (*(v4 + 8 * (v3 ^ 0x915)))(v7 - 200);
  v9 = *(v7 - 176);
  STACK[0x380] = STACK[0x288];
  return (*(v4 + 8 * (((v9 == (v3 ^ 0x135 ^ (v5 + 148))) * (((v3 + 1525700019) & 0xA50FAB7F) + 1015)) ^ v3)))(3450863079, 1339, 3644003432, 650963279, 392145697, 3522093884, 2730212021, 3902861560);
}

uint64_t sub_10036D9B4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned int a25, unsigned int a26, uint64_t a27, int a28)
{
  v34 = ((((v30 - 1110) | 0x10) ^ 0xFFFFFFC1) & a2) + 16;
  v31 = 2066391179 * (((&a25 | 0x97EC8519) + (~&a25 | 0x68137AE6)) ^ 0x38CB0700);
  a28 = v30 - v31 - 653;
  a27 = v28;
  a25 = v31 + (((v30 ^ 0x49A071B2) + a2 - a13) ^ 0x74FB2DFD) + ((2 * ((v30 ^ 0x49A071B2) + a2 - a13)) & 0xE9F65BFA) - 1679820157;
  a26 = ((v34 ^ 0xBE3FED37) + 2113658622 + ((2 * v34) & 0x7C7FDA60)) ^ v31;
  v32 = (*(v29 + 8 * (v30 + 1246)))(&a25);
  return (*(v29 + 8 * ((505 * (*(v28 + 24) == -392105736)) ^ v30)))(v32);
}

void sub_10036DB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  v16 = (((((v15 - 144) | 0xA2587960) ^ 0xFFFFFFFE) - (~(v15 - 144) | 0x5DA7869F)) ^ 0xC6E07015) * a10;
  *(v15 - 136) = v10 - v16 - 18698496 + v14;
  *(v15 - 132) = v14 - v16 + 1272;
  *(v15 - 128) = v11;
  *(v15 - 144) = v13;
  (*(v12 + 8 * (v14 + 1696)))(v15 - 144);
  JUMPOUT(0x1003672BCLL);
}

uint64_t sub_10036DBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, int a13, int a14, char *a15, char a16, uint64_t a17)
{
  v24 = *(v17 + 20) + v23;
  v25 = 1361651671 * ((&a12 - 2 * (&a12 & 0x20B2637E) + 548561790) ^ 0xF39093F2);
  a17 = v22;
  a16 = ((((v24 ^ 0xCE) + 50) ^ ((v24 ^ 7) - 7) ^ ((v24 ^ 0xF4 ^ (74 * (v20 ^ 0x3D))) - 82)) + 23) ^ (-41 * ((&a12 - 2 * (&a12 & 0x7E) + 126) ^ 0xF2));
  a15 = &a10;
  a12 = v21 + v25 + 1200179761;
  a13 = v20 - v25 + 1007;
  v26 = (*(v19 + 8 * (v20 ^ 0xB6C)))(&a12);
  return (*(v19 + 8 * ((2013 * (a14 == v18)) ^ v20)))(v26);
}

uint64_t sub_10036DCE4@<X0>(uint64_t a1@<X2>, unsigned int a2@<W3>, unint64_t a3@<X4>, int a4@<W5>, int a5@<W8>)
{
  v10 = (v9 + 4 * v6);
  v11 = (((a5 - 731) | a2) ^ a3) + v6;
  *v10 = v10[397] ^ v8 ^ *(a1 + 4 * (*(v9 + 4 * v11) & 1)) ^ ((*(v9 + 4 * v11) & 0x7FFFFFFE | v5 & 0x80000000) >> 1);
  return (*(v7 + 8 * (((v11 == 227) * a4) ^ a5)))();
}

uint64_t sub_10036DDD0()
{
  v4 = (v3 + 1313181386) & 0x2BAC;
  v11 = v9;
  v12 = &v7;
  LODWORD(v10) = (v3 - 677) ^ (50899313 * ((((&v10 ^ 0xC103041C) & 0xEDB31C5D) + (&v10 ^ 0x2EF85943) - ((&v10 ^ 0x2EF85943) & 0xEDB31C5D)) ^ 0xD764D885));
  (*(v1 + 8 * (v3 ^ 0x120u)))(&v10);
  HIDWORD(v11) = (v3 + 174) ^ ((&v10 ^ 0x8DAD62EC) * v2);
  v10 = v9;
  (*(v1 + 8 * (v3 + 248)))(&v10);
  if (v11 == (v4 ^ v0))
  {
    v5 = v7;
  }

  else
  {
    v5 = v11;
  }

  v11 = v9;
  LODWORD(v10) = v3 - (((&v10 | 0xE4CA02C2) - &v10 + (&v10 & 0x1B35FD38)) ^ 0x6967602E) * v2 - 834;
  (*(v1 + 8 * (v3 ^ 0x105u)))(&v10);
  LODWORD(v10) = v4 - (((&v10 | 0xD565B874) - (&v10 & 0xD565B874)) ^ 0x58C8DA98) * v2 + 583;
  v11 = v8;
  (*(v1 + 8 * (v4 + 1668)))(&v10);
  return v5 ^ (v0 - 380);
}

uint64_t sub_10036E068@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24)
{
  v33 = a1[4];
  v27 = a1[1];
  v28 = a1[2];
  v29 = v28[1];
  *(v26 - 136) = a2;
  *(v26 - 128) = v28;
  *(v26 - 120) = (v24 + 318) ^ (1785193651 * ((((v26 - 144) | 0x7E43C897) - (v26 - 144) + ((v26 - 144) & 0x81BC3768)) ^ 0x6D9F24B7));
  *(v26 - 112) = &a22;
  *(v26 - 104) = v27;
  *(v26 - 144) = v29;
  (*(v25 + 8 * (v24 ^ 0xB38)))(v26 - 144);
  *(v26 - 136) = &a24;
  *(v26 - 128) = v27;
  *(v26 - 144) = (v24 + 745) ^ (1037613739 * (((v26 - 144) & 0x14A73D1 | ~((v26 - 144) | 0x14A73D1)) ^ 0x2FB7A151));
  *(v26 - 120) = &a22;
  *(v26 - 112) = v28;
  (*(v25 + 8 * (v24 ^ 0xB28)))(v26 - 144);
  *(v26 - 120) = (v24 + 318) ^ (1785193651 * (((((v26 - 144) | 0xE5E67C54) ^ 0xFFFFFFFE) - (~(v26 - 144) | 0x1A1983AB)) ^ 0x9C56F8B));
  *(v26 - 112) = &a20;
  *(v26 - 104) = v27;
  *(v26 - 136) = &a24;
  *(v26 - 128) = v28;
  *(v26 - 144) = &a22;
  (*(v25 + 8 * (v24 ^ 0xB38)))(v26 - 144);
  *(v26 - 120) = (v24 + 318) ^ (1785193651 * ((-66626470 - ((v26 - 144) | 0xFC075C5A) + ((v26 - 144) | 0x3F8A3A5)) ^ 0x10244F85));
  *(v26 - 136) = &a24;
  *(v26 - 128) = v28;
  *(v26 - 144) = &a20;
  *(v26 - 112) = &a12;
  *(v26 - 104) = v27;
  (*(v25 + 8 * (v24 ^ 0xB38)))(v26 - 144);
  *(v26 - 112) = &a16;
  *(v26 - 104) = v27;
  *(v26 - 120) = (v24 + 318) ^ (1785193651 * ((v26 - 30250188 - 2 * ((v26 - 144) & 0xFE326BC4)) ^ 0xEDEE87E4));
  *(v26 - 136) = &a24;
  *(v26 - 128) = v28;
  *(v26 - 144) = &a12;
  (*(v25 + 8 * (v24 + 1784)))(v26 - 144);
  *(v26 - 120) = (v24 + 318) ^ (1785193651 * ((((2 * (v26 - 144)) | 0x894864FA) - (v26 - 144) + 995872131) ^ 0xD778DE5D));
  *(v26 - 144) = &a16;
  *(v26 - 136) = &a24;
  *(v26 - 112) = &a14;
  *(v26 - 104) = v27;
  *(v26 - 128) = v28;
  (*(v25 + 8 * (v24 + 1784)))(v26 - 144);
  *(v26 - 144) = &a14;
  *(v26 - 136) = &a24;
  *(v26 - 128) = v28;
  *(v26 - 120) = (v24 + 318) ^ (1785193651 * (((v26 - 144) & 0x367F60B9 | ~((v26 - 144) | 0x367F60B9)) ^ 0xDA5C7366));
  *(v26 - 112) = &a8;
  *(v26 - 104) = v27;
  (*(v25 + 8 * (v24 ^ 0xB38)))(v26 - 144);
  *(v26 - 120) = (v24 + 318) ^ (1785193651 * ((78452377 - ((v26 - 144) | 0x4AD1699) + ((v26 - 144) | 0xFB52E966)) ^ 0xE88E0546));
  *(v26 - 112) = &a10;
  *(v26 - 104) = v27;
  *(v26 - 136) = &a24;
  *(v26 - 128) = v28;
  *(v26 - 144) = &a8;
  (*(v25 + 8 * (v24 + 1784)))(v26 - 144);
  *(v26 - 120) = (v24 + 318) ^ (1785193651 * ((((v26 - 144) | 0x68C5F042) - ((v26 - 144) & 0x68C5F042)) ^ 0x7B191C62));
  *(v26 - 112) = &a24;
  *(v26 - 104) = v27;
  *(v26 - 144) = &a10;
  *(v26 - 136) = &a24;
  *(v26 - 128) = v28;
  (*(v25 + 8 * (v24 + 1784)))(v26 - 144);
  v30 = *v28;
  *(v26 - 136) = (v24 + 725) ^ (1785193651 * ((((v26 - 144) | 0x85116527) + (~(v26 - 144) | 0x7AEE9AD8)) ^ 0x96CD8906));
  *(v26 - 128) = &a18;
  *(v26 - 144) = v30;
  (*(v25 + 8 * (v24 + 1810)))(v26 - 144);
  *(v26 - 136) = v33;
  *(v26 - 140) = v24 + 1388665877 * (((v26 - 144) & 0x535F0B4B | ~((v26 - 144) | 0x535F0B4B)) ^ 0x210D9658) + 1307;
  v31 = (*(v25 + 8 * (v24 + 1846)))(v26 - 144);
  return (*(v25 + 8 * (((*(v26 - 144) - 2054041575 >= 559 * (v24 ^ 0x220u) + 2147482529) * (v24 ^ 0x22B)) | v24)))(v31);
}

uint64_t sub_10036E55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v8 + 256) = v5;
  *(v8 + 384) = STACK[0x278];
  STACK[0x2E8] = *(v7 + 8 * v6);
  return sub_10036E600(3450863079, 1339, 3644003432, 650963279, a5, 3522093884);
}

uint64_t sub_10036E600()
{
  *(v5 + 264) = ((v0 - 109) ^ 0xFFFFFFFFFFFFFABELL) + v2 + ((v0 + 675) | 0x22u);
  *(v5 + 128) = v1;
  if (v1)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  return (*(v3 + 8 * ((30 * v7) ^ v0)))();
}

uint64_t sub_10036E6B4@<X0>(char a1@<W1>, char a2@<W2>, char a3@<W3>, char a4@<W5>, uint64_t a5@<X8>)
{
  v9 = *(a5 + v5 + 72);
  v10 = ((2 * v5) & 0xEEDFEDF8) + (v5 ^ 0x776FF6FE) - 2003826430;
  *(v7 + v10) = v9 ^ a1;
  *(v7 + v10 + 1) = ((v9 >> ((v6 + 9) ^ 0x7C)) ^ a3) - 2 * (((v9 >> ((v6 + 9) ^ 0x7C)) ^ a3) & a4 ^ (v9 >> ((v6 + 9) ^ 0x7C)) & 4) + 51;
  *(v7 + v10 + 2) = (BYTE2(v9) ^ 0x4C) - ((v9 >> 15) & 0x66) + 51;
  *(v7 + v10 + 3) = (HIBYTE(v9) ^ a2) - 2 * ((HIBYTE(v9) ^ a2) & 0xBB ^ HIBYTE(v9) & 8) + 51;
  return (*(v8 + 8 * ((3594 * (v5 + 4 < *(a5 + 92))) ^ v6)))(186);
}

uint64_t sub_10036E7FC(uint64_t a1, char a2)
{
  v7 = v3 - 1;
  *(a1 + v7) = *(v6 + v7);
  return (*(v5 + 8 * (((((v2 ^ a2) ^ (v7 == 0)) & 1) * v4) | (v2 + 192))))();
}

uint64_t sub_10036E830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, char a17, int a18, uint64_t *a19, int a20, int a21, char *a22, int a23, int *a24, int *a25, uint64_t a26)
{
  a16 = 27391768;
  v29 = 1082434553 * (&a19 ^ 0x9B47F68A);
  a22 = &a17;
  a19 = &a14;
  a21 = v29 + 66494551 + a18 + 3 * (v26 ^ 0xBC);
  a23 = v29 + v26 + 1204;
  a25 = &a16;
  a26 = a14;
  a24 = &a18;
  v30 = (*(v28 + 8 * (v26 + 2108)))(&a19);
  return (*(v28 + 8 * ((1249 * (a20 == -392105736)) ^ v26)))(v30, v27);
}

uint64_t sub_10036EAE8(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1.n128_u16[0] = 26214;
  a1.n128_u8[2] = 102;
  a1.n128_u8[3] = 102;
  a1.n128_u8[4] = 102;
  a1.n128_u8[5] = 102;
  a1.n128_u8[6] = 102;
  a1.n128_u8[7] = 102;
  a2.n128_u16[0] = 13107;
  a2.n128_u8[2] = 51;
  a2.n128_u8[3] = 51;
  a2.n128_u8[4] = 51;
  a2.n128_u8[5] = 51;
  a2.n128_u8[6] = 51;
  a2.n128_u8[7] = 51;
  return sub_10036EB18(v6 - 7, a4, 92, a6, ((v7 - 44) | 0x72u) ^ 0x27ALL, a1, a2);
}

uint64_t sub_10036EC10()
{
  v5 = v2 - 1;
  *(v0 + v5) = *(v1 + v5) ^ 0x33;
  return (*(v4 + 8 * (((v5 == 0) * (v3 + 1231)) ^ v3)))();
}

uint64_t sub_10036EC64()
{
  *(v4 + 264) = v1 - 1616;
  LODWORD(STACK[0x43C]) = v3;
  return (*(v2 + 8 * (((STACK[0x2D8] != 0) * (303 * (v0 ^ 0x172) + ((v0 + 322) ^ 0xFFFFFBAE))) ^ (v0 + 411))))();
}

void sub_10036ECB8()
{
  *v2 = (((v0 - 24675337) & 0x178857C) + 2147483276 + ((((STACK[0x250] - v0) | (v0 - STACK[0x250])) & 0x80000000) == 0)) ^ (v0 + 1);
  (*(v1 + 8 * (v0 ^ 0x92D)))(STACK[0x278]);
  JUMPOUT(0x10036ED30);
}

uint64_t sub_10036EE34@<X0>(int a1@<W8>)
{
  v8 = ((((v7 - 144) | 0x241951C7) - (v7 - 144) + ((v7 - 144) & 0xDBE6AE38)) ^ 0xB6CF6E63) * v6;
  *(v7 - 144) = v8 + (v2 ^ 0x6FFFDEFF) + (a1 & 0xDFFFBDFE) - 40066622;
  *(v7 - 136) = v1 - v8 - 411;
  *(v7 - 128) = v4;
  v9 = (*(v3 + 8 * (v1 + 1362)))(v7 - 144);
  return (*(v3 + 8 * (((2 * ((((v1 ^ 0x45) + 1) ^ (*(v7 - 140) == v5)) & 1)) & 0xEF | (16 * ((((v1 ^ 0x45) + 1) ^ (*(v7 - 140) == v5)) & 1))) ^ v1)))(v9);
}

uint64_t sub_10036EF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, int a17, char a18, __int16 a19, char a20, char *a21, int a22, int a23, char *a24, int a25, char *a26, int *a27, uint64_t a28)
{
  a17 = 27391768;
  v30 = *(a2 + 4);
  v31 = *(a2 + 8);
  v32 = 1082434553 * ((1969483614 - (&a21 | 0x7563EF5E) + (&a21 | 0x8A9C10A1)) ^ 0x11DBE62B);
  a24 = &a18;
  a25 = v32 + v28 + 1204;
  a23 = v30 + 66494551 + v32 + 273;
  a27 = &a17;
  a28 = v31;
  a21 = &a14;
  a26 = &a20;
  v34 = (*(v29 + 8 * (v28 + 2108)))(&a21);
  return (*(v29 + 8 * (((a22 == -392105736) * ((v28 + 42) ^ 0x119)) ^ v28)))(v34, a2);
}

uint64_t sub_10036F044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, int a19)
{
  v26 = &a19 + 6 * v21;
  v26[2] = v22;
  v26[3] = v25;
  *(v26 + 2) = a14;
  v26[6] = a16;
  a19 = v20 + 1;
  return (*(v23 + 8 * (((((a9 + 1234117123) & 0xB670DFDB ^ (a5 - 335)) + v19 < a4) * (v24 + ((a9 + 503041537) & 0xEFD5F9BE) + 1807)) ^ (a9 - 319))))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_10036F174@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W8>)
{
  v10 = (v3 + 22) | v6;
  v11 = (v10 ^ v4) + a3;
  *(STACK[0x230] + v11) = *(v9 + v11);
  return (*(v8 + 8 * (((v11 == ((v10 + v7) & v5 ^ a1)) * ((v10 ^ 0x176) * a2 + 167)) ^ (v10 + 1010))))();
}

uint64_t sub_10036F1F0@<X0>(uint64_t a1@<X0>, int a2@<W3>, uint64_t a3@<X8>)
{
  *(*(a3 + 8) + 4 * (v3 + a2 + v5 - 551 - 261)) = v7 ^ v6;
  v8 = (v5 - 661019445) & 0x27665B5B;
  *(a3 + 4) = a2 + 1;
  v9 = a2 + 1 + v3;
  if (v9 < 0)
  {
    v9 = -v9;
  }

  v10 = ((v9 ^ 0xAFFF2EBF) + ((v8 + 1610504747) & (2 * v9)) + 1342230848) > (v8 ^ 0xFFFFFCAC);
  return (*(v4 + 8 * (((16 * v10) | (32 * v10)) ^ v8)))(a1, v8 ^ 0x5D1u);
}

uint64_t sub_10036F414@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v7 = *(*a3 + (v5 - 1235252674)) ^ 0x33;
  v8 = ((*(*a3 + (v5 - 1235252677)) ^ 0x33333333) << 24) | ((*(*a3 + v5 - 1235254397 + ((a2 - 2133) ^ 0x6DB)) ^ 0x33) << 16) | ((*(*a3 + (v5 - 1235252675)) ^ 0x33) << 8) | v7;
  return (*(v4 + 8 * ((127 * (v6 - *(a1 + 12) + ((v8 + v3 - 2 * (v8 & 0x68A0F0FF ^ v7 & 7)) & 0xFFFFFF ^ 0xA0F0F8) == -1833544666)) ^ a2)))();
}

uint64_t sub_10036F4D4@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, unsigned int a8@<W8>)
{
  v13 = a1 < a3;
  *(a2 + a8) = *(a7 + v8) - ((2 * *(a7 + v8)) & 0x66) + 51;
  if (v13 == v8 + 1 > v10)
  {
    v13 = ((v9 + a5) & a6 ^ v11) + v8 < a1;
  }

  return (*(v12 + 8 * ((!v13 * a4) ^ v9)))();
}

uint64_t sub_10036F928@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, unsigned int a6@<W5>, int a7@<W6>, unsigned int a8@<W8>, uint64_t a9, int a10, int a11)
{
  v19 = (((a11 ^ v16) + v17) ^ ((a11 ^ a1) + a2) ^ ((a11 ^ a3) + a4)) + a5;
  v20 = v19 < v11 + 842;
  v21 = a8 + v11 + (((v15 ^ v12) * v13) ^ v14) < v19;
  if (a8 > a6 != v20)
  {
    v21 = v20;
  }

  return (*(v18 + 8 * ((!v21 * a7) ^ v15)))();
}

uint64_t sub_10036F9A4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35)
{
  v39 = (((((a35 ^ 0xC1) - 127) ^ a35 ^ ((a35 ^ 8) + 74) ^ ((a35 ^ 9) + 73)) ^ (((a2 - 60) ^ a35) + 64)) & 0xF) != 0xE || (((a35 ^ 0x1B7E07C1) - 1532209535) ^ a35 ^ ((a35 ^ 0xB7312908) + 149125194) ^ ((a35 ^ 0x939DBF09) + 743435849) ^ (((a2 + 2147433412) ^ a35) - 1070764480)) == (((v35 ^ 0x463) + 154) ^ 0x402DAF12);
  v40 = *(v37 + 8 * ((41 * ((((v35 ^ 0x63) + 1) ^ v39) & 1)) | v35 ^ 0x463));
  *(v36 - 176) = -42899;
  return v40(a1, v35 ^ 0x6CBu);
}

void sub_10036FAD8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a4 + 993;
  v7 = (*(v4 + 8 * (a4 + 993)))(3);
  v8 = *(&off_10244F320 + a4 - 1355);
  *(v8 - 4) = v7;
  v9 = v8;
  (*(v4 + 8 * (a4 ^ 0xC06)))();
  v10 = (*(v4 + 8 * (a4 ^ 0xC61)))(66);
  v11 = *(&off_10244F320 + (a4 ^ 0x549));
  *(v11 - 4) = v10;
  v11 = (v11 - 4);
  (*(v4 + 8 * (a4 + 1018)))();
  v12 = (*(v4 + 8 * v5))(2);
  v13 = *(&off_10244F320 + a4 - 1231);
  *v13 = v12;
  *v12 = 7196;
  **v11 = 0;
  **(&off_10244F320 + (a4 ^ 0x540)) = 0;
  v14 = *v13;
  v15 = *v11;
  v16 = *(v9 - 4);
  v15[64] = 1;
  **(&off_10244F320 + a4 - 1201) = 51;
  v15[9] = -15;
  v14[1] = 79;
  **(&off_10244F320 + (a4 ^ 0x57B)) = 80;
  **(&off_10244F320 + (a4 ^ 0x52C)) = -77;
  *v14 = -22;
  v15[11] = 73;
  *v16 = 68;
  v15[20] = -44;
  **(&off_10244F320 + a4 - 1230) = -121;
  v15[36] = -11;
  v15[45] = -113;
  v15[49] = 25;
  *(v16 + 1) = 6695;
  **(&off_10244F320 + (a4 & 0x24ACE02C)) = -122;
  **(&off_10244F320 + (a4 ^ 0x543)) = 88;
  v15[26] = -34;
  v15[60] = -5;
  **(&off_10244F320 + (a4 ^ 0x5F8)) = 96;
  **(&off_10244F320 + (a4 ^ 0x5EC)) = 80;
  **(&off_10244F320 + a4 - 1181) = 17;
  **(&off_10244F320 + (a4 & 0x6C89011)) = 119;
  v15[52] = 47;
  v15[50] = 102;
  v15[59] = -59;
  v15[22] = -36;
  v15[29] = 59;
  v15[27] = 34;
  v15[40] = -80;
  v15[13] = 23;
  **(&off_10244F320 + (a4 ^ 0x537)) = 99;
  v15[53] = 3;
  **(&off_10244F320 + (a4 ^ 0x544)) = -109;
  v15[39] = 54;
  v15[57] = 73;
  **(&off_10244F320 + (a4 ^ 0x5C7)) = 83;
  v15[37] = -52;
  v15[63] = -72;
  v17 = *v11;
  *(v17 + 65) = -85;
  *(v17 + 5) = -14;
  *(v17 + 54) = 32;
  *(v17 + 58) = 113;
  *(v17 + 8) = 16909;
  *(v17 + 28) = -39;
  *(v17 + 47) = -4065;
  *(v17 + 21) = 15;
  *(v17 + 41) = -29527;
  *(v17 + 38) = -121;
  *(v17 + 31) = 8824;
  *(v17 + 25) = 69;
  *(v17 + 7) = 27031;
  *(v17 + 23) = -86;
  *(v17 + 14) = -90;
  *(v17 + 62) = -105;
  *(v17 + 33) = 15089;
  *(v17 + 55) = -30385;
  *(v17 + 46) = -17;
  *(v17 + 4) = -92;
  *(v17 + 15) = 72;
  *(v17 + 30) = 36;
  *(v17 + 10) = -98;
  *(v17 + 35) = 52;
  *(v17 + 51) = -15;
  *(v17 + 12) = -15;
  *(v17 + 61) = 73;
  *(v17 + 9) = -9761;
  *(v17 + 43) = 19744;
  *(v17 + 6) = 45;
  *(v17 + 24) = -72;
  JUMPOUT(0x100370B84);
}

uint64_t sub_100370E80@<X0>(int a1@<W1>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, int a6@<W8>, int8x16_t a7@<Q0>, int8x16_t a8@<Q1>, int32x4_t a9@<Q2>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v78 = *(v37 + 8 * a6);
  v44 = *(v42 - 156);
  v43 = *(v42 - 152);
  v46 = *(v42 - 148);
  v45 = *(v42 - 144);
  v47 = *(v42 - 132);
  if (v47 == 2)
  {
    v80 = vld4q_s8(v35);
    v70 = veorq_s8(v80.val[1], a7);
    _Q22 = vmovl_high_u8(v70);
    _Q21 = vmovl_u8(*v70.i8);
    v73 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm
    {
      SHLL2           V21.4S, V21.8H, #0x10
      SHLL2           V22.4S, V22.8H, #0x10
    }

    v74 = vmovl_u8(*&veorq_s8(v80.val[2], a7)).u64[0];
    v80.val[2] = vmovl_u16(*&vmovl_u8(*&veorq_s8(v80.val[3], a7)));
    v75 = vorrq_s8(vorrq_s8(vorrq_s8(v73, vshll_n_u16(v74, 8uLL)), vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v80.val[0], a7))), 0x18uLL)), v80.val[2]);
    v80.val[2] = veorq_s8(vandq_s8(v75, a8), (*&v80.val[2] & __PAIR128__(0xFFFFFF07FFFFFF07, 0xFFFFFF07FFFFFF07)));
    *v33 = vaddq_s32(vsubq_s32(v75, vaddq_s32(v80.val[2], v80.val[2])), a9).u32[0];
    v76 = v33[((v34 + 980) ^ (v39 + 860)) + 805443227];
    v33[v39 + 805443227] = __ROR4__(v33[v39 + 805443224] ^ v38 ^ v33[v39 + 805443219] ^ v33[v39 + 805443211] ^ v76, 31) ^ 0xAC395023;
    v77 = *(v37 + 8 * ((1108 * (v40 == 805443164)) ^ v34));
    return v77(v77, 2889437219, v76, a18, a2, a3, a4, a5, a10, a11, a12, a13, a14, a15, a16, v78, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
  }

  else
  {
    if (v47 != 1)
    {
      JUMPOUT(0x100371704);
    }

    v79 = vld4q_s8(v35);
    v48 = (a5 + a1 - 156);
    v49 = vmovl_u16(*&vmovl_u8(*&veorq_s8(v79.val[0], a7)));
    v50 = veorq_s8(v79.val[2], a7);
    _Q26 = vmovl_u8(*v50.i8);
    _Q25 = vmovl_high_u8(v50);
    __asm
    {
      SHLL2           V27.4S, V25.8H, #0x10
      SHLL2           V28.4S, V26.8H, #0x10
    }

    v79.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v79.val[3], a7))), 0x18uLL), vshll_n_s16(*_Q26.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*&vmovl_u8(*&veorq_s8(v79.val[1], a7)), 8uLL), v49));
    v59 = veorq_s8(vandq_s8(v79.val[2], a8), (*&v49 & __PAIR128__(0xFFFFFF07FFFFFF07, 0xFFFFFF07FFFFFF07)));
    *v33 = vaddq_s32(vsubq_s32(v79.val[2], vaddq_s32(v59, v59)), a9).u32[0];
    v60 = (a5 + a1 + 1431937454) & 0xAAA65DBF;
    v61 = *(&off_10244F320 + (v48 ^ 0x186));
    v62 = *(&off_10244F320 + (v48 ^ 0x178));
    v63 = (v43 & 0x5511AF87 ^ 0x55112F82 ^ (v43 ^ 0x5DB32F92) & (v45 ^ 0xF75D7FEA) | v60 ^ v46 & 0x548EC4D4 ^ (v43 ^ 0xF6C214B9) & (v46 ^ v38) ^ 0xCC161) + (v44 ^ v38) + *(v61 + 4 * (a18 + v39)) + (v33[(*(*(&off_10244F320 + (v48 ^ 0x175)) + a18 + v39 - 4) - 50)] ^ v41);
    v64 = *(v62 + a18 + v39);
    v65 = (v63 ^ 0x1A41AD76) - 1415284374;
    v66 = (((v64 - 56) ^ 0x22) + 17) ^ (v64 - 56) ^ (((v64 - 56) ^ 0xF9) - 52) ^ (((v64 - 56) ^ 0xE9) - 36) ^ (5 - v64);
    v67 = v63 ^ 0x4E1A2BE0 ^ ((v63 ^ 0x2A84AB58) - 1688109240) ^ v65 ^ ((v63 ^ 0x5305231) - 1261074897) ^ ((v63 ^ 0x7BEF7FFF) - 905270303);
    v68 = (((v43 ^ 0x4D440DA6) - 1296305574) ^ ((v43 ^ 0xC36B3306) + 1016384762) ^ ((v43 ^ 0x2C63EECD) - 744746701)) - 1314577237 + ((v67 << (v66 & 0x19 ^ 9) << (v66 & 6 ^ 4)) | (v67 >> (v36 - v64)));
    return (*(v37 + 8 * ((62 * (a18 + 1 == v40)) ^ v48)))(v48, v62, v68 ^ ((v68 ^ 0xB5E2FBEB) + 1162170411) ^ ((v68 ^ 0x310792E) - 206056720) ^ ((v68 ^ 0x44553D44) - 1259170170) ^ ((v68 ^ 0xFDFFEBBF) + 223887487) ^ 0xAD148453, 805443227, 9, v65, 3033892399, v61, a10, a11, a12, a13, a14, a15, a16, v78, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
  }
}

void sub_1003714DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = (((v8 ^ 0x8228A3B4) + 2111265868) ^ ((v8 ^ 0x955CF33F) + 1789070529) ^ ((v8 ^ 0xB53880E6) + 1254588186)) - 1878667844 + (((*(v10 - 140) ^ 0x31F4C43E) - 838124606) ^ ((*(v10 - 140) ^ 0xBFFF4FC1) + 1073786943) ^ (((v9 - a8 - 1687) ^ 0xB8A9CAA6 ^ *(v10 - 140)) - 742874002));
  v12 = (v11 ^ 0xA20B931E) & (2 * (v11 & 0xB493D31E)) ^ v11 & 0xB493D31E;
  v13 = ((2 * (v11 ^ 0x830C371E)) ^ 0x6F3FC800) & (v11 ^ 0x830C371E) ^ (2 * (v11 ^ 0x830C371E)) & 0x379FE400;
  v14 = v13 ^ 0x10802400;
  v15 = (v13 ^ 0x261FC000) & (4 * v12) ^ v12;
  v16 = ((4 * v14) ^ 0xDE7F9000) & v14 ^ (4 * v14) & 0x379FE400;
  v17 = v15 ^ 0x379FE400 ^ (v16 ^ 0x161F8000) & (16 * v15);
  v18 = (16 * (v16 ^ 0x21806400)) & 0x379FE400 ^ 0x601A400 ^ ((16 * (v16 ^ 0x21806400)) ^ 0x79FE4000) & (v16 ^ 0x21806400);
  v19 = (v17 << 8) & 0x379FE400 ^ v17 ^ ((v17 << 8) ^ 0x9FE40000) & v18;
  *(v10 - 140) = v11 ^ (2 * ((v19 << 16) & 0x379F0000 ^ v19 ^ ((v19 << 16) ^ 0x64000000) & ((v18 << 8) & 0x379F0000 ^ 0x201B0000 ^ ((v18 << 8) ^ 0x9FE40000) & v18))) ^ 0x1EE8CB73;
  JUMPOUT(0x100371700);
}

uint64_t sub_100371CB0()
{
  v2 = *(v1 + 18952);

  return v2(v0);
}

uint64_t sub_100371CDC@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 4);
  *(v1 + 4) = v4;
  return (*(v2 + 8 * ((1008 * ((((v3 ^ 6) - 30) ^ (v4 - 763308221 == (((v3 ^ 0x506) - 1820472306) & 0x6C8236F7) - 1271)) & 1)) ^ v3 ^ 0x506)))();
}

void sub_100371D48(_DWORD *a1)
{
  v1 = *a1 ^ (210068311 * ((a1 & 0x333F3DED | ~(a1 | 0x333F3DED)) ^ 0x5E16FDB6));
  __asm { BRAA            X12, X17 }
}

uint64_t sub_100371E14()
{
  *(v4 - 136) = (v1 + 329) ^ (((v4 - 2021370031 - 2 * ((v4 - 144) & 0x878457E1)) ^ 0x9458BBC1) * v3);
  *(v4 - 144) = &v6;
  *(v4 - 128) = v0;
  return (*(v2 + 8 * (v1 + 1414)))(v4 - 144);
}

void sub_100371EF8()
{
  v0 = __chkstk_darwin();
  v1 = *v0 - 50899313 * ((v0 & 0xEEFB953D | ~(v0 | 0xEEFB953D)) ^ 0x52BF759);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_100372030(uint64_t a1, uint64_t a2)
{
  *(*(v4 + 96) + 1544) = *(a2 + 8);
  *(*(v4 + 96) + 1536) = *(a2 + 4);
  return v2 ^ 0xE8A0F0F8;
}

uint64_t sub_100372170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, char *a17, int a18)
{
  v20 = 742307843 * (((&a15 | 0xAC4969DB) - (&a15 & 0xAC4969DB)) ^ 0xB26BE48E);
  HIDWORD(a17) = v19 - v20 + 1877;
  a18 = v20 ^ 0x38C154A6;
  a16 = v20 + 1546035931;
  LODWORD(a17) = 605012660 - v20;
  (*(v18 + 8 * (v19 + 2314)))(&a15);
  a17 = &a10;
  a18 = v19 + 2066391179 * (((&a15 | 0x2DFD570B) - &a15 + (&a15 & 0xD202A8F0)) ^ 0x82DAD513) + 1137;
  v21 = (*(v18 + 8 * (v19 ^ 0x930)))(&a15);
  return (*(v18 + 8 * ((2093 * (a15 == ((v19 + 1113085858) & 0x9EF) - 392106195)) ^ v19)))(v21);
}

uint64_t sub_100372328(int a1, int a2)
{
  v13 = v3 + a1 + (*(*(v11 + 8) + 4 * v4) ^ v8);
  *(*(v2 + 8) + 4 * v4) = v13 + v8 - ((v13 << ((v6 & v7) + 95)) & v10);
  return (*(v9 + 8 * (((v4 + 1 == v12) * a2) ^ v5)))();
}

uint64_t sub_1003723B4@<X0>(uint64_t a1@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v2 + v6) - ((2 * *(v2 + v6)) & 0x66) + 51;
  return (*(v1 + 8 * (((v6 == 0) * v4) ^ v5)))(0);
}

uint64_t sub_1003723EC()
{
  v4 = STACK[0x200];
  (*(v0 + 8 * (v1 + 1696)))(*STACK[0x200], v3, 2048);
  v5 = *(v0 + 8 * ((((*(v0 + 8 * (v1 ^ 0xBED)))(*v4, &STACK[0x440], LODWORD(STACK[0x3C4]) + ((v1 + 132) ^ (v2 + 800)), 1) != 0) * (v1 - 619)) ^ v1));
  return v5();
}

void sub_100372674()
{
  *(v4 - 144) = v1 + 1082434553 * (((~(v4 - 144) & 0xCDB5CCEE) - (~(v4 - 144) | 0xCDB5CCEF)) ^ 0x56F23A65) + 480;
  *(v4 - 136) = v2;
  *(v4 - 128) = v3;
  (*(v0 + 8 * (v1 ^ 0x835)))(v4 - 144);
  JUMPOUT(0x10033CCD8);
}

uint64_t sub_10037272C(uint64_t result)
{
  v1 = 742307843 * ((((2 * result) | 0xDB1F010A29036638) - result - 0x6D8F80851481B31CLL) ^ 0xDE135DEE0AA33E49);
  v2 = *(result + 8) - v1;
  v3 = *(result + 32) + v1;
  v4 = v3 > v2;
  v5 = v3 == v2;
  v6 = v4;
  if ((*result ^ v1))
  {
    v5 = v6;
  }

  v7 = !v5;
  v8 = 16;
  if (!v7)
  {
    v8 = 40;
  }

  *(result + 44) = (*(result + v8) - v1) ^ (*(result + 24) - v1);
  return result;
}

uint64_t sub_1003727D0(uint64_t a1)
{
  v1 = 742307843 * (((a1 | 0xB9F25DC1) - (a1 & 0xB9F25DC1)) ^ 0xA7D0D094);
  v2 = *(a1 + 12) + v1;
  v3 = *(*(&off_10244F320 + v2 - 1765) + 85);
  v4 = *(a1 + 4) - v1 - 1064877473;
  v5 = v3 + 481158404 > v4;
  if (v4 < 0x1CADE504 != v3 > 0xE3521AFB)
  {
    v5 = v3 > 0xE3521AFB;
  }

  return (*(*(&off_10244F320 + v2 - 1902) + ((v5 * ((v2 - 474) ^ 0x589)) ^ v2) - 1))();
}

void sub_100372B28(uint64_t a1@<X8>, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a3 = ((v7 ^ 0x538) - 245) ^ (843532609 * (((&a3 ^ 0xD5FD5067) - 1420027307 - 2 * ((&a3 ^ 0xD5FD5067) & 0xAB5C1A55)) ^ 0x22EC1EB7));
  a6 = v8;
  a4 = a1;
  (*(v6 + 8 * ((v7 ^ 0x538) + 1817)))(&a3);
  JUMPOUT(0x10032C2FCLL);
}

uint64_t sub_100372BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t *a12, int a13, unsigned int a14)
{
  v17 = 1037613739 * (((&a10 | 0xD08D064A) - &a10 + (&a10 & 0x2F72F9B0)) ^ 0x18F2B35);
  a10 = v17 + 139505285;
  a11 = v14;
  a12 = &a9;
  a13 = (v15 - 1484) ^ v17;
  a14 = 681059094 - v17;
  v18 = (*(v16 + 8 * (v15 + 791)))(&a10);
  return (*(v16 + 8 * (((*(v14 + 24) == -392105736) * ((76 * (v15 ^ 0x64C)) ^ 0x65B)) ^ v15)))(v18);
}

uint64_t sub_100372CBC(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 48) = *(a2 + 8);
  return 0;
}

void sub_100372CD4(uint64_t a1)
{
  v1 = *(a1 + 8) + 210068311 * ((1549542908 - (a1 | 0x5C5C25FC) + (a1 | 0xA3A3DA03)) ^ 0x3175E5A7);
  v2 = *a1;
  v3 = *(&off_10244F320 + v1 - 68) - 8;
  (*&v3[8 * (v1 ^ 0x926)])(*(&off_10244F320 + v1 - 25) - 4, sub_10034C45C);
  __asm { BRAA            X9, X17 }
}

void sub_100372DA0(uint64_t a1)
{
  v2 = *(&off_10244F320 + ((-39 * (dword_1025D5248 ^ 0x42 ^ qword_1025D5288)) ^ byte_101C69AA0[byte_101C756E0[(-39 * (dword_1025D5248 ^ 0x42 ^ qword_1025D5288))] ^ 0x50]) + 26);
  v3 = *(v2 - 4);
  v4 = *(&off_10244F320 + (byte_101C757E0[byte_101C716B0[(-39 * ((qword_1025D5288 - v3) ^ 0x42))] ^ 0x7D] ^ (-39 * ((qword_1025D5288 - v3) ^ 0x42))) - 71);
  v5 = *(v4 - 4) - v3 - &v9;
  v6 = 329992409 * v5 + 0x3F921ABBB7B42942;
  v7 = 329992409 * (v5 ^ 0x3F921ABBB7B42942);
  *(v2 - 4) = v6;
  *(v4 - 4) = v7;
  LODWORD(v2) = *(v2 - 4);
  v8 = *(&off_10244F320 + ((-39 * (dword_1025D5248 ^ 0x42 ^ qword_1025D5288)) ^ byte_101C757E0[byte_101C716B0[(-39 * (dword_1025D5248 ^ 0x42 ^ qword_1025D5288))] ^ 0xE8]) - 170) - 8;
  (*&v8[8 * ((-39 * ((v7 + v2) ^ 0x42)) ^ byte_101C757E0[byte_101C716B0[(-39 * ((v7 + v2) ^ 0x42))] ^ 0x3B]) + 16968])(*(&off_10244F320 + ((-39 * ((v7 - v2) ^ 0x42)) ^ byte_101C757E0[byte_101C716B0[(-39 * ((v7 - v2) ^ 0x42))] ^ 0x7D]) - 19) - 4, sub_10034C45C);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100372FD4()
{
  v0.n128_u64[0] = 0x6666666666666666;
  v0.n128_u64[1] = 0x6666666666666666;
  v1.n128_u64[0] = 0x3333333333333333;
  v1.n128_u64[1] = 0x3333333333333333;
  return sub_100373010(v0, v1);
}

uint64_t sub_100373010@<X0>(int a1@<W7>, uint64_t a2@<X8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>)
{
  v12 = (v7 + v5 + a2);
  v13 = vaddq_s8(vsubq_s8(*(v11 + v5 + 16), vandq_s8(vaddq_s8(*(v11 + v5 + 16), *(v11 + v5 + 16)), a3)), a4);
  *v12 = vaddq_s8(vsubq_s8(*(v11 + v5), vandq_s8(vaddq_s8(*(v11 + v5), *(v11 + v5)), a3)), a4);
  v12[1] = v13;
  return (*(v10 + 8 * (((v8 + v5 == v4) * v9) ^ (a1 + v6 - 10))))();
}

uint64_t sub_10037306C(uint64_t a1)
{
  v1 = 210068311 * ((a1 - 205837158 - 2 * (a1 & 0xF3BB2C9A)) ^ 0x616D133E);
  v2 = *a1 - v1;
  v3 = *(a1 + 28) - v1;
  v4 = *(*(a1 + 8) + 4);
  v6 = v4 - 763308221;
  v5 = v4 - 763308221 < 0;
  v7 = 763308221 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_10244F320 + (v2 ^ 0x45E)) + ((254 * (((v2 - 121) ^ ((v3 - 1289254096) < (4 * v7))) & 1)) ^ v2) - 1))();
}

uint64_t sub_1003731A4(double a1, double a2, double a3, double a4, int8x16_t a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = (a13 + (v14 + v13));
  v18 = *v17;
  v19 = v17[1];
  v20 = (a8 + v14);
  *v20 = vaddq_s8(vsubq_s8(v18, vandq_s8(vaddq_s8(v18, v18), a5)), a6);
  v20[1] = vaddq_s8(vsubq_s8(v19, vandq_s8(vaddq_s8(v19, v19), a5)), a6);
  return (*(v16 + 8 * (((4 * (((v14 == 32) ^ (v15 + 49)) & 1)) & 0xF7 | (8 * (((v14 == 32) ^ (v15 + 49)) & 1))) ^ v15)))();
}

void sub_100373220(_DWORD *a1)
{
  v1 = *a1 ^ (50899313 * ((a1 + 62097897 - 2 * (a1 & 0x3B389E9)) ^ 0x179C1472));
  __asm { BRAA            X9, X17 }
}

void sub_100373458()
{
  v5 = *(v4 + 88) + 128;
  *(v4 + 392) = v5;
  v6 = 1785193651 * ((2 * ((v3 - 200) & 0x5834C330) - (v3 - 200) - 1479852855) ^ 0xB417D0E9);
  *(v3 - 192) = v5;
  *(v3 - 196) = v6 + v1 - 562358948;
  *(v3 - 184) = v6 ^ 0x942D0C24;
  v7 = v0;
  (*(v2 + 8 * (v1 + 2212)))(v3 - 200);
  STACK[0x4C0] = *(v2 + 8 * v1);
  STACK[0x288] = v7;
  JUMPOUT(0x10032BCF8);
}

uint64_t sub_100373564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  v22 = 1037613739 * ((-340959559 - ((v21 - 120) | 0xEBAD5EB9) + ((v21 - 120) | 0x1452A146)) ^ 0xC5508C39);
  *(v21 - 104) = v22 + v20 + 1005;
  *(v21 - 112) = &a18;
  *(v21 - 120) = (((2 * v18) & 0xDFFB7F62) - 545263232 + (v18 ^ 0x6FFDBE75 ^ (v20 + 216318393) & 0xF31B3BFC)) ^ v22;
  v23 = (*(v19 + 8 * (v20 + 1295)))(v21 - 120);
  return sub_100373620(v23);
}

uint64_t sub_100373620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  *(v20 - 112) = &a16;
  *(v20 - 104) = a15;
  *(v20 - 120) = (v17 + 1730) ^ (((((2 * (v20 - 120)) | 0xE09E9A4A) - (v20 - 120) + 263238363) ^ 0xAC0219A0) * v18);
  v21 = (*(v16 + 8 * (v17 + 1876)))(v20 - 120);
  return (*(v16 + 8 * ((19 * (((v17 ^ (*(v20 - 116) > ((v17 + 224) ^ (v19 + 604)))) & 1) == 0)) ^ v17)))(v21);
}

uint64_t sub_100373950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = (a13 + v15);
  *(v18 - 1) = v17;
  *v18 = v17;
  return (*(v16 + 8 * ((((v13 & 0xFFFFFFFFFFFFFFF0) == 16) * (((v14 - 41) | 0x29) ^ 0x7DF)) ^ (v14 - 343))))();
}

uint64_t sub_1003739A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = v71 + 1124;
  v74 = (*(v72 + 8 * (v71 ^ 0xB8A)))(*STACK[0x200], a2, LODWORD(STACK[0x2C8]));
  return (*(v72 + 8 * (((LODWORD(STACK[0x43C]) != ((v73 - 1567) ^ 0xE8A0F003)) * (((v73 - 1417) | 0xC) - 326)) ^ v73)))(v74, a71);
}

uint64_t sub_100373A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v20 - 136) = (v17 + 1824) ^ (((v20 - 1669286860 - 2 * ((v20 - 136) & 0x9C80B4BC)) ^ 0xC0CDE039) * v18);
  *(v20 - 128) = &a17;
  *(v20 - 120) = a16;
  v21 = (*(v19 + 8 * (v17 + 1970)))(v20 - 136);
  return (*(v19 + 8 * (((*(v20 - 132) > 0x26799477u) * (v17 - 346)) ^ v17)))(v21);
}

uint64_t sub_100373AC4(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 4);
  *(a1 + 64) = *(a2 + 8);
  return 0;
}

uint64_t sub_100373ADC()
{
  if (v0)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  return (*(v1 + 8 * ((60 * v4) ^ 0x5D2u)))();
}

uint64_t sub_100373BD8@<X0>(uint64_t a1@<X5>, unsigned int a2@<W8>)
{
  v7 = (a1 + (v4 - 1));
  v8 = -1908612391 * ((*(*STACK[0x288] + (*STACK[0x280] & (((v3 + 16) ^ 0x38C) - 1276220572))) ^ v7) & 0x7FFFFFFF);
  v9 = -1908612391 * (v8 ^ HIWORD(v8));
  v10 = *(*(v6 + 8 * (v3 ^ 0x376)) + (v9 >> 24) - 10);
  v11 = -123 * BYTE3(v9);
  v12 = *(*(v6 + 8 * (v3 - 770)) + (v9 >> 24));
  v13 = *(*(v6 + 8 * (v3 - 740)) + (v9 >> 24) - 8) ^ (a2 >> v2) ^ v10 ^ v12 ^ v9;
  LODWORD(v9) = (*(*(v6 + 8 * (v3 - 740)) + (v9 >> 24) - 8) ^ (a2 >> v2) ^ v10 ^ v12 ^ v9);
  *v7 = v11 ^ v13;
  return (*(v5 + 8 * ((254 * (v4 != (v9 != v11))) ^ v3)))();
}

_BYTE *sub_100373CB4(_BYTE *result, unsigned int a2, unint64_t a3)
{
  v3 = -result & 7;
  if (v3 > a3)
  {
    LODWORD(v3) = a3;
  }

  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 != 6)
      {
        if (v3 != 7)
        {
          goto LABEL_20;
        }

        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v3 == 4)
    {
LABEL_16:
      *result++ = a2;
      goto LABEL_17;
    }

    *result++ = a2;
    goto LABEL_16;
  }

  switch(v3)
  {
    case 1:
LABEL_19:
      *result++ = a2;
      break;
    case 2:
LABEL_18:
      *result++ = a2;
      goto LABEL_19;
    case 3:
LABEL_17:
      *result++ = a2;
      goto LABEL_18;
  }

LABEL_20:
  v4 = a3 - v3;
  if (v4 >= 8)
  {
    v5 = 0x101010101010101 * a2;
    v6 = ((v4 >> 3) + 7) >> 3;
    v7 = (v4 >> 3) & 7;
    if (v7 > 3)
    {
      if (((v4 >> 3) & 7) <= 5)
      {
        if (v7 == 4)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v7 == 6)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (((v4 >> 3) & 7) > 1)
    {
      if (v7 == 2)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (!v7)
    {
      goto LABEL_32;
    }

    while (1)
    {
      *result = v5;
      result += 8;
      if (!--v6)
      {
        break;
      }

LABEL_32:
      *result = v5;
      result += 8;
LABEL_33:
      *result = v5;
      result += 8;
LABEL_34:
      *result = v5;
      result += 8;
LABEL_35:
      *result = v5;
      result += 8;
LABEL_36:
      *result = v5;
      result += 8;
LABEL_37:
      *result = v5;
      result += 8;
LABEL_38:
      *result = v5;
      result += 8;
    }
  }

  v8 = v4 & 7;
  if (v8 > 3)
  {
    if (v8 > 5)
    {
      if (v8 != 6)
      {
        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v8 == 4)
    {
      goto LABEL_53;
    }

    *result++ = a2;
LABEL_53:
    *result++ = a2;
LABEL_54:
    *result++ = a2;
LABEL_55:
    *result++ = a2;
    goto LABEL_56;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (v8)
  {
LABEL_56:
    *result = a2;
  }

  return result;
}

uint64_t sub_100373E2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7)
{
  v14 = (v13 + 4 * v9);
  v15 = v9 + 1;
  v16 = *(v13 + 4 * v15);
  v17 = v14[397] ^ ((v16 & 0x7FFFFFFE | v8 & 0x80000000) >> 1);
  *v14 = (v17 + v11 - ((((v7 + a5) | a6) + a7) & (2 * v17))) ^ *(v12 + 4 * (v16 & 1));
  return (*(v10 + 8 * (((v15 == 227) * a3) ^ v7)))();
}

uint64_t sub_100373E94@<X0>(uint64_t a1@<X2>, unsigned int a2@<W8>)
{
  v10 = v4 < v5;
  *(v9 - 220 + a2) = *(a1 + v2) - ((2 * *(a1 + v2)) & 0x66) + 51;
  v11 = v2 + 1;
  if (v10 == v11 > v8 + v6)
  {
    v10 = v11 + v5 < v4;
  }

  return (*(v7 + 8 * ((976 * v10) ^ v3)))();
}

float sub_100376420(uint64_t a1, void *a2, double *a3, int8x16_t a4, int8x16_t a5)
{
  v5 = 3.4028e38;
  if (*(a1 + 82))
  {
    v6 = 3.4028e38;
    v9 = veorq_s8(a4, a4);
    v7 = veorq_s8(a5, a5);
    v9.i64[0] = *a2;
    v8 = (a2 + 1);
    v9.i32[2] = *v8;
    v10 = *((v8 + 2) & 0xFFFFFFFFFFFFFFF8);
    v11 = *a1;
    v12 = *(a1 + 80);
    v13 = *(a1 + 16);
    do
    {
      v7.i64[0] = *v11;
      v14 = v11 + 1;
      v7.i32[2] = *v14;
      v11 = v14 + 1;
      v15 = vsubq_f32(v7, v9);
      v16 = vmulq_f32(v15, v15);
      v7 = vpaddq_f32(v16, v16);
      v7.f32[0] = sqrtf(vaddv_f32(*v7.f32));
      *v13++ = v7.i32[0];
      v6 = fminf(v6, v7.f32[0]);
      v17 = __OFSUB__(v12--, 1);
    }

    while (v12 < 0 == v17);
    *(a1 + 80) = *(*(a1 + 64) + 2);
    if (SLODWORD(v6) <= *(a1 + 32))
    {
      v18 = *(a1 + 40);
      v19 = v18 != 0;
      *(a1 + 40) = (v18 + 1) % *(a1 + 38);
      v20 = *(a1 + 48);
      v21 = *(a1 + 24);
      v22 = *(a1 + 36);
      do
      {
        v23 = (*(a1 + 72) + 4 * (v20 - *(a1 + 48)));
        v24 = *v20;
        if (v19 || *v20)
        {
          if (*v20)
          {
            v30 = (*(a1 + 64) + 4 * v24);
            v31 = *v30;
            v32 = *(v30 - 2);
            v33 = (v31 - v32);
            v34 = 3.4028e38;
            v35 = 3.4028e38;
            if (v33 >= 1)
            {
              v34 = v21[(v33 - 1)];
            }

            if (v33 < *(a1 + 58) && v33 >= 0)
            {
              v35 = v21[v33];
            }

            v36 = v30[1];
            v37 = (*(a1 + 16) + 4 * v31);
            v38 = *(v30 - 1);
            v39 = v31 + 1;
            v41 = *v37;
            v40 = v37 + 1;
            v42 = v41 + fminf(v34, v35);
            v43 = &v21[v39 - v32];
            if (v38 > v36)
            {
              v38 = v30[1];
            }

            v45 = v38 - v39;
            v44 = v38 < v39;
            v46 = v42;
            *v21 = v42;
            v47 = v21 + 1;
            if (!v44)
            {
              do
              {
                v48 = fminf(v35, v46);
                v49 = *v43++;
                v35 = v49;
                v50 = fminf(v48, v49);
                v51 = *v40++;
                ++v39;
                v46 = v51 + v50;
                v42 = fminf(v42, v51 + v50);
                *v47++ = v51 + v50;
                v17 = __OFSUB__(v45--, 1);
              }

              while (v45 < 0 == v17);
            }

            v52 = v36 - v39;
            if (v36 >= v39)
            {
              v54 = *v40;
              v53 = v40 + 1;
              v17 = __OFSUB__(v52, 1);
              v55 = v52 - 1;
              v56 = v54 + fminf(v35, v46);
              v42 = fminf(v42, v56);
              *v47 = v56;
              for (i = v47 + 1; v55 < 0 == v17; --v55)
              {
                v58 = *v53++;
                v56 = v56 + v58;
                v42 = fminf(v42, v56);
                *i++ = v56;
                v17 = __OFSUB__(v55, 1);
              }
            }

            v59 = *(a1 + 32);
            v60 = (v24 + 1);
            *v20 = v60;
            if (SLODWORD(v42) <= v59)
            {
              if (v60 < *(a1 + 10))
              {
                v61 = *(a1 + 80);
                if (v61 < SHIWORD(*(*(a1 + 64) + 4 * v60)))
                {
                  LOWORD(v61) = HIWORD(*(*(a1 + 64) + 4 * v60));
                }

                *(a1 + 80) = v61;
              }

              else
              {
                if (SLODWORD(v5) > SLODWORD(v42))
                {
                  v5 = v42;
                  *a3 = v10 - *v23;
                }

                *v20 = 0;
              }
            }

            else
            {
              *v20 = 0;
            }
          }
        }

        else
        {
          v25 = *(a1 + 58);
          *v21 = **(a1 + 16);
          v26 = v21 + 1;
          v17 = __OFSUB__(v25, 1);
          for (j = v25 - 1; !((j < 0) ^ v17 | (j == 0)); --j)
          {
            *v26++ = 2139095039;
            v17 = __OFSUB__(j, 1);
          }

          v28 = *(a1 + 80);
          v29 = *(a1 + 64);
          *v20 = 1;
          if (v28 < SHIWORD(*(v29 + 4)))
          {
            LOWORD(v28) = HIWORD(*(v29 + 4));
          }

          *(a1 + 80) = v28;
          *v23 = v10;
          v19 = 1;
        }

        ++v20;
        v21 += *(a1 + 58);
        v17 = __OFSUB__(v22--, 1);
      }

      while (!((v22 < 0) ^ v17 | (v22 == 0)));
    }

    else
    {
      bzero(*(a1 + 48), 2 * *(a1 + 36));
      return 3.4028e38;
    }
  }

  return v5;
}

uint64_t sub_100377E00()
{
  v0.n128_u64[0] = 0x5A5A5A5A5A5A5A5ALL;
  v0.n128_u64[1] = 0x5A5A5A5A5A5A5A5ALL;
  v1.n128_u64[0] = 0x5555555555555555;
  v1.n128_u64[1] = 0x5555555555555555;
  v2.n128_u64[0] = 0xAAAAAAAAAAAAAAAALL;
  v2.n128_u64[1] = 0xAAAAAAAAAAAAAAAALL;
  v3.n128_u64[0] = 0x5555555555555555;
  v3.n128_u64[1] = 0x5555555555555555;
  v4.n128_u64[0] = 0x1111111111111111;
  v4.n128_u64[1] = 0x1111111111111111;
  v5.n128_u64[0] = 0x2222222222222222;
  v5.n128_u64[1] = 0x2222222222222222;
  v6.n128_u64[0] = 0x3333333333333333;
  v6.n128_u64[1] = 0x3333333333333333;
  return sub_100377ED4(v0, v1, v2, v3, 0, v4, v5, v6);
}

float64x2_t *sub_100377ED4@<X0>(float64x2_t *result@<X0>, float64x2_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, unsigned int a7@<W7>, unsigned int a8@<W8>, float64x2_t a9@<Q1>, float64x2_t a10@<Q4>, float64x2_t a11@<Q5>, float64x2_t a12@<Q6>, float64x2_t a13@<Q7>)
{
  do
  {
    v43 = *result;
    v44 = result[1];
    v45 = vmlaq_f64(a10, a9, v33);
    v46 = vmlaq_f64(a11, a9, v34);
    v47 = result[2];
    v48 = result[3];
    v49 = vmlaq_f64(a12, v35, a9);
    v50 = vmlaq_f64(a13, v36, a9);
    v51 = result[4];
    v52 = result[5];
    v53 = vmlaq_f64(v23, a9, v37);
    v54 = vmlaq_f64(v24, a9, v38);
    v55 = result[6];
    v56 = result[7];
    v57 = vmlaq_f64(v25, v39, a9);
    v58 = vmlaq_f64(v26, v40, a9);
    v59 = result[8];
    v60 = result[9];
    v61 = vmlaq_f64(v27, a9, v41);
    v62 = vmlaq_f64(v28, a9, v42);
    *a2 = *result;
    a2[1] = v44;
    v63 = vmlaq_f64(v31, a9, v44);
    v64 = vmlaq_f64(v32, v41, a9);
    v65 = a4 - 64;
    v66 = result[10];
    v67 = result[11];
    v68 = vmlaq_f64(v29, v43, a9);
    v69 = vmlaq_f64(v30, v44, a9);
    v70 = *result;
    v71 = result[1];
    v72 = vmlaq_f64(v45, a9, v47);
    v73 = vmlaq_f64(v46, a9, v48);
    v74 = result[2];
    v75 = result[3];
    v76 = vmlaq_f64(v49, v51, a9);
    v77 = vmlaq_f64(v50, v52, a9);
    v78 = result[4];
    v79 = result[5];
    v80 = vmlaq_f64(v53, a9, v55);
    v81 = vmlaq_f64(v54, a9, v56);
    v82 = result[6];
    v83 = result[7];
    v84 = vmlaq_f64(v57, v59, a9);
    v85 = vmlaq_f64(v58, v60, a9);
    a2[2] = v66;
    a2[3] = v67;
    v86 = vmlaq_f64(v63, v67, a9);
    v87 = vmlaq_f64(v64, a9, v59);
    v88 = result[8];
    v89 = result[9];
    v90 = vmlaq_f64(v61, a9, v66);
    v91 = vmlaq_f64(v62, a9, v67);
    v92 = result[10];
    v93 = result[11];
    v94 = vmlaq_f64(v68, v70, a9);
    for (i = vmlaq_f64(v69, v71, a9); v65 >= 0; i = vmlaq_f64(v253, v255, a9))
    {
      v96 = *result;
      v97 = result[1];
      v98 = vmlaq_f64(v72, a9, v74);
      v99 = vmlaq_f64(v73, a9, v75);
      v100 = result[2];
      v101 = result[3];
      v102 = vmlaq_f64(v76, v78, a9);
      v103 = vmlaq_f64(v77, v79, a9);
      v104 = result[4];
      v105 = result[5];
      v106 = vmlaq_f64(v80, a9, v82);
      v107 = vmlaq_f64(v81, a9, v83);
      a2[4] = v88;
      a2[5] = v89;
      v108 = vmlaq_f64(v86, a9, v89);
      v109 = vmlaq_f64(v87, v82, a9);
      v110 = result[6];
      v111 = result[7];
      v112 = vmlaq_f64(v84, v88, a9);
      v113 = vmlaq_f64(v85, v89, a9);
      v114 = result[8];
      v115 = result[9];
      v116 = vmlaq_f64(v90, a9, v92);
      v117 = vmlaq_f64(v91, a9, v93);
      v118 = result[10];
      v119 = result[11];
      v120 = vmlaq_f64(v94, v96, a9);
      v121 = vmlaq_f64(i, v97, a9);
      v122 = *result;
      v123 = result[1];
      v124 = vmlaq_f64(v98, a9, v100);
      v125 = vmlaq_f64(v99, a9, v101);
      v126 = result[2];
      v127 = result[3];
      v128 = vmlaq_f64(v102, v104, a9);
      v129 = vmlaq_f64(v103, v105, a9);
      a2[6] = v110;
      a2[7] = v111;
      v130 = vmlaq_f64(v108, v111, a9);
      v131 = vmlaq_f64(v109, a9, v104);
      v132 = result[4];
      v133 = result[5];
      v134 = vmlaq_f64(v106, a9, v110);
      v135 = vmlaq_f64(v107, a9, v111);
      v136 = result[6];
      v137 = result[7];
      v138 = vmlaq_f64(v112, v114, a9);
      v139 = vmlaq_f64(v113, v115, a9);
      v140 = result[8];
      v141 = result[9];
      v142 = vmlaq_f64(v116, a9, v118);
      v143 = vmlaq_f64(v117, a9, v119);
      v144 = result[10];
      v145 = result[11];
      v146 = vmlaq_f64(v120, v122, a9);
      v147 = vmlaq_f64(v121, v123, a9);
      v148 = *result;
      v149 = result[1];
      v150 = vmlaq_f64(v124, a9, v126);
      v151 = vmlaq_f64(v125, a9, v127);
      a2[8] = v132;
      a2[9] = v133;
      v152 = vmlaq_f64(v130, a9, v133);
      v153 = vmlaq_f64(v131, v126, a9);
      v154 = result[2];
      v155 = result[3];
      v156 = vmlaq_f64(v128, v132, a9);
      v157 = vmlaq_f64(v129, v133, a9);
      v158 = result[4];
      v159 = result[5];
      v160 = vmlaq_f64(v134, a9, v136);
      v161 = vmlaq_f64(v135, a9, v137);
      v162 = result[6];
      v163 = result[7];
      v164 = vmlaq_f64(v138, v140, a9);
      v165 = vmlaq_f64(v139, v141, a9);
      v166 = result[8];
      v167 = result[9];
      v168 = vmlaq_f64(v142, a9, v144);
      v169 = vmlaq_f64(v143, a9, v145);
      v170 = result[10];
      v171 = result[11];
      v172 = vmlaq_f64(v146, v148, a9);
      v173 = vmlaq_f64(v147, v149, a9);
      a2[10] = v154;
      a2[11] = v155;
      v174 = vmlaq_f64(v152, v155, a9);
      v175 = vmlaq_f64(v153, a9, v148);
      v176 = result[12];
      v177 = result[13];
      v178 = vmlaq_f64(v150, a9, v154);
      v179 = vmlaq_f64(v151, a9, v155);
      v180 = result[2];
      v181 = result[3];
      v182 = vmlaq_f64(v156, v158, a9);
      v183 = vmlaq_f64(v157, v159, a9);
      v184 = result[4];
      v185 = result[5];
      v186 = vmlaq_f64(v160, a9, v162);
      v187 = vmlaq_f64(v161, a9, v163);
      v188 = result[6];
      v189 = result[7];
      v190 = vmlaq_f64(v164, v166, a9);
      v191 = vmlaq_f64(v165, v167, a9);
      v192 = result[8];
      v193 = result[9];
      v194 = vmlaq_f64(v168, a9, v170);
      v195 = vmlaq_f64(v169, a9, v171);
      a2[12] = v176;
      a2[13] = v177;
      v196 = vmlaq_f64(v174, a9, v177);
      v197 = vmlaq_f64(v175, v170, a9);
      v198 = result[14];
      v199 = result[15];
      v200 = vmlaq_f64(v172, v176, a9);
      v201 = vmlaq_f64(v173, v177, a9);
      v202 = *result;
      v203 = result[1];
      v204 = vmlaq_f64(v178, a9, v180);
      v205 = vmlaq_f64(v179, a9, v181);
      v206 = result[2];
      v207 = result[3];
      v208 = vmlaq_f64(v182, v184, a9);
      v209 = vmlaq_f64(v183, v185, a9);
      v210 = result[4];
      v211 = result[5];
      v212 = vmlaq_f64(v186, a9, v188);
      v213 = vmlaq_f64(v187, a9, v189);
      v214 = result[6];
      v215 = result[7];
      v216 = vmlaq_f64(v190, v192, a9);
      v217 = vmlaq_f64(v191, v193, a9);
      a2[14] = v198;
      a2[15] = v199;
      v218 = vmlaq_f64(v196, v199, a9);
      v219 = vmlaq_f64(v197, a9, v192);
      a2 += 16;
      v220 = result[8];
      v221 = result[9];
      v222 = vmlaq_f64(v194, a9, v198);
      v223 = vmlaq_f64(v195, a9, v199);
      v224 = result[10];
      v225 = result[11];
      v226 = vmlaq_f64(v200, v202, a9);
      v227 = vmlaq_f64(v201, v203, a9);
      result += 16;
      v228 = *result;
      v229 = result[1];
      v230 = vmlaq_f64(v204, a9, v206);
      v231 = vmlaq_f64(v205, a9, v207);
      v232 = result[2];
      v233 = result[3];
      v234 = vmlaq_f64(v208, v210, a9);
      v235 = vmlaq_f64(v209, v211, a9);
      v236 = result[4];
      v237 = result[5];
      v238 = vmlaq_f64(v212, a9, v214);
      v239 = vmlaq_f64(v213, a9, v215);
      v240 = result[6];
      v241 = result[7];
      v242 = vmlaq_f64(v216, v220, a9);
      v243 = vmlaq_f64(v217, v221, a9);
      v244 = result[8];
      v245 = result[9];
      v246 = vmlaq_f64(v222, a9, v224);
      v247 = vmlaq_f64(v223, a9, v225);
      *a2 = *result;
      a2[1] = v229;
      v248 = vmlaq_f64(v218, a9, v229);
      v249 = vmlaq_f64(v219, v224, a9);
      v65 -= 32;
      v250 = result[10];
      v251 = result[11];
      v252 = vmlaq_f64(v226, v228, a9);
      v253 = vmlaq_f64(v227, v229, a9);
      v254 = *result;
      v255 = result[1];
      v72 = vmlaq_f64(v230, a9, v232);
      v73 = vmlaq_f64(v231, a9, v233);
      v74 = result[2];
      v75 = result[3];
      v76 = vmlaq_f64(v234, v236, a9);
      v77 = vmlaq_f64(v235, v237, a9);
      v78 = result[4];
      v79 = result[5];
      v80 = vmlaq_f64(v238, a9, v240);
      v81 = vmlaq_f64(v239, a9, v241);
      v82 = result[6];
      v83 = result[7];
      v84 = vmlaq_f64(v242, v244, a9);
      v85 = vmlaq_f64(v243, v245, a9);
      a2[2] = v250;
      a2[3] = v251;
      v86 = vmlaq_f64(v248, v251, a9);
      v87 = vmlaq_f64(v249, a9, v244);
      v88 = result[8];
      v89 = result[9];
      v90 = vmlaq_f64(v246, a9, v250);
      v91 = vmlaq_f64(v247, a9, v251);
      v92 = result[10];
      v93 = result[11];
      v94 = vmlaq_f64(v252, v254, a9);
    }

    v256 = *result;
    v257 = result[1];
    v258 = vmlaq_f64(v72, a9, v74);
    v259 = vmlaq_f64(v73, a9, v75);
    v260 = result[2];
    v261 = result[3];
    v262 = vmlaq_f64(v76, v78, a9);
    v263 = vmlaq_f64(v77, v79, a9);
    v264 = result[4];
    v265 = result[5];
    v266 = vmlaq_f64(v80, a9, v82);
    v267 = vmlaq_f64(v81, a9, v83);
    a2[4] = v88;
    a2[5] = v89;
    v268 = vmlaq_f64(v86, a9, v89);
    v269 = vmlaq_f64(v87, v82, a9);
    v270 = result[6];
    v271 = result[7];
    v272 = vmlaq_f64(v84, v88, a9);
    v273 = vmlaq_f64(v85, v89, a9);
    v274 = result[8];
    v275 = result[9];
    v276 = vmlaq_f64(v90, a9, v92);
    v277 = vmlaq_f64(v91, a9, v93);
    v278 = result[10];
    v279 = result[11];
    v280 = vmlaq_f64(v94, v256, a9);
    v281 = vmlaq_f64(i, v257, a9);
    v282 = *result;
    v283 = result[1];
    v284 = vmlaq_f64(v258, a9, v260);
    v285 = vmlaq_f64(v259, a9, v261);
    v286 = result[2];
    v287 = result[3];
    v288 = vmlaq_f64(v262, v264, a9);
    v289 = vmlaq_f64(v263, v265, a9);
    a2[6] = v270;
    a2[7] = v271;
    v290 = vmlaq_f64(v268, v271, a9);
    v291 = vmlaq_f64(v269, a9, v264);
    v292 = result[4];
    v293 = result[5];
    v294 = vmlaq_f64(v266, a9, v270);
    v295 = vmlaq_f64(v267, a9, v271);
    v296 = result[6];
    v297 = result[7];
    v298 = vmlaq_f64(v272, v274, a9);
    v299 = vmlaq_f64(v273, v275, a9);
    v300 = result[8];
    v301 = result[9];
    v302 = vmlaq_f64(v276, a9, v278);
    v303 = vmlaq_f64(v277, a9, v279);
    v304 = result[10];
    v305 = result[11];
    v306 = vmlaq_f64(v280, v282, a9);
    v307 = vmlaq_f64(v281, v283, a9);
    v308 = *result;
    v309 = result[1];
    v310 = vmlaq_f64(v284, a9, v286);
    v311 = vmlaq_f64(v285, a9, v287);
    a2[8] = v292;
    a2[9] = v293;
    v312 = vmlaq_f64(v290, a9, v293);
    v313 = vmlaq_f64(v291, v286, a9);
    v314 = result[2];
    v315 = result[3];
    v316 = vmlaq_f64(v288, v292, a9);
    v317 = vmlaq_f64(v289, v293, a9);
    v318 = result[4];
    v319 = result[5];
    v320 = vmlaq_f64(v294, a9, v296);
    v321 = vmlaq_f64(v295, a9, v297);
    v322 = result[6];
    v323 = result[7];
    v324 = vmlaq_f64(v298, v300, a9);
    v325 = vmlaq_f64(v299, v301, a9);
    v326 = result[8];
    v327 = result[9];
    v328 = vmlaq_f64(v302, a9, v304);
    v329 = vmlaq_f64(v303, a9, v305);
    v330 = result[10];
    v331 = result[11];
    v332 = vmlaq_f64(v306, v308, a9);
    v333 = vmlaq_f64(v307, v309, a9);
    a2[10] = v314;
    a2[11] = v315;
    v334 = vmlaq_f64(v312, v315, a9);
    v335 = vmlaq_f64(v313, a9, v308);
    v336 = result[12];
    v337 = result[13];
    v338 = vmlaq_f64(v310, a9, v314);
    v339 = vmlaq_f64(v311, a9, v315);
    v340 = result[2];
    v341 = result[3];
    v342 = vmlaq_f64(v316, v318, a9);
    v343 = vmlaq_f64(v317, v319, a9);
    v344 = result[4];
    v345 = result[5];
    v346 = vmlaq_f64(v320, a9, v322);
    v347 = vmlaq_f64(v321, a9, v323);
    v348 = result[6];
    v349 = result[7];
    v350 = vmlaq_f64(v324, v326, a9);
    v351 = vmlaq_f64(v325, v327, a9);
    v352 = result[8];
    v353 = result[9];
    v354 = vmlaq_f64(v328, a9, v330);
    v355 = vmlaq_f64(v329, a9, v331);
    v15 += a7 * v19;
    a2[12] = v336;
    a2[13] = v337;
    v356 = vmlaq_f64(v334, a9, v337);
    v357 = vmlaq_f64(v335, v330, a9);
    a4 = a6;
    v16 += a8 * v20;
    v358 = result[14];
    v359 = result[15];
    v360 = vmlaq_f64(v332, v336, a9);
    v361 = vmlaq_f64(v333, v337, a9);
    v362 = *result;
    v363 = result[1];
    v17 += v20 * a7;
    a10 = vmlaq_f64(v338, a9, v340);
    a11 = vmlaq_f64(v339, a9, v341);
    v33 = result[2];
    v34 = result[3];
    v364 = a5-- <= 1;
    a12 = vmlaq_f64(v342, v344, a9);
    a13 = vmlaq_f64(v343, v345, a9);
    v35 = result[4];
    v36 = result[5];
    v23 = vmlaq_f64(v346, a9, v348);
    v24 = vmlaq_f64(v347, a9, v349);
    v37 = result[6];
    v38 = result[7];
    v25 = vmlaq_f64(v350, v352, a9);
    v26 = vmlaq_f64(v351, v353, a9);
    a2[14] = v358;
    a2[15] = v359;
    v31 = vmlaq_f64(v356, v359, a9);
    v32 = vmlaq_f64(v357, a9, v352);
    v39 = result[8];
    v40 = result[9];
    v27 = vmlaq_f64(v354, a9, v358);
    v28 = vmlaq_f64(v355, a9, v359);
    a2 = v22;
    v41 = result[10];
    v42 = result[11];
    v29 = vmlaq_f64(v360, v362, a9);
    v30 = vmlaq_f64(v361, v363, a9);
    result = v21;
  }

  while (!v364);
  if (a3)
  {
    *a3 = a10;
    *(a3 + 16) = a11;
    *(a3 + 32) = a12;
    *(a3 + 48) = a13;
    *(a3 + 64) = v23;
    *(a3 + 80) = v24;
    *(a3 + 96) = v25;
    *(a3 + 112) = v26;
    *(a3 + 128) = v27;
    *(a3 + 144) = v28;
    *(a3 + 160) = v29;
    *(a3 + 176) = v30;
    *(a3 + 192) = v31;
    *(a3 + 208) = v32;
    *(a3 + 224) = v362;
    *(a3 + 240) = v363;
    *(a3 + 256) = vmlaq_f64(v363, v363, a9);
    *(a3 + 272) = v33;
    *(a3 + 288) = v34;
    *(a3 + 304) = v35;
    *(a3 + 320) = v36;
    *(a3 + 336) = v37;
    *(a3 + 352) = v39;
    *(a3 + 368) = v40;
    *(a3 + 384) = v41;
    *(a3 + 400) = v42;
    *(a3 + 416) = v13;
    *(a3 + 424) = v14;
    *(a3 + 432) = v15;
    *(a3 + 440) = v16;
    *(a3 + 448) = v17;
    *(a3 + 456) = v18;
  }

  return result;
}

uint64_t sub_100378E20()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100378E58()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100378E90@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t sub_100378EEC(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x98);

  return v2(v3);
}

uint64_t sub_100378F50@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xA8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100378FAC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0xB0);

  return v4(v2, v3);
}

uint64_t sub_10037902C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100379064()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10037909C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003790D8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100379124()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003791BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100379268(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10037930C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1003793B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10037A2AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10037A2EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10037DCC8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10037DD00()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

BOOL sub_10037DD3C(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 68) & 1) == 0)
  {
    if ((*(a2 + 68) & 1) == 0)
    {
      v6 = *(a1 + 64);
      v7 = *(a2 + 64);
      v4 = v6 < v7;
      if (v6 == v7)
      {
        if ((*(a1 + 32) & 1) == 0)
        {
          sub_101869E1C();
        }

        if ((*(a2 + 32) & 1) == 0)
        {
          sub_101869E1C();
        }

        return *(a1 + 40) < *(a2 + 40);
      }

      return v4;
    }

    return 1;
  }

  if (!*(a2 + 68))
  {
    return 0;
  }

  if (*(a1 + 48))
  {
    if (*(a2 + 48))
    {
      v2 = *(a1 + 56);
      v3 = *(a2 + 56);
      if (v2 != v3)
      {
        return v3 < v2;
      }

      goto LABEL_14;
    }

    return 0;
  }

  if (*(a2 + 48))
  {
    return 1;
  }

LABEL_14:
  if ((*(a1 + 32) & 1) == 0)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      return *(a1 + 64) < *(a2 + 64);
    }

    return 1;
  }

  if (!*(a2 + 32))
  {
    return 0;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  v4 = v8 < v9;
  if (v8 == v9)
  {
    return *(a1 + 64) < *(a2 + 64);
  }

  return v4;
}

uint64_t sub_10037DE10(uint64_t result, uint64_t a2)
{
  if (*(a2 + 32) == 1)
  {
    if (*(result + 32))
    {
      v2 = *(result + 40);
      if (v2 <= *(a2 + 40))
      {
        v2 = *(a2 + 40);
      }

      *(result + 40) = v2;
    }

    else
    {
      *(result + 40) = *(a2 + 40);
      *(result + 32) = 1;
    }
  }

  if (*(a2 + 48) == 1)
  {
    if (*(result + 48))
    {
      v3 = *(a2 + 56);
      if (v3 >= *(result + 56))
      {
        v3 = *(result + 56);
      }

      *(result + 56) = v3;
    }

    else
    {
      *(result + 56) = *(a2 + 56);
      *(result + 48) = 1;
    }
  }

  *(result + 68) = (*(result + 68) | *(a2 + 68)) & 1;
  return result;
}

uint64_t sub_10037DEA0(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10037DED4(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10037E964(uint64_t a1, uint64_t a2)
{
  *a1 = off_102446A10;
  *(a1 + 24) = a2;
  *(a1 + 40) = 0;
  sub_10000EC00(__p, "CLIndoorLogicOSTransaction");
  sub_100CE1DE4(a1 + 48, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 8) = objc_alloc_init(CLIndoorState);
  *(a1 + 16) = objc_alloc_init(CLIndoorSettings);
  return a1;
}

void sub_10037EA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10037EA38(uint64_t a1)
{
  *a1 = off_102446A10;

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  sub_100CE1E30(a1 + 48);
  return a1;
}

void sub_10037EAB4(uint64_t a1)
{
  sub_10037EA38(a1);

  operator delete();
}

uint64_t sub_10037EAEC(uint64_t a1)
{
  if (sub_10025D130(a1))
  {
    return 300000000000;
  }

  v3 = *(a1 + 16);

  return [v3 errorBackoffDuration];
}

uint64_t sub_10037EB40(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  if (![*(a1 + 8) pipelinedSeeded])
  {
    sub_10186A474();
  }

  if (![*(a1 + 16) pipelinedEnabled])
  {
    return 1;
  }

  if (*[*v4 latestPosition] == 1)
  {
    v5 = [*v4 latestPosition];
    if ((*v5 & 1) == 0)
    {
      sub_10186A448();
    }

    if (!sub_10025D0EC((v5 + 8), a2))
    {
      if (([*v4 locationGroupsLoaded] & 1) == 0)
      {
        if (qword_1025D4620 != -1)
        {
          sub_101869E5C();
        }

        v20 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
        {
          v21 = [*v4 pipelinedSeeded];
          *buf = 67240192;
          *&buf[4] = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "Seeded = %{public}d & trying to turn off but availability tiles not loaded?!", buf, 8u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10186A668(v4);
        }

        return 8;
      }

      v9 = sub_1001B8450(a1);
      if (qword_1025D4620 != -1)
      {
        sub_101869E5C();
      }

      v10 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [objc_msgSend(*v4 "locationGroups")];
        v12 = sub_10017F5D4([*v4 pipelinedSeeded]);
        *buf = 134349570;
        *&buf[4] = v9;
        *&buf[12] = 2050;
        *&buf[14] = v11;
        *&buf[22] = 2082;
        *&buf[24] = v12;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, load, stalecheck, %{public}lu, total, %{public}lu, state, %{public}s", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186A770();
      }

      v13 = [*v4 latestPosition];
      if ((*v13 & 1) == 0)
      {
        sub_10186A8B0();
      }

      v14 = *(v13 + 28);
      v15 = *(v13 + 12);
      v28 = *(v13 + 108);
      v25 = v28;
      v26 = v14;
      v27 = v15;
      memcpy(buf, &unk_101C7C020, 0x230uLL);
      v16 = [[CLGpsPosition alloc] initWithLocation:v24 andPrivateLocation:buf];
      [*(a1 + 16) venueGroupDistance];
      v22[1] = v17;
      v22[2] = [*(a1 + 16) fakeLastFix];
      v23 = sub_10001CF04();
      v18 = [*(a1 + 8) locationGroups];
      [*(a1 + 8) availabilityZScoreConfidenceInterval];
      v19 = [CLIndoorCommonHooks nearestVenues:a2 availableVenues:v18 latestPosition:v16 availabilityZScoreConfidenceInterval:v22 settings:1 isAllowedMultipleVenues:?];

      if (!v19 || ![v19 count])
      {
        return 2;
      }
    }
  }

  [*v4 latestNavModeEstimate];
  if (v6)
  {
    if (v6 == 2 && (*(a1 + 40) & 1) == 0)
    {
      return 3;
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E5C();
    }

    v8 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "Uninitialized outdoor classification while pipeline is active", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186A8DC();
    }
  }

  if (![*v4 wifiPowered])
  {
    return 4;
  }

  if ([*v4 isStreamingClientInFitnessSession])
  {
    return 5;
  }

  if ([*v4 isVehicleConnected] && *(a1 + 40) != 1)
  {
    return 6;
  }

  if ([*v4 isInVehicleNavigation] && *(a1 + 40) != 1)
  {
    return 7;
  }

  if ([*v4 hasAtLeastOneClientWithCLActivityTypeFitness])
  {
    return 9;
  }

  if (sub_10018E9E4([*v4 fitnessModeStateMachine]))
  {
    return 10;
  }

  return 0;
}

uint64_t sub_10037EF8C(uint64_t a1)
{
  result = (*(**(a1 + 24) + 104))(*(a1 + 24));
  if (result)
  {
    v3 = *(**(a1 + 24) + 168);

    return v3();
  }

  return result;
}

const char *sub_10037F018(void *a1)
{
  if (a1 < 3)
  {
    return (&off_102446BD8)[a1];
  }

  if (qword_1025D4620 != -1)
  {
    sub_101869E48();
  }

  v3 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
  {
    v4[0] = 67240192;
    v4[1] = a1;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "Corrupt Run: got %{public}d", v4, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_10186B994(a1);
  }

  return "Unknown ProviderState";
}

uint64_t sub_10037F10C(uint64_t a1, void *a2)
{
  result = [*(a1 + 8) gpsAssistanceRequested];
  if (result != a2)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v6[0] = 67109120;
      v6[1] = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "onGpsAssistanceRequest, %d", v6, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186C400(a2);
    }

    [*(a1 + 8) setGpsAssistanceRequested:a2];
    result = [*(a1 + 8) gpsFusionRequested];
    if ((result & 1) == 0)
    {
      return (*(**(a1 + 24) + 192))(*(a1 + 24), [*(a1 + 8) gpsAssistanceRequested]);
    }
  }

  return result;
}

void sub_10037F24C(uint64_t a1, uint64_t a2, void *a3)
{
  if ([*(a1 + 8) pipelinedSeeded])
  {
    if ([*(a1 + 8) pipelinedDidStartLocalizing])
    {
      if (qword_1025D4620 != -1)
      {
        sub_101869E48();
      }

      v6 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "We got a pipelined error, but believe it's still running", __p, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186C5D0();
      }
    }

    else
    {
      v9 = *(a1 + 24);
      sub_10000EC00(__p, "pipeline error, seeded not started");
      (*(*v9 + 16))(v9, __p);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      sub_10000EC00(__p, "afterError");
      sub_10017F2F4(a1, 0, __p);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_10000EC00(__p, "afterIndoorError");
    sub_100264D7C(a1, __p);
    if (v13 < 0)
    {
      operator delete(__p[0]);
      if (a3)
      {
        goto LABEL_23;
      }
    }

    else if (a3)
    {
LABEL_23:
      v10 = [a3 code];
LABEL_26:
      v11 = *(a1 + 8);
      v15 = a2;
      v16 = v10;
      v14[0] = 1;
      [v11 setLastIndoorError:v14];
      return;
    }

    v10 = -1;
    goto LABEL_26;
  }

  v7 = *(a1 + 24);
  sub_10000EC00(__p, "pipeline error, not seeded");
  (*(*v7 + 16))(v7, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (qword_1025D4620 != -1)
  {
    sub_101869E5C();
  }

  v8 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "We got a pipelined error after we decided to shut things down.", __p, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10186C6B4();
  }
}

void sub_10037F4DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10037F50C(uint64_t a1)
{
  if ([*(a1 + 8) pipelinedSeeded])
  {
    v2 = *(a1 + 8);
    v6[0] = 0;
    [v2 setLastIndoorError:v6];
    if (v6[0] == 1)
    {
      v6[0] = 0;
    }

    [*(a1 + 8) setPipelinedDidStartLocalizing:1];
    sub_10000EC00(__p, "transient");
    sub_10017F2F4(a1, 1, __p);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10000EC00(__p, "onNoGoodIndoorEstimate_Transient");
    sub_10025D7D0(a1, __p);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v3 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "We got an update after we decided to shut things down.", __p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186C798();
    }
  }
}

void sub_10037F668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10037F690(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  sub_10000EC00(__p, "no yield");
  (*(*v4 + 16))(v4, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  [*(a1 + 8) setPipelinedDidStartLocalizing:1];
  v5 = *(a1 + 8);
  v9[0] = 0;
  [v5 setLastIndoorError:v9];
  if (v9[0] == 1)
  {
    v9[0] = 0;
  }

  if ([*(a1 + 8) pipelinedSeeded])
  {
    sub_10000EC00(__p, "onNoGoodIndoorEstimate_Permanent");
    sub_100264D7C(a1, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10000EC00(__p, "outdoor");
    sub_10017F2F4(a1, 2, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10000EC00(__p, "CoarseIndoor says outdoor");
    sub_10023E5A8(a1, a2, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E5C();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "We thought pipeline reported YIELD_FAILURE_GIVE_UP even though it is not seeded. This means we got an update after we decided to shut things down. ", __p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186C87C();
    }
  }
}

void sub_10037F87C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_10037F8AC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (a1 + 16);
  v7 = *(a1 + 16);
  *v6 = [[CLIndoorSettings alloc] initWithSettings:a3];
  if (([objc_msgSend(v7 "disabledVenues")] & 1) == 0)
  {
    [*(a1 + 8) clearLocationGroups];
    if ([*(a1 + 8) state] == 2 && (*(**(a1 + 24) + 112))(*(a1 + 24)))
    {
      if (qword_1025D4620 != -1)
      {
        sub_101869E48();
      }

      v8 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v9 = sub_10017F5D4([*(a1 + 8) pipelinedSeeded]);
        v10 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(*v6 "disabledVenues")];
        *__p = 136446466;
        *&__p[4] = v9;
        v15 = 2082;
        v16 = v10;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#Notice Reloading availability tiles (currently seeded = %{public}s). Set of disabled venues has changed to %{public}s", __p, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186D55C((a1 + 8), v6);
      }

      sub_10000EC00(__p, "reset");
      sub_10017F2F4(a1, 0, __p);
      if (v17 < 0)
      {
        operator delete(*__p);
      }

      sub_10000EC00(__p, "settings reset, disabledVenues changed");
      sub_100264D7C(a1, __p);
      if (v17 < 0)
      {
        operator delete(*__p);
      }

      sub_10000EC00(__p, "settings reset, disabledVenues changed");
      sub_1001B81F8(a1, a2, __p);
      if (v17 < 0)
      {
        operator delete(*__p);
      }

      sub_10000EC00(__p, "settings reset, disabledVenues changed");
      sub_10022C7A4(a1, a2, __p);
      if (v17 < 0)
      {
        operator delete(*__p);
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101869E48();
      }

      v11 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(*v6 "disabledVenues")];
        *__p = 136446210;
        *&__p[4] = v12;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Notice Set of disabled venues has changed to %{public}s.", __p, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186D428(v6);
      }
    }
  }

  if (([*v6 pipelinedEnabled] & 1) == 0)
  {
    sub_10000EC00(__p, "settings reset, pipelined disabled\n");
    sub_10023E5A8(a1, a2, __p);
    if (v17 < 0)
    {
      operator delete(*__p);
    }
  }

  if (([objc_msgSend(v7 "indoorAvailabilityTilesServerUrl")] & 1) == 0)
  {
    (*(**(a1 + 24) + 80))(*(a1 + 24));
  }

  result = [a3 objectForKeyedSubscript:off_1025D49A0[0]];
  if (result)
  {
    result = [result BOOLValue];
  }

  *(a1 + 40) = result;
  return result;
}

void sub_10037FCAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10037FCEC(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_10000EC00(__p, [objc_msgSend(*(a1 + 16) "indoorAvailabilityTilesServerUrl")]);
  if ((v9 & 0x80u) == 0)
  {
    v3 = v9;
  }

  else
  {
    v3 = __p[1];
  }

  v4 = &v7;
  sub_100070148(&v7, v3 + 1);
  if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v4 = v7.__r_.__value_.__r.__words[0];
  }

  if (v3)
  {
    if ((v9 & 0x80u) == 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    memmove(v4, v5, v3);
  }

  *(&v4->__r_.__value_.__l.__data_ + v3) = 47;
  v6 = std::string::append(&v7, "availability.pb.gz", 0x12uLL);
  *a2 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10037FDE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10037FE18(std::string *a1@<X8>)
{
  sub_10000EC00(&v8, "/");
  sub_10000EC00(__p, "availability.pb");
  sub_1001B8C6C();
  std::operator+<char>();
  if ((v7 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v3 = v7;
  }

  else
  {
    v3 = __p[1];
  }

  v4 = std::string::append(&v5, v2, v3);
  *a1 = *v4;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }
}

void sub_10037FEDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_10037FF28(std::string *a1@<X8>)
{
  sub_10000EC00(&v8, "/");
  sub_10000EC00(__p, "availability.pb.gz");
  sub_1001B8C6C();
  std::operator+<char>();
  if ((v7 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v3 = v7;
  }

  else
  {
    v3 = __p[1];
  }

  v4 = std::string::append(&v5, v2, v3);
  *a1 = *v4;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }
}

void sub_10037FFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100380058(uint64_t a1)
{
  v2 = [*(a1 + 16) tilePrefetchPredictionActivityCycleAllowance];
  v3 = v2;
  v4 = HIDWORD(v2);
  LODWORD(result) = [*(a1 + 8) tilePrefetchPredictionActivityCycleAllowance];
  if (v3)
  {
    return v4;
  }

  else
  {
    return result;
  }
}

void sub_1003800A0(uint64_t a1)
{
  [*(a1 + 8) setPipelinedVenues:0];
  sub_10000EC00(__p, "killdaemon");
  sub_10017F2F4(a1, 0, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10037F10C(a1, 0);
  if ([*(a1 + 8) state] == 2)
  {
    sub_10000EC00(__p, "pipelined killed");
    sub_100264D7C(a1, __p);
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_10038014C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10038016C(uint64_t a1)
{
  if (qword_1025D4620 != -1)
  {
    sub_101869E48();
  }

  v2 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Clearing cached last fix", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10186D6A8();
  }

  result = [*(a1 + 8) latestPosition];
  if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

id sub_10038021C(uint64_t a1)
{
  result = [*(a1 + 8) state];
  if (result)
  {
    if (result == 2)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101869E48();
      }

      v4 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "stopping immediately", __p, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186D78C();
      }
    }

    else if (result == 1)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101869E48();
      }

      v3 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "stop while stopping - likely debounce expired", __p, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186D870();
      }
    }

    [*(a1 + 8) setState:0];
    if (qword_1025D4620 != -1)
    {
      sub_101869E5C();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "@ClxIndoor, state, 0, request", __p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186D954();
    }

    if (sub_10001CF04())
    {
      if (qword_1025D4620 != -1)
      {
        sub_101869E5C();
      }

      v6 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "@ClxWifi2, state, 0, request", __p, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186DA38();
      }
    }

    (*(**(a1 + 24) + 40))(*(a1 + 24));
    sub_10000EC00(__p, "PROVIDER shutting down");
    sub_10025D7D0(a1, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    return [*(a1 + 8) clearLocationGroups];
  }

  return result;
}

void sub_100380480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10038049C(uint64_t a1, uint64_t a2, CLMotionActivity *a3)
{
  [*(a1 + 8) latestNavModeEstimate];
  v7 = v6;
  v8 = sub_10025EC70([*(a1 + 8) navModeEstimator], a3);
  [*(a1 + 8) setLatestNavModeEstimate:{v8, v9 & 0xFFFFFFFFFFLL}];
  [*(a1 + 8) latestNavModeEstimate];
  v11 = v10;
  if (v7 != v10)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v12 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
    {
      LODWORD(__p[0]) = 67174657;
      HIDWORD(__p[0]) = v11;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "updateLatestMotionActivity state,%{private}d", __p, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186DDF4();
    }

    v13 = [*(a1 + 8) pipelinedSeeded];
    if (v11 == 2)
    {
      if (v13)
      {
        sub_10000EC00(__p, "motion");
        sub_10017F2F4(a1, 2, __p);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  sub_10038A6F8([*(a1 + 8) fitnessModeStateMachine], a3, a2);
  sub_10000EC00(__p, "updateLatestMotionActivity");
  sub_10022C7A4(a1, a2, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100380650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100380678(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 8);
  v13[0] = 0;
  [v7 setLastIndoorError:v13];
  if (v13[0] == 1)
  {
    v13[0] = 0;
  }

  sub_10037F10C(a1, a4);
  if ([*(a1 + 8) pipelinedSeeded])
  {
    sub_10000EC00(__p, "pipelined YIELD OK");
    sub_10025D7D0(a1, __p);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10000EC00(__p, "pipelineyeild");
    sub_10017F2F4(a1, 1, __p);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E5C();
    }

    v8 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#Warning We thought pipeline couldn't figure out it's position but it did. This means we got an update after we decided to shut things down. ", __p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186E628();
    }
  }

  [*(a1 + 8) setPipelinedDidStartLocalizing:1];
  v9 = *(a1 + 24);
  LODWORD(__p[0]) = 0;
  return (*(*v9 + 184))(v9, __p, a3, 0, 0xFFFFFFFFLL, 0);
}

void sub_100380830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100380858(uint64_t a1)
{
  if (qword_1025D4620 != -1)
  {
    sub_101869E48();
  }

  v2 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "kNotificationSleep - stopLocationImmediately()", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10186E70C();
  }

  return sub_10038021C(a1);
}

void sub_1003808F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int a5)
{
  if (qword_1025D4620 != -1)
  {
    sub_101869E48();
  }

  v10 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 8) state];
    *__p = 67240448;
    *&__p[4] = a5;
    *&__p[8] = 1026;
    *&__p[10] = v11;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, update, %{public}d, state, %{public}d", __p, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10186EA7C(a1, a5);
  }

  if (a5 > 1)
  {
    if (a5 == 2)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101869E5C();
      }

      v20 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v21 = a4;
        if (*(a4 + 23) < 0)
        {
          v21 = *a4;
        }

        *__p = 136380675;
        *&__p[4] = v21;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "Downloaded availability tile to %{private}s - decompressing", __p, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186ECBC();
      }

      [*(a1 + 8) clearLocationGroups];
      if ([*(a1 + 8) state])
      {
        sub_10000EC00(__p, "onAvlFileUpdated CLFileUpdate::kUpdateStatusCompleted");
        sub_1001B81F8(a1, a2, __p);
        if (v25 < 0)
        {
          operator delete(*__p);
        }

        if ([*(a1 + 8) state] == 2)
        {
          sub_10000EC00(__p, "onAvlFileUpdateStatusCompleted");
          sub_10022C7A4(a1, a2, __p);
          if (v25 < 0)
          {
            operator delete(*__p);
          }
        }
      }

      else
      {
        if (qword_1025D4620 != -1)
        {
          sub_101869E5C();
        }

        v22 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          *__p = 0;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "Don't need to reload availability tile - not running", __p, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10186EDC4();
        }
      }
    }

    else if (a5 == 3)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101869E5C();
      }

      v15 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v16 = a3;
        if (*(a3 + 23) < 0)
        {
          v16 = *a3;
        }

        v17 = a4;
        if (*(a4 + 23) < 0)
        {
          v17 = *a4;
        }

        *__p = 136446466;
        *&__p[4] = v16;
        *&__p[12] = 2082;
        v24 = v17;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "#Warning Failed to download %{public}s to %{public}s", __p, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186EB9C();
      }
    }
  }

  else if (a5)
  {
    if (a5 == 1)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101869E5C();
      }

      v12 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v13 = a3;
        if (*(a3 + 23) < 0)
        {
          v13 = *a3;
        }

        v14 = a4;
        if (*(a4 + 23) < 0)
        {
          v14 = *a4;
        }

        *__p = 136315394;
        *&__p[4] = v13;
        *&__p[12] = 2080;
        v24 = v14;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Started downloading %s to %s", __p, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186EEA8();
      }
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E5C();
    }

    v18 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v19 = a3;
      if (*(a3 + 23) < 0)
      {
        v19 = *a3;
      }

      *__p = 136315138;
      *&__p[4] = v19;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "#Warning Got status update none from: %s", __p, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186EFC8();
    }
  }
}

void sub_100380D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100380DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1025D4620 != -1)
  {
    sub_101869E48();
  }

  v6 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(__p[0]) = 67109120;
    HIDWORD(__p[0]) = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "WiFi power state changed to %d", __p, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10186F0D0();
  }

  [*(a1 + 8) setWifiPowered:a3];
  if (a3)
  {
    v7 = "setWifiPowered:ON";
  }

  else
  {
    v7 = "setWifiPowered:OFF";
  }

  sub_10000EC00(__p, v7);
  sub_10022C7A4(a1, a2, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100380EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100380F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1025D4620 != -1)
  {
    sub_101869E48();
  }

  v6 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(__p[0]) = 67109120;
    HIDWORD(__p[0]) = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "WiFi association state changed to %d", __p, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10186F1CC();
  }

  [*(a1 + 8) setWifiAssociated:a3];
  if (a3)
  {
    v7 = "setWifiAssociated:ON";
  }

  else
  {
    v7 = "setWifiAssociated:OFF";
  }

  sub_10000EC00(__p, v7);
  sub_10022C7A4(a1, a2, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100381030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100381054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1025D4620 != -1)
  {
    sub_101869E48();
  }

  v6 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
  {
    LODWORD(__p[0]) = 67240192;
    HIDWORD(__p[0]) = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "Streaming Client in fitness session changed to %{public}d", __p, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10186F2C8();
  }

  [*(a1 + 8) setIsStreamingClientInFitnessSession:a3];
  if ([*(a1 + 8) pipelinedSeeded])
  {
    if (a3)
    {
      sub_10000EC00(__p, "streaming");
      sub_10017F2F4(a1, 2, __p);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (a3)
  {
    v7 = "setInFitnessSession:ON";
  }

  else
  {
    v7 = "setInFitnessSession:OFF";
  }

  sub_10000EC00(__p, v7);
  sub_10022C7A4(a1, a2, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003811C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003811F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1025D4620 != -1)
  {
    sub_101869E48();
  }

  v6 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
  {
    LODWORD(__p[0]) = 67240192;
    HIDWORD(__p[0]) = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "Vehicle connection changed to %{public}d", __p, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10186F3C4();
  }

  [*(a1 + 8) setIsVehicleConnected:a3];
  if ([*(a1 + 8) pipelinedSeeded] && a3)
  {
    if (*(a1 + 40) == 1)
    {
      sub_10000EC00(__p, "vehicleconnect");
      sub_10017F2F4(a1, 1, __p);
    }

    else
    {
      sub_10000EC00(__p, "vehicleconnect");
      sub_10017F2F4(a1, 2, __p);
    }

    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (a3)
  {
    v7 = "setVehicleConnected:ON";
  }

  else
  {
    v7 = "setVehicleConnected:OFF";
  }

  sub_10000EC00(__p, v7);
  sub_10022C7A4(a1, a2, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100381394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003813C0(uint64_t a1, uint64_t a2)
{
  if (([*(a1 + 8) hasAtLeastOneClientWithCLActivityTypeFitness] & 1) == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v4 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "At least 1 client using a fitness CLActivityType", __p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186F784();
    }
  }

  [*(a1 + 8) setHasAtLeastOneClientWithCLActivityTypeFitness:1];
  if ([*(a1 + 8) pipelinedSeeded])
  {
    sub_10000EC00(__p, "fitness");
    sub_10017F2F4(a1, 2, __p);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10000EC00(__p, "onAtLeastOneClientHasCLActivityTypeFitness");
  sub_10022C7A4(a1, a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003814E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100381508(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 8) hasAtLeastOneClientWithCLActivityTypeFitness])
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v4 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "no clients using a fitness CLActivityType", __p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186F868();
    }
  }

  [*(a1 + 8) setHasAtLeastOneClientWithCLActivityTypeFitness:0];
  sub_10000EC00(__p, "onNoClientsHaveCLActivityTypeFitness");
  sub_10022C7A4(a1, a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003815F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100381610(uint64_t a1)
{
  [*(a1 + 8) setLastARSessionState:?];
  result = [*(a1 + 8) pipelinedSeeded];
  if (result)
  {
    v3 = *(a1 + 24);
    v4 = [*(a1 + 8) lastARSessionState];
    v5 = *(*v3 + 128);

    return v5(v3, v4);
  }

  return result;
}

id sub_100381694(uint64_t a1)
{
  result = [*(a1 + 8) pipelinedSeeded];
  if (result)
  {
    v3 = *(**(a1 + 24) + 136);

    return v3();
  }

  return result;
}

id sub_100381708(uint64_t a1)
{
  result = [*(a1 + 8) pipelinedSeeded];
  if (result)
  {
    v3 = *(**(a1 + 24) + 144);

    return v3();
  }

  return result;
}

void sub_10038177C(uint64_t a1)
{
  v2 = (a1 + 8);
  if ([*(a1 + 8) state] == 1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v3 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
    {
      LOWORD(v6[0]) = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "debounce timer triggered", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186FA4C();
    }

    sub_10038021C(a1);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v4 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v5 = [*v2 state];
      v6[0] = 67109120;
      v6[1] = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Ignoring debounce timer trigger - pipelined is currently in state %d", v6, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186F94C(v2);
    }
  }
}

void sub_1003818E0(uint64_t *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, std::string *a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  if (qword_1025D4620 == -1)
  {
    v13 = a4;
  }

  else
  {
    sub_101869E48();
    v13 = a4;
  }

  v14 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349824;
    *&buf[4] = a8;
    *&buf[12] = 2050;
    *&buf[14] = a3;
    *&buf[22] = 2050;
    *&buf[24] = a9;
    *&buf[32] = 1026;
    *&buf[34] = (v13 / 86400.0);
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "SelectIndoor, params, radius, %{public}lf ,maxFloors, %{public}zu, clusterRadius, %{public}lf, loiMaxAge, %{public}d", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_101869E5C();
    }

    *v213 = 134349824;
    *&v213[4] = a8;
    *&v213[12] = 2050;
    *&v213[14] = a3;
    *&v213[22] = 2050;
    *&v213[24] = a9;
    *v214 = 1026;
    *&v214[2] = (a4 / 86400.0);
    v160 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "vector<tuple<string, const vector<string> &, system_clock::time_point, CLPipelinedLocationContext, int>> selectIndoorPrefetchVenues(const std::vector<CLIndoorPrefetchLocationOfInterest> &, NSArray<CLLocationGroup *> *, double, size_t, double, std::chrono::seconds, const boost::optional<CLLastFix> &, std::chrono::system_clock::time_point)", "%s\n", v160);
    if (v160 != buf)
    {
      free(v160);
    }
  }

  v206 = [NSMutableArray arrayWithCapacity:0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3)];
  v205 = [NSMutableArray arrayWithCapacity:0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3)];
  v204[0] = &v206;
  v204[1] = &v205;
  *&v204[2] = a9;
  v15 = *a1;
  if (a1[1] != *a1)
  {
    v16 = a1[1] - 72;
    do
    {
      v17 = *(v16 + 16);
      if (v17 <= a9)
      {
        v223 = *v16;
        v224 = v17;
        v225 = *(v16 + 24);
        v226 = 0;
        if (*(v16 + 32) == 1)
        {
          v227 = *(v16 + 40);
          v226 = 1;
        }

        v228 = 0;
        if (*(v16 + 48) == 1)
        {
          v229 = *(v16 + 56);
          v228 = 1;
        }

        v230 = *(v16 + 64);
        v231 = *(v16 + 68);
        sub_100383A60(v204, &v223);
        if (v228 == 1)
        {
          v228 = 0;
        }

        if (v226 == 1)
        {
          v226 = 0;
        }
      }

      else
      {
        if (qword_1025D4620 != -1)
        {
          sub_101869E5C();
        }

        v18 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *v16;
          v20 = *(v16 + 8);
          *buf = 134545921;
          *&buf[4] = v19;
          *&buf[12] = 2053;
          *&buf[14] = v20;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "SelectIndoor, loi, skipradius, %{sensitive}.7f, %{sensitive}.7f", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_101869E5C();
          }

          v21 = *v16;
          v22 = *(v16 + 8);
          *v213 = 134545921;
          *&v213[4] = v21;
          *&v213[12] = 2053;
          *&v213[14] = v22;
          v23 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "vector<tuple<string, const vector<string> &, system_clock::time_point, CLPipelinedLocationContext, int>> selectIndoorPrefetchVenues(const std::vector<CLIndoorPrefetchLocationOfInterest> &, NSArray<CLLocationGroup *> *, double, size_t, double, std::chrono::seconds, const boost::optional<CLLastFix> &, std::chrono::system_clock::time_point)", "%s\n", v23);
          if (v23 != buf)
          {
            free(v23);
          }
        }
      }

      v24 = v16 == v15;
      v16 -= 72;
    }

    while (!v24);
  }

  if (*a5)
  {
    v25 = *(a5 + 108);
    v26 = *(a5 + 116);
    v27 = *(a5 + 28);
    v28 = sub_10038AFB4((a5 + 8));
    v217[0] = v25;
    v217[1] = v26;
    v217[2] = v27;
    v217[3] = 0x3FF0000000000000;
    v219 = v28;
    v218 = 1;
    v220 = 0;
    v221 = 1;
    v222 = 0;
    sub_100383A60(v204, v217);
    if (v220 == 1)
    {
      v220 = 0;
    }

    if (v218 == 1)
    {
      v218 = 0;
    }
  }

  v29 = [(NSMutableArray *)v206 count];
  v30 = [NSMutableArray arrayWithCapacity:&v29[[(NSMutableArray *)v205 count]]];
  [(NSMutableArray *)v30 addObjectsFromArray:v206];
  [(NSMutableArray *)v30 addObjectsFromArray:v205];
  if (qword_1025D4620 != -1)
  {
    sub_101869E5C();
  }

  v31 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [(NSMutableArray *)v30 count];
    v34 = *a1;
    v33 = a1[1];
    v35 = [(NSMutableArray *)v205 count];
    v36 = [(NSMutableArray *)v206 count];
    v37 = *a5;
    *buf = 134350080;
    *&buf[4] = v32;
    *&buf[12] = 2050;
    *&buf[14] = 0x8E38E38E38E38E39 * ((v33 - v34) >> 3);
    *&buf[22] = 2050;
    *&buf[24] = v35;
    *&buf[32] = 2050;
    *&buf[34] = v36;
    v233 = 1026;
    v234 = v37;
    _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "SelectIndoor, clusters, %{public}ld, LOIs, %{public}ld, historical, %{public}ld, predicted, %{public}ld, lastFix, %{public}d", buf, 0x30u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_101869E5C();
    }

    v161 = [(NSMutableArray *)v30 count];
    v163 = *a1;
    v162 = a1[1];
    v164 = [(NSMutableArray *)v205 count];
    v165 = [(NSMutableArray *)v206 count];
    v166 = *a5;
    *v213 = 134350080;
    *&v213[4] = v161;
    *&v213[12] = 2050;
    *&v213[14] = 0x8E38E38E38E38E39 * ((v162 - v163) >> 3);
    *&v213[22] = 2050;
    *&v213[24] = v164;
    *v214 = 2050;
    *&v214[2] = v165;
    v215 = 1026;
    v216 = v166;
    v167 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "vector<tuple<string, const vector<string> &, system_clock::time_point, CLPipelinedLocationContext, int>> selectIndoorPrefetchVenues(const std::vector<CLIndoorPrefetchLocationOfInterest> &, NSArray<CLLocationGroup *> *, double, size_t, double, std::chrono::seconds, const boost::optional<CLLastFix> &, std::chrono::system_clock::time_point)", "%s\n", v167);
    if (v167 != buf)
    {
      free(v167);
    }
  }

  v38 = [NSMutableArray arrayWithCapacity:[(NSMutableArray *)v30 count]];
  v202 = 0u;
  v203 = 0u;
  v200 = 0u;
  v201 = 0u;
  v39 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v200 objects:v212 count:16];
  if (v39)
  {
    v40 = 1000000 * a4;
    v41 = *v201;
    do
    {
      v42 = 0;
      do
      {
        if (*v201 != v41)
        {
          objc_enumerationMutation(v30);
        }

        v43 = *(*(&v200 + 1) + 8 * v42);
        v44 = a6 - [v43 relevancy:a6];
        if (v44 > v40)
        {
          [(NSMutableArray *)v38 addObject:v43];
        }

        if (qword_1025D4620 != -1)
        {
          sub_101869E5C();
        }

        v45 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          [objc_msgSend(v43 "latlon")];
          v47 = v46;
          [objc_msgSend(v43 "latlon")];
          *buf = 134546177;
          *&buf[4] = v47;
          *&buf[12] = 2053;
          *&buf[14] = v48;
          *&buf[22] = 1026;
          *&buf[24] = v44 <= v40;
          _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEBUG, "SelectIndoor, cluster, %{sensitive}.7f, %{sensitive}.7f, relevant, %{public}d", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_101869E5C();
          }

          [objc_msgSend(v43 "latlon")];
          v50 = v49;
          [objc_msgSend(v43 "latlon")];
          *v213 = 134546177;
          *&v213[4] = v50;
          *&v213[12] = 2053;
          *&v213[14] = v51;
          *&v213[22] = 1026;
          *&v213[24] = v44 <= v40;
          v52 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "vector<tuple<string, const vector<string> &, system_clock::time_point, CLPipelinedLocationContext, int>> selectIndoorPrefetchVenues(const std::vector<CLIndoorPrefetchLocationOfInterest> &, NSArray<CLLocationGroup *> *, double, size_t, double, std::chrono::seconds, const boost::optional<CLLastFix> &, std::chrono::system_clock::time_point)", "%s\n", v52);
          if (v52 != buf)
          {
            free(v52);
          }
        }

        v42 = v42 + 1;
      }

      while (v39 != v42);
      v53 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v200 objects:v212 count:16];
      v39 = v53;
    }

    while (v53);
  }

  [(NSMutableArray *)v30 removeObjectsInArray:v38];
  v54 = [(NSMutableArray *)v30 count];
  if (v30 && v54)
  {
    v197 = 0;
    v198 = 0;
    v199 = 0;
    sub_100383D7C(&v197, [(NSMutableArray *)v30 count]);
    v195 = 0u;
    v196 = 0u;
    v193 = 0u;
    v194 = 0u;
    v55 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v193 objects:v211 count:16];
    if (v55)
    {
      v56 = "(";
      v57 = *v194;
      v58 = ",";
      do
      {
        for (i = 0; i != v55; i = i + 1)
        {
          if (*v194 != v57)
          {
            objc_enumerationMutation(v30);
          }

          v60 = *(*(&v193 + 1) + 8 * i);
          [objc_msgSend(v60 "latlon")];
          std::to_string(&v191, v61);
          v62 = std::string::insert(&v191, 0, v56, 1uLL);
          v63 = *&v62->__r_.__value_.__l.__data_;
          v192.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
          *&v192.__r_.__value_.__l.__data_ = v63;
          v62->__r_.__value_.__l.__size_ = 0;
          v62->__r_.__value_.__r.__words[2] = 0;
          v62->__r_.__value_.__r.__words[0] = 0;
          v64 = std::string::append(&v192, v58, 1uLL);
          v65 = *&v64->__r_.__value_.__l.__data_;
          *&v207[16] = *(&v64->__r_.__value_.__l + 2);
          *v207 = v65;
          v64->__r_.__value_.__l.__size_ = 0;
          v64->__r_.__value_.__r.__words[2] = 0;
          v64->__r_.__value_.__r.__words[0] = 0;
          [objc_msgSend(v60 "latlon")];
          std::to_string(&v190, v66);
          if ((v190.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v67 = &v190;
          }

          else
          {
            v67 = v190.__r_.__value_.__r.__words[0];
          }

          if ((v190.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v190.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v190.__r_.__value_.__l.__size_;
          }

          v69 = std::string::append(v207, v67, size);
          v70 = *&v69->__r_.__value_.__l.__data_;
          *&v213[16] = *(&v69->__r_.__value_.__l + 2);
          *v213 = v70;
          v69->__r_.__value_.__l.__size_ = 0;
          v69->__r_.__value_.__r.__words[2] = 0;
          v69->__r_.__value_.__r.__words[0] = 0;
          v71 = std::string::append(v213, ")", 1uLL);
          v72 = v71->__r_.__value_.__r.__words[0];
          v210[0] = v71->__r_.__value_.__l.__size_;
          *(v210 + 7) = *(&v71->__r_.__value_.__r.__words[1] + 7);
          v73 = HIBYTE(v71->__r_.__value_.__r.__words[2]);
          v71->__r_.__value_.__l.__size_ = 0;
          v71->__r_.__value_.__r.__words[2] = 0;
          v71->__r_.__value_.__r.__words[0] = 0;
          v74 = v198;
          if (v198 >= v199)
          {
            v77 = v58;
            v78 = v56;
            v79 = 0xAAAAAAAAAAAAAAABLL * ((v198 - v197) >> 3);
            v80 = v79 + 1;
            if (v79 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_10028C64C();
            }

            if (0x5555555555555556 * ((v199 - v197) >> 3) > v80)
            {
              v80 = 0x5555555555555556 * ((v199 - v197) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v199 - v197) >> 3) >= 0x555555555555555)
            {
              v81 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v81 = v80;
            }

            *&buf[32] = &v197;
            if (v81)
            {
              sub_1001A19D8(&v197, v81);
            }

            v82 = 8 * ((v198 - v197) >> 3);
            v83 = v210[0];
            *v82 = v72;
            *(v82 + 8) = v83;
            *(v82 + 15) = *(v210 + 7);
            *(v82 + 23) = v73;
            v210[0] = 0;
            *(v210 + 7) = 0;
            v76 = 24 * v79 + 24;
            v84 = (24 * v79 - (v198 - v197));
            memcpy(v84, v197, v198 - v197);
            v85 = v197;
            v86 = v199;
            v197 = v84;
            v198 = v76;
            v199 = 0;
            *&buf[16] = v85;
            *&buf[24] = v86;
            *&buf[8] = v85;
            *buf = v85;
            sub_100197A50(buf);
            v56 = v78;
            v58 = v77;
          }

          else
          {
            v75 = v210[0];
            *v198 = v72;
            *(v74 + 1) = v75;
            *(v74 + 15) = *(v210 + 7);
            v74[23] = v73;
            v210[0] = 0;
            *(v210 + 7) = 0;
            v76 = (v74 + 24);
          }

          v198 = v76;
          if ((v213[23] & 0x80000000) != 0)
          {
            operator delete(*v213);
          }

          if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v190.__r_.__value_.__l.__data_);
          }

          if ((v207[23] & 0x80000000) != 0)
          {
            operator delete(*v207);
          }

          if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v192.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v191.__r_.__value_.__l.__data_);
          }
        }

        v55 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v193 objects:v211 count:16];
      }

      while (v55);
    }

    if (qword_1025D4620 != -1)
    {
      sub_101869E5C();
    }

    v87 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v88 = [(NSMutableArray *)v30 count];
      sub_100383E38(", ", &v197, buf);
      v89 = buf[23] >= 0 ? buf : *buf;
      *v213 = 134218242;
      *&v213[4] = v88;
      *&v213[12] = 2080;
      *&v213[14] = v89;
      _os_log_impl(dword_100000000, v87, OS_LOG_TYPE_DEBUG, "%zu clusters to evaluate prefetch across: %s", v213, 0x16u);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186A9B8(buf);
      v168 = [(NSMutableArray *)v30 count];
      sub_100383E38(", ", &v197, v213);
      if (v213[23] >= 0)
      {
        v169 = v213;
      }

      else
      {
        v169 = *v213;
      }

      *v207 = 134218242;
      *&v207[4] = v168;
      *&v207[12] = 2080;
      *&v207[14] = v169;
      v170 = _os_log_send_and_compose_impl();
      if ((v213[23] & 0x80000000) != 0)
      {
        operator delete(*v213);
      }

      sub_100152C7C("Generic", 1, 0, 2, "vector<tuple<string, const vector<string> &, system_clock::time_point, CLPipelinedLocationContext, int>> selectIndoorPrefetchVenues(const std::vector<CLIndoorPrefetchLocationOfInterest> &, NSArray<CLLocationGroup *> *, double, size_t, double, std::chrono::seconds, const boost::optional<CLLastFix> &, std::chrono::system_clock::time_point)", "%s\n", v170);
      if (v170 != buf)
      {
        free(v170);
      }
    }

    memset(&v192, 0, sizeof(v192));
    memset(v213, 0, sizeof(v213));
    *v214 = 1065353216;
    v90 = [a2 count];
    sub_10007048C(v213, vcvtps_u32_f32(v90 / *v214));
    if (qword_1025D4620 != -1)
    {
      sub_101869E5C();
    }

    v91 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v92 = [a2 count];
      v93 = [(NSMutableArray *)v30 count];
      *buf = 134349312;
      *&buf[4] = v92;
      *&buf[12] = 2050;
      *&buf[14] = v93;
      _os_log_impl(dword_100000000, v91, OS_LOG_TYPE_DEFAULT, "SelectIndoor, selection, groups, %{public}ld, clusters, %{public}ld", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186A9B8(buf);
      v171 = [a2 count];
      v172 = [(NSMutableArray *)v30 count];
      *v207 = 134349312;
      *&v207[4] = v171;
      *&v207[12] = 2050;
      *&v207[14] = v172;
      v173 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "vector<tuple<string, const vector<string> &, system_clock::time_point, CLPipelinedLocationContext, int>> selectIndoorPrefetchVenues(const std::vector<CLIndoorPrefetchLocationOfInterest> &, NSArray<CLLocationGroup *> *, double, size_t, double, std::chrono::seconds, const boost::optional<CLLastFix> &, std::chrono::system_clock::time_point)", "%s\n", v173);
      if (v173 != buf)
      {
        free(v173);
      }
    }

    v188 = 0u;
    v189 = 0u;
    v186 = 0u;
    v187 = 0u;
    v94 = [a2 countByEnumeratingWithState:&v186 objects:v209 count:16];
    if (v94)
    {
      v95 = *v187;
      do
      {
        v96 = 0;
        do
        {
          if (*v187 != v95)
          {
            objc_enumerationMutation(a2);
          }

          v97 = *(*(&v186 + 1) + 8 * v96);
          v98 = [v97 getLocationIds];
          memset(&v191, 0, sizeof(v191));
          sub_1003869B0(&v191, *v98, v98[1], 0xAAAAAAAAAAAAAAABLL * ((v98[1] - *v98) >> 3));
          if (v191.__r_.__value_.__r.__words[0] == v191.__r_.__value_.__l.__size_)
          {
            if (qword_1025D4620 != -1)
            {
              sub_101869E5C();
            }

            v106 = qword_1025D4628;
            if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
            {
              v107 = [objc_msgSend(v97 "groupId")];
              *buf = 136380675;
              *&buf[4] = v107;
              _os_log_impl(dword_100000000, v106, OS_LOG_TYPE_DEFAULT, "SelectIndoor, group, %{private}s, #Warning", buf, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10186A9B8(buf);
              v108 = [objc_msgSend(v97 "groupId")];
              *v207 = 136380675;
              *&v207[4] = v108;
              v109 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "vector<tuple<string, const vector<string> &, system_clock::time_point, CLPipelinedLocationContext, int>> selectIndoorPrefetchVenues(const std::vector<CLIndoorPrefetchLocationOfInterest> &, NSArray<CLLocationGroup *> *, double, size_t, double, std::chrono::seconds, const boost::optional<CLLastFix> &, std::chrono::system_clock::time_point)", "%s\n", v109);
              goto LABEL_164;
            }
          }

          else
          {
            v184 = 0u;
            v185 = 0u;
            v182 = 0u;
            v183 = 0u;
            v99 = 0;
            v100 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v182 objects:v208 count:16];
            if (v100)
            {
              v101 = *v183;
              v102 = INFINITY;
              do
              {
                for (j = 0; j != v100; j = j + 1)
                {
                  if (*v183 != v101)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v104 = *(*(&v182 + 1) + 8 * j);
                  [v97 distance:{objc_msgSend(v104, "ecef")}];
                  if (v105 < v102)
                  {
                    v102 = v105;
                    v99 = v104;
                  }
                }

                v100 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v182 objects:v208 count:16];
              }

              while (v100);
            }

            else
            {
              v102 = INFINITY;
            }

            if (v102 < a8)
            {
              sub_10000EC00(buf, [objc_msgSend(v97 "groupId")]);
              *v207 = buf;
              v110 = sub_10038A04C(v213, buf);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              if (v110[5])
              {
                v111 = v110[6];
                if (v102 < v111[1])
                {
                  v111[1] = v102;
                  v112 = [v99 relevancy:a6];
                  if ((v110[5] & 1) == 0)
                  {
                    __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
                  }

                  *(v110[6] + 2) = v112;
                  if (qword_1025D4620 != -1)
                  {
                    sub_101869E5C();
                  }

                  v113 = qword_1025D4628;
                  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
                  {
                    v114 = [objc_msgSend(v97 "groupId")];
                    [objc_msgSend(v99 "latlon")];
                    v116 = v115;
                    [objc_msgSend(v99 "latlon")];
                    *buf = 136381187;
                    *&buf[4] = v114;
                    *&buf[12] = 2053;
                    *&buf[14] = v116;
                    *&buf[22] = 2053;
                    *&buf[24] = v117;
                    _os_log_impl(dword_100000000, v113, OS_LOG_TYPE_DEBUG, "SelectIndoor, group, disjoint, %{private}s, cluster, %{sensitive}.7f, %{sensitive}.7f", buf, 0x20u);
                  }

                  if (sub_10000A100(121, 2))
                  {
                    goto LABEL_163;
                  }
                }
              }

              else
              {
                v118 = [v99 relevancy:a6];
                v119 = v192.__r_.__value_.__l.__size_;
                if (v192.__r_.__value_.__l.__size_ >= v192.__r_.__value_.__r.__words[2])
                {
                  v121 = v192.__r_.__value_.__r.__words[0];
                  v122 = v192.__r_.__value_.__l.__size_ - v192.__r_.__value_.__r.__words[0];
                  v123 = 0xAAAAAAAAAAAAAAABLL * ((v192.__r_.__value_.__l.__size_ - v192.__r_.__value_.__r.__words[0]) >> 3);
                  v124 = v123 + 1;
                  if (v123 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    sub_10028C64C();
                  }

                  if (0x5555555555555556 * ((v192.__r_.__value_.__r.__words[2] - v192.__r_.__value_.__r.__words[0]) >> 3) > v124)
                  {
                    v124 = 0x5555555555555556 * ((v192.__r_.__value_.__r.__words[2] - v192.__r_.__value_.__r.__words[0]) >> 3);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v192.__r_.__value_.__r.__words[2] - v192.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
                  {
                    v125 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v125 = v124;
                  }

                  if (v125)
                  {
                    sub_100386BC4(&v192, v125);
                  }

                  v126 = 8 * ((v192.__r_.__value_.__l.__size_ - v192.__r_.__value_.__r.__words[0]) >> 3);
                  *v126 = v97;
                  *(v126 + 8) = v102;
                  *(v126 + 16) = v118;
                  v120 = 24 * v123 + 24;
                  v127 = v126 - v122;
                  memcpy((v126 - v122), v121, v122);
                  v128 = v192.__r_.__value_.__r.__words[0];
                  v192.__r_.__value_.__r.__words[0] = v127;
                  *&v192.__r_.__value_.__r.__words[1] = v120;
                  if (v128)
                  {
                    operator delete(v128);
                  }
                }

                else
                {
                  *v192.__r_.__value_.__l.__size_ = v97;
                  *(v119 + 8) = v102;
                  v120 = v119 + 24;
                  *(v119 + 16) = v118;
                }

                v192.__r_.__value_.__l.__size_ = v120;
                if ((v110[5] & 1) == 0)
                {
                  *(v110 + 40) = 1;
                }

                v110[6] = (v120 - 24);
                if (qword_1025D4620 != -1)
                {
                  sub_101869E5C();
                }

                v129 = qword_1025D4628;
                if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
                {
                  v130 = [objc_msgSend(v97 "groupId")];
                  [objc_msgSend(v99 "latlon")];
                  v132 = v131;
                  [objc_msgSend(v99 "latlon")];
                  *buf = 136381187;
                  *&buf[4] = v130;
                  *&buf[12] = 2053;
                  *&buf[14] = v132;
                  *&buf[22] = 2053;
                  *&buf[24] = v133;
                  _os_log_impl(dword_100000000, v129, OS_LOG_TYPE_DEBUG, "SelectIndoor, group, new, %{private}s, cluster, %{sensitive}.7f, %{sensitive}.7f", buf, 0x20u);
                }

                if (sub_10000A100(121, 2))
                {
LABEL_163:
                  sub_10186A9B8(buf);
                  v134 = [objc_msgSend(v97 "groupId")];
                  [objc_msgSend(v99 "latlon")];
                  v136 = v135;
                  [objc_msgSend(v99 "latlon")];
                  *v207 = 136381187;
                  *&v207[4] = v134;
                  *&v207[12] = 2053;
                  *&v207[14] = v136;
                  *&v207[22] = 2053;
                  *&v207[24] = v137;
                  v109 = _os_log_send_and_compose_impl();
                  sub_100152C7C("Generic", 1, 0, 2, "vector<tuple<string, const vector<string> &, system_clock::time_point, CLPipelinedLocationContext, int>> selectIndoorPrefetchVenues(const std::vector<CLIndoorPrefetchLocationOfInterest> &, NSArray<CLLocationGroup *> *, double, size_t, double, std::chrono::seconds, const boost::optional<CLLastFix> &, std::chrono::system_clock::time_point)", "%s\n", v109);
LABEL_164:
                  if (v109 != buf)
                  {
                    free(v109);
                  }
                }
              }
            }
          }

          *buf = &v191;
          sub_1001E56E8(buf);
          v96 = v96 + 1;
        }

        while (v96 != v94);
        v138 = [a2 countByEnumeratingWithState:&v186 objects:v209 count:16];
        v94 = v138;
      }

      while (v138);
    }

    v139 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v192.__r_.__value_.__l.__size_ - v192.__r_.__value_.__r.__words[0]) >> 3));
    if (v192.__r_.__value_.__l.__size_ == v192.__r_.__value_.__r.__words[0])
    {
      v140 = 0;
    }

    else
    {
      v140 = v139;
    }

    sub_100386C1C(v192.__r_.__value_.__r.__words[0], v192.__r_.__value_.__l.__size_, buf, v140, 1);
    if (qword_1025D4620 != -1)
    {
      sub_101869E5C();
    }

    v141 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      *&buf[4] = 0xAAAAAAAAAAAAAAABLL * ((v192.__r_.__value_.__l.__size_ - v192.__r_.__value_.__r.__words[0]) >> 3);
      _os_log_impl(dword_100000000, v141, OS_LOG_TYPE_DEFAULT, "SelectIndoor, candidates, %{public}ld", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186A9B8(buf);
      *v207 = 134349056;
      *&v207[4] = 0xAAAAAAAAAAAAAAABLL * ((v192.__r_.__value_.__l.__size_ - v192.__r_.__value_.__r.__words[0]) >> 3);
      v174 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "vector<tuple<string, const vector<string> &, system_clock::time_point, CLPipelinedLocationContext, int>> selectIndoorPrefetchVenues(const std::vector<CLIndoorPrefetchLocationOfInterest> &, NSArray<CLLocationGroup *> *, double, size_t, double, std::chrono::seconds, const boost::optional<CLLastFix> &, std::chrono::system_clock::time_point)", "%s\n", v174);
      if (v174 != buf)
      {
        free(v174);
      }
    }

    memset(&v191, 0, sizeof(v191));
    v143 = v192.__r_.__value_.__l.__size_;
    v142 = v192.__r_.__value_.__r.__words[0];
    if (v192.__r_.__value_.__r.__words[0] == v192.__r_.__value_.__l.__size_)
    {
      goto LABEL_205;
    }

    v144 = 0;
    do
    {
      v145 = [*v142 getLocationIds];
      v146 = 0xAAAAAAAAAAAAAAABLL * ((v145[1] - *v145) >> 3);
      v147 = v144;
      if (v144 < a3)
      {
        *buf = [objc_msgSend(*v142 "groupId")];
        v148 = [*v142 getLocationIds];
        *v207 = [*v142 locationContext];
        v149 = v191.__r_.__value_.__l.__size_;
        if (v191.__r_.__value_.__l.__size_ >= v191.__r_.__value_.__r.__words[2])
        {
          v151 = sub_10038839C(&v191, buf, v148, (v142 + 16), v207, &dword_101C65240);
        }

        else
        {
          sub_10000EC00(v191.__r_.__value_.__l.__size_, *buf);
          *(v149 + 24) = v148;
          v150 = *v207;
          *(v149 + 32) = *(v142 + 16);
          *(v149 + 40) = v150;
          *(v149 + 48) = 0;
          v151 = v149 + 56;
        }

        v191.__r_.__value_.__l.__size_ = v151;
        v147 = v146 + v144;
      }

      if (qword_1025D4620 != -1)
      {
        sub_101869E5C();
      }

      v152 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v153 = [objc_msgSend(*v142 "groupId")];
        *buf = 136381443;
        *&buf[4] = v153;
        *&buf[12] = 1026;
        *&buf[14] = v144 < a3;
        *&buf[18] = 2050;
        *&buf[20] = v146;
        *&buf[28] = 2050;
        *&buf[30] = v147;
        _os_log_impl(dword_100000000, v152, OS_LOG_TYPE_DEBUG, "SelectIndoor, candidate, %{private}s, added, %{public}d, floors, %{public}ld, total, %{public}ld", buf, 0x26u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186A9B8(buf);
        v154 = [objc_msgSend(*v142 "groupId")];
        *v207 = 136381443;
        *&v207[4] = v154;
        *&v207[12] = 1026;
        *&v207[14] = v144 < a3;
        *&v207[18] = 2050;
        *&v207[20] = v146;
        *&v207[28] = 2050;
        *&v207[30] = v147;
        v155 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "vector<tuple<string, const vector<string> &, system_clock::time_point, CLPipelinedLocationContext, int>> selectIndoorPrefetchVenues(const std::vector<CLIndoorPrefetchLocationOfInterest> &, NSArray<CLLocationGroup *> *, double, size_t, double, std::chrono::seconds, const boost::optional<CLLastFix> &, std::chrono::system_clock::time_point)", "%s\n", v155);
        if (v155 != buf)
        {
          free(v155);
        }
      }

      v142 += 24;
      v144 = v147;
    }

    while (v142 != v143);
    if (v191.__r_.__value_.__r.__words[0] == v191.__r_.__value_.__l.__size_)
    {
LABEL_205:
      if (qword_1025D4620 != -1)
      {
        sub_101869E5C();
      }

      v159 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v159, OS_LOG_TYPE_DEFAULT, "SelectIndoor, selected, none", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186A9B8(buf);
        *v207 = 0;
        v175 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "vector<tuple<string, const vector<string> &, system_clock::time_point, CLPipelinedLocationContext, int>> selectIndoorPrefetchVenues(const std::vector<CLIndoorPrefetchLocationOfInterest> &, NSArray<CLLocationGroup *> *, double, size_t, double, std::chrono::seconds, const boost::optional<CLLastFix> &, std::chrono::system_clock::time_point)", "%s\n", v175);
        if (v175 != buf)
        {
          free(v175);
        }
      }

      v158 = a7;
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101869E5C();
      }

      v157 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349312;
        *&buf[4] = 0x6DB6DB6DB6DB6DB7 * ((v191.__r_.__value_.__l.__size_ - v191.__r_.__value_.__r.__words[0]) >> 3);
        *&buf[12] = 2050;
        *&buf[14] = v147;
        _os_log_impl(dword_100000000, v157, OS_LOG_TYPE_DEFAULT, "SelectIndoor, selected, venues, %{public}ld, floors, %{public}ld", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186A9B8(buf);
        *v207 = 134349312;
        *&v207[4] = 0x6DB6DB6DB6DB6DB7 * ((v191.__r_.__value_.__l.__size_ - v191.__r_.__value_.__r.__words[0]) >> 3);
        *&v207[12] = 2050;
        *&v207[14] = v147;
        v176 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "vector<tuple<string, const vector<string> &, system_clock::time_point, CLPipelinedLocationContext, int>> selectIndoorPrefetchVenues(const std::vector<CLIndoorPrefetchLocationOfInterest> &, NSArray<CLLocationGroup *> *, double, size_t, double, std::chrono::seconds, const boost::optional<CLLastFix> &, std::chrono::system_clock::time_point)", "%s\n", v176);
        if (v176 != buf)
        {
          free(v176);
        }
      }

      *a7 = v191;
      v158 = &v191;
    }

    v158->__r_.__value_.__r.__words[0] = 0;
    v158->__r_.__value_.__l.__size_ = 0;
    v158->__r_.__value_.__r.__words[2] = 0;
    *buf = &v191;
    sub_100388758(buf);
    sub_100389FB4(v213);
    if (v192.__r_.__value_.__r.__words[0])
    {
      v192.__r_.__value_.__l.__size_ = v192.__r_.__value_.__r.__words[0];
      operator delete(v192.__r_.__value_.__l.__data_);
    }

    *buf = &v197;
    sub_1001E56E8(buf);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E5C();
    }

    v156 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v156, OS_LOG_TYPE_DEFAULT, "SelectIndoor, noclusters, #Warning", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186FB28();
    }

    a7->__r_.__value_.__r.__words[0] = 0;
    a7->__r_.__value_.__l.__size_ = 0;
    a7->__r_.__value_.__r.__words[2] = 0;
  }
}

void sub_100383888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  STACK[0x520] = &a41;
  sub_100388758(&STACK[0x520]);
  sub_100389FB4(&STACK[0x450]);
  if (__p)
  {
    a46 = __p;
    operator delete(__p);
  }

  STACK[0x450] = &a58;
  sub_1001E56E8(&STACK[0x450]);
  _Unwind_Resume(a1);
}

void sub_100383A60(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 68) == 1)
  {
    v4 = [[CLIndoorPrefetchRegion alloc] initFromLOI:a2];
    [**a1 addObject:v4];

    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v6 = *a2;
      v7 = a2[1];
      *buf = 134545921;
      v26 = v6;
      v27 = 2053;
      v28 = v7;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "SelectIndoor, loi, predicted, %{sensitive}.7f, %{sensitive}.7f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186FE0C();
    }
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = **(a1 + 8);
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if ([*(*(&v20 + 1) + 8 * i) mergeLocationOfInterest:a2 clusterRadius:*(a1 + 16)])
          {
            if (qword_1025D4620 != -1)
            {
              sub_101869E5C();
            }

            v17 = qword_1025D4628;
            if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
            {
              v18 = *a2;
              v19 = a2[1];
              *buf = 134545921;
              v26 = v18;
              v27 = 2053;
              v28 = v19;
              _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "SelectIndoor, loi, skiphist, %{sensitive}.7f, %{sensitive}.7f", buf, 0x16u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10186FC0C();
            }

            return;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v13 = [[CLIndoorPrefetchRegion alloc] initFromLOI:a2];
    [**(a1 + 8) addObject:v13];

    if (qword_1025D4620 != -1)
    {
      sub_101869E5C();
    }

    v14 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v15 = *a2;
      v16 = a2[1];
      *buf = 134545921;
      v26 = v15;
      v27 = 2053;
      v28 = v16;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "SelectIndoor, loi, historical, %{sensitive}.7f, %{sensitive}.7f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186FD0C();
    }
  }
}

void *sub_100383D7C(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_1001A19D8(result, a2);
    }

    sub_10028C64C();
  }

  return result;
}

uint64_t *sub_100383E38@<X0>(char *__s@<X1>, uint64_t *result@<X0>, uint64_t a3@<X8>)
{
  v5 = *result;
  v6 = result[1];
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  if (v5 == v6)
  {
    goto LABEL_10;
  }

  v7 = *(v5 + 23);
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = *v5;
  }

  if (v7 >= 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = *(v5 + 8);
  }

  for (result = sub_100389CF0(a3, a3, v8, &v8[v9], v9); ; result = sub_100389CF0(a3, v15 + v14, v17, &v17[v18], v18))
  {
    v5 += 24;
LABEL_10:
    if (v5 == v6)
    {
      break;
    }

    v10 = *(a3 + 23);
    if (v10 >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    if (v10 >= 0)
    {
      v12 = *(a3 + 23);
    }

    else
    {
      v12 = *(a3 + 8);
    }

    v13 = strlen(__s);
    sub_100389CF0(a3, v11 + v12, __s, &__s[v13], v13);
    v14 = *(a3 + 23);
    if ((v14 & 0x80u) == 0)
    {
      v15 = a3;
    }

    else
    {
      v15 = *a3;
    }

    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a3 + 8);
    }

    v16 = *(v5 + 23);
    if (v16 >= 0)
    {
      v17 = v5;
    }

    else
    {
      v17 = *v5;
    }

    if (v16 >= 0)
    {
      v18 = *(v5 + 23);
    }

    else
    {
      v18 = *(v5 + 8);
    }
  }

  return result;
}

void sub_100383F38(_Unwind_Exception *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_100383F58(uint64_t *a1@<X0>, void *a2@<X1>, double a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, _BYTE *a6@<X5>, __int128 *a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  if (qword_1025D4620 == -1)
  {
    v12 = a4;
  }

  else
  {
    sub_101869E48();
    v12 = a4;
  }

  v13 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349824;
    *&buf[4] = a8;
    *&buf[12] = 2050;
    *&buf[14] = a3;
    *&buf[22] = 2050;
    v206 = a9;
    v207 = 1026;
    *v208 = (v12 / 86400.0);
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "SelectWifi2, params, radius, %{public}lf, maxFloors, %{public}zu, clusterRadius, %{public}lf, loiMaxDays, %{public}d", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_101869E5C();
    }

    *v196 = 134349824;
    *&v196[4] = a8;
    v197 = 2050;
    v198 = a3;
    v199 = 2050;
    v200 = a9;
    v201 = 1026;
    *v202 = (a4 / 86400.0);
    v145 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "vector<tuple<string, const vector<string> &, system_clock::time_point, CLPipelinedLocationContext, int>> selectRegionalPrefetchVenues(const std::vector<CLIndoorPrefetchLocationOfInterest> &, NSArray<CLLocationGroup *> *, double, size_t, double, std::chrono::seconds, const boost::optional<CLLastFix> &, std::chrono::system_clock::time_point)", "%s\n", v145);
    if (v145 != buf)
    {
      free(v145);
    }
  }

  v163 = [NSMutableArray arrayWithCapacity:0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3)];
  obj = [NSMutableArray arrayWithCapacity:0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3)];
  v14 = a1[1];
  v15 = *a1;
  if (v14 != *a1)
  {
    do
    {
      v16 = v14 - 72;
      if ((*(v14 - 4) & 1) != 0 || *(v14 - 8) >= 1)
      {
        v17 = [[CLIndoorPrefetchRegion alloc] initFromLOI:v14 - 72];
        v18 = v163;
        if ((*(v14 - 4) & 1) == 0)
        {
          v192 = 0u;
          v193 = 0u;
          v190 = 0u;
          v191 = 0u;
          v19 = [(NSMutableArray *)obj countByEnumeratingWithState:&v190 objects:v204 count:16];
          v18 = obj;
          if (v19)
          {
            v20 = *v191;
            while (2)
            {
              for (i = 0; i != v19; i = i + 1)
              {
                if (*v191 != v20)
                {
                  objc_enumerationMutation(obj);
                }

                if ([*(*(&v190 + 1) + 8 * i) mergeLocationOfInterest:v14 - 72 clusterRadius:a9])
                {
                  v22 = 77;
                  goto LABEL_21;
                }
              }

              v19 = [(NSMutableArray *)obj countByEnumeratingWithState:&v190 objects:v204 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }

            v18 = obj;
          }
        }

        [(NSMutableArray *)v18 addObject:v17];
        v22 = 65;
LABEL_21:
      }

      else
      {
        v22 = 83;
      }

      if (qword_1025D4620 != -1)
      {
        sub_101869E5C();
      }

      v23 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v24 = "historical";
        if (*(v14 - 4))
        {
          v24 = "predicted";
          v25 = *(v14 - 48);
        }

        else
        {
          v25 = *(v14 - 8);
        }

        v26 = *(v14 - 72);
        v27 = *(v14 - 64);
        *buf = 136447235;
        *&buf[4] = v24;
        *&buf[12] = 2053;
        *&buf[14] = v26;
        *&buf[22] = 2053;
        v206 = v27;
        v207 = 2050;
        *v208 = v25;
        *&v208[8] = 1026;
        *&v208[10] = v22;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "SelectWifi2, loi, %{public}s, %{sensitive}.7f, %{sensitive}.7f, visitconf, %{public}.1f, action, %{public}c", buf, 0x30u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4620 != -1)
        {
          sub_101869E5C();
        }

        if (*(v14 - 4))
        {
          v28 = "predicted";
        }

        else
        {
          v28 = "historical";
        }

        v30 = *(v14 - 72);
        v29 = *(v14 - 64);
        if (*(v14 - 4))
        {
          v31 = *(v14 - 48);
        }

        else
        {
          v31 = *(v14 - 8);
        }

        *v196 = 136447235;
        *&v196[4] = v28;
        v197 = 2053;
        v198 = v30;
        v199 = 2053;
        v200 = v29;
        v201 = 2050;
        *v202 = v31;
        *&v202[8] = 1026;
        *&v202[10] = v22;
        v32 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "vector<tuple<string, const vector<string> &, system_clock::time_point, CLPipelinedLocationContext, int>> selectRegionalPrefetchVenues(const std::vector<CLIndoorPrefetchLocationOfInterest> &, NSArray<CLLocationGroup *> *, double, size_t, double, std::chrono::seconds, const boost::optional<CLLastFix> &, std::chrono::system_clock::time_point)", "%s\n", v32);
        if (v32 != buf)
        {
          free(v32);
        }
      }

      v14 -= 72;
    }

    while (v16 != v15);
  }

  if (*a5)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E5C();
    }

    v33 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      if ((*a5 & 1) == 0)
      {
        sub_10186FF0C();
      }

      v34 = *(a5 + 108);
      v35 = *(a5 + 116);
      *buf = 134545921;
      *&buf[4] = v34;
      *&buf[12] = 2053;
      *&buf[14] = v35;
      _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "SelectWifi2, loi, historical, %{sensitive}.7f, %{sensitive}.7f, visitconf, 0, action, A", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186FF38(a5);
    }

    if ((*a5 & 1) == 0)
    {
      sub_10186FF0C();
    }

    v36 = *(a5 + 108);
    v37 = *(a5 + 116);
    v38 = *(a5 + 28);
    v39 = sub_10038AFB4((a5 + 8));
    *buf = v36;
    *&buf[8] = v37;
    *&buf[16] = v38;
    v206 = 1.0;
    *&v208[6] = v39;
    LOBYTE(v207) = 1;
    v208[14] = 0;
    v209 = 1;
    v210 = 0;
    v40 = [[CLIndoorPrefetchRegion alloc] initFromLOI:buf];
    [(NSMutableArray *)obj addObject:v40];
  }

  v169 = [NSMutableArray arrayWithCapacity:[(NSMutableArray *)v163 count]+ [(NSMutableArray *)obj count]];
  [(NSMutableArray *)v169 addObjectsFromArray:obj];
  [(NSMutableArray *)v169 addObjectsFromArray:v163];
  v41 = [NSMutableArray arrayWithCapacity:[(NSMutableArray *)v169 count]];
  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  v42 = [(NSMutableArray *)v169 countByEnumeratingWithState:&v186 objects:v203 count:16];
  if (v42)
  {
    v43 = *v187;
    do
    {
      v44 = 0;
      do
      {
        if (*v187 != v43)
        {
          objc_enumerationMutation(v169);
        }

        v45 = *(*(&v186 + 1) + 8 * v44);
        v46 = COERCE_DOUBLE([v45 relevancy:a6]);
        if (&a6[-*&v46] > 1000000 * a4)
        {
          if (qword_1025D4620 != -1)
          {
            sub_101869E5C();
          }

          v47 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
          {
            [objc_msgSend(v45 "latlon")];
            v49 = v48;
            [objc_msgSend(v45 "latlon")];
            *buf = 134546177;
            *&buf[4] = v49;
            *&buf[12] = 2053;
            *&buf[14] = v50;
            *&buf[22] = 2050;
            v206 = v46;
            _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEBUG, "SelectWifi2, irrelevant, %{sensitive}.7f, %{sensitive}.7f, relevancy, %{public}ld", buf, 0x20u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4620 != -1)
            {
              sub_101869E5C();
            }

            [objc_msgSend(v45 "latlon")];
            v52 = v51;
            [objc_msgSend(v45 "latlon")];
            *v196 = 134546177;
            *&v196[4] = v52;
            v197 = 2053;
            v198 = v53;
            v199 = 2050;
            v200 = v46;
            v54 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "vector<tuple<string, const vector<string> &, system_clock::time_point, CLPipelinedLocationContext, int>> selectRegionalPrefetchVenues(const std::vector<CLIndoorPrefetchLocationOfInterest> &, NSArray<CLLocationGroup *> *, double, size_t, double, std::chrono::seconds, const boost::optional<CLLastFix> &, std::chrono::system_clock::time_point)", "%s\n", v54);
            if (v54 != buf)
            {
              free(v54);
            }
          }

          [(NSMutableArray *)v41 addObject:v45];
        }

        v44 = v44 + 1;
      }

      while (v42 != v44);
      v55 = [(NSMutableArray *)v169 countByEnumeratingWithState:&v186 objects:v203 count:16];
      v42 = v55;
    }

    while (v55);
  }

  [(NSMutableArray *)v169 removeObjectsInArray:v41];
  if (qword_1025D4620 != -1)
  {
    sub_101869E5C();
  }

  v56 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v57 = [(NSMutableArray *)v169 count];
    v58 = [(NSMutableArray *)obj count];
    v59 = COERCE_DOUBLE([(NSMutableArray *)v163 count]);
    v60 = [(NSMutableArray *)v41 count];
    v61 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
    v62 = *a5;
    *buf = 134350336;
    *&buf[4] = v57;
    *&buf[12] = 2050;
    *&buf[14] = v58;
    *&buf[22] = 2050;
    v206 = v59;
    v207 = 2050;
    *v208 = v60;
    *&v208[8] = 2050;
    *&v208[10] = v61;
    *&v208[18] = 1026;
    *&v208[20] = v62;
    _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_DEFAULT, "SelectWifi2, clusters, %{public}ld, historical, %{public}ld, predicted, %{public}ld, irrelevant, %{public}ld, inputLOIs, %{public}ld, lastFix, %{public}d", buf, 0x3Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_101869E5C();
    }

    v146 = [(NSMutableArray *)v169 count];
    v147 = COERCE_DOUBLE([(NSMutableArray *)obj count]);
    v148 = COERCE_DOUBLE([(NSMutableArray *)v163 count]);
    v149 = [(NSMutableArray *)v41 count];
    v150 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
    v151 = *a5;
    *v196 = 134350336;
    *&v196[4] = v146;
    v197 = 2050;
    v198 = v147;
    v199 = 2050;
    v200 = v148;
    v201 = 2050;
    *v202 = v149;
    *&v202[8] = 2050;
    *&v202[10] = v150;
    *&v202[18] = 1026;
    *&v202[20] = v151;
    v152 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "vector<tuple<string, const vector<string> &, system_clock::time_point, CLPipelinedLocationContext, int>> selectRegionalPrefetchVenues(const std::vector<CLIndoorPrefetchLocationOfInterest> &, NSArray<CLLocationGroup *> *, double, size_t, double, std::chrono::seconds, const boost::optional<CLLastFix> &, std::chrono::system_clock::time_point)", "%s\n", v152);
    if (v152 != buf)
    {
      free(v152);
    }
  }

  v63 = [(NSMutableArray *)v169 count];
  if (v169 && v63)
  {
    v183 = 0;
    v184 = 0;
    v185 = 0;
    memset(v181, 0, sizeof(v181));
    v182 = 1.0;
    v64 = [a2 count];
    sub_10007048C(v181, vcvtps_u32_f32(v64 / v182));
    if (qword_1025D4620 != -1)
    {
      sub_101869E5C();
    }

    v65 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v66 = [a2 count];
      v67 = [(NSMutableArray *)v169 count];
      *buf = 134349568;
      *&buf[4] = v66;
      *&buf[12] = 2050;
      *&buf[14] = v67;
      *&buf[22] = 2050;
      v206 = a8;
      _os_log_impl(dword_100000000, v65, OS_LOG_TYPE_DEFAULT, "SelectWifi2, selection, avlgroups, %{public}ld, visitlois, %{public}ld, radius, %{public}lf", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186A9B8(buf);
      v153 = [a2 count];
      v154 = COERCE_DOUBLE([(NSMutableArray *)v169 count]);
      *v196 = 134349568;
      *&v196[4] = v153;
      v197 = 2050;
      v198 = v154;
      v199 = 2050;
      v200 = a8;
      v155 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "vector<tuple<string, const vector<string> &, system_clock::time_point, CLPipelinedLocationContext, int>> selectRegionalPrefetchVenues(const std::vector<CLIndoorPrefetchLocationOfInterest> &, NSArray<CLLocationGroup *> *, double, size_t, double, std::chrono::seconds, const boost::optional<CLLastFix> &, std::chrono::system_clock::time_point)", "%s\n", v155);
      if (v155 != buf)
      {
        free(v155);
      }
    }

    v179 = 0u;
    v180 = 0u;
    v177 = 0u;
    v178 = 0u;
    v68 = [a2 countByEnumeratingWithState:&v177 objects:v195 count:16];
    if (v68)
    {
      v168 = *v178;
      obja = a6;
      do
      {
        v69 = 0;
        do
        {
          if (*v178 != v168)
          {
            objc_enumerationMutation(a2);
          }

          v70 = *(*(&v177 + 1) + 8 * v69);
          v71 = [v70 getLocationIds];
          v175 = 0uLL;
          v176 = 0;
          sub_1003869B0(&v175, *v71, v71[1], 0xAAAAAAAAAAAAAAABLL * ((v71[1] - *v71) >> 3));
          if (v175 == *(&v175 + 1))
          {
            if (qword_1025D4620 != -1)
            {
              sub_101869E5C();
            }

            v92 = qword_1025D4628;
            if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
            {
              v93 = [objc_msgSend(v70 "groupId")];
              *buf = 136380675;
              *&buf[4] = v93;
              _os_log_impl(dword_100000000, v92, OS_LOG_TYPE_DEFAULT, "SelectWifi2, group, %{private}s, #Warning", buf, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10186A9B8(buf);
              v94 = [objc_msgSend(v70 "groupId")];
              *v196 = 136380675;
              *&v196[4] = v94;
              v91 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "vector<tuple<string, const vector<string> &, system_clock::time_point, CLPipelinedLocationContext, int>> selectRegionalPrefetchVenues(const std::vector<CLIndoorPrefetchLocationOfInterest> &, NSArray<CLLocationGroup *> *, double, size_t, double, std::chrono::seconds, const boost::optional<CLLastFix> &, std::chrono::system_clock::time_point)", "%s\n", v91);
LABEL_134:
              if (v91 != buf)
              {
                free(v91);
              }
            }
          }

          else
          {
            v173 = 0u;
            v174 = 0u;
            v171 = 0u;
            v172 = 0u;
            v72 = [(NSMutableArray *)v169 countByEnumeratingWithState:&v171 objects:v194 count:16];
            if (v72)
            {
              v73 = 0;
              v74 = *v172;
LABEL_92:
              v75 = v68;
              v76 = 0;
              v77 = v73 + 1;
              v73 += v72;
              while (1)
              {
                if (*v172 != v74)
                {
                  objc_enumerationMutation(v169);
                }

                v78 = *(*(&v171 + 1) + 8 * v76);
                [v70 distance:{objc_msgSend(v78, "ecef")}];
                v80 = v79;
                if (v79 <= a8)
                {
                  break;
                }

                v76 = v76 + 1;
                ++v77;
                if (v72 == v76)
                {
                  v72 = [(NSMutableArray *)v169 countByEnumeratingWithState:&v171 objects:v194 count:16];
                  v68 = v75;
                  if (v72)
                  {
                    goto LABEL_92;
                  }

                  goto LABEL_131;
                }
              }

              sub_10000EC00(buf, [objc_msgSend(v70 "groupId")]);
              *v196 = buf;
              v81 = sub_10038A04C(v181, buf);
              v68 = v75;
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              if (v81[5])
              {
                if (qword_1025D4620 != -1)
                {
                  sub_101869E5C();
                }

                v82 = qword_1025D4628;
                if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
                {
                  v83 = [objc_msgSend(v70 "groupId")];
                  [objc_msgSend(v78 "latlon")];
                  v85 = v84;
                  [objc_msgSend(v78 "latlon")];
                  *buf = 136381187;
                  *&buf[4] = v83;
                  *&buf[12] = 2053;
                  *&buf[14] = v85;
                  *&buf[22] = 2053;
                  v206 = v86;
                  _os_log_impl(dword_100000000, v82, OS_LOG_TYPE_INFO, "SelectWifi2, overlap, %{private}s, loi, %{sensitive}.7f, %{sensitive}.7f", buf, 0x20u);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_10186A9B8(buf);
                  v87 = [objc_msgSend(v70 "groupId")];
                  [objc_msgSend(v78 "latlon")];
                  v89 = v88;
                  [objc_msgSend(v78 "latlon")];
                  *v196 = 136381187;
                  *&v196[4] = v87;
                  v197 = 2053;
                  v198 = v89;
                  v199 = 2053;
                  v200 = v90;
                  v91 = _os_log_send_and_compose_impl();
                  sub_100152C7C("Generic", 1, 0, 2, "vector<tuple<string, const vector<string> &, system_clock::time_point, CLPipelinedLocationContext, int>> selectRegionalPrefetchVenues(const std::vector<CLIndoorPrefetchLocationOfInterest> &, NSArray<CLLocationGroup *> *, double, size_t, double, std::chrono::seconds, const boost::optional<CLLastFix> &, std::chrono::system_clock::time_point)", "%s\n", v91);
                  goto LABEL_134;
                }
              }

              else
              {
                v95 = [v78 relevancy:a6];
                v96 = v184;
                if (v184 >= v185)
                {
                  v98 = v183;
                  v99 = v184 - v183;
                  v100 = (v184 - v183) >> 5;
                  v101 = v100 + 1;
                  if ((v100 + 1) >> 59)
                  {
                    sub_10028C64C();
                  }

                  v102 = v185 - v183;
                  if ((v185 - v183) >> 4 > v101)
                  {
                    v101 = v102 >> 4;
                  }

                  if (v102 >= 0x7FFFFFFFFFFFFFE0)
                  {
                    v101 = 0x7FFFFFFFFFFFFFFLL;
                  }

                  if (v101)
                  {
                    sub_1003887FC(&v183, v101);
                  }

                  v103 = (v184 - v183) >> 5;
                  v104 = 32 * v100;
                  *v104 = v70;
                  *(v104 + 8) = v80;
                  *(v104 + 16) = v95;
                  *(v104 + 24) = v77;
                  v97 = (32 * v100 + 32);
                  v105 = (v104 - 32 * v103);
                  memcpy(v105, v98, v99);
                  v106 = v183;
                  v183 = v105;
                  v184 = v97;
                  v185 = 0;
                  if (v106)
                  {
                    operator delete(v106);
                  }

                  v68 = v75;
                }

                else
                {
                  *v184 = v70;
                  *(v96 + 1) = v80;
                  *(v96 + 2) = v95;
                  v97 = (v96 + 32);
                  *(v96 + 6) = v77;
                }

                v184 = v97;
                if (qword_1025D4620 != -1)
                {
                  sub_101869E5C();
                }

                a6 = obja;
                v107 = qword_1025D4628;
                if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
                {
                  v108 = [objc_msgSend(v70 "groupId")];
                  [objc_msgSend(v78 "latlon")];
                  v110 = v109;
                  [objc_msgSend(v78 "latlon")];
                  v112 = v111;
                  v113 = [v78 relevancy:obja];
                  *buf = 136381955;
                  *&buf[4] = v108;
                  *&buf[12] = 2053;
                  *&buf[14] = v110;
                  *&buf[22] = 2053;
                  v206 = v112;
                  v207 = 1026;
                  *v208 = v77;
                  *&v208[4] = 2050;
                  *&v208[6] = v113;
                  *&v208[14] = 2050;
                  *&v208[16] = (v184 - v183) >> 5;
                  _os_log_impl(dword_100000000, v107, OS_LOG_TYPE_DEFAULT, "SelectWifi2, cluster, %{private}s, loi, %{sensitive}.7f, %{sensitive}.7f, priority, %{public}d, relevancy, %{public}llu, n, %{public}ld", buf, 0x3Au);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_10186A9B8(buf);
                  v114 = [objc_msgSend(v70 "groupId")];
                  [objc_msgSend(v78 "latlon")];
                  v116 = v115;
                  [objc_msgSend(v78 "latlon")];
                  v118 = v117;
                  v119 = [v78 relevancy:obja];
                  *v196 = 136381955;
                  *&v196[4] = v114;
                  v197 = 2053;
                  v198 = v116;
                  v199 = 2053;
                  v200 = v118;
                  v201 = 1026;
                  *v202 = v77;
                  *&v202[4] = 2050;
                  *&v202[6] = v119;
                  *&v202[14] = 2050;
                  *&v202[16] = (v184 - v183) >> 5;
                  v91 = _os_log_send_and_compose_impl();
                  sub_100152C7C("Generic", 1, 0, 2, "vector<tuple<string, const vector<string> &, system_clock::time_point, CLPipelinedLocationContext, int>> selectRegionalPrefetchVenues(const std::vector<CLIndoorPrefetchLocationOfInterest> &, NSArray<CLLocationGroup *> *, double, size_t, double, std::chrono::seconds, const boost::optional<CLLastFix> &, std::chrono::system_clock::time_point)", "%s\n", v91);
                  goto LABEL_134;
                }
              }
            }
          }

LABEL_131:
          *buf = &v175;
          sub_1001E56E8(buf);
          v69 = v69 + 1;
        }

        while (v69 != v68);
        v120 = [a2 countByEnumeratingWithState:&v177 objects:v195 count:16];
        v68 = v120;
      }

      while (v120);
    }

    v121 = 126 - 2 * __clz((v184 - v183) >> 5);
    if (v184 == v183)
    {
      v122 = 0;
    }

    else
    {
      v122 = v121;
    }

    sub_100388844(v183, v184, buf, v122, 1);
    if (qword_1025D4620 != -1)
    {
      sub_101869E5C();
    }

    v123 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      *&buf[4] = (v184 - v183) >> 5;
      _os_log_impl(dword_100000000, v123, OS_LOG_TYPE_DEFAULT, "SelectWifi2, candidates, %{public}ld", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186A9B8(buf);
      *v196 = 134349056;
      *&v196[4] = (v184 - v183) >> 5;
      v156 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "vector<tuple<string, const vector<string> &, system_clock::time_point, CLPipelinedLocationContext, int>> selectRegionalPrefetchVenues(const std::vector<CLIndoorPrefetchLocationOfInterest> &, NSArray<CLLocationGroup *> *, double, size_t, double, std::chrono::seconds, const boost::optional<CLLastFix> &, std::chrono::system_clock::time_point)", "%s\n", v156);
      if (v156 != buf)
      {
        free(v156);
      }
    }

    v175 = 0uLL;
    v176 = 0;
    v124 = v184;
    if (v183 == v184)
    {
      goto LABEL_177;
    }

    v125 = 0.0;
    v126 = (v183 + 16);
    do
    {
      v127 = [*(v126 - 2) getLocationIds];
      v128 = *v127;
      v129 = v127[1];
      v170 = *(v126 + 2);
      *buf = [objc_msgSend(*(v126 - 2) "groupId")];
      v130 = [*(v126 - 2) getLocationIds];
      *v196 = [*(v126 - 2) locationContext];
      v131 = *(&v175 + 1);
      if (*(&v175 + 1) >= v176)
      {
        v133 = sub_10038839C(&v175, buf, v130, v126, v196, &v170);
      }

      else
      {
        sub_10000EC00(*(&v175 + 1), *buf);
        *(v131 + 24) = v130;
        v132 = *v196;
        *(v131 + 32) = *v126;
        *(v131 + 40) = v132;
        *(v131 + 48) = v170;
        v133 = v131 + 56;
      }

      *(&v175 + 1) = v133;
      if (qword_1025D4620 != -1)
      {
        sub_101869E5C();
      }

      v134 = 0xAAAAAAAAAAAAAAABLL * ((v129 - v128) >> 3);
      *&v125 += v134;
      v135 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v136 = [objc_msgSend(*(v126 - 2) "groupId")];
        *buf = 136381443;
        *&buf[4] = v136;
        *&buf[12] = 2050;
        *&buf[14] = v134;
        *&buf[22] = 2050;
        v206 = v125;
        v207 = 1026;
        *v208 = v170;
        _os_log_impl(dword_100000000, v135, OS_LOG_TYPE_DEFAULT, "SelectWifi2, tile, %{private}s, floors, %{public}ld, total, %{public}ld, priority, %{public}d", buf, 0x26u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186A9B8(buf);
        v139 = [objc_msgSend(*(v126 - 2) "groupId")];
        *v196 = 136381443;
        *&v196[4] = v139;
        v197 = 2050;
        v198 = *&v134;
        v199 = 2050;
        v200 = v125;
        v201 = 1026;
        *v202 = v170;
        v140 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "vector<tuple<string, const vector<string> &, system_clock::time_point, CLPipelinedLocationContext, int>> selectRegionalPrefetchVenues(const std::vector<CLIndoorPrefetchLocationOfInterest> &, NSArray<CLLocationGroup *> *, double, size_t, double, std::chrono::seconds, const boost::optional<CLLastFix> &, std::chrono::system_clock::time_point)", "%s\n", v140);
        if (v140 != buf)
        {
          free(v140);
        }
      }

      v137 = (v126 + 2);
      v126 += 4;
    }

    while (*&v125 <= *&a3 && v137 != v124);
    if (v175 == *(&v175 + 1))
    {
LABEL_177:
      if (qword_1025D4620 != -1)
      {
        sub_101869E5C();
      }

      v144 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v144, OS_LOG_TYPE_DEFAULT, "SelectWifi2, selected, none", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186A9B8(buf);
        *v196 = 0;
        v157 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "vector<tuple<string, const vector<string> &, system_clock::time_point, CLPipelinedLocationContext, int>> selectRegionalPrefetchVenues(const std::vector<CLIndoorPrefetchLocationOfInterest> &, NSArray<CLLocationGroup *> *, double, size_t, double, std::chrono::seconds, const boost::optional<CLLastFix> &, std::chrono::system_clock::time_point)", "%s\n", v157);
        if (v157 != buf)
        {
          free(v157);
        }
      }

      v143 = a7;
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101869E5C();
      }

      v142 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349312;
        *&buf[4] = 0x6DB6DB6DB6DB6DB7 * ((*(&v175 + 1) - v175) >> 3);
        *&buf[12] = 2050;
        *&buf[14] = v125;
        _os_log_impl(dword_100000000, v142, OS_LOG_TYPE_DEFAULT, "SelectWifi2, selected, venues, %{public}ld, floors, %{public}ld", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186A9B8(buf);
        *v196 = 134349312;
        *&v196[4] = 0x6DB6DB6DB6DB6DB7 * ((*(&v175 + 1) - v175) >> 3);
        v197 = 2050;
        v198 = v125;
        v158 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "vector<tuple<string, const vector<string> &, system_clock::time_point, CLPipelinedLocationContext, int>> selectRegionalPrefetchVenues(const std::vector<CLIndoorPrefetchLocationOfInterest> &, NSArray<CLLocationGroup *> *, double, size_t, double, std::chrono::seconds, const boost::optional<CLLastFix> &, std::chrono::system_clock::time_point)", "%s\n", v158);
        if (v158 != buf)
        {
          free(v158);
        }
      }

      *a7 = v175;
      *(a7 + 2) = v176;
      v143 = &v175;
    }

    *v143 = 0;
    *(v143 + 1) = 0;
    *(v143 + 2) = 0;
    *buf = &v175;
    sub_100388758(buf);
    sub_100389FB4(v181);
    if (v183)
    {
      v184 = v183;
      operator delete(v183);
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E5C();
    }

    v141 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v141, OS_LOG_TYPE_DEFAULT, "SelectWifi2, noclusters, #Warning", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101870078();
    }

    *a7 = 0;
    *(a7 + 1) = 0;
    *(a7 + 2) = 0;
  }
}

void sub_100385C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, void *a53)
{
  STACK[0x430] = &a35;
  sub_100388758(&STACK[0x430]);
  sub_100389FB4(&a47);
  if (a52)
  {
    a53 = a52;
    operator delete(a52);
  }

  _Unwind_Resume(a1);
}

void sub_100385D84(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  if ([*(a1 + 8) avlTilePathOverrideForTest])
  {
    v5 = [*(a1 + 8) avlTilePathOverrideForTest];
  }

  else
  {
    v5 = sub_1001B8B38();
  }

  v6 = v5;
  v7 = [[NSMutableArray alloc] initWithCapacity:0x8E38E38E38E38E39 * ((a3[1] - *a3) >> 3)];
  v8 = *a3;
  v9 = a3[1];
  v63 = a3;
  if (*a3 != v9)
  {
    do
    {
      v10 = [GeographicCoordinate alloc];
      v11 = *v8;
      v12 = v8[1];
      v8 += 9;
      v13 = [v10 initWithLatitude:v11 longitude:v12 andAltitude:0.0];
      [v7 addObject:v13];
    }

    while (v8 != v9);
  }

  v14 = [objc_msgSend(*(a1 + 8) "availableVenuesState")];

  if (v14)
  {
    v65 = a1;
    [*(a1 + 8) updatePrefetchParameters:{objc_msgSend(objc_msgSend(*(a1 + 8), "availableVenuesState"), "availabilityTileParams")}];
    v15 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v14 count]);
    v16 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v14 count]);
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v17 = [v14 countByEnumeratingWithState:&v69 objects:v96 count:16];
    if (v17)
    {
      v18 = *v70;
      do
      {
        v19 = 0;
        do
        {
          if (*v70 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v69 + 1) + 8 * v19);
          if (+[CLLocationContextUtil isRegional:](CLLocationContextUtil, "isRegional:", [v20 locationContext]))
          {
            [(NSMutableArray *)v16 addObject:v20];
          }

          else if (+[CLLocationContextUtil isIndoor:](CLLocationContextUtil, "isIndoor:", [v20 locationContext]))
          {
            [(NSMutableArray *)v15 addObject:v20];
          }

          else
          {
            if (qword_1025D4620 != -1)
            {
              sub_101869E5C();
            }

            v21 = qword_1025D4628;
            if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
            {
              if (v20)
              {
                [v20 getGroupId];
                v22 = __p;
                if (SHIBYTE(__p[2]) < 0)
                {
                  v22 = __p[0];
                }
              }

              else
              {
                memset(__p, 0, 24);
                v22 = __p;
              }

              LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
              *(buf.__r_.__value_.__r.__words + 4) = v22;
              _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "Group %s has neither indoor nor regional locations", &buf, 0xCu);
              if (SHIBYTE(__p[2]) < 0)
              {
                operator delete(__p[0]);
              }
            }

            if (sub_10000A100(121, 0))
            {
              bzero(__p, 0x65CuLL);
              if (qword_1025D4620 != -1)
              {
                sub_101869E5C();
              }

              if (v20)
              {
                [v20 getGroupId];
                p_buf = &buf;
                if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  p_buf = buf.__r_.__value_.__r.__words[0];
                }
              }

              else
              {
                memset(&buf, 0, sizeof(buf));
                p_buf = &buf;
              }

              LODWORD(v75) = 136315138;
              *(&v75 + 4) = p_buf;
              v24 = _os_log_send_and_compose_impl();
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              sub_100152C7C("Generic", 1, 0, 0, "virtual void CLIndoorLogic::onPrefetchRequested(std::chrono::system_clock::time_point, const std::vector<CLIndoorPrefetchLocationOfInterest> &)", "%s\n", v24);
              if (v24 != __p)
              {
                free(v24);
              }
            }
          }

          v19 = v19 + 1;
        }

        while (v17 != v19);
        v25 = [v14 countByEnumeratingWithState:&v69 objects:v96 count:16];
        v17 = v25;
      }

      while (v25);
    }

    v26 = (v65 + 16);
    v27 = [*(v65 + 16) indoorTilePrefetchRadius];
    v29 = v28;
    v30 = (v65 + 8);
    [*(v65 + 8) indoorPrefetchRadiusMeters];
    if (v27)
    {
      v32 = v29;
    }

    else
    {
      v32 = v31;
    }

    v33 = [*v26 indoorTilePrefetchMaxCount];
    v35 = v34;
    v36 = [*v30 indoorPrefetchMaxFloorsPerPrefetch];
    if (v33)
    {
      v37 = v35;
    }

    else
    {
      v37 = v36;
    }

    v38 = [*v26 indoorPrefetchClusterMergeRadius];
    v40 = v39;
    [*v30 indoorPrefetchClusterMergeRadius];
    if (v38)
    {
      v42 = v40;
    }

    else
    {
      v42 = v41;
    }

    v43 = [*v26 regionalTilePrefetchMaxCount];
    v45 = v44;
    v46 = COERCE_DOUBLE([*v30 regionalPrefetchMaxFloorsPerPrefetch]);
    if (v43)
    {
      v47 = v45;
    }

    else
    {
      v47 = v46;
    }

    v48 = [*v26 tilePrefetchRelevancyWindow];
    if (qword_1025D4620 != -1)
    {
      sub_101869E5C();
    }

    v49 = v48 - 64800;
    v50 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(__p[0]) = 134219520;
      *(__p + 4) = v32;
      WORD2(__p[1]) = 2048;
      *(&__p[1] + 6) = v37;
      HIWORD(__p[2]) = 2048;
      __p[3] = v42;
      v88 = 2048;
      v89 = 0x4085180000000000;
      v90 = 2048;
      v91 = v47;
      v92 = 2048;
      v93 = 0x4049000000000000;
      v94 = 2048;
      v95 = v49 / 86400.0;
      _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEBUG, "Prefetch parameters: indoor={radius=%lf,max-floors=%zu,cluster-merge-radius=%lf},regional={radius=%lf,max-floors=%zu,cluster-merge-radius=%lf},loi-max-age=%Lf", __p, 0x48u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_101869E5C();
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 134219520;
      *(buf.__r_.__value_.__r.__words + 4) = v32;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v37;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
      v78 = v42;
      v79 = 2048;
      v80 = 0x4085180000000000;
      v81 = 2048;
      v82 = v47;
      v83 = 2048;
      v84 = 0x4049000000000000;
      v85 = 2048;
      v86 = v49 / 86400.0;
      v60 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLIndoorLogic::onPrefetchRequested(std::chrono::system_clock::time_point, const std::vector<CLIndoorPrefetchLocationOfInterest> &)", "%s\n", v60);
      if (v60 != __p)
      {
        free(v60);
      }
    }

    sub_1003818E0(v63, v15, v37, v49, [*(v65 + 8) latestPosition], a2, &buf, *&v32, *&v42);
    v75 = 0uLL;
    v76 = 0;
    if (sub_10001CF04())
    {
      sub_100383F58(v63, v16, v47, v49, [*(v65 + 8) latestPosition], a2, __p, 675.0, 50.0);
      sub_100389B00(&v75);
      v75 = *__p;
      v76 = __p[2];
      memset(__p, 0, 24);
      v66 = __p;
      sub_100388758(&v66);
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101869E5C();
      }

      v52 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEFAULT, "SelectWifi2, unsupported device", __p, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186A9B8(__p);
        LOWORD(v66) = 0;
        v61 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLIndoorLogic::onPrefetchRequested(std::chrono::system_clock::time_point, const std::vector<CLIndoorPrefetchLocationOfInterest> &)", "%s\n", v61);
        if (v61 != __p)
        {
          free(v61);
        }
      }
    }

    v66 = 0;
    v67 = 0;
    v68 = 0;
    size = buf.__r_.__value_.__l.__size_;
    v54 = buf.__r_.__value_.__r.__words[0];
    for (i = 0; v54 != size; v54 = (v54 + 56))
    {
      if (i >= v68)
      {
        i = sub_100389B40(&v66, v54);
      }

      else
      {
        sub_100389C88(i, v54);
        i += 56;
      }

      v67 = i;
    }

    v56 = *(&v75 + 1);
    for (j = v75; j != v56; j = (j + 56))
    {
      if (i >= v68)
      {
        i = sub_100389B40(&v66, j);
      }

      else
      {
        sub_100389C88(i, j);
        i += 56;
      }

      v67 = i;
    }

    if (v66 == i)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101869E5C();
      }

      v59 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_DEFAULT, "IndoorPreFetch, skipall, No venues around clusters, #Warning", __p, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186A9B8(__p);
        v62 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLIndoorLogic::onPrefetchRequested(std::chrono::system_clock::time_point, const std::vector<CLIndoorPrefetchLocationOfInterest> &)", "%s\n", v62);
        if (v62 != __p)
        {
          free(v62);
        }
      }
    }

    else
    {
      v58 = *(v65 + 8);
      rep = std::chrono::steady_clock::now().__d_.__rep_;
      v73[0] = 1;
      [v58 setLastPrefetchTimestamp:v73];
      if (v73[0] == 1)
      {
        v73[0] = 0;
      }

      (*(**(v65 + 24) + 176))(*(v65 + 24), &v66);
    }

    __p[0] = &v66;
    sub_100388758(__p);
    __p[0] = &v75;
    sub_100388758(__p);
    __p[0] = &buf;
    sub_100388758(__p);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v51 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
    {
      LODWORD(__p[0]) = 136315138;
      *(__p + 4) = [(NSString *)[(NSURL *)v6 path] UTF8String];
      _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_INFO, "#warning, no location groups returned from %s during prefetch, possibly due to missing tile", __p, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187015C(v6);
    }
  }
}

void sub_1003868B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void **a47)
{
  a47 = &a19;
  sub_100388758(&a47);
  a47 = &a33;
  sub_100388758(&a47);
  a47 = &a37;
  sub_100388758(&a47);
  _Unwind_Resume(a1);
}

std::logic_error *sub_10038694C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t sub_1003869B0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100386A38(result, a4);
  }

  return result;
}

void sub_100386A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001E56E8(&a9);
  _Unwind_Resume(a1);
}

void sub_100386A38(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1001A19D8(a1, a2);
  }

  sub_10028C64C();
}

char *sub_100386A84(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_100007244(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_100386B44(v9);
  return v4;
}

uint64_t sub_100386B44(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100386B7C(a1);
  }

  return a1;
}

void sub_100386B7C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void sub_100386BC4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_100386C1C(unint64_t a1, double *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v130 = a2 - 1;
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v9) >> 3);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        if (*(a2 - 2) < *(v9 + 8))
        {
          v118 = *v9;
          *v9 = *(a2 - 3);
          *(a2 - 3) = v118;
          v119 = *(v9 + 8);
          *(v9 + 8) = *(a2 - 2);
          *(a2 - 2) = v119;
          v120 = *(v9 + 16);
          *(v9 + 16) = *(a2 - 1);
          *(a2 - 1) = v120;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      v97 = *(v9 + 32);
      v98 = *(v9 + 8);
      v99 = *(a2 - 2);
      if (v97 >= v98)
      {
        if (v99 >= v97)
        {
          return;
        }

        v121 = *(v9 + 24);
        *(v9 + 24) = *(a2 - 3);
        *(a2 - 3) = v121;
        v122 = *(v9 + 40);
        v123 = *(v9 + 32);
        *(v9 + 32) = *(a2 - 2);
        *(a2 - 2) = v123;
        *(v9 + 40) = *(a2 - 1);
        *(a2 - 1) = v122;
        v124 = *(v9 + 32);
        v130 = (v9 + 40);
        v125 = *(v9 + 8);
        if (v124 >= v125)
        {
          return;
        }

        v126 = *v9;
        *v9 = *(v9 + 24);
        *(v9 + 24) = v126;
        *(v9 + 8) = v124;
        *(v9 + 32) = v125;
        v100 = (v9 + 16);
      }

      else
      {
        v100 = (v9 + 16);
        v101 = *v9;
        if (v99 >= v97)
        {
          v127 = *(v9 + 16);
          *v9 = *(v9 + 24);
          *(v9 + 8) = v97;
          v100 = (v9 + 40);
          v128 = *(v9 + 40);
          *(v9 + 32) = v98;
          *(v9 + 16) = v128;
          *(v9 + 24) = v101;
          *(v9 + 40) = v127;
          if (*(a2 - 2) >= v98)
          {
            return;
          }

          *(v9 + 24) = *(a2 - 3);
          *(a2 - 3) = v101;
          v102 = *(v9 + 32);
          *(v9 + 32) = *(a2 - 2);
        }

        else
        {
          *v9 = *(a2 - 3);
          *(a2 - 3) = v101;
          v102 = *(v9 + 8);
          *(v9 + 8) = *(a2 - 2);
        }

        *(a2 - 2) = v102;
      }

      v129 = *v100;
      *v100 = *v130;
      *v130 = v129;
      return;
    }

    if (v13 == 4)
    {
      break;
    }

    if (v13 == 5)
    {
      sub_100387680(v9, (v9 + 24), (v9 + 48), (v9 + 72));
      if (*(a2 - 2) < *(v9 + 80))
      {
        v103 = *(v9 + 72);
        *(v9 + 72) = *(a2 - 3);
        *(a2 - 3) = v103;
        v104 = *(v9 + 80);
        *(v9 + 80) = *(a2 - 2);
        *(a2 - 2) = v104;
        v105 = *(v9 + 88);
        *(v9 + 88) = *(a2 - 1);
        *(a2 - 1) = v105;
        v106 = *(v9 + 80);
        v107 = *(v9 + 56);
        if (v106 < v107)
        {
          v108 = *(v9 + 48);
          v110 = *(v9 + 64);
          v109 = *(v9 + 72);
          *(v9 + 48) = v109;
          *(v9 + 56) = v106;
          *(v9 + 80) = v107;
          v111 = *(v9 + 88);
          *(v9 + 64) = v111;
          *(v9 + 72) = v108;
          v112 = *(v9 + 32);
          *(v9 + 88) = v110;
          if (v106 < v112)
          {
            v113 = *(v9 + 24);
            *(v9 + 24) = v109;
            *(v9 + 32) = v106;
            *(v9 + 56) = v112;
            v114 = *(v9 + 40);
            *(v9 + 40) = v111;
            *(v9 + 48) = v113;
            *(v9 + 64) = v114;
            v115 = *(v9 + 8);
            if (v106 < v115)
            {
              v116 = *v9;
              *v9 = v109;
              *(v9 + 8) = v106;
              *(v9 + 32) = v115;
              v117 = *(v9 + 16);
              *(v9 + 16) = v111;
              *(v9 + 24) = v116;
              *(v9 + 40) = v117;
            }
          }
        }
      }

      return;
    }

LABEL_10:
    if (v12 <= 575)
    {
      if (a5)
      {

        sub_100387868(v9, a2);
      }

      else
      {

        sub_100387908(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        sub_100387FE8(v9, a2, a2, a3);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = v9 + 24 * (v13 >> 1);
    v16 = *(a2 - 2);
    if (v12 >= 0xC01)
    {
      v17 = *(v15 + 8);
      v18 = *(v9 + 8);
      if (v17 >= v18)
      {
        if (v16 < v17)
        {
          v27 = *v15;
          *v15 = *(a2 - 3);
          *(a2 - 3) = v27;
          v29 = (v15 + 16);
          v28 = *(v15 + 16);
          v30 = *(v15 + 8);
          *(v15 + 8) = *(a2 - 2);
          *(a2 - 2) = v30;
          *(v15 + 16) = *(a2 - 1);
          *(a2 - 1) = v28;
          v31 = *(v15 + 8);
          v32 = *(v9 + 8);
          if (v31 < v32)
          {
            v33 = *v9;
            *v9 = *v15;
            *v15 = v33;
            *(v9 + 8) = v31;
            *(v15 + 8) = v32;
            v19 = (v9 + 16);
            goto LABEL_28;
          }
        }
      }

      else
      {
        v19 = (v9 + 16);
        v20 = *v9;
        if (v16 < v17)
        {
          *v9 = *(a2 - 3);
          *(a2 - 3) = v20;
          v21 = *(v9 + 8);
          *(v9 + 8) = *(a2 - 2);
          goto LABEL_27;
        }

        *v9 = *v15;
        *v15 = v20;
        *(v9 + 8) = v17;
        v19 = (v15 + 16);
        v41 = *(v15 + 16);
        *(v15 + 8) = v18;
        v42 = *(v9 + 16);
        *(v9 + 16) = v41;
        *(v15 + 16) = v42;
        if (*(a2 - 2) < v18)
        {
          *v15 = *(a2 - 3);
          *(a2 - 3) = v20;
          v21 = *(v15 + 8);
          *(v15 + 8) = *(a2 - 2);
LABEL_27:
          *(a2 - 2) = v21;
          v29 = a2 - 1;
LABEL_28:
          v43 = *v19;
          *v19 = *v29;
          *v29 = v43;
        }
      }

      v44 = v9 + 24 * v14;
      v45 = (v44 - 24);
      v46 = *(v44 - 16);
      v47 = *(a2 - 5);
      if (v46 >= *(v9 + 32))
      {
        if (v47 < v46)
        {
          v51 = *v45;
          *v45 = *(a2 - 6);
          *(a2 - 6) = v51;
          v53 = v45 + 2;
          v52 = *(v45 + 2);
          v54 = *(v45 + 1);
          v45[1] = *(a2 - 5);
          *(a2 - 5) = v54;
          v45[2] = *(a2 - 4);
          *(a2 - 4) = v52;
          if (v45[1] < *(v9 + 32))
          {
            v55 = *(v9 + 24);
            *(v9 + 24) = *v45;
            *v45 = v55;
            v56 = *(v9 + 32);
            *(v9 + 32) = v45[1];
            *(v45 + 1) = v56;
            v49 = (v9 + 40);
            goto LABEL_41;
          }
        }
      }

      else
      {
        v48 = *(v9 + 24);
        if (v47 < v46)
        {
          v49 = (v9 + 40);
          *(v9 + 24) = *(a2 - 6);
          *(a2 - 6) = v48;
          v50 = *(v9 + 32);
          *(v9 + 32) = *(a2 - 5);
          goto LABEL_40;
        }

        *(v9 + 24) = *v45;
        *v45 = v48;
        v59 = *(v9 + 32);
        *(v9 + 32) = *(v44 - 16);
        v49 = (v44 - 8);
        v60 = *(v45 + 2);
        v45[1] = v59;
        v61 = *(v9 + 40);
        *(v9 + 40) = v60;
        *(v45 + 2) = v61;
        if (*(a2 - 5) < v59)
        {
          v62 = *v45;
          *v45 = *(a2 - 6);
          *(a2 - 6) = v62;
          v50 = *(v45 + 1);
          v45[1] = *(a2 - 5);
LABEL_40:
          *(a2 - 5) = v50;
          v53 = a2 - 4;
LABEL_41:
          v63 = *v49;
          *v49 = *v53;
          *v53 = v63;
        }
      }

      v64 = v9 + 24 * v14;
      v65 = (v64 + 24);
      v66 = *(v64 + 32);
      v67 = *(a2 - 8);
      if (v66 >= *(v9 + 56))
      {
        if (v67 < v66)
        {
          v71 = *v65;
          *v65 = *(a2 - 9);
          *(a2 - 9) = v71;
          v73 = v65 + 2;
          v72 = *(v65 + 2);
          v74 = *(v65 + 1);
          v65[1] = *(a2 - 8);
          *(a2 - 8) = v74;
          v65[2] = *(a2 - 7);
          *(a2 - 7) = v72;
          v66 = v65[1];
          if (v66 < *(v9 + 56))
          {
            v75 = *(v9 + 48);
            *(v9 + 48) = *v65;
            *v65 = v75;
            v76 = *(v9 + 56);
            *(v9 + 56) = v65[1];
            *(v65 + 1) = v76;
            v69 = (v9 + 64);
            goto LABEL_51;
          }
        }
      }

      else
      {
        v68 = *(v9 + 48);
        if (v67 < v66)
        {
          v69 = (v9 + 64);
          *(v9 + 48) = *(a2 - 9);
          *(a2 - 9) = v68;
          v70 = *(v9 + 56);
          *(v9 + 56) = *(a2 - 8);
          goto LABEL_50;
        }

        *(v9 + 48) = *v65;
        *v65 = v68;
        v66 = *(v9 + 56);
        *(v9 + 56) = *(v64 + 32);
        v69 = (v64 + 40);
        v77 = *(v65 + 2);
        v65[1] = v66;
        v78 = *(v9 + 64);
        *(v9 + 64) = v77;
        *(v65 + 2) = v78;
        if (*(a2 - 8) < v66)
        {
          v79 = *v65;
          *v65 = *(a2 - 9);
          *(a2 - 9) = v79;
          v70 = *(v65 + 1);
          v65[1] = *(a2 - 8);
LABEL_50:
          *(a2 - 8) = v70;
          v73 = a2 - 7;
LABEL_51:
          v80 = *v69;
          *v69 = *v73;
          *v73 = v80;
          v66 = v65[1];
        }
      }

      v81 = *(v15 + 8);
      v82 = v45[1];
      if (v81 >= v82)
      {
        v83 = *v15;
        if (v66 < v81)
        {
          v86 = *v65;
          *v15 = *v65;
          *v65 = v83;
          *(v15 + 8) = v66;
          v65[1] = v81;
          v85 = (v15 + 16);
          v87 = *(v15 + 16);
          *(v15 + 16) = v65[2];
          *(v65 + 2) = v87;
          if (v66 < v82)
          {
            v88 = *v45;
            *v45 = v86;
            *v15 = v88;
            v45[1] = v66;
            *(v15 + 8) = v82;
            v84 = (v45 + 2);
            goto LABEL_60;
          }

          v81 = v66;
          v83 = v86;
        }
      }

      else
      {
        v84 = (v45 + 2);
        v83 = *v45;
        if (v66 < v81)
        {
          *v45 = *v65;
          *v65 = v83;
          v45[1] = v66;
          v65[1] = v82;
          v85 = (v65 + 2);
          v82 = v81;
          goto LABEL_60;
        }

        *v45 = *v15;
        *v15 = v83;
        v45[1] = v81;
        *(v15 + 8) = v82;
        v84 = (v15 + 16);
        v89 = *(v45 + 2);
        v45[2] = *(v15 + 16);
        *(v15 + 16) = v89;
        if (v66 < v82)
        {
          *v15 = *v65;
          *v65 = v83;
          *(v15 + 8) = v66;
          v65[1] = v82;
          v85 = (v65 + 2);
          v82 = v66;
LABEL_60:
          v90 = *v84;
          *v84 = *v85;
          *v85 = v90;
          v83 = *v15;
        }

        v81 = v82;
      }

      v91 = *v9;
      *v9 = v83;
      *v15 = v91;
      v92 = *(v9 + 8);
      *(v9 + 8) = v81;
      *(v15 + 8) = v92;
      v24 = (v9 + 16);
      v36 = (v15 + 16);
LABEL_63:
      v93 = *v24;
      *v24 = *v36;
      *v36 = v93;
      goto LABEL_64;
    }

    v22 = *(v9 + 8);
    v23 = *(v15 + 8);
    if (v22 >= v23)
    {
      if (v16 < v22)
      {
        v34 = *v9;
        *v9 = *(a2 - 3);
        *(a2 - 3) = v34;
        v36 = (v9 + 16);
        v35 = *(v9 + 16);
        v37 = *(v9 + 8);
        *(v9 + 8) = *(a2 - 2);
        *(a2 - 2) = v37;
        *(v9 + 16) = *(a2 - 1);
        *(a2 - 1) = v35;
        v38 = *(v9 + 8);
        v39 = *(v15 + 8);
        if (v38 < v39)
        {
          v40 = *v15;
          *v15 = *v9;
          *v9 = v40;
          *(v15 + 8) = v38;
          *(v9 + 8) = v39;
          v24 = (v15 + 16);
          goto LABEL_63;
        }
      }
    }

    else
    {
      v24 = (v15 + 16);
      v25 = *v15;
      if (v16 < v22)
      {
        *v15 = *(a2 - 3);
        *(a2 - 3) = v25;
        v26 = *(v15 + 8);
        *(v15 + 8) = *(a2 - 2);
LABEL_37:
        *(a2 - 2) = v26;
        v36 = a2 - 1;
        goto LABEL_63;
      }

      *v15 = *v9;
      *v9 = v25;
      *(v15 + 8) = v22;
      v24 = (v9 + 16);
      v57 = *(v9 + 16);
      *(v9 + 8) = v23;
      v58 = *(v15 + 16);
      *(v15 + 16) = v57;
      *(v9 + 16) = v58;
      if (*(a2 - 2) < v23)
      {
        *v9 = *(a2 - 3);
        *(a2 - 3) = v25;
        v26 = *(v9 + 8);
        *(v9 + 8) = *(a2 - 2);
        goto LABEL_37;
      }
    }

LABEL_64:
    if ((a5 & 1) == 0 && *(v9 - 16) >= *(v9 + 8))
    {
      v9 = sub_10038798C(v9, a2);
      goto LABEL_73;
    }

    v94 = sub_100387A98(v9, a2);
    if ((v95 & 1) == 0)
    {
      goto LABEL_71;
    }

    v96 = sub_100387BA8(v9, v94);
    v9 = v94 + 24;
    if (sub_100387BA8(v94 + 24, a2))
    {
      a4 = -v11;
      a2 = v94;
      if (v96)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v96)
    {
LABEL_71:
      sub_100386C1C(a1, v94, a3, -v11, a5 & 1);
      v9 = v94 + 24;
LABEL_73:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  sub_100387680(v9, (v9 + 24), (v9 + 48), a2 - 3);
}

double sub_100387680(void *a1, uint64_t *a2, uint64_t *a3, double *a4)
{
  v4 = *(a2 + 1);
  result = *(a3 + 1);
  if (v4 >= *(a1 + 1))
  {
    if (result < v4)
    {
      v8 = *a2;
      *a2 = *a3;
      *a3 = v8;
      v10 = a2 + 2;
      v9 = a2[2];
      result = *(a2 + 1);
      a2[1] = a3[1];
      *(a3 + 1) = result;
      a2[2] = a3[2];
      a3[2] = v9;
      if (*(a2 + 1) < *(a1 + 1))
      {
        v11 = *a1;
        *a1 = *a2;
        *a2 = v11;
        v12 = a1[1];
        a1[1] = a2[1];
        a2[1] = v12;
        v6 = a1 + 2;
        result = *(a3 + 1);
LABEL_10:
        v17 = *v6;
        *v6 = *v10;
        *v10 = v17;
      }
    }
  }

  else
  {
    v6 = a1 + 2;
    v7 = *a1;
    if (result < v4)
    {
      *a1 = *a3;
      *a3 = v7;
      result = *(a1 + 1);
      a1[1] = a3[1];
LABEL_9:
      *(a3 + 1) = result;
      v10 = a3 + 2;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v7;
    v13 = *(a1 + 1);
    a1[1] = a2[1];
    v6 = a2 + 2;
    v14 = a2[2];
    *(a2 + 1) = v13;
    v15 = a1[2];
    a1[2] = v14;
    a2[2] = v15;
    result = *(a3 + 1);
    if (result < v13)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      result = *(a2 + 1);
      a2[1] = a3[1];
      goto LABEL_9;
    }
  }

  if (a4[1] < result)
  {
    v18 = *a3;
    *a3 = *a4;
    *a4 = v18;
    v19 = a3[1];
    a3[1] = *(a4 + 1);
    *(a4 + 1) = v19;
    v20 = a3[2];
    a3[2] = *(a4 + 2);
    *(a4 + 2) = v20;
    result = *(a3 + 1);
    if (result < *(a2 + 1))
    {
      v21 = *a2;
      *a2 = *a3;
      *a3 = v21;
      v22 = a2[1];
      a2[1] = a3[1];
      a3[1] = v22;
      v23 = a2[2];
      a2[2] = a3[2];
      a3[2] = v23;
      result = *(a2 + 1);
      if (result < *(a1 + 1))
      {
        v24 = *a1;
        *a1 = *a2;
        *a2 = v24;
        result = *(a1 + 1);
        a1[1] = a2[1];
        *(a2 + 1) = result;
        v25 = a1[2];
        a1[2] = a2[2];
        a2[2] = v25;
      }
    }
  }

  return result;
}

uint64_t sub_100387868(uint64_t result, void *a2)
{
  if (result != a2)
  {
    v2 = (result + 24);
    if ((result + 24) != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[4];
        if (v6 < v4[1])
        {
          v7 = *v2;
          v8 = *(v4 + 5);
          v9 = v3;
          while (1)
          {
            v10 = (result + v9);
            v10[3] = *(result + v9);
            v10[4] = *(result + v9 + 8);
            v10[5] = *(result + v9 + 16);
            if (!v9)
            {
              break;
            }

            v9 -= 24;
            if (v6 >= *(v10 - 2))
            {
              v11 = result + v9 + 24;
              goto LABEL_10;
            }
          }

          v11 = result;
LABEL_10:
          *v11 = v7;
          *(v11 + 8) = v6;
          *(v11 + 16) = v8;
        }

        v2 = v5 + 3;
        v3 += 24;
        v4 = v5;
      }

      while (v5 + 3 != a2);
    }
  }

  return result;
}

void *sub_100387908(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 3;
    if (result + 3 != a2)
    {
      v3 = (result + 5);
      do
      {
        v4 = v2;
        v5 = *(result + 4);
        if (v5 < *(result + 1))
        {
          v6 = *v2;
          v7 = result[5];
          v8 = v3;
          do
          {
            v9 = v8;
            *(v8 - 2) = *(v8 - 5);
            *(v8 - 1) = *(v8 - 4);
            v10 = *(v8 - 3);
            v8 -= 3;
            *v9 = v10;
          }

          while (v5 < *(v9 - 7));
          *(v8 - 2) = v6;
          *(v8 - 1) = v5;
          *v8 = v7;
        }

        v2 = v4 + 3;
        v3 += 3;
        result = v4;
      }

      while (v4 + 3 != a2);
    }
  }

  return result;
}

unint64_t sub_10038798C(double *a1, double *a2)
{
  v2 = a1[1];
  if (v2 >= *(a2 - 2))
  {
    v6 = (a1 + 3);
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v7 = *(v6 + 8);
      v6 += 24;
    }

    while (v2 >= v7);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = (v3 + 3);
      v5 = v3[4];
      v3 += 3;
    }

    while (v2 >= v5);
  }

  if (v4 >= a2)
  {
    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 3;
      v9 = *(a2 - 2);
      a2 -= 3;
    }

    while (v2 < v9);
  }

  v10 = *a1;
  v11 = *(a1 + 2);
  while (v4 < v8)
  {
    v12 = *v4;
    *v4 = *v8;
    *v8 = v12;
    v13 = *(v4 + 8);
    *(v4 + 8) = v8[1];
    *(v8 + 1) = v13;
    v14 = *(v4 + 16);
    *(v4 + 16) = v8[2];
    *(v8 + 2) = v14;
    do
    {
      v15 = *(v4 + 32);
      v4 += 24;
    }

    while (v2 >= v15);
    do
    {
      v16 = *(v8 - 2);
      v8 -= 3;
    }

    while (v2 < v16);
  }

  if ((v4 - 24) != a1)
  {
    *a1 = *(v4 - 24);
    a1[1] = *(v4 - 16);
    a1[2] = *(v4 - 8);
  }

  *(v4 - 24) = v10;
  *(v4 - 16) = v2;
  *(v4 - 8) = v11;
  return v4;
}

unint64_t sub_100387A98(double *a1, double *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 2);
  do
  {
    v6 = a1[v2 + 4];
    v2 += 3;
  }

  while (v6 < v4);
  v7 = &a1[v2];
  if (v2 == 3)
  {
    while (v7 < a2)
    {
      v8 = a2 - 3;
      v10 = *(a2 - 2);
      a2 -= 3;
      if (v10 < v4)
      {
        goto LABEL_9;
      }
    }

    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 3;
      v9 = *(a2 - 2);
      a2 -= 3;
    }

    while (v9 >= v4);
  }

LABEL_9:
  v11 = &a1[v2];
  if (v7 < v8)
  {
    v12 = v8;
    do
    {
      v13 = *v11;
      *v11 = *v12;
      *v12 = v13;
      v14 = *(v11 + 8);
      *(v11 + 8) = v12[1];
      *(v12 + 1) = v14;
      v15 = *(v11 + 16);
      *(v11 + 16) = v12[2];
      *(v12 + 2) = v15;
      do
      {
        v16 = *(v11 + 32);
        v11 += 24;
      }

      while (v16 < v4);
      do
      {
        v17 = *(v12 - 2);
        v12 -= 3;
      }

      while (v17 >= v4);
    }

    while (v11 < v12);
  }

  if ((v11 - 24) != a1)
  {
    *a1 = *(v11 - 24);
    a1[1] = *(v11 - 16);
    a1[2] = *(v11 - 8);
  }

  *(v11 - 24) = v3;
  *(v11 - 16) = v4;
  *(v11 - 8) = v5;
  return v11 - 24;
}

BOOL sub_100387BA8(uint64_t a1, uint64_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v23 = *(a1 + 32);
      v24 = *(a1 + 8);
      v25 = *(a2 - 16);
      if (v23 >= v24)
      {
        if (v25 >= v23)
        {
          return 1;
        }

        v34 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 24);
        *(a2 - 24) = v34;
        v36 = (a1 + 40);
        v35 = *(a1 + 40);
        v37 = *(a1 + 32);
        *(a1 + 32) = *(a2 - 16);
        *(a2 - 16) = v37;
        *(a1 + 40) = *(a2 - 8);
        *(a2 - 8) = v35;
        v38 = *(a1 + 32);
        v39 = *(a1 + 8);
        if (v38 >= v39)
        {
          return 1;
        }

        v40 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 24) = v40;
        *(a1 + 8) = v38;
        *(a1 + 32) = v39;
        v26 = (a1 + 16);
      }

      else
      {
        v26 = (a1 + 16);
        v27 = *a1;
        if (v25 >= v23)
        {
          v46 = *(a1 + 16);
          *a1 = *(a1 + 24);
          *(a1 + 8) = v23;
          v26 = (a1 + 40);
          v47 = *(a1 + 40);
          *(a1 + 32) = v24;
          *(a1 + 16) = v47;
          *(a1 + 24) = v27;
          *(a1 + 40) = v46;
          if (*(a2 - 16) >= v24)
          {
            return 1;
          }

          *(a1 + 24) = *(a2 - 24);
          *(a2 - 24) = v27;
          v28 = *(a1 + 32);
          *(a1 + 32) = *(a2 - 16);
        }

        else
        {
          *a1 = *(a2 - 24);
          *(a2 - 24) = v27;
          v28 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 16);
        }

        *(a2 - 16) = v28;
        v36 = (a2 - 8);
      }

      v48 = *v26;
      *v26 = *v36;
      *v36 = v48;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        sub_100387680(a1, (a1 + 24), (a1 + 48), (a1 + 72));
        if (*(a2 - 16) < *(a1 + 80))
        {
          v8 = *(a1 + 72);
          *(a1 + 72) = *(a2 - 24);
          *(a2 - 24) = v8;
          v9 = *(a1 + 80);
          *(a1 + 80) = *(a2 - 16);
          *(a2 - 16) = v9;
          v10 = *(a1 + 88);
          *(a1 + 88) = *(a2 - 8);
          *(a2 - 8) = v10;
          v11 = *(a1 + 80);
          v12 = *(a1 + 56);
          if (v11 < v12)
          {
            v13 = *(a1 + 48);
            v15 = *(a1 + 64);
            v14 = *(a1 + 72);
            *(a1 + 48) = v14;
            *(a1 + 56) = v11;
            *(a1 + 80) = v12;
            v16 = *(a1 + 88);
            *(a1 + 64) = v16;
            *(a1 + 72) = v13;
            v17 = *(a1 + 32);
            *(a1 + 88) = v15;
            if (v11 < v17)
            {
              v18 = *(a1 + 24);
              *(a1 + 24) = v14;
              *(a1 + 32) = v11;
              *(a1 + 56) = v17;
              v19 = *(a1 + 40);
              *(a1 + 40) = v16;
              *(a1 + 48) = v18;
              *(a1 + 64) = v19;
              v20 = *(a1 + 8);
              if (v11 < v20)
              {
                v21 = *a1;
                *a1 = v14;
                *(a1 + 8) = v11;
                *(a1 + 32) = v20;
                v22 = *(a1 + 16);
                *(a1 + 16) = v16;
                *(a1 + 24) = v21;
                *(a1 + 40) = v22;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    sub_100387680(a1, (a1 + 24), (a1 + 48), (a2 - 24));
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 16) < *(a1 + 8))
    {
      v5 = *a1;
      *a1 = *(a2 - 24);
      *(a2 - 24) = v5;
      v6 = *(a1 + 8);
      *(a1 + 8) = *(a2 - 16);
      *(a2 - 16) = v6;
      v7 = *(a1 + 16);
      *(a1 + 16) = *(a2 - 8);
      *(a2 - 8) = v7;
    }

    return 1;
  }

LABEL_17:
  v29 = *(a1 + 32);
  v30 = *(a1 + 8);
  v31 = *(a1 + 56);
  if (v29 < v30)
  {
    v32 = (a1 + 16);
    v33 = *a1;
    if (v31 >= v29)
    {
      v49 = *(a1 + 16);
      *a1 = *(a1 + 24);
      *(a1 + 8) = v29;
      *(a1 + 32) = v30;
      v32 = (a1 + 40);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v33;
      *(a1 + 40) = v49;
      if (v31 >= v30)
      {
        goto LABEL_35;
      }

      *(a1 + 24) = *(a1 + 48);
      *(a1 + 48) = v33;
      *(a1 + 32) = v31;
    }

    else
    {
      *a1 = *(a1 + 48);
      *(a1 + 48) = v33;
      *(a1 + 8) = v31;
    }

    *(a1 + 56) = v30;
    v41 = (a1 + 64);
    goto LABEL_34;
  }

  if (v31 < v29)
  {
    v41 = (a1 + 40);
    v42 = *(a1 + 40);
    v43 = *(a1 + 24);
    v44 = *(a1 + 48);
    *(a1 + 24) = v44;
    *(a1 + 32) = v31;
    *(a1 + 56) = v29;
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v43;
    *(a1 + 64) = v42;
    if (v31 < v30)
    {
      v45 = *a1;
      *a1 = v44;
      *(a1 + 24) = v45;
      *(a1 + 8) = v31;
      *(a1 + 32) = v30;
      v32 = (a1 + 16);
LABEL_34:
      v50 = *v32;
      *v32 = *v41;
      *v41 = v50;
    }
  }

LABEL_35:
  v51 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v52 = 0;
  v53 = 0;
  v54 = a1 + 48;
  while (1)
  {
    v55 = *(v51 + 8);
    if (v55 < *(v54 + 8))
    {
      v56 = *v51;
      v57 = *(v51 + 16);
      v58 = v52;
      while (1)
      {
        v59 = a1 + v58;
        *(v59 + 72) = *(a1 + v58 + 48);
        *(v59 + 80) = *(a1 + v58 + 56);
        *(v59 + 88) = *(a1 + v58 + 64);
        if (v58 == -48)
        {
          break;
        }

        v58 -= 24;
        if (v55 >= *(v59 + 32))
        {
          v60 = a1 + v58 + 72;
          goto LABEL_43;
        }
      }

      v60 = a1;
LABEL_43:
      *v60 = v56;
      *(v60 + 8) = v55;
      *(v60 + 16) = v57;
      if (++v53 == 8)
      {
        return v51 + 24 == a2;
      }
    }

    v54 = v51;
    v52 += 24;
    v51 += 24;
    if (v51 == a2)
    {
      return 1;
    }
  }
}