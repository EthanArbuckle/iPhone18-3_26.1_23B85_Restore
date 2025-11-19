uint64_t sub_1001BB458(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, uint64_t a34, int a35, uint64_t a36, uint64_t a37)
{
  v43 = a33 * v40 + a35 * v41 + LODWORD(STACK[0x2F4]) + 954894919 + a1;
  v44 = (v43 ^ 0x4A2EE8B3) & (2 * (v43 & 0x6A4EE938)) ^ v43 & 0x6A4EE938;
  v45 = ((2 * ((((v39 + 899252941) ^ 0x3599FC19) - 1640353326) ^ v43)) ^ 0xE8E903D6) & ((((v39 + 899252941) ^ 0x3599FC19) - 1640353326) ^ v43) ^ (2 * ((((v39 + 899252941) ^ 0x3599FC19) - 1640353326) ^ v43)) & 0xF47481EA;
  v46 = (LODWORD(STACK[0x2F8]) ^ 0x814F396A) & (2 * (STACK[0x2F8] & a7)) ^ STACK[0x2F8] & a7;
  v47 = ((2 * (LODWORD(STACK[0x2F8]) ^ 0x81D15B6A)) ^ 0xA37DC412) & (LODWORD(STACK[0x2F8]) ^ 0x81D15B6A) ^ (2 * (LODWORD(STACK[0x2F8]) ^ 0x81D15B6A)) & 0x51BEE208;
  v48 = LODWORD(STACK[0x2F8]) ^ v43 ^ (2 * ((v45 ^ 0xE06001C0) & (4 * v44) ^ v44 ^ v47 & (4 * v46) ^ v46 ^ (v47 ^ 0x50822209) & (16 * (v47 & (4 * v46) ^ v46)) & ((4 * (v47 ^ 0x50822209)) ^ 0x46FB8820) ^ (4 * v45) & ~v45 & (16 * ((v45 ^ 0xE06001C0) & (4 * v44) ^ v44))));
  v49 = v37 - LODWORD(STACK[0x300]) + LODWORD(STACK[0x3E4]) - 1265391058 + (((v48 ^ 0x99B5DC8F) + 1024118528) ^ ((v48 ^ 0x35296C07) - 1852408200) ^ ((v48 ^ 0xB729E0D3) + 328659620));
  v50 = ((2 * (v49 ^ 0x315B4AE2)) ^ 0xDB150FD6) & (v49 ^ 0x315B4AE2) ^ (2 * (v49 ^ 0x315B4AE2)) & 0x6D8A87EA;
  v51 = (v50 ^ 0x41000440) & (4 * (((2 * v49) & 0xB9A39A12 ^ 0x5CD1CD09) & v49)) ^ ((2 * v49) & 0xB9A39A12 ^ 0x5CD1CD09) & v49;
  v52 = ((4 * (v50 ^ 0x248A8029)) & 0x6D8A87E0 ^ 0x240A07A0 ^ ((4 * (v50 ^ 0x248A8029)) ^ 0x362A1FA0) & (v50 ^ 0x248A8029)) & (16 * v51);
  v53 = *(v42 + 4 * a31);
  v54 = ((v53 ^ 0x5C2C3726) - 1941729723) ^ v53 ^ ((v53 ^ 0x5FC0D3B0) - 1884329261) ^ ((v53 ^ 0xD3837F7C) + 65848863) ^ ((v53 ^ 0xFFFFDD77) + 797991958) ^ v49 ^ (2 * (v52 ^ v51));
  v55 = v38 + LODWORD(STACK[0x2F4]) + LODWORD(STACK[0x2F8]) + *(v42 + 4 * a29) - *(v42 + 4 * a28) + 1297322015 + (((v54 ^ 0xDB150FD6) + 78752553) ^ ((v54 ^ 0x3759F9C) - 2051235229) ^ ((v54 ^ 0xF95882DE) + 2140258081));
  v56 = (LODWORD(STACK[0x308]) ^ 0x8A4F3573) & (2 * (STACK[0x308] & a7)) ^ STACK[0x308] & a7;
  v57 = ((2 * (LODWORD(STACK[0x308]) ^ 0xAADB37B5)) ^ 0xF5691DAC) & (LODWORD(STACK[0x308]) ^ 0xAADB37B5) ^ (2 * (LODWORD(STACK[0x308]) ^ 0xAADB37B5)) & 0x7AB48ED6;
  v58 = LODWORD(STACK[0x308]) ^ (2 * (((4 * (v57 ^ 0xA948252)) & 0x7AB48ED0 ^ 0x6A900A50 ^ ((4 * (v57 ^ 0xA948252)) ^ 0x6AD23B50) & (v57 ^ 0xA948252)) & (16 * ((v57 ^ 0x40200C84) & (4 * v56) ^ v56)) ^ (v57 ^ 0x40200C84) & (4 * v56) ^ v56)) ^ v55 ^ ((v55 ^ 0x78C96264) + 1508566495) ^ ((v55 ^ 0x763202BA) + 1460765953) ^ ((v55 ^ 0x7FDCE72E) + 1593794709) ^ ((v55 ^ 0xAFFBFFB5) - 1898416112);
  return (*(a37 + 8 * ((64928 * (((LOBYTE(STACK[0x310]) - LOBYTE(STACK[0x314]) + LOBYTE(STACK[0x31C]) + ((((v58 ^ 0x6B) - 63) ^ ((v58 ^ 0x25) - 113)) ^ ((v58 ^ 0x68) - 60)) - 1) & 1) == 0)) ^ v39)))();
}

uint64_t sub_1001BB9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v33 = (v31 - 1480106934) & 0x5838BFF7;
  v34 = (((a5 ^ 0xBEEC529D) + 1091808611) ^ ((a5 ^ 0x67F56923) - 1744136483) ^ ((a5 ^ 0xC465BDC2) + 999965246)) - 1750278240 + (((HIDWORD(a22) ^ 0x2ECEDA8) - 49081768) ^ ((HIDWORD(a22) ^ 0xD66DD480) + 697445248) ^ ((HIDWORD(a22) ^ 0xC9FD8163 ^ v33) + 906117292));
  v35 = v34 ^ ((v34 ^ 0xBBECB216) + 413179714);
  HIDWORD(a22) = v35 ^ ((v34 ^ 0xE94674D1) + 1242192263) ^ ((v34 ^ 0x71E6E992) - 760560442) ^ ((v34 ^ 0x7FFFFDFD) - 592195413) ^ 0x41CF54D4;
  return (*(v32 + 8 * v31))(v35, a2, a3, a4, a5, a6, v33, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

uint64_t sub_1001BBB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (((v4 ^ 0x18BD) - 6333) ^ ((v4 ^ 0xFFFF9D61) + 25247) ^ ((v4 ^ 0xFFFFFDCA) + 566)) - 3593;
  v7 = ((v5 + 294) ^ 0xFFFFC7CF) & v6 ^ 0xFFFFABE3;
  return (*(v3 + 8 * (v5 + 2098)))(a1, a2, a3, v6 ^ (2 * ((v6 ^ 0x61E) & (2 * ((v6 ^ 0x61E) & (2 * ((v6 ^ 0x61E) & (2 * ((v6 ^ 0x61E) & (2 * ((v6 ^ 0x61E) & (2 * ((v6 ^ 0x61E) & (2 * ((v6 ^ 0x61E) & (2 * ((v6 ^ 0x61E) & (2 * ((v6 ^ 0x61E) & (2 * ((v6 ^ 0x61E) & (2 * ((v6 ^ 0x61E) & (2 * ((v6 ^ 0x61E) & (2 * ((v6 ^ 0x61E) & (2 * (v7 ^ (v6 ^ 0x61E) & 0x13C2)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ 0xFFFFADCA);
}

uint64_t sub_1001BBCE8@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v7 = v3 & 0xF;
  *(a2 + v3) = *(v4 + v3) ^ (v7 | (v7 << 6)) ^ *(*(a1 + 8 * (v2 - 27567)) + v7 - 789830783) ^ *(*(a1 + 8 * (v2 ^ 0x7BC1)) + v7 + (v2 ^ 0x7155) - 532869135) ^ *(*(a1 + 8 * (v2 ^ 0x720E)) + v7 - 2121334082) ^ 0x5F;
  v8 = v5 < 0xF3BB39AD;
  if (v8 == v3 + 1 > 0xC44C652)
  {
    v8 = v3 - 205833810 < v5;
  }

  return (*(v6 + 8 * ((50298 * v8) ^ v2)))();
}

void sub_1001BBE94(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1010A0B50 + ((91 * ((qword_1010BEAD8 + dword_1010B1290) ^ 0x76)) ^ byte_101032440[byte_100F52120[(91 * ((qword_1010BEAD8 + dword_1010B1290) ^ 0x76))] ^ 0x37]) + 122);
  v3 = *(v2 - 501296259);
  v4 = *(&off_1010A0B50 + (byte_100D70140[byte_101032240[(91 * (v3 ^ qword_1010BEAD8 ^ 0x76))] ^ 0x1E] ^ (91 * (v3 ^ qword_1010BEAD8 ^ 0x76))) + 894);
  v5 = *(v4 - 513219118) - v3 - &v10;
  *(v2 - 501296259) = (952459099 * v5) ^ 0xFE584BA7F0179476;
  *(v4 - 513219118) = 952459099 * (v5 ^ 0xFE584BA7F0179476);
  v9 = (0x1242949229112A20 - (&v8 & 0x49214A4914889510)) & 0x49214A4914889510 | &v8 & 0xB6DEB5B6EB776AE8;
  v8 = ((2 * v9) & 0xE88D130) + (v9 ^ 0x744689A);
  v6 = *(&off_1010A0B50 + ((91 * (dword_1010B1290 ^ qword_1010BEAD8 ^ 0x76)) ^ byte_100F52020[byte_100E9BEE0[(91 * (dword_1010B1290 ^ qword_1010BEAD8 ^ 0x76))] ^ 0x50]) + 919) - 810145054;
  v7 = *&v6[8 * ((30 * ((*&v6[8 * ((91 * ((*(v4 - 513219118) - *(v2 - 501296259)) ^ 0x76)) ^ byte_100D70140[byte_101032240[(91 * ((*(v4 - 513219118) - *(v2 - 501296259)) ^ 0x76))] ^ 0x1E]) + 416152])(a2) != *(&off_1010A0B50 + ((91 * (*(v2 - 501296259) ^ qword_1010BEAD8 ^ 0x76)) ^ byte_100D70140[byte_101032240[(91 * (*(v2 - 501296259) ^ qword_1010BEAD8 ^ 0x76))] ^ 0x93]) + 3069) - 763056891)) | 0x3580)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001BC134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11)
{
  a10 = *v11;
  a11 = v12 + 634647737 * (((&a9 | 0x3C930F14) - (&a9 & 0x3C930F10)) ^ 0x510520E8) - 663456025;
  (*(v13 + 8 * (v12 - 663428839)))(&a9);
  v14 = (*(v13 + 8 * (v12 - 663428870)))(v11);
  return (*(v13 + 8 * ((((v12 - 1882918196) & 0x48AF3BAE ^ 0xD8740EC3) + v12) ^ (6310 * (v12 != -1339399016)))))(v14);
}

uint64_t sub_1001BC268(int8x16_t *a1, uint64_t a2, double a3, __n128 a4, __n128 a5, __n128 a6, int8x16_t a7, double a8, int8x16_t a9, int8x16_t a10, uint64_t a11, int a12)
{
  v19 = v15 & 0xF;
  v20 = v17;
  v21.i64[0] = vqtbl4q_s8(*(&a4 - 1), a7).u64[0];
  *&v21.i64[1] = a8;
  v22 = vrev64q_s8(veorq_s8(veorq_s8(*a1, *(v12 + v19 - 15)), veorq_s8(*(v13 + v19 - 15), *(v14 + v19 - 15))));
  v23 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v22, v22, 8uLL), a10), vmulq_s8(v21, a9)));
  *a1 = vextq_s8(v23, v23, 8uLL);
  return (*(*(v18 - 208) + 8 * (((a2 == 0) * a12) ^ v16)))(a1 - 1, a2 - 16);
}

uint64_t sub_1001BC2EC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int8x16_t a6, int8x8_t a7, int8x8_t a8)
{
  v15.val[0].i64[0] = v12 & (v11 + a3 - 1);
  v15.val[0].i64[1] = (v11 + a3 + 14) & 0xF;
  v15.val[1].i64[0] = (v11 + a3 + 13) & 0xF;
  v15.val[1].i64[1] = (v11 + a3 + 12) & 0xF;
  v15.val[2].i64[0] = (v11 + a3 + 11) & 0xF;
  v15.val[2].i64[1] = (v11 + a3 + 10) & 0xF;
  v15.val[3].i64[0] = (v11 + a3 + 9) & 0xF;
  v15.val[3].i64[1] = (v11 + a3) & 0xF ^ 8;
  *(a4 + a3) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a4 + a3), *(v8 + v15.val[0].i64[0] - 7)), veor_s8(*(v9 + v15.val[0].i64[0] - 7), *(v10 + v15.val[0].i64[0] - 7)))), a8), vmul_s8(*&vqtbl4q_s8(v15, a6), a7)));
  return (*(v13 + 8 * (((a2 == a3) * a5) ^ a1)))();
}

uint64_t sub_1001BC4B8@<X0>(uint64_t a1@<X8>)
{
  v11 = v4 & 0xF;
  *(v8 + v4) = *(v9 + v4) ^ *(v2 + v11) ^ -(v11 | (32 * v11)) ^ *((v3 ^ 0xA214u) + v11 + v1 - 47849) ^ *(a1 + v11) ^ 0x5F;
  v12 = v5 < v6;
  if (v12 == v4 + 1 > 0x1C350B07)
  {
    v12 = v4 - 473238279 < v5;
  }

  return (*(v10 + 8 * ((!v12 * v7) ^ v3)))();
}

uint64_t sub_1001BC594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>, __n128 a6@<Q1>, int8x16_t a7@<Q4>, uint64_t a8@<D5>, int8x16_t a9@<Q6>, int8x16_t a10@<Q7>)
{
  v19 = a3 & (a1 + 15);
  v20 = v15;
  v21.i64[0] = vqtbl4q_s8(*(&a6 - 1), a7).u64[0];
  v21.i64[1] = a8;
  v22 = vrev64q_s8(veorq_s8(veorq_s8(*(v17 + a1), *(a5 + v19 - 15)), veorq_s8(*(v12 + v19 - 15), *(v19 + v13 - 13))));
  v23 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v22, v22, 8uLL), a10), vmulq_s8(v21, a9)));
  *(v16 + a1) = vextq_s8(v23, v23, 8uLL);
  return (*(v18 + 8 * (((a2 == 0) * a4) ^ v14)))(a1 - 16, a2 - 16);
}

uint64_t sub_1001BC6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char a22, int a23, char a24, int a25, char *a26, char *a27, uint64_t a28, int a29, uint64_t a30, int a31)
{
  v34 = (((*(v33 - 0x217E172EFA1E804) ^ 0xFFF89B4A) + 484534) ^ ((*(v33 - 0x217E172EFA1E804) ^ 0xD4ABDD0) - 223002064) ^ ((*(v33 - 0x217E172EFA1E804) ^ 0x1B67E18B) - 459792779)) - 54746966;
  v35 = 634647737 * ((&a25 - 2 * (&a25 & 0x50484D90) - 800567914) ^ 0xBDDE626A);
  a28 = *(v33 - 0x217E172EFA1E81CLL);
  a30 = v33 - 0x217E172EFA1E800;
  a29 = v31 - v35 + 3101;
  a26 = &a22;
  a27 = &a24;
  a25 = v34 ^ v35;
  v36 = (*(v32 + 8 * (v31 + 15232)))(&a25);
  return (*(v32 + 8 * ((9469 * (a31 == ((v31 - 1081331590) & 0x4073CFF9) - 371902631)) ^ v31)))(v36);
}

uint64_t sub_1001BC808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int8x16_t a6, int8x8_t a7, int8x8_t a8)
{
  v14 = v11 + a2 + 8;
  v16.val[0].i64[0] = (v14 + a4) & 0xF;
  v16.val[0].i64[1] = (v11 + a2 + 22) & 0xF;
  v16.val[1].i64[0] = (v11 + a2 + 21) & 0xF;
  v16.val[1].i64[1] = (v11 + a2 + 20) & 0xF;
  v16.val[2].i64[0] = (v11 + a2 + 19) & 0xF;
  v16.val[2].i64[1] = (v11 + a2 + 18) & 0xF;
  v16.val[3].i64[0] = (v11 + a2 + 17) & 0xF;
  v16.val[3].i64[1] = v14 & 0xF ^ 8;
  *(a3 + a2 + a4 + 1) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a3 + a2 + a4 + 1), *(v9 + v16.val[0].i64[0] - 7)), veor_s8(*(v8 + v16.val[0].i64[0] + 2 - 7), *(v10 + v16.val[0].i64[0] + 2 - 7)))), a8), vmul_s8(*&vqtbl4q_s8(v16, a6), a7)));
  return (*(v13 + 8 * (((a1 == a2) * a5) ^ v12)))();
}

uint64_t sub_1001BC904()
{
  v2 = STACK[0x374];
  *(v1 - 140) = LODWORD(STACK[0x36C]) ^ 0x9110FC29;
  *(v1 - 132) = LODWORD(STACK[0x364]) ^ 0x5DC45FF7;
  *(v1 - 144) = LODWORD(STACK[0x370]) ^ 0x37CD31F1;
  *(v1 - 136) = LODWORD(STACK[0x368]) ^ 0x4D76FFBB;
  return (*(v0 + 8 * v2))();
}

void sub_1001BC980(uint64_t a1)
{
  v1 = 193924789 * (((a1 | 0x46D62218) - a1 + (a1 & 0xB929DDE7)) ^ 0xF06D107E);
  v2 = *(a1 + 16) - v1;
  v3 = *(a1 + 24) ^ v1;
  v4 = *(*(a1 + 8) + 4);
  v6 = v4 - 1051086576;
  v5 = v4 - 1051086576 < 0;
  v7 = 1051086576 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  v8 = 4 * v7;
  v9 = v8 + 589976801;
  v10 = (v3 | ((v3 < 0x1827BD88) << 32)) + 184719193;
  v11 = v8 > 0xFFFFFFFFDCD5AB1ELL;
  v12 = (v10 < 0x232A54E1) ^ v11;
  v13 = v9 > v10;
  if (v12)
  {
    v13 = v11;
  }

  __asm { BRAA            X12, X17 }
}

uint64_t sub_1001BCDA0@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, unsigned int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v23 = ((*v8 ^ 0x1939D889) - 423221385) ^ ((*v8 ^ 0xB3D47973) + 1277920909) ^ (a3 + (*v8 ^ 0xAAEDA1A5));
  v24 = ((v8[2] ^ 0x40E7CDD9) - 1088933337) ^ ((v8[2] ^ 0x5951B85F) - 1498527839) ^ ((v8[2] ^ 0x19B675D9) - 431388121);
  v25 = v24 - ((((v24 + a7) * a4) >> 32) >> 5) * a5;
  v26 = ((v8[4] ^ v16) + v17) ^ ((v8[4] ^ v18) + v19) ^ ((v8[4] ^ v20) + v21);
  v27 = *(a6 + 4 * (v11 + v23 - ((((v23 + a7) * a4) >> 32) >> 5) * a5 + 95)) ^ (*(a6 + 4 * (v11 + v25 + 95)) >> 4);
  v28 = ((v8[6] ^ v22) + v10) ^ ((v8[6] ^ v12) + v13) ^ ((v8[6] ^ v14) + v15);
  *(*(a1 + 32) + v11) = v27 ^ BYTE1(*(a6 + 4 * (v11 + v26 - ((((v26 + a7) * a4) >> 32) >> 5) * a5 + 95))) ^ (*(a6 + 4 * (v11 + v28 - ((((v28 + a7) * a4) >> 32) >> 5) * a5 + 95)) >> 12) ^ 0x5F;
  return (*(a8 + 8 * (((v11 == 39) * a2) ^ v9)))();
}

void sub_1001BCFE4(uint64_t a1)
{
  v1 = *a1 + 1012831759 * (((a1 | 0xF3DDB86B) - (a1 | 0xC224794) + 203573140) ^ 0xE34EAEE1);
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(&off_1010A0B50 + v1 - 15091) - 810145054;
  (*&v4[8 * (v1 ^ 0xF5F2)])(*(&off_1010A0B50 + v1 - 12039) - 481917394, v8, 16);
  v5 = (v2 ^ 0xF7FFF5DFE15FFFF6) + 0x8000A206D5C7F1ELL + ((2 * v2) & 0xEFFFEBBFC2BFFFECLL);
  v6 = v5 < 0x4EBC7F14;
  v7 = v5 > v3 + 1320976148;
  if (v3 > 0xFFFFFFFFB14380EBLL != v6)
  {
    v7 = v6;
  }

  __asm { BRAA            X9, X17 }
}

uint64_t sub_1001BD1DC(__n128 a1)
{
  a1.n128_u16[0] = 24415;
  a1.n128_u8[2] = 95;
  a1.n128_u8[3] = 95;
  a1.n128_u8[4] = 95;
  a1.n128_u8[5] = 95;
  a1.n128_u8[6] = 95;
  a1.n128_u8[7] = 95;
  return (*(v2 + 8 * v1))((11 * (v1 ^ 0x3C61u)) ^ 0x429FLL, a1);
}

uint64_t sub_1001BD2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, unsigned int a12)
{
  a12 = v13 + 297845113 * (((&a11 | 0xB7512993) - (&a11 | 0x48AED66C) + 1219417708) ^ 0xC062350D) - 1388;
  v14 = (*(v12 + 8 * (v13 + 21082)))(&a11);
  return (*(v12 + 8 * (((a11 == (((v13 - 96) | 1) - 68)) * (((v13 - 20494) | 0x5A5) + 48865)) ^ v13)))(v14);
}

uint64_t sub_1001BD3A4@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v8 = (v6 - 1) & 0xF;
  v12 = (v2 - a2) < 0x10 || 1 - a2 + v5 - v6 + v8 < (300 * (a1 ^ 0x3245u)) - 39884 || (v3 - a2 - v6 + v8 + 3) < 0x10 || (1 - a2 + v4 - v6 + v8) < 0x10;
  return (*(v7 + 8 * (a1 | (2 * v12))))();
}

uint64_t sub_1001BD554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33)
{
  v36 = (((a33 ^ 0x4C34C5AF) - 1278526895) ^ ((a33 ^ 0x85F80AC8) + 2047341880) ^ (((59 * (v33 ^ 0x5D5E)) ^ a33 ^ 0x201952B8) - 538511478)) + 500815842;
  v37 = v34 + 872681681 < v36;
  if (v34 > 0xCBFBEF2E != v36 < 0x340410D1)
  {
    v37 = v36 < 0x340410D1;
  }

  return (*(v35 + 8 * ((471 * !v37) ^ v33)))(65);
}

void sub_1001BD63C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = (*(a1 + 24) ^ 0x57537DFFFFF9F61FLL) - 0x57537DFF3AB761D9 + ((2 * *(a1 + 24)) & 0xAEA6FBFFFFF3EC3ELL);
  v4 = v3 < 0xC5429446;
  v5 = v3 > v2 + 3309474886u;
  if (v2 > 0xFFFFFFFF3ABD6BB9 != v4)
  {
    v5 = v4;
  }

  v1 = *(a1 + 12) + 1012831759 * ((-2 - ((a1 | 0xC62FB8B0) + (~a1 | 0x39D0474F))) ^ 0x294351C5);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1001BD7B0@<X0>(int a1@<W8>)
{
  v3 = ((v1 - 2033366225) ^ (a1 + 5708) ^ (a1 + 951546368) & 0xC74827FF ^ 0x61831118) & (2 * ((v1 - 2033366225) & 0x75D3D88D)) ^ (v1 - 2033366225) & 0x75D3D88D;
  v4 = ((2 * ((v1 - 2033366225) ^ 0xD2298A7D)) ^ 0x4FF4A5E0) & ((v1 - 2033366225) ^ 0xD2298A7D) ^ (2 * ((v1 - 2033366225) ^ 0xD2298A7D)) & 0xA7FA52F0;
  v5 = (v4 ^ 0x7D01060) & (4 * v3) ^ v3;
  v6 = ((4 * (v4 ^ 0xA00A5210)) ^ 0x9FE94BC0) & (v4 ^ 0xA00A5210) ^ (4 * (v4 ^ 0xA00A5210)) & 0xA7FA52F0;
  v7 = (v6 ^ 0x87E842C0) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0x20121030)) ^ 0x7FA52F00) & (v6 ^ 0x20121030) ^ (16 * (v6 ^ 0x20121030)) & 0xA7FA52C0;
  return (*(v2 + 8 * ((108 * (((v1 - 2033366225) ^ (2 * ((((v8 ^ 0x805A50F0) << 8) & 0x27FA5000 ^ 0x225202F0 ^ (((v8 ^ 0x805A50F0) << 8) ^ 0xFA52F000) & (v8 ^ 0x805A50F0)) & (((v8 ^ 0x27A002F0) & (v7 << 8) ^ v7) << 16) ^ (v8 ^ 0x27A002F0) & (v7 << 8) ^ v7))) == 1976817805)) ^ a1)))();
}

uint64_t sub_1001BDB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v79 = (v75 ^ 0x4DFF65F2) - 14876992 + (v72 & 0x9BFECBE4);
  v80 = 139493411 * ((((v78 - 160) | 0x2D0CB99) - ((v78 - 160) & 0x2D0CB98)) ^ 0xEFD2ADC);
  *(v78 - 160) = (v76 + 2231) ^ v80;
  *(v78 - 128) = v79 ^ v80;
  v77[183] = v73;
  v77[187] = a71;
  v77[185] = v71;
  v77[184] = v73;
  v81 = (*(v74 + 8 * (v76 + 46362)))(v78 - 160);
  return (*(v74 + 8 * (((*(v78 - 112) == ((v76 - 1151344124) & 0x44A02BFC ^ 0xE9D5E4A5)) * ((2 * v76) ^ 0x7DCB)) ^ v76)))(v81);
}

uint64_t sub_1001BDC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, int a40, int a41)
{
  v45 = v42 - 1101989945;
  v46 = a41 - (((a40 ^ 0x3328B952) - 858306898) ^ ((a40 ^ 0x4A6D5D2A) - 1248681258) ^ ((a40 ^ 0x90902369) + 1869601943)) + 176632072 + (((v43 ^ 0xF82D0856) + 2087944593) ^ ((v43 ^ 0x77188CD0) - 213514985) ^ ((v43 ^ (4821 * (v41 ^ 0x5138)) ^ 0x1D416B87) - 1725973399));
  v45 += 906756178;
  v47 = (v45 < 0x63CBCD52) ^ (v46 < 0x63CBCD52);
  v48 = v46 > v45;
  if (v47)
  {
    v48 = v46 < 0x63CBCD52;
  }

  return (*(v44 + 8 * ((110 * v48) ^ v41)))();
}

uint64_t sub_1001BDD40@<X0>(int a1@<W8>)
{
  v5 = ((a1 - 4978 + (v3 ^ 0x77885745) - 2005453182) ^ ((v3 ^ 0xC78482CC) + 947617076) ^ ((v3 ^ 0x59D91298) - 1507398296)) + 1395273983;
  v6 = ((v5 ^ 0x4BE6457) - 1844055480) ^ v5 ^ ((v5 ^ 0xCD89CCEB) + 1528978172) ^ ((v5 ^ 0xDF9C7EEC) + 1228400893) ^ ((v5 ^ 0x7FFFBFBF) - 380360272);
  v7 = *(*(v2 + 24) + (v6 ^ 0x695469EF));
  *(STACK[0x608] + (v6 ^ 0x695469EF)) = v7 - ((2 * v7) & 0x74) - 70;
  return (*(v4 + 8 * ((44566 * (v6 == 1767139823)) ^ v1)))();
}

uint64_t sub_1001BDF54()
{
  *&v5 = 0x5F5F5F5F5F5F5F5FLL;
  *(&v5 + 1) = 0x5F5F5F5F5F5F5F5FLL;
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * (v0 + 20710)) ^ v1)))();
}

uint64_t sub_1001BDFD0(__n128 a1, uint64_t a2, int a3)
{
  v5.n128_u64[0] = (v3 + 13) & 0xF;
  v5.n128_u64[1] = (v3 + 12) & 0xF;
  v6.n128_u64[0] = (v3 + 11) & 0xF;
  v6.n128_u64[1] = (v3 + a3 - 53 - 52) & 0xF;
  v7.n128_u64[0] = (v3 + 9) & 0xF;
  v7.n128_u64[1] = v3 & 0xF ^ 8;
  v11.val[0].i64[0] = (v3 + 7) & 0xF;
  v11.val[0].i64[1] = (v3 + 6) & 0xF;
  v11.val[1].i64[0] = (v3 + 5) & 0xF;
  v11.val[1].i64[1] = (v3 + 4) & 0xF;
  v11.val[2].i64[0] = (v3 + 3) & 0xF;
  v11.val[2].i64[1] = (v3 + 2) & 0xF;
  v11.val[3].i64[0] = (v3 + 1) & 0xF;
  v11.val[3].i64[1] = v3 & 0xF;
  v8.n128_u64[0] = 0xCFCFCFCFCFCFCFCFLL;
  v8.n128_u64[1] = 0xCFCFCFCFCFCFCFCFLL;
  v9.n128_u64[0] = 0xA8A8A8A8A8A8A8A8;
  v9.n128_u64[1] = 0xA8A8A8A8A8A8A8A8;
  return (*(v4 + 8 * a3))((v3 + 14) & 0xF, (a3 - 53) ^ 0x2B98u, (a3 - 53) ^ 0x722ELL, 77, a1, v5, v6, v7, xmmword_100BC76B0, vqtbl4q_s8(v11, xmmword_100BC76B0), v8, v9);
}

uint64_t sub_1001BE0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, uint64_t a23)
{
  a22 = (v25 + 32322) ^ (139493411 * (((v26 | 0x12883FFE) - (v26 & 0x12883FF8)) ^ 0x1EA5DEBB));
  a23 = v24;
  (*(v23 + 8 * (v25 ^ 0xD66E)))(&a22);
  return (*(v23 + 8 * v25))(139493411);
}

uint64_t sub_1001BE158()
{
  v2 = STACK[0xDE0];
  *v2 = v0;
  v3 = STACK[0xDD0];
  *v3 = v1;
  v4 = STACK[0xDF0];
  v5 = *v2 ^ *STACK[0xDF0];
  LODWORD(STACK[0xEC0]) = v5;
  *v4 = v5 ^ 0xE9D5C711;
  v6 = STACK[0xE10];
  v7 = *v3 ^ *STACK[0xE10];
  LODWORD(STACK[0xEB0]) = v7;
  *v6 = v7 ^ 0xE9D5C711;
  LODWORD(v2) = ((*(STACK[0xDC0] + 22) ^ 0xC383709E) + 1014796130) ^ ((*(STACK[0xDC0] + 22) ^ 0x75C4E4A4) - 1975837860) ^ ((*(STACK[0xDC0] + 22) ^ 0xB6479465) + 1236822939);
  v8 = *(STACK[0xDC0] + 21) & 0xFE;
  v9 = ((v8 ^ 0xDE16E62A) + 1896128874) ^ ((v8 ^ 0x6BA9EE28) - 994334356) ^ ((v8 ^ 0xB5BF085D) + 447565599);
  LODWORD(STACK[0xE90]) = v9 + 1357756643;
  LODWORD(STACK[0xEA0]) = v9 - 1606376374;
  LODWORD(STACK[0xE80]) = 25 * (v9 - 1606376374);
  LODWORD(STACK[0xE70]) = v2 + 94;
  v10 = *(STACK[0xF18] + 8 * SLODWORD(STACK[0xCE0]));
  LODWORD(STACK[0xE60]) = v2 + 356950519 * v9;
  return v10();
}

uint64_t sub_1001BE3C0(void *a1)
{
  v4 = STACK[0xC70] < 0xFFFFFFFFFFFFFFD7;
  a1[3] = STACK[0xD18];
  a1[4] = *(v1 + 80);
  *(v1 + 80) = a1;
  *(a1[4] + 24) = a1;
  a1[1] = STACK[0xD60];
  return (*(STACK[0xF18] + 8 * (((v3 + 318514290) * v4) ^ v2)))();
}

uint64_t sub_1001BE488()
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
  STACK[0xC270] = 0;
  STACK[0xC278] = v2;
  v11 = 16777619 * ((1269228062 * v10 + 7) ^ (1269228062 * v10)) % 7;
  v12 = *(&STACK[0xC270] | v11);
  *(&STACK[0xC270] | v11) = 0;
  LOBYTE(STACK[0xC277]) = v12;
  v13 = 16777619 * ((1269228062 * v10 + 6) ^ (1269228062 * v10)) % 6;
  v14 = *(&STACK[0xC270] | v13);
  *(&STACK[0xC270] | v13) = STACK[0xC276];
  LOBYTE(STACK[0xC276]) = v14;
  v15 = 16777619 * ((1269228062 * v10 + 5) ^ (1269228062 * v10)) % 5;
  v16 = *(&STACK[0xC270] | v15);
  *(&STACK[0xC270] | v15) = STACK[0xC275];
  LOBYTE(STACK[0xC275]) = v16;
  v17 = STACK[0xC270];
  LOBYTE(STACK[0xC270]) = STACK[0xC274];
  LOBYTE(STACK[0xC274]) = v17;
  v18 = 16777619 * ((1269228062 * v10 + 3) ^ (1269228062 * v10)) % 3;
  v19 = *(&STACK[0xC270] | v18);
  *(&STACK[0xC270] | v18) = STACK[0xC273];
  LOBYTE(STACK[0xC273]) = v19;
  v20 = STACK[0xC271];
  LOBYTE(STACK[0xC272]) = STACK[0xC270];
  LOWORD(STACK[0xC270]) = v20;
  v21 = vdup_n_s32(1269228062 * v10);
  v22.i32[0] = v21.i32[0];
  v22.i32[1] = (1269228062 * v10) | 1;
  v23 = veor_s8(vmul_s32(v22, v21), v21);
  STACK[0xC270] = vmla_s32(v23, STACK[0xC270], vdup_n_s32(0x1000193u));
  STACK[0xC278] ^= STACK[0xC270];
  STACK[0xC278] = vmul_s32(vsub_s32(STACK[0xC278], v23), vdup_n_s32(0x359C449Bu));
  v24 = STACK[0xC27A];
  LOWORD(STACK[0xC279]) = STACK[0xC278];
  LOBYTE(STACK[0xC278]) = v24;
  v25 = (&STACK[0xC278] | v18);
  LOBYTE(v20) = *v25;
  *v25 = STACK[0xC27B];
  LOBYTE(STACK[0xC27B]) = v20;
  LOBYTE(v25) = STACK[0xC278];
  LOBYTE(STACK[0xC278]) = STACK[0xC27C];
  LOBYTE(STACK[0xC27C]) = v25;
  v26 = (&STACK[0xC278] | v15);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC27D];
  LOBYTE(STACK[0xC27D]) = v25;
  v27 = (&STACK[0xC278] | v13);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xC27E];
  LOBYTE(STACK[0xC27E]) = v26;
  v28 = (&STACK[0xC278] | v11);
  v29 = *v28;
  *v28 = STACK[0xC27F];
  LOBYTE(STACK[0xC27F]) = v29;
  v30 = STACK[0xC278];
  v31 = (1269228062 * STACK[0xC278]) ^ v10;
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
  *v1 = STACK[0xC278];
  return (*(STACK[0xF18] + 8 * (v0 - 26996)))(v48, v49);
}

uint64_t sub_1001BE910()
{
  v0 = STACK[0xF10] - 2333;
  v1 = STACK[0xF10] - 32564;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 - 30386 + v1)))();
}

uint64_t sub_1001BEB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unsigned int a3@<W8>)
{
  v4 = STACK[0xAC0] + STACK[0x1878];
  v5 = *(v4 + 17);
  v6 = v4 + 17;
  v8 = (v4 + 17) & 0xFFFFFFFFFFFFFFF8;
  v9 = 8 * ((v4 + 17) & 7);
  v11 = __ROR8__((v4 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v12 = ((v11 - 0x296E95066F186A7FLL) | 0xD98B9EB7C7D590A8) - ((v11 - 0x296E95066F186A7FLL) | 0x26746148382A6F57) + 0x26746148382A6F57;
  v13 = (a3 + 1822) ^ 0xDEA987543BF22FE1 ^ v12;
  v12 ^= 0x6A22D098BCCE08D4uLL;
  v14 = (__ROR8__(v13, 8) + v12) ^ 0x14BA074A2F986FE5;
  v15 = __ROR8__(v14, 8);
  v16 = v14 ^ __ROR8__(v12, 61);
  v17 = (((2 * (v15 + v16)) | 0xBABF5F94CD26D9DELL) - (v15 + v16) - 0x5D5FAFCA66936CEFLL) ^ 0x716827899F370277;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xBD7D2DE9C10AA16ALL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x82B08017BF43C069;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0xAA9DDABAE2E4D47CLL;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (((v25 + v24) | 0x741CB85328B13BADLL) - ((v25 + v24) | 0x8BE347ACD74EC452) - 0x741CB85328B13BAELL) ^ 0xFBAE9910D66A571ELL;
  v27 = __ROR8__((v4 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v28 = (((__ROR8__(v26, 8) + (v26 ^ __ROR8__(v24, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v4 + 10) & 7))) ^ *(v4 + 10);
  v29 = (v27 - 0x296E95066F186A7FLL) ^ v3;
  v30 = (__ROR8__((v27 - 0x296E95066F186A7FLL) ^ a2, 8) + v29) ^ 0x14BA074A2F986FE5;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x2C378843F9A46E98;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xBD7D2DE9C10AA16ALL;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x82B08017BF43C069;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = __ROR8__((v38 + v37 - ((2 * (v38 + v37)) & 0x407FFC9E280355ECLL) - 0x5FC001B0EBFE550ALL) ^ 0xAA224F5F6E57E8ALL, 8);
  v40 = (v38 + v37 - ((2 * (v38 + v37)) & 0x407FFC9E280355ECLL) - 0x5FC001B0EBFE550ALL) ^ 0xAA224F5F6E57E8ALL ^ __ROR8__(v37, 61);
  v41 = (((2 * (v39 + v40)) | 0x139A70A4D8F62474) - (v39 + v40) + 0x7632C7AD9384EDC6) ^ 0x67F191192A07E89;
  v42 = __ROR8__((v6 - 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v43 = (((((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v40, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v6 - 6) & 7))) ^ *(v6 - 6)) << 48) | (v28 << 56);
  v44 = ((v42 - 0x296E95066F186A7FLL) | 0xDA387B23D91E845) - ((v42 - 0x296E95066F186A7FLL) | 0xF25C784DC26E17BALL) - 0xDA387B23D91E846;
  v45 = v44 ^ 0xA819E51C1B6DC37;
  v44 ^= 0xBE0AC99D468A7039;
  v46 = (__ROR8__(v45, 8) + v44) ^ 0x14BA074A2F986FE5;
  v47 = __ROR8__(v46, 8);
  v48 = v46 ^ __ROR8__(v44, 61);
  v49 = (((v47 + v48) ^ 0xCFB5DE9FCD19F1EELL | 0xC83A9E8640CAE2E2) - ((v47 + v48) ^ 0xCFB5DE9FCD19F1EELL | 0x37C56179BF351D1DLL) + 0x37C56179BF351D1DLL) ^ 0x2BB8C85A74777D94;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0xBD7D2DE9C10AA16ALL;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0x82B08017BF43C069;
  v54 = __ROR8__(v53, 8);
  v55 = v53 ^ __ROR8__(v52, 61);
  v56 = (((2 * (v54 + v55)) & 0x2D8EB92793D1DE9ELL) - (v54 + v55) + 0x6938A36C361710B0) ^ 0xC3A579D6D4F3C4CCLL;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = __ROR8__(v56, 8);
  v59 = (v58 + v57 - ((2 * (v58 + v57)) & 0x2CFA33F60B857204) - 0x6982E604FA3D46FELL) ^ 0x19CF38B8FB19D5B1;
  v60 = v59 ^ __ROR8__(v57, 61);
  v61 = __ROR8__(v59, 8);
  v62 = v43 | (((((((2 * (v61 + v60)) | 0xEE3077E3148AFAALL) - (v61 + v60) - 0x77183BF18A457D5) ^ 0x9C6DF7987DBA58CDLL) >> (8 * ((v6 - 5) & 7))) ^ *(v6 - 5)) << 40);
  v63 = __ROR8__((v6 - 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v64 = (0x296E95066F186A7ELL - v63) & 0xC971C6B8B50DFC7ALL | (v63 + 0x16916AF990E79581) & 0x348E39474AF20385;
  v65 = __ROR8__(v64 ^ 0xCC53DF5B492AC808, 8);
  v64 ^= 0x78D88897CE166406uLL;
  v66 = (v65 + v64 - ((2 * (v65 + v64)) & 0xDFD25EE9D1DF1F84) - 0x1016D08B1710703ELL) ^ 0xFB53283EC777E027;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (((v68 + v67) & 0x6F009D7149D636BFLL ^ 0x6000080109842208) + ((v68 + v67) & 0x90FF628EB629C940 ^ 0x5902822220C841) - 1) ^ 0x4C6E82C0D20084D0;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ 0xBD7D2DE9C10AA16ALL;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0x82B08017BF43C069;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = __ROR8__(v73, 8);
  v76 = __ROR8__((v75 + v74 - ((2 * (v75 + v74)) & 0x7860AE7B7CB4DB86) - 0x43CFA8C241A5923DLL) ^ 0x16AD8D875CBEB9BFLL, 8);
  v77 = (v75 + v74 - ((2 * (v75 + v74)) & 0x7860AE7B7CB4DB86) - 0x43CFA8C241A5923DLL) ^ 0x16AD8D875CBEB9BFLL ^ __ROR8__(v74, 61);
  v78 = (((2 * (v76 + v77)) | 0x37F4B843D0ED49CCLL) - (v76 + v77) - 0x1BFA5C21E876A4E6) ^ 0x94487D6216ADC855;
  v79 = v62 | (((((__ROR8__(v78, 8) + (v78 ^ __ROR8__(v77, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v6 - 4) & 7))) ^ *(v6 - 4)) << 32);
  v80 = __ROR8__((v6 - 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v81 = (v80 - 0x296E95066F186A7FLL) ^ v3;
  v82 = (__ROR8__((v80 - 0x296E95066F186A7FLL) ^ a2, 8) + v81) ^ 0x14BA074A2F986FE5;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = __ROR8__(v82, 8);
  v85 = (((v84 + v83) | 0xC65D178B32370E5ELL) - ((v84 + v83) | 0x39A2E874CDC8F1A1) + 0x39A2E874CDC8F1A1) ^ 0xEA6A9FC8CB9360C6;
  v86 = v85 ^ __ROR8__(v83, 61);
  v87 = (__ROR8__(v85, 8) + v86) ^ 0xBD7D2DE9C10AA16ALL;
  v88 = v87 ^ __ROR8__(v86, 61);
  v89 = (__ROR8__(v87, 8) + v88) ^ 0x82B08017BF43C069;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = __ROR8__(v89, 8);
  v92 = (((v91 + v90) & 0x3C4F41CD7192885DLL ^ 0x409418071828840) + ((v91 + v90) ^ 0xBA462C7D0219769DLL) - (((v91 + v90) ^ 0xBA462C7D0219769DLL) & 0x3C4F41CD7192885DLL)) ^ 0x2C94B70A916F2ABCLL;
  v93 = v92 ^ __ROR8__(v90, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ a1;
  v95 = v79 & 0xFFFFFFFF00FFFFFFLL | (((((__ROR8__(v94, 8) + (v94 ^ __ROR8__(v93, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v6 - 3) & 7))) ^ *(v6 - 3)) << 24);
  v96 = __ROR8__((v6 - 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v97 = (0x296E95066F186A7ELL - v96) & 0x780AF26B0D74D962 | (v96 - 0x296E95066F186A7FLL) & 0x83F50D94F28B269DLL;
  v98 = v97 ^ 0x7B28EB88F153ED10;
  v97 ^= 0xCFA3BC44766F411ELL;
  v99 = (__ROR8__(v98, 8) + v97) ^ 0x14BA074A2F986FE5;
  v100 = v99 ^ __ROR8__(v97, 61);
  v101 = __ROR8__(v99, 8);
  v102 = (((2 * (v101 + v100)) & 0xCA89BB70944CC490) - (v101 + v100) - 0x6544DDB84A266249) ^ 0xB68CAA044C7DF32FLL;
  v103 = v102 ^ __ROR8__(v100, 61);
  v104 = __ROR8__(v102, 8);
  v105 = __ROR8__((((2 * (v104 + v103)) | 0x1F75380BFBD2AC84) - (v104 + v103) + 0x704563FA0216A9BELL) ^ 0x32C7B1EC3CE3F728, 8);
  v106 = (((2 * (v104 + v103)) | 0x1F75380BFBD2AC84) - (v104 + v103) + 0x704563FA0216A9BELL) ^ 0x32C7B1EC3CE3F728 ^ __ROR8__(v103, 61);
  v107 = (v105 + v106 - ((2 * (v105 + v106)) & 0xDDD42B732980FAFELL) - 0x1115EA466B3F8281) ^ 0x6C5A95AE2B83BD16;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = (__ROR8__(v107, 8) + v108) ^ 0xAA9DDABAE2E4D47CLL;
  v110 = v109 ^ __ROR8__(v108, 61);
  v111 = __ROR8__(v109, 8);
  v112 = (((2 * (v111 + v110)) | 0x804A0600C215142ALL) - (v111 + v110) + 0x3FDAFCFF9EF575EBLL) ^ 0x4F9722439FD1E6A6;
  v113 = v95 & 0xFFFFFFFFFF00FFFFLL | (((((__ROR8__(v112, 8) + (v112 ^ __ROR8__(v110, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v6 - 2) & 7))) ^ *(v6 - 2)) << 16);
  v114 = *--v6;
  v115 = __ROR8__(v6 & 0xFFFFFFFFFFFFFFF8, 8);
  v116 = -2 - (((0x296E95066F186A7ELL - v115) | 0x11E12D9BB2BEC557) + ((v115 + 0x16916AF990E79581) | 0xEE1ED2644D413AA8));
  v117 = v116 ^ 0x16C334784E99F125;
  v116 ^= 0xA24863B4C9A55D2BLL;
  v118 = __ROR8__(v117, 8);
  v119 = (v118 + v116 - ((2 * (v118 + v116)) & 0xFBF4E2E424DEEDECLL) + 0x7DFA7172126F76F6) ^ 0x694076383DF71913;
  v120 = v119 ^ __ROR8__(v116, 61);
  v121 = (__ROR8__(v119, 8) + v120) ^ 0x2C378843F9A46E98;
  v122 = v121 ^ __ROR8__(v120, 61);
  v123 = __ROR8__(v121, 8);
  v124 = (((2 * (v123 + v122)) | 0xDAADC2F8462BDC12) - (v123 + v122) - 0x6D56E17C2315EE09) ^ 0xD02BCC95E21F4F63;
  v125 = v124 ^ __ROR8__(v122, 61);
  v126 = (__ROR8__(v124, 8) + v125) ^ 0x82B08017BF43C069;
  v127 = __ROR8__(v126, 8);
  v128 = v126 ^ __ROR8__(v125, 61);
  v129 = (((2 * (v127 + v128)) & 0x3240908671528FF2) - (v127 + v128) + 0x66DFB7BCC756B806) ^ 0xCC426D0625B26C7ALL;
  v130 = v129 ^ __ROR8__(v128, 61);
  v131 = __ROR8__(v129, 8);
  v132 = (v131 + v130 - ((2 * (v131 + v130)) & 0x2AB1721DD3D07F4ALL) + 0x1558B90EE9E83FA5) ^ 0x9AEA984D17335316;
  v133 = ((((__ROR8__(v132, 8) + (v132 ^ __ROR8__(v130, 61))) ^ 0x9B1C7427651E0F18) >> (8 * (v6 & 7u))) ^ v114) << 8;
  v134 = ((v113 - ((2 * v113) & 0xE37F5BC500116574) - 0xE40521D7FF74D56) ^ 0x44E80009CEED6AB2) & ~v133 | v133 & 0x2700;
  v135 = __ROR8__(v8, 8);
  v136 = ((2 * ((v135 - 0x296E95066F186A7FLL) ^ 0x95FCC380C02B3D43)) | 0xF0E1BB0B64E685F2) - ((v135 - 0x296E95066F186A7FLL) ^ 0x95FCC380C02B3D43) - 0x7870DD85B27342F9;
  v137 = v136 ^ 0xEAAE07E68E7F4BC8;
  v136 ^= 0x5E25502A0943E7C6uLL;
  v138 = __ROR8__(v137, 8);
  v139 = (((v138 + v136) ^ 0x86248412544F2AE3 | 0xD5F5F4D0FD6E640FLL) - ((v138 + v136) ^ 0x86248412544F2AE3 | 0x2A0A0B2F02919BF0) + 0x2A0A0B2F02919BF0) ^ 0x476B778886B92109;
  v140 = v139 ^ __ROR8__(v136, 61);
  v141 = (__ROR8__(v139, 8) + v140) ^ 0x2C378843F9A46E98;
  v142 = v141 ^ __ROR8__(v140, 61);
  v143 = (__ROR8__(v141, 8) + v142) ^ 0xBD7D2DE9C10AA16ALL;
  v144 = v143 ^ __ROR8__(v142, 61);
  v145 = (__ROR8__(v143, 8) + v144) ^ 0x82B08017BF43C069;
  v146 = v145 ^ __ROR8__(v144, 61);
  v147 = __ROR8__(v145, 8);
  v148 = (((2 * (v147 + v146)) & 0x20795F03B727DD1ELL) - (v147 + v146) + 0x6FC3507E246C1170) ^ 0xC55E8AC4C688C50CLL;
  v149 = v148 ^ __ROR8__(v146, 61);
  v150 = (__ROR8__(v148, 8) + v149) ^ a1;
  v151 = ((__ROR8__(v150, 8) + (v150 ^ __ROR8__(v149, 61))) ^ 0x9B1C7427651E0F18) >> v9;
  STACK[0x1F98] = ((v134 ^ 0x6189CDC791AA4F61) & (v151 ^ ~v5 | 0xFFFFFFFFFFFFFF00) | (v151 ^ v5) & 0x86) ^ 0xAC0BD4F2D6DB187;
  return (*(STACK[0xF18] + 8 * a3))();
}

uint64_t sub_1001BFA7C()
{
  v2.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v2.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  v3.n128_u64[0] = 0xBEBEBEBEBEBEBEBELL;
  v3.n128_u64[1] = 0xBEBEBEBEBEBEBEBELL;
  v4.n128_u64[0] = 0x5F0000005F000000;
  v4.n128_u64[1] = 0x5F0000005F000000;
  return (*(v1 + 8 * (((v0 + 342152468) & 0xEB9B7FAC ^ 0x77FC) + v0)))(v2, vdupq_n_s32(0x69D5C71Bu), vdupq_n_s32(0xE9D5C711), v3, v4);
}

void sub_1001BFB70(_DWORD *a1)
{
  v1 = *a1 ^ (297845113 * (((a1 | 0xC2EBC11A) - (a1 & 0xC2EBC11A)) ^ 0xB5D8DD84));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1001BFCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, char a37)
{
  v42 = v40 ^ ((v40 ^ 0xFA3BE235) + 1173749927) ^ ((v40 ^ 0x22E2DD53) - 1657847871) ^ ((v40 ^ 0x5EFFEDFF) - 516812947) ^ 0xD25AA3A3 ^ ((v40 ^ 0xC6148E3A ^ (v39 + 5184)) + 2044276071);
  v43 = 0x5555555555555556 * (((v42 ^ 0x3086597A6524F7B7) + 0x4F79A6859ADB0849) ^ ((v42 ^ 0x714FF29A776F1963) - 0x714FF29A776F1963) ^ ((v42 ^ 0x41C9ABE08023501BLL) + 0x3E36541F7FDCAFE5)) - 0x2FD1361294D95DDELL;
  v44 = (v43 ^ 0x997BE03DA8DEA164) & (2 * (v43 & 0xDA7BE0BDA11F3268)) ^ v43 & 0xDA7BE0BDA11F3268;
  v45 = ((2 * (v43 ^ 0xAD8CE05EE8ECC5B4)) ^ 0xEFEE01C693E7EFB8) & (v43 ^ 0xAD8CE05EE8ECC5B4) ^ (2 * (v43 ^ 0xAD8CE05EE8ECC5B4)) & 0x77F700E349F3F7DCLL;
  v46 = v45 ^ 0x1011002148101044;
  v47 = (v45 ^ 0x63E600C200E1C380) & (4 * v44) ^ v44;
  v48 = ((4 * v46) ^ 0xDFDC038D27CFDF70) & v46 ^ (4 * v46) & 0x77F700E349F3F7D8;
  v49 = (v48 ^ 0x57D4008101C3D740) & (16 * v47) ^ v47;
  v50 = ((16 * (v48 ^ 0x202300624830208CLL)) ^ 0x7F700E349F3F7DC0) & (v48 ^ 0x202300624830208CLL) ^ (16 * (v48 ^ 0x202300624830208CLL)) & 0x77F700E349F3F7C0;
  v51 = (v50 ^ 0x7770002009337500) & (v49 << 8) ^ v49;
  v52 = (((v50 ^ 0x8700C340C0821CLL) << 8) ^ 0xF700E349F3F7DC00) & (v50 ^ 0x8700C340C0821CLL) ^ ((v50 ^ 0x8700C340C0821CLL) << 8) & 0x77F700E349F3F400;
  v53 = v51 ^ 0x77F700E349F3F7DCLL ^ (v52 ^ 0x7700004141F30000) & (v51 << 16);
  v54 = v43 ^ (2 * ((v53 << 32) & 0x77F700E300000000 ^ v53 ^ ((v53 << 32) ^ 0x49F3F7DC00000000) & (((v52 ^ 0xF700A2080023DCLL) << 16) & 0x77F700E300000000 ^ 0x7714000000000000 ^ (((v52 ^ 0xF700A2080023DCLL) << 16) ^ 0xE349F300000000) & (v52 ^ 0xF700A2080023DCLL))));
  v55 = ((v54 ^ 0x908CC1643AA75B3CLL) - 0x4BE170E85CE077AELL) ^ ((v54 ^ 0x926E88CD76444DEALL) - 0x4903394110036178);
  LODWORD(v54) = __CFADD__(3 * (v55 ^ ((v54 ^ 0xB491A9527E1BCB06) - 0x6FFC18DE185CE794)), 0x475AF465FE3FD3C6) + (((v55 ^ ((v54 ^ 0xB491A9527E1BCB06) - 0x6FFC18DE185CE794)) * 3uLL) >> 64) + 3 * ((__CFADD__(v54 ^ 0x908CC1643AA75B3CLL, 0xB41E8F17A31F8852) - 1) ^ (__CFADD__(v54 ^ 0x926E88CD76444DEALL, 0xB6FCC6BEEFFC9E88) - 1) ^ (__CFADD__(v54 ^ 0xB491A9527E1BCB06, 0x9003E721E7A3186CLL) - 1)) + 1263167679;
  LODWORD(v55) = 1012831759 * (((v37 | 0xBF9E92D5) - (v37 & 0xBF9E92D0)) ^ 0xAF0D845F);
  *(v41 - 136) = v54 - v55 - 303979249;
  *(v41 - 132) = (v39 + 30964) ^ v55;
  *(v41 - 144) = &a35;
  (*(v38 + 8 * (v39 ^ 0xE696)))(v41 - 144);
  *(v41 - 112) = &a35;
  *(v41 - 104) = &a37;
  *(v41 - 144) = v39 - 906386353 * (((v37 | 0xF5376DC9) - v37 + (v37 & 0xAC89230)) ^ 0xC436A0ED) + 9442;
  *(v41 - 128) = &a37;
  *(v41 - 120) = &a29;
  *(v41 - 136) = &a26;
  v56 = (*(v38 + 8 * (v39 + 40651)))(v41 - 144);
  return (*(v38 + 8 * v39))(v56);
}

uint64_t sub_1001C0258(uint64_t a1)
{
  v1 = 1022166737 * (((a1 | 0x547CFB0A1493691BLL) - (a1 | 0xAB8304F5EB6C96E4) - 0x547CFB0A1493691CLL) ^ 0x2AF68977AE838889);
  v2 = *(a1 + 12) + v1;
  v3 = *(a1 + 24) + v1 - 0x325684D086E80CAALL;
  v4 = v1 + *(a1 + 16) - 0x5D5B57A0758BFCLL;
  v5 = v4 < 0x2265D5F3;
  v6 = v3 < v4;
  if (v3 < 0x2265D5F3 != v5)
  {
    v6 = v5;
  }

  return (*(*(&off_1010A0B50 + (v2 ^ 0x5483)) + 8 * ((8304 * v6) ^ v2) - 810145054))();
}

uint64_t sub_1001C03A4()
{
  v7 = ((~v1 & 0xAD138B5 | v1 & 0xF52EC748) ^ 0x849E2EA5) * v3;
  *(v6 - 160) = v4 - v7 + 6178;
  *(v6 - 144) = 1148359551 - v7;
  *(v6 - 152) = v2;
  (*(v0 + 8 * (v4 ^ 0xD020)))(v6 - 160);
  *(v6 - 160) = v2;
  *(v6 - 152) = v5;
  *(v6 - 144) = (v4 - 417029301) ^ (297845113 * ((~v1 & 0x134D73D | v1 & 0xFECB28C0) ^ 0x7607CBA3));
  v8 = (*(v0 + 8 * (v4 + 44898)))(v6 - 160);
  return (*(v0 + 8 * v4))(v8);
}

uint64_t sub_1001C0624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, unsigned __int8 a13, unsigned __int8 a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17, unsigned __int8 a18, unsigned __int8 a19, unsigned __int8 a20, unsigned __int8 a21, unsigned __int8 a22, unsigned __int8 a23, unsigned __int8 a24, unsigned __int8 a25, unsigned __int8 a26, unsigned __int8 a27)
{
  v219 = v29;
  v220 = v28;
  v31 = *(v30 + 8 * (v27 - 12641)) - 1029677486;
  v32 = *(v31 + (a12 ^ 0x34));
  HIDWORD(v34) = v32 ^ 0x7E;
  LODWORD(v34) = ~v32 << 24;
  v33 = v34 >> 31;
  v35 = *(v30 + 8 * (v27 ^ 0x389D)) - 1254402002;
  v36 = *(v35 + ((a15 - ((2 * a15) & 0xF0) + 120) & ((v27 + 25227) + 4294926193) ^ 0x44));
  v37 = v30;
  v38 = *(v30 + 8 * (v27 - 13439)) - 189519290;
  v39 = *(v35 + (a23 ^ 0xA9));
  v40 = *(v37 + 8 * (v27 - 11596)) - 186923247;
  v41 = *(v31 + (a20 ^ 0x59));
  HIDWORD(v34) = v41 ^ 0x7E;
  LODWORD(v34) = ~v41 << 24;
  v42 = v34 >> 31;
  v43 = *(v31 + (a24 ^ 0x91));
  HIDWORD(v34) = v43 ^ 0x7E;
  LODWORD(v34) = ~v43 << 24;
  v44 = v34 >> 31;
  v45 = a19 ^ 0xC3;
  v46 = v45 - ((2 * v45) & 0x8E);
  v47 = -v45 ^ (68 - (a19 ^ 0x87)) ^ 0xF5361747;
  LOBYTE(v45) = *(v35 + (((a27 & 0x70 | 0x2F395208) ^ a27) & 0xD7 ^ 0xA7A0F3A9 ^ ((a27 & 0x70 | 0x2F395208) ^ a27 ^ 0x8080A170) & (a27 & 0x70 ^ 0xA7A0F348)));
  LODWORD(v35) = *(v35 + (v47 ^ (v46 - 181004473)) + 68) - 85;
  v48 = *(v40 + (a25 ^ 0xF9));
  v49 = *(v40 + (a17 ^ 0xA4));
  v50 = *(v40 + (a21 ^ 0x89));
  v51 = *(v31 + (a16 ^ 0xA6));
  v52 = (v35 - ((2 * v35) & 0x5A) + 1875662893) ^ 0x6FCC582D;
  v53 = *(v40 + (a13 ^ 0x48));
  LOBYTE(v40) = *(v38 + (a22 ^ 0x4CLL));
  v54 = *(v38 + (a14 ^ 0x90));
  LOBYTE(v35) = *(v38 + (a26 ^ 0xA3));
  v55 = (v52 + ((v49 ^ 0xB0) << 16) + ((v51 << 17) & 0x1000000 | (v51 << 25))) ^ (((((2 * a18) ^ 0x84) - 125) ^ *(v38 + a18)) << 8) ^ 0x1C00A600;
  v56 = v55 - ((2 * v55) & 0x8AA6B66A) + 1163090741;
  v57 = *(v37 + 8 * (v27 - 13043)) - 1542936526;
  v58 = *(v37 + 8 * (v27 ^ 0x35EA)) - 603470895;
  v59 = *(v57 + 4 * (BYTE2(v56) ^ 0xCEu)) + 1364911476;
  HIDWORD(v34) = v59;
  LODWORD(v34) = v59;
  v60 = *(v37 + 8 * (v27 ^ 0x33EF)) - 1441697298;
  v61 = *(v37 + 8 * (v27 ^ 0x3755)) - 1615802202;
  LODWORD(v34) = (v34 >> 4) & 0xF03FFFFF ^ __ROR4__(v59, 6) ^ 0x4C3169A9;
  HIDWORD(v34) = v34;
  v62 = *(v58 + 4 * (v33 ^ 0x38u)) ^ *(v60 + 4 * (v40 ^ (((2 * a22) ^ 0x1C) + ((2 * ((2 * a22) ^ 0x1C) + 6) & 0x80) + 67) ^ 0xA8)) ^ (*(v61 + 4 * ((v45 - 85) ^ 0x49u)) - 474072217) ^ v59 ^ (16 * (v34 >> 26));
  LODWORD(v40) = *(v58 + 4 * (HIBYTE(v56) ^ 0xCF));
  LOBYTE(v59) = v35 ^ (((2 * a26) ^ 0xC2) + ((2 * ((2 * a26) ^ 0xC2) + 6) & 0x80) + 67) ^ 0xF2;
  LODWORD(v40) = (v40 ^ 0x5B709737) - (v40 ^ 0x5D4C8C1C) + (v40 ^ 0x5B709737) + (((v40 ^ 0x5B709737) - (v40 ^ 0x5D4C8C1C) - (((v40 ^ 0x5B709737) - (v40 ^ 0x5D4C8C1C)) ^ 0xFFFFFFFE)) ^ 0xFFFFFFFC);
  LODWORD(v35) = *(v57 + 4 * (v50 ^ 0x26)) + 1364911476;
  LODWORD(v37) = v35 ^ *(v60 + 4 * v59) ^ (16 * v35) ^ (v35 << 6) ^ (*(v61 + 4 * ((v36 - 85) ^ 5u)) - 474072217);
  v63 = *(v57 + 4 * (v48 ^ 0x22)) + 1364911476;
  v64 = v63 ^ *(v58 + 4 * (v42 ^ 0x26u)) ^ (16 * v63) ^ (v63 << 6) ^ *(v60 + 4 * ((v54 ^ (((2 * a14) ^ 0xA4) + ((2 * ((2 * a14) ^ 0xA4) + 6) & 0x80) + 67)) ^ 0xF8u)) ^ (*(v61 + 4 * (v56 ^ 0x1Bu)) - 474072217);
  v65 = *(v57 + 4 * (v53 ^ 0x93)) + 1364911476;
  LODWORD(v35) = *(v58 + 4 * (v44 ^ 0xA5u)) ^ 0x5D4C8C1C;
  v66 = *(v60 + 4 * (BYTE1(v56) ^ 0xA2u)) ^ (16 * v65) ^ (v65 << 6) ^ (*(v61 + 4 * ((v39 - 85) ^ 0xF4u)) - 474072217) ^ (v65 + v35 - 2 * (v65 & v35));
  v67 = (v66 & 0x73EA2C7D ^ 0x558C4713) & (v66 & 0x8C15D382 ^ 0x77EBBD7F) | v66 & 0x88119080;
  v68 = v37 ^ v40;
  LODWORD(v48) = *(v57 + 4 * (((v37 ^ v40) >> 16) ^ 0x5Fu)) + 1364911476;
  v69 = *(v60 + 4 * (BYTE1(v64) ^ 0x67u)) ^ v48 ^ *(v58 + 4 * (HIBYTE(v62) ^ 0xB4)) ^ (16 * v48) ^ (v48 << 6) ^ (*(v61 + 4 * (((v66 & 0x7D ^ 0x13) & (v66 & 0x82 ^ 0x7F) | v66 & 0x80) ^ 0x16u)) - 474072217);
  v70 = v37 ^ ~v40;
  v71 = v64 ^ 0x9FF5C52A;
  v72 = *(v58 + 4 * HIBYTE(v70));
  v73 = v72 & 0x2000;
  if ((((((*(v57 + 4 * BYTE2(v71)) - 6796) << 6) ^ (16 * (*(v57 + 4 * BYTE2(v71)) - 6796))) ^ 0xB686 ^ (*(v57 + 4 * BYTE2(v71)) - ((2 * (*(v57 + 4 * BYTE2(v71)) - 6796)) & 0x6D0C) - 25606)) & v72 & 0x2000) != 0)
  {
    v73 = -v73;
  }

  v74 = *(v60 + 4 * (BYTE1(v67) ^ 0x1Cu)) ^ v72 & 0xFFFFDFFF ^ (v73 + (((*(v57 + 4 * BYTE2(v71)) + 1364911476) << 6) ^ (16 * (*(v57 + 4 * BYTE2(v71)) + 1364911476)) ^ 0x6338B686 ^ (*(v57 + 4 * BYTE2(v71)) - ((2 * (*(v57 + 4 * BYTE2(v71)) + 1364911476)) & 0xC6716D0C) - 1265394694))) ^ (*(v61 + 4 * (v62 ^ 0x96u)) - 474072217);
  v75 = *(v57 + 4 * (BYTE2(v67) ^ 0x9Cu)) + 1364911476;
  v76 = *(v60 + 4 * (BYTE1(v62) ^ 0xE2u)) ^ *(v58 + 4 * HIBYTE(v71)) ^ v75 ^ (16 * v75) ^ (v75 << 6) ^ (*(v61 + 4 * (v68 ^ 0x8Du)) - 474072217);
  v77 = *(v57 + 4 * (BYTE2(v62) ^ 0x14u)) + 1364911476;
  v78 = v77 ^ *(v58 + 4 * (HIBYTE(v67) ^ 0xC9)) ^ (16 * v77) ^ (v77 << 6) ^ *(v60 + 4 * (HIBYTE(v68) ^ 0xC8u)) ^ (*(v61 + 4 * (v64 ^ 0x31u)) - 474072217);
  BYTE2(v77) = BYTE2(v69) ^ 0xAF;
  v79 = *(v57 + 4 * (BYTE2(v74) ^ 0xD3u)) + 1364911476;
  v80 = *(v57 + 4 * (BYTE2(v76) ^ 0x87u));
  v81 = v79 ^ *(v58 + 4 * ((v69 ^ 0x5AAFF1E0u) >> 24)) ^ (16 * v79) ^ (v79 << 6) ^ *(v60 + 4 * (BYTE1(v76) ^ 0x70u)) ^ (*(v61 + 4 * (v78 ^ 0xC0u)) - 474072217);
  v82 = (v80 + 1364911476) ^ *(v58 + 4 * (HIBYTE(v74) ^ 0x83)) ^ (16 * (v80 + 1364911476)) ^ ((v80 + 1364911476) << 6) ^ *(v60 + 4 * (BYTE1(v78) ^ 0xB8u)) ^ (*(v61 + 4 * (v69 ^ 0xE0u)) - 474072217);
  v83 = *(v57 + 4 * (BYTE2(v78) ^ 0x7Eu)) + 1364911476;
  v84 = *(v58 + 4 * (HIBYTE(v76) ^ 0x67)) ^ v83 ^ (16 * v83) ^ (v83 << 6) ^ *(v60 + 4 * (BYTE1(v69) ^ 0x53u)) ^ 0x2F0B0879;
  v85 = (v84 - ((2 * v84) & 0xA6D28DFA) - 748075267) ^ (*(v61 + 4 * (v74 ^ 0xE8u)) - 474072217);
  v86 = *(v57 + 4 * (BYTE2(v77) ^ 0xCEu)) + 1364911476;
  v87 = (v86 << 6) ^ (16 * v86);
  v88 = *(v58 + 4 * (HIBYTE(v78) ^ 0xDD)) ^ v86;
  v89 = (*(v61 + 4 * (v76 ^ 0x40u)) - 474072217) ^ 0xC135C27E;
  v90 = *(v60 + 4 * (BYTE1(v74) ^ 0x4Au)) ^ 0x1CE25F4E ^ ((v87 & 0xA13E1400 ^ v88 & 0xA13E1401 ^ 0xFEC1FBFE) & (v88 & 0x5EC1EBFE ^ 0xE18015CA ^ v87 & 0x5EC1EBF0) | (v87 & 0xA13E1400 ^ v88 & 0xA13E1401) & 0xFF00FF);
  v91 = v90 + v89 - 2 * (v90 & v89);
  v92 = v81 ^ 0xAA4A77ED;
  v93 = *(v57 + 4 * (BYTE2(v82) ^ 0x60u)) + 1364911476;
  v94 = v93 ^ *(v58 + 4 * (HIBYTE(v81) ^ 0xB0)) ^ (16 * v93) ^ (v93 << 6) ^ *(v60 + 4 * (BYTE1(v85) ^ 0x85u)) ^ (*(v61 + 4 * (v91 ^ 0x1Bu)) - 474072217);
  LOWORD(v81) = v82 ^ 0xE661;
  v95 = *(v57 + 4 * (BYTE2(v85) ^ 0x24u)) + 1364911476;
  v96 = v95 ^ *(v58 + 4 * (HIBYTE(v82) ^ 0x48)) ^ (16 * v95) ^ (v95 << 6) ^ *(v60 + 4 * (BYTE1(v91) ^ 0xA2u)) ^ (*(v61 + 4 * (v92 ^ 0xFDu)) - 474072217);
  v97 = *(v57 + 4 * ((v91 ^ 0xCE001B) >> 16));
  v98 = (v97 + 1364911476) ^ *(v58 + 4 * (HIBYTE(v85) ^ 0xA8)) ^ (16 * (v97 + 1364911476)) ^ ((v97 + 1364911476) << 6) ^ *(v60 + 4 * (BYTE1(v92) ^ 0x86u)) ^ (*(v61 + 4 * v81) - 474072217);
  v99 = *(v57 + 4 * (BYTE2(v92) ^ 0x58u)) + 1364911476;
  v100 = __ROR4__(*(v58 + 4 * (HIBYTE(v91) ^ 0xCF)) ^ *(v60 + 4 * BYTE1(v81)) ^ v99 ^ (16 * v99) ^ (v99 << 6) ^ 0x6E61A7FF, 7);
  v101 = *(v61 + 4 * (v85 ^ 0x3Cu));
  v102 = (v101 ^ 0x2C63528E) & (2 * (v101 & 0xA86A5B2F)) ^ v101 & 0xA86A5B2F;
  v103 = ((2 * (v101 ^ 0x7C6372D6)) ^ 0xA81253F2) & (v101 ^ 0x7C6372D6) ^ (2 * (v101 ^ 0x7C6372D6)) & 0xD40929F8;
  v104 = (v103 ^ 0x800001F0) & (4 * v102) ^ v102;
  v105 = ((4 * (v103 ^ 0x54092809)) ^ 0x5024A7E4) & (v103 ^ 0x54092809) ^ (4 * (v103 ^ 0x54092809)) & 0xD40929F8;
  v106 = (v105 ^ 0x500021E0) & (16 * v104) ^ v104;
  v107 = ((16 * (v105 ^ 0x84090819)) ^ 0x40929F90) & (v105 ^ 0x84090819) ^ (16 * (v105 ^ 0x84090819)) & 0xD40929D0;
  v108 = v106 ^ 0xD40929F9 ^ (v107 ^ 0x40000900) & (v106 << 8);
  v110 = __ROR4__(v100 ^ 0x3616483C, 25);
  v109 = ((v101 ^ (2 * ((v108 << 16) & 0x54090000 ^ v108 ^ ((v108 << 16) ^ 0x29F90000) & (((v107 ^ 0x94092069) << 8) & 0x54090000 ^ 0x54000000 ^ (((v107 ^ 0x94092069) << 8) ^ 0x9290000) & (v107 ^ 0x94092069)))) ^ 0x3B39E8E5) + ((2 * (((v101 ^ 0x591EDD6A) + 1903461957) ^ v101 ^ ((v101 ^ 0x2E9A5A38) + 116392215) ^ ((v101 ^ 0x1FCEDCF4) + 933529563) ^ ((v101 ^ 0x3FDFFF76) + 397780058))) & 0x76A7C070 ^ 0x26234020)) ^ v110;
  v111 = *(v57 + 4 * (BYTE2(v96) ^ 0x26u)) + 1364911476;
  v112 = v111 ^ *(v58 + 4 * (HIBYTE(v94) ^ 0x93)) ^ (16 * v111) ^ (v111 << 6) ^ *(v60 + 4 * (BYTE1(v98) ^ 0x13u)) ^ (*(v61 + 4 * ((((v101 ^ (2 * v108) ^ 0xE5) + ((2 * (((v101 ^ 0x6A) + 69) ^ v101 ^ ((v101 ^ 0x38) + 23) ^ ((v101 ^ 0xF4) - 37) ^ ((v101 ^ 0x76) + 90))) & 0x70 ^ 0x20)) ^ v110) ^ 0x5Fu)) - 474072217);
  v113 = *(v57 + 4 * (BYTE2(v98) ^ 0xC1u)) + 1364911476;
  v114 = v113 ^ *(v58 + 4 * (HIBYTE(v96) ^ 0xA0)) ^ (16 * v113) ^ (v113 << 6) ^ (*(v61 + 4 * (v94 ^ 0x1Au)) - 474072217);
  v115 = v109 ^ 0x6372D944;
  v116 = v114 ^ *(v60 + 4 * ((v109 ^ 0xD944) >> 8));
  v117 = *(v57 + 4 * (BYTE2(v109) ^ 0xBCu)) + 1364911476;
  v118 = v117 ^ *(v58 + 4 * (HIBYTE(v98) ^ 0x8F)) ^ (16 * v117) ^ (v117 << 6) ^ *(v60 + 4 * (BYTE1(v94) ^ 0x3Eu)) ^ (*(v61 + 4 * (v96 ^ 0xE2u)) - 474072217);
  v119 = *(v57 + 4 * (BYTE2(v94) ^ 0xE7u)) + 1364911476;
  v120 = *(v60 + 4 * (BYTE1(v96) ^ 0x85u)) ^ v119 ^ *(v58 + 4 * HIBYTE(v115)) ^ (16 * v119) ^ (v119 << 6) ^ (*(v61 + 4 * (v98 ^ 0xC3u)) - 474072217);
  v121 = *(v57 + 4 * (BYTE2(v116) ^ 0x23u)) + 1364911476;
  v122 = *(v60 + 4 * (BYTE1(v118) ^ 0x2Eu)) ^ *(v58 + 4 * (HIBYTE(v112) ^ 0xA9)) ^ v121 ^ (16 * v121) ^ (v121 << 6) ^ (*(v61 + 4 * (v120 ^ 0xAAu)) - 474072217);
  v123 = *(v58 + 4 * (HIBYTE(v116) ^ 0x72));
  v124 = *(v57 + 4 * (BYTE2(v118) ^ 0x43u)) + 1364911476;
  v125 = v124 ^ (v124 << 6) ^ (16 * v124) ^ *(v60 + 4 * (BYTE1(v120) ^ 0x13u)) ^ (*(v61 + 4 * (v112 ^ 0xA9u)) - 474072217) ^ ((((v123 ^ 0x29F27D68) - (v123 ^ 0x5D4C8C1C)) ^ 0xFFFFFFF8) + (v123 ^ 0x29F27D68));
  v126 = *(v57 + 4 * (BYTE2(v120) ^ 0x1Bu)) + 1364911476;
  v127 = v126 ^ *(v58 + 4 * (HIBYTE(v118) ^ 0x86)) ^ (16 * v126) ^ (v126 << 6) ^ *(v60 + 4 * (BYTE1(v112) ^ 0xB8u)) ^ (*(v61 + 4 * (v116 ^ 0xD2u)) - 474072217);
  v128 = (v116 >> 8) & 0xEF ^ 0xDDAD20A2 ^ ((v116 >> 8) & 0x10 | 0xDDAD20C2);
  v129 = *(v57 + 4 * (BYTE2(v112) ^ 0xA4u)) + 1364911476;
  v130 = v129 ^ *(v58 + 4 * (HIBYTE(v120) ^ 0xFB)) ^ (16 * v129) ^ (v129 << 6) ^ *(v60 + 4 * v128);
  v131 = *(v61 + 4 * (v118 ^ 0x88u)) - 474072217;
  v132 = v130 ^ 0xFC624E84;
  if ((v131 & 0x40000000 & ~v130) != 0)
  {
    v133 = -(v131 & 0x40000000);
  }

  else
  {
    v133 = v131 & 0x40000000;
  }

  v134 = (v133 + v132) ^ v131 & 0xBFFFFFFF;
  v135 = v122 ^ 0x27DAB293;
  v136 = HIBYTE(v122) ^ 0xE8;
  v137 = *(v57 + 4 * (BYTE2(v125) ^ 0xDAu)) + 1364911476;
  v138 = v137 ^ *(v58 + 4 * v136) ^ (16 * v137) ^ (v137 << 6) ^ *(v60 + 4 * (BYTE1(v127) ^ 0xFCu)) ^ (*(v61 + 4 * (v134 ^ 0x7Eu)) - 474072217);
  v139 = *(v57 + 4 * (BYTE2(v127) ^ 0x74u)) + 1364911476;
  v140 = v139 ^ *(v58 + 4 * (HIBYTE(v125) ^ 0xBC)) ^ (16 * v139) ^ (v139 << 6) ^ *(v60 + 4 * (BYTE1(v134) ^ 0xFCu)) ^ (*(v61 + 4 * v135) - 474072217);
  v141 = *(v57 + 4 * (BYTE2(v134) ^ 0xACu)) + 1364911476;
  v142 = v141 ^ *(v58 + 4 * (HIBYTE(v127) ^ 0x1C)) ^ (16 * v141) ^ (v141 << 6) ^ *(v60 + 4 * BYTE1(v135)) ^ (*(v61 + 4 * (v125 ^ 0xC4u)) - 474072217);
  v143 = *(v57 + 4 * ((-BYTE2(v135) ^ (206 - (BYTE2(v135) ^ 0xCE)) ^ (BYTE2(v135) - ((v135 >> 15) & 0x54) + 1192696106) ^ 0x4717192A) + 206)) + 1364911476;
  v144 = *(v58 + 4 * (HIBYTE(v134) ^ 0x60)) ^ v143 ^ (16 * v143) ^ (v143 << 6) ^ *(v60 + 4 * (BYTE1(v125) ^ 3u)) ^ 0xFDF08A53;
  v145 = ((v144 & 0x575CFE8F ^ 0x63079791) & (v144 & 0xA8A30170 ^ 0xFFDDFFCF) | v144 & 0x88A00060) ^ (*(v61 + 4 * (v127 ^ 0xC9u)) - 474072217);
  v146 = *(v61 + 4 * (((v144 & 0x8F ^ 0x91) & (v144 & 0x70 ^ 0xCF) | v144 & 0x60) ^ (*(v61 + 4 * (v127 ^ 0xC9u)) + 103) ^ 0x23));
  v147 = ((v146 ^ 0x592FCC74) + 1900386139) ^ v146 ^ ((v146 ^ 0x488E74FE) + 1625567185) ^ ((v146 ^ 0x31CFE3A4) + 430291083) ^ ((v146 ^ 0x37FBFFFE) + 529638610);
  v148 = v146 & 0xA86A5B2F ^ 0x94989221 ^ (v146 ^ 0x2C625B0E) & (2 * (v146 & 0xA86A5B2F));
  v149 = (2 * (v146 ^ 0x3CF2C90E)) & 0x94989220 ^ 0x94889221 ^ ((2 * (v146 ^ 0x3CF2C90E)) ^ 0x29312442) & (v146 ^ 0x3CF2C90E);
  v150 = (4 * v148) & 0x90989020 ^ v148 ^ ((4 * v148) ^ 0x52624884) & v149;
  v151 = (4 * v149) & 0x94989220 ^ 0x84989221 ^ ((4 * v149) ^ 0x52624884) & v149;
  v152 = v150 ^ (16 * v150) & 0x94989220 ^ ((16 * v150) ^ 0x49892210) & v151 ^ 0x10880200;
  v153 = (16 * v151) & 0x94989200 ^ 0x94109021 ^ ((16 * v151) ^ 0x49892210) & v151;
  v154 = (v152 << 8) & 0x94989200 ^ v152 ^ ((v152 << 8) ^ 0x98922100) & v153;
  v155 = v146 ^ (2 * ((v154 << 16) & 0x14980000 ^ v154 ^ ((v154 << 16) ^ 0x12210000) & ((v153 << 8) & 0x14980000 ^ 0x4080000 ^ ((v153 << 8) ^ 0x18920000) & v153)));
  v156 = *(v57 + 4 * (BYTE2(v140) ^ 0x3Bu)) + 1364911476;
  v157 = v156 ^ *(v58 + 4 * (HIBYTE(v138) ^ 0x44)) ^ (16 * v156) ^ (v156 << 6) ^ *(v60 + 4 * ((v142 ^ 0x8292) >> 8)) ^ (((2 * ((v155 ^ 0x3B289F55) & ((2 * v147) & 0x76A7C070 ^ 0x7D59BF8F) ^ v155 & 0x5B7AFFAF)) ^ 0x36513E0A) + ((2 * v147) & 0x76A7C070 ^ 0x9D0BDF75 ^ v155));
  v158 = *(v57 + 4 * (BYTE2(v142) ^ 0xEEu)) + 1364911476;
  v159 = v158 ^ *(v58 + 4 * (HIBYTE(v140) ^ 0xDE)) ^ (16 * v158) ^ (v158 << 6) ^ (*(v61 + 4 * (v138 ^ 0x83u)) - 474072217);
  v160 = v145 ^ 0xC0BA7038;
  v161 = v159 ^ *(v60 + 4 * ((v145 ^ 0x7038) >> 8));
  v162 = *(v57 + 4 * (BYTE2(v145) ^ 0x74u)) + 1364911476;
  v163 = v162 ^ *(v58 + 4 * (HIBYTE(v142) ^ 0xB9)) ^ (16 * v162) ^ (v162 << 6) ^ *(v60 + 4 * (BYTE1(v138) ^ 0xF1u)) ^ (*(v61 + 4 * (v140 ^ 0xC2u)) - 474072217);
  if ((v140 & 0x2000) != 0)
  {
    v164 = -32;
  }

  else
  {
    v164 = 32;
  }

  v165 = *(v57 + 4 * (BYTE2(v138) ^ 0xCu)) + 1364911476;
  v166 = v165 ^ (v165 << 6) ^ (16 * v165) ^ *(v60 + 4 * (((BYTE1(v140) ^ 0x81) + v164) ^ 0x82u)) ^ (*(v61 + 4 * (v142 ^ 0x92u)) - 474072217) ^ 0xEECBC03 ^ *(v58 + 4 * HIBYTE(v160));
  v167 = *(v57 + 4 * (BYTE2(v161) ^ 0x83u)) + 1364911476;
  v168 = (4 * v167) & 0x20;
  if ((v168 & v167) != 0)
  {
    v168 = -v168;
  }

  v169 = *(v61 + 4 * (v166 ^ 0x1Bu));
  v170 = (v169 ^ 0x6695A8E) & (2 * (v169 & 0xA86A5B2F)) ^ v169 & 0xA86A5B2F;
  v171 = ((2 * (v169 ^ 0x566DDCCC)) ^ 0xFC0F0FC6) & (v169 ^ 0x566DDCCC) ^ (2 * (v169 ^ 0x566DDCCC)) & 0xFE0787E2;
  v172 = (v171 ^ 0xE00305C0) & (4 * v170) ^ v170;
  v173 = ((4 * (v171 ^ 0x2008021)) ^ 0xF81E1F8C) & (v171 ^ 0x2008021) ^ (4 * (v171 ^ 0x2008021)) & 0xFE0787E0;
  v174 = (v173 ^ 0xF8060780) & (16 * v172) ^ v172;
  v175 = ((16 * (v173 ^ 0x6018063)) ^ 0xE0787E30) & (v173 ^ 0x6018063) ^ (16 * (v173 ^ 0x6018063)) & 0xFE0787E0;
  v176 = v174 ^ 0xFE0787E3 ^ (v175 ^ 0xE0000600) & (v174 << 8);
  v177 = *(v60 + 4 * (BYTE1(v163) ^ 0x8Cu)) ^ v167 ^ *(v58 + 4 * (HIBYTE(v157) ^ 0x4C)) ^ (16 * ((v168 + v167) ^ (4 * v167) & 0xFFFFFFDF)) ^ ((((4 * ((v176 << 16) & 0xFC07FFFF ^ v176 ^ ((v176 << 16) ^ 0x5A10000) & (((v175 ^ 0x1E0781C3) << 8) & 0x3E070000 ^ (((v175 ^ 0x1E0781C3) << 8) ^ 0x7870000) & (v175 ^ 0x1E0781C3) ^ 0x18000000))) ^ (2 * v169)) & 0x76A7C070 ^ 0x30868050) + (v169 ^ ((v169 ^ 0xD29220D6) + 2063105017) ^ ((v169 ^ 0xF85C3A6E) + 1345741121) ^ ((v169 ^ 0x2A44186) - 1429333335) ^ ((v169 ^ 0x7FFFFFEF) - 678058814) ^ 0x6CC644E9));
  v178 = *(v57 + 4 * ((v163 ^ 0x2BCC2E70u) >> 16)) + 1364911476;
  v179 = v178 ^ *(v58 + 4 * (HIBYTE(v161) ^ 0xE9)) ^ (16 * v178) ^ (v178 << 6) ^ *(v60 + 4 * BYTE1(v166)) ^ (*(v61 + 4 * (v157 ^ 0x20u)) - 474072217);
  v180 = *(v57 + 4 * BYTE2(v166)) + 1364911476;
  v181 = v180 ^ (v180 << 6) ^ (16 * v180) ^ *(v58 + 4 * ((v163 ^ 0x2BCC2E70u) >> 24)) ^ (*(v61 + 4 * (v161 ^ 0x7Bu)) - 474072217) ^ *(v60 + 4 * (BYTE1(v157) ^ 0x2Du));
  v182 = *(v57 + 4 * (BYTE2(v157) ^ 0x19u)) + 1364911476;
  v183 = *(v58 + 4 * HIBYTE(v166));
  v184 = v177 ^ 0x3C079F08;
  v185 = *(v60 + 4 * (BYTE1(v161) ^ 0x53u));
  v186 = v182 ^ v183 ^ (16 * v182) ^ (v182 << 6);
  v187 = ((v185 ^ (-1917289573 - (((v185 ^ 0x38544A58) - 945048152) ^ ((v185 ^ 0x484BB4D0) - 1212921040) ^ ((v185 ^ 0x2587AED) - 39353069))) ^ 0x72478465 ^ ((v186 ^ 0x5D4C8C1C) - (v185 ^ 0x2F0B0879 ^ v186))) + (v186 ^ 0x5D4C8C1C)) ^ (*(v61 + 4 * (v163 ^ 0x70u)) - 474072217);
  v188 = *(&off_1010A0B50 + v27 - 13684) - 1250206295;
  v189 = *(&off_1010A0B50 + v27 - 11821) - 1467806938;
  v190 = *(&off_1010A0B50 + (v27 ^ 0x3517)) - 298485674;
  v191 = *(&off_1010A0B50 + (v27 ^ 0x2F20)) - 946488611;
  v192 = *&v191[4 * (v187 ^ 0x68)] ^ 0xDEEEFB28;
  v193 = ((v179 ^ 0x6C25B7EA) >> (v181 & 0x10) >> (v181 & 0x10 ^ 0x10));
  v194 = *&v190[4 * (BYTE1(v181) ^ 0x40)] + 1255631348;
  v195 = *&v189[4 * ((v177 ^ 0x3C079F08) >> 24)] ^ v193 ^ *&v188[4 * (v193 ^ 0xB8)] ^ v194 ^ (v194 >> 4) & 0x31797C6 ^ v192 ^ (2 * v192) & 0xAF26D9E;
  v196 = *&v191[4 * (v177 ^ 0x9B)] ^ 0xC756D246;
  v197 = *&v190[4 * (BYTE1(v187) ^ 0xA9)] + 1255631348;
  v198 = *&v188[4 * (BYTE2(v181) ^ 0xF0)] ^ BYTE2(v181) ^ *&v189[4 * (HIBYTE(v179) ^ 0xAE)] ^ v197 ^ v196 ^ (v197 >> 4) & 0x31797C6 ^ (2 * v196) & 0xAF26D9E;
  v199 = *&v191[4 * (v179 ^ 0x79)];
  v200 = *&v188[4 * (BYTE2(v187) ^ 0xB6)];
  v201 = BYTE2(v184);
  LODWORD(v188) = *&v188[4 * (BYTE2(v184) ^ 0xB8)];
  v202 = HIBYTE(v187) ^ 0xA4;
  v203 = *&v190[4 * BYTE1(v184)] + 1255631348;
  v204 = v200 ^ BYTE2(v187) ^ *&v189[4 * (HIBYTE(v181) ^ 0xFE)] ^ v203 ^ v199 ^ (v203 >> 4) & 0x31797C6 ^ (2 * ((v199 & 0x7A86C930 ^ 0x52824820) + (v199 ^ 0x2C3CA1DA)));
  v205 = *&v189[4 * v202];
  LODWORD(v189) = v201 ^ v188 ^ 0x368AA8E2;
  v206 = ((((v205 ^ v201 ^ v188 ^ 0x639113DF) - v189) ^ ((v205 ^ 0x551BBB3D) - (v205 ^ 0x551BBB3D ^ (v189 - (v205 ^ v201 ^ v188 ^ 0x639113DF)))) ^ 0x178A3DF ^ (v189 - (v205 ^ v201 ^ v188 ^ 0x639113DF) - ((2 * (v189 - (v205 ^ v201 ^ v188 ^ 0x639113DF))) & 0x2F147BE) + 24683487)) + (v205 ^ 0x551BBB3D)) ^ -(v205 ^ 0x551BBB3D);
  v207 = ((2 * ((v206 ^ 0x74A8B3CA) & v189 ^ (v201 ^ v188) & 0x74A8B3CA)) ^ 0x69114184) + ((v189 - 2 * (v189 & 0x3F5AEE5D ^ (v201 ^ v188) & 0xC) + 1062923857) ^ 0x3F5AEE51 ^ v206);
  v208 = *&v190[4 * (BYTE1(v179) ^ 0x91)] + 1255631348;
  LODWORD(v191) = *&v191[4 * (v181 ^ 0x90)] ^ 0x790003A9;
  v209 = v191 ^ v208 ^ (2 * v191) & 0xAF26D9E ^ (v208 >> 4) & 0x31797C6 ^ v207;
  v210 = *(&off_1010A0B50 + (v27 ^ 0x3099)) - 995176438;
  v211 = v210[HIBYTE(v204) ^ 0x79];
  v219[8] = ((v211 >> 2) | (v211 << 6)) ^ 0x15 ^ (((v211 >> 2) | (v211 << 6)) >> 1) & 0x39;
  v212 = *(&off_1010A0B50 + v27 - 13573) - 1076433522;
  v219[5] = (v212[BYTE2(v198) ^ 0x74] - 66) ^ (32 * (v212[BYTE2(v198) ^ 0x74] - 66)) ^ (8 * (v212[BYTE2(v198) ^ 0x74] - 66)) ^ 4;
  v213 = *(&off_1010A0B50 + v27 - 14983) - 1658694658;
  v219[3] = v195 ^ 0x75 ^ v213[v195 ^ 0xF0];
  v214 = *(&off_1010A0B50 + v27 - 14871) - 1173809170;
  v219[6] = BYTE1(v198) ^ 0x62 ^ v214[BYTE1(v198) ^ 0xE7];
  LOBYTE(v211) = v212[BYTE2(v195) ^ 0xCBLL] - 66;
  v219[1] = (((32 * v211) ^ (8 * v211)) + v211 - 2 * (((32 * v211) ^ (8 * v211)) & v211)) ^ 0x77;
  v215 = v210[HIBYTE(v209) ^ 0x2ELL];
  v219[12] = ((v215 >> 2) | (v215 << 6)) ^ 0xE2 ^ (((v215 >> 2) | (v215 << 6)) >> 1) & 0x39;
  v219[2] = BYTE1(v195) ^ 0x68 ^ v214[BYTE1(v195) ^ 0x2BLL];
  v216 = v210[(HIBYTE(v195) ^ 0xDB) - ((2 * (HIBYTE(v195) ^ 0xDB)) & 0x178) + 188];
  *v219 = ((v216 >> 2) | (v216 << 6)) ^ (((v216 >> 2) | (v216 << 6)) >> 1) & 0x39 ^ 0x1E;
  v219[7] = v198 ^ 0x9A ^ v213[v198 ^ 0xE0];
  LOBYTE(v185) = v212[BYTE2(v209) ^ 0x12] - 66;
  v219[13] = v185 ^ (8 * v185) ^ ((32 * v185) | 5) ^ 0x9D;
  LOBYTE(v185) = v213[v209 ^ 0xC8] ^ v209;
  v219[15] = (-(v185 ^ 0xCC) ^ (80 - (v185 ^ 0x9C)) ^ ((v185 ^ 0xCC) - ((2 * (v185 ^ 0xCC)) & 0xCC) + 102) ^ 0x66) + 80;
  v219[10] = BYTE1(v204) ^ 0xB0 ^ v214[BYTE1(v204) ^ 0x9CLL];
  v217 = v210[HIBYTE(v198) ^ 0x9DLL];
  v219[4] = ((v217 >> 2) | (v217 << 6)) ^ 0x8E ^ (((v217 >> 2) | (v217 << 6)) >> 1) & 0x39;
  LOBYTE(v217) = v212[BYTE2(v204) ^ 9] - 66;
  v219[9] = v217 ^ (8 * v217) ^ ((32 * v217) | 0x12) ^ 0xD;
  v219[14] = BYTE1(v209) ^ v214[BYTE1(v209) ^ 0x71] ^ 0xC3;
  v219[11] = v204 ^ 0xB6 ^ v213[v204 ^ 0xB8];
  return (*(v220 + 8 * v27))(a1);
}

uint64_t sub_1001C249C(uint64_t a1, unsigned int a2)
{
  v11 = v6 < a2;
  *(v9 + v8) = *(v4 + (v8 & 0xF)) ^ *(v2 + v8) ^ *(v3 + (v8 & 0xF)) ^ (13 * (v8 & 0xF)) ^ *((v8 & 0xF) + v5 + 6);
  if (v11 == ((v7 - 14161) ^ 0x26AC) + v8 > 0x557CF656)
  {
    v11 = v8 - 1434252886 < v6;
  }

  return (*(v10 + 8 * ((58233 * v11) ^ v7)))();
}

uint64_t sub_1001C2764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62, int a63)
{
  LODWORD(STACK[0x278]) = v70;
  LODWORD(STACK[0x3A8]) = a6;
  LODWORD(STACK[0x3AC]) = v69;
  LODWORD(STACK[0x2F0]) = a7;
  LODWORD(STACK[0x31C]) = a68;
  LOWORD(STACK[0x236]) = a67;
  LOWORD(STACK[0x292]) = v71;
  LODWORD(STACK[0x27C]) = a61;
  LOWORD(STACK[0x38E]) = a64;
  return (*(v72 + 8 * (v68 ^ 0xDC65CCC9 ^ (50726 * (v68 < 0x36EF8028)))))();
}

uint64_t sub_1001C2880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, int a12, int a13)
{
  v16 = 353670337 * ((~&a11 & 0x153A504A | &a11 & 0xEAC5AFB4) ^ 0xA11BA877);
  a11 = (*(v15 + 7) + 103) ^ v16;
  a13 = v13 - v16 + 26893;
  v17 = (*(v14 + 8 * (v13 + 33973)))(&a11);
  return (*(v14 + 8 * (((a12 == -371865839) * (11 * (v13 ^ 0x4A7B) + 22454)) ^ v13)))(v17);
}

uint64_t sub_1001C292C(uint64_t result)
{
  v1 = *(result + 8) ^ (17902189 * ((2 * (result & 0x1ECD37E3AD34C1EELL) - result - 0x1ECD37E3AD34C1EFLL) ^ 0x25726BC9DC842801));
  if ((v1 & 0x400000) != 0)
  {
    v2 = -2014549262;
  }

  else
  {
    v2 = -2014549278;
  }

  if ((v1 & 0x800000) == 0)
  {
    v2 |= 0x87EC6AEA;
  }

  if (((*(result + 8) ^ (17902189 * ((2 * (result & 0xAD34C1EE) - result + 1389051409) ^ 0xDC842801))) & 0x1000000) == 0)
  {
    v2 |= 0x87EC6AE6;
  }

  if (((*(result + 8) ^ (17902189 * ((2 * (result & 0xAD34C1EE) - result + 1389051409) ^ 0xDC842801))) & 0x2000000) != 0)
  {
    v2 &= ~2u;
  }

  *result = v2 | ((*(result + 8) ^ (17902189 * ((2 * (result & 0xAD34C1EE) - result + 1389051409) ^ 0xDC842801))) >> 26) & 1;
  return result;
}

void sub_1001C2A6C(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (155453101 * ((((2 * a1) | 0x38DF9CCA) - a1 + 1670394267) ^ 0x7A49D5AA));
  v2 = *a1;
  *(v2 + 616) = 356632016;
  *(v2 + 556) = 1540393266;
  *(v2 + 608) = 0x391919BA322E6344;
  __asm { BRAA            X27, X17 }
}

uint64_t sub_1001C2CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, int a9@<W8>)
{
  v23 = ((v9 ^ 0x62) + a2) ^ v9 ^ ((v9 ^ a3) + a4) ^ ((v9 ^ a5) + a6) ^ ((v9 ^ a7) + a8);
  v24 = ((v23 ^ v17) + v18) ^ ((v23 ^ v19) + v20) ^ ((v23 ^ v21) + v22);
  *(a1 + v11) = v12 + v24 * v16 + v13 * (v24 + v10);
  return (*(v15 + 8 * (((v11 == 0) * v14) ^ a9)))(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1001C2E74@<X0>(char a1@<W2>, char a2@<W3>, char a3@<W4>, char a4@<W5>, char a5@<W6>, unsigned int a6@<W7>, char a7@<W8>)
{
  v17 = (v10 ^ a6 ^ v14) + v11;
  v18 = (v9 ^ a2) & (2 * (v9 & a1)) ^ v9 & a1;
  v19 = ((2 * (v9 ^ v16)) ^ v8) & (v9 ^ v16) ^ (2 * (v9 ^ v16)) & a7;
  *(v12 + v17) = (v9 ^ (2 * (((4 * v19) & a3 ^ a4 ^ ((4 * v19) ^ v15) & v19) & (16 * ((v19 ^ v7) & (4 * v18) ^ v18)) ^ (v19 ^ v7) & (4 * v18) ^ v18)) ^ a5) * (v9 + 36);
  return (*(v13 + 8 * ((31 * (v17 == 0)) ^ v10)))();
}

uint64_t sub_1001C2F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, __n128 a6, __n128 a7, __n128 a8, int8x16_t a9, double a10, int8x16_t a11)
{
  v18 = ~v16 + v14;
  v19 = v18 & 0xF;
  v21.i64[0] = vqtbl4q_s8(*(&a6 - 1), a9).u64[0];
  *&v21.i64[1] = a10;
  v22 = vrev64q_s8(vmulq_s8(v21, a11));
  *(a1 + v18) = veorq_s8(veorq_s8(veorq_s8(*(v12 + v19 - 15), *(a1 + v18)), veorq_s8(*(v13 + v19 - 15), *(v11 + v19 - 15))), vextq_s8(v22, v22, 8uLL));
  return (*(STACK[0x358] + 8 * (v17 ^ (4 * (v16 + a4 + a3 != v15)))))();
}

uint64_t sub_1001C2FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = ((v3 + 331701412) & 0xEC3AF567 ^ 0x6D13500A) + LODWORD(STACK[0x330]);
  v6 = LODWORD(STACK[0x28C]) + 1830020394;
  v7 = v5 < ((v3 - 443046564) | 0x1002700Bu) - 792852231;
  v8 = v5 > v6;
  if (v6 < 0xC6588174 != v7)
  {
    v8 = v7;
  }

  return (*(v4 + 8 * ((85 * v8) ^ (v3 + 18171))))(a1, a2, a3, 371891400);
}

uint64_t sub_1001C306C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  STACK[0x2F0] = 0;
  v28 = v25 - v24;
  v29 = STACK[0x220];
  v30 = *(v25 + STACK[0x220] + 0x6B7EFDC61E1B68F1 + (v26 ^ 0x579EA42B1CC4B67BLL)) == v25;
  STACK[0x2D0] = &STACK[0x65C];
  v31 = v26 + 23781;
  v32 = v30;
  v33 = *(v27 + 8 * ((15485 * v32) ^ v31));
  STACK[0x230] = v29;
  return v33(v28, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1001C3128@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = (*(v5 + 8 * (v4 ^ 0x9112)))(*(a2 + 4), 26, a1, v3, a1, va);
  return (*(v5 + 8 * ((59990 * (v6 == ((2 * v6) & 0xD3AB8E22))) ^ v4)))();
}

void sub_1001C3188()
{
  v0 = (qword_1010BEAD8 + qword_1010BCEA0) ^ &v1;
  qword_1010BCEA0 = 952459099 * v0 - 0x1A7B4580FE86B8ALL;
  qword_1010BEAD8 = 952459099 * (v0 ^ 0xFE584BA7F0179476);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_1001C324C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  LODWORD(v169) = 0;
  v22 = v17 & 0xFFFFFFFD ^ 0xDCC8FD03;
  *(v20 - 168) = v22;
  v23 = v17;
  v181 = v17 & 0xFFFFFFF9 ^ 0xDCC8FD07;
  v24 = *(v21 + v181);
  LODWORD(v174) = (v18 - 1474813318) | 0x6818D0C;
  HIDWORD(v169) = (v18 + 26266) | 0x2110;
  v25 = *(a14 + (v24 ^ 0x35));
  v26 = (*(v21 + v22) - (((v174 ^ 0xFFFFFFC6) + HIDWORD(v169)) & (2 * *(v21 + v22))) - 99) ^ *(a14 + (*(v21 + v22) ^ 0xCELL));
  v27 = v23 & 0xFFFFFFFB ^ 0xDCC8FD07;
  *(v20 - 144) = v27;
  v28 = v23;
  v29 = *(v21 + v27);
  v30 = v23 & 0xFFFFFFFE ^ 0xDCC8FD03;
  *(v20 - 192) = v30;
  v31 = *(v21 + v30);
  v32 = (*(a16 + (v29 ^ 0x55)) ^ v29) << 24;
  LODWORD(v29) = *(a13 + (v31 ^ 0xBF));
  v33 = v23 & 0xFFFFFFF5 ^ 0xDCC8FD0BLL;
  *(v20 - 152) = v33;
  v34 = v29 + (v31 ^ a4);
  v35 = (v32 ^ 0x7FFFFFFF) & (((v25 ^ v24) << 8) ^ 0x91BE7D61) | v32 & 0x6E000000;
  v184 = v28 ^ 0xDCC8FD03;
  v36 = *(v21 + v184);
  LODWORD(v29) = *(a14 + (*(v21 + v33) ^ 0x14)) ^ *(v21 + v33);
  LODWORD(v24) = *(a16 + (v36 ^ 0x77));
  v37 = v28 & 0xFFFFFFF2 ^ 0xDCC8FD0FLL;
  *(v20 - 160) = v37;
  v38 = *(v21 + v37);
  v39 = (v36 - ((2 * v36) & 0x10) + 8) ^ v24;
  v40 = v28 & 0xFFFFFFFC ^ 0xDCC8FD03;
  *(v20 - 176) = v40;
  LOBYTE(v36) = *(a13 + (v38 ^ 0xA8)) + (v38 ^ 0x41) - 90;
  v178 = v28 & 0xFFFFFFF3 ^ 0xDCC8FD0FLL;
  v41 = (*(v21 + v40) - ((2 * *(v21 + v40)) & 0xC) + 6) ^ *(a15 + (*(v21 + v40) ^ 0x88));
  v180 = v28 & 0xFFFFFFF8 ^ 0xDCC8FD07;
  LODWORD(v40) = (*(v21 + v178) - ((2 * *(v21 + v178)) & 0x10) + 8) ^ *(a16 + (*(v21 + v178) ^ 0x87));
  v185 = v28 & 0xFFFFFFF7 ^ 0xDCC8FD0BLL;
  v42 = (*(v21 + v180) - ((2 * *(v21 + v180)) & 0xC) + 6) ^ *(a15 + (*(v21 + v180) ^ 0x8CLL));
  LODWORD(v24) = *(v21 + v185) ^ 0xFFFFFFB9 ^ *(a16 + (*(v21 + v185) ^ 0x6ALL));
  LODWORD(v24) = ((v24 >> 3) | (32 * v24)) ^ 0x7A;
  v176 = v28 & 0xFFFFFFFA ^ 0xDCC8FD07;
  v43 = *(a13 + (*(v21 + v176) ^ a4)) + (*(v21 + v176) ^ 0xBF) - 90;
  v44 = ((v43 << 16) ^ 0xFFEDFFFF) & ((v42 & 0x20 | (v42 ^ 0xFFFFFF1E) & (v35 ^ 0x50E9ABBE)) ^ 0xB34EB4EC) ^ (v43 << 16) & 0xE60000;
  v45 = v28 & 0xFFFFFFF4 ^ 0xDCC8FD0BLL;
  *(v20 - 184) = v45;
  v46 = *(a15 + (*(v21 + v45) ^ 0x81)) ^ *(v21 + v45);
  v47 = ((((((v24 & 0xE0) << 19) | (v24 << 27)) ^ 0x743DEBAB) & ((v29 << 8) ^ 0xFF3D2FEF) | (v29 << 8) & 0x1400) ^ 0xD5951D07) & (v46 ^ 0xFFFDFF0E) | v46 & 0x53;
  v182 = v28 & 0xFFFFFFF0 ^ 0xDCC8FD0FLL;
  LOBYTE(v29) = *(a15 + (*(v21 + v182) ^ 0xA3)) ^ *(v21 + v182);
  v183 = v28;
  v177 = v28 & 0xFFFFFFF6 ^ 0xDCC8FD0BLL;
  v179 = v28 & 0xFFFFFFF1 ^ 0xDCC8FD0FLL;
  v48 = (*(v21 + v179) - ((2 * *(v21 + v179)) & 0x3A) - 99) ^ *(a14 + (*(v21 + v179) ^ 0x24));
  LODWORD(v172) = ((v40 << 24) ^ 0x7FC60C67) & ((v36 << 16) ^ 0xFF6D5FE7) | (v36 << 16) & 0x390000;
  HIDWORD(v170) = ((((v48 << 8) ^ 0x2D0A6A67) & (v29 ^ 0xBD9EFF34) | v29 & 0x98) ^ 0x65B40807) & (v172 ^ 0x1570F398);
  LODWORD(v171) = (((*(a13 + (*(v21 + v177) ^ 0xF9)) + (*(v21 + v177) ^ 0x10) - 90) << 16) ^ 0x618D47A0) & (v47 ^ 0xBA57251B) ^ v47 & 0x9EF4B85F;
  LOBYTE(v38) = ((BYTE4(v170) & 0x32 ^ 0x22) + (v29 ^ 0x36)) & (BYTE4(v170) & 0x32 ^ 0xEF);
  v49 = *(v19 + 8 * (v18 ^ 0x16EB)) - 328791019;
  LODWORD(v24) = *(v49 + 4 * ((v171 ^ 0xFCE3) >> 8));
  v50 = (v24 ^ 0x9211FD69) & (2 * (v24 & 0xD295FE4A)) ^ v24 & 0xD295FE4A;
  v51 = ((2 * (v24 ^ 0x13105579)) ^ 0x830B5666) & (v24 ^ 0x13105579) ^ (2 * (v24 ^ 0x13105579)) & 0xC185AB32;
  v52 = (v51 ^ 0x80010220) & (4 * v50) ^ v50;
  v53 = ((4 * (v51 ^ 0x4084A911)) ^ 0x616ACCC) & (v51 ^ 0x4084A911) ^ (4 * (v51 ^ 0x4084A911)) & 0xC185AB30;
  v54 = (v53 ^ 0x4A800) & (16 * v52) ^ v52;
  v55 = ((16 * (v53 ^ 0xC1810333)) ^ 0x185AB330) & (v53 ^ 0xC1810333) ^ (16 * (v53 ^ 0xC1810333)) & 0xC185AB30;
  v56 = v54 ^ 0xC185AB33 ^ (v55 ^ 0xA300) & (v54 << 8);
  LODWORD(v24) = (((4 * ((v56 << 16) & 0x87878787 ^ v56 ^ ((v56 << 16) ^ 0x8110000) & ((((v55 ^ 0xC1850803) << 8) ^ 0x5AB0000) & (v55 ^ 0xC1850803) ^ ((v55 ^ 0xC1850803) << 8) & 0x1850000))) ^ (2 * v24)) & 0x23452D38 ^ 0x23010018) + (v24 ^ ((v24 ^ 0x49A6229D) - 1691099947) ^ ((v24 ^ 0xDC1314B9) + 243722993) ^ ((v24 ^ 0x708886D) - 711100891) ^ ((v24 ^ 0xBFD7BFFF) + 1833058743) ^ 0x3CC8972A);
  v173 = __PAIR64__(v26, v39);
  v57 = *(v19 + 8 * (v18 - 5930)) - 510955202;
  v58 = v36 ^ 0x4Bu;
  v59 = *(v19 + 8 * (v18 ^ 0x1B24)) - 791762574;
  v60 = *(v59 + 4 * v58);
  v61 = v42 ^ 0x55u;
  v62 = *(v19 + 8 * (v18 ^ 0x1C16)) - 305277422;
  v63 = v60 ^ *(v57 + 4 * (v39 ^ 0x64u)) ^ *(v62 + 4 * v61) ^ (v60 >> 1) & 0x200A409A ^ v24 ^ (2 * v24 * v24);
  LODWORD(v170) = v34 - 90;
  LODWORD(v24) = *(v59 + 4 * ((v34 - 90) ^ 0xC4u));
  HIDWORD(v171) = v44;
  v64 = *(v49 + 4 * (v48 ^ 0xFBu)) - 466053914;
  v65 = *(v57 + 4 * ((v44 ^ 0x9FDAAD3F) >> 24)) ^ v24 ^ (v24 >> 1) & 0x200A409A ^ v64 ^ *(v62 + 4 * (v171 ^ 0xE3u)) ^ (2 * v64 * v64) ^ 0x11B09ED1;
  v66 = (v65 & 0x2523544 ^ 0xD9ABD323) & (v65 & 0xFDADCABB ^ 0x5A7BB7D4) | v65 & 0x24040898;
  v67 = *(v59 + 4 * (v43 ^ 0x31u));
  LODWORD(v61) = *(v49 + 4 * (v26 ^ 0x72u)) - 466053914;
  LODWORD(v29) = v67 ^ (v67 >> 1) & 0x200A409A ^ *(v62 + 4 * (v38 ^ 0x98u)) ^ v61 ^ *(v57 + 4 * ((v171 ^ 0x3073FCE3) >> 24));
  v68 = *(v59 + 4 * (((v171 ^ 0x3073FCE3) >> 16) - (((v171 ^ 0x3073FCE3) >> 15) & 0x1C4) + 226));
  HIDWORD(v172) = v41;
  LODWORD(v24) = *(v49 + 4 * ((v44 ^ 0xAD3F) >> 8)) - 466053914;
  LODWORD(v24) = v68 ^ *(v57 + 4 * (v40 ^ 0xD3u)) ^ *(v62 + 4 * (v41 ^ 0xAEu)) ^ (v68 >> 1) & 0x200A409A ^ v24 ^ (2 * v24 * v24);
  v69 = *(v59 + 4 * (BYTE2(v24) ^ 0xC5u));
  v70 = v29 ^ (2 * v61 * v61);
  v71 = *(v49 + 4 * (BYTE1(v70) ^ 0x26u)) - 466053914;
  LODWORD(v29) = v69 ^ *(v62 + 4 * (v66 ^ 0xFBu)) ^ v71 ^ *(v57 + 4 * (HIBYTE(v63) ^ 0x61)) ^ (((v69 & 0xBFEB7ECB ^ 0xCC1C8BF6) - (v69 ^ 0x8C1C8AE2)) >> 1) ^ (2 * v71 * v71);
  v72 = *(v59 + 4 * (BYTE2(v63) ^ 0x25u));
  LODWORD(v40) = *(v57 + 4 * ((v66 ^ 0x32CD7EFB) >> 24)) ^ v72;
  LODWORD(v61) = (v72 >> 1) & 0x200A409A;
  v73 = v24 ^ 0x93278D7A;
  v74 = *(v49 + 4 * ((v24 ^ 0x8D7A) >> 8)) - 466053914;
  HIDWORD(v75) = v74 * v74;
  LODWORD(v75) = v74 * v74;
  LODWORD(v40) = (v75 >> 5) & 0xFBFFFFFF ^ __ROR4__(v40 ^ v74 ^ v61 ^ 0x2DD8EB8B, 6) ^ 0xD8A156A0;
  BYTE2(v61) = BYTE2(v70) ^ 0xB0;
  LODWORD(v40) = *(v62 + 4 * (v70 ^ 0xF6u)) ^ __ROR4__(v40, 26);
  v76 = *(v59 + 4 * (BYTE2(v66) ^ 0x2Fu));
  LODWORD(v24) = v76 ^ *(v57 + 4 * (HIBYTE(v70) ^ 0x2F)) ^ *(v62 + 4 * (v24 ^ 0xE2u)) ^ (v76 >> 1) & 0x200A409A;
  v77 = *(v49 + 4 * (BYTE1(v63) ^ 0xCAu)) - 466053914;
  LODWORD(v24) = v24 ^ v77 ^ (2 * v77 * v77);
  v78 = *(v49 + 4 * (BYTE1(v66) ^ 0x62u)) - 466053914;
  v79 = *(v59 + 4 * BYTE2(v61)) ^ (*(v59 + 4 * BYTE2(v61)) >> 1) & 0x200A409A ^ *(v57 + 4 * HIBYTE(v73)) ^ v78 ^ *(v62 + 4 * (v63 ^ 0x33u)) ^ (2 * v78 * v78);
  LOBYTE(v73) = v29 ^ 2;
  v80 = v79 ^ 0x9F8C4493;
  LODWORD(v61) = *(v59 + 4 * ((v79 ^ 0x9F8C4493) >> 16));
  v81 = *(v49 + 4 * ((v24 ^ 0xBA5B) >> 8)) - 466053914;
  v82 = *(v59 + 4 * (((((v29 ^ 0x4239D102) >> 16) - (((v29 ^ 0x4239D102) >> 16) ^ 0xE2)) ^ 0xFFFFFFFC) + ((v29 ^ 0x4239D102) >> 16)));
  v83 = v61 ^ *(v57 + 4 * ((v29 ^ 0x4239D102) >> 24)) ^ (v61 >> 1) & 0x200A409A ^ v81 ^ *(v62 + 4 * (v40 ^ 0x23u)) ^ (2 * v81 * v81);
  v84 = *(v49 + 4 * (BYTE1(v79) ^ 0x58u)) - 466053914;
  v85 = *(v57 + 4 * ((v40 ^ 0x3CE50923) >> 24)) ^ v82 ^ *(v62 + 4 * (v24 ^ 0x5Bu)) ^ (v82 >> 1) & 0x200A409A ^ v84 ^ (2 * v84 * v84) ^ 0x4AD39164;
  v86 = *(v59 + 4 * ((v40 ^ 0x3CE50923) >> 16));
  LODWORD(v61) = v86 ^ *(v57 + 4 * ((v24 ^ 0x771FBA5B) >> 24)) ^ *(v62 + 4 * v80) ^ (v86 >> 1) & 0x200A409A;
  LODWORD(v29) = *(v49 + 4 * (BYTE1(v29) ^ 0xCDu)) - 466053914;
  LODWORD(v24) = *(v59 + 4 * (BYTE2(v24) ^ 0xFDu));
  LODWORD(v29) = v61 ^ v29 ^ (2 * v29 * v29);
  LODWORD(v40) = *(v49 + 4 * (BYTE1(v40) ^ 0x15u)) - 466053914;
  v87 = v24 ^ *(v57 + 4 * HIBYTE(v80)) ^ *(v62 + 4 * v73) ^ (v24 >> 1) & 0x200A409A ^ v40 ^ (2 * v40 * v40);
  LODWORD(v24) = *(v59 + 4 * (BYTE2(v87) ^ 0x88u));
  v88 = ((v85 & 0xA39B7046 ^ 0xD13E163E) & (v85 & 0x5C648FB9 ^ 0xF79BF667) | v85 & 0xC408981) ^ 0xE383EFD3;
  LODWORD(v40) = *(v49 + 4 * (BYTE1(v29) ^ 0x1Fu)) - 466053914;
  BYTE1(v86) = BYTE1(v87) ^ 0x11;
  LODWORD(v24) = v24 ^ *(v57 + 4 * (HIBYTE(v83) ^ 0x13)) ^ (v24 >> 1) & 0x200A409A ^ v40 ^ *(v62 + 4 * (((v85 & 0x46 ^ 0x3E) & (v85 & 0xB9 ^ 0x67) | v85 & 0x81) ^ 0xD3u)) ^ (2 * v40 * v40);
  v89 = *(v49 + 4 * (BYTE1(v83) ^ 0x2Du)) - 466053914;
  LODWORD(v40) = *(v59 + 4 * BYTE2(v88)) ^ *(v57 + 4 * (BYTE3(v29) ^ 0x6D)) ^ *(v62 + 4 * (v87 ^ 0x4Fu)) ^ (*(v59 + 4 * BYTE2(v88)) >> 1) & 0x200A409A ^ v89 ^ (2 * v89 * v89);
  v90 = *(v59 + 4 * (BYTE2(v29) ^ 0x6Cu));
  v91 = v90 ^ *(v57 + 4 * (HIBYTE(v87) ^ 0xCB)) ^ (v90 >> 1) & 0x200A409A;
  v92 = *(v49 + 4 * BYTE1(v88)) - 466053914;
  v93 = v91 ^ *(v62 + 4 * (v83 ^ 0xD8u)) ^ v92 ^ (2 * v92 * v92);
  v94 = *(v59 + 4 * (BYTE2(v83) ^ 0x6Bu));
  LODWORD(v29) = v94 ^ (v94 >> 1) & 0x200A409A ^ *(v62 + 4 * (v29 ^ 0x42u));
  v95 = *(v49 + 4 * BYTE1(v86)) - 466053914;
  v96 = *(v57 + 4 * HIBYTE(v88)) ^ v29 ^ v95 ^ (2 * v95 * v95) ^ 0x48D8B6CE;
  LOBYTE(v95) = v24 ^ 0x67;
  v97 = *(v59 + 4 * (BYTE2(v93) ^ 0x1Du));
  LODWORD(v29) = v97 ^ *(v57 + 4 * ((v24 ^ 0x733CA767) >> 24)) ^ *(v62 + 4 * v96) ^ (v97 >> 1) & 0x200A409A;
  v98 = *(v49 + 4 * (BYTE1(v40) ^ 0x84u)) - 466053914;
  LODWORD(v29) = v29 ^ v98 ^ (2 * v98 * v98);
  LODWORD(v61) = *(v59 + 4 * (((v24 ^ 0x733CA767) >> 16) ^ 0xE2u));
  v99 = *(v49 + 4 * (BYTE1(v93) ^ 0xFDu)) - 466053914;
  v100 = *(v62 + 4 * (v40 ^ 0x54u)) ^ (v61 >> 1) & 0x200A409A ^ v99 ^ (2 * v99 * v99) ^ __ROR4__(__ROR4__(v61 ^ __ROR4__(__ROR4__(*(v57 + 4 * HIBYTE(v96)) ^ 0x17565E9A, 27) ^ 0xFD8E87CF, 5) ^ 0x50D64312, 26) ^ 0x2660B42D, 6);
  LODWORD(v24) = *(v49 + 4 * (BYTE1(v24) ^ 0xBBu)) - 466053914;
  LODWORD(v61) = *(v57 + 4 * (HIBYTE(v93) ^ 0x85));
  v101 = *(v59 + 4 * BYTE2(v96)) ^ (*(v59 + 4 * BYTE2(v96)) >> 1) & 0x200A409A ^ *(v57 + 4 * (BYTE3(v40) ^ 0x36)) ^ *(v62 + 4 * (v93 ^ 0x8Au)) ^ v24 ^ (2 * v24 * v24);
  LODWORD(v24) = *(v59 + 4 * ((v40 ^ 0x97DF9854) >> 16));
  LODWORD(v40) = *(v49 + 4 * BYTE1(v96)) - 466053914;
  LODWORD(v24) = v24 ^ v61 ^ (v24 >> 1) & 0x200A409A ^ *(v62 + 4 * v95) ^ v40 ^ (2 * v40 * v40);
  v102 = (((v24 ^ 0x9470F672) - (v24 ^ 0x31D996C1)) ^ 0xFFFFFFFE) + (v24 ^ 0x9470F672);
  LODWORD(v40) = *(v59 + 4 * (BYTE2(v102) ^ 0xE2u));
  LODWORD(v24) = v40 ^ *(v57 + 4 * (BYTE3(v29) ^ 0xC4)) ^ *(v62 + 4 * (v100 ^ 0x48u)) ^ (v40 >> 1) & 0x200A409A;
  LODWORD(v40) = *(v49 + 4 * (BYTE1(v101) ^ 0xC1u)) - 466053914;
  LODWORD(v40) = v24 ^ v40 ^ (2 * v40 * v40);
  LODWORD(v24) = *(v59 + 4 * (BYTE2(v29) ^ 0x6Du));
  v103 = *(v49 + 4 * (BYTE1(v102) ^ 0x1Cu)) - 466053914;
  v104 = v24 ^ (v24 >> 1) & 0x200A409A ^ *(v57 + 4 * (HIBYTE(v100) ^ 0x94)) ^ *(v62 + 4 * (v101 ^ 0x1Du)) ^ v103 ^ (2 * v103 * v103);
  LODWORD(v61) = *(v59 + 4 * (BYTE2(v100) ^ 0xAu));
  LODWORD(v24) = v61 ^ *(v57 + 4 * (HIBYTE(v101) ^ 0x5D)) ^ *(v62 + 4 * (v102 ^ 0x98u)) ^ (v61 >> 1) & 0x200A409A;
  LODWORD(v61) = *(v49 + 4 * (BYTE1(v29) ^ 0xB7u)) - 466053914;
  LODWORD(v24) = v24 ^ v61 ^ (2 * v61 * v61);
  LODWORD(v38) = ((((v24 ^ 0xC71AD02C) >> (v38 & 0x10)) - ((2 * ((v24 ^ 0xC71AD02C) >> (v38 & 0x10))) & 0x8116AF3C) - 1064609890) ^ 0xC08B579E) >> (v38 & 0x10 ^ 0x10);
  v105 = *(v59 + 4 * (BYTE2(v101) ^ 0xFEu));
  v106 = *(v49 + 4 * (BYTE1(v100) ^ 0x15u)) - 466053914;
  v107 = v105 ^ (v105 >> 1) & 0x200A409A ^ *(v62 + 4 * (v29 ^ a4)) ^ *(v57 + 4 * (HIBYTE(v102) ^ 0xA1)) ^ v106 ^ (2 * v106 * v106);
  v108 = *(v59 + 4 * (BYTE2(v40) ^ 0x8Bu));
  LODWORD(v29) = v108 ^ *(v57 + 4 * ((v104 ^ 0xFF6BA667) >> 24)) ^ (v108 >> 1) & 0x200A409A;
  v109 = *(v49 + 4 * (BYTE1(v107) ^ 0xB8u)) - 466053914;
  LODWORD(v29) = v29 ^ *(v62 + 4 * (v24 ^ 0xB4u)) ^ v109 ^ (2 * v109 * v109);
  v110 = *(v59 + 4 * ((v104 ^ 0xFF6BA667) >> 16));
  v111 = v110 ^ *(v57 + 4 * (BYTE3(v24) ^ 0x66)) ^ *(v62 + 4 * (v107 ^ 0xC3u)) ^ (v110 >> 1) & 0x200A409A;
  v112 = *(v59 + 4 * (BYTE2(v107) ^ 0x3Cu));
  LODWORD(v24) = *(v49 + 4 * (BYTE1(v24) ^ 0xCCu)) - 466053914;
  LODWORD(v61) = *(v57 + 4 * (BYTE3(v40) ^ 0xF3)) ^ v112 ^ *(v62 + 4 * ~v104) ^ (v112 >> 1) & 0x200A409A ^ v24 ^ (2 * v24 * v24);
  LODWORD(v38) = *(v59 + 4 * (v38 ^ 0xE2u));
  LODWORD(v24) = v38 ^ *(v57 + 4 * (HIBYTE(v107) ^ 0xEE)) ^ *(v62 + 4 * (v40 & 0xFB ^ 0x9342C795 ^ (v40 & 4 | 0x9342C702))) ^ (v38 >> 1) & 0x200A409A;
  LODWORD(v38) = *(v49 + 4 * (BYTE1(v104) ^ 0xBAu)) - 466053914;
  LODWORD(v24) = v24 ^ v38 ^ (2 * v38 * v38);
  LODWORD(v38) = *(v49 + 4 * (BYTE1(v40) ^ 0x35u)) - 466053914;
  LODWORD(v40) = v111 ^ v38;
  v113 = v38 * v38;
  LOWORD(v38) = v61 ^ 0x2EB8;
  v114 = *(v59 + 4 * (((v24 ^ 0xADF87F0) >> 16) - (((v24 ^ 0xADF87F0) >> 15) & 0x1C4) + 226));
  v115 = v40 ^ (2 * v113);
  LODWORD(v40) = v114 ^ *(v57 + 4 * ((v61 ^ 0xB04C2EB8) >> 24)) ^ *(v62 + 4 * (v29 ^ 0xEFu)) ^ (v114 >> 1) & 0x200A409A;
  v116 = *(v49 + 4 * ((v115 ^ 0x8554) >> 8)) - 466053914;
  LODWORD(v40) = v40 ^ v116 ^ (2 * v116 * v116);
  LODWORD(v61) = *(v59 + 4 * ((v61 ^ 0xB04C2EB8) >> 16));
  v117 = v61 ^ *(v57 + 4 * (BYTE3(v29) ^ 0x2F)) ^ (v61 >> 1) & 0x200A409A ^ *(v62 + 4 * (v115 ^ 0xCCu));
  LODWORD(v61) = *(v49 + 4 * ((v24 ^ 0x87F0) >> 8)) - 466053914;
  v118 = v117 ^ v61 ^ (2 * v61 * v61);
  LODWORD(v61) = *(v59 + 4 * (BYTE2(v29) ^ 0x19u));
  v119 = v61 ^ *(v57 + 4 * ((v115 ^ 0xBA888554) >> 24)) ^ (v61 >> 1) & 0x200A409A;
  LODWORD(v61) = *(v49 + 4 * BYTE1(v38)) - 466053914;
  v120 = *(v59 + 4 * (BYTE2(v115) ^ 0x6Au));
  LODWORD(v29) = *(v49 + 4 * (BYTE1(v29) ^ 0x7Cu)) - 466053914;
  LODWORD(v29) = v120 ^ (v120 >> 1) & 0x200A409A ^ *(v62 + 4 * v38) ^ v29 ^ *(v57 + 4 * (BYTE3(v24) ^ 0xAB)) ^ (2 * v29 * v29);
  LODWORD(v38) = *(v59 + 4 * (BYTE2(v29) ^ 0xAEu));
  v121 = v119 ^ v61 ^ *(v62 + 4 * (v24 ^ 0xF0u)) ^ (2 * v61 * v61);
  v122 = *(v49 + 4 * (BYTE1(v121) ^ 0xAu)) - 466053914;
  LODWORD(v24) = v38 ^ (v38 >> 1) & 0x200A409A ^ *(v62 + 4 * (v118 ^ 0xD0u)) ^ v122 ^ *(v57 + 4 * (BYTE3(v40) ^ 0x63)) ^ (2 * v122 * v122);
  LOBYTE(v122) = v40 ^ 0xFA;
  v123 = *(v59 + 4 * ((v40 ^ 0xC2F913FA) >> 16));
  LODWORD(v38) = v123 ^ *(v57 + 4 * ((v118 ^ 0xBCACBDD0) >> 24)) ^ *(v62 + 4 * ((v121 ^ 0x3C) + ((2 * v121) & 0x130 ^ 0xFFFFFFCF) + 153));
  LODWORD(v61) = (v123 >> 1) & 0x200A409A;
  v124 = v29 ^ 0x324CF123;
  LODWORD(v38) = v38 ^ v61;
  LODWORD(v61) = *(v49 + 4 * ((v29 ^ 0xF123) >> 8)) - 466053914;
  v125 = v38 ^ v61 ^ (2 * v61 * v61);
  v126 = *(v59 + 4 * ((v118 ^ 0xBCACBDD0) >> 16));
  LODWORD(v40) = *(v49 + 4 * (BYTE1(v40) ^ 0xFu)) - 466053914;
  LODWORD(v29) = v126 ^ *(v57 + 4 * (HIBYTE(v121) ^ 0xB6)) ^ *(v62 + 4 * (v29 ^ 0xBBu)) ^ (v126 >> 1) & 0x200A409A ^ v40 ^ (2 * v40 * v40);
  LODWORD(v59) = *(v59 + 4 * (BYTE2(v121) ^ 0x8Au));
  LODWORD(v40) = *(v57 + 4 * HIBYTE(v124)) ^ v59;
  LODWORD(v49) = *(v49 + 4 * (BYTE1(v118) ^ 0xA1u)) - 466053914;
  LODWORD(v75) = __ROR4__(*(v62 + 4 * v122) ^ v49 ^ (2 * v49 * v49) ^ (((v59 >> 1) & 0x200A409A ^ 0x2000008A) + (v40 ^ 0xC0BACF22) - 2 * (((v59 >> 1) & 0x200A409A ^ 0x2000008A) & (v40 ^ 0xC0BACF22))) ^ 0xEDA1F977, 17) ^ 0x146BD080;
  HIDWORD(v75) = v75;
  LODWORD(v59) = v75 >> 15;
  v127 = v24 ^ 0xEEB9F902;
  v128 = *(v19 + 8 * (v18 ^ 0x1488)) - 591548034;
  v129 = *(v128 + 4 * HIBYTE(v127));
  LODWORD(v61) = *(v128 + 4 * (((v125 ^ 0x7CF87DBB) >> (v59 & 0x10) >> (v59 & 8) >> (~v59 & 8) >> (~v59 & 0x10)) ^ 0x79u));
  HIDWORD(v175) = *(v128 + 4 * (BYTE3(v29) ^ 0xD0));
  v130 = *(v128 + 4 * (BYTE3(v59) ^ 0xF2));
  v131 = *(v19 + 8 * (v18 - 4247)) - 894269335;
  v132 = BYTE2(v59);
  v133 = *(v131 + 4 * (BYTE2(v59) ^ 0x2Eu));
  v134 = *(v19 + 8 * (v18 ^ 0x1588)) - 779507586;
  v135 = v18;
  v136 = *(v131 + 4 * (BYTE2(v127) ^ 0xBCu));
  v137 = *(v134 + 4 * (BYTE1(v59) ^ 0x64u));
  LODWORD(v175) = *(v131 + 4 * (BYTE2(v125) ^ 0x44u));
  LOBYTE(v34) = v29 ^ 0xAE;
  v138 = ((v29 ^ 0xA98B78AE) >> 16);
  v139 = *(v131 + 4 * (v138 ^ 0xBCu));
  v140 = *(v134 + 4 * (BYTE1(v29) ^ 0x2Au));
  v141 = *(v134 + 4 * BYTE1(v127));
  LODWORD(v29) = *(v134 + 4 * (BYTE1(v125) ^ 0x2Fu));
  v142 = *(v19 + 8 * (v135 - 6197)) - 1973670951;
  LODWORD(v131) = *(v142 + 4 * (v125 ^ 0xF0u));
  LODWORD(v45) = *(v142 + 4 * v34);
  HIDWORD(v174) = *(v142 + 4 * ((v75 >> 15) ^ 0xCDu));
  v143 = *(v142 + 4 * v127);
  LODWORD(v45) = (BYTE2(v127) - 768597503) ^ *(v20 - 136) ^ v136 ^ (v61 + 688546571) ^ (4 * (v61 + 688546571)) ^ v45 ^ 0x6A533447 ^ (16 * (v45 ^ 0x6A533447));
  v144 = v45 ^ (((2 * v137) ^ 0xE426A53E) - 1409447806) ^ ((((v137 ^ 0x4C30C167) - 1278263655) ^ ((v137 ^ 0xCDBF8C5F) + 843084705) ^ ((v137 ^ 0xF39C1FA7) + 207872089)) + 672557879);
  v145 = *(v19 + 8 * (v135 - 5069)) - 1078365311;
  *(*(v20 - 120) + v181) = *(v145 + (((v45 ^ (((2 * v137) ^ 0xA53E) - 30590) ^ ((((v137 ^ 0xC167) + 16025) ^ ((v137 ^ 0x8C5F) + 29601) ^ ((v137 ^ 0x1FA7) - 8103)) + 27447)) >> 8) ^ 0xDFLL)) ^ ((((v45 ^ (((2 * v137) ^ 0xA53E) - 30590) ^ ((((v137 ^ 0xC167) + 16025) ^ ((v137 ^ 0x8C5F) + 29601) ^ ((v137 ^ 0x1FA7) - 8103)) + 27447)) >> 8) ^ 0xC6) + 82) ^ 0xC7;
  v146 = *(v19 + 8 * (v135 ^ 0x17CB)) - 1298561995;
  LODWORD(v45) = *(v146 + (BYTE2(v144) ^ 0x21));
  *(*(v20 - 120) + v176) = v45 ^ 0x4B ^ ((v45 >> 5) ^ (v45 >> 3) | 0xA0);
  v147 = (v138 - 768597503) ^ *(v20 - 132) ^ v139 ^ (v130 + 688546571) ^ (4 * (v130 + 688546571)) ^ v143 ^ 0x723B83F2 ^ (((2 * v29) ^ 0xE426A53E) - 1409447806) ^ (16 * (v143 ^ 0x723B83F2)) ^ ((((v29 ^ 0xBDEADB93) + 1108681837) ^ ((v29 ^ 0x1F2B2135) - 522920245) ^ ((v29 ^ 0xD0D2A839) + 791500743)) + 672557879);
  v148 = *(v19 + 8 * (v135 - 6200)) - 759525442;
  LODWORD(v45) = *(v148 + (HIBYTE(v147) ^ 0x88));
  v149 = 123 - 83 * v45;
  HIDWORD(v75) = (90 * v45 + 118) & 0x4E ^ v149;
  LODWORD(v75) = v149 << 24;
  *(*(v20 - 120) + v178) = (((v75 >> 31) >> 1) | ((v75 >> 31) << 7)) ^ 0x78;
  v150 = v131 ^ 0x8351B0A6;
  *(v20 - 132) = HIDWORD(a12) < 0xE43A5147;
  v151 = v150 & 0x400000;
  if ((v150 & 0x400000 & (16 * v150)) != 0)
  {
    v151 = -v151;
  }

  v152 = (v129 + 688546571) ^ *(v20 - 128) ^ v133 ^ (4 * (v129 + 688546571)) ^ (((2 * v140) ^ 0xE426A53E) - 1409447806) ^ v150 & 0xFFBFFFFF ^ ((((v140 ^ 0x5DE18ED6) - 1575063254) ^ ((v140 ^ 0x9312AD4) - 154217172) ^ ((v140 ^ 0x26C3F69D) - 650376861)) + 672557879) ^ (v151 + 16 * v150) ^ ((v132 ^ 0x92) - 768597503);
  v153 = *(v148 + (BYTE3(v152) ^ 0x1CLL));
  *(*(v20 - 120) + v184) = (-83 * v153 + 123) ^ 0x61 ^ (90 * v153 + 118) & 0x4E;
  v154 = *(v19 + 8 * (v135 ^ 0x186E)) - 1844390294;
  *(*(v20 - 120) + v180) = (*(v154 + (v144 ^ 0x6ALL)) + 36) ^ 0x2B;
  v155 = *(v146 + (BYTE2(v152) ^ 0x33));
  *(*(v20 - 120) + *(v20 - 192)) = v155 ^ ((((-(v155 ^ 0x3C) ^ (((v155 ^ 0x3C) >> 2) - (((v155 ^ 0x3C) >> 2) ^ v155 ^ 0x3C)) ^ ((v155 ^ 0x3C) - ((2 * (v155 ^ 0x3C)) & 0x60) - 80) ^ 0xB0) + ((v155 ^ 0x3C) >> 2)) & 0xF8) >> 3) ^ 0x75;
  v156 = *(v20 - 124) ^ ((BYTE2(v125) ^ 0xD23022F9) + ((v125 >> 15) & 2)) ^ v175 ^ (HIDWORD(v175) + 688546571) ^ (4 * (HIDWORD(v175) + 688546571)) ^ HIDWORD(v174) ^ 0xD3744280 ^ (((2 * v141) ^ 0xE426A53E) - 1409447806) ^ (16 * (HIDWORD(v174) ^ 0xD3744280)) ^ ((((v141 ^ 0x925C282B) + 1839454165) ^ ((v141 ^ 0x3041BCA4) - 809614500) ^ ((v141 ^ 0xD00EC610) + 804338160)) + 672557879) ^ 0x34A75941;
  v157 = v156 - ((2 * v156) & 0x30B2EC0) - 2121951392;
  v158 = *(v146 + (BYTE2(v157) ^ 0xA0));
  *(*(v20 - 120) + v177) = v158 ^ (v158 >> 5) ^ (v158 >> 3) ^ 0xAA;
  *(*(v20 - 120) + *(v20 - 168)) = ((BYTE1(v152) ^ 0xAB) + 82) ^ 0xE5 ^ *(v145 + (BYTE1(v152) ^ 0xB2));
  LOBYTE(v158) = *(v148 + (HIBYTE(v157) ^ 0xDFLL));
  *(*(v20 - 120) + v185) = (-83 * v158 + 123) ^ (90 * v158 + 118) & 0x4E ^ 8;
  LOBYTE(v158) = *(v154 + (v147 ^ 0xB6));
  v159 = v158 & 0x2C ^ 0x21;
  v160 = v158 & 0xE ^ 0x12;
  *(*(v20 - 120) + v182) = ((v158 ^ (2 * ((v158 ^ 0x68) & (2 * ((v158 ^ 0x68) & (2 * ((v158 ^ 0x68) & (2 * ((v158 ^ 0x68) & (2 * ((v158 ^ 0x68) & (2 * v160) ^ v160)) ^ v160)) ^ v160)) ^ v160)) ^ v160)) ^ 0x34) + (((4 * ((v158 ^ 8) & (2 * ((v158 ^ 0x6A) & (2 * ((v158 ^ 0x6A) & (2 * ((v158 ^ 0x6A) & (2 * v159) ^ v159)) ^ v159)) ^ v159)) ^ v159)) ^ (2 * v158)) & 0x74 ^ 0x50)) ^ 0x1B;
  *(*(v20 - 120) + v179) = *(v145 + (BYTE1(v147) ^ 0x6FLL)) ^ (-83 - (BYTE1(v147) ^ 0x76));
  *(*(v20 - 120) + *(v20 - 176)) = (*(v154 + (v152 ^ 0x52)) + 36) ^ 0x97;
  LOBYTE(v158) = *(v148 + (HIBYTE(v144) ^ 0x7ELL));
  v161 = *(v20 - 120);
  *(v161 + *(v20 - 144)) = (-83 * v158 + 123) ^ (90 * v158 + 118) & 0x4E ^ 0xBB;
  *(v161 + *(v20 - 152)) = ((BYTE1(v157) ^ 0x94) + 82) ^ 0xB5 ^ *(v145 + (BYTE1(v157) ^ 0x8DLL));
  v162 = *(v146 + (BYTE2(v147) ^ 0xA6));
  *(v161 + *(v20 - 160)) = v162 ^ (v162 >> 5) ^ (v162 >> 3) ^ 0xA6;
  LOBYTE(v162) = *(v154 + (v157 ^ 0xFBLL));
  v163 = (((v183 ^ 0x93193821) + 1827063775) ^ ((v183 ^ 0x36DAAD48) - 920300872) ^ ((v183 ^ 0x790B686A) - 2030790762)) + 312360596;
  v164 = ((v163 ^ 0x766CCADB) - 1136233306) ^ v163 ^ ((v163 ^ 0x586C8E8C) - 1840893709) ^ ((v163 ^ 0x6C2AFA39) - 1509931960) ^ ((v163 ^ 0x77FFFFEF) - 1110097518);
  *(v161 + *(v20 - 184)) = (v162 + 36) ^ 0xEA;
  v165 = (((v164 ^ 0x8A10D0C1) - 1661824067) ^ ((v164 ^ 0x8779D2A7) - 1852075557) ^ ((v164 ^ 0x38BC43E7) + 777912475)) - 1056747958;
  v166 = *(v20 - 132) ^ (v165 < 0xE43A5147);
  v167 = v165 < HIDWORD(a12);
  if (v166)
  {
    v167 = *(v20 - 132);
  }

  return (*(a17 + 8 * ((32026 * v167) ^ v135)))(123, v145, v141, 4294967213, v152, 3526369793, 2885519490, 3827737918, a9, a10, a11, a12, a13, a14, a15, a16, a17, v169, v170, v171, v172, v173, v174, v175, v176, v177);
}

uint64_t sub_1001C518C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, unsigned int a17)
{
  v22 = *(v17 + 4 * ((a17 % (v18 >> 2)) & 0x3FFFFFFC));
  v23 = ~*(v17 + 4 * (((v18 >> 2) - 1) & v22));
  v24 = *(v21 + 8 * a16);
  v25 = *(v24 - 527405895);
  v26 = *(v21 + 8 * a15) + 4 * v25;
  v27 = *(v26 - 1940437438);
  v29 = *&v23 & (~v22 >> 16);
  v28 = v29 == 0;
  v30 = v29 + v29 * v27;
  v31 = v28;
  if (v28)
  {
    v32 = v27;
  }

  else
  {
    v32 = 0;
  }

  *(v26 - 1940437438) = (v30 + v32) * v27;
  *(v24 - 527405895) = (v25 + 1) % 6u;
  return (*(v20 + 8 * ((10934 * v31) ^ (v19 - 41663))))(v32, -527405895, -1940437438, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_1001C5264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X6>, uint64_t a3@<X7>, int a4@<W8>)
{
  v6 = *(a3 + 8 * ((56675 * (((2 * v4) & 0x1D7FDEFBELL) + (v4 ^ 0x7F67FFC7EBFEF7DFLL) - v5 - 0x526325F6FAE237B2 + ((a4 - 18557) | 0x30u) < 0xFFFFFFFFFFFFFFF6)) ^ a4));
  LODWORD(STACK[0x290]) = 371891407;
  return v6(a1, a2);
}

uint64_t sub_1001C5338@<X0>(int a1@<W0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v14 = a2 > v11;
  *(&a9 + v12) = 920645125;
  if (v14 == v12 + 1 > -1780940501)
  {
    v14 = (((v9 - 223) ^ 0xEA26D7D4) + v12) < v10;
  }

  return (*(v13 + 8 * ((!v14 * a1) ^ v9)))();
}

uint64_t sub_1001C53A4(int a1)
{
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  STACK[0x258] = v4;
  *(v3 - 112) = veorq_s8(*v6, xmmword_100F52900);
  if (v1)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  v9 = *(v2 + 8 * ((4067 * v8) ^ a1));
  LODWORD(STACK[0x384]) = -42900;
  return v9();
}

uint64_t sub_1001C53F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>, int8x16_t a6@<Q0>, int8x8_t a7@<D1>, int8x8_t a8@<D2>)
{
  v16.val[0].i64[0] = (v10 + a1 - 1) & 0xF;
  v16.val[0].i64[1] = (v10 + a1 + (v11 ^ 0xC)) & 0xF;
  v16.val[1].i64[0] = (v10 + a1 + 13) & 0xF;
  v16.val[1].i64[1] = (v10 + a1 + 12) & 0xF;
  v16.val[2].i64[0] = (v10 + a1 + 11) & 0xF;
  v16.val[2].i64[1] = (v10 + a1 + 10) & 0xF;
  v16.val[3].i64[0] = (v10 + a1 + 9) & 0xF;
  v16.val[3].i64[1] = (v10 + a1) & 0xF ^ 8;
  *(a2 + v10) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a3 + v10), *(a5 + v16.val[0].i64[0] - 7)), veor_s8(*(v16.val[0].i64[0] + v8 - 6), *(v16.val[0].i64[0] + v9 - 5)))), a8), vmul_s8(*&vqtbl4q_s8(v16, a6), a7)));
  return (*(v14 + 8 * (((v13 == a1) * a4) ^ v12)))(a1 - 8, a2 - 8, a3 - 8);
}

uint64_t sub_1001C54C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char a18, __int16 a19, char a20, int a21, int a22, int a23, int a24, uint64_t a25, uint64_t a26, int a27, int a28, int a29, int a30, int a31, int a32, int a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, unsigned int a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  v49 = ((a28 + 1122480416) ^ 0x391C6EEC) & (2 * ((a28 + 1122480416) & (a42 ^ 0xBD182FDF))) ^ (a28 + 1122480416) & (a42 ^ 0xBD182FDF);
  v50 = ((2 * ((a28 + 1122480416) ^ 0x292C6A2E)) ^ 0x2868499E) & ((a28 + 1122480416) ^ 0x292C6A2E) ^ (2 * ((a28 + 1122480416) ^ 0x292C6A2E)) & 0x143424CE;
  v51 = (a28 + 1122480416) ^ (2 * ((((4 * (v50 ^ 0x14142441)) ^ 0x50D09330) & (v50 ^ 0x14142441) ^ (4 * (v50 ^ 0x14142441)) & 0x143424C0) & (16 * ((v50 ^ 0x803400CC) & (4 * v49) ^ v49)) ^ (v50 ^ 0x803400CC) & (4 * v49) ^ v49));
  v52 = ((v51 ^ 0x9A48BB01) - 1618066217) ^ ((v51 ^ 0xDC83D54D) - 649778533) ^ ((v51 ^ 0x46CB6EAD) + 1124962683);
  v53 = ((2 * ((a24 + a30 - 797984413) % a38)) & 0xC9FBF792) + (((a24 + a30 - 797984413) % a38) ^ 0xE4FDFBC9);
  v54 = a33 + v47 + 13 * v53 + 11 * v52 + 979413174;
  v55 = a22 ^ v54 ^ ((v54 ^ 0x206785D6) - 1778657843) ^ ((v54 ^ 0x4FDD8794) - 96348273) ^ ((v54 ^ 0x5F7FEFF7) - 354172946) ^ (((((v48 + 3842) ^ 0xD68) + 2057698605) ^ v54) - 818277813);
  v56 = a29 + *(&a47 + a41) - 288987148 + (((v55 ^ 0xEC7C0E18) + 494525036) ^ ((v55 ^ 0xE24AC1B0) + 323950020) ^ ((v55 ^ 0x6BC526D0) - 1698631004));
  v57 = (v56 ^ 0x6CB3005A) & (2 * (v56 & 0x4CB31463)) ^ v56 & 0x4CB31463;
  v58 = (v56 ^ 0xF5F1009E) & 0x728429FA | (v56 ^ 0xA0EFF61) & (2 * (v56 ^ 0xF5F1009E));
  v59 = v58 ^ 0x89421405;
  v60 = (v58 ^ 0x30000098) & (4 * v57) ^ v57;
  v61 = 4 * v59;
  v62 = ((4 * v59) ^ 0x650853F0) & v59;
  v63 = *(&a47 + a39);
  v64 = ((v63 ^ 0x58D4B40E) - 2001007251) ^ v63 ^ ((v63 ^ 0x7D60244D) - 1391485648) ^ ((v63 ^ 0x655B2921) - 1254846396) ^ ((v63 ^ 0x6F7FFFFF) - 1089452386) ^ v56 ^ (2 * ((v61 & 0x394214F0 ^ 0x210010F0 ^ v62) & (16 * v60) ^ v60));
  v65 = (((a28 + 1849068731) ^ 0xB588867E) + 57) ^ (a28 + 1849068731) ^ (((a28 + 1849068731) ^ 0xF939B883) + 198) ^ (((a28 + 1849068731) ^ 0xBE) + 249) ^ (((a28 + 1849068731) ^ 0xFA) + 189);
  v66 = 3 * (v53 + (((a24 + v53 - 344867430) % a38) ^ 0x25BFEFB6) + ((2 * ((a24 + v53 - 344867430) % a38)) & 0x4B7FDF6C)) + a31 + a33 + a21 + (((v65 ^ 0xA59A1B1E) - 639205383) ^ ((v65 ^ 0xEB1897F2) - 1754991851) ^ ((v65 ^ 0x4E828C55) + 855566516)) + *(&a47 + a36) + v52 - *(&a47 + a35) - 1909600903 + (((v64 ^ 0x9EB1920) - 1818921180) ^ ((v64 ^ 0xCF4F3482) + 1429297794) ^ ((v64 ^ 0x85077F5C) + 528028000));
  LOBYTE(v66) = a18 ^ v66 ^ ((v66 ^ 0xFD) - 11) ^ ((v66 ^ 0x98) - 110) ^ ((v66 ^ 0x6C) + 102) ^ (-v66 - 10);
  return (*(a44 + 8 * ((23 * (((a20 + ((((v66 ^ 0xE0) + 6) ^ ((v66 ^ 0x75) - 111)) ^ (v66 - 26)) - 78) & 1) == 0)) ^ v48)))();
}

uint64_t sub_1001C5BE8()
{
  v7 = *(v6 - 136);
  v8 = v7 + v3;
  v9 = (v3 - 1) & 0xF;
  v10 = v9 - v3 - 38689 + ((v4 - 10168) ^ 0x9396u);
  v11 = v0 + v10;
  v12 = v0 + v9 + 1;
  v13 = v2 + v10;
  v14 = v2 + v9 + 1;
  v15 = v9 - v3 + v1 + 2;
  v16 = v1 + v9 + (((v4 - 10168) | 0x8202u) ^ 0x86B4);
  v18 = v12 > v7 && v11 < v8;
  v20 = v14 > v7 && v13 < v8 || v18;
  if (v15 < v8 && v16 > v7)
  {
    v22 = 1;
  }

  else
  {
    v22 = v20;
  }

  return (*(v5 + 8 * ((200 * (v22 ^ 1)) ^ v4)))();
}

uint64_t sub_1001C5DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v44 = (v37 ^ 0xCA4FB86B) & (2 * (v37 & v38)) ^ v37 & v38;
  v45 = ((2 * (v37 ^ 0x6A8098EB)) ^ 0x75DE4310) & (v37 ^ 0x6A8098EB) ^ (2 * (v37 ^ 0x6A8098EB)) & 0xBAEF2188;
  v46 = v37 ^ (2 * ((v45 ^ 0x8A210A8D ^ ((a7 ^ 0x35994E90) - 899260691)) & (16 * (v45 & (4 * v44) ^ v44)) & ((4 * (v45 ^ 0x8A210A8D ^ ((a7 ^ 0x35994E90) - 899260691))) ^ 0x6BBC8620) ^ v45 & (4 * v44) ^ v44));
  v47 = v36 + 1665031824 + (((v46 ^ 0x972384B9) + 2086780253) ^ ((v46 ^ 0xB637B10B) + 1567983855) ^ ((v46 ^ 0x4B5E406A) - 1608746608)) - 1520549966;
  v48 = ((2 * (v42 ^ 0x72F1BE55)) ^ 0x453C0E6C) & (v42 ^ 0x72F1BE55) ^ (2 * (v42 ^ 0x72F1BE55)) & 0xA29E0736;
  v49 = v48 ^ 0xA2820112;
  v50 = (v48 ^ 0x201C0604) & (4 * (v41 & (v42 ^ 0xD26FBC53) ^ v43)) ^ v41 & (v42 ^ 0xD26FBC53) ^ v43;
  v51 = v42 ^ (2 * (((4 * v49) & 0x229E0730 ^ 0x2180410 ^ ((4 * v49) ^ 0xA781CD0) & v49) & (16 * v50) ^ v50)) ^ v47 ^ ((v47 ^ 0x3A49BCF3) - 1167166464) ^ ((v47 ^ 0x7733DCB8) - 149679179) ^ ((v47 ^ 0xCD7CAF77) + 1297834108) ^ ((v47 ^ 0xFFDEFFCF) + 2147037380);
  v52 = *(v39 + 4 * v40) - 550748840 + (((v51 ^ 0x957B537) - 413564160) ^ ((v51 ^ 0x7137F36) - 383956737) ^ ((v51 ^ 0xA5DF4391) + 1272018010));
  return (*(a36 + 8 * (a7 | (2 * (((2 * v52) & 4) == (v52 & 7))))))();
}

uint64_t sub_1001C60D8@<X0>(char a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W8>)
{
  v10 = v5 + v8 + ((v4 + v6) | v7);
  *(a2 + v10) = (a4 ^ a1) * (a4 + 17);
  return (*(v9 + 8 * (((v10 == 0) * a3) ^ v4)))();
}

uint64_t sub_1001C6114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v44 = v41 - 899248585;
  v45 = STACK[0x2F8];
  v46 = (v45 ^ 0x63) & (2 * (v45 & 0x63)) ^ v45 & 0x63;
  v47 = ((2 * (v45 ^ 0x27)) ^ 0x88) & (v45 ^ 0x27) ^ (2 * (v45 ^ 0x27)) & 0x44;
  v48 = (LODWORD(STACK[0x2F8]) ^ (2 * ((((4 * (v47 ^ ((v41 ^ 0xA6) - 8 + 102 * (v41 ^ 5)))) ^ 0x10) & (v47 ^ ((v41 ^ 0xA6) - 8 + 102 * (v41 ^ 5))) ^ (4 * (v47 ^ ((v41 ^ 0xA6) - 8 + 102 * (v41 ^ 5)))) & 0x40) & (16 * (v47 & (4 * v46) ^ v46)) ^ v47 & (4 * v46) ^ v46)));
  v49 = ((2 * ((LODWORD(STACK[0x30C]) - 797984413) % a8)) & 0xFF7FDFDE) + (((LODWORD(STACK[0x30C]) - 797984413) % a8) ^ 0x7FBFEFEF);
  v50 = (LODWORD(STACK[0x308]) ^ 0x9E6F397B) & (2 * (STACK[0x308] & 0xD06FB963)) ^ STACK[0x308] & 0xD06FB963;
  v51 = ((2 * (LODWORD(STACK[0x308]) ^ 0xBE2F5B79)) ^ 0xDC81C434) & (LODWORD(STACK[0x308]) ^ 0xBE2F5B79) ^ (2 * (LODWORD(STACK[0x308]) ^ 0xBE2F5B79)) & 0x6E40E21A;
  v52 = v51 ^ 0xA;
  LOBYTE(v51) = v50 ^ 0x1A ^ (v51 ^ 0x10) & (4 * v50);
  v53 = (LODWORD(STACK[0x308]) ^ (2 * ((16 * v51) & 0x10 ^ v51 ^ ((16 * v51) ^ 0x20) & ((4 * v52) & 0x18 ^ 0x12 ^ ((4 * v52) ^ 0x68) & v52)))) & 0x7F;
  v54 = v42 + 3 * v49 + (((v48 ^ 0x62) - 54) ^ ((v48 ^ 0x1A) - 78) ^ ((v48 ^ 0x1B) - 79)) + 22;
  v55 = *(&STACK[0x2F0] + ((((v54 ^ 0xCC) - 54) ^ v54 ^ ((v54 ^ 0x32) + 56) ^ ((v54 ^ 0xDB) - 33) ^ ((v54 ^ 0xDF) - 37)) ^ 0xFAu));
  v56 = (v55 ^ 0x6A) & (2 * (v55 & 0x63)) ^ v55 & 0x63;
  LOBYTE(v50) = ((2 * (v55 ^ 0xAA)) ^ 0x92) & (v55 ^ 0xAA) ^ (2 * (v55 ^ 0xAA)) & 0xC8;
  v57 = (v55 ^ (2 * ((((4 * (v50 ^ 0x49)) ^ 0x20) & (v50 ^ 0x49) ^ (4 * (v50 ^ 0x49)) & 0xC0) & (16 * (v50 & (4 * v56) ^ v56)) ^ v50 & (4 * v56) ^ v56)));
  v58 = 906386353 * (((~(v43 - 144) & 0xF4B0301E) - (~(v43 - 144) | 0xF4B0301F)) ^ 0xC5B1FD3B);
  *(v43 - 128) = v58 + 540883514;
  *(v43 - 124) = v58 - 365096217 + (((v48 ^ 0xA4D9DC97) - 2122364611) ^ ((v48 ^ 0x611A79B0) + 1153231900) ^ ((v48 ^ 0xC5C3A544) - 530239248));
  *(v43 - 112) = (((v53 ^ 0xB81004D2) + 728686913) ^ ((v53 ^ 0xEF650FBD) + 2082204208) ^ ((v53 ^ 0x57750B38) - 1005850965)) - v58 - 1182052504;
  *(v43 - 108) = v58 + v41 - 899251057;
  *(v43 - 120) = ((((v57 ^ 0x38209489) + 322486123) ^ ((v57 ^ 0x80F2F404) - 1410670616) ^ ((v57 ^ 0xB8D260EE) - 1815459058)) + 789224620) ^ v58;
  *(v43 - 116) = (v49 - 1269680821) ^ v58;
  *(v43 - 104) = v58 ^ a28 ^ 0xBDC3E9CD;
  *(v43 - 144) = &STACK[0x2F0];
  *(v43 - 136) = &a41;
  v59 = (*(a38 + 8 * (v41 - 899218952)))(v43 - 144);
  return (*(a38 + 8 * ((202 * (a36 == 1)) ^ v44)))(v59);
}

uint64_t sub_1001C6690()
{
  v3 = STACK[0x228];
  *(v2 + 552) = STACK[0x228];
  *(v2 + 560) = v3;
  LODWORD(STACK[0x4B8]) = STACK[0x40C];
  return (*(v1 + 8 * (v0 + 29060)))();
}

void sub_1001C67C4()
{
  if (v0 == 1516775119)
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891401;
  }

  *(v1 + 20) = v2;
}

uint64_t sub_1001C6840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = veorq_s8(**(v66 + 16), xmmword_100F525A0);
  *(v65 - 128) = veorq_s8(**(v66 + 8), xmmword_100F525B0);
  *(v65 - 112) = v67;
  v68 = *(v64 + 8 * (a1 ^ (916 * (a9 != 0))));
  LODWORD(STACK[0x360]) = -42900;
  return v68(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63, a64);
}

uint64_t sub_1001C68C4(unsigned int a1, uint64_t a2, int a3)
{
  v12 = v8 < v9;
  *(v11 + a1) = *(v5 + (a1 & 0xF)) ^ *(v3 + a1) ^ *(v6 + (a1 & 0xF)) ^ ((a1 & 0xF) * ((v7 - 29) & 0x99 ^ 0x8A)) ^ *(v4 + (a1 & 0xF));
  if (v12 == a1 + 1 > 0x65B813AB)
  {
    v12 = a1 - 1706562475 < v8;
  }

  return (*(v10 + 8 * ((v12 * a3) ^ v7)))();
}

uint64_t sub_1001C6A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19)
{
  v20 = (a12 ^ 0xE83273AD) & (2 * ((a19 ^ 0xE93BE651) & a12)) ^ (a19 ^ 0xE93BE651) & a12;
  v21 = ((2 * (a12 ^ 0xAA7271AF)) ^ 0x869264DC) & (a12 ^ 0xAA7271AF) ^ (2 * (a12 ^ 0xAA7271AF)) & 0x4349326E;
  v22 = v21 ^ 0x41491222;
  v23 = (v21 ^ 0x2E) & (4 * v20) ^ v20;
  v24 = ((4 * v22) ^ 0xD24C9B8) & v22 ^ (4 * v22) & 0x43493268;
  v25 = (v24 ^ 0x1000026) & (16 * v23) ^ v23;
  v26 = ((16 * (v24 ^ 0x42493246)) ^ 0x349326E0) & (v24 ^ 0x42493246) ^ (16 * (v24 ^ 0x42493246)) & 0x43493260;
  v27 = v25 ^ 0x4349326E ^ (v26 ^ 0x1220E) & (v25 << 8);
  v28 = a12 ^ (2 * ((v27 << 16) & 0x43490000 ^ v27 ^ ((v27 << 16) ^ 0x326E0000) & (((v26 ^ 0x4348100E) << 8) & 0x43490000 ^ 0x2490000 ^ (((v26 ^ 0x4348100E) << 8) ^ 0x49320000) & (v26 ^ 0x4348100E))));
  v30 = (v28 & 0xF) != 0xD || v28 == a1 + 1798900023;
  return (*(v19 + 8 * ((v30 * (((a1 + 955146489) & 0xC711E7B9) - 26244)) ^ (a1 + 5537))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_1001C6CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11, char a12, int a13)
{
  a12 = 35 * (&a11 ^ 0x45) + (*(v15 + 5) ^ 0x7F) + (*(v15 + 5) << (((v13 - 7) & 0xBF) + 74)) - 24;
  a11 = (v13 + 421154439) ^ (139493411 * (&a11 ^ 0xC2DE145));
  v16 = (*(v14 + 8 * (v13 ^ 0x8B5C)))(&a11);
  return (*(v14 + 8 * ((11639 * (a13 == -371865839)) ^ v13)))(v16);
}

void sub_1001C6DD8()
{
  if (v0 == 238972113)
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891401;
  }

  *(v1 + 32) = v2;
}

uint64_t sub_1001C7290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, char a41)
{
  v42 = ((a41 & 0x3F ^ 0x33FA075A) - 1425496856) ^ ((a41 & 0x3F ^ 0xB1D063D2) + 690143344) ^ ((a41 & 0x3F ^ 0x822A6488) + 450414390);
  *(&a32 + v42 + 1728928834) = -33;
  return (*(v41 + 8 * ((54703 * (v42 + 1728928778 < 0xFFFFFFC8)) ^ (a18 - 18393))))(a1, a2, a3);
}

uint64_t sub_1001C73AC@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v2[291] = v1;
  *a1 += 256;
  v2[293] = v1 + 256;
  *a1 += 256;
  v2[295] = v1 + 512;
  *a1 += 256;
  v2[297] = v1 + 768;
  *a1 += (v3 - 1614109611) & 0x603591DF ^ 0x8189;
  v2[299] = v1 + 1024;
  *a1 += 256;
  v2[301] = v1 + 1280;
  *a1 += 256;
  v2[303] = v1 + 1536;
  *a1 += 256;
  v2[305] = v1 + 1792;
  *a1 += 256;
  v2[307] = v1 + 2048;
  *a1 += 256;
  v2[309] = v1 + 2304;
  *a1 += 256;
  v2[311] = v1 + 2560;
  *a1 += 256;
  v2[313] = v1 + 2816;
  *a1 += 256;
  v2[315] = v1 + 3072;
  *a1 += 256;
  v2[317] = v1 + 3328;
  *a1 += 256;
  v2[319] = v1 + 3584;
  *a1 += 256;
  v2[321] = v1 + 3840;
  *a1 += 256;
  return (*(v4 + 8 * v3))();
}

uint64_t sub_1001C75E0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, char a13, int a14, int a15, char a16, char a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24, char a25, char a26, char a27, char a28, char a29, char a30, char a31, _BYTE *a32, uint64_t a33, uint64_t a34, char *a35, int a36)
{
  v55 = v37 < a4;
  v44 = *(v42 + 16);
  v45 = (v36 + v39);
  a16 = a13 ^ *v38 ^ 0xB7 ^ *v45;
  a17 = v45[1] ^ v38[1] ^ v40;
  a18 = v45[2] ^ v38[2] ^ v40;
  a19 = v45[3] ^ v38[3] ^ v40;
  a20 = v45[4] ^ v38[4] ^ v40;
  a21 = v45[5] ^ v38[5] ^ v40;
  a22 = v45[6] ^ v38[6] ^ v40;
  a23 = v45[7] ^ v38[7] ^ v40;
  a24 = v45[8] ^ v38[8] ^ v40;
  a25 = v45[9] ^ v38[9] ^ v40;
  a26 = v45[10] ^ v38[10] ^ v40;
  a27 = v45[11] ^ v38[11] ^ v40;
  a28 = v45[12] ^ v38[12] ^ v40;
  a29 = v45[13] ^ v38[13] ^ v40;
  a30 = v45[14] ^ v38[14] ^ v40;
  v46 = v38[15];
  a31 = v45[15] ^ v46 ^ v40;
  v47 = (v41 + v39);
  v47[15] = v46;
  v47[14] = v38[14];
  v47[13] = v38[13];
  v47[12] = v38[12];
  v47[11] = v38[11];
  v47[10] = v38[10];
  v47[9] = v38[9];
  v47[8] = v38[8];
  v47[7] = v38[7];
  v47[6] = v38[6];
  v47[5] = v38[5];
  v47[4] = v38[4];
  v47[3] = v38[3];
  v47[2] = v38[2];
  v47[1] = v38[1];
  *v47 = *v38;
  a34 = v44;
  a35 = &a16;
  a36 = a12;
  a32 = v38;
  v48 = (*(v43 + 8 * a11))(&a32);
  *v47 ^= *v38 ^ v40;
  v47[1] ^= v38[1] ^ v40;
  v47[2] ^= v38[2] ^ v40;
  v47[3] ^= v38[3] ^ v40;
  v47[4] ^= v38[4] ^ v40;
  v47[5] ^= v38[5] ^ v40;
  v47[6] ^= v38[6] ^ v40;
  v47[7] ^= v38[7] ^ v40;
  v47[8] ^= v38[8] ^ v40;
  v47[9] ^= v38[9] ^ v40;
  v47[10] ^= v38[10] ^ v40;
  v47[11] ^= v38[11] ^ v40;
  v47[12] ^= v38[12] ^ v40;
  v47[13] ^= v38[13] ^ v40;
  v49 = v47[15];
  v47[14] ^= v38[14] ^ v40;
  v50 = ((((v39 + 32) ^ 0xAF8807BA) - 444062936) ^ (((v39 + 32) ^ 0xC4ADA58) + 1179320006) ^ (((v39 + 32) ^ 0xA3C2DDE2) - 373098112)) + 2039318428;
  v51 = v50 < 0xC38DAC3A;
  v52 = v49 ^ v38[15] ^ v40;
  v53 = v50 > v37;
  if (v55 != v51)
  {
    v53 = v51;
  }

  v47[15] = v52;
  return (*(v43 + 8 * ((57 * v53) ^ a14)))(v48);
}

uint64_t sub_1001C7CFC@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>, int32x4_t a6@<Q1>, int8x16_t a7@<Q2>, int32x4_t a8@<Q3>, int8x16_t a9@<Q4>, int32x4_t a10@<Q5>, int32x4_t a11@<Q6>, int8x16_t a12@<Q7>, int8x16_t a13, int8x16_t a14, int8x16_t a15)
{
  v39 = *(a1 + 40);
  v40 = ((v15 - ((v15 * v18) >> 11) * v19) ^ a2) + 2 * (v15 - ((v15 * v18) >> 11) * v19);
  v41 = (((v15 | 1) - (((v15 | 1u) * v18) >> 11) * v19) ^ a2) + 2 * ((v15 | 1) - (((v15 | 1u) * v18) >> 11) * v19);
  v42 = (((v15 | 2) - (((v15 | 2u) * v18) >> 11) * v19) ^ a2) + 2 * ((v15 | 2) - (((v15 | 2u) * v18) >> 11) * v19);
  v43 = (((v15 | 4) - (((v15 | 4u) * v18) >> 11) * v19) ^ a2) + 2 * ((v15 | 4) - (((v15 | 4u) * v18) >> 11) * v19);
  v44 = ((v16 - 18 + v15 + 109 - (((v16 - 18 + v15 + 109) * v18) >> 11) * v19) ^ a2) + 2 * (v16 - 18 + v15 + 109 - (((v16 - 18 + v15 + 109) * v18) >> 11) * v19);
  v45 = (((v15 | 5) - (((v15 | 5u) * v18) >> 11) * v19) ^ a2) + 2 * ((v15 | 5) - (((v15 | 5u) * v18) >> 11) * v19);
  v46 = (((v15 | 6) - (((v15 | 6u) * v18) >> 11) * v19) ^ a2) + 2 * ((v15 | 6) - (((v15 | 6u) * v18) >> 11) * v19);
  v47 = (((v15 | 7) - (((v15 | 7u) * v18) >> 11) * v19) ^ a2) + 2 * ((v15 | 7) - (((v15 | 7u) * v18) >> 11) * v19);
  v22.i8[0] = *(v39 + (v40 + a3));
  v22.i8[4] = *(v39 + (v41 + a3));
  v23.i8[0] = *(v39 + (v43 + a3));
  v22.i8[8] = *(v39 + (v42 + a3));
  v23.i8[4] = *(v39 + (v45 + a3));
  v23.i8[8] = *(v39 + (v46 + a3));
  v22.i8[12] = *(v39 + (v44 + a3));
  v23.i8[12] = *(v39 + (v47 + a3));
  a12.i64[0] = *(*(a1 + 24) + v15);
  v48 = vqtbl1q_s8(a12, a14);
  v49 = vqtbl1q_s8(a12, a13);
  v50 = veorq_s8(vaddq_s32(veorq_s8(v23, a15), a6), vaddq_s32(veorq_s8(v23, a7), a8));
  v51 = vaddq_s32(veorq_s8(veorq_s8(vaddq_s32(veorq_s8(v49, v24), v25), vaddq_s32(veorq_s8(v49, v26), v27)), vaddq_s32(veorq_s8(v49, v28), v29)), v30);
  v52 = vaddq_s32(veorq_s8(veorq_s8(vaddq_s32(veorq_s8(v48, v24), v25), vaddq_s32(veorq_s8(v48, v26), v27)), vaddq_s32(veorq_s8(v48, v28), v29)), v30);
  v53 = vaddq_s32(veorq_s8(veorq_s8(vaddq_s32(veorq_s8(v22, a15), a6), vaddq_s32(veorq_s8(v22, a7), a8)), vaddq_s32(veorq_s8(v22, a9), a10)), a11);
  v54 = vmulq_s32(v52, v32);
  v55 = vaddq_s32(veorq_s8(v50, vaddq_s32(veorq_s8(v23, a9), a10)), a11);
  v56 = vmulq_s32(v52, v53);
  v50.i8[0] = *(v39 + (a4 - v40));
  v50.i8[4] = *(v39 + (a4 - v41));
  v50.i8[8] = *(v39 + (a4 - v42));
  v57 = vmlaq_s32(v54, v53, v31);
  v50.i8[12] = *(v39 + (a4 - v44));
  v53.i8[0] = *(v39 + (a4 - v43));
  v53.i8[4] = *(v39 + (a4 - v45));
  v53.i8[8] = *(v39 + (a4 - v46));
  v53.i8[12] = *(v39 + (a4 - v47));
  v58 = vaddq_s32(vmlaq_s32(v56, v57, v33), vaddq_s32(veorq_s8(veorq_s8(vaddq_s32(veorq_s8(v50, v34), v35), vaddq_s32(veorq_s8(v50, v36), v37)), vaddq_s32(veorq_s8(v50, v38), v20)), v21));
  v59 = vaddq_s32(vmlaq_s32(vmulq_s32(v51, v55), vmlaq_s32(vmulq_s32(v51, v32), v55, v31), v33), vaddq_s32(veorq_s8(veorq_s8(vaddq_s32(veorq_s8(v53, v34), v35), vaddq_s32(veorq_s8(v53, v36), v37)), vaddq_s32(veorq_s8(v53, v38), v20)), v21));
  *v17 = vmulq_s32(v58, v58);
  v17[1] = vmulq_s32(v59, v59);
  return (*(a5 + 8 * ((10959 * (v15 == 32)) ^ v16)))();
}

uint64_t sub_1001C8074@<X0>(int a1@<W4>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v14 = a12 + (((v12 ^ 0xB28753D4) + 1299754028) ^ ((v12 ^ 0xE74DFD22) + 414319326) ^ (((((a1 - 42974) | 0x3880) - 1138808273) ^ v12) + 1138791961));
  v15 = v14 < 0x3FEDEE3E;
  v16 = a2 - 425111052 < v14;
  if ((a2 - 425111052) < 0x3FEDEE3E != v15)
  {
    v16 = v15;
  }

  return (*(v13 + 8 * ((79 * !v16) ^ a1)))();
}

uint64_t sub_1001C8138@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, int a9@<W8>)
{
  v25 = v10 - 1;
  *(v23 - 144) = v25;
  v26 = (v13 ^ v9 ^ v16) & (2 * (v9 & v20)) ^ v9 & v20;
  v27 = ((2 * (v9 ^ v24)) ^ v18) & (v9 ^ v24) ^ (2 * (v9 ^ v24)) & v19;
  v28 = v9 ^ (2 * ((v21 ^ (4 * v27)) & (v27 ^ a6) & (16 * (v27 & (4 * v26) ^ v26)) ^ v27 & (4 * v26) ^ v26));
  v29 = (((v28 ^ a8) + v14) ^ ((v28 ^ v15) + v22) ^ ((v28 ^ 0xA6) + v12)) + a2;
  *(a1 + v25) = v29 * (v9 + a7) + (v29 * a4 + (v9 + a7) * a3) * a5 - 74;
  return (*(v17 + 8 * (((*(v23 - 144) == 0) * v11) ^ a9)))();
}

uint64_t sub_1001C8374()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1326 ^ (140 * (v0 - 1314434229 != (((v0 - 729) | 0x6610) ^ 0xD7999B72))))))();
}

uint64_t sub_1001C8414@<X0>(uint64_t a1@<X8>)
{
  v3 = (((*(a1 + 16) ^ 0xD4BBA22D) + 725900755) ^ ((*(a1 + 16) ^ 0xCE07B937) + 838354633) ^ ((*(a1 + 16) ^ ((v1 - 35428) | 0x2088) ^ 0xF369F8F1) + 211166197)) - 1194043532;
  v4 = (((LODWORD(STACK[0x26C]) ^ 0x4A3967B7) + (((v1 + 1074755643) | 0xA9C5C000) ^ 0x5C135F58)) ^ ((LODWORD(STACK[0x26C]) ^ 0x17C3A9F5) - 398698997) ^ ((LODWORD(STACK[0x26C]) ^ 0xB42F0953) + 1271985837)) - 1194043544;
  v5 = v3 < 0xCEFE9057;
  v6 = v3 > v4;
  if (v4 < 0xCEFE9057 != v5)
  {
    v6 = v5;
  }

  v7 = STACK[0x508];
  if (v6)
  {
    v7 = 371891407;
  }

  return (*(v2 + 8 * ((4962 * (v7 == -371865839)) ^ v1)))();
}

uint64_t sub_1001C8588@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v39 = ((a1 + 473904321) & 0xE3C03FF5 ^ 0xFFFFFFFFFFFFE13BLL) + v37;
  *(a35 + v39) = *(v36 + v39 + v35);
  return (*(v38 + 8 * ((2 * (v39 == 0)) | (16 * (v39 == 0)) | a1)))();
}

uint64_t sub_1001C8620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>, int8x16_t a6@<Q0>, int8x8_t a7@<D1>, int8x8_t a8@<D2>)
{
  v16.val[0].i64[0] = (v10 + a1 - 1) & 0xF;
  v16.val[0].i64[1] = (v10 + a1 + 14) & 0xF;
  v16.val[1].i64[0] = (v10 + a1 + 13) & 0xF;
  v16.val[1].i64[1] = (v10 + a1 + v11) & 0xF;
  v16.val[2].i64[0] = (v10 + a1 + 11) & 0xF;
  v16.val[2].i64[1] = (v10 + a1 + 10) & 0xF;
  v16.val[3].i64[0] = (v10 + a1 + 9) & 0xF;
  v16.val[3].i64[1] = (v10 + a1) & 0xF ^ 8;
  *(a2 + v10) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a3 + v10), *(a5 + v16.val[0].i64[0] - 7)), veor_s8(*(v8 + v16.val[0].i64[0] - 7), *(v16.val[0].i64[0] + v9 - 5)))), a8), vmul_s8(*&vqtbl4q_s8(v16, a6), a7)));
  return (*(v14 + 8 * (((v13 == a1) * a4) ^ v12)))(a1 - 8, a2 - 8, a3 - 8);
}

uint64_t sub_1001C86F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = (v9 ^ v6) + 2 * (v9 & v6);
  v14 = v13 ^ v6;
  v15 = *(v8 + 8 * (v7 ^ 0x1C4B));
  v16 = *(v15 - 527405895);
  v17 = *(v8 + 8 * (v7 - 3650)) + 4 * v16;
  v18 = *(v17 - 1940437438);
  if (v13 == v6)
  {
    v19 = *(v17 - 1940437438);
  }

  else
  {
    v19 = 0;
  }

  *(v17 - 1940437438) = (v19 + (v18 + ((v7 - 8019) & 0xFFFFB7BF)) * v14) * v18;
  *(v15 - 527405895) = (v16 + 1) % 6u;
  v20 = *v11;
  v21 = (*(v11 + 4) ^ 0xFDF7539D) + 383239241 + ((2 * *(v11 + 4)) & 0x13A);
  v22 = (2 * (v21 & 0xC08C6)) & 4 ^ (v21 & 0xC08C6 | 0xD035400) ^ (2 * (v21 & 0xC08C6)) & (v21 ^ 0xB51F9CC1);
  v23 = (2 * (v21 ^ 0xB51F9CC1)) & 0x1000406 ^ 0x89022401 ^ ((2 * (v21 ^ 0xB51F9CC1)) ^ 0x2000880E) & (v21 ^ 0xB51F9CC1);
  v24 = (4 * v22) & 0x30006400 ^ v22 ^ ((4 * v22) ^ 0x4019000) & v23;
  v25 = (4 * v23) & 0xB902E404 ^ 0x19006403 ^ ((4 * v23) ^ 0xE40B901C) & v23;
  v26 = (16 * v24) & 0xB902E400 ^ v24 ^ ((16 * v24) ^ 0x100E4000) & v25;
  *v12 = 70;
  v12[2] ^= 4u;
  v12[4] = v12[4] & 0xC3 | 0x20;
  return (*(v10 + 8 * v7))(956432384, ((v26 ^ (v26 << 8) & 0xB902E400 ^ ((v26 << 8) ^ 0x2A40000) & ((16 * v25) & 0xB902E400 ^ 0x2900A407 ^ ((16 * v25) ^ 0x902E4070) & v25) ^ 0xA8004007) << 16) ^ 0x64070000, 2010508531, v18, v20 ^ 0xE9D5C711, a6);
}

void sub_1001C8A5C(_DWORD *a1)
{
  v1 = *a1 ^ (155453101 * (((a1 | 0x34FFFF99) - (a1 | 0xCB000066) - 889192346) ^ 0xD2D9E456));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1001C8B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x260]) = 1497668682;
  LODWORD(STACK[0x2B8]) = 1497668682;
  LODWORD(STACK[0x344]) = 1497668682;
  LODWORD(STACK[0x2AC]) = 1497668682;
  LODWORD(STACK[0x294]) = -371865839;
  return (*(v5 + 8 * ((((v6 ^ 0xFFFFCE01) + 147 * (v6 ^ 0x9FD7)) * (v3 != v4)) ^ v6)))(a1, a2, a3, 371891400);
}

uint64_t sub_1001C8C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39)
{
  v46 = v39 + v45 - 484949660;
  v47 = (v46 ^ 0x8CA7923B) & (2 * (v46 & 0xCE379ABB)) ^ v46 & 0xCE379ABB;
  v48 = ((2 * (v46 ^ 0x80CE923D)) ^ 0x9DF2110C) & (v46 ^ 0x80CE923D) ^ (2 * (v46 ^ 0x80CE923D)) & 0x4EF90886;
  v49 = ((v43 ^ 0x433C93C) - 732139425) ^ v43 ^ ((v43 ^ 0xD191C1F2) + 33454225) ^ ((v43 ^ 0x855CB1AE) + 1429407949) ^ ((v43 ^ 0x7F6EFFFD) - 1358870880) ^ v46 ^ (2 * (((4 * v48) ^ 0x3BE42210) & v48 & (16 * ((v48 ^ 0x8F00004) & (4 * v47) ^ v47)) ^ (v48 ^ 0x8F00004) & (4 * v47) ^ v47));
  v50 = ((v49 ^ 0x899749F2) - 1371294977) ^ ((v49 ^ 0xBFAE07F5) - 1736770310) ^ ((v49 ^ 0x568E9221) + 1901750574);
  return (*(a36 + 8 * ((30 * (((-v41 - 721324746 * v50 + a39 + (*(v44 + 4 * v40) - 76659667) * (v50 - 1197680427) - 1308355090) & 7) != 1)) ^ v42)))();
}

uint64_t sub_1001C8F18()
{
  v4 = ((v1 << (v2 ^ 0xC0)) & 2) + (v1 ^ 1);
  v6 = *(v3 + 8) == v3 || v4 > 0x13;
  return (*(v0 + 8 * ((23 * v6) ^ v2)))();
}

void sub_1001C8F84(uint64_t a1)
{
  v1 = 1012831759 * ((2 * (a1 & 0x446EA6AB) - a1 - 1148102316) ^ 0xAB024FDE);
  v2 = *(a1 + 8) ^ v1;
  v3 = *(a1 + 24) + v1;
  v4 = 634647737 * ((&v8 - 2 * (&v8 & 0x4D048468) + 1292141673) ^ 0x2092AB95);
  v8 = v4 - 1431125373;
  v9 = &v6;
  v10 = v2 - v4 + 12030;
  v5 = *(&off_1010A0B50 + v2 - 7865) - 810145054;
  (*&v5[8 * (v2 ^ 0xE9F8)])(&v8);
  __asm { BRAA            X13, X17 }
}

void sub_1001C9164()
{
  if (v0 == 2126504376)
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891401;
  }

  *(v1 + 36) = v2;
}

uint64_t sub_1001C91C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v12 = (v9 - 1) & 0xF;
  v13 = v4 + 1;
  v14 = (v8 - *(v11 - 184)) >= 0x10 && v4 + 1 + v6 - v9 + v12 >= (a4 ^ 0xFD21u) - 49934;
  v15 = v4 + v5 - v9 + v12 + 8;
  v18 = !v14 || v15 < 0x10 || v13 + v7 - v9 + v12 < (((a4 + 37303241) | 0x44820516u) ^ 0x46BB770EuLL);
  return (*(v10 + 8 * ((125 * v18) ^ a4)))(a1, a2, v9);
}

uint64_t sub_1001C92C8@<X0>(uint64_t a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, int a4@<W8>)
{
  v9 = v6 ^ a2;
  v10 = *(a1 + v8 * a3);
  v11 = ((~(v10 << ((v9 ^ 0x43) - 92)) | 0xFF01FFFF) & ((v10 << 24) ^ 0xA476BF15) | (v10 << ((v9 ^ 0x43) - 92)) & 0x890000) ^ 0xA476BF15 | (v10 >> 8) & 0xFF00;
  v15 = ((HIBYTE(v10) ^ 0x9C0CB77) & ~v11 | v11 & 0xF63F3400) != 0x9C0CB77 || v5 != 0 || a4 != 0 || v4 != 0;
  return (*(v7 + 8 * ((91 * v15) ^ v9)))();
}

uint64_t sub_1001C93A0(uint64_t a1, uint64_t a2, int a3)
{
  v12 = v10 - 1;
  *(v9 + v12) = *(v6 + (v12 & 0xF)) ^ *(v4 + v12) ^ *(v5 + (v12 & 0xF)) ^ ((v12 & 0xF) * v3) ^ *(v7 + (v12 & 0xF));
  return (*(v11 + 8 * (((v12 == a1) * a3) ^ v8)))();
}

uint64_t sub_1001C9460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>, __n128 a6@<Q1>, int8x16_t a7@<Q4>, uint64_t a8@<D5>, int8x16_t a9@<Q6>)
{
  v17 = (a2 - 1) & 0xF;
  v19.i64[0] = vqtbl4q_s8(*(&a6 - 1), a7).u64[0];
  v19.i64[1] = a8;
  v20 = vrev64q_s8(vmulq_s8(v19, a9));
  *(a5 + a2) = veorq_s8(veorq_s8(veorq_s8(*(v15 + v17 - 15), *(v11 + a2)), veorq_s8(*(v14 + v17 - 15), *(v17 + v13 - 13))), vextq_s8(v20, v20, 8uLL));
  return (*(v16 + 8 * (((a3 != 0) * a4) ^ v12)))(a1, a2 - 16, a3 - 16);
}

uint64_t sub_1001C94D8()
{
  STACK[0xA58] = 0;
  LODWORD(STACK[0xA90]) = -371865839;
  return (*(v1 + 8 * (v0 - 10673)))();
}

uint64_t sub_1001C955C()
{
  v2 = STACK[0x40C];
  LODWORD(STACK[0x608]) = STACK[0x304];
  LODWORD(STACK[0x60C]) = 1582395875;
  LODWORD(STACK[0x610]) = LODWORD(STACK[0x374]) ^ 0xE9D5C711;
  LODWORD(STACK[0x828]) = (v0 - 371888316) ^ v2;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_1001C9880@<X0>(unsigned int a1@<W5>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x318]) = 0;
  v69 = 1851 * (v66 ^ 0x1503);
  LODWORD(STACK[0x338]) = v69;
  v70 = (v69 + 28815) | 0x2181;
  v71 = a1 & 0xFFFFFFF8 ^ 0x4A167567;
  *(v68 - 208) = v71;
  v72 = *(a2 + v71);
  v73 = STACK[0x2F0];
  v74 = *(STACK[0x2F0] + (v72 ^ 0x86));
  v75 = a1 & 0xFFFFFFF2 ^ 0x4A16756FLL;
  *(v68 - 176) = v75;
  v76 = v74 ^ v72;
  LOBYTE(v72) = *(a2 + v75);
  LODWORD(STACK[0x324]) = v70;
  v77 = STACK[0x2E8];
  LODWORD(v72) = *(STACK[0x2E8] + 4 * ((v70 ^ v72) ^ 3u));
  v78 = v66;
  v79 = a1 ^ 0x4A167566;
  *(v68 - 152) = v79;
  v80 = (v72 ^ 0xEFE81851) >> (v72 & 4) >> (v72 & 4 ^ 4);
  v81 = STACK[0x2E0];
  v82 = *(STACK[0x2E0] + 4 * (*(a2 + v79) ^ 0xF1));
  v83 = a1 & 0xFFFFFFFB ^ 0x4A167566;
  v84 = a1 & 0xFFFFFFF7 ^ 0x4A16756ELL;
  *(v68 - 168) = v84;
  *(v68 - 160) = v83;
  v85 = *(a2 + v83);
  v86 = *(v81 + 4 * (*(a2 + v84) ^ 0x6FLL));
  v87 = a1 & 0xFFFFFFF0 ^ 0x4A16756FLL;
  *(v68 - 184) = v87;
  LODWORD(v84) = *(v81 + 4 * (v85 ^ 0x75));
  LODWORD(v85) = *(v73 + (*(a2 + v87) ^ 0x96)) ^ *(a2 + v87);
  v88 = a1 & 0xFFFFFFFA ^ 0x4A167567;
  *(v68 - 192) = v88;
  v89 = *(v77 + 4 * (*(a2 + v88) ^ 0xD1));
  v90 = a1 & 0xFFFFFFF4 ^ 0x4A16756FLL;
  *(v68 - 216) = v90;
  v91 = (v89 ^ (v89 >> 4) ^ 0xE11699D4) >> (v84 & 2 ^ 2) >> (v84 & 2);
  v92 = *(v73 + (*(a2 + v90) ^ 0x48)) ^ *(a2 + v90);
  v93 = a1 & 0xFFFFFFFC ^ 0x4A167567;
  *(v68 - 224) = v93;
  v94 = *(v73 + (*(a2 + v93) ^ 0x62)) ^ *(a2 + v93);
  v95 = a1 & 0xFFFFFFF9 ^ 0x4A167566;
  *(v68 - 200) = v95;
  v96 = v84 ^ v76;
  v97 = *(a2 + v95);
  v98 = a1 & 0xFFFFFFF6 ^ 0x4A16756FLL;
  *(v68 - 256) = v98;
  v99 = STACK[0x2D8];
  v100 = v96 ^ v89 ^ *(STACK[0x2D8] + 4 * (v97 ^ 0x9B));
  v101 = a1 & 0xFFFFFFFD ^ 0x4A167566;
  *(v68 - 232) = v101;
  v102 = v100 ^ v97 ^ 0xE6 ^ ((v97 ^ 0xE6) - 555800412);
  v103 = *(a2 + v101);
  LODWORD(v101) = v102 ^ v91;
  v104 = v82 ^ v103 ^ 0x53 ^ ((v103 ^ 0x53) - 555800412);
  v105 = *(v77 + 4 * (*(a2 + v98) ^ 0xB6));
  LODWORD(v103) = *(v99 + 4 * (v103 ^ 0x2E));
  v106 = a1 & 0xFFFFFFFE ^ 0x4A167567;
  STACK[0x348] = v106;
  v107 = v103 ^ v104 ^ v94;
  v108 = a1 & 0xFFFFFFF5 ^ 0x4A16756ELL;
  *(v68 - 240) = v108;
  LODWORD(v103) = *(v77 + 4 * (*(a2 + v106) ^ 0x9CLL));
  v109 = *(a2 + v108);
  LODWORD(v108) = v107 ^ v103 ^ (v103 >> 2) ^ (v103 >> 6);
  v110 = v92 ^ *(v99 + 4 * (v109 ^ 0x29));
  v111 = v72 ^ 0x4A57FED6;
  v112 = a1 & 0xFFFFFFF3 ^ 0x4A16756ELL;
  *(v68 - 248) = v112;
  LODWORD(v72) = v105 ^ v86 ^ (v105 >> 2) ^ (v105 >> 6) ^ v110 ^ v109 ^ 0x54 ^ ((v109 ^ 0x54) - 555800412);
  v113 = *(v81 + 4 * (*(a2 + v112) ^ 0x11));
  v114 = a1 & 0xFFFFFFF1 ^ 0x4A16756ELL;
  STACK[0x340] = v114;
  v115 = v111 ^ ((v80 ^ v111) >> 2) ^ v85 ^ v113 ^ *(v99 + 4 * (*(a2 + v114) ^ 0xF0)) ^ *(a2 + v114) ^ 0x8D ^ ((*(a2 + v114) ^ 0x8D) - 555800412);
  LODWORD(v114) = STACK[0x29C];
  LODWORD(STACK[0x334]) = v101;
  LODWORD(v109) = v114 ^ v101;
  LODWORD(v103) = (v114 ^ v101) >> 24;
  LODWORD(v85) = LODWORD(STACK[0x2D0]) ^ (v103 - 812206219);
  LODWORD(v114) = STACK[0x2A0];
  LODWORD(STACK[0x330]) = v108;
  v116 = v114 ^ v108;
  v117 = ((v114 ^ v108) >> 16);
  v118 = *(&off_1010A0B50 + v78 - 2071) - 415511343;
  LODWORD(v103) = v85 ^ (v117 + v67) ^ *&v118[4 * (v103 ^ 0xB9)];
  v119 = *(&off_1010A0B50 + (v78 ^ 0x1B42)) - 455807758;
  v120 = *(&off_1010A0B50 + v78 - 739);
  LODWORD(v103) = v103 ^ *&v119[4 * (v117 ^ 0x2E)];
  v121 = *(&off_1010A0B50 + v78 - 3879) - 266580671;
  LODWORD(v114) = STACK[0x298];
  LODWORD(STACK[0x32C]) = v72;
  LODWORD(v81) = v114 ^ v72;
  LODWORD(v103) = v103 ^ *&v121[4 * (v114 ^ v72)];
  v122 = v120 - 477721691;
  LODWORD(v114) = STACK[0x294];
  LODWORD(STACK[0x328]) = v115;
  v123 = v114 ^ v115;
  v124 = ((v114 ^ v115) >> 8);
  LODWORD(v120) = (v124 ^ 0x77144AF8) + v124;
  v125 = v103 ^ *(v122 + 4 * (v124 ^ 0xBEu));
  v126 = LODWORD(STACK[0x290]) ^ *&v118[4 * (HIBYTE(v116) ^ 0xB9)] ^ (HIBYTE(v116) - 812206219) ^ *&v119[4 * (BYTE2(v123) ^ 0x2E)] ^ *(v122 + 4 * (BYTE1(v81) ^ 0xBEu)) ^ *&v121[4 * v109] ^ ((BYTE1(v81) ^ 0x77144AF8) + BYTE1(v81)) ^ (BYTE2(v123) + v67) ^ 0xB4CE242B;
  v127 = LODWORD(STACK[0x28C]) ^ (BYTE2(v109) + v67) ^ (BYTE3(v81) - 812206219) ^ ((BYTE1(v116) ^ 0x77144AF8) + BYTE1(v116)) ^ *&v118[4 * (BYTE3(v81) ^ 0xB9)] ^ *&v119[4 * (BYTE2(v109) ^ 0x2E)] ^ *(v122 + 4 * (BYTE1(v116) ^ 0xBEu)) ^ *&v121[4 * (v114 ^ v115)] ^ 0xF9151AF0;
  v128 = LODWORD(STACK[0x288]) ^ ((BYTE1(v109) ^ 0x77144AF8) + BYTE1(v109)) ^ (BYTE2(v81) + v67) ^ (HIBYTE(v123) - 812206219) ^ *&v119[4 * (BYTE2(v81) ^ 0x2E)] ^ *(v122 + 4 * (BYTE1(v109) ^ 0xBEu)) ^ *&v121[4 * v116] ^ *&v118[4 * (HIBYTE(v123) ^ 0xB9)];
  v129 = LODWORD(STACK[0x2D4]) ^ v120 ^ 0xE4A6E885 ^ v125;
  LODWORD(STACK[0x33C]) = *(v68 - 124) < 0xC488B8A8;
  if ((v125 & 0x8000) != 0)
  {
    v130 = 128;
  }

  else
  {
    v130 = -128;
  }

  v131 = v128 ^ 0x78C9D8D8;
  v132 = LODWORD(STACK[0x308]) ^ (HIBYTE(v126) - 812206219) ^ *&v118[4 * (HIBYTE(v126) ^ 0xB9)] ^ *&v119[4 * (BYTE2(v131) ^ 0x2E)] ^ *(v122 + 4 * (BYTE1(v127) ^ 0xBEu)) ^ ((BYTE1(v127) ^ 0x77144AF8) + BYTE1(v127)) ^ *&v121[4 * v129] ^ (BYTE2(v131) + v67) ^ 0x68E4038;
  v133 = LODWORD(STACK[0x2C8]) ^ (BYTE2(v127) + v67) ^ (HIBYTE(v131) - 812206219) ^ (((v130 + BYTE1(v129)) ^ 0x80) + ((v130 + BYTE1(v129)) ^ 0x77144A78)) ^ *&v119[4 * (BYTE2(v127) ^ 0x2E)] ^ *&v118[4 * (HIBYTE(v131) ^ 0xB9)] ^ *&v121[4 * v126] ^ *(v122 + 4 * ((v130 + BYTE1(v129)) ^ 0x3Eu));
  v134 = LODWORD(STACK[0x284]) ^ (BYTE2(v126) + v67) ^ (HIBYTE(v129) - 812206219) ^ *&v118[4 * (HIBYTE(v129) ^ 0xB9)] ^ *&v119[4 * (BYTE2(v126) ^ 0x2E)] ^ ((BYTE1(v131) ^ 0x77144AF8) + BYTE1(v131)) ^ *(v122 + 4 * (BYTE1(v131) ^ 0xBEu)) ^ *&v121[4 * v127] ^ 0xD8B13C87;
  v135 = LODWORD(STACK[0x280]) ^ (BYTE2(v129) + v67) ^ ((BYTE1(v126) ^ 0x77144AF8) + BYTE1(v126)) ^ (HIBYTE(v127) - 812206219) ^ *&v118[4 * (HIBYTE(v127) ^ 0xB9)] ^ *&v119[4 * (BYTE2(v129) ^ 0x2E)] ^ *(v122 + 4 * (BYTE1(v126) ^ 0xBEu)) ^ *&v121[4 * v131] ^ 0x15415F3;
  v136 = LODWORD(STACK[0x27C]) ^ (HIBYTE(v132) - 812206219) ^ *&v118[4 * (HIBYTE(v132) ^ 0xB9)] ^ *&v119[4 * (BYTE2(v133) ^ 0xCC)] ^ *&v121[4 * v134] ^ ((BYTE1(v135) ^ 0x77144AF8) + BYTE1(v135)) ^ *(v122 + 4 * (BYTE1(v135) ^ 0xBEu)) ^ ((BYTE2(v133) ^ 0xE2) + v67);
  v137 = LODWORD(STACK[0x2C4]) ^ (BYTE2(v134) + v67) ^ ((BYTE1(v132) ^ 0x77144AF8) + BYTE1(v132)) ^ (HIBYTE(v135) - 812206219) ^ *&v118[4 * (HIBYTE(v135) ^ 0xB9)] ^ *&v119[4 * (BYTE2(v134) ^ 0x2E)] ^ *(v122 + 4 * (BYTE1(v132) ^ 0xBEu)) ^ *&v121[4 * (LODWORD(STACK[0x278]) ^ v133)];
  v138 = LODWORD(STACK[0x304]) ^ (BYTE2(v132) + v67) ^ (HIBYTE(v134) - 812206219) ^ ((BYTE1(v133) ^ 0x86) + (BYTE1(v133) ^ 0x77144A7E)) ^ *&v118[4 * (HIBYTE(v134) ^ 0xB9)] ^ *&v119[4 * (BYTE2(v132) ^ 0x2E)] ^ *(v122 + 4 * (BYTE1(v133) ^ 0x38u)) ^ *&v121[4 * v135] ^ 0xC08BA6ED;
  v139 = LODWORD(STACK[0x274]) ^ (BYTE2(v135) + v67) ^ ((BYTE1(v134) ^ 0x77144AF8) + BYTE1(v134)) ^ ((HIBYTE(v133) ^ 0x30) - 812206219) ^ *&v118[4 * (HIBYTE(v133) ^ 0x89)] ^ *&v119[4 * (BYTE2(v135) ^ 0x2E)] ^ *(v122 + 4 * (BYTE1(v134) ^ 0xBEu)) ^ *&v121[4 * v132] ^ 0xF123879A;
  v140 = ((v136 ^ 0x3800) >> 8);
  v141 = LODWORD(STACK[0x2C0]) ^ ((BYTE2(v138) ^ v67) + ((v138 >> 15) & 0x1EC)) ^ ((v140 ^ 0x77144AF8) + v140) ^ ((HIBYTE(v137) ^ 0x40) - 812206219) ^ *&v118[4 * (HIBYTE(v137) ^ 0xF9)] ^ *&v119[4 * (BYTE2(v138) ^ 0x2E)] ^ *(v122 + 4 * (v140 ^ 0xBEu)) ^ *&v121[4 * v139];
  v142 = LODWORD(STACK[0x26C]) ^ ((BYTE1(v138) ^ 0x77144AF8) + BYTE1(v138)) ^ ((BYTE2(v137) ^ 0xBC) + v67) ^ (HIBYTE(v139) - 812206219) ^ *&v118[4 * (HIBYTE(v139) ^ 0xB9)] ^ *&v119[4 * (BYTE2(v137) ^ 0x92)] ^ *(v122 + 4 * (BYTE1(v138) ^ 0xBEu)) ^ *&v121[4 * v136];
  v143 = LODWORD(STACK[0x268]) ^ (((v136 ^ 0x8C923800) >> 24) - 812206219) ^ ((BYTE1(v137) ^ 0xF7) + (BYTE1(v137) ^ 0x77144A0F)) ^ *&v119[4 * (BYTE2(v139) ^ 0x2E)] ^ *&v118[4 * (((v136 ^ 0x8C923800) >> 24) ^ 0xB9)] ^ *(v122 + 4 * (BYTE1(v137) ^ 0x49u)) ^ *&v121[4 * v138] ^ (BYTE2(v139) + v67);
  v144 = LODWORD(STACK[0x264]) ^ (HIBYTE(v138) - 812206219) ^ (((v136 ^ 0x8C923800) >> 16) + v67) ^ *&v118[4 * (HIBYTE(v138) ^ 0xB9)] ^ *&v119[4 * (((v136 ^ 0x8C923800) >> 16) ^ 0x2E)] ^ *(v122 + 4 * (BYTE1(v139) ^ 0xBEu)) ^ (((2 * (v139 >> 8)) & 0x1FE) - ((2 * (v139 >> 8)) & 0x1F0) + 1997818616) ^ *&v121[4 * (LODWORD(STACK[0x270]) ^ v137)];
  BYTE1(v139) = BYTE1(v143) ^ 0x14;
  v145 = BYTE1(v144) ^ 0xA2;
  v146 = LODWORD(STACK[0x2BC]) ^ (((v143 ^ 0x32E21487) >> 24) - 812206219) ^ ((BYTE1(v141) ^ 0x1B) + (BYTE1(v141) ^ 0x77144AE3)) ^ *&v118[4 * (((v143 ^ 0x32E21487) >> 24) ^ 0xB9)] ^ *&v119[4 * (((v142 ^ 0x9F14F800) >> 16) ^ 0x2E)] ^ *(v122 + 4 * (BYTE1(v141) ^ 0xA5u)) ^ *&v121[4 * (v144 ^ 0x8B)] ^ (((v142 ^ 0x9F14F800) >> 16) + v67);
  v147 = LODWORD(STACK[0x260]) ^ (((v143 ^ 0x32E21487) >> 16) + v67) ^ (((v144 ^ 0xE409A28B) >> 24) - 812206219) ^ *&v118[4 * (((v144 ^ 0xE409A28B) >> 24) ^ 0xB9)] ^ *&v119[4 * (((v143 ^ 0x32E21487) >> 16) ^ 0x2E)] ^ ((((v142 ^ 0xF800) >> 8) ^ 0x77144AF8) + ((v142 ^ 0xF800) >> 8)) ^ *(v122 + 4 * (((v142 ^ 0xF800) >> 8) ^ 0xBEu)) ^ *&v121[4 * (a66 ^ v141)] ^ 0x6AA5D24B;
  v148 = LODWORD(STACK[0x250]) ^ ((BYTE2(v141) ^ 0x28) + v67) ^ ((v145 ^ 0x77144AF8) + v145) ^ (((v142 ^ 0x9F14F800) >> 24) - 812206219) ^ *&v119[4 * (BYTE2(v141) ^ 6)] ^ *&v118[4 * (((v142 ^ 0x9F14F800) >> 24) ^ 0xB9)] ^ *(v122 + 4 * (v145 ^ 0xBEu)) ^ *&v121[4 * (v143 ^ 0x87)];
  v149 = LODWORD(STACK[0x25C]) ^ ((HIBYTE(v141) ^ 0x5B) - 812206219) ^ ((BYTE1(v139) ^ 0x77144AF8) + BYTE1(v139)) ^ (((v144 ^ 0xE409A28B) >> 16) + v67) ^ *&v118[4 * (HIBYTE(v141) ^ 0xE2)] ^ *&v119[4 * (((v144 ^ 0xE409A28B) >> 16) ^ 0x2E)] ^ *(v122 + 4 * (BYTE1(v139) ^ 0xBEu)) ^ *&v121[4 * v142] ^ 0x3E6FDBF7;
  v150 = v148 ^ 0xEB638A32;
  v151 = (((2 * ((v146 >> 8) ^ 0x203469)) & 0x1FE) - ((2 * ((v146 >> 8) ^ 0x203469)) & 0x1F0) + 1997818616) ^ LODWORD(STACK[0x2F8]) ^ (BYTE2(v147) + v67) ^ (HIBYTE(v149) - 812206219) ^ *&v118[4 * (HIBYTE(v149) ^ 0xB9)] ^ *&v119[4 * (BYTE2(v147) ^ 0x2E)] ^ *(v122 + 4 * (BYTE1(v146) ^ 0xD7u)) ^ *&v121[4 * (v148 ^ 0x32)];
  v152 = LODWORD(STACK[0x24C]) ^ ((HIBYTE(v146) ^ 0x20) - 812206219) ^ *&v118[4 * (HIBYTE(v146) ^ 0x99)] ^ *&v119[4 * (((v148 ^ 0xEB638A32) >> 16) ^ 0x2E)] ^ *(v122 + 4 * (BYTE1(v149) ^ 0xBEu)) ^ ((BYTE1(v149) ^ 0x77144AF8) + BYTE1(v149)) ^ *&v121[4 * v147] ^ (((v148 ^ 0xEB638A32) >> 16) + v67) ^ 0x85D5FFC6;
  v153 = LODWORD(STACK[0x248]) ^ (HIBYTE(v147) - 812206219) ^ ((BYTE2(v146) ^ 0x34) + v67) ^ *&v118[4 * (HIBYTE(v147) ^ 0xB9)] ^ *&v119[4 * (BYTE2(v146) ^ 0x1A)] ^ ((BYTE1(v150) ^ 0x77144AF8) + BYTE1(v150)) ^ *(v122 + 4 * (((v148 ^ 0x8A32) >> 8) ^ 0xBEu)) ^ *&v121[4 * v149] ^ 0x94763A8F;
  v154 = LODWORD(STACK[0x240]) ^ (BYTE2(v149) + v67) ^ ((BYTE1(v147) ^ 0x77144AF8) + BYTE1(v147)) ^ (HIBYTE(v150) - 812206219) ^ *&v118[4 * (HIBYTE(v150) ^ 0xB9)] ^ *&v119[4 * (BYTE2(v149) ^ 0x2E)] ^ *(v122 + 4 * (BYTE1(v147) ^ 0xBEu)) ^ *&v121[4 * (v146 ^ 0xF1)] ^ 0x97CE5C60;
  v155 = (BYTE2(v152) + v67) ^ LODWORD(STACK[0x300]) ^ (HIBYTE(v153) - 812206219) ^ *&v118[4 * (HIBYTE(v153) ^ 0xB9)] ^ *&v119[4 * (BYTE2(v152) ^ 0x2E)] ^ ((BYTE1(v154) ^ 0x77144AF8) + BYTE1(v154)) ^ *(v122 + 4 * (BYTE1(v154) ^ 0xBEu)) ^ *&v121[4 * (v151 ^ 4)];
  v156 = LODWORD(STACK[0x23C]) ^ (((v152 >> 23) & 0xEA) + (HIBYTE(v152) ^ 0xCF96B775)) ^ *&v118[4 * (HIBYTE(v152) ^ 0xB9)] ^ *&v119[4 * (BYTE2(v154) ^ 0x2E)] ^ ((BYTE1(v151) ^ 0x71) + (BYTE1(v151) ^ 0x77144A89)) ^ *(v122 + 4 * (BYTE1(v151) ^ 0xCFu)) ^ *&v121[4 * v153] ^ (BYTE2(v154) + v67) ^ 0x951EC640;
  v157 = LODWORD(STACK[0x238]) ^ (BYTE2(v153) + v67) ^ ((BYTE1(v152) ^ 0x77144AF8) + BYTE1(v152)) ^ ((HIBYTE(v151) ^ 4) - 812206219) ^ *&v119[4 * (BYTE2(v153) ^ 0x2E)] ^ *&v118[4 * (HIBYTE(v151) ^ 0xBD)] ^ *(v122 + 4 * (BYTE1(v152) ^ 0xBEu)) ^ *&v121[4 * v154] ^ 0x4E9CFC4B;
  v158 = LODWORD(STACK[0x234]) ^ ((BYTE1(v153) ^ 0x77144AF8) + BYTE1(v153)) ^ ((BYTE2(v151) ^ 0xA9) + v67) ^ (HIBYTE(v154) - 812206219) ^ *&v118[4 * (HIBYTE(v154) ^ 0xB9)] ^ *&v119[4 * (BYTE2(v151) ^ 0x87)] ^ *(v122 + 4 * (BYTE1(v153) ^ 0xBEu)) ^ *&v121[4 * v152] ^ 0x873229D5;
  v159 = LODWORD(STACK[0x230]) ^ (BYTE2(v156) + v67) ^ ((HIBYTE(v155) ^ 0x53) - 812206219) ^ *&v118[4 * (HIBYTE(v155) ^ 0xEA)] ^ *&v119[4 * (BYTE2(v156) ^ 0x2E)] ^ *(v122 + 4 * (BYTE1(v158) ^ 0xBEu)) ^ ((BYTE1(v158) ^ 0x77144AF8) + BYTE1(v158)) ^ 0xB5EB8E44;
  v160 = *&v121[4 * v157];
  v161 = (-(v160 ^ 0x5381B186) ^ (v159 - (v160 ^ 0x5381B186 ^ v159)) ^ ((v160 ^ 0x5381B186) - 2 * ((v160 ^ 0x5381B186) & 0x1DA3C8DF ^ v160 & 0x19) + 497273030) ^ 0x1DA3C8C6) + v159;
  v162 = LODWORD(STACK[0x2B8]) ^ ((BYTE2(v155) ^ 0xE3) + v67) ^ ((BYTE1(v156) ^ 0x77144AF8) + BYTE1(v156)) ^ (HIBYTE(v157) - 812206219) ^ *&v118[4 * (HIBYTE(v157) ^ 0xB9)] ^ *&v119[4 * (BYTE2(v155) ^ 0xCD)] ^ *(v122 + 4 * (BYTE1(v156) ^ 0xBEu)) ^ *&v121[4 * v158];
  v163 = LODWORD(STACK[0x22C]) ^ (HIBYTE(v156) - 812206219) ^ *&v119[4 * (BYTE2(v158) ^ 0x2E)] ^ *&v118[4 * (HIBYTE(v156) ^ 0xB9)] ^ *(v122 + 4 * (BYTE1(v157) ^ 0xBEu)) ^ ((BYTE1(v157) ^ 0x77144AF8) + BYTE1(v157)) ^ *&v121[4 * (v155 ^ 0x2A)] ^ (BYTE2(v158) + v67) ^ 0xF92C602E;
  v164 = LODWORD(STACK[0x228]) ^ (BYTE2(v157) + v67) ^ ((BYTE1(v155) ^ 0x77144ACF) + (BYTE1(v155) ^ 0x37)) ^ (HIBYTE(v158) - 812206219) ^ *&v118[4 * (HIBYTE(v158) ^ 0xB9)] ^ *&v119[4 * (BYTE2(v157) ^ 0x2E)] ^ *(v122 + 4 * (BYTE1(v155) ^ 0x89u)) ^ *&v121[4 * v156] ^ 0x759DE303;
  v165 = LODWORD(STACK[0x2B4]) ^ (HIBYTE(v163) - 812206219) ^ ((BYTE1(v162) ^ 0x77144A34) + (BYTE1(v162) ^ 0xCC)) ^ *&v119[4 * (BYTE2(v164) ^ 0x2E)] ^ *&v118[4 * (HIBYTE(v163) ^ 0xB9)] ^ *(v122 + 4 * (BYTE1(v162) ^ 0x72u)) ^ (BYTE2(v164) + v67) ^ *&v121[4 * (((-(v160 ^ 0x86) ^ (v159 - (v160 ^ 0x86 ^ v159)) ^ ((v160 ^ 0x86) - 2 * ((v160 ^ 0x86) & 0xDF ^ v160 & 0x19) - 58) ^ 0xC6) + v159) ^ 0xEE)];
  v166 = LODWORD(STACK[0x2B0]) ^ (BYTE2(v163) + v67) ^ ((HIBYTE(v161) ^ 0xD1) - 812206219) ^ *&v119[4 * (BYTE2(v163) ^ 0x2E)] ^ *(v122 + 4 * (BYTE1(v164) ^ 0xBEu)) ^ ((BYTE1(v164) ^ 0x77144AF8) + BYTE1(v164)) ^ *&v118[4 * (HIBYTE(v161) ^ 0x68)] ^ *&v121[4 * (a65 ^ v162)];
  v167 = LODWORD(STACK[0x2AC]) ^ ((HIBYTE(v162) ^ 0x65) - 812206219) ^ ((BYTE1(v163) ^ 0x77144AF8) + BYTE1(v163)) ^ *&v118[4 * (HIBYTE(v162) ^ 0xDC)] ^ ((BYTE2(v161) ^ 0xF6) + v67) ^ *(v122 + 4 * (BYTE1(v163) ^ 0xBEu)) ^ *&v121[4 * v164] ^ *&v119[4 * (BYTE2(v161) ^ 0xD8)];
  v168 = LODWORD(STACK[0x2A8]) ^ ((BYTE2(v162) ^ 0xD6) + v67) ^ (HIBYTE(v164) - 812206219) ^ *&v118[4 * (HIBYTE(v164) ^ 0xB9)] ^ ((BYTE1(v161) ^ 0x77144A28) + (BYTE1(v161) ^ 0xD0)) ^ *&v119[4 * (BYTE2(v162) ^ 0xF8)] ^ *&v121[4 * v163] ^ *(v122 + 4 * (BYTE1(v161) ^ 0x6Eu));
  v169 = *(&off_1010A0B50 + (v78 ^ 0x1B79)) - 524477727;
  v170 = *&v169[4 * (HIBYTE(v165) ^ 1)];
  v171 = *&v169[4 * (HIBYTE(v166) ^ 0xA5)];
  v172 = *&v169[4 * (HIBYTE(v167) ^ 0x3E)];
  v173 = *&v169[4 * (HIBYTE(v168) ^ 0xC4)];
  v174 = LODWORD(STACK[0x224]) ^ v167;
  v175 = LODWORD(STACK[0x220]) ^ v166;
  LODWORD(v169) = LODWORD(STACK[0x21C]) ^ v168;
  v176 = *(&off_1010A0B50 + (v78 ^ 0x1F2A)) - 84416486;
  v177 = *&v176[4 * BYTE2(v169)];
  v178 = *&v176[4 * (BYTE2(v165) ^ 0x51)];
  v179 = *&v176[4 * BYTE2(v175)];
  LODWORD(v176) = *&v176[4 * BYTE2(v174)];
  v180 = *(&off_1010A0B50 + (v78 ^ 0x1D90)) - 939093582;
  v181 = *&v180[4 * BYTE1(v174)];
  v182 = *&v180[4 * BYTE1(v169)];
  v183 = *&v180[4 * (BYTE1(v165) ^ 0xAA)];
  v184 = *&v180[4 * BYTE1(v175)];
  v185 = *(&off_1010A0B50 + v78 - 1268) - 1847589618;
  v186 = *&v185[4 * v175];
  v187 = *&v185[4 * v169];
  LODWORD(v169) = *&v185[4 * ((v165 & 0xBF ^ 0xABD9CEED) & (v165 | 0xABD9CEBF) ^ 0xABD9CEA8)];
  v188 = *&v185[4 * v174] ^ 0x7F02F662;
  v189 = LODWORD(STACK[0x208]) ^ LODWORD(STACK[0x204]) ^ *(v68 - 136) ^ v182 ^ (v178 - 1898923832) ^ (v171 - 2750889) ^ ((v178 - 1898923832) >> 4) & 0x580B2FA ^ v188 ^ (8 * v188) ^ (v188 << 6);
  v190 = *(&off_1010A0B50 + v78 - 3274) - 1021950330;
  *(*(v68 - 120) + *(v68 - 208)) = v190[v189 ^ 0xFFLL] ^ 0xF8;
  v191 = *(v68 - 140) ^ LODWORD(STACK[0x30C]) ^ v184 ^ (LODWORD(STACK[0x2A4]) ^ (v173 - 2750889)) & 0x7FFFFFFF ^ v169 ^ 0x6B20D211 ^ (8 * (v169 ^ 0x6B20D211)) ^ ((v169 ^ 0x6B20D211) << 6) ^ ((((v176 - 1898923832) >> 4) & 0x580B2FA ^ (v176 - 1898923832)) + ((LODWORD(STACK[0x2A4]) ^ (v173 - 2750889)) & 0x80000000) + 0x80000000);
  v192 = ((*(v68 - 140) ^ LOWORD(STACK[0x30C]) ^ v184 ^ LOWORD(STACK[0x2A4]) ^ (v173 + 1623) ^ v169 ^ 0xD211 ^ (8 * (v169 ^ 0xD211)) ^ ((v169 ^ 0xD211) << 6) ^ ((v176 - 1898923832) >> 4) & 0xB2FA ^ (v176 - 18232)) >> 8) ^ 0xB1;
  v193 = *(&off_1010A0B50 + v78 - 3054) - 1296630206;
  *(*(v68 - 120) + STACK[0x340]) = (v193[v192] - 30) ^ 0xCD;
  v194 = LODWORD(STACK[0x210]) ^ *(v68 - 132) ^ (v170 - 2750889) ^ (v177 - 1898923832) ^ v181 ^ ((v177 - 1898923832) >> 4) & 0x580B2FA ^ v186 ^ 0x518FF522 ^ (8 * (v186 ^ 0x518FF522)) ^ ((v186 ^ 0x518FF522) << 6);
  v195 = *(&off_1010A0B50 + v78 - 3100) - 575429466;
  LODWORD(v192) = v195[BYTE2(v194) ^ 0x6ALL];
  *(*(v68 - 120) + STACK[0x348]) = ((v192 >> 6) | (4 * v192)) ^ 0xEF;
  LODWORD(v192) = *(v68 - 128) ^ __ROR4__(__ROR4__(LODWORD(STACK[0x218]) ^ v183 ^ (v172 - 2750889) ^ (v179 - 1898923832) ^ v187 ^ ((v179 - 1898923832) >> 4) & 0x580B2FA ^ ((v187 ^ 0xABE1369A) << 6) ^ (8 * (v187 ^ 0xABE1369A)) ^ 0x77A1FBCC, 28) ^ 0x4AD1BEE2, 4);
  *(*(v68 - 120) + *(v68 - 224)) = ~v190[v194 ^ 0xA5];
  v196 = v195[BYTE2(v192) ^ 0x55];
  *(*(v68 - 120) + *(v68 - 256)) = ((v196 >> 6) | (4 * v196)) ^ 0x69;
  *(*(v68 - 120) + *(v68 - 216)) = v190[v192 ^ 0x99] ^ 0x75;
  v197 = v195[BYTE2(v191) ^ 0x20];
  v198 = *(v68 - 120);
  *(v198 + *(v68 - 176)) = ((v197 >> 6) | (4 * v197)) ^ 0xBE;
  *(v198 + *(v68 - 232)) = (v193[BYTE1(v194) ^ 0x3CLL] - 30) ^ 0x42;
  *(v198 + *(v68 - 240)) = (v193[BYTE1(v192) ^ 0x1FLL] - 30) ^ 0x5D;
  v199 = *(&off_1010A0B50 + (v78 ^ 0x1B5A)) - 1579037238;
  *(v198 + *(v68 - 248)) = v199[HIBYTE(v191) ^ 0x97] ^ 0x7B;
  *(v198 + *(v68 - 168)) = v199[BYTE3(v192) ^ 0x18] ^ 0xC7;
  *(v198 + *(v68 - 184)) = v190[v191 ^ 0x8ELL] ^ 0xFD;
  LODWORD(v192) = v195[BYTE2(v189) ^ 0xD0];
  *(v198 + *(v68 - 192)) = ((v192 >> 6) | (4 * v192)) ^ 3;
  *(v198 + *(v68 - 200)) = (v193[BYTE1(v189) ^ 0xB2] - 30) ^ 0x7A;
  *(v198 + *(v68 - 160)) = v199[HIBYTE(v189) ^ 0x65] ^ 0x55;
  v200 = (((a1 ^ 0x2E2F3A3F) - 774847039) ^ ((a1 ^ 0x7CF83A74) - 2096642676) ^ ((a1 ^ 0x18C1752D) - 415331629)) - 1348555477;
  v201 = ((v200 ^ 0x95CE8E48) + 263800323) ^ v200 ^ ((v200 ^ 0xB9B6D387) + 599858126) ^ ((v200 ^ 0x361E0D84) - 1402354225) ^ ((v200 ^ 0x7FEE67FE) - 442912843);
  *(v198 + *(v68 - 152)) = v199[HIBYTE(v194) ^ 0xEALL] ^ 0x73;
  LODWORD(v192) = (((v201 ^ 0x1BBA523D) - 874778862) ^ ((v201 ^ 0x63B05121) - 1278088178) ^ ((v201 ^ 0x1D8234A9) - 840726138)) + 245313038;
  LODWORD(v199) = LODWORD(STACK[0x33C]) ^ (v192 < 0xC488B8A8);
  v202 = v192 < *(v68 - 124);
  if (v199)
  {
    v202 = STACK[0x33C];
  }

  return (*(STACK[0x310] + 8 * ((13 * (v202 ^ 1)) | v78)))();
}

uint64_t sub_1001CB344@<X0>(uint64_t a1@<X8>)
{
  v5[53] = *(v4 + 8 * v1);
  v5[62] = v3;
  v5[57] = a1;
  LODWORD(STACK[0x424]) = -371865839;
  v5[32] = 0;
  return (*(v4 + 8 * (((a1 == 0) * (((v2 - 24699) | 0x2290) + ((v2 - 16751) | 0x384) - 17358)) ^ v2)))();
}

uint64_t sub_1001CB3B4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unsigned int *a36)
{
  v37 = (((*a36 ^ 0x284F430D) - 676283149) ^ ((*a36 ^ 0x8A827537) + 1971161801) ^ ((a1 ^ 0x9412FCBA ^ *a36) + 1810704321)) + 2062139137;
  *a36 = v37 ^ ((v37 ^ 0xCB1392E) - 1220078037) ^ ((v37 ^ 0x4AE653D4) - 250577711) ^ ((v37 ^ 0x7DA155FE) - 967345413) ^ ((v37 ^ 0x7FFFEFFF) - 1005993732) ^ 0x72D63EFE;
  return (*(v36 + 8 * a1))();
}

uint64_t sub_1001CB4B8(int a1, uint64_t a2)
{
  v7 = *(a2 + v3);
  *(v4 - 1) = *(a2 + v3 - 16);
  *v4 = v7;
  return (*(v6 + 8 * (((v5 == 0) * a1) ^ v2)))();
}

uint64_t sub_1001CB5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unsigned int a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, unsigned int a40)
{
  v43 = a40 > 0x66CFF932;
  v44 = (((v41 ^ 0x280F6A55) - 1403919468) ^ ((v41 ^ 0x9BF986AF) + 531042154) ^ ((v40 ^ 0xA5DCFD73) + (v41 ^ 0x21825DD2))) + ((v40 - 8974) ^ 0x8305CB86);
  v45 = v43 ^ (v44 < 0x993006CD);
  v46 = v44 < a34;
  if (!v45)
  {
    v43 = v46;
  }

  return (*(v42 + 8 * ((237 * !v43) ^ v40)))();
}

uint64_t sub_1001CB8DC()
{
  if (v0 == -371865839)
  {
    v3 = STACK[0x2C4];
  }

  else
  {
    v3 = v0;
  }

  return (*(v2 + 8 * (((v3 == -371865839) * ((v1 - 721431738) & 0x2B003DB5 ^ 0x47A8)) ^ (v1 + 4348))))();
}

uint64_t sub_1001CB9D4()
{
  *(v7 - 112) = v0 + 634647737 * ((((2 * (v7 - 144)) | 0xE80CA9B0) - (v7 - 144) - 1946571992) ^ 0x19907B24) - 40447;
  *(v7 - 144) = v4;
  *(v7 - 136) = v4;
  *(v7 - 128) = v2;
  *(v7 - 120) = v1;
  (*(v3 + 8 * (v0 ^ 0x78F7)))(v7 - 144);
  *(v7 - 128) = v5;
  *(v7 - 144) = -1112314453 * ((((v7 - 144) | 0x15B54F89) - (v7 - 144) + ((v7 - 144) & 0xEA4AB070)) ^ 0xFAE36550) + 318661411 * (v6 - 1) - 227664536;
  *(v7 - 140) = v0 - 1112314453 * ((((v7 - 144) | 0x15B54F89) - (v7 - 144) + ((v7 - 144) & 0xEA4AB070)) ^ 0xFAE36550) - 37112;
  v8 = (*(v3 + 8 * (v0 + 6004)))(v7 - 144);
  return (*(v3 + 8 * (((*(v7 - 136) != -299393360) * (37 * (v0 ^ 0xB011) - 33759)) ^ v0)))(v8);
}

uint64_t sub_1001CBBA8(__n128 a1)
{
  v5.n128_u64[0] = (v1 + 39 + ((v3 - 14) | 0x26)) & 0xF;
  v5.n128_u64[1] = (v1 + 12) & 0xF;
  v6.n128_u64[0] = (v1 + 11) & 0xF;
  v6.n128_u64[1] = (v1 + 10) & 0xF;
  v7.n128_u64[0] = (v1 + 9) & 0xF;
  v7.n128_u64[1] = v2 & 0xF ^ 6;
  v11.val[1].i64[0] = (v1 + 5) & 0xF;
  v11.val[1].i64[1] = (v1 + 4) & 0xF;
  v11.val[2].i64[0] = (v1 + 3) & 0xF;
  v11.val[2].i64[1] = (v1 + 2) & 0xF;
  v11.val[3].i64[0] = (v1 + 1) & 0xF;
  v11.val[3].i64[1] = v1 & 0xF;
  v11.val[0].i64[1] = (v1 + 6) & 0xF;
  v11.val[0].i64[0] = (v1 + 7) & 0xF;
  v8.n128_u64[0] = 0xFBFBFBFBFBFBFBFBLL;
  v8.n128_u64[1] = 0xFBFBFBFBFBFBFBFBLL;
  v9.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v9.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(v4 + 8 * (v3 ^ 0x709D648F ^ (4775 * (v3 < 0x9DBCDD0A)))))((((v3 - 1889362702) | 0x1526) + 1529222631) & 0xA4D9FFF7, ((((v3 - 1889362702) | 0x1526) + 1529222631) & 0xA4D9FFF7) - 11190, 53675, a1, v5, v6, v7, xmmword_100BC76B0, vqtbl4q_s8(v11, xmmword_100BC76B0), v8, v9);
}

uint64_t sub_1001CBCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v46 = *(a1 + 56) + v42;
  LODWORD(v64) = *(a1 + 48) == 0;
  HIDWORD(a24) = HIDWORD(a28) - 548387859;
  v47 = 2 * (HIDWORD(a28) - 1497668668);
  v48 = (((v41 ^ 0x6FA3) + 1933918610) ^ (HIDWORD(a28) - 1497668668)) + (v47 & 0xE68B5B76);
  v66 = v48 - 1933946299;
  v65 = v48 - 1933946298;
  HIDWORD(v64) = (*(a1 + 36) - v42 - 518);
  v49 = (v47 & 0xC9CDAFFE) + ((HIDWORD(a28) - 1497668668) ^ 0x64E6D7FF);
  v70 = v49 - 1692850175;
  v69 = v49 - 1692850174;
  v50 = (v46 ^ 0x4C7D15BF) & (2 * (v46 & 0x8870063C)) ^ v46 & 0x8870063C;
  v51 = ((2 * (v46 ^ 0x5CFD11D7)) ^ 0xA91A2FD6) & (v46 ^ 0x5CFD11D7) ^ (2 * (v46 ^ 0x5CFD11D7)) & 0xD48D17EA;
  v52 = v51 ^ 0x54851029;
  v53 = (v51 ^ 0x1C0) & (4 * v50) ^ v50;
  v54 = ((4 * v52) ^ 0x52345FAC) & v52 ^ (4 * v52) & 0xD48D17E8;
  v55 = (v54 ^ 0x500417A0) & (16 * v53) ^ v53;
  v56 = ((16 * (v54 ^ 0x84890043)) ^ 0x48D17EB0) & (v54 ^ 0x84890043) ^ (16 * (v54 ^ 0x84890043)) & 0xD48D17E0;
  v57 = v55 ^ 0xD48D17EB ^ (v56 ^ 0x40811600) & (v55 << 8);
  HIDWORD(a33) = v46;
  HIDWORD(a29) = v46 ^ (2 * ((v57 << 16) & 0x548D0000 ^ v57 ^ ((v57 << 16) ^ 0x17EB0000) & (((v56 ^ 0x940C014B) << 8) & 0x548D0000 ^ 0x50880000 ^ (((v56 ^ 0x940C014B) << 8) ^ 0xD170000) & (v56 ^ 0x940C014B)))) ^ 0x5DCA4C5B;
  v58 = *(v43 + 8 * (v41 ^ 0x74F3 ^ (39307 * (v41 == 769976919))));
  v59 = *(v45 - 200);
  *(v45 - 204) = v59 - 705377676;
  HIDWORD(v63) = v59 - 705380255;
  HIDWORD(v72) = v59 - 705413418;
  LODWORD(v72) = v59 ^ 0xC3DE21D0;
  HIDWORD(v68) = v59 ^ 0x2A0B80E1;
  HIDWORD(v71) = v59 - 705420470;
  LODWORD(v71) = v59 - 705396519;
  HIDWORD(v67) = (v59 + 436508730) & 0xBBEFFDD5;
  LODWORD(v67) = v59 - 705371546;
  LODWORD(v63) = v59 - 705405032;
  HIDWORD(v62) = v59 - 705406962;
  LODWORD(v62) = v59 - 705415148;
  HIDWORD(a9) = (v59 - 705423001) | 0x1E03;
  LODWORD(v61) = v59 - 705376609;
  HIDWORD(v61) = HIDWORD(a9) + 1011070946;
  HIDWORD(a12) = v59 - 1199226626;
  HIDWORD(a16) = a16 - 1497668683;
  LODWORD(v68) = ((v59 ^ 0x2A0B80E1) - 516533095) & 0x1EC9DDDF;
  return v58(a1, 4223755010, a3, 1926737144, a5, v44, a7, a8, a9, ((v45 - 136) ^ 0xFFE9EA63D9FF4FFELL) + 0x4F9F1D9EFF95BDE0 + ((2 * (v45 - 136)) & 0xFFD3D4C7B3FE9FF0), ((v45 - 128) ^ 0x7D3AFF4616BF6A9FLL) - 0x20208B0210300A85 + ((2 * (v45 - 128)) & 0xFA75FE8C2D7ED530), a12, v61, v62, v63, a16, ((v45 - 168) ^ 0x3FFDFFBFD69FFFFFLL) - 0x1068A20116010750 + ((2 * (v45 - 168)) & 0x7FFBFF7FAD3FFFF0), ((v45 - 144) ^ 0x7BBFBC8BBF5D7F4ELL) - 0x4834040021403400 + ((2 * (v45 - 144)) & 0xF77F79177EBAFE90), a19, a20, v64, v65, v66, a24, v67, a26, a27, a28, a29, v68, v69, v70, a33, v71, v72, a36, a37, a38, a39, a40, a41);
}

uint64_t sub_1001CC238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, unsigned int a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, int a20, int a21, uint64_t a22, int a23, int a24, uint64_t a25, int a26, int a27)
{
  v35 = (((v30 - 608453200) * (a20 + a5) - 189531213 * a20 + 1159442745) - (((-905372974 * a19 + (a27 + 107388561) * (a19 + a5) + ((v31 + 22510) ^ 0xE47511A5)) * v32 + 310359781 * v30 - 161731240) * v32 - 646051273 * v30 + 1324921413) * a3) % v28;
  *(v34 + 4 * a22) = (v35 ^ 0x7FB3F7DD) - 1344516416 + ((2 * v35) & 0xFF67EFBA);
  v36 = ((v30 - 1313872935) * (a24 + a5) + 515888522 * a24 + 1012289118) % (a21 - 596562593);
  *(v34 + 4 * a25) = (v36 ^ 0xAFB5DEDF) + 2145019838 + ((2 * v36) & 0x5F6BBDBE);
  v37 = ((*v29 ^ ((*v29 ^ 3) + 2)) ^ ((*v29 ^ 6) + 5)) & 7;
  v38 = v29[212];
  v39 = (v38 ^ 0x9F6FB052) & (2 * (v38 & a5)) ^ v38 & a5;
  v40 = ((2 * (v38 ^ 0x1FB6B096)) ^ 0x9FB213EA) & (v38 ^ 0x1FB6B096) ^ (2 * (v38 ^ 0x1FB6B096)) & 0xCFD909F4;
  v41 = v40 ^ 0x40490815;
  v42 = (v40 ^ 0x83900180) & (4 * v39) ^ v39;
  v43 = ((4 * v41) ^ 0x3F6427D4) & v41 ^ (4 * v41) & 0xCFD909F4;
  v44 = (v43 ^ 0xF4001D0) & (16 * v42) ^ v42;
  v45 = ((16 * (v43 ^ 0xC0990821)) ^ 0xFD909F50) & (v43 ^ 0xC0990821) ^ (16 * (v43 ^ 0xC0990821)) & 0xCFD909D0;
  v46 = v45 ^ 0x24900A5;
  v47 = v44 ^ 0xCFD909F5 ^ (v45 ^ 0xCD900900) & (v44 << 8);
  v48 = v38 ^ (2 * ((v47 << 16) & 0x4FD90000 ^ v47 ^ ((v47 << 16) ^ 0x9F50000) & ((v46 << 8) & 0x4FD90000 ^ 0x6D00000 ^ ((v46 << 8) ^ 0x59090000) & v46))) ^ 0xD4A45F55;
  v49 = 0x2492492492492493 * (((v48 ^ 0xE5C2ADA41D5C91DDLL) + 0x1A3D525BE2A36E23) ^ ((v48 ^ 0xF62327BE09B83D06) + 0x9DCD841F647C2FALL) ^ ((v48 ^ 0x13E18A1A9C3F5907) - 0x13E18A1A9C3F5907)) - 0x4490719929576F8CLL;
  v50 = v49 ^ ((v49 ^ 0x543EC7E7951E4797) - 0x1986751F2B1534B7) ^ ((v49 ^ 0xF609187A8764306ELL) + 0x444E557DC690BCB2) ^ ((v49 ^ 0x15D1B21E518EB224) - 0x586900E6EF85C104) ^ ((v49 ^ 0xFA5EDF7BFDFFB6FDLL) + 0x4819927CBC0B3A23);
  v51 = ((v50 ^ 0x93BD9291229D5168) - 0x6D4FFAB1E65F1771) ^ ((v50 ^ 0x707AA0C106DF95CDLL) + 0x7177371E3DE22C2CLL);
  v52 = (__CFADD__(v50 ^ 0x93BD9291229D5168, 0x92B0054E19A0E88FLL) - 1) ^ (__CFADD__(v50 ^ 0x707AA0C106DF95CDLL, 0x7177371E3DE22C2CLL) - 1);
  v53 = v33 + (((v37 ^ 0x27AFD354) + 2030203845) ^ (v37 + 1630649185) ^ ((v37 ^ 0xE648DE39) - 1192919382)) + __CFADD__(7 * (v51 ^ ((v50 ^ 0xAE7F80A89A49B785) - 0x508DE8885E8BF19CLL)), 0xE70BFBEB5B80748FLL) + (((v51 ^ ((v50 ^ 0xAE7F80A89A49B785) - 0x508DE8885E8BF19CLL)) * 7uLL) >> 64) - (v52 ^ (__CFADD__(v50 ^ 0xAE7F80A89A49B785, 0xAF721777A1740E64) - 1)) + 8 * (v52 ^ (__CFADD__(v50 ^ 0xAE7F80A89A49B785, 0xAF721777A1740E64) - 1)) + 1892858435;
  v54 = v53 - 1816161928 < a14;
  if (a14 < a13 != (v53 - 1816161928) < 0xDA3E3A8D)
  {
    v54 = a14 < a13;
  }

  return (*(v27 + 8 * ((30132 * v54) ^ v31)))();
}

uint64_t sub_1001CC7C8(uint64_t result)
{
  if ((v1 ^ 0xEFDB8FFD) + ((2 * v1) & 0xDFB610D8) == -270823427)
  {
    v2 = 1389377633;
  }

  else
  {
    v2 = 1389335609;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t sub_1001CC83C@<X0>(int a1@<W8>)
{
  v10 = v5 - 1;
  *(v9 + v10) = *(v3 + (v10 & 0xF)) ^ *(v1 + v10) ^ *((v10 & 0xF) + v2 + 2) ^ *((v10 & 0xF) + v4 + 1) ^ ((v10 & 0xF) * v6);
  return (*(v8 + 8 * (((v10 == 0) * v7) ^ a1)))();
}

uint64_t sub_1001CC88C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v46.n128_u64[0] = (v41 + 13) & 0xF;
  v46.n128_u64[1] = (v41 + 12) & 0xF;
  v47.n128_u64[0] = (v41 + 11) & 0xF;
  v47.n128_u64[1] = (v41 + 10) & 0xF;
  v48.n128_u64[0] = (v41 + 9) & 0xF;
  v48.n128_u64[1] = v44 & 0xF;
  v52.val[0].i64[0] = (v41 + 7) & 0xF;
  v52.val[0].i64[1] = (v41 + 6) & 0xF;
  v52.val[1].i64[0] = (v41 + 5) & 0xF;
  v52.val[1].i64[1] = (v41 + 4) & 0xF;
  v52.val[2].i64[0] = (v41 + 3) & 0xF;
  v52.val[2].i64[1] = (v41 + 2) & 0xF;
  v52.val[3].i64[0] = (v41 + 1) & 0xF;
  v52.val[3].i64[1] = v41 & 0xF;
  v49.n128_u64[0] = 0x2727272727272727;
  v49.n128_u64[1] = 0x2727272727272727;
  v50.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v50.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(a41 + 8 * v43))(0, v42 - 15, (v41 + 14) & 0xF, v45 - 15, -18374, 37517, a1, v46, v47, v48, xmmword_100BC76B0, vqtbl4q_s8(v52, xmmword_100BC76B0), v49, v50);
}

uint64_t sub_1001CCAE4@<X0>(int a1@<W8>)
{
  v3 = (v1 ^ 0xAAFFDBF6) - 704888898 + ((2 * v1) & 0x55FFB7EC);
  v4 = (v3 ^ 0x7EDBC50E) & (2 * (((a1 - 34842) ^ 0x7F03D293) & v3)) ^ ((a1 - 34842) ^ 0x7F03D293) & v3;
  v5 = ((2 * ((((a1 - 92934043) & 0x589F7EF) - 1361205696) ^ v3)) ^ 0xA3BB5384) & ((((a1 - 92934043) & 0x589F7EF) - 1361205696) ^ v3) ^ (2 * ((((a1 - 92934043) & 0x589F7EF) - 1361205696) ^ v3)) & 0xD1DDA9C2;
  v6 = v5 ^ 0x5044A842;
  v7 = (v5 ^ 0x80590900) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0x4776A708) & v6 ^ (4 * v6) & 0xD1DDA9C0;
  v9 = (v8 ^ 0x4154A100) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x908908C2)) ^ 0x1DDA9C20) & (v8 ^ 0x908908C2) ^ (16 * (v8 ^ 0x908908C2)) & 0xD1DDA9C0;
  v11 = (v3 ^ (2 * ((((v10 ^ 0xC00521C2) << 8) & 0x51DD0000 ^ 0x51890000 ^ (((v10 ^ 0xC00521C2) << 8) ^ 0xDDA90000) & (v10 ^ 0xC00521C2)) & (((v10 ^ 0x11D88800) & (v9 << 8) ^ v9) << 16) ^ (v10 ^ 0x11D88800) & (v9 << 8) ^ v9))) != 2130961484;
  return (*(v2 + 8 * ((v11 | (2 * v11)) ^ a1)))();
}

uint64_t sub_1001CCE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = *(&off_1010A0B50 + v13 - 17054) - 1355309103;
  v17 = *(&off_1010A0B50 + (v13 ^ 0x5B15)) - 772715838;
  v18 = *(*(&off_1010A0B50 + (v13 ^ 0x4F10)) + (*(v15 - 133) ^ 0xC9) - 1472666895);
  v19 = (((((*(v15 - 136) ^ 0x79) + (*(v15 - 136) ^ 0x79) - (*(v15 - 136) ^ 0x39) - 128) ^ v17[*(v15 - 136) ^ 0x7ALL]) << 24) ^ 0xA2826C1) & (v18 ^ (v18 >> 4) ^ (v18 >> 2) ^ 0xFF2826AE) | (v18 ^ (v18 >> 4) ^ (v18 >> 2)) & 0x3E;
  v20 = *(&off_1010A0B50 + v13 - 17704) - 1715109639;
  v21 = (((v20[*(v15 - 135) ^ 0x55] ^ *(v15 - 135)) << 16) ^ 0x3010E2F1) & (v19 ^ 0x32D7C432) ^ v19 & 0xCF20000E;
  v22 = *(v15 - 134);
  v23 = ((v17[*(v15 - 132) ^ 0x47] ^ *(v15 - 132)) << 24) & 0x22222222;
  v24 = v21 & 0x4C59207F ^ 0x36BB0A0C ^ ((((((2 * v16[v22 ^ 0x73]) ^ 0x38) + 100) ^ v16[v22 ^ 0x73]) << 8) ^ 0xB3A69D80) & (v21 ^ 0x40161D01);
  *(v15 - 216) = (((v12 ^ 0x66EF59BB) + 378477822) ^ ((v12 ^ 0xFD0E7AF) + 2142282474) ^ ((v12 ^ 0xD70064E6) - 1486872159)) - 1621293745;
  return (*(v14 + 8 * v13))(v23, v24, v22, 2021090046, v16, v17, v20, a8, a9, a10, a11, a12);
}

uint64_t sub_1001CD424@<X0>(uint64_t a1@<X5>, uint64_t a2@<X7>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v32 = LODWORD(STACK[0x2F4]);
  v33 = (LODWORD(STACK[0x2F8]) ^ 0x966FB952) & (2 * (STACK[0x2F8] & 0xD06FB963)) ^ STACK[0x2F8] & 0xD06FB963;
  v34 = ((2 * (LODWORD(STACK[0x2F8]) ^ 0x367CDB90)) ^ 0xCC26C5E6) & (LODWORD(STACK[0x2F8]) ^ 0x367CDB90) ^ (2 * (LODWORD(STACK[0x2F8]) ^ 0x367CDB90)) & 0xE61362F2;
  v35 = LODWORD(STACK[0x308]);
  v36 = a28 + a27 + HIDWORD(a20) + 3 * a21 + 14 * HIDWORD(a19) + a20 + LODWORD(STACK[0x2F8]) + v32 - 7620261;
  v37 = (v35 ^ 0xDD6F3D62) & (2 * (v35 & 0xD06FB963)) ^ v35 & 0xD06FB963;
  v38 = ((2 * (v35 ^ 0x5DA04FA0)) ^ 0x1B9FED86) & (v35 ^ 0x5DA04FA0) ^ (2 * (v35 ^ 0x5DA04FA0)) & 0x8DCFF6C2;
  v39 = v36 ^ v35 ^ ((v36 ^ 0x532EB86E) + 1796769972) ^ ((v36 ^ 0x1BD20D01) + 602160605) ^ ((v36 ^ 0x70CA0592) + 1224488272) ^ ((v36 ^ 0xFFFF7FDF) - 943108349) ^ (2 * (((4 * v38) ^ 0x11004900) & (v38 ^ 0x98FE480) & (16 * (v38 & (4 * v37) ^ v37)) ^ v38 & (4 * v37) ^ v37));
  return (*(a32 + 8 * ((33813 * (((LODWORD(STACK[0x310]) - LODWORD(STACK[0x314]) + LODWORD(STACK[0x31C]) + (((v39 ^ 0x3460F2B1) - 1084591809) ^ ((v39 ^ 0x4BB084AF) - 1064696031) ^ ((v39 ^ 0x61F0005F) - 355826735)) + 1919735082) & 1) == 0)) ^ a3)))(v32, (((v34 ^ (((a3 + 19346) ^ 0x359940E0) - 327723271)) & 0x184D8BC0 | (4 * (v34 ^ (((a3 + 19346) ^ 0x359940E0) - 327723271))) & ~(v34 ^ (((a3 + 19346) ^ 0x359940E0) - 327723271))) ^ 0x40) & (16 * (v34 & (4 * v33) ^ v33)) ^ v34 & (4 * v33) ^ v33, v35, (29 - v35) ^ v35 ^ ((v35 ^ 0x3C) + 95), 29, a1, 29, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void sub_1001CD74C(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (1022166737 * ((-2 - ((a1 | 0x360D5E00) + (~a1 | 0xC9F2A1FF))) ^ 0x73E2406D));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1001CDC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, int a16)
{
  v20 = a16 + a14 - 40089103 + (((v17 ^ 0x7A998B33) - 2056882995) ^ ((v17 ^ 0x6C3491F0) - 1815384560) ^ (((v16 - 931929216) & 0x378BFF0F ^ 0x877B2B) + (v17 ^ 0xFF78DDD2)));
  v21 = v20 < 0x6D0B2F74;
  v22 = v18 + 331780906 < v20;
  if ((v18 + 331780906) < 0x6D0B2F74 != v21)
  {
    v22 = v21;
  }

  return (*(v19 + 8 * ((59064 * v22) ^ v16)))();
}

uint64_t sub_1001CDF00()
{
  v2 = STACK[0xF10];
  v3 = STACK[0xF10] - 34989;
  *STACK[0xA1B8] ^= LODWORD(STACK[0xA170]) ^ v0;
  LODWORD(STACK[0xA15C]) = *(STACK[0xB730] + 4 * (SLODWORD(STACK[0xA16C]) ^ 0x67FFAC48));
  v4 = *STACK[0xA198];
  v5 = STACK[0xA154];
  v6 = 634647737 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x2D0D04B0) - 1391655756) ^ 0xC09B2B48);
  v7 = v6 + (((LODWORD(STACK[0xA194]) ^ 0xF947F2CD) + 112725299) ^ ((LODWORD(STACK[0xA194]) ^ 0x39CF999E) - 969906590) ^ ((LODWORD(STACK[0xA194]) ^ 0x893B6AE8) + 1992594712)) - 1462826144;
  STACK[0x10EE8] = v1;
  LODWORD(STACK[0x10ED8]) = v7;
  LODWORD(STACK[0x10EDC]) = ((v4 ^ 0xBE6D3A82) + 1778380283 + ((2 * (v4 ^ 0x5D)) & 0xBBBBBBBB)) ^ v6;
  LODWORD(STACK[0x10EF4]) = v2 - v6 + 1352419535;
  LODWORD(STACK[0x10EE0]) = v6 + v5 + 365362192;
  v8 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v2 + 16376)))(&STACK[0x10ED8]);
  return (*(v8 + 8 * (v3 ^ 0x27D9)))(2234432642, 2234432643, 2234432644, 1775617819, 10, 3923101457, 4294932395, -1080961354);
}

void sub_1001CE100(uint64_t a1)
{
  v1 = *(a1 + 28) ^ (17902189 * (((a1 | 0x16521A72) - (a1 | 0xE9ADE58D) - 374479475) ^ 0x981D0C62));
  v6 = v1 - 193924789 * (&v4 ^ 0xB6BB3266) + 36094;
  v4 = &v3;
  v2 = *(&off_1010A0B50 + v1 - 8052) - 810145054;
  (*&v2[8 * (v1 ^ 0xE90C)])(&v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001CE3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, int a14, char *a15, unsigned int a16)
{
  a15 = &a13;
  a16 = v17 + 906386353 * ((((2 * &a14) | 0xE9D73A44) - &a14 - 1961598242) ^ 0x45EA5006) - 19717;
  v18 = (*(v16 + 8 * (v17 + 10212)))(&a14);
  return (*(v16 + 8 * v17))(v18);
}

uint64_t sub_1001CE558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = *(v8 + 8 * (((a8 + 13573) ^ 0x686E) + a8));
  LODWORD(STACK[0x2E8]) = 47179;
  return v9();
}

uint64_t sub_1001CE590@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  *(a1 + 200) = *(a1 + 160);
  LODWORD(STACK[0x334]) = a2;
  LODWORD(STACK[0x244]) = -1516937601;
  return (*(v3 + 8 * (v2 ^ 0x8795)))();
}

uint64_t sub_1001CE5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = (v10 ^ 0xBFF7FFFBFFFFDDDFLL) + 0x40080004D9E7449ELL + ((v10 << ((14 * (v8 ^ 0xFD)) ^ 0x3Bu)) & 0x7FEFFFF7FFFFBBBELL);
  v13 = v12 < 0xD9E7227D;
  v14 = v12 > v9 + 3655803517u;
  if (v9 > 0xFFFFFFFF2618DD82 != v13)
  {
    v14 = v13;
  }

  return (*(v11 + 8 * ((35 * v14) ^ v8)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1001CE778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, uint64_t a34, int a35, int a36, int a37, int a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  v42 = ((a33 + 1954322003) ^ 0xCBC2492F) & (2 * ((((a38 - 899250040) | 0x448) ^ 0x8B833E46) & (a33 + 1954322003))) ^ (((a38 - 899250040) | 0x448) ^ 0x8B833E46) & (a33 + 1954322003);
  v43 = ((2 * ((a33 + 1954322003) ^ 0xDFC28823)) ^ 0xA883C31A) & ((a33 + 1954322003) ^ 0xDFC28823) ^ (2 * ((a33 + 1954322003) ^ 0xDFC28823)) & 0x1441E18C;
  v44 = (a33 + 1954322003) ^ (2 * (((4 * v43) ^ 0x11078620) & v43 & (16 * ((v43 ^ 0x4041C10D) & (4 * v42) ^ v42)) ^ (v43 ^ 0x4041C10D) & (4 * v42) ^ v42));
  v45 = (LODWORD(STACK[0x30C]) ^ 0x804FB553) & (2 * (STACK[0x30C] & 0xD06FB963)) ^ STACK[0x30C] & 0xD06FB963;
  v46 = ((2 * (LODWORD(STACK[0x30C]) ^ 0xA059B795)) ^ 0xE06C1DEC) & (LODWORD(STACK[0x30C]) ^ 0xA059B795) ^ (2 * (LODWORD(STACK[0x30C]) ^ 0xA059B795)) & 0x70360EF6;
  v47 = (LODWORD(STACK[0x30C]) ^ (2 * (((4 * (v46 ^ 0x12)) & 0xF0 ^ ((4 * (v46 ^ 0x12)) ^ 0xD0) & (v46 ^ 0x12) ^ 0x10) & (16 * ((v46 ^ 0x84) & (4 * v45) ^ v45)) ^ (v46 ^ 0x84) & (4 * v45) ^ v45))) & 0x7F;
  v48 = LODWORD(STACK[0x30C]) - 797984413;
  v49 = STACK[0x2F8];
  v50 = a33 - a32 + 8 * a32 + 3 * a35 + a37 + LODWORD(STACK[0x2F4]) + 13 * ((((v48 + a35) % a6) ^ 0x6ED6FD4F) + ((2 * ((v48 + a35) % a6)) & 0xDDADFA9E)) + 11 * (((v44 ^ 0x2C22B756) + 1827550340) ^ ((v44 ^ 0x71EFBD91) + 824393285) ^ ((v44 ^ 0xF54EC969) - 1249752387)) - 82869069;
  v51 = (v49 ^ 0xC06FB85A) & (2 * (v49 & 0xD06FB963)) ^ v49 & 0xD06FB963;
  v52 = ((2 * (v49 ^ 0xC060A85E)) ^ 0x201E227A) & (v49 ^ 0xC060A85E) ^ (2 * (v49 ^ 0xC060A85E)) & 0x100F113C;
  v53 = LODWORD(STACK[0x2F8]) ^ (2 * (((4 * (v52 ^ 0x10011105)) & 0x100F1130 ^ 0xC0030 ^ ((4 * (v52 ^ 0x10011105)) ^ 0x403C44F0) & (v52 ^ 0x10011105)) & (16 * ((v52 ^ 0xE0018) & (4 * v51) ^ v51)) ^ (v52 ^ 0xE0018) & (4 * v51) ^ v51)) ^ v50 ^ ((v50 ^ 0xAB411742) - 1840478949) ^ ((v50 ^ 0x5ED14138) + 1742525281) ^ ((v50 ^ 0xC48D4422) - 41888133) ^ ((v50 ^ 0xF7EF7FFF) - 823988824);
  v54 = STACK[0x308];
  v55 = *(&a42 + a34) + LODWORD(STACK[0x3E4]) - LODWORD(STACK[0x300]);
  v56 = v55 + 1313114923 + (((v53 ^ 0xD97DF908) + 493462018) ^ ((v53 ^ 0xE6E1442E) + 586489640) ^ ((v53 ^ 0x91B69E2) - 854641940));
  v57 = *(&a42 + a31);
  v58 = ((v57 ^ 0xAFD6024) - 627910329) ^ v57 ^ ((v57 ^ 0xF1DD9E44) + 565323559) ^ ((v57 ^ 0xAB6D0502) + 2063776865) ^ ((v57 ^ 0x7FDDBDFF) - 1347287906) ^ v56 ^ ((v56 ^ 0x1CFAFECB) - 1821548381) ^ ((v56 ^ 0x74442A01) - 70011799) ^ ((v56 ^ 0x72B6AB3) - 2000882469) ^ ((v56 ^ 0x1FFDDFEF) - 1872084601);
  v59 = ((v58 ^ 0x65047CB0) - 1781513321) ^ ((v58 ^ 0xD385412C) + 592543243) ^ ((v58 ^ 0xE9791A97) + 430777778);
  v60 = *(&a42 + a28);
  v61 = ((v47 ^ 0xEB90C109) - 746140194) ^ ((v47 ^ 0xD79BCDAB) - 275922560) ^ ((v47 ^ 0x3C0B0CC1) + 69009430);
  v62 = v48 % a6;
  v63 = *(&a42 + a29) + LODWORD(STACK[0x2F4]);
  v64 = v63 - v60 + 13 * v62 + 11 * (((-99 - v49) ^ v49 ^ ((v49 ^ 0x83) - 30) ^ ((v49 ^ 0x96) - 11) ^ ((v49 ^ 0x77) + 22)) ^ 0x9D) - v61 + 8 * v61 - 396972071 + v59;
  v65 = ((v49 ^ 0x8A612225) + 1510906696) ^ v49 ^ ((v49 ^ 0x16CBCF46) - 962300379) ^ ((v49 ^ 0x69C75481) - 1180111388) ^ ((v49 ^ 0xDAFDFF7F) + 177358366) ^ v64 ^ ((v64 ^ 0x82A49CF4) + 854983848) ^ ((v64 ^ 0x6DBD0C6) - 1232516970) ^ ((v64 ^ 0x34258467) - 2072568779) ^ ((v64 ^ 0xFFF7AFF9) + 1336227755);
  v66 = v55 - 1336031510 + (((v65 ^ 0x5F602839) - 1763214339) ^ ((v65 ^ 0xA9494A41) + 1624119685) ^ ((v65 ^ 0x96144349) + 1603473549));
  v67 = v57 & 0xD06FB963;
  v68 = (2 * v67);
  v69 = ((2 * (v57 ^ 0xF8798264)) ^ 0x502C760E) & (v57 ^ 0xF8798264) ^ (2 * (v57 ^ 0xF8798264)) & 0x28163B06;
  v70 = (v69 ^ 0x42204) & (4 * (v68 & (v57 ^ 0xD86FB062) ^ v67)) ^ v68 & (v57 ^ 0xD86FB062) ^ v67;
  v71 = v57 ^ (2 * (((4 * v69) ^ 0x2058EC10) & v69 & (16 * v70) ^ v70)) ^ v66 ^ ((v66 ^ 0xAB90A3F5) - 574104457) ^ ((v66 ^ 0xB1D85D72) - 946920718) ^ ((v66 ^ 0xEC1F8006) - 1706492026) ^ ((v66 ^ 0x7FFFFEFD) + 162038143);
  v72 = ((v71 ^ 0x80187B11) + 766565481) ^ ((v71 ^ 0x17F65137) - 1168181681);
  v73 = (((29 - LODWORD(STACK[0x308])) ^ LODWORD(STACK[0x308]) ^ ((LODWORD(STACK[0x308]) ^ 0x65) + 8)) ^ (((LODWORD(STACK[0x308]) ^ 0x46) + 37) ^ ((LODWORD(STACK[0x308]) ^ 0xC1) + 36))) & 0x7F ^ 0x1Du;
  v74 = v63 + LODWORD(STACK[0x2F8]) - v60 + 7 * v73 + 1213492731 + 271776144 + (v72 ^ ((v71 ^ 0x9E251339) + 864924737));
  v75 = (v74 ^ 0x328D1250u) + 1118165506;
  v76 = ((v54 ^ 0xC3944F72) + 335279633) ^ v54 ^ ((v54 ^ 0xDB66BA06) + 185140069) ^ ((v54 ^ 0x484D4E16) - 1742538891) ^ ((v54 ^ 0x7F2FFDFF) - 1354742626) ^ v74 ^ ((v74 ^ 0xA41C1B4) + 2053704166) ^ v75 ^ ((v74 ^ 0x58EC17BD) + 683991021) ^ ((v74 ^ 0xEFF7F3F7) - 1612760153);
  return (*(a39 + 8 * ((14814 * (((LODWORD(STACK[0x310]) - LODWORD(STACK[0x314]) + LODWORD(STACK[0x31C]) - 1487015809 + (((v76 ^ 0xF8C08B52) + 1905668739) ^ ((v76 ^ 0xAE92952) - 2084597629) ^ ((v76 ^ 0x526ED333) - 617059612))) & 1) == 0)) ^ (a38 - 899265000))))(v67, v68, v75, v72, v73, 3126785615, 2588475270, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_1001CF1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21)
{
  v25 = *(v22 + 8 * ((v21 - 705422096) ^ 0x3739));
  *(v24 - 184) = a21;
  *(v24 - 196) = v23;
  return v25(a1, a2, a3, 1926737144);
}

uint64_t sub_1001CF214(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v44 = a2 & 0xFFFFFFF1 ^ 0xB90F2D5FLL;
  *(v43 - 144) = v44;
  v45 = *(v42 + v44);
  v46 = *(a18 + 4 * (v45 ^ 0xA7));
  v47 = a2 ^ 0xB90F2D55;
  *(v43 - 184) = v47;
  v48 = *(v42 + v47);
  LODWORD(v47) = v41 ^ 0x7720 ^ a2 & 0xFFFFFFF9 ^ 0xB90F635D;
  *(v43 - 204) = v47;
  v49 = *(v42 + v47);
  v50 = *(a16 + 4 * (v48 ^ 0x82));
  v51 = *(a18 + 4 * (v49 ^ (((v41 + 76) | 8) + 63)));
  v52 = a2 & 0xFFFFFFF3 ^ 0xB90F2D5DLL;
  *(v43 - 160) = v52;
  v53 = *(a16 + 4 * (*(v42 + v52) ^ 0x7DLL));
  v54 = a2 & 0xFFFFFFFE ^ 0xB90F2D55;
  *(v43 - 168) = v54;
  v55 = *(v42 + v54);
  v56 = v55 ^ 0x23;
  v57 = *(a17 + 4 * (v55 ^ 0xCA));
  v58 = a2 & 0xFFFFFFF5 ^ 0xB90F2D5FLL;
  *(v43 - 152) = v58;
  v59 = *(v42 + v58);
  v60 = *(a18 + 4 * (v59 ^ 0x7B));
  v61 = a2 & 0xFFFFFFF2 ^ 0xB90F2D5DLL;
  *(v43 - 200) = v61;
  v62 = (((v59 ^ 0xB9) - (v59 ^ 0x42B79111)) ^ 0xFFFFFFF0) + (v59 ^ 0xB9);
  v63 = *(v42 + v61);
  LODWORD(v59) = v63 ^ 0xBC;
  v64 = *(a17 + 4 * (v63 ^ 0x55));
  v65 = a2 & 0xFFFFFFFA ^ 0xB90F2D55;
  *(v43 - 176) = v65;
  v66 = *(v42 + v65);
  v67 = v40 ^ a23 ^ v45;
  LODWORD(v45) = v66 ^ 0x92;
  LODWORD(v66) = *(a17 + 4 * (v66 ^ 0x7B));
  v68 = a2 & 0xFFFFFFF8 ^ 0xB90F2D57;
  *(v43 - 192) = v68;
  v69 = v67 ^ v53 ^ v46 ^ v64 ^ ((v63 ^ 0xBC) + 625348269);
  v70 = *(a15 + (*(v42 + v68) ^ 0x38));
  v71 = a2 & 0xFFFFFFF6 ^ 0xB90F2D5DLL;
  *(v43 - 232) = v71;
  v72 = *(v42 + v71);
  v240 = a2 & 0xFFFFFFFB ^ 0xB90F2D55;
  LODWORD(v71) = *(a17 + 4 * (v72 ^ 0xB5));
  v73 = a1 ^ a37 ^ v49 ^ v51 ^ v66 ^ (v45 + 625348269) ^ v70 ^ *(a16 + 4 * (*(v42 + v240) ^ 0xC6));
  v74 = a2 & 0xFFFFFFFC ^ 0xB90F2D57;
  *(v43 - 256) = v74;
  v75 = *(v42 + v74);
  v76 = *(v43 - 216) ^ a38 ^ v50 ^ (v56 + 625348269);
  v77 = a2 & 0xFFFFFFFD ^ 0xB90F2D57;
  *(v43 - 248) = v77;
  v78 = v72 ^ 0x5C;
  v79 = v76 ^ *(a15 + (v75 ^ 0xB)) ^ v57 ^ *(v42 + v77) ^ *(a18 + 4 * (*(v42 + v77) ^ 0x14));
  *(v43 - 208) = a2;
  v81 = a2 & 0xFFFFFFF4 ^ 0xB90F2D5FLL;
  *(v43 - 216) = v81;
  v82 = *(v42 + v81);
  v83 = HIDWORD(a14) ^ *(v43 - 224) ^ v62 ^ v60;
  v84 = a2 & 0xFFFFFFF7 ^ 0xB90F2D5DLL;
  *(v43 - 240) = v84;
  LODWORD(v82) = *(a15 + (v82 ^ 0x5E));
  v85 = *(v42 + v84) ^ 0x72;
  v86 = a2 & 0xFFFFFFF0 ^ 0xB90F2D5FLL;
  *(v43 - 224) = v86;
  LODWORD(v85) = v83 ^ v71 ^ (v78 + 625348269) ^ v82 ^ *(a16 + 4 * v85);
  v87 = (v69 ^ *(a15 + (*(v42 + v86) ^ 0x8CLL))) ^ v59;
  LODWORD(v59) = BYTE1(v69) ^ 0xA2;
  v88 = v59 - 26694168;
  v89 = (v59 - 26694168) & 0x200 | v59;
  v90 = v73 ^ v45;
  v91 = HIBYTE(v69);
  v92 = (HIBYTE(v69) ^ 0x24) - (HIBYTE(v69) ^ 0x500AD497);
  v93 = BYTE1(v85) ^ 0x4C;
  v94 = v41;
  *(v43 - 132) = v41;
  v95 = *(&off_1010A0B50 + (v41 ^ 0x3811)) - 782103627;
  v96 = *(&off_1010A0B50 + (v41 ^ 0x3029)) - 1668353603;
  v97 = *(&off_1010A0B50 + v41 - 11248) - 985185366;
  v98 = *(&off_1010A0B50 + v94 - 10469) - 1294034163;
  v99 = (((v73 >> 15) & 0x1FE ^ 0x130) - 658066931) ^ HIDWORD(a37) ^ (v93 - 26694168) ^ *&v95[4 * (HIBYTE(v79) ^ 0x8B)] ^ v87 ^ *&v96[4 * (BYTE2(v73) ^ 0xA6)] ^ *&v97[4 * (BYTE1(v85) ^ 0x81)] ^ ((HIBYTE(v79) ^ 0x1C) - (HIBYTE(v79) ^ 0x500AD4AF)) ^ *&v98[4 * (v87 ^ 0x38)];
  LODWORD(v82) = HIDWORD(a36) ^ ((HIBYTE(v73) ^ 0xAE) - (HIBYTE(v73) ^ 0x500AD41D)) ^ v79 ^ v56 ^ (((v85 >> 15) & 0x1FE ^ 0x1D6) - 658066931) ^ v88 & 0x7C208DFF ^ v89 ^ *&v95[4 * (HIBYTE(v73) ^ 0x39)] ^ *&v96[4 * (BYTE2(v85) ^ 0xD5)] ^ *&v97[4 * (BYTE1(v69) ^ 0x6F)] ^ *&v98[4 * (v79 ^ v56 ^ 0x5C)] ^ 0x77FF89ED;
  v100 = BYTE1(v79) ^ 0x8E;
  v101 = v90 ^ a36 ^ ((BYTE3(v85) ^ 0xBA) - (BYTE3(v85) ^ 0x500AD409)) ^ (((v69 >> 15) & 0x1FE ^ 0x1D2) - 658066931) ^ (v100 - 26694168) ^ *&v96[4 * (BYTE2(v69) ^ 0xD7)] ^ *&v95[4 * (BYTE3(v85) ^ 0x2D)] ^ *&v97[4 * (BYTE1(v79) ^ 0x43)] ^ *&v98[4 * (v90 ^ 0xAD)];
  v102 = BYTE1(v73) ^ 0x5D;
  v103 = (v102 - 26694168) ^ HIDWORD(a35) ^ v85 ^ v78 ^ v92 ^ (((v79 >> 15) & 0x1FE ^ 0x38) - 658066931) ^ *&v96[4 * (BYTE2(v79) ^ 0x22)] ^ *&v95[4 * (v91 ^ 0xB3)] ^ *&v97[4 * (BYTE1(v73) ^ 0x90)] ^ *&v98[4 * (v85 ^ v78 ^ 0xF)];
  LODWORD(v85) = (HIBYTE(v99) ^ 0xAE) - (HIBYTE(v99) ^ 0x500AD41D);
  LODWORD(v75) = *&v95[4 * (HIBYTE(v99) ^ 0x39)] ^ (v85 - ((2 * v85) & 0x84A4850) - 2077760472);
  LODWORD(v104) = __ROR4__(v82, 18) ^ 0x92ADFD02;
  HIDWORD(v104) = v104;
  LODWORD(v71) = v104 >> 14;
  LODWORD(v82) = (((v71 >> 15) & 0x1FE ^ 0xD0) - ((2 * ((v71 >> 15) & 0x1FE ^ 0xD0) + 26) & 0x180) + 336038605) ^ *&v96[4 * (BYTE2(v71) ^ 0x56)];
  v105 = *&v97[4 * (BYTE1(v101) ^ 0x7B)] ^ BYTE1(v101) ^ 0xB6 ^ ((BYTE1(v101) ^ 0xB6) - 26694168) ^ *&v98[4 * (v103 ^ v102 ^ 0x22)] ^ v103 ^ v102 ^ ((-v82 ^ (v75 - (v82 ^ v75)) ^ 0x6E2F977C ^ (v82 - ((2 * v82) & 0xDC5F2EF8) + 1848612732)) + v75);
  v106 = -(v105 ^ 0xC6C57A3F) ^ (-94599918 - (v105 ^ 0x3C99FF2D)) ^ 0xD6269DA5 ^ ((v105 ^ 0xC6C57A3F) - ((2 * (v105 ^ 0xC6C57A3F)) & 0xAC4D3B4A) - 702112347);
  v107 = v99 ^ v93 ^ a35 ^ (((v101 >> 15) & 0x1FE ^ 0x92) - 658066931) ^ ((BYTE3(v71) ^ 0x94) - (BYTE3(v71) ^ 0x500AD427)) ^ *&v96[4 * (BYTE2(v101) ^ 0x77)] ^ *&v98[4 * (v99 ^ v93 ^ 0x13)];
  v108 = BYTE1(v103) ^ 0xC7;
  v109 = v107 ^ (v108 - 26694168) ^ *&v95[4 * (BYTE3(v71) ^ 3)] ^ *&v97[4 * (BYTE1(v103) ^ 0xA)];
  v110 = BYTE1(v99) ^ 0x88 ^ HIDWORD(a34) ^ ((BYTE1(v99) ^ 0x88) - 26694168) ^ (v104 >> 14) ^ ((((HIBYTE(v101) ^ 0xC3) - (HIBYTE(v101) ^ 0x500AD470)) ^ 1) + 1) ^ (((v103 >> 15) & 0x1FE ^ 0xA) - 658066931) ^ *&v95[4 * (HIBYTE(v101) ^ 0x54)] ^ *&v96[4 * (BYTE2(v103) ^ 0x3B)] ^ *&v97[4 * (BYTE1(v99) ^ 0x45)] ^ *&v98[4 * ((v104 >> 14) ^ 0x3B)];
  v111 = BYTE1(v71) ^ 0x52;
  v112 = (((v99 >> 15) & 0x1FE ^ 0x150) - 658066931) ^ a34 ^ v101 ^ v100 ^ ((HIBYTE(v103) ^ 0xEE) - (HIBYTE(v103) ^ 0x500AD45D)) ^ (v111 - 26694168) ^ *&v95[4 * (HIBYTE(v103) ^ 0x79)] ^ *&v96[4 * (BYTE2(v99) ^ 0x96)] ^ *&v98[4 * (v101 ^ v100 ^ 0x32)] ^ *&v97[4 * (BYTE1(v71) ^ 0x9F)];
  v113 = (((v110 ^ 0xD033907B) - (v110 ^ 0x3F1E266C)) ^ 0xFFFFFFFE) + (v110 ^ 0xD033907B);
  v114 = (v106 - 94599918) ^ HIDWORD(a33);
  v115 = BYTE1(v112);
  v116 = ((v112 >> 8) & 0xB2 ^ 0x30601CB1 ^ ((BYTE1(v112) ^ 0xE0) - 26694168) & 0xB80021B2) & ~(((BYTE1(v112) ^ 0xE0) - 26694168) & 0x46688E4D ^ (v112 >> 8) & 0x4D) | (((BYTE1(v112) ^ 0xE0) - 26694168) & 0x46688E4D ^ (v112 >> 8) & 0x4D) & 0x8824C;
  v117 = ((BYTE1(v114) ^ 2) - 26694168) ^ BYTE1(v114) ^ 2;
  v118 = (((v112 >> 15) & 0x1FE ^ 0x138) - 658066931) ^ (HIBYTE(v113) - (HIBYTE(v113) ^ 0x500AD4B3)) ^ *&v96[4 * (BYTE2(v112) ^ 0xA2)] ^ *&v95[4 * (HIBYTE(v113) ^ 0x97)];
  v119 = v109 ^ v108;
  LODWORD(v75) = *&v97[4 * (BYTE1(v114) ^ 0xCF)];
  v120 = (-v117 ^ (v117 - ((2 * v117) & 0xC8800A64) - 447396558) ^ 0xE5554532 ^ ((v75 ^ 0xAF49A5B4) - ((v117 - ((2 * v117) & 0x5C914B68) - 1354127948) ^ v75))) + (v75 ^ 0xAF49A5B4);
  v239 = *(v43 - 136) < 0x8ACE885F;
  v121 = v118 & 4;
  if ((v120 & v118 & 4) != 0)
  {
    v121 = -v121;
  }

  v122 = v121 + v120;
  v123 = HIBYTE(v112);
  v124 = (HIBYTE(v112) ^ 0xE0) - (HIBYTE(v112) ^ 0x500AD453);
  v125 = *&v96[4 * (BYTE2(v109) ^ 0xE1)] ^ a33 ^ (((2 * BYTE2(v109)) ^ 0x1BE) - 658066931) ^ *&v97[4 * (BYTE1(v113) ^ 0xCD)] ^ *&v98[4 * (v112 ^ v111 ^ 0xB4)] ^ v112 ^ v111 ^ (BYTE1(v113) - 26694168) ^ ((HIBYTE(v114) ^ 0x1D) - (HIBYTE(v114) ^ 0x500AD4AE)) ^ *&v95[4 * (HIBYTE(v114) ^ 0x8A)];
  v126 = ((((HIBYTE(v109) ^ 0xE9) - (HIBYTE(v109) ^ 0x500AD45A)) ^ 1) + 1) ^ HIDWORD(a32) ^ *&v95[4 * (HIBYTE(v109) ^ 0x7E)] ^ *&v97[4 * (v115 ^ 0x2D)] ^ *&v96[4 * (BYTE2(v113) ^ 0x3E)] ^ (((v113 >> 15) & 0x1FE) - 658066931) ^ v116 ^ *&v98[4 * (((v106 + 18) ^ BYTE4(a33)) ^ 0xFE)];
  v127 = *(&off_1010A0B50 + v94 - 10469) - 1294034163;
  v128 = v119 ^ a32 ^ *&v98[4 * (v119 ^ 0x29)] ^ v118 & 0xFFFFFFFB ^ v122;
  v129 = BYTE1(v109) ^ 0xC2;
  v130 = (v129 - 26694168) ^ HIDWORD(a31) ^ v124 ^ v113 ^ *&v95[4 * (v123 ^ 0x77)] ^ *&v97[4 * (BYTE1(v109) ^ 0xF)] ^ (((v114 >> 15) & 0x1FE ^ 0x1FA) - 658066931) ^ *&v98[4 * (v113 ^ 0xEC)] ^ *&v96[4 * (BYTE2(v114) ^ 0xC3)];
  v131 = ((v129 - 24) ^ BYTE4(a31) ^ v124 ^ v113 ^ v95[4 * (v123 ^ 0x77)] ^ v97[4 * (BYTE1(v109) ^ 0xF)] ^ (((v114 >> 15) & 0xFE ^ 0xFA) + 13) ^ v98[4 * (v113 ^ 0xEC)] ^ v96[4 * (BYTE2(v114) ^ 0xC3)]) ^ v129;
  v132 = HIBYTE(v130);
  v133 = (HIBYTE(v130) ^ 0xE3) - (HIBYTE(v130) ^ 0x500AD450);
  v134 = BYTE1(v130) ^ 0xD1;
  v135 = ((HIBYTE(v126) ^ 0xD) - (HIBYTE(v126) ^ 0x500AD4BE)) ^ HIDWORD(a21) ^ (v125 ^ BYTE1(v113)) ^ *&v95[4 * (HIBYTE(v126) ^ 0x9A)] ^ *&v97[4 * (BYTE1(v130) ^ 0x1C)] ^ *&v98[4 * ((v125 ^ BYTE1(v113)) ^ 3)] ^ (v134 - 26694168) ^ (((v128 >> 15) & 0x1FE ^ 0x52) - 658066931) ^ *&v96[4 * (BYTE2(v128) ^ 0x17)];
  v136 = BYTE1(v125) ^ 0x56;
  v137 = (v126 ^ v114) ^ a31 ^ (v136 - 26694168) ^ (((v130 >> 15) & 0x1FE ^ 0x1EA) - 658066931) ^ *&v96[4 * (BYTE2(v130) ^ 0xCB)] ^ *&v97[4 * (BYTE1(v125) ^ 0x9B)] ^ *&v98[4 * ((v126 ^ v114) ^ 0x4E)] ^ ((HIBYTE(v128) ^ 0xBA) - (HIBYTE(v128) ^ 0x500AD409)) ^ *&v95[4 * (HIBYTE(v128) ^ 0x2D)];
  v138 = BYTE1(v126) ^ 0xD5;
  v139 = (v138 - 26694168) ^ HIDWORD(a22) ^ (((v125 >> 15) & 0x1FE ^ 0x70) - 658066931) ^ v133 ^ *&v95[4 * (v132 ^ 0x74)] ^ *&v96[4 * (BYTE2(v125) ^ 6)] ^ v128 ^ *&v97[4 * (BYTE1(v126) ^ 0x18)] ^ *&v98[4 * (v128 ^ 0xD9)];
  v140 = HIDWORD(a13) ^ __ROR4__(__ROR4__(a19 ^ *&v95[4 * (HIBYTE(v125) ^ 0xB0)] ^ *&v96[4 * (BYTE2(v126) ^ 0xF0)] ^ (((v126 >> 15) & 0x1FE ^ 0x19C) - 658066931) ^ ((HIBYTE(v125) ^ 0x27) - (HIBYTE(v125) ^ 0x500AD494)) ^ *&v98[4 * (v131 ^ 0x78)] ^ v131 ^ BYTE1(v128) ^ 0x2F ^ ((BYTE1(v128) ^ 0x2F) - 26694168) ^ *&v97[4 * (BYTE1(v128) ^ 0xE2)] ^ 0x155631B8, 25) ^ 0x5D46309D, 7);
  v141 = *&v96[4 * (BYTE2(v135) ^ 0xB8)];
  v142 = HIBYTE(v140);
  v143 = v135 ^ v134;
  v144 = BYTE1(v137) ^ 0x62;
  v145 = *&v95[4 * (v142 ^ 0xF2)] ^ HIDWORD(a38) ^ *&v97[4 * (BYTE1(v137) ^ 0xAF)] ^ (v144 - 26694168) ^ __ROR4__(__ROR4__(*&v98[4 * (v139 ^ v138 ^ 0x7F)] ^ v139 ^ v138 ^ 0x9ACCC606, 3) ^ 0xE3799234, 29) ^ ((v142 ^ 0x65) - (v142 ^ 0x500AD4D6)) ^ (((((v135 >> 15) & 0x1FE ^ 0x10C) - 658066931) & 0xC044129B ^ v141 & 0xC674529B ^ 0xFBFFFFFF) & (v141 & 0x398BAD64 ^ (((v135 >> 15) & 0x1FE ^ 0x10C) - 658066931) & 0x1882A564 ^ 0x35164F6D) | ((((v135 >> 15) & 0x1FE ^ 0x10C) - 658066931) & 0xC044129B ^ v141 & 0xC674529B) & 0xC2601092);
  v146 = v137 ^ v136;
  v147 = BYTE1(v139) ^ 0xE8;
  v148 = a13 ^ *&v95[4 * (HIBYTE(v135) ^ 0x8D)] ^ *&v96[4 * (BYTE2(v137) ^ 0x7A)] ^ *&v97[4 * (BYTE1(v139) ^ 0x25)] ^ (v147 - 26694168) ^ (((v137 >> 15) & 0x1FE ^ 0x88) - 658066931) ^ ((HIBYTE(v135) ^ 0x1A) - (HIBYTE(v135) ^ 0x500AD4A9)) ^ *&v98[4 * (v140 ^ 0x2B)];
  v149 = ((HIBYTE(v137) ^ 0xE7) - (HIBYTE(v137) ^ 0x500AD454)) ^ a30 ^ v143 ^ (((v139 >> 15) & 0x1FE ^ 0xFE) - 658066931) ^ *&v95[4 * (HIBYTE(v137) ^ 0x70)] ^ *&v96[4 * (BYTE2(v139) ^ 0x41)] ^ *&v98[4 * (v143 ^ 9)];
  v150 = BYTE1(v140) ^ 0xF3;
  v151 = v149 ^ (v150 - 26694168) ^ *&v97[4 * (BYTE1(v140) ^ 0x3E)];
  v152 = BYTE1(v135);
  v153 = v146 ^ HIDWORD(a30) ^ ((HIBYTE(v139) ^ 3) - (HIBYTE(v139) ^ 0x500AD4B0)) ^ ((v152 ^ 0xB3) - 26694168) ^ *&v95[4 * (HIBYTE(v139) ^ 0x94)] ^ *&v97[4 * (v152 ^ 0x7E)] ^ *&v98[4 * (v146 ^ 0xCA)] ^ (((v140 >> 15) & 0x1FE ^ 0x19E) - 658066931) ^ *&v96[4 * (BYTE2(v140) ^ 0xF1)];
  v154 = v153 ^ v152 ^ 0xB3;
  v155 = BYTE1(v151) ^ 0xDF;
  v156 = *&v95[4 * (HIBYTE(v145) ^ 0xCC)] ^ a22 ^ *&v96[4 * (BYTE2(v148) ^ 0xC3)] ^ *&v97[4 * (BYTE1(v151) ^ 0x12)] ^ *&v98[4 * (v154 ^ 0xBE)] ^ (((v148 >> 15) & 0x1FE ^ 0x1FA) - 658066931) ^ ((HIBYTE(v145) ^ 0x5B) - (HIBYTE(v145) ^ 0x500AD4E8)) ^ (v155 - 26694168);
  v157 = v154 ^ v155;
  v158 = v145 ^ v144;
  v159 = (HIBYTE(v151) ^ 0xBE) - (HIBYTE(v151) ^ 0x500AD40D);
  v160 = *&v95[4 * (HIBYTE(v151) ^ 0x29)] ^ (v159 - ((2 * v159) & 0x84A4850) - 2077760472);
  v161 = (((v153 >> 15) & 0x1FE ^ 0x100) - ((4 * HIWORD(v153) + 26) & 0x180) + 336038605) ^ *&v96[4 * (BYTE2(v153) ^ 0xBE)];
  v162 = v161 + v160 - 2 * (v161 & v160);
  v163 = (v148 ^ v140) ^ v147;
  v164 = (v149 ^ (v150 - 24) ^ v97[4 * (BYTE1(v140) ^ 0x3E)]) ^ v150;
  v165 = BYTE1(v153) ^ 0xC;
  v166 = ((HIBYTE(v148) ^ 0x58) - (HIBYTE(v148) ^ 0x500AD4EB)) ^ a29 ^ v158 ^ *&v95[4 * (HIBYTE(v148) ^ 0xCF)] ^ *&v96[4 * (BYTE2(v151) ^ 0xA1)] ^ *&v97[4 * (BYTE1(v153) ^ 0xC1)] ^ (((v151 >> 15) & 0x1FE ^ 0x13E) - 658066931) ^ (v165 - 26694168) ^ *&v98[4 * (v158 ^ 0xD9)];
  v167 = BYTE1(v145) ^ 0xA3;
  v168 = v163 ^ HIDWORD(a28) ^ (v167 - 26694168) ^ *&v98[4 * (v163 ^ 0xD5)] ^ *&v97[4 * (BYTE1(v145) ^ 0x6E)] ^ v162;
  v169 = BYTE1(v148) ^ 0x8F;
  v170 = (v169 - 26694168) ^ HIDWORD(a29) ^ v164 ^ ((HIBYTE(v153) ^ 0xAE) - (HIBYTE(v153) ^ 0x500AD41D)) ^ (((v145 >> 15) & 0x1FE ^ 0xF2) - 658066931) ^ *&v95[4 * (HIBYTE(v153) ^ 0x39)] ^ *&v97[4 * (BYTE1(v148) ^ 0x42)] ^ *&v96[4 * (BYTE2(v145) ^ 0x47)] ^ *&v98[4 * (v164 ^ 0xE2)];
  v171 = BYTE1(v168) ^ 0xB7;
  v172 = ((HIBYTE(v156) ^ 0x47) - (HIBYTE(v156) ^ 0x500AD4F4)) ^ a21 ^ *&v95[4 * (HIBYTE(v156) ^ 0xD0)] ^ *&v96[4 * (BYTE2(v166) ^ 0x8D)] ^ *&v97[4 * (BYTE1(v168) ^ 0x7A)] ^ (((v166 >> 15) & 0x1FE ^ 0x166) - 658066931) ^ *&v98[4 * (v170 ^ v169 ^ 0x9C)] ^ (v171 - 26694168);
  v173 = (v156 ^ v157);
  v174 = HIDWORD(a19) ^ v173 ^ 0x19 ^ ((HIBYTE(v166) ^ 0x60) - (HIBYTE(v166) ^ 0x500AD4D3)) ^ *&v95[4 * (HIBYTE(v166) ^ 0xF7)] ^ *&v96[4 * (BYTE2(v168) ^ 0xD7)] ^ *&v97[4 * (BYTE1(v170) ^ 0x41)] ^ (((2 * BYTE2(v168)) ^ 0x1D2) - 658066931) ^ BYTE1(v170) ^ 0x8C ^ ((BYTE1(v170) ^ 0x8C) - 26694168) ^ 0xFD67D8A4 ^ *&v98[4 * (-(v173 ^ 0x19) ^ (236 - (v173 ^ 0xF5)) ^ ((v173 ^ 0x19) - ((2 * (v156 ^ v157)) & 0x148) - 996910172) ^ 0xC4945BA4) + 944];
  v175 = BYTE1(v156) ^ 0x78;
  v176 = (v175 - 26694168) ^ a28 ^ v166 ^ v165 ^ ((HIBYTE(v168) ^ 0xFA) - (HIBYTE(v168) ^ 0x500AD449)) ^ *&v95[4 * (HIBYTE(v168) ^ 0x6D)] ^ *&v96[4 * (BYTE2(v170) ^ 0xB7)] ^ (((v170 >> 15) & 0x1FE ^ 0x112) - 658066931) ^ *&v97[4 * (BYTE1(v156) ^ 0xB5)] ^ *&v98[4 * (v166 ^ v165 ^ 0xB4)];
  v177 = BYTE1(v166) ^ 0xCA;
  v178 = (((v156 >> 15) & 0x1FE ^ 0x174) - 658066931) ^ HIDWORD(a27) ^ (v177 - 26694168) ^ v168 ^ v167 ^ ((HIBYTE(v170) ^ 0xE4) - (HIBYTE(v170) ^ 0x500AD457)) ^ *&v95[4 * (HIBYTE(v170) ^ 0x73)] ^ *&v96[4 * (BYTE2(v156) ^ 0x84)] ^ *&v97[4 * (BYTE1(v166) ^ 7)] ^ *&v98[4 * (v168 ^ v167 ^ 0x66)];
  v179 = __ROR4__(__ROR4__(v174, 17) ^ 0x1E0C9C56, 15);
  v180 = ((HIBYTE(v172) ^ 0xDD) - (HIBYTE(v172) ^ 0x500AD46E)) ^ a27 ^ *&v95[4 * (HIBYTE(v172) ^ 0x4A)] ^ *&v97[4 * (BYTE1(v176) ^ 0x17)] ^ *&v98[4 * (v178 ^ v177 ^ 0xC4)] ^ v178 ^ v177 ^ *&v96[4 * (((HIDWORD(a12) ^ v179) >> 16) ^ 0x93)] ^ (((((v176 << 9) & 0x1FE0000 ^ 0x1B40000) + 1540488401) ^ (v176 << 9) & 0x1FE0000) >> 17) ^ ((((HIDWORD(a12) ^ v179) >> 15) & 0x1FE ^ 0x15A) - 658066931);
  v181 = (HIDWORD(a12) ^ v179) >> 24;
  v182 = BYTE1(v178) ^ 0xD;
  v183 = (v172 ^ v170 ^ v169) ^ v171 ^ HIDWORD(a26) ^ *&v96[4 * (BYTE2(v176) ^ 0xDF)] ^ *&v97[4 * (BYTE1(v178) ^ 0xC0)] ^ (v182 - 26694168) ^ (((v176 >> 15) & 0x1FE ^ 0x1C2) - 658066931) ^ *&v98[4 * ((v172 ^ v170 ^ v169) ^ v171 ^ 0x2F)] ^ ((v181 ^ 0x6F) - (v181 ^ 0x500AD4DC)) ^ *&v95[4 * (v181 ^ 0xF8)];
  v184 = BYTE1(v172) ^ 6;
  v185 = v184 ^ ((HIBYTE(v176) ^ 0xD) - (HIBYTE(v176) ^ 0x500AD4BE)) ^ (v184 - 26694168) ^ (((v178 >> 15) & 0x1FE ^ 0x1F8) - 658066931) ^ *&v95[4 * (HIBYTE(v176) ^ 0x9A)] ^ *&v96[4 * (BYTE2(v178) ^ 0xC2)] ^ (BYTE4(a12) ^ v179) ^ *&v97[4 * v184 + 824 + 4 * ((v172 >> 7) & 0x19A ^ 0xFFFFFFF7)] ^ 0x1CDD1845 ^ *&v98[4 * ((BYTE4(a12) ^ v179) ^ 0x92)];
  v186 = v176 ^ v175;
  v187 = *&v98[4 * (v186 ^ 0x32)];
  v188 = ((WORD2(a12) ^ v179) >> 8);
  v189 = (((v172 >> 15) & 0x1FE ^ 0x11E) - 658066931) ^ a26 ^ ((HIBYTE(v178) ^ 0x19) - (HIBYTE(v178) ^ 0x500AD4AA)) ^ *&v95[4 * (HIBYTE(v178) ^ 0x8E)] ^ *&v96[4 * (BYTE2(v172) ^ 0xB1)] ^ ((v188 ^ 7) - 26694168) ^ ((-(v186 ^ 0x53B1A97C) ^ ((v186 ^ 0x53B1A97C) - ((2 * (v186 ^ 0x53B1A97C)) & 0xA12341CC) + 1955706598) ^ 0x7491B6E6 ^ ((v187 ^ 0x3A3D76E7) - (v186 ^ 0x698CDF9B ^ v187))) + (v187 ^ 0x3A3D76E7)) ^ *&v97[4 * (v188 ^ 0xCA)];
  v190 = ((v185 & 0xC9BBCBCE ^ 0xE5C782AD) & (v185 & 0x36443431 ^ 0xFDBBFBCF) | v185 & 0x12003410) ^ a25;
  v237 = *&v95[4 * (HIBYTE(v180) ^ 0xE0)];
  v191 = *&v95[4 * (HIBYTE(v183) ^ 0x99)];
  v238 = *&v95[4 * (HIBYTE(v190) ^ 0x63)];
  v236 = *&v95[4 * (HIBYTE(v189) ^ 0x1F)];
  v192 = *&v96[4 * (BYTE2(v183) ^ 0xA6)];
  v193 = *&v96[4 * (BYTE2(v190) ^ 0x81)];
  v194 = *&v96[4 * (BYTE2(v189) ^ 0xE)];
  v235 = *&v96[4 * (BYTE2(v180) ^ 0x10)];
  v195 = BYTE1(v189) ^ 0xF9;
  v196 = v180 ^ HIDWORD(a25) ^ ((HIBYTE(v183) ^ 0xE) - (HIBYTE(v183) ^ 0x500AD4BD)) ^ v191 ^ *&v97[4 * (BYTE1(v189) ^ 0x34)] ^ *&v127[4 * (v180 ^ 0x93)] ^ (v195 - 26694168) ^ v193 ^ (((v190 >> 15) & 0x1FE ^ 0x17E) - 658066931);
  v197 = a14 ^ ((HIBYTE(v180) ^ 0x77) - (HIBYTE(v180) ^ 0x500AD4C4)) ^ v192 ^ v237 ^ (((v183 >> 15) & 0x1FE ^ 0x130) - 658066931) ^ *&v97[4 * (BYTE1(v190) ^ 0x8D)] ^ *&v127[4 * (v189 ^ v188 ^ 7 ^ 0xD4)] ^ v189 ^ v188 ^ 7 ^ BYTE1(v190) ^ 0x40 ^ ((BYTE1(v190) ^ 0x40) - 26694168) ^ 0x58E21C56;
  v198 = HIDWORD(a24) ^ v183 ^ v182 ^ BYTE1(v180) ^ 0xE3 ^ ((BYTE1(v180) ^ 0xE3) - 26694168) ^ ((HIBYTE(v190) ^ 0xF4) - (HIBYTE(v190) ^ 0x500AD447)) ^ v194 ^ *&v97[4 * (BYTE1(v180) ^ 0x2E)] ^ (((v189 >> 15) & 0x1FE ^ 0x60) - 658066931) ^ v238 ^ *&v127[4 * (v183 ^ v182 ^ 0x50)] ^ 0x408B94C6;
  v199 = *(v43 - 132);
  v200 = a24 ^ BYTE1(v183) ^ 0xE5 ^ ((BYTE1(v183) ^ 0xE5) - 26694168) ^ v190 ^ (((v180 >> 15) & 0x1FE ^ 0x5C) - 658066931) ^ ((HIBYTE(v189) ^ 0x88) - (HIBYTE(v189) ^ 0x500AD43B)) ^ v236 ^ *&v97[4 * (BYTE1(v183) ^ 0x28)] ^ v235 ^ 0x32E8552C ^ *&v127[4 * (v190 ^ 0xDC)];
  v201 = *(&off_1010A0B50 + v199 - 10614) - 1308220938;
  v202 = *(&off_1010A0B50 + v199 - 11813) - 670209075;
  v203 = *(&off_1010A0B50 + (v199 ^ 0x3431)) - 2039744875;
  v204 = *&v202[4 * (HIBYTE(v196) ^ 0x58)] ^ *&v203[4 * (BYTE1(v200) ^ 0xCB)];
  v205 = *&v202[4 * HIBYTE(v197)];
  v206 = *&v202[4 * HIBYTE(v198)];
  v207 = *&v202[4 * HIBYTE(v200)];
  LOWORD(v202) = v195 ^ 0x1C9D ^ v196;
  v208 = *&v201[4 * (BYTE2(v196) ^ 0xE2)];
  v209 = *&v201[4 * BYTE2(v200)];
  v210 = *&v201[4 * BYTE2(v197)];
  v211 = BYTE1(v198);
  v212 = *&v203[4 * (BYTE1(v198) ^ 0xCB)];
  v213 = *(&off_1010A0B50 + v199 - 10559) - 1376890907;
  v214 = BYTE1(v197);
  v215 = *&v203[4 * (BYTE1(v197) ^ 0xCB)];
  LODWORD(v201) = BYTE1(v200) ^ HIDWORD(a20) ^ __ROR4__(*&v201[4 * BYTE2(v198)], 27) ^ v204 ^ *&v213[4 * v197];
  v216 = *&v203[4 * (BYTE1(v202) ^ 0xCB)];
  v217 = *&v213[4 * v200];
  v218 = *&v213[4 * v202];
  v219 = *&v213[4 * v198];
  v220 = *(&off_1010A0B50 + v199 - 14386) - 151818918;
  *(a39 + *(v43 - 204)) = ((BYTE1(v201) ^ 9) + 62) ^ v220[BYTE1(v201) ^ 0x8DLL] ^ 0x8F;
  v221 = *(&off_1010A0B50 + (v199 ^ 0x2BB2)) - 865563654;
  *(a39 + v240) = v221[(v201 >> 24) ^ 0x2DLL] ^ ((v221[(v201 >> 24) ^ 0x2DLL] >> 7) | 8) ^ ((v221[(v201 >> 24) ^ 0x2DLL] >> 3) | 0xE0) ^ 0x2B;
  v222 = __ROR4__(v208, 27);
  v223 = v217 ^ HIDWORD(a23) ^ ((v211 ^ 0x15667981 ^ v212) + (v205 ^ v222 ^ 0xAC1F9376) - 2 * ((v211 ^ 0x15667981 ^ v212) & (v205 ^ v222 ^ 0xAC1F9376)));
  v224 = v221[HIBYTE(v223) ^ 0x16];
  *(a39 + *(v43 - 184)) = v224 ^ ((~v224 & 0xF8u) >> 3) ^ ((v221[HIBYTE(v223) ^ 0x16] >> 7) | 0xA) ^ 0x74;
  v225 = *(&off_1010A0B50 + (v199 ^ 0x3944)) - 135700354;
  *(a39 + *(v43 - 256)) = ((v223 ^ 0xC4) + v225[v223 ^ 0x86] - 57) ^ 5;
  v226 = a12 ^ BYTE1(v202) ^ v207 ^ v216 ^ __ROR4__(v210, 27) ^ v219;
  v227 = *(&off_1010A0B50 + (v199 ^ 0x31F0)) - 1539072950;
  *(a39 + *(v43 - 200)) = (21 * v227[((v226 ^ 0xB7976E4D) >> 16) ^ 0xCBLL] + 116) ^ 0xBC;
  LODWORD(v202) = v214 ^ a20 ^ v206 ^ v215 ^ __ROR4__(v209, 27) ^ v218;
  *(a39 + *(v43 - 232)) = (21 * v227[BYTE2(v202) ^ 0xB9] + 116) ^ 0x5A;
  *(a39 + *(v43 - 168)) = (21 * v227[BYTE2(v223) ^ 0xF1] + 116) ^ 0x53;
  *(a39 + *(v43 - 248)) = ((BYTE1(v223) ^ 0x6D) + 62) ^ 0x15 ^ v220[BYTE1(v223) ^ 0xE9];
  *(a39 + *(v43 - 176)) = (21 * v227[BYTE2(v201) ^ 0x2ALL] + 116) ^ 0xDA;
  LODWORD(v227) = v221[(v202 >> 24) ^ 0x97];
  *(a39 + *(v43 - 240)) = v227 ^ (v227 >> 3) ^ ((v221[(v202 >> 24) ^ 0x97] >> 7) | 0xF0) ^ 0x2E;
  LODWORD(v227) = v221[HIBYTE(v226) ^ 0x75];
  *(a39 + *(v43 - 160)) = v227 ^ (v227 >> 3) ^ ((v221[HIBYTE(v226) ^ 0x75] >> 7) | 0xEA) ^ 0x2D;
  *(a39 + *(v43 - 144)) = ((((v226 ^ 0x6E4D) >> 8) ^ 0x87) + 62) ^ 0xEA ^ v220[((v226 ^ 0x6E4D) >> 8) ^ 3];
  *(a39 + *(v43 - 224)) = ((v226 ^ 0x7A) + v225[v226 ^ 0x38] - 57) ^ 0xB;
  *(a39 + *(v43 - 192)) = ((v201 ^ 0x48) + v225[v201 ^ 0xALL] - 57) ^ 0x3C;
  *(a39 + *(v43 - 216)) = ((v202 ^ 0xE0) + v225[v202 ^ 0xA2] - 57) ^ 0xE;
  *(a39 + *(v43 - 152)) = ((BYTE1(v202) ^ 0x4D) + 62) ^ 0x16 ^ v220[BYTE1(v202) ^ 0xC9];
  LODWORD(v227) = (((*(v43 - 208) ^ 0x85A1F3F5) + 2052983819) ^ ((*(v43 - 208) ^ 0x1FA2F01B) - 530771995) ^ ((*(v43 - 208) ^ 0x230C2EBB) - 588000955)) - 255651619;
  v228 = (v227 ^ 0x8F4B1E6E) & (2 * (v227 & 0xC84C1C88)) ^ v227 & 0xC84C1C88;
  LODWORD(v213) = ((2 * (v227 ^ 0xF5B0E7E)) ^ 0x8E2E25EC) & (v227 ^ 0xF5B0E7E) ^ (2 * (v227 ^ 0xF5B0E7E)) & 0xC71712F6;
  v229 = v213 ^ 0x41111212;
  LODWORD(v213) = (v213 ^ 0x2000060) & (4 * v228) ^ v228;
  v230 = ((4 * v229) ^ 0x1C5C4BD8) & v229 ^ (4 * v229) & 0xC71712F0;
  LODWORD(v213) = (v230 ^ 0x41402C0) & (16 * v213) ^ v213;
  v231 = ((16 * (v230 ^ 0xC3031026)) ^ 0x71712F60) & (v230 ^ 0xC3031026) ^ (16 * (v230 ^ 0xC3031026)) & 0xC71712E0;
  LODWORD(v213) = v213 ^ 0xC71712F6 ^ (v231 ^ 0x41110200) & (v213 << 8);
  LODWORD(v213) = v227 ^ (2 * ((v213 << 16) & 0x47170000 ^ v213 ^ ((v213 << 16) ^ 0x12F60000) & (((v231 ^ 0x86061096) << 8) & 0x47170000 ^ 0x40050000 ^ (((v231 ^ 0x86061096) << 8) ^ 0x17120000) & (v231 ^ 0x86061096))));
  LODWORD(v227) = (((v213 ^ 0xC2B180E1) - 972068048) ^ ((v213 ^ 0x620CCC8F) + 1722951490) ^ ((v213 ^ 0xE2F3750A) - 431120699)) + 1138603444;
  v232 = v239 ^ (v227 < 0x8ACE885F);
  v233 = v227 < *(v43 - 136);
  if (v232)
  {
    v233 = v239;
  }

  return (*(a40 + 8 * ((39128 * v233) ^ v199)))(21, v206, v216, v209, v225, v221, v214, v215, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_1001D16E8@<X0>(char a1@<W1>, char a2@<W2>, char a3@<W3>, char a4@<W4>, char a5@<W5>, char a6@<W6>, char a7@<W7>, int a8@<W8>)
{
  STACK[0x2F8] = v9 - 1;
  *(v12 + v9 - 1) = (v8 ^ ((v8 ^ a3) + a4) ^ ((v8 ^ a6) + a7) ^ (109 - v8) ^ (((a8 + a1) & a2 ^ 0x70) + (v8 ^ a5)) ^ v10) * (v8 - 92);
  return (*(v11 + 8 * (((STACK[0x2F8] == 0) * v13) ^ a8)))();
}

uint64_t sub_1001D17A8()
{
  v5 = v4 + 4;
  STACK[0x4D0] = v5;
  if (v5 > v2)
  {
    v1 = 371891407;
  }

  LODWORD(STACK[0x4D8]) = v1;
  return (*(v3 + 8 * (((v1 == (v0 ^ 0x1A41) - 371866584) * ((v0 ^ 0x39BD) + 27809)) ^ v0)))();
}

uint64_t sub_1001D1864(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  HIDWORD(a25) = a2;
  LODWORD(a26) = a1;
  return (*(a3 + 8 * v39))(0, 3301447466, &a39, a4, a5, HIDWORD(a30), ((v39 ^ 1) + 1037776097) & 0xF7BDDB58, 4131157519, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, __PAIR64__(a5, v40));
}

uint64_t sub_1001D1970@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (v6 == 24)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6 + 1;
  }

  v9 = ~*(a3 + v8) & 7;
  v10 = (((3 * (v4 ^ 0x5763) - 21214) ^ a2) << (8 - v9)) ^ (((3 * (v4 ^ 0x5763) - 21214) ^ a2) >> v9);
  *(a3 + v6) = v10 ^ v7;
  if (v6 >= 0xC)
  {
    v11 = -12;
  }

  else
  {
    v11 = 13;
  }

  v12 = (*(a3 + (v11 + v6)) ^ v7) << 16;
  v13 = 2 * v6;
  if (v6 >= 0xD)
  {
    v13 = 2 * v6 - 25;
  }

  v14 = v12 | (v10 << 24) | ((*(a3 + v13) ^ v7) << 8);
  v15 = ((*(a3 + v6 * v6 + 17 - (v6 * v6 + 17) / 0x19u * v5) ^ 0xCCB020F4) & ~v14 | v14 & 0x334FDF00) ^ 0xCCB020AB;
  v16 = ((8 * v15) ^ (v15 >> 5)) + v15;
  v17 = HIWORD(v16);
  v18 = v17 + v16 * v16 * v16 + (v16 >> 8) * (v16 >> 8) * (v16 >> 8) * (v16 >> 8) * (v16 >> 8) + v17 * v17 * v17 * HIWORD(v16) * v17 * v17 * v17;
  return (*(v3 + 8 * v4))(a1, (v18 - ((2 * v18) & 0xF0) - 8) ^ 0xFFFFFFA7);
}

uint64_t sub_1001D1AA4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned int *a31)
{
  v32 = (((*a31 ^ 0x7336ECE8) - 1932979432) ^ ((*a31 ^ 0x9869ECDC) + 1737888548) ^ ((*a31 ^ 0xDD80EE31) + 578752975)) + (((a1 + 2744573) | 0x5F012419) ^ 0xF347B81E);
  v33 = (v32 ^ 0x8A7B427E) & (2 * (v32 & 0x8A73107F)) ^ v32 & 0x8A73107F;
  v34 = ((2 * (v32 ^ 0x9E3D4272)) ^ 0x289CA41A) & (v32 ^ 0x9E3D4272) ^ (2 * (v32 ^ 0x9E3D4272)) & 0x144E520C;
  v35 = v34 ^ 0x14425205;
  v36 = (v34 ^ 0xC0008) & (4 * v33) ^ v33;
  v37 = ((4 * v35) ^ 0x51394834) & v35 ^ (4 * v35) & 0x144E520C;
  v38 = v36 ^ 0x144E520D ^ (v37 ^ 0x10084000) & (16 * v36);
  v39 = (16 * (v37 ^ 0x4461209)) & 0x144E5200 ^ 0x100A520D ^ ((16 * (v37 ^ 0x4461209)) ^ 0x44E520D0) & (v37 ^ 0x4461209);
  v40 = (v38 << 8) & 0x144E5200 ^ v38 ^ ((v38 << 8) ^ 0x4E520D00) & v39;
  *a31 = v32 ^ (2 * ((v40 << 16) & 0x144E0000 ^ v40 ^ ((v40 << 16) ^ 0x520D0000) & ((v39 << 8) & 0x144E0000 ^ 0x100C0000 ^ ((v39 << 8) ^ 0x4E520000) & v39))) ^ 0xBCAC5A60;
  return (*(v31 + 8 * a1))();
}

uint64_t sub_1001D1CCC@<X0>(char a1@<W1>, char a2@<W2>, char a3@<W3>, char a4@<W4>, char a5@<W5>, char a6@<W6>, char a7@<W7>, uint64_t a8@<X8>)
{
  v24 = a8 - 1;
  v25 = ((2 * (v8 ^ 0x34)) ^ v10) & (v8 ^ 0x34) ^ (2 * (v8 ^ 0x34)) & v11;
  v26 = v25 ^ v12;
  v27 = (v25 ^ v13) & (4 * ((v9 & (2 * v8) ^ 0x85) & v8)) ^ (v9 & (2 * v8) ^ 0x85) & v8;
  v28 = v8 ^ (2 * ((((4 * v26) ^ a1) & v26 ^ (4 * v26) & a2) & (16 * v27) ^ v27));
  v29 = (((v28 ^ a4) + a5) ^ ((v28 ^ a6) + a7) ^ ((v28 ^ v17) + v18)) + v19;
  *(v15 + v24) = v29 * (v8 + a3) + ((v8 + a3) * v20 - 8 * v29) * v21 + v22;
  return (*(v14 + 8 * (((v24 == 0) * v23) ^ v16)))();
}

uint64_t sub_1001D1E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unsigned int a34, uint64_t (*a35)(uint64_t, uint64_t, uint64_t, void), _DWORD *a36)
{
  v41 = v39 - 2009185106 + (((a36[18] ^ 0x6A37B467) - 1782035559) ^ ((a36[18] ^ 0xF4DD18D9) + 186836775) ^ ((a36[18] ^ 0x83962AC2) + 2087310654));
  v42 = (((a36[19] ^ 0x351F1631) - 891229745) ^ ((a36[19] ^ 0x15E9D3B9) - 367645625) ^ ((a36[19] ^ 0x3D8A43F4) - 1032471540)) + (((v38 ^ 0x22221192) - 572658066) ^ ((v38 ^ 0x122AA77D) - 304785277) ^ ((v38 ^ 0x5EAFD391) - 1588581265));
  a36[18] = v41 - ((2 * v41 + 551290276) & 0x3AF90CF8) + 1307216206;
  a36[19] = v42 - 2 * ((v42 + 203680762) & 0x1D7C867D ^ v42 & 1) - 1449102730;
  v43 = (((a36[20] ^ 0xDDE98EC5) + 571896123) ^ ((a36[20] ^ 0xFDEF71E) - 266270494) ^ ((a36[20] ^ 0xCF4BFFA7) + 817102937)) + (((v36 ^ 0xC638C358) + 969358504) ^ ((v36 ^ 0xA039A599) + 1606834791) ^ ((v36 ^ 0x6C5CF944) - 1818032452));
  v44 = (((a36[21] ^ 0x12CC87F2) - 315394034) ^ ((a36[21] ^ 0x66435648) - 1715689032) ^ ((a36[21] ^ 0x69F357C6) - 1777555398)) + (((v37 ^ 0xAE1708B4) + 1374222156) ^ ((v37 ^ 0xAB68D0F4) + 1419194124) ^ ((v37 ^ 0xBA5AF0A8) + 1168445272));
  a36[20] = v43 - ((2 * v43 + 263474178) & 0x3AF90CF8) + 1163308157;
  a36[21] = v44 - ((2 * v44 + 960716488) & 0x3AF90CF8) - 98683424;
  return a35(a1, a2, a3, a34);
}

uint64_t sub_1001D21EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39)
{
  v44 = v40 + v43 - 1158367544;
  v45 = (v44 ^ 0xF5523157) & (2 * (v44 & 0xF65B2557)) ^ v44 & 0xF65B2557;
  v46 = ((((v42 - 6504) | 0xA29) + 899264607) ^ 0x3A269536) & (2 * (v44 ^ 0xF9E47B79)) ^ ((2 * (v44 ^ 0xF9E47B79)) ^ 0x1F7EBC5C) & (v44 ^ 0xF9E47B79);
  v47 = v46 ^ 0x814222;
  v48 = (v46 ^ 0xB3C1C0C) & (4 * v45) ^ v45;
  v49 = (4 * v47) & 0xFBF5E20 ^ 0xEBD5820 ^ ((4 * v47) ^ 0x3EFD78B0) & v47;
  v50 = *(v39 + 4 * a31);
  v51 = (v50 ^ 0xDA6FB44B) & (2 * (v50 & 0xD06FB963)) ^ v50 & 0xD06FB963;
  v52 = ((2 * (v50 ^ 0x7ABF84C9)) ^ 0x55A07B54) & (v50 ^ 0x7ABF84C9) ^ (2 * (v50 ^ 0x7ABF84C9)) & 0xAAD03DAA;
  v53 = v50 ^ v44 ^ (2 * (v48 ^ v52 & (4 * v51) ^ v51 ^ ((4 * (v52 ^ 0xAA5004AA)) & 0x2AD03DA0 ^ 0x2A4034A0 ^ ((4 * (v52 ^ 0xAA5004AA)) ^ 0x2B40F6A0) & (v52 ^ 0xAA5004AA)) & (16 * (v52 & (4 * v51) ^ v51)) ^ v49 & (16 * v48)));
  v54 = ((v53 ^ 0xE99EACF6) + 237332895) ^ ((v53 ^ 0xC61C1D21) + 564648010) ^ ((v53 ^ 0x44EA2DE3) - 1554913140);
  return (*(a36 + 8 * ((1009 * (((a39 - a7 - 1237281678 * v54 + (v54 + 1932306083) * (*(v39 + 4 * v41) + 439297265) - 1527222122) & 7) != 1)) ^ v42)))();
}

uint64_t sub_1001D24E4@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v6 = v2 ^ 0x6FE;
  v7 = 2043 * (v2 ^ 0x46D1);
  v8 = 17902189 * ((v5 - 200 - 2 * ((v5 - 200) & 0x2ADF4A50) + 719276627) ^ 0xA4905C43);
  *(v5 - 168) = v8 + v6 + 4430;
  *(v5 - 176) = STACK[0x270];
  *(v5 - 192) = v3;
  *(v5 - 200) = v8 + (v4 ^ 0x1FECFBEE) + (a2 & 0x3FD9F7DC) - 134507001 + v7;
  v9 = (*(a1 + 8 * (v6 + 35816)))(v5 - 200);
  return (*(STACK[0x2F0] + 8 * v6))(v9);
}

uint64_t sub_1001D26C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v24 = v9 - 1;
  v25 = (v11 + v24);
  v26 = __ROR8__((v11 + v24) & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = v17 - (((a1 - v26) | v10) + ((v26 + a6) | v23));
  v28 = v27 ^ a5;
  v29 = v27 ^ v12;
  v30 = __ROR8__(v28, 8);
  v31 = ((v20 & (2 * (v30 + v29))) - (v30 + v29) + a9) ^ a3;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v14;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ v18;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((v37 + v36) | v22) - ((v37 + v36) | a4) + a4) ^ a8;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v16;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ v19;
  *(a2 + v24 + a7) = (((__ROR8__(v42, 8) + (v42 ^ __ROR8__(v41, 61))) ^ v15) >> (8 * (v25 & 7u))) ^ *v25;
  return (*(STACK[0x2F0] + 8 * (((v24 == 0) * v21) ^ v13)))();
}

uint64_t sub_1001D27B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a8 + 8 * ((12636 * (v8 == ((v9 + 1901922231) & 0x8EA2AFFB) + 700443996)) ^ v9));
  LODWORD(STACK[0x290]) = 371891407;
  return v10(a1, a7);
}

uint64_t sub_1001D2808@<X0>(int a1@<W8>)
{
  if (v3)
  {
    v4 = *(v2 + 8) == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v1 + 8 * ((v5 * ((((a1 + 163) | 0x2183) + 1678563918) ^ 0x640D4B1E)) ^ a1)))();
}

uint64_t sub_1001D2888@<X0>(int a1@<W7>, uint64_t a2@<X8>)
{
  if (v2 < v3 != v8 + v5 < v9 + v6 + ((v9 + a1) & v4))
  {
    v10 = v8 + v5 < v9 + v6 + ((v9 + a1) & v4);
  }

  else
  {
    v10 = v8 + v5 > v2;
  }

  return (*(a2 + 8 * ((v10 * v7) ^ v9)))();
}

uint64_t sub_1001D2B70(uint64_t a1, int a2, uint64_t a3)
{
  *(v6 + 24) = a3;
  *(v4[3] + 32) = v4[4];
  *(v3 + 8) += v4[1] + v5;
  return (*(v7 + 8 * a2))();
}

uint64_t sub_1001D2BC0@<X0>(char a1@<W1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v12 = v10 + v9 + (v8 | 8u);
  *(a3 + v12) = *(v4 + (v12 & 0xF)) ^ *(v3 + v12) ^ *((v12 & 0xF) + v5 + 2) ^ *(v6 + (v12 & 0xF)) ^ ((v12 & 0xF) * a1);
  return (*(v11 + 8 * (((v12 == 0) * a2) ^ v7)))();
}

uint64_t sub_1001D2C14(__n128 a1)
{
  v5 = *(STACK[0x3A0] + 8 * (v2 ^ 0x138C));
  *(v4 - 120) = v3;
  v6.n128_u64[0] = (v1 + 13) & 0xF;
  v6.n128_u64[1] = (v1 + 12) & 0xF;
  v7.n128_u64[0] = (v1 + 11) & 0xF;
  v7.n128_u64[1] = (v1 + 10) & 0xF;
  v8.n128_u64[0] = (v1 + 9) & 0xF;
  v8.n128_u64[1] = v1 & 0xF ^ 8;
  v11.val[0].i64[0] = (v1 + 7) & 0xF;
  v11.val[0].i64[1] = (v1 + 6) & 0xF;
  v11.val[1].i64[0] = (v1 + 5) & 0xF;
  v11.val[1].i64[1] = (v1 + 4) & 0xF;
  v11.val[2].i64[0] = (v1 + 3) & 0xF;
  v11.val[2].i64[1] = (v1 + 2) & 0xF;
  v11.val[3].i64[0] = (v1 + 1) & 0xF;
  v11.val[3].i64[1] = v1 & 0xF;
  v9.n128_u64[0] = 0xE5E5E5E5E5E5E5E5;
  v9.n128_u64[1] = 0xE5E5E5E5E5E5E5E5;
  return v5(v1 + v3 - 16, v1 - 1, ((v2 ^ 0x138C) - 14072) | 0x8081u, (v1 & 0x10) - 16, (((v2 ^ 0x138C) - 14072) | 0x8081u) ^ 0xA3D6, 50328, a1, v6, v7, v8, xmmword_100BC76B0, vqtbl4q_s8(v11, xmmword_100BC76B0), v9);
}

uint64_t sub_1001D2D20(int a1, uint64_t a2, char a3, char a4, uint64_t a5, int a6, int8x16_t a7, int8x8_t a8)
{
  v15.val[0].i64[0] = (v11 + v12 - 1) & 0xF;
  v15.val[0].i64[1] = (v11 + v12 + 14) & 0xF;
  v15.val[1].i64[0] = (v11 + v12 + 13) & 0xF;
  v15.val[1].i64[1] = (v11 + v12 + 12) & 0xF;
  v15.val[2].i64[0] = (v11 + v12 + 11) & 0xF;
  v15.val[2].i64[1] = (v11 + v12 + 10) & 0xF;
  v15.val[3].i64[0] = (a4 + v12 + a3) & 0xF;
  v15.val[3].i64[1] = (v11 + v12) & 0xF ^ 8;
  *(a5 + v12) = veor_s8(veor_s8(veor_s8(*(v8 + v15.val[0].i64[0] - 7), *(a5 + v12)), veor_s8(*(v15.val[0].i64[0] + v9 - 2), *(v15.val[0].i64[0] + v10 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v15, a7), a8)));
  return (*(v13 + 8 * (((a2 == v12) * a6) ^ a1)))();
}

uint64_t sub_1001D2DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W8>)
{
  v7 = a5 + ((v5 - 1476117053) ^ 0xA8044F5B) - 281064156;
  if (v7 <= 0x40)
  {
    v7 = 64;
  }

  return (*(v6 + 8 * ((74 * (v7 - a5 + 281031222 > 0x1E)) ^ v5)))(a1, 3323991016, a2, a3, a4, 0);
}

uint64_t sub_1001D2E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int a22, int a23, uint64_t a24, uint64_t a25, uint64_t a26, unsigned int a27, int a28)
{
  v30 = a27 < 0x4C64FE42;
  v31 = a28 + (((v28 ^ 0xC503ADCD) + 1096623116) ^ ((v28 ^ 0xEA72AE27) + 1848387554) ^ ((v28 ^ 0xBD05B2C2) + 962280197)) - 215981576;
  v32 = v30 ^ (v31 < a22);
  v33 = v31 < a27;
  if (!v32)
  {
    v30 = v33;
  }

  return (*(v29 + 8 * ((8 * v30) | (32 * v30) | a23)))();
}

uint64_t sub_1001D2F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, int a49)
{
  v51 = (a13 & 0x1D6EDBDF ^ 0x8D0ED1B6) + v49;
  v52 = v51 < 0xE6536E73;
  v53 = v51 > a49 - 1928408535;
  if ((a49 - 1928408535) < 0xE6536E73 != v52)
  {
    v53 = v52;
  }

  return (*(v50 + 8 * ((28692 * v53) ^ a14)))();
}

uint64_t sub_1001D306C(uint64_t a1, double a2, __n128 a3, __n128 a4, __n128 a5, int8x16_t a6, double a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = (a14 - 1) & 0xF;
  v21.i64[0] = vqtbl4q_s8(*(&a3 - 1), a6).u64[0];
  *&v21.i64[1] = a7;
  v22 = vrev64q_s8(vmulq_s8(v21, a8));
  *(a12 + a14) = veorq_s8(veorq_s8(veorq_s8(*(v14 + v19 - 15), *(a13 + a14)), veorq_s8(*(v16 + v19 - 15), *(v19 + v15 - 10))), vextq_s8(v22, v22, 8uLL));
  return (*(v18 + 8 * (((2 * (a10 == a14)) | (16 * (a10 == a14))) ^ v17)))();
}

uint64_t sub_1001D3110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = vrev64q_s8(**(v9 + 24));
  v14 = vextq_s8(v13, v13, 8uLL);
  v15.i64[0] = 0x9292929292929292;
  v15.i64[1] = 0x9292929292929292;
  v16 = vandq_s8(vaddq_s8(v14, v14), v15);
  v15.i64[0] = 0x4949494949494949;
  v15.i64[1] = 0x4949494949494949;
  v17 = vaddq_s8(v16, veorq_s8(v14, v15));
  v16.i64[0] = 0x8787878787878787;
  v16.i64[1] = 0x8787878787878787;
  v15.i64[0] = 0x2C2C2C2C2C2C2C2CLL;
  v15.i64[1] = 0x2C2C2C2C2C2C2C2CLL;
  v18 = vrev64q_s8(veorq_s8(vmlaq_s8(v15, v17, v16), xmmword_100F52A30));
  *(v11 - 112) = vextq_s8(v18, v18, 8uLL);
  return (*(v12 + 8 * (a3 ^ (59 * (v10 != 0)))))(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1001D322C(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char a20, uint64_t a21, uint64_t a22, __int16 a23, uint64_t a24, int a25, __int16 a26, char a27, __int16 a28)
{
  a25 = v37 ^ (((v30 - 2 * (v30 & v32) + a1) ^ a2) * a3);
  a26 = v40 + ((v30 - 2 * (v30 & v32) + a1) ^ a2) * a3;
  a28 = v35 ^ (((v30 - 2 * (v30 & v32) + a1) ^ a2) * a3);
  a24 = v31;
  a23 = ((v30 - 2 * (v30 & v32) + a1) ^ a2) * a3 + (v33 ^ v28) + (v29 & (2 * v33)) - 528;
  (*(a18 + 8 * v39))(&a23);
  *(&a20 + v33) = a27;
  v43 = v36 < v38 || v41 + (v33 + 1) < v36;
  return (*(a18 + 8 * ((11947 * v43) ^ v34)))(3169572990, 117127660, 1022166737);
}

uint64_t sub_1001D346C@<X0>(uint64_t a1@<X8>)
{
  v9 = *(v1 + a1 + 16);
  v10 = v2 + a1;
  *(v10 + 20) = *(v1 + a1);
  *(v10 + 36) = v9;
  return (*(v4 + 8 * ((((((v7 + v8) | v3) ^ v5) + a1 == 64) * v6) ^ v7)))();
}

uint64_t sub_1001D34EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v18 - 104) = v17 - 1603510583 * ((((v18 - 128) | 0x71B2CE71) - ((v18 - 128) & 0x71B2CE70)) ^ 0xE669FCDA) + 26855;
  *(v18 - 120) = v16;
  *(v18 - 112) = &a15;
  v19 = (*(v15 + 8 * (v17 ^ 0x9CF1)))(v18 - 128);
  return (*(v15 + 8 * ((62868 * (*(v18 - 128) == (((v17 - 18236) | 0x2E12) ^ 0x124D5A91))) ^ v17)))(v19);
}

uint64_t sub_1001D3598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = v2 - 7640;
  v11 = (v2 - 6811) | 0x324;
  v12 = *(a2 + (3 * v8 + 12 - (((3 * v8 + 12) * v5) >> 32) * v6));
  v13 = ((v12 ^ 0xE051E9FE) + 531502594) ^ ((v12 ^ 0xF45EFBF8) + 195101704) ^ (((v11 + 336510748) ^ v12) - 336532057);
  v14 = (137 * v7 - 1470561897) * (v7 + 95) + 1470574912 * v7;
  v15 = ((((13 * v13 - 968242267) * (v13 + 95) + 968243502 * v13 + 815824736) * (v13 + 95) + 972994738 * v13 - 15135337) * (v13 + 95) - 2039645065 * v13 + 1571788433) * (v13 + 95) - 2064541288 * v13;
  v16 = v13 + 1539229525 * v4 + (304144687 * v13 + 1705878025 * v7 + (231 * v13 - 304122742) * (v13 + 95) + ((v14 - 2029304128) * (v7 - 1074956439) + 1074956534 * v14 - 2004168474 * v13 + ((v13 + 95) * (v13 - 170428565) + 170428660 * v13 + 1015021990) * (v13 + 95) - 120333210 * v15 + (v15 + 1437073256) * (v7 + 120333305) - 991493311) * (v7 + 95) + 434367091) * (v4 - 1224483894) - 1307705231;
  return (*(v3 + 8 * v10))(a1, *(v9 + (-53 - 125 * (v16 - 57 * (((966178935 * v16) >> 39) + (966178935 * v16 < 0))))));
}

uint64_t sub_1001D3924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = v5 - 27125;
  v9 = v6 + 322460871 < (a5 - 958343064);
  if (v6 + 322460871 < (v8 ^ 0x61u) + 539306344 != a5 - 958343064 < (v8 ^ 0x20253F99u))
  {
    v9 = a5 - 958343064 < (v8 ^ 0x20253F99u);
  }

  return (*(v7 + 8 * ((125 * !v9) ^ v8)))();
}

uint64_t sub_1001D3BF0(int a1, uint64_t a2, char a3, char a4, uint64_t a5, int a6, int8x16_t a7, int8x8_t a8)
{
  v15.val[0].i64[0] = (v11 + v12 - 1) & 0xF;
  v15.val[0].i64[1] = (a3 + v12 + a4) & 0xF;
  v15.val[1].i64[0] = (v11 + v12 + 13) & 0xF;
  v15.val[1].i64[1] = (v11 + v12 + 12) & 0xF;
  v15.val[2].i64[0] = (v11 + v12 + 11) & 0xF;
  v15.val[2].i64[1] = (v11 + v12 + 10) & 0xF;
  v15.val[3].i64[0] = (v11 + v12 + 9) & 0xF;
  v15.val[3].i64[1] = (v11 + v12) & 0xF ^ 8;
  *(a5 + v12) = veor_s8(veor_s8(veor_s8(*(v9 + v15.val[0].i64[0] - 7), *(a5 + v12)), veor_s8(*(v10 + v15.val[0].i64[0] + 3 - 7), *(v8 + v15.val[0].i64[0] + 3 - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v15, a7), a8)));
  return (*(v13 + 8 * (((a2 == v12) * a6) ^ a1)))();
}

uint64_t sub_1001D3CB8@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = *(v2 - 216);
  v4 = v3[1];
  v5 = STACK[0x210];
  v5[1] = v4;
  *v5 = *v3;
  return (*(a1 + 8 * (((v4 != 0) * (((a2 + 19441) | 0x14A6) - 46556)) ^ a2)))();
}

uint64_t sub_1001D402C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unint64_t a29, uint64_t a30, uint64_t a31, unint64_t a32, uint64_t a33, uint64_t a34, unint64_t a35, unint64_t a36, unint64_t a37, unint64_t a38, uint64_t a39, uint64_t a40, unint64_t a41, unint64_t a42)
{
  STACK[0x248] = v46;
  STACK[0x348] = v42;
  STACK[0x288] = v43;
  STACK[0x3B0] = a36;
  STACK[0x2E0] = a41;
  STACK[0x358] = a42;
  STACK[0x2C0] = a35;
  STACK[0x2C8] = a38;
  STACK[0x3E8] = a37;
  STACK[0x318] = a29;
  STACK[0x2D0] = 0;
  STACK[0x328] = a32;
  STACK[0x268] = a1;
  STACK[0x258] = a1;
  STACK[0x320] = a1;
  v47 = (*(v44 + 8 * (v45 + 45987)))();
  return (*(v44 + 8 * v45))(v47);
}

uint64_t sub_1001D451C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + (v3 - 2062463764)) = *(v4 + (v3 - 2062463764));
  v6 = v3 - 330794317;
  v8 = v6 > 0x67372DC5 && v6 < v1;
  return (*(v5 + 8 * ((46430 * v8) ^ v2)))();
}

uint64_t sub_1001D4588()
{
  v8 = ((v5 + 385601913) ^ 0x16FC96C4) & (v4 + 15);
  v12 = (v0 - v6) > 0xF && (1 - v6 + v2 - v4 + v8) > 0xF && (1 - v6 + v3 - v4 + v8) > 0xF && v1 - v6 + (v5 - 1709) - v4 + v8 - 48804 > 0xF;
  return (*(v7 + 8 * (((2 * v12) | (8 * v12)) ^ v5)))();
}

uint64_t sub_1001D480C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v12 = *(*(v10 + 8 * (a5 ^ 0x8596)) - 231415367);
  v13 = (*v9 + (v6 - 128941941));
  v14 = *(*(*(v10 + 8 * (a5 - 35339)) - 1680276466) + (v12 & 0x72D7ACF8));
  v15 = ((((v14 ^ v13) & 0x7FFFFFFF) * v11) ^ ((((v14 ^ v13) & 0x7FFFFFFF) * v11) >> 16)) * v11;
  v16 = *(v10 + 8 * (a5 - 33956)) - 908123987;
  v17 = *(v10 + 8 * (a5 ^ 0x9674)) - 179860347;
  v18 = *(v10 + 8 * (a5 - 36801)) - 1260529494;
  v19 = *(v16 + (v15 >> 24)) ^ *v13 ^ *(v17 + (v15 >> 24)) ^ *((v15 >> 24) + v18 + 1) ^ v15 ^ ((v15 >> 24) * v7);
  v20 = (*v9 + (v6 - 128941940));
  LOBYTE(v15) = *v20;
  v21 = ((((v14 ^ v20) & 0x7FFFFFFF) * v11) ^ ((((v14 ^ v20) & 0x7FFFFFFF) * v11) >> 16)) * v11;
  v22 = (v19 << 24) | ((v21 ^ v15 ^ *(v16 + (v21 >> 24)) ^ *(v17 + (v21 >> 24)) ^ (BYTE3(v21) * v7) ^ *((v21 >> 24) + v18 + 1)) << 16);
  v23 = (*v9 + (v6 - 128941939));
  LOBYTE(v15) = *v23;
  v24 = ((((v14 ^ v23) & 0x7FFFFFFF) * v11) ^ ((((v14 ^ v23) & 0x7FFFFFFF) * v11) >> 16)) * v11;
  v25 = v22 & 0xFFFF00FF | (((BYTE3(v24) * v7) ^ v24 ^ v15 ^ *(v16 + (v24 >> 24)) ^ *(v17 + (v24 >> 24)) ^ *((v24 >> 24) + v18 + 1)) << 8);
  v26 = (*v9 + (v6 - 128941938));
  v27 = *v26;
  v28 = ((((v14 ^ v26) & 0x7FFFFFFF) * v11) ^ ((((v14 ^ v26) & 0x7FFFFFFF) * v11) >> 16)) * v11;
  v29 = *(v16 + (v28 >> 24)) ^ v27;
  LODWORD(v17) = *(v17 + (v28 >> 24)) ^ *((v28 >> 24) + v18 + 1);
  return (*(v8 + 8 * v5))(v12, (v29 ^ v17 ^ v28 ^ ((v28 >> 24) * v7)) & 0xD7 | ((v29 ^ v17 ^ v28) ^ ~(BYTE3(v28) * v7) | 0xFFFFFF00) & ((v25 - ((2 * v25) & 0x8DF8BE00) - 956539066) ^ 0x5488EE6E));
}

uint64_t sub_1001D4BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, int a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v26 = 634647737 * ((((2 * v25) | 0xC6E8A72E542FDBCCLL) - v25 + 0x1C8BAC68D5E8121ALL) ^ 0x39AFFC784781C21ALL);
  v27 = v21 - 2129045218 - 634647737 * ((((2 * v25) | 0x542FDBCC) - v25 - 706211302) ^ 0x4781C21A);
  a19 = v21 - 634647737 * ((((2 * v25) | 0x542FDBCC) - v25 - 706211302) ^ 0x4781C21A) + v23;
  a20 = v27 + 11;
  a16 = v21 - 2129045218 + 634647737 * ((((2 * v25) | 0x542FDBCC) - v25 - 706211302) ^ 0x4781C21A);
  a13 = -634647737 * ((((2 * v25) | 0x542FDBCC) - v25 - 706211302) ^ 0x4781C21A);
  a14 = v27 - 3428;
  a17 = v26 ^ 0x5BB4;
  a18 = v22 - v26;
  v28 = (*(v20 + 8 * (v21 + 51947)))(&a13);
  return (*(v24 + 8 * a15))(v28);
}

uint64_t sub_1001D4CB0()
{
  v5 = v1 < v4;
  if (v5 == v0 - 0x39CC9C655B265E2 < v4)
  {
    v5 = v0 - 0x39CC9C655B265E2 < v1;
  }

  return (*(v3 + 8 * ((v5 * ((((v2 + 100436490) & 0xFA0375FF) + 38617) ^ 0xEE0)) ^ v2)))();
}

uint64_t sub_1001D4F0C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  v40 = v36 ^ 0xF9DFFF7F;
  v41 = (2 * v36) & 0xF3BFFEFE;
  v42 = 906386353 * ((((v38 - 144) ^ 0x342F16B5 | 0xA94F4980) - ((v38 - 144) ^ 0x342F16B5 | 0x56B0B67F) + 1454421631) ^ 0xAC619211);
  *(v38 - 104) = v42 + 1535886309;
  *(v38 - 144) = &a33;
  *(v38 - 136) = &STACK[0x2F0];
  *(v38 - 112) = (((2 * a1) & 0x17C) - 508428288 + (v35 ^ (20491 * (v37 ^ 0x32FE)) ^ 0x7F7F38A8)) ^ v42;
  *(v38 - 108) = v42 + v40 + v41 + 129572798;
  *(v38 - 120) = v42 ^ 0x24F40078;
  *(v38 - 116) = v42 + (v34 ^ 0x75896C84) + ((2 * v33) & 0xFA ^ 0xF2) - 603981900;
  *(v38 - 128) = (v37 - 3830) ^ v42;
  *(v38 - 124) = v42 ^ a21 ^ 0x6E95D8F4;
  v43 = (*(v39 + 8 * (v37 + 39094)))(v38 - 144);
  return (*(a30 + 8 * (v37 ^ (497 * ((((a21 ^ 0x4F9789B2) - 1822255755) ^ ((a21 ^ 0xAA3463F6) + 1992392497) ^ ((a21 ^ 0xF1ECF0B3) + 756673654)) != -927332814)))))(v43);
}

uint64_t sub_1001D515C(double a1, __n128 a2, uint64_t a3, uint64_t a4, int a5)
{
  a2.n128_u16[0] = -10795;
  a2.n128_u8[2] = -43;
  a2.n128_u8[3] = -43;
  a2.n128_u8[4] = -43;
  a2.n128_u8[5] = -43;
  a2.n128_u8[6] = -43;
  a2.n128_u8[7] = -43;
  return (*(v5 + 8 * a5))(xmmword_100F523B0, a2);
}

void *sub_1001D5364@<X0>(uint64_t a1@<X7>, void *a2@<X8>)
{
  LODWORD(STACK[0x22C]) = v3;
  v4 = *(a1 + 8 * (v2 - 41461));
  *&STACK[0x200] = xmmword_100F523B0;
  *&STACK[0x2A0] = vdupq_n_s64(0xD6916AF990E79581);
  return v4(a2, 0xE2C4328F76774E5ELL, 0xF9BFEBF779577FF7);
}

uint64_t sub_1001D55E0(uint64_t a1, uint64_t a2)
{
  v6 = *(v3 + 8 * (v2 - 29022));
  *(v5 - 132) = v4 - 16240;
  return v6(750835697, a2, 1864610357);
}

uint64_t sub_1001D5758@<X0>(int a1@<W8>)
{
  v6 = ((v4 ^ 0x3C63) * a1) ^ 0x9AE2;
  v7 = 1022166737 * ((v5 - 120) ^ 0xBA10E192);
  *(v5 - 120) = v3;
  *(v5 - 112) = v1 - v7;
  *(v5 - 108) = v7 + 16099 + v4;
  v8 = (*(v2 + 8 * (v4 + 35977)))(v5 - 120);
  return (*(v2 + 8 * (((*(v5 - 104) == 1497668682) * (v6 - 12152)) ^ v4)))(v8);
}

uint64_t sub_1001D57F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, int a21, int a22, int a23, int a24, unsigned int a25)
{
  *(v26 - 216) = (1366 * (a25 ^ 0x4BBA) + 887863036) ^ a20;
  *(v26 - 212) = a21 ^ 0x81868573;
  *(v26 - 204) = a23 ^ 0x906C4F95;
  *(v26 - 208) = a24 ^ 0x4F1644C6;
  return (*(v25 + 8 * a25))();
}

void sub_1001D5870()
{
  if (v0 == 1932633214)
  {
    v1 = 1738065936;
  }

  else
  {
    v1 = -1738042424;
  }

  *(v2 + 32) = v1;
}

uint64_t sub_1001D58D4()
{
  v6 = *(v3 + v1 * v5 + 36);
  v8 = v6 == v2 || (v6 + v0 + 1420293616) > 0x80000008;
  return (*(v4 + 8 * ((116 * v8) ^ v0)))();
}

uint64_t sub_1001D59B8@<X0>(unsigned int a1@<W0>, unsigned int a2@<W8>)
{
  *(v6 + v4 + 20) = *(v5 + v4);
  v9 = v4 + 59 * (v8 ^ 0x4725);
  v10 = v4 - 1124522949 < a2;
  if (a1 < v2 != v9 - 11622 > 0x4306DBC5)
  {
    v10 = a1 < v2;
  }

  return (*(v7 + 8 * ((v10 * v3) ^ v8)))();
}

uint64_t sub_1001D5AA4@<X0>(uint64_t a1@<X8>)
{
  v9 = (v3 - 1) & 0xF;
  v13 = (v5 + 1 + v2 - v3 + v9) < 0x10 || v7 - v6 < (2572 * (v4 ^ 0xC688u)) - 48852 || (v5 + v1 - v3 + v9 + 3) < 0x10 || (v5 + 1 + a1 - v3 + v9) < 0x10;
  return (*(v8 + 8 * ((405 * (((v4 + 46) ^ v13) & 1)) ^ v4)))();
}

uint64_t sub_1001D5C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43)
{
  v45 = (a43 ^ 0xE145) - 2743;
  *(v44 - 136) = v43;
  *(v44 - 132) = v45;
  v46 = *(&off_1010A0B50 + (a43 ^ 0x63A3)) - 1578705111;
  v47 = v46[*(v44 - 112) & 0xF7 ^ ((v45 ^ 0x38) & *(v44 - 112) | 0x96) ^ 0x1E];
  v48 = *(&off_1010A0B50 + (a43 ^ 0xE145) - 35291) - 411979890;
  v49 = v48[*(v44 - 111) ^ 0xCDLL];
  v50 = *(&off_1010A0B50 + (a43 ^ 0xE145) - 35859) - 1030341738;
  v51 = v50[*(v44 - 110) ^ 0x96];
  v52 = *(&off_1010A0B50 + (a43 ^ 0xE145) - 32440) - 340381751;
  v53 = v52[*(v44 - 109) ^ 0x7BLL];
  v54 = v46[*(v44 - 108) ^ 0x3CLL];
  v55 = v48[*(v44 - 107) ^ 0x86];
  v56 = v50[*(v44 - 106) ^ 0xBFLL];
  v57 = v52[*(v44 - 105) ^ 0x18];
  v58 = v46[*(v44 - 104) ^ 2];
  *(v44 - 144) = v48[*(v44 - 103) ^ 0x40];
  v59 = v50[*(v44 - 102) ^ 0x88];
  v60 = v52[*(v44 - 101) ^ 0x3BLL];
  v61 = v52[*(v44 - 97) ^ 0xF7];
  v62 = *(&off_1010A0B50 + (a43 ^ 0x7EC8)) - 1688003622;
  v63 = *(&off_1010A0B50 + (a43 ^ 0x7329)) - 495168763;
  v64 = *(&off_1010A0B50 + (a43 ^ 0x7CC9)) - 1752810011;
  LODWORD(v52) = *&v63[4 * (v48[*(v44 - 99) ^ 0x30] ^ 0x72)] ^ *&v62[4 * (v46[*(v44 - 100) ^ 0xEFLL] ^ 0x89)] ^ *&v64[4 * (v50[*(v44 - 98) ^ 0x88] ^ 0x83)];
  v65 = *(&off_1010A0B50 + (a43 ^ 0xE145) - 34567) - 652158718;
  v66 = *(&off_1010A0B50 + (a43 ^ 0x7D25)) - 2007507743;
  LOBYTE(v50) = v65[v61 ^ 0x85 ^ (v61 >> 2) & 0x21];
  v67 = *&v63[4 * (v49 ^ 0x38)] ^ *&v62[4 * (v47 ^ 0x1B)] ^ *&v64[4 * (v51 ^ 0x53)] ^ (v65[v53 ^ 0xDB ^ (v53 >> 2) & 0x21] + 3);
  v68 = *(&off_1010A0B50 + (a43 ^ 0x7507)) - 620253715;
  *(v44 - 152) = a43 ^ 0xE145;
  v69 = *(&off_1010A0B50 + (a43 ^ 0x79D9)) - 2009771659;
  LODWORD(v46) = (v50 + 3) ^ v52 ^ 0x3769627B;
  LODWORD(v51) = *&v69[4 * (((v50 + 3) ^ v52) ^ 0xCF)];
  v70 = *(&off_1010A0B50 + (a43 ^ 0x7540)) - 969731054;
  v71 = BYTE1(v52) ^ 0x2B ^ ((BYTE1(v52) ^ 0x2B) - 1991554940) ^ *&v66[4 * (BYTE2(v52) ^ 0x82)] ^ *&v68[4 * (BYTE1(v52) ^ 0x28)] ^ v67 ^ v70[(v52 >> 24) ^ 0x49] ^ (((4 * v51) ^ 0x932D12C4) + 1048348248) ^ ((((v51 ^ 0x3EDBAED) - 65911533) ^ ((v51 ^ 0x500062ED) - 1342202605) ^ ((v51 ^ 0xF7269CB1) + 148464463)) - 95018909);
  v72 = *&v62[4 * (v58 ^ 0xC)] ^ *&v63[4 * (*(v44 - 144) ^ 0x3ALL)] ^ *&v64[4 * (v59 ^ 0x13)] ^ 0x5684016;
  v130 = *&v63[4 * (v55 ^ 0x71)] ^ *&v62[4 * (v54 ^ 0xDB)] ^ *&v64[4 * (v56 ^ 0x27)] ^ (v65[(v57 ^ (v57 >> 2) & 0x21) ^ 0x7E] + 3);
  LODWORD(v54) = ((v72 & 0x429BE5F7 ^ 0xF38BA357) & (v72 & 0xBD641A08 ^ 0x7BBFFFF7) | v72 & 0xC641808) ^ (v65[v60 ^ 0xC4 ^ (v60 >> 2) & 0x21] + 3);
  v73 = v54 ^ v130 ^ v71;
  v131 = v73;
  v74 = v73 ^ v46 ^ 0x87BED744;
  LODWORD(v59) = *&v69[4 * ((v73 ^ v46) ^ 0x3C)];
  v75 = *&v66[4 * (BYTE2(v74) ^ 0xC6)] ^ v71 ^ *&v68[4 * (BYTE1(v74) ^ 0xDE)] ^ v70[((v73 ^ v46) >> 24) ^ 0x5ELL] ^ (((4 * v59) ^ 0x932D12C4) + 1048348248) ^ BYTE1(v74) ^ 0xDD ^ ((((v59 ^ 0xD9FA456B) + 637909653) ^ ((v59 ^ 0x2A004291) - 704660113) ^ ((v59 ^ 0x5731434B) - 1462846283)) - 95018909) ^ ((BYTE1(v74) ^ 0xDD) - 1991554940);
  *(v44 - 232) = v75;
  v129 = v75 ^ 0xD4D91F7 ^ v130 ^ v71 ^ 0xED191137;
  v76 = v129 ^ 0xD234351D ^ v46;
  *(v44 - 160) = v129 ^ 0xD234351D;
  LODWORD(v50) = *&v69[4 * (v129 ^ 0x1D ^ v46 ^ 0x57)];
  LODWORD(v64) = *&v68[4 * (BYTE1(v76) ^ 0x6B)] ^ *&v66[4 * (BYTE2(v76) ^ 0xC8)] ^ v70[HIBYTE(v76) ^ 0x7DLL] ^ (((4 * v50) ^ 0x932D12C4) + 1048348248) ^ v75 ^ 0xD4D91F7 ^ ((((v50 ^ 0x1C593F3F) - 475610943) ^ ((v50 ^ 0xD41638F0) + 736741136) ^ ((v50 ^ 0x6C84437E) - 1820607358)) - 95018909) ^ BYTE1(v76) ^ 0x68 ^ ((BYTE1(v76) ^ 0x68) - 1991554940);
  v77 = v64 ^ 0x16A5B6A4 ^ v73;
  *(v44 - 168) = v64 ^ 0x16A5B6A4;
  LODWORD(v55) = v77 ^ v76;
  LODWORD(v59) = v77 ^ v76 ^ 0xC9ABFFC;
  LODWORD(v46) = *&v69[4 * ((v77 ^ v76) ^ 0x8E)];
  LODWORD(v46) = *&v66[4 * ((BYTE2(v59) ^ 0x33) - ((2 * (BYTE2(v59) ^ 0x33)) & 0xE6)) + 460] ^ *&v68[4 * (BYTE1(v59) ^ 0xDD)] ^ v70[((v77 ^ v76) >> 24) ^ 0x43] ^ (((4 * v46) ^ 0x932D12C4) + 1048348248) ^ ((((v46 ^ 0xB8D2BD13) + 1194148589) ^ ((v46 ^ 0xA3F12E15) + 1544475115) ^ ((v46 ^ 0xBFE8D7B7) + 1075259465)) - 95018909) ^ BYTE1(v59) ^ 0xDE ^ ((BYTE1(v59) ^ 0xDE) - 1991554940) ^ 0xA18F9DA;
  LODWORD(v58) = v46 ^ v129 ^ 0xD234351D ^ 0xD58B3264;
  v78 = v46 ^ v129 ^ 0xD234351D ^ v77;
  v79 = v78 ^ v59 ^ 0x6D7BDADE;
  *(v44 - 144) = v78 ^ v59;
  LODWORD(v56) = *&v69[4 * ((v78 ^ v59) ^ 0x94)];
  LODWORD(v62) = *&v68[4 * (BYTE1(v79) ^ 0x29)] ^ *&v66[4 * (BYTE2(v79) ^ 0x9E)] ^ v70[((v78 ^ v59) >> 24) ^ 0x6ALL] ^ (((4 * v56) ^ 0x932D12C4) + 1048348248) ^ v46 ^ v64 ^ 0x16A5B6A4 ^ ((((v56 ^ 0xB972E2A0) + 1183653216) ^ ((v56 ^ 0x48DD7300) - 1222472448) ^ ((v56 ^ 0x5564D511) - 1432671505)) - 95018909) ^ BYTE1(v79) ^ 0x2A ^ ((BYTE1(v79) ^ 0x2A) - 1991554940);
  LODWORD(v46) = v78 ^ 0x8BF29AAB;
  LODWORD(v58) = v62 ^ 0x2AD7F9C8 ^ v58;
  v128 = v58 ^ v78 ^ 0x8BF29AAB;
  v80 = v128 ^ v79;
  v81 = *&v69[4 * ((v128 ^ v79) ^ 0x1F)];
  LODWORD(v56) = *&v66[4 * (BYTE2(v80) ^ 0xBB)] ^ *&v68[4 * (BYTE1(v80) ^ 0xC2)] ^ v62 ^ 0x2AD7F9C8 ^ BYTE1(v80) ^ 0xC1 ^ ((BYTE1(v80) ^ 0xC1) - 1991554940) ^ 0x6BC2B57B;
  v82 = ((((v81 ^ 0x673D1459) - 1732056153) ^ ((v81 ^ 0x9F838FB4) + 1618767948) ^ ((v81 ^ 0x5C75DF5C) - 1551228764)) - 95018909) ^ (((4 * v81) ^ 0x932D12C4) + 1048348248);
  v83 = (v56 + v82 - 2 * (v56 & v82)) & 0xF7FFFFFF ^ v70[HIBYTE(v80) ^ 0x6ELL] ^ ((v56 + v82 - 2 * (v56 & v82)) & 0x8000000 | 0x5502CDC2);
  *(v44 - 184) = v83;
  v84 = v83 ^ 0x7184508B;
  v85 = v83 ^ 0x7184508B ^ v46;
  v86 = v85 ^ v80 ^ 0xF9EC1833;
  LODWORD(v46) = *&v69[4 * ((v85 ^ v80 ^ 0x33) ^ 0x16)];
  v127 = __PAIR64__(v85, v86);
  HIDWORD(v126) = *&v68[4 * (BYTE1(v86) ^ 0xF3)] ^ *&v66[4 * (BYTE2(v86) ^ 0x86)] ^ v70[HIBYTE(v86) ^ 0x75] ^ (((4 * v46) ^ 0x932D12C4) + 1048348248) ^ v84 ^ ((((v46 ^ 0x567317A) - 90648954) ^ ((v46 ^ 0x7A7AD893) - 2054871187) ^ ((v46 ^ 0xDBD6AD58) + 606687912)) - 95018909) ^ BYTE1(v86) ^ 0xF0 ^ ((BYTE1(v86) ^ 0xF0) - 1991554940);
  LODWORD(v126) = v84 ^ v58;
  HIDWORD(v125) = HIDWORD(v126) ^ 0x9B8C105 ^ v84 ^ v58;
  LODWORD(v58) = HIDWORD(v125) ^ 0x1E24562C ^ v80 ^ 0xF9EC1833;
  LODWORD(v50) = *&v69[4 * (BYTE4(v125) ^ 0x2C ^ v80 ^ 0x33 ^ 0x1B)];
  v87 = *&v68[4 * (BYTE1(v58) ^ 0xED)] ^ *&v66[4 * (BYTE2(v58) ^ 0x35)] ^ v70[BYTE3(v58) ^ 0x52] ^ (((4 * v50) ^ 0x932D12C4) + 1048348248) ^ HIDWORD(v126) ^ 0x9B8C105 ^ ((((v50 ^ 0x1EFA3A3) - 32482211) ^ ((v50 ^ 0xCA4DD7F2) + 900868110) ^ ((v50 ^ 0x6F6930E0) - 1869164768)) - 95018909) ^ BYTE1(v58) ^ 0xEE ^ ((BYTE1(v58) ^ 0xEE) - 1991554940);
  LODWORD(v46) = v87 ^ HIDWORD(v125) ^ 0x1E24562C;
  LODWORD(v124) = v85 ^ 0x48B4ECAA ^ HIDWORD(v125) ^ 0x1E24562C;
  LODWORD(v65) = v46 ^ v124;
  *(v44 - 176) = v46;
  v88 = v46 ^ v124 ^ v58 ^ 0xD75E9185;
  LODWORD(v56) = *&v69[4 * ((v46 ^ v124 ^ v58) ^ 0xF9)];
  HIDWORD(v124) = v87;
  v89 = *&v66[4 * (BYTE2(v88) ^ 0x30)] ^ *&v68[4 * (BYTE1(v88) ^ 0xE5)] ^ v70[((v46 ^ v124 ^ v58) >> 24) ^ 0x4DLL] ^ (((4 * v56) ^ 0x932D12C4) + 1048348248) ^ v87 ^ ((((v56 ^ 0xFEFB6DD0) + 17076784) ^ ((v56 ^ 0x7A3F9636) - 2050987574) ^ ((v56 ^ 0x200FBF57) - 537902935)) - 95018909) ^ BYTE1(v88) ^ 0xE6 ^ ((BYTE1(v88) ^ 0xE6) - 1991554940) ^ 0x779871D5;
  v90 = v46 ^ 0x2E2BD021 ^ v89;
  HIDWORD(v123) = v46 ^ v124 ^ v58 ^ 0x2BEBC334;
  LODWORD(v122) = v90 ^ v46 ^ v124 ^ 0xC562942E;
  LODWORD(v50) = *&v69[4 * ((v122 ^ BYTE4(v123)) ^ 0xC4)];
  LODWORD(v51) = ((((v50 ^ 0xEA7E42EF) + 360824081) ^ ((v50 ^ 0x97274A74) + 1759032716) ^ ((v50 ^ 0xD9924C2A) + 644723670)) - 95018909) ^ (((4 * v50) ^ 0x932D12C4) + 1048348248);
  LODWORD(v123) = v89;
  v91 = *&v66[4 * (((v122 ^ HIDWORD(v123)) >> 16) ^ 0xE1)] ^ *&v68[4 * (((v122 ^ WORD2(v123)) >> 8) ^ 0xD3)] ^ v89 ^ ((v122 ^ WORD2(v123)) >> 8) ^ 0xD0 ^ ((((v122 ^ WORD2(v123)) >> 8) ^ 0xD0) - 1991554940) ^ 0x50B6F73;
  HIDWORD(v122) = v90;
  HIDWORD(v120) = v90 ^ 0x90239808 ^ v70[((v122 ^ HIDWORD(v123)) >> 24) ^ 0xC6] ^ 0x35A81C1F ^ (v91 + v51 - 2 * (v91 & v51));
  LODWORD(v121) = v70[((v122 ^ HIDWORD(v123)) >> 24) ^ 0xC6] ^ 0x35A81C1F ^ (v91 + v51 - 2 * (v91 & v51));
  LODWORD(v46) = (v90 ^ v65 ^ 0x327F92E3 ^ HIDWORD(v120)) - ((2 * (v90 ^ v65 ^ 0x327F92E3 ^ HIDWORD(v120))) & 0xA0059B84) + 1342361026;
  LODWORD(v92) = __ROR4__((-408131431 - (v64 ^ 0xA3AE94B9)) ^ 0xE16982FE, 21) ^ 0x4C17F70B;
  HIDWORD(v92) = v92;
  HIDWORD(v119) = v55 ^ 0x7AA968C7;
  LODWORD(v120) = v54 ^ 0xB7CA263D;
  LODWORD(v119) = v46 ^ 0x1A30812E;
  v93 = (v55 ^ 0x7AA968C7) - (v54 ^ 0xB7CA263D) + (v92 >> 11) - (v46 ^ 0x1A30812E) + 1869305107;
  *(v44 - 204) = v80 & 4;
  *(v44 - 200) = v80 ^ 0x7EE47EDA;
  LODWORD(v56) = (v93 ^ 0xC7EDB66C) + (v80 ^ 0x7EE47EDA);
  v94 = v56 + ((2 * v93) & 0x8FDB6CD8);
  *(v44 - 192) = v65 ^ 0xA46CE334;
  v95 = v94 - (v65 ^ 0xA46CE334);
  v96 = (v95 + 1258395922);
  LODWORD(v68) = (v75 ^ 0x434606A) + v96;
  v97 = v68 - 1355827381;
  HIDWORD(a22) = v122 ^ HIDWORD(v123) ^ 0x92D26775 ^ v46;
  LODWORD(v46) = (v62 ^ 0x6B9469A) - HIDWORD(a22) + v68 - 1355827381;
  *(v44 - 216) = v46 + 1652697489;
  v98 = __PAIR64__(v84, __ROR4__((v46 + 1652697489) ^ v62, 4));
  *(v44 - 224) = v98 ^ 0x2819C343;
  v99 = *(v44 - 119) ^ 0x90;
  v100 = *(v44 - 152);
  v101 = *(&off_1010A0B50 + (v100 ^ 0x980E)) - 187587503;
  v102 = *(&off_1010A0B50 + (v100 ^ 0x9F4B)) - 669876946;
  v103 = *(v44 - 122) ^ 0xALL;
  v104 = *(&off_1010A0B50 + v100 - 35192) - 1824076023;
  v105 = *(&off_1010A0B50 + v100 - 36047) - 1537473286;
  v106 = *(v44 - 126);
  LODWORD(v98) = *(v44 - 184);
  *(v44 - 184) = (v98 >> 12) ^ 0x5140DE95;
  v107 = ((-1258395922 - v95) ^ (-1103600511 - (v96 ^ 0xBE386481)) ^ 0xACB67706 ^ (v95 - ((2 * v96) & 0x596CEE0C) - 138932200)) - 1103600511;
  v108 = ((1355827381 - v68) ^ (-750420988 - (v97 ^ 0xD3457C04)) ^ 0x901D2870 ^ (v97 - ((2 * v97) & 0x203A50E0) - 1877137296)) - 750420988;
  v109 = *(v44 - 160);
  LODWORD(v68) = v109 ^ *(v44 - 168) ^ 0x9580BABD;
  LODWORD(v46) = *&v101[4 * (*(v44 - 127) ^ 0x9CLL)];
  v110 = v46 ^ v104[*(v44 - 125) ^ 0xE0] ^ *&v105[4 * (*(v44 - 128) ^ 0xACLL)] ^ (v46 >> 1) & 0x4AE5FF76 ^ *&v102[4 * (v106 ^ 0x8A)] ^ ((v106 ^ 0xDA8DFC47) + (v106 ^ 0x7B)) ^ 0x6BCBAE42;
  *(v44 - 136) = (((*(v44 - 136) ^ 0x493BF450) + 319444948) ^ ((*(v44 - 136) ^ 0x6DDDB2F6) + 938217846) ^ ((*(v44 - 136) ^ 0x16D69C8) + 1532807756)) - 373205909;
  LODWORD(v118) = v68;
  LODWORD(v106) = *(v44 - 144);
  HIDWORD(v117) = v106 ^ 0x206DE723;
  LODWORD(v117) = v106 ^ 0x88740D47;
  HIDWORD(v98) = *(v44 - 224);
  LODWORD(v98) = HIDWORD(v98);
  HIDWORD(v116) = *(v44 - 216) ^ (v98 >> 28);
  v111 = *(v44 - 204);
  if ((v56 & v80 & 4) != 0)
  {
    v111 = -v111;
  }

  HIDWORD(v115) = *(v44 - 200) & 0xFFFFFFFB ^ v94 ^ (v111 + v94);
  LODWORD(v115) = v96 ^ *(v44 - 192) ^ v107;
  LODWORD(v116) = v94 + 691780653;
  HIDWORD(v114) = *(v44 - 176) ^ (v94 + 691780653) ^ 0x7BC95299;
  HIDWORD(v112) = *(v44 - 184);
  LODWORD(v112) = HIDWORD(v112);
  HIDWORD(a12) = v131 ^ v109;
  LODWORD(v114) = v112 >> 20;
  HIDWORD(v118) = *(v44 - 232) ^ v97 ^ v108;
  HIDWORD(v121) = v122 ^ HIDWORD(v123);
  LODWORD(v125) = HIDWORD(v125) ^ 0x1E24562C ^ v80 ^ 0xF9EC1833;
  return (*(a41 + 8 * v100))(v101, v94, v96, v100, v103, v110, 1256587126, v99, a9, a10, a11, a12, v114, v115, v116, v117, v118, v105, v104, v102, v101, a22, v119, v120, v121, v122, v123, v124, v125, v126, v127);
}

uint64_t sub_1001D7158(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = *(a2 + 8);
  *(a1 + 64) = *(a2 + 4);
  return (*(v2 + 146728))();
}

uint64_t sub_1001D72DC@<X0>(uint64_t a1@<X8>, uint64_t a2, char a3, __int16 a4, char a5, unsigned int a6, char *a7, char *a8, uint64_t a9, int a10, _DWORD *a11)
{
  v14 = *v11;
  v15 = 634647737 * ((((2 * &a6) | 0x6643128C) - &a6 - 857835846) ^ 0x5EB7A6BA);
  a10 = (v13 ^ 0x1E32) - v15 + 27531;
  a6 = ((((v13 ^ 0x1E32) + 526 + (v14 ^ 0xEEDFA568) + 287320244) ^ ((v14 ^ 0x31A857EE) - 833116142) ^ ((v14 ^ 0x36A23597) - 916600215)) - 54746966) ^ v15;
  a7 = &a3;
  a8 = &a5;
  a9 = a1;
  a11 = v11 + 1;
  v16 = (*(v12 + 8 * (v13 ^ 0xFB20)))(&a6);
  return (*(v12 + 8 * (v13 ^ 0x1E32)))(v16);
}

uint64_t sub_1001D73D8(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v17 = *a7;
  v18 = *(v16 + 8 * v11) ^ ((v7 ^ v14) + a1);
  v19 = v18 - (v8 & (2 * v18)) + v9;
  *(*a7 + (4 * v11 + 13)) = HIBYTE(v19) ^ 0xFB;
  *(v17 + (4 * v11 + 14)) = v10 ^ BYTE2(v19);
  *(v17 + (4 * v11 + 15)) = BYTE1(v19) ^ 2;
  *(v17 + (4 * v11 + 16)) = v19 ^ 0x70;
  return (*(v15 + 8 * (((v11 + 1 == v13) * a2) ^ v12)))();
}

uint64_t sub_1001D7454()
{
  v2 = STACK[0x2DC];
  v3 = 2207 * (LODWORD(STACK[0x2DC]) ^ 0x5A8C);
  *(v1 - 140) = v3;
  *(v1 - 156) = LODWORD(STACK[0x2BC]) ^ v3 ^ 0xA8B30F67;
  *(v1 - 152) = LODWORD(STACK[0x2C0]) ^ 0xEF6A4EB8;
  *(v1 - 148) = LODWORD(STACK[0x2D0]) ^ 0xFF9DE9AC;
  *(v1 - 160) = LODWORD(STACK[0x2CC]) ^ 0xF5711B2A;
  return (*(v0 + 8 * v2))();
}

uint64_t sub_1001D7634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v7 - 216) = v5;
  *(v7 - 248) = a3;
  *(v7 - 184) = v6;
  return (*(v4 + 8 * v3))((v3 - 70558116) & 0x2E3FEFCB);
}

uint64_t sub_1001D76C8@<X0>(int a1@<W0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v14 = v7 - 1;
  v15 = (v5 + v14);
  v16 = ((v15 ^ *(*(v12 + v13) + (*(v9 + v11) & v8))) & 0x7FFFFFFF) * a1;
  *(a4 + v14) = *(v4 + (v14 & 0xF | (16 * (((v16 ^ HIWORD(v16)) * a2) >> 24)))) ^ *v15 ^ ((v16 ^ BYTE2(v16)) * a3);
  return (*(v10 + 8 * ((28 * (v14 == 0)) ^ v6)))();
}

uint64_t sub_1001D7740(double a1, __n128 a2, __n128 a3)
{
  a2.n128_u16[0] = 15677;
  a2.n128_u8[2] = 61;
  a2.n128_u8[3] = 61;
  a2.n128_u8[4] = 61;
  a2.n128_u8[5] = 61;
  a2.n128_u8[6] = 61;
  a2.n128_u8[7] = 61;
  a3.n128_u16[0] = 24415;
  a3.n128_u8[2] = 95;
  a3.n128_u8[3] = 95;
  a3.n128_u8[4] = 95;
  a3.n128_u8[5] = 95;
  a3.n128_u8[6] = 95;
  a3.n128_u8[7] = 95;
  return (*(v7 + 8 * v4))(-v3, v3 ^ 0xFFFFFFFFFFFF9E7FLL, v5 + -8 - v3, v6 + -8 - v3, 40420, xmmword_100F523B0, a2, a3);
}

uint64_t sub_1001D77A4(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v47.n128_u64[0] = (v43 + 13) & 0xF;
  v47.n128_u64[1] = (v43 + 12) & 0xF;
  v48.n128_u64[0] = (v43 + 11) & 0xF;
  v48.n128_u64[1] = (v43 + 10) & 0xF;
  v49.n128_u64[0] = (v43 + 9) & 0xF;
  v49.n128_u64[1] = v44 & 0xF ^ 0xBLL;
  v52.val[0].i64[0] = (v43 + 7) & 0xF;
  v52.val[0].i64[1] = (v43 + 6) & 0xF;
  v52.val[1].i64[0] = (v43 + 5) & 0xF;
  v52.val[1].i64[1] = (v43 + 4) & 0xF;
  v52.val[2].i64[0] = (v43 + 3) & 0xF;
  v52.val[2].i64[1] = (v43 + 2) & 0xF;
  v52.val[3].i64[0] = (v43 + 1) & 0xF;
  v52.val[3].i64[1] = v43 & 0xF;
  v50.n128_u64[0] = 0xD7D7D7D7D7D7D7D7;
  v50.n128_u64[1] = 0xD7D7D7D7D7D7D7D7;
  return (*(a42 + 8 * v45))(0, v42 - 15, (v43 + 14) & 0xF, (v45 - 8880), v46 - 15, (v45 - 8880) ^ 0x4896, 6300, a1, v47, v48, v49, xmmword_100BC76B0, vqtbl4q_s8(v52, xmmword_100BC76B0), v50);
}

uint64_t sub_1001D78A0(int8x16_t a1, int8x16_t a2, int64x2_t a3, int64x2_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16)
{
  v35.i64[0] = v17 + a13 + 11;
  v36.i64[0] = v17 + a13 + 13;
  v35.i64[1] = v17 + a13 + 10;
  v36.i64[1] = v17 + a13 + 12;
  v37.i64[0] = v17 + a13 + 15;
  v38.i64[0] = v20 + a13 + v18 + 8;
  v37.i64[1] = v17 + a13 + 14;
  v38.i64[1] = v17 + a13 + 16;
  v39 = vandq_s8(v37, a1);
  v40 = vandq_s8(v36, a1);
  v41 = vandq_s8(v35, a1);
  v42 = vandq_s8(v38, a1);
  v43 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v44 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v45 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v46 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v47 = vorrq_s8(vandq_s8(vsubq_s64(a4, v46), a5), vandq_s8(vaddq_s64(v46, a3), a6));
  v48 = vorrq_s8(vandq_s8(vsubq_s64(a4, v45), a5), vandq_s8(vaddq_s64(v45, a3), a6));
  v49 = vorrq_s8(vandq_s8(vsubq_s64(a4, v44), a5), vandq_s8(vaddq_s64(v44, a3), a6));
  v50 = vorrq_s8(vandq_s8(vsubq_s64(a4, v43), a5), vandq_s8(vaddq_s64(v43, a3), a6));
  v51 = veorq_s8(v50, a7);
  v52 = veorq_s8(v49, a7);
  v53 = veorq_s8(v49, a8);
  v54 = veorq_s8(v50, a8);
  v55 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v53), v23);
  v56 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v57 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v54), v23);
  v58 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v59 = veorq_s8(v55, v56);
  v60 = vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v59);
  v62 = veorq_s8(vaddq_s64(v60, v58), v24);
  v63 = veorq_s8(v61, v24);
  v64 = vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL);
  v65 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v66 = veorq_s8(v62, v64);
  v67 = vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v66);
  v69 = vaddq_s64(v67, v65);
  v70 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v69, v69), v25), v69), v26), v27);
  v71 = vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v68, v68), v25), v68), v26), v27);
  v73 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v74 = veorq_s8(v70, v71);
  v75 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v76 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v74);
  v77 = veorq_s8(vaddq_s64(v75, v73), v28);
  v78 = veorq_s8(v76, v28);
  v79 = vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL);
  v80 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v81 = veorq_s8(v77, v79);
  v82 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v81);
  v84 = vaddq_s64(v82, v80);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v84, v84), v29), v84), v30), v31);
  v86 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v87 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v83, v83), v29), v83), v30), v31);
  v88 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v89 = veorq_s8(v85, v86);
  v90 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v89);
  v92 = veorq_s8(vaddq_s64(v90, v88), v32);
  v93 = veorq_s8(v91, v32);
  v125.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL))), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), a2)));
  v125.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL))), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), a2)));
  v94 = veorq_s8(v48, a7);
  v95 = veorq_s8(v48, a8);
  v96 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95), v23);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), v24);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99);
  v101 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v100, v100), v25), v100), v26), v27);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), v28);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v105, v105), v29), v105), v30), v31);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), v32);
  v125.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL))), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), a2)));
  v109 = veorq_s8(v47, a7);
  v110 = veorq_s8(v47, a8);
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v23);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), v24);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v115, v115), v25), v115), v26), v27);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v28);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v120, v120), v29), v120), v30), v31);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), v32);
  v125.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL))), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), a2)));
  *(v19 + a13 + v18 + 8) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v125, v33)), *(v22 + a13));
  return (*(v21 + 8 * (((a16 == a13) * v16) ^ a15)))();
}

uint64_t sub_1001D7D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v9 = ((2 * *(v7 + 16)) & 0xFED7C8F6) + (*(v7 + 16) ^ 0xFDDFF5FF7F6BE47BLL);
  STACK[0x220] = v9 + 0x73EEDABF93DD9FD6;
  v10 = *(v8 + 8 * (((v9 + 0x2200A0080941B7BLL < 0xFFFFFFFFFFFFFFF6) * ((v6 - 62879256) & 0x3BFF3BC ^ 0xF029)) ^ v6));
  STACK[0x2B8] = a6;
  return v10();
}

uint64_t sub_1001D7E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v31 = v29 - 17902189 * ((((v30 - 160) | 0xD7041FC) - (v30 - 160) + ((v30 - 160) & 0xF28FBE00)) ^ 0x833F57EC);
  *(v30 - 160) = v31 - 4884;
  *(v30 - 144) = v31 + v27 + 1129065375;
  *(v30 - 152) = a27;
  (*(v28 + 8 * (v29 + 33962)))(v30 - 160);
  *(v30 - 144) = (v29 - 417040363) ^ (297845113 * ((((2 * (v30 - 160)) | 0xC9D794D6) - (v30 - 160) + 454309269) ^ 0x93D8D6F5));
  *(v30 - 160) = a27;
  *(v30 - 152) = a26;
  v32 = (*(v28 + 8 * (v29 ^ 0x8DD4)))(v30 - 160);
  return (*(v28 + 8 * v29))(v32);
}

uint64_t sub_1001D7F3C(__n128 a1)
{
  v5.n128_u64[0] = (v1 + 13) & 0xF;
  v5.n128_u64[1] = (v1 + 12) & 0xF;
  v6.n128_u64[0] = (v1 + 11) & 0xF;
  v6.n128_u64[1] = (v1 + 10) & 0xF;
  v7.n128_u64[0] = (v1 + 9) & 0xF;
  v7.n128_u64[1] = v2 & 0xF ^ 0xALL;
  v10.val[0].i64[0] = (v1 + 7) & 0xF;
  v10.val[0].i64[1] = (v1 + 6) & 0xF;
  v10.val[1].i64[0] = (v1 + 5) & 0xF;
  v10.val[1].i64[1] = (v1 + 4) & 0xF;
  v10.val[2].i64[0] = (v1 + 3) & 0xF;
  v10.val[2].i64[1] = (v1 + 2) & 0xF;
  v10.val[3].i64[0] = (v1 + 1) & 0xF;
  v10.val[3].i64[1] = v1 & 0xF;
  v8.n128_u64[0] = 0x6F6F6F6F6F6F6F6FLL;
  v8.n128_u64[1] = 0x6F6F6F6F6F6F6F6FLL;
  return (*(v4 + 8 * v3))(179 * (v3 ^ 0x40B2u), (v2 & 0x10) - 16, 179 * (v3 ^ 0x40B2u) - 10904, 9189, a1, v5, v6, v7, xmmword_100BC76B0, vqtbl4q_s8(v10, xmmword_100BC76B0), v8);
}

uint64_t sub_1001D806C@<X0>(_DWORD *a1@<X0>, int a2@<W8>)
{
  v5 = *a1 + v4;
  v6 = HIBYTE(v5) ^ 0x4E;
  *v2 = ~v5 & 0xF;
  v2[1] = v5 >> 4;
  v2[2] = (BYTE1(v5) ^ 0x6B) & 0xF;
  v2[3] = (BYTE1(v5) ^ 0x6B) >> 4;
  v2[4] = (BYTE2(v5) ^ 0xDE) & 0xF;
  v2[5] = (BYTE2(v5) ^ 0xDE) >> 4;
  v2[6] = v6 & 0xF;
  v2[7] = v6 >> 4;
  return (*(v3 + 8 * a2))();
}

uint64_t sub_1001D814C@<X0>(uint64_t a1@<X8>)
{
  *(v3 + v2) = *(a1 + v2);
  v5 = v2 - 1 != ((v1 + 6777) ^ 0x9B93);
  return (*(v4 + 8 * (((16 * v5) | (32 * v5)) ^ v1)))();
}

uint64_t sub_1001D8188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v46 = (v43 - 35080) | 0x2612;
  *(v45 - 144) = v46;
  v47 = ((v46 - 51) ^ *(v45 - 128));
  *(v45 - 136) = v44;
  v48 = *(&off_1010A0B50 + v43 - 34602) - 1816348867;
  v49 = v48[v47];
  v50 = *(&off_1010A0B50 + v43 - 34893) - 8351486;
  v51 = v50[*(v45 - 127) ^ 0xC1];
  v52 = v43;
  v53 = *(&off_1010A0B50 + (v43 ^ 0x8DAB)) - 1674813226;
  LOBYTE(v47) = (*(v45 - 126) ^ 0xD4) + v53[*(v45 - 126) ^ 0xB6];
  v54 = *(&off_1010A0B50 + (v43 ^ 0x9919)) - 1120261386;
  v55 = v54[*(v45 - 125) ^ 0xFDLL];
  v56 = v48[*(v45 - 124) ^ 0x24];
  v57 = v50[*(v45 - 123) ^ 0xD6];
  v58 = v54[*(v45 - 121) ^ 0xAELL];
  v59 = v48[*(v45 - 120) ^ 0xABLL];
  v60 = v58 ^ (v58 >> 3) ^ ((v58 >> 6) | 0x20);
  v61 = v50[*(v45 - 119) ^ 0x6CLL];
  v62 = (v60 ^ 0xFF1F) & ((((*(v45 - 122) ^ 0xA2) + v53[*(v45 - 122) ^ 0xC0] - 41) << 8) ^ 0x3F33) ^ (v60 & 0x4CCC | 0x8000);
  v63 = (*(v45 - 118) ^ 0x99) + v53[*(v45 - 118) ^ 0xFBLL];
  LODWORD(v48) = v48[*(v45 - 116) ^ 0x61];
  v64 = v54[*(v45 - 117) ^ 0x41];
  LODWORD(v54) = v54[*(v45 - 113) ^ 0x9FLL];
  v65 = v54 ^ (v54 >> 6) ^ ((v54 >> 3) | 0xFFFFFF80) ^ 0xFFFFFF90;
  LODWORD(v54) = v48 ^ (v48 >> 4) ^ 0x6E;
  v66 = *(&off_1010A0B50 + v52 - 31280) - 1239550971;
  v67 = v52;
  v68 = *(&off_1010A0B50 + v52 - 33086) - 468394871;
  v69 = (*&v68[4 * (v50[*(v45 - 115) ^ 0x5DLL] ^ 0x92)] - 1389294689) ^ (*&v66[4 * v54] + 888940690);
  v70 = *(&off_1010A0B50 + (v52 ^ 0x877D)) - 1374959118;
  LODWORD(v50) = v65 - 2 * (v65 & 0xFFFFFFF3);
  v71 = v69 ^ *&v70[4 * (((*(v45 - 114) ^ 0x89) + v53[*(v45 - 114) ^ 0xEBLL] - 41) ^ 0xEA)];
  v72 = *(&off_1010A0B50 + v52 - 31872) - 734683339;
  v73 = *(&off_1010A0B50 + (v52 ^ 0x983C)) - 1083828551;
  v74 = *(&off_1010A0B50 + (v52 ^ 0x98EC)) - 203041815;
  LODWORD(v52) = (*&v66[4 * (v49 ^ (v49 >> 4) ^ 0x23)] + 888940690) ^ *&v70[4 * (v47 + 87)] ^ (*&v68[4 * (((((v51 ^ 0x9B) - (v51 ^ 0xBA)) ^ 0xFFFFFFFE) + (v51 ^ 0x9B)) ^ 0x5F)] - 1389294689) ^ (v72[v55 ^ (v55 >> 6) ^ (v55 >> 3) ^ 0x49] - 71) ^ 0xF3EDBA64;
  v75 = *(&off_1010A0B50 + v67 - 34243) - 1796034598;
  v76 = *(&off_1010A0B50 + v67 - 32294) - 1027745695;
  v77 = (v72[(v50 + 243) ^ 0x86] - 71) ^ v71;
  v78 = (*&v74[4 * (BYTE1(v71) ^ 0xDE)] - 354282776) ^ (*&v73[4 * (BYTE2(v71) ^ 0x5F)] - 1177394449) ^ v52 ^ __ROR4__(*&v75[4 * (((v72[(v50 + 243) ^ 0x86] - 71) ^ v71) ^ 0x21)], 23) ^ v76[v71 >> 24] ^ (v71 >> 24);
  if ((v60 & 0x10) != 0)
  {
    v79 = -16;
  }

  else
  {
    v79 = 16;
  }

  v80 = (*&v68[4 * (v57 ^ 0xDA)] - 1389294689) ^ (*&v66[4 * ((((v56 ^ 0xE3) - ((2 * (v56 ^ 0xE3)) & 0xC8) - 28) ^ (((v56 ^ 0xFFFFFFE3) & 0xF0) >> 4)) ^ 0x15)] + 888940690) ^ (v72[((v62 ^ 0xA71719BD) + v79) ^ 0xA717194ALL] - 71) ^ *&v70[4 * (((-(HIBYTE(v62) ^ 0xE7) ^ (163 - (HIBYTE(v62) ^ 0x44)) ^ 0xAC92FFA3 ^ ((HIBYTE(v62) ^ 0xE7) - ((2 * (HIBYTE(v62) ^ 0xE7)) & 0x146) - 1399652445)) + 163) ^ 0xA)];
  *(v45 - 184) = v80;
  v175 = (*&v68[4 * (v61 ^ 0x75)] - 1389294689) ^ (*&v66[4 * (v59 ^ (v59 >> 4) ^ 0x7D)] + 888940690) ^ *&v70[4 * ((v63 - 41) ^ 0x19)] ^ (v72[v64 ^ 0x91 ^ ((v64 >> 6) ^ (v64 >> 3) | 0xE0)] - 71);
  v81 = v80 ^ v78;
  v82 = v80 ^ v78 ^ v175 ^ 0x35B37FE5;
  v83 = v82 ^ v77 ^ 0x2140023B;
  *(v45 - 152) = v78 ^ 0x12EE4427;
  v173 = (*&v73[4 * (BYTE2(v83) ^ 0xBB)] - 1177394449) ^ v78 ^ 0x12EE4427 ^ (*&v74[4 * (BYTE1(v83) ^ 0xA6)] - 354282776) ^ __ROR4__(*&v75[4 * (((-((v82 ^ v77) ^ 0xA0) ^ (160 - (v82 ^ v77)) ^ 0x4434691A ^ (((v82 ^ v77) ^ 0xA0) - ((2 * ((v82 ^ v77) ^ 0xA0)) & 0x34) + 1144285466)) + 160) ^ 0xC4)], 23) ^ (HIBYTE(v83) ^ v76[HIBYTE(v83) ^ 0xAELL]);
  v84 = v173 ^ 0x4625F023 ^ v80 ^ v78;
  *(v45 - 200) = v84;
  v174 = v82 ^ v77 ^ 0xDD11857B;
  v85 = v84 ^ 0xB2E7603D ^ v82;
  v86 = v85 ^ v174;
  *(v45 - 168) = v85;
  v87 = (*&v73[4 * (BYTE2(v86) ^ 0x5D)] - 1177394449) ^ (*&v74[4 * (BYTE1(v86) ^ 0xD3)] - 354282776) ^ __ROR4__(*&v75[4 * ((v85 ^ v174) ^ 0x3C)], 23) ^ (HIBYTE(v86) ^ v76[HIBYTE(v86) ^ 0x2ELL]) ^ 0xD4C4D15B;
  v88 = v87 ^ v173 ^ 0x4625F023;
  v89 = v80 ^ v78 ^ 0x61DFCA37 ^ v87;
  v172 = v89 ^ v85 ^ 0xA278AE48;
  v90 = (v172 ^ v85 ^ v174) >> 24;
  v170 = (*&v74[4 * (((v172 ^ v86) >> 8) ^ 0xF6)] - 354282776) ^ (*&v73[4 * (((v172 ^ v86) >> 16) ^ 0x4A)] - 1177394449) ^ __ROR4__(*&v75[4 * ((((v172 ^ v86) & 0x68 ^ 0x70) & ((v172 ^ v86) & 0x97 ^ 0xED) | (v172 ^ v86) & 0x87) ^ 0x8A)], 23) ^ v88 ^ (v76[v90 ^ 0x62] ^ ((v172 ^ v86) >> 24) ^ 0x19);
  v171 = v172 ^ v85 ^ v174 ^ 0x51153A22;
  v91 = v170 ^ 0xB00D9739 ^ v85 ^ 0xA278AE48;
  v92 = v91 ^ v171 ^ 0x31A4CBF5;
  v93 = (*&v74[4 * (BYTE1(v92) ^ 0xF3)] - 354282776) ^ (*&v73[4 * (BYTE2(v92) ^ 0x59)] - 1177394449) ^ __ROR4__(*&v75[4 * ((v91 ^ v171) ^ 0xB2)], 23) ^ v170 ^ 0xB00D9739 ^ (HIBYTE(v92) ^ v76[HIBYTE(v92) ^ 0x2DLL]);
  v94 = v170 ^ 0xB00D9739 ^ v89;
  v95 = v94 ^ 0xA5F9FD02 ^ v93 ^ 0xD1C648D9;
  HIDWORD(v169) = v91;
  *(v45 - 160) = v95;
  HIDWORD(v168) = v95 ^ v91;
  LODWORD(v169) = v91 ^ v171 ^ 0x8B872680;
  v96 = v95 ^ v91 ^ 0x68BFF1C6;
  v97 = v96 ^ v169;
  v98 = __ROR4__(*&v75[4 * ((v96 ^ v169) ^ 0xE7)], 23);
  v99 = (*&v74[4 * (BYTE1(v97) ^ 0xB3)] - 354282776) ^ (*&v73[4 * (BYTE2(v97) ^ 0x13)] - 1177394449) ^ v98 ^ v93 ^ 0xD1C648D9 ^ ((v96 ^ v169) >> 24) ^ v76[((v96 ^ v169) >> 24) ^ 0xFALL];
  v100 = v99 ^ 0xAEF6C49E ^ v94 ^ 0xA5F9FD02 ^ v93 ^ 0xD1C648D9;
  v101 = v100 ^ v96;
  v102 = v100 ^ v96 ^ 0x284F801 ^ v96 ^ v169;
  HIDWORD(v167) = v102;
  v103 = (*&v74[4 * (BYTE1(v102) ^ 0x6A)] - 354282776) ^ (*&v73[4 * (BYTE2(v102) ^ 0xD7)] - 1177394449) ^ __ROR4__(*&v75[4 * (((v74[4 * (BYTE1(v97) ^ 0xB3)] - 24) ^ (v73[4 * (BYTE2(v97) ^ 0x13)] - 17) ^ v98 ^ v93 ^ 0xD9 ^ ((v96 ^ v169) >> 24) ^ v76[((v96 ^ v169) >> 24) ^ 0xFALL]) ^ 0x9E ^ v170 ^ 0x39 ^ v89 ^ 2 ^ v93 ^ 0xD9 ^ v96 ^ 1 ^ v97 ^ 0x7B)], 23) ^ v99 ^ 0xAEF6C49E ^ (HIBYTE(v102) ^ v76[HIBYTE(v102) ^ 0x47]);
  v104 = (((v100 ^ 0x6393DAB1) - (v100 ^ 0xA193DAB1)) ^ 0xFC000000) + (v100 ^ 0x6393DAB1);
  v105 = v104 ^ 0x579DD692 ^ v103;
  v106 = v105 ^ v97;
  v107 = (*&v74[4 * (BYTE1(v106) ^ 0x73)] - 354282776) ^ (*&v73[4 * (BYTE2(v106) ^ 0xFA)] - 1177394449) ^ __ROR4__(*&v75[4 * ((v105 ^ v97) ^ 0x68)], 23) ^ ((v105 ^ v97) >> 24) ^ v76[((v105 ^ v97) >> 24) ^ 0xF3];
  LODWORD(v167) = v103;
  v108 = v103 ^ 0x6415FF3 ^ v107;
  v109 = v107 ^ v104;
  v110 = v109 ^ 0x51DC8961;
  HIDWORD(v165) = v105 ^ v101 ^ 0x284F801;
  LODWORD(v165) = v109 ^ 0x51DC8961 ^ HIDWORD(v165);
  v111 = v165 ^ 0x944EC838;
  v112 = v165 ^ 0x944EC838 ^ v105 ^ v97;
  v166 = __PAIR64__(v105, v108);
  v177 = (*&v74[4 * (BYTE1(v112) ^ 0x19)] - 354282776) ^ (*&v73[4 * (BYTE2(v112) ^ 0x6C)] - 1177394449) ^ __ROR4__(*&v75[4 * (v109 ^ 0x61 ^ BYTE4(v165) ^ 0x38 ^ (v105 ^ v97) ^ 0xAA)], 23) ^ v108 ^ ((v111 ^ v106) >> 24) ^ v76[((v111 ^ v106) >> 24) ^ 0x64];
  *(v45 - 176) = v177 ^ 0x77AED3B4;
  v113 = v177 ^ 0x77AED3B4 ^ v109 ^ 0x51DC8961;
  v114 = v113 ^ v105 ^ v97;
  v115 = HIBYTE(v114);
  v116 = *&v74[4 * (BYTE1(v114) ^ 4)];
  v117 = (*&v73[4 * (BYTE2(v114) ^ 0x2E)] - 1177394449) ^ __ROR4__(*&v75[4 * (v177 ^ 0xB4 ^ v109 ^ 0x61 ^ (v105 ^ v97) ^ 0xB5)], 23) ^ (HIBYTE(v114) ^ v76[v115 ^ 0xA7]) ^ 0x559DBE3 ^ (((2 * (((v116 ^ 0x8CEDC932) + 362056513) ^ v116 ^ ((v116 ^ 0x555FE483) + 1277601522) ^ ((v116 ^ 0x40CA6583) + 1504913394) ^ ((v116 ^ 0x7FFEF5BF) + 1720170446))) & 0xA2D1A0EA ^ 0x8001200A) + (v116 ^ ((v116 ^ 0x633F0ABA) - 96057143) ^ ((v116 ^ 0x36BDFE2E) - 1346061219) ^ ((v116 ^ 0x84FBB266) + 495120405) ^ ((v116 ^ 0xB7FFFB7F) + 780581134) ^ 0x37EE6DF8));
  *(v45 - 192) = v117;
  v118 = v90 ^ 0x9E;
  if (((v115 ^ 0xAE7899DC) & (v115 ^ 0xBF7BDD54) ^ v115 & 0x77777777) != 0xAE7899AB)
  {
    v118 = 1247302887;
  }

  *(v45 - 208) = v118;
  LODWORD(v168) = v99 ^ 0xAEF6C49E ^ v94 ^ 0xA5F9FD02 ^ v93 ^ 0xD1C648D9;
  HIDWORD(v162) = *(v45 - 184) ^ 0x9F36EA54;
  HIDWORD(v160) = v81 ^ 0xF8646379;
  LODWORD(v163) = v99 ^ 0x5C927077;
  HIDWORD(v163) = v112 ^ 0xCCD2EE60;
  v176 = -1784804137 - (v100 ^ 0xE12470CC) - (v112 ^ 0xCCD2EE60);
  HIDWORD(v161) = v106 ^ 0x1B0DBAE7;
  HIDWORD(v164) = v177 ^ 0x77AED3B4 ^ v109 ^ 0x51DC8961;
  v119 = v113 ^ v111;
  v120 = HIDWORD(v162) + (v81 ^ 0xF8646379) + (*(v45 - 200) ^ 0xB05D4580) + (v88 ^ 0x61081A5A) + (v97 ^ 0x16BA940B) - (v99 ^ 0x5C927077) + (v106 ^ 0x1B0DBAE7) + v176 - 1743231785 + (v113 ^ v111 ^ 0xEAC4F825);
  v121 = v109 ^ 0x9A95A87E;
  LODWORD(v164) = v114;
  HIDWORD(v158) = v117 ^ v110;
  v122 = v117 ^ v110 ^ v113 ^ v111;
  HIDWORD(v159) = v94 ^ 0x546E3D39;
  LODWORD(v160) = v93 ^ 0x4BA7A0E6;
  HIDWORD(a22) = v114 ^ 0xA62DE6B ^ v122;
  LODWORD(v158) = v122;
  v123 = (v86 ^ 0xBB9F3CC6) + (v94 ^ 0x546E3D39) - (v93 ^ 0x4BA7A0E6) + v120 + HIDWORD(a22);
  v124 = (v123 - 1098228377);
  v125 = v123 - 801091408;
  if (v124 >= 0xEE4A0CB7)
  {
    v126 = -297136969;
  }

  else
  {
    v125 = v123 - 1098228377;
    v126 = 0;
  }

  *(v45 - 184) = v126;
  v127 = v125 == 0;
  v128 = v67;
  v129 = *(&off_1010A0B50 + v67 - 33989) - 82816822;
  v130 = *(&off_1010A0B50 + (v67 ^ 0x814E)) - 886542179;
  v131 = *(&off_1010A0B50 + (v67 ^ 0x823C)) - 64102215;
  v132 = *(v45 - 103);
  v133 = v132 ^ 0x1B;
  v134 = (v132 ^ 0xD329A181) + (v132 ^ 0xF4);
  v135 = *(v45 - 99);
  v136 = *(&off_1010A0B50 + (v128 ^ 0x9939)) - 338449962;
  v137 = *(v45 - 104);
  v138 = v137 ^ 0x25;
  v139 = v137 ^ 0xD6;
  LOBYTE(v137) = v136[*(v45 - 97) ^ 0x4ELL] - 72;
  v140 = v136[*(v45 - 101) ^ 0xD4] - 72;
  LODWORD(v142) = __ROR4__(v101 ^ 0xC2696CA, 23);
  v141 = v142 ^ 0x6A5CE792;
  LODWORD(v159) = v121;
  v143 = v123 + v121;
  v144 = v143 + 1341427374;
  v145 = v143 - ((2 * (v143 + 1341427374)) & 0x359A51F8u) - 356403286;
  *(v45 - 200) = *(v45 - 100) ^ 0x3E ^ ((*(v45 - 100) ^ 0x3E) + 890074108) ^ ((v135 ^ 0xD329A1CB) + (v135 ^ 0xBE)) ^ *&v130[4 * (*(v45 - 100) ^ 0xCDLL)] ^ *&v129[4 * (v135 ^ 0x51)] ^ *(v45 - 98) ^ *&v131[4 * (*(v45 - 98) ^ 0x8DLL)] ^ 0x81003B7E ^ ((112 * v137) ^ v137);
  v146 = *(v45 - 168) ^ 0xBC6DDB0A;
  *(v45 - 240) = v134 ^ *&v129[4 * v133] ^ *&v130[4 * v139] ^ v138 ^ (v138 + 890074108) ^ *(v45 - 102) ^ *&v131[4 * (*(v45 - 102) ^ 0xDDLL)] ^ 0x587D5CE0 ^ ((112 * v140) ^ v140);
  v147 = v144 + (v177 ^ 0x1F78499D);
  v148 = v147 ^ 0xABFAC652;
  v149 = v148 + 2015180309 + ~(2 * (v148 & 0x781D361C ^ v147 & 8));
  *(v45 - 136) = (((*(v45 - 136) ^ 0xDCC6579) + 1496849883) ^ ((*(v45 - 136) ^ 0xA3316CFD) - 138079137) ^ ((*(v45 - 136) ^ 0xDE6AA283) - 1969300959)) - 816589283;
  HIDWORD(v156) = v144 ^ *(v45 - 160) ^ v145;
  LODWORD(v142) = v142 ^ 0x6A5CE792;
  HIDWORD(v142) = v142;
  v150 = v142 >> 9;
  if (v127)
  {
    v151 = *(v45 - 184);
  }

  else
  {
    v151 = v124;
  }

  LODWORD(v156) = v150 ^ v124 ^ v151;
  HIDWORD(v155) = v120 ^ 0x2A37F9C4;
  HIDWORD(v157) = v147 ^ 0xABFAC652;
  HIDWORD(v154) = -v148 ^ v149 ^ 0x781D3614;
  LODWORD(v155) = v119 ^ v120;
  LODWORD(v154) = v147 ^ 0x4CE3EA8D;
  HIDWORD(v153) = *(v45 - 192) ^ *(v45 - 176);
  LODWORD(v153) = v146 ^ v176;
  LODWORD(v157) = *(v45 - 208) ^ *(v45 - 152);
  LODWORD(v161) = v88 ^ 0x61081A5A;
  LODWORD(v162) = v97 ^ 0x16BA940B;
  return (*(a43 + 8 * v128))(v149, v145, v141, v133, 2325666337, v128, v120, v124, a9, a10, a11, a12, v153, v154, v155, v156, v157, v136, v131, v130, v129, a22, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169);
}

uint64_t sub_1001D942C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, uint64_t a27, unint64_t a28)
{
  STACK[0x398] = a28;
  STACK[0x268] = 0;
  return (*(v28 + 8 * a26))();
}

uint64_t sub_1001D951C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v10 = v8 - 1;
  *(a2 + v10) ^= *(v2 + (v10 & 0xF)) ^ *(v4 + (v10 & 0xF)) ^ ((v10 & 0xF) * v7) ^ *((v10 & 0xF) + v3 + 1);
  return (*(v9 + 8 * (((((v10 - v6) | (v6 - v10)) >= 0) * a1) ^ v5)))();
}

uint64_t sub_1001D974C@<X0>(unsigned int a1@<W8>)
{
  v6 = *v4;
  **(v4 + 8) = v1;
  *v6 = *(v2 + 16 * v3);
  return (*(v5 + 8 * a1))();
}

uint64_t sub_1001D977C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, unsigned int a31, uint64_t a32, int a33, int a34, uint64_t a35, uint64_t a36, int a37, int a38, uint64_t a39)
{
  v46 = a34 + 14 * a33 + a38 + v39 + 13 * v42 + LODWORD(STACK[0x2F4]) + 11 * (((v45 ^ 0x6840B019) - 1654265122) ^ ((v45 ^ 0x32463662) - 949785433) ^ ((((((v41 ^ 0xDC5) + 24693) | 0x18) - 1699123504) ^ (((v41 ^ 0xDC5) + 295239869) | 0x24008210)) + (v45 ^ 0x5A06866B))) + 934878758;
  v47 = (v46 ^ 0xCA83183D) & (2 * (v46 & 0xD2D392B9)) ^ v46 & 0xD2D392B9;
  v48 = ((2 * (v46 ^ 0x6BA43D0D)) ^ 0x72EF5F68) & (v46 ^ 0x6BA43D0D) ^ (2 * (v46 ^ 0x6BA43D0D)) & 0xB977AFB4;
  v49 = (v48 ^ 0x10460F20) & (4 * v47) ^ v47;
  v50 = ((4 * (v48 ^ 0x8910A094)) & 0x3977AFB0 ^ 0x2156AE90 ^ ((4 * (v48 ^ 0x8910A094)) ^ 0x65DEBED0) & (v48 ^ 0x8910A094)) & (16 * v49);
  v51 = STACK[0x2F8] & v44;
  v52 = (2 * v51) & (LODWORD(STACK[0x2F8]) ^ 0xD14FB143) ^ v51;
  v53 = ((2 * (LODWORD(STACK[0x2F8]) ^ 0x51989145)) ^ 0x3EE504C) & (LODWORD(STACK[0x2F8]) ^ 0x51989145) ^ (2 * (LODWORD(STACK[0x2F8]) ^ 0x51989145)) & 0x81F72826;
  v54 = v46 ^ LODWORD(STACK[0x2F8]) ^ (2 * ((((4 * (v53 ^ 0x80112822)) ^ 0x7DCA090) & (v53 ^ 0x80112822) ^ (4 * (v53 ^ 0x80112822)) & 0x81F72820) & (16 * ((v53 ^ 0x1E60004) & (4 * v52) ^ v52)) ^ (v53 ^ 0x1E60004) & (4 * v52) ^ v52 ^ v49 ^ v50));
  v55 = STACK[0x308];
  v56 = LODWORD(STACK[0x3E4]) - LODWORD(STACK[0x300]) + *(v43 + 4 * a35) - 383914319 + (((v54 ^ 0xB14A4BCA) + 1254866833) ^ ((v54 ^ 0x38098C0F) - 1014466474) ^ ((v54 ^ 0xD9DBEC1F) + 576329798));
  v57 = (v56 ^ 0x3EB7E330) & (2 * (v56 & 0x3C37EB31)) ^ v56 & 0x3C37EB31;
  v58 = ((2 * (v56 ^ 0x4EF5B332)) ^ 0xE584B006) & (v56 ^ 0x4EF5B332);
  v59 = v57 ^ 0x72C25803 ^ v58 & (4 * v57);
  v60 = v58 & (4 * v58) & ((16 * v59) ^ 0x2C258030);
  v61 = *(v43 + 4 * a32);
  v62 = ((2 * (v61 ^ 0xA13DB46F)) ^ 0xE2A41A18) & (v61 ^ 0xA13DB46F) ^ (2 * (v61 ^ 0xA13DB46F)) & 0x71520D0C;
  v63 = v62 ^ 0x11520504;
  v64 = (2 * (v61 & v44)) & (v61 ^ 0x816FB46B) ^ v61 & v44 ^ 0x71520D0C ^ (v62 ^ 0x40000808) & (4 * ((2 * (v61 & v44)) & (v61 ^ 0x816FB46B) ^ v61 & v44));
  v65 = v56 ^ v61 ^ (2 * (((4 * v63) ^ 0xC5483430) & v63 & ((16 * v64) ^ 0x1520D0C0) ^ v64 ^ v59 ^ v60));
  v66 = ((v40 ^ 0xA07BEEB0) + 84562228) ^ ((v40 ^ 0x56BCE6C2) - 204646078) ^ ((v40 ^ 0xF6C70872) + 1404483570);
  v67 = (2 * v51) & (LODWORD(STACK[0x2F8]) ^ 0xC44F3042) ^ v51;
  v68 = ((2 * (LODWORD(STACK[0x2F8]) ^ 0xE4905086)) ^ 0x69FFD3CA) & (LODWORD(STACK[0x2F8]) ^ 0xE4905086) ^ (2 * (LODWORD(STACK[0x2F8]) ^ 0xE4905086)) & 0x34FFE9E4;
  v80 = ((((LODWORD(STACK[0x308]) ^ 0xBC) + 95) ^ LODWORD(STACK[0x308]) ^ ((LODWORD(STACK[0x308]) ^ 4) + 103) ^ ((LODWORD(STACK[0x308]) ^ 0x4A) + 41)) ^ ((LOBYTE(STACK[0x308]) ^ 0xEF) + 14)) & 0x7F ^ 0x1D;
  v69 = *(v43 + 4 * a29) - v66 + 8 * v66 - *(v43 + 4 * a28) + 2 * (3 * ((LODWORD(STACK[0x30C]) + v44) % a31) + ((LODWORD(STACK[0x2F8]) ^ (2 * ((((4 * (v68 ^ 0x25)) ^ 0x90) & (v68 ^ 0x25) ^ (4 * (v68 ^ 0x25)) & 0xE0) & (16 * (v68 & (4 * v67) ^ v67)) ^ v68 & (4 * v67) ^ v67))) ^ 0x63)) + 7 * v80 + 1801563467 - 418574702 + (((v65 ^ 0xC3234A83) - 2073653587) ^ ((v65 ^ 0x4EDD0CFC) + 161007828) ^ ((v65 ^ 0x2BE33) + 1195866653));
  v70 = LODWORD(STACK[0x2F4]) + LODWORD(STACK[0x2F8]) + 7 * v80 + 1801563467 - 1216930000 + v69;
  v71 = (v70 ^ 0xB6E6EECD) & (2 * (v70 & 0xA6F6CCEC)) ^ v70 & 0xA6F6CCEC;
  v72 = ((2 * (v70 ^ 0xBE8BF60D)) ^ 0x30FA75C2) & (v70 ^ 0xBE8BF60D) ^ (2 * (v70 ^ 0xBE8BF60D)) & 0x187D3AE0;
  v73 = (v55 ^ 0x836FB85B) & (2 * (v55 & v44)) ^ v55 & v44;
  v74 = ((2 * (v55 ^ 0x23659ADD)) ^ 0xE614477C) & (v55 ^ 0x23659ADD) ^ (2 * (v55 ^ 0x23659ADD)) & 0xF30A23BE;
  v75 = (v74 ^ 0xC200031C) & (4 * v73) ^ v73;
  v76 = (4 * v74) & 0xF30A23B8 ^ 0x400802B6;
  v77 = (v76 ^ ((4 * v74) ^ 0xCC288EF8) & v74) & (16 * v75) ^ v75;
  v78 = v70 ^ LODWORD(STACK[0x308]) ^ (2 * (v77 ^ (v72 ^ 0x107830C0) & (4 * v71) ^ v71 ^ (v72 ^ 0x187D3AE0) & (4 * v72) & (16 * ((v72 ^ 0x107830C0) & (4 * v71) ^ v71))));
  return (*(a39 + 8 * ((11146 * (((LODWORD(STACK[0x310]) - LODWORD(STACK[0x314]) + LODWORD(STACK[0x31C]) - 608357516 + (((v78 ^ 0x417F414B) - 1249726165) ^ ((v78 ^ 0x755D783E) - 2120185760) ^ ((v78 ^ 0x346D4CFA) - 1064256356))) & 1) == 0)) ^ v41 ^ 0xDC5)))(LODWORD(STACK[0x310]), v69, 2174781536, v77, v75, v76, 3496982883, (LODWORD(STACK[0x308]) ^ 0xFFFFFFEF) + 14, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_1001D9F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v59 = STACK[0x398];
  v60 = STACK[0x398] - 0x466309CA115760B2;
  if (v60 <= 5000)
  {
    v60 = 5000;
  }

  v81 = v60;
  v61 = v59 + 0x466309CA1157617DLL;
  v62 = v59 >= 0x466309CA1157618ALL;
  v63 = 0x8CC6139422AEC307;
  if (v62)
  {
    v63 = v61;
  }

  v64 = (v63 ^ 0x72B1CB639C41B96CLL) & (2 * (v63 & 0x7339EC6BDD513D0CLL)) ^ v63 & 0x7339EC6BDD513D0CLL;
  v65 = ((2 * (v63 ^ 0x14815B262663D964)) ^ 0xCF716E9BF665C8D0) & (v63 ^ 0x14815B262663D964) ^ (2 * (v63 ^ 0x14815B262663D964)) & 0x67B8B74DFB32E468;
  v66 = v65 ^ 0x2088914409122428;
  v67 = (v65 ^ 0x45202209F200C040) & (4 * v64) ^ v64;
  v68 = ((4 * v66) ^ 0x9EE2DD37ECCB91A0) & v66 ^ (4 * v66) & 0x67B8B74DFB32E468;
  v69 = (v68 ^ 0x6A09505E8028020) & (16 * v67) ^ v67;
  v70 = ((16 * (v68 ^ 0x6118224813306448)) ^ 0x7B8B74DFB32E4680) & (v68 ^ 0x6118224813306448) ^ (16 * (v68 ^ 0x6118224813306448)) & 0x67B8B74DFB32E440;
  v71 = (v70 ^ 0x6388344DB3224400) & (v69 << 8) ^ v69;
  v72 = (((v70 ^ 0x43083004810A068) << 8) ^ 0xB8B74DFB32E46800) & (v70 ^ 0x43083004810A068) ^ ((v70 ^ 0x43083004810A068) << 8) & 0x67B8B74DFB32E000;
  v73 = v71 ^ 0x67B8B74DFB32E468 ^ (v72 ^ 0x20B0054932200000) & (v71 << 16);
  v74 = (v63 ^ (2 * ((v73 << 32) & 0x67B8B74D00000000 ^ v73 ^ ((v73 << 32) ^ 0x7B32E46800000000) & (((v72 ^ 0x4708B204C9128468) << 16) & 0x67B8B74D00000000 ^ 0x40B0044D00000000 ^ (((v72 ^ 0x4708B204C9128468) << 16) ^ 0x374DFB3200000000) & (v72 ^ 0x4708B204C9128468))))) & 0xFFFFFFFFFFFFFFFCLL;
  v75 = ((v74 ^ 0x6723F0D42DF68CE5) + 0x6C2E99E617247FC3) ^ ((v74 ^ 0x2DAA6DB25C9582DLL) + 0x9D7CFE91F1BAB0BLL) ^ ((v74 ^ 0x1FD09C6F230B2114) + 0x14DDF55D19D9D234);
  v82 = v60;
  v76 = v60 & 0x7FFFFFFFFFFFFFFCLL;
  v77 = (v60 & 0x7FFFFFFFFFFFFFFCLL) + 0x3CE25E0EC5200360;
  LODWORD(v66) = (v77 ^ 0x309FFC42) & (2 * (v77 & 0x3ADFFC88)) ^ v77 & 0x3ADFFC88;
  LODWORD(v72) = ((2 * (v77 ^ 0x64AEA452)) ^ 0xBCE2B1B4) & (v77 ^ 0x64AEA452) ^ (2 * (v77 ^ 0x64AEA452)) & 0x5E7158D8;
  v78 = v72 ^ 0x4211484A;
  LODWORD(v72) = (v72 ^ 0x1C601000) & (4 * v66) ^ v66;
  LODWORD(v66) = ((4 * v78) ^ 0x79C56368) & v78 ^ (4 * v78) & 0x5E7158D8;
  LODWORD(v72) = (v66 ^ 0x58414040) & (16 * v72) ^ v72;
  LODWORD(v66) = ((16 * (v66 ^ 0x6301892)) ^ 0xE7158DA0) & (v66 ^ 0x6301892) ^ (16 * (v66 ^ 0x6301892)) & 0x5E7158C0;
  v79 = (v77 ^ (2 * ((((v66 ^ 0x1860505A) << 8) & 0x5E710000 ^ 0x50500000 ^ (((v66 ^ 0x1860505A) << 8) ^ 0x71580000) & (v66 ^ 0x1860505A)) & (((v66 ^ 0x46110800) & (v72 << 8) ^ v72) << 16) ^ (v66 ^ 0x46110800) & (v72 << 8) ^ v72))) & 0xFFFFFFFC;
  return (*(v58 + 8 * v57))(0xE6FB01410B0F1D4CLL, a2, a3, a4, a5, a6, a7, 60599, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v76 - 24, (((v79 ^ 0xDFDA6B876133EE28) - 0x32E0E6B9DEFD6976) ^ ((v79 ^ 0xF43E73804B3E65EALL) - 0x1904FEBEF4F0E2B4) ^ ((v79 ^ 0x2BE4180710D2774ALL) + 0x39216AC650E30FECLL)) - 0x12C572C17AEE8453, v81, a22, a23, a24, a25, a26, a27, a28, STACK[0x318], v77, STACK[0x2D0], v82, STACK[0x258], STACK[0x320], STACK[0x2C0], STACK[0x3B0], STACK[0x3E8], STACK[0x2C8], STACK[0x328], STACK[0x268], STACK[0x2E0], STACK[0x358], a43, a44, v75 - 0x7124A35211E606C1, v75 - 0x22C6684122215B13, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, v75 - 0x7124A351C2B9D8D4);
}

uint64_t sub_1001DA5EC@<X0>(uint64_t a1@<X0>, char a2@<W2>, char a3@<W3>, char a4@<W4>, char a5@<W5>, int a6@<W6>, char a7@<W7>, char a8@<W8>)
{
  STACK[0x458] = a1 - 1;
  v23 = (v12 + v21) ^ v11;
  v24 = (v11 ^ v9) & (2 * (v11 & v8)) ^ v11 & v8;
  v25 = (2 * v23) ^ a7;
  v26 = v11 ^ (2 * ((v25 & v23 ^ (2 * v23) & v13 ^ v19) & (16 * ((v25 & v23 ^ (2 * v23) & v13) & (4 * v24) ^ v24)) & (v20 ^ (4 * (v25 & v23 ^ (2 * v23) & v13 ^ v19))) ^ (v25 & v23 ^ (2 * v23) & v13) & (4 * v24) ^ v24));
  *(v22 + a1 - 1) = ((((v26 ^ v14) + v15) ^ ((v26 ^ v17) + v18) ^ ((v26 ^ v10) + a2)) + a3) * (v11 + a4) + v11 * a8 + a5;
  return (*(v16 + 8 * (((STACK[0x458] == 0) * a6) ^ v12)))();
}

uint64_t sub_1001DA69C(int8x16_t a1, int8x8_t a2, int8x8_t a3, uint64_t a4, int a5, uint64_t a6, char a7, char a8, uint64_t a9)
{
  v17.val[0].i64[0] = (v12 + v13 - 1) & 0xF;
  v17.val[0].i64[1] = (v12 + v13 + 14) & 0xF;
  v17.val[1].i64[0] = (v12 + v13 + 13) & 0xF;
  v17.val[1].i64[1] = (v12 + v13 + 12) & 0xF;
  v17.val[2].i64[0] = (v12 + v13 + 11) & 0xF;
  v17.val[2].i64[1] = (a7 + v13 + a8) & 0xF;
  v17.val[3].i64[0] = (v12 + v13 + 9) & 0xF;
  v17.val[3].i64[1] = (v12 + v13) & 0xF ^ 8;
  *(a9 + v13) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a9 + v13), *(v9 + v17.val[0].i64[0] - 7)), veor_s8(*(v17.val[0].i64[0] + v10 - 6), *(v11 + v17.val[0].i64[0] - 7)))), a3), vmul_s8(*&vqtbl4q_s8(v17, a1), a2)));
  return (*(v15 + 8 * (((a6 == v13) * v14) ^ a5)))();
}

uint64_t sub_1001DA910(uint64_t result)
{
  if ((v1 ^ 0x77FBFEC6) + ((2 * v1) & 0xEFF6B088) == 2013003462)
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891401;
  }

  *(result + 4) = v2;
  return result;
}

uint64_t sub_1001DA9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, __n128 a6@<Q1>, int8x16_t a7@<Q4>, uint64_t a8@<D5>, int8x16_t a9@<Q6>)
{
  v18 = (a2 - 1) & 0xF;
  v20.i64[0] = vqtbl4q_s8(*(&a6 - 1), a7).u64[0];
  v20.i64[1] = a8;
  v21 = vrev64q_s8(vmulq_s8(v20, a9));
  *(a5 + a2) = veorq_s8(veorq_s8(veorq_s8(veorq_s8(*(v14 + v18 - 15), *(v11 + a2)), *(v18 + v12 - 11)), *(v15 + v18 + v13 + a4)), vextq_s8(v21, v21, 8uLL));
  return (*(v17 + 8 * (((8 * (a3 == 0)) | ((a3 == 0) << 7)) ^ v16)))(a1, a2 - 16, a3 - 16);
}

uint64_t sub_1001DAA74()
{
  v8 = (v4 + ((v5 + 75) & 0x13) + 12) & 0xF;
  v9 = 1 - v7;
  v11 = (v0 - v7) > 0xF && (1 - v7 + v2 - v4 + v8) > 0xF && (v9 + v3 - v4 + v8) > 0xF;
  v12 = v9 + v1 - v4 + v8;
  v14 = v11 && v12 > 0xF;
  return (*(v6 + 8 * (((4 * v14) | (8 * v14)) ^ v5)))(v4);
}

uint64_t sub_1001DAC64(uint64_t a1, uint64_t a2, int8x16_t a3, int8x8_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v25.val[0].i64[0] = (v19 + a6 + a8) & 0xF;
  v25.val[0].i64[1] = (v19 + a6 + 14) & 0xF;
  v25.val[1].i64[0] = (v19 + a6 + 13) & 0xF;
  v25.val[1].i64[1] = (v19 + a6 + 12) & 0xF;
  v25.val[2].i64[0] = (v19 + a6 + 11) & 0xF;
  v25.val[2].i64[1] = (v19 + a6 + 10) & 0xF;
  v25.val[3].i64[0] = (v19 + a6 + 9) & 0xF;
  v25.val[3].i64[1] = (v19 + a6) & 0xF ^ 8;
  *(a1 + v19 + a8) = veor_s8(veor_s8(veor_s8(*(v20 + v25.val[0].i64[0] - 7), *(v25.val[0].i64[0] + v22 - 5)), veor_s8(*(a7 + v19 + a8), *(v25.val[0].i64[0] + v21))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v25, a3), a4)));
  return (*(a19 + 8 * (((a2 == a6) * a9) ^ v23)))(a1 - 8);
}

uint64_t sub_1001DAD30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, char a25)
{
  if (a12 < 0xBF163B4E != a3 - 1089062002 < ((v25 - 971388246) & 0x39E6AFFDu) - 1089105999)
  {
    v27 = a3 - 1089062002 < ((v25 - 971388246) & 0x39E6AFFDu) - 1089105999;
  }

  else
  {
    v27 = a3 - 1089062002 > a12;
  }

  return (*(v26 + 8 * ((508 * v27) ^ v25)))(a1, a2, a13, &a25, -196661948, 196662012, 74);
}

uint64_t sub_1001DADFC(void *a1)
{
  *a1 = *v1;
  v4 = (*(v2 + 8 * (v3 ^ 0xA333)))(v1);
  return (*(v2 + 8 * v3))(v4);
}

uint64_t sub_1001DAEB4()
{
  v3 = STACK[0x3DC];
  *(v2 - 160) = (((LODWORD(STACK[0x3DC]) - 19399) | 0x9200) - 212066294) ^ LODWORD(STACK[0x3D4]);
  *(v2 - 152) = LODWORD(STACK[0x3D8]) ^ 0xE0DEC59C;
  *(v2 - 148) = LODWORD(STACK[0x3CC]) ^ 0x3737BF68;
  *(v2 - 156) = LODWORD(STACK[0x3D0]) ^ 0x600F8521;
  return (*(v1 + 8 * v3))(v0 ^ 0x6CE1C9A0u);
}

uint64_t sub_1001DAF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15)
{
  v16 = ((a15 & STACK[0x2E8] ^ 0x2EFF257D) - 429991412) ^ ((a15 & STACK[0x2E8] ^ 0x82FE4230) + 1247788359) ^ ((a15 & STACK[0x2E8] ^ 0xAC01674D) + 1688246332);
  *(&STACK[0x2A4] + v16 + 928907401) = -33;
  v17.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v17.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(v15 + 8 * ((14937 * (v16 + 928907345 < 0xFFFFFFC8)) ^ a14)))(v17);
}

uint64_t sub_1001DAFE8(char a1, __n128 a2)
{
  *(v5 - 200) = *(*(v5 - 192) + 8 * v4);
  v6.n128_u64[0] = (v3 + 13) & 0xF;
  v6.n128_u64[1] = (v3 + 12) & 0xF;
  v7.n128_u64[0] = (v3 + 11) & 0xF;
  v7.n128_u64[1] = (v3 + 10) & 0xF;
  v8.n128_u64[0] = (v3 + 9) & 0xF;
  v8.n128_u64[1] = a1 & 0xF ^ 7;
  v11.val[0].i64[0] = (v3 + 7) & 0xF;
  v11.val[0].i64[1] = (v3 + 6) & 0xF;
  v11.val[1].i64[0] = (v3 + 5) & 0xF;
  v11.val[1].i64[1] = (v3 + 4) & 0xF;
  v11.val[2].i64[0] = (v3 + 3) & 0xF;
  v11.val[2].i64[1] = (v3 + 2) & 0xF;
  v11.val[3].i64[0] = (v3 + 1) & 0xF;
  v11.val[3].i64[1] = v3 & 0xF;
  v9.n128_u64[0] = 0x3B3B3B3B3B3B3B3BLL;
  v9.n128_u64[1] = 0x3B3B3B3B3B3B3B3BLL;
  return (*(v5 - 200))((v4 - 730), 0, v2 - 15, (v3 + 14) & 0xF, *(v5 - 184) - 15, (v4 - 730) ^ 0x616BLL, 208, a2, v6, v7, v8, xmmword_100BC76B0, vqtbl4q_s8(v11, xmmword_100BC76B0), v9);
}

uint64_t sub_1001DB13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unint64_t a33, unint64_t a34, unint64_t a35, unint64_t a36, unint64_t a37, unint64_t a38, uint64_t a39, uint64_t a40, unint64_t a41, unint64_t a42)
{
  STACK[0x248] = v49;
  STACK[0x348] = v45;
  STACK[0x288] = v46;
  STACK[0x3B0] = a36;
  STACK[0x2E0] = a41;
  STACK[0x358] = a42;
  STACK[0x2C0] = a35;
  STACK[0x2C8] = a38;
  STACK[0x3E8] = a37;
  STACK[0x318] = a29;
  STACK[0x2D0] = v48;
  STACK[0x328] = v42;
  STACK[0x268] = v43;
  STACK[0x258] = a33;
  STACK[0x320] = a34;
  return (*(v47 + 8 * v44))();
}

uint64_t sub_1001DB1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11, int8x16_t a12, int64x2_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v28 = veorq_s8(veorq_s8(veorq_s8(a8, vaddq_s64(veorq_s8(a8, a12), a13)), veorq_s8(vaddq_s64(veorq_s8(a8, v19), v20), vaddq_s64(veorq_s8(a8, v21), v22))), veorq_s8(vaddq_s64(veorq_s8(a8, v23), v24), v25));
  v29 = veorq_s8(veorq_s8(veorq_s8(a9, vaddq_s64(veorq_s8(a9, a12), a13)), veorq_s8(vaddq_s64(veorq_s8(a9, v19), v20), vaddq_s64(veorq_s8(a9, v21), v22))), veorq_s8(vaddq_s64(veorq_s8(a9, v23), v24), v25));
  v30 = veorq_s8(veorq_s8(veorq_s8(a11, vaddq_s64(veorq_s8(a11, a12), a13)), veorq_s8(vaddq_s64(veorq_s8(a11, v19), v20), vaddq_s64(veorq_s8(a11, v21), v22))), veorq_s8(vaddq_s64(veorq_s8(a11, v23), v24), v25));
  v31 = veorq_s8(veorq_s8(veorq_s8(a10, vaddq_s64(veorq_s8(a10, a12), a13)), veorq_s8(vaddq_s64(veorq_s8(a10, v19), v20), vaddq_s64(veorq_s8(a10, v21), v22))), veorq_s8(vaddq_s64(veorq_s8(a10, v23), v24), v25));
  v32 = vaddq_s64(a10, v26);
  v33 = vaddq_s64(a11, v26);
  v37.val[1].i64[0] = v31.i64[0] * v32.i64[0];
  v37.val[1].i64[1] = v31.i64[1] * v32.i64[1];
  v34 = vaddq_s64(a9, v26);
  v37.val[0].i64[0] = v30.i64[0] * v33.i64[0];
  v37.val[0].i64[1] = v30.i64[1] * v33.i64[1];
  v35 = vaddq_s64(a8, v26);
  v37.val[2].i64[0] = v29.i64[0] * v34.i64[0];
  v37.val[2].i64[1] = v29.i64[1] * v34.i64[1];
  v37.val[3].i64[0] = v28.i64[0] * v35.i64[0];
  v37.val[3].i64[1] = v28.i64[1] * v35.i64[1];
  *(v16 - a5 + a15 - 1) = vrev64_s8(*&vqtbl4q_s8(v37, v27));
  return (*(v18 + 8 * ((15 * (a16 == 0)) ^ v17)))(a1, a2, a3, a4, a5 + 8);
}

void sub_1001DB404(uint64_t a1)
{
  v1 = *(a1 + 12) + 139493411 * ((2 * (a1 & 0x320F636C) - a1 + 1307614355) ^ 0x41DD7DD6);
  v2 = *(a1 + 16);
  v3 = *(v2 + 16);
  *(v2 + 16) = v3 + 2040;
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1001DB640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = (HIDWORD(a14) ^ 0x692FAA01) & (2 * ((v21 - 1924210484) & HIDWORD(a14))) ^ (v21 - 1924210484) & HIDWORD(a14);
  v24 = ((2 * (HIDWORD(a14) ^ 0x7B28AB03)) ^ 0xECCE534C) & (HIDWORD(a14) ^ 0x7B28AB03) ^ (2 * (HIDWORD(a14) ^ 0x7B28AB03)) & 0xF66729A6;
  v25 = v24 ^ 0x122128A2;
  v26 = (v24 ^ 0x64472106) & (4 * v23) ^ v23;
  v27 = ((4 * v25) ^ 0xD99CA698) & v25 ^ (4 * v25) & 0xF66729A0;
  v28 = (v27 ^ 0xD0042086) & (16 * v26) ^ v26;
  v29 = ((16 * (v27 ^ 0x26630926)) ^ 0x66729A60) & (v27 ^ 0x26630926) ^ (16 * (v27 ^ 0x26630926)) & 0xF66729A0;
  v30 = v28 ^ 0xF66729A6 ^ (v29 ^ 0x66620886) & (v28 << 8);
  v31 = HIDWORD(a14) ^ (2 * ((v30 << 16) & 0x76670000 ^ v30 ^ ((v30 << 16) ^ 0x29A60000) & (((v29 ^ 0x90052186) << 8) & 0x76670000 ^ 0x10460000 ^ (((v29 ^ 0x90052186) << 8) ^ 0x67290000) & (v29 ^ 0x90052186))));
  v33 = (v31 & 0xF) != 9 || v31 == ((2 * v21) ^ 0x160B0) + 567127783;
  return (*(v22 + 8 * ((1022 * v33) ^ v21)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_1001DB868(int a1)
{
  v2 = (a1 - 767246887) & 0x2DBBBFEF;
  v3 = LODWORD(STACK[0x260]) + 314541839;
  v4 = ((v3 & 0xCCB963DF) << ((a1 - 39) & 0xEF ^ 0xAF)) & (v3 ^ 0x8E354B9E) ^ v3 & 0xCCB963DF;
  v5 = ((2 * ((a1 - 1909092279) ^ v3)) ^ 0x851957E2) & ((a1 - 1909092279) ^ v3) ^ (2 * ((a1 - 1909092279) ^ v3)) & 0x428CABF0;
  v6 = v5 ^ 0x4284A811;
  v7 = (v5 ^ 0x823E0) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0xA32AFC4) & v6 ^ (4 * v6) & 0x428CABF0;
  v9 = (v8 ^ 0x200ABC0) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x408C0031)) ^ 0x28CABF10) & (v8 ^ 0x408C0031) ^ (16 * (v8 ^ 0x408C0031)) & 0x428CABD0;
  v11 = v9 ^ 0x428CABF1 ^ (v10 ^ 0x88AB00) & (v9 << 8);
  v13 = ((v3 ^ (2 * v11)) & 0xF) != 0xD || (v3 ^ (2 * ((v11 << 16) & 0x428C0000 ^ v11 ^ ((v11 << 16) ^ 0x2BF10000) & (((v10 ^ 0x420400E1) << 8) & 0x428C0000 ^ 0x42040000 ^ (((v10 ^ 0x420400E1) << 8) ^ 0xCAB0000) & (v10 ^ 0x420400E1))))) == 163 * (v2 ^ 0xB547) + 1285529570;
  v14 = *(v1 + 8 * ((v13 * ((v2 - 18754) ^ 0x6C72)) ^ v2));
  LODWORD(STACK[0x384]) = -42899;
  return v14();
}

uint64_t sub_1001DBA88(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62, int a63)
{
  LODWORD(STACK[0x278]) = v71;
  LODWORD(STACK[0x3A8]) = a4;
  LODWORD(STACK[0x3AC]) = v70;
  LODWORD(STACK[0x2F0]) = a7;
  LODWORD(STACK[0x31C]) = a68;
  LOWORD(STACK[0x236]) = a67;
  LOWORD(STACK[0x292]) = v74;
  LODWORD(STACK[0x27C]) = a61;
  LOWORD(STACK[0x38E]) = a64;
  return (*(v73 + 8 * (v72 + 21679)))(a1, a70);
}

uint64_t sub_1001DBB48@<X0>(int a1@<W3>, int a2@<W8>)
{
  LODWORD(STACK[0x320]) = a2;
  LODWORD(STACK[0x2B4]) = a1;
  return (*(v3 + 8 * ((64332 * (a1 == (v2 ^ 0xE9D56832))) ^ (v2 - 13739))))();
}

uint64_t sub_1001DBBA8@<X0>(int a1@<W8>)
{
  v5 = LODWORD(STACK[0x3BC]) + v1;
  v6 = v5 + (a1 ^ 0x92874659) > v3 - 1836617873;
  if (v3 > 0x6D789090 != v5 > 0x6D789090)
  {
    v6 = v5 > 0x6D789090;
  }

  if (v6)
  {
    v7 = 371891407;
  }

  else
  {
    v7 = v2;
  }

  return (*(v4 + 8 * (((v7 == -371865839) * (((a1 - 9832) | 0x1401) + 39022)) ^ a1)))();
}

uint64_t sub_1001DBECC@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W8>)
{
  v11 = ((2 * (a7 & 1) + (a7 & v9)) | (a3 - (a7 & a1)) & a1) + ((a4 - (a7 & a2)) & a2);
  v13 = *(v8 + 8) == v8 || ((a5 - v11) | v11) < 0;
  return (*(v10 + 8 * ((v13 * a6) ^ v7)))();
}

void sub_1001DBFFC(uint64_t a1)
{
  v1 = *(a1 + 32) ^ (297845113 * (((a1 | 0xE0F3F6F2) - (a1 | 0x1F0C090D) + 520882445) ^ 0x97C0EA6C));
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1001DC0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43)
{
  v44 = 17 * (a1 ^ 0x9ECB);
  v46 = ((((a11 + 563081447) ^ 0x778DD91) - 924872028) ^ (a11 + 563081447) ^ (((a11 + 563081447) ^ 0x7FF6EFFF) - 1336827698) ^ (((a11 + 563081447) ^ 0x71DBB0C) - 927309545 + v44) ^ (((a11 + 563081447) ^ 0x4FCB7F8A ^ a43) - 2140375394)) != 0x3058B0CD && ((((((a11 - 25) ^ 0x91) - 92) ^ (a11 - 25) ^ (-26 - a11) ^ (((a11 - 25) ^ 0xC) + 23 + v44)) ^ (((a11 - 25) ^ 0x8A ^ a43) - 98)) & 0xF) == (v44 ^ 0xD50D) - 17944;
  return (*(v43 + 8 * ((4 * v46) | (16 * v46) | v44)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_1001DC228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *v17 = 0;
  *(*(v15 + 8 * (v16 + 8650)))() = 0;
  v18 = (*(v15 + 8 * (v16 + 8673)))(a14, 493) == (v16 ^ 0xA96F) * v14 - 6555;
  return (*(v15 + 8 * ((27465 * v18) ^ v16)))();
}

uint64_t sub_1001DC294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, unsigned int a23, uint64_t a24)
{
  v30 = 139493411 * (((v24 | 0x8249BEE3) - (v24 & 0x8249BEE0)) ^ 0x8E645FA6);
  *(v29 - 120) = a24 + (v26 - 9366) * ((((v26 + 1596670198) ^ 0x956C58BD) + v27) % a23);
  *(v29 - 144) = v28;
  *(v29 - 132) = v26 - v30 + 29384;
  *(v29 - 128) = v30 + 404414908;
  v31 = (*(v25 + 8 * (v26 + 42565)))(v29 - 144);
  return (*(v25 + 8 * ((26572 * (*(v29 - 136) == -371865839)) ^ v26)))(v31);
}

uint64_t sub_1001DC3C4@<X0>(void *a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  a1[3] = v25;
  a1[4] = *(v24 + 80);
  *(v24 + 80) = a1;
  *(a1[4] + 24) = a1;
  a1[1] = a24;
  return (*(v26 + 8 * (((((a2 + 12369194) & 0xFF431F56) + ((a2 - 1694096646) & 0x64F9E7DF) - 23645) * (a14 > 0xFFFFFFFFFFFFFFD6)) | a2)))();
}

uint64_t sub_1001DC4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43)
{
  v44 = 3971 * (a43 ^ 0x712F);
  v46 = (((((a12 ^ 0xD3) + 67) ^ a12 ^ ((a12 ^ 0x2C) - 66) ^ (110 - a12)) ^ (a12 ^ v44) ^ 0xC9) & 0xF) != 0xE || (((a12 ^ 0x296455D3) - 217021117) ^ a12 ^ ((a12 ^ 0x25BDE22C) - 3591490) ^ ((a12 ^ 0xFFDFFAFF) + 631974511) ^ ((a12 ^ v44 ^ 0xD68DABC9) + 217690880)) == ((v44 - 22661) ^ 0x258B5E4C);
  return (*(v43 + 8 * ((11 * v46) ^ v44)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_1001DC5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, unsigned int a24, unsigned int a25, uint64_t a26, int a27, uint64_t a28, char a29, int a30, uint64_t a31, unsigned int a32)
{
  v37 = v32;
  v38 = (*(v36 + 8 * (v34 + 22664)))(a24 ^ v35);
  v39 = *(v37 - 0x217E172EFA1E81CLL);
  v40 = 1012831759 * (((&a25 | 0x5EF9B86F) - (&a25 & 0x5EF9B868)) ^ 0x4E6AAEE5);
  a32 = v40 ^ v33 ^ ((v33 ^ 0xEB154BC) - 1475725558) ^ ((v33 ^ 0x7E0134D4) - 658876574) ^ ((v33 ^ 0xFEFFFEAF) + 1480891675) ^ ((v33 ^ 0xD70B028D) + 1907337064 + (v34 ^ 0xCBC1)) ^ 0x5E9993B8;
  a26 = 0;
  a27 = v34 - v40 - 16159;
  a28 = v39;
  a31 = v38;
  a29 = 69 - 15 * (((&a25 | 0x6F) - (&a25 & 0x68)) ^ 0xE5);
  a25 = (((a24 ^ 0xE0CBBB10) + 523519216) ^ ((a24 ^ 0xBD9EE3F6) + 1113660426) ^ ((a24 ^ 0xB4809FF7) + 1266638857)) - v40 + 99480725;
  v41 = (*(v36 + 8 * (v34 + 22701)))(&a25);
  return (*(v36 + 8 * ((54734 * (a30 == v35)) ^ v34)))(v41);
}

uint64_t sub_1001DC9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v25 = a6 - 1;
  v26 = (v17 + v25);
  v27 = __ROR8__((v17 + v25) & 0xFFFFFFFFFFFFFFF8, 8);
  v28 = (a4 ^ a5) + a7 + ((v27 + v22) | v19) - ((v27 + v22) | v18);
  v29 = v28 ^ v8;
  v30 = v28 ^ v9;
  v31 = __ROR8__(v29, 8);
  v32 = ((v14 | (2 * (v31 + v30))) - (v31 + v30) + a3) ^ a2;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v12;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = ((v10 | (2 * (v36 + v35))) - (v36 + v35) + v11) ^ a8;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v21;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ v20;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ v23;
  *(a1 + v25) = (((__ROR8__(v43, 8) + (v43 ^ __ROR8__(v42, 61))) ^ v13) >> (8 * (v26 & 7u))) ^ *v26;
  return (*(v24 + 8 * (((((v25 - a4) | (a4 - v25)) >> 63) * v16) ^ v15)))();
}

uint64_t sub_1001DCB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t (*a15)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v19 = (((v17 ^ 0x34EABD6D) - 887799149) ^ ((v17 ^ 0x9E08AFD6) + 1643597866) ^ ((v17 ^ 0xB79E94C7) + 1214343993)) + 1441595938 + (((v15[18] ^ 0xA39A2A5A) + 1550177702) ^ ((v15[18] ^ 0xF67017A) - 258408826) ^ ((v15[18] ^ 0xB181AD5C) + 1316901540));
  v20 = (((v16 ^ 0x75889B29) - 1971886889) ^ ((v16 ^ 0xD16ECDA) - 219606234) ^ ((v16 ^ 0x65E2F18F) - 1709371791)) + (((v15[19] ^ 0x8653143D) + 2041375683) ^ ((v15[19] ^ 0x420FC55D) - 1108329821) ^ ((v15[19] ^ 0xD920571C) + 652191972)) + 2021601119;
  v15[18] = v19 ^ ((v19 ^ 0xD3982C0D) + 915678937) ^ ((v19 ^ 0x1E915693) - 73573305) ^ ((v19 ^ 0x2C076A4B) - 922001249) ^ ((v19 ^ 0xFBFDE5FF) + 519171883) ^ 0x78F7356;
  v15[19] = v20 ^ ((v20 ^ 0xE2626BCE) + 538687063) ^ ((v20 ^ 0x6C2D0A33) - 1370171476) ^ ((v20 ^ 0xCC3E9465) + 239553022) ^ ((v20 ^ 0x7FF7D7FF) - 1114764696) ^ 0x20FAA41B;
  v21 = (((a8 ^ 0xE7C2F426) + 406653914) ^ ((a8 ^ 0xC6D1A589) + 959339127) ^ ((a8 ^ 0x3C6FD7D3) - 1013962707)) - 1861072925 + (((v15[20] ^ 0xCA60A6B7) + 899635529) ^ ((v15[20] ^ 0xE813438) - 243348536) ^ ((v15[20] ^ 0xD99D14F3) + 644016909));
  v22 = (v21 ^ 0x1E6A041) & (2 * (v21 & 0xA9E6C515)) ^ v21 & 0xA9E6C515;
  v23 = ((2 * (v21 ^ 0x1166A041)) ^ 0x7100CAA8) & (v21 ^ 0x1166A041) ^ (2 * (v21 ^ 0x1166A041)) & 0xB8806554;
  v24 = v23 ^ 0x88802554;
  v25 = (v23 ^ 0x20000000) & (4 * v22) ^ v22;
  v26 = ((4 * v24) ^ 0xE2019550) & v24 ^ (4 * v24) & 0xB8806550;
  v27 = (v26 ^ 0xA0000550) & (16 * v25) ^ v25;
  v28 = ((16 * (v26 ^ 0x18806004)) ^ 0x88065540) & (v26 ^ 0x18806004) ^ (16 * (v26 ^ 0x18806004)) & 0xB8806540;
  v29 = v27 ^ 0xB8806554 ^ (v28 ^ 0x88004500) & (v27 << 8);
  v30 = (v29 << 16) & 0x38800000 ^ v29 ^ ((v29 << 16) ^ 0x65540000) & (((v28 ^ 0x30802014) << 8) & 0x38800000 ^ 0x38800000 ^ (((v28 ^ 0x30802014) << 8) ^ 0x650000) & (v28 ^ 0x30802014));
  v31 = (((v18 ^ 0xCF19C9F) - 217160863) ^ ((v18 ^ 0x27B3AD00) - 666086656) ^ ((v18 ^ 0x363EB7E3) - 910079971)) + 1037648963 + (((v15[21] ^ 0x27E273F9) - 669152249) ^ ((v15[21] ^ 0xF3542B2F) + 212587729) ^ ((v15[21] ^ 0xC9CADEAA) + 909451606));
  v32 = (v31 ^ 0xFC5F88B4) & (2 * (v31 & 0xFD1FC8B5)) ^ v31 & 0xFD1FC8B5;
  v33 = ((2 * (v31 ^ 0xDE488894)) ^ 0x46AE8042) & (v31 ^ 0xDE488894) ^ (2 * (v31 ^ 0xDE488894)) & 0x23574020;
  v34 = v33 ^ 0x21514021;
  v35 = (v33 ^ 0x60000) & (4 * v32) ^ v32;
  v36 = ((4 * v34) ^ 0x8D5D0084) & v34 ^ (4 * v34) & 0x23574020;
  v37 = v35 ^ 0x23574021 ^ (v36 ^ 0x1550000) & (16 * v35);
  v38 = (16 * (v36 ^ 0x22024021)) & 0x23574000 ^ 0x2034021 ^ ((16 * (v36 ^ 0x22024021)) ^ 0x35740210) & (v36 ^ 0x22024021);
  v39 = (v37 << 8) & 0x23574000 ^ v37 ^ ((v37 << 8) ^ 0x57402100) & v38;
  v40 = (v39 << 16) ^ 0x40210000u;
  v41 = (v39 << 16) & 0x23570000;
  v15[20] = v21 ^ (2 * v30) ^ 0x859A89C1;
  v15[21] = v31 ^ (2 * (v41 ^ v39 ^ v40 & ((v38 << 8) & 0x23570000 ^ 0x20170000 ^ ((v38 << 8) ^ 0x57400000) & v38))) ^ 0xA04FCE8B;
  return a15(v41, v40, a3, a4, a5, a6, a7, a8);
}

void sub_1001DD1A4(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = (*(a1 + 40) ^ 0xFBDFFFD0DDB7FDDBLL) + 0x420002F733450A8 + ((2 * *(a1 + 40)) & 0xF7BFFFA1BB6FFBB6);
  v4 = v3 < 0x50EC4E83;
  v5 = v3 > v2 + 1357663875;
  if (v2 > 0xFFFFFFFFAF13B17CLL == v4)
  {
    v4 = v5;
  }

  v1 = *a1 ^ (193924789 * (((a1 | 0x421EF0FD) - a1 + (a1 & 0xBDE10F02)) ^ 0xF4A5C29B));
  __asm { BRAA            X12, X17 }
}

uint64_t sub_1001DD3B8(uint64_t a1, uint64_t a2)
{
  v4 = STACK[0xF10];
  LOWORD(STACK[0x994E]) = v2;
  return (*(STACK[0xF18] + 8 * (v4 - 27350)))(a1, a2, v3);
}

uint64_t sub_1001DD49C(uint64_t a1, int a2)
{
  v9 = v2 < v3;
  v10 = (v6 + v5);
  v11 = 1864610357 * ((*(*(*(v7 + 8 * (a2 - 25199)) - 1680276466) + (*(*(v7 + 8 * (a2 - 24014)) - 231415367) & 0x72D7ACF8)) ^ v10) & 0x7FFFFFFF);
  *v10 ^= *(*(v7 + 8 * (a2 - 25530)) + (((1864610357 * (v11 ^ HIWORD(v11))) >> ((a2 - 74) ^ 0xB7)) & 0xFF0 | v5 & 0xF) - 1579369363) ^ (53 * (v11 ^ BYTE2(v11)));
  if (v9 == v5 + 1 > 0x59ECAF40)
  {
    v9 = v5 - 1508683584 < v2;
  }

  return (*(v8 + 8 * ((!v9 * v4) ^ a2)))();
}

uint64_t sub_1001DD59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = v5 - 1;
  v16 = (a1 + (v3 + v15));
  v17 = *(*v12 + (*v11 & v6));
  v18 = *v16;
  v19 = (((((v16 ^ v17) & 0x7FFFFFFF) * v7) >> (v2 + 80)) ^ (((v16 ^ v17) & 0x7FFFFFFF) * v7)) * v7;
  v20 = (v10 + (v4 + v15));
  v21 = ((((v20 ^ v17) & 0x7FFFFFFF) * v7) ^ ((((v20 ^ v17) & 0x7FFFFFFF) * v7) >> 16)) * v7;
  *v20 = *(v14 + (v19 >> 24)) ^ v18 ^ *(a2 + (v19 >> 24)) ^ *((v19 >> 24) + v13 + 5) ^ *(v14 + (v21 >> 24)) ^ *(a2 + (v21 >> 24)) ^ *((v21 >> 24) + v13 + 5) ^ v19 ^ v21 ^ (BYTE3(v19) * v9) ^ (BYTE3(v21) * v9);
  return (*(v8 + 8 * ((496 * (v15 != 0)) ^ v2)))();
}

uint64_t sub_1001DD800@<X0>(uint64_t a1@<X8>)
{
  v7 = 146 * (v5 ^ 0x1AFE);
  v8 = 4 * v3 - 4204346308;
  v9 = (((*(*(a1 + 8) + v8) ^ 0xE7ED2058) + ((13 * (v7 ^ 0x1C94)) ^ 0x18128D3A)) ^ ((*(*(a1 + 8) + v8) ^ 0xAD6E58A6) + 1385277274) ^ ((*(*(a1 + 8) + v8) ^ (v7 + 2086435885)) - 2086442747)) + v6;
  LODWORD(v8) = (((*(*(v1 + 8) + v8) ^ 0x826EB3FF) + 2106674177) ^ ((*(*(v1 + 8) + v8) ^ 0x3650E421) - 911270945) ^ ((*(*(v1 + 8) + v8) ^ 0x82E1B9DB) + 2099136037)) + v6;
  v10 = v9 < v4;
  v11 = v9 > v8;
  v12 = v10 ^ (v8 < v4);
  v13 = v11;
  if (v12)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  return (*(v2 + 8 * ((31 * v14) ^ v7)))();
}

uint64_t sub_1001DD92C@<X0>(int a1@<W8>)
{
  STACK[0x6B0] = *(v2 + 8 * v1);
  STACK[0x720] = 0;
  return (*(v2 + 8 * (a1 + 9946)))();
}

uint64_t sub_1001DD974(int8x16_t *a1, uint64_t a2, uint64_t a3, double a4, __n128 a5, __n128 a6, __n128 a7, int8x16_t a8, double a9, int8x16_t a10, uint64_t a11, int a12)
{
  v19 = v16 & 0xF;
  v20 = v15;
  v21.i64[0] = vqtbl4q_s8(*(&a5 - 1), a8).u64[0];
  *&v21.i64[1] = a9;
  v22 = vrev64q_s8(vmulq_s8(v21, a10));
  *a1 = veorq_s8(veorq_s8(veorq_s8(*(v14 + v19 - 15), *a1), veorq_s8(*(v19 + v12 - 12), *(v19 + v13 - 14))), vextq_s8(v22, v22, 8uLL));
  return (*(v18 + 8 * (((a3 == 0) * ((v17 + 1225) ^ a12)) ^ v17)))(a1 - 1, a2, a3 - 16);
}

uint64_t sub_1001DDA14(int a1, int a2, int a3, __int16 a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, __int16 a25, uint64_t a26)
{
  v41 = v40 & v26 ^ v27;
  a23 = (((2 * (v29 & v31) - v29 + a1) ^ a2) * a3) ^ v40 ^ (2 * ((v40 ^ v28) & (2 * ((v40 ^ v28) & (2 * ((v40 ^ v28) & (2 * ((v40 ^ v28) & (2 * ((v40 ^ v28) & (2 * ((v40 ^ v28) & (2 * ((v40 ^ v28) & (2 * ((v40 ^ v28) & (2 * ((v40 ^ v28) & (2 * (((((v40 ^ v28) & (2 * ((v40 ^ v28) & (2 * ((v40 ^ v28) & (2 * v41) ^ v41)) ^ v41))) ^ v41) << v34) & (v40 ^ v28) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ a4;
  a25 = v37 ^ (((2 * (v29 & v31) - v29 + a1) ^ a2) * a3);
  a26 = v30;
  a22 = v39 - ((2 * (v29 & v31) - v29 + a1) ^ a2) * a3 + a5;
  (*(a18 + 8 * v33))(&a22);
  *(a17 + (v32 + v38)) = a24;
  v43 = v35 < 0x95137FC0 || (v40 - 24629) - 1793884224 < v35;
  return (*(a18 + 8 * ((874 * v43) ^ v36)))(3615619832, 1079691347, 1603510583, 55128, 3881055133);
}

void sub_1001DDC58(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = (*(a1 + 32) ^ 0x7CFCFFFACDDFBF9DLL) - 0x7CFCFFFA5DC13079 + ((2 * *(a1 + 32)) & 0xF9F9FFF59BBF7F3ALL);
  v4 = v3 < 0x701E8F24;
  v5 = v3 > v2 + 1881050916;
  if (v2 > 0xFFFFFFFF8FE170DBLL != v4)
  {
    v5 = v4;
  }

  v1 = *a1 + 1012831759 * ((2 * (a1 & 0x18972B49) - a1 - 412560202) ^ 0xF7FBC23C);
  __asm { BRAA            X14, X17 }
}

uint64_t sub_1001DDE18()
{
  v2.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v2.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(v1 + 8 * (v0 - 1728)))(v2);
}

uint64_t sub_1001DDF04@<X0>(uint64_t a1@<X2>, uint64_t a2@<X6>, uint64_t a3@<X7>, int a4@<W8>)
{
  v5 = STACK[0x200];
  v6 = *(STACK[0x210] + 24);
  v7 = __ROR8__((v6 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v8 = ((v7 - 0x296E95066F186A7FLL) | ((a4 + 3262) + 0x7F8CF47A0DDC96C4)) - ((v7 - 0x296E95066F186A7FLL) | 0x80730B85F222D57FLL) - 0x7F8CF47A0DDD2A81;
  v9 = v8 ^ 0x78AEED99F1FA1EF2;
  v8 ^= 0xCC25BA5576C6B2FCLL;
  v10 = __ROR8__(v9, 8);
  v11 = (((2 * (v10 + v8)) & 0x4757308570142184) - (v10 + v8) - 0x23AB9842B80A10C3) ^ 0xC8EE60F7686D80D8;
  v12 = v11 ^ __ROR8__(v8, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0x2C378843F9A46E98;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xBD7D2DE9C10AA16ALL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ a1;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = __ROR8__((((2 * (v19 + v18)) | 0x6FA00F307AD285CELL) - (v19 + v18) + 0x482FF867C296BD19) ^ 0x1D4DDD22DF8D969BLL, 8);
  v21 = (((2 * (v19 + v18)) | 0x6FA00F307AD285CELL) - (v19 + v18) + 0x482FF867C296BD19) ^ 0x1D4DDD22DF8D969BLL ^ __ROR8__(v18, 61);
  v22 = (((2 * (v20 + v21)) | 0x43EA8C014D72D45CLL) - (v20 + v21) + 0x5E0AB9FF594695D2) ^ 0x2E4767435862069DLL;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v6[10] = (((v24 + v23 - ((2 * (v24 + v23)) & 0x2D8EF7625F92FAD0) + 0x16C77BB12FC97D68) ^ 0x8DDB0F964AD77270) >> (8 * ((v6 + 10) & 7u))) ^ HIBYTE(STACK[0x200]) ^ 0x36;
  v25 = __ROR8__((v6 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = -2 - (((a2 - v25) | 0x812ECE5E5373C3DBLL) + ((v25 - 0x296E95066F186A7FLL) | 0x7ED131A1AC8C3C24));
  v27 = v26 ^ 0x860CD7BDAF54F7A9;
  v26 ^= 0x3287807128685BA7uLL;
  v28 = (__ROR8__(v27, 8) + v26) ^ v4;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x2C378843F9A46E98;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = __ROR8__((((2 * (v32 + v31)) | 0x32AE8F99AB71EA50) - (v32 + v31) - 0x195747CCD5B8F528) ^ 0xA42A6A2514B25442, 8);
  v34 = (((2 * (v32 + v31)) | 0x32AE8F99AB71EA50) - (v32 + v31) - 0x195747CCD5B8F528) ^ 0xA42A6A2514B25442 ^ __ROR8__(v31, 61);
  v35 = (((v33 + v34) | 0x7320A01F0299C0C1) - ((v33 + v34) | 0x8CDF5FE0FD663F3ELL) - 0x7320A01F0299C0C2) ^ 0xF1902008BDDA00A8;
  v36 = __ROR8__(v35, 8);
  v37 = v35 ^ __ROR8__(v34, 61);
  v38 = (v36 + v37 - ((2 * (v36 + v37)) & 0x1E2ADB414A9307EELL) - 0x70EA925F5AB67C09) ^ 0x2588B71A47AD578BLL;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (((2 * (v40 + v39)) & 0x751C15CDE44619C2) - (v40 + v39) + 0x4571F5190DDCF31ELL) ^ 0xCAC3D45AF3079FADLL;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  v6[11] = (((v43 + v42 - ((2 * (v43 + v42)) & 0x52D1D86046E744A6) + 0x2968EC302373A253) ^ 0xB2749817466DAD4BLL) >> (8 * ((v6 + 11) & 7u))) ^ BYTE6(v5) ^ 0x7D;
  v44 = __ROR8__((v6 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v45 = (a2 - v44) & 0x794A1A89743498B1 | (v44 - 0x296E95066F186A7FLL) & 0x84B5E5768BCB674ELL;
  v46 = __ROR8__(v45 ^ 0x7C68036A8813ACC3, 8);
  v45 ^= 0xC8E354A60F2F00CDLL;
  v47 = (v46 + v45) ^ v4;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x2C378843F9A46E98;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (((2 * (v51 + v50)) & 0xA249D6CC0BCCA700) - (v51 + v50) - 0x5124EB6605E65381) ^ 0x13A639703B130D15;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ a1;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0xAA9DDABAE2E4D47CLL;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0x8FB22143FEDB6CB3;
  v6[12] = (((__ROR8__(v58, 8) + (v58 ^ __ROR8__(v57, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v6 + 12) & 7u))) ^ BYTE5(v5) ^ 0x22;
  v59 = __ROR8__((v6 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v60 = ((a2 - v59) & 0x696F4673D36DE29DLL) + v59 - 0x296E95066F186A7FLL - ((v59 - 0x296E95066F186A7FLL) & 0x6D6F4673D36DE29DLL);
  v61 = v60 ^ 0x6A4D5F902F4AD6EFLL;
  v60 ^= 0xDEC6085CA8767AE1;
  v62 = __ROR8__(v61, 8);
  v63 = (v62 + v60 - ((2 * (v62 + v60)) & 0x1B3949B08886F780) + 0xD9CA4D844437BC0) ^ 0x1926A3926BDB1425;
  v64 = v63 ^ __ROR8__(v60, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ 0x2C378843F9A46E98;
  v66 = __ROR8__(v65, 8);
  v67 = v65 ^ __ROR8__(v64, 61);
  v68 = (((v66 + v67) | 0xD4F2363B6EF523) - ((v66 + v67) | 0xFF2B0DC9C4910ADCLL) - 0xD4F2363B6EF524) ^ 0xBDA9DFDFFA645449;
  v69 = __ROR8__(v68, 8);
  v70 = v68 ^ __ROR8__(v67, 61);
  v71 = (((v69 + v70) & 0x91B969E0C19E5375 ^ 0x9008600000825375) + ((v69 + v70) & 0x6E46961F3E61AC8ALL ^ 0x2A44140330410C81) - 1) ^ 0x38FCF4148F809F9CLL;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0xAA9DDABAE2E4D47CLL;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = __ROR8__(v73, 8);
  v76 = (v75 + v74 - ((2 * (v75 + v74)) & 0xA35BB6A5474A5D2CLL) - 0x2E5224AD5C5AD16ALL) ^ 0x5E1FFA115D7E4225;
  v77 = v76 ^ __ROR8__(v74, 61);
  v78 = __ROR8__(v76, 8);
  v6[13] = (((((2 * ((v78 + v77) ^ 0xD3B9B851F2097674)) & 0x6AEA922499CF30AALL) - ((v78 + v77) ^ 0xD3B9B851F2097674) + 0x4A8AB6EDB31867AALL) ^ 0x22F7A9B240F1EC6) >> (8 * ((v6 + 13) & 7u))) ^ BYTE4(v5) ^ 0x27;
  v79 = __ROR8__((v6 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v80 = -2 - (((a2 - v79) | 0xE66D92511BC5A5BLL) + ((v79 + 0x6916AF990E79581) | 0xF19926DAEE43A5A4));
  v81 = v80 ^ 0x944C0C6ED9B6E29;
  v80 ^= 0xBDCF970A6AA7C227;
  v82 = __ROR8__(v81, 8);
  v83 = __ROR8__((((2 * (v82 + v80)) | 0xB84EA8E40647B16) - (v82 + v80) - 0x5C2754720323D8BLL) ^ 0x1178720D0FAA526ELL, 8);
  v84 = (((2 * (v82 + v80)) | 0xB84EA8E40647B16) - (v82 + v80) - 0x5C2754720323D8BLL) ^ 0x1178720D0FAA526ELL ^ __ROR8__(v80, 61);
  v85 = (v83 + v84) ^ 0x2C378843F9A46E98;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8);
  v88 = (((2 * (v87 + v86)) | 0x44A18314D53B083ELL) - (v87 + v86) - 0x2250C18A6A9D841FLL) ^ 0x9F2DEC63AB972575;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = __ROR8__(v88, 8);
  v91 = (v90 + v89 - ((2 * (v90 + v89)) & 0x6FB26939647901DALL) + 0x37D9349CB23C80EDLL) ^ 0xB569B48B0D7F4084;
  v92 = v91 ^ __ROR8__(v89, 61);
  v93 = __ROR8__(v91, 8);
  v94 = (((2 * (v93 + v92)) | 0x106BFCB5893A8DF0) - (v93 + v92) + 0x77CA01A53B62B908) ^ 0x22A824E026799284;
  v95 = v94 ^ __ROR8__(v92, 61);
  v96 = __ROR8__(v94, 8);
  v97 = (((2 * (v96 + v95)) | 0x80494BCDB9BD7234) - (v96 + v95) + 0x3FDB5A19232146E6) ^ 0x4F9684A52205D5A9;
  v98 = v97 ^ __ROR8__(v95, 61);
  v99 = __ROR8__(v97, 8);
  v6[14] = (((((2 * (v99 + v98)) & 0x1E5C145EFE2F4014) - (v99 + v98) + 0x70D1F5D080E85FF5) ^ 0xEBCD81F7E5F650EDLL) >> (8 * ((v6 + 14) & 7u))) ^ BYTE3(v5) ^ 0x9A;
  v100 = __ROR8__((v6 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v101 = (a2 - v100) & 0x680551F87DC54615 | (v100 - 0x296E95066F186A7FLL) & 0x95FAAE07823AB9EALL;
  v102 = v101 ^ 0x6D27481B81E27267;
  v101 ^= 0xD9AC1FD706DEDE69;
  v103 = (__ROR8__(v102, 8) + v101) ^ v4;
  v104 = v103 ^ __ROR8__(v101, 61);
  v105 = __ROR8__(v103, 8);
  v106 = (((v105 + v104) & 0xB90C1C681EE8883BLL ^ 0x90080C481068080ALL) + ((v105 + v104) & 0x46F3E397E11777C4 ^ 0x42C00380601273C1) - 1) ^ 0xFEFF878B89DE1552;
  v107 = v106 ^ __ROR8__(v104, 61);
  v108 = __ROR8__(v106, 8);
  v109 = (((2 * (v108 + v107)) & 0x56F7B2AC5F994E46) - (v108 + v107) - 0x2B7BD9562FCCA724) ^ 0x69F90B401139F9B6;
  v110 = v109 ^ __ROR8__(v107, 61);
  v111 = __ROR8__(v109, 8);
  v112 = __ROR8__((((v111 + v110) ^ 0xA671FAF5A6DC8D77 | 0x988BE54C1108E42CLL) - ((v111 + v110) ^ 0xA671FAF5A6DC8D77 | 0x67741AB3EEF71BD3) + 0x67741AB3EEF71BD3) ^ 0xBC4A9FAE0897A932, 8);
  v113 = (((v111 + v110) ^ 0xA671FAF5A6DC8D77 | 0x988BE54C1108E42CLL) - ((v111 + v110) ^ 0xA671FAF5A6DC8D77 | 0x67741AB3EEF71BD3) + 0x67741AB3EEF71BD3) ^ 0xBC4A9FAE0897A932 ^ __ROR8__(v110, 61);
  v114 = (((2 * (v112 + v113)) & 0xF5BA5EC2CE3F62A4) - (v112 + v113) + 0x522D09E98E04EADLL) ^ 0xAFBF0A247A049AD1;
  v115 = v114 ^ __ROR8__(v113, 61);
  v116 = __ROR8__(v114, 8);
  v117 = (v116 + v115 - ((2 * (v116 + v115)) & 0x939EF87BFA8DDB10) - 0x363083C202B91278) ^ 0x467D5D7E039D813BLL;
  v6[15] = (((__ROR8__(v117, 8) + (v117 ^ __ROR8__(v115, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v6 + 15) & 7u))) ^ BYTE2(v5) ^ 0x98;
  v118 = __ROR8__((v6 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v119 = ((2 * (v118 - 0x296E95066F186A7FLL)) | 0xFA59C6CB8F42CD78) - (v118 - 0x296E95066F186A7FLL) + 0x2D31C9A385E9944;
  v120 = v119 ^ 0xFA0EFA863B8652CELL;
  v119 ^= 0x4E85AD4ABCBAFEC0uLL;
  v121 = (__ROR8__(v120, 8) + v119) ^ v4;
  v122 = v121 ^ __ROR8__(v119, 61);
  v123 = (__ROR8__(v121, 8) + v122) ^ 0x2C378843F9A46E98;
  v124 = v123 ^ __ROR8__(v122, 61);
  v125 = (__ROR8__(v123, 8) + v124) ^ 0xBD7D2DE9C10AA16ALL;
  v126 = v125 ^ __ROR8__(v124, 61);
  v127 = __ROR8__(v125, 8);
  v128 = __ROR8__((v127 + v126 - ((2 * (v127 + v126)) & 0x5542AB1B317F268CLL) + 0x2AA1558D98BF9346) ^ 0xA811D59A27FC532FLL, 8);
  v129 = (v127 + v126 - ((2 * (v127 + v126)) & 0x5542AB1B317F268CLL) + 0x2AA1558D98BF9346) ^ 0xA811D59A27FC532FLL ^ __ROR8__(v126, 61);
  v130 = (v128 + v129) ^ 0xAA9DDABAE2E4D47CLL;
  v131 = v130 ^ __ROR8__(v129, 61);
  v132 = (__ROR8__(v130, 8) + v131) ^ 0x8FB22143FEDB6CB3;
  v133 = v132 ^ __ROR8__(v131, 61);
  v134 = __ROR8__(v132, 8);
  v6[16] = (((((2 * (v134 + v133)) | 0x3FA3A1DB0D738C12) - (v134 + v133) + 0x602E2F12794639F7) ^ 0x4CDA4CAE3A7C911) >> (8 * ((v6 + 16) & 7u))) ^ BYTE1(v5) ^ 0xEC;
  v135 = (__ROR8__((v6 + 17) & 0xFFFFFFFFFFFFFFF8, 8) - 0x296E95066F186A7FLL) & 0xF9FFFFFFFFFFFFFFLL;
  v136 = __ROR8__(v135 ^ 0x12219E3FC273472, 8);
  v135 ^= 0xB5A94E2F7B1B987CLL;
  v137 = (((2 * (v136 + v135)) & 0xF7A4AF9285CC9B58) - (v136 + v135) - 0x7BD257C942E64DADLL) ^ 0x9097AF7C9281DDB6;
  v138 = v137 ^ __ROR8__(v135, 61);
  v139 = (__ROR8__(v137, 8) + v138) ^ 0x2C378843F9A46E98;
  v140 = v139 ^ __ROR8__(v138, 61);
  v141 = (__ROR8__(v139, 8) + v140) ^ 0xBD7D2DE9C10AA16ALL;
  v142 = v141 ^ __ROR8__(v140, 61);
  v143 = (__ROR8__(v141, 8) + v142) ^ a1;
  v144 = v143 ^ __ROR8__(v142, 61);
  v145 = (__ROR8__(v143, 8) + v144) ^ 0xAA9DDABAE2E4D47CLL;
  v146 = v145 ^ __ROR8__(v144, 61);
  v147 = (__ROR8__(v145, 8) + v146) ^ 0x8FB22143FEDB6CB3;
  v148 = __ROR8__(v147, 8);
  v149 = __ROR8__(v146, 61);
  v6[17] = (((((2 * (v148 + (v147 ^ v149))) | 0x1729776ADB68C76ALL) - (v148 + (v147 ^ v149)) + 0x746B444A924B9C4BLL) ^ 0x1088CF9208AA6CADLL) >> (8 * ((v6 + 17) & 7u))) ^ v5 ^ 0x4E;
  return (*(a3 + 8 * a4))();
}

uint64_t sub_1001DEE7C@<X0>(unsigned int a1@<W8>)
{
  v9 = (v5 - 1);
  v10 = *(*v8 + (*v7 & 0x249CC410)) + v3 + v9;
  *(v3 + v9) = (26 * (v3 + v5 - 1)) ^ (a1 >> v1) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v10 + 614253584) & (((v2 - 8802) | 0x1A9A) ^ 0x7226C616 ^ qword_1010C0540))) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v10 + (((v2 - 8582) | 0x440) ^ 0x249CE14E)) & (((v2 - 8802) | 0x1A9A) ^ 0x7226C616 ^ qword_1010C0540))) ^ 0xA;
  return (*(v4 + 8 * ((11545 * (v5 == (*(*(v6 + 32) + v9) != 0))) | v2)))();
}

uint64_t sub_1001DEF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  *(v41 - 144) = &a37;
  *(v41 - 136) = v40;
  *(v41 - 128) = v39 - 906386353 * ((~v37 & 0xDD806AB1 | v37 & 0x227F9548) ^ 0xEC81A795) - 1596662804;
  (*(v38 + 8 * (v39 ^ 0x5F2BAE3F)))(v41 - 144);
  *(v41 - 120) = v39 - 17902189 * (((v37 | 0x476810AA) - (v37 & 0x476810A8)) ^ 0xC92706BA) - 1596654024;
  *(v41 - 112) = &a29;
  *(v41 - 144) = &a26;
  *(v41 - 136) = &a37;
  *(v41 - 128) = &a37;
  v42 = (*(v38 + 8 * (v39 ^ 0x5F2BAE1A)))(v41 - 144);
  return (*(v38 + 8 * (v39 - 1596657278)))(v42);
}

uint64_t sub_1001DF1B8@<X0>(int a1@<W8>)
{
  if ((a1 - 1141764731) <= 0x40)
  {
    v3 = 64;
  }

  else
  {
    v3 = a1 - 1141764731;
  }

  return (*(v2 + 8 * ((201 * (v3 - a1 + ((v1 - 36590242) & 0x6EBFF6FF ^ 0x289C10CCu) < ((v1 - 1308581986) & 0x4DFFABFEu) - 35287)) ^ v1)))();
}

uint64_t sub_1001DF2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, __int16 a14, char a15, __int16 a16, char a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v23 = va_arg(va1, void);
  v21 = 1012831759 * ((((2 * (v20 - 160)) | 0x76F9D080) - (v20 - 160) - 998041664) ^ 0x2BEFFECA);
  a6[71] = &a15;
  *(v20 - 112) = v18 - v21 + 43272;
  *(v20 - 108) = ((((v17 ^ 0x93D4FAC2) + 1814758718) ^ ((v17 ^ 0xED5ADA52) + 312812974) ^ ((v18 ^ 0x68A40FE8) + (v17 ^ 0x975BE781))) - 129675808) ^ v21;
  a6[70] = &a17;
  a6[67] = va;
  a6[66] = &a13;
  a6[69] = a11;
  (*(v19 + 8 * (v18 ^ 0xDC33)))(v20 - 160);
  return (*(v19 + 8 * ((52 * (*(v20 - 144) != ((v18 + 1120713752) & 0xBD33BDFC ^ 0xE9D556BD))) ^ v18)))(17398374, 1420301865, 8072, 3567785513, &off_1010A0B50, va1);
}

uint64_t sub_1001DF540(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  HIDWORD(a17) = 0;
  LODWORD(v171) = (v17 - 20016) | 0xC406;
  v25 = (v171 - 50826) & v23 ^ 0x5B3B9EAFLL;
  *(v24 - 144) = v25;
  v26 = v23 ^ 0x5B3B9EAFLL;
  *(v24 - 160) = v26;
  LODWORD(v26) = *(a15 + (*(v20 + v26) ^ 0x17));
  v182 = v23 & 0xFFFFFFF7 ^ 0x5B3B9EAFLL;
  LODWORD(v26) = ((v26 >> 2) ^ 0xDD451E4A) & ~((v26 ^ 2) << 30);
  v27 = (((*(a13 + (*(v20 + v25) ^ 0x16)) << 14) ^ 0x2B785D6B) & (v26 ^ 0xE6BAC320) | v26 & 0xD0000014) ^ 0xDE627A51;
  v181 = v23 & 0xFFFFFFFE ^ 0x5B3B9EAFLL;
  v28 = *(a15 + (*(v20 + v182) ^ 0x48)) ^ 0x16;
  LODWORD(v26) = *(a12 + (*(v20 + v181) ^ 0x24)) ^ *(v20 + v181) ^ 0x67 ^ ((*(v20 + v181) ^ 0x67) - 81);
  v177 = v23 & 0xFFFFFFFA ^ 0x5B3B9EAFLL;
  v183 = v23 & 0xFFFFFFF6 ^ 0x5B3B9EAFLL;
  v29 = *(v20 + v183);
  v30 = *(a12 + (((*(v20 + v177) ^ 0xE7) - ((2 * (*(v20 + v177) ^ 0xE7)) & 0x1F4u) - 891525126) ^ 0xCADC67B9)) ^ *(v20 + v177) ^ 0xE7 ^ ((*(v20 + v177) ^ 0xE7) - 81);
  v31 = v23 & 0xFFFFFFF0 ^ 0x5B3B9EAFLL;
  *(v24 - 152) = v31;
  v32 = v30;
  v33 = ((v29 ^ 0x39) - 81) ^ v29 ^ 0x39 ^ *(a12 + (v29 ^ 0x7A));
  v179 = v23 & 0xFFFFFFF2 ^ 0x5B3B9EAFLL;
  LOBYTE(v29) = *(a14 + (*(v20 + v31) ^ 0x28));
  v34 = *(v20 + v179);
  v35 = ((v33 << 16) ^ 0xACB3E39) & ((v28 << 24) ^ 0xF9FFBEFB) | (v28 << 24) & 0xF5000000;
  LOBYTE(v28) = v34 ^ 0x6C;
  LOBYTE(v34) = *(a12 + (v34 ^ 0x2F));
  v36 = v23 & 0xFFFFFFF5 ^ 0x5B3B9EAFLL;
  *(v24 - 136) = v36;
  v176 = v23 & 0xFFFFFFF9 ^ 0x5B3B9EAFLL;
  LOBYTE(v29) = v29 - 109;
  v37 = (((v28 ^ (v28 - 81) ^ v34) << 16) ^ 0xEEC1F2A4) & (v29 ^ 0xFEFFFAAD) | v29 & 0x5B;
  v174 = v23 & 0xFFFFFFF8 ^ 0x5B3B9EAFLL;
  v175 = v23 & 0xFFFFFFF4 ^ 0x5B3B9EAFLL;
  v180 = v23 & 0xFFFFFFF3 ^ 0x5B3B9EAFLL;
  v178 = v23 & 0xFFFFFFFB ^ 0x5B3B9EAFLL;
  v173 = v23 & 0xFFFFFFF1 ^ 0x5B3B9EAFLL;
  v38 = (*(a15 + (*(v20 + v178) ^ 0x5ELL)) ^ 0x19) << 24;
  v39 = (v38 ^ 0x17FFFFFF) & (((*(a13 + (*(v20 + v176) ^ 0x93)) ^ 0x4E) << (v29 & 8 ^ 8) << (v29 & 8)) ^ (v32 << 16) ^ (*(a14 + (*(v20 + v174) ^ 0x41)) - 109) ^ 0x19A9150C);
  v40 = v38 & 0xE6000000;
  v41 = *(a13 + (*(v20 + v173) ^ 0x8FLL));
  v42 = a1 ^ (v26 << 16) ^ __ROR4__(v27, 6);
  LODWORD(v26) = v40 ^ v19 ^ v39;
  v43 = v37 & 0x2E78803F ^ v18 ^ ((((v41 << 8) ^ 0xFF4440CA) & (((*(a15 + (*(v20 + v180) ^ 0x12)) ^ 0x63) << 24) ^ 0x5144FBCA) & 0xFFFFFBFF | (((v41 >> 2) & 1) << 10)) ^ 0xCBC3A50A) & (v37 ^ 0x116A0D2E);
  LODWORD(v45) = __ROR4__(a2 ^ 0x7FC575E5 ^ ((*(a14 + (*(v20 + v175) ^ 0x78)) - 109) & 2 | (~(*(a14 + (*(v20 + v175) ^ 0x78)) - 109) | 0xFFFFFF00) & ((((*(a13 + (*(v20 + v36) ^ 0x1FLL)) << 8) ^ 0x18B981B7) & (v35 ^ 0x72FAC18E) | v35 & 0xE7460000) ^ 0x5030544A)), 12) ^ 0x6D8268C9;
  HIDWORD(v45) = v45;
  v44 = v45 >> 20;
  v46 = v43 ^ 0xD0D029DE;
  v47 = *(&off_1010A0B50 + (v17 ^ 0x58E3)) - 900728958;
  v48 = *(&off_1010A0B50 + (v17 ^ 0x55D8)) - 751466159;
  v49 = *&v48[4 * (BYTE2(v26) ^ 0xEC)];
  v50 = *(&off_1010A0B50 + v17 - 17474) - 1864040311;
  v51 = *(&off_1010A0B50 + (v17 ^ 0x5699)) - 1458480118;
  v52 = (v22 + *&v47[4 * (HIBYTE(v42) ^ 0x23)] * v21) ^ v49 ^ (v49 >> 8) ^ (v49 >> 4) ^ *&v50[4 * (BYTE1(v44) ^ 0xC4)] ^ *&v51[4 * (v37 & 0x3F ^ v18 ^ (v37 ^ 0x2E) & 0xC0 ^ 0xDE)] ^ 0x6916A0F3;
  LODWORD(v34) = *&v48[4 * (BYTE2(v44) ^ 0xA7)];
  v53 = (v52 & 0x2ADB6745 ^ 0x79D55CD8) & (v52 & 0xD52498BA ^ 0xFEFBEFC5);
  v172 = v23 & 0xFFFFFFFC ^ 0x5B3B9EAFLL;
  v54 = v34 ^ (v34 >> 8) ^ (v34 >> 4) ^ (v22 + *&v47[4 * (BYTE3(v26) ^ 0x28)] * v21) ^ *&v50[4 * (BYTE1(v43) ^ 0xA4)] ^ *&v51[4 * (v42 ^ (*(a14 + (*(v20 + v172) ^ 0x7CLL)) - 109) ^ 0x56)];
  LODWORD(v34) = *&v48[4 * (BYTE2(v43) ^ 3)];
  LODWORD(v34) = v34 ^ (v34 >> 8) ^ (v34 >> 4);
  v55 = v22 + *&v47[4 * (HIBYTE(v44) ^ 0x84)] * v21;
  v56 = *&v51[4 * (v26 ^ 0x4E)] ^ *&v50[4 * (BYTE1(v42) ^ 0x45)] ^ v34 & 0xBBC23285 ^ v55 & 0x2A802200 ^ ((((v34 ^ v55) & 0x44154400 ^ 0x8B3C97A7) & ((v34 ^ v55) & 0x28897A ^ 0xCF3DD7E5) | (v34 ^ v55) & 0x858) ^ 0x1E478642) & (v55 & 0xBBC23285 ^ 0xFF7FDFFF);
  LODWORD(v29) = *&v48[4 * (BYTE2(v42) ^ 0x58)];
  v57 = *&v47[4 * HIBYTE(v46)] * v21;
  LODWORD(v29) = v29 ^ (v29 >> 8) ^ (v29 >> 4) ^ 0xC5C67A1B;
  v58 = v53 | v52 & 0x84208022;
  v59 = *&v51[4 * ((v45 >> 20) ^ 0x22)] ^ *&v50[4 * (BYTE1(v26) ^ 0x96)] ^ (((-545727826 - v57) ^ (v29 - (v29 ^ (v57 + v22))) ^ (v57 - 2011612365 + (~(2 * (v57 + v22)) | 0x30DBD43F)) ^ 0x679215E0) + v29);
  LODWORD(v26) = *&v48[4 * ((v54 ^ 0x9D14E64D) >> 16)];
  LODWORD(v26) = v26 ^ (v26 >> 8) ^ (v26 >> 4) ^ (v22 + *&v47[4 * (HIBYTE(v58) ^ 0x52)] * v21) ^ *&v50[4 * (BYTE1(v56) ^ 0x32)] ^ *&v51[4 * (v59 ^ 0xE0)];
  v60 = *&v48[4 * (BYTE2(v56) ^ 0xA0)];
  v61 = *&v48[4 * (BYTE2(v59) ^ 0x56)];
  v62 = v60 ^ (v60 >> 8) ^ (v60 >> 4) ^ *&v50[4 * (BYTE1(v59) ^ 0x15)] ^ (v22 + *&v47[4 * (HIBYTE(v54) ^ 0x2F)] * v21) ^ *&v51[4 * ((2 * v53) & 0x192 ^ 0xFFFFFEFD) + 808 + 4 * (v58 ^ 0xA1)];
  v63 = v61 ^ (v61 >> 8) ^ (v61 >> 4) ^ *&v50[4 * (BYTE1(v58) ^ 0x52)] ^ *&v51[4 * (v54 ^ 0x4D)] ^ (v22 + *&v47[4 * (HIBYTE(v56) ^ 0xBF)] * v21);
  LODWORD(v29) = *&v48[4 * (BYTE2(v58) ^ 0xD9)];
  v64 = v29 ^ (v29 >> 8) ^ (v29 >> 4) ^ *&v50[4 * (BYTE1(v54) ^ 0x6B)] ^ (v22 + *&v47[4 * (HIBYTE(v59) ^ 0x52)] * v21) ^ *&v51[4 * (v56 ^ 0x9C)];
  v65 = *&v48[4 * (BYTE2(v62) ^ 0x87)];
  LODWORD(v29) = *&v51[4 * (v64 & 0xF4 ^ 0x1A8D0FD6 ^ (v64 & 0x47 ^ 0x1A8D0F0E) & (v64 ^ 0x5BCD1F5A))];
  v66 = v65 ^ (v65 >> 8) ^ (v65 >> 4) ^ (v22 + *&v47[4 * ((v26 ^ 0x80532BEC) >> 24)] * v21) ^ *&v50[4 * (BYTE1(v63) ^ 0xEE)];
  v67 = (-(v29 ^ 0xD5638F29) ^ ((v29 ^ 0xD5638F29) - ((2 * (v29 ^ 0xD5638F29)) & 0x469509D4) + 592086250) ^ 0x234A84EA ^ ((v66 ^ 0x3D085DA0) - (v29 ^ 0xE86BD289 ^ v66))) + (v66 ^ 0x3D085DA0);
  LODWORD(v29) = *&v48[4 * (BYTE2(v63) ^ 0x9C)];
  LOBYTE(v34) = v63 ^ 0x13;
  LODWORD(v36) = *&v47[4 * ((v63 ^ 0x854F6313) >> 24)];
  v68 = *&v48[4 * (BYTE2(v64) ^ 0xCC)];
  v69 = v29 ^ (v29 >> 8) ^ (v29 >> 4) ^ *&v50[4 * (BYTE1(v64) ^ 0xF4)] ^ (v22 + *&v47[4 * (HIBYTE(v62) ^ 0x5E)] * v21) ^ *&v51[4 * (v26 ^ 0x25)];
  v70 = v68 ^ *&v50[4 * (BYTE1(v26) ^ 0xA6)] ^ (v22 + v36 * v21) ^ (v68 >> 4) ^ (v68 >> 8) ^ *&v51[4 * (v62 ^ 0x5C)];
  LODWORD(v26) = *&v48[4 * ((v26 ^ 0x80532BEC) >> 16)] ^ 0xC99684D2;
  v71 = *&v50[4 * ((((v62 >> 8) & 0x87 ^ 0x6C) & ((v62 >> 8) & 0x78 ^ 0x2F0308B7) | (v62 >> 8) & 0x10) ^ 0x9C)] ^ (v22 + *&v47[4 * (HIBYTE(v64) ^ 0xE3)] * v21) ^ *&v51[4 * v34] ^ ((-((v26 >> 8) ^ (v26 >> 4)) ^ (v26 - ((v26 >> 8) ^ (v26 >> 4) ^ v26)) ^ 0x5633F858 ^ (((v26 >> 8) ^ (v26 >> 4)) - ((2 * ((v26 >> 8) ^ (v26 >> 4))) & 0xC67F0B0) + 1446246488)) + v26);
  LODWORD(v26) = *&v48[4 * ((HIWORD(v69) & 0xD3 ^ 1) + (HIWORD(v69) & 0x2C ^ 0xF3) - 2 * (HIWORD(v69) & 0xD3 ^ 1))];
  LODWORD(v26) = v26 ^ (v26 >> 8) ^ (v26 >> 4) ^ (v22 + *&v47[4 * ((v67 ^ 0x15DE0FF9u) >> 24)] * v21) ^ *&v50[4 * ((((v70 ^ 0x8B3F) >> 8) - (((v70 ^ 0x8B3F) >> 8) ^ 0x8D)) ^ 0xFFFFFFFE) + 4 * ((v70 ^ 0x8B3F) >> 8)] ^ *&v51[4 * (v71 ^ 5)];
  v72 = *&v48[4 * (BYTE2(v70) ^ 0xAE)];
  v73 = v72 ^ (v22 + *&v47[4 * (HIBYTE(v69) ^ 0x52)] * v21) ^ (v72 >> 4) ^ (v72 >> 8) ^ *&v50[4 * (BYTE1(v71) ^ 0xFD)] ^ *&v51[4 * (v67 ^ 0x30)];
  LODWORD(v29) = *&v48[4 * (BYTE2(v71) ^ 0x64)] ^ 0xC99684D2;
  v74 = (v29 >> 4) + v29 - 2 * ((v29 >> 4) & v29);
  LODWORD(v29) = *&v50[4 * (BYTE1(v67) ^ 0x82)] ^ v29 ^ *&v51[4 * (v69 ^ 0xD1)] ^ (v22 + *&v47[4 * ((v70 ^ 0x267D8B3Fu) >> 24)] * v21);
  v75 = *&v48[4 * ((v67 ^ 0x15DE0FF9u) >> 16)];
  v76 = v29 ^ (v74 >> 4);
  LODWORD(v29) = v22 + *&v47[4 * (HIBYTE(v71) ^ 0xF1)] * v21;
  v77 = v75 ^ (v75 >> 8) ^ (v75 >> 4) ^ 0xC5C67A1B;
  LODWORD(v34) = *&v51[4 * (v70 ^ 0xF6)] ^ *&v50[4 * (BYTE1(v69) ^ 0x9D)] ^ (v77 + v29 - 2 * (v77 & v29));
  v78 = BYTE3(v26);
  v79 = *&v48[4 * ((v73 ^ 0x7728B624u) >> 16)];
  v80 = v79 ^ (v79 >> 8) ^ (v79 >> 4) ^ *&v51[4 * (v34 ^ 0x1E)] ^ (v22 + *&v47[4 * (BYTE3(v26) ^ 0xD4)] * v21) ^ *&v50[4 * (BYTE1(v76) ^ 0x32)];
  v81 = v34 ^ 0xA0314DD7;
  LODWORD(v36) = *&v48[4 * (BYTE2(v76) ^ 0x80)];
  LODWORD(v29) = v36 ^ (v36 >> 8) ^ (v36 >> 4) ^ (v22 + *&v47[4 * ((v73 ^ 0x7728B624u) >> 24)] * v21) ^ *&v50[4 * ((((v34 ^ 0x4DD7) >> 8) - (((v34 ^ 0x4DD7) >> 8) ^ 0x8D)) ^ 0xFFFFFFFE) + 4 * ((v34 ^ 0x4DD7) >> 8)];
  LODWORD(v34) = *&v48[4 * (BYTE2(v34) ^ 0xE2)];
  v82 = ((v29 & 0x80000000) + (*&v51[4 * (v26 ^ 8)] ^ 0xD5638F29)) ^ v29 & 0x7FFFFFFF;
  LODWORD(v29) = v34 ^ (v34 >> 8) ^ (v34 >> 4) ^ (v22 + *&v47[4 * (HIBYTE(v76) ^ 0x65)] * v21) ^ *&v50[4 * (BYTE1(v26) ^ 0xD3)];
  LODWORD(v26) = *&v48[4 * (BYTE2(v26) ^ 0x1A)];
  v83 = v29 ^ *&v51[4 * (v73 ^ 0xED)];
  v84 = v26 ^ (v22 + *&v47[4 * HIBYTE(v81)] * v21) ^ (v26 >> 4) ^ (v26 >> 8) ^ *&v50[4 * (BYTE1(v73) ^ 0x3B)] ^ *&v51[4 * (v76 ^ 0x34)];
  LODWORD(v29) = *&v48[4 * (BYTE2(v82) ^ 0x98)];
  LODWORD(v26) = v29 ^ (v29 >> 8) ^ (v29 >> 4) ^ (v22 + *&v47[4 * (HIBYTE(v80) ^ 0x2B)] * v21) ^ *&v50[4 * (BYTE1(v83) ^ 0x49)] ^ 0xF34F7DD0;
  v85 = *&v48[4 * (BYTE2(v83) ^ 0x7D)];
  LODWORD(v26) = (v26 - ((2 * v26) & 0x9C8E40E0) - 834199440) ^ *&v51[4 * (v84 ^ 0xAD)];
  v86 = v85 ^ (v85 >> 8) ^ (v85 >> 4) ^ *&v50[4 * (BYTE1(v84) ^ 0x86)] ^ *&v51[4 * (v80 ^ 0x5E)] ^ (v22 + *&v47[4 * (HIBYTE(v82) ^ 0x78)] * v21);
  LODWORD(v36) = *&v48[4 * (BYTE2(v84) ^ 0x99)];
  LODWORD(v34) = v36 ^ (v22 + *&v47[4 * ((v83 ^ 0xFCAEC49C) >> 24)] * v21) ^ (v36 >> 4) ^ (v36 >> 8);
  LODWORD(v36) = *&v47[4 * (HIBYTE(v84) ^ 0x68)];
  v87 = v34 ^ *&v50[4 * (BYTE1(v80) ^ 0x3A)] ^ *&v51[4 * (v82 ^ 0x67) + 808 + 4 * ((2 * v82) & 0x192 ^ 0xFFFFFF7D)];
  v88 = *&v48[4 * (BYTE2(v80) ^ 0x13)];
  v89 = v88 ^ (v22 + v36 * v21) ^ (v88 >> 4) ^ (v88 >> 8) ^ *&v50[4 * (BYTE1(v82) ^ 0xFB)] ^ *&v51[4 * (v83 ^ 0x9C)];
  v90 = v87 ^ 0x6D;
  LODWORD(v29) = *&v48[4 * (BYTE2(v86) ^ 0xC9)];
  v91 = v26 ^ 0xC9FA7B1F;
  v92 = v29 ^ (v29 >> 8) ^ (v29 >> 4) ^ *&v50[4 * ((v87 ^ 0x1B6D) >> 8)] ^ *&v51[4 * ((v88 ^ (v22 + v36 * v21) ^ (v88 >> 4) ^ BYTE1(v88) ^ v50[4 * (BYTE1(v82) ^ 0xFB)] ^ v51[4 * (v83 ^ 0x9C)]) ^ 0xF4)] ^ (v22 + *&v47[4 * ((v26 ^ 0xC9FA7B1F) >> 24)] * v21);
  v93 = *&v48[4 * (BYTE2(v87) ^ 0x74)];
  v94 = v93 ^ (v93 >> 8) ^ (v93 >> 4) ^ *&v50[4 * (BYTE1(v89) ^ 0xE8)] ^ (v22 + *&v47[4 * (HIBYTE(v86) ^ 0xA8)] * v21) ^ *&v51[4 * (v26 ^ 0xD6)];
  LODWORD(v45) = __ROR4__(*&v48[4 * (((BYTE2(v89) ^ 0xFE) - (BYTE2(v89) ^ 0x2D)) ^ 0xFFFFFFFE) + 4 * (BYTE2(v89) ^ 0xFE)], 2) ^ 0x5FB90E9F;
  HIDWORD(v45) = v45;
  v95 = (v45 >> 30) ^ ((v45 >> 30) >> 8) ^ ((v45 >> 30) >> 4);
  HIDWORD(v171) = HIDWORD(a11) < 0x6092F0EE;
  v96 = v86 ^ 0xAA0C;
  if ((v86 & 2) != 0)
  {
    v97 = -2;
  }

  else
  {
    v97 = 2;
  }

  v98 = v97 + v96;
  v99 = *&v47[4 * (HIBYTE(v87) ^ 0xA5)];
  v100 = 87 * v99;
  v101 = 1020734009 * v99;
  v102 = v100 & 1;
  v103 = v95 ^ 0xBCB2E7FB;
  if ((v103 & v102) != 0)
  {
    v102 = -v102;
  }

  v104 = *&v51[4 * (v98 ^ 0xCB)] ^ *&v50[4 * BYTE1(v91)] ^ (v101 + v22) & 0xFFFFFFFE ^ (v102 + v103);
  v105 = *&v48[4 * BYTE2(v91)];
  v106 = *&v50[4 * (HIBYTE(v96) ^ 0x8D)] ^ *&v51[4 * v90] ^ (v22 + *&v47[4 * (HIBYTE(v89) ^ 0x3C)] * v21) ^ ((((v105 >> 8) ^ (v105 >> 4)) & 0xBC3BF8C ^ v105 & 0x2BC3BF8C ^ 0xFFFFCFFF) & (v105 & 0xD43C4073 ^ 0x6A245572 ^ ((v105 >> 8) ^ (v105 >> 4)) & 0x43C4073) | (((v105 >> 8) ^ (v105 >> 4)) & 0xBC3BF8C ^ v105 & 0x2BC3BF8C) & 0x1C3AA8C);
  v107 = *&v48[4 * (BYTE2(v94) ^ 0xF4)];
  v108 = v107 ^ (v107 >> 8) ^ (v107 >> 4) ^ (v22 + *&v47[4 * (HIBYTE(v92) ^ 0x71)] * v21) ^ *&v51[4 * (v106 ^ 8)] ^ *&v50[4 * (BYTE1(v104) ^ 0xD5)];
  v109 = *&v48[4 * (BYTE2(v104) ^ 0x86)];
  v110 = v106 ^ 0xDB5A77C1;
  v111 = v109 ^ (v109 >> 8) ^ (v109 >> 4) ^ *&v50[4 * ((v106 ^ 0x77C1) >> 8)] ^ (v22 + *&v47[4 * (HIBYTE(v94) ^ 0x28)] * v21) ^ *&v51[4 * (v92 ^ 0x12)];
  v112 = *&v48[4 * (BYTE2(v106) ^ 0x89)];
  v113 = v112 ^ (v112 >> 8) ^ (v112 >> 4) ^ *&v50[4 * (BYTE1(v92) ^ 0x93)] ^ *&v51[4 * (v94 ^ 0xE3)] ^ (v22 + *&v47[4 * (HIBYTE(v104) ^ 0xB9)] * v21);
  v114 = *&v48[4 * (BYTE2(v92) ^ 0xFD)];
  v115 = v114 ^ (v114 >> 8) ^ (v114 >> 4) ^ *&v50[4 * (((BYTE1(v94) ^ 0x4C) - (BYTE1(v94) ^ 0xC1)) ^ 0xFFFFFFFE) + 4 * (BYTE1(v94) ^ 0x4C)] ^ (v22 + *&v47[4 * HIBYTE(v110)] * v21) ^ *&v51[4 * (v104 ^ 0xA1)];
  v116 = *&v48[4 * (BYTE2(v111) ^ 0x7B)];
  v117 = v116 ^ (v116 >> 8) ^ (v116 >> 4) ^ (v22 + *&v47[4 * (HIBYTE(v108) ^ 0x21)] * v21) ^ *&v50[4 * (BYTE1(v113) ^ 0x59)] ^ *&v51[4 * (v115 ^ 0x8A)];
  v118 = ((v108 ^ 0x54) - ((2 * v108) & 0x56) - 664525525) ^ v108;
  v119 = *&v51[4 * (v108 ^ 0x9D)];
  v120 = (-(v118 ^ 0xB744E108) ^ ((v119 ^ 0xBA434B5E) - (v118 ^ 0xD07AA56 ^ v119)) ^ 0x92A25391 ^ ((v118 ^ 0xB744E108) - 2 * ((v118 ^ 0xB744E108) & 0x12A25395 ^ v118 & 4) - 1834855535)) + (v119 ^ 0xBA434B5E);
  v121 = *&v48[4 * (BYTE2(v113) ^ 0xFB)];
  v122 = v121 ^ (v121 >> 8) ^ (v121 >> 4) ^ *&v50[4 * (BYTE1(v115) ^ 0x1E)] ^ (v22 + *&v47[4 * (HIBYTE(v111) ^ 0xF8)] * v21) ^ v120;
  v123 = *&v48[4 * (BYTE2(v115) ^ 0x96)];
  v124 = v22 + *&v47[4 * (HIBYTE(v113) ^ 0x75)] * v21;
  v125 = v124 & 0x20000000;
  if ((v124 & 0x20000000 & v123) != 0)
  {
    v125 = -v125;
  }

  v126 = *&v51[4 * (v111 ^ 0x4A)] ^ *&v50[4 * (BYTE1(v108) ^ 0x37)] ^ v124 & 0xDFFFFFFF ^ (v125 + (v123 ^ (v123 >> 8) ^ (v123 >> 4) ^ 0xC5C67A1B));
  v127 = *&v48[4 * (BYTE2(v108) ^ 0x4F)];
  v128 = v127 ^ 0xC99684D2;
  v129 = (v22 + *&v47[4 * (HIBYTE(v115) ^ 0x35)] * v21) ^ *&v50[4 * (BYTE1(v111) ^ 0x83)] ^ *&v51[4 * (v113 ^ 0xC4)] ^ ((-v128 ^ (((v128 >> 8) ^ (v128 >> 4)) - ((v128 >> 8) ^ (v128 >> 4) ^ v128)) ^ ((v127 ^ 0xC99684D2) - 2 * ((v127 ^ 0xC99684D2) & 0x2329154D ^ v127 & 0xD) + 589894976) ^ 0x23291540) + ((v128 >> 8) ^ (v128 >> 4)));
  v130 = ((((v126 ^ 0xF9C41882) >> (v78 & 0x10)) - ((2 * ((v126 ^ 0xF9C41882) >> (v78 & 0x10))) & 0x3C8B3E42) - 1639604447) ^ 0x9E459F21) >> (v78 & 0x10 ^ 0x10);
  v131 = *(&off_1010A0B50 + v17 - 16984) - 1890149951;
  v132 = *(&off_1010A0B50 + (v17 ^ 0x40A8)) - 2098091647;
  v133 = *(&off_1010A0B50 + (v17 ^ 0x5768)) - 2038145215;
  v134 = *(&off_1010A0B50 + v17 - 17820) - 2134856611;
  v135 = *&v133[4 * (BYTE1(v126) ^ 0xBE)] ^ *&v132[4 * (BYTE2(v122) ^ 0xBE)] ^ __ROR4__(__ROR4__(HIBYTE(v117) ^ 0x9A907CBC ^ *&v131[4 * (HIBYTE(v117) ^ 0xC4)], 7) ^ 0x2490C8BE, 25) ^ *&v134[4 * (v129 ^ 0xB4)];
  v136 = *&v131[4 * (HIBYTE(v122) ^ 0x18)] ^ HIBYTE(v122) ^ *&v132[4 * (v130 ^ 0xE4)];
  v137 = *&v133[4 * ((v129 ^ 0xD53C) >> 8)];
  v138 = (-(v136 ^ 0xBEAA235A) ^ ((v137 ^ 0xFC59D8AF) - (v137 ^ 0x42F3FBF5 ^ v136)) ^ 0x63970149 ^ ((v136 ^ 0xBEAA235A) - ((2 * (v136 ^ 0xBEAA235A)) & 0xC72E0292) + 1670840649)) + (v137 ^ 0xFC59D8AF);
  v139 = *&v132[4 * (BYTE2(v129) ^ 0x76)] ^ *&v134[4 * (v122 ^ 0xC8)] ^ *&v133[4 * (BYTE1(v117) ^ 0x1E)];
  v140 = 78 * ((110127367 * ((v129 ^ 0x3D92D53C) >> 25)) >> 32);
  v141 = ((((v129 ^ 0x3D92D53C) >> 24) - v140) ^ v140) + 2 * ((((v129 ^ 0x3D92D53C) >> 24) - v140) & v140);
  v142 = HIBYTE(v126);
  v143 = *&v131[4 * (HIBYTE(v126) ^ 0x8C)];
  v144 = *&v133[4 * (BYTE1(v122) ^ 0x67)];
  v145 = *&v131[4 * (v141 ^ 0x75)] ^ v141 ^ *&v132[4 * (BYTE2(v117) ^ 0x66)] ^ v144 ^ *&v134[4 * (v126 ^ 0xA)];
  v146 = *&v134[4 * (v117 ^ 0x9F)] ^ 0x641B06CE ^ v138;
  v147 = v146 - ((2 * v146) & 0x23D74404u) - 1846828542;
  v148 = *(&off_1010A0B50 + (v17 ^ 0x56C5)) - 1436234058;
  *(v20 + v177) = v148[BYTE2(v147) ^ 0xBBLL] ^ (48 * (v148[BYTE2(v147) ^ 0xBBLL] ^ 7)) ^ 0xB;
  v149 = *(&off_1010A0B50 + v17 - 16842) - 661817663;
  *(v20 + v173) = BYTE1(v145) ^ v149[BYTE1(v145) ^ 0xDDLL] ^ 6;
  v150 = *(&off_1010A0B50 + (v17 ^ 0x51A7)) - 1555855770;
  v151 = v150[v135 ^ 5];
  v152 = BYTE1(v139) ^ BYTE1(v143);
  *(v20 + v172) = v151 ^ (v151 >> 5) ^ (v151 >> 2) ^ 0xD4;
  v153 = *(&off_1010A0B50 + v17 - 16606) - 253661427;
  *(v20 + v182) = ((v139 ^ v143) >> 24) ^ 0xA8 ^ v153[((v139 ^ v143) >> 24) ^ 0x2ALL];
  *(v20 + v181) = v148[BYTE2(v135) ^ 0x54] ^ (48 * (v148[BYTE2(v135) ^ 0x54] ^ 7)) ^ 0xB1;
  v154 = v150[v147 ^ 0x5FLL];
  *(v20 + v174) = v154 ^ (v154 >> 5) ^ ~(v150[v147 ^ 0x5FLL] >> 2);
  *(v20 + v176) = BYTE1(v147) ^ 0x37 ^ v149[BYTE1(v147) ^ 0x84];
  *(v20 + *(v24 - 160)) = HIBYTE(v135) ^ 0xD ^ v153[HIBYTE(v135) ^ 9];
  *(v20 + v179) = v148[BYTE2(v145) ^ 0x16] ^ (48 * (v148[BYTE2(v145) ^ 0x16] ^ 7)) ^ 0xF0;
  v155 = v150[(v139 ^ v143 ^ v142) ^ 0xA8];
  *(v20 + v175) = v155 ^ (v155 >> 5) ^ (v155 >> 2) ^ 0xB3;
  *(v20 + *(v24 - 144)) = BYTE1(v135) ^ 0x47 ^ v149[BYTE1(v135) ^ 0x73];
  LOBYTE(v155) = v148[((v139 ^ v143) >> 16) ^ 0x23];
  *(v20 + v183) = v155 ^ (48 * (v155 ^ 7)) ^ 0x26;
  HIDWORD(v156) = (((v147 >> 20) & 0xF0 ^ 0x74) & ((v147 >> 28) ^ 0xFD) | (v147 >> 28) & 0xFFFFFFFB) ^ 1;
  LODWORD(v156) = (16 * v147) ^ 0xC0000000;
  *(v20 + v178) = (v156 >> 28) ^ v153[(v156 >> 28) ^ 0xA7] ^ 7;
  v157 = v150[v145 ^ 4];
  *(v20 + *(v24 - 152)) = v157 ^ (v157 >> 5) ^ (v157 >> 2) ^ 0x9D;
  *(v20 + v180) = BYTE3(v145) ^ 0x52 ^ v153[BYTE3(v145) ^ 0x13];
  LODWORD(v153) = (((v23 ^ 0x2AAC8305) - 715948805) ^ ((v23 ^ 0x694C7AD3) - 1766619859) ^ ((v23 ^ 0x18DB6779) - 417032057)) - 685295473;
  v158 = (v153 ^ 0xE7857639) & (2 * (v153 & 0x84146630)) ^ v153 & 0x84146630;
  v159 = ((2 * (v153 ^ 0xE7ADB239)) ^ 0xC773A812) & (v153 ^ 0xE7ADB239) ^ (2 * (v153 ^ 0xE7ADB239)) & 0x63B9D408;
  v160 = v159 ^ 0x20885409;
  v161 = (v159 ^ 0x318000) & (4 * v158) ^ v158;
  v162 = ((4 * v160) ^ 0x8EE75024) & v160 ^ (4 * v160) & 0x63B9D408;
  v163 = v161 ^ 0x63B9D409 ^ (v162 ^ 0x2A15000) & (16 * v161);
  v164 = (16 * (v162 ^ 0x61188409)) & 0x63B9D400 ^ 0x40209409 ^ ((16 * (v162 ^ 0x61188409)) ^ 0x3B9D4090) & (v162 ^ 0x61188409);
  v165 = (v163 << 8) & 0x63B9D400 ^ v163 ^ ((v163 << 8) ^ 0xB9D40900) & v164;
  v166 = (v165 << 16) ^ 0x54090000;
  LODWORD(v153) = v153 ^ (2 * ((v165 << 16) & 0x63B90000 ^ v165 ^ v166 & ((v164 << 8) & 0x63B90000 ^ 0x42290000 ^ ((v164 << 8) ^ 0x39D40000) & v164)));
  *(v20 + *(v24 - 136)) = v152 ^ v149[v152 ^ 0x1DLL] ^ 8;
  v167 = (((v153 ^ 0x8BFBC2A0) - 1351979565) ^ ((v153 ^ 0x9786FDAE) - 1290317091) ^ ((v153 ^ 0x9C28F12C) - 1195811233)) - 1144090723;
  v168 = HIDWORD(v171) ^ (v167 < 0x6092F0EE);
  v169 = v167 < HIDWORD(a11);
  if (v168)
  {
    v169 = HIDWORD(a11) < 0x6092F0EE;
  }

  return (*(a16 + 8 * ((11587 * v169) ^ v17)))(HIDWORD(a11), v145, v166, 253, v147, v144, v148, v150, a9, a10, a11, a12, a13, a14, a15, a16, a17, v171, v172, v173, v174, v175);
}

uint64_t sub_1001E1278(__n128 a1, uint64_t a2, char a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19.n128_u64[0] = (v17 + a4 - 64 - 1) & 0xF;
  v19.n128_u64[1] = (v17 + 12) & 0xF;
  v20.n128_u64[0] = (v17 + 11) & 0xF;
  v20.n128_u64[1] = (v17 + 10) & 0xF;
  v21.n128_u64[0] = (v17 + 9) & 0xF;
  v21.n128_u64[1] = v18 & 0xF;
  v24.val[0].i64[0] = (v17 + 7) & 0xF;
  v24.val[0].i64[1] = (v17 + 6) & 0xF;
  v24.val[1].i64[0] = (v17 + 5) & 0xF;
  v24.val[1].i64[1] = (v17 + 4) & 0xF;
  v24.val[2].i64[0] = (v17 + 3) & 0xF;
  v24.val[2].i64[1] = (v17 + 2) & 0xF;
  v24.val[3].i64[0] = (v17 + 1) & 0xF;
  v24.val[3].i64[1] = v17 & 0xF;
  v22.n128_u64[0] = 0xA3A3A3A3A3A3A3A3;
  v22.n128_u64[1] = 0xA3A3A3A3A3A3A3A3;
  return (*(a17 + 8 * a4))((v17 + 14) & 0xF, v17 - 16, (a3 & 0x10) - 16, (a4 - 1217704687) & 0x4894CBF9 ^ 0x8BB9u, a1, v19, v20, v21, xmmword_100BC76B0, vqtbl4q_s8(v24, xmmword_100BC76B0), v22);
}

uint64_t sub_1001E1378()
{
  v3 = STACK[0x2E8];
  v4 = STACK[0x2E4];
  LOBYTE(STACK[0x2DC]) = (8 * (LOBYTE(STACK[0x2E8]) - 2 * (STACK[0x2E8] & 7)) + 56) ^ 0x67;
  LOBYTE(STACK[0x2DD]) = (v3 >> (((v0 + 45) | 0xCB) + 58)) ^ v2;
  LOBYTE(STACK[0x2DE]) = v2 ^ (v3 >> 13);
  LOBYTE(STACK[0x2DF]) = v2 ^ (v3 >> 21);
  LOBYTE(STACK[0x2E0]) = ((__PAIR64__(v4, v3) >> 29) - ((2 * (__PAIR64__(v4, v3) >> 29)) & 0xE3) + 113) ^ 0x2E;
  LOBYTE(STACK[0x2E1]) = v2 ^ (v4 >> 5);
  LOBYTE(STACK[0x2E2]) = v2 ^ (v4 >> 13);
  return (*(v1 + 8 * (v0 ^ 0x1F048B87 ^ (16479 * (v0 != 1764077656)))))();
}

uint64_t sub_1001E143C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  LODWORD(a11) = *(v50 + 5);
  HIDWORD(a20) = a43 + a11 - (((v48 ^ 0x2CBE122) - 2037028635) ^ ((v48 ^ 0x3E5A8E07) - 1174140990) ^ ((v48 ^ v51 ^ 0xC70A9194) + 716920780)) - 1654303634;
  LODWORD(a10) = *(v50 + 4);
  return (*(v49 + 8 * ((186 * (((v48 ^ a40) == HIDWORD(a23)) | a38 & 1)) ^ a24)))(a1, a10, *v50, v50[1], a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, v50[1], a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, *v50, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1001E1524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = ((v69 + 83) & 0xBF) - 76;
  v72 = (*(v70 + 8 * (v69 ^ 0x8D3E)))(a69) == 0;
  return (*(v70 + 8 * ((v72 ^ v71) & 1 ^ LODWORD(STACK[0x280]))))();
}

uint64_t sub_1001E1584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, int a19, int a20, int a21)
{
  if ((a19 ^ 0x697F5E9B) + ((2 * a19) & 0xD2FEB012) == 1769954971)
  {
    v22 = 157686605;
  }

  else
  {
    v22 = 157644581;
  }

  return (*(v21 + 8 * ((44 * (((a21 - 32032) ^ 0x8DED2E38) + a16 - ((2 * a12) & 0x4695E2C0) != -1555369632)) ^ a21)))(a1, v22);
}

uint64_t sub_1001E1764(uint64_t a1)
{
  *(a1 + 40) = 0;
  *(STACK[0x730] + 24) = 0;
  *(STACK[0x730] + 8) = 0;
  LODWORD(STACK[0x594]) = -371865837;
  v3 = ((v1 - 29467) | 0x101) - 371867146 + (((LODWORD(STACK[0x2BC]) ^ 0x569ACFA5) - 1452986277) ^ ((LODWORD(STACK[0x2BC]) ^ 0x70E82982) + (v1 ^ 0x8F17A163)) ^ ((LODWORD(STACK[0x2BC]) ^ 0xCFA72136) + 811130570));
  v4 = v3 > 0xFFFFFFE7;
  if (v3 >= 0xFFFFFFE8)
  {
    v5 = 371891407;
  }

  else
  {
    v5 = -371865839;
  }

  LODWORD(STACK[0x50C]) = v5;
  return (*(v2 + 8 * ((75 * v4) ^ v1)))();
}

uint64_t sub_1001E1880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, unint64_t a15, int a16, int a17, uint64_t a18)
{
  v22 = (v21 - 28350) | 0x6018;
  v23 = 1112314453 * (((v20 | 0x40B4FD2A586691B8) - (v20 | 0xBF4B02D5A7996E47) - 0x40B4FD2A586691B9) ^ 0xBCB85591B730BB61);
  v24 = (*(v18 + 8) ^ 0xF3B5F8F77FDBFBD6) - v23 + ((*(v18 + 8) << (((((v21 + 66) | 0x18) + 122) | 0x2Cu) - 61)) & 0xE76BF1EEFFB7F7ACLL) + 0x5FEBFFDFC7FFAFFCLL;
  a14 = v23 + 0x39CC9C6D5E58BACLL;
  a15 = v24;
  a17 = v23 - 19405 + v22;
  a18 = a1;
  v25 = (*(v19 + 8 * (v22 ^ 0xA00A)))(&a14);
  return (*(v19 + 8 * (((a16 == -371865839) * (v22 ^ 0x6CAC)) ^ v22)))(v25);
}

uint64_t sub_1001E19B4(uint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t a4, int a5, double a6, __n128 a7, __n128 a8, __n128 a9, int8x16_t a10, double a11, int8x16_t a12)
{
  v18 = v15 & 0xF;
  v20.i64[0] = vqtbl4q_s8(*(&a7 - 1), a10).u64[0];
  *&v20.i64[1] = a11;
  v21 = vrev64q_s8(vmulq_s8(v20, a12));
  *a3 = veorq_s8(veorq_s8(veorq_s8(*(v12 + v18 - 15), *a3), veorq_s8(*(v14 + v18 - 15), *(v18 + v13 - 14))), vextq_s8(v21, v21, 8uLL));
  return (*(v17 + 8 * (((a4 != 0) * a5) ^ v16)))(a1, a2, a3 - 1, a4 - 16);
}

uint64_t sub_1001E1A28@<X0>(uint64_t a1@<X0>, __int16 a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9, int a10, uint64_t a11, uint64_t a12, int a13, int a14)
{
  v16 = (*(a1 + 24) ^ a2);
  v17 = 634647737 * (((~&a7 | 0xAB9DC5DC531EBAECLL) + (&a7 | 0x54623A23ACE14513)) ^ 0x8EB995CCC1776AEELL);
  a10 = v14 - 1520334768 + v17;
  a11 = v17 ^ 0x5BB1;
  a12 = v16 - v17;
  a13 = v14 - v17 - 1230179057;
  a14 = ((v14 - 1520334768) ^ 0x3B) - v17;
  a7 = -634647737 * (((~&a7 | 0x531EBAEC) + (&a7 | 0x54623A23ACE14513)) ^ 0xC1776AEE);
  a8 = v14 - 1520334768 - v17 + 4782;
  v18 = (*(v15 + 8 * (v14 ^ 0xCAED)))(&a7);
  return (*(v15 + 8 * a9))(v18);
}

uint64_t sub_1001E1B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _DWORD *a13, _BYTE *a14)
{
  *v16 = a12;
  *a13 = -371865697;
  *a14 = -53;
  *(v17 + 1) = 3;
  return (*(v15 + 8 * v14))(a1, 1653488734, 2852093789, 1302713888, 161, 1067591761, 2749844071, 1101880254);
}

uint64_t sub_1001E1C34@<X0>(uint64_t a1@<X0>, char a2@<W3>, char a3@<W4>, char a4@<W5>, char a5@<W6>, char a6@<W8>)
{
  v15 = v9 - 1;
  STACK[0x290] = v15;
  v16 = (a1 ^ v7) & (2 * (a1 & v6)) ^ a1 & v6;
  v17 = (v8 ^ a2 ^ (2 * (a1 ^ a6))) & (a1 ^ a6) ^ (2 * (a1 ^ a6)) & a3;
  *(v14 + v15) = (a1 ^ (2 * (((4 * (v17 ^ a4)) & v11 ^ v13 ^ ((4 * (v17 ^ a4)) ^ v10) & (v17 ^ a4)) & (16 * ((v17 ^ a5) & (4 * v16) ^ v16)) ^ (v17 ^ a5) & (4 * v16) ^ v16)) ^ 0x11) * (a1 - 68);
  return (*(v12 + 8 * (v8 | (2 * (STACK[0x290] == 0)))))(a1 + 1);
}

uint64_t sub_1001E1CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39)
{
  v45 = v40 + v44 + 467816408;
  v46 = (v45 ^ v42 ^ 0x4930DA) & (2 * (v45 & 0x956D8C47)) ^ v45 & 0x956D8C47;
  v47 = ((2 * v45) ^ 0x8DA6B00E) & (v45 ^ 0x956D8C47);
  v48 = (v46 << ((v42 + 117) ^ 0x40)) & v47 ^ v46;
  v49 = ((4 * v47) ^ 0x42095100) & (v47 ^ 0x33C8000) & (16 * v48) ^ v48;
  v50 = *(a4 + 4 * a31);
  v51 = v50 ^ ((v50 ^ 0x6FA296FB) - 1077071974) ^ ((v50 ^ 0x597941F3) - 1994983278) ^ ((v50 ^ 0xE6046E68) + 913037067) ^ ((v50 ^ 0xFF4FFFFD) + 790644384) ^ v45 ^ (2 * v49);
  return (*(a36 + 8 * ((23 * (((a39 - v41 + 440226651 * *(a4 + 4 * v39) + ((((v51 ^ 0xE8282948) + 1384480547) ^ ((v51 ^ 0x297843BA) - 1814751791) ^ ((v51 ^ 0xDBADA028) + 1627452995)) + 1165103092) * (*(a4 + 4 * v39) + v43) - 1956053199) & 7) == 1)) ^ v42)))();
}

uint64_t sub_1001E1F1C(int a1, __n128 a2)
{
  v5.n128_u64[0] = (v2 + 13) & 0xF;
  v5.n128_u64[1] = (v2 + 12) & 0xF;
  v6.n128_u64[0] = (v2 + 11) & 0xF;
  v6.n128_u64[1] = (v2 + 10) & 0xF;
  v7.n128_u64[0] = (v2 + 1 + 4 * a1) & 0xF;
  v7.n128_u64[1] = v2 & 0xF ^ 8;
  v10.val[0].i64[0] = (v2 + 7) & 0xF;
  v10.val[0].i64[1] = (v2 + 6) & 0xF;
  v10.val[1].i64[0] = (v2 + 5) & 0xF;
  v10.val[1].i64[1] = (v2 + 4) & 0xF;
  v10.val[2].i64[0] = (v2 + 3) & 0xF;
  v10.val[2].i64[1] = (v2 + 2) & 0xF;
  v10.val[3].i64[0] = (v2 + 1) & 0xF;
  v10.val[3].i64[1] = v2 & 0xF;
  v8.n128_u64[0] = 0xE5E5E5E5E5E5E5E5;
  v8.n128_u64[1] = 0xE5E5E5E5E5E5E5E5;
  return (*(v4 + 8 * ((7563 * (a1 != -1218203354)) ^ (a1 - 448852979))))(342 * ((4 * a1) ^ 0x6B03DC99u), v2 + v3 - 16, v2 - 1, (v2 & 0x10) - 16, (342 * ((4 * a1) ^ 0x6B03DC99u)) ^ 0x4179, 331, a2, v5, v6, v7, xmmword_100BC76B0, vqtbl4q_s8(v10, xmmword_100BC76B0), v8);
}

uint64_t sub_1001E2070(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = *(v16 + 4 * ((0x9ED10ECD % (a1 >> 2)) & 0x3FFFFFFC));
  v20 = ~*(v16 + 4 * (((a1 >> 2) - 1) & v19));
  v21 = *(v18 + 8 * a12);
  v22 = *(v21 - 527405895);
  v23 = *(v18 + 8 * SHIDWORD(a11)) + 4 * v22;
  v24 = *(v23 - 1940437438);
  v26 = *&v20 & (~v19 >> 16);
  v25 = v26 == 0;
  v27 = v26 + v26 * v24;
  v28 = v25;
  if (v25)
  {
    v29 = v24;
  }

  else
  {
    v29 = 0;
  }

  *(v23 - 1940437438) = (v27 + v29) * v24;
  *(v21 - 527405895) = (v22 + 1) % 6u;
  return (*(v17 + 8 * ((56858 * v28) ^ a11)))(v24, v29, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

void sub_1001E215C(uint64_t a1)
{
  v1 = *(a1 + 20) - 193924789 * ((((2 * a1) | 0xCDEAE9F6) - a1 + 420121349) ^ 0x504E469D);
  v2 = *a1;
  v3 = *(a1 + 16) - 3765 * ((((2 * a1) | 0xE9F6) - a1 - 29947) ^ 0x469D);
  v4 = 139493411 * ((2 * (&v7 & 0x6F4FE20) - &v7 - 116719144) ^ 0xF526E09D);
  v7 = v1 - v4 + 16289;
  v9 = v4 - 231254985;
  v12 = -32733 * ((2 * (&v7 & 0xFE20) - &v7 + 472) ^ 0xE09D) - 21750 + (((v3 ^ 0x4729) - 18217) ^ ((v3 ^ 0xA365) + 23707) ^ ((v3 ^ 0xD9FE) + 9730));
  v10 = v2;
  v8 = &v6;
  v11 = v4 + 1133646169;
  v5 = *(&off_1010A0B50 + v1 - 28007) - 810145054;
  (*&v5[8 * v1 + 183008])(&v7);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001E2328@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  a6 = v11;
  a7 = v7 - v12 + 0x2EB9BB09D36856F1;
  a5 = v8 - v12 + 12290;
  a3 = a1;
  v13 = (*(v9 + 8 * (v8 ^ 0xEC60)))(&a3);
  return (*(v9 + 8 * (((2 * (a4 == v10)) | (8 * (a4 == v10))) ^ v8)))(v13);
}

uint64_t sub_1001E24A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  LODWORD(STACK[0x2E8]) = v51;
  v53 = *(v52 + 8 * (v50 - 13063));
  v54 = STACK[0x2EC];
  LODWORD(STACK[0x2A0]) = LODWORD(STACK[0x2EC]) + 12374;
  LODWORD(STACK[0x290]) = v54 - 26551;
  v55 = (v54 - 26551) | 0x28u;
  LODWORD(STACK[0x280]) = v55 + 1174893266;
  STACK[0x2D0] = (v54 - 37812);
  LODWORD(STACK[0x2C0]) = v54 - 13651;
  return v53(v53, v55, (v55 - 9733) | 0x8814u, STACK[0x278], 0x9CDDB1A786404674, a6, 388516942, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50);
}

uint64_t sub_1001E262C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29)
{
  v34 = 353670337 * ((2 * (v30 & 0x3FA1A4F8) - v30 + 1079925507) ^ 0xF47FA33E);
  *(v33 - 136) = v32;
  *(v33 - 160) = v34 + a29 - 1845152992;
  *(v33 - 152) = v31;
  *(v33 - 144) = v34 + 2063984264;
  v35 = (*(v29 + 8 * (a29 - 1845117989)))(v33 - 160);
  return (*(v29 + 8 * (a29 - 1845137020)))(v35);
}

uint64_t sub_1001E273C()
{
  v0 = STACK[0xF10];
  v1 = STACK[0x9894];
  v2 = STACK[0x75A0];
  *(v2 + 40) = STACK[0x9894];
  v3 = STACK[0xA0E4];
  *(v2 + 32) = STACK[0x1B90] + (LODWORD(STACK[0xA0E4]) - 1865451971);
  LODWORD(STACK[0xA0E0]) = v3 + 2057649486 + (((v1 ^ 0x9ADFE6AD) + 1696602451) ^ ((v1 ^ 0x3055CF23) - 810929955) ^ ((v1 ^ 0x435FEE9F) - 1130360479));
  return (*(STACK[0xF18] + 8 * (v0 - 28266)))();
}

uint64_t sub_1001E2AD0()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 3564)))(264);
  STACK[0x5268] = v2;
  if (v2)
  {
    v3 = STACK[0x6D1C];
  }

  else
  {
    v3 = 371891397;
  }

  return (*(v1 + 8 * ((31175 * (v3 == (((v0 ^ 0xBCAF) - 371861976) ^ (1470 * (v0 ^ 0xBCAF))))) ^ v0)))();
}

uint64_t sub_1001E2C10()
{
  v1 = STACK[0xB80];
  v2 = STACK[0xB80] < 0xC7A919C0;
  v3 = STACK[0xF10] + 513;
  v4 = (v0 ^ 0xE9D5C711) + STACK[0xCB0];
  STACK[0x9908] = v4 + 10;
  v4 -= 0x31ACEAB8F9D870EFLL;
  v5 = v4 < 0xC7A919C0;
  v6 = v4 > v1;
  if (v2 == v5)
  {
    v5 = v6;
  }

  return (*(STACK[0xF18] + 8 * (v3 ^ (102 * (v5 ^ 1)))))();
}

uint64_t sub_1001E2CF0(uint64_t a1)
{
  v6 = v1 > 0x290221E0;
  v7 = *(v2 + 136);
  if (v6 == v4 - 751419307 < ((v5 - 126604803) & 0x78B7FBBu) - 688029050)
  {
    v6 = v4 - 751419307 < v3;
  }

  if (!v7)
  {
    v6 = 0;
  }

  if (!a1)
  {
    v6 = 0;
  }

  return (*(STACK[0xF18] + 8 * ((28 * v6) | v5)))();
}

uint64_t sub_1001E2E34(uint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t a4, int a5, double a6, __n128 a7, __n128 a8, __n128 a9, int8x16_t a10, double a11, int8x16_t a12, int8x16_t a13)
{
  v19 = v16 & 0xF;
  v21.i64[0] = vqtbl4q_s8(*(&a7 - 1), a10).u64[0];
  *&v21.i64[1] = a11;
  v22 = vrev64q_s8(veorq_s8(veorq_s8(*a3, *(v13 + v19 - 15)), veorq_s8(*(v19 + v15 - 12), *(v19 + v14 - 14))));
  v23 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v22, v22, 8uLL), a13), vmulq_s8(v21, a12)));
  *a3 = vextq_s8(v23, v23, 8uLL);
  return (*(v18 + 8 * (((a4 == 0) * a5) ^ v17)))(a1, a2, a3 - 1, a4 - 16);
}

uint64_t sub_1001E2F38@<X0>(uint64_t a1@<X4>, unsigned int a2@<W5>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, int a22, int a23, int a24)
{
  LODWORD(STACK[0x2D8]) = a3;
  LODWORD(STACK[0x2DC]) = a23;
  STACK[0x2E0] = a21;
  v30 = (((a24 ^ 0x5E50C095) + (((v24 - 5318) | 0xEC) ^ 0xA1AF1D86)) ^ ((a24 ^ 0x1CB67D3D) - 481721661) ^ ((a24 ^ 0xAB337AB9) + 1422689607)) - (((v27 ^ 0x2CF264C5) - 754083013) ^ ((v27 ^ 0xF975D744) + 109717692) ^ ((v27 ^ 0xFC918478 ^ v24 ^ 0xC0C3C62F) - 1012036752)) + 1155531094;
  LODWORD(STACK[0x2E8]) = v30 ^ ((v30 ^ 0xD116D485) + 1778985517) ^ ((v30 ^ 0x25131AB4) - 1643322338) ^ ((v30 ^ 0x4F92709A) - 192049612) ^ ((v30 ^ 0xFF77BFFD) + 1147683157) ^ 0xAD35C647;
  STACK[0x2F0] = a1 + (v27 ^ a2);
  v31 = v24;
  v32 = (*(v25 + v28 * v29 + 8))(a14, &STACK[0x2D8]);
  return (*(v26 + 8 * ((21651 * (v32 == ((2 * v32) & 0xD3AB8E22))) ^ v31)))();
}

uint64_t sub_1001E312C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v43 = v42 + 16 * v40 + v39 + 11 * v39 + LODWORD(STACK[0x2F4]) + 7 * (((v41 ^ 0x539826C) + v37 + 1035298320) ^ ((v41 ^ 0xE57A497) + 920361702) ^ ((v41 ^ 0xB6E2698) + ((v37 + 84963825) | 0x30890318) - 28815917)) + 997606952;
  v44 = (v43 ^ 0x7C705F44) & (2 * (v43 & 0x7E755E65)) ^ v43 & 0x7E755E65;
  v45 = ((2 * (v43 ^ 0xCCB26B4C)) ^ 0x658E6A52) & (v43 ^ 0xCCB26B4C) ^ (2 * (v43 ^ 0xCCB26B4C)) & 0xB2C73528;
  v46 = ((LODWORD(STACK[0x2F8]) ^ 0xA0A1290B) + 1892585578) ^ LODWORD(STACK[0x2F8]) ^ ((LODWORD(STACK[0x2F8]) ^ 0x8625F9B) - 670177542) ^ ((LODWORD(STACK[0x2F8]) ^ 0x78BECEF2) - 1462667375) ^ ((LODWORD(STACK[0x2F8]) ^ 0xFFEDFEFF) + 797067166) ^ v43 ^ (2 * (((4 * (v45 ^ 0x92411529)) & 0x32C73520 ^ 0x2041420 ^ ((4 * (v45 ^ 0x92411529)) ^ 0x4B1CD4A0) & (v45 ^ 0x92411529)) & (16 * (v45 & (4 * v44) ^ v44)) ^ v45 & (4 * v44) ^ v44));
  v47 = LODWORD(STACK[0x3E4]) - LODWORD(STACK[0x300]) + *(v38 + 4 * a34) + 233483947 + (((v46 ^ 0x3AF1AD8D) - 2097267590) ^ ((v46 ^ 0x45E25D8C) - 34747271) ^ ((v46 ^ 0x4EF4E8F9) - 151291634));
  v48 = (v47 ^ 0xB2DC0903) & (2 * (v47 & 0x389C81AB)) ^ v47 & 0x389C81AB;
  v49 = ((2 * (v47 ^ 0xD2D50B47)) ^ 0xD49315D8) & (v47 ^ 0xD2D50B47) ^ (2 * (v47 ^ 0xD2D50B47)) & 0xEA498AEC;
  v50 = v49 ^ 0x2A488A24;
  v51 = (v49 ^ 0xC00000C8) & (4 * v48) ^ v48;
  v52 = ((4 * v50) & 0x6A498AE0 ^ 0x28000AA0 ^ ((4 * v50) ^ 0x29262BB0) & v50) & (16 * v51);
  v53 = *(v38 + 4 * a32);
  v54 = ((v53 ^ 0x126BBA93) - 1039924238) ^ v53 ^ ((v53 ^ 0x4E7FB7FB) - 1643114854) ^ ((v53 ^ 0x1C7BB60B) - 871100566) ^ ((v53 ^ 0x6FFFFDFE) - 1081064291) ^ v47 ^ (2 * (v52 ^ v51));
  return (*(a37 + 8 * (v37 ^ (22 * ((((a28 ^ 0xAB13A8E9) + 2011608112) ^ ((a28 ^ 0x1D8D7474) - 1049073485) ^ ((a28 ^ 0xA2D1C66A) + 2116344493)) == -927332814)))))(((v54 ^ 0x2246B35A) - 1164849984) ^ ((v54 ^ 0xD9EB329E) + 1094471036) ^ ((v54 ^ 0xF83146F2) + 1625700632), *(v38 + 4 * a29));
}

uint64_t sub_1001E373C(char a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v11 + 160) = v9 - 1;
  *(a7 + v9 - 1) = (v7 ^ a1) * (v7 + 17);
  return (*(v10 + 8 * (((*(v11 + 160) != 0) * (((v8 + a3) & 0xD6178FE) + 46549)) ^ v8)))();
}

uint64_t sub_1001E3790@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v32 = *(v30 + v25 + 16);
  v33 = (a25 + (a2 + v25 + v28));
  *v33 = *(v30 + v25);
  v33[1] = v32;
  return (*(v31 + 8 * (v26 | (2 * ((v27 ^ a1) + v25 != v29)))))();
}

uint64_t sub_1001E39C8@<X0>(uint64_t a1@<X6>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, unsigned int a47, uint64_t a48, unsigned int a49, uint64_t a50)
{
  *(a1 + 392) = a2;
  *(a1 + 396) = STACK[0x220];
  *(a1 + 400) = STACK[0x318];
  v55 = (((LODWORD(STACK[0x2C8]) ^ 0xA4EB5ED1) + 1528078639) ^ ((LODWORD(STACK[0x2C8]) ^ 0x703A250C) - 1882858764) ^ ((LODWORD(STACK[0x2C8]) ^ 0x3D04BCCC) + ((38 * (((v50 - 28686) | 0x2805) ^ 0x6B4B)) ^ 0xC2FB3E7C))) - (((v52 ^ 0xDA3E94E1) + 633432863) ^ ((v52 ^ 0xB5061A60) + 1257891232) ^ ((v52 ^ 0x86ED4990) + 2031269488)) + 1446399870;
  v56 = (v55 ^ 0x8DA5A2C8) & (2 * (v55 & 0xA9C9B082)) ^ v55 & 0xA9C9B082;
  v57 = ((2 * (v55 ^ 0xCF25E2CC)) ^ 0xCDD8A49C) & (v55 ^ 0xCF25E2CC) ^ (2 * (v55 ^ 0xCF25E2CC)) & 0x66EC524E;
  v58 = v57 ^ 0x22245242;
  v59 = (v57 ^ 0x44480008) & (4 * v56) ^ v56;
  v60 = ((4 * v58) ^ 0x9BB14938) & v58 ^ (4 * v58) & 0x66EC5248;
  v61 = (v60 ^ 0x2A04000) & (16 * v59) ^ v59;
  v62 = ((16 * (v60 ^ 0x644C1246)) ^ 0x6EC524E0) & (v60 ^ 0x644C1246) ^ (16 * (v60 ^ 0x644C1246)) & 0x66EC5240;
  v63 = v61 ^ 0x66EC524E ^ (v62 ^ 0x66C40000) & (v61 << 8);
  *(a1 + 408) = v55 ^ (2 * ((v63 << 16) & 0x66EC0000 ^ v63 ^ ((v63 << 16) ^ 0x524E0000) & (((v62 ^ 0x28520E) << 8) & 0x66EC0000 ^ 0x2AC0000 ^ (((v62 ^ 0x28520E) << 8) ^ 0x6C520000) & (v62 ^ 0x28520E)))) ^ 0x95CD30F;
  *(a1 + 416) = a50 + (v52 ^ 0xE9D5C711);
  v64 = v50;
  v65 = (*(v54 + 48 * v53 + 8))(a43, a1 + 392);
  return (*(a42 + 8 * ((391 * (v65 == ((2 * v65) & 0xD3AB8E22))) | v64)))(v65, v66, v67, v68, v69, a49, v51, a47, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t sub_1001E3C7C(uint64_t a1, uint64_t a2)
{
  v7 = ((v3 - 1127449570) & 0x4333EFBE ^ 0xC300200797E7E96) + v4 + (v6 ^ 0xF3CFFDFFDBF7D55FLL);
  v9 = v7 >= ((v3 - 7821) | 0x4809u) + 1433813331 && v7 <= v2 + 1433840284;
  v10 = *(v5 + 8 * ((230 * v9) ^ (v3 + 606)));
  return v10(v10, a2);
}

void sub_1001E3D1C(uint64_t a1)
{
  v2 = (*(a1 + 32) ^ 0xE5EF7B9FEFEE71FALL) + 0x1A1084601661B137 + ((2 * *(a1 + 32)) & 0xCBDEF73FDFDCE3F4);
  v3 = v2 < 0x6502331;
  v4 = v2 > *a1 + 105915185;
  if (*a1 > 0xFFFFFFFFF9AFDCCELL != v3)
  {
    v4 = v3;
  }

  v1 = *(a1 + 8) ^ (1112314453 * (a1 ^ 0xEF562AD9));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1001E3F68@<X0>(unint64_t a1@<X8>)
{
  v7 = a1 + v4;
  v8 = (v4 - 1) & 0xF;
  v9 = v8 + 1;
  v10 = v8 + 1 - v4;
  v11 = v2 + v10;
  v12 = v2 + v8 + 1;
  v13 = (v5 ^ 0xD8ADu) - v4 + v1 - 23500 + v8;
  v14 = v8 + v1 + 2;
  v15 = v3 + v10;
  v16 = v3 + v9;
  v18 = v12 > a1 && v11 < v7;
  v20 = v14 > a1 && v13 < v7 || v18;
  if (v16 > a1 && v15 < v7)
  {
    v20 = 1;
  }

  return (*(v6 + 8 * ((v20 * ((v5 - 13847) ^ 0x4D52)) ^ v5)))();
}

uint64_t sub_1001E4204@<X0>(uint64_t a1@<X3>, unsigned int a2@<W4>, int a3@<W5>, int a4@<W6>, unsigned int a5@<W7>, int a6@<W8>)
{
  v16 = v7 < a5;
  if (v6 - a3 == 1995464035)
  {
    v17 = 0;
  }

  else
  {
    v17 = v6 - 1068131221;
  }

  v18 = *(v11 + 4 * v17) + 1901388722 + *(v11 + 4 * ((((v10 + 23403) ^ 0xC1AEu) * v6 + 1090573630) % a2));
  v19 = (v18 ^ 0xDBCC5AA) & (2 * (v18 & 0x41BEE58C)) ^ v18 & 0x41BEE58C;
  v20 = ((2 * (v18 ^ 0x8C8844AA)) ^ 0x9A6D424C) & (v18 ^ 0x8C8844AA) ^ (2 * (v18 ^ 0x8C8844AA)) & v9;
  v21 = (v20 ^ 0x8240000) & (4 * v19) ^ v19;
  v22 = ((4 * (v20 ^ 0x4512A122)) ^ 0x34DA8498) & (v20 ^ 0x4512A122) ^ (4 * (v20 ^ 0x4512A122)) & v13;
  v23 = *(v11 + 4 * (v6 - 1068131222));
  v24 = (v23 ^ 0xC16FB053) & (2 * (v23 & 0xD06FB963)) ^ v23 & 0xD06FB963;
  v25 = (v22 ^ 0x4128000) & (16 * v21) ^ v21;
  v26 = ((2 * (v23 ^ 0xC1F3B213)) ^ 0x233816E0) & (v23 ^ 0xC1F3B213) ^ (2 * (v23 ^ 0xC1F3B213)) & a6;
  v27 = ((16 * (v22 ^ 0xC9242126)) ^ 0xD36A1260) & (v22 ^ 0xC9242126) ^ (16 * (v22 ^ 0xC9242126)) & v13;
  v28 = ((4 * (v26 ^ 0x10840910)) ^ 0x46702DC0) & (v26 ^ 0x10840910) ^ (4 * (v26 ^ 0x10840910)) & a6;
  v29 = v27 ^ 0xC14A106;
  v30 = (v26 ^ 0x1180200) & (4 * v24) ^ v24 ^ a6 ^ (v28 ^ 0x100940) & (16 * ((v26 ^ 0x1180200) & (4 * v24) ^ v24));
  v31 = v25 ^ v9;
  v32 = (v27 ^ 0xC1220000) & (v25 << 8);
  v33 = (16 * (v28 ^ 0x118C0230)) & 0x119C0B40 ^ 0x1C0870 ^ ((16 * (v28 ^ 0x118C0230)) ^ 0x19C0B700) & (v28 ^ 0x118C0230);
  v34 = (v30 << 8) & 0x119C0B00 ^ v30 ^ ((v30 << 8) ^ 0x9C0B7000) & v33;
  v35 = v23 ^ v18 ^ (2 * (v31 ^ v32 ^ v34 ^ (v34 << 16) & a4 ^ ((v31 ^ v32) << 16) & v14 ^ ((v34 << 16) ^ 0xB700000) & ((v33 << 8) & a4 ^ 0x1940000 ^ ((v33 << 8) ^ 0x9C0B0000) & v33) ^ (((v31 ^ v32) << 16) ^ 0x21260000) & ((v29 << 8) & v14 ^ 0x49160000 ^ ((v29 << 8) ^ 0x36A10000) & v29)));
  *(v11 + 4 * (v6 - 1068131222)) = (((v35 ^ 0x42B19B38) - 1276276302) ^ ((v35 ^ 0xE7746624) + 371748014) ^ ((v35 ^ 0xAD3DF55F) + v12)) + v8;
  if (v16 == v6 + v15 < a5)
  {
    v16 = v6 + v15 < v7;
  }

  return (*(a1 + 8 * (v10 ^ (8 * v16))))();
}

uint64_t sub_1001E4624()
{
  *v1 = 23958;
  STACK[0x440] = v2;
  return (*(v3 + 8 * (((((v0 - 30115) | 0x834) + 5597) * (v2 == 0)) ^ (v0 - 26277))))();
}

uint64_t sub_1001E466C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21)
{
  v24 = a21 < 0xCCFA0D07;
  v25 = v23 - 1933065715 + (v22 ^ 0x6C40);
  v26 = v24 ^ (v25 < 0xCCFA0D07);
  v27 = v25 < a21;
  if (!v26)
  {
    LOBYTE(v24) = v27;
  }

  return (*(v21 + 8 * ((16 * (((v22 - 10) ^ v24) & 1)) & 0xDF | (32 * (((v22 - 10) ^ v24) & 1)) | v22)))();
}

uint64_t sub_1001E4774@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X7>, unint64_t a4@<X8>)
{
  *&STACK[0xD60] = *(v11 + v5 - 16);
  v15.i64[0] = v9 + v5 + a2;
  v15.i64[1] = v11 + v5 - 8;
  v16 = v15;
  *&STACK[0xD00] = v15;
  v15.i64[0] = v11 + v5 - 15;
  v15.i64[1] = v11 + v5 - 16;
  v17 = v15;
  *&STACK[0xD30] = v15;
  v15.i64[0] = v11 + v5 - 13;
  v15.i64[1] = v11 + v5 - 14;
  v18 = v15;
  *&STACK[0xD20] = v15;
  v15.i64[0] = v11 + v5 - 11;
  v15.i64[1] = v11 + v5 - 12;
  v19 = v15;
  *&STACK[0xD40] = v15;
  v15.i64[0] = v11 + v5 - 9;
  v15.i64[1] = v11 + v5 - 10;
  *&STACK[0xD50] = v15;
  v20.i64[0] = v11 + v5 - 5;
  v20.i64[1] = v11 + v5 - 6;
  v21.i64[0] = v11 + v5 - 3;
  v21.i64[1] = v11 + v5 - 4;
  v22.i64[0] = v11 + v5 - 1;
  v22.i64[1] = v11 + v5 - 2;
  *&STACK[0xCF0] = v22;
  v23.i64[0] = v10 + v5 - 3;
  v23.i64[1] = v10 + v5 - 4;
  v24 = v23;
  v23.i64[0] = v10 + v5 - 5;
  v23.i64[1] = v10 + v5 - 6;
  v25 = v23;
  v26 = vandq_s8(v16, *&STACK[0xE90]);
  v27 = vandq_s8(v22, *&STACK[0xE90]);
  v28 = vandq_s8(v21, *&STACK[0xE90]);
  v29 = vandq_s8(v20, *&STACK[0xE90]);
  v30 = vandq_s8(v15, *&STACK[0xE90]);
  v31 = vandq_s8(v19, *&STACK[0xE90]);
  v32 = vandq_s8(v18, *&STACK[0xE90]);
  v33 = vandq_s8(v17, *&STACK[0xE90]);
  v34 = *&STACK[0xE90];
  v35 = *&STACK[0xE80];
  v36 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL), *&STACK[0xE80]), *&STACK[0xBA0]);
  v37 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL), *&STACK[0xE80]), *&STACK[0xBA0]);
  v38 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL), *&STACK[0xE80]), *&STACK[0xBA0]);
  v39 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL), *&STACK[0xE80]), *&STACK[0xBA0]);
  v40 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL), *&STACK[0xE80]), *&STACK[0xBA0]);
  v41 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL), *&STACK[0xE80]), *&STACK[0xBA0]);
  v42 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v27, 0x38uLL), v27, 8uLL), *&STACK[0xE80]), *&STACK[0xBA0]);
  v43 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v26, 0x38uLL), v26, 8uLL), *&STACK[0xE80]), *&STACK[0xBA0]);
  v44 = veorq_s8(v43, *&STACK[0xB90]);
  v45 = veorq_s8(v42, *&STACK[0xB90]);
  v46 = veorq_s8(v41, *&STACK[0xB90]);
  v47 = veorq_s8(v40, *&STACK[0xB90]);
  v48 = veorq_s8(v39, *&STACK[0xB90]);
  v49 = veorq_s8(v38, *&STACK[0xB90]);
  v50 = veorq_s8(v37, *&STACK[0xB90]);
  v51 = veorq_s8(v36, *&STACK[0xB90]);
  v52 = veorq_s8(v36, *&STACK[0xB80]);
  v53 = veorq_s8(v37, *&STACK[0xB80]);
  v54 = veorq_s8(v38, *&STACK[0xB80]);
  v55 = veorq_s8(v39, *&STACK[0xB80]);
  v56 = veorq_s8(v40, *&STACK[0xB80]);
  v57 = veorq_s8(v41, *&STACK[0xB80]);
  v58 = veorq_s8(v43, *&STACK[0xB80]);
  v59 = veorq_s8(v42, *&STACK[0xB80]);
  v60 = vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL);
  v61 = vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL);
  v62 = vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL);
  v63 = vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL);
  v64 = vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL);
  v65 = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v66 = vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL);
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v58);
  v68 = veorq_s8(vaddq_s64(v60, v52), *&STACK[0xB70]);
  v69 = veorq_s8(vaddq_s64(v61, v53), *&STACK[0xB70]);
  v70 = veorq_s8(vaddq_s64(v62, v54), *&STACK[0xB70]);
  v71 = veorq_s8(v67, *&STACK[0xB70]);
  v72 = veorq_s8(vaddq_s64(v63, v55), *&STACK[0xB70]);
  v73 = vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL);
  v74 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v75 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v76 = veorq_s8(vaddq_s64(v64, v56), *&STACK[0xB70]);
  v77 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v78 = veorq_s8(vaddq_s64(v65, v57), *&STACK[0xB70]);
  v79 = veorq_s8(vaddq_s64(v66, v59), *&STACK[0xB70]);
  v80 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v81 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v82 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v83 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v84 = veorq_s8(v72, v77);
  v85 = veorq_s8(v70, v75);
  v86 = veorq_s8(v69, v74);
  v87 = veorq_s8(v68, v73);
  v88 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v89 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v90 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v91 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v92 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v87);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v86);
  v96 = vaddq_s64(v93, v85);
  v97 = vaddq_s64(v92, v84);
  v98 = vaddq_s64(v91, v83);
  v99 = vaddq_s64(v90, v82);
  v100 = vaddq_s64(v89, v81);
  v101 = vaddq_s64(v88, v80);
  v102 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v94, v94), *&STACK[0xB60]), v94), *&STACK[0xB50]);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v101, v101), *&STACK[0xB60]), v101), *&STACK[0xB50]), *&STACK[0xB40]);
  v104 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v100, v100), *&STACK[0xB60]), v100), *&STACK[0xB50]), *&STACK[0xB40]);
  v105 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v99, v99), *&STACK[0xB60]), v99), *&STACK[0xB50]), *&STACK[0xB40]);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v98, v98), *&STACK[0xB60]), v98), *&STACK[0xB50]), *&STACK[0xB40]);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v97, v97), *&STACK[0xB60]), v97), *&STACK[0xB50]), *&STACK[0xB40]);
  v108 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v96, v96), *&STACK[0xB60]), v96), *&STACK[0xB50]), *&STACK[0xB40]);
  v110 = vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL);
  v111 = vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v95, v95), *&STACK[0xB60]), v95), *&STACK[0xB50]), *&STACK[0xB40]);
  v113 = vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL);
  v114 = vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL);
  v115 = vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL);
  v116 = veorq_s8(v102, *&STACK[0xB40]);
  v117 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v118 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v119 = veorq_s8(v112, v117);
  v120 = veorq_s8(v109, v115);
  v121 = veorq_s8(v107, v114);
  v122 = veorq_s8(v106, v113);
  v123 = veorq_s8(v105, v111);
  v124 = veorq_s8(v103, v108);
  v125 = veorq_s8(v104, v110);
  v126 = vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL);
  v127 = vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  v129 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL);
  v131 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v132 = vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL);
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v124);
  v134 = veorq_s8(vaddq_s64(v126, v118), *&STACK[0xAF0]);
  v135 = veorq_s8(vaddq_s64(v127, v119), *&STACK[0xAF0]);
  v136 = veorq_s8(vaddq_s64(v128, v120), *&STACK[0xAF0]);
  v137 = veorq_s8(v133, *&STACK[0xAF0]);
  v138 = veorq_s8(vaddq_s64(v129, v121), *&STACK[0xAF0]);
  v139 = *&STACK[0xAF0];
  v140 = vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL);
  v141 = vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL);
  v142 = veorq_s8(vaddq_s64(v130, v122), *&STACK[0xAF0]);
  v143 = vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL);
  v144 = vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL);
  v145 = veorq_s8(vaddq_s64(v131, v123), *&STACK[0xAF0]);
  v146 = vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL);
  v147 = veorq_s8(vaddq_s64(v132, v125), *&STACK[0xAF0]);
  v148 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v149 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v150 = veorq_s8(v145, v146);
  v151 = veorq_s8(v142, v144);
  v152 = veorq_s8(v138, v143);
  v153 = veorq_s8(v136, v141);
  v154 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v155 = veorq_s8(v134, v140);
  v156 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v157 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v158 = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v159 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v160 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v161 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v155);
  v162 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v154);
  v163 = vaddq_s64(v160, v153);
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v152);
  v165 = vaddq_s64(v159, v151);
  v166 = vaddq_s64(v158, v150);
  v167 = vaddq_s64(v157, v149);
  v168 = vaddq_s64(v156, v148);
  v169 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v161, v161), *&STACK[0xB30]), v161), *&STACK[0xB20]);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v168, v168), *&STACK[0xB30]), v168), *&STACK[0xB20]), *&STACK[0xB10]);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v167, v167), *&STACK[0xB30]), v167), *&STACK[0xB20]), *&STACK[0xB10]);
  v172 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v166, v166), *&STACK[0xB30]), v166), *&STACK[0xB20]), *&STACK[0xB10]);
  v173 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v165, v165), *&STACK[0xB30]), v165), *&STACK[0xB20]), *&STACK[0xB10]);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v164, v164), *&STACK[0xB30]), v164), *&STACK[0xB20]), *&STACK[0xB10]);
  v175 = vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v163, v163), *&STACK[0xB30]), v163), *&STACK[0xB20]), *&STACK[0xB10]);
  v177 = vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL);
  v178 = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v179 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v162, v162), *&STACK[0xB30]), v162), *&STACK[0xB20]), *&STACK[0xB10]);
  v180 = veorq_s8(v169, *&STACK[0xB10]);
  v181 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v182 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v183 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v184 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v185 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v186 = veorq_s8(v172, v178);
  v187 = veorq_s8(v170, v175);
  v188 = veorq_s8(v171, v177);
  v189 = vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL);
  v190 = vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL);
  v191 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v187);
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v188);
  v193 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v186);
  v194 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v185);
  v195 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v184);
  v196 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v183);
  v197 = vaddq_s64(v190, v182);
  v198 = vaddq_s64(v189, v181);
  v199 = *&STACK[0xB00];
  *&STACK[0xCA0] = vsubq_s64(vorrq_s8(vaddq_s64(v198, v198), *&STACK[0xB00]), v198);
  *&STACK[0xC90] = vsubq_s64(vorrq_s8(vaddq_s64(v197, v197), v199), v197);
  *&STACK[0xCC0] = vsubq_s64(vorrq_s8(vaddq_s64(v196, v196), v199), v196);
  *&STACK[0xCE0] = vsubq_s64(vorrq_s8(vaddq_s64(v195, v195), v199), v195);
  *&STACK[0xC80] = vsubq_s64(vorrq_s8(vaddq_s64(v191, v191), v199), v191);
  v200 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v192, v192), v199), v192), *&STACK[0xEC0]);
  v201 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v193, v193), v199), v193), *&STACK[0xEC0]);
  v202 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v194, v194), v199), v194), *&STACK[0xEC0]);
  *&STACK[0xC70] = vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL);
  v203 = *&STACK[0xE10];
  v204 = veorq_s8(v202, *&STACK[0xE10]);
  *&STACK[0xC60] = vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL);
  *&STACK[0xCB0] = vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL);
  v205 = veorq_s8(v201, v203);
  *&STACK[0xCD0] = vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL);
  v206 = veorq_s8(v200, v203);
  *&STACK[0xC50] = vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL);
  v207 = veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v208 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v209 = veorq_s8(v204, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v210 = vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL);
  v211 = vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL);
  v212 = vsraq_n_u64(vshlq_n_s64(v208, 3uLL), v208, 0x3DuLL);
  v213 = vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL);
  v214 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL), v209);
  v215 = v25;
  v216 = vandq_s8(v25, v34);
  v217 = vandq_s8(v24, v34);
  v218 = vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL);
  v219 = vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL);
  v220 = vaddq_s64(v219, v35);
  v221 = vaddq_s64(v218, v35);
  v222 = *&STACK[0xE20];
  v223 = veorq_s8(vaddq_s64(v211, v208), *&STACK[0xDD0]);
  v224 = *&STACK[0xDD0];
  v225 = *&STACK[0xDF0];
  v226 = vandq_s8(vsubq_s64(*&STACK[0xE20], v218), *&STACK[0xDF0]);
  v227 = *&STACK[0xDC0];
  v228 = vandq_s8(v221, *&STACK[0xDC0]);
  v229 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0xE20], v219), *&STACK[0xDF0]), vandq_s8(v220, *&STACK[0xDC0]));
  v230 = veorq_s8(v214, *&STACK[0xDD0]);
  v231 = vorrq_s8(v226, v228);
  v232 = veorq_s8(v231, *&STACK[0xDB0]);
  v233 = veorq_s8(v229, *&STACK[0xDB0]);
  v234 = *&STACK[0xDB0];
  v235 = *&STACK[0xDA0];
  v236 = veorq_s8(v229, *&STACK[0xDA0]);
  v237 = veorq_s8(v230, v213);
  v238 = vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL);
  v239 = vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL);
  v240 = vaddq_s64(v238, v236);
  v241 = veorq_s8(v223, v212);
  v242 = veorq_s8(v231, *&STACK[0xDA0]);
  v243 = vaddq_s64(v239, v242);
  v244 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v245 = vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL);
  v246 = veorq_s8(vaddq_s64(vsubq_s64(v240, vandq_s8(vaddq_s64(v240, v240), *&STACK[0xE70])), *&STACK[0xD90]), *&STACK[0xD80]);
  v247 = vsraq_n_u64(vshlq_n_s64(v236, 3uLL), v236, 0x3DuLL);
  v248 = veorq_s8(vaddq_s64(vsubq_s64(v243, vandq_s8(vaddq_s64(v243, v243), *&STACK[0xE70])), *&STACK[0xD90]), *&STACK[0xD80]);
  v249 = veorq_s8(v248, vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL));
  v250 = veorq_s8(v246, v247);
  v251 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL), v249), *&STACK[0xE60]);
  v252 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL), v250), *&STACK[0xE60]);
  v253 = vaddq_s64(v245, v241);
  v254 = vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL);
  v255 = veorq_s8(v252, vsraq_n_u64(vshlq_n_s64(v250, 3uLL), v250, 0x3DuLL));
  v256 = vaddq_s64(v244, v237);
  v257 = veorq_s8(v251, v254);
  v258 = vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL);
  v259 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251, 0x38uLL), v251, 8uLL), v257);
  v260 = v139;
  v261 = veorq_s8(vaddq_s64(v258, v255), v139);
  v262 = veorq_s8(v259, v139);
  v263 = veorq_s8(v262, vsraq_n_u64(vshlq_n_s64(v257, 3uLL), v257, 0x3DuLL));
  v264 = veorq_s8(v261, vsraq_n_u64(vshlq_n_s64(v255, 3uLL), v255, 0x3DuLL));
  v265 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261, 0x38uLL), v261, 8uLL), v264);
  v266 = vsubq_s64(vorrq_s8(vaddq_s64(v256, v256), *&STACK[0xE00]), v256);
  v267 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL), v263);
  v268 = vdupq_n_s64(a4);
  v269 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v265, v265), *&STACK[0xE40]), v265), v268);
  v270 = vsubq_s64(vorrq_s8(vaddq_s64(v253, v253), *&STACK[0xE00]), v253);
  v271 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v267, v267), *&STACK[0xE40]), v267), v268);
  v272 = v268;
  v273 = vdupq_n_s64(a1);
  v274 = veorq_s8(v271, v273);
  *&STACK[0xE30] = v273;
  v275 = veorq_s8(v269, v273);
  v276 = veorq_s8(v275, vsraq_n_u64(vshlq_n_s64(v264, 3uLL), v264, 0x3DuLL));
  v277 = veorq_s8(v274, vsraq_n_u64(vshlq_n_s64(v263, 3uLL), v263, 0x3DuLL));
  v278 = vdupq_n_s64(v4);
  v279 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v275, 0x38uLL), v275, 8uLL), v276);
  v280 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274, 0x38uLL), v274, 8uLL), v277);
  v281 = *&STACK[0xDE0];
  v282 = vshlq_u64(veorq_s8(vaddq_s64(v270, *&STACK[0xEB0]), *&STACK[0xEA0]), vnegq_s64(vandq_s8(vshlq_n_s64(v21, 3uLL), *&STACK[0xDE0])));
  v283 = vsraq_n_u64(vshlq_n_s64(v276, 3uLL), v276, 0x3DuLL);
  v284 = vdupq_n_s64(a3);
  v285 = vshlq_u64(veorq_s8(vaddq_s64(v266, *&STACK[0xEB0]), *&STACK[0xEA0]), vnegq_s64(vandq_s8(vshlq_n_s64(v20, 3uLL), *&STACK[0xDE0])));
  v286 = vsraq_n_u64(vshlq_n_s64(v277, 3uLL), v277, 0x3DuLL);
  v287 = vdupq_n_s64(v12);
  v288 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v280, v280), v278), v280), v284), v287);
  v289 = veorq_s8(v288, v286);
  v290 = vsraq_n_u64(vshlq_n_s64(v288, 0x38uLL), v288, 8uLL);
  v291 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v279, v279), v278), v279), v284), v287);
  v292 = veorq_s8(v291, v283);
  v293 = vsraq_n_u64(vshlq_n_s64(v291, 0x38uLL), v291, 8uLL);
  v294 = vaddq_s64(v290, v289);
  v295 = vsraq_n_u64(vshlq_n_s64(v289, 3uLL), v289, 0x3DuLL);
  v296 = veorq_s8(vaddq_s64(v293, v292), v224);
  v297 = veorq_s8(v296, vsraq_n_u64(vshlq_n_s64(v292, 3uLL), v292, 0x3DuLL));
  v298 = vsraq_n_u64(vshlq_n_s64(v296, 0x38uLL), v296, 8uLL);
  v299 = veorq_s8(v294, v224);
  v300 = veorq_s8(v299, v295);
  v139.i64[0] = v8 + v5 + a2;
  v301 = vdupq_n_s64(v13);
  v139.i64[1] = v10 + v5 - 8;
  *&STACK[0xC30] = v139;
  v302 = v281;
  *&STACK[0xED0] = v224;
  *&STACK[0xEE0] = veorq_s8(v282, vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v299, 0x38uLL), v299, 8uLL), v300), v301), vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), v281))));
  *&STACK[0xEF0] = veorq_s8(v285, vshlq_u64(veorq_s8(vaddq_s64(v298, v297), v301), vnegq_s64(vandq_s8(vshlq_n_s64(v215, 3uLL), v281))));
  *&STACK[0xF00] = v300;
  v303 = vandq_s8(v139, *&STACK[0xE90]);
  v304 = vsraq_n_u64(vshlq_n_s64(v303, 0x38uLL), v303, 8uLL);
  v196.i64[0] = v10 + v5 - 1;
  v196.i64[1] = v10 + v5 - 2;
  v305 = vandq_s8(v196, *&STACK[0xE90]);
  v306 = vsraq_n_u64(vshlq_n_s64(v305, 0x38uLL), v305, 8uLL);
  v307 = vorrq_s8(vandq_s8(vsubq_s64(v222, v306), v225), vandq_s8(vaddq_s64(v306, *&STACK[0xE80]), v227));
  v308 = vorrq_s8(vandq_s8(vsubq_s64(v222, v304), v225), vandq_s8(vaddq_s64(v304, *&STACK[0xE80]), v227));
  v309 = vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL);
  v310 = vaddq_s64(v210, v207);
  v311 = v234;
  v312 = veorq_s8(v307, v234);
  v313 = vsraq_n_u64(vshlq_n_s64(v312, 0x38uLL), v312, 8uLL);
  v314 = veorq_s8(v307, v235);
  v315 = vaddq_s64(v313, v314);
  v316 = *&STACK[0xE70];
  v317 = v224;
  v318 = veorq_s8(v310, v224);
  v319 = veorq_s8(v318, v309);
  v320 = vsraq_n_u64(vshlq_n_s64(v318, 0x38uLL), v318, 8uLL);
  v321 = vsraq_n_u64(vshlq_n_s64(v314, 3uLL), v314, 0x3DuLL);
  v322 = *&STACK[0xD90];
  v323 = *&STACK[0xD80];
  v324 = veorq_s8(vaddq_s64(vsubq_s64(v315, vandq_s8(vaddq_s64(v315, v315), *&STACK[0xE70])), *&STACK[0xD90]), *&STACK[0xD80]);
  v325 = veorq_s8(v324, v321);
  v326 = vsraq_n_u64(vshlq_n_s64(v325, 3uLL), v325, 0x3DuLL);
  v327 = *&STACK[0xE60];
  v328 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v324, 0x38uLL), v324, 8uLL), v325), *&STACK[0xE60]);
  v329 = veorq_s8(v328, v326);
  v330 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v328, 0x38uLL), v328, 8uLL), v329);
  v331 = vsraq_n_u64(vshlq_n_s64(v329, 3uLL), v329, 0x3DuLL);
  v332 = vaddq_s64(v320, v319);
  v333 = veorq_s8(v330, v260);
  v334 = veorq_s8(v333, v331);
  v335 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v333, 0x38uLL), v333, 8uLL), v334);
  v336 = *&STACK[0xE40];
  v337 = vsubq_s64(vandq_s8(vaddq_s64(v335, v335), *&STACK[0xE40]), v335);
  *&STACK[0xBB0] = v272;
  v338 = *&STACK[0xE30];
  v339 = veorq_s8(vaddq_s64(v337, v272), *&STACK[0xE30]);
  v340 = veorq_s8(v339, vsraq_n_u64(vshlq_n_s64(v334, 3uLL), v334, 0x3DuLL));
  v341 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v339, 0x38uLL), v339, 8uLL), v340);
  v342 = v278;
  *&STACK[0xBC0] = v278;
  v343 = v284;
  *&STACK[0xBE0] = v284;
  *&STACK[0xC20] = v287;
  v344 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v341, v341), v278), v341), v284), v287);
  v345 = veorq_s8(v344, vsraq_n_u64(vshlq_n_s64(v340, 3uLL), v340, 0x3DuLL));
  v346 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v344, 0x38uLL), v344, 8uLL), v345), v317);
  v347 = *&STACK[0xE00];
  v348 = vsubq_s64(vorrq_s8(vaddq_s64(v332, v332), *&STACK[0xE00]), v332);
  *&STACK[0xBD0] = v301;
  v349 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v346, 0x38uLL), v346, 8uLL), veorq_s8(v346, vsraq_n_u64(vshlq_n_s64(v345, 3uLL), v345, 0x3DuLL))), v301), vnegq_s64(vandq_s8(vshlq_n_s64(v196, 3uLL), v302)));
  v24.i64[0] = v10 + v5 - 9;
  v24.i64[1] = v10 + v5 - 10;
  *&STACK[0xC40] = v24;
  v350 = *&STACK[0xEB0];
  v351 = *&STACK[0xEA0];
  v352 = vshlq_u64(veorq_s8(vaddq_s64(v348, *&STACK[0xEB0]), *&STACK[0xEA0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xCF0], 3uLL), v302)));
  v348.i64[0] = v10 + v5 - 11;
  v353 = *&STACK[0xEE0];
  v354 = *&STACK[0xEF0];
  v355 = *&STACK[0xF00];
  *&STACK[0xED0] = veorq_s8(v352, v349);
  *&STACK[0xEE0] = v353;
  *&STACK[0xEF0] = v354;
  *&STACK[0xF00] = v355;
  v356 = veorq_s8(v308, v311);
  v357 = veorq_s8(v308, v235);
  v358 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v356, 0x38uLL), v356, 8uLL), v357);
  v359 = vandq_s8(vaddq_s64(v358, v358), v316);
  v360 = *&STACK[0xEC0];
  v361 = veorq_s8(vaddq_s64(vsubq_s64(v358, v359), v322), v323);
  v362 = vsraq_n_u64(vshlq_n_s64(v357, 3uLL), v357, 0x3DuLL);
  v363 = *&STACK[0xE10];
  v364 = veorq_s8(vaddq_s64(*&STACK[0xC80], *&STACK[0xEC0]), *&STACK[0xE10]);
  v365 = veorq_s8(v361, v362);
  v366 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v361, 0x38uLL), v361, 8uLL), v365), v327);
  v367 = veorq_s8(vaddq_s64(*&STACK[0xC90], *&STACK[0xEC0]), *&STACK[0xE10]);
  v368 = veorq_s8(v366, vsraq_n_u64(vshlq_n_s64(v365, 3uLL), v365, 0x3DuLL));
  v369 = veorq_s8(v364, *&STACK[0xC50]);
  v370 = vsraq_n_u64(vshlq_n_s64(v368, 3uLL), v368, 0x3DuLL);
  v371 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v366, 0x38uLL), v366, 8uLL), v368), v260);
  v372 = v260;
  v373 = vsraq_n_u64(vshlq_n_s64(v364, 0x38uLL), v364, 8uLL);
  v374 = veorq_s8(v371, v370);
  v375 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v371, 0x38uLL), v371, 8uLL), v374);
  v376 = veorq_s8(v367, *&STACK[0xC60]);
  v377 = vsubq_s64(vandq_s8(vaddq_s64(v375, v375), v336), v375);
  v378 = vsraq_n_u64(vshlq_n_s64(v374, 3uLL), v374, 0x3DuLL);
  v379 = vsraq_n_u64(vshlq_n_s64(v367, 0x38uLL), v367, 8uLL);
  v380 = vsraq_n_u64(vshlq_n_s64(v369, 3uLL), v369, 0x3DuLL);
  v381 = veorq_s8(vaddq_s64(v377, v272), v338);
  v382 = veorq_s8(v381, v378);
  v383 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v381, 0x38uLL), v381, 8uLL), v382);
  v384 = *&STACK[0xDD0];
  v385 = veorq_s8(vaddq_s64(v373, v369), *&STACK[0xDD0]);
  v386 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v383, v383), v342), v383), v343), v287);
  v387 = vsraq_n_u64(vshlq_n_s64(v382, 3uLL), v382, 0x3DuLL);
  v388 = veorq_s8(v385, v380);
  v389 = veorq_s8(v386, v387);
  v390 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v386, 0x38uLL), v386, 8uLL), v389);
  v391 = vsraq_n_u64(vshlq_n_s64(v385, 0x38uLL), v385, 8uLL);
  v392 = vsraq_n_u64(vshlq_n_s64(v389, 3uLL), v389, 0x3DuLL);
  v389.i64[0] = v10 + v5 - 13;
  v348.i64[1] = v10 + v5 - 12;
  *&STACK[0xCF0] = v348;
  v389.i64[1] = v10 + v5 - 14;
  v393 = veorq_s8(v390, v384);
  v394 = vaddq_s64(v391, v388);
  v395 = v347;
  v388.i64[0] = v10 + v5 - 15;
  v388.i64[1] = v10 + v5 - 16;
  v396 = *&STACK[0xDE0];
  v397 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v393, 0x38uLL), v393, 8uLL), veorq_s8(v393, v392));
  v398 = vandq_s8(v388, *&STACK[0xE90]);
  v399 = vandq_s8(v389, *&STACK[0xE90]);
  v400 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v394, v394), v347), v394), v350), v351), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xD00], 3uLL), *&STACK[0xDE0])));
  v401 = vandq_s8(v348, *&STACK[0xE90]);
  v482.val[0] = *&STACK[0xED0];
  v482.val[1] = *&STACK[0xEE0];
  v482.val[2] = *&STACK[0xEF0];
  v482.val[3] = veorq_s8(v400, vshlq_u64(veorq_s8(v397, v301), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xC30], 3uLL), *&STACK[0xDE0]))));
  v402 = vandq_s8(v24, *&STACK[0xE90]);
  v403 = vsraq_n_u64(vshlq_n_s64(v402, 0x38uLL), v402, 8uLL);
  v404 = vsraq_n_u64(vshlq_n_s64(v401, 0x38uLL), v401, 8uLL);
  v405 = vsraq_n_u64(vshlq_n_s64(v399, 0x38uLL), v399, 8uLL);
  v406 = vsraq_n_u64(vshlq_n_s64(v398, 0x38uLL), v398, 8uLL);
  v407 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0xE20], v406), *&STACK[0xDF0]), vandq_s8(vaddq_s64(v406, *&STACK[0xE80]), *&STACK[0xDC0]));
  v408 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0xE20], v405), *&STACK[0xDF0]), vandq_s8(vaddq_s64(v405, *&STACK[0xE80]), *&STACK[0xDC0]));
  v409 = veorq_s8(vaddq_s64(*&STACK[0xCA0], v360), v363);
  v410 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0xE20], v404), *&STACK[0xDF0]), vandq_s8(vaddq_s64(v404, *&STACK[0xE80]), *&STACK[0xDC0]));
  v411 = veorq_s8(v409, *&STACK[0xC70]);
  *&STACK[0xD00] = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0xE20], v403), *&STACK[0xDF0]), vandq_s8(vaddq_s64(v403, *&STACK[0xE80]), *&STACK[0xDC0]));
  *&STACK[0xED0] = vqtbl4q_s8(v482, *&STACK[0xD70]);
  v482.val[0] = veorq_s8(v408, *&STACK[0xDB0]);
  v482.val[1] = veorq_s8(v407, *&STACK[0xDB0]);
  v482.val[2] = vsraq_n_u64(vshlq_n_s64(v482.val[1], 0x38uLL), v482.val[1], 8uLL);
  v412 = veorq_s8(v407, *&STACK[0xDA0]);
  v482.val[3] = veorq_s8(v408, *&STACK[0xDA0]);
  v413 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v409, 0x38uLL), v409, 8uLL), v411);
  v482.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v482.val[0], 0x38uLL), v482.val[0], 8uLL), v482.val[3]);
  v482.val[2] = vaddq_s64(v482.val[2], v412);
  v414 = vsraq_n_u64(vshlq_n_s64(v376, 3uLL), v376, 0x3DuLL);
  v415 = vaddq_s64(v379, v376);
  v482.val[2] = veorq_s8(vaddq_s64(vsubq_s64(v482.val[2], vandq_s8(vaddq_s64(v482.val[2], v482.val[2]), *&STACK[0xE70])), v322), v323);
  v416 = vsraq_n_u64(vshlq_n_s64(v412, 3uLL), v412, 0x3DuLL);
  v482.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v482.val[1], vandq_s8(vaddq_s64(v482.val[1], v482.val[1]), *&STACK[0xE70])), v322), v323);
  v417 = veorq_s8(v482.val[1], vsraq_n_u64(vshlq_n_s64(v482.val[3], 3uLL), v482.val[3], 0x3DuLL));
  v482.val[3] = veorq_s8(v482.val[2], v416);
  v418 = vsraq_n_u64(vshlq_n_s64(v482.val[1], 0x38uLL), v482.val[1], 8uLL);
  v482.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v482.val[2], 0x38uLL), v482.val[2], 8uLL), v482.val[3]);
  v482.val[2] = veorq_s8(vaddq_s64(v418, v417), *&STACK[0xE60]);
  v482.val[1] = veorq_s8(v482.val[1], *&STACK[0xE60]);
  v419 = vsraq_n_u64(vshlq_n_s64(v417, 3uLL), v417, 0x3DuLL);
  v420 = veorq_s8(v482.val[1], vsraq_n_u64(vshlq_n_s64(v482.val[3], 3uLL), v482.val[3], 0x3DuLL));
  v482.val[3] = veorq_s8(v482.val[2], v419);
  v421 = vsraq_n_u64(vshlq_n_s64(v482.val[1], 0x38uLL), v482.val[1], 8uLL);
  v482.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v482.val[2], 0x38uLL), v482.val[2], 8uLL), v482.val[3]);
  v422 = veorq_s8(v415, v384);
  v482.val[2] = veorq_s8(vaddq_s64(v421, v420), v372);
  v482.val[1] = veorq_s8(v482.val[1], v372);
  v423 = vsraq_n_u64(vshlq_n_s64(v420, 3uLL), v420, 0x3DuLL);
  v424 = veorq_s8(v413, v384);
  v425 = veorq_s8(v482.val[1], vsraq_n_u64(vshlq_n_s64(v482.val[3], 3uLL), v482.val[3], 0x3DuLL));
  v482.val[3] = veorq_s8(v482.val[2], v423);
  v426 = vsraq_n_u64(vshlq_n_s64(v482.val[1], 0x38uLL), v482.val[1], 8uLL);
  v482.val[0] = veorq_s8(v424, vsraq_n_u64(vshlq_n_s64(v411, 3uLL), v411, 0x3DuLL));
  v482.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v482.val[2], 0x38uLL), v482.val[2], 8uLL), v482.val[3]);
  v427 = vaddq_s64(v426, v425);
  v482.val[2] = vsraq_n_u64(vshlq_n_s64(v424, 0x38uLL), v424, 8uLL);
  v428 = veorq_s8(v422, v414);
  v429 = vsraq_n_u64(vshlq_n_s64(v425, 3uLL), v425, 0x3DuLL);
  v430 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v427, v427), *&STACK[0xE40]), v427), *&STACK[0xBB0]), *&STACK[0xE30]);
  v482.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v482.val[1], v482.val[1]), *&STACK[0xE40]), v482.val[1]), *&STACK[0xBB0]), *&STACK[0xE30]);
  v431 = veorq_s8(v482.val[1], vsraq_n_u64(vshlq_n_s64(v482.val[3], 3uLL), v482.val[3], 0x3DuLL));
  v482.val[3] = vsraq_n_u64(vshlq_n_s64(v422, 0x38uLL), v422, 8uLL);
  v432 = veorq_s8(v430, v429);
  v433 = vsraq_n_u64(vshlq_n_s64(v482.val[1], 0x38uLL), v482.val[1], 8uLL);
  v482.val[1] = vsraq_n_u64(vshlq_n_s64(v430, 0x38uLL), v430, 8uLL);
  v482.val[3] = vaddq_s64(v482.val[3], v428);
  v434 = vaddq_s64(v433, v431);
  v482.val[1] = vaddq_s64(v482.val[1], v432);
  v482.val[0] = vaddq_s64(v482.val[2], v482.val[0]);
  v482.val[2] = vsraq_n_u64(vshlq_n_s64(v431, 3uLL), v431, 0x3DuLL);
  v435 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v434, v434), *&STACK[0xBC0]), v434), *&STACK[0xBE0]), *&STACK[0xC20]);
  v482.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v482.val[1], v482.val[1]), *&STACK[0xBC0]), v482.val[1]), *&STACK[0xBE0]), *&STACK[0xC20]);
  v436 = veorq_s8(v482.val[1], vsraq_n_u64(vshlq_n_s64(v432, 3uLL), v432, 0x3DuLL));
  v482.val[2] = veorq_s8(v435, v482.val[2]);
  v437 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v482.val[1], 0x38uLL), v482.val[1], 8uLL), v436), v384);
  v482.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v435, 0x38uLL), v435, 8uLL), v482.val[2]), v384);
  v438 = v396;
  v482.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v482.val[0], v482.val[0]), v395), v482.val[0]), *&STACK[0xEB0]), *&STACK[0xEA0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xD30], 3uLL), v438))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v482.val[1], 0x38uLL), v482.val[1], 8uLL), veorq_s8(v482.val[1], vsraq_n_u64(vshlq_n_s64(v482.val[2], 3uLL), v482.val[2], 0x3DuLL))), *&STACK[0xBD0]), vnegq_s64(vandq_s8(vshlq_n_s64(v388, 3uLL), v438))));
  v482.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v482.val[3], v482.val[3]), v395), v482.val[3]), *&STACK[0xEB0]), *&STACK[0xEA0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xD20], 3uLL), v396))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v437, 0x38uLL), v437, 8uLL), veorq_s8(v437, vsraq_n_u64(vshlq_n_s64(v436, 3uLL), v436, 0x3DuLL))), *&STACK[0xBD0]), vnegq_s64(vandq_s8(vshlq_n_s64(v389, 3uLL), v396))));
  v482.val[3] = veorq_s8(v410, *&STACK[0xDB0]);
  v439 = veorq_s8(v410, *&STACK[0xDA0]);
  v482.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v482.val[3], 0x38uLL), v482.val[3], 8uLL), v439);
  v482.val[3] = veorq_s8(vaddq_s64(vsubq_s64(v482.val[3], vandq_s8(vaddq_s64(v482.val[3], v482.val[3]), *&STACK[0xE70])), v322), v323);
  v440 = veorq_s8(v482.val[3], vsraq_n_u64(vshlq_n_s64(v439, 3uLL), v439, 0x3DuLL));
  v441 = veorq_s8(vaddq_s64(*&STACK[0xCC0], *&STACK[0xEC0]), v363);
  v482.val[3] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v482.val[3], 0x38uLL), v482.val[3], 8uLL), v440), *&STACK[0xE60]);
  v442 = veorq_s8(v441, *&STACK[0xCB0]);
  v443 = veorq_s8(v482.val[3], vsraq_n_u64(vshlq_n_s64(v440, 3uLL), v440, 0x3DuLL));
  v444 = vsraq_n_u64(vshlq_n_s64(v482.val[3], 0x38uLL), v482.val[3], 8uLL);
  v482.val[3] = vsraq_n_u64(vshlq_n_s64(v441, 0x38uLL), v441, 8uLL);
  v445 = veorq_s8(vaddq_s64(v444, v443), v372);
  v446 = veorq_s8(v445, vsraq_n_u64(vshlq_n_s64(v443, 3uLL), v443, 0x3DuLL));
  v447 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v445, 0x38uLL), v445, 8uLL), v446);
  v448 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v447, v447), *&STACK[0xE40]), v447), *&STACK[0xBB0]), *&STACK[0xE30]);
  v449 = veorq_s8(v448, vsraq_n_u64(vshlq_n_s64(v446, 3uLL), v446, 0x3DuLL));
  v450 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v448, 0x38uLL), v448, 8uLL), v449);
  v482.val[3] = veorq_s8(vaddq_s64(v482.val[3], v442), v384);
  v451 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v450, v450), *&STACK[0xBC0]), v450), *&STACK[0xBE0]), *&STACK[0xC20]);
  v452 = veorq_s8(v482.val[3], vsraq_n_u64(vshlq_n_s64(v442, 3uLL), v442, 0x3DuLL));
  v453 = veorq_s8(v451, vsraq_n_u64(vshlq_n_s64(v449, 3uLL), v449, 0x3DuLL));
  v454 = vsraq_n_u64(vshlq_n_s64(v451, 0x38uLL), v451, 8uLL);
  v455 = vsraq_n_u64(vshlq_n_s64(v482.val[3], 0x38uLL), v482.val[3], 8uLL);
  v482.val[3] = veorq_s8(vaddq_s64(v454, v453), v384);
  v456 = vaddq_s64(v455, v452);
  v482.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v456, v456), v395), v456), *&STACK[0xEB0]), *&STACK[0xEA0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xD40], 3uLL), v438))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v482.val[3], 0x38uLL), v482.val[3], 8uLL), veorq_s8(v482.val[3], vsraq_n_u64(vshlq_n_s64(v453, 3uLL), v453, 0x3DuLL))), *&STACK[0xBD0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xCF0], 3uLL), v438))));
  v457 = veorq_s8(*&STACK[0xD00], *&STACK[0xDB0]);
  v458 = veorq_s8(*&STACK[0xD00], *&STACK[0xDA0]);
  v459 = vsraq_n_u64(vshlq_n_s64(v457, 0x38uLL), v457, 8uLL);
  v460 = veorq_s8(vaddq_s64(*&STACK[0xCE0], *&STACK[0xEC0]), v363);
  v482.val[3] = vaddq_s64(v459, v458);
  v461 = veorq_s8(v460, *&STACK[0xCD0]);
  v482.val[3] = veorq_s8(vaddq_s64(vsubq_s64(v482.val[3], vandq_s8(vaddq_s64(v482.val[3], v482.val[3]), *&STACK[0xE70])), v322), v323);
  v462 = veorq_s8(v482.val[3], vsraq_n_u64(vshlq_n_s64(v458, 3uLL), v458, 0x3DuLL));
  v463 = vsraq_n_u64(vshlq_n_s64(v460, 0x38uLL), v460, 8uLL);
  v464 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v482.val[3], 0x38uLL), v482.val[3], 8uLL), v462), *&STACK[0xE60]);
  v465 = veorq_s8(v464, vsraq_n_u64(vshlq_n_s64(v462, 3uLL), v462, 0x3DuLL));
  v466 = veorq_s8(vaddq_s64(v463, v461), v384);
  v467 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v464, 0x38uLL), v464, 8uLL), v465), v372);
  v482.val[3] = veorq_s8(v466, vsraq_n_u64(vshlq_n_s64(v461, 3uLL), v461, 0x3DuLL));
  v468 = veorq_s8(v467, vsraq_n_u64(vshlq_n_s64(v465, 3uLL), v465, 0x3DuLL));
  v469 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v467, 0x38uLL), v467, 8uLL), v468);
  v470 = vsraq_n_u64(vshlq_n_s64(v466, 0x38uLL), v466, 8uLL);
  v471 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v469, v469), *&STACK[0xE40]), v469), *&STACK[0xBB0]), *&STACK[0xE30]);
  v472 = veorq_s8(v471, vsraq_n_u64(vshlq_n_s64(v468, 3uLL), v468, 0x3DuLL));
  v473 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v471, 0x38uLL), v471, 8uLL), v472);
  v474 = vaddq_s64(v470, v482.val[3]);
  v475 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v473, v473), *&STACK[0xBC0]), v473), *&STACK[0xBE0]), *&STACK[0xC20]);
  v476 = veorq_s8(v475, vsraq_n_u64(vshlq_n_s64(v472, 3uLL), v472, 0x3DuLL));
  v477 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v475, 0x38uLL), v475, 8uLL), v476), v384);
  v478 = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v474, v474), v395), v474), *&STACK[0xEB0]), *&STACK[0xEA0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xD50], 3uLL), v396))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v477, 0x38uLL), v477, 8uLL), veorq_s8(v477, vsraq_n_u64(vshlq_n_s64(v476, 3uLL), v476, 0x3DuLL))), *&STACK[0xBD0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xC40], 3uLL), v396))));
  v479 = *&STACK[0xED0];
  v479.i64[1] = vqtbl4q_s8(v482, *&STACK[0xD70]).u64[0];
  v480 = vrev64q_s8(v479);
  *(v10 + v5 - 16) = veorq_s8(vextq_s8(v480, v480, 8uLL), *&STACK[0xD60]);
  return (*(STACK[0xF18] + 8 * (((v7 == v5) * v14) ^ v6)))();
}

uint64_t sub_1001E5E4C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  HIDWORD(a12) = 0;
  v19 = a2 & 0xFFFFFFF4 ^ 0xD68514EBLL;
  *(v18 - 144) = v19;
  v259 = a2 & 0xFFFFFFFA ^ 0xD68514E5;
  v20 = *(a10 + (*(a3 + v259) ^ 0xD5));
  v21 = *(a9 + (*(a3 + v19) ^ 0xE2));
  LODWORD(v248) = (v14 ^ 0xA0BE) - 339405725;
  v22 = v248 ^ a2 & 0xFFFFFFF9 ^ 0x3D40817A;
  *(v18 - 124) = v22;
  v23 = ((-((4 * v20) & 0x68 ^ v20 ^ 0xB6) ^ (-11 - ((4 * v20) & 0x68 ^ v20 ^ 0x43)) ^ 0x5B ^ (((4 * v20) & 0x68 ^ v20 ^ 0xB6) + (~(2 * ((4 * v20) & 0x68 ^ v20 ^ 0xB6)) | 0x49) + 92)) - 11) << 16;
  v24 = *(a8 + (*(a3 + v22) ^ 0x31));
  v25 = a2 & 0xFFFFFFF5 ^ 0xD68514EBLL;
  *(v18 - 136) = v25;
  v254 = a2 ^ 0xD68514E1;
  v26 = ((v24 << 8) ^ 0x13A55FD0) & ~v23 | v23 & 0x5A0000;
  v27 = ((*(a8 + (*(a3 + v25) ^ 0xA9)) << 8) ^ 0xA8194796) & ((v21 - 45) ^ 0xA819FFDE) | (v21 - 45) & 0x69;
  v28 = *(a7 + (*(a3 + v254) ^ 0xD7));
  v29 = a2 & 0xFFFFFFFC ^ 0xD68514E3;
  *(v18 - 160) = v29;
  LODWORD(v29) = *(a9 + (*(a3 + v29) ^ 0xA5));
  v255 = a2 & 0xFFFFFFF6 ^ 0xD68514E9;
  v30 = *(a10 + (*(a3 + v255) ^ 0x5FLL));
  LODWORD(v29) = ((((HIDWORD(a6) - 39 * v28) * (HIDWORD(a6) - 39 * v28)) << 26) ^ ((HIDWORD(a6) - 39 * v28) << 24) ^ 0x50201DB1) & ((v29 - 45) ^ 0xFF225FFF) | (v29 - 45) & 0x4E;
  v31 = ((4 * v30) & 0x68 ^ v30) << 16;
  v32 = a2 & 0xFFFFFFFD ^ 0xD68514E3;
  *(v18 - 152) = v32;
  LODWORD(v32) = *(a8 + (*(a3 + v32) ^ 0x4CLL)) << 8;
  v256 = a2 & 0xFFFFFFF3 ^ 0xD68514EDLL;
  v33 = (v29 ^ 0xDBAA1842) & (v32 ^ 0xFFAA94FF) | v32 & 0xFA00;
  v258 = a2 & 0xFFFFFFF7 ^ 0xD68514E9;
  LODWORD(v29) = *(a7 + (*(a3 + v256) ^ 0xELL));
  v257 = a2 & 0xFFFFFFF0 ^ 0xD68514EFLL;
  v34 = ((((((-3 * v29 + 117 - 36 * v29) * (-3 * v29 + 117 - 36 * v29)) << ((-3 * v29 + 117) & 2 ^ 2) << ((-3 * v29 + 117) & 2)) ^ (-3 * v29 + 117 - 36 * v29)) << 24) ^ 0xAB802FBA) & ((*(a9 + (*(a3 + v257) ^ 0x47)) - 45) ^ 0xFFFDAFBF) | (*(a9 + (*(a3 + v257) ^ 0x47)) - 45) & 0x45;
  LODWORD(v29) = HIDWORD(a6) - 39 * *(a7 + (*(a3 + v258) ^ 0x58));
  LODWORD(v29) = (4 * v29 * v29 + (v29 ^ 0x51) - 2 * ((4 * v29 * v29) & (v29 ^ 0x51))) << 24;
  v35 = v29 & 0xEFFFFFFF | (v31 & 0x7D0000 ^ 0x15515FA3 ^ (v31 ^ 0x2D11FFFF) & (v27 ^ 0xAD9B67D6)) & ~v29;
  v251 = a2 & 0xFFFFFFF1 ^ 0xD68514EFLL;
  v252 = a2 & 0xFFFFFFF2 ^ 0xD68514EDLL;
  v36 = *(a8 + (*(a3 + v251) ^ 0x6ELL)) << 8;
  LOBYTE(v32) = *(a10 + (*(a3 + v252) ^ 0xC0));
  v37 = (v34 ^ 0xDC7DF8D2) & (v36 ^ 0xFFFD60FF);
  LODWORD(v32) = (4 * v32) & 0x68 ^ v32;
  v38 = v32 >> 6;
  LODWORD(v32) = v32 << 16;
  v39 = v37 & 0x47001552;
  v40 = v37 & 0xB800C2AD | v32 & 0x1A0000;
  v249 = a2 & 0xFFFFFFFE ^ 0xD68514E1;
  v41 = ((((v36 & 0x2800 | v39) ^ 0xD5A7090E) & (v32 & 0xE50000 ^ 0xFF77BD7F) & 0xFFBFFFFF | ((v38 & 1) << 22)) ^ 0x8DDA09DB) & (v40 ^ 0x5FF77D7A);
  v253 = a2 & 0xFFFFFFF8 ^ 0xD68514E7;
  LOBYTE(v36) = *(a9 + (*(a3 + v253) ^ 0xBLL)) - 45;
  v42 = (v36 & 0xB4 | 0x42021000) ^ (~v36 | 0xFFFFFF00) & (v26 ^ 0xAB51A29B);
  LOBYTE(v26) = *(a10 + (*(a3 + v249) ^ 0x1BLL)) ^ 0x38;
  v43 = ((((4 * v26) & 0x68 ^ v26) << 16) ^ 0x5084C940) & (v33 ^ 0xFB75FEAB);
  v250 = a2 & 0xFFFFFFFB ^ 0xD68514E5;
  v44 = v35 ^ v16;
  v45 = HIDWORD(a6) - 39 * *(a7 + (*(a3 + v250) ^ 0x49));
  v46 = 4 * v45 * v45;
  v47 = (v46 ^ v45) << 24;
  v48 = v47 & 0x26000000 | v42 & 0x1B9ADF;
  v49 = (v47 & 0xFBFFFFFF ^ 0x9568370C) & (v42 & 0xE46520 ^ 0xDD8C122C) | v42 & 0x844020;
  v50 = v33 & 0xAFA836BF ^ v15;
  v51 = v40 & 0xA002C228;
  v52 = v50 ^ v43;
  v53 = v51 ^ a14 ^ v41;
  v54 = (v50 ^ v43) >> 24;
  LODWORD(v25) = HIDWORD(a14) ^ v49 & 0x90242500 ^ (v49 ^ 0x2313C8D3) & (v48 ^ 0x6BC8D268);
  v55 = *(&off_1010A0B50 + v14 - 5334) - 1591292226;
  v56 = v25 ^ 0x91652673;
  v57 = *(&off_1010A0B50 + (v14 ^ 0x2918)) - 1500708322;
  v58 = *(&off_1010A0B50 + v14 - 5227) - 514486655;
  v59 = *&v58[4 * (BYTE1(v44) ^ 0x52)] + a1;
  v60 = *&v57[4 * ((v25 ^ 0x91652673) >> 16)] ^ *&v55[4 * (v54 ^ 0xF7)] ^ v59 ^ (v59 >> 4) ^ (v59 >> 5);
  v61 = *(&off_1010A0B50 + (v14 ^ 0x33F4)) - 425170286;
  v62 = *&v61[4 * (v53 ^ 0x94)] ^ 0x9AE20E89;
  v63 = v60 ^ v62 ^ (4 * v62) ^ (32 * v62) ^ ((v54 ^ 0xED) + v17);
  v64 = *&v58[4 * BYTE1(v56)] + a1;
  v65 = *&v61[4 * (v44 ^ 0x92)] ^ 0x8CE1FA31;
  v66 = *&v57[4 * (BYTE2(v52) ^ 0xD8)] ^ ((HIBYTE(v53) ^ 0xDB) + v17) ^ v64 ^ *&v55[4 * (HIBYTE(v53) ^ 0xC1)] ^ (v64 >> 4) ^ (v64 >> 5) ^ v65 ^ (4 * v65) ^ (32 * v65);
  LODWORD(v32) = *&v58[4 * (BYTE1(v52) ^ 0xAB)] + a1;
  v67 = *&v61[4 * v56] ^ 0x834073BA;
  LODWORD(v32) = ((HIBYTE(v44) ^ 0xA6) + v17) ^ *&v55[4 * (HIBYTE(v44) ^ 0xBC)] ^ v32 ^ *&v57[4 * (BYTE2(v53) ^ 0x36)] ^ (v32 >> 4) ^ (v32 >> 5) ^ v67 ^ (4 * v67) ^ (32 * v67);
  v56 >>= 24;
  v68 = *&v58[4 * (BYTE1(v53) ^ 0x78)] + a1;
  v69 = *&v61[4 * (v52 ^ 0xC2)] ^ 0xD75709A7;
  v70 = *&v55[4 * (v56 ^ 0x1A)] ^ v68 ^ (v68 >> 4) ^ (v68 >> 5) ^ *&v57[4 * (BYTE2(v44) ^ 0xAD)] ^ v69 ^ (4 * v69) ^ (32 * v69);
  v71 = v56 + v17;
  v72 = v32 ^ 0xD31118E7;
  v73 = v70 ^ v71 ^ 0xF3C3E748;
  HIDWORD(v74) = *&v58[4 * ((v32 ^ 0x18E7) >> 8)] + a1;
  LODWORD(v74) = HIDWORD(v74);
  LODWORD(v32) = v74 >> 17;
  HIDWORD(v74) = *&v58[4 * BYTE1(v72)] + a1;
  LODWORD(v74) = HIDWORD(v74);
  v75 = ((v32 & 0xFFFF7FFF ^ (v74 >> 16)) & 0x602023 ^ 0xFDC0DDA4) & ((v74 >> 16) & 0xFD85DD84 ^ v32 & 0xFD855D84 ^ 0x6D607427) | (v32 & 0xFFFF7FFF ^ (v74 >> 16)) & 0x2100258;
  HIDWORD(a14) = *(v18 - 120) < 0x370EEDEu;
  if ((v72 & 0x100000) != 0)
  {
    v76 = -16;
  }

  else
  {
    v76 = 16;
  }

  v77 = v76 + BYTE2(v72);
  v78 = v66 ^ 0xF390F07A;
  v79 = *&v61[4 * (v66 ^ 0xC4)] ^ 0x4A4C2205;
  HIDWORD(v80) = v75 ^ 0x52304107;
  LODWORD(v80) = v75 ^ 0x52304107;
  v81 = *&v55[4 * (HIBYTE(v63) ^ 0xE2)] ^ ((HIBYTE(v63) ^ 0xF8) + v17) ^ *&v57[4 * BYTE2(v73)] ^ (*&v58[4 * BYTE1(v72)] + a1) ^ v79 ^ (4 * v79) ^ (32 * v79) ^ ((v80 >> 16) >> 4);
  v82 = *&v58[4 * (BYTE1(v66) ^ 0xF3)] + a1;
  v83 = *&v55[4 * (HIBYTE(v73) ^ 0x1A)] ^ (HIBYTE(v73) + v17) ^ v82 ^ *&v57[4 * (v77 ^ 0x53)] ^ (v82 >> 4) ^ (v82 >> 5);
  v84 = *&v61[4 * (v63 ^ 0x42)] ^ 0x8549AB9;
  v85 = v83 ^ v84 ^ (4 * v84) ^ (32 * v84);
  v86 = *&v58[4 * (BYTE1(v63) ^ 0xF0)] + a1;
  v87 = *&v55[4 * (HIBYTE(v72) ^ 0x1A)] ^ (HIBYTE(v72) + v17) ^ *&v57[4 * BYTE2(v78)] ^ v86 ^ (v86 >> 4) ^ (v86 >> 5);
  v88 = *&v61[4 * v73] ^ 0xA0FDE430;
  v89 = v87 ^ v88 ^ (4 * v88) ^ (32 * v88);
  v90 = *&v55[4 * (HIBYTE(v78) ^ 0x1A)] ^ (HIBYTE(v78) + v17) ^ *&v57[4 * (BYTE2(v63) ^ 0x5C)];
  v91 = *&v58[4 * BYTE1(v73)] + a1;
  v92 = v90 ^ v91 ^ (v91 >> 4) ^ (v91 >> 5);
  v93 = *&v61[4 * v72] ^ 0xD3E3D603;
  v94 = v92 ^ v93 ^ (4 * v93) ^ (32 * v93);
  v95 = *&v55[4 * (HIBYTE(v81) ^ 0x6F)] ^ *&v57[4 * (BYTE2(v85) ^ 0x7A)] ^ ((HIBYTE(v81) ^ 0x75) + v17);
  v96 = *&v58[4 * (BYTE1(v89) ^ 0xE4)];
  v97 = ((v96 + a1) >> 5) ^ ((v96 + a1) >> 4) ^ 0x3B16140B ^ (v96 - ((2 * (v96 + a1)) & 0x762C2816) + 199926159);
  v98 = v97 & 0x2000000;
  v99 = (v97 & 0x2000000 & ~v95) == 0;
  v100 = v95 ^ 0x5EE3C162;
  if (!v99)
  {
    v98 = -v98;
  }

  v101 = v98 + v100;
  v102 = *&v61[4 * (v94 ^ 0xA1)] ^ 0xE0BFBA95;
  v103 = v102 ^ (32 * v102) ^ (4 * v102) ^ v97 & 0xFDFFFFFF ^ v101;
  v104 = *&v58[4 * (BYTE1(v94) ^ 0x84)] + a1;
  v105 = *&v61[4 * (v81 ^ 0x3D)] ^ 0xD822F946;
  v106 = *&v55[4 * (HIBYTE(v85) ^ 0xA5)] ^ ((HIBYTE(v85) ^ 0xBF) + v17) ^ *&v57[4 * (BYTE2(v89) ^ 0x80)] ^ v104 ^ (v104 >> 4) ^ (v104 >> 5) ^ v105 ^ (4 * v105) ^ (32 * v105);
  v107 = *&v58[4 * (BYTE1(v81) ^ 0xE1)] + a1;
  v108 = *&v57[4 * (BYTE2(v94) ^ 0x2D)] ^ ((HIBYTE(v89) ^ 0xC4) + v17) ^ *&v55[4 * (HIBYTE(v89) ^ 0xDE)] ^ v107 ^ (v107 >> 4) ^ (v107 >> 5);
  v109 = *&v61[4 * (v85 ^ 0x57)];
  v110 = (32 * (v109 ^ 0xBBEC51AC)) ^ (4 * (v109 ^ 0xBBEC51AC));
  v111 = v108 ^ v109 & 0xB98FF873 ^ v110 & 0xB98FF870 ^ (v110 ^ v109 ^ 0xBBEC51AC) & 0x4670078C;
  v112 = *&v58[4 * (BYTE1(v85) ^ 0x18)] + a1;
  v113 = ((HIBYTE(v94) ^ 0x99) + v17) ^ *&v55[4 * (HIBYTE(v94) ^ 0x83)] ^ *&v57[4 * (BYTE2(v81) ^ 0xA8)] ^ v112 ^ (v112 >> 4) ^ (v112 >> 5);
  v114 = *&v61[4 * (v89 ^ 0xED)] ^ 0x6F44F770;
  v115 = v113 ^ v114 ^ (4 * v114) ^ (32 * v114);
  v116 = *&v58[4 * (BYTE1(v111) ^ 0x88)] + a1;
  v117 = v115 ^ 0x15398F23;
  v118 = *&v61[4 * (v115 ^ 0x23)] ^ 0xBE275C8;
  v119 = *&v57[4 * (BYTE2(v106) ^ 0xB)] ^ *&v55[4 * (HIBYTE(v103) ^ 0x52)] ^ ((HIBYTE(v103) ^ 0x48) + v17) ^ v116 ^ (v116 >> 4) ^ (v116 >> 5) ^ v118 ^ (4 * v118) ^ (32 * v118);
  v120 = (~(v103 >> 8) & 3) << (BYTE1(v94) & 1);
  v121 = *&v58[4 * BYTE1(v117)] + a1;
  v122 = *&v57[4 * (BYTE2(v111) ^ 0x54)] ^ ((HIBYTE(v106) ^ 0x12) + v17) ^ *&v55[4 * (HIBYTE(v106) ^ 8)] ^ v121 ^ (v121 >> 4) ^ (v121 >> 5);
  v123 = *&v61[4 * (v103 ^ 0xAB)] ^ 0x84541D34;
  v124 = v122 ^ v123 ^ (4 * v123) ^ (32 * v123);
  v125 = *&v58[4 * (BYTE1(v103) ^ 0x93) + 12 + 4 * ((((v120 - 2 * (v120 & 1) - 1197021471) ^ 0x4759191E) + 1) << !(v94 & 0x100))] + a1;
  v126 = *&v61[4 * (v106 ^ 0xDE)] ^ 0x6D6641B1;
  v127 = ((HIBYTE(v111) ^ 0x97) + v17) ^ *&v55[4 * (HIBYTE(v111) ^ 0x8D)] ^ *&v57[4 * BYTE2(v117)] ^ v125 ^ (v125 >> 4) ^ (v125 >> 5) ^ v126 ^ (4 * v126) ^ (32 * v126);
  v128 = *&v58[4 * (BYTE1(v106) ^ 0xA3)] + a1;
  v129 = *&v61[4 * (v111 ^ 0x23)] ^ 0x5D2E139D;
  v130 = v127 ^ 0x12AEE755;
  v131 = (HIBYTE(v117) + v17) ^ *&v55[4 * (HIBYTE(v117) ^ 0x1A)] ^ v128 ^ *&v57[4 * ((((((v103 ^ 0x48C09315) >> (v46 & 0x10)) - ((2 * ((v103 ^ 0x48C09315) >> (v46 & 0x10))) & 0x12FC101A) + 159254541) ^ 0x97E080D) >> (v46 & 0x10 ^ 0x10)) ^ 0x43)] ^ (v128 >> 4) ^ (v128 >> 5) ^ v129 ^ (4 * v129) ^ (32 * v129) ^ 0x94F98818;
  v132 = *&v58[4 * ((v127 ^ 0xE755) >> 8)] + a1;
  v133 = *&v61[4 * v131] ^ 0x795808B3;
  v134 = *&v57[4 * (BYTE2(v124) ^ 0xD5)] ^ ((HIBYTE(v119) ^ 0x97) + v17) ^ *&v55[4 * (HIBYTE(v119) ^ 0x8D)] ^ v132 ^ (v132 >> 4) ^ (v132 >> 5) ^ v133 ^ (4 * v133) ^ (32 * v133);
  v135 = *&v58[4 * BYTE1(v131)] + a1;
  v136 = *&v55[4 * (HIBYTE(v124) ^ 0x35)] ^ ((HIBYTE(v124) ^ 0x2F) + v17) ^ v135 ^ *&v57[4 * BYTE2(v130)] ^ (v135 >> 4) ^ (v135 >> 5);
  v137 = *&v61[4 * (v119 ^ 0x37)] ^ 0x57003625;
  v138 = v136 ^ v137 ^ (4 * v137) ^ (32 * v137);
  v139 = *&v58[4 * (BYTE1(v119) ^ 0xE0)] + a1;
  v140 = *&v61[4 * (v124 ^ 0x39)] ^ 0xC6771FD0;
  v141 = *&v55[4 * (HIBYTE(v130) ^ 0x1A)] ^ (HIBYTE(v130) + v17) ^ *&v57[4 * BYTE2(v131)] ^ v139 ^ (v139 >> 4) ^ (v139 >> 5) ^ v140 ^ (4 * v140) ^ (32 * v140);
  v142 = *&v58[4 * (BYTE1(v124) ^ 0xD8)] + a1;
  v143 = *&v55[4 * (HIBYTE(v131) ^ 0x1A)] ^ (HIBYTE(v131) + v17) ^ *&v57[4 * (BYTE2(v119) ^ 0x4E)] ^ v142 ^ (v142 >> 4) ^ (v142 >> 5);
  v144 = *&v61[4 * v130] ^ 0x3E912B9A;
  v145 = v143 ^ v144 ^ (4 * v144) ^ (32 * v144);
  v146 = *&v58[4 * (BYTE1(v141) ^ 0xCE)] + a1;
  v147 = *&v55[4 * (HIBYTE(v134) ^ 0xD8)] ^ ((HIBYTE(v134) ^ 0xC2) + v17) ^ *&v57[4 * (BYTE2(v138) ^ 0x5C)] ^ v146 ^ (v146 >> 4) ^ (v146 >> 5);
  v148 = *&v61[4 * (v145 ^ 0xEC)] ^ 0xD2061B92;
  v149 = v147 ^ v148 ^ (4 * v148) ^ (32 * v148);
  v150 = *&v58[4 * (BYTE1(v145) ^ 0x7F)] + a1;
  v151 = *&v55[4 * (HIBYTE(v138) ^ 0xE5)] ^ (1659487707 - HIBYTE(v138)) ^ *&v57[4 * (BYTE2(v141) ^ 0x4F)] ^ v150 ^ (v150 >> 4) ^ (v150 >> 5);
  v152 = *&v61[4 * (v134 ^ 0x8F)] ^ 0x4BC4DC1A;
  v153 = v151 ^ v152 ^ (4 * v152) ^ (32 * v152);
  v154 = (-49338946 - (v153 ^ 0x372D336A)) ^ -(v153 ^ 0xCA2216D4) ^ ((v153 ^ 0xCA2216D4) - ((2 * (v153 ^ 0xCA2216D4)) & 0x7C94895A) - 1102429011);
  v155 = *&v58[4 * (BYTE1(v138) ^ 0x93)] + a1;
  v156 = *&v55[4 * (HIBYTE(v145) ^ 0x66)] ^ ((HIBYTE(v145) ^ 0x7C) + v17) ^ *&v57[4 * (BYTE2(v134) ^ 0xF5)] ^ v155 ^ (v155 >> 4) ^ (v155 >> 5);
  v157 = *&v61[4 * (v141 ^ 0x5D)] ^ 0x81C63F4D;
  v158 = v156 ^ v157 ^ (4 * v157) ^ (32 * v157);
  v159 = *&v58[4 * (BYTE1(v134) ^ 0xE9)] + a1;
  v160 = *&v61[4 * (v138 ^ 0x1E)] ^ 0xAE30AD6D;
  v161 = ((HIBYTE(v141) ^ 0x32) + v17) ^ *&v57[4 * (BYTE2(v145) ^ 0x9E)] ^ *&v55[4 * (HIBYTE(v141) ^ 0x28)] ^ v159 ^ (v159 >> 4) ^ (v159 >> 5) ^ v160 ^ (4 * v160) ^ (32 * v160);
  v162 = *&v61[4 * (v158 ^ 0xED)];
  v164 = v154 ^ 0xBE4A44AD;
  v165 = v164 - 49338946;
  v166 = (((v154 ^ 0xBE4A44AD) - 49338946) >> 24) ^ 0xFFFFFF9A;
  v167 = v166 + 32;
  if ((((v164 - 49338946) >> 24) ^ 0x9A) >= 0xE0)
  {
    v168 = -32;
  }

  else
  {
    v167 = v166;
    v168 = 0;
  }

  if (v167)
  {
    v168 = v166;
  }

  v169 = v161 ^ 0x1313F4D1;
  v170 = *&v58[4 * ((v161 ^ 0xF4D1) >> 8)] + a1;
  v163 = (32 * (v162 ^ 0xDC98C93)) ^ (4 * (v162 ^ 0xDC98C93));
  v171 = *&v57[4 * (BYTE2(v165) ^ 0x56)] ^ (((v149 >> 23) & 0x1B8 ^ 0x18) + (HIBYTE(v149) ^ 0x62E9C4F2)) ^ *&v55[4 * (HIBYTE(v149) ^ 0x34)] ^ v170 ^ (v170 >> 4) ^ (v170 >> 5) ^ (v163 & 0x3317BF8 ^ v162 & 0x3317BFA) & 0x3010328 ^ (__ROR4__((((8 * (v162 ^ 0xDC98C93)) & 0xA2700020 ^ 0x921255F7) & ((v162 >> 29) ^ 0xB27255F5) | (8 * (v162 ^ 0xDC98C93)) & 0x44042008) ^ (((8 * v163) ^ 0xC4F74480) & 0x82002000 | 0x8809201) ^ (((8 * v163) ^ 0xC4F74480) & 0x64740020 ^ 0x31090D9F) & ((v163 >> 29) ^ 0x757D0DB9) ^ 0x5B39ECB5, 3) ^ 0xAE28B80C) & (v163 & 0x3317BF8 ^ v162 & 0x3317BFA ^ 0xFCEE86ED);
  v172 = *&v61[4 * (v149 ^ 0xF0)];
  v173 = *&v58[4 * (BYTE1(v158) ^ 0x98)] + a1;
  v174 = *&v55[4 * (v168 ^ 0x1A)] ^ *&v57[4 * BYTE2(v169)] ^ v173 ^ (v173 >> 4) ^ (v173 >> 5) ^ (v17 + v168) ^ 0x5EE3C162;
  v175 = v172 ^ (32 * (v172 ^ 0xA8BF36E8)) ^ (4 * (v172 ^ 0xA8BF36E8)) ^ 0xC098DB9A;
  v176 = v174 + v175 - 2 * (v174 & v175);
  v177 = *&v58[4 * (BYTE1(v149) ^ 0xAB)] + a1;
  v178 = *&v57[4 * (BYTE2(v158) ^ 0x47)] ^ (HIBYTE(v169) + v17) ^ *&v55[4 * (HIBYTE(v169) ^ 0x1A)] ^ v177 ^ (v177 >> 4) ^ (v177 >> 5);
  v179 = *&v61[4 * (65 - v164)] ^ 0x2F2AB9B3;
  v180 = v178 ^ v179 ^ (4 * v179) ^ (32 * v179);
  v181 = *&v57[4 * (BYTE2(v149) ^ 0x74)] ^ ((HIBYTE(v158) ^ 0x46) + v17) ^ *&v55[4 * (HIBYTE(v158) ^ 0x5C)];
  v182 = *&v58[4 * (BYTE1(v165) ^ 0x72)] + a1;
  v183 = v181 ^ v182 ^ (v182 >> 4) ^ (v182 >> 5);
  v184 = *&v61[4 * v169] ^ 0x111F0D12;
  v185 = v183 ^ v184 ^ (4 * v184) ^ (32 * v184);
  v186 = *&v61[4 * ((v183 ^ v184 ^ (4 * v184) ^ (32 * v184)) ^ 3)];
  v187 = 8 * (v186 ^ 0xB3255633);
  v188 = *&v58[4 * (BYTE1(v180) ^ 0xF3)] + a1;
  v189 = *&v57[4 * (BYTE2(v176) ^ 0xAB)] ^ *&v55[4 * (HIBYTE(v171) ^ 0x29)] ^ v186 ^ v188 ^ (v188 >> 4) ^ (v188 >> 5) ^ ((HIBYTE(v171) ^ 0x33) + v17) ^ (((8 * ((v187 ^ 0x1E825C08) & (v186 ^ 0x14C75F88) ^ v187 & 0x1C324238)) ^ 0x1FEDFFBF) + ((4 * (v187 ^ v186 ^ 0xB3255633)) ^ 0x95485E24) + ((8 * ((v187 ^ 0x1E825C08) & (v186 ^ 0x1C03B818) ^ v187 & 0x14F6A5A8)) ^ 0xA4102040) + 1);
  v190 = *&v58[4 * ((v185 ^ 0xC903) >> 8)] + a1;
  v191 = (v190 >> 1) & 0x20000000;
  if ((v191 & v190) != 0)
  {
    v191 = -v191;
  }

  v192 = (v191 + v190) ^ (v190 >> 1) & 0xDFFFFFFF;
  v193 = *&v61[4 * (v171 ^ 8)] ^ 0x48F51DB2;
  v194 = v176 ^ 0xD2E8BFDD;
  v195 = *&v55[4 * (HIBYTE(v194) ^ 0x1A)] ^ *&v57[4 * (BYTE2(v180) ^ 0x2D)] ^ v190 ^ (HIBYTE(v194) + v17) ^ v193 ^ (v192 >> 4) ^ (4 * (((-8 * v193) ^ (v193 - ((8 * v193) ^ v193)) ^ (8 * v193 - ((16 * v193) & 0x23089400) + 293882370) ^ 0x11844A02) + v193));
  v196 = *&v57[4 * (BYTE2(v185) ^ 0xE2)] ^ ((HIBYTE(v180) ^ 0x1D) + v17) ^ *&v55[4 * (HIBYTE(v180) ^ 7)];
  v197 = *&v58[4 * (BYTE1(v171) ^ 0x95)];
  v198 = ((v197 + a1) >> 5) ^ ((v197 + a1) >> 4) ^ 0x9695D117 ^ (v197 - ((2 * (v197 + a1)) & 0x2D2BA22E) + 1735024283);
  v199 = (-(v196 ^ 0x5EE3C162) ^ (v198 - (v196 ^ 0x5EE3C162 ^ v198)) ^ 0xC180A06A ^ ((v196 ^ 0x5EE3C162) - 2 * ((v196 ^ 0x5EE3C162) & 0x4180A06B ^ v196 & 1) - 1048534934)) + v198;
  v200 = v189 ^ 0x1616DCD0;
  if (BYTE1(v194) != (BYTE1(v194) - 17))
  {
    v200 = BYTE1(v194);
  }

  v201 = *&v58[4 * (v200 ^ 3)] + a1;
  v202 = *&v61[4 * (v180 ^ 0xF0)] ^ 0x2BF2D5B5;
  v203 = *&v57[4 * (BYTE2(v171) ^ 0x44)] ^ (((v185 ^ 0xB4A1C903) >> 24) + v17) ^ *&v55[4 * (((v185 ^ 0xB4A1C903) >> 24) ^ 0x1A)] ^ v201 ^ (v201 >> 4) ^ (v201 >> 5) ^ v202 ^ (4 * v202) ^ (32 * v202);
  v204 = *&v61[4 * v194] ^ (32 * (*&v61[4 * v194] ^ 0xEBD10A81)) ^ (4 * (*&v61[4 * v194] ^ 0xEBD10A81)) ^ v199 ^ 0x54DBC4BF;
  v205 = *&v61[4 * (v203 ^ 0xE3)] ^ 0x3E8271EA;
  v206 = *&v58[4 * BYTE1(v204)] + a1;
  v207 = *&v57[4 * (((v195 ^ 0x90A240EE) >> 16) ^ 0x43)] ^ (((v189 ^ 0x7059861B) >> 24) + v17) ^ *&v55[4 * (((v189 ^ 0x7059861B) >> 24) ^ 0x1A)] ^ v206 ^ (v206 >> 4) ^ (v206 >> 5) ^ __ROR4__(((((v205 ^ (8 * v205)) >> 20) & 0x7FF ^ 0xFFFFFFE3) & (((v205 ^ (8 * v205)) << 12) ^ 0xC3DDB83D) | ((v205 ^ (8 * v205)) >> 20) & 0x3C2) ^ __ROR4__(v205, 22) ^ 0xE125081C, 10);
  v208 = *&v58[4 * (BYTE1(v203) ^ 0x63)] + a1;
  v209 = *&v61[4 * (v189 ^ 0x1B)] ^ 0x8EA8E415;
  v210 = *&v55[4 * ((((v195 ^ 0x90A240EE) >> 24) - (((v195 ^ 0x90A240EE) >> 24) ^ 0x1A)) ^ 0xFFFFFFFC) + 4 * ((v195 ^ 0x90A240EE) >> 24)] ^ *&v57[4 * BYTE2(v204)] ^ (((v195 ^ 0x90A240EE) >> 24) + v17) ^ v208 ^ (v208 >> 4) ^ (v208 >> 5) ^ v209 ^ (4 * v209) ^ (32 * v209);
  v211 = *&v57[4 * (BYTE2(v189) ^ 0x1A)];
  v212 = *&v58[4 * (BYTE1(v189) ^ 0x85)] + a1;
  v213 = (HIBYTE(v204) + v17) ^ *&v55[4 * (HIBYTE(v204) ^ 0x1A)] ^ v212 ^ *&v57[4 * (BYTE2(v203) ^ 0x9A)] ^ (v212 >> 4) ^ (v212 >> 5);
  v214 = *&v61[4 * (v195 ^ 0xEE)] ^ 0x85C689CC;
  v215 = v213 ^ v214 ^ (4 * v214) ^ (32 * v214);
  v216 = *&v58[4 * (BYTE1(v195) ^ 0x43)] + a1;
  v217 = *&v61[4 * v204] ^ 0xAF964E45;
  v218 = v211 ^ ((HIBYTE(v203) ^ 0xB6) + v17) ^ v216 ^ *&v55[4 * (HIBYTE(v203) ^ 0xAC)] ^ (v216 >> 4) ^ (v216 >> 5) ^ v217 ^ (4 * v217) ^ (32 * v217);
  v219 = *(&off_1010A0B50 + (v14 ^ 0x33B9)) - 1259533115;
  v220 = *&v219[4 * (BYTE2(v210) ^ 0x61)];
  v221 = *(&off_1010A0B50 + (v14 ^ 0x28CE)) - 1054187462;
  v222 = *(&off_1010A0B50 + v14 - 6567) - 793694363;
  v223 = *(&off_1010A0B50 + v14 - 4355) - 1954624215;
  v224 = *&v219[4 * (BYTE2(v218) ^ 0xD4)];
  v225 = v220 ^ (v220 >> 5) ^ (v220 >> 3) ^ *&v221[4 * (HIBYTE(v207) ^ 0x5E)] ^ __ROR4__(*&v222[4 * ((v215 ^ 0x11EF) >> 8)], 5) ^ *&v223[4 * (v218 ^ 0x80)];
  v226 = *&v219[4 * ((v215 ^ 0x55E211EFu) >> 16)];
  v227 = v226 ^ (v226 >> 5) ^ (v226 >> 3) ^ *&v221[4 * (HIBYTE(v210) ^ 0x90)] ^ __ROR4__(*&v222[4 * (BYTE1(v218) ^ 0x14)], 5) ^ *&v223[4 * (v207 ^ 0x92)];
  v228 = *&v221[4 * ((v215 ^ 0x55E211EFu) >> 24)] ^ 0x115E7A26;
  v229 = v224 ^ (v224 >> 5) ^ (v224 >> 3) ^ 0x6D3BFFE1;
  v230 = (-v228 ^ (v228 - ((2 * v228) & 0xB0BDE206) + 1482617091) ^ 0x585EF103 ^ (v229 - (v228 ^ v229))) + v229;
  v231 = *&v221[4 * (HIBYTE(v218) ^ 0x81)];
  v232 = *&v219[4 * (BYTE2(v207) ^ 0x5C)];
  v233 = *&v223[4 * (v210 ^ 0x4B)] ^ __ROR4__(*&v222[4 * (BYTE1(v207) ^ 0x52)], 5) ^ v230;
  v234 = (((v232 >> 5) ^ (v232 >> 3)) & 0xEF33696 ^ v232 & 0xCEF33696 ^ 0x318CC97B) & (v232 & 0x310CC969 ^ 0x31AF54D2 ^ ((v232 >> 5) ^ (v232 >> 3)) & 0x110CC969) | (((v232 >> 5) ^ (v232 >> 3)) & 0xEF33696 ^ v232 & 0xCEF33696) & 0xCE502204;
  v235 = v231 ^ __ROR4__(*&v222[4 * (BYTE1(v210) ^ 0x74)], 5) ^ *&v223[4 * (v215 ^ 0xED)];
  v236 = *(&off_1010A0B50 + (v14 ^ 0x2519)) - 1941433819;
  LOBYTE(v230) = v236[BYTE2(v225) ^ 0xD4] ^ ((BYTE2(v225) ^ 0x59) - (BYTE2(v225) ^ 0xBF));
  v237 = v235 ^ v234;
  *(a3 + v249) = v230 & 0xFB ^ 0x84 ^ (v230 & 4 | 0x30);
  *(a3 + v259) = ((BYTE2(v227) ^ 0x5F) - (BYTE2(v227) ^ 0xB9)) ^ 0xA8 ^ v236[BYTE2(v227) ^ 0xD2];
  v238 = *(&off_1010A0B50 + v14 - 7514) - 1212173798;
  *(a3 + v254) = (v238[HIBYTE(v225) ^ 0x7DLL] - 64) ^ 0x83;
  v239 = *(&off_1010A0B50 + (v14 ^ 0x254F)) - 515150907;
  *(a3 + *(v18 - 144)) = v239[v233 ^ 0xAALL] ^ 0x2B;
  v240 = *(&off_1010A0B50 + (v14 ^ 0x33BF)) - 1881758539;
  *(a3 + v251) = BYTE1(v237) ^ 0xA5 ^ v240[BYTE1(v237) ^ 0x3DLL];
  *(a3 + v255) = ((BYTE2(v233) ^ 0x23) - (BYTE2(v233) ^ 0xC5)) ^ 0xB7 ^ v236[BYTE2(v233) ^ 0xAELL];
  *(a3 + v252) = ((v236[BYTE2(v237) ^ 0xELL] ^ 0x82) + (BYTE2(v237) ^ 0x83) - (BYTE2(v237) ^ 0x65) - 2 * ((v236[BYTE2(v237) ^ 0xELL] ^ 2) & ((BYTE2(v237) ^ 0x83) - (BYTE2(v237) ^ 0x65)))) ^ 0x21;
  *(a3 + *(v18 - 160)) = v239[v225 ^ 0xC1] ^ 0x76;
  *(a3 + v256) = ((v238[(v235 ^ ~v234) >> 24] ^ 0xE) - 64) ^ 0x63;
  *(a3 + v250) = (v238[HIBYTE(v227) ^ 0x61] ^ 0x10) - 64;
  v241 = (v225 >> 8) ^ 0xFFFFFFD7 ^ v240[BYTE1(v225) ^ 0xEALL];
  *(a3 + *(v18 - 152)) = (((((v241 >> 4) | (16 * v241)) ^ 0x5E) >> 4) | (16 * (((v241 >> 4) | (16 * v241)) ^ 0x5E))) ^ 0x39;
  *(a3 + v258) = (v238[HIBYTE(v233) ^ 0xBELL] - 64) ^ 0x61;
  *(a3 + v257) = v239[(v235 ^ ((((v232 >> 5) ^ (v232 >> 3)) & 0x96 ^ v232 & 0x96 ^ 0x7B) & (v232 & 0x69 ^ 0xD2 ^ ((v232 >> 5) ^ (v232 >> 3)) & 0x69) | (((v232 >> 5) ^ (v232 >> 3)) & 0x96 ^ v232 & 0x96) & 4)) ^ 0x60] ^ 0x9F;
  *(a3 + *(v18 - 124)) = BYTE1(v227) ^ 0x32 ^ v240[BYTE1(v227) ^ 0xAALL];
  *(a3 + *(v18 - 136)) = BYTE1(v233) ^ v240[BYTE1(v233) ^ 0x6CLL] ^ 0x10;
  v242 = (((a2 ^ 0x666A1D24) - 1718230308) ^ ((a2 ^ 0xB3C32C70) + 1279054736) ^ ((a2 ^ 0x32C25B5) - 53224885)) + 1170624990;
  v243 = ((v242 ^ 0xA47AD831) + 885267236) ^ v242 ^ ((v242 ^ 0x8A2B00E0) + 446022643) ^ ((v242 ^ 0x3EAF1AD3) - 1374561854) ^ ((v242 ^ 0x7FBFFEEF) - 285131266);
  *(a3 + v253) = v239[v227 ^ 0xCCLL] ^ 0xE8;
  v244 = (((v243 ^ 0xBDF91FF6) - 71120890) ^ ((v243 ^ 0xBB938EF9) - 39298805) ^ ((v243 ^ 0x692BADE2) + 789608978)) - 638188609;
  v245 = HIDWORD(a14) ^ (v244 < 0x370EEDE);
  v246 = v244 < *(v18 - 120);
  if (v245)
  {
    v246 = HIDWORD(a14);
  }

  HIDWORD(v248) = v14 ^ 0xA0BE;
  return (*(a11 + 8 * ((2 * (v246 ^ 1)) | ((v246 ^ 1) << 6) | v14)))(v237, a1, v234, v239, a2, 99, 97, v235, a4, a5, a6, a7, a8, a9, a10, a11, a12, v248, a14, v249, v250, v251);
}

uint64_t sub_1001E8268()
{
  v5 = *(v1 + 40);
  v6 = *(v1 + 8);
  LODWORD(STACK[0x2A4]) = v0 + 9795;
  *(v4 - 112) = veorq_s8(*v5, xmmword_100F528D0);
  if (v2)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  v9 = *(v3 + 8 * ((500 * v8) ^ v0));
  LODWORD(STACK[0x298]) = -42900;
  return v9();
}

uint64_t sub_1001E8328()
{
  v4 = v0 ^ 0xA6BA;
  v5 = v1 >> ((((v4 - 16) & 0xDE) + 87) ^ 0x37);
  v6 = *(v3 + 4 * ((0x9ED10ECD % v5) & 0x3FFFFFFC));
  LOWORD(v5) = ~*(v3 + 4 * (v6 & (v5 - 1)));
  v7 = *(&off_1010A0B50 + v4 - 33520);
  v8 = *(v7 - 527405895);
  v9 = *(&off_1010A0B50 + (v4 ^ 0x971D)) + 4 * v8;
  v10 = *(v9 - 1940437438);
  v12 = v5 & (~v6 >> 16);
  v11 = v12 == 0;
  v13 = v12 + v12 * v10;
  if (v11)
  {
    v14 = *(v9 - 1940437438);
  }

  else
  {
    v14 = 0;
  }

  *(v9 - 1940437438) = (v13 + v14) * v10;
  *(v7 - 527405895) = (v8 + 1) % 6u;
  v15 = !v11;
  return (*(v2 + 8 * ((58 * v15) ^ v4)))();
}

uint64_t sub_1001E842C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = (*(a8 + 8 * (v8 ^ 0xE71E)))(v10);
  v13 = STACK[0x2F0];
  *(v11 - 216) = 0;
  v14 = *(v13 + 8 * v8);
  STACK[0x278] = v9;
  return v14(v12);
}

uint64_t sub_1001E846C@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  *(a2 + v9) = a1;
  v11 = ((v10 + v6) ^ v7) + v3 < (*(v4 + 4) % ((v10 - 41) ^ v8) + 10) * v5 + 9;
  return (*(v2 + 8 * ((v11 | (v11 << 6)) ^ v10)))();
}

uint64_t sub_1001E84C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, int a42, uint64_t a43, uint64_t a44)
{
  v50 = v47 & 0xFFFFFFF9 ^ (v46 + 283208511);
  *(v49 - 212) = v50;
  v51 = v47 & 0xFFFFFFFC ^ 0x10E191F7;
  *(v49 - 144) = v51;
  v52 = v47;
  LOBYTE(v51) = *(a18 + (*(v48 + v51) ^ 0xE3));
  v53 = v47 & 0xFFFFFFF8 ^ 0x10E191F7;
  *(v49 - 192) = v53;
  v54 = (112 * (v51 - 72)) ^ (v51 - 72);
  LOBYTE(v51) = *(a18 + (*(v48 + v53) ^ 0x58)) - 72;
  v55 = v47 & 0xFFFFFFFA ^ 0x10E191F7;
  *(v49 - 184) = v55;
  v56 = *(v48 + v55);
  v57 = v47 & 0xFFFFFFFE ^ 0x10E191F7;
  *(v49 - 160) = v57;
  v58 = *(v48 + v57);
  v59 = (112 * v51) ^ v51;
  v60 = v47 & 0xFFFFFFF2 ^ 0x10E191FFLL;
  *(v49 - 152) = v60;
  v61 = *(a21 + 4 * (v58 ^ 0x70));
  v62 = (v58 ^ 0xD329A1EA) + (v58 ^ 0x9F);
  v63 = v47 & 0xFFFFFFF6 ^ 0x10E191FFLL;
  *(v49 - 168) = v63;
  v64 = *(v48 + v63);
  v65 = *(v48 + v60);
  v66 = v47 & 0xFFFFFFF0 ^ 0x10E191FFLL;
  *(v49 - 256) = v66;
  LOBYTE(v51) = *(a18 + (*(v48 + v66) ^ 0x38)) - 72;
  v67 = v47 & 0xFFFFFFF4 ^ 0x10E191FFLL;
  *(v49 - 176) = v67;
  v68 = (112 * v51) ^ v51;
  v213 = v47 & 0xFFFFFFFD ^ 0x10E191F6;
  LOBYTE(v51) = *(a18 + (*(v48 + v67) ^ 0xAFLL)) - 72;
  v69 = *(v48 + v213);
  v70 = v47 ^ 0x10E191F6;
  *(v49 - 224) = v70;
  v71 = v44 ^ HIDWORD(a40) ^ v61;
  v72 = *(v48 + v70);
  v73 = *(v48 + v50);
  v74 = v71 ^ v62 ^ *(a19 + 4 * (v69 ^ 0x26)) ^ *(a20 + 4 * (v72 ^ 0xD0));
  v75 = v72 ^ 0x23;
  v76 = v74 ^ v54 ^ ((v72 ^ 0x23) + 890074108);
  v77 = *(a19 + 4 * (v73 ^ 0x7D));
  v78 = v52 & 0xFFFFFFFB ^ 0x10E191F6;
  *(v49 - 248) = v78;
  v79 = *(v48 + v78);
  LODWORD(v72) = v45 ^ HIDWORD(a27) ^ v73 ^ *(a20 + 4 * (v79 ^ 0x7C)) ^ v77 ^ ((v79 ^ 0x8F) + 890074108) ^ *(a21 + 4 * (v56 ^ 0x86)) ^ ((v56 ^ 0xD329A11C) + (v56 ^ 0x69));
  v80 = v52 & 0xFFFFFFF5 ^ 0x10E191FELL;
  *(v49 - 208) = v80;
  v212 = v52 & 0xFFFFFFF7 ^ 0x10E191FELL;
  v81 = *(a21 + 4 * (v64 ^ 0x9B)) ^ ((v64 ^ 0xD329A101) + (v64 ^ 0x74));
  v82 = *(v48 + v212);
  v83 = HIDWORD(a39) ^ *(v49 - 240) ^ *(v48 + v80) ^ *(a19 + 4 * (*(v48 + v80) ^ 0xD5)) ^ v81 ^ *(a20 + 4 * (v82 ^ 0x26)) ^ (v82 ^ 0xD5 | 0x2CEDC800);
  *(v49 - 228) = v52;
  v84 = v52 & 0xFFFFFFF3 ^ 0x10E191FELL;
  *(v49 - 240) = v84;
  LODWORD(v51) = v83 ^ ((112 * v51) ^ v51);
  LOBYTE(v83) = *(v48 + v84);
  LODWORD(v56) = v51 ^ ((v82 ^ 0xD5) + 890074108) ^ 0x12E0EEFE;
  LOBYTE(v51) = v83 ^ (((v46 + 72) & 0xAD) + 93);
  v85 = *(a20 + 4 * (v83 ^ 0xF9u));
  v86 = *(a21 + 4 * (v65 ^ 0xA8));
  LODWORD(v51) = a40 ^ *(v49 - 200) ^ v51 ^ (v51 + 890074108);
  v87 = v52 & 0xFFFFFFF1 ^ 0x10E191FELL;
  *(v49 - 200) = v87;
  v88 = v51 ^ v85 ^ ((v65 ^ 0xD329A132) + (v65 ^ 0x47)) ^ v86 ^ *(v48 + v87) ^ *(a19 + 4 * (*(v48 + v87) ^ 0xC3)) ^ 0x364BBE5;
  v89 = *(&off_1010A0B50 + v46 - 5169) - 23141546;
  v90 = *(&off_1010A0B50 + v46 - 6939) - 936829666;
  v91 = v69 ^ v75 ^ 0xBFF08B4B ^ v76;
  v92 = *(&off_1010A0B50 + (v46 ^ 0x277D)) - 1390142278;
  v93 = *(&off_1010A0B50 + (v46 ^ 0x2148)) - 953280359;
  HIDWORD(v94) = *&v93[4 * ((v69 ^ v75) ^ 0x4B ^ v76)];
  LODWORD(v94) = HIDWORD(v94);
  v95 = *&v89[4 * BYTE2(v56)] ^ HIDWORD(a25) ^ (*&v90[4 * (BYTE3(v72) ^ 0x56)] + 833971055) ^ (*&v92[4 * BYTE1(v88)] + 687330536) ^ (v94 >> 3) ^ ((v94 >> 3) >> 3) ^ ((v94 >> 3) >> 4);
  LODWORD(v82) = (*&v90[4 * BYTE3(v56)] + 833971055) ^ *&v89[4 * BYTE2(v88)];
  LODWORD(v79) = v79 ^ 1 ^ (v72 ^ v59);
  HIDWORD(v94) = *&v93[4 * (v88 ^ v68)];
  LODWORD(v94) = HIDWORD(v94);
  v96 = a17 ^ *&v89[4 * (BYTE2(v72) ^ 0x6A)] ^ (*&v90[4 * HIBYTE(v91)] + 833971055) ^ (*&v92[4 * BYTE1(v56)] + 687330536) ^ (v94 >> 3) ^ ((v94 >> 3) >> 3) ^ ((v94 >> 3) >> 4);
  HIDWORD(v94) = *&v93[4 * v79];
  LODWORD(v94) = HIDWORD(v94);
  v97 = (v94 >> 3) ^ a39 ^ ((v94 >> 3) >> 4) ^ ((v94 >> 3) >> 3) ^ (*&v92[4 * (BYTE1(v76) ^ 0xC)] + 687330536) ^ ((v82 & 0x1B616FA2 ^ 0x5B837CAC) & (v82 & 0xE49E905D ^ 0x5F7D7FFB) | v82 & 0xA41C8051);
  HIDWORD(v94) = *&v93[4 * v56];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v56) = *&v89[4 * BYTE2(v91)] ^ HIDWORD(a38) ^ (*&v90[4 * HIBYTE(v88)] + 833971055) ^ (*&v92[4 * (BYTE1(v72) ^ 0xAF)] + 687330536) ^ (v94 >> 3) ^ ((v94 >> 3) >> 3) ^ ((v94 >> 3) >> 4);
  v98 = HIBYTE(v95) ^ 0x30;
  LODWORD(v82) = v98 - ((2 * v98) & 0x136);
  v99 = -v98 ^ (106 - (HIBYTE(v95) ^ 0x5A));
  v100 = v56 ^ 0x9A328B7B;
  HIDWORD(v94) = *&v93[4 * (v95 ^ 0x3B)];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v69) = v94 >> 3;
  LODWORD(v79) = a41 ^ (*&v90[4 * (HIBYTE(v97) ^ 0x67)] + 833971055) ^ (*&v92[4 * ((v96 ^ 0x55F1) >> 8)] + 687330536) ^ *&v89[4 * ((((v56 ^ 0x9A328B7B) >> 16) - (((v56 ^ 0x9A328B7B) >> 16) ^ 0xAD)) ^ 0xFFFFFFFE) + 4 * ((v56 ^ 0x9A328B7B) >> 16)] ^ v69 ^ (v69 >> 3) ^ (v69 >> 4);
  HIDWORD(v94) = *&v93[4 * (v56 ^ 0x44)];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v56) = *&v89[4 * (BYTE2(v95) ^ 0xC9)] ^ a38 ^ (*&v90[4 * (HIBYTE(v96) ^ 0x75)] + 833971055) ^ (v94 >> 3) ^ (*&v92[4 * (BYTE1(v97) ^ 0x7D)] + 687330536) ^ ((v94 >> 3) >> 3) ^ ((v94 >> 3) >> 4);
  HIDWORD(v94) = *&v93[4 * (v96 ^ 0xF1)];
  LODWORD(v94) = HIDWORD(v94);
  v101 = *&v89[4 * (BYTE2(v97) ^ 0x58)] ^ HIDWORD(a37) ^ (*&v92[4 * BYTE1(v100)] + 687330536) ^ (v94 >> 3) ^ (*&v90[4 * (v99 ^ 0xA2478C9B ^ (v82 - 1572369253)) + 424] + 833971055) ^ ((v94 >> 3) >> 3) ^ ((v94 >> 3) >> 4);
  v102 = (v79 ^ 0x25AF05EE) + a13 - 2 * ((v79 ^ 0x25AF05EE) & a13);
  LODWORD(v79) = *&v92[4 * (BYTE1(v95) ^ 0x1E)] + 687330536;
  HIDWORD(v94) = *&v93[4 * (v97 ^ 0xD2)];
  LODWORD(v94) = HIDWORD(v94);
  v103 = v102 ^ 0x568857F8;
  v104 = a37 ^ *&v89[4 * (BYTE2(v96) ^ 0xB7)] ^ (*&v90[4 * HIBYTE(v100)] + 833971055) ^ v79 ^ (v94 >> 3) ^ ((v94 >> 3) >> 3) ^ ((v94 >> 3) >> 4) ^ 0xE68579C7;
  HIDWORD(v94) = *&v93[4 * ((a37 ^ v89[4 * (BYTE2(v96) ^ 0xB7)] ^ (v90[4 * HIBYTE(v100)] + 111) ^ v79 ^ (v94 >> 3) ^ ((v94 >> 3) >> 3) ^ ((v94 >> 3) >> 4)) ^ 0xC7)];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v72) = *&v89[4 * (BYTE2(v101) ^ 0xEE)] ^ a26 ^ (*&v90[4 * (BYTE3(v56) ^ 0xA5)] + 833971055) ^ (v94 >> 3) ^ (*&v92[4 * ((v102 ^ 0x57F8) >> 8)] + 687330536) ^ ((v94 >> 3) >> 3) ^ ((v94 >> 3) >> 4);
  HIDWORD(v94) = *&v93[4 * (v101 ^ 0xF9)];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v82) = v94 >> 3;
  v105 = *&v89[4 * (BYTE2(v104) - ((v104 >> 15) & 0x15A)) + 692] ^ a36 ^ (*&v92[4 * (BYTE1(v56) ^ 0x65)] + 687330536) ^ v82 ^ (*&v90[4 * ((v102 ^ 0x568857F8u) >> 24)] + 833971055);
  v106 = HIBYTE(v101);
  HIDWORD(v94) = *&v93[4 * (v56 ^ 0x3A)];
  LODWORD(v94) = HIDWORD(v94);
  v107 = *&v89[4 * BYTE2(v103)] ^ HIDWORD(a36) ^ (*&v90[4 * (HIBYTE(v101) ^ 0x40)] + 833971055) ^ (*&v92[4 * BYTE1(v104)] + 687330536) ^ (v94 >> 3) ^ ((v94 >> 3) >> 3) ^ ((v94 >> 3) >> 4);
  HIDWORD(v94) = *&v93[4 * v103];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v79) = v94 >> 3;
  LODWORD(v69) = (v79 >> 4) ^ (v79 >> 3);
  v108 = *&v89[4 * (BYTE2(v56) ^ 0x7C)] ^ HIDWORD(a35) ^ (*&v90[4 * HIBYTE(v104)] + 833971055) ^ (*&v92[4 * (BYTE1(v101) ^ 0xF3)] + 687330536) ^ v79 ^ v69;
  v109 = (v107 ^ 0x4B8885BD) >> (v69 & 0x10 ^ 0x10) >> (v69 & 0x10);
  LODWORD(v56) = v105 ^ (v82 >> 3);
  v110 = v56 ^ (v82 >> 4) ^ 0x95EA5E49;
  HIDWORD(v94) = *&v93[4 * (v72 ^ 0xB4)];
  LODWORD(v94) = HIDWORD(v94);
  v111 = *&v89[4 * BYTE2(v110)] ^ HIDWORD(a24) ^ (*&v90[4 * (HIBYTE(v107) ^ 0x21)] + 833971055) ^ (*&v92[4 * (BYTE1(v108) ^ 0x66)] + 687330536) ^ (v94 >> 3) ^ ((v94 >> 3) >> 3) ^ ((v94 >> 3) >> 4);
  v112 = *&v90[4 * ((v56 ^ ~(v82 >> 4)) >> 24)];
  HIDWORD(v94) = *&v93[4 * ((v56 ^ (v82 >> 4)) ^ 0x49)];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v56) = *&v89[4 * (BYTE2(v72) ^ 6)] ^ a34 ^ (*&v90[4 * (HIBYTE(v108) ^ 0xFB)] + 833971055) ^ (v94 >> 3) ^ (*&v92[4 * (BYTE1(v107) ^ 2)] + 687330536) ^ ((v94 >> 3) >> 3) ^ ((v94 >> 3) >> 4);
  HIDWORD(v94) = *&v93[4 * (v107 ^ 0x82)];
  LODWORD(v94) = HIDWORD(v94);
  v113 = *&v89[4 * (BYTE2(v108) ^ 0x2A)] ^ HIDWORD(a34) ^ (v112 + 833971055) ^ (*&v92[4 * (BYTE1(v72) ^ 0x3A)] + 687330536) ^ (v94 >> 3) ^ ((v94 >> 3) >> 3) ^ ((v94 >> 3) >> 4);
  HIDWORD(v94) = *&v93[4 * (v108 ^ 0x33)];
  LODWORD(v94) = HIDWORD(v94);
  v114 = a35 ^ (*&v90[4 * (BYTE3(v72) ^ 0x60)] + 833971055) ^ (*&v92[4 * BYTE1(v110)] + 687330536) ^ *&v89[4 * (v109 ^ 0xAD)] ^ (v94 >> 3) ^ ((v94 >> 3) >> 3) ^ ((v94 >> 3) >> 4) ^ 0xF29D4417;
  HIDWORD(v94) = *&v93[4 * (v113 ^ 0xE5)];
  LODWORD(v94) = HIDWORD(v94);
  v115 = *&v89[4 * BYTE2(v114)] ^ a27 ^ (*&v90[4 * (BYTE3(v56) ^ 0x5F)] + 833971055) ^ (*&v92[4 * ((v111 ^ 0x970A) >> 8)] + 687330536) ^ (v94 >> 3) ^ ((v94 >> 3) >> 3) ^ ((v94 >> 3) >> 4);
  HIDWORD(v94) = *&v93[4 * (v56 ^ 0xC9)];
  LODWORD(v94) = HIDWORD(v94);
  v116 = *&v89[4 * (BYTE2(v111) ^ 0x26)] ^ a25 ^ (*&v92[4 * (BYTE1(v113) ^ 0x8F)] + 687330536) ^ (*&v90[4 * HIBYTE(v114)] + 833971055) ^ (v94 >> 3) ^ ((v94 >> 3) >> 3) ^ ((v94 >> 3) >> 4);
  HIDWORD(v94) = *&v93[4 * v114];
  LODWORD(v94) = HIDWORD(v94);
  v117 = HIDWORD(a16) ^ *&v89[4 * (BYTE2(v113) ^ 0x5F)] ^ (*&v90[4 * ((v111 ^ 0x848B970A) >> 24)] + 833971055) ^ (*&v92[4 * (BYTE1(v56) ^ 0xB4)] + 687330536) ^ (v94 >> 3) ^ ((v94 >> 3) >> 3) ^ ((v94 >> 3) >> 4);
  HIDWORD(v94) = *&v93[4 * (v111 ^ 0xA)];
  LODWORD(v94) = HIDWORD(v94);
  v118 = HIDWORD(a33) ^ *&v89[4 * (BYTE2(v56) ^ 0xF)] ^ (*&v90[4 * (HIBYTE(v113) ^ 0x9C)] + 833971055) ^ (*&v92[4 * BYTE1(v114)] + 687330536);
  v119 = v116 ^ 0xC5A49067;
  v120 = v118 ^ (v94 >> 3) ^ ((v94 >> 3) >> 3) ^ ((v94 >> 3) >> 4);
  v121 = BYTE1(v117) ^ 0xFB;
  HIDWORD(v94) = *&v93[4 * (v115 ^ 0x17)];
  LODWORD(v94) = HIDWORD(v94);
  LODWORD(v72) = v94 >> 3;
  v122 = (v72 >> 4) ^ (v72 >> 3);
  LODWORD(v94) = __ROR4__(v120 ^ 0xC4D3A561, 6) ^ 0x3F3B21AA;
  HIDWORD(v94) = v94;
  v123 = v94 >> 26;
  v124 = *&v89[4 * ((v117 ^ 0x6944FB0A) >> 16)] ^ (*&v90[4 * ((v116 ^ 0xC5A49067) >> 24)] + 833971055) ^ v72 ^ (*&v92[4 * ((v123 ^ 0xE862) >> 8)] + 687330536);
  v211 = *(v49 - 136) < 0xF3B7A9C2;
  v125 = v122 & 0x1000000;
  v126 = (v122 & 0x1000000 & ~v124) == 0;
  v127 = v124 ^ 0xD571B6A3;
  if (!v126)
  {
    v125 = -v125;
  }

  v128 = v122 & 0xFEFFFFFF ^ a28 ^ (v125 + v127);
  v129 = v115 ^ 0x24DC0A28;
  HIDWORD(v130) = *&v93[4 * (v117 ^ 0xA)];
  LODWORD(v130) = HIDWORD(v130);
  v131 = a16 ^ *&v89[4 * ((v115 ^ 0x24DC0A28u) >> 16)] ^ (*&v92[4 * (BYTE1(v116) ^ 0x17)] + 687330536) ^ (v130 >> 3) ^ (*&v90[4 * ((v123 ^ 0xBC9DE862) >> 24)] + 833971055) ^ ((v130 >> 3) >> 3) ^ ((v130 >> 3) >> 4);
  HIDWORD(v130) = *&v93[4 * v119];
  LODWORD(v130) = HIDWORD(v130);
  v132 = *&v89[4 * (BYTE2(v123) ^ 0x30)] ^ a33 ^ (*&v90[4 * (HIBYTE(v117) ^ 3)] + 833971055) ^ (*&v92[4 * (((v115 ^ 0xA28) >> 8) ^ 0x87)] + 687330536) ^ (v130 >> 3) ^ ((v130 >> 3) >> 3) ^ ((v130 >> 3) >> 4);
  v133 = ((v131 ^ 0x10D0D9EF) & 0x40D873E4 ^ 0x62D76415) & ((v131 ^ 0x10D0D9EF) & 0xBF278C1B ^ 0x7AFE77FD) | (v131 ^ 0x10D0D9EF) & 0x9D20880A;
  HIDWORD(v130) = *&v93[4 * (v123 ^ 0x62)];
  LODWORD(v130) = HIDWORD(v130);
  v134 = HIDWORD(a32) ^ *&v89[4 * BYTE2(v119)] ^ (*&v90[4 * HIBYTE(v129)] + 833971055) ^ (*&v92[4 * v121] + 687330536) ^ (v130 >> 3) ^ ((v130 >> 3) >> 3) ^ ((v130 >> 3) >> 4) ^ 0x8FA24780;
  v135 = *&v93[4 * v134];
  v136 = ((((v135 ^ 0xFFFCBB22) << (v106 & 0x1D ^ 8)) - ((2 * ((v135 ^ 0xFFFCBB22) << (v106 & 0x1D ^ 8))) & 0x988F4F38) - 867719268) ^ 0xCC47A79C) << (~v106 & 0x15) << (v106 & 8);
  v137 = ((v135 >> 3) ^ 0x7DF4353) & ~v136 | v136 & 0xE7DF2BC8;
  HIDWORD(v130) = *&v93[4 * (v133 ^ 0x41)];
  LODWORD(v130) = HIDWORD(v130);
  v138 = *&v89[4 * (BYTE2(v128) ^ 0xB5)] ^ HIDWORD(a26) ^ (*&v92[4 * ((v132 ^ 0xF7D7) >> 8)] + 687330536) ^ (*&v90[4 * HIBYTE(v134)] + 833971055) ^ (v130 >> 3) ^ ((v130 >> 3) >> 3) ^ ((v130 >> 3) >> 4);
  v139 = (*&v90[4 * (HIBYTE(v128) ^ 0x6C)] + 833971055) ^ a32 ^ *&v89[4 * (((v132 ^ 0xB79F7D7) >> 16) - (((v132 ^ 0xB79F7D7) >> 15) & 0x15A)) + 692] ^ (*&v92[4 * (BYTE1(v133) ^ 0x5F)] + 687330536) ^ v137 ^ (v137 >> 3) ^ (v137 >> 4);
  HIDWORD(v130) = *&v93[4 * (v128 ^ 0xF4)];
  LODWORD(v130) = HIDWORD(v130);
  v140 = *&v89[4 * (BYTE2(v133) ^ 0xA8)] ^ HIDWORD(a31) ^ (*&v90[4 * (HIBYTE(v132) ^ 0x61)] + 833971055) ^ (*&v92[4 * (BYTE1(v134) ^ 0x87)] + 687330536) ^ (v130 >> 3) ^ ((v130 >> 3) >> 3) ^ ((v130 >> 3) >> 4);
  HIDWORD(v130) = *&v93[4 * (v132 ^ 0xD7)];
  LODWORD(v130) = HIDWORD(v130);
  v141 = *&v89[4 * BYTE2(v134)] ^ HIDWORD(a30) ^ (*&v92[4 * (BYTE1(v128) ^ 0x5D)] + 687330536) ^ (v130 >> 3) ^ (*&v90[4 * (__ROR4__((-((v133 >> 9) & 0x7F8000 ^ 0x688000) ^ (-110369565 - ((v133 >> 9) & 0x7F8000 ^ 0xF90364E3)) ^ 0x40F30824 ^ (((v133 >> 9) & 0x7F8000 ^ 0x688000) - ((2 * ((v133 >> 9) & 0x7F8000 ^ 0x688000)) & 0xE60000) + 1089669156)) - 110369565, 15) ^ 0xC9C7F2BD)] + 833971055) ^ ((v130 >> 3) >> 3) ^ ((v130 >> 3) >> 4);
  v142 = *&v89[4 * ((v138 ^ 0x2082E474u) >> 16)] ^ 0x8A8E21C7;
  v143 = *&v90[4 * (HIBYTE(v141) ^ 7)] + 833971055;
  v144 = v143 + v142 - 2 * (v143 & v142);
  HIDWORD(v130) = *&v93[4 * (v139 ^ 0x77)];
  LODWORD(v130) = HIDWORD(v130);
  v145 = (*&v90[4 * (HIBYTE(v140) ^ 0xBA)] + 833971055) ^ a24 ^ (*&v92[4 * (BYTE1(v138) ^ 0x63)] + 687330536) ^ (v130 >> 3) ^ *&v89[4 * (BYTE2(v141) ^ 0xD0)] ^ ((v130 >> 3) >> 3) ^ ((v130 >> 3) >> 4);
  HIDWORD(v130) = *&v93[4 * (v138 ^ 0x74)];
  LODWORD(v130) = HIDWORD(v130);
  v146 = (*&v90[4 * (HIBYTE(v139) ^ 0xD5)] + 833971055) ^ a31 ^ *&v89[4 * (BYTE2(v140) ^ 0x14)] ^ (v130 >> 3) ^ ((v130 >> 3) >> 3) ^ ((v130 >> 3) >> 4) ^ (*&v92[4 * (BYTE1(v141) ^ 0x62)] + 687330536);
  HIDWORD(v130) = *&v93[4 * (v141 ^ 0x8C)];
  LODWORD(v130) = HIDWORD(v130);
  v147 = *&v89[4 * (BYTE2(v139) ^ 0x6A)] ^ HIDWORD(a28) ^ (*&v90[4 * ((v138 ^ 0x2082E474u) >> 24)] + 833971055) ^ (*&v92[4 * (BYTE1(v140) ^ 0xBB)] + 687330536) ^ (v130 >> 3) ^ ((v130 >> 3) >> 3) ^ ((v130 >> 3) >> 4);
  HIDWORD(v130) = *&v93[4 * (v140 ^ 0x10)];
  LODWORD(v130) = HIDWORD(v130);
  v148 = *&v90[4 * ((v146 ^ 0xDE100F9u) >> 24)];
  v149 = (*&v92[4 * (BYTE1(v139) ^ 0x64)] + 687330536) ^ a30 ^ (v130 >> 3) ^ ((v130 >> 3) >> 3) ^ ((v130 >> 3) >> 4) ^ v144;
  v150 = (v148 - ((2 * v148 + 1667942110) & 0xAC44DEA2) + 131584704) ^ __ROR4__(__ROR4__(*&v89[4 * (BYTE2(v145) ^ 0x41)], 28) ^ 0xF45621BD, 4) ^ 0x3B8D41C1;
  v151 = *&v92[4 * ((((*&v92[4 * (BYTE1(v139) ^ 0x64)] - 11032) ^ a30 ^ (v130 >> 3) ^ ((v130 >> 3) >> 3) ^ ((v130 >> 3) >> 4) ^ v144) >> 8) ^ 0xF8)] + 687330536;
  if ((v150 & 0x80 & (v92[4 * ((((*&v92[4 * (BYTE1(v139) ^ 0x64)] - 11032) ^ a30 ^ (v130 >> 3) ^ ((v130 >> 3) >> 3) ^ ((v130 >> 3) >> 4) ^ v144) >> 8) ^ 0xF8)] - 24)) != 0)
  {
    v152 = -(v150 & 0x80);
  }

  else
  {
    v152 = v150 & 0x80;
  }

  v153 = *&v90[4 * ((v145 ^ 0xCFECE156) >> 24)];
  v154 = v152 + v151;
  v155 = *&v90[4 * (HIBYTE(v147) ^ 0x60)];
  HIDWORD(v156) = *&v93[4 * (v147 ^ 0x31)];
  LODWORD(v156) = HIDWORD(v156);
  v157 = *&v89[4 * (BYTE2(v149) ^ 0xAB)];
  v158 = a42 ^ (v156 >> 3) ^ ((v156 >> 3) >> 4) ^ ((v156 >> 3) >> 3) ^ v150 & 0xFFFFFF7F ^ 0xF6E3B82F ^ v154;
  HIDWORD(v156) = *&v93[4 * (v145 ^ 0x69)];
  LODWORD(v156) = HIDWORD(v156);
  v159 = a15 ^ (*&v90[4 * (HIBYTE(v149) ^ 0x3A)] + 833971055) ^ *&v89[4 * (BYTE2(v147) ^ 0xCB)] ^ (*&v92[4 * BYTE1(v146)] + 687330536) ^ (v156 >> 3) ^ ((v156 >> 3) >> 3) ^ ((v156 >> 3) >> 4) ^ 0x31B5451C;
  v160 = v159 + HIDWORD(a15) - 2 * (v159 & HIDWORD(a15));
  HIDWORD(v156) = *&v93[4 * (v146 ^ 0xF9)];
  LODWORD(v156) = HIDWORD(v156);
  v161 = v156 >> 3;
  HIDWORD(v156) = *&v93[4 * (v149 ^ 0xA2)];
  LODWORD(v156) = HIDWORD(v156);
  v162 = *&v89[4 * (BYTE2(v146) ^ 0xE1)] ^ a29 ^ (*&v92[4 * ((v145 ^ 0xE156) >> 8)] + 687330536) ^ (v156 >> 3) ^ (v155 + 833971055) ^ ((v156 >> 3) >> 3) ^ ((v156 >> 3) >> 4);
  v163 = HIDWORD(a29) ^ v157 ^ (v153 + 833971055) ^ v161 ^ (*&v92[4 * (BYTE1(v147) ^ 0x5D)] + 687330536) ^ (v161 >> 3) ^ (v161 >> 4);
  v164 = v160 ^ 0x935F663C;
  v165 = v46;
  v166 = *(&off_1010A0B50 + v46 - 8834) - 2084901251;
  v167 = *&v166[4 * BYTE1(v164)];
  v168 = -1850718175 * v167 - 1676601087 - 731190080 * v167;
  v169 = a14 ^ ((HIDWORD(a14) ^ (v158 - (v158 ^ HIDWORD(a17)))) + v158);
  v170 = v163 ^ 0xE34BB008;
  v171 = *(&off_1010A0B50 + (v46 ^ 0x2B63)) - 318467818;
  v172 = *&v171[4 * HIBYTE(v169)];
  v209 = *&v171[4 * HIBYTE(v170)];
  v210 = *&v171[4 * (HIBYTE(v160) ^ 0x6F)];
  v173 = *&v171[4 * (HIBYTE(v162) ^ 0x6B)];
  v174 = *(&off_1010A0B50 + (v46 ^ 0x3495)) - 1069641774;
  v175 = ((v162 ^ 0xBD5128A3) >> 16);
  v176 = (731190080 * v167 - (-1850718175 * v167 - 1676601087)) ^ (-734346787 - (v168 ^ 0xD43AC1DD)) ^ 0x73A75F9B ^ (v168 - 2 * (v168 & 0x73A75F9F ^ (33 * v167 + 1) & 4) + 1940348827);
  v177 = *&v166[4 * (((v162 ^ 0x28A3) >> 8) ^ 0x3A)];
  v178 = (1278634434 * v167 + 941765122) | 0xA2E170AC;
  v179 = v178 ^ v168;
  v180 = v168 & 0x2BC53E22;
  v181 = *(&off_1010A0B50 + (v46 ^ 0x2133)) - 565438394;
  v182 = v180 | v178 & 0x543A8158;
  HIDWORD(v156) = v173;
  LODWORD(v156) = v173;
  v183 = v156 >> 21;
  v184 = v183 ^ 0x689221BD;
  v185 = (v183 ^ (4 * (v183 ^ 0x689221BD)) ^ 0xF9F92F77) << (v179 & 2) << (v179 & 2 ^ 3);
  v186 = *&v181[4 * (v170 ^ 0x2E)];
  LODWORD(v156) = __ROR4__(v172, 21);
  v187 = *&v181[4 * (v162 ^ 0x2A)] ^ 0x92306F00;
  v188 = HIDWORD(a13) ^ BYTE2(v170) ^ v156 ^ 0xE6AB71EF ^ (8 * (v156 ^ 0xE6AB71EF)) ^ (32 * (v156 ^ 0xE6AB71EF)) ^ *&v174[4 * (BYTE2(v170) ^ 0xC0)] ^ v182 ^ v179 & 0x2BC53E22 ^ v187 ^ (608285196 * v187) ^ (v176 - 734346787);
  LODWORD(v156) = __ROR4__(v209, 21);
  v189 = *&v174[4 * (BYTE2(v164) ^ 0xC0)] ^ HIDWORD(a23) ^ BYTE2(v164) ^ v156 ^ 0x93C83DE8 ^ (8 * (v156 ^ 0x93C83DE8)) ^ (32 * (v156 ^ 0x93C83DE8)) ^ *&v181[4 * v169] ^ (1713059041 * v177 - 1676601087) ^ ((1278634434 * v177 + 941765122) | 0xA2E170AC) ^ (608285196 * (*&v181[4 * v169] ^ 0x12306F00));
  v190 = *&v181[4 * (v160 ^ 0x3C)] ^ 0x92306F00;
  LODWORD(v156) = __ROR4__(v210, 21);
  v191 = BYTE2(v169) ^ HIDWORD(a22) ^ v184 ^ (1713059041 * *&v166[4 * BYTE1(v170)] - 1676601087) ^ v190 ^ ((1278634434 * *&v166[4 * BYTE1(v170)] + 941765122) | 0xA2E170AC) ^ *&v174[4 * (BYTE2(v169) ^ 0xC0)] ^ (608285196 * v190) ^ v185;
  v192 = v175 ^ a23 ^ *&v174[4 * (v175 ^ 0xA8)] ^ v156 ^ 0x84D170EF ^ (8 * (v156 ^ 0x84D170EF)) ^ (32 * (v156 ^ 0x84D170EF)) ^ v186 ^ (1713059041 * *&v166[4 * BYTE1(v169)] - 1676601087) ^ (608285196 * (v186 ^ 0x12306F00)) ^ (1278634434 * *&v166[4 * BYTE1(v169)] + 941765122) & 0x5D1E8F52;
  v193 = *(&off_1010A0B50 + (v165 ^ 0x23D8)) - 1032273527;
  *(a43 + *(v49 - 256)) = ((v191 ^ 0x96) - 9) & (v193[v191 ^ 0x69] ^ 0x3C) ^ 0xC4 ^ (((v191 ^ 0x96) - 9) & 0x3B | (8 - (v191 ^ 0x96)) & (v193[v191 ^ 0x69] ^ 0xF8));
  v194 = *(&off_1010A0B50 + v165 - 8625) - 1486853674;
  *(a43 + v213) = v194[BYTE1(v188) ^ 0x8FLL] ^ 0x87;
  *(a43 + *(v49 - 192)) = ((v189 ^ 0x66) - 9) ^ 5 ^ v193[v189 ^ 0x99];
  v195 = *(&off_1010A0B50 + v165 - 7133) - 1163153846;
  LOBYTE(v185) = v195[HIBYTE(v192) ^ 0xDLL] - 83;
  *(a43 + v212) = (-(v185 ^ 0x77) ^ (((v185 >> 6) ^ (v185 >> 3)) - (v185 ^ 0x77 ^ (v185 >> 6) ^ (v185 >> 3))) ^ ((v185 ^ 0x77) - ((2 * (v185 ^ 0x77)) & 0x60) + 48) ^ 0x30) + ((v185 >> 6) ^ (v185 >> 3));
  v196 = *(&off_1010A0B50 + v165 - 8449) - 418107386;
  v197 = v196[BYTE2(v189) ^ 0x3ELL] - 110;
  *(a43 + *(v49 - 184)) = v197 ^ (v197 >> 4) & 6 ^ 0xF1;
  LOBYTE(v197) = v195[BYTE3(v189) ^ 0x72] - 83;
  *(a43 + *(v49 - 248)) = v197 ^ (v197 >> 6) ^ ((v197 >> 3) | 0x80) ^ 0xD8;
  *(a43 + *(v49 - 224)) = (v195[HIBYTE(v188) ^ 0x5BLL] - 83) ^ ((v195[HIBYTE(v188) ^ 0x5BLL] - 83) >> 6) ^ ((v195[HIBYTE(v188) ^ 0x5BLL] - 83) >> 3) ^ 0x5A;
  v198 = v196[BYTE2(v188) ^ 0x43] - 110;
  *(a43 + *(v49 - 160)) = v198 ^ 0x9D ^ (v198 >> 4) & 6;
  *(a43 + *(v49 - 212)) = v194[BYTE1(v189) ^ 0x54] ^ 0x65;
  v199 = v196[BYTE2(v192) ^ 0x98] - 110;
  *(a43 + *(v49 - 168)) = v199 ^ (v199 >> 4) & 6 ^ 0x99;
  *(a43 + *(v49 - 144)) = ((v188 ^ 0xBD) - 9) ^ v193[v188 ^ 0x42] ^ 0x30;
  LOBYTE(v199) = v195[BYTE3(v191) ^ 0x8BLL] - 83;
  *(a43 + *(v49 - 240)) = v199 ^ (v199 >> 6) ^ (v199 >> 3) ^ 0x64;
  *(a43 + *(v49 - 176)) = ((v192 ^ 0xD3) - 9) ^ 0xEB ^ v193[v192 ^ 0x2CLL];
  *(a43 + *(v49 - 208)) = v194[BYTE1(v192) ^ 0xFBLL] ^ 0x56;
  v200 = v196[BYTE2(v191) ^ 0x4BLL] - 110;
  *(a43 + *(v49 - 152)) = v200 ^ (v200 >> 4) & 6 ^ 0xE1;
  v201 = (((*(v49 - 228) ^ 0xA7D4EA4D) + 1479218611) ^ ((*(v49 - 228) ^ 0x5D9252A7) - 1569870503) ^ ((*(v49 - 228) ^ 0xEAA7291C) + 358143716)) + 1034865165;
  v202 = (v201 ^ 0xDB2AD7FD) & (2 * (v201 & 0xD332C7F9)) ^ v201 & 0xD332C7F9;
  LODWORD(v195) = ((2 * (v201 ^ 0x5D2ED75F)) ^ 0x1C38214C) & (v201 ^ 0x5D2ED75F) ^ (2 * (v201 ^ 0x5D2ED75F)) & 0x8E1C10A6;
  v203 = v195 ^ 0x820410A2;
  LODWORD(v195) = (v195 ^ 0xC180004) & (4 * v202) ^ v202;
  v204 = ((4 * v203) ^ 0x38704298) & v203 ^ (4 * v203) & 0x8E1C10A0;
  LODWORD(v195) = v195 ^ 0x8E1C10A6 ^ (v204 ^ 0x8100080) & (16 * v195);
  v205 = (16 * (v204 ^ 0x860C1026)) & 0x8E1C10A0 ^ 0xE1C1086 ^ ((16 * (v204 ^ 0x860C1026)) ^ 0xE1C10A60) & (v204 ^ 0x860C1026);
  LODWORD(v195) = (v195 << 8) & 0x8E1C1000 ^ v195 ^ ((v195 << 8) ^ 0x1C10A600) & v205;
  LODWORD(v195) = v201 ^ (2 * ((v195 << 16) & 0xE1C0000 ^ v195 ^ ((v195 << 16) ^ 0x10A60000) & ((v205 << 8) & 0xE1C0000 ^ 0x20C0000 ^ ((v205 << 8) ^ 0x1C100000) & v205)));
  *(a43 + *(v49 - 200)) = v194[BYTE1(v191) ^ 0xAELL] ^ 0x19;
  v206 = (((v195 ^ 0x8998C1FC) - 1314633407) ^ ((v195 ^ 0x8E5D72AB) - 1235092968) ^ ((v195 ^ 0xD0E755E2) - 388244129)) + 77151160;
  LODWORD(v194) = v211 ^ (v206 < 0xF3B7A9C2);
  v207 = v206 < *(v49 - 136);
  if (v194)
  {
    v207 = v211;
  }

  return (*(a44 + 8 * ((40426 * v207) ^ v165)))(v175, 2618366209, 305164032, v193, v164, v189, v165, v191, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}

uint64_t sub_1001EA284()
{
  v0 = *(STACK[0xF18] + 8 * (STACK[0xF10] - 21866));
  LODWORD(STACK[0xED0]) = STACK[0xF10] - 22010;
  return v0(4294967225);
}

uint64_t sub_1001EA2F0@<X0>(uint64_t a1@<X8>)
{
  v3 = (v2 - 37221) | 0x4A85;
  v4 = (v1 & 0x1DDE3BBD6) + (a1 ^ 0x78FA32E3EEF1DDEBLL);
  STACK[0xB3F0] = ((2 * v2) ^ 0xA0050251D4AD6369) + v4;
  v4 -= 0x78FA32E364C12CD1;
  v5 = STACK[0x7D20] - 0x6F6F2C6D97BAE8FELL;
  v6 = v4 < 0x8A30B116;
  v7 = v4 > v5;
  if (v6 != v5 < 0x8A30B116)
  {
    v7 = v6;
  }

  if (v7)
  {
    v8 = 371891407;
  }

  else
  {
    v8 = STACK[0xB3D8];
  }

  LODWORD(STACK[0xB3FC]) = v8;
  v9 = v8 == (v3 ^ 0xE9D58DFE);
  v10 = v8 != (v3 ^ 0xE9D58DFE);
  v11 = v9;
  LOBYTE(STACK[0xB403]) = v11;
  return (*(STACK[0xF18] + 8 * ((60 * v10) ^ v2)))();
}

uint64_t sub_1001EA444(__n128 a1, uint64_t a2, unsigned int a3)
{
  v5.n128_u64[0] = (v3 + 13) & 0xF;
  v5.n128_u64[1] = (v3 + 12) & 0xF;
  v6.n128_u64[0] = (v3 + 11) & 0xF;
  v6.n128_u64[1] = (v3 + 10) & 0xF;
  v7.n128_u64[0] = (v3 + 9) & 0xF;
  v7.n128_u64[1] = v3 & 0xF ^ 8;
  v11.val[1].i64[0] = (v3 + 5) & 0xF;
  v11.val[1].i64[1] = (v3 + 4) & 0xF;
  v11.val[2].i64[0] = (v3 + 3) & 0xFLL;
  v11.val[2].i64[1] = (v3 + 2) & 0xFLL;
  v11.val[3].i64[0] = (v3 + 1) & 0xFLL;
  v11.val[3].i64[1] = v3 & 0xF;
  v11.val[0].i64[1] = (v3 + 6) & 0xF;
  v11.val[0].i64[0] = (v3 + 7) & 0xF;
  v8.n128_u64[0] = 0x5959595959595959;
  v8.n128_u64[1] = 0x5959595959595959;
  v9.n128_u64[0] = 0xA8A8A8A8A8A8A8A8;
  v9.n128_u64[1] = 0xA8A8A8A8A8A8A8A8;
  return (*(v4 + 8 * ((1248 * (a3 > 0xFE64AE)) | a3 ^ 0x9EAB3CDA)))((v3 + 14) & 0xF, (((a3 + 1632950940) | 0x1D9E) + 536403777) & 0xE00779CD, (((a3 + 1632950940) | 0x1D9E) + 536403777) & 0xE00779CD ^ 0x791DLL, 18760, a1, v5, v6, v7, xmmword_100BC76B0, vqtbl4q_s8(v11, xmmword_100BC76B0), v8, v9);
}

uint64_t sub_1001EA6E0(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0xA688] - 0x7241677EA7C1599 + (((v2 ^ 0x927677BE416A9C21) + 0x6D898841BE9563DFLL) ^ ((v2 ^ 0x5712FB7951E83B66) - 0x5712FB7951E83B66) ^ ((v2 ^ 0xC5648CC7F9576056) + 0x3A9B733806A89FAALL)) + 0x1E48DA622;
  v4 = STACK[0xA680] - 0x2E56CEA6E4836FC2;
  v5 = v3 < 0xFAB7DF11;
  v6 = v3 > v4;
  if (v4 < 0xFAB7DF11 != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((202 * !v6) ^ (STACK[0xF10] - 8401))))(a1, a2, 371891407);
}

uint64_t sub_1001EAA40@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *(v6 + 8) = v4 - 1;
  *(a2 + v4 - 1) = (v2 ^ a1 ^ (v3 + 50)) * (v2 + 17);
  return (*(v5 + 8 * ((37557 * (*(v6 + 8) == 0)) ^ v3)))();
}

uint64_t sub_1001EAB64(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  *(v45 - 232) = a7;
  *(v45 - 224) = v43;
  return (*(v44 + 8 * ((((*(v45 - 200) ^ 0x2A0BE011) - 1729) * (a4 == *(v45 - 196))) ^ HIDWORD(a15))))(a1, a2, a3, *(v45 - 196), a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43);
}

uint64_t sub_1001EADC4(uint64_t a1)
{
  v2 = 297845113 * (a1 ^ 0x77331C9E);
  v3 = *(a1 + 12);
  v4 = *(a1 + 8) - v2;
  v5 = *(a1 + 40) + v2;
  v6 = *a1;
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = 193924789 * (&v11 ^ 0xB6BB3266);
  v13 = (v2 ^ *(a1 + 24) ^ 0xA6158E6B) + v9;
  v11 = v8;
  v16 = (v5 ^ ((v5 ^ 0xB38A016B) + 204828508) ^ ((v5 ^ 0xFF84E0BD) + 1077644942) ^ ((v5 ^ 0xE3B587E4) + 1544219093) ^ ((v5 ^ 0xEFFBF7FD) + 1346673102) ^ 0xA99556DE) - v9;
  v17 = v4 + v9 + 752696181;
  v15 = v2 ^ v3 ^ v9 ^ 0x3B3DFC39;
  v18 = v6;
  v14 = v7;
  result = (*(*(&off_1010A0B50 + v4 + 752669521) + 8 * (v4 ^ 0xD323FCC0) - 810145054))(&v11);
  *(a1 + 44) = v12;
  return result;
}

uint64_t sub_1001EB008@<X0>(uint64_t a1@<X8>)
{
  v10 = v2 - 1;
  *(a1 + v10) = *(v9 + v10);
  return (*(v8 + 8 * (((v6 & ~(((v10 - v1) | (v1 - v10)) >> (v1 + v3 + v4))) * v7) ^ v5)))();
}

uint64_t sub_1001EB044@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, unsigned int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>)
{
  *(a7 + (v12 + v10 + v11 + a2)) = *(v13 + (a9 - v11 + a1));
  v15 = *(a8 + 4 * v9) + a4;
  v16 = v11 + a3 < v15;
  if (v11 + a3 < a5 != v15 < a5)
  {
    v16 = v15 < a5;
  }

  return (*(v14 + 8 * ((v16 * a6) ^ v10)))();
}

void sub_1001EB104(uint64_t a1)
{
  v1 = *(a1 + 16) + 906386353 * ((-2 - ((a1 | 0x2B396CC2) + (~a1 | 0xD4C6933D))) ^ 0xE5C75E19);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1001EB214@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(v4 - 120) = *(STACK[0x310] + 8 * v3);
  v5.n128_u64[0] = (v2 + 13) & 0xF;
  v5.n128_u64[1] = (v2 + 12) & 0xF;
  v6.n128_u64[0] = (v2 + 11) & 0xF;
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
  v8.n128_u64[0] = 0x4949494949494949;
  v8.n128_u64[1] = 0x4949494949494949;
  v9.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v9.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(v4 - 120))(a1 - 15, (v2 + 14) & 0xF, (v3 - 22932) | 0x6013u, (v2 & 0x10) - 16, -27744, 55942, a2, v5, v6, v7, xmmword_100BC76B0, vqtbl4q_s8(v11, xmmword_100BC76B0), v8, v9);
}

uint64_t sub_1001EB314()
{
  v4 = ((v0 & 0x5BAF56F5 | (2 * (v0 & 1))) ^ 1) + (v0 & 0xA450A90A);
  v6 = *(v2 + 8) == v2 || v4 > 0x13;
  return (*(v3 + 8 * ((187 * v6) ^ v1)))();
}

uint64_t sub_1001EB3D8()
{
  *(&STACK[0x530] + v0 + 104) = STACK[0x758];
  v5 = *v2;
  v6 = *(v2 + 2);
  v7 = 1012831759 * ((~(v3 - 176) & 0xB50B15FF | (v3 - 176) & 0x4AF4EA00) ^ 0xA5980375);
  *(v3 - 160) = &STACK[0x530] + v0;
  *(v3 - 152) = v5;
  *(v3 - 176) = v1 - v7 - 14233;
  *(v3 - 172) = v6 - v7;
  v8 = (*(v4 + 8 * (v1 ^ 0x9ACA)))(v3 - 176);
  return (*(v4 + 8 * (((((v1 + 123) ^ (*(v3 - 168) == -371865839)) & 1) * ((v1 + 13399) ^ 0x857C)) ^ v1)))(v8);
}

void sub_1001EB5C4(_DWORD *a1)
{
  v1 = *a1 - 193924789 * (((a1 | 0x12AA722D) - a1 + (a1 & 0xED558DD2)) ^ 0xA411404B);
  __asm { BRAA            X27, X17 }
}

uint64_t sub_1001EB9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 40);
  *v5 = 0;
  return (*(v6 + 8 * (((v8 == 0) * (v7 + 7688)) ^ v7)))(a1, a2, a3, a4, a5);
}

uint64_t sub_1001EBA24@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v3 + 8);
  v7[1] = a1;
  v7[2] = *(v6 + 16);
  v7[4] = v1;
  v7[5] = v2;
  v7[6] = 0;
  v7[7] = 0;
  return (*(v4 + 8 * v5))();
}

void sub_1001EBA8C(uint64_t a1)
{
  v1 = *(a1 + 48) + 1112314453 * ((2 * ((a1 ^ 0xA2B76815) & 0xA2CBA5B0) - (a1 ^ 0xA2B76815) + 1563712079) ^ 0x10D51883);
  v3 = v2 + (*(a1 + 40) ^ 0x8CE360827F544B43);
  v2[0] = v3 - 182326952;
  __asm { BRAA            X0, X17 }
}

uint64_t sub_1001EBC28@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W3>, char a4@<W4>, char a5@<W5>, int a6@<W6>, uint64_t a7@<X8>)
{
  v14 = a2 - 1;
  *(a7 + v14) = *(v9 + (v14 & 0xF)) ^ *(v8 + (v14 & 0xF)) ^ ((v14 & 0xF) * a5) ^ *((v14 & 0xF) + v10 + 4) ^ ((*(v7 + v14) ^ a4) + (((a3 + v12) ^ a1) & (2 * *(v7 + v14))) + 110);
  return (*(v13 + 8 * (((v14 == 0) * a6) ^ v11)))();
}

uint64_t sub_1001EBCF0()
{
  STACK[0x250] = v1;
  STACK[0x298] = &STACK[0x314];
  LODWORD(STACK[0x340]) = -1015852702;
  return (*(v2 + 8 * ((v0 + 131979875) ^ 0x7DE277D ^ (((15767 * ((v0 + 131979875) ^ 0x7DE600D)) ^ 0x7158) * ((v0 + 131979875) > 0x3E7E4155)))))(v1);
}

uint64_t sub_1001EBDC4()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 3927) ^ v0)))();
}

uint64_t sub_1001EBE00(int a1)
{
  v6 = *v2;
  v5 = *(v2 + 8);
  LODWORD(STACK[0x25C]) = 263 * (a1 ^ 0x6C32);
  *(v3 - 112) = veorq_s8(*v6, xmmword_100F526A0);
  if (v1)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  v9 = *(v4 + 8 * ((207 * v8) ^ a1));
  LODWORD(STACK[0x258]) = -42900;
  return v9();
}

uint64_t sub_1001EBF4C@<X0>(unint64_t a1@<X2>, unint64_t a2@<X3>, unint64_t a3@<X4>, unint64_t a4@<X5>, unint64_t a5@<X6>, unint64_t a6@<X7>, int a7@<W8>)
{
  STACK[0x570] = v15;
  STACK[0x568] = v14;
  STACK[0x578] = a3;
  STACK[0x558] = a2;
  STACK[0x528] = a1;
  STACK[0x560] = v13;
  STACK[0x588] = v12;
  STACK[0x548] = v11;
  STACK[0x538] = v10;
  STACK[0x540] = v9;
  STACK[0x590] = v8;
  STACK[0x580] = a6;
  STACK[0x530] = a5;
  STACK[0x550] = a4;
  return (*(STACK[0xF18] + 8 * ((51 * (a7 < ((v7 + 13487) | 0x1080) - 363748189)) ^ v7)))();
}

uint64_t sub_1001EC0FC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int8x16_t a7, int8x8_t a8)
{
  v16.val[0].i64[0] = (v12 + a3 - 1) & 0xF;
  v16.val[0].i64[1] = (v12 + a3 + 14) & 0xF;
  v16.val[1].i64[0] = (v12 + a3 + 13) & 0xF;
  v16.val[1].i64[1] = (v12 + a3 + (v13 ^ 0xFB)) & 0xF;
  v16.val[2].i64[0] = (v12 + a3 + 11) & 0xF;
  v16.val[2].i64[1] = (v12 + a3 + 10) & 0xF;
  v16.val[3].i64[0] = (v12 + a3 + 9) & 0xF;
  v16.val[3].i64[1] = (v12 + a3) & 0xF ^ 8;
  *(a1 + v12) = veor_s8(veor_s8(veor_s8(*(v9 + v16.val[0].i64[0] - 7), *(a5 + v12)), veor_s8(*(v11 + v16.val[0].i64[0] - 7), *(v16.val[0].i64[0] + v10))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v16, a7), a8)));
  return (*(v14 + 8 * (((v8 == a3) * a6) ^ a4)))(a1 - 8, a2, a3 - 8);
}

uint64_t sub_1001EC228(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62, int a63)
{
  LODWORD(STACK[0x278]) = v70;
  LODWORD(STACK[0x3A8]) = a6;
  LODWORD(STACK[0x3AC]) = v69;
  LODWORD(STACK[0x2F0]) = a7;
  LODWORD(STACK[0x31C]) = a68;
  LOWORD(STACK[0x236]) = a67;
  LOWORD(STACK[0x292]) = v71;
  LODWORD(STACK[0x27C]) = a61;
  LOWORD(STACK[0x38E]) = a64;
  LODWORD(STACK[0x2B0]) = a4;
  return (*(v72 + 8 * v68))();
}

uint64_t sub_1001EC320(__n128 a1)
{
  a1.n128_u16[0] = -24416;
  a1.n128_u8[2] = -96;
  a1.n128_u8[3] = -96;
  a1.n128_u8[4] = -96;
  a1.n128_u8[5] = -96;
  a1.n128_u8[6] = -96;
  a1.n128_u8[7] = -96;
  return (*(v2 + 8 * (v1 + 7347)))(a1);
}

uint64_t sub_1001EC36C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5, __n128 a6, __n128 a7, __n128 a8, int8x16_t a9, double a10, int8x16_t a11)
{
  v18 = (a2 - 1) & 0xF;
  v20.i64[0] = vqtbl4q_s8(*(&a6 - 1), a9).u64[0];
  *&v20.i64[1] = a10;
  v21 = vrev64q_s8(vmulq_s8(v20, a11));
  *(v16 + a2) = veorq_s8(veorq_s8(veorq_s8(*(v12 + v18 - 15), *(v11 + a2)), veorq_s8(*(v18 + v13 - 11), *(v14 + v18 - 15))), vextq_s8(v21, v21, 8uLL));
  return (*(v17 + 8 * (((a3 == 0) * a4) ^ v15)))(a1, a2 - 16, a3 - 16);
}

uint64_t sub_1001EC47C(uint64_t a1)
{
  v5 = *(v4 + 8 * (v2 ^ 0xCB9C));
  *(v5 - 1799566007) += a1 + ((v2 + 1687303710) & 0x9B6D2F86) - 0x3CE25E0EC5202AF8;
  return (*(v3 + 8 * (((*v1 == 0x3CE25E0EC5200378) * ((v2 - 1034863136) & 0x3DAE27C4 ^ 0x27A3)) ^ v2)))();
}

uint64_t sub_1001EC534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v43 = *(&off_1010A0B50 + v40 + 1160605614) - 155682498;
  v44 = v43[(-(*(v42 - 128) ^ 0xF4) ^ (151 - (*(v42 - 128) ^ 0x63)) ^ 0x3263C051 ^ ((*(v42 - 128) ^ 0xF4) - ((v40 + 1160604962) & (2 * (*(v42 - 128) ^ 0xF4))) + 845398097)) + 151];
  v45 = *(v42 - 127);
  v46 = *(&off_1010A0B50 + v40 + 1160608757) - 1580969027;
  v47 = v40;
  v48 = (v45 ^ 0x8F) - (v45 ^ 0x82) - ((2 * ((v45 ^ 0x8F) - (v45 ^ 0x82))) & 0x84);
  v49 = *(&off_1010A0B50 + v40 + 1160604908) - 757925778;
  v50 = v49[*(v42 - 126) ^ 0x90];
  v51 = v50 + 75;
  v52 = *(v42 - 125);
  *(v42 - 140) = v41;
  v53 = *(&off_1010A0B50 + (v40 ^ 0xBAD2916F)) - 428430583;
  v54 = v50 - ((2 * (v50 + 75)) & 0x48);
  v55 = (v52 ^ 0xDA) + v53[v52 ^ 0x65];
  *(v42 - 160) = v43[*(v42 - 124) ^ 0xF1];
  v56 = *(v42 - 123);
  v57 = (v56 ^ 0xDF) - (v56 ^ 0xD2) - ((2 * ((v56 ^ 0xDF) - (v56 ^ 0xD2))) & 0x84);
  v58 = v49[*(v42 - 122) ^ 0x2BLL];
  v59 = v58 + 75;
  *(v42 - 168) = v58 + ((v58 + 75) >> 6 << 7);
  *(v42 - 152) = v53[*(v42 - 121) ^ 0x6FLL] + (*(v42 - 121) ^ 0xD0);
  v60 = *(v42 - 119);
  *(v42 - 176) = v43[*(v42 - 120) ^ 0x9CLL];
  v61 = v43[*(v42 - 116) ^ 0x5FLL];
  v62 = v46[v45 ^ 0x5F];
  v63 = (v60 ^ 0x61) - (v60 ^ 0x6C) - ((2 * ((v60 ^ 0x61) - (v60 ^ 0x6C))) & 0x84);
  v64 = v46[v56 ^ 0xF];
  LOBYTE(v56) = v49[*(v42 - 118) ^ 0x52];
  v65 = v56 + 75;
  v66 = v56 - ((2 * (v56 + 75)) & 0x33);
  v67 = v53[*(v42 - 117) ^ 0x7CLL] + (*(v42 - 117) ^ 0xC3);
  v68 = v46[v60 ^ 0xB1];
  v69 = ((v61 - 97) >> 1) & 0x1A ^ (v61 - 97);
  v70 = *(v42 - 115);
  LODWORD(v70) = ((v70 ^ 0x44) - (v70 ^ 0x49) + (v46[v70 ^ 0x94] ^ 0xC2) - 2 * (((v70 ^ 0x44) - (v70 ^ 0x49)) & (v46[v70 ^ 0x94] ^ 0x42))) << 16;
  LODWORD(v60) = (v70 ^ 0xFF800000) & ((v69 << 24) ^ 0x5E20000) | v70 & 0x1D0000;
  LOBYTE(v70) = v49[*(v42 - 114) ^ 0x73];
  v71 = *(&off_1010A0B50 + (v47 ^ 0xBAD29209)) - 137632143;
  v72 = *(&off_1010A0B50 + v47 + 1160609145) - 1128320671;
  v73 = *(&off_1010A0B50 + v47 + 1160608891) - 694054795;
  v74 = *(&off_1010A0B50 + v47 + 1160607488) - 1246010590;
  v75 = *&v71[4 * (((((v69 ^ 0xD5) - (v69 ^ 0x72)) ^ 0xFFFFFFFE) + (v69 ^ 0xD5)) ^ 0x8D)] ^ *&v73[4 * ((((v70 + 75) >> 6) | 0xBC) ^ ((v70 + 75) >> 3) ^ (v70 - ((2 * (v70 + 75)) & 0x7C) + 9) ^ 0xE7)] ^ 0x9E05F65A ^ *&v72[4 * (((BYTE2(v60) ^ 9) - ((v60 >> 15) & 0xEC) + 118) ^ 0xAA)];
  v76 = *(&off_1010A0B50 + (v47 ^ 0xBAD294B3)) - 2143248019;
  v77 = (v51 >> 6) ^ (v51 >> 3) ^ 0x86 ^ (v54 - 17);
  v78 = v74[(v55 - 31) ^ 0x6FLL] ^ 0xB3;
  LOBYTE(v70) = v74[(v53[*(v42 - 113) ^ 0x34] + (*(v42 - 113) ^ 0x8B) - 31) ^ 0x4FLL] ^ 0x1E;
  LODWORD(v70) = (v70 ^ (32 * v70)) ^ v75;
  v79 = v70 ^ 0x92F32C09;
  v80 = v70 & 0x1FF ^ 0x1DA;
  v81 = *&v72[4 * ((v62 ^ (v48 - 62)) ^ 0x38)] ^ *&v71[4 * ((v44 - 97) ^ 0xF2 ^ ((v44 - 97) >> 1) & 0x1A)] ^ *&v73[4 * v77] ^ (v78 ^ (32 * v78)) ^ 0x1FDEBF53;
  v82 = *(&off_1010A0B50 + v47 + 1160608097) - 756929399;
  v83 = *(&off_1010A0B50 + (v47 ^ 0xBAD291AA));
  if (v80 >= 0x100)
  {
    v80 -= 256;
  }

  v84 = v83 - 1588092902;
  v85 = *(&off_1010A0B50 + v47 + 1160606091) - 2078773755;
  v86 = *&v82[4 * (BYTE1(v75) ^ 0x9F)] ^ *&v76[4 * (BYTE2(v75) ^ 0x5D)] ^ v81 ^ v85[v75 >> 24] ^ ((v80 ^ 0xE9C4E2A3) - 1319177198 + *(v83 - 1588092902 + 4 * (v80 ^ 0x7C)));
  v87 = v74[(*(v42 - 152) - 31) ^ 0xDDLL] ^ 0x67;
  v88 = v74[(v67 - 31) ^ 0x53];
  v153 = *&v72[4 * (v64 ^ (v57 - 62) ^ 0xB5)] ^ *&v71[4 * ((*(v42 - 160) - 97) ^ 0x9B ^ ((*(v42 - 160) - 97) >> 1) & 0x1A)] ^ *&v73[4 * ((v59 >> 3) ^ (v59 >> 6) ^ 0x4A ^ (*(v42 - 168) - 117))] ^ (v87 ^ (32 * v87));
  v89 = v153 ^ v86 ^ 0xAE46FCF;
  v90 = *&v72[4 * ((v68 ^ (v63 - 62)) ^ 0xCC)] ^ *&v71[4 * ((*(v42 - 176) - 97) ^ 0x27 ^ ((*(v42 - 176) - 97) >> 1) & 0x1A)] ^ *&v73[4 * (((v65 >> 6) | 0x78) ^ (v65 >> 3) ^ (v66 + 100))] ^ v88 ^ 0x74 ^ (32 * (v88 ^ 0x74));
  *(v42 - 184) = v90;
  v91 = (v89 & 0x40 | 0xD1A65336) ^ v89 & 0xFFFFFFBF ^ v90;
  *(v42 - 176) = v91;
  v92 = v91 ^ 0xA03C3A5 ^ v79;
  v93 = v92 ^ 0xCBEB943A;
  v94 = v86 ^ *&v76[4 * (BYTE2(v92) ^ 0xF3)] ^ *&v82[4 * (BYTE1(v92) ^ 0x39)] ^ v85[HIBYTE(v92) ^ 0xBCLL] ^ (*(v83 - 1588092902 + 4 * (v91 ^ 0xA5 ^ v79 ^ 0x9Cu)) + (v91 ^ 0xA5 ^ v79 ^ 0xE9C4E243) - 1319177198) ^ 0x8E0BFFD7;
  v95 = v94 ^ v89 ^ 0x4EB17D6E;
  v152 = v91 ^ 0xA03C3A5 ^ __ROR4__(__ROR4__(v95, 11) ^ 0xC4AC95B, 21);
  v96 = v152 ^ 0xA81F3E15 ^ v92 ^ 0xCBEB943A;
  v97 = *&v76[4 * (BYTE2(v96) ^ 0x79)] ^ *&v82[4 * (BYTE1(v96) ^ 0x59)] ^ v94 ^ v85[HIBYTE(v96) ^ 0xC1] ^ (*(v83 - 1588092902 + 4 * (v152 ^ 0x15 ^ v93 ^ 0xECu)) + (v152 ^ 0x15 ^ v93 ^ 0xE9C4E233) - 1319177198) ^ 0xF643C183;
  v98 = v97 ^ v95;
  *(v42 - 152) = v97;
  v150 = *&v82[4 * (((v97 ^ v95 ^ v93) >> 8) ^ 0xA3)] ^ *&v76[4 * (((v97 ^ v95 ^ v93) >> 16) ^ 0xCA)] ^ v97 ^ v85[((v97 ^ v95 ^ v93) >> 24) ^ 0xB5] ^ (*(v83 - 1588092902 + 4 * ((v97 ^ v95 ^ v93) ^ 0x66u)) + ((v97 ^ v95 ^ v93) ^ 0xE9C4E2B9) - 1319177198);
  v99 = (((v152 ^ 0xDB79DD2D ^ v150 ^ 0xFAE07200) & 0xB1007397 ^ 0xD5C8F286) & ((v152 ^ 0xDB79DD2D ^ v150 ^ 0xFAE07200) & 0x4EFF8C68 ^ 0xFFB27BDF) | (v152 ^ 0xDB79DD2D ^ v150 ^ 0xFAE07200) & 0xA370C68) ^ 0x9A641687;
  v151 = v97 ^ v95 ^ v93 ^ 0x14B96ADE;
  v100 = *&v82[4 * (((v99 ^ v151) >> 8) ^ 0x30)] ^ *&v76[4 * (((v99 ^ v151) >> 16) ^ 0xD9)] ^ v150 ^ 0xFAE07200 ^ v85[((v99 ^ v151) >> 24) ^ 0x7BLL] ^ (*(v84 + 4 * ((v99 ^ v151) ^ 0x4Cu)) + ((v99 ^ v151) ^ 0xE9C4E293) - 1319177198);
  v149 = v99 ^ v151 ^ 0x1C22982D;
  v101 = v100 ^ 0xE363DBD3 ^ v97 ^ v95 ^ 0x9976B8CF ^ v150 ^ 0xFAE07200;
  v102 = v101 ^ v99;
  v103 = v102 ^ v149;
  v104 = *&v76[4 * (((v102 ^ v149) >> 16) ^ 0x84)] ^ *&v82[4 * (((v102 ^ v149) >> 8) ^ 0x52)] ^ v100 ^ 0xE363DBD3 ^ v85[((v102 ^ v149) >> 24) ^ 0xA3] ^ (*(v84 + 4 * (v102 ^ v149)) + ((v102 ^ v149) ^ 0xE9C4E2DF) - 1319177198);
  v105 = v104 ^ 0x41DF5D60 ^ v101;
  v106 = v105 ^ 0x9A596D6F ^ v102 ^ 0x9475A674;
  *(v42 - 160) = v106;
  v107 = v106 ^ v102 ^ v149 ^ 0xC7CD3890;
  v108 = *&v82[4 * (((v106 ^ v103) >> 8) ^ 0x6C)] ^ *&v76[4 * (((v106 ^ v103) >> 16) ^ 0xF7)] ^ v104 ^ 0x41DF5D60 ^ v85[((v106 ^ v103) >> 24) ^ 0xA4] ^ (*(v84 + 4 * ((v106 ^ v103) ^ 0xDBu)) + ((v106 ^ v103) ^ 0xE9C4E204) - 1319177198);
  LODWORD(v148) = v108 ^ 0xDB6CCADA ^ v102 ^ 0x9475A674;
  v109 = v148 ^ 0xD1A3D7F4;
  v110 = *&v82[4 * (((v148 ^ 0xD7F4 ^ v107) >> 8) ^ 0x77)] ^ v85[((v109 ^ v107) >> 24) ^ 0x3CLL] ^ *&v76[4 * (((((v109 ^ v107) >> 16) ^ 0xD9) - (((v109 ^ v107) >> 16) ^ 0x18)) ^ 0xFFFFFFFE) + 4 * (((v109 ^ v107) >> 16) ^ 0xD9)] ^ v108 ^ 0xDB6CCADA ^ (*(v84 + 4 * (v148 ^ 0xF4 ^ v107 ^ 0xDu)) + (v148 ^ 0xF4 ^ v107 ^ 0xE9C4E2D2) - 1319177198);
  v111 = v110 ^ 0xC69A5443;
  HIDWORD(v147) = v105 ^ 0x6A112015 ^ v108 ^ 0xDB6CCADA;
  v112 = v110 ^ HIDWORD(v147);
  v113 = v112 ^ 0x9D2EFEAD;
  HIDWORD(v148) = v107;
  v114 = v113 ^ v107;
  LODWORD(v147) = v111;
  HIDWORD(v146) = *&v82[4 * (((-(BYTE1(v114) ^ 0x75) ^ (159 - (BYTE1(v114) ^ 0xEA)) ^ 0x7F3176B2 ^ ((BYTE1(v114) ^ 0x75) - ((2 * (BYTE1(v114) ^ 0x75)) & 0x164) + 2133948082)) + 159) ^ 1)] ^ *&v76[4 * (BYTE2(v114) ^ 0x37)] ^ v85[BYTE3(v114) ^ 0xEBLL] ^ v111 ^ (*(v84 + 4 * (v112 ^ 0xAD ^ v107 ^ 0x1Bu)) + (v112 ^ 0xAD ^ v107 ^ 0xE9C4E2C4) - 1319177198);
  LODWORD(v146) = HIDWORD(v146) ^ 0xA2674024 ^ v148 ^ 0xD1A3D7F4;
  v115 = v146 ^ 0x3BE7B985 ^ v114;
  HIDWORD(v145) = v115;
  v116 = *&v76[4 * ((((v115 >> 15) | 0xFFFFFEFF) + (BYTE2(v115) ^ 0xC5) + 129) ^ 0xC1)] ^ *&v82[4 * (BYTE1(v115) ^ 0xCD)] ^ v85[HIBYTE(v115) ^ 0x78] ^ HIDWORD(v146) ^ 0xA2674024 ^ (*(v84 + 4 * (v146 ^ 0x85 ^ v112 ^ 0xAD ^ v107 ^ 0x18u)) + (v146 ^ 0x85 ^ v112 ^ 0xAD ^ v107 ^ 0xE9C4E2C7) - 1319177198) ^ 0x597D13AC;
  *(v42 - 168) = v116;
  v117 = HIDWORD(v146) ^ 0xA2674024 ^ v113 ^ 0x6B5B561A ^ v116;
  LODWORD(v144) = v117 ^ v146 ^ 0x3BE7B985;
  LODWORD(v145) = *(v42 - 184) ^ 0xF5E5D1CC;
  v118 = (v98 ^ 0x9FDFEEDE) + v145 + (v144 ^ 0x34F897FA);
  v119 = v96 ^ 0xCE55D665;
  v120 = v101 ^ 0x3560C6E4;
  v121 = (v118 - 2044120037);
  LODWORD(v143) = v100 ^ 0xD18691B8;
  HIDWORD(v143) = v112 ^ 0xF3D66A6B;
  v122 = v121 - (v112 ^ 0xF3D66A6B) + 2147378733;
  HIDWORD(v142) = v119;
  HIDWORD(v141) = v152 ^ 0x14D3301B ^ v98;
  LODWORD(v85) = HIDWORD(v141) - (v119 + (v86 ^ 0x748D23C4)) - (v100 ^ 0xD18691B8) + v120 + v121 - (v112 ^ 0xF3D66A6B);
  HIDWORD(v140) = v114 ^ 0x44550860;
  HIDWORD(v139) = v148 ^ 0xD1A3D7F4 ^ v107 ^ 0xB1318AAD;
  LODWORD(v140) = *(v42 - 176) ^ 0x4E05592B;
  LODWORD(v138) = v102 ^ v149 ^ 0xE9554211;
  HIDWORD(v138) = v104 ^ 0x82C0239;
  LODWORD(v139) = v108 ^ 0x609BCEA1;
  HIDWORD(v137) = HIDWORD(v146) ^ 0xA2674024 ^ v113 ^ 0x28569441;
  v123 = (v153 ^ v86 ^ 0x5C09C5EE) - v140 - v138 - (v104 ^ 0x82C0239) - (v108 ^ 0x609BCEA1) - HIDWORD(v139) - HIDWORD(v137) + ((v85 - 1742946252 - (v114 ^ 0x44550860) + 686934972) | 0x2C550023) - (((v85 - 1742946252 - (v114 ^ 0x44550860) + 686934972) | 0x2C550023) ^ (v85 - 1742946252 - (v114 ^ 0x44550860) + 686934972)) - 55607886;
  v124 = ((2 * v123) & 0x5F79B472) + (v123 ^ 0x2FBCDA39);
  v125 = *(&off_1010A0B50 + v47 + 1160607591) - 1413655871;
  v126 = *(&off_1010A0B50 + v47 + 1160605539) - 2014299491;
  v127 = *(&off_1010A0B50 + (v47 ^ 0xBAD2837A)) - 817207958;
  v128 = *(&off_1010A0B50 + v47 + 1160608213) - 1175076707;
  v129 = *&v125[4 * (*(v42 - 98) ^ 0x67)] ^ 0xF238EF1;
  v130 = *&v125[4 * (*(v42 - 106) ^ 0x9BLL)] ^ 0x5A90533Eu;
  v131 = *(v42 - 97) ^ 0x1DLL;
  *(v42 - 252) = *&v127[4 * (*(v42 - 107) ^ 0xB4)] ^ *(v42 - 108) ^ v128[*(v42 - 105) ^ 0xA8] ^ *&v126[4 * (*(v42 - 108) ^ 0x10)] ^ v130 ^ (2 * v130) & 0x6D9A8C1E ^ 0xB574050A;
  v132 = *(v42 - 100) ^ *&v126[4 * (*(v42 - 100) ^ 0x28)] ^ *&v127[4 * (*(v42 - 99) ^ 0xF9)] ^ v129 ^ (2 * v129) & 0x6D9A8C1E ^ v128[v131] ^ 0xAC99C8CB;
  *(v42 - 140) = (((*(v42 - 140) ^ 0x1BBFB116) + 405945) ^ ((*(v42 - 140) ^ 0xA3064451) - 1195391744) ^ ((*(v42 - 140) ^ 0xD2FDE2F6) - 918265255)) + 1621353769;
  HIDWORD(v136) = v121 ^ v98 ^ (((2044120037 - v118) ^ (240925060 - (v121 ^ 0xE5C3984)) ^ 0x2117F795 ^ (v118 - ((2 * v121) & 0x422FEF2A) - 1488901200)) + 240925060);
  LODWORD(v136) = v113 ^ v148 ^ 0xD1A3D7F4;
  HIDWORD(v135) = (v85 + 1271633760) ^ *(v42 - 168) ^ (((-1271633760 - v85) ^ (1280387284 - ((v85 + 1271633760) ^ 0x4C5128D4)) ^ 0x3BCCB406 ^ (v85 - 1742946252 - ((2 * (v85 + 1271633760)) & 0x7799680C) - 277116110)) + 1280387284);
  LODWORD(v142) = v122;
  LODWORD(v135) = v122 ^ *(v42 - 152);
  LODWORD(v141) = v85 - 1742946252;
  HIDWORD(v134) = (v85 - 1742946252) ^ v120;
  LODWORD(v137) = v124;
  LODWORD(v134) = v124 ^ *(v42 - 160);
  HIDWORD(v144) = v117;
  HIDWORD(a12) = v117 ^ v114;
  return (*(a40 + 8 * ((24841 * (v47 != -1772800600)) ^ (v47 + 1160616448))))(v114, v113, v122, v120, v121, 1003271174, v132, v130, a9, a10, a11, a12, v134, v135, v136, v128, v127, v126, v125, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148);
}

uint64_t sub_1001ED7DC()
{
  v2 = (*(v1 + 8 * (v0 + 17282)))(56);
  STACK[0x2C0] = v2;
  return (*(v1 + 8 * (((((v0 + 1) ^ (v2 == 0)) & 1) * (v0 - 34510)) | v0)))();
}

uint64_t sub_1001ED87C(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0xF10] + 5016;
  LODWORD(STACK[0x77C8]) = v2;
  v4 = LOWORD(STACK[0x9936]);
  STACK[0x8528] = STACK[0x9938];
  return (*(STACK[0xF18] + 8 * ((14469 * (v4 == 47179)) ^ v3)))(a1, a2, 371891606);
}

uint64_t sub_1001ED9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, int a23, int *a24, int *a25, uint64_t a26, int a27, uint64_t a28)
{
  v33 = *(v30 + v32);
  a22 = v28;
  v34 = (((*(v30 - 0x217E172EFA1E804) ^ 0x5CF99FD1) - 1559863249) ^ ((*(v30 - 0x217E172EFA1E804) ^ 0x44489470) - 1145607280) ^ ((*(v30 - 0x217E172EFA1E804) ^ 0xF164CCB0) + 245052240)) - 54746966;
  v35 = 634647737 * (((&a23 | 0x5335FFBA) - (&a23 | 0xACCA0045) - 1396047803) ^ 0x3EA3D046);
  a26 = v33;
  a23 = v34 ^ v35;
  a27 = v31 - v35 - 8436;
  a24 = &a22;
  a25 = &a21;
  a28 = v30 - 0x217E172EFA1E800;
  v36 = (*(v29 + 8 * (v31 + 3695)))(&a23);
  return (*(v29 + 8 * v31))(v36);
}

uint64_t sub_1001EDB24(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  *(v49 - 236) = v48;
  *(v49 - 232) = v46;
  *(v49 - 224) = *(v47 + 8 * v45);
  return (*(v47 + 8 * ((11 * (a38 + v48 + ((v48 < 0x46C101A) << 32) - 74190874 > a45 + v46 + ((v46 < 0x51744E85) << 32) - 1366576773)) ^ a1)))();
}

uint64_t sub_1001EDF74@<X0>(int a1@<W8>, int64x2_t a2@<Q0>, int64x2_t a3@<Q1>, int64x2_t a4@<Q2>, int64x2_t a5@<Q3>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int8x16_t a16, int8x16_t a17)
{
  v37 = vaddq_s64(a5, a5);
  v38 = vaddq_s64(a4, a4);
  v39 = vaddq_s64(a3, a3);
  v40 = vaddq_s64(a2, a2);
  v41 = vandq_s8(veorq_s8(vandq_s8(v40, v22), v23), a2);
  v42 = vandq_s8(veorq_s8(vandq_s8(v38, v22), v23), a4);
  v43 = vandq_s8(veorq_s8(vandq_s8(v37, v22), v23), a5);
  v44 = veorq_s8(vandq_s8(veorq_s8(v40, v35), a2), vandq_s8(v40, a17));
  v45 = veorq_s8(vandq_s8(veorq_s8(v38, v35), a4), vandq_s8(v38, a17));
  v46 = veorq_s8(vandq_s8(veorq_s8(v37, v35), a5), vandq_s8(v37, a17));
  v47 = vandq_s8(vshlq_n_s64(v43, 2uLL), v46);
  v48 = veorq_s8(v46, v24);
  v49 = veorq_s8(v47, v43);
  v50 = vandq_s8(vshlq_n_s64(v42, 2uLL), v45);
  v51 = veorq_s8(v45, v24);
  v52 = veorq_s8(v50, v42);
  v53 = vandq_s8(vshlq_n_s64(v41, 2uLL), v44);
  v54 = veorq_s8(v44, v24);
  v55 = veorq_s8(v53, v41);
  v56 = veorq_s8(vandq_s8(vandq_s8(veorq_s8(vshlq_n_s64(v54, 2uLL), v25), v54), vshlq_n_s64(v55, 4uLL)), v55);
  v57 = veorq_s8(vandq_s8(vandq_s8(veorq_s8(vshlq_n_s64(v51, 2uLL), v25), v51), vshlq_n_s64(v52, 4uLL)), v52);
  v58 = veorq_s8(vandq_s8(vandq_s8(veorq_s8(vshlq_n_s64(v48, 2uLL), v25), v48), vshlq_n_s64(v49, 4uLL)), v49);
  v59 = vaddq_s64(v58, v58);
  v60 = veorq_s8(vaddq_s64(v56, v56), a2);
  v61 = veorq_s8(vaddq_s64(v57, v57), a4);
  v62 = veorq_s8(v59, a5);
  v63 = vandq_s8(veorq_s8(vandq_s8(v39, v22), v23), a3);
  v64 = veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v60, v26), v27), vaddq_s64(veorq_s8(v60, v28), v29)), vaddq_s64(veorq_s8(v60, v30), v31));
  v60.i64[0] = a5.i64[0] * v19;
  v65 = veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v61, v26), v27), vaddq_s64(veorq_s8(v61, v28), v29)), vaddq_s64(veorq_s8(v61, v30), v31));
  v61.i64[0] = a4.i64[0] * v19;
  v60.i64[1] = a5.i64[1] * v19;
  v61.i64[1] = a4.i64[1] * v19;
  v66 = veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v62, v26), v27), vaddq_s64(veorq_s8(v62, v28), v29)), vaddq_s64(veorq_s8(v62, v30), v31));
  v62.i64[0] = a3.i64[0] * v19;
  v67 = vaddq_s64(v64, v32);
  v68 = v67.i64[1];
  v69 = v67.i64[0];
  v70 = vaddq_s64(a2, v33);
  v71 = v70.i64[1];
  v62.i64[1] = a3.i64[1] * v19;
  v72 = v70.i64[0];
  v70.i64[0] = a2.i64[0] * v19;
  v70.i64[1] = a2.i64[1] * v19;
  v73 = vaddq_s64(v66, v32);
  v74 = vaddq_s64(v65, v32);
  v75 = v74.i64[1];
  v76 = v74.i64[0];
  v77 = vaddq_s64(a4, v33);
  v78 = v69 * v72;
  v79 = v77.i64[1];
  v80 = v73.i64[1];
  v81 = v76 * v77.i64[0];
  v82 = vaddq_s64(a5, v33);
  v83 = v73.i64[0] * v82.i64[0];
  v84 = veorq_s8(vandq_s8(veorq_s8(v39, v35), a3), vandq_s8(v39, a17));
  v85 = veorq_s8(v84, v24);
  v86 = veorq_s8(vandq_s8(vshlq_n_s64(v63, 2uLL), v84), v63);
  v87 = v75 * v79;
  v88 = veorq_s8(vandq_s8(vandq_s8(veorq_s8(vshlq_n_s64(v85, 2uLL), v25), v85), vshlq_n_s64(v86, 4uLL)), v86);
  v89 = v80 * v82.i64[1];
  v90 = veorq_s8(vaddq_s64(v88, v88), a3);
  v82.i64[0] = v81;
  v82.i64[1] = v87;
  v91 = vaddq_s64(veorq_s8(veorq_s8(vaddq_s64(veorq_s8(v90, v26), v27), vaddq_s64(veorq_s8(v90, v28), v29)), vaddq_s64(veorq_s8(v90, v30), v31)), v32);
  v63.i64[0] = v83;
  v92 = v91.i64[1];
  v63.i64[1] = v89;
  v93 = v91.i64[0];
  v96.val[0] = vaddq_s64(vaddq_s64(v60, v34), v63);
  v96.val[1] = vaddq_s64(vaddq_s64(v61, v34), v82);
  v91.i64[0] = v78;
  v94 = vaddq_s64(a3, v33);
  v91.i64[1] = v68 * v71;
  v94.i64[0] *= v93;
  v94.i64[1] *= v92;
  v96.val[2] = vaddq_s64(vaddq_s64(v62, v34), v94);
  v96.val[3] = vaddq_s64(vaddq_s64(v70, v34), v91);
  *(v18 - v17 + 91) = vrev64_s8(*&vqtbl4q_s8(v96, a16));
  return (*(v21 + 8 * (((v17 == 80) * v20) ^ a1)))(vaddq_s64(a2, v36), vaddq_s64(a3, v36), vaddq_s64(a4, v36), vaddq_s64(a5, v36));
}

uint64_t sub_1001EE2D8@<X0>(int a1@<W0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = ((a65 + 9) & 0xF) - a2 - v69;
  v73 = (v65 - a2) >= 0x10 && v71 + 1 + v66 >= (((a1 - 453) | 0x2202u) ^ 0xA21AuLL) && (v71 + 1 + v68) >= 0x10;
  v74 = v71 + v67 + 6;
  v76 = !v73 || v74 < 0x10;
  return (*(v70 + 8 * ((63 * v76) ^ a1)))();
}

uint64_t sub_1001EE5FC()
{
  v4 = v1 + 64;
  LODWORD(STACK[0x2354]) |= v2 - 24574;
  v5 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v2 + 27323)))(v3 + v0, v4, 32);
  STACK[0x10EE0] = v4;
  STACK[0x10ED8] = &STACK[0x2354];
  LODWORD(STACK[0x10EE8]) = v2 + 297845113 * ((~(&STACK[0x10000] + 3800) & 0x2DD416DF | (&STACK[0x10000] + 3800) & 0xD22BE920) ^ 0x5AE70A41) - 4463;
  v6 = (*(v5 + 8 * (v2 + 27943)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * v2))(v6);
}

uint64_t sub_1001EE780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, char a24, int a25, int a26, char *a27, uint64_t a28, int a29)
{
  v33 = *(v32 - 0x217E172EFA1E81CLL);
  v34 = (((((v30 ^ 0xCBC1) - 26687) | 0xB000) - 2068663853) ^ v29) & (2 * (v29 & 0xA6BB63B6)) ^ v29 & 0xA6BB63B6;
  v35 = ((2 * (v29 ^ 0xC5A328C0)) ^ 0xC63096EC) & (v29 ^ 0xC5A328C0) ^ (2 * (v29 ^ 0xC5A328C0)) & 0x63184B76;
  v36 = (v35 ^ 0x2104262) & (4 * v34) ^ v34;
  v37 = ((4 * (v35 ^ 0x21084912)) ^ 0x8C612DD8) & (v35 ^ 0x21084912) ^ (4 * (v35 ^ 0x21084912)) & 0x63184B70;
  v38 = (v37 ^ 0x946) & (16 * v36) ^ v36;
  v39 = ((16 * (v37 ^ 0x63184226)) ^ 0x3184B760) & (v37 ^ 0x63184226) ^ (16 * (v37 ^ 0x63184226)) & 0x63184B60;
  v40 = v38 ^ 0x63184B76 ^ (v39 ^ 0x21000316) & (v38 << 8);
  v41 = (v40 << 16) & 0x63180000 ^ v40 ^ ((v40 << 16) ^ 0x4B760000) & (((v39 ^ 0x42184816) << 8) & 0x63180000 ^ 0x63100000 ^ (((v39 ^ 0x42184816) << 8) ^ 0x184B0000) & (v39 ^ 0x42184816));
  v42 = 1022166737 * (((&a25 | 0x52E693F0) - (&a25 | 0xAD196C0F) - 1390842865) ^ 0xE8F67262);
  a29 = v42 ^ v29 ^ (2 * v41) ^ 0x4D4F34B2;
  a27 = &a24;
  a28 = v33;
  a26 = v42 + (v30 ^ 0xCBC1) + 1980;
  v43 = (*(v31 + 8 * ((v30 ^ 0xCBC1) + 22871)))(&a25);
  return (*(v31 + 8 * ((63265 * (a25 == -371865839)) ^ v30 ^ 0xCBC1)))(v43);
}

uint64_t sub_1001EE9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, unsigned int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, unsigned int a37, uint64_t a38)
{
  v44 = ((v39 ^ 0x8E1E1D8B) + 1773360131) ^ ((v39 ^ 0x6B800EF5) - 1943189635) ^ ((v39 ^ (104 * (a37 ^ 0x3127)) ^ 0xE59E0A2D) + 36919957);
  v45 = (((v42 + 797984414) ^ 0xCEF40A1) + 101) ^ (v42 + 797984414) ^ (((v42 + 797984414) ^ 0x4D593383) + 71) ^ (((v42 + 797984414) ^ 0xE5) + 33) ^ (((v42 + 797984414) ^ 0xFD) + 57);
  v46 = 11 * (((v45 ^ 0xA082A686) - 1652771474) ^ ((v45 ^ 0x9FE2B09B) - 1575181455) ^ ((v45 ^ 0x3F601627) + 43910605));
  v47 = 13 * (((2 * ((v41 + LODWORD(STACK[0x30C]) - 97475194) % a31)) & 0xBFF7F778) + (((v41 + LODWORD(STACK[0x30C]) - 97475194) % a31) ^ 0xDFFBFBBC)) + 33826864;
  v48 = STACK[0x2F8];
  v49 = a36 + (((v43 ^ 0x7BF7D755) + 1119405081) ^ ((v43 ^ 0x2246EAAC) + 453638626) ^ ((v43 ^ 0x59B13D64) + 1627270698)) + v46 + LODWORD(STACK[0x2F4]) + 3 * v41 + v47 - v44 + 8 * v44 + 487323990;
  v50 = (v49 ^ 0xC21E4753) & 0x72632F6 | (v49 ^ 0x3DE1B8AC) & (2 * (v49 ^ 0xC21E4753));
  v51 = (v50 ^ 0x2021060) & (4 * (((2 * v49) & 0x831ABC50 ^ 0x418D5E28) & v49)) ^ ((2 * v49) & 0x831ABC50 ^ 0x418D5E28) & v49;
  v52 = (v49 ^ 0xC21E4753) & 0x60420E4 | (v49 ^ 0x3DE1B8AC) & (2 * (v49 ^ 0xC21E4753)) & 0xE4C65EC | (4 * v50) & ~v50;
  v53 = STACK[0x2F8] & v40;
  v54 = (2 * v53) & (LODWORD(STACK[0x2F8]) ^ 0xDC6F344B) ^ v53;
  v55 = ((2 * (LODWORD(STACK[0x2F8]) ^ 0x5CB3148F)) ^ 0x19B95BD8) & (LODWORD(STACK[0x2F8]) ^ 0x5CB3148F) ^ (2 * (LODWORD(STACK[0x2F8]) ^ 0x5CB3148F)) & 0x8CDCADEC;
  v56 = (v55 ^ 0x980988) & (4 * v54) ^ v54;
  v57 = (4 * (v55 ^ 0x8444A424)) & 0x8CDCADE0 ^ 0x50A5A0 ^ ((4 * (v55 ^ 0x8444A424)) ^ 0x3372B7B0) & (v55 ^ 0x8444A424);
  v58 = ((((LODWORD(STACK[0x30C]) ^ 0xEC) + 15) ^ LODWORD(STACK[0x30C]) ^ ((LODWORD(STACK[0x30C]) ^ 2) + 97) ^ ((LODWORD(STACK[0x30C]) ^ 4) + 103)) ^ ((LODWORD(STACK[0x30C]) ^ 0xF7) + 22)) & 0x7F;
  v59 = v49 ^ LODWORD(STACK[0x2F8]) ^ (2 * (v57 & (16 * v56) ^ v56 ^ v51 ^ (v52 ^ 0x2000173) & (16 * v51)));
  v60 = (*(v38 + 4 * a34) + LODWORD(STACK[0x3E4]) - LODWORD(STACK[0x300]));
  v61 = v60 - 1528300125 + (((v59 ^ 0x50BE5C8E) + 1274089877) ^ ((v59 ^ 0x2FD524D1) + 882534860) ^ ((v59 ^ 0xF5379F14) - 294071793));
  v62 = *(v38 + 4 * a32);
  v63 = ((v62 ^ 0x1E58C802) - 835227295) ^ v62 ^ ((v62 ^ 0x538CE561) - 2082251772) ^ ((v62 ^ 0x9D9B9503) + 1307847778) ^ ((v62 ^ 0xFFDFFEFD) + 800081824) ^ v61 ^ ((v61 ^ 0x843B5CE0) + 508513678) ^ ((v61 ^ 0x12F1EB53) - 2004485569) ^ ((v61 ^ 0x8CB6A7FE) + 381859476);
  v64 = ((v63 ^ ((v61 ^ 0x7FF7FEDF) - 444338253) ^ 0xD120DAF9) - 1054050466) ^ ((v63 ^ ((v61 ^ 0x7FF7FEDF) - 444338253) ^ 0xD1C63FE2) - 1043688889) ^ ((v63 ^ ((v61 ^ 0x7FF7FEDF) - 444338253) ^ 0x4AFD4D14) + 1525801137);
  v65 = *(v38 + 4 * a28);
  v66 = LODWORD(STACK[0x2F4]) + v46 + *(v38 + 4 * a29) + v47 - v65 + 7 * (((v58 ^ 0xDAF4FC5F) - 1252958454) ^ ((v58 ^ 0x5247BD71) + 1038229032) ^ ((v58 ^ 0x88B34133) - 417930650)) + 1245618041 + 2111637729 + v64;
  v67 = (v66 ^ 0x96F8A596) & (2 * (v66 & 0x94FAC987)) ^ v66 & 0x94FAC987;
  v68 = ((2 * (v66 ^ 0xB788A69C)) ^ 0x46E4DE36) & (v66 ^ 0xB788A69C) ^ (2 * (v66 ^ 0xB788A69C)) & 0x23726F1A;
  v69 = ((2 * (v48 ^ 0x4BF4E692)) ^ 0x3736BFE2) & (v48 ^ 0x4BF4E692) ^ (2 * (v48 ^ 0x4BF4E692)) & 0x9B9B5FF0;
  v70 = v69 & (4 * ((2 * v53) & (v48 ^ 0xCB6FB452) ^ v53)) ^ (2 * v53) & (v48 ^ 0xCB6FB452) ^ v53;
  v71 = v66 ^ LODWORD(STACK[0x2F8]) ^ (2 * (((4 * (v69 ^ 0x88894011)) & 0x9B9B5FF0 ^ 0xA095FC0 ^ ((4 * (v69 ^ 0x88894011)) ^ 0x6E6D7FC0) & (v69 ^ 0x88894011)) & (16 * v70) ^ v70 ^ (v68 ^ 0x2604E10) & (4 * v67) ^ v67 ^ (((4 * (v68 ^ 0x21122109)) ^ 0xDC9BC60) & (v68 ^ 0x21122109) ^ (4 * (v68 ^ 0x21122109)) & 0x23726F10) & (16 * ((v68 ^ 0x2604E10) & (4 * v67) ^ v67))));
  v72 = v60 + 541528989 + (((v71 ^ 0x41301C6C) + 177372483) ^ ((v71 ^ 0xBBDB1CF8) - 260473385) ^ ((v71 ^ 0xCF787070) - 2066083489));
  v73 = (v62 ^ 0xDA6F3D4A) & (2 * (v62 & v40)) ^ v62 & v40;
  v74 = ((2 * (v62 ^ 0xDAEF1D4C)) ^ 0x1501485E) & (v62 ^ 0xDAEF1D4C) ^ (2 * (v62 ^ 0xDAEF1D4C)) & 0xA80A42E;
  v75 = v62 ^ (2 * (((4 * (v74 ^ 0xA80A421)) & 0xA80A420 ^ 0xA008020 ^ ((4 * (v74 ^ 0xA80A421)) ^ 0x2A0290B0) & (v74 ^ 0xA80A421)) & (16 * ((v74 ^ 0xC) & (4 * v73) ^ v73)) ^ (v74 ^ 0xC) & (4 * v73) ^ v73)) ^ v72 ^ ((v72 ^ 0x3BFB1FBC) + 168594503) ^ ((v72 ^ 0x7A089036) + 1275003853) ^ ((v72 ^ 0xFA845C50) - 881602645) ^ ((v72 ^ 0x757FBFDF) + 1149774886);
  LODWORD(a26) = ((v75 ^ 0x7C8ADAA2) - 2034984310) ^ ((v75 ^ 0xA7D61905) + 1575508271) ^ ((v75 ^ 0xC53B16C1) + 1057314539);
  return (*(a38 + 8 * (a37 ^ HIDWORD(a24))))(v60, v65, a25, 3791612123, 2188031238, a31, 2575503526, a37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

void sub_1001EF3D8(uint64_t a1)
{
  v1 = *(a1 + 20) - 1112314453 * ((2 * (a1 & 0xA687B2F7) - a1 + 1501056264) ^ 0xB62E67D1);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1001EF720@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v46 = (((v44 & 0xFFFFFFF0 ^ 0x1ECC146C) - 2027923706) ^ ((v44 & 0xFFFFFFF0 ^ 0x7BB748A) - 1638451228) ^ ((v44 & 0xFFFFFFF0 ^ 0x197760E6) + a1 - 2137317468)) - 1799691253;
  v47 = (v46 ^ 0xC914D453) & (2 * (v46 & 0xD158D89B)) ^ v46 & 0xD158D89B;
  v48 = ((2 * (v46 ^ 0xE9A4E543)) ^ 0x71F87BB0) & (v46 ^ 0xE9A4E543) ^ (2 * (v46 ^ 0xE9A4E543)) & 0x38FC3DD8;
  v49 = v48 ^ 0x8040448;
  v50 = (v48 ^ 0xE02090) & (4 * v47) ^ v47;
  v51 = ((4 * v49) ^ 0xE3F0F760) & v49 ^ (4 * v49) & 0x38FC3DD8;
  v52 = (v51 ^ 0x20F03540) & (16 * v50) ^ v50;
  v53 = ((16 * (v51 ^ 0x180C0898)) ^ 0x8FC3DD80) & (v51 ^ 0x180C0898) ^ (16 * (v51 ^ 0x180C0898)) & 0x38FC3DC0;
  v54 = v52 ^ 0x38FC3DD8 ^ (v53 ^ 0x8C01D00) & (v52 << 8);
  LODWORD(STACK[0x3AC]) = v46 ^ (2 * ((v54 << 16) & 0x38FC0000 ^ v54 ^ ((v54 << 16) ^ 0x3DD80000) & (((v53 ^ 0x303C2058) << 8) & 0x38FC0000 ^ (((v53 ^ 0x303C2058) << 8) ^ 0x7C3D0000) & (v53 ^ 0x303C2058) ^ 0xC00000))) ^ 0x38C5643A;
  LODWORD(STACK[0x3CC]) = v44 - (v43 ^ 0xE9D5C711);
  return (*(v45 + 8 * (a1 ^ 0xDA7 ^ (6860 * (a1 != -2049442441)))))(a43, a42);
}

uint64_t sub_1001EF91C()
{
  v8 = ((LODWORD(STACK[0x260]) + 13) & 0xF) - v6;
  v9 = v8 + v1 - v4 + ((v5 + 18398) ^ 0xFFFFFFFF247A7979) + ((v5 - 1736130253) | 0x43010028);
  v10 = v8 + 1;
  v11 = (v0 - v6) >= 0x10 && (v10 + v3 - v4) >= 0x10;
  v12 = v10 + v2 - v4;
  v13 = v11 && v12 >= 0x10;
  v14 = ((v9 - v5) & ~v9) >> 63;
  if (!v13)
  {
    LODWORD(v14) = 1;
  }

  return (*(v7 + 8 * ((46 * v14) ^ (v5 | 0x8E4F))))();
}

uint64_t *sub_1001EF9C8(uint64_t *result)
{
  v1 = *result;
  *v1 = 0xC616C11651963EC6;
  *(v1 + 8) = 1442868673;
  *(v1 + 12) = -18751;
  *(v1 + 14) = -58;
  *(v1 + 16) = 0;
  return result;
}

uint64_t sub_1001EFA44@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W3>, unsigned int a4@<W4>, int a5@<W5>, char a6@<W6>, int a7@<W7>, uint64_t a8@<X8>)
{
  v17 = v15 - 1;
  v18 = (v8 + v17);
  v19 = ((v18 ^ *(*(v12 + v13) + (*(v9 + v11) & a4))) & 0x7FFFFFFF) * a5;
  *(a8 + v17) = *(v14 + (v17 & ((a1 & a2) + a3) | (16 * (((v19 ^ HIWORD(v19)) * a5) >> 24)))) ^ *v18 ^ ((v19 ^ BYTE2(v19)) * a6);
  return (*(v16 + 8 * (((v17 == 0) * a7) ^ v10)))();
}

void sub_1001EFABC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = (*a1 ^ 0x7FEFC7DA8EBFFBF3) - 0x7FEFC7D9D278A16CLL + ((2 * *a1) & 0xFFDF8FB51D7FF7E6);
  v4 = v3 < 0xBC475A87;
  v5 = v3 > v2 + 3158792839u;
  if (v2 > 0xFFFFFFFF43B8A578 != v4)
  {
    v5 = v4;
  }

  v1 = *(a1 + 32) ^ (139493411 * ((~a1 & 0x8B636453 | a1 & 0x749C9BAC) ^ 0x874E8516));
  __asm { BRAA            X15, X17 }
}

uint64_t sub_1001EFC78@<X0>(int a1@<W8>)
{
  v7 = v5 + v4;
  v8 = (v4 - 1) & 0xF;
  v9 = v1 - v4 + v8 + 1;
  v10 = v1 + v8 + 1;
  v11 = v8 - v4 + v2 + 6;
  v12 = v2 + v8 + ((6 * (a1 ^ 0x7059u)) ^ 0x49C4);
  v13 = v8 + v3 + 2;
  v15 = v10 > v5 && v9 < v7;
  if (v11 < v7 && v12 > v5)
  {
    v15 = 1;
  }

  v18 = v13 > v5 && v13 - v4 < v7 || v15;
  return (*(v6 + 8 * (v18 ^ 1 | a1)))();
}

uint64_t sub_1001EFDB0()
{
  STACK[0x2F0] = 0;
  v3 = v0 - 17821;
  STACK[0x6B8] = v1;
  v4 = *(&STACK[0x65C] + (STACK[0x65D] & 3 ^ 2));
  v5 = 1009 * (((v3 ^ 0x13) - 22715 + (v4 ^ 0x442A)) ^ ((v4 ^ 0xA094) + 24428) ^ ((v4 ^ 0xE474) + 7052)) + 306;
  v6 = v5 & 0xE6C0 ^ 0x6624;
  v7 = (v5 ^ (2 * ((v5 ^ 0x1AF8) & (2 * ((v5 ^ 0x1AF8) & (2 * ((v5 ^ 0x1AF8) & (2 * ((v5 ^ 0x1AF8) & (2 * ((v5 ^ 0x1AF8) & (2 * ((v5 ^ 0x1AF8) & (2 * ((v5 ^ 0x1AF8) & (2 * ((v5 ^ 0x1AF8) & (2 * ((v5 ^ 0x1AF8) & (2 * ((v5 ^ 0x1AF8) & (2 * ((v5 ^ 0x1AF8) & (2 * ((v5 ^ 0x1AF8) & (2 * v6) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6))) ^ 0x5121;
  v8 = ((65 * (((v7 ^ 0xDD57C620) + 581450208) ^ ((v7 ^ 0xBA473189) + 1169739383) ^ ((v7 ^ 0x67104048) + 15712184)) + 7909409) >> 16);
  v9 = STACK[0x65E] & 3 ^ 2;
  STACK[0x2D0] = &STACK[0x65C];
  return (*(v2 + 8 * ((19 * ((((*(&STACK[0x65C] + v9) ^ 0xCA) - 13 * ((330382100 * (*(&STACK[0x65C] + v9) ^ 0xCAu)) >> 32) + 7) & 0x1C) == 0)) ^ v3)))(v8 < 0x4A);
}

uint64_t sub_1001EFF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, int a16, int a17)
{
  v19 = a16 + a14 + 1141110086 + (((a17 ^ 0xA20E0198) + 1576140392) ^ ((a17 ^ 0x1CD6CB31) - 483838769) ^ (((v17 - 2601) ^ 0x57D7) - 1460491638 + (a17 ^ 0x570D0DB8)));
  v20 = v19 < 0xB372DAE0;
  v21 = a5 + 1512980118 < v19;
  if ((a5 + 1512980118) < 0xB372DAE0 != v20)
  {
    v21 = v20;
  }

  return (*(v18 + 8 * ((12816 * v21) ^ v17)))(a1, a2);
}

uint64_t sub_1001F0060@<X0>(int a1@<W8>)
{
  STACK[0xE10] = v2;
  *v2 = v1;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1001F0084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v40 = v36 ^ 0x10E50;
  *(v38 - 176) = (v36 ^ 0x10E50) + 139493411 * ((v38 - 176 - 2 * ((v38 - 176) & 0x646CF8E0) + 1684863203) ^ 0x684119A6) + 10012;
  *(v38 - 168) = a36;
  (*(v39 + 8 * ((v36 ^ 0x10E50) + 50864)))(v38 - 176);
  *(v38 - 168) = a30;
  *(v38 - 176) = v40 - 906386353 * ((2 * ((v38 - 176) & 0x1DC48F70) - (v38 - 176) + 1648062601) ^ 0x533ABDAD) + 13040;
  (*(v39 + 8 * (v40 + 50858)))(v38 - 176);
  *(v38 - 176) = a29;
  *(v38 - 168) = (v40 + 31831) ^ (297845113 * ((((v38 - 176) | 0x1AF8761E) - (v38 - 176) + ((v38 - 176) & 0xE50789E0)) ^ 0x6DCB6A80));
  (*(v39 + 8 * (v40 ^ 0xCFF8)))(v38 - 176);
  LODWORD(STACK[0x818]) = -371865839;
  return (*(v39 + 8 * ((((v40 + 32924) | 9) ^ 0x8B35) + v40)))(v37, &off_1010A0B50);
}

uint64_t sub_1001F034C()
{
  v3 = v0 ^ 0x2AF5;
  v4 = (v1 ^ 0xB29FF887) & (2 * (v1 & 0x3ADFFC88)) ^ v1 & 0x3ADFFC88;
  v5 = ((2 * (v1 ^ 0xB63BB997)) ^ 0x19C88A3E) & (v1 ^ 0xB63BB997) ^ (2 * (v1 ^ 0xB63BB997)) & 0x8CE4451E;
  v6 = v5 ^ 0x84244501;
  v7 = (v5 ^ 0x8C00000) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0x3391147C) & v6 ^ (4 * v6) & 0x8CE4451C;
  v9 = (v8 ^ 0x800400) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x8C644103)) ^ 0xCE4451F0) & (v8 ^ 0x8C644103) ^ (16 * (v8 ^ 0x8C644103)) & 0x8CE44510;
  v11 = v1 ^ (2 * ((((v10 ^ 0xA0040F) << 8) & 0xCE40000 ^ 0x4440000 ^ (((v10 ^ 0xA0040F) << 8) ^ 0xE4450000) & (v10 ^ 0xA0040F)) & (((v10 ^ 0x8C444100) & (v9 << 8) ^ v9) << 16) ^ (v10 ^ 0x8C444100) & (v9 << 8) ^ v9));
  v12 = ((v11 ^ 0xF12EA6D0) + 1002046785) ^ ((v11 ^ 0xD7E164AA) + 494257979) ^ ((v11 ^ 0x1C103EF2) - 695952029);
  v13 = ((((LOBYTE(STACK[0x467]) ^ 0xCFB530D9) + 810209063) ^ ((LOBYTE(STACK[0x467]) ^ 0x2EB3CA3) - 48970915) ^ (((v3 + 18611) ^ 0x32A16046) + v3 - 25392 + (LOBYTE(STACK[0x467]) ^ 0xCD5E0C3B))) + 65) % (-263495935 - v12);
  v14 = ((2 * v13) & 0xAEFBA7EE) + (v13 ^ 0xD77DD3F7) + v12;
  if (v14 + 943115778 >= 0xFB)
  {
    v15 = -972179023;
  }

  else
  {
    v15 = -1915294801 - v14;
  }

  v17 = v1 == 0x3CE25E0EC520035FLL || v15 == -972179273;
  return (*(v2 + 8 * (v17 | (8 * v17) | v3)))();
}

uint64_t sub_1001F06CC()
{
  STACK[0x7C90] = STACK[0x1728];
  v1 = STACK[0xF18];
  STACK[0x9958] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x23C0)))();
}

uint64_t sub_1001F08F0(__n128 a1)
{
  a1.n128_u16[0] = 24415;
  a1.n128_u8[2] = 95;
  a1.n128_u8[3] = 95;
  a1.n128_u8[4] = 95;
  a1.n128_u8[5] = 95;
  a1.n128_u8[6] = 95;
  a1.n128_u8[7] = 95;
  return (*(v2 + 8 * (v1 ^ 0xCF16D5DE ^ (23560 * (v1 > 0x8214A46A)))))(-33143, a1);
}

uint64_t sub_1001F095C@<X0>(unsigned int a1@<W8>)
{
  v2.n128_u64[0] = 0xBEBEBEBEBEBEBEBELL;
  v2.n128_u64[1] = 0xBEBEBEBEBEBEBEBELL;
  v3.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v3.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(v1 + 8 * a1))(57879, v2, v3);
}

uint64_t sub_1001F09A0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(&a8 + v9) = 920645125;
  v12 = ((a1 - 9713) ^ 1) + v9 > 231106016 || v9 + 1916377632 >= v8;
  return (*(v10 + 8 * ((v12 | (4 * v12)) ^ a1)))();
}

uint64_t sub_1001F09F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, __n128 a7@<Q1>, int8x16_t a8@<Q4>, uint64_t a9@<D5>, int8x16_t a10@<Q6>)
{
  v20 = (a2 - 1) & 0xF;
  v21 = v17;
  v22.i64[0] = vqtbl4q_s8(*(&a7 - 1), a8).u64[0];
  v22.i64[1] = a9;
  v23 = vrev64q_s8(vmulq_s8(v22, a10));
  *(a6 + a2) = veorq_s8(veorq_s8(veorq_s8(veorq_s8(*(v14 + v20 - 15), *(v13 + a2)), *(v20 + v15 - 8)), *(v18 + v20 + v16 + a4)), vextq_s8(v23, v23, 8uLL));
  return (*(v19 + 8 * (((a3 == 0) * a5) ^ v12)))(a1, a2 - 16, a3 - 16);
}

uint64_t sub_1001F0A70()
{
  *(v3 - 160) = v0 + 193924789 * ((((v3 - 160) | 0xDC47FB6A) - ((v3 - 160) & 0xDC47FB68)) ^ 0x6AFCC90C) - 5801;
  *(v2 + 1464) = &STACK[0x5F8];
  v4 = (*(v1 + 8 * (v0 ^ 0xE95A)))(v3 - 160);
  return (*(v1 + 8 * v0))(v4);
}

uint64_t sub_1001F0B44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X8>, __n128 a6@<Q1>, int8x16_t a7@<Q4>, uint64_t a8@<D5>, int8x16_t a9@<Q6>, int8x16_t a10@<Q7>)
{
  v21 = (v18 ^ a3 ^ v16) + v15;
  v22 = v21 & 0xF;
  v24.i64[0] = vqtbl4q_s8(*(&a6 - 1), a7).u64[0];
  v24.i64[1] = a8;
  v25 = vrev64q_s8(veorq_s8(veorq_s8(*(v19 + v21), *(a5 + v22 - 15)), veorq_s8(*(v22 + v13 - 9), *(v14 + v22 - 15))));
  v26 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v25, v25, 8uLL), a10), vmulq_s8(v24, a9)));
  *(a1 + v21) = vextq_s8(v26, v26, 8uLL);
  return (*(v20 + 8 * (((a2 == v18) * a4) ^ v17)))();
}

uint64_t sub_1001F0CA8@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v8 = a2 < v2;
  v9 = 4 * (((v4 ^ 0x5D232DAD) + 878153065) ^ v4 ^ ((v4 ^ 0xB7FD321) + (v5 ^ 0x220B592A)) ^ ((v4 ^ 0x3E28CE49) + 391933581) ^ ((v4 ^ 0x3EFF6FFF) + 395038523));
  v10 = ((v9 ^ 0xAAC810CF) - 87312826) ^ ((v9 ^ 0xF6E47A38) - 1494754125) ^ ((v9 ^ 0x601161F) + 1443016854);
  v11 = ((*(v6 + v10 - 170842718) ^ 0x5F) << 24) | ((*(v6 + v10 - 170842717) ^ 0x5F) << 16) | ((*(v6 + v10 - 170842716) ^ 0x5F) << 8);
  v12 = *(v6 + v10 - 170842715) ^ 0x5F;
  *(a1 + 4 * (v4 - 1451974458)) = (v11 | v12) - 2 * ((v11 | v12) & 0x69D5C71D ^ v12 & 0xC) - 371865839;
  if (v8 == v4 - 750046218 < v2)
  {
    v8 = v4 - 750046218 < a2;
  }

  return (*(v7 + 8 * ((v8 * v3) ^ v5)))();
}

uint64_t sub_1001F0F08@<X0>(int a1@<W8>)
{
  v3 = a1 - 3736;
  v4 = (*(v1 + 8 * ((a1 - 3736) ^ 0x4B89)))(v2);
  return (*(v1 + 8 * v3))(v4);
}

uint64_t sub_1001F1030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, unsigned int a41)
{
  v46 = *(&a29 + v41 + 72);
  v47 = ((v41 << (v42 - 126)) & 0xF7FFF9F8) + (v41 ^ 0x7BFFFCFF);
  *(v44 + v47 - 2080374015) = v46 ^ 0x23;
  *(v44 + v47 - 2080374014) = (BYTE1(v46) ^ 0x86) + (~(2 * (BYTE1(v46) ^ 0x86)) | 0x41) + 96;
  *(v44 + v47 - 2080374013) = (BYTE2(v46) ^ 0x7C) - ((2 * (BYTE2(v46) ^ 0x7C)) & 0xBF) + 95;
  *(v44 + v47 - 2080374012) = (HIBYTE(v46) ^ 0x1D) - ((2 * (HIBYTE(v46) ^ 0x1D)) & 0xBF) + 95;
  return (*(v45 + 8 * (((v41 + 4 < a41) * v43) ^ v42)))();
}

uint64_t sub_1001F1120(unsigned int *a1)
{
  v7 = *a1;
  LODWORD(STACK[0xD90]) = *v3;
  LODWORD(STACK[0xDB0]) = v2;
  v8 = (512 - 2 * v2) / SLODWORD(STACK[0xD70]);
  v9 = STACK[0xD60];
  v10 = *(STACK[0xD60] + 4 * v8);
  LODWORD(STACK[0xDA0]) = v7;
  *a1 = v7 ^ 0xE9D5C711 ^ v10;
  v11 = *(v9 + 4 * (v8 + 1)) ^ *v3;
  *v3 = v11 ^ 0xE9D5C711;
  v12 = *a1;
  LODWORD(v9) = STACK[0xD30];
  LODWORD(STACK[0x10F08]) = LODWORD(STACK[0xD30]) + v5 + 831903354;
  STACK[0x10F00] = STACK[0xD50];
  STACK[0xE00] = v6;
  STACK[0x10EF8] = v6;
  STACK[0x10EF0] = v3;
  STACK[0x10EE0] = a1;
  LODWORD(STACK[0x10ED8]) = (v11 ^ 0xF5E7DECD) - v9;
  LODWORD(STACK[0x10EE8]) = v9 ^ v12 ^ 0x3AE67DCC;
  v14 = v1;
  (*(STACK[0xF18] + 8 * (v5 + 19814)))(&STACK[0x10ED8]);
  v15 = *a1 ^ (109 * (v5 ^ 0x7FD7) + 804404804);
  v16 = STACK[0xD20];
  LODWORD(STACK[0x10EF0]) = (*v3 ^ 0xEBF88D07) - LODWORD(STACK[0xD20]);
  LODWORD(STACK[0x10F00]) = v16 + v5 + 1167900815;
  STACK[0x10ED8] = v3;
  STACK[0x10EE8] = STACK[0xD40];
  STACK[0x10EF8] = a1;
  LODWORD(STACK[0x10EE0]) = v15 - v16;
  v17 = STACK[0xF18];
  v18 = (*(STACK[0xF18] + 8 * (v5 ^ 0xB2FF)))(&STACK[0x10ED8]);
  v19 = *v4;
  v20 = ((*(STACK[0xDC0] + 20) ^ 0x89620E12) + 1990062574) ^ ((*(STACK[0xDC0] + 20) ^ 0x6191A28) - 102308392) ^ ((*(STACK[0xDC0] + 20) ^ 0x8F7B1465) + 1887759259);
  v21 = *(STACK[0xDC0] + 19) & 0xFE;
  v22 = ((v21 ^ 0xD2FD3AAC) + 1252820014) ^ ((v21 ^ 0x264F8FAF) - 1105317585) ^ ((v21 ^ 0xF4B2B55C) + 1826819038);
  LODWORD(STACK[0xEC0]) = *v14 ^ 0xE9D5C711;
  LODWORD(STACK[0xEB0]) = v22 - 1921277409;
  LODWORD(STACK[0xEA0]) = v20 + 1853288636;
  LODWORD(STACK[0xE90]) = v19 ^ 0xE9D5C711;
  LODWORD(STACK[0xE80]) = 79 * (v22 - 1720665119);
  return (*(v17 + 8 * v5))(v18);
}

uint64_t sub_1001F1440@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v35 = ((v31 ^ 0x265E3548) - 164525013) ^ v31 ^ ((v31 ^ 0x7FFF3FF7) - 1349482858) ^ (((v32 + 899226920) ^ 0x9DC33037) + (v31 ^ 0x7835424C)) ^ ((v31 ^ 0xE0471D0 ^ (v32 - 11826)) - 563366131);
  v36 = v33 + 681233971 + (((v35 ^ 0x3E38A5D2) - 1806088420) ^ ((v35 ^ 0xAFFFC229) + 94249185) ^ ((v35 ^ 0x1120EDDD) - 1153364203)) - 488380122;
  v37 = (v36 ^ 0x144F25F8) & (2 * (v36 & 0x856E01F9)) ^ v36 & 0x856E01F9;
  v38 = ((2 * (v36 ^ 0x14C326BA)) ^ 0x235A4E86) & (v36 ^ 0x14C326BA) ^ (2 * (v36 ^ 0x14C326BA)) & 0x91AD2742;
  v39 = (v30 ^ 0x894FBD53) & (2 * (v30 & v34)) ^ v30 & v34;
  v40 = ((2 * (v30 ^ 0x9C89D97)) ^ 0xB34E49E8) & (v30 ^ 0x9C89D97) ^ (2 * (v30 ^ 0x9C89D97)) & 0xD9A724F4;
  v41 = ((4 * (v40 ^ 0x48A12414)) & 0xD9A724F0 ^ 0x408400D0 ^ ((4 * (v40 ^ 0x48A12414)) ^ 0x669C93D0) & (v40 ^ 0x48A12414)) & (16 * (v40 & (4 * v39) ^ v39)) ^ v40 & (4 * v39) ^ v39 ^ v38 & (4 * v37) ^ v37 ^ ((4 * v38) ^ 0x42948500) & (v38 ^ 0x1080600) & (16 * (v38 & (4 * v37) ^ v37));
  return (*(a30 + 8 * ((1014 * (((*(a1 + 4 * a2) + (((v36 ^ v30 ^ (2 * v41) ^ 0x5CD2167B) + 2137856452) ^ ((v36 ^ v30 ^ (2 * v41) ^ 0x2DA4EC66) + 236708831) ^ ((v36 ^ v30 ^ (2 * v41) ^ 0x273D4287) + 75648320)) + 1518010944) & 7) != 2)) ^ v32)))();
}

uint64_t sub_1001F174C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, uint64_t a37)
{
  v54 = v45 < v41;
  if (v40 - a35 == 1079853366)
  {
    v55 = 0;
  }

  else
  {
    v55 = ((a36 - 11956) ^ 0xF6E8F8FE) + v40;
  }

  v56 = *(v44 + 4 * v55) + 1901388722 + *(v44 + 4 * ((3 * v40 - 457561659) % v47));
  v57 = ((2 * (v56 ^ 0xD30C1AC3)) ^ 0x2565FE9E) & (v56 ^ 0xD30C1AC3) ^ (2 * (v56 ^ 0xD30C1AC3)) & 0x92B2FF4E;
  v58 = (v56 ^ 0x513CD1CB) & (2 * (v56 & 0x41BEE58C)) ^ v56 & 0x41BEE58C;
  v59 = v57 ^ 0x92920141;
  v60 = (v57 ^ 0x20BE00) & (4 * v58) ^ v58;
  v61 = ((4 * v59) ^ 0x4ACBFD3C) & v59 ^ (4 * v59) & 0x92B2FF4C;
  v62 = (v61 ^ 0x282FD00) & (16 * v60) ^ v60;
  v63 = ((16 * (v61 ^ 0x90300243)) ^ 0x2B2FF4F0) & (v61 ^ 0x90300243) ^ (16 * (v61 ^ 0x90300243)) & 0x92B2FF40;
  v64 = v62 ^ 0x92B2FF4F ^ (v63 ^ 0x222F400) & (v62 << 8);
  v65 = *(v44 + 4 * (v40 - 152520553));
  v66 = v65 ^ ((v65 ^ 0x334CA384) - 484238617) ^ ((v65 ^ v42) + v38) ^ ((v65 ^ v51) + v48) ^ ((v65 ^ v39) + a7) ^ v56 ^ (2 * ((v64 << 16) & v53 ^ v64 ^ ((v64 << 16) ^ 0x7F4F0000) & ((((v63 ^ 0x90900B0F) << 8) ^ 0x32FF0000) & (v63 ^ 0x90900B0F) ^ ((v63 ^ 0x90900B0F) << 8) & v53)));
  *(v44 + 4 * (v40 - 152520553)) = (((v66 ^ v49) + v50) ^ ((v66 ^ v52) + a8) ^ ((v66 ^ v46) + v43)) + a6;
  if (v54 == v40 + v37 < v41)
  {
    v54 = v40 + v37 < v45;
  }

  return (*(a37 + 8 * (((2 * !v54) | (4 * !v54)) ^ a36)))();
}

uint64_t sub_1001F1BB0(double a1, __n128 a2, __n128 a3, __n128 a4, int8x16_t a5, double a6, int8x16_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  v20 = a12 & (a10 + 15);
  v21 = v13;
  v22.i64[0] = vqtbl4q_s8(*(&a2 - 1), a5).u64[0];
  *&v22.i64[1] = a6;
  v23 = vrev64q_s8(vmulq_s8(v22, a7));
  *(v18 + a10) = veorq_s8(veorq_s8(veorq_s8(*(v15 + v20 - 15), *(v14 + a10)), veorq_s8(*(v17 + v20 - 15), *(v20 + v16 - 8))), vextq_s8(v23, v23, 8uLL));
  return (*(v19 + 8 * (((a11 == 0) * a13) ^ a9)))();
}

uint64_t sub_1001F1C7C()
{
  v4 = v2 < 0xA7409D31;
  if (v4 == (v1 + 1) > 0xFFFFFFFF58BF62CELL)
  {
    LOBYTE(v4) = v1 + 2806029618 < v2;
  }

  return (*(v3 + 8 * ((8171 * (((v4 ^ (v0 - 117)) ^ -((v0 - 15) ^ 0xED)) & 1)) ^ (v0 + 21489))))();
}

uint64_t sub_1001F1D60(int a1)
{
  v5 = *v4;
  STACK[0x2A0] = v4;
  v6 = *(v4 + 24);
  LODWORD(STACK[0x3AC]) = a1 ^ 0x1ACD;
  *(v3 - 112) = veorq_s8(*v5, xmmword_100F52650);
  if (v1)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  v9 = *(v2 + 8 * ((25 * v8) ^ a1));
  LODWORD(STACK[0x3A8]) = -42900;
  return v9();
}

uint64_t sub_1001F1E78@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  v34 = (((a1 ^ 0xA56CD8F0) + 1519593232) ^ ((a1 ^ 0xED8A5241) + 309702079) ^ ((a1 ^ 0xA1334DA0) + 1590473312)) + 1393843775;
  v35 = ((v34 ^ 0xF348EEAB) + 1703511676) ^ v34 ^ ((v34 ^ 0xE03E61CE) + 1996425503) ^ ((v34 ^ 0x87F7C735) + 288796646) ^ ((v34 ^ 0xFDBFDF7F) + 1803466672);
  *(*(a12 + 96) + 504) = v31 + 1;
  *(*(a12 + 96) + 496) = v35 ^ 0x80EB503E;
  v36 = 634647737 * ((v33 - 160) ^ 0x6D962FFC);
  *(v33 - 144) = 20983 - v36;
  *(v33 - 160) = v36 - 1431125373;
  *(v33 - 152) = &a22;
  v37 = (*(v32 + 415752))(v33 - 160);
  return (*(v32 + 8 * ((32701 * ((((a31 & 0x3F ^ 0x93E30036) - 73621219) ^ ((a31 & 0x3F ^ 0x2AA77B69) + 1121507908) ^ ((a31 & 0x3F ^ 0xB9447B5F) - 784606602)) - 2125060698 + (((v35 ^ 0x5E072F6C) + 554926254) ^ ((v35 ^ 0xAA2BE4AA) - 717272212) ^ ((v35 ^ 0x9D125CE9) - 502861015)) < 0xFFFFFFC0)) ^ 0x3109u)))(v37);
}

uint64_t sub_1001F20E8(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = *(a2 + 4);
  *(a1 + 32) = *(a2 + 8);
  return 0;
}

void sub_1001F2250(_DWORD *a1)
{
  v1 = *a1 + 1012831759 * ((((2 * a1) | 0xDD06A2A0) - a1 - 1854099792) ^ 0x7E1047DA);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1001F23AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, char a3@<W4>, char a4@<W5>, char a5@<W6>, char a6@<W7>, char a7@<W8>)
{
  v24 = ((v12 ^ a3) + v8) ^ v12 ^ ((v12 ^ a4) + a5) ^ ((v12 ^ a6) + v23) ^ ((v12 ^ v7) + a7);
  v25 = ((v24 ^ v15) + v13) ^ ((v24 ^ v18) + v20) ^ ((v24 ^ v22) + v16);
  *(a2 + v11) = v10 + v25 * v19 + v9 * (v25 + v17);
  return (*(a1 + 8 * (((v11 == 0) * v14) ^ v21)))();
}

uint64_t sub_1001F243C()
{
  v7 = v3 - 1;
  *(v5 + v7) ^= *(v0 + (v7 & 0xF)) ^ *((v7 & 0xF) + v1 + 2) ^ (-9 * (v7 & 0xF)) ^ *(v2 + (v7 & 0xF));
  return (*(v6 + 8 * ((16 * (v7 != 0)) | (32 * (v7 != 0)) | (v4 + 153))))();
}

uint64_t sub_1001F2494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v27 = *v25;
  *(v26 - 112) = (v22 - 1762637949) ^ (906386353 * (((((v26 - 112) | 0x57235924) ^ 0xFFFFFFFE) - (~(v26 - 112) | 0xA8DCA6DB)) ^ 0x99DD6BFF));
  *(v26 - 104) = v27;
  (*(v24 + 8 * (v22 + 39597)))(v26 - 112);
  v25[2] = a21;
  v25[3] = a22;
  *(v26 - 112) = *v25;
  *(v26 - 104) = v22 - 2405 + 155453101 * ((((2 * (v26 - 112)) | 0xA8B430D8) - (v26 - 112) - 1415190636) ^ 0xB27C03A3) + 296778851;
  (*(v24 + 8 * (v22 + 39614)))(v26 - 112);
  (*(v24 + 8 * ((v22 - 2405) ^ 0xEC51)))(v23);
  *(v26 - 104) = v22 - 2405 + 1112314453 * ((((v26 - 112) | 0xE84B46AE) - ((v26 - 112) & 0xE84B46A8)) ^ 0x71D6C77) + 4559;
  *(v26 - 112) = a14;
  v28 = (*(v24 + 8 * (v22 + 39924)))(v26 - 112);
  return (*(v24 + 8 * (v22 - 2405)))(v28);
}

uint64_t sub_1001F2610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, _DWORD *a36)
{
  *a36 |= 0x10u;
  LODWORD(STACK[0x7A8]) = v36 - 1888617826;
  LODWORD(STACK[0x7AC]) = (((v37 ^ 0x321E131D) - 840831773) ^ ((v37 ^ 0x457B7C7B) - 1165720699) ^ (((v38 - 1632595522) ^ v37) + 1632589705)) - 371865847;
  return (*(v39 + 8 * v38))();
}

uint64_t sub_1001F26AC(int8x16_t a1, int8x8_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v16.val[0].i64[0] = (v12 + a6 - 1) & 0xF;
  v16.val[0].i64[1] = (v12 + a7 + v13) & 0xF;
  v16.val[1].i64[0] = (v12 + a6 + 13) & 0xF;
  v16.val[1].i64[1] = (v12 + a6 + 12) & 0xF;
  v16.val[2].i64[0] = (v12 + a6 + 11) & 0xF;
  v16.val[2].i64[1] = (v12 + a6 + 10) & 0xF;
  v16.val[3].i64[0] = (v12 + a6 + 9) & 0xF;
  v16.val[3].i64[1] = (v12 + a6) & 0xF ^ 8;
  *(a8 + v12) = veor_s8(veor_s8(veor_s8(*(v10 + v16.val[0].i64[0] - 7), *(a9 + v12)), veor_s8(*(v11 + v16.val[0].i64[0] - 7), *(v9 + v16.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v16, a1), a2)));
  return (*(v14 + 8 * ((a5 == a6) | (16 * (a5 == a6)) | a4)))();
}

uint64_t sub_1001F285C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15)
{
  v19 = a15 + (((v17 ^ 0xC3C89045) + 1010266043) ^ ((v17 ^ 0x6325153A) - 1663374650) ^ ((v17 ^ 0x4938426E) + 1104 * (v15 ^ 0x1E32) - 1228427102));
  v20 = v19 < 0xD154F54F;
  v21 = v16 + 2014337285 < v19;
  if ((v16 + 2014337285) < 0xD154F54F != v20)
  {
    v21 = v20;
  }

  return (*(v18 + 8 * ((31330 * v21) ^ v15)))();
}

uint64_t sub_1001F29A0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  *(v44 - 160) = a1;
  *(v44 - 152) = &a40;
  *(v44 - 144) = a20 - 155453101 * ((((2 * v43) | 0x604CFA60) - v43 - 807828784) ^ 0xD60066FF) - 1845118316;
  (*(v41 + 8 * a13))(v44 - 160);
  *(v44 - 152) = a20 + 139493411 * (((v43 | 0xCE8ABD6A) - v43 + (v43 & 0x31754290)) ^ 0xC2A75C2F) + v40;
  *(v44 - 144) = &a34;
  *(v44 - 136) = &a31;
  *(v44 - 160) = &a40;
  *(v44 - 128) = &a40;
  (*(v41 + 8 * a12))(v44 - 160);
  v45 = a32;
  *(v44 - 120) = (a20 - 1845144794) ^ (17902189 * (((v43 | 0x52143445) - v43 + (v43 & 0xADEBCBB8)) ^ 0xDC5B2255));
  *(v44 - 160) = &a34;
  *(v44 - 152) = &a40;
  *(v44 - 144) = &a31;
  *(v44 - 136) = &a40;
  *(v44 - 128) = v45;
  v46 = (*(v41 + 8 * a11))(v44 - 160);
  return (*(v41 + 8 * ((1003 * (v42 < ((2 * a20) ^ 0xDBF61EDE))) ^ a14)))(v46);
}

uint64_t sub_1001F2BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x260] = v65;
  STACK[0x258] = *(a8 + 8 * a9);
  v67 = STACK[0x2F8];
  *(v66 - 232) = 0;
  STACK[0x278] = v67;
  return (*(a8 + 8 * ((28 * (v67 == 0)) ^ (v64 - 32177))))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63, a64);
}

uint64_t sub_1001F2C8C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X8>, __n128 a7@<Q1>, int8x16_t a8@<Q4>, uint64_t a9@<D5>, int8x16_t a10@<Q6>, int8x16_t a11@<Q7>)
{
  v21 = (a4 ^ v18) + v16;
  v22 = v21 & 0xF;
  v24.i64[0] = vqtbl4q_s8(*(&a7 - 1), a8).u64[0];
  v24.i64[1] = a9;
  v25 = vrev64q_s8(veorq_s8(veorq_s8(*(v19 + v21), *(v15 + v22 - 15)), veorq_s8(*(v22 + v14 - 13), *(a6 + v22 - 15))));
  v26 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v25, v25, 8uLL), a11), vmulq_s8(v24, a10)));
  *(a1 + v21) = vextq_s8(v26, v26, 8uLL);
  return (*(v20 + 8 * (((((a3 + v18) | a2) >= 0) * a5) ^ v17)))();
}

uint64_t sub_1001F2D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>)
{
  v8.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v8.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  v9.n128_u64[0] = 0x5F0000005F000000;
  v9.n128_u64[1] = 0x5F0000005F000000;
  v10.n128_u64[0] = 0xBEBEBEBEBEBEBEBELL;
  v10.n128_u64[1] = 0xBEBEBEBEBEBEBEBELL;
  return (*(v7 + 8 * (a7 + 16233)))(a1, a2, a3, a4, a5, a6, 3800267139, v8, vdupq_n_s32(0x69D5C715u), v9, vdupq_n_s32(0xE9D5C711), v10);
}

uint64_t sub_1001F2DEC(uint64_t a1, unsigned int a2, int a3, char a4, int a5)
{
  v15 = v11 - 1;
  v16 = (v5 + v15);
  v17 = ((v16 ^ *(*(v9 + v10) + (*(v7 + v8) & a2))) & 0x7FFFFFFF) * a3;
  *(v13 + v15) = *(v6 + (v15 & 0xF | (16 * (((v17 ^ HIWORD(v17)) * a3) >> 24)))) ^ *v16 ^ ((v17 ^ BYTE2(v17)) * a4);
  return (*(v14 + 8 * (((v15 != 0) * a5) ^ v12)))();
}

uint64_t sub_1001F30DC(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, unsigned int a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40)
{
  v44 = a2 + v43 - 983902113;
  v45 = ((2 * (v42 ^ 0x6DB44FF0)) ^ 0x7BB7ED26) & (v42 ^ 0x6DB44FF0) ^ (2 * (v42 ^ 0x6DB44FF0)) & 0xBDDBF692;
  v46 = (((4 * (v45 ^ 0x84481291)) ^ 0xF76FDA40) & (v45 ^ 0x84481291) ^ (4 * (v45 ^ 0x84481291)) & 0xBDDBF690) & (16 * (v45 & (4 * (a4 & (v42 ^ 0xCD6F3D72) ^ a3)) ^ a4 & (v42 ^ 0xCD6F3D72) ^ a3)) ^ v45 & (4 * (a4 & (v42 ^ 0xCD6F3D72) ^ a3)) ^ a4 & (v42 ^ 0xCD6F3D72) ^ a3 ^ v44 & 0xEBF503C0 ^ ((v44 ^ 0xD903F646) & (2 * v44) ^ 0x36502C00) & (16 * (v44 & 0xEBF503C0)) & ((v40 + 907545320) & 0xC9E7F756 ^ (4 * ((v44 ^ 0xD903F646) & (2 * v44))) ^ (((v40 + 1013949307) | 0x8085D210) + 1728730032));
  v47 = ((v44 ^ v42 ^ (2 * v46) ^ 0xB3CC50F) + 2060469169) ^ ((v44 ^ v42 ^ (2 * v46) ^ 0xDC816113) - 1385306195) ^ ((v44 ^ v42 ^ (2 * v46) ^ 0x25071EBF) + 1424726017);
  v48 = a40 - *(v41 + 4 * (7 % a27)) + 1231143863 * v47 + (v47 + 2091500515) * (*(v41 + 4 * (0xE % a27)) - 2029128276);
  return (*(a37 + 8 * ((25 * (((((2 * (v48 - 109)) | 2) ^ (v48 - 109)) & 7) != 1)) ^ v40)))();
}

uint64_t sub_1001F32F0@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, int a15, int a16)
{
  v22 = bswap32(a3);
  v23 = bswap32(v16);
  v24 = 1022166737 * (((&a10 | 0x972884AD) - (&a10 & 0x972884A8)) ^ 0x2D38653F);
  a10 = v20;
  a11 = v18;
  a14 = v19;
  a13 = v24 + (v23 ^ 0x77DF9F7B) - 538608392 + ((v23 << (v21 ^ a2)) & 0xEFBF3EF6);
  a15 = v21 - v24 - 7455;
  a16 = v24 + v22 - ((v22 << (v21 ^ a2)) & 0x1B5C3192) - 1917970231;
  (*(v17 + 8 * (v21 ^ 0x8CC9)))(&a10);
  return (*(v17 + 8 * ((5611 * (a12 == -371865839)) ^ v21)))(a1, 18214, 20);
}

uint64_t sub_1001F3418()
{
  LODWORD(STACK[0x39C]) = v0;
  LODWORD(STACK[0x2CC]) = LODWORD(STACK[0x3A0]) + 1374768082;
  LODWORD(STACK[0x2F4]) = ((v1 - 417165417) & 0x18DD76D7) + LODWORD(STACK[0x324]) - 26239;
  return (*(v2 + 8 * v1))();
}

void sub_1001F346C(uint64_t a1)
{
  v1 = *(a1 + 8) + 1112314453 * ((~a1 & 0xF372C4C5 | a1 & 0xC8D3B3A) ^ 0x1C24EE1C);
  v2 = *a1;
  **a1 = 0x80000000000;
  v3 = *(&off_1010A0B50 + (v1 ^ 0x477A)) - 810145054;
  v4 = (*&v3[8 * (v1 ^ 0x89A2)])(49152);
  v2[1] = v4;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001F3538(int a1, double a2, __n128 a3, __n128 a4)
{
  a3.n128_u16[0] = 18247;
  a3.n128_u8[2] = 71;
  a3.n128_u8[3] = 71;
  a3.n128_u8[4] = 71;
  a3.n128_u8[5] = 71;
  a3.n128_u8[6] = 71;
  a3.n128_u8[7] = 71;
  a4.n128_u16[0] = 24415;
  a4.n128_u8[2] = 95;
  a4.n128_u8[3] = 95;
  a4.n128_u8[4] = 95;
  a4.n128_u8[5] = 95;
  a4.n128_u8[6] = 95;
  a4.n128_u8[7] = 95;
  return (*(v4 + 8 * a1))(xmmword_100F523B0, a3, a4);
}

uint64_t sub_1001F360C(unsigned int a1, double a2, __n128 a3, __n128 a4)
{
  a3.n128_u16[0] = 10023;
  a3.n128_u8[2] = 39;
  a3.n128_u8[3] = 39;
  a3.n128_u8[4] = 39;
  a3.n128_u8[5] = 39;
  a3.n128_u8[6] = 39;
  a3.n128_u8[7] = 39;
  a4.n128_u16[0] = 24415;
  a4.n128_u8[2] = 95;
  a4.n128_u8[3] = 95;
  a4.n128_u8[4] = 95;
  a4.n128_u8[5] = 95;
  a4.n128_u8[6] = 95;
  a4.n128_u8[7] = 95;
  return (*(v4 + 8 * a1))(xmmword_100F523B0, a3, a4);
}

uint64_t sub_1001F3650@<X0>(int a1@<W8>)
{
  *v1 = 0xAA627F4700000000;
  v1[1] = 0xE9D5C711E9D5C711;
  v1[2] = 0xE9D5C711E9D5C711;
  v1[3] = 0;
  v1[4] = 109531105;
  v1[5] = 0;
  return (*(v2 + 8 * a1))();
}

uint64_t sub_1001F3684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, int8x16_t a7@<Q4>, uint64_t a8@<D5>, int8x16_t a9@<Q6>, uint64_t a10@<X2>, uint64_t a11@<X3>, uint64_t a12@<X4>, uint64_t a13@<X5>)
{
  v18 = (a13 ^ a1) + v14;
  v19 = v18 & 0xF;
  v21.i64[0] = vqtbl4q_s8(*(&a4 - 2), a7).u64[0];
  v21.i64[1] = a8;
  v22 = vrev64q_s8(vmulq_s8(v21, a9));
  *(a2 + v18) = veorq_s8(veorq_s8(veorq_s8(*(v11 + v19 - 15), *(a2 + v18)), veorq_s8(*(v19 + v12 - 14), *(v19 + v13 - 12))), vextq_s8(v22, v22, 8uLL));
  v23 = a11 == a1;
  v24 = a1 + 16;
  v25 = !v23;
  return (*(v17 + 8 * ((v25 * v15) | v16)))(v24);
}

uint64_t sub_1001F36FC()
{
  v4 = *v1;
  *(v3 - 168) = v2 + 634647737 * ((((v3 - 184) | 0x21C0A354) - (v3 - 184) + ((v3 - 184) & 0xDE3F5CA8)) ^ 0x4C568CA8) - 6818;
  *(v3 - 176) = v4;
  (*(v0 + 8 * (v2 + 20368)))(v3 - 184);
  *(v1 + 2) = 0;
  v5 = (*(v0 + 8 * (v2 ^ 0xB191)))(v1[2]);
  v1[2] = 0;
  return (*(v0 + 8 * v2))(v5);
}

uint64_t sub_1001F3794(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, unsigned int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40)
{
  v45 = a4 + v44 - 839065544;
  v46 = (v45 ^ 0xE34AF3E7) & (2 * (v45 & 0xE352FBE7)) ^ v45 & 0xE352FBE7;
  v47 = ((2 * (v45 ^ (v43 + 899252941) ^ 0x14F71FB3)) ^ (v43 - 2072504755)) & (v45 ^ (v43 + 899252941) ^ 0x14F71FB3) ^ (2 * (v45 ^ (v43 + 899252941) ^ 0x14F71FB3)) & 0xC23C2F4C;
  v48 = *(&a40 + a32);
  v49 = (v48 ^ 0x884F3863) & (2 * (v48 & v40)) ^ v48 & v40;
  v50 = ((2 * (v48 ^ 0x28914AA5)) ^ 0xF1FDE78C) & (v48 ^ 0x28914AA5) ^ (2 * (v48 ^ 0x28914AA5)) & 0xF8FEF3C6;
  v51 = v48 ^ v45 ^ (2 * ((v47 ^ 0x80180E08) & (4 * v46) ^ v46 ^ (v50 ^ 0xC0FCE384) & (4 * v49) ^ v49 ^ (((4 * (v50 ^ 0x8021042)) ^ 0xE3FBCF10) & (v50 ^ 0x8021042) ^ (4 * (v50 ^ 0x8021042)) & 0x78FEF3C0) & (16 * ((v50 ^ 0xC0FCE384) & (4 * v49) ^ v49)) ^ (((4 * (v47 ^ 0x42042144)) ^ 0x8F0BD30) & (v47 ^ 0x42042144) ^ (4 * (v47 ^ 0x42042144)) & 0x423C2F40) & (16 * ((v47 ^ 0x80180E08) & (4 * v46) ^ v46))));
  v52 = *(&a40 + v41);
  v53 = (v52 + v40);
  v54 = a40 - v42 + 10568790 * v52 + ((((v51 ^ 0x9CDCC0F4) - 678298798) ^ ((v51 ^ 0x9DAEF3C2) - 689715096) ^ ((v51 ^ 0xD7DB71B2) - 1667872232)) + 1635402376) * v53 - 1638148720;
  return (*(a37 + 8 * ((26 * (((2 * v54) & 4 ^ v54 & 7) != 3)) ^ (v43 + 16163))))((v43 + 16163), a2, a3, &a40, v52, 10568790, v53, a31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1001F39D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W8>)
{
  v4 = (a3 + 265279343) & 0xF02F7FF5;
  v5 = STACK[0x288];
  *(a2 + 104) = (v4 ^ 0xF312F540) + LODWORD(STACK[0x288]);
  return (*(v3 + 8 * ((14 * ((v4 ^ 0xF312F540) + v5 != 0)) | a3)))(a1, 1098133980);
}

uint64_t sub_1001F3A70()
{
  v3 = (*(v2 + 8 * (v1 ^ 0x4E70)))(v0 + 33);
  v4 = (*(v2 + 8 * (v1 + 17770)))((v1 ^ 0xDE14) + 1804234232 + (v3 ^ 0x947536D4) + ((2 * v3) & 0x28EA6DA8)) == 0;
  return (*(v2 + 8 * ((1020 * v4) ^ (v1 - 11070))))(&off_1010A0B50);
}

uint64_t sub_1001F3B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, unsigned int a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40)
{
  v43 = v42 + *(v41 + 4 * a34) - 957317549;
  v44 = (v43 ^ 0xC91E5D8A) & (2 * (((2 * v40) ^ 0xEA5FCD5A) & v43)) ^ ((2 * v40) ^ 0xEA5FCD5A) & v43;
  v45 = (((v43 ^ 0xCD1ECF1A) << ((v40 - 51) ^ 0x19)) ^ 0x4E8325AC) & (v43 ^ 0xCD1ECF1A) ^ ((v43 ^ 0xCD1ECF1A) << ((v40 - 51) ^ 0x19)) & 0x274192D6;
  v46 = v45 ^ 0x21409252;
  v47 = v45 & (4 * v44) ^ v44;
  v48 = (4 * v46) & 0x274192D0 ^ 0x5000240 ^ ((4 * v46) ^ 0x1D064B50) & v46;
  v49 = *(v41 + 4 * a32);
  v50 = (v49 ^ 0x9A4F3C7A) & (2 * (v49 & 0xD06FB963)) ^ v49 & 0xD06FB963;
  v51 = ((2 * (v49 ^ 0x1A1B4EF8)) ^ 0x94E9EF36) & (v49 ^ 0x1A1B4EF8) ^ (2 * (v49 ^ 0x1A1B4EF8)) & 0xCA74F79A;
  v52 = v43 ^ v49 ^ (2 * ((v51 ^ 0x8060E710) & (4 * v50) ^ v50 ^ (((4 * (v51 ^ 0x4A141089)) ^ 0x29D3DE60) & (v51 ^ 0x4A141089) ^ (4 * (v51 ^ 0x4A141089)) & 0x4A74F790) & (16 * ((v51 ^ 0x8060E710) & (4 * v50) ^ v50)) ^ v47 ^ v48 & (16 * v47)));
  v53 = *(v41 + 4 * (0xE % a27));
  return (*(a37 + 8 * ((137 * (((a40 + 1942859688 * v53 - *(v41 + 4 * (7 % a27)) + ((((v52 ^ 0x6D80ED34) + 152516227) ^ ((v52 ^ 0x3A66E615) + 1592868260) ^ ((v52 ^ 0xED76EF8E) - 1981729735)) - 1372909250) * (v53 - 797984413) + 374560248) & 7) != 1)) ^ v40)))();
}

void sub_1001F3EA0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = (*(a1 + 8) ^ 0xFEE45EFCEB5F7EC9) + 0x11BA1039B3340A9 + ((2 * *(a1 + 8)) & 0xFDC8BDF9D6BEFD92);
  v4 = v3 < 0x8692BF72;
  v5 = v3 > v2 + 2257764210u;
  if (v2 > 0xFFFFFFFF796D408DLL != v4)
  {
    v5 = v4;
  }

  v1 = *(a1 + 20) - 1012831759 * ((a1 - 2 * (a1 & 0x1E4E23CF) - 1639046193) ^ 0x8EDD3545);
  __asm { BRAA            X0, X17 }
}

uint64_t sub_1001F4108@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W8>)
{
  HIDWORD(v10) = a1 ^ 0xBB891E;
  LODWORD(v10) = ~a1;
  v11 = v5 + (v10 >> 27) + *(v3 + 4 * v4) + (v8 & 0x36C32257 ^ 0x22012006 ^ (v8 ^ 0xAA31A0AE) & ((a2 - 12) ^ v6 ^ 0xA94FA3C6) | v7 & 0x6ACF514F ^ 0x4A4E5040 ^ (v8 ^ 0x3F010E1E) & (v7 ^ 0xDB5EDC60)) + 791416539;
  return (*(v9 + 8 * ((29077 * ((a3 - 1796061012) < 0x14)) ^ a2)))((v11 - ((2 * v11 + 889516850) & 0x66465A5A) - 1918523706) ^ 0xCB98A433);
}

uint64_t sub_1001F4400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, char a37)
{
  *(v41 - 128) = v38 - 906386353 * ((2 * ((v41 - 144) & 0x1ED72520) - (v41 - 144) - 517416232) ^ 0xD02917FC) + 10;
  *(v41 - 144) = &a37;
  *(v41 - 136) = v39;
  (*(v37 + 8 * (v38 + 35371)))(v41 - 144);
  *(v41 - 136) = &a37;
  *(v41 - 128) = &a37;
  *(v41 - 144) = &a26;
  *(v41 - 112) = &a29;
  *(v41 - 120) = v38 - 17902189 * (((((v41 - 144) | 0x9D1A55F2) ^ 0xFFFFFFFE) - (~(v41 - 144) | 0x62E5AA0D)) ^ 0xECAABC1D) + 8790;
  (*(v37 + 8 * (v38 ^ 0x8AF8)))(v41 - 144);
  v42 = v40 ^ ((v40 ^ 0xCEAA5C5A) + 1902624458) ^ ((v40 ^ 0xD7AB2095) + 1751564807) ^ ((v40 ^ 0x7FFDFFAE) - 1070588610) ^ 0x54470513 ^ ((v40 ^ 0x26CEFC8B ^ ((v38 + 137) | 0x2082)) - 1727824737);
  v43 = 0x3333333333333334 * (((v42 ^ 0xA473C9915A727E4) + 0x35B8C366EA58D81CLL) ^ ((v42 ^ 0x273353EF41513EF5) + 0x18CCAC10BEAEC10BLL) ^ ((v42 ^ 0x2D746F764083016ELL) - 0x2D746F764083016ELL)) - 0xEF48D74046B4A14;
  v44 = (v43 ^ 0xA6CE16C98E6A90D5) & (2 * (v43 & 0xA88E270DAE6290E0)) ^ v43 & 0xA88E270DAE6290E0;
  v45 = ((2 * (v43 ^ 0xF6CE18D1862FB055)) ^ 0xBC807FB8509A4168) & (v43 ^ 0xF6CE18D1862FB055) ^ (2 * (v43 ^ 0xF6CE18D1862FB055)) & 0x5E403FDC284D20B0;
  v46 = v45 ^ 0x4240004428452095;
  v47 = (v45 ^ 0x4003C1800080000) & (4 * v44) ^ v44;
  v48 = ((4 * v46) ^ 0x7900FF70A13482D4) & v46 ^ (4 * v46) & 0x5E403FDC284D20B4;
  v49 = (v48 ^ 0x58003F5020040080) & (16 * v47) ^ v47;
  v50 = ((16 * (v48 ^ 0x640008C08492021)) ^ 0xE403FDC284D20B50) & (v48 ^ 0x640008C08492021) ^ (16 * (v48 ^ 0x640008C08492021)) & 0x5E403FDC284D2090;
  v51 = (v50 ^ 0x44003DC000400000) & (v49 << 8) ^ v49;
  v52 = (((v50 ^ 0x1A40021C280D20A5) << 8) ^ 0x403FDC284D20B500) & (v50 ^ 0x1A40021C280D20A5) ^ ((v50 ^ 0x1A40021C280D20A5) << 8) & 0x5E403FDC284D2000;
  v53 = v51 ^ 0x5E403FDC284D20B5 ^ (v52 ^ 0x40001C0808000000) & (v51 << 16);
  v54 = v43 ^ (2 * ((v53 << 32) & 0x5E403FDC00000000 ^ v53 ^ ((v53 << 32) ^ 0x284D20B500000000) & (((v52 ^ 0x1E4023D4204D00B5) << 16) & 0x5E403FDC00000000 ^ 0x4000179000000000 ^ (((v52 ^ 0x1E4023D4204D00B5) << 16) ^ 0x3FDC284D00000000) & (v52 ^ 0x1E4023D4204D00B5))));
  v55 = ((v54 ^ 0xA1A98A9F884343FFLL) + 0x12018A84AB525CDBLL) ^ ((v54 ^ 0x9AB4C266C9DC03A8) + 0x291CC27DEACD1C8ELL);
  LODWORD(v52) = 1012831759 * ((v41 - 144) ^ 0x1093168A);
  *(v41 - 144) = &a35;
  *(v41 - 136) = __CFADD__(5 * (v55 ^ ((v54 ^ 0x3F935164BF6791DDLL) - 0x73C4AE8063897107)), 0x6C41805DAA6EF690) + (((v55 ^ ((v54 ^ 0x3F935164BF6791DDLL) - 0x73C4AE8063897107)) * 5uLL) >> 64) + 5 * ((__CFADD__(v54 ^ 0xA1A98A9F884343FFLL, 0x12018A84AB525CDBLL) - 1) ^ (__CFADD__(v54 ^ 0x9AB4C266C9DC03A8, 0x291CC27DEACD1C8ELL) - 1) ^ (__CFADD__(v54 ^ 0x3F935164BF6791DDLL, 0x8C3B517F9C768EF9) - 1)) + 397482601 - v52 + 561705828;
  *(v41 - 132) = (v38 + 25864) ^ v52;
  (*(v37 + 8 * (v38 ^ 0x8A62)))(v41 - 144);
  *(v41 - 144) = v38 - 906386353 * ((~(v41 - 144) & 0x7ED6F563 | (v41 - 144) & 0x81290A98) ^ 0x4FD73847) + 4342;
  *(v41 - 112) = &a35;
  *(v41 - 104) = &a37;
  *(v41 - 128) = &a37;
  *(v41 - 120) = &a29;
  *(v41 - 136) = &a26;
  v56 = (*(v37 + 8 * (v38 ^ 0x8D21)))(v41 - 144);
  return (*(v37 + 8 * v38))(v56);
}

uint64_t sub_1001F4AEC@<X0>(int a1@<W3>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, __int16 a48)
{
  *(v53 - 216) = v50;
  v54 = ((*(*v52 + (*v51 & 0x72D7ACF8)) ^ (a2 + a26)) & 0x7FFFFFFF) * v48;
  v55 = (v54 ^ HIWORD(v54)) * v48;
  v57 = *(v53 - 232);
  v56 = *(v53 - 224);
  *(a2 + a26) = ((a48 - ((2 * a48) & 0x9590) + 19144) >> (a1 ^ 0xC9)) ^ *(a46 + (v55 >> 24)) ^ *(v57 + (v55 >> 24)) ^ *((v55 >> 24) + v56 + 1) ^ v55 ^ (107 * BYTE3(v55)) ^ 0x4A;
  v58 = (a2 + a25);
  v59 = ((*(*v52 + (*v51 & 0x72D7ACF8)) ^ v58) & 0x7FFFFFFF) * v48;
  v60 = (v59 ^ HIWORD(v59)) * v48;
  *v58 = (a48 - ((2 * a48) & 0x90) - 56) ^ *(a46 + (v60 >> 24)) ^ *(v57 + (v60 >> 24)) ^ *((v60 >> 24) + v56 + 1) ^ v60 ^ (107 * BYTE3(v60)) ^ 0xC8;
  return (*(v49 + 8 * ((a1 - 705414013) ^ (226 * (a28 != 2005924292)))))();
}

uint64_t sub_1001F4C2C@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v16 = a7 - 1;
  STACK[0x228] = v16;
  v17 = (v11 ^ ((v11 ^ v10) + v12) ^ ((v11 ^ v13) + v14) ^ ((v11 ^ a2) + 83) ^ a3 ^ (v9 + (v11 ^ v8))) * (v11 - 31);
  *(a1 + v16) = (v17 - (a4 & (2 * v17)) + 58) ^ a5;
  return (*(v15 + 8 * (((v16 != 0) * a6) ^ v7)))();
}

uint64_t sub_1001F4DB4(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  return (*(STACK[0xF18] + 8 * ((((3 * (v1 ^ 0x4141)) ^ ((v1 ^ 0x6BF7) + 34382)) * (v2 == 0)) ^ v1)))();
}

uint64_t sub_1001F4E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  v54 = *(v53 + 8);
  v55 = *(v53 + 40);
  LODWORD(STACK[0x2B0]) = a1 + 14784;
  v56 = veorq_s8(*v54, xmmword_100F52710);
  *(v52 - 128) = veorq_s8(*v55, xmmword_100F52720);
  *(v52 - 112) = v56;
  v57 = *(v51 + 8 * (a1 ^ (26 * (*(v52 - 136) == 0))));
  LODWORD(STACK[0x2A8]) = -42900;
  return v57(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51);
}

void sub_1001F4F5C(uint64_t a1)
{
  if (*a1)
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v5 = v2 || *(a1 + 24) == 0 || *(a1 + 40) == 0;
  v1 = *(a1 + 16) ^ (634647737 * (((a1 | 0x26A3204) - (a1 | 0xFD95CDFB) - 40514053) ^ 0x6FFC1DF8));
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1001F5058()
{
  STACK[0x2A0] = 0;
  STACK[0x2B0] = 0;
  STACK[0x230] = 0;
  LODWORD(STACK[0x334]) = 0;
  LODWORD(STACK[0x3D4]) = 0;
  v2 = (*(v0 + 8 * (v1 ^ 0xFDC5)))();
  v3 = (*(v0 + 8 * (v1 + 39527)))(v2, &STACK[0x2B0], &STACK[0x334], &STACK[0x230], &STACK[0x3D4]);
  return (*(v0 + 8 * ((42905 * ((v1 ^ 0x61C2) + v3 - ((2 * v3) & 0xD3AB8E22) - 371886512 == ((v1 + 25198) ^ 0xE9D55460))) ^ v1)))(v3, v4, v5, v6, v7, v8, v9);
}

void sub_1001F52C4(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (155453101 * ((a1 - 2 * (a1 & 0xE44BB96E) - 464799378) ^ 0x26DA2A1));
  v2 = *(a1 + 28) ^ (155453101 * ((a1 - 2 * (a1 & 0xE44BB96E) - 464799378) ^ 0x26DA2A1));
  v4 = (*(a1 + 32) ^ &v3 ^ 0xB18B801BC34286D9) + 2 * (&v3 & (*(a1 + 32) ^ 0x318B801BC34286D8));
  v3 = v4 + 1323900481;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001F55C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22)
{
  v25 = *(v22 + 8 * (((((a10 - 84160074) & 0x2F0FF6DF ^ 0xD5F46F7A) + ((a10 - 4121) | 0xA081)) * (v23 & 1)) ^ a10));
  *(v24 - 236) = 371891215;
  *(v24 - 240) = a22;
  return v25(a1, a2, a3, *(v24 - 196));
}

uint64_t sub_1001F5658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4 - 2752;
  v8 = (v4 - 13827) | 0x8902;
  v9 = v3 & 4;
  v10 = v4 - 19000;
  if (*(v6 + 8))
  {
    v11 = v9 == v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  return (*(v5 + 8 * ((v12 * (v8 ^ 0xE877)) ^ v7)))(a1, a2, a3, 371891400);
}

uint64_t sub_1001F5A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  a26 = &a31;
  *(v36 - 136) = (v32 ^ 0x4625) + 17902189 * ((~(v36 - 144) & 0x94144647 | (v36 - 144) & 0x6BEBB9B8) ^ 0x1A5B5057) + 14285;
  *(v36 - 128) = v34;
  *(v36 - 144) = &a26;
  v37 = (*(v31 + 8 * ((v32 ^ 0x4625) + 26772)))(v36 - 144);
  return (*(v31 + 8 * ((23 * (7 * (((2643056798 * v33 - 0x7785DD51526A6238) >> 35) | (v35 << 29)) + 1107400194 == (((v32 ^ 0x4625) + 517837689) & 0xE1224B7B ^ 0xD4A6ACF9))) ^ v32 ^ 0x4625)))(v37);
}

uint64_t sub_1001F5C1C@<X0>(uint64_t a1@<X8>)
{
  v8 = *(v6 + v3 + 8);
  v9 = (a1 + v3);
  *v9 = *(v6 + v3);
  v9[1] = v8;
  return (*(v7 + 8 * (((v2 + v3 == v1) * v5) ^ v4)))();
}

uint64_t sub_1001F5CCC()
{
  STACK[0x9B0] = 0;
  STACK[0xAF0] = 0x52C928769C716CAELL;
  STACK[0x7E8] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (v0 - 22181 + ((v0 + 1420227313) & 0xAB595D7B))))();
}

uint64_t sub_1001F5D2C@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, char a9@<W8>)
{
  v23 = v10 - 1;
  *(v22 - 168) = v23;
  v24 = (v9 + v13 + (a9 ^ v17)) ^ a9 ^ ((a9 ^ v14) + v15) ^ ((a9 ^ v18) + v19) ^ ((a9 ^ v20) + v21);
  *(*(v22 - 216) + v23) = ((((v24 ^ a4) + a5) ^ ((v24 ^ a6) + a7) ^ ((v24 ^ a8) + v11)) + v12) * (a9 + a1) + a9 * a3 + a2;
  return (*(v16 + 8 * (v9 | (2 * (*(v22 - 168) != 0)))))();
}

uint64_t sub_1001F5E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8 & 0xB7FD977F;
  v11 = (*(a8 + 8 * (v8 & 0xB7FD977F ^ 0xB7F45DDA)))();
  v12 = STACK[0x2F0];
  *(v9 + 24) = 0;
  return (*(v12 + 8 * ((v10 + 1208678566 + v10 + 1208745033) ^ (25703 * (v10 > 0xEE4CC2CB)))))(v11);
}

uint64_t sub_1001F5EB0(int8x16_t a1, int8x8_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, int a10)
{
  v17.val[0].i64[0] = (v13 + a6 + a8) & 0xF;
  v17.val[0].i64[1] = (v13 + a6 + 14) & 0xF;
  v17.val[1].i64[0] = (v13 + a6 + 13) & 0xF;
  v17.val[1].i64[1] = (v13 + a6 + 12) & 0xF;
  v17.val[2].i64[0] = (v13 + a6 + 11) & 0xF;
  v17.val[2].i64[1] = (v13 + a6 + 10) & 0xF;
  v17.val[3].i64[0] = (v13 + a6 + 9) & 0xF;
  v17.val[3].i64[1] = (v13 + a6) & 0xF ^ 8;
  *(a9 + a6) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a9 + a6), *(v12 + v17.val[0].i64[0] - 7)), veor_s8(*(v17.val[0].i64[0] + v11 - 5), *(v17.val[0].i64[0] + v10 - 6)))), a3), vmul_s8(*&vqtbl4q_s8(v17, a1), a2)));
  return (*(v15 + 8 * ((((a7 | (a5 + a6)) >= 0) * a10) ^ v14)))();
}

uint64_t sub_1001F5F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W5>, int a4@<W6>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, int a59, int a60, __int16 a61, uint64_t a62, int a63)
{
  LODWORD(STACK[0x278]) = v66;
  LODWORD(STACK[0x3A8]) = a3;
  LODWORD(STACK[0x3AC]) = v65;
  LODWORD(STACK[0x2F0]) = a4;
  LODWORD(STACK[0x31C]) = a65;
  LOWORD(STACK[0x236]) = a64;
  LOWORD(STACK[0x292]) = v67;
  LODWORD(STACK[0x27C]) = a58;
  LOWORD(STACK[0x38E]) = a61;
  return (*(v68 + 8 * (a5 + 15666)))(a1, a2, STACK[0x338]);
}

uint64_t sub_1001F60B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v37 + 472) = v36;
  v39 = (*(&STACK[0x20C] + (STACK[0x20E] & 3)) % 0xDu + 7) & 0x1C;
  v41 = v39 != (((v35 - 66) & 0xF5) + 76) && a35 < (v39 ^ 0x7FFFFFFFFFFFFFFFLL);
  return (*(v38 + 8 * ((30700 * v41) ^ v35)))(a1, a2, a3, a4, 0);
}

uint64_t sub_1001F6128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17)
{
  a15 = v18;
  a17 = v17;
  a16 = (v21 - 1198513924) ^ (1022166737 * ((((2 * &a15) | 0xC235CD3A) - &a15 + 518330723) ^ 0x5B0A070F));
  (*(v19 + 8 * (v21 - 1904186003)))(&a15);
  return (*(v19 + 8 * ((12051 * (v21 > (((v21 - 1904204670) | 0x1842) ^ 0x42DD405E))) ^ (v21 - 1904236213))))((*&v20 | 0xFFFFFFC0) + v22);
}

uint64_t sub_1001F6254(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, int a13, int a14, int a15, int a16, int a17, int a18, int a19, int a20, unsigned int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  *(v31 - 256) = v26;
  *(v31 - 252) = v27;
  *(v31 - 248) = a1;
  *(v31 - 244) = v28;
  v33 = *(v31 - 180);
  v34 = v29 ^ 0x15ED20AELL;
  *(v31 - 240) = v34;
  v35 = (v30 + v34);
  v36 = 2 * (v30 + v34);
  v37 = __ROR8__(&v35[-(v36 & 0x70F286933040667ALL) - 0x4786BCB667DFCCC3] & 0xFFFFFFFFFFFFFFF8 ^ 0xB879434998203338, 8);
  v38 = v35 - (v36 & ((v33 + 105) ^ 0x7D));
  v39 = (v37 - 0x296E95066F186A7FLL) ^ 0xB3A94E2F7B1B987CLL;
  v40 = __ROR8__((v37 - 0x296E95066F186A7FLL) ^ 0x72219E3FC273472, 8) + v39;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = ((v41 ^ 0x14BA074A2F986FE5) + __ROR8__(v40 ^ 0x14BA074A2F986FE5, 8)) ^ 0x2C378843F9A46E98;
  *(&v43 + 1) = v41 ^ 0x14BA074A2F986FE5;
  *&v43 = v41;
  v44 = __ROR8__(v42, 8);
  v45 = &v35[-((2 * (v35 + 8)) & 0x3EE394B9E2CDD8CLL) + 0x1F71CA5CF166ECELL];
  v46 = ((v45 >> 8) ^ 0x1F71CA5CF166ELL | (v45 << 56) & 0xF800000000000000 ^ 0xC000000000000000) - 0x296E95066F186A7FLL;
  v47 = (v43 >> 61) ^ 0xE6E4B4E62D8ACB8CLL ^ (v42 - ((2 * v42) & 0xCDC969CC5B159718) - 0x191B4B19D2753474);
  v48 = v46 ^ 0xB3A94E2F7B1B987CLL;
  v49 = __ROR8__(v46 ^ 0x72219E3FC273472, 8) + (v46 ^ 0xB3A94E2F7B1B987CLL);
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = v49 ^ ~__ROR8__(v48, 61);
  v50 ^= 0x14BA074A2F986FE5uLL;
  v52 = (v50 + __ROR8__(v49 ^ 0x14BA074A2F986FE5, 8)) ^ 0x2C378843F9A46E98;
  v53 = (v47 + v44) ^ 0xBD7D2DE9C10AA16ALL;
  *(&v43 + 1) = v50;
  *&v43 = v51;
  v54 = __ROR8__(v52, 8);
  v55 = __ROR8__(v53, 8);
  v56 = (v43 >> 61) ^ 0xC7368D6B67915F0DLL ^ (v52 - ((2 * v52) & 0x8E6D1AD6CF22BE14) - 0x38C97294986EA0F6);
  v57 = v53 ^ __ROR8__(v47, 61);
  v58 = (v56 + v54) ^ 0xBD7D2DE9C10AA16ALL;
  v59 = *v35;
  v60 = __ROR8__(v58, 8);
  v61 = v58 ^ __ROR8__(v56, 61);
  v62 = &v35[-((2 * (v35 + 16)) & 0xB5AAED6624D0390) - 0x7A52A894CED97E28];
  v63 = ((v62 >> 8) ^ 0x85AD576B312681 | (v62 >> 3 << 59) ^ 0xC800000000000000) - 0x296E95066F186A7FLL;
  v64 = v63 ^ 0x72219E3FC273472;
  v65 = (v55 + v57) ^ 0x82B08017BF43C069;
  v63 ^= 0xB3A94E2F7B1B987CLL;
  v66 = __ROR8__(v64, 8) + v63;
  v67 = v66 ^ __ROR8__(v63, 61);
  v68 = v65 ^ __ROR8__(v57, 61);
  *(&v43 + 1) = v67 ^ 0x14BA074A2F986FE5;
  *&v43 = v67;
  v69 = (v60 + v61) ^ 0x82B08017BF43C069;
  v70 = __ROR8__(v69, 8);
  v71 = v69 ^ __ROR8__(v61, 61);
  v72 = ((v67 ^ 0x14BA074A2F986FE5) + __ROR8__(v66 ^ 0x14BA074A2F986FE5, 8)) ^ 0x2C378843F9A46E98;
  v73 = (v68 + __ROR8__(v65, 8)) ^ 0xAA9DDABAE2E4D47CLL;
  v74 = v72 ^ (v43 >> 61);
  v75 = (v74 + __ROR8__(v72, 8)) ^ 0xBD7D2DE9C10AA16ALL;
  v76 = __ROR8__(v73, 8);
  v77 = v75 ^ __ROR8__(v74, 61);
  v78 = (__ROR8__(v75, 8) + v77) ^ 0x82B08017BF43C069;
  v79 = v73 ^ __ROR8__(v68, 61);
  v80 = __ROR8__(v78, 8);
  v81 = (v71 + v70) ^ 0xAA9DDABAE2E4D47CLL;
  v82 = __ROR8__(v81, 8);
  v83 = v81 ^ __ROR8__(v71, 61);
  v84 = v78 ^ __ROR8__(v77, 61);
  v85 = (v79 + v76) ^ 0x8FB22143FEDB6CB3;
  v86 = __ROR8__(v85, 8);
  v87 = __ROR8__(v84, 61);
  v88 = v80 + v84;
  v89 = __ROR8__(v88, 8) ^ 0x7CAA9DDABAE2E4D4;
  v90 = v85 ^ __ROR8__(v79, 61);
  v91 = v88 ^ 0x79DDE547AB8F6365 ^ (v87 - ((2 * v87) & 0xA6807FFA92D76E32) - 0x2CBFC002B69448E7);
  v92 = v91 + v89;
  v93 = __ROR8__(v92 ^ 0x8FB22143FEDB6CB3, 8);
  v94 = v92 ^ __ROR8__(v91, 61);
  v95 = (8 * v38 + 16) & 0x38;
  v96 = (__ROR8__((v82 + v83) ^ 0x8FB22143FEDB6CB3, 8) + ((v82 + v83) ^ 0x8FB22143FEDB6CB3 ^ __ROR8__(v83, 61))) ^ 0x9B1C7427651E0F18;
  v97 = v96 << (v95 ^ 0x2Du);
  v98 = ((v93 + (v94 ^ 0xFB22143FEDB6CB3)) ^ 0x1B1C7427651E0F18) << (v95 ^ 0x2Du);
  v95 ^= 0x10u;
  v99 = ((v90 + v86) ^ 0x9B1C7427651E0F18) >> v95;
  v100 = v96 >> v95;
  v101 = 8 * (v98 - ((2 * v98) & 0x3AB19BB92D52840)) + 0xEAC66EE4B54A1A8;
  v211 = v99;
  LODWORD(v98) = (*(a23 + (v99 ^ 0xA1)) << 24) + 1392508928;
  v102 = ((8 * (v97 - ((2 * v97) & 0x1CDA8C8C55C17900)) - 0xC95CDCEA8FA1BD8) ^ 0xF36A32315705E428) + v99;
  LODWORD(v96) = (((8 * (v97 - ((2 * v97) & 0x55C17900)) + 1460003880) ^ 0x5705E428) + v99) >> 24;
  v205 = BYTE4(v102);
  v206 = BYTE1(v102);
  v204 = BYTE5(v102);
  v201 = HIBYTE(v102);
  v202 = BYTE6(v102);
  LODWORD(v99) = ((8 * (v97 - ((2 * v97) & 0x55C17900)) + 1460003880) ^ 0x5705E428) + v99;
  v103 = *(v31 - 200);
  LOBYTE(v97) = *(v103 + (BYTE1(v102) ^ 0x6FLL));
  v104 = (v101 ^ 0xEAC66EE4B54A1A8) + v100;
  v207 = BYTE2(v99);
  LODWORD(v101) = (((v97 - 23) << 16) ^ 0xFFF8FFFF) & (v98 ^ 0xD88D3454) | ((v97 - 23) << 16) & 0x720000;
  v203 = v96;
  LODWORD(v96) = ((*(a23 + (v205 ^ 0xC4)) + 83) ^ 0x42) << 24;
  v105 = *(v31 - 192);
  LODWORD(v98) = *(a22 + (v202 ^ 0x59)) << 8;
  LODWORD(v96) = (((((*(v103 + (v204 ^ 0xA4)) - 23) << 16) ^ 0x13A73450) & (v96 ^ 0xD4FF3F78) | v96 & 0xEC000000) ^ 0x3A1732AC) & (v98 ^ 0xFFFF50FC);
  LODWORD(v93) = v98 & 0xFFFFF9FF;
  LODWORD(v98) = *(v105 + (v201 ^ 7));
  v193 = (((v101 ^ 0x1940CB80) & ((*(a22 + BYTE2(v99)) << 8) ^ 0x79E136C4) | v101 & 0x861E0000) ^ 0xF73542B8) & (*(v105 + (v203 ^ 0x23)) ^ 0xFFFFFF82) ^ *(v105 + (v203 ^ 0x23)) & 0x83;
  v200 = v100;
  LODWORD(v93) = ((v93 | v96) ^ 0x282D1F3D) & (v98 ^ 0xFFFFFFA4);
  LODWORD(v101) = *(a23 + (v100 ^ 0x55)) + 83;
  v199 = BYTE1(v104);
  LODWORD(v100) = (*(v103 + (BYTE1(v104) ^ 0x63)) - 23) << 16;
  v198 = BYTE2(v104);
  LODWORD(v101) = (((v101 ^ 0x19) << 24) ^ 0xBA9F888) & (v100 ^ 0xFF37FD8B) | v100 & 0x560000;
  LODWORD(v100) = *(a22 + (BYTE2(v104) ^ 0xB1)) << 8;
  LODWORD(v97) = v100 & 0xC600 | (v101 ^ 0xDAB0C121) & (v100 ^ 0xFFFF48AB);
  v196 = BYTE4(v104);
  LODWORD(v101) = *(a23 + (BYTE4(v104) ^ 0xA9));
  v197 = BYTE5(v104);
  v195 = BYTE6(v104);
  LODWORD(v100) = *(a22 + (BYTE6(v104) ^ 0x80)) << 8;
  v212 = v29 & 0xFFFFFFF8 ^ 0x15ED20AFLL;
  LODWORD(v99) = v100 & 0x7E00 | (((((*(v103 + (BYTE5(v104) ^ 6)) - 23) << 16) ^ 0x9A540B30) & (((v101 << 24) + 1392508928) ^ 0x28FF0F31) | ((v101 << 24) + 1392508928) & 0x65000000) ^ 0xB34B8A07) & (v100 ^ 0xFFFF4B37);
  v209 = v29 & 0xFFFFFFFB ^ 0x15ED20AELL;
  v208 = v29 & 0xFFFFFFF3 ^ 0x15ED20AELL;
  v186 = v29 & 0xFFFFFFF2 ^ 0x15ED20AFLL;
  LODWORD(v101) = (*(a23 + (*(v30 + v208) ^ 0xALL)) << 24) - 754974720;
  v210 = v29 & 0xFFFFFFF9 ^ 0x15ED20AELL;
  LODWORD(v96) = *(a22 + (*(v30 + v210) ^ 0x23)) << 8;
  v106 = (((((*(a23 + (*(v30 + v209) ^ 0xC5)) << 24) + 1392508928) ^ 0xF9C494E2) & (*(v105 + (*(v30 + v212) ^ 0x96)) ^ 0xFFC4DF13) | *(v105 + (*(v30 + v212) ^ 0x96)) & 0x1D) ^ 0x394A71DE) & (v96 ^ 0xFFEE26FF) | v96 & 0x1A00;
  v190 = v93 ^ v98 & 0x3E;
  v213 = v29 & 0xFFFFFFF6 ^ 0x15ED20AFLL;
  v191 = v29 & 0xFFFFFFF4 ^ 0x15ED20AFLL;
  LODWORD(v98) = *(v105 + (*(v30 + v191) ^ 0x75));
  LODWORD(v96) = (((*(v103 + (*(v30 + v213) ^ 8)) - 23) << 16) ^ 0x377B7AE6) & (v98 ^ 0x77FF7A48);
  v183 = v29 & 0xFFFFFFFC ^ 0x15ED20AFLL;
  LODWORD(v93) = *(v105 + (*(v30 + v183) ^ 0x4BLL));
  v176 = BYTE3(v104);
  LODWORD(v51) = *(v105 + (BYTE3(v104) ^ 0xF5));
  LODWORD(v100) = (v97 ^ 0x2E21EA22) & (v51 ^ 0xFFFFFFE7);
  v182 = v29 & 0xFFFFFFFA ^ 0x15ED20AFLL;
  v189 = (((*(v103 + (*(v30 + v182) ^ 0xB2)) - 23) << 16) ^ 0x74D3D752) & (v106 ^ 0xCC7120D6) ^ v106 & 0x8B8828AD;
  v185 = v29 & 0xFFFFFFFE ^ 0x15ED20AFLL;
  LODWORD(v97) = (*(v103 + (*(v30 + v185) ^ 0x64)) - 23) << 16;
  v180 = v29 & 0xFFFFFFF0 ^ 0x15ED20AFLL;
  v107 = *(v105 + (*(v30 + v180) ^ 0xE5));
  v108 = (v107 ^ 0xFFFF120C) & (((((*(v103 + (*(v30 + v186) ^ 0x23)) - 23) << 16) ^ 0x856F1BA1) & (v101 ^ 0xBDFF3FA5) | v101 & 0x7A000000) ^ 0x6F51098D);
  v177 = v29 & 0xFFFFFFF5 ^ 0x15ED20AELL;
  LODWORD(v96) = ((*(a22 + (*(v30 + v177) ^ 0x7DLL)) << 8) ^ 0x8461C05B) & ((v96 | v98 & 0x19) ^ 0xA0AE8581) | v96 & 0x139E00A4;
  v109 = HIBYTE(v104);
  LODWORD(v101) = *(v105 + (HIBYTE(v104) ^ 0x75));
  LODWORD(v104) = (v99 ^ 0x117CB88) & (v101 ^ 0xFFFFFF99);
  LODWORD(v99) = v107 & 0xD3 | v108;
  v178 = v29 & 0xFFFFFFF1 ^ 0x15ED20AELL;
  v110 = *(a22 + (*(v30 + v178) ^ 0xF4)) << 8;
  v188 = (v110 ^ 0xFFFF53FF) & (v99 ^ 0x2DFC6F55) ^ v110 & 0x8200;
  LODWORD(v99) = v97 & 0x7C0000 | (v97 ^ 0xFF82AEFF) & (((v93 ^ 0xFFFFF80F) & ((((*(a23 + (v59 ^ 0x41)) + 83) ^ 0xFFFFFFC7) << 24) ^ 0xCD27B8B2) | v93 & 0x4D) ^ 0x95A4164E);
  v181 = v29;
  v179 = v29 & 0xFFFFFFFD ^ 0x15ED20AELL;
  LODWORD(v97) = *(a22 + (*(v30 + v179) ^ 0x23)) << 8;
  v184 = v100 ^ v51 & 0x74;
  v194 = (v97 ^ 0xFFFF24FF) & (v99 ^ 0x21121222) ^ v97 & 0x4300;
  v175 = v29 & 0xFFFFFFF7 ^ 0x15ED20AELL;
  LODWORD(v51) = (*(a23 + (*(v30 + v175) ^ 0x36)) << 24) - 754974720;
  v187 = v51 & 0xC000000 ^ 0xF545CAB3 ^ (v51 ^ 0xACFFFFFF) & (v96 ^ 0x64499970);
  v192 = v104 ^ (v101 | 0x6D747CBF);
  LODWORD(v101) = v193 ^ v194 ^ 0x7CC16379;
  v111 = *(v32 + 8 * a19) - 243670355;
  LODWORD(v100) = v190 ^ v189 ^ 0xF3F55485;
  v112 = *(v32 + 8 * (v33 - 1882)) - 1061914618;
  LODWORD(v97) = v188 ^ v192 ^ 0x276FA3C8;
  v113 = *(v32 + 8 * a20) - 644763691;
  v114 = *(v32 + 8 * a18) - 895486;
  v115 = v184 ^ v187 ^ 0xBB271DD9;
  LODWORD(v99) = BYTE1(v97) ^ *(v112 + 4 * BYTE3(v100)) ^ *(v111 + 4 * BYTE2(v101)) ^ *(v113 + 4 * (v184 ^ v96 ^ 0x1A)) ^ *(v114 + 4 * (BYTE1(v97) ^ 0x57u));
  v116 = BYTE1(v100) ^ *(v112 + 4 * BYTE3(v97)) ^ *(v114 + 4 * (BYTE1(v100) ^ 0x57u)) ^ *(v111 + 4 * BYTE2(v115)) ^ *(v113 + 4 * (v193 ^ v194 ^ 0x79));
  LODWORD(v51) = BYTE1(v101) ^ *(v113 + 4 * ((v188 ^ v192) ^ 0x50u)) ^ *(v112 + 4 * HIBYTE(v115)) ^ *(v114 + 4 * (BYTE1(v101) ^ 0x57u)) ^ *(v111 + 4 * BYTE2(v100)) ^ 0xB0E36521;
  LODWORD(v97) = *(v113 + 4 * (v190 ^ v189 ^ 0x85)) ^ BYTE1(v115) ^ *(v112 + 4 * BYTE3(v101)) ^ *(v114 + 4 * (BYTE1(v115) ^ 0x57u)) ^ *(v111 + 4 * (((v188 ^ v192) >> 16) ^ 0xFEu)) ^ 0x9525D34C;
  LODWORD(v96) = v99 ^ 0x4003C45B;
  v116 ^= 0xA3997952;
  LODWORD(v101) = *(v111 + 4 * ((v99 ^ 0x4003C45B) >> 16)) ^ *(v112 + 4 * BYTE3(v51)) ^ *(v113 + 4 * v116);
  LODWORD(v100) = v99 ^ 0xC3;
  LODWORD(v99) = BYTE1(v97);
  v117 = *(v113 + 4 * v100);
  LODWORD(v100) = v101 ^ *(v114 + 4 * (BYTE1(v97) ^ 0x57u));
  LODWORD(v101) = v117 ^ BYTE1(v51) ^ *(v112 + 4 * BYTE3(v97));
  v118 = *(v113 + 4 * v97) ^ BYTE1(v96) ^ *(v112 + 4 * HIBYTE(v116));
  LODWORD(v101) = v101 ^ *(v114 + 4 * (BYTE1(v51) ^ 0x57u)) ^ *(v111 + 4 * BYTE2(v116));
  v119 = *(v114 + 4 * (BYTE1(v96) ^ 0x57u)) ^ *(v111 + 4 * BYTE2(v51));
  LODWORD(v96) = BYTE1(v116) ^ *(v111 + 4 * BYTE2(v97)) ^ *(v114 + 4 * (BYTE1(v116) ^ 0x57u)) ^ *(v113 + 4 * v51) ^ *(v112 + 4 * BYTE3(v96)) ^ 0xC824EC65;
  LODWORD(v51) = v118 ^ v119 ^ 0xE78E799;
  LODWORD(v97) = *(v113 + 4 * ((v118 ^ v119) ^ 0x99u));
  v120 = *(v112 + 4 * BYTE3(v51)) ^ *(v113 + 4 * (v101 ^ 0x59u));
  v121 = v101 ^ 0xBA0D7C1;
  v122 = ((v101 ^ 0xD7C1) >> 8);
  LODWORD(v101) = *(v114 + 4 * (v122 ^ 0x57u)) ^ v97 ^ *(v111 + 4 * BYTE2(v96));
  LODWORD(v97) = v99 ^ 0xED735A08 ^ v100;
  v123 = v101 ^ *(v112 + 4 * BYTE3(v97));
  LODWORD(v99) = BYTE1(v96) ^ *(v111 + 4 * (BYTE2(v100) ^ 0xE2u)) ^ v120 ^ *(v114 + 4 * (BYTE1(v96) ^ 0x57u)) ^ 0xFE98467B;
  LODWORD(v101) = *(v113 + 4 * v97) ^ *(v111 + 4 * BYTE2(v121)) ^ BYTE1(v51) ^ *(v112 + 4 * BYTE3(v96)) ^ *(v114 + 4 * (BYTE1(v51) ^ 0x57u)) ^ 0xDE86C0D6;
  LODWORD(v96) = BYTE1(v97) ^ *(v113 + 4 * v96) ^ *(v112 + 4 * HIBYTE(v121)) ^ *(v111 + 4 * BYTE2(v51)) ^ *(v114 + 4 * (BYTE1(v97) ^ 0x57u)) ^ 0x24F6C872;
  LODWORD(v100) = *(v111 + 4 * (BYTE2(v123) ^ 0xC4u)) ^ BYTE1(v101) ^ *(v114 + 4 * (BYTE1(v101) ^ 0x57u)) ^ *(v113 + 4 * v96) ^ *(v112 + 4 * BYTE3(v99));
  v124 = v123 ^ v122 ^ 0x38554D1F;
  LODWORD(v97) = *(v113 + 4 * v101) ^ *(v112 + 4 * BYTE3(v96)) ^ *(v111 + 4 * BYTE2(v99)) ^ *(v114 + 4 * (BYTE1(v124) ^ 0x57u));
  LODWORD(v51) = BYTE1(v99) ^ *(v112 + 4 * BYTE3(v101)) ^ *(v114 + 4 * (BYTE1(v99) ^ 0x57u)) ^ *(v113 + 4 * ((v123 ^ v122) ^ 0x87u)) ^ *(v111 + 4 * BYTE2(v96)) ^ 0xE772F34E;
  LODWORD(v96) = *(v111 + 4 * BYTE2(v101)) ^ BYTE1(v96) ^ *(v114 + 4 * (BYTE1(v96) ^ 0x57u)) ^ *(v113 + 4 * v99);
  LODWORD(v101) = BYTE1(v124) ^ 0x9E461E47 ^ v97;
  LODWORD(v96) = v96 ^ *(v112 + 4 * HIBYTE(v124)) ^ 0xFB4076BB;
  v125 = BYTE1(v51) ^ *(v112 + 4 * ((v100 ^ 0xDB5EF08E) >> 24)) ^ *(v113 + 4 * (BYTE1(v124) ^ 0x47u ^ v97)) ^ *(v114 + 4 * (BYTE1(v51) ^ 0x57u));
  LODWORD(v97) = ((v100 ^ 0xF08E) >> 8) ^ *(v111 + 4 * (BYTE2(v97) ^ 0xD7u)) ^ *(v114 + 4 * (((v100 ^ 0xF08E) >> 8) ^ 0x57u)) ^ *(v113 + 4 * v96) ^ *(v112 + 4 * BYTE3(v51)) ^ 0x64A716E3;
  LODWORD(v99) = *(v113 + 4 * v51) ^ BYTE1(v96) ^ *(v112 + 4 * BYTE3(v101)) ^ *(v114 + 4 * (BYTE1(v96) ^ 0x57u)) ^ *(v111 + 4 * ((v100 ^ 0xDB5EF08E) >> 16));
  LODWORD(v101) = BYTE1(v101);
  LODWORD(v51) = *(v111 + 4 * BYTE2(v51)) ^ v101 ^ *(v112 + 4 * BYTE3(v96)) ^ *(v113 + 4 * (v100 ^ 0x16u));
  LODWORD(v100) = v125 ^ *(v111 + 4 * BYTE2(v96)) ^ 0x3D1C7D47;
  LODWORD(v96) = v51 ^ *(v114 + 4 * (v101 ^ 0x57)) ^ 0x1307E1F;
  LODWORD(v51) = v99 ^ 0x9047020E;
  LODWORD(v99) = *(v113 + 4 * v97) ^ BYTE1(v96) ^ *(v112 + 4 * ((v99 ^ 0x9047020E) >> 24)) ^ *(v114 + 4 * (BYTE1(v96) ^ 0x57u)) ^ *(v111 + 4 * BYTE2(v100));
  v126 = BYTE1(v100);
  v127 = BYTE1(v100) ^ *(v112 + 4 * BYTE3(v97)) ^ *(v113 + 4 * v96) ^ *(v111 + 4 * BYTE2(v51));
  LODWORD(v101) = BYTE1(v51) ^ *(v113 + 4 * v100) ^ *(v114 + 4 * (BYTE1(v51) ^ 0x57u)) ^ *(v112 + 4 * BYTE3(v96)) ^ *(v111 + 4 * BYTE2(v97)) ^ 0x78959316;
  LODWORD(v100) = *(v111 + 4 * BYTE2(v96)) ^ *(v112 + 4 * BYTE3(v100)) ^ BYTE1(v97) ^ *(v113 + 4 * v51);
  LODWORD(v51) = v127 ^ *(v114 + 4 * (v126 ^ 0x57u)) ^ 0xE9E2EF07;
  LODWORD(v96) = v100 ^ *(v114 + 4 * (BYTE1(v97) ^ 0x57u)) ^ 0x212EF8B2;
  BYTE2(v97) = BYTE2(v99) ^ 0x1A;
  LODWORD(v100) = *(v111 + 4 * BYTE2(v51)) ^ ((v99 ^ 0xA0B6) >> 8) ^ *(v112 + 4 * BYTE3(v101)) ^ *(v114 + 4 * (((v99 ^ 0xA0B6) >> 8) ^ 0x57u)) ^ *(v113 + 4 * (v100 ^ *(v114 + 4 * (BYTE1(v97) ^ 0x57u)) ^ 0xB2)) ^ 0x8C7587FB;
  v128 = *(v114 + 4 * (BYTE1(v101) ^ 0x57u)) ^ BYTE1(v101) ^ *(v111 + 4 * BYTE2(v96)) ^ *(v112 + 4 * ((v99 ^ 0x5C1AA0B6) >> 24)) ^ *(v113 + 4 * (v127 ^ *(v114 + 4 * (v126 ^ 0x57u)) ^ 7));
  LODWORD(v99) = BYTE1(v51) ^ *(v111 + 4 * BYTE2(v101)) ^ *(v112 + 4 * BYTE3(v96)) ^ *(v114 + 4 * (BYTE1(v51) ^ 0x57u)) ^ *(v113 + 4 * (v99 ^ 0x2Eu));
  LODWORD(v51) = *(v114 + 4 * (BYTE1(v96) ^ 0x57u)) ^ BYTE1(v96) ^ *(v112 + 4 * BYTE3(v51)) ^ *(v111 + 4 * BYTE2(v97)) ^ *(v113 + 4 * v101) ^ 0xA8FAB4C3;
  BYTE1(v96) = BYTE1(v128) ^ 0x33;
  LODWORD(v99) = v99 ^ 0x44B9904E;
  LODWORD(v101) = *(v114 + 4 * (BYTE1(v100) ^ 0x57u)) ^ *(v113 + 4 * v51) ^ BYTE1(v100) ^ *(v112 + 4 * ((v128 ^ 0x504B3328u) >> 24)) ^ *(v111 + 4 * BYTE2(v99));
  v129 = *(v113 + 4 * v100) ^ *(v111 + 4 * ((v128 ^ 0x504B3328u) >> 16));
  v130 = *(v113 + 4 * (v128 ^ 0x28u)) ^ BYTE1(v51) ^ *(v114 + 4 * (BYTE1(v51) ^ 0x57u));
  v131 = BYTE1(v99) ^ *(v112 + 4 * BYTE3(v51)) ^ *(v114 + 4 * (BYTE1(v99) ^ 0x57u)) ^ v129;
  LODWORD(v51) = BYTE1(v96) ^ *(v113 + 4 * v99) ^ *(v114 + 4 * (BYTE1(v96) ^ 0x57u)) ^ *(v111 + 4 * BYTE2(v51)) ^ *(v112 + 4 * BYTE3(v100)) ^ 0x398DC8D2;
  v132 = *(v114 + 4 * (BYTE1(v51) ^ 0x57u));
  LODWORD(v100) = *(v111 + 4 * BYTE2(v100)) ^ *(v112 + 4 * BYTE3(v99));
  LODWORD(v99) = ((v131 ^ 0x7C99) >> 8);
  v133 = *(v114 + 4 * (v99 ^ 0x57));
  v134 = v130 ^ v100;
  v135 = ((v101 ^ 0x62EA) >> 8);
  v136 = *(v114 + 4 * (v135 ^ 0x57u));
  LODWORD(v100) = v134 ^ 0xD5CEECC7;
  LODWORD(v114) = *(v114 + 4 * (((v134 ^ 0xECC7) >> 8) ^ 0x57u));
  v137 = *(v112 + 4 * ((v131 ^ 0xE5B37C99) >> 24));
  LODWORD(v96) = *(v111 + 4 * ((v134 ^ 0xD5CEECC7) >> 16)) ^ *(v113 + 4 * (v131 ^ 1u)) ^ v132 ^ *(v112 + 4 * ((v101 ^ 0x205162EA) >> 24));
  v138 = *(v111 + 4 * ((v131 ^ 0xE5B37C99) >> 16)) ^ *(v113 + 4 * (v134 ^ 0x5Fu)) ^ v136 ^ *(v112 + 4 * BYTE3(v51));
  v139 = v133 ^ *(v111 + 4 * BYTE2(v51)) ^ *(v113 + 4 * (v101 ^ 0x72u)) ^ *(v112 + 4 * BYTE3(v100));
  LODWORD(v112) = v137 ^ *(v113 + 4 * v51) ^ v114 ^ *(v111 + 4 * ((v101 ^ 0x205162EA) >> 16));
  LODWORD(v114) = v96 ^ BYTE1(v51);
  LODWORD(v51) = v135 ^ 0x41A06CB9 ^ v138;
  LODWORD(v101) = v99 ^ 0x71DDFCE7 ^ v139;
  v140 = *(v32 + 8 * a15) - 852705387;
  v171 = *(v140 + 4 * (BYTE2(v112) ^ 0x50u));
  LODWORD(v113) = BYTE2(v51);
  LODWORD(v97) = *(v140 + 4 * (BYTE2(v51) ^ 0x2Cu));
  LODWORD(v103) = BYTE2(v101);
  v172 = *(v140 + 4 * (BYTE2(v101) ^ 0x2Cu));
  BYTE2(v137) = BYTE2(v114) ^ 0xA7;
  v174 = *(v140 + 4 * (((v114 ^ 0x65A709E7) >> 16) ^ 0xBDu));
  LODWORD(v140) = BYTE1(v139);
  v141 = *(v32 + 8 * a14) - 626049082;
  v173 = *(v141 + 4 * (v140 ^ 0x40));
  v142 = *(v141 + 4 * (BYTE1(v112) ^ 0x7Au));
  v143 = *(v141 + 4 * (BYTE1(v138) ^ 0xD0u));
  LODWORD(v140) = *(v141 + 4 * (BYTE1(v96) ^ 0xB5u));
  v144 = *(v32 + 8 * a16) - 1608407171;
  v169 = *(v144 + 4 * (v135 ^ 0xB9u ^ v138));
  v145 = *(v144 + 4 * v101);
  LODWORD(v100) = *(v144 + 4 * ((v112 ^ BYTE1(v100)) ^ 0x19u));
  v146 = *(v32 + 8 * a17) - 375879182;
  v147 = BYTE3(v101);
  LODWORD(v101) = *(v146 + 4 * ((v114 ^ 0x65A709E7) >> 24));
  v148 = *(v146 + 4 * (BYTE3(v112) ^ 0x58));
  v149 = *(v146 + 4 * BYTE3(v51));
  v150 = *(v31 - 224) ^ *(v31 - 228) ^ *(v31 - 256) ^ v142 ^ v97 ^ *(v144 + 4 * (v114 ^ 0x5Fu)) ^ __ROR4__(*(v146 + 4 * v147), 16);
  v170 = *(a23 + (v211 ^ 0xB8));
  v151 = *(v31 - 200);
  LOBYTE(v206) = *(v151 + (v206 ^ 0xDD));
  LOBYTE(v211) = *(a23 + (v205 ^ 0x77));
  LOBYTE(v51) = *(v151 + (v204 ^ 0xF));
  *(v31 - 224) = *(a22 + (v202 ^ 0x80));
  v152 = *(v31 - 192);
  *(v31 - 228) = *(v152 + (v201 ^ 0xEE));
  *(v31 - 256) = *(a22 + (v207 ^ 0x33));
  v153 = *(a23 + (v200 ^ 0x80));
  v154 = *(v152 + (v203 ^ 0x32));
  v155 = *(v151 + (v199 ^ 0x6E));
  v156 = *(a22 + (v198 ^ 0xCA));
  LODWORD(v146) = *(a23 + (v196 ^ 0xB));
  LODWORD(v82) = *(a22 + (v195 ^ 0xB8));
  LOWORD(v142) = *(v152 + (v176 ^ 0xCD));
  LOBYTE(v136) = *(v152 + (v109 ^ 0x39));
  v157 = *(v32 + 8 * a13) - 6087570;
  *(a26 + v186) = *(v157 + (((*(v151 + (v197 ^ 0x85)) - 23) ^ BYTE2(v150)) ^ 0xC1u)) ^ 0x85;
  v158 = *(v31 - 212) ^ *(v31 - 204) ^ *(v31 - 252) ^ v171 ^ v145 ^ v140 ^ __ROR4__(v149, 16) ^ ((v153 << 24) + 1392508928);
  v159 = *(v32 + 8 * a12) - 450676643;
  *(a26 + v175) = (-3 - 45 * *(v159 + (HIBYTE(v158) ^ 0x95))) ^ 0xD9;
  LODWORD(v43) = __ROR4__(v101, 16);
  v160 = *(v31 - 248) ^ *(v31 - 216) ^ v43 ^ v143 ^ v172 ^ v100;
  v161 = (*(v31 - 248) ^ *(v31 - 216) ^ v43 ^ v143 ^ v172 ^ v100 ^ v103 ^ v154 ^ 0x35);
  v162 = *(v32 + 8 * a11) - 1838594927;
  *(a26 + v183) = *(v162 + v161) ^ 0xFD;
  LODWORD(v161) = *(v31 - 220) ^ *(v31 - 208) ^ *(v31 - 244) ^ v169 ^ v173 ^ __ROR4__(v148, 16) ^ v174;
  *(a26 + v182) = *(v157 + (((v51 - 23) ^ BYTE2(v161)) ^ 0xD9u)) ^ 0x5D;
  DWORD1(v43) = v155 - 23;
  LODWORD(v43) = v112;
  v163 = (v43 >> 16) & 0xFF00FF ^ v158;
  LOWORD(v148) = BYTE2(v112) ^ v158 ^ (v142 | (v156 << 8));
  v164 = *(v31 - 180);
  v165 = *(v32 + 8 * (v164 - 1820)) - 1100279242;
  *(a26 + v177) = (85 * *(v165 + (BYTE1(v148) ^ 0x8ELL)) + 122) ^ 7;
  *(a26 + v191) = *(v162 + ((v163 ^ v142) ^ 0xBDLL)) ^ 0xC1;
  *(a26 + v180) = *(v162 + (v150 ^ v113 ^ v136 ^ 0xE5)) ^ 0x59;
  LODWORD(v152) = (((v206 - 23) << 16) | (((v170 + 83) ^ 0xDC) << 24)) ^ v160 ^ v103;
  *(a26 + v185) = *(v157 + (BYTE2(v152) ^ 0x58)) ^ 0x19;
  *(a26 + *(v31 - 240)) = (-3 - 45 * *(v159 + (BYTE3(v152) ^ 0x7ALL))) ^ 0x28;
  *(a26 + v178) = (85 * *(v165 + ((((v82 << 8) ^ v150 ^ v113) >> 8) ^ 0x99)) + 122) ^ 0xD0;
  *(a26 + v209) = (-3 - 45 * *(v159 + ((v211 + 83) ^ 0x96 ^ BYTE3(v161) ^ 0xBC))) ^ 0x84;
  *(a26 + v208) = (-3 - 45 * *(v159 + (((((v82 << 8) | (((v146 + 83) ^ 0xFFFFFF8F) << 24)) ^ v150 ^ v113) >> 24) ^ 0x71))) ^ 0xD4;
  *(a26 + v179) = (85 * *(v165 + ((*(v31 - 256) ^ BYTE1(v160)) ^ 0xC1u)) + 122) ^ 0x22;
  *(a26 + v212) = *(v162 + (v161 ^ BYTE2(v137) ^ *(v31 - 228) ^ 0x82)) ^ 0x2A;
  *(a26 + v210) = (85 * *(v165 + ((*(v31 - 224) ^ BYTE1(v161)) ^ 0xE5u)) + 122) ^ 0x2F;
  LODWORD(v161) = (((v181 ^ 0x5F94B05E) - 1603579998) ^ ((v181 ^ 0xC2986A3C) + 1030198724) ^ ((v181 ^ 0x88E1FACC) + 1998456116)) + 417682286;
  LODWORD(v162) = (2 * (v161 & 0xFD07CD50 ^ 0xE9086411)) & 0xE8080000 ^ v161 & 0xFD07CD50 ^ 0xE9086411 ^ ((2 * (v161 & 0xFD07CD50 ^ 0xE9086411)) ^ 0xD210C822) & (v161 ^ 0x140FA941);
  LODWORD(v111) = (2 * (v161 ^ 0x140FA941)) & 0xE9086410 ^ 0x29082411 ^ ((2 * (v161 ^ 0x140FA941)) ^ 0xD210C822) & (v161 ^ 0x140FA941);
  LODWORD(v162) = (4 * v162) & 0xE9086410 ^ v162 ^ ((4 * v162) ^ 0xA4219044) & v111;
  LODWORD(v111) = (4 * v111) & 0xE9086410 ^ 0x49086411 ^ ((4 * v111) ^ 0xA4219044) & v111;
  LODWORD(v162) = v162 ^ (16 * v162) & 0xE9086410 ^ ((16 * v162) ^ 0x90864110) & v111 ^ 0xE0004010;
  LODWORD(v111) = (16 * v111) & 0xE9086410 ^ 0x69082401 ^ ((16 * v111) ^ 0x90864110) & v111;
  LODWORD(v162) = (v162 << 8) & 0xE9086400 ^ v162 ^ ((v162 << 8) ^ 0x8641100) & v111;
  LODWORD(v161) = v161 ^ (2 * ((v162 << 16) & 0x69080000 ^ v162 ^ ((v162 << 16) ^ 0x64110000) & ((v111 << 8) & 0x69080000 ^ 0x61080000 ^ ((v111 << 8) ^ 0x8640000) & v111)));
  LODWORD(v111) = (((v161 ^ 0x633520BB) + 1982921369) ^ ((v161 ^ 0x76C9B02A) + 1674340874) ^ ((v161 ^ 0xEAEB95E3) - 1159231)) - 1993910441;
  LODWORD(v162) = (a21 < 0x733A36A9) ^ (v111 < 0x733A36A9);
  v166 = v111 < a21;
  if (v162)
  {
    v166 = a21 < 0x733A36A9;
  }

  *(a26 + v213) = *(v157 + (BYTE2(v163) ^ 0x6FLL)) ^ 0x92;
  v167 = *(a25 + 8 * (((8 * v166) | (32 * v166)) ^ v164));
  *(v31 - 208) = v189 ^ 0x363CEA58;
  *(v31 - 216) = v194 ^ 0x109821F4;
  *(v31 - 212) = v187;
  *(v31 - 220) = v190 ^ 0x212620D9;
  *(v31 - 204) = v184 ^ 0x22A55DB;
  *(v31 - 228) = v188 ^ 0x7E778D9F;
  *(v31 - 224) = v192;
  return v167(v193 ^ 0xACAE97Fu);
}

void sub_1001F8144(_DWORD *a1)
{
  v1 = 353670337 * (((a1 | 0x6AE2842F) - a1 + (a1 & 0x951D7BD0)) ^ 0xDEC37C12);
  v2 = *a1 - v1;
  v3 = a1[4] - v1;
  v6[0] = 0x3EA64EF000000016;
  v6[1] = &v7;
  v4 = 17902189 * (&v8 ^ 0x8E4F1610);
  v9 = v6;
  v10 = 1148359552 - v4;
  v8 = v2 - v4 - 3780;
  v5 = *(&off_1010A0B50 + (v2 - 15950)) - 810145054;
  (*&v5[8 * (v2 + 35066)])(&v8);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001F82D0()
{
  v3 = v0 + (v1 ^ 0x2782u) - 27110;
  v5 = v3 > (((v1 - 19648) | 0x4010u) ^ 0x41B8uLL) || ((v0 - 1) & 0xFu) < (v3 & 0xF);
  return (*(v2 + 8 * ((v5 | (16 * v5)) ^ v1)))();
}

uint64_t sub_1001F832C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 200) = *(a3 + 8);
  LODWORD(STACK[0x334]) = STACK[0x278];
  LODWORD(STACK[0x244]) = 1998328755;
  return (*(v4 + 8 * v3))();
}

uint64_t sub_1001F835C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = a7 - 21857;
  v9 = (((a4 ^ 0x8618D5A6) + 2045192794) ^ ((a4 ^ 0x9C0F429A) + 1676721510) ^ ((a4 ^ 0xF3C2502D) + 205319095 + (a7 ^ 0xA4A564E8) + 1532682969)) + 1021354425;
  v10 = (((a2 ^ 0x5CDF9F28) - 1558159144) ^ ((a2 ^ 0xF528F58F) + 181865073) ^ ((a2 ^ 0x4022ADB6) - 1076014518)) + 1021354425;
  v11 = v9 < 0x530ADAA8;
  v12 = v9 > v10;
  if (v10 < 0x530ADAA8 != v11)
  {
    v12 = v11;
  }

  return (*(v7 + 8 * ((28384 * v12) ^ v8)))();
}

uint64_t sub_1001F8474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, int a18, int a19)
{
  v22 = a15 + (((a19 ^ 0x3C495D1F) - 1011440927) ^ ((a19 ^ 0x674F71BD) - 1733259709) ^ (((((v19 - 1047) ^ 0x8965) - 1294737038) ^ a19) + 1294734413));
  v23 = v22 < 0x72D118C1;
  v24 = v20 + 428637303 < v22;
  if ((v20 + 428637303) < 0x72D118C1 != v23)
  {
    v24 = v23;
  }

  return (*(v21 + 8 * ((118 * v24) ^ v19)))();
}

uint64_t sub_1001F8530(unsigned int a1, int8x16_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v15.val[0].i64[0] = (v11 + a5 - 1) & a7;
  v15.val[0].i64[1] = (v11 + a5 + 14) & 0xF;
  v15.val[1].i64[0] = (v11 + a5 + 13) & 0xF;
  v15.val[1].i64[1] = (v11 + a5 + 12) & 0xF;
  v15.val[2].i64[0] = (v11 + a5 + 11) & 0xF;
  v15.val[2].i64[1] = (v11 + a5 + 10) & 0xF;
  v15.val[3].i64[0] = (v11 + a5 + 9) & 0xF;
  v15.val[3].i64[1] = (v11 + a5) & 0xF ^ 8;
  *(a6 + a5) = veor_s8(veor_s8(veor_s8(*(v8 + v15.val[0].i64[0] - 7), *(a6 + a5)), veor_s8(*(v15.val[0].i64[0] + v9 - 5), *(v10 + v15.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v15, a2), a3)));
  return (*(v13 + 8 * (((v12 == a5) * a8) ^ a1)))();
}

uint64_t sub_1001F8624@<X0>(int a1@<W8>)
{
  v4 = a1 + 33305;
  v5 = a1 - 10867;
  if ((v2 + 126269782) <= 0x40)
  {
    v6 = 64;
  }

  else
  {
    v6 = v2 + 126269782;
  }

  return (*(v3 + 8 * ((22 * ((v4 ^ 0xD ^ (v6 - v2 - 126269782 < (v5 ^ 0x15E7u))) & 1)) ^ v4)))(64, -v1);
}

uint64_t sub_1001F88AC@<X0>(unsigned int a1@<W8>)
{
  v7 = *v1;
  v8 = (v6 + a1);
  *v8 = *(v1 - 1);
  v8[1] = v7;
  return (*(v5 + 8 * (((v3 == 0) * v4) ^ v2)))();
}

uint64_t sub_1001F8954(unsigned int a1, int a2)
{
  v11 = v7 < a1;
  *(*(v10 - 248) + v8) = *(v6 + (v8 & 0xF)) ^ *(v3 + v8) ^ *(v4 + (v8 & 0xF) + 4) ^ ((v8 & 0xF) * ((v2 + 78) ^ 0xA6)) ^ *(v5 + (v8 & 0xF) + 4);
  if (v11 == v8 + 1 > 0x1F811042)
  {
    v11 = v8 - 528552002 < v7;
  }

  return (*(v9 + 8 * ((v11 * a2) ^ v2)))();
}

uint64_t sub_1001F8B80(uint64_t a1, __n128 a2)
{
  *(v5 - 120) = *(STACK[0x3A0] + 8 * v4);
  v6.n128_u64[0] = (v2 + 13) & 0xF;
  v6.n128_u64[1] = (v2 + 12) & 0xF;
  v7.n128_u64[0] = (v2 + 11) & 0xF;
  v7.n128_u64[1] = (v2 + 10) & 0xF;
  v8.n128_u64[0] = (v2 + 9) & 0xF;
  v8.n128_u64[1] = v3 & 0xF ^ 6;
  v11.val[0].i64[0] = (v2 + 7) & 0xF;
  v11.val[0].i64[1] = (v2 + 6) & 0xF;
  v11.val[1].i64[0] = (v2 + 5) & 0xF;
  v11.val[1].i64[1] = (v2 + 4) & 0xF;
  v11.val[2].i64[0] = (v2 + 3) & 0xF;
  v11.val[2].i64[1] = (v2 + 2) & 0xF;
  v11.val[3].i64[0] = (v2 + 1) & 0xF;
  v11.val[3].i64[1] = v2 & 0xF;
  v9.n128_u64[0] = 0x7B7B7B7B7B7B7B7BLL;
  v9.n128_u64[1] = 0x7B7B7B7B7B7B7B7BLL;
  return (*(v5 - 120))(a1, (v2 + 14) & 0xF, (v3 & 0x10) - 16, v3 & 0x10 ^ 0x10, a2, v6, v7, v8, xmmword_100BC76B0, vqtbl4q_s8(v11, xmmword_100BC76B0), v9);
}

void sub_1001F8C7C(uint64_t a1)
{
  v1 = *(a1 + 20) - 17902189 * (((a1 | 0xCF7339EC) - a1 + (a1 & 0x308CC613)) ^ 0x413C2FFC);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1001F8D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (v6 ^ 0xFCFFFDB77F77C36FLL) + 0x3000248B36E64EELL + ((2 * v6) & 0xF9FFFB6EFEEF86DELL);
  v9 = v8 < 0x32E6285D;
  v10 = v8 > v5 + 853944413;
  if (v5 > 0xFFFFFFFFCD19D7A2 != v9)
  {
    v10 = v9;
  }

  return (*(v7 + 8 * (v4 ^ (7 * !v10))))(a1, a2, a3, a4);
}

void sub_1001F8FC4(uint64_t a1)
{
  v1 = 906386353 * (a1 ^ 0x3101CD24);
  v2 = *(a1 + 8) ^ v1;
  v3 = *a1;
  v4 = *(a1 + 12) - v1;
  v5 = (v4 ^ 0xCB87A63F) & (2 * (v4 & 0xD22024B8)) ^ v4 & 0xD22024B8;
  v6 = ((2 * (v4 ^ 0x4B87E60F)) ^ 0x334F856E) & (v4 ^ 0x4B87E60F) ^ (2 * (v4 ^ 0x4B87E60F)) & 0x99A7C2B6;
  v7 = v6 ^ 0x88A04291;
  v8 = (v6 ^ 0x11018020) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0x669F0ADC) & v7 ^ (4 * v7) & 0x99A7C2B4;
  v10 = (v9 ^ 0x870280) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x9920C023)) ^ 0x9A7C2B70) & (v9 ^ 0x9920C023) ^ (16 * (v9 ^ 0x9920C023)) & 0x99A7C2B0;
  v12 = v10 ^ 0x99A7C2B7 ^ (v11 ^ 0x98240200) & (v10 << 8);
  v13 = (8 * v4) ^ (16 * ((v12 << 16) & 0x9A70000 ^ v12 ^ ((v12 << 16) ^ 0x2B70000) & (((v11 ^ 0x183C087) << 8) & 0x9A70000 ^ 0x8250000 ^ (((v11 ^ 0x183C087) << 8) ^ 0x7C20000) & (v11 ^ 0x183C087)))) ^ 0x10D0EB0;
  v14 = *(v3 + 16);
  v15 = *(v3 + 20) + __CFADD__(v13, v14) + (((((v4 ^ 0xCB8C958F) + 430747961) ^ v4 ^ ((v4 ^ 0x3BCEF330) - 370223224) ^ ((v4 ^ 0x826A420C) + 1347053244) ^ ((v4 ^ 0x5FF7FFFB) - 1915233459)) >> 29) ^ 1);
  *(v3 + 16) = v13 + v14;
  *(v3 + 20) = v15;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001F92B0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v10 = ~v7 + v4;
  v11 = *(a3 + v10 - 15);
  v12 = *(a3 + v10 - 31);
  v13 = v3 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v9 + 8 * ((((v5 ^ a1) + v7 == v6) * a2) ^ v8)))();
}

uint64_t sub_1001F92F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = *(v64 + 8 * (v65 - 24606));
  *(v66 - 1799566007) += v63 + ((v65 - 2087070849) & 0x7C65F75F ^ 0xC31DA1F13ADFC9CCLL);
  return (*(a63 + 8 * ((30 * (*a4 == (v65 ^ 0x3CE25E0EC520691DLL))) ^ v65)))();
}

uint64_t sub_1001F9388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, int a40, int a41, int a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, int a47)
{
  v51 = ((((v48 - 10405) | 0x4888) ^ 0xFFFFF047) + ((v48 + 2007801417) & 0x88537E35)) & v47 ^ 0x78EB818CLL;
  *(v50 - 152) = v51;
  v52 = v47 & 0xFFFFFFF9 ^ 0x78EB8186;
  *(v50 - 168) = v52;
  v53 = *(v49 + v51);
  v182 = *(a19 + 4 * (*(v49 + v52) ^ 0x76)) + 770102516;
  v54 = v47 ^ 0x78EB8184;
  *(v50 - 176) = v54;
  v55 = *(a21 + 4 * (v53 ^ 0x95)) ^ 0x9DB04CFE;
  LODWORD(v53) = *(a21 + 4 * (*(v49 + v54) ^ 0x42)) ^ 0x9DB04CFE;
  v56 = v47;
  v57 = v47 & 0xFFFFFFF2 ^ 0x78EB818DLL;
  *(v50 - 144) = v57;
  v58 = v53 & 0xAD52DE5;
  v59 = *(v49 + v57);
  v60 = v47 & 0xFFFFFFF1 ^ 0x78EB818ELL;
  *(v50 - 256) = v60;
  v61 = (v53 & 0xF52AD21A ^ 0x4A35CCF1 ^ (-726933968 * v53) & 0xF52AD210) & ((-726933968 * v53) & 0xAD52DE0 ^ 0xFF7FFEFF) | (-726933968 * v53) & 0xC02100;
  v62 = *(a20 + 4 * (v59 ^ 0x3B)) ^ 0x9A963EE0;
  v63 = v47 & 0xFFFFFFF8 ^ 0x78EB8187;
  *(v50 - 216) = v63;
  v64 = *(v49 + v63);
  v65 = *(a18 + (v64 ^ 0x6D));
  v66 = v47 & 0xFFFFFFFC ^ 0x78EB8187;
  *(v50 - 160) = v66;
  v67 = *(v49 + v66);
  v68 = v65 + (v64 ^ 0x55);
  v69 = *(a18 + (-(v67 ^ 0x2C) ^ (108 - (v67 ^ 0x40)) ^ 0x2D17B4E2 ^ ((v67 ^ 0x2C) - ((2 * (v67 ^ 0x2C)) & 0x1C4u) + 756528354)) + 108) + (v67 ^ 0x78);
  LODWORD(v63) = v56;
  v70 = v56 & 0xFFFFFFF5 ^ 0x78EB818ELL;
  v71 = v56 & 0xFFFFFFF4 ^ 0x78EB818FLL;
  *(v50 - 192) = v70;
  *(v50 - 184) = v71;
  LODWORD(v70) = *(a19 + 4 * (*(v49 + v70) ^ 0x93));
  LODWORD(v64) = ((*(v49 + v71) ^ 0xBE) + *(a18 + (*(v49 + v71) ^ 0x86)) - 58);
  LODWORD(v64) = v70 + v64 - 2 * ((v70 + 244) & v64);
  v72 = v56 & 0xFFFFFFF0 ^ 0x78EB818FLL;
  *(v50 - 208) = v72;
  LOBYTE(v70) = *(a18 + (*(v49 + v72) ^ 0x28)) + (*(v49 + v72) ^ 0x10);
  v73 = *(v49 + v60);
  v74 = *(v50 - 200) ^ HIDWORD(a17) ^ v55;
  v75 = v63 & 0xFFFFFFFE ^ 0x78EB8185;
  *(v50 - 200) = v75;
  LODWORD(v59) = *(a20 + 4 * (*(v49 + v75) ^ 0x6DLL)) ^ 0xA90AAABD;
  v76 = (16 * v59) & 0x55804EE0;
  v77 = v74 ^ v62 ^ (16 * v62) & 0x55804EE0 ^ (*(a19 + 4 * (v73 ^ 0xB6)) + 770102516);
  v78 = v63 & 0xFFFFFFFB ^ 0x78EB8184;
  *(v50 - 224) = v78;
  LODWORD(v73) = *(a21 + 4 * (*(v49 + v78) ^ 0x9BLL));
  v79 = v77 ^ (-726933968 * v55) ^ (v70 - 58);
  LODWORD(v70) = -726933968 * (v73 ^ 0xDB04CFE);
  v80 = a40 ^ *(v50 - 248) ^ v58;
  v81 = v63 & 0xFFFFFFF7 ^ 0x78EB818CLL;
  *(v50 - 248) = v81;
  v82 = v80 ^ v59;
  v83 = *(v49 + v81) ^ 0x1ELL;
  *(v50 - 228) = v63;
  v184 = v63 & 0xFFFFFFFD ^ 0x78EB8186;
  LODWORD(v83) = *(a21 + 4 * v83) ^ 0x9DB04CFE;
  v84 = v82 ^ v76 ^ v61 ^ (v69 - 58) ^ (*(a19 + 4 * (*(v49 + v184) ^ 0x9ALL)) + 770102516) ^ 0x4BB5EC55;
  v185 = v63 & 0xFFFFFFFA ^ 0x78EB8185;
  v85 = *(a20 + 4 * (*(v49 + v185) ^ 0x3ELL)) ^ 0x78317D6D;
  LODWORD(v60) = *(v50 - 240) ^ HIDWORD(a38) ^ v182 ^ v73;
  LODWORD(v73) = (16 * v85) & 0x55804EE0;
  v86 = v63 & 0xFFFFFFF6 ^ 0x78EB818DLL;
  *(v50 - 240) = v86;
  LODWORD(v60) = v60 ^ (v68 - 58) ^ v85;
  v87 = *(a20 + 4 * (*(v49 + v86) ^ 0xC2)) ^ 0x77746B2C;
  LODWORD(v60) = v60 ^ v70;
  v88 = v60 ^ v73;
  v89 = HIDWORD(a11) ^ v79 & 0xFFFFFFEF ^ (v79 & 0x10 | 0x476CE926);
  v90 = v60 ^ v73 ^ 0x8B0C0A71;
  LODWORD(v64) = a47 ^ a38 ^ v83 ^ (-726933968 * v83) ^ v87 ^ (16 * v87) & 0x55804EE0 ^ (v64 + 770102516);
  v91 = *(&off_1010A0B50 + (v48 ^ 0x272C)) - 1678012550;
  v92 = v48;
  v93 = *(&off_1010A0B50 + v48 - 7581) - 1385282319;
  v94 = *(&off_1010A0B50 + (v48 ^ 0x2BC1)) - 1937570239;
  v95 = __ROR4__(*&v94[4 * (BYTE1(v89) ^ 0x4D)], 8);
  LODWORD(v73) = *&v93[4 * HIBYTE(v90)] ^ *&v91[4 * (BYTE2(v64) ^ 0x64)] ^ v95 ^ 0xA313E8D6 ^ (16 * (v95 ^ 0xA313E8D6));
  v96 = *(&off_1010A0B50 + (v48 ^ 0x3908)) - 839454018;
  v97 = __ROR4__(*&v94[4 * BYTE1(v90)], 8);
  LODWORD(v83) = *&v91[4 * BYTE2(v90)];
  v98 = *&v91[4 * BYTE2(v84)] ^ a37 ^ (*&v96[4 * (v64 ^ 0x56)] + 143434742) ^ v97 ^ 0xA32C0D84 ^ *&v93[4 * (HIBYTE(v89) ^ 0x11)] ^ (16 * (v97 ^ 0xA32C0D84));
  LODWORD(v64) = v64 ^ 0xEB5B2944;
  v99 = __ROR4__(*&v94[4 * BYTE1(v64)], 8);
  v100 = v83 ^ a39 ^ *&v93[4 * HIBYTE(v84)] ^ v99 ^ 0xE1546458 ^ (*&v96[4 * (v89 ^ 0x71)] + 143434742) ^ (16 * (v99 ^ 0xE1546458));
  LODWORD(v70) = v73 ^ (*&v96[4 * v84] + 143434742) ^ 0x5895B590;
  v101 = (a16 ^ (v70 - (v70 ^ a17))) + v70;
  v102 = __ROR4__(*&v94[4 * BYTE1(v84)], 8);
  LODWORD(v64) = HIDWORD(a37) ^ *&v93[4 * BYTE3(v64)] ^ (*&v96[4 * (v88 ^ 0x63)] + 143434742) ^ v102 ^ 0x9E1C017B ^ *&v91[4 * (BYTE2(v89) ^ 0x29)] ^ (16 * (v102 ^ 0x9E1C017B)) ^ 0x443AB62A;
  v103 = __ROR4__(*&v94[4 * ((v98 ^ 0x7537) >> 8)], 8);
  v104 = *&v93[4 * ((v101 ^ 0xA211A991) >> 24)] ^ a36 ^ *&v91[4 * BYTE2(v64)] ^ (*&v96[4 * (v100 ^ 0x15)] + 143434742) ^ v103 ^ 0x70B48624 ^ (16 * (v103 ^ 0x70B48624));
  v105 = __ROR4__(*&v94[4 * ((v101 ^ 0xA991) >> 8)], 8);
  v106 = *&v93[4 * ((v98 ^ 0xAA0A7537) >> 24)] ^ HIDWORD(a35) ^ *&v91[4 * ((v100 ^ 0xE4EFBA15) >> 16)] ^ (*&v96[4 * v64] + 143434742) ^ v105 ^ 0x2ABF88BB ^ (16 * (v105 ^ 0x2ABF88BB));
  v107 = __ROR4__(*&v94[4 * BYTE1(v64)], 8);
  v108 = *&v93[4 * ((v100 ^ 0xE4EFBA15) >> 24)] ^ HIDWORD(a36) ^ v107 ^ 0x82ABBD9D ^ *&v91[4 * (BYTE2(v101) ^ 0x2E)] ^ (16 * (v107 ^ 0x82ABBD9D)) ^ (*&v96[4 * (v98 ^ 0x25)] + 143434742);
  v109 = __ROR4__(*&v94[4 * (BYTE1(v100) ^ 0xCC)], 8);
  v110 = *&v91[4 * ((v98 ^ 0xAA0A7537) >> 16)] ^ HIDWORD(a34) ^ *&v93[4 * BYTE3(v64)] ^ v109 ^ 0xFF36AFFD ^ (16 * (v109 ^ 0xFF36AFFD)) ^ (*&v96[4 * (((a16 ^ (v70 - (v70 ^ a17))) + v70) ^ 0x83)] + 143434742);
  LODWORD(v70) = v104 ^ 0x8C2F2536;
  v111 = __ROR4__(*&v94[4 * ((v104 ^ 0x2536) >> 8)], 8);
  LODWORD(v112) = __ROR4__(*&v91[4 * (((v108 ^ 0x4130DB06) >> 16) ^ 0x3F)] ^ *&v93[4 * (HIBYTE(v106) ^ 0x33)] ^ (*&v96[4 * (v110 ^ 0xDF)] + 143434742) ^ v111 ^ 0x8AA534DA ^ (16 * (v111 ^ 0x8AA534DA)), 7) ^ 0xD4722A3B;
  HIDWORD(v112) = v112;
  LODWORD(v64) = (HIDWORD(a15) ^ (((v112 >> 25) ^ 0xD35BB4B6) - (a15 ^ (v112 >> 25)))) + ((v112 >> 25) ^ 0xD35BB4B6);
  LODWORD(v112) = __ROR4__(*&v94[4 * (((-(BYTE1(v110) ^ 0x56) ^ (916769112 - (BYTE1(v110) ^ 0x36A4C90E)) ^ 0xF065C864 ^ ((BYTE1(v110) ^ 0x56) - ((2 * (BYTE1(v110) ^ 0x56)) & 0xC8) - 261765020)) + 916769112) ^ 0x36A4C92E)], 8);
  v113 = *&v93[4 * (HIBYTE(v108) ^ 0x2B)] ^ a35 ^ *&v91[4 * (BYTE2(v104) ^ 0x10)] ^ (*&v96[4 * (v106 ^ 0xC2)] + 143434742) ^ v112 ^ 0xB440B595 ^ (16 * (v112 ^ 0xB440B595));
  LODWORD(v73) = *&v93[4 * BYTE3(v70)] ^ a34 ^ *&v91[4 * (BYTE2(v110) ^ 0x73)] ^ (*&v96[4 * (v108 ^ 6)] + 143434742);
  v114 = *&v93[4 * (HIBYTE(v110) ^ 0x5B)];
  v115 = *&v91[4 * (BYTE2(v106) ^ 0x43)];
  LODWORD(v112) = __ROR4__(*&v94[4 * (BYTE1(v106) ^ 0x1D)], 8);
  v116 = v73 ^ v112 ^ 0x75DC0AD8 ^ (16 * (v112 ^ 0x75DC0AD8));
  LODWORD(v112) = __ROR4__(*&v94[4 * (BYTE1(v108) ^ 0xAD)], 8);
  v117 = v114 ^ HIDWORD(a33) ^ (*&v96[4 * v70] + 143434742) ^ v115 ^ v112 ^ 0x705D2C48 ^ (16 * (v112 ^ 0x705D2C48));
  v118 = HIDWORD(a14) ^ v64;
  LODWORD(v112) = __ROR4__(*&v94[4 * (((v114 ^ WORD2(a33) ^ (*&v96[4 * v70] - 23562) ^ v115 ^ v112 ^ 0x2C48 ^ (16 * (v112 ^ 0x2C48))) >> 8) ^ 0x32)], 8);
  LODWORD(v64) = *&v93[4 * ((v113 ^ 0xE4C3774A) >> 24)] ^ *&v91[4 * (BYTE2(v116) ^ 0x57)] ^ v112 ^ 0x370FD2B6 ^ (*&v96[4 * (BYTE4(a14) ^ v64)] + 143434742) ^ (16 * (v112 ^ 0x370FD2B6)) ^ 0x8D4A29F0;
  LODWORD(v112) = __ROR4__(*&v94[4 * (-BYTE1(v118) ^ (118 - (BYTE1(v118) ^ 0x76)) ^ (BYTE1(v118) - ((v118 >> 7) & 0x60) - 1168051920) ^ 0xBA60F130) + 472], 8);
  v119 = *&v93[4 * (HIBYTE(v116) ^ 0xBA)] ^ a32 ^ *&v91[4 * (BYTE2(v117) ^ 0xD1) + 256 + 4 * ((v117 >> 15) & 0x7E ^ 0xFFFFFFDD)] ^ (*&v96[4 * (v113 ^ 0x58)] + 143434742) ^ v112 ^ 0x82A97DC8 ^ (16 * (v112 ^ 0x82A97DC8));
  LODWORD(v112) = __ROR4__(*&v94[4 * ((v113 ^ 0x774A) >> 8)], 8);
  LODWORD(v70) = *&v93[4 * (HIBYTE(v117) ^ 0x3B)] ^ a33 ^ (*&v96[4 * (v116 ^ 0x5D)] + 143434742) ^ v112 ^ 0x757055D ^ *&v91[4 * BYTE2(v118)] ^ (16 * (v112 ^ 0x757055D));
  LODWORD(v112) = __ROR4__(*&v94[4 * ((v116 ^ 0xEF5D) >> 8)], 8);
  LODWORD(v64) = HIDWORD(a13) ^ (v64 + a14 - 2 * (v64 & a14));
  LODWORD(v73) = HIDWORD(a32) ^ *&v91[4 * (BYTE2(v113) ^ 0xFC)] ^ (*&v96[4 * (v117 ^ 0x49)] + 143434742) ^ v112 ^ 0xE8443BCC ^ *&v93[4 * HIBYTE(v118)] ^ (16 * (v112 ^ 0xE8443BCC)) ^ 0xA530F642;
  LODWORD(v112) = __ROR4__(*&v94[4 * ((WORD2(a32) ^ *&v91[4 * (BYTE2(v113) ^ 0xFC)] ^ (*&v96[4 * (v117 ^ 0x49)] - 23562) ^ v112 ^ 0x3BCC ^ *&v93[4 * HIBYTE(v118)] ^ (16 * (v112 ^ 0x3BCC)) ^ 0xF642) >> 8)], 8);
  v120 = *&v93[4 * (HIBYTE(v119) ^ 0x19)] ^ a24 ^ *&v91[4 * ((v70 ^ 0x2D75E58B) >> 16)] ^ (*&v96[4 * (v64 ^ 1)] + 143434742) ^ v112 ^ 0xA35DD34C ^ (16 * (v112 ^ 0xA35DD34C));
  LODWORD(v112) = __ROR4__(*&v94[4 * (BYTE1(v64) ^ 0xF4)], 8);
  v121 = *&v93[4 * (BYTE3(v70) ^ 0x47)] ^ HIDWORD(a22) ^ *&v91[4 * BYTE2(v73)] ^ v112 ^ 0xD03D4467 ^ (*&v96[4 * (v119 ^ 0x1F)] + 143434742) ^ (16 * (v112 ^ 0xD03D4467));
  LODWORD(v112) = __ROR4__(*&v94[4 * (BYTE1(v70) ^ 0xE5)], 8);
  v122 = *&v93[4 * ((v64 ^ 0x6F468201) >> 24)] ^ HIDWORD(a31) ^ (*&v96[4 * v73] + 143434742) ^ *&v91[4 * (BYTE2(v119) ^ 0x13)] ^ v112 ^ 0x480B6F6E ^ (16 * (v112 ^ 0x480B6F6E));
  LODWORD(v112) = __ROR4__(*&v94[4 * (BYTE1(v119) ^ 0xE4)], 8);
  v123 = *&v93[4 * BYTE3(v73)] ^ a31 ^ (*&v96[4 * (v70 ^ 0x8B)] + 143434742) ^ *&v91[4 * (BYTE2(v64) ^ 0x79)] ^ v112 ^ 0x7F29A3B0 ^ (16 * (v112 ^ 0x7F29A3B0));
  LODWORD(v64) = *&v91[4 * (BYTE2(v120) ^ 0x9B)] ^ HIDWORD(a30) ^ *&v93[4 * (HIBYTE(v122) ^ 0xA6)] ^ (*&v96[4 * ((v93[4 * BYTE3(v73)] ^ a31 ^ (v96[4 * (v70 ^ 0x8B)] - 10) ^ v91[4 * (BYTE2(v64) ^ 0x79)] ^ v112 ^ 0xB0 ^ (16 * (v112 ^ 0xB0))) ^ 0x9B)] + 143434742);
  LODWORD(v112) = __ROR4__(*&v94[4 * (BYTE1(v121) ^ 0x30)], 8);
  v124 = v64 ^ v112 ^ 0x59BAFEB7 ^ (16 * (v112 ^ 0x59BAFEB7));
  LODWORD(v64) = *&v96[4 * (v122 ^ 2)];
  v125 = *&v91[4 * (BYTE2(v121) ^ 0x96)] ^ *&v93[4 * ((v120 ^ 0x5DA446C2u) >> 24)];
  LODWORD(v70) = (v64 ^ 0x36A99E8D) & (2 * (v64 & 0xA0A99F21)) ^ v64 & 0xA0A99F21;
  LODWORD(v73) = ((2 * (v64 ^ 0x76FA90CD)) ^ 0xACA61FD8) & (v64 ^ 0x76FA90CD) ^ (2 * (v64 ^ 0x76FA90CD)) & 0xD6530FEC;
  LODWORD(v70) = (v73 ^ 0x84020D88) & (4 * v70) ^ v70;
  LODWORD(v73) = ((4 * (v73 ^ 0x52510024)) ^ 0x594C3FB0) & (v73 ^ 0x52510024) ^ (4 * (v73 ^ 0x52510024)) & 0xD6530FE8;
  LODWORD(v70) = (v73 ^ 0x50400FA0) & (16 * v70) ^ v70;
  LODWORD(v73) = ((16 * (v73 ^ 0x8613004C)) ^ 0x6530FEC0) & (v73 ^ 0x8613004C) ^ (16 * (v73 ^ 0x8613004C)) & 0xD6530FC0;
  LODWORD(v70) = v70 ^ 0xD6530FEC ^ (v73 ^ 0x44100E00) & (v70 << 8);
  LODWORD(v70) = (v70 << 16) & 0x56530000 ^ v70 ^ ((v70 << 16) ^ 0xFEC0000) & (((v73 ^ 0x9243012C) << 8) & 0x56530000 ^ 0x4500000 ^ (((v73 ^ 0x9243012C) << 8) ^ 0x530F0000) & (v73 ^ 0x9243012C));
  LODWORD(v73) = v123 ^ 0x3BF1CE89;
  HIDWORD(v112) = *&v94[4 * ((v123 ^ 0xCE89) >> 8)];
  LODWORD(v112) = HIDWORD(v112);
  v126 = *&v91[4 * ((v123 ^ 0x3BF1CE89u) >> 16)];
  v127 = HIDWORD(a28) ^ (16 * ((v112 >> 8) ^ 0x212873F6)) ^ ((v112 >> 8) ^ v125) & 0xB091BF40 ^ ((v112 >> 8) ^ 0x212873F6 ^ v125) & 0x4F6E40BF ^ ((v64 ^ (2 * v70) ^ 0x676C842C) + ((2 * (((v64 ^ 0x50E25EA4) + 1884012933) ^ v64 ^ ((v64 ^ 0x256E13F4) + 96963797) ^ ((v64 ^ 0x5D25D0B0) + 2106347409) ^ ((v64 ^ 0x77FFFD3F) + 1465279008))) & 0xCFC609AA ^ 0x8E8401AA));
  LODWORD(v112) = __ROR4__(*&v94[4 * (BYTE1(v122) ^ 0x37)], 8);
  v128 = *&v93[4 * (HIBYTE(v121) ^ 0xFC)] ^ a30 ^ v126 ^ (*&v96[4 * (v120 ^ 0xC2)] + 143434742) ^ v112 ^ 0xFEBDE48C ^ (16 * (v112 ^ 0xFEBDE48C));
  LODWORD(v112) = __ROR4__(*&v94[4 * (BYTE1(v120) ^ 0x30)], 8);
  v129 = *&v93[4 * BYTE3(v73)] ^ HIDWORD(a29) ^ *&v91[4 * (BYTE2(v122) ^ 0xEC)] ^ (*&v96[4 * (v121 ^ 0x83)] + 143434742) ^ v112 ^ 0x41816820 ^ (16 * (v112 ^ 0x41816820));
  LODWORD(v64) = *&v96[4 * (v124 ^ 0x26)];
  LODWORD(v112) = __ROR4__(*&v94[4 * ((v128 ^ 0x217F) >> 8)], 8);
  v130 = v129 ^ 0x9B5B1391;
  v131 = *&v94[4 * ((v129 ^ 0x1391) >> 8)];
  v132 = *&v93[4 * ((v124 ^ 0x1C7C2926u) >> 24)] ^ a29 ^ (*&v96[4 * (v129 ^ 0x83)] + 143434742) ^ v112 ^ 0xF89F65EE ^ *&v91[4 * (BYTE2(v127) ^ 0xC7)] ^ (16 * (v112 ^ 0xF89F65EE));
  LODWORD(v112) = __ROR4__(v131, 8);
  v133 = *&v93[4 * ((v127 ^ 0x17F8AB02u) >> 24)] ^ a23 ^ *&v91[4 * (BYTE2(v128) ^ 0x36)] ^ v112 ^ 0x731D1FDF ^ (16 * (v112 ^ 0x731D1FDF)) ^ (((2 * (((v64 ^ 0x10ACDA50) + 805651825) ^ v64 ^ ((v64 ^ 0x4D059749) + 1839990890) ^ ((v64 ^ 0x7D129219) + 1572539706) ^ ((v64 ^ 0x7FEDBFDF) + 1598300416))) & 0xCFC609AA ^ 0x8E8401AA) + (v64 ^ ((v64 ^ 0x62007AAD) - 1029053042) ^ ((v64 ^ 0x913666F) - 1447364272) ^ ((v64 ^ 0xEFBA9363) + 1326648388) ^ ((v64 ^ 0xDBFFEF7E) + 2069262431) ^ 0x38B5640A));
  LODWORD(v70) = __ROR4__(*&v94[4 * (BYTE1(v124) ^ 0x5F)], 8) ^ 0xF7172263;
  LODWORD(v112) = __ROR4__(*&v94[4 * ((v127 ^ 0xAB02) >> 8)], 8);
  LODWORD(v64) = *&v93[4 * HIBYTE(v130)] ^ HIDWORD(a27) ^ *&v91[4 * ((v124 ^ 0x1C7C2926u) >> 16)] ^ (*&v96[4 * (v128 ^ 0x7F)] + 143434742) ^ v112 ^ 0xC93D5863 ^ (16 * (v112 ^ 0xC93D5863));
  LODWORD(v70) = *&v93[4 * ((v128 ^ 0x4809217Fu) >> 24)] ^ a28 ^ *&v91[4 * BYTE2(v130)] ^ v70 ^ (*&v96[4 * (v127 ^ 2)] + 143434742) ^ (16 * v70);
  LODWORD(v112) = __ROR4__(*&v94[4 * ((v133 ^ 0x2C41) >> 8)], 8);
  v134 = *&v93[4 * (BYTE3(v64) ^ 0x2E)] ^ a26 ^ *&v91[4 * (BYTE2(v132) ^ 0x5E)] ^ (*&v96[4 * (v70 ^ 0xAF)] + 143434742) ^ v112 ^ 0x6F931978 ^ (16 * (v112 ^ 0x6F931978));
  LODWORD(v112) = __ROR4__(*&v94[4 * (BYTE1(v70) ^ 0x2D)], 8);
  v135 = v64 ^ 0x4421EC7A;
  LODWORD(v64) = *&v93[4 * (HIBYTE(v132) ^ 0xA)] ^ a27 ^ *&v91[4 * (((v133 ^ 0x780B2C41u) >> 16) ^ 0x3F)] ^ v112 ^ 0x524E1CC3 ^ (16 * (v112 ^ 0x524E1CC3)) ^ (*&v96[4 * (v64 ^ 0x7A)] + 143434742);
  LODWORD(v112) = __ROR4__(*&v94[4 * BYTE1(v135)], 8);
  v136 = *&v91[4 * (BYTE2(v70) ^ 0x65)] ^ HIDWORD(a26) ^ *&v93[4 * ((v133 ^ 0x780B2C41u) >> 24)] ^ (*&v96[4 * (v132 ^ 0x83)] + 143434742) ^ v112 ^ 0x72CB87F ^ (16 * (v112 ^ 0x72CB87F));
  LODWORD(v112) = __ROR4__(*&v94[4 * (BYTE1(v132) ^ 0x58)], 8);
  LODWORD(v70) = HIDWORD(a24) ^ *&v93[4 * (BYTE3(v70) ^ 0xBB)] ^ *&v91[4 * BYTE2(v135)] ^ (*&v96[4 * (v133 ^ 0x53)] + 143434742) ^ v112 ^ 0x71C476DA;
  LOBYTE(v133) = v64 ^ 0xC3;
  LODWORD(v83) = v70 ^ (16 * (v112 ^ 0x71C476DA)) ^ 0xC7E24311;
  v137 = *&v93[4 * ((v64 ^ 0xD3BD35C3) >> 24)];
  v138 = *&v93[4 * (HIBYTE(v136) ^ 0x69)];
  LODWORD(v73) = *&v93[4 * BYTE3(v83)];
  LODWORD(v70) = *&v93[4 * (HIBYTE(v134) ^ 9)];
  LOBYTE(v93) = v136 ^ 0x6E;
  v139 = *&v91[4 * ((v136 ^ 0x383DA6E) >> 16)];
  v140 = *&v91[4 * BYTE2(v83)];
  v141 = *&v91[4 * (BYTE2(v134) ^ 0xA5)];
  v142 = *&v91[4 * (BYTE2(v64) ^ 0x82)];
  LODWORD(v91) = *&v94[4 * BYTE1(v83)];
  v143 = *&v94[4 * (BYTE1(v134) ^ 0x83)];
  LODWORD(v64) = *&v94[4 * (BYTE1(v64) ^ 0x43)];
  LODWORD(v94) = *&v94[4 * (BYTE1(v136) ^ 0xAC)];
  v144 = *&v96[4 * (v134 ^ 0xE1)];
  v145 = *&v96[4 * v133];
  LODWORD(v83) = *&v96[4 * v83];
  LODWORD(v112) = __ROR4__(v64, 8);
  LODWORD(v96) = v73 ^ HIDWORD(a23) ^ v141 ^ (*&v96[4 * v93] + 143434742) ^ v112 ^ 0xAA8BAFD ^ (16 * (v112 ^ 0xAA8BAFD));
  LODWORD(v112) = __ROR4__(v91, 8);
  LODWORD(v64) = v137 ^ HIDWORD(a25) ^ v139 ^ (v144 + 143434742) ^ v112 ^ 0xAA0D768F ^ (16 * (v112 ^ 0xAA0D768F));
  LODWORD(v73) = __ROR4__(v143, 8) ^ 0xD928309C;
  LODWORD(v112) = __ROR4__(v94, 8);
  BYTE1(v91) = BYTE1(v64) ^ 0x44;
  LODWORD(v93) = a25 ^ v140 ^ v138 ^ (v145 + 143434742) ^ v73 ^ (16 * v73) ^ 0xA48E6375;
  v146 = *(&off_1010A0B50 + (v92 ^ 0x383A)) - 1956556002;
  v147 = *&v146[4 * BYTE2(v93)];
  v148 = a13 ^ v70 ^ v142 ^ (v83 + 143434742) ^ v112 ^ 0x83ABBCCF ^ (16 * (v112 ^ 0x83ABBCCF));
  v149 = *&v146[4 * (BYTE2(v96) ^ 0x8E)];
  v150 = v64 ^ 0x56;
  LODWORD(v70) = -v150 ^ (73 - (v64 ^ 0x1F)) ^ 0x4A949BCA ^ (v150 - ((2 * (v64 ^ 0xE5FF4456)) & 0x194) + 1251253194);
  v183 = *&v146[4 * (BYTE2(v148) ^ 0x4E)];
  v151 = *&v146[4 * ((v64 ^ 0xE5FF4456) >> 16)];
  v152 = v92;
  v153 = *(&off_1010A0B50 + (v92 ^ 0x274D)) - 1564850459;
  v154 = *&v153[4 * ((v64 ^ 0xE5FF4456) >> 24)];
  LODWORD(v86) = *&v153[4 * (v93 >> 24)];
  v155 = *&v153[4 * ((v96 >> 24) ^ 0xBC)];
  LODWORD(v83) = *&v153[4 * (HIBYTE(v148) ^ 0x2D)];
  v156 = *(&off_1010A0B50 + (v92 ^ 0x2002)) - 971330714;
  LODWORD(v64) = v148;
  v157 = *&v156[4 * (v148 ^ 0xE3)];
  v158 = *&v156[4 * (v70 + 73)];
  v159 = v93;
  v160 = *&v156[4 * (v93 ^ 0x49)];
  LODWORD(v70) = v96;
  v161 = *&v156[4 * (v96 ^ 0xD0)];
  v162 = BYTE1(v96);
  v163 = *(&off_1010A0B50 + v152 - 9516) - 2092960534;
  v164 = *&v163[4 * (v162 ^ 0xD3)];
  v165 = BYTE1(v148);
  v166 = *&v163[4 * (v165 ^ 0x65)];
  v167 = BYTE1(v91);
  v168 = *&v163[4 * (BYTE1(v91) ^ 0x4B)];
  LODWORD(v91) = BYTE1(v93);
  LODWORD(v153) = *&v163[4 * (BYTE1(v93) ^ 0x4B)];
  v169 = v86 ^ a41 ^ ((v165 ^ 0x2E) - 1959217227) ^ (v149 - 786381138) ^ v166 ^ v158;
  v170 = (v86 ^ a41 ^ ((v165 ^ 0x2E) - 75) ^ (v149 - 82) ^ v166 ^ v158 ^ v150) ^ 0x18;
  v171 = *(&off_1010A0B50 + (v152 ^ 0x3931)) - 1552595471;
  *(*(v50 - 136) + *(v50 - 216)) = ((v171[v170] >> 6) | (4 * v171[v170])) ^ 0x69;
  LODWORD(v91) = a12 ^ a42 ^ v70 ^ (v91 - 1959217227) ^ v83 ^ (v151 - 786381138) ^ v161 ^ v153;
  v172 = (v91 ^ 0x2B8535C) - ((2 * (v91 ^ 0x2B8535C)) & 0x5FBB3F54) - 1344430166;
  v173 = *(&off_1010A0B50 + (v152 ^ 0x2D7E)) - 765652934;
  *(*(v50 - 136) + *(v50 - 256)) = v173[BYTE1(v172) ^ 0x53] ^ 0xC0;
  v174 = HIDWORD(a12) ^ v154 ^ (v147 - 786381138) ^ ((v162 ^ 0x98) - 1959217227) ^ v164 ^ v64 ^ v157;
  v175 = *(v50 - 136);
  *(v175 + v184) = v173[BYTE1(v174) ^ 0x1BLL] ^ 0xFE;
  *(v175 + *(v50 - 168)) = v173[BYTE1(v169) ^ 0x39] ^ 0x7C;
  v176 = *(&off_1010A0B50 + (v152 ^ 0x2921)) - 947817119;
  LOBYTE(v153) = v176[BYTE3(v174) ^ 0xD9];
  LODWORD(v70) = (v183 - 786381138) ^ v160;
  *(v175 + *(v50 - 176)) = v153 ^ (16 * v153) ^ 0x30;
  HIDWORD(v112) = (((BYTE2(v169) ^ 0xC8) & 0xE0) >> 5) ^ 0x6F6E3C4;
  LODWORD(v112) = ((WORD1(v169) ^ 0xFFFFFFC8) << 27) ^ 0xB0000000;
  v177 = *(&off_1010A0B50 + v152 - 8593) - 551251619;
  LODWORD(v153) = v177[(v112 >> 27) ^ 0xDEDC780ALL];
  v178 = (v167 - 1959217227) ^ a12 ^ v155 ^ v168 ^ v70;
  *(v175 + v185) = v153 ^ (v153 >> 5) ^ (v153 >> 4) ^ 0xEF;
  HIDWORD(v112) = (((v167 - 18507) ^ a12 ^ v155 ^ v168 ^ v70) >> 9) ^ 0x6806CDB0;
  LODWORD(v112) = ~(v178 >> 8) << 31;
  *(v175 + *(v50 - 192)) = v173[(v112 >> 31) ^ 0xD00D9B98] ^ 0x6A;
  LOBYTE(v170) = v176[BYTE3(v178) ^ 0xAFLL];
  *(v175 + *(v50 - 248)) = v170 ^ (16 * v170) ^ 0x8E;
  LODWORD(v170) = v171[((v91 ^ 0x5C) - ((2 * (v91 ^ 0x5C)) & 0x54) - 86) ^ 0xEALL];
  *(v175 + *(v50 - 208)) = ((v170 >> 6) | (4 * v170)) ^ 0x4B;
  LODWORD(v170) = v171[((v167 - 75) ^ a12 ^ v155 ^ v168 ^ v70 ^ v159) ^ 0x23];
  *(v175 + *(v50 - 184)) = ((v170 >> 6) | (4 * v170)) ^ 0xAF;
  LOBYTE(v170) = v176[HIBYTE(v172) ^ 0x1BLL];
  *(v175 + *(v50 - 152)) = v170 ^ (16 * v170) ^ 0xF3;
  LOBYTE(v170) = v176[BYTE3(v169) ^ 0xD8];
  *(v175 + *(v50 - 224)) = v170 ^ (16 * v170) ^ 0x96;
  LODWORD(v170) = v177[BYTE2(v174) ^ 0xD3];
  *(v175 + *(v50 - 200)) = v170 ^ (v170 >> 5) ^ (v170 >> 4) ^ 0xB9;
  LODWORD(v170) = v177[BYTE2(v178) ^ 0x2FLL];
  *(v175 + *(v50 - 240)) = v170 ^ (v170 >> 5) ^ (v170 >> 4) ^ 0x70;
  LODWORD(v170) = v171[v174 ^ 0x96];
  *(v175 + *(v50 - 160)) = ((v170 >> 6) | (4 * v170)) ^ 0x73;
  LODWORD(v170) = v177[BYTE2(v172) ^ 0xC5];
  *(v175 + *(v50 - 144)) = v170 ^ (v170 >> 5) ^ (v170 >> 4) ^ 0x8D;
  LODWORD(v170) = (((*(v50 - 228) ^ 0x1B9BD446) - 463197254) ^ ((*(v50 - 228) ^ 0xFB0F80E0) + 82870048) ^ ((*(v50 - 228) ^ 0x987FD522) + 1736452830)) + 2087376319;
  v179 = ((v170 ^ 0x83E6A9B5) + 2137391714) ^ v170 ^ ((v170 ^ 0x1E99E1CA) - 501659105) ^ ((v170 ^ 0x21EF63AB) - 579876736) ^ ((v170 ^ 0xBFEF7FFF) + 1131402284);
  LODWORD(v170) = (((v179 ^ 0xCCBD38A2) + 1221989107) ^ ((v179 ^ 0x6C9C552E) - 386433153) ^ ((v179 ^ 0xA35E39A7) + 657789944)) + 2053709857;
  LODWORD(v70) = (HIDWORD(a16) < 0x17D9E9D) ^ (v170 < 0x17D9E9D);
  v180 = v170 < HIDWORD(a16);
  if (v70)
  {
    v180 = HIDWORD(a16) < 0x17D9E9D;
  }

  return (*(a43 + 8 * ((102 * !v180) ^ v152)))(v174, v176, v169, v152, v178, &off_1010A0B50, v159, v167, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_1001FB0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, double a7, __n128 a8, __n128 a9, __n128 a10, int8x16_t a11, double a12, int8x16_t a13)
{
  v19 = a4 & (a2 + 15);
  v21.i64[0] = vqtbl4q_s8(*(&a8 - 1), a11).u64[0];
  *&v21.i64[1] = a12;
  v22 = vrev64q_s8(vmulq_s8(v21, a13));
  *(a5 + a2) = veorq_s8(veorq_s8(veorq_s8(*(v15 + v19 - 15), *(v13 + a2)), veorq_s8(*(v14 + v19 - 15), *(v16 + v19 - 15))), vextq_s8(v22, v22, 8uLL));
  return (*(v18 + 8 * (((a3 == 0) * a6) ^ v17)))(a1, a2 - 16, a3 - 16);
}

uint64_t sub_1001FB150@<X0>(int a1@<W2>, uint64_t a2@<X7>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26, int a27, int a28, int a29, int a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, int a38, uint64_t a39, uint64_t a40, int a41, int a42, int a43, int a44, int a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, unsigned __int8 *a58, uint64_t a59, uint64_t a60, unsigned __int8 a61, int a62, int a63)
{
  HIDWORD(v161) = HIDWORD(a2);
  v69 = a3 == 10;
  *(v68 - 136) = 0;
  v71 = (a1 + 1104969317) & 0xBE239BBE;
  v72 = *(v68 - 216) ^ 0x1DLL;
  v73 = *(&off_1010A0B50 + (a1 ^ 0x71E3)) - 496104171;
  v74 = v65 ^ 0xB6;
  v75 = v66 ^ 0xA8;
  if (a3 == 10)
  {
    v76 = 93;
  }

  else
  {
    v76 = 94;
  }

  v162 = v76 & 1;
  v163 = v76 & 2;
  v77 = v76 & 3;
  v171 = ((a25 ^ 0xAB) << v77) & 0xFE ^ (3 << v163 << v162);
  v169 = HIDWORD(a40) ^ 0x22u;
  v165 = (a45 ^ v71 ^ 0x9A) << v77;
  v167 = (a43 ^ 0x1Bu) << v77;
  v168 = a37 ^ 0x15u;
  v170 = (a46 & 0x3F ^ 0x37u) << v77;
  *(v68 - 168) = (a44 ^ 3u) << v77;
  v166 = (a42 ^ 0x19u) << v77;
  v164 = (a41 ^ 0x35u) << v77;
  v172 = (a38 ^ 3u) << v77;
  v173 = a27 ^ 0x3Au;
  v78 = *(&off_1010A0B50 + (a1 ^ 0x6FA5)) - 1061582491;
  v79 = v78[v67 ^ 0x77] ^ v67;
  HIDWORD(a19) = a1;
  v80 = *(&off_1010A0B50 + a1 - 30544) - 1270520566;
  v81 = *(&off_1010A0B50 + a1 - 31350) - 771780430;
  v82 = v81[a35 ^ 0xDDLL];
  v83 = (((((((a39 ^ 0x99) + 10) ^ v80[a39 ^ 0xB7] ^ 0xFFFFFFCF) << 24) ^ 0x961729D5) & ((v79 << 8) ^ 0xFF578DDF) | (v79 << 8) & 0xD600) ^ 0xD2F7B492) & (((v82 >> 7) | (2 * v82)) ^ 0xFFF7FFDA) | ((v82 >> 7) | (2 * v82)) & 0xB8;
  v84 = (((v73[v72] - 105) << 16) ^ 0xFF01FFFF) & (((((a47 ^ 0xFFFFFFF7) + 10) ^ 0xB9 ^ v80[a47 ^ 0xD9]) << 24) ^ 0x25036003) & 0xFF03FFFF | ((v73[v72] - 105) >> 2 << 18);
  v85 = v73;
  v86 = v81[a48 ^ 0x26];
  v87 = (v86 >> 7) | (2 * v86);
  v88 = ((v87 ^ 0xFFFFF014) & (v84 ^ 0x52D59034) ^ (v87 & 0xC8 | 0x34410800)) & 0x6D1B1060 ^ 0x2A4CA932 ^ ((v87 ^ 0xFFFFF014) & (v84 ^ 0x52D59034) ^ (v87 & 0xC8 | 0x34410800) | 0x700) & ((((a52 & 0x3B ^ 0xFB) & (a52 | 0x3Bu) ^ (a52 & 4 | 0x21) ^ v78[a52 ^ 0x35]) << 8) ^ 0x92E49B9F);
  v89 = v83 & 0xD42720DB ^ 0xF4106255 ^ (((v85[v74] - 105) << 16) ^ 0x2B20DF24) & (v83 ^ 0xB81F7602);
  *(v68 - 144) = HIDWORD(a53) ^ 0xAu;
  v90 = v80[*(v68 - 232) ^ 0x24] ^ ((*(v68 - 232) ^ 0xA) + 10);
  *(v68 - 152) = HIDWORD(a49) ^ 0x2Bu;
  LOBYTE(v86) = v78[*(v68 - 256) ^ 0x2BLL] ^ *(v68 - 256);
  v91 = v81[a65 ^ 0x2CLL];
  v92 = ((2 * v91) & 0xFE ^ 0xFFE18112) & ((v90 << 24) ^ 0x57E18176) | (v91 >> 7) & 1 | (2 * v91) & 0x89;
  LOBYTE(v91) = v85[*(v68 - 248) ^ 0x50];
  *(v68 - 216) = v85;
  v93 = (v92 ^ 0x221E3C00) & (((v91 - 105) << 16) ^ 0x321B3D4C) | v92 & 0xCD0000B3;
  v94 = v93 & 0xB7421167 ^ 0x2A0E6E72 ^ (v93 ^ 0x4815C280) & (((v78[a61 ^ 0x8ELL] ^ a61) << 8) ^ 0x48BDBB98);
  *(v68 - 160) = HIDWORD(a51) ^ 0xBu;
  v95 = (((v80[a63 ^ 0x25] ^ ((a63 ^ 0xB) + 10)) << 24) ^ 0xAEEA1597) & ((v86 << 8) ^ 0xFFFECB97) | (v86 << 8) & 0xEA00;
  v96 = v81[*(v68 - 240) ^ 0x9DLL];
  v97 = ((v96 >> 7) | (2 * v96)) & 0x54 ^ 0xA460FB4D ^ (v95 & 0x4B223C80 ^ 0xD66AB14E ^ (v95 ^ 0xB4154260) & (((v85[v75] - 105) << 16) ^ 0xB423C365)) & (((v96 >> 7) | (2 * v96)) ^ 0xFFFFFFAB);
  if (v69)
  {
    v97 = v89;
  }

  *(v68 - 248) = v97;
  if (v69)
  {
    v98 = v88;
  }

  else
  {
    v98 = v94;
  }

  *(v68 - 256) = v98;
  v99 = (a58[7] ^ 0x6E) + *(a55 + (a58[7] ^ 0x25)) - 14;
  v100 = (v99 & 0x1FF ^ 0xFFFFBA0A) & (((((a58[4] ^ 0xA3) + *(a57 + (a58[4] ^ 0x41)) - 110) ^ 0x7F) << 24) ^ 0x54FFBA4F) | v99 & 0xB0;
  v101 = *(a56 + (a58[14] ^ 0x3DLL));
  v102 = (a58[15] ^ 0x2D) + *(a55 + (a58[15] ^ 0x66)) - 14;
  v103 = ((*(a56 + (a58[10] ^ 0x8ALL)) << 8) ^ 0xA5E1893C) & ((((*(a54 + (a58[9] ^ 8)) << 16) ^ 0x726C7BEE) & (((a58[11] ^ 0xE6) + *(a55 + (a58[11] ^ 0xADLL)) - 14) ^ 0x72FF7FF4) | ((a58[11] ^ 0xE6) + *(a55 + (a58[11] ^ 0xADLL)) - 14) & 0x11) ^ 0xDD2A84D3);
  v104 = ((*(a54 + (a58[9] ^ 8)) << 16) ^ 0x726C7BEE) & (((a58[11] ^ 0xE6) + *(a55 + (a58[11] ^ 0xADLL)) - 14) ^ 0x72FF7FF4) & 0x521E41C3 | ((a58[11] ^ 0xE6) + *(a55 + (a58[11] ^ 0xADLL)) - 14) & 1;
  v105 = *(a54 + (a58[5] ^ 0xCBLL)) << 16;
  v106 = (v105 ^ 0xFF18F3FF) & (v100 ^ 0xFB234954);
  v107 = v105 & 0x230000;
  v108 = (a58[12] ^ 0xFFFFFFFA) + *(a57 + (a58[12] ^ 0x18)) - 110;
  v109 = ((((v108 << 24) ^ 0xC0FFFFFF) & ((*(a54 + (a58[13] ^ 0xABLL)) << 16) ^ 0xC4C50579) | (v108 << 24) & 0x3B000000) ^ 0xE6E3BE1B) & (((~v102 | 0xFFFFFF03) & ((v101 << 8) ^ 0xA85C01BC) | v102 & 0x43) ^ 0x57A36BCA) ^ ((~v102 | 0xFFFFFF03) & ((v101 << 8) ^ 0xA85C01BC) & 0x8040449D | v102 & 1);
  v110 = ((*a58 ^ 0xA4) + *(a57 + (*a58 ^ 0x46)) - 110) ^ 0xA0;
  v111 = ((((v110 >> 5) & 1) << 29) | 0xC41924E7) ^ ((v110 << 24) ^ 0xE1FFFFFF) & ((((*(a56 + (a58[2] ^ 0xACLL)) << 8) ^ 0x484D10C1) & (((a58[3] ^ 0xF0) + *(a55 + (a58[3] ^ 0xBBLL)) - 14) ^ 0xFD6FFFD7) & 0x48B4E8 | ((a58[3] ^ 0xF0) + *(a55 + (a58[3] ^ 0xBBLL)) - 14) & 0x28) ^ 0x2570AC45 ^ ((*(a54 + ((a58[1] - ((2 * a58[1]) & 0xFFC7u) + 227) ^ 0x1CLL)) << 16) ^ 0xFA244B17) & ((((*(a56 + (a58[2] ^ 0xACLL)) << 8) ^ 0x484D10C1) & (((a58[3] ^ 0xF0) + *(a55 + (a58[3] ^ 0xBBLL)) - 14) ^ 0xFD6FFFD7) | ((a58[3] ^ 0xF0) + *(a55 + (a58[3] ^ 0xBBLL)) - 14) & 0x3E) ^ 0xB6B21556));
  *(v68 - 176) = v111;
  v112 = *(a56 + (a58[6] ^ 0x1FLL)) << 8;
  HIDWORD(a6) = (v112 & 0x4A00 | 0x224BA043) ^ (v112 ^ 0xFFFF12FF) & ((v107 | v106) ^ 0xFFD34672);
  v113 = (((a58[8] ^ 0x16) + *(a57 + (a58[8] ^ 0xF4)) - 110) ^ 0x27) << 24;
  LODWORD(a13) = v109;
  v180 = *(a34 + 4 * (BYTE2(v109) ^ 0x92u)) ^ __ROR4__(*(a36 + 4 * (v102 ^ 0x58u)), 18) ^ (*(a32 + 4 * (v108 ^ 0x33u)) + 1079081976) ^ v111 ^ __ROR4__(*(a31 + 4 * (v101 ^ 0x49)), 16) ^ ((BYTE2(v109) ^ 0xAE) + 1146403144);
  v114 = v180 ^ 0xAFD3EB89 ^ HIDWORD(a6);
  LODWORD(v161) = v113 & 0x3000000 ^ 0x3D8F0DB7 ^ (v113 ^ 0xB8FFFFFF) & (v104 ^ 0xBA902BE ^ v103);
  v115 = v114 ^ v161 ^ v109;
  v179 = (*(a32 + 4 * (HIBYTE(v115) ^ 0x7E)) + 1079081976) ^ __ROR4__(*(a36 + 4 * (v115 ^ 0x73u)), 18) ^ *(a34 + 4 * (((v115 ^ 0x26F5ED31) >> 16) ^ 0x7Cu)) ^ __ROR4__(*(a31 + 4 * (((v115 ^ 0xED31) >> 8) ^ 0x45u)), 16) ^ v180 ^ 0xAFD3EB89 ^ ((((v115 ^ 0x26F5ED31) >> 16) ^ 0x40) + 1146403144);
  v178 = v179 ^ 0x784E6504 ^ v161;
  v116 = v178 ^ 0x4EBC0EA3 ^ v115 ^ 0xB8BE276B;
  LODWORD(a57) = v116;
  v117 = *(a34 + 4 * (BYTE2(v116) ^ 0x85u)) ^ __ROR4__(*(a36 + 4 * (v178 ^ 0xA3 ^ v115 ^ 0x6B ^ 0x36u)), 18) ^ __ROR4__(*(a31 + 4 * (BYTE1(v116) ^ 0xCEu)), 16) ^ (*(a32 + 4 * (HIBYTE(v116) ^ 0x2E)) + 1079081976) ^ v179 ^ 0x784E6504 ^ ((BYTE2(v116) ^ 0xB9) + 1146403144) ^ 0x9105FD30;
  LODWORD(a55) = v179 ^ 0x784E6504 ^ v114;
  LODWORD(a54) = v117 ^ a55 ^ 0x545B57E;
  v118 = a54 ^ 0x977EB786 ^ v115 ^ 0xB8BE276B;
  v119 = *(a34 + 4 * (BYTE2(v118) ^ 0xEEu)) ^ __ROR4__(*(a31 + 4 * (BYTE1(v118) ^ 0x83u)), 16) ^ __ROR4__(*(a36 + 4 * (v118 ^ 0x25u)), 18) ^ (*(a32 + 4 * (HIBYTE(v118) ^ 0x58)) + 1079081976) ^ ((BYTE2(v118) ^ 0xD2) + 1146403144) ^ 0x6B65B3B6;
  v120 = v119 ^ a55 ^ 0x545B57E;
  HIDWORD(a53) = a54 ^ 0x977EB786 ^ v178 ^ 0x4EBC0EA3;
  LODWORD(a50) = v120 ^ HIDWORD(a53);
  v121 = v120 ^ HIDWORD(a53) ^ 0xE1871EA ^ v118;
  HIDWORD(a4) = v120 ^ HIDWORD(a53) ^ 0xE1871EA;
  HIDWORD(a49) = v121;
  LODWORD(a56) = v117;
  LODWORD(a48) = v119 ^ v117;
  v122 = (*(a32 + 4 * (HIBYTE(v121) ^ 0xF7)) + 1079081976) ^ *(a34 + 4 * (BYTE2(v121) ^ 0xF3u)) ^ __ROR4__(*(a31 + 4 * (BYTE1(v121) ^ 0xC3u)), 16) ^ __ROR4__(*(a36 + 4 * ((v120 ^ BYTE4(a53)) ^ 0xEA ^ v118 ^ 0x2Au)), 18) ^ v119 ^ v117 ^ ((BYTE2(v121) ^ 0xCF) + 1146403144) ^ 0x54BE01F8;
  HIDWORD(a51) = v120;
  HIDWORD(v177) = v122 ^ v120;
  v123 = v122 ^ v120 ^ 0x187B4A8E;
  LODWORD(a52) = v118;
  v124 = v123 ^ v118;
  LODWORD(a47) = v122;
  HIDWORD(v176) = (*(a32 + 4 * (HIBYTE(v124) ^ 0x52)) + 1079081976) ^ *(a34 + 4 * (BYTE2(v124) ^ 0xD7u)) ^ __ROR4__(*(a31 + 4 * (BYTE1(v124) ^ 0x8Du)), 16) ^ __ROR4__(*(a36 + 4 * (v124 ^ 0x8Eu)), 18) ^ v122 ^ ((BYTE2(v124) ^ 0xEB) + 1146403144);
  LODWORD(v176) = HIDWORD(v176) ^ 0x11049E4B ^ HIDWORD(a4);
  v125 = v176 ^ 0x5E45376B;
  HIDWORD(v175) = v176 ^ 0x5E45376B ^ v124;
  v126 = (*(a32 + 4 * (((v125 ^ v124) >> 24) ^ 0xE2)) + 1079081976) ^ __ROR4__(*(a36 + 4 * (v176 ^ 0x6B ^ v124 ^ 0x14u)), 18) ^ *(a34 + 4 * (((v125 ^ v124) >> 16) ^ 0xFCu)) ^ __ROR4__(*(a31 + 4 * (((v176 ^ 0x376B ^ v124) >> 8) ^ 0xA2u)), 16) ^ HIDWORD(v176) ^ 0x11049E4B ^ ((((v125 ^ v124) >> 16) ^ 0xC0) + 1146403144) ^ 0xD78137B5;
  HIDWORD(a40) = HIDWORD(v176) ^ 0x11049E4B ^ v123;
  LODWORD(a39) = v126 ^ HIDWORD(a40);
  v127 = v126 ^ HIDWORD(a40) ^ 0x8A382D55;
  LODWORD(v177) = v124;
  HIDWORD(v128) = *(a36 + 4 * ((v126 ^ BYTE4(a40)) ^ 0x55 ^ v124 ^ 0xA3u));
  LODWORD(v128) = HIDWORD(v128);
  LODWORD(v175) = v126;
  LODWORD(v174) = (v128 >> 18) ^ __ROR4__(*(a31 + 4 * (((v126 ^ WORD2(a40) ^ 0x2D55 ^ v124) >> 8) ^ 0x67u)), 16) ^ (*(a32 + 4 * (((v127 ^ v124) >> 24) ^ 0xE2)) + 1079081976) ^ *(a34 + 4 * (((v127 ^ v124) >> 16) ^ 0xCu)) ^ v126 ^ ((((v127 ^ v124) >> 16) ^ 0x30) + 1146403144);
  HIDWORD(v174) = v127 ^ v124;
  v129 = v174 ^ 0xAFAF9317 ^ v176 ^ 0x5E45376B;
  v130 = v129 ^ v127 ^ v124 ^ 0x690E4994;
  LODWORD(a35) = v130 ^ 0x20E79B5A;
  v131 = *(a34 + 4 * (((v130 ^ 0x20E79B5A) >> 16) ^ 0x93u)) ^ __ROR4__(*(a31 + 4 * (((v130 ^ 0x9B5A) >> 8) ^ 0x66u)), 16) ^ __ROR4__(*(a36 + 4 * (v130 ^ 0xF1u)), 18) ^ (*(a32 + 4 * (HIBYTE(v130) ^ 0xA9)) + 1079081976) ^ v174 ^ 0xAFAF9317 ^ ((((v130 ^ 0x20E79B5A) >> 16) ^ 0xAF) + 1146403144) ^ 0x4A09DC7F;
  LODWORD(a33) = v174 ^ 0xAFAF9317 ^ v127;
  v132 = a33 ^ 0x376A814F ^ v131;
  v133 = v132 ^ v127 ^ v124 ^ 0x690E4994;
  v134 = *(a31 + 4 * (BYTE1(v133) ^ 0x67u));
  LODWORD(a31) = v133;
  v135 = *(a34 + 4 * (BYTE2(v133) ^ 0xE1u)) ^ __ROR4__(v134, 16) ^ (*(a32 + 4 * (HIBYTE(v133) ^ 0x20)) + 1079081976);
  LODWORD(a34) = v131;
  v136 = v135 ^ __ROR4__(*(a36 + 4 * (a33 ^ 0x4F ^ v131 ^ (v127 ^ v124) ^ 0x94 ^ 0x4Cu)), 18) ^ v131 ^ ((BYTE2(v133) ^ 0xDD) + 1146403144) ^ 0x58D6D3EFu;
  v137 = *(v68 - 216);
  v138 = (v78[(*(v68 - 160) << v162 << v163) & 0xFELL ^ 0xEC] ^ (*(v68 - 160) << v162 << v163)) << 8;
  v139 = v81[(v173 << v162 << v163) & 0xFE ^ 0x44];
  HIDWORD(v128) = v139 ^ 0x45;
  LODWORD(v128) = ~v139 << 24;
  v140 = (((((*(v137 + ((*(v68 - 152) << v163 << v162) & 0xFELL ^ 0xDA)) - 105) << 16) ^ 0x1EC7CD2F) & (v138 ^ 0xFFFF67FF) | v138 & 0x3200) ^ 0x51299B44) & ((v128 >> 31) ^ 0xFFFFFF7F);
  v141 = v81[v165 & 0xFE ^ 0x6BLL];
  v142 = (((*(v137 + (((a29 ^ 0x31u) << v163 << v162) & 0xFE ^ 0x4F)) - 105) << 16) ^ 0xD3212CCA) & (((v141 >> 7) | (2 * v141)) ^ 0xD3FFAF16) | ((v141 >> 7) | (2 * v141)) & 0x35;
  v143 = v81[v166 & 0xFE ^ 0x81];
  v144 = *(v68 - 144) << v163 << v162;
  v145 = ((a30 ^ 0x20) << v163 << v162) & 0xFE;
  v146 = (((v78[v145 ^ 0xA7] ^ v145) << 8) ^ 0xC41661E7) & (v142 ^ 0x14A2D339) ^ v142 & 0x13E92818;
  v147 = (*(v137 + (v170 & 0xFE ^ 0xF2)) - 105) << 16;
  v148 = (((((((v167 ^ 0x4B) + 10) ^ 0x5B ^ v80[v167 & 0xFE ^ 0x65]) << 24) ^ 0x56CD6BC8) & (((v143 >> 7) | (2 * v143)) ^ 0xFFCD6BA2) | ((v143 >> 7) | (2 * v143)) & 0x37) ^ 0x4A21C24D) & (v147 ^ 0xFF64FBFF) ^ (v147 & 0x130000 | 0x48005244);
  v149 = (*(v137 + (v164 & 0xFE ^ 0x4CLL)) - 105) << 16;
  v150 = (((((v171 ^ 0xBC) + 10) ^ v80[v171 ^ 0x92] ^ 0x66666666) << 24) ^ 0xC75AB6BE) & (v149 ^ 0xFF36FEBF) | v149 & 0xA50000;
  v151 = (v150 ^ 0xA004900) & (((v78[(v169 << v163 << v162) & 0xFE ^ 0x77] ^ (v169 << v163 << v162)) << 8) ^ 0x1E53A482);
  v152 = (((v172 ^ 0xC6) + 10) ^ 0x57 ^ v80[v172 & 0xFE ^ 0xE8]) << 24;
  v153 = (v152 ^ 0xE2FFFFFF) & (((v128 >> 31) & 0x94 | v140) ^ 0x92BCDAE6);
  *(v68 - 240) = v80;
  v154 = v146 & 0xC2CB286D ^ 0xAFFB74C5 ^ (((((v144 ^ 0xB8) + 10) ^ v80[v144 & 0xFE ^ 0x96] ^ 0x20) << 24) ^ 0x5F34D792) & (v146 ^ 0x28801714);
  v155 = *(v68 - 168);
  *(v68 - 232) = v78;
  v156 = v148 & 0x29F3D30B ^ 0x2306EDA0 ^ (((v78[v155 & 0xFE ^ 0x67] ^ v155) << 8) ^ 0xD60C7FF4) & (v148 ^ 0x20230410);
  LODWORD(v145) = v81[(v168 << v162 << v163) & 0xFE ^ 0xB7];
  LODWORD(v145) = (v150 & 0xE1AC0400 ^ 0x710FFA0B ^ v151) & (((v145 >> 7) | (2 * v145)) ^ 0xFFFFFF3E) ^ ((v145 >> 7) | (2 * v145)) & 0x76;
  v157 = v152 & 0x22222222 ^ 0x52C621B5 ^ v153;
  v158 = *(v68 - 132);
  LODWORD(v171) = (((v158 ^ 0x9C882AB7) - 1169598414) ^ ((v158 ^ 0x22DBEDFD) + 68853628) ^ ((v158 ^ 0xB8D21010) - 1642896745)) + 593415490;
  *(v68 - 132) = (((v158 ^ 0x448516A3) + 1648649254) ^ ((v158 ^ 0x80571E0C) - 1500091253) ^ ((v158 ^ 0xC253DFF5) - 460149388)) - 1410432482;
  LODWORD(v170) = v145 ^ 0xFB673F44;
  LODWORD(v169) = v145 ^ v161;
  LODWORD(v168) = v123 ^ HIDWORD(a4);
  LODWORD(v167) = v176 ^ 0x5E45376B ^ v127;
  LODWORD(a36) = v129;
  LODWORD(v145) = v129 ^ 0x4B568540 ^ v132;
  v159 = *(*(v68 - 184) + 8 * SHIDWORD(a19));
  LODWORD(v173) = v156;
  LODWORD(v166) = v156 ^ HIDWORD(a6);
  LODWORD(v165) = *(v68 - 176) ^ v154;
  LODWORD(v172) = v157;
  LODWORD(v164) = a13 ^ v157;
  LODWORD(a32) = v132;
  HIDWORD(a19) = v145;
  LODWORD(v163) = v136 ^ v132;
  LODWORD(v162) = v136 ^ v132 ^ v145;
  *(v68 - 176) = 767587206;
  *(v68 - 168) = -1378798946;
  *(v68 - 160) = -752193643;
  return v159(v156, v154, v71, v132, v146, v150, v159, v136, a4, v161, a6, a7, a8, a9, a10, a11, a12, a13, v162, v163, v164, v165, v166, a19, v167, v168, v169, v170, v171, v172, v173, __PAIR64__(v136, v154), a31, a32, a33, a34, a35, a36, v174, a39, a40, v175, v176, v177, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
}

uint64_t sub_1001FCADC(double a1, double a2, double a3, __n128 a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v22 - 120) = *(a20 + 8 * a6);
  v23.n128_u64[0] = 0xE2E2E2E2E2E2E2E2;
  v23.n128_u64[1] = 0xE2E2E2E2E2E2E2E2;
  v24.n128_u64[0] = 0x7171717171717171;
  v24.n128_u64[1] = 0x7171717171717171;
  v25.n128_u64[0] = 0x6E6E6E6E6E6E6E6ELL;
  v25.n128_u64[1] = 0x6E6E6E6E6E6E6E6ELL;
  v26.n128_u64[0] = (v20 + 13) & 0xF;
  v26.n128_u64[1] = (v20 + 12) & 0xF;
  v27.n128_u64[0] = (v20 + 11) & 0xF;
  v27.n128_u64[1] = (v20 + 10) & 0xF;
  v28.n128_u64[0] = (v20 + 9) & 0xF;
  v28.n128_u64[1] = v21 & 0xF ^ 0xDLL;
  return (*(v22 - 120))(v23, v24, v25, a4, v26, v27, v28);
}

uint64_t sub_1001FCE24(__n128 a1)
{
  v5 = v2 ^ 0x5DBF0;
  v6 = (v2 ^ 0x5DBF0) - 1;
  v7.n128_u64[0] = (v1 + 13) & 0xF;
  v7.n128_u64[1] = (v1 + 12) & 0xF;
  v8.n128_u64[0] = (v1 + 11) & 0xF;
  v8.n128_u64[1] = (v1 + 10) & 0xF;
  v9.n128_u64[0] = ((v6 ^ 0xE) + v1) & 0xF;
  v9.n128_u64[1] = v1 & 0xF ^ 8;
  v13.val[0].i64[0] = (v1 + 7) & 0xF;
  v13.val[0].i64[1] = (v1 + 6) & 0xF;
  v13.val[1].i64[0] = (v1 + 5) & 0xF;
  v13.val[1].i64[1] = (v1 + 4) & 0xF;
  v13.val[2].i64[0] = (v1 + 3) & 0xF;
  v13.val[2].i64[1] = (v1 + 2) & 0xF;
  v13.val[3].i64[0] = (v1 + 1) & 0xF;
  v13.val[3].i64[1] = v1 & 0xF;
  v10.n128_u64[0] = 0xA9A9A9A9A9A9A9A9;
  v10.n128_u64[1] = 0xA9A9A9A9A9A9A9A9;
  v11.n128_u64[0] = 0xA8A8A8A8A8A8A8A8;
  v11.n128_u64[1] = 0xA8A8A8A8A8A8A8A8;
  return (*(*(v4 - 208) + 8 * v5))((v6 + 4943), v1 + v3 - 16, (v1 & 0x10) - 16, (v6 + 4943) ^ 0x5A49, a1, v7, v8, v9, xmmword_100BC76B0, vqtbl4q_s8(v13, xmmword_100BC76B0), v10, v11);
}