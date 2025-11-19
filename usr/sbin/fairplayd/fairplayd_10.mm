uint64_t sub_100316848@<X0>(uint64_t a1@<X8>)
{
  LODWORD(STACK[0xEC0]) = 238 * (v2 ^ 0xAD6C);
  STACK[0xEB0] = a1 + 36;
  v6 = &STACK[0x10000] + 3800;
  v7 = 2 * v6;
  STACK[0x10ED8] = v1;
  LODWORD(STACK[0x10EE0]) = v2 - 353670337 * ((((2 * v6) | 0xFA70E06) - v6 + 2016180477) ^ 0x33F27F3E) + 1788;
  v8 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v2 ^ 0x6625)))(&STACK[0x10ED8]);
  v9 = STACK[0x7690];
  STACK[0x4F48] = v3 + STACK[0x7690];
  STACK[0x7690] = v9 + 144;
  LODWORD(STACK[0x232C]) = 1497668682;
  STACK[0x2280] = 0;
  LODWORD(STACK[0x46FC]) = -371865839;
  LODWORD(STACK[0x78F4]) = -371865839;
  LODWORD(STACK[0x494C]) = -371865839;
  LODWORD(STACK[0x288C]) = -371865839;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  LODWORD(STACK[0x10ED8]) = (v2 - 11468) ^ (1603510583 * (&STACK[0x10ED8] ^ 0x97DB32AB));
  (*(v8 + 8 * (v2 ^ 0x6686)))(&STACK[0x10ED8]);
  if (LODWORD(STACK[0x10EDC]) >> 1 == 1961550724)
  {
    v10 = 940;
  }

  else
  {
    v10 = 1004;
  }

  LODWORD(STACK[0xEA0]) = v10;
  v11 = STACK[0x6588];
  LODWORD(STACK[0xED0]) = STACK[0x6588];
  if (v11 == ((2 * v2) ^ 0x12FAE) - 371895530)
  {
    v12 = 196608;
  }

  else
  {
    v12 = 0x20000;
  }

  *v1 = v12;
  v13 = STACK[0xEB0];
  *(v1 + 8) = STACK[0x6440];
  *(v1 + 16) = v13;
  LODWORD(STACK[0x10ED8]) = v2 + 634647737 * ((((&STACK[0x10000] + 3800) ^ 0xE977572E) - 2 * (((&STACK[0x10000] + 3800) ^ 0xE977572E) & 0x618FDFC0) - 510664768) ^ 0x656EA712) - 212221367;
  (*(v8 + 8 * (v2 ^ 0x66E9)))(&STACK[0x10ED8]);
  v14 = STACK[0x81CC];
  *(v1 + 24) = -1562523887;
  *(v1 + 28) = v14;
  LODWORD(STACK[0x10ED8]) = (v2 - 11468) ^ (1603510583 * (((v7 | 0xC16F0484) - (&STACK[0x10000] + 3800) + 524844478) ^ 0x776CB0E9));
  v15 = (*(v8 + 8 * (v2 ^ 0x6686)))(&STACK[0x10ED8]);
  v16 = STACK[0xEC0];
  v17 = STACK[0x10EDC];
  STACK[0x7050] = v1 + 0x465B8135CE076A42;
  *(v1 + 100) = v17;
  v18 = STACK[0x6508] == 0x217E172EFA1E81CLL;
  LOBYTE(STACK[0x8F9B]) = v18;
  return (*(v8 + 8 * ((v18 * (v16 - 44493)) ^ v2)))(v15);
}

uint64_t sub_100316B84@<X0>(unsigned int a1@<W8>)
{
  STACK[0x5658] = *(STACK[0x31C0] + 40);
  LODWORD(STACK[0x2564]) = 1671305786;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100316BC0()
{
  STACK[0x7D78] = 0;
  v1 = STACK[0xF18];
  STACK[0x3058] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x19DF ^ (v0 + 11889))))();
}

uint64_t sub_100316CE8()
{
  STACK[0x5C50] = (((v1 ^ 0xAA351C0593F7D63DLL) + 0x55CAE3FA6C0829C3) ^ ((v1 ^ 0x134EC4C794901F67) - 0x134EC4C794901F67) ^ ((v1 ^ ((v0 + 27315) | 0x93B) ^ 0xB97BD8C2EEB28570) + 0x4684273D114DF1B5)) + 0x3AE1413AF7325DD3;
  LODWORD(STACK[0x1374]) = -2133072774;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100316F2C(int a1, double a2, __n128 a3, __n128 a4)
{
  a3.n128_u16[0] = -26729;
  a3.n128_u8[2] = -105;
  a3.n128_u8[3] = -105;
  a3.n128_u8[4] = -105;
  a3.n128_u8[5] = -105;
  a3.n128_u8[6] = -105;
  a3.n128_u8[7] = -105;
  a4.n128_u16[0] = 24415;
  a4.n128_u8[2] = 95;
  a4.n128_u8[3] = 95;
  a4.n128_u8[4] = 95;
  a4.n128_u8[5] = 95;
  a4.n128_u8[6] = 95;
  a4.n128_u8[7] = 95;
  return (*(v4 + 8 * a1))(xmmword_100F523B0, a3, a4);
}

uint64_t sub_100316FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22)
{
  v26 = 1022166737 * (((&a18 | 0x7501F00E) - (&a18 | 0x8AFE0FF1) - 1963061263) ^ 0xCF11119C);
  v27 = *(v24 + 8 * (v25 ^ 0x871D)) - 912651819;
  a18 = v26 ^ 0x611E7C6C;
  a19 = v27;
  a20 = v23;
  a21 = v23;
  a22 = v25 - v26 - 12675;
  v28 = (*(v22 + 8 * (v25 ^ 0x40F5)))(&a18);
  return (*(v22 + 8 * (v25 - 27382)))(v28);
}

uint64_t sub_100317054@<X0>(unint64_t a1@<X8>)
{
  v4 = STACK[0x6890] + v1;
  STACK[0x8C90] = a1;
  STACK[0x8C18] = v4;
  return (*(STACK[0xF18] + 8 * (((v3 == ((((v2 & 0x22823CFF) - 5530) | 0x9004) ^ 0xE9D55035)) * ((((v2 & 0x22823CFF) - 5048) | 0x8229) ^ 0xBE6F)) ^ v2 & 0x22823CFF)))();
}

uint64_t sub_1003170D0()
{
  v1 = STACK[0xF10] - 30235;
  *STACK[0xB588] = v0 ^ 0x981390CC6385557;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100317118@<X0>(_BYTE *a1@<X8>)
{
  *(v1 + 72) = 32;
  *(v1 + 39) = a1[55];
  *(v1 + 38) = a1[54];
  *(v1 + 37) = a1[53];
  *(v1 + 36) = a1[52];
  *(v1 + 35) = a1[51];
  *(v1 + 34) = a1[50];
  *(v1 + 33) = a1[49];
  *(v1 + 32) = a1[48];
  *(v1 + 31) = a1[47];
  *(v1 + 30) = a1[46];
  *(v1 + 29) = a1[45];
  *(v1 + 28) = a1[44];
  *(v1 + 27) = a1[43];
  *(v1 + 26) = a1[42];
  *(v1 + 25) = a1[41];
  *(v1 + 24) = a1[40];
  *(v1 + 23) = a1[39];
  *(v1 + 22) = a1[38];
  *(v1 + 21) = a1[37];
  *(v1 + 20) = a1[36];
  *(v1 + 19) = a1[35];
  *(v1 + 18) = a1[34];
  *(v1 + 17) = a1[33];
  *(v1 + 16) = a1[32];
  *(v1 + 15) = a1[31];
  *(v1 + 14) = a1[30];
  *(v1 + 13) = a1[29];
  *(v1 + 12) = a1[28];
  *(v1 + 11) = a1[27];
  *(v1 + 10) = a1[26];
  *(v1 + 9) = a1[25];
  *(v1 + 8) = a1[24];
  return (*(STACK[0xF18] + 8 * (((STACK[0x5A28] == 0) * ((v2 ^ 0xCEA5) + v2 - 5479 - 47939)) ^ v2)))();
}

uint64_t sub_100317288@<X0>(uint64_t a1@<X8>)
{
  v5 = v4 < 0x488AC31F;
  *(v3 + v2) = 0;
  if (v5 == (a1 ^ 0x162BuLL) + v2 > 0xFFFFFFFFB7753CE0)
  {
    v5 = v2 + 1217053472 < v4;
  }

  return (*(STACK[0xF18] + 8 * ((496 * v5) ^ v1)))();
}

uint64_t sub_10031730C()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 21446 + ((v0 + 575) | 0x6100))))();
}

uint64_t sub_100317350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, unsigned int a13, int a14)
{
  v18 = v14 + 34156;
  a12 = -1022166737 * (((&a11 | 0xD896DC9A) - &a11 + (&a11 & 0x27692360)) ^ 0x62863D08) + (((v14 + 39138308) | 0x1082490B) ^ 0xC7884E00) * (*(a1 + 20) - v16) - 952481442;
  a13 = 1022166737 * (((&a11 | 0xD896DC9A) - &a11 + (&a11 & 0x27692360)) ^ 0x62863D08) + v14 + 34156 - 2067;
  a11 = v17;
  (*(v15 + 8 * ((v14 + 34156) ^ 0x4F93)))(&a11);
  return (*(v15 + 8 * (((a14 == 1497668682) * (185 * (v18 ^ 0x8548) - 6460)) ^ v18)))(a1);
}

uint64_t sub_10031749C()
{
  STACK[0x5FB0] = STACK[0x8FF8] + 8;
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 21547 + ((v0 + 23394) | 0x778))))();
}

uint64_t sub_1003174F0()
{
  *(v1 + 480) = 0;
  *(v1 + 488) = 0;
  *(v1 + 456) = 1;
  *(v1 + 464) = v0;
  *(v1 + 472) = 0;
  return (*(STACK[0xF18] + 8 * v2))(v2 + 390);
}

uint64_t sub_100317640(unint64_t a1)
{
  STACK[0x10ED8] = a1;
  LODWORD(STACK[0x10EE0]) = v1 - 1112314453 * ((((2 * (&STACK[0x10000] + 3800)) | 0xF44C1648) - (&STACK[0x10000] + 3800) + 98170076) ^ 0x157021FD) - 7458;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 27505)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * ((212 * (LODWORD(STACK[0x10EE4]) != ((((v1 - 1568456989) & 0x5D7CEBFB) + 680744377) ^ (v1 + 10975)))) ^ v1)))(v3);
}

uint64_t sub_100317B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36)
{
  v39 = 1112314453 * ((2 * ((v38 - 168) & 0x790FA828) - (v38 - 168) - 2031069225) ^ 0x69A67D0E);
  *(v38 - 168) = v39 + v37 - 40254;
  *(v38 - 152) = v39 + a36;
  *(v38 - 160) = a2;
  v40 = (*(v36 + 8 * (v37 ^ 0x8BE)))(v38 - 168);
  return (*(v36 + 8 * ((61 * ((((STACK[0x384] & 0x3F ^ 0x1DBF1D08) + 1023562638) ^ ((STACK[0x384] & 0x3F ^ 0x2336B536) + 59505588) ^ ((STACK[0x384] & 0x3F ^ 0x3E89A83Eu) + 506783420)) - 549277378 > 0xFFFFFFBF)) ^ v37)))(v40);
}

uint64_t sub_100317CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x2688] = a8;
  STACK[0x1488] = &STACK[0x3AF8];
  STACK[0x5D28] = &STACK[0x5504];
  LODWORD(STACK[0x4704]) = 376224545;
  return (*(STACK[0xF18] + 8 * v8))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_100317DA0()
{
  *STACK[0x9860] = 0;
  LODWORD(STACK[0x7340]) = (((v0 - 12501) ^ 0xB1FB) - 9288) & v1 ^ 0x5286000B;
  return (*(STACK[0xF18] + 8 * ((30 * (*(STACK[0x2E18] + 4) < 0x11uLL)) ^ v0)))();
}

uint64_t sub_100317E6C@<X0>(int a1@<W8>)
{
  v3 = STACK[0xB558];
  *v3 |= 0x10u;
  v3[6] = ((v2 + 29821) ^ 0xE109D5C7) + a1;
  v3[7] = (((v1 ^ 0x932725FA) + 1826150918) ^ ((v1 ^ 0xDED84801) + 556251135) ^ ((v1 ^ 0xA42AAAEA) + 1540707606)) - 371865847;
  return (*(STACK[0xF18] + 8 * v2))(785457894);
}

uint64_t sub_100317FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22, uint64_t a23)
{
  v27 = 1603510583 * ((~&a18 & 0xDFD90B38 | &a18 & 0x2026F4C0) ^ 0x48023993);
  a23 = v25;
  a20 = *(v26 + 8 * (v24 ^ 0x2A08)) - 1880491006;
  a18 = v25;
  a21 = v24 - v27 + 34484;
  a22 = v27 + 516102103;
  v28 = (*(v23 + 8 * (v24 + 43364)))(&a18);
  return (*(v23 + 8 * v24))(v28);
}

uint64_t sub_100318084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, uint64_t a34, int a35, uint64_t a36, uint64_t a37)
{
  v41 = 11 * a33 + 13 * a35 + LODWORD(STACK[0x2F4]) - 797984225;
  v42 = STACK[0x308];
  v43 = v37 - LODWORD(STACK[0x300]) + LODWORD(STACK[0x3E4]) + (LODWORD(STACK[0x2F8]) ^ ((LODWORD(STACK[0x2F8]) ^ 0x7FDDD40) - 678271965) ^ ((LODWORD(STACK[0x2F8]) ^ 0x7EBFFBF7) - 1362083178) ^ ((LODWORD(STACK[0x2F8]) ^ 0xC276B6D9) + (v38 ^ 0x1219168C)) ^ (v41 - ((2 * v41) & 0xFD3A65D8) + 2124231404) ^ 0x510D7471 ^ (((92 * (v38 ^ 0x190D)) ^ LODWORD(STACK[0x2F8]) ^ 0x94A4C31F) + 1154183058));
  v44 = (v43 ^ 0xDF4FBD4A) & (2 * (v43 & v39)) ^ v43 & v39;
  v45 = ((2 * (v43 ^ 0x5F00FF8A)) ^ 0x1EDE8DD2) & (v43 ^ 0x5F00FF8A) ^ (2 * (v43 ^ 0x5F00FF8A)) & 0x8F6F46E8;
  v46 = ((4 * (v45 ^ 0x81214229)) & 0xF6F46E0 ^ 0xD2D02A0 ^ ((4 * (v45 ^ 0x81214229)) ^ 0x3DBD1BA0) & (v45 ^ 0x81214229)) & (16 * (v45 & (4 * v44) ^ v44)) ^ v45 & (4 * v44) ^ v44;
  v47 = *(v40 + 4 * a31);
  v48 = ((v47 ^ 0xAEE15D61) + 2123293700) ^ v47 ^ ((v47 ^ 0xE69052D3) + 922741682) ^ ((v47 ^ 0xCA1CB6D8) + 443748283) ^ ((v47 ^ 0xADFDFFF7) + 2106738326) ^ v43 ^ (2 * v46);
  v49 = ((v48 ^ 0x5769587F) - 772335242) ^ ((v48 ^ 0x620A5D2B) - 460055518) ^ ((v48 ^ 0xC64EFAAA) + 1087421345);
  v50 = LODWORD(STACK[0x310]);
  v51 = LODWORD(STACK[0x30C]) ^ 0x846B2829;
  v52 = (2 * (STACK[0x30C] & v39 ^ 0x5404914A)) & 0x41042 ^ STACK[0x30C] & v39 ^ 0x5404914A ^ ((2 * (STACK[0x30C] & v39 ^ 0x5404914A)) ^ 0xA8092294) & v51;
  LOBYTE(v51) = (2 * v51) & 0x4A ^ 0x4A ^ ((2 * v51) ^ 0x94) & v51;
  LOBYTE(v52) = (4 * v52) & 0x48 ^ v52 ^ ((4 * v52) ^ 0x28) & v51;
  v53 = (a35 + v39 + LODWORD(STACK[0x30C])) % a8;
  v54 = a20 + (a33 + 1) + *(v40 + 4 * a29) - *(v40 + 4 * a28) + 3 * v53 - 1974714101 + v49;
  v55 = (v42 ^ 0xDC4FBC5A) & (2 * (v42 & v39)) ^ v42 & v39;
  v56 = ((2 * (v42 ^ 0xDC43BE9A)) ^ 0x18580FF2) & (v42 ^ 0xDC43BE9A) ^ (2 * (v42 ^ 0xDC43BE9A)) & 0xC2C07F8;
  v57 = (LODWORD(STACK[0x30C]) ^ (2 * (((4 * v51) ^ 0x20) & v51 & ((16 * v52) ^ 0x20) ^ v52))) & 0x7F ^ 0x67u;
  return (*(a37 + 8 * ((18863 * (((v50 - LODWORD(STACK[0x314]) + LODWORD(STACK[0x31C]) + v39 + (LODWORD(STACK[0x308]) ^ (2 * (((4 * (v56 ^ 0x4240009)) & 0xC2C07F0 ^ 0x2007E0 ^ ((4 * (v56 ^ 0x4240009)) ^ 0x30B01FE0) & (v56 ^ 0x4240009)) & (16 * ((v56 ^ 0x80790) & (4 * v55) ^ v55)) ^ (v56 ^ 0x80790) & (4 * v55) ^ v55)) ^ 0xD36CA57B ^ (LODWORD(STACK[0x2F4]) + LODWORD(STACK[0x2F8]) + 7 * v57 + 1830014532 + v54 - ((2 * (LODWORD(STACK[0x2F4]) + LODWORD(STACK[0x2F8]) + 7 * v57 + 1830014532 + v54)) & 0x16A63830) + 189996056))) & 1) == 0)) ^ v38)))(v50, v54, LODWORD(STACK[0x31C]), 189996056, &STACK[0x2F0], v57, v53, a20, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_1003188A0()
{
  v1 = STACK[0xF18];
  STACK[0x98C0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 8674)))();
}

uint64_t sub_100318A1C(uint64_t a1, __n128 a2, uint64_t a3, int a4)
{
  v6.n128_u64[0] = (v4 + 13) & 0xF;
  v6.n128_u64[1] = (v4 + 12) & 0xF;
  v7.n128_u64[0] = (v4 + 11) & 0xF;
  v7.n128_u64[1] = (v4 + 10) & 0xF;
  v8.n128_u64[0] = (v4 - 66 + a4 + 93) & 0xF;
  v8.n128_u64[1] = v4 & 0xF ^ 8;
  v11.val[0].i64[0] = (v4 + 7) & 0xF;
  v11.val[0].i64[1] = (v4 + 6) & 0xF;
  v11.val[1].i64[0] = (v4 + 5) & 0xF;
  v11.val[1].i64[1] = (v4 + 4) & 0xF;
  v11.val[2].i64[0] = (v4 + 3) & 0xF;
  v11.val[2].i64[1] = (v4 + 2) & 0xF;
  v11.val[3].i64[0] = (v4 + 1) & 0xF;
  v11.val[3].i64[1] = v4 & 0xF;
  v9.n128_u64[0] = 0x2F2F2F2F2F2F2F2FLL;
  v9.n128_u64[1] = 0x2F2F2F2F2F2F2F2FLL;
  return (*(v5 + 8 * (a4 - 10915)))(a1, (a4 - 10915), (a4 - 595318783) & 0x237BF3F2, (v4 + 14) & 0xF, (a4 - 595318783) & 0x237BF3F2 ^ 0x12CAu, a2, v6, v7, v8, xmmword_100BC76B0, vqtbl4q_s8(v11, xmmword_100BC76B0), v9);
}

uint64_t sub_100318B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  LODWORD(v28) = ((v20 + 33773) ^ 0x8D87) + v18;
  HIDWORD(v28) = v18 + 56771464;
  LODWORD(v27) = v21 - 10923;
  HIDWORD(v27) = 13 * (v21 ^ 0x87F4);
  HIDWORD(v26) = HIDWORD(v27) + 986869063;
  HIDWORD(v25) = v21 - 36241;
  LODWORD(v26) = v21 - 36243;
  LODWORD(v25) = v21 ^ 0x726C;
  HIDWORD(v24) = v21 ^ 0x8E8C;
  LODWORD(v24) = v21 ^ 0x9C81;
  HIDWORD(v23) = (v21 - 36243) ^ 0x8DFC;
  HIDWORD(v29) = v21 - 31144;
  LODWORD(v23) = (v21 - 36235) | 0xA821;
  LODWORD(v29) = v23 + 1233762611;
  return (*(v19 + 8 * (v20 ^ 0x5631)))(a1, a2, 107, a4, (v21 - 467847246), (v21 - 467847246) ^ 0xE41DD165, (v21 - 28763), 2381889024, v23, v24, v25, v26, v27, v28, v29, a16, a17, a18);
}

uint64_t sub_100318CE0()
{
  v0 = (STACK[0xF10] + 1259197636) & 0xB4F1B6EF;
  v1 = STACK[0xF10] - 33721;
  *(STACK[0x1E30] + 56) = LODWORD(STACK[0x9894]) ^ 0x981390CC6385557;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 1414) ^ v1)))();
}

uint64_t sub_100318DD0()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 30357 + ((v0 - 1013528907) & 0x3C69AF7E))))();
}

uint64_t sub_100318E24@<X0>(unint64_t a1@<X2>, int a2@<W8>)
{
  v3 = STACK[0x94F0];
  v4 = STACK[0x6460];
  STACK[0x6DF8] = STACK[0x5308];
  LODWORD(STACK[0x41E4]) = STACK[0xB740];
  STACK[0x71A0] = a1;
  LODWORD(STACK[0x7A74]) = (v2 ^ 0xEBBD5BFB) + ((2 * v2) & 0xFFFFFFF7) + 1456464712 + ((a2 - 3643) | 0x1298);
  STACK[0x64A8] = v3;
  STACK[0x7A68] = v4;
  LODWORD(STACK[0x3430]) = -1083970099;
  return (*(STACK[0xF18] + 8 * a2))(&off_1010A0B50);
}

uint64_t sub_100318EC8()
{
  v1 = STACK[0x3D78];
  v3 = *(STACK[0x3D78] + 8);
  v2 = (STACK[0x3D78] + 8);
  STACK[0x4080] = v2;
  LODWORD(STACK[0x10ED8]) = (v0 + 703887377) ^ (634647737 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x27BEFFD0) + 666828759) ^ 0x4A28D02B));
  STACK[0x10EE0] = v3;
  v4 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 12934)))(&STACK[0x10ED8]);
  v5 = STACK[0x2E40];
  *(v5 + 48) = v1[20];
  *(v5 + 120) = v1[64];
  *(v5 + 72) = v1[15];
  *(v5 + 80) = v1[14];
  *(v5 + 88) = v1[13];
  *(v5 + 96) = v1[12];
  v6 = v1[16];
  v1 += 16;
  STACK[0x15D0] = v1;
  *(v5 + 104) = v6;
  *(v5 + 112) = v1[1];
  *(v5 + 132) = -338311407;
  *(v5 + 144) = 0;
  v7 = *v2;
  LODWORD(STACK[0x10ED8]) = v0 - 193924789 * (((&STACK[0x10ED8] | 0x9A00C124) - (&STACK[0x10ED8] | 0x65FF3EDB) + 1711226587) ^ 0x2CBBF342) + 60346163;
  STACK[0x10EE0] = v7;
  (*(v4 + 8 * (v0 ^ 0x5335)))(&STACK[0x10ED8]);
  v8 = STACK[0x435C];
  *(v5 + 128) = STACK[0x435C];
  if ((v8 & 1) == (v0 ^ 0x983C))
  {
    v9 = 1;
  }

  else
  {
    v9 = 4;
  }

  *(v5 + 136) = v9;
  *(v5 + 140) = 1;
  *(v5 + 196) = 704879236;
  STACK[0x10EE0] = *v2;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762664621) ^ (906386353 * (&STACK[0x10ED8] ^ 0x3101CD24));
  v10 = (*(v4 + 8 * (v0 ^ 0x5285)))(&STACK[0x10ED8]);
  v11 = STACK[0x7690];
  v12 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7008] = v12;
  STACK[0x7690] = v11 + 416;
  LODWORD(STACK[0x4E54]) = -371865839;
  STACK[0x4788] = v5;
  STACK[0x2830] = v12;
  LODWORD(STACK[0x6384]) = 1641441297;
  return (*(v4 + 8 * v0))(v10);
}

uint64_t sub_100319174()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x6EF6u)))(128);
  STACK[0x1258] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 + 1054595968) & 0x4123EF39) - 56757 + 103 * (v0 ^ 0xA57D))) ^ v0)))();
}

uint64_t sub_100319238@<X0>(int a1@<W8>)
{
  v2 = v1 + 233;
  v3 = (((LODWORD(STACK[0x18F0]) ^ 0xE3FB61B4) + 470064716) ^ ((LODWORD(STACK[0x18F0]) ^ 0x1F085ED9) - 520642265) ^ (((4 * (((v1 - 11000) | 0x8B19) ^ 0x8B66)) ^ 0xEAD906F0) + (LODWORD(STACK[0x18F0]) ^ 0x1526F87C))) + 682783150;
  v4 = ((a1 + 1054648997) < 0x3EDCAA9D) ^ (v3 < 0x3EDCAA9D);
  v5 = a1 + 1054648997 > v3;
  if (v4)
  {
    v5 = (a1 + 1054648997) < 0x3EDCAA9D;
  }

  if (v5)
  {
    v6 = 371891407;
  }

  else
  {
    v6 = STACK[0xAB24];
  }

  LODWORD(STACK[0xAB40]) = v6;
  return (*(STACK[0xF18] + 8 * ((4 * (v6 == -371865839)) | (32 * (v6 == -371865839)) | v2)))();
}

uint64_t sub_10031933C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0xF10] - 34232;
  LODWORD(STACK[0x9FC4]) = v4;
  v6 = *(STACK[0x80C8] + 32) + 300379807;
  v7 = (v6 ^ 0xEF56105B) & (2 * (v6 & 0xEE18915C)) ^ v6 & 0xEE18915C;
  v8 = ((2 * (v6 ^ 0x7B661253)) ^ 0x2AFD061E) & (v6 ^ 0x7B661253) ^ (2 * (v6 ^ 0x7B661253)) & 0x957E830E;
  v9 = v8 ^ 0x95028101;
  v10 = (v8 ^ 0x640200) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0x55FA0C3C) & v9 ^ (4 * v9) & 0x957E830C;
  v12 = (v11 ^ 0x157A0000) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x80048303)) ^ 0x57E830F0) & (v11 ^ 0x80048303) ^ (16 * (v11 ^ 0x80048303)) & 0x957E8300;
  v14 = v12 ^ 0x957E830F ^ (v13 ^ 0x15680000) & (v12 << 8);
  v15 = v6 ^ (2 * ((v14 << 16) & 0x157E0000 ^ v14 ^ ((v14 << 16) ^ 0x30F0000) & (((v13 ^ 0x8016830F) << 8) & 0x157E0000 ^ 0x17C0000 ^ (((v13 ^ 0x8016830F) << 8) ^ 0x7E830000) & (v13 ^ 0x8016830F))));
  LODWORD(STACK[0x9FD0]) = v15 ^ 0x2EDA0789;
  v16 = 0x1A % (v15 ^ 0xC6F99742) - ((2 * (0x1A % (v15 ^ 0xC6F99742))) & 0x1A) - 578816467;
  return (*(STACK[0xF18] + 8 * (v5 ^ 0x192C)))(a1, a2, a3, a4, (((v16 ^ 0xE38721C8) + 477683256) ^ ((v16 ^ 0x57167CB0) - 1461091504) ^ ((v16 ^ 0x69EEAB55) - 1777249109)) + 499026040);
}

uint64_t sub_100319560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, unsigned int a41)
{
  v45 = *(&a29 + v42 + 72);
  v46 = (((v41 + 4469) ^ 0xFEFACD97) & (2 * v42)) + (v42 ^ 0xFF7D7BBD);
  *(v43 + v46 + 8553539) = (HIBYTE(v45) ^ 0x1D) - ((2 * (HIBYTE(v45) ^ 0x1D)) & 0xBF) + 95;
  *(v43 + v46 + 8553540) = (BYTE2(v45) ^ 0x7C) - ((2 * (BYTE2(v45) ^ 0x7C)) & 0xBF) + 95;
  *(v43 + v46 + 8553541) = (BYTE1(v45) ^ 0x86) - ((2 * (BYTE1(v45) ^ 0x86)) & 0xBF) + 95;
  *(v43 + v46 + 8553542) = v45 ^ 0x23;
  return (*(v44 + 8 * ((v42 + 4 >= a41) | (4 * (v42 + 4 >= a41)) | v41)))();
}

uint64_t sub_100319698(int a1)
{
  LODWORD(STACK[0x3F5C]) = a1;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x9D0A ^ ((v1 + 29765) | 0x214))))();
}

uint64_t sub_1003197B8()
{
  LODWORD(STACK[0x10ED8]) = (v0 - 1762673721) ^ (906386353 * ((&STACK[0x10000] + 3800) ^ 0x3101CD24));
  STACK[0x10EE0] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 3825)))(&STACK[0x10ED8]);
  v4 = *STACK[0x970] == ((v0 - 18108) ^ 0x750C) && *STACK[0x940] != 0;
  return (*(v1 + 8 * ((v4 * (((v0 - 32392) | 0x18) - 15677)) ^ v0)))(v2);
}

uint64_t sub_1003199AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16)
{
  v16 = a14 < 0x63B0E2BC;
  if (v16 == (a6 + 45665071) < 0x63B0E2BC)
  {
    v16 = a6 + 45665071 < a14;
  }

  return (*(a16 + 8 * (a8 ^ (44608 * v16))))(a1, a2, a6 + 45665071 < a14);
}

uint64_t sub_100319B18@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W8>)
{
  v9 = v6 - 1;
  *(a4 + v9) = *(a3 + v9) ^ (v5 | a2) ^ a1;
  return (*(v8 + 8 * (((v9 == 0) * v7) ^ a5)))();
}

uint64_t sub_100319B4C(unint64_t a1)
{
  STACK[0x10EE0] = a1;
  LODWORD(STACK[0x10ED8]) = v1 - 353670337 * ((~(&STACK[0x10000] + 3800) & 0xAE52E160 | (&STACK[0x10000] + 3800) & 0x51AD1E98) ^ 0x1A73195D) + 7791;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xDB7B)))(&STACK[0x10ED8]);
  STACK[0x6260] = *(v2 + 8 * v1);
  return (*(v2 + 57464))(v3);
}

uint64_t sub_100319BF8@<X0>(_DWORD *a1@<X8>)
{
  v2 = (((*a1 ^ ((v1 ^ 0x50A8) + 6899444) & 0xFF96AF7F ^ 0xA7258CC7) + 1490745348) ^ ((*a1 ^ 0x1D345D06) - 489970950) ^ ((((((v1 ^ 0x50A8) - 2021362033) & 0x787AF7BB) + 1405393625) ^ *a1) - 1405394411)) - 371865839;
  if (STACK[0xA9B8])
  {
    v3 = LODWORD(STACK[0xA9C4]) == -371865839;
  }

  else
  {
    v3 = 1;
  }

  v5 = !v3 && v2 > 7;
  return (*(STACK[0xF18] + 8 * ((13 * v5) ^ v1 ^ 0x50A8)))();
}

uint64_t sub_100319D1C()
{
  v1 = STACK[0xF10] - 17564;
  LODWORD(STACK[0x3048]) = ((LODWORD(STACK[0x9B38]) ^ 0x4B98F7D0) + 1517070939) ^ LODWORD(STACK[0x9B38]) ^ ((LODWORD(STACK[0x9B38]) ^ 0x72DC8614) + 1663622047) ^ (STACK[0xF10] + (LODWORD(STACK[0x9B38]) ^ 0x28F40E7A) + 956287158) ^ (((STACK[0xF10] - 24050) ^ 0xEE4FAD0B) + (LODWORD(STACK[0x9B38]) ^ 0xFFBBDDCB)) ^ 0xC712B034;
  return (*(STACK[0xF18] + 8 * (v1 ^ (59 * ((((v0 ^ 0x396FF4F3) - 398382613) ^ ((v0 ^ 0x183AE1F2) - 921420564) ^ ((v0 ^ 0xE651F0F6) + 931081712)) + 1775617809 < 0x8000006E)))))();
}

uint64_t sub_100319EE8()
{
  v1 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 901)))();
}

uint64_t sub_10031A188()
{
  v0 = STACK[0xF10] - 18741;
  STACK[0x53D8] = STACK[0x3350] + 70;
  v1 = LOBYTE(STACK[0x1797]) == 1;
  LOBYTE(STACK[0xA98B]) = v1;
  return (*(STACK[0xF18] + 8 * ((28 * v1) ^ v0)))();
}

uint64_t sub_10031A218()
{
  v1 = STACK[0xF10] - 28761;
  *(STACK[0x3118] + 12) = v0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10031A298()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] + 15050;
  STACK[0x4A10] = v0;
  return (*(STACK[0xF18] + 8 * (((v0 != 0) * (v1 - 35641)) ^ v2)))();
}

uint64_t sub_10031A324()
{
  v4 = *(v0 + v2);
  *(v1 + v2) = (v3 + 14) ^ v4 ^ 0x3C;
  v5 = v4 == ((((v3 - 91) & 0x5B) + 33) & 0x7F);
  return (*(STACK[0xF18] + 8 * ((v5 | (2 * v5)) ^ v3)))();
}

uint64_t sub_10031A3EC(uint64_t a1, int a2)
{
  v6 = (v2 ^ 0xE9D5C711) + a2;
  v7 = STACK[0x8468];
  v8 = 1112314453 * ((~(&STACK[0x10000] + 3800) & 0xFB9C3D18 | (&STACK[0x10000] + 3800) & 0x463C2E0) ^ 0x14CA17C1);
  LODWORD(STACK[0x10EDC]) = (v3 + 679158052) ^ v8;
  LODWORD(STACK[0x10EF0]) = v8 + 1599993265 * v6 + 1244298177;
  LOWORD(STACK[0x10ED8]) = -28075 * ((~(&STACK[0x10000] + 3800) & 0x3D18 | (&STACK[0x10000] + 3800) & 0xC2E0) ^ 0x17C1) + 3787;
  STACK[0x10EE0] = a1 + 73;
  STACK[0x10EE8] = v5;
  STACK[0x10EF8] = v7;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * (v3 + 16309)))(&STACK[0x10ED8]);
  v11 = ((2 * v6) & 0x1FCF716FALL) + (v6 ^ 0xAE273BFFFE7B8B7DLL) + 0x51D8C40017E74A8ALL;
  v12 = (((v4 ^ 0x32DEB06E8B828D2FLL) - 0x32DEB06E8B828D2FLL) ^ ((v4 ^ 0x258ED9C76D67F8BCLL) - 0x258ED9C76D67F8BCLL) ^ ((v4 ^ v3 ^ 0xAD4F ^ 0x175069A90F3094F6) - 0x175069A90F30B282)) + 0x100389D04;
  v13 = (v11 < 0x1662D5F3) ^ (v12 < 0x1662D5F3);
  v14 = v11 > v12;
  if (v13)
  {
    v14 = v11 < 0x1662D5F3;
  }

  return (*(v9 + 8 * ((224 * v14) ^ (v3 - 27325))))(v10);
}

uint64_t sub_10031A5D4()
{
  v0 = STACK[0xF10] - 32141;
  STACK[0x57D0] = STACK[0x598];
  v1 = *(STACK[0xF18] + 8 * v0);
  v2 = *(STACK[0xF18] + 8 * (LODWORD(STACK[0x998]) ^ 0x5A88 ^ v0));
  STACK[0x6728] = v1;
  return v2();
}

uint64_t sub_10031A62C()
{
  v0 = STACK[0xF10] - 7912;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))(STACK[0x42C8]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10031A6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = *(STACK[0xF18] + 8 * v6);
  STACK[0xED0] = a6 & 0xFFFFFFF8;
  STACK[0xEC0] = (v6 - 27786);
  return v11(vdupq_n_s64(0xFFFFFFFFFFFFFFF8), vdupq_n_s64(0x38uLL), vdupq_n_s64(0xD6916AF990E79581), vdupq_n_s64(0x296E95066F186A7EuLL), vdupq_n_s64(v7), vdupq_n_s64(v8), vdupq_n_s64(v9), vdupq_n_s64(v10));
}

uint64_t sub_10031A808()
{
  v1 = STACK[0xF18];
  STACK[0x9320] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 3063) ^ v0)))();
}

uint64_t sub_10031A83C()
{
  STACK[0x3888] = 0;
  LODWORD(STACK[0x18CC]) = -371865839;
  return (*(STACK[0xF18] + 8 * ((59121 * ((v0 ^ 0x60F45989u) > 0xA7C6E8BD)) ^ (v0 + 19976))))();
}

uint64_t sub_10031A8DC(char *a1)
{
  if (v1 == ((v2 - 851826402) ^ 0xE9D5834C))
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  *a1 = v3;
  return (*(STACK[0xF18] + 8 * (v2 - 851837170)))();
}

uint64_t sub_10031A920()
{
  v2 = STACK[0xF10] - 31583;
  v3 = STACK[0xF10] - 2691;
  v4 = STACK[0x7300];
  *(v4 + 24) = STACK[0x1DC0];
  v5 = STACK[0x3418];
  *(v4 + 64) = STACK[0x188C];
  *(v4 + 80) = STACK[0x6168];
  v6 = STACK[0x4F14];
  *(v4 + 72) = 0;
  *(v4 + 88) = 0;
  *(v4 + 32) = v5;
  *(v4 + 36) = v1;
  *(v4 + 40) = v6;
  *(v4 + 44) = v1;
  *(v4 + 96) = v1;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0x9A0A9301979A4FF9;
  *(v4 + 120) = STACK[0x8078];
  v7 = STACK[0x2AEC];
  *(v4 + 128) = STACK[0x22D8];
  *(v4 + 132) = v7;
  *(v4 + 136) = 0;
  return (*(STACK[0xF18] + 8 * ((399 * (v0 & ~(v2 ^ (STACK[0x6208] == 0)))) ^ v3)))();
}

uint64_t sub_10031A9D4@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 - 21538 + ((a1 + 1249995495) & 0xB57EF7FB))))();
}

uint64_t sub_10031AAA8()
{
  STACK[0x10ED8] = v0;
  LODWORD(STACK[0x10EE4]) = (v2 + 43471) ^ (1603510583 * ((((&STACK[0x10000] + 3800) | 0x253C07DD) - ((&STACK[0x10000] + 3800) | 0xDAC3F822) - 624691166) ^ 0xB2E73576));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 ^ 0xD4F5)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x7D2C]) = STACK[0x10EE0];
  v5 = *v0 - (((v2 + 167350718) & 0xF606DCCA ^ 0x8868) & (2 * *v0)) + v1;
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v5;
  LODWORD(STACK[0x35EC]) = 1693393280;
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_10031ABDC@<X0>(int a1@<W8>)
{
  v5 = (((v1 ^ 0x3E6BADE5) - 1047244261) ^ ((v1 ^ 0x16611C54) - 375462996) ^ ((v1 ^ 0xC1DF75B7 ^ (7 * ((v3 + 2007731946) & 0x8854AFBB ^ 0x8B4A))) + 1042319712)) + 1297145246;
  v6 = ((a1 + 1669011089) < 0x637B168D) ^ (v5 < 0x637B168D);
  v7 = a1 + 1669011089 > v5;
  if (v6)
  {
    v7 = (a1 + 1669011089) < 0x637B168D;
  }

  if (v7)
  {
    v8 = 371891407;
  }

  else
  {
    v8 = v2;
  }

  *(v4 + 2012) = v8;
  return (*(STACK[0xF18] + 8 * ((34014 * (v8 == -371865839)) ^ v3)))();
}

uint64_t sub_10031ACDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v4 = STACK[0x7A38];
  v5 = STACK[0xF18];
  STACK[0x1688] = *(STACK[0xF18] + 8 * a3);
  return (*(v5 + 8 * (((v4 == 0) * ((v3 - 27385) ^ 0x2035)) ^ (v3 + 14211))))(a1, a2, 371891400);
}

uint64_t sub_10031AD2C()
{
  STACK[0x4DE0] = STACK[0x7508];
  LODWORD(STACK[0x25AC]) = STACK[0x927C];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10031ADAC(int a1, char a2, uint64_t a3, uint64_t a4, int a5, int8x16_t a6, int8x8_t a7)
{
  v14.val[0].i64[0] = (v10 + a2) & 0xF;
  v14.val[0].i64[1] = (v10 + 14) & 0xF;
  v14.val[1].i64[0] = (v10 + 13) & 0xF;
  v14.val[1].i64[1] = (v10 + 12) & 0xF;
  v14.val[2].i64[0] = (v10 + 11) & 0xF;
  v14.val[2].i64[1] = (v10 + 10) & 0xF;
  v14.val[3].i64[0] = (v10 + 9) & 0xF;
  v14.val[3].i64[1] = v10 & 0xF ^ 8;
  *(a4 + v10) = veor_s8(veor_s8(veor_s8(*(v7 + v14.val[0].i64[0] - 7), *(a3 + v10)), veor_s8(*(v9 + v14.val[0].i64[0] - 7), *(v14.val[0].i64[0] + v8 - 2))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v14, a6), a7)));
  return (*(v12 + 8 * (((v11 == v10) * a5) ^ a1)))();
}

uint64_t sub_10031AF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, int a61, int a62, int a63)
{
  LODWORD(STACK[0x2A8]) = 0;
  v85 = *(v84 - 140);
  v86 = v83 ^ 0xE94BE28;
  *(v84 - 224) = v86;
  v87 = *(v84 - 136);
  v88 = *(v87 + v86);
  v89 = v83 & 0xFFFFFFF6 ^ 0xE94BE29;
  *(v84 - 192) = v89;
  v90 = v83;
  v91 = *(v87 + v89);
  v92 = 97 * (v85 ^ 0x1932);
  v93 = STACK[0x248];
  LODWORD(v89) = *(STACK[0x248] + 4 * (v88 ^ 0x72));
  v94 = v90 & 0xFFFFFFF1 ^ 0xE94BE2ELL;
  *(v84 - 208) = v94;
  v95 = *(v87 + v94);
  v96 = STACK[0x260];
  v97 = *(STACK[0x260] + 4 * (v91 ^ 0xDC)) ^ v91;
  LODWORD(STACK[0x2B0]) = v85 + 17071;
  LODWORD(STACK[0x2DC]) = v92;
  v98 = v90 & ((v85 + 17071) ^ 0xFFFFF9F3 ^ v92) ^ 0xE94BE2FLL;
  *(v84 - 176) = v98;
  v99 = STACK[0x250];
  v100 = STACK[0x258];
  LOBYTE(v98) = *(STACK[0x258] + (*(v87 + v98) ^ 0x79)) + 41;
  v101 = (v95 ^ 0x9D3E6166) - 329945735 + *(STACK[0x250] + 4 * (v95 ^ 0x61));
  v102 = v90 & 0xFFFFFFFD ^ 0xE94BE2ALL;
  *(v84 - 232) = v102;
  LODWORD(v91) = *(v99 + 4 * (*(v87 + v102) ^ 9)) + (*(v87 + v102) ^ 0x9D3E610E) - 329945735;
  v103 = v90 & 0xFFFFFFF4 ^ 0xE94BE2BLL;
  *(v84 - 200) = v103;
  v104 = v90;
  v105 = v90 & 0xFFFFFFF3 ^ 0xE94BE2CLL;
  *(v84 - 168) = v105;
  v106 = v97 ^ (*(v100 + (*(v87 + v103) ^ 0x8ELL)) + 41);
  v107 = *(v93 + 4 * (*(v87 + v105) ^ 4));
  v108 = v90 & 0xFFFFFFFA ^ 0xE94BE2DLL;
  STACK[0x308] = v108;
  v109 = *(v87 + v108);
  v110 = v104 & 0xFFFFFFFB ^ 0xE94BE2CLL;
  *(v84 - 184) = v110;
  v111 = *(v96 + 4 * (v109 ^ 0xE6));
  LODWORD(v103) = *(v93 + 4 * (*(v87 + v110) ^ 0x7DLL));
  v112 = v104 & 0xFFFFFFF5 ^ 0xE94BE2ALL;
  STACK[0x2F0] = v112;
  LODWORD(v110) = *(v99 + 4 * (*(v87 + v112) ^ 0x25)) + (*(v87 + v112) ^ 0x9D3E6122) - 329945735;
  v113 = v104 & 0xFFFFFFF2 ^ 0xE94BE2DLL;
  *(v84 - 216) = v113;
  v114 = *(v87 + v113);
  v115 = v101 ^ v107 ^ v114;
  LODWORD(v114) = *(v96 + 4 * (v114 ^ 0x2E));
  v116 = v104 & 0xFFFFFFF9 ^ 0xE94BE2ELL;
  *(v84 - 256) = v116;
  v117 = v98 ^ v115 ^ v114;
  v118 = *(v99 + 4 * (*(v87 + v116) ^ 0x1DLL)) + (*(v87 + v116) ^ 0x9D3E611A) - 329945735;
  v119 = v104 & 0xFFFFFFF8 ^ 0xE94BE2FLL;
  STACK[0x300] = v119;
  LODWORD(v109) = v111 ^ v109 ^ v103;
  v120 = *(v87 + v119);
  v121 = v104 & 0xFFFFFFFC ^ 0xE94BE2BLL;
  STACK[0x2F8] = v121;
  LODWORD(v103) = (*(v100 + (*(v87 + v121) ^ 0x40)) + 41);
  LODWORD(v119) = v109 ^ v118 ^ (*(v100 + (v120 ^ 0x9B)) + 41);
  *(v84 - 236) = v104;
  v122 = v104 & 0xFFFFFFFE ^ 0xE94BE29;
  *(v84 - 248) = v122;
  LODWORD(v122) = v91 ^ v89 ^ v103 ^ *(v87 + v122) ^ *(v96 + 4 * (*(v87 + v122) ^ 0x56));
  v123 = v104 & 0xFFFFFFF7 ^ 0xE94BE28;
  STACK[0x2E8] = v123;
  LODWORD(v91) = v110 ^ *(v93 + 4 * (*(v87 + v123) ^ 0x46));
  LODWORD(v87) = STACK[0x244];
  LODWORD(STACK[0x2C0]) = v122;
  LODWORD(v123) = v87 ^ v122;
  LODWORD(v87) = STACK[0x238];
  LODWORD(STACK[0x2BC]) = v106 ^ v91;
  LODWORD(v110) = v87 ^ v106 ^ v91;
  LODWORD(v103) = ((v87 ^ v106 ^ v91) >> 8);
  LODWORD(v87) = STACK[0x234];
  LODWORD(STACK[0x2CC]) = v119;
  LODWORD(v114) = v87 ^ v119;
  LODWORD(v93) = (v87 ^ v119);
  LODWORD(v120) = (v87 ^ v119) >> 24;
  v124 = *(&off_1010A0B50 + (v85 ^ 0x1BBF)) - 1345650158;
  v125 = *(&off_1010A0B50 + v85 - 2942) - 23473671;
  LODWORD(v109) = LODWORD(STACK[0x230]) ^ ((BYTE3(v123) ^ 0xBF) + (BYTE3(v123) ^ 0xF575DB21)) ^ ((v93 ^ 0xC9) - (v93 ^ 0x32808ED8)) ^ *&v124[4 * (BYTE3(v123) ^ 0x30)] ^ *&v125[4 * (v103 ^ 0xF7)] ^ ((v103 ^ 0x79) - (v103 ^ 0xE2A299C6));
  v126 = *(&off_1010A0B50 + (v85 ^ 0x1EFE));
  LODWORD(v87) = STACK[0x274];
  LODWORD(STACK[0x2D0]) = v117;
  LODWORD(v100) = v117 ^ v87;
  v127 = v126 - 678600483;
  v128 = __ROR4__(*(v126 - 678600483 + 4 * (((v117 ^ v87) >> 16) ^ 0xECu)), 10);
  v129 = *(&off_1010A0B50 + (v85 ^ 0x8AC)) - 302017127;
  LODWORD(v109) = v109 ^ v128 ^ 0x5962FDF6 ^ (8 * (v128 ^ 0x5962FDF6)) ^ *&v129[4 * (v93 ^ 0x68)];
  LODWORD(v93) = ((v117 ^ v87) >> 8);
  v130 = __ROR4__(*(v127 + 4 * (BYTE2(v123) ^ 0x74u)), 10);
  v131 = LODWORD(STACK[0x22C]) ^ ((v120 ^ 0xF575DB28) + (v120 ^ 0xB6)) ^ ((v110 ^ 0x9F) - (v110 ^ 0x32808E8E)) ^ *&v124[4 * (v120 ^ 0x39)] ^ ((v93 ^ 0x20) - (v93 ^ 0xE2A2999F)) ^ *&v129[4 * (v110 ^ 0x3E)] ^ v130 ^ 0x3967F47F ^ *&v125[4 * (v93 ^ 0xAE)] ^ (8 * (v130 ^ 0x3967F47F));
  v132 = __ROR4__(*(v127 + 4 * (BYTE2(v114) ^ 0x1Au)), 10);
  LODWORD(v120) = ((v100 ^ 0xFB) - (v100 ^ 0x32808EEA)) ^ LODWORD(STACK[0x278]) ^ ((BYTE1(v123) ^ 0xCA) - (BYTE1(v123) ^ 0xE2A29975)) ^ ((BYTE3(v110) ^ 0xF575DBE2) + (BYTE3(v110) ^ 0x7C)) ^ *&v124[4 * (BYTE3(v110) ^ 0xF3)] ^ *&v125[4 * (BYTE1(v123) ^ 0x44)] ^ v132 ^ 0x1E55F7E2 ^ *&v129[4 * (v100 ^ 0x5A)] ^ (8 * (v132 ^ 0x1E55F7E2));
  v133 = __ROR4__(*(v127 + 4 * (BYTE2(v110) ^ 0xF9u)), 10);
  LODWORD(v123) = LODWORD(STACK[0x228]) ^ ((v123 ^ 0x3C) - (v123 ^ 0x32808E2D)) ^ ((BYTE1(v114) ^ 0x8A) - (BYTE1(v114) ^ 0xE2A29935)) ^ ((BYTE3(v100) ^ 0xF3) + (BYTE3(v100) ^ 0xF575DB6D)) ^ *&v125[4 * (BYTE1(v114) ^ 4)] ^ *&v129[4 * (v123 ^ 0x9D)] ^ v133 ^ 0x90A5DC81 ^ *&v124[4 * (BYTE3(v100) ^ 0x7C)] ^ (8 * (v133 ^ 0x90A5DC81));
  v134 = __ROR4__(*(v127 + 4 * (BYTE2(v123) ^ 0xCBu)), 10);
  LODWORD(v110) = LODWORD(STACK[0x224]) ^ ((v131 ^ 0x15) - (v131 ^ 0x32808E04)) ^ ((BYTE3(v109) ^ 0xF575DB4A) + (BYTE3(v109) ^ 0xD4)) ^ *&v125[4 * (BYTE1(v120) ^ 0x54)] ^ *&v129[4 * (v131 ^ 0xB4)] ^ ((BYTE1(v120) ^ 0xDA) - (BYTE1(v120) ^ 0xE2A29965)) ^ *&v124[4 * (BYTE3(v109) ^ 0x5B)] ^ v134 ^ 0xA63A6248 ^ (8 * (v134 ^ 0xA63A6248));
  v135 = __ROR4__(*(v127 + 4 * (BYTE2(v109) ^ 0xE2u)), 10);
  LODWORD(v114) = ((HIBYTE(v131) ^ 0xF575DB7E) + (HIBYTE(v131) ^ 0xE0)) ^ LODWORD(STACK[0x298]) ^ ((v120 ^ 0xEE) - (v120 ^ 0x32808EFF)) ^ *&v124[4 * (HIBYTE(v131) ^ 0x6F)] ^ *&v125[4 * (BYTE1(v123) ^ 0x3C)] ^ *&v129[4 * (v120 ^ 0x4F)] ^ v135 ^ 0xDA56A63D ^ (8 * (v135 ^ 0xDA56A63D)) ^ ((BYTE1(v123) ^ 0xB2) - (BYTE1(v123) ^ 0xE2A2990D));
  v136 = __ROR4__(*(v127 + 4 * (BYTE2(v131) ^ 0xB0u)), 10);
  v137 = LODWORD(STACK[0x220]) ^ ((BYTE3(v120) ^ 0x3E) + (BYTE3(v120) ^ 0xF575DBA0)) ^ ((v123 ^ 0xAD) - (v123 ^ 0x32808EBC)) ^ ((BYTE1(v109) ^ 0x2B) - (BYTE1(v109) ^ 0xE2A29994)) ^ *&v124[4 * (BYTE3(v120) ^ 0xB1)] ^ *&v129[4 * (v123 ^ 0xC)] ^ v136 ^ 0x3CB3076 ^ *&v125[4 * (BYTE1(v109) ^ 0xA5)] ^ (8 * (v136 ^ 0x3CB3076));
  v138 = *(v127 + 4 * (BYTE2(v120) ^ 0xABu));
  LODWORD(v100) = (v138 >> 10) ^ 0xA7EA8F10;
  v138 <<= 22;
  LODWORD(v100) = (__ROR4__(__ROR4__(v100, 16) ^ 0x9B8234C7, 16) ^ 0xA3D139F1) & (v138 ^ 0x403FFFFF);
  LODWORD(v93) = v131 >> 8;
  v139 = BYTE1(v131);
  v140 = BYTE1(v131) ^ 0x98;
  LODWORD(v93) = __PAIR64__(v93, v140) >> 5;
  HIDWORD(v141) = v93 ^ 0x4CEE579;
  LODWORD(v141) = v93 ^ 0xEFFFFFFF;
  LODWORD(v123) = LODWORD(STACK[0x21C]) ^ (v140 - (v139 ^ 0xE2A29927)) ^ ((BYTE3(v123) ^ 0x86) + (BYTE3(v123) ^ 0xF575DB18)) ^ ((v109 ^ 0xB2) - (v109 ^ 0x32808EA3)) ^ *&v124[4 * (BYTE3(v123) ^ 9)] ^ *&v129[4 * (v109 ^ 0x13)] ^ *&v125[4 * ((v141 >> 27) ^ 0x99DCAFAB)] ^ v138 & 0xCF000000 ^ 0xD05AD6CD ^ v100 ^ (8 * (v138 & 0xCF000000 ^ 0xD05AD6CD ^ v100));
  LODWORD(v141) = __ROR4__(*(v127 + 4 * (BYTE2(v123) ^ 0x17u)), 10);
  LODWORD(v109) = LODWORD(STACK[0x218]) ^ ((BYTE3(v110) ^ 0xF575DB65) + (BYTE3(v110) ^ 0xFB)) ^ ((v114 ^ 2) - (v114 ^ 0x32808E13)) ^ *&v125[4 * (BYTE1(v137) ^ 0x58)] ^ *&v124[4 * (BYTE3(v110) ^ 0x74)] ^ *&v129[4 * (v114 ^ 0xA3)] ^ v141 ^ 0xE702E0F0 ^ (8 * (v141 ^ 0xE702E0F0)) ^ ((BYTE1(v137) ^ 0xD6) - (BYTE1(v137) ^ 0xE2A29969));
  LODWORD(v141) = __ROR4__(*(v127 + 4 * (BYTE2(v110) ^ 0xCFu)), 10);
  LODWORD(v120) = LODWORD(STACK[0x214]) ^ ((v137 ^ 0xD) - (v137 ^ 0x32808E1C)) ^ ((BYTE3(v114) ^ 0xF575DB45) + (BYTE3(v114) ^ 0xDB)) ^ *&v124[4 * (BYTE3(v114) ^ 0x54)] ^ *&v129[4 * (((v137 & 0xC8 ^ 0xAFB03D6E) & (v137 & 0x37 ^ 0xAFFF3FFB) | v137 & 0x11) ^ 0xAFB03DC6)] ^ *&v125[4 * (BYTE1(v123) ^ 0x92)] ^ v141 ^ 0x217ED0C6 ^ (8 * (v141 ^ 0x217ED0C6)) ^ ((BYTE1(v123) ^ 0x1C) - (BYTE1(v123) ^ 0xE2A299A3));
  HIDWORD(v141) = *(v127 + 4 * (BYTE2(v114) ^ 0xD7u));
  LODWORD(v141) = HIDWORD(v141);
  v142 = v141 >> 10;
  LODWORD(v100) = LODWORD(STACK[0x210]) ^ ((HIBYTE(v137) ^ 0xF575DB8E) + (HIBYTE(v137) ^ 0x10)) ^ ((BYTE1(v110) ^ 0x3B) - (BYTE1(v110) ^ 0xE2A29984)) ^ *&v124[4 * (HIBYTE(v137) ^ 0x9F)] ^ *&v125[4 * (BYTE1(v110) ^ 0xB5)] ^ ((v123 ^ 0x83) - (v123 ^ 0x32808E92)) ^ *&v129[4 * (v123 ^ 0x22)] ^ (((8 * v142) & 0x23C6F8F0 ^ v142 & 0x23C6F8F3 ^ 0xFF3FFF3F) & (v142 & 0xDC39070C ^ 0x81B848C9 ^ (8 * v142) & 0xDC390708) | ((8 * v142) & 0x23C6F8F0 ^ v142 & 0x23C6F8F3) & 0x2246B032);
  LODWORD(v141) = __ROR4__(*(v127 + 4 * (BYTE2(v137) ^ 0xE1u)), 10);
  LODWORD(v123) = LODWORD(STACK[0x208]) ^ ((v110 ^ 0x1B) - (v110 ^ 0x32808E0A)) ^ ((BYTE1(v114) ^ 0x2F) - (BYTE1(v114) ^ 0xE2A29990)) ^ ((BYTE3(v123) ^ 0xE9) + (BYTE3(v123) ^ 0xF575DB77)) ^ *&v125[4 * (BYTE1(v114) ^ 0xA1)] ^ *&v129[4 * (v110 ^ 0xBA)] ^ *&v124[4 * (BYTE3(v123) ^ 0x66)] ^ v141 ^ 0x1F977730 ^ (8 * (v141 ^ 0x1F977730));
  LODWORD(v141) = __ROR4__(*(v127 + 4 * (BYTE2(v123) ^ 0x3Du)), 10);
  v143 = LODWORD(STACK[0x204]) ^ ((BYTE3(v109) ^ 0xDC) + (BYTE3(v109) ^ 0xF575DB42)) ^ *&v124[4 * (BYTE3(v109) ^ 0x53)] ^ *&v125[4 * (BYTE1(v100) ^ 0x8B)] ^ *&v129[4 * (v120 ^ 0xBF)] ^ v141 ^ 0x45550C02 ^ (8 * (v141 ^ 0x45550C02)) ^ ((v120 ^ 0x1E) - (v120 ^ 0x32808E0F)) ^ ((BYTE1(v100) ^ 5) - (BYTE1(v100) ^ 0xE2A299BA));
  LODWORD(v141) = __ROR4__(*(v127 + 4 * (BYTE2(v109) ^ 0xACu)), 10);
  v144 = LODWORD(STACK[0x200]) ^ ((BYTE3(v120) ^ 0xF575DB04) + (BYTE3(v120) ^ 0x9A)) ^ ((v100 ^ 0xE1) - (v100 ^ 0x32808EF0)) ^ *&v125[4 * (BYTE1(v123) ^ 0xCA)] ^ *&v124[4 * (BYTE3(v120) ^ 0x15)] ^ *&v129[4 * (v100 ^ 0x40)] ^ v141 ^ 0xC055A4AB ^ (8 * (v141 ^ 0xC055A4AB)) ^ ((BYTE1(v123) ^ 0x44) - (BYTE1(v123) ^ 0xE2A299FB));
  LODWORD(v141) = __ROR4__(*(v127 + 4 * (BYTE2(v120) ^ 0xB0u)), 10);
  v145 = *&v129[4 * (v123 ^ 0x19)] ^ ((v123 ^ 0xB8) - (v123 ^ 0x32808EA9)) ^ __ROR4__(__ROR4__(LODWORD(STACK[0x284]) ^ ((BYTE1(v109) ^ 0x5D) - (BYTE1(v109) ^ 0xE2A299E2)) ^ ((BYTE3(v100) ^ 0xF575DB84) + (BYTE3(v100) ^ 0x1A)) ^ *&v125[4 * (BYTE1(v109) ^ 0xD3)] ^ *&v124[4 * (BYTE3(v100) ^ 0x95)] ^ v141 ^ 0xB0575B6E ^ (8 * (v141 ^ 0xB0575B6E)) ^ 0xF2EF0767, 13) ^ 0x9109CA5B, 19);
  LODWORD(v141) = __ROR4__(*(v127 + 4 * (BYTE2(v100) ^ 0x7Au)), 10);
  LODWORD(v123) = a83 ^ ((BYTE1(v120) ^ 0x2E) - (BYTE1(v120) ^ 0xE2A29991)) ^ ((v109 ^ 0xDB) - (v109 ^ 0x32808ECA)) ^ ((BYTE3(v123) ^ 0xF575DB70) + (BYTE3(v123) ^ 0xEE)) ^ *&v124[4 * (BYTE3(v123) ^ 0x61)] ^ *&v125[4 * (BYTE1(v120) ^ 0xA0)] ^ *&v129[4 * (v109 ^ 0x7A)] ^ v141 ^ 0xB2FC4DAB ^ (8 * (v141 ^ 0xB2FC4DAB));
  LODWORD(v141) = __ROR4__(*(v127 + 4 * (BYTE2(v123) ^ 0xC5u)), 10);
  v146 = a82 ^ ((HIBYTE(v143) ^ 0xC1) + (HIBYTE(v143) ^ 0xF575DB5F)) ^ *&v124[4 * (HIBYTE(v143) ^ 0x4E)] ^ ((v144 ^ 0xBE) - (v144 ^ 0x32808EAF)) ^ *&v129[4 * (v144 ^ 0x1F)] ^ v141 ^ 0x9C5DE60D ^ *&v125[4 * (BYTE1(v145) ^ 0xA)] ^ (8 * (v141 ^ 0x9C5DE60D)) ^ ((BYTE1(v145) ^ 0x84) - (BYTE1(v145) ^ 0xE2A2993B));
  LODWORD(v141) = __ROR4__(*(v127 + 4 * (BYTE2(v143) ^ 0xC4u)), 10);
  LODWORD(v114) = a81 ^ ((HIBYTE(v144) ^ 0xF575DB62) + (HIBYTE(v144) ^ 0xFC)) ^ *&v124[4 * (HIBYTE(v144) ^ 0x73)] ^ *&v125[4 * (BYTE1(v123) ^ 0x31)] ^ v141 ^ 0x356FE33E ^ ((v145 ^ 0xE) - (v145 ^ 0x32808E1F)) ^ *&v129[4 * (v145 ^ 0xAF)] ^ ((BYTE1(v123) ^ 0xBF) - BYTE1(v123) + 492660480) ^ (8 * (v141 ^ 0x356FE33E));
  LODWORD(v122) = a80 ^ ((HIBYTE(v145) ^ 0xC9) + (HIBYTE(v145) ^ 0xF575DB57)) ^ 0xB4E7AE2E ^ *&v124[4 * (HIBYTE(v145) ^ 0x46)];
  LODWORD(v141) = __ROR4__(*(v127 + 4 * (BYTE2(v144) ^ 0x59u)), 10);
  LODWORD(v120) = ((v123 ^ 0x67) - (v123 ^ 0x32808E76)) ^ ((BYTE1(v143) ^ 0x9D) - (BYTE1(v143) ^ 0xE2A29922)) ^ *&v125[4 * (BYTE1(v143) ^ 0x13)] ^ *&v129[4 * (v123 ^ 0xC6)] ^ v141 ^ 0xC03D0E8A ^ (8 * (v141 ^ 0xC03D0E8A)) ^ ((v122 & 0x7CF3FF8B ^ 0xF6E1DDBD) & (v122 & 0x830C0074 ^ 0xFFF3FFAB) | v122 & 0x10C0040);
  LODWORD(v141) = __ROR4__(*(v127 + 4 * (BYTE2(v145) ^ 0x29u)), 10);
  LODWORD(v100) = a79 ^ ((v143 ^ 0x46) - (v143 ^ 0x32808E57)) ^ ((BYTE1(v144) ^ 0xA1) - (BYTE1(v144) ^ 0xE2A2991E)) ^ ((BYTE3(v123) ^ 0xF575DB60) + (BYTE3(v123) ^ 0xFE)) ^ *&v124[4 * (BYTE3(v123) ^ 0x71)] ^ *&v125[4 * (BYTE1(v144) ^ 0x2F)] ^ *&v129[4 * (v143 ^ 0xE7)] ^ v141 ^ 0x778C855 ^ (8 * (v141 ^ 0x778C855));
  LODWORD(v141) = __ROR4__(*(v127 + 4 * ((((((v100 ^ 0x8CA3BC8D) >> (((v143 ^ 0x46) - (v143 ^ 0x57)) & 0x10)) - ((2 * ((v100 ^ 0x8CA3BC8D) >> (((v143 ^ 0x46) - (v143 ^ 0x57)) & 0x10))) & 0x9ABAA088) + 1297961028) ^ 0x4D5D5044) >> (((v143 ^ 0x46) - (v143 ^ 0x57)) & 0x10 ^ 0x10)) ^ 0xA6u)), 10);
  v147 = a78 ^ ((HIBYTE(v146) ^ 0x5B) + (HIBYTE(v146) ^ 0xF575DBC5)) ^ ((v114 ^ 0x1E) - (v114 ^ 0x32808E0F)) ^ *&v124[4 * (HIBYTE(v146) ^ 0xD4)] ^ *&v129[4 * (v114 ^ 0xBF)] ^ *&v125[4 * (BYTE1(v120) ^ 0x99)] ^ v141 ^ 0xB63612B9 ^ (8 * (v141 ^ 0xB63612B9)) ^ ((BYTE1(v120) ^ 0x17) - (BYTE1(v120) ^ 0xE2A299A8));
  LODWORD(v141) = __ROR4__(*(v127 + 4 * (BYTE2(v146) ^ 4u)), 10);
  v148 = a77 ^ ((BYTE3(v114) ^ 0x40) + (BYTE3(v114) ^ 0xF575DBDE)) ^ ((v120 ^ 0x6F) - (v120 ^ 0x32808E7E)) ^ *&v124[4 * (BYTE3(v114) ^ 0xCF)] ^ *&v125[4 * (BYTE1(v100) ^ 0x32)] ^ *&v129[4 * (v120 ^ 0xCE)] ^ v141 ^ 0x3473077A ^ (8 * (v141 ^ 0x3473077A)) ^ ((BYTE1(v100) ^ 0xBC) - (BYTE1(v100) ^ 0xE2A29903));
  LODWORD(v122) = (BYTE3(v120) ^ 0xF575DB0D) + (BYTE3(v120) ^ 0x93);
  LODWORD(v119) = a76 ^ *&v124[4 * (BYTE3(v120) ^ 0x1C)];
  LODWORD(v141) = __ROR4__(*(v127 + 4 * (BYTE2(v114) ^ 0xEu)), 10);
  LODWORD(v123) = ((v100 ^ 0x8D) - (v100 ^ 0x32808E9C)) ^ ((BYTE1(v146) ^ 0x30) - (BYTE1(v146) ^ 0xE2A2998F)) ^ *&v125[4 * (BYTE1(v146) ^ 0xBE)] ^ *&v129[4 * (v100 ^ 0x2C)] ^ v141 ^ 0x79667C41 ^ (8 * (v141 ^ 0x79667C41)) ^ ((v119 & 0xD65599D9 ^ v122 & 0xD45599D9 ^ 0x6DBB6626) & (v122 & 0x1004626 ^ 0x5E11834A ^ v119 & 0x29AA6626) | (v119 & 0xD65599D9 ^ v122 & 0xD45599D9) & 0x80441891);
  LODWORD(v141) = __ROR4__(*(v127 + 4 * (BYTE2(v120) ^ 0x90u)), 10);
  LODWORD(v120) = a75 ^ ((v146 ^ 0x30) - (v146 ^ 0x32808E21)) ^ ((BYTE1(v114) ^ 7) - (BYTE1(v114) ^ 0xE2A299B8)) ^ ((BYTE3(v100) ^ 0x8C) + (BYTE3(v100) ^ 0xF575DB12)) ^ *&v125[4 * (BYTE1(v114) ^ 0x89)] ^ *&v124[4 * (BYTE3(v100) ^ 3)] ^ *&v129[4 * (v146 ^ 0x91)] ^ v141 ^ 0x872FDF97 ^ (8 * (v141 ^ 0x872FDF97));
  LODWORD(v141) = __ROR4__(*(v127 + 4 * (BYTE2(v120) ^ 0x64u)), 10);
  v149 = ((HIBYTE(v147) ^ 0xF575DB9F) + (HIBYTE(v147) ^ 1)) ^ LODWORD(STACK[0x29C]) ^ *&v125[4 * (BYTE1(v123) ^ 0xFF)] ^ ((v148 ^ 0xCF) - (v148 ^ 0x32808EDE)) ^ *&v129[4 * (v148 ^ 0x6E)] ^ *&v124[4 * (HIBYTE(v147) ^ 0x8E)] ^ v141 ^ 0x4CEB9C3D ^ (8 * (v141 ^ 0x4CEB9C3D)) ^ ((BYTE1(v123) ^ 0x71) - (BYTE1(v123) ^ 0xE2A299CE));
  LODWORD(v141) = __ROR4__(*(v127 + 4 * (BYTE2(v147) ^ 0xB9u)), 10);
  v150 = a74 ^ ((HIBYTE(v148) ^ 0xF575DB0A) + (HIBYTE(v148) ^ 0x94)) ^ ((v123 ^ 0xDB) - (v123 ^ 0x32808ECA)) ^ *&v124[4 * (HIBYTE(v148) ^ 0x1B)] ^ *&v125[4 * (BYTE1(v120) ^ 0x1B)] ^ *&v129[4 * (v123 ^ 0x7A)] ^ ((BYTE1(v120) ^ 0x95) - (BYTE1(v120) ^ 0xE2A2992A)) ^ v141 ^ 0xF2C4055F ^ (8 * (v141 ^ 0xF2C4055F));
  LODWORD(v119) = ((BYTE3(v123) ^ 0xF575DB80) + (BYTE3(v123) ^ 0x1E)) ^ 0xDBFD261A ^ *&v124[4 * (BYTE3(v123) ^ 0x91)];
  LODWORD(v141) = __ROR4__(*(v127 + 4 * (BYTE2(v148) ^ 0xE4u)), 10);
  v151 = a73 ^ ((v120 ^ 0x74) - (v120 ^ 0x32808E65)) ^ ((BYTE1(v147) ^ 0x43) - (BYTE1(v147) ^ 0xE2A299FC)) ^ *&v129[4 * (v120 ^ 0xD5)] ^ v141 ^ 0x520A60B5 ^ *&v125[4 * (BYTE1(v147) ^ 0xCD)] ^ (8 * (v141 ^ 0x520A60B5)) ^ ((v119 & 0x14347B62 ^ 0x5F8FD6F0) & (v119 & 0xEBCB849D ^ 0xFF7CFFE7) | v119 & 0xA040000D);
  v152 = BYTE3(v120);
  v153 = WORD1(v123) ^ 0x1EB5;
  LODWORD(STACK[0x2E0]) = *(v84 - 144) < 0x27F6AA18u;
  v154 = v153;
  if (v153 >= 0x9Bu)
  {
    v154 = v153 - 155;
  }

  v155 = v153 + 101;
  if (v153 < 0x9Bu)
  {
    v155 = v153;
  }

  if (v154)
  {
    v156 = 0;
  }

  else
  {
    v156 = v155;
  }

  v157 = __ROR4__(*(v127 + 4 * ((v153 - v156) ^ 0xA6u)), 10);
  v158 = ((v147 ^ 0x36) - (v147 ^ 0x32808E27)) ^ LODWORD(STACK[0x27C]) ^ ((BYTE1(v148) ^ 0xEC) - (BYTE1(v148) ^ 0xE2A29953)) ^ ((v152 ^ 0xF575DB13) + (v152 ^ 0x8D)) ^ *&v124[4 * (v152 ^ 2)] ^ *&v125[4 * (BYTE1(v148) ^ 0x62)] ^ *&v129[4 * (v147 ^ 0x97)] ^ v157 ^ 0x9D4CD7DF ^ (8 * (v157 ^ 0x9D4CD7DF));
  v159 = *(v84 - 136);
  v160 = __ROR4__(*(v127 + 4 * (BYTE2(v158) ^ 0xF3u)), 10);
  v161 = a70 ^ ((HIBYTE(v149) ^ 0x27) + (HIBYTE(v149) ^ 0xF575DBB9)) ^ ((v150 ^ 0xEC) - (v150 ^ 0x32808EFD)) ^ *&v125[4 * (BYTE1(v151) ^ 0xEA)] ^ *&v124[4 * (HIBYTE(v149) ^ 0xA8)] ^ *&v129[4 * (v150 ^ 0x4D)] ^ v160 ^ 0x445A63C3 ^ (8 * (v160 ^ 0x445A63C3)) ^ ((BYTE1(v151) ^ 0x64) - (BYTE1(v151) ^ 0xE2A299DB));
  HIDWORD(v163) = *(v127 + 4 * (BYTE2(v149) ^ 0xC4u));
  LODWORD(v163) = HIDWORD(v163);
  v162 = v163 >> 10;
  v164 = a69 ^ ((v151 ^ 0x78) - (v151 ^ 0x32808E69)) ^ *&v124[4 * (HIBYTE(v150) ^ 0xC1)] ^ *&v125[4 * (BYTE1(v158) ^ 0x5C)] ^ v162 ^ *&v129[4 * (v151 ^ 0xD9)] ^ ((__ROR4__((((v150 >> 27) ^ 0xBA2D954D) & ~((HIBYTE(v150) ^ 0x4E) << 29) & 0xBFFFFFFF | ((((HIBYTE(v150) ^ 0x4E) >> 1) & 1) << 30)) ^ 0x6C5869DF, 29) ^ 0x46DA3F40) + (HIBYTE(v150) ^ 0x4E)) ^ ((BYTE1(v158) ^ 0xD2) - (BYTE1(v158) ^ 0xE2A2996D)) ^ ((v162 ^ 0xC162050E) << (v162 & 3 ^ 2) << (v162 & 3 ^ 1));
  LODWORD(v163) = __ROR4__(*(v127 + 4 * (BYTE2(v150) ^ 0xB9u)), 10);
  v165 = ((BYTE1(v149) ^ 0x84) - (BYTE1(v149) ^ 0xE2A2993B)) ^ LODWORD(STACK[0x268]) ^ ((HIBYTE(v151) ^ 0x21) + (HIBYTE(v151) ^ 0xF575DBBF)) ^ ((v158 ^ 0xAB) - (v158 ^ 0x32808EBA)) ^ *&v124[4 * (HIBYTE(v151) ^ 0xAE)] ^ *&v125[4 * (BYTE1(v149) ^ 0xA)] ^ *&v129[4 * (v158 ^ 0xA)] ^ v163 ^ 0x4487B046 ^ (8 * (v163 ^ 0x4487B046));
  LODWORD(v163) = __ROR4__(*(v127 + 4 * (BYTE2(v151) ^ 0xD5u)), 10);
  v166 = a68 ^ ((v149 ^ 0x9E) - (v149 ^ 0x32808E8F)) ^ ((BYTE1(v150) ^ 0xC1) - (BYTE1(v150) ^ 0xE2A2997E)) ^ ((HIBYTE(v158) ^ 0xF575DB95) + (HIBYTE(v158) ^ 0xB)) ^ *&v125[4 * (BYTE1(v150) ^ 0x4F)] ^ v163 ^ 0x7D2ABE46 ^ *&v124[4 * (HIBYTE(v158) ^ 0x84)] ^ (8 * (v163 ^ 0x7D2ABE46)) ^ *&v129[4 * (v149 ^ 0x3F)];
  LODWORD(v163) = __ROR4__(*(v127 + 4 * (BYTE2(v166) ^ 0x73u)), 10);
  v167 = a67 ^ ((((v161 >> 23) ^ 0xFFFFFFBF) & 0xC2) - 176825442) ^ ((v164 ^ 0x99) - (v164 ^ 0x32808E88)) ^ *&v125[4 * (BYTE1(v165) ^ 0xD1)] ^ *&v124[4 * (HIBYTE(v161) ^ 0xCA)] ^ *&v129[4 * (v164 ^ 0x38)] ^ v163 ^ 0x11AFFBFC ^ (8 * (v163 ^ 0x11AFFBFC)) ^ ((BYTE1(v165) ^ 0x5F) - (BYTE1(v165) ^ 0xE2A299E0));
  LODWORD(v163) = __ROR4__(*(v127 + 4 * (BYTE2(v161) ^ 0xC6u)), 10);
  v168 = a66 ^ ((v165 ^ 0xCD) - (v165 ^ 0x32808EDC)) ^ ((HIBYTE(v164) ^ 0xF575DB71) + (HIBYTE(v164) ^ 0xEF)) ^ *&v125[4 * (BYTE1(v166) ^ 0x40)] ^ *&v124[4 * (HIBYTE(v164) ^ 0x60)] ^ *&v129[4 * (v165 ^ 0x6C)] ^ v163 ^ 0x97A3054E ^ (8 * (v163 ^ 0x97A3054E)) ^ ((BYTE1(v166) ^ 0xCE) - (BYTE1(v166) ^ 0xE2A29971));
  LODWORD(v163) = __ROR4__(*(v127 + 4 * (BYTE2(v164) ^ 0x20u)), 10);
  v169 = a65 ^ ((HIBYTE(v165) ^ 0x34) + (HIBYTE(v165) ^ 0xF575DBAA)) ^ ((v166 ^ 0xF3) - (v166 ^ 0x32808EE2)) ^ ((BYTE1(v161) ^ 0x3A) - (BYTE1(v161) ^ 0xE2A29985)) ^ *&v124[4 * (HIBYTE(v165) ^ 0xBB)] ^ *&v129[4 * (v166 ^ 0x52)] ^ *&v125[4 * (BYTE1(v161) ^ 0xB4)] ^ v163 ^ 0xFD63B0A2 ^ (8 * (v163 ^ 0xFD63B0A2));
  LODWORD(v163) = __ROR4__(*(v127 + 4 * (((v165 ^ 0x345F5FCD) >> (BYTE2(v144) & 0x10 ^ 0x10) >> (BYTE2(v144) & 0x10)) ^ 0xA6u)), 10);
  v170 = a64 ^ ((BYTE1(v164) ^ 0x41) - (BYTE1(v164) ^ 0xE2A299FE)) ^ ((v161 ^ 0xF7) - (v161 ^ 0x32808EE6)) ^ ((HIBYTE(v166) ^ 0x35) + (HIBYTE(v166) ^ 0xF575DBAB)) ^ *&v124[4 * (HIBYTE(v166) ^ 0xBA)] ^ *&v125[4 * (BYTE1(v164) ^ 0xCF)] ^ *&v129[4 * (v161 ^ 0x56)] ^ v163 ^ 0xEE872AA1 ^ (8 * (v163 ^ 0xEE872AA1));
  v171 = v169 ^ 0x3B31660D;
  v172 = *(v84 - 140);
  v173 = *(&off_1010A0B50 + v172 - 3846) - 2096491983;
  v174 = *(&off_1010A0B50 + (v172 ^ 0x1A0F)) - 672805118;
  v175 = *(&off_1010A0B50 + (v172 ^ 0x1353)) - 1185399906;
  v176 = v167 ^ 0x5F;
  HIDWORD(v163) = *&v175[4 * ((v167 ^ 0xED5F) >> 8)];
  LODWORD(v163) = HIDWORD(v163);
  v177 = a63 ^ (*&v174[4 * (BYTE2(v168) ^ 0x1F)] - 1573952183) ^ (991599761 * *&v173[4 * ((v169 ^ 0x3B31660Du) >> 24)] + 119098337) ^ (v163 >> 28) ^ ((v163 >> 28) >> 2) & 0x1F75A2B5 ^ 0xBF724BEC;
  v168 ^= 0xD1978795;
  v178 = v170 ^ 0x85D6630B;
  v179 = *&v173[4 * ((v167 ^ 0x7376ED5Fu) >> 24)];
  v180 = *(&off_1010A0B50 + (v172 ^ 0x1C9D)) - 622185502;
  v181 = *&v173[4 * HIBYTE(v168)];
  v182 = *&v180[4 * v178] - 1868988333;
  LODWORD(v173) = *&v173[4 * HIBYTE(v178)];
  v183 = *&v174[4 * BYTE2(v178)];
  v184 = *&v174[4 * (BYTE2(v167) ^ 0xFE)];
  LODWORD(v174) = *&v174[4 * BYTE2(v171)];
  v185 = *&v175[4 * BYTE1(v171)];
  v186 = *&v175[4 * BYTE1(v178)];
  v187 = *&v175[4 * BYTE1(v168)];
  v188 = *&v180[4 * v168];
  v189 = *&v180[4 * (v171 ^ 0x2B)];
  v190 = *&v180[4 * v176];
  v191 = ((-v177 ^ (v182 - (v177 ^ v182)) ^ 0xCDEA15F2 ^ (v177 - ((2 * v177) & 0x9BD42BE4) - 840296974)) + v182) ^ *(v84 - 156);
  v192 = *(&off_1010A0B50 + (v172 ^ 0x10F8)) - 1827939603;
  v193 = v192[((((((-v177 ^ (v182 - (v177 ^ v182)) ^ 0x15F2 ^ (v177 - ((2 * v177) & 0x2BE4) + 5618)) + v182) ^ *(v84 - 156)) >> 8) ^ 0xE3) + ((v191 >> 7) & 0xC8 ^ 0xFFFFFF3F) + 101) ^ 0xAFLL];
  *(v159 + STACK[0x2F0]) = ((v193 >> 1) | (v193 << 7)) ^ 0xA6 ^ (((16 * ((v193 >> 1) | (v193 << 7))) ^ 0x60) + 112);
  v194 = *(&off_1010A0B50 + (v172 ^ 0x1E19)) - 2129061242;
  *(v159 + STACK[0x2E8]) = (v194[HIBYTE(v191) ^ 0xCBLL] + (HIBYTE(v191) ^ 0xB) + 78) ^ 0x89;
  HIDWORD(v163) = v186;
  LODWORD(v163) = v186;
  v195 = a62 ^ LODWORD(STACK[0x288]) ^ *(v84 - 160) ^ (v184 - 1573952183) ^ (v163 >> 28) ^ (991599761 * v181 + 119098337) ^ ((v163 >> 28) >> 2) & 0x1F75A2B5 ^ (v189 - 1868988333);
  HIDWORD(v163) = v185;
  LODWORD(v163) = v185;
  v196 = a61 ^ LODWORD(STACK[0x294]) ^ *(v84 - 152) ^ (v163 >> 28) ^ (v183 - 1573952183) ^ ((v163 >> 28) >> 2) & 0x1F75A2B5 ^ (991599761 * v179 + 119098337) ^ (v188 - 1868988333);
  HIDWORD(v163) = v187;
  LODWORD(v163) = v187;
  LODWORD(v173) = *(v84 - 148) ^ LODWORD(STACK[0x280]) ^ (v174 - 1573952183) ^ (v163 >> 28) ^ (v190 - 1868988333) ^ (991599761 * v173 + 119098337) ^ ((v163 >> 28) >> 2) & 0x1F75A2B5;
  *(v159 + *(v84 - 224)) = ((HIBYTE(v196) ^ 0xD1) + v194[HIBYTE(v196) ^ 0x11] + 78) ^ 0x41;
  v197 = *(&off_1010A0B50 + (v172 ^ 0xBDC)) - 598943063;
  *(v159 + STACK[0x308]) = ((BYTE2(v195) ^ 0x12) + 85) ^ v197[BYTE2(v195) ^ 0x97] ^ 0xF3;
  LODWORD(v175) = v192[BYTE1(v173) ^ 0xALL];
  *(v159 + *(v84 - 208)) = (((16 * (v175 >> 1)) ^ 0x60) + 112) ^ ((v175 >> 1) | (v175 << 7));
  LODWORD(v175) = v192[BYTE1(v196) ^ 0x32];
  *(v159 + *(v84 - 232)) = ((v175 >> 1) | (v175 << 7)) ^ (((16 * ((v175 >> 1) | (v175 << 7))) ^ 0x60) + 112) ^ 0xF7;
  *(v159 + *(v84 - 192)) = ((BYTE2(v191) ^ 0xFB) + 85) ^ 0x91 ^ v197[BYTE2(v191) ^ 0x7ELL];
  v198 = *(&off_1010A0B50 + v172 - 6547) - 598339782;
  *(v159 + STACK[0x2F8]) = v196 ^ v198[v196 ^ 0x59] ^ 0x33;
  LODWORD(v175) = v192[BYTE1(v195) ^ 0x5CLL];
  *(v159 + *(v84 - 256)) = ((v175 >> 1) | (v175 << 7)) ^ 0xA7 ^ (((16 * ((v175 >> 1) | (v175 << 7))) ^ 0x60) + 112);
  *(v159 + STACK[0x300]) = v195 ^ v198[v195 ^ 0x80] ^ 0xFC;
  *(v159 + *(v84 - 176)) = v173 ^ 0xD5 ^ v198[v173 ^ 0xB1];
  *(v159 + *(v84 - 200)) = v191 ^ v198[v191 ^ 0xA3] ^ 0x99;
  *(v159 + *(v84 - 216)) = ((v197[BYTE2(v173) ^ 0x16] ^ 0xE0) + (BYTE2(v173) ^ 0x93) + 85 - 2 * ((v197[BYTE2(v173) ^ 0x16] ^ 0x60) & ((BYTE2(v173) ^ 0x93) + 85))) ^ 0x37;
  *(v159 + *(v84 - 184)) = ((HIBYTE(v195) ^ 0x46) + v194[HIBYTE(v195) ^ 0x86] + 78) ^ 0xC;
  *(v159 + *(v84 - 248)) = ((BYTE2(v196) ^ 0x73) + 85) ^ 0x6D ^ v197[BYTE2(v196) ^ 0xF6];
  *(v159 + *(v84 - 168)) = ((BYTE3(v173) ^ 0xD8) + v194[(v173 >> 24) ^ 0x18] + 78) ^ 0x3E;
  LODWORD(v194) = (((*(v84 - 236) ^ 0x240AAD04) - 604679428) ^ ((*(v84 - 236) ^ 0x37BBD29A) - 935056026) ^ ((*(v84 - 236) ^ 0x1D25C1B6) - 489013686)) - 2071425617;
  v199 = (v194 ^ 0x8CEBC01) & (2 * (v194 & 0x8A0C3089)) ^ v194 & 0x8A0C3089;
  LODWORD(v175) = (2 * (v194 ^ 0xCC6BC11)) & 0x86CA8C98 ^ 0x824A8488 ^ ((2 * (v194 ^ 0xCC6BC11)) ^ 0xD951930) & (v194 ^ 0xCC6BC11);
  v200 = (4 * v199) & v175 ^ v199 ^ ((4 * v199) & 0x408408 | 0x20A0000);
  LODWORD(v175) = (4 * v175) & 0x86CA8C98 ^ 0x84C08C98 ^ ((4 * v175) ^ 0x1B2A3260) & v175;
  v201 = (16 * v200) & 0x86CA8C90 ^ v200 ^ ((16 * v200) ^ 0x20A00000) & v175;
  LODWORD(v175) = (16 * v175) & 0x86CA8C80 ^ 0x82420418 ^ ((16 * v175) ^ 0x6CA8C980) & v175;
  v202 = v201 ^ (v201 << 8) & 0x86CA8C00 ^ ((v201 << 8) ^ 0x8A000000) & v175 ^ 0x6408C98;
  LODWORD(v194) = v194 ^ (2 * ((v202 << 16) & 0x6CA0000 ^ v202 ^ ((v202 << 16) ^ 0xC980000) & ((v175 << 8) & 0x6CA0000 ^ 0x4420000 ^ ((v175 << 8) ^ 0x4A8C0000) & v175)));
  LODWORD(v175) = (((v194 ^ 0xDF60EFE7) - 1602058358) ^ ((v194 ^ 0x820CDCB) + 2009245094) ^ ((v194 ^ 0x59C90B95) + 640377852)) + 915105856;
  v203 = LODWORD(STACK[0x2E0]) ^ (v175 < 0x27F6AA18);
  v204 = v175 < *(v84 - 144);
  if (v203)
  {
    v204 = STACK[0x2E0];
  }

  return (*(STACK[0x2A0] + 8 * ((975 * (v204 ^ 1)) ^ v172)))();
}

uint64_t sub_10031D690@<X0>(int a1@<W8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = STACK[0x72D0];
  v8 = *v1;
  v9 = STACK[0xF18];
  STACK[0x3AD0] = *(STACK[0xF18] + 8 * a1);
  STACK[0x4880] = v6;
  STACK[0x7580] = v5;
  LODWORD(STACK[0x27BC]) = v7;
  v10 = STACK[0x7690];
  v11 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x3500] = v11;
  STACK[0x3FB8] = (v11 + 24);
  STACK[0x7690] = v10 + 1792;
  STACK[0x48F8] = v4;
  if (v8)
  {
    v12 = v4 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  return (*(v9 + 8 * ((v13 * (((v3 - 14771) ^ 0x892A) - 37562 + ((v3 - 14771) | 0xD44))) ^ v3)))();
}

uint64_t sub_10031D7A4()
{
  v1 = STACK[0xF10] + 5436;
  v2 = STACK[0x67E0];
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))(*(STACK[0x67E0] + 752));
  *(v2 + 752) = 0;
  *(v2 + 760) = v0;
  return (*(v3 + 8 * v1))(v4);
}

void sub_10031D884()
{
  if (v0 == 1127539829)
  {
    v1 = -371865839;
  }

  else
  {
    v1 = 371891401;
  }

  *(v2 + 24) = v1;
}

uint64_t sub_10031D920(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  STACK[0x53C8] = a1;
  v2 = STACK[0x4088];
  STACK[0x8B38] = a1;
  LODWORD(STACK[0x3BA4]) = -1650567431;
  LODWORD(STACK[0x5A14]) = (v1 ^ 0x34D4) + v2 - ((2 * v2) & 0xD3AB8E22) - 371871109;
  LODWORD(STACK[0x8F84]) = 1116217835;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10031DA48@<X0>(char a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v13 = v8 + v7 + (v9 ^ v5);
  *(v10 + v13) = *(v11 + v13) ^ *(a3 + (v13 & 0xF)) ^ *((v13 & 0xF) + v3 + 1) ^ *((v13 & 0xF) + v4 + 2) ^ (-5 * (v13 & 0xF)) ^ a1;
  return (*(v12 + 8 * (((v13 != 0) * a2) ^ v6)))();
}

uint64_t sub_10031DAA8()
{
  LODWORD(STACK[0x1540]) = v1;
  v2 = LODWORD(STACK[0x4F80]) - (((v0 - 454221041) & 0x1B12D9FF ^ 0xD3AB0668) & (2 * LODWORD(STACK[0x4F80]))) - 371865839;
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v2;
  LODWORD(STACK[0x35EC]) = 1693393379;
  return (*(STACK[0xF18] + 8 * (v0 - 29050)))();
}

uint64_t sub_10031DB20()
{
  v0 = STACK[0xF10] - 15330;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(STACK[0x2E40]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10031DB58()
{
  v0 = STACK[0xF10] - 11865;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(STACK[0x3548]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10031DBC8@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  a7 = a1;
  a6 = (v10 + 6330) ^ (297845113 * (((&a6 | 0xDDE26E6C) - (&a6 & 0xDDE26E68)) ^ 0xAAD172F2));
  v11 = (*(v9 + 8 * (v10 ^ 0xBD37)))(&a6);
  *(v7 + v8) = 0;
  return (*(v9 + 8 * v10))(v11);
}

uint64_t sub_10031DC54()
{
  STACK[0x9028] = 0;
  LODWORD(STACK[0x7788]) = -371865839;
  return (*(STACK[0xF18] + 8 * (v0 + 121)))();
}

uint64_t sub_10031DC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LODWORD(STACK[0x825C]) = v3;
  LODWORD(STACK[0x3FA8]) = STACK[0xEB0];
  LODWORD(STACK[0x659C]) = STACK[0xEC0];
  LODWORD(STACK[0x1370]) = STACK[0xED0];
  LODWORD(STACK[0x5D04]) = -371865839;
  LODWORD(STACK[0x8A44]) = -371865839;
  return (*(STACK[0xF18] + 8 * v4))(a1, a2, a3);
}

uint64_t sub_10031DCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0xF10];
  LODWORD(STACK[0x9FD4]) = v4;
  v6 = *(STACK[0x80C8] + 32) + 643837085;
  v7 = ((v6 ^ 0x2E08F21E) - 141090492) ^ v6 ^ ((v6 ^ 0x4CEA70D3) - 1787452529) ^ ((v6 ^ 0xBF7D5990) + 1726122702) ^ ((v6 ^ 0xFBFFF7FF) + 576726179);
  LODWORD(STACK[0x9FE0]) = v7 ^ 0x568392B0;
  v8 = 0x18 % (v7 ^ 0x26602CA2) - ((2 * (0x18 % (v7 ^ 0x26602CA2))) & 0x26) + 1046982195;
  return (*(STACK[0xF18] + 8 * (v5 - 28300)))(a1, a2, a3, a4, (((v8 ^ 0xFF8D953) - 267966803) ^ ((v8 ^ 0x6C0148BA) - 1812023482) ^ ((v8 ^ 0x5D9E3FDA) - 1570652122)) + 2124824702);
}

uint64_t sub_10031DE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, int a3@<W5>, uint64_t a4@<X8>, int8x16_t a5@<Q4>, int8x16_t a6@<Q5>)
{
  v11 = (a1 + ((a4 + a2) & v6));
  v12 = vaddq_s8(vsubq_s8(*v9, vandq_s8(vaddq_s8(*v9, *v9), a6)), a5);
  *v11 = vaddq_s8(vsubq_s8(v9[-1], vandq_s8(vaddq_s8(v9[-1], v9[-1]), a6)), a5);
  v11[1] = v12;
  return (*(v10 + 8 * (((v7 != 0) * a3) ^ v8)))();
}

uint64_t sub_10031DEE0()
{
  STACK[0x10EE0] = STACK[0x83D0];
  LODWORD(STACK[0x10ED8]) = v0 + 193924789 * ((&STACK[0x10000] + 3800) ^ 0xB6BB3266) - 32304;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16307)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 - 13163)))(v2);
}

uint64_t sub_10031DF80@<X0>(int a1@<W0>, char a2@<W1>, int a3@<W2>, char a4@<W3>, int a5@<W8>)
{
  v18 = *(STACK[0xF18] + 8 * v16);
  *(v12 + (v17 + v5)) = (v17 * v6 + v7) ^ HIBYTE(a5) ^ *(v13 + (v17 + v5)) ^ *(v14 + (v17 + v5)) ^ *(v15 + (v17 + v5) + 1) ^ v8;
  *(v12 + (v17 + v9)) = (v17 * v6 + v10) ^ BYTE2(a5) ^ *(v13 + (v17 + v9)) ^ *(v14 + (v17 + v9)) ^ *((v17 + v9) + v15 + 1) ^ v11;
  *(v12 + (v17 + a1)) = (v17 * v6 + a2) ^ BYTE1(a5) ^ *(v13 + (v17 + a1)) ^ *(v14 + (v17 + a1)) ^ *(v15 + (v17 + a1) + 1) ^ 0xE3;
  *(v12 + (v17 + a3)) = a5 ^ (v17 * v6 + a4) ^ *(v13 + (v17 + a3)) ^ *(v14 + (v17 + a3)) ^ *((v17 + a3) + v15 + 1) ^ 0xF7;
  return v18();
}

uint64_t sub_10031E0D4()
{
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((~(&STACK[0x10000] + 3800) & 0x38D41B7F | (&STACK[0x10000] + 3800) & 0xC72BE480) ^ 0xDEF200B0) + 296753103;
  STACK[0x10ED8] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16271)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 - 916)))(v2);
}

uint64_t sub_10031E160()
{
  v1 = STACK[0xF10] - 34987;
  *STACK[0x7980] = (((v0 ^ 0x7A9F840F85A6F2D5) - 0x7A9F840F85A6F2D5) ^ ((v0 ^ 0x41202D33C7FCC20ALL) - 0x41202D33C7FCC20ALL) ^ ((v0 ^ 0x3BBFA93CAB8FF7CELL) - 0x3BBFA93CAB8FF7CELL)) + 0x63763DED970C0EB8;
  LODWORD(STACK[0x6134]) += 4;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x27C7)))();
}

uint64_t sub_10031E270()
{
  v1 = STACK[0xF18];
  STACK[0x6F00] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 15548 + v0 + 1964)))();
}

uint64_t sub_10031E2DC()
{
  STACK[0x10EE0] = *(v1 + 8);
  LODWORD(STACK[0x10ED8]) = (v0 - 1762639067) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x5D100D55) - ((&STACK[0x10000] + 3800) & 0x5D100D50)) ^ 0x6C11C071));
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0xFED3)))(&STACK[0x10ED8]);
  STACK[0x4E78] = v1;
  STACK[0x64A0] = STACK[0x7460];
  LODWORD(STACK[0x363C]) = STACK[0x3E5C];
  LODWORD(STACK[0x5898]) = -2141005941;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_10031E390()
{
  STACK[0x10EE8] = &STACK[0x3904];
  LOWORD(STACK[0x10EE0]) = 23473 * ((-2 - ((~(&STACK[0x10000] + 3800) | 0xD6D9) + ((&STACK[0x10000] + 3800) | 0x2926))) ^ 0x1BFD) + 18064;
  LODWORD(STACK[0x10ED8]) = (v0 + 12328) ^ (906386353 * ((-2 - ((~(&STACK[0x10000] + 3800) | 0x70C6D6D9) + ((&STACK[0x10000] + 3800) | 0x8F392926))) ^ 0x41C71BFD));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xC84C)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 ^ 0x9FBD ^ (3 * (v0 ^ 0x2C94)))))(v2);
}

uint64_t sub_10031E4B8(int a1, unsigned int a2, int a3, int a4)
{
  v8 = v5 < v7;
  if (v8 == v6 + a3 < ((v4 + a1) & a2) + a4)
  {
    v8 = v6 + a3 < v5;
  }

  return (*(STACK[0xF18] + 8 * ((14 * v8) ^ v4)))();
}

uint64_t sub_10031E508()
{
  v2 = 3655 * ((v1 - 1297214538) & 0x4D51C9DF ^ 0x1DD);
  LODWORD(STACK[0xED0]) = v2;
  return (*(STACK[0xF18] + 8 * ((58762 * (v0 == v2 - 644836518)) ^ v1)))();
}

uint64_t sub_10031E608(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int64x2_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8)
{
  v25.i64[0] = v8 + v10 - 3;
  v25.i64[1] = v8 + v10 - 4;
  v26.i64[0] = v8 + v10 + 1;
  v26.i64[1] = v8 + v10;
  v27.i64[0] = v8 + v10 + 3;
  v27.i64[1] = v8 + v10 + 2;
  v28.i64[0] = v8 + v10 - 1;
  v28.i64[1] = v8 + v10 + v12 + 4;
  v29 = vandq_s8(v28, a1);
  v30 = vandq_s8(v27, a1);
  v31 = vandq_s8(v26, a1);
  v32 = vandq_s8(v25, a1);
  v33 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL), a3);
  v34 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL), a3);
  v35 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL), a3);
  v36 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL), a3);
  v37 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v35, v35), a4), v35), a5);
  v38 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v36, v36), a4), v36), a5);
  v39 = veorq_s8(v38, a6);
  v40 = veorq_s8(v37, a6);
  v41 = veorq_s8(v37, a7);
  v42 = veorq_s8(v38, a7);
  v43 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), v41), a8);
  v44 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), v42), a8);
  v45 = vsraq_n_u64(vshlq_n_s64(v41, 3uLL), v41, 0x3DuLL);
  v46 = veorq_s8(v44, vsraq_n_u64(vshlq_n_s64(v42, 3uLL), v42, 0x3DuLL));
  v47 = veorq_s8(v43, v45);
  v48 = vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL);
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), v47);
  v50 = veorq_s8(vaddq_s64(v48, v46), v14);
  v51 = vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL);
  v52 = vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL);
  v53 = veorq_s8(v49, v14);
  v54 = veorq_s8(v53, v52);
  v55 = veorq_s8(v50, v51);
  v56 = vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v55);
  v58 = veorq_s8(vaddq_s64(v56, v54), v15);
  v59 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v60 = veorq_s8(v57, v15);
  v61 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v62 = veorq_s8(v58, v59);
  v63 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v62);
  v65 = veorq_s8(vaddq_s64(v63, v61), v16);
  v66 = veorq_s8(v64, v16);
  v67 = vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL);
  v68 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v69 = veorq_s8(v65, v67);
  v70 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v69);
  v72 = vaddq_s64(v70, v68);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v72, v72), v17), v72), v18), v19);
  v74 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v75 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v71, v71), v17), v71), v18), v19);
  v76 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v77 = veorq_s8(v73, v74);
  v78 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v79 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v77);
  v80 = veorq_s8(vaddq_s64(v78, v76), v20);
  v81 = veorq_s8(v79, v20);
  v82 = vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL);
  v83 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v84 = veorq_s8(v80, v82);
  v85 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v86 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v87 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v34, v34), a4), v34), a5);
  v88 = vaddq_s64(v86, v84);
  v89 = vaddq_s64(v85, v83);
  v123.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v88, v88), v21), v88), v22), v23), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), a2)));
  v123.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v89, v89), v21), v89), v22), v23), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), a2)));
  v90 = veorq_s8(v87, a6);
  v91 = veorq_s8(v87, a7);
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91), a8);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93), v14);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v96 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95), v15);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), v16);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99);
  v101 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v100, v100), v17), v100), v18), v19);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), v20);
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL)));
  v105 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v33, v33), a4), v33), a5);
  v123.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v104, v104), v21), v104), v22), v23), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), a2)));
  v106 = veorq_s8(v105, a6);
  v107 = vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL);
  v108 = veorq_s8(v105, a7);
  v109 = veorq_s8(vaddq_s64(v107, v108), a8);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v14);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), v15);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v16);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v117, v117), v17), v117), v18), v19);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v20);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL)));
  v123.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v121, v121), v21), v121), v22), v23), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), a2)));
  *(v8 + v10 - 4) = vrev64_s8(*&vqtbl4q_s8(v123, v24));
  return (*(STACK[0xF18] + 8 * (((v11 == v10) * v13) ^ v9)))();
}

uint64_t sub_10031EB58()
{
  STACK[0x2458] = STACK[0x9420] + 69;
  v1 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 49455) ^ 0xD29F) + v0)))();
}

uint64_t sub_10031EC68()
{
  v1.n128_u64[0] = 0xFAFAFAFAFAFAFAFALL;
  v1.n128_u64[1] = 0xFAFAFAFAFAFAFAFALL;
  return (*(STACK[0xF18] + 8 * (v0 - 13785)))(v1);
}

uint64_t sub_10031ECDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = STACK[0xF18];
  v12 = (*(STACK[0xF18] + 8 * (v10 ^ 0x61E7u)))(*(v8 + v9 * a8));
  return (*(v11 + 8 * (((LODWORD(STACK[0xED0]) + (v12 ^ 0x7DFDCFDF) + ((2 * v12) & 0xFBFB9FBE) + 1585868551 == ((v10 - 834988636) & 0x31C4FD7E ^ 0xDC8483A8)) * ((v10 - 7920) ^ 0x8B59)) ^ v10)))();
}

uint64_t sub_10031EDD4@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * (a1 - 12755));
  return (*(v1 + 8 * ((((a1 + 4371) | 0x2028) - 21495) ^ (a1 - 12755))))();
}

uint64_t sub_10031EF34()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 8645)))();
  *(v0 + 32) = v3;
  return (*(v2 + 8 * (((((v3 == 0) ^ (v1 - 116)) & 1) * (v1 - 43181)) ^ v1)))();
}

uint64_t sub_10031EF94@<X0>(_DWORD *a1@<X3>, int a2@<W8>)
{
  *a1 = a2 + 1;
  LODWORD(STACK[0x10EE0]) = v3 + 155453101 * ((((&STACK[0x10000] + 3800) | 0xAF62CDE7) - ((&STACK[0x10000] + 3800) & 0xAF62CDE0)) ^ 0x4944D628) + 296752799;
  STACK[0x10ED8] = 0;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v3 + 15967)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (((((v3 ^ 0x80C8) - 20) ^ 0xC8B) * (v2 != -371865832)) ^ v3)))(v5);
}

uint64_t sub_10031F04C()
{
  *(v3 + 24) = v4;
  v5 = STACK[0xD00];
  *(*(STACK[0xD00] + 24) + 32) = *(STACK[0xD00] + 32);
  *(STACK[0x9D0] + 40) = *(v5 + 8) + *(STACK[0x9D0] + 40) - 0x3CE25E0EC5200378;
  v6 = LOBYTE(STACK[0x622F]);
  *(v5 + 8) = 0x79C4BC1D8A4006F0 - *(v5 + 8);
  *(v5 + 16) = (((v6 ^ 0xAD2EF8269F23236DLL) + 0x52D107D960DCDC93) ^ ((v6 ^ 0xE22BFF0560B5AF4CLL) + 0x1DD400FA9F4A50B4) ^ ((v6 ^ (327 * (v0 ^ 0x6F34u) + 0x4F050723FF960122)) - 0x4F050723FF968C5DLL)) + 0x73B4913AF7C22BA0;
  *STACK[0xAF0] = 0x3CE25E0EC5200378;
  STACK[0x26A0] = v1 + 0x375CE7F1CF8B91A6;
  v7 = *(STACK[0xF18] + 8 * (v0 ^ (209 * (v1 != 0xC8A3180E30746E5ALL))));
  STACK[0xDA0] = &STACK[0x622C];
  STACK[0xB30] = v2;
  STACK[0xB20] = v2;
  STACK[0xD20] = v5;
  STACK[0xDB0] = v2;
  return v7();
}

uint64_t sub_10031F1C0()
{
  v0 = (STACK[0xF10] + 1867844768) & 0x90AAFA7D;
  v1 = STACK[0xF10] - 33946;
  STACK[0x1C78] = STACK[0x1418];
  v2 = STACK[0xF18];
  STACK[0x5040] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 - 32267 + v0)))();
}

uint64_t sub_10031F230()
{
  if (*v1 == 2)
  {
    v2 = -371865836;
  }

  else
  {
    v2 = -371865840;
  }

  v3 = v1[36];
  STACK[0x5A88] = (v1 + 36);
  v4 = (v3 | ((v3 < 0x2D) << 8)) + 989765201 + (((v2 ^ 0x92BFDFF4) + 1832919052) ^ ((v2 ^ 0xEFFD8DF6) + 268595722) ^ (((((2416 * (v0 ^ 0x7E94) - 31109) | 0x8A10) - 1802040872) ^ v2) + 1802005229));
  v5 = (v4 ^ 0x8E96A1A5) & (2 * (v4 & 0xAED729A4)) ^ v4 & 0xAED729A4;
  v6 = ((2 * (v4 ^ 0xDFB8E1A5)) ^ 0xE2DF9002) & (v4 ^ 0xDFB8E1A5) ^ (2 * (v4 ^ 0xDFB8E1A5)) & 0x716FC800;
  v7 = v6 ^ 0x11204801;
  v8 = (v6 ^ 0x604D8000) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0xC5BF2004) & v7 ^ (4 * v7) & 0x716FC800;
  v10 = v8 ^ 0x716FC801 ^ (v9 ^ 0x412F0000) & (16 * v8);
  v11 = (16 * (v9 ^ 0x3040C801)) & 0x716FC800 ^ 0x61034801 ^ ((16 * (v9 ^ 0x3040C801)) ^ 0x16FC8010) & (v9 ^ 0x3040C801);
  v12 = (v10 << 8) & 0x716FC800 ^ v10 ^ ((v10 << 8) ^ 0x6FC80100) & v11;
  v13 = v4 ^ (2 * ((v12 << 16) & 0x716F0000 ^ v12 ^ ((v12 << 16) ^ 0x48010000) & ((v11 << 8) & 0x716F0000 ^ 0x10270000 ^ ((v11 << 8) ^ 0x6FC80000) & v11)));
  LODWORD(STACK[0x62D0]) = 545849448;
  v14 = (((v13 ^ 0x1B4E93EA) + 66982563) ^ ((v13 ^ 0x963F398) + 299070161) ^ ((v13 ^ 0x1CB7D9D4) + 67590301)) - 2059426789;
  v15 = (v14 ^ 0x52943201) & (2 * (v14 & 0x64962344)) ^ v14 & 0x64962344;
  v16 = ((2 * (v14 ^ 0x52987081)) ^ 0x6C1CA78A) & (v14 ^ 0x52987081) ^ (2 * (v14 ^ 0x52987081)) & 0x360E53C4;
  v17 = v16 ^ 0x12025045;
  v18 = (v16 ^ 0x24080300) & (4 * v15) ^ v15;
  v19 = ((4 * v17) ^ 0xD8394F14) & v17 ^ (4 * v17) & 0x360E53C4;
  v20 = (v19 ^ 0x10084300) & (16 * v18) ^ v18;
  v21 = ((16 * (v19 ^ 0x260610C1)) ^ 0x60E53C50) & (v19 ^ 0x260610C1) ^ (16 * (v19 ^ 0x260610C1)) & 0x360E53C0;
  v22 = v20 ^ 0x360E53C5 ^ (v21 ^ 0x20041000) & (v20 << 8);
  v23 = v14 ^ (2 * ((v22 << 16) & 0x360E0000 ^ v22 ^ ((v22 << 16) ^ 0x53C50000) & (((v21 ^ 0x160A4385) << 8) & 0x360E0000 ^ 0x300C0000 ^ (((v21 ^ 0x160A4385) << 8) ^ 0xE530000) & (v21 ^ 0x160A4385))));
  LODWORD(STACK[0x93CC]) = v23 ^ 0xC55743DF;
  v24 = STACK[0xF18];
  v25 = (*(STACK[0xF18] + 8 * (v0 ^ 0xB401)))(v23 ^ 0x2C8284CEu);
  STACK[0x42B8] = v25;
  return (*(v24 + 8 * ((51 * (v25 == 0)) ^ v0)))();
}

uint64_t sub_10031F6F4()
{
  v2 = *(v0 + 1);
  STACK[0xA968] = v0 + 1;
  return (*(STACK[0xF18] + 8 * (((v2 == 2) * (((v1 - 859232112) & 0x3336FBFF) + 6003)) ^ v1)))();
}

uint64_t sub_10031F74C()
{
  v1 = (STACK[0xF10] - 35111) | 2;
  v2 = STACK[0xF10] - 16796;
  v3 = LODWORD(STACK[0x6134]) + v0 + (((*(STACK[0x7980] + 168) ^ 0xDA0C0A3C) + 636745156) ^ ((*(STACK[0x7980] + 168) ^ 0x17436443) - 390292547) ^ ((*(STACK[0x7980] + 168) ^ 0x249AA96E) - 614115694));
  LODWORD(STACK[0x6134]) = v3;
  v4 = (v3 + (v1 ^ 0x9955645A)) + 4 > STACK[0xB7F0];
  return (*(STACK[0xF18] + 8 * (((16 * v4) | (32 * v4)) ^ v2)))();
}

uint64_t sub_10031F820()
{
  v1 = STACK[0xF10] - 1881;
  v2 = STACK[0x1800];
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(*(STACK[0x1800] + 672));
  *(v2 + 672) = 0;
  *(v2 + 680) = v0;
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_10031F8A8()
{
  *(STACK[0x4438] + 36) = *STACK[0x39C0];
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 3968)))();
}

uint64_t sub_10031FB7C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 8 * (a1 - 17082));
  *(v5 - 240) = v4;
  return v6();
}

uint64_t sub_10031FBB8@<X0>(int a1@<W8>)
{
  v10 = v7 - 1;
  *(v9 + v10) ^= *(v1 + (v10 & 0xF)) ^ *(v3 + (v10 & 0xF)) ^ ((v10 & 0xF) * v4) ^ *(v2 + (v10 & 0xF)) ^ v5;
  return (*(v8 + 8 * (((v10 == 0) * v6) ^ a1)))();
}

uint64_t sub_10031FC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if ((v13 - 1753194794) <= 0x40)
  {
    v16 = 64;
  }

  else
  {
    v16 = v13 - 1753194794;
  }

  return (*(v15 + 8 * ((81 * (v16 - v13 + ((v14 + 3670) | 0x2100u) + 1753182554 < ((v14 - 152571280) & 0xC0CBFDFD) + 1060900663)) ^ (v14 + 25665))))(a1, a2, a3, a13);
}

uint64_t sub_10031FC94()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xB274)))();
  STACK[0x7D78] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10031FD08(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  return (*(STACK[0xF18] + 8 * ((20174 * (v1 != ((v1 + 1277483628) & 0xB5C0D546) + 1013656092)) ^ (v1 + 31803863))))();
}

uint64_t sub_10031FDD4()
{
  v1 = STACK[0xF10] - 31527;
  v2 = STACK[0xF10] + 6322;
  *(STACK[0x7980] + 116) = v0;
  v3 = STACK[0x6134];
  LODWORD(STACK[0x6134]) += 4;
  v4 = (((v0 ^ 0x9154293) - 152388243) ^ ((v0 ^ 0x483F3FF8) - 1212104696) ^ ((v0 ^ 0xA8FFBA7A) + v1 + 1459631474)) + v3 - 236164273;
  v5 = v4 < 0x6EC13DEE;
  v6 = v4 > LODWORD(STACK[0xB7EC]) + 1858158062;
  if (LODWORD(STACK[0xB7EC]) > 0x913EC211 != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((2024 * v6) ^ v2)))();
}

uint64_t sub_10031FF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v66 + 24) = v67;
  *(v65[3] + 32) = v65[4];
  *(a4 + 8) += v65[1] + v63;
  return (*(a63 + 8 * v64))();
}

uint64_t sub_10031FF64()
{
  v1 = STACK[0x4758];
  LODWORD(STACK[0x10ED8]) = v0 - 1012831759 * (((&STACK[0x10ED8] | 0xF5053EBB) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0xAFAC140)) ^ 0xE5962831) + 1964;
  STACK[0x10EE0] = v1;
  STACK[0x10EF0] = &STACK[0x7AD0];
  STACK[0x10EF8] = &STACK[0x1AFC];
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0x43BB)))(&STACK[0x10ED8]);
  v3 = STACK[0x10EE8];
  v4 = STACK[0x4758];
  LODWORD(STACK[0x10ED8]) = (v0 - 28862) ^ (155453101 * ((~&STACK[0x10ED8] & 0xFA5D1E46 | &STACK[0x10ED8] & 0x5A2E1B8) ^ 0x1C7B0589));
  STACK[0x10EE0] = v4;
  v5 = (*(v2 + 8 * (v0 + 16884)))(&STACK[0x10ED8]);
  LODWORD(STACK[0xAD84]) = v3;
  return (*(v2 + 8 * (((v3 == 5041 * (v0 ^ 0x88EA) - 371875921) * ((v0 ^ 0x88EA) + 820)) ^ v0)))(v5);
}

uint64_t sub_100320178@<X0>(unsigned int a1@<W1>, int a2@<W2>, int a3@<W3>, unsigned int a4@<W4>, unsigned int a5@<W5>, int a6@<W6>, uint64_t a7@<X8>)
{
  v10 = v8 < a1;
  if (v10 == v7 > ((v9 + a2) ^ a5))
  {
    v10 = v7 + ((v9 + a3) ^ a4) < v8;
  }

  return (*(a7 + 8 * ((!v10 * a6) ^ v9)))();
}

uint64_t sub_100320228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  STACK[0x5730] = 0;
  STACK[0x72F0] = 0;
  LODWORD(STACK[0x3110]) = -371865839;
  return (*(STACK[0xF18] + 8 * (((v3 == ((a3 + 1631530851) & 0x9EC0A7AF ^ 0xE9D5C4B7)) * (((a3 + 1631530851) ^ 0x613FD0CC) - 11508)) ^ a3)))(a1, a2, 371891535);
}

uint64_t sub_1003202E0@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 & 0x1FA1DD3AALL) + (a1 ^ 0xCFFEFC55FD0EE9D5);
  STACK[0xA798] = v3 - 0x7B8CD7E51C3799E3 + (v2 ^ 0x2DC5u) + 34892;
  v3 += 0x300103AA0F101392;
  v4 = STACK[0x9978] - 0x54712624E2258306;
  v5 = v3 < 0xC1EFD63;
  v6 = v3 > v4;
  if (v5 != v4 < 0xC1EFD63)
  {
    v6 = v5;
  }

  if (v6)
  {
    v7 = 371891407;
  }

  else
  {
    v7 = STACK[0xA750];
  }

  LODWORD(STACK[0xA7A0]) = v7;
  v8 = v7 == -371865839;
  v9 = v7 != -371865839;
  v10 = v8;
  LOBYTE(STACK[0xA7A7]) = v10;
  return (*(STACK[0xF18] + 8 * (((4 * v9) | (16 * v9)) ^ v2)))();
}

uint64_t sub_1003203E8()
{
  STACK[0x5A30] = STACK[0xED0];
  STACK[0x2AA8] = &STACK[0x5A28];
  return (*(STACK[0xF18] + 8 * (v0 + 3359)))();
}

uint64_t sub_100320424(uint64_t a1, uint64_t a2)
{
  STACK[0x5198] = 0;
  LODWORD(STACK[0x42B0]) = -371865839;
  LODWORD(STACK[0x7314]) = -371865839;
  return (*(STACK[0xF18] + 8 * ((37357 * (v3 == ((v2 - 35259) | 0x1846) - 371872438)) ^ (v2 - 21500))))(a1, a2, 371891535);
}

uint64_t sub_100320524()
{
  v0 = (STACK[0xF10] + 1919736895) & 0x8D92FFFD;
  v1 = STACK[0xF10] - 34540;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 - 21468 + v0)))();
}

uint64_t sub_1003206C4()
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
  STACK[0xC330] = 0;
  STACK[0xC338] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC330] | v10);
  *(&STACK[0xC330] | v10) = 0;
  LOBYTE(STACK[0xC337]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC330] | v12);
  *(&STACK[0xC330] | v12) = STACK[0xC336];
  LOBYTE(STACK[0xC336]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC330] | v14);
  *(&STACK[0xC330] | v14) = STACK[0xC335];
  LOBYTE(STACK[0xC335]) = v15;
  v16 = STACK[0xC330];
  LOBYTE(STACK[0xC330]) = STACK[0xC334];
  LOBYTE(STACK[0xC334]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC330] | v17);
  *(&STACK[0xC330] | v17) = STACK[0xC333];
  LOBYTE(STACK[0xC333]) = v18;
  v19 = STACK[0xC331];
  LOBYTE(STACK[0xC332]) = STACK[0xC330];
  LOWORD(STACK[0xC330]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC330] = vmla_s32(v22, STACK[0xC330], vdup_n_s32(0x1000193u));
  STACK[0xC338] ^= STACK[0xC330];
  STACK[0xC338] = vmul_s32(vsub_s32(STACK[0xC338], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC33A];
  LOWORD(STACK[0xC339]) = STACK[0xC338];
  LOBYTE(STACK[0xC338]) = v23;
  v24 = (&STACK[0xC338] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC33B];
  LOBYTE(STACK[0xC33B]) = v19;
  LOBYTE(v24) = STACK[0xC338];
  LOBYTE(STACK[0xC338]) = STACK[0xC33C];
  LOBYTE(STACK[0xC33C]) = v24;
  v25 = (&STACK[0xC338] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC33D];
  LOBYTE(STACK[0xC33D]) = v24;
  v26 = (&STACK[0xC338] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC33E];
  LOBYTE(STACK[0xC33E]) = v25;
  v27 = (&STACK[0xC338] | v10);
  v28 = *v27;
  *v27 = STACK[0xC33F];
  LOBYTE(STACK[0xC33F]) = v28;
  v29 = STACK[0xC338];
  v30 = (553300517 * STACK[0xC338]) ^ v9;
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
  *STACK[0x940] = STACK[0xC338];
  return (*(STACK[0xF18] + 8 * (v1 - 18966)))(v47, v48);
}

uint64_t sub_100320B54()
{
  v1 = v0 ^ 0x9A4;
  v2 = STACK[0x6D80];
  v3 = (LODWORD(STACK[0x6D8C]) << (v0 ^ 0xB3)) ^ 0x4E82DB55;
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v2;
  LODWORD(STACK[0x655C]) = v3;
  LODWORD(STACK[0x884C]) = 1870238322;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100320BBC()
{
  v1 = STACK[0x604C];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393350;
  return (*(STACK[0xF18] + 8 * (v0 & 0x4AD3F9D1)))();
}

uint64_t sub_100320C08()
{
  v1 = STACK[0xF10] - 9587;
  v2 = STACK[0xF10] - 21155;
  LODWORD(STACK[0x7254]) = v0;
  v3 = *(STACK[0x690] + 20);
  LODWORD(STACK[0x27D8]) = v3;
  LODWORD(STACK[0xA0D4]) = v0;
  STACK[0xA0D8] = STACK[0x5B70];
  return (*(STACK[0xF18] + 8 * ((24606 * ((v3 & (v1 ^ 0x65D8)) == 0)) ^ v2)))();
}

uint64_t sub_100320CC4@<X0>(int a1@<W8>)
{
  *STACK[0x9108] |= 0x2000u;
  LODWORD(STACK[0x66F4]) = a1 - 535934628 + ((v1 + 24245) | 0xA33);
  return (*(STACK[0xF18] + 8 * (v1 + 4287)))();
}

uint64_t sub_100320D20()
{
  LODWORD(STACK[0x2098]) = -371865851;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 7092)))(20);
  STACK[0x15C0] = v2;
  STACK[0x62F8] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (327 * (v0 ^ 0xAE89) - 35627)) ^ v0)))();
}

uint64_t sub_100320D90()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 1677;
  *(STACK[0x7980] + 224) = v0;
  v3 = STACK[0x6134];
  LODWORD(STACK[0x6134]) += 4;
  v4 = v3 - 195861566 + (((v0 ^ 0x5E5EF105) - 1583280389) ^ ((v0 ^ 0xE63A6DCA) + 432378422) ^ (((v1 + 1370542243) ^ v0) - 1370577886));
  v5 = v4 < 0x71283661;
  v6 = v4 > LODWORD(STACK[0xB7EC]) + 1898460769;
  if (LODWORD(STACK[0xB7EC]) > 0x8ED7C99E != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((424 * v6) ^ v2)))();
}

uint64_t sub_100320EFC@<X0>(uint64_t a1@<X2>, int a2@<W3>, uint64_t a3@<X8>, __n128 a4@<Q1>, int8x16_t a5@<Q4>, uint64_t a6@<D5>, int8x16_t a7@<Q6>, int8x16_t a8@<Q7>)
{
  v20 = ~v17 + v13;
  v21 = v20 & 0xF;
  v23.i64[0] = vqtbl4q_s8(*(&a4 - 1), a5).u64[0];
  v23.i64[1] = a6;
  v24 = vrev64q_s8(veorq_s8(veorq_s8(*(v18 + v20), *(v11 + v21 - 15)), veorq_s8(*(a3 + v21 - 15), *(v12 + v21 - 15))));
  v25 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v24, v24, 8uLL), a8), vmulq_s8(v23, a7)));
  *(v16 + v20) = vextq_s8(v25, v25, 8uLL);
  return (*(v19 + 8 * (((a1 + v17 == v15) * a2) ^ v14)))();
}

uint64_t sub_100320FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W5>, uint64_t a6@<X8>, __n128 a7@<Q1>, int8x16_t a8@<Q4>, uint64_t a9@<D5>, int8x16_t a10@<Q6>, int8x16_t a11@<Q7>)
{
  v20 = a4 & (v16 + 15);
  v22.i64[0] = vqtbl4q_s8(*(&a7 - 1), a8).u64[0];
  v22.i64[1] = a9;
  v23 = vrev64q_s8(veorq_s8(veorq_s8(*(v18 + v16), *(v14 + v20 - 15)), veorq_s8(*(v20 + a6 - 10), *(v20 + v13 - 12))));
  v24 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v23, v23, 8uLL), a11), vmulq_s8(v22, a10)));
  *(v17 + v16) = vextq_s8(v24, v24, 8uLL);
  return (*(v19 + 8 * (((a3 == 0) * a5) ^ v15)))(a1, a2, a3 - 16);
}

uint64_t sub_10032107C()
{
  v5 = v2 == -371865846 && v3 == -371866014;
  v7 = v2 == v0 && v3 == ((v1 - 292663222) & 0x11717DFF) - 371876561 || v5;
  return (*(STACK[0xF18] + 8 * ((103 * (v7 ^ 1)) ^ (v1 - 2633))))();
}

uint64_t sub_1003210F0(unsigned int a1)
{
  v1 = ((LODWORD(STACK[0x484C]) - LODWORD(STACK[0x94C0])) ^ 0xE7FE5FBB) + 193632684 + ((2 * (LODWORD(STACK[0x484C]) - LODWORD(STACK[0x94C0]))) & 0xCFFCBF76);
  v2 = v1 < 0xF388F967;
  v3 = a1 + ((STACK[0xF10] + 1603101740) & 0xA07279BE) - 209153983 < v1;
  if (a1 > STACK[0xF10] + 209091421 != v2)
  {
    v3 = v2;
  }

  return (*(STACK[0xF18] + 8 * ((37070 * v3) ^ (STACK[0xF10] - 24547))))();
}

uint64_t sub_1003211C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  *v5 = 0;
  STACK[0x9580] = v4 + 0x38DF971A70995B4DLL;
  *(v4 + 1620) = -371865839;
  STACK[0x8F58] = v4 + 1624;
  *(v4 + 1624) = 0;
  STACK[0x6860] = v4 + 1626;
  *(v4 + 1626) = 0;
  return (*(STACK[0xF18] + 8 * ((43355 * (v3 == ((((a3 - 7740) | 0x1C0) - 371903894) ^ (a3 + 21758)))) ^ a3)))(a1, a2, 371891535);
}

uint64_t sub_1003212A0()
{
  v0 = STACK[0xF10] - 35140;
  v1 = STACK[0xF10] - 33675;
  v2 = STACK[0xF18];
  STACK[0x2630] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 + v1 + 11909)))();
}

uint64_t sub_1003212E4@<X0>(unint64_t a1@<X8>)
{
  STACK[0x1770] = v3;
  STACK[0x5B20] = v2;
  STACK[0x40A0] = a1;
  LODWORD(STACK[0x7C3C]) = -371865839;
  STACK[0x6240] = 0;
  return (*(STACK[0xF18] + 8 * (((a1 == 0) * (v1 ^ 0x5E6D ^ (v1 - 17822))) ^ v1)))();
}

uint64_t sub_10032133C()
{
  v1 = *(STACK[0x4A78] - 0x11709D52AC4979BFLL);
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393402;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100321388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0xF10] - 34879;
  LODWORD(STACK[0x3AC4]) += 4;
  return (*(STACK[0xF18] + 8 * (v6 ^ 0x1487 ^ (15229 * ((v6 ^ 0x68FCED19u) > 0xDC24D74C)))))(a1, a2, a3, a4, a5, a6, &STACK[0xA237]);
}

uint64_t sub_100321568@<X0>(int a1@<W8>)
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
  STACK[0xBF10] = 0;
  STACK[0xBF18] = v1;
  v12 = 16777619 * ((553300517 * v11 + 7) ^ (553300517 * v11)) % 7;
  v13 = 16777619 * ((553300517 * v11 + 6) ^ (553300517 * v11)) % 6;
  v14 = 16777619 * ((553300517 * v11 + 5) ^ (553300517 * v11)) % 5;
  v15 = *(&STACK[0xBF10] | v12);
  *(&STACK[0xBF10] | v12) = STACK[0xBF17];
  v16 = *(&STACK[0xBF10] | v13);
  *(&STACK[0xBF10] | v13) = STACK[0xBF16];
  v17 = *(&STACK[0xBF10] | v14);
  *(&STACK[0xBF10] | v14) = STACK[0xBF15];
  v18 = vdup_n_s32(553300517 * v11);
  v19 = 16777619 * ((553300517 * v11 + 3) ^ (553300517 * v11)) % 3;
  v20.i32[0] = v18.i32[0];
  v20.i32[1] = 553300517 * v11 + 1;
  LOBYTE(STACK[0xBF17]) = v15;
  v21 = veor_s8(vmul_s32(v20, v18), v18);
  LOBYTE(STACK[0xBF16]) = v16;
  LOBYTE(STACK[0xBF15]) = v17;
  v22 = STACK[0xBF10];
  LOBYTE(STACK[0xBF10]) = STACK[0xBF14];
  LOBYTE(STACK[0xBF14]) = v22;
  v23 = *(&STACK[0xBF10] | v19);
  *(&STACK[0xBF10] | v19) = STACK[0xBF13];
  LOBYTE(STACK[0xBF13]) = v23;
  v24 = STACK[0xBF11];
  LOBYTE(STACK[0xBF12]) = STACK[0xBF10];
  LOWORD(STACK[0xBF10]) = v24;
  STACK[0xBF10] = vmla_s32(v21, STACK[0xBF10], vdup_n_s32(0x1000193u));
  v25 = STACK[0xBF18];
  v26 = (553300517 * STACK[0xBF18]) ^ v11;
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
    v56.val[1] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7690), veorq_s8(v27, vmulq_s32(vaddq_s32(v30, v27), vsubq_s32(v30, v27))));
    v56.val[0] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC76A0), veorq_s8(v27, vmulq_s32(vaddq_s32(v31, v27), vsubq_s32(v31, v27))));
    v56.val[2] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7680), veorq_s8(v27, vmulq_s32(vaddq_s32(v29, v27), vsubq_s32(v29, v27))));
    v56.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7670), v27), vmulq_s32(vaddq_s32(v28, v27), vsubq_s32(v28, v27)));
    *(v25 + v2) = vmulq_s8(vqtbl4q_s8(v56, xmmword_100BC7660), v33);
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
  v42 = STACK[0x940];
  do
  {
    v32.i64[0] = *(v40 + v36);
    v55.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v32, xmmword_100BC7690), v38), vmulq_s32(vaddq_s32(v37, v38), vsubq_s32(v37, v38)));
    v55.val[0] = veorq_s8(vqtbl1q_s8(v32, xmmword_100BC76A0), veorq_s8(v38, vmulq_s32(vaddq_s32(v39, v38), vsubq_s32(v39, v38))));
    v32 = vqtbl2q_s8(v55, xmmword_100F52AD0);
    *(v40 + v36) = vmul_s8(*v32.i8, 0x9393939393939393);
    v39 = vaddq_s32(v39, v41);
    v37 = vaddq_s32(v37, v41);
    v36 += 8;
  }

  while (v36 != 8);
  v43 = 72;
  do
  {
    v44 = 16777619 * ((v26 + v43) ^ v26) % v43;
    v45 = *(v25 + 8 * v44) ^ *(v25 + 8 * v43);
    *(v25 + 8 * v43) = v45;
    v46 = *(v25 + 8 * v44) ^ v45;
    *(v25 + 8 * v44) = v46;
    *(v25 + 8 * v43) ^= v46;
    v47 = v43-- + 1;
  }

  while (v47 > 2);
  v48 = *(&STACK[0xBF18] + v12);
  *(&STACK[0xBF18] + v12) = STACK[0xBF1F];
  LOBYTE(STACK[0xBF1F]) = v48;
  v49 = *(&STACK[0xBF18] + v13);
  *(&STACK[0xBF18] + v13) = STACK[0xBF1E];
  LOBYTE(STACK[0xBF1E]) = v49;
  v50 = *(&STACK[0xBF18] + v14);
  *(&STACK[0xBF18] + v14) = STACK[0xBF1D];
  LOBYTE(STACK[0xBF1D]) = v50;
  v51 = STACK[0xBF18];
  LOBYTE(STACK[0xBF18]) = STACK[0xBF1C];
  LOBYTE(STACK[0xBF1C]) = v51;
  v52 = *(&STACK[0xBF18] + v19);
  *(&STACK[0xBF18] + v19) = STACK[0xBF1B];
  LOBYTE(STACK[0xBF1B]) = v52;
  v53 = STACK[0xBF19];
  LOBYTE(STACK[0xBF1A]) = STACK[0xBF18];
  LOWORD(STACK[0xBF18]) = v53;
  STACK[0xBF18] = vmla_s32(v21, STACK[0xBF18], vdup_n_s32(0x1000193u));
  *v42 = STACK[0xBF18] ^ STACK[0xBF10];
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100321B58()
{
  v1 = (&STACK[0x507C] ^ 0x79FE6FFC6F3DFFF3) - 0x79FE6FFC6F3DFFF3 + ((2 * &STACK[0x507C]) & 0xF3FCDFF8DE7BFFE0);
  STACK[0xAE0] = ((v1 % ((v0 - 9562) - 15414)) ^ 0x18EFF15D57FA9EEBLL) + 0x5D2212C5A4BA62BALL + ((2 * (v1 % ((v0 - 9562) - 15414))) & 0x56);
  STACK[0xC40] = (&STACK[0x6B60] ^ 0x7AB777F76E9AE77FLL) - 0x400042120A804444 + ((2 * &STACK[0x6B60]) & 0xF56EEFEEDD35CEF0);
  STACK[0xA40] = (&STACK[0x26A0] ^ 0x4FBAEEBB57773DFFLL) - 0xA10440A50530918 + ((2 * &STACK[0x26A0]) & 0x9F75DD76AEEE7BF0);
  STACK[0xA60] = (&STACK[0x4C98] ^ 0x74FDFFFCBE4BF1BDLL) - 0x4CC24408087184 + ((2 * &STACK[0x4C98]) & 0xE9FBFFF97C97E370);
  STACK[0xA98] = (&STACK[0x6D08] ^ 0xDEFBBFF1F7EBFFFELL) + 0x7FBDFDDE8DBDBCF6 + ((2 * &STACK[0x6D08]) & 0xBDF77FE3EFD7FFF0);
  STACK[0xA50] = (&STACK[0x7B40] ^ 0x3EDBC93DFFFEF7FELL) - 0x2C389198B202402 + ((2 * &STACK[0x7B40]) & 0x7DB7927BFFFDEFF0);
  STACK[0xA70] = (&STACK[0x8B10] ^ 0xFFFB779FF5F9FEFFLL) + 0x53CFCC75DBA76BDELL + ((2 * &STACK[0x8B10]) & 0xFFF6EF3FEBF3FDF0);
  STACK[0xA30] = (&STACK[0x90A0] ^ 0x71DAFD5EFFBE53FBLL) - 0x2198AC5801880280 + ((2 * &STACK[0x90A0]) & 0xE3B5FABDFF7CA7F0);
  v2 = *(STACK[0xF18] + 8 * v0);
  STACK[0xB80] = 634647737 * (((~&STACK[0x10ED8] | 0xDA7EA06264495D46) + (&STACK[0x10ED8] | 0x25815F9D9BB6A2B9)) ^ 0xFF5AF072F6208D44);
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] - 16783;
  LODWORD(STACK[0xAD8]) = v4;
  LODWORD(STACK[0xAD0]) = v4 ^ 0x77B4;
  v5 = (2 * v3) ^ 0x15FDA;
  LODWORD(STACK[0xC20]) = v5;
  v6 = (v5 - 18596) | 0x94B0;
  LODWORD(STACK[0xBE0]) = v3 - 13746;
  LODWORD(STACK[0xBC0]) = v6 + 705255991;
  LODWORD(STACK[0xBD0]) = v6;
  LODWORD(STACK[0xBB0]) = v6 ^ 0x5F20;
  LODWORD(STACK[0xB90]) = v6 ^ 0xD30C;
  LODWORD(STACK[0xBA0]) = (v6 ^ 0xD30C) - 17984;
  v7 = 906386353 * ((((2 * &STACK[0x10ED8]) | 0xF02DC85050B7323ELL) - &STACK[0x10ED8] - 0x7816E428285B991FLL) ^ 0xD69C19E6195A543BLL);
  LODWORD(STACK[0xEA0]) = v3 + 887812004;
  LODWORD(STACK[0xE90]) = (v3 + 887812004) ^ 0x12D4;
  STACK[0xE80] = (-2 - ((~&STACK[0x10ED8] | 0x2D2A6685968798DBLL) + (&STACK[0x10ED8] | 0xD2D5997A69786724))) ^ 0x83A09B4BA78655FFLL;
  LODWORD(STACK[0xE40]) = v3 - 1136701758;
  STACK[0xE70] = (((2 * &STACK[0x10ED8]) | 0xF43C3BDF0B000838) - &STACK[0x10ED8] + 0x5E1E2107A7FFBE4) ^ 0x5494E021B481C938;
  LODWORD(STACK[0xE30]) = v3 - 22459812;
  *&STACK[0xB70] = vdupq_n_s32(0xECC073A8);
  LODWORD(STACK[0xE20]) = v3 - 13735;
  LODWORD(STACK[0xE10]) = v3 + 4158739;
  LODWORD(STACK[0xE00]) = v3 - 513108446;
  LODWORD(STACK[0xDF0]) = v3 ^ 0x8B23;
  v8.i64[0] = 0x100000001;
  v8.i64[1] = 0x100000001;
  *&STACK[0xCE0] = vdupq_n_s32(0xF66039D4);
  *&STACK[0xCD0] = vnegq_f32(v8);
  STACK[0xB60] = &STACK[0x10ED8] ^ 0xAE8AFDCE3101CD24;
  LODWORD(STACK[0xAC8]) = v3 - 30524;
  LODWORD(STACK[0xAC0]) = (v3 - 30524) ^ 0xA683;
  LODWORD(STACK[0xAB8]) = v3 + 10817;
  LODWORD(STACK[0xDE0]) = v3 - 25803;
  LODWORD(STACK[0xDD0]) = v3 - 18163;
  LODWORD(STACK[0xDC0]) = v3 - 25911;
  STACK[0xEB0] = v7;
  STACK[0xE60] = 1741996198 - v7;
  return v2();
}

uint64_t sub_100322150()
{
  LODWORD(STACK[0xED0]) = (v1 - 8203) | 0x2000;
  v5 = 634647737 * ((~&STACK[0x10ED8] & 0xA1916F9A | &STACK[0x10ED8] & 0x5E6E9060) ^ 0xCC074066);
  STACK[0x10EF0] = v4;
  LODWORD(STACK[0x10EE8]) = v5 ^ 0x28D20269;
  LOWORD(STACK[0x10EF8]) = v5 + 11298;
  LODWORD(STACK[0x10ED8]) = v1 - v5 + 13286;
  STACK[0x10EE0] = v2;
  v6 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 + 42097)))(&STACK[0x10ED8]);
  v7 = 139493411 * (((&STACK[0x10ED8] | 0x6C8771CF) + (~&STACK[0x10ED8] | 0x93788E30)) ^ 0x60AA908B);
  STACK[0x10EE0] = v3;
  STACK[0x10ED8] = v2;
  LODWORD(STACK[0x10EE8]) = v1 - v7 + 39660;
  LODWORD(STACK[0x10EEC]) = v7 ^ 0x225BF8E;
  (*(v6 + 8 * (v1 ^ 0xEAA3)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x10EE8]) = v1 - 634647737 * ((~&STACK[0x10ED8] & 0x426AE9F8 | &STACK[0x10ED8] & 0xBD951600) ^ 0x2FFCC604) - 5146;
  STACK[0x10ED8] = v2 + 164;
  STACK[0x10EE0] = v2;
  (*(v6 + 8 * (v1 ^ 0xED11)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x10ED8]) = (v1 + 27415) ^ (1112314453 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x2A81F3B0) + 713159607) ^ 0xC5D7D96E));
  STACK[0x10EE0] = v0;
  STACK[0x10EE8] = v2 + 164;
  v8 = (*(v6 + 8 * (v1 ^ 0xEDE7)))(&STACK[0x10ED8]);
  v9 = STACK[0xED0];
  v10 = STACK[0x10EDC];
  STACK[0x7690] -= 448;
  return (*(v6 + 8 * (((v10 == -371865839) * (v9 + 32604)) ^ v1)))(v8);
}

uint64_t sub_10032242C@<X0>(uint64_t a1@<X8>, uint8x8_t a2@<D0>)
{
  a2.i32[0] = *(a1 + v3);
  v5 = vmovl_u8(a2).u64[0];
  v6 = vadd_s16(vsub_s16(v5, vand_s8(vadd_s16(v5, v5), 0xDC00DC00DC00DCLL)), 0xEE00EE00EE00EELL);
  *(v4 + v3) = vuzp1_s8(v6, v6).u32[0];
  return (*(STACK[0xF18] + 8 * (((v3 == 16) ^ (v2 - 53)) & 1 | (32 * (((v3 == 16) ^ (v2 - 53)) & 1)) | v2)))();
}

uint64_t sub_100322494()
{
  v0 = STACK[0xF10] - 34733;
  *(STACK[0x6A78] + 28) = STACK[0x9894];
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x1F5F)))();
}

uint64_t sub_1003224D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  LODWORD(STACK[0x7480]) = -371865839;
  STACK[0x7370] = 0;
  LODWORD(STACK[0x57E0]) = -371865839;
  STACK[0x7A90] = 0;
  LODWORD(STACK[0x6DCC]) = -371865839;
  return (*(STACK[0xF18] + 8 * (((v3 == ((a3 - 8032) ^ 0xE9D5C30A)) * (((a3 + 259701889) & 0xF085AB3F) - 33825)) ^ a3)))(a1, a2, 371891535);
}

uint64_t sub_100322554()
{
  STACK[0x5C50] = 0x3AE1413A0D5C9702;
  LODWORD(STACK[0x1374]) = 1041880759;
  return (*(STACK[0xF18] + 8 * (v0 - 29678)))();
}

uint64_t sub_100322594()
{
  v1 = STACK[0x1680];
  LODWORD(STACK[0x4D94]) = STACK[0x1680];
  return (*(STACK[0xF18] + 8 * ((7372 * (v1 == (v0 ^ 0xA13A) - 371901482)) ^ v0)))();
}

uint64_t sub_1003225DC@<X0>(uint64_t a1@<X8>)
{
  v4.i64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v4.i64[1] = 0x5F5F5F5F5F5F5F5FLL;
  v5 = veorq_s8(*v3, v4);
  *(a1 + v1 + ((v2 + 1780294701) & 0x95E29FFF ^ 0xBC0) - 15) = veorq_s8(v3[1], v4);
  *(a1 + v1) = v5;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10032262C()
{
  v1 = STACK[0xF10];
  LODWORD(STACK[0x9F8C]) = v0;
  return (*(STACK[0xF18] + 8 * (v1 - 28653)))();
}

uint64_t sub_100322770@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x5804]) = a1;
  STACK[0x7690] = STACK[0x7690] + ((v1 - 12455) | 0xA8u) - 3567;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1003227A8()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 23852)))(v2);
}

uint64_t sub_1003227D4()
{
  v1 = STACK[0x2FFC];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393400;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1003229D0()
{
  v2 = (v1 - 28344);
  v3 = LODWORD(STACK[0x6F5C]);
  LODWORD(STACK[0x465C]) = 0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 4);
  v6 = 297845113 * ((((2 * &STACK[0x10ED8]) | 0xC2F147AF56F43FFALL) - &STACK[0x10ED8] + 0x1E875C285485E003) ^ 0x56230212DC490363);
  LODWORD(STACK[0x10F00]) = (v1 + 11916) ^ v6;
  LODWORD(STACK[0x10EF0]) = v6 + (v5 ^ 0x3FD7C5DF) + ((2 * v5) & 0x7FAF8BBE) - 1146906;
  STACK[0x10EE0] = &STACK[0x465C];
  STACK[0x10ED8] = v4;
  STACK[0x10EF8] = (v3 - ((v2 ^ 0x13D512011) & (2 * v3)) + 0x3F3EAEE69EA89E49) ^ v6;
  STACK[0x10EE8] = &STACK[0x6AC3];
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v1 ^ 0x40D3)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * (((8 * (LODWORD(STACK[0x10EF4]) == -371865839)) | ((LODWORD(STACK[0x10EF4]) == -371865839) << 15)) ^ v2)))(v8);
}

uint64_t sub_100322DF4()
{
  STACK[0x3238] = v1 + 36;
  STACK[0x4048] = *(v1 + 128);
  STACK[0x6910] = v0;
  STACK[0x9500] = v1 + 60;
  v3 = STACK[0x5850];
  v4 = STACK[0x7690];
  STACK[0x9840] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v4 + 128;
  return (*(STACK[0xF18] + 8 * (((v3 == 0) * ((3 * (v2 ^ 0xB6EC)) ^ 0xB9AF)) ^ (v2 - 14959))))();
}

uint64_t sub_100323028@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 - 21455 + (a1 ^ 0x633A))))();
}

uint64_t sub_100323174()
{
  LODWORD(STACK[0x10ED8]) = v1 - 353670337 * ((((&STACK[0x10000] + 3800) | 0x74DC3F5F) - ((&STACK[0x10000] + 3800) | 0x8B23C0A0) - 1960591200) ^ 0xC0FDC762) + 7697;
  STACK[0x10EE0] = v0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xDA9D)))(&STACK[0x10ED8]);
  STACK[0x6260] = *(v2 + 8 * v1);
  return (*(v2 + 57464))(v3);
}

uint64_t sub_100323228@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, int a9@<W8>)
{
  v19 = *(STACK[0xF18] + 8 * (a9 + 6453));
  *&STACK[0xE90] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0xE00] = vdupq_n_s64(0x38uLL);
  *&STACK[0xBA0] = vdupq_n_s64(0xD6916AF990E79581);
  *&STACK[0xEB0] = vdupq_n_s64(0x296E95066F186A7EuLL);
  *&STACK[0xB90] = vdupq_n_s64(a1);
  STACK[0xAF0] = a5 & 0xFFFFFFF0;
  *&STACK[0xB80] = vdupq_n_s64(a7);
  *&STACK[0xB70] = vdupq_n_s64(a6);
  *&STACK[0xDF0] = vdupq_n_s64(v14);
  *&STACK[0xB60] = vdupq_n_s64(a4);
  *&STACK[0xDE0] = vdupq_n_s64(a8);
  *&STACK[0xDD0] = vdupq_n_s64(v16);
  *&STACK[0xB50] = vdupq_n_s64(v13);
  *&STACK[0xDC0] = vdupq_n_s64(a3);
  *&STACK[0xDB0] = vdupq_n_s64(a2);
  *&STACK[0xDA0] = vdupq_n_s64(v12);
  *&STACK[0xD90] = vdupq_n_s64(v18);
  *&STACK[0xD80] = vdupq_n_s64(v17);
  *&STACK[0xD70] = vdupq_n_s64(0x712D560FD0C41AEAuLL);
  *&STACK[0xB40] = vdupq_n_s64(v10);
  *&STACK[0xD60] = vdupq_n_s64(0xD5F76ABD8EEE6086);
  *&STACK[0xB30] = vdupq_n_s64(0xAA9DDABAE2E4D47CLL);
  *&STACK[0xE80] = vdupq_n_s64(v11);
  *&STACK[0xB20] = vdupq_n_s64(v15);
  *&STACK[0xE70] = vdupq_n_s64(0xC7B84D5584632BB3);
  *&STACK[0xD50] = vdupq_n_s64(0x784FBA2FAF983AE6uLL);
  *&STACK[0xB10] = vdupq_n_s64(0x9B1C7427651E0F18);
  *&STACK[0xE60] = vdupq_n_s64(0x16916AF990E79581uLL);
  *&STACK[0xEA0] = vdupq_n_s64(0xC9F25BB096E59ABALL);
  *&STACK[0xE40] = vdupq_n_s64(0x320DA44F691A6545uLL);
  *&STACK[0xD40] = vdupq_n_s64(0xCAD042536AC2AEC8);
  *&STACK[0xD30] = xmmword_100BC76B0;
  *&STACK[0xE30] = vdupq_n_s64(v9);
  return v19(a9 ^ 0x21C2u, 0x14BA074A2F986FE5, 0xBD7D2DE9C10AA16ALL, (a9 + 6425));
}

uint64_t sub_100323488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  STACK[0x4468] = 0;
  STACK[0x3AE8] = 0;
  LODWORD(STACK[0x310C]) = -371865839;
  return (*(STACK[0xF18] + 8 * (((((a3 ^ 0xF392) - 7879) ^ 0x9B94) * (v3 == -371865840)) ^ a3 ^ 0xF392)))(a1, a2, 371891535);
}

uint64_t sub_1003234EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v11 = STACK[0xF18];
  STACK[0x8B08] = *(STACK[0xF18] + 8 * v8);
  STACK[0x1710] = v10;
  STACK[0xA0F0] = a4;
  LODWORD(STACK[0xA0FC]) = v4;
  STACK[0x4E98] = v5;
  *(v7 + 688) = v6;
  v12 = STACK[0x7690];
  STACK[0xA100] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v12 + 16;
  STACK[0x98B8] = *(v11 + 8 * v9);
  return (*(v11 + 8 * ((((v9 + 6067) | 0x1C04) ^ 0x18CB) + v9)))(a1, a2, a3, 0x1D54AEB378980553);
}

uint64_t sub_1003235AC()
{
  v2 = STACK[0xEC0];
  v3 = 353670337 * (((&STACK[0x10ED8] | 0xAE1886DE) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0x51E77920)) ^ 0x1A397EE3);
  STACK[0x10EF0] = STACK[0x6EA0];
  STACK[0x10EE8] = STACK[0xED0];
  LODWORD(STACK[0x10ED8]) = (((v0 ^ 0x6F9F0E88) - 1872694920) ^ ((v0 ^ 0x8CAB6540) + 1934924480) ^ ((v0 ^ 0xAE1ACD9) - 182577928 + ((v2 - 32704) | 0x382A))) - v3 + 1051652780;
  LODWORD(STACK[0x10EE0]) = v2 - v3 + 13832;
  v4 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v2 ^ 0x4F7A)))(&STACK[0x10ED8]);
  STACK[0x10EE0] = STACK[0x6EA0];
  LODWORD(STACK[0x10ED8]) = (v2 - 28059) ^ ((((&STACK[0x10ED8] | 0xF263C1FD) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0xD9C3E00)) ^ 0x1445DA32) * v1);
  v5 = (*(v4 + 8 * (v2 ^ 0x4F19)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v2))(v5);
}

uint64_t sub_100323724(uint64_t a1)
{
  v3 = &STACK[0xC4D0] + v1;
  STACK[0x2B88] = v3;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 64) = 0;
  v4 = 634647737 * ((((&STACK[0x10000] + 3800) | 0x4628EA2D) - ((&STACK[0x10000] + 3800) | 0xB9D715D2) - 1177086510) ^ 0x2BBEC5D1);
  LODWORD(STACK[0x10ED8]) = v4 - 1431125373;
  STACK[0x10EE0] = v3;
  LODWORD(STACK[0x10EE8]) = v2 - v4 + 13198;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v2 ^ 0xD568)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * v2))(v6);
}

uint64_t sub_100323AAC()
{
  v2 = STACK[0x1E90];
  LOWORD(STACK[0x10EE0]) = 23473 * ((((&STACK[0x10000] + 3800) | 0xFE58) - ((&STACK[0x10000] + 3800) & 0xFE58)) ^ 0x337C) + 18111;
  LODWORD(STACK[0x10ED8]) = (v0 - 171242362) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x250FE58) - ((&STACK[0x10000] + 3800) & 0x250FE58)) ^ 0x3351337C));
  STACK[0x10EE8] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0xA35EC2E)))(&STACK[0x10ED8]);
  v5 = ((-63 * (v0 ^ 0xA0)) ^ ((v0 - 26) ^ (((v1 - v0) | (v0 - v1)) < 0))) & 1;
  return (*(v3 + 8 * (v0 ^ 0xA3571DE ^ (v5 | (2 * v5)))))(v4);
}

uint64_t sub_100323BA8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X5>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  *(v46 - 216) = v44;
  *(v46 - 184) = a1;
  *(v46 - 128) = (HIDWORD(a21) - 922287788 + a3 + 705388282);
  return (*(v45 + 8 * (a3 + 8 * (HIDWORD(a21) - 922287788 + a3 + 705388282 == 0))))(a33, 81, 15066, 1455792075, 3963066230, 356976788, 3330062644, 352829457, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a2);
}

uint64_t sub_100323C6C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 4);
  *(v1 + 4) = v4;
  return (*(v2 + 8 * (((v4 != 1051086576) * ((v3 - 533635451) & 0x1FCE57CD ^ 0x4318)) ^ v3)))();
}

uint64_t sub_100323D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char a20, uint64_t a21, uint64_t a22, int a23, int a24, unint64_t a25, uint64_t a26, int a27, int a28, char *a29, int a30)
{
  v36 = 0x488E2F93F4CD7877 * (*(v30 + 24) + v32);
  v37 = 634647737 * ((~v34 & 0x841C1018A1513797 | v34 & 0x7BE3EFE75EAEC868) ^ 0x5EC7BFF7CCC7186BLL);
  a29 = &a20;
  a27 = v37 + v31 + 10256;
  a28 = (v31 ^ 0x5DCC41A3) + v37 + a24 * (v31 + 1846229715);
  a25 = v37 + 0x27553D143B00EFC6 + v36;
  a26 = v35;
  v38 = (*(v33 + 8 * (v31 ^ 0x44AF)))(&a25);
  return (*(v33 + 8 * ((4829 * (a30 == -371865839)) ^ v31)))(v38);
}

uint64_t sub_100323F50()
{
  v2 = v1 & 0x8F066FFF;
  v3 = (v0 ^ 0xDFFFF0E0EFFAD83FLL) + ((2 * v0) & 0x1DFF5B07ELL) + (((v1 & 0x8F066FFF) - 25755) | 0x8102) + 0x3DFAEF3FFFFCE4B5;
  STACK[0xA6A0] = v3;
  v4 = STACK[0x7E60];
  STACK[0xA6A8] = STACK[0x7E60];
  return (*(STACK[0xF18] + 8 * ((64078 * (v3 - v4 + 0x13B20A98D1894280 < 0xFFFFFFFFFFFFFFF6)) ^ v2)))();
}

uint64_t sub_10032407C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - 30246;
  LODWORD(STACK[0x7618]) = v2;
  STACK[0x7690] = ((v1 + 15627) ^ 0xFFFFFFFFFFFF31F6) + a1;
  v4 = STACK[0x1300];
  v5 = STACK[0x585C];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v4;
  LODWORD(STACK[0x655C]) = v5;
  LODWORD(STACK[0x884C]) = -1469760213;
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_100324334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, int a22, int a23)
{
  v25 = 1022166737 * (((&a20 | 0x57EFA3C9) - (&a20 & 0x57EFA3C8)) ^ 0xEDFF425B);
  a20 = a18;
  a21 = 1497668682 - v25;
  a22 = v25 + 22668 + v23;
  v26 = (*(v24 + 8 * (v23 + 42546)))(&a20);
  return (*(v24 + 8 * (((a23 != 1497668682) * (((v23 - 361047248) & 0x158507D2) - 1971)) ^ v23)))(v26);
}

uint64_t sub_100324490@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0xF10] - 6782;
  v3 = (STACK[0xF10] + 1309881531) & 0xB1EC751D;
  STACK[0x7D68] = &STACK[0xC4D0] + v1;
  STACK[0x7690] = a1 - 848;
  LODWORD(STACK[0x5984]) = -371865839;
  STACK[0x10ED8] = &STACK[0xC4D0] + v1;
  LODWORD(STACK[0x10EE4]) = v2 - 193924789 * ((~(&STACK[0x10000] + 3800) & 0xBFBD3969 | (&STACK[0x10000] + 3800) & 0x4042C690) ^ 0x9060B0F) + 16373;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 + 23035)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (((LODWORD(STACK[0x10EE0]) != -371865839) * (v2 ^ 0x45E5 ^ v3)) ^ v2)))(v5);
}

uint64_t sub_100324580()
{
  v0 = (STACK[0xF10] + 604329660) & 0xDBFA1FFF;
  v1 = STACK[0xF10] - 33663;
  v2 = STACK[0xF18];
  STACK[0x2630] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 + 15769) ^ v1)))();
}

uint64_t sub_1003245D4@<X0>(int a1@<W8>)
{
  v2 = 906386353 * STACK[0xED0];
  v3 = (a1 + 1153103843) ^ v2;
  LODWORD(STACK[0x10ED8]) = v3;
  STACK[0x10EF0] = v1 ^ v2;
  LODWORD(STACK[0x10F00]) = v2 + a1 + 800678923;
  LODWORD(STACK[0x10EE8]) = v2 | 1;
  STACK[0x10EE0] = 3294004794u - v2;
  LODWORD(STACK[0x10F04]) = v3 ^ 0x23;
  LODWORD(STACK[0x10EFC]) = ((a1 + 1153103843) ^ 0x12C2) + v2;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (a1 ^ 0x403D)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * SLODWORD(STACK[0x10EF8])))(v5);
}

uint64_t sub_1003247AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *a5 += ((v5 + 836658987) & 0xCE216D9D) - 24579;
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = 155453101 * ((~(&STACK[0x10000] + 3800) & 0xD924AD01 | (&STACK[0x10000] + 3800) & 0x26DB52F8) ^ 0x3F02B6CE) + v5 + 296753103;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v5 ^ 0x41F1)))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v6 + 8 * (v5 - 32460));
  return (*(v6 + 8 * (v5 - 29900)))(v7);
}

uint64_t sub_100324908@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xB274]) = v1;
  v5 = STACK[0x7690];
  v6 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0xB278] = v6;
  STACK[0xB280] = (v6 + 16);
  STACK[0xB288] = (v6 + 32);
  STACK[0x7690] = v5 + 48;
  STACK[0x2C30] = v2;
  STACK[0x6D68] = v4;
  return (*(STACK[0xF18] + 8 * (a1 | (32 * ((((a1 - 6972) ^ (v3 == ((a1 + 25975) ^ 0xE9D54C20))) & 1) == 0)))))();
}

uint64_t sub_100324990@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 ^ 0x1382)))();
}

uint64_t sub_100324B18()
{
  v3 = 139493411 * ((((&STACK[0x10000] + 3800) | 0x6DE0313B) - ((&STACK[0x10000] + 3800) | 0x921FCEC4) - 1843409212) ^ 0x61CDD07E);
  STACK[0x10EF0] = *(v0 - 0x7E666516A39B34A6);
  LODWORD(STACK[0x10EE8]) = v3 - 231254985;
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = v1 - v3 - 6142;
  LOWORD(STACK[0x10EFC]) = -32733 * ((((&STACK[0x10000] + 3800) | 0x313B) - ((&STACK[0x10000] + 3800) | 0xCEC4) - 12604) ^ 0xD07E) + v2 + 15233;
  LODWORD(STACK[0x10EF8]) = v3 + 1133646169;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 445)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (((LODWORD(STACK[0x10F00]) == 1497668682) * ((21 * (v1 ^ 0xCBD5)) ^ 0x36C1)) ^ v1)))(v5);
}

uint64_t sub_100324C24()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x74B9 ^ ((v0 + 8942) | 0x4060))))();
}

uint64_t sub_100324D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x7388] = a8;
  STACK[0x1CE0] = &STACK[0x5610];
  LODWORD(STACK[0x3AF0]) = -694127926;
  return (*(STACK[0xF18] + 8 * v8))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_100324EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X6>, int a3@<W8>)
{
  *(a1 + 636) = v4;
  *(a1 + 632) = a3;
  v5 = v4 - 2135374722;
  v6 = (((*(a2 + 69) ^ 0x8BE0037D) + 1948253315) ^ ((*(a2 + 69) ^ 0x6A8B7813) - 1787525139) ^ ((*(a2 + 69) ^ (((v3 - 449093580) & 0x1AC4FB5F) + 146676017)) - 146717823)) - 458665021;
  v7 = (v5 < 0xFAD38CB2) ^ (v6 < 0xFAD38CB2);
  v8 = v5 < v6;
  if (v7)
  {
    v8 = v6 < 0xFAD38CB2;
  }

  return (*(STACK[0xF18] + 8 * ((!v8 | (4 * !v8)) ^ v3)))();
}

uint64_t sub_100324FA4()
{
  v0 = STACK[0xF10] + 15137;
  v1 = STACK[0xF10] ^ 0xBC0F;
  v2 = STACK[0xF10] - 8209;
  *(STACK[0x6F68] + 64) = STACK[0x1208];
  return (*(STACK[0xF18] + 8 * ((22 * (*STACK[0x3A40] == ((v1 - 371930602) ^ v0))) ^ v2)))();
}

uint64_t sub_100325008()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))();
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100325030()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x74B7 ^ (v0 + 25428))))();
}

uint64_t sub_10032508C()
{
  STACK[0x95A0] = v1;
  LOWORD(STACK[0x79DE]) = 7085;
  LODWORD(STACK[0x16B4]) = 152619649;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0xBEFCD032 ^ (24926 * (v0 < ((v0 - 402586417) & 0x59026BF5) - 1622809601)))))();
}

uint64_t sub_1003251B0()
{
  v1 = STACK[0xF10] - 7156;
  LOBYTE(STACK[0x6A4F]) = v0 >> 28 == 6;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100325208()
{
  STACK[0x5718] = STACK[0x12F0];
  LODWORD(STACK[0x41D4]) = STACK[0x86A4];
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762653837) ^ (906386353 * ((((&STACK[0x10000] + 3800) ^ 0xDD001C74 | 0x391CA4B) - ((&STACK[0x10000] + 3800) ^ 0xDD001C74 | 0xFC6E35B4) - 59886156) ^ 0xEF901B1B));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xA4A5)))(&STACK[0x10ED8]);
  if (*STACK[0x970])
  {
    v3 = 1;
  }

  else
  {
    v3 = *STACK[0x940] == 0;
  }

  v4 = v3;
  return (*(v1 + 8 * (((((109 * (v0 ^ 0x5B)) ^ v4) & 1) * ((11881 * (v0 ^ 0x6E1F)) ^ 0x8B12)) ^ v0)))(v2);
}

uint64_t sub_100325330()
{
  STACK[0xEB0] = v0 + 96;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xE492)))();
  v4 = (*(v2 + 8 * (v1 + 41745)))(v3, &STACK[0x50FC], &STACK[0x2454]) == 0;
  return (*(v2 + 8 * ((62 * (((v1 + 44) ^ v4) & 1)) ^ v1)))();
}

uint64_t sub_1003253B4(uint64_t a1, uint64_t a2)
{
  v4 = *(STACK[0xF18] + 8 * (v2 - 27350));
  LODWORD(STACK[0xE40]) = 47179;
  return v4(a1, a2, v3);
}

uint64_t sub_1003253EC(uint64_t a1, uint64_t a2, unint64_t a3, double a4, __n128 a5, __n128 a6, __n128 a7, int8x16_t a8, double a9, int8x16_t a10, int8x16_t a11, uint64_t a12, int a13)
{
  v20 = ((v16 + 3743) ^ a3) & a1;
  v21 = v17;
  v22.i64[0] = vqtbl4q_s8(*(&a5 - 1), a8).u64[0];
  *&v22.i64[1] = a9;
  v23 = vrev64q_s8(veorq_s8(veorq_s8(*v18, *(v14 + v20 - 15)), veorq_s8(*(v13 + v20 + 2 - 15), *(v15 + v20 + 2 - 15))));
  v24 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v23, v23, 8uLL), a11), vmulq_s8(v22, a10)));
  *v18 = vextq_s8(v24, v24, 8uLL);
  return (*(*(v19 - 208) + 8 * (((a2 == 0) * a13) ^ v16)))(a1 - 16, a2 - 16);
}

uint64_t sub_100325A38@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 & 0x15F4BFEFELL) + (a1 ^ 0x76DFBE9BAFA5FF7FLL);
  STACK[0xA7B8] = ((v2 - 7155) ^ 0x717AAE1050637D0) + v3;
  v3 -= 0x76DFBE9B8106BF02;
  v4 = (v2 + 27747) + STACK[0x9978] - 0x54712624BFA5CB2BLL;
  v5 = v3 < 0x2E9F4079;
  v6 = v3 > v4;
  if (v5 != v4 < 0x2E9F4079)
  {
    v6 = v5;
  }

  if (v6)
  {
    v7 = 371891407;
  }

  else
  {
    v7 = STACK[0xA750];
  }

  LODWORD(STACK[0xA7C0]) = v7;
  v8 = v7 == -371865839;
  LOBYTE(STACK[0xA7C7]) = v8;
  return (*(STACK[0xF18] + 8 * ((28471 * v8) ^ v2)))();
}

uint64_t sub_100325B58()
{
  v1 = STACK[0xF10] - 29459;
  *STACK[0x7680] = v0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100325B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  *(v17 - 104) = (v13 - 20716) ^ (17902189 * ((~(v17 - 144) & 0x8F35B204 | (v17 - 144) & 0x70CA4DF8) ^ 0x17AA414));
  *(v17 - 128) = v14;
  *(v17 - 120) = &a11;
  *(v17 - 112) = &a11;
  *(v17 - 144) = v15;
  *(v17 - 136) = &a13;
  v18 = (*(v16 + 8 * (v13 + 6131)))(v17 - 144);
  return (*(v16 + 8 * v13))(v18);
}

uint64_t sub_100325C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24, unsigned int a25, int *a26, int a27, uint64_t a28, char a29, int a30, uint64_t a31, unsigned int a32)
{
  v34 = *(a16 + 32);
  v35 = 1012831759 * ((2 * (&a25 & 0x79CBD618) - &a25 + 104081891) ^ 0x16A73F69);
  a29 = 69 - 15 * ((2 * (&a25 & 0x18) - &a25 - 29) ^ 0x69);
  a27 = (v32 ^ 0x47E8) - v35 - 2830;
  a25 = (((a24 ^ 0x2EABF0AF) - 783020207) ^ ((a24 ^ 0x9D0A1933) + 1660282573) ^ ((a24 ^ 0x5A742E8D) - 1517563533)) - v35 + 99480725;
  a28 = v34;
  a31 = a1;
  a26 = &a24;
  a32 = v35 ^ a23 ^ ((a23 ^ 0xDD4C1ABA) + 2079815952) ^ ((a23 ^ 0xDFFEFFFB) + 2034605135) ^ ((a23 ^ 0x2EA0EEC1 ^ ((v32 ^ 0x47E8) + 20372)) - 2011496216) ^ ((a23 ^ 0x75560C4F ^ (((v32 ^ 0x47E8) - 10219) | 2)) - 739411475) ^ 0x5E9993B8;
  (*(v33 + 8 * (v32 ^ 0xB0AA)))(&a25);
  return (*(v33 + 8 * ((1021 * (a30 == -371865839)) ^ v32 ^ 0x47E8)))(a1);
}

uint64_t sub_100325E24()
{
  v1 = STACK[0xF10] - 5065;
  *(STACK[0xAAF8] + 12) = v0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100325EA4()
{
  LODWORD(STACK[0xB32C]) = 580479489;
  LODWORD(STACK[0xB328]) = 4;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100325EE0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, int a8)
{
  v22 = v8 > v11;
  v23 = HIDWORD(v14) + (*(v12 + 4 * (a1 + v16)) ^ v15) * a7 + (*(v17 + 4 * a6) ^ v15);
  *(v17 + 4 * a6) = (a8 ^ 0x10) + v23 - (v18 & (2 * v23)) + v19;
  v24 = a1 + v20;
  v25 = (a1 + 1);
  v26 = v22 ^ (v24 < v21);
  v27 = v24 < v10;
  if (!v26)
  {
    v22 = v27;
  }

  return (*(v13 + 8 * ((!v22 * v9) ^ a8)))(v25);
}

uint64_t sub_100325F60()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((5359 * (v0 + ((v0 - 477) | 0x6510) != 1099687042)) ^ (v0 - 321))))();
}

uint64_t sub_10032607C()
{
  v4 = STACK[0x890C];
  STACK[0x8FE8] = *(v0 + v3);
  LODWORD(STACK[0x44A8]) = v4;
  LODWORD(STACK[0x704C]) = -2116087566;
  LODWORD(STACK[0x7FD8]) = 1920229740;
  LODWORD(STACK[0x4A8C]) = (v2 - 969392561) ^ v1;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1003260EC@<X0>(int a1@<W8>)
{
  v3 = ((((124 * (a1 ^ 0x7BF6)) ^ *(v2 + 292) ^ 0x4BA7C094) - 1269285872) ^ ((*(v2 + 292) ^ 0xB9A4851B) + 1180400357) ^ ((*(v2 + 292) ^ 0x1BD6B8AE ^ (4892 * (a1 ^ 0x7BF2))) - 467042810)) - 627527591;
  v4 = v3 < 1891821896;
  v5 = v1 - 775141308 <= v3;
  if (v1 - 775141308 < 1891821896 != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((2025 * v5) ^ a1)))();
}

uint64_t sub_1003261C8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 8);
  STACK[0x9118] = 0;
  LODWORD(STACK[0x4520]) = -371865839;
  STACK[0x7E60] = 0x31ACEAB9C1818AB9;
  return (*(STACK[0xF18] + 8 * (((v2 != 0) * (((v1 - 25551) | 0x408) - 3841)) ^ v1)))();
}

uint64_t sub_100326240(uint64_t a1, uint64_t a2, int a3)
{
  STACK[0x10EE0] = STACK[0x14C0];
  LODWORD(STACK[0x10ED8]) = v3 + 193924789 * ((((&STACK[0x10000] + 3800) | 0x403751C5) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xBFC8AE38)) ^ 0xF68C63A3) - 11939;
  v4 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v3 + 36672)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x5804]) = a3;
  STACK[0x7690] -= 576;
  return (*(v4 + 8 * ((63822 * (a3 == ((v3 - 12287) ^ 0x3C92) - 371879980)) ^ v3)))(v6);
}

uint64_t sub_10032630C()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 8628;
  *(*(STACK[0x6A78] + 112) + 72 * (LODWORD(STACK[0x34A0]) ^ 0x17A9D2D2) + 24) = v0;
  v3 = LOBYTE(STACK[0xB47B]);
  LODWORD(STACK[0x3404]) = LODWORD(STACK[0xB470]) + 582684815;
  return (*(STACK[0xF18] + 8 * ((v3 * (v1 ^ 0x5B9A)) ^ v2)))();
}

uint64_t sub_1003263D4()
{
  STACK[0x10EF0] = STACK[0xDF0];
  v1 = STACK[0xE10];
  STACK[0x10EE0] = v0 - 1493500291 - STACK[0xE10];
  LODWORD(STACK[0x10F00]) = STACK[0xDD0];
  LODWORD(STACK[0x10EF8]) = STACK[0xDC0];
  LODWORD(STACK[0x10EFC]) = v1 | 1;
  v2 = LODWORD(STACK[0xE20]) + v1;
  LODWORD(STACK[0x10EDC]) = STACK[0xDE0];
  LODWORD(STACK[0x10ED8]) = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * SLODWORD(STACK[0xDB0])))(&STACK[0x10ED8]);
  return (*(v3 + 8 * SLODWORD(STACK[0x10EE8])))(v4);
}

uint64_t sub_1003264A8()
{
  *STACK[0x4A80] = v0;
  v2 = STACK[0x798];
  *(*(STACK[0x798] + 8) + 8 * LODWORD(STACK[0xB04C])) = STACK[0x2540];
  *(v2 + 4) = v1 + 26650 + *(v2 + 4) - 35644;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10032652C()
{
  v0 = STACK[0xF10];
  *(STACK[0x6A78] + 100) = STACK[0x9894];
  return (*(STACK[0xF18] + 8 * (v0 - 28266)))();
}

uint64_t sub_10032656C()
{
  STACK[0xED0] = 0;
  STACK[0xE90] = 0;
  v3 = *v2;
  STACK[0xEA0] = v1 ^ 0xE9D5C711;
  LODWORD(STACK[0xEB0]) = v3 - ((2 * v3) & 0x54C4FE8E) - 1436385465;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x16D5CDB8 ^ (1674 * (v0 <= ((557 * (v0 ^ 0x16D5D6B5)) ^ 0xA896E7D2))))))();
}

uint64_t sub_100326608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, unsigned int a9@<W8>)
{
  v12 = a9 < v9;
  v13 = a8 - 1684780905;
  v14 = (a8 + 1);
  v15 = v12 ^ (v13 < v9);
  v16 = v13 < a9;
  if (!v15)
  {
    v12 = v16;
  }

  return (*(STACK[0xF18] + 8 * (((((v10 - 45029) | 0x2008) + v11) * v12) ^ v10)))(a1, a2, a3, a4, a5, a6, a7, v14);
}

uint64_t sub_100326668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _BYTE *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *a13 = 1;
  v23 = 634647737 * ((2 * ((v22 - 136) & 0x24AFBEA8) - (v22 - 136) + 1531986257) ^ 0x36C66EAD);
  *(v22 - 104) = v23 + 11298;
  *(v22 - 120) = v23 ^ 0x28D20269;
  *(v22 - 112) = v21;
  *(v22 - 136) = v18 - v23 - 9116;
  *(v22 - 128) = v19;
  v24 = (*(v20 + 8 * (v18 + 19695)))(v22 - 136);
  return (*(v20 + 8 * ((((((4 * v18) ^ 0x1E2B0) + 4863) ^ (2 * v18) ^ 0xDC78) * (a18 != 0)) ^ v18)))(v24);
}

uint64_t sub_100326870()
{
  v0 = (STACK[0xF10] - 942345376) & 0x382AFFFF;
  v1 = STACK[0xF10] - 32155;
  STACK[0x8308] = STACK[0x3CE8] + 16;
  v2 = STACK[0xF18];
  STACK[0x6728] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 23166) ^ v1)))();
}

uint64_t sub_100326920()
{
  v0 = STACK[0xF10] - 33959;
  STACK[0x3CE8] = STACK[0x3018] + ((7493 * (STACK[0xF10] ^ 0x8B3E) - 1397870887) ^ 0xACAEC132);
  v1 = STACK[0xF18];
  STACK[0x5040] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1C7B)))();
}

uint64_t sub_100326A0C()
{
  *v1 = 0;
  STACK[0x5C50] = (((v0 ^ 0x6A8240ABE5FF976ELL) - 0x6A8240ABE5FF976ELL) ^ ((v0 ^ 0x3A52A8A103C895FFLL) - 0x3A52A8A103C895FFLL) ^ ((v0 ^ 0x50D0E80A0FE2C580) + (v2 + 23058) - 0x50D0E80A0FE350BBLL)) + 0x3AE1413AF7325DD3;
  LODWORD(STACK[0x1374]) = -1762657533;
  return (*(STACK[0xF18] + 8 * (v2 - 6620)))();
}

uint64_t sub_100326AE0()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 20593;
  STACK[0x10EE0] = *STACK[0x4288];
  LODWORD(STACK[0x10ED8]) = v0 - 193924789 * ((&STACK[0x10000] + 3800) ^ 0xB6BB3266) + 60349492;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4032)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100326B84()
{
  v3 = v2 < 0x5EEEC636;
  if (v3 == (v1 + 1) > 0xFFFFFFFFA11139C9)
  {
    v3 = v1 + 1592706615 < v2;
  }

  return (*(STACK[0xF18] + 8 * ((((v0 - 5120) ^ 0x70F2) * v3) ^ v0)))(3923101457);
}

uint64_t sub_100326BF8()
{
  v1 = STACK[0x4228];
  v2 = STACK[0x4B04];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v1;
  LODWORD(STACK[0x655C]) = v2;
  LODWORD(STACK[0x884C]) = -361211625;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100326CF8(uint64_t a1, uint64_t a2, int8x8_t a3, uint8x8_t a4)
{
  a4.i32[0] = *(v6 + a2 - a1);
  *(v7 + a2 - a1 + v4) = vuzp1_s8(veor_s8(*&vmovl_u8(a4), a3), a3).u32[0];
  return (*(STACK[0xF18] + 8 * (((8 * (a1 == 32)) | (32 * (a1 == 32))) ^ v5)))();
}

uint64_t sub_100326D3C()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 17420)))();
  *(v0 + 552) = 0;
  *(v0 + 560) = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100326DA0@<X0>(int a1@<W8>)
{
  v1 = a1 - 27764;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 + 16238)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100326DD4@<X0>(uint64_t a1@<X1>, unsigned int a2@<W2>, uint64_t a3@<X8>)
{
  v5 = a3 + a1 + ((v3 + v4) | a2);
  STACK[0x3D40] = v5;
  return (*(STACK[0xF18] + 8 * ((240 * (v5 != 0)) ^ v3)))();
}

uint64_t sub_100326E30(uint64_t a1, uint64_t a2)
{
  STACK[0x95A0] = STACK[0x37E0] + 152;
  LOWORD(STACK[0x79DE]) = 7085;
  LODWORD(STACK[0x16B4]) = -1409813674;
  return (*(STACK[0xF18] + 8 * v2))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_100326F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  *(v17 - 128) = v16 - 1603510583 * ((v17 - 128 - 2 * ((v17 - 128) & 0x146AD180) - 1804938878) ^ 0x3B1E329) - 2352;
  *(v17 - 120) = &a15;
  *(v17 - 104) = &a13;
  v18 = (*(v15 + 8 * (v16 + 23730)))(v17 - 128);
  return (*(v15 + 8 * ((((-67 * (v16 ^ 4) + (v16 ^ 4) + 29) ^ (*(v17 - 112) > 0x3AF7D7A3u)) & 1 | (32 * (((-67 * (v16 ^ 4) + (v16 ^ 4) + 29) ^ (*(v17 - 112) > 0x3AF7D7A3u)) & 1))) ^ v16)))(v18);
}

uint64_t sub_100327024(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  ++*a4;
  LODWORD(STACK[0x10EE0]) = v4 + 155453101 * ((((&STACK[0x10000] + 3800) | 0xB41FDC8D) - ((&STACK[0x10000] + 3800) | 0x4BE02372) + 1272980338) ^ 0x5239C742) + 296785532;
  STACK[0x10ED8] = 0;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v4 + 48700)))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v5 + 8 * v4);
  return (*(v5 + 8 * (v4 - 22051 + v4 + 21366)))(v6);
}

uint64_t sub_1003270D4()
{
  v1 = STACK[0x9448];
  STACK[0x97B0] = STACK[0x9448];
  v2 = STACK[0x8B60] + 104;
  v3 = *(STACK[0x8B60] + 120);
  v4 = STACK[0x6080];
  v5 = *(STACK[0x8B60] + 100) * ((v0 ^ 0x1296) + 181229479) + 1026617072;
  v6 = 1112314453 * ((&STACK[0x10000] + 3800) ^ 0xEF562AD9);
  LODWORD(STACK[0x10EF8]) = (1717713835 * (((LODWORD(STACK[0x26B4]) ^ 0xB593906B) + 1248620437) ^ ((LODWORD(STACK[0x26B4]) ^ 0xFA907B3F) + 91194561) ^ ((LODWORD(STACK[0x26B4]) ^ 0xA6D62C45) + 1495913403)) - 1673222577) ^ v6;
  LODWORD(STACK[0x10F14]) = (v0 ^ 0xFFE6C709) + v6 + (v3 ^ 0x2E5DAFF5) + ((2 * v3) & 0x5CBB5FEA);
  STACK[0x10F00] = v2;
  STACK[0x10F08] = v1;
  LODWORD(STACK[0x10EF4]) = v5 ^ v6;
  LODWORD(STACK[0x10F10]) = (v0 - 356) ^ v6;
  LODWORD(STACK[0x10ED8]) = v6 - 286208179;
  STACK[0x10EE8] = v4;
  STACK[0x10EE0] = v1;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v0 + 45914)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * ((92 * (LODWORD(STACK[0x10EF0]) == -371865839)) ^ v0)))(v8);
}

uint64_t sub_10032732C()
{
  v1 = STACK[0x67F8];
  LODWORD(STACK[0x184C]) = STACK[0x488C];
  STACK[0x3D88] = STACK[0x6E68] + 592;
  v2 = STACK[0x7690];
  v3 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x2558] = v3;
  STACK[0x4020] = (v3 + 100);
  STACK[0x1D20] = (v3 + 120);
  STACK[0x7690] = v2 + (v0 ^ 0x752);
  STACK[0x6E98] = v1;
  LODWORD(v1) = 634647737 * ((((&STACK[0x10000] + 3800) ^ 0xE104B988 | 0xADA4647) + ((&STACK[0x10000] + 3800) ^ 0xC20447 | 0xF525B9B8)) ^ 0x8C509232);
  LODWORD(STACK[0x10ED8]) = v1 - 1431125373;
  LODWORD(STACK[0x10EE8]) = v0 - v1 + 18997;
  STACK[0x10EE0] = v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 49983)))(&STACK[0x10ED8]);
  STACK[0x2630] = *(v4 + 8 * v0);
  return (*(v4 + 8 * (v0 ^ 0x3FEE)))(v5, v0 ^ 0x635);
}

uint64_t sub_1003274AC()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 32487;
  v2 = STACK[0xF18];
  STACK[0x9958] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((28846 * (v1 == -1035383313)) ^ (v0 - 23457))))();
}

uint64_t sub_10032778C()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16238)))();
  *(v0 + 8) = 0;
  return (*(v2 + 8 * (v1 - 20466)))(v3);
}

uint64_t sub_1003277FC()
{
  v0 = STACK[0xF10];
  LODWORD(STACK[0xA39C]) = STACK[0x9894];
  return (*(STACK[0xF18] + 8 * (v0 - 28266)))();
}

uint64_t sub_100327894(int a1)
{
  v3 = v1 < LODWORD(STACK[0xED0]);
  if (v3 == (v2 + 1402784823) < 0x6367A788)
  {
    v3 = v2 + 1402784823 < v1;
  }

  return (*(STACK[0xF18] + 8 * (((a1 - 17872) * !v3) ^ a1)))();
}

uint64_t sub_100327920()
{
  v0 = LODWORD(STACK[0x470]) | 0x1C9B;
  v1 = STACK[0xF18];
  STACK[0x6728] = *(STACK[0xF18] + 8 * SLODWORD(STACK[0x468]));
  return (*(v1 + 8 * (LODWORD(STACK[0x464]) ^ v0)))();
}

uint64_t sub_10032795C()
{
  v1 = STACK[0xF10] - 14649;
  *STACK[0x97F0] = v0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100327984()
{
  v3 = STACK[0xEB0];
  LODWORD(STACK[0xEC0]) = (((*(STACK[0xEB0] + 104) ^ 0x8C32D835) + 1942824907) ^ ((*(STACK[0xEB0] + 104) ^ 0xB8BB3AC2) + 1195689278) ^ (((((v1 + 16891114) | 0x60018184) + 2086158930) ^ *(STACK[0xEB0] + 104)) + 581163546)) + v2 - 1240517808;
  v4 = ((v0 + 189195470) ^ 0xC06A376D) & (2 * ((v0 + 189195470) & 0xE972366C)) ^ (v0 + 189195470) & 0xE972366C;
  v5 = ((2 * ((v0 + 189195470) ^ 0x502A5F25)) ^ 0x72B0D292) & ((v0 + 189195470) ^ 0x502A5F25) ^ (2 * ((v0 + 189195470) ^ 0x502A5F25)) & 0xB9586948;
  v6 = v5 ^ 0x89482949;
  v7 = v4 ^ 0xB9586949 ^ (v5 ^ 0x20104000) & (4 * v4);
  v8 = (4 * v6) & 0xB9586948 ^ 0x18184849 ^ ((4 * v6) ^ 0xE561A524) & v6;
  v9 = (16 * v7) & 0xB9586940 ^ v7 ^ ((16 * v7) ^ 0x95869490) & v8;
  v10 = (16 * v8) & 0xB9586940 ^ 0x28586949 ^ ((16 * v8) ^ 0x95869490) & v8;
  v11 = v9 ^ (v9 << 8) & 0xB9586900 ^ ((v9 << 8) ^ 0x58694900) & v10 ^ 0x89484900;
  LODWORD(STACK[0xED0]) = (v0 + 189195470) ^ (2 * ((v11 << 16) & 0x39580000 ^ v11 ^ ((v10 << 8) ^ 0x58690000) & v10 & ((v11 << 16) ^ 0x69490000))) ^ 0x208723EF;
  return (*(STACK[0xF18] + 8 * ((69 * (*(v3 + 152) == -371865839)) ^ v1)))();
}

uint64_t sub_100327C10()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16238)))();
  *v0 = 0;
  return (*(v2 + 8 * (v1 - 15043)))(v3, 4294951323, 3923101457, 3398133692, 896843197, 1111641186, 3235636000, 4294937658);
}

uint64_t sub_100327CE4()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 18569;
  v3 = STACK[0x4EA0];
  v4 = (((*(v3 - 0x217E172EFA1E804) ^ 0x74285BA0) - 1948801952) ^ ((*(v3 - 0x217E172EFA1E804) ^ 0x29F8CAF0) - 704170736) ^ (STACK[0xF10] + 1274683012 + (*(v3 - 0x217E172EFA1E804) ^ 0xB4055641))) - 54746966;
  v5 = 634647737 * ((~(&STACK[0x10000] + 3800) & 0xD0E3EC1C | (&STACK[0x10000] + 3800) & 0x2F1C13E0) ^ 0xBD75C3E0);
  STACK[0x10EF0] = *(STACK[0x4EA0] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x10EF8]) = v1 - v5 + 4134;
  STACK[0x10F00] = v3 - 0x217E172EFA1E800;
  STACK[0x10EE0] = &STACK[0x552C];
  STACK[0x10EE8] = &STACK[0x7FC8];
  LODWORD(STACK[0x10ED8]) = v4 ^ v5;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v1 + 16265)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * ((3684 * (LODWORD(STACK[0x10F08]) == v0)) ^ v2)))(v7);
}

uint64_t sub_100327EAC()
{
  v0 = STACK[0xF10] - 34823;
  LODWORD(STACK[0xA3DC]) = STACK[0x9894];
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x1FE5)))();
}

uint64_t sub_100327F30()
{
  v1 = STACK[0xF10] - 16460;
  v2 = LOBYTE(STACK[0xB403]);
  LODWORD(STACK[0x45E4]) = LODWORD(STACK[0xB3F0]) + ((STACK[0xF10] - 10509) ^ 0x3C61830C);
  LODWORD(STACK[0x234C]) = v0;
  return (*(STACK[0xF18] + 8 * ((49700 * v2) ^ v1)))();
}

uint64_t sub_100328014()
{
  v4 = *(v1 + 440);
  *(v1 + 432) += v2;
  return (*(STACK[0xF18] + 8 * (((v4 == *(v0 + 200)) * (((v3 - 2812) | 0xC82) + 38526)) ^ v3)))();
}

uint64_t sub_100328060()
{
  v1 = STACK[0xF10] + 10733;
  *STACK[0xB538] = v0;
  v2 = STACK[0xB528];
  STACK[0xA410] = STACK[0xB528];
  STACK[0xA418] = v2 + 4;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1003280A0@<X0>(unint64_t a1@<X8>)
{
  v4 = 1012831759 * ((2 * ((&STACK[0x10000] + 3800) & 0x7AEF20F8) - (&STACK[0x10000] + 3800) + 84991748) ^ 0x1583C98E);
  LODWORD(STACK[0x10F08]) = v4 ^ LODWORD(STACK[0x7B94]) ^ ((LODWORD(STACK[0x7B94]) ^ 0x2C2FD322) - 1969966952) ^ ((LODWORD(STACK[0x7B94]) ^ 0xBF90DDCA) + 422297216) ^ ((LODWORD(STACK[0x7B94]) ^ 0x3FFFFFFF) - 1723556789) ^ 0x5E9993B8 ^ ((LODWORD(STACK[0x7B94]) ^ 0xF5046D5D) + ((v2 + 8929) ^ 0x53BF85D2));
  LOBYTE(STACK[0x10EF8]) = 69 - 15 * ((2 * ((&STACK[0x10000] - 40) & 0xF8) - (&STACK[0x10000] - 40) + 4) ^ 0x8E);
  LODWORD(STACK[0x10EE8]) = v2 - v4 - 13673;
  STACK[0x10F00] = v3;
  LODWORD(STACK[0x10ED8]) = (((v1 ^ 0xFD5B692C) + 44340948) ^ ((v1 ^ 0x46747B02) - 1182038786) ^ ((v1 ^ 0x52FAD53F) - 1392170303)) - v4 + 99480725;
  STACK[0x10EE0] = &STACK[0x93B0];
  STACK[0x10EF0] = a1;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v2 + 25187)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * v2))(v6);
}

uint64_t sub_100328238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0xC80] = *(v15 + a1 - 16);
  v25.i64[0] = v9 + a1;
  v25.i64[1] = v16 + a1;
  v26.i64[0] = a8 + a1;
  v26.i64[1] = a7 + a1;
  v27.i64[0] = v15 + a1 - 5;
  v27.i64[1] = v15 + a1 - 6;
  v28.i64[0] = v15 + a1 - 3;
  v28.i64[1] = v15 + a1 - 4;
  v29 = vandq_s8(v28, v24);
  v30 = vandq_s8(v27, v24);
  v31 = vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL);
  v32 = vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL);
  v33 = vdupq_n_s64(0xD6916AF990E79581);
  v34 = vaddq_s64(v32, v33);
  v35 = vdupq_n_s64(0x296E95066F186A7EuLL);
  v36 = vaddq_s64(v31, v33);
  v37 = v33;
  v38 = vsubq_s64(v35, v31);
  v39 = vsubq_s64(v35, v32);
  v40 = v35;
  v41 = vdupq_n_s64(0x70ED5DC178B16E75uLL);
  v42 = vandq_s8(v39, v41);
  v43 = v41;
  v44 = vaddq_s64(vandq_s8(v38, v41), v36);
  v45 = vdupq_n_s64(0x72ED5DC178B16E75uLL);
  *&STACK[0xDD0] = v45;
  v46 = vsubq_s64(vaddq_s64(v42, v34), vandq_s8(v34, v45));
  v47 = vsubq_s64(v44, vandq_s8(v36, v45));
  v48 = vdupq_n_s64(0x75CF442284965A07uLL);
  v49 = veorq_s8(v47, v48);
  v50 = veorq_s8(v46, v48);
  v51 = vdupq_n_s64(v8);
  v52 = veorq_s8(v46, v51);
  v53 = veorq_s8(v47, v51);
  v54 = vdupq_n_s64(0x14BA074A2F986FE5uLL);
  v55 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v52), v54);
  v56 = vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL);
  v57 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v58 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v53), v54);
  v59 = veorq_s8(v58, v57);
  v60 = veorq_s8(v55, v56);
  v61 = vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL);
  v62 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v60);
  v63 = vaddq_s64(v61, v59);
  v64 = vdupq_n_s64(0x2C378843F9A46E98uLL);
  v65 = veorq_s8(v63, v64);
  v66 = veorq_s8(v62, v64);
  v67 = v64;
  v68 = vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL);
  v69 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v70 = veorq_s8(v65, v68);
  v71 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v72 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v70);
  v73 = vaddq_s64(v71, v69);
  v74 = vdupq_n_s64(v17);
  v75 = veorq_s8(v73, v74);
  v76 = v74;
  *&STACK[0xED0] = v74;
  v77 = vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL);
  v78 = veorq_s8(v72, v76);
  v79 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v80 = veorq_s8(v75, v77);
  v81 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v80);
  v83 = vdupq_n_s64(0x4BB2CF10603AF002uLL);
  *&STACK[0xEC0] = v83;
  v84 = vaddq_s64(v81, v79);
  v85 = vdupq_n_s64(0xB44D30EF9FC50FFDLL);
  v86 = vdupq_n_s64(0xC9024F07DF79306BLL);
  v87 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v82, v83), vorrq_s8(v82, v85)), v85), v86);
  *&STACK[0xEB0] = v86;
  v88 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v84, v83), vorrq_s8(v84, v85)), v85), v86);
  v89 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v90 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v91 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v90);
  v93 = vaddq_s64(v91, v89);
  v94 = vdupq_n_s64(0x3BC4FBA94204947DuLL);
  *&STACK[0xDF0] = v94;
  v95 = veorq_s8(v93, v94);
  v96 = veorq_s8(v92, v94);
  v97 = vdupq_n_s64(0x444C3EF7816B06F8uLL);
  *&STACK[0xEA0] = v97;
  v98 = vdupq_n_s64(0xDDD9E0843F4A7C84);
  *&STACK[0xE90] = v98;
  v99 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v95, v95), v97), v95), v98);
  v100 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v96, v96), v97), v96), v98);
  v101 = vdupq_n_s64(0xB37F3E686055C37DLL);
  v102 = veorq_s8(v100, v101);
  *&STACK[0xE80] = v101;
  v103 = veorq_s8(v99, v101);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v105 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v105);
  v107 = vdupq_n_s64(0x297AF72712700E83uLL);
  *&STACK[0xDE0] = v107;
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104);
  v109 = vdupq_n_s64(0xD68508D8ED8FF17CLL);
  v110 = vsubq_s64(vorrq_s8(v106, v107), vorrq_s8(v106, v109));
  v111 = vdupq_n_s64(0xA6C8D664ECAB6230);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v108, v107), vorrq_s8(v108, v109)), v109), v111);
  v113 = vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL);
  v114 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v115 = vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL);
  v116 = vandq_s8(v26, v24);
  v117 = vandq_s8(v25, v24);
  v118 = v24;
  v119 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v120 = vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL);
  v121 = vdupq_n_s64(0xA325067CBC52C678);
  *&STACK[0xE70] = v121;
  v122 = vdupq_n_s64(0xF2F9342312EBF434);
  *&STACK[0xDC0] = v122;
  v123 = vsubq_s64(v119, vandq_s8(vaddq_s64(vaddq_s64(v119, v119), v121), v122));
  v124 = vdupq_n_s64(0xCB0F1D4FE79F5D56);
  v125 = vaddq_s64(vsubq_s64(v120, vandq_s8(vaddq_s64(vaddq_s64(v120, v120), v121), v122)), v124);
  v126 = vdupq_n_s64(0x67FD13F296EE9EB2uLL);
  v127 = veorq_s8(v125, v126);
  v128 = v126;
  *&STACK[0xDB0] = v126;
  v129 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v130 = vaddq_s64(v123, v124);
  v131 = veorq_s8(v130, v128);
  v132 = vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL);
  v133 = vdupq_n_s64(0xEB690A0067A58754);
  v134 = veorq_s8(v125, v133);
  v135 = vaddq_s64(v129, v134);
  v136 = vdupq_n_s64(0x8D4F80F477B96692);
  *&STACK[0xE60] = v136;
  v137 = vsubq_s64(v135, vandq_s8(vaddq_s64(v135, v135), v136));
  v138 = veorq_s8(v130, v133);
  *&STACK[0xD70] = v133;
  v139 = vaddq_s64(v132, v138);
  v140 = vsubq_s64(v139, vandq_s8(vaddq_s64(v139, v139), v136));
  v141 = vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL);
  v142 = vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL);
  v143 = veorq_s8(vaddq_s64(v110, v109), v111);
  v144 = veorq_s8(v143, v113);
  v145 = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v146 = vdupq_n_s64(0xC6A7C07A3BDCB349);
  v147 = vaddq_s64(v140, v146);
  *&STACK[0xDA0] = v146;
  v148 = vdupq_n_s64(0xE12D425383608694);
  v149 = veorq_s8(v147, v148);
  v150 = v148;
  *&STACK[0xD20] = v148;
  v151 = veorq_s8(v149, v142);
  v152 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v153 = veorq_s8(vaddq_s64(v137, v146), v150);
  v154 = veorq_s8(v153, v141);
  v155 = vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL);
  v156 = vaddq_s64(v152, v151);
  v157 = vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL);
  v158 = vaddq_s64(v145, v144);
  v159 = vaddq_s64(v155, v154);
  v160 = vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL);
  v161 = vdupq_n_s64(0xFD0A19BB2FE13205);
  v162 = veorq_s8(v159, v161);
  v163 = v161;
  *&STACK[0xE40] = v161;
  v164 = veorq_s8(v162, v160);
  v165 = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v166 = veorq_s8(v156, v163);
  v167 = veorq_s8(v166, v157);
  v168 = vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL);
  v169 = vaddq_s64(v165, v164);
  v170 = vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL);
  v171 = vaddq_s64(v168, v167);
  v172 = vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL);
  v173 = vdupq_n_s64(v10);
  v174 = veorq_s8(v171, v173);
  v175 = v173;
  *&STACK[0xD90] = v173;
  v176 = veorq_s8(v174, v172);
  v177 = vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL);
  v178 = veorq_s8(v169, v175);
  v179 = veorq_s8(v178, v170);
  v180 = vaddq_s64(v177, v176);
  v181 = vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL);
  v182 = vdupq_n_s64(v11);
  v183 = vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL);
  v184 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179), v182);
  v185 = veorq_s8(v184, v183);
  v186 = vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL);
  v187 = veorq_s8(v180, v182);
  v188 = veorq_s8(v187, v181);
  v189 = vaddq_s64(v186, v185);
  v190 = vdupq_n_s64(0x44533E486510C9DEuLL);
  *&STACK[0xE20] = v190;
  v191 = vsubq_s64(vandq_s8(vaddq_s64(v189, v189), v190), v189);
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v188);
  v193 = vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL);
  v194 = vdupq_n_s64(0xDDD660DBCD779B10);
  v195 = vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL);
  v196 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v192, v192), v190), v192), v194);
  *&STACK[0xD60] = v194;
  v197 = vdupq_n_s64(0xF1E910203B8E36B3);
  v198 = veorq_s8(v196, v197);
  v199 = v197;
  *&STACK[0xE10] = v197;
  v200 = veorq_s8(v198, v195);
  v201 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v202 = veorq_s8(vaddq_s64(v191, v194), v199);
  v203 = veorq_s8(v202, v193);
  v204 = vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL);
  v205 = vaddq_s64(v201, v200);
  v206 = vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL);
  v207 = vaddq_s64(v204, v203);
  v208 = vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL);
  v209 = vdupq_n_s64(0x1B5DE9094BAFA51AuLL);
  v210 = veorq_s8(v207, v209);
  v211 = v209;
  *&STACK[0xD50] = v209;
  v212 = veorq_s8(v210, v208);
  v213 = vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL);
  v214 = veorq_s8(v205, v211);
  v215 = vaddq_s64(v115, v114);
  v216 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), veorq_s8(v214, v206));
  v217 = vaddq_s64(v213, v212);
  v218 = vdupq_n_s64(0x9B1C7427651E0F18);
  v219 = vdupq_n_s64(0x38uLL);
  v220 = vshlq_u64(veorq_s8(v158, v218), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v219)));
  v221 = v219;
  v222 = vdupq_n_s64(0xC437C7327FD12F34);
  *&STACK[0xE00] = v222;
  v223 = vshlq_u64(veorq_s8(v216, v222), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), v219)));
  *&STACK[0xE30] = v218;
  v224 = veorq_s8(v217, v222);
  v225 = v221;
  v599.val[2] = veorq_s8(vshlq_u64(veorq_s8(v215, v218), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v221))), vshlq_u64(v224, vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v221))));
  v599.val[1] = veorq_s8(v220, v223);
  v220.i64[0] = v15 + a1 - 1;
  v220.i64[1] = v15 + a1 - 2;
  v226 = v118;
  *&STACK[0xC30] = v118;
  v227 = vandq_s8(v220, v118);
  v228 = vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL);
  *&STACK[0xCB0] = v37;
  v229 = vaddq_s64(v228, v37);
  *&STACK[0xCA0] = v40;
  *&STACK[0xC40] = v43;
  v230 = *&STACK[0xDD0];
  v231 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v40, v228), v43), v229), vandq_s8(v229, *&STACK[0xDD0]));
  v232 = veorq_s8(v231, v48);
  *&STACK[0xCF0] = v51;
  v233 = veorq_s8(v231, v51);
  *&STACK[0xCD0] = v54;
  v234 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), v233), v54);
  v235 = veorq_s8(v234, vsraq_n_u64(vshlq_n_s64(v233, 3uLL), v233, 0x3DuLL));
  *&STACK[0xD40] = v67;
  v236 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), v235), v67);
  v237 = veorq_s8(v236, vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL));
  v238 = vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL);
  v239 = vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL);
  v240 = veorq_s8(vaddq_s64(v238, v237), *&STACK[0xED0]);
  v241 = veorq_s8(v240, v239);
  v242 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL), v241);
  v243 = vorrq_s8(v242, *&STACK[0xEC0]);
  *&STACK[0xD30] = v85;
  v244 = vsubq_s64(v243, vorrq_s8(v242, v85));
  v245 = vsraq_n_u64(vshlq_n_s64(v241, 3uLL), v241, 0x3DuLL);
  v246 = veorq_s8(vaddq_s64(v244, v85), *&STACK[0xEB0]);
  v247 = veorq_s8(v246, v245);
  v248 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL), v247), *&STACK[0xDF0]);
  v249 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v248, v248), *&STACK[0xEA0]), v248), *&STACK[0xE90]), *&STACK[0xE80]);
  v250 = veorq_s8(v249, vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL));
  v251 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL), v250);
  v252 = vorrq_s8(v251, *&STACK[0xDE0]);
  *&STACK[0xC50] = v109;
  v253 = vsubq_s64(v252, vorrq_s8(v251, v109));
  v254 = vsraq_n_u64(vshlq_n_s64(v250, 3uLL), v250, 0x3DuLL);
  v231.i64[0] = v13 + a1;
  v231.i64[1] = v12 + a1;
  v255 = vandq_s8(v231, v226);
  v256 = vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL);
  v257 = *&STACK[0xE70];
  v258 = *&STACK[0xDC0];
  v259 = vsubq_s64(v256, vandq_s8(vaddq_s64(vaddq_s64(v256, v256), *&STACK[0xE70]), *&STACK[0xDC0]));
  *&STACK[0xCC0] = v124;
  v260 = vaddq_s64(v259, v124);
  v261 = *&STACK[0xDB0];
  v262 = veorq_s8(v260, *&STACK[0xDB0]);
  v263 = vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL);
  v264 = vaddq_s64(v253, v109);
  v265 = v111;
  *&STACK[0xD80] = v111;
  v266 = veorq_s8(v264, v111);
  v267 = veorq_s8(v266, v254);
  v268 = vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL);
  v269 = veorq_s8(v260, v133);
  v270 = vaddq_s64(v263, v269);
  v271 = *&STACK[0xE60];
  v272 = vaddq_s64(v268, v267);
  v273 = vsraq_n_u64(vshlq_n_s64(v269, 3uLL), v269, 0x3DuLL);
  v274 = *&STACK[0xDA0];
  v275 = *&STACK[0xD20];
  v276 = veorq_s8(vaddq_s64(vsubq_s64(v270, vandq_s8(vaddq_s64(v270, v270), *&STACK[0xE60])), *&STACK[0xDA0]), *&STACK[0xD20]);
  v277 = veorq_s8(v276, v273);
  v278 = vsraq_n_u64(vshlq_n_s64(v276, 0x38uLL), v276, 8uLL);
  v279 = veorq_s8(v272, v218);
  v280 = vshlq_n_s64(v220, 3uLL);
  v281 = v225;
  *&STACK[0xC90] = v225;
  v282 = vshlq_u64(v279, vnegq_s64(vandq_s8(v280, v225)));
  v283 = vaddq_s64(v278, v277);
  v284 = vsraq_n_u64(vshlq_n_s64(v277, 3uLL), v277, 0x3DuLL);
  v285 = *&STACK[0xE40];
  v286 = veorq_s8(v283, *&STACK[0xE40]);
  v287 = veorq_s8(v286, v284);
  v288 = *&STACK[0xD90];
  v289 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v286, 0x38uLL), v286, 8uLL), v287), *&STACK[0xD90]);
  v290 = veorq_s8(v289, vsraq_n_u64(vshlq_n_s64(v287, 3uLL), v287, 0x3DuLL));
  *&STACK[0xCE0] = v182;
  v291 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v289, 0x38uLL), v289, 8uLL), v290), v182);
  v292 = veorq_s8(v291, vsraq_n_u64(vshlq_n_s64(v290, 3uLL), v290, 0x3DuLL));
  v293 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v291, 0x38uLL), v291, 8uLL), v292);
  v294 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v293, v293), *&STACK[0xE20]), v293), *&STACK[0xD60]), *&STACK[0xE10]);
  v295 = veorq_s8(v294, vsraq_n_u64(vshlq_n_s64(v292, 3uLL), v292, 0x3DuLL));
  v296 = *&STACK[0xD50];
  v297 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v294, 0x38uLL), v294, 8uLL), v295), *&STACK[0xD50]);
  v599.val[0] = veorq_s8(v282, vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v297, 0x38uLL), v297, 8uLL), veorq_s8(v297, vsraq_n_u64(vshlq_n_s64(v295, 3uLL), v295, 0x3DuLL))), *&STACK[0xE00]), vnegq_s64(vandq_s8(vshlq_n_s64(v231, 3uLL), v281))));
  v298 = 1329 * (LODWORD(STACK[0xBD0]) ^ 0x8B1Eu);
  v263.i64[0] = v15 + a1 - 7;
  v263.i64[1] = v20 + a1 + v298;
  v299 = vandq_s8(v263, *&STACK[0xC30]);
  v300 = vsraq_n_u64(vshlq_n_s64(v299, 0x38uLL), v299, 8uLL);
  v301 = vaddq_s64(v300, *&STACK[0xCB0]);
  v302 = vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0xCA0], v300), v43), v301);
  v303 = v230;
  v304 = vsubq_s64(v302, vandq_s8(v301, v230));
  v305 = veorq_s8(v304, v48);
  v306 = v48;
  v307 = vsraq_n_u64(vshlq_n_s64(v305, 0x38uLL), v305, 8uLL);
  v308 = veorq_s8(v304, v51);
  v309 = vsraq_n_u64(vshlq_n_s64(v308, 3uLL), v308, 0x3DuLL);
  v310 = veorq_s8(vaddq_s64(v307, v308), v54);
  v311 = veorq_s8(v310, v309);
  v312 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v310, 0x38uLL), v310, 8uLL), v311), *&STACK[0xD40]);
  v313 = veorq_s8(v312, vsraq_n_u64(vshlq_n_s64(v311, 3uLL), v311, 0x3DuLL));
  v314 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v312, 0x38uLL), v312, 8uLL), v313), *&STACK[0xED0]);
  v315 = veorq_s8(v314, vsraq_n_u64(vshlq_n_s64(v313, 3uLL), v313, 0x3DuLL));
  v316 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v314, 0x38uLL), v314, 8uLL), v315);
  v317 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v316, *&STACK[0xEC0]), vorrq_s8(v316, *&STACK[0xD30])), *&STACK[0xD30]), *&STACK[0xEB0]);
  v318 = veorq_s8(v317, vsraq_n_u64(vshlq_n_s64(v315, 3uLL), v315, 0x3DuLL));
  v319 = vsraq_n_u64(vshlq_n_s64(v318, 3uLL), v318, 0x3DuLL);
  v320 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v317, 0x38uLL), v317, 8uLL), v318), *&STACK[0xDF0]);
  v281.i64[0] = a6 + a1;
  v281.i64[1] = v19 + a1 + v298;
  v321 = vandq_s8(v281, *&STACK[0xC30]);
  v322 = *&STACK[0xC30];
  v323 = vsraq_n_u64(vshlq_n_s64(v321, 0x38uLL), v321, 8uLL);
  v324 = vsubq_s64(v323, vandq_s8(vaddq_s64(vaddq_s64(v323, v323), v257), v258));
  v325 = *&STACK[0xE90];
  v326 = *&STACK[0xE80];
  v327 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v320, v320), *&STACK[0xEA0]), v320), *&STACK[0xE90]), *&STACK[0xE80]);
  v328 = veorq_s8(v327, v319);
  v329 = vsraq_n_u64(vshlq_n_s64(v327, 0x38uLL), v327, 8uLL);
  v330 = vaddq_s64(v324, v124);
  v331 = veorq_s8(v330, v261);
  v332 = *&STACK[0xD70];
  v333 = veorq_s8(v330, *&STACK[0xD70]);
  v334 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v331, 0x38uLL), v331, 8uLL), v333);
  v335 = vsraq_n_u64(vshlq_n_s64(v328, 3uLL), v328, 0x3DuLL);
  v336 = vaddq_s64(v329, v328);
  v337 = vsraq_n_u64(vshlq_n_s64(v333, 3uLL), v333, 0x3DuLL);
  v338 = veorq_s8(vaddq_s64(vsubq_s64(v334, vandq_s8(vaddq_s64(v334, v334), v271)), v274), v275);
  v339 = veorq_s8(v338, v337);
  v340 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v338, 0x38uLL), v338, 8uLL), v339), v285);
  v341 = veorq_s8(v340, vsraq_n_u64(vshlq_n_s64(v339, 3uLL), v339, 0x3DuLL));
  v342 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v340, 0x38uLL), v340, 8uLL), v341), v288);
  v343 = veorq_s8(v342, vsraq_n_u64(vshlq_n_s64(v341, 3uLL), v341, 0x3DuLL));
  v344 = vsraq_n_u64(vshlq_n_s64(v342, 0x38uLL), v342, 8uLL);
  v345 = *&STACK[0xDE0];
  v346 = *&STACK[0xC50];
  v347 = vsubq_s64(vorrq_s8(v336, *&STACK[0xDE0]), vorrq_s8(v336, *&STACK[0xC50]));
  v348 = vaddq_s64(v344, v343);
  v349 = vsraq_n_u64(vshlq_n_s64(v343, 3uLL), v343, 0x3DuLL);
  v350 = veorq_s8(v348, v182);
  v351 = veorq_s8(v350, v349);
  v352 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v350, 0x38uLL), v350, 8uLL), v351);
  v353 = vsraq_n_u64(vshlq_n_s64(v351, 3uLL), v351, 0x3DuLL);
  v354 = veorq_s8(vaddq_s64(v347, *&STACK[0xC50]), v265);
  v355 = veorq_s8(v354, v335);
  v356 = vsraq_n_u64(vshlq_n_s64(v354, 0x38uLL), v354, 8uLL);
  v357 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v352, v352), *&STACK[0xE20]), v352), *&STACK[0xD60]), *&STACK[0xE10]);
  v358 = veorq_s8(v357, v353);
  v359 = vsraq_n_u64(vshlq_n_s64(v357, 0x38uLL), v357, 8uLL);
  v360 = vaddq_s64(v356, v355);
  v361 = vaddq_s64(v359, v358);
  v362 = vsraq_n_u64(vshlq_n_s64(v358, 3uLL), v358, 0x3DuLL);
  v363 = veorq_s8(v361, *&STACK[0xD50]);
  v364 = *&STACK[0xC90];
  v599.val[3] = veorq_s8(vshlq_u64(veorq_s8(v360, *&STACK[0xE30]), vnegq_s64(vandq_s8(vshlq_n_s64(v263, 3uLL), *&STACK[0xC90]))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v363, 0x38uLL), v363, 8uLL), veorq_s8(v363, v362)), *&STACK[0xE00]), vnegq_s64(vandq_s8(vshlq_n_s64(v281, 3uLL), *&STACK[0xC90]))));
  *&STACK[0xC60] = xmmword_100BC76B0;
  *&STACK[0xC70] = vqtbl4q_s8(v599, xmmword_100BC76B0);
  v213.i64[0] = v15 + a1 - 15;
  v213.i64[1] = v15 + a1 - 16;
  v365 = vandq_s8(v213, v322);
  v366 = vsraq_n_u64(vshlq_n_s64(v365, 0x38uLL), v365, 8uLL);
  v288.i64[0] = v15 + a1 - 13;
  v288.i64[1] = v15 + a1 - 14;
  v367 = vandq_s8(v288, v322);
  v368 = vsraq_n_u64(vshlq_n_s64(v367, 0x38uLL), v367, 8uLL);
  v369 = *&STACK[0xCB0];
  v370 = vaddq_s64(v368, *&STACK[0xCB0]);
  v371 = *&STACK[0xCA0];
  v372 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0xCA0], v368), *&STACK[0xC40]), v370), vandq_s8(v370, v303));
  v373 = vaddq_s64(v366, *&STACK[0xCB0]);
  v599.val[3] = *&STACK[0xC40];
  v374 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0xCA0], v366), *&STACK[0xC40]), v373), vandq_s8(v373, v303));
  *&STACK[0xD00] = v306;
  v375 = veorq_s8(v372, v306);
  v376 = vsraq_n_u64(vshlq_n_s64(v375, 0x38uLL), v375, 8uLL);
  v377 = veorq_s8(v374, v306);
  v378 = vsraq_n_u64(vshlq_n_s64(v377, 0x38uLL), v377, 8uLL);
  v379 = veorq_s8(v372, *&STACK[0xCF0]);
  v380 = vaddq_s64(v376, v379);
  v381 = vsraq_n_u64(vshlq_n_s64(v379, 3uLL), v379, 0x3DuLL);
  v382 = veorq_s8(v374, *&STACK[0xCF0]);
  v383 = vaddq_s64(v378, v382);
  v384 = vsraq_n_u64(vshlq_n_s64(v382, 3uLL), v382, 0x3DuLL);
  v385 = veorq_s8(v383, *&STACK[0xCD0]);
  v386 = veorq_s8(v385, v384);
  v387 = vsraq_n_u64(vshlq_n_s64(v385, 0x38uLL), v385, 8uLL);
  v388 = veorq_s8(v380, *&STACK[0xCD0]);
  v389 = veorq_s8(v388, v381);
  v390 = vsraq_n_u64(vshlq_n_s64(v388, 0x38uLL), v388, 8uLL);
  v391 = vaddq_s64(v387, v386);
  v392 = vsraq_n_u64(vshlq_n_s64(v386, 3uLL), v386, 0x3DuLL);
  v393 = veorq_s8(vaddq_s64(v390, v389), *&STACK[0xD40]);
  v394 = veorq_s8(v393, vsraq_n_u64(vshlq_n_s64(v389, 3uLL), v389, 0x3DuLL));
  v395 = vsraq_n_u64(vshlq_n_s64(v393, 0x38uLL), v393, 8uLL);
  v396 = veorq_s8(v391, *&STACK[0xD40]);
  v397 = veorq_s8(v396, v392);
  v398 = vsraq_n_u64(vshlq_n_s64(v396, 0x38uLL), v396, 8uLL);
  v399 = vaddq_s64(v395, v394);
  v400 = vsraq_n_u64(vshlq_n_s64(v394, 3uLL), v394, 0x3DuLL);
  v401 = vaddq_s64(v398, v397);
  v402 = vsraq_n_u64(vshlq_n_s64(v397, 3uLL), v397, 0x3DuLL);
  v403 = veorq_s8(v401, *&STACK[0xED0]);
  v404 = veorq_s8(v403, v402);
  v405 = vsraq_n_u64(vshlq_n_s64(v403, 0x38uLL), v403, 8uLL);
  v406 = veorq_s8(v399, *&STACK[0xED0]);
  v407 = veorq_s8(v406, v400);
  v408 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v406, 0x38uLL), v406, 8uLL), v407);
  v409 = vaddq_s64(v405, v404);
  v410 = vsraq_n_u64(vshlq_n_s64(v407, 3uLL), v407, 0x3DuLL);
  v411 = vsraq_n_u64(vshlq_n_s64(v404, 3uLL), v404, 0x3DuLL);
  v412 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v409, *&STACK[0xEC0]), vorrq_s8(v409, *&STACK[0xD30])), *&STACK[0xD30]), *&STACK[0xEB0]);
  v413 = veorq_s8(v412, v411);
  v414 = vsraq_n_u64(vshlq_n_s64(v412, 0x38uLL), v412, 8uLL);
  v415 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v408, *&STACK[0xEC0]), vorrq_s8(v408, *&STACK[0xD30])), *&STACK[0xD30]), *&STACK[0xEB0]);
  v416 = veorq_s8(v415, v410);
  v417 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v415, 0x38uLL), v415, 8uLL), v416), *&STACK[0xDF0]);
  v418 = veorq_s8(vaddq_s64(v414, v413), *&STACK[0xDF0]);
  v419 = vsraq_n_u64(vshlq_n_s64(v416, 3uLL), v416, 0x3DuLL);
  v420 = vsraq_n_u64(vshlq_n_s64(v413, 3uLL), v413, 0x3DuLL);
  v421 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v418, v418), *&STACK[0xEA0]), v418), v325), v326);
  v422 = veorq_s8(v421, v420);
  v423 = vsraq_n_u64(vshlq_n_s64(v421, 0x38uLL), v421, 8uLL);
  v424 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v417, v417), *&STACK[0xEA0]), v417), v325), v326);
  v425 = veorq_s8(v424, v419);
  v426 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v424, 0x38uLL), v424, 8uLL), v425);
  v427 = vsubq_s64(vorrq_s8(v426, v345), vorrq_s8(v426, v346));
  v428 = vaddq_s64(v423, v422);
  v429 = vsraq_n_u64(vshlq_n_s64(v425, 3uLL), v425, 0x3DuLL);
  v430 = vsraq_n_u64(vshlq_n_s64(v422, 3uLL), v422, 0x3DuLL);
  v285.i64[0] = v14 + a1;
  v285.i64[1] = v23 + a1;
  v431 = vandq_s8(v285, v322);
  v432 = vsraq_n_u64(vshlq_n_s64(v431, 0x38uLL), v431, 8uLL);
  v431.i64[0] = v22 + a1;
  v431.i64[1] = v21 + a1;
  v433 = vandq_s8(v431, v322);
  v434 = vsraq_n_u64(vshlq_n_s64(v433, 0x38uLL), v433, 8uLL);
  v435 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v428, v345), vorrq_s8(v428, v346)), v346), *&STACK[0xD80]);
  v436 = veorq_s8(v435, v430);
  v437 = vsraq_n_u64(vshlq_n_s64(v435, 0x38uLL), v435, 8uLL);
  v438 = vaddq_s64(vsubq_s64(v434, vandq_s8(vaddq_s64(vaddq_s64(v434, v434), *&STACK[0xE70]), *&STACK[0xDC0])), *&STACK[0xCC0]);
  v439 = veorq_s8(v438, *&STACK[0xDB0]);
  v440 = vsraq_n_u64(vshlq_n_s64(v439, 0x38uLL), v439, 8uLL);
  v441 = vaddq_s64(vsubq_s64(v432, vandq_s8(vaddq_s64(vaddq_s64(v432, v432), *&STACK[0xE70]), *&STACK[0xDC0])), *&STACK[0xCC0]);
  v442 = veorq_s8(v441, *&STACK[0xDB0]);
  v443 = vsraq_n_u64(vshlq_n_s64(v442, 0x38uLL), v442, 8uLL);
  v444 = veorq_s8(v438, v332);
  v445 = vaddq_s64(v440, v444);
  v446 = veorq_s8(vaddq_s64(v427, v346), *&STACK[0xD80]);
  v447 = veorq_s8(v446, v429);
  v448 = vsraq_n_u64(vshlq_n_s64(v446, 0x38uLL), v446, 8uLL);
  v449 = veorq_s8(v441, v332);
  v450 = vaddq_s64(v443, v449);
  v451 = vaddq_s64(v448, v447);
  v452 = vsraq_n_u64(vshlq_n_s64(v444, 3uLL), v444, 0x3DuLL);
  v453 = veorq_s8(vaddq_s64(vsubq_s64(v450, vandq_s8(vaddq_s64(v450, v450), *&STACK[0xE60])), *&STACK[0xDA0]), *&STACK[0xD20]);
  v454 = veorq_s8(v453, vsraq_n_u64(vshlq_n_s64(v449, 3uLL), v449, 0x3DuLL));
  v455 = vsraq_n_u64(vshlq_n_s64(v453, 0x38uLL), v453, 8uLL);
  v456 = veorq_s8(vaddq_s64(vsubq_s64(v445, vandq_s8(vaddq_s64(v445, v445), *&STACK[0xE60])), *&STACK[0xDA0]), *&STACK[0xD20]);
  v457 = veorq_s8(v456, v452);
  v458 = vsraq_n_u64(vshlq_n_s64(v457, 3uLL), v457, 0x3DuLL);
  v459 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v456, 0x38uLL), v456, 8uLL), v457), *&STACK[0xE40]);
  v460 = veorq_s8(v459, v458);
  v461 = vsraq_n_u64(vshlq_n_s64(v459, 0x38uLL), v459, 8uLL);
  v462 = veorq_s8(vaddq_s64(v455, v454), *&STACK[0xE40]);
  v463 = veorq_s8(v462, vsraq_n_u64(vshlq_n_s64(v454, 3uLL), v454, 0x3DuLL));
  v464 = vsraq_n_u64(vshlq_n_s64(v462, 0x38uLL), v462, 8uLL);
  v465 = vaddq_s64(v461, v460);
  v466 = vsraq_n_u64(vshlq_n_s64(v460, 3uLL), v460, 0x3DuLL);
  v467 = vsraq_n_u64(vshlq_n_s64(v463, 3uLL), v463, 0x3DuLL);
  v468 = veorq_s8(vaddq_s64(v464, v463), *&STACK[0xD90]);
  v469 = veorq_s8(v468, v467);
  v470 = vsraq_n_u64(vshlq_n_s64(v468, 0x38uLL), v468, 8uLL);
  v471 = veorq_s8(v465, *&STACK[0xD90]);
  v472 = veorq_s8(v471, v466);
  v473 = vsraq_n_u64(vshlq_n_s64(v471, 0x38uLL), v471, 8uLL);
  v474 = vaddq_s64(v470, v469);
  v475 = vsraq_n_u64(vshlq_n_s64(v469, 3uLL), v469, 0x3DuLL);
  v476 = vaddq_s64(v473, v472);
  v477 = vsraq_n_u64(vshlq_n_s64(v472, 3uLL), v472, 0x3DuLL);
  v478 = veorq_s8(v476, *&STACK[0xCE0]);
  v479 = veorq_s8(v478, v477);
  v480 = vsraq_n_u64(vshlq_n_s64(v478, 0x38uLL), v478, 8uLL);
  v481 = veorq_s8(v474, *&STACK[0xCE0]);
  v482 = veorq_s8(v481, v475);
  v483 = vsraq_n_u64(vshlq_n_s64(v481, 0x38uLL), v481, 8uLL);
  v484 = vaddq_s64(v480, v479);
  v485 = vaddq_s64(v483, v482);
  v486 = vshlq_u64(veorq_s8(v451, *&STACK[0xE30]), vnegq_s64(vandq_s8(vshlq_n_s64(v288, 3uLL), v364)));
  v487 = vsraq_n_u64(vshlq_n_s64(v482, 3uLL), v482, 0x3DuLL);
  v488 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v485, v485), *&STACK[0xE20]), v485), *&STACK[0xD60]), *&STACK[0xE10]);
  v489 = veorq_s8(v488, v487);
  v490 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v484, v484), *&STACK[0xE20]), v484), *&STACK[0xD60]), *&STACK[0xE10]);
  v491 = veorq_s8(v490, vsraq_n_u64(vshlq_n_s64(v479, 3uLL), v479, 0x3DuLL));
  v492 = vsraq_n_u64(vshlq_n_s64(v490, 0x38uLL), v490, 8uLL);
  v493 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v488, 0x38uLL), v488, 8uLL), v489);
  v494 = vsraq_n_u64(vshlq_n_s64(v489, 3uLL), v489, 0x3DuLL);
  v495 = vaddq_s64(v492, v491);
  v496 = vsraq_n_u64(vshlq_n_s64(v491, 3uLL), v491, 0x3DuLL);
  v497 = veorq_s8(v495, v296);
  v498 = veorq_s8(v493, v296);
  v499 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v498, 0x38uLL), v498, 8uLL), veorq_s8(v498, v494)), *&STACK[0xE00]), vnegq_s64(vandq_s8(vshlq_n_s64(v285, 3uLL), v364)));
  v598.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v437, v436), *&STACK[0xE30]), vnegq_s64(vandq_s8(vshlq_n_s64(v213, 3uLL), v364))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v497, 0x38uLL), v497, 8uLL), veorq_s8(v497, v496)), *&STACK[0xE00]), vnegq_s64(vandq_s8(vshlq_n_s64(v431, 3uLL), v364))));
  v598.val[2] = veorq_s8(v486, v499);
  v488.i64[0] = v15 + a1 - 11;
  v488.i64[1] = v15 + a1 - 12;
  v500 = vandq_s8(v488, v322);
  v501 = vsraq_n_u64(vshlq_n_s64(v500, 0x38uLL), v500, 8uLL);
  v502 = vaddq_s64(v501, v369);
  v503 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v371, v501), v599.val[3]), v502), vandq_s8(v502, *&STACK[0xDD0]));
  v504 = veorq_s8(v503, *&STACK[0xD00]);
  v505 = vsraq_n_u64(vshlq_n_s64(v504, 0x38uLL), v504, 8uLL);
  v506 = veorq_s8(v503, *&STACK[0xCF0]);
  v507 = vsraq_n_u64(vshlq_n_s64(v506, 3uLL), v506, 0x3DuLL);
  v508 = veorq_s8(vaddq_s64(v505, v506), *&STACK[0xCD0]);
  v509 = veorq_s8(v508, v507);
  v510 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v508, 0x38uLL), v508, 8uLL), v509), *&STACK[0xD40]);
  v511 = veorq_s8(v510, vsraq_n_u64(vshlq_n_s64(v509, 3uLL), v509, 0x3DuLL));
  v512 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v510, 0x38uLL), v510, 8uLL), v511), *&STACK[0xED0]);
  v513 = veorq_s8(v512, vsraq_n_u64(vshlq_n_s64(v511, 3uLL), v511, 0x3DuLL));
  v514 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v512, 0x38uLL), v512, 8uLL), v513);
  v515 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v514, *&STACK[0xEC0]), vorrq_s8(v514, *&STACK[0xD30])), *&STACK[0xD30]), *&STACK[0xEB0]);
  v516 = veorq_s8(v515, vsraq_n_u64(vshlq_n_s64(v513, 3uLL), v513, 0x3DuLL));
  v517 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v515, 0x38uLL), v515, 8uLL), v516), *&STACK[0xDF0]);
  v518 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v517, v517), *&STACK[0xEA0]), v517), *&STACK[0xE90]), *&STACK[0xE80]);
  v519 = veorq_s8(v518, vsraq_n_u64(vshlq_n_s64(v516, 3uLL), v516, 0x3DuLL));
  v520 = vsraq_n_u64(vshlq_n_s64(v518, 0x38uLL), v518, 8uLL);
  v518.i64[0] = a3 + a1;
  v518.i64[1] = a2 + a1;
  v521 = vandq_s8(v518, v322);
  v522 = vsraq_n_u64(vshlq_n_s64(v521, 0x38uLL), v521, 8uLL);
  v523 = vaddq_s64(vsubq_s64(v522, vandq_s8(vaddq_s64(vaddq_s64(v522, v522), *&STACK[0xE70]), *&STACK[0xDC0])), *&STACK[0xCC0]);
  v524 = veorq_s8(v523, *&STACK[0xDB0]);
  v525 = veorq_s8(v523, *&STACK[0xD70]);
  v526 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v524, 0x38uLL), v524, 8uLL), v525);
  v527 = vsraq_n_u64(vshlq_n_s64(v525, 3uLL), v525, 0x3DuLL);
  v528 = veorq_s8(vaddq_s64(vsubq_s64(v526, vandq_s8(vaddq_s64(v526, v526), *&STACK[0xE60])), *&STACK[0xDA0]), *&STACK[0xD20]);
  v529 = veorq_s8(v528, v527);
  v530 = vsraq_n_u64(vshlq_n_s64(v528, 0x38uLL), v528, 8uLL);
  v531 = vsraq_n_u64(vshlq_n_s64(v519, 3uLL), v519, 0x3DuLL);
  v532 = vaddq_s64(v520, v519);
  v533 = veorq_s8(vaddq_s64(v530, v529), *&STACK[0xE40]);
  v534 = veorq_s8(v533, vsraq_n_u64(vshlq_n_s64(v529, 3uLL), v529, 0x3DuLL));
  v535 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v533, 0x38uLL), v533, 8uLL), v534);
  v536 = vsraq_n_u64(vshlq_n_s64(v534, 3uLL), v534, 0x3DuLL);
  v537 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v532, *&STACK[0xDE0]), vorrq_s8(v532, v346)), v346), *&STACK[0xD80]);
  v538 = veorq_s8(v537, v531);
  v539 = vsraq_n_u64(vshlq_n_s64(v537, 0x38uLL), v537, 8uLL);
  v540 = veorq_s8(v535, *&STACK[0xD90]);
  v541 = veorq_s8(v540, v536);
  v542 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v540, 0x38uLL), v540, 8uLL), v541), *&STACK[0xCE0]);
  v543 = veorq_s8(v542, vsraq_n_u64(vshlq_n_s64(v541, 3uLL), v541, 0x3DuLL));
  v544 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v542, 0x38uLL), v542, 8uLL), v543);
  v545 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v544, v544), *&STACK[0xE20]), v544), *&STACK[0xD60]), *&STACK[0xE10]);
  v546 = veorq_s8(v545, vsraq_n_u64(vshlq_n_s64(v543, 3uLL), v543, 0x3DuLL));
  v547 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v545, 0x38uLL), v545, 8uLL), v546), *&STACK[0xD50]);
  v598.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v539, v538), *&STACK[0xE30]), vnegq_s64(vandq_s8(vshlq_n_s64(v488, 3uLL), *&STACK[0xC90]))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v547, 0x38uLL), v547, 8uLL), veorq_s8(v547, vsraq_n_u64(vshlq_n_s64(v546, 3uLL), v546, 0x3DuLL))), *&STACK[0xE00]), vnegq_s64(vandq_s8(vshlq_n_s64(v518, 3uLL), *&STACK[0xC90]))));
  v518.i64[0] = v15 + a1 - 9;
  v518.i64[1] = v15 + a1 - 10;
  v548 = vandq_s8(v518, v322);
  v549 = vsraq_n_u64(vshlq_n_s64(v548, 0x38uLL), v548, 8uLL);
  v550 = vaddq_s64(v549, v369);
  v551 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v371, v549), v599.val[3]), v550), vandq_s8(v550, *&STACK[0xDD0]));
  v552 = veorq_s8(v551, *&STACK[0xD00]);
  v553 = veorq_s8(v551, *&STACK[0xCF0]);
  v554 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v552, 0x38uLL), v552, 8uLL), v553), *&STACK[0xCD0]);
  v555 = veorq_s8(v554, vsraq_n_u64(vshlq_n_s64(v553, 3uLL), v553, 0x3DuLL));
  v556 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v554, 0x38uLL), v554, 8uLL), v555), *&STACK[0xD40]);
  v557 = veorq_s8(v556, vsraq_n_u64(vshlq_n_s64(v555, 3uLL), v555, 0x3DuLL));
  v558 = vsraq_n_u64(vshlq_n_s64(v557, 3uLL), v557, 0x3DuLL);
  v559 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v556, 0x38uLL), v556, 8uLL), v557), *&STACK[0xED0]);
  v560 = veorq_s8(v559, v558);
  v561 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v559, 0x38uLL), v559, 8uLL), v560);
  v562 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v561, *&STACK[0xEC0]), vorrq_s8(v561, *&STACK[0xD30])), *&STACK[0xD30]), *&STACK[0xEB0]);
  v563 = veorq_s8(v562, vsraq_n_u64(vshlq_n_s64(v560, 3uLL), v560, 0x3DuLL));
  v564 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v562, 0x38uLL), v562, 8uLL), v563), *&STACK[0xDF0]);
  v565 = vsraq_n_u64(vshlq_n_s64(v563, 3uLL), v563, 0x3DuLL);
  v261.i64[0] = a5 + a1;
  v261.i64[1] = a4 + a1;
  v566 = vandq_s8(v261, v322);
  v567 = vsraq_n_u64(vshlq_n_s64(v566, 0x38uLL), v566, 8uLL);
  v568 = vaddq_s64(vsubq_s64(v567, vandq_s8(vaddq_s64(vaddq_s64(v567, v567), *&STACK[0xE70]), *&STACK[0xDC0])), *&STACK[0xCC0]);
  v569 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v564, v564), *&STACK[0xEA0]), v564), *&STACK[0xE90]), *&STACK[0xE80]);
  v570 = veorq_s8(v568, *&STACK[0xDB0]);
  v571 = veorq_s8(v568, *&STACK[0xD70]);
  v572 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v570, 0x38uLL), v570, 8uLL), v571);
  v573 = veorq_s8(v569, v565);
  v574 = vsraq_n_u64(vshlq_n_s64(v569, 0x38uLL), v569, 8uLL);
  v575 = veorq_s8(vaddq_s64(vsubq_s64(v572, vandq_s8(vaddq_s64(v572, v572), *&STACK[0xE60])), *&STACK[0xDA0]), *&STACK[0xD20]);
  v576 = vsraq_n_u64(vshlq_n_s64(v571, 3uLL), v571, 0x3DuLL);
  v577 = vsraq_n_u64(vshlq_n_s64(v573, 3uLL), v573, 0x3DuLL);
  v578 = vaddq_s64(v574, v573);
  v579 = veorq_s8(v575, v576);
  v580 = vsraq_n_u64(vshlq_n_s64(v575, 0x38uLL), v575, 8uLL);
  v581 = vsubq_s64(vorrq_s8(v578, *&STACK[0xDE0]), vorrq_s8(v578, v346));
  v582 = veorq_s8(vaddq_s64(v580, v579), *&STACK[0xE40]);
  v583 = veorq_s8(v582, vsraq_n_u64(vshlq_n_s64(v579, 3uLL), v579, 0x3DuLL));
  v584 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v582, 0x38uLL), v582, 8uLL), v583), *&STACK[0xD90]);
  v585 = veorq_s8(v584, vsraq_n_u64(vshlq_n_s64(v583, 3uLL), v583, 0x3DuLL));
  v586 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v584, 0x38uLL), v584, 8uLL), v585), *&STACK[0xCE0]);
  v587 = veorq_s8(v586, vsraq_n_u64(vshlq_n_s64(v585, 3uLL), v585, 0x3DuLL));
  v588 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v586, 0x38uLL), v586, 8uLL), v587);
  v589 = veorq_s8(vaddq_s64(v581, v346), *&STACK[0xD80]);
  v590 = veorq_s8(v589, v577);
  v591 = vsraq_n_u64(vshlq_n_s64(v589, 0x38uLL), v589, 8uLL);
  v592 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v588, v588), *&STACK[0xE20]), v588), *&STACK[0xD60]), *&STACK[0xE10]);
  v593 = veorq_s8(v592, vsraq_n_u64(vshlq_n_s64(v587, 3uLL), v587, 0x3DuLL));
  v594 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v592, 0x38uLL), v592, 8uLL), v593), *&STACK[0xD50]);
  v598.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v591, v590), *&STACK[0xE30]), vnegq_s64(vandq_s8(vshlq_n_s64(v518, 3uLL), *&STACK[0xC90]))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v594, 0x38uLL), v594, 8uLL), veorq_s8(v594, vsraq_n_u64(vshlq_n_s64(v593, 3uLL), v593, 0x3DuLL))), *&STACK[0xE00]), vnegq_s64(vandq_s8(vshlq_n_s64(v261, 3uLL), *&STACK[0xC90]))));
  v595 = *&STACK[0xC70];
  v595.i64[1] = vqtbl4q_s8(v598, *&STACK[0xC60]).u64[0];
  v596 = vrev64q_s8(v595);
  *(v21 + a1) = veorq_s8(vextq_s8(v596, v596, 8uLL), *&STACK[0xC80]);
  return (*(STACK[0xF18] + 8 * ((11994 * (v18 == 0)) ^ LODWORD(STACK[0xBC0]))))();
}

uint64_t sub_100329C04()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xAFFBu)))(LOWORD(STACK[0x897E]) ^ 0x5706 ^ ((v0 - 25912) | 0x4C90u));
  STACK[0x9378] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 + 1391395452) & 0x2D10B8E2) - 8150)) ^ v0)))();
}

uint64_t sub_100329D30()
{
  v0 = 1957 * (STACK[0xF10] ^ 0x8B38);
  v1 = STACK[0xF10] - 33811;
  STACK[0xA160] = STACK[0xA128] + 82;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x579 ^ v0)))();
}

uint64_t sub_100329D98()
{
  v0 = STACK[0xF10] ^ 0x89CF;
  v1 = STACK[0xF10] - 16084;
  v2 = STACK[0x7E54];
  LODWORD(STACK[0x7E54]) += 16;
  v3 = (((LODWORD(STACK[0x3554]) ^ 0x2B94620) - 45696544) ^ ((LODWORD(STACK[0x3554]) ^ 0xEF0A1E29) + 284549591) ^ (v0 - 73835020 + (LODWORD(STACK[0x3554]) ^ 0x4669F18))) - 1331862239;
  v4 = ((v2 + 1791046112) < 0xC6C79E10) ^ (v3 < 0xC6C79E10);
  v5 = v2 + 1791046112 > v3;
  if (v4)
  {
    v5 = (v2 + 1791046112) < 0xC6C79E10;
  }

  return (*(STACK[0xF18] + 8 * ((23 * v5) ^ v1)))();
}

uint64_t sub_100329EBC()
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

uint64_t sub_10032A2B8()
{
  STACK[0x1B98] = *(v2 + 8);
  LODWORD(STACK[0x5A74]) = 2;
  STACK[0x5F28] = v1;
  LODWORD(STACK[0x41D0]) = 1;
  LODWORD(STACK[0x73F4]) = 303392037;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10032A370()
{
  *v1 |= 0x800u;
  v4 = STACK[0xB588];
  *(v4 + 56) = v0 - 176739293 + *STACK[0xA3E8];
  *(v4 + 60) = (((v2 ^ 0x4A436F1B) - 1245933339) ^ ((v2 ^ 0xB92501A7) + 1188757081) ^ (((v3 + 29527) ^ 0xE54CDD68) + (v2 ^ 0x1AB3A9AD))) - 371865847;
  return (*(STACK[0xF18] + 8 * (v3 - 708)))();
}

uint64_t sub_10032A454()
{
  v1 = STACK[0x7690];
  STACK[0xA808] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v1 - 35387 + ((v0 + 1616067037) & 0x9FAC9F3B);
  LODWORD(STACK[0x94C4]) = 256;
  return (*(STACK[0xF18] + 8 * ((74 * (STACK[0x4048] == 0x7E666516A39B34A6)) ^ v0)))();
}

uint64_t sub_10032A514@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 40136))();
}

uint64_t sub_10032A580()
{
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 + 16238)))(v0);
  *v2 = 0;
  return (*(v3 + 8 * (v1 - 21245)))(10885, 47116, 4294931653, 16980, 15139, 3647379118, 53, 4294950492);
}

uint64_t sub_10032A6C4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 & 0x7FFFDBCE) + (a1 ^ 0x5CBBFBBF3FFFEDE7) - 0x5CBBFBBE83A1CC9DLL;
  v4 = STACK[0x7D20] - 0x6F6F2C6D658E0409 + 11881 * (v2 ^ 0xE9D5C712);
  v5 = (v3 < 0xBC5E2146) ^ (v4 < 0xBC5E2146);
  v6 = v3 > v4;
  if (v5)
  {
    v6 = v3 < 0xBC5E2146;
  }

  if (v6)
  {
    v7 = 371891407;
  }

  else
  {
    v7 = STACK[0xB3D8];
  }

  return (*(STACK[0xF18] + 8 * ((41261 * (((((v7 - v2) | (v2 - v7)) >> ((v2 - 71) ^ 0xD5)) & 1) == 0)) ^ (v2 + 371877614))))();
}

uint64_t sub_10032A820@<X0>(int a1@<W8>)
{
  v4 = *(v2 + 1696);
  *(v4 + 48) = (((v3 ^ 0x39B4F631) - 392549591) ^ ((v3 ^ 0xD9030FB4) + 137220782) ^ ((v3 ^ 0x27B31C72) + ((a1 - 1003957188) & 0x3BD79FBF) - 157469135)) - 371865838;
  *(v4 + 56) = ((v1 + 695075666) | (((v1 + 695075666) < 0x296E034E) << 32)) + 0x62234C59A1C004ABLL;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_10032AA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *a5 += (4916 * (v5 ^ 0x8B3E)) ^ 0x6005;
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = 155453101 * ((~(&STACK[0x10000] + 3800) & 0xF9C074E6 | (&STACK[0x10000] + 3800) & 0x63F8B18) ^ 0x1FE66F29) + v5 + 296753103;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v5 + 16271)))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v6 + 8 * (v5 - 32430));
  return (*(v6 + 8 * (v5 - 29900)))(v7);
}

uint64_t sub_10032AAE0()
{
  v0 = STACK[0xF10] - 34741;
  *(STACK[0x6A78] + 32) = STACK[0x9894];
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x1F57)))();
}

uint64_t sub_10032AB20()
{
  v1 = STACK[0x9798] + 8;
  v2 = STACK[0x8BE0] + 4;
  v3 = STACK[0x8890];
  v4 = (((LODWORD(STACK[0xAD48]) ^ 0x6C29B3C7) + 1742546325) ^ (((v0 + 18765) ^ 0x38875DC7 ^ LODWORD(STACK[0xAD48])) + 863191216) ^ ((LODWORD(STACK[0xAD48]) ^ 0x1112B2A9) + 451290363)) + (v0 ^ 0x2CD5E1FB);
  v5 = 1112314453 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x22CAAB50) + 583707472) ^ 0xCD9C8189);
  STACK[0x10EE8] = STACK[0x858];
  STACK[0x10EF8] = v3;
  STACK[0x10ED8] = v1;
  LODWORD(STACK[0x10EE0]) = v4 ^ v5;
  STACK[0x10F08] = v2;
  LODWORD(STACK[0x10F00]) = (v0 + 25871) ^ v5;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v0 ^ 0x8A61)))(&STACK[0x10ED8]);
  v8 = STACK[0x10EF0];
  LODWORD(STACK[0xAD50]) = STACK[0x10EF0];
  return (*(v6 + 8 * ((1007 * (v8 != -371865839)) ^ v0)))(v7);
}

uint64_t sub_10032AD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0xF10] - 34165;
  LODWORD(STACK[0xA5B0]) = STACK[0x9894];
  v5 = *(STACK[0x2C38] + 32) + 405771767;
  v6 = (v5 ^ 0xE7DF4315) & (2 * (v5 & 0xE7D06A04)) ^ v5 & 0xE7D06A04;
  v7 = ((2 * (v5 ^ 0xACDF0715)) ^ 0x961EDA22) & (v5 ^ 0xACDF0715) ^ (2 * (v5 ^ 0xACDF0715)) & 0x4B0F6D10;
  v8 = v7 ^ 0x49012511;
  v9 = (v7 ^ 0x2024800) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x2C3DB444) & v8 ^ (4 * v8) & 0x4B0F6D10;
  v11 = (v10 ^ 0x80D2400) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x43024911)) ^ 0xB0F6D110) & (v10 ^ 0x43024911) ^ (16 * (v10 ^ 0x43024911)) & 0x4B0F6D10;
  v13 = v11 ^ 0x4B0F6D11 ^ (v12 ^ 0x64100) & (v11 << 8);
  v14 = v5 ^ (2 * ((v13 << 16) & 0x4B0F0000 ^ v13 ^ ((v13 << 16) ^ 0x6D110000) & (((v12 ^ 0x4B092C01) << 8) & 0x4B0F0000 ^ 0x40020000 ^ (((v12 ^ 0x4B092C01) << 8) ^ 0xF6D0000) & (v12 ^ 0x4B092C01))));
  LODWORD(STACK[0xA5BC]) = v14 ^ 0xD9AB116;
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x1969)))(a1, a2, a3, a4, 1077842651 - 0x90 / (v14 ^ 0xE3CCB026) * (v14 ^ 0xE3CCB026));
}

uint64_t sub_10032AFE8@<X0>(unsigned int a1@<W8>)
{
  STACK[0x6320] = 0;
  STACK[0x49B0] = 0;
  LODWORD(STACK[0x7738]) = 0;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_10032B0B0@<X0>(uint64_t a1@<X8>)
{
  v3 = (a1 ^ 0xFEFF4F54E9FFA83ELL ^ ((v2 - 47043) | 0x30u)) + (v1 & 0x1D3FF5694);
  v4 = STACK[0x7D20];
  v5 = STACK[0x7D20] - 0x6F6F2C6DD9F121E2;
  v6 = v3 + 0x100B0AB5DFACCECLL > v5;
  if (v5 < 0x47FA7832 != v3 + 0x100B0AB5DFACCECLL < ((v2 - 35716432) & 0x5FE363FD) - 365472131)
  {
    v6 = v3 + 0x100B0AB5DFACCECLL < ((v2 - 35716432) & 0x5FE363FD) - 365472131;
  }

  v7 = STACK[0xB3D8];
  if (v6)
  {
    v7 = 371891407;
  }

  v8 = v3 + 369120442;
  if (v7 == -371865839)
  {
    a1 = v8;
  }

  else
  {
    a1 = a1;
  }

  v9 = ((2 * a1) & 0x1DEBDB7B2) + (a1 ^ 0x6E6AD357EF5EDBD9);
  STACK[0xB408] = v9 - 0x433DAE03F6A6D5D6;
  v9 -= 0x6E6AD3579AC3AC69;
  v10 = v4 - 0x6F6F2C6DCD506AA8;
  v11 = v9 < 0x549B2F6C;
  v12 = v9 > v10;
  if (v10 < 0x549B2F6C != v11)
  {
    v12 = v11;
  }

  if (v12)
  {
    v13 = 371891407;
  }

  else
  {
    v13 = v7;
  }

  LODWORD(STACK[0xB414]) = v13;
  return (*(STACK[0xF18] + 8 * ((25 * (v13 != -371865839)) ^ v2)))();
}

uint64_t sub_10032B2B8()
{
  LODWORD(STACK[0x10EE0]) = v1 + 155453101 * ((2 * ((&STACK[0x10000] + 3800) & 0x5D19D1E0) - (&STACK[0x10000] + 3800) + 585510428) ^ 0xC4C035D3) + 296783349;
  STACK[0x10ED8] = 0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xDFDF)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x4D18]) = v0;
  v4 = STACK[0x9620];
  v5 = STACK[0x5894];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v4;
  LODWORD(STACK[0x655C]) = v5;
  LODWORD(STACK[0x884C]) = -198063284;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10032B454()
{
  v1 = *(STACK[0x83D8] + 4);
  v2 = (v1 ^ 0xA81DA440) & (2 * (((v0 + 1743644664) & 0x9811EF7F ^ 0xC1593A2B) & v1)) ^ ((v0 + 1743644664) & 0x9811EF7F ^ 0xC1593A2B) & v1;
  v3 = ((2 * (v1 ^ 0xAA1CE440)) ^ 0xD68AAAA0) & (v1 ^ 0xAA1CE440) ^ (2 * (v1 ^ 0xAA1CE440)) & 0x6B455550;
  v4 = v3 ^ 0x29455550;
  v5 = (v3 ^ 0x22001110) & (4 * v2) ^ v2;
  v6 = ((4 * v4) ^ 0xAD155540) & v4 ^ (4 * v4) & 0x6B455550;
  v7 = (v6 ^ 0x29055550) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0x42400010)) ^ 0xB4555500) & (v6 ^ 0x42400010) ^ (16 * (v6 ^ 0x42400010)) & 0x6B455540;
  v9 = v7 ^ 0x6B455550 ^ (v8 ^ 0x20455500) & (v7 << 8);
  v10 = (16 * ((v9 << 16) & 0xB450000 ^ v9 ^ ((v9 << 16) ^ 0x5500000) & (((v8 ^ 0x4B000050) << 8) & 0xB450000 ^ 0xA000000 ^ (((v8 ^ 0x4B000050) << 8) ^ 0x5550000) & (v8 ^ 0x4B000050)))) ^ (8 * v1);
  v11 = ((v10 ^ 0xCB9A00B) - 651598219) ^ ((v10 ^ 0x6275F958) - 1209712856) ^ ((v10 ^ 0xC45484D3) + 298074797);
  LODWORD(STACK[0xA7F8]) = v11 - 412852322;
  v12 = (((LODWORD(STACK[0x585C]) ^ 0x3AF18774) - 988907380) ^ ((LODWORD(STACK[0x585C]) ^ 0xAEFA3109) + 1359335159) ^ ((LODWORD(STACK[0x585C]) ^ 0x7DDE716C) - 2111730028)) + 686324348;
  v13 = (v12 < 0x3F12B36B) ^ (v11 - 1073047701 < 0x3F12B36B);
  v14 = v12 < v11 - 1073047701;
  if (v13)
  {
    v14 = v11 - 1073047701 < 0x3F12B36B;
  }

  return (*(STACK[0xF18] + 8 * ((!v14 | (4 * !v14)) ^ v0)))();
}

uint64_t sub_10032B704()
{
  v1 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1EE4 ^ (643 * ((v0 + 491295690) < 0x319703F3)))))();
}

uint64_t sub_10032B7FC()
{
  v1 = (STACK[0xF10] - 2139) | 1;
  v2 = STACK[0xF10] - 3150;
  STACK[0x2710] = v0;
  return (*(STACK[0xF18] + 8 * (((v1 - 33487) * (v0 == 0)) | v2)))();
}

uint64_t sub_10032B900()
{
  v4 = *(v1 + v3);
  v5 = STACK[0x762C];
  STACK[0x8FE8] = v4;
  LODWORD(STACK[0x44A8]) = v5;
  LODWORD(STACK[0x704C]) = -2116087630;
  LODWORD(STACK[0x7FD8]) = 1970496882;
  LODWORD(STACK[0x4A8C]) = v2 ^ 0xC638F0F1 ^ (v0 + 36510);
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10032B9A4@<X0>(unsigned int a1@<W8>)
{
  v3 = (a1 ^ 0xFDEDB7E54FF75EAFLL) + 0x212481BAE30D6CDLL + ((2 * a1) & 0x9FEEBD5ELL);
  v4 = (v2 ^ 0xFFCFE73E8BF2F647) + 0x3018C272353F31 + ((((v1 - 6598824) & 0x6433FF) + 0x117E5E990) & (2 * v2));
  v5 = (v3 < 0xFE283578) ^ (v4 < 0xFE283578);
  v6 = v3 > v4;
  if (v5)
  {
    v6 = v3 < 0xFE283578;
  }

  return (*(STACK[0xF18] + 8 * (((16 * !v6) | (!v6 << 6)) ^ v1)))();
}

uint64_t sub_10032BA98@<X0>(uint64_t a1@<X8>)
{
  if (LOBYTE(STACK[0x32F7]))
  {
    a1 = (((v1 - 8819) ^ 0x9C76) + 981319160) ^ (2 * a1);
  }

  else
  {
    a1 = a1;
  }

  *STACK[0x97F8] = a1;
  STACK[0x5C50] = (((a1 ^ 0x1D70A9CF61AEDC79) - 0x1D70A9CF61AEDC79) ^ ((a1 ^ 0x4DB06F5E07893443) - 0x4DB06F5E07893443) ^ ((a1 ^ 0x50C0C6918FF22F2BLL) - 0x50C0C6918FF22F2BLL)) + 0x3AE1413AF7325DD3;
  LODWORD(STACK[0x1374]) = -113444893;
  return (*(STACK[0xF18] + 8 * (v1 - 8819)))();
}

uint64_t sub_10032BB8C()
{
  v1 = 1022166737 * ((2 * ((&STACK[0x10000] + 3800) & 0x66E6C900) - (&STACK[0x10000] + 3800) - 1726400773) ^ 0x2309D769);
  LODWORD(STACK[0x10EE0]) = v1 ^ v0 ^ 0x8028 ^ LODWORD(STACK[0x86A8]) ^ 0x49A5A1C2;
  LODWORD(STACK[0x10ED8]) = v0 - v1 - 672124694;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0xC059)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x36A0]) = -371865839;
  STACK[0x2D88] = STACK[0x3B58];
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_10032BCA8@<X0>(_BYTE *a1@<X8>)
{
  v2 = STACK[0xF10];
  v3 = STACK[0xF10] + 1175401137;
  v4 = STACK[0xF10] - 19352;
  a1[15] = v1[15];
  a1[14] = v1[14];
  a1[13] = v1[13];
  a1[12] = v1[12];
  a1[11] = v1[11];
  a1[10] = v1[10];
  a1[9] = v1[9];
  a1[8] = v1[8];
  a1[7] = v1[7];
  a1[6] = v1[6];
  a1[5] = v1[5];
  a1[4] = v1[4];
  a1[3] = v1[3];
  a1[2] = v1[2];
  a1[1] = v1[1];
  *a1 = *v1;
  STACK[0x7690] = (v3 & 0xB9F04FFB) + STACK[0x7690] - 3656;
  v5 = STACK[0xF18];
  v6 = STACK[0x93F8] + 111;
  (*(STACK[0xF18] + 8 * (v2 + 16262)))(*(&off_1010A0B50 + v2 - 31712) - 1079964971, v6, 16);
  v7 = STACK[0x1FD8];
  v8 = STACK[0x4160] + STACK[0x4D80] - 0x356433A4B08C46EALL;
  v9 = STACK[0x8824];
  v10 = 1603510583 * ((((&STACK[0x10000] + 3800) ^ 0x706A544B | 0xBC0A554) - (((&STACK[0x10000] + 3800) ^ 0x706A544B) & 0xBC0A551)) ^ 0xEC71C3B5);
  STACK[0x10EF8] = v8;
  STACK[0x10F00] = v6;
  STACK[0x10ED8] = v7;
  STACK[0x10EE0] = v8;
  LODWORD(STACK[0x10EEC]) = (v2 + 5714) ^ v10;
  LODWORD(STACK[0x10EE8]) = v10 + v9 + 1433265689;
  v11 = (*(v5 + 8 * (v2 ^ 0x4075)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((63152 * (LODWORD(STACK[0x10EF0]) == -371865839)) ^ v4)))(v11);
}

uint64_t sub_10032BEC4()
{
  v0 = STACK[0xF10] + 5001;
  LODWORD(STACK[0x3E80]) += 4;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10032BF20()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] ^ 0x8BF2;
  v3 = v2 + 9324;
  v4 = 51 * v2;
  v5 = STACK[0xF10] - 18916;
  v6 = STACK[0x6AC8];
  v7 = 17902189 * (((((&STACK[0x10000] + 3800) | 0xAE112842) ^ 0xFFFFFFFE) - (~(&STACK[0x10000] + 3800) | 0x51EED7BD)) ^ 0xDFA1C1AD);
  LODWORD(STACK[0x10ED8]) = v7 ^ *STACK[0xB1D0] ^ 0xB3FFABD3;
  STACK[0x10EE8] = STACK[0x548];
  STACK[0x10EE0] = v6;
  LODWORD(STACK[0x10EF0]) = v1 - v7 - 1424;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4621)))(&STACK[0x10ED8]);
  return (*(v8 + 8 * (((LODWORD(STACK[0x10EDC]) == v0) * ((v3 ^ 0x9883) + v4)) ^ v5)))(v9);
}

uint64_t sub_10032C058()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 37482)))(STACK[0x1A68]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10032C09C()
{
  STACK[0x5658] = v0;
  LODWORD(STACK[0x2564]) = -1254784501;
  return (*(STACK[0xF18] + 8 * (v1 - 30507)))();
}

uint64_t sub_10032C0C8()
{
  v2 = v1 - 12879;
  v4 = v0 != 1 || *STACK[0x940] == 0;
  return (*(STACK[0xF18] + 8 * ((25 * (((v2 ^ 0x7251 ^ v4) & 1) == 0)) ^ v2)))();
}

uint64_t sub_10032C114()
{
  if (STACK[0x3350])
  {
    v1 = LODWORD(STACK[0x3464]) == -371865839;
  }

  else
  {
    v1 = 1;
  }

  v2 = v1;
  return (*(STACK[0xF18] + 8 * ((v2 * (((v0 - 1056534005) & 0x3EF96E2F ^ 0xFFFF52B7) + v0 + 24911)) ^ v0)))();
}

uint64_t sub_10032C17C()
{
  v4 = *(v3 + v1) ^ *(v3 + v2);
  *(v3 + v1) = v4;
  v5 = *(v3 + v2) ^ v4;
  *(v3 + v2) = v5;
  *(v3 + v1) ^= v5;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10032C200(uint64_t a1, uint64_t a2)
{
  STACK[0x95A0] = STACK[0x1DD0];
  LOWORD(STACK[0x79DE]) = 7085;
  LODWORD(STACK[0x16B4]) = 1766291071;
  return (*(STACK[0xF18] + 8 * v2))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_10032C24C@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 == ((v2 - 1587355682) & 0x5E9CE364 ^ 0x14B0F59C);
  v6 = (*(v1 + v4) ^ 0x5Fu) << 48;
  v7 = ((((*(a1 + v4) - ((2 * *(a1 + v4)) & 0xFF8Fu) + 246) << 56) - 0x2F00000000000000) ^ 0x2D9DD1A5B649FB2ELL) & (v6 ^ 0xFFBFFBBFFE6FFFAELL);
  v8 = v6 & 0x62000000000000;
  v9 = 0xCB11898370B3A240;
  if (v5)
  {
    v9 = 0xCB11898170B3A240;
  }

  v10 = (v7 ^ 0x100080240B20040) & v9 ^ (v7 & 0x348C50258648592ELL | v8) ^ 0x4B7B5159B78F2B6FLL;
  v11 = *(STACK[0x720] - 830459327);
  *(STACK[0x720] - 830459327) = v11 + 1;
  v12 = ((((v11 ^ 0x52) + 30) ^ v11 ^ ((v11 ^ 0x25) + 43) ^ ((v11 ^ 0x12) + 30)) ^ ((v11 ^ 0x55) + 27)) & 0x3F ^ 0x30;
  v13 = 8 * v12;
  v14 = (STACK[0x718] + v13);
  v15 = v13 + STACK[0x728] - 296;
  if (v12 <= 0x24)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  *v16 = v10;
  return (*(STACK[0xF18] + 8 * ((2262 * v5) ^ v2)))();
}

uint64_t sub_10032C4B8()
{
  LODWORD(STACK[0x533C]) = v1;
  v2 = STACK[0x4410];
  v3 = STACK[0x15F4];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v2;
  LODWORD(STACK[0x655C]) = v3;
  LODWORD(STACK[0x884C]) = 1865454065;
  return (*(STACK[0xF18] + 8 * ((1351 * (v0 != -440577407)) ^ (v0 - 31465))))();
}

uint64_t sub_10032C724()
{
  v0 = STACK[0xF10] - 21286;
  v1 = STACK[0xF10] - 33993;
  v2 = STACK[0xF18];
  STACK[0x16D8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x2D35) + v1)))();
}

uint64_t sub_10032C8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v23 = a7 - 1;
  v24 = __ROR8__((v19 + v23) & 0xFFFFFFFFFFFFFFF8, 8) + v20;
  v25 = __ROR8__(v24 ^ v14, 8);
  v26 = v24 ^ v15;
  v27 = (((v25 + v26) | v10) - ((v25 + v26) | v11) + a6) ^ v9;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v21;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (((v31 + v30) | a1) - ((v31 + v30) | a9) + a9) ^ a2;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x82B08017BF43C069;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0xAA9DDABAE2E4D47CLL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = __ROR8__((v38 + v37 - (a3 & (2 * (v38 + v37))) + a4) ^ v17, 8) + ((v38 + v37 - (a3 & (2 * (v38 + v37))) + a4) ^ v17 ^ __ROR8__(v37, 61));
  *(v16 + v23) = *(v19 + v23) ^ a8 ^ ((((v12 | (2 * v39)) - v39 + v13) ^ v22) >> (8 * ((v19 + v23) & 7)));
  return (*(STACK[0xF18] + 8 * (((v23 == 0) * v18) ^ a5)))();
}

uint64_t sub_10032C9E8()
{
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((~(&STACK[0x10000] + 3800) & 0x19FB78B4 | (&STACK[0x10000] + 3800) & 0xE6048748) ^ 0xFFDD637B) + 296753103;
  STACK[0x10ED8] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x41F1)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 - 4770)))(v2);
}

uint64_t sub_10032CA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, _DWORD *a29, unsigned int a30, uint64_t a31, int a32, __int16 a33, int a34)
{
  *v35 = v38;
  v39 = *(a23 - 0x217E172EFA1E81CLL);
  v40 = 139493411 * ((~&a28 & 0xB6DB2DEF | &a28 & 0x4924D210) ^ 0xBAF6CCAA);
  a30 = v40 - 483367881;
  a32 = v40 + 1945538087 * v34 + (((v37 ^ 0x1DBA) - 21430) ^ 0x2E5177C0);
  a31 = v39;
  a28 = v37 - v40 + 10517;
  a33 = -32733 * ((~&a28 & 0x2DEF | &a28 & 0xD210) ^ 0xCCAA) + 27993;
  a29 = v35;
  v41 = (*(v36 + 8 * (v37 ^ 0x4330)))(&a28);
  if (a16)
  {
    v42 = a34 == 1497668682;
  }

  else
  {
    v42 = 0;
  }

  v43 = !v42;
  return (*(v36 + 8 * ((7 * v43) ^ v37)))(v41);
}

uint64_t sub_10032CF3C(int a1)
{
  LODWORD(STACK[0x12CC]) = v2;
  LODWORD(STACK[0x982C]) = v4;
  LODWORD(STACK[0x616C]) = STACK[0xED0];
  LODWORD(STACK[0x4ECC]) = v3;
  LODWORD(STACK[0x681C]) = v5;
  LODWORD(STACK[0x29E4]) = a1;
  return (*(STACK[0xF18] + 8 * ((110 * (LODWORD(STACK[0xE90]) ^ 1)) ^ v1)))();
}

uint64_t sub_10032CFB8(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x62B0]) = a3;
  STACK[0x4378] = &STACK[0x7A38];
  LODWORD(STACK[0x8A84]) = 969451050;
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_10032CFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W8>)
{
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  return (*(STACK[0xF18] + 8 * ((52 * ((v9 ^ a6) & 1)) ^ a6)))(a1, LODWORD(STACK[0x9CC]), a2, a3, a4, a5, 4294919689);
}

uint64_t sub_10032D084()
{
  v3 = STACK[0xF10] - 31667;
  v4 = (((STACK[0xF10] + 7298) & 0xFACB) + 25558) & v1 ^ 0xC079;
  LOWORD(STACK[0x878A]) = (v1 ^ (2 * ((v1 ^ 0x5EC) & (2 * (((2 * (v4 ^ v3 ^ ((((v2 - (STACK[0xF10] + 35)) | (STACK[0xF10] + 35 - v2)) & 0x80) >> 7) ^ (v1 ^ 0x5EC) & (2 * ((v1 ^ 0x5EC) & (2 * ((v1 ^ 0x5EC) & (2 * ((v1 ^ 0x5EC) & (2 * ((v1 ^ 0x5EC) & (2 * ((v1 ^ 0x5EC) & (2 * ((v1 ^ 0x5EC) & (2 * ((v1 ^ 0x5EC) & (2 * ((v1 ^ 0x5EC) & (2 * ((v1 ^ 0x5EC) & (2 * ((v1 ^ 0x5EC) & (2 * (v4 ^ ((2 * v1) & 0xBDA ^ 0x3B2) & v1)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ 1)) ^ 0x1F12) & (v1 ^ 0x5EC) ^ v4)) ^ v4)) ^ 0xF9A0) + v0;
  v5 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v3);
  return (*(v5 + 8 * (v3 ^ 0x1C11)))();
}

uint64_t sub_10032D2BC()
{
  v1 = STACK[0x78CC];
  LODWORD(STACK[0x3FB4]) = STACK[0x78CC];
  v2 = v1 == ((v0 - 12027) | 0x290) - 371890111;
  return (*(STACK[0xF18] + 8 * ((16 * v2) | (v2 << 6) | (v0 - 22043))))();
}

uint64_t sub_10032D368()
{
  v1 = STACK[0xF18];
  STACK[0x1270] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((28692 * ((v0 ^ 0xBDA3456B) > 0x882B6709)) ^ (v0 + 8628))))();
}

uint64_t sub_10032D3F4()
{
  v0 = STACK[0xF10] - 14562;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(STACK[0x4CB0]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10032D42C()
{
  v0 = STACK[0xF10] + 14459;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(STACK[0x72F0]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10032D5B0()
{
  v2 = ((v1 ^ 0x2A3CDF04) + 283321220) ^ v1 ^ ((v1 ^ 0x9E0850D4) - 1529369516) ^ ((v1 ^ 0xB4FF2B99) - 1910450401) ^ ((((v0 ^ 0x67B5) + 8858) ^ 0xFF341EDD) + (v1 ^ 0xC5EBA731));
  v3 = ((v2 ^ 0x12040E95) - 1418109952) ^ ((v2 ^ 0x329436E) - 1168894459) ^ ((v2 ^ 0xD40D4E83) + 1836063722);
  v4 = ((((LOBYTE(STACK[0x278B]) ^ 0x2BB9662A) - 733570602) ^ ((LOBYTE(STACK[0x278B]) ^ 0x91E23EC) - 152970220) ^ ((LOBYTE(STACK[0x278B]) ^ 0x22A74549u) - 581387593)) + 143) % (2086491643 - v3);
  v5 = v3 + (v4 ^ 0xB1FFBFDE) + 1861448704 + ((2 * v4) & 0x63FF7FBC);
  v6 = -78196219 - v5;
  if (v5 + 1655666465 >= 0xFB)
  {
    v6 = 1577470246;
  }

  v8 = v1 == 0x3CE25E0EC520035FLL || v6 == 1577469996;
  return (*(STACK[0xF18] + 8 * ((15 * v8) ^ v0)))();
}

uint64_t sub_10032D790()
{
  v2 = v0 - 22393;
  v3 = v0 ^ 0x4192;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * v3))(v1);
  return (*(v4 + 8 * v2))(v5);
}

uint64_t sub_10032D95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = (STACK[0xF10] - 30773) | 0x4008;
  v8 = STACK[0xF10] - 31399;
  v9 = STACK[0xF18];
  STACK[0x8D40] = *(STACK[0xF18] + 8 * v8);
  return (*(v9 + 8 * ((v7 ^ 0x1FB7) + v8)))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10032D9B8()
{
  v1 = STACK[0xF10] - 9293;
  v2 = STACK[0x31C0];
  v3 = *STACK[0x31C0] ^ 0xAAA7FDF059BD8EC1;
  v4 = (*v2 ^ (STACK[0xF10] - 923416226) & 0x3709BF76 ^ 0x812000) & (2 * (*v2 & 0x52C9B859)) ^ *v2 & 0x52C9B859;
  v5 = v3 << ((STACK[0xF10] - 60) & 0x42 ^ 0x43);
  LODWORD(v3) = (v5 ^ 0x16E86D30) & v3 ^ v5 & 0xB743698;
  LODWORD(v5) = v3 ^ 0x9141288;
  LODWORD(v3) = (v3 ^ 0x2602000) & (4 * v4) ^ v4;
  v6 = ((4 * v5) ^ 0x2DD0DA60) & v5 ^ (4 * v5) & 0xB743698;
  LODWORD(v3) = (v6 ^ 0x9501200) & (16 * v3) ^ v3;
  v7 = ((16 * (v6 ^ 0x2242498)) ^ 0xB7436980) & (v6 ^ 0x2242498) ^ (16 * (v6 ^ 0x2242498)) & 0xB743680;
  v8 = *STACK[0x31C0] ^ (2 * ((((v7 ^ 0x8341618) << 8) & 0xB740000 ^ 0x340000 ^ (((v7 ^ 0x8341618) << 8) ^ 0x74360000) & (v7 ^ 0x8341618)) & (((v7 ^ 0x3402000) & (v3 << 8) ^ v3) << 16) ^ (v7 ^ 0x3402000) & (v3 << 8) ^ v3)) ^ 0xBB1C7F48;
  v9 = STACK[0x71B8];
  *v9 = v8;
  v9[1] = *(v2 + 8) ^ 0xEB4E8498;
  v9[2] = *(v2 + 56) - ((2 * *(v2 + 56)) & 0xD3AB8E22) + v0;
  v10 = *(v2 + 16);
  v11 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x51D1B4B8));
  v9[3] = v11 ^ v10 ^ ((v10 ^ 0x2FEEF7FF) - (v11 ^ 0xFA00BC9A)) ^ ((v11 ^ v10 ^ 0xCA3242D9) - 534514108) ^ ((v11 ^ v10 ^ 0xB929EF0A) - 1825023087) ^ ((v11 ^ v10 ^ 0x891B1149) - 1559583276) ^ 0x3C3B8C74;
  return (*(STACK[0xF18] + 8 * ((449 * (*(v2 + 40) != 0)) ^ v1)))();
}

uint64_t sub_10032DE78()
{
  LOWORD(STACK[0x10EE0]) = 23473 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x42B8) + 17084) ^ 0x8F98) + 18064;
  STACK[0x10EE8] = &STACK[0x7CDC];
  LODWORD(STACK[0x10ED8]) = (v0 + 12343) ^ (906386353 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x3EC242B8) - 1094565188) ^ 0x8FC38F98));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 51139)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 - 30638 + ((v0 + 1258260689) & 0xB500FF7B))))(v2);
}

uint64_t sub_10032DF70()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 2473) ^ v0)))();
}

void *sub_10032DFB4@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x3F68] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 ^ 0x8BD ^ (976 * (a1 ^ 0x126A)))))(&STACK[0x4B98]);
}

uint64_t sub_10032DFFC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 104);
  STACK[0x4E58] = a1 + 104;
  return (*(STACK[0xF18] + 8 * (((v2 == -371865839) * ((((v1 ^ 0xB927) + 7912) ^ 0xFFFF8A33) + 3 * (v1 ^ 0xB927))) ^ v1)))();
}

uint64_t sub_10032E050()
{
  v2 = v0 - 5004;
  v3 = v0 + 16238;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * v3))(v1);
  return (*(v4 + 8 * v2))(v5);
}

uint64_t sub_10032E098()
{
  v2 = STACK[0x4310];
  v3 = ((v0 - 269667593) & 0xFBBF77CE) + STACK[0x2CE0] - 0x77694455F7CAC47FLL;
  v4 = *STACK[0x4310] + 72 * v3;
  v5 = (((v1 ^ 0x71C626ED) - 1908811501) ^ ((v1 ^ 0x4F886F98) - 1334341528) ^ ((v1 ^ 0xD79B9929 ^ (v0 - 41783)) + 677671324)) + 1196120587 + (((*(v4 + 8) ^ 0x136DD783) - 325965699) ^ ((*(v4 + 8) ^ 0x5F17C5B7) - 1595393463) ^ ((*(v4 + 8) ^ 0xA5AFD525) + 1515203291));
  v6 = (v5 ^ 0x9612747) & (2 * (v5 & 0x8C603417)) ^ v5 & 0x8C603417;
  v7 = ((2 * (v5 ^ 0x1E14763)) ^ 0x1B02E6E8) & (v5 ^ 0x1E14763) ^ (2 * (v5 ^ 0x1E14763)) & 0x8D817374;
  v8 = v7 ^ 0x84811114;
  v9 = (v7 ^ 0x1006060) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x3605CDD0) & v8 ^ (4 * v8) & 0x8D817370;
  v11 = (v10 ^ 0x4014150) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x89803224)) ^ 0xD8173740) & (v10 ^ 0x89803224) ^ (16 * (v10 ^ 0x89803224)) & 0x8D817340;
  v13 = v11 ^ 0x8D817374 ^ (v12 ^ 0x88013300) & (v11 << 8);
  *(v4 + 8) = v5 ^ (2 * ((v13 << 16) & 0xD810000 ^ v13 ^ ((v13 << 16) ^ 0x73740000) & (((v12 ^ 0x5804034) << 8) & 0xD810000 ^ 0xC800000 ^ (((v12 ^ 0x5804034) << 8) ^ 0x1730000) & (v12 ^ 0x5804034)))) ^ 0x7CB715EE;
  return (*(STACK[0xF18] + 8 * ((37 * (*(*v2 + 72 * v3 + 8) == 3923101457)) ^ v0)))();
}

uint64_t sub_10032E3B0()
{
  v3 = v1 | ((v1 < 0x20F333DE) << 32);
  v4 = v3 + v2 + ((v2 < 0x5E06482C) << 32);
  STACK[0x7B40] = v4 - 2130279434;
  v3 += 989431912;
  v5 = v4 - 588038084 > v3;
  if (v4 - 2130279434 > 0xFFFFFFFFA41343B9 != v3 < (v0 ^ 0x5BEC9E96uLL))
  {
    v5 = v4 - 2130279434 > 0xFFFFFFFFA41343B9;
  }

  return (*(STACK[0xF18] + 8 * ((500 * !v5) ^ v0)))();
}

uint64_t sub_10032E468@<X0>(int a1@<W1>, int a2@<W8>)
{
  v6 = (((v5 ^ 0x4033E61F) - 1077143071) ^ ((v5 ^ 0x974CCC6) - 158649542) ^ (((v2 - 1600997051) ^ v5) + 1600983608)) + 1310423386;
  if (a1 + 1682289225 < v6 || v6 < 0x6445B249)
  {
    v3 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((29570 * (v3 == a2)) ^ v2)))();
}

uint64_t sub_10032E50C()
{
  v1 = (v0 - 35003) | 0x920;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 + 2353)))();
}

uint64_t sub_10032E580@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v5 = *(a1 + 1880);
  v6 = a2 + v5 - 221025645;
  *(a1 + 1924) = v6;
  v7 = (((v4 ^ 0x7B181CA0) - 2065177760) ^ ((v4 ^ 0x476FE40F) - 1198515215) ^ ((v4 ^ 0xD5A23FBE) + 710785308 + 61 * ((v2 - 1696117809) & 0x65189F7F ^ 0x8B25))) - 1522183155;
  v8 = v6 > 0x44907303;
  v9 = a2 + v5 - 1371342961 > v7;
  if (v8 != v7 < 0xBB6F8CFC)
  {
    v9 = v8;
  }

  if (v9)
  {
    v10 = 371891407;
  }

  else
  {
    v10 = v3;
  }

  LODWORD(STACK[0x6B98]) = v10;
  *(a1 + 1931) = v10 == -371865839;
  return (*(STACK[0xF18] + 8 * ((16377 * (v10 != -371865839)) ^ v2)))();
}

uint64_t sub_10032E6CC()
{
  LODWORD(STACK[0xB93C]) = 1597469690;
  LODWORD(STACK[0x44AC]) = -371865839;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10032E738()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 33651;
  STACK[0x7A60] = &STACK[0x1490];
  LODWORD(STACK[0x10ED8]) = 634647737 * (((~(&STACK[0x10000] + 3800) & 0x4BF32B3A) - (~(&STACK[0x10000] + 3800) | 0x4BF32B3B)) ^ 0x266504C7) + v0 - 212212507;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4005)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * ((v0 - 11271) ^ v1)))(v3);
}

uint64_t sub_10032E804()
{
  STACK[0x8730] = 0;
  LODWORD(STACK[0x7C24]) = 0;
  return (*(STACK[0xF18] + 8 * (((((v0 + 23763) ^ 0xFFFFC312) + ((v0 + 5676) ^ 0xFC99)) * (v1 == 0)) ^ (v0 + 5676))))();
}

uint64_t sub_10032E8FC()
{
  *v0 += (2458 * (v1 ^ 0x8B31)) ^ 0x6005;
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v1 + 155453101 * (((~(&STACK[0x10000] + 3800) & 0x826931EE) - (~(&STACK[0x10000] + 3800) | 0x826931EF)) ^ 0x644F2A20) + 296753103;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 16271)))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v2 + 8 * (v1 - 32493));
  return (*(v2 + 8 * (v1 - 29900)))(v3);
}

uint64_t sub_10032EA4C()
{
  STACK[0xDB0] = 0;
  v2 = STACK[0xB40];
  v3 = STACK[0xB40] <= 0x80000000778E30E4;
  STACK[0xDA0] = &STACK[0x622C];
  v3 = !v3 || v2 < (0x80000000778E30E4 - v0);
  v4 = v3;
  return (*(STACK[0xF18] + 8 * ((((v1 + 84697429) & 0xFAF3FB7B ^ 0xEBD2) * v4) ^ v1)))();
}

uint64_t sub_10032EAB4(int a1, int a2, int a3, int a4)
{
  v11 = (v10 ^ v6) * v7;
  v12 = v10 ^ v9;
  v13 = v10 + a1;
  v14 = (*(v5 + v4) ^ a2) - *(v8 + v4);
  return (*(STACK[0xF18] + 8 * (((((v11 ^ a4) & (2 * v14)) + (v14 ^ a3) != a3) * (v12 + 190)) ^ v13)))();
}

uint64_t sub_10032ECC0@<X0>(int a1@<W8>)
{
  v1 = a1 - 21758;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (a1 ^ 0x4192)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10032EE34()
{
  LODWORD(STACK[0x1364]) = 371892088;
  v1 = *(STACK[0xF18] + 8 * (v0 - 32683));
  STACK[0xF10] = v0;
  return v1();
}

uint64_t sub_10032EED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (v7 ^ 0x38F1) - 1376952718 + (((LODWORD(STACK[0x4ADC]) ^ 0x1537DEEA) - 355983082) ^ ((LODWORD(STACK[0x4ADC]) ^ 0xC50F60CF) + 988847921) ^ (((3 * (v7 ^ 0xA7F9)) ^ 0xC612BA55) + (LODWORD(STACK[0x4ADC]) ^ 0x39ED7934)));
  v9 = ((v6 - 2078788422) < 0xC418229C) ^ (v8 < 0xC418229C);
  v10 = v6 - 2078788422 > v8;
  if (v9)
  {
    v10 = (v6 - 2078788422) < 0xC418229C;
  }

  return (*(STACK[0xF18] + 8 * ((!v10 | (4 * !v10)) ^ v7)))(a1, a2, a3, a4, a5, a6, &STACK[0xA237]);
}

uint64_t sub_10032EFB4(__n128 a1)
{
  v2 = STACK[0x48F0];
  *v2 = a1;
  v2[1] = a1;
  return (*(STACK[0xF18] + 8 * ((v1 + 1921737888) & 0x8D741E2E ^ 0x76C1 ^ (745 * ((v1 + 1921737888) & 0x8D741E2E ^ 0xE17)))))();
}

uint64_t sub_10032F0B4()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xAE11u)))(64);
  STACK[0x4518] = v2 + 0x217E172EFA1E81CLL;
  return (*(v1 + 8 * (((v2 != 0) * (((v0 - 2082) ^ 0xFFFF2894) + (v0 ^ 0xEFB2))) ^ v0)))();
}

uint64_t sub_10032F150@<X0>(int a1@<W8>)
{
  v3 = a1 ^ 0x9B5;
  v4 = (a1 + 1054732772) & 0xF7FFEBEF;
  v5 = a1 - 2474;
  LODWORD(STACK[0xA86C]) = v2;
  LODWORD(STACK[0xA868]) = v1;
  v6 = v3 + v1 + 1567722768;
  v7 = (((*(STACK[0x6F68] + 104) ^ 0x4F3B84) - 5192580) ^ ((v4 ^ 0xCAD6185D ^ *(STACK[0x6F68] + 104)) + 66555566) ^ ((*(STACK[0x6F68] + 104) ^ 0x15928DC7) - 361926087)) - 1591455814;
  v8 = v7 < 0xB74E88A9;
  v9 = v6 < v7;
  if (v6 < 0xB74E88A9 != v8)
  {
    v9 = v8;
  }

  return (*(STACK[0xF18] + 8 * ((11 * v9) ^ v5)))();
}

uint64_t sub_10032F2F8@<X0>(uint64_t a1@<X8>)
{
  v2 = ((2 * a1) & 0xFFBA) + (a1 ^ 0x4EF37DFF2EDB7FDDLL);
  v3 = (((v2 + 0x31F17A7EEA3B1231) & 0x96DF6) << ((3 * (v1 ^ 0x81)) ^ 0x3Au)) & (((v1 ^ 0xA681) + 1162165134) ^ (v2 - 365227471)) ^ (v2 - 365227471) & 0x96DF6;
  LODWORD(v2) = (((v2 + 49) ^ (2 * ((((2 * ((v2 + 49) ^ 0xBF)) ^ 0x92) & ((v2 + 49) ^ 0xBF) ^ (2 * ((v2 + 49) ^ 0xBF)) & 0x48) & (4 * v3) ^ v3))) & 0xF ^ 0xFFFFFFF9) + v2;
  LODWORD(v2) = v2 - ((2 * v2 + 575209544) & 0x61C54E6E) + 34023259;
  LODWORD(v2) = (((v2 ^ 0xD4D6652D) + 724146899) ^ ((v2 ^ 0xC64C9CC) - 207931852) ^ ((v2 ^ 0xE8500BD6) + 397407274)) - 2134381402;
  v4 = (v2 ^ 0xB6583A80) & (2 * (v2 & 0xB01ABAA9)) ^ v2 & 0xB01ABAA9;
  v5 = ((2 * (v2 ^ 0xF6582AD0)) ^ 0x8C8520F2) & (v2 ^ 0xF6582AD0) ^ (2 * (v2 ^ 0xF6582AD0)) & 0x46429078;
  v6 = v5 ^ 0x42429009;
  v7 = (v5 ^ 0x60) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0x190A41E4) & v6 ^ (4 * v6) & 0x46429078;
  v9 = (v8 ^ 0x20060) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x46409019)) ^ 0x64290790) & (v8 ^ 0x46409019) ^ (16 * (v8 ^ 0x46409019)) & 0x46429050;
  v11 = v9 ^ 0x46429079 ^ (v10 ^ 0x44000000) & (v9 << 8);
  LODWORD(v2) = v2 ^ (2 * ((v11 << 16) & 0x46420000 ^ v11 ^ ((v11 << 16) ^ 0x10790000) & (((v10 ^ 0x2429069) << 8) & 0x46420000 ^ 0x4420000 ^ (((v10 ^ 0x2429069) << 8) ^ 0x42900000) & (v10 ^ 0x2429069))));
  LODWORD(STACK[0x91AC]) = v2 ^ 0xD5CA5D4A;
  v12 = STACK[0xF18];
  v13 = (*(STACK[0xF18] + 8 * (v1 + 16816)))(v2 ^ 0x3C1F9A5B);
  STACK[0x8208] = v13;
  STACK[0x14E8] = v13;
  return (*(v12 + 8 * ((510 * (v13 != 0)) ^ v1)))();
}

uint64_t sub_10032F624@<X0>(int a1@<W8>)
{
  v5 = STACK[0xED0];
  LODWORD(STACK[0x82C4]) = a1;
  LODWORD(STACK[0x670C]) = v1;
  LODWORD(STACK[0x1E70]) = v4;
  LODWORD(STACK[0x59C4]) = v3;
  LODWORD(STACK[0x2E80]) = v2;
  LODWORD(STACK[0x58D4]) = 417548212;
  v6 = STACK[0xAE60];
  v7 = (((v2 ^ 0xFC89C9BC) + 58078788) ^ ((v2 ^ 0x959A99CE) + 1785030194) ^ ((v2 ^ 0x746FD60E) - 1953486350)) - 1242802938 + (((*(v6 + 88) ^ 0xE0016347) + 536779961) ^ ((*(v6 + 88) ^ (327 * (v5 ^ 0x3D0E) - 1907304771)) + 1907269128) ^ ((*(v6 + 88) ^ 0x732C84C3) - 1932297411));
  v8 = (v7 ^ 0xE0ECB7FA) & (2 * (v7 & 0x850CB7F2)) ^ v7 & 0x850CB7F2;
  v9 = ((2 * (v7 ^ 0xE2FC933E)) ^ 0xCFE04998) & (v7 ^ 0xE2FC933E) ^ (2 * (v7 ^ 0xE2FC933E)) & 0x67F024CC;
  v10 = v9 ^ 0x20102444;
  v11 = (v9 ^ 0x4600088) & (4 * v8) ^ v8;
  v12 = ((4 * v10) ^ 0x9FC09330) & v10 ^ (4 * v10) & 0x67F024C8;
  v13 = (v12 ^ 0x7C00000) & (16 * v11) ^ v11;
  v14 = ((16 * (v12 ^ 0x603024CC)) ^ 0x7F024CC0) & (v12 ^ 0x603024CC) ^ (16 * (v12 ^ 0x603024CC)) & 0x67F024C0;
  v15 = v13 ^ 0x67F024CC ^ (v14 ^ 0x67000400) & (v13 << 8);
  *(v6 + 88) = v7 ^ (2 * ((v15 << 16) & 0x67F00000 ^ v15 ^ ((v15 << 16) ^ 0x24CC0000) & (((v14 ^ 0xF0200C) << 8) & 0x67F00000 ^ 0x7D00000 ^ (((v14 ^ 0xF0200C) << 8) ^ 0x70240000) & (v14 ^ 0xF0200C)))) ^ 0x1E107816;
  return (*(STACK[0xF18] + 8 * v5))();
}

uint64_t sub_10032F8C0()
{
  v0 = STACK[0xF10];
  v1 = STACK[0x38E8] + LODWORD(STACK[0x7780]) + ((STACK[0xF10] - 841389180) & 0x3226CFC4) - 2001464099;
  v2 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * (STACK[0xF10] - 34273));
  return (*(v2 + 8 * (v0 - 25513)))(v1);
}

uint64_t sub_10032F940()
{
  v1 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 881)))();
}

uint64_t sub_10032FBE4()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 32562;
  v2 = STACK[0x9B48];
  v3 = STACK[0x9130];
  v4 = ((LODWORD(STACK[0x6A1C]) ^ 0xEDCA708B) + 305500021) ^ ((LODWORD(STACK[0x6A1C]) ^ 0xA1C0AE) - 10600622) ^ ((LODWORD(STACK[0x6A1C]) ^ 0x4BE7734) + (((STACK[0xF10] - 2865) | 0x214) ^ 0xFB410AD2));
  v5 = STACK[0x35B0];
  v6 = 1112314453 * ((~(&STACK[0x10000] + 3800) & 0x3075872D | (&STACK[0x10000] + 3800) & 0xCF8A78D0) ^ 0xDF23ADF4);
  LODWORD(STACK[0x10EDC]) = (STACK[0xF10] + 679158052) ^ v6;
  STACK[0x10EE0] = v2;
  STACK[0x10EE8] = v3;
  LODWORD(STACK[0x10EF0]) = v6 + 1599993265 * v4 - 1152241234;
  LOWORD(STACK[0x10ED8]) = -28075 * ((~(&STACK[0x10000] + 3800) & 0x872D | (&STACK[0x10000] + 3800) & 0x78D0) ^ 0xADF4) + 3787;
  STACK[0x10EF8] = v5;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v0 + 16309)))(&STACK[0x10ED8]);
  STACK[0x4B88] = *(v7 + 8 * v1);
  return (*(v7 + 8 * (v0 - 30314)))(v8);
}

uint64_t sub_10032FDA4()
{
  v1 = v0 | 0x67ALL;
  STACK[0x5DE0] = (LODWORD(STACK[0x6D90]) ^ 0x9FFC9FFDFF668FB7) + 0x711BFA7B77DBFEF0 + ((2 * LODWORD(STACK[0x6D90])) & 0x1FECD1F6ELL);
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 + 4077)))();
}

uint64_t sub_100330010()
{
  v1 = STACK[0xF10] - 22583;
  *STACK[0x3118] = v0 ^ 0xE773B63C2CB22AF9;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100330074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = v5 + v3;
  *((v8 & (2 * v10)) + (v10 ^ v7) + a3 + a1) = *((v8 & (2 * v10)) + (v10 ^ v7) + v4 + v9);
  return (*(STACK[0xF18] + 8 * ((28 * (v10 == 0)) ^ v6)))();
}

uint64_t sub_1003300B4()
{
  v0 = 430 * (STACK[0xF10] ^ 0x8B2A);
  v1 = STACK[0xF10] - 26354;
  v2 = LODWORD(STACK[0x579C]) - 7306;
  LODWORD(STACK[0xED0]) = v0;
  LODWORD(STACK[0x3F78]) = v2 + v0;
  STACK[0x4210] = STACK[0x2C78];
  v3 = *(STACK[0x6F68] + 56);
  STACK[0x2DB8] = STACK[0x6F68] + 56;
  LODWORD(STACK[0x44B4]) = v3;
  LODWORD(STACK[0x2CE8]) = 2125179941;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100330178()
{
  v1 = STACK[0xF18];
  STACK[0x9880] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x4215 ^ ((v0 + 4202) | 0x4002))))();
}

uint64_t sub_1003301CC()
{
  v4 = (v3 - 1);
  if (((v2 ^ (3 * (v0 ^ 0xD7))) & 0x1F ^ 4u) >= ((v3 - 1) & 0x1Fu))
  {
    v5 = STACK[0xD60] + (v1 << (((v0 - 126) | 0x22) ^ 0x60u)) + (v2 << 7);
    v6 = v5 + (v4 << 7) >= v5;
  }

  else
  {
    v6 = 0;
  }

  v8 = !v6 || v4 > 0x1F;
  return (*(STACK[0xF18] + 8 * ((81 * v8) ^ v0)))();
}

uint64_t sub_100330258(_BYTE *a1)
{
  v2 = v1 ^ 0x7B93;
  *a1 = 93;
  LODWORD(STACK[0x10EE0]) = (v1 ^ 0x7B93) - 1012831759 * ((2 * ((&STACK[0x10000] + 3800) & 0x1F2593E8) - (&STACK[0x10000] + 3800) + 1624927251) ^ 0x70497A99) + 31654;
  STACK[0x10ED8] = &STACK[0x45A4];
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 + 51790)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (((v2 + 35352) ^ 0x9AE5) + v2)))(v4);
}

uint64_t sub_100330374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10];
  LODWORD(STACK[0x9A7C]) = *STACK[0xB9F8];
  return (*(STACK[0xF18] + 8 * (v7 - 26176)))(a1, a2, a3, a4, a5, a6, a7, &off_1010A0B50);
}

uint64_t sub_1003305A0()
{
  v2 = STACK[0xFE0];
  *(STACK[0xFE0] + 8) = v0 + 1944965300 + v1 - 371874355;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 43348)))();
  *v2 = v4;
  return (*(v3 + 8 * (((v4 == 0) * ((v1 + 27127) ^ 0x8B28)) ^ v1)))();
}

uint64_t sub_100330678@<X0>(int a1@<W8>)
{
  v4 = a1 + (v3 ^ 0xC704E5F7);
  v5 = (((LODWORD(STACK[0x9974]) ^ 0x33661AEA) - 862329578) ^ ((LODWORD(STACK[0x9974]) ^ 0xD45EF265) + 731975067) ^ (((2202 * (v1 ^ 0x2154) + 250418640) ^ LODWORD(STACK[0x9974])) - 250425246)) - 2111589994;
  v6 = (v4 > 0x67B2157A) ^ (v5 < 0x984DEA85);
  v7 = v4 - 1739724155 > v5;
  if (v6)
  {
    v7 = v4 > 0x67B2157A;
  }

  if (v7)
  {
    v8 = 371891407;
  }

  else
  {
    v8 = *(v2 + 1952);
  }

  return (*(STACK[0xF18] + 8 * ((57345 * (v8 == -371865839)) ^ v1)))();
}

uint64_t sub_10033081C()
{
  v0 = STACK[0xF18];
  STACK[0x6728] = *(STACK[0xF18] + 8 * SLODWORD(STACK[0x4E0]));
  return (*(v0 + 8 * (LODWORD(STACK[0x4D0]) ^ (10638 * (LODWORD(STACK[0x4D8]) < 0xFF9478FF)))))();
}

uint64_t sub_10033086C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x702C]) = a1;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * (v1 - 32601));
  return (*(v2 + 8 * ((6662 * (v1 ^ 0x8B3E) - 25323) ^ (v1 - 32601))))();
}

uint64_t sub_100330908()
{
  v1 = STACK[0x8CE0] + 595;
  v2 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * ((11159 * (v0 + ((4 * v0) ^ 0xD3DC) == 826702477)) ^ (v0 + 5146))))(v1);
}

uint64_t sub_100330974()
{
  v2 = 48 * (v0 + ((v1 - 1762049270) & 0x6906CF3F)) + 200509269;
  v3 = (v2 ^ 0xB6761483) & (2 * (v2 & 0x37665481)) ^ v2 & 0x37665481;
  v4 = ((2 * (v2 ^ 0x94FE9481)) ^ 0x47318014) & (v2 ^ 0x94FE9481) ^ (2 * (v2 ^ 0x94FE9481)) & 0xA398C000;
  v5 = v4 ^ 0xA0884002;
  v6 = (v4 ^ 0x3108008) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0x8E630028) & v5 ^ (4 * v5) & 0xA398C008;
  v8 = (v7 ^ 0x82000000) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x2198C002)) ^ 0x398C00A0) & (v7 ^ 0x2198C002) ^ (16 * (v7 ^ 0x2198C002)) & 0xA398C000;
  v10 = STACK[0xF18];
  STACK[0x79E8] = (*(STACK[0xF18] + 8 * (v1 + 20903)))((v2 ^ (2 * ((((v9 ^ 0x8210C00A) << 8) & 0x23980000 ^ (((v9 ^ 0x8210C00A) << 8) ^ 0x98C00000) & (v9 ^ 0x8210C00A) ^ 0x800000) & (((v9 ^ 0x21880000) & (v8 << 8) ^ v8) << 16) ^ (v9 ^ 0x21880000) & (v8 << 8) ^ v8))) & 0xFFFFFFFE ^ 0x3766548ALL);
  LOWORD(STACK[0x4D0E]) = 21386;
  return (*(v10 + 8 * (v1 + 8142)))();
}

uint64_t sub_100330BFC@<X0>(int a1@<W8>)
{
  *(v3 + 3156) = v1 | 2;
  *(v3 + 3160) = ((a1 ^ 0xC1D1) + 1705) ^ 0x6D2A2E86 | v1;
  v4 = v1 + 44366903;
  v5 = (((v2 ^ 0xB7E20CE) - 192815310) ^ ((v2 ^ 0x9D6FB574) + 1653623436) ^ (((327 * (a1 ^ 0xC1D1) + 2143537008) ^ v2) - 2143572651)) - 327498954;
  v7 = v5 < 0x2A4FC25 || v4 <= v5;
  return (*(STACK[0xF18] + 8 * (v7 | (2 * v7) | a1)))();
}

uint64_t sub_100330D38()
{
  LODWORD(STACK[0x10ED8]) = v0 + 17902189 * ((((&STACK[0x10000] + 3800) | 0x2F2DE95B) - ((&STACK[0x10000] + 3800) | 0xD0D216A4) - 791538012) ^ 0xA162FF4B) + 275;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 45282)))(&STACK[0x10ED8]);
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = -371865839;
  LODWORD(STACK[0x35EC]) = 1693393357;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100330DE4@<X0>(uint64_t a1@<X8>)
{
  v3 = v2 ^ 1;
  if ((((*(a1 + 52) ^ 0x102936BF) - 271136447) ^ ((*(a1 + 52) ^ 0x460DC60F) - 1175307791) ^ (((v1 - 1558762111) & 0x5CE8AB3B ^ *(a1 + 52) ^ 0xBFF1BC9A) + 1074710623)) - LODWORD(STACK[0x9464]) == -1465203072)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  return (*(STACK[0xF18] + 8 * ((184 * v4) ^ v1)))();
}

uint64_t sub_100330F84()
{
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((~(&STACK[0x10000] + 3800) & 0xB129137C | (&STACK[0x10000] + 3800) & 0x4ED6EC80) ^ 0x570F08B3) + 296754749;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4E07)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100331068()
{
  v2 = (STACK[0xF10] - 35611) | 0x6001;
  v3 = v0 + 162928514 + (((v1 ^ 0x66D5C1BC) - 1208279898) ^ ((v1 ^ 0xACA4F9A5) + 2106205373) ^ (11881 * (v2 ^ 0x6022) - 598051395 + ((v2 + 225803725) ^ v1)));
  v4 = (((LODWORD(STACK[0x3554]) ^ 0x149ECD15) - 345951509) ^ ((LODWORD(STACK[0x3554]) ^ 0xF3842D87) + 209441401) ^ ((LODWORD(STACK[0x3554]) ^ 0xECF2783) - 248457091)) + 1706853326;
  v5 = v3 < 0x7BE6BCBD;
  v6 = v3 > v4;
  if (v5 != v4 < 0x7BE6BCBD)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((110 * !v6) ^ v2)))();
}

uint64_t sub_1003311A8(uint64_t a1, int a2)
{
  v7 = (((v6 ^ 0x6F5FCCE8) - 1868549352) ^ ((((v5 - 19144) | 0x885) ^ v6 ^ 0xD3111832) + 753851481) ^ (((v5 - 603914173) & 0x23FEF1FF ^ v6 ^ 0x559B5845) - 1436231774)) - 2045722266;
  v8 = ((a2 + 819970792) < 0x9C3AFA55) ^ (v7 < 0x9C3AFA55);
  v9 = a2 + 819970792 > v7;
  if (v8)
  {
    v9 = (a2 + 819970792) < 0x9C3AFA55;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((41 * (v10 == v4)) ^ v5)))();
}

uint64_t sub_10033140C(uint64_t a1, uint64_t a2)
{
  STACK[0x3470] = 0;
  LODWORD(STACK[0x2B44]) = -371865839;
  STACK[0x37E8] = 0;
  LODWORD(STACK[0x642C]) = -371865839;
  STACK[0x4EF0] = 0;
  LODWORD(STACK[0x5F88]) = -371865839;
  return (*(STACK[0xF18] + 8 * (((((v2 + 934265383) & 0xC8503DF7) - 5337) * (v3 == -371865840)) ^ v2)))(a1, a2, 371891535);
}

uint64_t sub_100331518()
{
  v1 = (STACK[0xF10] - 26593) | 0x1000;
  v2 = STACK[0xF10] - 33791;
  v3 = STACK[0xAC4C];
  if (v0 != -1163887886)
  {
    v3 = 371891927;
  }

  LODWORD(STACK[0xAC50]) = v3;
  return (*(STACK[0xF18] + 8 * (((v3 == -371865839) * (v1 ^ 0xBD4)) ^ v2)))();
}

uint64_t sub_100331584@<X0>(int a1@<W8>)
{
  *(v1 + 132) = a1;
  v3 = LODWORD(STACK[0x1B74]) == ((v2 + 27490) | 0xB32) + ((v2 + 1448683990) & 0xA9A6FFD6) - 371917438;
  return (*(STACK[0xF18] + 8 * ((v3 | (16 * v3)) ^ v2)))();
}

uint64_t sub_1003315E4()
{
  LODWORD(STACK[0x72CC]) = v0;
  STACK[0x7690] += v1 ^ 0xFFFFFFFFFFFFE8D5;
  v2 = STACK[0x7A90];
  v3 = STACK[0x6DCC];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v2;
  LODWORD(STACK[0x655C]) = v3;
  LODWORD(STACK[0x884C]) = 1553510154;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100331644()
{
  v2 = STACK[0x4D10];
  v3 = 353670337 * (((&STACK[0x10ED8] | 0x1913CE56) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0xE6EC31A8)) ^ 0xAD32366B);
  LODWORD(STACK[0x10EE0]) = v1 - v3 + 32149;
  LODWORD(STACK[0x10ED8]) = (((v0 ^ 0x512E9A09) - 1362008585) ^ ((v0 ^ 0xD8C70325) + 658046171) ^ (((758 * (v1 ^ 0x3E25) + 1614547039) ^ v0) - 1614569021)) - v3 + 1051652780;
  STACK[0x10EF0] = v2;
  STACK[0x10EE8] = STACK[0xED0];
  v4 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 ^ 0xF487)))(&STACK[0x10ED8]);
  v5 = STACK[0x4D10];
  LODWORD(STACK[0x10ED8]) = (v1 - 9742) ^ (155453101 * (((&STACK[0x10ED8] | 0x83B2C469) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0x7C4D3B90)) ^ 0x6594DFA6));
  STACK[0x10EE0] = v5;
  v6 = (*(v4 + 8 * (v1 ^ 0xF4E4)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v1))(v6);
}

uint64_t sub_1003317C4()
{
  v0 = STACK[0xF10] - 35218;
  v1 = STACK[0xF10] - 8478;
  v2 = STACK[0xA810];
  LODWORD(STACK[0x99DC]) = LODWORD(STACK[0xA810]) + 203293565;
  v3 = (v0 ^ 0x65B4DEB) + v2;
  v4 = v3 < 0x5EB2403E;
  v5 = v3 > LODWORD(STACK[0x36E8]) + 1588740158;
  if (v4 != LODWORD(STACK[0x36E8]) > 0xA14DBFC1)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((89 * !v5) ^ v1)))();
}

uint64_t sub_100331918()
{
  STACK[0x8648] = STACK[0x58C8];
  LODWORD(STACK[0x37DC]) = 1583449534;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100331950()
{
  STACK[0x5860] = 0;
  STACK[0x3E10] = 0x7241677EA7C15A3;
  v1 = STACK[0xF18];
  STACK[0x3058] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x19FF ^ (v0 + 11857))))();
}

uint64_t sub_1003319A4()
{
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((((2 * (&STACK[0x10000] + 3800)) | 0xBDED5F8E) - (&STACK[0x10000] + 3800) + 554258489) ^ 0x38D0B408) + 296753103;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x41F1)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 - 25114)))(v2);
}

uint64_t sub_100331A74(int a1)
{
  v4 = (*v3 ^ 0x7FFBC939) - v2 + (((26 * (v1 ^ 0x4ECF)) ^ 0x5F58) & (2 * *v3)) + 386123579;
  v5 = (a1 ^ 0xE7CBFFFC) - 1355575176 + ((a1 << (v1 - 101)) & 0x1F8);
  v6 = v5 < 0x96FF9074;
  v7 = v4 < v5;
  if (v6 != v4 < 0x96FF9074)
  {
    v7 = v6;
  }

  return (*(STACK[0xF18] + 8 * ((220 * v7) ^ v1)))();
}

uint64_t sub_100331B30@<X0>(unint64_t *a1@<X8>)
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 29228;
  v3 = *a1;
  LODWORD(STACK[0x10ED8]) = STACK[0xF10] - 193924789 * ((((&STACK[0x10000] + 3800) ^ 0xC477E5FC | 0xD0A281DA) - ((&STACK[0x10000] + 3800) ^ 0xC477E5FC) + (((&STACK[0x10000] + 3800) ^ 0xC477E5FC) & 0x2F5D7E24)) ^ 0xA26E5640) + 60349492;
  STACK[0x10EE0] = v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 16334)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v2))(v5);
}

uint64_t sub_100331BE0@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x9880] = *(STACK[0xF18] + 8 * (a1 & 0x5219CFED));
  return (*(v1 + 8 * ((((a1 & 0x5219CFED) + 20565) ^ 0x45EE) + (a1 & 0x5219CFED))))();
}

uint64_t sub_100331C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * (v7 ^ 0xD5DD)))(*(a5 - 108594335));
  *(a5 - 108594335) = v6;
  *(STACK[0x630] - 341378134) = v5;
  return (*(v9 + 8 * v7))(v10);
}

uint64_t sub_100331CDC()
{
  v2 = ((v1 ^ 0x301BD7E6) - 807131110) ^ ((v1 ^ 0xCE93B504) + 829180668) ^ ((v1 ^ 0x175D09C2 ^ (2593 * (((v0 - 36207) | 0xE48) ^ 0xF6D))) - 392013299);
  v3 = LODWORD(STACK[0x3908]) + 1706520775;
  v2 += 1334654932;
  v4 = (v3 < 0x65B770C3) ^ (v2 < 0x65B770C3);
  v5 = v3 > v2;
  if (v4)
  {
    v5 = v3 < 0x65B770C3;
  }

  return (*(STACK[0xF18] + 8 * ((105 * !v5) ^ v0)))();
}

uint64_t sub_100331DC4@<X0>(int a1@<W8>)
{
  v2 = a1 ^ 0x2159FE0A;
  v3 = *(v1 + 16);
  LODWORD(STACK[0x10ED8]) = (v2 - 1762648746) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0xBB3BC3B5) + (~(&STACK[0x10000] + 3800) | 0x44C43C4A)) ^ 0x8A3A0E90));
  STACK[0x10EE0] = v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 ^ 0x9080)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((63380 * (*(v1 + 24) == v2 - 23097)) ^ v2)))(v5);
}

uint64_t sub_100331E80()
{
  v3 = ((v1 - 44628 + (v0 ^ 0x168A8236) - 378183174) ^ ((v0 ^ 0x1F3B1BBC) - 523967420) ^ (((v1 - 530344841) ^ v0) + 530293093)) + 388173194;
  LODWORD(STACK[0x8264]) = v3;
  v5 = v2 == -371865839 && v3 != 760039033;
  return (*(STACK[0xF18] + 8 * ((112 * v5) ^ v1)))();
}

uint64_t sub_100331F4C()
{
  v0 = (STACK[0xF10] - 34589) | 0x5000;
  v1 = STACK[0xF10] - 34734;
  v2 = STACK[0xF18];
  STACK[0x9880] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x4632) + v1)))();
}

uint64_t sub_100331FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(STACK[0xF18] + 8 * (((v8 - 1421 + v8 + 5256 - 26227) * (v7 == v6)) ^ v8));
  LODWORD(STACK[0x3B4]) = v5;
  return v9(a1, STACK[0x398], 2779809898, -1740454280, a5, 25744);
}

uint64_t sub_100332020()
{
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((&STACK[0x10000] + 3800) ^ 0xE6261BCF) + 296753103;
  STACK[0x10ED8] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16271)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 - 19704)))(v2);
}

uint64_t sub_100332170@<X0>(int a1@<W8>)
{
  STACK[0x1F08] = STACK[0x4838];
  STACK[0xF48] = STACK[0x7D40] + 168;
  v1 = STACK[0x7430];
  STACK[0x7E08] = STACK[0x7430];
  return (*(STACK[0xF18] + 8 * ((((((a1 - 1108934347) ^ (v1 == 0)) & 1) == 0) * (((a1 - 27417) | 0x1540) - 23589)) ^ a1)))();
}

uint64_t sub_1003321EC()
{
  v0 = STACK[0xF10] ^ 0xF542;
  v1 = (STACK[0xF10] - 35626) | 0xAC20;
  v2 = STACK[0xF10] - 8535;
  STACK[0x9E78] = &STACK[0x631C];
  if (STACK[0xACF8])
  {
    v3 = LODWORD(STACK[0xAD04]) == -371865839;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(STACK[0xF18] + 8 * ((v4 * (v1 ^ (v0 + 11705))) ^ v2)))();
}

uint64_t sub_10033226C()
{
  v0 = STACK[0xF10] - 33843;
  v1 = *STACK[0x4680];
  v2 = v1 & 0x55 ^ 0xF1;
  v3 = v1 ^ 0x72;
  *(STACK[0x63C0] + 84) = (v1 ^ (2 * (v3 & (2 * (v3 & (2 * (v3 & (2 * (v3 & (2 * ((v1 ^ 0x62) & (2 * (((57 * (STACK[0xF10] ^ 0x5C) + 119) & (2 * v1) ^ 0x26) & (v1 ^ 0x62) ^ v2)) ^ v2)) ^ v2)) ^ v2)) ^ v2)) ^ v2))) ^ 0x1BE8;
  v4 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v4 + 8 * (v0 ^ 0x13B6)))();
}

uint64_t sub_1003323C8@<X0>(int a1@<W8>)
{
  *(v4 + 1536) = v3;
  *(v4 + 1532) = a1;
  return (*(STACK[0xF18] + 8 * ((v1 ^ v2) + 4167)))();
}

uint64_t sub_100332454()
{
  v2 = (((LODWORD(STACK[0x8154]) ^ 0xEAAF845) + ((v1 - 30181) ^ 0xF15512ED)) ^ ((LODWORD(STACK[0x8154]) ^ 0x85740122) + 2055995102) ^ ((LODWORD(STACK[0x8154]) ^ 0x620B3E76) - 1644904054)) + 1708954309;
  v3 = v2 < 0x7C06CBB4;
  v4 = v2 > v0 + 291670079;
  if (v0 < 0x6AA44375 != v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((434 * v5) ^ (v1 + 15735))))();
}

uint64_t sub_100332628()
{
  v0 = 170 * (STACK[0xF10] ^ 0x8B10);
  v1 = STACK[0xF10] - 26354;
  v2 = STACK[0x3778];
  LODWORD(STACK[0xED0]) = v0;
  LODWORD(STACK[0x2A10]) = (v0 ^ 0x1C8A) + v2;
  STACK[0x3180] = STACK[0x2C78];
  LODWORD(STACK[0x44B4]) = -371865840;
  LODWORD(STACK[0x2CE8]) = -2089813885;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1003326F4()
{
  v2 = LODWORD(STACK[0x6DBC]) == 1075903095;
  LOBYTE(STACK[0xB107]) = v2;
  v3 = v1 + 25;
  if (v2)
  {
    v3 = v1;
  }

  if (LODWORD(STACK[0x3864]))
  {
    v4 = LODWORD(STACK[0x3864]) + 3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 + v3;
  v6 = (((v5 + 499984882) << ((-55 * (v0 ^ 0xFB)) ^ 0xA2)) & 0x7DEA64EA ^ 0xBEF53275) & (v5 + 499984882) ^ 0x20810313;
  return (*(STACK[0xF18] + 8 * (((((v5 - 14) ^ (2 * (((2 * ((v5 - 14) ^ (v0 + 118))) ^ 0x24) & ((v5 - 14) ^ (v0 + 118)) & ((4 * v6) ^ 4) ^ v6))) & 0xF) == 3) ^ v0)))();
}

uint64_t sub_1003329C0()
{
  STACK[0x6440] = ((((v0 - 2020547918) & 0x186EFD6B | (((((v0 - 41021) | 0xA040) + 627337299) ^ LODWORD(STACK[0x7BBC])) << 32)) ^ 0x6B4C0D81F525D460) & (LODWORD(STACK[0x1784]) ^ 0xFFFFFFFF16B2BCEELL) | STACK[0x1784] & 0xADAA7F4) ^ 0xAE7DE73FD2184D5DLL;
  LODWORD(STACK[0x81CC]) = STACK[0x8178];
  LODWORD(STACK[0x6588]) = STACK[0x3700];
  STACK[0x5680] = 0;
  LODWORD(STACK[0x3158]) = -371865839;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762669758) ^ (906386353 * ((2 * ((&STACK[0x10000] + 3800) & 0x43F34FD0) - (&STACK[0x10000] + 3800) - 1140019155) ^ 0x8D0D7D09));
  STACK[0x10EE0] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 7788)))(&STACK[0x10ED8]);
  if (*STACK[0x970])
  {
    v3 = 1;
  }

  else
  {
    v3 = *STACK[0x940] == 0;
  }

  v4 = v3;
  return (*(v1 + 8 * ((29 * v4) ^ v0)))(v2);
}

uint64_t sub_100332B34@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x7718]) = a1;
  STACK[0x8648] = STACK[0x1B50];
  LODWORD(STACK[0x37DC]) = -1231078136;
  return (*(STACK[0xF18] + 8 * (v1 - 26090)))();
}

uint64_t sub_100332C18()
{
  STACK[0x5658] = v0;
  LODWORD(STACK[0x2564]) = 88601960;
  return (*(STACK[0xF18] + 8 * (v1 - 30507)))();
}

uint64_t sub_100332C44@<X0>(void *a1@<X8>)
{
  *(STACK[0x9D0] + 40) = v1 + *(STACK[0x9D0] + 40) - 0x3CE25E0EC5200378;
  v3 = *a1 == (((v2 - 15680) | 0xA01) ^ 0x3CE25E0EC52089EDLL);
  return (*(STACK[0xF18] + 8 * ((((v2 - 64) ^ 0xCF ^ v3) & 1 | (32 * (((v2 - 64) ^ 0xCF ^ v3) & 1))) ^ v2)))();
}

uint64_t sub_100332CC0()
{
  v0 = STACK[0xF10] - 27229;
  v1 = STACK[0x67E0];
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(*(STACK[0x67E0] + 768));
  *(v1 + 768) = 0;
  *(v1 + 776) = 174777416;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_100332D08@<X0>(int a1@<W8>)
{
  *(v3 + 2244) = v1;
  *(v3 + 2240) = v2;
  v4 = ((169 * (a1 ^ 0x4818)) ^ 0x90E57CE4) + v2;
  v5 = (((*(STACK[0x6F68] + 104) ^ 0x2244069D) - 574883485) ^ ((*(STACK[0x6F68] + 104) ^ 0xE1230136) + 517799626) ^ ((*(STACK[0x6F68] + 104) ^ 0x2AB2C0BA) - 716357818)) - 1039187471;
  v6 = v5 < 0xD8397AE0;
  v7 = v4 < v5;
  if (v4 < 0xD8397AE0 != v6)
  {
    v7 = v6;
  }

  return (*(STACK[0xF18] + 8 * ((44 * v7) ^ a1)))();
}

uint64_t sub_100332DDC()
{
  v2 = v0 + 423315;
  v3 = ((((v0 + 428861) ^ *(v1 - 0x217E172EFA1E804) ^ 0x649F0672) - 1688177993) ^ ((*(v1 - 0x217E172EFA1E804) ^ 0x5FE27725) - 1608677157) ^ (((((v0 + 402451) | 0x1008) - 760739484) ^ *(v1 - 0x217E172EFA1E804)) + 760726147)) - 54746966;
  v4 = 634647737 * ((((2 * (&STACK[0x10000] + 3800)) | 0xED88766E) - (&STACK[0x10000] + 3800) + 154911945) ^ 0x9B5214CB);
  STACK[0x10EF0] = *(v1 - 0x217E172EFA1E81CLL);
  STACK[0x10EE8] = &STACK[0x232C];
  STACK[0x10EE0] = &STACK[0x8CEC];
  LODWORD(STACK[0x10EF8]) = v0 + 423315 - v4 + 9680;
  STACK[0x10F00] = v1 - 0x217E172EFA1E800;
  LODWORD(STACK[0x10ED8]) = v3 ^ v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 + 445126)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((45 * (LODWORD(STACK[0x10F08]) != 371891404)) ^ v2)))(v6);
}

uint64_t sub_100332FA4()
{
  v1 = STACK[0xF10] - 16148;
  *STACK[0x9CD0] = *STACK[0x8140];
  v2 = STACK[0x7B80];
  v3 = STACK[0x7D40];
  v3[42] = *(STACK[0x7B80] + 8);
  v3[43] = *(v2 + 12);
  v3[44] = *(v2 + 16);
  v3[48] = v0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100333050()
{
  v0 = STACK[0xF10] + 4822;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(STACK[0x6CE8]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10033311C@<X0>(unint64_t a1@<X3>, int a2@<W8>)
{
  STACK[0x3A50] = a1;
  LODWORD(STACK[0x65B4]) = a2;
  LODWORD(STACK[0x6878]) = a2;
  return (*(STACK[0xF18] + 8 * SLODWORD(STACK[0x518])))();
}

uint64_t sub_100333194()
{
  v2 = (((v0 ^ 0x1EFB930D) - 695696830) ^ v0 ^ ((v0 ^ 0x4879AD71) - 2146780098) ^ ((v0 ^ 0xDEF22F20) + 377568877) ^ (((327 * ((v1 + 9234) ^ 0xAF20) - 1073974095) ^ v0) + 2005921444)) & 0xFFFFFFF0;
  v3 = ((v2 ^ 0x113A5F7C) - 1286847435) ^ ((v2 ^ 0xF1BDDD9) - 1385314670) ^ ((v2 ^ 0x29AD6C15) - 1948551330);
  LODWORD(STACK[0xAA90]) = v3 + 1999740788;
  v4 = (((LODWORD(STACK[0x9704]) ^ 0x2E75F363) - 779481955) ^ ((LODWORD(STACK[0x9704]) ^ 0x6CA4605A) - 1822711898) ^ ((LODWORD(STACK[0x9704]) ^ 0xAB045428) + 1425779672)) + 1468808830 + v3;
  v5 = (v4 ^ 0xF84C8A9F) & (2 * (v4 & 0xFC4E92D8)) ^ v4 & 0xFC4E92D8;
  v6 = ((2 * (v4 ^ 0x10D48B2F)) ^ 0xD93433EE) & (v4 ^ 0x10D48B2F) ^ (2 * (v4 ^ 0x10D48B2F)) & 0xEC9A19F6;
  v7 = v6 ^ 0x248A0811;
  v8 = (v6 ^ 0xC01011E0) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0xB26867DC) & v7 ^ (4 * v7) & 0xEC9A19F4;
  v10 = (v9 ^ 0xA00801C0) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x4C921823)) ^ 0xC9A19F70) & (v9 ^ 0x4C921823) ^ (16 * (v9 ^ 0x4C921823)) & 0xEC9A19F0;
  v12 = v10 ^ 0xEC9A19F7 ^ (v11 ^ 0xC8801900) & (v10 << 8);
  v13 = v4 ^ (2 * ((v12 << 16) & 0x6C9A0000 ^ v12 ^ ((v12 << 16) ^ 0x19F70000) & (((v11 ^ 0x241A0087) << 8) & 0x6C9A0000 ^ 0x64820000 ^ (((v11 ^ 0x241A0087) << 8) ^ 0x1A190000) & (v11 ^ 0x241A0087))));
  LODWORD(STACK[0x9704]) = v13 ^ 0xDD8B6627;
  v14 = STACK[0xF18];
  v15 = (*(STACK[0xF18] + 8 * ((v1 + 9234) ^ 0x65D5)))(v13 ^ 0x345EA136u);
  STACK[0x19F8] = v15;
  return (*(v14 + 8 * ((25 * (v15 != 0)) ^ (v1 + 9234))))();
}

uint64_t sub_100333498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (v8 == ((a8 + 7825) | 0xA6) - 371881117)
  {
    v9 = LODWORD(STACK[0x35D4]);
  }

  else
  {
    v9 = v8;
  }

  return (*(STACK[0xF18] + 8 * a8))(a1, a2, v9);
}

uint64_t sub_1003334D0()
{
  v1 = v0 ^ 0x53EB;
  LODWORD(STACK[0x2098]) = -371865851;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * ((v0 ^ 0x53EB) + 28285)))(20);
  STACK[0x15C0] = v3;
  STACK[0x62F8] = v3;
  return (*(v2 + 8 * (((v3 != 0) * (v1 ^ 0x5C28)) ^ v1)))();
}

uint64_t sub_100333590()
{
  v0 = STACK[0xF10] - 30507;
  STACK[0x5658] = STACK[0x83B8];
  LODWORD(STACK[0x2564]) = -2145026780;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1003335C8()
{
  v0 = STACK[0xF10];
  STACK[0x63B8] = STACK[0x7820] + 16;
  return (*(STACK[0xF18] + 8 * (v0 - 29290)))();
}

uint64_t sub_1003335F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0xF10];
  v5 = STACK[0x3AC4];
  LODWORD(STACK[0x3AC4]) += 4;
  LODWORD(STACK[0x9AF8]) = v5 + LODWORD(STACK[0xB9D4]) + 1606886958;
  v6 = *(STACK[0xB9E8] + 32) + 1981997238;
  v7 = ((v6 ^ 0x1250EE62) - 1685196505) ^ v6 ^ ((v6 ^ 0x4A3012E5) - 1007874654) ^ ((v6 ^ 0xD4BDE3D3) + 1566637208) ^ ((v6 ^ 0xFAFFFFEF) + 1931665580);
  LODWORD(STACK[0x9B04]) = v7 ^ 0x8DD5B28D;
  return (*(STACK[0xF18] + 8 * (v4 - 28300)))(a1, a2, a3, a4, 1077842533 - 0x1A / (v7 ^ 0x7622E0BB) * (v7 ^ 0x7622E0BB));
}

uint64_t sub_100333704()
{
  v0 = 14639 * ((STACK[0xF10] + 348151872) & 0xEB3F7F9D ^ 0x6B1B);
  v1 = STACK[0xF10] + 12742;
  v2 = *STACK[0x9C50];
  *STACK[0x9C50] = v2 + 16;
  v3 = (((LODWORD(STACK[0xABFC]) ^ 0xC7D5AED5) + 942297387) ^ ((LODWORD(STACK[0xABFC]) ^ 0x1167F21E) - 292024862) ^ ((v0 ^ LODWORD(STACK[0xABFC]) ^ 0x3F67E984) - 1063754714)) + 1354772917;
  v4 = ((v2 + 1726638773) < 0x66EA6AA4) ^ (v3 < 0x66EA6AA4);
  v5 = v2 + 1726638773 > v3;
  if (v4)
  {
    v5 = (v2 + 1726638773) < 0x66EA6AA4;
  }

  return (*(STACK[0xF18] + 8 * (((4 * v5) | (32 * v5)) ^ v1)))();
}

uint64_t sub_100333810()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v1 + 8 * (v0 - 28684)))(v2);
}

uint64_t sub_10033383C(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 24) = 0;
  v6 = STACK[0x938];
  v7 = *(STACK[0x938] + 16);
  LODWORD(STACK[0x10ED8]) = (v3 - 1762661944) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x227235F3) - ((&STACK[0x10000] + 3800) | 0xDD8DCA0C) - 577910260) ^ 0x1373F8D7));
  STACK[0x10EE0] = v7;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * (v3 ^ 0x477E)))(&STACK[0x10ED8]);
  v10 = (*v6 + 640 * (((v3 - 652) ^ (327 * (v3 ^ 0x8DAAu)) ^ 0x19E0FF452BE6561) + v4 + 0xE61F00B6513CC52) + 632);
  v11 = *v10;
  *(a1 + 16) = *v10;
  return (*(v8 + 8 * ((991 * (v11 != 0)) ^ v3)))(v9);
}

uint64_t sub_1003339D4(unint64_t a1)
{
  *a1 = 0x425D765000000001;
  *(a1 + 12) = 44;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v1;
  v3 = STACK[0x8D08];
  *(a1 + 32) = 0;
  *(a1 + 40) = v3;
  STACK[0x8D08] = a1;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_100333ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0xF10];
  LODWORD(STACK[0xA580]) = STACK[0x9894];
  v5 = *(STACK[0x2C38] + 32) + 250384109;
  v6 = ((v5 ^ 0x4D2EFC30) - 1136816834) ^ v5 ^ ((v5 ^ 0xE8655AF2) + 427174912) ^ ((v5 ^ 0xF45AD74E) + 88712772) ^ ((v5 ^ 0x5FFDFF7E) - 1360097676);
  LODWORD(STACK[0xA58C]) = v6 ^ 0x1D39513E;
  v7 = 0x90 % (v6 ^ 0xEEC8EF2) - 2 * ((0x90 % (v6 ^ 0xEEC8EF2)) & 0x3F) - 39857601;
  return (*(STACK[0xF18] + 8 * (v4 - 28300)))(a1, a2, a3, a4, (((v7 ^ 0xFE1F571B) + 31500517) ^ ((v7 ^ 0x94837B4B) + 1803322549) ^ ((v7 ^ 0x9703FE6F) + 1761345937)) + 1037984906);
}

uint64_t sub_100333C24()
{
  *v3 = v0;
  *(v1 + 456) += (v2 + 390) ^ 0x4EF2;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_100333CBC()
{
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762671846) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x5C28E923) + (~(&STACK[0x10000] + 3800) | 0xA3D716DC)) ^ 0x6D292406));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 5700)))(&STACK[0x10ED8]);
  v4 = *STACK[0x970] != ((109 * (v0 ^ 0xB532)) ^ 0x8B3B) || *STACK[0x940] == 0;
  return (*(v1 + 8 * ((v4 * ((11881 * (v0 ^ 0xB476)) ^ 0x8B8D)) ^ v0)))(v2);
}

uint64_t sub_100333ED8()
{
  *(v3 + ((v1 + 11032) ^ 0x702ELL) + v0) ^= *(v2 + v0 + 46) ^ (v0 + ((-68 - 2 * v0) | 0x37) - 122) ^ 0xBC;
  v5 = (*(v2 + 66) - 10554);
  v7 = v5 < 0xF014 || v5 > ((v0 + 1) - 4076);
  return (*(v4 + 8 * ((54 * v7) ^ v1)))();
}

uint64_t sub_100334118@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v3 + v5) - ((2 * *(v3 + v5)) & 0xBF) + 95;
  return (*(STACK[0xF18] + 8 * (((v5 == 0) * v4) ^ a2)))();
}

uint64_t sub_100334150()
{
  v0 = STACK[0xF10] ^ 0xF5A0;
  v1 = STACK[0xF10] - 32112;
  STACK[0x3300] = STACK[0x1C78] + 16;
  v2 = STACK[0xF18];
  STACK[0x6728] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 ^ v1 ^ 0x5AED)))();
}

uint64_t sub_1003341E4()
{
  v1 = STACK[0x687C];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393326;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100334334()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] + 12172;
  LOWORD(STACK[0x5C42]) = v0;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x41A3)))(v0 ^ 0xFDF5u);
  STACK[0x34B0] = v4;
  return (*(v3 + 8 * ((60 * (((v4 == 0) ^ (v1 - 92)) & 1)) ^ v2)))();
}

uint64_t sub_1003343C8()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 31569;
  *(STACK[0x2568] + 72) = v0;
  v3 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * (v2 ^ 0x1C73 ^ ((v2 == 625343044) * (v1 - 22109)))))();
}

uint64_t sub_100334458()
{
  v1 = STACK[0x489C];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393361;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10033465C()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x11BD)))();
}

uint64_t sub_10033496C()
{
  v1 = STACK[0x6E74];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393358;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1003349B8()
{
  v0 = STACK[0xCD0];
  v1 = ((LODWORD(STACK[0xA194]) ^ 0xAA6541CB) + 1436204597) ^ ((LODWORD(STACK[0xA194]) ^ 0x5879BD56) - 1484373334) ^ ((LODWORD(STACK[0xA194]) ^ 0xBBAFFD26) + 1146094298);
  v2 = (*STACK[0xA198] ^ 0xBBEDF9A1) + 1820274394 + ((2 * (*STACK[0xA198] ^ 0x5E)) & 0x1FC);
  v3 = 634647737 * ((((2 * (&STACK[0x10000] + 3800)) | 0xFCE9880) - (&STACK[0x10000] + 3800) + 2014884800) ^ 0xEA7163BC);
  LODWORD(STACK[0x10EE0]) = (STACK[0xCD0] ^ 0xC217EAC3) + (((LODWORD(STACK[0xB738]) ^ 0x6D8E5930) - 1838045488) ^ ((LODWORD(STACK[0xB738]) ^ 0x6FD67230) - 1876324912) ^ ((LODWORD(STACK[0xB738]) ^ 0x955E2C48) + 1788990392)) + v3;
  STACK[0x10EE8] = &STACK[0xF28] ^ 0xC4E7DDCF2A63958CLL;
  LODWORD(STACK[0x10EDC]) = v2 ^ v3;
  LODWORD(STACK[0x10ED8]) = v3 + v1 - 1462826144;
  LODWORD(STACK[0x10EF4]) = v0 - v3 + 1352454741;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 51582)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (v0 + 4428)))(v5);
}

uint64_t sub_100334BC8@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xA848]) = v3 + 4;
  v4 = (((v2 ^ 0xDBD2FC0A) + 606929910) ^ ((v2 ^ 0x8E87CA5C) + 1903703460) ^ (((((a1 - 31891) ^ 0x5261) - 1132422263) ^ v2) + 1132400313)) + 384574855;
  v5 = ((v3 + 4) > 0xD2E9A189) ^ (v4 < 0x2D165E76);
  v6 = v3 + 756440698 > v4;
  if (v5)
  {
    v6 = (v3 + 4) > 0xD2E9A189;
  }

  if (v6)
  {
    v1 = 371891407;
  }

  LODWORD(STACK[0xA84C]) = v1;
  return (*(STACK[0xF18] + 8 * ((v1 != -371865839) ^ a1)))();
}

uint64_t sub_100334D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  STACK[0x2CA0] = 0;
  STACK[0x3748] = 0;
  LODWORD(STACK[0x5678]) = -371865839;
  return (*(STACK[0xF18] + 8 * ((20649 * (v3 == ((a3 + 28661) ^ 0xE9D54C2B))) ^ a3)))(a1, a2, 371891535);
}

uint64_t sub_100334DFC()
{
  v3 = v0 - 28547;
  v4 = v0 - 29664;
  LODWORD(STACK[0x596C]) = (v1 ^ 0x7BFC7D7F) + 2 * (v1 & 0x7F) - 2080144763;
  LODWORD(STACK[0x10ED8]) = (v0 - 2608) ^ (1603510583 * ((((&STACK[0x10000] + 3800) | 0xAD99FF56) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x526600A8)) ^ 0x3A42CDFD));
  v5 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0x406A)))(&STACK[0x10ED8]);
  v6 = STACK[0x10EDC];
  v7 = (v3 ^ 0xEAEDC444) + 2 * *v2 + (*v2 ^ 0x579F7AFF);
  v8 = STACK[0x5048];
  v9 = STACK[0x83C0];
  STACK[0x6DF8] = STACK[0xA490];
  LODWORD(STACK[0x41E4]) = v6;
  STACK[0x71A0] = v2;
  LODWORD(STACK[0x7A74]) = v7;
  STACK[0x64A8] = v8;
  STACK[0x7A68] = v9;
  LODWORD(STACK[0x3430]) = 1481222425;
  return (*(v5 + 8 * v4))(&off_1010A0B50);
}

uint64_t sub_100334F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = (a8 + 371890431) | 0x207;
  STACK[0x2EF8] = STACK[0x6DA8];
  LODWORD(STACK[0x3D14]) = STACK[0x3AF4];
  LODWORD(STACK[0x10ED8]) = (v8 - 1762650760) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0xF100187B) - ((&STACK[0x10000] + 3800) & 0xF1001878)) ^ 0xC001D55F));
  STACK[0x10EE0] = 0;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * (v8 + 26786)))(&STACK[0x10ED8]);
  if (*STACK[0x970])
  {
    v11 = 1;
  }

  else
  {
    v11 = *STACK[0x940] == 0;
  }

  v12 = v11;
  return (*(v9 + 8 * ((v12 * ((v8 ^ 0xE92C) - 35591)) ^ v8)))(v10);
}

uint64_t sub_10033500C()
{
  v0 = STACK[0xF10] - 21286;
  v1 = STACK[0xF10] - 33973;
  v2 = STACK[0xF18];
  STACK[0x16D8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 + v1 - 8969)))();
}

uint64_t sub_100335080()
{
  v1 = STACK[0xF10] - 24953;
  v2 = (STACK[0xF10] - 1769601916) & 0x6979FB7B;
  v3 = STACK[0xF10];
  v4 = *(v0 + 8);
  STACK[0x4940] = v0 + 8;
  LODWORD(STACK[0x10ED8]) = (v1 - 1762636339) ^ (906386353 * ((~(&STACK[0x10000] + 3800) & 0x3E47FD7 | (&STACK[0x10000] + 3800) & 0xFC1B8028) ^ 0x32E5B2F3));
  STACK[0x10EE0] = v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 ^ 0xE37B)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * (((*(v0 + 136) == 0) * (v2 + (v3 ^ 0xFFFFFFE3))) ^ v1)))(v6);
}

uint64_t sub_1003351B8()
{
  v1 = *STACK[0x9420];
  *STACK[0x42B8] = v1;
  return (*(STACK[0xF18] + 8 * (((v1 == 2) * ((((v0 - 1237) | 0x8819) - 13737) ^ v0 ^ 0x941F)) ^ v0)))();
}

uint64_t sub_10033521C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *STACK[0x3DA8] ^ *(a2 + 24);
  LODWORD(STACK[0x3CF4]) = (v5 & 0x12C91C21 | (a1 & 0x354AF39A ^ 0x6C32CAB ^ (((v3 ^ 0x3D0F) + 808099763) ^ v2) & (a1 ^ 0x162A38EE)) & ~v5) ^ ((((v4 - (v3 ^ 0xE9D5C159)) | ((v3 ^ 0xE9D5C159) - v4)) >> 31) | 0x723A11CC);
  v6 = STACK[0xF18];
  STACK[0x7A58] = *(STACK[0xF18] + 8 * v3);
  return (*(v6 + 8 * (v3 ^ 0x605D)))();
}

uint64_t sub_1003353CC@<X0>(int a1@<W8>)
{
  STACK[0xAB68] = v2;
  v5 = STACK[0x7690];
  v6 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0xAB70] = v6;
  STACK[0xAB78] = v6 + 37;
  STACK[0xAB80] = v6 + 74;
  STACK[0x7690] = v5 + 96;
  LODWORD(v5) = *(v3 + 12);
  STACK[0xAB88] = v3 + 12;
  STACK[0xAB90] = v1;
  v7 = (((a1 ^ 0x98265EF2) + 1742315790) ^ ((a1 ^ 0x32B31138) - 850596152) ^ ((a1 ^ 0x434088DB) - 1128302811)) - 485038533 + (((v5 ^ 0x805B5B8A) + 2141496438) ^ (((v4 + 2684) | 0x812) - 232892465 + (v5 ^ 0xDE11CF6)) ^ ((v5 ^ 0x646F806D) - 1685028973));
  LODWORD(v5) = (v7 ^ 0xE6008F3F) & (2 * (v7 & 0xF094A83F)) ^ v7 & 0xF094A83F;
  v8 = ((2 * (v7 ^ 0xA721DF53)) ^ 0xAF6AEED8) & (v7 ^ 0xA721DF53) ^ (2 * (v7 ^ 0xA721DF53)) & 0x57B5776C;
  LODWORD(v6) = v8 ^ 0x50951124;
  v9 = (v8 ^ 0x6206048) & (4 * v5) ^ v5;
  LODWORD(v5) = ((4 * v6) ^ 0x5ED5DDB0) & v6 ^ (4 * v6) & 0x57B57768;
  v10 = (v5 ^ 0x56955520) & (16 * v9) ^ v9;
  LODWORD(v5) = ((16 * (v5 ^ 0x120224C)) ^ 0x7B5776C0) & (v5 ^ 0x120224C) ^ (16 * (v5 ^ 0x120224C)) & 0x57B57740;
  v11 = v10 ^ 0x57B5776C ^ (v5 ^ 0x53157600) & (v10 << 8);
  v12 = v7 ^ (2 * ((v11 << 16) & 0x57B50000 ^ v11 ^ ((v11 << 16) ^ 0x776C0000) & (((v5 ^ 0x4A0012C) << 8) & 0x57B50000 ^ 0x42800000 ^ (((v5 ^ 0x4A0012C) << 8) ^ 0x35770000) & (v5 ^ 0x4A0012C))));
  LODWORD(STACK[0x18F4]) = v12 ^ 0x186381F6;
  v13 = STACK[0xF18];
  v14 = (*(STACK[0xF18] + 8 * (v4 + 20971)))(v12 ^ 0xF1B646E7);
  STACK[0xAB98] = v14;
  return (*(v13 + 8 * (((v14 != 0) | (16 * (v14 != 0))) ^ v4)))();
}

uint64_t sub_1003356B0()
{
  v1 = (v0 - 41804) | 0x21;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 + 4148)))();
}

uint64_t sub_1003358C8()
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
  STACK[0xBFA0] = 0;
  STACK[0xBFA8] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xBFA0] | v10);
  *(&STACK[0xBFA0] | v10) = 0;
  LOBYTE(STACK[0xBFA7]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xBFA0] | v12);
  *(&STACK[0xBFA0] | v12) = STACK[0xBFA6];
  LOBYTE(STACK[0xBFA6]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xBFA0] | v14);
  *(&STACK[0xBFA0] | v14) = STACK[0xBFA5];
  LOBYTE(STACK[0xBFA5]) = v15;
  v16 = STACK[0xBFA0];
  LOBYTE(STACK[0xBFA0]) = STACK[0xBFA4];
  LOBYTE(STACK[0xBFA4]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xBFA0] | v17);
  *(&STACK[0xBFA0] | v17) = STACK[0xBFA3];
  LOBYTE(STACK[0xBFA3]) = v18;
  v19 = STACK[0xBFA1];
  LOBYTE(STACK[0xBFA2]) = STACK[0xBFA0];
  LOWORD(STACK[0xBFA0]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xBFA0] = vmla_s32(v22, STACK[0xBFA0], vdup_n_s32(0x1000193u));
  STACK[0xBFA8] ^= STACK[0xBFA0];
  STACK[0xBFA8] = vmul_s32(vsub_s32(STACK[0xBFA8], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xBFAA];
  LOWORD(STACK[0xBFA9]) = STACK[0xBFA8];
  LOBYTE(STACK[0xBFA8]) = v23;
  v24 = (&STACK[0xBFA8] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xBFAB];
  LOBYTE(STACK[0xBFAB]) = v19;
  LOBYTE(v24) = STACK[0xBFA8];
  LOBYTE(STACK[0xBFA8]) = STACK[0xBFAC];
  LOBYTE(STACK[0xBFAC]) = v24;
  v25 = (&STACK[0xBFA8] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xBFAD];
  LOBYTE(STACK[0xBFAD]) = v24;
  v26 = (&STACK[0xBFA8] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xBFAE];
  LOBYTE(STACK[0xBFAE]) = v25;
  v27 = (&STACK[0xBFA8] | v10);
  v28 = *v27;
  *v27 = STACK[0xBFAF];
  LOBYTE(STACK[0xBFAF]) = v28;
  v29 = STACK[0xBFA8];
  v30 = (553300517 * STACK[0xBFA8]) ^ v9;
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
  *STACK[0x940] = STACK[0xBFA8];
  return (*(STACK[0xF18] + 8 * v1))(v47, v48);
}

uint64_t sub_100335DB4()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 31217;
  v2 = STACK[0xF18];
  STACK[0x4BF8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 25358) ^ v1)))();
}

uint64_t sub_100335EC4@<X0>(int a1@<W8>)
{
  v5 = STACK[0xF18];
  STACK[0x1698] = *(STACK[0xF18] + 8 * a1);
  STACK[0x3F80] = v3;
  STACK[0x56B0] = v2;
  v6 = STACK[0x7690];
  STACK[0x9530] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v6 + 96;
  return (*(v5 + 8 * (((v1 != 0) * ((v4 + 6290) ^ 0xA3D2)) ^ (v4 + 8679))))();
}

uint64_t sub_100335F94()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + v0 + 4113 - 1762)))();
}

uint64_t sub_100335FE8()
{
  LODWORD(STACK[0xB070]) = v0;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 25181)))(v2);
  STACK[0x5248] = v4;
  v5 = (*(v3 + 8 * (v1 ^ 0xA2A3)))(20);
  STACK[0x3150] = v5;
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  return (*(v3 + 8 * ((v7 * ((((v1 - 360641612) ^ 0xEA815B98) + 18452) ^ (v1 - 360641612) & 0x157EFC3D)) ^ v1)))();
}

uint64_t sub_1003360A0()
{
  v3 = *(v1 + 8);
  v2 = v1 + 8;
  STACK[0x3858] = v2;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762631175) ^ (906386353 * ((~(&STACK[0x10000] + 3800) & 0x4A4DEF84 | (&STACK[0x10000] + 3800) & 0xB5B21078) ^ 0x7B4C22A0));
  STACK[0x10EE0] = v3;
  v4 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0xDF2F)))(&STACK[0x10ED8]);
  STACK[0x3568] = v2 + 168;
  v5 = STACK[0x7690];
  v6 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x2148] = v6;
  STACK[0x8320] = (v6 + 4096);
  STACK[0x4298] = (v6 + 4112);
  STACK[0x8C60] = (v6 + 4128);
  STACK[0x7690] = v5 + 4144;
  LODWORD(STACK[0x87F4]) = ((v0 ^ 0x9EAD) - 17948) ^ LODWORD(STACK[0x89F4]) ^ 0xE9D5820E;
  (*(v4 + 8 * (v0 + 46401)))();
  (*(v4 + 8 * (v0 + 46401)))(v6 + 4128, 0, 16);
  v7 = (*(v4 + 8 * (v0 + 46501)))(16, 0x100004077774924);
  STACK[0xED0] = v7;
  STACK[0x42E8] = v7;
  STACK[0x5DD8] = (*(v4 + 8 * (v0 ^ 0xDEAD)))(16, 0x100004077774924);
  LODWORD(STACK[0x589C]) = -371865839;
  return (*(v4 + 8 * (((STACK[0x2248] != 0) | (8 * (STACK[0x2248] != 0))) ^ v0)))();
}

uint64_t sub_10033642C(unint64_t a1)
{
  v5 = (((v3 ^ 0xD4207FD5) + 736067627) ^ ((v3 ^ 0x8A78B48F) + 1971800945) ^ ((v3 ^ (v4 + 1370) ^ 0xB78D5B44) + 1215493045)) + 921840579;
  v6 = 139493411 * ((&STACK[0x10000] + 3800) ^ 0xC2DE145);
  LODWORD(STACK[0x10ED8]) = (v4 - 13131) ^ v6;
  LODWORD(STACK[0x10EF8]) = v5 ^ v6;
  STACK[0x10EE0] = v2;
  STACK[0x10EE8] = v2;
  STACK[0x10F00] = a1;
  STACK[0x10EF0] = v1;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v4 + 31000)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * v4))(v8);
}

uint64_t sub_10033650C()
{
  v0 = STACK[0xF10] + 4804;
  v1 = STACK[0x9ED0];
  v2 = STACK[0x7E58];
  STACK[0x7690] = ((STACK[0xF10] + 1200385219) & 0xB8738E75) + STACK[0x7690] - 33972;
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(STACK[0xF18] + 8 * ((965 * v4) ^ v0)))();
}

uint64_t sub_100336758@<X0>(int a1@<W8>, int a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6, int a7)
{
  v8 = (a1 - 33260) | 0x820C;
  v9 = 297845113 * ((~&a3 & 0x64DAD402 | &a3 & 0x9B252BFC) ^ 0x13E9C89C);
  a3 = v9 + 470953717;
  a4 = v9 + 15750 + v8;
  a6 = v9 ^ 0x5084244B;
  a7 = v9 ^ 0x4202EA2D;
  v10 = (*(v7 + 8 * (v8 ^ 0x4E24)))(&a3);
  return (*(v7 + 8 * ((8417 * (a5 > (v8 ^ 0x6FEE0A6Au))) ^ v8)))(v10);
}

uint64_t sub_100336874()
{
  v2 = v1 - 102;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 35151)))(v2);
  STACK[0x4690] = v4;
  return (*(v3 + 8 * (((v4 == 0) * (((v0 - 16415) | 0x8A11) ^ 0x8B0F)) ^ (v0 + 22285))))();
}

uint64_t sub_100336934@<X0>(int a1@<W8>)
{
  STACK[0x6E18] = v1;
  STACK[0x6B70] = 0;
  return (*(STACK[0xF18] + 8 * (((STACK[0x24F0] != 0) * (((a1 + 2024212650) & 0x8758FFFB) - 35592)) ^ (a1 + 712))))();
}

uint64_t sub_100336998()
{
  v0 = (STACK[0xF10] + 1245689285) | 0xB43620A0;
  LODWORD(STACK[0x6570]) = 371891332;
  LOBYTE(STACK[0x9797]) = 0;
  return (*(STACK[0xF18] + 8 * ((v0 + 25763192 + ((v0 + 25796490) | 0x8A11)) ^ (438 * (v0 != -554410811)))))();
}

uint64_t sub_100336A1C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v2 = ((((a2 - 7173) | 0x8323u) + 0x177BF4C01) & (2 * (*(a1 + 16) - 1267394595))) + ((*(a1 + 16) - 1267394595) ^ 0xFD9FFFDBBBDFEB9ELL);
  *(a1 + 32) = ((a2 - 1714625666) & 0x6632FBF7) + 0x5FB19CE7C689166FLL + v2;
  v2 += 0x2600024D67CBE58;
  v3 = STACK[0x7D20] - 0x6F6F2C6D8F8EF022;
  v4 = v2 < 0x925CA9F2;
  v5 = v2 > v3;
  if (v3 < 0x925CA9F2 != v4)
  {
    v5 = v4;
  }

  if (v5)
  {
    v6 = 371891407;
  }

  else
  {
    v6 = *(a1 + 24);
  }

  *(a1 + 40) = v6;
  v7 = v6 == -371865839;
  *(a1 + 47) = v7;
  return (*(STACK[0xF18] + 8 * ((44499 * v7) ^ a2)))();
}

uint64_t sub_100336B98()
{
  v0 = 308 * (STACK[0xF10] ^ 0x8B6D);
  v1 = STACK[0xF10] - 34500;
  STACK[0x9598] = STACK[0x10D8] + 8;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x74E4 ^ v0)))();
}

uint64_t sub_100336C48@<X0>(uint64_t a1@<X8>)
{
  *(*(v3 + 16) + a1) = 43;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 + 16221)))((v1 + 277737 + v2 - 33374));
  STACK[0x2BD0] = v5;
  if (v5)
  {
    v6 = -371865839;
  }

  else
  {
    v6 = 371891397;
  }

  LODWORD(STACK[0xAE8C]) = v6;
  return (*(v4 + 8 * ((27 * (v5 == 0)) ^ (v2 - 12848))))();
}

uint64_t sub_100336D20()
{
  STACK[0x10EE0] = *STACK[0x4288];
  LODWORD(STACK[0x10ED8]) = (v0 + 703923997) ^ (634647737 * ((((2 * (&STACK[0x10000] + 3800)) | 0xFE96AE6E) - (&STACK[0x10000] + 3800) - 2135643959) ^ 0x12DD78CB));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xC3F2)))(&STACK[0x10ED8]);
  STACK[0x23F0] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((v0 + 662760903) & 0xD87F6FC8 ^ 0x5753) + v0)))(v2);
}

uint64_t sub_100336E14(uint64_t a1)
{
  v3 = STACK[0xAB0] + v2 + (a1 << 8);
  v4 = (v3 ^ 0xAE285DB53CAC5636) & (2 * (v3 & 0x2F415C39B88854B6)) ^ v3 & 0x2F415C39B88854B6;
  v5 = ((2 * (v3 ^ 0xB828EDC72CBCD73ELL)) ^ 0x2ED363FD28690710) & (v3 ^ 0xB828EDC72CBCD73ELL) ^ (2 * (v3 ^ 0xB828EDC72CBCD73ELL)) & 0x9769B1FE94348388;
  v6 = v5 ^ 0x9128900294148088;
  v7 = (v5 ^ 0x60121EC00200300) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0x5DA6C7FA50D20E20) & v6 ^ (4 * v6) & 0x9769B1FE94348388;
  v9 = (v8 ^ 0x152081FA10100200) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x8249300484248188)) ^ 0x769B1FE943483880) & (v8 ^ 0x8249300484248188) ^ (16 * (v8 ^ 0x8249300484248188)) & 0x9769B1FE94348380;
  v11 = (v10 ^ 0x160911E800000000) & (v9 << 8) ^ v9;
  v12 = (((v10 ^ 0x8160A01694348308) << 8) ^ 0x69B1FE9434838800) & (v10 ^ 0x8160A01694348308) ^ ((v10 ^ 0x8160A01694348308) << 8) & 0x9769B1FE94348000;
  v13 = v11 ^ 0x9769B1FE94348388 ^ (v12 ^ 0x121B09414000000) & (v11 << 16);
  v14 = (v3 ^ (2 * ((v13 << 32) & 0x1769B1FE00000000 ^ v13 ^ ((v13 << 32) ^ 0x1434838800000000) & (((v12 ^ 0x9648016A80340388) << 16) & 0x1769B1FE00000000 ^ 0x60121CA00000000 ^ (((v12 ^ 0x9648016A80340388) << 16) ^ 0x31FE943400000000) & (v12 ^ 0x9648016A80340388))))) & 0xFFFFFFFFFFFFFFFCLL;
  return (*(STACK[0xF18] + 8 * (v1 - 20694)))((((v14 ^ 0x731977AD1ED5D214) - 0x6D96AC8841BF100ELL) ^ ((v14 ^ 0x332DE73A8264ABFFLL) - 0x2DA23C1FDD0E69E5) ^ ((v14 ^ 0x69E7AC430C502A4FLL) - 0x77687766533AE855)) + 0x375CE7F21EA1237BLL);
}

uint64_t sub_1003370E8@<X0>(uint64_t a1@<X3>, unsigned int a2@<W8>)
{
  v2 = *(STACK[0xF18] + 8 * (a2 ^ 0x148EF00C ^ (8628 * (a2 < 0x7A68DFCC))));
  v3 = STACK[0xF10];
  LODWORD(STACK[0xED0]) = STACK[0xF10] - 10990;
  STACK[0xEC0] = 193924789 * ((~&STACK[0x10ED8] & 0x7413C801D915DBE7 | &STACK[0x10ED8] & 0x8BEC37FE26EA2418) ^ 0x8F88D8F56FAEE981);
  LODWORD(STACK[0xEB0]) = v3 + 16559;
  LODWORD(STACK[0xEA0]) = v3 + 16238;
  return v2(3335, 4118177278, 176770430, a1, 4294921499, 4294949551);
}

uint64_t sub_100337244@<X0>(unint64_t a1@<X8>)
{
  STACK[0x1B28] = v10;
  LODWORD(STACK[0x3E04]) = v5;
  *(v3 + 2368) = v8;
  LODWORD(STACK[0x1F5C]) = v6;
  STACK[0x94D0] = v9;
  STACK[0x7B48] = v2;
  STACK[0x36D8] = v1;
  STACK[0x3C58] = v4;
  STACK[0x12C0] = a1;
  v11 = STACK[0x7690];
  v12 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x4F58] = v12;
  STACK[0x8800] = (v12 + 16);
  STACK[0x7690] = v11 + ((v7 - 8889) ^ 0xA76DLL);
  STACK[0x7CF0] = 0;
  return (*(STACK[0xF18] + 8 * v7))();
}

uint64_t sub_100337308()
{
  v1 = STACK[0xF10] - 22060;
  *(STACK[0xA7D0] + 32 * STACK[0x9980] + 24) = v0 ^ 0xC704E5F7;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10033743C()
{
  v0 = STACK[0xF18];
  v1 = STACK[0x4F0];
  STACK[0x6728] = *(STACK[0xF18] + 8 * SLODWORD(STACK[0x4F0]));
  return (*(v0 + 8 * (LODWORD(STACK[0x998]) ^ 0x555B ^ v1)))();
}

uint64_t sub_100337474@<X0>(int a1@<W8>)
{
  v2 = *(*(STACK[0x650] + v1) + 8 * (SLODWORD(STACK[0x81B8]) ^ 0x4DC1E900));
  STACK[0x34F8] = v2;
  return (*(STACK[0xF18] + 8 * ((219 * (((a1 + 57) ^ ((*v2 & 2) == ((a1 + 17111) ^ 0x8B3B))) & 1)) ^ a1)))();
}

uint64_t sub_100337538(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  v8 = STACK[0xF10];
  v9 = STACK[0xF10] - 2333;
  LODWORD(STACK[0xEA0]) = STACK[0xF10] - 32509;
  v10 = v8;
  v11 = STACK[0x3708];
  STACK[0xEB0] = STACK[0x3708];
  v12 = STACK[0x6DC0];
  v13 = STACK[0x68F8];
  LODWORD(v8) = v9 ^ 0x9324DEEB ^ LODWORD(STACK[0x5BC4]);
  v14 = 1012831759 * ((~(&STACK[0x10000] + 3800) & 0x921D8BA4 | (&STACK[0x10000] + 3800) & 0x6DE27458) ^ 0x828E9D2E);
  LODWORD(STACK[0x10F00]) = 870968621 - v14;
  LODWORD(STACK[0x10F04]) = v10 - v14 + 29686014;
  STACK[0x10EE8] = v13;
  STACK[0x10EE0] = a8;
  LODWORD(STACK[0x10EF4]) = v8 + v14;
  STACK[0x10F08] = v12;
  STACK[0x10EF8] = v11;
  LODWORD(STACK[0x10EF0]) = 397797543 - v14;
  v15 = STACK[0xF18];
  v16 = *(STACK[0xF18] + 8 * (v10 + 16414));
  STACK[0xED0] = a4;
  STACK[0xEC0] = a7;
  v20 = v16(&STACK[0x10ED8]);
  v21 = STACK[0xEC0];
  v22 = STACK[0xED0];
  LODWORD(STACK[0x104C]) = STACK[0x10ED8];
  STACK[0x4B88] = *(v15 + 8 * SLODWORD(STACK[0xEA0]));
  return (*(v15 + 8 * (STACK[0xF10] - 29640)))(v20, 0xC51EBEC5F2A2DE03, 35361, v22, a5, a6, v21, a8);
}

uint64_t sub_1003376F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x7548] = a8;
  STACK[0x77B0] = (&STACK[0x6C98] ^ 0xE9EFFFBDBFFFD3FFLL) + 0x1610004240002C01 + ((&STACK[0x6C98] << ((v8 ^ 0xFDu) - 58)) & 0xD3DFFF7B7FFFA7F0);
  LODWORD(STACK[0x648C]) = 387058983;
  return (*(STACK[0xF18] + 8 * v8))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_1003377CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7)
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
  STACK[0xBF20] = 0;
  STACK[0xBF28] = v7;
  v19 = 16777619 * ((553300517 * v18 + 7) ^ (553300517 * v18)) % 7;
  v20 = 16777619 * ((553300517 * v18 + 6) ^ (553300517 * v18)) % 6;
  v21 = 16777619 * ((553300517 * v18 + 5) ^ (553300517 * v18)) % 5;
  v22 = *(&STACK[0xBF20] | v19);
  *(&STACK[0xBF20] | v19) = STACK[0xBF27];
  v23 = *(&STACK[0xBF20] | v20);
  *(&STACK[0xBF20] | v20) = STACK[0xBF26];
  v24 = *(&STACK[0xBF20] | v21);
  *(&STACK[0xBF20] | v21) = STACK[0xBF25];
  v25 = vdup_n_s32(553300517 * v18);
  v26 = 16777619 * ((553300517 * v18 + 3) ^ (553300517 * v18)) % 3;
  v27.i32[0] = v25.i32[0];
  v27.i32[1] = 553300517 * v18 + 1;
  LOBYTE(STACK[0xBF27]) = v22;
  v28 = veor_s8(vmul_s32(v27, v25), v25);
  LOBYTE(STACK[0xBF26]) = v23;
  LOBYTE(STACK[0xBF25]) = v24;
  v29 = STACK[0xBF20];
  LOBYTE(STACK[0xBF20]) = STACK[0xBF24];
  LOBYTE(STACK[0xBF24]) = v29;
  v30 = *(&STACK[0xBF20] | v26);
  *(&STACK[0xBF20] | v26) = STACK[0xBF23];
  LOBYTE(STACK[0xBF23]) = v30;
  v31 = STACK[0xBF21];
  LOBYTE(STACK[0xBF22]) = STACK[0xBF20];
  LOWORD(STACK[0xBF20]) = v31;
  STACK[0xBF20] = vmla_s32(v28, STACK[0xBF20], vdup_n_s32(0x1000193u));
  v32 = STACK[0xBF28];
  v33 = (553300517 * STACK[0xBF28]) ^ v18;
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
  v54 = *(&STACK[0xBF28] + v19);
  *(&STACK[0xBF28] + v19) = STACK[0xBF2F];
  LOBYTE(STACK[0xBF2F]) = v54;
  v55 = *(&STACK[0xBF28] + v20);
  *(&STACK[0xBF28] + v20) = STACK[0xBF2E];
  LOBYTE(STACK[0xBF2E]) = v55;
  v56 = *(&STACK[0xBF28] + v21);
  *(&STACK[0xBF28] + v21) = STACK[0xBF2D];
  LOBYTE(STACK[0xBF2D]) = v56;
  v57 = STACK[0xBF28];
  LOBYTE(STACK[0xBF28]) = STACK[0xBF2C];
  LOBYTE(STACK[0xBF2C]) = v57;
  v58 = *(&STACK[0xBF28] + v26);
  *(&STACK[0xBF28] + v26) = STACK[0xBF2B];
  LOBYTE(STACK[0xBF2B]) = v58;
  v59 = STACK[0xBF29];
  LOBYTE(STACK[0xBF2A]) = STACK[0xBF28];
  LOWORD(STACK[0xBF28]) = v59;
  STACK[0xBF28] = vmla_s32(v28, STACK[0xBF28], vdup_n_s32(0x1000193u));
  *a7 = STACK[0xBF28] ^ STACK[0xBF20];
  return (*(STACK[0xF18] + 8 * v8))();
}

uint64_t sub_100337C74()
{
  v1 = STACK[0xF18];
  STACK[0x5FF8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((11153 * (v0 == 345154884)) ^ (((10 * (v0 ^ 0xA0B)) ^ 0x93A1) + v0))))();
}

uint64_t sub_100337CD8()
{
  STACK[0x1C90] = v1;
  LODWORD(STACK[0x6C7C]) = -272862697;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x89C30089 ^ (401 * (v0 < 0xBFBA54B3)))))();
}

uint64_t sub_100337E90()
{
  v0 = STACK[0xF10] - 5293;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(STACK[0x8C40]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100337EC8()
{
  v0 = STACK[0xF10] - 34283;
  v1 = STACK[0xB7BC];
  LODWORD(STACK[0x9FB0]) = LODWORD(STACK[0xB7BC]) + 1123380582;
  v2 = STACK[0xB7A8] + (v1 + 8);
  v3 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v3 + 8 * (v0 ^ 0x1C20)))(v2);
}

uint64_t sub_100338144()
{
  v5 = v3 + 28;
  v6 = STACK[0xA830];
  v7 = 1112314453 * ((~(&STACK[0x10000] + 3800) & 0x5A002BCB | (&STACK[0x10000] + 3800) & 0xA5FFD430) ^ 0xB5560112);
  LOWORD(STACK[0x10ED8]) = -28075 * ((~(&STACK[0x10000] + 3800) & 0x2BCB | (&STACK[0x10000] + 3800) & 0xD430) ^ 0x112) + 3787;
  STACK[0x10EF8] = v6;
  LODWORD(STACK[0x10EF0]) = v7 + 1599993265 * v1 + 1244298177;
  LODWORD(STACK[0x10EDC]) = (v4 + 679151061) ^ v7;
  STACK[0x10EE8] = v2;
  STACK[0x10EE0] = v5;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * (v4 + 9318)))(&STACK[0x10ED8]);
  v10 = (((v0 ^ 0x10A73883) - 279394435) ^ ((v0 ^ 0x4C13FAAE) - 1276377774) ^ (((((v4 - 42358) | 0x420) - 1251934200) ^ v0) + 1251932868)) - 1252926698;
  v11 = ((v1 - 881060839) < 0xCB7C1405) ^ (v10 < 0xCB7C1405);
  v12 = v1 - 881060839 > v10;
  if (v11)
  {
    v12 = (v1 - 881060839) < 0xCB7C1405;
  }

  return (*(v8 + 8 * ((31 * !v12) ^ v4)))(v9);
}

uint64_t sub_10033831C()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 3013)))();
}

uint64_t sub_100338424()
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = STACK[0x6104];
  LODWORD(STACK[0x35EC]) = 1693393398;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100338884@<X0>(int a1@<W8>)
{
  v2 = (STACK[0xF10] + 749227011) & 0xD3572BDF;
  v3 = STACK[0xF10] + 6394;
  LODWORD(STACK[0x1C68]) = v1;
  return (*(STACK[0xF18] + 8 * (((v2 + 27226) * a1) ^ v3)))();
}

uint64_t sub_100338A48()
{
  v2 = STACK[0xF10];
  v3 = 101 * (STACK[0xF10] ^ 0x8B29);
  v4 = STACK[0xF10] + 9153;
  LODWORD(STACK[0x4954]) = v0;
  v5 = (v3 + (STACK[0xA990] ^ 0xEFF20EAF) - 1872944166) ^ ((STACK[0xA990] ^ 0x2762CB8) + 2111375589) ^ ((STACK[0xA990] ^ 0xA725773C) - 662023327);
  LODWORD(STACK[0x9B30]) = v5 + 611092940;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v2 ^ 0x41A3)))(v1 ^ 0xC704E5F7);
  STACK[0x39E0] = v7;
  v8 = STACK[0xA98C];
  if (!v7)
  {
    v8 = 371891397;
  }

  LODWORD(STACK[0xA99C]) = v8;
  v9 = (((v1 ^ 0x38C1A9C9) - 370182959) ^ ((v1 ^ 0x33AAF84D) - 494656171) ^ ((v1 ^ 0xCC6FB473) + 490826091)) + v5 + 1294789668;
  v10 = (((LODWORD(STACK[0x3464]) ^ 0xA04EA145) + 1605459643) ^ ((LODWORD(STACK[0x3464]) ^ 0xA76286F4) + 1486715148) ^ ((LODWORD(STACK[0x3464]) ^ 0xEEF9E0A0) + 285613920)) - 2110038628;
  v11 = v9 < 0x9865968B;
  v12 = v9 > v10;
  if (v11 != v10 < 0x9865968B)
  {
    v12 = v11;
  }

  return (*(v6 + 8 * ((511 * v12) ^ v4)))();
}

uint64_t sub_100338C2C()
{
  v1 = v0 + 1779;
  v2 = (v0 - 26641) | 0x1884u;
  v3 = STACK[0x7690];
  v4 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x14C0] = v4;
  STACK[0x7690] = (v2 ^ 0x39EE) + v3;
  STACK[0x10ED8] = v4;
  LODWORD(STACK[0x10EE4]) = v1 - 193924789 * ((((2 * (&STACK[0x10000] + 3800)) | 0x7483802C) - (&STACK[0x10000] + 3800) + 1170096106) ^ 0xCFAF270) + 7812;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 + 14474)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * (((LODWORD(STACK[0x10EE0]) == -371865839) * (6 * (v1 ^ 0x93C6) - 2899)) ^ v1)))(v6);
}

uint64_t sub_100338D10()
{
  v1 = STACK[0xF10] - 10375;
  v2 = v0 == LODWORD(STACK[0xEC0]);
  LOBYTE(STACK[0x165F]) = v2;
  return (*(STACK[0xF18] + 8 * ((60931 * v2) ^ v1)))();
}

uint64_t sub_100338D5C()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 31585;
  v2 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 28836) ^ v1)))();
}

uint64_t sub_100338DC4()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1387)))(3204694014, 1090286692, 4294923066, 35593, 4294941560, 1194047912, 35641, 1090303727);
}

uint64_t sub_100338FB4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X6>, int a7@<W8>)
{
  v23 = v7 + v13;
  v24 = v7 - 1;
  v25 = __ROR8__((a6 + v24) & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = ((v25 + v10) | 0xBAD895D1D2EE440CLL) - ((v25 + v10) | a7 ^ 0x8418u ^ v11) + v15;
  v27 = v26 ^ v17;
  v28 = v26 ^ v19;
  v29 = __ROR8__(v27, 8);
  v30 = ((v20 | (2 * (v29 + v28))) - (v29 + v28) + v18) ^ v14;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v12;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v21;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = ((v16 | (2 * (v36 + v35))) - (v36 + v35) - 0x60085BEF2860EC2CLL) ^ 0xC9500E90FB9C95F1;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v22;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__((v23 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v42 = (__ROR8__(v39, 8) + v40) ^ a1;
  v43 = (a3 - v41) & 0x1939E534EAB5C204 | (v41 - 0x296E95066F186A7FLL) & a4;
  v44 = v43 ^ 0x1E1BFCD71692F676;
  v43 ^= 0xAA90AB1B91AE5A78;
  v45 = (__ROR8__(v44, 8) + v43) ^ 0x14BA074A2F986FE5;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = __ROR8__(v45, 8);
  v48 = __ROR8__(v42, 8) + (v42 ^ __ROR8__(v40, 61));
  v49 = (((v47 + v46) | 0x31E9BDE7666BA597) - ((v47 + v46) | v9) + v9) ^ 0x1DDE35A49FCFCB0FLL;
  v50 = v49 ^ __ROR8__(v46, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0xBD7D2DE9C10AA16ALL;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  v54 = __ROR8__((((2 * (v53 + v52)) | 0xCA610B0491486356) - (v53 + v52) - 0x6530858248A431ABLL) ^ 0xE7800595F7E7F1C2, 8);
  v55 = (((2 * (v53 + v52)) | 0xCA610B0491486356) - (v53 + v52) - 0x6530858248A431ABLL) ^ 0xE7800595F7E7F1C2 ^ __ROR8__(v52, 61);
  v56 = (((v54 + v55) | 0xD50CE5605E7B8E1) - ((v54 + v55) | v8) + v8) ^ 0xA7CD14ECE7036C9DLL;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0x8FB22143FEDB6CB3;
  *(v23 + 9) = (((__ROR8__(v58, 8) + (v58 ^ __ROR8__(v57, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v23 + 9) & 7))) ^ ((v48 ^ a2) >> (8 * ((a6 + v24) & 7))) ^ *(a6 + v24);
  return (*(STACK[0xF18] + 8 * (((v24 != 0) * a5) ^ (a7 + 2602))))();
}

uint64_t sub_1003392DC()
{
  v0 = STACK[0xF10] - 24173;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))(STACK[0x7DF8]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100339418()
{
  v1 = STACK[0x24D0];
  v2 = 0x7A52EBD2EF3B4243 * STACK[0x2950] + 0x68F7A67034086B59;
  v3 = 139493411 * ((-2 - ((~&STACK[0x10ED8] | 0x4A99227DFF4F3E3) + (&STACK[0x10ED8] | 0xFB566DD8200B0C1CLL))) ^ 0x6ED22B8BD3D912A6);
  STACK[0x10ED8] = STACK[0x72F0];
  LODWORD(STACK[0x10EE4]) = v3 + v0 - 8930;
  STACK[0x10EF0] = v1;
  STACK[0x10EE8] = v2 ^ v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 32849)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (((LODWORD(STACK[0x10EE0]) == -371865839) * (((v0 - 19128) | 0x8923) - 371)) ^ v0)))(v5);
}

uint64_t sub_10033952C@<X0>(int a1@<W8>)
{
  v3 = STACK[0xF18];
  v4 = *(STACK[0xF18] + 8 * a1);
  LODWORD(STACK[0x10ED8]) = (v1 - 22550) ^ (906386353 * ((((&STACK[0x10000] + 3800) ^ 0xC64EEFAA | 0x44DE6395) - (((&STACK[0x10000] + 3800) ^ 0xC64EEFAA) & 0x44DE6392)) ^ 0xB3914119));
  LOWORD(STACK[0x10EE0]) = 23473 * ((((&STACK[0x10000] + 3800) ^ 0xEFAA | 0x6395) - (((&STACK[0x10000] + 3800) ^ 0xEFAA) & 0x6392)) ^ 0x4119) + 18062;
  STACK[0x10EE8] = &STACK[0x114E];
  v5 = (*(v3 + 8 * (v1 + 16246)))(&STACK[0x10ED8]);
  *v2 = (LOBYTE(STACK[0x114F]) | (LOBYTE(STACK[0x114E]) << 8)) - 2 * ((LOBYTE(STACK[0x114F]) | (LOBYTE(STACK[0x114E]) << 8)) & 0x7A4D ^ STACK[0x114F] & 0xD) + 31296;
  return v4(v5);
}

uint64_t sub_100339604()
{
  v1 = *(STACK[0x5BB8] + 648) - 1699178543;
  v2 = v1 < 0x9D45BA5E;
  v3 = v1 > LODWORD(STACK[0x3A6C]) - 1656374690;
  if (v2 != LODWORD(STACK[0x3A6C]) > (((v0 ^ 0x9B13) + 1656408192) ^ v0 ^ 0x1632u))
  {
    v3 = v2;
  }

  return (*(STACK[0xF18] + 8 * ((56 * !v3) ^ (v0 - 14519))))();
}

uint64_t sub_1003396A0()
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
  STACK[0xC2A0] = 0;
  STACK[0xC2A8] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC2A0] | v10);
  *(&STACK[0xC2A0] | v10) = 0;
  LOBYTE(STACK[0xC2A7]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC2A0] | v12);
  *(&STACK[0xC2A0] | v12) = STACK[0xC2A6];
  LOBYTE(STACK[0xC2A6]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC2A0] | v14);
  *(&STACK[0xC2A0] | v14) = STACK[0xC2A5];
  LOBYTE(STACK[0xC2A5]) = v15;
  v16 = STACK[0xC2A0];
  LOBYTE(STACK[0xC2A0]) = STACK[0xC2A4];
  LOBYTE(STACK[0xC2A4]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC2A0] | v17);
  *(&STACK[0xC2A0] | v17) = STACK[0xC2A3];
  LOBYTE(STACK[0xC2A3]) = v18;
  v19 = STACK[0xC2A1];
  LOBYTE(STACK[0xC2A2]) = STACK[0xC2A0];
  LOWORD(STACK[0xC2A0]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC2A0] = vmla_s32(v22, STACK[0xC2A0], vdup_n_s32(0x1000193u));
  STACK[0xC2A8] ^= STACK[0xC2A0];
  STACK[0xC2A8] = vmul_s32(vsub_s32(STACK[0xC2A8], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC2AA];
  LOWORD(STACK[0xC2A9]) = STACK[0xC2A8];
  LOBYTE(STACK[0xC2A8]) = v23;
  v24 = (&STACK[0xC2A8] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC2AB];
  LOBYTE(STACK[0xC2AB]) = v19;
  LOBYTE(v24) = STACK[0xC2A8];
  LOBYTE(STACK[0xC2A8]) = STACK[0xC2AC];
  LOBYTE(STACK[0xC2AC]) = v24;
  v25 = (&STACK[0xC2A8] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC2AD];
  LOBYTE(STACK[0xC2AD]) = v24;
  v26 = (&STACK[0xC2A8] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC2AE];
  LOBYTE(STACK[0xC2AE]) = v25;
  v27 = (&STACK[0xC2A8] | v10);
  v28 = *v27;
  *v27 = STACK[0xC2AF];
  LOBYTE(STACK[0xC2AF]) = v28;
  v29 = STACK[0xC2A8];
  v30 = (553300517 * STACK[0xC2A8]) ^ v9;
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
  *STACK[0x940] = STACK[0xC2A8];
  return (*(STACK[0xF18] + 8 * (v1 + 5154)))(v47, v48);
}

uint64_t sub_100339B70()
{
  v1 = STACK[0x3038];
  STACK[0x81A8] = STACK[0x8C68];
  STACK[0x97E8] = v1 - ((((v0 - 1407803973) & 0x53E9CB7F) + 0x130272185FDA9951) & (2 * v1)) + 0x981390C2FED9246;
  LODWORD(STACK[0x6974]) = 103711524;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100339D88()
{
  v1 = (STACK[0xF10] - 804992864) & 0x2FFAAEA5;
  v2 = STACK[0xF10] + 5109;
  LODWORD(STACK[0x9F68]) = v0;
  v3 = STACK[0x6134];
  LODWORD(STACK[0x6134]) += 4;
  return (*(STACK[0xF18] + 8 * ((((v3 - 1722456496) + 4 <= STACK[0xB7F0]) * (v1 - 470)) ^ v2)))();
}

uint64_t sub_100339E3C()
{
  v1 = STACK[0x3868];
  v2 = STACK[0xF18];
  STACK[0x58B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x17ED ^ (31163 * (v0 - 1360036284 >= (v0 ^ 0x3CECA8ECu))))))(v1);
}

uint64_t sub_100339F78()
{
  v3 = LODWORD(STACK[0x5AF0]);
  LODWORD(v3) = (*(STACK[0x2E18] + (v3 ^ 0xE9D5C711)) ^ 0x85400015) + (((v3 ^ 0x8B7676C2) + 1955170622) ^ ((v3 ^ 0x8C7A535E) + 1938140322) ^ (((v2 - 3227) | 0x8A33) + (v3 ^ 0xEED9E28D) + 287674936)) - ((2 * *(STACK[0x2E18] + (v3 ^ 0xE9D5C711))) & 0x1D4) - 662691505;
  LODWORD(STACK[0x5AF0]) = v3 ^ ((v3 ^ 0x253C9FEE) - 1456915901) ^ ((v3 ^ 0x93847BB2) + 529653279) ^ ((v3 ^ 0x33ED41F0) - 1074207651) ^ ((v3 ^ 0xF6BFFFFF) + 2057984596) ^ 0x9A3F9D42;
  LODWORD(v3) = v0[465];
  v0[469] = -371865839;
  v0[468] = v1;
  LODWORD(STACK[0x57E4]) = v3;
  return (*(STACK[0xF18] + 8 * (v2 ^ 0x1423)))();
}

uint64_t sub_10033A0F4()
{
  v2 = (((*(v0 + 16) ^ 0x718796C) - 119044460) ^ (v1 - 1610079782 + (*(v0 + 16) ^ 0x5FF7B206)) ^ (((v1 - 1321607077) ^ *(v0 + 16)) + 1321595781)) + 1626311980;
  v3 = (((LODWORD(STACK[0x7FF4]) ^ 0x4130E1BD) - 1093722557) ^ ((LODWORD(STACK[0x7FF4]) ^ 0x20CBC102) - 550224130) ^ ((LODWORD(STACK[0x7FF4]) ^ 0x882EE7AE) + 2010191954)) + 1626311968;
  v4 = v2 < 0x7719C60F;
  v5 = v2 > v3;
  if (v4 != v3 < 0x7719C60F)
  {
    v5 = v4;
  }

  v6 = STACK[0xB504];
  if (v5)
  {
    v6 = 371891407;
  }

  return (*(STACK[0xF18] + 8 * ((11 * (v6 == -371865839)) | v1)))();
}

uint64_t sub_10033A248()
{
  v1 = STACK[0xF10] - 20347;
  v2 = *(v0 + 8);
  LODWORD(STACK[0x10ED8]) = (STACK[0xF10] + 703890706) ^ (634647737 * (((&STACK[0x10ED8] | 0x54482BDB) + (~&STACK[0x10ED8] | 0xABB7D424)) ^ 0x39DE0426));
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 ^ 0xF102)))(&STACK[0x10ED8]);
  if (*(v0 + 144) == 1505532274)
  {
    v4 = 212;
  }

  else
  {
    v4 = 214;
  }

  LODWORD(STACK[0x57CC]) = v4;
  STACK[0x10EE0] = *(v0 + 8);
  LODWORD(STACK[0x10ED8]) = v1 - 193924789 * ((~&STACK[0x10ED8] & 0xE357BA09 | &STACK[0x10ED8] & 0x1CA845F0) ^ 0x55EC886F) + 60369839;
  (*(v3 + 8 * (v1 + 36681)))(&STACK[0x10ED8]);
  STACK[0x10EE0] = *(v0 + 8);
  LODWORD(STACK[0x10ED8]) = (v1 - 1762640945) ^ (906386353 * ((2 * (&STACK[0x10ED8] & 0x629B98C8) - &STACK[0x10ED8] + 493119281) ^ 0x2C65AA15));
  v5 = (*(v3 + 8 * (v1 ^ 0xF179)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (*(v0 + 208) & 1 | (4 * (*(v0 + 208) & 1)) | v1)))(v5);
}

uint64_t sub_10033A440@<X0>(int a1@<W8>)
{
  v2 = STACK[0xF10] - 34758;
  v3 = STACK[0xF10] + 2140;
  LODWORD(STACK[0x76F0]) = v1;
  return (*(STACK[0xF18] + 8 * (((v2 ^ 0xC21) * a1) ^ v3)))();
}

uint64_t sub_10033A520()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] + 2760;
  v3 = STACK[0xA1E4];
  LODWORD(STACK[0xDA0]) = STACK[0xA1E4];
  LODWORD(STACK[0xD90]) = v3 - 289647774;
  v4 = STACK[0xB720];
  STACK[0xD70] = &STACK[0xF28] ^ 0x2DB0BCD1C259AD76;
  STACK[0xD80] = v4;
  *(v4 + 4) = v0;
  STACK[0xD60] = &STACK[0xF28] ^ 0xA1208799EC5F9998;
  v5 = *(STACK[0xF18] + 8 * v2);
  STACK[0xD50] = STACK[0xB718];
  STACK[0xD40] = STACK[0xB708];
  v6 = 297845113 * (((&STACK[0x10ED8] | 0xF19DB06FB6888BB3) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0xE624F9049777448)) ^ 0x46C611AAC1BB972DLL);
  STACK[0xDF0] = -1574349678 - v6;
  LODWORD(STACK[0xE20]) = v1 - 203646209;
  LODWORD(STACK[0xDE0]) = v6 ^ (v1 - 203646209) ^ 0x132A;
  LODWORD(STACK[0xDD0]) = (v1 - 1013707182) ^ v6;
  STACK[0xE10] = v6;
  LODWORD(STACK[0xDC0]) = (v1 - 203646261) ^ v6;
  LODWORD(STACK[0xDB0]) = v1 ^ 0x40E7;
  LODWORD(STACK[0xD30]) = v1 - 13987;
  LODWORD(STACK[0xD20]) = v1 - 22414;
  STACK[0xED0] = (v1 - 31547) | 0x541u;
  LODWORD(STACK[0xE70]) = v1 + 5971;
  LODWORD(STACK[0xD00]) = v1 - 30523;
  return v5();
}

uint64_t sub_10033A700@<X0>(unsigned int a1@<W8>)
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
  STACK[0xBE80] = 0;
  STACK[0xBE88] = v1;
  v12 = 16777619 * ((553300517 * v11 + 7) ^ (553300517 * v11)) % 7;
  v13 = 16777619 * ((553300517 * v11 + 6) ^ (553300517 * v11)) % 6;
  v14 = 16777619 * ((553300517 * v11 + 5) ^ (553300517 * v11)) % 5;
  v15 = *(&STACK[0xBE80] | v12);
  *(&STACK[0xBE80] | v12) = STACK[0xBE87];
  v16 = *(&STACK[0xBE80] | v13);
  *(&STACK[0xBE80] | v13) = STACK[0xBE86];
  v17 = *(&STACK[0xBE80] | v14);
  *(&STACK[0xBE80] | v14) = STACK[0xBE85];
  v18 = vdup_n_s32(553300517 * v11);
  v19 = 16777619 * ((553300517 * v11 + 3) ^ (553300517 * v11)) % 3;
  v20.i32[0] = v18.i32[0];
  v20.i32[1] = 553300517 * v11 + 1;
  LOBYTE(STACK[0xBE87]) = v15;
  v21 = veor_s8(vmul_s32(v20, v18), v18);
  LOBYTE(STACK[0xBE86]) = v16;
  LOBYTE(STACK[0xBE85]) = v17;
  v22 = STACK[0xBE80];
  LOBYTE(STACK[0xBE80]) = STACK[0xBE84];
  LOBYTE(STACK[0xBE84]) = v22;
  v23 = *(&STACK[0xBE80] | v19);
  *(&STACK[0xBE80] | v19) = STACK[0xBE83];
  LOBYTE(STACK[0xBE83]) = v23;
  v24 = STACK[0xBE81];
  LOBYTE(STACK[0xBE82]) = STACK[0xBE80];
  LOWORD(STACK[0xBE80]) = v24;
  STACK[0xBE80] = vmla_s32(v21, STACK[0xBE80], vdup_n_s32(0x1000193u));
  v25 = STACK[0xBE88];
  v26 = (553300517 * STACK[0xBE88]) ^ v11;
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
  v47 = *(&STACK[0xBE88] + v12);
  *(&STACK[0xBE88] + v12) = STACK[0xBE8F];
  LOBYTE(STACK[0xBE8F]) = v47;
  v48 = *(&STACK[0xBE88] + v13);
  *(&STACK[0xBE88] + v13) = STACK[0xBE8E];
  LOBYTE(STACK[0xBE8E]) = v48;
  v49 = *(&STACK[0xBE88] + v14);
  *(&STACK[0xBE88] + v14) = STACK[0xBE8D];
  LOBYTE(STACK[0xBE8D]) = v49;
  v50 = STACK[0xBE88];
  LOBYTE(STACK[0xBE88]) = STACK[0xBE8C];
  LOBYTE(STACK[0xBE8C]) = v50;
  v51 = *(&STACK[0xBE88] + v19);
  *(&STACK[0xBE88] + v19) = STACK[0xBE8B];
  LOBYTE(STACK[0xBE8B]) = v51;
  v52 = STACK[0xBE89];
  LOBYTE(STACK[0xBE8A]) = STACK[0xBE88];
  LOWORD(STACK[0xBE88]) = v52;
  STACK[0xBE88] = vmla_s32(v21, STACK[0xBE88], vdup_n_s32(0x1000193u));
  *STACK[0x940] = STACK[0xBE88] ^ STACK[0xBE80];
  return (*(STACK[0xF18] + 8 * ((a1 + ((a1 - 1658602774) & 0xBA9F5FE) - 1462943967) ^ (47815 * (a1 < 0xD468B6EE)))))();
}

uint64_t sub_10033ABD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = ((((v7 + 606633581) & 0xDBD78FFB) + (LODWORD(STACK[0x4ADC]) ^ 0x7C310D98) - 2083625171) ^ ((LODWORD(STACK[0x4ADC]) ^ 0x1CEA787D) - 485128317) ^ (((((v7 - 29905) | 0x3498) - 1995540901) ^ LODWORD(STACK[0x4ADC])) + 1995525388)) + 1920067914;
  v9 = ((v6 + 161597007) < 0x889C2239) ^ (v8 < 0x889C2239);
  v10 = v6 + 161597007 > v8;
  if (v9)
  {
    v10 = (v6 + 161597007) < 0x889C2239;
  }

  return (*(STACK[0xF18] + 8 * ((50 * v10) ^ v7)))(a1, a2, a3, a4, a5, a6, &STACK[0xA237]);
}

uint64_t sub_10033ACEC()
{
  v4 = v2 + 640 * v3;
  STACK[0x8CD8] = v4;
  *(v4 + 616) = 356632019;
  v5 = *(v0 + 16);
  LODWORD(STACK[0x10EE0]) = v1 + 155453101 * ((~(&STACK[0x10000] + 3800) & 0xF5EA10AC | (&STACK[0x10000] + 3800) & 0xA15EF50) ^ 0x13CC0B63) + 296738607;
  STACK[0x10ED8] = v5;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v1 + 1775)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * (((((v4 == 0) ^ v1) & 1) * ((v1 + 86238228) & 0xFADB7B56 ^ 0x236F)) ^ v1)))(v7);
}

uint64_t sub_10033ADCC()
{
  v5 = STACK[0x7980];
  v5[7] = v3;
  v5[8] = v4;
  v5[9] = v1;
  return (*(STACK[0xF18] + 8 * ((508 * (v0 - 1722457144 + ((v2 + 863134860) ^ 0x3372BDF7u) + ((v2 + 863134860) & 0xCC8DCBBB ^ 0x8B3FuLL) <= STACK[0xB7F0])) ^ v2)))();
}

uint64_t sub_10033AF20@<X0>(int a1@<W8>)
{
  v1 = a1 + 371866994;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (((v1 + 25334) ^ 0x7411) + v1)))();
}

uint64_t sub_10033B14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0xF10];
  v5 = STACK[0x3AC4];
  LODWORD(STACK[0x3AC4]) += 4;
  LODWORD(STACK[0xA56C]) = v5 + LODWORD(STACK[0xB4B4]) - 658232840;
  LODWORD(STACK[0xA570]) = *(STACK[0x6850] + 64);
  v6 = *(STACK[0x2C38] + 32) + 582254375;
  v7 = ((v6 ^ 0x8EAD7F44) + 1407647640) ^ v6 ^ ((v6 ^ 0x61C54C4D) - 1131492193) ^ ((v6 ^ 0x3233F7CA) - 277317862) ^ ((v6 ^ 0xFFEFBBEF) + 581188413);
  LODWORD(STACK[0xA57C]) = v7 ^ 0x6F7C89C1;
  return (*(STACK[0xF18] + 8 * (v4 - 28300)))(a1, a2, a3, a4, ((0xA % (v7 ^ 0x22B47F2C)) ^ 0xFFFF3F7F) + 2 * (0xA % (v7 ^ 0x22B47F2C)) + 1077891788);
}

uint64_t sub_10033B27C()
{
  v0 = STACK[0xF10];
  *(STACK[0xB558] + 12) = STACK[0x9894];
  return (*(STACK[0xF18] + 8 * (v0 - 28266)))();
}

uint64_t sub_10033B448(uint64_t a1, uint64_t a2)
{
  v6 = v2 < v4;
  v5 = (v2 + 814043217) & 0xF ^ (2 * (((((v3 - 319129327) & 0x1305FBFF) - 35639) & (2 * (v2 + 814043217)) | 2) & (v2 + 814043217)));
  v7 = (((v3 + 23970) ^ 0xA05FB607 ^ v5) + 396208827) ^ ((v5 ^ 0xB838DBD2) + 268088484) ^ ((v5 ^ 0x18671E1B) - 1348112021);
  v8 = -1210676468 - v7;
  LODWORD(STACK[0x2D00]) = v8;
  return (*(STACK[0xF18] + 8 * ((56335 * ((v2 | (v6 << 32)) + v8 + ((v7 > 0xB7C26F84) << 32) - 815360975 < 0xFFFFFFF6)) ^ v3)))(a1, a2, 371891407);
}

uint64_t sub_10033B724()
{
  v1 = STACK[0x315C];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393363;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10033B8DC()
{
  *STACK[0x5570] = STACK[0x3150];
  *STACK[0x28A8] = -371865851;
  return (*(STACK[0xF18] + 8 * (v0 - 21709)))();
}

uint64_t sub_10033B930@<X0>(unint64_t a1@<X8>)
{
  v4 = STACK[0x3628];
  STACK[0x2310] = a1;
  LODWORD(STACK[0x5D04]) = v3;
  STACK[0x4718] = v4 + v1;
  return (*(STACK[0xF18] + 8 * ((((LODWORD(STACK[0x318C]) != (v2 ^ 0x66D0)) & ~*(STACK[0x1258] + 124)) * (((v2 - 17590) | 0x1044) ^ 0x3268)) ^ v2)))();
}

uint64_t sub_10033B998()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 25318) ^ 0x7421) + v0)))();
}

uint64_t sub_10033B9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  STACK[0x43C0] = 0;
  LODWORD(STACK[0x634C]) = -371865839;
  return (*(STACK[0xF18] + 8 * ((61368 * (v3 == ((11881 * (a3 ^ 0x59E8) - 371902514) ^ ((a3 - 21978) | 8)))) ^ a3)))(a1, a2, 371891535);
}

uint64_t sub_10033BAAC()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xB4F3)))(((v0 ^ 0x75D9u) - 371868833) ^ LODWORD(STACK[0x44CC]));
  STACK[0x4E10] = v2;
  STACK[0x49F8] = v2;
  return (*(v1 + 8 * (((v2 != 0) * (((v0 - 31848) | 0xDC) - 728)) ^ v0)))();
}

uint64_t sub_10033BCC4@<X0>(unint64_t *a1@<X8>)
{
  LODWORD(STACK[0xA7EC]) = v2;
  v3 = *a1;
  STACK[0xA7F0] = v3;
  return (*(STACK[0xF18] + 8 * (((v3 == 0) * ((v1 - 1198225620) & 0x476B528E ^ 0x408B)) ^ v1)))();
}

uint64_t sub_10033BE4C()
{
  v1 = STACK[0xF10];
  v2 = (STACK[0xF10] + 14567) | 0x4D;
  v3 = STACK[0xF10] - 4943;
  v4 = 353670337 * ((((&STACK[0x10000] + 3800) | 0x668539D7) - ((&STACK[0x10000] + 3800) | 0x997AC628) - 1720007128) ^ 0xD2A4C1EA);
  LODWORD(STACK[0x10EE0]) = (STACK[0xF10] - 1138106178) ^ v4;
  LODWORD(STACK[0x10ED8]) = v4 + 1355248435 + (((v0 ^ 0x6AC1BE9A) - 1141939324) ^ ((v0 ^ 0xFA36921F) + 723013383) ^ ((v2 ^ 0x86DDD003) + (v0 ^ 0x57F3C972)));
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 ^ 0x40DA)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((30 * (LOBYTE(STACK[0x10EDC]) == 11)) ^ v3)))(v6);
}

uint64_t sub_10033BF78()
{
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x3488];
  STACK[0x5D28] = &STACK[0x529C];
  LODWORD(STACK[0x4704]) = 1735389988;
  return (*(STACK[0xF18] + 8 * ((v0 + 1248592776 + 11881 * (v0 ^ 0xB5938570)) ^ (352 * (v0 != -941732733)))))();
}

uint64_t sub_10033C05C()
{
  v1 = STACK[0xF10] - 512;
  v2 = STACK[0xF10] - 7292;
  *(STACK[0x7980] + 128) = v0;
  v3 = STACK[0x6134];
  LODWORD(STACK[0x6134]) += 4;
  v4 = v3 - 218482705 + (((v0 ^ 0x6F7467D5) - 1869899733) ^ ((v0 ^ 0xAA6495FC) + 1436248580) ^ ((v0 ^ v1 ^ 0x2CC5BC03) - 751121720));
  v5 = v4 < 0x6FCF0A8E;
  v6 = v4 > LODWORD(STACK[0xB7EC]) + 1875839630;
  if (LODWORD(STACK[0xB7EC]) > 0x9030F571 != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((390 * v6) ^ v2)))();
}

uint64_t sub_10033C158()
{
  v3 = (((v1 >> ((v0 - 62) & 0x3F ^ 0x20)) ^ 0xDD04DF74) + 1725462200) ^ (((v1 >> ((v0 - 62) & 0x3F ^ 0x20)) ^ 0xE05241D5) + 1536092183) ^ (((v1 >> ((v0 - 62) & 0x3F ^ 0x20)) ^ 0x3D569EBC) - 2037762176);
  v4 = (552222108 - v3) ^ 0x7999909;
  v5 = ((552222108 - v3) ^ 0x12F9494B) & (2 * ((552222108 - v3) & 0x9AF26C63)) ^ (552222108 - v3) & 0x9AF26C63;
  v6 = (((2 * v4) & 0x8002204A) - (((2 * v4) ^ 0x3AD7EAD4) & v4 & 0xA292224A) + 1160004756) & 0xA292224A | ((((2 * v4) ^ 0x3AD7EAD4) & v4 & 0x54494894) - ((2 * v4) & 0x14494000) + 680694056) & 0x54494894 | ((((2 * v4) ^ 0x3AD7EAD4) & v4 & 0x9249520) - ((2 * v4) & 0x9209520) + 38349376) & 0x9249520;
  v7 = v6 ^ 0x2A;
  v8 = v5 ^ ((552222108 - v3) >> 31 << 14) ^ (v6 ^ 0x1843E000) & (4 * v5) ^ ((((v6 ^ 0x1843E000) & (4 * v5)) >> 17) & 0x4000 | (((((v6 ^ 0x1843E000) & (4 * v5)) >> 8) & 1) << 10));
  v9 = (v8 & 0x80000000) % 3 * ((v8 & 0x80000000) % 3);
  v10 = (v8 & 0x100) - 3 * ((1431655766 * (v8 & 0x100)) >> 32);
  v11 = (((v9 - 3 * ((1431655766 * v9) >> 32)) << 14) | ((v10 * v10 - 3 * ((1431655766 * (v10 * v10)) >> 32)) << 10)) ^ v8;
  LOBYTE(v11) = (((4 * v7) ^ 0xA8) & v7 ^ (4 * v7) & 0x68 ^ 0x22) & (16 * v11) ^ v11 ^ 0x6A;
  v12 = (v2 ^ 0xC704E5F7) << (((-100 - v3) ^ (2 * v11) ^ 0x42) & 0x37 ^ 0x35) << (((-100 - v3) ^ (2 * v11) ^ 0x42) & 0xC8 ^ 0xC0);
  v13 = (((v12 & 0xCE610BBD) >> ((-1 - v3) & 0xEF)) + ((v12 & 0x319EF442) >> ((-1 - v3) & 0xEF))) >> ((-1 - v3) & 0x10);
  v14 = LODWORD(STACK[0xB418]) + ((v0 + 1094452864) & 0xBEC3FCDF) + ((v13 - ((2 * v13) & 0xD3AB8E22) - 371865839) ^ 0xE9D5C711);
  v15 = (((LODWORD(STACK[0x4ADC]) ^ 0xC7E35819) + 941402087) ^ ((LODWORD(STACK[0x4ADC]) ^ 0xB6ED1528) + 1225976536) ^ ((LODWORD(STACK[0x4ADC]) ^ 0x98DB8A20) + 1730442720)) - 1068619115;
  v16 = v14 - 1412073119 > 0x29879C7B;
  v17 = v14 - 2108826395 > v15;
  if (v15 < 0xD6786384 != v16)
  {
    v17 = v16;
  }

  v18 = STACK[0xB420];
  if (v17)
  {
    v18 = 371891407;
  }

  return (*(STACK[0xF18] + 8 * ((17229 * (v18 == -371865839)) ^ v0)))();
}

uint64_t sub_10033C724()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 30591)))(v2);
}

uint64_t sub_10033C7AC()
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393391;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10033C7E0(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x1CE8];
  STACK[0x1B18] = 0;
  return (*(STACK[0xF18] + 8 * (((v3 != 0) * ((v2 ^ 0x978D) + 28293 + (v2 ^ 0x978D) - 3490 - 39413)) ^ v2 ^ 0x978D)))(a1, a2, 371891400);
}

uint64_t sub_10033C8F0@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 - 21513 + (a1 ^ 0x6304))))();
}

uint64_t sub_10033C978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  LODWORD(STACK[0x7EAC]) = -371865839;
  STACK[0x96F8] = 0;
  LODWORD(STACK[0x4614]) = -371865839;
  STACK[0x2688] = a8;
  STACK[0x1488] = &STACK[0x8A78];
  STACK[0x5D28] = &STACK[0x6808];
  LODWORD(STACK[0x4704]) = -2014460575;
  return (*(STACK[0xF18] + 8 * (v8 - 13813)))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10033CC74()
{
  v1 = v0 - 29359;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10033CD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19)
{
  a17 = v19;
  a18 = (v21 + 705684536) ^ a11;
  a19 = a13;
  (*(v20 + 8 * (v21 ^ 0x5179)))(&a17);
  return (*(v20 + 8 * (v21 ^ (((a15 - 769645512) < 0xFFFFFFC0) | (4 * ((a15 - 769645512) < 0xFFFFFFC0))))))(((107 * (((v21 - 17869) | 0x2242) ^ 0x766B)) ^ 0xFFFF7F7C) + a15, v22, v23, v24, v25, v26, v27, v28, a9);
}

uint64_t sub_10033CE64()
{
  STACK[0x5C50] = (((v1 ^ 0xCD16AA50D256554BLL) + 0x32E955AF2DA9AAB5) ^ ((v1 ^ 0xE74414397AFD461CLL) + 0x18BBEBC68502B9E4) ^ ((v1 ^ (v0 + 29678) ^ 0x2A52BE69417E5F7DLL) - 0x2A52BE69417ED446)) + 0x3AE1413AF7325DD3;
  LODWORD(STACK[0x1374]) = -1471634110;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10033CF28()
{
  v0 = (STACK[0xF10] + 1288402115) & 0xB33452DD;
  v1 = STACK[0xF10] - 31138;
  v2 = *(*(&off_1010A0B50 + (STACK[0xF10] - 35474)) - 1107403119);
  v3 = *(v2 + 4);
  LODWORD(STACK[0xC3E6]) = *v2;
  LODWORD(STACK[0xC3EA]) = v3;
  LOWORD(STACK[0xC3EE]) = *(v2 + 8);
  return (*(STACK[0xF18] + 8 * ((v0 ^ 0x547C) + v1)))();
}

uint64_t sub_10033CFB4()
{
  v2 = (STACK[0xF10] + 1944908578) & 0x8C1295B2;
  v3 = STACK[0xF10] - 29678;
  v4 = STACK[0xF10] + 10314;
  LODWORD(STACK[0x6014]) = v0;
  STACK[0x7630] = STACK[0x7698] + 5;
  v5 = (((v1 ^ 0x6E1C9D7F) - 1087225753) ^ ((v1 ^ 0xC7DD1356) + 385076816) ^ ((v1 ^ v3 ^ 0x6EC57C93) - 1075071288)) - 1541082895;
  v6 = (((LODWORD(STACK[0x8398]) ^ (v2 + 2027803496)) - 2027808632) ^ ((LODWORD(STACK[0x8398]) ^ 0x359D9D84) - 899521924) ^ ((LODWORD(STACK[0x8398]) ^ 0xA495BDED) + 1533690387)) - 1541083032;
  v7 = (v5 < 0xBA4F2957) ^ (v6 < 0xBA4F2957);
  v8 = v5 < v6;
  if (v7)
  {
    v8 = v6 < 0xBA4F2957;
  }

  return (*(STACK[0xF18] + 8 * (((4 * v8) | (v8 << 6)) ^ v4)))();
}

uint64_t sub_10033D178()
{
  STACK[0x5658] = v0;
  LODWORD(STACK[0x2564]) = 155629141;
  return (*(STACK[0xF18] + 8 * (v1 - 30507)))();
}

uint64_t sub_10033D2F4()
{
  v2 = (v0 - 16217) | 0x21;
  v3 = LODWORD(STACK[0xA1A4]) + 952909387;
  v4 = (v3 ^ 0x8D773A55) & (2 * (v3 & 0x8E678366)) ^ v3 & 0x8E678366;
  v5 = ((2 * (v3 ^ ((v2 ^ 0x899E) - 1716146406))) ^ 0x2FA37266) & (v3 ^ ((v2 ^ 0x899E) - 1716146406)) ^ (2 * (v3 ^ ((v2 ^ 0x899E) - 1716146406))) & 0x17D1B932;
  v6 = v5 ^ 0x10508911;
  v7 = (v5 ^ 0x3801020) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0x5F46E4CC) & v6 ^ (4 * v6) & 0x17D1B930;
  v9 = (v8 ^ 0x1740A000) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x911933)) ^ 0x7D1B9330) & (v8 ^ 0x911933) ^ (16 * (v8 ^ 0x911933)) & 0x17D1B930;
  v11 = v9 ^ 0x17D1B933 ^ (v10 ^ 0x15119100) & (v9 << 8);
  v12 = v3 ^ (2 * ((v11 << 16) & 0x17D10000 ^ v11 ^ ((v11 << 16) ^ 0x39330000) & (((v10 ^ 0x2C02803) << 8) & 0x17D10000 ^ 0x6400000 ^ (((v10 ^ 0x2C02803) << 8) ^ 0x51B90000) & (v10 ^ 0x2C02803))));
  LODWORD(STACK[0xA16C]) = v12 ^ 0xE4195D48;
  LODWORD(STACK[0xA174]) = *(STACK[0xB728] + 4 * (v12 ^ 0x3FFFFFFF83E6F100));
  v13 = ((LODWORD(STACK[0xB738]) ^ 0xA1024C29) + 1593684951) ^ ((LODWORD(STACK[0xB738]) ^ 0xD172F503) + 780995325) ^ ((LODWORD(STACK[0xB738]) ^ 0xE776BE62) + 411648414);
  LODWORD(STACK[0xA154]) = v13 - 1403981979;
  v14 = ((LODWORD(STACK[0xA194]) ^ 0xB237DA12) + 1304962542) ^ ((LODWORD(STACK[0xA194]) ^ 0xD812BD79) + 669860487) ^ ((LODWORD(STACK[0xA194]) ^ 0x239666D0) - 597059280);
  v15 = (((*STACK[0xA198] ^ 0xF4C08AA5) + 188708187) ^ ((*STACK[0xA198] ^ 0xB09B4CA6) + 1331999578) ^ ((*STACK[0xA198] ^ 0x445BC65C) - 1146865244)) + 678242615;
  v16 = 634647737 * ((&STACK[0x10000] + 3800) ^ 0x6D962FFC);
  LODWORD(STACK[0x10EE0]) = v16 - 1038619787 + v13;
  LODWORD(STACK[0x10EF4]) = v2 - v16 + 1352454501;
  STACK[0x10EE8] = v1;
  LODWORD(STACK[0x10ED8]) = v16 - 1462826144 + v14;
  LODWORD(STACK[0x10EDC]) = v15 ^ v16;
  v17 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v2 + 51342)))(&STACK[0x10ED8]);
  return (*(v17 + 8 * (v2 + 8882)))(2234432642, 2234432643, 2234432644, 1775617819, 10, 3923101457, 4294932395, -1080961354);
}

uint64_t sub_10033D804(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, unsigned int a27)
{
  v30 = a27 < a3;
  if (v30 == v27 > 0x81A655EB)
  {
    v30 = v27 + 2119805460 < a13;
  }

  return (*(v29 + 8 * ((!v30 * ((v28 + 22413) ^ 0xC354)) ^ v28)))();
}

uint64_t sub_10033D87C()
{
  v3 = v0 - 371442620;
  v4 = (((v1 ^ 0x483DE4BE) + 1917944526) ^ ((v1 ^ 0x23AED0ED) + 432191135) ^ ((v1 ^ 0xC3674B84) - 116707848)) + 1464129687;
  return (*(v2 + 8 * (v3 ^ 0xE9DCBE16 | (((v4 - v3) | (v3 - v4)) >> 31))))();
}

uint64_t sub_10033DAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v3 = STACK[0x6490];
  STACK[0x13A0] = STACK[0x6490];
  return (*(STACK[0xF18] + 8 * (((v3 == 0) * ((a3 ^ 0x2D98) + a3 + 23326 - 43158)) ^ a3)))(a1, a2, 371891400);
}

uint64_t sub_10033DB48()
{
  v1 = STACK[0xF18];
  STACK[0x3058] = *(STACK[0xF18] + 8 * (v0 - 3260));
  return (*(v1 + 8 * ((v0 - 3260) ^ 0x19E0 ^ (v0 - 1561943623) & 0x5D197FDE)))();
}

uint64_t sub_10033DB98@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x8764]) = a1;
  STACK[0x5A18] = v4;
  STACK[0x5090] = v5;
  STACK[0x9688] = v7;
  STACK[0x8AA8] = v6;
  STACK[0x49D8] = 0;
  STACK[0x7180] = v1;
  LODWORD(STACK[0x89E4]) = a1;
  LODWORD(STACK[0x5D6C]) = v2;
  STACK[0x5F90] = &STACK[0x4400];
  STACK[0x5348] = &STACK[0x5EB8];
  LODWORD(STACK[0x5554]) = -1936059607;
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_10033DC14()
{
  v1 = (((v0 - 57512335) & 0x36D2FA3) + 81384752) ^ STACK[0x4238] & 0xFEFFFEFF;
  v2 = 17902189 * ((~(&STACK[0x10000] + 3800) & 0x723922AF | (&STACK[0x10000] + 3800) & 0x8DC6DD50) ^ 0xFC7634BF);
  STACK[0x10ED8] = STACK[0x4E10];
  LODWORD(STACK[0x10EE0]) = v2 + v0 + 2837;
  LODWORD(STACK[0x10EE4]) = v1 - v2;
  STACK[0x10EF0] = 0;
  STACK[0x10EE8] = &STACK[0x44CC];
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 24233)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * v0))(v4);
}

uint64_t sub_10033DD38@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x12BC]) = a1;
  v2 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0xBEFE ^ ((v1 + 29330) | 0x2009))))();
}

uint64_t sub_10033DDB0@<X0>(uint64_t a1@<X8>)
{
  v3 = v2 + 4378;
  v4 = (v2 - 10233) | 0x8912u;
  v5 = (v2 - 983990861) & 0x3AA65AFF;
  v6 = (v1 & 0x1D77F8AE8) + (a1 ^ 0xCF7C7DFEBBFC574);
  STACK[0xA768] = v6 + 0xFB6228834A8E893;
  v6 -= 0xCF7C7DFA426EADCLL;
  v7 = STACK[0x9978] - 0x54712624A6ABA5D5;
  v8 = v6 < 0x4798DA94;
  v9 = v6 > v7;
  if (v8 != v7 < v4 + 1201164121)
  {
    v9 = v8;
  }

  if (v9)
  {
    v10 = 371891407;
  }

  else
  {
    v10 = STACK[0xA750];
  }

  LODWORD(STACK[0xA774]) = v10;
  v11 = v10 == v5 - 371866564;
  LOBYTE(STACK[0xA77B]) = v11;
  return (*(STACK[0xF18] + 8 * ((121 * v11) ^ v3)))();
}

uint64_t sub_10033DF4C()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 11399)))(LODWORD(STACK[0x1018]) ^ 0xE9D5C711);
  STACK[0x6CE8] = v2;
  return (*(v1 + 8 * (((v2 != 0) * ((((v0 + 1727594990) & 0x9906EB3B) - 10) ^ ((v0 - 7135) | 0x909))) ^ v0)))();
}

uint64_t sub_10033DFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14)
{
  v17 = (*(v16 + 8 * (v15 + 19384)))(((v14 << ((v15 + 23) ^ 0xF5)) + 13));
  *a14 = v17;
  return (*(v16 + 8 * (((v17 == 0) * (v15 - 32466)) ^ v15)))(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_10033E05C()
{
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((&STACK[0x10000] + 3800) ^ 0xE6261BCF) + 584986756;
  STACK[0x10ED8] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xEED2B84C)))(&STACK[0x10ED8]);
  STACK[0x7690] -= 64;
  return (*(v1 + 8 * ((412 * (v0 <= (v0 ^ 0x5309FEC2))) ^ v0 & 0x2085EC)))(v2);
}

uint64_t sub_10033E110()
{
  v0 = STACK[0xF10];
  v1 = (STACK[0xF10] - 35642) | 0x3814;
  v2 = STACK[0xF10] - 34005;
  v3 = STACK[0xF18];
  STACK[0x16D8] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * ((11478 * (((v1 + 1112145851) ^ v2) == 1633354211)) ^ (v0 - 28585))))();
}

uint64_t sub_10033E18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6 - 25014;
  v8 = *(STACK[0xF18] + 8 * v6);
  LODWORD(STACK[0xED0]) = v7 ^ 0x8B2F;
  return v8((v7 ^ 0x8B2Fu) + 1951877672, 438544355, 136118272, v7 ^ 0x61DEu, 136127320, a6, LODWORD(STACK[0x2E80]), LODWORD(STACK[0x59C4]));
}

void sub_10033E290(_DWORD *a1)
{
  v1 = 139493411 * (((a1 ^ 0x9EF88449 | 0x1FC581CF) - (a1 ^ 0x9EF88449) + ((a1 ^ 0x9EF88449) & 0xE03A7E30)) ^ 0x8D10E4C3);
  v2 = *a1 + v1;
  v3 = a1[2] - v1;
  v4 = a1[3] - v1;
  v5 = a1[4] + v1;
  v6 = a1[1] + v1;
  v7 = *(&off_1010A0B50 + (v2 - 33318));
  *(v7 - 477118402) = v3;
  *(v7 - 477118398) = v4;
  *(v7 - 477118394) = v5;
  *(v7 - 477118390) = v6;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10033E494@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _DWORD *a29)
{
  v33 = *(v31 + (v29 - 1888617826)) | (*(v31 + (v29 - 1888617825)) << 8) | (*(v31 + (v29 - 1888636956 + a1)) << 16);
  v34 = *(v31 + (v29 - 1888617823)) << 24;
  LODWORD(STACK[0x794]) = (((v33 - ((2 * v33) & 0x14CD038) - 2136578020) ^ 0x8E45F528) & ~v34 | v34 & 0xF1FFFFFF) ^ 0xA481E273;
  *a29 |= 1u;
  return (*(v32 + 8 * v30))();
}

uint64_t sub_10033E570@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, int a44)
{
  v47 = *(v45 + 48 * v44 + 36) + 1087656091;
  v48 = (a44 < -743961384) ^ (v47 < -743961384);
  v49 = v47 < a44;
  if (v48)
  {
    v50 = a44 < -743961384;
  }

  else
  {
    v50 = v49;
  }

  return (*(v46 + 8 * ((v50 * ((a1 ^ 0x4EE7) - 11957)) ^ a1)))();
}

uint64_t sub_10033E5EC(__n128 a1)
{
  v5 = *(STACK[0x290] + 8 * v2);
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
  v9.n128_u64[0] = 0xF7F7F7F7F7F7F7F7;
  v9.n128_u64[1] = 0xF7F7F7F7F7F7F7F7;
  return v5(v2 ^ 0x611B, v1 + v3 - 16, v1 - 1, (v1 & 0x10) - 16, v2 ^ 0x26C1, 25532, a1, v6, v7, v8, xmmword_100BC76B0, vqtbl4q_s8(v11, xmmword_100BC76B0), v9);
}

uint64_t sub_10033E718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned __int8 a20, unsigned __int8 a21, unsigned __int8 a22, unsigned __int8 a23, unsigned __int8 a24, unsigned __int8 a25, unsigned __int8 a26, unsigned __int8 a27, unsigned __int8 a28, unsigned __int8 a29, unsigned __int8 a30, unsigned __int8 a31, unsigned __int8 a32, unsigned __int8 a33, unsigned __int8 a34, unsigned __int8 a35)
{
  v331 = v37;
  v328 = v36;
  v39 = v38;
  v40 = *(v38 + 8 * (v35 - 43727)) - 1224096659;
  v41 = *(v40 + (a28 ^ 0xD8));
  v42 = *(v39 + 8 * (v35 - 43659)) - 1543268655;
  v43 = *(v39 + 8 * (v35 - 40904)) - 1273719890;
  v44 = *(v43 + (a35 ^ 0xF4));
  v45 = (((*(v40 + (a32 ^ 0x5CLL)) ^ 0xBE) << 24) ^ 0xC1402683) & ~v44 | v44 & 0x7C;
  v46 = *(v39 + 8 * (v35 - 44628)) - 216293182;
  v47 = *(v43 + (a27 ^ 0x1CLL));
  v48 = ((((((2 * *(v46 + (a33 ^ 0x1DLL))) ^ 0xAA) + 66) ^ *(v46 + (a33 ^ 0x1DLL))) << 16) ^ 0x67F02A12) & (v45 ^ 0xCFBF8D69) ^ v45 & 0x984000ED;
  v49 = ((((((2 * *(v46 + (a25 ^ 0x82))) ^ 0xAA) + 66) ^ *(v46 + (a25 ^ 0x82))) << 16) ^ 0x200901CA) & (v47 ^ 0x20FF11DE) | v47 & 0x35;
  v50 = ((((2 * *(v46 + (a21 ^ 0x9DLL))) ^ 0xAA) + 66) ^ *(v46 + (a21 ^ 0x9DLL))) << 16;
  v51 = (v50 ^ 0x454FF6E) & (((*(v42 + (a22 ^ 0xD7)) ^ a22) << 8) ^ 0x4F6266E);
  v52 = v50 & 0x90000;
  v53 = (a34 - 2 * (a34 & 0x3F) + 63) ^ *(v42 + (a34 ^ 0x90));
  v54 = v53 ^ 0xE;
  v55 = *(v46 + (a29 ^ 0x3FLL));
  v324 = 2 * (((2 * v55) & 0x42 ^ 2) + (v55 ^ 0x74));
  v56 = ((((v324 ^ v55) << 16) ^ 0x6644FFF5) & (((*(v42 + (a30 ^ 0x41)) ^ a30) << 8) ^ 0x66C5C5F5) | ((v324 ^ v55) << 16) & 0x3A0000) ^ 0xD159431A;
  LODWORD(v42) = (((*(v42 + (a26 ^ 0x4CLL)) ^ a26) << 8) ^ 0x59B70F) & (v49 ^ 0x3950FE75);
  v57 = (v42 | v49 & 0x20A600F0) ^ 0x202000C0;
  v58 = (v51 | v52) ^ 0x2CB26691;
  v59 = v48 & 0xCD2222F6 ^ 0xEDCD7B4E ^ ((v54 << 8) ^ 0x32DD9C09) & (v48 ^ 0x490D5E8);
  v60 = *(v39 + 8 * (v35 ^ 0xA3DF)) - 1396873051;
  v61 = *(v39 + 8 * (v35 - 41155)) - 2053599527;
  v62 = *(v39 + 8 * (v35 ^ 0xBB2F)) - 2019762731;
  v63 = *(v39 + 8 * (v35 ^ 0xB0B0)) - 1109334906;
  v64 = v53 ^ 0xE4;
  v65 = *(v63 + 4 * (v59 ^ 4u)) ^ *(v60 + 4 * (*(v40 + (a20 ^ 0xB0)) ^ 0xDBLL)) ^ (*(v62 + 4 * (BYTE1(v56) ^ 0xC3u)) + (BYTE1(v56) ^ 0x214B7833) - 1789094196) ^ (*(v61 + 4 * (HIWORD(v57) ^ 0xD9)) + (HIWORD(v57) ^ 0xE7FCEB90) - 161083554);
  LODWORD(v40) = ((BYTE2(v56) ^ 0xE7FCEBC1) - 161083554 + *(v61 + 4 * (BYTE2(v56) ^ 0x88u))) ^ *(v60 + 4 * (*(v40 + (a24 ^ 0xF6)) ^ 0x67)) ^ ((v54 ^ 0x214B781A) - 1789094196 + *(v62 + 4 * v64)) ^ __ROR4__(__ROR4__(*(v63 + 4 * (*(v43 + (a23 ^ 0xECLL)) ^ 0x91)), 14) ^ 0xB9C7AF60, 18);
  v66 = ((BYTE2(v59) ^ 0xE7FCEBA7) - 161083554 + *(v61 + 4 * (BYTE2(v59) ^ 0xEEu))) ^ *(v60 + 4 * (v41 ^ 0x39)) ^ *(v63 + 4 * (v57 ^ 0xB3u)) ^ ((BYTE1(v58) ^ 0x214B7848) - 1789094196 + *(v62 + 4 * (BYTE1(v58) ^ 0xB8u)));
  LODWORD(v42) = ((BYTE1(v42) ^ 0x214B7846) - 1789094196 + *(v62 + 4 * (BYTE1(v42) ^ 0xB6u))) ^ *(v60 + 4 * HIBYTE(v59)) ^ ((BYTE2(v58) ^ 0xE7FCEBE0) - 161083554 + *(v61 + 4 * (BYTE2(v58) ^ 0xA9u))) ^ *(v63 + 4 * (*(v43 + (a31 ^ 0x49)) ^ 0x6DLL));
  BYTE2(v56) = BYTE2(v65) ^ 0xE4;
  LOBYTE(v54) = ((BYTE2(v59) ^ 0xA7) + 94 + *(v61 + 4 * (BYTE2(v59) ^ 0xEEu))) ^ *(v60 + 4 * (v41 ^ 0x39)) ^ *(v63 + 4 * (v57 ^ 0xB3u)) ^ ((BYTE1(v58) ^ 0x48) - 52 + *(v62 + 4 * (BYTE1(v58) ^ 0xB8u))) ^ 0xF2;
  v67 = ((((v40 ^ 0xBAF5DF63) >> 16) ^ 0x18031458) + *(v61 + 4 * (((v40 ^ 0xBAF5DF63) >> 16) ^ 0xEEu)) - 2 * (((v40 ^ 0xBAF5DF63) >> 16) ^ 0x18031458) - 161083555) ^ *(v60 + 4 * (HIBYTE(v65) ^ 0xA1)) ^ ((((v66 ^ 0xE9F2) >> 8) ^ 0x214B78DF) - 1789094196 + *(v62 + 4 * (((v66 ^ 0xE9F2) >> 8) ^ 0x2Fu))) ^ *(v63 + 4 * (v42 ^ 0xF7u));
  v68 = ((((v66 ^ 0xE5D8E9F2) >> 16) ^ 0xE7FCEBA7) - 161083554 + *(v61 + 4 * (((v66 ^ 0xE5D8E9F2) >> 16) ^ 0xEEu))) ^ *(v60 + 4 * ((v40 ^ 0xBAF5DF63) >> 24)) ^ *(v63 + 4 * (v65 ^ 0x5Fu)) ^ ((BYTE1(v42) ^ 0x214B7847) - 1789094196 + *(v62 + 4 * (BYTE1(v42) ^ 0xB7u)));
  v69 = *(v60 + 4 * (HIBYTE(v66) ^ 0x39)) ^ ((BYTE2(v42) ^ 0xE7FCEBA0) - 161083554 + *(v61 + 4 * (BYTE2(v42) ^ 0xE9u)));
  v70 = ((v65 ^ 0x5D5F) >> 8);
  v71 = *(v62 + 4 * (v70 ^ 0x2Fu));
  LODWORD(v39) = ((v71 ^ 0xDE6232DB) + 1262396433) ^ v71 ^ ((v71 ^ 0x97B44F5D) + 48814487) ^ ((v71 ^ 0xDC8E2B4D) + 1238547847) ^ ((v71 ^ 0xFFFB3FFF) + 1789372725);
  v72 = (v71 ^ 0x555894EA) & (2 * (v71 & 0x955C96CC)) ^ v71 & 0x955C96CC;
  v73 = ((2 * (v71 ^ 0x77509CFA)) ^ 0xC418146C) & (v71 ^ 0x77509CFA) ^ (2 * (v71 ^ 0x77509CFA)) & 0xE20C0A36;
  LODWORD(v41) = (v73 ^ 0xC0000020) & (4 * v72) ^ v72;
  v74 = ((4 * (v73 ^ 0x22040A12)) ^ 0x883028D8) & (v73 ^ 0x22040A12) ^ (4 * (v73 ^ 0x22040A12)) & 0xE20C0A30;
  LODWORD(v41) = (v74 ^ 0x80000800) & (16 * v41) ^ v41;
  v75 = ((16 * (v74 ^ 0x620C0226)) ^ 0x20C0A360) & (v74 ^ 0x620C0226) ^ (16 * (v74 ^ 0x620C0226)) & 0xE20C0A20;
  LODWORD(v41) = v41 ^ 0xE20C0A36 ^ (v75 ^ 0x20000200) & (v41 << 8);
  v76 = v69 ^ *(v63 + 4 * (v40 ^ 0x67u)) ^ ((v70 ^ v71 ^ (2 * ((v41 << 16) & 0x620C0000 ^ v41 ^ ((v41 << 16) ^ 0xA360000) & (((v75 ^ 0xC20C0816) << 8) & 0x620C0000 ^ 0x62040000 ^ (((v75 ^ 0xC20C0816) << 8) ^ 0xC0A0000) & (v75 ^ 0xC20C0816)))) ^ 0x7407FA7F) + ((2 * ((v39 ^ 0x62022034) & (v70 ^ 0x731A22F6) ^ v39 & 0x52515A29)) ^ 0x84029040));
  v77 = *(v60 + 4 * (BYTE3(v42) ^ 0xE8)) ^ *(v63 + 4 * v54) ^ ((BYTE2(v56) ^ 0xE7FCEBA7) - 161083554 + *(v61 + 4 * (BYTE2(v56) ^ 0xEEu))) ^ ((((v40 ^ 0xDF63) >> 8) ^ 0x214B78DF) - 1789094196 + *(v62 + 4 * (((v40 ^ 0xDF63) >> 8) ^ 0x2Fu)));
  v78 = v68 ^ 0xB414C846;
  if (((v68 ^ 0xB414C846) & 0x40000) != 0)
  {
    v79 = -262144;
  }

  else
  {
    v79 = 0x40000;
  }

  v80 = v79 + v78;
  v327 = (v76 ^ 0xB16FE438) >> 8;
  v81 = (v327 & 0x20 | 0x994566C9) ^ v327 & 0xDF;
  v82 = *(v62 + 4 * (((v76 ^ 0xE438) >> 8) ^ 0x2Fu));
  v83 = ((v82 ^ 0xAEB9A4D8) + 1004876308) ^ v82 ^ ((v82 ^ 0x882FC721) + 494096875) ^ ((v82 ^ 0x93CBEDB2) + 110590842) ^ ((v82 ^ 0xDFFEE77F) + 1252159925);
  v84 = (v81 ^ 0x1388A0B1) & (v83 ^ 0x1FA16834) ^ v83 & 0x2B86BEA7;
  v85 = (v82 ^ 0x955A46CE) & (2 * (v82 & 0x955C96CC)) ^ v82 & 0x955C96CC;
  v86 = ((2 * (v82 ^ 0xB5F3435E)) ^ 0x415FAB24) & (v82 ^ 0xB5F3435E) ^ (2 * (v82 ^ 0xB5F3435E)) & 0x20AFD592;
  v87 = v85 ^ 0x20AFD592 ^ (v86 ^ 0x68100) & (4 * v85);
  v88 = ((4 * (v86 ^ 0x20A05492)) ^ 0x82BF5648) & (v86 ^ 0x20A05492) ^ (4 * (v86 ^ 0x20A05492)) & 0x20AFD590;
  v89 = v35;
  v90 = v88 & 0x1DDB1844 ^ v87 ^ (v88 ^ 0xAF5402) & ((16 * v87) ^ 0x17264164);
  v91 = ((16 * v88) ^ 0x172E5844) & (v88 ^ 0xAF5402) ^ v88 & 0x1DDB1844;
  v92 = v91 & 0x1DDB1844 ^ v90 ^ ((v90 << 8) ^ 0x391E8A44) & (v91 ^ 0x8B1092);
  v93 = ((v91 << 8) ^ 0x96CB1844) & (v91 ^ 0x8B1092) ^ v91 & 0x1DDB1844;
  v94 = ((BYTE2(v80) ^ 0xE7FCEB7C) - 161083554 + *(v61 + 4 * (BYTE2(v80) ^ 0x35u))) ^ *(v60 + 4 * (HIBYTE(v67) ^ 5)) ^ *(v63 + 4 * (v77 ^ 0x56u)) ^ (((2 * v84) ^ 0x55045048) + (v82 ^ (2 * (v92 ^ v93 & 0x1DDB1844 ^ ((v92 << 16) ^ 0xC8491845) & (v93 ^ 0x20240000) ^ ((v92 << 16) ^ 0xC8491845) & 0x20AF1000)) ^ v81 ^ 0x6D1B03FE));
  BYTE2(v82) = BYTE2(v67) ^ 0x9A;
  v95 = *(v63 + 4 * (v67 ^ 0xDCu)) ^ ((BYTE1(v77) ^ 0x214B786D) - 1789094196 + *(v62 + 4 * (BYTE1(v77) ^ 0x9Du))) ^ *(v60 + 4 * (HIBYTE(v80) ^ 0x90)) ^ (*(v61 + 4 * (((v76 ^ 0xB16FE438) >> 16) ^ 0xEEu)) + (((v76 ^ 0xB16FE438) >> 16) ^ 0xE7FCEBA7) - 161083554);
  v96 = ((BYTE2(v77) ^ 0xE7FCEBB3) - 161083554 + *(v61 + 4 * (BYTE2(v77) ^ 0xFAu))) ^ ((((v67 ^ 0xFCD8) >> 8) ^ 0x214B78DF) - 1789094196 + *(v62 + 4 * (((v67 ^ 0xFCD8) >> 8) ^ 0x2Fu))) ^ *(v63 + 4 * (v68 ^ 0x53u)) ^ *(v60 + 4 * (HIBYTE(v76) ^ 0x6D));
  v97 = ((BYTE1(v78) ^ 0x214B78D4) - 1789094196 + *(v62 + 4 * (BYTE1(v78) ^ 0x24u))) ^ *(v60 + 4 * (HIBYTE(v77) ^ 0xF5)) ^ ((BYTE2(v82) ^ 0xE7FCEBA7) - 161083554 + *(v61 + 4 * (BYTE2(v82) ^ 0xEEu))) ^ *(v63 + 4 * (v76 ^ 0x38u));
  v98 = *(v62 + 4 * (BYTE1(v96) ^ 0xA2u));
  v99 = *(v60 + 4 * (HIBYTE(v94) ^ 0x73));
  v100 = v99 & 0x80;
  if (((*(v61 + 4 * (BYTE2(v95) ^ 3u)) + (BYTE2(v95) ^ 0x4A) + 94) & v99 & 0x80) != 0)
  {
    v100 = -v100;
  }

  v101 = v100 + *(v61 + 4 * (BYTE2(v95) ^ 3u)) + (BYTE2(v95) ^ 0xE7FCEB4A) - 161083554;
  v102 = (v98 ^ 0x511A56A8) & (2 * (v98 & 0x955C96CC)) ^ v98 & 0x955C96CC;
  v103 = ((2 * (v98 ^ 0x598372B0)) ^ 0x99BFC8F8) & (v98 ^ 0x598372B0) ^ (2 * (v98 ^ 0x598372B0)) & 0xCCDFE47C;
  v104 = (v103 ^ 0x8896C070) & (4 * v102) ^ v102;
  v105 = ((4 * (v103 ^ 0x44402404)) ^ 0x337F91F0) & (v103 ^ 0x44402404) ^ (4 * (v103 ^ 0x44402404)) & 0xCCDFE478;
  v106 = (v105 ^ 0x5F8060) & (16 * v104) ^ v104;
  v107 = ((16 * (v105 ^ 0xCC80640C)) ^ 0xCDFE47C0) & (v105 ^ 0xCC80640C) ^ (16 * (v105 ^ 0xCC80640C)) & 0xCCDFE440;
  v108 = v106 ^ 0xCCDFE47C ^ (v107 ^ 0xCCDE4400) & (v106 << 8);
  v109 = v98 ^ (2 * ((v108 << 16) & 0x4CDF0000 ^ v108 ^ ((v108 << 16) ^ 0x647C0000) & (((v107 ^ 0x1A03C) << 8) & 0x4CDF0000 ^ 0x1B0000 ^ (((v107 ^ 0x1A03C) << 8) ^ 0x5FE40000) & (v107 ^ 0x1A03C))));
  v110 = *(v63 + 4 * (v97 ^ 0x1Bu)) ^ v99 & 0xFFFFFF7F ^ v101 ^ (((2 * ((v109 ^ 0x490A34) & (BYTE1(v96) ^ 0x5B4D8B3B) ^ v109 & 0x7A06F369)) ^ 0x4A440) + (BYTE1(v96) ^ v98 ^ ((v98 ^ 0xD68507CE) + 1138331910) ^ ((v98 ^ 0x9C772EAC) + 153860200) ^ ((v98 ^ 0xDFAEBB88) + 1257385284) ^ ((v98 ^ 0xFFFFFBDE) + 1789095190) ^ 0x4BE81166));
  v111 = ((BYTE2(v96) ^ 0xE7FCEB59) - 161083554 + *(v61 + 4 * (BYTE2(v96) ^ 0x10u))) ^ *(v60 + 4 * (HIBYTE(v95) ^ 0x27)) ^ ((BYTE1(v97) ^ 0x214B782E) - 1789094196 + *(v62 + 4 * (BYTE1(v97) ^ 0xDEu))) ^ *(v63 + 4 * (v94 ^ 0xBFu));
  v112 = *(v60 + 4 * (HIBYTE(v96) ^ 0x3A)) ^ ((BYTE2(v97) ^ 0xE7FCEB31) - 161083554 + *(v61 + 4 * (BYTE2(v97) ^ 0x78u))) ^ *(v63 + 4 * (v95 ^ 0x75u)) ^ (*(v62 + 4 * (BYTE1(v94) ^ 0x85u)) + (BYTE1(v94) ^ 0x214B7875) - 1789094196);
  v113 = *(v63 + 4 * (v96 ^ 0xD4u)) ^ *(v60 + 4 * (HIBYTE(v97) ^ 0xBF)) ^ (*(v62 + 4 * (BYTE1(v95) ^ 0x88u)) + (BYTE1(v95) ^ 0x214B7878) - 1789094196) ^ (*(v61 + 4 * (BYTE2(v94) ^ 0xB4u)) + (BYTE2(v94) ^ 0xE7FCEBFD) - 161083554);
  v114 = *(v60 + 4 * (HIBYTE(v110) ^ 0x98)) ^ ((BYTE2(v111) ^ 0xE7FCEB1D) - 161083554 + *(v61 + 4 * (BYTE2(v111) ^ 0x54u))) ^ *(v63 + 4 * (v113 ^ 0x31u)) ^ (*(v62 + 4 * (BYTE1(v112) ^ 0x4Fu)) + (BYTE1(v112) ^ 0x214B78BF) - 1789094196);
  v115 = v114 ^ 0xB644D01C;
  HIDWORD(v116) = -1056139499 * ((v114 ^ 0xB644D01C) >> 24);
  LODWORD(v116) = HIDWORD(v116);
  v117 = ((v89 + 2171) ^ 0x94922A6E) * v37;
  LOBYTE(v109) = *(*(&off_1010A0B50 + (v89 ^ 0xB688)) + ((((v89 + 123) ^ 0x6E) * v37) ^ 0x36) - 1886618498);
  v118 = v89;
  v119 = ((*(*(&off_1010A0B50 + (v89 ^ 0xBDA0)) + (BYTE1(v117) ^ 4) - 506427370) << 8) ^ 0x9C084A87) & ((v117 ^ v109) ^ 0xBD8FFF3D) | (v117 ^ v109) & 0x78;
  v120 = (*(*(&off_1010A0B50 + (v89 ^ 0xBA34)) + (BYTE2(v117) ^ 0x1DLL) - 1641911838) ^ BYTE2(v117)) << 16;
  v121 = ((v119 & 0x2557 | v120 & 0x7D0000) ^ 0x51907BF6) & ((v119 | v120) & 0x82DAA8 ^ 0x71FD775F) | (v119 | v120) & 0x28008;
  LOBYTE(v120) = *(*(&off_1010A0B50 + (v89 ^ 0xB070)) + (HIBYTE(v117) ^ 0x2FLL) - 713433658);
  v122 = (HIBYTE(v117) ^ (v120 & 3 | 0x10) ^ 0x3A ^ v120 & 0xFC) << (v117 & 0x18);
  v330 = (((v122 - ((2 * v122) & 0xB6F2E00A) + 1534685189) ^ 0x5B797005) << (~v117 & 0x10) << (~v117 & 8)) ^ v121;
  v123 = *(v62 + 4 * (BYTE1(v110) ^ 0x65u));
  v124 = ((v123 ^ 0xCD975DC7) + 1489750797) ^ v123 ^ ((v123 ^ 0x8D1E7AF8) + 407039028) ^ ((v123 ^ 0x75D1B5E0) - 527621332) ^ ((v123 ^ 0x5FFBFBEB) - 894997215);
  v125 = *(v63 + 4 * (v110 ^ 0x12u)) ^ *(v60 + 4 * (HIBYTE(v111) ^ 0xCF)) ^ (*(v61 + 4 * (BYTE2(v112) ^ 0xD6u)) + (BYTE2(v112) ^ 0xE7FCEB9F) - 161083554) ^ (*(v62 + 4 * (BYTE1(v113) ^ 0x70u)) + (BYTE1(v113) ^ 0x214B7880) - 1789094196);
  v320 = BYTE2(v111);
  v126 = *(v63 + 4 * (v111 ^ 0xFEu)) ^ *(v60 + 4 * (HIBYTE(v112) ^ 0x85)) ^ (*(v61 + 4 * (BYTE2(v113) ^ 0x3Cu)) + (BYTE2(v113) ^ 0xE7FCEB75) - 161083554) ^ (((2 * ((BYTE1(v110) ^ 0x39D31766) & (v124 ^ 0x288FA134) ^ v124 & 0x18986FF3)) ^ 0x1100D260) + (v123 ^ ((v123 ^ 0x53BCC35) - 1872274689) ^ ((v123 ^ 0xD30C2F61) + 1179695531) ^ ((v123 ^ 0xC34A751F) + 1444340693) ^ ((v123 ^ 0x7FDEFF7F) - 360552011) ^ BYTE1(v110) ^ 0x4BE811A1));
  v127 = *(v60 + 4 * (HIBYTE(v113) ^ 0x4A)) ^ ((BYTE1(v111) ^ 0x214B78FC) - 1789094196 + *(v62 + 4 * (BYTE1(v111) ^ 0xCu))) ^ *(v63 + 4 * (v112 ^ 0xB3u)) ^ (*(v61 + 4 * (BYTE2(v110) ^ 0xC5u)) + (BYTE2(v110) ^ 0xE7FCEB8C) - 161083554);
  v128 = 122 * ((v114 ^ 0xB644D01C) / 0x7A000000);
  if ((v116 >> 1) >= 0x2192E2A)
  {
    LOBYTE(v128) = (v114 ^ 0xB644D01C) >> 24;
  }

  v129 = ((((v128 & 0xE6) - (v128 & 0xE6 ^ 0xC4)) ^ 0xFFFFFFF8) + (v128 & 0xE6)) | v128 & 0x19 ^ 0x18;
  v130 = (BYTE2(v125) ^ 0xE7FCEB25) - 161083554 + *(v61 + 4 * (BYTE2(v125) ^ 0x6Cu));
  v319 = BYTE1(v127) ^ 0x214B78DD;
  v131 = *(v63 + 4 * (v114 ^ 0x18u)) ^ *(v60 + 4 * (HIBYTE(v125) ^ 0xD5)) ^ (*(v62 + 4 * (BYTE1(v127) ^ 0x2Du)) + v319 - 1789094196) ^ (*(v61 + 4 * (((v126 ^ 0x20C69351) >> 16) ^ 0xEEu)) + (((v126 ^ 0x20C69351) >> 16) ^ 0xE7FCEBA7) - 161083554);
  v132 = *(v63 + 4 * (v125 ^ 0x7Fu)) ^ (*(v61 + 4 * (BYTE2(v127) ^ 0x86u)) + (BYTE2(v127) ^ 0xE7FCEBCF) - 161083554) ^ ((BYTE1(v115) ^ 0x214B78DF) - 1789094196 + *(v62 + 4 * (BYTE1(v115) ^ 0x2Fu))) ^ *(v60 + 4 * ((v126 ^ 0x20C69351) >> 24));
  v326 = (v114 ^ 0xB644D01C) >> 16;
  v133 = BYTE1(v125);
  v134 = *(v62 + 4 * (v133 ^ 0x12u));
  v135 = ((v134 ^ 0x1408783A) - 2125140238) ^ v134 ^ ((v134 ^ 0xB4ADE9BF) + 569474933) ^ ((v134 ^ 0x24E9A74E) - 1313525370) ^ ((v134 ^ 0xEEEF5FFF) + 2075380021);
  v136 = (2 * ((v135 ^ 0x6A226134) & (v133 ^ 0x6B7EE335) ^ v135 & 0x4A359BD7)) ^ 0x94421228;
  v137 = (v134 ^ 0x558C4AF) & (2 * (v134 & 0x955C96CC)) ^ v134 & 0x955C96CC;
  v138 = ((2 * (v134 ^ 0x2748C83F)) ^ 0x6428BDE6) & (v134 ^ 0x2748C83F) ^ (2 * (v134 ^ 0x2748C83F)) & 0xB2145EF2;
  v139 = (v138 ^ 0x20001C60) & (4 * v137) ^ v137;
  v140 = ((4 * (v138 ^ 0x92144211)) ^ 0xC8517BCC) & (v138 ^ 0x92144211) ^ (4 * (v138 ^ 0x92144211)) & 0xB2145EF0;
  v141 = (v140 ^ 0x80105AC0) & (16 * v139) ^ v139;
  v142 = ((16 * (v140 ^ 0x32040433)) ^ 0x2145EF30) & (v140 ^ 0x32040433) ^ (16 * (v140 ^ 0x32040433)) & 0xB2145EF0;
  v143 = v141 ^ 0xB2145EF3 ^ (v142 ^ 0x20044E00) & (v141 << 8);
  v144 = __ROR4__(((BYTE2(v115) ^ 0xE7FCEBA7) - 161083554 + *(v61 + 4 * (BYTE2(v115) - ((v115 >> 15) & 0x1DC) + 238))) ^ *(v60 + 4 * (HIBYTE(v127) ^ 0x1A)) ^ ((v133 ^ v134 ^ (2 * ((v143 << 16) & 0x32140000 ^ v143 ^ ((v143 << 16) ^ 0x5EF30000) & (((v142 ^ 0x921010C3) << 8) & 0x32140000 ^ 0x22000000 ^ (((v142 ^ 0x921010C3) << 8) ^ 0x145E0000) & (v142 ^ 0x921010C3)))) ^ 0xF41F53C8) + v136), 23);
  v145 = v130 ^ *(v63 + 4 * (v127 ^ 0xFDu)) ^ (*(v62 + 4 * (((v126 ^ 0x9351) >> 8) ^ 0x2Fu)) + (((v126 ^ 0x9351) >> 8) ^ 0x214B78DF) - 1789094196) ^ 0xC67A0DAC;
  v146 = *(v60 + 4 * v129) ^ v145;
  v148 = __ROR4__(v144 ^ 0x171B2363, 9);
  v147 = *(v63 + 4 * (v126 ^ 0x55u)) ^ v148;
  v149 = *(v63 + 4 * ((*(v63 + 4 * (v126 ^ 0x55u)) ^ v148) ^ 0x73u)) ^ *(v60 + 4 * HIBYTE(v146)) ^ ((BYTE1(v132) ^ 0x214B787C) - 1789094196 + *(v62 + 4 * (BYTE1(v132) ^ 0x8Cu))) ^ (*(v61 + 4 * (BYTE2(v131) ^ 0x6Au)) + (BYTE2(v131) ^ 0xE7FCEB23) - 161083554);
  v150 = *(v63 + 4 * (*(v60 + 4 * v129) ^ v145)) ^ *(v60 + 4 * (HIBYTE(v131) ^ 0x63)) ^ ((BYTE2(v132) ^ 0xE7FCEB99) - 161083554 + *(v61 + 4 * (BYTE2(v132) ^ 0xD0u))) ^ (*(v62 + 4 * ((-(BYTE1(v147) ^ 0xE2) ^ (47 - (BYTE1(v147) ^ 0xCD)) ^ 0xFDE64D35 ^ ((BYTE1(v147) ^ 0xE2) - ((2 * (BYTE1(v147) ^ 0xE2)) & 0x6A) - 35238603)) + 47)) + (BYTE1(v147) ^ 0x214B783D) - 1789094196);
  v151 = *(v63 + 4 * (v131 ^ 0x4Au)) ^ *(v60 + 4 * (HIBYTE(v132) ^ 0x33)) ^ ((BYTE1(v146) ^ 0x214B78DF) - 1789094196 + *(v62 + 4 * (BYTE1(v146) ^ 0x2Fu))) ^ (*(v61 + 4 * (BYTE2(v147) ^ 0x4Fu)) + (BYTE2(v147) ^ 0xE7FCEB06) - 161083554);
  LODWORD(v152) = __ROR4__(((BYTE2(v146) ^ 0xE7FCEBA7) - 161083554 + *(v61 + 4 * (BYTE2(v146) ^ 0xEEu))) ^ ((BYTE1(v131) ^ 0x214B7821) - 1789094196 + *(v62 + 4 * (BYTE1(v131) ^ 0xD1u))) ^ *(v60 + 4 * (HIBYTE(v147) ^ 0xE8)) ^ __ROR4__(__ROR4__(*(v63 + 4 * (v132 ^ 0x86u)), 12) ^ 0xF8DF5308, 20) ^ 0x4461D8C, 2);
  v153 = v151 ^ 0x96DEC662;
  v154 = v149 ^ 0x1A649BAA;
  LODWORD(v152) = v152 ^ 0xDA34863E;
  HIDWORD(v152) = v152;
  v155 = v152 >> 30;
  v156 = v155 ^ 0xFA2CEDE7;
  v157 = *(v63 + 4 * ((v152 >> 30) ^ 0xE7u)) ^ *(v60 + 4 * (HIBYTE(v149) ^ 0xC6)) ^ (*(v61 + 4 * (BYTE2(v150) ^ 0x72u)) + (BYTE2(v150) ^ 0xE7FCEB3B) - 161083554) ^ (*(v62 + 4 * (BYTE1(v153) ^ 0x2Fu)) + (BYTE1(v153) ^ 0x214B78DF) - 1789094196);
  v158 = (*(v61 + 4 * (BYTE2(v153) ^ 0xEEu)) + (BYTE2(v153) ^ 0x18031458) - 2 * (BYTE2(v153) ^ 0x18031458) - 161083555) ^ *(v60 + 4 * (HIBYTE(v150) ^ 0xD5));
  HIDWORD(v152) = v158 ^ 0x1D634;
  LODWORD(v152) = v158 ^ 0xE2880000;
  v159 = v152 >> 18;
  HIDWORD(v152) = *(v62 + 4 * (BYTE1(v156) ^ 0x2Fu)) + (BYTE1(v156) ^ 0x214B78DF) - 1789094196;
  LODWORD(v152) = HIDWORD(v152);
  v160 = v152 >> 18;
  v161 = v159 & 0x4000000;
  if ((v159 & 0x4000000 & v160) != 0)
  {
    v161 = -v161;
  }

  v162 = (v161 + v160) ^ v159 & 0xFBFFFFFF;
  HIDWORD(v164) = v162 ^ 0x2B3C;
  LODWORD(v164) = v162 ^ 0x68DB0000;
  v163 = v164 >> 14;
  v165 = *(v63 + 4 * v154) ^ 0x569D1E72;
  v166 = (v164 >> 14) & 2;
  if ((v166 & v165) != 0)
  {
    LODWORD(v166) = -v166;
  }

  v167 = (v166 + v165) ^ v163 & 0xFFFFFFFD;
  v168 = ((BYTE1(v154) ^ 0x214B78DF) - 1789094196 + *(v62 + 4 * (BYTE1(v154) ^ 0x2Fu))) ^ *(v60 + 4 * HIBYTE(v153)) ^ (*(v61 + 4 * (BYTE2(v156) ^ 0xEEu)) + (BYTE2(v156) ^ 0xE7FCEBA7) - 161083554);
  v169 = *(v63 + 4 * (v150 ^ 0x79u)) & 4;
  v170 = (v169 & ~v168) == 0;
  v171 = v168 ^ 0xE289D634;
  if (!v170)
  {
    v169 = -v169;
  }

  v172 = (v169 + v171) ^ *(v63 + 4 * (v150 ^ 0x79u)) & 0xFFFFFFFB;
  v173 = ((BYTE2(v154) ^ 0xE7FCEBA7) - 161083554 + *(v61 + 4 * (BYTE2(v154) ^ 0xEEu))) ^ *(v63 + 4 * (v151 ^ 0x66u)) ^ *(v60 + 4 * (HIBYTE(v155) ^ 0x26)) ^ (*(v62 + 4 * (BYTE1(v150) ^ 0x84u)) + (BYTE1(v150) ^ 0x214B7874) - 1789094196);
  v174 = (((((v167 ^ 0xA9A0B3C9) >> (v324 & 0x10)) - ((2 * ((v167 ^ 0xA9A0B3C9) >> (v324 & 0x10))) & 0x8DC2C1BC) - 958308130) ^ 0xC6E160DE) >> (v324 & 0x10 ^ 0x10));
  v175 = *(v63 + 4 * (v173 ^ 0x9Cu)) ^ *(v60 + 4 * (HIBYTE(v157) ^ 0xC8)) ^ (*(v62 + 4 * (BYTE1(v172) ^ 0x29u)) + (BYTE1(v172) ^ 0x214B78D9) - 1789094196) ^ (*(v61 + 4 * (v174 ^ 0xEEu)) + (v174 ^ 0xE7FCEBA7) - 161083554);
  v176 = *(v63 + 4 * (v157 ^ 7u)) ^ ((BYTE2(v172) ^ 0xE7FCEBC9) - 161083554 + *(v61 + 4 * (BYTE2(v172) ^ 0x80u))) ^ (*(v62 + 4 * (BYTE1(v173) ^ 0x56u)) + (BYTE1(v173) ^ 0x214B78A6) - 1789094196) ^ *(v60 + 4 * (HIBYTE(v167) ^ 0x75));
  v177 = (*(v61 + 4 * (BYTE2(v173) ^ 0xFDu)) + (BYTE2(v173) ^ 0xE7FCEBB4) - 161083554) ^ (*(v62 + 4 * (BYTE1(v157) ^ 0x92u)) + (BYTE1(v157) ^ 0x214B7862) - 1789094196) ^ *(v60 + 4 * (HIBYTE(v172) ^ 0x69));
  v178 = ((v177 & 0x4B353E3F ^ 0x6F1E85ED) & (v177 & 0xB4CAC1C0 ^ 0xCFB77FFF) | v177 & 0x90C04000) ^ *(v63 + 4 * (v167 ^ 0xCDu));
  v179 = *(v63 + 4 * (v172 ^ 0x2Cu)) ^ *(v60 + 4 * (HIBYTE(v173) ^ 0x44)) ^ ((BYTE2(v157) ^ 0xE7FCEB02) - 161083554 + *(v61 + 4 * (BYTE2(v157) ^ 0x4Bu))) ^ (*(v62 + 4 * (BYTE1(v167) ^ 0x9Cu)) + (BYTE1(v167) ^ 0x214B786C) - 1789094196);
  v180 = (v176 ^ 0x56CFB007) + ((2 * v176) & 0xC5B6F082 ^ 0x40209080) + ((2 * v176) & 0xC5B6F082 ^ 0xBFDF6F7F);
  v323 = v118;
  v181 = ((2 * ((((v179 ^ 0xB414C846) - (v179 ^ 0x993B1983)) ^ 0x56EA4C11) & (v179 ^ 0x3414C846) ^ v179 & 0x2915B3EF)) ^ 0x4029008C) + (v179 ^ 0x4BEB37B8 ^ ((v179 ^ 0xB414C846) - (v179 ^ 0x993B1983)));
  v182 = *(&off_1010A0B50 + (v118 - 44846)) - 1466871530;
  v183 = *(&off_1010A0B50 + (v118 - 41640)) - 471926322;
  v184 = *(&off_1010A0B50 + (v118 ^ 0xB49C)) - 2042340918;
  v185 = *(&off_1010A0B50 + (v118 ^ 0xA1A6)) - 376814590;
  v186 = *&v182[4 * (HIBYTE(v175) ^ 0x68)];
  v187 = *&v182[4 * ((++v180 >> 24) ^ 0x23)];
  v188 = v186 ^ (v186 >> 4) ^ (v186 >> 2) ^ (*&v183[4 * (BYTE1(v178) ^ 0x94)] - 1810659276) ^ *&v184[4 * (BYTE2(v180) ^ 0x6A)] ^ *&v185[4 * (v181 ^ 0x85)] ^ (v181 - 1222206310) ^ 0x441074E6;
  v189 = *&v185[4 * (v175 ^ 0xFC)];
  v190 = (v175 ^ 0x79) - 1222206310;
  v191 = v190 & 0x35049991 & (v189 ^ 0x15000900) ^ v190 & 0x34000810 ^ (v189 & 0x48C06191 ^ 0xC068608B) & ~(v190 & 0x35049991);
  v192 = v187 ^ *&v184[4 * (((v178 ^ 0xC142AB6B) >> 16) ^ 0x6A)] ^ (*&v183[4 * (BYTE1(v181) ^ 0x3F)] - 1810659276) ^ ((((v187 >> 2) & 0x3181C858 ^ v187 & 0xB181C858 ^ 0x4E7F37AC) & (v187 & 0x4E7E37A4 ^ 0x1D21118C ^ (v187 >> 2) & 0xE7E37A4) | ((v187 >> 2) & 0x3181C858 ^ v187 & 0xB181C858) & 0xA080C850) >> 2) ^ v191 & 0xB4681109 ^ (v191 ^ 0x2132E74) & (v189 & 0x823B066E ^ v190 & 0x8222046E ^ 0xC994E8FC) ^ 0xDE96BDC3;
  v193 = *&v182[4 * ((v178 ^ 0xC142AB6B) >> 24)];
  v194 = *&v182[4 * (HIBYTE(v181) ^ 0x23)];
  v321 = v183;
  v322 = v185;
  v195 = v194 ^ (v194 >> 4) ^ (v194 >> 2) ^ *&v184[4 * (BYTE2(v175) ^ 0x9C)] ^ (*&v183[4 * (BYTE1(v180) ^ 0x3F)] - 1810659276) ^ 0xECA95B0F;
  LODWORD(v183) = *&v185[4 * (v178 ^ 0xEE)];
  v196 = ((v183 & 0xB27764B6 ^ ((v178 ^ 0x6B) - 1222206310) & 0xB22604B6 ^ 0x4FA89B59) & (((v178 ^ 0x6B) - 1222206310) & 0x5009949 ^ 0x42A82F78 ^ v183 & 0x4D889B49) | (v183 & 0xB27764B6 ^ ((v178 ^ 0x6B) - 1222206310) & 0xB22604B6) & 0xB0574086) ^ 0xCB682476;
  v197 = v330 ^ (v180 - 1222206310) ^ *&v185[4 * (v180 ^ 0x85)] ^ (*(*(&off_1010A0B50 + (v118 - 41640)) + 4 * (BYTE1(v175) ^ 0x99u) - 471926322) - 1810659276) ^ __ROR4__(__ROR4__(v193 ^ (v193 >> 4) ^ (v193 >> 2) ^ 0x347DEA9B ^ *&v184[4 * (BYTE2(v181) ^ 0x6A)], 11) ^ 0x1F467913, 21) ^ 0xC38BC03B;
  v198 = v330 ^ 0xAC95E2AC ^ (v196 + v195 - 2 * (v196 & v195));
  v325 = v330 ^ 0xC3EDDD1A;
  v199 = v192 ^ v188 ^ v197;
  v200 = v197 ^ v330 ^ 0xC3EDDD1A ^ v192 ^ v198;
  v201 = v192 ^ v188 ^ v198;
  v203 = v201 ^ 0x9A9A3D52;
  v204 = v188 ^ v330 ^ 0xC3EDDD1A;
  v205 = *(v63 + 4 * ((v188 ^ v330 ^ 0x1A) ^ 0x38u)) ^ *(v60 + 4 * (HIBYTE(v199) ^ 0x45)) ^ (*(v61 + 4 * (BYTE2(v200) ^ 0x7Fu)) + (BYTE2(v200) ^ 0xE7FCEB36) - 161083554) ^ (*(v62 + 4 * (BYTE1(v203) ^ 0x2Fu)) + (BYTE1(v203) ^ 0x214B78DF) - 1789094196);
  v206 = *(v63 + 4 * (v199 ^ 0x67u));
  v207 = v206 & 0xFFFFFDFF ^ *(v60 + 4 * (HIBYTE(v200) ^ 0x6B)) ^ (v206 & 0x200 | 0x38B7B973) ^ (*(v62 + 4 * (BYTE1(v204) ^ 0xDDu)) + (BYTE1(v204) ^ 0x214B782D) - 1789094196) ^ (*(v61 + 4 * (BYTE2(v203) ^ 0xEEu)) + (BYTE2(v203) ^ 0xE7FCEBA7) - 161083554);
  v208 = *(v61 + 4 * (BYTE2(v204) ^ 0x3Bu)) + (BYTE2(v204) ^ 0x1803148D) - 2 * (BYTE2(v204) ^ 0x1803148D) - 161083555;
  v209 = (v208 - ((2 * v208) & 0x4C7246A) - 2107403723) ^ *(v60 + 4 * ((v201 ^ 0x9A9A3D52) >> 24));
  v210 = *(v62 + 4 * (BYTE1(v199) ^ 0x9Au)) + (BYTE1(v199) ^ 0x214B786A) - 1789094196;
  v211 = v209 & 0x1000000;
  if ((v210 & v209 & 0x1000000) != 0)
  {
    v211 = -v211;
  }

  v212 = v209 & 0xFEFFFFFF ^ *(v63 + 4 * (v200 ^ 0x57u)) ^ (v211 + v210);
  v202 = ((((v200 ^ 0xB7915853) >> (v319 & 8)) - ((2 * ((v200 ^ 0xB7915853) >> (v319 & 8))) & 0xFCE5FBBE) + 2121465311) ^ 0x7E72FDDF) >> (v319 & 8 ^ 8);
  v213 = *(v63 + 4 * (v201 ^ 0x56u)) ^ *(v60 + 4 * (HIBYTE(v204) ^ 0xD4)) ^ (*(v61 + 4 * (BYTE2(v199) ^ 0x91u)) + (BYTE2(v199) ^ 0xE7FCEBD8) - 161083554) ^ (*(v62 + 4 * (v202 ^ 0x2Fu)) + (v202 ^ 0x214B78DF) - 1789094196);
  v214 = *(v63 + 4 * (((v213 & 0xD3 ^ 0xE0081F4D) & (v213 & 0x2C ^ 0xFBE9DFFB) | v213 & 0x20) ^ 0xE0081FC9));
  v215 = (((2 * v214) & 0xE27CE306 ^ 0xBDBB3CFD) - 1730027147 + (((v214 ^ 0x6C52F530) - 1817376048) ^ ((v214 ^ 0xF7400FB8) + 146796616) ^ ((v214 ^ 0x3CB19579) - 1018271097))) ^ *(v60 + 4 * (HIBYTE(v205) ^ 0x5A)) ^ (*(v61 + 4 * (BYTE2(v207) ^ 0x11u)) + (BYTE2(v207) ^ 0xE7FCEB58) - 161083554) ^ (*(v62 + 4 * (BYTE1(v212) ^ 0x2Bu)) + (BYTE1(v212) ^ 0x214B78DB) - 1789094196);
  v216 = *(v60 + 4 * (HIBYTE(v207) ^ 0x4E)) ^ *(v63 + 4 * (v205 ^ 0xECu)) ^ (*(v61 + 4 * (BYTE2(v212) ^ 0xD3u)) + (BYTE2(v212) ^ 0xE7FCEB9A) - 161083554) ^ (*(v62 + 4 * (BYTE1(v213) ^ 0xF5u)) + (BYTE1(v213) ^ 0x214B7805) - 1789094196) ^ 0xB414C846;
  v217 = *(v63 + 4 * (v207 ^ 0xDAu)) ^ ((BYTE1(v205) ^ 0x214B7883) - 1789094196 + *(v62 + 4 * (BYTE1(v205) ^ 0x73u))) ^ *(v60 + 4 * (HIBYTE(v212) ^ 0x14)) ^ (*(v61 + 4 * ((BYTE2(v213) ^ 0x54) + ((v213 >> 15) & 0x1DC ^ 0xFFFFFF77) + 239)) + (BYTE2(v213) ^ 0xE7FCEBF3) - 161083554);
  v218 = v216 - ((2 * v216) & 0x139AAADE) - 1983031953;
  v219 = ((BYTE2(v205) ^ 0xE7FCEB8C) - 161083554 + *(v61 + 4 * (BYTE2(v205) ^ 0xC5u))) ^ ((BYTE1(v207) ^ 0x214B78A4) - 1789094196 + *(v62 + 4 * (BYTE1(v207) ^ 0x54u))) ^ *(v60 + 4 * (HIBYTE(v213) ^ 0xFA));
  v220 = ((v219 & 0x93AF0060 ^ 0xD45F8075) & (v219 & 0x6C50FF9F ^ 0x97FF11E3) | v219 & 0x28007F8A) ^ *(v63 + 4 * (v212 ^ 0x9Eu));
  v221 = (v215 ^ 0x595B9329) >> (v212 & 8 ^ 8) >> (v212 & 8);
  v222 = *(v63 + 4 * (v220 ^ 0x43u)) ^ (*(v62 + 4 * (((v217 ^ 0x93B5) >> 8) ^ 0x2Fu)) + (((v217 ^ 0x93B5) >> 8) ^ 0x214B78DF) - 1789094196) ^ (*(v61 + 4 * (BYTE2(v218) ^ 0xEEu)) + (BYTE2(v218) ^ 0xE7FCEBA7) - 161083554) ^ *(v60 + 4 * (HIBYTE(v215) ^ 0x85));
  v223 = ((((v217 ^ 0x3EDB93B5) >> 16) ^ 0xE7FCEBA7) - 161083554 + *(v61 + 4 * (((v217 ^ 0x3EDB93B5) >> 16) ^ 0xEEu))) ^ *(v60 + 4 * (HIBYTE(v218) ^ 0xDC)) ^ (*(v62 + 4 * (BYTE1(v220) ^ 0xD0u)) + (BYTE1(v220) ^ 0x214B7820) - 1789094196) ^ *(v63 + 4 * (v215 ^ 0x2Du));
  v224 = *(v63 + 4 * ((v216 - ((2 * v216) & 0xDE) + 111) ^ 4u)) ^ *(v60 + 4 * ((v217 ^ 0x3EDB93B5) >> 24)) ^ ((BYTE2(v220) ^ 0xE7FCEB1B) - 161083554 + *(v61 + 4 * (BYTE2(v220) ^ 0x52u))) ^ ((v221 ^ 0x214B78DF) - 1789094196 + *(v62 + 4 * (v221 ^ 0x2Fu)));
  v225 = ((BYTE2(v215) ^ 0xE7FCEBFC) - 161083554 + *(v61 + 4 * (BYTE2(v215) ^ 0xB5u))) ^ *(v60 + 4 * (HIBYTE(v220) ^ 0xAD)) ^ *(v63 + 4 * (v217 ^ 0xB1u)) ^ ((-BYTE1(v218) ^ (558594271 - (BYTE1(v218) ^ 0x214B78DF)) ^ (BYTE1(v218) - ((v218 >> 7) & 0x116) - 1021225589) ^ 0xC321558B) - 1230499925 + *(v62 + 4 * (BYTE1(v218) ^ 0x2Fu)));
  v226 = *(v63 + 4 * (v225 ^ 5u)) ^ *(v60 + 4 * (HIBYTE(v222) ^ 0x85)) ^ ((BYTE2(v223) ^ 0xE7FCEBAC) - 161083554 + *(v61 + 4 * (BYTE2(v223) ^ 0xE5u))) ^ (*(v62 + 4 * (BYTE1(v224) ^ 0xE1u)) + (BYTE1(v224) ^ 0x214B7811) - 1789094196);
  v227 = ((BYTE2(v224) ^ 0xE7FCEBF1) - 161083554 + *(v61 + 4 * (BYTE2(v224) ^ 0xB8u))) ^ *(v60 + 4 * (HIBYTE(v223) ^ 0x97)) ^ *(v63 + 4 * (v222 ^ 0xE6u)) ^ ((BYTE1(v225) ^ 0x214B781C) - 1789094196 + *(v62 + 4 * (BYTE1(v225) ^ 0xECu)));
  v228 = (BYTE1(v222) ^ 0x214B7877) - 1789094196 + *(v62 + 4 * (BYTE1(v222) ^ 0x87u));
  v229 = ((v225 ^ 0x479AC301) >> (v320 & 0x10 ^ 0x10) >> (v320 & 0x10));
  v230 = *(v60 + 4 * (HIBYTE(v224) ^ 0x8A)) ^ 0xE289D634 ^ ((v229 ^ 0xE7FCEBA7) - 161083554 + *(v61 + 4 * (v229 ^ 0xEEu)));
  v231 = v230 + v228 - 2 * (v230 & v228);
  v232 = HIBYTE(v225) ^ 0x9B;
  v233 = (((((v223 ^ 0x4B0B1D28) >> (v327 & 8)) - ((2 * ((v223 ^ 0x4B0B1D28) >> (v327 & 8))) & 0x6576FAF8) + 851148156) ^ 0x32BB7D7C) >> (v327 & 8 ^ 8));
  v234 = (BYTE2(v222) ^ 0xE7FCEBE7) - 161083554 + *(v61 + 4 * (BYTE2(v222) ^ 0xAEu));
  v235 = (v233 ^ 0x214B78DF) - 1789094196 + *(v62 + 4 * (v233 ^ 0x2Fu));
  v236 = v224 ^ 0x77;
  v237 = *(v63 + 4 * (v223 ^ 0x2Cu));
  v238 = v231 & 0x4000;
  v170 = (v231 & 0x4000 & v237) == 0;
  v239 = v237 ^ 0x569D1E72;
  if (!v170)
  {
    v238 = -v238;
  }

  v240 = (v238 + v239) ^ v231 & 0xFFFFBFFF;
  v241 = v234 ^ *(v60 + 4 * v232) ^ *(v63 + 4 * v236) ^ 0x147BD62E ^ v235;
  v242 = (v241 & 0x92C631E ^ 0xE7A41984) & (v241 & 0xF6D39CE1 ^ 0x5FBE63BF) | v241 & 0x10538461;
  v243 = v240 ^ 0xEA68FEE9;
  v244 = *(v63 + 4 * (v227 ^ 0x1Bu));
  v245 = v244 & 0x100;
  if (((((BYTE1(v226) ^ 0x788C) - 26932 + *(v62 + 4 * (BYTE1(v226) ^ 0x7Cu))) ^ *(v60 + 4 * ((v240 ^ 0xEA68FEE9) >> 24)) ^ (*(v61 + 4 * (BYTE2(v242) ^ 0xD2u)) + (BYTE2(v242) ^ 0xEB9B) + 3934)) & v244 & 0x100) != 0)
  {
    v245 = -v245;
  }

  v246 = (v245 + (((BYTE1(v226) ^ 0x214B788C) - 1789094196 + *(v62 + 4 * (BYTE1(v226) ^ 0x7Cu))) ^ *(v60 + 4 * ((v240 ^ 0xEA68FEE9) >> 24)) ^ (*(v61 + 4 * (BYTE2(v242) ^ 0xD2u)) + (BYTE2(v242) ^ 0xE7FCEB9B) - 161083554) ^ 0xE289D634)) ^ v244 & 0xFFFFFEFF;
  v247 = BYTE2(v246) ^ 0xAB;
  v248 = v247 + 776 - 97 * ((2703 * (v247 + 776)) >> 18);
  v249 = (1594008481 * v247) >= 0x2A3A0FE;
  v250 = v227 ^ 0x214D9F1F;
  v251 = ((BYTE2(v250) ^ 0xE7FCEBA7) - 161083554 + *(v61 + 4 * (BYTE2(v250) ^ 0xEEu))) ^ *(v60 + 4 * (HIBYTE(v226) ^ 0xA8)) ^ *(v63 + 4 * (v242 ^ 0xBCu)) ^ (*(v62 + 4 * (BYTE1(v243) ^ 0x2Fu)) + (BYTE1(v243) ^ 0x214B78DF) - 1789094196);
  v252 = *(v63 + 4 * ((v226 ^ 2) - ((2 * v226) & 8) + 4)) ^ *(v60 + 4 * HIBYTE(v250)) ^ (*(v62 + 4 * (BYTE1(v242) ^ 0x1Bu)) + (BYTE1(v242) ^ 0x214B78EB) - 1789094196) ^ (*(v61 + 4 * (BYTE2(v243) ^ 0xEEu)) + (BYTE2(v243) ^ 0xE7FCEBA7) - 161083554);
  v253 = BYTE2(v226) ^ 0xF0;
  v254 = (BYTE2(v226) ^ 0xE7FCEBB9) - 161083554 + *(v61 + 4 * v253);
  v255 = *(v60 + 4 * (HIBYTE(v242) ^ 0x45)) ^ 0xE289D634;
  v256 = ((BYTE1(v250) ^ 0x214B78DF) - 1789094196 + *(v62 + 4 * (BYTE1(v250) ^ 0x2Fu))) ^ *(v63 + 4 * (v240 ^ 0xEDu)) ^ (v254 + v255 - 2 * (v254 & v255));
  v257 = ((((v246 ^ 0x57AB27C2) >> (v253 & 0x18)) - ((2 * ((v246 ^ 0x57AB27C2) >> (v253 & 0x18))) & 0xA262C36) + 85136923) ^ 0x513161B) >> (~BYTE2(v226) & 8) >> (BYTE2(v226) & 0x10);
  if (v249)
  {
    v258 = 0;
  }

  else
  {
    v258 = v248;
  }

  v259 = ((BYTE2(v252) ^ 0xE7FCEB72) - 161083554 + *(v61 + 4 * (BYTE2(v252) ^ 0x3Bu))) ^ *(v60 + 4 * (HIBYTE(v251) ^ 0x54)) ^ *(v63 + 4 * ((((BYTE1(v250) ^ 0xDF) - 52 + *(v62 + 4 * (BYTE1(v250) ^ 0x2Fu))) ^ *(v63 + 4 * (v240 ^ 0xEDu)) ^ (v254 + v255 - 2 * (v254 & v255))) ^ 0xD7u)) ^ (*(v62 + 4 * (BYTE1(v246) ^ 8u)) + (BYTE1(v246) ^ 0x214B78F8) - 1789094196);
  v260 = *(v63 + 4 * (v251 ^ 0xA8u)) ^ *(v60 + 4 * (HIBYTE(v252) ^ 0xD4)) ^ ((BYTE1(v256) ^ 0x214B7809) - 1789094196 + *(v62 + 4 * (BYTE1(v256) ^ 0xF9u))) ^ (*(v61 + 4 * (((BYTE2(v246) ^ 0xAB) - v258) ^ 0xEEu)) + (((BYTE2(v246) ^ 0xAB) - v258) ^ 0xE7FCEBA7) - 161083554);
  v261 = *(v60 + 4 * (v257 ^ 0xDCu)) ^ ((BYTE2(v256) ^ 0xE7FCEB10) - 161083554 + *(v61 + 4 * (BYTE2(v256) ^ 0x59u))) ^ 0xE289D634;
  v262 = (((v251 ^ 0xBBA8) >> 8) ^ 0x214B78DF) - 1789094196 + *(v62 + 4 * (((v251 ^ 0xBBA8) >> 8) ^ 0x2Fu));
  v263 = (v262 + v261 - 2 * (v262 & v261)) ^ *(v63 + 4 * (v252 ^ 0xA3u));
  v264 = ((((v251 ^ 0x8849BBA8) >> 16) ^ 0xE7FCEBA7) - 161083554 + *(v61 + 4 * (((v251 ^ 0x8849BBA8) >> 16) ^ 0xEEu))) ^ *(v60 + 4 * (HIBYTE(v256) ^ 0x5A)) ^ *(v63 + 4 * (v246 ^ 0xC6u)) ^ ((BYTE1(v252) ^ 0x214B78FE) - 1789094196 + *(v62 + 4 * (BYTE1(v252) ^ 0xEu)));
  v265 = *(v63 + 4 * (v264 ^ 0x2Cu)) ^ *(v60 + 4 * (HIBYTE(v259) ^ 0xDD)) ^ (*(v62 + 4 * (BYTE1(v263) ^ 0xE2u)) + (BYTE1(v263) ^ 0x214B7812) - 1789094196) ^ (*(v61 + 4 * (BYTE2(v260) ^ 0x30u)) + (BYTE2(v260) ^ 0xE7FCEB79) - 161083554);
  v266 = *(v60 + 4 * (HIBYTE(v260) ^ 9));
  v267 = ((BYTE2(v263) ^ 0xE7FCEB15) - 161083554 + *(v61 + 4 * (BYTE2(v263) ^ 0x5Cu))) ^ *(v63 + 4 * (v259 ^ 0x46u)) ^ ((BYTE1(v264) ^ 0x214B78AF) - 1789094196 + *(v62 + 4 * (BYTE1(v264) ^ 0x5Fu))) ^ ((v266 ^ (1625965569 - (v266 ^ 0xE289D634)) ^ 0x82639235 ^ (2107403723 - (((v266 ^ 0xB4C7CF5F) + 1261973665) ^ ((v266 ^ 0xE47EFCD0) + 461439792) ^ ((v266 ^ 0xD2DAA1BA) + 757423686)))) + 1625965569);
  v268 = *(v60 + 4 * ((HIBYTE(v263) ^ 0x4A) - ((2 * (HIBYTE(v263) ^ 0x4A)) & 0x1B8) + 220)) ^ ((BYTE2(v264) ^ 0xE7FCEB0C) - 161083554 + *(v61 + 4 * (BYTE2(v264) ^ 0x45u)));
  v269 = v268 ^ ((BYTE1(v259) ^ 0x214B78B4) - 1789094196 + *(v62 + 4 * (BYTE1(v259) ^ 0x44u))) ^ 0xE289D634;
  v270 = *(v63 + 4 * (v260 ^ 7u)) ^ 0x569D1E72;
  v271 = v269 + v270 - 2 * (v269 & v270);
  v272 = ((BYTE2(v259) ^ 0xE7FCEBE3) - 161083554 + *(v61 + 4 * (BYTE2(v259) ^ 0xAAu))) ^ *(v60 + 4 * (HIBYTE(v264) ^ 0xB3)) ^ *(v63 + 4 * (v263 ^ 0x6Bu)) ^ ((BYTE1(v260) ^ 0x214B786D) - 1789094196 + *(v62 + 4 * (BYTE1(v260) ^ 0x9Du)));
  v273 = *(v63 + 4 * (v272 ^ 0x58u)) ^ *(v60 + 4 * (HIBYTE(v265) ^ 0x8D)) ^ ((BYTE1(v271) ^ 0x214B784D) - 1789094196 + *(v62 + 4 * (BYTE1(v271) ^ 0xBDu))) ^ ((BYTE2(v267) ^ 0xE7FCEB81) - 161083554 + *(v61 + 4 * (BYTE2(v267) ^ 0xC8u)));
  v274 = ((BYTE2(v271) ^ 0xE7FCEB6D) - 161083554 + *(v61 + 4 * (BYTE2(v271) ^ 0x24u))) ^ ((BYTE1(v272) ^ 0x214B7871) - 1789094196 + *(v62 + 4 * (BYTE1(v272) ^ 0x81u))) ^ 0xE289D634 ^ *(v60 + 4 * (((v267 ^ 0x992622FC) >> (v268 & 0x18 ^ 0x10) >> (v268 & 0x18 ^ 8)) ^ 0xDCu));
  v275 = *(v63 + 4 * (v265 ^ 0x8Eu)) ^ 0x569D1E72;
  v276 = (-v274 ^ (v275 - (v274 ^ v275)) ^ 0x9EB466DB ^ (v274 - ((2 * v274) & 0x3D68CDB6) - 1632344357)) + v275;
  v277 = *(v60 + 4 * (HIBYTE(v271) ^ 0x55));
  v278 = __ROR4__(__ROR4__(v277, 11) ^ 0x5B85E8AD, 21);
  v279 = v277 ^ 0x82639235;
  v280 = v279 - (v278 ^ 0xCDCCBCE8);
  if ((v280 & 0x40) != 0)
  {
    v281 = -64;
  }

  else
  {
    v281 = 64;
  }

  v282 = *(v63 + 4 * (v267 ^ 0xF8u));
  v283 = ((BYTE2(v265) ^ 0xE7FCEB37) - 161083554 + *(v61 + 4 * (BYTE2(v265) ^ 0x7Eu))) ^ *(v60 + 4 * (HIBYTE(v272) ^ 0x5F)) ^ *(v63 + 4 * (v271 ^ 0x51u)) ^ ((BYTE1(v267) ^ 0x214B78FD) - 1789094196 + *(v62 + 4 * (BYTE1(v267) ^ 0xDu)));
  LODWORD(v284) = ((((((v282 ^ 0x569D1E72u) >> (v326 & 0xD)) - ((2 * ((v282 ^ 0x569D1E72u) >> (v326 & 0xD))) & 0xD6FF3E98) + 1803525964) ^ 0x6B7F9F4C) >> (v326 & 0xD ^ 0xD)) + ((v282 << 19) ^ 0xF3900000)) ^ __ROR4__(((BYTE2(v272) ^ 0xE7FCEB53) - 161083554 + *(v61 + 4 * (BYTE2(v272) ^ 0x1Au))) ^ ((BYTE1(v265) ^ 0x214B7842) - 1789094196 + *(v62 + 4 * (BYTE1(v265) ^ 0xB2u))) ^ 0x9BEE320B ^ (((v281 + v280) ^ 0xFFFFFFBE) + v279), 13) ^ 0x7BC2C1AC;
  HIDWORD(v284) = v284;
  v285 = (v284 >> 19) ^ 0xF07455A9;
  v286 = (*(v61 + 4 * (BYTE2(v276) ^ 0x8Du)) + (BYTE2(v276) ^ 0xE7FCEBC4) - 161083554) ^ *(v60 + 4 * (HIBYTE(v273) ^ 0xA3)) ^ *(v63 + 4 * (v283 ^ 0x59u)) ^ (*(v62 + 4 * (BYTE1(v285) ^ 0x2Fu)) + (BYTE1(v285) ^ 0x214B78DF) - 1789094196);
  v287 = *(v63 + 4 * (v273 ^ 0xCFu)) ^ ((BYTE1(v283) ^ 0x214B78D4) - 1789094196 + *(v62 + 4 * (BYTE1(v283) ^ 0x24u))) ^ *(v60 + 4 * (HIBYTE(v276) ^ 0xB3)) ^ (*(v61 + 4 * (BYTE2(v285) ^ 0xEEu)) + (BYTE2(v285) ^ 0xE7FCEBA7) - 161083554);
  v288 = *(v60 + 4 * (HIBYTE(v283) ^ 0xA0));
  v289 = ((BYTE2(v283) ^ 0xE7FCEB59) - 161083554 + *(v61 + 4 * (BYTE2(v283) ^ 0x10u))) ^ *(v63 + 4 * ((v276 ^ 0x9A) - ((2 * v276) & 8) + 4)) ^ ((BYTE1(v273) ^ 0x214B78A4) - 1789094196 + *(v62 + 4 * (BYTE1(v273) ^ 0x54u))) ^ *(v60 + 4 * HIBYTE(v285));
  v290 = v288 ^ ((BYTE2(v273) ^ 0xE7FCEB77) - 161083554 + *(v61 + 4 * (BYTE2(v273) ^ 0x3Eu))) ^ ((BYTE1(v276) ^ 0x214B787B) - 1789094196 + *(v62 + 4 * (BYTE1(v276) ^ 0x8Bu))) ^ *(v63 + 4 * ((v284 >> 19) ^ 0xADu));
  if (((a26 ^ 0xB7) - 40) | a26 ^ 0xB7)
  {
    v291 = v289 ^ 0x41;
  }

  else
  {
    v291 = a26 ^ 0xB7;
  }

  v292 = *&v182[4 * (HIBYTE(v287) ^ 0xB9)];
  v293 = v292 ^ ((v286 ^ 0x12) - 1222206310) ^ (v292 >> 2) ^ (v292 >> 4) ^ *&v184[4 * (BYTE2(v289) - ((v289 >> 15) & 0xD4)) + 424] ^ *&v185[4 * (v286 ^ 0x97)] ^ (*&v321[4 * (BYTE1(v290) ^ 0xB8)] - 1810659276);
  v294 = *&v182[4 * (HIBYTE(v289) ^ 0x10)];
  v295 = v294 ^ ((v287 ^ 0xF1) - 1222206310) ^ (v294 >> 2) ^ (v294 >> 4) ^ *&v184[4 * (BYTE2(v290) ^ 0x53)] ^ (*&v321[4 * (BYTE1(v286) ^ 0x6E)] - 1810659276) ^ *&v185[4 * (v287 ^ 0x74)];
  v296 = *&v182[4 * (HIBYTE(v286) ^ 0xB2)];
  v297 = *&v182[4 * (HIBYTE(v290) ^ 0xED)];
  v298 = v297 ^ 0x752D0CD0;
  HIDWORD(v299) = v297 ^ 0x752D0CD0;
  LODWORD(v299) = v297;
  v300 = (v299 >> 28) ^ 0x807598C8 ^ ((((v297 ^ 0x752D0CD0) >> 4 << 6) ^ 0x4B1BC68A) & ((v297 >> 30) ^ 0xFFFFFFCD) & 0xFFFFFFFE | (v297 >> 30) & 1);
  v301 = *&v184[4 * (BYTE2(v287) ^ 0xF)] ^ v296 ^ (v296 >> 2) ^ (v296 >> 4) ^ (*&v321[4 * (BYTE1(v289) ^ 0x30)] - 1810659276) ^ *&v185[4 * (v290 ^ 0x46)] ^ ((v290 ^ 0xC3) - 1222206310) ^ 0x8D96118 ^ v293 ^ 0xFA7E2DE3;
  v302 = v301 - ((2 * v301) & 0xF989A2C6) + 2093273443;
  v304 = __PAIR64__(v300, __ROR4__(v330 ^ v295 ^ 0x3FC4A531 ^ v302, 29));
  v303 = v304 ^ 0xF2F27984;
  LODWORD(v304) = v300;
  v305 = (v291 - 1222206310) ^ v325 ^ v298 ^ *&v184[4 * (BYTE2(v286) ^ 0x4C)] ^ *&v322[4 * (v291 ^ 0x85)] ^ (*&v321[4 * (BYTE1(v287) ^ 0x14)] - 1810659276) ^ ((v304 >> 4) >> 2);
  v306 = v295 ^ v293 ^ 0xFA7E2DE3 ^ v305;
  HIDWORD(v304) = v303;
  LODWORD(v304) = v303;
  v307 = v304 >> 3;
  v308 = v305 ^ v302;
  v309 = v293 ^ v325 ^ v302;
  v310 = v309 ^ 0x8A7C9C3F;
  v311 = *(&off_1010A0B50 + (v323 ^ 0xB410)) - 159546074;
  v331[2] = (((v311[v310 >> 24] ^ 0x24) + (v311[v310 >> 24] ^ 0xAF) - 2 * (v311[v310 >> 24] ^ 0x24)) ^ 0xFE) + (v311[v310 >> 24] ^ 0xAF);
  v312 = *(&off_1010A0B50 + (v323 ^ 0xB245)) - 1369828007;
  v331[10] = v312[((v307 ^ 0x53E2203) >> 16) ^ 0x11] ^ ((v307 ^ 0x53E2203) >> 16) ^ 0x46;
  v331[3] = v311[HIBYTE(v307) ^ 0xBCLL] ^ 0x24;
  v331[9] = v312[BYTE2(v306) ^ 0x6DLL] ^ BYTE2(v306) ^ 0x3A;
  v313 = *(&off_1010A0B50 + (v323 - 42507)) - 1771192495;
  v314 = v313[BYTE1(v306) ^ 0x6DLL];
  v331[8] = v314 ^ (v314 >> 1) & 0x73 ^ 0xAA;
  v331[4] = BYTE2(v308) ^ v312[BYTE2(v308) ^ 0xA0] ^ 0xF7;
  v331[7] = v313[BYTE1(v309) ^ 0x27] ^ (v313[BYTE1(v309) ^ 0x27] >> 1) & 0x73 ^ 0xAA;
  v331[11] = BYTE2(v310) ^ 0x4F ^ v312[BYTE2(v310) ^ 0x18];
  v315 = *(&off_1010A0B50 + (v323 ^ 0xBE18)) - 86016146;
  v331[1] = v315[v309 ^ 0x3F] ^ 0x46 ^ (v315[v309 ^ 0x3F] >> 3) & 0x11;
  v316 = v313[BYTE1(v307) ^ 0x69];
  v317 = ((v316 >> 3) | (32 * (v316 ^ 0xFFFFFFC7))) & 0xFFFFFFDC ^ (((v316 ^ 0xC7) >> 2) | ((v316 ^ 0xFFFFFFC7) << 6));
  v331[15] = ((v317 >> 6) | (4 * v317)) ^ 0x6E;
  v331[5] = v311[HIBYTE(v308) ^ 0x68] ^ 0x24;
  v331[13] = v315[v307 ^ 3] ^ ((v315[v307 ^ 3] >> 3) & 0x11 | 0x48) ^ 0xE;
  *v331 = v315[v306 ^ 0x79] ^ 0x46 ^ (v315[v306 ^ 0x79] >> 3) & 0x11;
  LODWORD(v313) = v313[BYTE1(v308) ^ 0x4ELL];
  v331[6] = v313 & 0x7F ^ ((v313 >> 1) & 0xF3 | v313 & 0x80) ^ 0xAA;
  v331[12] = v311[HIBYTE(v306) ^ 0xA5] ^ 0x24;
  v331[14] = v315[v308 ^ 0x21] ^ 0x46 ^ (v315[v308 ^ 0x21] >> 3) & 0x11;
  return (*(v328 + 8 * v323))(a1);
}

uint64_t sub_100342898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, int a45)
{
  v50 = 1112314453 * ((((2 * (v49 - 168)) | 0xAC84E500) - (v49 - 168) + 700288384) ^ 0x39145859);
  *(v45 + 8) = v46;
  *(v49 - 152) = v50 + 640481841;
  *(v49 - 168) = v50 + v47 + 9882;
  (*(v48 + 8 * (v47 + 52070)))(v49 - 168);
  *(v49 - 132) = ((v47 - 1712404738) ^ 0x18C) - 634647737 * a27;
  *(v49 - 152) = a43 ^ (634647737 * a27);
  *(v49 - 144) = (a45 + 1) - 634647737 * a27;
  *(v49 - 156) = v47 - 1712404738 + 634647737 * a27;
  *(v49 - 136) = v47 - 634647737 * a27 - 1230179056;
  *(v49 - 168) = -634647737 * a27;
  *(v49 - 164) = ((v47 - 1712404738) ^ 0x1329) - 634647737 * a27;
  v51 = (*(v48 + 8 * (v47 ^ 0xCAEC)))(v49 - 168);
  return (*(v48 + 8 * *(v49 - 160)))(v51);
}

uint64_t sub_1003429CC()
{
  v0 = STACK[0xF10] - 25365;
  v1 = STACK[0x3808];
  STACK[0x36F0] = STACK[0x7DE8];
  STACK[0x73E8] = v1;
  LODWORD(STACK[0x56B8]) = 744170660;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100342AD8()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 48984))();
}

uint64_t sub_100342B10@<X0>(int a1@<W8>)
{
  v3 = v1 + 1584287304 + (((a1 ^ 0x77998A79) - 2006551161) ^ ((a1 ^ 0x4482BEF4) - 1149419252) ^ ((a1 ^ 0xDACE95AB ^ (v1 - 19978)) + 623971428));
  v4 = ((v3 ^ 0xF7FE288F) + 2090396925) ^ v3 ^ ((v3 ^ 0x1B4287B0) - 1876671548) ^ ((v3 ^ 0x27F84B4C) - 1398894784) ^ ((v3 ^ 0xBFDDDFFF) + 884677517);
  LODWORD(STACK[0x610]) = v4 ^ 0x9D4CFC9D;
  v5 = (*(v2 + 8 * (v1 + 5719)))(v4 ^ 0x74993B8C);
  STACK[0x608] = v5;
  return (*(v2 + 8 * (((v5 != 0) | (4 * (v5 != 0))) ^ v1)))();
}

uint64_t sub_100342C5C@<X0>(unsigned int a1@<W8>)
{
  v4 = (v1 + 24120) % (((a1 - 12533) | 0x4020) - 16426);
  v5 = *(v3 + (v1 - 611361237) % 0x13Fu);
  v6 = *(v3 + (v1 - 611361281) % 0x13Fu);
  HIDWORD(v8) = ~v6;
  LODWORD(v8) = (v6 ^ 0x58) << 24;
  v7 = v8 >> 27;
  v9 = *(v3 + (v1 - 611361379) % 0x13Fu);
  HIDWORD(v8) = ~v9;
  LODWORD(v8) = (v9 ^ 0x5E) << 24;
  v10 = (*(v3 + v4) ^ ((v5 >> 5) | (8 * v5)) ^ 0xFFFFFFA5) + v7 - (v8 >> 25) + 37;
  LOBYTE(v9) = v10 & 0x19 ^ 0xA3;
  v11 = v10 ^ 0x5A;
  *(v3 + v4) = v10 ^ (2 * (v11 & (2 * (v11 & (2 * (v11 & (2 * (v11 & (2 * (v11 & (2 * (((2 * v10) & 0x36 ^ 0x42) & (v10 ^ 0x52) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ 0x46;
  return (*(v2 + 8 * ((1810 * (v1 == 611362499)) ^ a1)))();
}

uint64_t sub_100342DD4@<X0>(int a1@<W8>)
{
  v2 = a1 - 8973;
  v3 = v1 < ((5 * (v2 ^ 0x625C) - 8848) | 0x2290) + 2147383472;
  return (*(STACK[0xF18] + 8 * ((2 * v3) | (16 * v3) | v2)))();
}

void sub_100342E84()
{
  v0 = *(&off_1010A0B50 + (byte_101032440[byte_100F52120[(91 * ((qword_1010BEAD8 - qword_1010B12C0) ^ 0x76))] ^ 0x37] ^ (91 * ((qword_1010BEAD8 - qword_1010B12C0) ^ 0x76))) + 757);
  v1 = (*(v0 - 513219118) - qword_1010B12C0) ^ &v5;
  v2 = 952459099 * v1 + 0x1A7B4580FE86B8ALL;
  v3 = 952459099 * (v1 ^ 0xFE584BA7F0179476);
  qword_1010B12C0 = v2;
  *(v0 - 513219118) = v3;
  v4 = *(&off_1010A0B50 + (byte_100E9BFE0[byte_100D70240[(91 * (qword_1010B12C0 ^ 0x76 ^ v3))] ^ 0xD0] ^ (91 * (qword_1010B12C0 ^ 0x76 ^ v3))) + 919);
  *(v4 - 2115206594) = 0;
  *(v4 - 2115206586) = 0;
}

void sub_100342FB4(uint64_t a1)
{
  v2 = *(*(a1 + 24) + 4);
  v3 = v2 - 1051086576;
  if (v2 - 1051086576 < 0)
  {
    v3 = 1051086576 - v2;
  }

  v1 = *(a1 + 8) ^ (906386353 * ((2 * (a1 & 0x211C234B) - a1 - 555492172) ^ 0xEFE21190));
  __asm { BRAA            X12, X17 }
}

uint64_t sub_100343114(uint64_t a1, uint64_t a2)
{
  STACK[0x5628] = 0;
  STACK[0x1898] = 0;
  STACK[0x9330] = 0;
  LODWORD(STACK[0x93D4]) = -371865839;
  STACK[0x3C38] = 0;
  LODWORD(STACK[0x3994]) = 0;
  return (*(STACK[0xF18] + 8 * ((13081 * (v2 == (((((v3 ^ 0x9235) + 1879074227) & 0x8FFF9BC6) + 29045) ^ 0xE9D54C2B))) ^ v3 ^ 0x9235)))(a1, a2, 371891535);
}

uint64_t sub_100343198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, unsigned int a23, uint64_t a24)
{
  v30 = 139493411 * ((~v24 & 0x54E57FAC | v24 & 0xAB1A8050) ^ 0x58C89EE9);
  *(v29 - 120) = a24 + 13 * ((((v28 - 549006388) % a23) ^ 0x39BB97D9) + ((((v28 - 549006388) % a23) << ((v26 + 66) & 0xEF ^ 0xCA)) & 0x73772FB2)) + 293161467;
  *(v29 - 132) = v26 - v30 - 1596640814;
  *(v29 - 128) = v30 + 404414908;
  *(v29 - 144) = v27;
  v31 = (*(v25 + 8 * (v26 - 1596627633)))(v29 - 144);
  return (*(v25 + 8 * ((60515 * (*(v29 - 136) == -371865839)) ^ (v26 - 1596670198))))(v31);
}

uint64_t sub_1003432B8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v19 - 136) = a1 ^ 0x9046;
  v21 = 796 * (a1 ^ 0x9046);
  *(v19 - 128) = v17;
  *(v19 - 124) = v21;
  v22 = -1802333311 * v16;
  v23 = *(*(&off_1010A0B50 + a1 - 34871) + ((v21 - 14073) & v22 ^ 0xC1) - 209833563);
  v24 = *(*(&off_1010A0B50 + (a1 ^ 0x9A60)) + (((-27775 * v16) >> 8) ^ 0x7DLL) - 1268256650) << 8;
  v25 = (*(*(&off_1010A0B50 + (a1 ^ 0x9DC2)) + (HIBYTE(v22) ^ 0x7CLL) - 280103194) ^ ((HIBYTE(v22) ^ 0xBA) - (HIBYTE(v22) ^ 0x2E))) << 24;
  v26 = (((*(*(&off_1010A0B50 + a1 - 35341) + (BYTE2(v22) ^ 5) - 403920607) ^ BYTE2(v22)) << 16) ^ 0x7340227E) & (v24 ^ 0x7BFF847F) | v24 & 0xDDDDDDDD;
  v27 = v16[15];
  v28 = ((((79 - (((v23 ^ 0xFFFFFF8D) + 115) ^ ((v23 ^ 0xFFFFFFF6) + 10) ^ ((v23 ^ 0xD9) + 39))) ^ (-120 - ((8 * v23) ^ 0x10))) & 0x98 | (v26 ^ 0x748F0219) & (((79 - (((v23 ^ 0x8D) + 115) ^ ((v23 ^ 0xF6) + 10) ^ ((v23 ^ 0xD9) + 39))) ^ (-120 - ((8 * v23) ^ 0x10))) ^ 0x7FFFFF18)) ^ 0xB82D80D7) & (v25 ^ 0x43FFFFFF) ^ v25 & 0x40000000;
  v29 = v16[8];
  v30 = *(&off_1010A0B50 + a1 - 35095) - 1179604539;
  v31 = v30[v27 ^ 0x89];
  v32 = v27 ^ 0xDB;
  v33 = *(&off_1010A0B50 + a1 - 33328) - 1199254554;
  v34 = ((((v33[v29 ^ 0xED] ^ 0x16) + (v29 ^ 0xC2) - 2 * ((v33[v29 ^ 0xED] ^ 0x32) & (v29 ^ 0x42) ^ v29 & 0x24)) << 16) ^ 0xFCEF0F0D) & ((((v32 + v31 - 62) ^ 0xEA) << 24) ^ 0x3AFF7F2D) & 0xFCFFFFFF | ((((v32 + v31 - 62) ^ 0xEA) & 3) << 24);
  v35 = *(&off_1010A0B50 + (a1 ^ 0x9AFA)) - 1967211330;
  v36 = v35[v16[3] ^ 0xDELL];
  v37 = v36 >> 1;
  v38 = (v34 ^ 0x114F8E62) & ((v36 << 8) ^ 0xFFFFDF6F);
  v39 = *(&off_1010A0B50 + a1 - 36649) - 1464939739;
  v40 = v39[v16[6] ^ 0x7ALL];
  v41 = v40 & 0x44 ^ 0x6C;
  v42 = v40 ^ (2 * ((v40 ^ 0xC) & (2 * ((v40 ^ 0xC) & (2 * ((v40 ^ 0xC) & (2 * ((v40 ^ 0xC) & (2 * v41) ^ v41)) ^ v41)) ^ v41)) ^ v41));
  v43 = v42 & 0xDA ^ 0x2662ECEF ^ (v42 ^ 0xFFFFFFFB) & ((v38 & 0xFFFF81FF | ((v37 & 0x3F) << 9)) ^ 0x4D9F924A);
  v44 = (((v16[5] ^ 0xDB) + v30[v16[5] ^ 0x89]) << 24) - 1040187392;
  v45 = (((v33[v16[11] ^ 0xEDLL] ^ v16[11]) << 16) ^ 0x772A6CF4) & (v44 ^ 0xD3FF6CF4) | v44 & 0x88888888;
  v46 = (((v45 | 0x9309) & ((v35[*v16 ^ 0xDELL] << 8) ^ 0x6C006C2D) | v45 & 0x93FF0080) ^ 0x289E5A0F) & ((v39[v16[12] ^ 0x7ALL] - 116) ^ 0xFFFFFFBF);
  v47 = (((v16[7] ^ 0xDB) + v30[v16[7] ^ 0x89]) << 24) - 1040187392;
  v48 = (((v33[v16[13] ^ 0xEDLL] ^ v16[13]) << 16) ^ 0xD9D43867) & (v47 ^ 0xD3FFFF7F);
  v49 = v16[2];
  v50 = v30[v49 ^ 0x89];
  LODWORD(v30) = (((v48 | v47 & 0x26000000) ^ 0x227C710) & ((v35[v16[4] ^ 0xDELL] << 8) ^ 0x6F2F0551) | v48 & 0x90D00000) ^ 0xDF0F30C5;
  LOBYTE(v47) = v39[v16[9] ^ 0x7ALL] - 116;
  v51 = v16[10];
  v52 = v33[v51 ^ 0xED];
  LODWORD(v35) = v35[v16[1] ^ 0xDELL];
  LODWORD(v33) = v28 ^ (v39[v16[12] ^ 0x7ALL] - 116) & 0x5D ^ v46 ^ 0x6C3ACC29;
  v53 = (((v52 ^ v51) << 16) ^ 0x733CC39F) & (((((v49 ^ 0xDB) + v50) << 24) - 1040187392) ^ 0x5BFFFFBF) | ((((v49 ^ 0xDB) + v50) << 24) - 1040187392) & 0x8C000000;
  v54 = v39[v16[14] ^ 0x7ALL] - 116;
  v55 = v54 & 0xF0 ^ 0x95ED54E5 ^ (((v53 ^ 0x80003C00) & ((v35 << 8) ^ 0xEA10D61D) | v53 & 0x15EF0000) ^ 0xE083E912) & (v54 ^ 0xFFFFFF9F);
  v56 = v43 ^ v33 ^ v55;
  v57 = v43 ^ (v30 & (~v47 | 0xFFFFFF00) | v47 & 0x6B) ^ 0xD83A3134;
  v58 = v56 ^ v57;
  v59 = v57 ^ v33;
  v60 = v55 ^ v28;
  v61 = *(&off_1010A0B50 + a1 - 34984) - 1005831762;
  v62 = *(&off_1010A0B50 + (a1 ^ 0x8298)) - 1867571762;
  v63 = *(&off_1010A0B50 + a1 - 34931) - 1696727159;
  v64 = *(&off_1010A0B50 + (a1 ^ 0x8049)) - 853640795;
  LODWORD(v51) = *&v61[4 * ((v60 ^ 0xFDE092AA) >> 24)] ^ 0xA2935C20;
  LODWORD(v33) = *&v62[4 * BYTE2(v56)] ^ v51 ^ v59 ^ 0x74 ^ (2 * v51 * v51) ^ *&v63[4 * (BYTE1(v58) ^ 0xFA)] ^ *&v64[4 * (v59 ^ 0xCF)];
  v65 = *&v61[4 * ((v59 ^ 0x4E896D74) >> 24)] ^ 0xA2935C20;
  LODWORD(v51) = v65 ^ *&v62[4 * ((v60 ^ 0xFDE092AA) >> 16)] ^ *&v63[4 * (BYTE1(v56) ^ 0x55)] ^ v58 ^ (2 * v65 * v65) ^ *&v64[4 * (v58 ^ 0x80)];
  v66 = *&v61[4 * (HIBYTE(v58) ^ 0xBC)] ^ 0xA2935C20;
  v67 = *&v62[4 * ((v59 ^ 0x4E896D74) >> 16)] ^ v56 ^ v66 ^ *&v63[4 * ((v60 ^ 0x92AA) >> 8)] ^ *&v64[4 * (v56 ^ 0xA8)] ^ (2 * v66 * v66);
  v68 = *&v61[4 * (HIBYTE(v56) ^ 0x24)] ^ 0xA2935C20;
  v69 = *&v62[4 * (BYTE2(v58) ^ 0xCC)] ^ v60 ^ 0xAA ^ v68 ^ *&v63[4 * ((v59 ^ 0x6D74) >> 8)] ^ *&v64[4 * (v60 ^ 0x11)] ^ (2 * v68 * v68);
  v70 = *&v61[4 * ((v33 ^ 0x730C3E52) >> 24)] ^ 0xA2935C20;
  LODWORD(v49) = v67 ^ 0x5EEBCBFD;
  v71 = *&v62[4 * (BYTE2(v69) ^ 0x21)] ^ v51 ^ v70 ^ *&v63[4 * ((v67 ^ 0xCBFD) >> 8)] ^ (2 * v70 * v70) ^ *&v64[4 * (v51 ^ 0xCE)];
  v72 = *&v61[4 * (BYTE3(v51) ^ 0x8E)] ^ 0xA2935C20;
  v73 = v72 ^ v67 ^ 0xFD ^ *&v62[4 * ((v33 ^ 0x730C3E52) >> 16)] ^ (2 * v72 * v72) ^ *&v63[4 * (BYTE1(v69) ^ 0x7B)] ^ *&v64[4 * (v67 ^ 0x46)];
  v74 = v69 ^ 0xC3465AAF;
  v75 = *&v61[4 * BYTE3(v49)] ^ 0xA2935C20;
  v76 = *&v62[4 * (BYTE2(v51) ^ 0xE7)] ^ v69 ^ 0xAF ^ v75 ^ *&v63[4 * ((v33 ^ 0x3E52) >> 8)] ^ *&v64[4 * (v69 ^ 0x14)] ^ (2 * v75 * v75);
  v77 = *&v61[4 * HIBYTE(v74)] ^ 0xA2935C20;
  v78 = *&v63[4 * (BYTE1(v51) ^ 0x63)] ^ v33 ^ 0x52 ^ v77 ^ *&v62[4 * BYTE2(v49)] ^ *&v64[4 * (v33 ^ 0xE9)] ^ (2 * v77 * v77);
  v79 = v73 ^ 0xA3CDAEA2;
  BYTE2(v49) = BYTE2(v76) ^ 0xBB;
  LODWORD(v51) = *&v61[4 * (HIBYTE(v71) ^ 0x5C)] ^ 0xA2935C20;
  v80 = v78 ^ 0xDA376681;
  LODWORD(v51) = *&v63[4 * ((v76 ^ 0xE0E3) >> 8)] ^ v73 ^ 0xA2 ^ v51 ^ *&v62[4 * ((v78 ^ 0xDA376681) >> 16)] ^ (2 * v51 * v51) ^ *&v64[4 * (v73 ^ 0x19)];
  v81 = *&v61[4 * ((v73 ^ 0xA3CDAEA2) >> 24)] ^ 0xA2935C20;
  LODWORD(v33) = *&v62[4 * (BYTE2(v71) ^ 0x4C)] ^ v76 ^ 0xE3 ^ *&v63[4 * ((v78 ^ 0x6681) >> 8)] ^ *&v64[4 * (v76 ^ 0x58)] ^ v81 ^ (2 * v81 * v81);
  v82 = *&v61[4 * ((v76 ^ 0x3FBBE0E3u) >> 24)] ^ 0xA2935C20;
  v83 = *&v62[4 * BYTE2(v79)] ^ v78 ^ 0x81 ^ v82 ^ *&v63[4 * (BYTE1(v71) ^ 0x15)] ^ *&v64[4 * (v78 ^ 0x3A)] ^ (2 * v82 * v82);
  v84 = *&v61[4 * HIBYTE(v80)] ^ 0xA2935C20;
  v85 = *&v62[4 * BYTE2(v49)] ^ v71 ^ v84 ^ *&v64[4 * (v71 ^ 0x99)] ^ (2 * v84 * v84) ^ *&v63[4 * BYTE1(v79)];
  v86 = ((v85 ^ 0x91062714) >> 16);
  LODWORD(v49) = *&v61[4 * (BYTE3(v51) ^ 0xEE)];
  v87 = v49 ^ v33 ^ 0x49 ^ *&v63[4 * (BYTE1(v83) ^ 0xA)] ^ *&v62[4 * (v86 ^ 0x67)] ^ *&v64[4 * (v33 ^ 0xF2)] ^ (2 * (v49 ^ 0xA2935C20) * (v49 ^ 0xA2935C20)) ^ (((v86 - (v86 ^ 0x6E7D7D10)) ^ 0x96B1AF4E ^ (v86 - (((v85 ^ 0x91062714) >> 15) & 0x15C) + 1766740142)) + 2 * (((v86 - (v86 ^ 0x6E7D7D10)) ^ 0xEC) & v86 ^ ((v85 ^ 0x91062714) >> 16) & 0xC));
  v88 = *&v61[4 * ((v33 ^ 0x6B767E49) >> 24)] ^ 0xA2935C20;
  LODWORD(v49) = *&v62[4 * (BYTE2(v51) ^ 0x57)] ^ v83 ^ *&v63[4 * ((v85 ^ 0x2714) >> 8)] ^ *&v64[4 * (v83 ^ 0xDB)] ^ v88 ^ (2 * v88 * v88);
  v89 = *&v61[4 * (HIBYTE(v83) ^ 0x2B)] ^ 0xA2935C20;
  v90 = *&v62[4 * ((v33 ^ 0x6B767E49) >> 16)];
  *(v19 - 120) = v18;
  v91 = v90 ^ v85 ^ 0x14 ^ v89 ^ *&v63[4 * (BYTE1(v51) ^ 0x20)] ^ (2 * v89 * v89) ^ *&v64[4 * (v85 ^ 0xAF)];
  v92 = *&v61[4 * ((v85 ^ 0x91062714) >> 24)] ^ 0xA2935C20;
  v93 = v92 ^ v51 ^ *&v63[4 * ((v33 ^ 0x7E49) >> 8)] ^ (2 * v92 * v92) ^ *&v62[4 * (BYTE2(v83) ^ 0xF8)] ^ *&v64[4 * (v51 ^ 0x76)];
  v94 = v87 ^ v86;
  v95 = *&v61[4 * ((v94 ^ 0xB3AB7CB8) >> 24)] ^ 0xA2935C20;
  v96 = *&v62[4 * ((v93 ^ 0x4FBF2F8Bu) >> 16)] ^ v49 ^ v95 ^ *&v63[4 * ((v91 ^ 0x6B79) >> 8)] ^ *&v64[4 * (v49 ^ 0x2B)] ^ (2 * v95 * v95);
  v97 = *&v61[4 * (BYTE3(v49) ^ 0x8A)] ^ 0xA2935C20;
  v98 = *&v62[4 * ((v94 ^ 0xB3AB7CB8) >> 16)] ^ v91 ^ 0x79 ^ *&v63[4 * (BYTE1(v93) ^ 0xE)] ^ v97 ^ (2 * v97 * v97) ^ *&v64[4 * (v91 ^ 0xC2)];
  v99 = *&v61[4 * ((v91 ^ 0xF7DF6B79) >> 24)] ^ 0xA2935C20;
  v100 = v99 ^ v93 ^ 0x8B ^ *&v62[4 * (BYTE2(v49) ^ 0xFB)] ^ (2 * v99 * v99) ^ *&v63[4 * (BYTE1(v87) ^ 0x5D)] ^ *&v64[4 * (v93 ^ 0x30)];
  LODWORD(v49) = *&v63[4 * (BYTE1(v49) ^ 0x52)];
  v101 = *&v61[4 * ((v93 ^ 0x4FBF2F8Bu) >> 24)] ^ 0xA2935C20;
  v102 = v101 ^ v94 ^ 0xB8 ^ *&v62[4 * ((v91 ^ 0xF7DF6B79) >> 16)] ^ (2 * v101 * v101) ^ *&v64[4 * (v94 ^ 3)] ^ v49 & 0xDFFFFFFF ^ (v49 & 0x20000000 | 0x439E802);
  LODWORD(v49) = v102 ^ 0x13EF7F74;
  v103 = *&v61[4 * ((v96 ^ 0x3A3D6F9Eu) >> 24)] ^ 0xA2935C20;
  v104 = *&v62[4 * ((v102 ^ 0x13EF7F74u) >> 16)] ^ v98 ^ 0x34 ^ v103 ^ *&v63[4 * (BYTE1(v100) ^ 0xBE)] ^ *&v64[4 * (v98 ^ 0x8F)] ^ (2 * v103 * v103);
  v105 = *&v61[4 * ((v98 ^ 0xAA012434) >> 24)] ^ 0xA2935C20;
  v106 = v100 ^ *&v62[4 * ((v96 ^ 0x3A3D6F9Eu) >> 16)] ^ *&v63[4 * (BYTE1(v102) ^ 0x5E)] ^ v105 ^ (2 * v105 * v105) ^ *&v64[4 * (v100 ^ 0xD8)] ^ 0xD04DD33;
  v225 = v20;
  v107 = *&v61[4 * (HIBYTE(v100) ^ 0x6A)] ^ 0xA2935C20;
  v108 = *&v62[4 * ((v98 ^ 0xAA012434) >> 16)] ^ v102 ^ 0x74 ^ v107 ^ *&v63[4 * ((v96 ^ 0x6F9E) >> 8)] ^ *&v64[4 * (v102 ^ 0xCF)] ^ (2 * v107 * v107);
  LODWORD(v49) = *&v61[4 * BYTE3(v49)] ^ 0xA2935C20;
  v109 = *&v62[4 * (BYTE2(v100) ^ 0x17)] ^ v96 ^ 0x9E ^ v49 ^ *&v64[4 * (v96 ^ 0x25)] ^ (2 * v49 * v49) ^ *&v63[4 * (BYTE1(v98) ^ 5)];
  LODWORD(v111) = __ROR4__(((v106 & 0x1CD8E69E ^ 0x298B5F81) & (v106 & 0xE3271961 ^ 0x1CD8E7BE) | v106 & 0xC2240060) ^ 0x563D7D80, 10) ^ 0x88C5799B;
  HIDWORD(v111) = v111;
  v110 = v111 >> 22;
  v112 = v108 ^ 0x50EAA7CC;
  v113 = *&v61[4 * ((v104 ^ 0x4FD90E0Eu) >> 24)] ^ 0xA2935C20;
  v114 = v113 ^ *&v63[4 * ((v108 ^ 0xA7CC) >> 8)] ^ *&v62[4 * (BYTE2(v109) ^ 0x68)] ^ (2 * v113 * v113) ^ v110 ^ 0x19 ^ *&v64[4 * ((v111 >> 22) ^ 0xA2)];
  v115 = *&v62[4 * ((v104 ^ 0x4FD90E0Eu) >> 16)] ^ v108 ^ 0xCC ^ *&v64[4 * (v108 ^ 0x77)];
  v116 = *&v61[4 * ((v110 ^ 0xCBD79D19) >> 24)] ^ 0xA2935C20;
  v117 = v115 ^ v116 ^ (2 * v116 * v116);
  v118 = v109 ^ 0x360FDD78;
  v119 = v117 ^ *&v63[4 * ((v109 ^ 0xDD78) >> 8)];
  v120 = *&v61[4 * HIBYTE(v112)] ^ 0xA2935C20;
  v121 = v120 ^ v109 ^ 0x78 ^ *&v62[4 * ((v110 ^ 0xCBD79D19) >> 16)] ^ (2 * v120 * v120) ^ *&v63[4 * ((v104 ^ 0xE0E) >> 8)] ^ *&v64[4 * (v109 ^ 0xC3)];
  v122 = *&v61[4 * HIBYTE(v118)] ^ 0xA2935C20;
  v123 = v122 ^ v104 ^ 0xE ^ *&v62[4 * BYTE2(v112)] ^ (2 * v122 * v122) ^ *&v64[4 * (v104 ^ 0xB5)] ^ *&v63[4 * (BYTE1(v110) ^ 0xBC)];
  v124 = v121 ^ 0x970F2438;
  LODWORD(v49) = *&v61[4 * ((v114 ^ 0x83DBC587) >> 24)] ^ 0xA2935C20;
  v125 = *&v62[4 * (BYTE2(v123) ^ 0x5A)] ^ v119 ^ v49 ^ *&v63[4 * ((v121 ^ 0x2438) >> 8)] ^ *&v64[4 * (v119 ^ 0x4B)] ^ (2 * v49 * v49);
  LODWORD(v49) = *&v62[4 * ((v114 ^ 0x83DBC587) >> 16)] ^ v121 ^ 0x38 ^ *&v63[4 * (BYTE1(v123) ^ 0x86)] ^ *&v64[4 * (v121 ^ 0x83)];
  v126 = *&v61[4 * (HIBYTE(v119) ^ 0x67)] ^ 0xA2935C20;
  LODWORD(v49) = v49 ^ v126 ^ (2 * v126 * v126);
  v127 = *&v61[4 * HIBYTE(v124)] ^ 0xA2935C20;
  v128 = *&v63[4 * ((v114 ^ 0xC587) >> 8)] ^ v123 ^ v127 ^ *&v64[4 * (v123 ^ 0x97)] ^ *&v62[4 * (BYTE2(v119) ^ 0x5E)] ^ (2 * v127 * v127);
  v129 = *&v61[4 * (HIBYTE(v123) ^ 0x9C)] ^ 0xA2935C20;
  v130 = *&v62[4 * BYTE2(v124)] ^ v114 ^ 0x87 ^ v129 ^ *&v64[4 * (v114 ^ 0x3C)] ^ *&v63[4 * (BYTE1(v119) ^ 9)] ^ (2 * v129 * v129);
  v131 = v128 ^ 0x2EC60B09;
  v132 = *&v61[4 * ((v125 ^ 0x2CCB2861u) >> 24)] ^ 0xA2935C20;
  v133 = v132 ^ *&v62[4 * ((v130 ^ 0xF8711C91) >> 16)] ^ *&v63[4 * ((v128 ^ 0xB09) >> 8)] ^ (2 * v132 * v132) ^ __ROR4__(__ROR4__(v49 ^ 0xD315404F ^ *&v64[4 * (v49 ^ 0xBB)], 7) ^ 0x2C5F9B63, 25);
  v134 = *&v62[4 * ((v125 ^ 0x2CCB2861u) >> 16)] ^ v128 ^ 9 ^ *&v63[4 * ((v130 ^ 0x1C91) >> 8)] ^ *&v64[4 * (v128 ^ 0xB2)];
  v135 = *&v61[4 * (BYTE3(v49) ^ 0x67)] ^ 0xA2935C20;
  v136 = v134 ^ v135 ^ (2 * v135 * v135);
  v137 = *&v61[4 * ((v130 ^ 0xF8711C91) >> 24)];
  v138 = *&v61[4 * HIBYTE(v131)] ^ 0xA2935C20;
  LODWORD(v61) = *&v62[4 * (BYTE2(v49) ^ 0xAE)] ^ v130 ^ 0x91 ^ v138 ^ *&v63[4 * (BYTE1(v125) ^ 9)] ^ *&v64[4 * (v130 ^ 0x2A)];
  v139 = *&v63[4 * (BYTE1(v49) ^ 0x75)] ^ v125 ^ 0x61 ^ v137 ^ 0xA2935C20 ^ *&v62[4 * (BYTE2(v131) ^ 0x67)] ^ *&v64[4 * (v125 ^ 0xDA)] ^ (2 * (v137 ^ 0xA2935C20) * (v137 ^ 0xA2935C20));
  v140 = *(&off_1010A0B50 + a1 - 35389) - 304945295;
  LODWORD(v49) = v61 ^ (2 * v138 * v138);
  LODWORD(v61) = *&v140[4 * (BYTE2(v49) ^ 0x5D)];
  v141 = -1371508563 * *&v140[4 * (BYTE2(v139) ^ 0xF0)] - 653422319;
  LODWORD(v64) = -1371508563 * *&v140[4 * (BYTE2(v133) ^ 0x62)] - 653422319;
  LODWORD(v140) = -1371508563 * *&v140[4 * ((v136 ^ 0x4737F112u) >> 16)] - 653422319;
  v143 = *(&off_1010A0B50 + (a1 ^ 0x90CC)) - 2101351942;
  v144 = *(&off_1010A0B50 + (a1 ^ 0x9590)) - 357496698;
  v145 = *(&off_1010A0B50 + (a1 ^ 0x9B02)) - 1239883098;
  v146 = *&v144[4 * (BYTE1(v49) ^ 0x8F)];
  v147 = v141 ^ *&v143[4 * (HIBYTE(v133) ^ 0xCE)] ^ v146 ^ (v146 >> 3) ^ (v146 >> 5) ^ (v145[v136 ^ 0x58] ^ v136);
  LOBYTE(v141) = v145[v49 ^ 0x28] ^ v49;
  LODWORD(v63) = *&v143[4 * ((v136 ^ 0x4737F112u) >> 24)];
  LODWORD(v49) = *&v143[4 * (BYTE3(v49) ^ 0x8B)];
  LODWORD(v143) = *&v143[4 * (HIBYTE(v139) ^ 0x7F)];
  LOBYTE(v146) = v145[v139 ^ 0x69] ^ v139;
  v148 = *&v144[4 * (BYTE1(v139) ^ 0x7D)];
  v149 = *&v144[4 * (BYTE1(v133) ^ 0xD3)];
  v150 = *&v144[4 * (BYTE1(v136) ^ 0xEB)];
  v151 = v143 ^ (-1371508563 * v61 - 653422319) ^ (v145[v133 ^ 0x7ALL] ^ v133) ^ v147 ^ __ROR4__(((((v150 ^ 0x8D491AC8 ^ (v150 >> 2)) << 7) & 0xFFFFF0FF ^ 0x4092117F) & (((v150 ^ 0x8D491AC8 ^ (v150 >> 2)) >> 25) ^ 0x4DD29168) | ((v150 ^ 0x8D491AC8 ^ (v150 >> 2)) << 7) & 0xB22D6C00) ^ __ROR4__(v150 ^ 0x8D491AC8, 22) ^ 0x5B0D9CA6, 10);
  v28 ^= 0x57EF27Eu;
  v152 = v63 ^ v148 ^ v64 ^ (v148 >> 3) ^ (v148 >> 5) ^ v141 ^ 0x444E7E25 ^ v151;
  LODWORD(v64) = v49 ^ v149 ^ v140 ^ (v149 >> 3) ^ (v149 >> 5) ^ v146 ^ 0x48D7366E ^ v152;
  LODWORD(v140) = v152 ^ v28;
  v153 = *(&off_1010A0B50 + (a1 ^ 0x9A55)) - 2102619479;
  v154 = v147 ^ v28 ^ 0x454E39CB ^ v64;
  LODWORD(v145) = v154 ^ v151 ^ 0x344C7DB2;
  LODWORD(v64) = v145 ^ v64;
  LODWORD(v144) = -125394337 * *&v153[4 * (BYTE2(v145) ^ 0x4E)] + 1507644183;
  v155 = -125394337 * *&v153[4 * (BYTE2(v154) ^ 0x34)] + 1507644183;
  v156 = *(&off_1010A0B50 + a1 - 35787) - 1721237135;
  v157 = *(&off_1010A0B50 + (a1 ^ 0x96EC)) - 1755406054;
  v158 = *(&off_1010A0B50 + (a1 ^ 0x9682)) - 1011959258;
  HIDWORD(v111) = *&v157[4 * (BYTE1(v140) ^ 0xAA)];
  LODWORD(v111) = HIDWORD(v111);
  v159 = (-125394337 * *&v153[4 * (BYTE2(v140) ^ 0x78)] + 1507644183) ^ *&v156[4 * ((v140 >> 24) ^ 0x2E)] ^ (v111 >> 7) ^ ((v111 >> 7) >> 1) ^ ((v111 >> 7) >> 5) ^ v158[v140 ^ 0x93] ^ 0x84 ^ (v158[v140 ^ 0x93] << 6) ^ (8 * (v158[v140 ^ 0x93] ^ 0x84));
  v160 = v159 ^ 0xBAA6BE7E;
  v161 = *(&off_1010A0B50 + a1 - 34440) - 1411724082;
  v162 = v64 ^ 0xDELL;
  HIDWORD(v111) = *&v157[4 * (BYTE1(v64) ^ 0x6E)];
  LODWORD(v111) = HIDWORD(v111);
  LODWORD(v63) = v111 >> 7;
  LODWORD(v64) = (-125394337 * *&v153[4 * (BYTE2(v64) ^ 0x9B)] + 1507644183) ^ *&v156[4 * ((v64 >> 24) ^ 0x73)] ^ v63 ^ (v63 >> 1);
  LODWORD(v153) = v158[v162] ^ 0x67 ^ (8 * (v158[v162] ^ 0x67)) ^ ((v158[v162] << 6) | 0xC) ^ v64 ^ (v63 >> 5);
  v163 = *(&off_1010A0B50 + (a1 ^ 0x99A9)) - 1199586683;
  v164 = *(&off_1010A0B50 + (a1 ^ 0x9B0C)) - 617657670;
  v165 = *(&off_1010A0B50 + *(v19 - 136)) - 840782526;
  LODWORD(v143) = *&v164[4 * (v159 ^ 0x87)];
  LOBYTE(v21) = v158[(v154 ^ v151) ^ 0x3DLL];
  HIDWORD(v111) = *&v157[4 * (BYTE1(v145) ^ 0x49)];
  LODWORD(v111) = HIDWORD(v111);
  LODWORD(v33) = v144 ^ *&v156[4 * (((v154 ^ v151) >> 24) ^ 0x14)] ^ (v111 >> 7) ^ ((v111 >> 7) >> 1) ^ ((v111 >> 7) >> 5) ^ ((v21 << 6) | 0x3C) ^ v21 ^ 3 ^ ((8 * (v21 ^ 3)) | 1);
  HIDWORD(v111) = *&v157[4 * (BYTE1(v154) ^ 0x32)];
  LODWORD(v111) = HIDWORD(v111);
  v166 = v155 ^ *&v156[4 * (HIBYTE(v154) ^ 0xDC)] ^ (v111 >> 7) ^ ((v111 >> 7) >> 1) ^ ((v111 >> 7) >> 5) ^ v158[v154 ^ 0xBLL] ^ 0x78 ^ (v158[v154 ^ 0xBLL] << 6) ^ (8 * (v158[v154 ^ 0xBLL] ^ 0x78));
  v222 = *&v163[4 * (BYTE1(v160) ^ 0xB2)] ^ BYTE1(v160) ^ v143 ^ *&v161[4 * ((v160 >> (v145 & 0x10 ^ 0x10) >> (v145 & 0x10)) ^ 0x85)] ^ v153 ^ (((4 * v143) ^ 0x42A8DEF0) + 653131736) ^ (v165[v160 >> 24] + 94);
  LODWORD(v144) = v33 ^ v222 ^ 0x745F9BB4;
  v167 = (v166 ^ 0x52223A6C) + (v144 ^ 0xB0DD6166) - 2 * ((v166 ^ 0x52223A6C) & (v144 ^ 0xB0DD6166));
  v168 = *&v164[4 * ((v167 ^ v159) ^ 0xB3)];
  v169 = *&v161[4 * (((v167 ^ v159) >> 16) ^ 0x5E)] ^ v222 ^ 0x745F9BB4 ^ *&v163[4 * (((v167 ^ v159 ^ 0x74A) >> 8) ^ 0xB2)] ^ v168 ^ (((4 * v168) ^ 0x42A8DEF0) + 653131736) ^ (v165[(v167 ^ v159 ^ 0x8DB074A) >> 24] + 94) ^ ((v167 ^ v159 ^ 0x74A) >> 8);
  LODWORD(v33) = v144 ^ 0x1738C493 ^ v169 ^ v160;
  LODWORD(v156) = v144 ^ 0x1738C493 ^ v169;
  v224 = v156;
  v170 = v33 ^ 0x108B8CEC;
  v171 = *&v164[4 * (v33 ^ 0x15)];
  v172 = *&v163[4 * (BYTE1(v170) ^ 0xB2)] ^ *&v161[4 * (BYTE2(v170) ^ 0x85)] ^ v171 ^ (((4 * v171) ^ 0x42A8DEF0) + 653131736) ^ (v165[v170 >> 24] + 94) ^ v169 ^ 0xBF4C4F22 ^ BYTE1(v170);
  *(v19 - 144) = v167;
  v173 = v172 ^ v167 ^ 0x80CC6729;
  LODWORD(v160) = v173 ^ v170;
  v174 = v173 ^ v170 ^ 0x38EE44F7;
  v175 = *&v164[4 * (v160 ^ 0xE)];
  v176 = (v165[v174 >> 24] + 94) ^ __ROR4__(__ROR4__(*&v161[4 * (BYTE2(v160) ^ 0x6B)] ^ v175 ^ *&v163[4 * (BYTE1(v174) ^ 0xB2)] ^ v172 ^ (((4 * v175) ^ 0x42A8DEF0) + 653131736) ^ BYTE1(v174) ^ 0x203D007C, 29) ^ 0xCD788259, 3) ^ 0xF050251C;
  v177 = v176 - ((2 * v176) & 0x866BCA2C) + 1127605526;
  v178 = v172 ^ v156;
  HIDWORD(v221) = v177 ^ v172 ^ v156;
  LODWORD(v160) = HIDWORD(v221) ^ 0x90B5BD8D ^ v173;
  v179 = v160 ^ v174;
  v180 = v160 ^ v174 ^ 0x9BE50A36;
  LODWORD(v158) = *&v163[4 * (BYTE1(v180) ^ 0xB2)] ^ *&v161[4 * (BYTE2(v180) ^ 0x85)] ^ *&v164[4 * ((v160 ^ v174) ^ 0xCF)] ^ (((4 * *&v164[4 * ((v160 ^ v174) ^ 0xCF)]) ^ 0x42A8DEF0) + 653131736) ^ (v165[v180 >> 24] + 94) ^ v177 ^ BYTE1(v180);
  v181 = v158 ^ HIDWORD(v221) ^ 0x90B5BD8D;
  *(v19 - 136) = v181;
  LODWORD(v162) = v181 ^ 0x4BE8F671;
  LODWORD(v221) = v160;
  LODWORD(v174) = v181 ^ 0x4BE8F671 ^ v160;
  LODWORD(v160) = v174 ^ v180;
  v182 = v174 ^ v180 ^ 0x1CAEF851;
  v220 = __PAIR64__(v158, v160);
  LODWORD(v156) = *&v164[4 * (v160 ^ 0xA8)];
  LODWORD(v156) = *&v163[4 * (BYTE1(v182) ^ 0xB2)] ^ *&v161[4 * (BYTE2(v160) ^ 0x2B)] ^ v156 ^ (((4 * v156) ^ 0x42A8DEF0) + 653131736) ^ (v165[v182 >> 24] + 94) ^ v158 ^ BYTE1(v182);
  v183 = v156 ^ 0x65F22DD4 ^ v181 ^ 0x4BE8F671;
  HIDWORD(v219) = v174 ^ 0x21752B5E;
  LODWORD(v160) = v183 ^ v174 ^ 0x21752B5E;
  LODWORD(v51) = v160 ^ v182;
  v184 = v160 ^ v182 ^ 0xAD08E9F6;
  LODWORD(v218) = v160 ^ v182 ^ 0x97D9982;
  LODWORD(v182) = *&v164[4 * ((v160 ^ v182) ^ 0xF)];
  LODWORD(v182) = *&v163[4 * (BYTE1(v184) ^ 0xB2)] ^ *&v161[4 * (BYTE2(v218) ^ 0xF0)] ^ v182 ^ (((4 * v182) ^ 0x42A8DEF0) + 653131736) ^ (v165[v184 >> 24] + 94) ^ BYTE1(v184);
  v185 = v182 ^ v156 ^ 0x65F22DD4;
  LODWORD(v174) = v182 ^ v162;
  HIDWORD(v218) = v160;
  LODWORD(v182) = v160 ^ 0xF6C542AD;
  HIDWORD(v216) = v174 ^ 0x69C4EAF4 ^ v160 ^ 0xF6C542AD;
  v217 = __PAIR64__(v185, v174);
  LODWORD(v157) = HIDWORD(v216) ^ v184;
  LODWORD(v160) = ((HIDWORD(v216) ^ v184) >> 16) ^ 5;
  v186 = HIDWORD(v216) ^ v184 ^ 0xC8801C55;
  LODWORD(v216) = v157;
  LODWORD(v111) = __ROR4__(*&v164[4 * (v157 ^ 0xAC)], 15) ^ 0x3278BE06;
  HIDWORD(v111) = v111;
  v187 = *&v163[4 * (BYTE1(v186) ^ 0xB2)] ^ *&v161[4 * v160] ^ (v165[v186 >> 24] + 94) ^ (v111 >> 17) ^ v185 ^ (((4 * (v111 >> 17)) ^ 0x3EA4BA00) + 653131736) ^ BYTE1(v186);
  LODWORD(v162) = v187 ^ 0xB56723D6 ^ v174 ^ 0x69C4EAF4;
  LODWORD(v174) = v187 ^ 0xB56723D6 ^ v182;
  LODWORD(v182) = ((v174 ^ v186) >> 16) ^ 0xB4;
  LODWORD(v160) = (v174 ^ v186) ^ 0xD6;
  LODWORD(v215) = v174 ^ v186;
  HIDWORD(v215) = v187;
  v188 = v174 ^ v186 ^ 0xE931592F;
  v223 = *&v161[4 * v182] ^ *&v164[4 * v160] ^ *&v163[4 * (BYTE1(v188) ^ 0xB2)] ^ (((4 * *&v164[4 * v160]) ^ 0x42A8DEF0) + 653131736) ^ (v165[v188 >> 24] + 94) ^ v187 ^ BYTE1(v188) ^ 0x4B95E27E;
  HIDWORD(v214) = v223 ^ v162 ^ 0x3569E8AA;
  v189 = HIDWORD(v214) ^ v174 ^ v188;
  v190 = *&v164[4 * (v189 ^ 0x47)];
  v191 = *&v161[4 * (BYTE2(v189) ^ 0xA0)] ^ v190 ^ *&v163[4 * (((v189 ^ 0x68BE) >> 8) ^ 0xB2)] ^ (((4 * v190) ^ 0x42A8DEF0) + 653131736) ^ (v165[(v189 ^ 0x562568BE) >> 24] + 94) ^ ((v189 ^ 0x68BE) >> 8) ^ 0x50EF8EEE;
  *(v19 - 152) = v191;
  LODWORD(v164) = v153 ^ 0x38715965;
  LODWORD(v49) = -1002310939 - (v153 ^ 0x38715965);
  HIDWORD(v111) = v49 ^ v153;
  LODWORD(v111) = v64 ^ ~v49;
  LODWORD(v182) = (v33 ^ 0x211C68AB) + v49;
  v192 = (v182 - 863213508);
  LODWORD(v213) = v156 ^ 0xD951DAF7;
  HIDWORD(v213) = v144 ^ 0xE3E9AEBF;
  LODWORD(v212) = v167 ^ 0xA2019ED0;
  LODWORD(v219) = v183;
  LODWORD(v182) = (v144 ^ 0xE3E9AEBF) + (v167 ^ 0xA2019ED0) + v182 + (v156 ^ 0xD951DAF7) + (v183 ^ 0xC20F4CAE);
  LODWORD(v153) = v182 + (v178 ^ 0x11421C22) + (v51 ^ 0x204CBD1D);
  v193 = (v182 - 276469149);
  LODWORD(v182) = v191 ^ v162 ^ 0x3569E8AA;
  HIDWORD(v211) = v182 ^ 0x79F6B03;
  LODWORD(v51) = v153 - (v182 ^ 0x79F6B03) + 500394592;
  v194 = v166 ^ 0xD805E027;
  LODWORD(v214) = HIDWORD(v214) ^ v174 ^ 0x7C712D91;
  v195 = v182 ^ v214;
  HIDWORD(a16) = v195 ^ 0xCE334B8C;
  LODWORD(v211) = v179 ^ 0x43F9BBF7;
  v196 = *(&off_1010A0B50 + (a1 ^ 0x9FB2)) - 784970826;
  v197 = (*(v19 - 108) ^ 0x9A2B1368) - 2131667659 + *&v196[4 * (*(v19 - 108) ^ 0xDFLL)];
  *(v19 - 160) = a1;
  v198 = v197 ^ *(*(&off_1010A0B50 + a1 - 35273) + 4 * (*(v19 - 107) ^ 0x31) - 723092603) ^ *(v19 - 106) ^ *(*(&off_1010A0B50 + a1 - 36520) + 4 * (*(v19 - 106) ^ 0x7ALL) - 2133589074) ^ (*(*(&off_1010A0B50 + a1 - 34686) + (*(v19 - 105) ^ 0x92) - 636040154) - 92) ^ 0x2DAE7C2A;
  v208 = *(&off_1010A0B50 + a1 - 36520) - 2133589074;
  v209 = *(&off_1010A0B50 + a1 - 35273) - 723092603;
  v210 = *(&off_1010A0B50 + a1 - 34686) - 636040154;
  HIDWORD(v207) = (-1019906744 - v164 - ((2 * v49) & 0xFDE704C6)) ^ __ROR4__((v111 >> 30) ^ 0xDA2F7527, 2);
  v199 = (v177 ^ 0x6DCB0F30) + (v179 ^ 0x43F9BBF7) - (v174 ^ 0x6357E6C) + (v195 ^ 0xCE334B8C) + 342902642 + v51 + v194;
  *(v19 - 128) = (((*(v19 - 128) ^ 0x162566BD) - 1528918707) ^ ((*(v19 - 128) ^ 0xF73CB2F4) + 1170692358) ^ ((*(v19 - 128) ^ 0xFD6DF7A9) + 1335237721)) + 1204511870;
  LODWORD(v207) = (v51 + v194) & 0xFFFFFFDF ^ 0xA4C7AB78;
  LODWORD(v111) = __ROR4__(v51, 2) ^ 0x528D2C9F;
  HIDWORD(v111) = v111;
  HIDWORD(v206) = v51 ^ *(v19 - 136) ^ (v111 >> 30);
  LODWORD(v206) = v199 ^ v174 ^ (v199 - ((2 * v199) & 0x9F47545E) - 811357649);
  HIDWORD(v205) = v162 ^ 0xD19E091E;
  LODWORD(v205) = -(v193 ^ 0x93BB790D) ^ ((v193 ^ 0x93BB790D) - ((2 * (v193 ^ 0x93BB790D)) & 0x284BBE22) + 338026257) ^ 0x1425DF11;
  HIDWORD(v204) = v193 ^ 0x584F05F5;
  LODWORD(v204) = v189 ^ v193 ^ v195;
  HIDWORD(v212) = v192;
  HIDWORD(v203) = v192 ^ 0x1C4BEA21;
  LODWORD(v203) = (v51 + v194) ^ v194;
  LODWORD(v202) = v224 ^ *(v19 - 144);
  HIDWORD(v202) = (v51 + v194) & 0x20;
  LODWORD(v201) = -HIDWORD(v202);
  HIDWORD(v201) = *(v19 - 152) ^ v223;
  return (*(v225 + 8 * *(v19 - 160)))(v189, v192, v193, v197, v194, v195, 986624299, v198, a2, a3, a4, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v196, a16, v211, v212, v213, v189 ^ 0x562568BE, v214, v215, v216, v217, v218, v219, v220, v221);
}

uint64_t sub_100345710()
{
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((((&STACK[0x10000] + 3800) | 0xE21A8245) - ((&STACK[0x10000] + 3800) & 0xE21A8240)) ^ 0x43C998A) + 296788614;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0xCA4E)))(&STACK[0x10ED8]);
  STACK[0x7690] -= 64;
  return (*(v2 + 8 * ((35328 * (v1 == v0 - 371865971)) | v0)))(v3);
}

uint64_t sub_1003457C4(int a1, double a2, __n128 a3)
{
  a3.n128_u16[0] = 1799;
  a3.n128_u8[2] = 7;
  a3.n128_u8[3] = 7;
  a3.n128_u8[4] = 7;
  a3.n128_u8[5] = 7;
  a3.n128_u8[6] = 7;
  a3.n128_u8[7] = 7;
  return (*(v3 + 8 * a1))(xmmword_100F523B0, a3);
}

uint64_t sub_10034585C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v38 = v34 + 120 * v33;
  v39 = *(v38 + 24);
  v40 = *(v38 + 16);
  LODWORD(v38) = (((*(v38 + 4) ^ 0x2FEE22B0) - 804135600) ^ ((*(v38 + 4) ^ 0xBAAF0174) + 1162935948) ^ ((*(v38 + 4) ^ 0x7C94E4D5) - 2090132693)) + 150699695;
  v41 = 155453101 * ((~(v36 - 176) & 0x5DAB9ABB | (v36 - 176) & 0xA2546540) ^ 0xBB8D8174);
  *(v36 - 152) = v41 + ((v35 - 19605) | 0x819) + 481746839 + (((v40 ^ 0xC288C3AB) + 1031224405) ^ ((v40 ^ 0x3A8C203C) - 982261820) ^ ((v40 ^ 0x11D12486) - 298919046));
  *(v36 - 168) = v39;
  *(v36 - 160) = a33;
  *(v36 - 176) = v38 ^ v41;
  *(v36 - 172) = (v35 - 12154) ^ v41;
  v42 = (*(v37 + 8 * (v35 + 28515)))(v36 - 176);
  return (*(v37 + 8 * v35))(v42);
}

uint64_t sub_100345A64@<X0>(int a1@<W8>)
{
  v1 = (((LODWORD(STACK[0x6DF4]) ^ 0x207F38AFC5727E94) - 0x207F38AFC5727E94) ^ ((LODWORD(STACK[0x6DF4]) ^ 0xC980A8DFB27F29BDLL) + 0x367F57204D80D643) ^ ((a1 + 19571) + (LODWORD(STACK[0x6DF4]) ^ 0xE9FF90709ED89038) + 0x16006F8F612704C0)) + 0x287E22A9038B80E3;
  LODWORD(STACK[0x705C]) = STACK[0x17D8];
  STACK[0x3CC8] = v1;
  LODWORD(STACK[0x2D84]) = 2;
  LOBYTE(STACK[0x3FCF]) = 96;
  LODWORD(STACK[0x4078]) = -970400068;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100345BFC()
{
  LODWORD(STACK[0x10ED8]) = (v0 - 1762655008) ^ (906386353 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x758E1EC0) + 1972248262) ^ 0x448FD3E2));
  STACK[0x10EE0] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 22538)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (((*STACK[0x970] > ((v0 - 596538048) & 0x238E279B) - 10123) * ((v0 + 1507511534) & 0xA624D577 ^ 0xD16A)) ^ v0)))(v2);
}

uint64_t sub_100345D78()
{
  v2 = *(STACK[0xF18] + 8 * ((460 * ((v1 ^ ((v0 ^ 0xF1F3u) - 15280) ^ 0x17F80C7CuLL) > 7)) ^ v0));
  v3 = STACK[0x3C80];
  STACK[0xEC0] = *(STACK[0x5C10] + 24);
  STACK[0xED0] = v3;
  return v2();
}

uint64_t sub_100345F4C()
{
  v1 = STACK[0x58C8];
  v2 = STACK[0xF18];
  STACK[0x2D20] = *(STACK[0xF18] + 8 * (v0 - 35243));
  return (*(v2 + 8 * ((9191 * (((v0 - 35243) ^ 0x7679684Bu) > v0 + 564432479)) ^ ((v0 - 35243) | 0x64B))))(v1);
}

uint64_t sub_100346174(uint64_t a1, uint64_t a2, int a3)
{
  v6 = STACK[0xDE0];
  LODWORD(STACK[0x825C]) = v3;
  LODWORD(STACK[0x3FA8]) = a3;
  LODWORD(STACK[0x659C]) = STACK[0xEC0];
  LODWORD(STACK[0x1370]) = STACK[0xED0];
  LODWORD(STACK[0x5D04]) = v4;
  LODWORD(STACK[0x8A44]) = v5;
  return (*(STACK[0xF18] + 8 * v6))();
}

uint64_t sub_1003461BC()
{
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 ^ v1)))(v0);
  return (*(v4 + 8 * ((19 * (((v3 == 0) ^ (v2 + 28)) & 1)) ^ (v2 + 9740))))(v5);
}

uint64_t sub_1003462C8()
{
  v1 = v0 - 26635;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 16238)))(STACK[0x1980]);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100346414()
{
  v1 = STACK[0xF10] - 7510;
  *(STACK[0x29B0] + 20) = v0 ^ 0xC704E5F7;
  return (*(STACK[0xF18] + 8 * ((965 * LOBYTE(STACK[0xB783])) ^ v1)))();
}

uint64_t sub_100346464()
{
  v4 = 1112314453 * ((2 * (v2 & 0x283B1F00) - v2 - 674963203) ^ 0x3892CA24);
  STACK[0x10EF8] = v0;
  LODWORD(STACK[0x10EF0]) = v1 - v4 + 699855854;
  LODWORD(STACK[0x10EEC]) = 1961923937 - v4;
  STACK[0x10EE0] = v3;
  STACK[0x10ED8] = STACK[0x520];
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 + 39139)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * (((LODWORD(STACK[0x10EE8]) == ((11881 * (v1 ^ 0x3292)) ^ 0xE9D54C2A)) * (v1 - 12937)) | v1)))(v6);
}

uint64_t sub_10034653C()
{
  v4 = v0 < v1;
  if (v4 == v2 - 1410141532 < v1)
  {
    v4 = v2 - 1410141532 < v0;
  }

  return (*(STACK[0xF18] + 8 * (v3 ^ (4 * v4))))();
}

uint64_t sub_1003467FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, int a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  *a6 = a46;
  *(a6 + 8) = v46;
  *(a6 + 16) = a41;
  return (*(v48 + 8 * (v47 ^ 0x2A0B446D)))();
}

uint64_t sub_10034682C(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0xB228] - 0x1BB53DFA7FC5197ELL + (((v2 ^ 0xE3F5E6AFB990EFC1) + 0x1C0A1950466F103FLL) ^ ((v2 ^ 0xA133E841D397807ALL) + 0x5ECC17BE2C687F86) ^ ((v2 ^ 0x42C60EEE83D2A8AALL) - 0x42C60EEE83D2A8AALL)) + 0x16E801BBDLL;
  v4 = STACK[0xB220] - 0x695621657CE35BB3;
  v5 = v3 < 0x84AA54AC;
  v6 = v3 > v4;
  if (v4 < 0x84AA54AC != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((497 * !v6) ^ (STACK[0xF10] - 16987))))(a1, a2, 371891407);
}

uint64_t sub_100346954()
{
  LODWORD(STACK[0xEC0]) = (v2 + 1919335985) & 0x8D999B3F;
  STACK[0xED0] = v0;
  v3 = STACK[0x4A20];
  v4 = 155453101 * ((~&STACK[0x10ED8] & 0xA8261442 | &STACK[0x10ED8] & 0x57D9EBB8) ^ 0x4E000F8D);
  LODWORD(STACK[0x10ED8]) = v2 + 8125 + v4;
  v5 = *(&off_1010A0B50 + v2 - 9217) - 1593224015;
  STACK[0x10EE8] = v3;
  STACK[0x10EE0] = v5;
  LOBYTE(STACK[0x10EFC]) = -46 - v4;
  STACK[0x10EF0] = v1 + 296;
  v6 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v2 ^ 0xFB2C)))(&STACK[0x10ED8]);
  v7 = *(&off_1010A0B50 + v2 - 12018);
  LODWORD(STACK[0x10ED8]) = v2 + 8125 + 155453101 * (((&STACK[0x10ED8] | 0x178DE6A5) - (&STACK[0x10ED8] | 0xE872195A) - 395175590) ^ 0xF1ABFD6A);
  STACK[0x10EE0] = v7 - 1141572038;
  STACK[0x10EE8] = v3;
  LOBYTE(STACK[0x10EFC]) = -46 - -83 * (((&STACK[0x10ED8] | 0xA5) - (&STACK[0x10ED8] | 0x5A) + 90) ^ 0x6A);
  STACK[0xE30] = v1 + 312;
  STACK[0x10EF0] = v1 + 312;
  (*(v6 + 8 * (v2 + 39196)))(&STACK[0x10ED8]);
  v8 = 155453101 * (((&STACK[0x10ED8] | 0x936EFA51) - (&STACK[0x10ED8] & 0x936EFA50)) ^ 0x7548E19E);
  v9 = *(&off_1010A0B50 + v2 - 10520) - 1098679582;
  LODWORD(STACK[0x10ED8]) = v2 + 8125 + v8;
  STACK[0xDF0] = v1 + 304;
  STACK[0x10EF0] = v1 + 304;
  STACK[0x10EE0] = v9;
  STACK[0x10EE8] = v3;
  LOBYTE(STACK[0x10EFC]) = -46 - v8;
  (*(v6 + 8 * (v2 + 39196)))(&STACK[0x10ED8]);
  v10 = 155453101 * (((~&STACK[0x10ED8] | 0x4825A72) + (&STACK[0x10ED8] | 0xFB7DA58D)) ^ 0x1D5BBE43);
  v11 = *(&off_1010A0B50 + v2 - 9237) - 1373027331;
  STACK[0x10EE8] = STACK[0xED0];
  STACK[0x10EE0] = v11;
  LODWORD(STACK[0x10ED8]) = v2 + 8125 + v10;
  STACK[0xE20] = v1 + 288;
  STACK[0x10EF0] = v1 + 288;
  LOBYTE(STACK[0x10EFC]) = -46 - v10;
  (*(v6 + 8 * (v2 ^ 0xFB2C)))(&STACK[0x10ED8]);
  v12 = 155453101 * (((&STACK[0x10ED8] | 0x55611E50) - (&STACK[0x10ED8] & 0x55611E50)) ^ 0xB347059F);
  LOBYTE(STACK[0x10EFC]) = -46 - v12;
  STACK[0x10EE8] = STACK[0xED0];
  STACK[0x10EE0] = STACK[0x708];
  STACK[0xE10] = v1 + 272;
  STACK[0x10EF0] = v1 + 272;
  LODWORD(STACK[0x10ED8]) = v2 + 8125 + v12;
  (*(v6 + 8 * (v2 ^ 0xFB2C)))(&STACK[0x10ED8]);
  v13 = 155453101 * ((2 * (&STACK[0x10ED8] & 0x7C4913C8) - &STACK[0x10ED8] + 62319671) ^ 0xE590F7F8);
  LOBYTE(STACK[0x10EFC]) = -46 - v13;
  STACK[0x10EE0] = STACK[0x710];
  STACK[0x10EE8] = v3;
  v14 = STACK[0xEC0];
  LODWORD(STACK[0x10ED8]) = v2 + 8125 + v13;
  STACK[0xE00] = v1 + 280;
  STACK[0x10EF0] = v1 + 280;
  v15 = (*(v6 + 8 * (v2 + 39196)))(&STACK[0x10ED8]);
  v16 = LOBYTE(STACK[0x9790]) != (v14 ^ 0x8BA4);
  return (*(v6 + 8 * (v16 | (4 * v16) | v2)))(v15);
}

uint64_t sub_100346D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  STACK[0xE10] = *(v12 + v14 - 8);
  v20.i64[0] = v12 + v14 - 7;
  v20.i64[1] = v12 + v14 - 8;
  v21.i64[0] = v12 + v14 - 3;
  v21.i64[1] = v12 + v14 - 4;
  v22.i64[0] = v12 + v14 - 1;
  v22.i64[1] = v12 + v14 - 2;
  v23 = v22;
  *&STACK[0xDF0] = v22;
  v22.i64[0] = v12 + v14 + v13;
  v22.i64[1] = v12 + v14 - 6;
  v24 = v22;
  *&STACK[0xE00] = v22;
  v25.i64[0] = v15 + v14 + 3;
  v25.i64[1] = v15 + v14 + 2;
  v26.i64[0] = v15 + v14 + 7;
  v26.i64[1] = v15 + v14 + 6;
  v22.i64[0] = v15 + v14 + 9;
  v22.i64[1] = v15 + v14 + 8;
  v27 = v22;
  *&STACK[0xDA0] = v22;
  v22.i64[0] = v15 + v14 + 5;
  v22.i64[1] = v15 + v14 + 4;
  v28 = v22;
  *&STACK[0xDC0] = v22;
  v29 = *&STACK[0xCC0];
  v30 = vandq_s8(v24, *&STACK[0xCC0]);
  v31 = vandq_s8(v23, *&STACK[0xCC0]);
  v32 = vandq_s8(v21, *&STACK[0xCC0]);
  v33 = vandq_s8(v20, *&STACK[0xCC0]);
  v34 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL), *&STACK[0xD90]);
  v35 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL), *&STACK[0xD90]);
  v36 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL), *&STACK[0xD90]);
  v37 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL), *&STACK[0xD90]);
  v38 = vaddq_s64(vsubq_s64(vorrq_s8(v37, *&STACK[0xD80]), vorrq_s8(v37, *&STACK[0xCA0])), *&STACK[0xCA0]);
  v39 = vaddq_s64(vsubq_s64(vorrq_s8(v36, *&STACK[0xD80]), vorrq_s8(v36, *&STACK[0xCA0])), *&STACK[0xCA0]);
  v40 = vaddq_s64(vsubq_s64(vorrq_s8(v35, *&STACK[0xD80]), vorrq_s8(v35, *&STACK[0xCA0])), *&STACK[0xCA0]);
  v41 = vaddq_s64(vsubq_s64(vorrq_s8(v34, *&STACK[0xD80]), vorrq_s8(v34, *&STACK[0xCA0])), *&STACK[0xCA0]);
  v42 = veorq_s8(v41, *&STACK[0xD70]);
  v43 = veorq_s8(v40, *&STACK[0xD70]);
  v44 = veorq_s8(v39, *&STACK[0xD70]);
  v45 = veorq_s8(v38, *&STACK[0xD70]);
  v46 = veorq_s8(v38, *&STACK[0xD60]);
  v47 = veorq_s8(v39, *&STACK[0xD60]);
  v48 = veorq_s8(v40, *&STACK[0xD60]);
  v49 = veorq_s8(v41, *&STACK[0xD60]);
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v49);
  v51 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), v48);
  v52 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v47);
  v53 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v46);
  v54 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v53, v53), *&STACK[0xD50]), v53), *&STACK[0xD40]), *&STACK[0xD30]);
  v55 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v52, v52), *&STACK[0xD50]), v52), *&STACK[0xD40]), *&STACK[0xD30]);
  v56 = vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL);
  v57 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v51, v51), *&STACK[0xD50]), v51), *&STACK[0xD40]), *&STACK[0xD30]);
  v58 = vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL);
  v59 = vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL);
  v60 = vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL);
  v61 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v50, v50), *&STACK[0xD50]), v50), *&STACK[0xD40]), *&STACK[0xD30]);
  v62 = veorq_s8(v61, v60);
  v63 = veorq_s8(v57, v59);
  v64 = veorq_s8(v55, v58);
  v65 = veorq_s8(v54, v56);
  v66 = vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL);
  v67 = vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL);
  v68 = vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v65);
  v70 = veorq_s8(vaddq_s64(v66, v62), *&STACK[0xD20]);
  v71 = veorq_s8(vaddq_s64(v67, v63), *&STACK[0xD20]);
  v72 = veorq_s8(vaddq_s64(v68, v64), *&STACK[0xD20]);
  v73 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v74 = vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL);
  v75 = veorq_s8(v69, *&STACK[0xD20]);
  v76 = vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL);
  v77 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v78 = veorq_s8(v72, v76);
  v79 = veorq_s8(v71, v74);
  v80 = veorq_s8(v70, v73);
  v81 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v82 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v83 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v80);
  v85 = veorq_s8(vaddq_s64(v81, v77), *&STACK[0xD00]);
  v86 = veorq_s8(vaddq_s64(v82, v78), *&STACK[0xD00]);
  v87 = veorq_s8(vaddq_s64(v83, v79), *&STACK[0xD00]);
  v88 = vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL);
  v89 = vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL);
  v90 = veorq_s8(v84, *&STACK[0xD00]);
  *&STACK[0xDE0] = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v91 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v92 = veorq_s8(v86, v89);
  v93 = veorq_s8(v85, v88);
  *&STACK[0xDD0] = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v94 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v95 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v93);
  v97 = vaddq_s64(v95, v92);
  v98 = vaddq_s64(v94, v91);
  v99 = vorrq_s8(vaddq_s64(v96, v96), *&STACK[0xEA0]);
  v100 = vorrq_s8(vaddq_s64(v97, v97), *&STACK[0xEA0]);
  *&STACK[0xDB0] = vsubq_s64(vorrq_s8(vaddq_s64(v98, v98), *&STACK[0xEA0]), v98);
  v101 = veorq_s8(vaddq_s64(vsubq_s64(v100, v97), *&STACK[0xE70]), *&STACK[0xEB0]);
  v102 = vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL);
  v103 = vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL);
  v104 = veorq_s8(vaddq_s64(vsubq_s64(v99, v96), *&STACK[0xE70]), *&STACK[0xEB0]);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v106 = veorq_s8(v101, v103);
  v107 = vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL);
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v106);
  v109 = vaddq_s64(v107, v105);
  v110 = vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL);
  v111 = veorq_s8(v109, *&STACK[0xE90]);
  v112 = vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL);
  v113 = vandq_s8(v28, v29);
  v114 = vandq_s8(v27, v29);
  v115 = vandq_s8(v26, v29);
  v116 = vandq_s8(v25, v29);
  v117 = veorq_s8(v108, *&STACK[0xE90]);
  v118 = vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL);
  v119 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v120 = veorq_s8(v117, v112);
  v121 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v122 = vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL);
  v123 = veorq_s8(v111, v110);
  v124 = vbslq_s8(*&STACK[0xC80], vsubq_s64(*&STACK[0xCE0], v118), vaddq_s64(v118, *&STACK[0xC90]));
  v125 = vbslq_s8(*&STACK[0xC80], vsubq_s64(*&STACK[0xCE0], v119), vaddq_s64(v119, *&STACK[0xC90]));
  v126 = veorq_s8(v125, *&STACK[0xE60]);
  v127 = veorq_s8(v124, *&STACK[0xE60]);
  v128 = veorq_s8(v124, *&STACK[0xE40]);
  v129 = veorq_s8(v125, *&STACK[0xE40]);
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128), *&STACK[0xC70]);
  v131 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v132 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v129), *&STACK[0xC70]);
  v133 = vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL);
  v134 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v135 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v136 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v135);
  v138 = vaddq_s64(v136, v134);
  v139 = vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL);
  v140 = vsubq_s64(vorrq_s8(v137, *&STACK[0xC60]), vorrq_s8(v137, v19));
  v141 = vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL);
  v142 = veorq_s8(vaddq_s64(v140, v19), *&STACK[0xC40]);
  v143 = vaddq_s64(v133, v123);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v138, *&STACK[0xC60]), vorrq_s8(v138, v19)), v19), *&STACK[0xC40]);
  v145 = vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL);
  v146 = vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL);
  v147 = vaddq_s64(v131, v120);
  v148 = veorq_s8(v144, v146);
  v149 = veorq_s8(v142, v145);
  v150 = veorq_s8(v147, *&STACK[0xE80]);
  v151 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v148), *&STACK[0xC30]);
  v152 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v149), *&STACK[0xC30]);
  v153 = veorq_s8(v143, *&STACK[0xE80]);
  v154 = vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL);
  v155 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v156 = veorq_s8(v153, v141);
  v157 = veorq_s8(v151, v154);
  v158 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v157);
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v155);
  v160 = vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL);
  v161 = vnegq_s64(vandq_s8(vshlq_n_s64(v21, 3uLL), v16));
  v162 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v158, v158), *&STACK[0xE30]), v158), *&STACK[0xC20]);
  v163 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v159, v159), *&STACK[0xE30]), v159), *&STACK[0xC20]), *&STACK[0xE20]);
  v164 = veorq_s8(v162, *&STACK[0xE20]);
  v165 = vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL);
  v166 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v167 = veorq_s8(v163, v160);
  v168 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v167);
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v166);
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), veorq_s8(v150, v139));
  v171 = vdupq_n_s64(a8);
  v172 = vdupq_n_s64(v10);
  v173 = vaddq_s64(v165, v156);
  v174 = vdupq_n_s64(v9);
  v175 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v168, v171), vorrq_s8(v168, v172)), v172), v174);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v169, v171), vorrq_s8(v169, v172)), v172), v174);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v178 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v179 = vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL);
  v180 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v178);
  v181 = vaddq_s64(v179, v177);
  v182 = vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL);
  v183 = vdupq_n_s64(a7);
  v184 = veorq_s8(v180, v183);
  v185 = vshlq_u64(veorq_s8(v170, v18), v161);
  v186 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v187 = vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL);
  v188 = veorq_s8(v181, v183);
  v189 = veorq_s8(vaddq_s64(*&STACK[0xDB0], v17), *&STACK[0xEB0]);
  v190 = veorq_s8(v189, v102);
  v191 = vdupq_n_s64(a6);
  v254.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v187, v186), v191), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), v16))), vshlq_u64(veorq_s8(v173, v18), vnegq_s64(vandq_s8(vshlq_n_s64(v20, 3uLL), v16))));
  v254.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), veorq_s8(v188, v182)), v191), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v16))), v185);
  v192 = vbslq_s8(*&STACK[0xC80], vsubq_s64(*&STACK[0xCE0], v121), vaddq_s64(v121, *&STACK[0xC90]));
  v193 = vbslq_s8(*&STACK[0xC80], vsubq_s64(*&STACK[0xCE0], v122), vaddq_s64(v122, *&STACK[0xC90]));
  v194 = veorq_s8(v192, *&STACK[0xE60]);
  v195 = vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL);
  v196 = veorq_s8(v192, *&STACK[0xE40]);
  v197 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), v196), *&STACK[0xC70]);
  v198 = veorq_s8(v197, vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL));
  v199 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v198);
  v200 = vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL);
  v201 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v199, *&STACK[0xC60]), vorrq_s8(v199, v19)), v19), *&STACK[0xC40]);
  v202 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL));
  v203 = veorq_s8(vaddq_s64(v195, v190), *&STACK[0xE90]);
  v204 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), v202), *&STACK[0xC30]);
  v205 = vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL);
  v206 = veorq_s8(v203, v200);
  v207 = veorq_s8(v204, v205);
  v208 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL), v207);
  v209 = vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL);
  v210 = vsubq_s64(vorrq_s8(vaddq_s64(v208, v208), *&STACK[0xE30]), v208);
  v211 = vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL);
  v212 = vaddq_s64(v209, v206);
  v213 = veorq_s8(vaddq_s64(v210, *&STACK[0xC20]), *&STACK[0xE20]);
  v214 = veorq_s8(v213, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL));
  v215 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL), v214);
  v216 = veorq_s8(v212, *&STACK[0xE80]);
  v217 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v215, v171), vorrq_s8(v215, v172)), v172), v174);
  v218 = veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL));
  v219 = veorq_s8(v216, v211);
  v220 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v218), v183);
  v254.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL))), v191), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xDA0], 3uLL), v16))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL), v219), v18), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xDF0], 3uLL), v16))));
  v221 = veorq_s8(v193, *&STACK[0xE60]);
  v222 = veorq_s8(v193, *&STACK[0xE40]);
  v223 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL), v222), *&STACK[0xC70]);
  v224 = veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL));
  v225 = vaddq_s64(*&STACK[0xDD0], *&STACK[0xDE0]);
  v226 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v224);
  v227 = vsubq_s64(vorrq_s8(vaddq_s64(v225, v225), *&STACK[0xEA0]), v225);
  v228 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v226, *&STACK[0xC60]), vorrq_s8(v226, v19)), v19), *&STACK[0xC40]);
  v229 = veorq_s8(v228, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL));
  v230 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL), v229), *&STACK[0xC30]);
  v231 = veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL));
  v232 = veorq_s8(vaddq_s64(v227, v17), *&STACK[0xEB0]);
  v233 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL), v231);
  v234 = veorq_s8(v232, vsraq_n_u64(vshlq_n_s64(*&STACK[0xDE0], 3uLL), *&STACK[0xDE0], 0x3DuLL));
  v235 = vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL);
  v236 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v233, v233), *&STACK[0xE30]), v233), *&STACK[0xC20]), *&STACK[0xE20]);
  v237 = vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL);
  v238 = veorq_s8(v236, v235);
  v239 = vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL);
  v240 = vsraq_n_u64(vshlq_n_s64(v234, 3uLL), v234, 0x3DuLL);
  v241 = vaddq_s64(v237, v234);
  v242 = vaddq_s64(v239, v238);
  v243 = veorq_s8(v241, *&STACK[0xE90]);
  v244 = veorq_s8(v243, v240);
  v245 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v242, v171), vorrq_s8(v242, v172)), v172), v174);
  v246 = vsraq_n_u64(vshlq_n_s64(v238, 3uLL), v238, 0x3DuLL);
  v247 = vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL);
  v248 = veorq_s8(v245, v246);
  v249 = vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL);
  v250 = veorq_s8(vaddq_s64(v247, v244), *&STACK[0xE80]);
  v251 = veorq_s8(v250, vsraq_n_u64(vshlq_n_s64(v244, 3uLL), v244, 0x3DuLL));
  v252 = veorq_s8(vaddq_s64(v249, v248), v183);
  v254.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL), veorq_s8(v252, vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL))), v191), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xDC0], 3uLL), v16))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL), v251), v18), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xE00], 3uLL), v16))));
  *(v15 + v14 + 2) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v254, *&STACK[0xCD0])), STACK[0xE10]);
  return (*(STACK[0xF18] + 8 * (v11 | (4 * (v8 != 0)))))();
}

uint64_t sub_1003477EC()
{
  v4 = *(STACK[0x978] + v2);
  v5 = v2 - 1;
  *(v3 + v5) = *(v1 + v5) ^ *(STACK[0x988] + v5) ^ (111 * v5) ^ *(STACK[0x980] + v5) ^ v4 ^ 0x5F;
  return (*(STACK[0xF18] + 8 * (((v5 == 0) * ((v0 ^ 0xA4AF) - 35628)) ^ v0)))();
}

uint64_t sub_10034790C(uint64_t a1, uint64_t a2)
{
  v4 = STACK[0xF10];
  LOWORD(STACK[0xA42A]) = v2;
  return (*(STACK[0xF18] + 8 * (v4 - 27350)))(a1, a2, v3);
}

uint64_t sub_100347A44@<X0>(uint64_t a1@<X8>)
{
  v9 = (v3 + ((v4 - 27351) | 0x6C80) - 27833) & (v4 ^ 0x6B10);
  v10 = v5 - v3 + 1;
  v12 = (v7 - v6) > 0xF && (v10 + v1 + v9) > 0xF && (v10 + a1 + v9) > 0xF;
  v13 = v10 + v2 + v9;
  v15 = v12 && v13 > 0xF;
  return (*(v8 + 8 * ((47 * v15) ^ v4)))();
}

uint64_t sub_100347B38()
{
  v2.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v2.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(v1 + 8 * (v0 & 0x79203FFF)))(10613, 65039, v2);
}

uint64_t sub_100347B78()
{
  v1 = 5171 * (STACK[0xF10] ^ 0x8B38);
  v2 = STACK[0xF10] - 18137;
  *(STACK[0x6A78] + 104) = v0;
  return (*(STACK[0xF18] + 8 * ((LOBYTE(STACK[0xB3EF]) * (v1 ^ 0x3C53)) ^ v2)))();
}

uint64_t sub_100347C1C()
{
  *v3 = v0;
  *(v1 + 392) = (v2 ^ 0x152D) + *(v1 + 392) - 19820;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_100347D3C@<X0>(uint64_t a1@<X8>)
{
  v6 = (*(a1 + 16) ^ 0x6EBFDFBF5FFFE7EFLL) - 0x4422813249C3C385 + ((*(a1 + 16) << (((v1 + v3) | v4) - 18)) & 0xBFFFCFDE);
  v7 = (v6 ^ 0xE98B9B45) & (2 * (v6 & 0xE9C3DB96)) ^ v6 & 0xE9C3DB96;
  v8 = ((2 * (v6 ^ (((v1 + v2) & v5) - 1156645082))) ^ 0xA598A3EE) & (v6 ^ (((v1 + v2) & v5) - 1156645082)) ^ (2 * (v6 ^ (((v1 + v2) & v5) - 1156645082))) & 0x52CC51F6;
  v9 = v8 ^ 0x52445011;
  v10 = (v8 ^ 0x800E0) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0x4B3147DC) & v9 ^ (4 * v9) & 0x52CC51F4;
  v12 = (v11 ^ 0x420041C0) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x10CC1023)) ^ 0x2CC51F70) & (v11 ^ 0x10CC1023) ^ (16 * (v11 ^ 0x10CC1023)) & 0x52CC51F0;
  return (*(STACK[0xF18] + 8 * ((7 * ((v6 ^ (2 * ((((v13 ^ 0x52084087) << 8) & 0x52CC0000 ^ 0x40400000 ^ (((v13 ^ 0x52084087) << 8) ^ 0xCC510000) & (v13 ^ 0x52084087)) & (((v13 ^ 0xC41100) & (v12 << 8) ^ v12) << 16) ^ (v13 ^ 0xC41100) & (v12 << 8) ^ v12))) != 3921927062)) ^ v1)))();
}

uint64_t sub_100347F70@<X0>(int a1@<W8>)
{
  STACK[0x4840] = 0;
  LODWORD(STACK[0xFD4]) = -371865839;
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * (a1 - 4311));
  return (*(v1 + 8 * (a1 - 25796 + ((a1 + 12321) | 0x2220))))();
}

uint64_t sub_100347FD8()
{
  v1 = (STACK[0xF10] - 1591462749) & 0x5EDB7F25;
  v2 = STACK[0xF10] - 34965;
  v3 = STACK[0xF10] + 2982;
  LODWORD(STACK[0xB738]) = v0;
  v4 = (((v0 ^ 0x3241804E) - 843153486) ^ (v2 + 604898616 + (v0 ^ 0xDBF1F822)) ^ (v1 - 2125905448 + (v0 ^ 0x7EB67F24))) - 1564569532;
  v5 = (v4 ^ 0xF4467624) & (2 * (v4 & 0xF4477705)) ^ v4 & 0xF4477705;
  v6 = ((2 * (v4 ^ 0x3C46762E)) ^ 0x90020256) & (v4 ^ 0x3C46762E) ^ (2 * (v4 ^ 0x3C46762E)) & 0xC801012A;
  v7 = v6 ^ 0x48010129;
  v8 = v6 & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0x200404AC) & v7 ^ (4 * v7) & 0xC8010128;
  v10 = (v9 ^ 0x20) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0xC8010103)) ^ 0x801012B0) & (v9 ^ 0xC8010103) ^ (16 * (v9 ^ 0xC8010103)) & 0xC8010120;
  v12 = v4 ^ (2 * (((v10 ^ 0xC801012B ^ v11 & (v10 << 8)) << 16) & 0x48010000 ^ v10 ^ 0xC801012B ^ v11 & (v10 << 8) ^ (((v11 ^ 0x4801010B) << 8) & 0x48010000 ^ 0x48000000 ^ (((v11 ^ 0x4801010B) << 8) ^ 0x1010101) & (v11 ^ 0x4801010B)) & (((v10 ^ 0xC801012B ^ v11 & (v10 << 8)) << 16) ^ 0x12B0000))) ^ 0xF341721B;
  LODWORD(STACK[0xB73C]) = v12;
  v13 = ((((16 * v12) ^ 0x70AFE6CF) - 1660931537) ^ (((16 * v12) ^ 0x558A4731) - 1205496879) ^ (((16 * v12) ^ 0x5545D57E) - 1192623712)) - 1104920605;
  v14 = (((LODWORD(STACK[0xB704]) ^ 0x72DF3511) - 1927230737) ^ ((LODWORD(STACK[0xB704]) ^ 0xE42A2373) + 467000461) ^ ((LODWORD(STACK[0xB704]) ^ 0x7DBD5B62) - 2109561698)) + 1195126085;
  v15 = v13 < -604774331;
  v16 = v13 > v14;
  if (v14 < -604774331 != v15)
  {
    v16 = v15;
  }

  return (*(STACK[0xF18] + 8 * ((!v16 | (4 * !v16)) ^ v3)))();
}

uint64_t sub_100348398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23, _BYTE *a24)
{
  *a1 = v24;
  *(a1 + 4) = 0xE9D5C71100000000;
  *(a1 + 12) = 0xE9D5C711E9D5C711;
  *(a1 + 20) = -371865839;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 7) = v27[7];
  *(a1 + 6) = v27[6];
  *(a1 + 5) = v27[5];
  *(a1 + 4) = *a24;
  STACK[0x478] = a21;
  return (*(v26 + 8 * ((v25 - 33308) ^ 0x92F5 ^ (1801 * ((v25 - 33308) ^ 0x4E9)))))();
}

uint64_t sub_10034843C@<X0>(int a1@<W8>)
{
  v4 = *(v3 + 280);
  *v4 |= 8u;
  v4[8] = (((v1 ^ 0x241A1A1) - 37855649) ^ ((v1 ^ 0x175E25DC) - 392046044) ^ (((v2 - 53859154) ^ v1) + 53853332)) - 262334742;
  v4[9] = a1 - 519479556;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1003484CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  v39 = 1012831759 * ((((v38 - 144) | 0xC79C92E6) - ((v38 - 144) & 0xC79C92E0)) ^ 0xD70F846C);
  *(v38 - 128) = &a37;
  *(v38 - 120) = v38 - 245;
  *(v38 - 144) = v39 + 99890098;
  *(v38 - 140) = v39 + a20 - 1596645191;
  v40 = (*(v37 + 8 * (a20 ^ 0x5F2BA90C)))(v38 - 144);
  return (*(v37 + 8 * (((*(v38 - 136) == -371865839) * (((a20 - 1596671380) | 0x5310) ^ 0x7318)) ^ (a20 - 1596670198))))(v40);
}

uint64_t sub_1003485E4()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x74B5 ^ (v0 + 25426))))();
}

uint64_t sub_100348650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  LODWORD(STACK[0x7868]) = -371865839;
  STACK[0x7E40] = 0;
  LODWORD(STACK[0x416C]) = -371865839;
  return (*(STACK[0xF18] + 8 * ((58255 * (v3 == a3 - 371902600 + ((a3 - 803405150) & 0x2FE2767F))) ^ (a3 - 10109))))(a1, a2, 371891535);
}

void sub_1003486C8(uint64_t a1)
{
  v1 = 634647737 * ((((2 * a1) | 0xDB8C8BF2) - a1 - 1841710585) ^ 0x506A05);
  if (*(a1 + 24))
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = !v3 && (((((*(a1 + 8) ^ v1) - 7369) & 0x7FEA) - 16420) & 0xFFFE) != (*(a1 + 12) - v1);
  v2 = ((*(a1 + 8) ^ v1) + 721937207) & 0xD4F87FEA;
  __asm { BRAA            X12, X17 }
}

uint64_t sub_1003487DC(double a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2.n128_u16[0] = 14135;
  a2.n128_u8[2] = 55;
  a2.n128_u8[3] = 55;
  a2.n128_u8[4] = 55;
  a2.n128_u8[5] = 55;
  a2.n128_u8[6] = 55;
  a2.n128_u8[7] = 55;
  return (*(v8 + 8 * v7))(-(v5 & 0x18), -8 - v6, a5, (v7 - 11) ^ 0xFFFFFFFFFFFFAAA0, 61164, xmmword_100F523B0, a2);
}

uint64_t sub_100348938(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x825C]) = a3;
  LODWORD(STACK[0x3FA8]) = STACK[0xEB0];
  LODWORD(STACK[0x659C]) = STACK[0xEC0];
  LODWORD(STACK[0x1370]) = STACK[0xED0];
  LODWORD(STACK[0x5D04]) = v4;
  LODWORD(STACK[0x8A44]) = v5;
  return (*(STACK[0xF18] + 8 * v3))(a1, a2, 371891400);
}

uint64_t sub_100348988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v17 = 139493411 * ((2 * ((v16 - 128) & 0x4D0A26E0) - (v16 - 128) - 1292510946) ^ 0xBED8385B);
  *(v16 - 128) = &a13;
  *(v16 - 120) = ((2 * v14) & 0xD8BAFDFE) - v17 + (v14 ^ 0xEC5D631F ^ (2 * v15) ^ 0xC3E0) + 935249259;
  *(v16 - 116) = (v15 - 18243) ^ v17;
  v18 = (*(v13 + 8 * (v15 ^ 0xA5F8)))(v16 - 128);
  return (*(v13 + 8 * v15))(v18);
}

uint64_t sub_100348A88(int a1, uint64_t a2)
{
  v10 = a2 - 1;
  *(v8 + v10) = *(v4 + (v10 & 0xF)) ^ *(v3 + v10) ^ *(v6 + (v10 & 0xF)) ^ ((v10 & 0xF) * v7) ^ *((v10 & 0xF) + v5 + 7);
  return (*(v9 + 8 * (((v10 == 0) * a1) ^ v2)))();
}

uint64_t sub_100348AD8()
{
  v6 = *(v4 + v1 + 8);
  v7 = v0 + v1;
  *(v7 + 24) = *(v4 + v1);
  *(v7 + 32) = v6;
  return (*(v5 + 8 * (((v3 == v1) | (4 * (v3 == v1))) ^ v2)))();
}

uint64_t sub_100348B08(int a1, int a2, int a3, int a4, int a5, unsigned int a6, int a7)
{
  v13 = v7 > v9;
  if (v13 == v10 + a5 < ((v12 + a2) & a3 ^ a6))
  {
    v13 = v10 + a5 < v8;
  }

  return (*(v11 + 8 * ((v13 * ((v12 + a1) & a4 ^ a7)) ^ v12)))();
}

uint64_t sub_100348B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, BOOL a20, char *a21, unsigned int a22)
{
  a20 = ((35 * (((&a20 | 0x3D) - (&a20 | 0xC2) - 62) ^ 0x78)) & 1) == 0;
  a22 = (v23 + 1650791730) ^ (139493411 * (((&a20 | 0xC4042C3D) - (&a20 | 0x3BFBD3C2) + 1006359490) ^ 0xC829CD78));
  a21 = &a16;
  v24 = (*(v22 + 8 * (v23 ^ 0x9D9B5388)))(&a20);
  return (*(v22 + 8 * (v23 ^ 0x9D9BCC51 ^ (65368 * (v23 > ((v23 + 1650757775) ^ 0xA27FE56B))))))(v24);
}

uint64_t sub_100348C34(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0xB90];
  v4 = STACK[0xB90] < 0xA887D9CB;
  v5 = STACK[0xF10] + 4999;
  v6 = (v2 ^ 0xE9D5C711) + STACK[0xCD0];
  STACK[0x9918] = v6 + 10;
  v6 -= 0x189799C70CB62146;
  v7 = v6 < 0xA887D9CB;
  v8 = v6 > v3;
  if (v4 == v7)
  {
    v7 = v8;
  }

  return (*(STACK[0xF18] + 8 * (v5 ^ (v7 | (16 * v7)))))(a1, a2, 371891407);
}

uint64_t sub_100348EEC@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v3 + v1) - *(a1 + v1);
  v6 = ((v5 << (v2 ^ 0xB2)) & 0xC7BEDF66) + (v5 ^ 0xE3DF6FB3);
  return (*(v4 + 8 * (v2 ^ 0xE3DF2380 ^ (69 * ((((v2 + 471906862) ^ (((v6 - v2) | (v2 - v6)) >> 31)) & 1) == 0)))))();
}

uint64_t sub_100348F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v15 = a6 + v6;
  v16 = a6 + v6 + 9;
  v17 = __ROR8__(v16 & 0xFFFFFFFFFFFFFFF8, 8);
  v18 = (0x296E95066F186A7ELL - v17) & v9 | (v17 - 0x296E95066F186A7FLL) & v10;
  v19 = v18 ^ v11;
  v20 = v18 ^ v12;
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x14BA074A2F986FE5;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x2C378843F9A46E98;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = ((v13 & (2 * (v25 + v24))) - (v25 + v24) + a1) ^ a2;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x82B08017BF43C069;
  v29 = __ROR8__(v28, 8);
  v30 = v28 ^ __ROR8__(v27, 61);
  v31 = a6 - 1;
  v32 = ((a3 | (2 * (v29 + v30))) - (v29 + v30) + a4) ^ a5;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v14;
  *(v15 + 9) = (((__ROR8__(v34, 8) + (v34 ^ __ROR8__(v33, 61))) ^ 0x9B1C7427651E0F18) >> (8 * (v16 & 7u))) ^ *(v8 + v31);
  return (*(STACK[0xF18] + 8 * (((16 * (v31 == 0)) | ((v31 == 0) << 6)) ^ v7)))();
}

uint64_t sub_1003490B4()
{
  v6 = (v3 ^ ((v3 ^ 0xD5) + 78) ^ ((v3 ^ 0xE2) + 123) ^ ((v3 ^ 0xEF) + 120) ^ ((v1 ^ 0xCE ^ v3 ^ 0xDA) + 40) ^ 0x66) - ((((v3 + 3) ^ 0x9A) - 120) ^ (((v3 + 3) ^ 0xF9) - 27) ^ (((v3 + 3) ^ 4) + 26)) - 100;
  v7 = ((v6 ^ 0xEE) + 49) ^ ((v6 ^ 0x7B) - 90);
  v8 = *(v4 + (v3 - 706181479));
  v9 = (((v8 ^ 0xC9) + 55) ^ ((v8 ^ 0x86) + 122) ^ ((v8 ^ 0x10) - 16)) + (((((v6 ^ 0x47) - 102) ^ v6 ^ v7 ^ ((v6 ^ 0xF3) + 46) ^ 0x2D) + 58) ^ ((((v6 ^ 0x47) - 102) ^ v6 ^ v7 ^ ((v6 ^ 0xF3) + 46) ^ 0x6F) + 124) ^ ((((v6 ^ 0x47) - 102) ^ v6 ^ v7 ^ ((v6 ^ 0xF3) + 46) ^ 0x63) + 120)) + 85;
  v10 = (v9 & 0xD4 | 8) ^ v9 & 0x30;
  *(v4 + (v3 - 706181479)) = v9 ^ (2 * ((v9 ^ 0x54) & (2 * ((v9 ^ 0x54) & (2 * ((v9 ^ 0x54) & (2 * ((v9 ^ 0x54) & (2 * ((v9 ^ 0x54) & (2 * v10) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ 0xBB;
  v11 = *v0 - 605741788;
  v12 = v11 < 0x15BA879C;
  v13 = v3 - 341635530 < v11;
  if ((v3 - 341635530) < 0x15BA879C != v12)
  {
    v13 = v12;
  }

  return (*(v5 + 8 * (v2 ^ (32 * !v13))))();
}

uint64_t sub_100349348()
{
  v1 = (((v0 ^ 0xC1CAFB0B) + 283387411) ^ ((v0 ^ 0x1A18C38C) - 885645674) ^ ((v0 ^ 0x1CD6DD70) - 839384982)) + 939640437;
  v2 = (((LODWORD(STACK[0x2E74]) ^ 0x8B5D6D21) + 1956811487) ^ ((LODWORD(STACK[0x2E74]) ^ 0xE0CE8E79) + 523334023) ^ ((((STACK[0xF10] - 34103) | 0x92) ^ 0x7DB9DD21) + (LODWORD(STACK[0x2E74]) ^ 0x82462449))) + 939640437;
  v3 = v1 < 0x4E2BFF64;
  v4 = v1 > v2;
  if (v3 != v2 < 0x4E2BFF64)
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((85 * v4) ^ (STACK[0xF10] - 26147))))();
}

uint64_t sub_1003495B4(uint64_t a1, int8x16_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, double a7, __n128 a8, __n128 a9, __n128 a10, int8x16_t a11, double a12, int8x16_t a13)
{
  v19 = a3 & 0xF;
  v20 = v17;
  v21.i64[0] = vqtbl4q_s8(*(&a8 - 1), a11).u64[0];
  *&v21.i64[1] = a12;
  v22 = vrev64q_s8(vmulq_s8(v21, a13));
  *a2 = veorq_s8(veorq_s8(veorq_s8(veorq_s8(*(v13 + v19 - 15), *a2), *(v15 + v19 - 15)), *(v14 + v19 + a5 - 15)), vextq_s8(v22, v22, 8uLL));
  return (*(v18 + 8 * (((a4 == 0) * a6) ^ v16)))(a1, a2 - 1, a3 - 16, a4 - 16);
}

uint64_t sub_10034962C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (*(a8 + 8 * (v8 ^ 0x8039)))();
  v11 = STACK[0x2F0];
  *(v9 + 24) = 0;
  return (*(v11 + 8 * v8))(v10);
}

uint64_t sub_1003496D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int8x16_t *a3@<X2>, uint64_t a4@<X3>, int a5@<W8>, __n128 a6@<Q1>, int8x16_t a7@<Q4>, uint64_t a8@<D5>, int8x16_t a9@<Q6>, int8x16_t a10@<Q7>)
{
  v18 = v15 & 0xF;
  v20.i64[0] = vqtbl4q_s8(*(&a6 - 1), a7).u64[0];
  v20.i64[1] = a8;
  v21 = vrev64q_s8(veorq_s8(veorq_s8(*a3, *(v12 + v18 - 15)), veorq_s8(*(v14 + v18 - 15), *(v13 + v18 - 15))));
  v22 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v21, v21, 8uLL), a10), vmulq_s8(v20, a9)));
  *a3 = vextq_s8(v22, v22, 8uLL);
  return (*(v17 + 8 * (((a4 == 0) * a5) ^ v16)))(a1, a2, a3 - 1, a4 - 16);
}

uint64_t sub_100349750()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 34840;
  LODWORD(STACK[0x24A4]) = STACK[0x9894];
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x1FF2 ^ (9577 * ((v0 - 617781646) < 0x9D5A0433)))))();
}

uint64_t sub_1003497F0@<X0>(int a1@<W3>, uint64_t a2@<X8>)
{
  v5 = 4 * (a1 ^ 0x3A8A1330);
  *(a2 + v4 + v2) = 0;
  v6 = a2 - 0x66FF6746BA8A02A0;
  STACK[0xA650] = v6;
  STACK[0xA658] = v3 + v6;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v5 + 29780)))(1024);
  STACK[0x5ED8] = v8;
  return (*(v7 + 8 * ((14 * ((((v5 ^ 0x93) + 100) ^ (v8 == 0)) & 1)) ^ v5)))();
}

uint64_t sub_100349BB8(uint64_t a1, uint64_t a2, int a3)
{
  v6 = STACK[0xDC0];
  LODWORD(STACK[0x825C]) = v3;
  LODWORD(STACK[0x3FA8]) = STACK[0xEB0];
  LODWORD(STACK[0x659C]) = a3;
  LODWORD(STACK[0x1370]) = STACK[0xED0];
  LODWORD(STACK[0x5D04]) = v4;
  LODWORD(STACK[0x8A44]) = v5;
  return (*(STACK[0xF18] + 8 * v6))(a1, a2, 371891400);
}

uint64_t sub_100349C64@<X0>(uint64_t a1@<X8>)
{
  v5 = v4 + 127 - v1;
  v6 = *(v5 - 31);
  v7 = a1 + 127 - v1;
  v8.i64[0] = 0xBEBEBEBEBEBEBEBELL;
  v8.i64[1] = 0xBEBEBEBEBEBEBEBELL;
  v9.i64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v9.i64[1] = 0x5F5F5F5F5F5F5F5FLL;
  *(v7 - 15) = vaddq_s8(vsubq_s8(*(v5 - 15), vandq_s8(vaddq_s8(*(v5 - 15), *(v5 - 15)), v8)), v9);
  *(v7 - 31) = vaddq_s8(vsubq_s8(v6, vandq_s8(vaddq_s8(v6, v6), v8)), v9);
  return (*(v3 + 8 * (v2 ^ 0x458A ^ (7931 * (((v1 + 32 - v2) | (v2 - (v1 + 32))) >= 0)))))();
}

uint64_t sub_100349CEC@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, unint64_t a20, unint64_t a21, unint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unint64_t a34, unint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, unint64_t a52)
{
  STACK[0x468] = v58;
  STACK[0x430] = a15;
  STACK[0x2C8] = a21;
  STACK[0x358] = v53;
  STACK[0x360] = a22;
  STACK[0x388] = v56;
  STACK[0x390] = a20;
  STACK[0x3C0] = a19;
  STACK[0x440] = v55;
  STACK[0x248] = v52;
  STACK[0x2B0] = a14;
  STACK[0x2B8] = a1;
  STACK[0x410] = a34;
  STACK[0x298] = a35;
  STACK[0x348] = a13;
  STACK[0x350] = a52;
  return (*(v54 + 8 * v57))();
}

uint64_t sub_100349E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *v28 = 23958;
  STACK[0x440] = 0;
  return (*(v29 + 8 * (v27 - 22229)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_100349FBC@<X0>(uint64_t a1@<X8>)
{
  STACK[0x4A28] = *(a1 + 8);
  LODWORD(STACK[0x46C4]) = 324437507;
  STACK[0x2608] = &STACK[0x6F5C];
  LODWORD(STACK[0x40AC]) = 1975767126;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10034A008(uint64_t a1, uint64_t a2)
{
  STACK[0x10E8] = STACK[0x3130];
  LODWORD(STACK[0x375C]) = STACK[0x7F40];
  return (*(STACK[0xF18] + 8 * v2))(a1, a2, 3923101457);
}

uint64_t sub_10034A044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = v5 - 11063;
  v7 = v5 - 32431;
  ++*a5;
  LODWORD(STACK[0x10EE0]) = v5 + 155453101 * (((~(&STACK[0x10000] + 3800) & 0x1E94E5B4) - (~(&STACK[0x10000] + 3800) | 0x1E94E5B5)) ^ 0xF8B2FE7A) + 296753103;
  STACK[0x10ED8] = 0;
  v8 = v5 ^ 0x41F1;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * v8))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v9 + 8 * v7);
  return (*(v9 + 8 * ((v6 ^ 0x69E7) + v7)))(v10);
}

uint64_t sub_10034A0F8()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 7294;
  v3 = STACK[0x4318];
  v4 = STACK[0x9270];
  v5 = STACK[0x88B0];
  v6 = 155453101 * ((((&STACK[0x10000] + 3800) | 0x6EDE555F) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x9121AAA0)) ^ 0x88F84E90);
  LODWORD(STACK[0x10EF8]) = v6 ^ 0x3A811CF3;
  LODWORD(STACK[0x10ED8]) = v6 + 679608333;
  LODWORD(STACK[0x10EDC]) = v6 + v1 + 15402;
  STACK[0x10EF0] = v4;
  STACK[0x10F00] = v3;
  STACK[0x10EE0] = v5;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v1 + 16856)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * ((63637 * (LODWORD(STACK[0x10EE8]) == v0)) ^ v2)))(v8);
}

uint64_t sub_10034A1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10];
  v8 = STACK[0xF10] + 1152463378;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x8550];
  STACK[0x5D28] = &STACK[0x3924];
  LODWORD(STACK[0x4704]) = 1295382349;
  return (*(STACK[0xF18] + 8 * ((16287 * (v8 > 0x543CF7CA)) ^ (v7 - 30181))))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10034A260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _DWORD *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, int a29, unsigned int a30)
{
  v32 = 297845113 * (((&a28 | 0xD8518685) + (~&a28 | 0x27AE797A)) ^ 0xAF629A1A);
  v33 = ((((*a16 ^ 0x6BA43E4D) - 1805925965) ^ ((*a16 ^ 0xC4EBCDA9) + 991179351) ^ ((v31 ^ 0x3862) + 2538 + (*a16 ^ 0x469A34F5) - 1184544912)) + 512106342) ^ v32;
  a29 = (v31 + 22673) ^ v32;
  a30 = v33;
  v34 = (*(v30 + 8 * (v31 + 35329)))(&a28);
  return (*(v30 + 8 * ((63589 * (a28 == 4)) ^ v31)))(v34);
}

uint64_t sub_10034A364()
{
  v1 = STACK[0xF10] - 30154;
  *(STACK[0x1A98] + 784) = v0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10034A458()
{
  v1 = (STACK[0xF10] - 397138412) & 0x17ABEEFA;
  v2 = STACK[0xF10] + 1922;
  LODWORD(STACK[0x3E80]) += 4;
  v3 = LOBYTE(STACK[0xB763]);
  LODWORD(STACK[0x5914]) = v0;
  return (*(STACK[0xF18] + 8 * ((v3 * (v1 - 32654)) ^ v2)))();
}

uint64_t sub_10034A4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v40 = *(a1 + 48);
  *(v38 - 112) = veorq_s8(**a1, xmmword_100F52A20);
  if (v37)
  {
    v41 = v40 == 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = v41;
  return (*(v39 + 8 * ((23 * v42) ^ v36)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a1, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_10034A590@<X0>(int a1@<W8>)
{
  *STACK[0xA1A8] ^= 0x1E378F01u;
  *STACK[0xA1B8] ^= 0xE5D1D6E1;
  *STACK[0xA1C0] ^= 0xFC073969;
  *STACK[0xE10] ^= 0x98C532A3;
  return (*(STACK[0xF18] + 8 * (a1 ^ 0x330B)))();
}

uint64_t sub_10034A6D0()
{
  *(v3 + 24) = v4;
  *(v1[3] + 32) = v1[4];
  v6 = v1[1] + *(v0 + 8) - 0x79C4BC1D8A4006F0;
  *(v0 + 8) = (v6 ^ 0x3EF35E4FF7E64F78) - 0x211004132C64C00 + (((v2 + 13117) ^ 0x7DE6BC9FEFCCD4A7) & (2 * v6));
  return (*(v5 + 8 * (v2 + 13117)))();
}

uint64_t sub_10034A89C()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x74A8 ^ ((v0 - 819) | 0x6670))))();
}

uint64_t sub_10034A92C()
{
  v0 = 0x199999999999999ALL * (((LODWORD(STACK[0x9894]) ^ 0x5179BF418D68DD1ALL) + 0x2E8640BE729722E6) ^ ((LODWORD(STACK[0x9894]) ^ 0x4FA0C092DF08C6BBLL) + 0x305F3F6D20F73945) ^ (((STACK[0xF10] - 726244156) & 0x2B497D5C) + (LODWORD(STACK[0x9894]) ^ 0x1ED97FD3BBB5DCB0) - 0x1ED97FD3BBB64A0CLL)) + 0x21974A35C3AC5C94;
  v1 = v0 ^ ((v0 ^ 0x608EF48173475FCELL) - 0xEEAE38341B72C94) ^ ((v0 ^ 0x6B514C3C7E61ED8BLL) - 0x5355B3E4C919ED1) ^ ((v0 ^ 0x860C04041682F32) - 0x6604D74273985C68) ^ ((v0 ^ 0x6DDB6FFF7EBEEE2DLL) - 0x3BF78FD4C4E9D77);
  v2 = ((v1 ^ 0xE1399F10ADAE7AB8) + 0x7EC7AE9FD241603DLL) ^ ((v1 ^ 0x648FE9226F441E39) - 0x48E2752EF54FB42);
  LODWORD(v1) = __CFADD__(10 * (v2 ^ ((v1 ^ 0xEBD26130F01A17DBLL) + 0x742C50BF8FF50D60)), 0x8FFA7E7AFCC5DD4ALL) + (((v2 ^ ((v1 ^ 0xEBD26130F01A17DBLL) + 0x742C50BF8FF50D60)) * 0xAuLL) >> 64) + 10 * ((__CFADD__(v1 ^ 0xE1399F10ADAE7AB8, 0x7EC7AE9FD241603DLL) - 1) ^ (__CFADD__(v1 ^ 0x648FE9226F441E39, 0xFB71D8AD10AB04BELL) - 1) ^ (__CFADD__(v1 ^ 0xEBD26130F01A17DBLL, 0x742C50BF8FF50D60) - 1)) + 305174039;
  v3 = STACK[0xF10] - 32227;
  LODWORD(STACK[0x4238]) = ((v1 ^ 0x10E31D55) - 47418178) ^ v1 ^ ((v1 ^ 0xBCA1597E) + 1366175895) ^ ((v1 ^ 0xD99D6DC3) + 877790252) ^ ((v1 ^ 0x67EFBFFF) - 1977559528) ^ 0xFF3CB0D7;
  v4 = STACK[0xF18];
  STACK[0x3978] = *(STACK[0xF18] + 8 * v3);
  return (*(v4 + 8 * (v3 ^ 0x2102)))();
}

uint64_t sub_10034AC40()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((2 * (v0 ^ 0x37B0)) ^ 0x74A7) + v0)))();
}

uint64_t sub_10034AC7C@<X0>(uint64_t a1@<X8>)
{
  v5.i64[0] = 0xBEBEBEBEBEBEBEBELL;
  v5.i64[1] = 0xBEBEBEBEBEBEBEBELL;
  v6.i64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v6.i64[1] = 0x5F5F5F5F5F5F5F5FLL;
  *(v2 + a1) = vaddq_s8(vsubq_s8(*(v3 + a1), vandq_s8(vaddq_s8(*(v3 + a1), *(v3 + a1)), v5)), v6);
  return (*(v4 + 8 * ((62260 * (a1 == 0)) ^ v1)))();
}

uint64_t sub_10034ACC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *(STACK[0xF18] + 8 * (v4 - 20595));
  *&STACK[0xE00] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0xB30] = vdupq_n_s64(0x38uLL);
  *&STACK[0xBC0] = vdupq_n_s64(0xD192833E5E29633CLL);
  *&STACK[0xBB0] = vdupq_n_s64(v6);
  *&STACK[0xB20] = vdupq_n_s64(v8);
  *&STACK[0xBA0] = vdupq_n_s64(v10);
  *&STACK[0xB90] = vdupq_n_s64(v12);
  *&STACK[0xB80] = vdupq_n_s64(v13);
  *&STACK[0xB70] = vdupq_n_s64(v11);
  *&STACK[0xB60] = vdupq_n_s64(v7);
  *&STACK[0xB50] = vdupq_n_s64(0xFD0A19BB2FE13205);
  *&STACK[0xB40] = vdupq_n_s64(0x19BBA1D59C2A28CuLL);
  *&STACK[0xE20] = vdupq_n_s64(v9);
  *&STACK[0xEA0] = vdupq_n_s64(0x9FF7A410D79F13D4);
  *&STACK[0xE90] = vdupq_n_s64(0xC9500E90FB9C95F1);
  *&STACK[0xE80] = vdupq_n_s64(0x2C3F70FBF6F9ADA3uLL);
  *&STACK[0xE70] = vdupq_n_s64(0x1B5DE9094BAFA51AuLL);
  *&STACK[0xE10] = vdupq_n_s64(0xC437C7327FD12F34);
  *&STACK[0xDF0] = vdupq_n_s64(0xD6916AF990E79581);
  *&STACK[0xDE0] = vdupq_n_s64(0x96E95066F186A7EuLL);
  *&STACK[0xDD0] = vdupq_n_s64(0x1939E534EAB5C204uLL);
  *&STACK[0xEB0] = vdupq_n_s64(0x1E1BFCD71692F676uLL);
  *&STACK[0xE60] = vdupq_n_s64(0xAA90AB1B91AE5A78);
  *&STACK[0xE40] = vdupq_n_s64(0x14BA074A2F986FE5uLL);
  *&STACK[0xDC0] = vdupq_n_s64(0x31E9BDE7666BA597uLL);
  *&STACK[0xDB0] = vdupq_n_s64(v5);
  *&STACK[0xDA0] = vdupq_n_s64(0x1DDE35A49FCFCB0FuLL);
  *&STACK[0xB10] = vdupq_n_s64(0xBD7D2DE9C10AA16ALL);
  *&STACK[0xE30] = vdupq_n_s64(0xCA610B0491486356);
  *&STACK[0xD90] = vdupq_n_s64(0x9ACF7A7DB75BCE55);
  *&STACK[0xD80] = xmmword_100BC76B0;
  *&STACK[0xD70] = vdupq_n_s64(0xE7800595F7E7F1C2);
  return v14(a1, a2, a3, a4, 0x9B1C7427651E0F18, 0x8FB22143FEDB6CB3, v12, 0xD50CE5605E7B8E1);
}

uint64_t sub_10034B024()
{
  v1 = STACK[0xF10] ^ 0xB49B;
  v2 = (STACK[0xF10] - 1498) | 0x814;
  v3 = STACK[0xF10] + 3090;
  STACK[0x3D78] = v0;
  return (*(STACK[0xF18] + 8 * (((v2 ^ (v1 + 19910)) * (v0 != 0)) ^ v3)))();
}

uint64_t sub_10034B070@<X0>(unsigned int a1@<W8>)
{
  v3 = *(STACK[0x2730] + a1);
  *(v1 + 16) = (v3 ^ 0x79FDBCBD) + (v2 ^ 0xBF9AA5B4) + ((2 * v3) & 0x17A);
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10034B0C0@<X0>(int a1@<W8>)
{
  v4 = *(STACK[0x9840] + 88) + v3;
  v5 = v4 - 711584297;
  v6 = (((v2 ^ 0xE513C2F3) + 451689741) ^ ((v2 ^ 0x514A3A1B) - 1363819035) ^ ((((a1 + 8586) | 0x233) ^ v2 ^ 0x5D8C714E) + ((a1 + 27195) ^ 0xA2735532))) - 1083450136;
  v7 = v4 > 0x2A69EA28;
  v8 = v7 ^ (v6 < 0xD59615D7);
  v9 = v5 > v6;
  if (!v8)
  {
    v7 = v9;
  }

  if (v7)
  {
    v1 = 371891407;
  }

  return (*(STACK[0xF18] + 8 * ((448 * (v1 == -371865839)) ^ a1)))();
}

uint64_t sub_10034B234@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v2 = (a2 - 1404538692) & 0x53B70FCD;
  v3 = (a2 - 35379) | 0x1611u;
  v4 = a2 - 29730;
  v5 = STACK[0x8FF8];
  LODWORD(STACK[0x10ED8]) = a2 + 193924789 * ((((&STACK[0x10000] + 3800) | 0xBDACAC03) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x425353F8)) ^ 0xB179E65) - 32304;
  STACK[0x10EE0] = v5;
  v6 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (a2 + 16307)))(&STACK[0x10ED8]);
  STACK[0x7690] += v3 ^ 0xFFFFFFFFFFFFEAD9;
  return (*(v6 + 8 * ((21195 * (a1 == v2 - 371868852)) ^ v4)))(a1);
}

uint64_t sub_10034B328()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] ^ 0x925;
  v2 = STACK[0xF10] - 32683;
  v3 = STACK[0x4E88];
  STACK[0x10EE8] = STACK[0x4220];
  STACK[0x10ED8] = v3;
  LODWORD(STACK[0x10EE0]) = v0 + 297845113 * ((((&STACK[0x10000] + 3800) | 0xD5C8E36C) - ((&STACK[0x10000] + 3800) | 0x2A371C93) + 708254867) ^ 0xA2FBFFF2) - 21269;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0x41DB)))(&STACK[0x10ED8]);
  STACK[0x4B88] = *(v4 + 8 * v2);
  return (*(v4 + 8 * ((v1 - 25309) ^ v2)))(v5);
}

uint64_t sub_10034B3F4(uint64_t a1)
{
  strcpy(a1, "/private/var/mobile/Media");
  *(a1 + 26) = 0;
  *(a1 + 28) = 0;
  return (*(STACK[0xF18] + 8 * (v1 - 16234)))();
}

uint64_t sub_10034B5AC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xED0]) = v2 < 0xC519D888;
  v5 = 1603510583 * ((&STACK[0x10000] + 3800) ^ 0x97DB32AB);
  STACK[0x10EE0] = *(v1 - 0x7E666516A39B34A6);
  LODWORD(STACK[0x10EDC]) = -1876891974 - v5;
  LODWORD(STACK[0x10EEC]) = a1 - v5 - 672734622;
  LODWORD(STACK[0x10EE8]) = v4 - v5 - 6933;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v4 ^ 0xFCB1)))(&STACK[0x10ED8]);
  v8 = (v3 + 1) | ((((v3 + 1) >> 3) < 0x63Bu) << 16);
  v9 = v8 + 909890539;
  v10 = v2 > v8 - 988174672;
  if (LODWORD(STACK[0xED0]) != v9 < 0x363C05C3)
  {
    v10 = STACK[0xED0];
  }

  return (*(v6 + 8 * (v4 ^ (79 * (v10 ^ 1)))))(v7);
}

uint64_t sub_10034B7A0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xB5C0]) += a1 ^ 0x468B;
  LODWORD(STACK[0xB5BC]) = v1;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_10034B7E0()
{
  v1 = *(STACK[0xF18] + 8 * (v0 - 27350));
  LODWORD(STACK[0xE10]) = 47179;
  return v1();
}

uint64_t sub_10034B810()
{
  v1 = STACK[0xF10] - 22517;
  *(*(*(STACK[0x6A78] + 112) + 72 * (LODWORD(STACK[0x34A0]) ^ ((STACK[0xF10] ^ 0xC24B) + 396986722)) + 32) + 4 * (LODWORD(STACK[0xB47C]) - 1449653315)) = v0;
  return (*(STACK[0xF18] + 8 * ((40278 * LOBYTE(STACK[0xB493])) ^ v1)))();
}

uint64_t sub_10034B8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0xF10] + 1979;
  **(a7 + 25) = ((v7 ^ 0x54BF53B5u) << 32) & 0xB13478DA00000000 ^ 0xD67A8E6B143312B6 ^ (**(a7 + 25) ^ 0x474ABE29143312B6) & (((v7 ^ 0x54BF53B5u) << 32) ^ 0x6C4449BDFFFFFFFFLL);
  return (*(STACK[0xF18] + 8 * v8))();
}

uint64_t sub_10034B93C()
{
  *(v1 + 80) = 34;
  *(v1 + 148) = STACK[0x8354];
  return (*(STACK[0xF18] + 8 * ((v0 - 3096) ^ v0 ^ (11110 * (v0 > 0xA5B869F)))))();
}

uint64_t sub_10034B9E8@<X0>(uint64_t a1@<X8>)
{
  v17 = v2 - 1;
  v18 = *v9;
  v19 = ((*(*v10 + (v18 & v4)) ^ (v3 + v17)) & 0x7FFFFFFF) * v5;
  v20 = (v19 ^ HIWORD(v19)) * v5;
  LODWORD(v18) = ((*(*v10 + (v18 & v6)) ^ (a1 + v17)) & 0x7FFFFFFF) * v5;
  v21 = (v18 ^ WORD1(v18)) * v5;
  *(a1 + v17) = *(v16 + (v20 >> 24)) ^ *(v3 + v17) ^ *((v20 >> 24) + v13 + 2) ^ *(v14 + (v20 >> 24)) ^ *(v11 + (v21 >> 24)) ^ *((v21 >> 24) + v15 + 2) ^ v20 ^ *((v21 >> 24) + v12 + 4) ^ (-9 * BYTE3(v20)) ^ v21 ^ (BYTE3(v21) * v7);
  return (*(STACK[0xF18] + 8 * (((v17 == 0) * v8) ^ v1)))();
}

uint64_t sub_10034BAB8()
{
  v1 = STACK[0xF10] + 1506;
  LODWORD(STACK[0x6134]) += v0 + (((*(STACK[0x7980] + 144) ^ 0x56DB4372) - 1457210226) ^ ((*(STACK[0x7980] + 144) ^ 0xA229DEDB) + 1574314277) ^ ((*(STACK[0x7980] + 144) ^ 0x1D275AB8) - 489118392));
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10034BBA0()
{
  STACK[0x4F90] = *v0;
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393220;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10034BBFC()
{
  STACK[0x7690] -= 320;
  LODWORD(STACK[0xA804]) = v1;
  LODWORD(STACK[0xA800]) = 1855240635;
  return (*(STACK[0xF18] + 8 * (v0 - 29362)))();
}

uint64_t sub_10034BC34@<X0>(unint64_t *a1@<X7>, int a2@<W8>)
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
  STACK[0xBE60] = 0;
  STACK[0xBE68] = v2;
  v13 = 16777619 * ((553300517 * v12 + 7) ^ (553300517 * v12)) % 7;
  v14 = 16777619 * ((553300517 * v12 + 6) ^ (553300517 * v12)) % 6;
  v15 = 16777619 * ((553300517 * v12 + 5) ^ (553300517 * v12)) % 5;
  v16 = *(&STACK[0xBE60] | v13);
  *(&STACK[0xBE60] | v13) = STACK[0xBE67];
  v17 = *(&STACK[0xBE60] | v14);
  *(&STACK[0xBE60] | v14) = STACK[0xBE66];
  v18 = *(&STACK[0xBE60] | v15);
  *(&STACK[0xBE60] | v15) = STACK[0xBE65];
  v19 = vdup_n_s32(553300517 * v12);
  v20 = 16777619 * ((553300517 * v12 + 3) ^ (553300517 * v12)) % 3;
  v21.i32[0] = v19.i32[0];
  v21.i32[1] = 553300517 * v12 + 1;
  LOBYTE(STACK[0xBE67]) = v16;
  v22 = veor_s8(vmul_s32(v21, v19), v19);
  LOBYTE(STACK[0xBE66]) = v17;
  LOBYTE(STACK[0xBE65]) = v18;
  v23 = STACK[0xBE60];
  LOBYTE(STACK[0xBE60]) = STACK[0xBE64];
  LOBYTE(STACK[0xBE64]) = v23;
  v24 = *(&STACK[0xBE60] | v20);
  *(&STACK[0xBE60] | v20) = STACK[0xBE63];
  LOBYTE(STACK[0xBE63]) = v24;
  v25 = STACK[0xBE61];
  LOBYTE(STACK[0xBE62]) = STACK[0xBE60];
  LOWORD(STACK[0xBE60]) = v25;
  STACK[0xBE60] = vmla_s32(v22, STACK[0xBE60], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBE68];
  v27 = (553300517 * STACK[0xBE68]) ^ v12;
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
  v48 = *(&STACK[0xBE68] + v13);
  *(&STACK[0xBE68] + v13) = STACK[0xBE6F];
  LOBYTE(STACK[0xBE6F]) = v48;
  v49 = *(&STACK[0xBE68] + v14);
  *(&STACK[0xBE68] + v14) = STACK[0xBE6E];
  LOBYTE(STACK[0xBE6E]) = v49;
  v50 = *(&STACK[0xBE68] + v15);
  *(&STACK[0xBE68] + v15) = STACK[0xBE6D];
  LOBYTE(STACK[0xBE6D]) = v50;
  v51 = STACK[0xBE68];
  LOBYTE(STACK[0xBE68]) = STACK[0xBE6C];
  LOBYTE(STACK[0xBE6C]) = v51;
  v52 = *(&STACK[0xBE68] + v20);
  *(&STACK[0xBE68] + v20) = STACK[0xBE6B];
  LOBYTE(STACK[0xBE6B]) = v52;
  v53 = STACK[0xBE69];
  LOBYTE(STACK[0xBE6A]) = STACK[0xBE68];
  LOWORD(STACK[0xBE68]) = v53;
  STACK[0xBE68] = vmla_s32(v22, STACK[0xBE68], vdup_n_s32(0x1000193u));
  *a1 = STACK[0xBE68] ^ STACK[0xBE60];
  return (*(STACK[0xF18] + 8 * a2))();
}