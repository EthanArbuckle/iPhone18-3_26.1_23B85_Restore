uint64_t sub_1000F7580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15)
{
  v20 = *(v15 + 4 * (((v17 - 875) ^ 0x3FFFD051) & (0x9ED10ECD % (v16 >> 2))));
  v21 = ~*(v15 + 4 * (((v16 >> 2) - 1) & v20));
  v22 = *(v19 + 8 * a15);
  v23 = *(v22 - 527405895);
  v24 = *(v19 + 8 * a14) + 4 * v23;
  v25 = *(v24 - 1940437438);
  v27 = *&v21 & (~v20 >> 16);
  v26 = v27 == 0;
  v28 = v27 + v27 * v25;
  v29 = v26;
  if (v26)
  {
    v30 = v25;
  }

  else
  {
    v30 = 0;
  }

  *(v24 - 1940437438) = (v28 + v30) * v25;
  *(v22 - 527405895) = (v23 + 1) % 6u;
  return (*(v18 + 8 * ((23222 * v29) ^ (v17 - 875))))(v30, -1940437438, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1000F7660()
{
  v2 = (*(v1 + 8 * (v0 + 10510)))(32);
  v3 = STACK[0x408];
  STACK[0x9D0] = v2;
  return (*(v3 + 8 * (((v2 == 0) * (((v0 - 1341923979) & 0x4FFBDFB1) - 24177)) | v0)))();
}

uint64_t sub_1000F76C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, unsigned int a37, int a38)
{
  v40 = a37 < 0xE16772BC;
  v41 = a38 + ((((285 * (a22 ^ 0xBF96) + 321182990) ^ v38) - 1753496390) ^ ((v38 ^ 0x7B286B98) - 8986017) ^ ((v38 ^ (a22 - 37943) ^ 0xFA79BC73) + 2116492810)) - 517425170;
  v42 = v40 ^ (v41 < 0xE16772BC);
  v43 = v41 < a37;
  if (!v42)
  {
    v40 = v43;
  }

  return (*(v39 + 8 * ((32758 * !v40) ^ a22)))();
}

uint64_t sub_1000F7958@<X0>(uint64_t a1@<X8>)
{
  v13 = v5 < v6;
  v14 = (v3 + v4);
  v15 = 1864610357 * ((*(*(v11 + v12) + (*(v8 + v10) & 0x72D7ACF8)) ^ v14) & 0x7FFFFFFF);
  v16 = (v15 >> (((v2 - 94) | 0x66) ^ 0x76)) ^ v15;
  v17 = *(v1 + (v4 & 0xF | (16 * ((1864610357 * v16) >> 24)))) ^ *v14 ^ (53 * v16);
  if (v13 == v4 + 1 > 0x675CA4B9)
  {
    v13 = v4 - 1734124729 < v5;
  }

  *(a1 + v4) = v17;
  return (*(v9 + 8 * ((!v13 * v7) ^ v2)))();
}

uint64_t sub_1000F7B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  HIDWORD(a32) = v46;
  v48 = *(v44 + 8 * (a8 - 9054));
  return (*(v45 + 8 * ((43059 * (*(v48 - 1401400883) == ((((a8 - 6) & 0xFC) + 53) ^ (a8 + 43)))) ^ a8)))(a1, a2, a3, a4, a5, a6, a7, *(v44 + 8 * (a8 ^ 0x25B6)) - 1799566047, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, v48, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_1000F7CD8()
{
  v5 = v0 < v2;
  if (v5 == (v1 + 1) > 0xFFFFFFFFD727A121)
  {
    v5 = v1 + 685244433 + (v3 ^ 0x2CF2u) < v0;
  }

  return (*(v4 + 8 * ((v5 * (((v3 - 20890) | 0x714) + 50327)) ^ v3)))();
}

uint64_t sub_1000F8524@<X0>(char a1@<W2>, int a2@<W8>)
{
  v12 = v9 - 1;
  *(v10 + v12) = *(v3 + (v12 & 0xF)) ^ *(v2 + v12) ^ *(v4 + (v12 & 0xF)) ^ ((v12 & 0xF) * ((a1 + v6) ^ v7)) ^ *(v5 + (v12 & 0xF));
  return (*(v11 + 8 * (((v12 == 0) * v8) ^ a2)))();
}

uint64_t sub_1000F8574@<X0>(char a1@<W1>, char a2@<W2>, char a3@<W3>, char a4@<W4>, char a5@<W5>, char a6@<W6>, char a7@<W7>, char a8@<W8>)
{
  v24 = v13 - 1;
  v25 = (v12 + (v11 ^ a1) + a2) ^ v11 ^ ((v11 ^ a3) + a5) ^ ((v11 ^ a6) + a7) ^ ((v11 ^ v15) + v16);
  *(v18 + v24) = ((((v25 ^ v9) + v10) ^ ((v25 ^ v19) + a8) ^ ((v25 ^ v8) + v22)) + v14) * (v11 + v21) + v11 * v23 + a4;
  return (*(v17 + 8 * (((v24 != 0) * v20) ^ v12)))();
}

uint64_t sub_1000FC278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14)
{
  *(v17 - 120) = a11;
  *(v17 - 108) = (v16 + 37522) ^ (17902189 * ((v17 - 120) ^ 0x8E4F1610));
  (*(v14 + 8 * (v16 + 44420)))(v17 - 120);
  v18 = *(v17 - 112);
  *(v17 - 120) = a12;
  *(v17 - 108) = (v16 + 37522) ^ (17902189 * ((v17 - 120 - 2 * ((v17 - 120) & 0x77388E58) + 2000195167) ^ 0xF977984F));
  (*(v14 + 8 * (v16 ^ 0xD284)))(v17 - 120);
  a14 = ((*(v17 - 112) + 1675184983) * (v18 - 973883231) + 1645899082 * v18 + 383300622) * (v15 - 309865799) + ((v16 + 24771) ^ 0x49914822) * v15 - 1770053748;
  *(v17 - 104) = a12;
  *(v17 - 112) = (v16 + 42719) ^ (155453101 * ((v17 - 120) ^ 0xE6261BCF));
  *(v17 - 120) = &a13;
  v19 = (*(v14 + 8 * (v16 + 44078)))(v17 - 120);
  return (*(v14 + 8 * v16))(v19);
}

uint64_t sub_1000FC514()
{
  v6 = *(v0 + 4 * (v1 - 1));
  *(v0 + 4 * v1) = ((1566083941 * (v6 ^ (v6 >> 30))) ^ *(v0 + 4 * v1)) - v1;
  STACK[0x830] = v3 ^ 0x26F;
  *(v5 - 132) = ((v4 + 341457916) | 9) - v3;
  *(v5 - 128) = v3;
  *(v5 - 136) = (v4 + 341453077) ^ v3;
  *(v5 - 152) = (v4 + 341457916) ^ v3;
  *(v5 - 120) = v4 - v3 - 1781246029;
  STACK[0x840] = (v1 + 1) ^ v3;
  v7 = (*(v2 + 8 * (v4 ^ 0xE935)))(v5 - 160);
  return (*(v2 + 8 * *(v5 - 124)))(v7);
}

uint64_t sub_1000FC678@<X0>(uint64_t a1@<X8>)
{
  v8 = v4 + v2 + v3;
  *(v5 + v8) = *(a1 + v8);
  return (*(v7 + 8 * (((v8 == 0) * v6) ^ v1)))();
}

uint64_t sub_1000FC6A0(unint64_t a1)
{
  v4 = *(v3 + 8 * (((((v2 - 376668555) & 0x1673BCBD) - 37928) * (*v1 == 0)) | v2));
  STACK[0x450] = a1;
  return v4();
}

uint64_t sub_1000FC7A4(uint64_t a1, uint64_t a2, int a3)
{
  STACK[0x280] = v6;
  v8 = *(v6 + 24);
  v9 = (a3 + 1596200864) & 0xA0DBEEFF;
  v10 = (a3 + 2146280852) & 0x80127EBD;
  LODWORD(STACK[0x3F0]) = v9;
  STACK[0x290] = v5;
  STACK[0x260] = v10 ^ 0xFFFFFFFFF423AB8ELL;
  STACK[0x440] = (v5 | ((v5 < (v9 ^ 0xBDC4A3E)) << 32)) + (v10 ^ 0xFFFFFFFFF423AB8ELL);
  v11 = *(v7 + 8 * (a3 ^ (232 * ((v4 ^ v3) > 7))));
  STACK[0x2A0] = v4 ^ v3;
  v12 = STACK[0x270];
  STACK[0x450] = v8;
  return v11(v12);
}

uint64_t sub_1000FC92C@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14)
{
  v21 = v16 < a1;
  *(&a14 + (v14 - 1735554718)) = *(v19 + v15) + ((81 * (v17 ^ 0xB3)) ^ (2 * *(v19 + v15)) & 0xBF ^ 0x30) + 96;
  if (v21 == v15 + 1 > v18)
  {
    v21 = v15 + 1600775451 < v16;
  }

  return (*(v20 + 8 * ((85 * !v21) ^ v17)))();
}

uint64_t sub_1000FCA04(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39)
{
  v46 = a2 & (v42 ^ 0xC24F3542) ^ a1;
  v47 = 2 * (v42 ^ 0xC24D4782);
  v48 = v47 ^ 0x2445FDC2;
  v49 = v41 + v45 + 316529485;
  v50 = v42 ^ (2 * (((4 * (v48 & (v42 ^ 0xC24D4782) ^ v47 & 0x1222FEE0)) ^ 0x48880880) & (v48 & (v42 ^ 0xC24D4782) ^ v47 & 0x1222FEE0 ^ 0xFCC0) & (16 * ((v48 & (v42 ^ 0xC24D4782) ^ v47 & 0x1222FEE0) & (4 * v46) ^ v46)) ^ (v48 & (v42 ^ 0xC24D4782) ^ v47 & 0x1222FEE0) & (4 * v46) ^ v46)) ^ v49 ^ ((v49 ^ 0x50F9B298) - 829705654) ^ ((v49 ^ 0xFF7FF7FF) + 1628305199) ^ ((v49 ^ v44 ^ 0x2943540A) - 2102878268) ^ (((v43 - 758045350) ^ v49) + 1285760395);
  v51 = ((v50 ^ 0x57959965) - 2133320135) ^ ((v50 ^ 0x8C531E2C) + 1528732018) ^ ((v50 ^ 0x4E64C104) - 1725348262);
  v52 = a39 - v40 + 810433357 * v51 + (v51 - 1123008785) * (*(a8 + 4 * v39) - 1608417770) - 1724513565;
  return (*(a36 + 8 * (v43 ^ 0x443A ^ (111 * ((((v52 & 7) - v43) | (v43 - (v52 & 7))) >= 0)))))();
}

uint64_t sub_1000FCBCC@<X0>(unint64_t a1@<X5>, unint64_t a2@<X6>, int a3@<W7>, int a4@<W8>)
{
  v7 = (v5 + 2101211000) | (((v5 + 2101211000) < 0x7D3CEB55) << 32);
  v8 = v7 + v4 + ((v4 < 0xDD19C6D9) << 32) - 0x15A56B22ELL;
  STACK[0x638] = v8;
  v7 += 1442447996;
  v9 = v8 + (a4 ^ 0x2D9u) + 3543586186 > v7;
  if (v7 < a2 != v8 > a1)
  {
    v9 = v8 > a1;
  }

  return (*(v6 + 8 * ((!v9 * a3) ^ a4)))();
}

uint64_t sub_1000FCE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, int a5@<W6>, uint64_t a6@<X8>, double a7@<D1>, int8x16_t a8@<Q4>, uint64_t a9@<D5>, int8x16_t a10@<Q6>)
{
  v17 = (a6 ^ a1) + v14;
  v18 = v17 & 0xF;
  v20.i64[0] = vqtbl4q_s8(*(&a7 - 2), a8).u64[0];
  v20.i64[1] = a9;
  v21 = vrev64q_s8(vmulq_s8(v20, a10));
  *(a3 + v17) = veorq_s8(veorq_s8(veorq_s8(*(v12 + v18 - 15), *(a2 + v17)), veorq_s8(*(v18 + v11 - 13), *(v18 + v13 - 14))), vextq_s8(v21, v21, 8uLL));
  v22 = a4 == a1;
  v23 = a1 + 16;
  v24 = v22;
  return (*(v16 + 8 * ((v24 * a5) ^ v15)))(v23);
}

uint64_t sub_1000FCFE8()
{
  v2 = STACK[0x2AC];
  *(v1 - 124) = LODWORD(STACK[0x29C]) ^ 0xB035AF44;
  *(v1 - 128) = LODWORD(STACK[0x2A4]) ^ 0xBEEACDB2;
  *(v1 - 132) = LODWORD(STACK[0x2A0]) ^ 0xB7BEB432;
  *(v1 - 120) = LODWORD(STACK[0x2A8]) ^ 0x4C43660F;
  return (*(v0 + 8 * (v2 ^ 0xB9CCA9C8 ^ (23797 * (v2 > (v2 ^ 0x1B7E2C00))))))();
}

uint64_t sub_1000FD08C@<X0>(uint64_t a1@<X8>)
{
  v5 = ~v2 + a1;
  v6 = ((v3 - 15527) ^ 0x55B4D293) - v1;
  if (HIDWORD(v5))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 >= v5;
  }

  v8 = !v7;
  return (*(v4 + 8 * ((52 * v8) ^ v3)))();
}

uint64_t sub_1000FD69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, unsigned int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v39 = a9 ^ 0x88DE;
  HIDWORD(a25) = HIDWORD(a16) % a32;
  v40 = a27 + a26 + 711150663 + v38;
  v41 = HIDWORD(a17) ^ v40 ^ ((v40 ^ 0xA6CE8F89) + 703806974) ^ ((v40 ^ 0xF7FEFFBF) + 2026065356) ^ (((17 * (v39 ^ 0x1B48)) ^ 0x52E811BC) + (v40 ^ 0xDDD58A37)) ^ (((v39 - 64512422) ^ v40) + 1931085311);
  return (*(a38 + 8 * ((9607 * (((a18 + (((v41 ^ 0x54B1F051) + 782923141) ^ ((v41 ^ 0xC48BC873) - 1097839193) ^ ((v41 ^ 0xCF683334) - 1250707742))) & 1) == 0)) ^ v39)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1000FD8BC()
{
  v10 = v5 - 1;
  *(v8 + v10) ^= *(v1 + (v10 & 0xF)) ^ *(v0 + (v10 & 0xF) + 2) ^ ((v10 & 0xF) * v4) ^ *(v2 + (v10 & 0xF) + 2) ^ v6;
  return (*(v9 + 8 * (((v10 == 0) * v7) | v3)))();
}

uint64_t sub_1000FD90C()
{
  v7 = v6 + v3;
  v8 = (v3 - 1) & 0xF;
  v9 = v8 - v3 + 1;
  v10 = v0 + v9;
  v11 = ((v4 + 22943) ^ ((v4 - 17780) | 0x6800u) ^ 0xC914) + v8;
  v12 = v0 + v11;
  v13 = v8 + v1 + 2;
  v14 = v2 + v9;
  v15 = v2 + v11;
  v17 = v13 > v6 && v13 - v3 < v7;
  if (v10 < v7 && v12 > v6)
  {
    v17 = 1;
  }

  if (v14 < v7 && v15 > v6)
  {
    v17 = 1;
  }

  return (*(v5 + 8 * (((16 * !v17) | (!v17 << 6)) ^ v4)))(v3);
}

uint64_t sub_1000FDA20(int a1)
{
  v4 = v2 < 0xA70B5F36;
  if (v4 == ((a1 + 735663673) & 0xD4268F77 ^ 0x8303uLL) + v1 > 0xFFFFFFFF58F4A0C9)
  {
    v4 = v1 + 2802540343 < v2;
  }

  return (*(v3 + 8 * ((v4 * ((a1 + 423262874) & 0xE6C4FFB7 ^ 0x177A)) ^ a1)))();
}

uint64_t sub_100101DFC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X7>, uint64_t a3@<X8>, int8x16_t a4@<Q6>, int8x16_t a5@<Q7>)
{
  v18 = v7 - v8 + v5;
  *&v19 = v18 - 15;
  *(&v19 + 1) = v18 - 16;
  *&STACK[0x430] = v19;
  *&v19 = v18 - 13;
  *(&v19 + 1) = v18 - 14;
  *&STACK[0x440] = v19;
  v20.i64[0] = v18 - 7;
  v20.i64[1] = v18 - 8;
  v21.i64[0] = v18 - 3;
  v21.i64[1] = v18 - 4;
  v22 = v7 - v8 - 1;
  v23.i64[0] = v5 + v22;
  v23.i64[1] = v18 - 2;
  v24.i64[0] = v18 - 5;
  v24.i64[1] = v18 + a2 + a3;
  v25 = vandq_s8(v24, *&STACK[0x450]);
  v26 = vandq_s8(v23, *&STACK[0x450]);
  v27 = vandq_s8(v21, *&STACK[0x450]);
  v28 = vandq_s8(v20, *&STACK[0x450]);
  v29 = vsraq_n_u64(vshlq_n_s64(v26, 0x38uLL), v26, 8uLL);
  v30 = vsraq_n_u64(vshlq_n_s64(v25, 0x38uLL), v25, 8uLL);
  v31 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v27, 0x38uLL), v27, 8uLL), *&STACK[0x3D0]);
  v32 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL), *&STACK[0x3D0]);
  v33 = *&STACK[0x3D0];
  v34 = veorq_s8(v32, *&STACK[0x3C0]);
  v35 = veorq_s8(v31, *&STACK[0x3C0]);
  v36 = *&STACK[0x3C0];
  v37 = veorq_s8(v31, *&STACK[0x3B0]);
  v38 = veorq_s8(v32, *&STACK[0x3B0]);
  v39 = *&STACK[0x3B0];
  v40 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), v38);
  v41 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), v37);
  v42 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v40, a5), vorrq_s8(v40, v11)), v11), v10);
  v43 = vsraq_n_u64(vshlq_n_s64(v38, 3uLL), v38, 0x3DuLL);
  v44 = vsraq_n_u64(vshlq_n_s64(v37, 3uLL), v37, 0x3DuLL);
  v45 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v41, a5), vorrq_s8(v41, v11)), v11), v10);
  v46 = veorq_s8(v45, v44);
  v47 = veorq_s8(v42, v43);
  v48 = vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL);
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v47);
  v50 = veorq_s8(vaddq_s64(v48, v46), *&STACK[0x380]);
  v51 = veorq_s8(v49, *&STACK[0x380]);
  v52 = *&STACK[0x380];
  v53 = veorq_s8(v51, vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL));
  v54 = veorq_s8(v50, vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL));
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v54);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v53);
  v57 = *&STACK[0x360];
  v58 = *&STACK[0x2C0];
  v59 = *&STACK[0x370];
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v55, *&STACK[0x370]), vorrq_s8(v55, *&STACK[0x2C0])), *&STACK[0x2C0]), *&STACK[0x360]);
  v61 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v62 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v63 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v56, *&STACK[0x370]), vorrq_s8(v56, *&STACK[0x2C0])), *&STACK[0x2C0]), *&STACK[0x360]);
  v64 = veorq_s8(v63, v62);
  v65 = veorq_s8(v60, v61);
  v66 = vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL);
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v65);
  v68 = veorq_s8(vaddq_s64(v66, v64), v12);
  v69 = vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL);
  v70 = veorq_s8(v67, v12);
  v71 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v72 = veorq_s8(v68, v69);
  v73 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v72);
  v75 = *&STACK[0x340];
  v76 = veorq_s8(vaddq_s64(v73, v71), *&STACK[0x340]);
  v77 = veorq_s8(v74, *&STACK[0x340]);
  v78 = vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL);
  v79 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v80 = veorq_s8(v76, v78);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v80);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v79);
  v83 = veorq_s8(vaddq_s64(vsubq_s64(v82, vandq_s8(vaddq_s64(v82, v82), v13)), v14), v15);
  v84 = vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(v81, vandq_s8(vaddq_s64(v81, v81), v13)), v14), v15);
  v86 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v87 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v88.i64[0] = v18 - 11;
  v88.i64[1] = v18 - 12;
  *&STACK[0x410] = v88;
  v89 = vaddq_s64(v29, v33);
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), veorq_s8(v83, v84));
  v91 = vaddq_s64(v87, v86);
  v92 = *&STACK[0x3E0];
  v186.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v90, v90), v16), v90), v17), a4), vnegq_s64(vandq_s8(vshlq_n_s64(v20, 3uLL), *&STACK[0x3E0])));
  v186.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v91, v91), v16), v91), v17), a4), vnegq_s64(vandq_s8(vshlq_n_s64(v21, 3uLL), *&STACK[0x3E0])));
  v93 = veorq_s8(v89, v36);
  v94 = veorq_s8(v89, v39);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v95, a5), vorrq_s8(v95, v11)), v11), v10);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), v52);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99);
  v101 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v100, v59), vorrq_s8(v100, v58)), v58), v57);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), v12);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v105 = v75;
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v75);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(v108, vandq_s8(vaddq_s64(v108, v108), v13)), v14), v15);
  v75.i64[0] = v18 - 9;
  v75.i64[1] = v18 - 10;
  *&STACK[0x420] = v75;
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL)));
  v111 = vsubq_s64(vorrq_s8(vaddq_s64(v110, v110), v16), v110);
  v112 = vandq_s8(v75, *&STACK[0x450]);
  v113 = vaddq_s64(v30, v33);
  v186.val[0] = vshlq_u64(veorq_s8(vaddq_s64(v111, v17), a4), vnegq_s64(vandq_s8(vshlq_n_s64(v23, 3uLL), v92)));
  v114 = veorq_s8(v113, v36);
  v115 = veorq_s8(v113, v39);
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v116, a5), vorrq_s8(v116, v11)), v11), v10);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v52);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v121, v59), vorrq_s8(v121, v58)), v58), v57);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123), v12);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v126 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125), v105);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(v128, vandq_s8(vaddq_s64(v128, v128), v13)), v14), v15);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v131 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v132 = vandq_s8(v88, *&STACK[0x450]);
  v133 = vaddq_s64(v131, v130);
  v134 = vandq_s8(*&STACK[0x440], *&STACK[0x450]);
  v186.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v133, v133), v16), v133), v17), a4), vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), v92)));
  v135 = vandq_s8(*&STACK[0x430], *&STACK[0x450]);
  v136 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v137 = vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL);
  v138 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v33);
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v33);
  v109.i64[0] = vqtbl4q_s8(v186, *&STACK[0x3F0]).u64[0];
  v186.val[0] = veorq_s8(v139, v36);
  v186.val[1] = veorq_s8(v138, v36);
  v186.val[2] = veorq_s8(v138, v39);
  v186.val[3] = veorq_s8(v139, v39);
  v186.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186.val[0], 0x38uLL), v186.val[0], 8uLL), v186.val[3]);
  v186.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186.val[1], 0x38uLL), v186.val[1], 8uLL), v186.val[2]);
  v186.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v186.val[0], a5), vorrq_s8(v186.val[0], v11)), v11), v10);
  v186.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v186.val[1], a5), vorrq_s8(v186.val[1], v11)), v11), v10);
  v186.val[2] = veorq_s8(v186.val[1], vsraq_n_u64(vshlq_n_s64(v186.val[2], 3uLL), v186.val[2], 0x3DuLL));
  v186.val[3] = veorq_s8(v186.val[0], vsraq_n_u64(vshlq_n_s64(v186.val[3], 3uLL), v186.val[3], 0x3DuLL));
  v186.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186.val[1], 0x38uLL), v186.val[1], 8uLL), v186.val[2]), v52);
  v186.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186.val[0], 0x38uLL), v186.val[0], 8uLL), v186.val[3]), v52);
  v140 = vsraq_n_u64(vshlq_n_s64(v186.val[2], 3uLL), v186.val[2], 0x3DuLL);
  v186.val[2] = veorq_s8(v186.val[0], vsraq_n_u64(vshlq_n_s64(v186.val[3], 3uLL), v186.val[3], 0x3DuLL));
  v186.val[3] = veorq_s8(v186.val[1], v140);
  v141 = vsraq_n_u64(vshlq_n_s64(v186.val[0], 0x38uLL), v186.val[0], 8uLL);
  v186.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186.val[1], 0x38uLL), v186.val[1], 8uLL), v186.val[3]);
  v186.val[1] = vaddq_s64(v141, v186.val[2]);
  v186.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v186.val[0], v59), vorrq_s8(v186.val[0], v58)), v58), v57);
  v186.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v186.val[1], v59), vorrq_s8(v186.val[1], v58)), v58), v57);
  v186.val[2] = veorq_s8(v186.val[1], vsraq_n_u64(vshlq_n_s64(v186.val[2], 3uLL), v186.val[2], 0x3DuLL));
  v186.val[3] = veorq_s8(v186.val[0], vsraq_n_u64(vshlq_n_s64(v186.val[3], 3uLL), v186.val[3], 0x3DuLL));
  v186.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186.val[1], 0x38uLL), v186.val[1], 8uLL), v186.val[2]), v12);
  v186.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186.val[0], 0x38uLL), v186.val[0], 8uLL), v186.val[3]), v12);
  v142 = vsraq_n_u64(vshlq_n_s64(v186.val[2], 3uLL), v186.val[2], 0x3DuLL);
  v186.val[2] = veorq_s8(v186.val[0], vsraq_n_u64(vshlq_n_s64(v186.val[3], 3uLL), v186.val[3], 0x3DuLL));
  v186.val[3] = veorq_s8(v186.val[1], v142);
  v143 = vsraq_n_u64(vshlq_n_s64(v186.val[0], 0x38uLL), v186.val[0], 8uLL);
  v186.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186.val[1], 0x38uLL), v186.val[1], 8uLL), v186.val[3]);
  v186.val[1] = veorq_s8(vaddq_s64(v143, v186.val[2]), v105);
  v186.val[0] = veorq_s8(v186.val[0], v105);
  v144 = vsraq_n_u64(vshlq_n_s64(v186.val[2], 3uLL), v186.val[2], 0x3DuLL);
  v186.val[2] = veorq_s8(v186.val[0], vsraq_n_u64(vshlq_n_s64(v186.val[3], 3uLL), v186.val[3], 0x3DuLL));
  v186.val[3] = veorq_s8(v186.val[1], v144);
  v145 = vsraq_n_u64(vshlq_n_s64(v186.val[0], 0x38uLL), v186.val[0], 8uLL);
  v186.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186.val[1], 0x38uLL), v186.val[1], 8uLL), v186.val[3]);
  v186.val[1] = vaddq_s64(v145, v186.val[2]);
  v186.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v186.val[1], vandq_s8(vaddq_s64(v186.val[1], v186.val[1]), v13)), v14), v15);
  v186.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v186.val[0], vandq_s8(vaddq_s64(v186.val[0], v186.val[0]), v13)), v14), v15);
  v146 = vsraq_n_u64(vshlq_n_s64(v186.val[2], 3uLL), v186.val[2], 0x3DuLL);
  v186.val[2] = veorq_s8(v186.val[0], vsraq_n_u64(vshlq_n_s64(v186.val[3], 3uLL), v186.val[3], 0x3DuLL));
  v186.val[3] = veorq_s8(v186.val[1], v146);
  v147 = vsraq_n_u64(vshlq_n_s64(v186.val[0], 0x38uLL), v186.val[0], 8uLL);
  v148 = vaddq_s64(v136, v33);
  v186.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186.val[1], 0x38uLL), v186.val[1], 8uLL), v186.val[3]);
  v186.val[1] = vaddq_s64(v147, v186.val[2]);
  v186.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v186.val[0], v186.val[0]), v16), v186.val[0]), v17), a4), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x430], 3uLL), v92)));
  v186.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v186.val[1], v186.val[1]), v16), v186.val[1]), v17), a4), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x440], 3uLL), v92)));
  v149 = veorq_s8(v148, v36);
  v150 = veorq_s8(v148, v39);
  v151 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v150);
  v152 = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v153 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v151, a5), vorrq_s8(v151, v11)), v11), v10);
  v154 = veorq_s8(v153, v152);
  v155 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v154), v52);
  v156 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v157 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v156);
  v158 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v157, v59), vorrq_s8(v157, v58)), v58), v57);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v160 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159), v12);
  v161 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161), v105);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163);
  v165 = veorq_s8(vaddq_s64(vsubq_s64(v164, vandq_s8(vaddq_s64(v164, v164), v13)), v14), v15);
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL)));
  v167 = vaddq_s64(v137, v33);
  v186.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v166, v166), v16), v166), v17), a4), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x410], 3uLL), v92)));
  v168 = veorq_s8(v167, v36);
  v169 = veorq_s8(v167, v39);
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v170, a5), vorrq_s8(v170, v11)), v11), v10);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172), v52);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v175, v59), vorrq_s8(v175, v58)), v58), v57);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v178 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177), v12);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v180 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179), v105);
  v181 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v182 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v181);
  v183 = veorq_s8(vaddq_s64(vsubq_s64(v182, vandq_s8(vaddq_s64(v182, v182), v13)), v14), v15);
  v184 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL)));
  v186.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v184, v184), v16), v184), v17), a4), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x420], 3uLL), v92)));
  v109.i64[1] = vqtbl4q_s8(v186, *&STACK[0x3F0]).u64[0];
  v186.val[0] = vrev64q_s8(*(v5 + v22 - 15));
  v186.val[1].i64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v186.val[1].i64[1] = 0x5F5F5F5F5F5F5F5FLL;
  v186.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v186.val[0], v186.val[0], 8uLL), v186.val[1]), v109));
  *(a1 + v22) = vextq_s8(v186.val[0], v186.val[0], 8uLL);
  return (*(v9 + 8 * ((v8 + 16 == v7) | (16 * (v8 + 16 == v7)) | v6)))();
}

uint64_t sub_1001028B0@<X0>(int a1@<W8>)
{
  v5 = *(STACK[0x450] + 8);
  *(v3 - 192) = (297845113 * ((((2 * (v3 - 224)) | 0x7C753709FE2E9EDCLL) - (v3 - 224) - 0x3E3A9B84FF174F6ELL) ^ 0x89613A41882453F0)) ^ v2 ^ ((v2 ^ 0xD231357A60383FA3) + 0x316E0DFCB96EB95FLL) ^ ((v2 ^ 0x6D57D5AB791D4958) - 0x71F712D25FB4305ALL) ^ ((v2 ^ 0x4419C956C061FE0ELL) - 0x58B90E2FE6C8870CLL) ^ ((v2 ^ 0xE7DFEEFEFFEDF1F7) + 0x480D67826BB770BLL) ^ 0x239E699FB801E74BLL;
  *(v3 - 200) = 297845113 * ((((2 * (v3 - 224)) | 0xFE2E9EDC) - (v3 - 224) + 15249554) ^ 0x882453F0) + (v1 ^ 0xD902 ^ a1 ^ 0x7FF7586C) + ((2 * a1) & 0xFFEFBFBE) - 1076992538;
  *(v3 - 184) = (v1 + 23318) ^ (297845113 * ((((2 * (v3 - 224)) | 0xFE2E9EDC) - (v3 - 224) + 15249554) ^ 0x882453F0));
  *(v3 - 224) = v5;
  *(v3 - 216) = &STACK[0xA1C];
  *(v3 - 208) = 0;
  v6 = (*(v4 + 8 * (v1 ^ 0x9559)))(v3 - 224);
  return (*(STACK[0x408] + 8 * ((19148 * (*(v3 - 196) == -371865839)) ^ (v1 - 16279))))(v6);
}

uint64_t sub_100102A84()
{
  v3 = (*(v2 + 8 * (v1 + 26105)))();
  v4 = STACK[0x408];
  *v0 = 0;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_100102AAC@<X0>(unsigned int a1@<W1>, int a2@<W5>, uint64_t a3@<X8>)
{
  v5 = a2 ^ 0xD1C8;
  v6 = (((*(v3 + 16) ^ 0x79DC2DD2) - 2044472786) ^ ((*(v3 + 16) ^ 0x562BBA53) - 1445706323) ^ ((*(v3 + 16) ^ 0xC622D615 ^ ((v5 - 13545) | 0x685)) + 970829680)) + ((v5 + 646558466) & 0xD975FD35 ^ 0x96907B90);
  v7 = v6 < a1;
  v8 = v6 > v4;
  if (v4 < a1 != v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  return (*(a3 + 8 * ((455 * !v9) ^ v5)))();
}

uint64_t sub_100102BB0@<X0>(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  a1[-1] = a2;
  *a1 = a2;
  return (*(v5 + 8 * (((v2 == v3) * v4) ^ v6)))();
}

uint64_t sub_100102C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v15 = *(a1 + v8 - 1112483336) ^ v11;
  v16 = ((*(a1 + v8 + v13) ^ v11) << 24) | ((*(a1 + v8 - 1112483338) ^ v11) << 16) | ((*(a1 + v8 - 1112483337) ^ v11) << 8) | v15;
  *(v12 + 4 * (((((a1 ^ v14) - 1164870713) ^ a1 ^ ((a1 ^ 0xDBF1A931) + 1715564742) ^ ((a1 ^ 0x416452D4) - 53179612) ^ ((a1 ^ 0xDFFB7FDC) + 1649124908)) >> 2) ^ 0x1093C982)) = v16 - 2 * (v16 & a7 ^ v15 & a8) - 371865839;
  return (*(v10 + 8 * (((4 * ((a1 - 1112483335) < 0x40)) | (16 * ((a1 - 1112483335) < 0x40))) ^ v9)))(a1 + 4, 1112483355);
}

uint64_t sub_100102DD4(double a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  a2.n128_u16[0] = -6169;
  a2.n128_u8[2] = -25;
  a2.n128_u8[3] = -25;
  a2.n128_u8[4] = -25;
  a2.n128_u8[5] = -25;
  a2.n128_u8[6] = -25;
  a2.n128_u8[7] = -25;
  a3.n128_u16[0] = 24415;
  a3.n128_u8[2] = 95;
  a3.n128_u8[3] = 95;
  a3.n128_u8[4] = 95;
  a3.n128_u8[5] = 95;
  a3.n128_u8[6] = 95;
  a3.n128_u8[7] = 95;
  return (*(v8 + 8 * (a8 - 6069)))(xmmword_100F523B0, a2, a3);
}

uint64_t sub_100102E1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v40 = (*(v37 + (v38 - 2073153794)) - 115);
  v41 = (7 * a4 + 1965088438) % 0x17Bu + (v40 + (a4 + a6) / 0x11171u) * (v40 * ((a4 + a6) / 0xDu) % ((v36 + 290308454) & 0xEEB27FFA ^ (v36 + 875777910) & 0xCBCCF9E6 ^ 0x10CC7)) * (v40 + 307) - 1378592070;
  v42 = v38;
  v43 = v41 ^ ((v41 ^ 0x1317E94D) + 1094470684) ^ ((v41 ^ 0xDC3A25E4) - 1911455565) ^ ((v41 ^ 0xD50E79FF) - 2027561814) ^ ((v41 ^ 0xB7F7EFFF) - 438547798) ^ 0xE24BFB93;
  v44 = 0x192A729DF5BALL * (((v43 ^ 0x83292E2213036D6) + 0x77CD6D1DDECFC92ALL) ^ ((v43 ^ 0x5E141CB1705C7983) - 0x5E141CB1705C7983) ^ ((v43 ^ 0x56268E531EF3EE6FLL) + 0x29D971ACE10C1191)) + 0x598DE47130A3F10;
  v45 = v44 ^ ((v44 ^ 0xCA3CCDC8BCC0CE44) + 0xEC0BB94FC0FA958) ^ ((v44 ^ 0x1652276C7FC8111FLL) - 0x2D51AECFC0F889F3) ^ ((v44 ^ 0x10D2A6FC804EC14CLL) - 0x2BD12F5F3F7E59A0) ^ ((v44 ^ 0xF7BFC5FBFC7686FBLL) + 0x3343B3A7BCB9E1E9);
  v46 = ((v45 ^ 0x59E6FD1AB969330DLL) - 0x1FFB928A851B7AC2) ^ ((v45 ^ 0x9ADF127D51AE8D04) + 0x233D821292233B35);
  LODWORD(v45) = __CFADD__(666667 * (v46 ^ ((v45 ^ 0xF83A66C457F726E5) + 0x41D8F6AB947A90D6)), 0x51C4A5D2B38924E1) + (((v46 ^ ((v45 ^ 0xF83A66C457F726E5) + 0x41D8F6AB947A90D6)) * 0xA2C2BuLL) >> 64) + 666667 * ((__CFADD__(v45 ^ 0x59E6FD1AB969330DLL, 0xE0046D757AE4853ELL) - 1) ^ (__CFADD__(v45 ^ 0x9ADF127D51AE8D04, 0x233D821292233B35) - 1) ^ (__CFADD__(v45 ^ 0xF83A66C457F726E5, 0x41D8F6AB947A90D6) - 1)) + 1560299185;
  v47 = (v45 + a6) % 5u;
  v68 = (v38 - 2073153794);
  v48 = 4 * v68;
  LODWORD(v45) = (97 * v45 - 993559590) % 0x22Du + ((v45 + a6) / 0xF599u + v40 - 373 * ((11514658 * ((v45 + a6) / 0xF599u + v40)) >> 32)) * (v40 + 467) * ((v45 + a6) / 0x191u * v40 % 0x31ED) + 13;
  LODWORD(v46) = 3 * v38 + v40 + ((v45 % 0x9145F) ^ 0x33DF8B5F) + ((2 * (v45 % 0x9145F)) & 0x1F16BE);
  LODWORD(v45) = v46 + 1500184994;
  v49 = (v46 + 1500184994) % (*(a12 + 4 * v47) ^ 0xB614D99A);
  LODWORD(v46) = v46 - 1234808952;
  *(a11 + v48) = (v49 ^ 0x7B3D7FEE) + *(a19 + 4 * v47) + ((2 * v49) & 0xF67AFFDC) - 50352260;
  v50 = v40 % (v47 + (5 * v46 + 790067842) % 0x14B1u + 4);
  v51 = (v42 + (v50 ^ 0xDFFFB75E) + ((2 * v50) & 0xBC) - 1536264288) % ((2 * ((v47 + 773573988) ^ v47 ^ (((v47 + 773573988) ^ 0x3DA3A825) + 1816631994) ^ (((v47 + 773573988) ^ 0x484DCAB1) + 430569518) ^ (1242668394 - ((v47 + 773573988) ^ 0x640A5008)))) ^ 0x5C379AC7);
  *(a15 + v48) = (v51 ^ 0xFFE9FFCF) + 340847396 + ((2 * v51) & 0xFFD3FF9E);
  v69 = (a8 + 4 * v68);
  *v69 = v47 + 773573988;
  HIDWORD(a26) = v42;
  v52 = 479 * (v45 / 0xD) + 11 * v42 + (113 * v46 - 183213003) % 0xBF5u * (v45 % 0x5815) - 1013169596;
  LODWORD(v48) = (v52 ^ 0xC95FD884) & (2 * (v52 & 0xED1FC2A6)) ^ v52 & 0xED1FC2A6;
  v53 = ((2 * (v52 ^ 0x4B5858C8)) ^ 0x4C8F34DC) & (v52 ^ 0x4B5858C8) ^ (2 * (v52 ^ 0x4B5858C8)) & 0xA6479A6E;
  v54 = v53 ^ 0xA2408A22;
  v55 = (v53 ^ 0x4071008) & (4 * v48) ^ v48;
  LODWORD(v48) = ((4 * v54) ^ 0x991E69B8) & v54 ^ (4 * v54) & 0xA6479A68;
  v56 = (v48 ^ 0x80060820) & (16 * v55) ^ v55;
  LODWORD(v48) = ((16 * (v48 ^ 0x26419246)) ^ 0x6479A6E0) & (v48 ^ 0x26419246) ^ (16 * (v48 ^ 0x26419246)) & 0xA6479A60;
  v57 = v56 ^ 0xA6479A6E ^ (v48 ^ 0x24418200) & (v56 << 8);
  v58 = v52 ^ (2 * ((v57 << 16) & 0x26470000 ^ v57 ^ ((v57 << 16) ^ 0x1A6E0000) & (((v48 ^ 0x8206180E) << 8) & 0x26470000 ^ 0x20450000 ^ (((v48 ^ 0x8206180E) << 8) ^ 0x479A0000) & (v48 ^ 0x8206180E)))) ^ 0x3E64A356;
  v59 = 0x11D341361423 * (((v58 ^ 0x44A4E0DCFF8718C7) - 0x44A4E0DCFF8718C7) ^ ((v58 ^ 0x4CBCA31F485E41ALL) - 0x4CBCA31F485E41ALL) ^ ((v58 ^ 0x406F2AED907AA9F1) - 0x406F2AED907AA9F1)) - 0x2BE9B56E86D18B33;
  v60 = v59 ^ ((v59 ^ 0x4BF3B12006F6DE45) + 0x3EA988CF54C27E74) ^ ((v59 ^ 0xD01F3FBEEF266A2BLL) - 0x5ABAF9AE42ED35E2) ^ ((v59 ^ 0xAAB66B33FFB4445ELL) - 0x2013AD23527F1B97) ^ ((v59 ^ 0xBBFF23BDBBAFAFF9) - 0x315AE5AD1664F030);
  v61 = ((v60 ^ 0xA157BB323A9EE69FLL) - 0x448D66CEACEE5DCDLL) ^ ((v60 ^ 0x4BE7DD7603303356) + 0x51C2FF756ABF77FCLL);
  v62 = __CFADD__(941207 * (v61 ^ ((v60 ^ 0x6015A05494658A00) + 0x7A308257FDEACEAELL)), 0xF8EDA21542758B6DLL) + (((v61 ^ ((v60 ^ 0x6015A05494658A00) + 0x7A308257FDEACEAELL)) * 0xE5C97uLL) >> 64) + 941207 * ((__CFADD__(v60 ^ 0xA157BB323A9EE69FLL, 0xBB7299315311A233) - 1) ^ (__CFADD__(v60 ^ 0x4BE7DD7603303356, 0x51C2FF756ABF77FCLL) - 1) ^ (__CFADD__(v60 ^ 0x6015A05494658A00, 0x7A308257FDEACEAELL) - 1)) + 1560383276;
  v63 = v62 ^ ((v62 ^ 0xE81012BB) + 1259643043) ^ ((v62 ^ 0x5FF94984) - 50463842) ^ ((v62 ^ 0x84E9ED27) + 669867839) ^ ((v62 ^ 0x6FFBFBFE) - 855684632) ^ 0x4AB942E8;
  v64 = 0x13B13B13B13B13B2 * (((v63 ^ 0x672EE42778A7A8BBLL) + 0x18D11BD887585745) ^ ((v63 ^ 0x6D24315E21B22CE3) + 0x12DBCEA1DE4DD31DLL) ^ ((v63 ^ 0xA0AD5794F578B56) - 0xA0AD5794F578B56)) + 0x20573582755DAABFLL;
  v65 = v64 ^ ((v64 ^ 0xFDA4F61B05FA1A3BLL) - 0x4045F804EBED3338) ^ ((v64 ^ 0x1E76F23E61F9AFDBLL) + 0x5C6803DE70117928) ^ ((v64 ^ 0x41EC5DC7B0FB671ELL) + 0x3F2AC27A113B1E3) ^ ((v64 ^ 0x1FDF57FD3AEFFBFDLL) + 0x5DC1A61D2B072D02);
  v66 = ((v65 ^ 0xD52245EDAB122512) - 0x3E22D9324EC12FCCLL) ^ ((v65 ^ 0x825C78B28DD090E6) - 0x695CE46D68039A38);
  return (*(v39 + 8 * ((87 * (__CFADD__(13 * (v66 ^ ((v65 ^ 0xEA9F3340C8D59CF7) - 0x19FAF9F2D069629)), 0x697473C098F5D239) + (((v66 ^ ((v65 ^ 0xEA9F3340C8D59CF7) - 0x19FAF9F2D069629)) * 0xDuLL) >> 64) + 13 * ((__CFADD__(v65 ^ 0xD52245EDAB122512, 0xC1DD26CDB13ED034) - 1) ^ (__CFADD__(v65 ^ 0x825C78B28DD090E6, 0x96A31B9297FC65C8) - 1) ^ (__CFADD__(v65 ^ 0xEA9F3340C8D59CF7, 0xFE605060D2F969D7) - 1)) - 7 < 0xFFFFFFF5)) ^ v36)))(188, 1321528399, 0xFFFFFFFFLL, v62, v69, a6, a7, &STACK[0x5F3], a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v68, a35, a36);
}

uint64_t sub_100103C38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0;
  a1[1] = 0;
  *(v9 - 248) = a1;
  return (*(a8 + 8 * ((25876 * (v8 == 2099502679)) ^ (v8 + 5120))))();
}

uint64_t sub_100103D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v28 = a21 - 1511363650;
  HIDWORD(a16) = 3 * HIDWORD(a20) - 1414954193;
  HIDWORD(v24) = (103 * (v22 ^ 0x54A)) ^ 0xEA8262CE;
  LODWORD(v24) = ((9 * HIDWORD(a20) + 275684487 - (v22 - 856029110)) | (v22 - 856029110 - (9 * HIDWORD(a20) + 275684487))) >= 0;
  HIDWORD(a20) = 9 * HIDWORD(a20) + 275684487;
  LODWORD(a21) = 902785158;
  HIDWORD(v27) = a20 ^ 0x5F2BA90C;
  LODWORD(v27) = ((a20 - 1596670327) | 0x81) - 371875218;
  HIDWORD(v26) = a20 - 1596627204;
  LODWORD(v26) = a20 - 1596661649;
  LODWORD(v25) = (a20 - 1596670327) | 0x81;
  HIDWORD(v25) = a20 - 1596670198;
  return (*(v21 + 8 * (v22 ^ 0x53EA)))(51819, 3243880720, 920645125, 3243837835, 1051129461, 397402236, 1448488811, 3595972459, a9, a10, a11, v24, v25, v26, v27, a16, *(a18 + 16), a18, v28, a20, a21);
}

uint64_t sub_100103E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unsigned int a4@<W8>)
{
  *(a1 + v4 + 4) = *(*(a2 + 8) + (a3 - 837563735));
  v11 = (((a4 ^ 0xB2C1E675 ^ *(a2 + 4)) + v6) ^ ((*(a2 + 4) ^ v7) + v8) ^ ((*(a2 + 4) ^ v9) + v10)) - 1205505393;
  v12 = v11 < 0xCE4FAB7E;
  v13 = a3 - 1671203288 < v11;
  if ((a3 - 1671203288) < 0xCE4FAB7E != v12)
  {
    v13 = v12;
  }

  return (*(v5 + 8 * ((19 * !v13) ^ a4)))();
}

uint64_t sub_100103F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a1 - 1;
  *(a2 + v6) = *(v2 + v6);
  return (*(v5 + 8 * (((v6 != 0) * v4) ^ v3)))();
}

uint64_t sub_10010407C(unsigned int *a1)
{
  v7 = v6 + v1;
  v8 = ((v5 + 34733580) | 0x4CD4100) + v7 - 115302658;
  *a1 = v8;
  v9 = a1 + 1;
  *(v9 + v3) = v4;
  *(v9 + v1) = 47;
  *(v9 + v7) = 61;
  *(v9 + v8) = 0;
  return (*(v2 + 8 * v5))();
}

uint64_t sub_10010410C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, double a6, __n128 a7, __n128 a8, __n128 a9, int8x16_t a10, double a11, int8x16_t a12)
{
  v20 = (a2 - 1) & 0xF;
  v21 = v14;
  v22.i64[0] = vqtbl4q_s8(*(&a7 - 1), a10).u64[0];
  *&v22.i64[1] = a11;
  v23 = vrev64q_s8(vmulq_s8(v22, a12));
  *(v18 + a2) = veorq_s8(veorq_s8(veorq_s8(veorq_s8(*(v15 + v20 - 15), *(v13 + a2)), *(v16 + v20 - 15)), *(a1 + v20 + v17 + a4)), vextq_s8(v23, v23, 8uLL));
  return (*(v19 + 8 * (((a3 == 0) * a5) ^ v12)))();
}

uint64_t sub_1001041D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 200) = v6;
  LODWORD(STACK[0x334]) = v3;
  LODWORD(STACK[0x244]) = -1711862836;
  return (*(v5 + 8 * (v4 - 27912)))();
}

uint64_t sub_100104244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, unsigned int a14, uint64_t a15, __int16 a16, __int16 a17)
{
  a14 = (v18 - 3138) ^ (((~v21 & 0x4E76C48E | v21 & 0xB1893B70) ^ 0xC039D29E) * v17);
  a17 = 5768 - ((~v21 & 0xC48E | v21 & 0x3B70) ^ 0xD29E) * v17;
  a15 = v19;
  a13 = v20 ^ (((~v21 & 0xC48E | v21 & 0x3B70) ^ 0xD29E) * v17);
  v22 = (*(a12 + 8 * (v18 ^ 0x942C)))(&a13);
  return (*(a12 + 8 * v18))(v22);
}

uint64_t sub_10010439C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t *a50)
{
  v54 = *a50;
  v55 = (((v51 + 1864559957) & 0xA7077FFD) + (LODWORD(STACK[0x294]) ^ 0x687E0216) - 1753101946) ^ ((LODWORD(STACK[0x294]) ^ 0xD2FA82F6) + 755334410) ^ (((49 * (v51 ^ 0xE9D5C482)) ^ LODWORD(STACK[0x294]) ^ 0x5351E8D2) - 1397835761);
  v56 = 297845113 * ((((v53 - 168) | 0xEAFD61DA) - (v53 - 168) + ((v53 - 168) & 0x15029E20)) ^ 0x9DCE7D44);
  v50[56] = a36;
  v50[57] = v54;
  v50[54] = a31;
  *(v53 - 160) = v56 + v51 + 371871736;
  *(v53 - 136) = v55 - v56 + 1626363843;
  v57 = (*(v52 + 8 * (v51 ^ 0xE9D50CB9)))(v53 - 168);
  return (*(v52 + 8 * ((41542 * (((*(v53 - 156) - v51) | (v51 - *(v53 - 156))) >= 0)) ^ (v51 + 371875172))))(v57);
}

uint64_t sub_10010456C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18)
{
  a17 = *(v20 + v21);
  a18 = v18 + 155453101 * (((&a17 | 0x63ABDA23) - (&a17 & 0x63ABDA20)) ^ 0x858DC1EC) + 296746617;
  v22 = (*(v19 + 8 * (v18 ^ 0x6E5B)))(&a17);
  return (*(v19 + 8 * ((126373 * ((v18 - 1132812259) < 0x1FEBC854)) ^ v18)))(v22);
}

uint64_t sub_100104610@<X0>(int a1@<W4>, int a2@<W5>, int a3@<W6>, uint64_t a4@<X7>, int a5@<W8>)
{
  v20 = (((v9 ^ 0x324A4FD0) - 843730896) ^ ((v9 ^ 0xC475A1A8) + 998923864) ^ ((v9 ^ 0x1FEA2969) - 535439721)) + 750799456;
  v21 = (v20 ^ 0xB99478A5) & (2 * (v20 & 0xBD157CB0)) ^ v20 & 0xBD157CB0;
  v22 = ((2 * (v20 ^ 0xE19C29A5)) ^ 0xB912AA2A) & (v20 ^ 0xE19C29A5) ^ (2 * (v20 ^ 0xE19C29A5)) & a1;
  v23 = ((4 * (v22 ^ 0x44895515)) ^ 0x72255454) & (v22 ^ 0x44895515) ^ (4 * (v22 ^ 0x44895515)) & a1;
  v24 = (v23 ^ 0x50015400) & (16 * ((v22 ^ 0x18000000) & (4 * v21) ^ v21)) ^ (v22 ^ 0x18000000) & (4 * v21) ^ v21;
  v25 = ((16 * (v23 ^ 0xC880101)) ^ 0xC8955150) & (v23 ^ 0xC880101) ^ (16 * (v23 ^ 0xC880101)) & 0x5C895510;
  v26 = v24 ^ v17 ^ (v25 ^ v14) & (v24 << 8);
  v27 = v20 ^ (2 * ((v26 << 16) & a3 ^ v26 ^ ((v26 << 16) ^ v10) & (((v25 ^ 0x14080405) << 8) & a3 ^ a5 ^ (((v25 ^ 0x14080405) << 8) ^ a2) & (v25 ^ 0x14080405))));
  v28 = (*v16 + (v27 ^ v6));
  v29 = *(*v19 + (*v18 & v7));
  v30 = (*v16 + (v27 ^ v6) + v15);
  v31 = ((((v28 ^ v29) & 0x7FFFFFFF) * v8) ^ ((((v28 ^ v29) & 0x7FFFFFFF) * v8) >> 16)) * v8;
  v32 = ((((v30 ^ v29) & 0x7FFFFFFF) * v8) ^ ((((v30 ^ v29) & 0x7FFFFFFF) * v8) >> 16)) * v8;
  *v30 = *(v13 + (v31 >> 24)) ^ *v28 ^ *(a4 + (v31 >> 24)) ^ *((v31 >> 24) + v11 + 2) ^ *(v13 + (v32 >> 24)) ^ *(a4 + (v32 >> 24)) ^ *((v32 >> 24) + v11 + 2) ^ v31 ^ v32 ^ (-5 * BYTE3(v31)) ^ (-5 * BYTE3(v32));
  return (*(v12 + 8 * (((32 * (v27 == v6)) | ((v27 == v6) << 6)) ^ v5)))();
}

uint64_t sub_10010499C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  v25 = 155453101 * ((2 * ((v24 - 144) & 0x3F36F838) - (v24 - 144) - 1060567098) ^ 0x26EF1C09);
  *(v24 - 120) = v21 - v25 + 422499465 + 1168 * (v22 ^ 0x7A92);
  *(v24 - 144) = &a20;
  *(v24 - 136) = v25 + 6641 + v22;
  *(v24 - 128) = v23;
  v26 = (*(v20 + 8 * (v22 ^ 0xB1DD)))(v24 - 144);
  return (*(v20 + 8 * v22))(v26);
}

uint64_t sub_100104C8C(uint64_t a1, double a2, __n128 a3, __n128 a4)
{
  a3.n128_u16[0] = -23645;
  a3.n128_u8[2] = -93;
  a3.n128_u8[3] = -93;
  a3.n128_u8[4] = -93;
  a3.n128_u8[5] = -93;
  a3.n128_u8[6] = -93;
  a3.n128_u8[7] = -93;
  a4.n128_u16[0] = 24415;
  a4.n128_u8[2] = 95;
  a4.n128_u8[3] = 95;
  a4.n128_u8[4] = 95;
  a4.n128_u8[5] = 95;
  a4.n128_u8[6] = 95;
  a4.n128_u8[7] = 95;
  return (*(v7 + 8 * a1))(a1, 8 - (v5 & 0x18), -v6, -9119 - v6, (4 * a1) ^ 0x2235Cu, v4 + -8 - v6, 15281, xmmword_100F523B0, a3, a4);
}

uint64_t sub_100104D34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1 - 1;
  *(a2 + v6) = *(v2 + v6);
  return (*(v5 + 8 * (((v6 == 0) * v4) ^ v3)))();
}

uint64_t sub_100104DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  v36 = v34 - 1;
  v37 = ((v32 << ((v33 + 127) ^ 0x7E)) & 0xD1568F14 ^ 0x68AB478A) & v32;
  v38 = ((2 * v32) ^ 0x16) & v32 ^ (2 * v32) & 0x8A;
  LOBYTE(v37) = v32 ^ (2 * (((4 * (v38 ^ 0x89)) ^ 0x20) & (v38 ^ 0x89) & (16 * (v38 & (4 * v37) ^ v37)) ^ v38 & (4 * v37) ^ v37));
  *(&a32 + v36) = ((((v37 ^ 0x97) + 87) ^ ((v37 ^ 0x35) - 11) ^ ((v37 ^ 0x92) + 84)) - 87) * (v32 - 101) + 101 * v32 + 39;
  return (*(v35 + 8 * (v33 ^ 0x53CE ^ (64905 * (((v36 - v33) | (v33 - v36)) >= 0)))))();
}

uint64_t sub_100104F70(double a1, __n128 a2, uint64_t a3, uint64_t a4, int a5)
{
  a2.n128_u16[0] = 14135;
  a2.n128_u8[2] = 55;
  a2.n128_u8[3] = 55;
  a2.n128_u8[4] = 55;
  a2.n128_u8[5] = 55;
  a2.n128_u8[6] = 55;
  a2.n128_u8[7] = 55;
  return (*(v7 + 8 * ((25947 * (a5 == 1582392529)) ^ (a5 - 867443557))))(8 - (v5 & 0x18), a4, -v6, v5 + *(v8 - 184) - 8, xmmword_100F523B0, a2);
}

uint64_t sub_100105004@<X0>(unint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v13 = *(a2 - 1) + v5;
  *(a2 - 2) += v8;
  *(a2 - 1) = v13;
  *a2 += v4;
  *(v12 + 4 * (v10 + (((v3 ^ v7) + v9) ^ a1))) -= v6;
  return (*(v11 + 8 * (((v10 < 0x60) * v2) ^ v3)))();
}

void sub_100105098(uint64_t a1)
{
  v2 = (*(a1 + 24) ^ 0xA90F9A5BBFFFB7B8) + 0x56F065A4D7B088B0 + ((2 * *(a1 + 24)) & 0x521F34B77FFF6F70);
  v3 = v2 < 0x97B04068;
  v4 = v2 > *a1 + 2544910440;
  if (*a1 > 0xFFFFFFFF684FBF97 != v3)
  {
    v4 = v3;
  }

  v1 = *(a1 + 40) + 155453101 * (a1 ^ 0xE6261BCF);
  __asm { BRAA            X15, X17 }
}

uint64_t sub_10010550C(__n128 a1, __n128 a2, __n128 a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  v61 = a60 & 0x3F;
  *(&a51 + v61) = -33;
  v62.n128_u64[0] = 0xBEBEBEBEBEBEBEBELL;
  v62.n128_u64[1] = 0xBEBEBEBEBEBEBEBELL;
  v63.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v63.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(v60 + 8 * ((38161 * (v61 > 0x37)) ^ a17)))(a1, a2, a3, a4, v62, v63);
}

uint64_t sub_100105574()
{
  *(v3 + 24) = v4;
  *(v2[3] + 32) = v2[4];
  *(v0 + 8) = v2[1] + *(v0 + 8) - 0x3CE25E0EC5200378;
  return (*(v5 + 8 * v1))();
}

uint64_t sub_100105628@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v11 = v9 - 1;
  *(a2 + v11) = *(v5 + (v11 & 0xF)) ^ *(v2 + v11) ^ *(v3 + (v11 & 0xF)) ^ (63 * (v11 & 0xF)) ^ *(v4 + (v11 & 0xF));
  return (*(v10 + 8 * (((v11 == 0) * ((v7 | v8) + a1)) ^ v6)))();
}

uint64_t sub_10010567C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if ((((*(a27 + 1664) ^ 0x985540) - 9983296) ^ ((*(a27 + 1664) ^ 0x967887DA) + 1770485798) ^ ((((v27 + 537030479) | 0x5200C10) ^ 0xA5E866E1) + (*(a27 + 1664) ^ 0x7F35158B))) + v28 >= 8)
  {
    v30 = v28;
  }

  else
  {
    v30 = 371891402;
  }

  LODWORD(STACK[0x3E0]) = v30;
  return (*(v29 + 8 * (v27 ^ 0x3235 ^ (25887 * ((v27 ^ 0xDF282728) < 0xBECEA666)))))();
}

uint64_t sub_10010578C(uint64_t a1, uint64_t a2)
{
  STACK[0x430] = STACK[0xA80] + 24;
  STACK[0x420] = STACK[0x978] + 24;
  v4 = (v2 - 6116) ^ 0xE9D581D8;
  v5 = STACK[0xBF0];
  v6 = LODWORD(STACK[0xBF0]) - v4;
  v7 = v4 - LODWORD(STACK[0xBF0]);
  v8 = SLOWORD(STACK[0xBEE]);
  LODWORD(STACK[0x320]) = ((v6 | v7) & 0x80000000) == 0;
  STACK[0x440] = STACK[0x4B8] + 24;
  LODWORD(STACK[0x300]) = LODWORD(STACK[0xBF4]) ^ 0x780B3361;
  LODWORD(STACK[0x3F0]) = v8 ^ 0x7374;
  STACK[0x450] = STACK[0x658] + 24;
  v9 = SLOWORD(STACK[0xCA6]);
  LODWORD(STACK[0x410]) = v9;
  LODWORD(STACK[0x3E0]) = v9 ^ 0x387C;
  LODWORD(STACK[0x3D0]) = v5 ^ 0x780B3361;
  v10 = STACK[0xCA8];
  LODWORD(STACK[0x310]) = STACK[0xCA8];
  LODWORD(STACK[0x3C0]) = v10 ^ 0x780B3361;
  LODWORD(STACK[0x2F0]) = LODWORD(STACK[0xCAC]) ^ 0x780B3361;
  v11 = *(v3 + 8 * (v2 - 6116));
  v12 = STACK[0x2B8];
  LODWORD(STACK[0x3B0]) = STACK[0x2B8] - 12406;
  LODWORD(STACK[0x2D0]) = v12 + 15489;
  v13 = (v12 + 15489) ^ 0xB010;
  LODWORD(STACK[0x3A0]) = v12 - 10514;
  LODWORD(STACK[0x340]) = v13;
  LODWORD(STACK[0x390]) = v13 - 11010;
  LODWORD(STACK[0x380]) = v12 + 14350;
  v14 = 43 * (v12 ^ 0x5E3F);
  LODWORD(STACK[0x2E0]) = v14;
  v14 ^= 0x6001u;
  LODWORD(STACK[0x370]) = v12 + 6654;
  LODWORD(STACK[0x330]) = v14;
  LODWORD(STACK[0x360]) = v14 - 30653;
  LODWORD(STACK[0x350]) = v12 - 15261;
  return v11(a1, a2, 0xD87ADC859AB2F24, 0x5404FB19F81DD60FLL, 0xB52FFCE62967CC61, 0xDB05397F7548ABE5, 0x9B1C7427651E0F18, 0x30B131F11BB74009);
}

uint64_t sub_100105A90@<X0>(void *a1@<X0>, uint64_t a2@<X4>, int a3@<W8>)
{
  STACK[0x398] = 0;
  a1[3] = a2;
  a1[4] = *(v3 + 80);
  *(v3 + 80) = a1;
  *(a1[4] + 24) = a1;
  a1[1] = 0x3CE25E0EC52016E8;
  a1[622] = 0x3CE25E0EC52016E8;
  a1[623] = 0xBCE25E0EC5200378;
  v5 = *(v4 + 8 * (a3 + 21653 + ((a3 - 5378) ^ 0x25C7)));
  STACK[0x3A0] = a1;
  STACK[0x3A8] = a1;
  STACK[0x3D0] = a1;
  STACK[0x3C0] = 5000;
  return v5();
}

uint64_t sub_100105B44(uint64_t result)
{
  v1 = *(result + 8);
  *v1 = 0x8F50B55085F9508FLL;
  *(v1 + 8) = -374522699;
  *(v1 + 12) = -21067;
  *(v1 + 14) = -113;
  *(v1 + 16) = 0;
  return result;
}

void sub_100105B80(_DWORD *a1)
{
  v1 = *a1 + 634647737 * ((a1 - 2 * (a1 & 0x3644DD09) + 910482697) ^ 0x5BD2F2F5);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100105E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, unsigned int a17, unsigned int a18)
{
  if (a18 < a17 != (v18 + 332410961) < 0x13D03011)
  {
    v21 = (v18 + 332410961) < 0x13D03011;
  }

  else
  {
    v21 = v18 + 332410961 > a18;
  }

  return (*(v19 + 8 * ((219 * (((v20 - 77 + v20 + 15 + 1) ^ v21) & 1)) ^ a16)))();
}

uint64_t sub_100105EF8@<X0>(int a1@<W8>, __n128 a2@<Q1>)
{
  a2.n128_u16[0] = 6939;
  a2.n128_u8[2] = 27;
  a2.n128_u8[3] = 27;
  a2.n128_u8[4] = 27;
  a2.n128_u8[5] = 27;
  a2.n128_u8[6] = 27;
  a2.n128_u8[7] = 27;
  return (*(v2 + 8 * (a1 ^ 0xFD7DD487 ^ (8083 * (a1 != 1134766832)))))(xmmword_100F523B0, a2);
}

uint64_t sub_100105F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = *(a8 + 68);
  *(a8 + (v21 & a15)) = -33;
  return (*(v20 + 8 * ((4519 * ((v21 & a15) > 0x37)) ^ (a4 + 3209))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_100105FC8()
{
  *(v2 - 144) = v2 - 168;
  *(v2 - 136) = &STACK[0x284];
  *(v2 - 128) = v1 - 1012831759 * ((v2 - 152 - 2 * ((v2 - 152) & 0x75976B50) + 1972857681) ^ 0x65047DDB) + 46626633;
  v3 = (*(v0 + 8 * (v1 ^ 0xD0B2)))(v2 - 152);
  return (*(v0 + 8 * (((*(v2 - 152) == -371865839) * (v1 ^ 0x66CC ^ (17 * (v1 ^ 0x1AD5)))) ^ v1)))(v3);
}

uint64_t sub_10010618C@<X0>(int a1@<W8>, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  *a2 = a1;
  v58 = v52;
  v59 = (*(v55 + v53 * v57 + 8))(a3);
  return (*(v54 + 8 * ((56435 * (v59 == ((2 * v59) & 0xD3AB8E22))) ^ v58)))(v59, v60, 315866172, 3979101123, &off_1010A0B50, v56, 3923101457, 1174221025, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_10010636C@<X0>(uint64_t a1@<X8>)
{
  v2 = (((a1 ^ 0x86E39A6C9742091) - 0x86E39A6C9742091) ^ ((a1 ^ 0x9C0CA876B15A5891) + 0x63F357894EA5A76FLL) ^ ((a1 ^ 0x946291D091FBBF11) + (STACK[0x2B8] ^ 0xB4A77776) + 0x6B9D6E2EB95D1728)) + STACK[0xC30] - 0x10F1BE42386B0C8BLL + 0x1094BD5E3;
  v3 = STACK[0xC28] - 0x41C093630773936FLL;
  v4 = v2 < 0x1F760ED2;
  v5 = v2 > v3;
  if (v3 < 0x1F760ED2 != v4)
  {
    v5 = v4;
  }

  return (*(v1 + 8 * ((STACK[0x2B8] - 17680) | (2 * !v5))))();
}

uint64_t sub_1001064EC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(&a8 + v9) = 920645125;
  v12 = (a1 ^ 0x65B2) + v9 < 1501483410 && v9 + 646000239 < v8;
  return (*(v10 + 8 * ((v12 | (8 * v12)) ^ a1)))();
}

uint64_t sub_1001065D8()
{
  STACK[0x778] = 0;
  STACK[0x560] = 0x2FCD96651A2885F4;
  STACK[0x7E8] = *(v1 + 8 * (v0 - 28849));
  return (*(v1 + 8 * (v0 - 51062 + ((v0 - 321462236) & 0x1328FF77))))();
}

uint64_t sub_1001066AC()
{
  v2 = (*(v1 + 8 * (v0 ^ 0xA230)))(64);
  v3 = STACK[0x408];
  STACK[0x788] = v2;
  return (*(v3 + 8 * (((((v0 - 53) ^ (v2 == 0)) & 1) * (v0 - 26774)) ^ v0)))();
}

uint64_t sub_100106848()
{
  *(v3 - 224) = STACK[0x3B0];
  v4 = STACK[0x3B8];
  v5 = LODWORD(STACK[0x3C8]) ^ STACK[0x3B8];
  *(v3 - 200) = v0 - STACK[0x3B8] - 1781246597;
  v6 = LODWORD(STACK[0x3C0]) - v4;
  *(v3 - 216) = v5 ^ 0x12D2;
  *(v3 - 212) = v6;
  *(v3 - 208) = v4;
  *(v3 - 240) = (v1 - 67083628) ^ v4;
  *(v3 - 232) = v5;
  v7 = (*(v2 + 8 * SLODWORD(STACK[0x3A8])))(v3 - 240);
  return (*(v2 + 8 * *(v3 - 204)))(v7);
}

uint64_t sub_1001068C8()
{
  v2 = (*(v1 + 8 * (v0 + 24064)))();
  v3 = STACK[0x408];
  STACK[0x9F8] = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_1001069D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t (*a39)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), _DWORD *a40)
{
  v45 = (((a40[18] ^ 0xCB9B7EEA) + 879001878) ^ ((a40[18] ^ 0x39478B46) - 960990022) ^ ((a40[18] ^ 0xEFA073D0) + 274697264)) + (((v43 ^ 0x145E3BB7) - 341719991) ^ ((v43 ^ 0x621A15D7) - 1645876695) ^ ((v43 ^ 0x3405A09) - 54549001));
  v46 = (((a40[19] ^ 0x322EF1C4) - 841937348) ^ ((a40[19] ^ 0x81CE4C19) + 2117186535) ^ ((a40[19] ^ 0xAE9C3BA1) + 1365492831)) + (((v42 ^ 0x31263B82) - 824589186) ^ ((v42 ^ 0x918DA208) + 1852988920) ^ ((v42 ^ 0x51D1C39) - 85793849));
  a40[18] = v45 - ((2 * v45 + 620885450) & 0x3AF90CF8) - 1342340767;
  a40[19] = v46 - ((2 * v46 + 107354206) & 0x3AF90CF8) - 525364565;
  v47 = (((a40[20] ^ 0xD49A402C) + 728088532) ^ ((a40[20] ^ 0x5DC71A30) - 1573329456) ^ ((a40[20] ^ 0x9421DC60) + 1809720224)) + (((v40 ^ 0x9EAC107A) + 1632890758) ^ ((v40 ^ 0xEC7CBCDF) + 327369505) ^ ((v40 ^ 0xC5AF2B0) - 207286960));
  v48 = (((a40[21] ^ 0x5E558BF3) - 1582664691) ^ ((a40[21] ^ 0x319868B4) - 832071860) ^ ((a40[21] ^ 0x72B1653B) - 1924228411)) + (((v41 ^ 0x58F19701) - 1492227841) ^ ((v41 ^ 0x6CD1871A) - 1825670938) ^ ((v41 ^ 0x4044C618) - 1078248984));
  a40[20] = v47 - ((2 * v47 + 940427554) & 0x3AF90CF8) - 1182569715;
  a40[21] = v48 - 1352801540 + ((473777920 - 2 * v48) | 0xC506F307);
  return a39(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_100106D3C()
{
  v2 = (*(v1 + 8 * (v0 + 12147)))(32);
  STACK[0x658] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (15985 * (v0 ^ 0x9B27) - 31947)) ^ v0)))();
}

uint64_t sub_100106DD0(int a1, int8x16_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v15 = (a8 + a6 + v13 + 8) & 0xF;
  v17.val[0].i64[0] = v15;
  v17.val[0].i64[1] = (v11 + a6 + 22) & 0xF;
  v17.val[1].i64[0] = (v11 + a6 + 21) & 0xF;
  v17.val[1].i64[1] = (v11 + a6 + 20) & 0xF;
  v17.val[2].i64[0] = (v11 + a6 + 19) & 0xF;
  v17.val[2].i64[1] = (v11 + a6 + 18) & 0xF;
  v17.val[3].i64[0] = (v11 + a6 + 17) & 0xF;
  v17.val[3].i64[1] = (v11 + a6 + 8) & 0xF ^ 8;
  *(a7 + a6 + v13 + 8) = veor_s8(veor_s8(veor_s8(*(v10 + v15 - 7), *(a7 + a6 + v13 + 8)), veor_s8(*(v9 + v15 - 7), *(v8 + v15 - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v17, a2), a3)));
  return (*(v14 + 8 * (((a5 == a6) * a1) ^ v12)))();
}

uint64_t sub_100106EE4()
{
  v8 = ((v5 ^ 0x8B95u) + 18697 - 25236) & (v4 + 15);
  v9 = -v6 - v4;
  v10 = v9 + 1;
  v11 = v9 + 1 + v1 + v8;
  v12 = v9 + v2 + v8 + 5;
  v16 = (v0 - v6) > 0xF && v12 > 0xF && v11 >= (4 * (v5 ^ 0x8B95u)) - 26200 && (v10 + v3 + v8) > 0xF;
  return (*(v7 + 8 * ((52 * v16) ^ v5)))();
}

uint64_t sub_1001078AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = a10 + ((a4 + 1115479102) & 0xBD82FFDE) + 1074377836;
  v18 = v17 < 823927293;
  v19 = (((a5 ^ 0x37DEE35A) - 937354074) ^ ((a5 ^ 0xC90E6733) + 921802957) ^ ((a5 ^ 0xB28AF476) + 1299516298)) - 42560996;
  v20 = v18 ^ (v19 < 823927293);
  v21 = v19 < v17;
  if (!v20)
  {
    v18 = v21;
  }

  v22 = !v18;
  if (!v16)
  {
    v22 = 1;
  }

  return (*(a16 + 8 * ((175 * v22) ^ a4)))();
}

uint64_t sub_100107AC0@<X0>(uint64_t a1@<X0>, char a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, int a9, unsigned int a10, char a11)
{
  a11 = 85 * ((&a6 - 2 * (&a6 & 0x40) + 68) ^ 0x9D) + 116;
  a10 = (v14 ^ 0x2DA8) - 1112314453 * ((&a6 - 2 * (&a6 & 0x440C0D40) + 1141640516) ^ 0xAB5A279D) + 12931;
  a8 = (((a2 ^ 0x43) - 38) ^ ((a2 ^ 0x81) + 28) ^ (((11 * (v14 ^ 0x24)) ^ 0x12) + (a2 ^ 0xCE))) - 85 * ((&a6 - 2 * (&a6 & 0x40) + 68) ^ 0x9D) - 73;
  a6 = v12 + 12;
  a7 = v13;
  (*(v11 + 8 * (v14 ^ 0xAD50)))(&a6);
  return (*(v11 + 8 * ((35824 * (a9 == (((v14 ^ 0x2DA8) - 1043456410) & 0x3E31F5F1 ^ 0xE9D5A600))) ^ v14 ^ 0x2DA8)))(a1);
}

uint64_t sub_100107C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = (a69 ^ (v69 + 21553) ^ 0x7724126F) & (2 * (((v69 + 27168) ^ 0x77B4D38E) & a69)) ^ ((v69 + 27168) ^ 0x77B4D38E) & a69;
  v72 = ((2 * (a69 ^ 0x712CEF86)) ^ 0xD315F68) & (a69 ^ 0x712CEF86) ^ (2 * (a69 ^ 0x712CEF86)) & 0x698AFB4;
  v73 = v72 ^ 0x288A094;
  v74 = (v72 ^ 0x418A104) & (4 * v71) ^ v71;
  v75 = ((4 * v73) ^ 0x1A62BED0) & v73 ^ (4 * v73) & 0x698AFB0;
  v76 = (v75 ^ 0x200AE84) & (16 * v74) ^ v74;
  v77 = ((16 * (v75 ^ 0x4980124)) ^ 0x698AFB40) & (v75 ^ 0x4980124) ^ (16 * (v75 ^ 0x4980124)) & 0x698AF80;
  return (*(v70 + 8 * ((13 * ((a69 ^ (2 * ((((v77 ^ 0x61004B4) << 8) & 0x698A400 ^ 0x880BB4 ^ (((v77 ^ 0x61004B4) << 8) ^ 0x98AFB400) & (v77 ^ 0x61004B4)) & (((v77 ^ 0x88ABB4) & (v76 << 8) ^ v76) << 16) ^ (v77 ^ 0x88ABB4) & (v76 << 8) ^ v76))) != 2008301618)) ^ (v69 + 22088))))();
}

void sub_100107F50()
{
  if (v0 == 2050637107)
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891401;
  }

  *(v1 + 44) = v2;
}

uint64_t sub_100108040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v34 = v31 + 1105551235 + (((*(a31 + 88) ^ 0x2AAB31A8) - 715862440) ^ ((*(a31 + 88) ^ 0xB40D5147) + 1274195641) ^ ((*(a31 + 88) ^ 0x83DAE693) + 2082806125));
  *(a31 + 88) = v34 - (((v34 << ((v32 + 60) ^ 0x1A)) + 877547682) & 0x3AF90CF8) - 1214009651;
  return (*(v33 + 8 * v32))();
}

uint64_t sub_100108120@<X0>(_DWORD *a1@<X0>, unsigned int a2@<W4>, uint64_t a3@<X5>, uint64_t a4@<X6>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v22 = (v21 - 1748968057) & 0x683EEFA8;
  v23 = v22 ^ 0x36DF69A5 ^ *a1;
  v24 = (v23 * *(a18 + 16));
  v25 = v23 + (**(a20 + 8) ^ a2) * v24;
  return (*(a21 + 8 * (v21 ^ (8 * (a5 > 1)))))(a1, v22, v24, v25 - (a3 & (2 * v25)) + a4);
}

uint64_t sub_100108198()
{
  v4 = *(&off_1010A0B50 + (v0 ^ 0x1C2C)) - 1349513734;
  v5 = *(v3 - 112 + ((*(v3 - 108) % 0xFu) ^ 0xFLL) + *(v3 - 108) % 0xFu);
  v6 = (((*(v3 - 108) ^ 0xD2) + ((v0 - 1843) | 0x624) + v4[*(v3 - 108) ^ 0x2CLL]) << 24) + 1056964608;
  v7 = *(&off_1010A0B50 + v0 - 1873) - 362627811;
  v8 = v7[((((v5 ^ 0xCA) - (v5 ^ 0xFEF8016B)) ^ 0xFFFFFFFE) + (v5 ^ 0xCA)) ^ 0xFEF80104] ^ v5 ^ 0xCA;
  v9 = (*(v3 - 104) ^ 0x93) + v4[*(v3 - 104) ^ 0x6DLL];
  v10 = *(&off_1010A0B50 + (v0 ^ 0x1CDC)) - 1250538422;
  v11 = v10[*(v3 - 102) ^ 0x4CLL];
  v12 = *(&off_1010A0B50 + v0 - 5870) - 487109482;
  v13 = v12[*(v3 - 107) ^ 0x91] + 103;
  v14 = ((((-45 * v11 + 30) ^ (2 * ((38 * v11 + 60) ^ (-45 * v11 + 30)))) << 8) ^ 0x218E8298) & (((v9 << 24) - 469762048) ^ 0x16EFFFF8) | ((v9 << 24) - 469762048) & 0xDE000000;
  LOBYTE(v9) = v13 ^ (32 * v13);
  v15 = v12[*(v3 - 99) ^ 0xECLL] - 103;
  v16 = ((v9 << 16) ^ 0xBB05BFDD) & (v6 ^ 0xECFFFFFF) | v6 & 0x44444444;
  v17 = ((((((2 * v15) & 0x9C) + (v15 ^ 0xCE)) ^ (32 * (((2 * v15) & 0x9C) + (v15 ^ 0xCE)))) << 16) ^ 0xC36A1C2) & (v8 ^ 0xEFFFB7F4);
  v18 = (((*(v3 - 109) - ((2 * *(v3 - 109)) & 0x64) - 78 - ((*(v3 - 109) - ((2 * *(v3 - 109)) & 0x64) - 78) ^ 0x69)) ^ 0xFE) + *(v3 - 109) - ((2 * *(v3 - 109)) & 0x64) - 78) ^ v7[(*(v3 - 109) - ((2 * *(v3 - 109)) & 0x164u) + 178) ^ 0xA5];
  v19 = *(v3 - 101);
  v20 = v19 ^ 0x13;
  LODWORD(v19) = (((v19 ^ 0x4A) >> 3) | (32 * (v19 ^ 0x4A))) ^ 0xFFFFFFDC;
  v21 = (v18 ^ 0xFF461DD0) & (((((*(v3 - 112) ^ 0x89) + v4[*(v3 - 112) ^ 0x77]) << 24) - 469762048) ^ 0x6D461DF2) | v18 & 0xD;
  LOBYTE(v19) = ((v19 >> 5) | (8 * v19)) ^ v7[v20];
  LOBYTE(v18) = v12[*(v3 - 111) ^ 0xE5] + 103;
  v22 = (v18 ^ (32 * v18)) << 16;
  LOBYTE(v5) = v10[*(v3 - 110) ^ 0xE6];
  v23 = (v21 ^ 0x573D40D0) & (v22 ^ 0xFFBC5FFF);
  LOBYTE(v20) = v10[~*(v3 - 106)];
  v24 = ((v22 & 0x840000 | v23) ^ 0x8884A215) & ((((-45 * v5 + 30) ^ (2 * ((-45 * v5 + 30) ^ (38 * v5 + 60)))) << 8) ^ 0x898E913F);
  v25 = v12[*(v3 - 103) ^ 0x28] + 103;
  v26 = ((((-45 * v20 + 30) ^ (2 * ((-45 * v20 + 30) ^ (38 * v20 + 60)))) << 8) ^ 0x110159D7) & (v16 ^ 0x40364002);
  v27 = *(v3 - 100);
  v28 = v26 | v16 & 0xEEFE0008;
  v29 = v4[v27 ^ 0x15];
  v30 = (v25 ^ (32 * v25)) << 16;
  v31 = (v30 ^ 0xFFFCFFFF) & ((v19 & 0xB3 | (v19 & 0x4C ^ 0xFFFFFF07) & (v14 ^ 0x9816A8D4)) ^ 0x9A41D841);
  LODWORD(v19) = (v27 ^ 0xEB) + v29 - 28;
  LOBYTE(v27) = v10[*(v3 - 98) ^ 0xEDLL];
  v32 = (((v19 ^ 0x56) << 24) | 0xAF2F7D) & ((v17 | v8 & 0x3D) ^ 0xF3AF4E97);
  LOBYTE(v19) = (-45 * v27 + 30) ^ (2 * ((38 * v27 + 60) ^ (-45 * v27 + 30)));
  v33 = v19 & 8 ^ 8;
  v34 = v32 | v17 & 0x508082;
  v35 = ((v19 ^ 0xAF) << (v19 & 8 ^ 8) << (v19 & 8)) ^ 0x63D25534;
  v36 = *(v3 - 105);
  *(v3 - 120) = v34 ^ v35;
  v37 = v7[v36 ^ 0x99] ^ v36;
  *(v3 - 132) = v37 & 0x2B ^ 0xD5BD09A0 ^ (v28 ^ 0x3473350B) & (v37 ^ 0xFFFFFFE9);
  *(v3 - 128) = (v30 & 0xA226B395 | 0x5DD14C6A) ^ v31;
  *(v3 - 124) = v23 & 0x767155C0 ^ 0xE91BC026 ^ v24;
  *(v3 - 116) = (((v1 ^ 0xF8B2462D) - 218440363) ^ ((v1 ^ 0x9272F8A2) - 1741003812) ^ ((v1 ^ 0x6C67FDC7) + 1714382527)) + 1689233382;
  return (*(v2 + 8 * v0))(3585935776, v36, 5275778, v33, v29, v4, v7, v10);
}

uint64_t sub_100108734@<X0>(uint64_t a1@<X0>, char a2@<W3>, char a3@<W4>, char a4@<W5>, char a5@<W6>, char a6@<W7>, uint64_t a7@<X8>)
{
  v23 = (v10 ^ a1 ^ v18) & (2 * (a1 & v15)) ^ a1 & v15;
  v24 = (a1 ^ a3) & v17 | (a1 ^ v7) & (2 * (a1 ^ a3));
  v25 = a1 ^ (2 * (((v24 & v19 | (4 * v24) & ~v24) ^ a6) & (16 * ((v24 ^ v21) & (4 * v23) ^ v23)) ^ (v24 ^ v21) & (4 * v23) ^ v23));
  v26 = ((v25 ^ v8) + v16) ^ ((v25 ^ a4) + v9) ^ ((v25 ^ v20) + v11);
  *(a7 + v13) = v14 + v26 * a5 + v12 * (v26 + a2);
  return (*(v22 + 8 * (((2 * (v13 != 0)) | (32 * (v13 != 0))) ^ v10)))(a1 + 1);
}

uint64_t sub_10010896C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a1[3] = v67;
  a1[4] = *(v66 + 80);
  *(v66 + 80) = a1;
  *(a1[4] + 24) = a1;
  a1[1] = STACK[0x270];
  return (*(v69 + 8 * ((((v68 - 3) ^ 0x94CD ^ (v68 - 538895564) & 0x201EEB7F) * (a66 < 0xFFFFFFFFFFFFFFD7)) ^ v68)))();
}

uint64_t sub_1001089D4@<X0>(int a1@<W8>)
{
  v2 = *(v1 + 8 * (a1 + 1413));
  STACK[0x3A0] = *(&off_1010A0B50 + (a1 ^ 0x23BD)) - 1587760775;
  LODWORD(STACK[0x3B0]) = 2058855546;
  LODWORD(STACK[0x398]) = 1;
  return v2();
}

uint64_t sub_100108A90(int32x4_t a1, int32x4_t a2, int32x4_t a3, uint32x4_t a4, int32x4_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12)
{
  v16 = vmlaq_s32(a2, a3, a1);
  v17 = vuzp2q_s32(vmull_u32(*v16.i8, *a4.i8), vmull_high_u32(v16, a4));
  *v12 = vmlsq_s32(v16, vshrq_n_u32(vsraq_n_u32(v17, vsubq_s32(v16, v17), 1uLL), 5uLL), a5);
  return (*(v15 + 8 * (((((v13 == 0) ^ (a12 + 1)) & 1) * v14) ^ a12)))();
}

uint64_t sub_100108AF8(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v35 = *(a31 + v31 + 72);
  v36 = ((2 * v31) & 0xFF9EB9E8) + (((v32 ^ 0x5AD5) - 3192101) ^ v31);
  *(v33 + v36 + 3187466) = v35 ^ a4;
  *(v33 + v36 + 3187467) = (a3 ^ BYTE1(v35)) + (~(2 * (a3 ^ BYTE1(v35))) | 0x41) + 96;
  *(v33 + v36 + 3187468) = (BYTE2(v35) ^ 0x7C) - ((2 * (BYTE2(v35) ^ 0x7C)) & 0xBF) + 95;
  *(v33 + v36 + 3187469) = (HIBYTE(v35) ^ 0x1D) - ((2 * (HIBYTE(v35) ^ 0x1D)) & 0xBF) + 95;
  return (*(v34 + 8 * ((15869 * (v31 + 4 < *(a31 + 92))) ^ v32)))();
}

uint64_t sub_100108BF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = *(v8 + 8 * (a8 - 34964 + ((a8 + 34866) | 0x288)));
  STACK[0x200] = a4;
  return v9();
}

uint64_t sub_100108C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, int a11, int a12, uint64_t a13, int a14, int a15, int a16, int a17, int a18, int a19, int a20, int a21, int a22, int a23, uint64_t a24, int a25, int a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, int a32, int a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  a13 = v38;
  v41 = 634647737 * ((~(v40 - 152) & 0x253490AB | (v40 - 152) & 0xDACB6F50) ^ 0x48A2BF57);
  *(v40 - 152) = v41 - 1431125376;
  *(v40 - 136) = v39 - v41 + 14047;
  *(v40 - 144) = &STACK[0x2A4];
  (*(v37 + 8 * (v39 ^ 0xD019)))(v40 - 152);
  LOBYTE(STACK[0x2A3]) = STACK[0x293];
  *(v36 + 27) = *(v36 + 11);
  *(v36 + 19) = *(v36 + 3);
  *(v36 + 17) = *(v36 + 1);
  LOBYTE(STACK[0x294]) = STACK[0x284];
  v42 = *(v37 + 146128);
  a10 = &a9 - 369841902;
  a30 = v39 - 5706;
  a33 = v39 + 268297159;
  a32 = v39 - 6863;
  a31 = v39 + 24353;
  a19 = v39 + 29785;
  a23 = v39 + 11330;
  a18 = v39 - 2086867951;
  a17 = v39 ^ 0x114E;
  a12 = 11 * (v39 ^ 0x1C43);
  a16 = a12 ^ 0x50D6;
  a22 = v39 ^ 0x8E77;
  a21 = v39 - 6880;
  a15 = v39 - 5710;
  a26 = v39;
  a20 = v39 + 11248;
  a36 = (v39 + 11248);
  return v42(4294935661);
}

uint64_t sub_100108E44@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12.n128_u64[0] = (v10 + 13) & 0xF;
  v12.n128_u64[1] = (v10 + 12) & 0xF;
  v13.n128_u64[0] = (v10 + 11) & 0xF;
  v13.n128_u64[1] = (v10 + 10) & 0xF;
  v14.n128_u64[0] = (v10 + 9) & 0xF;
  v14.n128_u64[1] = v10 & 0xF ^ 8;
  v18.val[0].i64[0] = (v10 + 7) & 0xF;
  v18.val[0].i64[1] = (v10 + 6) & 0xF;
  v18.val[1].i64[0] = (v10 + 5) & 0xF;
  v18.val[1].i64[1] = (v10 + 4) & 0xF;
  v18.val[2].i64[0] = (v10 + 3) & 0xF;
  v18.val[2].i64[1] = (v10 + 2) & 0xF;
  v18.val[3].i64[0] = (v10 + 1) & 0xF;
  v18.val[3].i64[1] = v10 & 0xF;
  v15.n128_u64[0] = 0x5B5B5B5B5B5B5B5BLL;
  v15.n128_u64[1] = 0x5B5B5B5B5B5B5B5BLL;
  v16.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v16.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(a10 + 8 * v11))((v11 - 3724), v10 + a1 - 16, v10 - 1, (v10 & 0x10) - 16, -39640, 2017, a2, v12, v13, v14, xmmword_100BC76B0, vqtbl4q_s8(v18, xmmword_100BC76B0), v15, v16);
}

uint64_t sub_100108F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20)
{
  v21 = (a2 + 1642434550) & 0x9E1A357D;
  v23 = (((((((v21 ^ 0xCF) + a16) ^ 0xC2) - 46) ^ ((v21 ^ 0xCF) + a16) ^ (a20 + 13 + (((v21 ^ 0xCF) + a16) ^ 0xD4)) ^ ((((v21 ^ 0xCF) + a16) ^ 0x27) + 53)) ^ ((((v21 ^ 0xCF) + a16) ^ 0xDD) - 49)) & 0xF) == 0xC && (((((v21 ^ 0x584656CF) + a16) ^ 0xD051DFC2) + 1107981522) ^ ((v21 ^ 0x584656CF) + a16) ^ (a20 - 921144051 + (((v21 ^ 0x584656CF) + a16) ^ 0x5B434BD4)) ^ ((((v21 ^ 0x584656CF) + a16) ^ 0x1F491F27) - 1928154059) ^ ((((v21 ^ 0x584656CF) + a16) ^ 0xF9FFDFDD) + 1805939919)) != ((3 * (v21 ^ 0x16B5)) ^ 0x6DA43F57);
  return (*(v20 + 8 * ((v23 * ((v21 ^ 0x16B5) - 9137)) ^ v21)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_100109084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, uint64_t a20, int a21, uint64_t a22, char a23, uint64_t a24, unsigned int a25)
{
  v29 = 1012831759 * ((&a19 - 2 * (&a19 & 0x75AE9788) + 1974376334) ^ 0x653D8104);
  a23 = 69 - 15 * ((&a19 - 2 * (&a19 & 0x88) - 114) ^ 4);
  a19 = 471346584 - v29;
  a22 = v28;
  a24 = a10;
  a25 = v29 ^ v25 ^ ((v25 ^ 0xB84B9BCB) + 519108735) ^ ((v25 ^ 0xEFA54B) - 1504393473) ^ ((v25 ^ 0x9A1F1534) + 1017411202) ^ ((v25 ^ 0x7BFFB7FE) - 582691764) ^ 0x5E9993B8;
  a21 = v26 - v29 - 39;
  a20 = a11;
  v30 = (*(v27 + 8 * (v26 + 38821)))(&a19);
  return (*(v27 + 8 * v26))(v30);
}

uint64_t sub_100109240@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, int8x16_t a7@<Q0>, int8x8_t a8@<D1>)
{
  v15.val[0].i64[0] = (v11 + a3 - 1) & 0xF;
  v15.val[0].i64[1] = (v11 + a3 + 14) & 0xF;
  v15.val[1].i64[0] = (v11 + a3 + 13) & 0xF;
  v15.val[1].i64[1] = (v11 + a3 + 12) & 0xF;
  v15.val[2].i64[0] = (v11 + a3 + 11) & 0xF;
  v15.val[2].i64[1] = (v11 + a3 + 10) & 0xF;
  v15.val[3].i64[0] = (v11 + a3 + (v12 ^ 2)) & 0xF;
  v15.val[3].i64[1] = (v11 + a3) & 0xF ^ 8;
  *(a6 + v11) = veor_s8(veor_s8(veor_s8(*(v10 + v15.val[0].i64[0] - 7), *(a4 + v11)), veor_s8(*(v15.val[0].i64[0] + v8 - 3), *(v15.val[0].i64[0] + v9 - 4))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v15, a7), a8)));
  return (*(v13 + 8 * (((a2 == a3) * a5) ^ a1)))();
}

void sub_10010938C(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (1022166737 * ((-2 - ((a1 | 0xA749B810) + (~a1 | 0x58B647EF))) ^ 0xE2A6A67D));
  v5 = *(a1 + 8);
  v4 = *(&off_1010A0B50 + v1 - 33728) - v5 - 395529199 > 0xF && *(&off_1010A0B50 + v1 - 32586) - v5 - 1587096519 > 0xF && *(&off_1010A0B50 + (v1 ^ 0x8570)) - v5 - 286562814 > 0xF;
  __asm { BRAA            X0, X17 }
}

uint64_t sub_10010B088@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W4>, int a5@<W8>)
{
  v9 = a4 + v7 - a2 + a1 + LODWORD(STACK[0x2F4]) + LODWORD(STACK[0x2F8]) + 792938946;
  v10 = (v6 ^ 0x9C6F3D5B) & v5 ^ a5;
  v11 = ((2 * (v6 ^ 0x3C697F19)) ^ 0xD80D8CF4) & (v6 ^ 0x3C697F19) ^ (2 * (v6 ^ 0x3C697F19)) & 0xEC06C67A;
  v12 = v9 ^ v6 ^ ((v9 ^ 0x43EC5256) + 1430473594) ^ ((v9 ^ 0xFED47C50) - 394566272) ^ ((v9 ^ (34 * (v8 ^ 0x3599C951) + 597088118)) + 892877832) ^ ((v9 ^ 0x77FFEDFE) + 1632695506) ^ (2 * (((4 * (v11 ^ 0x2402420A)) & 0x6C06C670 ^ 0x20020060 ^ ((4 * (v11 ^ 0x2402420A)) ^ 0x301B19E0) & (v11 ^ 0x2402420A)) & (16 * ((v11 ^ 0xE4048410) & (4 * v10) ^ v10)) ^ (v11 ^ 0xE4048410) & (4 * v10) ^ v10));
  return (*(a3 + 8 * ((22495 * (((LODWORD(STACK[0x310]) - LODWORD(STACK[0x314]) + LODWORD(STACK[0x31C]) + 517949834 + (((v12 ^ 0xB457F5A5) - 1258502705) ^ ((v12 ^ 0x6D087CD4) + 1839418560) ^ ((v12 ^ 0x6864D6C2) + 1758455466))) & 1) == 0)) ^ (v8 - 899265000))))();
}

uint64_t sub_10010B440(uint64_t result)
{
  v1 = 1603510583 * ((result - 2 * (result & 0x6A76D1E44A6C3B16) + 0x6A76D1E44A6C3B16) ^ 0x5587C608DDB709BDLL);
  v2 = *(result + 8) ^ v1;
  v3 = *(result + 28) + v1;
  v4 = *(result + 16) ^ v1;
  v5 = *result ^ v1;
  v6 = *(result + 24) ^ v1;
  v7 = *(result + 32) - v1;
  v8 = v5 >= v4;
  v9 = v5 < v4;
  v10 = !v8;
  if (v7)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    v12 = v2;
  }

  else
  {
    v12 = v3;
  }

  *(result + 36) = v6 ^ v12;
  return result;
}

void sub_10010B4D0(int a1@<W8>)
{
  if (a1 == 1040508796)
  {
    v1 = -371865839;
  }

  else
  {
    v1 = 371891401;
  }

  *(v2 + 12) = v1;
}

uint64_t sub_10010B534()
{
  v6 = 23958;
  atomic_compare_exchange_strong(v5, &v6, v3);
  return (*(v4 + 8 * (((v6 != v2) * v0) ^ v1)))();
}

uint64_t sub_10010B5B0(uint64_t result)
{
  v1 = *(result + 4) ^ (353670337 * (((result | 0xC078A893) - result + (result & 0x3F87576C)) ^ 0x745950AE));
  v2 = v1 == 409942718 || v1 == 409942708;
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = v3;
  }

  *(result + 8) = (v4 ^ 0xED) + 92;
  return result;
}

uint64_t sub_10010B628()
{
  v5 = (v0 ^ 0xF7FA53EF5BF77FC6) + 0x805AC10D915579ALL + ((2 * v0) & 0xEFF4A7DEB7EEFF8CLL);
  v6 = *(v4 - 184);
  v7 = v5 < 0x350CD760;
  v8 = v5 > v6 + 890034016;
  if (v6 > 0xFFFFFFFFCAF3289FLL != v7)
  {
    v8 = v7;
  }

  return (*(v3 + 8 * ((v1 + 16642) ^ (!v8 | (2 * !v8)))))((v2 - 358478169) + ((v1 + 124670387) & 0xF891E1FD) - (((v1 - 967) + 3655769870) & (2 * (v2 - 358478169))) + 0x7CF2A6176CF302D3);
}

uint64_t sub_10010B79C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STACK[0x2F8] = a1;
  v9 = *(a8 + 8 * (v8 - 15394));
  STACK[0x230] = a1;
  return v9();
}

void sub_10010B810(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) ^ 0x6BEA7ADFDBC7F6E6) - 0x6BEA7ADF270FF067 + ((2 * *(a1 + 24)) & 0xD7D4F5BFB78FEDCCLL);
  v4 = v3 < 0xB4B8067F;
  v5 = v3 > v2 + 3031959167u;
  if (v2 > 0xFFFFFFFF4B47F980 != v4)
  {
    v5 = v4;
  }

  v1 = *(a1 + 4) + 193924789 * (((a1 | 0x7D5FE815) - (a1 | 0x82A017EA) - 2103437334) ^ 0xCBE4DA73);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10010B9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v20 - 104) = v19 - 1603510583 * ((v20 - 128 - 2 * ((v20 - 128) & 0x34D645C0) + 886457792) ^ 0xA30D776B) + 33297;
  *(v20 - 120) = v18;
  *(v20 - 112) = &a17;
  v21 = (*(v17 + 8 * (v19 ^ 0xF5DF)))(v20 - 128);
  return (*(v17 + 8 * ((14 * (*(v20 - 128) <= (v19 ^ 0x4BEB ^ (v19 + 19701) ^ 0x124D9ABFu))) ^ v19)))(v21);
}

uint64_t sub_10010BA70(uint64_t a1, int8x16_t *a2, char a3, uint64_t a4, uint64_t a5, int a6, double a7, __n128 a8, __n128 a9, __n128 a10, int8x16_t a11, double a12, int8x16_t a13, int8x16_t a14)
{
  v20 = a3 & 0xF;
  v21 = v18;
  v22.i64[0] = vqtbl4q_s8(*(&a8 - 1), a11).u64[0];
  *&v22.i64[1] = a12;
  v23 = vrev64q_s8(veorq_s8(veorq_s8(veorq_s8(*a2, *(v15 + v20 - 15)), *(v14 + v20 - 15)), *(a1 + v20 + v16 + a5)));
  v24 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v23, v23, 8uLL), a14), vmulq_s8(v22, a13)));
  *a2 = vextq_s8(v24, v24, 8uLL);
  return (*(v19 + 8 * (((a4 == 0) * a6) ^ v17)))();
}

uint64_t sub_10010BC44()
{
  v3 = (v1 ^ 0xFF7FEBBFFDDD75CFLL) + 0x44A97E75CFE79F76 + ((2 * v1) & 0x1FBBAEB9ELL);
  STACK[0xC68] = v3;
  v4 = STACK[0xAF0];
  STACK[0xC70] = STACK[0xAF0];
  return (*(v2 + 8 * ((2724 * (((((v0 | ((v0 ^ 9) << 32)) ^ (v3 - v4 + (((v0 ^ 0xFFFFF937) + 22512) ^ 0xE9FBE40CEAC09EELL))) & (v0 | ((v0 ^ 9) << 32))) >> (__clz((v0 | ((v0 ^ 9) << 32)) ^ (v3 - v4 + (((v0 ^ 0xFFFFF937) + 22512) ^ 0xE9FBE40CEAC09EELL)) | 1) ^ 0x3Fu)) & 1)) ^ (v0 + 5789))))();
}

uint64_t sub_10010BD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39)
{
  v43 = v40 + v42 + 29384368;
  v44 = (v41 ^ 0xFFFD7FEF) + 798148238;
  v45 = ((v41 ^ 0x158FEB38) - 975154597) ^ v41 ^ ((v41 ^ 0xB33A832C) + 1666529871) ^ ((v41 ^ 0x76D85166) - 1497896955) ^ v44 ^ v43 ^ ((v43 ^ 0x4BF949B0) - 462015265) ^ ((v43 ^ 0x3112967F) - 1633817838) ^ ((v43 ^ 0x3FFFB3DF) - 1871655246) ^ (((((v39 + 67099610) | 0x31998A08) + ((v39 + 12166) ^ 0xDFCBB7D5)) ^ v43) - 1158966288);
  v46 = ((v45 ^ 0x6A08527) + 519690196) ^ ((v45 ^ 0xD3DA0158) - 880585811) ^ ((v45 ^ 0xAA9A4073) - 1295838584);
  v47 = (a39 - *(&a39 + 7u % HIDWORD(a26)));
  return (*(a36 + 8 * ((114 * (((v47 + 1992659030 * v46 + (v46 - 1740216057) * (*(&a39 + 0xEu % HIDWORD(a26)) + 1504323853) - 820103078) & 7) == 1)) ^ v39)))(114, v46 - 1740216057, v47, v44, 798148238, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_10010BF98@<X0>(int a1@<W3>, int a2@<W8>)
{
  LODWORD(STACK[0x20C]) = a2;
  LODWORD(STACK[0x3A4]) = a1;
  return (*(v3 + 8 * (v2 - 37562)))();
}

uint64_t sub_10010C174(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, int64x2_t a6, int8x16_t a7, int64x2_t a8)
{
  v21 = veorq_s8(veorq_s8(veorq_s8(a1, vaddq_s64(veorq_s8(a1, a5), a6)), veorq_s8(vaddq_s64(veorq_s8(a1, a7), a8), vaddq_s64(veorq_s8(a1, v13), v14))), veorq_s8(vaddq_s64(veorq_s8(a1, v15), v16), v17));
  v22 = veorq_s8(veorq_s8(veorq_s8(a2, vaddq_s64(veorq_s8(a2, a5), a6)), veorq_s8(vaddq_s64(veorq_s8(a2, a7), a8), vaddq_s64(veorq_s8(a2, v13), v14))), veorq_s8(vaddq_s64(veorq_s8(a2, v15), v16), v17));
  v23 = veorq_s8(veorq_s8(veorq_s8(a4, vaddq_s64(veorq_s8(a4, a5), a6)), veorq_s8(vaddq_s64(veorq_s8(a4, a7), a8), vaddq_s64(veorq_s8(a4, v13), v14))), veorq_s8(vaddq_s64(veorq_s8(a4, v15), v16), v17));
  v24 = veorq_s8(veorq_s8(veorq_s8(a3, vaddq_s64(veorq_s8(a3, a5), a6)), veorq_s8(vaddq_s64(veorq_s8(a3, a7), a8), vaddq_s64(veorq_s8(a3, v13), v14))), veorq_s8(vaddq_s64(veorq_s8(a3, v15), v16), v17));
  v25 = vaddq_s64(a3, v18);
  v26 = vaddq_s64(a4, v18);
  v30.val[1].i64[0] = v24.i64[0] * v25.i64[0];
  v30.val[1].i64[1] = v24.i64[1] * v25.i64[1];
  v27 = vaddq_s64(a2, v18);
  v30.val[0].i64[0] = v23.i64[0] * v26.i64[0];
  v30.val[0].i64[1] = v23.i64[1] * v26.i64[1];
  v28 = vaddq_s64(a1, v18);
  v30.val[2].i64[0] = v22.i64[0] * v27.i64[0];
  v30.val[2].i64[1] = v22.i64[1] * v27.i64[1];
  v30.val[3].i64[0] = v21.i64[0] * v28.i64[0];
  v30.val[3].i64[1] = v21.i64[1] * v28.i64[1];
  *v10 = vrev64_s8(*&vqtbl4q_s8(v30, v19));
  return (*(v12 + 8 * (((v9 == 0) * v11) ^ v8)))(vaddq_s64(a1, v20), vaddq_s64(a2, v20), vaddq_s64(a3, v20), vaddq_s64(a4, v20));
}

uint64_t sub_10010C614(uint64_t a1)
{
  v5 = ((v2 + 1411853566) ^ 0x54272CFEu) < 8 || STACK[0x9C0] - a1 < 0x10;
  v6 = *(v3 + 8 * ((((v5 ^ (v1 + 82)) & 1) * ((v1 + 14227) ^ 0x8569)) ^ v1));
  STACK[0x450] = STACK[0x9C0];
  return v6();
}

uint64_t sub_10010C8A4()
{
  STACK[0x6E8] = 0;
  LODWORD(STACK[0x7BC]) = 0;
  STACK[0x898] = *(v1 + 8 * (v0 - 33843));
  return (*(v1 + 8 * (v0 - 46736 + v0 - 12317)))();
}

uint64_t sub_10010CCCC()
{
  LODWORD(STACK[0x4C8]) = v5 + 4;
  if (v5 + 4 > v3)
  {
    v1 = v0;
  }

  LODWORD(STACK[0x4CC]) = v1;
  return (*(v4 + 8 * ((62872 * (v1 == (((6 * (v2 ^ 0x32C3) - 6180) | 0x200) ^ 0xE9D5C595))) ^ v2)))();
}

uint64_t sub_10010CD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v20 = (v17 + 307045733);
  *(v19 - 112) = v18;
  *(v19 - 120) = v20 + 193924789 * ((v19 - 128) ^ 0xB6BB3266) - 307048892;
  *(v19 - 128) = &a15;
  (*(v16 + 8 * (v17 + 35828)))(v19 - 128);
  *(v19 - 104) = v20 - 1603510583 * ((((v19 - 128) | 0x3C4EF11) - (v19 - 128) + ((v19 - 128) & 0xFC3B10E8)) ^ 0x941FDDBA) - 307012446;
  *(v19 - 120) = v18;
  *(v19 - 112) = v15;
  v21 = (*(v16 + 8 * (v20 ^ 0x124DAF4C)))(v19 - 128);
  return (*(v16 + 8 * ((14 * (((((~v20 + *(v19 - 128)) ^ (~v20 + *(v19 - 128))) - 1) & ~(~v20 + *(v19 - 128))) >= 0)) ^ (v17 - 10))))(v21);
}

void sub_10010CEB4(uint64_t a1)
{
  v1 = 155453101 * ((~a1 & 0xC7410086 | a1 & 0x38BEFF79) ^ 0x21671B49);
  if (*(a1 + 32))
  {
    v2 = (*a1 ^ v1) == 1888937622;
  }

  else
  {
    v2 = 1;
  }

  v6 = !v2 && (*(a1 + 40) ^ v1) != 1526209591 && *(a1 + 24) != 0 && *(a1 + 8) != 0;
  __asm { BRAA            X11, X17 }
}

uint64_t sub_10010D068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = 167 * (v12 ^ 0x4E3A);
  v16 = ((a12 ^ 0xC1A3A005) + 143450309) ^ a12 ^ ((a12 ^ 0x7F7F6FFB) - 1236259013) ^ ((v12 ^ 0xFEB26450) + (a12 ^ 0x379D6A72)) ^ (((v15 - 1081046560) ^ a12) + 1992186484);
  v18 = v16 != 919650110 && (((v15 - 1073943251) & 0x4002DF3D ^ 0x5D32) & v16) == ((3 * (v15 ^ 0xB5B0)) ^ 0x7028);
  return (*(v14 + 8 * ((v18 * v13) ^ v15)))(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_10010D218()
{
  v3 = (((v0 ^ 0x135A83B3) - 324699059) ^ ((v0 ^ 0x260EEE72) - 638512754) ^ ((v0 ^ 0x2828EBBD) - 673770429)) + 2141098265 + (((LODWORD(STACK[0x2FC]) ^ 0x7C97F950) - 2090334544) ^ ((LODWORD(STACK[0x2FC]) ^ 0x8820ED20) + 2011108064) ^ ((LODWORD(STACK[0x2FC]) ^ 0xE9CB8914 ^ (v1 - 1349215582) & 0x506B1B5D) + 372534772));
  LODWORD(STACK[0x2FC]) = v3 ^ ((v3 ^ 0xF5548ECC) + 1309603091) ^ ((v3 ^ 0xD7D0D64F) + 1821027730) ^ ((v3 ^ 0x3DDA2B1D) - 2038411068) ^ ((v3 ^ 0x5BFBF7BF) - 526283678) ^ 0x59D9025D;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_10010D534(uint64_t a1, uint64_t a2)
{
  *(v5 + 24) = v6;
  *(v4[3] + 32) = v4[4];
  *(v2 + 8) += v4[1] + a2;
  return (*(v7 + 8 * v3))();
}

uint64_t sub_10010F4A0@<X0>(char a1@<W8>)
{
  v4 = a1 & 4;
  if (*(*(v3 - 240) + 8))
  {
    v5 = v4 == ((v1 - 101719338) & 0x6FFF5FFF ^ 0x96101E6B) + (v1 ^ 0xA2CD);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  return (*(v2 + 8 * ((26561 * v6) ^ v1)))();
}

uint64_t sub_10010F5A8()
{
  v9 = *v7 ^ v2;
  v10 = ((v4 ^ v1) & 0x1451488A | (2 * (v1 & 0x1451488A & v4))) + 2 * (v4 & 0x4A849251 & v1) + (((v1 & 0x4A849251) - (v4 & 0x4A849251) + 352920738) & 0x4A849251) + 2 * ((v3 ^ 0xA12A310A) & v1 & v4) + (((v4 & 0xA12A2524) - ((v3 ^ 0xA12A310A) & v1) + 1112820296) & 0xA12A2524);
  v11 = *(v6 + 8 * (v3 ^ 0x1731));
  v12 = *(v11 - 527405895);
  v13 = *(v6 + 8 * (v3 ^ 0x53C)) + 4 * v12;
  v14 = *(v13 - 1940437438);
  v15 = (v10 ^ v1) + (v10 ^ v1) * v14;
  if (v10 == v1)
  {
    v16 = *(v13 - 1940437438);
  }

  else
  {
    v16 = 0;
  }

  *(v13 - 1940437438) = (v15 + v16) * v14;
  *(v11 - 527405895) = (v12 + 1) % 6u;
  LODWORD(STACK[0x2AC]) = v9;
  STACK[0x298] = (v9 - 149184613);
  v17 = (v0 ^ 0xFF6CFEF9FF7EDFD7) + 0x930106FA4658C4 + ((2 * v0) & 0xFED9FDF3FEFDBFAELL);
  v18 = v17 < 0xF9C5389B;
  v19 = v17 > v8 + 4190451867u;
  if (v8 > 0xFFFFFFFF063AC764 != v18)
  {
    v19 = v18;
  }

  v20 = *(v5 + 8 * (v3 ^ (27 * v19)));
  STACK[0x3B8] = v5;
  return v20();
}

uint64_t sub_10010F81C()
{
  v2.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v2.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(v1 + 8 * (v0 + 4656)))(v2);
}

uint64_t sub_10010F8E4()
{
  v3 = (((LODWORD(STACK[0x504]) ^ 0x63386D6D) - 1664642413) ^ ((LODWORD(STACK[0x504]) ^ 0x6D0E090C) - 1829636364) ^ ((LODWORD(STACK[0x504]) ^ 0xE7E3A370) + 404501317 + ((457 * (v0 ^ 0x9ED3) - 8818) | 0x2809))) + 34204179;
  v4 = (((v2 ^ 0x72A894CE) - 732491126) ^ ((v2 ^ 0xF22B37EB) + 1423225261) ^ ((v2 ^ 0x47D871FB) - 517474371)) - 1232089496;
  v5 = v3 < 0x18342302;
  v6 = v3 > v4;
  if (v4 < 0x18342302 != v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return (*(v1 + 8 * (((4 * v7) | (32 * v7)) ^ v0)))();
}

uint64_t sub_10010FA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  LODWORD(STACK[0x258]) = 0;
  v92 = (v88 - 18041) | 0x480D;
  v93 = v87 & 0xFFFFFFFA ^ 0xDD612B0FLL;
  *(v91 - 168) = v93;
  v94 = v87 & 0xFFFFFFF6 ^ 0xDD612B0FLL;
  *(v91 - 152) = v94;
  v95 = *(v89 + v93);
  LODWORD(STACK[0x270]) = v88 - 1217;
  v96 = *(v89 + v94) ^ 0x87;
  v97 = *(a85 + 4 * (((v88 + 63) ^ v95) ^ 0x3Cu));
  LODWORD(STACK[0x25C]) = v92;
  v98 = (v92 ^ 0xFFFF9219) & v87 ^ 0xDD612B0FLL;
  *(v91 - 256) = v98;
  v99 = *(v89 + v98);
  v100 = *(a85 + 4 * v96);
  v101 = v87 & 0xFFFFFFF8 ^ 0xDD612B0FLL;
  *(v91 - 176) = v101;
  v102 = v87;
  v103 = *(a86 + (v99 ^ 0xBA));
  v104 = v102 & 0xFFFFFFFC ^ 0xDD612B0FLL;
  *(v91 - 192) = v104;
  v105 = *(v89 + v101);
  v106 = *(v89 + v104);
  LODWORD(v105) = *(a86 + (v105 ^ 0xB2));
  v107 = v102 & 0xFFFFFFF5 ^ 0xDD612B0FLL;
  *(v91 - 216) = v107;
  v108 = v102;
  v109 = v102 & 0xFFFFFFF3 ^ 0xDD612B0FLL;
  *(v91 - 240) = v109;
  LODWORD(v106) = *(a86 + (v106 ^ 0xD6));
  v110 = *(v89 + v109);
  LODWORD(v93) = *(a87 + 4 * (*(v89 + v107) ^ 9));
  v111 = v108 & 0xFFFFFFF7 ^ 0xDD612B0FLL;
  *(v91 - 184) = v111;
  LODWORD(v107) = 2 * (v110 ^ 0x56) - 1582534730;
  LODWORD(v110) = *(a84 + 4 * (v110 ^ 0x3D));
  LODWORD(v93) = v100 ^ v93 ^ *(a84 + 4 * (*(v89 + v111) ^ 0xF8)) ^ (2 * (*(v89 + v111) ^ 0x93) - 1582534730);
  v112 = v108 & 0xFFFFFFF0 ^ 0xDD612B0FLL;
  STACK[0x288] = v112;
  v113 = *(v89 + v112);
  v114 = v108;
  v115 = v108 & 0xFFFFFFFD ^ 0xDD612B0FLL;
  *(v91 - 160) = v115;
  v116 = v113 ^ 0xB2;
  LODWORD(v113) = *(a87 + 4 * (*(v89 + v115) ^ 0x6FLL));
  v117 = v103 ^ v93;
  v118 = v107 ^ *(a86 + v116);
  v119 = v114 & 0xFFFFFFF2 ^ 0xDD612B0FLL;
  *(v91 - 208) = v119;
  v120 = v118 ^ *(a85 + 4 * (*(v89 + v119) ^ 0x37)) ^ v110;
  v121 = v114 & 0xFFFFFFF1 ^ 0xDD612B0FLL;
  *(v91 - 200) = v121;
  v122 = *(v89 + v121);
  v123 = v114 & 0xFFFFFFF9 ^ 0xDD612B0FLL;
  *(v91 - 232) = v123;
  LODWORD(v110) = v120 ^ *(a87 + 4 * (v122 ^ 0xF));
  v124 = *(a87 + 4 * (*(v89 + v123) ^ 0xB4));
  v125 = v114 & 0xFFFFFFFB ^ 0xDD612B0FLL;
  STACK[0x280] = v125;
  v126 = *(v89 + v125);
  LODWORD(v105) = v105 ^ v124 ^ *(a84 + 4 * (v126 ^ 0x4B)) ^ v97;
  *(v91 - 220) = v114;
  v127 = v114 & 0xFFFFFFFE ^ 0xDD612B0FLL;
  *(v91 - 248) = v127;
  LODWORD(v126) = v105 ^ (2 * (v126 ^ 0x20) - 1582534730);
  v128 = *(v89 + v127) - 2 * (*(v89 + v127) & 0x82);
  v129 = v114 ^ 0xDD612B0FLL;
  STACK[0x278] = v129;
  v130 = v113 ^ v106 ^ *(a84 + 4 * (*(v89 + v129) ^ 6)) ^ (2 * (*(v89 + v129) ^ 0x6D) - 1582534730) ^ *(a85 + 4 * ((v128 + 130) ^ 0x79));
  LODWORD(STACK[0x260]) = v130;
  v131 = a79 ^ v130;
  v132 = *(v90 + 8 * (v88 - 24428)) - 1318544139;
  v133 = *(v132 + 4 * (HIBYTE(v131) ^ 0x98)) ^ HIBYTE(v131) ^ 0x80593D68;
  v134 = *(v90 + 8 * (v88 ^ 0x6593)) - 2033949510;
  LODWORD(STACK[0x264]) = v126;
  v135 = a78 ^ v126;
  LODWORD(v126) = ((a78 ^ v126) ^ 0x4D24410B) - 1299712801 + *(v134 + 4 * ((a78 ^ v126) ^ 0x8Bu));
  v136 = *(v90 + 8 * (v88 ^ 0x64DE));
  LODWORD(STACK[0x268]) = v110;
  v137 = a77 ^ v110;
  v138 = v136 - 1591624351;
  LODWORD(v110) = v133 & 0xFFFFFBFF ^ *(v136 - 1591624351 + 4 * (((a77 ^ v110) >> 16) ^ 0x55u));
  v139 = STACK[0x228];
  LODWORD(STACK[0x26C]) = v117;
  v140 = v117 ^ v139;
  v141 = *(v90 + 8 * (v88 - 24196)) - 7355107;
  v142 = v110 ^ __ROR4__(*(v141 + 4 * (((v117 ^ v139) >> 8) ^ 6u)), 25) ^ v126;
  v143 = v133 & 0x400;
  *(v91 - 224) = *(v91 - 124) < 0x40B80D42u;
  if ((v143 & STACK[0x244]) != 0)
  {
    v143 = -v143;
  }

  v144 = v142 ^ (v143 + a50);
  v145 = a76 ^ *(v132 + 4 * (HIBYTE(v135) ^ 0x21)) ^ *(v138 + 4 * (BYTE2(v131) ^ 0xA2u)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v137) ^ 0x64u)), 25) ^ (((v117 ^ v139) ^ 0x4D244140) - 1299712801 + *(v134 + 4 * ((v117 ^ v139) ^ 0xC0u)));
  v146 = a74 ^ HIBYTE(v140) ^ 0xD054CC90 ^ *(v132 + 4 * (HIBYTE(v140) ^ 0x96));
  v147 = *(v138 + 4 * (BYTE2(v135) ^ 0x5Fu)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v131) ^ 0x38u)), 25) ^ ((v137 ^ 0x4D24411A) - 1299712801 + *(v134 + 4 * (v137 ^ 0x9Au))) ^ (v146 + a75 - 2 * (v146 & a75));
  v148 = HIBYTE(v137);
  v149 = *(v132 + 4 * (HIBYTE(v137) ^ 0x2A)) ^ LODWORD(STACK[0x234]) ^ *(v138 + 4 * (BYTE2(v140) ^ 0x13u)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v135) ^ 0x7Fu)), 25) ^ (((a79 ^ v130) ^ 0x4D244103) - 1299712801 + *(v134 + 4 * ((a79 ^ v130) ^ 0x83u)));
  v150 = HIBYTE(v144);
  v151 = a73 ^ *(v138 + 4 * (BYTE2(v149) ^ 0xA4u)) ^ *(v132 + 4 * (HIBYTE(v144) ^ 0x3D)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v147) ^ 0x5Au)), 25) ^ ((v145 ^ HIBYTE(v135) ^ 0x4D2441FA) - 1299712801 + *(v134 + 4 * (v145 ^ HIBYTE(v135) ^ 0x7A)));
  v152 = a83 ^ *(v132 + 4 * (HIBYTE(v145) ^ 0xBB)) ^ *(v138 + 4 * (BYTE2(v144) ^ 6u)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v149) ^ 0xF5u)), 25) ^ ((v147 ^ 0x4D24417D) - 1299712801 + *(v134 + 4 * (v147 ^ 0xFDu)));
  v153 = HIBYTE(v147);
  v154 = a72 ^ *(v132 + 4 * (HIBYTE(v147) ^ 0x70)) ^ *(v138 + 4 * (BYTE2(v145) ^ 0x58u)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v144) ^ 0x25u)), 25) ^ ((v149 ^ v148 ^ 0x4D244118) - 1299712801 + *(v134 + 4 * (v149 ^ v148 ^ 0x98)));
  v155 = a71 ^ *(v132 + 4 * (HIBYTE(v149) ^ 0x1F)) ^ *(v138 + 4 * (BYTE2(v147) ^ 0x77u)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v145) ^ 0x42u)), 25) ^ ((v144 ^ 0x4D244196) - 1299712801 + *(v134 + 4 * (v144 ^ 0x16u)));
  v156 = HIBYTE(v151);
  v157 = a70 ^ *(v138 + 4 * (BYTE2(v155) ^ 0xC9u)) ^ *(v132 + 4 * (HIBYTE(v151) ^ 0xF8)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v154) ^ 0xB4u)), 25) ^ ((v152 ^ HIBYTE(v145) ^ 0x4D244128) - 1299712801 + *(v134 + 4 * (v152 ^ HIBYTE(v145) ^ 0xA8)));
  v158 = a69 ^ *(v132 + 4 * (HIBYTE(v152) ^ 0x47)) ^ *(v138 + 4 * (BYTE2(v151) ^ 0xAAu)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v155) ^ 0x95u)), 25) ^ ((v154 ^ v153 ^ 0x4D24419A) - 1299712801 + *(v134 + 4 * (v154 ^ v153 ^ 0x1A)));
  v159 = HIBYTE(v154);
  v160 = a68 ^ *(v132 + 4 * (HIBYTE(v154) ^ 0x27)) ^ *(v138 + 4 * (BYTE2(v152) ^ 0x90u)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v151) ^ 0xFu)), 25) ^ ((v155 ^ HIBYTE(v149) ^ 0x4D244144) - 1299712801 + *(v134 + 4 * (v155 ^ HIBYTE(v149) ^ 0xC4)));
  v161 = a67 ^ HIBYTE(v155) ^ *(v132 + 4 * (HIBYTE(v155) ^ 0xB5)) ^ *(v138 + 4 * (BYTE2(v154) ^ 0x50u)) ^ 0x7DC34060;
  v162 = ((v151 ^ v150 ^ 0x4D2441B8) - 1299712801 + *(v134 + 4 * (v151 ^ v150 ^ 0x38))) ^ __ROR4__(*(v141 + 4 * (BYTE1(v152) ^ 0x1Du)), 25);
  v163 = HIBYTE(v157);
  v164 = v162 ^ ((v161 & 0x1BE8FB7D ^ 0x1AD8AED1) & (v161 & 0xE4170482 ^ 0xDFF9FBFD) | v161 & 0xE4070002);
  v165 = HIBYTE(v158);
  v166 = *(v132 + 4 * (HIBYTE(v157) ^ 0xE6)) ^ LODWORD(STACK[0x240]) ^ *(v138 + 4 * (BYTE2(v164) ^ 0xC4u)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v160) ^ 0x38u)), 25) ^ ((v158 ^ HIBYTE(v152) ^ 0x4D24416A) - 1299712801 + *(v134 + 4 * (v158 ^ HIBYTE(v152) ^ 0xEA)));
  v167 = a66 ^ *(v138 + 4 * (BYTE2(v157) ^ 0x2Du)) ^ *(v132 + 4 * (HIBYTE(v158) ^ 0x31)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v164) ^ 0x14u)), 25) ^ ((v160 ^ v159 ^ 0x4D24410D) - 1299712801 + *(v134 + 4 * (v160 ^ v159 ^ 0x8D)));
  v168 = v157 ^ v156;
  v169 = a64 ^ *(v132 + 4 * (HIBYTE(v160) ^ 0xD3)) ^ *(v138 + 4 * (BYTE2(v158) ^ 0x9Bu)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v157) ^ 0x99u)), 25) ^ ((v164 ^ 0x4D244142) - 1299712801 + *(v134 + 4 * (v164 ^ 0xC2u)));
  v170 = (v168 ^ 0x4D2441C3) - 1299712801 + *(v134 + 4 * (v168 ^ 0x43u));
  v164 >>= 24;
  v171 = *(v141 + 4 * (BYTE1(v158) ^ 0xBCu));
  v172 = HIBYTE(v166);
  v173 = a63 ^ *(v138 + 4 * (BYTE2(v160) ^ 0xFDu)) ^ *(v132 + 4 * (v164 ^ 0x1C)) ^ (v171 << 7) ^ (v171 >> 25) ^ v170;
  v174 = HIBYTE(v167);
  v175 = *(v132 + 4 * (HIBYTE(v166) ^ 0x5F)) ^ a82 ^ *(v138 + 4 * (BYTE2(v173) ^ 0x51u)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v169) ^ 0xDu)), 25) ^ ((v167 ^ v165 ^ 0x4D2441FA) - 1299712801 + *(v134 + 4 * (v167 ^ v165 ^ 0x7A)));
  v176 = HIBYTE(v169);
  v177 = *(v132 + 4 * (HIBYTE(v167) ^ 0x6B)) ^ LODWORD(STACK[0x23C]) ^ *(v138 + 4 * (BYTE2(v166) ^ 0x22u)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v173) ^ 0x2Eu)), 25) ^ ((v169 ^ HIBYTE(v160) ^ 0x4D24411E) - 1299712801 + *(v134 + 4 * (v169 ^ HIBYTE(v160) ^ 0x9E)));
  v178 = a62 ^ *(v132 + 4 * (HIBYTE(v169) ^ 0xA1)) ^ *(v138 + 4 * (BYTE2(v167) ^ 0xDAu)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v166) ^ 0x91u)), 25) ^ ((v173 ^ v164 ^ 0x4D2441A1) - 1299712801 + *(v134 + 4 * (v173 ^ v164 ^ 0x21)));
  v179 = HIBYTE(v175);
  v180 = a61 ^ *(v138 + 4 * (BYTE2(v169) ^ 0x7Bu)) ^ *(v132 + 4 * (HIBYTE(v173) ^ 0x2C)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v167) ^ 0xEBu)), 25) ^ ((v166 ^ v163 ^ 0x4D244154) - 1299712801 + *(v134 + 4 * (v166 ^ v163 ^ 0xD4)));
  v181 = a60 ^ *(v132 + 4 * (HIBYTE(v175) ^ 0x7F)) ^ *(v138 + 4 * (BYTE2(v180) ^ 0x6Fu)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v178) ^ 0x36u)), 25) ^ ((v177 ^ v174 ^ 0x4D2441DA) - 1299712801 + *(v134 + 4 * (v177 ^ v174 ^ 0x5A)));
  v182 = a59 ^ *(v132 + 4 * (HIBYTE(v177) ^ 0x48)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v180) ^ 7u)), 25) ^ *(v138 + 4 * (BYTE2(v175) ^ 0xC9u)) ^ ((v178 ^ v176 ^ 0x4D244188) - 1299712801 + *(v134 + 4 * (v178 ^ v176 ^ 8)));
  v183 = __ROR4__(*(v141 + 4 * (BYTE1(v175) ^ 0x71u)), 25);
  v184 = v175 ^ v172;
  v185 = a58 ^ *(v132 + 4 * (HIBYTE(v178) ^ 0x58)) ^ *(v138 + 4 * ~HIWORD(v177)) ^ v183 ^ ((v180 ^ HIBYTE(v173) ^ 0x4D2441FD) - 1299712801 + *(v134 + 4 * (v180 ^ HIBYTE(v173) ^ 0x7D)));
  v180 >>= 24;
  v186 = *(v132 + 4 * (v180 ^ 0x2F)) ^ LODWORD(STACK[0x220]) ^ *(v138 + 4 * (BYTE2(v178) ^ 0x79u)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v177) ^ 0xEAu)), 25) ^ ((v184 ^ 0x4D244123) - 1299712801 + *(v134 + 4 * (v184 ^ 0xA3u)));
  v187 = HIBYTE(v181);
  v188 = *(v132 + 4 * (HIBYTE(v181) ^ 0xB3)) ^ LODWORD(STACK[0x238]) ^ *(v138 + 4 * (BYTE2(v186) ^ 0xA9u)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v185) ^ 0xE8u)), 25) ^ ((v182 ^ HIBYTE(v177) ^ 0x4D24411B) - 1299712801 + *(v134 + 4 * (v182 ^ HIBYTE(v177) ^ 0x9B)));
  v189 = v186 ^ v180;
  v190 = a57 ^ *(v132 + 4 * (HIBYTE(v182) ^ 0x70)) ^ *(v138 + 4 * (BYTE2(v181) ^ 0xA8u)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v186) ^ 0x23u)), 25) ^ ((v185 ^ HIBYTE(v178) ^ 0x4D2441E3) - 1299712801 + *(v134 + 4 * (v185 ^ HIBYTE(v178) ^ 0x63)));
  v191 = HIBYTE(v185);
  v192 = __ROR4__(*(v141 + 4 * (BYTE1(v181) ^ 0x65u)), 25);
  v193 = v181 ^ v179;
  v194 = *(v132 + 4 * (HIBYTE(v185) ^ 0x5C)) ^ LODWORD(STACK[0x214]) ^ *(v138 + 4 * (BYTE2(v182) ^ 0x60u)) ^ v192 ^ ((v189 ^ 0x4D244147) - 1299712801 + *(v134 + 4 * (v189 ^ 0xC7u)));
  v186 >>= 24;
  v195 = v190 ^ HIBYTE(v182);
  v196 = a56 ^ *(v132 + 4 * (v186 ^ 0x1B)) ^ *(v138 + 4 * (BYTE2(v185) ^ 7u)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v182) ^ 0x6Fu)), 25) ^ ((v193 ^ 0x4D244197) - 1299712801 + *(v134 + 4 * (v193 ^ 0x17u)));
  v197 = HIBYTE(v188);
  v198 = *(v132 + 4 * (HIBYTE(v188) ^ 0x6A)) ^ LODWORD(STACK[0x218]) ^ *(v138 + 4 * (BYTE2(v196) ^ 0x58u)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v194) ^ 0x75u)), 25) ^ ((v195 ^ 0x4D244152) - 1299712801 + *(v134 + 4 * (v195 ^ 0xD2u)));
  v199 = (v194 ^ v191 ^ 0x4D244134) - 1299712801 + *(v134 + 4 * (v194 ^ v191 ^ 0xB4));
  v200 = HIBYTE(v190);
  v201 = a55 ^ *(v132 + 4 * (HIBYTE(v190) ^ 0xC2)) ^ *(v138 + 4 * (BYTE2(v188) ^ 0xF8u)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v196) ^ 0x1Cu)), 25) ^ v199;
  v202 = (v196 ^ v186 ^ 0x4D24410A) - 1299712801 + *(v134 + 4 * (v196 ^ v186 ^ 0x8A));
  v203 = HIBYTE(v194);
  v204 = *(v132 + 4 * (HIBYTE(v194) ^ 0x16)) ^ LODWORD(STACK[0x208]) ^ *(v138 + 4 * (BYTE2(v190) ^ 0x9Fu)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v188) ^ 0x5Au)), 25) ^ v202;
  v205 = a54 ^ HIBYTE(v196) ^ *(v138 + 4 * (BYTE2(v194) ^ 0xA6u)) ^ *(v132 + 4 * (HIBYTE(v196) ^ 0xBB)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v190) ^ 0x7Au)), 25) ^ ((v188 ^ v187 ^ 0x4D2441AF) - 1299712801 + *(v134 + 4 * (v188 ^ v187 ^ 0x2F))) ^ 0xD7AC33E;
  v206 = HIBYTE(v198);
  v207 = *(v132 + 4 * (HIBYTE(v198) ^ 0x30)) ^ LODWORD(STACK[0x204]) ^ *(v138 + 4 * (BYTE2(v205) ^ 0x3Du)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v204) ^ 0xE9u)), 25) ^ ((v201 ^ v200 ^ 0x4D24417E) - 1299712801 + *(v134 + 4 * (v201 ^ v200 ^ 0xFE)));
  v208 = a53 ^ *(v132 + 4 * (HIBYTE(v201) ^ 0x22)) ^ *(v138 + 4 * (BYTE2(v198) ^ 0xA9u)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v205) ^ 0x1Fu)), 25) ^ ((v204 ^ v203 ^ 0x4D244152) - 1299712801 + *(v134 + 4 * (v204 ^ v203 ^ 0xD2)));
  v209 = HIBYTE(v204);
  v210 = a52 ^ *(v132 + 4 * (HIBYTE(v204) ^ 0x6D)) ^ *(v138 + 4 * (BYTE2(v201) ^ 0x20u)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v198) ^ 0x93u)), 25);
  v211 = HIBYTE(v205);
  v212 = *(v132 + 4 * (HIBYTE(v205) ^ 0x39));
  v213 = v210 ^ ((v205 ^ 0x4D2441C8) - 1299712801 + *(v134 + 4 * (v205 ^ 0x48u)));
  v214 = v212 ^ LODWORD(STACK[0x200]) ^ *(v138 + 4 * (BYTE2(v204) ^ 0x3Du)) ^ __ROR4__(*(v141 + 4 * (BYTE1(v201) ^ 0xC9u)), 25) ^ ((v198 ^ v197 ^ 0x4D244111) - 1299712801 + *(v134 + 4 * (v198 ^ v197 ^ 0x91)));
  v215 = v208 ^ HIBYTE(v201);
  v216 = v213 ^ v209;
  v217 = (v214 ^ v211);
  v218 = (v214 ^ v211) & 0x3B ^ 0xDD9D39F8 ^ ((v217 ^ 0xE5 | 0x7E8A93B) - ((2 * (v217 ^ 0xE5)) & 0x180) - 762517593);
  v219 = v88;
  v220 = *(v90 + 8 * (v88 ^ 0x6BCA)) - 193714995;
  v221 = HIBYTE(v207);
  LODWORD(STACK[0x274]) = *(v220 + 4 * (HIBYTE(v207) ^ 0x25));
  v222 = HIBYTE(v208);
  v223 = *(v220 + 4 * (HIBYTE(v208) ^ 0x94));
  v224 = HIBYTE(v213);
  v225 = *(v220 + 4 * (HIBYTE(v213) ^ 0x34));
  v226 = HIBYTE(v214);
  v227 = *(v220 + 4 * (HIBYTE(v214) ^ 0x10));
  v228 = *(&off_1010A0B50 + (v88 ^ 0x6038)) - 1924650999;
  LODWORD(v220) = *&v228[4 * (BYTE2(v214) ^ 0x7B)];
  v229 = *&v228[4 * (BYTE2(v207) ^ 0x71)];
  v230 = *&v228[4 * (BYTE2(v208) ^ 0xCD)];
  LODWORD(v228) = *&v228[4 * (BYTE2(v213) ^ 0x4F)];
  v231 = *(&off_1010A0B50 + (v88 ^ 0x6E6C)) - 313336707;
  v232 = *&v231[4 * (BYTE1(v213) ^ 0x1C)];
  v233 = *&v231[4 * (BYTE1(v214) ^ 0xD8)];
  v234 = *&v231[4 * (BYTE1(v207) ^ 0x10)];
  v235 = *&v231[4 * (BYTE1(v208) ^ 3)];
  v236 = v218 + (v217 ^ 0xE5);
  v237 = *(&off_1010A0B50 + (v219 ^ 0x6B32)) - 1900805275;
  v238 = *&v237[4 * (v215 ^ 0xE5)];
  v239 = *&v237[4 * (v216 ^ 0xB1)];
  v240 = v207 ^ v206;
  v241 = *&v237[4 * v217];
  v242 = *&v237[4 * (v240 ^ 0xAE)];
  v243 = a80 ^ *(v91 - 140) ^ v225 ^ v236 ^ (v230 + 1131344892) ^ v234 ^ v241;
  v244 = *(&off_1010A0B50 + v219 - 23899) - 2096159858;
  v245 = v244[((v224 ^ 0xEF) - ((2 * (v224 ^ 0xEF)) & 0xFFFFFFF3) - 2073916679) ^ 0x84628A22 ^ (v243 ^ LODWORD(STACK[0x248]))];
  *(*(v91 - 120) + *(v91 - 256)) = ((v245 >> 1) | (v245 << 7)) ^ (v245 >> 5) & 0xFD ^ 0xF;
  v246 = v235 ^ v242;
  v247 = *(v91 - 120);
  v248 = a81 ^ *(v91 - 136) ^ ((v240 ^ 0x4B) + (v240 ^ 0x7E8A970)) ^ v227 ^ (v228 + 1131344892) ^ v246;
  v249 = v244[v226 ^ (a81 ^ *(v91 - 136) ^ ((v240 ^ 0x4B) + (v240 ^ 0x70)) ^ v227 ^ (v228 - 4) ^ v246 ^ LODWORD(STACK[0x24C])) ^ 0x70];
  *(v247 + STACK[0x288]) = ((v249 >> 1) | (v249 << 7)) ^ (v249 >> 5) & 0xFD ^ 0x10;
  v250 = *(&off_1010A0B50 + (v219 ^ 0x7E2B)) - 1950428510;
  v251 = v250[HIBYTE(v248) ^ 0x64] - 79;
  *(v247 + *(v91 - 240)) = v251 ^ (v251 >> 3) & 0x10 ^ 0xF3;
  v252 = *(v91 - 132) ^ LODWORD(STACK[0x21C]) ^ ((v216 ^ 0x54) + (v216 ^ 0x7E8A96F)) ^ v223 ^ (v229 + 1131344892) ^ v233 ^ v239;
  v253 = v250[HIBYTE(v252) ^ 0x1CLL] - 79;
  *(v247 + STACK[0x280]) = v253 ^ (v253 >> 3) & 0x10 ^ 0xFB;
  v254 = *(v91 - 128) ^ a51 ^ ((v215 ^ 0x7E8A93B) + v215) ^ LODWORD(STACK[0x274]) ^ (v220 + 1131344892) ^ v232 ^ v238;
  v255 = v250[HIBYTE(v254) ^ 0xCBLL] - 79;
  *(v247 + STACK[0x278]) = v255 ^ 0xD0 ^ (v255 >> 3) & 0x10;
  v256 = *(&off_1010A0B50 + v219 - 26710) - 460667715;
  *(v247 + *(v91 - 216)) = v256[BYTE1(v243) ^ 0x27] ^ (32 * (v256[BYTE1(v243) ^ 0x27] ^ 0xD5)) ^ (2 * (v256[BYTE1(v243) ^ 0x27] ^ 0xD5)) ^ 0xEA;
  v257 = v244[v221 ^ 0x43 ^ v254];
  *(v247 + *(v91 - 192)) = ((v257 >> 1) | (v257 << 7)) ^ (v244[v221 ^ 0x43 ^ v254] >> 5) & 0xFD ^ 0x81;
  *(v247 + *(v91 - 232)) = v256[BYTE1(v252) ^ 0x82] ^ (32 * (v256[BYTE1(v252) ^ 0x82] ^ 0x6E)) ^ (2 * (v256[BYTE1(v252) ^ 0x82] ^ 0x6E)) ^ 0xD9;
  v258 = v244[v222 ^ 0xB3 ^ v252];
  *(v247 + *(v91 - 176)) = ((v258 >> 1) | (v258 << 7)) ^ ((v258 >> 5) & 0xE5 | 0x18) ^ 0x82;
  v259 = *(&off_1010A0B50 + v219 - 27340) - 1040664939;
  *(v247 + *(v91 - 248)) = v259[BYTE2(v254) ^ 0xC0] ^ 0xD5;
  *(v247 + *(v91 - 208)) = v259[BYTE2(v248) ^ 0x97] ^ 0x6B;
  v260 = v250[HIBYTE(v243) ^ 0x85] - 79;
  *(v247 + *(v91 - 184)) = v260 ^ ((v260 >> 3) & 0x10 | 0xE2) ^ 0x8F;
  *(v247 + *(v91 - 168)) = v259[BYTE2(v252) ^ 9] ^ 0x6D;
  *(v247 + *(v91 - 200)) = v256[BYTE1(v248) ^ 0x47] ^ 0xE0 ^ (32 * v256[BYTE1(v248) ^ 0x47]) ^ (2 * (v256[BYTE1(v248) ^ 0x47] ^ 0xE0)) ^ 0x22;
  *(v247 + *(v91 - 152)) = v259[BYTE2(v243) ^ 0x1FLL];
  LOBYTE(v256) = v256[BYTE1(v254) ^ 5];
  v261 = (((*(v91 - 220) ^ 0xFA77CADD) + 92812579) ^ ((*(v91 - 220) ^ 0xB305389D) + 1291503459) ^ ((*(v91 - 220) ^ 0x9413D94F) + 1810638513)) + 294928094;
  v262 = (v261 ^ 0xE3A8CC50) & (2 * (v261 & 0xCBCCEC41)) ^ v261 & 0xCBCCEC41;
  v263 = ((2 * (v261 ^ 0xE2B9C4D2)) ^ 0x52EA5126) & (v261 ^ 0xE2B9C4D2) ^ (2 * (v261 ^ 0xE2B9C4D2)) & 0x29752892;
  LODWORD(v259) = v263 ^ 0x29152891;
  v264 = (v263 ^ 0x600000) & (4 * v262) ^ v262;
  v265 = ((4 * v259) ^ 0xA5D4A24C) & v259 ^ (4 * v259) & 0x29752890;
  v266 = v264 ^ 0x29752893 ^ (v265 ^ 0x21542000) & (16 * v264);
  v267 = (16 * (v265 ^ 0x8210893)) & 0x29752890 ^ 0x28252083 ^ ((16 * (v265 ^ 0x8210893)) ^ 0x97528930) & (v265 ^ 0x8210893);
  v268 = (v266 << 8) & 0x29752800 ^ v266 ^ ((v266 << 8) ^ 0x75289300) & v267;
  v269 = v261 ^ (2 * ((v268 << 16) & 0x29750000 ^ v268 ^ ((v268 << 16) ^ 0x28930000) & ((v267 << 8) & 0x29750000 ^ 0x8550000 ^ ((v267 << 8) ^ 0x75280000) & v267)));
  *(v247 + *(v91 - 160)) = v256 ^ (32 * (v256 ^ 0x12)) ^ (2 * (v256 ^ 0x12)) ^ 0x42;
  v270 = (((v269 ^ 0xD88DC6AA) + 1901571902) ^ ((v269 ^ 0x4990ED71) - 531987225) ^ ((v269 ^ 0x1A5996BC) - 1283195092)) + 504969297;
  LODWORD(v256) = *(v91 - 224) ^ (v270 < 0x40B80D42);
  v271 = v270 < *(v91 - 124);
  if (v256)
  {
    v271 = *(v91 - 224);
  }

  return (*(STACK[0x250] + 8 * ((63878 * v271) ^ v219)))();
}

uint64_t sub_1001117DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  *v51 = a48;
  *(v51 + 8) = a33;
  *(v51 + 16) = v49;
  return (*(v50 + 8 * v48))();
}

uint64_t sub_100111804(uint64_t a1)
{
  v5 = v1 > 0xFFFFFFFF92D395DDLL;
  v6 = ((v4 + 1) | (((v4 + 1) < 0x6F1B3CC5) << 32)) - 32428707;
  v7 = v5 ^ (v6 < 0x6D2C6A22);
  v8 = v2 > v6;
  if (!v7)
  {
    v5 = v8;
  }

  return (*(a1 + 8 * (((((v3 - 30864) | 0xA420) + ((v3 + 2046157152) & 0x8609FEFE) - 64774) * v5) ^ v3)))();
}

uint64_t sub_100111A30@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v7) = *(v6 + (v7 & 0xF)) ^ *(v3 + v7) ^ *((v7 & 0xF) + v4 + 2) ^ ((v7 & 0xF) * (((v2 - 56) | 0x2B) ^ 0x4A)) ^ *(v5 + (v7 & 0xF));
  v10 = v1 < v8;
  if (v10 == v7 + 1 > 0x18C3AB6D)
  {
    v10 = v7 - 415476589 < v1;
  }

  return (*(v9 + 8 * ((11046 * v10) ^ v2)))();
}

uint64_t sub_100111AD0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v8 = 139493411 * (&a3 ^ 0xC2DE145);
  a4 = 353497692 - (v8 + v5) - ((v7 ^ 0xC3513AF0) & (1725088934 - 2 * v5));
  a5 = (v7 + 1143842493) ^ v8;
  a3 = a1;
  v9 = (*(v6 + 8 * (v7 + 45347)))(&a3);
  return (*(v6 + 8 * v7))(v9);
}

void sub_100111B80(id a1)
{
  v1 = *(&off_1010A0B50 + ((91 * ((qword_1010BEAD8 + dword_1010BCE70) ^ 0x76)) ^ byte_100E9BFE0[byte_100D70240[(91 * ((qword_1010BEAD8 + dword_1010BCE70) ^ 0x76))] ^ 0xD0]) - 134);
  v2 = *(v1 - 1151895239);
  v3 = *(&off_1010A0B50 + (byte_101032440[byte_100F52120[(91 * ((qword_1010BEAD8 - v2) ^ 0x76))] ^ 0x30] ^ (91 * ((qword_1010BEAD8 - v2) ^ 0x76))) + 710);
  v4 = &v8[1] + *(v3 - 513219118) - v2;
  *(v1 - 1151895239) = 952459099 * v4 - 0x2237216A27478FF2;
  *(v3 - 513219118) = 952459099 * (v4 ^ 0xFE584BA7F0179476);
  v8[0] = 0;
  v7 = 4;
  LODWORD(v1) = *(v1 - 1151895239) ^ 0xF0179476;
  v5 = *(&off_1010A0B50 + ((91 * ((qword_1010BEAD8 + dword_1010BCE70) ^ 0x76)) ^ byte_100E9BFE0[byte_100D70240[(91 * ((qword_1010BEAD8 + dword_1010BCE70) ^ 0x76))] ^ 0xD0]) + 937) - 810145054;
  v6 = (*&v5[8 * ((91 * (v1 ^ *(v3 - 513219118))) ^ byte_101032440[byte_100F52120[(91 * (v1 ^ *(v3 - 513219118)))] ^ 0x30]) + 415560])(*(&off_1010A0B50 + (byte_100F52020[byte_100E9BEE0[(91 * (v1 ^ qword_1010BEAD8))] ^ 0x2B] ^ (91 * (v1 ^ qword_1010BEAD8))) + 4011) - 542528082, v8, &v7, 0, 0);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100111DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, int a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *v68 = a65;
  *(v68 + 8) = v65;
  *(v68 + 16) = v66;
  *(v68 + 20) = a57;
  return (*(v67 + 8 * (a4 - 9141)))(a1, a2, a3, 371891397);
}

uint64_t sub_100111E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  LODWORD(a27) = -766464050;
  HIDWORD(a17) = -1073152187;
  LODWORD(a35) = a2;
  LODWORD(a36) = a2 - 2073182923 + ((v39 + 1899670300) & 0x8EC571DB);
  return (*(v41 + 8 * v39))(a1, a2, a3, a4, 0x6D5CDA88E8809F77, a6, a7, a25, a9, a10, v40 + 316, a12, v40 + 2864, v40 + 2832, v40 + 824, v40 + 2800, a17, v40 + 2752, a19, a20, a21, a22, 0x5D0991CCF5775D95, v40 + 2952, a25, a26, a27, a28, a29, v40 + 2712, v40 + 2672, a32, v40 + 2592, a34, a35, a36, v40 + 2520, a38, a39);
}

void sub_100111F7C(uint64_t a1)
{
  v1 = *(a1 + 64) + 155453101 * (((a1 | 0x403BFE67) - a1 + (a1 & 0xBFC40198)) ^ 0xA61DE5A8);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1001120F0(uint64_t a1, int a2)
{
  v5 = v3 < 0xA70B5F36;
  if (v5 == v2 + 1 > (a2 - 459) - 2802560563 + ((a2 - 485) | 0x1Au))
  {
    v5 = v2 + 2802540343 < v3;
  }

  return (*(v4 + 8 * ((198 * v5) ^ a2)))();
}

uint64_t sub_1001121BC()
{
  v4 = *(&STACK[0x464] + (STACK[0x464] & 3 ^ 1));
  *v1 = v2;
  v5 = ((v4 ^ 0xDA3924F) - 228823631) ^ ((v4 ^ 0x7FBCA163) - 2143068515) ^ (((v0 - 14578) ^ 0xBE70) + (v4 ^ 0x721F336D) - 1914687241);
  v6 = *(STACK[0x6D8] + 8);
  v7 = v6 - 0x3CE25E0EC5200378;
  if (v6 - 0x3CE25E0EC5200378 < 0)
  {
    v7 = v6 - 0x3CE25E0EC5200375;
  }

  v8 = (((v5 + 65) % (((v7 >> 2) - ((2 * (v7 >> 2)) & 0x1C254158) - 1911381844) ^ 0x8E12A0AC)) + 43) & 0x1FC;
  v9 = (v6 ^ 0xB09FFE06) & (2 * (v6 & 0x3ADFFC88)) ^ v6 & 0x3ADFFC88;
  v10 = ((2 * (v6 ^ 0x94A6C606)) ^ 0x5CF2751C) & (v6 ^ 0x94A6C606) ^ (2 * (v6 ^ 0x94A6C606)) & 0xAE793A8E;
  v11 = v10 ^ 0xA2090A82;
  v12 = (v10 ^ 0xC703000) & (4 * v9) ^ v9;
  v13 = ((4 * v11) ^ 0xB9E4EA38) & v11 ^ (4 * v11) & 0xAE793A88;
  v14 = (v13 ^ 0xA8602A00) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0x6191086)) ^ 0xE793A8E0) & (v13 ^ 0x6191086) ^ (16 * (v13 ^ 0x6191086)) & 0xAE793A80;
  v16 = v6 ^ (2 * ((((v15 ^ 0x868120E) << 8) & 0x2E790000 ^ 0x28380000 ^ (((v15 ^ 0x868120E) << 8) ^ 0x793A0000) & (v15 ^ 0x868120E)) & (((v15 ^ 0xA6112800) & (v14 << 8) ^ v14) << 16) ^ (v15 ^ 0xA6112800) & (v14 << 8) ^ v14));
  return (*(v3 + 8 * ((13962 * ((((v16 ^ 0x2507F69C) + 734034489) ^ ((v16 ^ 0x9CEE6176) - 1842745901) ^ ((v16 ^ 0x83366B62) - 1913526329)) - (((v8 ^ 0x88F138F3) + 2146503276) ^ ((v8 ^ 0x800E2EB1) + 1997413418) ^ ((v8 ^ 0x8FF1642) - 56101)) - 1024998829 < 0x7FFFFFFF)) ^ v0)))();
}

uint64_t sub_1001124EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v78 = *STACK[0x2A0];
  v79 = ((2 * (LODWORD(STACK[0x340]) - 1497668670)) & 0x55FDEEFC) + ((LODWORD(STACK[0x340]) - 1497668670) ^ 0xAAFEF77E);
  v80 = STACK[0x200];
  v81 = (v78 + v79 + 1426131074);
  v82 = ((v81 ^ *(*(a72 - 1680276466) + (*(STACK[0x200] - 231415367) & 0x72D7ACF8))) & 0x7FFFFFFF) * v76;
  v83 = (v82 ^ HIWORD(v82)) * v76;
  *v81 = *(v77 + (v83 >> 24)) ^ *(v73 + (v83 >> 24)) ^ *((v83 >> 24) + v72 + 1) ^ v83 ^ (BYTE3(v83) * v75);
  v84 = (v78 + v79 + 1426131075);
  v85 = ((*(*(a72 - 1680276466) + (*(v80 - 231415367) & 0x72D7ACF8)) ^ v84) & 0x7FFFFFFF) * v76;
  v86 = (v85 ^ HIWORD(v85)) * v76;
  *v84 = *(v77 + (v86 >> 24)) ^ *(v73 + (v86 >> 24)) ^ *((v86 >> 24) + v72 + 1) ^ v86 ^ (BYTE3(v86) * v75);
  return (*(v74 + 8 * a20))();
}

uint64_t sub_1001126E8(int a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v25 = v18 < v19;
  v26 = a5 ^ 0x4C5A701F;
  v27 = (((a5 ^ 0x7F1FBA76) - 2132785782) ^ ((a5 ^ 0xD7F86C08) + 671585272) ^ (((5395 * (a4 ^ 0x782B) - 457354731) ^ a5) + 457333151)) - 1338956025;
  v28 = (*(a18 + 4 * v26) ^ 0x36DFEE05) + v22;
  v29 = v28 - ((2 * v28) & 0x6DBFDC0A);
  v30 = HIDWORD(v28);
  v31 = ((v27 ^ 0x78D026EB) - 453414924) ^ v27 ^ ((v27 ^ 0x21F50433) - 1109635796) ^ ((v27 ^ 0xE58D8BC0) + 2040840921) ^ ((v27 ^ 0xDF7E1FFF) + 1129797352);
  v32 = (((v31 ^ 0x185225A2) + v20) ^ ((v31 ^ 0xE682A1CB) + v21) ^ ((v31 ^ 0x9D06328E) + v23)) + v24;
  v33 = v25 ^ (v32 < v19);
  v34 = v32 < v18;
  if (!v33)
  {
    v25 = v34;
  }

  v35 = !v25;
  *(a18 + 4 * v26) = v29 + 920645125;
  if (v30)
  {
    v36 = v35;
  }

  else
  {
    v36 = 1;
  }

  return (*(a16 + 8 * ((v36 * a1) ^ a4)))();
}

uint64_t sub_100112938(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = STACK[0x354];
  v10 = ((a2 - 1385129034 + ((LODWORD(STACK[0x354]) - 20461) | 0x4048)) ^ (v8 | 0x3D1F9C51)) + v7;
  LODWORD(STACK[0x424]) = v10;
  v11 = a6 - (v10 & 0x9D4D1A09 | v8 & 0x42BF1A7F);
  LODWORD(STACK[0x420]) = v11;
  v12 = a2 ^ 0xE5F995DF ^ (v11 - 552685455);
  LODWORD(STACK[0x41C]) = v12;
  LODWORD(STACK[0x418]) = v8 - (v10 | 0x8DFDE1D9) - v12 + 922685645;
  LODWORD(STACK[0x3FC]) = LODWORD(STACK[0x350]) ^ 0x80010A89;
  LODWORD(STACK[0x3F4]) = LODWORD(STACK[0x348]) ^ 0x82D96373;
  LODWORD(STACK[0x3F8]) = LODWORD(STACK[0x344]) ^ 0x880C99CB;
  LODWORD(STACK[0x3E4]) = LODWORD(STACK[0x340]) ^ 0xDC9F78D0;
  return (*(v6 + 8 * v9))();
}

uint64_t sub_100112A40(double a1, __n128 a2, __n128 a3)
{
  a2.n128_u16[0] = -18505;
  a2.n128_u8[2] = -73;
  a2.n128_u8[3] = -73;
  a2.n128_u8[4] = -73;
  a2.n128_u8[5] = -73;
  a2.n128_u8[6] = -73;
  a2.n128_u8[7] = -73;
  a3.n128_u16[0] = 24415;
  a3.n128_u8[2] = 95;
  a3.n128_u8[3] = 95;
  a3.n128_u8[4] = 95;
  a3.n128_u8[5] = 95;
  a3.n128_u8[6] = 95;
  a3.n128_u8[7] = 95;
  return (*(v5 + 8 * (v4 - 10024)))(v3 & 7, xmmword_100F523B0, a2, a3);
}

uint64_t sub_100112B34()
{
  v2 = LODWORD(STACK[0x30C]);
  STACK[0x228] = v2;
  return (*(v1 + 8 * ((22 * (v2 == ((v0 - 39557) ^ 0x4AEF) + ((v0 - 39557) | 0x5081) - 39792)) ^ v0)))();
}

void sub_100112B80(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *a1 ^ (906386353 * (((a1 ^ 0x34662E88 | 0x27CBB804) - ((a1 ^ 0x34662E88) & 0x27CBB804)) ^ 0x22AC5BA8));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_100112C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, int a15, int a16)
{
  v18 = v16 + 1238896366 + (a16 ^ 0x76D2) + 28654;
  v19 = v18 < 0x49D89357;
  v20 = v18 > a13;
  if (a13 < 0x49D89357 != v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  return (*(v17 + 8 * ((32695 * v21) ^ a12)))();
}

uint64_t sub_100112D0C(char a1, int a2, __n128 a3)
{
  v5.n128_u64[0] = (v3 + 13) & 0xF;
  v5.n128_u64[1] = (v3 + 12) & 0xF;
  v6.n128_u64[0] = (v3 + 11) & 0xF;
  v6.n128_u64[1] = (v3 + 10) & 0xF;
  v7.n128_u64[0] = (v3 + 9) & 0xF;
  v7.n128_u64[1] = a1 & 0xF ^ 4;
  v10.val[0].i64[0] = (v3 + 7) & 0xF;
  v10.val[0].i64[1] = (v3 + 6) & 0xF;
  v10.val[1].i64[0] = (v3 + 5) & 0xF;
  v10.val[1].i64[1] = (v3 + 4) & 0xF;
  v10.val[2].i64[0] = (v3 + 3) & 0xF;
  v10.val[2].i64[1] = (v3 + 2) & 0xF;
  v10.val[3].i64[0] = (v3 + 1) & 0xF;
  v10.val[3].i64[1] = v3 & 0xF;
  v8.n128_u64[0] = 0x3131313131313131;
  v8.n128_u64[1] = 0x3131313131313131;
  return (*(v4 + 8 * (a2 + 29028)))((a2 + 21744) | 0x80Eu, (v3 + 14) & 0xF, v3 - 16, (a1 & 0x10) - 16, -23835, 241, a3, v5, v6, v7, xmmword_100BC76B0, vqtbl4q_s8(v10, xmmword_100BC76B0), v8);
}

uint64_t sub_10011309C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22)
{
  v26 = v24 + (v23 ^ 0x1AF6F524);
  v27 = v22 + (((a22 ^ 0x29D8923B) - 702059067) ^ ((a22 ^ 0xBC01515A) + 1140764326) ^ (((v23 + 2081156446) ^ a22) - 2081162352));
  v28 = v27 < 0x743B7E80;
  v29 = v26 < v27;
  if (v26 < 0x743B7E80 != v28)
  {
    v29 = v28;
  }

  return (*(v25 + 8 * ((50 * v29) ^ v23)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1001131E8@<X0>(_BYTE *a1@<X8>)
{
  v1[140] = *a1 - ((2 * *a1) & 0x28) - 108;
  v1[160] = a1[20];
  v1[159] = a1[19];
  v1[158] = a1[18];
  v1[157] = a1[17];
  v1[156] = a1[16];
  v1[155] = a1[15];
  v1[154] = a1[14];
  v1[153] = a1[13];
  v1[152] = a1[12];
  v1[151] = a1[11];
  v1[150] = a1[10];
  v1[149] = a1[9];
  v1[148] = a1[8];
  v1[147] = a1[7];
  v1[146] = a1[6];
  v1[145] = a1[5];
  v1[144] = a1[4];
  v1[143] = a1[3];
  v1[142] = a1[2];
  v1[141] = a1[1];
  v1[180] = a1[40];
  v1[179] = a1[39];
  v1[178] = a1[38];
  v1[177] = a1[37];
  v1[176] = a1[36];
  v1[175] = a1[35];
  v1[174] = a1[34];
  v1[173] = a1[33];
  v1[172] = a1[32];
  v1[171] = a1[31];
  v1[170] = a1[30];
  v1[169] = a1[29];
  v1[168] = a1[28];
  v1[167] = a1[27];
  v1[166] = a1[26];
  v1[165] = a1[25];
  v1[164] = a1[24];
  v1[163] = a1[23];
  v1[162] = a1[22];
  v1[161] = a1[21];
  return (*(v2 + 8 * v3))();
}

uint64_t sub_10011339C()
{
  STACK[0x3A0] = 0;
  LODWORD(STACK[0x398]) = 0;
  v3 = *(v1 + 8 * ((39371 * (v2 == ((v0 + 1808415357) & 0x9435BFFD) + ((v0 - 1413) ^ 0xFFFFFFC4))) ^ v0));
  LODWORD(STACK[0x3B0]) = 2058855527;
  return v3();
}

uint64_t sub_1001133FC@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + 16);
  *v4 = 0;
  v6 = (*(v3 + 8 * (v2 + 24911)))(*(*(a1 + 8 * (v2 ^ 0x7932)) - 1305957022), v5, 1536, *(*(a1 + 8 * (v2 - 23210)) - 172736470)) == 0;
  return (*(v3 + 8 * ((11 * (((v2 - 1) ^ v6) & 1)) ^ v2)))();
}

uint64_t sub_100113A20()
{
  *(v0 + 616) = 356632020;
  *(v0 + 624) = STACK[0x9A0];
  return (*(v2 + 8 * (v1 - 13482)))(4089036024);
}

uint64_t sub_100113EE8@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v17 = (((((a1 >> 30) | 0xDEC00B88) ^ a1 ^ v13) + a3) ^ ((((a1 >> 30) | 0xDEC00B88) ^ a1 ^ a4) + a5) ^ (v14 + (((a1 >> 30) | 0xDEC00B88) ^ a1 ^ a6) + a7)) * a8;
  *(v16 + 4 * a9) = a9 + v11 + v17;
  return (*(v15 + 8 * (v12 + (a9 < 0x26F) * a2)))(v9 + v10 + v17);
}

uint64_t sub_100113F70()
{
  v2 = STACK[0x730];
  STACK[0x7E0] = *(v1 + 8 * (v0 - 23650));
  return (*(v1 + 8 * ((v0 - 23650) ^ 0x3D5E ^ (v0 - 150663484) & 0x8FAB7BA)))(v2);
}

uint64_t sub_1001140A8(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v45.n128_u64[0] = (v42 + 13) & 0xF;
  v45.n128_u64[1] = (v42 + 12) & 0xF;
  v46.n128_u64[0] = (v42 + 11) & 0xF;
  v46.n128_u64[1] = (v42 + 10) & 0xF;
  v47.n128_u64[0] = (v42 + 9) & 0xF;
  v47.n128_u64[1] = v43 & 0xF;
  v51.val[0].i64[0] = (v42 + 7) & 0xF;
  v51.val[0].i64[1] = (v42 + 6) & 0xF;
  v51.val[1].i64[0] = (v42 + 5) & 0xF;
  v51.val[1].i64[1] = (v42 + 4) & 0xF;
  v51.val[2].i64[0] = (v42 + 3) & 0xF;
  v51.val[2].i64[1] = (v42 + 2) & 0xF;
  v51.val[3].i64[0] = (v42 + 1) & 0xF;
  v51.val[3].i64[1] = v42 & 0xF;
  v48.n128_u64[0] = 0xB3B3B3B3B3B3B3B3;
  v48.n128_u64[1] = 0xB3B3B3B3B3B3B3B3;
  v49.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v49.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(a42 + 8 * v44))((v42 + 14) & 0xF, (v42 & 0x10) - 16, 21200, a1, v45, v46, v47, xmmword_100BC76B0, vqtbl4q_s8(v51, xmmword_100BC76B0), v48, v49);
}

uint64_t sub_100114194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v58 = *(v57 + 8 * ((((v56 - 2312) | 0x484) ^ 0x34D) + v56));
  *(a3 + 112) = *(v57 + 8 * v56);
  return v58(a1, a2, a3, a4, a5, a4, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_1001142B4(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = (a8 + (6 * (v9 + a1) + 1243487422));
  v14 = (a8 + (((v10 + 11578) | 0x288u) - 29602) * (a3 + v9) - 422600964);
  v15 = *v14 ^ *v13;
  *v14 = v15 ^ v11;
  v14[1] ^= v13[1] ^ v11;
  v14[2] ^= v13[2] ^ v11;
  v14[3] ^= v13[3] ^ v11;
  v14[4] ^= v13[4] ^ v11;
  v14[5] ^= v13[5] ^ v11;
  v16 = *v13 ^ v15;
  *v13 = v16;
  v13[1] ^= v11 ^ v14[1];
  v13[2] ^= v11 ^ v14[2];
  v13[3] ^= v11 ^ v14[3];
  v13[4] ^= v11 ^ v14[4];
  v13[5] ^= v11 ^ v14[5];
  *v14 ^= v16 ^ v11;
  v14[1] ^= v13[1] ^ v11;
  v14[2] ^= v13[2] ^ v11;
  v14[3] ^= v13[3] ^ v11;
  v14[4] ^= v13[4] ^ v11;
  v14[5] ^= v13[5] ^ v11;
  return (*(v12 + 8 * (v10 ^ (3878 * (v8 == 0)))))();
}

uint64_t sub_100114F2C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, unsigned int a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40)
{
  v44 = v41 + v43 - 713728648;
  v45 = ((a7 ^ 0xA19E44BA) + 1911684569) ^ a7 ^ ((a7 ^ 0x81D6D993) + 1371103474) ^ ((a7 ^ 0xC02524C3) + 273325474) ^ ((a7 ^ 0xCFFDFF77) + 529679894) ^ v44 ^ ((v44 ^ 0xE75E2F7F) + 1015304666) ^ ((v44 ^ 0xFA13ABA0) + 566875399) ^ ((v44 ^ 0xFFF7FFFF) + 606962010) ^ (((v42 + 794998968) & 0xD09D7BEC) + 491064088 + (v44 ^ (v42 + 899253749) ^ 0xF3063161));
  v46 = ((v45 ^ 0x3F0B8C97) - 357994908) ^ ((v45 ^ 0x13DCF7E7) - 964815596) ^ ((v45 ^ 0x2762BCB4) - 222273983);
  return (*(a37 + 8 * (((((a40 - *(v40 + 4 * (7 % a27)) + 1805510920 * v46 + (v46 + 568908495) * (*(v40 + 4 * (0xE % a27)) + 1691471963) - 1268761224) & 7) == 1) * a2) ^ v42)))();
}

uint64_t sub_1001151C0@<X0>(int a1@<W5>, int a2@<W6>, int a3@<W7>, uint64_t a4@<X8>)
{
  STACK[0x690] = *(v7 + 8 * v5);
  if (a4)
  {
    v9 = v4 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  return (*(v7 + 8 * (((a3 & ~(((v6 ^ a1) * a2) ^ v10)) * ((v6 - 1763) ^ v8)) ^ v6)))();
}

uint64_t sub_100115208@<X0>(int a1@<W0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v12 - 116) = a1;
  LODWORD(v171) = 0;
  *(v12 - 144) = a1 - 161195991;
  v13 = *(a2 + (a1 - 161195991));
  *(v12 - 140) = a1 - 161195978;
  v14 = *(a7 + (v13 ^ 0xDE));
  v15 = *(a2 + (a1 - 161195978));
  HIDWORD(v171) = (v11 - 1006019663) & 0x3BF63F7B;
  *(v12 - 160) = a1 - 161195989;
  v16 = (*(a10 + (v15 ^ 0xCA)) >> 3) | (32 * *(a10 + (v15 ^ 0xCA)));
  v17 = *(a8 + (*(a2 + (a1 - 161195989)) ^ 0xCCLL));
  v18 = 2 * (((((a1 ^ 0xE) + 7) ^ ((a1 ^ 3) + 12)) ^ ((a1 ^ 0x55) + 14)) & 0xF);
  v19 = (*(v12 - 116) ^ 0xF47255A8) & (2 * (a1 & 0xF6645829)) ^ a1 & 0xF6645829;
  v20 = ((2 * (a1 ^ 0x943255E8)) ^ 0xC4AC1B82) & (a1 ^ 0x943255E8) ^ (2 * (a1 ^ 0x943255E8)) & 0x62560DC0;
  v21 = v20 ^ 0x22520441;
  v22 = (v20 ^ 0x40000180) & (4 * v19) ^ v19;
  v23 = ((4 * v21) ^ 0x89583704) & v21 ^ (4 * v21) & 0x62560DC0;
  v24 = (v23 ^ 0x500500) & (16 * v22) ^ v22;
  v25 = ((16 * (v23 ^ 0x620608C1)) ^ 0x2560DC10) & (v23 ^ 0x620608C1) ^ (16 * (v23 ^ 0x620608C1)) & 0x62560DC0;
  v26 = v24 ^ 0x62560DC1 ^ (v25 ^ 0x20400C00) & (v24 << 8);
  v27 = *(v12 - 116) ^ (2 * ((v26 << 16) & 0x62560000 ^ v26 ^ ((v26 << 16) ^ 0xDC10000) & (((v25 ^ 0x421601C1) << 8) & 0x62560000 ^ 0x20520000 ^ (((v25 ^ 0x421601C1) << 8) ^ 0x560D0000) & (v25 ^ 0x421601C1))));
  v28 = ((v17 << 8) | 0xFF060002) & (((v14 ^ 0xA4) << (BYTE4(v171) - 91)) ^ 0xE7060202) | (v17 << 8) & 0xFFFFFDFF;
  v29 = *(a9 + (*(a2 + (((v18 ^ 0x31DD611E) - 394704082) ^ (v18 + 440063156) ^ ((v18 ^ 0xD9B63C7E) + 1185358)) - 1841481829 + (((v27 ^ 0x30EBC1DB) - 1765991344) ^ ((v27 ^ 0x18025DE0) - 1101758347) ^ ((v27 ^ 0x1AA1DF9F) - 1124662772))) ^ 0x54));
  v30 = *(v12 - 116) - 161195982;
  *(v12 - 164) = v30;
  v31 = *(a10 + (*(a2 + v30) ^ 0xE3));
  v32 = *(v12 - 116) - 161195988;
  *(v12 - 148) = v32;
  HIDWORD(v34) = v31 ^ 2;
  LODWORD(v34) = (v31 ^ 0x90) << 24;
  v33 = v34 >> 27;
  v35 = *(a2 + v32);
  v36 = *(v12 - 116) - 161195977;
  *(v12 - 156) = v36;
  v37 = *(a9 + (v35 ^ 0x90));
  LOBYTE(v21) = v37 & 0xE6 ^ 0xB9;
  v38 = v37 & 0x3E ^ 0x45;
  v39 = (((4 * ((v37 ^ 0x14) & (2 * ((v37 ^ 0x34) & (2 * ((v37 ^ 0x34) & (2 * ((v37 ^ 0x34) & (2 * v21) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ (2 * v37)) & 0x7C ^ 0x4C) + (v37 ^ (2 * ((v37 ^ 0x34) & (2 * ((v37 ^ 0x34) & (2 * ((v37 ^ 0x34) & (2 * ((v37 ^ 0x34) & (2 * ((v37 ^ 0x34) & (2 * (v38 ^ v37 & 0xA)) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38)));
  v40 = *(a2 + v36) ^ 0x33;
  v41 = *(v12 - 116) - 161195980;
  *(v12 - 152) = v41;
  v42 = ((((*(a8 + v40) << 8) ^ 0xFB13F4) & ((v29 + 114) ^ 0xFFFBFFFF) | (v29 + 114) & 0xB) ^ 0x5BDA66) & ((v16 << 16) ^ 0x4CFFFF) ^ (v16 << 16) & 0xFFDFFFFF;
  v43 = *(a2 + v41) ^ 0xFB;
  v184 = *(v12 - 116) - 161195990;
  LOBYTE(v43) = *(a9 + v43 - ((2 * v43) & 0xFFFFFF0F) + 135) + 114;
  LODWORD(v40) = *(a10 + (*(a2 + v184) ^ 0xD9));
  LODWORD(v35) = (~v43 | 0xFFFFFF03) & ((v33 << 16) ^ 0x7EFB8334) | v43 & 0xCB;
  HIDWORD(v34) = v40 ^ 2;
  LODWORD(v34) = (v40 ^ 0x90) << 24;
  v44 = v34 >> 27;
  v180 = *(v12 - 116) - 161195983;
  v45 = *(a7 + (*(a2 + v180) ^ 0x2ELL));
  v182 = *(v12 - 116) - 161195986;
  LODWORD(v40) = *(a10 + (*(a2 + v182) ^ 0xABLL));
  v183 = *(v12 - 116) - 161195979;
  v46 = (v40 >> 3) & 0x55555555;
  v179 = *(v12 - 116) - 161195981;
  LODWORD(v16) = ((v16 >> 7) & 1 | (v42 << 9)) ^ (((*(a7 + (*(a2 + v183) ^ 0x6DLL)) << 24) ^ 0x6C000000u) >> (((v40 >> 3) ^ 2) & 3) >> (((v40 >> 3) ^ 0x10) & 0x14) >> ((v40 >> 3) & 2) >> (v46 ^ 5)) ^ 0x3C0FAE10;
  v178 = *(v12 - 116) - 161195985;
  v47 = ((((*(a8 + *(a2 + v179)) << 8) ^ 0xACE9B13D) & (v35 ^ 0x83437C4B) | v35 & 0x521600C2) ^ 0xD08E3DAD) & ((v45 << 24) ^ 0x5AFFFFFF) ^ (v45 << 24) & 0xD1000000;
  v48 = *(a2 + v178) ^ 0xDD;
  v49 = *(a8 + v48 - 2 * (v48 & 0xF5u) + 245);
  LODWORD(v35) = ((2 * v49) & 0x50 ^ 0xFFFFFFEF) + (((v49 ^ 0xFFFFFFD5) + 43) ^ ((v49 ^ 0xFFFFFFB0) + 80) ^ ((v49 ^ 0xFFFFFFEF) + 17));
  v50 = *(&off_1010A0B50 + (v11 ^ 0xA1B2)) - 456472010;
  v51 = *&v50[4 * (v14 ^ 0xD3)];
  v52 = *(&off_1010A0B50 + v11 - 39751) - 765320807;
  v181 = *(v12 - 116) - 161195984;
  v175 = v11;
  v53 = *(&off_1010A0B50 + v11 - 38956) - 391333494;
  HIDWORD(v34) = v16;
  LODWORD(v34) = v16;
  v54 = v34 >> 9;
  v55 = *(&off_1010A0B50 + v11 - 38590) - 340713878;
  v56 = (134725139 * v51 - 1732878625) ^ *&v52[4 * (BYTE1(v47) ^ 0x5F)] ^ *&v53[4 * ((*(a9 + (*(a2 + v181) ^ 0xB5)) + 114) ^ 0x46)] ^ *&v55[4 * (BYTE2(v54) ^ 0x1D)];
  v177 = *(v12 - 116) - 161195987;
  v174 = *(a7 + (*(a2 + v177) ^ 0xE3));
  v57 = (((((v54 ^ 0xAF85) >> 8) - (((v54 ^ 0xAF85) >> 8) ^ 0x4646576D)) ^ 0xFFFFFFFE) + ((v54 ^ 0xAF85) >> 8)) ^ *&v55[4 * (v44 ^ 0x23)] ^ (134725139 * *&v50[4 * (v174 ^ 5)] - 1732878625) ^ *&v53[4 * (v43 ^ 0x3B)] ^ *&v52[4 * (((v54 ^ 0xAF85) >> 8) ^ 0x63)];
  LODWORD(v173) = v28 ^ 0x36ECCE28;
  LODWORD(v13) = ((v28 ^ 0xCE28) >> 8);
  v58 = (134725139 * *&v50[4 * (v45 ^ 0xC6)] - 1732878625) ^ *&v55[4 * ((((32 * v40) ^ 0x2A) & ((v40 >> 3) ^ 0xE8) | v46) ^ 0x7D)] ^ *&v52[4 * (v13 ^ 0xAC)] ^ *&v53[4 * ((v34 >> 9) ^ 0xCD)];
  v59 = v35 + 51;
  LODWORD(v35) = (v35 + 51) ^ 0xB5;
  HIDWORD(v173) = v59;
  HIDWORD(v172) = v39 - 128;
  v60 = (134725139 * *&v50[4 * ((v54 ^ 0x8765AF85) >> 24)] - 1732878625) ^ *&v55[4 * (v33 ^ 0xD6)] ^ *&v52[4 * ((v35 - (v59 ^ 0xD6)) ^ 0xFFFFFFFE) + 4 * v35] ^ *&v53[4 * ((v39 + 0x80) ^ 0xF4)];
  v61 = v35 ^ 0x249448B4 ^ v60;
  v62 = v13 ^ 0x31552471 ^ v58;
  v63 = (134725139 * *&v50[4 * (HIBYTE(v56) ^ 0x4C)] - 1732878625) ^ *&v55[4 * BYTE2(v61)] ^ *&v53[4 * (v57 ^ 0x7E)] ^ __ROR4__((v62 >> 2) & 0x3FC0 ^ __ROR4__(*&v52[4 * (BYTE1(v62) ^ 0x63)], 26) ^ 0xBF5F615D, 6);
  v64 = *&v55[4 * (BYTE2(v56) ^ 0xB3)];
  v65 = 134725139 * *&v50[4 * (HIBYTE(v57) ^ 0xD4)] - 1732878625;
  v176 = *(v12 - 120) < 0xE7ECF0EE;
  v66 = (-16877 * *&v50[4 * (HIBYTE(v57) ^ 0xD4)] + 24287) & 0x800;
  if ((v66 & (v64 ^ 0xE5DD5C39)) != 0)
  {
    v66 = -v66;
  }

  v67 = v66 + (v64 ^ 0xE5DD5C39);
  v68 = (v65 & 2 & v64) == 0;
  v69 = v67 + (v65 & 2);
  v70 = v67 - (v65 & 2);
  v71 = v65 & 0xFFFFF7FD ^ *&v52[4 * (BYTE1(v61) ^ 0x63)] ^ *&v53[4 * v62];
  LODWORD(v172) = v47;
  v72 = *&v55[4 * BYTE2(v62)] ^ BYTE1(v57) ^ *&v52[4 * (BYTE1(v57) ^ 0xD0)] ^ *&v53[4 * ((v56 ^ BYTE1(v47)) ^ 0x24)] ^ (134725139 * *&v50[4 * (HIBYTE(v60) ^ 0xFB)] - 1732878625);
  v73 = BYTE1(v56) ^ *&v52[4 * (BYTE1(v56) ^ 0x81)] ^ *&v55[4 * (BYTE2(v57) ^ 0xB2)] ^ (134725139 * *&v50[4 * (HIBYTE(v58) ^ 0xEE)] - 1732878625) ^ *&v53[4 * v61] ^ 0x9DAA4A5C;
  if (v68)
  {
    v74 = v69;
  }

  else
  {
    v74 = v70;
  }

  v75 = v72 ^ 0xF4CAE6E2;
  v76 = v71 ^ v74;
  v77 = (134725139 * *&v50[4 * (HIBYTE(v63) ^ 0x8F)] - 1732878625) ^ *&v55[4 * ((v72 ^ 0xF4CAE6E2) >> 16)] ^ *&v52[4 * (BYTE1(v73) ^ 0x63)] ^ *&v53[4 * ((v76 ^ BYTE1(v61)) ^ 0x21)];
  v78 = ((v72 ^ 0xE6E2) >> 8);
  v79 = v63 ^ 0x6F16;
  v80 = *&v52[4 * (v78 ^ 0x63)] ^ *&v55[4 * (BYTE2(v63) ^ 0xAC)] ^ *&v53[4 * v73] ^ (134725139 * *&v50[4 * (HIBYTE(v76) ^ 0xDA)] - 1732878625);
  v81 = HIBYTE(v79) ^ 0xF4B7B428 ^ *&v52[4 * (HIBYTE(v79) ^ 0x63)];
  v82 = *&v55[4 * (BYTE2(v76) ^ 0x91)] ^ (134725139 * *&v50[4 * HIBYTE(v73)] - 1732878625) ^ 0xE5DD5C39;
  v83 = *&v53[4 * (v72 ^ 0xAA)] ^ 0x5287A4A4 ^ (v82 + v81 - 2 * (v81 & v82));
  v84 = BYTE1(v76) ^ *&v55[4 * BYTE2(v73)] ^ *&v52[4 * (BYTE1(v76) ^ 0xB3)] ^ (134725139 * *&v50[4 * HIBYTE(v75)] - 1732878625) ^ *&v53[4 * v79] ^ 0x886B2664;
  v85 = v78 ^ 0x276E1498 ^ v80;
  v86 = BYTE1(v83) ^ *&v55[4 * BYTE2(v84)] ^ *&v52[4 * (BYTE1(v83) ^ 0x63)] ^ (134725139 * *&v50[4 * (HIBYTE(v77) ^ 0x7E)] - 1732878625) ^ *&v53[4 * (v78 ^ 0x98 ^ v80)];
  v87 = *&v52[4 * (BYTE1(v84) ^ 0x63)] ^ *&v55[4 * (BYTE2(v77) ^ 0x82)] ^ *&v53[4 * v83] ^ (134725139 * *&v50[4 * HIBYTE(v85)] - 1732878625);
  v88 = *&v52[4 * (BYTE1(v77) ^ 0xEE)] ^ *&v55[4 * (BYTE2(v80) ^ 0x16)] ^ *&v53[4 * v84] ^ (134725139 * *&v50[4 * HIBYTE(v83)] - 1732878625);
  v89 = (134725139 * *&v50[4 * HIBYTE(v84)] - 1732878625) ^ *&v55[4 * BYTE2(v83)] ^ *&v52[4 * (BYTE1(v85) ^ 0x63)] ^ *&v53[4 * ((v77 ^ BYTE1(v73)) ^ 0x24)];
  v90 = BYTE1(v77) ^ 0x5A88D2B3 ^ v88;
  v91 = ((-BYTE1(v90) ^ (1179015021 - (BYTE1(v90) ^ 0x4646576D)) ^ (BYTE1(v90) - ((v90 >> 7) & 0x19A) - 178707763) ^ 0xF55922CD) + 1179015021) ^ *&v52[4 * (BYTE1(v90) ^ 0x63)];
  BYTE1(v77) = BYTE1(v86) ^ 0xF8;
  v92 = (134725139 * *&v50[4 * ((v86 ^ 0x4D64F81Bu) >> 24)] - 1732878625) ^ *&v55[4 * (BYTE2(v89) ^ 0x8D)] ^ *&v53[4 * ((v87 ^ BYTE1(v84)) ^ 0xAF)];
  v93 = *&v52[4 * (BYTE1(v89) ^ 0x83)] ^ *&v55[4 * ((v86 ^ 0x4D64F81Bu) >> 16)] ^ *&v53[4 * v90];
  v94 = *&v55[4 * (BYTE2(v88) ^ 0xF0)];
  v95 = *&v52[4 * (((v86 ^ 0xF81B) >> 8) ^ 0x63)] ^ *&v55[4 * (BYTE2(v87) ^ 0x9F)] ^ *&v53[4 * ((v89 ^ BYTE1(v85)) ^ 0x12)] ^ (134725139 * *&v50[4 * (HIBYTE(v88) ^ 0x85)] - 1732878625);
  v96 = (134725139 * *&v50[4 * (HIBYTE(v89) ^ 0x2A)] - 1732878625) ^ v94 ^ *&v52[4 * (BYTE1(v87) ^ 0x70)] ^ *&v53[4 * (v86 ^ 0x53)];
  v97 = BYTE1(v95);
  v98 = v93 ^ (134725139 * *&v50[4 * (HIBYTE(v87) ^ 0xB8)] - 1732878625);
  v99 = v92 ^ v91;
  v100 = (134725139 * *&v50[4 * (HIBYTE(v99) ^ 0xFD)] - 1732878625) ^ *&v55[4 * (BYTE2(v96) ^ 0x76)] ^ *&v52[4 * (BYTE1(v95) ^ 0x28)] ^ *&v53[4 * ((v98 ^ BYTE1(v89)) ^ 0xF)];
  v99 ^= 0xF87D9A87;
  v101 = (134725139 * *&v50[4 * (HIBYTE(v98) ^ 0x14)] - 1732878625) ^ *&v55[4 * (BYTE2(v99) ^ 0x51)] ^ *&v52[4 * (BYTE1(v96) ^ 0xDB)] ^ *&v53[4 * ((v95 ^ BYTE1(v77)) ^ 0x82)];
  v102 = (134725139 * *&v50[4 * (HIBYTE(v95) ^ 0xDC)] - 1732878625) ^ *&v55[4 * (BYTE2(v98) ^ 0xF0)] ^ *&v53[4 * ((v96 ^ BYTE1(v87)) ^ 0x2C)] ^ __ROR4__(__ROR4__(BYTE1(v99) ^ 0xDFD03334 ^ *&v52[4 * (BYTE1(v99) ^ 0x33)], 4) ^ 0x141AAD48, 28);
  v103 = *&v55[4 * (BYTE2(v95) ^ 0x64)] ^ BYTE1(v98) ^ *&v52[4 * (BYTE1(v98) ^ 2)] ^ *&v53[4 * (v99 ^ 0x8A)] ^ (134725139 * *&v50[4 * (HIBYTE(v96) ^ 0x4E)] - 1732878625);
  v104 = v100 ^ v97;
  BYTE1(v69) = BYTE1(v103) ^ 0x79;
  v105 = *&v55[4 * ((v103 ^ 0xAC1979CF) >> 16)] ^ BYTE1(v102) ^ *&v52[4 * (BYTE1(v102) ^ 0x24)] ^ 0xA3351734 ^ (134725139 * *&v50[4 * (HIBYTE(v100) ^ 0xE5)] - 1732878625);
  v106 = (v105 & 0x195742F1 ^ 0xDBB5224) & (v105 & 0xE6A8BD0E ^ 0x5DF74EFD) | v105 & 0xE200AD0A;
  v107 = (134725139 * *&v50[4 * (HIBYTE(v101) ^ 0x4E)] - 1732878625) ^ *&v55[4 * (BYTE2(v100) ^ 0xBD)] ^ *&v52[4 * (((v103 ^ 0x79CF) >> 8) ^ 0x63)] ^ *&v53[4 * (v102 ^ 0x9B)];
  v108 = ((v104 & 0xFFFFFFAF ^ 0x3AC5FF58) >> (v91 & 8) >> (v91 & 8 ^ 8));
  v109 = *&v52[4 * (v108 ^ 0x63)] ^ *&v55[4 * (BYTE2(v101) ^ 0x91)] ^ *&v53[4 * (v103 ^ 0xCF)] ^ (134725139 * *&v50[4 * ((((((v102 ^ 0x689D47D3u) >> (v69 & 0x18)) - ((2 * ((v102 ^ 0x689D47D3u) >> (v69 & 0x18))) & 0xA7BAF798) - 740459572) ^ 0xD3DD7BCC) >> (v69 & 0x18 ^ 0x18)) ^ 0xDF)] - 1732878625);
  v110 = *&v53[4 * ((v101 ^ BYTE1(v96)) ^ 0x24)] ^ 0x82ACC247 ^ v106;
  v111 = (134725139 * *&v50[4 * (HIBYTE(v103) ^ 0x73)] - 1732878625) ^ *&v55[4 * (BYTE2(v102) ^ 0xE5)] ^ *&v52[4 * (BYTE1(v101) ^ 0x15)] ^ *&v53[4 * (v104 ^ 0x40)];
  LOWORD(v108) = v108 ^ 0x5CF1 ^ v109;
  v112 = BYTE1(v101) ^ 0x648D53B5 ^ v111;
  v113 = *&v55[4 * BYTE2(v112)] ^ BYTE1(v108) ^ (134725139 * *&v50[4 * HIBYTE(v110)] - 1732878625) ^ *&v53[4 * ((v107 ^ BYTE1(v69)) ^ 0x84)] ^ *&v52[4 * (BYTE1(v108) ^ 0x63)];
  v114 = (134725139 * *&v50[4 * (HIBYTE(v107) ^ 0x4A)] - 1732878625) ^ *&v55[4 * BYTE2(v110)] ^ *&v52[4 * (BYTE1(v112) ^ 0x63)] ^ *&v53[4 * v108];
  v115 = *&v52[4 * (BYTE1(v110) ^ 0x63)] ^ *&v55[4 * (BYTE2(v107) ^ 0x27)] ^ (134725139 * *&v50[4 * (HIBYTE(v109) ^ 0x86)] - 1732878625);
  v116 = *&v53[4 * v112];
  v117 = BYTE1(v110) ^ 0xF070C1C0 ^ v115;
  HIDWORD(v118) = ((2 * v117) & 0x62A7E9D6 ^ 0xB879004D) & ~(v115 >> 31) ^ ((2 * (v116 ^ 0x5E1703F1)) & 0x62A7E9D6 ^ 0x3C67EDB7) & ((v116 >> 31) | 0x7EE7EDF6);
  LODWORD(v118) = HIDWORD(v118);
  v119 = ((v118 >> 1) ^ 0x8CA0F942) & (((v117 ^ v116 ^ 0x5E1703F1) & 0x4E8C0B14 | (v117 ^ v116) & 0x200000) ^ 0xC64FF0CB) ^ (v118 >> 1) & 0x711C0624;
  v120 = BYTE1(v107) ^ *&v52[4 * (BYTE1(v107) ^ 0x60)] ^ (134725139 * *&v50[4 * (HIBYTE(v111) ^ 0xBB)] - 1732878625) ^ *&v53[4 * v110] ^ 0xDC838522 ^ *&v55[4 * (BYTE2(v109) ^ 5)];
  v121 = *&v53[4 * ((v114 ^ BYTE1(v112)) ^ 0x87)];
  v122 = (134725139 * *&v50[4 * ((v113 ^ 0xADE5D580) >> 24)] - 1732878625) ^ *&v55[4 * BYTE2(v120)] ^ (((2 * v121) & 0x162C548 ^ 0xFEBFBEB7) - 258893671 + (((v121 ^ 0x3E507C0D) - 1045462029) ^ ((v121 ^ 0x4B6233C9) - 1264726985) ^ ((v121 ^ 0x9AD27A30) + 1697482192)));
  BYTE1(v121) = BYTE1(v119) ^ 0x91;
  v123 = v122 ^ *&v52[4 * (((v119 ^ 0x91B0) >> 8) ^ 0x63)];
  v124 = (134725139 * *&v50[4 * (HIBYTE(v114) ^ 0x87)] - 1732878625) ^ *&v55[4 * ((v113 ^ 0xADE5D580) >> 16)] ^ *&v52[4 * (BYTE1(v120) ^ 0x63)];
  v125 = *&v50[4 * ((v119 ^ 0x54D91B0u) >> 24)];
  v126 = *&v55[4 * (BYTE2(v114) ^ 6)];
  v127 = *&v55[4 * ((v119 ^ 0x54D91B0u) >> 16)];
  v128 = v124 ^ *&v53[4 * (v119 ^ 0xF8)];
  v129 = *&v53[4 * (v113 ^ 0xC8)];
  v130 = ((v113 ^ 0xD580) >> 8) ^ v126 ^ *&v52[4 * (((v113 ^ 0xD580) >> 8) ^ 0x63)] ^ *&v53[4 * v120] ^ 0xE96F3A04 ^ (134725139 * v125 - 1732878625);
  v131 = *&v52[4 * (BYTE1(v114) ^ 0x7D)] ^ (134725139 * *&v50[4 * HIBYTE(v120)] - 1732878625) ^ v129 ^ v127;
  v132 = BYTE1(v120) ^ 0xE5A33AAA ^ v128;
  v133 = *(&off_1010A0B50 + v175 - 39125) - 1429774439;
  v134 = *&v133[4 * (HIBYTE(v123) ^ 0xEE)];
  v135 = *&v133[4 * (HIBYTE(v128) ^ 0x69)];
  v136 = *&v133[4 * HIBYTE(v130)];
  v137 = *&v133[4 * (HIBYTE(v131) ^ 0xB2)];
  v138 = BYTE1(v114) ^ 0x3EEA24BC ^ v131;
  v139 = *(&off_1010A0B50 + (v175 ^ 0xA2D9)) - 943289287;
  v140 = *&v139[4 * (BYTE2(v138) ^ 0x7A)];
  v141 = BYTE2(v123);
  v142 = *&v139[4 * (BYTE2(v123) ^ 0xAF)];
  v143 = BYTE2(v132);
  v144 = *&v139[4 * (BYTE2(v132) ^ 0x7A)];
  v145 = BYTE2(v130);
  v146 = *&v139[4 * (BYTE2(v130) ^ 0x7A)];
  LOBYTE(v121) = v123 ^ BYTE1(v121);
  v147 = *(&off_1010A0B50 + (v175 ^ 0xA287)) - 1102875287;
  v148 = *&v147[4 * BYTE1(v130)];
  v149 = *&v147[4 * (BYTE1(v131) ^ 0xA1)];
  LODWORD(v139) = *&v147[4 * (BYTE1(v123) ^ 0xA3)];
  v150 = v140 - ((BYTE2(v138) + 144588478) ^ BYTE2(v138));
  v151 = *&v147[4 * BYTE1(v132)];
  v152 = *(&off_1010A0B50 + v175 - 38743) - 696318711;
  v153 = *&v152[4 * v132];
  v154 = *&v152[4 * v130];
  v155 = *&v152[4 * v138];
  v156 = *&v152[4 * (v121 ^ 0x17)];
  v157 = v134 ^ *(v12 - 136) ^ v153 ^ v148 ^ (v150 - 1418019451) ^ (v148 >> 3) & 0xE7C37C3;
  v158 = *(&off_1010A0B50 + (v175 ^ 0xB4DC)) - 619257334;
  *(a2 + *(v12 - 160)) = v158[BYTE1(v157) ^ 0x38] ^ 0x8E;
  v159 = v135 ^ *(v12 - 132) ^ v149 ^ (v149 >> 3) & 0xE7C37C3 ^ (v142 - (((v141 ^ 0xD5) + 144588478) ^ v141 ^ 0xD5) - 1418019451) ^ ((v154 ^ 0x9E8693DE) - 36103422 + ((2 * v154) & 0xFBB23602 ^ 0xC6FFD9FF));
  *(a2 + v178) = v158[BYTE1(v159) ^ 0x41] ^ 0x93;
  v160 = v136 ^ *(v12 - 128) ^ (v144 - ((v143 + 144588478) ^ v143) - 1418019451) ^ v139 ^ v155 ^ (v139 >> 3) & 0xE7C37C3;
  v161 = *(&off_1010A0B50 + (v175 ^ 0xA534)) - 850773598;
  *(a2 + v180) = BYTE3(v160) ^ 0xC2 ^ v161[BYTE3(v160) ^ 0xE3];
  v162 = *(&off_1010A0B50 + (v175 ^ 0xB552)) - 1318212010;
  v163 = v162[BYTE2(v159) ^ 0xBELL];
  *(a2 + v182) = ((v163 >> 3) & 0x17 ^ 6) + (v163 ^ 0x23) - 2 * (((v163 >> 3) & 0x17 ^ 6) & (v163 ^ 0x23));
  *(a2 + v179) = v158[BYTE1(v160) ^ 0xF5] ^ 0xE9;
  LODWORD(v139) = v137 ^ *(v12 - 124) ^ v151 ^ v156 ^ (v151 >> 3) & 0xE7C37C3 ^ (v146 - ((v145 + 144588478) ^ v145) - 1418019451);
  *(a2 + v177) = HIBYTE(v159) ^ 0xAE ^ v161[HIBYTE(v159) ^ 0xA1];
  *(a2 + *(v12 - 164)) = v162[BYTE2(v160) ^ 0xB3] ^ 0x65 ^ (v162[BYTE2(v160) ^ 0xB3] >> 3) & 0x17;
  v164 = *(&off_1010A0B50 + v175 - 38256) - 1655766490;
  HIDWORD(v118) = v164[v139 ^ 0x7ELL];
  LODWORD(v118) = (HIDWORD(v118) ^ 0xE0) << 24;
  *(a2 + (*(v12 - 116) - 161195976)) = (v118 >> 26) - ((2 * (v118 >> 26)) & 0xA8) + 84;
  *(a2 + v184) = v162[BYTE2(v157) ^ 0x5DLL] ^ 0xEC ^ (v162[BYTE2(v157) ^ 0x5DLL] >> 3) & 0x17;
  v165 = v164[v157 ^ 0xFFLL];
  *(a2 + *(v12 - 148)) = ((v165 >> 2) | (v165 << 6)) ^ 0x5C;
  v166 = *(v12 - 116);
  *(a2 + v183) = ((BYTE3(v139) ^ 1) - ((2 * (BYTE3(v139) ^ 1)) & 0x46) + 35) ^ 0x73 ^ v161[(((v139 >> 24) ^ 1) - ((2 * ((v139 >> 24) ^ 1)) & 0x46) + 35) ^ 0xECLL];
  *(a2 + *(v12 - 156)) = v158[BYTE1(v139) ^ 0xC2] ^ 0xF8;
  *(a2 + *(v12 - 144)) = HIBYTE(v157) ^ 0x6F ^ v161[HIBYTE(v157) ^ 0xFELL];
  v167 = v164[v160 ^ 0xE3];
  *(a2 + *(v12 - 152)) = ((v167 >> 2) | (v167 << 6)) ^ 0x92;
  *(a2 + *(v12 - 140)) = v162[BYTE2(v139) ^ 0xF4] ^ 0x91 ^ (v162[BYTE2(v139) ^ 0xF4] >> 3) & 0x17;
  v168 = v164[v159 ^ 0xFBLL];
  *(a2 + v181) = ((v168 >> 2) | (v168 << 6)) ^ 0xF5;
  v169 = (v166 - 565098201) < *(v12 - 120);
  if (v176 != (v166 - 565098201) < 0xE7ECF0EE)
  {
    v169 = v176;
  }

  return (*(a11 + 8 * ((3257 * v169) ^ v175)))(v166, 194, 227, v160, 245, 23, v146, v161, a3, a4, a5, a6, a7, a8, a9, a10, a11, v171, v172, v173, v174);
}

uint64_t sub_100116D24@<X0>(int a1@<W8>)
{
  v7 = v6 + v4;
  v8 = (LODWORD(STACK[0x2AC]) + a1 - 32 - 1) & 0xF;
  v9 = v8 - v4 + 1;
  v10 = v1 + v9;
  v11 = v8 + (((a1 + 9605) | 0x200u) ^ 0x8201);
  v12 = v1 + v11;
  v13 = v3 + v9;
  v14 = v3 + v11;
  v15 = v2 + v9;
  v16 = v2 + v11;
  v18 = v12 > v6 && v10 < v7;
  if (v14 > v6 && v13 < v7)
  {
    v18 = 1;
  }

  v21 = v16 > v6 && v15 < v7 || v18;
  return (*(v5 + 8 * ((237 * (v21 ^ 1)) ^ a1)))();
}

void sub_100116E2C(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (155453101 * (a1 ^ 0xE6261BCF));
  v2 = *(*(a1 + 24) + 4);
  v4 = v2 - 1051086576;
  v3 = v2 - 1051086576 < 0;
  v5 = 1051086576 - v2;
  if (v3)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = *(*(a1 + 8) + 4);
  v8 = v7 - 1051086576;
  v9 = 1051086576 - v7;
  if (v8 < 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v13 = *(a1 + 24);
  v14 = v1 - 297845113 * ((((2 * &v13) | 0xACFF7A26) - &v13 - 1451212051) ^ 0x214CA18D) + 13883;
  v11 = *(&off_1010A0B50 + v1 - 16680) - 810145054;
  (*&v11[8 * v1 + 275552])(&v13);
  if (v6 >= v10)
  {
    v12 = (v10 ^ 0x6FEFFEB7) - 679675908 + ((2 * v10) & 0xDFDFFD6E);
  }

  else
  {
    v12 = (v6 ^ 0xCF6FF7BF) + 2013069044 + ((2 * v6) & 0x9EDFEF7E);
  }

  __asm { BRAA            X12, X17 }
}

uint64_t sub_100117110()
{
  v5 = *(v4 + 1);
  *v3 = 2;
  return (*(v2 + 8 * ((12446 * (v1 & ~(((v5 - v0) | (v0 - v5)) >> ((v0 + 0x80) ^ 0xCF)))) ^ (v0 + 7373))))();
}

uint64_t sub_100117194()
{
  v7 = v0 ^ (2 * v2);
  v8 = *(v5 + 16);
  v9 = (v8 ^ 0x2FFFF3F6F38FFFA7) - 0x220B10003030302 + ((v8 << (((v2 + v1) | v3) - 94)) & (v7 + 0x1E71F4DC8));
  v10 = ((v8 ^ 0xF38FFFA7) - 50529026 + ((v8 << (((v2 + v1) | v3) - 94)) & (v7 - 417378872))) & 0xF73035B;
  v11 = (((v8 ^ 0xF38FFFA7) - 50529026 + ((v8 << (((v2 + v1) | v3) - 94)) & (v7 - 417378872))) ^ 0xE62B21A) & (2 * v10) ^ v10;
  v12 = ((2 * (v9 ^ 0x1886B20E)) ^ 0x2FEB62AA) & (v9 ^ 0x1886B20E) ^ (2 * (v9 ^ 0x1886B20E)) & 0x17F5B154;
  v13 = v12 ^ 0x10149155;
  v14 = (v12 ^ 0x7C00000) & (4 * v11) ^ v11;
  v15 = ((4 * v13) ^ 0x5FD6C554) & v13 ^ (4 * v13) & v4;
  v16 = (v15 ^ 0x17D48150) & (16 * v14) ^ v14;
  v17 = ((16 * (v15 ^ 0x213001)) ^ 0x7F5B1550) & (v15 ^ 0x213001) ^ (16 * (v15 ^ 0x213001)) & 0x17F5B150;
  return (*(v6 + 8 * ((7 * ((((v8 ^ 0xF38FFFA7) - 50529026 + ((v8 << (((v2 + v1) | v3) - 94)) & (v7 - 417378872))) ^ (2 * ((((v17 ^ 0xA4A005) << 8) & 0x17F50000 ^ 0x15B10000 ^ (((v17 ^ 0xA4A005) << 8) ^ 0xF5B10000) & (v17 ^ 0xA4A005)) & (((v17 ^ 0x17511100) & (v16 << 8) ^ v16) << 16) ^ (v17 ^ 0x17511100) & (v16 << 8) ^ v16))) != 259195739)) ^ v2)))();
}

uint64_t sub_100117350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, unsigned int a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  v42 = v41 - 502872134 + *(&a40 + a34);
  v43 = (v42 ^ 0x41) & (2 * (v42 & 0x65)) ^ v42 & 0x65;
  v44 = ((2 * (v42 ^ 0x89)) ^ 0xD8) & (v42 ^ 0x89) ^ (2 * (v42 ^ 0x89)) & ((v40 + 56) ^ 6);
  v45 = ((4 * (v44 ^ 0x24)) & 0xE0 ^ 0xA0 ^ ((4 * (v44 ^ 0x24)) ^ 0xB0) & (v44 ^ 0x24)) & (16 * ((v44 ^ 0x88) & (4 * v43) ^ v43)) ^ (v44 ^ 0x88) & (4 * v43) ^ v43;
  v46 = *(&a40 + a32);
  LOBYTE(v42) = v42 ^ v46 ^ ((v46 ^ 0x15) + 120) ^ ((v46 ^ 0x65) + 8) ^ ((v46 ^ 0x12) + 113) ^ (-v46 - 99) ^ (2 * v45);
  v47 = *(&a40 + 0xE % a27);
  v48 = (((v42 ^ 0xBB) - 59) ^ ((v42 ^ 0xC8) - 72) ^ ((v42 ^ 0x8B) - 11)) + 2;
  v49 = *(&a40 + 7 % a27);
  return (*(a37 + 8 * ((915 * (((((((a40 + 118 * v47 - v49 + v48 * (v47 + 99) - 16) ^ 1) + 1) ^ (((a40 + 118 * v47 - v49 + v48 * (v47 + 99) - 16) ^ 4) + 6)) ^ (((a40 + 118 * v47 - v49 + v48 * (v47 + 99) - 16) ^ 0xFD) + 5)) & 7) == 1)) ^ v40)))();
}

uint64_t sub_1001175B4@<X0>(int a1@<W0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v14 = v6 - 1;
  v15 = (a5 + v14);
  v16 = ((v15 ^ *(*(a4 + v12) + (*(a2 + a3) & v7))) & 0x7FFFFFFF) * v8;
  v17 = v16 ^ HIWORD(v16);
  HIDWORD(v18) = v14;
  LODWORD(v18) = v17 * v8;
  *v15 ^= *(*(&off_1010A0B50 + v9) + ((v18 >> 24) & 0xFFF) + v10) ^ (v17 * v11);
  return (*(v13 + 8 * (((v14 == 0) * a1) ^ v5)))();
}

uint64_t sub_10011762C(uint64_t a1, int a2)
{
  v8 = *(v6 + v4 * v7 + 36);
  v10 = v8 + a2 < v3 && v8 != ((16 * (((v2 + 27038) | 0x86) ^ 0x89E8)) ^ 0x2B576B26);
  return (*(v5 + 8 * ((57051 * v10) ^ v2)))();
}

uint64_t sub_100117688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v33 = v31 + 27523;
  v34 = v31 - 3780;
  v44 = v31 - 12875;
  v35 = (*(v32 + 8 * (v31 + 33095)))(a21);
  return (*(v32 + 8 * (((v35 == 0) * (v44 + v34 - 20821)) ^ v33)))(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

uint64_t sub_1001176F0(int a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8)
{
  v13 = (*v10 + (a6 - 128941941));
  v14 = *(*(v12 - 1680276466) + (*(v8 + v11) & 0x72D7ACF8));
  v15 = ((((v14 ^ v13) & 0x7FFFFFFF) * a3) ^ ((((v14 ^ v13) & 0x7FFFFFFF) * a3) >> 16)) * a3;
  v16 = *(&off_1010A0B50 + a1 - 39381) - 908123987;
  v17 = *(&off_1010A0B50 + a1 - 42685) - 179860347;
  v18 = *(&off_1010A0B50 + a1 - 42226) - 1260529494;
  LODWORD(v13) = v16[v15 >> 24] ^ *v13 ^ v17[v15 >> 24] ^ v18[(v15 >> 24) + 1] ^ v15 ^ ((v15 >> 24) * a8);
  v19 = (*v10 + (a6 - 128941940));
  v20 = *v19;
  v21 = ((((v14 ^ v19) & 0x7FFFFFFF) * a3) ^ ((((v14 ^ v19) & 0x7FFFFFFF) * a3) >> 16)) * a3;
  LODWORD(v13) = (v13 << 24) | ((v21 ^ v20 ^ v16[v21 >> 24] ^ v17[v21 >> 24] ^ (BYTE3(v21) * a8) ^ v18[(v21 >> 24) + 1]) << 16);
  v22 = (*v10 + (a6 - 128941939));
  v23 = *v22;
  v24 = ((((v14 ^ v22) & 0x7FFFFFFF) * a3) ^ ((((v14 ^ v22) & 0x7FFFFFFF) * a3) >> 16)) * a3;
  LODWORD(v13) = v13 & 0xFFFF00FF | (((BYTE3(v24) * a8) ^ v24 ^ v23 ^ v16[v24 >> 24] ^ v17[v24 >> 24] ^ v18[(v24 >> 24) + 1]) << 8);
  v25 = (*v10 + (a6 - 128941938));
  v26 = ((((v14 ^ v25) & 0x7FFFFFFF) * a3) ^ ((((v14 ^ v25) & 0x7FFFFFFF) * a3) >> 16)) * a3;
  LODWORD(v24) = v16[v26 >> 24] ^ *v25;
  LODWORD(v25) = (v26 >> 24) * a8;
  LODWORD(v26) = v24 ^ v17[v26 >> 24] ^ v18[(v26 >> 24) + 1] ^ v26;
  return (*(v9 + 8 * a5))((v26 ^ v25) & 0xD7 | (v26 ^ ~v25 | 0xFFFFFF00) & ((v13 - ((2 * v13) & 0x8DF8BE00) - 956539066) ^ 0x5488EE6E));
}

uint64_t sub_1001179C0(uint64_t a1, int a2, unint64_t a3, int a4)
{
  v14 = v5 - 1;
  *(v13 + v14) = *(v6 + (v14 & 0xF)) ^ *(v4 + v14) ^ *(v8 + (v14 & 0xF)) ^ ((v14 & 0xF) * v11) ^ *((v14 & 0xF) + v7 + 1);
  return (*(v12 + 8 * (((v14 == ((a2 + v10) ^ a3)) * a4) ^ v9)))();
}

uint64_t sub_100117C00(int8x16_t a1, int8x8_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, uint64_t a7, int a8)
{
  v16.val[0].i64[0] = (v11 + v12 - 1) & 0xF;
  v16.val[0].i64[1] = (v11 + v12 + 14) & 0xF;
  v16.val[1].i64[0] = (v11 + v12 + 13) & 0xF;
  v16.val[1].i64[1] = (v11 + v12 + 12) & 0xF;
  v16.val[2].i64[0] = (v11 + v12 + 11) & 0xF;
  v16.val[2].i64[1] = (v11 + v12 + (a6 ^ 1)) & 0xF;
  v16.val[3].i64[0] = (v11 + v12 + 9) & 0xF;
  v16.val[3].i64[1] = (v11 + v12) & 0xF ^ 8;
  *(a7 + v12) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a7 + v12), *(v9 + v16.val[0].i64[0] - 7)), veor_s8(*(v8 + v16.val[0].i64[0] - 7), *(v16.val[0].i64[0] + v10 - 5)))), a3), vmul_s8(*&vqtbl4q_s8(v16, a1), a2)));
  return (*(v14 + 8 * (((a5 == v12) * a8) ^ v13)))();
}

uint64_t sub_100117D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  *(v17 - 128) = &a13;
  *(v17 - 120) = &a11;
  *(v17 - 112) = v13;
  *(v17 - 104) = v14;
  *(v17 - 136) = v16 + 1112314453 * ((((v17 - 144) | 0x570E583D) + (~(v17 - 144) | 0xA8F1A7C2)) ^ 0xB85872E5) + 4915;
  *(v17 - 144) = &a13;
  v18 = (*(v15 + 8 * (v16 + 21710)))(v17 - 144);
  return (*(v15 + 8 * v16))(v18);
}

uint64_t sub_100117DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v20 = v17 - 1;
  *(v19 - 112) = v13 + 1012831759 * ((((v19 - 144) | 0x80647EA5) - (v19 - 144) + ((v19 - 144) & 0x7F9B8158)) ^ 0x90F7682F) + 1051052892;
  *(v19 - 128) = &a13;
  *(v19 - 120) = v15;
  *(v19 - 144) = v14;
  *(v19 - 136) = &a13;
  (*(v16 + 8 * (v13 + 18347)))(v19 - 144);
  v21 = (v20 ^ 0xB22454C) & (2 * (v20 & 0x8330618E)) ^ v20 & 0x8330618E;
  v22 = (((v20 ^ 0xF62075C) << (((v13 + 116) | 0x11) ^ 0x18)) ^ 0x18A4CDA4) & (v20 ^ 0xF62075C) ^ ((v20 ^ 0xF62075C) << (((v13 + 116) | 0x11) ^ 0x18)) & 0x8C5266D2;
  v23 = v22 ^ 0x84522252;
  v24 = (v22 ^ 0x8000400) & (4 * v21) ^ v21;
  v25 = ((4 * v23) ^ 0x31499B48) & v23 ^ (4 * v23) & 0x8C5266D0;
  v26 = (v25 ^ 0x400240) & (16 * v24) ^ v24;
  v27 = ((16 * (v25 ^ 0x8C126492)) ^ 0xC5266D20) & (v25 ^ 0x8C126492) ^ (16 * (v25 ^ 0x8C126492)) & 0x8C5266C0;
  v28 = v26 ^ 0x8C5266D2 ^ (v27 ^ 0x84026400) & (v26 << 8);
  v29 = (v17 - 1) ^ (2 * ((v28 << 16) & 0xC520000 ^ v28 ^ ((v28 << 16) ^ 0x66D20000) & (((v27 ^ 0x85002D2) << 8) & 0xC520000 ^ 0xC100000 ^ (((v27 ^ 0x85002D2) << 8) ^ 0x52660000) & (v27 ^ 0x85002D2)))) ^ 0xA2132DB9;
  v30 = 906386353 * ((((v19 - 144) | 0x5F89B892) - ((v19 - 144) & 0x5F89B890)) ^ 0x6E8875B6);
  *(v19 - 144) = v13 - v30 + 9181;
  *(v19 - 140) = v29 + v30;
  *(v19 - 128) = v18;
  v31 = (*(v16 + 8 * (v13 ^ 0x485F)))(v19 - 144);
  return (*(v16 + 8 * ((*(v19 - 136) != -1729168700) | (8 * (*(v19 - 136) != -1729168700)) | v13)))(v31);
}

void sub_10011805C(uint64_t a1)
{
  v1 = 1603510583 * ((2 * (a1 & 0x4E5289E6) - a1 + 833451545) ^ 0xA67644B2);
  v2 = *(a1 + 48) - v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 8);
  v5 = *(a1 + 64) - v1;
  v9 = 0x3EA64EF000000040;
  v10 = &v19;
  v13 = 0x3EA64EF000000082;
  v14 = &v17;
  v11 = 0x3EA64EF000000001;
  v12 = &v8;
  v15 = 0x3EA64EF000000082;
  v16 = &v18;
  if (v3 | v4)
  {
    v6 = v5 == 787596242;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1001181B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, char a47)
{
  v51 = v49 - 1;
  *(&a47 + v51) = (v47 ^ ((v47 ^ 0xA8) - 119) ^ ((v47 ^ 0xED) - 50) ^ ((v47 ^ 0x5D) + 126) ^ 0x65 ^ ((v47 ^ (v48 + 119) & 0xDA ^ 0x55) - 24)) * (v47 + 50);
  return (*(v50 + 8 * ((8963 * (v51 == 0)) | v48)))();
}

uint64_t sub_100118264()
{
  v2 = STACK[0x640];
  STACK[0x598] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (v0 + 6158)))(v2);
}

uint64_t sub_1001182F4()
{
  v1 = STACK[0x2B8] - 14132;
  STACK[0x858] = 0;
  return (*(v0 + 8 * v1))();
}

uint64_t sub_100118518(__n128 a1)
{
  v3.n128_u64[0] = (v1 + 13) & 0xF;
  v3.n128_u64[1] = (v1 + 12) & 0xF;
  v4.n128_u64[0] = (v1 + 11) & 0xF;
  v4.n128_u64[1] = (v1 + 10) & 0xF;
  v5.n128_u64[0] = (v1 + 9) & 0xF;
  v5.n128_u64[1] = v1 & 0xF ^ 8;
  v9.val[0].i64[0] = (v1 + 7) & 0xF;
  v9.val[0].i64[1] = (v1 + 6) & 0xF;
  v9.val[1].i64[0] = (v1 + 5) & 0xF;
  v9.val[1].i64[1] = (v1 + 4) & 0xF;
  v9.val[2].i64[0] = (v1 + 3) & 0xF;
  v9.val[2].i64[1] = (v1 + 2) & 0xF;
  v9.val[3].i64[0] = (v1 + 1) & 0xF;
  v9.val[3].i64[1] = v1 & 0xF;
  v6.n128_u64[0] = 0x9F9F9F9F9F9F9F9FLL;
  v6.n128_u64[1] = 0x9F9F9F9F9F9F9F9FLL;
  v7.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v7.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(STACK[0x3B8] + 8 * v2))((v1 + 14) & 0xF, a1, v3, v4, v5, xmmword_100BC76B0, vqtbl4q_s8(v9, xmmword_100BC76B0), v6, v7);
}

uint64_t sub_100118678()
{
  v7 = *(v6 - 184);
  v8 = v7 + v3;
  v9 = (v3 - 1) & 0xF;
  v10 = v9 + 1;
  v11 = v9 + 1 - v3;
  v12 = v1 + v11;
  v13 = v1 + v9 + 1;
  v14 = v9 - v3 + ((v4 - 113780370) & 0x6C7EE99) + v0 - 27285;
  v15 = v9 + v0 + 4;
  v16 = v2 + v11;
  v17 = v2 + v10;
  v19 = v13 > v7 && v12 < v8;
  v21 = v15 > v7 && v14 < v8 || v19;
  if (v17 > v7 && v16 < v8)
  {
    v21 = 1;
  }

  return (*(v5 + 8 * (((v21 ^ 1) * ((v4 ^ 0x8CAE) - 11830)) ^ v4)))();
}

uint64_t sub_100118758(__n128 a1)
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

uint64_t sub_10011879C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v64 = *(v63 + 32);
  *(v62 - 112) = veorq_s8(**(v63 + 16), xmmword_100F52660);
  if (v61)
  {
    v65 = v64 == 0;
  }

  else
  {
    v65 = 1;
  }

  v66 = !v65;
  v67 = *(v60 + 8 * ((60 * v66) ^ a2));
  LODWORD(STACK[0x318]) = -42900;
  return v67(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_100118898()
{
  v3 = *(v2 + 8 * v1);
  STACK[0x5E8] = *(v2 + 8 * v0);
  return v3();
}

uint64_t sub_1001188E0@<X0>(int a1@<W3>, int a2@<W8>)
{
  v7 = ((((v2 - 1851187362) ^ a2) + 1851172012) ^ ((a2 ^ 0x10B1AB5F) - 280079199) ^ (((53 * (v2 ^ 0x38E1) + 1758237527) ^ a2) - 1758279450)) + 522962943;
  v8 = (v7 ^ 0xA889FF95) & (2 * (v7 & 0xCAA9FF15)) ^ v7 & 0xCAA9FF15;
  v9 = ((2 * (v7 ^ 0x3DDA4B9F)) ^ 0xEEE76914) & (v7 ^ 0x3DDA4B9F) ^ (2 * (v7 ^ 0x3DDA4B9F)) & 0xF773B48A;
  v10 = v9 ^ 0x1110948A;
  v11 = (v9 ^ 0x66632000) & (4 * v8) ^ v8;
  v12 = ((4 * v10) ^ 0xDDCED228) & v10 ^ (4 * v10) & 0xF773B488;
  v13 = (v12 ^ 0xD5429000) & (16 * v11) ^ v11;
  v14 = ((16 * (v12 ^ 0x22312482)) ^ 0x773B48A0) & (v12 ^ 0x22312482) ^ (16 * (v12 ^ 0x22312482)) & 0xF773B480;
  v15 = v13 ^ 0xF773B48A ^ (v14 ^ 0x77330000) & (v13 << 8);
  v18 = (((v7 ^ (2 * ((v15 << 16) & 0x77730000 ^ v15 ^ ((v15 << 16) ^ 0x348A0000) & (((v14 ^ 0x8040B40A) << 8) & 0x77730000 ^ 0x4430000 ^ (((v14 ^ 0x8040B40A) << 8) ^ 0x73B40000) & (v14 ^ 0x8040B40A))))) & 0xFFFFFFFC ^ v4) == 0xA59F5111 || v6 == a2) && v3 != a1;
  return (*(v5 + 8 * ((2037 * v18) ^ v2)))();
}

void sub_100118AD0(_DWORD *a1)
{
  v2 = *(*a1 + 4);
  v3 = v2 - 1051086576;
  if (v2 - 1051086576 < 0)
  {
    v3 = 1051086576 - v2;
  }

  v1 = a1[2] - 139493411 * ((-2 - ((a1 | 0xB3124EAA) + (~a1 | 0x4CEDB155))) ^ 0x40C05010);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_100118C40(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = (a1 + 1560346192) & 0xA2FEF7DF;
  v75 = (a72 ^ 0x857A8EEC) & (2 * (a72 & 0xD6708CE8)) ^ a72 & 0xD6708CE8;
  v76 = ((2 * ((v74 - 1514463570) ^ a72)) ^ 0xE7963528) & ((v74 - 1514463570) ^ a72) ^ (2 * ((v74 - 1514463570) ^ a72)) & (v72 + 1942663512);
  v77 = ((4 * (v76 ^ 0x10490A94)) ^ 0xCF2C6A50) & (v76 ^ 0x10490A94) ^ (4 * (v76 ^ 0x10490A94)) & 0x73CB1A90;
  v78 = (v77 ^ 0x43080A00) & (16 * ((v76 ^ 0x63821000) & (4 * v75) ^ v75)) ^ (v76 ^ 0x63821000) & (4 * v75) ^ v75;
  v79 = ((16 * (v77 ^ 0x30C31084)) ^ 0x3CB1A940) & (v77 ^ 0x30C31084) ^ (16 * (v77 ^ 0x30C31084)) & 0x73CB1A80;
  v80 = v78 ^ 0x73CB1A94 ^ (v79 ^ 0x30810800) & (v78 << 8);
  v82 = (a72 ^ (2 * ((v80 << 16) & 0x73CB0000 ^ v80 ^ ((v80 << 16) ^ 0x1A940000) & (((v79 ^ 0x434A1294) << 8) & 0x73CB0000 ^ 0x30C10000 ^ (((v79 ^ 0x434A1294) << 8) ^ 0x4B1A0000) & (v79 ^ 0x434A1294))))) == 0x14E6B9C0 || ((a72 ^ (2 * v80)) & 0xF) != ((v74 - 1496574067) ^ 0xA6CC8F5B);
  v83 = *(v73 + 8 * ((56 * (((v74 - 1) ^ v82) & 1)) ^ v74));
  LODWORD(STACK[0x360]) = -42899;
  return v83();
}

uint64_t sub_100118E20(uint64_t a1, char a2, int a3)
{
  v13 = v10 - 1;
  *(v11 + v13) = *(v3 + v13) ^ *(v4 + (v8 & v13)) ^ *(v5 + (v8 & v13)) ^ *((v8 & v13) + v6 + 3) ^ ((v8 & v13) * v9) ^ a2;
  return (*(v12 + 8 * (((v13 != 0) * a3) ^ v7)))();
}

uint64_t sub_100118F34()
{
  v6 = *v3;
  *(v1 - 1) = *(v3 - 1);
  *v1 = v6;
  return (*(v5 + 8 * (((4 * ((v0 ^ (v2 == 0)) & 1)) & 0xEF | (16 * ((v0 ^ (v2 == 0)) & 1))) ^ v4)))();
}

uint64_t sub_1001192CC@<X0>(int a1@<W8>)
{
  v4 = STACK[0x480];
  v5 = 1012831759 * (((((v3 - 240) | 0xFE66FD98) ^ 0xFFFFFFFE) - (~(v3 - 240) | 0x1990267)) ^ 0x110A14ED);
  *(v3 - 200) = &STACK[0x4A4];
  *(v3 - 240) = &STACK[0x6D4];
  *(v3 - 232) = &STACK[0x5C0];
  *(v3 - 192) = v2 - v5 + 33961;
  *(v3 - 188) = ((((a1 ^ 0x893DDD7C) + 1992434308) ^ ((a1 ^ 0xFA2A605C) + 97886116) ^ (((v2 - 1698546117) ^ a1) + 1698530767)) - 129675808) ^ v5;
  *(v3 - 216) = v4;
  *(v3 - 208) = &STACK[0x564];
  v6 = (*(v1 + 8 * (v2 ^ 0xF052)))(v3 - 240);
  return (*(v1 + 8 * ((64662 * (*(v3 - 224) == (v2 ^ 0xE9D5FCE7))) ^ v2)))(v6, 3979101123, 3923101457, 2013343333);
}

uint64_t sub_1001197CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, _BYTE *a17, uint64_t a18)
{
  v21 = *(a18 + 32);
  a17[26] = *(v20 - 225);
  a17[27] = *(v20 - 226);
  a17[28] = *(v20 - 227);
  a17[29] = *(v20 - 228);
  a17[30] = *(v20 - 229);
  a17[31] = *(v20 - 230);
  a17[32] = *(v20 - 231);
  a17[33] = *(v20 - 232);
  a17[34] = *(v20 - 233);
  a17[35] = *(v20 - 234);
  a17[36] = *(v20 - 235);
  a17[37] = *(v20 - 236);
  a17[38] = *(v20 - 237);
  *v21 = -347583193;
  return (*(v19 + 8 * ((51 * (a16 + ((v18 + 2133557894) & 0xDFFF6FFD) == 1794502676)) ^ v18)))();
}

uint64_t sub_1001198F4@<X0>(int a1@<W8>)
{
  v8 = v5 - 1;
  *(v6 + v8) ^= *(v1 + (v8 & 0xF)) ^ *((v8 & 0xF) + v2 + 5) ^ ((v8 & 0xF) * v4) ^ *((v8 & 0xF) + v3 + 1);
  return (*(v7 + 8 * ((508 * (v8 == 0)) ^ a1)))();
}

uint64_t sub_100119C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  if ((v41 & 4) == 0)
  {
    a33 = a4;
  }

  return (*(v42 + 8 * v40))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}

uint64_t sub_100119CFC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x20C]) = v4;
  LODWORD(STACK[0x3A4]) = a4;
  return (*(v6 + 8 * (((a4 == ((v5 + 958583502) & 0xC6DDBFEB) - 371910674) * ((v5 - 576003308) & 0x22551DD7 ^ 0xB551)) ^ v5)))();
}

uint64_t sub_100119D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, int8x16_t a4@<Q0>)
{
  v11 = ~v6 + a3;
  v12 = *(a2 + v11 - 15);
  v13 = *(a2 + v11 - 31);
  v14 = a1 + v11;
  *(v14 - 15) = veorq_s8(v12, a4);
  *(v14 - 31) = veorq_s8(v13, a4);
  return (*(v10 + 8 * (((v6 + v8 + v5 == v4) * v9) ^ v7)))();
}

uint64_t sub_100119ECC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, unint64_t a21, unint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unint64_t a26, unint64_t a27, unint64_t a28, unint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, unint64_t a59, unint64_t a60)
{
  STACK[0x468] = v64;
  STACK[0x430] = a22;
  STACK[0x2C8] = a28;
  STACK[0x358] = v60;
  STACK[0x360] = a29;
  STACK[0x388] = v62;
  STACK[0x390] = a27;
  STACK[0x3C0] = a26;
  STACK[0x440] = 0;
  STACK[0x248] = a60;
  STACK[0x2B0] = a21;
  STACK[0x2B8] = a1;
  STACK[0x410] = a1;
  STACK[0x298] = a1;
  STACK[0x348] = a20;
  STACK[0x350] = a59;
  v65 = (*(v61 + 8 * (v63 ^ 0xE558)))();
  return (*(v61 + 8 * v63))(v65);
}

uint64_t sub_100119FB0()
{
  v3 = 23958;
  atomic_compare_exchange_strong((*(v1 + 8 * (v2 ^ 0x5226)) - 1074833858), &v3, 0xA94EFu);
  return (*(v0 + 8 * ((83 * ((v2 ^ 0x95 ^ (v3 == 23958)) & 1)) ^ v2)))();
}

uint64_t sub_10011A00C()
{
  v3 = (*(v2 + 8 * (v1 ^ 0xFE5D)))(v0);
  v4 = STACK[0x408];
  STACK[0x820] = 0;
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_10011A1BC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v9 = *(v5 + v8 * v7 + 36);
  v11 = v9 + 1420301865 < a4 && v9 != ((v4 - 1775992967) & 0x69DBDF8E) + 727147344;
  return (*(v6 + 8 * ((18908 * v11) ^ v4)))();
}

uint64_t sub_10011A250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, int a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v27 = 634647737 * ((v26 - 2 * (v26 & 0x9C5AC999835A608) - 0x763A536667CA59F6) ^ 0x531E0376F5A389F6);
  a13 = -634647737 * ((v26 - 2 * (v26 & 0x9835A608) - 1741314550) ^ 0xF5A389F6);
  a14 = ((v21 + 497961123) ^ 0x122F) - v27;
  a16 = v21 + 497961123 + v27;
  a19 = v21 - v27 + v24;
  a20 = v21 + 497961123 - v27 + 49;
  a17 = v27 ^ 0x5BB2;
  a18 = v22 - v27;
  v28 = (*(v20 + 8 * v23))(&a13);
  return (*(v25 + 8 * a15))(v28);
}

uint64_t sub_10011A334()
{
  v2 = STACK[0xAF8];
  v3 = *(STACK[0xAF8] + 8);
  v4 = STACK[0xA80];
  v4[1] = v3;
  *v4 = *v2;
  return (*(v1 + 8 * (((v3 != 0) * (((v0 + 807622115) & 0xCFDC9DFF) - 39403)) ^ v0)))();
}

uint64_t sub_10011A4E0(uint64_t a1, uint64_t a2, double a3, __n128 a4, __n128 a5, __n128 a6, int8x16_t a7, double a8, int8x16_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v30 = (a12 ^ v29) + v27;
  v31 = v30 & 0xF;
  v33.i64[0] = vqtbl4q_s8(*(&a4 - 1), a7).u64[0];
  *&v33.i64[1] = a8;
  v34 = vrev64q_s8(vmulq_s8(v33, a9));
  *(a1 + v30) = veorq_s8(veorq_s8(veorq_s8(*(v25 + v31 - 15), *(a1 + v30)), veorq_s8(*(v26 + v31 - 15), *(v31 + v24 - 11))), vextq_s8(v34, v34, 8uLL));
  return (*(a24 + 8 * (((a11 == v29) * a13) ^ v28)))();
}

uint64_t sub_10011A55C()
{
  v3 = v1 & 0x2AF39F7;
  v5 = (v0 - 1) < 0x10 && ((v0 - 1) & 0xFu) >= ((v0 - 1) & 0xFu);
  return (*(v2 + 8 * ((((60 * (v3 ^ 0x338F)) ^ 0x9B95) * v5) ^ v3)))();
}

uint64_t sub_10011A608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v52 = *(v48 + 8 * (HIDWORD(a25) - 2675));
  v50 = *(v49 + 8 * (((*(v52 - 1401400883) == 1) * ((((HIDWORD(a25) - 4221) | 0x2040) + 39323) ^ (301 * (HIDWORD(a25) ^ 0x173D)))) ^ HIDWORD(a25)));
  STACK[0x210] = *(v48 + 8 * (HIDWORD(a25) - 3263)) - 1799565999;
  return v50(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, v52, a44, a45, a46, a47, a48);
}

void sub_10011A69C(_DWORD *a1)
{
  v1 = *a1 - 353670337 * ((a1 - 2 * (a1 & 0x1230E78B) - 1842288757) ^ 0x26111FB6);
  __asm { BRAA            X15, X17 }
}

uint64_t sub_10011A770()
{
  *(v2 + 24) = 80;
  *(v2 + 40) = 0;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_10011A790@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, int a23)
{
  v25 = 1022166737 * ((~&a20 & 0xC4E968D | &a20 & 0xF3B16970) ^ 0xB65E771F);
  a20 = a16;
  a21 = a1 - v25;
  a22 = v25 + 21659 + v24;
  v26 = (*(v23 + 8 * (v24 ^ 0xE241)))(&a20);
  return (*(v23 + 8 * (((a23 != 1497668682) * ((v24 ^ 0x5919) + (v24 ^ 0x3B0B) - 34043)) ^ v24)))(v26);
}

uint64_t sub_10011A840@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 144);
  LOBYTE(STACK[0x623]) = v3[15];
  LOBYTE(STACK[0x622]) = v3[14];
  LOBYTE(STACK[0x621]) = v3[13];
  LOBYTE(STACK[0x620]) = v3[12];
  LOBYTE(STACK[0x61F]) = v3[11];
  LOBYTE(STACK[0x61E]) = v3[10];
  LOBYTE(STACK[0x61D]) = v3[9];
  LOBYTE(STACK[0x61C]) = v3[8];
  LOBYTE(STACK[0x61B]) = v3[7];
  LOBYTE(STACK[0x61A]) = v3[6];
  LOBYTE(STACK[0x619]) = v3[5];
  LOBYTE(STACK[0x618]) = v3[4];
  LOBYTE(STACK[0x617]) = v3[3];
  LOBYTE(STACK[0x616]) = v3[2];
  LOBYTE(STACK[0x615]) = v3[1];
  LOBYTE(STACK[0x614]) = *v3;
  return (*(v1 + 8 * a1))();
}

uint64_t sub_10011A994@<X0>(int a1@<W8>)
{
  *v1 = v2;
  v1[1] = v2;
  return (*(v3 + 8 * a1))();
}

uint64_t sub_10011AA58(uint64_t a1)
{
  v2 = 139493411 * ((~a1 & 0xD568199D | a1 & 0x2A97E662) ^ 0xD945F8D8);
  v3 = *(a1 + 16) ^ v2;
  v4 = *(a1 + 24);
  v5 = *a1;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = 127 * (*(a1 + 8) ^ v2) + 98;
  v10 = 1603510583 * (((&v12 ^ 0xB48000C | 0xB03352C3) + (&v12 ^ 0x800002C1 | 0x4FCCAD3C)) ^ 0x1C933067);
  v13 = (63 * (*(a1 + 64) + v2) - 75) ^ (55 * (((&v12 ^ 0xC | 0xC3) + (&v12 ^ 0xC1 | 0x3C)) ^ 0x67));
  v18 = v8;
  v19 = v6;
  v20 = v7;
  v12 = v10 ^ 0x1F34606;
  v14 = v3 - v10 - 146682287;
  v15 = v5;
  v16 = v4;
  v17 = v9 ^ (55 * (((&v12 ^ 0xC | 0xC3) + (&v12 ^ 0xC1 | 0x3C)) ^ 0x67));
  result = (*(*(&off_1010A0B50 + v3 - 146681200) + 8 * v3 - 1983183990))(&v12);
  *(a1 + 12) = v21;
  return result;
}

uint64_t sub_10011AD64(uint64_t a1, int a2)
{
  v4 = (a2 - 44179) | 0x8598;
  v6 = ((((((v2 - 62) ^ 0x3A) - 32) ^ (v2 - 62) ^ (((v2 - 62) ^ 0x92) + 120) ^ (88 - v2)) ^ (((v2 - 62) ^ 0x4D) + 11 + ((a2 + 109) | 0x98))) & 0xF) == 0xA && ((((v2 - 86926398) ^ 0x8D21F23A) + 549889248) ^ (v2 - 86926398) ^ (((v2 - 86926398) ^ 0x7EEA2D92) - 754091144) ^ (((v2 - 86926398) ^ 0x7DEFFFFF) - 804738789) ^ (((v2 - 86926398) ^ 0xDC3C894D) + 1910194699 + v4)) != (((v4 - 23952) | 0x3620) ^ 0x5218DF34);
  v7 = *(v3 + 8 * ((v6 * (((v4 + 787884365) & 0xD1097FBD) - 18016)) ^ v4));
  LODWORD(STACK[0x318]) = -42899;
  return v7();
}

void sub_10011AEE0(uint64_t a1)
{
  v1 = *(a1 + 16) + 1603510583 * (((a1 | 0x4A4E5612) - (a1 | 0xB5B1A9ED) - 1246647827) ^ 0xDD9564B9);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10011B034(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t *a50)
{
  v57 = *a50;
  *a3 = *(v56 + 8 * v54);
  LODWORD(STACK[0x2D0]) = v51;
  LODWORD(STACK[0x3A0]) = v52;
  a3[29] = v53;
  a3[5] = v50;
  a3[15] = v57;
  return (*(v56 + 8 * (((v57 != 0) * (v55 ^ 0xAEDD)) ^ (v55 - 36915))))();
}

uint64_t sub_10011B184@<X0>(int a1@<W8>)
{
  v4 = (((v2 ^ 0x58DFC8A4B84EF967) - 0x58DFC8A4B84EF967) ^ ((v2 ^ 0xC2E6D76D84DF6586) + 0x3D1928927B209A7ALL) ^ (((((a1 - 170863563) & 0xA2EFED7u) + 19376 - 0x65C6E0362ABC2617) ^ v2) + 0x65C6E0362ABBA410)) + 0x12FBB269FLL;
  v5 = v4 < 0x45E55F8E;
  v6 = v1 + 1172660110 < v4;
  if (v1 > 0xFFFFFFFFBA1AA071 != v5)
  {
    v6 = v5;
  }

  return (*(v3 + 8 * ((39 * !v6) ^ a1)))();
}

uint64_t sub_10011B290()
{
  STACK[0xAE0] = 0;
  LODWORD(STACK[0xAEC]) = -371865839;
  return (*(v1 + 8 * (v0 + 7956)))();
}

uint64_t sub_10011B320(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = v13 > v9;
  if (v15 == v11 + a8 < a4)
  {
    v15 = v11 + a8 < v8;
  }

  return (*(v12 + 8 * ((!v15 * v14) ^ v10)))();
}

uint64_t sub_10011B398@<X0>(uint64_t a1@<X8>)
{
  v9 = v7 - 1;
  *(a1 + v9) ^= *(v3 + (v9 & 0xF)) ^ *(v2 + (v9 & 0xF)) ^ ((v9 & 0xF) * v5) ^ *(v1 + (v9 & 0xF));
  return (*(v8 + 8 * (((v9 != 0) * v6) ^ v4)))();
}

uint64_t sub_10011B450()
{
  v3 = v0 - 1811785438;
  if ((v0 - 1811785438) <= 0x40)
  {
    v3 = 64;
  }

  return (*(v2 + 8 * ((249 * ((((v1 - 37715) | 0x4000) ^ 0xFFFF98DF) + v3 >= (((v1 - 29587) | 0x2004) ^ 0x94023FC5) + v0)) ^ v1)))();
}

void sub_10011B514(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (1012831759 * ((((2 * a1) | 0xE4A394F4) - a1 + 229520774) ^ 0xE2C2DCF0));
  v2 = *(a1 + 8);
  v3 = (*(v2 + 12) >> 3) & 0x3F;
  *(v2 + 20 + v3) = 0x80;
  __asm { BRAA            X13, X17 }
}

uint64_t sub_10011B610@<X0>(unint64_t a1@<X8>)
{
  STACK[0x3D0] = a1;
  STACK[0x3E0] = v2;
  STACK[0x3C0] = *(v3 + 8 * v1);
  v4 = (v1 + 12942);
  STACK[0x3C8] = v4;
  return (STACK[0x3C0])(4233447026, 4165216107, v4 ^ 0x5DF0, 678873970, 339436984, 336143497, 3277072, 1357747936);
}

uint64_t sub_10011B73C@<X0>(uint64_t a1@<X8>)
{
  v9 = v5 < 0xDEF5E7DF;
  *(a1 + v7) = *(v2 + (v7 & 0xF)) ^ *(v1 + v7) ^ *((v7 & 0xF) + v3 + 2) ^ (-39 * (v7 & 0xF)) ^ *(v4 + (v7 & 0xF));
  if (v9 == v7 + 1 > 0x210A1820)
  {
    v9 = v7 - 554309664 < v5;
  }

  return (*(v8 + 8 * ((v9 * ((v6 + 18813) ^ 0xB31)) ^ v6)))();
}

uint64_t sub_10011B870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, _DWORD *a14, uint64_t a15, int a16, int a17)
{
  *a13 = *(v18 + 8);
  *a14 = a17;
  return (*(v17 + 8 * a7))();
}

uint64_t sub_10011B8A4@<X0>(uint64_t a1@<X1>, int a2@<W7>, unint64_t a3@<X8>)
{
  v10 = *(a1 + v3 - 285260241) ^ v6;
  v11 = ((*(a1 + v3 + ((v4 + 22) ^ a3)) ^ v6) << 24) | ((*(a1 + v3 - 285260243) ^ v6) << 16) | ((*(a1 + v3 - 285260242) ^ v6) << 8) | v10;
  v12 = v11 - 2 * (v11 & a2 ^ v10 & v9);
  v13 = ((2 * (a1 & 0x22C ^ 0xC8219917)) ^ 0x9062322E) & (a1 ^ 0x26DEDF3B) ^ a1 & 0x22C ^ 0xC8219917 ^ ((2 * (a1 & 0x22C ^ 0xC8219917)) & 0x10014 | 0x200000);
  v14 = ((2 * (a1 ^ 0x26DEDF3B)) ^ 0x9062322E) & (a1 ^ 0x26DEDF3B) ^ (2 * (a1 ^ 0x26DEDF3B)) & 0x48008916;
  v15 = v13 ^ v14 & 0x2412028C ^ ((4 * v13) ^ 0x43166C0) & (v14 ^ 0x80211005);
  v16 = ((4 * v14) ^ 0x24B74294) & (v14 ^ 0x80211005) ^ v14 & 0x2412028C;
  v17 = v15 ^ v16 & 0x2433028C ^ ((16 * v15) ^ 0xA62A93FC) & (v16 ^ 0x210007);
  v18 = ((16 * v16) ^ 0x262302CC) & (v16 ^ 0x210007) ^ v16 & 0x2433028C;
  v19 = v17 ^ v18 & 0x2433028C ^ ((v17 << 8) ^ 0x24AA118C) & (v18 ^ 0x210017);
  *(v8 + 4 * (((a1 ^ (2 * (v19 ^ (((v18 << 8) ^ 0x533068C) & (v18 ^ 0x210017) ^ v18 & 0x2433028C) & 0x2433028C ^ ((v19 << 16) ^ 0xBD24028C) & (((v18 << 8) ^ 0x533068C) & (v18 ^ 0x210017) ^ v18 & 0x2433028C ^ 0x48000000) ^ ((v19 << 16) ^ 0xBD24028C) & 0x48210004))) >> 2) ^ 0x1FBF9D02)) = v12 + v7;
  return (*(v5 + 8 * ((42 * ((a1 - 285260240) > 0x3F)) ^ v4)))();
}

uint64_t sub_10011BCA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  LODWORD(a18) = 0;
  v103 = *(v29 - 200) >= 0xA4F4637C;
  LODWORD(v172) = v28 ^ 0x9D42;
  v185 = v27 & 0xFFFFFFF1 ^ 0x989A34AELL;
  v186 = v27 & 0xFFFFFFF4 ^ 0x989A34ABLL;
  v30 = *(v29 - 184);
  v31 = *(a16 + (*(v30 + v185) ^ 0x59));
  v32 = *(v30 + v186);
  HIDWORD(v174) = (v28 ^ 0x9D42) - 31602;
  v33 = v27 & 0xFFFFFFFC ^ 0x989A34A3;
  *(v29 - 224) = v33;
  v34 = v28;
  v35 = v27;
  v36 = *(v30 + v33);
  v187 = v35 & 0xFFFFFFF0 ^ 0x989A34AFLL;
  LODWORD(v33) = *(a17 + (v32 ^ 0x46)) ^ v32;
  v180 = v35 & 0xFFFFFFF5 ^ 0x989A34AALL;
  v37 = (v36 - ((2 * v36) & 0x87) - 61) ^ *(a17 + (v36 ^ 0x9C));
  v38 = *(a17 + (*(v30 + v187) ^ 0x9BLL)) ^ *(v30 + v187);
  v39 = (v38 ^ 0xBA17FFC8) & ((v31 << (BYTE4(v174) ^ 0xE5)) ^ 0xBA1771EA) | v38 & 0x15;
  v189 = v35 & 0xFFFFFFF9 ^ 0x989A34A6;
  v40 = ((*(a16 + (*(v30 + v180) ^ 0xD9)) << 8) ^ 0x64F1AF23) & (v33 ^ 0x64F1FF68);
  v41 = v33 & 0xDC;
  LODWORD(v33) = *(a16 + (*(v30 + v189) ^ 0xDALL));
  v184 = v35 ^ 0x989A34A2;
  v42 = *(v30 + v184);
  v43 = *(a13 + (v42 ^ 0x67));
  v44 = v40 | v41;
  v45 = v35;
  v177 = v35 & 0xFFFFFFFA ^ 0x989A34A7;
  v46 = *(v30 + v177);
  v47 = v35 & 0xFFFFFFF3 ^ 0x989A34AELL;
  *(v29 - 232) = v47;
  v48 = (((v42 ^ 0x72 ^ v43) << 24) ^ 0xF4EBDEFF) & (v37 ^ 0xFFEBDE1D);
  LODWORD(v46) = (*(a14 + (v46 ^ 0xA5)) ^ v46) << 16;
  v49 = (v46 ^ 0x5512FFC2) & ((v33 << 8) ^ 0x55DAEFC2) | v46 & 0x250000;
  v183 = v45 & 0xFFFFFFF2 ^ 0x989A34AFLL;
  v50 = (*(v30 + v47) - ((2 * *(v30 + v47)) & 0x54) + 42) ^ *(a13 + (*(v30 + v47) ^ 0x42));
  v181 = v45 & 0xFFFFFFF6 ^ 0x989A34ABLL;
  v52 = *(v30 + v181);
  v53 = 192 - (v52 ^ 0x94);
  v54 = v52 ^ 0x54;
  v55 = -v54 ^ v53 ^ 0x146DFF1D ^ (v54 - ((2 * v54) & 0x3A) + 342753053);
  v56 = !v103;
  v188 = v56;
  v51 = *(a14 + (*(v30 + v183) ^ 0xC6)) ^ *(v30 + v183);
  v57 = (v39 & 0x81628EB ^ 0x7726BCB2 ^ (((v50 ^ 0xFFFFFFC7) << 24) ^ 0xDDE1D714) & (v39 ^ 0x45F44CF3)) & ((v51 << 16) ^ 0xFF53FFFF) ^ (v51 << 16) & 0x2E0000;
  v179 = v45 & 0xFFFFFFF8 ^ 0x989A34A7;
  v58 = *(v30 + v179);
  v59 = ((v54 ^ *(a14 + (v55 + 192))) << 16) - (((v54 ^ *(a14 + (v55 + 192))) << 17) & 0x11E0000);
  v60 = *(a17 + (v58 ^ 0x54));
  v61 = v58 & 4;
  if ((v58 & 4 & v60) != 0)
  {
    v61 = -v61;
  }

  v182 = v45 & 0xFFFFFFF7 ^ 0x989A34AALL;
  v62 = (((v61 + (v60 ^ 0xC3)) ^ v58 & 0xFB) ^ 0x7FFFFF89) & (v49 ^ 0x6179D759) | ((v61 + (v60 ^ 0xC3)) ^ v58 & 0xFFFFFFFB) & 0x64;
  LODWORD(a27) = v45;
  v178 = v45 & 0xFFFFFFFE ^ 0x989A34A3;
  v63 = *(a14 + (*(v30 + v178) ^ 0x67)) ^ *(v30 + v178);
  v176 = v45 & 0xFFFFFFFD ^ 0x989A34A2;
  v175 = v45 & 0xFFFFFFFB ^ 0x989A34A6;
  v64 = ((((*(a16 + (*(v30 + v176) ^ 0x50)) << 8) ^ 0xE0462D4) & ~(v63 << 16) | (v63 << 16) & 0xFFFBFFFF) ^ 0xB8ECB6F9) & (v48 ^ 0x8A142142) ^ v48 & 0x490044D2;
  v65 = *(&off_1010A0B50 + v34 - 13692) - 1448821175;
  v173 = __PAIR64__(v62, v64);
  v66 = *(&off_1010A0B50 + v34 - 9950) - 1201186343;
  LODWORD(v174) = v57;
  v67 = BYTE1(v57) ^ 0x74;
  v68 = v44 ^ 0xE3;
  v69 = (v59 - 141565720) ^ 0xF78FE0E8 | v44 ^ 0x64F1E5E3;
  LODWORD(a23) = v34;
  v70 = *(&off_1010A0B50 + v34 - 11276) - 1419783367;
  LODWORD(a20) = *(a13 + (*(v30 + v175) ^ 0xE5)) ^ *(v30 + v175);
  v71 = (v62 ^ 0x588854F2) & ~((a20 ^ 0x24) << 24) ^ 0xF65A4A4F;
  v72 = *(&off_1010A0B50 + (v34 ^ 0x2690)) - 368755307;
  v73 = ((((v57 ^ 0x96E774E7) >> 16) ^ 0xEE39D4E6) - 1499375713 + *&v66[4 * (((v57 ^ 0x96E774E7) >> 16) ^ 0xD7)]) ^ *&v65[4 * ((v64 ^ 0x35AC89FA) >> 24)] ^ *&v72[4 * (v62 ^ 0xBD)] ^ ((BYTE1(v69) ^ 0x2E066D0D) - 260757752 + *&v70[4 * (BYTE1(v69) ^ 0xA3)]);
  v74 = ((BYTE1(v57) ^ 0x2E066D90) - 260757752 + *&v70[4 * (BYTE1(v57) ^ 0x3E)]) ^ *&v65[4 * (a20 ^ 0x74)] ^ *&v72[4 * (v68 ^ 0xA7)] ^ (*&v66[4 * (((v64 ^ 0x35AC89FA) >> 16) ^ 0xD7)] + (((v64 ^ 0x35AC89FA) >> 16) ^ 0xEE39D4E6) - 1499375713);
  HIDWORD(v75) = ((v64 ^ 0x89FA) >> 14) ^ 0xE6F22A;
  LODWORD(v75) = ((v64 ^ 0x35AC89FA) << 18) ^ 0xA4000000;
  v76 = ((BYTE2(v71) ^ 0xEE39D4E6) - 1499375713 + *&v66[4 * (BYTE2(v71) ^ 0xD7)]) ^ *&v72[4 * (v57 ^ 0xE7)] ^ ((((v64 ^ 0x89FA) >> 8) ^ 0x2E066DE4) - 260757752 + *&v70[4 * ((v75 >> 26) ^ 0x39BC8AE3)]);
  HIDWORD(v172) = v69 ^ ((*(v30 + v182) ^ 0x4F ^ *(a13 + (*(v30 + v182) ^ 0x63))) << 24);
  v77 = v76 ^ *&v65[4 * (HIBYTE(HIDWORD(v172)) ^ 0xCC)];
  v78 = ((BYTE2(v69) ^ 0xEE39D4D8) - 1499375713 + *&v66[4 * (BYTE2(v69) ^ 0xE9)]) ^ *&v65[4 * (v50 ^ 0x39)] ^ ((BYTE1(v71) ^ 0x2E066DE4) - 260757752 + *&v70[4 * (BYTE1(v71) ^ 0x4A)]) ^ *&v72[4 * (v37 ^ 0x7B)];
  v79 = *&v72[4 * ((((v67 ^ 0xE4) + 8 + v70[4 * (v67 ^ 0x4A)]) ^ v65[4 * (a20 ^ 0x74)] ^ v72[4 * (v68 ^ 0xA7)] ^ (v66[4 * (((v64 ^ 0x35AC89FA) >> 16) ^ 0xD7)] + (((v64 ^ 0x35AC89FA) >> 16) ^ 0xE6) - 97)) ^ 0x3F)] ^ *&v65[4 * ((v73 ^ 0xA08F4973) >> 24)] ^ ((BYTE1(v77) ^ 0x2E066D15) - 260757752 + *&v70[4 * (BYTE1(v77) ^ 0xBB)]) ^ (*&v66[4 * (((v78 ^ 0x30EFC0) >> 16) ^ 0xD7)] + (((v78 ^ 0x30EFC0) >> 16) ^ 0xEE39D4E6) - 1499375713);
  v80 = ((((v73 ^ 0xA08F4973) >> 16) ^ 0xEE39D4E6) - 1499375713 + *&v66[4 * (((v73 ^ 0xA08F4973) >> 16) ^ 0xD7)]) ^ *&v65[4 * (HIBYTE(v74) ^ 0x71)] ^ ((((v78 ^ 0xEFC0) >> 8) ^ 0x2E066DE4) - 260757752 + *&v70[4 * (((v78 ^ 0xEFC0) >> 8) ^ 0x4A)]) ^ *&v72[4 * ((v76 ^ v65[4 * (HIBYTE(HIDWORD(v172)) ^ 0xCC)]) ^ 0x9A)];
  v81 = ((BYTE2(v74) ^ 0xEE39D443) - 1499375713 + *&v66[4 * (BYTE2(v74) ^ 0x72)]) ^ *&v65[4 * (HIBYTE(v77) ^ 0xEE)] ^ *&v72[4 * (v78 ^ 0xC0)] ^ (*&v70[4 * (((v73 ^ 0x4973) >> 8) ^ 0x4A)] - ((((v73 ^ 0xA08F4973) >> 8) & 0xE4 | 0xD1F9921B) ^ ((v73 ^ 0xA08F4973) >> 8) & 0x1B) - 260757753);
  v82 = ((((v79 ^ 0x7798C44E) >> (v37 & 8)) - ((2 * ((v79 ^ 0x7798C44E) >> (v37 & 8))) & 0xB290DDBC) + 1497919198) ^ 0x59486EDE) >> (v37 & 8 ^ 8);
  v83 = *&v65[4 * HIBYTE(v78)] ^ ((BYTE1(v74) ^ 0x2E066DEC) - 260757752 + *&v70[4 * (BYTE1(v74) ^ 0x42)]) ^ *&v72[4 * (v73 ^ 0xEF)] ^ ((BYTE2(v77) ^ 0xEE39D484) - 1499375713 + *&v66[4 * (BYTE2(v77) ^ 0xB5)]) ^ 0x87AE6893;
  v84 = ((((BYTE2(v74) ^ 0xD443) + 22431 + *&v66[4 * (BYTE2(v74) ^ 0x72)]) ^ *&v65[4 * (HIBYTE(v77) ^ 0xEE)] ^ *&v72[4 * (v78 ^ 0xC0)] ^ (*&v70[4 * (((v73 ^ 0x4973) >> 8) ^ 0x4A)] - ((((v73 ^ 0xA08F4973) >> 8) & 0xE4 | 0x921B) ^ ((v73 ^ 0xA08F4973) >> 8) & 0x1B) + 9991) ^ 0x8F6C) >> 8);
  v85 = (((v80 ^ 0xB8D63785) >> 16) ^ 0xEE39D4E6) - 1499375713 + *&v66[4 * (((v80 ^ 0xB8D63785) >> 16) ^ 0xD7)];
  v86 = -(((v81 ^ 0x3C3B8F6C) >> 16) ^ 0x11C62B19) - 1499375714 + *&v66[4 * (((v81 ^ 0x3C3B8F6C) >> 16) ^ 0xD7)];
  v87 = (((v80 ^ 0x3785) >> 8) ^ 0x2E066DE4) - 260757752 + *&v70[4 * (((v80 ^ 0x3785) >> 8) ^ 0x4A)];
  v88 = *&v65[4 * (HIBYTE(v79) ^ 0xBD)] ^ *&v72[4 * ((((((v73 ^ 0xA08F4973) >> 16) ^ 0xE6) - 97 + v66[4 * (((v73 ^ 0xA08F4973) >> 16) ^ 0xD7)]) ^ v65[4 * (HIBYTE(v74) ^ 0x71)] ^ ((((v78 ^ 0xEFC0) >> 8) ^ 0xE4) + 8 + v70[4 * (((v78 ^ 0xEFC0) >> 8) ^ 0x4A)]) ^ v72[4 * ((v76 ^ v65[4 * (HIBYTE(HIDWORD(v172)) ^ 0xCC)]) ^ 0x9A)]) ^ 0x19)] ^ ((v84 ^ 0x2E066DE4) - 260757752 + *&v70[4 * (v84 ^ 0x4A)]) ^ (*&v66[4 * (BYTE2(v83) ^ 0xD7)] + (BYTE2(v83) ^ 0xEE39D4E6) - 1499375713) ^ 0x995247EF;
  v89 = *&v65[4 * ((v80 ^ 0xB8D63785) >> 24)] ^ ((BYTE2(v79) ^ 0xEE39D47E) - 1499375713 + *&v66[4 * (BYTE2(v79) ^ 0x4F)]) ^ *&v72[4 * (v81 ^ 0x6C)] ^ ((BYTE1(v83) ^ 0x2E066DE4) - 260757752 + *&v70[4 * (BYTE1(v83) ^ 0x4A)]);
  v90 = *&v65[4 * (HIBYTE(v81) ^ 0xF6)] ^ v85 ^ *&v72[4 * v83] ^ 0x2711CEBC ^ ((v82 ^ 0x2E066DE4) - 260757752 + *&v70[4 * (v82 ^ 0x4A)]);
  v91 = *&v65[4 * HIBYTE(v83)] ^ v86 ^ v87 ^ *&v72[4 * (v79 ^ 0xD2)] ^ 0x18699136;
  v92 = v89 ^ 0x6CB28502;
  v93 = ((BYTE1(v90) ^ 0x2E066DE4) - 260757752 + *&v70[4 * (BYTE1(v90) ^ 0x4A)]) ^ *&v65[4 * HIBYTE(v88)] ^ *&v72[4 * (v89 ^ 2)] ^ (*&v66[4 * (BYTE2(v91) ^ 0xD7)] + (BYTE2(v91) ^ 0xEE39D4E6) - 1499375713);
  v94 = ((BYTE2(v88) ^ 0xEE39D4E6) - 1499375713 + *&v66[4 * (BYTE2(v88) ^ 0xD7)]) ^ *&v65[4 * ((v89 ^ 0x6CB28502) >> 24)] ^ ((BYTE1(v91) ^ 0x2E066DE4) - 260757752 + *&v70[4 * (BYTE1(v91) ^ 0x4A)]) ^ *&v72[4 * v90];
  v95 = ((BYTE2(v92) ^ 0xEE39D4E6) - 1499375713 + *&v66[4 * (BYTE2(v92) ^ 0xD7)]) ^ *&v72[4 * v91] ^ (-260757753 - (BYTE1(v88) ^ 0xD1F9921B) + *&v70[4 * (BYTE1(v88) ^ 0x4A)]) ^ *&v65[4 * HIBYTE(v90)];
  v96 = ((BYTE2(v90) ^ 0xEE39D4E6) - 1499375713 + *&v66[4 * (BYTE2(v90) ^ 0xD7)]) ^ *&v65[4 * HIBYTE(v91)] ^ ((BYTE1(v92) ^ 0x2E066DE4) - 260757752 + *&v70[4 * (BYTE1(v92) ^ 0x4A)]) ^ *&v72[4 * v88];
  v97 = v96 ^ 0x9C8429DF;
  v98 = v95 ^ 0x225F3DEB;
  v99 = v93 ^ 0xA286D699;
  v100 = v94 ^ 0x9C1CB4B8;
  v101 = ((BYTE2(v99) ^ 0xEE39D4E6) - 1499375713 + *&v66[4 * (BYTE2(v99) ^ 0xD7)]) ^ *&v65[4 * ((v94 ^ 0x9C1CB4B8) >> 24)] ^ *&v72[4 * (v95 ^ 0x77)] ^ ((BYTE1(v97) ^ 0x2E066DE4) - 260757752 + *&v70[4 * (BYTE1(v97) ^ 0x4A)]);
  v102 = v96 ^ 0xDF;
  v103 = v102 >= 0xF1;
  if (v102 >= 0xF1)
  {
    v102 -= 241;
  }

  v104 = v97 + 15;
  if (!v103)
  {
    v104 = v96 ^ 0xDF;
  }

  if (v102)
  {
    v104 = 0;
  }

  v105 = ((BYTE2(v100) ^ 0xEE39D4E6) - 1499375713 + *&v66[4 * (BYTE2(v100) ^ 0xD7)]) ^ *&v65[4 * HIBYTE(v98)] ^ (((v99 >> 8) & 0xAC ^ 0x3EBE6FF7) + (BYTE1(v99) ^ 0xCB459148) + ((v99 >> 8) & 0xAC ^ 0x24026CA5) - 260757752 + *&v70[4 * (BYTE1(v99) ^ 0x4A)]) ^ *&v72[4 * ((v97 - v104) ^ 0x9C)];
  v106 = *&v65[4 * (HIBYTE(v93) ^ 0x68)] ^ *&v72[4 * (v94 ^ 0x24)] ^ ((BYTE1(v98) ^ 0x2E066DE4) - 260757752 + *&v70[4 * (BYTE1(v98) ^ 0x4A)]) ^ (*&v66[4 * (BYTE2(v97) ^ 0xD7)] + (BYTE2(v97) ^ 0xEE39D4E6) - 1499375713);
  v107 = ((BYTE2(v98) ^ 0xEE39D4E6) - 1499375713 + *&v66[4 * (BYTE2(v98) ^ 0xD7)]) ^ *&v65[4 * (HIBYTE(v96) ^ 0x56)] ^ ((BYTE1(v100) ^ 0x2E066DE4) - 260757752 + *&v70[4 * (BYTE1(v100) ^ 0x4A)]) ^ *&v72[4 * (v93 ^ 0x99)];
  v108 = ((((v105 ^ 0xFF9A) >> 8) ^ 0x2E066DE4) - 260757752 + *&v70[4 * (((v105 ^ 0xFF9A) >> 8) ^ 0x4A)]) ^ *&v65[4 * ((v106 ^ 0x50CB2599) >> 24)] ^ *&v72[4 * (v101 ^ 0x74)] ^ (*&v66[4 * (((v107 ^ 0xD72762FD) >> 16) ^ 0xD7)] + (((v107 ^ 0xD72762FD) >> 16) ^ 0xEE39D4E6) - 1499375713);
  v109 = (((v106 ^ 0x50CB2599) >> 16) ^ 0xEE39D4E6) - 1499375713 + *&v66[4 * (((v106 ^ 0x50CB2599) >> 16) ^ 0xD7)];
  v110 = ((BYTE2(v101) ^ 0xEE39D480) - 1499375713 + *&v66[4 * (BYTE2(v101) ^ 0xB1)]) ^ ((((v106 ^ 0x2599) >> 8) ^ 0x2E066DE4) - 260757752 + *&v70[4 * (BYTE1(v106) ^ 0x6F)]) ^ *&v72[4 * (v107 ^ 0xFD)] ^ *&v65[4 * (HIBYTE(v105) ^ 0xD7)];
  v111 = ((((v105 ^ 0x1DBFFF9A) >> 16) ^ 0xEE39D4E6) - 1499375713 + *&v66[4 * (((v105 ^ 0x1DBFFF9A) >> 16) ^ 0xD7)]) ^ *&v65[4 * (HIBYTE(v107) ^ 0x1D)] ^ ((BYTE1(v101) ^ 0x2E066DF0) - 260757752 + *&v70[4 * (BYTE1(v101) ^ 0x5E)]) ^ *&v72[4 * (v106 ^ 0x99)];
  v112 = *&v65[4 * (HIBYTE(v101) ^ 0x9D)] ^ ((((v107 ^ 0x62FD) >> 8) ^ 0x2E066DE4) - 260757752 + *&v70[4 * (((v107 ^ 0x62FD) >> 8) ^ 0x4A)]) ^ v109 ^ 0xA4514724 ^ *&v72[4 * (v105 ^ 0x9A)];
  v113 = v110 ^ 0x23259DBB;
  v114 = ((BYTE1(v113) ^ 0x2E066DE4) - 260757752 + *&v70[4 * (BYTE1(v113) ^ 0x4A)]) ^ *&v65[4 * (HIBYTE(v108) ^ 0x16)] ^ *&v72[4 * v112] ^ (*&v66[4 * (BYTE2(v111) ^ 0xB3)] + (BYTE2(v111) ^ 0xEE39D482) - 1499375713);
  v115 = (v108 & 0x10) == 0;
  v116 = v108 ^ 0xDCB8481D;
  v117 = ((BYTE2(v116) ^ 0xEE39D4E6) - 1499375713 + *&v66[4 * (BYTE2(v116) ^ 0xD7)]) ^ *&v65[4 * HIBYTE(v112)] ^ ((BYTE1(v111) ^ 0x2E066D0F) - 260757752 + *&v70[4 * (BYTE1(v111) ^ 0xA1)]) ^ *&v72[4 * (v110 ^ 0x27)];
  v118 = ((BYTE2(v112) ^ 0xEE39D4E6) - 1499375713 + *&v66[4 * (BYTE2(v112) ^ 0xD7)]) ^ *&v65[4 * ((v110 ^ 0x23259DBB) >> 24)];
  if (v115)
  {
    v119 = -16;
  }

  else
  {
    v119 = 16;
  }

  v120 = v119 + v116;
  v121 = v118 ^ *&v72[4 * (v111 ^ 0xAE)] ^ ((BYTE1(v116) ^ 0x2E066DE4) - 260757752 + *&v70[4 * (BYTE1(v116) ^ 0x4A)]);
  v122 = ((BYTE2(v113) ^ 0xEE39D4E6) - 1499375713 + *&v66[4 * (BYTE2(v113) ^ 0xD7)]) ^ *&v65[4 * (HIBYTE(v111) ^ 0xA3)] ^ ((BYTE1(v112) ^ 0x2E066DE4) - 260757752 + *&v70[4 * (BYTE1(v112) - ((v112 >> 7) & 0x94)) + 296]) ^ *&v72[4 * (-(v120 ^ 0x10) ^ (156 - (v120 ^ 0x8C)) ^ 0xB46D48F2 ^ ((v120 ^ 0x10) - ((2 * (v120 ^ 0x10)) & 0x1E4) - 1267906318)) + 624];
  v123 = v121 ^ 0x2488ACCA;
  v124 = ((((v121 ^ 0xACCA) >> 8) ^ 0x2E066DE4) - 260757752 + *&v70[4 * ((((v121 ^ 0xACCA) >> 8) | 0x4A) ^ ((v121 ^ 0x2488ACCA) >> 8) & 0x4A)]) ^ *&v65[4 * (HIBYTE(v114) ^ 0xBC)] ^ *&v72[4 * (v117 ^ 0x6C)] ^ (*&v66[4 * (BYTE2(v122) ^ 0x6A)] - (BYTE2(v122) ^ 0xE6A888ED) + ((2 * (BYTE2(v122) ^ 0xE6A888ED)) & 0xCC510092) - 1355631531);
  v125 = (BYTE2(v117) ^ 0xEE39D4F3) - 1499375713 + *&v66[4 * (BYTE2(v117) ^ 0xC2)];
  v126 = *&v65[4 * (HIBYTE(v121) ^ 0xEE)] ^ 0xE55B5C8;
  v127 = *&v72[4 * (v122 ^ 0x40)] ^ ((BYTE1(v114) ^ 0x2E066D6B) - 260757752 + *&v70[4 * (BYTE1(v114) ^ 0xC5)]) ^ (v125 + v126 - 2 * (v125 & v126));
  v128 = *&v65[4 * (HIBYTE(v117) ^ 0xDB)] ^ ((BYTE2(v114) ^ 0xEE39D448) - 1499375713 + *&v66[4 * (BYTE2(v114) ^ 0x79)]) ^ *&v72[4 * v123] ^ 0xE47807C ^ ((BYTE1(v122) ^ 0x2E066DE4) - 260757752 + *&v70[4 * (BYTE1(v122) ^ 0x4A)]);
  v129 = ((BYTE2(v123) ^ 0xEE39D4E6) - 1499375713 + *&v66[4 * (BYTE2(v123) ^ 0xD7)]) ^ ((((BYTE1(v117) ^ 0x79) - (BYTE1(v117) ^ 0xD1F99262)) ^ 1) - (BYTE1(v117) ^ 0x79) - 260757752 + *&v70[4 * (BYTE1(v117) ^ 0x33)]) ^ *&v72[4 * (v114 ^ 0xD9)] ^ *&v65[4 * (HIBYTE(v122) ^ 0xE9)];
  v130 = ((BYTE1(v127) ^ 0x2E066DF2) - 260757752 + *&v70[4 * (BYTE1(v127) ^ 0x5C)]) ^ *&v72[4 * v128] ^ __ROR4__(__ROR4__((*&v66[4 * (((v129 ^ 0xA4C9DA43) >> 16) ^ 0xD7)] + (((v129 ^ 0xA4C9DA43) >> 16) ^ 0xEE39D4E6) - 1499375713) ^ *&v65[4 * (HIBYTE(v124) ^ 0xD8)], 19) ^ 0xE42EDC02, 13);
  v131 = ((BYTE2(v124) ^ 0xEE39D4E7) - 1499375713 + *&v66[4 * (BYTE2(v124) ^ 0xD6)]) ^ *&v65[4 * HIBYTE(v128)] ^ ((((v129 ^ 0xDA43) >> 8) ^ 0x2E066DE4) - 260757752 + *&v70[4 * (((v129 ^ 0xDA43) >> 8) ^ 0x4A)]) ^ *&v72[4 * (v127 ^ 0xA7)];
  v132 = BYTE2(v127);
  v133 = (((BYTE2(v127) ^ 0x34) - (BYTE2(v127) ^ 0xE3)) ^ 0xFFFFFFFE) + (BYTE2(v127) ^ 0x34);
  v134 = ((BYTE2(v128) ^ 0xEE39D4E6) - 1499375713 + *&v66[4 * (BYTE2(v128) ^ 0xD7)]) ^ *&v65[4 * (HIBYTE(v127) ^ 0x52)] ^ ((BYTE1(v124) ^ 0x2E066DBE) - 260757752 + *&v70[4 * (BYTE1(v124) ^ 0x10)]) ^ *&v72[4 * (v129 ^ 0x43)];
  v135 = ((v132 ^ 0xEE39D4D2) - 1499375713 + *&v66[4 * v133]) ^ *&v65[4 * (HIBYTE(v129) ^ 0x6E)] ^ ((BYTE1(v128) ^ 0x2E066DE4) - 260757752 + *&v70[4 * (BYTE1(v128) ^ 0x4A)]) ^ *&v72[4 * (v124 ^ 0xD4) + 628 + 4 * ((2 * v124) & 0x138 ^ 0xFFFFFED7)];
  v136 = *(&off_1010A0B50 + v34 - 11212) - 835922567;
  v137 = *(&off_1010A0B50 + (v34 & 0x6CDCD1B3)) - 292026055;
  v138 = v131 ^ 0x1134AB93;
  v139 = v130 ^ 0xCA;
  v140 = *&v136[4 * ((v131 ^ 0x1134AB93) >> 24)] - 236831071;
  v141 = ((v130 ^ 0xFA468ACA) >> 16) ^ v140 ^ *&v137[4 * (((v130 ^ 0xFA468ACA) >> 16) ^ 0x22)] ^ (32 * v140) ^ (16 * v140) ^ 0xD5CB4DAA;
  v142 = (v141 & 0x2FE575D8 ^ 0x8365B6E4) & (v141 & 0xD01A8A27 ^ 0xEFED7DDF) | v141 & 0x501A0803;
  v143 = *&v136[4 * ((v130 ^ 0xFA468ACA) >> 24)];
  v144 = *&v136[4 * (HIBYTE(v134) ^ 0x95)];
  v145 = *&v136[4 * (HIBYTE(v135) ^ 0xF5)];
  v146 = BYTE2(v135);
  v147 = *&v137[4 * (BYTE2(v135) ^ 0xF8)];
  LODWORD(v136) = *&v137[4 * (((v131 ^ 0x1134AB93) >> 16) ^ 0x22)];
  v148 = BYTE2(v134);
  v149 = *&v137[4 * (BYTE2(v134) ^ 0x76)];
  v150 = *(&off_1010A0B50 + (v34 ^ 0x3751)) - 1935638450;
  v151 = *&v150[4 * (BYTE1(v134) ^ 0xF7)];
  v152 = *&v150[4 * (BYTE1(v135) ^ 0xAD)];
  v153 = *&v150[4 * (((v130 ^ 0x8ACA) >> 8) - (((v130 ^ 0xFA468ACA) >> 7) & 0x14A)) + 660];
  v154 = *&v150[4 * (BYTE1(v131) ^ 0xE)];
  v155 = *(&off_1010A0B50 + (a23 ^ 0x3774)) - 1503304367;
  v156 = *&v155[4 * (v131 ^ 0x8B)];
  v157 = *&v155[4 * (v135 ^ 0x93)];
  LODWORD(v150) = *&v155[4 * (v130 ^ 0xD2)];
  v158 = v134 ^ *(v29 - 216) ^ *&v155[4 * (v134 ^ 0xAC)] ^ v152 ^ (v152 >> 4) & 0xEF9120 ^ v142;
  v159 = *(&off_1010A0B50 + a23 - 13769) - 1782179946;
  *(v30 + v177) = (v159[BYTE2(v158) ^ 0x6CLL] - 69) ^ 0x55;
  LODWORD(v155) = v144 - 236831071;
  v160 = v135 ^ *(v29 - 212) ^ v157 ^ v153 ^ ((v136 & 0x926E8D64 ^ HIWORD(v138) & 0x64 ^ 0x6D917A9F) & (HIWORD(v138) & 0x9B ^ 0xF9070E9E ^ v136 & 0x6D91729B) | (v136 & 0x926E8D64 ^ HIWORD(v138) & 0x64) & 0x2688160) ^ (v153 >> 4) & 0xEF9120 ^ (((236831071 - v144) ^ (v144 - ((2 * (v144 - 236831071)) & 0xF0C8F12C) - 364464329) ^ (((32 * v155) ^ (16 * v155)) - ((32 * v155) ^ (16 * v155) ^ (v144 - 236831071))) ^ 0xF8647896) + ((32 * v155) ^ (16 * v155)));
  v161 = *(&off_1010A0B50 + a23 - 11805) - 642167646;
  *(v30 + v180) = v161[BYTE1(v160) ^ 0x8ALL] ^ BYTE1(v160) ^ 0x17;
  v162 = v139 ^ *(v29 - 208) ^ v148 ^ v149 ^ (v145 - 236831071) ^ (16 * (v145 - 236831071)) ^ (32 * (v145 - 236831071)) ^ v154 ^ v150;
  LODWORD(v136) = v162 ^ (v154 >> 4) & 0xEF9120;
  *(v30 + v185) = v161[BYTE1(v136) ^ 0x13] ^ BYTE1(v136) ^ 0x83;
  v163 = *(&off_1010A0B50 + a23 - 10709) - 1112534230;
  *(v30 + v175) = (v163[HIBYTE(v158) ^ 0x99] + 81) ^ 0x54;
  v164 = *(&off_1010A0B50 + a23 - 12209) - 1777652114;
  *(v30 + v186) = v164[v160 ^ 0x32] ^ 0x10;
  v165 = v138 ^ *(v29 - 204) ^ v147 ^ (v143 - 236831071) ^ (16 * (v143 - 236831071)) ^ (32 * (v143 - 236831071)) ^ v146 ^ v151 ^ v156;
  v166 = v165 ^ (v151 >> 4) & 0xEF9120;
  *(v30 + v176) = BYTE1(v166) ^ v161[BYTE1(v166) ^ 0xF2] ^ 0x60;
  *(v30 + v179) = v164[v158 ^ 0xD4] ^ 0xBC;
  *(v30 + v184) = (v163[((HIBYTE(v165) & 0x1F ^ 0x311D37B5) & (HIBYTE(v165) & 0xE0 ^ 0x31FDB7DF) | HIBYTE(v165) & 0x40) ^ 0x311D37A8] + 81) ^ 0x8D;
  *(v30 + v187) = v164[(v162 ^ (v154 >> 4) & 0x20) ^ 0xFALL] ^ 0xAC;
  *(v30 + *(v29 - 224)) = v164[(v165 ^ (v151 >> 4) & 0x20) ^ 0xE0] ^ 0x18;
  *(v30 + v183) = (v159[BYTE2(v136) ^ 0xC1] - 69) ^ 0xD1;
  *(v30 + v181) = (v159[BYTE2(v160) ^ 0x7DLL] - 69) ^ 0xF4;
  *(v30 + v178) = (v159[BYTE2(v166) ^ 0xFALL] - 69) ^ 0x47;
  *(v30 + v189) = BYTE1(v158) ^ 0x47 ^ v161[BYTE1(v158) ^ 0xBDLL];
  v167 = (((v45 ^ 0x4052E632) - 1079174706) ^ ((v45 ^ 0xE33D8BF3) + 482505741) ^ ((v45 ^ 0x3BF55963) - 1005934947)) - 1595609585;
  *(v30 + *(v29 - 232)) = (v163[HIBYTE(v162) ^ 0xB1] + 81) ^ 0xCE;
  v168 = ((v167 ^ 0x61B85D41) - 1777525788) ^ v167 ^ ((v167 ^ 0x64922EB7) - 1826133994) ^ ((v167 ^ 0xF39E955C) + 69981183) ^ ((v167 ^ 0xFEFE5FF7) + 155916630);
  *(v30 + v182) = (v163[HIBYTE(v160) ^ 0xD2] + 81) ^ 0xB4;
  v169 = (((v168 ^ 0xDA0EB7E3) - 1256077852) ^ ((v168 ^ 0xC6562832) - 1451664845) ^ ((v168 ^ 0x1412268C) + 2067616909)) + 1032755230;
  LODWORD(v136) = v188 ^ (v169 < 0xA4F4637C);
  v170 = v169 < *(v29 - 200);
  if (v136)
  {
    v170 = v188;
  }

  return (*(*(v29 - 192) + 8 * ((55 * v170) ^ a23)))(838711263, v154, 4058136225, 15700256, 23, v163, a23, v151, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v172, a20, v173, v174, a23, v175, v176, v177, a27, v178, v179, v180, v181);
}

uint64_t sub_10011DB6C(uint64_t a1, char a2)
{
  *v6 = (v2 ^ a2) * (v2 + 17);
  *(v6 - 1) = (v4 ^ v2) * (v2 + 18);
  return (*(v7 + 8 * ((14 * (v5 == 0)) ^ v3)))();
}

void sub_10011DBF0(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (1012831759 * ((a1 - 2 * (a1 & 0x3E67699A) + 1046964634) ^ 0x2EF47F10));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10011DC9C(int a1, char a2, char a3, char a4, char a5, char a6, char a7, int a8)
{
  v18 = v14 - 1;
  v19 = ((v15 << ((v16 + v8) ^ v11)) & v12 ^ a1) & v15;
  v20 = ((2 * (v15 ^ v10)) ^ a2) & (v15 ^ v10) ^ (2 * (v15 ^ v10)) & a3;
  *(v17 + v18) = (v15 ^ (2 * ((((4 * (v20 ^ a4)) ^ a6) & (v20 ^ a4) ^ (4 * (v20 ^ a4)) & a7) & (16 * ((v20 ^ a5) & (4 * v19) ^ v19)) ^ (v20 ^ a5) & (4 * v19) ^ v19)) ^ 0xF3) * (v15 + 90);
  return (*(v13 + 8 * (((v18 != 0) * a8) ^ v9)))();
}

uint64_t sub_10011DD2C()
{
  v4 = *(&off_1010A0B50 + v0 - 13503) - 695051178;
  v5 = v4[*(v3 - 101) ^ 0x78];
  v6 = *(&off_1010A0B50 + v0 - 12519) - 1650303250;
  HIDWORD(v8) = v5 ^ 6;
  LODWORD(v8) = ((((v0 - 14275) | 0x180C) - 110) ^ v5) << 24;
  v7 = v8 >> 29;
  v9 = v4[*(v3 - 109) ^ 0x30];
  HIDWORD(v8) = v9 ^ 6;
  LODWORD(v8) = (v9 ^ 0x20) << 24;
  v10 = *(&off_1010A0B50 + (v0 ^ 0x32CD)) - 904592534;
  v11 = ((v6[*(v3 - 104) ^ 0xD4] << 24) ^ 0x43F9E456) & (v7 ^ 0xFFFDFE76) | v7 & 0xA9;
  v12 = (v10[*(v3 - 107) ^ 0x82] - 34) << 16;
  v13 = (v12 ^ 0xFF87FFFF) & ((v6[*(v3 - 108) ^ 0xBELL] << 24) ^ 0x6A8CFC97) | v12 & 0x730000;
  v14 = *(&off_1010A0B50 + v0 - 12697) - 1193791314;
  v15 = (((((*(v3 - 106) ^ 0xDB) - 105) ^ *(v3 - 106) ^ 0xDB ^ v14[*(v3 - 106) ^ 0xBCLL]) << 8) ^ 0x769C3EC8) & (v13 ^ 0x1E11037E);
  v16 = (v10[*(v3 - 99) ^ 0x75] - 34) << 16;
  v17 = (v16 ^ 0xFF26AFB4) & ((v6[*(v3 - 100) ^ 0x27] << 24) ^ 0xA8BEAFB4) | v16 & 0x410000;
  v18 = (*(v3 - 98) ^ 0xB5 ^ ((*(v3 - 98) ^ 0xB5) - 105) ^ v14[*(v3 - 98) ^ 0xD2]) << 8;
  v19 = (v18 ^ 0xFFFFF1FF) & (v17 ^ 0x72BB3C41);
  v20 = v18 & 0x6C00;
  v21 = v6[*(v3 - 112) ^ 0xC6] << 24;
  v22 = v4[*(v3 - 97) ^ 0xCLL];
  v23 = (((((v10[*(v3 - 111) ^ 0xA5] - 34) << 16) ^ 0x4CEC1224) & ((v8 >> 29) ^ 0x7EFF1FA6) | (v8 >> 29) & 0xDB) ^ 0x3DEDA55F) & (v21 ^ 0xE1FFBFFF);
  HIDWORD(v8) = v22 ^ 6;
  LODWORD(v8) = (v22 ^ 0x20) << 24;
  v24 = (~(v8 >> 29) | 0xFFFFFF00) & ((v20 | v19) ^ 0x2D32D4F3);
  v25 = (v8 >> 29) & 0xF9;
  v26 = (v10[*(v3 - 103) ^ 0x57] - 34) << 16;
  v27 = (*(v3 - 110) ^ 0x16 ^ ((*(v3 - 110) ^ 0x16) - 105) ^ v14[*(v3 - 110) ^ 0x71]) << 8;
  v28 = (v27 ^ 0xFFFFBAFF) & (v21 & 0x8E000000 ^ 0xFAEA2A61 ^ v23);
  v29 = v27 & 0x6200;
  v30 = v4[*(v3 - 105) ^ 0xF4];
  HIDWORD(v8) = v30 ^ 6;
  LODWORD(v8) = (v30 ^ 0x20) << 24;
  *(v3 - 136) = v26 & 0x8A0000 ^ 0x6182FE39 ^ (((((*(v3 - 102) ^ 0xD ^ ((*(v3 - 102) ^ 0xD) - 105) ^ v14[*(v3 - 102) ^ 0x6ALL]) << 8) ^ 0xDDD4D0C) & (v11 ^ 0x3B241B48) | v11 & 0xF20000F3) ^ 0x4AA8F60A) & (v26 ^ 0xFFC6FFFF);
  *(v3 - 124) = (v25 | v24) ^ 0x9FB64E8A;
  *(v3 - 128) = ((v8 >> 29) & 4 | (~(v8 >> 29) | 0xFFFFFF00) & ((v15 | v13 & 0x89630001) ^ 0x5E602332)) ^ 0x933D692E;
  *(v3 - 132) = v29 ^ 0x3D613CA9 ^ v28;
  v31 = -1859285028 - (((v1 ^ 0x39474A11) - 1073665985) ^ ((v1 ^ 0x2BD04D89) - 761909337) ^ ((v1 ^ 0xBD7A7300) + 1144787248));
  v32 = -524412986 - (((v1 ^ 0x838A2F3F) + 17616046) ^ ((v1 ^ 0x1C0E07B0) - 1635195869) ^ ((v1 ^ 0xDA69E79D) + 1492059152));
  v33 = (v32 ^ 0x97207F41) + 1905093628;
  v34 = (v32 ^ 0x99E94709) + 2135184308;
  v35 = (v32 ^ 0x68E42CBA) - 1907804159;
  v36 = (v32 ^ 0x7F7FFFB7) - 1714230514;
  v37 = v32 ^ v1 ^ v31 ^ ((v31 ^ 0x865E09CC) + 689982378) ^ ((v31 ^ 0x173E670E) - 1203755668) ^ ((v31 ^ 0x3E1E3DB4) - 1855946798) ^ ((v31 ^ 0xFFFFEEEC) + 1350675594) ^ v34 ^ v33 ^ v35 ^ v36;
  v38 = (((v37 ^ 0x237BD0E1) - 1975084445) ^ ((v37 ^ 0x9D304BED) + 873267567) ^ ((v37 ^ 0xB27502C1) + 457721923)) - 1772102902;
  v39 = ((v38 ^ 0xA7771E96) + 166335399) ^ v38 ^ ((v38 ^ 0xC8299003) + 1723112756) ^ ((v38 ^ 0xD5D3A3A5) + 2068754070) ^ ((v38 ^ 0xEBEFDFFF) + 1165152976);
  *(v3 - 120) = (((v39 ^ 0x85418AFE) - 1842607606) ^ ((v39 ^ 0x4B3133E0) + 1549579032) ^ ((v39 ^ 0x7512F05B) + 1652519085)) + 1824250936;
  return (*(v2 + 8 * v0))(v33, v34, v35, v36, 2580736782, 9043968, v4, v14);
}

void sub_10011E470(uint64_t a1)
{
  v1 = *(a1 + 4) - 1022166737 * ((-2 - ((a1 | 0x9BB66C1A) + (~a1 | 0x644993E5))) ^ 0xDE597277);
  v5 = *(a1 + 8);
  v4 = *(&off_1010A0B50 + (v1 ^ 0x9A97)) - v5 - 448412727 < 0x10 || *(&off_1010A0B50 + (v1 ^ 0x9E15)) + 4 - v5 - 842714315 < 0x10 || *(&off_1010A0B50 + (v1 ^ 0x9F46)) + 4 - v5 - 1600347890 < 0x10;
  __asm { BRAA            X15, X17 }
}

void sub_100120618(_DWORD *a1)
{
  v1 = *a1 + 1012831759 * ((a1 - 2 * (a1 & 0x2889C568) + 680117608) ^ 0x381AD3E2);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100120778(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int8x16_t a29, int8x16_t a30, int8x16_t a31, int8x16_t a32, int8x16_t a33, int64x2_t a34, int8x16_t a35, int64x2_t a36, int8x16_t a37, int8x16_t a38, uint64_t a39, uint64_t a40, int8x16_t a41, int64x2_t a42, int8x16_t a43, int8x16_t a44, int8x16_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int8x16_t a50, uint64_t a51, uint64_t a52, int8x16_t a53, int8x16_t a54)
{
  *&v59 = v56 + a3 - 15;
  v60 = *(v56 + a3 - 16);
  *(&v59 + 1) = v56 + a3 - 16;
  *&STACK[0x280] = v59;
  *&STACK[0x290] = v60;
  *&v60 = v56 + a3 - 13;
  *(&v60 + 1) = v56 + a3 - 14;
  *&STACK[0x260] = v60;
  *&v60 = v56 + a3 - 11;
  *(&v60 + 1) = v56 + a3 - 12;
  *&STACK[0x2C0] = v60;
  v61.i64[0] = v56 + a3 - 7;
  v61.i64[1] = v56 + a3 - 8;
  v62.i64[0] = v56 + a3 - 3;
  v62.i64[1] = v56 + a3 - 4;
  v63.i64[0] = v56 + a3 - 1;
  v63.i64[1] = v56 + a3 - 2;
  v64.i64[0] = v56 + a3 - 5;
  v64.i64[1] = v56 + a3 + (a5 ^ v54);
  v65 = vandq_s8(v64, a30);
  v66 = vandq_s8(v63, a30);
  v67 = vandq_s8(v62, a30);
  v68 = vandq_s8(v61, a30);
  v69 = vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL);
  v70 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v71 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v72 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v73 = vdupq_n_s64(a4);
  v74 = vsubq_s64(a42, vaddq_s64(vorrq_s8(vsubq_s64(a36, v69), a54), vorrq_s8(vaddq_s64(v69, *&STACK[0x2A0]), a31)));
  v75 = vsubq_s64(a42, vaddq_s64(vorrq_s8(vsubq_s64(a36, v70), a54), vorrq_s8(vaddq_s64(v70, *&STACK[0x2A0]), a31)));
  v76 = veorq_s8(v75, a35);
  v77 = veorq_s8(v74, a35);
  v78 = veorq_s8(v74, a53);
  v79 = veorq_s8(v75, a53);
  v80 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v79);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v78);
  v82 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v81, v81), a41), v81), a34), a50);
  v83 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v80, v80), a41), v80), a34), a50);
  v84 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v85 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v86 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v84), a38);
  v87 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v85), a38);
  v88 = vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL);
  v89 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v90 = veorq_s8(v86, v88);
  v91 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v90);
  v93 = veorq_s8(vaddq_s64(v91, v89), a33);
  v94 = veorq_s8(v92, a33);
  v95 = vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL);
  v96 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v97 = veorq_s8(v93, v95);
  v98 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v97);
  v100 = vaddq_s64(v98, v96);
  v101 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v99, a45), vorrq_s8(v99, v58)), v58), a37);
  v102 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v100, a45), vorrq_s8(v100, v58)), v58), a37);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v104 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), a32);
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v104), a32);
  v107 = vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL);
  v108 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v109 = veorq_s8(v105, v107);
  v110 = vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL);
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v109);
  v112 = veorq_s8(vaddq_s64(v110, v108), a44);
  v113 = vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL);
  v114 = veorq_s8(v111, a44);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v116 = veorq_s8(v112, v113);
  v117 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v118 = vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL);
  v119 = vsubq_s64(a42, vaddq_s64(vorrq_s8(vsubq_s64(a36, v71), a54), vorrq_s8(vaddq_s64(v71, *&STACK[0x2A0]), a31)));
  v213.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v118, v116), a43), vnegq_s64(vandq_s8(vshlq_n_s64(v61, 3uLL), v73)));
  v213.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v117, v115), a43), vnegq_s64(vandq_s8(vshlq_n_s64(v62, 3uLL), v73)));
  v120 = veorq_s8(v119, a35);
  v121 = veorq_s8(v119, a53);
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121);
  v123 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v122, v122), a41), v122), a34), a50);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124), a38);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v127 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126), a33);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v129, a45), vorrq_s8(v129, v58)), v58), a37);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v132 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131), a32);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v134 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133), a44);
  v135.i64[0] = v56 + a3 - 9;
  v135.i64[1] = v56 + a3 - 10;
  v136 = vandq_s8(v135, a30);
  v137 = vsubq_s64(a42, vaddq_s64(vorrq_s8(vsubq_s64(a36, v72), a54), vorrq_s8(vaddq_s64(v72, *&STACK[0x2A0]), a31)));
  *&STACK[0x230] = v73;
  v213.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL))), a43), vnegq_s64(vandq_s8(vshlq_n_s64(v63, 3uLL), v73)));
  v138 = veorq_s8(v137, a35);
  v139 = veorq_s8(v137, a53);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v140, v140), a41), v140), a34), a50);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v143 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142), a38);
  v144 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v145 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v144), a33);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v147 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v146);
  v148 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v147, a45), vorrq_s8(v147, v58)), v58), a37);
  v149 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v150 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v149), a32);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v152 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151), a44);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v154 = vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL);
  v155 = vandq_s8(*&STACK[0x2C0], a30);
  v156 = vaddq_s64(v154, v153);
  v157 = vandq_s8(*&STACK[0x260], a30);
  v213.val[2] = vshlq_u64(veorq_s8(v156, a43), vnegq_s64(vandq_s8(vshlq_n_s64(v64, 3uLL), v73)));
  v158 = vandq_s8(*&STACK[0x280], a30);
  v159 = vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL);
  v160 = vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL);
  v161 = vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL);
  v162 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v163 = vaddq_s64(vorrq_s8(vsubq_s64(a36, v162), a54), vorrq_s8(vaddq_s64(v162, *&STACK[0x2A0]), a31));
  v164 = vsubq_s64(a42, vaddq_s64(vorrq_s8(vsubq_s64(a36, v159), a54), vorrq_s8(vaddq_s64(v159, *&STACK[0x2A0]), a31)));
  v165 = vsubq_s64(a42, vaddq_s64(vorrq_s8(vsubq_s64(a36, v160), a54), vorrq_s8(vaddq_s64(v160, *&STACK[0x2A0]), a31)));
  v159.i64[0] = vqtbl4q_s8(v213, a29).u64[0];
  v213.val[0] = veorq_s8(v165, a35);
  v213.val[1] = veorq_s8(v164, a35);
  v213.val[2] = veorq_s8(v164, a53);
  v213.val[3] = veorq_s8(v165, a53);
  v213.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213.val[0], 0x38uLL), v213.val[0], 8uLL), v213.val[3]);
  v213.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213.val[1], 0x38uLL), v213.val[1], 8uLL), v213.val[2]);
  v213.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v213.val[1], v213.val[1]), a41), v213.val[1]), a34), a50);
  v213.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v213.val[0], v213.val[0]), a41), v213.val[0]), a34), a50);
  v166 = vsraq_n_u64(vshlq_n_s64(v213.val[2], 3uLL), v213.val[2], 0x3DuLL);
  v213.val[2] = veorq_s8(v213.val[0], vsraq_n_u64(vshlq_n_s64(v213.val[3], 3uLL), v213.val[3], 0x3DuLL));
  v213.val[3] = veorq_s8(v213.val[1], v166);
  v167 = vsraq_n_u64(vshlq_n_s64(v213.val[0], 0x38uLL), v213.val[0], 8uLL);
  v213.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213.val[1], 0x38uLL), v213.val[1], 8uLL), v213.val[3]);
  v213.val[1] = veorq_s8(vaddq_s64(v167, v213.val[2]), a38);
  v168 = vsraq_n_u64(vshlq_n_s64(v213.val[2], 3uLL), v213.val[2], 0x3DuLL);
  v213.val[0] = veorq_s8(v213.val[0], a38);
  v213.val[2] = veorq_s8(v213.val[0], vsraq_n_u64(vshlq_n_s64(v213.val[3], 3uLL), v213.val[3], 0x3DuLL));
  v213.val[3] = veorq_s8(v213.val[1], v168);
  v169 = vsraq_n_u64(vshlq_n_s64(v213.val[0], 0x38uLL), v213.val[0], 8uLL);
  v213.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213.val[1], 0x38uLL), v213.val[1], 8uLL), v213.val[3]);
  v213.val[1] = veorq_s8(vaddq_s64(v169, v213.val[2]), a33);
  v213.val[0] = veorq_s8(v213.val[0], a33);
  v170 = vsraq_n_u64(vshlq_n_s64(v213.val[2], 3uLL), v213.val[2], 0x3DuLL);
  v213.val[2] = veorq_s8(v213.val[0], vsraq_n_u64(vshlq_n_s64(v213.val[3], 3uLL), v213.val[3], 0x3DuLL));
  v213.val[3] = veorq_s8(v213.val[1], v170);
  v171 = vsraq_n_u64(vshlq_n_s64(v213.val[0], 0x38uLL), v213.val[0], 8uLL);
  v213.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213.val[1], 0x38uLL), v213.val[1], 8uLL), v213.val[3]);
  v213.val[1] = vaddq_s64(v171, v213.val[2]);
  v213.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v213.val[0], a45), vorrq_s8(v213.val[0], v58)), v58), a37);
  v213.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v213.val[1], a45), vorrq_s8(v213.val[1], v58)), v58), a37);
  v213.val[2] = veorq_s8(v213.val[1], vsraq_n_u64(vshlq_n_s64(v213.val[2], 3uLL), v213.val[2], 0x3DuLL));
  v213.val[3] = veorq_s8(v213.val[0], vsraq_n_u64(vshlq_n_s64(v213.val[3], 3uLL), v213.val[3], 0x3DuLL));
  v213.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213.val[1], 0x38uLL), v213.val[1], 8uLL), v213.val[2]), a32);
  v213.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213.val[0], 0x38uLL), v213.val[0], 8uLL), v213.val[3]), a32);
  v172 = vsraq_n_u64(vshlq_n_s64(v213.val[2], 3uLL), v213.val[2], 0x3DuLL);
  v213.val[2] = veorq_s8(v213.val[0], vsraq_n_u64(vshlq_n_s64(v213.val[3], 3uLL), v213.val[3], 0x3DuLL));
  v213.val[3] = veorq_s8(v213.val[1], v172);
  v173 = vsraq_n_u64(vshlq_n_s64(v213.val[0], 0x38uLL), v213.val[0], 8uLL);
  v213.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213.val[1], 0x38uLL), v213.val[1], 8uLL), v213.val[3]);
  v213.val[1] = veorq_s8(vaddq_s64(v173, v213.val[2]), a44);
  v213.val[0] = veorq_s8(v213.val[0], a44);
  v174 = vsraq_n_u64(vshlq_n_s64(v213.val[2], 3uLL), v213.val[2], 0x3DuLL);
  v213.val[2] = veorq_s8(v213.val[0], vsraq_n_u64(vshlq_n_s64(v213.val[3], 3uLL), v213.val[3], 0x3DuLL));
  v175 = vsubq_s64(a42, vaddq_s64(vorrq_s8(vsubq_s64(a36, v161), a54), vorrq_s8(vaddq_s64(v161, *&STACK[0x2A0]), a31)));
  v213.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213.val[1], 0x38uLL), v213.val[1], 8uLL), veorq_s8(v213.val[1], v174)), a43), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x280], 3uLL), *&STACK[0x230])));
  v213.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213.val[0], 0x38uLL), v213.val[0], 8uLL), v213.val[2]), a43), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x260], 3uLL), *&STACK[0x230])));
  v176 = veorq_s8(v175, a35);
  v177 = veorq_s8(v175, a53);
  v178 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177);
  v179 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v178, v178), a41), v178), a34), a50);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v181 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180), a38);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v183 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182), a33);
  v184 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v185 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), v184);
  v186 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v185, a45), vorrq_s8(v185, v58)), v58), a37);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v188 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187), a32);
  v189 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v190 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v189), a44);
  v191 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL)));
  v192 = vsubq_s64(a42, v163);
  v213.val[1] = vshlq_u64(veorq_s8(v191, a43), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2C0], 3uLL), *&STACK[0x230])));
  v193 = veorq_s8(v192, a35);
  v194 = veorq_s8(v192, a53);
  v195 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v194);
  v196 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v195, v195), a41), v195), a34), a50);
  v197 = veorq_s8(v196, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v198 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), v197), a38);
  v199 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v200 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199), a33);
  v201 = vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL);
  v202 = vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL);
  v203 = veorq_s8(v200, v201);
  v204 = vaddq_s64(v202, v203);
  v205 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v204, a45), vorrq_s8(v204, v58)), v58), a37);
  v206 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL));
  v207 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), v206), a32);
  v208 = vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL);
  v209 = vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL);
  v210 = veorq_s8(v207, v208);
  v211 = veorq_s8(vaddq_s64(v209, v210), a44);
  v213.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), veorq_s8(v211, vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL))), a43), vnegq_s64(vandq_s8(vshlq_n_s64(v135, 3uLL), *&STACK[0x230])));
  v159.i64[1] = vqtbl4q_s8(v213, a29).u64[0];
  v213.val[0] = vrev64q_s8(v159);
  *(a7 + a3) = veorq_s8(vextq_s8(v213.val[0], v213.val[0], 8uLL), *&STACK[0x290]);
  return (*(STACK[0x2F0] + 8 * (((v57 != 0) * v55) ^ a8)))();
}

void sub_1001211F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (*(a1 + 16) ^ 0x6FDBEFF9D7BFAFF8) - 0x6FDBEFF91EBDD4C9 + ((2 * *(a1 + 16)) & 0xDFB7DFF3AF7F5FF0);
  v4 = v3 < 0xB901DB2F;
  v5 = v3 > v2 + 3103906607u;
  if (v2 > 0xFFFFFFFF46FE24D0 == v4)
  {
    v4 = v5;
  }

  v1 = *(a1 + 24) - 297845113 * (a1 ^ 0x77331C9E);
  __asm { BRAA            X14, X17 }
}

uint64_t sub_1001213F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62, int a63)
{
  LODWORD(STACK[0x278]) = v69;
  LODWORD(STACK[0x3A8]) = a6;
  LODWORD(STACK[0x3AC]) = v68;
  LODWORD(STACK[0x2F0]) = a7;
  LODWORD(STACK[0x31C]) = a68;
  LOWORD(STACK[0x236]) = a67;
  LOWORD(STACK[0x292]) = v70;
  LODWORD(STACK[0x27C]) = a61;
  LOWORD(STACK[0x38E]) = a64;
  return (*(v71 + 8 * a25))();
}

uint64_t sub_100121434(uint64_t a1, unsigned int a2)
{
  v5 = (((v3 ^ 0xA1E21A40) + 633115527) ^ ((v3 ^ 0xB06AE3E4) + 875850275) ^ ((v3 ^ 0x83FC488C) + ((v2 + 640299685) & 0xD9D5B776) + 128093157)) - 236218340;
  v6 = v5 < 0x815D10B;
  v7 = v5 > a2 + 135647499;
  if (a2 > 0xF7EA2EF4 != v6)
  {
    v7 = v6;
  }

  return (*(v4 + 8 * ((63898 * v7) ^ v2)))();
}

uint64_t sub_100121500@<X0>(int a1@<W8>)
{
  v4 = (((v3 ^ 0x1BD0CA9A) - 466668186) ^ ((v3 ^ 0xFB733148) + 76336824) ^ ((v3 ^ 0x9763CC3) - 158773806 + ((a1 - 12916) | 0x650B))) - 520869810;
  v5 = (((v2 ^ 0x60B8E165) - 1622729061) ^ ((v2 ^ 0x723337C2) - 1915959234) ^ ((v2 ^ 0xFB5E11B6) + 77721162)) - 520869810;
  v6 = (v4 < 0xF71E613D) ^ (v5 < 0xF71E613D);
  v7 = v4 < v5;
  if (v6)
  {
    v7 = v5 < 0xF71E613D;
  }

  return (*(v1 + 8 * (((2 * !v7) | (32 * !v7)) ^ a1)))();
}

uint64_t sub_100121630@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  if (*(a1 + 16))
  {
    v4 = 1;
  }

  else
  {
    v4 = *a1 + v2 == ((579 * (a2 ^ 0x7EA7) + 1423534563) ^ (367 * (a2 ^ 0x7E35)));
  }

  v5 = !v4;
  return (*(v3 + 8 * ((84 * v5) ^ a2)))();
}

uint64_t sub_100121870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v10 = v9;
  v10[1] = v9;
  v11 = *(a8 + 8 * (v8 + 8379));
  STACK[0x278] = v10;
  return v11();
}

uint64_t sub_100121DAC@<X0>(int a1@<W8>)
{
  v6 = 23958;
  atomic_compare_exchange_strong(v5, &v6, v2);
  return (*(v4 + 8 * (((v6 == v3) * v1) ^ a1)))();
}

uint64_t sub_100121DD0(int a1)
{
  v8 = (v1 + v3);
  v9 = (v5 + v3);
  v10 = v8[1];
  *v9 = *v8;
  v9[1] = v10;
  return (*(v7 + 8 * (((v3 + 32 == (v2 ^ v6)) * a1) ^ v4)))();
}

uint64_t sub_100121ECC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v8 = *v7 ^ v2;
  v9 = *(v7 + 24);
  v10 = 1591274197 * (((a1 | (-104923523 * v3)) << ((v6 - 75) ^ v5)) - (a1 & ~(-104923523 * v3) | (-104923523 * v3) & ~a1));
  v11 = *(v4 + 8 * (v6 - 9908));
  v12 = *(v11 - 527405895);
  v13 = *(v4 + 8 * (v6 - 6337)) + 4 * v12;
  v14 = *(v13 - 1940437438);
  v15 = (v10 ^ v3) + (v10 ^ v3) * v14;
  if (v10 == v3)
  {
    v16 = *(v13 - 1940437438);
  }

  else
  {
    v16 = 0;
  }

  *(v13 - 1940437438) = (v15 + v16) * v14;
  *(v11 - 527405895) = (v12 + 1) % 6u;
  *v9 = 9;
  v9[2] ^= 0x13u;
  v9[4] = v9[4] & 0xCE | 0x20;
  return (*(a2 + 8 * ((38 * ((11 * v8 - 673993683) < 0xFFFFFFFE)) ^ v6)))(-527405895, v12, v15, -1940437438, v14, v8);
}

uint64_t sub_10012212C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v36 = (a8 - 1764975134) < 0x101 && ((((*(v32 + 32) - v30) ^ 0x983B926D) + 1740926355) ^ (((*(v32 + 32) - v30) ^ 0xAA2AB012) + 1440042990) ^ (((*(v32 + 32) - v30) ^ (v31 - 1075995189) & 0x75BBDBFE ^ 0x20DB0AD) - 932477877)) + 92625354 < 0x101;
  v34 = *(v32 + 8) ^ v30;
  return (*(v33 + 8 * ((52190 * ((((v34 ^ 0x620268F2) - 1644325106) ^ ((v34 ^ 0x200D56D0) - 537745104) ^ ((v34 ^ 0x793582E3) - 2033550051)) + 993705153 < 0x101 && v36)) ^ v31)))(a1, v34, a2, a3, a4, a5, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

void sub_1001223F4()
{
  if (v0 == 1182815657)
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891401;
  }

  *(v1 + 8) = v2;
}

uint64_t sub_100122488()
{
  v3 = (&STACK[0x2F0] + 4 * v0);
  v4 = vdupq_n_s32(0x2F90469Du);
  *v3 = v4;
  v3[1] = v4;
  return (*(v2 + 8 * ((51696 * (v0 - 8807 + 215 * (v1 ^ 0x5159u) == 256)) ^ v1)))();
}

uint64_t sub_100122600()
{
  *(v3 - 204) = 0;
  *(v3 - 224) = 0;
  v5 = *(v4 + 8 * (v2 - 4555)) - 2030418059;
  v6 = *(v4 + 8 * (v2 ^ 0x1196)) - 947484994;
  v7 = *(v6 + (v0[15] ^ 0x77));
  v8 = *(v4 + 8 * (v2 ^ 0x4B1)) - 1425246607;
  v9 = *(v8 + (v0[2] ^ 0x9FLL)) << (((v2 + 88) & 0x7F) - 8);
  v10 = *(v8 + (v0[6] ^ 0xE7)) << 8;
  v11 = *(v6 + (v0[11] ^ 0xFALL));
  v12 = ((((*(v5 + (v0[8] ^ 0x4DLL)) + 83) ^ 0x20) << 24) ^ 0xDFEACEF8) & ~v11 & 0xFFFFFFF8 | v11 & 7;
  v13 = *(v4 + 8 * (v2 - 758)) - 1851453198;
  v14 = ((*(v8 + (v0[14] ^ 0x9DLL)) << 8) ^ 0x7C930B7B) & (v7 ^ 0x7C93FFE7) | v7 & 0x84;
  v15 = (((*(v13 + (v0[1] ^ 0xC7)) - 23) << 16) ^ 0xB9FA44B5) & (v9 ^ 0xFDFF66B7) | v9 & 0xBB00;
  v16 = *(v6 + (v0[7] ^ 0x5DLL));
  v17 = (v16 ^ 0xFFEBFF60) & (((v10 ^ 0xFFFF7FFF) & (((*(v5 + (v0[4] ^ 0xCDLL)) << 24) + 1392508928) ^ 0x2BCBB285) | v10 & 0x4D00) ^ 0xB928DF6D) | v16 & 0x17;
  v18 = *v0 ^ 0x5DLL;
  *(v3 - 208) = v17 & 0x426967EB ^ 0x7735A8DD ^ (((*(v13 + (v0[5] ^ 0x18)) - 23) << 16) ^ 0xBDD09814) & (v17 ^ 0xBE1CDDC2);
  v19 = ((*(v5 + v18) + 83) ^ 0x68) << 24;
  v20 = (v19 | 0xFFFFFE) & (v15 ^ 0x6D251A03);
  v21 = v19 & 0x2B000000;
  LODWORD(v18) = *(v8 + (v0[10] ^ 0xACLL)) << 8;
  LOBYTE(v19) = *(v13 + (v0[13] ^ 0x56));
  v22 = v19 & 0x98 ^ 0xDB;
  v23 = v19 & 0xFE ^ 0x8A;
  v24 = ((v19 ^ (2 * ((v19 ^ 0x68) & (2 * ((v19 ^ 0x68) & (2 * ((v19 ^ 0x68) & (2 * ((v19 ^ 0x68) & (2 * ((v19 ^ 0x68) & (2 * v23) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ 1) + ((2 * v19) ^ (4 * ((v19 ^ 0x2A) & (2 * ((v19 ^ 0x6A) & (2 * ((v19 ^ 0x6A) & (2 * ((v19 ^ 0x6A) & (2 * ((v19 ^ 0x6A) & (2 * v22) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ 0x30)) << 16;
  v25 = (*(v5 + (v0[12] ^ 0xACLL)) << 24) + 1392508928;
  v26 = (v24 & 0xC60000 ^ 0xC2629B6A ^ (v24 ^ 0x7E32FFFF) & (v14 ^ 0x5AAAC7B9)) & (v25 ^ 0x14FFFFFF);
  v27 = v25 & 0x1B000000 ^ 0x56FB9382;
  v28 = v0[9];
  *(v3 - 228) = v27 ^ v26;
  v29 = (*(v13 + (v28 ^ 0x67)) - 23) << 16;
  v30 = v0[3];
  *(v3 - 212) = v29 & 0xBD0000 ^ 0x4820783D ^ (v29 ^ 0xFF60FFFF) & ((v18 & 0xAE00 | (v18 ^ 0xFFFFC0FF) & (v12 ^ 0x1A889FF7)) ^ 0x3D201308);
  *(v3 - 216) = *(v6 + (v30 ^ 0x61)) & 0x71 ^ 0xD368A81D ^ (*(v6 + (v30 ^ 0x61)) ^ 0xFFFFFF94) & (v21 ^ 0xD8430A38 ^ v20);
  v31 = ((((&v0[-((2 * v0) & 0xC00FE250AC89ECD0) - 0x1FF80ED7A9BB0998] << 56) | 0x7FFFFFFFFFFFFFFLL) & ((&v0[-((2 * v0) & 0xC00FE250AC89ECD0) - 0x1FF80ED7A9BB0998] >> 8) ^ 0x6D2E6C9BD7E5A867) | (&v0[-((2 * v0) & 0xC00FE250AC89ECD0) - 0x1FF80ED7A9BB0998] << 56) & 0x9000000000000000) ^ 0x6DCE6B6AFFB3EC91) - 0x296E95066F186A7FLL;
  v32 = v31 ^ 0x72219E3FC273472;
  v31 ^= 0xB3A94E2F7B1B987CLL;
  v33 = __ROR8__(v32, 8) + v31;
  v34 = v33 ^ __ROR8__(v31, 61);
  *(&v35 + 1) = v34 ^ 0x14BA074A2F986FE5;
  *&v35 = v34;
  v36 = ((v34 ^ 0x14BA074A2F986FE5) + __ROR8__(v33 ^ 0x14BA074A2F986FE5, 8)) ^ 0x2C378843F9A46E98;
  v37 = v36 ^ (v35 >> 61);
  v38 = (v37 + __ROR8__(v36, 8)) ^ 0xBD7D2DE9C10AA16ALL;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0x82B08017BF43C069;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (v41 + __ROR8__(v40, 8)) ^ 0xAA9DDABAE2E4D47CLL;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (v43 + __ROR8__(v42, 8)) ^ 0x8FB22143FEDB6CB3;
  *&v35 = __ROR8__(&v0[-((2 * (v0 + 8)) & 0x5480DADF8DBB8D40) - 0x55BF929039223958] & 0xFFFFFFFFFFFFFFF8 ^ 0xAA406D6FC6DDC6A0, 8);
  v45 = (v44 ^ __ROR8__(v43, 61)) + __ROR8__(v44, 8);
  v46 = (v35 - 0x296E95066F186A7FLL) ^ 0xB3A94E2F7B1B987CLL;
  v47 = __ROR8__((v35 - 0x296E95066F186A7FLL) ^ 0x72219E3FC273472, 8) + v46;
  v48 = v47 ^ __ROR8__(v46, 61);
  *(&v35 + 1) = v48 ^ 0x14BA074A2F986FE5;
  *&v35 = v48;
  v49 = ((v48 ^ 0x14BA074A2F986FE5) + __ROR8__(v47 ^ 0x14BA074A2F986FE5, 8)) ^ 0x2C378843F9A46E98;
  v50 = v49 ^ (v35 >> 61);
  v51 = (v50 + __ROR8__(v49, 8)) ^ 0xBD7D2DE9C10AA16ALL;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (v52 + __ROR8__(v51, 8)) ^ 0x82B08017BF43C069;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (v54 + __ROR8__(v53, 8)) ^ 0xAA9DDABAE2E4D47CLL;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0x8FB22143FEDB6CB3;
  LOBYTE(v29) = 8 * (v0 + 7 + (~(2 * v0) | 0xFB));
  v58 = (v45 ^ 0x9B1C7427651E0F18) >> (v29 & 0x28 ^ 0x20u) >> (~v29 & 0x10);
  v59 = v58 + 2 * ((((v57 ^ __ROR8__(v56, 61)) + __ROR8__(v57, 8)) ^ 0x1B1C7427651E0F18) << ((v29 & 0x38 ^ 0x63) & 0xF ^ 8u) << ((v29 & 0x38 ^ 0x63) & 0x30 ^ 0x24u));
  LODWORD(v58) = ((*(v5 + (v58 ^ 0x34)) + 83) ^ 0xA8) << 24;
  v60 = ((((*(v13 + (BYTE1(v59) ^ 0x9DLL)) - 23) << 16) ^ 0x7D489DD6) & (v58 ^ 0xCBFF9DD6) | v58 & 0x82000000) ^ 0xC2BD26B0;
  LODWORD(v58) = *(v8 + (BYTE2(v59) ^ 0x80)) << 8;
  v61 = (v58 & 0x44444444 | v60 & (v58 ^ 0xFFFF09F6)) ^ 0xA1BC5203;
  LODWORD(v58) = *(v6 + (HIBYTE(v59) ^ 0xCELL));
  *(v3 - 200) = v13;
  *(v3 - 192) = v6;
  v62 = *(v1 + 8 * v2);
  *(v3 - 180) = (v2 + 269387864) & 0xEFF1777F;
  return v62(v58 & 0x9A ^ 0x1CD4ED75 ^ v61 & (v58 ^ 0xFFFFFFE7));
}

uint64_t sub_1001233C0(uint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t a4, int a5, double a6, __n128 a7, __n128 a8, __n128 a9, int8x16_t a10, double a11, int8x16_t a12)
{
  v18 = v16 & 0xF;
  v20.i64[0] = vqtbl4q_s8(*(&a7 - 1), a10).u64[0];
  *&v20.i64[1] = a11;
  v21 = vrev64q_s8(vmulq_s8(v20, a12));
  *a3 = veorq_s8(veorq_s8(veorq_s8(*(v15 + v18 - 15), *a3), veorq_s8(*(v13 + v18 - 15), *(v14 + v18 - 15))), vextq_s8(v21, v21, 8uLL));
  return (*(v17 + 8 * (((a4 == 0) * a5) ^ v12)))(a1, a2, a3 - 1, a4 - 16);
}

uint64_t sub_1001234B0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, int a8, int8x16_t a9, int8x8_t a10)
{
  v17.val[0].i64[0] = (v13 + a6 + v14) & 0xF;
  v17.val[0].i64[1] = (v13 + a3 + 14) & 0xF;
  v17.val[1].i64[0] = (v13 + a3 + 13) & 0xF;
  v17.val[1].i64[1] = (v13 + a3 + 12) & 0xF;
  v17.val[2].i64[0] = (v13 + a3 + 11) & 0xF;
  v17.val[2].i64[1] = (v13 + a3 + 10) & 0xF;
  v17.val[3].i64[0] = (v13 + a3 + 9) & 0xF;
  v17.val[3].i64[1] = (v13 + a3) & 0xF ^ 8;
  *(a4 + a7) = veor_s8(veor_s8(veor_s8(*(v10 + v17.val[0].i64[0] - 7), *(v17.val[0].i64[0] + v11 - 5)), veor_s8(*(a5 + a7), *(v12 + v17.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v17, a9), a10)));
  return (*(v15 + 8 * (((a2 == a3) * a8) ^ a1)))();
}

uint64_t sub_100123580(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(a1 + 24) + 1112314453 * (((a1 | 0x4CBBA5BD) - (a1 | 0xB3445A42) - 1287366078) ^ 0xA3ED8F64);
  return (*(*(&off_1010A0B50 + (v1 ^ 0x31E3)) + 8 * ((v3 * ((v1 - 1279) ^ 0x30CE)) ^ v1) - 810145054))();
}

uint64_t sub_100123610(uint64_t a1)
{
  v6 = -1802333311 * v3;
  v527 = v1;
  v529 = v2;
  v526 = *(v5 + 8 * (v4 - 9417)) - 664081579;
  v7 = (*(v526 + (((v4 + 1279) ^ 0x355C) & (v6 >> 8) ^ 0xA2)) - 121) << 8;
  v8 = v4;
  v9 = v5;
  v525 = *(v5 + 8 * (v4 ^ 0x206E)) - 718232646;
  v10 = ((((*(v525 + (HIBYTE(v6) ^ 0x36)) - 110) ^ 0x9D) << 24) ^ 0x3EAB20D3) & (v7 ^ 0xFFAF02D7) | v7 & 0xFFFFDFFF;
  v523 = *(v5 + 8 * (v4 ^ 0x3AA3)) - 235943199;
  v11 = *(v523 + ((-127 * v3) ^ 0xC7));
  v524 = *(v5 + 8 * (v4 - 10487)) - 694719051;
  v520 = v10 & 0xC6A31F00 ^ 0x817BCB14 ^ (((v11 ^ (v11 >> 6) ^ (v11 >> 4) ^ 0xFFFFFFE0) & ((*(v524 + (BYTE2(v6) ^ 0xFBLL)) << 16) ^ 0xB4BD8021) | (v11 ^ (v11 >> 6) ^ (v11 >> 4)) & 0xDE) ^ 0x8D876092) & (v10 ^ 0xF8541E2C);
  v12 = *(v5 + 8 * (v4 - 8386)) - 2029421678;
  v13 = *(v5 + 8 * (v8 ^ 0x30A3)) - 2115538719;
  v14 = *(v5 + 8 * (v8 - 9636)) - 78288990;
  v15 = v3[6];
  v16 = v15 ^ 0x2B;
  v17 = v15 ^ 0x7D;
  v18 = *(v9 + 8 * (v8 ^ 0x20D3)) - 770784047;
  v19 = *(v12 + (v3[9] ^ 0x63));
  v20 = v19 & 0x20 | 0xFFFFFFCC;
  v21 = (v19 ^ 0x28) & (2 * ((v19 ^ 0x28) & (2 * ((v19 ^ 0x28) & (2 * ((v19 ^ 0x28) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20;
  v22 = ((v19 ^ (2 * v21)) ^ 0xA8AFFF20) & (((*(v14 + (v3[8] ^ 0x62)) - 12) << 8) ^ 0xA8AFB0A1) | (v19 ^ (2 * v21)) & 0x5E;
  v23 = (((v3[4] ^ 0x7D) + *(v18 + (v3[4] ^ 0x2BLL))) << 24) - 1157627904;
  v24 = (*(v14 + ((v3[2] - 2 * (v3[2] & 3u) + 3) ^ 0x61)) - 12) << 8;
  v25 = (v24 ^ 0xFFA8206C) & ((((v17 + *(v18 + v16) - 69) ^ 0xD5) << 24) ^ 0xD0A8E26C) | v24 & 0x1D00;
  v26 = (v23 & 0x10000000 | 0xE0E6779E) ^ (v23 ^ 0x20FFCBFF) & ((((*(v13 + (v3[13] ^ 0x44)) << 16) ^ 0x1C3D9364) & ((*(v12 + (*v3 ^ 0x63)) - 88) ^ 0x3EFFDB75) | (*(v12 + (*v3 ^ 0x63)) - 88) & 0x9B) ^ 0xF332587B);
  v27 = v3[15];
  v28 = (*(v14 + (v27 ^ 0x62)) - 12) << 8;
  v29 = v28 & 0x4300 ^ 0xF394EC37 ^ (v28 ^ 0xFFFF34FF) & v26;
  v30 = *(v13 + (v3[3] ^ 0x44)) << 16;
  v31 = (((((v3[5] ^ 0x7D) + *(v18 + (v3[5] ^ 0x2BLL)) - 69) ^ 0xB1) << 24) ^ 0x803CC88E) & ((((*(v13 + (v3[12] ^ 0x44)) << 16) ^ 0x1CBB5EB0) & ((*(v12 + (v3[10] ^ 0x63)) - 88) ^ 0x1DFFDEBC) | (*(v12 + (v3[10] ^ 0x63)) - 88) & 0x4F) ^ 0xE34C962F);
  v32 = ((*(v13 + (v3[12] ^ 0x44)) << 16) ^ 0x1CBB5EB0) & ((*(v12 + (v3[10] ^ 0x63)) - 88) ^ 0x1DFFDEBC) & 0x10C30071 | (*(v12 + (v3[10] ^ 0x63)) - 88) & 0x41;
  LODWORD(v13) = (v22 ^ 0x50508014) & ((*(v13 + (v3[1] ^ 0x44)) << 16) ^ 0x507DA3DC) ^ v22 & 0x288B5C23;
  LODWORD(v14) = (*(v14 + (v3[14] ^ 0x62)) - 12) << 8;
  LODWORD(v14) = v14 & 0xFFFFE7FF ^ 0x813FF27F ^ (v32 ^ 0xA6FAD0D3 ^ v31) & (v14 ^ 0xFFFF14FF);
  v33 = *(v12 + (v3[11] ^ 0x63));
  v34 = v3[7];
  v35 = ((v33 - 88) & 0x68 | (~(v33 - 88) | 0xFFFFFF00) & (v30 & 0x7C0000 ^ 0xF175FEC1 ^ (v30 ^ 0xFFA2FF56) & (v25 ^ 0x912BAF3A))) ^ 0xEC2339F5;
  v36 = v29 ^ v520;
  v37 = v29 ^ v520 ^ v35 ^ v13 & 0x603A8430 ^ (((((v34 ^ 0xC2) + ((2 * (v34 ^ 0x7D)) & 0x7E) + *(v18 + (v34 ^ 0x7D) - ((2 * (v34 ^ 0x7D)) & 0xACu) + 86)) << 24) - 0x4000000) ^ 0x43C57BCF) & (v13 ^ 0x87100402);
  v38 = v14 ^ v29;
  v39 = v29 ^ v520 ^ v14 ^ 0x772EF7B4 ^ v35;
  v40 = *(v9 + 8 * (v8 ^ 0x3DA1)) - 294289971;
  v41 = *(v9 + 8 * (v8 - 9291)) - 118585407;
  v42 = *(v9 + 8 * (v8 - 8224)) - 1021286074;
  v43 = BYTE1(v38) ^ BYTE1(v37);
  v44 = v38 ^ v37 ^ 0x5A8BBF6E;
  v45 = *(v9 + 8 * (v8 ^ 0x3904)) - 68297918;
  v46 = *(v45 + 4 * ((v38 ^ v37) ^ 0x39u));
  v47 = *(v40 + 4 * (HIBYTE(v36) ^ 0x32)) ^ ((HIBYTE(v36) ^ 0x20) + (HIBYTE(v36) ^ 0x536F33A1)) ^ *(v42 + 4 * BYTE1(v39)) ^ *(v41 + 4 * (BYTE2(v37) ^ 0xB0u)) ^ (*(v42 + 4 * BYTE1(v39)) >> 2) ^ (*(v42 + 4 * BYTE1(v39)) >> 4) ^ (-1344217308 * v46 + 2121501808) ^ (-1409796151 * v46 + 102906620);
  v48 = *(v42 + 4 * (BYTE1(v37) ^ 0x30u));
  v49 = v48 ^ (v48 >> 4) ^ (v48 >> 2);
  v50 = *(v40 + 4 * (HIBYTE(v44) ^ 0xB0)) ^ *(v41 + 4 * (BYTE2(v36) ^ 0x6Au)) ^ ((HIBYTE(v44) ^ 0x536F3323) + (HIBYTE(v44) ^ 0xA2)) ^ 0x8F235361;
  v51 = v49 & 0x20;
  if ((v50 & v49 & 0x20) != 0)
  {
    v51 = -v51;
  }

  v52 = (2121501808 - 1344217308 * *(v45 + 4 * v39)) ^ (-1409796151 * *(v45 + 4 * v39) + 102906620) ^ v49 & 0xFFFFFFDF ^ (v51 + v50);
  v53 = *(v42 + 4 * (BYTE1(v36) ^ 0x1Au));
  v54 = *(v40 + 4 * (HIBYTE(v39) ^ 0x12)) ^ ((HIBYTE(v39) ^ 0x536F3381) + HIBYTE(v39)) ^ 0x8F235361 ^ *(v41 + 4 * (BYTE2(v44) ^ 0x2Bu));
  v55 = v53 ^ (v53 >> 4) ^ (v53 >> 2) ^ 0xA70290D3;
  v56 = (-v54 ^ (v55 - (v54 ^ v55)) ^ 0xC3F3E31E ^ (v54 - ((2 * v54) & 0x87E7C63C) - 1007426786)) + v55;
  v57 = *(v45 + 4 * (v37 ^ 0x4Cu));
  v58 = (-1409796151 * v57 + 102906620) ^ (2121501808 - 1344217308 * v57) ^ v56;
  v59 = *(v40 + 4 * (HIBYTE(v37) ^ 0xBD)) ^ ((HIBYTE(v37) ^ 0x536F332E) + (HIBYTE(v37) ^ 0xAF)) ^ *(v41 + 4 * BYTE2(v39));
  v60 = *(v42 + 4 * (v43 ^ 0x99u));
  v61 = *(v45 + 4 * (((2 * v36) | 0xFFFFFFFD) + (v36 ^ 0xD9) + 2));
  v62 = v59 ^ v60 ^ (v60 >> 2) ^ (v60 >> 4) ^ (-1409796151 * v61 + 102906620) ^ (2121501808 - 1344217308 * v61);
  v63 = ((((v52 ^ 0xE43552B2) >> (v27 & 0x18)) - ((2 * ((v52 ^ 0xE43552B2) >> (v27 & 0x18))) & 0x594EB882) + 749165633) ^ 0x2CA75C41) >> ((v27 & 0x18 ^ 0xB9) & 0x10) >> ((v27 & 0x18 ^ 0xB9) & 8);
  v64 = v47 ^ 0xC3B6;
  v65 = (v47 ^ 0x4B32C3B6u) >> 24;
  v66 = -v65 ^ (18 - (v65 ^ 0x12)) ^ (v65 - 1831721804 + (~((v47 ^ 0x4B32C3B6u) >> 23) | 0xFFFFFE99)) ^ 0x92D224B3;
  v63 = v63;
  v67 = (v63 ^ 0x536F3381) + v63;
  v68 = *(v42 + 4 * ((v62 ^ 0xAB79) >> 8));
  v69 = *(v41 + 4 * (BYTE2(v47) ^ 0x4Du)) ^ v68 ^ *(v40 + 4 * (v63 ^ 0x12u)) ^ (v68 >> 2) ^ (v68 >> 4);
  v70 = *(v45 + 4 * (v58 ^ 3u));
  v71 = v69 ^ (2121501808 - 1344217308 * v70) ^ (-1409796151 * v70 + 102906620) ^ v67;
  v72 = *(v45 + 4 * (v62 ^ 0x79u));
  v73 = *(v40 + 4 * (HIBYTE(v58) ^ 0xAF)) ^ ((HIBYTE(v58) ^ 0x536F333C) + (HIBYTE(v58) ^ 0xBD)) ^ *(v41 + 4 * (BYTE2(v52) ^ 0x4Au)) ^ *(v42 + 4 * HIBYTE(v64)) ^ (*(v42 + 4 * HIBYTE(v64)) >> 2) ^ (*(v42 + 4 * HIBYTE(v64)) >> 4) ^ (2121501808 - 1344217308 * v72) ^ (-1409796151 * v72 + 102906620);
  v74 = *(v40 + 4 * (((v62 ^ 0xA4DDAB79) >> 24) ^ 0x12)) ^ __ROR4__(__ROR4__(((((v62 ^ 0xA4DDAB79) >> 24) ^ 0x536F3381) + ((v62 ^ 0xA4DDAB79) >> 24)) ^ 0xA58320BA, 10) ^ 0x1A23474A, 22) ^ *(v41 + 4 * (BYTE2(v58) ^ 0xA5u));
  v75 = *(v42 + 4 * (BYTE1(v52) ^ 0x96u));
  v522 = v75 ^ 0x8CF1F32B;
  v76 = ((((v75 ^ 0x8CF1F32B) >> 2) ^ v75) >> 2) ^ 0x233C7CCA;
  v77 = *(v42 + 4 * (BYTE1(v58) ^ 0x4Cu));
  v78 = *(v45 + 4 * (v52 ^ 0xB3u));
  v79 = ((v65 & 0x7E) + (v65 | 0x536F3381)) ^ *(v41 + 4 * (BYTE2(v62) ^ 0xA2u)) ^ v77 ^ *(v40 + 4 * (v66 + 18)) ^ (v77 >> 2) ^ (v77 >> 4) ^ (2121501808 - 1344217308 * v78) ^ (-1409796151 * v78 + 102906620) ^ 0x12D0E840;
  v80 = v74 ^ (-1409796151 * *(v45 + 4 * v64) + 102906620) ^ (2121501808 - 1344217308 * *(v45 + 4 * v64)) ^ ((-v522 ^ (v522 - ((2 * v522) & 0x2DA5922E) - 1764570857) ^ 0x96D2C917 ^ (v76 - (v76 ^ v522))) + v76);
  v81 = v80 ^ 0x81405E94;
  v82 = *(v42 + 4 * (BYTE1(v73) ^ 0xCu));
  v83 = v71 ^ 0x32D06300;
  v84 = *(v40 + 4 * (HIBYTE(v79) ^ 0x12)) ^ (HIBYTE(v79) + 1399796609 + (-HIBYTE(v79) ^ (1399796609 - (HIBYTE(v79) ^ 0x536F3381)) ^ (HIBYTE(v79) - ((v79 >> 23) & 0x1E4) + 1028093426) ^ 0x3D4775F2)) ^ *(v41 + 4 * (((v80 ^ 0x81405E94) >> 16) ^ 0x7Fu)) ^ v82 ^ (v82 >> 2) ^ (v82 >> 4) ^ (-1409796151 * *(v45 + 4 * v71) + 102906620) ^ (2121501808 - 1344217308 * *(v45 + 4 * v71));
  v85 = *(v42 + 4 * (BYTE1(v80) ^ 0x9Au));
  v86 = *(v45 + 4 * (v73 ^ 0xE5u));
  v87 = *(v40 + 4 * (HIBYTE(v83) ^ 0x12)) ^ ((HIBYTE(v83) ^ 0x536F3381) + HIBYTE(v83)) ^ *(v41 + 4 * BYTE2(v79)) ^ v85 ^ (v85 >> 2) ^ (v85 >> 4) ^ (2121501808 - 1344217308 * v86) ^ (-1409796151 * v86 + 102906620);
  v88 = ((HIBYTE(v73) ^ 0x5C) + (HIBYTE(v73) ^ 0x536F33DD)) ^ *(v40 + 4 * (HIBYTE(v73) ^ 0x4E)) ^ *(v42 + 4 * BYTE1(v79)) ^ *(v41 + 4 * BYTE2(v83)) ^ (*(v42 + 4 * BYTE1(v79)) >> 2) ^ (*(v42 + 4 * BYTE1(v79)) >> 4) ^ (-1409796151 * *(v45 + 4 * v81) + 102906620) ^ (2121501808 - 1344217308 * *(v45 + 4 * v81)) ^ 0x32DFD5EC;
  v89 = ((HIBYTE(v81) ^ 0x536F3381) + HIBYTE(v81)) ^ *(v41 + 4 * (BYTE2(v73) ^ 0xC6u)) ^ *(v40 + 4 * (HIBYTE(v81) ^ 0x12)) ^ *(v42 + 4 * BYTE1(v83)) ^ (*(v42 + 4 * BYTE1(v83)) >> 2) ^ (*(v42 + 4 * BYTE1(v83)) >> 4) ^ (-1409796151 * *(v45 + 4 * v79) + 102906620) ^ (2121501808 - 1344217308 * *(v45 + 4 * v79));
  v90 = *(v45 + 4 * (v87 ^ 0xCAu));
  v91 = *(v40 + 4 * (HIBYTE(v84) ^ 0x52)) ^ ((HIBYTE(v84) ^ 0x40) + (HIBYTE(v84) ^ 0x536F33C1)) ^ *(v41 + 4 * (BYTE2(v89) ^ 0x6Du)) ^ *(v42 + 4 * BYTE1(v88)) ^ (*(v42 + 4 * BYTE1(v88)) >> 2) ^ (*(v42 + 4 * BYTE1(v88)) >> 4) ^ (2121501808 - 1344217308 * v90) ^ (-1409796151 * v90 + 102906620);
  v92 = *(v45 + 4 * v88);
  v93 = -1344217308 * v92 + 411626480;
  v94 = (v93 & 0xFFFFFFBF) + 1709875328;
  v95 = -1409796151 * v92 + 102906620;
  v96 = v93 & 0x40;
  if ((v96 & v95) != 0)
  {
    v96 = -v96;
  }

  v97 = *(v42 + 4 * (BYTE1(v89) ^ 0xDFu));
  v98 = *(v40 + 4 * (HIBYTE(v87) ^ 0xFF)) ^ ((HIBYTE(v87) ^ 0x536F336C) + (HIBYTE(v87) ^ 0xED)) ^ *(v41 + 4 * (BYTE2(v84) ^ 0xF5u)) ^ v97 ^ (v97 >> 2) ^ (v97 >> 4) ^ v94 ^ (v96 + v95);
  HIDWORD(v99) = (v84 >> 12) ^ 0xA4D0CBD;
  LODWORD(v99) = (v84 << 20) ^ 0xE0000000;
  v100 = *(v42 + 4 * ((v99 >> 28) ^ 0xA4D0CBD6));
  v101 = *(v45 + 4 * (v89 ^ 0xEEu));
  v102 = *(v40 + 4 * (HIBYTE(v88) ^ 0x12)) ^ ((HIBYTE(v88) ^ 0x536F3381) + HIBYTE(v88)) ^ *(v41 + 4 * (BYTE2(v87) ^ 0xE8u)) ^ v100 ^ (v100 >> 2) ^ (v100 >> 4) ^ (-1409796151 * v101 + 102906620) ^ (2121501808 - 1344217308 * v101);
  v103 = *(v45 + 4 * (v84 ^ 0x7Au));
  v104 = *(v42 + 4 * (BYTE1(v87) ^ 0x3Du));
  v105 = *(v40 + 4 * (HIBYTE(v89) ^ 0x26)) ^ ((HIBYTE(v89) ^ 0x536F33B5) + (HIBYTE(v89) ^ 0x34)) ^ *(v41 + 4 * BYTE2(v88)) ^ v104 ^ (v104 >> 2) ^ (v104 >> 4) ^ (-1409796151 * v103 + 102906620) ^ (4 * (((-1409796151 * v103 + 102906620) ^ 0x197AA820) + ((401633170 * v103 + 205813240) & 0x32F55040)));
  v106 = *(v42 + 4 * (BYTE1(v102) ^ 0xB9u));
  v107 = *(v45 + 4 * (v98 ^ 0x9Bu));
  v108 = *(v40 + 4 * (HIBYTE(v91) ^ 0x17)) ^ ((HIBYTE(v91) ^ 0x536F3384) + (HIBYTE(v91) ^ 5)) ^ v106 ^ *(v41 + 4 * (BYTE2(v105) ^ 0x12u)) ^ (v106 >> 2) ^ (v106 >> 4) ^ (-1409796151 * v107 + 102906620) ^ (2121501808 - 1344217308 * v107);
  v109 = *(v42 + 4 * (BYTE1(v105) ^ 0x39u));
  v110 = *(v45 + 4 * (v102 ^ 0xC2u));
  v111 = *(v40 + 4 * (((v98 ^ 0x86E859Bu) >> 24) ^ 0x12)) ^ ((((v98 ^ 0x86E859Bu) >> 24) ^ 0x536F3381) + ((v98 ^ 0x86E859Bu) >> 24)) ^ *(v41 + 4 * (BYTE2(v91) ^ 0x17u)) ^ v109 ^ (v109 >> 2) ^ (v109 >> 4) ^ (2121501808 - 1344217308 * v110) ^ (-1409796151 * v110 + 102906620);
  v112 = *(v42 + 4 * (BYTE1(v91) ^ 0x25u));
  v113 = *(v45 + 4 * (v105 ^ 0x5Cu));
  v114 = *(v40 + 4 * (HIBYTE(v102) ^ 0x10)) ^ ((HIBYTE(v102) ^ 0x536F3383) + (HIBYTE(v102) ^ 2)) ^ *(v41 + 4 * (BYTE2(v98) ^ 0x11u)) ^ (2121501808 - 1344217308 * v113) ^ (-1409796151 * v113 + 102906620) ^ __ROR4__(((((v112 ^ 0xB8EA18FB ^ (v112 >> 2)) >> 2 << 23) ^ 0x9935723) & (((v112 ^ 0xB8EA18FB ^ (v112 >> 2)) >> 11) ^ 0xFFF9BB85) | ((v112 ^ 0xB8EA18FB ^ (v112 >> 2)) >> 11) & 0xCA8DC) ^ __ROR4__(v112 ^ 0xB8EA18FB, 9) ^ 0xA9CCE93, 23);
  v115 = *(v45 + 4 * (v91 ^ 0xB3u));
  v116 = *(v42 + 4 * (BYTE1(v98) ^ 0x41u));
  v117 = ((HIBYTE(v105) ^ 0x77) + (HIBYTE(v105) ^ 0x536F33F6)) ^ *(v41 + 4 * (BYTE2(v102) ^ 0x9Fu)) ^ *(v40 + 4 * (HIBYTE(v105) ^ 0x65)) ^ v116 ^ (v116 >> 2) ^ (v116 >> 4) ^ (2121501808 - 1344217308 * v115 + -1409796151 * v115 + 102906620 - 2 * ((2121501808 - 1344217308 * v115) & (-1409796151 * v115 + 102906620))) ^ 0x262BFC32;
  BYTE2(v105) = BYTE2(v114) ^ 0xDA;
  v118 = *(v45 + 4 * (v114 ^ 7u));
  v119 = (-1409796151 * v118 + 102906620) ^ (2121501808 - 1344217308 * v118);
  v120 = ((((v114 ^ 0xAEDAD606) >> 24) ^ 0x536F3381) + ((v114 ^ 0xAEDAD606) >> 24) - ((2 * ((((v114 ^ 0xAEDAD606) >> 24) ^ 0x536F3381) + ((v114 ^ 0xAEDAD606) >> 24))) & 0x25C6E7A) - 1993427139) ^ *(v40 + 4 * (((v114 ^ 0xAEDAD606) >> 24) ^ 0x12));
  v121 = *(v40 + 4 * (((v111 ^ 0x180F293) >> 24) ^ 0x12)) ^ ((((v111 ^ 0x180F293) >> 24) ^ 0x536F3381) + ((v111 ^ 0x180F293) >> 24)) ^ *(v41 + 4 * (BYTE2(v108) ^ 0x22u)) ^ *(v42 + 4 * BYTE1(v117)) ^ (*(v42 + 4 * BYTE1(v117)) >> 2) ^ (*(v42 + 4 * BYTE1(v117)) >> 4) ^ 0x2821C3B2;
  v122 = (-v119 ^ (v121 - (v121 ^ v119)) ^ 0x31B9623A ^ (v119 - ((2 * v119) & 0x6372C474) + 834232890)) + v121;
  v123 = *(v41 + 4 * ~HIWORD(v111));
  v124 = (-v120 ^ (v120 - ((2 * v120) & 0xCF0E7098) - 410568628) ^ 0xE787384C ^ ((v123 ^ 0x603F0025) - ((v120 - ((2 * v120) & 0xC07E004A) + 1614741541) ^ v123))) + (v123 ^ 0x603F0025);
  v125 = *(v42 + 4 * (BYTE1(v108) ^ 0x10u));
  v126 = v125 ^ (v125 >> 4) ^ (v125 >> 2) ^ (2121501808 - 1344217308 * *(v45 + 4 * v117)) ^ (-1409796151 * *(v45 + 4 * v117) + 102906620) ^ v124;
  v127 = v108 ^ 0xD;
  v128 = *(v42 + 4 * (BYTE1(v114) ^ 0x12u));
  v129 = *(v45 + 4 * (v111 ^ 0x93u));
  v130 = ((HIBYTE(v108) ^ 0xC8) + (HIBYTE(v108) ^ 0x536F3349)) ^ *(v40 + 4 * (HIBYTE(v108) ^ 0xDA)) ^ *(v41 + 4 * BYTE2(v117)) ^ v128 ^ (v128 >> 2) ^ (v128 >> 4) ^ (-1409796151 * v129 + 102906620) ^ (2121501808 - 1344217308 * v129) ^ 0x151C930F;
  v131 = *(v41 + 4 * BYTE2(v105));
  v132 = *(v42 + 4 * (BYTE1(v111) ^ 0x36u));
  v133 = *(v40 + 4 * (HIBYTE(v117) ^ 0x12)) ^ ((HIBYTE(v117) ^ 0x536F3381) + HIBYTE(v117)) ^ v132 ^ v131 ^ (v132 >> 2) ^ (v132 >> 4) ^ (2121501808 - 1344217308 * *(v45 + 4 * v127)) ^ (-1409796151 * *(v45 + 4 * v127) + 102906620);
  v134 = v133 ^ 0xA0FC7C84;
  v135 = *(v42 + 4 * (BYTE1(v126) ^ 0x6Au));
  v136 = *(v40 + 4 * (HIBYTE(v130) ^ 0x12)) ^ ((HIBYTE(v130) ^ 0x536F3381) + HIBYTE(v130)) ^ *(v41 + 4 * ((v133 ^ 0xA0FC7C84) >> 16)) ^ v135 ^ (v135 >> 2) ^ (v135 >> 4);
  v137 = *(v45 + 4 * (v122 ^ 0x56u));
  v138 = v136 ^ (-1409796151 * v137 + 102906620) ^ (2121501808 - 1344217308 * v137);
  v139 = *(v42 + 4 * (BYTE1(v133) ^ 0xB8u));
  v140 = *(v45 + 4 * (v126 ^ 0x98u));
  v141 = ((((v122 ^ 0x45A92E56) >> 24) ^ 0x536F3381) + ((v122 ^ 0x45A92E56) >> 24)) ^ *(v41 + 4 * BYTE2(v130)) ^ v139 ^ *(v40 + 4 * (((v122 ^ 0x45A92E56) >> 24) ^ 0x12)) ^ (v139 >> 2) ^ (v139 >> 4) ^ (2121501808 - 1344217308 * v140) ^ (-1409796151 * v140 + 102906620);
  v142 = *(v41 + 4 * ((v122 ^ 0x45A92E56) >> 16)) ^ *(v40 + 4 * (HIBYTE(v126) ^ 0xE6)) ^ ((HIBYTE(v126) ^ 0x536F3375) + (HIBYTE(v126) ^ 0xF4)) ^ *(v42 + 4 * BYTE1(v130)) ^ (*(v42 + 4 * BYTE1(v130)) >> 2) ^ (*(v42 + 4 * BYTE1(v130)) >> 4) ^ (2121501808 - 1344217308 * *(v45 + 4 * v134)) ^ (-1409796151 * *(v45 + 4 * v134) + 102906620);
  v143 = *(v42 + 4 * (BYTE1(v122) ^ 0xEAu));
  v144 = *(v40 + 4 * (HIBYTE(v134) ^ 0x12)) ^ ((HIBYTE(v134) | 0x536F3381) + (HIBYTE(v134) & 0x7E)) ^ *(v41 + 4 * (BYTE2(v126) ^ 0x7Du)) ^ v143 ^ (v143 >> 2) ^ (v143 >> 4) ^ (2121501808 - 1344217308 * *(v45 + 4 * v130)) ^ (-1409796151 * *(v45 + 4 * v130) + 102906620);
  v145 = (((v144 ^ 0x2821C3B2) - (v144 ^ 0x11707F11)) ^ 0xFFFFFFFE) + (v144 ^ 0x2821C3B2);
  v146 = *(v45 + 4 * (v141 ^ 0x1Eu));
  v147 = *(v40 + 4 * (HIBYTE(v141) ^ 0xBA));
  v148 = *(v42 + 4 * (BYTE1(v142) ^ 0x51u));
  v149 = *(v40 + 4 * (HIBYTE(v138) ^ 1)) ^ ((HIBYTE(v138) ^ 0x13) + (HIBYTE(v138) ^ 0x536F3392)) ^ v148 ^ *(v41 + 4 * ((v145 ^ 0x7F0001) >> 16)) ^ (v148 >> 2) ^ (v148 >> 4) ^ (-1409796151 * v146 + 102906620) ^ (4 * (((401633170 * v146 + 205813240) & 0x32F55040) + ((-1409796151 * v146 + 102906620) ^ 0x197AA820)));
  v150 = *(v42 + 4 * (BYTE1(v145) ^ 0xC4u));
  v151 = *(v45 + 4 * (v142 ^ 0x53u));
  v152 = *(v41 + 4 * (BYTE2(v138) ^ 0xFDu)) ^ v147 & 0xFFEFFFFF ^ (~v147 | 0xFFEFFFFF) & (((HIBYTE(v141) ^ 0xA8) + (HIBYTE(v141) ^ 0x536F3329)) ^ 0xE25D22C3) ^ v150 ^ (v150 >> 2) ^ (v150 >> 4) ^ (2121501808 - 1344217308 * v151) ^ (-1409796151 * v151 + 102906620);
  v153 = *(v42 + 4 * (BYTE1(v138) ^ 0x94u));
  v154 = *(v45 + 4 * (v145 ^ 1u));
  v155 = *(v40 + 4 * (HIBYTE(v142) ^ 0x6E)) ^ ((HIBYTE(v142) ^ 0x536F33FD) + (HIBYTE(v142) ^ 0x7C)) ^ *(v41 + 4 * (BYTE2(v141) ^ 0xBEu)) ^ v153 ^ (v153 >> 2) ^ (v153 >> 4) ^ (-1409796151 * v154 + 102906620) ^ (2121501808 - 1344217308 * v154);
  v156 = ((HIBYTE(v145) ^ 0x536F3381) + HIBYTE(v145)) ^ *(v41 + 4 * (BYTE2(v142) ^ 0x46u)) ^ 0xE911B718 ^ *(v40 + 4 * (HIBYTE(v145) ^ 0x12));
  if ((v156 & 0x10) != 0)
  {
    v157 = -16;
  }

  else
  {
    v157 = 16;
  }

  v158 = *(v42 + 4 * (BYTE1(v141) ^ 0x82u));
  v159 = *(v45 + 4 * (v138 ^ 0xDDu));
  v160 = v158 ^ (v158 >> 4) ^ (v158 >> 2) ^ (2121501808 - 1344217308 * v159) ^ (-1409796151 * v159 + 102906620) ^ (v157 + v156);
  LOBYTE(v158) = v149 ^ 0xDF;
  v161 = *(v42 + 4 * (BYTE1(v155) ^ 0x84u));
  v162 = *(v45 + 4 * (v152 ^ 0x77u));
  v163 = *(v40 + 4 * (((v149 ^ 0xFEC0BDFu) >> 24) ^ 0x12)) ^ ((((v149 ^ 0xFEC0BDFu) >> 24) ^ 0x536F3381) + ((v149 ^ 0xFEC0BDFu) >> 24)) ^ *(v41 + 4 * (BYTE2(v160) ^ 1u)) ^ v161 ^ (v161 >> 2) ^ (v161 >> 4) ^ (2121501808 - 1344217308 * v162) ^ (-1409796151 * v162 + 102906620);
  v164 = v160 ^ 0xBB7E8C89;
  v165 = *(v42 + 4 * (BYTE1(v160) ^ 0x48u));
  v166 = *(v45 + 4 * (v155 ^ 0x1Bu));
  v167 = *(v40 + 4 * (HIBYTE(v152) ^ 0x1E)) ^ ((HIBYTE(v152) ^ 0xC) + (HIBYTE(v152) ^ 0x536F338D)) ^ *(v41 + 4 * (BYTE2(v149) ^ 0x93u)) ^ v165 ^ (v165 >> 2) ^ (v165 >> 4) ^ (2121501808 - 1344217308 * v166) ^ (-1409796151 * v166 + 102906620);
  v168 = (HIBYTE(v155) ^ 0x3A) + (HIBYTE(v155) ^ 0x536F33BB);
  v169 = *(v40 + 4 * (HIBYTE(v155) ^ 0x28));
  v170 = *(v42 + 4 * (BYTE1(v149) ^ 0xCFu));
  v171 = v170 ^ *(v41 + 4 * (BYTE2(v152) ^ 0x3Fu)) ^ (v170 >> 2) ^ (v170 >> 4) ^ (-1409796151 * *(v45 + 4 * v164) + 102906620) ^ (2121501808 - 1344217308 * *(v45 + 4 * v164)) ^ (v168 + (v169 ^ 0x892EB73D) + ((2 * ((v169 ^ 0x20C273D) & v168)) ^ 0xF9BBDFFF) + 1);
  v172 = ((HIBYTE(v164) ^ 0x536F3381) + HIBYTE(v164)) ^ *(v41 + 4 * (BYTE2(v155) ^ 0x17u));
  v173 = *(v42 + 4 * (BYTE1(v152) ^ 0xDBu));
  v174 = *(v45 + 4 * (v158 ^ 1u));
  v175 = *(&off_1010A0B50 + (v8 ^ 0x30CB)) - 1972071287;
  v176 = *&v175[4 * (HIBYTE(v163) ^ 0x87)];
  v177 = *(v40 + 4 * ((HIBYTE(v164) & 0x8E ^ 0x3531A95F) & (HIBYTE(v164) & 0x71 ^ 0xF779EBDF) ^ (HIBYTE(v164) & 0x20 | 0x3531A94D))) ^ v172 ^ v173 ^ (v173 >> 2) ^ (v173 >> 4) ^ (-1409796151 * v174 + 102906620) ^ (2121501808 - 1344217308 * v174);
  v521 = v8;
  v178 = *(&off_1010A0B50 + (v8 ^ 0x3231)) - 511287331;
  v179 = *(&off_1010A0B50 + (v8 ^ 0x3E86)) - 1821479982;
  v180 = *(&off_1010A0B50 + (v8 ^ 0x3421)) - 818204339;
  v181 = *&v178[4 * (BYTE2(v177) ^ 0x98)] ^ v176 ^ BYTE1(v171) ^ *&v180[4 * (BYTE1(v171) ^ 0xB8)] ^ (((16 * v176) ^ 0x7C513F40) + 890840080) ^ BYTE2(v177) ^ *&v179[4 * (v167 ^ 0xB0)];
  v182 = v167 & 0xB4 ^ 0xFB7FEFDF ^ v181 & 0x55A033B4;
  v183 = (v167 & 0x4B ^ 0x258587B5 ^ v181 & 0xAA5FCC4B) & v182 | v181 & 0x50203000;
  v184 = *&v175[4 * (HIBYTE(v167) ^ 0xA3)];
  v185 = v171 ^ BYTE1(v177) ^ v184 ^ *&v180[4 * (BYTE1(v177) ^ 0x24)] ^ *&v179[4 * (v171 ^ 0x3B)] ^ (((16 * v184) ^ 0x7C513F40) + 890840080) ^ __ROR4__((2 * v163) & 0x1FE0000 ^ __ROR4__(*&v178[4 * (BYTE2(v163) ^ 0x76)], 15) ^ 0xE7957231, 17) ^ 0x5FA74353;
  v186 = v185 - ((2 * v185) & 0xDC7ACBA2) + 1849517521;
  v518 = v180;
  v519 = v175;
  v187 = *&v175[4 * (HIBYTE(v177) ^ 0x17)];
  v188 = (BYTE1(v167) ^ v163 ^ BYTE2(v171)) ^ *&v178[4 * (BYTE2(v171) ^ 0xEF)] ^ v187 ^ *&v180[4 * (BYTE1(v167) ^ 0xCC)] ^ *&v179[4 * (v163 ^ 0x5D)];
  v189 = *&v175[4 * (HIBYTE(v171) ^ 0xCC)];
  v190 = v188 ^ (((16 * v187) ^ 0x7C513F40) + 890840080) ^ 0xF3DE94FB;
  v191 = v178;
  v192 = v189 ^ (BYTE2(v167) ^ BYTE1(v163) ^ v177) ^ *&v178[4 * (BYTE2(v167) ^ 0x58)] ^ *&v180[4 * (BYTE1(v163) ^ 0x9D)] ^ *&v179[4 * (v177 ^ 0x44)] ^ (((16 * v189) ^ 0x7C513F40) + 890840080) ^ v190 ^ v186;
  v193 = v183 ^ 0x6C325EE2 ^ v190 ^ v186;
  v183 ^= 0x6D659632u;
  v194 = v192 ^ v186 ^ v193;
  v195 = (v194 & 0x80 & v182) == 0;
  v196 = v183 - (v194 & 0x80);
  v197 = v194 & 0x80 ^ v183;
  if (!v195)
  {
    v197 = v196;
  }

  v198 = v192 ^ v520;
  v199 = v193 ^ v520;
  v200 = v194 ^ v520;
  v201 = ((v192 ^ v520 ^ v194 & 0xFFFFFF7F ^ v197) & 0x2000 | 0x52B29143) ^ (v192 ^ v520 ^ v194 & 0xFFFFFF7F ^ v197) & 0xFFFFDFFF;
  v202 = v199 ^ 0xA3FA5D99;
  v203 = BYTE1(v199) ^ 0x99;
  v204 = *(v42 + 4 * (BYTE1(v198) ^ 0x38u));
  v205 = *(v41 + 4 * ((v199 ^ 0xA3FA5D99) >> 16)) ^ v204 ^ *(v40 + 4 * (HIBYTE(v201) ^ 0xA3)) ^ (v204 >> 2) ^ (v204 >> 4);
  v206 = *(v45 + 4 * ((v194 ^ v520) ^ 0xCEu));
  v207 = v205 ^ (-1409796151 * v206 + 102906620) ^ (2121501808 - 1344217308 * v206) ^ ((HIBYTE(v201) ^ 0x536F3330) + (HIBYTE(v201) ^ 0xB1));
  v208 = (v194 ^ v520 ^ 0xD1720FCE) >> 24;
  v209 = *(v45 + 4 * (v198 ^ 0x3Fu));
  v210 = *(v41 + 4 * (BYTE2(v201) ^ 0xC2u)) ^ *(v40 + 4 * (v208 ^ 0x12)) ^ *(v42 + 4 * v203) ^ (*(v42 + 4 * v203) >> 2) ^ (*(v42 + 4 * v203) >> 4) ^ (2121501808 - 1344217308 * v209) ^ (-1409796151 * v209 + 102906620) ^ ((v208 ^ 0x536F3381) + v208);
  v211 = *(v42 + 4 * (BYTE1(v201) ^ 0x97u));
  v212 = ((2 * v211) & 0xE2855A70 ^ 0x1DFBE7DF) + 1861618508 + (((v211 ^ 0x4E270F48) - 1311182664) ^ ((v211 ^ 0x62EC5A4B) - 1659656779) ^ ((v211 ^ 0x51780B10) - 1366821648));
  v213 = BYTE1(v200) ^ 0xCB;
  v214 = *(v40 + 4 * (HIBYTE(v198) ^ 0xFD)) ^ ((HIBYTE(v198) ^ 0xEF) + (HIBYTE(v198) ^ 0x536F336E)) ^ *(v41 + 4 * ((v200 ^ 0xD1720FCE) >> 16)) ^ (-1409796151 * *(v45 + 4 * v202) + 102906620) ^ (2121501808 - 1344217308 * *(v45 + 4 * v202)) ^ v212 ^ (v212 >> 2) ^ (v212 >> 4) ^ 0x11C5711C;
  v215 = *(v45 + 4 * (v201 ^ 0xCEu));
  v216 = *(v40 + 4 * (HIBYTE(v202) ^ 0x12)) ^ ((HIBYTE(v202) ^ 0x536F3381) + HIBYTE(v202)) ^ *(v41 + 4 * (BYTE2(v198) ^ 0x9Du)) ^ *(v42 + 4 * v213) ^ (*(v42 + 4 * v213) >> 2) ^ (*(v42 + 4 * v213) >> 4) ^ (2121501808 - 1344217308 * v215) ^ (-1409796151 * v215 + 102906620);
  v217 = v216 ^ 0xA2354316;
  v218 = *(v42 + 4 * BYTE1(v214)) ^ (*(v42 + 4 * BYTE1(v214)) >> 4) ^ (*(v42 + 4 * BYTE1(v214)) >> 2) ^ 0xA70290D3;
  v219 = *(v41 + 4 * ((v216 ^ 0xA2354316) >> 16)) ^ *(v40 + 4 * (HIBYTE(v207) ^ 0x77)) ^ ((HIBYTE(v207) ^ 0x65) + (HIBYTE(v207) ^ 0x536F33E4)) ^ 0x8F235361;
  v220 = *(v45 + 4 * (v210 ^ 0x58u));
  v221 = (2121501808 - 1344217308 * v220) ^ (-1409796151 * v220 + 102906620) ^ ((-v218 ^ (v219 - (v219 ^ v218)) ^ 0xFB4F949D ^ (v218 - ((2 * v218) & 0xF69F293A) - 78670691)) + v219);
  v222 = *(v42 + 4 * (BYTE1(v207) ^ 0x2Eu));
  v223 = *(v45 + 4 * (v216 ^ 0x16u));
  v224 = *(v40 + 4 * (HIBYTE(v214) ^ 0x12)) ^ ((HIBYTE(v214) ^ 0x536F3381) + HIBYTE(v214)) ^ *(v41 + 4 * (BYTE2(v210) ^ 0x20u)) ^ v222 ^ (v222 >> 2) ^ (v222 >> 4) ^ (-1409796151 * v223 + 102906620) ^ (2121501808 - 1344217308 * v223);
  v225 = *(v42 + 4 * (BYTE1(v216) ^ 0x87u));
  v226 = ((HIBYTE(v210) ^ 0x536F33A6) + (HIBYTE(v210) ^ 0x27)) ^ *(v40 + 4 * (HIBYTE(v210) ^ 0x35)) ^ *(v41 + 4 * (BYTE2(v207) ^ 0xDCu)) ^ v225 ^ (v225 >> 2) ^ (v225 >> 4) ^ (2121501808 - 1344217308 * *(v45 + 4 * v214)) ^ (-1409796151 * *(v45 + 4 * v214) + 102906620) ^ 0x1A80A94D;
  v227 = *(v42 + 4 * (BYTE1(v210) ^ 0xADu));
  v228 = *(v45 + 4 * (v207 ^ 0xA1u));
  v229 = ((HIBYTE(v217) ^ 0x536F3381) + HIBYTE(v217)) ^ *(v40 + 4 * (HIBYTE(v217) ^ 0x12)) ^ v227 ^ *(v41 + 4 * BYTE2(v214)) ^ (v227 >> 2) ^ (v227 >> 4) ^ (2121501808 - 1344217308 * v228) ^ (-1409796151 * v228 + 102906620) ^ 0x4C8E4C6D;
  BYTE1(v214) = BYTE1(v221) ^ 0x56;
  v230 = *(v42 + 4 * (BYTE1(v224) ^ 0x66u));
  v231 = *(v41 + 4 * BYTE2(v229)) ^ v230 ^ *(v40 + 4 * (((v221 ^ 0xF1B15639) >> 24) ^ 0x12)) ^ (v230 >> 2) ^ (v230 >> 4) ^ (2121501808 - 1344217308 * *(v45 + 4 * v226)) ^ (-1409796151 * *(v45 + 4 * v226) + 102906620) ^ ((((v221 ^ 0xF1B15639) >> 24) ^ 0x536F3381) + ((v221 ^ 0xF1B15639) >> 24));
  v232 = *(v40 + 4 * (HIBYTE(v224) ^ 0xDB)) ^ ((HIBYTE(v224) ^ 0xC9) + (HIBYTE(v224) ^ 0x536F3348)) ^ *(v41 + 4 * BYTE2(v226)) ^ *(v42 + 4 * BYTE1(v214)) ^ (*(v42 + 4 * BYTE1(v214)) >> 2) ^ (*(v42 + 4 * BYTE1(v214)) >> 4) ^ (2121501808 - 1344217308 * *(v45 + 4 * v229)) ^ (-1409796151 * *(v45 + 4 * v229) + 102906620);
  v233 = *(v45 + 4 * (v221 ^ 0x39u));
  v234 = *(v42 + 4 * BYTE1(v229));
  v235 = *(v40 + 4 * (HIBYTE(v229) ^ 0x12)) ^ ((HIBYTE(v229) ^ 0x536F3381) + HIBYTE(v229)) ^ *(v41 + 4 * (BYTE2(v224) ^ 0x9Bu)) ^ *(v42 + 4 * BYTE1(v226)) ^ (*(v42 + 4 * BYTE1(v226)) >> 2) ^ (*(v42 + 4 * BYTE1(v226)) >> 4) ^ (2121501808 - 1344217308 * v233) ^ (-1409796151 * v233 + 102906620);
  v236 = *(v45 + 4 * (v224 ^ 0x23u));
  v237 = ((HIBYTE(v226) ^ 0x536F3381) + HIBYTE(v226)) ^ v234 ^ *(v40 + 4 * (HIBYTE(v226) ^ 0x12)) ^ (v234 >> 2) ^ (v234 >> 4) ^ __ROR4__(__ROR4__(*(v41 + 4 * (BYTE2(v221) ^ 0xCEu)), 22) ^ 0xD4515791, 10) ^ (-1409796151 * v236 + 102906620) ^ (2121501808 - 1344217308 * v236) ^ 0x7F66C627;
  v238 = *(v42 + 4 * ((v232 ^ 0xE5DA) >> 8));
  v239 = *(v40 + 4 * (HIBYTE(v231) ^ 0xDF)) ^ ((HIBYTE(v231) ^ 0x536F334C) + (HIBYTE(v231) ^ 0xCD)) ^ *(v41 + 4 * (BYTE2(v235) ^ 0x69u)) ^ v238 ^ (v238 >> 2) ^ (v238 >> 4) ^ (2121501808 - 1344217308 * *(v45 + 4 * v237)) ^ (-1409796151 * *(v45 + 4 * v237) + 102906620);
  v240 = *(v45 + 4 * (v232 ^ 0xDAu));
  v241 = v235 ^ 0xDD16C4FA;
  v242 = *(v40 + 4 * (HIBYTE(v237) ^ 0x12)) ^ ((HIBYTE(v237) ^ 0x536F3381) + HIBYTE(v237)) ^ *(v42 + 4 * BYTE1(v235)) ^ *(v41 + 4 * (BYTE2(v231) ^ 0x68u)) ^ (*(v42 + 4 * BYTE1(v235)) >> 2) ^ (*(v42 + 4 * BYTE1(v235)) >> 4) ^ (-1409796151 * v240 + 102906620) ^ (4 * (((401633170 * v240 + 205813240) & 0x32F55040) + ((-1409796151 * v240 + 102906620) ^ 0x197AA820)));
  v243 = *(v42 + 4 * (BYTE1(v231) ^ 0x3Du));
  v244 = ((((v232 ^ 0x8B18E5DA) >> 24) ^ 0x536F3381) + ((v232 ^ 0x8B18E5DA) >> 24)) ^ *(v41 + 4 * BYTE2(v237)) ^ *(v40 + 4 * (((v232 ^ 0x8B18E5DA) >> 24) ^ 0x12)) ^ v243 ^ (v243 >> 2) ^ (v243 >> 4);
  v245 = *(v45 + 4 * v241);
  v246 = v244 ^ (2121501808 - 1344217308 * v245) ^ (-1409796151 * v245 + 102906620) ^ 0x4808D91C;
  v247 = *(v42 + 4 * (BYTE1(v237) ^ 0xC4u));
  v248 = *(v45 + 4 * (v231 ^ 0x50u));
  v249 = ((HIBYTE(v241) & 0x32 | 0x52471000 | ((HIBYTE(v241) & 0xCD) - ((v241 >> 23) & 0x102) + 19407745)) + HIBYTE(v241)) ^ *(v41 + 4 * (BYTE2(v232) ^ 0x67u)) ^ *(v40 + 4 * (HIBYTE(v241) ^ 0x12)) ^ v247 ^ (v247 >> 2) ^ (v247 >> 4) ^ (-1409796151 * v248 + 102906620) ^ (2121501808 - 1344217308 * v248) ^ 0xE72CF94;
  v250 = *(v45 + 4 * (v242 ^ 0x96u));
  v251 = *(v40 + 4 * (HIBYTE(v239) ^ 0x9B)) ^ ((HIBYTE(v239) ^ 0x89) + (HIBYTE(v239) ^ 0x536F3308)) ^ *(v41 + 4 * BYTE2(v249)) ^ *(v42 + 4 * BYTE1(v246)) ^ (*(v42 + 4 * BYTE1(v246)) >> 2) ^ (*(v42 + 4 * BYTE1(v246)) >> 4) ^ (-1409796151 * v250 + 102906620) ^ (2121501808 - 1344217308 * v250);
  v252 = *(v45 + 4 * (v244 ^ (36 * v245 + 112) ^ (-55 * v245 - 4) ^ 0x1C));
  v253 = *(v40 + 4 * (HIBYTE(v242) ^ 0x1C)) ^ ((HIBYTE(v242) ^ 0xE) + (HIBYTE(v242) ^ 0x536F338F)) ^ *(v41 + 4 * (BYTE2(v239) ^ 0x36u)) ^ *(v42 + 4 * BYTE1(v249)) ^ (*(v42 + 4 * BYTE1(v249)) >> 2) ^ (*(v42 + 4 * BYTE1(v249)) >> 4) ^ (-1409796151 * v252 + 102906620) ^ (2121501808 - 1344217308 * v252);
  v254 = *(v42 + 4 * (BYTE1(v239) ^ 0xE9u));
  v255 = *(v40 + 4 * (HIBYTE(v246) ^ 0x12)) ^ ((HIBYTE(v246) ^ 0x536F3381) + HIBYTE(v246)) ^ *(v41 + 4 * (BYTE2(v242) ^ 7u)) ^ v254 ^ (v254 >> 2) ^ (v254 >> 4) ^ (2121501808 - 1344217308 * *(v45 + 4 * v249)) ^ (-1409796151 * *(v45 + 4 * v249) + 102906620);
  v256 = *(v42 + 4 * (BYTE1(v242) ^ 1u));
  v257 = *(v40 + 4 * (HIBYTE(v249) ^ 0x12)) ^ ((HIBYTE(v249) ^ 0x536F3381) + HIBYTE(v249)) ^ *(v41 + 4 * BYTE2(v246)) ^ v256 ^ (v256 >> 2) ^ (v256 >> 4);
  v258 = *(v45 + 4 * (v239 ^ 0x11u));
  v259 = v257 ^ (-1409796151 * v258 + 102906620) ^ (2121501808 - 1344217308 * v258);
  v260 = v259 ^ 0x1E06F83C;
  v261 = *(v40 + 4 * (HIBYTE(v251) ^ 0xC1)) ^ ((HIBYTE(v251) ^ 0x536F3352) + (HIBYTE(v251) ^ 0xD3)) ^ *(v41 + 4 * ((v259 ^ 0x1E06F83Cu) >> 16));
  v262 = (-(v261 ^ 0xE911B718) ^ (1714611321 - (v261 ^ 0x8F235361)) ^ 0xFC785D65 ^ ((v261 ^ 0xE911B718) - ((2 * (v261 ^ 0xE911B718)) & 0xF8F0BACA) - 59220635)) + 1714611321;
  v263 = *(v42 + 4 * (BYTE1(v259) ^ 0x3Cu));
  v264 = *(v45 + 4 * (v255 ^ 0x3Eu));
  v265 = *(v40 + 4 * (((v253 ^ 0xDF4D0633) >> 24) ^ 0x12)) ^ ((((v253 ^ 0xDF4D0633) >> 24) ^ 0x536F3381) + ((v253 ^ 0xDF4D0633) >> 24)) ^ *(v41 + 4 * (BYTE2(v251) ^ 0x23u)) ^ v263 ^ (v263 >> 2) ^ (v263 >> 4) ^ (2121501808 - 1344217308 * v264) ^ (-1409796151 * v264 + 102906620);
  v266 = *(v42 + 4 * (BYTE1(v251) ^ 0xD6u));
  v267 = (2121501808 - 1344217308 * *(v45 + 4 * v260)) ^ (-1409796151 * *(v45 + 4 * v260) + 102906620) ^ __ROR4__(__ROR4__(((HIBYTE(v255) ^ 0x536F339F) + (HIBYTE(v255) ^ 0x1E)) ^ *(v40 + 4 * (HIBYTE(v255) ^ 0xC)) ^ *(v41 + 4 * ((v253 ^ 0xDF4D0633) >> 16)) ^ v266 ^ (v266 >> 4) ^ (v266 >> 2) ^ 0x2874112, 9) ^ 0xDAD078C6, 23);
  v268 = *(v45 + 4 * (v253 ^ 0x33u));
  v269 = *(v42 + 4 * (BYTE1(v255) ^ 0xF2u)) ^ (*(v42 + 4 * (BYTE1(v255) ^ 0xF2u)) >> 4) ^ (*(v42 + 4 * (BYTE1(v255) ^ 0xF2u)) >> 2) ^ (-1409796151 * v268 + 102906620) ^ (2121501808 - 1344217308 * v268) ^ 0xB2B28977 ^ v262;
  v270 = *(v42 + 4 * (BYTE1(v253) ^ 0xC2u));
  v271 = *(v45 + 4 * (v251 ^ 0x33u));
  v272 = *(v40 + 4 * (HIBYTE(v260) ^ 0x12)) ^ ((HIBYTE(v260) ^ 0x536F3381) + HIBYTE(v260)) ^ *(v41 + 4 * (BYTE2(v255) ^ 0x73u)) ^ v270 ^ (v270 >> 2) ^ (v270 >> 4) ^ (2121501808 - 1344217308 * v271) ^ (-1409796151 * v271 + 102906620);
  v273 = *(v42 + 4 * (BYTE1(v265) ^ 0x3Eu));
  v274 = -1409796151 * *(v45 + 4 * ((*(v42 + 4 * (BYTE1(v255) ^ 0xF2u)) ^ (*(v42 + 4 * (BYTE1(v255) ^ 0xF2u)) >> 4) ^ (*(v42 + 4 * (BYTE1(v255) ^ 0xF2u)) >> 2) ^ (-55 * v268 - 4) ^ (36 * v268 + 112)) ^ 0x77u ^ v262));
  v275 = ((HIBYTE(v272) ^ 0x58) + (HIBYTE(v272) ^ 0x536F33D9)) ^ *(v40 + 4 * (HIBYTE(v272) ^ 0x4A)) ^ v273 ^ *(v41 + 4 * (BYTE2(v267) ^ 0x34u)) ^ (v273 >> 2) ^ (v273 >> 4) ^ (v274 + 102906620) ^ 0xFC9C17DF;
  HIDWORD(v276) = v274 - 543366372;
  LODWORD(v276) = v274 - 543366372;
  v277 = (v276 >> 18) & 0xFFFFCFFF;
  LODWORD(v276) = __ROR4__(v275, 20);
  HIDWORD(v276) = v277 ^ v276 ^ 0x694;
  LODWORD(v276) = v277 ^ v276 ^ 0xD0E4B000;
  v278 = v276 >> 12;
  HIDWORD(v276) = -1431655765 * (HIBYTE(v278) ^ 0xC);
  LODWORD(v276) = HIDWORD(v276);
  v279 = (v276 >> 5) >= 0x2AAAAAB;
  v280 = BYTE2(v272) ^ 9;
  v281 = *(v42 + 4 * (BYTE1(v272) ^ 0xE4u));
  v282 = *(v45 + 4 * (v267 ^ 0x1Eu));
  v283 = v281 ^ *(v41 + 4 * BYTE2(v269)) ^ __ROR4__((32 * ((HIBYTE(v265) ^ 0x36F33D5) + (HIBYTE(v265) ^ 0x54))) ^ __ROR4__(*(v40 + 4 * (HIBYTE(v265) ^ 0x46)), 27) ^ 0x33D407B, 5) ^ (v281 >> 2) ^ (v281 >> 4) ^ (2121501808 - 1344217308 * v282) ^ (-1409796151 * v282 + 102906620);
  v284 = *(v42 + 4 * BYTE1(v269));
  v285 = *(v45 + 4 * (v272 ^ 0xB6u));
  v286 = ((HIBYTE(v269) ^ 0x536F3381) + HIBYTE(v269)) ^ *(v41 + 4 * v280) ^ *(v40 + 4 * (HIBYTE(v269) ^ 0x12));
  v287 = *(v42 + 4 * (BYTE1(v267) ^ 0xD6u));
  v288 = v286 ^ v287 ^ (v287 >> 2) ^ (v287 >> 4);
  v289 = *(v45 + 4 * (v265 ^ 0xB4u));
  v290 = *(v40 + 4 * (HIBYTE(v267) ^ 0x29)) ^ ((HIBYTE(v267) ^ 0x536F33BA) + (HIBYTE(v267) ^ 0x3B)) ^ *(v41 + 4 * ((((BYTE2(v265) ^ 0x6D) - (BYTE2(v265) ^ 0x12)) ^ 0xFFFFFFFE) + (BYTE2(v265) ^ 0x6D))) ^ v284 ^ (v284 >> 2) ^ (v284 >> 4) ^ (-1409796151 * v285 + 102906620) ^ (2121501808 - 1344217308 * v285) ^ 0x952C0EB8;
  LODWORD(v276) = __ROR4__(v288 ^ (-1409796151 * v289 + 102906620) ^ (2121501808 - 1344217308 * v289) ^ 0x125D906C, 27) ^ 0xBAA60102;
  HIDWORD(v276) = v276;
  v291 = v276 >> 5;
  v292 = *(v42 + 4 * BYTE1(v290));
  v293 = *(v45 + 4 * (v283 ^ 0x15u));
  v294 = (-1409796151 * v293 + 102906620) ^ (2121501808 - 1344217308 * v293);
  v295 = *(v40 + 4 * (HIBYTE(v291) ^ 0x12)) ^ ((HIBYTE(v291) ^ 0x536F3381) + HIBYTE(v291)) ^ v292 ^ *(v41 + 4 * ((((((v278 ^ 0xC99092E) >> (v278 & 0x10)) - ((2 * ((v278 ^ 0xC99092E) >> (v278 & 0x10))) & 0x8A00D31C) - 989828722) ^ 0xC500698E) >> (v278 & 0x10 ^ 0x10)) ^ 0x7Fu)) ^ (v292 >> 2) ^ (v292 >> 4) ^ 0x2821C3B2;
  v296 = (-v294 ^ (v294 - ((2 * v294) & 0x9123AF06) + 1217517443) ^ 0x4891D783 ^ (v295 - (v295 ^ v294))) + v295;
  v297 = *(v45 + 4 * (v290 ^ 1u));
  v298 = *(v42 + 4 * (BYTE1(v278) ^ 0xCDu));
  v299 = (2121501808 - 1344217308 * v297) ^ (-1409796151 * v297 + 102906620) ^ __ROR4__(__ROR4__(((HIBYTE(v283) ^ 0x536F3338) + (HIBYTE(v283) ^ 0xB9)) ^ *(v40 + 4 * (HIBYTE(v283) ^ 0xAB)) ^ *(v41 + 4 * (BYTE2(v291) ^ 0xCEu)) ^ v298 ^ (v298 >> 4) ^ (v298 >> 2) ^ 0x24EBA416, 18) ^ 0xC3B419E4, 14);
  v301 = *(v45 + 4 * (v278 ^ 0x2Fu));
  v302 = 96 * (v278 / 0x60000000);
  if (v279)
  {
    v302 = HIBYTE(v278) ^ 0xC;
  }

  v300 = *(v42 + 4 * (BYTE1(v291) ^ 0x1Eu));
  v303 = *(v40 + 4 * (HIBYTE(v290) ^ 0x12)) ^ ((HIBYTE(v290) ^ 0x536F3381) + HIBYTE(v290)) ^ *(v41 + 4 * (BYTE2(v283) ^ 0xE6u)) ^ v300 ^ (v300 >> 2) ^ (v300 >> 4) ^ (-1409796151 * v301 + 102906620) ^ (2121501808 - 1344217308 * v301);
  v304 = *(v42 + 4 * (BYTE1(v283) ^ 0x24u));
  v305 = *(v45 + 4 * (v291 ^ 0xFDu));
  v306 = *(v41 + 4 * BYTE2(v290)) ^ v304 ^ *(v40 + 4 * (v302 ^ 0x12u)) ^ (v304 >> 2) ^ (v304 >> 4) ^ ((v302 ^ 0x536F3381) + v302) ^ (2121501808 - 1344217308 * v305) ^ (-1409796151 * v305 + 102906620);
  v307 = v303 ^ 0xFCAF2E1B;
  v308 = *(v45 + 4 * (v299 ^ 0xFDu));
  v309 = *(v45 + 4 * (v303 ^ 0x1Bu));
  v310 = *(v45 + 4 * (v306 ^ 0xB6u));
  v311 = *(v45 + 4 * (v296 ^ 0xF5u));
  v312 = -1409796151 * v308 + 102906620;
  v313 = -1409796151 * v309 + 102906620;
  v314 = -1409796151 * v310 + 102906620;
  v315 = 2121501808 - 1344217308 * v308;
  v316 = 2121501808 - 1344217308 * v309;
  v317 = 2121501808 - 1344217308 * v310;
  v318 = -1802333311 * v529;
  v319 = *(v523 + ((-127 * v529) ^ 0xA8));
  v320 = v319 ^ (v319 >> 6) ^ (v319 >> 4);
  v321 = ((((*(v525 + (HIBYTE(v318) ^ 0x5CLL)) - 110) ^ 6) << 24) ^ 0x2FC96814) & (v320 ^ 0xFFCB6EDE);
  v322 = ((((*(v524 + (BYTE2(v318) ^ 0x44)) << 16) ^ 0x87140365) & (((*(v526 + (BYTE1(v318) ^ 0xB1)) - 121) << 8) ^ 0xF7FF7A7F) & 0xFFFF03FF | ((*(v526 + (BYTE1(v318) ^ 0xB1)) - 121) >> 2 << 10)) ^ 0x149B7480) & ((v321 | v320 & 0xEB) ^ 0xB73697E0) ^ (v321 & 0x6C08601A | v320 & 0xA);
  v323 = (v296 ^ 0xD004A5F5) >> 24;
  v324 = (v323 ^ 0x536F3381) + v323;
  v325 = *(v40 + 4 * (v323 ^ 0x12));
  v326 = *(v42 + 4 * (BYTE1(v303) ^ 0xEAu));
  v327 = v326 ^ *(v41 + 4 * (BYTE2(v306) ^ 0x67u)) ^ (v326 >> 2) ^ (v326 >> 4) ^ v312 ^ v315 ^ ((-v324 ^ (v324 - ((2 * v324) & 0x21441B4) - 1994757926) ^ 0x891A68DA ^ ((v325 ^ 0x892EB73D) - ((v324 - ((2 * v324) & 0x25C6E7A) - 1993427139) ^ v325))) + (v325 ^ 0x892EB73D));
  v328 = *(v42 + 4 * (((v306 ^ 0x34B6) >> 8) ^ 0xC4u));
  v329 = *(v40 + 4 * (HIBYTE(v299) ^ 0x3F)) ^ ((HIBYTE(v299) ^ 0x536F33AC) + (HIBYTE(v299) ^ 0x2D)) ^ v328 ^ *(v41 + 4 * (BYTE2(v296) ^ 0x7Bu)) ^ (v328 >> 2) ^ (v328 >> 4) ^ v313 ^ v316;
  v330 = *(v40 + 4 * (HIBYTE(v307) ^ 0x12)) ^ ((HIBYTE(v307) ^ 0x536F3381) + HIBYTE(v307)) ^ *(v41 + 4 * (BYTE2(v299) ^ 0xBDu)) ^ *(v42 + 4 * (BYTE1(v296) ^ 0xA5u)) ^ (*(v42 + 4 * (BYTE1(v296) ^ 0xA5u)) >> 2) ^ (*(v42 + 4 * (BYTE1(v296) ^ 0xA5u)) >> 4) ^ v317 ^ v314;
  v331 = ((((((v306 ^ 0x541834B6u) >> 24) ^ 0x381) + ((v306 ^ 0x541834B6u) >> 24)) << 21) | 0xA6DE6) ^ __ROR4__(*(v40 + 4 * (((v306 ^ 0x541834B6u) >> 24) ^ 0x12)), 11);
  v332 = *(v42 + 4 * (BYTE1(v299) ^ 0xF0u));
  v333 = v332 ^ *(v41 + 4 * BYTE2(v307)) ^ (v332 >> 2) ^ (v332 >> 4) ^ (v331 >> 21) & 0x9A ^ (-1409796151 * v311 + 102906620) ^ (2121501808 - 1344217308 * v311) ^ ((__ROR4__(v331, 21) & 0xA9E9C765 ^ 0x1BC114C) & ((v331 << 11) & 0x56163800 ^ 0xFFFBE76D) | (v331 << 11) & 0x56022800);
  v334 = (BYTE1(v330) ^ 0x7F) + 1640077447 + ((v330 >> 7) & 0x10C ^ 0xFFFFFFF3);
  v335 = *&v518[4 * (BYTE1(v330) ^ 0x9B)];
  v336 = (v334 & 0x20009651 ^ v335 & 0xB830B651 ^ 0xD7CF4DAF) & (v335 & 0x47CF49AE ^ v334 & 0x41C109AE ^ 0xD002E58B) | (v334 & 0x20009651 ^ v335 & 0xB830B651) & 0x28301250;
  v337 = (*(v40 + 4 * (HIBYTE(v307) ^ 0x12)) ^ ((HIBYTE(v307) ^ 0x81) + HIBYTE(v307)) ^ *(v41 + 4 * (BYTE2(v299) ^ 0xBDu)) ^ *(v42 + 4 * (BYTE1(v296) ^ 0xA5u)) ^ (*(v42 + 4 * (BYTE1(v296) ^ 0xA5u)) >> 2) ^ (*(v42 + 4 * (BYTE1(v296) ^ 0xA5u)) >> 4) ^ v317 ^ v314) ^ 0x8C;
  if (v330 < 0)
  {
    v338 = -128;
  }

  else
  {
    v338 = 128;
  }

  v339 = ((HIBYTE(v330) ^ 0x42) + v338) ^ 0x6C;
  v340 = *&v519[4 * (HIBYTE(v329) ^ 0xAA)];
  v341 = (v330 ^ BYTE2(v327)) ^ v340 ^ *&v191[4 * (BYTE2(v327) ^ 0x90)] ^ *&v518[4 * (((v333 ^ 0xD45E) >> 8) ^ 0xE4)] ^ *&v179[4 * v337] ^ (((16 * v340) ^ 0x7C513F40) + 890840080) ^ ((v333 ^ 0xD45E) >> 8) ^ 0x1F7F6647;
  v342 = *&v519[4 * v339];
  v343 = *&v519[4 * (HIBYTE(v327) ^ 0x1B)];
  v344 = *&v519[4 * ((v333 ^ 0x95A9D45E) >> 24)];
  v345 = ((v333 ^ 0x95A9D45E) >> 16);
  v346 = v322 ^ 0xE3479D26;
  v347 = (BYTE2(v329) ^ BYTE1(v327)) ^ v322 ^ 0xE3479D26 ^ v333 ^ 0x5E ^ *&v191[4 * (BYTE2(v329) ^ 0x68)] ^ *&v518[4 * (BYTE1(v327) ^ 0xEC)] ^ v342 ^ *&v179[4 * (v333 ^ 0x4D)] ^ (16 * (((2 * v342) & 0x6A32482 ^ 0x6822480) + (v342 ^ 0x49481B5)));
  v348 = v343 ^ v329 ^ *&v179[4 * (v329 ^ 0xD0)] ^ *&v191[4 * (v345 ^ 0x2E)] ^ (((16 * v343) ^ 0x7C513F40) + 890840080) ^ v345 ^ v336 ^ v341;
  v349 = v322 ^ (BYTE1(v329) ^ v327 ^ BYTE2(v330)) ^ *&v191[4 * (BYTE2(v330) ^ 0x9D)] ^ v344 ^ *&v518[4 * (BYTE1(v329) ^ 0x17)] ^ *&v179[4 * (v327 ^ 0x25)] ^ (((16 * v344) ^ 0x7C513F40) + 890840080) ^ 0x2783CEA0;
  v350 = v322 ^ 0xE3479D26 ^ v341 ^ 0xF7876057 ^ v347;
  v351 = v347 ^ v348;
  v352 = v349 ^ v348;
  v353 = v349 ^ v350;
  v354 = __ROR4__(__ROR4__(v350 ^ v351 ^ 0x4E7F1AA7, 22) ^ 0x5E91F0C4, 10);
  v355 = *(&off_1010A0B50 + (v521 ^ 0x3AA6)) - 1791506766;
  v356 = *(&off_1010A0B50 + v521 - 11230) - 2070714474;
  v357 = *(&off_1010A0B50 + v521 - 12189) - 1927579167;
  v358 = *(&off_1010A0B50 + v521 - 9484) - 33796870;
  v359 = v353 ^ 0xBE12D0E;
  v360 = ((v354 ^ 0xA161) >> 8);
  v361 = v360 ^ *&v355[4 * ((v353 ^ 0xBE12D0Eu) >> 24)] ^ (*&v356[4 * (((v352 ^ 0x26CA768D) >> 16) ^ 0x82)] - 1067790456);
  v362 = BYTE2(v351) ^ 0xFB;
  v363 = *&v357[4 * (v360 ^ 0x70)];
  v364 = *&v358[4 * (v351 ^ 1)];
  v365 = v361 ^ v364 ^ v363 ^ (16 * v364);
  v366 = *&v358[4 * (v353 ^ 0x1F)];
  v367 = *&v355[4 * (HIBYTE(v352) ^ 0x89)] ^ ((v351 ^ 0xD401) >> 8) ^ *&v357[4 * (((v351 ^ 0xD401) >> 8) ^ 0x70)] ^ v366 ^ (*&v356[4 * ((v354 ^ 0xEFCCA161) >> 16)] - 1067790456) ^ (16 * v366);
  v368 = *&v358[4 * (v354 ^ 0x61)];
  v369 = *&v355[4 * (HIBYTE(v351) ^ 0x1E)] ^ *&v357[4 * (((v352 ^ 0x768D) >> 8) ^ 0xA7)] ^ (*&v356[4 * BYTE2(v359)] - 1067790456) ^ v368 ^ (16 * v368) ^ 0xAE812F63;
  v370 = *&v358[4 * (v352 ^ 0x5C)];
  v371 = *&v355[4 * ((v354 ^ 0xEFCCA161) >> 24)] ^ BYTE1(v359) ^ (*&v356[4 * v362] - 1067790456) ^ *&v357[4 * (BYTE1(v359) ^ 0x70)] ^ v370 ^ (16 * v370);
  v372 = (-(v367 ^ 0x3E27E543) ^ (-96167783 - (v367 ^ 0xC4637DDA)) ^ 0x5BC1370D ^ ((v367 ^ 0x3E27E543) - ((2 * (v367 ^ 0x3E27E543)) & 0xB7826E1A) + 1539389197)) - 96167783;
  v373 = BYTE1(v372);
  v374 = v371 ^ 0xECBDBB2A;
  v375 = *&v358[4 * (v371 ^ 0x2A)];
  v376 = (*&v356[4 * (BYTE2(v365) ^ 0x14)] - 1067790456) ^ *&v355[4 * HIBYTE(v369)] ^ v375 ^ *&v357[4 * (BYTE1(v372) ^ 0x70)] ^ (16 * v375);
  HIDWORD(v378) = *&v357[4 * (((v371 ^ 0xBB2A) >> 8) ^ 0x70)];
  LODWORD(v378) = HIDWORD(v378);
  v377 = v378 >> 3;
  HIDWORD(v378) = ((v371 ^ 0xBB2A) >> 8) ^ 0x26AA41AC;
  LODWORD(v378) = HIDWORD(v378);
  v379 = v378 >> 3;
  v380 = v379 & 0x60000005;
  v381 = ((2 * ((v379 & 0x8000001A ^ 0x5D2) & (v377 ^ 0x598) ^ (v379 & 2 | 0x3810C000))) ^ 0x8FDE76FB) + (v377 & 0x95361DFA ^ 0x9120193A) + (v379 & 0x8000001A ^ 0x5D2);
  v382 = (v377 & 0x6AC9E205 ^ v380 ^ 0xB20EE6E9) & ~(v381 + 1) | (v381 + 1) & 0x6D397B16;
  v383 = *&v355[4 * (HIBYTE(v365) ^ 0x58)] ^ (*&v356[4 * (BYTE2(v372) ^ 0xDD)] - 1067790456) ^ (v382 >> 29) ^ 0x55A0E38C ^ (((((v382 ^ 0x5612A59B) << ((v522 >> 2) & 3)) - ((2 * ((v382 ^ 0x5612A59B) << ((v522 >> 2) & 3))) & 0xA83B471A) + 1411228557) ^ 0x541DA38D) << ((v522 >> 2) & 3 ^ 3));
  v384 = *&v358[4 * (v369 ^ ((v352 ^ 0x768D) >> 8))];
  v385 = v384 ^ (16 * v384);
  v386 = v385 ^ 0xC265FAB2;
  if ((v383 & 0x100 & v385) != 0)
  {
    v387 = -(v383 & 0x100);
  }

  else
  {
    v387 = v383 & 0x100;
  }

  v388 = (v387 + v386) ^ v383 & 0xFFFFFEFF;
  v389 = *&v358[4 * (v365 ^ 0xA8)];
  v390 = *&v355[4 * (HIBYTE(v372) ^ 0x7B)] ^ BYTE1(v369) ^ *&v357[4 * (BYTE1(v369) ^ 0x70)] ^ (*&v356[4 * (BYTE2(v371) ^ 0x60)] - 1067790456) ^ v389 ^ (16 * v389);
  v391 = *&v355[4 * HIBYTE(v374)];
  v392 = *&v358[4 * (v372 ^ 0x11)];
  v393 = *&v357[4 * (BYTE1(v365) ^ 0x7C)] ^ BYTE1(v365) ^ (*&v356[4 * BYTE2(v369)] - 1067790456) ^ ((((v391 ^ 0x97811EAD) - (v391 ^ 0x7301E810)) ^ 0xFFFFFFFE) + (v391 ^ 0x97811EAD)) ^ v392 ^ (16 * v392);
  v394 = *&v358[4 * ((v357[4 * (BYTE1(v365) ^ 0x7C)] ^ BYTE1(v365) ^ (v356[4 * BYTE2(v369)] - 120) ^ ((((v391 ^ 0xAD) - (v391 ^ 0x10)) ^ 0xFE) + (v391 ^ 0xAD)) ^ v392 ^ (16 * v392)) ^ 0x9C)];
  v395 = (v394 & 0xC973BFBB ^ 0x70F616A3 ^ (16 * v394) & 0xC973BFB0) & (v394 & 0x368C4044 ^ 0xFD77FFBB) | v394 & 0x6084044;
  v396 = (16 * v394) & 0x368C4040;
  v397 = ((v376 ^ v373) & 0xF7 ^ 0x759F1D8E) & ((v376 ^ v373) & 8 | 0xF5BFFDF7) ^ 0x759F1DC8;
  v398 = v390 ^ 0xCB7;
  v399 = HIBYTE(v390) ^ 0x29;
  v400 = *&v357[4 * (BYTE1(v393) ^ 0x90)] ^ (*&v356[4 * (BYTE2(v390) ^ 0xA0)] - 1067790456) ^ BYTE1(v393) ^ *&v358[4 * v397] ^ *&v355[4 * (HIBYTE(v388) ^ 0xD6)] ^ (16 * *&v358[4 * v397]);
  v401 = *&v358[4 * (v388 ^ 0x2D)];
  v402 = *&v355[4 * v399] ^ BYTE1(v376) ^ (*&v356[4 * (BYTE2(v393) ^ 0x72)] - 1067790456) ^ *&v357[4 * (BYTE1(v376) ^ 0x65)] ^ v401 ^ (16 * v401);
  v403 = BYTE2(v376) ^ 0xA0;
  v404 = *&v355[4 * (HIBYTE(v376) ^ 0x46)] ^ *&v357[4 * (HIBYTE(v398) ^ 0x70)] ^ HIBYTE(v398) ^ v396 ^ v395 ^ 0x9920F9F7 ^ (*&v356[4 * (BYTE2(v388) ^ 0xAD)] - 1067790456);
  v405 = (*&v356[4 * v403] - 1067790456) ^ *&v355[4 * (HIBYTE(v393) ^ 0x17)] ^ *&v358[4 * v398] ^ *&v357[4 * (BYTE1(v388) ^ 0x5B)] ^ (16 * *&v358[4 * v398]) ^ BYTE1(v388);
  v406 = v405 ^ 0xB34F24EA;
  v407 = *&v358[4 * (-(v405 ^ 0xEA) ^ (17 - (v405 ^ 0xFB)) ^ 0x75F6CF5B ^ ((v405 ^ 0xEA) - 2 * ((v405 ^ 0xB34F24EA) & 0x5F ^ v405 & 4) + 1979109211)) + 68];
  v408 = v407 ^ (1283738007 - (v407 ^ 0xCEC3F4D2)) ^ 0x8247BD45 ^ (2109227707 - (((v407 ^ 0x43E13765) - 1138833253) ^ ((v407 ^ 0x857D09BA) + 2055403078) ^ ((v407 ^ 0x44DB839A) - 1155236762)));
  v409 = (16 * (v408 - ((2 * (v408 + 1283738007)) & 0xC132868)) - 1461855056) ^ (v408 + 1283738007);
  v410 = *&v355[4 * HIBYTE(v404)] ^ (BYTE1(v402) | 0x3C8E9800) ^ *&v357[4 * (BYTE1(v402) ^ 0x4C)] ^ (*&v356[4 * (BYTE2(v400) ^ 0xBE)] - 1067790456) ^ 0xC0CC87CD;
  v411 = v409 + v410 - 2 * (v409 & v410);
  v412 = *&v358[4 * (v404 ^ 0x11)];
  v413 = (*&v356[4 * (BYTE2(v402) ^ 0xD1)] - 1067790456) ^ *&v355[4 * (HIBYTE(v400) ^ 0x31)] ^ *&v357[4 * (BYTE1(v406) ^ 0x70)] ^ BYTE1(v406) ^ v412 ^ (16 * v412);
  v414 = *&v358[4 * (v400 ^ 0xC4)];
  v415 = *&v355[4 * (HIBYTE(v402) ^ 0x8B)] ^ BYTE1(v404) ^ *&v357[4 * (BYTE1(v404) ^ 0x70)] ^ (*&v356[4 * BYTE2(v406)] - 1067790456) ^ v414 ^ (16 * v414);
  v416 = *&v355[4 * HIBYTE(v406)] ^ BYTE1(v400) ^ (*&v356[4 * BYTE2(v404)] - 1067790456) ^ *&v357[4 * (BYTE1(v400) ^ 0x17)];
  v417 = *&v358[4 * (v402 ^ 0x9D)];
  v418 = v416 ^ v417 ^ (16 * v417);
  LOBYTE(v417) = v415 ^ 0x6A;
  v419 = *&v358[4 * (v418 ^ 7)];
  v420 = *&v357[4 * (((v415 ^ 0x536A) >> 8) ^ 0x70)] ^ (*&v356[4 * (BYTE2(v413) ^ 0xBB)] - 1067790456) ^ ((v415 ^ 0x536A) >> 8) ^ v419 ^ *&v355[4 * (HIBYTE(v411) ^ 0xCC)] ^ (16 * v419);
  v421 = *&v358[4 * (v411 ^ 0x4A)];
  v422 = BYTE1(v418) ^ *&v357[4 * (BYTE1(v418) ^ 0x56)] ^ *&v355[4 * (HIBYTE(v413) ^ 0xCC)] ^ (*&v356[4 * (BYTE2(v415) ^ 0xB)] - 1067790456) ^ v421 ^ (16 * v421);
  v423 = *&v358[4 * (v413 ^ 0xCA)];
  v424 = *&v355[4 * (HIBYTE(v415) ^ 0x52)] ^ (*&v356[4 * (BYTE2(v418) ^ 0xB1)] - 1067790456) ^ BYTE1(v411) ^ v423 ^ *&v357[4 * (BYTE1(v411) ^ 0x3D)] ^ (16 * v423);
  v425 = *&v358[4 * v417];
  v426 = *&v355[4 * (HIBYTE(v418) ^ 2)] ^ BYTE1(v413) ^ *&v357[4 * (BYTE1(v413) ^ 0xFF)] ^ v425 ^ (*&v356[4 * (BYTE2(v411) ^ 0x10)] - 1067790456) ^ (16 * v425);
  v427 = (v355[4 * (HIBYTE(v418) ^ 2)] ^ BYTE1(v413) ^ v357[4 * (BYTE1(v413) ^ 0xFF)] ^ v425 ^ (v356[4 * (BYTE2(v411) ^ 0x10)] - 120) ^ (16 * v425)) ^ 0x83;
  BYTE1(v418) = BYTE1(v422) ^ 0x37;
  v428 = (*&v356[4 * ((v422 ^ 0x676237FBu) >> 16)] - 1067790456) ^ *&v355[4 * ((v420 ^ 0x73D2FBC6u) >> 24)] ^ *&v357[4 * (((v424 ^ 0x4066) >> 8) ^ 0x70)] ^ ((v424 ^ 0x4066) >> 8) ^ *&v358[4 * v427] ^ (16 * *&v358[4 * v427]);
  v429 = *&v358[4 * (v420 ^ 0xD7)];
  v430 = BYTE1(v426) ^ *&v355[4 * ((v422 ^ 0x676237FBu) >> 24)] ^ (*&v356[4 * (BYTE2(v424) ^ 0xB6)] - 1067790456) ^ *&v357[4 * (BYTE1(v426) ^ 0xC3)] ^ v429 ^ (16 * v429);
  v431 = *&v355[4 * (HIBYTE(v424) ^ 0xB)] ^ BYTE1(v420) ^ 0xFB ^ *&v357[4 * (BYTE1(v420) ^ 0x8B)] ^ (*&v356[4 * (BYTE2(v426) ^ 0x69)] - 1067790456) ^ *&v358[4 * (v422 ^ 0xEA)] ^ (16 * *&v358[4 * (v422 ^ 0xEA)]);
  v432 = *&v358[4 * (v424 ^ 0x66)];
  v433 = *&v355[4 * (HIBYTE(v426) ^ 0x7F)] ^ BYTE1(v418) ^ (*&v356[4 * ((v420 ^ 0x73D2FBC6u) >> 16)] - 1067790456) ^ *&v357[4 * (BYTE1(v418) ^ 0x70)] ^ v432 ^ (16 * v432);
  v434 = v431 ^ 0x8865F400;
  v435 = *&v358[4 * (v433 ^ 0x5C)];
  v436 = *&v357[4 * (BYTE1(v434) ^ 0x70)] ^ *&v355[4 * (HIBYTE(v428) ^ 0xB9)] ^ (*&v356[4 * (BYTE2(v430) ^ 0xCF)] - 1067790456) ^ BYTE1(v434) ^ v435 ^ (16 * v435);
  v437 = *&v357[4 * (BYTE1(v433) ^ 0x4C)] ^ *&v355[4 * (HIBYTE(v430) ^ 0x37)] ^ (*&v356[4 * (BYTE2(v431) ^ 0xB8)] - 1067790456);
  v438 = *&v358[4 * (v428 ^ 0x9E)];
  v439 = v438 ^ (16 * v438) ^ 0xA63C6915;
  v440 = BYTE1(v433) ^ 0xFC421FCD ^ v437;
  if ((v439 & 0x40000 & v437) != 0)
  {
    v441 = -(v439 & 0x40000);
  }

  else
  {
    v441 = v439 & 0x40000;
  }

  v442 = (v441 + v440) ^ v439 & 0xFFFBFFFF;
  v443 = *&v358[4 * (v430 ^ 0xBF)];
  v444 = *&v355[4 * HIBYTE(v434)] ^ BYTE1(v428) ^ *&v357[4 * (BYTE1(v428) ^ 0xD0)] ^ (*&v356[4 * (BYTE2(v433) ^ 0x59)] - 1067790456) ^ v443 ^ (16 * v443);
  v445 = *&v355[4 * (HIBYTE(v433) ^ 0x32)] ^ BYTE1(v430) ^ *&v357[4 * (BYTE1(v430) ^ 0x20)] ^ (*&v356[4 * (BYTE2(v428) ^ 0xB0)] - 1067790456);
  v446 = *&v358[4 * v431];
  v447 = v445 ^ v446 ^ (16 * v446);
  v448 = v444 ^ 0x730712D1;
  v449 = *&v358[4 * ((v445 ^ v446 ^ (16 * v446)) ^ 0xFC)];
  v450 = (*&v356[4 * (BYTE2(v442) ^ 0x70)] - 1067790456) ^ *&v355[4 * ((v436 ^ 0xA9A3EAB7) >> 24)] ^ *&v357[4 * (((v444 ^ 0x12D1) >> 8) ^ 0x70)] ^ ((v444 ^ 0x12D1) >> 8) ^ v449 ^ (16 * v449);
  v451 = *&v355[4 * (HIBYTE(v444) ^ 8)] ^ ((v436 ^ 0xEAB7) >> 8) ^ (*&v356[4 * (BYTE2(v447) ^ 0x24)] - 1067790456) ^ *&v357[4 * (((v436 ^ 0xEAB7) >> 8) ^ 0x70)];
  v452 = v442 ^ 0xB2ADA361;
  v453 = *&v358[4 * (v442 ^ 0x70)];
  v454 = v451 ^ v453 ^ (16 * v453);
  v455 = *&v358[4 * (v436 ^ 0xB7)];
  v456 = *&v356[4 * (BYTE2(v436) ^ 0x7E)];
  v457 = *&v355[4 * HIBYTE(v452)] ^ BYTE1(v447) ^ (*&v356[4 * BYTE2(v448)] - 1067790456) ^ *&v357[4 * (BYTE1(v447) ^ 0xE0)] ^ v455 ^ (16 * v455) ^ 0xEACDFCAB;
  v458 = *&v355[4 * (HIBYTE(v447) ^ 0xF6)] ^ BYTE1(v452) ^ (v456 - 1067790456) ^ *&v358[4 * v448] ^ *&v357[4 * (BYTE1(v452) ^ 0x70)] ^ (16 * *&v358[4 * v448]);
  v459 = *&v357[4 * (BYTE1(v454) ^ 0xB8)];
  v460 = (BYTE1(v454) ^ 0x500A3EDF) + (v459 ^ 0xDF49C9F6) + ((2 * ((v459 ^ 0x4000220D) & (BYTE1(v454) ^ 0x500A3EDF) ^ (v454 >> 8) & 0xFB)) ^ 0xDFEFAA49);
  v461 = v450 ^ 0xA3EB7D6B;
  v462 = *&v358[4 * (v450 ^ 0x7A)];
  v493 = BYTE1(v458) ^ *&v355[4 * HIBYTE(v457)] ^ (*&v356[4 * (BYTE2(v454) ^ 0x13)] - 1067790456) ^ *&v357[4 * (BYTE1(v458) ^ 0xC4)] ^ v462 ^ (16 * v462);
  v463 = *&v355[4 * HIBYTE(v461)];
  v464 = *&v355[4 * (HIBYTE(v458) ^ 0x4A)];
  v465 = *&v356[4 * (BYTE2(v457) ^ 0xDD)];
  v466 = *&v356[4 * ~HIWORD(v458)];
  v467 = *&v356[4 * BYTE2(v461)];
  v468 = BYTE1(v461);
  v469 = *&v357[4 * (v468 ^ 0x70)];
  v470 = BYTE1(v457);
  v471 = *&v357[4 * (BYTE1(v457) ^ 0x70)];
  v472 = *&v358[4 * (v458 ^ 0x6B)];
  v473 = *&v358[4 * v457];
  v474 = *&v358[4 * (v454 ^ 8)];
  v475 = v464 ^ v470 ^ (v467 - 1067790456) ^ v471 ^ v474 ^ (16 * v474);
  v476 = v463 ^ v472 ^ (v465 - 1067790456) ^ (16 * v472) ^ 0x9147DFD9 ^ (v460 + 1);
  v492 = v468 ^ *&v355[4 * (HIBYTE(v454) ^ 0x80)] ^ (v466 - 1067790456) ^ v469 ^ v473 ^ (16 * v473) ^ 0x9CD58468;
  v477 = *(&off_1010A0B50 + v521 - 10398) - 922975018;
  v478 = *(&off_1010A0B50 + (v521 ^ 0x365D)) - 860432543;
  v479 = *(&off_1010A0B50 + (v521 ^ 0x20C3)) - 1453620159;
  v480 = v475 ^ 0x95;
  v481 = *(&off_1010A0B50 + v521 - 12078) - 1753806394;
  LOBYTE(v455) = v481[v476];
  v482 = v455 & 0x8B | 0x50;
  v483 = v455 & 0x37 ^ 0x26;
  v484 = HIBYTE(v493) ^ *&v477[4 * (HIBYTE(v493) ^ 0xB7)] ^ *&v479[4 * BYTE2(v492)] ^ (*&v478[2 * (BYTE1(v475) ^ 0x4A)] ^ BYTE1(v475)) ^ 0x72A02637 ^ ((v455 ^ (2 * ((v455 ^ 0x6A) & (2 * ((v455 ^ 0x6A) & (2 * ((v455 ^ 0x6A) & (2 * ((v455 ^ 0x6A) & (2 * ((v455 ^ 0x6A) & (2 * ((2 * v455) & (v455 ^ 0xC3) & 0x56 ^ v483)) ^ v483)) ^ v483)) ^ v483)) ^ v483)) ^ v483)) ^ 0x98) + (((2 * v455) ^ (4 * ((v455 ^ 2) & (2 * ((v455 ^ 0x6A) & (2 * ((v455 ^ 0x6A) & (2 * ((v455 ^ 0x6A) & (2 * v482) ^ v482)) ^ v482)) ^ v482)) ^ v482))) & 0x5E ^ 0x16));
  v485 = HIBYTE(v476);
  v486 = *&v477[4 * (HIBYTE(v476) ^ 0xB6)];
  v487 = HIBYTE(v492);
  v488 = *&v477[4 * (HIBYTE(v492) ^ 0xB6)];
  v489 = HIBYTE(v475);
  v490 = *&v477[4 * (HIBYTE(v475) ^ 0xB0)];
  LOWORD(v469) = *&v478[2 * (BYTE1(v476) ^ 0xFB)] ^ BYTE1(v476);
  v491 = *&v479[4 * BYTE2(v476)];
  LOBYTE(v472) = v481[v493 ^ 0x7DLL];
  LOBYTE(v492) = v481[v492];
  LOWORD(v493) = *&v478[2 * (BYTE1(v493) ^ 0xE8)] ^ BYTE1(v493);
  v494 = v487 ^ *&v479[4 * (BYTE2(v475) ^ 0xC)] ^ v488 ^ v469 ^ (v472 - 102) ^ 0x7C4D4550;
  if ((v494 & 0x40000000) != 0)
  {
    v495 = -1073741824;
  }

  else
  {
    v495 = 0x40000000;
  }

  v496 = v495 + v494;
  v497 = v486 ^ v485 ^ *&v479[4 * (BYTE2(v493) ^ 0xC6)] ^ (BYTE1(v492) ^ *&v478[2 * (BYTE1(v492) ^ 0xFB)]) ^ (v481[v480] - 102) ^ v496;
  v496 ^= 0xD23CDCu;
  v498 = v346 ^ v489 ^ v490 ^ v491 ^ (v492 - 102) ^ v493 ^ 0x2B0FDDC0;
  v499 = v497 ^ v484;
  v500 = v484 ^ v496;
  v501 = v498 ^ v496;
  v502 = v500 ^ v498;
  v503 = v499 ^ 0x8513BA20;
  v504 = v500 ^ v346 ^ v499;
  if ((v502 & 0x1000000) != 0)
  {
    v505 = (HIBYTE(v502) ^ 6) - 1;
  }

  else
  {
    v505 = (HIBYTE(v502) ^ 6) + 1;
  }

  v506 = *(&off_1010A0B50 + v521 - 8598) - 1413323746;
  v529[6] = v506[HIBYTE(v502) ^ 0xC3] ^ v505 ^ 0x86;
  v507 = v501 ^ v503;
  v508 = *(&off_1010A0B50 + v521 - 10498) - 1969475246;
  v509 = v508[BYTE2(v507) ^ 0xECLL];
  v529[12] = ((v509 >> 7) | (2 * v509)) ^ (16 * (v509 & 1)) ^ 0xDD;
  v510 = *(&off_1010A0B50 + v521 - 10417) - 391665619;
  v529[15] = v510[BYTE1(v504) ^ 5] ^ ((BYTE1(v504) ^ 0x49) - (BYTE1(v504) ^ 0x61)) ^ 0xC9;
  v511 = *(&off_1010A0B50 + (v521 ^ 0x22D9)) - 675672315;
  v529[11] = v511[v502 ^ 0xA2] ^ 0x69;
  v512 = v508[BYTE2(v502) ^ 0x50];
  v513 = v503 ^ v346;
  v529[3] = ((v512 >> 7) | (2 * v512)) ^ ((16 * (v512 & 1)) | 0x2B) ^ 0xF6;
  v529[9] = v511[v513 ^ 0x6BLL] ^ 0x69;
  v529[7] = v506[HIBYTE(v513) ^ 0x48] ^ HIBYTE(v513) ^ 0xA;
  v529[5] = v506[HIBYTE(v507) ^ 0xA2] ^ HIBYTE(v507) ^ 0xE0;
  v514 = (BYTE2(v504) ^ 0x80) + ((v504 >> 15) & 0x136 ^ 0xFFFFFEFF) + 156;
  v515 = v508[((v514 - (v514 ^ 0x54)) ^ 0xFFFFFFF8) + v514];
  v529[13] = ((v515 >> 7) | (2 * v515)) ^ (16 * (v515 & 1)) ^ 0xDD;
  v529[2] = v510[BYTE1(v502) ^ 0x6FLL] ^ ((BYTE1(v502) ^ 0x23) + (BYTE1(v502) ^ 0xF4) + 1) ^ 0xC9;
  v516 = v508[BYTE2(v513) ^ 0x66];
  v529[1] = ((v516 >> 7) | (2 * v516)) ^ (16 * (v516 & 1)) ^ 0xDD;
  v529[4] = HIBYTE(v504) ^ 0x5E ^ v506[HIBYTE(v504) ^ 0x1CLL];
  v529[14] = ((BYTE1(v507) ^ 0x9B) - (BYTE1(v507) ^ 0xB3)) ^ 0xC9 ^ v510[BYTE1(v507) ^ 0xD7];
  v529[10] = v511[v507 ^ 0xCELL] ^ 0x69;
  v529[8] = ((BYTE1(v513) ^ 0x2A) - (BYTE1(v513) ^ 2)) ^ 0xC9 ^ v510[BYTE1(v513) ^ 0x66];
  *v529 = v511[v504 ^ 0x6DLL] ^ 0x69;
  return (*(v527 + 8 * v521))(a1);
}

void sub_100127EFC(uint64_t a1)
{
  v1 = *(a1 + 8) + 1012831759 * (((a1 | 0x9B56D703) - (a1 | 0x64A928FC) + 1688807676) ^ 0x8BC5C189);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100128044@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  a6 = v8 - 906386353 * (((&a3 | 0x4E80A0A7) - (&a3 & 0x4E80A0A0)) ^ 0x7F816D83) + 9131;
  a4 = v7;
  a5 = v7;
  a3 = a1;
  v9 = (*(v6 + 8 * (v8 ^ 0x9F90)))(&a3);
  return (*(v6 + 8 * v8))(v9);
}

void sub_100128130(uint64_t a1)
{
  v1 = 139493411 * ((2 * (a1 & 0x43F9CD1B) - a1 + 1007039204) ^ 0x302BD3A1);
  v2 = *a1 ^ v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16) ^ v1;
  v5 = (v4 ^ 0xFE680184) & (2 * (v4 & 0xFF70A1C5)) ^ v4 & 0xFF70A1C5;
  v6 = ((2 * (v4 ^ 0xC6E80286)) ^ 0x73314686) & (v4 ^ 0xC6E80286) ^ (2 * (v4 ^ 0xC6E80286)) & 0x3998A342;
  v7 = v6 ^ 0x888A141;
  v8 = (v6 ^ 0x31000200) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0xE6628D0C) & v7 ^ (4 * v7) & 0x3998A340;
  v10 = (v9 ^ 0x20008100) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x19982243)) ^ 0x998A3430) & (v9 ^ 0x19982243) ^ (16 * (v9 ^ 0x19982243)) & 0x3998A340;
  v12 = v10 ^ 0x3998A343 ^ (v11 ^ 0x19882000) & (v10 << 8);
  v13 = (8 * v4) ^ (16 * ((v12 << 16) & 0x9980000 ^ v12 ^ ((v12 << 16) ^ 0x3430000) & (((v11 ^ 0x20108343) << 8) & 0x9980000 ^ 0x1180000 ^ (((v11 ^ 0x20108343) << 8) ^ 0x8A30000) & (v11 ^ 0x20108343)))) ^ 0x720F3A18;
  v14 = *(v3 + 16);
  v15 = *(v3 + 20) + __CFADD__(v13, v14) + ((((v4 ^ 0xCC22FCE) - 206402037) ^ v4 ^ ((v4 ^ 0x8A34304C) + 1967427977) ^ ((v4 ^ 0xF106BE66) + 242622371) ^ ((v4 ^ 0x777FFFDC) - 2012258788)) >> 29);
  *(v3 + 16) = v13 + v14;
  *(v3 + 20) = v15;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001285A4@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 24) = v4;
  *(v1 + 32) = *(v3 + 80);
  *(v3 + 80) = v1;
  *(*(v1 + 32) + 24) = v1;
  *(a1 + 8) = (((v2 - 27609) | 0x182u) ^ 0x79C4BC1D8A404343) - *(a1 + 8);
  return (*(v5 + 8 * v2))();
}

uint64_t sub_1001286C8()
{
  v7 = v5 + v3;
  v8 = (v3 - 105 + ((v4 - 119) & 0xFA)) & 0xF;
  v9 = v8 - v3 + 854 * (v4 ^ 0x7ED2u) - 32451;
  v10 = v0 + v9;
  ++v8;
  v11 = v0 + v8;
  v12 = v2 + v9;
  v13 = v2 + v8;
  v14 = v1 + v9;
  v15 = v1 + v8;
  v17 = v11 > v5 && v10 < v7;
  if (v13 > v5 && v12 < v7)
  {
    v17 = 1;
  }

  v20 = v15 > v5 && v14 < v7 || v17;
  return (*(v6 + 8 * ((505 * (v20 ^ 1)) ^ v4)))();
}

uint64_t sub_1001287B8@<X0>(uint64_t a1@<X8>)
{
  *v2 = 23958;
  *(a1 + v1) = 0;
  return (*(v3 + 8 * ((59854 * (v4 < 0x7D3DCAC3)) ^ (v4 + 1689577997))))();
}

uint64_t sub_1001288E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  a9 = v18 + (v11 ^ 0x3FFFFF57) + (v10 & 0xAE) - 547357696;
  a10 = v19;
  v20 = (*(v12 + 8 * v16))(&a9);
  return (*(v12 + 8 * (((((v17 ^ ((v15 | v13) >> 31)) & 1) == 0) * v14) ^ v17)))(v20);
}

uint64_t sub_100128958()
{
  *v1 = v4;
  v1[1] = *(v2 + 80);
  *(v2 + 80) = v0;
  *(v1[1] + 24) = v0;
  *(v1 - 2) = 371 * (v3 ^ 0x2478) - *(v1 - 2) + 0x79C4BC1D8A3FDA03;
  return (*(v5 + 8 * v3))();
}

uint64_t sub_1001289B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v14 = -1022166737 * ((((2 * (v13 - 168)) | 0xA6EF071E) - (v13 - 168) - 1400341391) ^ 0xE967621D) + ((427 * (a11 ^ 0x340D)) ^ 0x5632E8C2) * LODWORD(STACK[0x354]) + 2011904846;
  *(v13 - 168) = (a11 + 33324) ^ (1022166737 * ((((2 * (v13 - 168)) | 0xA6EF071E) - (v13 - 168) - 1400341391) ^ 0xE967621D));
  *(v13 - 164) = v14;
  *(a3 + 440) = v11;
  v15 = (*(v12 + 8 * (a11 + 38697)))(v13 - 168);
  return (*(v12 + 8 * a11))(v15);
}

uint64_t sub_100128A60()
{
  v3 = (*(v1 + 8 * (v2 ^ 0xF4B5)))();
  v4 = v3 == (*(v1 + 8 * (v2 + 37921)))(v0);
  return (*(v1 + 8 * ((v4 * (v2 + 31349)) ^ v2)))();
}

uint64_t sub_100128AC0@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v2 + a1 + 16);
  v8 = v3 + a1;
  *(v8 + 24) = *(v2 + a1);
  *(v8 + 40) = v7;
  return (*(v4 + 8 * (((((a1 == 32) ^ (v1 + v5)) & 1) * v6) ^ v1)))();
}

uint64_t sub_100128E08(int a1, double a2, __n128 a3)
{
  a3.n128_u16[0] = 3341;
  a3.n128_u8[2] = 13;
  a3.n128_u8[3] = 13;
  a3.n128_u8[4] = 13;
  a3.n128_u8[5] = 13;
  a3.n128_u8[6] = 13;
  a3.n128_u8[7] = 13;
  return (*(v3 + 8 * a1))(xmmword_100F523B0, a3);
}

uint64_t sub_100128F88@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  *(a1 + 200) = v4;
  LODWORD(STACK[0x334]) = a2;
  LODWORD(STACK[0x244]) = 1608478285;
  return (*(v3 + 8 * v2))();
}

uint64_t sub_100148834@<X0>(uint64_t a1@<X1>, int a2@<W2>, int a3@<W3>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v34 = (v32 + v31 + v27);
  v35 = *v34;
  v36 = v34[1];
  v37 = (a27 + (a4 + v31 + a3));
  *v37 = v35;
  v37[1] = v36;
  return (*(v33 + 8 * (((v31 + a1 + v28 == v29) * a2) | v30)))();
}

uint64_t sub_100148878@<X0>(uint64_t a1@<X7>, unsigned int a2@<W8>)
{
  v4 = a2 < v2;
  v5 = (((a2 + (v3 ^ 0xBF)) ^ (a2 + 9) ^ (((a2 + (v3 ^ 0xBF)) ^ 3) - 1)) ^ ((((a2 + (v3 ^ 0xBF)) ^ 0xFD) + (v3 ^ 0x55)) ^ (((a2 + (v3 ^ 0xBF)) ^ 0xC) + 2))) & 0xF;
  v6 = ((v5 ^ 0xF7DB317A) - 943283590) ^ ((v5 ^ 0x76A4F193) + 1186554513) ^ ((v5 ^ 0x817FC0EB) - 1318956055);
  return (*(a1 + 8 * ((12752 * ((a2 | (v4 << 32)) + 1885625148 - v6 + ((v6 > 0x301D9312) << 32) - 1949466987 < 0xFFFFFFF6)) ^ v3)))();
}

void sub_10014898C(uint64_t a1)
{
  v1 = 634647737 * ((~a1 & 0x81C383A8 | a1 & 0x7E3C7C57) ^ 0xEC55AC54);
  if (*a1)
  {
    v2 = (*(a1 + 12) ^ v1) == 623616047;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_100148AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v20 - 128) = &a15;
  *(v20 - 120) = v15;
  *(v20 - 112) = (v17 + 5531) ^ (193924789 * ((v20 - 128 - 2 * ((v20 - 128) & 0x55C41E60) - 708567453) ^ 0x637F2C05));
  v21 = (*(v16 + 8 * (v17 ^ 0x40C8)))(v20 - 128);
  return (*(v16 + 8 * ((7113 * (v19 == (v18 ^ ((v17 - 34815) | 0x5434) ^ 1))) ^ v17)))(v21);
}

uint64_t sub_100148B7C()
{
  v8 = (v4 - 1) & 0xF;
  v12 = (1 - v6 + v2 - v4 + v8) > 0xF && (1 - v6 + v1 - v4 + v8) > 0xF && v0 - v6 >= ((5091 * (v5 ^ 0x1B29) - 1781) | 0x2138u) - 42344 && (v3 - v6 - v4 + v8 + 7) > 0xF;
  return (*(v7 + 8 * ((103 * v12) ^ v5)))();
}

uint64_t sub_100148C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 5 * (v6 ^ 0x829B);
  v10 = v7 + *(a5 + 40) - 0x58ACCE80D1A68CC2 + v9;
  *(a5 + 40) = v9 + (v10 ^ 0x7BDE7AF25FDF7BBDLL) + ((2 * v10) & 0xF7BCF5E4BFBEF77ALL) - 0x60140A80535963CFLL;
  return (*(v8 + 8 * ((999 * (*v5 == 0x3CE25E0EC5200378)) ^ v6)))();
}

uint64_t sub_100148CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, int a32)
{
  v38 = v32;
  v39 = v32 - 76;
  v35 = 1022166737 * ((2 * (&a29 & 0x1DDECE18) - &a29 + 1646342625) ^ 0xD831D073);
  a29 = v34;
  a30 = a19 - v35;
  a31 = v35 + v32 + 3342;
  v36 = (*(v33 + 8 * (v32 + 23220)))(&a29);
  return (*(v33 + 8 * ((31 * ((v39 ^ (a32 == 1497668682)) & 1)) ^ v38)))(v36);
}

uint64_t sub_100148E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = *(a8 + 8 * ((8 * (((a67 == 0) ^ ((v67 ^ 0xA8) - 77)) & 1)) & 0xEF | (16 * (((a67 == 0) ^ ((v67 ^ 0xA8) - 77)) & 1)) | v67));
  LODWORD(STACK[0x290]) = 371891400;
  return v68(a1, 0);
}

uint64_t sub_100148ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int8x16_t a10, int64x2_t a11, int64x2_t a12, int8x16_t a13, int8x16_t a14, int8x16_t a15, int8x16_t a16)
{
  v34.i64[0] = v16 + a6;
  v34.i64[1] = v16 + a6 + 1;
  v35.i64[0] = v16 + a6 + a8;
  v35.i64[1] = v16 + a6 + 3;
  v36.i64[0] = v16 + a6 + 4;
  v36.i64[1] = v16 + a6 + 5;
  v37.i64[0] = v16 + a6 + 6;
  v37.i64[1] = v16 + a6 + 7;
  *&v38 = v16 + a6 + 8;
  *(&v38 + 1) = v16 + a6 + 9;
  *&STACK[0x450] = v38;
  *&v38 = v16 + a6 + 10;
  *(&v38 + 1) = v16 + a6 + 11;
  *&STACK[0x440] = v38;
  v39 = vandq_s8(v34, v20);
  v40 = vandq_s8(v37, v20);
  v41 = vandq_s8(v36, v20);
  v42 = vandq_s8(v35, v20);
  v43 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v44 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v45 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v46 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v47 = vaddq_s64(v46, a11);
  v48 = vaddq_s64(v45, a11);
  v49 = vaddq_s64(v44, a11);
  v50 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(a12, v46), a13), v47), vandq_s8(v47, a14));
  v51 = vaddq_s64(v43, a11);
  v52 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(a12, v45), a13), v48), vandq_s8(v48, a14));
  v53 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(a12, v44), a13), v49), vandq_s8(v49, a14));
  *&STACK[0x430] = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(a12, v43), a13), v51), vandq_s8(v51, a14));
  v54 = veorq_s8(v50, a15);
  v55 = veorq_s8(v50, a16);
  v56 = veorq_s8(v52, a15);
  v57 = veorq_s8(v52, a16);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v57);
  v59 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v55);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v59, v21), vorrq_s8(v59, v22)), v22), v23);
  v61 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v58, v21), vorrq_s8(v58, v22)), v22), v23);
  v62 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v63 = veorq_s8(v61, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v64 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v63);
  v66 = vaddq_s64(v64, v62);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(v66, vandq_s8(vaddq_s64(v66, v66), v24)), v25), v26);
  v68 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(v65, vandq_s8(vaddq_s64(v65, v65), v24)), v25), v26);
  v70 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v71 = veorq_s8(v67, v68);
  v72 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v73 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v71), v27);
  v74 = veorq_s8(vaddq_s64(v72, v70), v27);
  v75 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v76 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v77 = veorq_s8(v74, v75);
  v78 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v76), v28);
  v79 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v77), v28);
  v80 = vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL);
  v81 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v82 = veorq_s8(v78, v80);
  v83 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v82), v29);
  v84 = vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL);
  v85 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v81), v29);
  v86 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v87 = veorq_s8(v85, v84);
  v88 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v87);
  v90 = veorq_s8(vaddq_s64(v88, v86), v30);
  v91 = veorq_s8(v89, v30);
  v92 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v93 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v94 = veorq_s8(v90, v92);
  v95 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v64.i64[0] = v16 + a6 + 12;
  v64.i64[1] = v16 + a6 + 13;
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v94);
  v97 = vaddq_s64(v95, v93);
  v199.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v96, vandq_s8(vaddq_s64(v96, v96), v31)), v32), v33), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), a10)));
  v199.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v97, vandq_s8(vaddq_s64(v97, v97), v31)), v32), v33), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), a10)));
  v98 = veorq_s8(v53, a15);
  v99 = veorq_s8(v53, a16);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99);
  v101 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v100, v21), vorrq_s8(v100, v22)), v22), v23);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102);
  v104 = veorq_s8(vaddq_s64(vsubq_s64(v103, vandq_s8(vaddq_s64(v103, v103), v24)), v25), v26);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105), v27);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), v28);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), v29);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), v30);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v114 = vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL);
  v112.i64[0] = v16 + a6 + 14;
  v112.i64[1] = v16 + a6 + 15;
  v115 = vaddq_s64(v114, v113);
  v116 = vsubq_s64(v115, vandq_s8(vaddq_s64(v115, v115), v31));
  v117 = vandq_s8(v112, v20);
  v199.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v116, v32), v33), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), a10)));
  v118 = veorq_s8(*&STACK[0x430], a15);
  v119 = veorq_s8(*&STACK[0x430], a16);
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v120, v21), vorrq_s8(v120, v22)), v22), v23);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(v123, vandq_s8(vaddq_s64(v123, v123), v24)), v25), v26);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v126 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125), v27);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v128 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127), v28);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129), v29);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v132 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131), v30);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v134 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v135 = vandq_s8(v64, v20);
  v136 = vaddq_s64(v134, v133);
  v137 = vandq_s8(*&STACK[0x440], v20);
  v199.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v136, vandq_s8(vaddq_s64(v136, v136), v31)), v32), v33), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), a10)));
  v138 = vandq_s8(*&STACK[0x450], v20);
  v139 = vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL);
  v140 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v141 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v142 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v143 = vaddq_s64(v142, a11);
  v144 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(a12, v142), a13), v143), vandq_s8(v143, a14));
  v145 = vaddq_s64(v141, a11);
  v146 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(a12, v141), a13), v145), vandq_s8(v145, a14));
  v147 = vaddq_s64(v140, a11);
  v148 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(a12, v140), a13), v147), vandq_s8(v147, a14));
  v149 = vaddq_s64(v139, a11);
  v150 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(a12, v139), a13), v149), vandq_s8(v149, a14));
  v149.i64[0] = vqtbl4q_s8(v199, *&STACK[0x410]).u64[0];
  v199.val[3] = veorq_s8(v146, a15);
  v199.val[0] = veorq_s8(v144, a15);
  v199.val[1] = veorq_s8(v144, a16);
  v199.val[2] = veorq_s8(v146, a16);
  v199.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[3], 0x38uLL), v199.val[3], 8uLL), v199.val[2]);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL), v199.val[1]);
  v199.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v199.val[3], v21), vorrq_s8(v199.val[3], v22)), v22), v23);
  v199.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v199.val[0], v21), vorrq_s8(v199.val[0], v22)), v22), v23);
  v199.val[1] = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v199.val[1], 3uLL), v199.val[1], 0x3DuLL));
  v199.val[2] = veorq_s8(v199.val[3], vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL));
  v199.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[3], 0x38uLL), v199.val[3], 8uLL), v199.val[2]);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL), v199.val[1]);
  v199.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v199.val[0], vandq_s8(vaddq_s64(v199.val[0], v199.val[0]), v24)), v25), v26);
  v151 = vsraq_n_u64(vshlq_n_s64(v199.val[1], 3uLL), v199.val[1], 0x3DuLL);
  v199.val[3] = veorq_s8(vaddq_s64(vsubq_s64(v199.val[3], vandq_s8(vaddq_s64(v199.val[3], v199.val[3]), v24)), v25), v26);
  v199.val[1] = veorq_s8(v199.val[3], vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL));
  v199.val[2] = veorq_s8(v199.val[0], v151);
  v152 = vsraq_n_u64(vshlq_n_s64(v199.val[3], 0x38uLL), v199.val[3], 8uLL);
  v199.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL), v199.val[2]);
  v199.val[0] = veorq_s8(vaddq_s64(v152, v199.val[1]), v27);
  v153 = vsraq_n_u64(vshlq_n_s64(v199.val[1], 3uLL), v199.val[1], 0x3DuLL);
  v199.val[3] = veorq_s8(v199.val[3], v27);
  v199.val[1] = veorq_s8(v199.val[3], vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL));
  v199.val[2] = veorq_s8(v199.val[0], v153);
  v154 = vsraq_n_u64(vshlq_n_s64(v199.val[3], 0x38uLL), v199.val[3], 8uLL);
  v199.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL), v199.val[2]);
  v199.val[0] = veorq_s8(vaddq_s64(v154, v199.val[1]), v28);
  v199.val[3] = veorq_s8(v199.val[3], v28);
  v155 = vsraq_n_u64(vshlq_n_s64(v199.val[1], 3uLL), v199.val[1], 0x3DuLL);
  v199.val[1] = veorq_s8(v199.val[3], vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL));
  v199.val[2] = veorq_s8(v199.val[0], v155);
  v156 = vsraq_n_u64(vshlq_n_s64(v199.val[3], 0x38uLL), v199.val[3], 8uLL);
  v199.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL), v199.val[2]);
  v199.val[0] = veorq_s8(vaddq_s64(v156, v199.val[1]), v29);
  v157 = vsraq_n_u64(vshlq_n_s64(v199.val[1], 3uLL), v199.val[1], 0x3DuLL);
  v199.val[3] = veorq_s8(v199.val[3], v29);
  v199.val[1] = veorq_s8(v199.val[3], vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL));
  v199.val[2] = veorq_s8(v199.val[0], v157);
  v158 = vsraq_n_u64(vshlq_n_s64(v199.val[3], 0x38uLL), v199.val[3], 8uLL);
  v199.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL), v199.val[2]);
  v199.val[0] = veorq_s8(vaddq_s64(v158, v199.val[1]), v30);
  v159 = vsraq_n_u64(vshlq_n_s64(v199.val[1], 3uLL), v199.val[1], 0x3DuLL);
  v199.val[3] = veorq_s8(v199.val[3], v30);
  v199.val[1] = veorq_s8(v199.val[3], vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL));
  v199.val[2] = veorq_s8(v199.val[0], v159);
  v160 = vsraq_n_u64(vshlq_n_s64(v199.val[3], 0x38uLL), v199.val[3], 8uLL);
  v199.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL), v199.val[2]);
  v199.val[0] = vaddq_s64(v160, v199.val[1]);
  v199.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v199.val[3], vandq_s8(vaddq_s64(v199.val[3], v199.val[3]), v31)), v32), v33), vnegq_s64(vandq_s8(vshlq_n_s64(v112, 3uLL), a10)));
  v199.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v199.val[0], vandq_s8(vaddq_s64(v199.val[0], v199.val[0]), v31)), v32), v33), vnegq_s64(vandq_s8(vshlq_n_s64(v64, 3uLL), a10)));
  v161 = veorq_s8(v148, a15);
  v162 = veorq_s8(v148, a16);
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162);
  v164 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v163, v21), vorrq_s8(v163, v22)), v22), v23);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(v166, vandq_s8(vaddq_s64(v166, v166), v24)), v25), v26);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v169 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168), v27);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170), v28);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL));
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172), v29);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v175 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174), v30);
  v176 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL)));
  v199.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v176, vandq_s8(vaddq_s64(v176, v176), v31)), v32), v33), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x440], 3uLL), a10)));
  v177 = veorq_s8(v150, a15);
  v178 = veorq_s8(v150, a16);
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178);
  v180 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v179, v21), vorrq_s8(v179, v22)), v22), v23);
  v181 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v182 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v181);
  v183 = veorq_s8(vaddq_s64(vsubq_s64(v182, vandq_s8(vaddq_s64(v182, v182), v24)), v25), v26);
  v184 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v185 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), v184), v27);
  v186 = veorq_s8(v185, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v187 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), v186), v28);
  v188 = vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL);
  v189 = vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL);
  v190 = veorq_s8(v187, v188);
  v191 = veorq_s8(vaddq_s64(v189, v190), v29);
  v192 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v193 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v192), v30);
  v194 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL)));
  v199.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v194, vandq_s8(vaddq_s64(v194, v194), v31)), v32), v33), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x450], 3uLL), a10)));
  v149.i64[1] = vqtbl4q_s8(v199, *&STACK[0x410]).u64[0];
  *(v16 + a6) = v149;
  v195 = a7 == a6;
  v196 = a6 + 16;
  v197 = v195;
  return (*(v19 + 8 * ((v197 * v18) ^ v17)))(a1, a2, a3, a4, a5, v196);
}

uint64_t sub_100149DE8()
{
  v10 = v4 < v5;
  *(v8 + v7) = *(v1 + (v7 & 0xF)) ^ *(v0 + v7) ^ (-87 * (v7 & 0xF)) ^ *(v3 + (v7 & 0xF)) ^ *(v2 + ((v6 + 379200331) & 0xE965FF59 ^ 0x6C5DLL) + (v7 & 0xF));
  if (v10 == v7 + 1 > 0x3B152B49)
  {
    v10 = v7 - 991243081 < v4;
  }

  return (*(v9 + 8 * (((2 * !v10) | (8 * !v10)) ^ v6)))();
}

uint64_t sub_100149F5C()
{
  v8 = v0 - 1;
  *(v6 + v8) ^= *(v3 + (v8 & 0xF)) ^ *((v8 & 0xF) + v2 + 4) ^ ((v8 & 0xF) * v5) ^ *(v1 + (v8 & 0xF));
  return (*(v7 + 8 * ((511 * (v8 != 0)) ^ v4)))();
}

uint64_t sub_10014A018(int8x16_t a1, int8x8_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, int a9)
{
  v18.val[0].i64[0] = (v14 + a6 - 1) & 0xF;
  v18.val[0].i64[1] = (v14 + a6 + 14) & 0xF;
  v18.val[1].i64[0] = (v14 + a6 + 13) & 0xF;
  v18.val[1].i64[1] = (v14 + a6 + 12) & 0xF;
  v18.val[2].i64[0] = (v14 + a6 + 11) & 0xF;
  v18.val[2].i64[1] = (v14 + a7 + v10) & 0xF;
  v18.val[3].i64[0] = (v14 + a6 + 9) & 0xF;
  v18.val[3].i64[1] = (v14 + a6) & 0xF ^ 8;
  *(v15 + v14) = veor_s8(veor_s8(veor_s8(*(v11 + v18.val[0].i64[0] - 7), *(a8 + v14)), veor_s8(*(v18.val[0].i64[0] + v13 - 4), *(v12 + v18.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v18, a1), a2)));
  return (*(v16 + 8 * (((a5 != a6) * a9) ^ v9)))();
}

uint64_t sub_10014A270()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x89AE)))();
  v3 = STACK[0x408];
  STACK[0x758] = 0;
  return (*(v3 + 8 * v0))(v2);
}

uint64_t sub_10014A47C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v11 = a1 - 1;
  *(a2 + v11) = *(v5 + (v11 & 0xF)) ^ *(v4 + v11) ^ ((v11 & 0xF) * v8) ^ *((v11 & 0xF) + v7 + 2) ^ *(v6 + v3 + (v11 & 0xF));
  return (*(v10 + 8 * (((v11 == 0) * v9) ^ v2)))();
}

uint64_t sub_10014A920()
{
  v8 = v3 - 1;
  *(v6 + v8) = *(v0 + v8);
  return (*(v7 + 8 * (((v8 == 0) * ((v4 + v2) ^ v5)) ^ v1)))();
}

uint64_t sub_10014A994()
{
  v5 = (v1 ^ 0x5391u) + v0 - 698;
  STACK[0x4A0] = v5;
  if (v5 > v3)
  {
    v2 = 371891407;
  }

  LODWORD(STACK[0x4AC]) = v2;
  return (*(v4 + 8 * ((13139 * (v2 == ((v1 - 10233) ^ 0xE9D5EE27))) ^ v1)))();
}

uint64_t sub_10014AA3C()
{
  v8 = (v4 - 1) & 0xF;
  v12 = (v0 - v7) < 0x10 || (v3 - v7 - v4 + v8 + 1) < 0x10 || v2 - v7 - v4 + v8 + ((v5 + 1478402452) ^ 0x581F515AuLL) < 0x10 || (v1 - v7 - v4 + v8 + 2) < 0x10;
  return (*(v6 + 8 * ((19 * v12) ^ v5)))();
}

uint64_t sub_10014AB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int16 a20, char a21)
{
  v26 = *(&a21 + v22);
  *(v24 + v21) = v26 - 17;
  v27 = v26 == ((v23 - 97) ^ 0x73 ^ (23 * (v23 ^ 0xA7)));
  return (*(v25 + 8 * (((2 * v27) | (16 * v27)) ^ v23)))();
}

uint64_t sub_10014ABA8@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  a5 = (v8 - 14126) ^ (297845113 * (((&a3 | 0xF2BE4D7) - (&a3 & 0xF2BE4D0)) ^ 0x7818F849));
  a3 = v6;
  a4 = a1;
  a6 = a1;
  v9 = (*(v7 + 8 * (v8 ^ 0x46B1)))(&a3);
  return (*(v7 + 8 * v8))(v9);
}

uint64_t sub_10014AC1C(__n128 a1)
{
  v2[-1] = a1;
  *v2 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v4) ^ v1)))();
}

uint64_t sub_10014AC44(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x278]) = v68;
  LODWORD(STACK[0x3A8]) = a6;
  LODWORD(STACK[0x3AC]) = v67;
  LODWORD(STACK[0x2F0]) = a7;
  LODWORD(STACK[0x31C]) = a66;
  LOWORD(STACK[0x236]) = a65;
  LOWORD(STACK[0x292]) = v69;
  LODWORD(STACK[0x27C]) = a61;
  LOWORD(STACK[0x38E]) = WORD2(a62);
  LODWORD(STACK[0x350]) = a4;
  v72 = a3[20];
  v74 = *(v72 + 16);
  v73 = *(v72 + 20);
  LODWORD(STACK[0x288]) = v73;
  LODWORD(STACK[0x248]) = v74;
  v75 = *(v72 + 8);
  a3[10] = *v72;
  a3[35] = v75;
  v76 = LODWORD(STACK[0x258]);
  LODWORD(STACK[0x36C]) = v73 - (((v70 ^ 0x9C12F70C) + 407666379) ^ ((v70 ^ 0xADBD3886) + 702787905) ^ (((v66 - 35939097) & 0xF7BE787F ^ 0xD21F8F1E) + (v70 ^ 0xA3DB7EA2))) + v76 + 371865839;
  return (*(v71 + 8 * ((52 * ((v76 ^ a4) != v66 - 371891203)) ^ v66)))(v73, v76, a3, 3923101457, a5, v75, v74, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

void sub_10014AD5C(_DWORD *a1)
{
  v1 = *a1 - 17902189 * ((~a1 & 0xDD3070BF | a1 & 0x22CF8F40) ^ 0x537F66AF);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10014AEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50)
{
  v53 = a50[2];
  v54 = a50[5];
  v55 = a50[6];
  v56 = (LODWORD(STACK[0x7F4]) ^ 0xEB1AF10B) + 1475698687 + (((v50 - 592414177) & 0x234F7FBB ^ 0xD635CCAF) & (2 * LODWORD(STACK[0x7F4])));
  *(v52 + 136) = STACK[0x7F0];
  *(v52 + 140) = v56;
  *(v52 + 616) = 356632018;
  *(a17 - 0x3ADED0B539DCB8DLL) = 2;
  *(v55 - 0x56A8DDB036696753) = 75;
  *(v53 - 0x2E6256C26EECB893) = 8;
  *(v54 - 0x6555F0F263E6CF8BLL) = 0;
  *(a18 - 0x357EA9477E19BA01) = (*(v51 + 8 * (v50 ^ 0xFF12)))(*v52);
  return (*(v51 + 8 * v50))();
}

void sub_10014AFD0(uint64_t a1)
{
  v1 = *(a1 + 24) + 297845113 * ((a1 - 2 * (a1 & 0x7D6F62D3) + 2104451795) ^ 0xA5C7E4D);
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = 0x3EA64EF000000082;
  v9[1] = &v12;
  v10[0] = 0x3EA64EF000000082;
  v10[1] = &v11;
  v6 = v4[1];
  v14 = v1 + 1112314453 * (((&v13 | 0x66942C42) - (&v13 | 0x996BD3BD) - 1720986691) ^ 0x89C2069B) + 18261;
  v18 = v4;
  v19 = v5;
  v13 = v6;
  v16 = v9;
  v17 = v2;
  v7 = *(&off_1010A0B50 + v1 - 15799) - 810145054;
  (*&v7[8 * (v1 ^ 0x8B10)])(&v13);
  v8 = *v4;
  v16 = v10;
  v14 = (155453101 * ((~&v13 & 0x6F13C6C | &v13 & 0xF90EC390) ^ 0xE0D727A3)) ^ (v1 + 33667);
  v13 = v8;
  (*&v7[8 * v1 + 280208])(&v13);
  v13 = v3;
  v14 = v1 - 297845113 * (&v13 ^ 0x77331C9E) + 9095;
  (*&v7[8 * v1 + 282096])(&v13);
  __asm { BRAA            X8, X17 }
}

void sub_10014B384(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (*(a1 + 8) ^ 0x7E79FF7CADAEFFFFLL) - 0x7E79FF7C77F41C27 + ((2 * *(a1 + 8)) & 0xFCF3FEF95B5DFFFELL);
  v4 = v3 < 0x35BAE3D8;
  v5 = v3 > v2 + 901440472;
  if (v2 > 0xFFFFFFFFCA451C27 == v4)
  {
    v4 = v5;
  }

  v1 = *(a1 + 40) ^ (139493411 * ((~a1 & 0x705FC0B3 | a1 & 0x8FA03F4C) ^ 0x7C7221F6));
  __asm { BRAA            X14, X17 }
}

uint64_t sub_10014B5F0@<X0>(char a1@<W0>, int a2@<W3>, uint64_t a3@<X8>, __n128 a4@<Q1>)
{
  a4.n128_u16[0] = 23901;
  a4.n128_u8[2] = 93;
  a4.n128_u8[3] = 93;
  a4.n128_u8[4] = 93;
  a4.n128_u8[5] = 93;
  a4.n128_u8[6] = 93;
  a4.n128_u8[7] = 93;
  return (*(v5 + 8 * a2))(a1 & 0x18, -a3, v4 - (a1 & 0x18), xmmword_100F523B0, a4);
}

uint64_t sub_10014B664@<X0>(int a1@<W6>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  v36 = *(&a33 + (v33 ^ 0x2C2ACE5u));
  v37 = (v36 ^ 0x63) & (2 * (v36 & 0x63)) ^ v36 & 0x63;
  v38 = ((2 * (v36 ^ 0xE1)) ^ 4) & (v36 ^ 0xE1);
  *(a2 + (((a1 ^ 0x2AEB51A5) - 720064933) ^ ((a1 ^ 0x11A92FD7) - 296300503) ^ ((a1 ^ 0x3EC727B8u) - 1053239224)) + 92625353) = v36 ^ (2 * (v38 & (4 * v38) & ((16 * (v37 ^ 0x82 ^ v38 & (4 * v37))) ^ 0x20) ^ v37 ^ 0x82 ^ v38 & (4 * v37))) ^ 0x38;
  return (*(v35 + 8 * (v34 - 899223469)))();
}

uint64_t sub_10014B7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, char *a16, unsigned int a17)
{
  a15 = 0;
  a17 = ((v18 ^ 0xE831) + 24712) ^ (139493411 * ((&a15 - 2 * (&a15 & 0x5F5208E0) + 1599211746) ^ 0x537FE9A7));
  a16 = &a10;
  v19 = (*(v17 + 8 * (v18 ^ 0x6CE3)))(&a15);
  return (*(v17 + 8 * (v18 ^ 0xE831)))(v19);
}

uint64_t sub_10014B918@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35)
{
  v40 = v36 + v39 - 859341441;
  v41 = ((((v35 + 18458) ^ 0x8A08) - 460835690) ^ (2 * v40) & 0xC910BD40) & v40;
  v42 = ((2 * ((((v35 + 18458) | 0x1801) - 808104583) ^ v40)) ^ 0x56BCB7B8) & ((((v35 + 18458) | 0x1801) - 808104583) ^ v40) ^ (2 * ((((v35 + 18458) | 0x1801) - 808104583) ^ v40)) & 0x2B5E5BDC;
  v43 = v42 ^ 0x29424844;
  v44 = a2 & (a3 ^ 0x8A4FB043) ^ a1;
  v45 = ((2 * (a3 ^ 0x8A57B005)) ^ 0xB47012CC) & (a3 ^ 0x8A57B005) ^ (2 * (a3 ^ 0x8A57B005)) & 0x5A380966;
  v46 = v40 ^ a3 ^ (2 * ((((4 * (v45 ^ 0x4A080922)) ^ 0x68E02590) & (v45 ^ 0x4A080922) ^ (4 * (v45 ^ 0x4A080922)) & 0x5A380960) & (16 * ((v45 ^ 0x8300024) & (4 * v44) ^ v44)) ^ (v45 ^ 0x8300024) & (4 * v44) ^ v44 ^ v41 ^ 0x2B5E5BDC ^ v42 & (4 * v41) ^ ((4 * v43) & 0x2B5E5BD0 ^ 0x2B5E5BD0 ^ ((4 * v43) ^ 0x2D796F70) & v43) & ((16 * (v41 ^ 0x2B5E5BDC ^ v42 & (4 * v41))) ^ 0x340596C0)));
  v47 = ((v46 ^ 0x83FDB98C) + 1990555191) ^ ((v46 ^ 0x11DD7E97) - 461000402) ^ ((v46 ^ 0xD2AB8160) + 670256859);
  return (*(a32 + 8 * (((((a35 - *(v37 + 4 * (7 % a22)) + 359176433 * v47 + (v47 + 1244427838) * (*(v37 + 4 * (0xE % a22)) - 1157160846) + 1497374814) & 7) != 1) * v38) ^ v35)))();
}

uint64_t sub_10014BCC8(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  *(*(v3 + 8) + 120 * (*(v3 + 4) - 1) + 16) = *(a2 + 4);
  *(*(v3 + 8) + 120 * (v4 + 1967269455 + *(v3 + 4) - 7333) + 24) = v5;
  return (*(v2 + 8 * (v4 + 1967269455)))();
}

uint64_t sub_10014BE48@<X0>(int a1@<W5>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  HIDWORD(a12) = 0;
  v18 = (v14 + 24771) | 0x14A8;
  *(v17 - 120) = v18;
  v19 = v15 & 0xFFFFFFF0 ^ 0x31290FFFLL;
  *(v17 - 136) = v19;
  v20 = v15 & 0xFFFFFFF1 ^ (v18 + 824736256);
  *(v17 - 156) = v20;
  v21 = *(a9 + (*(a2 + v19) ^ 0x20)) ^ *(a2 + v19);
  v22 = *(a2 + v20);
  v164 = v15 & 0xFFFFFFFD ^ 0x31290FF2;
  v23 = *(a8 + (*(a2 + v164) ^ 0x59));
  v166 = v15 & 0xFFFFFFF9 ^ 0x31290FF6;
  v24 = ((((*(a8 + (v22 ^ 0xF3)) >> 2) | (*(a8 + (v22 ^ 0xF3)) << 6)) << 8) ^ 0xD39155A9) & (v21 ^ 0xDB97FFEC) | v21 & 0x56;
  LODWORD(v19) = *(a8 + (*(a2 + v166) ^ 0x1CLL));
  HIDWORD(v25) = ~v19;
  LODWORD(v25) = (v19 ^ 4) << 24;
  v26 = v15 & 0xFFFFFFF5 ^ 0x31290FFALL;
  *(v17 - 144) = v26;
  v27 = v15 & 0xFFFFFFF8 ^ 0x31290FF7;
  *(v17 - 128) = v27;
  v28 = ((v23 >> 2) | (v23 << 6));
  v29 = *(a2 + v26);
  LODWORD(v26) = ((((v25 >> 26) - ((v25 >> 26) ^ 0x23)) ^ 0xFE) + (v25 >> 26)) << 8;
  v161 = v15 & 0xFFFFFFF3 ^ 0x31290FFCLL;
  LODWORD(v19) = (*(a9 + (*(a2 + v27) ^ 0x4ALL)) ^ *(a2 + v27) ^ 0x766D7D47) & ~v26;
  v30 = v26 & 0x83838383;
  LODWORD(v22) = (((2 * ((*(a8 + (v29 ^ 0xE0)) ^ 7) << (v22 & 4) << ((v22 & 1) == 0) << (v22 & 5 ^ 4))) ^ 0x3C) & ~(*(a8 + (v29 ^ 0xE0)) >> 2) | (*(a8 + (v29 ^ 0xE0)) >> 2) & 3) << 8;
  v31 = *(a2 + v161);
  v32 = v15 & 0xFFFFFFFC ^ 0x31290FF3;
  *(v17 - 152) = v32;
  LODWORD(v26) = (((*(a10 + (v31 ^ 0x7D)) << 24) - 1962934272) ^ 0x60F678D) & (v24 ^ 0x2C0EC816);
  v157 = v15 ^ 0x31290FF0;
  v165 = v15 & 0xFFFFFFFA ^ 0x31290FF5;
  LODWORD(v31) = ((*(a10 + (*(a2 + v157) ^ 0x27)) - 117) ^ 0xFFFFFFC1) << 24;
  v33 = (v31 ^ 0x9EFFFFFF) & ((((v28 << 8) ^ 0x1F67C96C) & ~*(a2 + v32) | *(a2 + v32) & 0x93) ^ *(a9 + (*(a2 + v32) ^ 0x35)) ^ 0xA6C71790);
  v34 = v31 & 0x46000000;
  LODWORD(v31) = *(a7 + (*(a2 + v165) ^ 0xDCLL)) << 16;
  v156 = v15 & 0xFFFFFFF2 ^ 0x31290FFDLL;
  v159 = v15 & 0xFFFFFFFE ^ 0x31290FF1;
  v35 = *(a7 + (*(a2 + v156) ^ 0x42)) << 16;
  v163 = v15 & 0xFFFFFFFB ^ 0x31290FF4;
  v36 = (v35 ^ 0xFF12FFFF) & (v24 & 0x2909872 ^ 0x5C5D45EF ^ v26);
  v37 = *(a7 + (*(a2 + v159) ^ 0x93)) << 16;
  LODWORD(v26) = (v37 ^ 0xFFD0FFFF) & (v34 ^ 0x9E5871A0 ^ v33);
  v38 = (*(a10 + (*(a2 + v163) ^ 0x11)) << 24) - 1962934272;
  v162 = v15 & 0xFFFFFFF7 ^ 0x31290FF8;
  LODWORD(v19) = ((v38 & 0x4A4ED4A3 | 0xA5B12B5C) ^ (v38 ^ 0x348AFFFF) & ((v30 | 0xC3E71100) ^ v19)) & (v31 ^ 0xFF6DFFFF);
  v158 = v15 & 0xFFFFFFF4 ^ 0x31290FFBLL;
  LODWORD(v22) = (((*(a10 + (*(a2 + v162) ^ 0x79)) << 24) - 1962934272) ^ 0x6896A310) & (v22 ^ 0xFFBF5CFB) | v22 & 0x5C00;
  v39 = *(a9 + (*(a2 + v158) ^ 0xB2)) ^ *(a2 + v158);
  v40 = v35 & 0x3D0000;
  v160 = v15 & 0xFFFFFFF6 ^ 0x31290FF9;
  v41 = v31 & 0xC40000 ^ a1 ^ v19;
  LODWORD(v19) = v40 ^ v12 ^ v36;
  LODWORD(v26) = v37 & 0x70000 ^ v16 ^ v26;
  v42 = v22 & 0x46004510 ^ v13 ^ ((((*(a7 + (*(a2 + v160) ^ 0x80)) << 16) ^ 0x7A084087) & (v39 ^ 0x7AFF60FF) | v39 & 0x78) ^ 0xC30BFA83) & (v22 ^ 0x876900EF);
  v43 = *(&off_1010A0B50 + v14 - 7258) - 840450399;
  v44 = *&v43[4 * (BYTE3(v26) ^ 0x10)];
  LODWORD(v22) = (BYTE3(v26) ^ 0x40) - 586067169;
  LODWORD(v155) = v14;
  v45 = *(&off_1010A0B50 + (v14 ^ 0x2EBC)) - 2071982007;
  v46 = *(&off_1010A0B50 + v14 - 5524) - 389401703;
  v47 = *(&off_1010A0B50 + (v14 ^ 0x2560)) - 767584723;
  v48 = ((v44 & 0xA071870C ^ v22 & 0x8011070C ^ 0x5FCEFCF7) & (v22 & 0x5D0050F3 ^ 0x1963ED6D ^ v44 & 0x5F8E78F3) | (v44 & 0xA071870C ^ v22 & 0x8011070C) & 0xA0100200) ^ *&v46[4 * (BYTE1(v42) ^ 0x4D)] ^ (*&v45[4 * (BYTE2(v41) ^ 0x35)] + (BYTE2(v41) ^ 0xFFFFFF1F) + (BYTE2(v41) ^ 0xAEC45FF6) - 234904777) ^ *&v47[4 * (v19 ^ 0x56)];
  LODWORD(v31) = *&v43[4 * (HIBYTE(v41) ^ 0xE1)] ^ ((HIBYTE(v41) ^ 0xB1) - 586067169) ^ *&v46[4 * (BYTE1(v19) ^ 0xED)] ^ *&v47[4 * (v26 ^ 0xB2)] ^ ((BYTE2(v42) ^ 0xFFFFFFD7) + (BYTE2(v42) ^ 0xAEC45F3E) - 234904777 + *&v45[4 * (BYTE2(v42) ^ 0xFD)]);
  v49 = BYTE1(v26) ^ ((HIBYTE(v42) ^ 0x44) - 586067169) ^ *&v46[4 * (BYTE1(v26) ^ 0x42)] ^ *&v43[4 * (HIBYTE(v42) ^ 0x14)] ^ ((BYTE2(v19) ^ 0xFFFFFF7D) + (BYTE2(v19) ^ 0xAEC45F94) - 234904777 + *&v45[4 * (BYTE2(v19) ^ 0x57)]) ^ *&v47[4 * (v41 ^ 0x8D)];
  LODWORD(v22) = *&v43[4 * (BYTE3(v19) ^ 0x28)] ^ ((BYTE3(v19) ^ 0x78) - 586067169) ^ ((BYTE2(v26) ^ 0xFFFFFFE3) + (BYTE2(v26) ^ 0xAEC45F0A) - 234904777 + *&v45[4 * (BYTE2(v26) ^ 0xC9)]) ^ *&v47[4 * (v42 ^ 0x54)] ^ *&v46[4 * (BYTE1(v41) ^ 0x23)];
  v50 = *&v47[4 * ((v43[4 * (BYTE3(v19) ^ 0x28)] ^ ((BYTE3(v19) ^ 0x78) + 31) ^ ((BYTE2(v26) ^ 0xE3) + (BYTE2(v26) ^ 0xA) + 55 + v45[4 * (BYTE2(v26) ^ 0xC9)]) ^ v47[4 * (v42 ^ 0x54)] ^ v46[4 * (BYTE1(v41) ^ 0x23)] ^ BYTE1(v41)) ^ 0x5F)];
  LODWORD(v26) = *&v43[4 * (HIBYTE(v48) ^ 0xC0)] ^ ((HIBYTE(v48) ^ 0x98978CB1) + ((v48 >> 23) & 0x42) + 1148831486) ^ v50 ^ *&v46[4 * (((v49 ^ 0xB946) >> 8) ^ 0xEB)] ^ ((BYTE2(v31) ^ 0xFFFFFF4C) + (BYTE2(v31) ^ 0xAEC45FA5) - 234904777 + *&v45[4 * (BYTE2(v31) ^ 0x66)]);
  v51 = *&v47[4 * ((v48 ^ BYTE1(v42)) ^ 0xD1)] ^ __ROR4__(__ROR4__(((BYTE3(v31) ^ 0x7B) - 586067169) ^ BYTE1(v22) ^ *&v43[4 * (BYTE3(v31) ^ 0x2B)] ^ ((((v49 ^ 0x24C2B946) >> 16) ^ 0xAEC45F16) - ((v49 ^ 0x24C2B946) >> 16) - 234904778 + *&v45[4 * (((v49 ^ 0x24C2B946) >> 16) ^ 0xD5)]) ^ *&v46[4 * (BYTE1(v22) ^ 0xB0)] ^ 0xA0C63841, 7) ^ 0x43B234A5, 25);
  v52 = *&v43[4 * (((v49 ^ 0x24C2B946) >> 24) ^ 0x50)] ^ (((v49 ^ 0x24C2B946) >> 24) - 586067169) ^ ((BYTE2(v22) ^ 0xFFFFFF14) + (BYTE2(v22) ^ 0xAEC45FFD) - 234904777 + *&v45[4 * (BYTE2(v22) ^ 0x3E)]) ^ *&v46[4 * (BYTE1(v48) ^ 0x67)] ^ *&v47[4 * ((v31 ^ BYTE1(v19)) ^ 0xEF)];
  LODWORD(v19) = *&v43[4 * (BYTE3(v22) ^ 0x5D)] ^ ((BYTE3(v22) ^ 0xD) - 586067169) ^ *&v46[4 * (BYTE1(v31) ^ 0x11)] ^ ((BYTE2(v48) ^ 0xFFFFFFD1) + (BYTE2(v48) ^ 0xAEC45F38) - 234904777 + *&v45[4 * (BYTE2(v48) ^ 0xFB)]) ^ *&v47[4 * (v49 ^ 0x46)];
  v53 = v51 ^ 0x91BE0B3B;
  v54 = *&v43[4 * (BYTE3(v26) ^ 0x83)] ^ ((BYTE3(v26) ^ 0xD3) - 586067169) ^ *&v46[4 * (BYTE1(v52) ^ 0x55)] ^ *&v47[4 * ((v43[4 * (BYTE3(v22) ^ 0x5D)] ^ ((BYTE3(v22) ^ 0xD) + 31) ^ v46[4 * (BYTE1(v31) ^ 0x11)] ^ ((BYTE2(v48) ^ 0xD1) + (BYTE2(v48) ^ 0x38) + 55 + v45[4 * (BYTE2(v48) ^ 0xFB)]) ^ v47[4 * (v49 ^ 0x46)] ^ BYTE1(v31)) ^ 0x24)] ^ (*&v45[4 * (((v51 ^ 0x91BE0B3B) >> 16) ^ 0xD5)] - ((v51 ^ 0x91BE0B3B) >> 16) + (((v51 ^ 0x91BE0B3B) >> 16) ^ 0xAEC45F16) - 234904778);
  v55 = *&v43[4 * (HIBYTE(v53) ^ 0x50)] ^ (HIBYTE(v53) - 586067169) ^ *&v46[4 * (BYTE1(v19) ^ 0x68)] ^ ((BYTE2(v52) ^ 0xFFFFFF5A) + (BYTE2(v52) ^ 0xAEC45FB3) - 234904777 + *&v45[4 * (BYTE2(v52) ^ 0x70)]) ^ *&v47[4 * ((v43[4 * (HIBYTE(v48) ^ 0xC0)] ^ ((HIBYTE(v48) ^ 0xB1) + ((v48 >> 23) & 0x42) - 2) ^ v50 ^ v46[4 * (((v49 ^ 0xB946) >> 8) ^ 0xEB)] ^ ((BYTE2(v31) ^ 0x4C) + (BYTE2(v31) ^ 0xA5) + 55 + v45[4 * (BYTE2(v31) ^ 0x66)]) ^ ((v49 ^ 0xB946) >> 8)) ^ 0x70)];
  LODWORD(v31) = (BYTE2(v26) ^ 0xAEC45FC2) - (BYTE2(v26) ^ 0xD4) - 234904778 + *&v45[4 * (BYTE2(v26) ^ 1)];
  LODWORD(v31) = ((BYTE3(v19) ^ 0xC1) - 586067169) ^ *&v43[4 * (BYTE3(v19) ^ 0x91)] ^ 0x119796 ^ (v31 - ((2 * v31) & 0xD45691A) - 2036157299);
  v56 = BYTE1(v53) ^ 0x65AB7C61 ^ *&v46[4 * (BYTE1(v53) ^ 0xEB)];
  v57 = (v31 + v56 - 2 * (v31 & v56)) ^ *&v47[4 * ((v52 ^ BYTE1(v48)) ^ 0xFA)];
  v58 = BYTE1(v26) ^ ((HIBYTE(v52) ^ 0x8C) - 586067169) ^ *&v43[4 * (HIBYTE(v52) ^ 0xDC)] ^ *&v46[4 * (BYTE1(v26) ^ 0x16)] ^ ((BYTE2(v19) ^ 0xFFFFFFB4) + (BYTE2(v19) ^ 0xAEC45F5D) - 234904777 + *&v45[4 * (BYTE2(v19) ^ 0x9E)]) ^ 0xE39E0627 ^ *&v47[4 * (v53 ^ 0x26)];
  v59 = *&v43[4 * (HIBYTE(v54) ^ 0xD7)] ^ ((HIBYTE(v54) ^ 0x87) - 586067169) ^ ((BYTE2(v55) ^ 0xFFFFFFC1) + (BYTE2(v55) ^ 0xAEC45F28) - 234904777 + *&v45[4 * (BYTE2(v55) ^ 0xEB)]) ^ *&v46[4 * (BYTE1(v58) ^ 0xEB)] ^ *&v47[4 * (v57 ^ 0x41)];
  LODWORD(v22) = *&v43[4 * (HIBYTE(v55) ^ 0x7F)] ^ ((HIBYTE(v55) ^ 0x2F) - 586067169) ^ ((BYTE2(v58) ^ 0xAEC45F16) - BYTE2(v58) - 234904778 + *&v45[4 * (BYTE2(v58) ^ 0xD5)]) ^ *&v47[4 * ((v54 ^ BYTE1(v52)) ^ 0xB4)] ^ *&v46[4 * (BYTE1(v57) ^ 0x57)] ^ BYTE1(v57);
  v60 = *&v46[4 * (BYTE1(v54) ^ 0x32)];
  LODWORD(v19) = *&v43[4 * (HIBYTE(v58) ^ 0x50)] ^ (HIBYTE(v58) - 586067169) ^ *&v47[4 * ((v55 ^ BYTE1(v19)) ^ 0x10)] ^ ((BYTE2(v57) ^ 0xFFFFFF37) + (BYTE2(v57) ^ 0xAEC45FDE) - 234904777 + *&v45[4 * (BYTE2(v57) ^ 0x1D)]) ^ ((BYTE1(v54) ^ 0x70504D4D) + (v60 ^ 0x15FB31F5) + ((2 * ((v60 ^ 0x405040BD) & (BYTE1(v54) ^ 0x70504D4D) ^ (v54 >> 8) & 0x48)) ^ 0x5FFF7D6F) + 1);
  v61 = *&v43[4 * (HIBYTE(v57) ^ 0xD1)] ^ ((HIBYTE(v57) ^ 0x81) - 586067169) ^ *&v46[4 * (BYTE1(v55) ^ 0x35)] ^ ((BYTE2(v54) ^ 0xFFFFFFA6) + (BYTE2(v54) ^ 0xAEC45F4F) - 234904777 + *&v45[4 * (BYTE2(v54) ^ 0x8C)]) ^ *&v47[4 * v58];
  v62 = *&v43[4 * (HIBYTE(v59) ^ 0xC4)] ^ ((HIBYTE(v59) ^ 0x94) - ((2 * (HIBYTE(v59) ^ 0x94) + 1598) & 0x636) + 1537373754);
  LODWORD(v22) = (-(v22 ^ 0x3187DE45) ^ (1500161749 - (v22 ^ 0x68ED7890)) ^ 0x2700416B ^ ((v22 ^ 0x3187DE45) - ((2 * (v22 ^ 0x3187DE45)) & 0x4E0082D6) + 654328171)) + 1500161749;
  v63 = *&v45[4 * (BYTE2(v22) ^ 0x8E)] + (BYTE2(v22) ^ 0xAEC45F4D) - (BYTE2(v22) ^ 0x5B);
  v64 = *&v43[4 * (BYTE3(v19) ^ 0x6D)] ^ ((BYTE3(v19) ^ 0x3D) - 586067169) ^ ((BYTE2(v61) ^ 0xFFFFFF07) + (BYTE2(v61) ^ 0xAEC45FEE) - 234904777 + *&v45[4 * (BYTE2(v61) ^ 0x2D)]) ^ *&v46[4 * (BYTE1(v59) ^ 0x2A)] ^ *&v47[4 * (v22 ^ 0x60)];
  v65 = *&v47[4 * ((v43[4 * (HIBYTE(v57) ^ 0xD1)] ^ ((HIBYTE(v57) ^ 0x81) + 31) ^ v46[4 * (BYTE1(v55) ^ 0x35)] ^ ((BYTE2(v54) ^ 0xA6) + (BYTE2(v54) ^ 0x4F) + 55 + v45[4 * (BYTE2(v54) ^ 0x8C)]) ^ v47[4 * v58] ^ BYTE1(v55)) ^ 0x73)] ^ BYTE1(v19) ^ *&v46[4 * (BYTE1(v19) ^ 0x8E)] ^ 0xE04EE8AE ^ (((234904778 - v63) ^ (v62 - ((v63 - 234904778) ^ v62)) ^ 0x23540AF7 ^ (v63 - 234904778 - ((2 * (v63 - 234904778)) & 0x46A815EE) + 592710391)) + v62);
  v66 = ((BYTE3(v22) ^ 0x93) - 586067169) ^ BYTE1(v61) ^ *&v46[4 * (BYTE1(v61) ^ 0x77)] ^ ((BYTE2(v19) ^ 0xFFFFFF79) + (BYTE2(v19) ^ 0xAEC45F90) - 234904777 + *&v45[4 * (BYTE2(v19) ^ 0x53)]) ^ *&v47[4 * ((v59 ^ BYTE1(v58)) ^ 0xE0)] ^ *&v43[4 * (BYTE3(v22) ^ 0xC3)];
  LODWORD(v22) = BYTE1(v22);
  v67 = *&v46[4 * (v22 ^ 0xEA)];
  v68 = v22 ^ ((HIBYTE(v61) ^ 0x7A) - 586067169) ^ *&v43[4 * (HIBYTE(v61) ^ 0x2A)] ^ ((BYTE2(v59) ^ 0xFFFFFF72) + (BYTE2(v59) ^ 0xAEC45F9B) - 234904777 + *&v45[4 * (BYTE2(v59) ^ 0x58)]) ^ *&v47[4 * (v19 ^ 0xC8)];
  v69 = v66 ^ 0xDD4ED43F;
  v70 = v68 ^ 0xFF9B51A6 ^ v67;
  v71 = *&v43[4 * (HIBYTE(v65) ^ 0x50)] ^ (HIBYTE(v65) - 586067169) ^ *&v46[4 * (BYTE1(v64) ^ 0x40)] ^ *&v47[4 * (v68 ^ 0xA6 ^ v67)] ^ (*&v45[4 * (BYTE2(v69) ^ 0xD5)] - BYTE2(v69) + (-BYTE2(v69) ^ (BYTE2(v69) - ((v66 >> 15) & 0x22) + 1697938705) ^ (-1362862314 - (BYTE2(v69) ^ 0xAEC45F16)) ^ 0x65347D11) - 1597767092);
  v72 = *&v43[4 * (HIBYTE(v69) ^ 0x50)] ^ (HIBYTE(v69) - 586067169) ^ *&v46[4 * (BYTE1(v70) ^ 0xEB)] ^ ((BYTE2(v64) ^ 0xFFFFFF99) + (BYTE2(v64) ^ 0xAEC45F70) - 234904777 + *&v45[4 * (BYTE2(v64) ^ 0xB3)]) ^ *&v47[4 * v65];
  v73 = *&v43[4 * (HIBYTE(v64) ^ 0x95)] ^ ((HIBYTE(v64) ^ 0xC5) - 586067169) ^ ((BYTE2(v70) ^ 0xAEC45F16) - BYTE2(v70) - 234904778 + *&v45[4 * (BYTE2(v70) ^ 0xD5)]) ^ *&v47[4 * (v66 ^ 0x3F)] ^ *&v46[4 * ((BYTE1(v65) - (BYTE1(v65) ^ 0xEB)) ^ 0xFFFFFFFE) + 4 * BYTE1(v65)];
  v74 = *&v43[4 * (HIBYTE(v70) ^ 0x50)];
  HIDWORD(v155) = *(v17 - 116) < 0x4BC5C7F3u;
  v75 = v74 & 0x40;
  if ((v74 & 0x40 & (HIBYTE(v70) + 31)) != 0)
  {
    v75 = -v75;
  }

  v76 = BYTE1(v69) ^ v74 & 0xFFFFFFBF ^ *&v46[4 * (BYTE1(v69) ^ 0xEB)] ^ *&v47[4 * ((v64 ^ BYTE1(v59)) ^ 0xF4)] ^ (v75 + HIBYTE(v70) - 586067169) ^ 0x7D528CD9 ^ ((BYTE2(v65) ^ 0xAEC45F16) - BYTE2(v65) - 234904778 + *&v45[4 * (BYTE2(v65) ^ 0xD5)]);
  v77 = *&v43[4 * (HIBYTE(v71) ^ 0x8A)];
  v78 = *&v46[4 * (BYTE1(v73) ^ 0x50)] ^ ((BYTE2(v72) ^ 0xFFFFFF50) + (BYTE2(v72) ^ 0xAEC45FB9) - 234904777 + *&v45[4 * (BYTE2(v72) ^ 0x7A)]) ^ *&v47[4 * v76] ^ ((HIBYTE(v71) ^ 0xDA) - 586067169 + (v77 ^ 0x86B3231B) + ((2 * ((v77 ^ 0x4110031B) & ((HIBYTE(v71) ^ 0xDA) - 586067169))) ^ 0x75FDFFFF) + 1);
  v79 = *&v43[4 * (HIBYTE(v72) ^ 0x17)];
  v81 = ((HIBYTE(v72) ^ 0x47) + 31) & 0x10;
  if ((v81 & ~v79) != 0)
  {
    v81 = -v81;
  }

  v80 = (HIBYTE(v72) ^ 0x47) - 586067169;
  v82 = *&v46[4 * (BYTE1(v76) ^ 0xEB)] ^ BYTE1(v76) ^ ((BYTE2(v73) ^ 0xFFFFFF33) + (BYTE2(v73) ^ 0xAEC45FDA) - 234904777 + *&v45[4 * (BYTE2(v73) ^ 0x19)]) ^ 0x65AB7C61 ^ ((v79 ^ 0x86B3231B ^ (2035080421 - (((v79 ^ 0xB1DC4A2D) + 1310963155) ^ ((v79 ^ 0xA43A4696) + 1539684714) ^ ((v79 ^ 0x93552FA0) + 1823133792))) ^ (v80 - (((v80 & 0x4001520 ^ 0x22648DB3 ^ (v81 + (v79 ^ 0x86B3231B)) & 0x86BEBD30) & (v80 & 0x2CF ^ 0xA6FEBDB7) | v80 & 0x1000024C) ^ 0x49DE68E9 ^ (((v81 + (v79 ^ 0x86B3231B)) & 0x794142CF) - 2 * ((v81 + (v79 ^ 0x86B3231B)) & 0x2001004B ^ (v79 ^ 0x86B3231B) & 1) - 1565809318)))) + v80);
  v83 = *&v47[4 * ((v71 ^ BYTE1(v64)) ^ 0x7C)] ^ 0x8BF52756;
  v84 = v82 + v83 - 2 * (v82 & v83);
  v85 = *&v43[4 * (HIBYTE(v73) ^ 0x92)] ^ ((HIBYTE(v73) ^ 0xC2) - ((2 * (HIBYTE(v73) ^ 0xC2) + 170042942) & 0x8220636) + 1673819706);
  v86 = *&v45[4 * (BYTE2(v76) ^ 0xD5)] + (BYTE2(v76) ^ 0xAEC45F16) - BYTE2(v76) - 234904778;
  v87 = BYTE1(v71) ^ *&v46[4 * (BYTE1(v71) ^ 0x2F)] ^ *&v47[4 * ((v72 ^ BYTE1(v70)) ^ 0x4B)] ^ 0xCC62A3E6 ^ (v86 + v85 - 2 * (v86 & v85));
  v88 = *&v43[4 * (HIBYTE(v76) ^ 0x50)] ^ (HIBYTE(v76) - 586067169) ^ *&v46[4 * (BYTE1(v72) ^ 0x9D)] ^ ((BYTE2(v71) ^ 0xFFFFFF1B) + (BYTE2(v71) ^ 0xAEC45FF2) - 234904777 + *&v45[4 * (BYTE2(v71) ^ 0x31)]) ^ *&v47[4 * ((v73 ^ BYTE1(v65)) ^ 0x41)];
  v89 = __ROR4__(__ROR4__(v87, 29) ^ 0xA48F544C, 3);
  LOWORD(v71) = v89 ^ 0xDED3;
  v90 = *&v43[4 * (HIBYTE(v78) ^ 0xEF)] ^ ((HIBYTE(v78) ^ 0xBF) - 586067169) ^ *&v47[4 * ((v43[4 * (HIBYTE(v76) ^ 0x50)] ^ (HIBYTE(v76) + 31) ^ v46[4 * (BYTE1(v72) ^ 0x9D)] ^ ((BYTE2(v71) ^ 0x1B) + (BYTE2(v71) ^ 0xF2) + 55 + v45[4 * (BYTE2(v71) ^ 0x31)]) ^ v47[4 * ((v73 ^ BYTE1(v65)) ^ 0x41)] ^ BYTE1(v72)) ^ 0xF3)] ^ *&v46[4 * (((v89 ^ 0xDED3) >> 8) ^ 0xEB)] ^ (*&v45[4 * (BYTE2(v84) ^ 0x57)] - (BYTE2(v84) ^ 0x82) + (BYTE2(v84) ^ 0xAEC45F94) - 234904778);
  v91 = *&v43[4 * (HIBYTE(v84) ^ 6)] ^ BYTE1(v88) ^ *&v46[4 * (BYTE1(v88) ^ 0xB5)] ^ *&v47[4 * ((v78 ^ BYTE1(v73)) ^ 0xC9)] ^ (*&v45[4 * (((v89 ^ 0x62E6DED3u) >> 16) ^ 0xD5)] - ((v89 ^ 0x62E6DED3u) >> 16) + (((v89 ^ 0x62E6DED3u) >> 16) ^ 0xAEC45F16) - 234904778) ^ ((HIBYTE(v84) ^ 0x56) - 586067169);
  v92 = *&v43[4 * (((v89 ^ 0x62E6DED3u) >> 24) ^ 0x50)] ^ (((v89 ^ 0x62E6DED3u) >> 24) - 586067169) ^ ((BYTE2(v88) ^ 0xFFFFFF0E) + (BYTE2(v88) ^ 0xAEC45FE7) - 234904777 + *&v45[4 * (BYTE2(v88) ^ 0x24)]) ^ *&v46[4 * (BYTE1(v78) ^ 0xB1)] ^ *&v47[4 * (v84 ^ 0x31)];
  v93 = __ROR4__((((2 * HIBYTE(v88)) ^ 0x102) - 1172134337) ^ __ROR4__(*&v43[4 * (HIBYTE(v88) ^ 0xD1)], 31), 1);
  v94 = *&v46[4 * (BYTE1(v84) ^ 0xFA)] ^ ((BYTE2(v78) ^ 0xFFFFFF89) + (BYTE2(v78) ^ 0xAEC45F60) - 234904777 + *&v45[4 * (BYTE2(v78) ^ 0xA3)]) ^ v93 ^ *&v47[4 * v71];
  v95 = *&v46[4 * (BYTE1(v92) ^ 0xA)] ^ *&v43[4 * (HIBYTE(v90) ^ 0x65)] ^ ((HIBYTE(v90) ^ 0x35) - 586067169) ^ *&v47[4 * ((v46[4 * (BYTE1(v84) ^ 0xFA)] ^ ((BYTE2(v78) ^ 0x89) + (BYTE2(v78) ^ 0x60) + 55 + v45[4 * (BYTE2(v78) ^ 0xA3)]) ^ v93 ^ v47[4 * v71] ^ BYTE1(v84)) ^ 0xE6)] ^ (*&v45[4 * (((v91 ^ 0x4B503369) >> 16) ^ 0xD5)] - ((v91 ^ 0x4B503369) >> 16) + (((v91 ^ 0x4B503369) >> 16) ^ 0xAEC45F16) - 234904778);
  v96 = (v91 ^ 0x4B503369) >> 24;
  v97 = v96 - ((2 * v96) & 0xA0);
  v98 = 2 * v96 - 1172134338;
  v99 = v96 - (v98 & 0x8220636);
  v100 = (586067169 - v96) ^ (v96 - (v98 & 0x82008042) + 1075854144);
  v101 = *&v43[4 * v97 + 320];
  v102 = ((BYTE2(v92) ^ 0xFFFFFF0C) + (BYTE2(v92) ^ 0xAEC45FE5) - 234904777 + *&v45[4 * (BYTE2(v92) ^ 0x26)]) ^ *&v46[4 * (BYTE1(v94) ^ 0x32)] ^ *&v47[4 * ((v90 ^ BYTE1(v71)) ^ 0x33)] ^ ((v100 ^ 0x630EE821 ^ ((v101 ^ 0x86B3231B) - ((v99 + 1673819706) ^ v101))) + (v101 ^ 0x86B3231B));
  v103 = *&v43[4 * (HIBYTE(v92) ^ 0xE7)] ^ (((v92 >> 23) & 0x3E ^ 0x2E) + (HIBYTE(v92) ^ 0xDD1153A8)) ^ *&v46[4 * (BYTE1(v90) ^ 0xD7)] ^ *&v47[4 * (v91 ^ 0x4F)] ^ ((BYTE2(v94) ^ 0xFFFFFFF8) - (BYTE2(v94) ^ 0xAEC45F11) + 2 * (BYTE2(v94) ^ 0xAEC45F11) - 234904777 + *&v45[4 * (BYTE2(v94) ^ 0xD2)]);
  v104 = ((HIBYTE(v94) ^ 0x76) - 586067169) ^ ((v91 ^ 0x3369) >> 8) ^ *&v43[4 * (HIBYTE(v94) ^ 0x26)] ^ ((BYTE2(v90) ^ 0xFFFFFFC5) + (BYTE2(v90) ^ 0xAEC45F2C) - 234904777 + *&v45[4 * (BYTE2(v90) ^ 0xEF)]) ^ *&v46[4 * (((v91 ^ 0x3369) >> 8) ^ 0xEB)] ^ *&v47[4 * ((v92 ^ BYTE1(v78)) ^ 0x17)];
  v105 = BYTE1(v90) ^ 0xEF04 ^ v103;
  v106 = v104 ^ 0x83A15CE6;
  v107 = *(&off_1010A0B50 + (v14 ^ 0x2B6C)) - 201442151;
  v108 = __ROR4__(*&v107[4 * (HIBYTE(v95) ^ 0x10)], 30);
  v109 = *(&off_1010A0B50 + v14 - 4242) - 974862167;
  v110 = *(&off_1010A0B50 + (v14 ^ 0x316E)) - 1843393915;
  v111 = *&v110[4 * (BYTE2(v102) ^ 0x98)] + 2039527911;
  v112 = v108 ^ 0xAEFC28B8 ^ (16 * (v108 ^ 0xAEFC28B8)) ^ (*&v109[4 * HIBYTE(v105)] + 1275267330) ^ v111 ^ (v111 >> 4) & 0xC700660;
  v113 = (v106 / 0x2945D011) | (16 * (v106 / 0x2945D011));
  if ((v104 ^ 0x83A15CE6) % 0x2945D011)
  {
    LOBYTE(v113) = v104 ^ 0xE6;
  }

  v114 = *(&off_1010A0B50 + v14 - 5588) - 973262503;
  v115 = v112 ^ *&v114[4 * (v113 ^ 0x16)];
  v116 = *&v110[4 * (BYTE2(v103) ^ 0xDD)] + 2039527911;
  v117 = v116 ^ (*&v109[4 * (BYTE1(v104) ^ 0x50)] + 1275267330) ^ (v116 >> 4) & 0xC700660 ^ *&v114[4 * ((v95 ^ BYTE1(v92)) ^ 0x85)];
  v118 = *&v107[4 * (HIBYTE(v103) ^ 0xEC)];
  v119 = *&v107[4 * (HIBYTE(v104) ^ 0xDA)];
  v120 = *&v110[4 * (BYTE2(v106) ^ 0x7E)];
  v121 = *&v110[4 * (BYTE2(v95) ^ 0x7E)];
  v122 = *&v109[4 * (BYTE1(v95) ^ 0x3D)];
  v123 = __ROR4__(*&v107[4 * (HIBYTE(v102) ^ 0x9D)], 30);
  v124 = *&v114[4 * ((v102 ^ BYTE1(v94)) ^ 0x88)];
  v125 = v123 ^ 0xA129E9D6 ^ (16 * (v123 ^ 0xA129E9D6)) ^ v117;
  v126 = __ROR4__(v119, 30);
  v127 = (v121 + 2039527911) ^ v126 ^ 0xB048DB9A ^ (*&v109[4 * (BYTE1(v102) ^ 0x4B)] + 1275267330) ^ (16 * (v126 ^ 0xB048DB9A)) ^ *&v114[4 * v105] ^ ((v121 + 2039527911) >> 4) & 0xC700660;
  v128 = *(&off_1010A0B50 + v14 - 4000) - 847513299;
  v129 = v128[BYTE2(v127) ^ 0x54] + 76;
  *(a2 + v156) = v129 & 0xBF ^ (v129 >> 2) & 0x2C ^ (v129 & 0x40 | 2) ^ 0x87;
  v130 = *(&off_1010A0B50 + v14 - 5797) - 1571310082;
  *(a2 + v164) = ((BYTE1(v115) ^ 0xF1) - (BYTE1(v115) ^ 0xEC) + v130[BYTE1(v115) ^ 0x3CLL] - 47) ^ 0xCB;
  *(a2 + v166) = ((BYTE1(v125) ^ 0x4A) - (BYTE1(v125) ^ 0x57) + v130[(-(BYTE1(v125) ^ 0x4A) ^ (205 - (BYTE1(v125) ^ 0x87)) ^ ((BYTE1(v125) ^ 0x4A) - ((v125 >> 7) & 8) - 1769731068) ^ 0x96840C04) + 205] - 47) ^ 0x7B;
  v131 = *(&off_1010A0B50 + v14 - 7570) - 1270852695;
  *(a2 + v157) = v131[BYTE3(v115) ^ 0x22] ^ 0x3C;
  *(a2 + v161) = v131[BYTE3(v127) ^ 0x79] ^ 0xEB;
  *(a2 + *(v17 - 156)) = ((BYTE1(v127) ^ 0xBB) - (BYTE1(v127) ^ 0xA6) + v130[BYTE1(v127) ^ 0x76] - 47) ^ 0xC5;
  v132 = v128[BYTE2(v115) ^ 0x84];
  v133 = v132 & 0xA5 ^ 0x61;
  v134 = (v132 ^ (2 * ((v132 ^ 0x62) & (2 * ((v132 ^ 0x62) & (2 * ((v132 ^ 0x62) & (2 * ((v132 ^ 0x62) & (2 * ((v132 ^ 0x42) & (2 * ((v132 ^ 0x42) & ~(2 * v132) & 0x46 ^ v133)) ^ v133)) ^ v133)) ^ v133)) ^ v133)) ^ v133)) ^ 0xFFFFFFCC) + ((((4 * v132) ^ 0xFFFFFF80) & (8 * ((v132 ^ 2) & (2 * ((v132 ^ 0x62) & (2 * ((v132 ^ 0x62) & (2 * ((v132 ^ 0x62) & (2 * (v132 & 1 ^ 0x13)) ^ v132 & 1 ^ 0x13)) ^ v132 & 1 ^ 0x13)) ^ v132 & 1 ^ 0x13)) ^ v132 & 1 ^ 0x13)) ^ (2 * v132)) & 0xFFFFFFD2 ^ 0x42);
  *(a2 + v159) = v134 ^ 0x17 ^ (v134 >> 2) & 0x2C;
  v135 = *(&off_1010A0B50 + v14 - 5160) - 961007515;
  *(a2 + *(v17 - 136)) = v135[v127 ^ 0x49] ^ 0x37;
  v136 = v128[BYTE2(v125) ^ 0xA5] + 76;
  *(a2 + v165) = v136 ^ (v136 >> 2) & 0x2C ^ 0x87;
  *(a2 + v163) = v131[HIBYTE(v125) ^ 0x47] ^ 0x6F;
  v137 = __ROR4__(v118, 30);
  v138 = v137 ^ 0xE8B9F70A ^ (16 * (v137 ^ 0xE8B9F70A)) ^ (v120 + 2039527911) ^ (v122 + 1275267330) ^ ((v120 + 2039527911) >> 4) & 0xC700660 ^ v124;
  *(a2 + v158) = v135[v137 ^ 0xA ^ (16 * (v137 ^ 0xA)) ^ ((v120 - 25) ^ (v122 + 2)) ^ ((v120 + 2039527911) >> 4) & 0x60 ^ v124 ^ 0xDFLL] ^ 0xD;
  *(a2 + v162) = v131[HIBYTE(v138) ^ 0x58] ^ 0xE8;
  v139 = *(v17 - 152);
  *(a2 + *(v17 - 144)) = ((BYTE1(v138) ^ 0xBC) - (BYTE1(v138) ^ 0xA1) + v130[BYTE1(v138) ^ 0x71] - 47) ^ 0x13;
  *(a2 + v139) = v135[v115 ^ 0x62] ^ 6;
  LODWORD(v131) = v128[BYTE2(v138) ^ 0xD3] + 76;
  *(a2 + v160) = v131 ^ (v131 >> 2) & 0x2C ^ 0x8F;
  LOBYTE(v131) = v135[v125 ^ 0xBELL] ^ 0xD6;
  LODWORD(v128) = (((v15 ^ 0x3787A97A) - 931637626) ^ ((v15 ^ 0x887E7D7F) + 2004976257) ^ ((v15 ^ 0x8ED0DBF5) + 1898914827)) + 963729435;
  v140 = (v128 ^ 0xF72737F0) & (2 * (v128 & 0xF7B7B7E5)) ^ v128 & 0xF7B7B7E5;
  v141 = ((2 * (v128 ^ 0x536E3BFA)) ^ 0x49B3183E) & (v128 ^ 0x536E3BFA) ^ (2 * (v128 ^ 0x536E3BFA)) & 0xA4D98C1E;
  v142 = v141 ^ 0xA4488401;
  v143 = (v141 ^ 0x91081C) & (4 * v140) ^ v140;
  v144 = ((4 * v142) ^ 0x9366307C) & v142 ^ (4 * v142) & 0xA4D98C1C;
  v145 = (v144 ^ 0x80400010) & (16 * v143) ^ v143;
  v146 = ((16 * (v144 ^ 0x24998C03)) ^ 0x4D98C1F0) & (v144 ^ 0x24998C03) ^ (16 * (v144 ^ 0x24998C03)) & 0xA4D98C10;
  v147 = v145 ^ 0xA4D98C1F ^ (v146 ^ 0x4988000) & (v145 << 8);
  v148 = (v147 << 16) ^ 0xC1F0000;
  v149 = (v147 << 16) & 0x24D90000;
  v150 = v149 ^ v147 ^ v148 & (((v146 ^ 0xA0410C0F) << 8) & 0x24D90000 ^ 0x24510000 ^ (((v146 ^ 0xA0410C0F) << 8) ^ 0x598C0000) & (v146 ^ 0xA0410C0F));
  *(a2 + *(v17 - 128)) = (((((v131 >> 5) | (8 * v131)) ^ 0xE3) >> 3) | (32 * (((v131 >> 5) | (8 * v131)) ^ 0xE3))) ^ 0xB0;
  LODWORD(v128) = (((v128 ^ (2 * v150) ^ 0x7CF3B577) + 68414116) ^ ((v128 ^ (2 * v150) ^ 0x4FA52E58) + 927297933) ^ ((v128 ^ (2 * v150) ^ 0x856034F4) - 41915615)) + 2096027619;
  v151 = HIDWORD(v155) ^ (v128 < 0x4BC5C7F3);
  v152 = v128 < *(v17 - 116);
  if (v151)
  {
    v153 = HIDWORD(v155);
  }

  else
  {
    v153 = v152;
  }

  return (*(a11 + 8 * ((1864 * v153) ^ v14)))(v115, 208668256, 1275267330, v149, v127, v148, v122, v120, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, v155, v156, v157, v158);
}

uint64_t sub_10014E2A0()
{
  v3 = (((v0 - 8664) ^ 0xB7DFC662) & (2 * v2)) + (v2 ^ 0xDBEF5E85 ^ (v0 + 1578053130) & 0xA1F0B7FB) - 415433241;
  v4 = (((v3 ^ 0xCC4D65BA) - 258062428) ^ v3 ^ ((v3 ^ 0xD83614A4) - 454740290) ^ ((v3 ^ 0x38A95581) + 75134873) ^ ((v3 ^ 0xEFFEF979) - 751969439)) != 3274497510;
  return (*(v1 + 8 * ((v4 | (2 * v4)) ^ v0)))();
}

uint64_t sub_10014E3AC(int a1, unsigned int a2)
{
  v11 = v7 < a2;
  *(v9 + v8) = *(v4 + (v8 & 0xF)) ^ *(v2 + v8) ^ (13 * (v8 & 0xF)) ^ *(v5 + (v8 & 0xF)) ^ *(v6 + (((v3 - 6413) | 0x5191u) ^ 0x53BALL) + (v8 & 0xF));
  if (v11 == v8 + 1 > 0x1EEB8E09)
  {
    v11 = v8 - 518753801 < v7;
  }

  return (*(v10 + 8 * ((v11 * a1) ^ v3)))();
}

uint64_t sub_10014E6BC()
{
  v1 = *(STACK[0x2F0] + 8 * (((13 * (LODWORD(STACK[0x2EC]) ^ 0x9AC7) + 11751) * (v0 == -371865839)) ^ (LODWORD(STACK[0x2EC]) - 31691)));
  STACK[0x278] = STACK[0x260];
  return v1();
}

uint64_t sub_10014E724@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W8>)
{
  *v3 = v6;
  v3[1] = v6;
  return (*(v5 + 8 * (((v4 == 0) * (((a3 - 1051) | a1) ^ a2)) ^ a3)))();
}

uint64_t sub_10014E788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v19 = 193924789 * ((v18 - 128 - 2 * ((v18 - 128) & 0x78064DB0) - 133804618) ^ 0x4EBD7FD0);
  *(v18 - 120) = &a15;
  *(v18 - 128) = (((v17 + 1286154234) & 0xB356BEDB) + (v15 ^ 0x3B7BE6F7) + ((2 * v15) & 0x76F7CDEE) - 135447414) ^ v19;
  *(v18 - 124) = (v17 + 6090) ^ v19;
  v20 = (*(v16 + 8 * (v17 + 29439)))(v18 - 128);
  return (*(v16 + 8 * v17))(v20);
}

uint64_t sub_10014E848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, uint64_t a29, int a30)
{
  v36 = v32 + 2;
  v37 = (((&a27 | 0x41D90FA9) + (~&a27 | 0xBE26F056)) ^ 0xFBC9EE3A) * v33;
  a29 = *(a18 - 0x217E172EFA1E81CLL);
  a27 = (v36 + 20695) ^ v37;
  a28 = a10 * v31 - v37 + v34;
  v38 = (*(v30 + 8 * (v36 + 26068)))(&a27);
  return (*(v30 + 8 * (((a30 == (v35 ^ (2 * (v36 ^ 0x5E13)))) * (v36 + 31595)) ^ v36)))(v38);
}

uint64_t sub_10014E978@<X0>(int a1@<W8>)
{
  v4 = (((v1 ^ 0x2F46C4A5) - 793167013) ^ ((v1 ^ 0xA2D6F877) + 1562969993) ^ ((v1 ^ 0x6445FBC3) - 1682318945 + ((37 * (a1 ^ 0xB321)) ^ 0xA6C9))) - 1598534328;
  v5 = (((v2 ^ 0x5EE602F4) - 1592132340) ^ ((v2 ^ 0x3926BFB9) - 958840761) ^ ((v2 ^ 0x8E157A5C) + 1911195044)) - 1598534328;
  v6 = (v4 < 0xB6E28637) ^ (v5 < 0xB6E28637);
  v7 = v4 < v5;
  if (v6)
  {
    v7 = v5 < 0xB6E28637;
  }

  return (*(v3 + 8 * ((7 * !v7) ^ a1)))();
}

uint64_t sub_10014EA8C@<X0>(int a1@<W8>)
{
  v5 = v1 - 40998;
  v6 = *(v3 + 8 * (v5 - 7244)) - 1371095542;
  v7 = *(v4 - 111);
  v8 = *(v3 + 8 * (v5 ^ 0x2676)) - 1958819918;
  v9 = *(v8 + (v7 ^ 0xBD));
  v10 = (v7 & 2 | 0x65) ^ v7 & 0xFD;
  v11 = *(v3 + 8 * (v5 - 6316)) - 421306710;
  v12 = *(v11 + (*(v4 - 101) ^ 0x49)) ^ *(v4 - 101);
  LOBYTE(v7) = *(v6 + (*(v4 - 102) ^ 0x34)) + 61;
  v13 = (v10 ^ v9) << 16;
  v14 = *(v3 + 8 * (v5 ^ 0x28FB)) - 1713509979;
  v15 = *(v14 + (*(v4 - 112) ^ 0xD4));
  v16 = (((v7 ^ (16 * v7) ^ (4 * v7)) << 8) ^ 0xA22973A7) & (v12 ^ 0xAAEFFF7E) | v12 & 0x58;
  LODWORD(v7) = ((((v15 >> 3) & 1 ^ v15) << 24) ^ 0x1794AC01) & (v13 ^ 0xFF29AF4B) | v13 & 0x6B0000;
  v17 = (*(v8 + (*(v4 - 103) ^ 0x48)) ^ *(v4 - 103)) << 16;
  v18 = (v17 ^ 0x3EB4FFFF) & (v16 ^ 0xB6783CB3) ^ (v17 & 0xAE0000 | 0xC0004A82);
  v19 = *(v14 + (*(v4 - 104) ^ 0x5DLL));
  v20 = *(v11 + (*(v4 - 109) ^ 0xBDLL)) ^ *(v4 - 109);
  v21 = v20 & 0x8E ^ 0xC625A952 ^ ((((((*(v6 + (*(v4 - 110) ^ 0xD2)) + 61) ^ (4 * (*(v6 + (*(v4 - 110) ^ 0xD2)) + 61)) ^ ((16 * (*(v6 + (*(v4 - 110) ^ 0xD2)) + 61)) | 6)) << 8) ^ 0xC51F06E6) & (v7 ^ 0xE54153E6) | v7 & 0x3AE00001) ^ 0x1BDA7696) & (v20 ^ 0xFFFFFFCA);
  *(v4 - 132) = (((a1 ^ 0x8518E26E) + 431620385) ^ ((a1 ^ 0xC811121F) + 1421078866) ^ ((a1 ^ 0x36986645) - 1439005428)) - 645879837;
  return (*(v2 + 8 * v5))(v18 & 0xE64817E3 ^ 0x1401187B ^ ((((v19 >> 3) & 1 ^ v19) << 24) ^ 0xB4B7E81C) & (v18 ^ 0x2BAC2263), v21);
}

uint64_t sub_10014F038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X6>, uint64_t a5@<X7>, int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v26 = v23 - 1;
  *(v21 + v26) = (v13 ^ ((v13 ^ v17) + v18) ^ ((v13 ^ v19) + v20) ^ ((v13 ^ 0x3F) - 91) ^ a2 ^ ((v13 ^ v15 & v16 ^ 0x22) + a1)) * (v13 - 83);
  v24 = *(v22 + 8 * (((((v26 - v14) | (v14 - v26)) >= 0) * a3) ^ a6));
  return v24(a1, a2, a3, v24, (v13 ^ v15 & v16 ^ 0x22222222) + a1, (v13 ^ 0x3Fu) + 165, a4, a5, a7, a8, a9, a10, a11, a12, a13);
}

void sub_10014F0B4(uint64_t a1)
{
  v1 = *(a1 + 16) + 1603510583 * ((~a1 & 0xC10D59F2 | a1 & 0x3EF2A60D) ^ 0x56D66B59);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10014F1D0(uint64_t a1, uint64_t a2, unint64_t a3, double a4, __n128 a5, __n128 a6, __n128 a7, int8x16_t a8, double a9, int8x16_t a10, int8x16_t a11, uint64_t a12, int a13)
{
  v21 = (v17 - 1) & 0xF;
  v23.i64[0] = vqtbl4q_s8(*(&a5 - 1), a8).u64[0];
  *&v23.i64[1] = a9;
  v24 = vrev64q_s8(veorq_s8(veorq_s8(veorq_s8(*(v13 + v17), *(v14 + v21 - 15)), *(v15 + v21 - 15)), *(v16 + v21 + ((v18 + 3496) ^ a3) - 15)));
  v25 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v24, v24, 8uLL), a11), vmulq_s8(v23, a10)));
  *(v19 + v17) = vextq_s8(v25, v25, 8uLL);
  return (*(v20 + 8 * (((a2 == 0) * a13) ^ v18)))(a1, a2 - 16);
}

uint64_t sub_10014F2A0(char a1, char a2, char a3, int a4, int a5, char a6, char a7, char a8)
{
  v25 = (v10 ^ a2) & (2 * (v10 & a1)) ^ v10 & a1;
  v26 = (((v10 ^ 0x6C8F7C18E86E23CBLL) << a3) ^ a4) & (v10 ^ 0xE86E23CB) ^ ((v10 ^ 0x6C8F7C18E86E23CBLL) << a3) & a5;
  v27 = v10 ^ (2 * (((4 * (v26 ^ a6)) & v14 ^ v15 ^ ((4 * (v26 ^ a6)) ^ a8) & (v26 ^ a6)) & (16 * ((v26 ^ a7) & (4 * v25) ^ v25)) ^ (v26 ^ a7) & (4 * v25) ^ v25));
  *(v24 + v11) = v13 + v12 * ((((v27 ^ v16) + v18) ^ ((v27 ^ v19) + v20) ^ ((v27 ^ v21) + v22)) + v23);
  return (*(v17 + 8 * (((v11 == 0) * v8) ^ v9)))();
}

uint64_t sub_10014F3A8()
{
  STACK[0x2F0] = 0;
  STACK[0x2D0] = &STACK[0x65C];
  v2 = *(v1 + 8 * (((*(*(STACK[0x220] + 32) + 24) == STACK[0x220]) * (((v0 - 1217228451) & 0x488D7FFD) + 8677)) ^ v0));
  STACK[0x230] = STACK[0x220];
  return v2();
}

uint64_t sub_10014F400@<X0>(int a1@<W8>)
{
  *(v2 - 1) = v5;
  *v2 = v5;
  return (*(v4 + 8 * (((v1 == 0) * v3) ^ a1)))();
}

uint64_t sub_10014F428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, int a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v65 = *(v64 - 248);
  v66 = **(v64 - 240);
  v67 = *(v64 - 256);
  v68 = ((*(*(v65 + a5) + (*(v67 + a3) & 0x72D7ACF8)) ^ (v66 + a58)) & 0x7FFFFFFF) * v61;
  v69 = (v68 ^ HIWORD(v68)) * v61;
  *(v66 + a58) = *(v63 + (v69 >> 24)) ^ *(v60 + (v69 >> 24)) ^ *((v69 >> 24) + v58 + 1) ^ v69 ^ (BYTE3(v69) * v62);
  v70 = (v66 + a2);
  v71 = ((*(*(v65 + a5) + (*(v67 + a3) & 0x72D7ACF8)) ^ v70) & 0x7FFFFFFF) * v61;
  v72 = (v71 ^ HIWORD(v71)) * v61;
  *v70 = *(v63 + (v72 >> 24)) ^ *(v60 + (v72 >> 24)) ^ *((v72 >> 24) + v58 + 1) ^ v72 ^ (BYTE3(v72) * v62);
  return (*(v59 + 8 * a52))();
}

uint64_t sub_10014F55C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0xA594)))(128);
  v3 = STACK[0x408];
  STACK[0x858] = v2;
  return (*(v3 + 8 * (((v2 == 0) * (v0 ^ 0xDFB8 ^ ((v0 + 12564) | 0x1080))) ^ v0)))();
}

uint64_t sub_10014F5C4@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v10 = v6 - 1;
  *(a2 + v10) ^= *(v3 + (v10 & 0xF)) ^ *(v4 + (v10 & 0xF)) ^ ((v10 & 0xF) * v7) ^ *((v10 & 0xF) + v2 + 4);
  return (*(v9 + 8 * (((v10 == v8) * a1) ^ v5)))();
}

uint64_t sub_10014F6C0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32)
{
  v40 = v38 + v39 - 1172834083;
  v41 = v32 & (a1 ^ 0xC94F3573) ^ v33;
  v42 = ((2 * (a1 ^ 0xC90D3775)) ^ 0x32C51C2C) & (a1 ^ 0xC90D3775) ^ (2 * (a1 ^ 0xC90D3775)) & 0x19628E16;
  v43 = a1 ^ (2 * (((4 * (v42 ^ 0x9228212)) & 0x19628E10 ^ 0x1020810 ^ ((4 * (v42 ^ 0x9228212)) ^ 0x658A3850) & (v42 ^ 0x9228212)) & (16 * ((v42 ^ 0x8400C04) & (4 * v41) ^ v41)) ^ (v42 ^ 0x8400C04) & (4 * v41) ^ v41)) ^ v40 ^ ((v40 ^ 0xCA27CFC1) + 1024470145) ^ ((v40 ^ 0xBF1870A2) + 1211077604) ^ ((v40 ^ 0xFFAFFFFF) + 144186559) ^ ((v35 ^ 0xF4FB) + ((v35 - 1080489052) & 0x75FFFF18 ^ 0x40F641DC) + (v40 ^ 0x82585C22));
  v44 = ((v43 ^ 0xDD08C5DC) - 1088710721) ^ ((v43 ^ 0xC2DD3158) - 1597086917) ^ ((v43 ^ 0xD7765159) - 1251671236);
  return (*(a29 + 8 * ((220 * (((a32 - v37 + 384531448 * v44 + (v44 + 1431242816) * (*(v34 + 4 * v36) - 1182515861) - 1337541120) & 7) != 1)) ^ v35)))();
}

uint64_t sub_10014F900()
{
  v5 = v0 + 4;
  STACK[0x488] = v5;
  if (v5 > v3)
  {
    v1 = 371891407;
  }

  LODWORD(STACK[0x494]) = v1;
  return (*(v4 + 8 * ((29029 * (v1 == ((v2 - 4837) ^ 0xA0D4) - 371866481)) ^ v2)))();
}

void sub_10014F9A8(uint64_t a1)
{
  v1 = *(a1 + 24) + 1112314453 * ((((2 * a1) | 0x173B34C6) - a1 + 1952605597) ^ 0x64CBB0BA);
  v2 = (v1 + 629495936) & 0xB0C3EF3F;
  v3 = ((*a1 & 0x285425128950A921) + 0x2044010209000101) & 0x285425128950A921 | (0x471D91CF6674872CLL - (*a1 & 0x428A88A5222A4294)) & 0x428A88A5222A4294 | (v2 ^ 0x9521524854857A75) & *a1;
  v5 = 2 * (v3 ^ 0x400120050841042 | &v4) - ((v3 ^ 0xFBFFEDFFAF7BEFB8) & &v4 | (v3 ^ 0x400120050841042) & ~&v4);
  v4 = (v5 | 0x4EE91E41) - (~v5 & 0x4EE91E41) + 1323900481;
  __asm { BRAA            X0, X17 }
}

uint64_t sub_10014FD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *(v23 + 16) = a22;
  *(v23 + 24) = a18;
  *(v22 + 16) = a19;
  *(v22 + 24) = a21;
  return (*(v24 + 8 * v25))();
}

uint64_t sub_10014FD50@<X0>(char a1@<W1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v12 = v9 - 1;
  *(a3 + v12) = *(v3 + v12) ^ *(v5 + (v12 & 0xF)) ^ *(v4 + (v12 & 0xF)) ^ ((v12 & 0xF) * a1) ^ *((v12 & 0xF) + v6 + 6) ^ a2;
  return (*(v11 + 8 * (((8 * (((v12 == 0) ^ v7) & 1)) & 0xEF | (16 * (((v12 == 0) ^ v7) & 1))) ^ v10)))(v7 & v8);
}

uint64_t sub_10014FF70@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, int a63)
{
  LODWORD(STACK[0x318]) = 0;
  v72 = v69 & 0xFFFFFFFA ^ 0x86495E95;
  *(v71 - 216) = v72;
  v73 = *(a1 + v72) ^ 0xB1;
  v74 = v69 & 0xFFFFFFFC ^ 0x86495E93;
  *(v71 - 192) = v74;
  v75 = STACK[0x258];
  LODWORD(v73) = *(STACK[0x258] + 4 * v73);
  v76 = *(a1 + v74);
  LODWORD(STACK[0x338]) = v70 - 22261;
  v77 = STACK[0x260];
  v78 = *(STACK[0x260] + (v76 ^ (((v70 + 11) ^ 0x87) + 7)));
  v79 = v70;
  v80 = v69 & 0xFFFFFFF3 ^ 0x86495E9CLL;
  *(v71 - 152) = v80;
  v81 = *(a1 + v80);
  LODWORD(v80) = v73 - 748196865;
  v82 = v69 & 0xFFFFFFF5 ^ 0x86495E9ALL;
  *(v71 - 168) = v82;
  v83 = *(a1 + v82);
  v84 = v69 & 0xFFFFFFFD ^ 0x86495E92;
  *(v71 - 176) = v84;
  v85 = *(a1 + v84);
  v86 = STACK[0x270];
  v87 = *(STACK[0x270] + 4 * (v81 ^ 0x7B));
  LODWORD(v81) = v83 ^ 0xAA;
  v88 = v69 & 0xFFFFFFFB ^ 0x86495E94;
  *(v71 - 200) = v88;
  LODWORD(v88) = *(v86 + 4 * (*(a1 + v88) ^ 0x72));
  v89 = v69 & 0xFFFFFFF9 ^ 0x86495E96;
  *(v71 - 184) = v89;
  v90 = *(a1 + v89);
  v91 = v88 - 2101338328;
  v92 = v69 & 0xFFFFFFF4 ^ 0x86495E9BLL;
  *(v71 - 160) = v92;
  v93 = *(a1 + v92);
  v94 = *(v77 + (v93 ^ 2));
  v95 = v69 & 0xFFFFFFF0 ^ 0x86495E9FLL;
  *(v71 - 208) = v95;
  v96 = *(a1 + v95);
  v97 = v94 ^ v93;
  v98 = v69 & 0xFFFFFFF8 ^ 0x86495E97;
  *(v71 - 224) = v98;
  LODWORD(v93) = *(v77 + (v96 ^ 0x3E)) ^ v96;
  LODWORD(v96) = *(v77 + (*(a1 + v98) ^ 0x2BLL)) ^ *(a1 + v98);
  v99 = STACK[0x268];
  v100 = (v83 ^ 0xAA) + 34808522;
  LODWORD(v83) = *(STACK[0x268] + 4 * (v83 ^ 0x20));
  LODWORD(v80) = (4 * v80) & 0xFFFC51B4 ^ v80 ^ v91 ^ *(STACK[0x268] + 4 * (v90 ^ 0x20));
  v101 = v69 & 0xFFFFFFF7 ^ 0x86495E98;
  *(v71 - 232) = v101;
  LODWORD(v101) = *(v86 + 4 * (*(a1 + v101) ^ 8));
  LODWORD(v96) = v80 ^ v90 ^ 0xAA ^ ((v90 ^ 0xAA) + 34808522) ^ v96;
  v102 = v69 & 0xFFFFFFF1 ^ 0x86495E9ELL;
  *(v71 - 256) = v102;
  LODWORD(v80) = v81 ^ v100;
  v103 = *(a1 + v102);
  LODWORD(v102) = v103 ^ 0x24;
  LODWORD(v80) = v80 ^ (v101 - 2101338328) ^ v97;
  v104 = v69 & 0xFFFFFFF6 ^ 0x86495E99;
  *(v71 - 248) = v104;
  LODWORD(v80) = v83 ^ v80;
  LODWORD(v83) = *(v75 + 4 * (*(a1 + v104) ^ 0xELL)) - 748196865;
  v105 = v80 ^ v83 ^ ((4 * v83) | 0x3AE48);
  LODWORD(v80) = (v103 ^ 0x24) + 34808522;
  LODWORD(v103) = *(v99 + 4 * (v103 ^ 0xAE));
  LODWORD(v83) = (v87 - 2101338328) ^ v102;
  v106 = v69 & 0xFFFFFFF2 ^ 0x86495E9DLL;
  STACK[0x340] = v106;
  LODWORD(v103) = v103 ^ v83;
  LODWORD(v83) = *(v75 + 4 * (*(a1 + v106) ^ 0xF9));
  LOBYTE(v106) = v85 ^ 0xF0;
  LODWORD(v83) = v83 - 748196865;
  LODWORD(v80) = v103 ^ v80 ^ v93 ^ v83;
  LODWORD(v103) = (v85 ^ 0xF0) + 34808522;
  LODWORD(v85) = *(v99 + 4 * (v85 ^ 0x7A));
  LODWORD(v102) = v80 ^ (4 * v83) & 0xFFFC51B4;
  v107 = v69 & 0xFFFFFFFE ^ 0x86495E91;
  *(v71 - 240) = v107;
  LOBYTE(v80) = v76 ^ v106;
  v108 = *(v75 + 4 * (*(a1 + v107) ^ 0x4ELL));
  LOBYTE(v80) = v78 ^ v80;
  v109 = v69 ^ 0x86495E90;
  STACK[0x348] = v109;
  LODWORD(v85) = v103 ^ v85 ^ v80 ^ (v108 - 748196865) ^ ((4 * (v108 - 748196865)) | 0x3AE48) ^ (*(v86 + 4 * (*(a1 + v109) ^ 0xE4)) - 2101338328);
  v110 = STACK[0x210];
  LODWORD(STACK[0x324]) = v85;
  LODWORD(v106) = v110 ^ v85;
  LODWORD(v109) = (v110 ^ v85) >> 24;
  v111 = *(&off_1010A0B50 + v79 - 36290) - 1748614306;
  LODWORD(v85) = *&v111[4 * (v109 ^ 0xC6)];
  v112 = STACK[0x20C];
  LODWORD(STACK[0x328]) = v102;
  LODWORD(v103) = v112 ^ v102;
  v113 = *(&off_1010A0B50 + v79 - 36744) - 1259865242;
  LODWORD(v85) = LODWORD(STACK[0x250]) ^ *&v113[4 * (((v112 ^ v102) >> 16) ^ 0xF0)] ^ v85;
  v114 = *(&off_1010A0B50 + (v79 ^ 0x98F3));
  v115 = STACK[0x2B0];
  LODWORD(STACK[0x330]) = v105;
  LODWORD(v104) = v105 ^ v115;
  v116 = v114 - 1654498955;
  LODWORD(v85) = v85 ^ (*(v114 - 1654498955 + 4 * (((v105 ^ v115) >> 8) ^ 0x74u)) - 229874806);
  v117 = STACK[0x2AC];
  LODWORD(STACK[0x334]) = v96;
  LODWORD(v86) = v96 ^ v117;
  v118 = *(&off_1010A0B50 + (v79 ^ 0x916E)) - 385205998;
  v119 = v85 ^ *&v118[4 * ((v96 ^ v117) ^ 0x4D)];
  LODWORD(v102) = (v96 ^ v117) >> 24;
  LODWORD(v85) = LODWORD(STACK[0x24C]) ^ *&v111[4 * (v102 ^ 0xAD)] ^ *&v113[4 * (BYTE2(v106) ^ 0xA4)] ^ *&v118[4 * (v104 ^ 0x9C)] ^ (*(v114 - 1654498955 + 4 * (BYTE1(v103) ^ 0xECu)) - 229874806);
  LODWORD(v96) = BYTE3(v104);
  LODWORD(v75) = BYTE3(v103);
  LODWORD(v103) = LODWORD(STACK[0x208]) ^ v103 ^ *&v111[4 * (BYTE3(v104) ^ 0x97)] ^ *&v113[4 * (BYTE2(v86) ^ 0xD0)] ^ *&v118[4 * (v103 ^ 0xCE)] ^ (*(v114 - 1654498955 + 4 * (BYTE1(v106) ^ 0x50u)) - 229874806);
  v120 = LODWORD(STACK[0x248]) ^ *&v111[4 * (v75 ^ 0x86)] ^ *&v113[4 * (BYTE2(v104) ^ 0x3B)] ^ (*(v114 - 1654498955 + 4 * (BYTE1(v86) ^ 0x3Du)) - 229874806) ^ *&v118[4 * (v106 ^ 0x48)];
  LODWORD(v114) = (v104 ^ LODWORD(STACK[0x2EC]) ^ v85) ^ v102;
  LODWORD(v104) = HIBYTE(v119);
  LODWORD(v77) = v114 ^ LODWORD(STACK[0x2E4]) ^ *&v111[4 * (HIBYTE(v119) ^ 0xC0)] ^ *&v113[4 * (BYTE2(v120) ^ 0x86)] ^ (*(v116 + 4 * (BYTE1(v103) ^ 0x4Fu)) - 229874806) ^ *&v118[4 * (v114 ^ 0x38)];
  HIDWORD(v121) = LODWORD(STACK[0x204]) ^ *&v111[4 * (BYTE3(v85) ^ 0xEA)] ^ *&v113[4 * (BYTE2(v119) ^ 0x23)] ^ (*(v116 + 4 * (BYTE1(v120) ^ 0x7Au)) - 229874806) ^ BYTE3(v85);
  LODWORD(v121) = LODWORD(STACK[0x204]) ^ *&v111[4 * (BYTE3(v85) ^ 0xEA)] ^ *&v113[4 * (BYTE2(v119) ^ 0x23)] ^ (*(v116 + 4 * (BYTE1(v120) ^ 0x7Au)) - 229874806);
  LODWORD(v102) = v103 ^ v96;
  LODWORD(v121) = __ROR4__((v121 >> 22) ^ 0x63358E8A, 10);
  v122 = *&v118[4 * (v102 ^ 0x96)] ^ v121;
  LODWORD(v75) = (v106 ^ LODWORD(STACK[0x2B8]) ^ v120) ^ v75;
  v123 = LODWORD(STACK[0x244]) ^ *&v111[4 * (BYTE3(v103) ^ 0x36)] ^ *&v113[4 * (BYTE2(v85) ^ 0xDD)] ^ (*(v116 + 4 * (BYTE1(v119) ^ 0x99u)) - 229874806) ^ *&v118[4 * (v75 ^ 0x6F)];
  LODWORD(v96) = HIBYTE(v120);
  LODWORD(v106) = *&v111[4 * (HIBYTE(v120) ^ 0x37)];
  v124 = (v86 ^ LODWORD(STACK[0x2E8]) ^ v119) ^ v109;
  LODWORD(v109) = LODWORD(STACK[0x240]) ^ v106 ^ *&v113[4 * (BYTE2(v103) ^ 0xF3)] ^ (*(v116 + 4 * (BYTE1(v85) ^ 0xE2u)) - 229874806) ^ *&v118[4 * (v124 ^ 0x5A)];
  LODWORD(v106) = (v118[4 * (v102 ^ 0x96)] ^ v121) ^ v102;
  v125 = BYTE3(v77);
  LODWORD(v86) = LODWORD(STACK[0x23C]) ^ *&v111[4 * (BYTE3(v77) ^ 0x88)] ^ *&v113[4 * (BYTE2(v109) ^ 0xD5)] ^ (*(v116 + 4 * (BYTE1(v123) ^ 0x45u)) - 229874806) ^ *&v118[4 * (v106 ^ 0x7B)];
  v126 = v75 ^ BYTE3(v103) ^ (v123 ^ LODWORD(STACK[0x2F0]));
  LODWORD(v75) = LODWORD(STACK[0x200]) ^ *&v113[4 * (BYTE2(v77) ^ 0xCC)] ^ (*(v116 + 4 * (BYTE1(v109) ^ 0x98u)) - 229874806) ^ *&v118[4 * (v126 ^ 0x28)] ^ *&v111[4 * (HIBYTE(v122) ^ 0x19)];
  LODWORD(v85) = v96 ^ v124 ^ (v109 ^ LODWORD(STACK[0x2BC]));
  LODWORD(v85) = v85 ^ LODWORD(STACK[0x2E0]) ^ *&v111[4 * (HIBYTE(v123) ^ 0xCD)] ^ (*(v116 + 4 * (BYTE1(v77) ^ 0x79u)) - 229874806) ^ *&v118[4 * (v85 ^ 0xBC)] ^ *&v113[4 * (BYTE2(v122) ^ 0xF7)];
  v127 = BYTE3(v109);
  LODWORD(v103) = v77 ^ v104 ^ LODWORD(STACK[0x294]) ^ *&v111[4 * (BYTE3(v109) ^ 0xE6)] ^ *&v113[4 * (BYTE2(v123) ^ 0x40)] ^ *&v118[4 * (v77 ^ v104 ^ 0xF6)] ^ (*(v116 + 4 * (BYTE1(v122) ^ 0x47u)) - 229874806);
  LODWORD(v114) = v126 ^ HIBYTE(v122) ^ (v75 ^ LODWORD(STACK[0x2F4]));
  LODWORD(v109) = BYTE3(v86);
  LODWORD(v104) = a69 ^ v114 ^ *&v111[4 * (BYTE3(v86) ^ 0x83)] ^ *&v113[4 * (BYTE2(v103) ^ 0x83)] ^ (*(v116 + 4 * (BYTE1(v85) ^ 6u)) - 229874806) ^ *&v118[4 * (v114 ^ 0x12)];
  LODWORD(v77) = v85 ^ HIBYTE(v123) ^ LODWORD(STACK[0x2DC]) ^ *&v111[4 * (BYTE3(v75) ^ 0xD4)] ^ *&v113[4 * (BYTE2(v86) ^ 0xBF)] ^ *&v118[4 * (v85 ^ HIBYTE(v123) ^ 0x73)] ^ (*(v116 + 4 * (BYTE1(v103) ^ 0x22u)) - 229874806);
  LODWORD(v114) = v103 ^ v127;
  v128 = BYTE3(v85);
  v129 = v114 ^ LODWORD(STACK[0x2D0]) ^ *&v111[4 * (BYTE3(v85) ^ 0xF4)] ^ *&v113[4 * (BYTE2(v75) ^ 0xBE)] ^ (*(v116 + 4 * (BYTE1(v86) ^ 0xADu)) - 229874806) ^ *&v118[4 * (v114 ^ 0xD9)];
  LODWORD(v114) = v106 ^ v125 ^ (v86 ^ LODWORD(STACK[0x2F8]));
  LODWORD(v102) = BYTE3(v103);
  LODWORD(v85) = LODWORD(STACK[0x238]) ^ v114 ^ *&v113[4 * (BYTE2(v85) ^ 0x26)] ^ *&v111[4 * (BYTE3(v103) ^ 6)] ^ (*(v116 + 4 * (BYTE1(v75) ^ 0x9Bu)) - 229874806) ^ *&v118[4 * (v114 ^ 0x89)];
  v130 = BYTE3(v104);
  LODWORD(v86) = a68 ^ v77 ^ BYTE3(v75) ^ *&v111[4 * (BYTE3(v104) ^ 0x44)] ^ *&v113[4 * (BYTE2(v85) ^ 0x8B)] ^ (*(v116 + 4 * (BYTE1(v129) ^ 3u)) - 229874806) ^ *&v118[4 * (v77 ^ BYTE3(v75) ^ 0x58)];
  LODWORD(v103) = v129 ^ v128;
  v131 = LODWORD(STACK[0x234]) ^ *&v111[4 * (BYTE3(v77) ^ 0xE4)] ^ *&v113[4 * (BYTE2(v104) ^ 0x64)] ^ *&v118[4 * (v103 ^ 0x11)] ^ (*(v116 + 4 * (BYTE1(v85) ^ 0x8Eu)) - 229874806);
  LODWORD(v102) = LODWORD(STACK[0x2A0]) ^ HIBYTE(v129) ^ (v102 ^ LODWORD(STACK[0x2C0]) ^ v85) ^ *&v111[4 * (HIBYTE(v129) ^ 0xEC)] ^ *&v113[4 * (BYTE2(v77) ^ 0xDE)] ^ (*(v116 + 4 * (BYTE1(v104) ^ 0x91u)) - 229874806) ^ *&v118[4 * ((v102 ^ LODWORD(STACK[0x2C0]) ^ v85) ^ 0xE4)] ^ 0x5CB63FA1;
  LODWORD(v114) = (v102 & 0xE4FAF612 ^ 0xB6712D97) & (v102 & 0x1B0509ED ^ 0xFCFEFF37);
  LODWORD(v85) = BYTE3(v85);
  LODWORD(v109) = v104 ^ v109 ^ LODWORD(STACK[0x298]) ^ *&v111[4 * (v85 ^ 0xD3)] ^ (*(v116 + 4 * (BYTE1(v77) ^ 0x61u)) - 229874806) ^ *&v118[4 * (v104 ^ v109 ^ 0x26)] ^ *&v113[4 * (((BYTE2(v129) ^ 0x5B) - (BYTE2(v129) ^ 0xAC)) ^ 0xFFFFFFFE) + 4 * (BYTE2(v129) ^ 0x5B)];
  v132 = v103 ^ BYTE3(v77) ^ (v131 ^ LODWORD(STACK[0x300]));
  v133 = BYTE3(v86);
  LODWORD(v103) = v114 | v102 & 0x9040068;
  v134 = LODWORD(STACK[0x230]) ^ *&v111[4 * (BYTE3(v86) ^ 0x4D)] ^ *&v113[4 * (BYTE2(v109) ^ 0x88)] ^ *&v118[4 * (v132 ^ 0xE9)] ^ (*(v116 + 4 * (BYTE1(v114) ^ 0x69u)) - 229874806);
  v135 = a67 ^ HIBYTE(v131) ^ *&v111[4 * (HIBYTE(v131) ^ 0x92)] ^ *&v113[4 * (BYTE2(v86) ^ 0xF0)] ^ (v114 | v102 & 0x68) ^ (*(v116 + 4 * (BYTE1(v109) ^ 0xB8u)) - 229874806) ^ *&v118[4 * ((v114 | v102 & 0x68) ^ 0xC1)];
  v136 = BYTE3(v103);
  v137 = v109 ^ v85 ^ LODWORD(STACK[0x28C]) ^ *&v113[4 * (BYTE2(v131) ^ 0x8C)] ^ *&v118[4 * (v109 ^ v85 ^ 0xE6)] ^ (*(v116 + 4 * (BYTE1(v86) ^ 0x35u)) - 229874806) ^ *&v111[4 * (BYTE3(v103) ^ 0x88)];
  v138 = v86 ^ v130;
  v139 = BYTE3(v109);
  v140 = LODWORD(STACK[0x22C]) ^ *&v111[4 * (BYTE3(v109) ^ 0xA4)] ^ (*(v116 + 4 * (BYTE1(v131) ^ 0x90u)) - 229874806) ^ *&v118[4 * (v138 ^ 0x37)] ^ *&v113[4 * (BYTE2(v103) ^ 0x77)];
  LODWORD(STACK[0x33C]) = *(v71 - 124) < 0x9F01C3E8;
  v141 = v135 ^ 0xC7366456;
  v142 = (v135 ^ 0xC7366456) + 1459942165;
  if ((v135 ^ 0xC7366456) < 0xA8FB0CEB)
  {
    v142 = v135 ^ 0xC7366456;
  }

  if (v141 <= 0xA8FB0CEA)
  {
    v143 = 0;
  }

  else
  {
    v143 = -21;
  }

  if (v142)
  {
    v144 = v135 ^ 0x56;
  }

  else
  {
    v144 = v143;
  }

  v145 = *&v118[4 * (v144 ^ 0x77)];
  v146 = v145 & 0x5DBA9405 ^ v144 & 5;
  v147 = (v146 ^ 0xA67D6BFA) & (v144 & 0xFA ^ 0xAE39EAD3 ^ v145 & 0xA2456BFA);
  v148 = HIBYTE(v134);
  v149 = LODWORD(STACK[0x228]) ^ *&v111[4 * (HIBYTE(v134) ^ 0x2A)] ^ *&v113[4 * (BYTE2(v140) ^ 0xE9)] ^ (*(v116 + 4 * (BYTE1(v137) ^ 4u)) - 229874806) ^ (v147 | v146 & 0x51821404);
  v150 = v137 ^ v136 ^ LODWORD(STACK[0x29C]) ^ *&v113[4 * (BYTE2(v134) ^ 0x7B)] ^ *&v111[4 * (HIBYTE(v141) ^ 0x74)] ^ (*(v116 + 4 * (BYTE1(v140) ^ 0xF0u)) - 229874806) ^ *&v118[4 * (v137 ^ v136 ^ 0xF7)];
  v151 = v139 ^ v138 ^ (v140 ^ LODWORD(STACK[0x2C4]));
  v152 = LODWORD(STACK[0x224]) ^ *&v111[4 * (HIBYTE(v137) ^ 0xCE)] ^ *&v113[4 * (BYTE2(v135) ^ 0xC1)] ^ *&v118[4 * (v151 ^ 0xC0)] ^ (*(v116 + 4 * (BYTE1(v134) ^ 0x1Du)) - 229874806);
  v153 = v132 ^ v133 ^ (v134 ^ LODWORD(STACK[0x308]));
  v154 = HIBYTE(v140);
  v155 = a66 ^ v153 ^ *&v111[4 * (v154 ^ 0xA4)] ^ *&v113[4 * (BYTE2(v137) ^ 0x6D)] ^ (*(v116 + 4 * (BYTE1(v135) ^ 0x97u)) - 229874806) ^ *&v118[4 * (v153 ^ 0xFE)];
  v156 = HIBYTE(v149);
  v157 = a65 ^ v150 ^ HIBYTE(v141) ^ *&v113[4 * (BYTE2(v155) ^ 0xDB)] ^ (*(v116 + 4 * (BYTE1(v152) ^ 0xDBu)) - 229874806) ^ *&v118[4 * (v150 ^ HIBYTE(v141) ^ 0x84)] ^ *&v111[4 * (HIBYTE(v149) ^ 0xEB)];
  v158 = v151 ^ HIBYTE(v137) ^ (v152 ^ LODWORD(STACK[0x2FC]));
  v159 = a64 ^ v158 ^ *&v111[4 * (HIBYTE(v150) ^ 0x46)] ^ (*(v116 + 4 * (BYTE1(v155) ^ 0x80u)) - 229874806) ^ *&v118[4 * (v158 ^ 0x13)] ^ *&v113[4 * (BYTE2(v149) ^ 0x87)];
  v160 = v155 ^ v154;
  v161 = HIBYTE(v152);
  v162 = LODWORD(STACK[0x220]) ^ *&v113[4 * (BYTE2(v150) ^ 0x7F)] ^ *&v111[4 * (HIBYTE(v152) ^ 0xD5)] ^ *&v118[4 * (v160 ^ 0x6B)] ^ (*(v116 + 4 * (BYTE1(v149) ^ 0x7Bu)) - 229874806);
  v163 = *&v113[4 * (BYTE2(v152) ^ 0xD)];
  v164 = __ROR4__(__ROR4__(LODWORD(STACK[0x27C]) ^ HIBYTE(v155) ^ 0x6C01D71 ^ *&v111[4 * (HIBYTE(v155) ^ 0x20)], 2) ^ 0x916F18DD, 30);
  v165 = (v149 ^ LODWORD(STACK[0x30C])) ^ v148;
  v166 = HIBYTE(v157);
  v167 = *&v118[4 * (v165 ^ 0x94)] ^ (*(v116 + 4 * (BYTE1(v150) ^ 0xC8u)) - 229874806) ^ ((-(a63 ^ v164 ^ 0xF73ADBD6) ^ ((v163 ^ 0x5DF67E67) - (v163 ^ 0xAACCA5B1 ^ a63 ^ v164)) ^ 0xF29C6400 ^ ((a63 ^ v164 ^ 0xF73ADBD6) - ((2 * (a63 ^ v164 ^ 0xF73ADBD6)) & 0xE538C800) - 224631808)) + (v163 ^ 0x5DF67E67));
  v168 = v159 ^ HIBYTE(v150);
  v169 = LODWORD(STACK[0x21C]) ^ *&v111[4 * (HIBYTE(v157) ^ 0xE4)] ^ (*(v116 + 4 * (BYTE1(v162) ^ 9u)) - 229874806) ^ *&v118[4 * (v168 ^ 0x8A)] ^ *&v113[4 * (BYTE2(v167) ^ 0x72)];
  v170 = HIBYTE(v162);
  v171 = *&v111[4 * (HIBYTE(v162) ^ 0xDA)];
  v172 = *&v111[4 * (HIBYTE(v167) ^ 0x65)];
  v173 = *&v113[4 * (BYTE2(v162) ^ 0x70)];
  v174 = v160 ^ v161 ^ (v162 ^ LODWORD(STACK[0x2CC]));
  v175 = v167 ^ v165;
  v176 = LODWORD(STACK[0x2C8]) ^ HIBYTE(v159) ^ v174 ^ *&v111[4 * (HIBYTE(v159) ^ 0x45)] ^ *&v113[4 * (BYTE2(v157) ^ 0xF2)] ^ *&v118[4 * (v174 ^ 0x44)] ^ 0xF5A8917A ^ (*(v116 + 4 * (BYTE1(v167) ^ 0xBFu)) - 229874806);
  v177 = LODWORD(STACK[0x290]) ^ v170 ^ *&v113[4 * (BYTE2(v159) ^ 9)] ^ v171 ^ (*(v116 + 4 * (BYTE1(v157) ^ 0x6Cu)) - 229874806) ^ 0x43155A2C ^ *&v118[4 * (v175 ^ 0x8A)];
  v178 = a62 ^ v157 ^ v156 ^ v173 ^ HIBYTE(v167) ^ (*(v116 + 4 * (BYTE1(v159) ^ 0x2Du)) - 229874806) ^ *&v118[4 * (v157 ^ v156 ^ 0x5E)] ^ v172 ^ 0x17A80FB7;
  v179 = *(&off_1010A0B50 + (v79 ^ 0x8FA9)) - 978725743;
  v180 = *&v179[4 * (HIBYTE(v169) ^ 0xC6)];
  v181 = *&v179[4 * HIBYTE(v176)];
  v182 = *&v179[4 * HIBYTE(v177)];
  v183 = *&v179[4 * HIBYTE(v178)];
  v184 = *(&off_1010A0B50 + v79 - 38694) - 191783206;
  v185 = *&v184[4 * BYTE2(v178)];
  v186 = *&v184[4 * (BYTE2(v169) ^ 0xA9)];
  v187 = *&v184[4 * BYTE2(v176)];
  v188 = *&v184[4 * (BYTE2(v177) ^ 0xB1)];
  v189 = *(&off_1010A0B50 + (v79 ^ 0x8F49)) - 592815567;
  v190 = BYTE1(v177);
  v191 = *&v189[4 * (BYTE1(v177) ^ 0xF8)];
  v192 = *&v189[4 * (BYTE1(v178) ^ 0xF8)];
  v193 = BYTE1(v169);
  v194 = *&v189[4 * (BYTE1(v169) ^ 0x9B)];
  v195 = BYTE1(v176);
  LODWORD(v189) = *&v189[4 * (BYTE1(v176) ^ 0xF8)];
  LOBYTE(v175) = v177 ^ v175;
  v196 = v166 ^ v168;
  v197 = *(&off_1010A0B50 + v79 - 39930) - 327523482;
  v198 = *&v197[4 * v176];
  v199 = *&v197[4 * v175];
  v200 = *&v197[4 * v178];
  v201 = *(v71 - 136) ^ LODWORD(STACK[0x280]) ^ v195 ^ (v183 - 1952288539) ^ v188 ^ v189 ^ (v188 >> 4) & 0xF27AE92 ^ (*&v197[4 * (v196 ^ 0xF7 ^ (v169 ^ LODWORD(STACK[0x304])))] + 1610917565);
  v202 = *(&off_1010A0B50 + (v79 ^ 0x9C83)) - 1525550427;
  *(*(v71 - 120) + STACK[0x340]) = v202[BYTE2(v201) ^ 0x29] ^ 0xC1;
  v203 = LODWORD(STACK[0x214]) ^ *(v71 - 140) ^ BYTE1(v178) ^ v186 ^ (v181 - 1952288539) ^ v192 ^ (v186 >> 4) & 0xF27AE92 ^ (v199 + 1610917565);
  *(*(v71 - 120) + *(v71 - 216)) = v202[BYTE2(v203) ^ 0x82] ^ 0x6A;
  v204 = *(v71 - 120);
  v205 = *(&off_1010A0B50 + v79 - 38419) - 535133051;
  *(v204 + *(v71 - 256)) = v205[BYTE1(v201) ^ 9] ^ 0xB6;
  v206 = *(v71 - 132) ^ LODWORD(STACK[0x2B4]) ^ v185 ^ (v180 - 1952288539) ^ v190 ^ (v185 >> 4) & 0xF27AE92 ^ (v198 + 1610917565) ^ v191;
  v207 = *(&off_1010A0B50 + (v79 ^ 0x91AE)) - 2136788398;
  *(v204 + *(v71 - 192)) = ((v206 ^ 0xD1) - 48) ^ 0xE4 ^ v207[v206 ^ 0xF8];
  v208 = LODWORD(STACK[0x218]) ^ *(v71 - 128) ^ v193 ^ v187 ^ (v182 - 1952288539) ^ v194 ^ (v187 >> 4) & 0xF27AE92 ^ (v200 + 1610917565);
  *(v204 + *(v71 - 248)) = v202[BYTE2(v208) ^ 0x76] ^ 0x93;
  v209 = *(&off_1010A0B50 + (v79 & 0xC9F66B10)) - 1918855630;
  *(v204 + *(v71 - 232)) = v209[HIBYTE(v208) ^ 0x81] ^ 0x9C;
  *(v204 + *(v71 - 200)) = v209[HIBYTE(v203) ^ 0x96] ^ 0xA4;
  *(v204 + *(v71 - 176)) = v205[BYTE1(v206) ^ 0x95] ^ 0x67;
  *(v204 + *(v71 - 168)) = v205[BYTE1(v208) ^ 0x82] ^ 0xE0;
  *(v204 + STACK[0x348]) = v209[HIBYTE(v206) ^ 0xF6] ^ 0x26;
  *(v204 + *(v71 - 224)) = (47 - (v203 ^ 0x70)) ^ v207[v203 ^ 0x59] ^ 0xF9;
  *(v204 + *(v71 - 208)) = ((v201 ^ 0x31) - 48) ^ 0xE9 ^ v207[v201 ^ 0x18];
  *(v204 + *(v71 - 184)) = v205[BYTE1(v203) ^ 0xC6] ^ 0x14;
  *(v204 + *(v71 - 240)) = v202[BYTE2(v206) ^ 0x73] ^ 0xAF;
  *(v204 + *(v71 - 152)) = v209[HIBYTE(v201) ^ 0xE3] ^ 0x81;
  LODWORD(v209) = (((v69 ^ 0xF5D75065) + 170438555) ^ ((v69 ^ 0xC7B1E3DD) + 944643107) ^ ((v69 ^ 0xB42FED28) + 1271927512)) - 931174379;
  LODWORD(v189) = (v209 ^ 0xB9ADF6E3) & (2 * (v209 & 0xBDC9F68B)) ^ v209 & 0xBDC9F68B;
  v210 = ((2 * (v209 ^ 0xC93D3EE3)) ^ 0xE9E990D0) & (v209 ^ 0xC93D3EE3) ^ (2 * (v209 ^ 0xC93D3EE3)) & 0x74F4C868;
  v211 = v210 ^ 0x14144828;
  v212 = (v210 ^ 0x60608040) & (4 * v189) ^ v189;
  LODWORD(v189) = ((4 * v211) ^ 0xD3D321A0) & v211 ^ (4 * v211) & 0x74F4C868;
  v213 = (v189 ^ 0x50D00020) & (16 * v212) ^ v212;
  LODWORD(v189) = ((16 * (v189 ^ 0x2424C848)) ^ 0x4F4C8680) & (v189 ^ 0x2424C848) ^ (16 * (v189 ^ 0x2424C848)) & 0x74F4C840;
  v214 = v213 ^ 0x74F4C868 ^ (v189 ^ 0x44448000) & (v213 << 8);
  LODWORD(v209) = v209 ^ (2 * ((v214 << 16) & 0x74F40000 ^ v214 ^ ((v214 << 16) ^ 0x48680000) & (((v189 ^ 0x30B04868) << 8) & 0x74F40000 ^ 0x340000 ^ (((v189 ^ 0x30B04868) << 8) ^ 0x74C80000) & (v189 ^ 0x30B04868))));
  *(v204 + *(v71 - 160)) = v207[v208 ^ 0xCDLL] ^ ((v208 ^ 0xEA) - 48);
  LODWORD(v207) = (((v209 ^ 0xD6A3ECD6) + 2079665123) ^ ((v209 ^ 0xD5F5ABDD) + 2023976170) ^ ((v209 ^ 0xD7B62150) + 2061559397)) + 625681016;
  v215 = LODWORD(STACK[0x33C]) ^ (v207 < 0x9F01C3E8);
  v216 = v207 < *(v71 - 124);
  if (v215)
  {
    v216 = STACK[0x33C];
  }

  return (*(STACK[0x310] + 8 * ((14463 * v216) ^ v79)))();
}

uint64_t sub_100151B28()
{
  v3 = ((v1 ^ 0x721F05C8) + 1220606288) ^ v1 ^ ((v1 ^ 0x1C1AF082) + 650447878) ^ ((v1 ^ 0x6B78D5B9) + 1369909567) ^ (((((v0 + 711403924) & 0xD598F12E) - 6816) ^ 0xFA829A6D) + (v1 ^ 0xC05D238B));
  v4 = ((v3 ^ 0x782413D) - 546240760) ^ ((v3 ^ 0xB5C0FDA0) + 1832106907) ^ ((v3 ^ 0x7762BFE5) - 1349387808);
  v5 = v4 + LOBYTE(STACK[0x2BF]) % (500385067 - v4);
  v7 = v1 == 0x3CE25E0EC520035FLL || v5 == 500385067;
  return (*(v2 + 8 * ((93 * v7) ^ v0)))();
}

uint64_t sub_100151D4C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v49 = LODWORD(STACK[0x294])++;
  *(a39 - 775311879) = v49 + 1;
  v50 = *(a46 - 586084794);
  *(v48 - 116) = (a1 - 1302952714) ^ (906386353 * a26);
  *(v47 + 1464) = v50 - 906386353 * a26;
  *(v48 - 124) = ((a1 - 1302952732) ^ 0x12F8) + 906386353 * a26;
  *(v48 - 120) = 906386353 * a26 + a1 + 800705426;
  *(v47 + 1480) = (906386353 * a26) ^ 0x13FF;
  *(v48 - 160) = (a1 - 1302952732) ^ (906386353 * a26);
  *(v48 - 144) = (906386353 * a26) | 1;
  v51 = (*(v46 + 8 * (a1 + 42834)))(v48 - 160);
  return (*(v46 + 8 * *(v48 - 128)))(v51);
}

uint64_t sub_100151E7C()
{
  v1 = STACK[0xF10] - 35003;
  LODWORD(STACK[0x9C6C]) = v0;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x27D7)))();
}

void sub_100151F0C(uint64_t a1)
{
  v1 = *(a1 + 12) - 1012831759 * ((2 * (a1 & 0xE231C25) - a1 - 237181990) ^ 0xE14FF550);
  v2 = (*(a1 + 24) | 0xD1E95421AAD8E3B6) - (~*(a1 + 24) | 0x2E16ABDE55271C49) + ((2 * ~*(a1 + 24)) & 0x5C2D57BCAA4E3892);
  v4 = (v2 & 0x485124A8528A1254) + (&v3 & 0x485124A8528A1250) + 2 * (v2 & &v3 & 0x252449450950A908) + (v2 & (v1 ^ 0x252449453CC96212) ^ &v3 & 0x252449450950A908) + 2 * (v2 & &v3 & 0x928A9212A42544A0) + (((&v3 & 0x928A9212A42544A0) - (v2 & 0x928A9212A42544A1) + 0x25152425484A8942) & 0x928A9212A42544A1);
  v3 = (v4 ^ 0x744689A) - (~(2 * v4) & 0xE88D134) + 243847476;
  __asm { BRAA            X7, X17 }
}

uint64_t sub_100152338@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v2 + a1 + 16);
  v8 = v3 + a1;
  *(v8 + 24) = *(v2 + a1);
  *(v8 + 40) = v7;
  return (*(v4 + 8 * (((((v1 ^ v5) ^ (a1 == 32)) & 1) * v6) ^ v1)))();
}

uint64_t sub_1001524E4(__n128 a1, uint64_t a2, uint64_t a3)
{
  v7.n128_u64[0] = (v3 + 13) & 0xF;
  v7.n128_u64[1] = (v3 + 12) & 0xF;
  v8.n128_u64[0] = ((v4 ^ 4) + v3) & 0xF;
  v8.n128_u64[1] = (v3 + 10) & 0xF;
  v9.n128_u64[0] = (v3 + 9) & 0xF;
  v9.n128_u64[1] = v3 & 0xF ^ 8;
  v12.val[0].i64[0] = (v3 + 7) & 0xF;
  v12.val[0].i64[1] = (v3 + 6) & 0xF;
  v12.val[1].i64[0] = (v3 + 5) & 0xF;
  v12.val[1].i64[1] = (v3 + 4) & 0xF;
  v12.val[2].i64[0] = (v3 + 3) & 0xF;
  v12.val[2].i64[1] = (v3 + 2) & 0xF;
  v12.val[3].i64[0] = (v3 + 1) & 0xF;
  v12.val[3].i64[1] = v3 & 0xF;
  v10.n128_u64[0] = 0xD0D0D0D0D0D0D0DLL;
  v10.n128_u64[1] = 0xD0D0D0D0D0D0D0DLL;
  return (*(v5 + 8 * (v4 + 17432)))(v3 + *(v6 - 184) - 16, a3, (v3 & 0x10) - 16, ((v4 ^ 0x5C68) + 1847327772) & 0x91E3B3BE, ((v4 ^ 0x5C68) + 1847327772) & 0x91E3B3BE ^ 0x22F5, a1, v7, v8, v9, xmmword_100BC76B0, vqtbl4q_s8(v12, xmmword_100BC76B0), v10);
}

uint64_t sub_100152668@<X0>(uint64_t a1@<X8>, __n128 a2@<Q1>)
{
  a2.n128_u16[0] = 26471;
  a2.n128_u8[2] = 103;
  a2.n128_u8[3] = 103;
  a2.n128_u8[4] = 103;
  a2.n128_u8[5] = 103;
  a2.n128_u8[6] = 103;
  a2.n128_u8[7] = 103;
  return (*(v5 + 8 * v4))(8 - (v2 & 0x18), v2 & 0x18, -v3, v2 - 12557, v2 + a1 - 8, 56183, xmmword_100F523B0, a2);
}

uint64_t sub_1001526B0@<X0>(char a1@<W4>, unint64_t a2@<X5>, unint64_t a3@<X6>, int a4@<W7>, int a5@<W8>)
{
  v14 = v7 - 1;
  STACK[0x638] = v14;
  *(v12 + v14) = (v6 ^ ((v6 ^ v11) + v13) ^ ((v6 ^ 0x9E) + 47) ^ ((v6 ^ 0xF9) + 74) ^ a1 ^ (((((a5 + v8) & v9) + 5) ^ v6) - 3)) * (v6 - 62);
  if (v5 < a3 != STACK[0x638] > a2)
  {
    v15 = STACK[0x638] > a2;
  }

  else
  {
    v15 = STACK[0x638] + a3 > v5;
  }

  return (*(v10 + 8 * ((!v15 * a4) ^ a5)))();
}

uint64_t sub_100152770@<X0>(uint64_t a1@<X4>, int a2@<W8>)
{
  v5 = STACK[0x268];
  *v4 = a1;
  *(v4 + 8) = v5;
  *(v4 + 16) = a2;
  return (*(v3 + 8 * v2))();
}

uint64_t sub_100152834()
{
  v6 = v4 - 1;
  *(v2 + v6) = *(v3 + v6);
  return (*(v0 + 8 * (((v6 != 0) * v5) ^ v1)))();
}

uint64_t sub_10015285C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, unint64_t *a27)
{
  v33 = ((2 * (v29 - v27 - 0x3CE25E0EC5200378)) & 0xFBE4FD1FBF5B7EFALL) + ((v29 - v27 - 0x3CE25E0EC5200378) ^ 0xFDF27E8FDFADBF7DLL) + ((v30 + 665438432) & 0xD8562BBE ^ 0x3EEFDF7EE572604FLL);
  *(v32 + 8) = v33;
  *a27 = v33;
  a27[1] = (v28 ^ 0xBDFADE5EFD6C6778) + 0x7EE77FAFC7B39C00 + ((2 * v28) & 0x7BF5BCBDFAD8CEF0);
  a27[2] = ((LOBYTE(STACK[0x20F]) + 1357986) ^ 0xF3FEF37EFFFF7DBFLL) + 0x7FB59DBBF7BBF7DELL + ((2 * (LOBYTE(STACK[0x20F]) + 1357986)) & 0x28737E);
  *a26 = 0x3CE25E0EC5200378;
  *(a8 + 40) = ((v27 - 0x1BCA70720C86509CLL + *(a8 + 40)) ^ 0x5FEE75FECEAF599DLL) - 0x4424058CC2290901 + ((2 * (v27 - 0x1BCA70720C86509CLL + *(a8 + 40))) & 0xBFDCEBFD9D5EB33ALL);
  return (*(v31 + 8 * v30))(0x3EEFDF7EE572604FLL, a2, a3, a4, a27 + 3, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_100152A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, int a22, unsigned __int8 a23, int a24, int a25, int a26, int a27, unsigned __int8 a28)
{
  v32 = v29 ^ 0x37E6926Cu;
  *(v31 - 204) = a22 ^ 0x7C966D92;
  *(v31 - 208) = a26 ^ 0xA0AD6A00;
  *(v31 - 216) = a25 ^ 0x1230CC03;
  v33 = ((a23 << 8) ^ 0xBD4DB9E7) & (a20 ^ 0xFFCDFF06) ^ (a20 & 0x18 | 0x4280A100);
  *(v31 - 212) = v33 & 0x780C266E ^ 0xAB2195C3 ^ (((v28 ^ (a28 << 16) ^ 0xD8438081) & ((a24 << 24) | 0xFF8A9B) | (a24 << 24) & 0x27000000) ^ 0xF865530A) & (v33 ^ 0x322660);
  return (*(v30 + 8 * (v28 - 2359)))(a1, a2, a3, a4, a5, a6, a7, v32);
}

uint64_t sub_100152D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a1 + 40);
  v12 = *(a7 + 8 * (v7 ^ 0xBCAD));
  v13 = *(v12 - 527405895);
  v14 = *(a7 + 8 * (v7 - 44704)) + 4 * v13;
  v15 = *(v14 - 1940437438);
  v16 = ((v8 + v10) ^ v10) + ((v8 + v10) ^ v10) * v15;
  if (v8 == ((v7 + 595013709) ^ 0x97C093E) - 705423041)
  {
    v17 = *(v14 - 1940437438);
  }

  else
  {
    v17 = 0;
  }

  *(v14 - 1940437438) = (v16 + v17) * v15;
  *(v12 - 527405895) = (v13 + 1) % 6u;
  return (*(v9 + 8 * (((v11 == 0) * (((v7 + 595013709) & 0xDC885937) + 13938)) ^ v7)))();
}

uint64_t sub_100152E20()
{
  v7 = v5 + v3;
  v8 = ((v4 ^ 0xC3DD) - 37717) & (v3 + 15);
  v9 = v8 + 1 - v3;
  v10 = v0 + v9;
  v11 = v0 + v8 + 1;
  v12 = v2 + v9;
  v13 = v2 + v8 + 1;
  v14 = v8 + v1 + 4;
  v16 = v11 > v5 && v10 < v7;
  v18 = v13 > v5 && v12 < v7 || v16;
  if (v14 <= v5 || v14 - v3 >= v7)
  {
    v20 = v18;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 8 * ((109 * (v20 ^ 1)) ^ v4)))();
}

uint64_t sub_100152F34()
{
  v4 = (((*(v2 + 16) ^ 0x5B425FB7) - 1531076535) ^ ((*(v2 + 16) ^ 0xDCD5486F) + 590002065) ^ ((v1 ^ 0x53A4) - 1849872587 + (*(v2 + 16) ^ 0x6E4270CF ^ (20483 * (v1 ^ 0x53A4))))) + 1857739116;
  v5 = v4 < 0x84E5125B;
  v6 = v4 > v0;
  if (v0 < 0x84E5125B != v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((61 * !v7) ^ v1 ^ 0xD976)))();
}

uint64_t sub_1001530EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, int8x16_t a7@<Q4>, uint64_t a8@<D5>, int8x16_t a9@<Q6>, uint64_t a10@<X2>, uint64_t a11@<X3>, uint64_t a12@<X4>, unsigned int a13@<W5>, uint64_t a14@<X6>)
{
  v19 = (a1 ^ a14 ^ ((v12 + 3320) | a13)) + v16;
  v20 = (((a1 ^ a14) ^ ((v12 - 8) | a13)) + v16) & 0xF;
  v22.i64[0] = vqtbl4q_s8(*(&a4 - 2), a7).u64[0];
  v22.i64[1] = a8;
  v23 = vrev64q_s8(vmulq_s8(v22, a9));
  *(a11 + v19) = veorq_s8(veorq_s8(veorq_s8(*(v13 + (v19 & 0xF) - 15), *(a2 + v19)), veorq_s8(*(v15 + (v19 & 0xF) - 15), *((v19 & 0xF) + v14 - 14))), vextq_s8(v23, v23, 8uLL));
  v24 = a12 == a1;
  v25 = a1 + 16;
  v26 = v24;
  return (*(v18 + 8 * ((v26 * v17) ^ v12)))(v25);
}

uint64_t sub_100153170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v8 = *v5;
  v9 = (a2 + ((a3 + a1) & v4));
  *v9 = *(v5 - 1);
  v9[1] = v8;
  return (*(v7 + 8 * ((30 * (v6 != 0)) ^ v3)))();
}

uint64_t sub_10015325C@<X0>(uint64_t a1@<X8>)
{
  v9 = v6 - 1;
  *(a1 + v9) ^= *(v3 + (v9 & 0xF)) ^ *((v9 & 0xF) + v1 + 3) ^ ((v9 & 0xF) * v5) ^ *(v2 + (v9 & 0xF)) ^ v7;
  return (*(v8 + 8 * ((56 * (v9 == 0)) ^ v4)))();
}

uint64_t sub_100153360(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40)
{
  v42 = a3 - 2092882783 < (a40 + 1540068977);
  if ((a40 + 1540068977) < 0xB51032BB != (a3 - 2092882783) < 0xB51032BB)
  {
    v42 = (a40 + 1540068977) < 0xB51032BB;
  }

  return (*(v41 + 8 * (((((v40 ^ 0xD4B0) - 3308) ^ 0x5111) * v42) ^ v40)))();
}

uint64_t sub_10015356C(int a1)
{
  v2 = a1 + 19459;
  v3 = STACK[0x2AC];
  v4 = (v3 ^ 0x87FF620F) & (2 * ((LODWORD(STACK[0x3AC]) - 671221825) & v3)) ^ (LODWORD(STACK[0x3AC]) - 671221825) & v3;
  v5 = ((2 * (v3 ^ v2 ^ 0xA68B8BF2)) ^ 0xE2EAAAF2) & (v3 ^ v2 ^ 0xA68B8BF2) ^ (2 * (v3 ^ v2 ^ 0xA68B8BF2)) & 0x71755578;
  v6 = v5 ^ 0x11155509;
  v7 = (v5 ^ 0x60640070) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0xC5D555E4) & v6 ^ (4 * v6) & 0x71755578;
  v9 = (v8 ^ 0x41555570) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x30200019)) ^ 0x17555790) & (v8 ^ 0x30200019) ^ (16 * (v8 ^ 0x30200019)) & 0x71755550;
  v11 = v9 ^ 0x71755579 ^ (v10 ^ 0x11555500) & (v9 << 8);
  v12 = LODWORD(STACK[0x2AC]) ^ (2 * ((v11 << 16) & 0x71750000 ^ v11 ^ ((v11 << 16) ^ 0x55790000) & (((v10 ^ 0x60200069) << 8) & 0x71750000 ^ (((v10 ^ 0x60200069) << 8) ^ 0x75550000) & (v10 ^ 0x60200069) ^ 0x200000)));
  v13 = (a1 + 1265606221) & 0xB4907B7F;
  LODWORD(STACK[0x3AC]) = v13;
  v14 = v13 + 4019;
  v16 = v12 == -1745430052 || (v12 & 0xF) != 12;
  v17 = *(v1 + 8 * (((v14 ^ 0x8B6E) * v16) ^ v2));
  LODWORD(STACK[0x3A8]) = -42899;
  return v17();
}

uint64_t sub_1001538DC@<X0>(uint64_t a1@<X8>)
{
  v7 = (v1 + a1);
  *v7 = v6;
  v7[1] = v6;
  LODWORD(v7) = ((3 * v3) ^ v4) + a1 == 256;
  return (*(v5 + 8 * ((2 * v7) | (4 * v7) | v2)))();
}

uint64_t sub_1001539B0(uint64_t a1, unint64_t a2, char a3, char a4, char a5, char a6, char a7, char a8)
{
  v21 = ((v12 + v20) ^ a2) + v11;
  STACK[0x628] = v21;
  v22 = (v13 ^ a5) & (2 * (v13 & a4)) ^ v13 & a4;
  v23 = ((2 * (v13 ^ a3)) ^ v8) & (v13 ^ a3) ^ (2 * (v13 ^ a3)) & a6;
  *(a1 + v21) = (v13 ^ (2 * (((4 * v23) & v15 ^ v16 ^ ((4 * v23) ^ a8) & v23) & (16 * ((v23 ^ a7) & (4 * v22) ^ v22)) ^ (v23 ^ a7) & (4 * v22) ^ v22)) ^ v17) * (v13 + 6);
  if (v9 < v14 != STACK[0x628] > v10)
  {
    v24 = STACK[0x628] > v10;
  }

  else
  {
    v24 = STACK[0x628] + v14 > v9;
  }

  return (*(v18 + 8 * ((v24 * v19) ^ v12)))();
}

uint64_t sub_100153B20()
{
  LODWORD(STACK[0x220]) = STACK[0x2AC];
  v3 = ((LODWORD(STACK[0x354]) ^ 0xDE21DE7C) + 568205700) ^ ((LODWORD(STACK[0x354]) ^ 0x6D12E432) - 1829954610) ^ ((v2 ^ 0x5DC) + (LODWORD(STACK[0x354]) ^ 0x5AE6FD5F) - 1525108256);
  (*(v1 + 8 * (v2 ^ 0x9FDC)))(*(&off_1010A0B50 + (v2 ^ 0x551C)) - 1834731351, v0, 16);
  v4 = (*(v1 + 8 * (v2 ^ 0x9F85)))(v3 + (((v2 - 21277) | 0x4582) ^ 0xE9D58083)) != 0;
  return (*(v1 + 8 * ((37 * v4) ^ v2)))();
}

uint64_t sub_100153C24(int8x16_t *a1, uint64_t a2, uint64_t a3, char a4, int a5, double a6, __n128 a7, __n128 a8, __n128 a9, int8x16_t a10, double a11, int8x16_t a12)
{
  v19 = v16 & 0xF;
  v20 = v15;
  v21.i64[0] = vqtbl4q_s8(*(&a7 - 1), a10).u64[0];
  *&v21.i64[1] = a11;
  v22 = vrev64q_s8(vmulq_s8(v21, a12));
  *a1 = veorq_s8(veorq_s8(veorq_s8(*(v14 + v19 - 15), *a1), veorq_s8(*(v13 + v19 - 15), *(v12 + v19 - 15))), vextq_s8(v22, v22, 8uLL));
  return (*(v18 + 8 * (((((a3 == 0) ^ (a4 + 1)) & 1) * a5) ^ v17)))(a1 - 1, a2, a3 - 16);
}

uint64_t sub_100153CE4@<X0>(int a1@<W8>)
{
  v6 = (v2 ^ 0x7D6FF7FF) + 2 * v2;
  v7 = (v2 ^ 0xFBF5CFFF) + 2 * v2;
  v8 = ((*(v1 + v7 + 67776513) ^ a1) << 24) | ((*(v1 + v7 + 67776514) ^ a1) << 16) | ((*(v1 + v7 + 67776515) ^ a1) << 8);
  v9 = *(v1 + v7 + 67776516) ^ a1;
  v10 = (v8 | v9) - 2 * ((v8 | v9) & 0x69D5C71B ^ v9 & 0xA) - 371865839;
  *(v4 + 4 * ((((((v6 - 1611497808) ^ 0xA899B15F) + 1241790480) ^ (v6 - 1611497808) ^ (((v6 - 1611497808) ^ 0x645C4C5E) - 2034121457) ^ (((v6 - 1611497808) ^ 0x2E386C10) - 861543102) ^ (((v6 - 1611497808) ^ 0xFF9FE7BC) + 486698736)) >> 2) ^ 0x7589DAB)) = (((v10 ^ 0x82404BD3) + 2109715501) ^ ((v10 ^ 0xDFEA7572) + 538282638) ^ ((v10 ^ 0xB47FF9B0) + 1266681424)) + 553849670;
  return (*(v5 + 8 * ((45256 * ((v6 - 2104489979) < 0x40)) ^ v3)))(16);
}

uint64_t sub_100153EC4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, __int16 a18, char a19, int a20, char a21, __int16 a22, char a23)
{
  v27 = 1012831759 * ((2 * ((v26 - 160) & 0x66451840) - (v26 - 160) + 431679418) ^ 0x929F130);
  *(v26 - 112) = v23 - v27 + 19252;
  *(v26 - 108) = ((((v25 ^ 0x829925F1) + 2103892495) ^ ((v25 ^ 0x453628AC) - 1161177260) ^ (((7 * (((v23 - 11627) | 0x81) ^ 0x474F) + 779770794) ^ v25) - 779799116)) - 129675808) ^ v27;
  STACK[0x258] = a3;
  STACK[0x268] = &a17;
  STACK[0x260] = &a21;
  STACK[0x248] = &a19;
  STACK[0x240] = &a23;
  (*(v24 + 8 * (v23 + 22073)))(v26 - 160);
  return (*(v24 + 8 * ((46451 * (*(v26 - 144) == -371865839)) ^ v23)))(a1, 3567785513, a3, 2147483657);
}

uint64_t sub_100154038(void *a1)
{
  if (a1[6])
  {
    v3 = a1[7] == 0;
  }

  else
  {
    v3 = 1;
  }

  v7 = v3 || a1[3] == 0 || a1[4] == 0 || a1[2] == 0;
  return (*(v2 + 8 * ((v7 * (((v1 ^ 0x2DD1) + 43222) ^ 0xA8E4)) ^ v1)))();
}

uint64_t sub_1001542B4()
{
  v3 = (*(v2 + 8 * (v0 + 3721)))();
  v4 = STACK[0x408];
  *(v1 + 24) = 0;
  return (*(v4 + 8 * v0))(v3);
}

uint64_t sub_1001544B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (v4 + 990077444) & 0x44FCFEFD;
  v8 = *(a4 + 8 * v4);
  *(v6 - 256) = v5;
  return v8(a1, a2, v7);
}

uint64_t sub_10015452C@<X0>(unsigned int a1@<W8>)
{
  LODWORD(STACK[0x464]) = a1;
  v5 = a1 < *(STACK[0x758] + 4) && v2 == ((v1 - 2032) ^ 0xE9D58EC6);
  return (*(v3 + 8 * ((v5 * (((v1 - 1031696535) | 0x3802008B) ^ 0xFA83D8D8)) ^ v1)))();
}

uint64_t sub_100154688@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X4>, uint64_t a4@<X5>, unsigned int a5@<W6>, int a6@<W8>)
{
  v23 = v6 - 1;
  v24 = (v7 + v9 + v23);
  v25 = ((v24 ^ *(*(v14 + a4) + (*(v16 + a3) & a5))) & 0x7FFFFFFF) * v20;
  v26 = (v25 ^ HIWORD(v25)) * v11;
  *v24 = *(v10 + v23) ^ *(*(v13 + 8 * v12) + (v26 >> 24) + v15) ^ *(*(v13 + 8 * a1) + (v26 >> 24) + v18) ^ *(*(v13 + 8 * a2) + (v26 >> 24) + v19) ^ v26 ^ (BYTE3(v26) * v21) ^ v22;
  return (*(v17 + 8 * (((v23 == 0) * a6) ^ v8)))();
}

uint64_t sub_100154970()
{
  v3 = 906386353 * ((v2 - 240) ^ 0x3101CD24);
  *(v2 - 224) = 0;
  *(v2 - 216) = &STACK[0x474];
  *(v2 - 240) = &STACK[0x610];
  *(v2 - 232) = v3 + v1 - 3084;
  *(v2 - 228) = v3 ^ 0xF1D0BA31;
  v4 = (*(v0 + 8 * (v1 ^ 0xECA3)))(v2 - 240);
  return (*(v0 + 8 * (((*(v2 - 208) == -371865839) * ((v1 ^ 0x2F35) - 2076)) ^ v1)))(v4);
}

uint64_t sub_100154AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = *(a15 + 8);
  **(a15 + 16) = a1;
  *v17 = STACK[0x354];
  return (*(v16 + 8 * ((103961 * ((v15 - 23163928) < 0x490BF3A)) ^ (v15 + 15669))))();
}

uint64_t sub_100154CA4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x294]) = a1;
  v67 = *(v66 + 464);
  v68 = (*(v65 + 8 * (v64 + 11330)))(v67 + 16, 0);
  a64[2] = *(v67 + 16);
  a64[1] = *(v67 + 24);
  a64[3] = (*(v65 + 8 * (v64 ^ 0x5479)))(v68);
  v69 = (*(v65 + 8 * (v64 + 11273)))();
  *a64 = v69;
  return (*(v65 + 8 * v64))(v69, v70, v71, v72, v73, v74, v75, v76, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43);
}

uint64_t sub_100154D98(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v20 = v9 - 1;
  v21 = *(*a1 + (*v17 & a2));
  v22 = ((((v21 ^ (v18 + v20)) & 0x7FFFFFFF) * a8) ^ ((((v21 ^ (v18 + v20)) & 0x7FFFFFFFu) * a8) >> 16)) * ((v8 + v10) ^ a7);
  v23 = ((((v21 ^ (v16 + v20)) & 0x7FFFFFFF) * a8) ^ ((((v21 ^ (v16 + v20)) & 0x7FFFFFFFu) * a8) >> 16)) * a8;
  *(v16 + v20) = *(v12 + (v22 >> 24)) ^ *(v18 + v20) ^ *(v13 + (v22 >> 24)) ^ *((v22 >> 24) + v19 + 5) ^ *(v12 + (v23 >> 24)) ^ *(v13 + (v23 >> 24)) ^ *((v23 >> 24) + v19 + 5) ^ v22 ^ v23 ^ (BYTE3(v22) * v11) ^ (BYTE3(v23) * v11);
  return (*(v14 + 8 * (((v20 == 0) * v15) ^ v8)))();
}

uint64_t sub_100154F4C(char a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  *(v8 - 200) = a1 & 0x10;
  v9.n128_u64[0] = (v7 + 13) & 0xF;
  v9.n128_u64[1] = (v7 + 12) & 0xF;
  v10.n128_u64[0] = (v7 + 11) & 0xF;
  v10.n128_u64[1] = (v7 + 10) & 0xF;
  v11.n128_u64[0] = (v7 + 9) & 0xF;
  v11.n128_u64[1] = a1 & 0xF ^ 0xBLL;
  v14.val[0].i64[0] = (v7 + 7) & 0xF;
  v14.val[0].i64[1] = (v7 + 6) & 0xF;
  v14.val[1].i64[0] = (v7 + 5) & 0xF;
  v14.val[1].i64[1] = (v7 + 4) & 0xF;
  v14.val[2].i64[0] = (v7 + 3) & 0xF;
  v14.val[2].i64[1] = (v7 + 2) & 0xFLL;
  v14.val[3].i64[0] = (v7 + 1) & 0xF;
  v14.val[3].i64[1] = v7 & 0xF;
  v12.n128_u64[0] = 0x5D5D5D5D5D5D5D5DLL;
  v12.n128_u64[1] = 0x5D5D5D5D5D5D5D5DLL;
  return (*(*(v8 - 192) + 8 * ((35095 * (a7 < 0x94490776)) ^ (a7 - 1857140807))))(a2, v9, v10, v11, xmmword_100BC76B0, vqtbl4q_s8(v14, xmmword_100BC76B0), v12);
}

uint64_t sub_1001550DC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x200] = v72;
  *a71 = v72;
  return (*(v71 + 8 * a1))();
}

uint64_t sub_100155268(int a1, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, int a43, uint64_t a44)
{
  *(a44 + 4 * (v44 + v46)) = a2;
  v50 = v44 + a1;
  v51 = a43 + ((36 * (v49 ^ v45)) ^ v47);
  if (v51 < 0)
  {
    v51 = -v51;
  }

  v52 = v51 + a3;
  v53 = v51 > a5;
  v54 = (v50 < a4) ^ v53;
  v55 = v50 < v52;
  if (v54)
  {
    v55 = v53;
  }

  return (*(v48 + 8 * ((!v55 | (4 * !v55)) ^ v49)))();
}

uint64_t sub_1001552D8@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22)
{
  v25 = *(&off_1010A0B50 + (a22 - 6666)) - 795626150;
  v26 = *(&off_1010A0B50 + (a22 ^ 0x31A6)) - 1427178394;
  v27 = *(v24 - 107);
  v28 = ((v27 ^ 0xFE) + 48) ^ ((v27 ^ 0x2F) - 1) ^ ((v27 ^ 0x70) - 94);
  v29 = v28 + 64;
  v30 = (v28 & 0xD0) - 51;
  v31 = v30 ^ v28 & 0x3A;
  v32 = v29 ^ v27 ^ (2 * ((v29 ^ 0x50) & (2 * ((v29 ^ 0x50) & (2 * ((v29 ^ 0x50) & (2 * ((v29 ^ 0x50) & (2 * ((v29 ^ 0x50) & (2 * ((v28 + 64) & (2 * v30) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31));
  v33 = v26[v27 ^ 5] - (((v32 ^ 0x69) - 117) ^ ((v32 ^ 0x3C) - 32) ^ ((v32 ^ 0x1E) - 2)) + 1;
  LOBYTE(v27) = v33 & 0x1A ^ 0x46;
  v34 = v25[*(v24 - 106) ^ 0xE8] ^ 0x2C;
  v35 = (((v33 ^ (2 * ((v33 ^ 0x1C) & (2 * ((v33 ^ 0x1C) & (2 * ((v33 ^ 0x1C) & (2 * ((v33 ^ 0x1C) & (2 * ((v33 ^ 0x1C) & (2 * v27) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27))) << 16) ^ 0xE7B6E4E4) & (((v34 ^ (4 * v34)) << 8) ^ 0xFFFF38E4) | ((v34 ^ (4 * v34)) << 8) & 0x1B00;
  LOBYTE(v27) = *(*(&off_1010A0B50 + (a22 ^ 0x2F3E)) + (*(v24 - 105) ^ 0xCFLL) - 550919490) - 107;
  v36 = (v35 & 0x63C44700 ^ 0xF12E981E ^ (v35 ^ 0x183A101B) & ((*(*(&off_1010A0B50 + (a22 - 6067)) + (*(v24 - 108) ^ 0xA1) - 1270188439) << 24) ^ 0x893BB8FF)) & (~v27 | 0xFFFFFF00) | v27 & 0x1E;
  v37 = *(v24 - 103);
  v38 = (((v37 ^ 0x4E) - 43) ^ ((v37 ^ 0x24) - 65) ^ ((v37 ^ 0x39) - 92)) + 8;
  v39 = v38 & 0xFFFFFFBD ^ 0xB;
  v40 = v38 ^ 0x2Eu;
  v41 = v40 & (2 * (v40 & (2 * (v40 & (2 * (v40 & (2 * (v40 & (2 * (((2 * v38) & 0x5E ^ 0x12) & (v38 ^ 0xE) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39;
  v42 = v37 ^ 0xF7;
  v43 = v38 ^ v37 ^ (2 * v41);
  v44 = v43 & 0xFFFFFFD2 ^ 0x6D;
  v45 = (v43 & 0x2D ^ 0xFFFFFF8E) & v44;
  v46 = (v26[v42] - ((((v45 | v43 & 0x50) ^ 0xFFFFFFDC) + 110) ^ (((v45 | v43 & 0x50) ^ 0xFFFFFFE6) + 88) ^ (((v45 | v43 & 0x50) ^ 0xFFFFFFD8) + 106)) - 79) ^ 0x18;
  *(v24 - 116) = (((v22 ^ 0x9A62CA5F) - 1475703832) ^ ((v22 ^ 0xBBFAF6F2) - 1986873525) ^ ((v22 ^ 0x55ED44) + 842902781)) + 1303552045;
  HIDWORD(v50) = a22 ^ 0x2AC2;
  LODWORD(v50) = a22 - 5718;
  HIDWORD(v49) = a22 ^ 0x258D;
  LODWORD(v49) = a22 ^ 0x2929;
  HIDWORD(v48) = a22 - 4306;
  LODWORD(v48) = a22 ^ 0x2B9A;
  HIDWORD(a9) = a22 ^ 0x20D7;
  return (*(v23 + 8 * a22))(3990832448, v46, v45, v44, v36 ^ 0x8E91645C, v40, a22, v25, a2, a3, a4, a5, a6, a7, a1, a9, v48, v49, v50);
}

uint64_t sub_100155D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 24);
  *(a2 + 40) = ((v3 + 10532) ^ 0xFFFF96AA ^ ((v3 - 4073) | 0x1041)) & v4;
  return (*(v2 + 8 * ((120 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_100155E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  *v56 = v52;
  v57 = (*(v55 + 8 * (v54 + 30375)))();
  *v53 = v57;
  return (*(v55 + 8 * v54))(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_100155ED4@<X0>(void *a1@<X2>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = 155453101 * ((v67 - 168) ^ 0xE6261BCF);
  v69 = (((v65 - 524694364) & 0x1F46BF3B) + 40409587 * LODWORD(STACK[0x354]) - 1378608607) ^ v68;
  a1[58] = a38;
  *(v67 - 168) = v69;
  *(v67 - 144) = v68 ^ 0xE4FC015C;
  *(v67 - 128) = 16376 - 1709 * ((v67 - 168) ^ 0x1BCF);
  a1[61] = a2;
  *(v67 - 124) = v68 + a37 + 466203354;
  *(v67 - 120) = v65 - v68 + 1777282134;
  *(v67 - 140) = v68 ^ 0x7CD6B3C8;
  a1[55] = &STACK[0x2B8];
  a1[56] = a31;
  v70 = (*(v66 + 8 * (v65 + 42913)))(v67 - 168);
  return (*(v66 + 8 * (((*(v67 - 116) == -371865839) * ((v65 - 6225) ^ 0x7DD7)) ^ v65)))(v70, a65, &STACK[0x298]);
}

uint64_t sub_1001560C0()
{
  *(v3 - 586084794) = v0;
  STACK[0x680] -= 32;
  return (*(v2 + 8 * (v1 ^ 0x13C5)))();
}

uint64_t sub_100156160@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19, int a20)
{
  v28 = v20;
  v24 = (v20 - 1377694375) & 0x521D5EF9;
  v25 = 1022166737 * (((&a17 | 0xCAAAA259) + (~&a17 | 0x35555DA6)) ^ 0x70BA43CA);
  a18 = a1 - v25;
  a19 = v25 + v20 - 8461;
  a17 = v22;
  v26 = (*(v23 + 8 * (v20 + 11417)))(&a17);
  return (*(v23 + 8 * (((a20 == v21) * (v28 - 43040 + v24)) ^ v28)))(v26);
}

uint64_t sub_100156218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W5>, uint64_t a4@<X8>, int8x16_t a5@<Q0>, int8x16_t a6@<Q1>, int8x16_t a7@<Q2>, int8x16_t a8@<Q3>)
{
  v24 = veorq_s8(a6, v19);
  v25 = veorq_s8(a5, v19);
  v26 = veorq_s8(a7, v19);
  v27 = veorq_s8(a8, v19);
  v28 = vandq_s8(a6, v20);
  v29 = vandq_s8(a5, v20);
  v30 = vandq_s8(a7, v20);
  v31 = vandq_s8(a8, v20);
  v32 = veorq_s8(vandq_s8(vaddq_s64(v31, v31), veorq_s8(a8, v21)), v31);
  v33 = veorq_s8(vandq_s8(vaddq_s64(v30, v30), veorq_s8(a7, v21)), v30);
  v34 = veorq_s8(vandq_s8(vaddq_s64(v29, v29), veorq_s8(a5, v21)), v29);
  v35 = vaddq_s64(v27, v27);
  v36 = vaddq_s64(v26, v26);
  v37 = vaddq_s64(v25, v25);
  v38 = vaddq_s64(v24, v24);
  v39 = veorq_s8(vandq_s8(vaddq_s64(v28, v28), veorq_s8(a6, v21)), v28);
  v40 = veorq_s8(vandq_s8(veorq_s8(v38, v22), v24), vandq_s8(v38, v23));
  v41 = veorq_s8(vandq_s8(veorq_s8(v37, v22), v25), vandq_s8(v37, v23));
  v42 = veorq_s8(vandq_s8(veorq_s8(v36, v22), v26), vandq_s8(v36, v23));
  v43 = veorq_s8(vandq_s8(veorq_s8(v35, v22), v27), vandq_s8(v35, v23));
  v44 = veorq_s8(v43, v11);
  v45 = veorq_s8(v42, v11);
  v46 = veorq_s8(v41, v11);
  v47 = veorq_s8(v40, v11);
  v48 = veorq_s8(vandq_s8(veorq_s8(v40, v12), vshlq_n_s64(v39, 2uLL)), v39);
  v49 = veorq_s8(vandq_s8(veorq_s8(v41, v12), vshlq_n_s64(v34, 2uLL)), v34);
  v50 = veorq_s8(vandq_s8(veorq_s8(v42, v12), vshlq_n_s64(v33, 2uLL)), v33);
  v51 = veorq_s8(vandq_s8(veorq_s8(v43, v12), vshlq_n_s64(v32, 2uLL)), v32);
  v52 = vshlq_n_s64(v47, 2uLL);
  v53 = vshlq_n_s64(v46, 2uLL);
  v54 = vshlq_n_s64(v45, 2uLL);
  v55 = vshlq_n_s64(v44, 2uLL);
  v56 = veorq_s8(vandq_s8(veorq_s8(vandq_s8(veorq_s8(v55, v13), v44), vandq_s8(v55, v14)), vshlq_n_s64(v51, 4uLL)), v51);
  v57 = veorq_s8(vandq_s8(veorq_s8(vandq_s8(veorq_s8(v54, v13), v45), vandq_s8(v54, v14)), vshlq_n_s64(v50, 4uLL)), v50);
  v58 = veorq_s8(vandq_s8(veorq_s8(vandq_s8(veorq_s8(v53, v13), v46), vandq_s8(v53, v14)), vshlq_n_s64(v49, 4uLL)), v49);
  v59 = veorq_s8(vandq_s8(veorq_s8(vandq_s8(veorq_s8(v52, v13), v47), vandq_s8(v52, v14)), vshlq_n_s64(v48, 4uLL)), v48);
  v60 = vaddq_s64(v58, v58);
  v61 = veorq_s8(vaddq_s64(v57, v57), a7);
  v62 = veorq_s8(v60, a5);
  v57.i64[0] = a6.i64[0] * a2;
  v57.i64[1] = a6.i64[1] * a2;
  v63 = veorq_s8(vaddq_s64(v59, v59), a6);
  v59.i64[0] = a5.i64[0] * a2;
  v59.i64[1] = a5.i64[1] * a2;
  v64 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v63, v15), v16), vaddq_s64(veorq_s8(v63, v17), v18)), vaddq_s64(veorq_s8(v63, *&STACK[0x360]), *&STACK[0x350])), *&STACK[0x340]);
  v65 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v62, v15), v16), vaddq_s64(veorq_s8(v62, v17), v18)), vaddq_s64(veorq_s8(v62, *&STACK[0x360]), *&STACK[0x350])), *&STACK[0x340]);
  v66 = vaddq_s64(a5, *&STACK[0x330]);
  v67 = v65.i64[1] * v66.i64[1];
  v65.i64[0] *= v66.i64[0];
  v68 = vaddq_s64(a6, *&STACK[0x330]);
  v65.i64[1] = v67;
  v64.i64[0] *= v68.i64[0];
  v64.i64[1] *= v68.i64[1];
  v79.val[1] = vaddq_s64(vaddq_s64(v57, *&STACK[0x320]), v64);
  v79.val[0] = vaddq_s64(vaddq_s64(v59, *&STACK[0x320]), v65);
  v57.i64[0] = a7.i64[0] * a2;
  v57.i64[1] = a7.i64[1] * a2;
  v69 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v61, v15), v16), vaddq_s64(veorq_s8(v61, v17), v18)), vaddq_s64(veorq_s8(v61, *&STACK[0x360]), *&STACK[0x350])), *&STACK[0x340]);
  v70 = v69.i64[1];
  v71 = veorq_s8(vaddq_s64(v56, v56), a8);
  v72 = v69.i64[0];
  v73 = vaddq_s64(a7, *&STACK[0x330]);
  v73.i64[0] *= v72;
  v73.i64[1] *= v70;
  v79.val[2] = vaddq_s64(vaddq_s64(v57, *&STACK[0x320]), v73);
  v73.i64[0] = a8.i64[0] * a2;
  v74 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v71, v15), v16), vaddq_s64(veorq_s8(v71, v17), v18)), vaddq_s64(veorq_s8(v71, *&STACK[0x360]), *&STACK[0x350])), *&STACK[0x340]);
  v75 = v74.i64[1];
  v76 = v74.i64[0];
  v77 = vaddq_s64(a8, *&STACK[0x330]);
  v73.i64[1] = a8.i64[1] * a2;
  v77.i64[0] *= v76;
  v77.i64[1] *= v75;
  v79.val[3] = vaddq_s64(vaddq_s64(v73, *&STACK[0x320]), v77);
  *(a4 + a1) = vrev64_s8(*&vqtbl4q_s8(v79, *&STACK[0x2F0]));
  return (*(v10 + 8 * (((v8 != 8) * a3) ^ v9)))(vaddq_s64(a5, *&STACK[0x310]), vaddq_s64(a6, *&STACK[0x310]), vaddq_s64(a7, *&STACK[0x310]), vaddq_s64(a8, *&STACK[0x310]));
}

uint64_t sub_1001565A8()
{
  v3 = *(&off_1010A0B50 + v0 - 13060) - 780775119;
  v4 = *(&off_1010A0B50 + (v0 ^ 0x4B25)) - 1908200306;
  v5 = v4[*(v2 - 105) ^ 0x7DLL];
  v6 = *(&off_1010A0B50 + (v0 ^ 0x4383)) - 1369495878;
  v7 = (-*(v2 - 107) ^ (49 - (*(v2 - 107) ^ 0x31)) ^ 0x1B2F664B ^ (*(v2 - 107) - ((2 * *(v2 - 107)) & 0x96u) + 456091211)) + 49;
  v8 = *(v2 - 109);
  v9 = v3[*(v2 - 111) ^ 7] ^ *(v2 - 111);
  LODWORD(v7) = (((v7 ^ v3[v7 ^ 0x56]) << 16) ^ 0xFC0F3249) & (v5 ^ 0xFEFFFABA) | v5 & 0xB6;
  v10 = *(&off_1010A0B50 + v0 - 14887) - 100535050;
  HIDWORD(v11) = (v8 >> 3) ^ 4;
  LODWORD(v11) = (v8 << 29) ^ 0x80000000;
  v12 = v4[(v11 >> 29) ^ 0x77];
  v13 = (v12 ^ 0xFFFFFFE0) & ((v9 << 16) ^ 0x4DBCB723) | v12 & 0xDC;
  LODWORD(v7) = (v7 ^ 0x308C102) & (((v10[*(v2 - 108) ^ 0x66] ^ *(v2 - 108)) << 24) ^ 0x9529D383) ^ v7 & 0x44D6007C;
  v14 = (*(v2 - 112) ^ 0x2F ^ v10[*(v2 - 112) ^ 0xE0]) << 24;
  v15 = v6[*(v2 - 106) ^ 8];
  v16 = ((((((2 * (v15 ^ 1) * (v15 ^ 1)) ^ v15) & 0xAC ^ 0x31) & ((2 * (v15 ^ 1) * (v15 ^ 1)) & 0x52 ^ v15 & 0x53 ^ 0xAF) | ((2 * (v15 ^ 1) * (v15 ^ 1)) & 0x52 ^ v15 & 0x53) & 0xEEEEEEEE) << 8) ^ 0xB171A031) & (v7 ^ 0x83442CF8);
  v17 = (v10[*(v2 - 100) ^ 9] ^ *(v2 - 100)) << 24;
  return (*(v1 + 8 * v0))(v14 & 0x63000000, v16, v17, v7 & 0x4E8E80CE ^ 0xB1C6917 ^ v16, v17 & 0x2B000000, v10, v14 & 0x63000000 ^ 0x6606DD74 ^ (((((v6[*(v2 - 110) ^ 0x9BLL] ^ (2 * (v6[*(v2 - 110) ^ 0x9BLL] ^ 1) * (v6[*(v2 - 110) ^ 0x9BLL] ^ 1))) << 8) ^ 0x4DAC1596) & (v13 ^ 0x7648A4) | v13 & 0x530069) ^ 0xD194DA6C) & (v14 ^ 0xE3FFFFFF));
}

uint64_t sub_100156ADC@<X0>(int a1@<W8>)
{
  v7 = STACK[0x6D4];
  v8 = STACK[0x480];
  v9 = STACK[0x470];
  v10 = &v4[6 * v3];
  v10[2] = v6;
  v10[3] = v9;
  *(v10 + 2) = v8;
  v10[6] = v7;
  *v4 = v2 + 1;
  LODWORD(STACK[0x4B4]) = v1;
  v11 = v1 - 194470501;
  v13 = v11 > ((a1 + 1591591413) & 0xA1222F37 ^ 0x873C74F4) && v11 < SLODWORD(STACK[0x3B0]);
  return (*(v5 + 8 * ((37057 * v13) ^ a1)))();
}

uint64_t sub_100156C80(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = v6 + 1112314453 * ((~(v7 - 120) & 0x7C83965 | (v7 - 120) & 0xF837C698) ^ 0xE89E13BC);
  *(v7 - 120) = v8 + 4805;
  *(v7 - 104) = v8 + a4 + 16860713;
  *(v7 - 112) = v4;
  v9 = (*(v5 + 8 * (v6 ^ 0xD8B3)))(v7 - 120);
  return (*(v5 + 8 * v6))(v9);
}

uint64_t sub_100156D58@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v67 = *(v65 + 4 * (v63 - 1));
  *(v65 + 4 * v63) = ((1566083941 * (v67 ^ (v67 >> 30))) ^ *(v65 + 4 * v63)) - v63;
  v68 = 1603510583 * ((a62 - ((v66 - 144) | 0xA9610152A932B25DLL) - 0x569EFEAD56CD4DA3) ^ 0x696FE941C1167F09);
  *(v66 - 136) = (a1 - 1723532604) ^ v68;
  *(v66 - 120) = (a1 - 1723528940) ^ v68;
  *(v66 - 116) = a1 - 1723532604 - v68 + 38;
  *(v66 - 128) = (v63 + 1) ^ v68;
  *(v66 - 144) = v68 ^ 0x26F;
  *(v66 - 112) = v68;
  *(v66 - 104) = a1 - v68 + v62;
  v69 = (*(v64 + 8 * (a1 + 31168)))(v66 - 144);
  return (*(v64 + 8 * *(v66 - 108)))(v69);
}

uint64_t sub_100156E44@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v3 = LODWORD(STACK[0x288]) | ((LODWORD(STACK[0x288]) < 0xCED17EBuLL) << 32);
  STACK[0x228] = v3 - 216864747;
  return (*(v2 + 8 * ((25 * (v3 != 216864747)) ^ a2)))(a1, 11339723, 1396302961, 1482628768, 2650061074, 3652841938, 112334413, 3847099726);
}

uint64_t sub_100156FB0(int a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, int a7, int8x16_t a8, int8x8_t a9)
{
  v16.val[0].i64[0] = (v12 + a3 - 1) & 0xF;
  v16.val[0].i64[1] = (v12 + a3 + 14) & 0xF;
  v16.val[1].i64[0] = (v12 + a3 + 13) & 0xF;
  v16.val[1].i64[1] = (v12 + a3 + 12) & 0xF;
  v16.val[2].i64[0] = (v12 + a3 + 11) & 0xF;
  v16.val[2].i64[1] = (v12 + a4 + v13) & 0xF;
  v16.val[3].i64[0] = (v12 + a3 + 9) & 0xF;
  v16.val[3].i64[1] = (v12 + a3) & 0xF ^ 8;
  *(a5 + v12) = veor_s8(veor_s8(veor_s8(*(v9 + v16.val[0].i64[0] - 7), *(a6 + v12)), veor_s8(*(v11 + v16.val[0].i64[0] + 1 - 7), *(v10 + v16.val[0].i64[0] + 1 - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v16, a8), a9)));
  return (*(v14 + 8 * (((a2 == a3) * a7) ^ a1)))();
}

uint64_t sub_1001570F0@<X0>(int a1@<W8>, int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12, int a13, unsigned int a14, int a15)
{
  v18 = 139493411 * ((2 * (&a11 & 0x31F6E498) - &a11 + 1309219680) ^ 0x4224FA25);
  a11 = v15 - v18 + 27202;
  a12 = a1 - v18 - ((2 * a1) & 0x9DB9D2AA) - 824383147;
  a13 = v18 + (HIBYTE(a3) ^ 0x4F67F1BC) - 100942208 + ((((v15 + 3014) | 0x8081) ^ 0xA5E9) & (a3 >> 23));
  a14 = v18 + ((a3 >> 15) & 0xDE) + (BYTE2(a3) ^ 0xBFAA576F) + 2027924380;
  a15 = ((a3 >> 7) & 0x1F6) - v18 + (BYTE1(a3) ^ 0x77F3FEFB) - 1380187361;
  v19 = (*(v16 + 8 * (v15 + 46348)))(&a11);
  *v17 = 100;
  return (*(v16 + 8 * v15))(v19);
}

int *sub_100157574(int *result)
{
  if ((v1 ^ 0x8EFEEFBA) + ((2 * v1) & 0x1DFC9050) == -1895895110)
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

uint64_t sub_1001575B0@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  *(a1 + 200) = v4;
  LODWORD(STACK[0x334]) = a2;
  LODWORD(STACK[0x244]) = -1906788071;
  return (*(v3 + 8 * v2))();
}

void sub_1001575E8(_DWORD *a1)
{
  v1 = *a1 ^ (155453101 * ((((2 * a1) | 0x7968832E) - a1 - 1018446231) ^ 0xDA925A58));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1001576BC(uint64_t a1, int8x16_t *a2, uint64_t a3, uint64_t a4, int a5, double a6, __n128 a7, __n128 a8, __n128 a9, int8x16_t a10, double a11, int8x16_t a12, int8x16_t a13)
{
  v19 = a3 & 0xF;
  v20 = v17;
  v21.i64[0] = vqtbl4q_s8(*(&a7 - 1), a10).u64[0];
  *&v21.i64[1] = a11;
  v22 = vrev64q_s8(veorq_s8(veorq_s8(*a2, *(v14 + v19 - 15)), veorq_s8(*(v13 + v19 - 15), *(v19 + v15 - 14))));
  v23 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v22, v22, 8uLL), a13), vmulq_s8(v21, a12)));
  *a2 = vextq_s8(v23, v23, 8uLL);
  return (*(v18 + 8 * (((a4 == 0) * a5) ^ v16)))(a1, a2 - 1, a3 - 16, a4 - 16);
}

uint64_t sub_10015773C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, _BOOL8 a24)
{
  HIDWORD(a21) = 0;
  v31 = a2 & 0xFFFFFFF2 ^ 0xACBAC6AFLL;
  *(v30 - 224) = v31;
  HIDWORD(v201) = (a7 + 8532) | 0x4101;
  v216 = (HIDWORD(v201) ^ 0xFFFF8252) & a2 ^ 0xACBAC6AFLL;
  v32 = *(a17 + ((((*(v27 + v31) - (*(v27 + v31) ^ 0x95)) ^ 0xFFFFFFFE) + *(v27 + v31)) ^ 0xE6)) << 16;
  LOBYTE(v31) = -63 * *(a19 + (((a7 - 74) | 0x13) ^ 0x43u ^ *(v27 + v216))) + 10;
  v211 = a2 ^ 0xACBAC6AFLL;
  v212 = a2 & 0xFFFFFFFE ^ 0xACBAC6AFLL;
  v33 = (*(a20 + (*(v27 + v211) ^ 0xDELL)) << 24) + 335544320;
  v34 = (v33 ^ 0x8FFFFFFF) & ((*(a17 + (*(v27 + v212) ^ 0xB5)) << 16) ^ 0xF82E0BB3);
  v203 = a2 & 0xFFFFFFFB ^ 0xACBAC6AFLL;
  v204 = a2 & 0xFFFFFFFA ^ 0xACBAC6AFLL;
  v35 = *(a17 + (*(v27 + v204) ^ 8));
  v215 = a2 & 0xFFFFFFF6 ^ 0xACBAC6AFLL;
  v36 = *(a17 + (*(v27 + v215) ^ 0x21));
  v210 = a2 & 0xFFFFFFF4 ^ 0xACBAC6AFLL;
  v37 = ((((*(a20 + (*(v27 + v203) ^ 0xEFLL)) + 20) ^ 6) << 24) ^ 0xC24ED272) & ((v35 << 16) ^ 0xFF58D272) | (v35 << 16) & 0xB10000;
  LOBYTE(v35) = *(a18 + (*(*(v30 - 200) + v210) ^ 0x7FLL));
  v38 = ((((((v36 ^ 0x81) - (v36 ^ 0x5A)) ^ 0xFE) + (v36 ^ 0x81)) << 16) - ((((((v36 ^ 0xFFFFFF81) - (v36 ^ 0x5A)) ^ 0xFE) + (v36 ^ 0xFFFFFF81)) << 17) & 0x140000) + 185205663) ^ 0xB0A039F;
  v214 = a2 & 0xFFFFFFF3 ^ 0xACBAC6AFLL;
  v213 = a2 & 0xFFFFFFF9 ^ 0xACBAC6AFLL;
  v39 = ((((*(a20 + (*(*(v30 - 200) + v214) ^ 0xABLL)) + 20) ^ 0x18) << 24) ^ 0x2478417B) & (v32 ^ 0xFFD8E97F) | v32 & 0xFF87FFFF;
  v209 = a2 & 0xFFFFFFFD ^ 0xACBAC6AFLL;
  v208 = a2 & 0xFFFFFFF0 ^ 0xACBAC6AFLL;
  v40 = (-63 * *(a19 + (*(*(v30 - 200) + v213) ^ 0xA0)) + 10) << 8;
  v205 = a2 & 0xFFFFFFF1 ^ 0xACBAC6AFLL;
  v41 = (*&v40 | 0xFFFF01FF) & (v37 ^ 0x2762C058);
  v42 = (((-63 * *(a19 + (*(*(v30 - 200) + v209) ^ 0x71)) + 10) << 8) ^ 0xE7666936) & ((v34 | v33 & 0x7000000) ^ 0x10D2F44C);
  v43 = (65 * *(a18 + (*(*(v30 - 200) + v208) ^ 0x87)) - 121);
  v44 = (65 * *(a18 + (*(*(v30 - 200) + v208) ^ 0x87)) - 121) ^ (v43 >> 5) ^ (v43 >> 4);
  v45 = (~v44 | 0xFFFFE500) & (v39 ^ 0xF6CEA424) | v44 & 0xA0;
  v202 = a2 & 0xFFFFFFFC ^ 0xACBAC6AFLL;
  v46 = (65 * *(a18 + (*(*(v30 - 200) + v202) ^ 0xD4)) - 121);
  v47 = (65 * *(a18 + (*(*(v30 - 200) + v202) ^ 0xD4)) - 121) ^ (v46 >> 5);
  v48 = v47 ^ (v46 >> 4);
  v49 = ((65 * v35 - 121) ^ ((65 * v35 - 121) >> 5) ^ ((65 * v35 - 121) >> 4)) ^ v24 ^ (v38 & 0xFFFF00FF | ((v31 ^ 0x84) << 8));
  v206 = a2 & 0xFFFFFFF8 ^ 0xACBAC6AFLL;
  v50 = (v47 ^ ~((65 * *(a18 + (*(*(v30 - 200) + v202) ^ 0xD4)) - 121) >> 4) | 0xFFFFFF00) & (v34 & 0x18990280 ^ 0xB829E828 ^ v42);
  v51 = (65 * *(a18 + (*(*(v30 - 200) + v206) ^ 0x9ELL)) - 121);
  v52 = (65 * *(a18 + (*(*(v30 - 200) + v206) ^ 0x9ELL)) - 121) ^ (v51 >> 5);
  v53 = (v48 & 0x61 | v50) ^ v26;
  v207 = a2 & 0xFFFFFFF7 ^ 0xACBAC6AFLL;
  v54 = ((v52 ^ (v51 >> 4)) & 0x69 | (v52 ^ ~((65 * *(a18 + (*(*(v30 - 200) + v206) ^ 0x9ELL)) - 121) >> 4) | 0xFFFFFF00) & ((v40 & 0xED00 | v41) ^ 0x52C13BC)) ^ v29;
  v55 = v25 ^ v45 & 0xC1D72D2E ^ (v45 ^ 0x8081A80) & (((-63 * *(a19 + (*(*(v30 - 200) + v205) ^ 7)) + 10) << 8) ^ 0x3E28DAD1);
  v56 = *(&off_1010A0B50 + (a7 ^ 0x1AC2)) - 107326798;
  v57 = *(&off_1010A0B50 + (a7 ^ 0x1B78)) - 1964012006;
  v58 = v49 ^ (((*(a20 + (*(*(v30 - 200) + v207) ^ 0xCFLL)) + 20) ^ 0x39) << 24);
  v59 = *&v56[4 * ((v54 ^ 0x4D9E22A0) >> 16)] ^ *&v57[4 * (HIBYTE(v53) ^ 0x49)] ^ 0x732CE7F3;
  v60 = *(&off_1010A0B50 + (a7 ^ 0x1EC6)) - 258521386;
  v61 = *&v60[4 * (BYTE1(v49) ^ 0xD3)];
  v62 = v55 ^ 0x9F381310;
  v63 = *(&off_1010A0B50 + a7 - 4288) - 2088432702;
  HIDWORD(v64) = *&v63[4 * v62];
  LODWORD(v64) = HIDWORD(v64);
  v65 = ((a3 ^ (16 * (v64 >> 14))) + v28) ^ (v64 >> 14) ^ ((-(v61 ^ 0xE7E4219) ^ (v59 - (v61 ^ 0xE7E4219 ^ v59)) ^ 0xED04BA85 ^ ((v61 ^ 0xE7E4219) - 2 * ((v61 ^ 0xE7E4219) & 0x6D04BA87 ^ v61 & 2) - 318457211)) + v59);
  v66 = v58 ^ 0xA2;
  HIDWORD(v64) = *&v63[4 * (v53 ^ 0x6B)];
  LODWORD(v64) = HIDWORD(v64);
  v67 = *&v56[4 * (((v58 ^ 0xBCF0E5A2) >> 16) ^ 0x33)] ^ *&v57[4 * ((v54 ^ 0x4D9E22A0) >> 24)] ^ (v64 >> 14) ^ ((a3 ^ (16 * (v64 >> 14))) + v28) ^ *&v60[4 * (BYTE1(v62) ^ 0x73)];
  LODWORD(a24) = *(v30 - 216) < 0x9819E16F;
  v68 = HIBYTE(v62) ^ 0x84;
  if ((v62 & 0x1000000) == 0)
  {
    v68 &= 0xFEu;
  }

  HIDWORD(v70) = (v68 >> 4) ^ 0x9122EBE;
  LODWORD(v70) = (v68 << 28) ^ 0x30000000;
  v69 = v70 >> 28;
  HIDWORD(v70) = *&v63[4 * (v54 ^ 0xA0)];
  LODWORD(v70) = HIDWORD(v70);
  v71 = *&v56[4 * (BYTE2(v62) ^ 5)] ^ *&v57[4 * (HIBYTE(v58) ^ 0xE2)] ^ (v70 >> 14) ^ *&v60[4 * (BYTE1(v53) ^ 0x28)] ^ ((a3 ^ (16 * (v70 >> 14))) + v28);
  HIDWORD(v70) = *&v63[4 * v66];
  LODWORD(v70) = HIDWORD(v70);
  v72 = *&v60[4 * (BYTE1(v54) ^ 0x14)] ^ *&v56[4 * (BYTE2(v53) ^ 0x3A)] ^ (v70 >> 14) ^ *&v57[4 * (v69 ^ 0x9122EBBD)] ^ (16 * (((2 * (v70 >> 14)) & 0x8DC9F70 ^ 0x8408670) + ((v70 >> 14) ^ 0xBCE9C87)));
  v73 = BYTE2(v67) ^ 0x19;
  HIDWORD(v70) = *&v63[4 * (v72 ^ 0x35)];
  LODWORD(v70) = HIDWORD(v70);
  v74 = *&v57[4 * ((v65 ^ 0xD59BD54F) >> 24)] ^ *&v56[4 * (((v67 ^ 0xD519E946) >> 16) ^ 0x33)] ^ *&v60[4 * (BYTE1(v71) ^ 0xD0)] ^ (v70 >> 14) ^ ((a3 ^ (16 * (v70 >> 14))) + v28);
  HIDWORD(v70) = *&v63[4 * (v65 ^ 0xAA)];
  LODWORD(v70) = HIDWORD(v70);
  v75 = v70 >> 14;
  HIDWORD(v70) = *&v63[4 * (v67 ^ 0xA3)];
  LODWORD(v70) = HIDWORD(v70);
  v76 = *&v56[4 * ((v72 ^ 0xC371EA35) >> 16)] ^ *&v57[4 * (HIBYTE(v71) ^ 0x32)] ^ *&v60[4 * ((v65 ^ 0xD54F) >> 8)] ^ (v70 >> 14) ^ ((a3 ^ (16 * (v70 >> 14))) + v28);
  HIDWORD(v70) = *&v63[4 * (v71 ^ 0x8D)];
  LODWORD(v70) = HIDWORD(v70);
  v77 = *&v56[4 * (BYTE2(v71) ^ 0xA8)] ^ *&v57[4 * ((v67 ^ 0xD519E946) >> 24)] ^ v75 ^ 0x6E85A8F8 ^ *&v60[4 * ((v72 ^ 0xEA35) >> 8)] ^ (16 * (((2 * (v75 ^ 0x6E85A8F8)) & 0x8DC9F70 ^ 0x489700) + (v75 ^ 0xBCE9C87))) ^ 0xDCAA8794;
  v78 = *&v60[4 * (BYTE1(v67) ^ 0xDF)] ^ *&v56[4 * (BYTE2(v65) ^ 0xA8)] ^ (v70 >> 14) ^ ((a3 ^ (16 * (v70 >> 14))) + v28) ^ *&v57[4 * (HIBYTE(v72) ^ 0x9D)];
  v79 = v78 ^ 0x1DC515D4;
  HIDWORD(v70) = *&v63[4 * (v78 ^ 0xD4)];
  LODWORD(v70) = HIDWORD(v70);
  v80 = v70 >> 14;
  v81 = *&v56[4 * BYTE2(v77)] ^ *&v60[4 * (((v76 ^ 0x20C1) >> 8) ^ 0x36)] ^ *&v57[4 * (HIBYTE(v74) ^ 0xB7)] ^ ((((a3 ^ (16 * v80)) + v28) & 0x98E69230 ^ v80 & 0x98E6923A ^ 0xE71B6DC5) & (v80 & 0x67196DC5 ^ 0xC213AD59 ^ ((a3 ^ (16 * v80)) + v28) & 0x67196DC0) | (((a3 ^ (16 * v80)) + v28) & 0x98E69230 ^ v80 & 0x98E6923A) & 0x18E41222);
  v82 = *&v57[4 * HIBYTE(v77)] ^ *&v60[4 * ((v78 ^ 0x15D4) >> 8)] ^ *&v56[4 * (BYTE2(v76) ^ 0x7D)] ^ 0x7CCA8E28;
  HIDWORD(v70) = *&v63[4 * (v74 ^ 0xEF)];
  LODWORD(v70) = HIDWORD(v70);
  v83 = *&v56[4 * (BYTE2(v78) ^ 0xF6)] ^ *&v57[4 * ((v76 ^ 0x504E20C1u) >> 24)];
  v84 = v82 & 0x8000;
  v85 = ((a3 ^ (16 * (v70 >> 14))) - 2 * (((a3 ^ (16 * (v70 >> 14))) + 48561024) & 0x2A5F170 ^ (a3 ^ (16 * (v70 >> 14))) & 0x10) - 913642258) ^ (v70 >> 14) ^ 0x9D052251;
  if (((((a3 ^ (16 * (v70 >> 14))) - 2 * (((a3 ^ (16 * (v70 >> 14))) - 1152) & 0xF170 ^ (a3 ^ (16 * (v70 >> 14))) & 0x10) - 4882) ^ (v70 >> 14)) & v82 & 0x8000) != 0)
  {
    v84 = -v84;
  }

  v86 = (v84 + v85) ^ v82 & 0xFFFF7FFF;
  HIDWORD(v87) = *&v63[4 * v77];
  LODWORD(v87) = HIDWORD(v87);
  v88 = v83 ^ *&v60[4 * (BYTE1(v74) ^ 0x19)] ^ (v87 >> 14) ^ ((a3 ^ (16 * (v87 >> 14))) + v28);
  v89 = *&v57[4 * HIBYTE(v79)];
  HIDWORD(v87) = *&v63[4 * (v76 ^ 0xC1)];
  LODWORD(v87) = HIDWORD(v87);
  v90 = v87 >> 14;
  v91 = *&v56[4 * ~HIWORD(v74)] ^ v89 ^ v90 ^ *&v60[4 * BYTE1(v77)];
  v92 = BYTE2(v81) ^ 0x2A;
  v93 = v91 ^ ((a3 ^ (16 * v90)) + v28);
  v94 = *&v63[4 * ((v91 ^ ((a3 ^ (16 * v90)) + v28)) ^ 0x8F)];
  HIDWORD(v87) = v94 ^ 0x7E8;
  LODWORD(v87) = v94 ^ 0x34CFC000;
  v95 = *&v56[4 * (BYTE2(v86) ^ 0xB5)] ^ *&v57[4 * ((v81 ^ 0xFB2A2B97) >> 24)] ^ *&v60[4 * (BYTE1(v88) ^ 9)] ^ (17 * (v87 >> 14) - 2 * ((16 * (v87 >> 14) + v28) & (v87 >> 14)) + v28);
  HIDWORD(v87) = *&v63[4 * (v81 ^ 0x97)];
  LODWORD(v87) = HIDWORD(v87);
  v96 = *&v56[4 * ((v88 ^ 0xDB583F9E) >> 16)] ^ *&v60[4 * ((v93 ^ 0xF56A) >> 8)] ^ (v87 >> 14) ^ ((a3 ^ (16 * (v87 >> 14))) + v28) ^ 0x1E9CDF2F ^ *&v57[4 * (HIBYTE(v86) ^ 0x38)];
  HIDWORD(v87) = *&v63[4 * (v86 ^ 0x8D)];
  LODWORD(v87) = HIDWORD(v87);
  v97 = (v87 >> 14) ^ __ROR4__(__ROR4__(*&v57[4 * ((v88 ^ 0xDB583F9E) >> 24)] ^ *&v56[4 * (BYTE2(v93) ^ 0x54)] ^ 0x9C701381 ^ *&v60[4 * (BYTE1(v81) ^ 0x1D)], 8) ^ 0x4F8795AC, 24) ^ ((a3 ^ (16 * (v87 >> 14))) + v28);
  v98 = *&v57[4 * ((v93 ^ 0x1667F56Au) >> 24)] ^ 0xFFE567B4;
  v99 = *&v56[4 * (v92 ^ 0x33)] ^ 0x8CC98047;
  HIDWORD(v87) = *&v63[4 * (v88 ^ 0x7B)];
  LODWORD(v87) = HIDWORD(v87);
  v100 = ((a3 ^ (16 * (v87 >> 14))) + v28) ^ (v87 >> 14) ^ (v99 + v98 - 2 * (v99 & v98)) ^ *&v60[4 * (BYTE1(v86) ^ 0xAB)];
  LODWORD(v87) = __ROR4__(v96, 8) ^ 0xD517B432;
  HIDWORD(v87) = v87;
  v101 = v87 >> 24;
  v102 = *&v56[4 * (BYTE2(v101) ^ 0x5A)] ^ 0x8CC98047;
  v103 = *&v57[4 * (HIBYTE(v95) ^ 0xA5)] ^ 0xFFE567B4;
  v104 = v103 + v102 - 2 * (v103 & v102);
  v105 = *&v60[4 * (BYTE1(v97) ^ 0x67)];
  v106 = v105 & 0x40;
  if ((v104 & v105 & 0x40) != 0)
  {
    v106 = -v106;
  }

  HIDWORD(v107) = *&v63[4 * (v100 ^ 0x55)];
  LODWORD(v107) = HIDWORD(v107);
  v108 = (v107 >> 14) ^ v105 & 0xFFFFFFBF ^ ((a3 ^ (16 * (v107 >> 14))) + v28) ^ (v106 + v104);
  HIDWORD(v107) = *&v63[4 * (v95 ^ 0xD7)];
  LODWORD(v107) = HIDWORD(v107);
  v109 = *&v56[4 * (BYTE2(v97) ^ 0x35)] ^ *&v57[4 * (HIBYTE(v101) ^ 0x38)] ^ *&v60[4 * (BYTE1(v100) ^ 0x23)] ^ (v107 >> 14) ^ ((a3 ^ (16 * (v107 >> 14))) + v28);
  v110 = v100 ^ 0x8F5215B0;
  HIDWORD(v107) = *&v63[4 * (v101 ^ 0xA8)];
  LODWORD(v107) = HIDWORD(v107);
  v111 = *&v57[4 * (HIBYTE(v97) ^ 0x21)] ^ *&v56[4 * BYTE2(v110)] ^ *&v60[4 * (BYTE1(v95) ^ 0xF4)] ^ (v107 >> 14) ^ ((a3 ^ (16 * (v107 >> 14))) + v28);
  HIDWORD(v107) = *&v63[4 * (v97 ^ 0xC7)];
  LODWORD(v107) = HIDWORD(v107);
  v112 = *&v56[4 * (BYTE2(v95) ^ 0xF7)] ^ *&v57[4 * HIBYTE(v110)] ^ *&v60[4 * (BYTE1(v101) ^ 0xD5)] ^ (v107 >> 14) ^ ((a3 ^ (16 * (v107 >> 14))) + v28);
  v113 = v112 ^ 0x1E204D1;
  HIDWORD(v107) = *&v63[4 * (v112 ^ 0xD1)];
  LODWORD(v107) = HIDWORD(v107);
  v114 = *&v57[4 * ((v108 ^ 0x55E8181Au) >> 24)] ^ *&v60[4 * ((v111 ^ 0x1FB2) >> 8)] ^ *&v56[4 * ((v109 ^ 0x997F187E) >> 16)] ^ (v107 >> 14) ^ ((a3 ^ (16 * (v107 >> 14))) + v28);
  v115 = *&v56[4 * (BYTE2(v112) ^ 0xD1)] ^ *&v57[4 * ((v111 ^ 0x2D551FB2u) >> 24)];
  HIDWORD(v107) = *&v63[4 * ~v108];
  LODWORD(v107) = HIDWORD(v107);
  v116 = *&v57[4 * (HIBYTE(v109) ^ 0xC7)] ^ *&v56[4 * ((v111 ^ 0x2D551FB2u) >> 16)] ^ *&v60[4 * (BYTE1(v112) ^ 0x32)] ^ (v107 >> 14) ^ ((a3 ^ (16 * (v107 >> 14))) + v28);
  HIDWORD(v107) = *&v63[4 * (v109 ^ 0x7E)];
  LODWORD(v107) = HIDWORD(v107);
  v117 = v115 ^ *&v60[4 * ((v108 ^ 0x181A) >> 8)] ^ (v107 >> 14) ^ ((a3 ^ (16 * (v107 >> 14))) + v28);
  if ((v111 & 4) != 0)
  {
    v118 = -4;
  }

  else
  {
    v118 = 4;
  }

  HIDWORD(v119) = *&v63[4 * ((v118 + (v111 ^ 0xB2)) ^ 0xE1)];
  LODWORD(v119) = HIDWORD(v119);
  v120 = *&v57[4 * HIBYTE(v113)] ^ *&v60[4 * (BYTE1(v109) ^ 0x2E)] ^ *&v56[4 * (BYTE2(v108) ^ 0xDB)] ^ (v119 >> 14) ^ __ROR4__(__ROR4__(((a3 ^ (16 * (v119 >> 14))) + v28) ^ 0x9C696180, 25) ^ 0x1AAE0520, 7);
  v121 = *&v57[4 * (HIBYTE(v114) ^ 0x78)] ^ 0xFFE567B4;
  v122 = *&v56[4 * (((v116 ^ 0x6F7A2B10u) >> 16) ^ 0x33)] ^ 0x8CC98047;
  v123 = v120 ^ 0x9F913BF9;
  HIDWORD(v119) = *&v63[4 * (v120 ^ 0xF9)];
  LODWORD(v119) = HIDWORD(v119);
  v124 = (v119 >> 14) ^ *&v60[4 * (BYTE1(v117) ^ 0xEB)] ^ (v121 + v122 - 2 * (v121 & v122)) ^ ((a3 ^ (16 * (v119 >> 14))) + v28);
  HIDWORD(v119) = *&v63[4 * (v114 ^ 0xAB)];
  LODWORD(v119) = HIDWORD(v119);
  v125 = *&v60[4 * (BYTE1(v120) ^ 0xD)] ^ *&v57[4 * ((v116 ^ 0x6F7A2B10u) >> 24)] ^ *&v56[4 * (BYTE2(v117) ^ 0xE6)] ^ (v119 >> 14) ^ ((a3 ^ (16 * (v119 >> 14))) + v28);
  if ((((v116 & 0xEF) - ((2 * v116) & 0x1D6) + 1448176619) ^ v116) == 0x56516BFB)
  {
    v126 = 16;
  }

  else
  {
    v126 = -16;
  }

  HIDWORD(v127) = *&v63[4 * ((v126 + (v116 ^ 0x10)) ^ 0xF5)];
  LODWORD(v127) = HIDWORD(v127);
  v128 = *&v57[4 * (HIBYTE(v117) ^ 0x92)] ^ *&v60[4 * (BYTE1(v114) ^ 0xDA)] ^ *&v56[4 * BYTE2(v123)] ^ (v127 >> 14) ^ ((a3 ^ (16 * (v127 >> 14))) + v28);
  v129 = *&v56[4 * (BYTE2(v114) ^ 0xCC)];
  v130 = *&v63[4 * (v117 ^ 0x82)];
  v131 = (((((v130 ^ 0x34CFC7E8u) >> (v73 & 0xE)) - ((2 * ((v130 ^ 0x34CFC7E8u) >> (v73 & 0xE))) & 0xB7DD811E) + 1542373519) ^ 0x5BEEC08F) >> (~v73 & 6) >> (~v73 & 8)) ^ (v130 << 18);
  v132 = *&v60[4 * (BYTE1(v116) ^ 0x1D)] ^ (((2 * v129) & 0x9FD792EE ^ 0x79BB6D9F) + 319689384 + (((v129 ^ 0x9FCD05D3) + 1613953581) ^ ((v129 ^ 0x5F3B7DB6) - 1597734326) ^ ((v129 ^ 0x3D43155) - 64237909))) ^ *&v57[4 * HIBYTE(v123)] ^ v131 ^ (((16 * v131) ^ 0xFA000000) + v28);
  HIDWORD(v127) = *&v63[4 * ((v60[4 * (BYTE1(v116) ^ 0x1D)] ^ (((2 * v129) & 0xEE ^ 0x9F) - 88 + (((v129 ^ 0xD3) + 45) ^ ((v129 ^ 0xB6) + 74) ^ ((v129 ^ 0x55) - 85))) ^ v57[4 * HIBYTE(v123)] ^ v131 ^ (16 * v131 + v28)) ^ 0xBE)];
  LODWORD(v127) = HIDWORD(v127);
  v133 = *&v57[4 * (HIBYTE(v125) ^ 0x3F)];
  v134 = *&v57[4 * (HIBYTE(v124) ^ 0xF3)] ^ *&v56[4 * ((v125 ^ 0x610E1837) >> 16)] ^ *&v60[4 * (BYTE1(v128) ^ 0x2C)] ^ (v127 >> 14) ^ 0x551406AC ^ ((a3 ^ (16 * (v127 >> 14))) + v28);
  v135 = (((v133 ^ 0xFC03D9A8) - (v133 ^ 0xFFE567B4)) ^ 0xFFFFFFF8) + (v133 ^ 0xFC03D9A8);
  v136 = *&v56[4 * ((v128 ^ 0x23121A95) >> 16)];
  v137 = (v136 ^ (1340852599 - (v136 ^ 0x8CC98047)) ^ 0xC3224930 ^ (1021163216 - (((v136 ^ 0x7E182859) - 2115512409) ^ ((v136 ^ 0xBF08768) - 200312680) ^ ((v136 ^ 0xB6CAE601) + 1228216831)))) + 1340852599;
  v138 = v137 & 0x40;
  if ((v137 & 0x40 & v135) != 0)
  {
    v138 = -v138;
  }

  HIDWORD(v139) = *&v63[4 * (v124 ^ 0x11)];
  LODWORD(v139) = HIDWORD(v139);
  v140 = *&v57[4 * (HIBYTE(v128) ^ 0x7D)];
  v141 = (v139 >> 14) ^ *&v60[4 * (BYTE1(v132) ^ 0xA6)] ^ ((a3 ^ (16 * (v139 >> 14))) + v28) ^ v137 & 0xFFFFFFBF ^ (v138 + v135);
  HIDWORD(v139) = *&v63[4 * (v128 ^ 0x95)];
  LODWORD(v139) = HIDWORD(v139);
  v142 = *&v56[4 * (BYTE2(v124) ^ 0x91)] ^ *&v57[4 * (HIBYTE(v132) ^ 0x62)] ^ *&v60[4 * (BYTE1(v125) ^ 0x2E)] ^ (v139 >> 14) ^ ((a3 ^ (16 * (v139 >> 14))) + v28);
  HIDWORD(v139) = *&v63[4 * (v125 ^ 0x37)];
  LODWORD(v139) = HIDWORD(v139);
  v143 = v140 ^ *&v56[4 * (BYTE2(v132) ^ 0xEC)] ^ *&v60[4 * (BYTE1(v124) ^ 0x3D)] ^ (v139 >> 14) ^ ((a3 ^ (16 * (v139 >> 14))) + v28) ^ 0xA2FCB681;
  v144 = *&v57[4 * (HIBYTE(v141) ^ 0x7C)];
  LODWORD(v139) = __ROR4__(v134, 10) ^ 0x342331AF;
  HIDWORD(v139) = v139;
  v145 = v139 >> 22;
  HIDWORD(v139) = *&v63[4 * ((v139 >> 22) ^ 0x5F)];
  LODWORD(v139) = HIDWORD(v139);
  v146 = *&v60[4 * (BYTE1(v142) ^ 0xAA)] ^ *&v56[4 * BYTE2(v143)] ^ (v139 >> 14) ^ ((a3 ^ (16 * (v139 >> 14))) + v28) ^ ((((v144 ^ 0xFC03D9A8) - (v144 ^ 0xFFE567B4)) ^ 0x3E6BE1C) + (((v144 ^ 0x2ADF727E) - 719286910) ^ ((v144 ^ 0x831DC697) + 2095200617) ^ ((v144 ^ 0x55C16D41) - 1438739777)) - ((2 * (((v144 ^ 0xFC03D9A8) - (v144 ^ 0xFFE567B4)) ^ 0x3E6BE1C)) & 0xF83283C8) - 132310132);
  v147 = *&v57[4 * (HIBYTE(v145) ^ 0x39)];
  v148 = *&v57[4 * (HIBYTE(v142) ^ 0x9C)];
  HIDWORD(v139) = *&v63[4 * (v141 ^ 0xC7)];
  LODWORD(v139) = HIDWORD(v139);
  v149 = *&v56[4 * ((v142 ^ 0xC2239C67) >> 16)] ^ *&v57[4 * HIBYTE(v143)] ^ *&v60[4 * (BYTE1(v145) ^ 0xE)] ^ (v139 >> 14) ^ ((a3 ^ (16 * (v139 >> 14))) + v28);
  v150 = *&v63[4 * (v142 ^ 0x67)];
  v151 = *&v56[4 * (BYTE2(v141) ^ 0x38)];
  v152 = *&v56[4 * (BYTE2(v145) ^ 0x32)] ^ v148;
  v153 = *&v60[4 * BYTE1(v143)];
  v154 = *&v60[4 * (BYTE1(v141) ^ 0x94)];
  HIDWORD(v139) = *&v63[4 * v143];
  LODWORD(v139) = HIDWORD(v139);
  v155 = (v139 >> 14) ^ 0x69EDB38A ^ ((a3 ^ (16 * (v139 >> 14))) - ((2 * (a3 ^ (16 * (v139 >> 14))) - 1916143872) & 0xEC9AC160) - 1120773067);
  HIDWORD(v139) = v150;
  LODWORD(v139) = v150;
  v156 = v151 ^ v147 ^ v153 ^ (v139 >> 14) ^ ((a3 ^ (16 * (v139 >> 14))) + v28) ^ 0xFC4158FE;
  v157 = (-v155 ^ ((v152 ^ 0x7D52A5EA ^ v154) - (v152 ^ 0x7D52A5EA ^ v154 ^ v155)) ^ (v155 - ((2 * v155) & 0x8F31D30A) + 1201203589) ^ 0x4798E985) + (v152 ^ 0x7D52A5EA ^ v154);
  v158 = *(&off_1010A0B50 + (a7 ^ 0xBD5)) - 87947935;
  LODWORD(v139) = __ROR4__(*&v158[4 * ((v157 ^ 0xA8FE) >> 8)], 2) ^ 0x263C0D17;
  HIDWORD(v139) = v139;
  v159 = v139 >> 30;
  HIDWORD(v139) = *&v158[4 * ((v157 ^ 0xA8FE) >> 8)];
  LODWORD(v139) = v159;
  v160 = v139 >> 1;
  v161 = *(&off_1010A0B50 + a7 - 5364) - 1838262802;
  v162 = *(&off_1010A0B50 + (a7 ^ 0x1AD9)) - 1662890363;
  v163 = *&v162[4 * (v156 - ((2 * v156) & 0x4E)) + 156] + 1241722781;
  v164 = *&v161[4 * (BYTE2(v149) ^ 0xA9)] ^ v163 ^ (v163 >> 1) & 0x686DBB9D;
  v165 = *&v161[4 * (BYTE2(v146) ^ 0x4A)];
  v166 = *&v161[4 * (BYTE2(v157) ^ 0x82)];
  v167 = *&v161[4 * BYTE2(v156)];
  v168 = *&v158[4 * (BYTE1(v149) ^ 0x9D)];
  v169 = *&v158[4 * BYTE1(v156)];
  LODWORD(v158) = *&v158[4 * (BYTE1(v146) ^ 0xA5)];
  v170 = *(&off_1010A0B50 + (a7 ^ 0x1F5B)) - 741475087;
  LODWORD(v161) = *&v170[4 * HIBYTE(v156)];
  v171 = *&v170[4 * ((HIBYTE(v149) ^ 0xC1) - ((2 * (HIBYTE(v149) ^ 0xC1)) & 0x120)) + 576];
  v172 = *&v170[4 * (HIBYTE(v157) ^ 0x7F)];
  v173 = *&v162[4 * (v157 ^ 0xFE)];
  v174 = *&v170[4 * (HIBYTE(v146) ^ 0xDC)] ^ v164;
  v175 = *&v162[4 * (v146 ^ 0x79)];
  LODWORD(v162) = *&v162[4 * (v149 ^ 0x6C)];
  LOBYTE(v156) = v174 ^ v160;
  v176 = v174 ^ v160 ^ (v160 >> 2) & 0x3C4B1641;
  v177 = *(&off_1010A0B50 + (a7 ^ 0x929)) - 1297897739;
  *(*(v30 - 200) + v203) = (v177[HIBYTE(v176) ^ 0x9ELL] - 45) ^ 0xDF;
  v178 = *(&off_1010A0B50 + a7 - 2640) - 475789902;
  v179 = v178[BYTE2(v176) ^ 0x10];
  *(*(v30 - 200) + v204) = ((v179 >> 1) | (v179 << 7)) ^ (((v179 >> 1) | (v179 << 7)) >> 4) ^ (((((v179 >> 1) | (v179 << 7)) & 0x80) != 0) | 0xD6) ^ 1;
  HIDWORD(v139) = v168;
  LODWORD(v139) = v168;
  v180 = v165 ^ v161 ^ (v139 >> 1) ^ ((v139 >> 1) >> 2) & 0x3C4B1641 ^ (v173 + 1241722781) ^ ((v173 + 1241722781) >> 1) & 0x686DBB9D;
  HIDWORD(v139) = v169;
  LODWORD(v139) = v169;
  v181 = v166 ^ (v139 >> 1) ^ (v175 + 1241722781) ^ v171 ^ ((v139 >> 1) >> 2) & 0x3C4B1641;
  v183 = __PAIR64__(v158, __ROR4__(__ROR4__(((v175 + 1241722781) >> 1) & 0x686DBB9D ^ 0x3442C99F, 20) ^ 0x796E35AC, 12));
  v182 = v181 ^ v183;
  LODWORD(v183) = v158;
  LODWORD(v161) = v183 >> 1;
  v184 = v162 + 1241722781;
  v185 = v161 ^ v172 ^ ((((v167 ^ 0x760A98F5) - (v167 ^ 0xA6C358DB)) ^ 0xFFFFFFFC) + (v167 ^ 0x760A98F5)) ^ (v162 + 1241722781);
  *(*(v30 - 200) + v211) = (v177[HIBYTE(v180) ^ 0xCLL] - 45) ^ 0xAD;
  LODWORD(v162) = v178[BYTE2(v180) ^ 0x57];
  *(*(v30 - 200) + v212) = ((v162 >> 1) | (v162 << 7)) ^ (((v162 >> 1) | (v162 << 7)) >> 7) ^ (((v162 >> 1) | (v162 << 7)) >> 4) ^ 0x20;
  v186 = v185 ^ (v161 >> 2) & 0x3C4B1641;
  v187 = *(&off_1010A0B50 + (a7 ^ 0x1997)) - 610262643;
  LODWORD(v162) = v187[v180 ^ 0x9CLL];
  HIDWORD(v183) = v162 ^ 1;
  LODWORD(v183) = (v162 ^ 0xAAAAAAAA) << 24;
  v188 = *(v30 - 200);
  *(v188 + v202) = (56 * (v183 >> 27)) ^ (v183 >> 27) & 0xFE ^ (((v183 & 0x8000000) != 0) | 0x72) ^ 0x5A;
  v189 = v187[v182 ^ 0x32];
  HIDWORD(v183) = v189 ^ 1;
  LODWORD(v183) = (v189 ^ 0xAAAAAAAA) << 24;
  *(v188 + v210) = (v183 >> 27) ^ 0xEB ^ ((103 * (v183 >> 27)) << (v176 & 3 ^ 2) << (v156 & 2) << ((v176 & 1) == 0));
  v190 = *(&off_1010A0B50 + (a7 ^ 0x1D1C)) - 373615266;
  v191 = v186 ^ (v184 >> 1) & 0x686DBB9D;
  LOBYTE(v186) = -98 - 121 * v190[BYTE1(v182) ^ 0xC7];
  *(v188 + v216) = v186 ^ (8 * v186 * v186) ^ 0xF9;
  LOBYTE(v186) = -98 - 121 * v190[BYTE1(v191) ^ 0x63];
  *(v188 + v205) = v186 ^ (8 * v186 * v186) ^ 0x71;
  LOBYTE(v186) = -98 - 121 * v190[BYTE1(v180) ^ 0x49];
  *(v188 + v209) = v186 ^ (8 * v186 * v186) ^ 0x76;
  v192 = v178[BYTE2(v182) ^ 0xACLL];
  *(v188 + v215) = ((v192 >> 1) | (v192 << 7)) ^ (((v192 >> 1) | (v192 << 7)) >> 7) ^ (((v192 >> 1) | (v192 << 7)) >> 4) ^ 0xBB;
  v193 = v187[v191 ^ 0x1DLL];
  HIDWORD(v183) = v193 ^ 1;
  LODWORD(v183) = (v193 ^ 0xAAAAAAAA) << 24;
  v194 = v183 >> 27;
  v195 = (56 * v194);
  *(v188 + v208) = v194 ^ (56 * v194) ^ 0x99;
  v196 = BYTE1(v176) ^ 0xD5;
  *(v188 + v213) = (-98 - 121 * v190[v196]) ^ (8 * (-98 - 121 * v190[v196]) * (-98 - 121 * v190[v196])) ^ 0xBC;
  *(v188 + v214) = (v177[HIBYTE(v191) ^ 0x5ALL] - 45) ^ 0x16;
  v197 = v176 & 0x6B ^ 0xA3D9470A;
  LODWORD(v190) = v187[v197 ^ (v176 & 0x94 | 0xA3D9476B)];
  HIDWORD(v183) = v190 ^ 1;
  LODWORD(v183) = (v190 ^ 0xAAAAAAAA) << 24;
  *(v188 + v206) = (v183 >> 27) ^ (56 * (v183 >> 27)) ^ 0x11;
  LODWORD(v190) = v178[BYTE2(v191) ^ 1];
  *(v188 + *(v30 - 224)) = ((v190 >> 1) | (v190 << 7)) ^ (((v190 >> 1) | (v190 << 7)) >> 4) ^ (((((v190 >> 1) | (v190 << 7)) & 0x80) != 0) | 0xB4) ^ 0xE6;
  *(v188 + v207) = (v177[HIBYTE(v182) ^ 0xE6] - 45) ^ 0x97;
  LODWORD(v177) = (((a2 ^ 0x123928EF) - 305735919) ^ ((a2 ^ 0x94D203CA) + 1798175798) ^ ((a2 ^ 0x2A51ED8A) - 710012298)) - 887119739;
  LODWORD(v177) = ((v177 ^ 0x54678E6D) - 1241733035) ^ v177 ^ ((v177 ^ 0x4B601719) - 1426378463) ^ ((v177 ^ 0x7E9CFF49) - 1626875535) ^ ((v177 ^ 0x7FFFBFFB) - 1637574205);
  LODWORD(v190) = (((v177 ^ 0x4E6BFFAC) + 55189307) ^ ((v177 ^ 0xCA4C286A) - 2022848259) ^ ((v177 ^ 0x9A430E00) - 681382249)) + 1154787358;
  LODWORD(v178) = a24 ^ (v190 < 0x9819E16F);
  v198 = v190 < *(v30 - 216);
  if (v178)
  {
    v199 = a24;
  }

  else
  {
    v199 = v198;
  }

  LODWORD(v201) = (a7 + 26806) | 0x13;
  return (*(*(v30 - 208) + 8 * ((42 * v199) ^ a7)))(&off_1010A0B50, a2, a3, v197, 1752021917, v196, a7, v195, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v201, v202, a24, v203, v204, v205, v206, v207, v208);
}

_DWORD *sub_1001594A8(_DWORD *result)
{
  v1 = 193924789 * (((result | 0x35FF3EAB) - (result | 0xCA00C154) - 905920172) ^ 0x83440CCD);
  v2 = ((*result - v1) & 0xFF00FF ^ 0xEC00E4) - ((result[3] ^ v1) & 0xFF00FF ^ 0xB0069);
  result[1] = (v2 ^ 0xF7F97CFD) + 2025241592 + ((2 * v2) & 0xEFF2F9FA);
  return result;
}

void sub_100159690(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = (*(a1 + 48) ^ 0x57CB9EDF1D3FFFC7) - 0x57CB9EDEA36019D6 + ((2 * *(a1 + 48)) & 0xAF973DBE3A7FFF8ELL);
  v4 = v3 < 0x79DFE5F1;
  v5 = v3 > v2 + 2044716529;
  if (v2 > 0xFFFFFFFF86201A0ELL != v4)
  {
    v5 = v4;
  }

  v1 = *(a1 + 40) ^ (139493411 * ((a1 - 2 * (a1 & 0x7710CEB7) - 149893449) ^ 0xFB3D2FF2));
  __asm { BRAA            X14, X17 }
}

uint64_t sub_100159838@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(&STACK[0x2A8] + v19 - 1327800006) = 920645125;
  if (a1 > 1411910562 != v19 - 592226920 < -1411910563)
  {
    v20 = v19 - 592226920 < -1411910563;
  }

  else
  {
    v20 = v19 - 592226920 > v18;
  }

  return (*(a17 + 8 * ((v20 * ((v17 - 870048384) & 0x33DBB7FF ^ 0x370F)) ^ v17)))();
}

uint64_t sub_1001598D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = v17 + *(a7 + 24);
  v19 = __ROR8__((v18 - 0x77618121D9EA8995) & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = ((2 * v19 + 0x2D22D5F321CF2B02) & 0x3833AC852BF37AD8) - v19 + 0xD54BEC3D91EAD12;
  v21 = __ROR8__(v20 ^ 0xE4C4305E962176E1, 8);
  v20 ^= 0x504F6792111DDAEFuLL;
  v22 = (v21 + v20) ^ v10;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ a2;
  v25 = __ROR8__(v24, 8);
  v26 = __ROR8__(v23, 61);
  v27 = (((v25 + (v24 ^ v26)) | 0x9CA55D84F65A99B2) - ((v25 + (v24 ^ v26)) | v12) + v12) ^ 0x21D8706D375038D8;
  v28 = v27 ^ __ROR8__(v24 ^ v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ a4;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = *(v16 + 8 * v8);
  v33 = (((v31 + v30) | 0x2DBC9B9342966C8DLL) - ((v31 + v30) | a3) + a3) ^ 0x87214129A072B8F1;
  v34 = v33 ^ __ROR8__(v30, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((v35 + v34) | 0xABFB04E607E229F0) - ((v35 + v34) | a6) + a6) ^ 0x244925A5F9394543;
  *(v18 - 0x77618121D9EA8995) = (((__ROR8__(v36, 8) + (v36 ^ __ROR8__(v34, 61))) ^ a5) >> (8 * ((v18 + 107) & 7))) ^ HIBYTE(v13) ^ 0xE9;
  v37 = __ROR8__((v18 - 0x77618121D9EA8994) & 0xFFFFFFFFFFFFFFF8, 8);
  v38 = ((0x296E95066F186A7ELL - v37) & 0x51F1AF3817ABCAD4) + v37 + a1 - ((v37 + a1) & 0x53F1AF3817ABCAD4);
  v39 = v38 ^ 0x54D3B6DBEB8CFEA6;
  v38 ^= 0xE058E1176CB052A8;
  v40 = (__ROR8__(v39, 8) + v38) ^ v10;
  v41 = __ROR8__(v40, 8);
  v42 = v40 ^ __ROR8__(v38, 61);
  v43 = (v41 + v42 - ((2 * (v41 + v42)) & 0x75A6D19F0C6867C0) + 0x3AD368CF863433E0) ^ 0x16E4E08C7F905D78;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (((2 * (v45 + v44)) | 0xCC64C34E16E9732CLL) - (v45 + v44) + 0x19CD9E58F48B466ALL) ^ 0x5B4F4C4ECA7E18FCLL;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ a4;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (((2 * (v50 + v49)) & 0x19C65FC09C0D4C32) - (v50 + v49) - 0xCE32FE04E06A61ALL) ^ 0x59810AA5531D8D9ALL;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (((v53 + v52) | 0x78989669C029B6EBLL) - ((v53 + v52) | v14) + v14) ^ 0xF72AB72A3EF2DA58;
  *(v18 - 0x77618121D9EA8994) = (((__ROR8__(v54, 8) + (v54 ^ __ROR8__(v52, 61))) ^ a5) >> (8 * ((v18 + 108) & 7))) ^ BYTE2(v13) ^ 0xD5;
  v55 = (v18 - 0x77618121D9EA8993);
  v56 = __ROR8__((v18 - 0x77618121D9EA8993) & 0xFFFFFFFFFFFFFFF8, 8);
  v57 = ((0x296E95066F186A7ELL - v56) & 0x815F3681021F858BLL) + v56 + a1 - ((v56 + a1) & 0x835F3681021F858BLL);
  v58 = v57 ^ 0x847D2F62FE38B1F9;
  v57 ^= 0x30F678AE79041DF7uLL;
  v59 = __ROR8__(v58, 8);
  v60 = (((v59 + v57) | 0x97B76A051CE23393) - ((v59 + v57) | v11) + v11) ^ 0x830D6D4F337A5C76;
  v61 = v60 ^ __ROR8__(v57, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ a2;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = __ROR8__(v62, 8);
  v65 = (((2 * (v64 + v63)) & 0x4A116F4A475E6212) - (v64 + v63) - 0x2508B7A523AF310ALL) ^ 0x678A65B31D5A6F9CLL;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (((2 * (v67 + v66)) & 0x1C31660AE6BB1B66) - (v67 + v66) + 0x71E74CFA8CA2724CLL) ^ 0xF357CCED33E1B225;
  v69 = v68 ^ __ROR8__(v66, 61);
  v70 = __ROR8__(v68, 8);
  v71 = (((v70 + v69) & 0xE46CE57B6C42BADDLL ^ 0xE444C40A4C42304CLL) + ((v70 + v69) & 0x1B931A8493BD4522 ^ 0x1101080400B80523) - 1) ^ 0x5FD816B4AE1EE112;
  v72 = v71 ^ __ROR8__(v69, 61);
  v73 = __ROR8__(v71, 8);
  v74 = (((v73 + v72) | 0x66DE1BC79C4C0F5ELL) - ((v73 + v72) | v9) + v9) ^ 0xE96C3A84629763EDLL;
  LOBYTE(v72) = (((__ROR8__(v74, 8) + (v74 ^ __ROR8__(v72, 61))) ^ a5) >> (8 * ((v18 + 109) & 7))) ^ BYTE1(v13) ^ 0xC7;
  v18 -= 0x77618121D9EA8992;
  v75 = __ROR8__(v18 & 0xFFFFFFFFFFFFFFF8, 8);
  *v55 = v72;
  v76 = ((2 * (v75 + a1)) | 0xC93FF201A6CF04B4) - (v75 + a1) + 0x1B6006FF2C987DA6;
  v77 = v76 ^ 0xE3BDE0E32F40B628;
  v76 ^= 0x5736B72FA87C1A26uLL;
  v78 = (__ROR8__(v77, 8) + v76) ^ v10;
  v79 = v78 ^ __ROR8__(v76, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ a2;
  v81 = __ROR8__(v80, 8);
  v82 = v80 ^ __ROR8__(v79, 61);
  v83 = (((v81 + v82) | 0x30B131F11BB74009) - ((v81 + v82) | a8) + a8) ^ 0x8DCC1C18DABDE163;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ a4;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8);
  v88 = (((2 * (v87 + v86)) | 0xE331C78B2F58FF32) - (v87 + v86) - 0x7198E3C597AC7F99) ^ v15;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0x8FB22143FEDB6CB3;
  *v18 = v13 ^ (((__ROR8__(v90, 8) + (v90 ^ __ROR8__(v89, 61))) ^ a5) >> (8 * (v18 & 7u))) ^ 0x11;
  return v32();
}

uint64_t sub_10015A058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17)
{
  a15 = v17;
  a17 = v18;
  a16 = v19 + 634647737 * (((&a15 | 0xD11C7EF9) - &a15 + (&a15 & 0x2EE38100)) ^ 0xBC8A5105) - 1480099329;
  (*(v20 + 8 * (v19 ^ 0xE6E0)))(&a15);
  return (*(v20 + 8 * v19))(((2287 * (v19 ^ 0x2D64) - 6925) | v21) + v22);
}

uint64_t sub_10015A130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x25C]) = v3;
  *(a3 + 192) = *(v5 + 8 * v4);
  return (*(v5 + 8 * (v4 ^ 0x68E0)))();
}

uint64_t sub_10015A228(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, uint64_t a34, int a35, uint64_t a36, uint64_t a37)
{
  v38 = (a33 + 3 * a35 + 55512779 - 334895660 + a2 - 648576830);
  v39 = a1 + LODWORD(STACK[0x2F4]) + LODWORD(STACK[0x2F8]) + 1701333028 + v38;
  v40 = (v39 ^ 0x6FFFF5FBu) + 633548078;
  v41 = LODWORD(STACK[0x308]);
  v42 = (v41 ^ 0x846FBD53) & (2 * (v41 & 0xD06FB963)) ^ v41 & 0xD06FB963;
  v43 = ((2 * (v41 ^ 0x8477FF93)) ^ 0xA8308DE0) & (v41 ^ 0x8477FF93) ^ (2 * (v41 ^ 0x8477FF93)) & 0x541846F0;
  v44 = v39 ^ v41 ^ ((v39 ^ 0x9B25BC3C) - 786864917) ^ ((v39 ^ 0x402E5D68) + 168986047) ^ ((v39 ^ 0x1373386) + 1259072337) ^ v40 ^ (2 * (((4 * (v43 ^ 0x54084210)) & 0x541846F0 ^ 0x500002C0 ^ ((4 * (v43 ^ 0x54084210)) ^ 0x50611BC0) & (v43 ^ 0x54084210)) & (16 * (v43 & (4 * v42) ^ v42)) ^ v43 & (4 * v42) ^ v42));
  v45 = *(a37 + 8 * ((9832 * (((LODWORD(STACK[0x310]) - LODWORD(STACK[0x314]) + LODWORD(STACK[0x31C]) + (((v44 ^ 0xAA90CE3A) - 923324614) ^ ((v44 ^ 0x8B1CAF9B) - 377794919) ^ ((v44 ^ 0xCC00FFEB) - 1368973591)) - 1) & 1) == 0)) ^ v37));
  return v45(v45, (v37 + 269531085), v38, a4, 1082407449, 3917172377, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_10015A5D0@<X0>(int a1@<W8>)
{
  v8 = ((a1 - 27871) ^ (a1 - 237361921) & 0xE25FCFBu ^ 0xF165) & (v5 + 15);
  v9 = 1 - v6;
  v11 = (v1 - v6) > 0xF && (1 - v6 + v2 - v5 + v8) > 0xF && (v9 + v3 - v5 + v8) > 0xF;
  v12 = v9 + v4 - v5 + v8;
  v14 = v11 && v12 > 0xF;
  return (*(v7 + 8 * ((25 * v14) ^ a1)))();
}

uint64_t sub_10015A760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v59 = *(a56 + 24) - v56;
  v61 = v59 == 1712546491 || (v59 & 0xF) != ((v57 - 27847) ^ 0x2D58) - 6989;
  v62 = *(v58 + 8 * ((v61 | (8 * v61)) ^ v57));
  LODWORD(STACK[0x2AC]) = -42899;
  return v62();
}

uint64_t sub_10015A820(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v27 = veorq_s8(a3, a5);
  v28 = veorq_s8(a4, a5);
  v29 = veorq_s8(a2, a5);
  v30 = veorq_s8(a1, a5);
  v31 = vandq_s8(veorq_s8(vandq_s8(vaddq_s64(a1, a1), a6), a7), a1);
  v32 = vandq_s8(veorq_s8(vandq_s8(vaddq_s64(a2, a2), a6), a7), a2);
  v33 = vaddq_s64(v30, v30);
  v34 = vaddq_s64(v29, v29);
  v35 = vaddq_s64(v28, v28);
  v36 = vandq_s8(veorq_s8(vandq_s8(vaddq_s64(a4, a4), a6), a7), a4);
  v37 = vaddq_s64(v27, v27);
  v38 = vandq_s8(veorq_s8(vandq_s8(vaddq_s64(a3, a3), a6), a7), a3);
  v39 = veorq_s8(vandq_s8(veorq_s8(v37, a8), v27), vandq_s8(v37, v19));
  v40 = veorq_s8(vandq_s8(veorq_s8(v34, a8), v29), vandq_s8(v34, v19));
  v41 = veorq_s8(vandq_s8(veorq_s8(v33, a8), v30), vandq_s8(v33, v19));
  v42 = veorq_s8(vandq_s8(veorq_s8(v35, a8), v28), vandq_s8(v35, v19));
  v43 = veorq_s8(v41, v20);
  v44 = veorq_s8(v40, v20);
  v45 = veorq_s8(v42, v20);
  v46 = veorq_s8(v39, v20);
  v47 = veorq_s8(vandq_s8(veorq_s8(v39, v21), vshlq_n_s64(v38, 2uLL)), v38);
  v48 = veorq_s8(vandq_s8(veorq_s8(v42, v21), vshlq_n_s64(v36, 2uLL)), v36);
  v49 = veorq_s8(vandq_s8(veorq_s8(v40, v21), vshlq_n_s64(v32, 2uLL)), v32);
  v64.val[2] = vshlq_n_s64(v46, 2uLL);
  v50 = vshlq_n_s64(v45, 2uLL);
  v51 = vshlq_n_s64(v44, 2uLL);
  v52 = vshlq_n_s64(v43, 2uLL);
  v53 = veorq_s8(vandq_s8(veorq_s8(v41, v21), vshlq_n_s64(v31, 2uLL)), v31);
  v54 = veorq_s8(vandq_s8(veorq_s8(vandq_s8(veorq_s8(v52, v22), v43), vandq_s8(v52, v19)), vshlq_n_s64(v53, 4uLL)), v53);
  v55 = veorq_s8(vandq_s8(veorq_s8(vandq_s8(veorq_s8(v51, v22), v44), vandq_s8(v51, v19)), vshlq_n_s64(v49, 4uLL)), v49);
  v56 = veorq_s8(vandq_s8(veorq_s8(vandq_s8(veorq_s8(v50, v22), v45), vandq_s8(v50, v19)), vshlq_n_s64(v48, 4uLL)), v48);
  v57 = veorq_s8(vandq_s8(veorq_s8(vandq_s8(veorq_s8(v64.val[2], v22), v46), vandq_s8(v64.val[2], v19)), vshlq_n_s64(v47, 4uLL)), v47);
  v58 = veorq_s8(veorq_s8(a4, v23), vaddq_s64(v56, v56));
  v64.val[0] = veorq_s8(veorq_s8(a2, v23), vaddq_s64(v55, v55));
  v59 = vaddq_s64(a3, v24);
  v60 = vaddq_s64(a4, v24);
  v61 = vaddq_s64(a2, v24);
  v64.val[1] = veorq_s8(veorq_s8(a1, v23), vaddq_s64(v54, v54));
  v64.val[3] = vaddq_s64(a1, v24);
  v62 = veorq_s8(veorq_s8(a3, v23), vaddq_s64(v57, v57));
  v64.val[1].i64[0] *= v64.val[3].i64[0];
  v64.val[1].i64[1] *= v64.val[3].i64[1];
  v64.val[0].i64[0] *= v61.i64[0];
  v64.val[0].i64[1] *= v61.i64[1];
  v64.val[2].i64[0] = v58.i64[0] * v60.i64[0];
  v64.val[2].i64[1] = v58.i64[1] * v60.i64[1];
  v64.val[3].i64[0] = v62.i64[0] * v59.i64[0];
  v64.val[3].i64[1] = v62.i64[1] * v59.i64[1];
  *(v13 + ~v18 + a13) = vrev64_s8(*&vqtbl4q_s8(v64, v25));
  return (*(v15 + 8 * (v16 | (32 * (v14 + v18 == v17)))))(vaddq_s64(a1, v26), vaddq_s64(a2, v26), vaddq_s64(a3, v26), vaddq_s64(a4, v26));
}

void sub_10015AAD4()
{
  if ((v2 ^ 0x7E1FBDFC) + ((2 * v2) & 0xFC3E30D8) == 2116009468)
  {
    v0 = 185196628;
  }

  else
  {
    v0 = 185154604;
  }

  *(v1 + 24) = v0;
}

void sub_10015AB50(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = *(a1 + 32) == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = v1;
  __asm { BRAA            X11, X17 }
}

uint64_t sub_10015AC40@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, unint64_t a20, unint64_t a21, unint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unint64_t a34, unint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, unint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x468] = v70;
  STACK[0x430] = a15;
  STACK[0x2C8] = a21;
  STACK[0x358] = v67;
  STACK[0x360] = a22;
  STACK[0x388] = v69;
  STACK[0x390] = a20;
  STACK[0x3C0] = a19;
  STACK[0x440] = v66;
  STACK[0x248] = v65;
  STACK[0x2B0] = a14;
  STACK[0x2B8] = a1;
  STACK[0x410] = a34;
  STACK[0x298] = a35;
  STACK[0x348] = a13;
  STACK[0x350] = a52;
  return (*(v68 + 8 * (a65 + 3133)))();
}

void sub_10015ACB0(uint64_t a1)
{
  v1 = 1603510583 * (((a1 | 0x8043F914) - (a1 & 0x8043F914)) ^ 0x1798CBBF);
  v2 = *(a1 + 56) ^ v1;
  v3 = *a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v6 = *(a1 + 8) - v1;
  v12 = (&v11 ^ *(a1 + 32) ^ 0x2366BA2A837E302ELL) + 2 * (&v11 & (*(a1 + 32) ^ 0x2366BA2A837E302ELL));
  v11 = (v12 & 0x11249294) + ((2 * v12) & 0x5225080) + (((v12 & 0x4A91284A) + 311502932) & 0x4A91284A) + (((2 * v12) & 0x40940042 | v12 & 0xA44A4521) ^ 0xA04A0021) + 16814224;
  v14 = 1497668682;
  v13 = -371865839;
  v10 = v3 == 0x217E172EFA1E81CLL || v4 == 0 || v5 == 0 || v6 == 1603416383;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10015AFB8@<X0>(uint64_t a1@<X8>)
{
  v8 = (v6 - 1) & 0xF;
  v12 = (1 - a1 + v3 - v6 + v8) < 0x10 || v1 - a1 < ((v2 + 45307) ^ 0xC6F8uLL) || (v4 - a1 - v6 + v8 + 2) < 0x10 || (1 - a1 + v5 - v6 + v8) < 0x10;
  return (*(v7 + 8 * ((v12 | (2 * v12)) ^ v2)))();
}

uint64_t sub_10015B03C()
{
  v3 = 906386353 * ((((v2 - 240) | 0x360FD817) - (v2 - 240) + ((v2 - 240) & 0xC9F027E8)) ^ 0x70E1533);
  *(v2 - 240) = &STACK[0x610];
  *(v2 - 232) = v3 + v1 - 3084;
  *(v2 - 228) = v3 ^ 0xF1D0BA31;
  *(v2 - 224) = 0;
  *(v2 - 216) = &STACK[0x474];
  v4 = (*(v0 + 8 * (v1 + 41823)))(v2 - 240);
  return (*(v0 + 8 * (((*(v2 - 208) == v1 - 371876005) * (((v1 + 899404493) & 0xCA640DFF) - 2076)) ^ v1)))(v4);
}

uint64_t sub_10015B140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = 193924789 * ((~(v14 - 144) & 0xC5A329B1 | (v14 - 144) & 0x3A5CD648) ^ 0x73181BD7);
  *(v14 - 128) = v15 + 19283 + (v13 ^ 0x68BA);
  *(v14 - 120) = ((((v13 ^ 0x68BA) - 19849) ^ 0xE935D077) + v11) ^ v15;
  *(v14 - 144) = a10;
  *(v14 - 136) = v12;
  v16 = (*(v10 + 8 * ((v13 ^ 0x68BA) + 21750)))(v14 - 144);
  return (*(v10 + 8 * (v13 ^ 0x68BA)))(v16);
}

uint64_t sub_10015B21C(uint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t a4, uint64_t a5, double a6, __n128 a7, __n128 a8, __n128 a9, int8x16_t a10, double a11, int8x16_t a12)
{
  v18 = v15 & 0xF;
  v20.i64[0] = vqtbl4q_s8(*(&a7 - 1), a10).u64[0];
  *&v20.i64[1] = a11;
  v21 = vrev64q_s8(vmulq_s8(v20, a12));
  *a3 = veorq_s8(veorq_s8(veorq_s8(veorq_s8(*(v14 + v18 - 15), *a3), *(v18 + v12 - 9)), *(a2 + v18 + v13 + a5)), vextq_s8(v21, v21, 8uLL));
  return (*(v17 + 8 * ((252 * (a4 != 0)) ^ v16)))();
}

uint64_t sub_10015B3EC@<X0>(int a1@<W8>)
{
  v3 = a1 ^ 0x1E97;
  v4 = (*(v1 + 8 * (a1 ^ 0x5B05)))(v2 + 33, 272);
  return (*(v1 + 8 * (((76 * (((v3 - 32191) | 0x2E20) ^ 0x3F83) - 36950) * (v4 >> 31)) ^ v3)))();
}

uint64_t sub_10015B4DC(uint64_t a1, int8x16_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, int a8)
{
  v16.val[0].i64[0] = (v11 + a5 - 1) & 0xF;
  v16.val[0].i64[1] = (v11 + a5 + 14) & 0xF;
  v16.val[1].i64[0] = (v11 + a5 + 13) & 0xF;
  v16.val[1].i64[1] = (v11 + a5 + 12) & 0xF;
  v16.val[2].i64[0] = (v11 + a5 + 11) & 0xF;
  v16.val[2].i64[1] = (a6 + a5 + v12) & 0xF;
  v16.val[3].i64[0] = (v11 + a5 + 9) & 0xF;
  v16.val[3].i64[1] = (v11 + a5) & 0xF ^ 8;
  *(a7 + a5) = veor_s8(veor_s8(veor_s8(*(v9 + v16.val[0].i64[0] - 7), *(a7 + a5)), veor_s8(*(v10 + v16.val[0].i64[0] - 7), *(v8 + v16.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v16, a2), a3)));
  return (*(v14 + 8 * (((a1 == a5) * a8) ^ v13)))();
}

uint64_t sub_10015B628(int a1, __n128 a2)
{
  v5.n128_u64[0] = (v2 + 13) & 0xF;
  v5.n128_u64[1] = (v2 + 12) & 0xF;
  v6.n128_u64[0] = (v2 + 4 + (a1 ^ 0x1B)) & 0xF;
  v6.n128_u64[1] = (v2 + 10) & 0xF;
  v7.n128_u64[0] = (v2 + 9) & 0xF;
  v7.n128_u64[1] = v2 & 0xF ^ 8;
  v11.val[0].i64[0] = (v2 + 7) & 0xF;
  v11.val[0].i64[1] = (v2 + 6) & 0xF;
  v11.val[1].i64[0] = (v2 + 5) & 0xF;
  v11.val[1].i64[1] = (v2 + 4) & 0xF;
  v11.val[2].i64[0] = (v2 + 3) & 0xF;
  v11.val[2].i64[1] = (v2 + 2) & 0xF;
  v11.val[3].i64[0] = (v2 + 1) & 0xF;
  v11.val[3].i64[1] = v2 & 0xF;
  v8.n128_u64[0] = 0xD1D1D1D1D1D1D1D1;
  v8.n128_u64[1] = 0xD1D1D1D1D1D1D1D1;
  v9.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v9.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(v4 + 8 * a1))((769 * (a1 ^ 0x151B)) ^ 0x6D04u, v2 + v3 - 16, (v2 & 0x10) - 16, v2 & 0x10 ^ 0x10, (769 * (a1 ^ 0x151Bu)) ^ 0x1503, 27, a2, v5, v6, v7, xmmword_100BC76B0, vqtbl4q_s8(v11, xmmword_100BC76B0), v8, v9);
}

uint64_t sub_10015B730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = (v12 - 5653) | 0x2060;
  v16 = (((a12 - 358140832) ^ 0xCEF9ACA7) + 1961598027) ^ (a12 - 358140832) ^ (((a12 - 358140832) ^ 0x94CEFE3B) + 786222807) ^ (((a12 - 358140832) ^ 0x7F2FEFFF) - 985800941) ^ (v13 - 622409472 + ((v15 + 1626673161) ^ (a12 - 358140832)));
  v18 = v16 == 1173212946 || (((v15 + 2079546749) & 0x840C785F ^ 0x384A) & v16) != 2;
  return (*(v14 + 8 * ((239 * v18) ^ v15)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_10015B87C(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, int64x2_t a6, int8x16_t a7, int64x2_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, int a14)
{
  v28 = veorq_s8(veorq_s8(veorq_s8(a1, vaddq_s64(veorq_s8(a1, a5), a6)), veorq_s8(vaddq_s64(veorq_s8(a1, a7), a8), vaddq_s64(veorq_s8(a1, v19), v20))), veorq_s8(vaddq_s64(veorq_s8(a1, v21), v22), v23));
  v46.val[0] = veorq_s8(veorq_s8(veorq_s8(a2, vaddq_s64(veorq_s8(a2, a5), a6)), veorq_s8(vaddq_s64(veorq_s8(a2, a7), a8), vaddq_s64(veorq_s8(a2, v19), v20))), veorq_s8(vaddq_s64(veorq_s8(a2, v21), v22), v23));
  v46.val[1] = veorq_s8(veorq_s8(veorq_s8(a4, vaddq_s64(veorq_s8(a4, a5), a6)), veorq_s8(vaddq_s64(veorq_s8(a4, a7), a8), vaddq_s64(veorq_s8(a4, v19), v20))), veorq_s8(vaddq_s64(veorq_s8(a4, v21), v22), v23));
  v29 = veorq_s8(veorq_s8(veorq_s8(a3, vaddq_s64(veorq_s8(a3, a5), a6)), veorq_s8(vaddq_s64(veorq_s8(a3, a7), a8), vaddq_s64(veorq_s8(a3, v19), v20))), veorq_s8(vaddq_s64(veorq_s8(a3, v21), v22), v23));
  v46.val[3] = vaddq_s64(a2, v24);
  v30 = v29.i64[1];
  v31 = v29.i64[0];
  v32 = vaddq_s64(a3, v24);
  v33 = v32.i64[1];
  v34 = v32.i64[0];
  v46.val[2] = vaddq_s64(a4, v24);
  v35 = v30 * v33;
  v36 = v46.val[1].i64[0];
  v37 = v46.val[0].i64[1];
  v38 = v46.val[1].i64[1] * v46.val[2].i64[1];
  v39 = v46.val[0].i64[0];
  v46.val[1].i64[0] = v31 * v34;
  v40 = v36 * v46.val[2].i64[0];
  v41 = v28.i64[1];
  v42 = v28.i64[0];
  v46.val[1].i64[1] = v35;
  v43 = vaddq_s64(a1, v24);
  v46.val[0].i64[0] = v40;
  v46.val[0].i64[1] = v38;
  v46.val[2].i64[0] = v39 * v46.val[3].i64[0];
  v46.val[2].i64[1] = v37 * v46.val[3].i64[1];
  v46.val[3].i64[0] = v42 * v43.i64[0];
  v46.val[3].i64[1] = v41 * v43.i64[1];
  v43.i64[0] = vqtbl4q_s8(v46, v25).u64[0];
  *(a10 + a11) = vrev64_s8(veor_s8(vadd_s8(vsub_s8(*v43.i8, vand_s8(vadd_s8(*v43.i8, *v43.i8), v26)), v27), v27));
  v44 = vdupq_n_s64(v16);
  return (*(v18 + 8 * (((a13 & ~((v17 | v15) >> a12)) * a14) ^ v14)))(vaddq_s64(a1, v44), vaddq_s64(a2, v44), vaddq_s64(a3, v44), vaddq_s64(a4, v44));
}

uint64_t sub_10015BAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, int a22, char a23)
{
  v26 = *(a8 + 96);
  v27 = 634647737 * ((v25 - 136 - 2 * ((v25 - 136) & 0x2D507858) + 760248415) ^ 0x40C657A3);
  *(v25 - 128) = a8;
  *(v25 - 120) = v23 - v27 + 20913;
  *(v25 - 136) = v27 + v26 - ((v26 << ((a23 & 0xFD) - 75)) & 0x55658502) - 1431125375;
  (*(v24 + 8 * a22))(v25 - 136);
  return (*(v24 + 8 * a21))(4294963986);
}

uint64_t sub_10015BC08@<X0>(uint64_t a1@<X8>, __n128 a2@<Q1>)
{
  a2.n128_u16[0] = -5141;
  a2.n128_u8[2] = -21;
  a2.n128_u8[3] = -21;
  a2.n128_u8[4] = -21;
  a2.n128_u8[5] = -21;
  a2.n128_u8[6] = -21;
  a2.n128_u8[7] = -21;
  return (*(v6 + 8 * v3))(v4 & 7, 8 - (v4 & 0x18), -v5, a1 + -8 - v5, v2 + -8 - v5, 225, xmmword_100F523B0, a2);
}

uint64_t sub_10015BC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12)
{
  v17 = (((v16 ^ 0xE5A45BA1) + 442213471) ^ ((v16 ^ 0x82ABBF63) + 2102673565) ^ (((((v13 - 598509769) & 0x23ACD6C7) - 1898340595) ^ v16) + 1898306605)) + 1310093904;
  v20 = (((((v17 ^ (((v13 - 68435913) & 0xC4D7F9E9) - 1739786996)) - 1028673224) ^ v17 ^ ((v17 ^ 0xF69B5AD7) + 1831079445) ^ ((v17 ^ 0x2734EBE0) - 1131692252) ^ ((v17 ^ 0xECFFFFFF) + 2000726845)) & 0xFFFFFFFC ^ a12) == 0x8D956C2D || v15 == v16) && v12 != a7;
  return (*(v14 + 8 * ((63 * v20) ^ v13)))();
}

uint64_t sub_10015BF98()
{
  LODWORD(STACK[0x3A8]) = 0;
  *(v3 - 144) = *(v3 - 124) < 0xD061EBA4;
  v4 = v1 - 24761;
  v5 = v1 + 1920080324;
  v6 = v1;
  v7 = v0 & 0xFFFFFFF3 ^ 0x79FD60CDLL;
  *(v3 - 152) = v7;
  v8 = *(v2 + v7);
  v9 = v0;
  LODWORD(STACK[0x3C0]) = v4 | 0x8A20;
  v10 = v0 & ((v4 | 0x8A20) ^ 0xFFFF74D4) ^ 0x79FD60C9;
  *(v3 - 208) = v10;
  v11 = *(v2 + v10);
  v12 = v5 & 0x8D8DFFEF;
  v13 = STACK[0x380];
  v14 = *(STACK[0x380] + 4 * (v8 ^ 0x4B));
  v15 = v9 ^ 0x79FD60C9;
  *(v3 - 176) = v15;
  v16 = *(v2 + v15);
  LODWORD(STACK[0x3AC]) = v12;
  v17 = (v12 - 31605) & v9 ^ 0x79FD60CDLL;
  *(v3 - 200) = v17;
  v18 = STACK[0x390];
  v19 = *(STACK[0x390] + 4 * (v11 ^ 0x38));
  v20 = v8 | 0x4C989600;
  LODWORD(v11) = *(v13 + 4 * (v16 ^ 0xCA));
  v21 = *(STACK[0x390] + 4 * (*(v2 + v17) ^ 0x4CLL));
  v22 = v9 & 0xFFFFFFF5 ^ 0x79FD60CBLL;
  *(v3 - 168) = v22;
  LODWORD(v22) = *(v2 + v22);
  v23 = 208 - (v22 ^ 0xC4);
  LODWORD(v22) = v22 ^ 0x14;
  v24 = STACK[0x398];
  v25 = *(STACK[0x398] + 4 * ((-v22 ^ v23 ^ 0x7FBE6F5A ^ (v22 - ((2 * v22) & 0xB4) + 2143186778)) + 208));
  v26 = v9 & 0xFFFFFFF0 ^ 0x79FD60CFLL;
  *(v3 - 192) = v26;
  v27 = STACK[0x388];
  v28 = *(STACK[0x388] + (*(v2 + v26) ^ 0xEBLL));
  v29 = v9 & 0xFFFFFFF1 ^ 0x79FD60CFLL;
  *(v3 - 224) = v29;
  v30 = *(v2 + v29);
  v31 = *(v24 + 4 * (v30 ^ 0x1F));
  v32 = v11 ^ v16;
  v33 = v9 & 0xFFFFFFF2 ^ 0x79FD60CDLL;
  *(v3 - 184) = v33;
  v34 = *(v2 + v33);
  v35 = v9 & 0xFFFFFFFE ^ 0x79FD60C9;
  *(v3 - 240) = v35;
  LODWORD(v11) = *(v18 + 4 * (v34 ^ 0x82)) - ((2 * *(v18 + 4 * (v34 ^ 0x82)) + 710786530) & 0x4D30AB46);
  v36 = *(v18 + 4 * (*(v2 + v35) ^ 0x1ELL));
  v37 = v9 & 0xFFFFFFFB ^ 0x79FD60CDLL;
  *(v3 - 160) = v37;
  v38 = v20 ^ v28 ^ v30;
  v39 = *(v2 + v37);
  v40 = v14 ^ v38 ^ v31 ^ (v11 - 1144572780);
  v41 = v9 & 0xFFFFFFF7 ^ 0x79FD60C9;
  *(v3 - 216) = v41;
  v42 = *(v2 + v41);
  v43 = *(v13 + 4 * (v42 ^ 0x2C));
  LODWORD(v41) = (v19 + 355393265) ^ v22;
  v44 = ~v43 & 0x20000000;
  v45 = v41 ^ 0xBF3BF1BA ^ v25;
  if ((v44 & v45) != 0)
  {
    v44 = -v44;
  }

  v46 = v44 + v45;
  v47 = v43 & 0xDFFFFFFF ^ v42;
  v48 = v9 & 0xFFFFFFFC ^ 0x79FD60CBLL;
  STACK[0x3D0] = v48;
  v49 = *(v2 + v48) ^ 0x91;
  LODWORD(v48) = v9;
  *(v3 - 228) = v9;
  LODWORD(v49) = *(v27 + v49);
  v50 = v9 & 0xFFFFFFFD ^ 0x79FD60CBLL;
  *(v3 - 248) = v50;
  LODWORD(v49) = v32 ^ (v36 + 355393265) ^ v49;
  v51 = *(v13 + 4 * (v39 ^ 0xD9));
  v52 = v49 ^ *(v24 + 4 * (*(v2 + v50) ^ 1)) ^ *(v2 + v50);
  v53 = v48 & 0xFFFFFFF9 ^ 0x79FD60CFLL;
  STACK[0x3D8] = v53;
  LODWORD(v49) = v39 ^ v51 ^ *(v2 + v53) ^ *(v24 + 4 * (*(v2 + v53) ^ 0xBDLL));
  v54 = v48 & 0xFFFFFFF8 ^ 0x79FD60CFLL;
  *(v3 - 256) = v54;
  v55 = v49 ^ (v21 + 355393265);
  LODWORD(v49) = *(v27 + (*(v2 + v54) ^ 0xB3));
  v56 = v48 & 0xFFFFFFF4 ^ 0x79FD60CBLL;
  STACK[0x3C8] = v56;
  v57 = v55 ^ v49;
  v58 = v47 ^ *(v27 + (*(v2 + v56) ^ 0xC2)) ^ v46;
  v59 = *(&off_1010A0B50 + (v6 ^ 0x6509));
  v60 = STACK[0x370];
  LODWORD(STACK[0x3BC]) = v40;
  v61 = v60 ^ v40;
  v62 = v59 - 1850517790;
  LODWORD(v59) = (((v60 ^ v40) >> 16) ^ 0x59) - 1850458591 + *(v59 - 1850517790 + 4 * (((v60 ^ v40) >> 16) ^ 0x95u));
  LODWORD(STACK[0x3C4]) = v6;
  v63 = *(&off_1010A0B50 + (v6 ^ 0x6405)) - 76689330;
  v64 = STACK[0x378];
  LODWORD(STACK[0x3B8]) = v52;
  v65 = v64 ^ v52;
  LOBYTE(v51) = v65 ^ 0x93;
  LODWORD(v49) = *&v63[4 * ((v65 ^ 0x6F5C4793u) >> 24)];
  LODWORD(v54) = 784548883 * v49 - 1698402180;
  LODWORD(v49) = v54 ^ (453840972 * v49 + 185713136);
  LODWORD(v59) = LODWORD(STACK[0x364]) ^ v54 ^ v59;
  v66 = *(&off_1010A0B50 + (v6 ^ 0x6A06)) - 1407528379;
  LODWORD(v54) = STACK[0x368];
  LODWORD(STACK[0x3B0]) = v58;
  LODWORD(v54) = v54 ^ v58;
  v67 = v54 ^ 0x20CF9331;
  v68 = ((v54 ^ 0x9331) >> 8);
  LODWORD(v59) = v59 ^ *&v66[4 * (v68 ^ 0xDB)] ^ (8 * v49);
  LODWORD(v49) = STACK[0x374];
  LODWORD(STACK[0x3B4]) = v57;
  LODWORD(v49) = v49 ^ v57;
  v69 = v49 ^ 0x9762B16A;
  v70 = *(&off_1010A0B50 + v6 - 22915) - 399724902;
  v71 = v59 ^ v68 ^ (*&v70[4 * (v49 ^ 0xD6)] + (v49 ^ 0x6A) + 385123580);
  v65 ^= 0x6F77D9CCu;
  LODWORD(v49) = *&v63[4 * ((v49 ^ 0x9762B16A) >> 24)];
  LODWORD(v54) = LODWORD(STACK[0x360]) ^ BYTE1(v61) ^ (BYTE2(v65) - 1850458591 + *(v62 + 4 * (BYTE2(v65) ^ 0xCCu))) ^ *&v66[4 * (BYTE1(v61) ^ 0x10)] ^ (784548883 * v49 - 1698402180) ^ (8 * ((784548883 * v49 - 1698402180) ^ (453840972 * v49 + 185713136))) ^ (*&v70[4 * (v54 ^ 0x8D)] + (v54 ^ 0x31) + 385123580);
  LODWORD(v59) = *&v63[4 * HIBYTE(v67)];
  LODWORD(v49) = 784548883 * v59 - 1698402180;
  v72 = LODWORD(STACK[0x35C]) ^ BYTE1(v65) ^ *&v66[4 * (BYTE1(v65) ^ 0xDB)] ^ (BYTE2(v69) - 1850458591 + *(v62 + 4 * (BYTE2(v69) ^ 0xCCu))) ^ ((v61 ^ 1) + 385123580 + *&v70[4 * (v61 ^ 0xBD)]) ^ v49 ^ (8 * (((351157776 - -1156771764 * v59) ^ (v49 - ((-1156771764 * v59 + 1796325872) ^ v49)) ^ 0x1C1A95EA ^ (-1156771764 * v59 - ((2 * (-1156771764 * v59 + 1796325872)) & 0x18352BD0) + 120346586)) + v49));
  v73 = *&v63[4 * (HIBYTE(v61) ^ 0x79)];
  v74 = LODWORD(STACK[0x358]) ^ BYTE1(v69) ^ (784548883 * v73 - 1698402180) ^ *&v66[4 * (BYTE1(v69) ^ 0xDB)] ^ (*&v70[4 * (v51 ^ 0xE3)] + v65 + 385123580) ^ (BYTE2(v67) - 1850458591 + *(v62 + 4 * (BYTE2(v67) ^ 0xCCu))) ^ (8 * ((453840972 * v73 + 185713136) ^ (784548883 * v73 - 1698402180)));
  v75 = v74 ^ 0x8150D1CF;
  v76 = v71 ^ 0x7B9DDEC9;
  v77 = *&v63[4 * ((v71 ^ 0x7B9DDEC9u) >> 24)];
  v78 = v54 ^ 0x18DE78F3;
  v79 = LODWORD(STACK[0x354]) ^ (784548883 * v77 - 1698402180) ^ *&v66[4 * (BYTE1(v72) ^ 0xED)] ^ (8 * ((784548883 * v77 - 1698402180) ^ (453840972 * v77 + 185713136))) ^ (*&v70[4 * (v54 ^ 0x4F)] + (v54 ^ 0xF3) + 385123580) ^ BYTE1(v72) ^ (*(v62 + 4 * (BYTE2(v75) ^ 0xCCu)) + BYTE2(v75) - 1850458591);
  v80 = *&v63[4 * ((v54 ^ 0x18DE78F3) >> 24)];
  v81 = LODWORD(STACK[0x350]) ^ *&v66[4 * (BYTE1(v75) ^ 0xDB)] ^ (BYTE2(v76) - 1850458591 + *(v62 + 4 * (BYTE2(v76) ^ 0xCCu))) ^ (784548883 * v80 - 1698402180) ^ (8 * ((453840972 * v80 + 185713136) ^ (784548883 * v80 - 1698402180))) ^ BYTE1(v75) ^ 0x7DCFA672;
  v82 = ((LOBYTE(STACK[0x350]) ^ v66[4 * (BYTE1(v75) ^ 0xDB)] ^ (BYTE2(v76) + 33 + *(v62 + 4 * (BYTE2(v76) ^ 0xCCu))) ^ (19 * v80 + 124) ^ (8 * ((76 * v80 - 16) ^ (19 * v80 + 124)))) ^ BYTE1(v75) ^ 0x72) & 0x40;
  if ((v81 & 0x40 & (v70[4 * (v72 ^ 0x90)] + (v72 ^ 0x2C) - 4)) != 0)
  {
    v82 = -v82;
  }

  v83 = (v82 + *&v70[4 * (v72 ^ 0x90)] + (v72 ^ 0x2C) + 385123580) ^ v81 & 0xFFFFFFBF;
  v84 = *&v63[4 * (HIBYTE(v72) ^ 0xE9)];
  v85 = LODWORD(STACK[0x34C]) ^ BYTE1(v76) ^ *&v66[4 * (BYTE1(v76) ^ 0xDB)] ^ (BYTE2(v78) - 1850458591 + *(v62 + 4 * (BYTE2(v78) ^ 0xCCu))) ^ (784548883 * v84 - 1698402180) ^ (8 * ((453840972 * v84 + 185713136) ^ (784548883 * v84 - 1698402180))) ^ (*&v70[4 * (v74 ^ 0x73)] + v75 + 385123580);
  v86 = *&v63[4 * HIBYTE(v75)];
  v87 = LODWORD(STACK[0x348]) ^ BYTE1(v78) ^ *&v66[4 * (BYTE1(v78) ^ 0xDB)] ^ (784548883 * v86 - 1698402180) ^ ((BYTE2(v72) ^ 0x74) - 1850458591 + *(v62 + 4 * (BYTE2(v72) ^ 0xB8u))) ^ (8 * ((453840972 * v86 + 185713136) ^ (784548883 * v86 - 1698402180))) ^ (*&v70[4 * (v71 ^ 0x75)] + v76 + 385123580);
  v88 = ((v87 ^ 0xD9B50180) >> 16);
  v89 = v88 - 100183560;
  v90 = v88 - ((2 * (v88 - 100183560)) & 0xB406A762);
  v91 = *(v62 + 4 * (v88 ^ 0xCCu));
  v92 = (v91 ^ ((v91 ^ 0x52FEDB7A) - 984467629) ^ ((v91 ^ 0x4DBFF490) - 636282695) ^ ((v91 ^ 0x8ADC3C2) - 1627312149) ^ ((v91 ^ 0x7FBFFFFF) - 401402920) ^ (v90 - 668291671) ^ 0xB6704866) + ((2 * ((v89 & 0x15A | 0x80400) ^ v89 & (v91 ^ ((v91 ^ 0xB209418A) + 631614883) ^ ((v91 ^ 0xD6EC80A9) + 1094741122) ^ ((v91 ^ 0xF7CBAD0B) + 1617379620) ^ ((v91 ^ 0x7B7D7FFF) + 1825674200) ^ 0x7800128D))) ^ 0x20160800);
  v93 = *&v63[4 * ((v79 ^ 0xF419E9DA) >> 24)];
  v94 = v85 ^ 0xD448265A;
  v95 = ((v85 ^ 0x265A) >> 8);
  v96 = LODWORD(STACK[0x344]) ^ (784548883 * v93 - 1698402180) ^ *&v66[4 * (v95 ^ 0xDB)] ^ (8 * ((784548883 * v93 - 1698402180) ^ (453840972 * v93 + 185713136)));
  v97 = v83 ^ 0x432D726D;
  v98 = v96 ^ v95 ^ (*&v70[4 * (v83 ^ 0xD1)] + (v83 ^ 0x6D) + 385123580) ^ v92;
  v99 = *&v63[4 * HIBYTE(v97)];
  v100 = LODWORD(STACK[0x340]) ^ *&v66[4 * (((v87 ^ 0x180) >> 8) ^ 0xDB)] ^ (((v79 ^ 0xF419E9DA) >> 16) - 1850458591 + *(v62 + 4 * (((v79 ^ 0xF419E9DA) >> 16) ^ 0xCCu))) ^ (784548883 * v99 - 1698402180) ^ (8 * ((784548883 * v99 - 1698402180) ^ (453840972 * v99 + 185713136))) ^ (*&v70[4 * (v85 ^ 0xE6)] + (v85 ^ 0x5A) + 385123580) ^ ((v87 ^ 0x180) >> 8);
  v101 = *&v63[4 * HIBYTE(v94)];
  v102 = LODWORD(STACK[0x33C]) ^ ((v79 ^ 0xE9DA) >> 8) ^ *&v66[4 * (((v79 ^ 0xE9DA) >> 8) ^ 0xDB)] ^ (BYTE2(v97) - 1850458591 + *(v62 + 4 * (BYTE2(v97) ^ 0xCCu))) ^ (784548883 * v101 - 1698402180) ^ (8 * ((784548883 * v101 - 1698402180) ^ (453840972 * v101 + 185713136))) ^ (*&v70[4 * (v87 ^ 0x3C)] + (v87 ^ 0x80) + 385123580);
  v103 = BYTE2(v94) - 1850458591 + *(v62 + 4 * (BYTE2(v94) ^ 0xCCu));
  v104 = *&v63[4 * ((v87 ^ 0xD9B50180) >> 24)];
  v105 = LODWORD(STACK[0x338]) ^ BYTE1(v97) ^ *&v66[4 * (BYTE1(v97) ^ 0xDB)] ^ (784548883 * v104 - 1698402180) ^ v103 ^ (8 * ((784548883 * v104 - 1698402180) ^ (453840972 * v104 + 185713136))) ^ (*&v70[4 * (v79 ^ 0x66)] + (v79 ^ 0xDA) + 385123580);
  v106 = *&v63[4 * (HIBYTE(v98) ^ 0x4B)];
  v107 = BYTE2(v102) ^ 0xC6;
  v108 = LODWORD(STACK[0x334]) ^ *&v66[4 * (((v102 ^ 0xDFCC) >> 8) ^ 0xDB)] ^ (784548883 * v106 - 1698402180) ^ (8 * ((453840972 * v106 + 185713136) ^ (784548883 * v106 - 1698402180))) ^ (*&v70[4 * (v100 ^ 0x85)] + (v100 ^ 0x39) + 385123580) ^ ((v102 ^ 0xDFCC) >> 8) ^ (*(v62 + 4 * (((v105 ^ 0xC2946F38) >> 16) ^ 0xCCu)) + ((v105 ^ 0xC2946F38) >> 16) - 1850458591);
  v109 = ((v98 ^ 0xECB9D94A) >> (v98 & 0x10) >> (v98 & 0x10 ^ 0x10));
  v110 = *&v63[4 * ((v100 ^ 0xA7F1E339) >> 24)];
  v111 = LODWORD(STACK[0x330]) ^ *&v66[4 * (((v105 ^ 0x6F38) >> 8) ^ 0xDB)] ^ (784548883 * v110 - 1698402180) ^ (8 * ((784548883 * v110 - 1698402180) ^ (453840972 * v110 + 185713136))) ^ (*&v70[4 * (v102 ^ 0x70)] + (v102 ^ 0xCC) + 385123580) ^ ((v105 ^ 0x6F38) >> 8) ^ (*(v62 + 4 * (v109 ^ 0xCCu)) + v109 - 1850458591);
  v112 = *&v63[4 * ((v102 ^ 0xAEC6DFCC) >> 24)];
  v113 = LODWORD(STACK[0x32C]) ^ BYTE1(v98) ^ (((v100 ^ 0xA7F1E339) >> 16) - 1850458591 + *(v62 + 4 * (((v100 ^ 0xA7F1E339) >> 16) ^ 0xCCu))) ^ *&v66[4 * (BYTE1(v98) ^ 2)] ^ (784548883 * v112 - 1698402180) ^ (8 * ((453840972 * v112 + 185713136) ^ (784548883 * v112 - 1698402180))) ^ (*&v70[4 * (v105 ^ 0x84)] + (v105 ^ 0x38) + 385123580);
  v114 = *&v63[4 * ((v105 ^ 0xC2946F38) >> 24)];
  v115 = LODWORD(STACK[0x328]) ^ ((v100 ^ 0xE339) >> 8) ^ *&v66[4 * (((v100 ^ 0xE339) >> 8) ^ 0xDB)] ^ (v107 - 1850458591 + *(v62 + 4 * (v107 ^ 0xCCu))) ^ (784548883 * v114 - 1698402180) ^ (8 * ((453840972 * v114 + 185713136) ^ (784548883 * v114 - 1698402180))) ^ ((v98 ^ 0x4A) + 385123580 + *&v70[4 * (v98 ^ 0xF6)]);
  v116 = v111 ^ 0x1966B7B2;
  v117 = *&v70[4 * (v111 ^ 0xE)] + (v111 ^ 0xB2) - 1435328113;
  v118 = v117 - ((2 * v117 - 654063910) & 0xD269571C);
  v119 = *&v63[4 * ((v108 ^ 0x94260C7u) >> 24)];
  v120 = 784548883 * v119 - 1698402180;
  v121 = v120 ^ (453840972 * v119 + 185713136);
  BYTE2(v119) = BYTE2(v113) ^ 0x63;
  v122 = LODWORD(STACK[0x324]) ^ *&v66[4 * (((v113 ^ 0x79ED) >> 8) ^ 0xDB)] ^ v120 ^ (8 * v121) ^ ((v113 ^ 0x79ED) >> 8) ^ (v118 + 1438027515) ^ (*(v62 + 4 * (((v115 ^ 0x67ECCA6u) >> 16) ^ 0xCCu)) + ((v115 ^ 0x67ECCA6u) >> 16) - 1850458591);
  v123 = *&v63[4 * HIBYTE(v116)];
  v124 = LODWORD(STACK[0x320]) ^ *&v66[4 * (((v115 ^ 0xCCA6) >> 8) ^ 0xDB)] ^ (784548883 * v123 - 1698402180) ^ (((v108 ^ 0x94260C7u) >> 16) - 1850458591 + *(v62 + 4 * (((v108 ^ 0x94260C7u) >> 16) ^ 0xCCu))) ^ (8 * ((453840972 * v123 + 185713136) ^ (784548883 * v123 - 1698402180))) ^ (*&v70[4 * (v113 ^ 0x51)] + (v113 ^ 0xED) + 385123580) ^ ((v115 ^ 0xCCA6) >> 8);
  v125 = *&v63[4 * ((v113 ^ 0x366379EDu) >> 24)];
  v126 = LODWORD(STACK[0x31C]) ^ ((v108 ^ 0x60C7) >> 8) ^ (BYTE2(v116) - 1850458591 + *(v62 + 4 * (BYTE2(v116) ^ 0xCCu))) ^ *&v66[4 * (((v108 ^ 0x60C7) >> 8) ^ 0xDB)] ^ (784548883 * v125 - 1698402180) ^ (8 * ((453840972 * v125 + 185713136) ^ (784548883 * v125 - 1698402180))) ^ (*&v70[4 * (v115 ^ 0x1A)] + (v115 ^ 0xA6) + 385123580);
  v127 = *&v63[4 * ((v115 ^ 0x67ECCA6u) >> 24)];
  v128 = LODWORD(STACK[0x318]) ^ BYTE1(v116) ^ *&v66[4 * (BYTE1(v116) ^ 0xDB)] ^ (BYTE2(v119) - 1850458591 + *(v62 + 4 * (BYTE2(v119) ^ 0xCCu))) ^ (784548883 * v127 - 1698402180) ^ (8 * ((453840972 * v127 + 185713136) ^ (784548883 * v127 - 1698402180))) ^ (*&v70[4 * (v108 ^ 0x7B)] + (v108 ^ 0xC7) + 385123580);
  v129 = v128 ^ 0x2B46E676;
  v130 = *&v63[4 * ((v122 ^ 0x192A1AA3u) >> 24)];
  v131 = LODWORD(STACK[0x37C]) ^ *&v66[4 * (((v126 ^ 0xB166) >> 8) ^ 0xDB)] ^ (784548883 * v130 - 1698402180) ^ (8 * ((784548883 * v130 - 1698402180) ^ (453840972 * v130 + 185713136))) ^ (*&v70[4 * (v124 ^ 0x36)] + (v124 ^ 0x8A) + 385123580) ^ ((v126 ^ 0xB166) >> 8) ^ (*(v62 + 4 * (((v128 ^ 0x2B46E676u) >> 16) ^ 0xCCu)) + ((v128 ^ 0x2B46E676u) >> 16) - 1850458591);
  v132 = *&v63[4 * ((v124 ^ 0x1D03698Au) >> 24)];
  v133 = LODWORD(STACK[0x310]) ^ *&v66[4 * (((v128 ^ 0xE676) >> 8) ^ 0xDB)] ^ (((v122 ^ 0x192A1AA3u) >> 16) - 1850458591 + *(v62 + 4 * (((v122 ^ 0x192A1AA3u) >> 16) ^ 0xCCu))) ^ (784548883 * v132 - 1698402180) ^ (8 * ((784548883 * v132 - 1698402180) ^ (453840972 * v132 + 185713136))) ^ (*&v70[4 * (v126 ^ 0xDA)] + (v126 ^ 0x66) + 385123580) ^ ((v128 ^ 0xE676) >> 8);
  v134 = *&v63[4 * ((v126 ^ 0x73B1B166u) >> 24)];
  v135 = LODWORD(STACK[0x30C]) ^ ((v122 ^ 0x1AA3) >> 8) ^ (((v124 ^ 0x1D03698Au) >> 16) - 1850458591 + *(v62 + 4 * (((v124 ^ 0x1D03698Au) >> 16) ^ 0xCCu))) ^ *&v66[4 * (((v122 ^ 0x1AA3) >> 8) ^ 0xDB)] ^ (784548883 * v134 - 1698402180) ^ (8 * ((784548883 * v134 - 1698402180) ^ (453840972 * v134 + 185713136))) ^ (*&v70[4 * (v128 ^ 0xCA)] + (v128 ^ 0x76) + 385123580);
  v136 = *&v63[4 * HIBYTE(v129)];
  v137 = LODWORD(STACK[0x300]) ^ ((v124 ^ 0x698A) >> 8) ^ *&v66[4 * (((v124 ^ 0x698A) >> 8) ^ 0xDB)] ^ (((v126 ^ 0x73B1B166u) >> 16) - 1850458591 + *(v62 + 4 * (((v126 ^ 0x73B1B166u) >> 16) ^ 0xCCu))) ^ (784548883 * v136 - 1698402180) ^ (8 * ((784548883 * v136 - 1698402180) ^ (453840972 * v136 + 185713136))) ^ ((v122 ^ 0x70C36EE8) + ((2 * (v122 ^ 0x192A1AA3)) & 0x96) - 1506732367 + *&v70[4 * (v122 ^ 0x1F)]);
  v138 = *&v63[4 * ((v131 ^ 0xC15F309B) >> 24)];
  BYTE2(v124) = BYTE2(v135) ^ 0x16;
  BYTE1(v87) = BYTE1(v133) ^ 0xF3;
  v139 = LODWORD(STACK[0x2FC]) ^ *&v66[4 * (((v135 ^ 0x49C3) >> 8) ^ 0xDB)] ^ (784548883 * v138 - 1698402180) ^ (8 * ((453840972 * v138 + 185713136) ^ (784548883 * v138 - 1698402180))) ^ (*&v70[4 * (v133 ^ 0xD)] + (v133 ^ 0xB1) + 385123580) ^ ((v135 ^ 0x49C3) >> 8) ^ (*(v62 + 4 * (((v137 ^ 0xF7E3465C) >> 16) ^ 0xCCu)) + ((v137 ^ 0xF7E3465C) >> 16) - 1850458591);
  v140 = *&v63[4 * ((v133 ^ 0xAE4EF3B1) >> 24)];
  v141 = LODWORD(STACK[0x2F8]) ^ *&v66[4 * (((v137 ^ 0x465C) >> 8) ^ 0xDB)] ^ (((v131 ^ 0xC15F309B) >> 16) - 1850458591 + *(v62 + 4 * (((v131 ^ 0xC15F309B) >> 16) ^ 0xCCu))) ^ (784548883 * v140 - 1698402180) ^ (8 * ((453840972 * v140 + 185713136) ^ (784548883 * v140 - 1698402180))) ^ (*&v70[4 * (v135 ^ 0x7F)] + (v135 ^ 0xC3) + 385123580) ^ ((v137 ^ 0x465C) >> 8);
  v142 = *&v63[4 * ((v135 ^ 0x341649C3u) >> 24)];
  v143 = ((v131 ^ 0x309B) >> 8) ^ LODWORD(STACK[0x2B0]) ^ (((v133 ^ 0xAE4EF3B1) >> 16) - 1850458591 + *(v62 + 4 * (((v133 ^ 0xAE4EF3B1) >> 16) ^ 0xCCu))) ^ *&v66[4 * (((v131 ^ 0x309B) >> 8) ^ 0xDB)] ^ (784548883 * v142 - 1698402180) ^ (8 * ((453840972 * v142 + 185713136) ^ (784548883 * v142 - 1698402180))) ^ (*&v70[4 * (v137 ^ 0xE0)] + (v137 ^ 0x5C) + 385123580);
  v144 = *&v63[4 * ((v137 ^ 0xF7E3465C) >> 24)];
  v145 = LODWORD(STACK[0x2F4]) ^ BYTE1(v87) ^ *&v66[4 * (BYTE1(v87) ^ 0xDB)] ^ (BYTE2(v124) - 1850458591 + *(v62 + 4 * (BYTE2(v124) ^ 0xCCu))) ^ (784548883 * v144 - 1698402180) ^ (8 * ((453840972 * v144 + 185713136) ^ (784548883 * v144 - 1698402180))) ^ (*&v70[4 * (v131 ^ 0x27)] + (v131 ^ 0x9B) + 385123580);
  v146 = v141 ^ 0xDB76686;
  v147 = (v141 ^ 0x86) + 385123580 + *&v70[4 * (-(v141 ^ 0x86) ^ (188 - (v141 ^ 0x3A)) ^ 0x2741C0FB ^ ((v141 ^ 0x86) - 2 * (v141 ^ 0x86 ^ (v141 ^ 6) & 4) + 658620667)) + 752];
  v148 = *&v63[4 * ((v139 ^ 0x1F2282C0u) >> 24)];
  v149 = 784548883 * v148 - 1698402180;
  v150 = 453840972 * v148 + 185713136;
  v151 = v143 ^ 0xD86FF206;
  v152 = LODWORD(STACK[0x2F0]) ^ *&v66[4 * (((v143 ^ 0xF206) >> 8) ^ 0xDB)] ^ v149 ^ (8 * (v149 ^ v150)) ^ v147 ^ ((v143 ^ 0xF206) >> 8) ^ (*(v62 + 4 * (((v145 ^ 0xA8ECE3C8) >> 16) ^ 0xCCu)) + ((v145 ^ 0xA8ECE3C8) >> 16) - 1850458591);
  v153 = *&v63[4 * HIBYTE(v146)];
  v154 = LODWORD(STACK[0x2E8]) ^ *&v66[4 * (((v145 ^ 0xE3C8) >> 8) ^ 0xDB)] ^ (((v139 ^ 0x1F2282C0u) >> 16) - 1850458591 + *(v62 + 4 * (((v139 ^ 0x1F2282C0u) >> 16) ^ 0xCCu))) ^ (784548883 * v153 - 1698402180) ^ (8 * ((453840972 * v153 + 185713136) ^ (784548883 * v153 - 1698402180))) ^ (*&v70[4 * (v143 ^ 0xBA)] + (v143 ^ 6) + 385123580) ^ ((v145 ^ 0xE3C8) >> 8);
  v155 = *&v63[4 * HIBYTE(v151)];
  v156 = BYTE2(v151);
  v157 = *(v62 + 4 * (BYTE2(v151) ^ 0xCCu));
  v158 = LODWORD(STACK[0x2E4]) ^ ((v139 ^ 0x82C0) >> 8) ^ (BYTE2(v146) - 1850458591 + *(v62 + 4 * (BYTE2(v146) ^ 0xCCu))) ^ *&v66[4 * (((v139 ^ 0x82C0) >> 8) ^ 0xDB)] ^ (784548883 * v155 - 1698402180) ^ (8 * ((784548883 * v155 - 1698402180) ^ (453840972 * v155 + 185713136))) ^ (*&v70[4 * (v145 ^ 0x74)] + (v145 ^ 0xC8) + 385123580);
  v159 = *&v63[4 * ((v145 ^ 0xA8ECE3C8) >> 24)];
  v160 = LODWORD(STACK[0x2E0]) ^ BYTE1(v146) ^ *&v66[4 * (BYTE1(v146) ^ 0xDB)] ^ (v156 - 1850458591 + v157) ^ (784548883 * v159 - 1698402180) ^ (8 * ((784548883 * v159 - 1698402180) ^ (453840972 * v159 + 185713136))) ^ (*&v70[4 * (v139 ^ 0x7C)] + (v139 ^ 0xC0) + 385123580);
  v161 = *(v62 + 4 * (((v160 ^ 0x4DF0EDBBu) >> 16) ^ 0xCCu)) + ((v160 ^ 0x4DF0EDBBu) >> 16) - 1850458591;
  v162 = *&v63[4 * ((v154 ^ 0x8285BEAF) >> 24)];
  v163 = v158 ^ 0xCE7DFF66;
  v164 = LODWORD(STACK[0x2DC]) ^ *&v66[4 * (((v160 ^ 0xEDBB) >> 8) ^ 0xDB)] ^ (784548883 * v162 - 1698402180) ^ (((v152 ^ 0x69941422u) >> 16) - 1850458591 + *(v62 + 4 * (((v152 ^ 0x69941422u) >> 16) ^ 0xCCu))) ^ (8 * ((453840972 * v162 + 185713136) ^ (784548883 * v162 - 1698402180))) ^ (*&v70[4 * (v158 ^ 0xDA)] + (v158 ^ 0x66) + 385123580) ^ ((v160 ^ 0xEDBB) >> 8);
  v165 = *&v70[4 * (v160 ^ 7)] + (v160 ^ 0xBB);
  v166 = (v160 ^ 0x4DF0EDBBu) >> 24;
  v167 = *&v63[4 * ((v152 ^ 0x69941422u) >> 24)];
  v168 = *&v63[4 * HIBYTE(v163)];
  v169 = *&v63[4 * v166];
  v170 = LODWORD(STACK[0x2D8]) ^ ((v152 ^ 0x1422) >> 8) ^ (((v154 ^ 0x8285BEAF) >> 16) - 1850458591 + *(v62 + 4 * (((v154 ^ 0x8285BEAF) >> 16) ^ 0xCCu))) ^ *&v66[4 * (((v152 ^ 0x1422) >> 8) ^ 0xDB)] ^ (784548883 * v168 - 1698402180) ^ (8 * ((453840972 * v168 + 185713136) ^ (784548883 * v168 - 1698402180))) ^ (v165 + 385123580);
  v171 = LODWORD(STACK[0x2D4]) ^ *&v66[4 * (BYTE1(v163) ^ 0xDB)] ^ (784548883 * v167 - 1698402180) ^ (8 * ((453840972 * v167 + 185713136) ^ (784548883 * v167 - 1698402180))) ^ (*&v70[4 * (v154 ^ 0x13)] + (v154 ^ 0xAF) + 385123580) ^ BYTE1(v163) ^ v161 ^ 0x563126D8;
  v172 = STACK[0x3C4];
  v173 = LODWORD(STACK[0x2D0]) ^ ((v154 ^ 0xBEAF) >> 8) ^ *&v66[4 * (((v154 ^ 0xBEAF) >> 8) ^ 0xDB)] ^ (BYTE2(v163) - 1850458591 + *(v62 + 4 * (BYTE2(v163) ^ 0xCCu))) ^ (784548883 * v169 - 1698402180) ^ (8 * ((784548883 * v169 - 1698402180) ^ (453840972 * v169 + 185713136))) ^ (*&v70[4 * (v152 ^ 0x9E)] + (v152 ^ 0x22) + 385123580);
  v174 = *(&off_1010A0B50 + LODWORD(STACK[0x3C4]) - 21407) - 1540672610;
  v175 = *&v174[4 * HIBYTE(v171)];
  HIDWORD(v176) = v175 ^ 0x6F9F;
  LODWORD(v176) = v175 ^ 0x807A0000;
  v177 = v170 ^ 0x4D563209;
  v178 = *(&off_1010A0B50 + (LODWORD(STACK[0x3C4]) ^ 0x73D6)) - 1358508427;
  v179 = *&v174[4 * ((v164 ^ 0xE9B5D707) >> 24)];
  v180 = *&v178[4 * (((v170 ^ 0x3209) >> 8) ^ 0x53)] - ((((v170 ^ 0x3209) >> 8) + 1674242031) ^ ((v170 ^ 0x3209) >> 8));
  v181 = *&v174[4 * (HIBYTE(v170) ^ 0x3B)];
  v182 = *&v174[4 * ((v173 ^ 0xEA72958E) >> 24)];
  v183 = *(&off_1010A0B50 + (LODWORD(STACK[0x3C4]) ^ 0x6F52)) - 39592239;
  v184 = *&v183[4 * ((v173 ^ 0xEA72958E) >> 16)];
  v185 = *&v183[4 * BYTE2(v171)];
  LODWORD(v174) = *&v183[4 * ((v164 ^ 0xE9B5D707) >> 16)];
  v186 = *&v183[4 * BYTE2(v177)];
  LODWORD(v183) = ((v173 ^ 0x958E) >> 8);
  v187 = *&v178[4 * (v183 ^ 0x53)];
  v188 = BYTE1(v171);
  v189 = *&v178[4 * (BYTE1(v171) ^ 0x53)];
  v190 = ((v164 ^ 0xD707) >> 8);
  LODWORD(v178) = *&v178[4 * (v190 ^ 0x53)];
  v191 = *(&off_1010A0B50 + (LODWORD(STACK[0x3C4]) ^ 0x6997)) - 1985593810;
  v192 = *&v191[4 * v177];
  v193 = *&v191[4 * (v173 ^ 0x58)];
  v194 = *&v191[4 * v171];
  v195 = LODWORD(STACK[0x2C8]) ^ LODWORD(STACK[0x2C4]) ^ *(v3 - 140) ^ (v184 - 712588103) ^ (v176 >> 15) ^ (16 * (v176 >> 15) * (v176 >> 15));
  v196 = v195 ^ *&v191[4 * (v164 ^ 0xD1)] ^ (v180 - 1648369403);
  v197 = (v195 ^ v191[4 * (v164 ^ 0xD1)] ^ (v180 + 5)) ^ 0x4DLL;
  v198 = *(&off_1010A0B50 + (LODWORD(STACK[0x3C4]) ^ 0x6CF0)) - 2138720187;
  *(*(v3 - 120) + STACK[0x3D0]) = v198[v197] ^ (v198[v197] >> 6) ^ (v198[v197] >> 3) ^ 0xE8;
  HIDWORD(v176) = v181 ^ 0x6F9F;
  LODWORD(v176) = v181 ^ 0x807A0000;
  v199 = LODWORD(STACK[0x2C0]) ^ LODWORD(STACK[0x2BC]) ^ *(v3 - 136) ^ (v174 - 712588103) ^ (v176 >> 15) ^ (v189 - ((v188 + 1674242031) ^ v188) - 1648369403) ^ v193 ^ (16 * (v176 >> 15) * (v176 >> 15));
  v200 = v198[(LOBYTE(STACK[0x2C0]) ^ LOBYTE(STACK[0x2BC]) ^ *(v3 - 136) ^ (v174 - 71) ^ (v176 >> 15) ^ (v189 - ((v188 - 17) ^ v188) + 5) ^ v193 ^ (16 * (v176 >> 15) * (v176 >> 15))) ^ 6];
  *(*(v3 - 120) + STACK[0x3C8]) = v200 ^ (v200 >> 3) ^ ((v200 >> 6) | 0x98) ^ 0x16;
  HIDWORD(v176) = v179 ^ 0x6F9F;
  LODWORD(v176) = v179 ^ 0x807A0000;
  v201 = LODWORD(STACK[0x2B8]) ^ LODWORD(STACK[0x2B4]) ^ *(v3 - 132) ^ (v185 - 712588103) ^ v192 ^ (v176 >> 15) ^ (16 * (v176 >> 15) * (v176 >> 15)) ^ (v187 - ((v183 + 1674242031) ^ v183) - 1648369403);
  v202 = *(&off_1010A0B50 + (v172 ^ 0x6AD0)) - 1148967067;
  *(*(v3 - 120) + STACK[0x3D8]) = v202[((LOWORD(STACK[0x2B8]) ^ LOWORD(STACK[0x2B4]) ^ *(v3 - 132) ^ (v185 - 15175) ^ v192 ^ (v176 >> 15) ^ (16 * (v176 >> 15) * (v176 >> 15)) ^ (v187 - ((v183 - 6161) ^ v183) - 7931)) >> 8) ^ 0xA1] ^ 0x77;
  v203 = *(&off_1010A0B50 + (v172 ^ 0x64C5)) - 660550130;
  *(*(v3 - 120) + *(v3 - 208)) = (v203[BYTE2(v199) ^ 0x71] + 58) ^ 0x4C;
  *(*(v3 - 120) + *(v3 - 240)) = (v203[BYTE2(v196) ^ 0x82] + 58) ^ 0xF3;
  HIDWORD(v176) = v182 ^ 0x6F9F;
  LODWORD(v176) = v182 ^ 0x807A0000;
  v204 = v176 >> 15;
  LODWORD(v183) = (v186 - 712588103) ^ *(v3 - 128) ^ v194 ^ (v178 - ((v190 + 1674242031) ^ v190) - 1648369403) ^ (16 * v204 * v204) ^ (((LODWORD(STACK[0x2CC]) ^ v204) & 0x78273366 ^ 0x7CEBF098) & ((LODWORD(STACK[0x2CC]) ^ v204) & 0x87D8CC99 ^ 0xFA3FF7E7) | (LODWORD(STACK[0x2CC]) ^ v204) & 0x83100C01);
  *(*(v3 - 120) + *(v3 - 224)) = v202[(((v186 - 15175) ^ *(v3 - 128) ^ v194 ^ (v178 - ((v190 - 6161) ^ v190) - 7931) ^ (16 * v204 * v204) ^ (((LOWORD(STACK[0x2CC]) ^ v204) & 0x3366 ^ 0xF098) & ((LOWORD(STACK[0x2CC]) ^ v204) & 0xCC99 ^ 0xF7E7) | (LOWORD(STACK[0x2CC]) ^ v204) & 0xC01)) >> 8) ^ 0x56] ^ 0xA2;
  *(*(v3 - 120) + *(v3 - 200)) = (v203[BYTE2(v201) ^ 0xD1] + 58) ^ 0xF2;
  v205 = *(&off_1010A0B50 + (v172 ^ 0x62DA)) - 1468803319;
  *(*(v3 - 120) + *(v3 - 176)) = (v205[HIBYTE(v196) ^ 0xBFLL] - 62) ^ 0x96;
  v206 = BYTE1(v196);
  v207 = *(v3 - 120);
  *(v207 + *(v3 - 248)) = v202[v206 ^ 0xA7] ^ 0xBB;
  LODWORD(v206) = v198[v183 ^ 0x4BLL];
  *(v207 + *(v3 - 192)) = v206 ^ 0xBB ^ (v206 >> 6) ^ (((v206 ^ 0xBB) >> 3) | 0xC0) ^ 0x1F;
  *(v207 + *(v3 - 168)) = v202[BYTE1(v199) ^ 0xBBLL] ^ 1;
  LODWORD(v206) = v198[v201 ^ 0xB8];
  *(v207 + *(v3 - 256)) = v206 ^ (v206 >> 3) ^ (v206 >> 6) ^ 0x2B;
  *(v207 + *(v3 - 216)) = (v205[HIBYTE(v199) ^ 0x36] - 62) ^ 0xD7;
  *(v207 + *(v3 - 152)) = (v205[(v183 >> 24) ^ 0x51] - 62) ^ 0x1F;
  *(v207 + *(v3 - 184)) = (v203[BYTE2(v183) ^ 0x97] + 58) ^ 0xD2;
  LODWORD(v206) = (((*(v3 - 228) ^ 0x7FD546D2) - 2144683730) ^ ((*(v3 - 228) ^ 0x3D6957CF) - 1030313935) ^ ((*(v3 - 228) ^ 0x3B4171D4) - 994144724)) - 516828565;
  v208 = (v206 ^ 0x54C36D6E) & (2 * (v206 & 0x98CB8E6E)) ^ v206 & 0x98CB8E6E;
  LODWORD(v202) = ((2 * (v206 ^ 0x644361AA)) ^ 0xF911DF88) & (v206 ^ 0x644361AA) ^ (2 * (v206 ^ 0x644361AA)) & 0xFC88EFC4;
  LODWORD(v183) = v202 ^ 0x4882044;
  LODWORD(v202) = (v202 ^ 0xE0004B80) & (4 * v208) ^ v208;
  v209 = ((4 * v183) ^ 0xF223BF10) & v183 ^ (4 * v183) & 0xFC88EFC0;
  LODWORD(v202) = (v209 ^ 0xF000AF00) & (16 * v202) ^ v202;
  v210 = ((16 * (v209 ^ 0xC8840C4)) ^ 0xC88EFC40) & (v209 ^ 0xC8840C4) ^ (16 * (v209 ^ 0xC8840C4)) & 0xFC88EFC0;
  LODWORD(v202) = v202 ^ 0xFC88EFC4 ^ (v210 ^ 0xC888EC00) & (v202 << 8);
  LODWORD(v206) = v206 ^ (2 * ((v202 << 16) & 0x7C880000 ^ v202 ^ ((v202 << 16) ^ 0x6FC40000) & (((v210 ^ 0x34000384) << 8) & 0x7C880000 ^ 0x74000000 ^ (((v210 ^ 0x34000384) << 8) ^ 0x8EF0000) & (v210 ^ 0x34000384))));
  *(v207 + *(v3 - 160)) = (v205[HIBYTE(v201) ^ 0x7DLL] - 62) ^ 8;
  LODWORD(v202) = (((v206 ^ 0x4D25D6F0) + 1945966625) ^ ((v206 ^ 0x9A39C4C1) - 1528755694) ^ ((v206 ^ 0x6FC643D7) + 1360956680)) + 1247759469;
  v211 = *(v3 - 144) ^ (v202 < 0xD061EBA4);
  v212 = v202 < *(v3 - 124);
  if (v211)
  {
    v212 = *(v3 - 144);
  }

  return (*(STACK[0x3A0] + 8 * ((42390 * v212) ^ v172)))();
}

uint64_t sub_10015E194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, double a7, __n128 a8, __n128 a9, __n128 a10, int8x16_t a11, double a12, int8x16_t a13, int8x16_t a14)
{
  v21 = (v19 ^ a5 ^ a3) + v17;
  v22 = v21 & 0xF;
  v24.i64[0] = vqtbl4q_s8(*(&a8 - 1), a11).u64[0];
  *&v24.i64[1] = a12;
  v25 = vrev64q_s8(veorq_s8(veorq_s8(*(a1 + v21), *(v16 + v22 - 15)), veorq_s8(*(v22 + v15 - 13), *(v22 + v14 - 14))));
  v26 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v25, v25, 8uLL), a14), vmulq_s8(v24, a13)));
  *(a1 + v21) = vextq_s8(v26, v26, 8uLL);
  return (*(v20 + 8 * (((a4 == v19) * a6) ^ v18)))();
}

uint64_t sub_10015E368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = *(v64 + 12);
  STACK[0x2A8] = v63 ^ 0xE9D5A437 ^ v66;
  return (*(v65 + 8 * (((v66 == -371865839) * ((v63 + 490576071) & 0xE2C26F77 ^ 0x6B6A)) ^ v63)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_100162300(uint64_t a1, int8x16_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, double a7, __n128 a8, __n128 a9, __n128 a10, int8x16_t a11, double a12, int8x16_t a13)
{
  v19 = a5 & a3;
  v20 = v17;
  v21.i64[0] = vqtbl4q_s8(*(&a8 - 1), a11).u64[0];
  *&v21.i64[1] = a12;
  v22 = vrev64q_s8(vmulq_s8(v21, a13));
  *a2 = veorq_s8(veorq_s8(veorq_s8(*(v16 + (a5 & a3) - 15), *a2), veorq_s8(*((a5 & a3) + v15 - 11), *(v14 + (a5 & a3) - 15))), vextq_s8(v22, v22, 8uLL));
  return (*(v18 + 8 * (((a4 == 0) * a6) ^ v13)))(a1, a2 - 1, a3 - 16, a4 - 16);
}

uint64_t sub_100162374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, int a41, unsigned int a42, uint64_t a43, __n128 a44, uint64_t a45, uint64_t a46, __n128 a47, uint64_t a48, uint64_t a49, __n128 a50, __n128 a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(a66 + 1560) = *STACK[0x450];
  *(a66 + 1552) = *STACK[0x4F8];
  v67 = STACK[0x728];
  *(*STACK[0x728] + 488) = *(a65 + 8);
  *(*v67 + 480) = *a65;
  return (*(v66 + 8 * (a41 ^ (121725 * (a42 > 0x2F2599AF)))))(a39, 53, a3, a4, a5, 207, a44, a47, a50, a51);
}

uint64_t sub_100162500@<X0>(char a1@<W0>, char a2@<W1>, int a3@<W2>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v57 = (((((v46 - 916) | 0x9001) ^ 0x7843A1C6) + (v55 ^ 0x87BCEE19)) ^ ((v55 ^ 0x9B31B8CD) + 1691240243) ^ (((v46 + 2500) ^ v55 ^ 0xF558BCBD) + 178744891)) + 662088100;
  v58 = (v57 ^ 0x805E986B) & (2 * (v57 & 0xC25F1D6C)) ^ v57 & 0xC25F1D6C;
  v59 = ((2 * (v57 ^ 0x4DA88AB)) ^ 0x8D0B2B8E) & (v57 ^ 0x4DA88AB) ^ (2 * (v57 ^ 0x4DA88AB)) & 0xC68595C6;
  v60 = v59 ^ 0x42849441;
  v61 = (v59 ^ 0x180) & (4 * v58) ^ v58;
  v62 = ((4 * v60) ^ 0x1A16571C) & v60 ^ (4 * v60) & 0xC68595C4;
  v63 = (v62 ^ 0x2041500) & (16 * v61) ^ v61;
  v64 = ((16 * (v62 ^ 0xC48180C3)) ^ 0x68595C70) & (v62 ^ 0xC48180C3) ^ (16 * (v62 ^ 0xC48180C3)) & 0xC68595C0;
  v65 = v63 ^ 0xC68595C7 ^ (v64 ^ 0x40011400) & (v63 << 8);
  v66 = (v56 + (v57 ^ (2 * ((v65 << 16) & v48 ^ v65 ^ ((v65 << 16) ^ v50) & (((v64 ^ 0x86848187) << 8) & v48 ^ v49 ^ (((v64 ^ 0x86848187) << 8) ^ v47) & (v64 ^ 0x86848187)))) ^ v51));
  LOBYTE(v65) = *v66;
  v67 = ((((v66 ^ a4) & 0x7FFFFFFF) * v52) ^ ((((v66 ^ a4) & 0x7FFFFFFF) * v52) >> 16)) * v52;
  v68 = *(v54 + (v67 >> 24));
  return (*(v53 + 8 * ((((((*(a45 + (v67 >> 24)) ^ v65 ^ v68 ^ *((v67 >> 24) + a46 + 2) ^ v67 ^ (-5 * BYTE3(v67)) ^ a1) - 89) ^ ((*(a45 + (v67 >> 24)) ^ v65 ^ v68 ^ *((v67 >> 24) + a46 + 2) ^ v67 ^ (-5 * BYTE3(v67)) ^ 0x33) + 28) ^ ((*(a45 + (v67 >> 24)) ^ v65 ^ v68 ^ *((v67 >> 24) + a46 + 2) ^ v67 ^ (-5 * BYTE3(v67)) ^ a2) - 106)) != 169) * a3) ^ (v46 + 41359))))();
}

uint64_t sub_100162860()
{
  v3 = STACK[0x2E4];
  v4 = STACK[0x2E8];
  LOBYTE(STACK[0x2DC]) = v0 ^ 0xC0 ^ (LODWORD(STACK[0x2E4]) >> 21) ^ 0x94;
  LOBYTE(STACK[0x2DD]) = v2 ^ (v3 >> 13);
  LOBYTE(STACK[0x2DE]) = v2 ^ (v3 >> 5);
  LOBYTE(STACK[0x2DF]) = ((__PAIR64__(v3, v4) >> 29) - ((2 * (__PAIR64__(v3, v4) >> 29)) & 0xB4) - 38) ^ 0x85;
  LOBYTE(STACK[0x2E0]) = v2 ^ (v4 >> 21);
  LOBYTE(STACK[0x2E1]) = (v4 >> 13) - ((v4 >> 12) & 0xBE) + 95;
  LOBYTE(STACK[0x2E2]) = (v4 >> 5) - ((v4 >> 4) & 0xBE) + 95;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_1001629B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, unsigned int a52, char a53, char a54, char a55, char a56, char a57, char a58, char a59, char a60, char a61, char a62, char a63)
{
  HIDWORD(a31) ^= HIDWORD(a27);
  LODWORD(a30) = a29 ^ a30;
  HIDWORD(a39) = HIDWORD(a22) ^ HIDWORD(a34);
  HIDWORD(a34) = a28 ^ HIDWORD(a33);
  LODWORD(STACK[0x34C]) += a7;
  v114 = *(a50 + 24);
  *(v114 + 273) = -1884;
  *(v114 + 357) = -27032;
  v118[0] = (a6 - 1037) | 0x400;
  v115 = (v118[0] - a37 - 1562105369);
  *(v114 + 1) = ((a33 ^ WORD2(a46)) >> 8) ^ 0xFE;
  *v114 = a33 ^ BYTE4(a46) ^ 0x27;
  *(v114 + 3) = ((a33 ^ HIDWORD(a46)) >> 24) ^ 0x7E;
  *(v114 + 2) = ((a33 ^ HIDWORD(a46)) >> 16) ^ 0xCF;
  *(v114 + 4) = -1360540257;
  *(v114 + 10) = BYTE2(a35) ^ 0x6C;
  *(v114 + 9) = BYTE1(a35) ^ 0x10;
  *(v114 + 8) = a35 ^ 0x1B;
  *(v114 + 11) = BYTE3(a35) ^ 0xF0;
  *(v114 + 12) = 62787748;
  *(v114 + 19) = BYTE3(a35) ^ 0x42;
  *(v114 + 18) = BYTE2(a35) ^ 0x11;
  *(v114 + 16) = a35 ^ 0x8E;
  *(v114 + 17) = BYTE1(a35) ^ 0x43;
  *(v114 + 20) = BYTE4(a36) ^ 0x5D;
  *(v114 + 23) = HIBYTE(a36) ^ 0x32;
  *(v114 + 21) = BYTE5(a36) ^ 0xEB;
  *(v114 + 22) = BYTE6(a36) ^ 0xF4;
  *(v114 + 28) = a53 ^ 0x17;
  *(v114 + 30) = a55 ^ 0xD8;
  *(v114 + 29) = a54 ^ 0xAE;
  *(v114 + 31) = a56 ^ 0xFC;
  *(v114 + 33) = 10785;
  *(v114 + 36) = 1666827070;
  *(v114 + 40) = 28;
  *(v114 + 41) = -6985;
  *(v114 + 43) = -10;
  *(v114 + 44) = a47 ^ a40 ^ 0x6A;
  *(v114 + 47) = ((a47 ^ a40) >> 24) ^ 0x98;
  *(v114 + 46) = ((a47 ^ a40) >> 16) ^ 0x36;
  *(v114 + 45) = ((a47 ^ a40) >> 8) ^ 0x10;
  *(v114 + 51) = ((v111 ^ a52) >> 24) ^ 0x69;
  *(v114 + 49) = ((v111 ^ a52) >> 8) ^ 0x4B;
  *(v114 + 50) = ((v111 ^ a52) >> 16) ^ 0x56;
  *(v114 + 48) = v111 ^ a52 ^ 0xC0;
  *(v114 + 54) = BYTE2(v112) ^ 0xC;
  *(v114 + 52) = v112 ^ 0x68;
  *(v114 + 53) = BYTE1(v112) ^ 0x75;
  *(v114 + 55) = HIBYTE(v112) ^ 0x48;
  *(v114 + 59) = BYTE3(a38) ^ 0x18;
  *(v114 + 57) = BYTE1(a38) ^ 0xCF;
  *(v114 + 58) = BYTE2(a38) ^ 0x7E;
  v116 = a38 ^ HIDWORD(a43);
  *(v114 + 56) = a38 ^ 0xB4;
  *(v114 + 60) = v111 ^ 0xAA;
  *(v114 + 63) = HIBYTE(v111) ^ 0xCA;
  *(v114 + 61) = BYTE1(v111) ^ 6;
  *(v114 + 62) = BYTE2(v111) ^ 0x71;
  *(v114 + 64) = a93 ^ 0xBB;
  HIDWORD(a43) = HIBYTE(a93);
  *(v114 + 67) = HIBYTE(a93) ^ 0xC5;
  *(v114 + 66) = BYTE2(a93) ^ 0xD4;
  LODWORD(a40) = a93 >> 8;
  *(v114 + 65) = BYTE1(a93) ^ 0xEF;
  *(v114 + 68) = a34 ^ 0xC9;
  *(v114 + 71) = BYTE3(a34) ^ 0x6F;
  *(v114 + 69) = BYTE1(a34) ^ 0x66;
  *(v114 + 70) = BYTE2(a34) ^ 0xB9;
  *(v114 + 72) = -9897;
  *(v114 + 76) = a39 ^ 0x6C;
  *(v114 + 78) = BYTE2(a39) ^ 0x86;
  *(v114 + 79) = BYTE3(a39) ^ 0x60;
  *(v114 + 77) = BYTE1(a39) ^ 0x4E;
  *(v114 + 81) = -64;
  *(v114 + 80) = 104;
  *(v114 + 85) = BYTE1(v115) ^ 0x8A;
  *(v114 + 86) = BYTE2(v115) ^ 0x8A;
  HIDWORD(a46) = BYTE3(v115);
  *(v114 + 87) = ((v118[0] - a37 - 1562105369) >> 24) ^ 8;
  *(v114 + 84) = (a6 - 13 - a37 - 25) ^ 0x95;
  *(v114 + 91) = HIBYTE(v116) ^ 6;
  *(v114 + 89) = BYTE1(v116) ^ 0xF0;
  *(v114 + 90) = BYTE2(v116) ^ 0x73;
  *(v114 + 88) = v116 ^ 0x25;
  *(v114 + 92) = a43 ^ 0xC6;
  *(v114 + 95) = BYTE3(a43) ^ 2;
  *(v114 + 93) = BYTE1(a43) ^ 0x8F;
  *(v114 + 94) = BYTE2(a43) ^ 0x86;
  *(v114 + 97) = -24438;
  *(v114 + 100) = -107;
  *(v114 + 101) = 73;
  *(v114 + 104) = a24 ^ 0xCA;
  *(v114 + 105) = BYTE1(a24) ^ 0x86;
  *(v114 + 106) = BYTE2(a24) ^ 0xA1;
  *(v114 + 107) = BYTE3(a24) ^ 0x6F;
  *(v114 + 108) = 1705780727;
  *(v114 + 115) = ((HIDWORD(a28) ^ HIDWORD(a29)) >> 24) ^ 0x96;
  *(v114 + 112) = BYTE4(a28) ^ BYTE4(a29) ^ 0x5F;
  *(v114 + 113) = ((WORD2(a28) ^ WORD2(a29)) >> 8) ^ 0xA6;
  *(v114 + 114) = ((HIDWORD(a28) ^ HIDWORD(a29)) >> 16) ^ 0x7A;
  *(v114 + 116) = BYTE4(a41) ^ 0xA6;
  *(v114 + 118) = BYTE6(a41) ^ 0x2C;
  *(v114 + 117) = BYTE5(a41) ^ 6;
  *(v114 + 119) = HIBYTE(a41) ^ 0x5A;
  *(v114 + 120) = a44 ^ 0xB1;
  *(v114 + 121) = BYTE1(a44) ^ 0x3B;
  *(v114 + 122) = BYTE2(a44) ^ 0xDC;
  *(v114 + 123) = BYTE3(a44) ^ 0x36;
  *(v114 + 126) = BYTE2(a41) ^ 0xFD;
  *(v114 + 124) = a41 ^ 0x25;
  *(v114 + 125) = BYTE1(a41) ^ 0x97;
  *(v114 + 127) = BYTE3(a41) ^ 0x48;
  *(v114 + 130) = a83 ^ 0xF0;
  *(v114 + 131) = a84 ^ 0xFA;
  *(v114 + 128) = a81 ^ 0x31;
  *(v114 + 129) = a82 ^ 0xE1;
  *(v114 + 132) = 119;
  *(v114 + 134) = -35;
  *(v114 + 138) = BYTE6(a37) ^ 1;
  *(v114 + 136) = BYTE4(a37) ^ 0xAA;
  *(v114 + 139) = HIBYTE(a37) ^ 0xC4;
  *(v114 + 137) = BYTE5(a37) ^ 0xEC;
  *(v114 + 140) = a77 ^ 0x77;
  *(v114 + 143) = a80 ^ 0x9B;
  *(v114 + 141) = a78 ^ 0xDC;
  *(v114 + 142) = a79 ^ 0x73;
  *(v114 + 147) = BYTE3(a42) ^ 0x38;
  *(v114 + 145) = BYTE1(a42) ^ 0x59;
  *(v114 + 146) = BYTE2(a42) ^ 0x27;
  *(v114 + 144) = a42 ^ 0x57;
  *(v114 + 149) = 103;
  *(v114 + 155) = -3;
  *(v114 + 152) = 5029;
  *(v114 + 154) = 4;
  *(v114 + 156) = a33 ^ 0xD0;
  *(v114 + 158) = BYTE2(a33) ^ 0xAB;
  *(v114 + 159) = BYTE3(a33) ^ 0x56;
  *(v114 + 157) = BYTE1(a33) ^ 0xB0;
  *(v114 + 160) = BYTE4(a35) ^ 0x42;
  *(v114 + 163) = HIBYTE(a35) ^ 0xAA;
  *(v114 + 162) = BYTE6(a35) ^ 0xF7;
  *(v114 + 161) = BYTE5(a35) ^ 0x89;
  *(v114 + 164) = BYTE4(a30) ^ 0x27;
  *(v114 + 165) = BYTE5(a30) ^ 0x65;
  *(v114 + 166) = BYTE6(a30) ^ 0x10;
  *(v114 + 167) = HIBYTE(a30) ^ 0xB;
  *(v114 + 169) = BYTE1(a48) ^ 0xC9;
  *(v114 + 168) = a48 ^ 0xA2;
  *(v114 + 171) = BYTE3(a48) ^ 0x1E;
  *(v114 + 170) = BYTE2(a48) ^ 0x78;
  *(v114 + 172) = 90;
  *(v114 + 174) = -18;
  *(v114 + 177) = a75 ^ 0x14;
  *(v114 + 178) = a76 ^ 0xD7;
  *(v114 + 179) = a73;
  *(v114 + 176) = a74 ^ 0x40;
  *(v114 + 181) = a86 ^ 0x9C;
  *(v114 + 180) = a85 ^ 0xC2;
  *(v114 + 183) = a88 ^ 0xAE;
  *(v114 + 182) = a87 ^ 0x71;
  *(v114 + 185) = BYTE1(a31) ^ 0xD6;
  *(v114 + 187) = BYTE3(a31) ^ 0xCB;
  *(v114 + 184) = a31 ^ 0x73;
  *(v114 + 186) = BYTE2(a31) ^ 0x94;
  *(v114 + 190) = BYTE6(a38) ^ 0xC3;
  *(v114 + 173) = -80;
  *(v114 + 189) = BYTE5(a38) ^ 0xB0;
  *(v114 + 188) = BYTE4(a38) ^ 0x2E;
  *(v114 + 191) = HIBYTE(a38) ^ 2;
  *(v114 + 194) = -5861;
  *(v114 + 196) = 116;
  *(v114 + 200) = a36 ^ 0x4E;
  *(v114 + 201) = BYTE1(a36) ^ 0x35;
  *(v114 + 203) = BYTE3(a36) ^ 0x12;
  *(v114 + 202) = BYTE2(a36) ^ 0xD1;
  *(v114 + 205) = 17549;
  *(v114 + 208) = a49 ^ 0x1D;
  *(v114 + 209) = BYTE1(a49) ^ 0xC6;
  *(v114 + 211) = BYTE3(a49) ^ 0xEA;
  *(v114 + 210) = BYTE2(a49) ^ 0x6F;
  *(v114 + 214) = BYTE2(a44) ^ 0xEE;
  *(v114 + 212) = a44 ^ 0xB6;
  *(v114 + 213) = BYTE1(a44) ^ 0x88;
  *(v114 + 215) = BYTE3(a44) ^ 0x80;
  *(v114 + 216) = a32 ^ 0x41;
  *(v114 + 24) = -81;
  *(v114 + 218) = BYTE2(a32) ^ 0xAF;
  *(v114 + 219) = BYTE3(a32) ^ 0xFA;
  *(v114 + 217) = BYTE1(a32) ^ 0xC2;
  *(v114 + 220) = BYTE4(a32) ^ 0xD9;
  *(v114 + 223) = HIBYTE(a32) ^ 0x2D;
  *(v114 + 221) = BYTE5(a32) ^ 0x10;
  *(v114 + 222) = BYTE6(a32) ^ 0xB4;
  *(v114 + 224) = BYTE4(a49) ^ 0x5C;
  *(v114 + 225) = BYTE5(a49) ^ 0x9A;
  *(v114 + 227) = HIBYTE(a49) ^ 0x3E;
  *(v114 + 226) = BYTE6(a49) ^ 0xF2;
  *(v114 + 228) = a30 ^ 0x52;
  *(v114 + 229) = BYTE1(a30) ^ 0x43;
  *(v114 + 231) = BYTE3(a30) ^ 0x55;
  *(v114 + 230) = BYTE2(a30) ^ 0xC;
  *(v114 + 235) = HIBYTE(a44) ^ 0x4D;
  *(v114 + 233) = BYTE5(a44) ^ 0xDE;
  *(v114 + 232) = BYTE4(a44) ^ 0x9E;
  *(v114 + 234) = BYTE6(a44) ^ 0x8A;
  *(v114 + 236) = a65 ^ 0x6B;
  *(v114 + 239) = a68 ^ 0x62;
  *(v114 + 237) = a66 ^ 0x66;
  *(v114 + 238) = a67 ^ 0x72;
  *(v114 + 240) = 93;
  *(v114 + 241) = 65;
  *(v114 + 245) = 81;
  *(v114 + 83) = -28;
  *(v114 + 244) = -28;
  *(v114 + 246) = -12614;
  *(v114 + 251) = 48;
  *(v114 + 252) = BYTE4(a31) ^ 0xFB;
  *(v114 + 253) = BYTE5(a31) ^ 0x4E;
  *(v114 + 255) = HIBYTE(a31) ^ 0xF;
  *(v114 + 254) = BYTE6(a31) ^ 0x27;
  *(v114 + 256) = a45 ^ 0xB;
  *(v114 + 259) = BYTE3(a45) ^ 0xC3;
  *(v114 + 204) = 33;
  *(v114 + 257) = BYTE1(a45) ^ 0x21;
  *(v114 + 258) = BYTE2(a45) ^ 0x4B;
  *(v114 + 263) = HIBYTE(a45) ^ 0x86;
  *(v114 + 262) = BYTE6(a45) ^ 0x65;
  *(v114 + 27) = 66;
  *(v114 + 261) = BYTE5(a45) ^ 0x42;
  *(v114 + 242) = -67;
  *(v114 + 260) = BYTE4(a45) ^ 0xBD;
  *(v114 + 269) = ((a28 ^ WORD2(a33)) >> 8) ^ 0xCC;
  *(v114 + 270) = ((a28 ^ HIDWORD(a33)) >> 16) ^ 0x72;
  *(v114 + 271) = ((a28 ^ HIDWORD(a33)) >> 24) ^ 0xA3;
  *(v114 + 268) = a28 ^ BYTE4(a33) ^ 0xD3;
  *(v114 + 272) = 51;
  *(v114 + 275) = -41;
  *(v114 + 277) = BYTE5(a40) ^ 0x23;
  *(v114 + 276) = BYTE4(a40) ^ 0xB4;
  *(v114 + 278) = BYTE6(a40) ^ 0x69;
  *(v114 + 279) = HIBYTE(a40) ^ 0x47;
  *(v114 + 280) = 127;
  *(v114 + 282) = -122;
  *(v114 + 250) = -5;
  *(v114 + 281) = -5;
  *(v114 + 35) = 29;
  *(v114 + 283) = 29;
  *(v114 + 285) = ((WORD2(a32) ^ WORD2(a48)) >> 8) ^ 0x4F;
  *(v114 + 287) = ((HIDWORD(a32) ^ HIDWORD(a48)) >> 24) ^ 0xEF;
  *(v114 + 286) = ((HIDWORD(a32) ^ HIDWORD(a48)) >> 16) ^ 0xA9;
  *(v114 + 284) = BYTE4(a32) ^ BYTE4(a48) ^ 0x6C;
  *(v114 + 288) = 20860;
  *(v114 + 292) = a69 ^ 0x56;
  *(v114 + 295) = a72 ^ 0x88;
  *(v114 + 293) = a70 ^ 0x69;
  *(v114 + 294) = a71 ^ 0xBE;
  *(v114 + 296) = -4648;
  *(v114 + 299) = 1;
  *(v114 + 303) = BYTE3(a47) ^ 0x8C;
  *(v114 + 302) = BYTE2(a47) ^ 1;
  *(v114 + 135) = -34;
  *(v114 + 300) = a47 ^ 0xDE;
  *(v114 + 301) = BYTE1(a47) ^ 0x5C;
  *(v114 + 307) = HIBYTE(a42) ^ 0xFC;
  *(v114 + 305) = BYTE5(a42) ^ 0x8E;
  *(v114 + 306) = BYTE6(a42) ^ 0xC5;
  *(v114 + 103) = -91;
  *(v114 + 102) = 34;
  *(v114 + 304) = BYTE4(a42) ^ 0x34;
  *(v114 + 311) = BYTE3(a46) ^ 0x5E;
  *(v114 + 96) = -53;
  *(v114 + 99) = 89;
  *(v114 + 309) = BYTE1(a46) ^ 0x6C;
  *(v114 + 198) = -87;
  *(v114 + 310) = BYTE2(a46) ^ 0xA9;
  *(v114 + 308) = a46 ^ 0xC;
  *(v114 + 312) = a43 ^ 0xC1;
  *(v114 + 315) = BYTE3(a43) ^ 0x71;
  *(v114 + 314) = BYTE2(a43) ^ 0x5C;
  *(v114 + 313) = BYTE1(a43) ^ 0x46;
  *(v114 + 316) = -83;
  *(v114 + 317) = 99;
  *(v114 + 322) = BYTE2(a93) ^ 0x36;
  *(v114 + 323) = HIBYTE(a93) ^ 0x91;
  *(v114 + 320) = a93 ^ 0x6F;
  *(v114 + 321) = BYTE1(a93) ^ 0x7C;
  *(v114 + 82) = -94;
  *(v114 + 324) = BYTE4(a39) ^ 0x62;
  *(v114 + 326) = BYTE6(a39) ^ 0x19;
  *(v114 + 325) = BYTE5(a39) ^ 0xB9;
  *(v114 + 327) = HIBYTE(a39) ^ 0xFE;
  *(v114 + 329) = 123;
  *(v114 + 328) = -24;
  *(v114 + 74) = -23;
  *(v114 + 75) = -19;
  *(v114 + 331) = 69;
  *(v114 + 332) = -19;
  *(v114 + 334) = -20;
  *(v114 + 333) = 16;
  *(v114 + 338) = 38;
  *(v114 + 32) = -2;
  *(v114 + 336) = -2;
  *(v114 + 337) = 23;
  *(v114 + 243) = 70;
  *(v114 + 343) = a60 ^ 0x46;
  *(v114 + 199) = 25;
  *(v114 + 341) = a58 ^ 0x19;
  *(v114 + 342) = a59 ^ 0x35;
  *(v114 + 340) = a57 ^ 0xEA;
  *(v114 + 345) = -92;
  *(v114 + 344) = -8;
  *(v114 + 192) = 56;
  *(v114 + 346) = 56;
  *(v114 + 351) = HIBYTE(a47) ^ 0xFC;
  *(v114 + 348) = BYTE4(a47) ^ 0x5C;
  *(v114 + 350) = BYTE6(a47) ^ 0x8D;
  *(v114 + 349) = BYTE5(a47) ^ 0x9A;
  *(v114 + 355) = a92 ^ 0x28;
  *(v114 + 352) = a89 ^ 0xC1;
  *(v114 + 267) = -99;
  *(v114 + 353) = a90 ^ 0x9D;
  *(v114 + 354) = a91 ^ 0x3B;
  *(v114 + 356) = 118;
  *(v114 + 359) = -90;
  *(v114 + 360) = (a6 - 13 - a37 - 25) ^ 0x3F;
  *(v114 + 363) = ((v118[0] - a37 - 1562105369) >> 24) ^ 0xE9;
  *(v114 + 362) = BYTE2(v115) ^ 0x7E;
  *(v114 + 361) = BYTE1(v115) ^ 0x38;
  *(v114 + 364) = -42;
  *(v114 + 368) = a61 ^ 0xC1;
  *(v114 + 371) = a64 ^ 0xC2;
  *(v114 + 369) = a62 ^ 0xFE;
  *(v114 + 370) = a63 ^ 0x66;
  *(v114 + 26) = 78;
  *(v114 + 25) = 75;
  *(v114 + 133) = -117;
  *(v114 + 148) = -82;
  *(v114 + 151) = -26;
  *(v114 + 150) = -73;
  *(v114 + 175) = 97;
  *(v114 + 193) = 41;
  *(v114 + 197) = 20;
  *(v114 + 207) = -52;
  *(v114 + 249) = 34;
  *(v114 + 248) = 61;
  *(v114 + 266) = 59;
  *(v114 + 265) = 76;
  *(v114 + 264) = 21;
  *(v114 + 291) = 94;
  *(v114 + 290) = 89;
  *(v114 + 298) = 20;
  *(v114 + 319) = 102;
  *(v114 + 318) = -27;
  *(v114 + 330) = 83;
  *(v114 + 335) = 17;
  *(v114 + 339) = 92;
  *(v114 + 347) = 55;
  *(v114 + 366) = 35;
  *(v114 + 365) = 34;
  *(v114 + 367) = -84;
  *(v114 + 372) = a95;
  *(v114 + 376) = a96;
  *(v114 + 380) = a97;
  *(v114 + 384) = a98;
  *(v114 + 388) = a99;
  *(v114 + 392) = a100;
  *(v114 + 396) = a101;
  *(v114 + 400) = a102;
  *(v114 + 404) = a103;
  *(v114 + 408) = a104;
  *(v114 + 412) = a105;
  *(v114 + 416) = a106;
  *(v114 + 420) = a107;
  *(v114 + 424) = a108;
  *(v114 + 428) = a109;
  *(v114 + 432) = a110;
  *(v114 + 436) = a111;
  *(v114 + 440) = STACK[0x200];
  *(v114 + 444) = STACK[0x204];
  *(v114 + 448) = STACK[0x208];
  *(v114 + 452) = STACK[0x20C];
  *(v114 + 456) = STACK[0x210];
  *(v114 + 460) = STACK[0x214];
  *(v114 + 464) = STACK[0x218];
  *(v114 + 468) = STACK[0x21C];
  *(v114 + 472) = STACK[0x220];
  *(v114 + 476) = STACK[0x224];
  *(v114 + 480) = STACK[0x228];
  *(v114 + 484) = STACK[0x22C];
  *(v114 + 488) = STACK[0x230];
  *(v114 + 492) = STACK[0x234];
  *(v114 + 496) = STACK[0x238];
  *(v114 + 500) = STACK[0x23C];
  *(v114 + 504) = STACK[0x240];
  *(v114 + 508) = STACK[0x244];
  *(v114 + 512) = STACK[0x248];
  *(v114 + 516) = STACK[0x24C];
  *(v114 + 520) = STACK[0x250];
  *(v114 + 524) = STACK[0x254];
  *(v114 + 528) = STACK[0x258];
  *(v114 + 532) = STACK[0x25C];
  *(v114 + 536) = STACK[0x260];
  *(v114 + 540) = STACK[0x264];
  *(v114 + 544) = STACK[0x268];
  *(v114 + 548) = STACK[0x26C];
  *(v114 + 552) = STACK[0x270];
  *(v114 + 556) = STACK[0x274];
  *(v114 + 560) = STACK[0x278];
  *(v114 + 564) = STACK[0x27C];
  *(v114 + 568) = STACK[0x280];
  *(v114 + 572) = STACK[0x284];
  *(v114 + 576) = STACK[0x288];
  *(v114 + 580) = STACK[0x28C];
  *(v114 + 584) = STACK[0x290];
  *(v114 + 588) = STACK[0x294];
  *(v114 + 592) = STACK[0x298];
  *(v114 + 596) = STACK[0x29C];
  *(v114 + 600) = STACK[0x2A0];
  *(v114 + 604) = STACK[0x2A4];
  *(v114 + 608) = STACK[0x2A8];
  *(v114 + 612) = STACK[0x2AC];
  *(v114 + 616) = STACK[0x2B0];
  *(v114 + 620) = STACK[0x2B4];
  *(v114 + 624) = STACK[0x2B8];
  *(v114 + 628) = STACK[0x2BC];
  *(v114 + 632) = STACK[0x2C0];
  *(v114 + 636) = STACK[0x2C4];
  *(v114 + 640) = STACK[0x2C8];
  *(v114 + 644) = STACK[0x2CC];
  *(v114 + 648) = STACK[0x2D0];
  *(v114 + 652) = STACK[0x2D4];
  *(v114 + 656) = STACK[0x2D8];
  *(v114 + 660) = STACK[0x2DC];
  *(v114 + 664) = STACK[0x2E0];
  *(v114 + 668) = STACK[0x2E4];
  *(v114 + 672) = STACK[0x2E8];
  *(v114 + 676) = STACK[0x2EC];
  *(v114 + 680) = STACK[0x2F0];
  *(v114 + 684) = STACK[0x2F4];
  *(v114 + 688) = STACK[0x2F8];
  *(v114 + 692) = STACK[0x2FC];
  *(v114 + 696) = STACK[0x300];
  *(v114 + 700) = STACK[0x304];
  *(v114 + 704) = STACK[0x308];
  *(v114 + 708) = STACK[0x30C];
  *(v114 + 712) = STACK[0x310];
  *(v114 + 716) = STACK[0x314];
  *(v114 + 720) = STACK[0x318];
  *(v114 + 724) = STACK[0x31C];
  *(v114 + 728) = STACK[0x320];
  *(v114 + 732) = STACK[0x324];
  *(v114 + 736) = STACK[0x328];
  *(v114 + 740) = STACK[0x32C];
  *(v114 + 744) = STACK[0x330];
  *(v114 + 748) = STACK[0x334];
  *(v114 + 752) = STACK[0x338];
  *(v114 + 756) = STACK[0x33C];
  *(v114 + 760) = STACK[0x340];
  *(v114 + 764) = STACK[0x344];
  *(v114 + 768) = STACK[0x348];
  *(v114 + 772) = STACK[0x34C];
  *(v114 + 776) = STACK[0x350];
  *(v114 + 780) = STACK[0x354];
  *(v114 + 784) = STACK[0x358];
  *(v114 + 788) = STACK[0x35C];
  return (*(v113 + 8 * a6))(89, a93, 108, 203, a47, a94, 35, v115, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49);
}

void sub_100163DF4()
{
  if (v0 == 1321541943)
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891401;
  }

  *v1 = v2;
}

uint64_t sub_100163EEC(int a1, uint64_t a2, int a3, char a4, int a5, int a6, int a7, uint64_t a8)
{
  v15 = *(a8 + v8 + 72);
  v16 = ((2 * v8) & 0xDFF7F768) + (v8 ^ v14);
  *(a2 + v16 + v13) = (a1 ^ HIBYTE(v15)) - (((a1 ^ HIBYTE(v15)) << ((2 * v9) ^ 0xFB)) & 0xBE) + 95;
  *(a2 + v16 + a3) = (BYTE2(v15) ^ 0x7C) - ((2 * (BYTE2(v15) ^ 0x7C)) & 0xBF) + 95;
  *(a2 + v16 + a5) = (a4 ^ BYTE1(v15)) - ((2 * (a4 ^ BYTE1(v15))) & 0xBF) + 95;
  *(a2 + v16 + a6) = v15 ^ v11;
  return (*(v12 + 8 * (((v8 + 4 < v10) * a7) ^ v9)))();
}

uint64_t sub_10016406C@<X0>(unint64_t a1@<X1>, char a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v13 = v11 - 1;
  *(a4 + v13) = *(v7 + (((v9 | v10) ^ a1) & v13)) ^ *(v4 + v13) ^ *((((v9 | v10) ^ a1) & v13) + v5 + 4) ^ *((((v9 | v10) ^ a1) & v13) + v6 + 1) ^ ((((v9 | v10) ^ a1) & v13) * a2);
  return (*(v12 + 8 * (((v13 == 0) * a3) ^ v8)))();
}

uint64_t sub_1001642F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = (v9 ^ 0xFBE3EFAFDEDF7FB5) + (v8 - 17760) + 0x41C105040235911 + ((((v8 + 2082312407) & 0x83E2AE6B) - 0x83820A04241ACA1) & (2 * v9));
  v12 = v11 < 0x1F03002E;
  v13 = v11 > v7 + 520290350;
  if (v7 > 0xFFFFFFFFE0FCFFD1 != v12)
  {
    v13 = v12;
  }

  return (*(v10 + 8 * ((27 * v13) ^ (v8 - 11039))))(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1001646C0()
{
  v6 = *(v4 + 4 * (v3 - 1260099282));
  v7 = 1664525 * (((v6 ^ (v6 >> 30) ^ 0x46D4B2A8) - 1918519210) ^ ((v6 ^ (v6 >> 30) ^ 0x2B174C71) - 530168179) ^ ((v6 ^ (v6 >> 30) ^ 0x6DC3FED9) - 1498221531)) + 111811880;
  v8 = v7 ^ *(v4 + 4 * (v3 - 1260099281)) ^ ((v7 ^ 0xC7CC30CF) + 1084567359) ^ ((v7 ^ 0x86A45897) + 30230375) ^ ((v7 ^ 0xC78137AB) + 1088956507) ^ ((v7 ^ 0xFE7FBFFD) + 2031525901);
  v9 = *(STACK[0x3E0] + 4 * (v1 - 170366958));
  *(v4 + 4 * (v3 - 1260099281)) = v1 + (((v9 ^ 0xDE305BE1) + 567256095) ^ ((v9 ^ 0xE3CAA40) - 238856768) ^ ((v9 ^ 0xE096E0E0) + 526982944)) - 2001866403 + (((v8 ^ 0xEF2F925A) + 176027042) ^ ((v8 ^ 0xF885B900) + 500686588) ^ ((v8 ^ 0x6F3CCB54) - 1972458320));
  v10 = STACK[0x3D0];
  v11 = ((v0 + 164072580) ^ 0x1283) + STACK[0x3D0];
  v12 = (v0 + 164072580) ^ STACK[0x3D0];
  *(v5 - 196) = v12 ^ 0x32;
  *(v5 - 204) = v11;
  *(v5 - 200) = v10 + v0 + 800704858;
  *(v5 - 224) = v10 | 1;
  *(v5 - 240) = v12;
  *(v5 - 216) = (v3 - 2032199758) ^ v10;
  *(v5 - 232) = STACK[0x398];
  v13 = (*(v2 + 8 * (v0 ^ 0xEEEA)))(v5 - 240);
  return (*(v2 + 8 * *(v5 - 208)))(v13);
}

uint64_t sub_1001649BC(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v16 = v14;
  v17 = v9;
  v19 = v16 & 0xCF957A83 ^ 0xF2EBFDFF ^ (v16 ^ (((v13 + 824898076) & 0xCED4BEFF) + 494684229)) & (a3 ^ 0x2D160300);
  v20 = *(v11 + 4 * (*(v15 + v6 + v12) - 46));
  v21 = (((a1 ^ 0xDC7CAEAF) + 595808593) ^ ((a1 ^ 0x7D257663) - 2099607139) ^ ((a1 ^ 0xBC255EB0) + 1138401616)) + *(v7 + 4 * (v6 + v12)) + ((v19 - (v8 & (2 * v19)) + v5) ^ v17) + 1711393598 + (((v20 ^ 0x5FACFFD7) - 1605173207) ^ ((v20 ^ 0xAE1D93DD) + 1373793315) ^ ((v20 ^ 0x1864AB1B) - 409250587));
  v22 = v21 & 0x3E4D3932 ^ 0x34C1F0E ^ (v21 ^ 0x3D093438) & (2 * (v21 & 0x3E4D3932));
  v23 = ((2 * (v21 ^ 0x3D01263C)) ^ 0x6983E1C) & (v21 ^ 0x3D01263C) ^ (2 * (v21 ^ 0x3D01263C)) & 0x34C1F0E;
  v24 = v23 & 0x501B6658 ^ v22 ^ ((4 * v22) ^ 0x5D2B1A60) & (v23 ^ 0x2081E0E);
  v25 = ((4 * v23) ^ 0x583B1E68) & (v23 ^ 0x2081E0E) ^ v23 & 0x501B6658;
  v26 = v25 & 0x501B6658 ^ v24 ^ ((16 * v24) ^ 0x645AF638) & (v25 ^ 0x8060E);
  v27 = ((16 * v25) ^ 0x509B06D8) & (v25 ^ 0x8060E) ^ v25 & 0x501B6658;
  v28 = v26 ^ v27 & 0x501B6658 ^ ((v26 << 8) ^ 0x1C046858) & (v27 ^ 0x8060E);
  v29 = ((v27 << 8) ^ 0x581D6E58) & (v27 ^ 0x8060E) ^ v27 & 0x501B6658;
  v30 = v21 ^ (2 * (v28 ^ v29 & 0x501B6658 ^ ((v28 << 16) ^ 0x491D6658) & (v29 ^ 0x3440000) ^ ((v28 << 16) ^ 0x491D6658) & 0x34C0608));
  v31 = (((a3 ^ 0x806E4BA3) + 2140255325) ^ ((a3 ^ 0xE16C7434) + 512986060) ^ ((a3 ^ 0x7C7EB9EB) - 2088679915)) + 1761032444 + (((v30 ^ 0x38D5072E) << (*(a5 + v6 + v12) - 94)) | ((v30 ^ 0x38D5072Eu) >> (94 - *(a5 + v6 + v12))));
  return (*(v10 + 8 * ((15624 * (v6 == 368083827)) ^ v13)))(v16, a2, v31 ^ ((v31 ^ 0x2DE34EB3) - 1721367603) ^ ((v31 ^ 0x453C1D2D) - 239513517) ^ ((v31 ^ 0xDD5B1E20) + 1776178016) ^ ((v31 ^ 0xFEFEFF3E) + 1249620546) ^ 0x560634FC);
}

uint64_t sub_100164D70(uint64_t a1, uint64_t a2, int a3, int a4, int a5, unsigned int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, uint64_t a37)
{
  v52 = v42 < v46;
  v54 = v39 - 185857899;
  if (v39 - a3 == 1113190713)
  {
    v54 = 0;
  }

  v55 = *(v45 + 4 * v54) + 1901388722 + *(v45 + 4 * (((403 * (a36 ^ 0x3109u) - 6445) * v39 - 557573700) % a6));
  v53 = *(v45 + 4 * (v39 - 185857900));
  v56 = v53 ^ ((v53 ^ 0x9D780D2F) + 1293399118) ^ ((v53 ^ v44) + v47) ^ ((v53 ^ v48) + v49) ^ ((v53 ^ v50) + v51) ^ v55 ^ ((v55 ^ 0xB01B6517) - 240811875) ^ ((v55 ^ 0x9FB93777) - 569912579) ^ ((v55 ^ 0xEF1CB7A3) - 1365093847) ^ ((v55 ^ 0x7EFFFFB7) + 1061231165);
  *(v45 + 4 * (v39 - 185857900)) = (((v56 ^ a7) + v37) ^ ((v56 ^ v40) + v41) ^ ((v56 ^ v38) + v43)) + a4;
  if (v52 == v39 + a5 < v46)
  {
    v52 = v39 + a5 < v42;
  }

  return (*(a37 + 8 * ((42 * !v52) ^ a36)))();
}

uint64_t sub_100164F40(uint64_t a1, char a2, uint64_t a3, int a4)
{
  v14 = v10 - 1;
  *(v12 + v14) = *(v6 + (v14 & 0xF)) ^ *(v4 + v14) ^ *(v5 + (v14 & 0xF)) ^ ((v14 & 0xF) * a2) ^ *((v9 & v11) + (v14 & 0xF) + v7 + a3);
  return (*(v13 + 8 * (((v14 == 0) * a4) ^ v8)))();
}

uint64_t sub_1001650E0()
{
  v3 = *(v2 + 248);
  v3[15] = STACK[0x623];
  v3[14] = STACK[0x622];
  v3[13] = STACK[0x621];
  v3[12] = STACK[0x620];
  v3[11] = STACK[0x61F];
  v3[10] = STACK[0x61E];
  v3[9] = STACK[0x61D];
  v3[8] = STACK[0x61C];
  v3[7] = STACK[0x61B];
  v3[6] = STACK[0x61A];
  v3[5] = STACK[0x619];
  v3[4] = STACK[0x618];
  v3[3] = STACK[0x617];
  v3[2] = STACK[0x616];
  v3[1] = STACK[0x615];
  return (*(v1 + 8 * v0))();
}

uint64_t sub_100165244@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, int a60, uint64_t a61, int a62, int a63)
{
  *(v67 + 1464) = (a1 + v65 + 1) - 906386353 * a61;
  *(v67 + 1480) = (906386353 * a61) | 3;
  *(v68 - 160) = a64 ^ (906386353 * a61);
  *(v68 - 144) = 906386353 * a61 + 1;
  *(v68 - 124) = 906386353 * a61 + a64 + 3233;
  *(v68 - 120) = 906386353 * a61 + v64 + 800705426;
  *(v68 - 116) = a62 ^ (906386353 * a61);
  (*(v66 + 8 * a60))(v68 - 160);
  return (*(v66 + 8 * *(v68 - 128)))(48398);
}

uint64_t sub_100165394(double a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  a2.n128_u16[0] = 3855;
  a2.n128_u8[2] = 15;
  a2.n128_u8[3] = 15;
  a2.n128_u8[4] = 15;
  a2.n128_u8[5] = 15;
  a2.n128_u8[6] = 15;
  a2.n128_u8[7] = 15;
  a3.n128_u16[0] = 24415;
  a3.n128_u8[2] = 95;
  a3.n128_u8[3] = 95;
  a3.n128_u8[4] = 95;
  a3.n128_u8[5] = 95;
  a3.n128_u8[6] = 95;
  a3.n128_u8[7] = 95;
  return (*(v10 + 8 * (a7 - 14402)))(8 - (v7 & 0x18), -v8, v7 + v9 - 8, (a7 - 14446), ((a7 - 1975292782) & 0x75BC6FF7) - 28520, 212, xmmword_100F523B0, a2, a3);
}

uint64_t sub_1001654AC@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  v52 = (a45 & 0xF ^ 8u) - v51 - v49;
  v54 = (v45 - v51) > 0xF && (v52 + v46 + 3) > 0xF && v52 + v47 + 1 >= ((a1 - 40853) | 0x86BC) - 42733;
  v55 = v52 + v48 + ((943 * (a1 ^ 0xBFE3)) ^ 0xC339);
  v57 = v54 && v55 > 0xF;
  return (*(v50 + 8 * ((v57 | (8 * v57)) ^ a1)))();
}

uint64_t sub_1001655C8@<X0>(int a1@<W0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, int a20, int a21, int a22, int a23, int a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, uint64_t a32, int a33, uint64_t a34, uint64_t a35)
{
  v40 = a24 + a31 * v35 + a33 * a1 + 60416909 + a2;
  v41 = a9 ^ v40 ^ ((v40 ^ 0xDE8796DA) - 941322088) ^ ((v40 ^ 0xFFEFFFB9) - 426968587) ^ (((v37 + 30736) ^ 0x316BCAC5) + (v40 ^ 0x28080CD0)) ^ ((v37 ^ 0xF69FD206) + (v40 ^ 0xEFFC9C01));
  v42 = a20 + v39 + 836991775 + (((v41 ^ 0x6ABB058C) - 1664963478) ^ ((v41 ^ 0xD090F4DE) + 652827964) ^ ((v41 ^ 0x73274E7D) - 2057377895));
  v43 = *(v36 + 4 * a29);
  v44 = ((2 * (v43 ^ 0xDE760A51)) ^ 0x1C336664) & (v43 ^ 0xDE760A51) ^ (2 * (v43 ^ 0xDE760A51)) & 0xE19B332;
  v45 = v44 ^ 0x2089112;
  v46 = v44 & (4 * ((2 * (v43 & v38)) & (v43 ^ 0xDE6F3853) ^ v43 & v38)) ^ (2 * (v43 & v38)) & (v43 ^ 0xDE6F3853) ^ v43 & v38;
  v47 = v43 ^ (2 * ((((4 * v45) ^ 0x3866CCC0) & v45 ^ (4 * v45) & 0xE19B330) & (16 * v46) ^ v46)) ^ v42 ^ ((v42 ^ 0x7E21B711) + 557224042) ^ ((v42 ^ 0xEB851398) - 1265486623) ^ ((v42 ^ 0xCAFBA0F1) - 1779660918) ^ ((v42 ^ 0xFFB7DCFF) - 1600062584);
  v48 = a24 + a22 + a18 + *(v36 + 4 * a27) - *(v36 + 4 * a26) - 1255515330 + (((v47 ^ 0xDC63BFD7) - 1983874416) ^ ((v47 ^ 0xA67513E) + 1606718567) ^ ((v47 ^ 0xA2A38F0D) - 150975914));
  v49 = ((2 * (v48 ^ 0xE29CB28A)) ^ 0xE8F0F986) & (v48 ^ 0xE29CB28A) ^ (2 * (v48 ^ 0xE29CB28A)) & 0x74787CC2;
  v50 = v49 & (4 * (((2 * v48) & 0x2DC99C92 ^ 0x96E4CE49) & v48)) ^ ((2 * v48) & 0x2DC99C92 ^ 0x96E4CE49) & v48;
  v51 = a8 ^ v48 ^ (2 * (((4 * v49) ^ 0x50201100) & (v49 ^ 0x60707880) & (16 * v50) ^ v50));
  return (*(a35 + 8 * ((50330 * (((a10 + (((v51 ^ 0x9AAC6429) + 1988494782) ^ ((v51 ^ 0xA9C6252A) + 1173111999) ^ ((v51 ^ 0x629EC9D7) - 1900763068))) & 1) == 0)) ^ v37)))();
}

uint64_t sub_100165A04(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  v43 = (&a40 + 4 * v40);
  *v43 = a1;
  v43[1] = a1;
  return (*(v42 + 8 * ((28 * (((v41 - 920824944) & 0x36E2DB4E ^ 0x5146) + v40 == 128)) ^ v41)))();
}

uint64_t sub_100165B54@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a2 + 16568;
  v12 = (*(v9 + 8 * (a2 ^ 0xE956)))(*(a9 - 1306953403), a1, (a2 - 1780836278) & 0x6A256D7D ^ *(v10 + 8) ^ 0xE9D5EE6D);
  return (*(v9 + 8 * v11))(v12);
}

uint64_t sub_100165BC0@<X0>(char a1@<W1>, char a2@<W2>, char a3@<W3>, char a4@<W4>, char a5@<W5>, char a6@<W6>, char a7@<W7>, unsigned int a8@<W8>)
{
  v15 = v8 - 1;
  v16 = (a3 & (2 * v9) ^ (((a8 + v10) | a1) + a4)) & v9;
  v17 = ((2 * (v9 ^ a2)) ^ a5) & (v9 ^ a2) ^ (2 * (v9 ^ a2)) & a6;
  *(v14 + v15) = (v9 ^ (2 * ((a7 ^ (4 * v17)) & (v17 ^ v11) & (16 * (v17 & (4 * v16) ^ v16)) ^ v17 & (4 * v16) ^ v16)) ^ v13) * (v9 + 51);
  return (*(v12 + 8 * (((4 * (v15 != 0)) | (8 * (v15 != 0))) ^ a8)))();
}

uint64_t sub_100165D00()
{
  v7 = v0 - 42152 + 3 * ((v4 + 1588449566) & 0xA1521AFE ^ 0x3408);
  LODWORD(STACK[0x4B0]) = v7;
  if (v7 <= v5)
  {
    v2 = v3;
  }

  LODWORD(STACK[0x4B4]) = v2;
  return (*(v6 + 8 * ((449 * (v2 == v1)) ^ v4)))();
}

uint64_t sub_100165D84(__n128 a1)
{
  v4.n128_u64[0] = (v2 + 13) & 0xF;
  v4.n128_u64[1] = (v2 + 12) & 0xF;
  v5.n128_u64[0] = (v2 + 11) & 0xF;
  v5.n128_u64[1] = (v2 + 10) & 0xF;
  v6.n128_u64[0] = (v2 + 9) & 0xF;
  v6.n128_u64[1] = v2 & 0xF ^ 8;
  v9.val[0].i64[0] = (v2 + 7) & 0xF;
  v9.val[0].i64[1] = (v2 + 6) & 0xF;
  v9.val[1].i64[0] = (v2 + 5) & 0xF;
  v9.val[1].i64[1] = (v2 + 4) & 0xF;
  v9.val[2].i64[0] = (v2 + 3) & 0xF;
  v9.val[2].i64[1] = (v2 + 2) & 0xF;
  v9.val[3].i64[0] = (v2 + 1) & 0xF;
  v9.val[3].i64[1] = v2 & 0xF;
  v7.n128_u64[0] = 0x7777777777777777;
  v7.n128_u64[1] = 0x7777777777777777;
  return (*(*(v3 - 184) + 8 * (v1 | 0x4694)))((v2 + 14) & 0xF, v2 - 16, (v2 & 0x10) - 16, ((v1 | 0x4694u) + 16768) ^ 0x9153, v3 - 112, 12297, a1, v4, v5, v6, xmmword_100BC76B0, vqtbl4q_s8(v9, xmmword_100BC76B0), v7);
}

uint64_t sub_100165E88()
{
  v7 = v5 + v3;
  v8 = (v3 - 1) & 0xF;
  v9 = v1 - v3 + v8 + 1;
  v10 = v1 + v8 + 1;
  v11 = v0 + v8 - v3 + ((v4 + 19550) ^ 0xBCA3);
  v12 = v8 + v0 + 5;
  v13 = v2 + v8 - v3 + (v4 ^ 0x704ELL);
  v14 = v8 + v2 + 6;
  v16 = v10 > v5 && v9 < v7;
  if (v12 > v5 && v11 < v7)
  {
    v16 = 1;
  }

  v19 = v14 > v5 && v13 < v7 || v16;
  return (*(v6 + 8 * ((21 * v19) ^ v4)))();
}

uint64_t sub_100166008(int a1, uint64_t a2)
{
  v10 = a2 - 1;
  *(v8 + v10) = *(v4 + (v10 & 0xF)) ^ *(v2 + v10) ^ *((v10 & 0xF) + v6 + 3) ^ ((v10 & 0xF) * v7) ^ *(v5 + (v10 & 0xF));
  return (*(v9 + 8 * (((v10 == 0) * a1) ^ v3)))();
}

uint64_t sub_100166058()
{
  v3 = *(v2 + 144);
  v4 = *(v2 + 248);
  v4[15] = v3[15];
  v4[14] = v3[14];
  v4[13] = v3[13];
  v4[12] = v3[12];
  v4[11] = v3[11];
  v4[10] = v3[10];
  v4[9] = v3[9];
  v4[8] = v3[8];
  v4[7] = v3[7];
  v4[6] = v3[6];
  v4[5] = v3[5];
  v4[4] = v3[4];
  v4[3] = v3[3];
  v4[2] = v3[2];
  v4[1] = v3[1];
  return (*(v1 + 8 * v0))();
}

uint64_t sub_100166184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, int a13, uint64_t a14)
{
  *(a9 + 32) = 0;
  *a9 = v14;
  *(a9 + 8) = 0;
  *(a9 + 24) = 1497668694;
  *(a9 + 16) = 0xCED180B0CED180BLL;
  *(a9 + 40) = -758299001;
  *(a11 + 32) = a9;
  *a11 = a12;
  *(a11 + 28) = a13;
  v17 = (*(v15 + 8 * (v16 + 33265)))(a14, a11 + 4, 24);
  *a10 = a11;
  return (*(v15 + 8 * (v16 + 24001)))(v17);
}

uint64_t sub_100166210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, int a19, char a20, uint64_t a21, char a22, int a23, char a24, uint64_t a25, int a26, char *a27, unsigned int a28, uint64_t a29, char *a30)
{
  v34 = v30 + 8796;
  v35 = v30 - 6154;
  v36 = v30 - 21179;
  a28 = v30 - 21179 - 353670337 * (((&a26 | 0x224748DA) - (&a26 | 0xDDB8B725) - 575097051) ^ 0x9666B0E7);
  a29 = v32;
  a30 = &a20;
  a27 = &a22;
  (*(v33 + 8 * (v30 + 18128)))(&a26);
  v37 = a26;
  a28 = v36 - 353670337 * ((~&a26 & 0xAF6B664D | &a26 & 0x509499B0) ^ 0x1B4A9E70);
  a29 = v31;
  a30 = &a24;
  a27 = &a18;
  v38 = (*(v33 + 8 * (v34 ^ 0x6C74)))(&a26);
  v40 = v37 != (v35 ^ 0xE9D5AA35) || a26 != -371865839;
  return (*(v33 + 8 * ((43 * v40) ^ v34)))(v38);
}

uint64_t sub_100166528@<X0>(int a1@<W8>)
{
  v8 = v6 < 0x6D7711DD;
  *(v1 + v3) = *(v2 + v3) ^ *(v5 + v3) ^ v4;
  if (v8 == (v3 + 1) > 0xFFFFFFFF9288EE22)
  {
    v8 = v3 + 1836519902 < v6;
  }

  return (*(v7 + 8 * ((v8 * ((a1 ^ 0x6DFB2772) - 1845121406)) ^ a1)))();
}

uint64_t sub_1001665B4()
{
  STACK[0x2D18] = 0;
  LODWORD(STACK[0x9268]) = -371865839;
  return (*(STACK[0xF18] + 8 * (v0 - 16173)))();
}

uint64_t sub_1001667DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t (*a30)(uint64_t))
{
  v34 = 1112314453 * ((((v33 - 136) | 0xE3D2CE82) - ((v33 - 136) & 0xE3D2CE80)) ^ 0xC84E45B);
  *(v33 - 128) = a8;
  *(v33 - 136) = v34 + v30 + 9812;
  *(v33 - 120) = v34 + (v32 ^ 0x767FFB2F) + ((2 * v32) & 0xECFFF65E) - 1347617026;
  v35 = (*(v31 + 8 * (v30 | 0xCB20)))(v33 - 136);
  return a30(v35);
}

uint64_t sub_1001669B4()
{
  v5 = (v0 & 0x542528A4 | (2 * (v0 & 1)) | (43289123 - (v0 & 0x94A4511)) & 0x94A4511) + (v0 & 0xA290924A);
  v7 = *(v1 + 8) != v1 && ((((19 - v5) ^ (19 - v5)) - 1) & (v5 - 20)) < 0;
  return (*(v4 + 8 * ((v7 * v3) ^ v2)))();
}

uint64_t sub_100166B90()
{
  v3 = 906386353 * ((v2 - 240 - 2 * ((v2 - 240) & 0x475AAC88) - 950358900) ^ 0xF65B61A8);
  *(v2 - 240) = &STACK[0x610];
  *(v2 - 224) = 0;
  *(v2 - 216) = &STACK[0x474];
  *(v2 - 232) = v3 + v1 - 3084;
  *(v2 - 228) = v3 ^ 0xF1D0BA33;
  v4 = (*(v0 + 8 * (v1 + 41823)))(v2 - 240);
  return (*(v0 + 8 * ((103 * (*(v2 - 208) == v1 - 371876005 + v1 - 7987 - 2179)) ^ v1)))(v4);
}

uint64_t sub_100166C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, unsigned int a25)
{
  v27 = *(a19 + 4 * ((0x9ED10ECD % (a18 >> 2)) & 0x3FFFFFFC));
  v28 = *(v26 + 8 * a12);
  v29 = *(v28 - 527405895);
  v30 = *(v26 + 8 * a11) + 4 * v29;
  v31 = *(v30 - 1940437438);
  v33 = ~*(a19 + 4 * (v27 & ((a18 >> 2) + 0xFFFF) & ((a14 | 0x1559) ^ 0xEA06))) & (~v27 >> 16);
  v32 = v33 == 0;
  v34 = v33 + v33 * v31;
  if ((~*(a19 + 4 * (v27 & ((a18 >> 2) + 0xFFFF) & ((a14 | 0x1559) ^ 0xEA06))) & (~v27 >> 16)) != 0)
  {
    v35 = 0;
  }

  else
  {
    v35 = *(v30 - 1940437438);
  }

  *(v30 - 1940437438) = (v34 + v35) * v31;
  *(v28 - 527405895) = (v29 + 1) % 6u;
  v36 = v32;
  return (*(v25 + 8 * ((38504 * v36) ^ a13)))(a1, a2, a3, a25);
}

uint64_t sub_100166D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v67 + 24) = a1;
  *(v69[3] + 32) = v69[4];
  *(STACK[0x308] + 40) = v69[1] + *(STACK[0x308] + 40) - 0x3CE25E0EC5200378;
  v70 = ((((v65 - 3002) ^ LOBYTE(STACK[0x5DF]) ^ 0x1A81208C1997321ALL) - 0x1A81208C199717F6) ^ ((LOBYTE(STACK[0x5DF]) ^ 0x561CB628E94F767DLL) - 0x561CB628E94F767DLL) ^ ((LOBYTE(STACK[0x5DF]) ^ 0x4C9D96A4F0D8614DLL) - 0x4C9D96A4F0D8614DLL)) + 0x73B4913AF7C22BEALL;
  v69[1] = 0x79C4BC1D8A4006F0 - v69[1];
  v69[2] = v70;
  *a65 = 0x3CE25E0EC5200378;
  STACK[0x5D0] = v66 - 0x53BB2138767E162BLL;
  v71 = *(v68 + 8 * (v65 ^ (16 * (v66 == 0x53BB2138767E162BLL))));
  return v71(v71, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_100166F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, char *a21, unsigned int a22)
{
  v25 = *v22;
  a22 = (v24 + 33955) ^ (139493411 * ((&a20 - 2 * (&a20 & 0x4646868) - 2073794453) ^ 0x8849892E));
  a20 = 0;
  a21 = &a16;
  v26 = (*(v23 + 8 * (v24 + 41193)))(&a20);
  return (*(v23 + 8 * ((42135 * (((a13 - ((2 * a13) & 0xCE4408DC3900CCELL) + 0x6722046E1C80667) ^ *(v25 + 8)) == 0x6722046E1C80667)) ^ v24)))(v26);
}

uint64_t sub_1001670D0@<X0>(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 ^ 0xC2DD1E56)))(a1);
  v3 = STACK[0x408];
  *(STACK[0x758] + 24) = 0;
  return (*(v3 + 8 * ((113889 * (v1 >= ((v1 + 1025665800) | 0x300) - 187775909)) ^ (v1 + 1025687367))))();
}

uint64_t sub_100167188()
{
  v3 = (((2 * v0) & 0x7FED6FFFB23F3FD2) + (v0 ^ 0xBFF6B7FFD91F9FE9) + STACK[0x948]);
  v4 = (v3[0x4009480026E06017] << 56) | (v3[((v1 - 4277) | 0x4431u) ^ 0x4009480026E03EA9] << 48) | (((v3[0x4009480026E06019] - ((2 * v3[0x4009480026E06019]) & 0x1F8u) + 14265095) << 40) - 0xB0000000000) ^ 0xD9AAFC0000000000 | (((v3[0x4009480026E0601ALL] - ((2 * v3[0x4009480026E0601ALL]) & 0xBCu) - 380412027) << 32) - 0x2700000000) ^ 0xE9535F5E00000000 | (((v3[0x4009480026E0601BLL] - ((2 * v3[0x4009480026E0601BLL]) & 0x5E)) << 24) - 0x2EBBDFF0D1000000) ^ 0xD144200F2F000000 | (((v3[0x4009480026E0601CLL] - 2 * (v3[0x4009480026E0601CLL] & 0x3F)) << 16) - 0xBF699201FC10000) ^ 0xF40966DFE03F0000 | (((v3[0x4009480026E0601DLL] - ((2 * v3[0x4009480026E0601DLL]) & 0xBC)) << 8) + 0x564D9D4C1CB75E00) ^ 0x564D9D4C1CB75E00;
  v5 = v3[0x4009480026E0601ELL] - ((2 * v3[0x4009480026E0601ELL]) & 0x156) + 0x552540C778FCD2ABLL;
  STACK[0x5C0] = v5 & 0x102000000000C1FELL ^ 0x279CBDDC96023AE5 ^ ((v4 - ((2 * v4) & 0x255A2C96A1EB5E7ELL) + 0x12AD164B50F5AF2BLL) ^ 0x136C89B05C6FB92ALL) & (v5 ^ 0xAADABF3887032D54);
  return (*(v2 + 8 * v1))();
}

uint64_t sub_1001673F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, unsigned int a11)
{
  v13 = (a10 ^ 0x7FF9FFDD) + v12 - 1697 + ((2 * a10) & 0xFFF3FFBA) - 1430650755;
  v14 = v13 < 0x2AB4A473;
  v15 = v13 > a11 + 716481651;
  if (a11 > 0xD54B5B8C != v14)
  {
    v15 = v14;
  }

  return (*(v11 + 8 * (v15 | (16 * v15) | (v12 - 25338))))();
}

uint64_t sub_1001674E4@<X0>(char a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v12 = v10 + v9 + a2;
  *(a4 + v12) = *(v5 + (v12 & 0xF)) ^ *(v8 + v12) ^ *(v6 + (v12 & 0xF)) ^ *(v7 + (v12 & 0xF)) ^ ((v12 & 0xF) * a1);
  return (*(v11 + 8 * (((v12 == 0) * a3) ^ v4)))();
}

uint64_t sub_100167580@<X0>(int a1@<W8>)
{
  v4 = v2 - 22652;
  v5 = (v2 + 1820875389) & 0x9377933F;
  LODWORD(STACK[0x3C4]) = v5;
  v6 = (v5 - 1802370714) * v1;
  LODWORD(STACK[0x3BC]) = a1;
  LOBYTE(v5) = -55 * *(*(&off_1010A0B50 + (v4 ^ 0x5B82)) + (((v5 + 102) * v1) ^ 0xBCLL) - 1483925502) - 89;
  v7 = (((BYTE1(v6) ^ *(*(&off_1010A0B50 + v4 - 16130) + (BYTE1(v6) ^ 0xF9) - 1068042110)) << 8) ^ 0x3473B4BC) & (v5 ^ 0xB677FFFD) | v5 & 0x43;
  v8 = v1[15];
  v9 = (v7 ^ 0xCB8C2403) & (((((BYTE2(v6) ^ 0x39) - (BYTE2(v6) ^ 8)) ^ *(*(&off_1010A0B50 + v4 - 17061) + (((HIWORD(v6) ^ 0xA939) & 0x52 | 0xAD) ^ (HIWORD(v6) ^ 0xA939) & 0xAD) - 803685435)) << 16) ^ 0xCB9675B7) ^ v7 & 0x34638A48;
  v10 = (v9 ^ 0x8240) & (((HIBYTE(v6) ^ *(*(&off_1010A0B50 + (v4 ^ 0x4C49)) + (HIBYTE(v6) ^ 0xDCLL) - 1316944475) ^ 0x3F) << 24) ^ 0xD805B3D5) ^ v9 & 0x15FA4C2A;
  v11 = *(&off_1010A0B50 + (v4 ^ 0x451F)) - 259788923;
  v12 = v11[v8 ^ 0x4F];
  *(v3 - 152) = v10;
  v13 = (v12 ^ v8) << 24;
  v14 = *(&off_1010A0B50 + (v4 ^ 0x49EF)) - 2020426987;
  v15 = (((v14[v1[12] ^ 0x87] + 82) << 16) ^ 0x5B213F17) & (v13 ^ 0x8CFFBF7F) | v13 & 0xA4000000;
  v16 = *(&off_1010A0B50 + (v4 ^ 0x4CEB)) - 177596431;
  v17 = *(&off_1010A0B50 + v4 - 19128) - 1776052454;
  v18 = v17[v1[5] ^ 0x2ALL];
  HIDWORD(v19) = v18 ^ 5;
  LODWORD(v19) = (v18 ^ 0x70) << 24;
  v20 = (((((v16[v1[8] ^ 0xD3] + 78) << 8) ^ 0x6E00604F) & (v15 ^ 0xA1E0C0C8) | v15 & 0x91FF0000) ^ 0x6A3E4EE9) & (~(v19 >> 28) | 0xFFFFFF00) | (v19 >> 28) & 0x59;
  v21 = (v14[*v1 ^ 0x87] + 82);
  v22 = v21 >> 6;
  LODWORD(v8) = ((v21 << 16) ^ 0xFF2C70B4) & (((v11[v1[14] ^ 0x4FLL] ^ v1[14]) << 24) ^ 0xF5BF70B4);
  v23 = v8 & 0xAF2F0000;
  v24 = v17[v1[13] ^ 0x2ALL];
  LODWORD(v8) = (((v16[v1[10] ^ 0xD3] + 78) << 8) ^ 0x50D0F7AD) & ((v8 & 0xFFBFFFFF | ((v22 & 1) << 22)) ^ 0xF8078F5B);
  HIDWORD(v19) = v24 ^ 5;
  LODWORD(v19) = (v24 ^ 0x70) << 24;
  v25 = (v1[9] ^ 0x5C ^ v11[v1[9] ^ 0x4FLL]) << 24;
  LODWORD(v8) = ((v8 | v23) ^ 0x47E9B587) & ((v19 >> 28) ^ 0xFFFFFFAF);
  v26 = (v19 >> 28) & 0xD5;
  v27 = (((v14[v1[2] ^ 0x87] + 82) << 16) ^ 0x4631E928) & (v25 ^ 0xC5FFFD3D) | v25 & 0xB9000000;
  v28 = v17[v1[11] ^ 0x2ALL];
  HIDWORD(v19) = v28 ^ 5;
  LODWORD(v19) = (v28 ^ 0x70) << 24;
  v29 = ((((((v16[v1[4] ^ 0xD3] ^ 1) + 78) << 8) ^ 0xDF42FD39) & (v27 ^ 0x900416D5) | v27 & 0x20BD0000) ^ 0x4E781464) & ((v19 >> 28) ^ 0xFFFFFF7F);
  v30 = (v19 >> 28) & 0xA2;
  v31 = v1[1];
  LODWORD(v14) = (v14[v1[6] ^ 0x87] + 82) << 16;
  LODWORD(v11) = (((v11[v1[7] ^ 0x4FLL] ^ v1[7]) << 24) ^ 0xE08F6EC) & ~v14 | v14 & 0xFFF7FFFF;
  HIDWORD(v19) = (v31 >> 4) ^ 5;
  LODWORD(v19) = (v31 << 28) ^ 0x80000000;
  LODWORD(v14) = v17[(v19 >> 28) ^ 0x72];
  HIDWORD(v19) = v14 ^ 5;
  LODWORD(v19) = (v14 ^ 0x70) << 24;
  v32 = v20 ^ 0xBBB85520 ^ ((v11 & 0x71320200 ^ 0x1C903C33 ^ (((v16[v1[3] ^ 0xD3] + 78) << 8) ^ 0x8ECD6C4C) & (v11 ^ 0xD60609A0)) & (~(v19 >> 28) | 0xFFFFFF00) | (v19 >> 28) & 0x80);
  *(v3 - 148) = v10 ^ 0xC2C6838F;
  LODWORD(v8) = v26 ^ v8 ^ v32 ^ v10 ^ 0xC2C6838F;
  LODWORD(v11) = v10 ^ v20 ^ 0xE9506BEC ^ v30 ^ v29 ^ 0x60C6B9FC ^ v8;
  v33 = v11 ^ v10 ^ 0xC2C6838F;
  v34 = v33 ^ v32;
  v35 = v11 ^ v20 ^ 0xE9506BEC ^ v34;
  v36 = *(&off_1010A0B50 + (v4 ^ 0x5BD1)) - 451612051;
  v37 = *(&off_1010A0B50 + (v4 ^ 0x5BFA)) - 261720710;
  v38 = *(&off_1010A0B50 + v4 - 16538) - 1300493782;
  v39 = *(&off_1010A0B50 + (v4 ^ 0x5BAB)) - 49583311;
  v40 = *&v36[4 * (BYTE2(v8) ^ 0xA3)] + 723109185;
  LODWORD(v17) = v34 ^ 0x2C;
  LODWORD(v14) = v40 ^ (v40 >> 3) ^ *&v37[4 * (HIBYTE(v35) ^ 0x24)] ^ (v40 >> 4) ^ *&v38[4 * (BYTE1(v33) ^ 0xC7)] ^ *&v39[4 * (v34 ^ 0x34)] ^ (v17 - 1688404483) ^ ((HIBYTE(v35) ^ 0x69) + 1008624905);
  v41 = *&v36[4 * (BYTE2(v35) ^ 0xDC)] + 723109185;
  v42 = *&v38[4 * (BYTE1(v8) ^ 0x2C)] ^ *&v37[4 * (HIBYTE(v34) ^ 0xA0)] ^ *&v39[4 * (v33 ^ 0xF1)] ^ v41 ^ (v41 >> 3) ^ (v41 >> 4);
  v43 = v33 ^ 0xE9;
  v44 = v42 ^ (v43 - 1688404483) ^ ((HIBYTE(v34) ^ 0xED) + 1008624905);
  v45 = *&v36[4 * (BYTE2(v34) ^ 0xF3)] + 723109185;
  v46 = ((v8 ^ 0xC0) - 1688404483) ^ v8 ^ 0xC0 ^ ((HIBYTE(v33) ^ 0x76) + 1008624905) ^ *&v37[4 * (HIBYTE(v33) ^ 0x3B)] ^ *&v38[4 * (BYTE1(v35) ^ 0x9E)] ^ v45 ^ *&v39[4 * (v8 ^ 0xD8)] ^ (v45 >> 3) ^ (v45 >> 4);
  v47 = v35 ^ 8;
  v48 = *&v36[4 * (BYTE2(v33) ^ 0xB0)] + 723109185;
  v49 = (v47 - 1688404483) ^ ((BYTE3(v8) ^ 0x3C) + 1008624905) ^ *&v37[4 * (BYTE3(v8) ^ 0x71)] ^ v48 ^ (v48 >> 3) ^ (v48 >> 4) ^ *&v38[4 * (BYTE1(v34) ^ 0xF3)] ^ *&v39[4 * (v35 ^ 0x10)];
  LODWORD(v8) = v44 ^ v43;
  v50 = v8 ^ 0x3C;
  v51 = *&v36[4 * (BYTE2(v49) ^ 0x16)] + 723109185;
  v52 = (((v14 >> 24) ^ 6) + 1008624905) ^ *&v37[4 * ((v14 >> 24) ^ 0x4B)] ^ ((v8 ^ 0x3C) - 1688404483) ^ *&v38[4 * BYTE1(v46)] ^ v51 ^ *&v39[4 * (v8 ^ 0x24)] ^ (v51 >> 3) ^ (v51 >> 4);
  LODWORD(v8) = v46 ^ 0x14;
  v53 = *&v36[4 * (BYTE2(v14) ^ 0xAB)] + 723109185;
  v54 = *&v37[4 * (HIBYTE(v44) ^ 0x1D)] ^ ((HIBYTE(v44) ^ 0x50) + 1008624905) ^ (v8 - 1688404483) ^ *&v38[4 * (BYTE1(v49) ^ 0xA1)] ^ v53 ^ *&v39[4 * (v46 ^ 0xC)] ^ (v53 >> 3) ^ (v53 >> 4);
  v55 = *&v36[4 * (BYTE2(v44) ^ 0x36)] + 723109185;
  v56 = ((v49 ^ v47 ^ 0xC8) - 1688404483) ^ v49 ^ v47 ^ 0xC8 ^ *&v38[4 * (BYTE1(v14) ^ 0xB1)] ^ *&v39[4 * (v49 ^ v47 ^ 0xD0)] ^ v55 ^ (v55 >> 3) ^ (v55 >> 4) ^ __ROR4__((((HIBYTE(v46) << 10) ^ 0x2D000) + 2039751920) ^ __ROR4__(*&v37[4 * (HIBYTE(v46) ^ 0xF9)], 22) ^ 0xAADE7644, 10);
  LODWORD(v14) = v14 ^ v17;
  LODWORD(v17) = *&v36[4 * (BYTE2(v46) ^ 0x1B)] + 723109185;
  v57 = ((HIBYTE(v49) ^ 0x9F) + 1008624905) ^ ((v14 ^ 0x65) - 1688404483) ^ *&v37[4 * (HIBYTE(v49) ^ 0xD2)] ^ *&v38[4 * (BYTE1(v44) ^ 0xE9)] ^ v17 ^ *&v39[4 * (v14 ^ 0x7D)] ^ (v17 >> 3) ^ (v17 >> 4);
  v58 = v57 ^ v14 ^ 0x65;
  LODWORD(v8) = v54 ^ v8;
  v59 = v8 ^ 0xF7;
  v60 = *&v36[4 * (BYTE2(v57) ^ 0x52)] + 723109185;
  v61 = ((v8 ^ 0xF7) - 1688404483) ^ ((HIBYTE(v52) ^ 0x2E) + 1008624905) ^ *&v37[4 * (HIBYTE(v52) ^ 0x63)] ^ v60 ^ *&v38[4 * (BYTE1(v56) ^ 0xF)] ^ *&v39[4 * (v8 ^ 0xEF)] ^ (v60 >> 3) ^ (v60 >> 4);
  v62 = *&v36[4 * (BYTE2(v52) ^ 0x3C)] + 723109185;
  v63 = v56 ^ 0x20 ^ ((HIBYTE(v54) ^ 0xDD) + 1008624905) ^ ((v56 ^ 0x20) - 1688404483) ^ *&v37[4 * (HIBYTE(v54) ^ 0x90)] ^ v62 ^ *&v39[4 * (v56 ^ 0x38)] ^ *&v38[4 * (((v58 ^ 0x703D3F1) >> (BYTE2(v52) & 8 ^ 8) >> (BYTE2(v52) & 8)) ^ 0x55)] ^ (v62 >> 3) ^ (v62 >> 4);
  v64 = ((v58 ^ 0xF1) - 1688404483) ^ ((v58 ^ 0xF1) - ((2 * (v58 ^ 0xF1)) & 0x1B6) - 19302437) ^ *&v39[4 * (v58 ^ 0xE9)] ^ 0x362AD244;
  v65 = *&v36[4 * (BYTE2(v54) ^ 0xB7)] + 723109185;
  v66 = *&v37[4 * (HIBYTE(v56) ^ 0x18)] ^ ((HIBYTE(v56) ^ 0x55) + 1008624905) ^ *&v38[4 * (BYTE1(v52) ^ 0x94)] ^ v65 ^ (v65 >> 3) ^ (v65 >> 4);
  v67 = v66 ^ 0x3743FC73;
  if ((v66 & v64 & 4) != 0)
  {
    v68 = -(v64 & 4);
  }

  else
  {
    v68 = v64 & 4;
  }

  v69 = (v68 + v67) ^ v64 & 0xFFFFFFFB;
  v70 = v52 ^ v50;
  v71 = v70 ^ 0x52;
  v72 = *&v36[4 * (BYTE2(v56) ^ 0xD4)] + 723109185;
  v73 = ((HIBYTE(v57) ^ 7) + 1008624905) ^ ((v70 ^ 0x52) - 1688404483) ^ *&v37[4 * (HIBYTE(v57) ^ 0x4A)] ^ *&v38[4 * (BYTE1(v54) ^ 0x9D)] ^ *&v39[4 * (v70 ^ 0x4A)] ^ v72 ^ (v72 >> 3) ^ (v72 >> 4);
  v74 = *&v36[4 * (BYTE2(v73) ^ 0x41)] + 723109185;
  v75 = v63 ^ 0x97 ^ ((HIBYTE(v61) ^ 0xA7) + 1008624905) ^ ((v63 ^ 0x97) - 1688404483) ^ *&v37[4 * (HIBYTE(v61) ^ 0xEA)] ^ v74 ^ *&v38[4 * (BYTE1(v69) ^ 0xB4)] ^ (v74 >> 3) ^ (v74 >> 4) ^ *&v39[4 * (v63 ^ 0x8F)];
  v76 = *&v36[4 * (BYTE2(v61) ^ 0xC1)] + 723109185;
  v77 = *&v37[4 * (HIBYTE(v63) ^ 0x4A)] ^ ((HIBYTE(v63) ^ 7) + 1008624905) ^ v69 ^ 0x85 ^ *&v38[4 * (BYTE1(v73) ^ 0xB3)] ^ ((v69 ^ 0x85) - 1688404483) ^ v76 ^ *&v39[4 * (v69 ^ 0x9D)] ^ (v76 >> 3) ^ (v76 >> 4);
  v78 = *&v36[4 * (BYTE2(v63) ^ 0x66)] + 723109185;
  v79 = *&v37[4 * (HIBYTE(v69) ^ 0xB8)] ^ ((HIBYTE(v69) ^ 0xF5) + 1008624905) ^ *&v38[4 * (BYTE1(v61) ^ 0x55)] ^ __ROR4__(((((v73 ^ v71 ^ 0xAD) + 3581) ^ v73 ^ v71) << 20) ^ __ROR4__(*&v39[4 * (v73 ^ v71 ^ 0xB5)], 12) ^ 0x7E79F76, 20);
  v81 = __ROR4__(((((v78 ^ (v78 >> 1)) >> 5) ^ 0x799093F7) & (~((v78 ^ (v78 >> 1)) << 27) | 0x3FFFFFFF) & 0x7FFFFFFF | (((v78 ^ (v78 >> 1)) >> 4) << 31)) ^ __ROR4__(v78, 2), 30);
  v80 = v79 ^ v81;
  v82 = ((v61 ^ v59 ^ 0xDF) - 1688404483) ^ v61 ^ v59 ^ 0xDF ^ ((HIBYTE(v73) ^ 0x9A) + 1008624905) ^ *&v37[4 * (HIBYTE(v73) ^ 0xD7)] ^ *&v38[4 * (BYTE1(v63) ^ 0xE4)] ^ *&v39[4 * (v61 ^ v59 ^ 0xC7)];
  v83 = *&v36[4 * (BYTE2(v69) ^ 0xF8)] + 723109185;
  v84 = v82 ^ v83 ^ (v83 >> 3) ^ (v83 >> 4);
  v85 = *&v36[4 * (BYTE2(v84) ^ 0x8F)] + 723109185;
  v86 = v77 ^ 0xD7 ^ ((HIBYTE(v75) ^ 0x79) + 1008624905) ^ ((v77 ^ 0xD7) - 1688404483) ^ *&v37[4 * (HIBYTE(v75) ^ 0x34)] ^ v85 ^ (v85 >> 3) ^ (v85 >> 4) ^ *&v38[4 * (((v79 ^ v81) >> 8) ^ 0x74)] ^ *&v39[4 * (v77 ^ 0xCF)];
  v87 = (v79 ^ v81);
  v88 = v87 ^ 0x9B;
  v89 = *&v36[4 * (BYTE2(v75) ^ 0x84)] + 723109185;
  v90 = *&v37[4 * (HIBYTE(v77) ^ 0x8D)] ^ ((HIBYTE(v77) ^ 0xC0) + 1008624905) ^ *&v38[4 * (BYTE1(v84) ^ 0x7F)] ^ ((v87 ^ 0x9B) - 1688404483) ^ v89 ^ *&v39[4 * (v87 ^ 0x83)] ^ (v89 >> 3) ^ (v89 >> 4);
  v91 = *&v36[4 * (BYTE2(v77) ^ 0x19)] + 723109185;
  v92 = v84 ^ 0xF1 ^ ((v84 ^ 0xF1) - 1688404483) ^ ((HIBYTE(v80) ^ 0xC8) + 1008624905) ^ *&v38[4 * (BYTE1(v75) ^ 0xFC)] ^ v91 ^ *&v39[4 * (v84 ^ 0xE9)] ^ *&v37[4 * (HIBYTE(v80) ^ 0x85)] ^ (v91 >> 3) ^ (v91 >> 4);
  v93 = v75 ^ 0x6C;
  v94 = (-1008624906 - (HIBYTE(v84) ^ 0x67)) ^ (v93 - 1688404483) ^ *&v37[4 * (HIBYTE(v84) ^ 0x2A)] ^ *&v38[4 * (BYTE1(v77) ^ 0xC6)];
  v95 = *&v36[4 * (BYTE2(v80) ^ 0x62)] + 723109185;
  v96 = v94 ^ *&v39[4 * (v75 ^ 0x74)] ^ v95 ^ (v95 >> 3) ^ (v95 >> 4);
  v97 = v90 ^ v88 ^ 0x2B ^ ((HIBYTE(v86) ^ 0x46) + 1008624905) ^ ((v90 ^ v88 ^ 0x2B) - 1688404483) ^ *&v37[4 * (HIBYTE(v86) ^ 0xB)] ^ *&v38[4 * (BYTE1(v92) ^ 0x51)] ^ *&v39[4 * (v90 ^ v88 ^ 0x33)];
  v98 = *&v36[4 * (BYTE2(v96) ^ 0xA1)] + 723109185;
  v99 = v97 ^ v98 ^ (v98 >> 3) ^ (v98 >> 4);
  v100 = v92 ^ 2;
  v101 = *&v36[4 * (BYTE2(v86) ^ 0xD9)] + 723109185;
  v102 = (v100 - 1688404483) ^ ((HIBYTE(v90) ^ 0xB1) + 1008624905) ^ *&v37[4 * (HIBYTE(v90) ^ 0xFC)] ^ *&v39[4 * (v92 ^ 0x1A)] ^ v101 ^ (v101 >> 3) ^ (v101 >> 4) ^ *&v38[4 * (BYTE1(v96) ^ 0xE8)];
  v103 = (v96 ^ v93);
  v104 = v103 ^ ((HIBYTE(v92) ^ 0xCB) + 1008624905) ^ (((2 * (v96 ^ v93)) & 0x1FA ^ 0x48) + (v103 ^ 0x9B5CFDDB)) ^ *&v37[4 * (HIBYTE(v92) ^ 0x86)];
  v105 = *&v36[4 * (BYTE2(v90) ^ 0x69)] + 723109185;
  v106 = v104 ^ v105 ^ (v105 >> 3) ^ (v105 >> 4) ^ *&v38[4 * (BYTE1(v86) ^ 0x7E)] ^ *&v39[4 * (v103 ^ 0x3E)];
  v107 = v86 ^ 0xCD;
  v108 = ((HIBYTE(v96) ^ 0x2E) + 1008624905) ^ (v107 - 1688404483) ^ *&v38[4 * (BYTE1(v90) ^ 0x9D)] ^ *&v37[4 * (HIBYTE(v96) ^ 0x63)];
  v109 = *&v36[4 * (BYTE2(v92) ^ 0xF8)] + 723109185;
  v110 = v108 ^ v109 ^ *&v39[4 * (v86 ^ 0xD5)] ^ (v109 >> 3) ^ (v109 >> 4);
  v111 = v102 ^ v100;
  v112 = v111 ^ 0xF2;
  v113 = *&v36[4 * (((BYTE2(v110) ^ 0x58) - (BYTE2(v110) ^ 9)) ^ 0xFFFFFFFE) + 4 * (BYTE2(v110) ^ 0x58)] + 723109185;
  v114 = ((v111 ^ 0xF2) - 1688404483) ^ ((HIBYTE(v99) ^ 0x1E) + 1008624905) ^ *&v37[4 * (HIBYTE(v99) ^ 0x53)] ^ *&v38[4 * (BYTE1(v106) ^ 0x75)] ^ *&v39[4 * (v111 ^ 0xEA)] ^ v113 ^ (v113 >> 3) ^ (v113 >> 4);
  v115 = *&v36[4 * (BYTE2(v99) ^ 0x10)] + 723109185;
  v116 = v106 ^ 0x1E ^ ((HIBYTE(v102) ^ 0x66) + 1008624905) ^ ((v106 ^ 0x1E) - 1688404483) ^ *&v37[4 * (HIBYTE(v102) ^ 0x2B)] ^ v115 ^ *&v38[4 * (BYTE1(v110) ^ 0x2A)] ^ (v115 >> 3) ^ (v115 >> 4) ^ *&v39[4 * (v106 ^ 6)];
  v117 = v110 ^ v107;
  v118 = v117 ^ 0x53;
  v119 = *&v36[4 * (BYTE2(v102) ^ 0xCD)] + 723109185;
  v120 = ((v117 ^ 0x53) - 1688404483) ^ ((HIBYTE(v106) ^ 0x78) + 1008624905) ^ *&v37[4 * (HIBYTE(v106) ^ 0x35)] ^ v119 ^ (v119 >> 3) ^ (v119 >> 4) ^ *&v38[4 * (BYTE1(v99) ^ 0x53)] ^ *&v39[4 * (v117 ^ 0x4B)];
  v121 = ((v99 ^ 0x8A) - 1688404483) ^ v99 ^ 0x8A ^ ((HIBYTE(v110) ^ 0xDE) + 1008624905) ^ *&v37[4 * (HIBYTE(v110) ^ 0x93)] ^ *&v38[4 * (BYTE1(v102) ^ 0xAF)];
  v122 = *&v36[4 * (BYTE2(v106) ^ 0xB9)] + 723109185;
  v123 = v121 ^ v122 ^ *&v39[4 * (v99 ^ 0x92)] ^ (v122 >> 3) ^ (v122 >> 4);
  v124 = *&v36[4 * (BYTE2(v123) ^ 0xFD)] + 723109185;
  v125 = v116 ^ 2 ^ ((v116 ^ 2) - 1688404483) ^ ((HIBYTE(v114) ^ 0xAC) + 1008624905) ^ *&v38[4 * (BYTE1(v120) ^ 0x29)] ^ v124 ^ *&v37[4 * (HIBYTE(v114) ^ 0xE1)] ^ *&v39[4 * (v116 ^ 0x1A)] ^ (v124 >> 3) ^ (v124 >> 4);
  v126 = *&v36[4 * (BYTE2(v114) ^ 0x78)] + 723109185;
  v127 = v120 ^ v118 ^ 0x41 ^ ((HIBYTE(v116) ^ 0x7C) + 1008624905) ^ ((v120 ^ v118 ^ 0x41) - 1688404483) ^ *&v38[4 * (BYTE1(v123) ^ 0x22)] ^ *&v37[4 * (HIBYTE(v116) ^ 0x31)] ^ *&v39[4 * (v120 ^ v118 ^ 0x59)] ^ v126 ^ (v126 >> 3) ^ (v126 >> 4);
  v128 = v123 ^ 0x66;
  v129 = *&v36[4 * (BYTE2(v116) ^ 0x2D)] + 723109185;
  v130 = (v128 - 1688404483) ^ ((HIBYTE(v120) ^ 0xF1) + 1008624905) ^ *&v37[4 * (HIBYTE(v120) ^ 0xBC)] ^ *&v38[4 * (BYTE1(v114) ^ 0x25)] ^ v129 ^ *&v39[4 * (v123 ^ 0x7E)] ^ (v129 >> 3) ^ (v129 >> 4);
  v131 = v114 ^ v112;
  v132 = *&v36[4 * (BYTE2(v120) ^ 0x81)] + 723109185;
  v133 = ((v131 ^ 0xFD) - 1688404483) ^ v131 ^ 0xFD ^ ((HIBYTE(v123) ^ 0x9B) + 1008624905) ^ *&v37[4 * (HIBYTE(v123) ^ 0xD6)] ^ v132 ^ *&v39[4 * (v131 ^ 0xE5)] ^ (v132 >> 3) ^ (v132 >> 4) ^ *&v38[4 * (BYTE1(v116) ^ 0x89)];
  v134 = *&v36[4 * (BYTE2(v133) ^ 0xA2)] + 723109185;
  v135 = v127 ^ 0x62 ^ ((HIBYTE(v125) ^ 0x74) + 1008624905) ^ ((v127 ^ 0x62) - 1688404483) ^ *&v37[4 * (HIBYTE(v125) ^ 0x39)] ^ *&v38[4 * (BYTE1(v130) ^ 0xE2)] ^ v134 ^ (v134 >> 3) ^ (v134 >> 4) ^ *&v39[4 * (v127 ^ 0x7A)];
  v136 = *&v36[4 * (BYTE2(v125) ^ 0xE5)] + 723109185;
  v137 = v130 ^ v128 ^ 0x74 ^ ((HIBYTE(v127) ^ 0xDD) + 1008624905) ^ ((v130 ^ v128 ^ 0x74) - 1688404483) ^ *&v37[4 * (HIBYTE(v127) ^ 0x90)] ^ *&v38[4 * (BYTE1(v133) ^ 0x85)] ^ v136 ^ *&v39[4 * (v130 ^ v128 ^ 0x6C)] ^ (v136 >> 3) ^ (v136 >> 4);
  v138 = *&v37[4 * (HIBYTE(v133) ^ 0x39)];
  v139 = *&v36[4 * (BYTE2(v127) ^ 0xB2)] + 723109185;
  v140 = ((v133 ^ 0x84) - 1688404483) ^ ((HIBYTE(v130) ^ 0xEC) + 1008624905) ^ *&v37[4 * (HIBYTE(v130) ^ 0xA1)] ^ *&v38[4 * (BYTE1(v125) ^ 1)] ^ v139 ^ *&v39[4 * (v133 ^ 0x9C)] ^ (v139 >> 3) ^ (v139 >> 4);
  v141 = *&v36[4 * (BYTE2(v130) ^ 0x70)] + 723109185;
  v142 = ((v125 ^ 0xD7) - 1688404483) ^ v125 ^ 0xD7 ^ ((HIBYTE(v133) ^ 0x74) + 1008624905) ^ *&v38[4 * (BYTE1(v127) ^ 0xA4)] ^ v138 ^ v141 ^ *&v39[4 * (v125 ^ 0xCF)] ^ (v141 >> 3) ^ (v141 >> 4);
  v143 = *(&off_1010A0B50 + v4 - 17466) - 102798966;
  v144 = v143[(v140 ^ v133) ^ 0x24];
  v145 = *(&off_1010A0B50 + v4 - 17600) - 989713198;
  v146 = *(&off_1010A0B50 + (v4 ^ 0x4B2D)) - 22538263;
  v147 = *(&off_1010A0B50 + (v4 ^ 0x5B0A)) - 2122269494;
  v148 = *&v146[4 * (HIBYTE(v135) ^ 0x12)] ^ *&v145[4 * (((v142 ^ 0xD0ABE499) >> 16) ^ 0x8A)] ^ *&v147[4 * (BYTE1(v140) ^ 0xE6)] ^ ((((v142 ^ 0xD0ABE499) >> 16) ^ 0xB2) + 1157027549) ^ (-123 * v143[v137 ^ 0x45] + 93);
  v149 = ((v142 ^ 0xE499) >> 8);
  v150 = *&v146[4 * (((HIBYTE(v137) ^ 0xB7) - ((2 * (HIBYTE(v137) ^ 0xB7)) & 0xF8) + 124) ^ 0xFE)] ^ ((((v135 ^ 0x90F3DB83) >> 16) ^ 0xB2) + 1157027549) ^ *&v145[4 * (((v135 ^ 0x90F3DB83) >> 16) ^ 0x8A)] ^ *&v147[4 * (v149 ^ 0xE5)] ^ ((-(v149 ^ 0x262CDC1C) ^ ((v149 ^ 0xEB) - 640474359) ^ 0x33DADCAE ^ ((v149 ^ 0x262CDC1C) - ((2 * (v149 ^ 0x262CDC1C)) & 0x4411B95C) + 869981358)) + (v149 ^ 0xEB)) ^ (-123 * v144 + 93);
  v151 = __ROR4__(__ROR4__(((BYTE2(v140) ^ 0xE6) + 1157027549) ^ *&v146[4 * ((v142 ^ 0xD0ABE499) >> 24)] ^ v148 ^ v150 ^ *&v145[4 * (BYTE2(v140) ^ 0xDE)] ^ *&v147[4 * (BYTE1(v137) ^ 0xB4)] ^ (-123 * v143[v135 ^ 0x83] + 93) ^ 0xE59AE9E4, 29) ^ 0x519CFAAE, 3);
  LODWORD(v143) = ((BYTE2(v137) ^ 0x2E) + 1157027549) ^ *&v146[4 * (HIBYTE(v140) ^ 0x33)] ^ *&v145[4 * (BYTE2(v137) ^ 0x16)] ^ *&v147[4 * (BYTE1(v135) ^ 0x3E)] ^ (-123 * v143[v142 ^ 0xF1] + 93) ^ v148 ^ 0xEEEA203E ^ 0xBF2660C1;
  v152 = *(v3 - 152) ^ 0x15EE2606;
  LODWORD(v143) = v143 ^ v151 ^ 0x3A7763D9;
  v153 = v150 ^ v151 ^ 0x3A7763D9 ^ v143 ^ 0x9A8E5C2;
  v154 = v153 ^ v148 ^ 0xEEEA203E;
  v155 = (v154 ^ *(v3 - 148)) & 0x22DF591A ^ 0x1A44EF99;
  v156 = v153 ^ v152;
  LODWORD(STACK[0x398]) = v153 ^ v152;
  v157 = (v155 & ((v154 ^ v152) & 0xDD20A6E5 ^ 0x6ADFFB1A) | (v154 ^ v152) & 0xC5200064) ^ v143;
  LODWORD(STACK[0x390]) = v157;
  v158 = v143 ^ v152;
  v159 = v151 ^ 0x3A7763D9 ^ v152;
  v160 = *(&off_1010A0B50 + (v4 ^ 0x4D67)) - 442285235;
  *(v3 - 176) = BYTE2(v159);
  v161 = (BYTE2(v159) ^ 0x79) + (BYTE2(v159) ^ 0xF269F922);
  v162 = *&v160[4 * (BYTE2(v159) ^ 0x85)];
  v163 = v162 & 0x20;
  if ((v161 & v162 & 0x20) != 0)
  {
    v163 = -v163;
  }

  v164 = *(&off_1010A0B50 + v4 - 18435) - 923307143;
  v165 = (-v161 ^ (v161 - ((2 * v161) & 0x209013C2) - 1865544223) ^ 0x90CE0DE1 ^ ((v162 ^ 0x3190D0CF) - (v162 & 0xFFFFFFDF ^ 0x9D730943 ^ (v163 + v161 - 2 * ((v163 + v161) & 0x2CE3D98D ^ v161 & 1) - 1394353780)))) + (v162 ^ 0x3190D0CF);
  LODWORD(STACK[0x3B8]) = v159;
  v166 = *(&off_1010A0B50 + v4 - 17004) - 250129978;
  LODWORD(STACK[0x3B4]) = BYTE1(v159);
  v167 = -818787977 * *&v164[4 * (BYTE1(v159) ^ 0x1A)] + 1437258066;
  v168 = v166;
  v169 = v167 ^ *(v166 + 4 * (v159 ^ 0xE5u)) ^ ((v159 ^ 0xA6796783) + (v159 ^ 0x4E)) ^ (v167 >> 3) & 0x11515001 ^ v157 ^ v165;
  LODWORD(STACK[0x3C0]) = v169;
  LODWORD(STACK[0x3D8]) = v4;
  v170 = *(&off_1010A0B50 + v4 - 18230) - 1569710418;
  v171 = v159 ^ 0xA2ED19C5;
  LODWORD(STACK[0x3A0]) = v159 ^ 0xA2ED19C5;
  v172 = HIBYTE(v159);
  STACK[0x3A8] = v172;
  LODWORD(v172) = (*(v170 + (v172 ^ 8)) >> 3) & 9 ^ *(v170 + (v172 ^ 8)) ^ 0x15C4314F;
  LODWORD(STACK[0x37C]) = v169 ^ 0x72C01F3E;
  LODWORD(v166) = v172 ^ v169 ^ 0x72C01F3E;
  *(v3 - 148) = v166 ^ v156;
  v173 = v166 ^ v156 ^ 0xCB0682AF;
  LODWORD(STACK[0x38C]) = v158;
  *(v3 - 184) = v173 ^ v158;
  LODWORD(v172) = v173 ^ v158 ^ v171;
  LODWORD(STACK[0x388]) = BYTE2(v172);
  v174 = ((BYTE2(v172) ^ 0xF269F98F) + (BYTE2(v172) ^ 0xD4)) ^ 0x7D05D315 ^ *&v160[4 * (BYTE2(v172) ^ 0x28)];
  LODWORD(STACK[0x378]) = v166;
  v175 = (-v166 ^ (v166 - ((2 * v166) & 0x72287D8) + 59851756) ^ 0x39143EC ^ (v174 - (v174 ^ v166))) + v174;
  LODWORD(v166) = (v173 ^ v158 ^ v171);
  LODWORD(STACK[0x374]) = v166;
  v176 = (v166 ^ 0xA679675B) + (v166 ^ 0x96);
  v177 = BYTE3(v172);
  STACK[0x330] = v177;
  v178 = (*(v170 + (v177 ^ 0x6E)) >> 3) & 9 ^ *(v170 + (v177 ^ 0x6E));
  LODWORD(STACK[0x384]) = BYTE1(v172);
  LODWORD(v166) = -818787977 * *&v164[4 * (BYTE1(v172) ^ 0x77)] + 1437258066;
  v179 = v168;
  v180 = v166 ^ *(v168 + 4 * ((v173 ^ v158 ^ v171) ^ 0x3Du)) ^ (v166 >> 3) & 0x11515001 ^ v178 ^ v176 ^ v175;
  *(v3 - 224) = v180 ^ v158;
  *(v3 - 248) = v180;
  v181 = v180 ^ v158 ^ 0xF421FF3A;
  v182 = ((v181 ^ v172) >> 16);
  *(v3 - 192) = v182;
  v183 = ((v181 ^ v172) >> 8);
  LODWORD(STACK[0x380]) = v183;
  LODWORD(v168) = (v181 ^ v172);
  LODWORD(STACK[0x36C]) = v168;
  v184 = *(v179 + 4 * (v168 ^ 0xD7)) ^ *&v160[4 * (v182 ^ 0xA0)];
  LODWORD(v177) = v180 ^ 0xFA06B03C ^ v173;
  *(v3 - 200) = v177;
  v185 = -818787977 * *&v164[4 * (((v183 ^ 0x56) - (v183 ^ 0xE9)) ^ 0xFFFFFFFE) + 4 * (v183 ^ 0x56)] + 1437258066;
  v186 = v184 ^ v185 ^ v180 ^ 0xFA06B03C ^ (v185 >> 3) & 0x11515001 ^ ((v168 ^ 0x7C) + (v168 ^ 0xA67967B1)) ^ ((v182 ^ 0x5C) + (v182 ^ 0xF269F907));
  *(v3 - 152) = v186;
  v187 = (v181 ^ v172) >> 24;
  STACK[0x328] = v187;
  v188 = v186 ^ (*(v170 + (v187 ^ 0x39)) >> 3) & 9 ^ *(v170 + (v187 ^ 0x39));
  LODWORD(STACK[0x364]) = v188;
  v189 = v188 ^ 0xDB7A1A08;
  LODWORD(v177) = v188 ^ 0xDB7A1A08 ^ v177;
  *(v3 - 216) = v177;
  v190 = v177 ^ 0xCC9D00C6;
  v191 = v177 ^ 0xCC9D00C6 ^ v172;
  *(v3 - 208) = BYTE2(v191);
  LODWORD(v166) = *&v160[4 * (BYTE2(v191) ^ 0xA0)];
  v192 = v177 ^ 0xC6 ^ v172;
  LODWORD(STACK[0x360]) = v192;
  v193 = HIBYTE(v191);
  STACK[0x318] = v193;
  v194 = (*(v170 + (v193 ^ 0xEC)) >> 3) & 9 ^ *(v170 + (v193 ^ 0xEC));
  LODWORD(v193) = *(v179 + 4 * (v192 ^ 2u)) ^ v166;
  LODWORD(STACK[0x370]) = BYTE1(v191);
  LODWORD(v166) = -818787977 * *&v164[4 * (BYTE1(v191) ^ 0xEE)] + 1437258066;
  v195 = v193 ^ v166 ^ v189 ^ (v166 >> 3) & 0x11515001 ^ ((v192 ^ 0xA9) + (v192 ^ 0xA6796764)) ^ (((2 * ((BYTE2(v191) ^ 0x1241E08A) & (BYTE2(v191) ^ 0x7E55F007) ^ HIWORD(v191) & 0xD6)) ^ 0x2483C00C) - 227935909);
  *(v3 - 156) = v195;
  LODWORD(v177) = v195 ^ v194;
  LODWORD(STACK[0x35C]) = v177;
  LODWORD(v166) = v177 ^ 0xAE23BB3;
  v196 = v177 ^ 0xAE23BB3 ^ v181;
  *(v3 - 160) = v196;
  v197 = v196 ^ 0x1B5CD52A ^ v191;
  LODWORD(STACK[0x34C]) = BYTE2(v197);
  LODWORD(STACK[0x358]) = v197;
  v198 = HIBYTE(v197);
  STACK[0x320] = v198;
  v199 = (*(v170 + (v198 ^ 0x9F)) >> 3) & 9 ^ *(v170 + (v198 ^ 0x9F));
  v200 = *&v160[4 * (BYTE2(v197) ^ 0xC4)];
  LODWORD(STACK[0x368]) = BYTE1(v197);
  v201 = -818787977 * *&v164[4 * (BYTE1(v197) ^ 0x69)] + 1437258066;
  v202 = v200 ^ *(v179 + 4 * (v197 ^ 0x2Eu)) ^ v201 ^ (v201 >> 3) & 0x11515001 ^ v199 ^ ((v197 ^ 0x85) + (v197 ^ 0xA6796748)) ^ ((BYTE2(v197) ^ 0xF269F963) + (BYTE2(v197) ^ 0x38)) ^ 0x5FE5EBAD;
  *(v3 - 240) = v202 ^ v190;
  v203 = v202 ^ v190 ^ 0x750549FC;
  LODWORD(v177) = v203 ^ v196 ^ 0x1B5CD52A;
  LODWORD(STACK[0x3F8]) = v177;
  v204 = v177 ^ 0x8A79858B;
  v205 = v177 ^ 0x8A79858B ^ v197;
  LODWORD(STACK[0x344]) = BYTE2(v205);
  LODWORD(v177) = (BYTE2(v205) ^ 0xE5) + (BYTE2(v205) ^ 0xF269F9BE);
  v206 = *&v160[4 * (BYTE2(v205) ^ 0x19)];
  LODWORD(STACK[0x340]) = v205;
  v207 = (v205 ^ 0xA67967D6) + (v205 ^ 0x1B);
  v208 = HIBYTE(v205);
  STACK[0x310] = v208;
  v209 = (*(v170 + (v208 ^ 0x12)) >> 3) & 9 ^ *(v170 + (v208 ^ 0x12));
  v210 = *(v179 + 4 * (v205 ^ 0xB0u)) ^ v206;
  v211 = BYTE1(v205);
  LODWORD(STACK[0x338]) = v211;
  v212 = -818787977 * *&v164[4 * (v211 ^ 0x9B)] + 1437258066;
  LODWORD(STACK[0x3E8]) = v202 ^ v166;
  LODWORD(v208) = v210 ^ v212 ^ (v212 >> 3) & 0x11515001 ^ v209 ^ v202 ^ v166 ^ v207 ^ v177;
  LODWORD(STACK[0x3E0]) = v208;
  v213 = v208 ^ 0xBA3300CA;
  LODWORD(v208) = v208 ^ 0xBA3300CA ^ v203;
  *(v3 - 164) = v208;
  LODWORD(v177) = v208 ^ 0x498B4408;
  v214 = v208 ^ 0x498B4408 ^ v197;
  LODWORD(STACK[0x28C]) = BYTE2(v214);
  v215 = v214;
  LODWORD(STACK[0x348]) = v214;
  v216 = HIBYTE(v214);
  STACK[0x308] = v216;
  LOBYTE(v202) = ((*(v170 + (v216 ^ 0x4B)) >> 3) & 9 | 0xB0) ^ *(v170 + (v216 ^ 0x4B));
  v217 = *(v179 + 4 * (v214 ^ 0x94u)) ^ *&v160[4 * (BYTE2(v214) ^ 0xE9)];
  LODWORD(STACK[0x274]) = v214;
  LODWORD(STACK[0x354]) = BYTE1(v214);
  v218 = -818787977 * *&v164[4 * (BYTE1(v214) ^ 0xFA)] + 1437258066;
  LODWORD(v208) = v217 ^ v218 ^ (v218 >> 3) & 0x11515001 ^ v202 ^ v213 ^ ((v214 ^ 0xA67967F2) + (v214 ^ 0x3F)) ^ ((BYTE2(v214) ^ 0xF269F94E) + (BYTE2(v214) ^ 0x15));
  LODWORD(STACK[0x3DC]) = v208;
  v219 = v208 ^ 0xE2A786D3;
  v220 = v208 ^ 0xE2A786D3 ^ v204 ^ v215;
  v221 = v208 ^ 0xE2A786D3 ^ v204;
  *(v3 - 256) = BYTE2(v220);
  v222 = *&v160[4 * (BYTE2(v220) ^ 0x5D)];
  STACK[0x240] = v160;
  LODWORD(STACK[0x298]) = v208 ^ 0xD3 ^ v204 ^ v215;
  v223 = *(v179 + 4 * (v208 ^ 0xD3 ^ v204 ^ v215 ^ 0xB5u));
  STACK[0x248] = v179;
  v224 = v223 ^ v222;
  LODWORD(STACK[0x350]) = BYTE1(v220);
  v225 = -818787977 * *&v164[4 * (BYTE1(v220) ^ 0x62)] + 1437258066;
  v226 = v224 ^ v225 ^ v208 ^ 0xE2A786D3 ^ (v225 >> 3) & 0x11515001 ^ ((v220 ^ 0x1E) + (v220 ^ 0xA67967D3)) ^ (((2 * ((BYTE2(v220) ^ 0xA1) & (HIWORD(v220) ^ 0x48) ^ HIWORD(v220) & 0xB2)) ^ 0x140) - 227935909);
  v227 = HIBYTE(v220);
  STACK[0x300] = v227;
  STACK[0x268] = v170;
  v228 = v219 ^ v177;
  LODWORD(v227) = v226 ^ (*(v170 + (v227 ^ 0x84)) >> 3) & 9 ^ *(v170 + (v227 ^ 0x84));
  LODWORD(STACK[0x290]) = v227;
  LODWORD(STACK[0x3D4]) = v226;
  v229 = v227 ^ 0x44EFF8AB;
  LODWORD(v168) = v227 ^ 0x44EFF8AB ^ v228;
  LODWORD(STACK[0x20C]) = v228;
  LODWORD(STACK[0x3CC]) = v168;
  v230 = v168 ^ 0x95DE3529 ^ v221;
  LODWORD(STACK[0x264]) = v168 ^ 0x95DE3529;
  v500 = v221;
  LODWORD(STACK[0x22C]) = v230;
  LODWORD(v227) = v230 ^ 0xE9575788 ^ v220;
  LODWORD(STACK[0x3F0]) = BYTE2(v227);
  LODWORD(STACK[0x33C]) = v230 ^ 0x88 ^ v220;
  v231 = BYTE3(v227);
  LOBYTE(v225) = (*(v170 + (v231 ^ 0x26)) >> 3) & 9 ^ *(v170 + (v231 ^ 0x26));
  v232 = *(v179 + 4 * (v230 ^ 0x88 ^ v220 ^ 0x73u)) ^ *&v160[4 * (BYTE2(v227) ^ 0xA)];
  LODWORD(STACK[0x25C]) = v227;
  LODWORD(STACK[0x270]) = BYTE1(v227);
  v233 = -818787977 * *&v164[4 * (BYTE1(v227) ^ 0x38)] + 1437258066;
  v234 = v232 ^ v233 ^ v229 ^ (v233 >> 3) & 0x11515001 ^ ((v230 ^ 0x88 ^ v220 ^ 0xD8) + (v230 ^ 0x88 ^ v220 ^ 0xA6796715)) ^ ((BYTE2(v227) ^ 0xF269F9AD) + (BYTE2(v227) ^ 0xF6));
  LODWORD(v179) = v234 ^ v225;
  LODWORD(STACK[0x2D0]) = v179;
  *(v3 - 232) = v234;
  LODWORD(v179) = v179 ^ 0x3A292786;
  LODWORD(STACK[0x258]) = v179;
  v235 = v179 ^ v168 ^ 0x95DE3529;
  LODWORD(v179) = v235 ^ v230 ^ 0xE9575788;
  LODWORD(STACK[0x3C8]) = v235;
  LODWORD(STACK[0x254]) = v179 ^ 0x19169D99;
  v496 = v179;
  v236 = v179 ^ 0x19169D99 ^ v227;
  LODWORD(STACK[0x238]) = v236;
  LODWORD(STACK[0x260]) = BYTE1(v236);
  LODWORD(STACK[0x23C]) = -818787977 * *&v164[4 * (BYTE1(v236) ^ 0xDF)] + 1437258066;
  v237 = v190 ^ v181;
  v483 = v190 ^ v181;
  v455 = v166 ^ v190;
  LODWORD(STACK[0x3D0]) = v177 ^ v204;
  v238 = *(&off_1010A0B50 + v4 - 18398) - 149555002;
  v239 = HIBYTE(v236);
  STACK[0x230] = v239;
  LODWORD(STACK[0x2FC]) = *&v238[4 * (HIBYTE(v234) ^ 0x61)];
  LODWORD(v216) = STACK[0x318] ^ 0x66;
  LODWORD(STACK[0x318]) = *&v238[4 * (HIBYTE(v235) ^ 0x69)];
  LODWORD(STACK[0x2F8]) = *&v238[4 * (((v235 ^ v230 ^ 0xE9575788) >> 24) ^ 0x54)];
  LODWORD(STACK[0x2F4]) = *&v238[4 * (((((v239 ^ 0xE8) - (v239 ^ 0xDC)) ^ 0xFFFFFFF8) + (v239 ^ 0xE8)) ^ 0x24)];
  LODWORD(STACK[0x2F0]) = *&v238[4 * (HIBYTE(v226) ^ 0xA4)];
  LODWORD(STACK[0x2EC]) = *&v238[4 * (BYTE3(v168) ^ 0x9B)];
  LODWORD(STACK[0x2E8]) = *&v238[4 * (HIBYTE(v230) ^ 7)];
  LODWORD(STACK[0x2E4]) = *&v238[4 * (v231 ^ 0xB2)];
  LODWORD(STACK[0x2E0]) = *&v238[4 * (HIBYTE(LODWORD(STACK[0x3DC])) ^ 0x8B)];
  LODWORD(v231) = (HIBYTE(*(v3 - 248)) ^ 0x77) - ((2 * (HIBYTE(*(v3 - 248)) ^ 0x77)) & 0x94);
  LODWORD(STACK[0x2DC]) = *&v238[4 * (HIBYTE(v228) ^ 0x2B)];
  LODWORD(STACK[0x2D8]) = *&v238[4 * (HIBYTE(v221) ^ 0xB6)];
  LODWORD(v164) = *&v238[4 * (STACK[0x300] ^ 0x89)];
  v507 = *(v3 - 224) ^ 0xB1E54861;
  v240 = *&v238[4 * (HIBYTE(LODWORD(STACK[0x3E0])) ^ 0xCF)];
  v241 = *&v238[4 * (HIBYTE(*(v3 - 164)) ^ 0x7E)];
  v242 = *&v238[4 * (((v177 ^ v204) >> 24) ^ 0xEA)];
  v243 = *&v238[4 * (STACK[0x308] ^ 0x5A)];
  v244 = *&v238[4 * (HIBYTE(LODWORD(STACK[0x3E8])) ^ 0x19)];
  v245 = *&v238[4 * (HIBYTE(*(v3 - 240)) ^ 0x33)];
  v246 = *&v238[4 * (HIBYTE(LODWORD(STACK[0x3F8])) ^ 0xB4)];
  v247 = *&v238[4 * (STACK[0x310] ^ 0xDC)];
  LODWORD(v168) = *&v238[4 * (HIBYTE(*(v3 - 156)) ^ 0xC1)];
  v248 = *&v238[4 * (HIBYTE(v455) ^ 0x88)];
  v249 = *&v238[4 * (HIBYTE(*(v3 - 160)) ^ 3)];
  v250 = *&v238[4 * (STACK[0x320] ^ 0x71)];
  LODWORD(v170) = *&v238[4 * (HIBYTE(*(v3 - 152)) ^ 0x7C)];
  v251 = *&v238[4 * (HIBYTE(*(v3 - 216)) ^ 0x87)];
  v252 = *&v238[4 * (HIBYTE(v237) ^ 0x7E)];
  LODWORD(v166) = *&v238[4 * v216];
  v253 = *&v238[4 * ((v231 + 74) ^ 0x24)];
  v254 = *&v238[4 * (HIBYTE(*(v3 - 200)) ^ 0x1F)];
  v255 = *&v238[4 * HIBYTE(v507)];
  LODWORD(v177) = *&v238[4 * (STACK[0x328] ^ 0xE9)];
  v256 = *&v238[4 * (HIBYTE(LODWORD(STACK[0x3C0])) ^ 0x1B)];
  v257 = *&v238[4 * (HIBYTE(*(v3 - 148)) ^ 0x3B)];
  LODWORD(v216) = *&v238[4 * (HIBYTE(*(v3 - 184)) ^ 0xC4)];
  LODWORD(v231) = *&v238[4 * (STACK[0x330] ^ 0x34)];
  LODWORD(STACK[0x21C]) = -468895505 * LODWORD(STACK[0x2FC]) + 279543604;
  LODWORD(STACK[0x278]) = -468895505 * LODWORD(STACK[0x318]) + 279543604;
  LODWORD(STACK[0x27C]) = -468895505 * LODWORD(STACK[0x2F8]) + 279543604;
  LODWORD(STACK[0x280]) = -468895505 * LODWORD(STACK[0x2F4]) + 279543604;
  LODWORD(STACK[0x284]) = -468895505 * LODWORD(STACK[0x2F0]) + 279543604;
  LODWORD(STACK[0x288]) = -468895505 * LODWORD(STACK[0x2EC]) + 279543604;
  v258 = -468895505 * LODWORD(STACK[0x2E8]) + 279543604;
  LODWORD(STACK[0x294]) = -468895505 * LODWORD(STACK[0x2E4]) + 279543604;
  LODWORD(STACK[0x29C]) = -468895505 * LODWORD(STACK[0x2E0]) + 279543604;
  LODWORD(STACK[0x2A0]) = -468895505 * LODWORD(STACK[0x2DC]) + 279543604;
  LODWORD(STACK[0x2A4]) = -468895505 * LODWORD(STACK[0x2D8]) + 279543604;
  LODWORD(STACK[0x2C0]) = -468895505 * v164 + 279543604;
  LODWORD(STACK[0x2C4]) = -468895505 * v240 + 279543604;
  LODWORD(STACK[0x2EC]) = -468895505 * v241 + 279543604;
  LODWORD(STACK[0x2E8]) = -468895505 * v242 + 279543604;
  LODWORD(STACK[0x2E4]) = -468895505 * v243 + 279543604;
  LODWORD(STACK[0x2C8]) = -468895505 * v244 + 279543604;
  LODWORD(STACK[0x2CC]) = -468895505 * v245 + 279543604;
  LODWORD(STACK[0x2D4]) = -468895505 * v246 + 279543604;
  LODWORD(STACK[0x2D8]) = -468895505 * v168 + 279543604;
  LODWORD(STACK[0x2DC]) = -468895505 * v248 + 279543604;
  LODWORD(STACK[0x218]) = -468895505 * v249 + 279543604;
  LODWORD(STACK[0x214]) = -468895505 * v250 + 279543604;
  LODWORD(STACK[0x2E0]) = -468895505 * v170 + 279543604;
  LODWORD(STACK[0x2F0]) = -468895505 * v251 + 279543604;
  LODWORD(STACK[0x2F4]) = -468895505 * v252 + 279543604;
  LODWORD(STACK[0x2F8]) = -468895505 * v166 + 279543604;
  LODWORD(STACK[0x2FC]) = -468895505 * v253 + 279543604;
  LODWORD(STACK[0x300]) = -468895505 * v254 + 279543604;
  LODWORD(STACK[0x330]) = -468895505 * v255 + 279543604;
  LODWORD(STACK[0x328]) = -468895505 * v177 + 279543604;
  LODWORD(STACK[0x320]) = -468895505 * v256 + 279543604;
  LODWORD(STACK[0x318]) = -468895505 * v257 + 279543604;
  LODWORD(STACK[0x310]) = -468895505 * v216 + 279543604;
  LODWORD(STACK[0x308]) = -468895505 * v231 + 279543604;
  LODWORD(v216) = LODWORD(STACK[0x290]) ^ 0x6014D6EB;
  v259 = BYTE2(LODWORD(STACK[0x238]));
  LODWORD(v231) = LODWORD(STACK[0x238]);
  LODWORD(v239) = *(STACK[0x248] + 4 * (v231 ^ 0xD1)) ^ *(STACK[0x240] + 4 * (v259 ^ 0x50u)) ^ LODWORD(STACK[0x23C]) ^ (LODWORD(STACK[0x23C]) >> 3) & 0x11515001 ^ (*(STACK[0x268] + (STACK[0x230] ^ 0x96)) >> 3) & 9 ^ *(STACK[0x268] + (STACK[0x230] ^ 0x96)) ^ ((v231 ^ 0x7A) + (v231 ^ 0xA67967B7)) ^ ((v259 ^ 0xAC) + (v259 ^ 0xF269F9F7));
  v509 = v239 ^ LODWORD(STACK[0x258]);
  v510 = v239 ^ LODWORD(STACK[0x264]);
  v511 = v510 ^ 0x8F587B21 ^ LODWORD(STACK[0x254]);
  v512 = v510 ^ 0x8F587B21 ^ LODWORD(STACK[0x25C]);
  v260 = *(&off_1010A0B50 + LODWORD(STACK[0x3D8]) - 16338) - 1354976974;
  v261 = *(&off_1010A0B50 + (LODWORD(STACK[0x3D8]) ^ 0x4273)) - 440021319;
  v262 = *(&off_1010A0B50 + (LODWORD(STACK[0x3D8]) ^ 0x42B2)) - 1334994830;
  v489 = BYTE2(*(v3 - 232));
  LODWORD(STACK[0x204]) = (v489 ^ 0xDA) - (v489 ^ 0x195A505D);
  v263 = STACK[0x3C8];
  v487 = BYTE2(LODWORD(STACK[0x3C8]));
  LODWORD(STACK[0x268]) = (v487 ^ 0x25) - (v487 ^ 0x195A50A2);
  BYTE1(v168) = BYTE1(v496);
  v485 = BYTE2(v496);
  LODWORD(STACK[0x264]) = (BYTE2(v496) ^ 0xBB) - (BYTE2(v496) ^ 0x195A503C);
  v505 = LODWORD(STACK[0x260]) ^ 0xFB;
  v481 = LODWORD(STACK[0x260]) ^ 0x46;
  LODWORD(STACK[0x260]) = (v259 ^ 0xF5) - (v259 ^ 0x195A5072);
  LODWORD(v239) = v216;
  LODWORD(v216) = ((2 * v216) & 0x9C) + (v216 ^ 0xBDDC9691) + ((2 * v216) & 0x9C ^ 0x9C) - 156;
  LODWORD(STACK[0x25C]) = *&v260[4 * (v239 ^ 0xDB)] - 1165845456 + (v239 ^ 0x7C84F3BD ^ (v216 - ((2 * v216) & 0x790926C4) + 2089087842));
  v478 = BYTE2(LODWORD(STACK[0x3D4]));
  LODWORD(STACK[0x254]) = (v478 ^ 0x52) - (v478 ^ 0x195A50D5);
  v264 = STACK[0x3CC];
  v476 = BYTE2(LODWORD(STACK[0x3CC]));
  LODWORD(STACK[0x258]) = (v476 ^ 0xF2) - (v476 ^ 0x195A5075);
  LODWORD(STACK[0x3C0]) = (*&v260[4 * (LODWORD(STACK[0x22C]) ^ 0x52)] + 2019504766) ^ *&v261[4 * (BYTE1(LODWORD(STACK[0x22C])) ^ 0x5E)] ^ *&v262[4 * (BYTE2(LODWORD(STACK[0x22C])) ^ 0x3E)] ^ ((BYTE2(LODWORD(STACK[0x22C])) ^ 0x1B) - (BYTE2(LODWORD(STACK[0x22C])) ^ 0x195A509C)) ^ ((BYTE1(LODWORD(STACK[0x22C])) ^ 0xE3) - 1104373152) ^ v258;
  LODWORD(STACK[0x248]) = (LODWORD(STACK[0x3F0]) ^ 0x15) - (LODWORD(STACK[0x3F0]) ^ 0x195A5092);
  v265 = STACK[0x3DC];
  v474 = BYTE2(LODWORD(STACK[0x3DC]));
  LODWORD(STACK[0x240]) = (v474 ^ 0xD5) - (v474 ^ 0x195A5052);
  v266 = v263 ^ 0x53;
  v267 = STACK[0x20C];
  LODWORD(v239) = BYTE1(LODWORD(STACK[0x20C]));
  v472 = v239 ^ 0xEE;
  v498 = v239 ^ 0x53;
  v502 = BYTE2(LODWORD(STACK[0x20C]));
  LODWORD(STACK[0x23C]) = (v502 ^ 0xF) - (v502 ^ 0x195A5088);
  v470 = BYTE2(v500);
  LODWORD(STACK[0x238]) = (BYTE2(v500) ^ 0xF4) - (BYTE2(v500) ^ 0x195A5073);
  LODWORD(STACK[0x230]) = -2019504767 - *&v260[4 * (LODWORD(STACK[0x298]) ^ 0x6F)];
  LODWORD(STACK[0x22C]) = (*(v3 - 256) ^ 0x4B) - (*(v3 - 256) ^ 0x195A50CC);
  v268 = STACK[0x3E0];
  v468 = BYTE2(LODWORD(STACK[0x3E0]));
  LODWORD(STACK[0x228]) = (v468 ^ 0x6E) - (v468 ^ 0x195A50E9);
  v269 = *(v3 - 164);
  LODWORD(STACK[0x298]) = (BYTE2(v269) ^ 0xDC) - (BYTE2(v269) ^ 0x195A505B);
  LODWORD(v216) = LODWORD(STACK[0x3D0]) ^ 0xC6;
  v465 = BYTE2(LODWORD(STACK[0x3D0]));
  LODWORD(STACK[0x290]) = (v465 ^ 0x19) - (v465 ^ 0x195A509E);
  v270 = LODWORD(STACK[0x28C]) ^ 0x40;
  v463 = v270 - ((LODWORD(STACK[0x274]) >> 15) & 0x4A);
  LODWORD(STACK[0x28C]) = v270 - (LODWORD(STACK[0x28C]) ^ 0x195A50C7);
  v271 = STACK[0x3E8];
  v461 = BYTE2(LODWORD(STACK[0x3E8]));
  LODWORD(STACK[0x274]) = (v461 ^ 0x86) - (v461 ^ 0x195A5001);
  v272 = *(v3 - 240);
  v459 = BYTE2(v272);
  LODWORD(STACK[0x224]) = (BYTE2(v272) ^ 0x24) - (BYTE2(v272) ^ 0x195A50A3);
  v273 = STACK[0x3F8];
  LODWORD(v239) = BYTE1(LODWORD(STACK[0x3F8]));
  v449 = v239 ^ 0x21;
  v457 = v239 ^ 0x9C;
  v451 = BYTE2(LODWORD(STACK[0x3F8]));
  LODWORD(STACK[0x220]) = (v451 ^ 0x81) - (v451 ^ 0x195A5006);
  v446 = LODWORD(STACK[0x270]) ^ 0xD5;
  v453 = LODWORD(STACK[0x270]) ^ 0x68;
  v504 = ((LODWORD(STACK[0x344]) ^ 0x4D) - (LODWORD(STACK[0x344]) ^ 0x195A50CA)) ^ ((LODWORD(STACK[0x338]) ^ 0xF2) - 1104373152) ^ *&v261[4 * (LODWORD(STACK[0x338]) ^ 0x4F)] ^ (*&v260[4 * (LODWORD(STACK[0x340]) ^ 0x73)] + 2019504766) ^ *&v262[4 * (LODWORD(STACK[0x344]) ^ 0x68)] ^ (-468895505 * v247 + 279543604);
  v442 = BYTE2(*(v3 - 156));
  LODWORD(STACK[0x344]) = (v442 ^ 0xEF) - (v442 ^ 0x195A5068);
  v440 = BYTE2(v455);
  LODWORD(STACK[0x340]) = (BYTE2(v455) ^ 0x2B) - (BYTE2(v455) ^ 0x195A50AC);
  v274 = *(v3 - 160);
  v275 = *&v260[4 * (v274 ^ 0x63)];
  LODWORD(v239) = (v275 ^ 0x322ADF2C) & (2 * (v275 & 0xBA829C30)) ^ v275 & 0xBA829C30;
  LODWORD(v166) = ((2 * (v275 ^ 0x372AEF4C)) ^ 0x1B50E6F8) & (v275 ^ 0x372AEF4C) ^ (2 * (v275 ^ 0x372AEF4C)) & 0x8DA8737C;
  LODWORD(v239) = (v166 ^ 0x8006040) & (4 * v239) ^ v239;
  LODWORD(v166) = ((4 * (v166 ^ 0x84A81104)) ^ 0x36A1CDF0) & (v166 ^ 0x84A81104) ^ (4 * (v166 ^ 0x84A81104)) & 0x8DA87378;
  LODWORD(v239) = (v166 ^ 0x4A04160) & (16 * v239) ^ v239;
  LODWORD(v166) = ((16 * (v166 ^ 0x8908320C)) ^ 0xDA8737C0) & (v166 ^ 0x8908320C) ^ (16 * (v166 ^ 0x8908320C)) & 0x8DA87340;
  LODWORD(v239) = v239 ^ 0x8DA8737C ^ (v166 ^ 0x88803300) & (v239 << 8);
  v412 = (((4 * ((v239 << 16) & 0xCA80000 ^ v239 ^ ((v239 << 16) ^ 0x126C0000) & (((v166 ^ 0x528403C) << 8) & 0xDA80000 ^ 0x4880000 ^ (((v166 ^ 0x528403C) << 8) ^ 0x28730000) & (v166 ^ 0x528403C)))) ^ (2 * v275)) & 0x7BB92C9C ^ 0x43002490) + (v275 ^ ((v275 ^ 0x7E108393) - 997056579) ^ ((v275 ^ 0x6493A02) - 1127504338) ^ ((v275 ^ 0x57D3252E) - 313411326) ^ ((v275 ^ 0x6AF7FF6F) - 797613247) ^ 0xF8A1F59E);
  v404 = (BYTE2(v274) ^ 0xA2) - (BYTE2(v274) ^ 0x195A5025);
  v439 = BYTE2(v274) ^ 0x87;
  v391 = (LODWORD(STACK[0x34C]) ^ 9) - (LODWORD(STACK[0x34C]) ^ 0x195A508E);
  v431 = LODWORD(STACK[0x34C]) ^ 0x2C;
  v427 = BYTE2(*(v3 - 152));
  LODWORD(STACK[0x34C]) = (v427 ^ 0x2E) - (v427 ^ 0x195A50A9);
  LODWORD(v166) = *(v3 - 216);
  v425 = BYTE2(v166);
  LODWORD(STACK[0x338]) = (BYTE2(v166) ^ 0x6F) + (BYTE2(v166) ^ 0x195A50E8) - 2 * (BYTE2(v166) ^ 0x195A50E8);
  LODWORD(STACK[0x270]) = (BYTE2(v483) ^ 0x72) - (BYTE2(v483) ^ 0x195A50F5);
  v403 = *&v260[4 * (LODWORD(STACK[0x2D0]) ^ 0x3E)];
  v401 = *&v260[4 * v266];
  v399 = *&v260[4 * (v496 ^ 0xCF)];
  v397 = *&v260[4 * (v231 ^ 0xB)];
  v396 = *&v260[4 * (v264 ^ 0xD6)];
  LODWORD(STACK[0x2D0]) = (*(v3 - 208) ^ 0xDA) - (*(v3 - 208) ^ 0x195A505D);
  v276 = *(v3 - 248);
  v366 = BYTE2(v276);
  LODWORD(STACK[0x210]) = (BYTE2(v276) ^ 0x49) - (BYTE2(v276) ^ 0x195A50CE);
  v394 = *&v260[4 * (LODWORD(STACK[0x33C]) ^ 0x81)];
  BYTE1(v274) = BYTE1(v265);
  v392 = *&v260[4 * (v265 ^ 0x79)];
  v389 = *&v260[4 * (v267 ^ 0xEA)];
  v387 = *&v260[4 * (v500 ^ 0x5A)];
  BYTE1(v264) = BYTE1(v268);
  v385 = *&v260[4 * (v268 ^ 0x77)];
  v381 = *&v260[4 * v216];
  v383 = *&v260[4 * (v269 ^ 0xD7)];
  v277 = *(v3 - 200);
  LODWORD(STACK[0x20C]) = (BYTE2(v277) ^ 0x36) - (BYTE2(v277) ^ 0x195A50B1);
  v378 = *&v260[4 * (LODWORD(STACK[0x348]) ^ 0xF5)];
  BYTE1(v268) = BYTE1(v271);
  v376 = *&v260[4 * (v271 ^ 0x2F)];
  v278 = *(v3 - 224);
  v363 = BYTE2(v278);
  LODWORD(STACK[0x208]) = (BYTE2(v278) ^ 0x86) - (BYTE2(v278) ^ 0x195A5001);
  BYTE1(v249) = BYTE1(v272);
  v372 = *&v260[4 * (v273 ^ 0x40)];
  v374 = *&v260[4 * (v272 ^ 0x11)];
  v370 = *&v260[4 * (LODWORD(STACK[0x35C]) ^ 0x7D)];
  BYTE1(v269) = BYTE1(v455);
  v368 = *&v260[4 * (v455 ^ 0xEC)];
  v361 = *&v260[4 * (LODWORD(STACK[0x358]) ^ 0xBD)];
  v359 = *&v260[4 * (LODWORD(STACK[0x364]) ^ 0xD2)];
  LODWORD(STACK[0x3F8]) = (*(v3 - 192) ^ 0x5B) - (*(v3 - 192) ^ 0x195A50DC);
  BYTE1(v272) = BYTE1(v166);
  v352 = *&v260[4 * (v483 ^ 0x30)];
  v279 = STACK[0x37C];
  v356 = *&v260[4 * (v166 ^ 0x9D)];
  v357 = BYTE2(LODWORD(STACK[0x37C]));
  LODWORD(STACK[0x200]) = (v357 ^ 0x36) - (v357 ^ 0x195A50B1);
  BYTE1(v244) = BYTE1(v276);
  v344 = *&v260[4 * (v276 ^ 0x50)];
  v346 = *&v260[4 * (LODWORD(STACK[0x360]) ^ 0x81)];
  v280 = *(v3 - 148);
  v513 = (BYTE2(v280) ^ 0x48) - (BYTE2(v280) ^ 0x195A50CF);
  v342 = *&v260[4 * (v277 ^ 0x5A)];
  v354 = BYTE2(v280) ^ 0x6D;
  v339 = *&v260[4 * (v507 ^ 0xBB)];
  v336 = *&v260[4 * (LODWORD(STACK[0x36C]) ^ 0x34)];
  v333 = *&v260[4 * (LODWORD(STACK[0x378]) ^ 0xDC)];
  v331 = *&v260[4 * (v280 ^ 0xA6)];
  v281 = *(v3 - 184);
  v329 = *&v260[4 * (v281 ^ 0x94)];
  v322 = *&v260[4 * (LODWORD(STACK[0x374]) ^ 0x88)];
  LODWORD(v166) = BYTE1(LODWORD(STACK[0x3C8]));
  v491 = *&v261[4 * (v166 ^ 0x96)];
  v492 = *&v261[4 * (BYTE1(v496) ^ 0x7C)];
  v493 = *&v261[4 * v505];
  v282 = BYTE1(LODWORD(STACK[0x3D4]));
  v494 = *&v261[4 * (v282 ^ 0xB5)];
  LODWORD(v239) = BYTE1(LODWORD(STACK[0x3CC]));
  v495 = *&v261[4 * (v239 ^ 0x10)];
  LODWORD(STACK[0x378]) = *&v261[4 * v446];
  v283 = BYTE1(v274);
  LODWORD(STACK[0x374]) = *&v261[4 * (v283 ^ 0x94)];
  LODWORD(STACK[0x36C]) = *&v261[4 * v498];
  v350 = BYTE2(v281);
  LODWORD(STACK[0x3DC]) = (BYTE2(v281) ^ 0x50) - (BYTE2(v281) ^ 0x195A50D7);
  v447 = BYTE1(v500) ^ 0xA1;
  LODWORD(STACK[0x364]) = *&v261[4 * (BYTE1(v500) ^ 0x1C)];
  v433 = v239 ^ 0xAD;
  v444 = LODWORD(STACK[0x350]) ^ 0xD9;
  LODWORD(STACK[0x35C]) = *&v261[4 * (LODWORD(STACK[0x350]) ^ 0x64)];
  v437 = v502 ^ 0x2A;
  LODWORD(v216) = BYTE1(v264);
  v503 = *&v261[4 * (BYTE1(v264) ^ 0xC2)];
  v284 = BYTE1(*(v3 - 164));
  LODWORD(STACK[0x360]) = *&v261[4 * (v284 ^ 0x1B)];
  LODWORD(v239) = BYTE1(LODWORD(STACK[0x3D0]));
  v435 = v239 ^ 0xAD;
  v501 = *&v261[4 * (v239 ^ 0x10)];
  LODWORD(v231) = STACK[0x354];
  *(v3 - 164) = *&v261[4 * (LODWORD(STACK[0x354]) ^ 0xE1)];
  LODWORD(v177) = BYTE1(v268);
  v497 = *&v261[4 * (BYTE1(v268) ^ 0x85)];
  v285 = BYTE1(v249);
  v499 = *&v261[4 * (BYTE1(v249) ^ 1)];
  LODWORD(STACK[0x358]) = *&v261[4 * v449];
  v286 = BYTE1(*(v3 - 156));
  LODWORD(STACK[0x350]) = *&v261[4 * (v286 ^ 0x1E)];
  LODWORD(STACK[0x3C8]) = *&v261[4 * (BYTE1(v455) ^ 0x7A)];
  v287 = BYTE1(*(v3 - 160));
  *(v3 - 156) = *&v261[4 * (v287 ^ 0x79)];
  v288 = STACK[0x368];
  *(v3 - 160) = *&v261[4 * (LODWORD(STACK[0x368]) ^ 0x5F)];
  v289 = BYTE1(*(v3 - 152));
  LODWORD(STACK[0x348]) = *&v261[4 * (v289 ^ 0x79)];
  v422 = BYTE1(v272) ^ 0x6B;
  v506 = *&v261[4 * (BYTE1(v272) ^ 0xD6)];
  v508 = *&v261[4 * (BYTE1(v483) ^ 0x5C)];
  v340 = LODWORD(STACK[0x370]) ^ 0x56;
  LODWORD(STACK[0x33C]) = *&v261[4 * (LODWORD(STACK[0x370]) ^ 0xEB)];
  v290 = BYTE1(v244);
  LODWORD(STACK[0x3CC]) = *&v261[4 * (BYTE1(v244) ^ 0xF)];
  LODWORD(STACK[0x3D0]) = *&v261[4 * (BYTE1(v277) ^ 0x29)];
  v291 = BYTE1(v278);
  LODWORD(STACK[0x3D4]) = *&v261[4 * (BYTE1(v278) ^ 0x55)];
  v292 = STACK[0x380];
  LODWORD(STACK[0x3E0]) = *&v261[4 * (LODWORD(STACK[0x380]) ^ 0xB9)];
  LODWORD(STACK[0x3E8]) = *&v261[4 * (BYTE1(v279) ^ 0x8C)];
  v348 = BYTE1(*(v3 - 148));
  *(v3 - 248) = *&v261[4 * (v348 ^ 0x2A)];
  v293 = BYTE1(v281);
  *(v3 - 240) = *&v261[4 * (BYTE1(v281) ^ 0x77)];
  LODWORD(v239) = BYTE1(*(v3 - 232));
  v294 = STACK[0x384];
  *(v3 - 232) = *&v261[4 * (LODWORD(STACK[0x384]) ^ 0x94)];
  *(v3 - 152) = *&v261[4 * v239];
  *(v3 - 148) = (v239 ^ 0xBD) - 1104373152;
  v328 = *&v262[4 * (v489 ^ 0xFF)];
  v409 = (v166 ^ 0x2B) - 1104373152;
  v405 = *&v262[4 * v487];
  v411 = (BYTE1(v168) ^ 0xC1) - 1104373152;
  v406 = *&v262[4 * (v485 ^ 0x9E)];
  v414 = v481 - 1104373152;
  v407 = *&v262[4 * (v259 ^ 0xD0)];
  v413 = (v282 ^ 8) - 1104373152;
  v408 = *&v262[4 * (v478 ^ 0x77)];
  LODWORD(STACK[0x37C]) = v433 - 1104373152;
  v410 = *&v262[4 * (v476 ^ 0xD7)];
  v416 = *&v262[4 * (LODWORD(STACK[0x3F0]) ^ 0x30)];
  v417 = v453 - 1104373152;
  v415 = *&v262[4 * (v474 ^ 0xF0)];
  LODWORD(STACK[0x370]) = v472 - 1104373152;
  v420 = *&v262[4 * v437];
  v430 = *&v262[4 * (v470 ^ 0xD1)];
  v450 = v447 - 1104373152;
  v473 = v444 - 1104373152;
  v438 = *&v262[4 * (*(v3 - 256) ^ 0x6E)];
  v479 = (v216 ^ 0x7F) - 1104373152;
  v448 = *&v262[4 * (v468 ^ 0x4B)];
  *(v3 - 224) = (v284 ^ 0xA6) - 1104373152;
  v456 = *&v262[4 * (BYTE2(v269) ^ 0xF9)];
  v454 = *&v262[4 * (v465 ^ 0x3C)];
  *(v3 - 216) = v435 - 1104373152;
  *(v3 - 200) = (v231 ^ 0x5C) - 1104373152;
  *(v3 - 184) = *&v262[4 * (v463 + 37)];
  v421 = (v177 ^ 0x38) - 1104373152;
  v424 = *&v262[4 * (v461 ^ 0xA3)];
  v423 = (v285 ^ 0xBC) - 1104373152;
  v429 = *&v262[4 * (v459 ^ 1)];
  v436 = v457 - 1104373152;
  LODWORD(STACK[0x354]) = *&v262[4 * (v451 ^ 0xA4)];
  v445 = (v286 ^ 0xA3) - 1104373152;
  v434 = *&v262[4 * (v442 ^ 0xCA)];
  v460 = *&v262[4 * (v440 ^ 0xE)];
  v326 = (v287 ^ 0xC4) - 1104373152;
  v327 = *&v262[4 * v439];
  v324 = (v288 ^ 0xE2) - 1104373152;
  v325 = *&v262[4 * v431];
  v419 = (v289 ^ 0xC4) - 1104373152;
  v418 = *&v262[4 * (v427 ^ 0xB)];
  v428 = *&v262[4 * (v425 ^ 0x4A)];
  v426 = (BYTE1(v483) ^ 0xE1) - 1104373152;
  v443 = *&v262[4 * (BYTE2(v483) ^ 0x57)];
  v452 = v340 - 1104373152;
  v458 = *&v262[4 * (*(v3 - 208) ^ 0xFF)];
  v471 = *&v262[4 * (v366 ^ 0x6C)];
  v441 = (v290 ^ 0xB2) - 1104373152;
  v469 = *&v262[4 * (BYTE2(v277) ^ 0x13)];
  v464 = (v291 ^ 0xE8) - 1104373152;
  v462 = *&v262[4 * (v363 ^ 0xA3)];
  v467 = (v292 ^ 4) - 1104373152;
  v477 = *&v262[4 * (*(v3 - 192) ^ 0x7E)];
  v475 = (BYTE1(v279) ^ 0x31) - 1104373152;
  v482 = (v348 ^ 0x97) - 1104373152;
  v486 = (v293 ^ 0xCA) - 1104373152;
  v488 = (v294 ^ 0x29) - 1104373152;
  v432 = *&v262[4 * (v357 ^ 0x13)];
  v466 = *&v262[4 * v354];
  v480 = *&v262[4 * (v350 ^ 0x75)];
  LODWORD(v260) = STACK[0x388];
  v484 = *&v262[4 * (LODWORD(STACK[0x388]) ^ 0x71)];
  v334 = v401 + 2019504766;
  LODWORD(STACK[0x380]) = v399 + 2019504766;
  LODWORD(STACK[0x384]) = v397 + 2019504766;
  v335 = v394 + 2019504766;
  v338 = v392 + 2019504766;
  v341 = v389 + 2019504766;
  LODWORD(STACK[0x368]) = v387 + 2019504766;
  v349 = v385 + 2019504766;
  v351 = v383 + 2019504766;
  v355 = v381 + 2019504766;
  *(v3 - 208) = v378 + 2019504766;
  v358 = v376 + 2019504766;
  v364 = v374 + 2019504766;
  v365 = v372 + 2019504766;
  v367 = v370 + 2019504766;
  v371 = v368 + 2019504766;
  v323 = v361 + 2019504766;
  v375 = v359 + 2019504766;
  v377 = v356 + 2019504766;
  v384 = v352 + 2019504766;
  v386 = v346 + 2019504766;
  v388 = v344 + 2019504766;
  v390 = v342 + 2019504766;
  v393 = v339 + 2019504766;
  v395 = v336 + 2019504766;
  v398 = v331 + 2019504766;
  v402 = v329 + 2019504766;
  v400 = (v260 ^ 0x54) - (v260 ^ 0x195A50D3);
  LODWORD(v262) = STACK[0x3D8];
  v295 = *(&off_1010A0B50 + LODWORD(STACK[0x3D8]) - 17895) - 426166667;
  v296 = *(&off_1010A0B50 + LODWORD(STACK[0x3D8]) - 18956) - 1951757018;
  LODWORD(v164) = STACK[0x390];
  v297 = *(&off_1010A0B50 + (LODWORD(STACK[0x3D8]) ^ 0x41E7)) - 858168627;
  *(v3 - 192) = __ROR4__(*&v297[4 * (BYTE1(LODWORD(STACK[0x390])) ^ 0x11)], 24) ^ 0xA8CF0E46;
  v298 = *(&off_1010A0B50 + (v262 ^ 0x44D7)) - 17346179;
  v299 = STACK[0x398];
  *(v3 - 256) = __ROR4__(*&v297[4 * (BYTE1(LODWORD(STACK[0x398])) ^ 0xB2)], 24) ^ 0x2C70B9A6;
  LODWORD(v170) = STACK[0x38C];
  v490 = __ROR4__(*&v297[4 * (BYTE1(LODWORD(STACK[0x38C])) ^ 0xBD)], 24) ^ 0xAB727F3F;
  v300 = LODWORD(STACK[0x38C]) ^ 0xF3;
  LODWORD(v231) = STACK[0x3A8] ^ 0x29;
  LODWORD(STACK[0x3F0]) = __ROR4__(*&v297[4 * (LODWORD(STACK[0x3B4]) ^ 0xB4)], 24) ^ 0xC3424707;
  LODWORD(v239) = ((8 * LODWORD(STACK[0x3A0])) ^ 0x86) & ((LODWORD(STACK[0x3B8]) >> 5) ^ 0xFD);
  HIDWORD(v301) = (v239 & 0xFFFFFFFE | (LODWORD(STACK[0x3B8]) >> 5) & 1) ^ 6;
  LODWORD(v301) = (v239 ^ 0x55555555) << 24;
  LOBYTE(v286) = v301 >> 27;
  v345 = __ROR4__(*&v297[4 * (BYTE1(v509) ^ 0x2E)], 24) ^ 0x3998E8D5;
  v343 = __ROR4__(*&v297[4 * (BYTE1(v510) ^ 0x32)], 24) ^ 0x8D3BEF52;
  v302 = v510 ^ 0x45;
  HIDWORD(v301) = *&v297[4 * (BYTE1(v511) ^ 0xAA)];
  LODWORD(v301) = HIDWORD(v301);
  LODWORD(v239) = (v301 >> 24) ^ (4 * (v301 >> 24)) ^ 0x5C2BA2D2;
  v303 = BYTE2(v511) ^ *&v296[4 * (BYTE2(v511) ^ 0xB5)] ^ (*&v295[4 * (HIBYTE(v511) ^ 0x89)] + 564588672) ^ 0xA5C56664;
  v304 = *&v295[4 * (HIBYTE(v299) ^ 0xE1)];
  LODWORD(v261) = *&v295[4 * (HIBYTE(v510) ^ 0x25)];
  v380 = BYTE2(v164);
  v382 = *&v296[4 * (BYTE2(v164) ^ 0x7E)];
  v369 = BYTE2(v299);
  LOBYTE(v216) = v299;
  v373 = *&v296[4 * (BYTE2(v299) ^ 0xFD)];
  v360 = *&v296[4 * (BYTE2(v170) ^ 0xD6)];
  v379 = *&v296[4 * (*(v3 - 176) ^ 0xEF)];
  v330 = *&v296[4 * (BYTE2(v509) ^ 0xF)];
  v332 = *&v296[4 * (BYTE2(v510) ^ 0xF1)];
  v305 = *&v296[4 * (BYTE2(v512) ^ 0x10)];
  v362 = *&v295[4 * ((v164 >> 24) ^ 0x31)] + 564588672;
  LOBYTE(v510) = v298[v164 ^ 0x28];
  v347 = v304 + 564588672;
  LOBYTE(v290) = v298[v216 ^ 0xE2];
  LOBYTE(v339) = v298[v300];
  v337 = *&v295[4 * (BYTE3(v170) ^ 5)] + 564588672;
  v353 = *&v295[4 * v231] + 564588672;
  LOBYTE(v356) = v298[v286 ^ 0xCLL];
  LODWORD(v296) = *&v295[4 * (HIBYTE(v509) ^ 0xCF)] + 564588672;
  LOBYTE(v293) = v298[v509 ^ 0xE2];
  v306 = v261 + 564588672;
  LOBYTE(v269) = v298[v302];
  LOBYTE(v292) = v298[v511 ^ 4];
  LODWORD(v301) = __ROR4__(*&v297[4 * (BYTE1(v512) ^ 0x54)], 24);
  LODWORD(v298) = v305 ^ BYTE2(v512) ^ (*&v295[4 * (HIBYTE(v512) ^ 0x77)] + 564588672) ^ v301 ^ 0xBEAA04BB ^ (4 * (v301 ^ 0xBEAA04BB)) ^ (v298[v512 ^ 0xE4] - 10);
  v307 = v324 ^ v391 ^ *(v3 - 160) ^ v323 ^ v325 ^ 0xBE58FADF ^ LODWORD(STACK[0x214]);
  LODWORD(v216) = (v403 + 2019504766) ^ *(v3 - 152) ^ v328 ^ LODWORD(STACK[0x204]) ^ LODWORD(STACK[0x21C]) ^ *(v3 - 148) ^ 0xF76FF6B5;
  LODWORD(v295) = v326 ^ v404 ^ *(v3 - 156) ^ v327 ^ LODWORD(STACK[0x218]) ^ 0x114937F4 ^ v412;
  LODWORD(v260) = LODWORD(STACK[0x3C0]) ^ 0xD414337E;
  LODWORD(STACK[0x3B8]) = v216;
  LODWORD(STACK[0x3B4]) = v295;
  v308 = (v504 ^ 0xEF289FE8) + ((v260 + v216 - v307 + v295 + 1406697667) ^ 0xCFF51E0D) + ((2 * (v260 + v216 - v307 + v295 + 1406697667)) & 0x9FEA3C1A) + (v298 ^ 0x7385372E);
  v309 = *(&off_1010A0B50 + v262 - 15724) - 1457815866;
  v310 = *(v3 - 101) ^ 0xA3;
  v311 = *(&off_1010A0B50 + (v262 ^ 0x4F48)) - 44452198;
  v312 = *(v3 - 112);
  HIDWORD(v301) = *&v311[4 * (v312 ^ 0x4D)];
  LODWORD(v301) = HIDWORD(v301);
  v313 = *(&off_1010A0B50 + (v262 ^ 0x42BC)) - 1274384146;
  v314 = *(&off_1010A0B50 + v262 - 17636) - 1452352626;
  v315 = *(v3 - 97) ^ 0x75;
  LODWORD(v302) = *&v309[4 * (*(v3 - 110) ^ 0xDCLL)] ^ 0x8678BD14;
  v316 = *&v309[4 * (*(v3 - 98) ^ 0x58)] ^ 0x7C05B233;
  v317 = *(v3 - 107) ^ 0x95;
  *(v3 - 152) = (v313[*(v3 - 109) ^ 0x69] + 122) ^ *&v314[4 * (*(v3 - 111) ^ 0x34)] ^ __ROR4__((v301 >> 17) ^ (v312 << 15) ^ 0x89CB7C1F, 15) ^ v302 ^ (16 * v302) & 0x1E7C3310 ^ 0xFB147123;
  LODWORD(v260) = *&v309[4 * (*(v3 - 102) ^ 0xDFLL)];
  *(v3 - 160) = v260 ^ (16 * v260) & 0x1E7C3310 ^ (v313[v310] + 122) ^ *(v3 - 104) ^ *&v311[4 * (*(v3 - 104) ^ 0xB5)] ^ *&v314[4 * (*(v3 - 103) ^ 0x40)] ^ 0xBA29A2A1;
  v318 = *(v3 - 106) ^ 0x36;
  STACK[0x3A8] = v309;
  *(v3 - 156) = *&v309[4 * v318] ^ *(v3 - 108) ^ *&v311[4 * (*(v3 - 108) ^ 0x36)] ^ (16 * *&v309[4 * v318]) & 0x1E7C3310 ^ *&v314[4 * v317] ^ (v313[*(v3 - 105) ^ 0x1CLL] + 122) ^ 0xF4301752;
  v319 = *(v3 - 99) ^ 0x28;
  STACK[0x390] = v314;
  v320 = *(v3 - 100);
  LODWORD(v319) = *&v314[4 * v319] ^ v320;
  STACK[0x3A0] = v311;
  LODWORD(v319) = v319 ^ *&v311[4 * (v320 ^ 0x32)];
  STACK[0x398] = v313;
  *(v3 - 148) = v319 ^ (v313[v315] + 122) ^ v316 ^ (16 * v316) & 0x1E7C3310 ^ 0x4829381C;
  LODWORD(STACK[0x38C]) = v334 ^ v491 ^ v405 ^ LODWORD(STACK[0x268]) ^ v409 ^ LODWORD(STACK[0x278]);
  LODWORD(STACK[0x388]) = v406 ^ v492 ^ LODWORD(STACK[0x380]) ^ LODWORD(STACK[0x264]) ^ v411 ^ LODWORD(STACK[0x27C]);
  LODWORD(STACK[0x384]) ^= v493 ^ v407 ^ LODWORD(STACK[0x260]) ^ v414 ^ LODWORD(STACK[0x280]);
  LODWORD(STACK[0x380]) = v408 ^ v494 ^ LODWORD(STACK[0x254]) ^ v413 ^ LODWORD(STACK[0x284]) ^ LODWORD(STACK[0x25C]);
  LODWORD(STACK[0x37C]) ^= (v396 + 2019504766) ^ v495 ^ v410 ^ LODWORD(STACK[0x258]) ^ LODWORD(STACK[0x288]);
  LODWORD(STACK[0x378]) ^= v416 ^ v335 ^ LODWORD(STACK[0x248]) ^ v417 ^ LODWORD(STACK[0x294]);
  LODWORD(STACK[0x374]) ^= v338 ^ v415 ^ LODWORD(STACK[0x240]) ^ ((v283 ^ 0x29) - 1104373152) ^ LODWORD(STACK[0x29C]);
  LODWORD(STACK[0x370]) ^= v341 ^ LODWORD(STACK[0x36C]) ^ v420 ^ LODWORD(STACK[0x23C]) ^ LODWORD(STACK[0x2A0]);
  LODWORD(STACK[0x36C]) = LODWORD(STACK[0x368]) ^ LODWORD(STACK[0x364]) ^ v430 ^ LODWORD(STACK[0x238]) ^ v450 ^ LODWORD(STACK[0x2A4]);
  LODWORD(STACK[0x368]) = LODWORD(STACK[0x230]) ^ LODWORD(STACK[0x35C]) ^ v438 ^ LODWORD(STACK[0x22C]) ^ v473 ^ LODWORD(STACK[0x2C0]);
  LODWORD(STACK[0x364]) = v349 ^ v503 ^ v448 ^ LODWORD(STACK[0x228]) ^ v479 ^ LODWORD(STACK[0x2C4]);
  LODWORD(v315) = v456 ^ LODWORD(STACK[0x360]) ^ v351;
  LODWORD(STACK[0x360]) = v421 ^ LODWORD(STACK[0x274]) ^ v497 ^ v358 ^ v424 ^ LODWORD(STACK[0x2C8]);
  LODWORD(STACK[0x35C]) = LODWORD(STACK[0x224]) ^ v423 ^ v499 ^ v364 ^ v429 ^ LODWORD(STACK[0x2CC]);
  LODWORD(STACK[0x358]) ^= LODWORD(STACK[0x220]) ^ v436 ^ v365 ^ LODWORD(STACK[0x354]) ^ LODWORD(STACK[0x2D4]);
  LODWORD(STACK[0x354]) = LODWORD(STACK[0x344]) ^ v445 ^ LODWORD(STACK[0x350]) ^ v434 ^ v367 ^ LODWORD(STACK[0x2D8]);
  LODWORD(STACK[0x350]) = LODWORD(STACK[0x340]) ^ ((BYTE1(v269) ^ 0xC7) - 1104373152) ^ LODWORD(STACK[0x3C8]) ^ v371 ^ v460 ^ LODWORD(STACK[0x2DC]);
  LODWORD(STACK[0x34C]) ^= v419 ^ LODWORD(STACK[0x348]) ^ v418 ^ v375 ^ LODWORD(STACK[0x2E0]);
  LODWORD(STACK[0x348]) = LODWORD(STACK[0x338]) ^ (v422 - 1104373152) ^ v506 ^ v377 ^ v428 ^ LODWORD(STACK[0x2F0]);
  LODWORD(STACK[0x344]) = LODWORD(STACK[0x270]) ^ v426 ^ v508 ^ v384 ^ v443 ^ LODWORD(STACK[0x2F4]);
  LODWORD(STACK[0x340]) = LODWORD(STACK[0x2D0]) ^ v452 ^ LODWORD(STACK[0x33C]) ^ v386 ^ v458 ^ LODWORD(STACK[0x2F8]);
  LODWORD(STACK[0x33C]) = LODWORD(STACK[0x210]) ^ v441 ^ LODWORD(STACK[0x3CC]) ^ v388 ^ v471 ^ LODWORD(STACK[0x2FC]);
  LODWORD(STACK[0x338]) = ((BYTE1(v277) ^ 0x94) - 1104373152) ^ LODWORD(STACK[0x20C]) ^ LODWORD(STACK[0x3D0]) ^ v390 ^ v469 ^ LODWORD(STACK[0x300]);
  LODWORD(STACK[0x330]) ^= LODWORD(STACK[0x208]) ^ v464 ^ LODWORD(STACK[0x3D4]) ^ v462 ^ v393;
  LODWORD(STACK[0x328]) ^= v467 ^ LODWORD(STACK[0x3F8]) ^ LODWORD(STACK[0x3E0]) ^ v395 ^ v477;
  LODWORD(STACK[0x320]) ^= v475 ^ LODWORD(STACK[0x200]) ^ LODWORD(STACK[0x3E8]) ^ v432 ^ (v333 + 2019504766);
  LODWORD(STACK[0x318]) ^= v482 ^ v513 ^ *(v3 - 248) ^ v398 ^ v466;
  LODWORD(STACK[0x310]) ^= LODWORD(STACK[0x3DC]) ^ v486 ^ *(v3 - 240) ^ v402 ^ v480;
  LODWORD(STACK[0x308]) ^= v400 ^ v488 ^ *(v3 - 232) ^ (v322 + 2019504766) ^ v484;
  LODWORD(STACK[0x300]) = (((LODWORD(STACK[0x3BC]) ^ 0xDCFF4C1B) - 1697012355) ^ ((LODWORD(STACK[0x3BC]) ^ 0xCC944BDE) - 1968004422) ^ ((LODWORD(STACK[0x3BC]) ^ 0x3C5BDD62) + 2055025670)) - 1104918902;
  LODWORD(STACK[0x2FC]) = BYTE2(v509) ^ v296 ^ v330 ^ v345 ^ (4 * v345) ^ (v293 - 10) ^ 0xB62FDBD3;
  LODWORD(STACK[0x2F8]) = (v292 - 10) ^ (v239 + v303 - 2 * (v239 & v303)) ^ 0x2FCD0939;
  LODWORD(STACK[0x2F4]) = BYTE2(v510) ^ v306 ^ v332 ^ v343 ^ (4 * v343) ^ (v269 - 10) ^ 0x2C9AEC7D;
  LODWORD(STACK[0x2F0]) = v298 ^ 0x4BDA4AF0;
  LODWORD(STACK[0x2EC]) ^= v315 ^ LODWORD(STACK[0x298]) ^ *(v3 - 224);
  LODWORD(STACK[0x2E8]) ^= v355 ^ v501 ^ v454 ^ LODWORD(STACK[0x290]) ^ *(v3 - 216);
  LODWORD(STACK[0x2E4]) ^= *(v3 - 200) ^ LODWORD(STACK[0x28C]) ^ *(v3 - 164) ^ *(v3 - 208) ^ *(v3 - 184);
  LODWORD(STACK[0x2E0]) = (v308 + 2) ^ v504 ^ (((-2 - v308) ^ (964126829 - ((v308 + 2) ^ 0x3977686D)) ^ 0x316D287B ^ (v308 + 2 - ((2 * (v308 + 2)) & 0x62DA50F6) + 829237371)) + 964126829);
  LODWORD(STACK[0x2DC]) = v337 ^ BYTE2(v170) ^ v360 ^ v490;
  LODWORD(STACK[0x2D8]) = (4 * v490) ^ (v339 - 10);
  LODWORD(STACK[0x3BC]) = v307;
  LODWORD(v301) = __ROR4__(-268665655 - v307, 22) ^ 0x80EF2FE1;
  HIDWORD(v301) = v301;
  LODWORD(STACK[0x2D4]) = (-268665655 - v307) ^ v369 ^ (v301 >> 10) ^ v373 ^ v347 ^ *(v3 - 256) ^ (4 * *(v3 - 256));
  LODWORD(v320) = *(v3 - 192);
  LODWORD(STACK[0x2D0]) = v362 ^ v380 ^ v382 ^ v320;
  LODWORD(STACK[0x2CC]) = (4 * v320) ^ (v510 - 10);
  LODWORD(v320) = STACK[0x3F0];
  LODWORD(STACK[0x2C8]) = v353 ^ *(v3 - 176) ^ v379 ^ LODWORD(STACK[0x3F0]);
  LODWORD(STACK[0x2C4]) = (4 * v320) ^ (v356 - 10);
  LODWORD(STACK[0x2C0]) = (v290 - 10);
  return (*(*(v3 - 144) + 8 * v262))(1521946870);
}